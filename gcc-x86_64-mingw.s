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
	vmovdqa	xmm0, XMMWORD PTR [rsp]
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
	vmovdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.p2align 4
	.globl	memmove
	.def	memmove;	.scl	2;	.type	32;	.endef
	.seh_proc	memmove
memmove:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	cmp	rdx, rcx
	jnb	.L5
	test	r8, r8
	je	.L6
	lea	rsi, -1[r8]
	cmp	rsi, 30
	jbe	.L52
	lea	rax, -2[rdx+r8]
	mov	r9, rcx
	sub	r9, rax
	lea	r10, 62[r9+rsi]
	cmp	r10, 62
	jbe	.L52
	lea	r10, [rdx+r8]
	lea	r9, [rcx+r8]
	cmp	rsi, 62
	jbe	.L26
	mov	rbx, r8
	lea	r11, -64[r8]
	xor	eax, eax
	and	rbx, -64
	lea	rsi, [rdx+r11]
	add	r11, rcx
	neg	rbx
	.p2align 5
	.p2align 4
	.p2align 3
.L9:
	vmovdqu8	zmm2, ZMMWORD PTR [rsi+rax]
	vmovdqu8	ZMMWORD PTR [r11+rax], zmm2
	sub	rax, 64
	cmp	rax, rbx
	jne	.L9
	mov	rbx, r8
	add	r10, rax
	add	r9, rax
	and	ebx, 63
	and	r8d, 63
	je	.L56
	lea	r11, -1[rbx]
	mov	r8, rbx
	cmp	r11, 30
	jbe	.L11
.L8:
	vmovdqu8	ymm3, YMMWORD PTR -32[rdx+r8]
	mov	rdx, r8
	and	rdx, -32
	vmovdqu8	YMMWORD PTR -32[rcx+r8], ymm3
	sub	r10, rdx
	sub	r9, rdx
	sub	rbx, rdx
	and	r8d, 31
	je	.L56
.L11:
	sub	r10, rbx
	sub	r9, rbx
	.p2align 5
	.p2align 4
	.p2align 3
.L13:
	movzx	r8d, BYTE PTR -1[r10+rbx]
	mov	BYTE PTR -1[r9+rbx], r8b
	sub	rbx, 1
	jne	.L13
.L56:
	vzeroupper
.L6:
	mov	rax, rcx
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	cmp	rcx, rdx
	je	.L6
	test	r8, r8
	je	.L6
	lea	rax, -1[r8]
	cmp	rax, 30
	jbe	.L28
	lea	r10, 1[rdx]
	mov	r9, rcx
	sub	r9, r10
	cmp	r9, 62
	jbe	.L28
	cmp	rax, 62
	jbe	.L29
	mov	r10, r8
	xor	eax, eax
	and	r10, -64
	.p2align 5
	.p2align 4
	.p2align 3
.L18:
	vmovdqu8	zmm0, ZMMWORD PTR [rdx+rax]
	vmovdqu8	ZMMWORD PTR [rcx+rax], zmm0
	add	rax, 64
	cmp	rax, r10
	jne	.L18
	mov	rsi, r8
	lea	rbx, [rdx+r10]
	lea	r11, [rcx+r10]
	sub	rsi, r10
	cmp	r8, r10
	je	.L56
	lea	r9, -1[rsi]
	mov	r8, rsi
	cmp	r9, 30
	jbe	.L21
.L17:
	vmovdqu8	ymm1, YMMWORD PTR [rdx+r10]
	mov	rdx, r8
	and	rdx, -32
	add	rbx, rdx
	add	r11, rdx
	sub	rsi, rdx
	and	r8d, 31
	vmovdqu8	YMMWORD PTR [rcx+r10], ymm1
	je	.L56
.L21:
	xor	r8d, r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L23:
	movzx	r10d, BYTE PTR [rbx+r8]
	mov	BYTE PTR [r11+r8], r10b
	add	r8, 1
	cmp	r8, rsi
	jne	.L23
	vzeroupper
	jmp	.L6
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L57:
	sub	rsi, 1
.L52:
	movzx	r10d, BYTE PTR -1[rdx+r8]
	mov	BYTE PTR -1[rcx+r8], r10b
	mov	r8, rsi
	test	rsi, rsi
	jne	.L57
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L28:
	xor	ebx, ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L51:
	movzx	r11d, BYTE PTR [rdx+rbx]
	mov	BYTE PTR [rcx+rbx], r11b
	add	rbx, 1
	cmp	r8, rbx
	jne	.L51
	jmp	.L6
.L26:
	mov	rbx, r8
	jmp	.L8
.L29:
	mov	rbx, rdx
	mov	r11, rcx
	mov	rsi, r8
	xor	r10d, r10d
	jmp	.L17
	.seh_endproc
	.p2align 4
	.globl	memccpy
	.def	memccpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memccpy
memccpy:
	.seh_endprologue
	movzx	r8d, r8b
	test	r9, r9
	jne	.L59
	jmp	.L61
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L62:
	add	rdx, 1
	add	rcx, 1
	sub	r9, 1
	je	.L61
.L59:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [rcx], r10b
	cmp	r10d, r8d
	jne	.L62
	lea	rax, 1[rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L61:
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
	jne	.L70
	jmp	.L73
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L72:
	add	rcx, 1
	sub	r8, 1
	je	.L73
.L70:
	movzx	eax, BYTE PTR [rcx]
	cmp	eax, edx
	jne	.L72
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L73:
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
	jne	.L78
	jmp	.L82
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L80:
	add	rcx, 1
	add	rdx, 1
	sub	r8, 1
	je	.L82
.L78:
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	je	.L80
	movzx	eax, BYTE PTR [rcx]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L82:
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
	je	.L89
	call	memcpy
	mov	rcx, rax
.L89:
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
	jmp	.L94
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L96:
	mov	r8, rax
	sub	rax, 1
	movzx	r9d, BYTE PTR [r8]
	cmp	r9d, edx
	je	.L93
.L94:
	cmp	rcx, rax
	jne	.L96
	xor	r8d, r8d
.L93:
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
	je	.L100
	movzx	edx, dl
	call	memset
	mov	rcx, rax
.L100:
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
	je	.L102
	.p2align 5
	.p2align 4
	.p2align 3
.L103:
	movzx	r8d, BYTE PTR 1[rdx]
	add	rdx, 1
	add	rax, 1
	mov	BYTE PTR [rax], r8b
	test	r8b, r8b
	jne	.L103
.L102:
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
	jne	.L109
	jmp	.L108
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L111:
	movzx	r8d, BYTE PTR 1[rax]
	add	rax, 1
	test	r8b, r8b
	je	.L108
.L109:
	cmp	r8d, edx
	jne	.L111
.L108:
	ret
	.seh_endproc
	.p2align 4
	.globl	strchr
	.def	strchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strchr
strchr:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L118
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L121:
	add	rax, 1
	test	r8b, r8b
	je	.L120
.L118:
	movsx	r8d, BYTE PTR [rax]
	cmp	r8d, edx
	jne	.L121
	ret
	.p2align 4,,10
	.p2align 3
.L120:
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
	je	.L123
	jmp	.L131
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L125:
	movzx	r8d, BYTE PTR [rcx+rax]
	add	rax, 1
	movzx	r9d, BYTE PTR -1[rdx+rax]
	cmp	r8b, r9b
	jne	.L131
.L123:
	test	r8b, r8b
	jne	.L125
	xor	eax, eax
	sub	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L131:
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
	je	.L135
	mov	rax, rcx
	.p2align 4
	.p2align 4
	.p2align 3
.L134:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L134
	sub	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L135:
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
	je	.L137
	movzx	eax, BYTE PTR [rcx]
	sub	r8, 1
	mov	rcx, rdx
	add	r8, rdx
	test	al, al
	jne	.L141
	jmp	.L154
	.p2align 4,,10
	.p2align 3
.L156:
	cmp	rcx, r8
	je	.L140
	movzx	eax, BYTE PTR 1[r9]
	add	r9, 1
	lea	rdx, 1[rcx]
	test	al, al
	je	.L155
	mov	rcx, rdx
.L141:
	movzx	edx, BYTE PTR [rcx]
	test	dl, dl
	setne	r11b
	cmp	dl, al
	sete	r10b
	test	r11b, r10b
	jne	.L156
.L140:
	sub	eax, edx
.L137:
	ret
	.p2align 4,,10
	.p2align 3
.L155:
	movzx	edx, BYTE PTR 1[rcx]
	xor	eax, eax
	sub	eax, edx
	jmp	.L137
.L154:
	movzx	edx, BYTE PTR [rdx]
	xor	eax, eax
	sub	eax, edx
	jmp	.L137
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
	.seh_endprologue
	mov	r10, rcx
	mov	r9, rdx
	cmp	r8, 1
	jle	.L184
	mov	rbx, r8
	lea	rax, -2[r8]
	shr	rbx
	lea	r11, -1[rbx]
	cmp	rax, 61
	jbe	.L164
	mov	rsi, r8
	mov	rcx, r8
	xor	eax, eax
	vmovdqa64	zmm1, ZMMWORD PTR .LC0[rip]
	shr	rsi, 6
	and	rcx, -64
	.p2align 5
	.p2align 4
	.p2align 3
.L160:
	vmovdqu8	zmm0, ZMMWORD PTR [r10+rax]
	vpshufb	zmm2, zmm0, zmm1
	vmovdqu8	ZMMWORD PTR [r9+rax], zmm2
	add	rax, 64
	cmp	rax, rcx
	jne	.L160
	mov	rdx, rsi
	mov	rax, rsi
	sal	rdx, 5
	sal	rax, 6
	mov	rsi, rdx
	lea	rcx, [r9+rax]
	add	rax, r10
	neg	rsi
	lea	r8, [r8+rsi*2]
	cmp	rdx, rbx
	je	.L183
.L159:
	sub	r11, rdx
	lea	rbx, 1[r11]
	cmp	r11, 14
	jbe	.L162
	vmovdqu8	ymm3, YMMWORD PTR [r10+rdx*2]
	mov	r10, rbx
	and	r10, -16
	vpshufb	ymm4, ymm3, YMMWORD PTR .LC1[rip]
	vmovdqu8	YMMWORD PTR [r9+rdx*2], ymm4
	lea	r9, [r10+r10]
	neg	r10
	add	rcx, r9
	add	rax, r9
	lea	r8, [r8+r10*2]
	and	ebx, 15
	je	.L183
.L162:
	movbe	r11w, WORD PTR [rax]
	mov	WORD PTR [rcx], r11w
	cmp	r8, 3
	jle	.L183
	movbe	dx, WORD PTR 2[rax]
	mov	WORD PTR 2[rcx], dx
	cmp	r8, 5
	jle	.L183
	movbe	si, WORD PTR 4[rax]
	mov	WORD PTR 4[rcx], si
	cmp	r8, 7
	jle	.L183
	movbe	bx, WORD PTR 6[rax]
	mov	WORD PTR 6[rcx], bx
	cmp	r8, 9
	jle	.L183
	movbe	r10w, WORD PTR 8[rax]
	mov	WORD PTR 8[rcx], r10w
	cmp	r8, 11
	jle	.L183
	movbe	r9w, WORD PTR 10[rax]
	mov	WORD PTR 10[rcx], r9w
	cmp	r8, 13
	jle	.L183
	movbe	r11w, WORD PTR 12[rax]
	mov	WORD PTR 12[rcx], r11w
	cmp	r8, 15
	jle	.L183
	movbe	dx, WORD PTR 14[rax]
	mov	WORD PTR 14[rcx], dx
	cmp	r8, 17
	jle	.L183
	movbe	si, WORD PTR 16[rax]
	mov	WORD PTR 16[rcx], si
	cmp	r8, 19
	jle	.L183
	movbe	bx, WORD PTR 18[rax]
	mov	WORD PTR 18[rcx], bx
	cmp	r8, 21
	jle	.L183
	movbe	r10w, WORD PTR 20[rax]
	mov	WORD PTR 20[rcx], r10w
	cmp	r8, 23
	jle	.L183
	movbe	r9w, WORD PTR 22[rax]
	mov	WORD PTR 22[rcx], r9w
	cmp	r8, 25
	jle	.L183
	movbe	r11w, WORD PTR 24[rax]
	mov	WORD PTR 24[rcx], r11w
	cmp	r8, 27
	jle	.L183
	movbe	dx, WORD PTR 26[rax]
	mov	WORD PTR 26[rcx], dx
	cmp	r8, 29
	jle	.L183
	movbe	r8w, WORD PTR 28[rax]
	mov	WORD PTR 28[rcx], r8w
	vzeroupper
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L183:
	vzeroupper
.L184:
	pop	rbx
	pop	rsi
	ret
.L164:
	mov	rcx, rdx
	mov	rax, r10
	xor	edx, edx
	jmp	.L159
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
	jbe	.L197
	cmp	cx, 31
	jbe	.L197
	lea	ecx, -8232[rax]
	mov	r8d, 1
	cmp	ecx, 1
	jbe	.L195
	sub	eax, 65529
	xor	r8d, r8d
	cmp	eax, 2
	setbe	r8b
	mov	eax, r8d
	ret
	.p2align 4,,10
	.p2align 3
.L197:
	mov	r8d, 1
.L195:
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
	jbe	.L206
	movzx	eax, cx
	lea	edx, -8234[rax]
	cmp	edx, 47061
	jbe	.L203
	cmp	cx, 8231
	jbe	.L203
	lea	r8d, -57344[rax]
	mov	r9d, 1
	cmp	r8d, 8184
	jbe	.L200
	sub	eax, 65532
	xor	r9d, r9d
	cmp	eax, 1048579
	ja	.L200
	not	ecx
	xor	r9d, r9d
	test	cx, -2
	setne	r9b
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L203:
	mov	r9d, 1
.L200:
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L206:
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
	jbe	.L207
	or	ecx, 32
	xor	edx, edx
	movzx	ecx, cx
	sub	ecx, 97
	cmp	ecx, 5
	setbe	dl
.L207:
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
	vucomisd	xmm0, xmm0
	jp	.L211
	vucomisd	xmm1, xmm1
	jp	.L215
	vcomisd	xmm0, xmm1
	jbe	.L218
	vsubsd	xmm0, xmm0, xmm1
.L211:
	ret
	.p2align 4,,10
	.p2align 3
.L218:
	vxorpd	xmm0, xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L215:
	vmovapd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	fdimf
	.def	fdimf;	.scl	2;	.type	32;	.endef
	.seh_proc	fdimf
fdimf:
	.seh_endprologue
	vucomiss	xmm0, xmm0
	jp	.L219
	vucomiss	xmm1, xmm1
	jp	.L223
	vcomiss	xmm0, xmm1
	jbe	.L226
	vsubss	xmm0, xmm0, xmm1
.L219:
	ret
	.p2align 4,,10
	.p2align 3
.L226:
	vxorps	xmm0, xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L223:
	vmovaps	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	fmax
	.def	fmax;	.scl	2;	.type	32;	.endef
	.seh_proc	fmax
fmax:
	.seh_endprologue
	vucomisd	xmm0, xmm0
	jp	.L227
	vucomisd	xmm1, xmm1
	jp	.L233
	vmovmskpd	eax, xmm0
	vmovmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L229
	test	eax, eax
	jne	.L227
.L233:
	vmovapd	xmm1, xmm0
.L227:
	vmovapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L229:
	vmaxsd	xmm1, xmm1, xmm0
	vmovapd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	fmaxf
	.def	fmaxf;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxf
fmaxf:
	.seh_endprologue
	vucomiss	xmm0, xmm0
	jp	.L236
	vucomiss	xmm1, xmm1
	jp	.L242
	vmovd	eax, xmm0
	vmovd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L238
	test	eax, eax
	jne	.L236
.L242:
	vmovaps	xmm1, xmm0
.L236:
	vmovaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L238:
	vmaxss	xmm1, xmm1, xmm0
	vmovaps	xmm0, xmm1
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
	jp	.L251
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L254
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
	je	.L247
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	jmp	.L246
	.p2align 4,,10
	.p2align 3
.L254:
	fstp	st(0)
.L246:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L247:
	fcomi	st, st(1)
	mov	rax, rcx
	fcmovbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L251:
	fstp	st(0)
	jmp	.L246
	.seh_endproc
	.p2align 4
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	vucomisd	xmm0, xmm0
	jp	.L260
	vucomisd	xmm1, xmm1
	jp	.L255
	vmovmskpd	eax, xmm0
	vmovmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L257
	test	eax, eax
	jne	.L255
.L260:
	vmovapd	xmm0, xmm1
.L255:
	ret
	.p2align 4,,10
	.p2align 3
.L257:
	vminsd	xmm0, xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	fminf
	.def	fminf;	.scl	2;	.type	32;	.endef
	.seh_proc	fminf
fminf:
	.seh_endprologue
	vucomiss	xmm0, xmm0
	jp	.L269
	vucomiss	xmm1, xmm1
	jp	.L264
	vmovd	eax, xmm0
	vmovd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L266
	test	eax, eax
	jne	.L264
.L269:
	vmovaps	xmm0, xmm1
.L264:
	ret
	.p2align 4,,10
	.p2align 3
.L266:
	vminss	xmm0, xmm0, xmm1
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
	jp	.L282
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L279
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
	je	.L275
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	jmp	.L274
	.p2align 4,,10
	.p2align 3
.L282:
	fstp	st(0)
.L274:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L275:
	fcomi	st, st(1)
	mov	rax, rcx
	fcmovnbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L279:
	fstp	st(0)
	jmp	.L274
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
	je	.L284
	lea	r8, digits[rip]
	.p2align 5
	.p2align 4
	.p2align 3
.L285:
	mov	edx, ecx
	add	rax, 1
	and	edx, 63
	movzx	r10d, BYTE PTR [r8+rdx]
	mov	BYTE PTR -1[rax], r10b
	shr	ecx, 6
	jne	.L285
.L284:
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
	je	.L297
	vmovq	xmm1, QWORD PTR [rdx]
	vpinsrq	xmm0, xmm1, rdx, 1
	vmovdqu	XMMWORD PTR [rcx], xmm0
	mov	QWORD PTR [rdx], rcx
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L296
	mov	QWORD PTR 8[rax], rcx
.L296:
	ret
	.p2align 4,,10
	.p2align 3
.L297:
	vpxor	xmm2, xmm2, xmm2
	vmovdqu	XMMWORD PTR [rcx], xmm2
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
	je	.L299
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L299:
	mov	rcx, QWORD PTR 8[rcx]
	test	rcx, rcx
	je	.L307
	mov	QWORD PTR [rcx], rax
.L307:
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
	mov	rbp, QWORD PTR [r8]
	mov	r14, QWORD PTR 144[rsp]
	mov	QWORD PTR 120[rsp], rdx
	mov	r15, rcx
	mov	r12, r8
	mov	rdi, r9
	test	rbp, rbp
	je	.L309
	mov	rbx, rdx
	xor	esi, esi
	jmp	.L311
	.p2align 4,,10
	.p2align 3
.L323:
	add	rsi, 1
	add	rbx, rdi
	cmp	rbp, rsi
	je	.L309
.L311:
	mov	r13, rbx
	mov	rdx, rbx
	mov	rcx, r15
	call	r14
	test	eax, eax
	jne	.L323
.L308:
	mov	rax, r13
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
.L309:
	lea	rax, 1[rbp]
	imul	rbp, rdi
	add	rbp, QWORD PTR 120[rsp]
	mov	QWORD PTR [r12], rax
	mov	r13, rbp
	test	rdi, rdi
	je	.L308
	mov	r8, rdi
	mov	rdx, r15
	mov	rcx, rbp
	call	memmove
	jmp	.L308
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
	je	.L325
	mov	rbx, rdx
	xor	esi, esi
	jmp	.L327
	.p2align 4,,10
	.p2align 3
.L335:
	add	rsi, 1
	add	rbx, rbp
	cmp	r12, rsi
	je	.L325
.L327:
	mov	r14, rbx
	mov	rdx, rbx
	mov	rcx, rdi
	call	r13
	test	eax, eax
	jne	.L335
.L324:
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
.L325:
	xor	r14d, r14d
	jmp	.L324
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
	jmp	.L364
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L360:
	add	rcx, 1
.L364:
	movsx	eax, BYTE PTR [rcx]
	lea	r8d, -9[rax]
	mov	edx, eax
	cmp	r8d, 4
	jbe	.L360
	cmp	dl, 32
	je	.L360
	cmp	dl, 43
	je	.L341
	cmp	dl, 45
	jne	.L365
	movsx	r9d, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	edx, r9d
	sub	r9d, 48
	cmp	r9d, 9
	ja	.L350
	mov	r11d, 1
.L344:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L347:
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
	jbe	.L347
	sub	eax, ecx
	test	r11d, r11d
	cmovne	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L365:
	sub	eax, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	eax, 9
	jbe	.L344
.L350:
	xor	eax, eax
.L366:
	ret
	.p2align 4,,10
	.p2align 3
.L341:
	lea	r10, 1[rcx]
	movsx	ecx, BYTE PTR 1[rcx]
	xor	r11d, r11d
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L344
	xor	eax, eax
	jmp	.L366
	.seh_endproc
	.p2align 4
	.globl	atol
	.def	atol;	.scl	2;	.type	32;	.endef
	.seh_proc	atol
atol:
	.seh_endprologue
	jmp	.L391
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L388:
	add	rcx, 1
.L391:
	movsx	eax, BYTE PTR [rcx]
	lea	r8d, -9[rax]
	mov	edx, eax
	cmp	r8d, 4
	jbe	.L388
	cmp	dl, 32
	je	.L388
	cmp	dl, 43
	je	.L371
	cmp	dl, 45
	jne	.L372
	movsx	r9d, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	r11d, 1
	mov	edx, r9d
	sub	r9d, 48
	cmp	r9d, 9
	ja	.L379
.L373:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L376:
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
	jbe	.L376
	sub	eax, ecx
	test	r11d, r11d
	cmovne	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L372:
	sub	eax, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	eax, 9
	jbe	.L373
.L379:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L371:
	lea	r10, 1[rcx]
	movsx	ecx, BYTE PTR 1[rcx]
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	ja	.L379
	xor	r11d, r11d
	jmp	.L373
	.seh_endproc
	.p2align 4
	.globl	atoll
	.def	atoll;	.scl	2;	.type	32;	.endef
	.seh_proc	atoll
atoll:
	.seh_endprologue
	jmp	.L419
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L415:
	add	rcx, 1
.L419:
	movsx	eax, BYTE PTR [rcx]
	lea	r8d, -9[rax]
	mov	edx, eax
	cmp	r8d, 4
	jbe	.L415
	cmp	dl, 32
	je	.L415
	cmp	dl, 43
	je	.L396
	cmp	dl, 45
	jne	.L420
	movsx	r9d, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	edx, r9d
	sub	r9d, 48
	cmp	r9d, 9
	ja	.L405
	mov	r11d, 1
.L399:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L402:
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
	jbe	.L402
	sub	rax, rcx
	test	r11d, r11d
	cmovne	rax, r9
	ret
	.p2align 4,,10
	.p2align 3
.L420:
	sub	eax, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	eax, 9
	jbe	.L399
.L405:
	xor	eax, eax
.L421:
	ret
	.p2align 4,,10
	.p2align 3
.L396:
	lea	r10, 1[rcx]
	movsx	ecx, BYTE PTR 1[rcx]
	xor	r11d, r11d
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L399
	xor	eax, eax
	jmp	.L421
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
	mov	r12, QWORD PTR 128[rsp]
	mov	r14, rcx
	mov	rbp, rdx
	mov	rbx, r8
	mov	r13, r9
	.p2align 4
	.p2align 3
.L435:
	test	rbx, rbx
	je	.L423
.L436:
	mov	rdi, rbx
	mov	rcx, r14
	shr	rdi
	mov	rsi, rdi
	imul	rsi, r13
	add	rsi, rbp
	mov	rdx, rsi
	call	r12
	test	eax, eax
	js	.L427
	je	.L422
	sub	rbx, 1
	lea	rbp, [rsi+r13]
	sub	rbx, rdi
	test	rbx, rbx
	jne	.L436
.L423:
	xor	esi, esi
.L422:
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
.L427:
	mov	rbx, rdi
	jmp	.L435
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
	mov	r15, rcx
	mov	rbp, rdx
	mov	r14, r9
	mov	esi, r8d
	test	r8d, r8d
	je	.L442
	.p2align 4
	.p2align 3
.L450:
	mov	edi, esi
	mov	r8, r13
	mov	rcx, r15
	sar	edi
	movsx	rbx, edi
	imul	rbx, r14
	add	rbx, rbp
	mov	rdx, rbx
	call	r12
	test	eax, eax
	je	.L437
	jle	.L440
	sub	esi, 1
	lea	rbp, [rbx+r14]
	sar	esi
	jne	.L450
.L442:
	xor	ebx, ebx
.L437:
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
.L440:
	test	edi, edi
	je	.L442
	mov	esi, edi
	jmp	.L450
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
	jne	.L460
	jmp	.L463
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L462:
	movzx	eax, WORD PTR 2[rcx]
	add	rcx, 2
	test	ax, ax
	je	.L463
.L460:
	cmp	dx, ax
	jne	.L462
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L463:
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
	je	.L468
	jmp	.L469
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L470:
	movzx	r8d, WORD PTR [rcx+rax]
	add	rax, 2
	movzx	r9d, WORD PTR -2[rdx+rax]
	cmp	r8w, r9w
	jne	.L469
.L468:
	test	r8w, r8w
	jne	.L470
.L469:
	mov	eax, -1
	cmp	r8w, r9w
	jb	.L467
	xor	eax, eax
	cmp	r9w, r8w
	setb	al
.L467:
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
.L477:
	movzx	r9d, WORD PTR [rdx+r8]
	mov	WORD PTR [rax+r8], r9w
	add	r8, 2
	test	r9w, r9w
	jne	.L477
	ret
	.seh_endproc
	.p2align 4
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	cmp	WORD PTR [rcx], 0
	je	.L482
	mov	rax, rcx
	.p2align 4
	.p2align 4
	.p2align 3
.L481:
	add	rax, 2
	cmp	WORD PTR [rax], 0
	jne	.L481
	sub	rax, rcx
	sar	rax
	ret
	.p2align 4,,10
	.p2align 3
.L482:
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
	jne	.L485
	jmp	.L491
	.p2align 4,,10
	.p2align 3
.L498:
	test	ax, ax
	je	.L489
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L491
.L485:
	movzx	eax, WORD PTR [rcx]
	cmp	WORD PTR [rdx], ax
	je	.L498
.L489:
	movzx	ecx, WORD PTR [rcx]
	movzx	edx, WORD PTR [rdx]
	cmp	cx, dx
	jb	.L499
	cmp	dx, cx
	setb	r8b
	movzx	eax, r8b
	ret
	.p2align 4,,10
	.p2align 3
.L499:
	mov	eax, -1
	ret
	.p2align 4,,10
	.p2align 3
.L491:
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
	jne	.L501
	jmp	.L504
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L503:
	add	rcx, 2
	sub	r8, 1
	je	.L504
.L501:
	cmp	WORD PTR [rcx], dx
	jne	.L503
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L504:
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
	jne	.L509
	jmp	.L514
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L511:
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L514
.L509:
	movzx	eax, WORD PTR [rcx]
	cmp	ax, WORD PTR [rdx]
	je	.L511
	movzx	edx, WORD PTR [rdx]
	cmp	ax, dx
	jb	.L520
	cmp	dx, ax
	setb	cl
	movzx	eax, cl
	ret
	.p2align 4,,10
	.p2align 3
.L514:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L520:
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
	je	.L522
	add	r8, r8
	call	memcpy
	mov	rcx, rax
.L522:
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
	mov	rax, rcx
	cmp	rcx, rdx
	je	.L586
	lea	rsi, [r8+r8]
	sub	rcx, rdx
	lea	r9, -1[r8]
	cmp	rcx, rsi
	jnb	.L692
	test	r8, r8
	je	.L586
	cmp	r9, 14
	jbe	.L657
	mov	rcx, rax
	sub	rcx, rdx
	add	rcx, 62
	cmp	rcx, 60
	jbe	.L657
	cmp	r9, 30
	jbe	.L549
	mov	r10, r8
	lea	r11, -64[rsi]
	xor	ecx, ecx
	shr	r10, 5
	lea	rbx, [rdx+r11]
	add	r11, rax
	neg	r10
	sal	r10, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L533:
	vmovdqu16	zmm2, ZMMWORD PTR [rbx+rcx]
	vmovdqu16	ZMMWORD PTR [r11+rcx], zmm2
	sub	rcx, 64
	cmp	rcx, r10
	jne	.L533
	mov	rbx, r8
	and	rbx, -32
	sub	r9, rbx
	test	r8b, 31
	je	.L690
	sub	r8, rbx
	lea	r11, -1[r8]
	cmp	r11, 14
	jbe	.L536
.L532:
	neg	rbx
	lea	rsi, -32[rsi+rbx*2]
	mov	rbx, r8
	and	rbx, -16
	vmovdqu16	ymm3, YMMWORD PTR [rdx+rsi]
	sub	r9, rbx
	and	r8d, 15
	vmovdqu16	YMMWORD PTR [rax+rsi], ymm3
	je	.L690
.L536:
	movzx	r8d, WORD PTR [rdx+r9*2]
	lea	r11, -1[r9]
	mov	WORD PTR [rax+r9*2], r8w
	test	r9, r9
	je	.L690
	movzx	r10d, WORD PTR [rdx+r11*2]
	lea	rcx, [r11+r11]
	mov	WORD PTR [rax+r11*2], r10w
	test	r11, r11
	je	.L690
	movzx	esi, WORD PTR -2[rdx+rcx]
	mov	WORD PTR -2[rax+rcx], si
	cmp	r9, 2
	je	.L690
	movzx	ebx, WORD PTR -4[rdx+rcx]
	mov	WORD PTR -4[rax+rcx], bx
	cmp	r9, 3
	je	.L690
	movzx	r8d, WORD PTR -6[rdx+rcx]
	mov	WORD PTR -6[rax+rcx], r8w
	cmp	r9, 4
	je	.L690
	movzx	r11d, WORD PTR -8[rdx+rcx]
	mov	WORD PTR -8[rax+rcx], r11w
	cmp	r9, 5
	je	.L690
	movzx	r10d, WORD PTR -10[rdx+rcx]
	mov	WORD PTR -10[rax+rcx], r10w
	cmp	r9, 6
	je	.L690
	movzx	esi, WORD PTR -12[rdx+rcx]
	mov	WORD PTR -12[rax+rcx], si
	cmp	r9, 7
	je	.L690
	movzx	ebx, WORD PTR -14[rdx+rcx]
	mov	WORD PTR -14[rax+rcx], bx
	cmp	r9, 8
	je	.L690
	movzx	r8d, WORD PTR -16[rdx+rcx]
	mov	WORD PTR -16[rax+rcx], r8w
	cmp	r9, 9
	je	.L690
	movzx	r11d, WORD PTR -18[rdx+rcx]
	mov	WORD PTR -18[rax+rcx], r11w
	cmp	r9, 10
	je	.L690
	movzx	r10d, WORD PTR -20[rdx+rcx]
	mov	WORD PTR -20[rax+rcx], r10w
	cmp	r9, 11
	je	.L690
	movzx	esi, WORD PTR -22[rdx+rcx]
	mov	WORD PTR -22[rax+rcx], si
	cmp	r9, 12
	je	.L690
	movzx	ebx, WORD PTR -24[rdx+rcx]
	mov	WORD PTR -24[rax+rcx], bx
	cmp	r9, 13
	je	.L690
	movzx	edx, WORD PTR -26[rdx+rcx]
	mov	WORD PTR -26[rax+rcx], dx
	vzeroupper
.L586:
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L692:
	test	r8, r8
	je	.L586
	cmp	r9, 14
	jbe	.L551
	lea	r10, 2[rdx]
	mov	rbx, rax
	sub	rbx, r10
	cmp	rbx, 60
	jbe	.L551
	cmp	r9, 30
	jbe	.L552
	mov	rbx, r8
	xor	r11d, r11d
	xor	r10d, r10d
	shr	rbx, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L542:
	vmovdqu16	zmm0, ZMMWORD PTR [rdx+r11]
	add	r10, 1
	vmovdqu16	ZMMWORD PTR [rax+r11], zmm0
	add	r11, 64
	cmp	rbx, r10
	jne	.L542
	mov	rcx, r8
	and	rcx, -32
	lea	rsi, [rcx+rcx]
	sub	r9, rcx
	lea	r11, [rdx+rsi]
	add	rsi, rax
	test	r8b, 31
	je	.L690
	sub	r8, rcx
	lea	rbx, -1[r8]
	cmp	rbx, 14
	jbe	.L545
.L541:
	vmovdqu16	ymm1, YMMWORD PTR [rdx+rcx*2]
	mov	rdx, r8
	and	rdx, -16
	sub	r9, rdx
	add	rdx, rdx
	vmovdqu16	YMMWORD PTR [rax+rcx*2], ymm1
	add	r11, rdx
	add	rsi, rdx
	and	r8d, 15
	je	.L690
.L545:
	movzx	r8d, WORD PTR [r11]
	mov	WORD PTR [rsi], r8w
	test	r9, r9
	je	.L690
	movzx	ecx, WORD PTR 2[r11]
	mov	WORD PTR 2[rsi], cx
	cmp	r9, 1
	je	.L690
	movzx	r10d, WORD PTR 4[r11]
	mov	WORD PTR 4[rsi], r10w
	cmp	r9, 2
	je	.L690
	movzx	ebx, WORD PTR 6[r11]
	mov	WORD PTR 6[rsi], bx
	cmp	r9, 3
	je	.L690
	movzx	edx, WORD PTR 8[r11]
	mov	WORD PTR 8[rsi], dx
	cmp	r9, 4
	je	.L690
	movzx	r8d, WORD PTR 10[r11]
	mov	WORD PTR 10[rsi], r8w
	cmp	r9, 5
	je	.L690
	movzx	ecx, WORD PTR 12[r11]
	mov	WORD PTR 12[rsi], cx
	cmp	r9, 6
	je	.L690
	movzx	r10d, WORD PTR 14[r11]
	mov	WORD PTR 14[rsi], r10w
	cmp	r9, 7
	je	.L690
	movzx	ebx, WORD PTR 16[r11]
	mov	WORD PTR 16[rsi], bx
	cmp	r9, 8
	je	.L690
	movzx	edx, WORD PTR 18[r11]
	mov	WORD PTR 18[rsi], dx
	cmp	r9, 9
	je	.L690
	movzx	r8d, WORD PTR 20[r11]
	mov	WORD PTR 20[rsi], r8w
	cmp	r9, 10
	je	.L690
	movzx	ecx, WORD PTR 22[r11]
	mov	WORD PTR 22[rsi], cx
	cmp	r9, 11
	je	.L690
	movzx	r10d, WORD PTR 24[r11]
	mov	WORD PTR 24[rsi], r10w
	cmp	r9, 12
	je	.L690
	movzx	ebx, WORD PTR 26[r11]
	mov	WORD PTR 26[rsi], bx
	cmp	r9, 13
	je	.L690
	movzx	r9d, WORD PTR 28[r11]
	mov	WORD PTR 28[rsi], r9w
	vzeroupper
	jmp	.L586
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L657:
	movzx	ecx, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], cx
	sub	r9, 1
	jb	.L586
	movzx	ecx, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], cx
	sub	r9, 1
	jnb	.L657
	jmp	.L586
	.p2align 4,,10
	.p2align 3
.L690:
	vzeroupper
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L551:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L658:
	movzx	r11d, WORD PTR [rdx+rsi*2]
	mov	WORD PTR [rax+rsi*2], r11w
	add	rsi, 1
	cmp	r8, rsi
	jne	.L658
	jmp	.L586
.L549:
	xor	ebx, ebx
	jmp	.L532
.L552:
	mov	r11, rdx
	mov	rsi, rax
	xor	ecx, ecx
	jmp	.L541
	.seh_endproc
	.p2align 4
	.globl	wmemset
	.def	wmemset;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemset
wmemset:
	.seh_endprologue
	mov	r9, rcx
	lea	r10, -1[r8]
	test	r8, r8
	je	.L694
	cmp	r10, 30
	jbe	.L700
	mov	r11, r8
	vpbroadcastw	zmm0, edx
	xor	eax, eax
	shr	r11, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L696:
	mov	rcx, rax
	add	rax, 1
	sal	rcx, 6
	vmovdqu16	ZMMWORD PTR [r9+rcx], zmm0
	cmp	r11, rax
	jne	.L696
	mov	rcx, r8
	and	rcx, -32
	sub	r10, rcx
	lea	rax, [r9+rcx*2]
	test	r8b, 31
	je	.L767
.L695:
	sub	r8, rcx
	lea	r11, -1[r8]
	cmp	r11, 14
	jbe	.L698
	vpbroadcastw	ymm1, edx
	vmovdqu16	YMMWORD PTR [r9+rcx*2], ymm1
	mov	rcx, r8
	and	rcx, -16
	sub	r10, rcx
	and	r8d, 15
	lea	rax, [rax+rcx*2]
	je	.L767
.L698:
	mov	WORD PTR [rax], dx
	test	r10, r10
	je	.L767
	mov	WORD PTR 2[rax], dx
	cmp	r10, 1
	je	.L767
	mov	WORD PTR 4[rax], dx
	cmp	r10, 2
	je	.L767
	mov	WORD PTR 6[rax], dx
	cmp	r10, 3
	je	.L767
	mov	WORD PTR 8[rax], dx
	cmp	r10, 4
	je	.L767
	mov	WORD PTR 10[rax], dx
	cmp	r10, 5
	je	.L767
	mov	WORD PTR 12[rax], dx
	cmp	r10, 6
	je	.L767
	mov	WORD PTR 14[rax], dx
	cmp	r10, 7
	je	.L767
	mov	WORD PTR 16[rax], dx
	cmp	r10, 8
	je	.L767
	mov	WORD PTR 18[rax], dx
	cmp	r10, 9
	je	.L767
	mov	WORD PTR 20[rax], dx
	cmp	r10, 10
	je	.L767
	mov	WORD PTR 22[rax], dx
	cmp	r10, 11
	je	.L767
	mov	WORD PTR 24[rax], dx
	cmp	r10, 12
	je	.L767
	mov	WORD PTR 26[rax], dx
	cmp	r10, 13
	je	.L767
	mov	WORD PTR 28[rax], dx
	mov	rax, r9
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L767:
	vzeroupper
.L694:
	mov	rax, r9
	ret
.L700:
	mov	rax, rcx
	xor	ecx, ecx
	jmp	.L695
	.seh_endproc
	.p2align 4
	.globl	bcopy
	.def	bcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	bcopy
bcopy:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	cmp	rcx, rdx
	jnb	.L769
	test	r8, r8
	je	.L821
	lea	rsi, -1[r8]
	cmp	rsi, 30
	jbe	.L816
	lea	r10, -2[rcx+r8]
	mov	rax, rdx
	sub	rax, r10
	lea	r9, 62[rax+rsi]
	cmp	r9, 62
	jbe	.L816
	lea	r10, [rcx+r8]
	lea	r9, [rdx+r8]
	cmp	rsi, 62
	jbe	.L790
	mov	rbx, r8
	lea	r11, -64[r8]
	xor	eax, eax
	and	rbx, -64
	lea	rsi, [rcx+r11]
	add	r11, rdx
	neg	rbx
	.p2align 5
	.p2align 4
	.p2align 3
.L773:
	vmovdqu8	zmm2, ZMMWORD PTR [rsi+rax]
	vmovdqu8	ZMMWORD PTR [r11+rax], zmm2
	sub	rax, 64
	cmp	rax, rbx
	jne	.L773
	mov	rbx, r8
	add	r9, rax
	add	r10, rax
	and	ebx, 63
	and	r8d, 63
	je	.L820
	lea	r11, -1[rbx]
	mov	r8, rbx
	cmp	r11, 30
	jbe	.L775
.L772:
	vmovdqu8	ymm3, YMMWORD PTR -32[rcx+r8]
	vmovdqu8	YMMWORD PTR -32[rdx+r8], ymm3
	mov	rdx, r8
	and	rdx, -32
	sub	r9, rdx
	sub	r10, rdx
	sub	rbx, rdx
	and	r8d, 31
	je	.L820
.L775:
	sub	r10, rbx
	sub	r9, rbx
	.p2align 5
	.p2align 4
	.p2align 3
.L777:
	movzx	ecx, BYTE PTR -1[r10+rbx]
	mov	BYTE PTR -1[r9+rbx], cl
	sub	rbx, 1
	jne	.L777
.L820:
	vzeroupper
.L821:
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L769:
	je	.L821
	test	r8, r8
	je	.L821
	lea	rax, -1[r8]
	cmp	rax, 30
	jbe	.L792
	lea	r10, 1[rcx]
	mov	r9, rdx
	sub	r9, r10
	cmp	r9, 62
	jbe	.L792
	cmp	rax, 62
	jbe	.L793
	mov	r10, r8
	xor	eax, eax
	and	r10, -64
	.p2align 5
	.p2align 4
	.p2align 3
.L782:
	vmovdqu8	zmm0, ZMMWORD PTR [rcx+rax]
	vmovdqu8	ZMMWORD PTR [rdx+rax], zmm0
	add	rax, 64
	cmp	rax, r10
	jne	.L782
	mov	rsi, r8
	lea	rbx, [rdx+r10]
	lea	r11, [rcx+r10]
	sub	rsi, r10
	cmp	r8, r10
	je	.L820
	lea	r9, -1[rsi]
	mov	r8, rsi
	cmp	r9, 30
	jbe	.L785
.L781:
	vmovdqu8	ymm1, YMMWORD PTR [rcx+r10]
	vmovdqu8	YMMWORD PTR [rdx+r10], ymm1
	mov	rdx, r8
	and	rdx, -32
	add	rbx, rdx
	add	r11, rdx
	sub	rsi, rdx
	and	r8d, 31
	je	.L820
.L785:
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L787:
	movzx	r8d, BYTE PTR [r11+rcx]
	mov	BYTE PTR [rbx+rcx], r8b
	add	rcx, 1
	cmp	rcx, rsi
	jne	.L787
	vzeroupper
	jmp	.L821
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L822:
	sub	rsi, 1
.L816:
	movzx	ebx, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[rdx+r8], bl
	mov	r8, rsi
	test	rsi, rsi
	jne	.L822
	jmp	.L821
	.p2align 4,,10
	.p2align 3
.L792:
	xor	ebx, ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L815:
	movzx	r11d, BYTE PTR [rcx+rbx]
	mov	BYTE PTR [rdx+rbx], r11b
	add	rbx, 1
	cmp	r8, rbx
	jne	.L815
	jmp	.L821
.L790:
	mov	rbx, r8
	jmp	.L772
.L793:
	mov	rbx, rdx
	mov	r11, rcx
	mov	rsi, r8
	xor	r10d, r10d
	jmp	.L781
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
	mov	eax, 1
	vpxor	xmm4, xmm4, xmm4
	vmovdqa32	zmm2, ZMMWORD PTR .LC6[rip]
	vpbroadcastd	zmm1, eax
	vpbroadcastd	zmm0, ecx
	mov	r8d, ecx
	vpsrlvd	zmm3, zmm0, zmm2
	vpandd	zmm5, zmm3, zmm1
	vpcmpd	k0, zmm5, zmm4, 4
	kortestw	k0, k0
	jne	.L843
	vmovdqa32	zmm2, ZMMWORD PTR .LC8[rip]
	vpsrlvd	zmm0, zmm0, zmm2
	vpandd	zmm3, zmm0, zmm1
	vpcmpd	k1, zmm3, zmm4, 4
	kortestw	k1, k1
	jne	.L844
.L857:
	xor	edx, edx
.L836:
	mov	eax, edx
	vzeroupper
	ret
.L844:
	vmovdqa32	zmm1, ZMMWORD PTR .LC7[rip]
.L837:
	vmovd	r10d, xmm2
	vmovd	edx, xmm1
	bt	r8d, r10d
	lea	ecx, 1[r10]
	jc	.L839
	mov	r9d, r8d
	shr	r9d, cl
	lea	ecx, 2[r10]
	and	r9d, 1
	jne	.L839
	cmp	edx, 2
	je	.L857
	mov	r11d, r8d
	shr	r11d, cl
	lea	ecx, 3[r10]
	and	r11d, 1
	jne	.L839
	cmp	edx, 3
	je	.L857
	mov	eax, r8d
	shr	eax, cl
	lea	ecx, 4[r10]
	and	eax, 1
	jne	.L839
	cmp	edx, 4
	je	.L857
	mov	r9d, r8d
	shr	r9d, cl
	lea	ecx, 5[r10]
	and	r9d, 1
	jne	.L839
	cmp	edx, 5
	je	.L857
	mov	r11d, r8d
	shr	r11d, cl
	lea	ecx, 6[r10]
	and	r11d, 1
	jne	.L839
	cmp	edx, 6
	je	.L857
	mov	eax, r8d
	shr	eax, cl
	lea	ecx, 7[r10]
	and	eax, 1
	jne	.L839
	cmp	edx, 7
	je	.L857
	mov	r9d, r8d
	shr	r9d, cl
	lea	ecx, 8[r10]
	and	r9d, 1
	jne	.L839
	cmp	edx, 8
	je	.L857
	mov	r11d, r8d
	shr	r11d, cl
	lea	ecx, 9[r10]
	and	r11d, 1
	jne	.L839
	cmp	edx, 9
	je	.L857
	mov	eax, r8d
	shr	eax, cl
	lea	ecx, 10[r10]
	and	eax, 1
	jne	.L839
	cmp	edx, 10
	je	.L857
	mov	r9d, r8d
	shr	r9d, cl
	lea	ecx, 11[r10]
	and	r9d, 1
	jne	.L839
	cmp	edx, 11
	je	.L857
	mov	r11d, r8d
	shr	r11d, cl
	lea	ecx, 12[r10]
	and	r11d, 1
	jne	.L839
	cmp	edx, 12
	je	.L857
	mov	eax, r8d
	shr	eax, cl
	lea	ecx, 13[r10]
	and	eax, 1
	jne	.L839
	cmp	edx, 13
	je	.L857
	mov	r9d, r8d
	shr	r9d, cl
	lea	ecx, 14[r10]
	and	r9d, 1
	jne	.L839
	cmp	edx, 14
	je	.L857
	mov	r11d, r8d
	shr	r11d, cl
	lea	ecx, 15[r10]
	and	r11d, 1
	jne	.L839
	cmp	edx, 15
	mov	edx, 0
	je	.L836
	bt	r8d, ecx
	jnc	.L836
	lea	ecx, 16[r10]
.L839:
	mov	edx, ecx
	vzeroupper
	mov	eax, edx
	ret
.L843:
	vmovdqa32	zmm1, ZMMWORD PTR .LC5[rip]
	jmp	.L837
	.seh_endproc
	.p2align 4
	.globl	libiberty_ffs
	.def	libiberty_ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	libiberty_ffs
libiberty_ffs:
	.seh_endprologue
	xor	eax, eax
	test	ecx, ecx
	je	.L862
	mov	eax, ecx
	and	eax, 1
	jne	.L862
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L864:
	sar	ecx
	add	eax, 1
	test	cl, 1
	je	.L864
.L862:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinff
	.def	gl_isinff;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinff
gl_isinff:
	.seh_endprologue
	mov	eax, 1
	vmovss	xmm1, DWORD PTR .LC10[rip]
	vcomiss	xmm1, xmm0
	ja	.L869
	xor	eax, eax
	vcomiss	xmm0, DWORD PTR .LC11[rip]
	seta	al
.L869:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinfd
	.def	gl_isinfd;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfd
gl_isinfd:
	.seh_endprologue
	mov	eax, 1
	vmovsd	xmm1, QWORD PTR .LC12[rip]
	vcomisd	xmm1, xmm0
	ja	.L872
	xor	eax, eax
	vcomisd	xmm0, QWORD PTR .LC13[rip]
	seta	al
.L872:
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
	fld	TBYTE PTR .LC14[rip]
	fcomip	st, st(1)
	ja	.L878
	fld	TBYTE PTR .LC15[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L875
	.p2align 4,,10
	.p2align 3
.L878:
	fstp	st(0)
.L875:
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
	vxorps	xmm0, xmm0, xmm0
	vcvtsi2sd	xmm1, xmm0, edx
	vmovlpd	QWORD PTR 8[rsp], xmm1
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
	vucomiss	xmm0, xmm0
	jp	.L881
	vaddss	xmm1, xmm0, xmm0
	vucomiss	xmm1, xmm0
	jp	.L888
	jne	.L888
.L881:
	ret
	.p2align 4,,10
	.p2align 3
.L888:
	vmovss	xmm2, DWORD PTR .LC16[rip]
	test	edx, edx
	jns	.L883
	vmovss	xmm2, DWORD PTR .LC17[rip]
.L883:
	test	dl, 1
	je	.L884
	.p2align 4
	.p2align 3
.L885:
	vmulss	xmm0, xmm0, xmm2
.L884:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L881
	vmulss	xmm2, xmm2, xmm2
	test	dl, 1
	jne	.L885
.L895:
	vmulss	xmm2, xmm2, xmm2
	mov	ecx, edx
	shr	ecx, 31
	add	edx, ecx
	sar	edx
	test	dl, 1
	jne	.L885
	jmp	.L895
	.seh_endproc
	.p2align 4
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	vucomisd	xmm0, xmm0
	jp	.L897
	vaddsd	xmm1, xmm0, xmm0
	vucomisd	xmm1, xmm0
	jp	.L904
	jne	.L904
.L897:
	ret
	.p2align 4,,10
	.p2align 3
.L904:
	vmovsd	xmm2, QWORD PTR .LC18[rip]
	test	edx, edx
	jns	.L899
	vmovsd	xmm2, QWORD PTR .LC19[rip]
.L899:
	test	dl, 1
	je	.L900
	.p2align 4
	.p2align 3
.L901:
	vmulsd	xmm0, xmm0, xmm2
.L900:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L897
	vmulsd	xmm2, xmm2, xmm2
	test	dl, 1
	jne	.L901
.L911:
	vmulsd	xmm2, xmm2, xmm2
	mov	ecx, edx
	shr	ecx, 31
	add	edx, ecx
	sar	edx
	test	dl, 1
	jne	.L901
	jmp	.L911
	.seh_endproc
	.p2align 4
	.globl	ldexpl
	.def	ldexpl;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpl
ldexpl:
	.seh_endprologue
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L913
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L920
	jne	.L920
	jmp	.L913
	.p2align 4,,10
	.p2align 3
.L929:
	fstp	st(0)
.L913:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L920:
	test	r8d, r8d
	js	.L927
	fld	DWORD PTR .LC16[rip]
.L915:
	test	r8b, 1
	je	.L916
	.p2align 4
	.p2align 3
.L917:
	fmul	st(1), st
.L916:
	mov	eax, r8d
	shr	eax, 31
	add	r8d, eax
	sar	r8d
	je	.L929
	fmul	st, st(0)
	test	r8b, 1
	jne	.L917
.L928:
	mov	edx, r8d
	fmul	st, st(0)
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	test	r8b, 1
	jne	.L917
	jmp	.L928
	.p2align 4,,10
	.p2align 3
.L927:
	fld	DWORD PTR .LC17[rip]
	jmp	.L915
	.seh_endproc
	.p2align 4
	.globl	memxor
	.def	memxor;	.scl	2;	.type	32;	.endef
	.seh_proc	memxor
memxor:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r9, rcx
	test	r8, r8
	je	.L931
	lea	rax, -1[r8]
	cmp	rax, 62
	jbe	.L938
	mov	r10, r8
	xor	ebx, ebx
	and	r10, -64
	.p2align 5
	.p2align 4
	.p2align 3
.L933:
	vmovdqu8	zmm0, ZMMWORD PTR [r9+rbx]
	vpxorq	zmm1, zmm0, ZMMWORD PTR [rdx+rbx]
	vmovdqu8	ZMMWORD PTR [r9+rbx], zmm1
	add	rbx, 64
	cmp	rbx, r10
	jne	.L933
	mov	r11, r8
	lea	rcx, [r9+r10]
	lea	rax, [rdx+r10]
	sub	r11, r10
	cmp	r8, r10
	je	.L947
.L932:
	sub	r8, r10
	lea	rbx, -1[r8]
	cmp	rbx, 30
	jbe	.L935
	lea	rbx, [r9+r10]
	vmovdqu8	ymm2, YMMWORD PTR [rbx]
	vpxorq	ymm3, ymm2, YMMWORD PTR [rdx+r10]
	mov	rdx, r8
	and	rdx, -32
	add	rcx, rdx
	add	rax, rdx
	sub	r11, rdx
	and	r8d, 31
	vmovdqu8	YMMWORD PTR [rbx], ymm3
	je	.L947
.L935:
	lea	r8, [rax+r11]
	.p2align 5
	.p2align 4
	.p2align 3
.L937:
	add	rax, 1
	add	rcx, 1
	movzx	r11d, BYTE PTR -1[rax]
	xor	BYTE PTR -1[rcx], r11b
	cmp	rax, r8
	jne	.L937
.L947:
	vzeroupper
.L931:
	mov	rax, r9
	pop	rbx
	ret
.L938:
	mov	rax, rdx
	mov	r11, r8
	xor	r10d, r10d
	jmp	.L932
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
	je	.L949
	.p2align 4
	.p2align 4
	.p2align 3
.L950:
	add	r9, 1
	cmp	BYTE PTR [r9], 0
	jne	.L950
.L949:
	test	r8, r8
	jne	.L951
	jmp	.L952
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L953:
	add	rdx, 1
	add	r9, 1
	sub	r8, 1
	je	.L952
.L951:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [r9], r10b
	test	r10b, r10b
	jne	.L953
	ret
	.p2align 4,,10
	.p2align 3
.L952:
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
	je	.L962
.L963:
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L965
.L962:
	ret
	.p2align 4,,10
	.p2align 3
.L965:
	add	rax, 1
	cmp	rdx, rax
	jne	.L963
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
	je	.L976
.L972:
	mov	r8, rdx
	jmp	.L975
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L974:
	add	r8, 1
	cmp	r9b, r10b
	je	.L973
.L975:
	movzx	r9d, BYTE PTR [r8]
	test	r9b, r9b
	jne	.L974
	movzx	r10d, BYTE PTR 1[rax]
	add	rax, 1
	test	r10b, r10b
	jne	.L972
.L976:
	xor	eax, eax
.L973:
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
.L981:
	movsx	r9d, BYTE PTR [rcx]
	cmp	r9d, edx
	cmove	r8, rcx
	add	rcx, 1
	test	r9b, r9b
	jne	.L981
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
	je	.L995
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L985:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L985
	mov	r11, rcx
	sub	rax, rsi
	je	.L983
	lea	rbx, -1[rsi+rax]
	jmp	.L1005
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1007:
	add	rcx, 1
	test	r8b, r8b
	je	.L1006
.L1005:
	movzx	r8d, BYTE PTR [rcx]
	cmp	r8b, dl
	jne	.L1007
	mov	r8d, edx
	mov	rax, rsi
	mov	r10, rcx
	jmp	.L987
	.p2align 4,,10
	.p2align 3
.L1008:
	test	r9b, r9b
	setne	r11b
	cmp	r9b, r8b
	sete	r9b
	test	r11b, r9b
	je	.L988
	movzx	r8d, BYTE PTR 1[r10]
	add	r10, 1
	add	rax, 1
	test	r8b, r8b
	je	.L988
.L987:
	movzx	r9d, BYTE PTR [rax]
	cmp	rax, rbx
	jne	.L1008
.L988:
	cmp	r8b, BYTE PTR [rax]
	je	.L995
	add	rcx, 1
	jmp	.L1005
	.p2align 4,,10
	.p2align 3
.L1006:
	xor	r11d, r11d
.L983:
	mov	rax, r11
	pop	rbx
	pop	rsi
	ret
.L995:
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
	vxorpd	xmm2, xmm2, xmm2
	vcomisd	xmm2, xmm0
	ja	.L1019
	vcomisd	xmm0, xmm2
	jbe	.L1013
	vcomisd	xmm2, xmm1
	ja	.L1012
.L1013:
	ret
	.p2align 4,,10
	.p2align 3
.L1019:
	vcomisd	xmm1, xmm2
	jbe	.L1013
.L1012:
	vxorpd	xmm0, xmm0, XMMWORD PTR .LC20[rip]
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
	je	.L1020
	cmp	rdx, r9
	jb	.L1031
	sub	rdx, r9
	add	rdx, rcx
	jc	.L1031
	movzx	r11d, BYTE PTR [r8]
	jmp	.L1026
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1030:
	mov	rax, rcx
.L1022:
	cmp	rdx, rax
	jb	.L1031
.L1026:
	lea	rcx, 1[rax]
	cmp	BYTE PTR [rax], r11b
	jne	.L1030
	cmp	r9, 1
	je	.L1020
.L1025:
	mov	r10d, 1
	jmp	.L1023
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1024:
	add	r10, 1
	cmp	r10, r9
	je	.L1020
.L1023:
	movzx	ebx, BYTE PTR [r8+r10]
	cmp	BYTE PTR [rax+r10], bl
	je	.L1024
	cmp	rdx, rcx
	jb	.L1031
	lea	rax, 1[rcx]
	cmp	r11b, BYTE PTR [rcx]
	jne	.L1022
	mov	r10, rcx
	mov	rcx, rax
	mov	rax, r10
	jmp	.L1025
	.p2align 4,,10
	.p2align 3
.L1031:
	xor	eax, eax
.L1020:
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
	je	.L1041
	call	memmove
	mov	rcx, rax
.L1041:
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
	vxorpd	xmm2, xmm2, xmm2
	vcomisd	xmm2, xmm0
	ja	.L1069
	vmovsd	xmm5, QWORD PTR .LC23[rip]
	xor	ecx, ecx
	vcomisd	xmm0, xmm5
	jb	.L1070
.L1048:
	vmovsd	xmm2, QWORD PTR .LC19[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1055:
	vmulsd	xmm0, xmm0, xmm2
	add	eax, 1
	vcomisd	xmm0, xmm5
	jnb	.L1055
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L1045
.L1072:
	vxorpd	xmm0, xmm0, XMMWORD PTR .LC20[rip]
.L1045:
	ret
	.p2align 4,,10
	.p2align 3
.L1070:
	vmovsd	xmm1, QWORD PTR .LC19[rip]
	vcomisd	xmm1, xmm0
	jbe	.L1051
	vucomisd	xmm0, xmm2
	jp	.L1061
	jne	.L1061
.L1051:
	mov	DWORD PTR [rdx], 0
	ret
	.p2align 4,,10
	.p2align 3
.L1069:
	vmovsd	xmm4, QWORD PTR .LC21[rip]
	vxorpd	xmm3, xmm0, XMMWORD PTR .LC20[rip]
	vcomisd	xmm4, xmm0
	jb	.L1071
	vmovsd	xmm5, QWORD PTR .LC23[rip]
	vmovapd	xmm0, xmm3
	mov	ecx, 1
	jmp	.L1048
	.p2align 4,,10
	.p2align 3
.L1071:
	vcomisd	xmm0, QWORD PTR .LC22[rip]
	jbe	.L1051
	vmovsd	xmm1, QWORD PTR .LC19[rip]
	mov	ecx, 1
.L1049:
	vmovapd	xmm0, xmm3
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1057:
	vaddsd	xmm0, xmm0, xmm0
	sub	eax, 1
	vcomisd	xmm1, xmm0
	ja	.L1057
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	jne	.L1072
	jmp	.L1045
.L1061:
	vmovapd	xmm3, xmm0
	xor	ecx, ecx
	jmp	.L1049
	.seh_endproc
	.p2align 4
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	xor	r8d, r8d
	test	rcx, rcx
	je	.L1073
	.p2align 5
	.p2align 4
	.p2align 3
.L1075:
	mov	rax, rcx
	and	eax, 1
	neg	rax
	and	rax, rdx
	add	rdx, rdx
	add	r8, rax
	shr	rcx
	jne	.L1075
.L1073:
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
	jb	.L1079
	jmp	.L1102
	.p2align 4,,10
	.p2align 3
.L1082:
	add	edx, edx
	add	r9d, r9d
	cmp	edx, ecx
	jnb	.L1081
	test	r9d, r9d
	je	.L1081
.L1079:
	test	edx, edx
	jns	.L1082
.L1083:
	xor	eax, eax
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L1085:
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
	jne	.L1085
.L1084:
	test	r8, r8
	cmovne	eax, ecx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1081:
	xor	eax, eax
	test	r9d, r9d
	jne	.L1083
	test	r8, r8
	cmovne	eax, ecx
	pop	rbx
	ret
.L1102:
	mov	eax, ecx
	sub	eax, edx
	cmp	ecx, edx
	setnb	dl
	cmovnb	ecx, eax
	movzx	eax, dl
	jmp	.L1084
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
	je	.L1105
	movsx	ecx, al
	xor	r8d, r8d
	sal	ecx, 8
	lzcnt	r8d, ecx
	lea	r9d, -1[r8]
.L1105:
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
	lzcnt	rax, rax
	sub	eax, 1
	cmp	rcx, rdx
	cmove	eax, r8d
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
	je	.L1111
	.p2align 5
	.p2align 4
	.p2align 3
.L1113:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L1113
.L1111:
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
	mov	eax, r8d
	mov	r9, rcx
	shr	ebx, 3
	and	eax, -8
	cmp	rcx, rdx
	jb	.L1121
	mov	ecx, r8d
	add	rcx, rdx
	cmp	rcx, r9
	jnb	.L1188
.L1121:
	test	ebx, ebx
	je	.L1189
	lea	esi, -1[rbx]
	cmp	esi, 2
	jbe	.L1123
	lea	r11, 8[rdx]
	mov	rcx, r9
	sub	rcx, r11
	cmp	rcx, 48
	jbe	.L1123
	cmp	esi, 6
	jbe	.L1149
	mov	esi, r8d
	xor	ecx, ecx
	shr	esi, 6
	mov	r11d, esi
	sal	r11, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1125:
	vmovdqu64	zmm2, ZMMWORD PTR [rdx+rcx]
	vmovdqu64	ZMMWORD PTR [r9+rcx], zmm2
	add	rcx, 64
	cmp	rcx, r11
	jne	.L1125
	lea	edi, 0[0+rsi*8]
	cmp	ebx, edi
	je	.L1130
	mov	r10d, ebx
	sub	r10d, edi
	lea	esi, -1[r10]
	cmp	esi, 2
	jbe	.L1127
.L1124:
	mov	r11d, edi
	mov	ecx, r10d
	and	ecx, -4
	vmovdqu	ymm3, YMMWORD PTR [rdx+r11*8]
	add	edi, ecx
	and	r10d, 3
	vmovdqu	YMMWORD PTR [r9+r11*8], ymm3
	je	.L1130
.L1127:
	mov	r10d, edi
	lea	ecx, 1[rdi]
	mov	rsi, QWORD PTR [rdx+r10*8]
	mov	QWORD PTR [r9+r10*8], rsi
	cmp	ecx, ebx
	jnb	.L1130
	mov	r11, QWORD PTR [rdx+rcx*8]
	add	edi, 2
	mov	QWORD PTR [r9+rcx*8], r11
	cmp	edi, ebx
	jnb	.L1130
	mov	rbx, QWORD PTR [rdx+rdi*8]
	mov	QWORD PTR [r9+rdi*8], rbx
.L1130:
	cmp	eax, r8d
	jnb	.L1185
	mov	esi, r8d
	mov	r10d, eax
	sub	esi, eax
	lea	ecx, -1[rsi]
	cmp	ecx, 30
	jbe	.L1181
	lea	rbx, [r9+r10]
	lea	rdi, 1[rdx+r10]
	mov	r11, rbx
	sub	r11, rdi
	cmp	r11, 62
	jbe	.L1181
	cmp	ecx, 62
	jbe	.L1150
	mov	r11d, esi
	lea	rdi, [rdx+r10]
	xor	ecx, ecx
	shr	r11d, 6
	sal	r11, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1132:
	vmovdqu8	zmm4, ZMMWORD PTR [rdi+rcx]
	vmovdqu8	ZMMWORD PTR [rbx+rcx], zmm4
	add	rcx, 64
	cmp	rcx, r11
	jne	.L1132
	mov	ecx, esi
	and	ecx, -64
	add	eax, ecx
	test	sil, 63
	je	.L1185
	sub	esi, ecx
	lea	ebx, -1[rsi]
	cmp	ebx, 30
	jbe	.L1136
.L1131:
	add	rcx, r10
	mov	r10d, esi
	and	r10d, -32
	vmovdqu8	ymm5, YMMWORD PTR [rdx+rcx]
	add	eax, r10d
	and	esi, 31
	vmovdqu8	YMMWORD PTR [r9+rcx], ymm5
	je	.L1185
	.p2align 5
	.p2align 4
	.p2align 3
.L1136:
	movzx	esi, BYTE PTR [rdx+rax]
	mov	BYTE PTR [r9+rax], sil
	add	rax, 1
	cmp	eax, r8d
	jb	.L1136
.L1185:
	vzeroupper
.L1186:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1188:
	lea	edi, -1[r8]
	test	r8d, r8d
	je	.L1186
	mov	r10d, edi
	cmp	edi, 30
	jbe	.L1147
	mov	rsi, r9
	sub	rsi, rdx
	add	rsi, 63
	cmp	rsi, 62
	jbe	.L1147
	cmp	edi, 62
	jbe	.L1151
	mov	r11d, r8d
	lea	rax, -63[r10]
	xor	ecx, ecx
	shr	r11d, 6
	lea	rsi, [rdx+rax]
	add	rax, r9
	neg	r11
	sal	r11, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1141:
	vmovdqu8	zmm0, ZMMWORD PTR [rsi+rcx]
	vmovdqu8	ZMMWORD PTR [rax+rcx], zmm0
	sub	rcx, 64
	cmp	rcx, r11
	jne	.L1141
	mov	ebx, r8d
	and	ebx, -64
	sub	edi, ebx
	test	r8b, 63
	je	.L1185
	sub	r8d, ebx
	lea	eax, -1[r8]
	cmp	eax, 30
	jbe	.L1146
.L1140:
	sub	r10, 31
	sub	r10, rbx
	vmovdqu8	ymm1, YMMWORD PTR [rdx+r10]
	vmovdqu8	YMMWORD PTR [r9+r10], ymm1
	mov	r10d, r8d
	and	r10d, -32
	sub	edi, r10d
	and	r8d, 31
	je	.L1185
	.p2align 4
	.p2align 4
	.p2align 3
.L1146:
	movzx	r8d, BYTE PTR [rdx+rdi]
	mov	BYTE PTR [r9+rdi], r8b
	sub	rdi, 1
	jnb	.L1146
	jmp	.L1185
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1147:
	movzx	edi, BYTE PTR [rdx+r10]
	mov	BYTE PTR [r9+r10], dil
	sub	r10, 1
	jb	.L1186
	movzx	edi, BYTE PTR [rdx+r10]
	mov	BYTE PTR [r9+r10], dil
	sub	r10, 1
	jnb	.L1147
	jmp	.L1186
.L1149:
	mov	r10d, ebx
	xor	edi, edi
	jmp	.L1124
	.p2align 4,,10
	.p2align 3
.L1123:
	lea	edi, 0[0+rbx*8]
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L1129:
	mov	r10, QWORD PTR [rdx+rsi]
	mov	QWORD PTR [r9+rsi], r10
	add	rsi, 8
	cmp	rdi, rsi
	jne	.L1129
	jmp	.L1130
	.p2align 4,,10
	.p2align 3
.L1189:
	mov	r10d, eax
	test	r8d, r8d
	je	.L1186
	.p2align 5
	.p2align 4
	.p2align 3
.L1137:
	movzx	eax, BYTE PTR [rdx+r10]
	mov	BYTE PTR [r9+r10], al
	add	r10, 1
	cmp	r10d, r8d
	jb	.L1137
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1181:
	vzeroupper
	jmp	.L1137
.L1150:
	xor	ecx, ecx
	jmp	.L1131
.L1151:
	xor	ebx, ebx
	jmp	.L1140
	.seh_endproc
	.p2align 4
	.globl	__cmovh
	.def	__cmovh;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovh
__cmovh:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r9d, r8d
	shr	r9d
	cmp	rcx, rdx
	jb	.L1194
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L1256
.L1194:
	test	r9d, r9d
	je	.L1193
	lea	esi, -1[r9]
	cmp	esi, 14
	jbe	.L1197
	lea	r11, 2[rdx]
	mov	rbx, rcx
	sub	rbx, r11
	cmp	rbx, 60
	jbe	.L1197
	cmp	esi, 30
	jbe	.L1215
	mov	esi, r8d
	xor	ebx, ebx
	shr	esi, 6
	mov	r11d, esi
	sal	r11, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1199:
	vmovdqu16	zmm2, ZMMWORD PTR [rdx+rbx]
	vmovdqu16	ZMMWORD PTR [rcx+rbx], zmm2
	add	rbx, 64
	cmp	r11, rbx
	jne	.L1199
	mov	eax, esi
	sal	eax, 5
	cmp	r9d, eax
	je	.L1251
	mov	r10d, r9d
	sub	r10d, eax
	lea	esi, -1[r10]
	cmp	esi, 14
	jbe	.L1201
.L1198:
	mov	r11d, eax
	mov	ebx, r10d
	and	ebx, -16
	vmovdqu16	ymm3, YMMWORD PTR [rdx+r11*2]
	add	eax, ebx
	and	r10d, 15
	vmovdqu16	YMMWORD PTR [rcx+r11*2], ymm3
	je	.L1251
.L1201:
	mov	r10d, eax
	lea	ebx, 1[rax]
	movzx	esi, WORD PTR [rdx+r10*2]
	mov	WORD PTR [rcx+r10*2], si
	cmp	ebx, r9d
	jnb	.L1251
	movzx	r11d, WORD PTR [rdx+rbx*2]
	lea	r10d, 2[rax]
	mov	WORD PTR [rcx+rbx*2], r11w
	cmp	r10d, r9d
	jnb	.L1251
	movzx	esi, WORD PTR [rdx+r10*2]
	lea	ebx, 3[rax]
	mov	WORD PTR [rcx+r10*2], si
	cmp	ebx, r9d
	jnb	.L1251
	movzx	r11d, WORD PTR [rdx+rbx*2]
	lea	r10d, 4[rax]
	mov	WORD PTR [rcx+rbx*2], r11w
	cmp	r10d, r9d
	jnb	.L1251
	movzx	esi, WORD PTR [rdx+r10*2]
	lea	ebx, 5[rax]
	mov	WORD PTR [rcx+r10*2], si
	cmp	ebx, r9d
	jnb	.L1251
	movzx	r11d, WORD PTR [rdx+rbx*2]
	lea	r10d, 6[rax]
	mov	WORD PTR [rcx+rbx*2], r11w
	cmp	r10d, r9d
	jnb	.L1251
	movzx	esi, WORD PTR [rdx+r10*2]
	lea	ebx, 7[rax]
	mov	WORD PTR [rcx+r10*2], si
	cmp	ebx, r9d
	jnb	.L1251
	movzx	r11d, WORD PTR [rdx+rbx*2]
	lea	r10d, 8[rax]
	mov	WORD PTR [rcx+rbx*2], r11w
	cmp	r10d, r9d
	jnb	.L1251
	movzx	esi, WORD PTR [rdx+r10*2]
	lea	ebx, 9[rax]
	mov	WORD PTR [rcx+r10*2], si
	cmp	ebx, r9d
	jnb	.L1251
	movzx	r11d, WORD PTR [rdx+rbx*2]
	lea	r10d, 10[rax]
	mov	WORD PTR [rcx+rbx*2], r11w
	cmp	r10d, r9d
	jnb	.L1251
	movzx	esi, WORD PTR [rdx+r10*2]
	lea	ebx, 11[rax]
	mov	WORD PTR [rcx+r10*2], si
	cmp	ebx, r9d
	jnb	.L1251
	movzx	r11d, WORD PTR [rdx+rbx*2]
	lea	r10d, 12[rax]
	mov	WORD PTR [rcx+rbx*2], r11w
	cmp	r10d, r9d
	jnb	.L1251
	movzx	esi, WORD PTR [rdx+r10*2]
	lea	ebx, 13[rax]
	mov	WORD PTR [rcx+r10*2], si
	cmp	ebx, r9d
	jnb	.L1251
	movzx	r11d, WORD PTR [rdx+rbx*2]
	add	eax, 14
	mov	WORD PTR [rcx+rbx*2], r11w
	cmp	eax, r9d
	jnb	.L1251
	movzx	r9d, WORD PTR [rdx+rax*2]
	mov	WORD PTR [rcx+rax*2], r9w
	vzeroupper
.L1193:
	test	r8b, 1
	je	.L1254
.L1257:
	lea	r8d, -1[r8]
	movzx	edx, BYTE PTR [rdx+r8]
	mov	BYTE PTR [rcx+r8], dl
.L1254:
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1256:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L1254
	mov	r10d, eax
	cmp	eax, 30
	jbe	.L1213
	mov	rbx, rcx
	sub	rbx, rdx
	add	rbx, 63
	cmp	rbx, 62
	jbe	.L1213
	cmp	eax, 62
	jbe	.L1216
	mov	r11d, r8d
	lea	rbx, -63[r10]
	xor	r9d, r9d
	shr	r11d, 6
	lea	rsi, [rdx+rbx]
	add	rbx, rcx
	neg	r11
	sal	r11, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1208:
	vmovdqu8	zmm0, ZMMWORD PTR [rsi+r9]
	vmovdqu8	ZMMWORD PTR [rbx+r9], zmm0
	sub	r9, 64
	cmp	r11, r9
	jne	.L1208
	mov	esi, r8d
	and	esi, -64
	sub	eax, esi
	test	r8b, 63
	je	.L1253
	sub	r8d, esi
	lea	ebx, -1[r8]
	cmp	ebx, 30
	jbe	.L1212
.L1207:
	sub	r10, 31
	sub	r10, rsi
	vmovdqu8	ymm1, YMMWORD PTR [rdx+r10]
	vmovdqu8	YMMWORD PTR [rcx+r10], ymm1
	mov	r10d, r8d
	and	r10d, -32
	sub	eax, r10d
	and	r8d, 31
	je	.L1253
	.p2align 4
	.p2align 4
	.p2align 3
.L1212:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	jnb	.L1212
.L1253:
	vzeroupper
	pop	rbx
	pop	rsi
	ret
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1213:
	movzx	eax, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], al
	sub	r10, 1
	jb	.L1254
	movzx	eax, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], al
	sub	r10, 1
	jnb	.L1213
	jmp	.L1254
	.p2align 4,,10
	.p2align 3
.L1251:
	vzeroupper
	test	r8b, 1
	je	.L1254
	jmp	.L1257
.L1215:
	mov	r10d, r9d
	xor	eax, eax
	jmp	.L1198
	.p2align 4,,10
	.p2align 3
.L1197:
	lea	r10d, [r9+r9]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L1203:
	movzx	esi, WORD PTR [rdx+rax]
	mov	WORD PTR [rcx+rax], si
	add	rax, 2
	cmp	r10, rax
	jne	.L1203
	test	r8b, 1
	je	.L1254
	jmp	.L1257
.L1216:
	xor	esi, esi
	jmp	.L1207
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
	mov	r11d, r8d
	mov	eax, r8d
	shr	r11d, 2
	and	eax, -4
	cmp	rcx, rdx
	jb	.L1263
	mov	r9d, r8d
	add	r9, rdx
	cmp	r9, rcx
	jnb	.L1330
.L1263:
	test	r11d, r11d
	je	.L1331
	lea	esi, -1[r11]
	cmp	esi, 6
	jbe	.L1265
	lea	rbx, 4[rdx]
	mov	r9, rcx
	sub	r9, rbx
	cmp	r9, 56
	jbe	.L1265
	cmp	esi, 14
	jbe	.L1291
	mov	esi, r8d
	xor	r9d, r9d
	shr	esi, 6
	mov	ebx, esi
	sal	rbx, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1267:
	vmovdqu32	zmm2, ZMMWORD PTR [rdx+r9]
	vmovdqu32	ZMMWORD PTR [rcx+r9], zmm2
	add	r9, 64
	cmp	r9, rbx
	jne	.L1267
	sal	esi, 4
	mov	edi, esi
	cmp	r11d, esi
	je	.L1272
	mov	r10d, r11d
	sub	r10d, esi
	lea	esi, -1[r10]
	cmp	esi, 6
	jbe	.L1269
.L1266:
	mov	ebx, edi
	mov	r9d, r10d
	and	r9d, -8
	vmovdqu	ymm3, YMMWORD PTR [rdx+rbx*4]
	add	edi, r9d
	and	r10d, 7
	vmovdqu	YMMWORD PTR [rcx+rbx*4], ymm3
	je	.L1272
.L1269:
	mov	r10d, edi
	lea	r9d, 1[rdi]
	mov	esi, DWORD PTR [rdx+r10*4]
	mov	DWORD PTR [rcx+r10*4], esi
	cmp	r9d, r11d
	jnb	.L1272
	mov	ebx, DWORD PTR [rdx+r9*4]
	lea	r10d, 2[rdi]
	mov	DWORD PTR [rcx+r9*4], ebx
	cmp	r10d, r11d
	jnb	.L1272
	mov	esi, DWORD PTR [rdx+r10*4]
	lea	r9d, 3[rdi]
	mov	DWORD PTR [rcx+r10*4], esi
	cmp	r9d, r11d
	jnb	.L1272
	mov	ebx, DWORD PTR [rdx+r9*4]
	lea	r10d, 4[rdi]
	mov	DWORD PTR [rcx+r9*4], ebx
	cmp	r10d, r11d
	jnb	.L1272
	mov	esi, DWORD PTR [rdx+r10*4]
	lea	r9d, 5[rdi]
	mov	DWORD PTR [rcx+r10*4], esi
	cmp	r9d, r11d
	jnb	.L1272
	mov	ebx, DWORD PTR [rdx+r9*4]
	add	edi, 6
	mov	DWORD PTR [rcx+r9*4], ebx
	cmp	edi, r11d
	jnb	.L1272
	mov	r11d, DWORD PTR [rdx+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], r11d
.L1272:
	cmp	eax, r8d
	jnb	.L1327
	mov	esi, r8d
	mov	r10d, eax
	sub	esi, eax
	lea	r9d, -1[rsi]
	cmp	r9d, 30
	jbe	.L1323
	lea	rbx, [rcx+r10]
	lea	rdi, 1[rdx+r10]
	mov	r11, rbx
	sub	r11, rdi
	cmp	r11, 62
	jbe	.L1323
	cmp	r9d, 62
	jbe	.L1292
	mov	r11d, esi
	lea	rdi, [rdx+r10]
	xor	r9d, r9d
	shr	r11d, 6
	sal	r11, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1274:
	vmovdqu8	zmm4, ZMMWORD PTR [rdi+r9]
	vmovdqu8	ZMMWORD PTR [rbx+r9], zmm4
	add	r9, 64
	cmp	r9, r11
	jne	.L1274
	mov	r9d, esi
	and	r9d, -64
	add	eax, r9d
	test	sil, 63
	je	.L1327
	sub	esi, r9d
	lea	ebx, -1[rsi]
	cmp	ebx, 30
	jbe	.L1278
.L1273:
	add	r9, r10
	mov	r10d, esi
	and	r10d, -32
	vmovdqu8	ymm5, YMMWORD PTR [rdx+r9]
	add	eax, r10d
	and	esi, 31
	vmovdqu8	YMMWORD PTR [rcx+r9], ymm5
	je	.L1327
	.p2align 5
	.p2align 4
	.p2align 3
.L1278:
	movzx	esi, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], sil
	add	rax, 1
	cmp	eax, r8d
	jb	.L1278
.L1327:
	vzeroupper
.L1328:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1330:
	lea	edi, -1[r8]
	test	r8d, r8d
	je	.L1328
	mov	r10d, edi
	cmp	edi, 30
	jbe	.L1289
	mov	rbx, rcx
	sub	rbx, rdx
	add	rbx, 63
	cmp	rbx, 62
	jbe	.L1289
	cmp	edi, 62
	jbe	.L1293
	mov	r11d, r8d
	lea	rax, -63[r10]
	xor	r9d, r9d
	shr	r11d, 6
	lea	rbx, [rdx+rax]
	add	rax, rcx
	neg	r11
	sal	r11, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1283:
	vmovdqu8	zmm0, ZMMWORD PTR [rbx+r9]
	vmovdqu8	ZMMWORD PTR [rax+r9], zmm0
	sub	r9, 64
	cmp	r9, r11
	jne	.L1283
	mov	esi, r8d
	and	esi, -64
	sub	edi, esi
	test	r8b, 63
	je	.L1327
	sub	r8d, esi
	lea	eax, -1[r8]
	cmp	eax, 30
	jbe	.L1288
.L1282:
	sub	r10, 31
	sub	r10, rsi
	vmovdqu8	ymm1, YMMWORD PTR [rdx+r10]
	vmovdqu8	YMMWORD PTR [rcx+r10], ymm1
	mov	r10d, r8d
	and	r10d, -32
	sub	edi, r10d
	and	r8d, 31
	je	.L1327
	.p2align 4
	.p2align 4
	.p2align 3
.L1288:
	movzx	r8d, BYTE PTR [rdx+rdi]
	mov	BYTE PTR [rcx+rdi], r8b
	sub	rdi, 1
	jnb	.L1288
	vzeroupper
	jmp	.L1328
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1289:
	movzx	edi, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], dil
	sub	r10, 1
	jb	.L1328
	movzx	edi, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], dil
	sub	r10, 1
	jnb	.L1289
	jmp	.L1328
.L1291:
	mov	r10d, r11d
	xor	edi, edi
	jmp	.L1266
	.p2align 4,,10
	.p2align 3
.L1265:
	lea	edi, 0[0+r11*4]
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L1271:
	mov	r10d, DWORD PTR [rdx+rsi]
	mov	DWORD PTR [rcx+rsi], r10d
	add	rsi, 4
	cmp	rsi, rdi
	jne	.L1271
	jmp	.L1272
	.p2align 4,,10
	.p2align 3
.L1331:
	mov	r10d, eax
	test	r8d, r8d
	je	.L1328
	.p2align 5
	.p2align 4
	.p2align 3
.L1279:
	movzx	eax, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], al
	add	r10, 1
	cmp	r10d, r8d
	jb	.L1279
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1323:
	vzeroupper
	jmp	.L1279
.L1292:
	xor	r9d, r9d
	jmp	.L1273
.L1293:
	xor	esi, esi
	jmp	.L1282
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
	vxorps	xmm0, xmm0, xmm0
	vcvtusi2sd	xmm0, xmm0, ecx
	ret
	.seh_endproc
	.p2align 4
	.globl	__uitof
	.def	__uitof;	.scl	2;	.type	32;	.endef
	.seh_proc	__uitof
__uitof:
	.seh_endprologue
	vxorps	xmm0, xmm0, xmm0
	vcvtusi2ss	xmm0, xmm0, ecx
	ret
	.seh_endproc
	.p2align 4
	.globl	__ulltod
	.def	__ulltod;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltod
__ulltod:
	.seh_endprologue
	vxorps	xmm0, xmm0, xmm0
	vcvtusi2sd	xmm0, xmm0, rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	__ulltof
	.def	__ulltof;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltof
__ulltof:
	.seh_endprologue
	vxorps	xmm0, xmm0, xmm0
	vcvtusi2ss	xmm0, xmm0, rcx
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
	mov	eax, 1
	vpxor	xmm5, xmm5, xmm5
	vmovdqa32	zmm1, ZMMWORD PTR .LC24[rip]
	vpbroadcastd	zmm3, eax
	mov	eax, 16
	movzx	edx, cx
	vpbroadcastd	zmm0, edx
	vpsravd	zmm2, zmm0, zmm1
	vpandd	zmm4, zmm2, zmm3
	vpcmpd	k0, zmm4, zmm5, 4
	kortestw	k0, k0
	jne	.L1358
.L1338:
	vzeroupper
	ret
.L1358:
	mov	r8d, edx
	shr	r8d, 15
	jne	.L1342
	mov	eax, edx
	sar	eax, 14
	jne	.L1338
	mov	r9d, edx
	shr	r9d, 13
	jne	.L1343
	mov	r10d, edx
	shr	r10d, 12
	jne	.L1344
	mov	r11d, edx
	shr	r11d, 11
	jne	.L1345
	mov	eax, edx
	shr	eax, 10
	jne	.L1346
	mov	r8d, edx
	shr	r8d, 9
	jne	.L1347
	mov	r9d, edx
	shr	r9d, 8
	jne	.L1348
	mov	r10d, edx
	shr	r10d, 7
	jne	.L1349
	mov	r11d, edx
	shr	r11d, 6
	jne	.L1350
	mov	eax, edx
	shr	eax, 5
	jne	.L1351
	mov	r8d, edx
	shr	r8d, 4
	jne	.L1352
	mov	r9d, edx
	shr	r9d, 3
	jne	.L1353
	mov	r10d, edx
	shr	r10d, 2
	jne	.L1354
	shr	edx
	jne	.L1355
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	vzeroupper
	ret
.L1342:
	xor	eax, eax
	jmp	.L1338
.L1346:
	mov	eax, 5
	jmp	.L1338
.L1353:
	mov	eax, 12
	jmp	.L1338
.L1343:
	mov	eax, 2
	jmp	.L1338
.L1344:
	mov	eax, 3
	jmp	.L1338
.L1345:
	mov	eax, 4
	jmp	.L1338
.L1347:
	mov	eax, 6
	jmp	.L1338
.L1348:
	mov	eax, 7
	jmp	.L1338
.L1349:
	mov	eax, 8
	jmp	.L1338
.L1350:
	mov	eax, 9
	jmp	.L1338
.L1351:
	mov	eax, 10
	jmp	.L1338
.L1352:
	mov	eax, 11
	jmp	.L1338
.L1354:
	mov	eax, 13
	jmp	.L1338
.L1355:
	mov	eax, 14
	jmp	.L1338
	.seh_endproc
	.p2align 4
	.globl	__ctzhi2
	.def	__ctzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzhi2
__ctzhi2:
	.seh_endprologue
	mov	eax, 1
	vpxor	xmm5, xmm5, xmm5
	vmovdqa32	zmm1, ZMMWORD PTR .LC6[rip]
	vpbroadcastd	zmm3, eax
	mov	eax, 16
	movzx	edx, cx
	vpbroadcastd	zmm0, edx
	vpsravd	zmm2, zmm0, zmm1
	vpandd	zmm4, zmm2, zmm3
	vpcmpd	k0, zmm4, zmm5, 4
	kortestw	k0, k0
	jne	.L1380
.L1359:
	vzeroupper
	ret
.L1380:
	test	cl, 1
	jne	.L1363
	test	cl, 2
	jne	.L1364
	test	cl, 4
	jne	.L1365
	test	cl, 8
	jne	.L1366
	test	cl, 16
	jne	.L1367
	test	cl, 32
	jne	.L1368
	test	cl, 64
	jne	.L1369
	test	cl, -128
	jne	.L1370
	test	ch, 1
	jne	.L1371
	test	ch, 2
	jne	.L1372
	test	ch, 4
	jne	.L1373
	test	ch, 8
	jne	.L1374
	test	ch, 16
	jne	.L1375
	test	ch, 32
	jne	.L1376
	and	ch, 64
	jne	.L1377
	xor	eax, eax
	shr	edx, 15
	sete	al
	add	eax, 15
	vzeroupper
	ret
.L1363:
	xor	eax, eax
	jmp	.L1359
.L1368:
	mov	eax, 5
	jmp	.L1359
.L1375:
	mov	eax, 12
	jmp	.L1359
.L1364:
	mov	eax, 1
	jmp	.L1359
.L1365:
	mov	eax, 2
	jmp	.L1359
.L1366:
	mov	eax, 3
	jmp	.L1359
.L1367:
	mov	eax, 4
	jmp	.L1359
.L1369:
	mov	eax, 6
	jmp	.L1359
.L1370:
	mov	eax, 7
	jmp	.L1359
.L1371:
	mov	eax, 8
	jmp	.L1359
.L1372:
	mov	eax, 9
	jmp	.L1359
.L1373:
	mov	eax, 10
	jmp	.L1359
.L1374:
	mov	eax, 11
	jmp	.L1359
.L1376:
	mov	eax, 13
	jmp	.L1359
.L1377:
	mov	eax, 14
	jmp	.L1359
	.seh_endproc
	.p2align 4
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	vcomiss	xmm0, DWORD PTR .LC25[rip]
	jnb	.L1387
	vcvttss2si	eax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L1387:
	vsubss	xmm0, xmm0, DWORD PTR .LC25[rip]
	vcvttss2si	eax, xmm0
	add	eax, 32768
	ret
	.seh_endproc
	.p2align 4
	.globl	__parityhi2
	.def	__parityhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__parityhi2
__parityhi2:
	.seh_endprologue
	mov	eax, 1
	vmovdqa32	zmm1, ZMMWORD PTR .LC6[rip]
	vpbroadcastd	zmm3, eax
	movzx	ecx, cx
	vpbroadcastd	zmm0, ecx
	vpsravd	zmm2, zmm0, zmm1
	vpandd	zmm4, zmm2, zmm3
	vextracti32x8	ymm5, zmm4, 0x1
	vpaddd	ymm1, ymm5, ymm4
	vextracti32x4	xmm0, ymm1, 0x1
	vpaddd	xmm2, xmm0, xmm1
	vpsrldq	xmm3, xmm2, 8
	vpaddd	xmm4, xmm2, xmm3
	vpsrldq	xmm5, xmm4, 4
	vpaddd	xmm1, xmm4, xmm5
	vmovd	eax, xmm1
	and	eax, 1
	vzeroupper
	ret
	.seh_endproc
	.p2align 4
	.globl	__popcounthi2
	.def	__popcounthi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcounthi2
__popcounthi2:
	.seh_endprologue
	mov	eax, 1
	vmovdqa32	zmm1, ZMMWORD PTR .LC6[rip]
	vpbroadcastd	zmm3, eax
	movzx	ecx, cx
	vpbroadcastd	zmm0, ecx
	vpsravd	zmm2, zmm0, zmm1
	vpandd	zmm4, zmm2, zmm3
	vextracti32x8	ymm5, zmm4, 0x1
	vpaddd	ymm1, ymm5, ymm4
	vextracti32x4	xmm0, ymm1, 0x1
	vpaddd	xmm2, xmm0, xmm1
	vpsrldq	xmm3, xmm2, 8
	vpaddd	xmm4, xmm2, xmm3
	vpsrldq	xmm5, xmm4, 4
	vpaddd	xmm1, xmm4, xmm5
	vmovd	eax, xmm1
	vzeroupper
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
	je	.L1390
	.p2align 5
	.p2align 4
	.p2align 3
.L1392:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L1392
.L1390:
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
	je	.L1395
	test	edx, edx
	je	.L1395
	.p2align 5
	.p2align 4
	.p2align 3
.L1397:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	r8d, eax
	shr	edx
	jne	.L1397
.L1395:
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
	jb	.L1403
	jmp	.L1426
	.p2align 4,,10
	.p2align 3
.L1406:
	add	edx, edx
	add	r9d, r9d
	cmp	edx, ecx
	jnb	.L1405
	test	r9d, r9d
	je	.L1405
.L1403:
	test	edx, edx
	jns	.L1406
.L1407:
	xor	eax, eax
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L1409:
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
	jne	.L1409
.L1408:
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1405:
	xor	eax, eax
	test	r9d, r9d
	jne	.L1407
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
.L1426:
	mov	eax, ecx
	sub	eax, edx
	cmp	ecx, edx
	setnb	dl
	cmovnb	ecx, eax
	movzx	eax, dl
	jmp	.L1408
	.seh_endproc
	.p2align 4
	.globl	__mspabi_cmpf
	.def	__mspabi_cmpf;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpf
__mspabi_cmpf:
	.seh_endprologue
	mov	eax, -1
	vcomiss	xmm1, xmm0
	ja	.L1429
	xor	eax, eax
	vcomiss	xmm0, xmm1
	seta	al
.L1429:
	ret
	.seh_endproc
	.p2align 4
	.globl	__mspabi_cmpd
	.def	__mspabi_cmpd;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpd
__mspabi_cmpd:
	.seh_endprologue
	mov	eax, -1
	vcomisd	xmm1, xmm0
	ja	.L1432
	xor	eax, eax
	vcomisd	xmm0, xmm1
	seta	al
.L1432:
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
	js	.L1446
	je	.L1442
	xor	r11d, r11d
.L1439:
	mov	r8d, 1
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L1441:
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
	jne	.L1441
	mov	eax, r9d
	neg	eax
	test	r11d, r11d
	cmove	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L1446:
	neg	edx
	mov	r11d, 1
	jmp	.L1439
	.p2align 4,,10
	.p2align 3
.L1442:
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
	jns	.L1448
	neg	ecx
	xor	eax, eax
	mov	ebx, 1
.L1448:
	test	edx, edx
	jns	.L1449
	neg	edx
	mov	ebx, eax
.L1449:
	mov	r8d, edx
	mov	r9d, ecx
	mov	eax, 1
	cmp	edx, ecx
	jb	.L1450
	jmp	.L1474
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1477:
	test	eax, eax
	je	.L1455
.L1450:
	add	r8d, r8d
	add	eax, eax
	cmp	r8d, ecx
	jb	.L1477
.L1455:
	xor	edx, edx
	xor	r11d, r11d
	test	eax, eax
	je	.L1453
	.p2align 6
	.p2align 4
	.p2align 3
.L1452:
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
	jne	.L1452
.L1453:
	mov	eax, edx
	neg	eax
	test	ebx, ebx
	cmove	eax, edx
	pop	rbx
	ret
.L1474:
	cmp	ecx, edx
	setnb	dl
	movzx	edx, dl
	jmp	.L1453
	.seh_endproc
	.p2align 4
	.globl	__modsi3
	.def	__modsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__modsi3
__modsi3:
	.seh_endprologue
	xor	r9d, r9d
	test	ecx, ecx
	jns	.L1479
	neg	ecx
	mov	r9d, 1
.L1479:
	mov	eax, edx
	mov	r8d, ecx
	neg	eax
	cmovs	eax, edx
	mov	edx, 1
	cmp	eax, ecx
	jb	.L1480
	jmp	.L1504
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1506:
	test	edx, edx
	je	.L1500
.L1480:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jb	.L1506
	test	edx, edx
	je	.L1500
	.p2align 5
	.p2align 4
	.p2align 3
.L1482:
	mov	r10d, r8d
	sub	r10d, eax
	cmp	r8d, eax
	cmovnb	r8d, r10d
	shr	eax
	shr	edx
	jne	.L1482
.L1483:
	mov	eax, r8d
	neg	eax
	test	r9d, r9d
	cmove	eax, r8d
	ret
	.p2align 4,,10
	.p2align 3
.L1500:
	mov	r8d, ecx
	mov	eax, r8d
	neg	eax
	test	r9d, r9d
	cmove	eax, r8d
	ret
.L1504:
	sub	ecx, eax
	cmp	r8d, eax
	cmovnb	r8d, ecx
	jmp	.L1483
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
	jb	.L1508
	jmp	.L1574
	.p2align 4,,10
	.p2align 3
.L1511:
	lea	r10d, [rcx+rcx]
	lea	edx, [r9+r9]
	cmp	r10w, ax
	jnb	.L1510
	test	dx, dx
	je	.L1510
	mov	r9d, edx
	mov	ecx, r10d
.L1508:
	test	cx, cx
	jns	.L1511
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
	je	.L1513
.L1515:
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
	je	.L1513
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
	je	.L1513
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
	je	.L1513
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
	je	.L1513
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
	je	.L1513
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
	je	.L1513
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
	je	.L1513
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
	je	.L1513
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
	je	.L1513
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
	je	.L1513
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
	je	.L1513
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
	je	.L1513
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
	je	.L1513
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
	jns	.L1513
	mov	r9d, eax
	sub	r9d, ecx
	cmp	ax, cx
	setnb	cl
	cmovnb	eax, r9d
	movzx	r10d, cl
	or	edx, r10d
.L1513:
	test	r8d, r8d
	cmove	eax, edx
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1510:
	mov	eax, ebx
	test	dx, dx
	je	.L1513
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
	jmp	.L1515
.L1574:
	sub	eax, edx
	cmp	dx, bx
	sete	dl
	cmovne	eax, ebx
	movzx	edx, dl
	jmp	.L1513
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
	jb	.L1576
	jmp	.L1599
	.p2align 4,,10
	.p2align 3
.L1579:
	add	edx, edx
	add	r9d, r9d
	cmp	edx, ecx
	jnb	.L1578
	test	r9d, r9d
	je	.L1578
.L1576:
	test	edx, edx
	jns	.L1579
.L1580:
	xor	eax, eax
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L1582:
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
	jne	.L1582
.L1581:
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1578:
	xor	eax, eax
	test	r9d, r9d
	jne	.L1580
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
.L1599:
	mov	eax, ecx
	sub	eax, edx
	cmp	ecx, edx
	setnb	dl
	cmovnb	ecx, eax
	movzx	eax, dl
	jmp	.L1581
	.seh_endproc
	.p2align 4
	.globl	__ashldi3
	.def	__ashldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashldi3
__ashldi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1603
	lea	ecx, -32[rdx]
	xor	eax, eax
	sal	r8d, cl
.L1604:
	sal	r8, 32
	or	rax, r8
.L1602:
	ret
	.p2align 4,,10
	.p2align 3
.L1603:
	mov	rax, rcx
	test	edx, edx
	je	.L1602
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
	jmp	.L1604
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
	je	.L1609
	lea	ecx, -64[rdx]
	xor	r9d, r9d
	sal	rax, cl
.L1610:
	mov	r8, rax
	mov	rax, r9
.L1611:
	vmovdqa	XMMWORD PTR [rsp], xmm0
	mov	r10, QWORD PTR 8[rsp]
	vmovq	xmm0, rax
	vmovq	xmm1, r8
	vpinsrq	xmm2, xmm0, r10, 1
	vpunpcklqdq	xmm0, xmm2, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L1609:
	test	edx, edx
	je	.L1611
	mov	r9, rax
	mov	ecx, edx
	sal	r9, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rax, cl
	mov	ecx, edx
	sal	r8, cl
	or	rax, r8
	jmp	.L1610
	.seh_endproc
	.p2align 4
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1614
	sar	r8, 32
	lea	ecx, -32[rdx]
	mov	eax, r8d
	sar	r8d, cl
	sar	eax, 31
.L1615:
	sal	rax, 32
	or	rax, r8
.L1613:
	ret
	.p2align 4,,10
	.p2align 3
.L1614:
	mov	rax, rcx
	test	edx, edx
	je	.L1613
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
	jmp	.L1615
	.seh_endproc
	.p2align 4
	.globl	__ashrti3
	.def	__ashrti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrti3
__ashrti3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r9, QWORD PTR [rcx]
	mov	rax, QWORD PTR 8[rcx]
	test	dl, 64
	je	.L1620
	mov	r10, rax
	lea	ecx, -64[rdx]
	sar	r10, 63
	sar	rax, cl
.L1621:
	mov	r9, rax
	mov	rax, r10
.L1622:
	vmovdqa	XMMWORD PTR [rsp], xmm0
	mov	r10, QWORD PTR 8[rsp]
	vmovq	xmm0, r9
	vmovq	xmm1, rax
	vpinsrq	xmm2, xmm0, r10, 1
	vpunpcklqdq	xmm0, xmm2, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L1620:
	test	edx, edx
	je	.L1622
	mov	r10, rax
	mov	ecx, edx
	sar	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r9, cl
	or	rax, r9
	jmp	.L1621
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
	xor	r11d, r11d
	sal	eax, 6
	or	r10, r9
	lzcnt	r11, r10
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
	jl	.L1628
	mov	eax, 2
	jg	.L1628
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1628
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1628:
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
	jl	.L1634
	mov	eax, 1
	jg	.L1634
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1634
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1634:
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
	jl	.L1639
	mov	eax, 2
	jg	.L1639
	xor	eax, eax
	cmp	r8, r9
	jb	.L1639
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1639:
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
	jne	.L1648
	xor	eax, eax
	xor	ecx, ecx
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	cmove	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1648:
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
	je	.L1652
	shr	r8, 32
	lea	ecx, -32[rdx]
	xor	eax, eax
	shr	r8d, cl
.L1653:
	sal	rax, 32
	or	rax, r8
.L1651:
	ret
	.p2align 4,,10
	.p2align 3
.L1652:
	mov	rax, rcx
	test	edx, edx
	je	.L1651
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
	jmp	.L1653
	.seh_endproc
	.p2align 4
	.globl	__lshrti3
	.def	__lshrti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrti3
__lshrti3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r9, QWORD PTR [rcx]
	mov	rax, QWORD PTR 8[rcx]
	test	dl, 64
	je	.L1658
	lea	ecx, -64[rdx]
	xor	r10d, r10d
	shr	rax, cl
.L1659:
	mov	r9, rax
	mov	rax, r10
.L1660:
	vmovdqa	XMMWORD PTR [rsp], xmm0
	mov	r10, QWORD PTR 8[rsp]
	vmovq	xmm0, r9
	vmovq	xmm1, rax
	vpinsrq	xmm2, xmm0, r10, 1
	vpunpcklqdq	xmm0, xmm2, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L1658:
	test	edx, edx
	je	.L1660
	mov	r10, rax
	mov	ecx, edx
	shr	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r9, cl
	or	rax, r9
	jmp	.L1659
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
	vmovdqa	XMMWORD PTR [rsp], xmm0
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
	add	rax, r8
	add	r9, r10
	vmovq	xmm1, rax
	vmovq	xmm0, r9
	vpinsrq	xmm2, xmm0, rcx, 1
	vpunpcklqdq	xmm0, xmm2, xmm1
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
	mov	r11d, r9d
	mov	r10, r8
	shr	r10, 32
	mov	rsi, rdx
	mov	edx, r8d
	mov	rbx, rdx
	imul	r8, QWORD PTR 8[rsi]
	imul	rbx, r11
	imul	r11, r10
	mov	rdi, rbx
	shr	rdi, 32
	lea	rax, [r11+rdi]
	mov	r11, r9
	shr	r11, 32
	imul	r9, QWORD PTR 8[rcx]
	mov	esi, eax
	shr	rax, 32
	imul	rdx, r11
	mov	ecx, ebx
	imul	r10, r11
	add	rdx, rsi
	mov	rbx, rdx
	add	rax, r10
	shr	rdx, 32
	add	rax, rdx
	sal	rbx, 32
	add	rax, r8
	add	rcx, rbx
	add	rax, r9
	mov	QWORD PTR [rsp], rcx
	mov	QWORD PTR 8[rsp], rax
	vmovdqa	xmm0, XMMWORD PTR [rsp]
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
	vmovq	xmm0, rax
	vpinsrq	xmm0, xmm0, rdx, 1
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rdx
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
	vmovsd	xmm2, QWORD PTR .LC23[rip]
	vmovapd	xmm1, xmm2
	mov	eax, edx
	test	dl, 1
	je	.L1675
	.p2align 4
	.p2align 3
.L1677:
	vmulsd	xmm1, xmm1, xmm0
.L1675:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1676
	vmulsd	xmm0, xmm0, xmm0
	test	al, 1
	jne	.L1677
.L1681:
	vmulsd	xmm0, xmm0, xmm0
	mov	r8d, eax
	shr	r8d, 31
	add	eax, r8d
	sar	eax
	test	al, 1
	jne	.L1677
	jmp	.L1681
	.p2align 4,,10
	.p2align 3
.L1676:
	test	edx, edx
	jns	.L1674
	vdivsd	xmm1, xmm2, xmm1
.L1674:
	vmovapd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	__powisf2
	.def	__powisf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powisf2
__powisf2:
	.seh_endprologue
	vmovss	xmm2, DWORD PTR .LC26[rip]
	vmovaps	xmm1, xmm2
	mov	eax, edx
	test	dl, 1
	je	.L1683
	.p2align 4
	.p2align 3
.L1685:
	vmulss	xmm1, xmm1, xmm0
.L1683:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1684
	vmulss	xmm0, xmm0, xmm0
	test	al, 1
	jne	.L1685
.L1689:
	vmulss	xmm0, xmm0, xmm0
	mov	r8d, eax
	shr	r8d, 31
	add	eax, r8d
	sar	eax
	test	al, 1
	jne	.L1685
	jmp	.L1689
	.p2align 4,,10
	.p2align 3
.L1684:
	test	edx, edx
	jns	.L1682
	vdivss	xmm1, xmm2, xmm1
.L1682:
	vmovaps	xmm0, xmm1
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
	jb	.L1690
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L1690
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1690
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1690:
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
	jb	.L1696
	mov	eax, 1
	cmp	r9d, r8d
	jb	.L1696
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1696
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1696:
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
	jb	.L1701
	mov	eax, 2
	cmp	rdx, rcx
	jb	.L1701
	xor	eax, eax
	cmp	r8, r9
	jb	.L1701
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1701:
	ret
	.seh_endproc
.lcomm s.0,7,1
.lcomm seed,8,8
	.section .rdata,"dr"
	.align 32
digits:
	.ascii "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\0"
	.align 64
.LC0:
	.byte	1
	.byte	0
	.byte	3
	.byte	2
	.byte	5
	.byte	4
	.byte	7
	.byte	6
	.byte	9
	.byte	8
	.byte	11
	.byte	10
	.byte	13
	.byte	12
	.byte	15
	.byte	14
	.byte	1
	.byte	0
	.byte	3
	.byte	2
	.byte	5
	.byte	4
	.byte	7
	.byte	6
	.byte	9
	.byte	8
	.byte	11
	.byte	10
	.byte	13
	.byte	12
	.byte	15
	.byte	14
	.byte	1
	.byte	0
	.byte	3
	.byte	2
	.byte	5
	.byte	4
	.byte	7
	.byte	6
	.byte	9
	.byte	8
	.byte	11
	.byte	10
	.byte	13
	.byte	12
	.byte	15
	.byte	14
	.byte	1
	.byte	0
	.byte	3
	.byte	2
	.byte	5
	.byte	4
	.byte	7
	.byte	6
	.byte	9
	.byte	8
	.byte	11
	.byte	10
	.byte	13
	.byte	12
	.byte	15
	.byte	14
	.set	.LC1,.LC0
	.align 64
.LC5:
	.long	32
	.long	31
	.long	30
	.long	29
	.long	28
	.long	27
	.long	26
	.long	25
	.long	24
	.long	23
	.long	22
	.long	21
	.long	20
	.long	19
	.long	18
	.long	17
	.align 64
.LC6:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	12
	.long	13
	.long	14
	.long	15
	.align 64
.LC7:
	.long	16
	.long	15
	.long	14
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.long	8
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.align 64
.LC8:
	.long	16
	.long	17
	.long	18
	.long	19
	.long	20
	.long	21
	.long	22
	.long	23
	.long	24
	.long	25
	.long	26
	.long	27
	.long	28
	.long	29
	.long	30
	.long	31
	.align 4
.LC10:
	.long	-8388609
	.align 4
.LC11:
	.long	2139095039
	.align 8
.LC12:
	.long	-1
	.long	-1048577
	.align 8
.LC13:
	.long	-1
	.long	2146435071
	.align 16
.LC14:
	.long	-1
	.long	-1
	.long	65534
	.long	0
	.align 16
.LC15:
	.long	-1
	.long	-1
	.long	32766
	.long	0
	.set	.LC16,.LC18+4
	.align 4
.LC17:
	.long	1056964608
	.align 8
.LC18:
	.long	0
	.long	1073741824
	.align 8
.LC19:
	.long	0
	.long	1071644672
	.align 16
.LC20:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC21:
	.long	0
	.long	-1074790400
	.align 8
.LC22:
	.long	0
	.long	-1075838976
	.align 8
.LC23:
	.long	0
	.long	1072693248
	.align 64
.LC24:
	.long	15
	.long	14
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.long	8
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.long	0
	.align 4
.LC25:
	.long	1191182336
	.align 4
.LC26:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
