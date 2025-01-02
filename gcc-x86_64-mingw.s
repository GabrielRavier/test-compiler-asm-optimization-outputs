	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	make_ti
	.def	make_ti;	.scl	2;	.type	32;	.endef
	.seh_proc	make_ti
make_ti:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	xor	r10d, r10d
	mov	QWORD PTR 8[rsp], rcx
	mov	r9, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], r10
	mov	QWORD PTR 8[rsp], r9
	mov	QWORD PTR [rsp], rdx
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.p2align 4
	.globl	make_tu
	.def	make_tu;	.scl	2;	.type	32;	.endef
	.seh_proc	make_tu
make_tu:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	xor	r10d, r10d
	mov	QWORD PTR 8[rsp], rcx
	mov	r9, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], r10
	mov	QWORD PTR 8[rsp], r9
	mov	QWORD PTR [rsp], rdx
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.p2align 4
	.globl	memmove
	.def	memmove;	.scl	2;	.type	32;	.endef
	.seh_proc	memmove
memmove:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r9, rdx
	cmp	rdx, rcx
	jnb	.L5
	test	r8, r8
	je	.L6
	.p2align 5
	.p2align 4
	.p2align 3
.L7:
	movzx	eax, BYTE PTR -1[r9+r8]
	mov	BYTE PTR -1[rcx+r8], al
	sub	r8, 1
	jne	.L7
.L6:
	mov	rax, rcx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	cmp	rcx, rdx
	je	.L6
	test	r8, r8
	je	.L6
	lea	rax, -1[r8]
	cmp	rax, 6
	jbe	.L18
	lea	r10, 1[rdx]
	mov	rdx, rcx
	sub	rdx, r10
	cmp	rdx, 14
	jbe	.L18
	cmp	rax, 14
	jbe	.L19
	mov	rdx, r8
	xor	eax, eax
	and	rdx, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L10:
	movdqu	xmm0, XMMWORD PTR [r9+rax]
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rdx, rax
	jne	.L10
	mov	rax, r8
	lea	r11, [r9+rdx]
	lea	r10, [rcx+rdx]
	sub	rax, rdx
	cmp	rdx, r8
	je	.L6
	lea	rbx, -1[rax]
	mov	r8, rax
	cmp	rbx, 6
	jbe	.L13
.L9:
	mov	r9, QWORD PTR [r9+rdx]
	mov	QWORD PTR [rcx+rdx], r9
	mov	rdx, r8
	and	rdx, -8
	add	r11, rdx
	add	r10, rdx
	sub	rax, rdx
	and	r8d, 7
	je	.L6
.L13:
	movzx	edx, BYTE PTR [r11]
	mov	BYTE PTR [r10], dl
	cmp	rax, 1
	je	.L6
	movzx	edx, BYTE PTR 1[r11]
	mov	BYTE PTR 1[r10], dl
	cmp	rax, 2
	je	.L6
	movzx	edx, BYTE PTR 2[r11]
	mov	BYTE PTR 2[r10], dl
	cmp	rax, 3
	je	.L6
	movzx	edx, BYTE PTR 3[r11]
	mov	BYTE PTR 3[r10], dl
	cmp	rax, 4
	je	.L6
	movzx	edx, BYTE PTR 4[r11]
	mov	BYTE PTR 4[r10], dl
	cmp	rax, 5
	je	.L6
	movzx	edx, BYTE PTR 5[r11]
	mov	BYTE PTR 5[r10], dl
	cmp	rax, 6
	je	.L6
	movzx	eax, BYTE PTR 6[r11]
	mov	BYTE PTR 6[r10], al
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L18:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L50:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
	cmp	r8, rax
	jne	.L50
	jmp	.L6
.L19:
	mov	r11, r9
	mov	r10, rcx
	mov	rax, r8
	xor	edx, edx
	jmp	.L9
	.seh_endproc
	.p2align 4
	.globl	memccpy
	.def	memccpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memccpy
memccpy:
	.seh_endprologue
	movzx	r8d, r8b
	test	r9, r9
	jne	.L52
	jmp	.L54
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L55:
	add	rdx, 1
	add	rcx, 1
	sub	r9, 1
	je	.L54
.L52:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [rcx], r10b
	cmp	r10d, r8d
	jne	.L55
	lea	rax, 1[rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L54:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	memchr
	.def	memchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memchr
memchr:
	.seh_endprologue
	movzx	edx, dl
	test	r8, r8
	jne	.L63
	jmp	.L66
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L65:
	add	rcx, 1
	sub	r8, 1
	je	.L66
.L63:
	movzx	eax, BYTE PTR [rcx]
	cmp	eax, edx
	jne	.L65
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L66:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	memcmp
	.def	memcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	memcmp
memcmp:
	.seh_endprologue
	test	r8, r8
	jne	.L71
	jmp	.L75
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L73:
	add	rcx, 1
	add	rdx, 1
	sub	r8, 1
	je	.L75
.L71:
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	je	.L73
	movzx	eax, BYTE PTR [rcx]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L75:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	memcpy
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memcpy
memcpy:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	test	r8, r8
	je	.L82
	call	memcpy
	mov	rcx, rax
.L82:
	mov	rax, rcx
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	memrchr
	.def	memrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memrchr
memrchr:
	.seh_endprologue
	lea	rax, -1[rcx+r8]
	movzx	edx, dl
	sub	rcx, 1
	jmp	.L87
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L89:
	mov	r8, rax
	sub	rax, 1
	movzx	r9d, BYTE PTR [r8]
	cmp	r9d, edx
	je	.L86
.L87:
	cmp	rax, rcx
	jne	.L89
	xor	r8d, r8d
.L86:
	mov	rax, r8
	ret
	.seh_endproc
	.p2align 4
	.globl	memset
	.def	memset;	.scl	2;	.type	32;	.endef
	.seh_proc	memset
memset:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	test	r8, r8
	je	.L93
	movzx	edx, dl
	call	memset
	mov	rcx, rax
.L93:
	mov	rax, rcx
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	stpcpy
	.def	stpcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	stpcpy
stpcpy:
	.seh_endprologue
	mov	rax, rcx
	movzx	ecx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], cl
	test	cl, cl
	je	.L95
	.p2align 5
	.p2align 4
	.p2align 3
.L96:
	movzx	ecx, BYTE PTR 1[rdx]
	add	rdx, 1
	add	rax, 1
	mov	BYTE PTR [rax], cl
	test	cl, cl
	jne	.L96
.L95:
	ret
	.seh_endproc
	.p2align 4
	.globl	strchrnul
	.def	strchrnul;	.scl	2;	.type	32;	.endef
	.seh_proc	strchrnul
strchrnul:
	.seh_endprologue
	movzx	r8d, BYTE PTR [rcx]
	mov	rax, rcx
	movzx	edx, dl
	test	r8b, r8b
	jne	.L102
	jmp	.L101
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L104:
	movzx	r8d, BYTE PTR 1[rax]
	add	rax, 1
	test	r8b, r8b
	je	.L101
.L102:
	cmp	r8d, edx
	jne	.L104
.L101:
	ret
	.seh_endproc
	.p2align 4
	.globl	strchr
	.def	strchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strchr
strchr:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L111
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L114:
	add	rax, 1
	test	r8b, r8b
	je	.L113
.L111:
	movsx	r8d, BYTE PTR [rax]
	cmp	r8d, edx
	jne	.L114
	ret
	.p2align 4,,10
	.p2align 3
.L113:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	strcmp
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strcmp
strcmp:
	.seh_endprologue
	mov	eax, 1
	movzx	r8d, BYTE PTR [rcx]
	movzx	r9d, BYTE PTR [rdx]
	cmp	r8b, r9b
	je	.L116
	jmp	.L124
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L118:
	movzx	r8d, BYTE PTR [rcx+rax]
	add	rax, 1
	movzx	r9d, BYTE PTR -1[rdx+rax]
	cmp	r8b, r9b
	jne	.L124
.L116:
	test	r8b, r8b
	jne	.L118
	xor	eax, eax
	sub	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L124:
	movzx	eax, r8b
	sub	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	strlen
	.def	strlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strlen
strlen:
	.seh_endprologue
	cmp	BYTE PTR [rcx], 0
	je	.L128
	mov	rax, rcx
	.p2align 4
	.p2align 4
	.p2align 3
.L127:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L127
	sub	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L128:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	strncmp
	.def	strncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strncmp
strncmp:
	.seh_endprologue
	xor	eax, eax
	mov	r9, rcx
	test	r8, r8
	je	.L130
	movzx	eax, BYTE PTR [rcx]
	sub	r8, 1
	mov	rcx, rdx
	add	r8, rdx
	test	al, al
	jne	.L134
	jmp	.L147
	.p2align 4,,10
	.p2align 3
.L149:
	cmp	rcx, r8
	je	.L133
	movzx	eax, BYTE PTR 1[r9]
	add	r9, 1
	lea	rdx, 1[rcx]
	test	al, al
	je	.L148
	mov	rcx, rdx
.L134:
	movzx	edx, BYTE PTR [rcx]
	test	dl, dl
	setne	r11b
	cmp	dl, al
	sete	r10b
	test	r11b, r10b
	jne	.L149
.L133:
	sub	eax, edx
.L130:
	ret
	.p2align 4,,10
	.p2align 3
.L148:
	movzx	edx, BYTE PTR 1[rcx]
	xor	eax, eax
	sub	eax, edx
	jmp	.L130
.L147:
	movzx	edx, BYTE PTR [rdx]
	xor	eax, eax
	sub	eax, edx
	jmp	.L130
	.seh_endproc
	.p2align 4
	.globl	swab
	.def	swab;	.scl	2;	.type	32;	.endef
	.seh_proc	swab
swab:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	cmp	r8, 1
	jle	.L150
	mov	rbx, r8
	lea	rax, -2[r8]
	shr	rbx
	lea	r11, -1[rbx]
	cmp	rax, 29
	jbe	.L157
	mov	esi, 16711935
	mov	r10, r8
	mov	r9, r8
	xor	eax, eax
	movd	xmm5, esi
	shr	r10, 5
	and	r9, -32
	pshufd	xmm4, xmm5, 0
	movaps	XMMWORD PTR [rsp], xmm4
	.p2align 4
	.p2align 3
.L153:
	movdqu	xmm0, XMMWORD PTR [rcx+rax]
	movdqu	xmm2, XMMWORD PTR 16[rcx+rax]
	movdqa	xmm1, XMMWORD PTR [rsp]
	movdqa	xmm3, XMMWORD PTR [rsp]
	pand	xmm1, xmm0
	psrlw	xmm0, 8
	pand	xmm3, xmm2
	psrlw	xmm2, 8
	packuswb	xmm1, xmm3
	packuswb	xmm0, xmm2
	movdqa	xmm2, xmm0
	punpckhbw	xmm0, xmm1
	punpcklbw	xmm2, xmm1
	movups	XMMWORD PTR 16[rdx+rax], xmm0
	movups	XMMWORD PTR [rdx+rax], xmm2
	add	rax, 32
	cmp	r9, rax
	jne	.L153
	mov	r9, r10
	mov	rax, r10
	sal	r9, 4
	sal	rax, 5
	mov	rsi, r9
	lea	r10, [rdx+rax]
	add	rax, rcx
	neg	rsi
	lea	r8, [r8+rsi*2]
	cmp	r9, rbx
	je	.L150
.L152:
	sub	r11, r9
	lea	rbx, 1[r11]
	cmp	r11, 6
	jbe	.L155
	movq	xmm3, QWORD PTR .LC1[rip]
	add	r9, r9
	add	rcx, r9
	add	r9, rdx
	mov	rdx, rbx
	movq	xmm0, QWORD PTR [rcx]
	movq	xmm2, QWORD PTR 8[rcx]
	movdqa	xmm1, xmm3
	and	rdx, -8
	lea	rcx, [rdx+rdx]
	neg	rdx
	pand	xmm1, xmm0
	pand	xmm3, xmm2
	add	r10, rcx
	add	rax, rcx
	psrlw	xmm2, 8
	packuswb	xmm1, xmm3
	lea	r8, [r8+rdx*2]
	and	ebx, 7
	psrlw	xmm0, 8
	pshufd	xmm1, xmm1, 8
	packuswb	xmm0, xmm2
	pshufd	xmm0, xmm0, 8
	movdqa	xmm2, xmm0
	punpcklbw	xmm0, xmm1
	punpcklbw	xmm2, xmm1
	pshufd	xmm0, xmm0, 78
	movq	QWORD PTR [r9], xmm2
	movq	QWORD PTR 8[r9], xmm0
	je	.L150
.L155:
	movzx	edx, WORD PTR [rax]
	rol	dx, 8
	mov	WORD PTR [r10], dx
	cmp	r8, 3
	jle	.L150
	movzx	edx, WORD PTR 2[rax]
	rol	dx, 8
	mov	WORD PTR 2[r10], dx
	cmp	r8, 5
	jle	.L150
	movzx	edx, WORD PTR 4[rax]
	rol	dx, 8
	mov	WORD PTR 4[r10], dx
	cmp	r8, 7
	jle	.L150
	movzx	edx, WORD PTR 6[rax]
	rol	dx, 8
	mov	WORD PTR 6[r10], dx
	cmp	r8, 9
	jle	.L150
	movzx	edx, WORD PTR 8[rax]
	rol	dx, 8
	mov	WORD PTR 8[r10], dx
	cmp	r8, 11
	jle	.L150
	movzx	edx, WORD PTR 10[rax]
	rol	dx, 8
	mov	WORD PTR 10[r10], dx
	cmp	r8, 13
	jle	.L150
	movzx	eax, WORD PTR 12[rax]
	rol	ax, 8
	mov	WORD PTR 12[r10], ax
.L150:
	add	rsp, 24
	pop	rbx
	pop	rsi
	ret
.L157:
	mov	r10, rdx
	mov	rax, rcx
	xor	r9d, r9d
	jmp	.L152
	.seh_endproc
	.p2align 4
	.globl	isalpha
	.def	isalpha;	.scl	2;	.type	32;	.endef
	.seh_proc	isalpha
isalpha:
	.seh_endprologue
	xor	eax, eax
	or	ecx, 32
	sub	ecx, 97
	cmp	ecx, 25
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	isascii
	.def	isascii;	.scl	2;	.type	32;	.endef
	.seh_proc	isascii
isascii:
	.seh_endprologue
	xor	eax, eax
	cmp	ecx, 127
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	isblank
	.def	isblank;	.scl	2;	.type	32;	.endef
	.seh_proc	isblank
isblank:
	.seh_endprologue
	cmp	ecx, 32
	sete	al
	cmp	ecx, 9
	sete	dl
	or	eax, edx
	movzx	eax, al
	ret
	.seh_endproc
	.p2align 4
	.globl	iscntrl
	.def	iscntrl;	.scl	2;	.type	32;	.endef
	.seh_proc	iscntrl
iscntrl:
	.seh_endprologue
	cmp	ecx, 31
	setbe	al
	cmp	ecx, 127
	sete	dl
	or	eax, edx
	movzx	eax, al
	ret
	.seh_endproc
	.p2align 4
	.globl	isdigit
	.def	isdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	isdigit
isdigit:
	.seh_endprologue
	xor	eax, eax
	sub	ecx, 48
	cmp	ecx, 9
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	isgraph
	.def	isgraph;	.scl	2;	.type	32;	.endef
	.seh_proc	isgraph
isgraph:
	.seh_endprologue
	xor	eax, eax
	sub	ecx, 33
	cmp	ecx, 93
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	islower
	.def	islower;	.scl	2;	.type	32;	.endef
	.seh_proc	islower
islower:
	.seh_endprologue
	xor	eax, eax
	sub	ecx, 97
	cmp	ecx, 25
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	isprint
	.def	isprint;	.scl	2;	.type	32;	.endef
	.seh_proc	isprint
isprint:
	.seh_endprologue
	xor	eax, eax
	sub	ecx, 32
	cmp	ecx, 94
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	isspace
	.def	isspace;	.scl	2;	.type	32;	.endef
	.seh_proc	isspace
isspace:
	.seh_endprologue
	lea	eax, -9[rcx]
	cmp	eax, 4
	setbe	al
	cmp	ecx, 32
	sete	dl
	or	eax, edx
	movzx	eax, al
	ret
	.seh_endproc
	.p2align 4
	.globl	isupper
	.def	isupper;	.scl	2;	.type	32;	.endef
	.seh_proc	isupper
isupper:
	.seh_endprologue
	xor	eax, eax
	sub	ecx, 65
	cmp	ecx, 25
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	iswcntrl
	.def	iswcntrl;	.scl	2;	.type	32;	.endef
	.seh_proc	iswcntrl
iswcntrl:
	.seh_endprologue
	movzx	eax, cx
	lea	edx, -127[rax]
	cmp	edx, 32
	jbe	.L174
	cmp	cx, 31
	jbe	.L174
	lea	ecx, -8232[rax]
	mov	edx, 1
	cmp	ecx, 1
	jbe	.L172
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L174:
	mov	edx, 1
.L172:
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	iswdigit
	.def	iswdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	iswdigit
iswdigit:
	.seh_endprologue
	xor	eax, eax
	movzx	ecx, cx
	sub	ecx, 48
	cmp	ecx, 9
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	iswprint
	.def	iswprint;	.scl	2;	.type	32;	.endef
	.seh_proc	iswprint
iswprint:
	.seh_endprologue
	cmp	cx, 254
	jbe	.L183
	movzx	eax, cx
	lea	edx, -8234[rax]
	cmp	edx, 47061
	jbe	.L180
	cmp	cx, 8231
	jbe	.L180
	lea	r8d, -57344[rax]
	mov	edx, 1
	cmp	r8d, 8184
	jbe	.L177
	sub	eax, 65532
	xor	edx, edx
	cmp	eax, 1048579
	ja	.L177
	not	ecx
	xor	edx, edx
	test	cx, -2
	setne	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L180:
	mov	edx, 1
.L177:
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L183:
	lea	eax, 1[rcx]
	xor	edx, edx
	and	eax, 127
	cmp	eax, 32
	setg	dl
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	iswxdigit
	.def	iswxdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	iswxdigit
iswxdigit:
	.seh_endprologue
	mov	edx, 1
	movzx	eax, cx
	sub	eax, 48
	cmp	eax, 9
	jbe	.L184
	or	ecx, 32
	xor	edx, edx
	movzx	ecx, cx
	sub	ecx, 97
	cmp	ecx, 5
	setbe	dl
.L184:
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	toascii
	.def	toascii;	.scl	2;	.type	32;	.endef
	.seh_proc	toascii
toascii:
	.seh_endprologue
	mov	eax, ecx
	and	eax, 127
	ret
	.seh_endproc
	.p2align 4
	.globl	fdim
	.def	fdim;	.scl	2;	.type	32;	.endef
	.seh_proc	fdim
fdim:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L188
	ucomisd	xmm1, xmm1
	jp	.L192
	comisd	xmm0, xmm1
	jbe	.L195
	subsd	xmm0, xmm1
.L188:
	ret
	.p2align 4,,10
	.p2align 3
.L195:
	pxor	xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L192:
	movapd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	fdimf
	.def	fdimf;	.scl	2;	.type	32;	.endef
	.seh_proc	fdimf
fdimf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L196
	ucomiss	xmm1, xmm1
	jp	.L200
	comiss	xmm0, xmm1
	jbe	.L203
	subss	xmm0, xmm1
.L196:
	ret
	.p2align 4,,10
	.p2align 3
.L203:
	pxor	xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L200:
	movaps	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	fmax
	.def	fmax;	.scl	2;	.type	32;	.endef
	.seh_proc	fmax
fmax:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L204
	ucomisd	xmm1, xmm1
	jp	.L210
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L206
	test	eax, eax
	jne	.L204
.L210:
	movapd	xmm1, xmm0
.L204:
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L206:
	maxsd	xmm1, xmm0
	movapd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	fmaxf
	.def	fmaxf;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxf
fmaxf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L213
	ucomiss	xmm1, xmm1
	jp	.L219
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L215
	test	eax, eax
	jne	.L213
.L219:
	movaps	xmm1, xmm0
.L213:
	movaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L215:
	maxss	xmm1, xmm0
	movaps	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	fmaxl
	.def	fmaxl;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxl
fmaxl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L228
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L231
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	fxam
	fnstsw	ax
	and	edx, 512
	and	eax, 512
	cmp	edx, eax
	je	.L224
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	jmp	.L223
	.p2align 4,,10
	.p2align 3
.L231:
	fstp	st(0)
.L223:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L224:
	fcomi	st, st(1)
	mov	rax, rcx
	fcmovbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L228:
	fstp	st(0)
	jmp	.L223
	.seh_endproc
	.p2align 4
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L237
	ucomisd	xmm1, xmm1
	jp	.L232
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L234
	test	eax, eax
	jne	.L232
.L237:
	movapd	xmm0, xmm1
.L232:
	ret
	.p2align 4,,10
	.p2align 3
.L234:
	minsd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	fminf
	.def	fminf;	.scl	2;	.type	32;	.endef
	.seh_proc	fminf
fminf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L246
	ucomiss	xmm1, xmm1
	jp	.L241
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L243
	test	eax, eax
	jne	.L241
.L246:
	movaps	xmm0, xmm1
.L241:
	ret
	.p2align 4,,10
	.p2align 3
.L243:
	minss	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	fminl
	.def	fminl;	.scl	2;	.type	32;	.endef
	.seh_proc	fminl
fminl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L259
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L256
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	fxam
	fnstsw	ax
	and	edx, 512
	and	eax, 512
	cmp	edx, eax
	je	.L252
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	jmp	.L251
	.p2align 4,,10
	.p2align 3
.L259:
	fstp	st(0)
.L251:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L252:
	fcomi	st, st(1)
	mov	rax, rcx
	fcmovnbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L256:
	fstp	st(0)
	jmp	.L251
	.seh_endproc
	.p2align 4
	.globl	l64a
	.def	l64a;	.scl	2;	.type	32;	.endef
	.seh_proc	l64a
l64a:
	.seh_endprologue
	lea	r9, s.0[rip]
	mov	rax, r9
	test	ecx, ecx
	je	.L261
	lea	r8, digits[rip]
	.p2align 5
	.p2align 4
	.p2align 3
.L262:
	mov	edx, ecx
	add	rax, 1
	and	edx, 63
	movzx	edx, BYTE PTR [r8+rdx]
	mov	BYTE PTR -1[rax], dl
	shr	ecx, 6
	jne	.L262
.L261:
	mov	BYTE PTR [rax], 0
	mov	rax, r9
	ret
	.seh_endproc
	.p2align 4
	.globl	srand
	.def	srand;	.scl	2;	.type	32;	.endef
	.seh_proc	srand
srand:
	.seh_endprologue
	lea	eax, -1[rcx]
	mov	QWORD PTR seed[rip], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	rand
	.def	rand;	.scl	2;	.type	32;	.endef
	.seh_proc	rand
rand:
	.seh_endprologue
	movabs	rax, 6364136223846793005
	imul	rax, QWORD PTR seed[rip]
	add	rax, 1
	mov	QWORD PTR seed[rip], rax
	shr	rax, 33
	ret
	.seh_endproc
	.p2align 4
	.globl	insque
	.def	insque;	.scl	2;	.type	32;	.endef
	.seh_proc	insque
insque:
	.seh_endprologue
	test	rdx, rdx
	je	.L273
	movq	xmm0, QWORD PTR [rdx]
	movq	xmm1, rdx
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR [rcx], xmm0
	mov	QWORD PTR [rdx], rcx
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L267
	mov	QWORD PTR 8[rax], rcx
.L267:
	ret
	.p2align 4,,10
	.p2align 3
.L273:
	pxor	xmm0, xmm0
	movups	XMMWORD PTR [rcx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	remque
	.def	remque;	.scl	2;	.type	32;	.endef
	.seh_proc	remque
remque:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L275
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L275:
	mov	rdx, QWORD PTR 8[rcx]
	test	rdx, rdx
	je	.L274
	mov	QWORD PTR [rdx], rax
.L274:
	ret
	.seh_endproc
	.p2align 4
	.globl	lsearch
	.def	lsearch;	.scl	2;	.type	32;	.endef
	.seh_proc	lsearch
lsearch:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rdi, QWORD PTR [r8]
	mov	r13, QWORD PTR 144[rsp]
	mov	QWORD PTR 120[rsp], rdx
	mov	rbp, rcx
	mov	r14, r8
	mov	rsi, r9
	test	rdi, rdi
	je	.L284
	mov	rbx, rdx
	xor	r15d, r15d
	jmp	.L286
	.p2align 4,,10
	.p2align 3
.L298:
	add	r15, 1
	add	rbx, rsi
	cmp	rdi, r15
	je	.L284
.L286:
	mov	r12, rbx
	mov	rdx, rbx
	mov	rcx, rbp
	call	r13
	test	eax, eax
	jne	.L298
.L283:
	mov	rax, r12
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L284:
	lea	rax, 1[rdi]
	imul	rdi, rsi
	add	rdi, QWORD PTR 120[rsp]
	mov	QWORD PTR [r14], rax
	mov	r12, rdi
	test	rsi, rsi
	je	.L283
	mov	r8, rsi
	mov	rdx, rbp
	mov	rcx, rdi
	call	memmove
	jmp	.L283
	.seh_endproc
	.p2align 4
	.globl	lfind
	.def	lfind;	.scl	2;	.type	32;	.endef
	.seh_proc	lfind
lfind:
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r12, QWORD PTR [r8]
	mov	r13, QWORD PTR 128[rsp]
	mov	rdi, rcx
	mov	rbp, r9
	test	r12, r12
	je	.L300
	mov	rbx, rdx
	xor	esi, esi
	jmp	.L302
	.p2align 4,,10
	.p2align 3
.L310:
	add	rsi, 1
	add	rbx, rbp
	cmp	r12, rsi
	je	.L300
.L302:
	mov	r14, rbx
	mov	rdx, rbx
	mov	rcx, rdi
	call	r13
	test	eax, eax
	jne	.L310
.L299:
	mov	rax, r14
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L300:
	xor	r14d, r14d
	jmp	.L299
	.seh_endproc
	.p2align 4
	.globl	abs
	.def	abs;	.scl	2;	.type	32;	.endef
	.seh_proc	abs
abs:
	.seh_endprologue
	mov	eax, ecx
	neg	eax
	cmovs	eax, ecx
	ret
	.seh_endproc
	.p2align 4
	.globl	atoi
	.def	atoi;	.scl	2;	.type	32;	.endef
	.seh_proc	atoi
atoi:
	.seh_endprologue
	jmp	.L339
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L335:
	add	rcx, 1
.L339:
	movsx	edx, BYTE PTR [rcx]
	lea	r8d, -9[rdx]
	mov	eax, edx
	cmp	r8d, 4
	jbe	.L335
	cmp	al, 32
	je	.L335
	cmp	al, 43
	je	.L316
	cmp	al, 45
	jne	.L340
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L325
	mov	r11d, 1
.L319:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L322:
	lea	ecx, [r9+r9*4]
	movsx	r8d, BYTE PTR 1[r10]
	lea	edx, -48[rax]
	add	r10, 1
	add	ecx, ecx
	movsx	edx, dl
	mov	r9d, ecx
	mov	eax, r8d
	sub	r8d, 48
	sub	r9d, edx
	cmp	r8d, 9
	jbe	.L322
	sub	edx, ecx
	test	r11d, r11d
	cmove	r9d, edx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L340:
	sub	edx, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	edx, 9
	jbe	.L319
.L325:
	xor	r9d, r9d
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L316:
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	xor	r11d, r11d
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L319
	jmp	.L325
	.seh_endproc
	.p2align 4
	.globl	atol
	.def	atol;	.scl	2;	.type	32;	.endef
	.seh_proc	atol
atol:
	.seh_endprologue
	jmp	.L365
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L362:
	add	rcx, 1
.L365:
	movsx	edx, BYTE PTR [rcx]
	lea	r8d, -9[rdx]
	mov	eax, edx
	cmp	r8d, 4
	jbe	.L362
	cmp	al, 32
	je	.L362
	cmp	al, 43
	je	.L345
	cmp	al, 45
	jne	.L346
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	r11d, 1
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L353
.L347:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L350:
	lea	ecx, [r9+r9*4]
	movsx	r8d, BYTE PTR 1[r10]
	lea	edx, -48[rax]
	add	r10, 1
	add	ecx, ecx
	movsx	edx, dl
	mov	r9d, ecx
	mov	eax, r8d
	sub	r8d, 48
	sub	r9d, edx
	cmp	r8d, 9
	jbe	.L350
	sub	edx, ecx
	test	r11d, r11d
	cmove	r9d, edx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L346:
	sub	edx, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	edx, 9
	jbe	.L347
.L353:
	xor	r9d, r9d
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L345:
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L353
	xor	r11d, r11d
	jmp	.L347
	.seh_endproc
	.p2align 4
	.globl	atoll
	.def	atoll;	.scl	2;	.type	32;	.endef
	.seh_proc	atoll
atoll:
	.seh_endprologue
	jmp	.L393
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L389:
	add	rcx, 1
.L393:
	movsx	edx, BYTE PTR [rcx]
	lea	r8d, -9[rdx]
	mov	eax, edx
	cmp	r8d, 4
	jbe	.L389
	cmp	al, 32
	je	.L389
	cmp	al, 43
	je	.L370
	cmp	al, 45
	jne	.L394
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L379
	mov	r11d, 1
.L373:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L376:
	lea	rcx, [r9+r9*4]
	movsx	r8d, BYTE PTR 1[r10]
	lea	edx, -48[rax]
	add	r10, 1
	add	rcx, rcx
	movsx	rdx, dl
	mov	r9, rcx
	mov	eax, r8d
	sub	r8d, 48
	sub	r9, rdx
	cmp	r8d, 9
	jbe	.L376
	sub	rdx, rcx
	test	r11d, r11d
	cmove	r9, rdx
	mov	rax, r9
	ret
	.p2align 4,,10
	.p2align 3
.L394:
	sub	edx, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	edx, 9
	jbe	.L373
.L379:
	xor	r9d, r9d
	mov	rax, r9
	ret
	.p2align 4,,10
	.p2align 3
.L370:
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	xor	r11d, r11d
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L373
	jmp	.L379
	.seh_endproc
	.p2align 4
	.globl	bsearch
	.def	bsearch;	.scl	2;	.type	32;	.endef
	.seh_proc	bsearch
bsearch:
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r13, QWORD PTR 128[rsp]
	mov	r12, rcx
	mov	rdi, rdx
	mov	rbx, r8
	mov	rbp, r9
	.p2align 4
	.p2align 3
.L408:
	test	rbx, rbx
	je	.L396
.L409:
	mov	r14, rbx
	mov	rcx, r12
	shr	r14
	mov	rsi, r14
	imul	rsi, rbp
	add	rsi, rdi
	mov	rdx, rsi
	call	r13
	test	eax, eax
	js	.L400
	je	.L395
	sub	rbx, 1
	lea	rdi, [rsi+rbp]
	sub	rbx, r14
	test	rbx, rbx
	jne	.L409
.L396:
	xor	esi, esi
.L395:
	mov	rax, rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L400:
	mov	rbx, r14
	jmp	.L408
	.seh_endproc
	.p2align 4
	.globl	bsearch_r
	.def	bsearch_r;	.scl	2;	.type	32;	.endef
	.seh_proc	bsearch_r
bsearch_r:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	r12, QWORD PTR 144[rsp]
	mov	r13, QWORD PTR 152[rsp]
	mov	rbp, rcx
	mov	rsi, rdx
	mov	rdi, r9
	mov	r14d, r8d
	test	r8d, r8d
	je	.L415
	.p2align 4
	.p2align 3
.L423:
	mov	r15d, r14d
	mov	r8, r13
	mov	rcx, rbp
	sar	r15d
	movsx	rbx, r15d
	imul	rbx, rdi
	add	rbx, rsi
	mov	rdx, rbx
	call	r12
	test	eax, eax
	je	.L410
	jle	.L413
	sub	r14d, 1
	lea	rsi, [rbx+rdi]
	sar	r14d
	jne	.L423
.L415:
	xor	ebx, ebx
.L410:
	mov	rax, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L413:
	test	r15d, r15d
	je	.L415
	mov	r14d, r15d
	jmp	.L423
	.seh_endproc
	.p2align 4
	.globl	div
	.def	div;	.scl	2;	.type	32;	.endef
	.seh_proc	div
div:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	cdq
	idiv	ecx
	sal	rdx, 32
	or	rax, rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	imaxabs
	.def	imaxabs;	.scl	2;	.type	32;	.endef
	.seh_proc	imaxabs
imaxabs:
	.seh_endprologue
	mov	rax, rcx
	neg	rax
	cmovs	rax, rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	imaxdiv
	.def	imaxdiv;	.scl	2;	.type	32;	.endef
	.seh_proc	imaxdiv
imaxdiv:
	.seh_endprologue
	mov	rax, rdx
	cqo
	idiv	r8
	mov	QWORD PTR [rcx], rax
	mov	rax, rcx
	mov	QWORD PTR 8[rcx], rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	labs
	.def	labs;	.scl	2;	.type	32;	.endef
	.seh_proc	labs
labs:
	.seh_endprologue
	mov	eax, ecx
	neg	eax
	cmovs	eax, ecx
	ret
	.seh_endproc
	.p2align 4
	.globl	ldiv
	.def	ldiv;	.scl	2;	.type	32;	.endef
	.seh_proc	ldiv
ldiv:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	cdq
	idiv	ecx
	sal	rdx, 32
	or	rax, rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	llabs
	.def	llabs;	.scl	2;	.type	32;	.endef
	.seh_proc	llabs
llabs:
	.seh_endprologue
	mov	rax, rcx
	neg	rax
	cmovs	rax, rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	lldiv
	.def	lldiv;	.scl	2;	.type	32;	.endef
	.seh_proc	lldiv
lldiv:
	.seh_endprologue
	mov	rax, rdx
	cqo
	idiv	r8
	mov	QWORD PTR [rcx], rax
	mov	rax, rcx
	mov	QWORD PTR 8[rcx], rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	wcschr
	.def	wcschr;	.scl	2;	.type	32;	.endef
	.seh_proc	wcschr
wcschr:
	.seh_endprologue
	movzx	eax, WORD PTR [rcx]
	test	ax, ax
	jne	.L433
	jmp	.L436
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L435:
	movzx	eax, WORD PTR 2[rcx]
	add	rcx, 2
	test	ax, ax
	je	.L436
.L433:
	cmp	dx, ax
	jne	.L435
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L436:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	wcscmp
	.def	wcscmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscmp
wcscmp:
	.seh_endprologue
	mov	eax, 2
	movzx	r8d, WORD PTR [rcx]
	movzx	r9d, WORD PTR [rdx]
	cmp	r8w, r9w
	je	.L441
	jmp	.L442
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L443:
	movzx	r8d, WORD PTR [rcx+rax]
	add	rax, 2
	movzx	r9d, WORD PTR -2[rdx+rax]
	cmp	r8w, r9w
	jne	.L442
.L441:
	test	r8w, r8w
	jne	.L443
.L442:
	mov	eax, -1
	cmp	r8w, r9w
	jb	.L440
	xor	eax, eax
	cmp	r9w, r8w
	setb	al
.L440:
	ret
	.seh_endproc
	.p2align 4
	.globl	wcscpy
	.def	wcscpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscpy
wcscpy:
	.seh_endprologue
	xor	r8d, r8d
	mov	rax, rcx
	.p2align 5
	.p2align 4
	.p2align 3
.L450:
	movzx	r9d, WORD PTR [rdx+r8]
	mov	WORD PTR [rax+r8], r9w
	add	r8, 2
	test	r9w, r9w
	jne	.L450
	ret
	.seh_endproc
	.p2align 4
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	cmp	WORD PTR [rcx], 0
	je	.L455
	mov	rax, rcx
	.p2align 4
	.p2align 4
	.p2align 3
.L454:
	add	rax, 2
	cmp	WORD PTR [rax], 0
	jne	.L454
	sub	rax, rcx
	sar	rax
	ret
	.p2align 4,,10
	.p2align 3
.L455:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	wcsncmp
	.def	wcsncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcsncmp
wcsncmp:
	.seh_endprologue
	test	r8, r8
	jne	.L458
	jmp	.L464
	.p2align 4,,10
	.p2align 3
.L471:
	test	ax, ax
	je	.L462
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L464
.L458:
	movzx	eax, WORD PTR [rcx]
	cmp	WORD PTR [rdx], ax
	je	.L471
.L462:
	movzx	ecx, WORD PTR [rcx]
	movzx	eax, WORD PTR [rdx]
	cmp	cx, ax
	jb	.L472
	cmp	ax, cx
	setb	al
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L472:
	mov	eax, -1
	ret
	.p2align 4,,10
	.p2align 3
.L464:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	wmemchr
	.def	wmemchr;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemchr
wmemchr:
	.seh_endprologue
	test	r8, r8
	jne	.L474
	jmp	.L477
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L476:
	add	rcx, 2
	sub	r8, 1
	je	.L477
.L474:
	cmp	WORD PTR [rcx], dx
	jne	.L476
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L477:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	wmemcmp
	.def	wmemcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcmp
wmemcmp:
	.seh_endprologue
	test	r8, r8
	jne	.L482
	jmp	.L487
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L484:
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L487
.L482:
	movzx	eax, WORD PTR [rcx]
	cmp	ax, WORD PTR [rdx]
	je	.L484
	movzx	edx, WORD PTR [rdx]
	cmp	ax, dx
	jb	.L493
	cmp	dx, ax
	setb	al
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L487:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L493:
	mov	eax, -1
	ret
	.seh_endproc
	.p2align 4
	.globl	wmemcpy
	.def	wmemcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcpy
wmemcpy:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	test	r8, r8
	je	.L495
	add	r8, r8
	call	memcpy
	mov	rcx, rax
.L495:
	mov	rax, rcx
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	wmemmove
	.def	wmemmove;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemmove
wmemmove:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	cmp	rcx, rdx
	je	.L530
	mov	rax, rcx
	lea	r10, [r8+r8]
	lea	r9, -1[r8]
	sub	rax, rdx
	cmp	rax, r10
	jb	.L501
	test	r8, r8
	je	.L530
	cmp	r9, 2
	jbe	.L520
	lea	r10, 2[rdx]
	mov	rax, rcx
	sub	rax, r10
	cmp	rax, 12
	jbe	.L520
	cmp	r9, 6
	jbe	.L521
	mov	r11, r8
	xor	eax, eax
	xor	r10d, r10d
	shr	r11, 3
	.p2align 5
	.p2align 4
	.p2align 3
.L512:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	add	r10, 1
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	r11, r10
	jne	.L512
	mov	r10, r8
	and	r10, -8
	lea	rax, [r10+r10]
	sub	r9, r10
	lea	r11, [rdx+rax]
	add	rax, rcx
	test	r8b, 7
	je	.L530
	sub	r8, r10
	lea	rbx, -1[r8]
	cmp	rbx, 2
	jbe	.L515
.L511:
	mov	rdx, QWORD PTR [rdx+r10*2]
	mov	QWORD PTR [rcx+r10*2], rdx
	mov	rdx, r8
	and	rdx, -4
	sub	r9, rdx
	add	rdx, rdx
	add	r11, rdx
	add	rax, rdx
	and	r8d, 3
	je	.L530
.L515:
	movzx	edx, WORD PTR [r11]
	mov	WORD PTR [rax], dx
	test	r9, r9
	je	.L530
	movzx	edx, WORD PTR 2[r11]
	mov	WORD PTR 2[rax], dx
	cmp	r9, 1
	je	.L530
	movzx	edx, WORD PTR 4[r11]
	mov	WORD PTR 4[rax], dx
.L530:
	mov	rax, rcx
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L501:
	test	r8, r8
	je	.L530
	cmp	r9, 2
	jbe	.L551
	mov	rax, rcx
	sub	rax, rdx
	add	rax, 6
	cmp	rax, 4
	jbe	.L551
	mov	rbx, r8
	sub	r10, 8
	xor	eax, eax
	shr	rbx, 2
	lea	rsi, [rdx+r10]
	add	r10, rcx
	neg	rbx
	sal	rbx, 3
	.p2align 5
	.p2align 4
	.p2align 3
.L505:
	mov	r11, QWORD PTR [rsi+rax]
	mov	QWORD PTR [r10+rax], r11
	sub	rax, 8
	cmp	rax, rbx
	jne	.L505
	mov	rax, r8
	and	rax, -4
	sub	r9, rax
	and	r8d, 3
	je	.L530
	movzx	eax, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], ax
	test	r9, r9
	je	.L530
	sub	r9, 1
	movzx	r8d, WORD PTR [rdx+r9*2]
	lea	rax, [r9+r9]
	mov	WORD PTR [rcx+r9*2], r8w
	je	.L530
	movzx	edx, WORD PTR -2[rdx+rax]
	mov	WORD PTR -2[rcx+rax], dx
	jmp	.L530
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L551:
	movzx	eax, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], ax
	sub	r9, 1
	jb	.L530
	movzx	eax, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], ax
	sub	r9, 1
	jnb	.L551
	jmp	.L530
	.p2align 4,,10
	.p2align 3
.L520:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L552:
	movzx	r9d, WORD PTR [rdx+rax*2]
	mov	WORD PTR [rcx+rax*2], r9w
	add	rax, 1
	cmp	r8, rax
	jne	.L552
	jmp	.L530
.L521:
	mov	r11, rdx
	mov	rax, rcx
	xor	r10d, r10d
	jmp	.L511
	.seh_endproc
	.p2align 4
	.globl	wmemset
	.def	wmemset;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemset
wmemset:
	.seh_endprologue
	mov	r9, rcx
	lea	r11, -1[r8]
	test	r8, r8
	je	.L555
	cmp	r11, 6
	jbe	.L561
	movd	xmm0, edx
	mov	r10, r8
	xor	eax, eax
	punpcklwd	xmm0, xmm0
	shr	r10, 3
	pshufd	xmm0, xmm0, 0
	.p2align 5
	.p2align 4
	.p2align 3
.L557:
	mov	rcx, rax
	add	rax, 1
	sal	rcx, 4
	movups	XMMWORD PTR [r9+rcx], xmm0
	cmp	r10, rax
	jne	.L557
	mov	rax, r8
	and	rax, -8
	sub	r11, rax
	lea	rcx, [r9+rax*2]
	test	r8b, 7
	je	.L555
.L556:
	sub	r8, rax
	lea	r10, -1[r8]
	cmp	r10, 2
	jbe	.L559
	movd	xmm1, edx
	pshuflw	xmm0, xmm1, 0
	movq	QWORD PTR [r9+rax*2], xmm0
	mov	rax, r8
	and	rax, -4
	sub	r11, rax
	and	r8d, 3
	lea	rcx, [rcx+rax*2]
	je	.L555
.L559:
	mov	WORD PTR [rcx], dx
	test	r11, r11
	je	.L555
	mov	WORD PTR 2[rcx], dx
	cmp	r11, 1
	je	.L555
	mov	WORD PTR 4[rcx], dx
.L555:
	mov	rax, r9
	ret
.L561:
	xor	eax, eax
	jmp	.L556
	.seh_endproc
	.p2align 4
	.globl	bcopy
	.def	bcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	bcopy
bcopy:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r9, rdx
	cmp	rcx, rdx
	jnb	.L579
	test	r8, r8
	je	.L578
	.p2align 5
	.p2align 4
	.p2align 3
.L581:
	movzx	eax, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[r9+r8], al
	sub	r8, 1
	jne	.L581
.L578:
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L579:
	je	.L578
	test	r8, r8
	je	.L578
	lea	rax, -1[r8]
	cmp	rax, 6
	jbe	.L592
	lea	r10, 1[rcx]
	sub	rdx, r10
	cmp	rdx, 14
	jbe	.L592
	cmp	rax, 14
	jbe	.L593
	mov	rdx, r8
	xor	eax, eax
	and	rdx, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L584:
	movdqu	xmm0, XMMWORD PTR [rcx+rax]
	movups	XMMWORD PTR [r9+rax], xmm0
	add	rax, 16
	cmp	rdx, rax
	jne	.L584
	mov	rax, r8
	lea	r10, [r9+rdx]
	lea	r11, [rcx+rdx]
	sub	rax, rdx
	cmp	rdx, r8
	je	.L578
	lea	rbx, -1[rax]
	mov	r8, rax
	cmp	rbx, 6
	jbe	.L587
.L583:
	mov	rcx, QWORD PTR [rcx+rdx]
	mov	QWORD PTR [r9+rdx], rcx
	mov	rdx, r8
	and	rdx, -8
	add	r10, rdx
	add	r11, rdx
	sub	rax, rdx
	and	r8d, 7
	je	.L578
.L587:
	movzx	edx, BYTE PTR [r11]
	mov	BYTE PTR [r10], dl
	cmp	rax, 1
	je	.L578
	movzx	edx, BYTE PTR 1[r11]
	mov	BYTE PTR 1[r10], dl
	cmp	rax, 2
	je	.L578
	movzx	edx, BYTE PTR 2[r11]
	mov	BYTE PTR 2[r10], dl
	cmp	rax, 3
	je	.L578
	movzx	edx, BYTE PTR 3[r11]
	mov	BYTE PTR 3[r10], dl
	cmp	rax, 4
	je	.L578
	movzx	edx, BYTE PTR 4[r11]
	mov	BYTE PTR 4[r10], dl
	cmp	rax, 5
	je	.L578
	movzx	edx, BYTE PTR 5[r11]
	mov	BYTE PTR 5[r10], dl
	cmp	rax, 6
	je	.L578
	movzx	eax, BYTE PTR 6[r11]
	mov	BYTE PTR 6[r10], al
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L592:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L624:
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [r9+rax], dl
	add	rax, 1
	cmp	r8, rax
	jne	.L624
	pop	rbx
	ret
.L593:
	mov	r10, r9
	mov	r11, rcx
	mov	rax, r8
	xor	edx, edx
	jmp	.L583
	.seh_endproc
	.p2align 4
	.globl	rotl64
	.def	rotl64;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl64
rotl64:
	.seh_endprologue
	mov	rax, rcx
	mov	ecx, edx
	rol	rax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotr64
	.def	rotr64;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr64
rotr64:
	.seh_endprologue
	mov	rax, rcx
	mov	ecx, edx
	ror	rax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotl32
	.def	rotl32;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl32
rotl32:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	rol	eax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotr32
	.def	rotr32;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr32
rotr32:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	ror	eax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotl_sz
	.def	rotl_sz;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl_sz
rotl_sz:
	.seh_endprologue
	mov	rax, rcx
	mov	ecx, edx
	rol	rax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotr_sz
	.def	rotr_sz;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr_sz
rotr_sz:
	.seh_endprologue
	mov	rax, rcx
	mov	ecx, edx
	ror	rax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotl16
	.def	rotl16;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl16
rotl16:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	rol	ax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotr16
	.def	rotr16;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr16
rotr16:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	ror	ax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotl8
	.def	rotl8;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl8
rotl8:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	rol	al, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotr8
	.def	rotr8;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr8
rotr8:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	ror	al, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	bswap_16
	.def	bswap_16;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_16
bswap_16:
	.seh_endprologue
	mov	eax, ecx
	rol	ax, 8
	ret
	.seh_endproc
	.p2align 4
	.globl	bswap_32
	.def	bswap_32;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_32
bswap_32:
	.seh_endprologue
	mov	eax, ecx
	bswap	eax
	ret
	.seh_endproc
	.p2align 4
	.globl	bswap_64
	.def	bswap_64;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_64
bswap_64:
	.seh_endprologue
	mov	rax, rcx
	bswap	rax
	ret
	.seh_endproc
	.p2align 4
	.globl	ffs
	.def	ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	ffs
ffs:
	.seh_endprologue
	mov	edx, ecx
	xor	ecx, ecx
	jmp	.L641
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L639:
	cmp	ecx, 32
	je	.L643
.L641:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L639
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L643:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	libiberty_ffs
	.def	libiberty_ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	libiberty_ffs
libiberty_ffs:
	.seh_endprologue
	xor	eax, eax
	test	ecx, ecx
	je	.L644
	mov	eax, ecx
	and	eax, 1
	jne	.L644
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L646:
	sar	ecx
	add	eax, 1
	test	cl, 1
	je	.L646
.L644:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinff
	.def	gl_isinff;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinff
gl_isinff:
	.seh_endprologue
	movss	xmm1, DWORD PTR .LC6[rip]
	mov	eax, 1
	comiss	xmm1, xmm0
	ja	.L651
	xor	eax, eax
	comiss	xmm0, DWORD PTR .LC7[rip]
	seta	al
.L651:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinfd
	.def	gl_isinfd;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfd
gl_isinfd:
	.seh_endprologue
	movsd	xmm1, QWORD PTR .LC8[rip]
	mov	eax, 1
	comisd	xmm1, xmm0
	ja	.L654
	xor	eax, eax
	comisd	xmm0, QWORD PTR .LC9[rip]
	seta	al
.L654:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinfl
	.def	gl_isinfl;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfl
gl_isinfl:
	.seh_endprologue
	mov	eax, 1
	fld	TBYTE PTR [rcx]
	fld	TBYTE PTR .LC10[rip]
	fcomip	st, st(1)
	ja	.L660
	fld	TBYTE PTR .LC11[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L657
	.p2align 4,,10
	.p2align 3
.L660:
	fstp	st(0)
.L657:
	ret
	.seh_endproc
	.p2align 4
	.globl	_Qp_itoq
	.def	_Qp_itoq;	.scl	2;	.type	32;	.endef
	.seh_proc	_Qp_itoq
_Qp_itoq:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, edx
	movsd	QWORD PTR 8[rsp], xmm0
	fld	QWORD PTR 8[rsp]
	fstp	TBYTE PTR [rcx]
	add	rsp, 24
	ret
	.seh_endproc
	.p2align 4
	.globl	ldexpf
	.def	ldexpf;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpf
ldexpf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L663
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm1, xmm0
	jp	.L670
	jne	.L670
.L663:
	ret
	.p2align 4,,10
	.p2align 3
.L670:
	movss	xmm1, DWORD PTR .LC12[rip]
	test	edx, edx
	jns	.L665
	movss	xmm1, DWORD PTR .LC13[rip]
.L665:
	test	dl, 1
	je	.L666
	.p2align 4
	.p2align 3
.L667:
	mulss	xmm0, xmm1
.L666:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L663
	mulss	xmm1, xmm1
	test	dl, 1
	jne	.L667
.L677:
	mulss	xmm1, xmm1
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L667
	jmp	.L677
	.seh_endproc
	.p2align 4
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L679
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm1, xmm0
	jp	.L686
	jne	.L686
.L679:
	ret
	.p2align 4,,10
	.p2align 3
.L686:
	movsd	xmm1, QWORD PTR .LC14[rip]
	test	edx, edx
	jns	.L681
	movsd	xmm1, QWORD PTR .LC15[rip]
.L681:
	test	dl, 1
	je	.L682
	.p2align 4
	.p2align 3
.L683:
	mulsd	xmm0, xmm1
.L682:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L679
	mulsd	xmm1, xmm1
	test	dl, 1
	jne	.L683
.L693:
	mulsd	xmm1, xmm1
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L683
	jmp	.L693
	.seh_endproc
	.p2align 4
	.globl	ldexpl
	.def	ldexpl;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpl
ldexpl:
	.seh_endprologue
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	mov	rax, rcx
	jp	.L695
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L702
	jne	.L702
	jmp	.L695
	.p2align 4,,10
	.p2align 3
.L711:
	fstp	st(0)
.L695:
	fstp	TBYTE PTR [rax]
	ret
	.p2align 4,,10
	.p2align 3
.L702:
	test	r8d, r8d
	js	.L709
	fld	DWORD PTR .LC12[rip]
.L697:
	test	r8b, 1
	je	.L698
	.p2align 4
	.p2align 3
.L699:
	fmul	st(1), st
.L698:
	mov	edx, r8d
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	je	.L711
	fmul	st, st(0)
	test	r8b, 1
	jne	.L699
.L710:
	mov	edx, r8d
	fmul	st, st(0)
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	test	r8b, 1
	jne	.L699
	jmp	.L710
	.p2align 4,,10
	.p2align 3
.L709:
	fld	DWORD PTR .LC13[rip]
	jmp	.L697
	.seh_endproc
	.p2align 4
	.globl	memxor
	.def	memxor;	.scl	2;	.type	32;	.endef
	.seh_proc	memxor
memxor:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	test	r8, r8
	je	.L713
	lea	rax, -1[r8]
	cmp	rax, 14
	jbe	.L719
	mov	r9, r8
	xor	eax, eax
	and	r9, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L715:
	movdqu	xmm2, XMMWORD PTR [rcx+rax]
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	pxor	xmm0, xmm2
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, r9
	jne	.L715
	mov	r11, r8
	lea	rax, [rcx+r9]
	lea	r10, [rdx+r9]
	sub	r11, r9
	cmp	r8, r9
	je	.L713
.L714:
	sub	r8, r9
	lea	rbx, -1[r8]
	cmp	rbx, 6
	jbe	.L717
	lea	rbx, [rcx+r9]
	movq	xmm0, QWORD PTR [rdx+r9]
	mov	rdx, r8
	movq	xmm1, QWORD PTR [rbx]
	and	rdx, -8
	add	rax, rdx
	add	r10, rdx
	sub	r11, rdx
	and	r8d, 7
	pxor	xmm0, xmm1
	movq	QWORD PTR [rbx], xmm0
	je	.L713
.L717:
	movzx	edx, BYTE PTR [r10]
	xor	BYTE PTR [rax], dl
	cmp	r11, 1
	je	.L713
	movzx	edx, BYTE PTR 1[r10]
	xor	BYTE PTR 1[rax], dl
	cmp	r11, 2
	je	.L713
	movzx	edx, BYTE PTR 2[r10]
	xor	BYTE PTR 2[rax], dl
	cmp	r11, 3
	je	.L713
	movzx	edx, BYTE PTR 3[r10]
	xor	BYTE PTR 3[rax], dl
	cmp	r11, 4
	je	.L713
	movzx	edx, BYTE PTR 4[r10]
	xor	BYTE PTR 4[rax], dl
	cmp	r11, 5
	je	.L713
	movzx	edx, BYTE PTR 5[r10]
	xor	BYTE PTR 5[rax], dl
	cmp	r11, 6
	je	.L713
	movzx	edx, BYTE PTR 6[r10]
	xor	BYTE PTR 6[rax], dl
.L713:
	mov	rax, rcx
	pop	rbx
	ret
.L719:
	mov	rax, rcx
	mov	r10, rdx
	mov	r11, r8
	xor	r9d, r9d
	jmp	.L714
	.seh_endproc
	.p2align 4
	.globl	strncat
	.def	strncat;	.scl	2;	.type	32;	.endef
	.seh_proc	strncat
strncat:
	.seh_endprologue
	cmp	BYTE PTR [rcx], 0
	mov	rax, rcx
	mov	r9, rcx
	je	.L746
	.p2align 4
	.p2align 4
	.p2align 3
.L747:
	add	r9, 1
	cmp	BYTE PTR [r9], 0
	jne	.L747
.L746:
	test	r8, r8
	jne	.L748
	jmp	.L749
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L750:
	add	rdx, 1
	add	r9, 1
	sub	r8, 1
	je	.L749
.L748:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [r9], r10b
	test	r10b, r10b
	jne	.L750
	ret
	.p2align 4,,10
	.p2align 3
.L749:
	mov	BYTE PTR [r9], 0
	ret
	.seh_endproc
	.p2align 4
	.globl	strnlen
	.def	strnlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strnlen
strnlen:
	.seh_endprologue
	xor	eax, eax
	test	rdx, rdx
	je	.L759
.L760:
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L762
.L759:
	ret
	.p2align 4,,10
	.p2align 3
.L762:
	add	rax, 1
	cmp	rdx, rax
	jne	.L760
	ret
	.seh_endproc
	.p2align 4
	.globl	strpbrk
	.def	strpbrk;	.scl	2;	.type	32;	.endef
	.seh_proc	strpbrk
strpbrk:
	.seh_endprologue
	movzx	r10d, BYTE PTR [rcx]
	mov	rax, rcx
	test	r10b, r10b
	je	.L773
.L769:
	mov	r8, rdx
	jmp	.L772
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L771:
	add	r8, 1
	cmp	r9b, r10b
	je	.L770
.L772:
	movzx	r9d, BYTE PTR [r8]
	test	r9b, r9b
	jne	.L771
	movzx	r10d, BYTE PTR 1[rax]
	add	rax, 1
	test	r10b, r10b
	jne	.L769
.L773:
	xor	eax, eax
.L770:
	ret
	.seh_endproc
	.p2align 4
	.globl	strrchr
	.def	strrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strrchr
strrchr:
	.seh_endprologue
	xor	r8d, r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L779:
	movsx	r9d, BYTE PTR [rcx]
	cmp	edx, r9d
	cmove	r8, rcx
	add	rcx, 1
	test	r9b, r9b
	jne	.L779
	mov	rax, r8
	ret
	.seh_endproc
	.p2align 4
	.globl	strstr
	.def	strstr;	.scl	2;	.type	32;	.endef
	.seh_proc	strstr
strstr:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rsi, rdx
	movzx	edx, BYTE PTR [rdx]
	test	dl, dl
	je	.L793
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L783:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L783
	mov	r8, rcx
	sub	rax, rsi
	je	.L781
	lea	rbx, -1[rsi+rax]
	jmp	.L803
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L805:
	add	rcx, 1
	test	al, al
	je	.L804
.L803:
	movzx	eax, BYTE PTR [rcx]
	cmp	al, dl
	jne	.L805
	mov	r8d, edx
	mov	rax, rsi
	mov	r10, rcx
	jmp	.L785
	.p2align 4,,10
	.p2align 3
.L806:
	test	r9b, r9b
	setne	r11b
	cmp	r9b, r8b
	sete	r9b
	test	r11b, r9b
	je	.L786
	movzx	r8d, BYTE PTR 1[r10]
	add	r10, 1
	add	rax, 1
	test	r8b, r8b
	je	.L786
.L785:
	movzx	r9d, BYTE PTR [rax]
	cmp	rax, rbx
	jne	.L806
.L786:
	cmp	r8b, BYTE PTR [rax]
	je	.L793
	add	rcx, 1
	jmp	.L803
	.p2align 4,,10
	.p2align 3
.L804:
	xor	r8d, r8d
.L781:
	mov	rax, r8
	pop	rbx
	pop	rsi
	ret
.L793:
	mov	r8, rcx
	mov	rax, r8
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	copysign
	.def	copysign;	.scl	2;	.type	32;	.endef
	.seh_proc	copysign
copysign:
	.seh_endprologue
	pxor	xmm2, xmm2
	comisd	xmm2, xmm0
	ja	.L817
	comisd	xmm0, xmm2
	jbe	.L811
	comisd	xmm2, xmm1
	ja	.L810
.L811:
	ret
	.p2align 4,,10
	.p2align 3
.L817:
	comisd	xmm1, xmm2
	jbe	.L811
.L810:
	xorpd	xmm0, XMMWORD PTR .LC16[rip]
	ret
	.seh_endproc
	.p2align 4
	.globl	memmem
	.def	memmem;	.scl	2;	.type	32;	.endef
	.seh_proc	memmem
memmem:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, rcx
	test	r9, r9
	je	.L818
	cmp	rdx, r9
	jb	.L829
	sub	rdx, r9
	add	rdx, rcx
	jc	.L829
	movzx	r11d, BYTE PTR [r8]
	jmp	.L824
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L828:
	mov	rax, rcx
.L820:
	cmp	rdx, rax
	jb	.L829
.L824:
	lea	rcx, 1[rax]
	cmp	BYTE PTR [rax], r11b
	jne	.L828
	cmp	r9, 1
	je	.L818
.L823:
	mov	r10d, 1
	jmp	.L821
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L822:
	add	r10, 1
	cmp	r9, r10
	je	.L818
.L821:
	movzx	ebx, BYTE PTR [r8+r10]
	cmp	BYTE PTR [rax+r10], bl
	je	.L822
	cmp	rdx, rcx
	jb	.L829
	lea	rax, 1[rcx]
	cmp	r11b, BYTE PTR [rcx]
	jne	.L820
	mov	r10, rcx
	mov	rcx, rax
	mov	rax, r10
	jmp	.L823
	.p2align 4,,10
	.p2align 3
.L829:
	xor	eax, eax
.L818:
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	mempcpy
	.def	mempcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	mempcpy
mempcpy:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, r8
	test	r8, r8
	je	.L839
	call	memmove
	mov	rcx, rax
.L839:
	lea	rax, [rcx+rbx]
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	frexp
	.def	frexp;	.scl	2;	.type	32;	.endef
	.seh_proc	frexp
frexp:
	.seh_endprologue
	pxor	xmm3, xmm3
	comisd	xmm3, xmm0
	ja	.L867
	movsd	xmm2, QWORD PTR .LC19[rip]
	xor	ecx, ecx
	comisd	xmm0, xmm2
	jb	.L868
.L846:
	movsd	xmm1, QWORD PTR .LC15[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L853:
	mulsd	xmm0, xmm1
	add	eax, 1
	comisd	xmm0, xmm2
	jnb	.L853
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L843
.L870:
	xorpd	xmm0, XMMWORD PTR .LC16[rip]
.L843:
	ret
	.p2align 4,,10
	.p2align 3
.L868:
	movsd	xmm1, QWORD PTR .LC15[rip]
	comisd	xmm1, xmm0
	jbe	.L849
	ucomisd	xmm0, xmm3
	jp	.L859
	jne	.L859
.L849:
	mov	DWORD PTR [rdx], 0
	ret
	.p2align 4,,10
	.p2align 3
.L867:
	movsd	xmm1, QWORD PTR .LC17[rip]
	movapd	xmm2, xmm0
	xorpd	xmm2, XMMWORD PTR .LC16[rip]
	comisd	xmm1, xmm0
	jb	.L869
	movapd	xmm0, xmm2
	mov	ecx, 1
	movsd	xmm2, QWORD PTR .LC19[rip]
	jmp	.L846
	.p2align 4,,10
	.p2align 3
.L869:
	comisd	xmm0, QWORD PTR .LC18[rip]
	jbe	.L849
	movsd	xmm1, QWORD PTR .LC15[rip]
	mov	ecx, 1
.L847:
	movapd	xmm0, xmm2
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L855:
	addsd	xmm0, xmm0
	sub	eax, 1
	comisd	xmm1, xmm0
	ja	.L855
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	jne	.L870
	jmp	.L843
.L859:
	movapd	xmm2, xmm0
	xor	ecx, ecx
	jmp	.L847
	.seh_endproc
	.p2align 4
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	xor	r8d, r8d
	test	rcx, rcx
	je	.L871
	.p2align 5
	.p2align 4
	.p2align 3
.L873:
	mov	rax, rcx
	and	eax, 1
	neg	rax
	and	rax, rdx
	add	rdx, rdx
	add	r8, rax
	shr	rcx
	jne	.L873
.L871:
	mov	rax, r8
	ret
	.seh_endproc
	.p2align 4
	.globl	udivmodsi4
	.def	udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	udivmodsi4
udivmodsi4:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jb	.L877
	jmp	.L878
	.p2align 4,,10
	.p2align 3
.L880:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L879
	test	eax, eax
	je	.L879
.L877:
	test	edx, edx
	jns	.L880
.L878:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L883:
	cmp	ecx, edx
	jb	.L882
	sub	ecx, edx
	or	r9d, eax
.L882:
	shr	edx
	shr	eax
	jne	.L883
	test	r8, r8
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L879:
	xor	r9d, r9d
	test	eax, eax
	jne	.L878
	test	r8, r8
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	__clrsbqi2
	.def	__clrsbqi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbqi2
__clrsbqi2:
	.seh_endprologue
	mov	r8d, 7
	mov	edx, ecx
	sar	dl, 7
	mov	eax, edx
	xor	eax, ecx
	cmp	cl, dl
	je	.L899
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	r8d, -1[rax]
.L899:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__clrsbdi2
	.def	__clrsbdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbdi2
__clrsbdi2:
	.seh_endprologue
	mov	r8d, 63
	mov	rdx, rcx
	mov	rax, rcx
	sar	rdx, 63
	xor	rax, rdx
	cmp	rcx, rdx
	je	.L902
	bsr	rax, rax
	xor	rax, 63
	lea	r8d, -1[rax]
.L902:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__mulsi3
	.def	__mulsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3
__mulsi3:
	.seh_endprologue
	xor	r8d, r8d
	test	ecx, ecx
	je	.L905
	.p2align 5
	.p2align 4
	.p2align 3
.L907:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L907
.L905:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__cmovd
	.def	__cmovd;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovd
__cmovd:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	ebx, r8d
	mov	r10d, r8d
	shr	ebx, 3
	and	r10d, -8
	cmp	rcx, rdx
	jb	.L915
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L947
.L915:
	test	ebx, ebx
	je	.L948
	lea	eax, -1[rbx]
	cmp	eax, 2
	jbe	.L917
	lea	rax, 8[rdx]
	cmp	rcx, rax
	je	.L917
	mov	r11d, r8d
	xor	eax, eax
	shr	r11d, 4
	mov	r9d, r11d
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L918:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, r9
	jne	.L918
	add	r11d, r11d
	cmp	ebx, r11d
	je	.L921
	mov	rax, QWORD PTR [rdx+r11*8]
	mov	QWORD PTR [rcx+r11*8], rax
.L921:
	cmp	r10d, r8d
	jnb	.L910
	mov	esi, r8d
	mov	r9d, r10d
	sub	esi, r10d
	lea	eax, -1[rsi]
	cmp	eax, 6
	jbe	.L913
	lea	rbx, [rcx+r9]
	lea	rdi, 1[rdx+r9]
	mov	r11, rbx
	sub	r11, rdi
	cmp	r11, 14
	jbe	.L913
	cmp	eax, 14
	jbe	.L930
	mov	r11d, esi
	lea	rdi, [rdx+r9]
	xor	eax, eax
	shr	r11d, 4
	sal	r11, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L923:
	movdqu	xmm0, XMMWORD PTR [rdi+rax]
	movups	XMMWORD PTR [rbx+rax], xmm0
	add	rax, 16
	cmp	r11, rax
	jne	.L923
	mov	eax, esi
	and	eax, -16
	add	r10d, eax
	test	sil, 15
	je	.L910
	sub	esi, eax
	lea	r11d, -1[rsi]
	cmp	r11d, 6
	jbe	.L925
.L922:
	add	rax, r9
	mov	r9, QWORD PTR [rdx+rax]
	mov	QWORD PTR [rcx+rax], r9
	mov	eax, esi
	and	eax, -8
	add	r10d, eax
	and	esi, 7
	je	.L910
.L925:
	mov	eax, r10d
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 1[r10]
	cmp	eax, r8d
	jnb	.L910
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 2[r10]
	cmp	eax, r8d
	jnb	.L910
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 3[r10]
	cmp	eax, r8d
	jnb	.L910
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 4[r10]
	cmp	eax, r8d
	jnb	.L910
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 5[r10]
	cmp	eax, r8d
	jnb	.L910
	movzx	r9d, BYTE PTR [rdx+rax]
	add	r10d, 6
	mov	BYTE PTR [rcx+rax], r9b
	cmp	r10d, r8d
	jnb	.L910
	movzx	eax, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], al
.L910:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L947:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L910
	.p2align 4
	.p2align 4
	.p2align 3
.L929:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	jnb	.L929
	pop	rbx
	pop	rsi
	pop	rdi
	ret
.L930:
	xor	eax, eax
	jmp	.L922
	.p2align 4,,10
	.p2align 3
.L948:
	mov	r9d, r10d
	test	r8d, r8d
	je	.L910
.L913:
	mov	rax, r9
	.p2align 5
	.p2align 4
	.p2align 3
.L927:
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	add	rax, 1
	cmp	eax, r8d
	jb	.L927
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L917:
	lea	r11d, 0[0+rbx*8]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L920:
	mov	r9, QWORD PTR [rdx+rax]
	mov	QWORD PTR [rcx+rax], r9
	add	rax, 8
	cmp	r11, rax
	jne	.L920
	jmp	.L921
	.seh_endproc
	.p2align 4
	.globl	__cmovh
	.def	__cmovh;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovh
__cmovh:
	.seh_endprologue
	mov	r11d, r8d
	shr	r11d
	cmp	rcx, rdx
	jb	.L953
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L978
.L953:
	test	r11d, r11d
	je	.L952
	lea	eax, -1[r11]
	cmp	eax, 2
	jbe	.L956
	lea	r10, 2[rdx]
	mov	r9, rcx
	sub	r9, r10
	cmp	r9, 12
	jbe	.L956
	cmp	eax, 6
	jbe	.L966
	mov	r9d, r8d
	xor	eax, eax
	shr	r9d, 4
	mov	r10d, r9d
	sal	r10, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L958:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, r10
	jne	.L958
	lea	eax, 0[0+r9*8]
	cmp	r11d, eax
	je	.L952
	mov	r9d, r11d
	sub	r9d, eax
	lea	r10d, -1[r9]
	cmp	r10d, 2
	jbe	.L960
.L957:
	mov	r10d, eax
	movq	xmm0, QWORD PTR [rdx+r10*2]
	movq	QWORD PTR [rcx+r10*2], xmm0
	mov	r10d, r9d
	and	r10d, -4
	add	eax, r10d
	and	r9d, 3
	je	.L952
.L960:
	mov	r9d, eax
	movzx	r10d, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], r10w
	lea	r9d, 1[rax]
	cmp	r9d, r11d
	jnb	.L952
	movzx	r10d, WORD PTR [rdx+r9*2]
	add	eax, 2
	mov	WORD PTR [rcx+r9*2], r10w
	cmp	eax, r11d
	jnb	.L952
	movzx	r9d, WORD PTR [rdx+rax*2]
	mov	WORD PTR [rcx+rax*2], r9w
.L952:
	test	r8b, 1
	je	.L949
.L979:
	lea	eax, -1[r8]
	movzx	edx, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], dl
.L949:
	ret
	.p2align 4,,10
	.p2align 3
.L978:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L949
	.p2align 4
	.p2align 4
	.p2align 3
.L965:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	jnb	.L965
	ret
.L966:
	mov	r9d, r11d
	xor	eax, eax
	jmp	.L957
	.p2align 4,,10
	.p2align 3
.L956:
	lea	r10d, [r11+r11]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L962:
	movzx	r9d, WORD PTR [rdx+rax]
	mov	WORD PTR [rcx+rax], r9w
	add	rax, 2
	cmp	rax, r10
	jne	.L962
	test	r8b, 1
	je	.L949
	jmp	.L979
	.seh_endproc
	.p2align 4
	.globl	__cmovw
	.def	__cmovw;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovw
__cmovw:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	ebx, r8d
	mov	r10d, r8d
	shr	ebx, 2
	and	r10d, -4
	cmp	rcx, rdx
	jb	.L985
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L1017
.L985:
	test	ebx, ebx
	je	.L1018
	lea	eax, -1[rbx]
	cmp	eax, 2
	jbe	.L987
	lea	r9, 4[rdx]
	mov	rax, rcx
	sub	rax, r9
	cmp	rax, 8
	jbe	.L987
	mov	r11d, r8d
	xor	eax, eax
	shr	r11d, 4
	mov	r9d, r11d
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L988:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, r9
	jne	.L988
	lea	eax, 0[0+r11*4]
	cmp	ebx, eax
	je	.L991
	mov	r9d, eax
	mov	r11d, DWORD PTR [rdx+r9*4]
	mov	DWORD PTR [rcx+r9*4], r11d
	lea	r9d, 1[rax]
	cmp	r9d, ebx
	jnb	.L991
	mov	r11d, DWORD PTR [rdx+r9*4]
	add	eax, 2
	mov	DWORD PTR [rcx+r9*4], r11d
	cmp	eax, ebx
	jnb	.L991
	mov	r9d, DWORD PTR [rdx+rax*4]
	mov	DWORD PTR [rcx+rax*4], r9d
.L991:
	cmp	r10d, r8d
	jnb	.L980
	mov	esi, r8d
	mov	r9d, r10d
	sub	esi, r10d
	lea	eax, -1[rsi]
	cmp	eax, 6
	jbe	.L983
	lea	rbx, [rcx+r9]
	lea	rdi, 1[rdx+r9]
	mov	r11, rbx
	sub	r11, rdi
	cmp	r11, 14
	jbe	.L983
	cmp	eax, 14
	jbe	.L1000
	mov	r11d, esi
	lea	rdi, [rdx+r9]
	xor	eax, eax
	shr	r11d, 4
	sal	r11, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L993:
	movdqu	xmm0, XMMWORD PTR [rdi+rax]
	movups	XMMWORD PTR [rbx+rax], xmm0
	add	rax, 16
	cmp	r11, rax
	jne	.L993
	mov	eax, esi
	and	eax, -16
	add	r10d, eax
	test	sil, 15
	je	.L980
	sub	esi, eax
	lea	r11d, -1[rsi]
	cmp	r11d, 6
	jbe	.L995
.L992:
	add	rax, r9
	mov	r9, QWORD PTR [rdx+rax]
	mov	QWORD PTR [rcx+rax], r9
	mov	eax, esi
	and	eax, -8
	add	r10d, eax
	and	esi, 7
	je	.L980
.L995:
	mov	eax, r10d
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 1[r10]
	cmp	eax, r8d
	jnb	.L980
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 2[r10]
	cmp	eax, r8d
	jnb	.L980
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 3[r10]
	cmp	eax, r8d
	jnb	.L980
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 4[r10]
	cmp	eax, r8d
	jnb	.L980
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 5[r10]
	cmp	eax, r8d
	jnb	.L980
	movzx	r9d, BYTE PTR [rdx+rax]
	add	r10d, 6
	mov	BYTE PTR [rcx+rax], r9b
	cmp	r10d, r8d
	jnb	.L980
	movzx	eax, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], al
.L980:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1017:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L980
	.p2align 4
	.p2align 4
	.p2align 3
.L999:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	jnb	.L999
	pop	rbx
	pop	rsi
	pop	rdi
	ret
.L1000:
	xor	eax, eax
	jmp	.L992
	.p2align 4,,10
	.p2align 3
.L1018:
	mov	r9d, r10d
	test	r8d, r8d
	je	.L980
.L983:
	mov	rax, r9
	.p2align 5
	.p2align 4
	.p2align 3
.L997:
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	add	rax, 1
	cmp	eax, r8d
	jb	.L997
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L987:
	lea	r11d, 0[0+rbx*4]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L990:
	mov	r9d, DWORD PTR [rdx+rax]
	mov	DWORD PTR [rcx+rax], r9d
	add	rax, 4
	cmp	rax, r11
	jne	.L990
	jmp	.L991
	.seh_endproc
	.p2align 4
	.globl	__modi
	.def	__modi;	.scl	2;	.type	32;	.endef
	.seh_proc	__modi
__modi:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	cdq
	idiv	ecx
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__uitod
	.def	__uitod;	.scl	2;	.type	32;	.endef
	.seh_proc	__uitod
__uitod:
	.seh_endprologue
	pxor	xmm0, xmm0
	mov	ecx, ecx
	cvtsi2sd	xmm0, rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	__uitof
	.def	__uitof;	.scl	2;	.type	32;	.endef
	.seh_proc	__uitof
__uitof:
	.seh_endprologue
	pxor	xmm0, xmm0
	mov	ecx, ecx
	cvtsi2ss	xmm0, rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	__ulltod
	.def	__ulltod;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltod
__ulltod:
	.seh_endprologue
	test	rcx, rcx
	js	.L1027
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L1027:
	mov	rax, rcx
	and	ecx, 1
	pxor	xmm0, xmm0
	shr	rax
	or	rax, rcx
	cvtsi2sd	xmm0, rax
	addsd	xmm0, xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	__ulltof
	.def	__ulltof;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltof
__ulltof:
	.seh_endprologue
	test	rcx, rcx
	js	.L1030
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L1030:
	mov	rax, rcx
	and	ecx, 1
	pxor	xmm0, xmm0
	shr	rax
	or	rax, rcx
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	__umodi
	.def	__umodi;	.scl	2;	.type	32;	.endef
	.seh_proc	__umodi
__umodi:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	xor	edx, edx
	div	ecx
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__clzhi2
	.def	__clzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzhi2
__clzhi2:
	.seh_endprologue
	movzx	edx, cx
	test	ch, -128
	jne	.L1036
	mov	eax, edx
	sar	eax, 14
	jne	.L1033
	mov	eax, edx
	shr	eax, 13
	jne	.L1037
	mov	eax, edx
	shr	eax, 12
	jne	.L1038
	mov	eax, edx
	shr	eax, 11
	jne	.L1039
	mov	eax, edx
	shr	eax, 10
	jne	.L1040
	mov	eax, edx
	shr	eax, 9
	jne	.L1041
	mov	eax, edx
	shr	eax, 8
	jne	.L1042
	mov	eax, edx
	shr	eax, 7
	jne	.L1043
	mov	eax, edx
	shr	eax, 6
	jne	.L1044
	mov	eax, edx
	shr	eax, 5
	jne	.L1045
	mov	eax, edx
	shr	eax, 4
	jne	.L1046
	mov	eax, edx
	shr	eax, 3
	jne	.L1047
	mov	eax, edx
	shr	eax, 2
	jne	.L1048
	shr	edx
	jne	.L1049
	mov	eax, 15
	cmp	cx, 1
	adc	eax, 0
.L1033:
	ret
.L1036:
	xor	eax, eax
	ret
.L1047:
	mov	eax, 12
	ret
.L1037:
	mov	eax, 2
	ret
.L1038:
	mov	eax, 3
	ret
.L1039:
	mov	eax, 4
	ret
.L1040:
	mov	eax, 5
	ret
.L1041:
	mov	eax, 6
	ret
.L1042:
	mov	eax, 7
	ret
.L1043:
	mov	eax, 8
	ret
.L1044:
	mov	eax, 9
	ret
.L1045:
	mov	eax, 10
	ret
.L1046:
	mov	eax, 11
	ret
.L1048:
	mov	eax, 13
	ret
.L1049:
	mov	eax, 14
	ret
	.seh_endproc
	.p2align 4
	.globl	__ctzhi2
	.def	__ctzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzhi2
__ctzhi2:
	.seh_endprologue
	test	cl, 1
	jne	.L1054
	test	cl, 2
	jne	.L1055
	test	cl, 4
	jne	.L1056
	test	cl, 8
	jne	.L1057
	test	cl, 16
	jne	.L1058
	test	cl, 32
	jne	.L1059
	test	cl, 64
	jne	.L1060
	test	cl, -128
	jne	.L1061
	test	ch, 1
	jne	.L1062
	test	ch, 2
	jne	.L1063
	test	ch, 4
	jne	.L1064
	test	ch, 8
	jne	.L1065
	test	ch, 16
	jne	.L1066
	test	ch, 32
	jne	.L1067
	test	ch, 64
	jne	.L1068
	xor	eax, eax
	and	ch, -128
	sete	al
	add	eax, 15
	ret
.L1054:
	xor	eax, eax
	ret
.L1055:
	mov	eax, 1
	ret
.L1066:
	mov	eax, 12
	ret
.L1056:
	mov	eax, 2
	ret
.L1057:
	mov	eax, 3
	ret
.L1058:
	mov	eax, 4
	ret
.L1059:
	mov	eax, 5
	ret
.L1060:
	mov	eax, 6
	ret
.L1061:
	mov	eax, 7
	ret
.L1062:
	mov	eax, 8
	ret
.L1063:
	mov	eax, 9
	ret
.L1064:
	mov	eax, 10
	ret
.L1065:
	mov	eax, 11
	ret
.L1067:
	mov	eax, 13
	ret
.L1068:
	mov	eax, 14
	ret
	.seh_endproc
	.p2align 4
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	comiss	xmm0, DWORD PTR .LC20[rip]
	jnb	.L1076
	cvttss2si	eax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L1076:
	subss	xmm0, DWORD PTR .LC20[rip]
	cvttss2si	eax, xmm0
	add	eax, 32768
	ret
	.seh_endproc
	.p2align 4
	.globl	__parityhi2
	.def	__parityhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__parityhi2
__parityhi2:
	.seh_endprologue
	movzx	edx, cx
	and	ecx, 1
	mov	eax, edx
	sar	eax
	and	eax, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 2
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 3
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 4
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 5
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 6
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 7
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 8
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 9
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 10
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 11
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 12
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 13
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	edx, 15
	sar	ecx, 14
	and	ecx, 1
	add	eax, ecx
	add	eax, edx
	and	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__popcounthi2
	.def	__popcounthi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcounthi2
__popcounthi2:
	.seh_endprologue
	movzx	edx, cx
	and	ecx, 1
	mov	eax, edx
	sar	eax
	and	eax, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 2
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 3
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 4
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 5
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 6
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 7
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 8
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 9
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 10
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 11
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 12
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 13
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	edx, 15
	sar	ecx, 14
	and	ecx, 1
	add	eax, ecx
	add	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__mulsi3_iq2000
	.def	__mulsi3_iq2000;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_iq2000
__mulsi3_iq2000:
	.seh_endprologue
	xor	r8d, r8d
	test	ecx, ecx
	je	.L1079
	.p2align 5
	.p2align 4
	.p2align 3
.L1081:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L1081
.L1079:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__mulsi3_lm32
	.def	__mulsi3_lm32;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_lm32
__mulsi3_lm32:
	.seh_endprologue
	xor	r8d, r8d
	test	ecx, ecx
	je	.L1084
	test	edx, edx
	je	.L1084
	.p2align 5
	.p2align 4
	.p2align 3
.L1086:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	r8d, eax
	shr	edx
	jne	.L1086
.L1084:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__udivmodsi4
	.def	__udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4
__udivmodsi4:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jb	.L1092
	jmp	.L1093
	.p2align 4,,10
	.p2align 3
.L1095:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L1094
	test	eax, eax
	je	.L1094
.L1092:
	test	edx, edx
	jns	.L1095
.L1093:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L1098:
	cmp	ecx, edx
	jb	.L1097
	sub	ecx, edx
	or	r9d, eax
.L1097:
	shr	edx
	shr	eax
	jne	.L1098
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L1094:
	xor	r9d, r9d
	test	eax, eax
	jne	.L1093
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	__mspabi_cmpf
	.def	__mspabi_cmpf;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpf
__mspabi_cmpf:
	.seh_endprologue
	mov	eax, -1
	comiss	xmm1, xmm0
	ja	.L1114
	xor	eax, eax
	comiss	xmm0, xmm1
	seta	al
.L1114:
	ret
	.seh_endproc
	.p2align 4
	.globl	__mspabi_cmpd
	.def	__mspabi_cmpd;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpd
__mspabi_cmpd:
	.seh_endprologue
	mov	eax, -1
	comisd	xmm1, xmm0
	ja	.L1117
	xor	eax, eax
	comisd	xmm0, xmm1
	seta	al
.L1117:
	ret
	.seh_endproc
	.p2align 4
	.globl	__mspabi_mpysll
	.def	__mspabi_mpysll;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_mpysll
__mspabi_mpysll:
	.seh_endprologue
	movsx	rax, ecx
	movsx	rdx, edx
	imul	rax, rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	__mspabi_mpyull
	.def	__mspabi_mpyull;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_mpyull
__mspabi_mpyull:
	.seh_endprologue
	mov	eax, ecx
	mov	edx, edx
	imul	rax, rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	__mulhi3
	.def	__mulhi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulhi3
__mulhi3:
	.seh_endprologue
	test	edx, edx
	js	.L1131
	je	.L1127
	xor	r11d, r11d
.L1124:
	mov	r8d, 1
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L1126:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	r9d, eax
	sar	edx
	setne	r10b
	cmp	r8b, 32
	setne	al
	add	r8d, 1
	test	r10b, al
	jne	.L1126
	mov	eax, r9d
	neg	eax
	test	r11d, r11d
	cmovne	r9d, eax
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L1131:
	neg	edx
	mov	r11d, 1
	jmp	.L1124
	.p2align 4,,10
	.p2align 3
.L1127:
	xor	r9d, r9d
	mov	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	__divsi3
	.def	__divsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__divsi3
__divsi3:
	.seh_endprologue
	mov	eax, 1
	xor	r10d, r10d
	test	ecx, ecx
	jns	.L1133
	neg	ecx
	xor	eax, eax
	mov	r10d, 1
.L1133:
	test	edx, edx
	jns	.L1134
	neg	edx
	mov	r10d, eax
.L1134:
	mov	r9d, ecx
	mov	r8d, 1
	cmp	edx, ecx
	jb	.L1135
	jmp	.L1136
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1155:
	test	r8d, r8d
	je	.L1153
.L1135:
	add	edx, edx
	add	r8d, r8d
	cmp	edx, ecx
	jb	.L1155
	test	r8d, r8d
	je	.L1153
.L1136:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L1141:
	cmp	r9d, edx
	jb	.L1140
	sub	r9d, edx
	or	eax, r8d
.L1140:
	shr	edx
	shr	r8d
	jne	.L1141
	mov	edx, eax
	neg	edx
	test	r10d, r10d
	cmovne	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1153:
	xor	eax, eax
	mov	edx, eax
	neg	edx
	test	r10d, r10d
	cmovne	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__modsi3
	.def	__modsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__modsi3
__modsi3:
	.seh_endprologue
	xor	r9d, r9d
	test	ecx, ecx
	jns	.L1157
	neg	ecx
	mov	r9d, 1
.L1157:
	mov	eax, edx
	mov	r8d, 1
	neg	eax
	cmovns	edx, eax
	mov	eax, ecx
	cmp	edx, ecx
	jb	.L1158
	jmp	.L1177
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1179:
	test	r8d, r8d
	je	.L1176
.L1158:
	add	edx, edx
	add	r8d, r8d
	cmp	edx, ecx
	jb	.L1179
	test	r8d, r8d
	je	.L1176
	.p2align 4
	.p2align 4
	.p2align 3
.L1177:
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	cmovnb	eax, ecx
	shr	edx
	shr	r8d
	jne	.L1177
	mov	edx, eax
	neg	edx
	test	r9d, r9d
	cmovne	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1176:
	mov	eax, ecx
	mov	edx, eax
	neg	edx
	test	r9d, r9d
	cmovne	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__udivmodhi4
	.def	__udivmodhi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodhi4
__udivmodhi4:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r9d, 1
	mov	r11d, ecx
	mov	eax, edx
	cmp	dx, cx
	jb	.L1181
	jmp	.L1240
	.p2align 4,,10
	.p2align 3
.L1184:
	lea	r10d, [rax+rax]
	lea	edx, [r9+r9]
	cmp	r10w, r11w
	jnb	.L1183
	test	dx, dx
	je	.L1183
	mov	r9d, edx
	mov	eax, r10d
.L1181:
	test	ax, ax
	jns	.L1184
	xor	edx, edx
	cmp	cx, ax
	jb	.L1207
	mov	r11d, ecx
	mov	edx, r9d
	sub	r11d, eax
.L1207:
	mov	ecx, eax
	mov	ebx, r9d
	shr	cx
	shr	bx
	je	.L1224
.L1188:
	cmp	r11w, cx
	jb	.L1189
	sub	r11d, ecx
	or	edx, ebx
.L1189:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 2
	shr	r10w, 2
	je	.L1224
	cmp	r11w, cx
	jb	.L1190
	sub	r11d, ecx
	or	edx, r10d
.L1190:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 3
	shr	r10w, 3
	je	.L1224
	cmp	r11w, cx
	jb	.L1191
	sub	r11d, ecx
	or	edx, r10d
.L1191:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 4
	shr	r10w, 4
	je	.L1224
	cmp	r11w, cx
	jb	.L1192
	sub	r11d, ecx
	or	edx, r10d
.L1192:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 5
	shr	r10w, 5
	je	.L1224
	cmp	r11w, cx
	jb	.L1193
	sub	r11d, ecx
	or	edx, r10d
.L1193:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 6
	shr	r10w, 6
	je	.L1224
	cmp	r11w, cx
	jb	.L1194
	sub	r11d, ecx
	or	edx, r10d
.L1194:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 7
	shr	r10w, 7
	je	.L1224
	cmp	r11w, cx
	jnb	.L1241
.L1195:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 8
	shr	r10w, 8
	je	.L1224
	cmp	r11w, cx
	jnb	.L1242
.L1196:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 9
	shr	r10w, 9
	je	.L1224
	cmp	r11w, cx
	jnb	.L1243
.L1197:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 10
	shr	r10w, 10
	je	.L1224
	cmp	r11w, cx
	jnb	.L1244
.L1198:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 11
	shr	r10w, 11
	je	.L1224
	cmp	r11w, cx
	jnb	.L1245
.L1199:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 12
	shr	r10w, 12
	je	.L1224
	cmp	r11w, cx
	jb	.L1200
	sub	r11d, ecx
	or	edx, r10d
.L1200:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 13
	shr	r10w, 13
	je	.L1224
	cmp	r11w, cx
	jb	.L1201
	sub	r11d, ecx
	or	edx, r10d
.L1201:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 14
	shr	r10w, 14
	je	.L1224
	cmp	r11w, cx
	jb	.L1202
	sub	r11d, ecx
	or	edx, r10d
.L1202:
	shr	ax, 15
	test	r9w, r9w
	jns	.L1224
	xor	ebx, ebx
	cmp	r11w, ax
	jb	.L1186
	mov	ebx, r11d
	or	edx, 1
	sub	ebx, eax
	jmp	.L1186
	.p2align 4,,10
	.p2align 3
.L1224:
	mov	ebx, r11d
.L1186:
	test	r8d, r8d
	cmove	ebx, edx
	mov	eax, ebx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1183:
	mov	ebx, ecx
	test	dx, dx
	je	.L1186
	cmp	cx, r10w
	jb	.L1187
	mov	r11d, ecx
	mov	ebx, r9d
	and	ax, 32767
	mov	r9d, edx
	mov	ecx, eax
	sub	r11d, r10d
	and	bx, 32767
	mov	eax, r10d
	jmp	.L1188
	.p2align 4,,10
	.p2align 3
.L1241:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1195
	.p2align 4,,10
	.p2align 3
.L1187:
	mov	ebx, r9d
	and	ax, 32767
	mov	r9d, edx
	xor	edx, edx
	mov	ecx, eax
	and	bx, 32767
	mov	eax, r10d
	jmp	.L1188
	.p2align 4,,10
	.p2align 3
.L1242:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1196
	.p2align 4,,10
	.p2align 3
.L1243:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1197
	.p2align 4,,10
	.p2align 3
.L1244:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1198
	.p2align 4,,10
	.p2align 3
.L1245:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1199
.L1240:
	sete	dl
	mov	ebx, 0
	cmovne	ebx, ecx
	movzx	edx, dl
	jmp	.L1186
	.seh_endproc
	.p2align 4
	.globl	__udivmodsi4_libgcc
	.def	__udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jb	.L1247
	jmp	.L1248
	.p2align 4,,10
	.p2align 3
.L1250:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L1249
	test	eax, eax
	je	.L1249
.L1247:
	test	edx, edx
	jns	.L1250
.L1248:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L1253:
	cmp	ecx, edx
	jb	.L1252
	sub	ecx, edx
	or	r9d, eax
.L1252:
	shr	edx
	shr	eax
	jne	.L1253
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L1249:
	xor	r9d, r9d
	test	eax, eax
	jne	.L1248
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	__ashldi3
	.def	__ashldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashldi3
__ashldi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1270
	lea	ecx, -32[rdx]
	xor	eax, eax
	sal	r8d, cl
.L1271:
	sal	r8, 32
	or	rax, r8
.L1269:
	ret
	.p2align 4,,10
	.p2align 3
.L1270:
	mov	rax, rcx
	test	edx, edx
	je	.L1269
	mov	ecx, edx
	mov	r9d, r8d
	sar	r8, 32
	sal	eax, cl
	mov	ecx, 32
	sub	ecx, edx
	shr	r9d, cl
	mov	ecx, edx
	sal	r8d, cl
	or	r8d, r9d
	jmp	.L1271
	.seh_endproc
	.p2align 4
	.globl	__ashlti3
	.def	__ashlti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashlti3
__ashlti3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	r8, QWORD PTR 8[rcx]
	test	dl, 64
	je	.L1276
	lea	ecx, -64[rdx]
	xor	r9d, r9d
	sal	rax, cl
.L1277:
	mov	rcx, rax
	mov	rax, r9
	mov	rdx, rcx
.L1278:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	r11, QWORD PTR 8[rsp]
	movq	xmm1, rdx
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], r11
	movdqa	xmm0, XMMWORD PTR [rsp]
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L1276:
	test	edx, edx
	je	.L1279
	mov	r9, rax
	mov	ecx, edx
	sal	r9, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rax, cl
	mov	ecx, edx
	sal	r8, cl
	or	rax, r8
	jmp	.L1277
	.p2align 4,,10
	.p2align 3
.L1279:
	mov	rdx, r8
	jmp	.L1278
	.seh_endproc
	.p2align 4
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1281
	sar	r8, 32
	lea	ecx, -32[rdx]
	mov	eax, r8d
	sar	r8d, cl
	sar	eax, 31
.L1282:
	sal	rax, 32
	or	rax, r8
.L1280:
	ret
	.p2align 4,,10
	.p2align 3
.L1281:
	mov	rax, rcx
	test	edx, edx
	je	.L1280
	mov	r9, rcx
	mov	ecx, edx
	sar	r9, 32
	mov	eax, r9d
	sar	eax, cl
	mov	ecx, 32
	sub	ecx, edx
	sal	r9d, cl
	mov	ecx, edx
	shr	r8d, cl
	or	r8d, r9d
	jmp	.L1282
	.seh_endproc
	.p2align 4
	.globl	__ashrti3
	.def	__ashrti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrti3
__ashrti3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rax, QWORD PTR 8[rcx]
	test	dl, 64
	je	.L1287
	mov	r10, rax
	lea	ecx, -64[rdx]
	sar	r10, 63
	sar	rax, cl
.L1288:
	mov	rdx, rax
	mov	rax, r10
.L1289:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	rcx, QWORD PTR 8[rsp]
	movq	xmm1, rax
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L1287:
	test	edx, edx
	je	.L1290
	mov	r10, rax
	mov	ecx, edx
	sar	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L1288
	.p2align 4,,10
	.p2align 3
.L1290:
	mov	rdx, r8
	jmp	.L1289
	.seh_endproc
	.p2align 4
	.globl	__bswapdi2
	.def	__bswapdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__bswapdi2
__bswapdi2:
	.seh_endprologue
	mov	rax, rcx
	bswap	rax
	ret
	.seh_endproc
	.p2align 4
	.globl	__bswapsi2
	.def	__bswapsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__bswapsi2
__bswapsi2:
	.seh_endprologue
	mov	eax, ecx
	bswap	eax
	ret
	.seh_endproc
	.p2align 4
	.globl	__clzsi2
	.def	__clzsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzsi2
__clzsi2:
	.seh_endprologue
	xor	r8d, r8d
	cmp	ecx, 65535
	mov	edx, ecx
	mov	ecx, 16
	setbe	r8b
	xor	eax, eax
	sal	r8d, 4
	sub	ecx, r8d
	shr	edx, cl
	mov	ecx, 8
	test	dh, -1
	sete	al
	sal	eax, 3
	sub	ecx, eax
	add	r8d, eax
	xor	eax, eax
	shr	edx, cl
	mov	ecx, 4
	test	dl, -16
	sete	al
	sal	eax, 2
	sub	ecx, eax
	lea	r9d, [rax+r8]
	xor	r8d, r8d
	mov	eax, 2
	shr	edx, cl
	mov	ecx, eax
	test	dl, 12
	sete	r8b
	add	r8d, r8d
	sub	ecx, r8d
	shr	edx, cl
	xor	ecx, ecx
	sub	eax, edx
	and	edx, 2
	cmovne	eax, ecx
	add	r8d, r9d
	add	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__clzti2
	.def	__clzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzti2
__clzti2:
	.seh_endprologue
	xor	eax, eax
	mov	r8, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 8[rcx]
	test	rcx, rcx
	sete	al
	xor	r9d, r9d
	lea	edx, -1[rax]
	movsx	rdx, edx
	and	rdx, rcx
	test	rcx, rcx
	mov	rcx, r9
	cmove	rcx, r8
	or	rdx, rcx
	bsr	rdx, rdx
	sal	eax, 6
	xor	rdx, 63
	add	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__cmpdi2
	.def	__cmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpdi2
__cmpdi2:
	.seh_endprologue
	xor	eax, eax
	mov	r9, rcx
	mov	r8, rdx
	sar	r9, 32
	sar	r8, 32
	cmp	r9d, r8d
	jl	.L1295
	mov	eax, 2
	jg	.L1295
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1295
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1295:
	ret
	.seh_endproc
	.p2align 4
	.globl	__aeabi_lcmp
	.def	__aeabi_lcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_lcmp
__aeabi_lcmp:
	.seh_endprologue
	mov	eax, -1
	mov	r9, rcx
	mov	r8, rdx
	sar	r9, 32
	sar	r8, 32
	cmp	r9d, r8d
	jl	.L1301
	mov	eax, 1
	jg	.L1301
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1301
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1301:
	ret
	.seh_endproc
	.p2align 4
	.globl	__cmpti2
	.def	__cmpti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpti2
__cmpti2:
	.seh_endprologue
	xor	eax, eax
	mov	r9, QWORD PTR [rdx]
	mov	r8, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rdx]
	cmp	QWORD PTR 8[rcx], rdx
	jl	.L1306
	mov	eax, 2
	jg	.L1306
	xor	eax, eax
	cmp	r8, r9
	jb	.L1306
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1306:
	ret
	.seh_endproc
	.p2align 4
	.globl	__ctzsi2
	.def	__ctzsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzsi2
__ctzsi2:
	.seh_endprologue
	xor	edx, edx
	mov	r8d, 2
	test	cx, cx
	mov	eax, ecx
	sete	dl
	sal	edx, 4
	mov	ecx, edx
	shr	eax, cl
	xor	ecx, ecx
	test	al, al
	sete	cl
	sal	ecx, 3
	shr	eax, cl
	add	edx, ecx
	xor	ecx, ecx
	test	al, 15
	sete	cl
	sal	ecx, 2
	shr	eax, cl
	add	edx, ecx
	xor	ecx, ecx
	test	al, 3
	sete	cl
	add	ecx, ecx
	shr	eax, cl
	add	ecx, edx
	and	eax, 3
	mov	edx, eax
	shr	eax
	not	edx
	sub	r8d, eax
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, r8d
	add	eax, ecx
	ret
	.seh_endproc
	.p2align 4
	.globl	__ctzti2
	.def	__ctzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzti2
__ctzti2:
	.seh_endprologue
	xor	eax, eax
	mov	r8, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	test	r8, r8
	cmovne	rdx, rax
	sete	al
	movzx	eax, al
	lea	ecx, -1[rax]
	sal	eax, 6
	movsx	rcx, ecx
	and	rcx, r8
	or	rdx, rcx
	rep bsf	rdx, rdx
	add	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__ffsti2
	.def	__ffsti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ffsti2
__ffsti2:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	test	rax, rax
	jne	.L1315
	xor	eax, eax
	xor	ecx, ecx
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	cmove	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1315:
	rep bsf	rax, rax
	add	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__lshrdi3
	.def	__lshrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrdi3
__lshrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1319
	shr	r8, 32
	lea	ecx, -32[rdx]
	xor	eax, eax
	shr	r8d, cl
.L1320:
	sal	rax, 32
	or	rax, r8
.L1318:
	ret
	.p2align 4,,10
	.p2align 3
.L1319:
	mov	rax, rcx
	test	edx, edx
	je	.L1318
	mov	r9, rcx
	mov	ecx, edx
	shr	r9, 32
	mov	eax, r9d
	shr	eax, cl
	mov	ecx, 32
	sub	ecx, edx
	sal	r9d, cl
	mov	ecx, edx
	shr	r8d, cl
	or	r8d, r9d
	jmp	.L1320
	.seh_endproc
	.p2align 4
	.globl	__lshrti3
	.def	__lshrti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrti3
__lshrti3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rax, QWORD PTR 8[rcx]
	test	dl, 64
	je	.L1325
	lea	ecx, -64[rdx]
	xor	r10d, r10d
	shr	rax, cl
.L1326:
	mov	rdx, rax
	mov	rax, r10
.L1327:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	rcx, QWORD PTR 8[rsp]
	movq	xmm1, rax
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L1325:
	test	edx, edx
	je	.L1328
	mov	r10, rax
	mov	ecx, edx
	shr	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L1326
	.p2align 4,,10
	.p2align 3
.L1328:
	mov	rdx, r8
	jmp	.L1327
	.seh_endproc
	.p2align 4
	.globl	__muldsi3
	.def	__muldsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldsi3
__muldsi3:
	.seh_endprologue
	movzx	r8d, cx
	movzx	eax, dx
	shr	ecx, 16
	mov	r9d, r8d
	shr	edx, 16
	imul	r9d, eax
	imul	eax, ecx
	imul	r8d, edx
	mov	r10d, r9d
	imul	ecx, edx
	movzx	r9d, r9w
	shr	r10d, 16
	add	eax, r10d
	movzx	r10d, ax
	shr	eax, 16
	add	r8d, r10d
	add	eax, ecx
	mov	r10d, r8d
	shr	r8d, 16
	lea	edx, [rax+r8]
	sal	r10d, 16
	sal	rdx, 32
	lea	eax, [r9+r10]
	or	rax, rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	__muldi3_compiler_rt
	.def	__muldi3_compiler_rt;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3_compiler_rt
__muldi3_compiler_rt:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r9, rcx
	movzx	ecx, cx
	mov	r8, rdx
	movzx	edx, dx
	mov	r11d, ecx
	mov	eax, r9d
	imul	r11d, edx
	shr	eax, 16
	imul	edx, eax
	mov	r10d, r11d
	movzx	r11d, r11w
	shr	r10d, 16
	add	edx, r10d
	mov	r10d, r8d
	shr	r10d, 16
	movzx	ebx, dx
	shr	edx, 16
	imul	ecx, r10d
	imul	r10d, eax
	add	ecx, ebx
	mov	eax, ecx
	add	edx, r10d
	shr	ecx, 16
	add	edx, ecx
	sal	eax, 16
	add	eax, r11d
	mov	edx, edx
	sal	rdx, 32
	mov	eax, eax
	or	rax, rdx
	mov	rdx, r8
	sar	rdx, 32
	mov	rcx, rax
	mov	eax, eax
	imul	edx, r9d
	sar	r9, 32
	sar	rcx, 32
	imul	r8d, r9d
	add	edx, ecx
	add	edx, r8d
	mov	edx, edx
	sal	rdx, 32
	or	rax, rdx
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	__mulddi3
	.def	__mulddi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulddi3
__mulddi3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r8d, ecx
	mov	eax, edx
	shr	rcx, 32
	movaps	XMMWORD PTR [rsp], xmm0
	mov	r9, r8
	shr	rdx, 32
	imul	r9, rax
	imul	rax, rcx
	imul	r8, rdx
	mov	r10, r9
	imul	rcx, rdx
	mov	r9d, r9d
	shr	r10, 32
	add	rax, r10
	mov	r10d, eax
	shr	rax, 32
	add	r8, r10
	add	rax, rcx
	mov	rcx, QWORD PTR 8[rsp]
	mov	r10, r8
	shr	r8, 32
	sal	r10, 32
	mov	QWORD PTR 8[rsp], rcx
	add	rax, r8
	add	r9, r10
	movq	xmm1, rax
	mov	QWORD PTR [rsp], r9
	movdqa	xmm0, XMMWORD PTR [rsp]
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
	.seh_endproc
	.p2align 4
	.globl	__multi3
	.def	__multi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__multi3
__multi3:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	r9, QWORD PTR [rdx]
	mov	ebx, r9d
	mov	r10, rax
	shr	r10, 32
	mov	rsi, rdx
	mov	edx, eax
	mov	r11, rcx
	mov	rcx, rdx
	imul	rax, QWORD PTR 8[rsi]
	imul	rcx, rbx
	imul	rbx, r10
	mov	r8, rax
	mov	rdi, rcx
	mov	ecx, ecx
	shr	rdi, 32
	lea	rax, [rbx+rdi]
	mov	rbx, r9
	shr	rbx, 32
	imul	r9, QWORD PTR 8[r11]
	mov	esi, eax
	shr	rax, 32
	imul	rdx, rbx
	imul	r10, rbx
	add	rdx, rsi
	mov	r11, rdx
	add	rax, r10
	shr	rdx, 32
	sal	r11, 32
	add	rax, rdx
	add	rcx, r11
	mov	QWORD PTR 8[rsp], rax
	add	rax, r8
	mov	QWORD PTR [rsp], rcx
	mov	rsi, QWORD PTR [rsp]
	add	rax, r9
	mov	QWORD PTR 8[rsp], rax
	mov	QWORD PTR [rsp], rsi
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 16
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	__negdi2
	.def	__negdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__negdi2
__negdi2:
	.seh_endprologue
	mov	rax, rcx
	neg	rax
	ret
	.seh_endproc
	.p2align 4
	.globl	__negti2
	.def	__negti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__negti2
__negti2:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	xor	edx, edx
	mov	rax, QWORD PTR [rcx]
	neg	rax
	sbb	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rdx
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.p2align 4
	.globl	__paritydi2
	.def	__paritydi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__paritydi2
__paritydi2:
	.seh_endprologue
	mov	rax, rcx
	shr	rax, 32
	xor	eax, ecx
	mov	edx, eax
	shr	edx, 16
	xor	edx, eax
	mov	eax, edx
	shr	eax, 8
	xor	eax, edx
	mov	ecx, eax
	shr	ecx, 4
	xor	ecx, eax
	mov	eax, 27030
	and	ecx, 15
	sar	eax, cl
	and	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__parityti2
	.def	__parityti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__parityti2
__parityti2:
	.seh_endprologue
	mov	rdx, QWORD PTR [rcx]
	xor	rdx, QWORD PTR 8[rcx]
	mov	rax, rdx
	sar	rax, 32
	xor	eax, edx
	mov	edx, eax
	shr	edx, 16
	xor	edx, eax
	mov	eax, edx
	shr	eax, 8
	xor	eax, edx
	mov	ecx, eax
	shr	ecx, 4
	xor	ecx, eax
	mov	eax, 27030
	and	ecx, 15
	sar	eax, cl
	and	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__paritysi2
	.def	__paritysi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__paritysi2
__paritysi2:
	.seh_endprologue
	mov	edx, ecx
	shr	edx, 16
	xor	edx, ecx
	mov	eax, edx
	shr	eax, 8
	xor	eax, edx
	mov	ecx, eax
	shr	ecx, 4
	xor	ecx, eax
	mov	eax, 27030
	and	ecx, 15
	sar	eax, cl
	and	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__popcountdi2
	.def	__popcountdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountdi2
__popcountdi2:
	.seh_endprologue
	movabs	rdx, 6148914691236517205
	mov	rax, rcx
	shr	rax
	and	rax, rdx
	sub	rcx, rax
	movabs	rax, 3689348814741910323
	mov	rdx, rcx
	and	rcx, rax
	shr	rdx, 2
	and	rdx, rax
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 4
	add	rax, rdx
	movabs	rdx, 1085102592571150095
	and	rax, rdx
	mov	rdx, rax
	shr	rdx, 32
	add	eax, edx
	mov	edx, eax
	shr	edx, 16
	add	edx, eax
	mov	eax, edx
	shr	eax, 8
	add	eax, edx
	and	eax, 127
	ret
	.seh_endproc
	.p2align 4
	.globl	__popcountsi2
	.def	__popcountsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountsi2
__popcountsi2:
	.seh_endprologue
	mov	eax, ecx
	shr	eax
	and	eax, 1431655765
	sub	ecx, eax
	mov	edx, ecx
	and	ecx, 858993459
	shr	edx, 2
	and	edx, 858993459
	add	edx, ecx
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
	.seh_endproc
	.p2align 4
	.globl	__popcountti2
	.def	__popcountti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountti2
__popcountti2:
	.seh_endprologue
	movabs	r10, 6148914691236517205
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	r8, rax
	mov	r9, rdx
	shrd	r8, rdx, 1
	shr	r9
	and	r8, r10
	and	r9, r10
	movabs	r10, 3689348814741910323
	sub	rax, r8
	sbb	rdx, r9
	mov	r8, rax
	and	rax, r10
	shrd	r8, rdx, 2
	mov	r9, rdx
	and	rdx, r10
	shr	r9, 2
	and	r8, r10
	and	r9, r10
	add	r8, rax
	adc	r9, rdx
	mov	rax, r8
	mov	rdx, r9
	shrd	rax, r9, 4
	shr	rdx, 4
	add	rax, r8
	movabs	r8, 1085102592571150095
	adc	rdx, r9
	and	rax, r8
	and	rdx, r8
	add	rdx, rax
	mov	rax, rdx
	shr	rax, 32
	add	eax, edx
	mov	edx, eax
	shr	edx, 16
	add	edx, eax
	mov	eax, edx
	shr	eax, 8
	add	eax, edx
	movzx	eax, al
	ret
	.seh_endproc
	.p2align 4
	.globl	__powidf2
	.def	__powidf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powidf2
__powidf2:
	.seh_endprologue
	movsd	xmm2, QWORD PTR .LC19[rip]
	movapd	xmm1, xmm2
	mov	eax, edx
	test	dl, 1
	je	.L1342
	.p2align 4
	.p2align 3
.L1344:
	mulsd	xmm1, xmm0
.L1342:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1343
	mulsd	xmm0, xmm0
	test	al, 1
	jne	.L1344
.L1348:
	mulsd	xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1344
	jmp	.L1348
	.p2align 4,,10
	.p2align 3
.L1343:
	test	edx, edx
	jns	.L1341
	divsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L1341:
	movapd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	__powisf2
	.def	__powisf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powisf2
__powisf2:
	.seh_endprologue
	movss	xmm2, DWORD PTR .LC21[rip]
	movaps	xmm1, xmm2
	mov	eax, edx
	test	dl, 1
	je	.L1350
	.p2align 4
	.p2align 3
.L1352:
	mulss	xmm1, xmm0
.L1350:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1351
	mulss	xmm0, xmm0
	test	al, 1
	jne	.L1352
.L1356:
	mulss	xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1352
	jmp	.L1356
	.p2align 4,,10
	.p2align 3
.L1351:
	test	edx, edx
	jns	.L1349
	divss	xmm2, xmm1
	movaps	xmm1, xmm2
.L1349:
	movaps	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	__ucmpdi2
	.def	__ucmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpdi2
__ucmpdi2:
	.seh_endprologue
	xor	eax, eax
	mov	r8, rcx
	mov	r9, rdx
	shr	r8, 32
	shr	r9, 32
	cmp	r8d, r9d
	jb	.L1357
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L1357
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1357
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1357:
	ret
	.seh_endproc
	.p2align 4
	.globl	__aeabi_ulcmp
	.def	__aeabi_ulcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_ulcmp
__aeabi_ulcmp:
	.seh_endprologue
	mov	eax, -1
	mov	r8, rcx
	mov	r9, rdx
	shr	r8, 32
	shr	r9, 32
	cmp	r8d, r9d
	jb	.L1363
	mov	eax, 1
	cmp	r9d, r8d
	jb	.L1363
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1363
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1363:
	ret
	.seh_endproc
	.p2align 4
	.globl	__ucmpti2
	.def	__ucmpti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpti2
__ucmpti2:
	.seh_endprologue
	xor	eax, eax
	mov	r8, QWORD PTR [rcx]
	mov	r9, QWORD PTR [rdx]
	mov	rcx, QWORD PTR 8[rcx]
	mov	rdx, QWORD PTR 8[rdx]
	cmp	rcx, rdx
	jb	.L1368
	mov	eax, 2
	cmp	rdx, rcx
	jb	.L1368
	xor	eax, eax
	cmp	r8, r9
	jb	.L1368
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1368:
	ret
	.seh_endproc
.lcomm s.0,7,1
.lcomm seed,8,8
	.section .rdata,"dr"
	.align 32
digits:
	.ascii "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\0"
	.align 8
.LC1:
	.word	255
	.word	255
	.word	255
	.word	255
	.align 4
.LC6:
	.long	-8388609
	.align 4
.LC7:
	.long	2139095039
	.align 8
.LC8:
	.long	-1
	.long	-1048577
	.align 8
.LC9:
	.long	-1
	.long	2146435071
	.align 16
.LC10:
	.long	-1
	.long	-1
	.long	65534
	.long	0
	.align 16
.LC11:
	.long	-1
	.long	-1
	.long	32766
	.long	0
	.set	.LC12,.LC14+4
	.align 4
.LC13:
	.long	1056964608
	.align 8
.LC14:
	.long	0
	.long	1073741824
	.align 8
.LC15:
	.long	0
	.long	1071644672
	.align 16
.LC16:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC17:
	.long	0
	.long	-1074790400
	.align 8
.LC18:
	.long	0
	.long	-1075838976
	.align 8
.LC19:
	.long	0
	.long	1072693248
	.align 4
.LC20:
	.long	1191182336
	.align 4
.LC21:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
