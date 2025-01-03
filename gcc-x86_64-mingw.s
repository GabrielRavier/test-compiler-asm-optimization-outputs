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
	.seh_endprologue
	cmp	rdx, rcx
	jnb	.L5
	test	r8, r8
	je	.L6
	lea	r24, -1[r8]
	cmp	r24, 30
	jbe	.L52
	lea	r25, -2[rdx+r8]
	sub	r26, rcx, r25
	lea	r27, 62[r26+r24]
	cmp	r27, 62
	jbe	.L52
	lea	r28, [rdx+r8]
	lea	r29, [rcx+r8]
	cmp	r24, 62
	jbe	.L26
	lea	r31, -64[r8]
	and	r10, r8, -64
	xor	eax, eax
	lea	r9, [rdx+r31]
	neg	r10
	add	r31, rcx
	.p2align 5
	.p2align 4
	.p2align 3
.L9:
	vmovdqu8	zmm2, ZMMWORD PTR [r9+rax]
	vmovdqu8	ZMMWORD PTR [r31+rax], zmm2
	sub	rax, 64
	cmp	rax, r10
	jne	.L9
	add	r28, rax
	add	r29, rax
	and	r30d, r8d, 63
	and	r8d, 63
	je	.L56
	lea	r16, -1[r30]
	mov	r8, r30
	cmp	r16, 30
	jbe	.L11
.L8:
	vmovdqu8	ymm3, YMMWORD PTR -32[rdx+r8]
	and	r11, r8, -32
	sub	r28, r11
	sub	r29, r11
	sub	r30, r11
	vmovdqu8	YMMWORD PTR -32[rcx+r8], ymm3
	and	r8d, 31
	je	.L56
.L11:
	sub	r28, r30
	sub	r17, r29, r30
	.p2align 5
	.p2align 4
	.p2align 3
.L13:
	movzx	r18d, BYTE PTR -1[r28+r30]
	mov	BYTE PTR -1[r17+r30], r18b
	sub	r30, 1
	jne	.L13
.L56:
	vzeroupper
.L6:
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	cmp	rcx, rdx
	je	.L6
	test	r8, r8
	je	.L6
	lea	r9, -1[r8]
	cmp	r9, 30
	jbe	.L28
	lea	rax, 1[rdx]
	sub	r10, rcx, rax
	cmp	r10, 62
	jbe	.L28
	cmp	r9, 62
	jbe	.L29
	and	r18, r8, -64
	xor	r19d, r19d
	.p2align 5
	.p2align 4
	.p2align 3
.L18:
	vmovdqu8	zmm0, ZMMWORD PTR [rdx+r19]
	vmovdqu8	ZMMWORD PTR [rcx+r19], zmm0
	add	r19, 64
	cmp	r19, r18
	jne	.L18
	lea	r16, [rdx+r18]
	lea	r11, [rcx+r18]
	sub	r17, r8, r18
	je	.L56
	lea	r20, -1[r17]
	mov	r8, r17
	cmp	r20, 30
	jbe	.L21
.L17:
	vmovdqu8	ymm1, YMMWORD PTR [rdx+r18]
	and	rdx, r8, -32
	add	r16, rdx
	add	r11, rdx
	sub	r17, rdx
	and	r8d, 31
	vmovdqu8	YMMWORD PTR [rcx+r18], ymm1
	je	.L56
.L21:
	xor	r8d, r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L23:
	movzx	r21d, BYTE PTR [r16+r8]
	mov	BYTE PTR [r11+r8], r21b
	add	r8, 1
	cmp	r8, r17
	jne	.L23
	vzeroupper
	jmp	.L6
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L57:
	sub	r24, 1
.L52:
	movzx	r19d, BYTE PTR -1[rdx+r8]
	mov	BYTE PTR -1[rcx+r8], r19b
	mov	r8, r24
	test	r24, r24
	jne	.L57
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L28:
	xor	r22d, r22d
	.p2align 5
	.p2align 4
	.p2align 3
.L51:
	movzx	r23d, BYTE PTR [rdx+r22]
	mov	BYTE PTR [rcx+r22], r23b
	add	r22, 1
	cmp	r8, r22
	jne	.L51
	jmp	.L6
.L26:
	mov	r30, r8
	jmp	.L8
.L29:
	mov	r16, rdx
	mov	r11, rcx
	mov	r17, r8
	xor	r18d, r18d
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
	test	r8, r8
	je	.L137
	movzx	eax, BYTE PTR [rcx]
	sub	r8, 1
	mov	r9, rdx
	add	r8, rdx
	test	al, al
	jne	.L141
	jmp	.L154
	.p2align 4,,10
	.p2align 3
.L156:
	cmp	r9, r8
	je	.L140
	movzx	eax, BYTE PTR 1[rcx]
	add	rcx, 1
	lea	r16, 1[r9]
	test	al, al
	je	.L155
	mov	r9, r16
.L141:
	movzx	edx, BYTE PTR [r9]
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
	movzx	edx, BYTE PTR 1[r9]
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
	.seh_endprologue
	cmp	r8, 1
	jle	.L184
	shr	r16, r8, 1
	lea	rax, -2[r8]
	lea	r11, -1[r16]
	cmp	rax, 61
	jbe	.L164
	shr	r17, r8, 6
	and	r19, r8, -64
	xor	r20d, r20d
	vmovdqa64	zmm1, ZMMWORD PTR .LC0[rip]
	.p2align 5
	.p2align 4
	.p2align 3
.L160:
	vmovdqu8	zmm0, ZMMWORD PTR [rcx+r20]
	vpshufb	zmm2, zmm0, zmm1
	vmovdqu8	ZMMWORD PTR [rdx+r20], zmm2
	add	r20, 64
	cmp	r20, r19
	jne	.L160
	sal	r10, r17, 5
	sal	r18, r17, 6
	neg	r21, r10
	lea	r9, [rdx+r18]
	add	r18, rcx
	lea	r8, [r8+r21*2]
	cmp	r10, r16
	je	.L183
.L159:
	sub	r11, r10
	lea	r22, 1[r11]
	cmp	r11, 14
	jbe	.L162
	vmovdqu8	ymm3, YMMWORD PTR [rcx+r10*2]
	vpshufb	ymm4, ymm3, YMMWORD PTR .LC1[rip]
	vmovdqu8	YMMWORD PTR [rdx+r10*2], ymm4
	and	rdx, r22, -16
	lea	rcx, [rdx+rdx]
	neg	rdx
	add	r9, rcx
	add	r18, rcx
	lea	r8, [r8+rdx*2]
	and	r22d, 15
	je	.L183
.L162:
	movbe	r23w, WORD PTR [r18]
	mov	WORD PTR [r9], r23w
	cmp	r8, 3
	jle	.L183
	movbe	r24w, WORD PTR 2[r18]
	mov	WORD PTR 2[r9], r24w
	cmp	r8, 5
	jle	.L183
	movbe	r25w, WORD PTR 4[r18]
	mov	WORD PTR 4[r9], r25w
	cmp	r8, 7
	jle	.L183
	movbe	r26w, WORD PTR 6[r18]
	mov	WORD PTR 6[r9], r26w
	cmp	r8, 9
	jle	.L183
	movbe	r27w, WORD PTR 8[r18]
	mov	WORD PTR 8[r9], r27w
	cmp	r8, 11
	jle	.L183
	movbe	r28w, WORD PTR 10[r18]
	mov	WORD PTR 10[r9], r28w
	cmp	r8, 13
	jle	.L183
	movbe	r29w, WORD PTR 12[r18]
	mov	WORD PTR 12[r9], r29w
	cmp	r8, 15
	jle	.L183
	movbe	r30w, WORD PTR 14[r18]
	mov	WORD PTR 14[r9], r30w
	cmp	r8, 17
	jle	.L183
	movbe	r31w, WORD PTR 16[r18]
	mov	WORD PTR 16[r9], r31w
	cmp	r8, 19
	jle	.L183
	movbe	r16w, WORD PTR 18[r18]
	mov	WORD PTR 18[r9], r16w
	cmp	r8, 21
	jle	.L183
	movbe	r11w, WORD PTR 20[r18]
	mov	WORD PTR 20[r9], r11w
	cmp	r8, 23
	jle	.L183
	movbe	ax, WORD PTR 22[r18]
	mov	WORD PTR 22[r9], ax
	cmp	r8, 25
	jle	.L183
	movbe	r10w, WORD PTR 24[r18]
	mov	WORD PTR 24[r9], r10w
	cmp	r8, 27
	jle	.L183
	movbe	r17w, WORD PTR 26[r18]
	mov	WORD PTR 26[r9], r17w
	cmp	r8, 29
	jle	.L183
	movbe	r8w, WORD PTR 28[r18]
	mov	WORD PTR 28[r9], r8w
	vzeroupper
.L184:
	ret
	.p2align 4,,10
	.p2align 3
.L183:
	vzeroupper
	ret
.L164:
	mov	r9, rdx
	mov	r18, rcx
	xor	r10d, r10d
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
	and	eax, ecx, 127
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
	and	edx, eax, 512
	fxam
	fnstsw	ax
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
	and	edx, eax, 512
	fxam
	fnstsw	ax
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
	and	edx, ecx, 63
	add	rax, 1
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
	bextr	rax, rax, 7969
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
	pushp	r15
	.seh_pushreg	r15
	push2p	r14, r13
	.seh_stackalloc	16
	.seh_savereg	r14, 8
	.seh_savereg	r13, 0
	push2p	r12, rbp
	.seh_stackalloc	16
	.seh_savereg	r12, 8
	.seh_savereg	rbp, 0
	push2p	rdi, rsi
	.seh_stackalloc	16
	.seh_savereg	rdi, 8
	.seh_savereg	rsi, 0
	pushp	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbp, QWORD PTR [r8]
	mov	r14, QWORD PTR 144[rsp]
	mov	QWORD PTR 120[rsp], rdx
	mov	r15, rcx
	mov	r13, r8
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
	mov	r12, rbx
	mov	rdx, rbx
	mov	rcx, r15
	call	r14
	test	eax, eax
	jne	.L323
.L308:
	mov	rax, r12
	add	rsp, 40
	popp	rbx
	pop2p	rsi, rdi
	pop2p	rbp, r12
	pop2p	r13, r14
	popp	r15
	ret
	.p2align 4,,10
	.p2align 3
.L309:
	lea	rax, 1[rbp]
	mov	QWORD PTR 0[r13], rax
	imul	rbp, rdi
	add	r12, QWORD PTR 120[rsp], rbp
	test	rdi, rdi
	je	.L308
	mov	r8, rdi
	mov	rdx, r15
	mov	rcx, r12
	call	memmove
	jmp	.L308
	.seh_endproc
	.p2align 4
	.globl	lfind
	.def	lfind;	.scl	2;	.type	32;	.endef
	.seh_proc	lfind
lfind:
	pushp	r14
	.seh_pushreg	r14
	push2p	r13, r12
	.seh_stackalloc	16
	.seh_savereg	r13, 8
	.seh_savereg	r12, 0
	push2p	rbp, rdi
	.seh_stackalloc	16
	.seh_savereg	rbp, 8
	.seh_savereg	rdi, 0
	push2p	rsi, rbx
	.seh_stackalloc	16
	.seh_savereg	rsi, 8
	.seh_savereg	rbx, 0
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
	pop2p	rbx, rsi
	pop2p	rdi, rbp
	pop2p	r12, r13
	popp	r14
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
	neg	eax, ecx
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
	xor	r17d, r17d
	.p2align 6
	.p2align 4
	.p2align 3
.L347:
	movsx	r18d, BYTE PTR 1[r10]
	lea	r16d, [r17+r17*4]
	sub	edx, 48
	add	r10, 1
	movsx	eax, dl
	add	r16d, r16d
	mov	edx, r18d
	sub	r18d, 48
	sub	r17d, r16d, eax
	cmp	r18d, 9
	jbe	.L347
	sub	eax, r16d
	test	r11d, r11d
	cmovne	eax, r17d
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
	xor	r17d, r17d
	.p2align 6
	.p2align 4
	.p2align 3
.L376:
	movsx	r18d, BYTE PTR 1[r10]
	lea	r16d, [r17+r17*4]
	sub	edx, 48
	add	r10, 1
	movsx	eax, dl
	add	r16d, r16d
	mov	edx, r18d
	sub	r18d, 48
	sub	r17d, r16d, eax
	cmp	r18d, 9
	jbe	.L376
	sub	eax, r16d
	test	r11d, r11d
	cmovne	eax, r17d
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
	xor	r17d, r17d
	.p2align 6
	.p2align 4
	.p2align 3
.L402:
	movsx	r18d, BYTE PTR 1[r10]
	lea	r16, [r17+r17*4]
	sub	edx, 48
	add	r10, 1
	movsx	rax, dl
	add	r16, r16
	mov	edx, r18d
	sub	r18d, 48
	sub	r17, r16, rax
	cmp	r18d, 9
	jbe	.L402
	sub	rax, r16
	test	r11d, r11d
	cmovne	rax, r17
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
	pushp	r14
	.seh_pushreg	r14
	push2p	r13, r12
	.seh_stackalloc	16
	.seh_savereg	r13, 8
	.seh_savereg	r12, 0
	push2p	rbp, rdi
	.seh_stackalloc	16
	.seh_savereg	rbp, 8
	.seh_savereg	rdi, 0
	push2p	rsi, rbx
	.seh_stackalloc	16
	.seh_savereg	rsi, 8
	.seh_savereg	rbx, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r13, QWORD PTR 128[rsp]
	mov	r14, rcx
	mov	rbp, rdx
	mov	rbx, r8
	mov	r12, r9
	.p2align 4
	.p2align 3
.L435:
	test	rbx, rbx
	je	.L423
.L436:
	shr	rdi, rbx, 1
	mov	rcx, r14
	mov	rsi, rdi
	imul	rsi, r12
	add	rsi, rbp
	mov	rdx, rsi
	call	r13
	test	eax, eax
	js	.L427
	je	.L422
	sub	rbx, 1
	lea	rbp, [rsi+r12]
	sub	rbx, rdi
	test	rbx, rbx
	jne	.L436
.L423:
	xor	esi, esi
.L422:
	mov	rax, rsi
	add	rsp, 32
	pop2p	rbx, rsi
	pop2p	rdi, rbp
	pop2p	r12, r13
	popp	r14
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
	pushp	r15
	.seh_pushreg	r15
	push2p	r14, r13
	.seh_stackalloc	16
	.seh_savereg	r14, 8
	.seh_savereg	r13, 0
	push2p	r12, rbp
	.seh_stackalloc	16
	.seh_savereg	r12, 8
	.seh_savereg	rbp, 0
	push2p	rdi, rsi
	.seh_stackalloc	16
	.seh_savereg	rdi, 8
	.seh_savereg	rsi, 0
	pushp	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	r12, QWORD PTR 144[rsp]
	mov	r13, QWORD PTR 152[rsp]
	mov	r15, rcx
	mov	rdi, rdx
	mov	rbp, r9
	mov	esi, r8d
	test	r8d, r8d
	je	.L442
	.p2align 4
	.p2align 3
.L450:
	sar	r14d, esi, 1
	mov	r8, r13
	mov	rcx, r15
	movsx	rbx, r14d
	imul	rbx, rbp
	add	rbx, rdi
	mov	rdx, rbx
	call	r12
	test	eax, eax
	je	.L437
	jle	.L440
	sub	esi, 1
	lea	rdi, [rbx+rbp]
	sar	esi
	jne	.L450
.L442:
	xor	ebx, ebx
.L437:
	mov	rax, rbx
	add	rsp, 40
	popp	rbx
	pop2p	rsi, rdi
	pop2p	rbp, r12
	pop2p	r13, r14
	popp	r15
	ret
	.p2align 4,,10
	.p2align 3
.L440:
	test	r14d, r14d
	je	.L442
	mov	esi, r14d
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
	neg	rax, rcx
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
	neg	eax, ecx
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
	neg	rax, rcx
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
	.seh_endprologue
	mov	rax, rcx
	cmp	rcx, rdx
	je	.L586
	lea	r17, [r8+r8]
	sub	rcx, rdx
	lea	r9, -1[r8]
	cmp	rcx, r17
	jnb	.L692
	test	r8, r8
	je	.L586
	cmp	r9, 14
	jbe	.L657
	sub	r16, rax, rdx
	add	r16, 62
	cmp	r16, 60
	jbe	.L657
	cmp	r9, 30
	jbe	.L549
	shr	r24, r8, 5
	lea	r22, -64[r17]
	xor	r25d, r25d
	neg	r24
	lea	r23, [rdx+r22]
	add	r22, rax
	sal	r24, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L533:
	vmovdqu16	zmm2, ZMMWORD PTR [r23+r25]
	vmovdqu16	ZMMWORD PTR [r22+r25], zmm2
	sub	r25, 64
	cmp	r25, r24
	jne	.L533
	and	r21, r8, -32
	sub	r9, r21
	test	r8b, 31
	je	.L690
	sub	r8, r21
	lea	r26, -1[r8]
	cmp	r26, 14
	jbe	.L536
.L532:
	neg	r21
	and	r28, r8, -16
	lea	r27, -32[r17+r21*2]
	sub	r9, r28
	and	r8d, 15
	vmovdqu16	ymm3, YMMWORD PTR [rdx+r27]
	vmovdqu16	YMMWORD PTR [rax+r27], ymm3
	je	.L690
.L536:
	movzx	r8d, WORD PTR [rdx+r9*2]
	lea	r29, -1[r9]
	mov	WORD PTR [rax+r9*2], r8w
	test	r9, r9
	je	.L690
	movzx	r31d, WORD PTR [rdx+r29*2]
	lea	r30, [r29+r29]
	mov	WORD PTR [rax+r29*2], r31w
	test	r29, r29
	je	.L690
	movzx	r17d, WORD PTR -2[rdx+r30]
	mov	WORD PTR -2[rax+r30], r17w
	cmp	r9, 2
	je	.L690
	movzx	ecx, WORD PTR -4[rdx+r30]
	mov	WORD PTR -4[rax+r30], cx
	cmp	r9, 3
	je	.L690
	movzx	r10d, WORD PTR -6[rdx+r30]
	mov	WORD PTR -6[rax+r30], r10w
	cmp	r9, 4
	je	.L690
	movzx	r11d, WORD PTR -8[rdx+r30]
	mov	WORD PTR -8[rax+r30], r11w
	cmp	r9, 5
	je	.L690
	movzx	r20d, WORD PTR -10[rdx+r30]
	mov	WORD PTR -10[rax+r30], r20w
	cmp	r9, 6
	je	.L690
	movzx	r18d, WORD PTR -12[rdx+r30]
	mov	WORD PTR -12[rax+r30], r18w
	cmp	r9, 7
	je	.L690
	movzx	r19d, WORD PTR -14[rdx+r30]
	mov	WORD PTR -14[rax+r30], r19w
	cmp	r9, 8
	je	.L690
	movzx	r16d, WORD PTR -16[rdx+r30]
	mov	WORD PTR -16[rax+r30], r16w
	cmp	r9, 9
	je	.L690
	movzx	r21d, WORD PTR -18[rdx+r30]
	mov	WORD PTR -18[rax+r30], r21w
	cmp	r9, 10
	je	.L690
	movzx	r22d, WORD PTR -20[rdx+r30]
	mov	WORD PTR -20[rax+r30], r22w
	cmp	r9, 11
	je	.L690
	movzx	r23d, WORD PTR -22[rdx+r30]
	mov	WORD PTR -22[rax+r30], r23w
	cmp	r9, 12
	je	.L690
	movzx	r24d, WORD PTR -24[rdx+r30]
	mov	WORD PTR -24[rax+r30], r24w
	cmp	r9, 13
	je	.L690
	movzx	edx, WORD PTR -26[rdx+r30]
	mov	WORD PTR -26[rax+r30], dx
	vzeroupper
.L586:
	ret
	.p2align 4,,10
	.p2align 3
.L692:
	test	r8, r8
	je	.L586
	cmp	r9, 14
	jbe	.L551
	lea	r10, 2[rdx]
	sub	r11, rax, r10
	cmp	r11, 60
	jbe	.L551
	cmp	r9, 30
	jbe	.L552
	shr	r16, r8, 5
	xor	r21d, r21d
	xor	r22d, r22d
	.p2align 5
	.p2align 4
	.p2align 3
.L542:
	vmovdqu16	zmm0, ZMMWORD PTR [rdx+r21]
	add	r22, 1
	vmovdqu16	ZMMWORD PTR [rax+r21], zmm0
	add	r21, 64
	cmp	r16, r22
	jne	.L542
	and	r20, r8, -32
	lea	r19, [r20+r20]
	sub	r9, r20
	lea	r18, [rdx+r19]
	add	r19, rax
	test	r8b, 31
	je	.L690
	sub	r8, r20
	lea	r23, -1[r8]
	cmp	r23, 14
	jbe	.L545
.L541:
	vmovdqu16	ymm1, YMMWORD PTR [rdx+r20*2]
	and	rdx, r8, -16
	sub	r9, rdx
	add	rdx, rdx
	add	r18, rdx
	add	r19, rdx
	and	r8d, 15
	vmovdqu16	YMMWORD PTR [rax+r20*2], ymm1
	je	.L690
.L545:
	movzx	r8d, WORD PTR [r18]
	mov	WORD PTR [r19], r8w
	test	r9, r9
	je	.L690
	movzx	r24d, WORD PTR 2[r18]
	mov	WORD PTR 2[r19], r24w
	cmp	r9, 1
	je	.L690
	movzx	r25d, WORD PTR 4[r18]
	mov	WORD PTR 4[r19], r25w
	cmp	r9, 2
	je	.L690
	movzx	r26d, WORD PTR 6[r18]
	mov	WORD PTR 6[r19], r26w
	cmp	r9, 3
	je	.L690
	movzx	r27d, WORD PTR 8[r18]
	mov	WORD PTR 8[r19], r27w
	cmp	r9, 4
	je	.L690
	movzx	r28d, WORD PTR 10[r18]
	mov	WORD PTR 10[r19], r28w
	cmp	r9, 5
	je	.L690
	movzx	r29d, WORD PTR 12[r18]
	mov	WORD PTR 12[r19], r29w
	cmp	r9, 6
	je	.L690
	movzx	r30d, WORD PTR 14[r18]
	mov	WORD PTR 14[r19], r30w
	cmp	r9, 7
	je	.L690
	movzx	r31d, WORD PTR 16[r18]
	mov	WORD PTR 16[r19], r31w
	cmp	r9, 8
	je	.L690
	movzx	r17d, WORD PTR 18[r18]
	mov	WORD PTR 18[r19], r17w
	cmp	r9, 9
	je	.L690
	movzx	ecx, WORD PTR 20[r18]
	mov	WORD PTR 20[r19], cx
	cmp	r9, 10
	je	.L690
	movzx	r10d, WORD PTR 22[r18]
	mov	WORD PTR 22[r19], r10w
	cmp	r9, 11
	je	.L690
	movzx	r11d, WORD PTR 24[r18]
	mov	WORD PTR 24[r19], r11w
	cmp	r9, 12
	je	.L690
	movzx	r20d, WORD PTR 26[r18]
	mov	WORD PTR 26[r19], r20w
	cmp	r9, 13
	je	.L690
	movzx	r9d, WORD PTR 28[r18]
	mov	WORD PTR 28[r19], r9w
	vzeroupper
	ret
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L657:
	movzx	r25d, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], r25w
	sub	r9, 1
	jb	.L586
	movzx	r25d, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], r25w
	sub	r9, 1
	jnb	.L657
	jmp	.L586
	.p2align 4,,10
	.p2align 3
.L690:
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L551:
	xor	r18d, r18d
	.p2align 5
	.p2align 4
	.p2align 3
.L658:
	movzx	r19d, WORD PTR [rdx+r18*2]
	mov	WORD PTR [rax+r18*2], r19w
	add	r18, 1
	cmp	r8, r18
	jne	.L658
	ret
.L549:
	xor	r21d, r21d
	jmp	.L532
.L552:
	mov	r18, rdx
	mov	r19, rax
	xor	r20d, r20d
	jmp	.L541
	.seh_endproc
	.p2align 4
	.globl	wmemset
	.def	wmemset;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemset
wmemset:
	.seh_endprologue
	mov	rax, rcx
	lea	rcx, -1[r8]
	test	r8, r8
	je	.L694
	cmp	rcx, 30
	jbe	.L700
	shr	r11, r8, 5
	vpbroadcastw	zmm0, edx
	xor	r9d, r9d
	.p2align 5
	.p2align 4
	.p2align 3
.L696:
	sal	r16, r9, 6
	add	r9, 1
	vmovdqu16	ZMMWORD PTR [rax+r16], zmm0
	cmp	r11, r9
	jne	.L696
	and	r10, r8, -32
	sub	rcx, r10
	lea	r19, [rax+r10*2]
	test	r8b, 31
	je	.L767
.L695:
	sub	r8, r10
	lea	r17, -1[r8]
	cmp	r17, 14
	jbe	.L698
	and	r18, r8, -16
	vpbroadcastw	ymm1, edx
	sub	rcx, r18
	and	r8d, 15
	vmovdqu16	YMMWORD PTR [rax+r10*2], ymm1
	lea	r19, [r19+r18*2]
	je	.L767
.L698:
	mov	WORD PTR [r19], dx
	test	rcx, rcx
	je	.L767
	mov	WORD PTR 2[r19], dx
	cmp	rcx, 1
	je	.L767
	mov	WORD PTR 4[r19], dx
	cmp	rcx, 2
	je	.L767
	mov	WORD PTR 6[r19], dx
	cmp	rcx, 3
	je	.L767
	mov	WORD PTR 8[r19], dx
	cmp	rcx, 4
	je	.L767
	mov	WORD PTR 10[r19], dx
	cmp	rcx, 5
	je	.L767
	mov	WORD PTR 12[r19], dx
	cmp	rcx, 6
	je	.L767
	mov	WORD PTR 14[r19], dx
	cmp	rcx, 7
	je	.L767
	mov	WORD PTR 16[r19], dx
	cmp	rcx, 8
	je	.L767
	mov	WORD PTR 18[r19], dx
	cmp	rcx, 9
	je	.L767
	mov	WORD PTR 20[r19], dx
	cmp	rcx, 10
	je	.L767
	mov	WORD PTR 22[r19], dx
	cmp	rcx, 11
	je	.L767
	mov	WORD PTR 24[r19], dx
	cmp	rcx, 12
	je	.L767
	mov	WORD PTR 26[r19], dx
	cmp	rcx, 13
	je	.L767
	mov	WORD PTR 28[r19], dx
	vzeroupper
.L694:
	ret
	.p2align 4,,10
	.p2align 3
.L767:
	vzeroupper
	ret
.L700:
	mov	r19, rax
	xor	r10d, r10d
	jmp	.L695
	.seh_endproc
	.p2align 4
	.globl	bcopy
	.def	bcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	bcopy
bcopy:
	.seh_endprologue
	cmp	rcx, rdx
	jnb	.L769
	test	r8, r8
	je	.L821
	lea	r23, -1[r8]
	cmp	r23, 30
	jbe	.L816
	lea	r24, -2[rcx+r8]
	sub	r25, rdx, r24
	lea	r26, 62[r25+r23]
	cmp	r26, 62
	jbe	.L816
	lea	r27, [rcx+r8]
	lea	r28, [rdx+r8]
	cmp	r23, 62
	jbe	.L790
	lea	r30, -64[r8]
	and	r9, r8, -64
	xor	eax, eax
	lea	r31, [rcx+r30]
	neg	r9
	add	r30, rdx
	.p2align 5
	.p2align 4
	.p2align 3
.L773:
	vmovdqu8	zmm2, ZMMWORD PTR [r31+rax]
	vmovdqu8	ZMMWORD PTR [r30+rax], zmm2
	sub	rax, 64
	cmp	rax, r9
	jne	.L773
	add	r28, rax
	add	r27, rax
	and	r29d, r8d, 63
	and	r8d, 63
	je	.L820
	lea	r10, -1[r29]
	mov	r8, r29
	cmp	r10, 30
	jbe	.L775
.L772:
	vmovdqu8	ymm3, YMMWORD PTR -32[rcx+r8]
	and	r16, r8, -32
	sub	r28, r16
	sub	r27, r16
	sub	r29, r16
	vmovdqu8	YMMWORD PTR -32[rdx+r8], ymm3
	and	r8d, 31
	je	.L820
.L775:
	sub	r11, r27, r29
	sub	r17, r28, r29
	.p2align 5
	.p2align 4
	.p2align 3
.L777:
	movzx	r18d, BYTE PTR -1[r11+r29]
	mov	BYTE PTR -1[r17+r29], r18b
	sub	r29, 1
	jne	.L777
.L820:
	vzeroupper
.L821:
	ret
	.p2align 4,,10
	.p2align 3
.L769:
	je	.L821
	test	r8, r8
	je	.L821
	lea	r9, -1[r8]
	cmp	r9, 30
	jbe	.L792
	lea	rax, 1[rcx]
	sub	r10, rdx, rax
	cmp	r10, 62
	jbe	.L792
	cmp	r9, 62
	jbe	.L793
	and	r18, r8, -64
	xor	r19d, r19d
	.p2align 5
	.p2align 4
	.p2align 3
.L782:
	vmovdqu8	zmm0, ZMMWORD PTR [rcx+r19]
	vmovdqu8	ZMMWORD PTR [rdx+r19], zmm0
	add	r19, 64
	cmp	r19, r18
	jne	.L782
	lea	r16, [rdx+r18]
	lea	r11, [rcx+r18]
	sub	r17, r8, r18
	je	.L820
	lea	r20, -1[r17]
	mov	r8, r17
	cmp	r20, 30
	jbe	.L785
.L781:
	vmovdqu8	ymm1, YMMWORD PTR [rcx+r18]
	vmovdqu8	YMMWORD PTR [rdx+r18], ymm1
	and	rdx, r8, -32
	add	r16, rdx
	add	r11, rdx
	sub	r17, rdx
	and	r8d, 31
	je	.L820
.L785:
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L787:
	movzx	r8d, BYTE PTR [r11+rcx]
	mov	BYTE PTR [r16+rcx], r8b
	add	rcx, 1
	cmp	rcx, r17
	jne	.L787
	vzeroupper
	jmp	.L821
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L823:
	sub	r23, 1
.L816:
	movzx	r19d, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[rdx+r8], r19b
	mov	r8, r23
	test	r23, r23
	jne	.L823
	ret
	.p2align 4,,10
	.p2align 3
.L792:
	xor	r21d, r21d
	.p2align 5
	.p2align 4
	.p2align 3
.L815:
	movzx	r22d, BYTE PTR [rcx+r21]
	mov	BYTE PTR [rdx+r21], r22b
	add	r21, 1
	cmp	r8, r21
	jne	.L815
	ret
.L790:
	mov	r29, r8
	jmp	.L772
.L793:
	mov	r16, rdx
	mov	r11, rcx
	mov	r17, r8
	xor	r18d, r18d
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
	vmovdqa32	zmm0, ZMMWORD PTR .LC6[rip]
	vpbroadcastd	zmm2, eax
	vpbroadcastd	zmm1, ecx
	vpsrlvd	zmm3, zmm1, zmm0
	vpandd	zmm5, zmm3, zmm2
	vpcmpd	k0, zmm5, zmm4, 4
	kortestw	k0, k0
	jne	.L844
	vmovdqa32	zmm0, ZMMWORD PTR .LC8[rip]
	vpsrlvd	zmm1, zmm1, zmm0
	vpandd	zmm3, zmm1, zmm2
	vpcmpd	k1, zmm3, zmm4, 4
	kortestw	k1, k1
	jne	.L845
.L858:
	xor	r27d, r27d
.L837:
	mov	eax, r27d
	vzeroupper
	ret
.L844:
	vmovdqa32	zmm2, ZMMWORD PTR .LC5[rip]
.L838:
	vmovd	edx, xmm0
	vmovd	r8d, xmm2
	bt	ecx, edx
	lea	r10d, 1[rdx]
	jc	.L840
	shrx	r9d, ecx, r10d
	and	r9d, 1
	lea	r10d, 2[rdx]
	jne	.L840
	cmp	r8d, 2
	je	.L858
	shrx	r11d, ecx, r10d
	and	r11d, 1
	lea	r10d, 3[rdx]
	jne	.L840
	cmp	r8d, 3
	je	.L858
	shrx	r16d, ecx, r10d
	and	r16d, 1
	lea	r10d, 4[rdx]
	jne	.L840
	cmp	r8d, 4
	je	.L858
	shrx	r17d, ecx, r10d
	and	r17d, 1
	lea	r10d, 5[rdx]
	jne	.L840
	cmp	r8d, 5
	je	.L858
	shrx	r18d, ecx, r10d
	and	r18d, 1
	lea	r10d, 6[rdx]
	jne	.L840
	cmp	r8d, 6
	je	.L858
	shrx	r19d, ecx, r10d
	and	r19d, 1
	lea	r10d, 7[rdx]
	jne	.L840
	cmp	r8d, 7
	je	.L858
	shrx	r20d, ecx, r10d
	and	r20d, 1
	lea	r10d, 8[rdx]
	jne	.L840
	cmp	r8d, 8
	je	.L858
	shrx	r21d, ecx, r10d
	and	r21d, 1
	lea	r10d, 9[rdx]
	jne	.L840
	cmp	r8d, 9
	je	.L858
	shrx	r22d, ecx, r10d
	and	r22d, 1
	lea	r10d, 10[rdx]
	jne	.L840
	cmp	r8d, 10
	je	.L858
	shrx	r23d, ecx, r10d
	and	r23d, 1
	lea	r10d, 11[rdx]
	jne	.L840
	cmp	r8d, 11
	je	.L858
	shrx	r24d, ecx, r10d
	and	r24d, 1
	lea	r10d, 12[rdx]
	jne	.L840
	cmp	r8d, 12
	je	.L858
	shrx	r25d, ecx, r10d
	and	r25d, 1
	lea	r10d, 13[rdx]
	jne	.L840
	cmp	r8d, 13
	je	.L858
	shrx	r26d, ecx, r10d
	and	r26d, 1
	lea	r10d, 14[rdx]
	jne	.L840
	cmp	r8d, 14
	je	.L858
	shrx	r28d, ecx, r10d
	and	r28d, 1
	lea	r10d, 15[rdx]
	jne	.L840
	cmp	r8d, 15
	mov	r27d, 0
	je	.L837
	bt	ecx, r10d
	jnc	.L837
	lea	r10d, 16[rdx]
.L840:
	mov	r27d, r10d
	vzeroupper
	mov	eax, r27d
	ret
.L845:
	vmovdqa32	zmm2, ZMMWORD PTR .LC7[rip]
	jmp	.L838
	.seh_endproc
	.p2align 4
	.globl	libiberty_ffs
	.def	libiberty_ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	libiberty_ffs
libiberty_ffs:
	.seh_endprologue
	xor	eax, eax
	test	ecx, ecx
	je	.L863
	and	eax, ecx, 1
	jne	.L863
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L865:
	sar	ecx
	add	eax, 1
	test	cl, 1
	je	.L865
.L863:
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
	ja	.L870
	xor	eax, eax
	vcomiss	xmm0, DWORD PTR .LC11[rip]
	seta	al
.L870:
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
	ja	.L873
	xor	eax, eax
	vcomisd	xmm0, QWORD PTR .LC13[rip]
	seta	al
.L873:
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
	ja	.L879
	fld	TBYTE PTR .LC15[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L876
	.p2align 4,,10
	.p2align 3
.L879:
	fstp	st(0)
.L876:
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
	jp	.L882
	vaddss	xmm1, xmm0, xmm0
	vucomiss	xmm1, xmm0
	jp	.L889
	jne	.L889
.L882:
	ret
	.p2align 4,,10
	.p2align 3
.L889:
	vmovss	xmm2, DWORD PTR .LC16[rip]
	test	edx, edx
	jns	.L884
	vmovss	xmm2, DWORD PTR .LC17[rip]
.L884:
	test	dl, 1
	je	.L885
	.p2align 4
	.p2align 3
.L886:
	vmulss	xmm0, xmm0, xmm2
.L885:
	shr	eax, edx, 31
	add	edx, eax
	sar	edx
	je	.L882
	vmulss	xmm2, xmm2, xmm2
	test	dl, 1
	jne	.L886
.L896:
	vmulss	xmm2, xmm2, xmm2
	shr	ecx, edx, 31
	add	edx, ecx
	sar	edx
	test	dl, 1
	jne	.L886
	jmp	.L896
	.seh_endproc
	.p2align 4
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	vucomisd	xmm0, xmm0
	jp	.L898
	vaddsd	xmm1, xmm0, xmm0
	vucomisd	xmm1, xmm0
	jp	.L905
	jne	.L905
.L898:
	ret
	.p2align 4,,10
	.p2align 3
.L905:
	vmovsd	xmm2, QWORD PTR .LC18[rip]
	test	edx, edx
	jns	.L900
	vmovsd	xmm2, QWORD PTR .LC19[rip]
.L900:
	test	dl, 1
	je	.L901
	.p2align 4
	.p2align 3
.L902:
	vmulsd	xmm0, xmm0, xmm2
.L901:
	shr	eax, edx, 31
	add	edx, eax
	sar	edx
	je	.L898
	vmulsd	xmm2, xmm2, xmm2
	test	dl, 1
	jne	.L902
.L912:
	vmulsd	xmm2, xmm2, xmm2
	shr	ecx, edx, 31
	add	edx, ecx
	sar	edx
	test	dl, 1
	jne	.L902
	jmp	.L912
	.seh_endproc
	.p2align 4
	.globl	ldexpl
	.def	ldexpl;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpl
ldexpl:
	.seh_endprologue
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L914
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L921
	jne	.L921
	jmp	.L914
	.p2align 4,,10
	.p2align 3
.L930:
	fstp	st(0)
.L914:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L921:
	test	r8d, r8d
	js	.L928
	fld	DWORD PTR .LC16[rip]
.L916:
	test	r8b, 1
	je	.L917
	.p2align 4
	.p2align 3
.L918:
	fmul	st(1), st
.L917:
	shr	eax, r8d, 31
	add	r8d, eax
	sar	r8d
	je	.L930
	fmul	st, st(0)
	test	r8b, 1
	jne	.L918
.L929:
	shr	edx, r8d, 31
	fmul	st, st(0)
	add	r8d, edx
	sar	r8d
	test	r8b, 1
	jne	.L918
	jmp	.L929
	.p2align 4,,10
	.p2align 3
.L928:
	fld	DWORD PTR .LC17[rip]
	jmp	.L916
	.seh_endproc
	.p2align 4
	.globl	memxor
	.def	memxor;	.scl	2;	.type	32;	.endef
	.seh_proc	memxor
memxor:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L932
	lea	rcx, -1[r8]
	cmp	rcx, 62
	jbe	.L939
	and	r17, r8, -64
	xor	r16d, r16d
	.p2align 5
	.p2align 4
	.p2align 3
.L934:
	vmovdqu8	zmm0, ZMMWORD PTR [rax+r16]
	vpxorq	zmm1, zmm0, ZMMWORD PTR [rdx+r16]
	vmovdqu8	ZMMWORD PTR [rax+r16], zmm1
	add	r16, 64
	cmp	r16, r17
	jne	.L934
	lea	r10, [rax+r17]
	lea	r9, [rdx+r17]
	sub	r11, r8, r17
	je	.L948
.L933:
	sub	r8, r17
	lea	r18, -1[r8]
	cmp	r18, 30
	jbe	.L936
	lea	r19, [rax+r17]
	vmovdqu8	ymm2, YMMWORD PTR [r19]
	vpxorq	ymm3, ymm2, YMMWORD PTR [rdx+r17]
	and	rdx, r8, -32
	add	r10, rdx
	add	r9, rdx
	sub	r11, rdx
	and	r8d, 31
	vmovdqu8	YMMWORD PTR [r19], ymm3
	je	.L948
.L936:
	lea	r8, [r9+r11]
	.p2align 5
	.p2align 4
	.p2align 3
.L938:
	add	r9, 1
	add	r10, 1
	movzx	r20d, BYTE PTR -1[r9]
	xor	BYTE PTR -1[r10], r20b
	cmp	r9, r8
	jne	.L938
.L948:
	vzeroupper
.L932:
	ret
.L939:
	mov	r10, rax
	mov	r9, rdx
	mov	r11, r8
	xor	r17d, r17d
	jmp	.L933
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
	je	.L950
	.p2align 4
	.p2align 4
	.p2align 3
.L951:
	add	r9, 1
	cmp	BYTE PTR [r9], 0
	jne	.L951
.L950:
	test	r8, r8
	jne	.L952
	jmp	.L953
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L954:
	add	rdx, 1
	add	r9, 1
	sub	r8, 1
	je	.L953
.L952:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [r9], r10b
	test	r10b, r10b
	jne	.L954
	ret
	.p2align 4,,10
	.p2align 3
.L953:
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
	je	.L963
.L964:
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L966
.L963:
	ret
	.p2align 4,,10
	.p2align 3
.L966:
	add	rax, 1
	cmp	rdx, rax
	jne	.L964
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
	je	.L977
.L973:
	mov	r8, rdx
	jmp	.L976
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L975:
	add	r8, 1
	cmp	r9b, r10b
	je	.L974
.L976:
	movzx	r9d, BYTE PTR [r8]
	test	r9b, r9b
	jne	.L975
	movzx	r10d, BYTE PTR 1[rax]
	add	rax, 1
	test	r10b, r10b
	jne	.L973
.L977:
	xor	eax, eax
.L974:
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
.L982:
	movsx	r9d, BYTE PTR [rcx]
	cmp	r9d, edx
	cmove	r8, rcx
	add	rcx, 1
	test	r9b, r9b
	jne	.L982
	mov	rax, r8
	ret
	.seh_endproc
	.p2align 4
	.globl	strstr
	.def	strstr;	.scl	2;	.type	32;	.endef
	.seh_proc	strstr
strstr:
	.seh_endprologue
	movzx	r16d, BYTE PTR [rdx]
	test	r16b, r16b
	je	.L996
	mov	rax, rdx
	.p2align 4
	.p2align 4
	.p2align 3
.L986:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L986
	mov	r21, rcx
	sub	rax, rdx
	je	.L984
	lea	r17, -1[rdx+rax]
	jmp	.L1006
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1008:
	add	rcx, 1
	test	r8b, r8b
	je	.L1007
.L1006:
	movzx	r8d, BYTE PTR [rcx]
	cmp	r8b, r16b
	jne	.L1008
	mov	r20d, r16d
	mov	r19, rdx
	mov	r10, rcx
	jmp	.L988
	.p2align 4,,10
	.p2align 3
.L1009:
	test	r9b, r9b
	setne	r11b
	cmp	r9b, r20b
	sete	r18b
	test	r11b, r18b
	je	.L989
	movzx	r20d, BYTE PTR 1[r10]
	add	r10, 1
	add	r19, 1
	test	r20b, r20b
	je	.L989
.L988:
	movzx	r9d, BYTE PTR [r19]
	cmp	r19, r17
	jne	.L1009
.L989:
	cmp	r20b, BYTE PTR [r19]
	je	.L996
	add	rcx, 1
	jmp	.L1006
	.p2align 4,,10
	.p2align 3
.L1007:
	xor	r21d, r21d
.L984:
	mov	rax, r21
	ret
.L996:
	mov	r21, rcx
	mov	rax, r21
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
	ja	.L1020
	vcomisd	xmm0, xmm2
	jbe	.L1014
	vcomisd	xmm2, xmm1
	ja	.L1013
.L1014:
	ret
	.p2align 4,,10
	.p2align 3
.L1020:
	vcomisd	xmm1, xmm2
	jbe	.L1014
.L1013:
	vxorpd	xmm0, xmm0, XMMWORD PTR .LC20[rip]
	ret
	.seh_endproc
	.p2align 4
	.globl	memmem
	.def	memmem;	.scl	2;	.type	32;	.endef
	.seh_proc	memmem
memmem:
	.seh_endprologue
	mov	rax, rcx
	test	r9, r9
	je	.L1021
	cmp	rdx, r9
	jb	.L1032
	sub	rdx, r9
	add	rcx, rdx
	jc	.L1032
	movzx	r11d, BYTE PTR [r8]
	jmp	.L1027
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1031:
	mov	rax, r10
.L1023:
	cmp	rcx, rax
	jb	.L1032
.L1027:
	lea	r10, 1[rax]
	cmp	BYTE PTR [rax], r11b
	jne	.L1031
	cmp	r9, 1
	je	.L1021
.L1026:
	mov	r17d, 1
	jmp	.L1024
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1025:
	add	r17, 1
	cmp	r17, r9
	je	.L1021
.L1024:
	movzx	r16d, BYTE PTR [r8+r17]
	cmp	BYTE PTR [rax+r17], r16b
	je	.L1025
	cmp	rcx, r10
	jb	.L1032
	lea	rax, 1[r10]
	cmp	r11b, BYTE PTR [r10]
	jne	.L1023
	mov	rdx, r10
	mov	r10, rax
	mov	rax, rdx
	jmp	.L1026
	.p2align 4,,10
	.p2align 3
.L1032:
	xor	eax, eax
.L1021:
	ret
	.seh_endproc
	.p2align 4
	.globl	mempcpy
	.def	mempcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	mempcpy
mempcpy:
	pushp	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, r8
	test	r8, r8
	je	.L1042
	call	memmove
	mov	rcx, rax
.L1042:
	lea	rax, [rcx+rbx]
	add	rsp, 32
	popp	rbx
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
	ja	.L1070
	vmovsd	xmm5, QWORD PTR .LC23[rip]
	xor	ecx, ecx
	vcomisd	xmm0, xmm5
	jb	.L1071
.L1049:
	vmovsd	xmm2, QWORD PTR .LC19[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1056:
	vmulsd	xmm0, xmm0, xmm2
	add	eax, 1
	vcomisd	xmm0, xmm5
	jnb	.L1056
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L1046
.L1073:
	vxorpd	xmm0, xmm0, XMMWORD PTR .LC20[rip]
.L1046:
	ret
	.p2align 4,,10
	.p2align 3
.L1071:
	vmovsd	xmm1, QWORD PTR .LC19[rip]
	vcomisd	xmm1, xmm0
	jbe	.L1052
	vucomisd	xmm0, xmm2
	jp	.L1062
	jne	.L1062
.L1052:
	mov	DWORD PTR [rdx], 0
	ret
	.p2align 4,,10
	.p2align 3
.L1070:
	vmovsd	xmm4, QWORD PTR .LC21[rip]
	vxorpd	xmm3, xmm0, XMMWORD PTR .LC20[rip]
	vcomisd	xmm4, xmm0
	jb	.L1072
	vmovsd	xmm5, QWORD PTR .LC23[rip]
	vmovapd	xmm0, xmm3
	mov	ecx, 1
	jmp	.L1049
	.p2align 4,,10
	.p2align 3
.L1072:
	vcomisd	xmm0, QWORD PTR .LC22[rip]
	jbe	.L1052
	vmovsd	xmm1, QWORD PTR .LC19[rip]
	mov	ecx, 1
.L1050:
	vmovapd	xmm0, xmm3
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1058:
	vaddsd	xmm0, xmm0, xmm0
	sub	eax, 1
	vcomisd	xmm1, xmm0
	ja	.L1058
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	jne	.L1073
	jmp	.L1046
.L1062:
	vmovapd	xmm3, xmm0
	xor	ecx, ecx
	jmp	.L1050
	.seh_endproc
	.p2align 4
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	xor	r8d, r8d
	test	rcx, rcx
	je	.L1074
	.p2align 5
	.p2align 4
	.p2align 3
.L1076:
	and	eax, ecx, 1
	neg	rax
	and	rax, rdx
	add	rdx, rdx
	add	r8, rax
	shr	rcx
	jne	.L1076
.L1074:
	mov	rax, r8
	ret
	.seh_endproc
	.p2align 4
	.globl	udivmodsi4
	.def	udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	udivmodsi4
udivmodsi4:
	.seh_endprologue
	mov	r9d, 1
	cmp	edx, ecx
	jb	.L1080
	jmp	.L1103
	.p2align 4,,10
	.p2align 3
.L1083:
	add	edx, edx
	add	r9d, r9d
	cmp	edx, ecx
	jnb	.L1082
	test	r9d, r9d
	je	.L1082
.L1080:
	test	edx, edx
	jns	.L1083
.L1084:
	xor	eax, eax
	xor	r16d, r16d
	.p2align 5
	.p2align 4
	.p2align 3
.L1086:
	sub	r10d, ecx, edx
	setnb	r11b
	test	r11b, r11b
	cmovne	r17d, r16d, r9d
	cmovne	ecx, r10d
	shr	edx
	or	eax, r17d
	shr	r9d
	jne	.L1086
.L1085:
	test	r8, r8
	cmovne	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1082:
	xor	eax, eax
	test	r9d, r9d
	jne	.L1084
	test	r8, r8
	cmovne	eax, ecx
	ret
.L1103:
	sub	eax, ecx, edx
	setnb	dl
	cmovnb	ecx, eax
	movzx	eax, dl
	jmp	.L1085
	.seh_endproc
	.p2align 4
	.globl	__clrsbqi2
	.def	__clrsbqi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbqi2
__clrsbqi2:
	.seh_endprologue
	mov	r9d, 7
	sar	dl, cl, 7
	xor	eax, edx, ecx
	cmp	cl, dl
	je	.L1106
	movsx	ecx, al
	xor	r8d, r8d
	sal	ecx, 8
	lzcnt	r8d, ecx
	lea	r9d, -1[r8]
.L1106:
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
	sar	rdx, rcx, 63
	xor	rax, rcx, rdx
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
	je	.L1112
	.p2align 4
	.p2align 4
	.p2align 3
.L1114:
	and	eax, ecx, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L1114
.L1112:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__cmovd
	.def	__cmovd;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovd
__cmovd:
	.seh_endprologue
	mov	r9, rcx
	shr	r16d, r8d, 3
	mov	rcx, rdx
	and	eax, r8d, -8
	cmp	r9, rdx
	jb	.L1122
	mov	edx, r8d
	add	rdx, rcx
	cmp	rdx, r9
	jnb	.L1189
.L1122:
	test	r16d, r16d
	je	.L1190
	lea	r26d, -1[r16]
	cmp	r26d, 2
	jbe	.L1124
	lea	r27, 8[rcx]
	sub	r28, r9, r27
	cmp	r28, 48
	jbe	.L1124
	cmp	r26d, 6
	jbe	.L1150
	shr	r31d, r8d, 6
	xor	edx, edx
	mov	r18, r31
	sal	r31, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1126:
	vmovdqu64	zmm2, ZMMWORD PTR [rcx+rdx]
	vmovdqu64	ZMMWORD PTR [r9+rdx], zmm2
	add	rdx, 64
	cmp	rdx, r31
	jne	.L1126
	lea	r30d, 0[0+r18*8]
	cmp	r16d, r30d
	je	.L1131
	sub	r29d, r16d, r30d
	lea	r11d, -1[r29]
	cmp	r11d, 2
	jbe	.L1128
.L1125:
	mov	r17d, r30d
	and	r19d, r29d, -4
	vmovdqu64	ymm3, YMMWORD PTR [rcx+r17*8]
	add	r30d, r19d
	and	r29d, 3
	vmovdqu64	YMMWORD PTR [r9+r17*8], ymm3
	je	.L1131
.L1128:
	mov	r20d, r30d
	lea	r22d, 1[r30]
	mov	r21, QWORD PTR [rcx+r20*8]
	mov	QWORD PTR [r9+r20*8], r21
	cmp	r22d, r16d
	jnb	.L1131
	mov	r23, QWORD PTR [rcx+r22*8]
	add	r30d, 2
	mov	QWORD PTR [r9+r22*8], r23
	cmp	r30d, r16d
	jnb	.L1131
	mov	r16, QWORD PTR [rcx+r30*8]
	mov	QWORD PTR [r9+r30*8], r16
.L1131:
	cmp	eax, r8d
	jnb	.L1186
	sub	r26d, r8d, eax
	mov	r28d, eax
	lea	r27d, -1[r26]
	cmp	r27d, 30
	jbe	.L1182
	lea	r29, [r9+r28]
	lea	r30, 1[rcx+r28]
	sub	r31, r29, r30
	cmp	r31, 62
	jbe	.L1182
	cmp	r27d, 62
	jbe	.L1151
	shr	r11d, r26d, 6
	lea	r17, [rcx+r28]
	xor	edx, edx
	sal	r11, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1133:
	vmovdqu8	zmm4, ZMMWORD PTR [r17+rdx]
	vmovdqu8	ZMMWORD PTR [r29+rdx], zmm4
	add	rdx, 64
	cmp	rdx, r11
	jne	.L1133
	and	r18d, r26d, -64
	add	eax, r18d
	test	r26b, 63
	je	.L1186
	sub	r26d, r18d
	lea	r19d, -1[r26]
	cmp	r19d, 30
	jbe	.L1137
.L1132:
	add	r18, r28
	and	r20d, r26d, -32
	vmovdqu8	ymm5, YMMWORD PTR [rcx+r18]
	add	eax, r20d
	and	r26d, 31
	vmovdqu8	YMMWORD PTR [r9+r18], ymm5
	je	.L1186
	.p2align 5
	.p2align 4
	.p2align 3
.L1137:
	movzx	r21d, BYTE PTR [rcx+rax]
	mov	BYTE PTR [r9+rax], r21b
	add	rax, 1
	cmp	eax, r8d
	jb	.L1137
.L1186:
	vzeroupper
.L1187:
	ret
	.p2align 4,,10
	.p2align 3
.L1189:
	lea	r18d, -1[r8]
	test	r8d, r8d
	je	.L1187
	mov	r10d, r18d
	cmp	r18d, 30
	jbe	.L1148
	sub	r11, r9, rcx
	add	r11, 63
	cmp	r11, 62
	jbe	.L1148
	cmp	r18d, 62
	jbe	.L1152
	shr	r21d, r8d, 6
	lea	r19, -63[r10]
	xor	r22d, r22d
	neg	r21
	lea	r20, [rcx+r19]
	add	r19, r9
	sal	r21, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1142:
	vmovdqu8	zmm0, ZMMWORD PTR [r20+r22]
	vmovdqu8	ZMMWORD PTR [r19+r22], zmm0
	sub	r22, 64
	cmp	r22, r21
	jne	.L1142
	and	r17d, r8d, -64
	sub	r18d, r17d
	test	r8b, 63
	je	.L1186
	sub	r8d, r17d
	lea	r23d, -1[r8]
	cmp	r23d, 30
	jbe	.L1147
.L1141:
	sub	r10, 31
	and	r24d, r8d, -32
	sub	r10, r17
	sub	r18d, r24d
	and	r8d, 31
	vmovdqu8	ymm1, YMMWORD PTR [rcx+r10]
	vmovdqu8	YMMWORD PTR [r9+r10], ymm1
	je	.L1186
	.p2align 4
	.p2align 4
	.p2align 3
.L1147:
	movzx	r8d, BYTE PTR [rcx+r18]
	mov	BYTE PTR [r9+r18], r8b
	sub	r18, 1
	jnb	.L1147
	vzeroupper
	jmp	.L1187
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1148:
	movzx	r25d, BYTE PTR [rcx+r10]
	mov	BYTE PTR [r9+r10], r25b
	sub	r10, 1
	jb	.L1187
	movzx	r25d, BYTE PTR [rcx+r10]
	mov	BYTE PTR [r9+r10], r25b
	sub	r10, 1
	jnb	.L1148
	jmp	.L1187
.L1150:
	mov	r29d, r16d
	xor	r30d, r30d
	jmp	.L1125
	.p2align 4,,10
	.p2align 3
.L1124:
	lea	r24d, 0[0+r16*8]
	xor	r25d, r25d
	.p2align 5
	.p2align 4
	.p2align 3
.L1130:
	mov	r10, QWORD PTR [rcx+r25]
	mov	QWORD PTR [r9+r25], r10
	add	r25, 8
	cmp	r24, r25
	jne	.L1130
	jmp	.L1131
	.p2align 4,,10
	.p2align 3
.L1190:
	mov	r28d, eax
	test	r8d, r8d
	je	.L1187
.L1120:
	mov	r10, r28
	.p2align 5
	.p2align 4
	.p2align 3
.L1138:
	movzx	eax, BYTE PTR [rcx+r10]
	mov	BYTE PTR [r9+r10], al
	add	r10, 1
	cmp	r10d, r8d
	jb	.L1138
	ret
	.p2align 4,,10
	.p2align 3
.L1182:
	vzeroupper
	jmp	.L1120
.L1151:
	xor	r18d, r18d
	jmp	.L1132
.L1152:
	xor	r17d, r17d
	jmp	.L1141
	.seh_endproc
	.p2align 4
	.globl	__cmovh
	.def	__cmovh;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovh
__cmovh:
	.seh_endprologue
	shr	r11d, r8d, 1
	cmp	rcx, rdx
	jb	.L1195
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L1257
.L1195:
	test	r11d, r11d
	je	.L1194
	lea	r25d, -1[r11]
	cmp	r25d, 14
	jbe	.L1198
	lea	r26, 2[rdx]
	sub	r27, rcx, r26
	cmp	r27, 60
	jbe	.L1198
	cmp	r25d, 30
	jbe	.L1216
	shr	r30d, r8d, 6
	xor	eax, eax
	mov	r31, r30
	sal	r30, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1200:
	vmovdqu16	zmm2, ZMMWORD PTR [rdx+rax]
	vmovdqu16	ZMMWORD PTR [rcx+rax], zmm2
	add	rax, 64
	cmp	r30, rax
	jne	.L1200
	sal	r29d, r31d, 5
	cmp	r11d, r29d
	je	.L1252
	sub	r28d, r11d, r29d
	lea	r18d, -1[r28]
	cmp	r18d, 14
	jbe	.L1202
.L1199:
	mov	r9d, r29d
	and	r16d, r28d, -16
	vmovdqu16	ymm3, YMMWORD PTR [rdx+r9*2]
	add	r29d, r16d
	and	r28d, 15
	vmovdqu16	YMMWORD PTR [rcx+r9*2], ymm3
	je	.L1252
.L1202:
	mov	r19d, r29d
	lea	r20d, 1[r29]
	movzx	r17d, WORD PTR [rdx+r19*2]
	mov	WORD PTR [rcx+r19*2], r17w
	cmp	r20d, r11d
	jnb	.L1252
	movzx	r21d, WORD PTR [rdx+r20*2]
	lea	r22d, 2[r29]
	mov	WORD PTR [rcx+r20*2], r21w
	cmp	r22d, r11d
	jnb	.L1252
	movzx	r23d, WORD PTR [rdx+r22*2]
	lea	r24d, 3[r29]
	mov	WORD PTR [rcx+r22*2], r23w
	cmp	r24d, r11d
	jnb	.L1252
	movzx	r10d, WORD PTR [rdx+r24*2]
	lea	r25d, 4[r29]
	mov	WORD PTR [rcx+r24*2], r10w
	cmp	r25d, r11d
	jnb	.L1252
	movzx	r26d, WORD PTR [rdx+r25*2]
	lea	r27d, 5[r29]
	mov	WORD PTR [rcx+r25*2], r26w
	cmp	r27d, r11d
	jnb	.L1252
	movzx	r28d, WORD PTR [rdx+r27*2]
	lea	r30d, 6[r29]
	mov	WORD PTR [rcx+r27*2], r28w
	cmp	r30d, r11d
	jnb	.L1252
	movzx	r31d, WORD PTR [rdx+r30*2]
	lea	eax, 7[r29]
	mov	WORD PTR [rcx+r30*2], r31w
	cmp	eax, r11d
	jnb	.L1252
	movzx	r18d, WORD PTR [rdx+rax*2]
	lea	r9d, 8[r29]
	mov	WORD PTR [rcx+rax*2], r18w
	cmp	r9d, r11d
	jnb	.L1252
	movzx	r16d, WORD PTR [rdx+r9*2]
	lea	r19d, 9[r29]
	mov	WORD PTR [rcx+r9*2], r16w
	cmp	r19d, r11d
	jnb	.L1252
	movzx	r17d, WORD PTR [rdx+r19*2]
	lea	r20d, 10[r29]
	mov	WORD PTR [rcx+r19*2], r17w
	cmp	r20d, r11d
	jnb	.L1252
	movzx	r21d, WORD PTR [rdx+r20*2]
	lea	r22d, 11[r29]
	mov	WORD PTR [rcx+r20*2], r21w
	cmp	r22d, r11d
	jnb	.L1252
	movzx	r23d, WORD PTR [rdx+r22*2]
	lea	r24d, 12[r29]
	mov	WORD PTR [rcx+r22*2], r23w
	cmp	r24d, r11d
	jnb	.L1252
	movzx	r10d, WORD PTR [rdx+r24*2]
	lea	r25d, 13[r29]
	mov	WORD PTR [rcx+r24*2], r10w
	cmp	r25d, r11d
	jnb	.L1252
	movzx	r26d, WORD PTR [rdx+r25*2]
	add	r29d, 14
	mov	WORD PTR [rcx+r25*2], r26w
	cmp	r29d, r11d
	jnb	.L1252
	movzx	r11d, WORD PTR [rdx+r29*2]
	mov	WORD PTR [rcx+r29*2], r11w
	vzeroupper
.L1194:
	test	r8b, 1
	je	.L1255
.L1258:
	lea	r8d, -1[r8]
	movzx	edx, BYTE PTR [rdx+r8]
	mov	BYTE PTR [rcx+r8], dl
.L1255:
	ret
	.p2align 4,,10
	.p2align 3
.L1257:
	lea	r18d, -1[r8]
	test	r8d, r8d
	je	.L1255
	mov	r10d, r18d
	cmp	r18d, 30
	jbe	.L1214
	sub	r9, rcx, rdx
	add	r9, 63
	cmp	r9, 62
	jbe	.L1214
	cmp	r18d, 62
	jbe	.L1217
	shr	r20d, r8d, 6
	lea	r19, -63[r10]
	xor	r21d, r21d
	neg	r20
	lea	r17, [rdx+r19]
	add	r19, rcx
	sal	r20, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1209:
	vmovdqu8	zmm0, ZMMWORD PTR [r17+r21]
	vmovdqu8	ZMMWORD PTR [r19+r21], zmm0
	sub	r21, 64
	cmp	r20, r21
	jne	.L1209
	and	r16d, r8d, -64
	sub	r18d, r16d
	test	r8b, 63
	je	.L1254
	sub	r8d, r16d
	lea	r22d, -1[r8]
	cmp	r22d, 30
	jbe	.L1213
.L1208:
	sub	r10, 31
	and	r23d, r8d, -32
	sub	r10, r16
	sub	r18d, r23d
	and	r8d, 31
	vmovdqu8	ymm1, YMMWORD PTR [rdx+r10]
	vmovdqu8	YMMWORD PTR [rcx+r10], ymm1
	je	.L1254
	.p2align 4
	.p2align 4
	.p2align 3
.L1213:
	movzx	r8d, BYTE PTR [rdx+r18]
	mov	BYTE PTR [rcx+r18], r8b
	sub	r18, 1
	jnb	.L1213
.L1254:
	vzeroupper
	ret
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1214:
	movzx	r24d, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], r24b
	sub	r10, 1
	jb	.L1255
	movzx	r24d, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], r24b
	sub	r10, 1
	jnb	.L1214
	jmp	.L1255
	.p2align 4,,10
	.p2align 3
.L1252:
	vzeroupper
	test	r8b, 1
	je	.L1255
	jmp	.L1258
.L1216:
	mov	r28d, r11d
	xor	r29d, r29d
	jmp	.L1199
	.p2align 4,,10
	.p2align 3
.L1198:
	lea	r29d, [r11+r11]
	xor	r27d, r27d
	.p2align 5
	.p2align 4
	.p2align 3
.L1204:
	movzx	r28d, WORD PTR [rdx+r27]
	mov	WORD PTR [rcx+r27], r28w
	add	r27, 2
	cmp	r29, r27
	jne	.L1204
	test	r8b, 1
	je	.L1255
	jmp	.L1258
.L1217:
	xor	r16d, r16d
	jmp	.L1208
	.seh_endproc
	.p2align 4
	.globl	__cmovw
	.def	__cmovw;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovw
__cmovw:
	.seh_endprologue
	shr	r16d, r8d, 2
	and	eax, r8d, -4
	cmp	rcx, rdx
	jb	.L1264
	mov	r9d, r8d
	add	r9, rdx
	cmp	r9, rcx
	jnb	.L1331
.L1264:
	test	r16d, r16d
	je	.L1332
	lea	r26d, -1[r16]
	cmp	r26d, 6
	jbe	.L1266
	lea	r27, 4[rdx]
	sub	r28, rcx, r27
	cmp	r28, 56
	jbe	.L1266
	cmp	r26d, 14
	jbe	.L1292
	shr	r31d, r8d, 6
	xor	r9d, r9d
	mov	r18, r31
	sal	r31, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1268:
	vmovdqu32	zmm2, ZMMWORD PTR [rdx+r9]
	vmovdqu32	ZMMWORD PTR [rcx+r9], zmm2
	add	r9, 64
	cmp	r9, r31
	jne	.L1268
	sal	r30d, r18d, 4
	cmp	r16d, r30d
	je	.L1273
	sub	r29d, r16d, r30d
	lea	r11d, -1[r29]
	cmp	r11d, 6
	jbe	.L1270
.L1267:
	mov	r17d, r30d
	and	r19d, r29d, -8
	vmovdqu32	ymm3, YMMWORD PTR [rdx+r17*4]
	add	r30d, r19d
	and	r29d, 7
	vmovdqu32	YMMWORD PTR [rcx+r17*4], ymm3
	je	.L1273
.L1270:
	mov	r20d, r30d
	lea	r22d, 1[r30]
	mov	r21d, DWORD PTR [rdx+r20*4]
	mov	DWORD PTR [rcx+r20*4], r21d
	cmp	r22d, r16d
	jnb	.L1273
	mov	r23d, DWORD PTR [rdx+r22*4]
	lea	r24d, 2[r30]
	mov	DWORD PTR [rcx+r22*4], r23d
	cmp	r24d, r16d
	jnb	.L1273
	mov	r10d, DWORD PTR [rdx+r24*4]
	lea	r25d, 3[r30]
	mov	DWORD PTR [rcx+r24*4], r10d
	cmp	r25d, r16d
	jnb	.L1273
	mov	r26d, DWORD PTR [rdx+r25*4]
	lea	r27d, 4[r30]
	mov	DWORD PTR [rcx+r25*4], r26d
	cmp	r27d, r16d
	jnb	.L1273
	mov	r28d, DWORD PTR [rdx+r27*4]
	lea	r29d, 5[r30]
	mov	DWORD PTR [rcx+r27*4], r28d
	cmp	r29d, r16d
	jnb	.L1273
	mov	r31d, DWORD PTR [rdx+r29*4]
	add	r30d, 6
	mov	DWORD PTR [rcx+r29*4], r31d
	cmp	r30d, r16d
	jnb	.L1273
	mov	r16d, DWORD PTR [rdx+r30*4]
	mov	DWORD PTR [rcx+r30*4], r16d
.L1273:
	cmp	eax, r8d
	jnb	.L1328
	sub	r17d, r8d, eax
	mov	r19d, eax
	lea	r11d, -1[r17]
	cmp	r11d, 30
	jbe	.L1324
	lea	r20, [rcx+r19]
	lea	r21, 1[rdx+r19]
	sub	r22, r20, r21
	cmp	r22, 62
	jbe	.L1324
	cmp	r11d, 62
	jbe	.L1293
	shr	r10d, r17d, 6
	lea	r24, [rdx+r19]
	xor	r25d, r25d
	sal	r10, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1275:
	vmovdqu8	zmm4, ZMMWORD PTR [r24+r25]
	vmovdqu8	ZMMWORD PTR [r20+r25], zmm4
	add	r25, 64
	cmp	r25, r10
	jne	.L1275
	and	r23d, r17d, -64
	add	eax, r23d
	test	r17b, 63
	je	.L1328
	sub	r17d, r23d
	lea	r26d, -1[r17]
	cmp	r26d, 30
	jbe	.L1279
.L1274:
	add	r23, r19
	and	r27d, r17d, -32
	vmovdqu8	ymm5, YMMWORD PTR [rdx+r23]
	add	eax, r27d
	and	r17d, 31
	vmovdqu8	YMMWORD PTR [rcx+r23], ymm5
	je	.L1328
	.p2align 5
	.p2align 4
	.p2align 3
.L1279:
	movzx	r28d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r28b
	add	rax, 1
	cmp	eax, r8d
	jb	.L1279
.L1328:
	vzeroupper
.L1329:
	ret
	.p2align 4,,10
	.p2align 3
.L1331:
	lea	r18d, -1[r8]
	test	r8d, r8d
	je	.L1329
	mov	r10d, r18d
	cmp	r18d, 30
	jbe	.L1290
	sub	r11, rcx, rdx
	add	r11, 63
	cmp	r11, 62
	jbe	.L1290
	cmp	r18d, 62
	jbe	.L1294
	shr	r21d, r8d, 6
	lea	r19, -63[r10]
	xor	r22d, r22d
	neg	r21
	lea	r20, [rdx+r19]
	add	r19, rcx
	sal	r21, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1284:
	vmovdqu8	zmm0, ZMMWORD PTR [r20+r22]
	vmovdqu8	ZMMWORD PTR [r19+r22], zmm0
	sub	r22, 64
	cmp	r22, r21
	jne	.L1284
	and	r17d, r8d, -64
	sub	r18d, r17d
	test	r8b, 63
	je	.L1328
	sub	r8d, r17d
	lea	r23d, -1[r8]
	cmp	r23d, 30
	jbe	.L1289
.L1283:
	sub	r10, 31
	and	r24d, r8d, -32
	sub	r10, r17
	sub	r18d, r24d
	and	r8d, 31
	vmovdqu8	ymm1, YMMWORD PTR [rdx+r10]
	vmovdqu8	YMMWORD PTR [rcx+r10], ymm1
	je	.L1328
	.p2align 4
	.p2align 4
	.p2align 3
.L1289:
	movzx	r8d, BYTE PTR [rdx+r18]
	mov	BYTE PTR [rcx+r18], r8b
	sub	r18, 1
	jnb	.L1289
	vzeroupper
	jmp	.L1329
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1290:
	movzx	r25d, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], r25b
	sub	r10, 1
	jb	.L1329
	movzx	r25d, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], r25b
	sub	r10, 1
	jnb	.L1290
	jmp	.L1329
.L1292:
	mov	r29d, r16d
	xor	r30d, r30d
	jmp	.L1267
	.p2align 4,,10
	.p2align 3
.L1266:
	lea	r30d, 0[0+r16*4]
	xor	r18d, r18d
	.p2align 5
	.p2align 4
	.p2align 3
.L1272:
	mov	r9d, DWORD PTR [rdx+r18]
	mov	DWORD PTR [rcx+r18], r9d
	add	r18, 4
	cmp	r18, r30
	jne	.L1272
	jmp	.L1273
	.p2align 4,,10
	.p2align 3
.L1332:
	mov	r19d, eax
	test	r8d, r8d
	je	.L1329
.L1262:
	mov	r10, r19
	.p2align 5
	.p2align 4
	.p2align 3
.L1280:
	movzx	eax, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], al
	add	r10, 1
	cmp	r10d, r8d
	jb	.L1280
	ret
	.p2align 4,,10
	.p2align 3
.L1324:
	vzeroupper
	jmp	.L1262
.L1293:
	xor	r23d, r23d
	jmp	.L1274
.L1294:
	xor	r17d, r17d
	jmp	.L1283
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
	jne	.L1359
.L1339:
	vzeroupper
	ret
.L1359:
	shr	eax, edx, 15
	jne	.L1343
	sar	eax, edx, 14
	jne	.L1339
	shr	eax, edx, 13
	jne	.L1344
	shr	eax, edx, 12
	jne	.L1345
	shr	eax, edx, 11
	jne	.L1346
	shr	eax, edx, 10
	jne	.L1347
	shr	eax, edx, 9
	jne	.L1348
	shr	eax, edx, 8
	jne	.L1349
	shr	eax, edx, 7
	jne	.L1350
	shr	eax, edx, 6
	jne	.L1351
	shr	eax, edx, 5
	jne	.L1352
	shr	eax, edx, 4
	jne	.L1353
	shr	eax, edx, 3
	jne	.L1354
	shr	eax, edx, 2
	jne	.L1355
	shr	edx
	jne	.L1356
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	vzeroupper
	ret
.L1343:
	xor	eax, eax
	jmp	.L1339
.L1347:
	mov	eax, 5
	jmp	.L1339
.L1354:
	mov	eax, 12
	jmp	.L1339
.L1344:
	mov	eax, 2
	jmp	.L1339
.L1345:
	mov	eax, 3
	jmp	.L1339
.L1346:
	mov	eax, 4
	jmp	.L1339
.L1348:
	mov	eax, 6
	jmp	.L1339
.L1349:
	mov	eax, 7
	jmp	.L1339
.L1350:
	mov	eax, 8
	jmp	.L1339
.L1351:
	mov	eax, 9
	jmp	.L1339
.L1352:
	mov	eax, 10
	jmp	.L1339
.L1353:
	mov	eax, 11
	jmp	.L1339
.L1355:
	mov	eax, 13
	jmp	.L1339
.L1356:
	mov	eax, 14
	jmp	.L1339
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
	jne	.L1381
.L1360:
	vzeroupper
	ret
.L1381:
	test	cl, 1
	jne	.L1364
	test	cl, 2
	jne	.L1365
	test	cl, 4
	jne	.L1366
	test	cl, 8
	jne	.L1367
	test	cl, 16
	jne	.L1368
	test	cl, 32
	jne	.L1369
	test	cl, 64
	jne	.L1370
	test	cl, -128
	jne	.L1371
	test	ch, 1
	jne	.L1372
	test	ch, 2
	jne	.L1373
	test	ch, 4
	jne	.L1374
	test	ch, 8
	jne	.L1375
	test	ch, 16
	jne	.L1376
	test	ch, 32
	jne	.L1377
	and	ch, 64
	jne	.L1378
	xor	eax, eax
	shr	edx, 15
	sete	al
	add	eax, 15
	vzeroupper
	ret
.L1364:
	xor	eax, eax
	jmp	.L1360
.L1369:
	mov	eax, 5
	jmp	.L1360
.L1376:
	mov	eax, 12
	jmp	.L1360
.L1365:
	mov	eax, 1
	jmp	.L1360
.L1366:
	mov	eax, 2
	jmp	.L1360
.L1367:
	mov	eax, 3
	jmp	.L1360
.L1368:
	mov	eax, 4
	jmp	.L1360
.L1370:
	mov	eax, 6
	jmp	.L1360
.L1371:
	mov	eax, 7
	jmp	.L1360
.L1372:
	mov	eax, 8
	jmp	.L1360
.L1373:
	mov	eax, 9
	jmp	.L1360
.L1374:
	mov	eax, 10
	jmp	.L1360
.L1375:
	mov	eax, 11
	jmp	.L1360
.L1377:
	mov	eax, 13
	jmp	.L1360
.L1378:
	mov	eax, 14
	jmp	.L1360
	.seh_endproc
	.p2align 4
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	vcomiss	xmm0, DWORD PTR .LC25[rip]
	jnb	.L1388
	vcvttss2si	eax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L1388:
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
	je	.L1391
	.p2align 4
	.p2align 4
	.p2align 3
.L1393:
	and	eax, ecx, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L1393
.L1391:
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
	je	.L1396
	test	edx, edx
	je	.L1396
	.p2align 4
	.p2align 4
	.p2align 3
.L1398:
	and	eax, edx, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	r8d, eax
	shr	edx
	jne	.L1398
.L1396:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__udivmodsi4
	.def	__udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4
__udivmodsi4:
	.seh_endprologue
	mov	r9d, 1
	cmp	edx, ecx
	jb	.L1404
	jmp	.L1427
	.p2align 4,,10
	.p2align 3
.L1407:
	add	edx, edx
	add	r9d, r9d
	cmp	edx, ecx
	jnb	.L1406
	test	r9d, r9d
	je	.L1406
.L1404:
	test	edx, edx
	jns	.L1407
.L1408:
	xor	eax, eax
	xor	r16d, r16d
	.p2align 5
	.p2align 4
	.p2align 3
.L1410:
	sub	r10d, ecx, edx
	setnb	r11b
	test	r11b, r11b
	cmovne	r17d, r16d, r9d
	cmovne	ecx, r10d
	shr	edx
	or	eax, r17d
	shr	r9d
	jne	.L1410
.L1409:
	test	r8d, r8d
	cmovne	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1406:
	xor	eax, eax
	test	r9d, r9d
	jne	.L1408
	test	r8d, r8d
	cmovne	eax, ecx
	ret
.L1427:
	sub	eax, ecx, edx
	setnb	dl
	cmovnb	ecx, eax
	movzx	eax, dl
	jmp	.L1409
	.seh_endproc
	.p2align 4
	.globl	__mspabi_cmpf
	.def	__mspabi_cmpf;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpf
__mspabi_cmpf:
	.seh_endprologue
	mov	eax, -1
	vcomiss	xmm1, xmm0
	ja	.L1430
	xor	eax, eax
	vcomiss	xmm0, xmm1
	seta	al
.L1430:
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
	ja	.L1433
	xor	eax, eax
	vcomisd	xmm0, xmm1
	seta	al
.L1433:
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
	js	.L1447
	je	.L1443
	xor	r11d, r11d
.L1440:
	mov	r8d, 1
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L1442:
	and	eax, edx, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	r9d, eax
	sar	edx
	setne	r10b
	cmp	r8b, 32
	setne	r16b
	add	r8d, 1
	test	r10b, r16b
	jne	.L1442
	neg	eax, r9d
	test	r11d, r11d
	cmove	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L1447:
	neg	edx
	mov	r11d, 1
	jmp	.L1440
	.p2align 4,,10
	.p2align 3
.L1443:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	__divsi3
	.def	__divsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__divsi3
__divsi3:
	.seh_endprologue
	mov	eax, 1
	xor	r16d, r16d
	test	ecx, ecx
	jns	.L1449
	neg	ecx
	xor	eax, eax
	mov	r16d, 1
.L1449:
	test	edx, edx
	jns	.L1450
	neg	edx
	mov	r16d, eax
.L1450:
	mov	r8d, edx
	mov	r9d, ecx
	mov	r17d, 1
	cmp	edx, ecx
	jb	.L1451
	jmp	.L1475
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1478:
	test	r17d, r17d
	je	.L1456
.L1451:
	add	r8d, r8d
	add	r17d, r17d
	cmp	r8d, ecx
	jb	.L1478
.L1456:
	xor	r18d, r18d
	xor	r11d, r11d
	test	r17d, r17d
	je	.L1454
	.p2align 5
	.p2align 4
	.p2align 3
.L1453:
	sub	ecx, r9d, r8d
	setnb	r10b
	test	r10b, r10b
	cmovne	r19d, r11d, r17d
	cmovne	r9d, ecx
	shr	r8d
	or	r18d, r19d
	shr	r17d
	jne	.L1453
.L1454:
	neg	eax, r18d
	test	r16d, r16d
	cmove	eax, r18d
	ret
.L1475:
	cmp	ecx, edx
	setnb	dl
	movzx	r18d, dl
	jmp	.L1454
	.seh_endproc
	.p2align 4
	.globl	__modsi3
	.def	__modsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__modsi3
__modsi3:
	.seh_endprologue
	xor	r9d, r9d
	test	ecx, ecx
	jns	.L1480
	neg	ecx
	mov	r9d, 1
.L1480:
	neg	eax, edx
	mov	r8d, ecx
	cmovs	eax, edx
	mov	edx, 1
	cmp	eax, ecx
	jb	.L1481
	jmp	.L1505
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1507:
	test	edx, edx
	je	.L1501
.L1481:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jb	.L1507
	test	edx, edx
	je	.L1501
	.p2align 4
	.p2align 4
	.p2align 3
.L1483:
	sub	r10d, r8d, eax
	cmovnb	r8d, r10d
	shr	eax
	shr	edx
	jne	.L1483
.L1484:
	neg	eax, r8d
	test	r9d, r9d
	cmove	eax, r8d
	ret
	.p2align 4,,10
	.p2align 3
.L1501:
	mov	r8d, ecx
	neg	eax, r8d
	test	r9d, r9d
	cmove	eax, r8d
	ret
.L1505:
	sub	ecx, eax
	cmovnb	r8d, ecx
	jmp	.L1484
	.seh_endproc
	.p2align 4
	.globl	__udivmodhi4
	.def	__udivmodhi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodhi4
__udivmodhi4:
	.seh_endprologue
	mov	r17d, 1
	mov	eax, ecx
	mov	r16d, edx
	cmp	dx, cx
	jb	.L1509
	jmp	.L1575
	.p2align 4,,10
	.p2align 3
.L1512:
	lea	r9d, [r16+r16]
	lea	r18d, [r17+r17]
	cmp	r9w, ax
	jnb	.L1511
	test	r18w, r18w
	je	.L1511
	mov	r17d, r18d
	mov	r16d, r9d
.L1509:
	test	r16w, r16w
	jns	.L1512
	sub	eax, ecx, r16d
	cmp	r16w, cx
	cmova	eax, ecx
	xor	r18d, r18d
	cmp	cx, r16w
	cmovnb	r18d, r17d
	shr	cx, r16w, 1
	shr	r10w, r17w, 1
	mov	r11d, r18d
	je	.L1514
.L1516:
	sub	r19d, eax, ecx
	cmp	ax, cx
	mov	r21d, 0
	setnb	r20b
	test	r20b, r20b
	cmove	r10d, r21d
	cmovne	eax, r19d
	shr	r22w, r16w, 2
	or	r18d, r10d, r11d
	shr	r23w, r17w, 2
	je	.L1514
	sub	r24d, eax, r22d
	cmp	ax, r22w
	setnb	r25b
	test	r25b, r25b
	cmove	r23d, r21d
	cmovne	eax, r24d
	shr	r26w, r16w, 3
	or	r18d, r23d
	shr	r27w, r17w, 3
	je	.L1514
	sub	r28d, eax, r26d
	cmp	ax, r26w
	setnb	r29b
	test	r29b, r29b
	cmove	r27d, r21d
	cmovne	eax, r28d
	shr	r30w, r16w, 4
	or	r18d, r27d
	shr	r31w, r17w, 4
	je	.L1514
	sub	edx, eax, r30d
	cmp	ax, r30w
	setnb	r11b
	test	r11b, r11b
	cmove	r31d, r21d
	cmovne	eax, edx
	shr	cx, r16w, 5
	or	r18d, r31d
	shr	r9w, r17w, 5
	je	.L1514
	sub	r19d, eax, ecx
	cmp	ax, cx
	setnb	r10b
	test	r10b, r10b
	cmove	r9d, r21d
	cmovne	eax, r19d
	shr	r20w, r16w, 6
	or	r18d, r9d
	shr	r22w, r17w, 6
	je	.L1514
	sub	r23d, eax, r20d
	cmp	ax, r20w
	setnb	r24b
	test	r24b, r24b
	cmove	r22d, r21d
	cmovne	eax, r23d
	shr	r25w, r16w, 7
	or	r18d, r22d
	shr	r26w, r17w, 7
	je	.L1514
	sub	r27d, eax, r25d
	cmp	ax, r25w
	setnb	r28b
	test	r28b, r28b
	cmove	r26d, r21d
	cmovne	eax, r27d
	shr	r29w, r16w, 8
	or	r18d, r26d
	shr	r30w, r17w, 8
	je	.L1514
	sub	r31d, eax, r29d
	cmp	ax, r29w
	setnb	dl
	test	dl, dl
	cmove	r30d, r21d
	cmovne	eax, r31d
	shr	cx, r16w, 9
	or	r18d, r30d
	shr	r9w, r17w, 9
	je	.L1514
	sub	r11d, eax, ecx
	cmp	ax, cx
	setnb	r19b
	test	r19b, r19b
	cmove	r9d, r21d
	cmovne	eax, r11d
	shr	r10w, r16w, 10
	or	r18d, r9d
	shr	r20w, r17w, 10
	je	.L1514
	sub	r22d, eax, r10d
	cmp	ax, r10w
	setnb	r23b
	test	r23b, r23b
	cmove	r20d, r21d
	cmovne	eax, r22d
	shr	r24w, r16w, 11
	or	r18d, r20d
	shr	r25w, r17w, 11
	je	.L1514
	sub	r26d, eax, r24d
	cmp	ax, r24w
	setnb	r27b
	test	r27b, r27b
	cmove	r25d, r21d
	cmovne	eax, r26d
	shr	r28w, r16w, 12
	or	r18d, r25d
	shr	r29w, r17w, 12
	je	.L1514
	sub	r30d, eax, r28d
	cmp	ax, r28w
	setnb	r31b
	test	r31b, r31b
	cmove	r29d, r21d
	cmovne	eax, r30d
	shr	dx, r16w, 13
	or	r18d, r29d
	shr	cx, r17w, 13
	je	.L1514
	sub	r9d, eax, edx
	cmp	ax, dx
	setnb	r11b
	test	r11b, r11b
	cmove	ecx, r21d
	cmovne	eax, r9d
	shr	r19w, r16w, 14
	or	r18d, ecx
	shr	r20w, r17w, 14
	je	.L1514
	sub	r22d, eax, r19d
	cmp	ax, r19w
	setnb	r10b
	test	r10b, r10b
	cmove	r20d, r21d
	cmovne	eax, r22d
	shr	r16w, 15
	or	r18d, r20d
	test	r17w, r17w
	jns	.L1514
	sub	r17d, eax, r16d
	cmp	ax, r16w
	setnb	r16b
	cmovnb	eax, r17d
	movzx	r21d, r16b
	or	r18d, r21d
.L1514:
	test	r8d, r8d
	cmove	eax, r18d
	ret
	.p2align 4,,10
	.p2align 3
.L1511:
	mov	eax, ecx
	test	r18w, r18w
	je	.L1514
	sub	eax, ecx, r9d
	cmp	r9w, cx
	cmova	eax, ecx
	xor	r11d, r11d
	cmp	cx, r9w
	cmovnb	r11d, r18d
	and	r10w, r17w, 32767
	and	cx, r16w, 32767
	mov	r17d, r18d
	mov	r16d, r9d
	jmp	.L1516
.L1575:
	sub	eax, ecx, edx
	cmp	dx, cx
	sete	dl
	cmovne	eax, ecx
	movzx	r18d, dl
	jmp	.L1514
	.seh_endproc
	.p2align 4
	.globl	__udivmodsi4_libgcc
	.def	__udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	.seh_endprologue
	mov	r9d, 1
	cmp	edx, ecx
	jb	.L1577
	jmp	.L1600
	.p2align 4,,10
	.p2align 3
.L1580:
	add	edx, edx
	add	r9d, r9d
	cmp	edx, ecx
	jnb	.L1579
	test	r9d, r9d
	je	.L1579
.L1577:
	test	edx, edx
	jns	.L1580
.L1581:
	xor	eax, eax
	xor	r16d, r16d
	.p2align 5
	.p2align 4
	.p2align 3
.L1583:
	sub	r10d, ecx, edx
	setnb	r11b
	test	r11b, r11b
	cmovne	r17d, r16d, r9d
	cmovne	ecx, r10d
	shr	edx
	or	eax, r17d
	shr	r9d
	jne	.L1583
.L1582:
	test	r8d, r8d
	cmovne	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1579:
	xor	eax, eax
	test	r9d, r9d
	jne	.L1581
	test	r8d, r8d
	cmovne	eax, ecx
	ret
.L1600:
	sub	eax, ecx, edx
	setnb	dl
	cmovnb	ecx, eax
	movzx	eax, dl
	jmp	.L1582
	.seh_endproc
	.p2align 4
	.globl	__ashldi3
	.def	__ashldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashldi3
__ashldi3:
	.seh_endprologue
	test	dl, 32
	je	.L1604
	sub	edx, 32
	xor	eax, eax
	shlx	ecx, ecx, edx
.L1605:
	sal	rcx, 32
	or	rax, rcx
.L1603:
	ret
	.p2align 4,,10
	.p2align 3
.L1604:
	mov	rax, rcx
	test	edx, edx
	je	.L1603
	mov	r8d, 32
	shlx	eax, ecx, edx
	sub	r8d, edx
	shrx	r9d, ecx, r8d
	sar	rcx, 32
	shlx	ecx, ecx, edx
	or	ecx, r9d
	jmp	.L1605
	.seh_endproc
	.p2align 4
	.globl	__ashlti3
	.def	__ashlti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashlti3
__ashlti3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r10, QWORD PTR [rcx]
	mov	rax, QWORD PTR 8[rcx]
	test	dl, 64
	je	.L1610
	lea	edx, -64[rdx]
	xor	ecx, ecx
	shlx	rax, r10, rdx
.L1611:
	mov	r10, rcx
.L1612:
	vmovdqa	XMMWORD PTR [rsp], xmm0
	mov	r16, QWORD PTR 8[rsp]
	vmovq	xmm0, r10
	vmovq	xmm1, rax
	vpinsrq	xmm2, xmm0, r16, 1
	vpunpcklqdq	xmm0, xmm2, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L1610:
	test	edx, edx
	je	.L1612
	mov	r9d, 64
	shlx	rax, rax, rdx
	shlx	rcx, r10, rdx
	sub	r9d, edx
	shrx	r8, r10, r9
	or	rax, r8
	jmp	.L1611
	.seh_endproc
	.p2align 4
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	test	dl, 32
	je	.L1615
	sar	rcx, 32
	sub	edx, 32
	sar	eax, ecx, 31
	sarx	ecx, ecx, edx
.L1616:
	sal	rax, 32
	or	rax, rcx
.L1614:
	ret
	.p2align 4,,10
	.p2align 3
.L1615:
	mov	rax, rcx
	test	edx, edx
	je	.L1614
	mov	r9d, 32
	sar	r8, rcx, 32
	shrx	ecx, ecx, edx
	sub	r9d, edx
	sarx	eax, r8d, edx
	shlx	r10d, r8d, r9d
	or	ecx, r10d
	jmp	.L1616
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
	mov	r11, QWORD PTR 8[rcx]
	test	dl, 64
	je	.L1621
	sub	edx, 64
	sar	r10, r11, 63
	sarx	rax, r11, rdx
.L1622:
	mov	r8, rax
	mov	r11, r10
.L1623:
	vmovdqa	XMMWORD PTR [rsp], xmm0
	mov	r17, QWORD PTR 8[rsp]
	vmovq	xmm0, r8
	vmovq	xmm1, r11
	vpinsrq	xmm2, xmm0, r17, 1
	vpunpcklqdq	xmm0, xmm2, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L1621:
	test	edx, edx
	je	.L1623
	mov	ecx, 64
	sarx	r10, r11, rdx
	sub	ecx, edx
	shrx	rdx, r8, rdx
	shlx	rax, r11, rcx
	or	rax, rdx
	jmp	.L1622
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
	mov	eax, 16
	mov	r8d, 8
	mov	r16d, 4
	mov	edx, ecx
	xor	ecx, ecx
	cmp	edx, 65535
	setbe	cl
	xor	r9d, r9d
	sal	ecx, 4
	sub	eax, ecx
	shrx	edx, edx, eax
	test	dh, -1
	mov	eax, 2
	sete	r9b
	xor	r11d, r11d
	sal	r9d, 3
	sub	r8d, r9d
	add	ecx, r9d
	shrx	r10d, edx, r8d
	test	r10b, -16
	sete	r11b
	xor	r19d, r19d
	sal	r11d, 2
	sub	r16d, r11d
	lea	r18d, [r11+rcx]
	shrx	r17d, r10d, r16d
	test	r17b, 12
	sete	r19b
	xor	r22d, r22d
	add	r19d, r19d
	sub	r20d, eax, r19d
	shrx	r21d, r17d, r20d
	sub	eax, r21d
	and	r21d, 2
	cmovne	eax, r22d
	add	r19d, r18d
	add	eax, r19d
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
	cmove	r11, r9, r8
	xor	r16d, r16d
	sal	eax, 6
	or	r10, r11
	lzcnt	r16, r10
	add	eax, r16d
	ret
	.seh_endproc
	.p2align 4
	.globl	__cmpdi2
	.def	__cmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpdi2
__cmpdi2:
	.seh_endprologue
	xor	eax, eax
	sar	r9, rcx, 32
	sar	r8, rdx, 32
	cmp	r9d, r8d
	jl	.L1629
	mov	eax, 2
	jg	.L1629
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1629
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1629:
	ret
	.seh_endproc
	.p2align 4
	.globl	__aeabi_lcmp
	.def	__aeabi_lcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_lcmp
__aeabi_lcmp:
	.seh_endprologue
	mov	eax, -1
	sar	r9, rcx, 32
	sar	r8, rdx, 32
	cmp	r9d, r8d
	jl	.L1635
	mov	eax, 1
	jg	.L1635
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1635
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1635:
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
	jl	.L1640
	mov	eax, 2
	jg	.L1640
	xor	eax, eax
	cmp	r8, r9
	jb	.L1640
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1640:
	ret
	.seh_endproc
	.p2align 4
	.globl	__ctzsi2
	.def	__ctzsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzsi2
__ctzsi2:
	.seh_endprologue
	mov	r19d, 2
	mov	edx, ecx
	xor	ecx, ecx
	test	dx, dx
	sete	cl
	xor	eax, eax
	sal	ecx, 4
	shrx	r8d, edx, ecx
	test	r8b, r8b
	sete	al
	xor	r10d, r10d
	sal	eax, 3
	add	ecx, eax
	shrx	r9d, r8d, eax
	test	r9b, 15
	sete	r10b
	xor	r17d, r17d
	sal	r10d, 2
	shrx	r11d, r9d, r10d
	test	r11b, 3
	lea	r16d, [r10+rcx]
	sete	r17b
	add	r17d, r17d
	shrx	r18d, r11d, r17d
	and	r18d, 3
	add	r17d, r16d
	not	eax, r18d
	shr	r18d
	and	eax, 1
	sub	r20d, r19d, r18d
	neg	eax
	and	eax, r20d
	add	eax, r17d
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
	tzcnt	r11, rdx
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
	jne	.L1649
	xor	eax, eax
	xor	ecx, ecx
	tzcnt	rax, rdx
	add	eax, 65
	test	rdx, rdx
	cmove	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1649:
	tzcnt	rax, rax
	add	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__lshrdi3
	.def	__lshrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrdi3
__lshrdi3:
	.seh_endprologue
	test	dl, 32
	je	.L1653
	shr	rcx, 32
	sub	edx, 32
	xor	eax, eax
	shrx	ecx, ecx, edx
.L1654:
	sal	rax, 32
	or	rax, rcx
.L1652:
	ret
	.p2align 4,,10
	.p2align 3
.L1653:
	mov	rax, rcx
	test	edx, edx
	je	.L1652
	mov	r9d, 32
	shr	r8, rcx, 32
	shrx	ecx, ecx, edx
	sub	r9d, edx
	shrx	eax, r8d, edx
	shlx	r10d, r8d, r9d
	or	ecx, r10d
	jmp	.L1654
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
	mov	r11, QWORD PTR 8[rcx]
	test	dl, 64
	je	.L1659
	sub	edx, 64
	xor	r10d, r10d
	shrx	rax, r11, rdx
.L1660:
	mov	r8, rax
	mov	r11, r10
.L1661:
	vmovdqa	XMMWORD PTR [rsp], xmm0
	mov	r17, QWORD PTR 8[rsp]
	vmovq	xmm0, r8
	vmovq	xmm1, r11
	vpinsrq	xmm2, xmm0, r17, 1
	vpunpcklqdq	xmm0, xmm2, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L1659:
	test	edx, edx
	je	.L1661
	mov	ecx, 64
	shrx	r10, r11, rdx
	sub	ecx, edx
	shrx	rdx, r8, rdx
	shlx	rax, r11, rcx
	or	rax, rdx
	jmp	.L1660
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
	shr	r10d, r9d, 16
	imul	ecx, edx
	movzx	r16d, r9w
	add	eax, r10d
	movzx	r11d, ax
	shr	eax, 16
	add	r8d, r11d
	add	eax, ecx
	sal	r17d, r8d, 16
	shr	r8d, 16
	lea	edx, [rax+r8]
	lea	eax, [r16+r17]
	sal	rdx, 32
	or	rax, rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	__muldi3_compiler_rt
	.def	__muldi3_compiler_rt;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3_compiler_rt
__muldi3_compiler_rt:
	.seh_endprologue
	shr	r10d, ecx, 16
	movzx	r8d, cx
	movzx	eax, dx
	shr	r17d, edx, 16
	mov	r9d, r8d
	imul	r8d, r17d
	sar	r22, rdx, 32
	imul	r9d, eax
	imul	eax, r10d
	imul	r10d, r17d
	shr	r11d, r9d, 16
	imul	r22d, ecx
	movzx	r18d, r9w
	sar	rcx, 32
	add	eax, r11d
	imul	edx, ecx
	movzx	r16d, ax
	shr	eax, 16
	add	r8d, r16d
	add	eax, r10d
	sal	r19d, r8d, 16
	shr	r8d, 16
	add	r8d, eax
	lea	r21d, [r18+r19]
	mov	r20d, r8d
	sal	r20, 32
	or	r21, r20
	sar	r23, r21, 32
	mov	eax, r21d
	add	r22d, r23d
	add	edx, r22d
	mov	edx, edx
	sal	rdx, 32
	or	rax, rdx
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
	shr	r10, r9, 32
	imul	rcx, rdx
	mov	r16d, r9d
	add	rax, r10
	mov	r11d, eax
	shr	rax, 32
	add	r8, r11
	add	rax, rcx
	mov	rcx, QWORD PTR 8[rsp]
	sal	r17, r8, 32
	shr	r8, 32
	add	r16, r17
	add	rax, r8
	vmovq	xmm0, r16
	vmovq	xmm1, rax
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
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	r11, QWORD PTR [rdx]
	mov	r9d, r8d
	mov	r20d, r11d
	shr	rax, r11, 32
	mov	r10, r9
	imul	r9, rax
	imul	r10, r20
	mov	r16, rdx
	shr	rdx, r8, 32
	imul	r20, rdx
	imul	rdx, rax
	shr	r17, r10, 32
	imul	r8, QWORD PTR 8[r16]
	mov	r19d, r10d
	add	r20, r17
	imul	r11, QWORD PTR 8[rcx]
	mov	r18d, r20d
	shr	r20, 32
	add	r9, r18
	add	r20, rdx
	sal	r21, r9, 32
	shr	r9, 32
	add	r20, r9
	add	r19, r21
	add	r8, r20
	mov	QWORD PTR [rsp], r19
	add	r8, r11
	mov	QWORD PTR 8[rsp], r8
	vmovdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.p2align 4
	.globl	__negdi2
	.def	__negdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__negdi2
__negdi2:
	.seh_endprologue
	neg	rax, rcx
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
	neg	rax, QWORD PTR [rcx]
	adc	rdx, QWORD PTR 8[rcx], 0
	neg	rdx
	vmovq	xmm0, rax
	mov	QWORD PTR [rsp], rax
	vpinsrq	xmm0, xmm0, rdx, 1
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
	mov	r9d, 27030
	bextr	rax, rcx, 8224
	xor	eax, ecx
	shr	edx, eax, 16
	xor	edx, eax
	shr	ecx, edx, 8
	xor	ecx, edx
	shr	r8d, ecx, 4
	xor	r8d, ecx
	and	r8d, 15
	sarx	eax, r9d, r8d
	and	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__parityti2
	.def	__parityti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__parityti2
__parityti2:
	.seh_endprologue
	mov	r10d, 27030
	mov	rdx, QWORD PTR [rcx]
	xor	rdx, QWORD PTR 8[rcx]
	sar	rax, rdx, 32
	xor	eax, edx
	shr	ecx, eax, 16
	xor	ecx, eax
	shr	r8d, ecx, 8
	xor	r8d, ecx
	shr	r9d, r8d, 4
	xor	r9d, r8d
	and	r9d, 15
	sarx	eax, r10d, r9d
	and	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__paritysi2
	.def	__paritysi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__paritysi2
__paritysi2:
	.seh_endprologue
	mov	r8d, 27030
	shr	edx, ecx, 16
	xor	edx, ecx
	shr	eax, edx, 8
	xor	eax, edx
	shr	ecx, eax, 4
	xor	ecx, eax
	and	ecx, 15
	sarx	eax, r8d, ecx
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
	shr	rax, rcx, 1
	and	rax, rdx
	sub	rcx, rax
	shr	r8, rcx, 2
	and	rcx, r9
	and	r8, r9
	add	r8, rcx
	shr	rcx, r8, 4
	add	rcx, r8
	and	rcx, r10
	shr	r11, rcx, 32
	add	ecx, r11d
	shr	r16d, ecx, 16
	add	r16d, ecx
	shr	eax, r16d, 8
	add	eax, r16d
	and	eax, 127
	ret
	.seh_endproc
	.p2align 4
	.globl	__popcountsi2
	.def	__popcountsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountsi2
__popcountsi2:
	.seh_endprologue
	shr	eax, ecx, 1
	and	eax, 1431655765
	sub	ecx, eax
	shr	edx, ecx, 2
	and	ecx, 858993459
	and	edx, 858993459
	add	edx, ecx
	shr	ecx, edx, 4
	add	ecx, edx
	and	ecx, 252645135
	shr	r8d, ecx, 16
	add	r8d, ecx
	shr	eax, r8d, 8
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
	movabs	r17, 3689348814741910323
	mov	rdx, QWORD PTR 8[rcx]
	mov	rax, QWORD PTR [rcx]
	shrd	r8, rax, rdx, 1
	shr	r9, rdx, 1
	and	r8, r10
	and	r9, r10
	sub	rax, r8
	sbb	rdx, r9
	shrd	rcx, rax, rdx, 2
	shr	r16, rdx, 2
	and	rax, r17
	and	rdx, r17
	and	rcx, r17
	and	r16, r17
	add	rcx, rax
	adc	r16, rdx
	shrd	r19, rcx, r16, 4
	shr	r20, r16, 4
	add	r19, rcx
	adc	r20, r16
	movabs	r16, 1085102592571150095
	and	r21, r19, r16
	and	rdx, r20, r16
	add	rdx, r21
	shr	r22, rdx, 32
	add	r22d, edx
	shr	r23d, r22d, 16
	add	r23d, r22d
	shr	r24d, r23d, 8
	add	r24d, r23d
	movzx	eax, r24b
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
	je	.L1676
	.p2align 4
	.p2align 3
.L1678:
	vmulsd	xmm1, xmm1, xmm0
.L1676:
	shr	ecx, eax, 31
	add	eax, ecx
	sar	eax
	je	.L1677
	vmulsd	xmm0, xmm0, xmm0
	test	al, 1
	jne	.L1678
.L1682:
	vmulsd	xmm0, xmm0, xmm0
	shr	r8d, eax, 31
	add	eax, r8d
	sar	eax
	test	al, 1
	jne	.L1678
	jmp	.L1682
	.p2align 4,,10
	.p2align 3
.L1677:
	test	edx, edx
	jns	.L1675
	vdivsd	xmm1, xmm2, xmm1
.L1675:
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
	je	.L1684
	.p2align 4
	.p2align 3
.L1686:
	vmulss	xmm1, xmm1, xmm0
.L1684:
	shr	ecx, eax, 31
	add	eax, ecx
	sar	eax
	je	.L1685
	vmulss	xmm0, xmm0, xmm0
	test	al, 1
	jne	.L1686
.L1690:
	vmulss	xmm0, xmm0, xmm0
	shr	r8d, eax, 31
	add	eax, r8d
	sar	eax
	test	al, 1
	jne	.L1686
	jmp	.L1690
	.p2align 4,,10
	.p2align 3
.L1685:
	test	edx, edx
	jns	.L1683
	vdivss	xmm1, xmm2, xmm1
.L1683:
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
	shr	r8, rcx, 32
	shr	r9, rdx, 32
	cmp	r8d, r9d
	jb	.L1691
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L1691
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1691
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1691:
	ret
	.seh_endproc
	.p2align 4
	.globl	__aeabi_ulcmp
	.def	__aeabi_ulcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_ulcmp
__aeabi_ulcmp:
	.seh_endprologue
	mov	eax, -1
	shr	r8, rcx, 32
	shr	r9, rdx, 32
	cmp	r8d, r9d
	jb	.L1697
	mov	eax, 1
	cmp	r9d, r8d
	jb	.L1697
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1697
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1697:
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
	jb	.L1702
	mov	eax, 2
	cmp	rdx, rcx
	jb	.L1702
	xor	eax, eax
	cmp	r8, r9
	jb	.L1702
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1702:
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
