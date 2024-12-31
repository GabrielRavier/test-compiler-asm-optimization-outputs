	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.globl	make_ti
	.def	make_ti;	.scl	2;	.type	32;	.endef
	.seh_proc	make_ti
make_ti:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	movdqa	xmm0, XMMWORD PTR -32[rbp]
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.globl	make_tu
	.def	make_tu;	.scl	2;	.type	32;	.endef
	.seh_proc	make_tu
make_tu:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	movdqa	xmm0, XMMWORD PTR -32[rbp]
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.globl	memmove
	.def	memmove;	.scl	2;	.type	32;	.endef
	.seh_proc	memmove
memmove:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	cmp	rax, QWORD PTR -8[rbp]
	jnb	.L6
	mov	rax, QWORD PTR 32[rbp]
	add	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR 32[rbp]
	add	QWORD PTR -8[rbp], rax
	jmp	.L7
.L8:
	sub	QWORD PTR -16[rbp], 1
	sub	QWORD PTR -8[rbp], 1
	mov	rax, QWORD PTR -16[rbp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR 32[rbp], 1
.L7:
	cmp	QWORD PTR 32[rbp], 0
	jne	.L8
	jmp	.L9
.L6:
	mov	rax, QWORD PTR -16[rbp]
	cmp	rax, QWORD PTR -8[rbp]
	je	.L9
	jmp	.L10
.L11:
	mov	rdx, QWORD PTR -16[rbp]
	lea	rax, 1[rdx]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, 1[rax]
	mov	QWORD PTR -8[rbp], rcx
	movzx	edx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR 32[rbp], 1
.L10:
	cmp	QWORD PTR 32[rbp], 0
	jne	.L11
.L9:
	mov	rax, QWORD PTR 16[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	memccpy
	.def	memccpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memccpy
memccpy:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	DWORD PTR 32[rbp], r8d
	mov	QWORD PTR 40[rbp], r9
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR 32[rbp]
	movzx	eax, al
	mov	DWORD PTR 32[rbp], eax
	jmp	.L14
.L16:
	sub	QWORD PTR 40[rbp], 1
	add	QWORD PTR -16[rbp], 1
	add	QWORD PTR -8[rbp], 1
.L14:
	cmp	QWORD PTR 40[rbp], 0
	je	.L15
	mov	rax, QWORD PTR -16[rbp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	DWORD PTR 32[rbp], eax
	jne	.L16
.L15:
	cmp	QWORD PTR 40[rbp], 0
	je	.L17
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 1
	jmp	.L18
.L17:
	mov	eax, 0
.L18:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	memchr
	.def	memchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memchr
memchr:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	DWORD PTR 24[rbp], edx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	eax, DWORD PTR 24[rbp]
	movzx	eax, al
	mov	DWORD PTR 24[rbp], eax
	jmp	.L20
.L22:
	add	QWORD PTR -8[rbp], 1
	sub	QWORD PTR 32[rbp], 1
.L20:
	cmp	QWORD PTR 32[rbp], 0
	je	.L21
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	DWORD PTR 24[rbp], eax
	jne	.L22
.L21:
	cmp	QWORD PTR 32[rbp], 0
	je	.L23
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L25
.L23:
	mov	eax, 0
.L25:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	memcmp
	.def	memcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	memcmp
memcmp:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L27
.L29:
	sub	QWORD PTR 32[rbp], 1
	add	QWORD PTR -8[rbp], 1
	add	QWORD PTR -16[rbp], 1
.L27:
	cmp	QWORD PTR 32[rbp], 0
	je	.L28
	mov	rax, QWORD PTR -8[rbp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	je	.L29
.L28:
	cmp	QWORD PTR 32[rbp], 0
	je	.L30
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	edx, al
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	sub	edx, eax
	jmp	.L32
.L30:
	mov	edx, 0
.L32:
	mov	eax, edx
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	memcpy
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memcpy
memcpy:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L34
.L35:
	mov	rdx, QWORD PTR -16[rbp]
	lea	rax, 1[rdx]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, 1[rax]
	mov	QWORD PTR -8[rbp], rcx
	movzx	edx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR 32[rbp], 1
.L34:
	cmp	QWORD PTR 32[rbp], 0
	jne	.L35
	mov	rax, QWORD PTR 16[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	memrchr
	.def	memrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memrchr
memrchr:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	DWORD PTR 24[rbp], edx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	eax, DWORD PTR 24[rbp]
	movzx	eax, al
	mov	DWORD PTR 24[rbp], eax
	jmp	.L38
.L40:
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 32[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	DWORD PTR 24[rbp], eax
	jne	.L38
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 32[rbp]
	add	rax, rdx
	jmp	.L39
.L38:
	mov	rax, QWORD PTR 32[rbp]
	lea	rdx, -1[rax]
	mov	QWORD PTR 32[rbp], rdx
	test	rax, rax
	jne	.L40
	mov	eax, 0
.L39:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	memset
	.def	memset;	.scl	2;	.type	32;	.endef
	.seh_proc	memset
memset:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	DWORD PTR 24[rbp], edx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L42
.L43:
	mov	eax, DWORD PTR 24[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR 32[rbp], 1
	add	QWORD PTR -8[rbp], 1
.L42:
	cmp	QWORD PTR 32[rbp], 0
	jne	.L43
	mov	rax, QWORD PTR 16[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	stpcpy
	.def	stpcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	stpcpy
stpcpy:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	jmp	.L46
.L47:
	add	QWORD PTR 24[rbp], 1
	add	QWORD PTR 16[rbp], 1
.L46:
	mov	rax, QWORD PTR 24[rbp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L47
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.globl	strchrnul
	.def	strchrnul;	.scl	2;	.type	32;	.endef
	.seh_proc	strchrnul
strchrnul:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	DWORD PTR 24[rbp], edx
	mov	eax, DWORD PTR 24[rbp]
	movzx	eax, al
	mov	DWORD PTR 24[rbp], eax
	jmp	.L50
.L52:
	add	QWORD PTR 16[rbp], 1
.L50:
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L51
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	DWORD PTR 24[rbp], eax
	jne	.L52
.L51:
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.globl	strchr
	.def	strchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strchr
strchr:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	rax, rcx
	mov	DWORD PTR 24[rbp], edx
.L57:
	movzx	edx, BYTE PTR [rax]
	movsx	edx, dl
	cmp	DWORD PTR 24[rbp], edx
	jne	.L55
	jmp	.L56
.L55:
	mov	rdx, rax
	lea	rax, 1[rdx]
	movzx	edx, BYTE PTR [rdx]
	test	dl, dl
	jne	.L57
	mov	eax, 0
.L56:
	pop	rbp
	ret
	.seh_endproc
	.globl	strcmp
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strcmp
strcmp:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	jmp	.L59
.L61:
	add	QWORD PTR 16[rbp], 1
	add	QWORD PTR 24[rbp], 1
.L59:
	mov	rax, QWORD PTR 16[rbp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L60
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L61
.L60:
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	edx, al
	mov	rax, QWORD PTR 24[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	sub	edx, eax
	mov	eax, edx
	pop	rbp
	ret
	.seh_endproc
	.globl	strlen
	.def	strlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strlen
strlen:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L64
.L65:
	add	QWORD PTR 16[rbp], 1
.L64:
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L65
	mov	rax, QWORD PTR 16[rbp]
	sub	rax, QWORD PTR -8[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	strncmp
	.def	strncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strncmp
strncmp:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR 32[rbp]
	lea	rdx, -1[rax]
	mov	QWORD PTR 32[rbp], rdx
	test	rax, rax
	jne	.L70
	mov	edx, 0
	jmp	.L69
.L72:
	add	QWORD PTR -8[rbp], 1
	add	QWORD PTR -16[rbp], 1
	sub	QWORD PTR 32[rbp], 1
.L70:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L71
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L71
	cmp	QWORD PTR 32[rbp], 0
	je	.L71
	mov	rax, QWORD PTR -8[rbp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	je	.L72
.L71:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	edx, al
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	sub	edx, eax
.L69:
	mov	eax, edx
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	swab
	.def	swab;	.scl	2;	.type	32;	.endef
	.seh_proc	swab
swab:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L74
.L75:
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 1
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	add	QWORD PTR -16[rbp], 2
	add	QWORD PTR -8[rbp], 2
	sub	QWORD PTR 32[rbp], 2
.L74:
	cmp	QWORD PTR 32[rbp], 1
	jg	.L75
	nop
	nop
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	isalpha
	.def	isalpha;	.scl	2;	.type	32;	.endef
	.seh_proc	isalpha
isalpha:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	or	eax, 32
	sub	eax, 97
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	pop	rbp
	ret
	.seh_endproc
	.globl	isascii
	.def	isascii;	.scl	2;	.type	32;	.endef
	.seh_proc	isascii
isascii:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	cmp	eax, 127
	setbe	al
	movzx	eax, al
	pop	rbp
	ret
	.seh_endproc
	.globl	isblank
	.def	isblank;	.scl	2;	.type	32;	.endef
	.seh_proc	isblank
isblank:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	cmp	DWORD PTR 16[rbp], 32
	je	.L81
	cmp	DWORD PTR 16[rbp], 9
	jne	.L82
.L81:
	mov	eax, 1
	jmp	.L84
.L82:
	mov	eax, 0
.L84:
	pop	rbp
	ret
	.seh_endproc
	.globl	iscntrl
	.def	iscntrl;	.scl	2;	.type	32;	.endef
	.seh_proc	iscntrl
iscntrl:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	cmp	eax, 31
	jbe	.L86
	cmp	DWORD PTR 16[rbp], 127
	jne	.L87
.L86:
	mov	eax, 1
	jmp	.L89
.L87:
	mov	eax, 0
.L89:
	pop	rbp
	ret
	.seh_endproc
	.globl	isdigit
	.def	isdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	isdigit
isdigit:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	sub	eax, 48
	cmp	eax, 9
	setbe	al
	movzx	eax, al
	pop	rbp
	ret
	.seh_endproc
	.globl	isgraph
	.def	isgraph;	.scl	2;	.type	32;	.endef
	.seh_proc	isgraph
isgraph:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	sub	eax, 33
	cmp	eax, 93
	setbe	al
	movzx	eax, al
	pop	rbp
	ret
	.seh_endproc
	.globl	islower
	.def	islower;	.scl	2;	.type	32;	.endef
	.seh_proc	islower
islower:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	sub	eax, 97
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	pop	rbp
	ret
	.seh_endproc
	.globl	isprint
	.def	isprint;	.scl	2;	.type	32;	.endef
	.seh_proc	isprint
isprint:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	sub	eax, 32
	cmp	eax, 94
	setbe	al
	movzx	eax, al
	pop	rbp
	ret
	.seh_endproc
	.globl	isspace
	.def	isspace;	.scl	2;	.type	32;	.endef
	.seh_proc	isspace
isspace:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	cmp	DWORD PTR 16[rbp], 32
	je	.L99
	mov	eax, DWORD PTR 16[rbp]
	sub	eax, 9
	cmp	eax, 4
	ja	.L100
.L99:
	mov	eax, 1
	jmp	.L102
.L100:
	mov	eax, 0
.L102:
	pop	rbp
	ret
	.seh_endproc
	.globl	isupper
	.def	isupper;	.scl	2;	.type	32;	.endef
	.seh_proc	isupper
isupper:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	sub	eax, 65
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	pop	rbp
	ret
	.seh_endproc
	.globl	iswcntrl
	.def	iswcntrl;	.scl	2;	.type	32;	.endef
	.seh_proc	iswcntrl
iswcntrl:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	eax, ecx
	mov	WORD PTR 16[rbp], ax
	cmp	WORD PTR 16[rbp], 31
	jbe	.L106
	movzx	eax, WORD PTR 16[rbp]
	sub	eax, 127
	cmp	eax, 32
	jbe	.L106
	movzx	eax, WORD PTR 16[rbp]
	sub	eax, 8232
	cmp	eax, 1
	jbe	.L106
	movzx	eax, WORD PTR 16[rbp]
	sub	eax, 65529
	cmp	eax, 2
	ja	.L107
.L106:
	mov	eax, 1
	jmp	.L109
.L107:
	mov	eax, 0
.L109:
	pop	rbp
	ret
	.seh_endproc
	.globl	iswdigit
	.def	iswdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	iswdigit
iswdigit:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	eax, ecx
	mov	WORD PTR 16[rbp], ax
	movzx	eax, WORD PTR 16[rbp]
	sub	eax, 48
	cmp	eax, 9
	setbe	al
	movzx	eax, al
	pop	rbp
	ret
	.seh_endproc
	.globl	iswprint
	.def	iswprint;	.scl	2;	.type	32;	.endef
	.seh_proc	iswprint
iswprint:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	eax, ecx
	mov	WORD PTR 16[rbp], ax
	cmp	WORD PTR 16[rbp], 254
	ja	.L113
	movzx	eax, WORD PTR 16[rbp]
	add	eax, 1
	and	eax, 127
	cmp	eax, 32
	setg	al
	movzx	eax, al
	jmp	.L114
.L113:
	cmp	WORD PTR 16[rbp], 8231
	jbe	.L115
	movzx	eax, WORD PTR 16[rbp]
	sub	eax, 8234
	cmp	eax, 47061
	jbe	.L115
	movzx	eax, WORD PTR 16[rbp]
	sub	eax, 57344
	cmp	eax, 8184
	ja	.L116
.L115:
	mov	eax, 1
	jmp	.L114
.L116:
	movzx	eax, WORD PTR 16[rbp]
	sub	eax, 65532
	cmp	eax, 1048579
	ja	.L117
	movzx	eax, WORD PTR 16[rbp]
	and	eax, 65534
	cmp	eax, 65534
	jne	.L118
.L117:
	mov	eax, 0
	jmp	.L114
.L118:
	mov	eax, 1
.L114:
	pop	rbp
	ret
	.seh_endproc
	.globl	iswxdigit
	.def	iswxdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	iswxdigit
iswxdigit:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	eax, ecx
	mov	WORD PTR 16[rbp], ax
	movzx	eax, WORD PTR 16[rbp]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L120
	movzx	eax, WORD PTR 16[rbp]
	or	eax, 32
	movzx	eax, ax
	sub	eax, 97
	cmp	eax, 5
	ja	.L121
.L120:
	mov	eax, 1
	jmp	.L123
.L121:
	mov	eax, 0
.L123:
	pop	rbp
	ret
	.seh_endproc
	.globl	toascii
	.def	toascii;	.scl	2;	.type	32;	.endef
	.seh_proc	toascii
toascii:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	and	eax, 127
	pop	rbp
	ret
	.seh_endproc
	.globl	fdim
	.def	fdim;	.scl	2;	.type	32;	.endef
	.seh_proc	fdim
fdim:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	movsd	QWORD PTR 16[rbp], xmm0
	movsd	QWORD PTR 24[rbp], xmm1
	movsd	xmm0, QWORD PTR 16[rbp]
	ucomisd	xmm0, QWORD PTR 16[rbp]
	jnp	.L127
	movsd	xmm0, QWORD PTR 16[rbp]
	jmp	.L128
.L127:
	movsd	xmm0, QWORD PTR 24[rbp]
	ucomisd	xmm0, QWORD PTR 24[rbp]
	jnp	.L129
	movsd	xmm0, QWORD PTR 24[rbp]
	jmp	.L128
.L129:
	movsd	xmm0, QWORD PTR 16[rbp]
	comisd	xmm0, QWORD PTR 24[rbp]
	jbe	.L134
	movsd	xmm0, QWORD PTR 16[rbp]
	subsd	xmm0, QWORD PTR 24[rbp]
	jmp	.L128
.L134:
	pxor	xmm0, xmm0
.L128:
	pop	rbp
	ret
	.seh_endproc
	.globl	fdimf
	.def	fdimf;	.scl	2;	.type	32;	.endef
	.seh_proc	fdimf
fdimf:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	movss	DWORD PTR 16[rbp], xmm0
	movss	DWORD PTR 24[rbp], xmm1
	movss	xmm0, DWORD PTR 16[rbp]
	ucomiss	xmm0, DWORD PTR 16[rbp]
	jnp	.L136
	movss	xmm0, DWORD PTR 16[rbp]
	jmp	.L137
.L136:
	movss	xmm0, DWORD PTR 24[rbp]
	ucomiss	xmm0, DWORD PTR 24[rbp]
	jnp	.L138
	movss	xmm0, DWORD PTR 24[rbp]
	jmp	.L137
.L138:
	movss	xmm0, DWORD PTR 16[rbp]
	comiss	xmm0, DWORD PTR 24[rbp]
	jbe	.L143
	movss	xmm0, DWORD PTR 16[rbp]
	subss	xmm0, DWORD PTR 24[rbp]
	jmp	.L137
.L143:
	pxor	xmm0, xmm0
.L137:
	pop	rbp
	ret
	.seh_endproc
	.globl	fmax
	.def	fmax;	.scl	2;	.type	32;	.endef
	.seh_proc	fmax
fmax:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	movsd	QWORD PTR 16[rbp], xmm0
	movsd	QWORD PTR 24[rbp], xmm1
	movsd	xmm0, QWORD PTR 16[rbp]
	ucomisd	xmm0, QWORD PTR 16[rbp]
	jnp	.L145
	movsd	xmm0, QWORD PTR 24[rbp]
	jmp	.L146
.L145:
	movsd	xmm0, QWORD PTR 24[rbp]
	ucomisd	xmm0, QWORD PTR 24[rbp]
	jnp	.L147
	movsd	xmm0, QWORD PTR 16[rbp]
	jmp	.L146
.L147:
	movsd	xmm0, QWORD PTR 16[rbp]
	movmskpd	edx, xmm0
	and	edx, 1
	movsd	xmm0, QWORD PTR 24[rbp]
	movmskpd	eax, xmm0
	and	eax, 1
	cmp	edx, eax
	je	.L148
	movsd	xmm0, QWORD PTR 16[rbp]
	movmskpd	eax, xmm0
	and	eax, 1
	test	eax, eax
	je	.L149
	movsd	xmm0, QWORD PTR 24[rbp]
	jmp	.L146
.L149:
	movsd	xmm0, QWORD PTR 16[rbp]
	jmp	.L146
.L148:
	movsd	xmm0, QWORD PTR 24[rbp]
	comisd	xmm0, QWORD PTR 16[rbp]
	jbe	.L155
	movsd	xmm0, QWORD PTR 24[rbp]
	jmp	.L146
.L155:
	movsd	xmm0, QWORD PTR 16[rbp]
.L146:
	pop	rbp
	ret
	.seh_endproc
	.globl	fmaxf
	.def	fmaxf;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxf
fmaxf:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	movss	DWORD PTR 16[rbp], xmm0
	movss	DWORD PTR 24[rbp], xmm1
	movss	xmm0, DWORD PTR 16[rbp]
	ucomiss	xmm0, DWORD PTR 16[rbp]
	jnp	.L157
	movss	xmm0, DWORD PTR 24[rbp]
	jmp	.L158
.L157:
	movss	xmm0, DWORD PTR 24[rbp]
	ucomiss	xmm0, DWORD PTR 24[rbp]
	jnp	.L159
	movss	xmm0, DWORD PTR 16[rbp]
	jmp	.L158
.L159:
	mov	eax, DWORD PTR 16[rbp]
	and	eax, -2147483648
	mov	edx, eax
	mov	eax, DWORD PTR 24[rbp]
	and	eax, -2147483648
	cmp	edx, eax
	je	.L160
	mov	eax, DWORD PTR 16[rbp]
	and	eax, -2147483648
	test	eax, eax
	je	.L161
	movss	xmm0, DWORD PTR 24[rbp]
	jmp	.L158
.L161:
	movss	xmm0, DWORD PTR 16[rbp]
	jmp	.L158
.L160:
	movss	xmm0, DWORD PTR 24[rbp]
	comiss	xmm0, DWORD PTR 16[rbp]
	jbe	.L167
	movss	xmm0, DWORD PTR 24[rbp]
	jmp	.L158
.L167:
	movss	xmm0, DWORD PTR 16[rbp]
.L158:
	pop	rbp
	ret
	.seh_endproc
	.globl	fmaxl
	.def	fmaxl;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxl
fmaxl:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	rbx, rdx
	fld	TBYTE PTR [rbx]
	fstp	TBYTE PTR -16[rbp]
	mov	rbx, r8
	fld	TBYTE PTR [rbx]
	fstp	TBYTE PTR -32[rbp]
	fld	TBYTE PTR -16[rbp]
	fld	TBYTE PTR -16[rbp]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	.L169
	mov	rax, QWORD PTR 32[rbp]
	fld	TBYTE PTR -32[rbp]
	fstp	TBYTE PTR [rax]
	jmp	.L170
.L169:
	fld	TBYTE PTR -32[rbp]
	fld	TBYTE PTR -32[rbp]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	.L171
	mov	rax, QWORD PTR 32[rbp]
	fld	TBYTE PTR -16[rbp]
	fstp	TBYTE PTR [rax]
	jmp	.L170
.L171:
	fld	TBYTE PTR -16[rbp]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	TBYTE PTR -32[rbp]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L172
	fld	TBYTE PTR -16[rbp]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	test	eax, eax
	je	.L173
	fld	TBYTE PTR -32[rbp]
	jmp	.L174
.L173:
	fld	TBYTE PTR -16[rbp]
.L174:
	mov	rax, QWORD PTR 32[rbp]
	fstp	TBYTE PTR [rax]
	jmp	.L170
.L172:
	fld	TBYTE PTR -16[rbp]
	fld	TBYTE PTR -32[rbp]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	.L179
	fld	TBYTE PTR -32[rbp]
	jmp	.L177
.L179:
	fld	TBYTE PTR -16[rbp]
.L177:
	mov	rax, QWORD PTR 32[rbp]
	fstp	TBYTE PTR [rax]
.L170:
	mov	rax, QWORD PTR 32[rbp]
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	movsd	QWORD PTR 16[rbp], xmm0
	movsd	QWORD PTR 24[rbp], xmm1
	movsd	xmm0, QWORD PTR 16[rbp]
	ucomisd	xmm0, QWORD PTR 16[rbp]
	jnp	.L181
	movsd	xmm0, QWORD PTR 24[rbp]
	jmp	.L182
.L181:
	movsd	xmm0, QWORD PTR 24[rbp]
	ucomisd	xmm0, QWORD PTR 24[rbp]
	jnp	.L183
	movsd	xmm0, QWORD PTR 16[rbp]
	jmp	.L182
.L183:
	movsd	xmm0, QWORD PTR 16[rbp]
	movmskpd	edx, xmm0
	and	edx, 1
	movsd	xmm0, QWORD PTR 24[rbp]
	movmskpd	eax, xmm0
	and	eax, 1
	cmp	edx, eax
	je	.L184
	movsd	xmm0, QWORD PTR 16[rbp]
	movmskpd	eax, xmm0
	and	eax, 1
	test	eax, eax
	je	.L185
	movsd	xmm0, QWORD PTR 16[rbp]
	jmp	.L182
.L185:
	movsd	xmm0, QWORD PTR 24[rbp]
	jmp	.L182
.L184:
	movsd	xmm0, QWORD PTR 24[rbp]
	comisd	xmm0, QWORD PTR 16[rbp]
	jbe	.L191
	movsd	xmm0, QWORD PTR 16[rbp]
	jmp	.L182
.L191:
	movsd	xmm0, QWORD PTR 24[rbp]
.L182:
	pop	rbp
	ret
	.seh_endproc
	.globl	fminf
	.def	fminf;	.scl	2;	.type	32;	.endef
	.seh_proc	fminf
fminf:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	movss	DWORD PTR 16[rbp], xmm0
	movss	DWORD PTR 24[rbp], xmm1
	movss	xmm0, DWORD PTR 16[rbp]
	ucomiss	xmm0, DWORD PTR 16[rbp]
	jnp	.L193
	movss	xmm0, DWORD PTR 24[rbp]
	jmp	.L194
.L193:
	movss	xmm0, DWORD PTR 24[rbp]
	ucomiss	xmm0, DWORD PTR 24[rbp]
	jnp	.L195
	movss	xmm0, DWORD PTR 16[rbp]
	jmp	.L194
.L195:
	mov	eax, DWORD PTR 16[rbp]
	and	eax, -2147483648
	mov	edx, eax
	mov	eax, DWORD PTR 24[rbp]
	and	eax, -2147483648
	cmp	edx, eax
	je	.L196
	mov	eax, DWORD PTR 16[rbp]
	and	eax, -2147483648
	test	eax, eax
	je	.L197
	movss	xmm0, DWORD PTR 16[rbp]
	jmp	.L194
.L197:
	movss	xmm0, DWORD PTR 24[rbp]
	jmp	.L194
.L196:
	movss	xmm0, DWORD PTR 24[rbp]
	comiss	xmm0, DWORD PTR 16[rbp]
	jbe	.L203
	movss	xmm0, DWORD PTR 16[rbp]
	jmp	.L194
.L203:
	movss	xmm0, DWORD PTR 24[rbp]
.L194:
	pop	rbp
	ret
	.seh_endproc
	.globl	fminl
	.def	fminl;	.scl	2;	.type	32;	.endef
	.seh_proc	fminl
fminl:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	rbx, rdx
	fld	TBYTE PTR [rbx]
	fstp	TBYTE PTR -16[rbp]
	mov	rbx, r8
	fld	TBYTE PTR [rbx]
	fstp	TBYTE PTR -32[rbp]
	fld	TBYTE PTR -16[rbp]
	fld	TBYTE PTR -16[rbp]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	.L205
	mov	rax, QWORD PTR 32[rbp]
	fld	TBYTE PTR -32[rbp]
	fstp	TBYTE PTR [rax]
	jmp	.L206
.L205:
	fld	TBYTE PTR -32[rbp]
	fld	TBYTE PTR -32[rbp]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	.L207
	mov	rax, QWORD PTR 32[rbp]
	fld	TBYTE PTR -16[rbp]
	fstp	TBYTE PTR [rax]
	jmp	.L206
.L207:
	fld	TBYTE PTR -16[rbp]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	TBYTE PTR -32[rbp]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L208
	fld	TBYTE PTR -16[rbp]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	test	eax, eax
	je	.L209
	fld	TBYTE PTR -16[rbp]
	jmp	.L210
.L209:
	fld	TBYTE PTR -32[rbp]
.L210:
	mov	rax, QWORD PTR 32[rbp]
	fstp	TBYTE PTR [rax]
	jmp	.L206
.L208:
	fld	TBYTE PTR -16[rbp]
	fld	TBYTE PTR -32[rbp]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	.L215
	fld	TBYTE PTR -16[rbp]
	jmp	.L213
.L215:
	fld	TBYTE PTR -32[rbp]
.L213:
	mov	rax, QWORD PTR 32[rbp]
	fstp	TBYTE PTR [rax]
.L206:
	mov	rax, QWORD PTR 32[rbp]
	add	rsp, 40
	pop	rbx
	pop	rbp
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
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	mov	DWORD PTR -12[rbp], eax
	lea	rax, s.0[rip]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L217
.L218:
	mov	eax, DWORD PTR -12[rbp]
	and	eax, 63
	mov	edx, eax
	lea	rax, digits[rip]
	movzx	edx, BYTE PTR [rdx+rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR [rax], dl
	add	QWORD PTR -8[rbp], 1
	shr	DWORD PTR -12[rbp], 6
.L217:
	cmp	DWORD PTR -12[rbp], 0
	jne	.L218
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR [rax], 0
	lea	rax, s.0[rip]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
.lcomm seed,8,8
	.globl	srand
	.def	srand;	.scl	2;	.type	32;	.endef
	.seh_proc	srand
srand:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	sub	eax, 1
	mov	eax, eax
	mov	QWORD PTR seed[rip], rax
	nop
	pop	rbp
	ret
	.seh_endproc
	.globl	rand
	.def	rand;	.scl	2;	.type	32;	.endef
	.seh_proc	rand
rand:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	rax, QWORD PTR seed[rip]
	movabs	rdx, 6364136223846793005
	imul	rax, rdx
	add	rax, 1
	mov	QWORD PTR seed[rip], rax
	mov	rax, QWORD PTR seed[rip]
	shr	rax, 33
	pop	rbp
	ret
	.seh_endproc
	.globl	insque
	.def	insque;	.scl	2;	.type	32;	.endef
	.seh_proc	insque
insque:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L224
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	jmp	.L223
.L224:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L223
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
.L223:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	remque
	.def	remque;	.scl	2;	.type	32;	.endef
	.seh_proc	remque
remque:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L227
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rdx]
	mov	QWORD PTR 8[rax], rdx
.L227:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	je	.L229
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rdx]
	mov	QWORD PTR [rax], rdx
.L229:
	nop
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	lsearch
	.def	lsearch;	.scl	2;	.type	32;	.endef
	.seh_proc	lsearch
lsearch:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	lea	rbp, 64[rsp]
	.seh_setframe	rbp, 64
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	QWORD PTR 56[rbp], r9
	mov	rbx, QWORD PTR 56[rbp]
	mov	rax, rbx
	sub	rax, 1
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR 40[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR 48[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -8[rbp], 0
	jmp	.L231
.L234:
	mov	rdx, rbx
	imul	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR 32[rbp]
	mov	r8, QWORD PTR 64[rbp]
	mov	rcx, rax
	call	r8
	test	eax, eax
	jne	.L232
	imul	rbx, QWORD PTR -8[rbp]
	mov	rdx, rbx
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	jmp	.L233
.L232:
	add	QWORD PTR -8[rbp], 1
.L231:
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	jb	.L234
	mov	rax, QWORD PTR -32[rbp]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR 48[rbp]
	mov	QWORD PTR [rax], rdx
	imul	rbx, QWORD PTR -32[rbp]
	mov	rdx, rbx
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, [rdx+rax]
	mov	rdx, QWORD PTR 56[rbp]
	mov	rax, QWORD PTR 32[rbp]
	mov	r8, rdx
	mov	rdx, rax
	call	memcpy
.L233:
	add	rsp, 72
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	lfind
	.def	lfind;	.scl	2;	.type	32;	.endef
	.seh_proc	lfind
lfind:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	lea	rbp, 64[rsp]
	.seh_setframe	rbp, 64
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	QWORD PTR 56[rbp], r9
	mov	rbx, QWORD PTR 56[rbp]
	mov	rax, rbx
	sub	rax, 1
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR 40[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR 48[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -8[rbp], 0
	jmp	.L236
.L239:
	mov	rdx, rbx
	imul	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR 32[rbp]
	mov	r8, QWORD PTR 64[rbp]
	mov	rcx, rax
	call	r8
	test	eax, eax
	jne	.L237
	imul	rbx, QWORD PTR -8[rbp]
	mov	rdx, rbx
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	jmp	.L238
.L237:
	add	QWORD PTR -8[rbp], 1
.L236:
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	jb	.L239
	mov	eax, 0
.L238:
	add	rsp, 72
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	abs
	.def	abs;	.scl	2;	.type	32;	.endef
	.seh_proc	abs
abs:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	mov	edx, eax
	neg	edx
	cmovns	eax, edx
	pop	rbp
	ret
	.seh_endproc
	.globl	atoi
	.def	atoi;	.scl	2;	.type	32;	.endef
	.seh_proc	atoi
atoi:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L243
.L244:
	add	QWORD PTR 16[rbp], 1
.L243:
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	ecx, eax
	call	isspace
	test	eax, eax
	jne	.L244
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	cmp	eax, 43
	je	.L245
	cmp	eax, 45
	jne	.L247
	mov	DWORD PTR -8[rbp], 1
.L245:
	add	QWORD PTR 16[rbp], 1
	jmp	.L247
.L248:
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	rax, QWORD PTR 16[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR 16[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	lea	edx, -48[rax]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR -4[rbp], eax
.L247:
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L248
	cmp	DWORD PTR -8[rbp], 0
	jne	.L249
	mov	eax, DWORD PTR -4[rbp]
	neg	eax
	jmp	.L251
.L249:
	mov	eax, DWORD PTR -4[rbp]
.L251:
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.globl	atol
	.def	atol;	.scl	2;	.type	32;	.endef
	.seh_proc	atol
atol:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L253
.L254:
	add	QWORD PTR 16[rbp], 1
.L253:
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	ecx, eax
	call	isspace
	test	eax, eax
	jne	.L254
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	cmp	eax, 43
	je	.L255
	cmp	eax, 45
	jne	.L257
	mov	DWORD PTR -8[rbp], 1
.L255:
	add	QWORD PTR 16[rbp], 1
	jmp	.L257
.L258:
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	rax, QWORD PTR 16[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR 16[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	lea	edx, -48[rax]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR -4[rbp], eax
.L257:
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L258
	cmp	DWORD PTR -8[rbp], 0
	jne	.L259
	mov	eax, DWORD PTR -4[rbp]
	neg	eax
	jmp	.L261
.L259:
	mov	eax, DWORD PTR -4[rbp]
.L261:
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.globl	atoll
	.def	atoll;	.scl	2;	.type	32;	.endef
	.seh_proc	atoll
atoll:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L263
.L264:
	add	QWORD PTR 16[rbp], 1
.L263:
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	ecx, eax
	call	isspace
	test	eax, eax
	jne	.L264
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	cmp	eax, 43
	je	.L265
	cmp	eax, 45
	jne	.L267
	mov	DWORD PTR -12[rbp], 1
.L265:
	add	QWORD PTR 16[rbp], 1
	jmp	.L267
.L268:
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	mov	rcx, rax
	mov	rax, QWORD PTR 16[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR 16[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	sub	rcx, rax
	mov	rdx, rcx
	mov	QWORD PTR -8[rbp], rdx
.L267:
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L268
	cmp	DWORD PTR -12[rbp], 0
	jne	.L269
	mov	rax, QWORD PTR -8[rbp]
	neg	rax
	jmp	.L271
.L269:
	mov	rax, QWORD PTR -8[rbp]
.L271:
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.globl	bsearch
	.def	bsearch;	.scl	2;	.type	32;	.endef
	.seh_proc	bsearch
bsearch:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	QWORD PTR 40[rbp], r9
	jmp	.L273
.L277:
	mov	rax, QWORD PTR 32[rbp]
	shr	rax
	imul	rax, QWORD PTR 40[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR 24[rbp]
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rbp]
	mov	r8, QWORD PTR 48[rbp]
	mov	rcx, rax
	call	r8
	mov	DWORD PTR -12[rbp], eax
	cmp	DWORD PTR -12[rbp], 0
	jns	.L274
	mov	rax, QWORD PTR 32[rbp]
	shr	rax
	mov	QWORD PTR 32[rbp], rax
	jmp	.L273
.L274:
	cmp	DWORD PTR -12[rbp], 0
	jle	.L275
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 40[rbp]
	add	rax, rdx
	mov	QWORD PTR 24[rbp], rax
	mov	rax, QWORD PTR 32[rbp]
	shr	rax
	mov	rdx, QWORD PTR 32[rbp]
	sub	rdx, rax
	lea	rax, -1[rdx]
	mov	QWORD PTR 32[rbp], rax
	jmp	.L273
.L275:
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L276
.L273:
	cmp	QWORD PTR 32[rbp], 0
	jne	.L277
	mov	eax, 0
.L276:
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.globl	bsearch_r
	.def	bsearch_r;	.scl	2;	.type	32;	.endef
	.seh_proc	bsearch_r
bsearch_r:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	QWORD PTR 40[rbp], r9
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 32[rbp]
	mov	DWORD PTR -12[rbp], eax
	jmp	.L279
.L283:
	mov	eax, DWORD PTR -12[rbp]
	sar	eax
	cdqe
	imul	rax, QWORD PTR 40[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	mov	rcx, QWORD PTR 56[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rbp]
	mov	r9, QWORD PTR 48[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	r9
	mov	DWORD PTR -28[rbp], eax
	cmp	DWORD PTR -28[rbp], 0
	jne	.L280
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L281
.L280:
	cmp	DWORD PTR -28[rbp], 0
	jle	.L282
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 40[rbp]
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	sub	DWORD PTR -12[rbp], 1
.L282:
	sar	DWORD PTR -12[rbp]
.L279:
	cmp	DWORD PTR -12[rbp], 0
	jne	.L283
	mov	eax, 0
.L281:
	add	rsp, 64
	pop	rbp
	ret
	.seh_endproc
	.globl	div
	.def	div;	.scl	2;	.type	32;	.endef
	.seh_proc	div
div:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	mov	eax, DWORD PTR 16[rbp]
	cdq
	idiv	DWORD PTR 24[rbp]
	mov	r9d, eax
	mov	eax, DWORD PTR 16[rbp]
	cdq
	idiv	DWORD PTR 24[rbp]
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
	pop	rbp
	ret
	.seh_endproc
	.globl	imaxabs
	.def	imaxabs;	.scl	2;	.type	32;	.endef
	.seh_proc	imaxabs
imaxabs:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, rax
	neg	rdx
	cmovns	rax, rdx
	pop	rbp
	ret
	.seh_endproc
	.globl	imaxdiv
	.def	imaxdiv;	.scl	2;	.type	32;	.endef
	.seh_proc	imaxdiv
imaxdiv:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	cqo
	idiv	QWORD PTR 32[rbp]
	mov	rcx, rax
	mov	rax, QWORD PTR 24[rbp]
	cqo
	idiv	QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.globl	labs
	.def	labs;	.scl	2;	.type	32;	.endef
	.seh_proc	labs
labs:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	mov	edx, eax
	neg	edx
	cmovns	eax, edx
	pop	rbp
	ret
	.seh_endproc
	.globl	ldiv
	.def	ldiv;	.scl	2;	.type	32;	.endef
	.seh_proc	ldiv
ldiv:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	mov	eax, DWORD PTR 16[rbp]
	cdq
	idiv	DWORD PTR 24[rbp]
	mov	r9d, eax
	mov	eax, DWORD PTR 16[rbp]
	cdq
	idiv	DWORD PTR 24[rbp]
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
	pop	rbp
	ret
	.seh_endproc
	.globl	llabs
	.def	llabs;	.scl	2;	.type	32;	.endef
	.seh_proc	llabs
llabs:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, rax
	neg	rdx
	cmovns	rax, rdx
	pop	rbp
	ret
	.seh_endproc
	.globl	lldiv
	.def	lldiv;	.scl	2;	.type	32;	.endef
	.seh_proc	lldiv
lldiv:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	cqo
	idiv	QWORD PTR 32[rbp]
	mov	rcx, rax
	mov	rax, QWORD PTR 24[rbp]
	cqo
	idiv	QWORD PTR 32[rbp]
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR [rax], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR 16[rbp]
	pop	rbp
	ret
	.seh_endproc
	.globl	wcschr
	.def	wcschr;	.scl	2;	.type	32;	.endef
	.seh_proc	wcschr
wcschr:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	eax, edx
	mov	WORD PTR 24[rbp], ax
	jmp	.L299
.L301:
	add	QWORD PTR 16[rbp], 2
.L299:
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, WORD PTR [rax]
	test	ax, ax
	je	.L300
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, WORD PTR [rax]
	cmp	WORD PTR 24[rbp], ax
	jne	.L301
.L300:
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, WORD PTR [rax]
	test	ax, ax
	je	.L302
	mov	rax, QWORD PTR 16[rbp]
	jmp	.L304
.L302:
	mov	eax, 0
.L304:
	pop	rbp
	ret
	.seh_endproc
	.globl	wcscmp
	.def	wcscmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscmp
wcscmp:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	jmp	.L306
.L308:
	add	QWORD PTR 16[rbp], 2
	add	QWORD PTR 24[rbp], 2
.L306:
	mov	rax, QWORD PTR 16[rbp]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	movzx	eax, WORD PTR [rax]
	cmp	dx, ax
	jne	.L307
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, WORD PTR [rax]
	test	ax, ax
	je	.L307
	mov	rax, QWORD PTR 24[rbp]
	movzx	eax, WORD PTR [rax]
	test	ax, ax
	jne	.L308
.L307:
	mov	rax, QWORD PTR 16[rbp]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	movzx	eax, WORD PTR [rax]
	cmp	dx, ax
	jb	.L309
	mov	rax, QWORD PTR 16[rbp]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	movzx	eax, WORD PTR [rax]
	cmp	ax, dx
	setb	al
	movzx	eax, al
	jmp	.L311
.L309:
	mov	eax, -1
.L311:
	pop	rbp
	ret
	.seh_endproc
	.globl	wcscpy
	.def	wcscpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscpy
wcscpy:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	nop
.L313:
	mov	rdx, QWORD PTR 24[rbp]
	lea	rax, 2[rdx]
	mov	QWORD PTR 24[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	lea	rcx, 2[rax]
	mov	QWORD PTR 16[rbp], rcx
	movzx	edx, WORD PTR [rdx]
	mov	WORD PTR [rax], dx
	movzx	eax, WORD PTR [rax]
	test	ax, ax
	jne	.L313
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L316
.L317:
	add	QWORD PTR 16[rbp], 2
.L316:
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, WORD PTR [rax]
	test	ax, ax
	jne	.L317
	mov	rax, QWORD PTR 16[rbp]
	sub	rax, QWORD PTR -8[rbp]
	sar	rax
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	wcsncmp
	.def	wcsncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcsncmp
wcsncmp:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	jmp	.L320
.L322:
	sub	QWORD PTR 32[rbp], 1
	add	QWORD PTR 16[rbp], 2
	add	QWORD PTR 24[rbp], 2
.L320:
	cmp	QWORD PTR 32[rbp], 0
	je	.L321
	mov	rax, QWORD PTR 16[rbp]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	movzx	eax, WORD PTR [rax]
	cmp	dx, ax
	jne	.L321
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, WORD PTR [rax]
	test	ax, ax
	je	.L321
	mov	rax, QWORD PTR 24[rbp]
	movzx	eax, WORD PTR [rax]
	test	ax, ax
	jne	.L322
.L321:
	cmp	QWORD PTR 32[rbp], 0
	je	.L323
	mov	rax, QWORD PTR 16[rbp]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	movzx	eax, WORD PTR [rax]
	cmp	dx, ax
	jb	.L324
	mov	rax, QWORD PTR 16[rbp]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	movzx	eax, WORD PTR [rax]
	cmp	ax, dx
	setb	al
	movzx	eax, al
	jmp	.L327
.L324:
	mov	eax, -1
	jmp	.L327
.L323:
	mov	eax, 0
.L327:
	pop	rbp
	ret
	.seh_endproc
	.globl	wmemchr
	.def	wmemchr;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemchr
wmemchr:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	eax, edx
	mov	QWORD PTR 32[rbp], r8
	mov	WORD PTR 24[rbp], ax
	jmp	.L329
.L331:
	sub	QWORD PTR 32[rbp], 1
	add	QWORD PTR 16[rbp], 2
.L329:
	cmp	QWORD PTR 32[rbp], 0
	je	.L330
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, WORD PTR [rax]
	cmp	WORD PTR 24[rbp], ax
	jne	.L331
.L330:
	cmp	QWORD PTR 32[rbp], 0
	je	.L332
	mov	rax, QWORD PTR 16[rbp]
	jmp	.L334
.L332:
	mov	eax, 0
.L334:
	pop	rbp
	ret
	.seh_endproc
	.globl	wmemcmp
	.def	wmemcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcmp
wmemcmp:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	jmp	.L336
.L338:
	sub	QWORD PTR 32[rbp], 1
	add	QWORD PTR 16[rbp], 2
	add	QWORD PTR 24[rbp], 2
.L336:
	cmp	QWORD PTR 32[rbp], 0
	je	.L337
	mov	rax, QWORD PTR 16[rbp]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	movzx	eax, WORD PTR [rax]
	cmp	dx, ax
	je	.L338
.L337:
	cmp	QWORD PTR 32[rbp], 0
	je	.L339
	mov	rax, QWORD PTR 16[rbp]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	movzx	eax, WORD PTR [rax]
	cmp	dx, ax
	jb	.L340
	mov	rax, QWORD PTR 16[rbp]
	movzx	edx, WORD PTR [rax]
	mov	rax, QWORD PTR 24[rbp]
	movzx	eax, WORD PTR [rax]
	cmp	ax, dx
	setb	al
	movzx	eax, al
	jmp	.L343
.L340:
	mov	eax, -1
	jmp	.L343
.L339:
	mov	eax, 0
.L343:
	pop	rbp
	ret
	.seh_endproc
	.globl	wmemcpy
	.def	wmemcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcpy
wmemcpy:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L345
.L346:
	mov	rdx, QWORD PTR 24[rbp]
	lea	rax, 2[rdx]
	mov	QWORD PTR 24[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	lea	rcx, 2[rax]
	mov	QWORD PTR 16[rbp], rcx
	movzx	edx, WORD PTR [rdx]
	mov	WORD PTR [rax], dx
.L345:
	mov	rax, QWORD PTR 32[rbp]
	lea	rdx, -1[rax]
	mov	QWORD PTR 32[rbp], rdx
	test	rax, rax
	jne	.L346
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	wmemmove
	.def	wmemmove;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemmove
wmemmove:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	cmp	rax, QWORD PTR 24[rbp]
	jne	.L349
	mov	rax, QWORD PTR 16[rbp]
	jmp	.L350
.L349:
	mov	rdx, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 24[rbp]
	sub	rdx, rax
	mov	rax, QWORD PTR 32[rbp]
	add	rax, rax
	cmp	rdx, rax
	jnb	.L355
	jmp	.L352
.L353:
	mov	rax, QWORD PTR 32[rbp]
	lea	rdx, [rax+rax]
	mov	rax, QWORD PTR 24[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR 32[rbp]
	lea	rcx, [rdx+rdx]
	mov	rdx, QWORD PTR 16[rbp]
	add	rdx, rcx
	movzx	eax, WORD PTR [rax]
	mov	WORD PTR [rdx], ax
.L352:
	mov	rax, QWORD PTR 32[rbp]
	lea	rdx, -1[rax]
	mov	QWORD PTR 32[rbp], rdx
	test	rax, rax
	jne	.L353
	jmp	.L354
.L356:
	mov	rdx, QWORD PTR 24[rbp]
	lea	rax, 2[rdx]
	mov	QWORD PTR 24[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	lea	rcx, 2[rax]
	mov	QWORD PTR 16[rbp], rcx
	movzx	edx, WORD PTR [rdx]
	mov	WORD PTR [rax], dx
.L355:
	mov	rax, QWORD PTR 32[rbp]
	lea	rdx, -1[rax]
	mov	QWORD PTR 32[rbp], rdx
	test	rax, rax
	jne	.L356
.L354:
	mov	rax, QWORD PTR -8[rbp]
.L350:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	wmemset
	.def	wmemset;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemset
wmemset:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	eax, edx
	mov	QWORD PTR 32[rbp], r8
	mov	WORD PTR 24[rbp], ax
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L358
.L359:
	mov	rax, QWORD PTR 16[rbp]
	lea	rdx, 2[rax]
	mov	QWORD PTR 16[rbp], rdx
	movzx	edx, WORD PTR 24[rbp]
	mov	WORD PTR [rax], dx
.L358:
	mov	rax, QWORD PTR 32[rbp]
	lea	rdx, -1[rax]
	mov	QWORD PTR 32[rbp], rdx
	test	rax, rax
	jne	.L359
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	bcopy
	.def	bcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	bcopy
bcopy:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -16[rbp]
	jnb	.L362
	mov	rax, QWORD PTR 32[rbp]
	add	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 32[rbp]
	add	QWORD PTR -16[rbp], rax
	jmp	.L363
.L364:
	sub	QWORD PTR -8[rbp], 1
	sub	QWORD PTR -16[rbp], 1
	mov	rax, QWORD PTR -8[rbp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR 32[rbp], 1
.L363:
	cmp	QWORD PTR 32[rbp], 0
	jne	.L364
	jmp	.L368
.L362:
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -16[rbp]
	je	.L368
	jmp	.L366
.L367:
	mov	rdx, QWORD PTR -8[rbp]
	lea	rax, 1[rdx]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, 1[rax]
	mov	QWORD PTR -16[rbp], rcx
	movzx	edx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR 32[rbp], 1
.L366:
	cmp	QWORD PTR 32[rbp], 0
	jne	.L367
.L368:
	nop
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	rotl64
	.def	rotl64;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl64
rotl64:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	DWORD PTR 24[rbp], edx
	mov	eax, DWORD PTR 24[rbp]
	mov	rdx, QWORD PTR 16[rbp]
	mov	ecx, eax
	rol	rdx, cl
	mov	rax, rdx
	pop	rbp
	ret
	.seh_endproc
	.globl	rotr64
	.def	rotr64;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr64
rotr64:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	DWORD PTR 24[rbp], edx
	mov	eax, DWORD PTR 24[rbp]
	mov	rdx, QWORD PTR 16[rbp]
	mov	ecx, eax
	ror	rdx, cl
	mov	rax, rdx
	pop	rbp
	ret
	.seh_endproc
	.globl	rotl32
	.def	rotl32;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl32
rotl32:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	mov	eax, DWORD PTR 24[rbp]
	mov	edx, DWORD PTR 16[rbp]
	mov	ecx, eax
	rol	edx, cl
	mov	eax, edx
	pop	rbp
	ret
	.seh_endproc
	.globl	rotr32
	.def	rotr32;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr32
rotr32:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	mov	eax, DWORD PTR 24[rbp]
	mov	edx, DWORD PTR 16[rbp]
	mov	ecx, eax
	ror	edx, cl
	mov	eax, edx
	pop	rbp
	ret
	.seh_endproc
	.globl	rotl_sz
	.def	rotl_sz;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl_sz
rotl_sz:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	DWORD PTR 24[rbp], edx
	mov	eax, DWORD PTR 24[rbp]
	mov	rdx, QWORD PTR 16[rbp]
	mov	ecx, eax
	sal	rdx, cl
	mov	r8, rdx
	mov	eax, DWORD PTR 24[rbp]
	mov	edx, 64
	sub	edx, eax
	mov	rax, QWORD PTR 16[rbp]
	mov	ecx, edx
	shr	rax, cl
	or	rax, r8
	pop	rbp
	ret
	.seh_endproc
	.globl	rotr_sz
	.def	rotr_sz;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr_sz
rotr_sz:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	DWORD PTR 24[rbp], edx
	mov	eax, DWORD PTR 24[rbp]
	mov	rdx, QWORD PTR 16[rbp]
	mov	ecx, eax
	shr	rdx, cl
	mov	r8, rdx
	mov	eax, DWORD PTR 24[rbp]
	mov	edx, 64
	sub	edx, eax
	mov	rax, QWORD PTR 16[rbp]
	mov	ecx, edx
	sal	rax, cl
	or	rax, r8
	pop	rbp
	ret
	.seh_endproc
	.globl	rotl16
	.def	rotl16;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl16
rotl16:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	eax, ecx
	mov	DWORD PTR 24[rbp], edx
	mov	WORD PTR 16[rbp], ax
	movzx	edx, WORD PTR 16[rbp]
	mov	eax, DWORD PTR 24[rbp]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	r8d, eax
	movzx	edx, WORD PTR 16[rbp]
	mov	eax, 16
	sub	eax, DWORD PTR 24[rbp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, r8d
	pop	rbp
	ret
	.seh_endproc
	.globl	rotr16
	.def	rotr16;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr16
rotr16:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	eax, ecx
	mov	DWORD PTR 24[rbp], edx
	mov	WORD PTR 16[rbp], ax
	movzx	edx, WORD PTR 16[rbp]
	mov	eax, DWORD PTR 24[rbp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	r8d, eax
	movzx	edx, WORD PTR 16[rbp]
	mov	eax, 16
	sub	eax, DWORD PTR 24[rbp]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	or	eax, r8d
	pop	rbp
	ret
	.seh_endproc
	.globl	rotl8
	.def	rotl8;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl8
rotl8:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	eax, ecx
	mov	DWORD PTR 24[rbp], edx
	mov	BYTE PTR 16[rbp], al
	movzx	edx, BYTE PTR 16[rbp]
	mov	eax, DWORD PTR 24[rbp]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	r8d, eax
	movzx	edx, BYTE PTR 16[rbp]
	mov	eax, 8
	sub	eax, DWORD PTR 24[rbp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, r8d
	pop	rbp
	ret
	.seh_endproc
	.globl	rotr8
	.def	rotr8;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr8
rotr8:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	eax, ecx
	mov	DWORD PTR 24[rbp], edx
	mov	BYTE PTR 16[rbp], al
	movzx	edx, BYTE PTR 16[rbp]
	mov	eax, DWORD PTR 24[rbp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	r8d, eax
	movzx	edx, BYTE PTR 16[rbp]
	mov	eax, 8
	sub	eax, DWORD PTR 24[rbp]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	or	eax, r8d
	pop	rbp
	ret
	.seh_endproc
	.globl	bswap_16
	.def	bswap_16;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_16
bswap_16:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	eax, ecx
	mov	WORD PTR 16[rbp], ax
	mov	WORD PTR -2[rbp], 255
	movzx	eax, WORD PTR 16[rbp]
	movzx	edx, WORD PTR -2[rbp]
	sal	edx, 8
	and	eax, edx
	sar	eax, 8
	mov	ecx, eax
	movzx	edx, WORD PTR 16[rbp]
	movzx	eax, WORD PTR -2[rbp]
	and	eax, edx
	sal	eax, 8
	or	eax, ecx
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	bswap_32
	.def	bswap_32;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_32
bswap_32:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR -4[rbp], 255
	mov	eax, DWORD PTR -4[rbp]
	sal	eax, 24
	and	eax, DWORD PTR 16[rbp]
	shr	eax, 24
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	sal	eax, 16
	and	eax, DWORD PTR 16[rbp]
	shr	eax, 8
	or	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	sal	eax, 8
	and	eax, DWORD PTR 16[rbp]
	sal	eax, 8
	or	edx, eax
	mov	eax, DWORD PTR 16[rbp]
	and	eax, DWORD PTR -4[rbp]
	sal	eax, 24
	or	eax, edx
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	bswap_64
	.def	bswap_64;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_64
bswap_64:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR -8[rbp], 255
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 56
	and	rax, QWORD PTR 16[rbp]
	shr	rax, 56
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 48
	and	rax, QWORD PTR 16[rbp]
	shr	rax, 40
	or	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 40
	and	rax, QWORD PTR 16[rbp]
	shr	rax, 24
	or	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 32
	and	rax, QWORD PTR 16[rbp]
	shr	rax, 8
	or	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 24
	and	rax, QWORD PTR 16[rbp]
	sal	rax, 8
	or	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 16
	and	rax, QWORD PTR 16[rbp]
	sal	rax, 24
	or	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 8
	and	rax, QWORD PTR 16[rbp]
	sal	rax, 40
	or	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	and	rax, QWORD PTR -8[rbp]
	sal	rax, 56
	or	rax, rdx
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	ffs
	.def	ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	ffs
ffs:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR -4[rbp], 0
	jmp	.L396
.L399:
	mov	edx, DWORD PTR 16[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	and	eax, 1
	test	eax, eax
	je	.L397
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	jmp	.L398
.L397:
	add	DWORD PTR -4[rbp], 1
.L396:
	cmp	DWORD PTR -4[rbp], 31
	jbe	.L399
	mov	eax, 0
.L398:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	libiberty_ffs
	.def	libiberty_ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	libiberty_ffs
libiberty_ffs:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	lea	rbp, [rsp]
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	eax, ecx
	test	eax, eax
	jne	.L401
	mov	eax, 0
	jmp	.L402
.L401:
	mov	ebx, 1
	jmp	.L403
.L404:
	sar	eax
	add	ebx, 1
.L403:
	mov	edx, eax
	and	edx, 1
	test	edx, edx
	je	.L404
	mov	eax, ebx
.L402:
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	gl_isinff
	.def	gl_isinff;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinff
gl_isinff:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	movss	DWORD PTR 16[rbp], xmm0
	movss	xmm0, DWORD PTR .LC3[rip]
	comiss	xmm0, DWORD PTR 16[rbp]
	ja	.L406
	movss	xmm0, DWORD PTR 16[rbp]
	comiss	xmm0, DWORD PTR .LC4[rip]
	jbe	.L411
.L406:
	mov	eax, 1
	jmp	.L410
.L411:
	mov	eax, 0
.L410:
	pop	rbp
	ret
	.seh_endproc
	.globl	gl_isinfd
	.def	gl_isinfd;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfd
gl_isinfd:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	movsd	QWORD PTR 16[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC5[rip]
	comisd	xmm0, QWORD PTR 16[rbp]
	ja	.L413
	movsd	xmm0, QWORD PTR 16[rbp]
	comisd	xmm0, QWORD PTR .LC6[rip]
	jbe	.L418
.L413:
	mov	eax, 1
	jmp	.L417
.L418:
	mov	eax, 0
.L417:
	pop	rbp
	ret
	.seh_endproc
	.globl	gl_isinfl
	.def	gl_isinfl;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfl
gl_isinfl:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 24
	.seh_stackalloc	24
	lea	rbp, 16[rsp]
	.seh_setframe	rbp, 16
	.seh_endprologue
	mov	rbx, rcx
	fld	TBYTE PTR [rbx]
	fstp	TBYTE PTR -16[rbp]
	fld	TBYTE PTR -16[rbp]
	fld	TBYTE PTR .LC7[rip]
	fcomip	st, st(1)
	fstp	st(0)
	ja	.L420
	fld	TBYTE PTR .LC8[rip]
	fld	TBYTE PTR -16[rbp]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	.L425
.L420:
	mov	eax, 1
	jmp	.L424
.L425:
	mov	eax, 0
.L424:
	add	rsp, 24
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	_Qp_itoq
	.def	_Qp_itoq;	.scl	2;	.type	32;	.endef
	.seh_proc	_Qp_itoq
_Qp_itoq:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	DWORD PTR 24[rbp], edx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, DWORD PTR 24[rbp]
	movsd	QWORD PTR -8[rbp], xmm0
	fld	QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rbp]
	fstp	TBYTE PTR [rax]
	nop
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	ldexpf
	.def	ldexpf;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpf
ldexpf:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	movss	DWORD PTR 16[rbp], xmm0
	mov	DWORD PTR 24[rbp], edx
	movss	xmm0, DWORD PTR 16[rbp]
	ucomiss	xmm0, DWORD PTR 16[rbp]
	jp	.L428
	movss	xmm0, DWORD PTR 16[rbp]
	addss	xmm0, xmm0
	ucomiss	xmm0, DWORD PTR 16[rbp]
	jp	.L436
	ucomiss	xmm0, DWORD PTR 16[rbp]
	je	.L428
.L436:
	cmp	DWORD PTR 24[rbp], 0
	jns	.L430
	movss	xmm0, DWORD PTR .LC9[rip]
	jmp	.L431
.L430:
	movss	xmm0, DWORD PTR .LC10[rip]
.L431:
	movss	DWORD PTR -4[rbp], xmm0
.L434:
	mov	eax, DWORD PTR 24[rbp]
	and	eax, 1
	test	eax, eax
	je	.L432
	movss	xmm0, DWORD PTR 16[rbp]
	mulss	xmm0, DWORD PTR -4[rbp]
	movss	DWORD PTR 16[rbp], xmm0
.L432:
	mov	eax, DWORD PTR 24[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR 24[rbp], eax
	cmp	DWORD PTR 24[rbp], 0
	je	.L437
	movss	xmm0, DWORD PTR -4[rbp]
	mulss	xmm0, xmm0
	movss	DWORD PTR -4[rbp], xmm0
	jmp	.L434
.L437:
	nop
.L428:
	movss	xmm0, DWORD PTR 16[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	movsd	QWORD PTR 16[rbp], xmm0
	mov	DWORD PTR 24[rbp], edx
	movsd	xmm0, QWORD PTR 16[rbp]
	ucomisd	xmm0, QWORD PTR 16[rbp]
	jp	.L439
	movsd	xmm0, QWORD PTR 16[rbp]
	addsd	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR 16[rbp]
	jp	.L447
	ucomisd	xmm0, QWORD PTR 16[rbp]
	je	.L439
.L447:
	cmp	DWORD PTR 24[rbp], 0
	jns	.L441
	movsd	xmm0, QWORD PTR .LC11[rip]
	jmp	.L442
.L441:
	movsd	xmm0, QWORD PTR .LC12[rip]
.L442:
	movsd	QWORD PTR -8[rbp], xmm0
.L445:
	mov	eax, DWORD PTR 24[rbp]
	and	eax, 1
	test	eax, eax
	je	.L443
	movsd	xmm0, QWORD PTR 16[rbp]
	mulsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR 16[rbp], xmm0
.L443:
	mov	eax, DWORD PTR 24[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR 24[rbp], eax
	cmp	DWORD PTR 24[rbp], 0
	je	.L448
	movsd	xmm0, QWORD PTR -8[rbp]
	mulsd	xmm0, xmm0
	movsd	QWORD PTR -8[rbp], xmm0
	jmp	.L445
.L448:
	nop
.L439:
	movsd	xmm0, QWORD PTR 16[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	ldexpl
	.def	ldexpl;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpl
ldexpl:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	rbx, rdx
	fld	TBYTE PTR [rbx]
	fstp	TBYTE PTR -32[rbp]
	mov	DWORD PTR 48[rbp], r8d
	fld	TBYTE PTR -32[rbp]
	fld	TBYTE PTR -32[rbp]
	fucomip	st, st(1)
	fstp	st(0)
	jp	.L450
	fld	TBYTE PTR -32[rbp]
	fadd	st, st(0)
	fld	TBYTE PTR -32[rbp]
	fucomip	st, st(1)
	jp	.L460
	fld	TBYTE PTR -32[rbp]
	fucomip	st, st(1)
	fstp	st(0)
	je	.L450
	jmp	.L458
.L460:
	fstp	st(0)
.L458:
	cmp	DWORD PTR 48[rbp], 0
	jns	.L452
	fld	TBYTE PTR .LC13[rip]
	jmp	.L453
.L452:
	fld	TBYTE PTR .LC14[rip]
.L453:
	fstp	TBYTE PTR -16[rbp]
.L456:
	mov	eax, DWORD PTR 48[rbp]
	and	eax, 1
	test	eax, eax
	je	.L454
	fld	TBYTE PTR -32[rbp]
	fld	TBYTE PTR -16[rbp]
	fmulp	st(1), st
	fstp	TBYTE PTR -32[rbp]
.L454:
	mov	eax, DWORD PTR 48[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR 48[rbp], eax
	cmp	DWORD PTR 48[rbp], 0
	je	.L459
	fld	TBYTE PTR -16[rbp]
	fmul	st, st(0)
	fstp	TBYTE PTR -16[rbp]
	jmp	.L456
.L459:
	nop
.L450:
	mov	rax, QWORD PTR 32[rbp]
	fld	TBYTE PTR -32[rbp]
	fstp	TBYTE PTR [rax]
	mov	rax, QWORD PTR 32[rbp]
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	memxor
	.def	memxor;	.scl	2;	.type	32;	.endef
	.seh_proc	memxor
memxor:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L462
.L463:
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -8[rbp], rdx
	movzx	ecx, BYTE PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -16[rbp], rdx
	movzx	edx, BYTE PTR [rax]
	xor	edx, ecx
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR 32[rbp], 1
.L462:
	cmp	QWORD PTR 32[rbp], 0
	jne	.L463
	mov	rax, QWORD PTR 16[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	strncat
	.def	strncat;	.scl	2;	.type	32;	.endef
	.seh_proc	strncat
strncat:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	strlen
	mov	rdx, QWORD PTR 16[rbp]
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	jmp	.L466
.L468:
	add	QWORD PTR 24[rbp], 1
	add	QWORD PTR -8[rbp], 1
	sub	QWORD PTR 32[rbp], 1
.L466:
	cmp	QWORD PTR 32[rbp], 0
	je	.L467
	mov	rax, QWORD PTR 24[rbp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L468
.L467:
	cmp	QWORD PTR 32[rbp], 0
	jne	.L469
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR [rax], 0
.L469:
	mov	rax, QWORD PTR 16[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.globl	strnlen
	.def	strnlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strnlen
strnlen:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR -8[rbp], 0
	jmp	.L472
.L477:
	nop
	add	QWORD PTR -8[rbp], 1
.L472:
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR 24[rbp]
	jnb	.L473
	mov	rdx, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L477
.L473:
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	strpbrk
	.def	strpbrk;	.scl	2;	.type	32;	.endef
	.seh_proc	strpbrk
strpbrk:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	jmp	.L479
.L483:
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L480
.L482:
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -8[rbp], rdx
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L480
	mov	rax, QWORD PTR 16[rbp]
	jmp	.L481
.L480:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L482
	add	QWORD PTR 16[rbp], 1
.L479:
	mov	rax, QWORD PTR 16[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L483
	mov	eax, 0
.L481:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	strrchr
	.def	strrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strrchr
strrchr:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	rax, rcx
	mov	DWORD PTR 24[rbp], edx
	mov	QWORD PTR -8[rbp], 0
.L486:
	movzx	edx, BYTE PTR [rax]
	movsx	edx, dl
	cmp	DWORD PTR 24[rbp], edx
	jne	.L485
	mov	QWORD PTR -8[rbp], rax
.L485:
	mov	rdx, rax
	lea	rax, 1[rdx]
	movzx	edx, BYTE PTR [rdx]
	test	dl, dl
	jne	.L486
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	strstr
	.def	strstr;	.scl	2;	.type	32;	.endef
	.seh_proc	strstr
strstr:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	rcx, rax
	call	strlen
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L491
	mov	rax, QWORD PTR 16[rbp]
	jmp	.L490
.L493:
	mov	rcx, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	strncmp
	test	eax, eax
	jne	.L492
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L490
.L492:
	add	QWORD PTR -8[rbp], 1
.L491:
	mov	rax, QWORD PTR 24[rbp]
	movzx	eax, BYTE PTR [rax]
	movsx	edx, al
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, rax
	call	strchr
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jne	.L493
	mov	eax, 0
.L490:
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.globl	copysign
	.def	copysign;	.scl	2;	.type	32;	.endef
	.seh_proc	copysign
copysign:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	movsd	QWORD PTR 16[rbp], xmm0
	movsd	QWORD PTR 24[rbp], xmm1
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR 16[rbp]
	jbe	.L495
	movsd	xmm0, QWORD PTR 24[rbp]
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	ja	.L497
.L495:
	movsd	xmm0, QWORD PTR 16[rbp]
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	jbe	.L498
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR 24[rbp]
	jbe	.L498
.L497:
	movsd	xmm0, QWORD PTR 16[rbp]
	movq	xmm1, QWORD PTR .LC15[rip]
	xorpd	xmm0, xmm1
	jmp	.L501
.L498:
	movsd	xmm0, QWORD PTR 16[rbp]
.L501:
	pop	rbp
	ret
	.seh_endproc
	.globl	memmem
	.def	memmem;	.scl	2;	.type	32;	.endef
	.seh_proc	memmem
memmem:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	QWORD PTR 40[rbp], r9
	mov	rax, QWORD PTR 24[rbp]
	sub	rax, QWORD PTR 40[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	add	rax, rdx
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR 40[rbp], 0
	jne	.L505
	mov	rax, QWORD PTR 16[rbp]
	jmp	.L506
.L505:
	mov	rax, QWORD PTR 24[rbp]
	cmp	rax, QWORD PTR 40[rbp]
	setb	al
	movzx	eax, al
	test	eax, eax
	je	.L507
	mov	eax, 0
	jmp	.L506
.L507:
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L508
.L510:
	mov	rax, QWORD PTR -8[rbp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR 32[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L509
	mov	rax, QWORD PTR 40[rbp]
	lea	rcx, -1[rax]
	mov	rax, QWORD PTR 32[rbp]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 1
	mov	r8, rcx
	mov	rcx, rax
	call	memcmp
	test	eax, eax
	jne	.L509
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L506
.L509:
	add	QWORD PTR -8[rbp], 1
.L508:
	mov	rax, QWORD PTR -8[rbp]
	cmp	QWORD PTR -16[rbp], rax
	jnb	.L510
	mov	eax, 0
.L506:
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.globl	mempcpy
	.def	mempcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	mempcpy
mempcpy:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR 32[rbp], r8
	mov	rcx, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	rax, QWORD PTR 16[rbp]
	mov	r8, rcx
	mov	rcx, rax
	call	memcpy
	mov	rdx, QWORD PTR 32[rbp]
	add	rax, rdx
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.globl	frexp
	.def	frexp;	.scl	2;	.type	32;	.endef
	.seh_proc	frexp
frexp:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	movsd	QWORD PTR 16[rbp], xmm0
	mov	QWORD PTR 24[rbp], rdx
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR 16[rbp]
	jbe	.L514
	movsd	xmm0, QWORD PTR 16[rbp]
	movq	xmm1, QWORD PTR .LC15[rip]
	xorpd	xmm0, xmm1
	movsd	QWORD PTR 16[rbp], xmm0
	mov	DWORD PTR -4[rbp], 1
.L514:
	movsd	xmm0, QWORD PTR 16[rbp]
	movsd	xmm1, QWORD PTR .LC16[rip]
	comisd	xmm0, xmm1
	jb	.L531
	jmp	.L518
.L519:
	add	DWORD PTR -8[rbp], 1
	movsd	xmm0, QWORD PTR 16[rbp]
	movsd	xmm1, QWORD PTR .LC12[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR 16[rbp], xmm0
.L518:
	movsd	xmm0, QWORD PTR 16[rbp]
	movsd	xmm1, QWORD PTR .LC16[rip]
	comisd	xmm0, xmm1
	jnb	.L519
	jmp	.L520
.L531:
	movsd	xmm0, QWORD PTR .LC11[rip]
	comisd	xmm0, QWORD PTR 16[rbp]
	jbe	.L520
	pxor	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR 16[rbp]
	jp	.L523
	pxor	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR 16[rbp]
	je	.L520
	jmp	.L523
.L524:
	sub	DWORD PTR -8[rbp], 1
	movsd	xmm0, QWORD PTR 16[rbp]
	addsd	xmm0, xmm0
	movsd	QWORD PTR 16[rbp], xmm0
.L523:
	movsd	xmm0, QWORD PTR .LC11[rip]
	comisd	xmm0, QWORD PTR 16[rbp]
	ja	.L524
.L520:
	mov	rax, QWORD PTR 24[rbp]
	mov	edx, DWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	cmp	DWORD PTR -4[rbp], 0
	je	.L525
	movsd	xmm0, QWORD PTR 16[rbp]
	movq	xmm1, QWORD PTR .LC15[rip]
	xorpd	xmm0, xmm1
	movsd	QWORD PTR 16[rbp], xmm0
.L525:
	movsd	xmm0, QWORD PTR 16[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	QWORD PTR -8[rbp], 0
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -16[rbp], rax
	jmp	.L533
.L535:
	mov	rax, QWORD PTR -16[rbp]
	and	eax, 1
	test	rax, rax
	je	.L534
	mov	rax, QWORD PTR 24[rbp]
	add	QWORD PTR -8[rbp], rax
.L534:
	sal	QWORD PTR 24[rbp]
	shr	QWORD PTR -16[rbp]
.L533:
	cmp	QWORD PTR -16[rbp], 0
	jne	.L535
	mov	rax, QWORD PTR -8[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	udivmodsi4
	.def	udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	udivmodsi4
udivmodsi4:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	mov	QWORD PTR 32[rbp], r8
	mov	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -8[rbp], 0
	jmp	.L538
.L540:
	sal	DWORD PTR 24[rbp]
	sal	DWORD PTR -4[rbp]
.L538:
	mov	eax, DWORD PTR 24[rbp]
	cmp	eax, DWORD PTR 16[rbp]
	jnb	.L541
	cmp	DWORD PTR -4[rbp], 0
	je	.L541
	mov	eax, DWORD PTR 24[rbp]
	test	eax, eax
	jns	.L540
	jmp	.L541
.L543:
	mov	eax, DWORD PTR 16[rbp]
	cmp	eax, DWORD PTR 24[rbp]
	jb	.L542
	mov	eax, DWORD PTR 24[rbp]
	sub	DWORD PTR 16[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	or	DWORD PTR -8[rbp], eax
.L542:
	shr	DWORD PTR -4[rbp]
	shr	DWORD PTR 24[rbp]
.L541:
	cmp	DWORD PTR -4[rbp], 0
	jne	.L543
	cmp	QWORD PTR 32[rbp], 0
	je	.L544
	mov	eax, DWORD PTR 16[rbp]
	jmp	.L545
.L544:
	mov	eax, DWORD PTR -8[rbp]
.L545:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__clrsbqi2
	.def	__clrsbqi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbqi2
__clrsbqi2:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	eax, ecx
	mov	BYTE PTR 16[rbp], al
	cmp	BYTE PTR 16[rbp], 0
	jns	.L547
	not	BYTE PTR 16[rbp]
.L547:
	cmp	BYTE PTR 16[rbp], 0
	jne	.L548
	mov	eax, 7
	jmp	.L549
.L548:
	movsx	eax, BYTE PTR 16[rbp]
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
.L549:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__clrsbdi2
	.def	__clrsbdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbdi2
__clrsbdi2:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	cmp	QWORD PTR 16[rbp], 0
	jns	.L551
	not	QWORD PTR 16[rbp]
.L551:
	cmp	QWORD PTR 16[rbp], 0
	jne	.L552
	mov	eax, 63
	jmp	.L553
.L552:
	mov	rax, QWORD PTR 16[rbp]
	bsr	rax, rax
	xor	rax, 63
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
.L553:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__mulsi3
	.def	__mulsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3
__mulsi3:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	mov	DWORD PTR -4[rbp], 0
	jmp	.L555
.L557:
	mov	eax, DWORD PTR 16[rbp]
	and	eax, 1
	test	eax, eax
	je	.L556
	mov	eax, DWORD PTR 24[rbp]
	add	DWORD PTR -4[rbp], eax
.L556:
	shr	DWORD PTR 16[rbp]
	sal	DWORD PTR 24[rbp]
.L555:
	cmp	DWORD PTR 16[rbp], 0
	jne	.L557
	mov	eax, DWORD PTR -4[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__cmovd
	.def	__cmovd;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovd
__cmovd:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	DWORD PTR 32[rbp], r8d
	mov	eax, DWORD PTR 32[rbp]
	shr	eax, 3
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR 32[rbp]
	and	eax, -8
	mov	DWORD PTR -8[rbp], eax
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	jb	.L560
	mov	edx, DWORD PTR 32[rbp]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	cmp	rax, QWORD PTR -24[rbp]
	jnb	.L567
.L560:
	mov	DWORD PTR -4[rbp], 0
	jmp	.L562
.L563:
	mov	eax, DWORD PTR -4[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR 24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -4[rbp]
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR 16[rbp]
	add	rdx, rcx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rdx], rax
	add	DWORD PTR -4[rbp], 1
.L562:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jb	.L563
	jmp	.L564
.L565:
	mov	edx, DWORD PTR -8[rbp]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	add	DWORD PTR -8[rbp], 1
.L564:
	mov	eax, DWORD PTR 32[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jb	.L565
	jmp	.L566
.L568:
	mov	edx, DWORD PTR 32[rbp]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR 32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
.L567:
	mov	eax, DWORD PTR 32[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR 32[rbp], edx
	test	eax, eax
	jne	.L568
	nop
.L566:
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.globl	__cmovh
	.def	__cmovh;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovh
__cmovh:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	DWORD PTR 32[rbp], r8d
	mov	eax, DWORD PTR 32[rbp]
	shr	eax
	mov	DWORD PTR -8[rbp], eax
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	cmp	rax, QWORD PTR -24[rbp]
	jb	.L570
	mov	edx, DWORD PTR 32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	cmp	rax, QWORD PTR -16[rbp]
	jnb	.L576
.L570:
	mov	DWORD PTR -4[rbp], 0
	jmp	.L572
.L573:
	mov	eax, DWORD PTR -4[rbp]
	lea	rdx, [rax+rax]
	mov	rax, QWORD PTR 24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -4[rbp]
	lea	rcx, [rdx+rdx]
	mov	rdx, QWORD PTR 16[rbp]
	add	rdx, rcx
	movzx	eax, WORD PTR [rax]
	mov	WORD PTR [rdx], ax
	add	DWORD PTR -4[rbp], 1
.L572:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jb	.L573
	mov	eax, DWORD PTR 32[rbp]
	and	eax, 1
	test	eax, eax
	je	.L575
	mov	eax, DWORD PTR 32[rbp]
	sub	eax, 1
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR 32[rbp]
	sub	edx, 1
	mov	ecx, edx
	mov	rdx, QWORD PTR -16[rbp]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	jmp	.L575
.L577:
	mov	edx, DWORD PTR 32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR 32[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
.L576:
	mov	eax, DWORD PTR 32[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR 32[rbp], edx
	test	eax, eax
	jne	.L577
	nop
.L575:
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.globl	__cmovw
	.def	__cmovw;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovw
__cmovw:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	DWORD PTR 32[rbp], r8d
	mov	eax, DWORD PTR 32[rbp]
	shr	eax, 2
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR 32[rbp]
	and	eax, -4
	mov	DWORD PTR -8[rbp], eax
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	jb	.L579
	mov	edx, DWORD PTR 32[rbp]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	cmp	rax, QWORD PTR -24[rbp]
	jnb	.L586
.L579:
	mov	DWORD PTR -4[rbp], 0
	jmp	.L581
.L582:
	mov	eax, DWORD PTR -4[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -4[rbp]
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR 16[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -4[rbp], 1
.L581:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jb	.L582
	jmp	.L583
.L584:
	mov	edx, DWORD PTR -8[rbp]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	add	DWORD PTR -8[rbp], 1
.L583:
	mov	eax, DWORD PTR 32[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jb	.L584
	jmp	.L585
.L587:
	mov	edx, DWORD PTR 32[rbp]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR 32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
.L586:
	mov	eax, DWORD PTR 32[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR 32[rbp], edx
	test	eax, eax
	jne	.L587
	nop
.L585:
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.globl	__modi
	.def	__modi;	.scl	2;	.type	32;	.endef
	.seh_proc	__modi
__modi:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	mov	eax, DWORD PTR 16[rbp]
	cdq
	idiv	DWORD PTR 24[rbp]
	mov	eax, edx
	pop	rbp
	ret
	.seh_endproc
	.globl	__uitod
	.def	__uitod;	.scl	2;	.type	32;	.endef
	.seh_proc	__uitod
__uitod:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	test	rax, rax
	js	.L591
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	jmp	.L593
.L591:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdx
	addsd	xmm0, xmm0
.L593:
	pop	rbp
	ret
	.seh_endproc
	.globl	__uitof
	.def	__uitof;	.scl	2;	.type	32;	.endef
	.seh_proc	__uitof
__uitof:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	test	rax, rax
	js	.L595
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.L597
.L595:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.L597:
	pop	rbp
	ret
	.seh_endproc
	.globl	__ulltod
	.def	__ulltod;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltod
__ulltod:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	test	rax, rax
	js	.L599
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	jmp	.L601
.L599:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdx
	addsd	xmm0, xmm0
.L601:
	pop	rbp
	ret
	.seh_endproc
	.globl	__ulltof
	.def	__ulltof;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltof
__ulltof:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	test	rax, rax
	js	.L603
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.L605
.L603:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.L605:
	pop	rbp
	ret
	.seh_endproc
	.globl	__umodi
	.def	__umodi;	.scl	2;	.type	32;	.endef
	.seh_proc	__umodi
__umodi:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	mov	eax, DWORD PTR 16[rbp]
	mov	edx, 0
	div	DWORD PTR 24[rbp]
	mov	eax, edx
	pop	rbp
	ret
	.seh_endproc
	.globl	__clzhi2
	.def	__clzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzhi2
__clzhi2:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	eax, ecx
	mov	WORD PTR 16[rbp], ax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L609
.L612:
	movzx	edx, WORD PTR 16[rbp]
	mov	eax, 15
	sub	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	test	eax, eax
	jne	.L614
	add	DWORD PTR -4[rbp], 1
.L609:
	cmp	DWORD PTR -4[rbp], 15
	jle	.L612
	jmp	.L611
.L614:
	nop
.L611:
	mov	eax, DWORD PTR -4[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__ctzhi2
	.def	__ctzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzhi2
__ctzhi2:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	eax, ecx
	mov	WORD PTR 16[rbp], ax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L616
.L619:
	movzx	edx, WORD PTR 16[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	test	eax, eax
	jne	.L621
	add	DWORD PTR -4[rbp], 1
.L616:
	cmp	DWORD PTR -4[rbp], 15
	jle	.L619
	jmp	.L618
.L621:
	nop
.L618:
	mov	eax, DWORD PTR -4[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	movss	DWORD PTR 16[rbp], xmm0
	movss	xmm0, DWORD PTR 16[rbp]
	comiss	xmm0, DWORD PTR .LC17[rip]
	jb	.L627
	movss	xmm0, DWORD PTR 16[rbp]
	movss	xmm1, DWORD PTR .LC17[rip]
	subss	xmm0, xmm1
	cvttss2si	eax, xmm0
	add	eax, 32768
	jmp	.L625
.L627:
	movss	xmm0, DWORD PTR 16[rbp]
	cvttss2si	eax, xmm0
.L625:
	pop	rbp
	ret
	.seh_endproc
	.globl	__parityhi2
	.def	__parityhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__parityhi2
__parityhi2:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	eax, ecx
	mov	WORD PTR 16[rbp], ax
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L629
.L631:
	movzx	edx, WORD PTR 16[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	test	eax, eax
	je	.L630
	add	DWORD PTR -8[rbp], 1
.L630:
	add	DWORD PTR -4[rbp], 1
.L629:
	cmp	DWORD PTR -4[rbp], 15
	jle	.L631
	mov	eax, DWORD PTR -8[rbp]
	and	eax, 1
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__popcounthi2
	.def	__popcounthi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcounthi2
__popcounthi2:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	eax, ecx
	mov	WORD PTR 16[rbp], ax
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L634
.L636:
	movzx	edx, WORD PTR 16[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	test	eax, eax
	je	.L635
	add	DWORD PTR -8[rbp], 1
.L635:
	add	DWORD PTR -4[rbp], 1
.L634:
	cmp	DWORD PTR -4[rbp], 15
	jle	.L636
	mov	eax, DWORD PTR -8[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__mulsi3_iq2000
	.def	__mulsi3_iq2000;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_iq2000
__mulsi3_iq2000:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	mov	DWORD PTR -4[rbp], 0
	jmp	.L639
.L641:
	mov	eax, DWORD PTR 16[rbp]
	and	eax, 1
	test	eax, eax
	je	.L640
	mov	eax, DWORD PTR 24[rbp]
	add	DWORD PTR -4[rbp], eax
.L640:
	shr	DWORD PTR 16[rbp]
	sal	DWORD PTR 24[rbp]
.L639:
	cmp	DWORD PTR 16[rbp], 0
	jne	.L641
	mov	eax, DWORD PTR -4[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__mulsi3_lm32
	.def	__mulsi3_lm32;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_lm32
__mulsi3_lm32:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	mov	DWORD PTR -4[rbp], 0
	cmp	DWORD PTR 16[rbp], 0
	jne	.L646
	mov	eax, 0
	jmp	.L645
.L648:
	mov	eax, DWORD PTR 24[rbp]
	and	eax, 1
	test	eax, eax
	je	.L647
	mov	eax, DWORD PTR 16[rbp]
	add	DWORD PTR -4[rbp], eax
.L647:
	sal	DWORD PTR 16[rbp]
	shr	DWORD PTR 24[rbp]
.L646:
	cmp	DWORD PTR 24[rbp], 0
	jne	.L648
	mov	eax, DWORD PTR -4[rbp]
.L645:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__udivmodsi4
	.def	__udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4
__udivmodsi4:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	mov	DWORD PTR 32[rbp], r8d
	mov	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -8[rbp], 0
	jmp	.L650
.L652:
	sal	DWORD PTR 24[rbp]
	sal	DWORD PTR -4[rbp]
.L650:
	mov	eax, DWORD PTR 24[rbp]
	cmp	eax, DWORD PTR 16[rbp]
	jnb	.L653
	cmp	DWORD PTR -4[rbp], 0
	je	.L653
	mov	eax, DWORD PTR 24[rbp]
	test	eax, eax
	jns	.L652
	jmp	.L653
.L655:
	mov	eax, DWORD PTR 16[rbp]
	cmp	eax, DWORD PTR 24[rbp]
	jb	.L654
	mov	eax, DWORD PTR 24[rbp]
	sub	DWORD PTR 16[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	or	DWORD PTR -8[rbp], eax
.L654:
	shr	DWORD PTR -4[rbp]
	shr	DWORD PTR 24[rbp]
.L653:
	cmp	DWORD PTR -4[rbp], 0
	jne	.L655
	cmp	DWORD PTR 32[rbp], 0
	je	.L656
	mov	eax, DWORD PTR 16[rbp]
	jmp	.L657
.L656:
	mov	eax, DWORD PTR -8[rbp]
.L657:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__mspabi_cmpf
	.def	__mspabi_cmpf;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpf
__mspabi_cmpf:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	movss	DWORD PTR 16[rbp], xmm0
	movss	DWORD PTR 24[rbp], xmm1
	movss	xmm0, DWORD PTR 24[rbp]
	comiss	xmm0, DWORD PTR 16[rbp]
	jbe	.L666
	mov	eax, -1
	jmp	.L661
.L666:
	movss	xmm0, DWORD PTR 16[rbp]
	comiss	xmm0, DWORD PTR 24[rbp]
	jbe	.L667
	mov	eax, 1
	jmp	.L661
.L667:
	mov	eax, 0
.L661:
	pop	rbp
	ret
	.seh_endproc
	.globl	__mspabi_cmpd
	.def	__mspabi_cmpd;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpd
__mspabi_cmpd:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	movsd	QWORD PTR 16[rbp], xmm0
	movsd	QWORD PTR 24[rbp], xmm1
	movsd	xmm0, QWORD PTR 24[rbp]
	comisd	xmm0, QWORD PTR 16[rbp]
	jbe	.L676
	mov	eax, -1
	jmp	.L671
.L676:
	movsd	xmm0, QWORD PTR 16[rbp]
	comisd	xmm0, QWORD PTR 24[rbp]
	jbe	.L677
	mov	eax, 1
	jmp	.L671
.L677:
	mov	eax, 0
.L671:
	pop	rbp
	ret
	.seh_endproc
	.globl	__mspabi_mpysll
	.def	__mspabi_mpysll;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_mpysll
__mspabi_mpysll:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	mov	eax, DWORD PTR 16[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR 24[rbp]
	cdqe
	imul	rax, rdx
	pop	rbp
	ret
	.seh_endproc
	.globl	__mspabi_mpyull
	.def	__mspabi_mpyull;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_mpyull
__mspabi_mpyull:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	mov	edx, DWORD PTR 16[rbp]
	mov	eax, DWORD PTR 24[rbp]
	imul	rax, rdx
	pop	rbp
	ret
	.seh_endproc
	.globl	__mulhi3
	.def	__mulhi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulhi3
__mulhi3:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	cmp	DWORD PTR 24[rbp], 0
	jns	.L683
	neg	DWORD PTR 24[rbp]
	mov	DWORD PTR -8[rbp], 1
.L683:
	mov	BYTE PTR -1[rbp], 0
	jmp	.L684
.L687:
	mov	eax, DWORD PTR 24[rbp]
	and	eax, 1
	test	eax, eax
	je	.L685
	mov	eax, DWORD PTR 16[rbp]
	add	DWORD PTR -12[rbp], eax
.L685:
	sal	DWORD PTR 16[rbp]
	sar	DWORD PTR 24[rbp]
	movzx	eax, BYTE PTR -1[rbp]
	add	eax, 1
	mov	BYTE PTR -1[rbp], al
.L684:
	cmp	DWORD PTR 24[rbp], 0
	je	.L686
	movzx	eax, BYTE PTR -1[rbp]
	cmp	al, 31
	jbe	.L687
.L686:
	cmp	DWORD PTR -8[rbp], 0
	je	.L688
	mov	eax, DWORD PTR -12[rbp]
	neg	eax
	jmp	.L690
.L688:
	mov	eax, DWORD PTR -12[rbp]
.L690:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__divsi3
	.def	__divsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__divsi3
__divsi3:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	mov	DWORD PTR -4[rbp], 0
	cmp	DWORD PTR 16[rbp], 0
	jns	.L692
	neg	DWORD PTR 16[rbp]
	cmp	DWORD PTR -4[rbp], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR -4[rbp], eax
.L692:
	cmp	DWORD PTR 24[rbp], 0
	jns	.L693
	neg	DWORD PTR 24[rbp]
	cmp	DWORD PTR -4[rbp], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR -4[rbp], eax
.L693:
	mov	edx, DWORD PTR 24[rbp]
	mov	eax, DWORD PTR 16[rbp]
	mov	r8d, 0
	mov	ecx, eax
	call	__udivmodsi4
	mov	DWORD PTR -8[rbp], eax
	cmp	DWORD PTR -4[rbp], 0
	je	.L694
	neg	DWORD PTR -8[rbp]
.L694:
	mov	eax, DWORD PTR -8[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.globl	__modsi3
	.def	__modsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__modsi3
__modsi3:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	mov	DWORD PTR -4[rbp], 0
	cmp	DWORD PTR 16[rbp], 0
	jns	.L697
	neg	DWORD PTR 16[rbp]
	mov	DWORD PTR -4[rbp], 1
.L697:
	cmp	DWORD PTR 24[rbp], 0
	jns	.L698
	neg	DWORD PTR 24[rbp]
.L698:
	mov	edx, DWORD PTR 24[rbp]
	mov	eax, DWORD PTR 16[rbp]
	mov	r8d, 1
	mov	ecx, eax
	call	__udivmodsi4
	mov	DWORD PTR -8[rbp], eax
	cmp	DWORD PTR -4[rbp], 0
	je	.L699
	neg	DWORD PTR -8[rbp]
.L699:
	mov	eax, DWORD PTR -8[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.globl	__udivmodhi4
	.def	__udivmodhi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodhi4
__udivmodhi4:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	eax, edx
	mov	DWORD PTR 32[rbp], r8d
	mov	edx, ecx
	mov	WORD PTR 16[rbp], dx
	mov	WORD PTR 24[rbp], ax
	mov	WORD PTR -2[rbp], 1
	mov	WORD PTR -4[rbp], 0
	jmp	.L702
.L704:
	sal	WORD PTR 24[rbp]
	sal	WORD PTR -2[rbp]
.L702:
	movzx	eax, WORD PTR 24[rbp]
	cmp	ax, WORD PTR 16[rbp]
	jnb	.L705
	cmp	WORD PTR -2[rbp], 0
	je	.L705
	movzx	eax, WORD PTR 24[rbp]
	test	ax, ax
	jns	.L704
	jmp	.L705
.L707:
	movzx	eax, WORD PTR 16[rbp]
	cmp	ax, WORD PTR 24[rbp]
	jb	.L706
	movzx	eax, WORD PTR 24[rbp]
	sub	WORD PTR 16[rbp], ax
	movzx	eax, WORD PTR -2[rbp]
	or	WORD PTR -4[rbp], ax
.L706:
	shr	WORD PTR -2[rbp]
	shr	WORD PTR 24[rbp]
.L705:
	cmp	WORD PTR -2[rbp], 0
	jne	.L707
	cmp	DWORD PTR 32[rbp], 0
	je	.L708
	movzx	eax, WORD PTR 16[rbp]
	jmp	.L709
.L708:
	movzx	eax, WORD PTR -4[rbp]
.L709:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__udivmodsi4_libgcc
	.def	__udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	mov	DWORD PTR 32[rbp], r8d
	mov	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -8[rbp], 0
	jmp	.L711
.L713:
	sal	DWORD PTR 24[rbp]
	sal	DWORD PTR -4[rbp]
.L711:
	mov	eax, DWORD PTR 24[rbp]
	cmp	eax, DWORD PTR 16[rbp]
	jnb	.L714
	cmp	DWORD PTR -4[rbp], 0
	je	.L714
	mov	eax, DWORD PTR 24[rbp]
	test	eax, eax
	jns	.L713
	jmp	.L714
.L716:
	mov	eax, DWORD PTR 16[rbp]
	cmp	eax, DWORD PTR 24[rbp]
	jb	.L715
	mov	eax, DWORD PTR 24[rbp]
	sub	DWORD PTR 16[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	or	DWORD PTR -8[rbp], eax
.L715:
	shr	DWORD PTR -4[rbp]
	shr	DWORD PTR 24[rbp]
.L714:
	cmp	DWORD PTR -4[rbp], 0
	jne	.L716
	cmp	DWORD PTR 32[rbp], 0
	je	.L717
	mov	eax, DWORD PTR 16[rbp]
	jmp	.L718
.L717:
	mov	eax, DWORD PTR -8[rbp]
.L718:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__ashldi3
	.def	__ashldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashldi3
__ashldi3:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	DWORD PTR 24[rbp], edx
	mov	DWORD PTR -4[rbp], 32
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR 24[rbp]
	and	eax, DWORD PTR -4[rbp]
	test	eax, eax
	je	.L720
	mov	DWORD PTR -24[rbp], 0
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR 24[rbp]
	sub	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	DWORD PTR -20[rbp], eax
	jmp	.L721
.L720:
	cmp	DWORD PTR 24[rbp], 0
	jne	.L722
	mov	rax, QWORD PTR 16[rbp]
	jmp	.L724
.L722:
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR 24[rbp]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR 24[rbp]
	mov	ecx, eax
	sal	edx, cl
	mov	r8d, edx
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR 24[rbp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, r8d
	mov	DWORD PTR -20[rbp], eax
.L721:
	mov	rax, QWORD PTR -24[rbp]
.L724:
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.globl	__ashlti3
	.def	__ashlti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashlti3
__ashlti3:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 88
	.seh_stackalloc	88
	lea	rbp, 80[rsp]
	.seh_setframe	rbp, 80
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR [rbx]
	mov	rbx, QWORD PTR 8[rbx]
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rbx
	mov	DWORD PTR 40[rbp], edx
	mov	DWORD PTR -4[rbp], 64
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	eax, DWORD PTR 40[rbp]
	and	eax, DWORD PTR -4[rbp]
	test	eax, eax
	je	.L726
	mov	QWORD PTR -48[rbp], 0
	mov	rdx, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR 40[rbp]
	sub	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	sal	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR -40[rbp], rax
	jmp	.L727
.L726:
	cmp	DWORD PTR 40[rbp], 0
	jne	.L728
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	jmp	.L730
.L728:
	mov	rdx, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR 40[rbp]
	mov	ecx, eax
	sal	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, rax
	mov	eax, DWORD PTR 40[rbp]
	mov	ecx, eax
	sal	rdx, cl
	mov	r8, rdx
	mov	rdx, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR 40[rbp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	or	rax, r8
	mov	QWORD PTR -40[rbp], rax
.L727:
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
.L730:
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	movdqa	xmm0, XMMWORD PTR -80[rbp]
	add	rsp, 88
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	DWORD PTR 24[rbp], edx
	mov	DWORD PTR -4[rbp], 32
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR 24[rbp]
	and	eax, DWORD PTR -4[rbp]
	test	eax, eax
	je	.L732
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR -20[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR 24[rbp]
	sub	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR -24[rbp], eax
	jmp	.L733
.L732:
	cmp	DWORD PTR 24[rbp], 0
	jne	.L734
	mov	rax, QWORD PTR 16[rbp]
	jmp	.L736
.L734:
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR 24[rbp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR 24[rbp]
	mov	ecx, eax
	sal	edx, cl
	mov	r8d, edx
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR 24[rbp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, r8d
	mov	DWORD PTR -24[rbp], eax
.L733:
	mov	rax, QWORD PTR -24[rbp]
.L736:
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.globl	__ashrti3
	.def	__ashrti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrti3
__ashrti3:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 88
	.seh_stackalloc	88
	lea	rbp, 80[rsp]
	.seh_setframe	rbp, 80
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR [rbx]
	mov	rbx, QWORD PTR 8[rbx]
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rbx
	mov	DWORD PTR 40[rbp], edx
	mov	DWORD PTR -4[rbp], 64
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	eax, DWORD PTR 40[rbp]
	and	eax, DWORD PTR -4[rbp]
	test	eax, eax
	je	.L738
	mov	rdx, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	mov	ecx, eax
	sar	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR -40[rbp], rax
	mov	rdx, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 40[rbp]
	sub	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	sar	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR -48[rbp], rax
	jmp	.L739
.L738:
	cmp	DWORD PTR 40[rbp], 0
	jne	.L740
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	jmp	.L742
.L740:
	mov	rdx, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 40[rbp]
	mov	ecx, eax
	sar	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR 40[rbp]
	mov	ecx, eax
	sal	rdx, cl
	mov	r8, rdx
	mov	rdx, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR 40[rbp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	or	rax, r8
	mov	QWORD PTR -48[rbp], rax
.L739:
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
.L742:
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	movdqa	xmm0, XMMWORD PTR -80[rbp]
	add	rsp, 88
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	__bswapdi2
	.def	__bswapdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__bswapdi2
__bswapdi2:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	shr	rax, 56
	mov	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	shr	rax, 40
	and	eax, 65280
	or	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	shr	rax, 24
	and	eax, 16711680
	or	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	shr	rax, 8
	and	eax, 4278190080
	or	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	sal	rax, 8
	mov	rcx, rax
	movabs	rax, 1095216660480
	and	rax, rcx
	or	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	sal	rax, 24
	mov	rcx, rax
	movabs	rax, 280375465082880
	and	rax, rcx
	or	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	sal	rax, 40
	mov	rcx, rax
	movabs	rax, 71776119061217280
	and	rax, rcx
	or	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	sal	rax, 56
	or	rax, rdx
	pop	rbp
	ret
	.seh_endproc
	.globl	__bswapsi2
	.def	__bswapsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__bswapsi2
__bswapsi2:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	shr	eax, 24
	mov	edx, eax
	mov	eax, DWORD PTR 16[rbp]
	shr	eax, 8
	and	eax, 65280
	or	edx, eax
	mov	eax, DWORD PTR 16[rbp]
	sal	eax, 8
	and	eax, 16711680
	or	edx, eax
	mov	eax, DWORD PTR 16[rbp]
	sal	eax, 24
	or	eax, edx
	pop	rbp
	ret
	.seh_endproc
	.globl	__clzsi2
	.def	__clzsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzsi2
__clzsi2:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], 65535
	ja	.L748
	mov	eax, 16
	jmp	.L749
.L748:
	mov	eax, 0
.L749:
	mov	DWORD PTR -8[rbp], eax
	mov	eax, 16
	sub	eax, DWORD PTR -8[rbp]
	mov	ecx, eax
	shr	DWORD PTR -4[rbp], cl
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 65280
	test	eax, eax
	jne	.L750
	mov	eax, 8
	jmp	.L751
.L750:
	mov	eax, 0
.L751:
	mov	DWORD PTR -8[rbp], eax
	mov	eax, 8
	sub	eax, DWORD PTR -8[rbp]
	mov	ecx, eax
	shr	DWORD PTR -4[rbp], cl
	mov	eax, DWORD PTR -8[rbp]
	add	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 240
	test	eax, eax
	jne	.L752
	mov	eax, 4
	jmp	.L753
.L752:
	mov	eax, 0
.L753:
	mov	DWORD PTR -8[rbp], eax
	mov	eax, 4
	sub	eax, DWORD PTR -8[rbp]
	mov	ecx, eax
	shr	DWORD PTR -4[rbp], cl
	mov	eax, DWORD PTR -8[rbp]
	add	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 12
	test	eax, eax
	jne	.L754
	mov	eax, 2
	jmp	.L755
.L754:
	mov	eax, 0
.L755:
	mov	DWORD PTR -8[rbp], eax
	mov	eax, 2
	sub	eax, DWORD PTR -8[rbp]
	mov	ecx, eax
	shr	DWORD PTR -4[rbp], cl
	mov	eax, DWORD PTR -8[rbp]
	add	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 2
	test	eax, eax
	sete	al
	movzx	eax, al
	mov	edx, eax
	mov	eax, 2
	sub	eax, DWORD PTR -4[rbp]
	imul	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__clzti2
	.def	__clzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzti2
__clzti2:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	lea	rbp, 48[rsp]
	.seh_setframe	rbp, 48
	.seh_endprologue
	mov	rbx, rcx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	test	rax, rax
	sete	al
	movzx	eax, al
	neg	eax
	cdqe
	mov	QWORD PTR -8[rbp], rax
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	not	rax
	and	rax, rdx
	mov	rcx, rax
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -8[rbp]
	and	rax, rdx
	or	rax, rcx
	bsr	rax, rax
	xor	rax, 63
	mov	edx, eax
	mov	rax, QWORD PTR -8[rbp]
	and	eax, 64
	add	eax, edx
	add	rsp, 56
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	__cmpdi2
	.def	__cmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpdi2
__cmpdi2:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cmp	edx, eax
	jge	.L760
	mov	eax, 0
	jmp	.L765
.L760:
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cmp	edx, eax
	jle	.L762
	mov	eax, 2
	jmp	.L765
.L762:
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jnb	.L763
	mov	eax, 0
	jmp	.L765
.L763:
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, DWORD PTR -16[rbp]
	cmp	edx, eax
	jnb	.L764
	mov	eax, 2
	jmp	.L765
.L764:
	mov	eax, 1
.L765:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__aeabi_lcmp
	.def	__aeabi_lcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_lcmp
__aeabi_lcmp:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rdx, QWORD PTR 24[rbp]
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	__cmpdi2
	sub	eax, 1
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.globl	__cmpti2
	.def	__cmpti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpti2
__cmpti2:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	lea	rbp, 64[rsp]
	.seh_setframe	rbp, 64
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR [rbx]
	mov	rbx, QWORD PTR 8[rbx]
	mov	QWORD PTR -48[rbp], rcx
	mov	QWORD PTR -40[rbp], rbx
	mov	rbx, rdx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	cmp	rdx, rax
	jge	.L769
	mov	eax, 0
	jmp	.L774
.L769:
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	cmp	rdx, rax
	jle	.L771
	mov	eax, 2
	jmp	.L774
.L771:
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -32[rbp]
	cmp	rdx, rax
	jnb	.L772
	mov	eax, 0
	jmp	.L774
.L772:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	cmp	rdx, rax
	jnb	.L773
	mov	eax, 2
	jmp	.L774
.L773:
	mov	eax, 1
.L774:
	add	rsp, 72
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	__ctzsi2
	.def	__ctzsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzsi2
__ctzsi2:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	movzx	eax, ax
	test	eax, eax
	jne	.L776
	mov	eax, 16
	jmp	.L777
.L776:
	mov	eax, 0
.L777:
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	ecx, eax
	shr	DWORD PTR -4[rbp], cl
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	movzx	eax, al
	test	eax, eax
	jne	.L778
	mov	eax, 8
	jmp	.L779
.L778:
	mov	eax, 0
.L779:
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	ecx, eax
	shr	DWORD PTR -4[rbp], cl
	mov	eax, DWORD PTR -8[rbp]
	add	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 15
	test	eax, eax
	jne	.L780
	mov	eax, 4
	jmp	.L781
.L780:
	mov	eax, 0
.L781:
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	ecx, eax
	shr	DWORD PTR -4[rbp], cl
	mov	eax, DWORD PTR -8[rbp]
	add	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 3
	test	eax, eax
	jne	.L782
	mov	eax, 2
	jmp	.L783
.L782:
	mov	eax, 0
.L783:
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	ecx, eax
	shr	DWORD PTR -4[rbp], cl
	and	DWORD PTR -4[rbp], 3
	mov	eax, DWORD PTR -8[rbp]
	add	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	not	eax
	and	eax, 1
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	shr	eax
	mov	edx, 2
	sub	edx, eax
	mov	eax, ecx
	neg	eax
	and	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__ctzti2
	.def	__ctzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzti2
__ctzti2:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	lea	rbp, 48[rsp]
	.seh_setframe	rbp, 48
	.seh_endprologue
	mov	rbx, rcx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	test	rax, rax
	sete	al
	movzx	eax, al
	neg	eax
	cdqe
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	and	rax, QWORD PTR -8[rbp]
	mov	rcx, rax
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -8[rbp]
	not	rax
	and	rax, rdx
	or	rax, rcx
	rep bsf	rax, rax
	mov	edx, eax
	mov	rax, QWORD PTR -8[rbp]
	and	eax, 64
	add	eax, edx
	add	rsp, 56
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	__ffsti2
	.def	__ffsti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ffsti2
__ffsti2:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	rbx, rcx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	test	rax, rax
	jne	.L788
	mov	rax, QWORD PTR -8[rbp]
	test	rax, rax
	jne	.L789
	mov	eax, 0
	jmp	.L791
.L789:
	mov	rax, QWORD PTR -8[rbp]
	rep bsf	rax, rax
	add	eax, 65
	jmp	.L791
.L788:
	mov	rax, QWORD PTR -16[rbp]
	rep bsf	rax, rax
	add	eax, 1
.L791:
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	__lshrdi3
	.def	__lshrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrdi3
__lshrdi3:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	DWORD PTR 24[rbp], edx
	mov	DWORD PTR -4[rbp], 32
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR 24[rbp]
	and	eax, DWORD PTR -4[rbp]
	test	eax, eax
	je	.L793
	mov	DWORD PTR -20[rbp], 0
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR 24[rbp]
	sub	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR -24[rbp], eax
	jmp	.L794
.L793:
	cmp	DWORD PTR 24[rbp], 0
	jne	.L795
	mov	rax, QWORD PTR 16[rbp]
	jmp	.L797
.L795:
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR 24[rbp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR -20[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR 24[rbp]
	mov	ecx, eax
	sal	edx, cl
	mov	r8d, edx
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR 24[rbp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, r8d
	mov	DWORD PTR -24[rbp], eax
.L794:
	mov	rax, QWORD PTR -24[rbp]
.L797:
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.globl	__lshrti3
	.def	__lshrti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrti3
__lshrti3:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 88
	.seh_stackalloc	88
	lea	rbp, 80[rsp]
	.seh_setframe	rbp, 80
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR [rbx]
	mov	rbx, QWORD PTR 8[rbx]
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rbx
	mov	DWORD PTR 40[rbp], edx
	mov	DWORD PTR -4[rbp], 64
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	eax, DWORD PTR 40[rbp]
	and	eax, DWORD PTR -4[rbp]
	test	eax, eax
	je	.L799
	mov	QWORD PTR -40[rbp], 0
	mov	rdx, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 40[rbp]
	sub	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR -48[rbp], rax
	jmp	.L800
.L799:
	cmp	DWORD PTR 40[rbp], 0
	jne	.L801
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	jmp	.L803
.L801:
	mov	rdx, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 40[rbp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR -40[rbp], rax
	mov	rdx, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR 40[rbp]
	mov	ecx, eax
	sal	rdx, cl
	mov	r8, rdx
	mov	rdx, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR 40[rbp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	or	rax, r8
	mov	QWORD PTR -48[rbp], rax
.L800:
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
.L803:
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	movdqa	xmm0, XMMWORD PTR -80[rbp]
	add	rsp, 88
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	__muldsi3
	.def	__muldsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldsi3
__muldsi3:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	mov	DWORD PTR -4[rbp], 16
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, -1
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR 16[rbp]
	and	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR 24[rbp]
	and	eax, DWORD PTR -8[rbp]
	imul	eax, edx
	mov	DWORD PTR -24[rbp], eax
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	and	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, DWORD PTR 16[rbp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR 24[rbp]
	and	eax, DWORD PTR -8[rbp]
	imul	eax, edx
	add	DWORD PTR -12[rbp], eax
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -12[rbp]
	and	eax, DWORD PTR -8[rbp]
	mov	r8d, eax
	mov	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	sal	r8d, cl
	mov	eax, r8d
	add	eax, edx
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR -20[rbp], eax
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	and	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, DWORD PTR 24[rbp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR 16[rbp]
	and	eax, DWORD PTR -8[rbp]
	imul	eax, edx
	add	DWORD PTR -12[rbp], eax
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -12[rbp]
	and	eax, DWORD PTR -8[rbp]
	mov	r8d, eax
	mov	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	sal	r8d, cl
	mov	eax, r8d
	add	eax, edx
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	r8d, eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	add	eax, r8d
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	r9d, eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, DWORD PTR 16[rbp]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR -4[rbp]
	mov	r8d, DWORD PTR 24[rbp]
	mov	ecx, eax
	shr	r8d, cl
	mov	eax, r8d
	imul	eax, edx
	add	eax, r9d
	mov	DWORD PTR -20[rbp], eax
	mov	rax, QWORD PTR -24[rbp]
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.globl	__muldi3_compiler_rt
	.def	__muldi3_compiler_rt;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3_compiler_rt
__muldi3_compiler_rt:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	ecx, eax
	call	__muldsi3
	mov	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -20[rbp]
	mov	r8d, eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	imul	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	mov	ecx, DWORD PTR -12[rbp]
	imul	eax, ecx
	add	eax, edx
	add	eax, r8d
	mov	DWORD PTR -20[rbp], eax
	mov	rax, QWORD PTR -24[rbp]
	add	rsp, 64
	pop	rbp
	ret
	.seh_endproc
	.globl	__mulddi3
	.def	__mulddi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulddi3
__mulddi3:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	DWORD PTR -4[rbp], 32
	mov	eax, DWORD PTR -4[rbp]
	mov	rdx, -1
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR 16[rbp]
	and	rax, QWORD PTR -16[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR 24[rbp]
	and	rax, QWORD PTR -16[rbp]
	imul	rax, rdx
	mov	QWORD PTR -48[rbp], rax
	mov	rdx, QWORD PTR -48[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	and	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	eax, DWORD PTR -4[rbp]
	mov	rdx, QWORD PTR 16[rbp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, QWORD PTR 24[rbp]
	and	rax, QWORD PTR -16[rbp]
	imul	rax, rdx
	add	QWORD PTR -24[rbp], rax
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -24[rbp]
	and	rax, QWORD PTR -16[rbp]
	mov	r8, rax
	mov	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	sal	r8, cl
	mov	rax, r8
	add	rax, rdx
	mov	QWORD PTR -48[rbp], rax
	mov	eax, DWORD PTR -4[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR -40[rbp], rax
	mov	rdx, QWORD PTR -48[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	and	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	eax, DWORD PTR -4[rbp]
	mov	rdx, QWORD PTR 24[rbp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, QWORD PTR 16[rbp]
	and	rax, QWORD PTR -16[rbp]
	imul	rax, rdx
	add	QWORD PTR -24[rbp], rax
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -24[rbp]
	and	rax, QWORD PTR -16[rbp]
	mov	r8, rax
	mov	eax, DWORD PTR -4[rbp]
	mov	ecx, eax
	sal	r8, cl
	mov	rax, r8
	add	rax, rdx
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	r8, rax
	mov	eax, DWORD PTR -4[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	add	rax, r8
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	r9, rax
	mov	eax, DWORD PTR -4[rbp]
	mov	rdx, QWORD PTR 16[rbp]
	mov	ecx, eax
	shr	rdx, cl
	mov	eax, DWORD PTR -4[rbp]
	mov	r8, QWORD PTR 24[rbp]
	mov	ecx, eax
	shr	r8, cl
	mov	rax, r8
	imul	rax, rdx
	add	rax, r9
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	movdqa	xmm0, XMMWORD PTR -64[rbp]
	add	rsp, 64
	pop	rbp
	ret
	.seh_endproc
	.globl	__multi3
	.def	__multi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__multi3
__multi3:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 136
	.seh_stackalloc	136
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR [rbx]
	mov	rbx, QWORD PTR 8[rbx]
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rbx
	mov	rbx, rdx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rax, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, rax
	call	__mulddi3
	movaps	XMMWORD PTR -48[rbp], xmm0
	mov	rax, QWORD PTR -40[rbp]
	mov	r8, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	imul	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	imul	rax, rcx
	add	rax, rdx
	add	rax, r8
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR -96[rbp], rax
	mov	QWORD PTR -88[rbp], rdx
	movdqa	xmm0, XMMWORD PTR -96[rbp]
	add	rsp, 136
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	__negdi2
	.def	__negdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__negdi2
__negdi2:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	neg	rax
	pop	rbp
	ret
	.seh_endproc
	.globl	__negti2
	.def	__negti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__negti2
__negti2:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	rbx, rcx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	neg	rax
	adc	rdx, 0
	neg	rdx
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	movdqa	xmm0, XMMWORD PTR -32[rbp]
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	__paritydi2
	.def	__paritydi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__paritydi2
__paritydi2:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -12[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -16[rbp]
	xor	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	shr	eax, 16
	xor	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	shr	eax, 8
	xor	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	shr	eax, 4
	xor	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__parityti2
	.def	__parityti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__parityti2
__parityti2:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	lea	rbp, 64[rsp]
	.seh_setframe	rbp, 64
	.seh_endprologue
	mov	rbx, rcx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	xor	rax, rdx
	mov	QWORD PTR -40[rbp], rax
	mov	eax, DWORD PTR -36[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -40[rbp]
	xor	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	shr	eax, 16
	xor	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	shr	eax, 8
	xor	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	shr	eax, 4
	xor	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	add	rsp, 72
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	__paritysi2
	.def	__paritysi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__paritysi2
__paritysi2:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	shr	eax, 16
	xor	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	shr	eax, 8
	xor	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	shr	eax, 4
	xor	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__popcountdi2
	.def	__popcountdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountdi2
__popcountdi2:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	shr	rax
	mov	rdx, rax
	movabs	rax, 6148914691236517205
	and	rax, rdx
	sub	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	shr	rax, 2
	mov	rdx, rax
	movabs	rax, 3689348814741910323
	and	rdx, rax
	movabs	rax, 3689348814741910323
	and	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	shr	rax, 4
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	add	rdx, rax
	movabs	rax, 1085102592571150095
	and	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -8[rbp]
	shr	rax, 32
	add	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	shr	eax, 16
	add	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	and	eax, 127
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__popcountsi2
	.def	__popcountsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountsi2
__popcountsi2:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	eax, DWORD PTR 16[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	shr	eax
	and	eax, 1431655765
	sub	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	shr	eax, 2
	and	eax, 858993459
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 858993459
	add	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	shr	eax, 4
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	and	eax, 252645135
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	shr	eax, 16
	add	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	and	eax, 63
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__popcountti2
	.def	__popcountti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountti2
__popcountti2:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	lea	rbp, 48[rsp]
	.seh_setframe	rbp, 48
	.seh_endprologue
	mov	rbx, rcx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	shrd	rax, rdx, 1
	shr	rdx
	movabs	rcx, 6148914691236517205
	mov	rbx, rcx
	and	rax, rcx
	and	rdx, rbx
	sub	QWORD PTR -16[rbp], rax
	sbb	QWORD PTR -8[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	shrd	rax, rdx, 2
	shr	rdx, 2
	movabs	rcx, 3689348814741910323
	mov	rbx, rcx
	and	rcx, rax
	and	rbx, rdx
	movabs	rax, 3689348814741910323
	mov	rdx, rax
	and	rax, QWORD PTR -16[rbp]
	and	rdx, QWORD PTR -8[rbp]
	add	rax, rcx
	adc	rdx, rbx
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	shrd	rax, rdx, 4
	shr	rdx, 4
	mov	rcx, QWORD PTR -16[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	add	rax, rcx
	adc	rdx, rbx
	movabs	rcx, 1085102592571150095
	mov	rbx, rcx
	and	rax, rcx
	and	rdx, rbx
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, rdx
	xor	edx, edx
	add	rax, rcx
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	shr	rax, 32
	add	eax, edx
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	shr	eax, 16
	add	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR -28[rbp]
	add	eax, edx
	movzx	eax, al
	add	rsp, 56
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	__powidf2
	.def	__powidf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powidf2
__powidf2:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	movsd	QWORD PTR 16[rbp], xmm0
	mov	DWORD PTR 24[rbp], edx
	mov	eax, DWORD PTR 24[rbp]
	shr	eax, 31
	movzx	eax, al
	mov	DWORD PTR -12[rbp], eax
	movsd	xmm0, QWORD PTR .LC16[rip]
	movsd	QWORD PTR -8[rbp], xmm0
.L832:
	mov	eax, DWORD PTR 24[rbp]
	and	eax, 1
	test	eax, eax
	je	.L829
	movsd	xmm0, QWORD PTR -8[rbp]
	mulsd	xmm0, QWORD PTR 16[rbp]
	movsd	QWORD PTR -8[rbp], xmm0
.L829:
	mov	eax, DWORD PTR 24[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR 24[rbp], eax
	cmp	DWORD PTR 24[rbp], 0
	je	.L837
	movsd	xmm0, QWORD PTR 16[rbp]
	mulsd	xmm0, xmm0
	movsd	QWORD PTR 16[rbp], xmm0
	jmp	.L832
.L837:
	nop
	cmp	DWORD PTR -12[rbp], 0
	je	.L833
	movsd	xmm0, QWORD PTR .LC16[rip]
	divsd	xmm0, QWORD PTR -8[rbp]
	jmp	.L835
.L833:
	movsd	xmm0, QWORD PTR -8[rbp]
.L835:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__powisf2
	.def	__powisf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powisf2
__powisf2:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	movss	DWORD PTR 16[rbp], xmm0
	mov	DWORD PTR 24[rbp], edx
	mov	eax, DWORD PTR 24[rbp]
	shr	eax, 31
	movzx	eax, al
	mov	DWORD PTR -8[rbp], eax
	movss	xmm0, DWORD PTR .LC18[rip]
	movss	DWORD PTR -4[rbp], xmm0
.L842:
	mov	eax, DWORD PTR 24[rbp]
	and	eax, 1
	test	eax, eax
	je	.L839
	movss	xmm0, DWORD PTR -4[rbp]
	mulss	xmm0, DWORD PTR 16[rbp]
	movss	DWORD PTR -4[rbp], xmm0
.L839:
	mov	eax, DWORD PTR 24[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR 24[rbp], eax
	cmp	DWORD PTR 24[rbp], 0
	je	.L847
	movss	xmm0, DWORD PTR 16[rbp]
	mulss	xmm0, xmm0
	movss	DWORD PTR 16[rbp], xmm0
	jmp	.L842
.L847:
	nop
	cmp	DWORD PTR -8[rbp], 0
	je	.L843
	movss	xmm0, DWORD PTR .LC18[rip]
	divss	xmm0, DWORD PTR -4[rbp]
	jmp	.L845
.L843:
	movss	xmm0, DWORD PTR -4[rbp]
.L845:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__ucmpdi2
	.def	__ucmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpdi2
__ucmpdi2:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR 24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cmp	edx, eax
	jnb	.L849
	mov	eax, 0
	jmp	.L854
.L849:
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, DWORD PTR -12[rbp]
	cmp	edx, eax
	jnb	.L851
	mov	eax, 2
	jmp	.L854
.L851:
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -16[rbp]
	cmp	edx, eax
	jnb	.L852
	mov	eax, 0
	jmp	.L854
.L852:
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, DWORD PTR -16[rbp]
	cmp	edx, eax
	jnb	.L853
	mov	eax, 2
	jmp	.L854
.L853:
	mov	eax, 1
.L854:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__aeabi_ulcmp
	.def	__aeabi_ulcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_ulcmp
__aeabi_ulcmp:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rdx, QWORD PTR 24[rbp]
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	call	__ucmpdi2
	sub	eax, 1
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.globl	__ucmpti2
	.def	__ucmpti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpti2
__ucmpti2:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	lea	rbp, 64[rsp]
	.seh_setframe	rbp, 64
	.seh_endprologue
	mov	rbx, rcx
	mov	rcx, QWORD PTR [rbx]
	mov	rbx, QWORD PTR 8[rbx]
	mov	QWORD PTR -48[rbp], rcx
	mov	QWORD PTR -40[rbp], rbx
	mov	rbx, rdx
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	cmp	rdx, rax
	jnb	.L858
	mov	eax, 0
	jmp	.L863
.L858:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	cmp	rdx, rax
	jnb	.L860
	mov	eax, 2
	jmp	.L863
.L860:
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -32[rbp]
	cmp	rdx, rax
	jnb	.L861
	mov	eax, 0
	jmp	.L863
.L861:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	cmp	rdx, rax
	jnb	.L862
	mov	eax, 2
	jmp	.L863
.L862:
	mov	eax, 1
.L863:
	add	rsp, 72
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
.lcomm s.0,7,1
	.section .rdata,"dr"
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
