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
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rcx
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
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rcx
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
	movzx	edx, BYTE PTR -1[r9+r8]
	mov	BYTE PTR -1[rcx+r8], dl
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
	xor	ebx, ebx
	and	rdx, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L10:
	movdqu	xmm0, XMMWORD PTR [r9+rbx]
	movups	XMMWORD PTR [rcx+rbx], xmm0
	add	rbx, 16
	cmp	rdx, rbx
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
	movzx	r8d, BYTE PTR [r11]
	mov	BYTE PTR [r10], r8b
	cmp	rax, 1
	je	.L6
	movzx	ebx, BYTE PTR 1[r11]
	mov	BYTE PTR 1[r10], bl
	cmp	rax, 2
	je	.L6
	movzx	r9d, BYTE PTR 2[r11]
	mov	BYTE PTR 2[r10], r9b
	cmp	rax, 3
	je	.L6
	movzx	edx, BYTE PTR 3[r11]
	mov	BYTE PTR 3[r10], dl
	cmp	rax, 4
	je	.L6
	movzx	r8d, BYTE PTR 4[r11]
	mov	BYTE PTR 4[r10], r8b
	cmp	rax, 5
	je	.L6
	movzx	ebx, BYTE PTR 5[r11]
	mov	BYTE PTR 5[r10], bl
	cmp	rax, 6
	je	.L6
	movzx	r11d, BYTE PTR 6[r11]
	mov	BYTE PTR 6[r10], r11b
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L18:
	xor	r10d, r10d
	.p2align 5
	.p2align 4
	.p2align 3
.L50:
	movzx	eax, BYTE PTR [r9+r10]
	mov	BYTE PTR [rcx+r10], al
	add	r10, 1
	cmp	r8, r10
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
	movzx	r8d, BYTE PTR 1[rdx]
	add	rdx, 1
	add	rax, 1
	mov	BYTE PTR [rax], r8b
	test	r8b, r8b
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
	movdqa	xmm5, xmm0
	punpckhbw	xmm0, xmm1
	punpcklbw	xmm5, xmm1
	movups	XMMWORD PTR 16[rdx+rax], xmm0
	movups	XMMWORD PTR [rdx+rax], xmm5
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
	movq	xmm2, QWORD PTR .LC1[rip]
	add	r9, r9
	add	rcx, r9
	add	r9, rdx
	mov	rdx, rbx
	movq	xmm4, QWORD PTR [rcx]
	movq	xmm0, QWORD PTR 8[rcx]
	movdqa	xmm1, xmm2
	and	rdx, -8
	lea	rcx, [rdx+rdx]
	neg	rdx
	pand	xmm1, xmm4
	pand	xmm2, xmm0
	add	r10, rcx
	add	rax, rcx
	psrlw	xmm0, 8
	packuswb	xmm1, xmm2
	lea	r8, [r8+rdx*2]
	and	ebx, 7
	psrlw	xmm4, 8
	pshufd	xmm3, xmm1, 8
	packuswb	xmm4, xmm0
	pshufd	xmm5, xmm4, 8
	movdqa	xmm4, xmm5
	punpcklbw	xmm5, xmm3
	punpcklbw	xmm4, xmm3
	pshufd	xmm0, xmm5, 78
	movq	QWORD PTR [r9], xmm4
	movq	QWORD PTR 8[r9], xmm0
	je	.L150
.L155:
	movzx	r11d, WORD PTR [rax]
	rol	r11w, 8
	mov	WORD PTR [r10], r11w
	cmp	r8, 3
	jle	.L150
	movzx	r9d, WORD PTR 2[rax]
	rol	r9w, 8
	mov	WORD PTR 2[r10], r9w
	cmp	r8, 5
	jle	.L150
	movzx	esi, WORD PTR 4[rax]
	rol	si, 8
	mov	WORD PTR 4[r10], si
	cmp	r8, 7
	jle	.L150
	movzx	ebx, WORD PTR 6[rax]
	rol	bx, 8
	mov	WORD PTR 6[r10], bx
	cmp	r8, 9
	jle	.L150
	movzx	edx, WORD PTR 8[rax]
	rol	dx, 8
	mov	WORD PTR 8[r10], dx
	cmp	r8, 11
	jle	.L150
	movzx	ecx, WORD PTR 10[rax]
	rol	cx, 8
	mov	WORD PTR 10[r10], cx
	cmp	r8, 13
	jle	.L150
	movzx	r8d, WORD PTR 12[rax]
	rol	r8w, 8
	mov	WORD PTR 12[r10], r8w
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
	setbe	r8b
	cmp	ecx, 32
	sete	dl
	or	r8d, edx
	movzx	eax, r8b
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
	mov	r8d, 1
	cmp	ecx, 1
	jbe	.L172
	sub	eax, 65529
	xor	r8d, r8d
	cmp	eax, 2
	setbe	r8b
	mov	eax, r8d
	ret
	.p2align 4,,10
	.p2align 3
.L174:
	mov	r8d, 1
.L172:
	mov	eax, r8d
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
	mov	r9d, 1
	cmp	r8d, 8184
	jbe	.L177
	sub	eax, 65532
	xor	r9d, r9d
	cmp	eax, 1048579
	ja	.L177
	not	ecx
	xor	r9d, r9d
	test	cx, -2
	setne	r9b
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L180:
	mov	r9d, 1
.L177:
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L183:
	lea	ecx, 1[rcx]
	xor	r9d, r9d
	and	ecx, 127
	cmp	ecx, 32
	setg	r9b
	mov	eax, r9d
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
	movzx	r10d, BYTE PTR [r8+rdx]
	mov	BYTE PTR -1[rax], r10b
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
	pxor	xmm2, xmm2
	movups	XMMWORD PTR [rcx], xmm2
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
	mov	rcx, QWORD PTR 8[rcx]
	test	rcx, rcx
	je	.L274
	mov	QWORD PTR [rcx], rax
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
	movsx	eax, BYTE PTR [rcx]
	lea	r8d, -9[rax]
	mov	edx, eax
	cmp	r8d, 4
	jbe	.L335
	cmp	dl, 32
	je	.L335
	cmp	dl, 43
	je	.L316
	cmp	dl, 45
	jne	.L340
	movsx	r9d, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	edx, r9d
	sub	r9d, 48
	cmp	r9d, 9
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
	lea	eax, -48[rdx]
	add	r10, 1
	add	ecx, ecx
	movsx	eax, al
	mov	r9d, ecx
	mov	edx, r8d
	sub	r8d, 48
	sub	r9d, eax
	cmp	r8d, 9
	jbe	.L322
	sub	eax, ecx
	test	r11d, r11d
	cmovne	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L340:
	sub	eax, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	eax, 9
	jbe	.L319
.L325:
	xor	eax, eax
.L341:
	ret
	.p2align 4,,10
	.p2align 3
.L316:
	lea	r10, 1[rcx]
	movsx	ecx, BYTE PTR 1[rcx]
	xor	r11d, r11d
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L319
	xor	eax, eax
	jmp	.L341
	.seh_endproc
	.p2align 4
	.globl	atol
	.def	atol;	.scl	2;	.type	32;	.endef
	.seh_proc	atol
atol:
	.seh_endprologue
	jmp	.L366
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L363:
	add	rcx, 1
.L366:
	movsx	eax, BYTE PTR [rcx]
	lea	r8d, -9[rax]
	mov	edx, eax
	cmp	r8d, 4
	jbe	.L363
	cmp	dl, 32
	je	.L363
	cmp	dl, 43
	je	.L346
	cmp	dl, 45
	jne	.L347
	movsx	r9d, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	r11d, 1
	mov	edx, r9d
	sub	r9d, 48
	cmp	r9d, 9
	ja	.L354
.L348:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L351:
	lea	ecx, [r9+r9*4]
	movsx	r8d, BYTE PTR 1[r10]
	lea	eax, -48[rdx]
	add	r10, 1
	add	ecx, ecx
	movsx	eax, al
	mov	r9d, ecx
	mov	edx, r8d
	sub	r8d, 48
	sub	r9d, eax
	cmp	r8d, 9
	jbe	.L351
	sub	eax, ecx
	test	r11d, r11d
	cmovne	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L347:
	sub	eax, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	eax, 9
	jbe	.L348
.L354:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L346:
	lea	r10, 1[rcx]
	movsx	ecx, BYTE PTR 1[rcx]
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	ja	.L354
	xor	r11d, r11d
	jmp	.L348
	.seh_endproc
	.p2align 4
	.globl	atoll
	.def	atoll;	.scl	2;	.type	32;	.endef
	.seh_proc	atoll
atoll:
	.seh_endprologue
	jmp	.L394
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L390:
	add	rcx, 1
.L394:
	movsx	eax, BYTE PTR [rcx]
	lea	r8d, -9[rax]
	mov	edx, eax
	cmp	r8d, 4
	jbe	.L390
	cmp	dl, 32
	je	.L390
	cmp	dl, 43
	je	.L371
	cmp	dl, 45
	jne	.L395
	movsx	r9d, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	edx, r9d
	sub	r9d, 48
	cmp	r9d, 9
	ja	.L380
	mov	r11d, 1
.L374:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L377:
	lea	rcx, [r9+r9*4]
	movsx	r8d, BYTE PTR 1[r10]
	lea	eax, -48[rdx]
	add	r10, 1
	add	rcx, rcx
	movsx	rax, al
	mov	r9, rcx
	mov	edx, r8d
	sub	r8d, 48
	sub	r9, rax
	cmp	r8d, 9
	jbe	.L377
	sub	rax, rcx
	test	r11d, r11d
	cmovne	rax, r9
	ret
	.p2align 4,,10
	.p2align 3
.L395:
	sub	eax, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	eax, 9
	jbe	.L374
.L380:
	xor	eax, eax
.L396:
	ret
	.p2align 4,,10
	.p2align 3
.L371:
	lea	r10, 1[rcx]
	movsx	ecx, BYTE PTR 1[rcx]
	xor	r11d, r11d
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L374
	xor	eax, eax
	jmp	.L396
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
.L410:
	test	rbx, rbx
	je	.L398
.L411:
	mov	r14, rbx
	mov	rcx, r12
	shr	r14
	mov	rsi, r14
	imul	rsi, rbp
	add	rsi, rdi
	mov	rdx, rsi
	call	r13
	test	eax, eax
	js	.L402
	je	.L397
	sub	rbx, 1
	lea	rdi, [rsi+rbp]
	sub	rbx, r14
	test	rbx, rbx
	jne	.L411
.L398:
	xor	esi, esi
.L397:
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
.L402:
	mov	rbx, r14
	jmp	.L410
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
	je	.L417
	.p2align 4
	.p2align 3
.L425:
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
	je	.L412
	jle	.L415
	sub	r14d, 1
	lea	rsi, [rbx+rdi]
	sar	r14d
	jne	.L425
.L417:
	xor	ebx, ebx
.L412:
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
.L415:
	test	r15d, r15d
	je	.L417
	mov	r14d, r15d
	jmp	.L425
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
	jne	.L435
	jmp	.L438
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L437:
	movzx	eax, WORD PTR 2[rcx]
	add	rcx, 2
	test	ax, ax
	je	.L438
.L435:
	cmp	dx, ax
	jne	.L437
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L438:
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
	je	.L443
	jmp	.L444
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L445:
	movzx	r8d, WORD PTR [rcx+rax]
	add	rax, 2
	movzx	r9d, WORD PTR -2[rdx+rax]
	cmp	r8w, r9w
	jne	.L444
.L443:
	test	r8w, r8w
	jne	.L445
.L444:
	mov	eax, -1
	cmp	r8w, r9w
	jb	.L442
	xor	eax, eax
	cmp	r9w, r8w
	setb	al
.L442:
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
.L452:
	movzx	r9d, WORD PTR [rdx+r8]
	mov	WORD PTR [rax+r8], r9w
	add	r8, 2
	test	r9w, r9w
	jne	.L452
	ret
	.seh_endproc
	.p2align 4
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	cmp	WORD PTR [rcx], 0
	je	.L457
	mov	rax, rcx
	.p2align 4
	.p2align 4
	.p2align 3
.L456:
	add	rax, 2
	cmp	WORD PTR [rax], 0
	jne	.L456
	sub	rax, rcx
	sar	rax
	ret
	.p2align 4,,10
	.p2align 3
.L457:
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
	jne	.L460
	jmp	.L466
	.p2align 4,,10
	.p2align 3
.L473:
	test	ax, ax
	je	.L464
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L466
.L460:
	movzx	eax, WORD PTR [rcx]
	cmp	WORD PTR [rdx], ax
	je	.L473
.L464:
	movzx	ecx, WORD PTR [rcx]
	movzx	edx, WORD PTR [rdx]
	cmp	cx, dx
	jb	.L474
	cmp	dx, cx
	setb	r8b
	movzx	eax, r8b
	ret
	.p2align 4,,10
	.p2align 3
.L474:
	mov	eax, -1
	ret
	.p2align 4,,10
	.p2align 3
.L466:
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
	jne	.L476
	jmp	.L479
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L478:
	add	rcx, 2
	sub	r8, 1
	je	.L479
.L476:
	cmp	WORD PTR [rcx], dx
	jne	.L478
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L479:
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
	jne	.L484
	jmp	.L489
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L486:
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L489
.L484:
	movzx	eax, WORD PTR [rcx]
	cmp	ax, WORD PTR [rdx]
	je	.L486
	movzx	edx, WORD PTR [rdx]
	cmp	ax, dx
	jb	.L495
	cmp	dx, ax
	setb	cl
	movzx	eax, cl
	ret
	.p2align 4,,10
	.p2align 3
.L489:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L495:
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
	je	.L497
	add	r8, r8
	call	memcpy
	mov	rcx, rax
.L497:
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
	je	.L532
	mov	rax, rcx
	lea	r10, [r8+r8]
	lea	r9, -1[r8]
	sub	rax, rdx
	cmp	rax, r10
	jb	.L503
	test	r8, r8
	je	.L532
	cmp	r9, 2
	jbe	.L522
	lea	rbx, 2[rdx]
	mov	rsi, rcx
	sub	rsi, rbx
	cmp	rsi, 12
	jbe	.L522
	cmp	r9, 6
	jbe	.L523
	mov	rbx, r8
	xor	esi, esi
	xor	r11d, r11d
	shr	rbx, 3
	.p2align 5
	.p2align 4
	.p2align 3
.L514:
	movdqu	xmm0, XMMWORD PTR [rdx+rsi]
	add	r11, 1
	movups	XMMWORD PTR [rcx+rsi], xmm0
	add	rsi, 16
	cmp	rbx, r11
	jne	.L514
	mov	r10, r8
	and	r10, -8
	lea	rax, [r10+r10]
	sub	r9, r10
	lea	r11, [rdx+rax]
	add	rax, rcx
	test	r8b, 7
	je	.L532
	sub	r8, r10
	lea	rbx, -1[r8]
	cmp	rbx, 2
	jbe	.L517
.L513:
	mov	rdx, QWORD PTR [rdx+r10*2]
	mov	QWORD PTR [rcx+r10*2], rdx
	mov	r10, r8
	and	r10, -4
	sub	r9, r10
	add	r10, r10
	add	r11, r10
	add	rax, r10
	and	r8d, 3
	je	.L532
.L517:
	movzx	r8d, WORD PTR [r11]
	mov	WORD PTR [rax], r8w
	test	r9, r9
	je	.L532
	movzx	esi, WORD PTR 2[r11]
	mov	WORD PTR 2[rax], si
	cmp	r9, 1
	je	.L532
	movzx	r9d, WORD PTR 4[r11]
	mov	WORD PTR 4[rax], r9w
.L532:
	mov	rax, rcx
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L503:
	test	r8, r8
	je	.L532
	cmp	r9, 2
	jbe	.L553
	mov	rbx, rcx
	sub	rbx, rdx
	add	rbx, 6
	cmp	rbx, 4
	jbe	.L553
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
.L507:
	mov	r11, QWORD PTR [rsi+rax]
	mov	QWORD PTR [r10+rax], r11
	sub	rax, 8
	cmp	rax, rbx
	jne	.L507
	mov	r10, r8
	and	r10, -4
	sub	r9, r10
	and	r8d, 3
	je	.L532
	movzx	r8d, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], r8w
	test	r9, r9
	je	.L532
	sub	r9, 1
	movzx	ebx, WORD PTR [rdx+r9*2]
	lea	rsi, [r9+r9]
	mov	WORD PTR [rcx+r9*2], bx
	je	.L532
	movzx	edx, WORD PTR -2[rdx+rsi]
	mov	WORD PTR -2[rcx+rsi], dx
	jmp	.L532
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L553:
	movzx	eax, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], ax
	sub	r9, 1
	jb	.L532
	movzx	eax, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], ax
	sub	r9, 1
	jnb	.L553
	jmp	.L532
	.p2align 4,,10
	.p2align 3
.L522:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L554:
	movzx	r11d, WORD PTR [rdx+rax*2]
	mov	WORD PTR [rcx+rax*2], r11w
	add	rax, 1
	cmp	r8, rax
	jne	.L554
	jmp	.L532
.L523:
	mov	r11, rdx
	mov	rax, rcx
	xor	r10d, r10d
	jmp	.L513
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
	je	.L557
	cmp	r11, 6
	jbe	.L563
	movd	xmm0, edx
	mov	r10, r8
	xor	eax, eax
	punpcklwd	xmm0, xmm0
	shr	r10, 3
	pshufd	xmm1, xmm0, 0
	.p2align 5
	.p2align 4
	.p2align 3
.L559:
	mov	rcx, rax
	add	rax, 1
	sal	rcx, 4
	movups	XMMWORD PTR [r9+rcx], xmm1
	cmp	r10, rax
	jne	.L559
	mov	rax, r8
	and	rax, -8
	sub	r11, rax
	lea	rcx, [r9+rax*2]
	test	r8b, 7
	je	.L557
.L558:
	sub	r8, rax
	lea	r10, -1[r8]
	cmp	r10, 2
	jbe	.L561
	movd	xmm2, edx
	pshuflw	xmm3, xmm2, 0
	movq	QWORD PTR [r9+rax*2], xmm3
	mov	rax, r8
	and	rax, -4
	sub	r11, rax
	and	r8d, 3
	lea	rcx, [rcx+rax*2]
	je	.L557
.L561:
	mov	WORD PTR [rcx], dx
	test	r11, r11
	je	.L557
	mov	WORD PTR 2[rcx], dx
	cmp	r11, 1
	je	.L557
	mov	WORD PTR 4[rcx], dx
.L557:
	mov	rax, r9
	ret
.L563:
	xor	eax, eax
	jmp	.L558
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
	jnb	.L581
	test	r8, r8
	je	.L580
	.p2align 5
	.p2align 4
	.p2align 3
.L583:
	movzx	edx, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[r9+r8], dl
	sub	r8, 1
	jne	.L583
.L580:
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L581:
	je	.L580
	test	r8, r8
	je	.L580
	lea	rax, -1[r8]
	cmp	rax, 6
	jbe	.L594
	lea	r10, 1[rcx]
	sub	rdx, r10
	cmp	rdx, 14
	jbe	.L594
	cmp	rax, 14
	jbe	.L595
	mov	rdx, r8
	xor	ebx, ebx
	and	rdx, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L586:
	movdqu	xmm0, XMMWORD PTR [rcx+rbx]
	movups	XMMWORD PTR [r9+rbx], xmm0
	add	rbx, 16
	cmp	rdx, rbx
	jne	.L586
	mov	rax, r8
	lea	r10, [r9+rdx]
	lea	r11, [rcx+rdx]
	sub	rax, rdx
	cmp	rdx, r8
	je	.L580
	lea	rbx, -1[rax]
	mov	r8, rax
	cmp	rbx, 6
	jbe	.L589
.L585:
	mov	rcx, QWORD PTR [rcx+rdx]
	mov	QWORD PTR [r9+rdx], rcx
	mov	r9, r8
	and	r9, -8
	add	r10, r9
	add	r11, r9
	sub	rax, r9
	and	r8d, 7
	je	.L580
.L589:
	movzx	r8d, BYTE PTR [r11]
	mov	BYTE PTR [r10], r8b
	cmp	rax, 1
	je	.L580
	movzx	edx, BYTE PTR 1[r11]
	mov	BYTE PTR 1[r10], dl
	cmp	rax, 2
	je	.L580
	movzx	ebx, BYTE PTR 2[r11]
	mov	BYTE PTR 2[r10], bl
	cmp	rax, 3
	je	.L580
	movzx	ecx, BYTE PTR 3[r11]
	mov	BYTE PTR 3[r10], cl
	cmp	rax, 4
	je	.L580
	movzx	r9d, BYTE PTR 4[r11]
	mov	BYTE PTR 4[r10], r9b
	cmp	rax, 5
	je	.L580
	movzx	r8d, BYTE PTR 5[r11]
	mov	BYTE PTR 5[r10], r8b
	cmp	rax, 6
	je	.L580
	movzx	r11d, BYTE PTR 6[r11]
	mov	BYTE PTR 6[r10], r11b
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L594:
	xor	r10d, r10d
	.p2align 5
	.p2align 4
	.p2align 3
.L626:
	movzx	eax, BYTE PTR [rcx+r10]
	mov	BYTE PTR [r9+r10], al
	add	r10, 1
	cmp	r8, r10
	jne	.L626
	pop	rbx
	ret
.L595:
	mov	r10, r9
	mov	r11, rcx
	mov	rax, r8
	xor	edx, edx
	jmp	.L585
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
	jmp	.L643
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L641:
	cmp	ecx, 32
	je	.L645
.L643:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L641
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L645:
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
	je	.L646
	mov	eax, ecx
	and	eax, 1
	jne	.L646
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L648:
	sar	ecx
	add	eax, 1
	test	cl, 1
	je	.L648
.L646:
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
	ja	.L653
	xor	eax, eax
	comiss	xmm0, DWORD PTR .LC7[rip]
	seta	al
.L653:
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
	ja	.L656
	xor	eax, eax
	comisd	xmm0, QWORD PTR .LC9[rip]
	seta	al
.L656:
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
	ja	.L662
	fld	TBYTE PTR .LC11[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L659
	.p2align 4,,10
	.p2align 3
.L662:
	fstp	st(0)
.L659:
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
	jp	.L665
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm1, xmm0
	jp	.L672
	jne	.L672
.L665:
	ret
	.p2align 4,,10
	.p2align 3
.L672:
	movss	xmm2, DWORD PTR .LC12[rip]
	test	edx, edx
	jns	.L667
	movss	xmm2, DWORD PTR .LC13[rip]
.L667:
	test	dl, 1
	je	.L668
	.p2align 4
	.p2align 3
.L669:
	mulss	xmm0, xmm2
.L668:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L665
	mulss	xmm2, xmm2
	test	dl, 1
	jne	.L669
.L679:
	mulss	xmm2, xmm2
	mov	ecx, edx
	shr	ecx, 31
	add	edx, ecx
	sar	edx
	test	dl, 1
	jne	.L669
	jmp	.L679
	.seh_endproc
	.p2align 4
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L681
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm1, xmm0
	jp	.L688
	jne	.L688
.L681:
	ret
	.p2align 4,,10
	.p2align 3
.L688:
	movsd	xmm2, QWORD PTR .LC14[rip]
	test	edx, edx
	jns	.L683
	movsd	xmm2, QWORD PTR .LC15[rip]
.L683:
	test	dl, 1
	je	.L684
	.p2align 4
	.p2align 3
.L685:
	mulsd	xmm0, xmm2
.L684:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L681
	mulsd	xmm2, xmm2
	test	dl, 1
	jne	.L685
.L695:
	mulsd	xmm2, xmm2
	mov	ecx, edx
	shr	ecx, 31
	add	edx, ecx
	sar	edx
	test	dl, 1
	jne	.L685
	jmp	.L695
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
	jp	.L697
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L704
	jne	.L704
	jmp	.L697
	.p2align 4,,10
	.p2align 3
.L713:
	fstp	st(0)
.L697:
	fstp	TBYTE PTR [rax]
	ret
	.p2align 4,,10
	.p2align 3
.L704:
	test	r8d, r8d
	js	.L711
	fld	DWORD PTR .LC12[rip]
.L699:
	test	r8b, 1
	je	.L700
	.p2align 4
	.p2align 3
.L701:
	fmul	st(1), st
.L700:
	mov	edx, r8d
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	je	.L713
	fmul	st, st(0)
	test	r8b, 1
	jne	.L701
.L712:
	mov	ecx, r8d
	fmul	st, st(0)
	shr	ecx, 31
	add	r8d, ecx
	sar	r8d
	test	r8b, 1
	jne	.L701
	jmp	.L712
	.p2align 4,,10
	.p2align 3
.L711:
	fld	DWORD PTR .LC13[rip]
	jmp	.L699
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
	je	.L715
	lea	rax, -1[r8]
	cmp	rax, 14
	jbe	.L721
	mov	r9, r8
	xor	ebx, ebx
	and	r9, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L717:
	movdqu	xmm2, XMMWORD PTR [rcx+rbx]
	movdqu	xmm0, XMMWORD PTR [rdx+rbx]
	pxor	xmm0, xmm2
	movups	XMMWORD PTR [rcx+rbx], xmm0
	add	rbx, 16
	cmp	rbx, r9
	jne	.L717
	mov	r11, r8
	lea	rax, [rcx+r9]
	lea	r10, [rdx+r9]
	sub	r11, r9
	cmp	r8, r9
	je	.L715
.L716:
	sub	r8, r9
	lea	rbx, -1[r8]
	cmp	rbx, 6
	jbe	.L719
	lea	rbx, [rcx+r9]
	movq	xmm3, QWORD PTR [rdx+r9]
	mov	rdx, r8
	movq	xmm1, QWORD PTR [rbx]
	and	rdx, -8
	add	rax, rdx
	add	r10, rdx
	sub	r11, rdx
	and	r8d, 7
	pxor	xmm3, xmm1
	movq	QWORD PTR [rbx], xmm3
	je	.L715
.L719:
	movzx	r8d, BYTE PTR [r10]
	xor	BYTE PTR [rax], r8b
	cmp	r11, 1
	je	.L715
	movzx	r9d, BYTE PTR 1[r10]
	xor	BYTE PTR 1[rax], r9b
	cmp	r11, 2
	je	.L715
	movzx	ebx, BYTE PTR 2[r10]
	xor	BYTE PTR 2[rax], bl
	cmp	r11, 3
	je	.L715
	movzx	edx, BYTE PTR 3[r10]
	xor	BYTE PTR 3[rax], dl
	cmp	r11, 4
	je	.L715
	movzx	r8d, BYTE PTR 4[r10]
	xor	BYTE PTR 4[rax], r8b
	cmp	r11, 5
	je	.L715
	movzx	r9d, BYTE PTR 5[r10]
	xor	BYTE PTR 5[rax], r9b
	cmp	r11, 6
	je	.L715
	movzx	r10d, BYTE PTR 6[r10]
	xor	BYTE PTR 6[rax], r10b
.L715:
	mov	rax, rcx
	pop	rbx
	ret
.L721:
	mov	rax, rcx
	mov	r10, rdx
	mov	r11, r8
	xor	r9d, r9d
	jmp	.L716
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
	je	.L748
	.p2align 4
	.p2align 4
	.p2align 3
.L749:
	add	r9, 1
	cmp	BYTE PTR [r9], 0
	jne	.L749
.L748:
	test	r8, r8
	jne	.L750
	jmp	.L751
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L752:
	add	rdx, 1
	add	r9, 1
	sub	r8, 1
	je	.L751
.L750:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [r9], r10b
	test	r10b, r10b
	jne	.L752
	ret
	.p2align 4,,10
	.p2align 3
.L751:
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
	je	.L761
.L762:
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L764
.L761:
	ret
	.p2align 4,,10
	.p2align 3
.L764:
	add	rax, 1
	cmp	rdx, rax
	jne	.L762
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
	je	.L775
.L771:
	mov	r8, rdx
	jmp	.L774
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L773:
	add	r8, 1
	cmp	r9b, r10b
	je	.L772
.L774:
	movzx	r9d, BYTE PTR [r8]
	test	r9b, r9b
	jne	.L773
	movzx	r10d, BYTE PTR 1[rax]
	add	rax, 1
	test	r10b, r10b
	jne	.L771
.L775:
	xor	eax, eax
.L772:
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
.L780:
	movsx	r9d, BYTE PTR [rcx]
	cmp	r9d, edx
	cmove	r8, rcx
	add	rcx, 1
	test	r9b, r9b
	jne	.L780
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
	je	.L794
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L784:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L784
	mov	r11, rcx
	sub	rax, rsi
	je	.L782
	lea	rbx, -1[rsi+rax]
	jmp	.L804
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L806:
	add	rcx, 1
	test	r8b, r8b
	je	.L805
.L804:
	movzx	r8d, BYTE PTR [rcx]
	cmp	r8b, dl
	jne	.L806
	mov	r8d, edx
	mov	rax, rsi
	mov	r10, rcx
	jmp	.L786
	.p2align 4,,10
	.p2align 3
.L807:
	test	r9b, r9b
	setne	r11b
	cmp	r9b, r8b
	sete	r9b
	test	r11b, r9b
	je	.L787
	movzx	r8d, BYTE PTR 1[r10]
	add	r10, 1
	add	rax, 1
	test	r8b, r8b
	je	.L787
.L786:
	movzx	r9d, BYTE PTR [rax]
	cmp	rax, rbx
	jne	.L807
.L787:
	cmp	r8b, BYTE PTR [rax]
	je	.L794
	add	rcx, 1
	jmp	.L804
	.p2align 4,,10
	.p2align 3
.L805:
	xor	r11d, r11d
.L782:
	mov	rax, r11
	pop	rbx
	pop	rsi
	ret
.L794:
	mov	r11, rcx
	mov	rax, r11
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
	ja	.L818
	comisd	xmm0, xmm2
	jbe	.L812
	comisd	xmm2, xmm1
	ja	.L811
.L812:
	ret
	.p2align 4,,10
	.p2align 3
.L818:
	comisd	xmm1, xmm2
	jbe	.L812
.L811:
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
	je	.L819
	cmp	rdx, r9
	jb	.L830
	sub	rdx, r9
	add	rdx, rcx
	jc	.L830
	movzx	r11d, BYTE PTR [r8]
	jmp	.L825
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L829:
	mov	rax, rcx
.L821:
	cmp	rdx, rax
	jb	.L830
.L825:
	lea	rcx, 1[rax]
	cmp	BYTE PTR [rax], r11b
	jne	.L829
	cmp	r9, 1
	je	.L819
.L824:
	mov	r10d, 1
	jmp	.L822
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L823:
	add	r10, 1
	cmp	r9, r10
	je	.L819
.L822:
	movzx	ebx, BYTE PTR [r8+r10]
	cmp	BYTE PTR [rax+r10], bl
	je	.L823
	cmp	rdx, rcx
	jb	.L830
	lea	rax, 1[rcx]
	cmp	r11b, BYTE PTR [rcx]
	jne	.L821
	mov	r10, rcx
	mov	rcx, rax
	mov	rax, r10
	jmp	.L824
	.p2align 4,,10
	.p2align 3
.L830:
	xor	eax, eax
.L819:
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
	je	.L840
	call	memmove
	mov	rcx, rax
.L840:
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
	pxor	xmm2, xmm2
	comisd	xmm2, xmm0
	ja	.L868
	movsd	xmm5, QWORD PTR .LC19[rip]
	xor	ecx, ecx
	comisd	xmm0, xmm5
	jb	.L869
.L847:
	movsd	xmm2, QWORD PTR .LC15[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L854:
	mulsd	xmm0, xmm2
	add	eax, 1
	comisd	xmm0, xmm5
	jnb	.L854
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L844
.L871:
	xorpd	xmm0, XMMWORD PTR .LC16[rip]
.L844:
	ret
	.p2align 4,,10
	.p2align 3
.L869:
	movsd	xmm1, QWORD PTR .LC15[rip]
	comisd	xmm1, xmm0
	jbe	.L850
	ucomisd	xmm0, xmm2
	jp	.L860
	jne	.L860
.L850:
	mov	DWORD PTR [rdx], 0
	ret
	.p2align 4,,10
	.p2align 3
.L868:
	movsd	xmm4, QWORD PTR .LC17[rip]
	movapd	xmm3, xmm0
	xorpd	xmm3, XMMWORD PTR .LC16[rip]
	comisd	xmm4, xmm0
	jb	.L870
	movsd	xmm5, QWORD PTR .LC19[rip]
	movapd	xmm0, xmm3
	mov	ecx, 1
	jmp	.L847
	.p2align 4,,10
	.p2align 3
.L870:
	comisd	xmm0, QWORD PTR .LC18[rip]
	jbe	.L850
	movsd	xmm1, QWORD PTR .LC15[rip]
	mov	ecx, 1
.L848:
	movapd	xmm0, xmm3
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L856:
	addsd	xmm0, xmm0
	sub	eax, 1
	comisd	xmm1, xmm0
	ja	.L856
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	jne	.L871
	jmp	.L844
.L860:
	movapd	xmm3, xmm0
	xor	ecx, ecx
	jmp	.L848
	.seh_endproc
	.p2align 4
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	xor	r8d, r8d
	test	rcx, rcx
	je	.L872
	.p2align 5
	.p2align 4
	.p2align 3
.L874:
	mov	rax, rcx
	and	eax, 1
	neg	rax
	and	rax, rdx
	add	rdx, rdx
	add	r8, rax
	shr	rcx
	jne	.L874
.L872:
	mov	rax, r8
	ret
	.seh_endproc
	.p2align 4
	.globl	udivmodsi4
	.def	udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	udivmodsi4
udivmodsi4:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r9d, 1
	cmp	edx, ecx
	jb	.L878
	jmp	.L901
	.p2align 4,,10
	.p2align 3
.L881:
	add	edx, edx
	add	r9d, r9d
	cmp	edx, ecx
	jnb	.L880
	test	r9d, r9d
	je	.L880
.L878:
	test	edx, edx
	jns	.L881
.L882:
	xor	eax, eax
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L884:
	mov	r10d, ecx
	sub	r10d, edx
	cmp	ecx, edx
	setnb	r11b
	test	r11b, r11b
	cmovne	ecx, r10d
	mov	r10d, ebx
	cmovne	r10d, r9d
	shr	edx
	or	eax, r10d
	shr	r9d
	jne	.L884
.L883:
	test	r8, r8
	cmovne	eax, ecx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L880:
	xor	eax, eax
	test	r9d, r9d
	jne	.L882
	test	r8, r8
	cmovne	eax, ecx
	pop	rbx
	ret
.L901:
	mov	eax, ecx
	sub	eax, edx
	cmp	ecx, edx
	setnb	dl
	cmovnb	ecx, eax
	movzx	eax, dl
	jmp	.L883
	.seh_endproc
	.p2align 4
	.globl	__clrsbqi2
	.def	__clrsbqi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbqi2
__clrsbqi2:
	.seh_endprologue
	mov	r9d, 7
	mov	edx, ecx
	sar	dl, 7
	mov	eax, edx
	xor	eax, ecx
	cmp	cl, dl
	je	.L904
	movsx	ecx, al
	sal	ecx, 8
	bsr	r8d, ecx
	xor	r8d, 31
	lea	r9d, -1[r8]
.L904:
	mov	eax, r9d
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
	je	.L907
	bsr	rcx, rax
	xor	rcx, 63
	lea	r8d, -1[rcx]
.L907:
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
	je	.L910
	.p2align 5
	.p2align 4
	.p2align 3
.L912:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L912
.L910:
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
	jb	.L920
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L952
.L920:
	test	ebx, ebx
	je	.L953
	lea	edi, -1[rbx]
	cmp	edi, 2
	jbe	.L922
	lea	r9, 8[rdx]
	cmp	rcx, r9
	je	.L922
	mov	r11d, r8d
	xor	eax, eax
	shr	r11d, 4
	mov	esi, r11d
	sal	rsi, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L923:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, rsi
	jne	.L923
	add	r11d, r11d
	cmp	ebx, r11d
	je	.L926
	mov	rbx, QWORD PTR [rdx+r11*8]
	mov	QWORD PTR [rcx+r11*8], rbx
.L926:
	cmp	r10d, r8d
	jnb	.L915
	mov	esi, r8d
	mov	r9d, r10d
	sub	esi, r10d
	lea	eax, -1[rsi]
	cmp	eax, 6
	jbe	.L918
	lea	rbx, [rcx+r9]
	lea	rdi, 1[rdx+r9]
	mov	r11, rbx
	sub	r11, rdi
	cmp	r11, 14
	jbe	.L918
	cmp	eax, 14
	jbe	.L935
	mov	r11d, esi
	lea	rdi, [rdx+r9]
	xor	eax, eax
	shr	r11d, 4
	sal	r11, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L928:
	movdqu	xmm1, XMMWORD PTR [rdi+rax]
	movups	XMMWORD PTR [rbx+rax], xmm1
	add	rax, 16
	cmp	r11, rax
	jne	.L928
	mov	eax, esi
	and	eax, -16
	add	r10d, eax
	test	sil, 15
	je	.L915
	sub	esi, eax
	lea	ebx, -1[rsi]
	cmp	ebx, 6
	jbe	.L930
.L927:
	add	rax, r9
	mov	edi, esi
	and	edi, -8
	mov	r9, QWORD PTR [rdx+rax]
	add	r10d, edi
	and	esi, 7
	mov	QWORD PTR [rcx+rax], r9
	je	.L915
.L930:
	mov	esi, r10d
	lea	eax, 1[r10]
	movzx	r11d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r11b
	cmp	eax, r8d
	jnb	.L915
	movzx	ebx, BYTE PTR [rdx+rax]
	lea	edi, 2[r10]
	mov	BYTE PTR [rcx+rax], bl
	cmp	edi, r8d
	jnb	.L915
	movzx	r9d, BYTE PTR [rdx+rdi]
	lea	esi, 3[r10]
	mov	BYTE PTR [rcx+rdi], r9b
	cmp	esi, r8d
	jnb	.L915
	movzx	r11d, BYTE PTR [rdx+rsi]
	lea	eax, 4[r10]
	mov	BYTE PTR [rcx+rsi], r11b
	cmp	eax, r8d
	jnb	.L915
	movzx	ebx, BYTE PTR [rdx+rax]
	lea	edi, 5[r10]
	mov	BYTE PTR [rcx+rax], bl
	cmp	edi, r8d
	jnb	.L915
	movzx	r9d, BYTE PTR [rdx+rdi]
	add	r10d, 6
	mov	BYTE PTR [rcx+rdi], r9b
	cmp	r10d, r8d
	jnb	.L915
	movzx	edx, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], dl
.L915:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L952:
	lea	esi, -1[r8]
	test	r8d, r8d
	je	.L915
	.p2align 4
	.p2align 4
	.p2align 3
.L934:
	movzx	r8d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r8b
	sub	rsi, 1
	jnb	.L934
	pop	rbx
	pop	rsi
	pop	rdi
	ret
.L935:
	xor	eax, eax
	jmp	.L927
	.p2align 4,,10
	.p2align 3
.L953:
	mov	r9d, r10d
	test	r8d, r8d
	je	.L915
.L918:
	mov	r10, r9
	.p2align 5
	.p2align 4
	.p2align 3
.L932:
	movzx	esi, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], sil
	add	r10, 1
	cmp	r10d, r8d
	jb	.L932
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L922:
	lea	edi, 0[0+rbx*8]
	xor	r11d, r11d
	.p2align 5
	.p2align 4
	.p2align 3
.L925:
	mov	r9, QWORD PTR [rdx+r11]
	mov	QWORD PTR [rcx+r11], r9
	add	r11, 8
	cmp	rdi, r11
	jne	.L925
	jmp	.L926
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
	jb	.L958
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L983
.L958:
	test	r11d, r11d
	je	.L957
	lea	eax, -1[r11]
	cmp	eax, 2
	jbe	.L961
	lea	r10, 2[rdx]
	mov	r9, rcx
	sub	r9, r10
	cmp	r9, 12
	jbe	.L961
	cmp	eax, 6
	jbe	.L971
	mov	r9d, r8d
	xor	eax, eax
	shr	r9d, 4
	mov	r10d, r9d
	sal	r10, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L963:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, r10
	jne	.L963
	lea	eax, 0[0+r9*8]
	cmp	r11d, eax
	je	.L957
	mov	r9d, r11d
	sub	r9d, eax
	lea	r10d, -1[r9]
	cmp	r10d, 2
	jbe	.L965
.L962:
	mov	r10d, eax
	movq	xmm1, QWORD PTR [rdx+r10*2]
	movq	QWORD PTR [rcx+r10*2], xmm1
	mov	r10d, r9d
	and	r10d, -4
	add	eax, r10d
	and	r9d, 3
	je	.L957
.L965:
	mov	r9d, eax
	movzx	r10d, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], r10w
	lea	r9d, 1[rax]
	cmp	r9d, r11d
	jnb	.L957
	movzx	r10d, WORD PTR [rdx+r9*2]
	add	eax, 2
	mov	WORD PTR [rcx+r9*2], r10w
	cmp	eax, r11d
	jnb	.L957
	movzx	r11d, WORD PTR [rdx+rax*2]
	mov	WORD PTR [rcx+rax*2], r11w
.L957:
	test	r8b, 1
	je	.L954
.L984:
	lea	r8d, -1[r8]
	movzx	edx, BYTE PTR [rdx+r8]
	mov	BYTE PTR [rcx+r8], dl
.L954:
	ret
	.p2align 4,,10
	.p2align 3
.L983:
	lea	r9d, -1[r8]
	test	r8d, r8d
	je	.L954
	.p2align 4
	.p2align 4
	.p2align 3
.L970:
	movzx	r8d, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rcx+r9], r8b
	sub	r9, 1
	jnb	.L970
	ret
.L971:
	mov	r9d, r11d
	xor	eax, eax
	jmp	.L962
	.p2align 4,,10
	.p2align 3
.L961:
	lea	r10d, [r11+r11]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L967:
	movzx	r9d, WORD PTR [rdx+rax]
	mov	WORD PTR [rcx+rax], r9w
	add	rax, 2
	cmp	rax, r10
	jne	.L967
	test	r8b, 1
	je	.L954
	jmp	.L984
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
	jb	.L990
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L1022
.L990:
	test	ebx, ebx
	je	.L1023
	lea	edi, -1[rbx]
	cmp	edi, 2
	jbe	.L992
	lea	r9, 4[rdx]
	mov	r11, rcx
	sub	r11, r9
	cmp	r11, 8
	jbe	.L992
	mov	esi, r8d
	xor	eax, eax
	shr	esi, 4
	mov	edi, esi
	sal	rdi, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L993:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, rdi
	jne	.L993
	lea	esi, 0[0+rsi*4]
	cmp	ebx, esi
	je	.L996
	mov	r9d, esi
	lea	edi, 1[rsi]
	mov	r11d, DWORD PTR [rdx+r9*4]
	mov	DWORD PTR [rcx+r9*4], r11d
	cmp	edi, ebx
	jnb	.L996
	mov	eax, DWORD PTR [rdx+rdi*4]
	add	esi, 2
	mov	DWORD PTR [rcx+rdi*4], eax
	cmp	esi, ebx
	jnb	.L996
	mov	ebx, DWORD PTR [rdx+rsi*4]
	mov	DWORD PTR [rcx+rsi*4], ebx
.L996:
	cmp	r10d, r8d
	jnb	.L985
	mov	esi, r8d
	mov	r9d, r10d
	sub	esi, r10d
	lea	eax, -1[rsi]
	cmp	eax, 6
	jbe	.L988
	lea	rbx, [rcx+r9]
	lea	rdi, 1[rdx+r9]
	mov	r11, rbx
	sub	r11, rdi
	cmp	r11, 14
	jbe	.L988
	cmp	eax, 14
	jbe	.L1005
	mov	r11d, esi
	lea	rdi, [rdx+r9]
	xor	eax, eax
	shr	r11d, 4
	sal	r11, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L998:
	movdqu	xmm1, XMMWORD PTR [rdi+rax]
	movups	XMMWORD PTR [rbx+rax], xmm1
	add	rax, 16
	cmp	r11, rax
	jne	.L998
	mov	eax, esi
	and	eax, -16
	add	r10d, eax
	test	sil, 15
	je	.L985
	sub	esi, eax
	lea	ebx, -1[rsi]
	cmp	ebx, 6
	jbe	.L1000
.L997:
	add	rax, r9
	mov	edi, esi
	and	edi, -8
	mov	r9, QWORD PTR [rdx+rax]
	add	r10d, edi
	and	esi, 7
	mov	QWORD PTR [rcx+rax], r9
	je	.L985
.L1000:
	mov	esi, r10d
	lea	eax, 1[r10]
	movzx	r11d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r11b
	cmp	eax, r8d
	jnb	.L985
	movzx	ebx, BYTE PTR [rdx+rax]
	lea	edi, 2[r10]
	mov	BYTE PTR [rcx+rax], bl
	cmp	edi, r8d
	jnb	.L985
	movzx	r9d, BYTE PTR [rdx+rdi]
	lea	esi, 3[r10]
	mov	BYTE PTR [rcx+rdi], r9b
	cmp	esi, r8d
	jnb	.L985
	movzx	r11d, BYTE PTR [rdx+rsi]
	lea	eax, 4[r10]
	mov	BYTE PTR [rcx+rsi], r11b
	cmp	eax, r8d
	jnb	.L985
	movzx	ebx, BYTE PTR [rdx+rax]
	lea	edi, 5[r10]
	mov	BYTE PTR [rcx+rax], bl
	cmp	edi, r8d
	jnb	.L985
	movzx	r9d, BYTE PTR [rdx+rdi]
	add	r10d, 6
	mov	BYTE PTR [rcx+rdi], r9b
	cmp	r10d, r8d
	jnb	.L985
	movzx	edx, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], dl
.L985:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1022:
	lea	esi, -1[r8]
	test	r8d, r8d
	je	.L985
	.p2align 4
	.p2align 4
	.p2align 3
.L1004:
	movzx	r8d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r8b
	sub	rsi, 1
	jnb	.L1004
	pop	rbx
	pop	rsi
	pop	rdi
	ret
.L1005:
	xor	eax, eax
	jmp	.L997
	.p2align 4,,10
	.p2align 3
.L1023:
	mov	r9d, r10d
	test	r8d, r8d
	je	.L985
.L988:
	mov	r10, r9
	.p2align 5
	.p2align 4
	.p2align 3
.L1002:
	movzx	esi, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], sil
	add	r10, 1
	cmp	r10d, r8d
	jb	.L1002
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L992:
	lea	esi, 0[0+rbx*4]
	xor	r11d, r11d
	.p2align 5
	.p2align 4
	.p2align 3
.L995:
	mov	r9d, DWORD PTR [rdx+r11]
	mov	DWORD PTR [rcx+r11], r9d
	add	r11, 4
	cmp	r11, rsi
	jne	.L995
	jmp	.L996
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
	js	.L1032
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L1032:
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
	js	.L1035
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L1035:
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
	jne	.L1041
	mov	eax, edx
	sar	eax, 14
	jne	.L1038
	mov	eax, edx
	shr	eax, 13
	jne	.L1042
	mov	r8d, edx
	shr	r8d, 12
	jne	.L1043
	mov	r9d, edx
	shr	r9d, 11
	jne	.L1044
	mov	r10d, edx
	shr	r10d, 10
	jne	.L1045
	mov	r11d, edx
	shr	r11d, 9
	jne	.L1046
	mov	eax, edx
	shr	eax, 8
	jne	.L1047
	mov	r8d, edx
	shr	r8d, 7
	jne	.L1048
	mov	r9d, edx
	shr	r9d, 6
	jne	.L1049
	mov	r10d, edx
	shr	r10d, 5
	jne	.L1050
	mov	r11d, edx
	shr	r11d, 4
	jne	.L1051
	mov	eax, edx
	shr	eax, 3
	jne	.L1052
	mov	r8d, edx
	shr	r8d, 2
	jne	.L1053
	shr	edx
	jne	.L1054
	mov	eax, 15
	cmp	cx, 1
	adc	eax, 0
.L1038:
	ret
.L1041:
	xor	eax, eax
	ret
.L1052:
	mov	eax, 12
	ret
.L1042:
	mov	eax, 2
	ret
.L1043:
	mov	eax, 3
	ret
.L1044:
	mov	eax, 4
	ret
.L1045:
	mov	eax, 5
	ret
.L1046:
	mov	eax, 6
	ret
.L1047:
	mov	eax, 7
	ret
.L1048:
	mov	eax, 8
	ret
.L1049:
	mov	eax, 9
	ret
.L1050:
	mov	eax, 10
	ret
.L1051:
	mov	eax, 11
	ret
.L1053:
	mov	eax, 13
	ret
.L1054:
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
	jne	.L1059
	test	cl, 2
	jne	.L1060
	test	cl, 4
	jne	.L1061
	test	cl, 8
	jne	.L1062
	test	cl, 16
	jne	.L1063
	test	cl, 32
	jne	.L1064
	test	cl, 64
	jne	.L1065
	test	cl, -128
	jne	.L1066
	test	ch, 1
	jne	.L1067
	test	ch, 2
	jne	.L1068
	test	ch, 4
	jne	.L1069
	test	ch, 8
	jne	.L1070
	test	ch, 16
	jne	.L1071
	test	ch, 32
	jne	.L1072
	test	ch, 64
	jne	.L1073
	xor	eax, eax
	and	ch, -128
	sete	al
	add	eax, 15
	ret
.L1059:
	xor	eax, eax
	ret
.L1060:
	mov	eax, 1
	ret
.L1071:
	mov	eax, 12
	ret
.L1061:
	mov	eax, 2
	ret
.L1062:
	mov	eax, 3
	ret
.L1063:
	mov	eax, 4
	ret
.L1064:
	mov	eax, 5
	ret
.L1065:
	mov	eax, 6
	ret
.L1066:
	mov	eax, 7
	ret
.L1067:
	mov	eax, 8
	ret
.L1068:
	mov	eax, 9
	ret
.L1069:
	mov	eax, 10
	ret
.L1070:
	mov	eax, 11
	ret
.L1072:
	mov	eax, 13
	ret
.L1073:
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
	jnb	.L1081
	cvttss2si	eax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L1081:
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
	mov	r8d, edx
	mov	r9d, edx
	mov	r10d, edx
	sar	eax
	sar	r8d, 3
	mov	r11d, edx
	sar	r9d, 4
	and	eax, 1
	and	r8d, 1
	sar	r10d, 5
	add	eax, ecx
	mov	ecx, edx
	and	r9d, 1
	and	r10d, 1
	sar	ecx, 2
	sar	r11d, 6
	and	ecx, 1
	and	r11d, 1
	add	eax, ecx
	mov	ecx, edx
	add	eax, r8d
	sar	ecx, 7
	mov	r8d, edx
	add	eax, r9d
	and	ecx, 1
	sar	r8d, 8
	mov	r9d, edx
	add	eax, r10d
	and	r8d, 1
	sar	r9d, 9
	mov	r10d, edx
	add	eax, r11d
	and	r9d, 1
	sar	r10d, 10
	mov	r11d, edx
	add	eax, ecx
	and	r10d, 1
	sar	r11d, 11
	mov	ecx, edx
	add	eax, r8d
	and	r11d, 1
	sar	ecx, 12
	mov	r8d, edx
	add	eax, r9d
	and	ecx, 1
	sar	r8d, 13
	mov	r9d, edx
	sar	r9d, 14
	add	eax, r10d
	and	r8d, 1
	sar	edx, 15
	add	eax, r11d
	and	r9d, 1
	add	eax, ecx
	add	eax, r8d
	add	eax, r9d
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
	mov	r8d, edx
	mov	r9d, edx
	mov	r10d, edx
	sar	eax
	sar	r8d, 3
	mov	r11d, edx
	sar	r9d, 4
	and	eax, 1
	and	r8d, 1
	sar	r10d, 5
	add	eax, ecx
	mov	ecx, edx
	and	r9d, 1
	and	r10d, 1
	sar	ecx, 2
	sar	r11d, 6
	and	ecx, 1
	and	r11d, 1
	add	eax, ecx
	mov	ecx, edx
	add	eax, r8d
	sar	ecx, 7
	mov	r8d, edx
	add	eax, r9d
	and	ecx, 1
	sar	r8d, 8
	mov	r9d, edx
	add	eax, r10d
	and	r8d, 1
	sar	r9d, 9
	mov	r10d, edx
	add	eax, r11d
	and	r9d, 1
	sar	r10d, 10
	mov	r11d, edx
	add	eax, ecx
	and	r10d, 1
	sar	r11d, 11
	mov	ecx, edx
	add	eax, r8d
	and	r11d, 1
	sar	ecx, 12
	mov	r8d, edx
	add	eax, r9d
	and	ecx, 1
	sar	r8d, 13
	mov	r9d, edx
	sar	r9d, 14
	add	eax, r10d
	and	r8d, 1
	sar	edx, 15
	add	eax, r11d
	and	r9d, 1
	add	eax, ecx
	add	eax, r8d
	add	eax, r9d
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
	je	.L1084
	.p2align 5
	.p2align 4
	.p2align 3
.L1086:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L1086
.L1084:
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
	je	.L1089
	test	edx, edx
	je	.L1089
	.p2align 5
	.p2align 4
	.p2align 3
.L1091:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	r8d, eax
	shr	edx
	jne	.L1091
.L1089:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__udivmodsi4
	.def	__udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4
__udivmodsi4:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r9d, 1
	cmp	edx, ecx
	jb	.L1097
	jmp	.L1120
	.p2align 4,,10
	.p2align 3
.L1100:
	add	edx, edx
	add	r9d, r9d
	cmp	edx, ecx
	jnb	.L1099
	test	r9d, r9d
	je	.L1099
.L1097:
	test	edx, edx
	jns	.L1100
.L1101:
	xor	eax, eax
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L1103:
	mov	r10d, ecx
	sub	r10d, edx
	cmp	ecx, edx
	setnb	r11b
	test	r11b, r11b
	cmovne	ecx, r10d
	mov	r10d, ebx
	cmovne	r10d, r9d
	shr	edx
	or	eax, r10d
	shr	r9d
	jne	.L1103
.L1102:
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1099:
	xor	eax, eax
	test	r9d, r9d
	jne	.L1101
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
.L1120:
	mov	eax, ecx
	sub	eax, edx
	cmp	ecx, edx
	setnb	dl
	cmovnb	ecx, eax
	movzx	eax, dl
	jmp	.L1102
	.seh_endproc
	.p2align 4
	.globl	__mspabi_cmpf
	.def	__mspabi_cmpf;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpf
__mspabi_cmpf:
	.seh_endprologue
	mov	eax, -1
	comiss	xmm1, xmm0
	ja	.L1123
	xor	eax, eax
	comiss	xmm0, xmm1
	seta	al
.L1123:
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
	ja	.L1126
	xor	eax, eax
	comisd	xmm0, xmm1
	seta	al
.L1126:
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
	js	.L1140
	je	.L1136
	xor	r11d, r11d
.L1133:
	mov	r8d, 1
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L1135:
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
	jne	.L1135
	mov	eax, r9d
	neg	eax
	test	r11d, r11d
	cmove	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L1140:
	neg	edx
	mov	r11d, 1
	jmp	.L1133
	.p2align 4,,10
	.p2align 3
.L1136:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	__divsi3
	.def	__divsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__divsi3
__divsi3:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	eax, 1
	xor	ebx, ebx
	test	ecx, ecx
	jns	.L1142
	neg	ecx
	xor	eax, eax
	mov	ebx, 1
.L1142:
	test	edx, edx
	jns	.L1143
	neg	edx
	mov	ebx, eax
.L1143:
	mov	r8d, edx
	mov	r9d, ecx
	mov	eax, 1
	cmp	edx, ecx
	jb	.L1144
	jmp	.L1168
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1171:
	test	eax, eax
	je	.L1149
.L1144:
	add	r8d, r8d
	add	eax, eax
	cmp	r8d, ecx
	jb	.L1171
.L1149:
	xor	edx, edx
	xor	r11d, r11d
	test	eax, eax
	je	.L1147
	.p2align 6
	.p2align 4
	.p2align 3
.L1146:
	mov	ecx, r9d
	sub	ecx, r8d
	cmp	r9d, r8d
	setnb	r10b
	test	r10b, r10b
	cmovne	r9d, ecx
	mov	ecx, r11d
	cmovne	ecx, eax
	shr	r8d
	or	edx, ecx
	shr	eax
	jne	.L1146
.L1147:
	mov	eax, edx
	neg	eax
	test	ebx, ebx
	cmove	eax, edx
	pop	rbx
	ret
.L1168:
	cmp	ecx, edx
	setnb	dl
	movzx	edx, dl
	jmp	.L1147
	.seh_endproc
	.p2align 4
	.globl	__modsi3
	.def	__modsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__modsi3
__modsi3:
	.seh_endprologue
	xor	r9d, r9d
	test	ecx, ecx
	jns	.L1173
	neg	ecx
	mov	r9d, 1
.L1173:
	mov	eax, edx
	mov	r8d, ecx
	neg	eax
	cmovs	eax, edx
	mov	edx, 1
	cmp	eax, ecx
	jb	.L1174
	jmp	.L1198
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1200:
	test	edx, edx
	je	.L1194
.L1174:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jb	.L1200
	test	edx, edx
	je	.L1194
	.p2align 5
	.p2align 4
	.p2align 3
.L1176:
	mov	r10d, r8d
	sub	r10d, eax
	cmp	r8d, eax
	cmovnb	r8d, r10d
	shr	eax
	shr	edx
	jne	.L1176
.L1177:
	mov	eax, r8d
	neg	eax
	test	r9d, r9d
	cmove	eax, r8d
	ret
	.p2align 4,,10
	.p2align 3
.L1194:
	mov	r8d, ecx
	mov	eax, r8d
	neg	eax
	test	r9d, r9d
	cmove	eax, r8d
	ret
.L1198:
	sub	ecx, eax
	cmp	r8d, eax
	cmovnb	r8d, ecx
	jmp	.L1177
	.seh_endproc
	.p2align 4
	.globl	__udivmodhi4
	.def	__udivmodhi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodhi4
__udivmodhi4:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r9d, 1
	mov	ebx, ecx
	mov	eax, ecx
	mov	ecx, edx
	cmp	dx, bx
	jb	.L1202
	jmp	.L1268
	.p2align 4,,10
	.p2align 3
.L1205:
	lea	r10d, [rcx+rcx]
	lea	edx, [r9+r9]
	cmp	r10w, ax
	jnb	.L1204
	test	dx, dx
	je	.L1204
	mov	r9d, edx
	mov	ecx, r10d
.L1202:
	test	cx, cx
	jns	.L1205
	mov	eax, ebx
	mov	r11d, r9d
	sub	eax, ecx
	cmp	cx, bx
	cmova	eax, ebx
	xor	edx, edx
	cmp	bx, cx
	mov	ebx, ecx
	cmovnb	edx, r9d
	shr	bx
	shr	r11w
	mov	esi, edx
	je	.L1207
.L1209:
	mov	edx, eax
	mov	r10d, 0
	sub	edx, ebx
	cmp	ax, bx
	setnb	bl
	test	bl, bl
	mov	ebx, ecx
	cmove	r11d, r10d
	cmovne	eax, edx
	shr	bx, 2
	mov	edx, r11d
	mov	r11d, r9d
	or	edx, esi
	shr	r11w, 2
	je	.L1207
	mov	esi, eax
	sub	esi, ebx
	cmp	ax, bx
	setnb	bl
	test	bl, bl
	mov	ebx, ecx
	cmove	r11d, r10d
	cmovne	eax, esi
	shr	bx, 3
	or	edx, r11d
	mov	r11d, r9d
	shr	r11w, 3
	je	.L1207
	mov	esi, eax
	sub	esi, ebx
	cmp	ax, bx
	setnb	bl
	test	bl, bl
	mov	ebx, ecx
	cmove	r11d, r10d
	cmovne	eax, esi
	shr	bx, 4
	or	edx, r11d
	mov	r11d, r9d
	shr	r11w, 4
	je	.L1207
	mov	esi, eax
	sub	esi, ebx
	cmp	ax, bx
	setnb	bl
	test	bl, bl
	mov	ebx, ecx
	cmove	r11d, r10d
	cmovne	eax, esi
	shr	bx, 5
	or	edx, r11d
	mov	r11d, r9d
	shr	r11w, 5
	je	.L1207
	mov	esi, eax
	sub	esi, ebx
	cmp	ax, bx
	setnb	bl
	test	bl, bl
	mov	ebx, ecx
	cmove	r11d, r10d
	cmovne	eax, esi
	shr	bx, 6
	or	edx, r11d
	mov	r11d, r9d
	shr	r11w, 6
	je	.L1207
	mov	esi, eax
	sub	esi, ebx
	cmp	ax, bx
	setnb	bl
	test	bl, bl
	mov	ebx, ecx
	cmove	r11d, r10d
	cmovne	eax, esi
	shr	bx, 7
	or	edx, r11d
	mov	r11d, r9d
	shr	r11w, 7
	je	.L1207
	mov	esi, eax
	sub	esi, ebx
	cmp	ax, bx
	setnb	bl
	test	bl, bl
	mov	ebx, ecx
	cmove	r11d, r10d
	cmovne	eax, esi
	shr	bx, 8
	or	edx, r11d
	mov	r11d, r9d
	shr	r11w, 8
	je	.L1207
	mov	esi, eax
	sub	esi, ebx
	cmp	ax, bx
	setnb	bl
	test	bl, bl
	mov	ebx, ecx
	cmove	r11d, r10d
	cmovne	eax, esi
	shr	bx, 9
	or	edx, r11d
	mov	r11d, r9d
	shr	r11w, 9
	je	.L1207
	mov	esi, eax
	sub	esi, ebx
	cmp	ax, bx
	setnb	bl
	test	bl, bl
	mov	ebx, ecx
	cmove	r11d, r10d
	cmovne	eax, esi
	shr	bx, 10
	or	edx, r11d
	mov	r11d, r9d
	shr	r11w, 10
	je	.L1207
	mov	esi, eax
	sub	esi, ebx
	cmp	ax, bx
	setnb	bl
	test	bl, bl
	mov	ebx, ecx
	cmove	r11d, r10d
	cmovne	eax, esi
	shr	bx, 11
	or	edx, r11d
	mov	r11d, r9d
	shr	r11w, 11
	je	.L1207
	mov	esi, eax
	sub	esi, ebx
	cmp	ax, bx
	setnb	bl
	test	bl, bl
	mov	ebx, ecx
	cmove	r11d, r10d
	cmovne	eax, esi
	shr	bx, 12
	or	edx, r11d
	mov	r11d, r9d
	shr	r11w, 12
	je	.L1207
	mov	esi, eax
	sub	esi, ebx
	cmp	ax, bx
	setnb	bl
	test	bl, bl
	mov	ebx, ecx
	cmove	r11d, r10d
	cmovne	eax, esi
	shr	bx, 13
	or	edx, r11d
	mov	r11d, r9d
	shr	r11w, 13
	je	.L1207
	mov	esi, eax
	sub	esi, ebx
	cmp	ax, bx
	setnb	bl
	test	bl, bl
	mov	ebx, ecx
	cmove	r11d, r10d
	cmovne	eax, esi
	shr	bx, 14
	or	edx, r11d
	mov	r11d, r9d
	shr	r11w, 14
	je	.L1207
	mov	esi, eax
	sub	esi, ebx
	cmp	ax, bx
	setnb	bl
	test	bl, bl
	cmove	r11d, r10d
	cmovne	eax, esi
	shr	cx, 15
	or	edx, r11d
	test	r9w, r9w
	jns	.L1207
	mov	r9d, eax
	sub	r9d, ecx
	cmp	ax, cx
	setnb	cl
	cmovnb	eax, r9d
	movzx	r10d, cl
	or	edx, r10d
.L1207:
	test	r8d, r8d
	cmove	eax, edx
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1204:
	mov	eax, ebx
	test	dx, dx
	je	.L1207
	sub	eax, r10d
	cmp	r10w, bx
	cmova	eax, ebx
	xor	esi, esi
	cmp	bx, r10w
	cmovnb	esi, edx
	and	r9w, 32767
	and	cx, 32767
	mov	r11d, r9d
	mov	ebx, ecx
	mov	r9d, edx
	mov	ecx, r10d
	jmp	.L1209
.L1268:
	sub	eax, edx
	cmp	dx, bx
	sete	dl
	cmovne	eax, ebx
	movzx	edx, dl
	jmp	.L1207
	.seh_endproc
	.p2align 4
	.globl	__udivmodsi4_libgcc
	.def	__udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r9d, 1
	cmp	edx, ecx
	jb	.L1270
	jmp	.L1293
	.p2align 4,,10
	.p2align 3
.L1273:
	add	edx, edx
	add	r9d, r9d
	cmp	edx, ecx
	jnb	.L1272
	test	r9d, r9d
	je	.L1272
.L1270:
	test	edx, edx
	jns	.L1273
.L1274:
	xor	eax, eax
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L1276:
	mov	r10d, ecx
	sub	r10d, edx
	cmp	ecx, edx
	setnb	r11b
	test	r11b, r11b
	cmovne	ecx, r10d
	mov	r10d, ebx
	cmovne	r10d, r9d
	shr	edx
	or	eax, r10d
	shr	r9d
	jne	.L1276
.L1275:
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1272:
	xor	eax, eax
	test	r9d, r9d
	jne	.L1274
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
.L1293:
	mov	eax, ecx
	sub	eax, edx
	cmp	ecx, edx
	setnb	dl
	cmovnb	ecx, eax
	movzx	eax, dl
	jmp	.L1275
	.seh_endproc
	.p2align 4
	.globl	__ashldi3
	.def	__ashldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashldi3
__ashldi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1297
	lea	ecx, -32[rdx]
	xor	eax, eax
	sal	r8d, cl
.L1298:
	sal	r8, 32
	or	rax, r8
.L1296:
	ret
	.p2align 4,,10
	.p2align 3
.L1297:
	mov	rax, rcx
	test	edx, edx
	je	.L1296
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
	jmp	.L1298
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
	je	.L1303
	lea	ecx, -64[rdx]
	xor	r9d, r9d
	sal	rax, cl
.L1304:
	mov	r10, rax
	mov	rax, r9
	mov	r8, r10
.L1305:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	r11, QWORD PTR 8[rsp]
	movq	xmm1, r8
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], r11
	movdqa	xmm0, XMMWORD PTR [rsp]
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L1303:
	test	edx, edx
	je	.L1305
	mov	r9, rax
	mov	ecx, edx
	sal	r9, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rax, cl
	mov	ecx, edx
	sal	r8, cl
	or	rax, r8
	jmp	.L1304
	.seh_endproc
	.p2align 4
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1308
	sar	r8, 32
	lea	ecx, -32[rdx]
	mov	eax, r8d
	sar	r8d, cl
	sar	eax, 31
.L1309:
	sal	rax, 32
	or	rax, r8
.L1307:
	ret
	.p2align 4,,10
	.p2align 3
.L1308:
	mov	rax, rcx
	test	edx, edx
	je	.L1307
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
	jmp	.L1309
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
	je	.L1314
	mov	r10, rax
	lea	ecx, -64[rdx]
	sar	r10, 63
	sar	rax, cl
.L1315:
	mov	r9, rax
	mov	rax, r10
.L1316:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	r10, QWORD PTR 8[rsp]
	movq	xmm1, rax
	mov	QWORD PTR [rsp], r9
	mov	QWORD PTR 8[rsp], r10
	movdqa	xmm0, XMMWORD PTR [rsp]
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L1314:
	mov	r9, r8
	test	edx, edx
	je	.L1316
	mov	r10, rax
	mov	ecx, edx
	sar	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L1315
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
	xor	r9d, r9d
	sal	eax, 3
	sub	ecx, eax
	add	r8d, eax
	mov	eax, 2
	shr	edx, cl
	mov	ecx, 4
	test	dl, -16
	sete	r9b
	xor	r11d, r11d
	sal	r9d, 2
	sub	ecx, r9d
	lea	r10d, [r9+r8]
	shr	edx, cl
	mov	ecx, eax
	test	dl, 12
	sete	r11b
	xor	r8d, r8d
	add	r11d, r11d
	sub	ecx, r11d
	shr	edx, cl
	sub	eax, edx
	and	edx, 2
	cmovne	eax, r8d
	add	r11d, r10d
	add	eax, r11d
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
	movsx	r10, edx
	and	r10, rcx
	test	rcx, rcx
	cmove	r9, r8
	or	r10, r9
	bsr	r11, r10
	sal	eax, 6
	xor	r11, 63
	add	eax, r11d
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
	jl	.L1322
	mov	eax, 2
	jg	.L1322
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1322
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1322:
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
	jl	.L1328
	mov	eax, 1
	jg	.L1328
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1328
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1328:
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
	jl	.L1333
	mov	eax, 2
	jg	.L1333
	xor	eax, eax
	cmp	r8, r9
	jb	.L1333
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1333:
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
	mov	r9d, eax
	shr	eax
	not	r9d
	sub	r8d, eax
	mov	eax, r9d
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
	sete	cl
	cmovne	rdx, rax
	xor	r11d, r11d
	movzx	eax, cl
	lea	r9d, -1[rax]
	sal	eax, 6
	movsx	r10, r9d
	and	r10, r8
	or	rdx, r10
	rep bsf	r11, rdx
	add	eax, r11d
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
	jne	.L1342
	xor	eax, eax
	xor	ecx, ecx
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	cmove	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1342:
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
	je	.L1346
	shr	r8, 32
	lea	ecx, -32[rdx]
	xor	eax, eax
	shr	r8d, cl
.L1347:
	sal	rax, 32
	or	rax, r8
.L1345:
	ret
	.p2align 4,,10
	.p2align 3
.L1346:
	mov	rax, rcx
	test	edx, edx
	je	.L1345
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
	jmp	.L1347
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
	je	.L1352
	lea	ecx, -64[rdx]
	xor	r10d, r10d
	shr	rax, cl
.L1353:
	mov	r9, rax
	mov	rax, r10
.L1354:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	r10, QWORD PTR 8[rsp]
	movq	xmm1, rax
	mov	QWORD PTR [rsp], r9
	mov	QWORD PTR 8[rsp], r10
	movdqa	xmm0, XMMWORD PTR [rsp]
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L1352:
	mov	r9, r8
	test	edx, edx
	je	.L1354
	mov	r10, rax
	mov	ecx, edx
	shr	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L1353
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
	movzx	r11d, ax
	shr	eax, 16
	add	r8d, r11d
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
	add	edx, r10d
	mov	eax, ecx
	shr	ecx, 16
	add	edx, ecx
	sal	eax, 16
	add	eax, r11d
	mov	ecx, edx
	mov	rdx, r8
	sal	rcx, 32
	mov	ebx, eax
	sar	rdx, 32
	imul	edx, r9d
	or	rbx, rcx
	sar	r9, 32
	imul	r8d, r9d
	mov	r10, rbx
	mov	eax, ebx
	sar	r10, 32
	add	edx, r10d
	add	edx, r8d
	mov	r9d, edx
	sal	r9, 32
	or	rax, r9
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
	mov	r11d, eax
	shr	rax, 32
	add	r8, r11
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
	mov	r8, QWORD PTR [rcx]
	mov	r9, QWORD PTR [rdx]
	mov	ebx, r9d
	mov	r10, r8
	shr	r10, 32
	mov	rsi, rdx
	mov	edx, r8d
	mov	r11, rcx
	mov	rcx, rdx
	imul	r8, QWORD PTR 8[rsi]
	imul	rcx, rbx
	imul	rbx, r10
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
	add	rax, rdx
	sal	r11, 32
	add	rax, r8
	add	rcx, r11
	add	rax, r9
	mov	QWORD PTR [rsp], rcx
	mov	QWORD PTR 8[rsp], rax
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
	mov	eax, 27030
	mov	r8d, edx
	shr	r8d, 8
	xor	r8d, edx
	mov	ecx, r8d
	shr	ecx, 4
	xor	ecx, r8d
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
	mov	ecx, eax
	shr	ecx, 16
	xor	ecx, eax
	mov	eax, 27030
	mov	r8d, ecx
	shr	r8d, 8
	xor	r8d, ecx
	mov	ecx, r8d
	shr	ecx, 4
	xor	ecx, r8d
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
	movabs	r9, 3689348814741910323
	movabs	r10, 1085102592571150095
	mov	rax, rcx
	shr	rax
	and	rax, rdx
	sub	rcx, rax
	mov	r8, rcx
	and	rcx, r9
	shr	r8, 2
	and	r8, r9
	add	r8, rcx
	mov	rcx, r8
	shr	rcx, 4
	add	rcx, r8
	and	rcx, r10
	mov	r11, rcx
	shr	r11, 32
	add	ecx, r11d
	mov	edx, ecx
	shr	edx, 16
	add	edx, ecx
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
	mov	ecx, edx
	shr	ecx, 4
	add	ecx, edx
	and	ecx, 252645135
	mov	r8d, ecx
	shr	r8d, 16
	add	r8d, ecx
	mov	eax, r8d
	shr	eax, 8
	add	eax, r8d
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
	sub	rax, r8
	sbb	rdx, r9
	mov	rcx, rax
	movabs	r9, 3689348814741910323
	shrd	rcx, rdx, 2
	mov	r8, rdx
	and	rax, r9
	and	rdx, r9
	shr	r8, 2
	and	rcx, r9
	and	r8, r9
	add	rcx, rax
	movabs	rax, 1085102592571150095
	adc	r8, rdx
	mov	r10, rcx
	mov	rdx, r8
	shrd	r10, r8, 4
	shr	rdx, 4
	add	r10, rcx
	adc	rdx, r8
	and	r10, rax
	and	rdx, rax
	add	rdx, r10
	mov	rcx, rdx
	shr	rcx, 32
	add	ecx, edx
	mov	r8d, ecx
	shr	r8d, 16
	add	r8d, ecx
	mov	r9d, r8d
	shr	r9d, 8
	add	r9d, r8d
	movzx	eax, r9b
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
	je	.L1369
	.p2align 4
	.p2align 3
.L1371:
	mulsd	xmm1, xmm0
.L1369:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1370
	mulsd	xmm0, xmm0
	test	al, 1
	jne	.L1371
.L1375:
	mulsd	xmm0, xmm0
	mov	r8d, eax
	shr	r8d, 31
	add	eax, r8d
	sar	eax
	test	al, 1
	jne	.L1371
	jmp	.L1375
	.p2align 4,,10
	.p2align 3
.L1370:
	test	edx, edx
	jns	.L1368
	divsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L1368:
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
	je	.L1377
	.p2align 4
	.p2align 3
.L1379:
	mulss	xmm1, xmm0
.L1377:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1378
	mulss	xmm0, xmm0
	test	al, 1
	jne	.L1379
.L1383:
	mulss	xmm0, xmm0
	mov	r8d, eax
	shr	r8d, 31
	add	eax, r8d
	sar	eax
	test	al, 1
	jne	.L1379
	jmp	.L1383
	.p2align 4,,10
	.p2align 3
.L1378:
	test	edx, edx
	jns	.L1376
	divss	xmm2, xmm1
	movaps	xmm1, xmm2
.L1376:
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
	jb	.L1384
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L1384
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1384
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1384:
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
	jb	.L1390
	mov	eax, 1
	cmp	r9d, r8d
	jb	.L1390
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1390
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1390:
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
	jb	.L1395
	mov	eax, 2
	cmp	rdx, rcx
	jb	.L1395
	xor	eax, eax
	cmp	r8, r9
	jb	.L1395
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1395:
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
