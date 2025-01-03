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
	lea	r11, -1[r8]
	cmp	r11, 6
	jbe	.L108
	lea	rsi, -2[rdx+r8]
	mov	rbx, rcx
	sub	rbx, rsi
	lea	r9, 14[rbx+r11]
	cmp	r9, 14
	jbe	.L108
	lea	rsi, [rdx+r8]
	lea	rbx, [rcx+r8]
	cmp	r11, 14
	jbe	.L24
	mov	r10, r8
	lea	r9, -16[r8]
	xor	eax, eax
	and	r10, -16
	lea	r11, [rdx+r9]
	add	r9, rcx
	neg	r10
	.p2align 5
	.p2align 4
	.p2align 3
.L9:
	vmovdqu	xmm2, XMMWORD PTR [r11+rax]
	vmovdqu	XMMWORD PTR [r9+rax], xmm2
	sub	rax, 16
	cmp	r10, rax
	jne	.L9
	mov	r9, r8
	mov	r10, r8
	and	r9, -16
	sub	rsi, r9
	sub	rbx, r9
	sub	r10, r9
	and	r8d, 15
	je	.L6
	lea	r11, -1[r10]
	mov	r8, r10
	cmp	r11, 6
	jbe	.L11
.L8:
	mov	rdx, QWORD PTR -8[rdx+r8]
	mov	rax, r8
	and	rax, -8
	mov	QWORD PTR -8[rcx+r8], rdx
	sub	rsi, rax
	sub	rbx, rax
	sub	r10, rax
	and	r8d, 7
	je	.L6
.L11:
	movzx	r8d, BYTE PTR -1[rsi]
	mov	BYTE PTR -1[rbx], r8b
	cmp	r10, 1
	je	.L6
	movzx	r9d, BYTE PTR -2[rsi]
	mov	BYTE PTR -2[rbx], r9b
	cmp	r10, 2
	je	.L6
	movzx	r11d, BYTE PTR -3[rsi]
	mov	BYTE PTR -3[rbx], r11b
	cmp	r10, 3
	je	.L6
	movzx	edx, BYTE PTR -4[rsi]
	mov	BYTE PTR -4[rbx], dl
	cmp	r10, 4
	je	.L6
	movzx	eax, BYTE PTR -5[rsi]
	mov	BYTE PTR -5[rbx], al
	cmp	r10, 5
	je	.L6
	movzx	r8d, BYTE PTR -6[rsi]
	mov	BYTE PTR -6[rbx], r8b
	cmp	r10, 6
	je	.L6
	movzx	esi, BYTE PTR -7[rsi]
	mov	BYTE PTR -7[rbx], sil
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
	cmp	rax, 14
	jbe	.L26
	lea	r10, 1[rdx]
	mov	r9, rcx
	sub	r9, r10
	cmp	r9, 30
	jbe	.L26
	cmp	rax, 30
	jbe	.L27
	mov	rsi, r8
	xor	ebx, ebx
	and	rsi, -32
	.p2align 5
	.p2align 4
	.p2align 3
.L17:
	vmovdqu	ymm0, YMMWORD PTR [rdx+rbx]
	vmovdqu	YMMWORD PTR [rcx+rbx], ymm0
	add	rbx, 32
	cmp	rsi, rbx
	jne	.L17
	mov	rax, r8
	lea	r11, [rdx+rsi]
	lea	r10, [rcx+rsi]
	sub	rax, rsi
	cmp	r8, rsi
	je	.L109
	lea	r9, -1[rax]
	mov	r8, rax
	cmp	r9, 14
	jbe	.L111
	vzeroupper
.L16:
	vmovdqu	xmm1, XMMWORD PTR [rdx+rsi]
	mov	rdx, r8
	and	rdx, -16
	add	r11, rdx
	add	r10, rdx
	sub	rax, rdx
	and	r8d, 15
	vmovdqu	XMMWORD PTR [rcx+rsi], xmm1
	je	.L6
.L20:
	movzx	r8d, BYTE PTR [r11]
	mov	BYTE PTR [r10], r8b
	cmp	rax, 1
	je	.L6
	movzx	esi, BYTE PTR 1[r11]
	mov	BYTE PTR 1[r10], sil
	cmp	rax, 2
	je	.L6
	movzx	ebx, BYTE PTR 2[r11]
	mov	BYTE PTR 2[r10], bl
	cmp	rax, 3
	je	.L6
	movzx	r9d, BYTE PTR 3[r11]
	mov	BYTE PTR 3[r10], r9b
	cmp	rax, 4
	je	.L6
	movzx	edx, BYTE PTR 4[r11]
	mov	BYTE PTR 4[r10], dl
	cmp	rax, 5
	je	.L6
	movzx	r8d, BYTE PTR 5[r11]
	mov	BYTE PTR 5[r10], r8b
	cmp	rax, 6
	je	.L6
	movzx	esi, BYTE PTR 6[r11]
	mov	BYTE PTR 6[r10], sil
	cmp	rax, 7
	je	.L6
	movzx	ebx, BYTE PTR 7[r11]
	mov	BYTE PTR 7[r10], bl
	cmp	rax, 8
	je	.L6
	movzx	r9d, BYTE PTR 8[r11]
	mov	BYTE PTR 8[r10], r9b
	cmp	rax, 9
	je	.L6
	movzx	edx, BYTE PTR 9[r11]
	mov	BYTE PTR 9[r10], dl
	cmp	rax, 10
	je	.L6
	movzx	r8d, BYTE PTR 10[r11]
	mov	BYTE PTR 10[r10], r8b
	cmp	rax, 11
	je	.L6
	movzx	esi, BYTE PTR 11[r11]
	mov	BYTE PTR 11[r10], sil
	cmp	rax, 12
	je	.L6
	movzx	ebx, BYTE PTR 12[r11]
	mov	BYTE PTR 12[r10], bl
	cmp	rax, 13
	je	.L6
	movzx	r9d, BYTE PTR 13[r11]
	mov	BYTE PTR 13[r10], r9b
	cmp	rax, 14
	je	.L6
	movzx	r11d, BYTE PTR 14[r11]
	mov	BYTE PTR 14[r10], r11b
	jmp	.L6
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L112:
	sub	r11, 1
.L108:
	movzx	ebx, BYTE PTR -1[rdx+r8]
	mov	BYTE PTR -1[rcx+r8], bl
	mov	r8, r11
	test	r11, r11
	jne	.L112
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L26:
	xor	r10d, r10d
	.p2align 5
	.p2align 4
	.p2align 3
.L107:
	movzx	eax, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], al
	add	r10, 1
	cmp	r8, r10
	jne	.L107
	jmp	.L6
.L111:
	vzeroupper
	jmp	.L20
.L24:
	mov	r10, r8
	jmp	.L8
.L27:
	mov	r11, rdx
	mov	r10, rcx
	mov	rax, r8
	xor	esi, esi
	jmp	.L16
.L109:
	vzeroupper
	jmp	.L6
	.seh_endproc
	.p2align 4
	.globl	memccpy
	.def	memccpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memccpy
memccpy:
	.seh_endprologue
	movzx	r8d, r8b
	test	r9, r9
	jne	.L114
	jmp	.L116
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L117:
	add	rdx, 1
	add	rcx, 1
	sub	r9, 1
	je	.L116
.L114:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [rcx], r10b
	cmp	r10d, r8d
	jne	.L117
	lea	rax, 1[rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L116:
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
	jne	.L125
	jmp	.L128
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L127:
	add	rcx, 1
	sub	r8, 1
	je	.L128
.L125:
	movzx	eax, BYTE PTR [rcx]
	cmp	eax, edx
	jne	.L127
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L128:
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
	jne	.L133
	jmp	.L137
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L135:
	add	rcx, 1
	add	rdx, 1
	sub	r8, 1
	je	.L137
.L133:
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	je	.L135
	movzx	eax, BYTE PTR [rcx]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L137:
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
	je	.L144
	call	memcpy
	mov	rcx, rax
.L144:
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
	jmp	.L149
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L151:
	mov	r8, rax
	sub	rax, 1
	movzx	r9d, BYTE PTR [r8]
	cmp	r9d, edx
	je	.L148
.L149:
	cmp	rcx, rax
	jne	.L151
	xor	r8d, r8d
.L148:
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
	je	.L155
	movzx	edx, dl
	call	memset
	mov	rcx, rax
.L155:
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
	je	.L157
	.p2align 5
	.p2align 4
	.p2align 3
.L158:
	movzx	r8d, BYTE PTR 1[rdx]
	add	rdx, 1
	add	rax, 1
	mov	BYTE PTR [rax], r8b
	test	r8b, r8b
	jne	.L158
.L157:
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
	jne	.L164
	jmp	.L163
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L166:
	movzx	r8d, BYTE PTR 1[rax]
	add	rax, 1
	test	r8b, r8b
	je	.L163
.L164:
	cmp	r8d, edx
	jne	.L166
.L163:
	ret
	.seh_endproc
	.p2align 4
	.globl	strchr
	.def	strchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strchr
strchr:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L173
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L176:
	add	rax, 1
	test	r8b, r8b
	je	.L175
.L173:
	movsx	r8d, BYTE PTR [rax]
	cmp	r8d, edx
	jne	.L176
	ret
	.p2align 4,,10
	.p2align 3
.L175:
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
	je	.L178
	jmp	.L186
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L180:
	movzx	r8d, BYTE PTR [rcx+rax]
	add	rax, 1
	movzx	r9d, BYTE PTR -1[rdx+rax]
	cmp	r8b, r9b
	jne	.L186
.L178:
	test	r8b, r8b
	jne	.L180
	xor	eax, eax
	sub	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L186:
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
	je	.L190
	mov	rax, rcx
	.p2align 4
	.p2align 4
	.p2align 3
.L189:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L189
	sub	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L190:
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
	je	.L192
	movzx	eax, BYTE PTR [rcx]
	sub	r8, 1
	mov	rcx, rdx
	add	r8, rdx
	test	al, al
	jne	.L196
	jmp	.L209
	.p2align 4,,10
	.p2align 3
.L211:
	cmp	rcx, r8
	je	.L195
	movzx	eax, BYTE PTR 1[r9]
	add	r9, 1
	lea	rdx, 1[rcx]
	test	al, al
	je	.L210
	mov	rcx, rdx
.L196:
	movzx	edx, BYTE PTR [rcx]
	test	dl, dl
	setne	r11b
	cmp	dl, al
	sete	r10b
	test	r11b, r10b
	jne	.L211
.L195:
	sub	eax, edx
.L192:
	ret
	.p2align 4,,10
	.p2align 3
.L210:
	movzx	edx, BYTE PTR 1[rcx]
	xor	eax, eax
	sub	eax, edx
	jmp	.L192
.L209:
	movzx	edx, BYTE PTR [rdx]
	xor	eax, eax
	sub	eax, edx
	jmp	.L192
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
	cmp	r8, 1
	jle	.L224
	mov	rsi, r8
	lea	rax, -2[r8]
	shr	rsi
	lea	r11, -1[rsi]
	cmp	rax, 13
	jbe	.L219
	mov	r10, r8
	mov	rbx, r8
	vmovdqa	xmm1, XMMWORD PTR .LC0[rip]
	xor	eax, eax
	shr	r10, 4
	and	rbx, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L215:
	vmovdqu	xmm0, XMMWORD PTR [rcx+rax]
	vpshufb	xmm2, xmm0, xmm1
	vmovdqu	XMMWORD PTR [rdx+rax], xmm2
	add	rax, 16
	cmp	rbx, rax
	jne	.L215
	lea	r9, 0[0+r10*8]
	mov	rax, r10
	mov	r10, r9
	sal	rax, 4
	neg	r10
	lea	rbx, [rdx+rax]
	add	rax, rcx
	lea	r8, [r8+r10*2]
	cmp	r9, rsi
	je	.L224
.L214:
	sub	r11, r9
	mov	rsi, r11
	lea	r11, 1[r11]
	cmp	rsi, 2
	jbe	.L217
	vmovq	xmm3, QWORD PTR [rcx+r9*2]
	vpshufb	xmm4, xmm3, XMMWORD PTR .LC1[rip]
	vmovq	QWORD PTR [rdx+r9*2], xmm4
	mov	rdx, r11
	and	rdx, -4
	lea	rcx, [rdx+rdx]
	neg	rdx
	add	rbx, rcx
	add	rax, rcx
	lea	r8, [r8+rdx*2]
	and	r11d, 3
	je	.L224
.L217:
	movbe	r9w, WORD PTR [rax]
	mov	WORD PTR [rbx], r9w
	cmp	r8, 3
	jle	.L224
	movbe	r10w, WORD PTR 2[rax]
	mov	WORD PTR 2[rbx], r10w
	cmp	r8, 5
	jle	.L224
	movbe	r8w, WORD PTR 4[rax]
	mov	WORD PTR 4[rbx], r8w
.L224:
	pop	rbx
	pop	rsi
	ret
.L219:
	mov	rbx, rdx
	mov	rax, rcx
	xor	r9d, r9d
	jmp	.L214
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
	jbe	.L237
	cmp	cx, 31
	jbe	.L237
	lea	ecx, -8232[rax]
	mov	r8d, 1
	cmp	ecx, 1
	jbe	.L235
	sub	eax, 65529
	xor	r8d, r8d
	cmp	eax, 2
	setbe	r8b
	mov	eax, r8d
	ret
	.p2align 4,,10
	.p2align 3
.L237:
	mov	r8d, 1
.L235:
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
	jbe	.L246
	movzx	eax, cx
	lea	edx, -8234[rax]
	cmp	edx, 47061
	jbe	.L243
	cmp	cx, 8231
	jbe	.L243
	lea	r8d, -57344[rax]
	mov	r9d, 1
	cmp	r8d, 8184
	jbe	.L240
	sub	eax, 65532
	xor	r9d, r9d
	cmp	eax, 1048579
	ja	.L240
	not	ecx
	xor	r9d, r9d
	test	cx, -2
	setne	r9b
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L243:
	mov	r9d, 1
.L240:
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L246:
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
	jbe	.L247
	or	ecx, 32
	xor	edx, edx
	movzx	ecx, cx
	sub	ecx, 97
	cmp	ecx, 5
	setbe	dl
.L247:
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
	jp	.L251
	vucomisd	xmm1, xmm1
	jp	.L255
	vcomisd	xmm0, xmm1
	jbe	.L258
	vsubsd	xmm0, xmm0, xmm1
.L251:
	ret
	.p2align 4,,10
	.p2align 3
.L258:
	vxorpd	xmm0, xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L255:
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
	jp	.L259
	vucomiss	xmm1, xmm1
	jp	.L263
	vcomiss	xmm0, xmm1
	jbe	.L266
	vsubss	xmm0, xmm0, xmm1
.L259:
	ret
	.p2align 4,,10
	.p2align 3
.L266:
	vxorps	xmm0, xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L263:
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
	jp	.L267
	vucomisd	xmm1, xmm1
	jp	.L273
	vmovmskpd	eax, xmm0
	vmovmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L269
	test	eax, eax
	jne	.L267
.L273:
	vmovapd	xmm1, xmm0
.L267:
	vmovapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L269:
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
	jp	.L276
	vucomiss	xmm1, xmm1
	jp	.L282
	vmovd	eax, xmm0
	vmovd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L278
	test	eax, eax
	jne	.L276
.L282:
	vmovaps	xmm1, xmm0
.L276:
	vmovaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L278:
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
	jp	.L291
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L294
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
	je	.L287
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	jmp	.L286
	.p2align 4,,10
	.p2align 3
.L294:
	fstp	st(0)
.L286:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L287:
	fcomi	st, st(1)
	mov	rax, rcx
	fcmovbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L291:
	fstp	st(0)
	jmp	.L286
	.seh_endproc
	.p2align 4
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	vucomisd	xmm0, xmm0
	jp	.L300
	vucomisd	xmm1, xmm1
	jp	.L295
	vmovmskpd	eax, xmm0
	vmovmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L297
	test	eax, eax
	jne	.L295
.L300:
	vmovapd	xmm0, xmm1
.L295:
	ret
	.p2align 4,,10
	.p2align 3
.L297:
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
	jp	.L309
	vucomiss	xmm1, xmm1
	jp	.L304
	vmovd	eax, xmm0
	vmovd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L306
	test	eax, eax
	jne	.L304
.L309:
	vmovaps	xmm0, xmm1
.L304:
	ret
	.p2align 4,,10
	.p2align 3
.L306:
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
	jp	.L322
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L319
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
	je	.L315
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	jmp	.L314
	.p2align 4,,10
	.p2align 3
.L322:
	fstp	st(0)
.L314:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L315:
	fcomi	st, st(1)
	mov	rax, rcx
	fcmovnbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L319:
	fstp	st(0)
	jmp	.L314
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
	je	.L324
	lea	r8, digits[rip]
	.p2align 5
	.p2align 4
	.p2align 3
.L325:
	mov	edx, ecx
	add	rax, 1
	and	edx, 63
	movzx	r10d, BYTE PTR [r8+rdx]
	mov	BYTE PTR -1[rax], r10b
	shr	ecx, 6
	jne	.L325
.L324:
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
	je	.L337
	vmovq	xmm1, QWORD PTR [rdx]
	vpinsrq	xmm0, xmm1, rdx, 1
	vmovdqu	XMMWORD PTR [rcx], xmm0
	mov	QWORD PTR [rdx], rcx
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L336
	mov	QWORD PTR 8[rax], rcx
.L336:
	ret
	.p2align 4,,10
	.p2align 3
.L337:
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
	je	.L339
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L339:
	mov	rcx, QWORD PTR 8[rcx]
	test	rcx, rcx
	je	.L347
	mov	QWORD PTR [rcx], rax
.L347:
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
	je	.L349
	mov	rbx, rdx
	xor	r15d, r15d
	jmp	.L351
	.p2align 4,,10
	.p2align 3
.L363:
	add	r15, 1
	add	rbx, rsi
	cmp	rdi, r15
	je	.L349
.L351:
	mov	r12, rbx
	mov	rdx, rbx
	mov	rcx, rbp
	call	r13
	test	eax, eax
	jne	.L363
.L348:
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
.L349:
	lea	rax, 1[rdi]
	imul	rdi, rsi
	add	rdi, QWORD PTR 120[rsp]
	mov	QWORD PTR [r14], rax
	mov	r12, rdi
	test	rsi, rsi
	je	.L348
	mov	r8, rsi
	mov	rdx, rbp
	mov	rcx, rdi
	call	memmove
	jmp	.L348
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
	je	.L365
	mov	rbx, rdx
	xor	esi, esi
	jmp	.L367
	.p2align 4,,10
	.p2align 3
.L375:
	add	rsi, 1
	add	rbx, rbp
	cmp	r12, rsi
	je	.L365
.L367:
	mov	r14, rbx
	mov	rdx, rbx
	mov	rcx, rdi
	call	r13
	test	eax, eax
	jne	.L375
.L364:
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
.L365:
	xor	r14d, r14d
	jmp	.L364
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
	jmp	.L404
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L400:
	add	rcx, 1
.L404:
	movsx	eax, BYTE PTR [rcx]
	lea	r8d, -9[rax]
	mov	edx, eax
	cmp	r8d, 4
	jbe	.L400
	cmp	dl, 32
	je	.L400
	cmp	dl, 43
	je	.L381
	cmp	dl, 45
	jne	.L405
	movsx	r9d, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	edx, r9d
	sub	r9d, 48
	cmp	r9d, 9
	ja	.L390
	mov	r11d, 1
.L384:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L387:
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
	jbe	.L387
	sub	eax, ecx
	test	r11d, r11d
	cmovne	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L405:
	sub	eax, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	eax, 9
	jbe	.L384
.L390:
	xor	eax, eax
.L406:
	ret
	.p2align 4,,10
	.p2align 3
.L381:
	lea	r10, 1[rcx]
	movsx	ecx, BYTE PTR 1[rcx]
	xor	r11d, r11d
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L384
	xor	eax, eax
	jmp	.L406
	.seh_endproc
	.p2align 4
	.globl	atol
	.def	atol;	.scl	2;	.type	32;	.endef
	.seh_proc	atol
atol:
	.seh_endprologue
	jmp	.L431
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L428:
	add	rcx, 1
.L431:
	movsx	eax, BYTE PTR [rcx]
	lea	r8d, -9[rax]
	mov	edx, eax
	cmp	r8d, 4
	jbe	.L428
	cmp	dl, 32
	je	.L428
	cmp	dl, 43
	je	.L411
	cmp	dl, 45
	jne	.L412
	movsx	r9d, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	r11d, 1
	mov	edx, r9d
	sub	r9d, 48
	cmp	r9d, 9
	ja	.L419
.L413:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L416:
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
	jbe	.L416
	sub	eax, ecx
	test	r11d, r11d
	cmovne	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L412:
	sub	eax, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	eax, 9
	jbe	.L413
.L419:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L411:
	lea	r10, 1[rcx]
	movsx	ecx, BYTE PTR 1[rcx]
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	ja	.L419
	xor	r11d, r11d
	jmp	.L413
	.seh_endproc
	.p2align 4
	.globl	atoll
	.def	atoll;	.scl	2;	.type	32;	.endef
	.seh_proc	atoll
atoll:
	.seh_endprologue
	jmp	.L459
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L455:
	add	rcx, 1
.L459:
	movsx	eax, BYTE PTR [rcx]
	lea	r8d, -9[rax]
	mov	edx, eax
	cmp	r8d, 4
	jbe	.L455
	cmp	dl, 32
	je	.L455
	cmp	dl, 43
	je	.L436
	cmp	dl, 45
	jne	.L460
	movsx	r9d, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	edx, r9d
	sub	r9d, 48
	cmp	r9d, 9
	ja	.L445
	mov	r11d, 1
.L439:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L442:
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
	jbe	.L442
	sub	rax, rcx
	test	r11d, r11d
	cmovne	rax, r9
	ret
	.p2align 4,,10
	.p2align 3
.L460:
	sub	eax, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	eax, 9
	jbe	.L439
.L445:
	xor	eax, eax
.L461:
	ret
	.p2align 4,,10
	.p2align 3
.L436:
	lea	r10, 1[rcx]
	movsx	ecx, BYTE PTR 1[rcx]
	xor	r11d, r11d
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L439
	xor	eax, eax
	jmp	.L461
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
.L475:
	test	rbx, rbx
	je	.L463
.L476:
	mov	r14, rbx
	mov	rcx, r12
	shr	r14
	mov	rsi, r14
	imul	rsi, rbp
	add	rsi, rdi
	mov	rdx, rsi
	call	r13
	test	eax, eax
	js	.L467
	je	.L462
	sub	rbx, 1
	lea	rdi, [rsi+rbp]
	sub	rbx, r14
	test	rbx, rbx
	jne	.L476
.L463:
	xor	esi, esi
.L462:
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
.L467:
	mov	rbx, r14
	jmp	.L475
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
	je	.L482
	.p2align 4
	.p2align 3
.L490:
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
	je	.L477
	jle	.L480
	sub	r14d, 1
	lea	rsi, [rbx+rdi]
	sar	r14d
	jne	.L490
.L482:
	xor	ebx, ebx
.L477:
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
.L480:
	test	r15d, r15d
	je	.L482
	mov	r14d, r15d
	jmp	.L490
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
	jne	.L500
	jmp	.L503
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L502:
	movzx	eax, WORD PTR 2[rcx]
	add	rcx, 2
	test	ax, ax
	je	.L503
.L500:
	cmp	dx, ax
	jne	.L502
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L503:
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
	je	.L508
	jmp	.L509
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L510:
	movzx	r8d, WORD PTR [rcx+rax]
	add	rax, 2
	movzx	r9d, WORD PTR -2[rdx+rax]
	cmp	r8w, r9w
	jne	.L509
.L508:
	test	r8w, r8w
	jne	.L510
.L509:
	mov	eax, -1
	cmp	r8w, r9w
	jb	.L507
	xor	eax, eax
	cmp	r9w, r8w
	setb	al
.L507:
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
.L517:
	movzx	r9d, WORD PTR [rdx+r8]
	mov	WORD PTR [rax+r8], r9w
	add	r8, 2
	test	r9w, r9w
	jne	.L517
	ret
	.seh_endproc
	.p2align 4
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	cmp	WORD PTR [rcx], 0
	je	.L522
	mov	rax, rcx
	.p2align 4
	.p2align 4
	.p2align 3
.L521:
	add	rax, 2
	cmp	WORD PTR [rax], 0
	jne	.L521
	sub	rax, rcx
	sar	rax
	ret
	.p2align 4,,10
	.p2align 3
.L522:
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
	jne	.L525
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L538:
	test	ax, ax
	je	.L529
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L531
.L525:
	movzx	eax, WORD PTR [rcx]
	cmp	WORD PTR [rdx], ax
	je	.L538
.L529:
	movzx	ecx, WORD PTR [rcx]
	movzx	edx, WORD PTR [rdx]
	cmp	cx, dx
	jb	.L539
	cmp	dx, cx
	setb	r8b
	movzx	eax, r8b
	ret
	.p2align 4,,10
	.p2align 3
.L539:
	mov	eax, -1
	ret
	.p2align 4,,10
	.p2align 3
.L531:
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
	jne	.L541
	jmp	.L544
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L543:
	add	rcx, 2
	sub	r8, 1
	je	.L544
.L541:
	cmp	WORD PTR [rcx], dx
	jne	.L543
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L544:
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
	jne	.L549
	jmp	.L554
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L551:
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L554
.L549:
	movzx	eax, WORD PTR [rcx]
	cmp	ax, WORD PTR [rdx]
	je	.L551
	movzx	edx, WORD PTR [rdx]
	cmp	ax, dx
	jb	.L560
	cmp	dx, ax
	setb	cl
	movzx	eax, cl
	ret
	.p2align 4,,10
	.p2align 3
.L554:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L560:
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
	je	.L562
	add	r8, r8
	call	memcpy
	mov	rcx, rax
.L562:
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
	je	.L606
	mov	rax, rcx
	lea	rsi, [r8+r8]
	lea	r9, -1[r8]
	sub	rax, rdx
	cmp	rax, rsi
	jnb	.L642
	test	r8, r8
	je	.L606
	cmp	r9, 2
	jbe	.L637
	mov	rax, rcx
	sub	rax, rdx
	add	rax, 14
	cmp	rax, 12
	jbe	.L637
	cmp	r9, 6
	jbe	.L589
	mov	r10, r8
	lea	r11, -16[rsi]
	xor	eax, eax
	shr	r10, 3
	lea	rbx, [rdx+r11]
	add	r11, rcx
	neg	r10
	sal	r10, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L573:
	vmovdqu	xmm2, XMMWORD PTR [rbx+rax]
	vmovdqu	XMMWORD PTR [r11+rax], xmm2
	sub	rax, 16
	cmp	rax, r10
	jne	.L573
	mov	rbx, r8
	and	rbx, -8
	sub	r9, rbx
	test	r8b, 7
	je	.L606
	sub	r8, rbx
	lea	r11, -1[r8]
	cmp	r11, 2
	jbe	.L576
.L572:
	neg	rbx
	mov	r10, r8
	lea	rsi, -8[rsi+rbx*2]
	and	r10, -4
	mov	rbx, QWORD PTR [rdx+rsi]
	sub	r9, r10
	and	r8d, 3
	mov	QWORD PTR [rcx+rsi], rbx
	je	.L606
.L576:
	movzx	r8d, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], r8w
	test	r9, r9
	je	.L606
	sub	r9, 1
	movzx	r11d, WORD PTR [rdx+r9*2]
	lea	rax, [r9+r9]
	mov	WORD PTR [rcx+r9*2], r11w
	je	.L606
	movzx	edx, WORD PTR -2[rdx+rax]
	mov	WORD PTR -2[rcx+rax], dx
.L606:
	mov	rax, rcx
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L642:
	test	r8, r8
	je	.L606
	cmp	r9, 6
	jbe	.L591
	lea	r10, 2[rdx]
	mov	rbx, rcx
	sub	rbx, r10
	cmp	rbx, 28
	jbe	.L591
	cmp	r9, 14
	jbe	.L592
	mov	r11, r8
	xor	esi, esi
	xor	eax, eax
	shr	r11, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L582:
	vmovdqu	ymm0, YMMWORD PTR [rdx+rsi]
	add	rax, 1
	vmovdqu	YMMWORD PTR [rcx+rsi], ymm0
	add	rsi, 32
	cmp	r11, rax
	jne	.L582
	mov	r10, r8
	and	r10, -16
	lea	rsi, [r10+r10]
	sub	r9, r10
	lea	r11, [rdx+rsi]
	add	rsi, rcx
	test	r8b, 15
	je	.L639
	sub	r8, r10
	lea	rbx, -1[r8]
	cmp	rbx, 6
	jbe	.L643
	vzeroupper
.L581:
	vmovdqu	xmm1, XMMWORD PTR [rdx+r10*2]
	mov	rdx, r8
	and	rdx, -8
	sub	r9, rdx
	add	rdx, rdx
	vmovdqu	XMMWORD PTR [rcx+r10*2], xmm1
	add	r11, rdx
	add	rsi, rdx
	and	r8d, 7
	je	.L606
.L585:
	movzx	r8d, WORD PTR [r11]
	mov	WORD PTR [rsi], r8w
	test	r9, r9
	je	.L606
	movzx	eax, WORD PTR 2[r11]
	mov	WORD PTR 2[rsi], ax
	cmp	r9, 1
	je	.L606
	movzx	r10d, WORD PTR 4[r11]
	mov	WORD PTR 4[rsi], r10w
	cmp	r9, 2
	je	.L606
	movzx	ebx, WORD PTR 6[r11]
	mov	WORD PTR 6[rsi], bx
	cmp	r9, 3
	je	.L606
	movzx	edx, WORD PTR 8[r11]
	mov	WORD PTR 8[rsi], dx
	cmp	r9, 4
	je	.L606
	movzx	r8d, WORD PTR 10[r11]
	mov	WORD PTR 10[rsi], r8w
	cmp	r9, 5
	je	.L606
	movzx	r9d, WORD PTR 12[r11]
	mov	WORD PTR 12[rsi], r9w
	jmp	.L606
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L637:
	movzx	esi, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], si
	sub	r9, 1
	jb	.L606
	movzx	esi, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], si
	sub	r9, 1
	jnb	.L637
	jmp	.L606
	.p2align 4,,10
	.p2align 3
.L591:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L638:
	movzx	r11d, WORD PTR [rdx+rsi*2]
	mov	WORD PTR [rcx+rsi*2], r11w
	add	rsi, 1
	cmp	r8, rsi
	jne	.L638
	jmp	.L606
.L589:
	xor	ebx, ebx
	jmp	.L572
.L592:
	mov	r11, rdx
	mov	rsi, rcx
	xor	r10d, r10d
	jmp	.L581
.L643:
	vzeroupper
	jmp	.L585
.L639:
	vzeroupper
	jmp	.L606
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
	je	.L645
	cmp	r10, 14
	jbe	.L651
	vmovd	xmm0, edx
	mov	r11, r8
	xor	eax, eax
	vpshufb	xmm1, xmm0, XMMWORD PTR .LC5[rip]
	shr	r11, 4
	vinsertf128	ymm1, ymm1, xmm1, 1
	.p2align 5
	.p2align 4
	.p2align 3
.L647:
	mov	rcx, rax
	add	rax, 1
	sal	rcx, 5
	vmovdqu	YMMWORD PTR [r9+rcx], ymm1
	cmp	r11, rax
	jne	.L647
	mov	rcx, r8
	and	rcx, -16
	sub	r10, rcx
	lea	rax, [r9+rcx*2]
	test	r8b, 15
	je	.L681
	vzeroupper
.L646:
	sub	r8, rcx
	lea	r11, -1[r8]
	cmp	r11, 6
	jbe	.L649
	vmovd	xmm2, edx
	vpshufb	xmm3, xmm2, XMMWORD PTR .LC5[rip]
	vmovdqu	XMMWORD PTR [r9+rcx*2], xmm3
	mov	rcx, r8
	and	rcx, -8
	sub	r10, rcx
	and	r8d, 7
	lea	rax, [rax+rcx*2]
	je	.L645
.L649:
	mov	WORD PTR [rax], dx
	test	r10, r10
	je	.L645
	mov	WORD PTR 2[rax], dx
	cmp	r10, 1
	je	.L645
	mov	WORD PTR 4[rax], dx
	cmp	r10, 2
	je	.L645
	mov	WORD PTR 6[rax], dx
	cmp	r10, 3
	je	.L645
	mov	WORD PTR 8[rax], dx
	cmp	r10, 4
	je	.L645
	mov	WORD PTR 10[rax], dx
	cmp	r10, 5
	je	.L645
	mov	WORD PTR 12[rax], dx
.L645:
	mov	rax, r9
	ret
.L651:
	mov	rax, rcx
	xor	ecx, ecx
	jmp	.L646
.L681:
	vzeroupper
	jmp	.L645
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
	jnb	.L683
	test	r8, r8
	je	.L789
	lea	r11, -1[r8]
	cmp	r11, 6
	jbe	.L786
	lea	rsi, -2[rcx+r8]
	mov	rbx, rdx
	sub	rbx, rsi
	lea	r9, 14[rbx+r11]
	cmp	r9, 14
	jbe	.L786
	lea	rsi, [rcx+r8]
	lea	rbx, [rdx+r8]
	cmp	r11, 14
	jbe	.L702
	mov	r10, r8
	lea	r9, -16[r8]
	xor	eax, eax
	and	r10, -16
	lea	r11, [rcx+r9]
	add	r9, rdx
	neg	r10
	.p2align 5
	.p2align 4
	.p2align 3
.L687:
	vmovdqu	xmm2, XMMWORD PTR [r11+rax]
	vmovdqu	XMMWORD PTR [r9+rax], xmm2
	sub	rax, 16
	cmp	r10, rax
	jne	.L687
	mov	r9, r8
	mov	r10, r8
	and	r9, -16
	sub	rbx, r9
	sub	rsi, r9
	sub	r10, r9
	and	r8d, 15
	je	.L789
	lea	r11, -1[r10]
	mov	r8, r10
	cmp	r11, 6
	jbe	.L689
.L686:
	mov	rcx, QWORD PTR -8[rcx+r8]
	mov	QWORD PTR -8[rdx+r8], rcx
	mov	rdx, r8
	and	rdx, -8
	sub	rbx, rdx
	sub	rsi, rdx
	sub	r10, rdx
	and	r8d, 7
	je	.L789
.L689:
	movzx	r8d, BYTE PTR -1[rsi]
	mov	BYTE PTR -1[rbx], r8b
	cmp	r10, 1
	je	.L789
	movzx	eax, BYTE PTR -2[rsi]
	mov	BYTE PTR -2[rbx], al
	cmp	r10, 2
	je	.L789
	movzx	r9d, BYTE PTR -3[rsi]
	mov	BYTE PTR -3[rbx], r9b
	cmp	r10, 3
	je	.L789
	movzx	r11d, BYTE PTR -4[rsi]
	mov	BYTE PTR -4[rbx], r11b
	cmp	r10, 4
	je	.L789
	movzx	ecx, BYTE PTR -5[rsi]
	mov	BYTE PTR -5[rbx], cl
	cmp	r10, 5
	je	.L789
	movzx	edx, BYTE PTR -6[rsi]
	mov	BYTE PTR -6[rbx], dl
	cmp	r10, 6
	je	.L789
	movzx	esi, BYTE PTR -7[rsi]
	mov	BYTE PTR -7[rbx], sil
.L789:
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L683:
	je	.L789
	test	r8, r8
	je	.L789
	lea	rax, -1[r8]
	cmp	rax, 14
	jbe	.L704
	lea	r10, 1[rcx]
	mov	r9, rdx
	sub	r9, r10
	cmp	r9, 30
	jbe	.L704
	cmp	rax, 30
	jbe	.L705
	mov	rsi, r8
	xor	ebx, ebx
	and	rsi, -32
	.p2align 5
	.p2align 4
	.p2align 3
.L695:
	vmovdqu	ymm0, YMMWORD PTR [rcx+rbx]
	vmovdqu	YMMWORD PTR [rdx+rbx], ymm0
	add	rbx, 32
	cmp	rsi, rbx
	jne	.L695
	mov	rax, r8
	lea	r10, [rdx+rsi]
	lea	r11, [rcx+rsi]
	sub	rax, rsi
	cmp	r8, rsi
	je	.L787
	lea	r9, -1[rax]
	mov	r8, rax
	cmp	r9, 14
	jbe	.L790
	vzeroupper
.L694:
	vmovdqu	xmm1, XMMWORD PTR [rcx+rsi]
	vmovdqu	XMMWORD PTR [rdx+rsi], xmm1
	mov	rdx, r8
	and	rdx, -16
	add	r10, rdx
	add	r11, rdx
	sub	rax, rdx
	and	r8d, 15
	je	.L789
.L698:
	movzx	ecx, BYTE PTR [r11]
	mov	BYTE PTR [r10], cl
	cmp	rax, 1
	je	.L789
	movzx	r8d, BYTE PTR 1[r11]
	mov	BYTE PTR 1[r10], r8b
	cmp	rax, 2
	je	.L789
	movzx	esi, BYTE PTR 2[r11]
	mov	BYTE PTR 2[r10], sil
	cmp	rax, 3
	je	.L789
	movzx	ebx, BYTE PTR 3[r11]
	mov	BYTE PTR 3[r10], bl
	cmp	rax, 4
	je	.L789
	movzx	r9d, BYTE PTR 4[r11]
	mov	BYTE PTR 4[r10], r9b
	cmp	rax, 5
	je	.L789
	movzx	edx, BYTE PTR 5[r11]
	mov	BYTE PTR 5[r10], dl
	cmp	rax, 6
	je	.L789
	movzx	ecx, BYTE PTR 6[r11]
	mov	BYTE PTR 6[r10], cl
	cmp	rax, 7
	je	.L789
	movzx	r8d, BYTE PTR 7[r11]
	mov	BYTE PTR 7[r10], r8b
	cmp	rax, 8
	je	.L789
	movzx	esi, BYTE PTR 8[r11]
	mov	BYTE PTR 8[r10], sil
	cmp	rax, 9
	je	.L789
	movzx	ebx, BYTE PTR 9[r11]
	mov	BYTE PTR 9[r10], bl
	cmp	rax, 10
	je	.L789
	movzx	r9d, BYTE PTR 10[r11]
	mov	BYTE PTR 10[r10], r9b
	cmp	rax, 11
	je	.L789
	movzx	edx, BYTE PTR 11[r11]
	mov	BYTE PTR 11[r10], dl
	cmp	rax, 12
	je	.L789
	movzx	ecx, BYTE PTR 12[r11]
	mov	BYTE PTR 12[r10], cl
	cmp	rax, 13
	je	.L789
	movzx	r8d, BYTE PTR 13[r11]
	mov	BYTE PTR 13[r10], r8b
	cmp	rax, 14
	je	.L789
	movzx	r11d, BYTE PTR 14[r11]
	mov	BYTE PTR 14[r10], r11b
	jmp	.L789
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L791:
	sub	r11, 1
.L786:
	movzx	ebx, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[rdx+r8], bl
	mov	r8, r11
	test	r11, r11
	jne	.L791
	jmp	.L789
	.p2align 4,,10
	.p2align 3
.L704:
	xor	r10d, r10d
	.p2align 5
	.p2align 4
	.p2align 3
.L785:
	movzx	eax, BYTE PTR [rcx+r10]
	mov	BYTE PTR [rdx+r10], al
	add	r10, 1
	cmp	r8, r10
	jne	.L785
	jmp	.L789
.L790:
	vzeroupper
	jmp	.L698
.L702:
	mov	r10, r8
	jmp	.L686
.L705:
	mov	r10, rdx
	mov	r11, rcx
	mov	rax, r8
	xor	esi, esi
	jmp	.L694
.L787:
	vzeroupper
	jmp	.L789
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
	jmp	.L808
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L806:
	cmp	ecx, 32
	je	.L810
.L808:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L806
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L810:
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
	je	.L811
	mov	eax, ecx
	and	eax, 1
	jne	.L811
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L813:
	sar	ecx
	add	eax, 1
	test	cl, 1
	je	.L813
.L811:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinff
	.def	gl_isinff;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinff
gl_isinff:
	.seh_endprologue
	vmovss	xmm1, DWORD PTR .LC6[rip]
	mov	eax, 1
	vcomiss	xmm1, xmm0
	ja	.L818
	xor	eax, eax
	vcomiss	xmm0, DWORD PTR .LC7[rip]
	seta	al
.L818:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinfd
	.def	gl_isinfd;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfd
gl_isinfd:
	.seh_endprologue
	vmovsd	xmm1, QWORD PTR .LC8[rip]
	mov	eax, 1
	vcomisd	xmm1, xmm0
	ja	.L821
	xor	eax, eax
	vcomisd	xmm0, QWORD PTR .LC9[rip]
	seta	al
.L821:
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
	ja	.L827
	fld	TBYTE PTR .LC11[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L824
	.p2align 4,,10
	.p2align 3
.L827:
	fstp	st(0)
.L824:
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
	jp	.L830
	vaddss	xmm1, xmm0, xmm0
	vucomiss	xmm1, xmm0
	jp	.L837
	jne	.L837
.L830:
	ret
	.p2align 4,,10
	.p2align 3
.L837:
	vmovss	xmm2, DWORD PTR .LC12[rip]
	test	edx, edx
	jns	.L832
	vmovss	xmm2, DWORD PTR .LC13[rip]
.L832:
	test	dl, 1
	je	.L833
	.p2align 4
	.p2align 3
.L834:
	vmulss	xmm0, xmm0, xmm2
.L833:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L830
	vmulss	xmm2, xmm2, xmm2
	test	dl, 1
	jne	.L834
.L844:
	vmulss	xmm2, xmm2, xmm2
	mov	ecx, edx
	shr	ecx, 31
	add	edx, ecx
	sar	edx
	test	dl, 1
	jne	.L834
	jmp	.L844
	.seh_endproc
	.p2align 4
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	vucomisd	xmm0, xmm0
	jp	.L846
	vaddsd	xmm1, xmm0, xmm0
	vucomisd	xmm1, xmm0
	jp	.L853
	jne	.L853
.L846:
	ret
	.p2align 4,,10
	.p2align 3
.L853:
	vmovsd	xmm2, QWORD PTR .LC14[rip]
	test	edx, edx
	jns	.L848
	vmovsd	xmm2, QWORD PTR .LC15[rip]
.L848:
	test	dl, 1
	je	.L849
	.p2align 4
	.p2align 3
.L850:
	vmulsd	xmm0, xmm0, xmm2
.L849:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L846
	vmulsd	xmm2, xmm2, xmm2
	test	dl, 1
	jne	.L850
.L860:
	vmulsd	xmm2, xmm2, xmm2
	mov	ecx, edx
	shr	ecx, 31
	add	edx, ecx
	sar	edx
	test	dl, 1
	jne	.L850
	jmp	.L860
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
	jp	.L862
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L869
	jne	.L869
	jmp	.L862
	.p2align 4,,10
	.p2align 3
.L878:
	fstp	st(0)
.L862:
	fstp	TBYTE PTR [rax]
	ret
	.p2align 4,,10
	.p2align 3
.L869:
	test	r8d, r8d
	js	.L876
	fld	DWORD PTR .LC12[rip]
.L864:
	test	r8b, 1
	je	.L865
	.p2align 4
	.p2align 3
.L866:
	fmul	st(1), st
.L865:
	mov	edx, r8d
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	je	.L878
	fmul	st, st(0)
	test	r8b, 1
	jne	.L866
.L877:
	mov	ecx, r8d
	fmul	st, st(0)
	shr	ecx, 31
	add	r8d, ecx
	sar	r8d
	test	r8b, 1
	jne	.L866
	jmp	.L877
	.p2align 4,,10
	.p2align 3
.L876:
	fld	DWORD PTR .LC13[rip]
	jmp	.L864
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
	je	.L880
	lea	rax, -1[r8]
	cmp	rax, 30
	jbe	.L886
	mov	r9, r8
	xor	ebx, ebx
	and	r9, -32
	.p2align 5
	.p2align 4
	.p2align 3
.L882:
	vmovdqu	ymm0, YMMWORD PTR [rcx+rbx]
	vxorps	ymm1, ymm0, YMMWORD PTR [rdx+rbx]
	vmovdqu	YMMWORD PTR [rcx+rbx], ymm1
	add	rbx, 32
	cmp	rbx, r9
	jne	.L882
	mov	r11, r8
	lea	rax, [rcx+r9]
	lea	r10, [rdx+r9]
	sub	r11, r9
	cmp	r8, r9
	je	.L937
	vzeroupper
.L881:
	sub	r8, r9
	lea	rbx, -1[r8]
	cmp	rbx, 14
	jbe	.L884
	lea	rbx, [rcx+r9]
	vmovdqu	xmm2, XMMWORD PTR [rbx]
	vpxor	xmm3, xmm2, XMMWORD PTR [rdx+r9]
	mov	rdx, r8
	and	rdx, -16
	add	rax, rdx
	add	r10, rdx
	sub	r11, rdx
	and	r8d, 15
	vmovdqu	XMMWORD PTR [rbx], xmm3
	je	.L880
.L884:
	movzx	r8d, BYTE PTR [r10]
	xor	BYTE PTR [rax], r8b
	cmp	r11, 1
	je	.L880
	movzx	r9d, BYTE PTR 1[r10]
	xor	BYTE PTR 1[rax], r9b
	cmp	r11, 2
	je	.L880
	movzx	ebx, BYTE PTR 2[r10]
	xor	BYTE PTR 2[rax], bl
	cmp	r11, 3
	je	.L880
	movzx	edx, BYTE PTR 3[r10]
	xor	BYTE PTR 3[rax], dl
	cmp	r11, 4
	je	.L880
	movzx	r8d, BYTE PTR 4[r10]
	xor	BYTE PTR 4[rax], r8b
	cmp	r11, 5
	je	.L880
	movzx	r9d, BYTE PTR 5[r10]
	xor	BYTE PTR 5[rax], r9b
	cmp	r11, 6
	je	.L880
	movzx	ebx, BYTE PTR 6[r10]
	xor	BYTE PTR 6[rax], bl
	cmp	r11, 7
	je	.L880
	movzx	edx, BYTE PTR 7[r10]
	xor	BYTE PTR 7[rax], dl
	cmp	r11, 8
	je	.L880
	movzx	r8d, BYTE PTR 8[r10]
	xor	BYTE PTR 8[rax], r8b
	cmp	r11, 9
	je	.L880
	movzx	r9d, BYTE PTR 9[r10]
	xor	BYTE PTR 9[rax], r9b
	cmp	r11, 10
	je	.L880
	movzx	ebx, BYTE PTR 10[r10]
	xor	BYTE PTR 10[rax], bl
	cmp	r11, 11
	je	.L880
	movzx	edx, BYTE PTR 11[r10]
	xor	BYTE PTR 11[rax], dl
	cmp	r11, 12
	je	.L880
	movzx	r8d, BYTE PTR 12[r10]
	xor	BYTE PTR 12[rax], r8b
	cmp	r11, 13
	je	.L880
	movzx	r9d, BYTE PTR 13[r10]
	xor	BYTE PTR 13[rax], r9b
	cmp	r11, 14
	je	.L880
	movzx	r10d, BYTE PTR 14[r10]
	xor	BYTE PTR 14[rax], r10b
.L880:
	mov	rax, rcx
	pop	rbx
	ret
.L886:
	mov	rax, rcx
	mov	r10, rdx
	mov	r11, r8
	xor	r9d, r9d
	jmp	.L881
.L937:
	vzeroupper
	jmp	.L880
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
	je	.L939
	.p2align 4
	.p2align 4
	.p2align 3
.L940:
	add	r9, 1
	cmp	BYTE PTR [r9], 0
	jne	.L940
.L939:
	test	r8, r8
	jne	.L941
	jmp	.L942
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L943:
	add	rdx, 1
	add	r9, 1
	sub	r8, 1
	je	.L942
.L941:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [r9], r10b
	test	r10b, r10b
	jne	.L943
	ret
	.p2align 4,,10
	.p2align 3
.L942:
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
	je	.L952
.L953:
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L955
.L952:
	ret
	.p2align 4,,10
	.p2align 3
.L955:
	add	rax, 1
	cmp	rdx, rax
	jne	.L953
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
	je	.L966
.L962:
	mov	r8, rdx
	jmp	.L965
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L964:
	add	r8, 1
	cmp	r9b, r10b
	je	.L963
.L965:
	movzx	r9d, BYTE PTR [r8]
	test	r9b, r9b
	jne	.L964
	movzx	r10d, BYTE PTR 1[rax]
	add	rax, 1
	test	r10b, r10b
	jne	.L962
.L966:
	xor	eax, eax
.L963:
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
.L971:
	movsx	r9d, BYTE PTR [rcx]
	cmp	r9d, edx
	cmove	r8, rcx
	add	rcx, 1
	test	r9b, r9b
	jne	.L971
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
	je	.L985
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L975:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L975
	mov	r11, rcx
	sub	rax, rsi
	je	.L973
	lea	rbx, -1[rsi+rax]
	jmp	.L995
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L997:
	add	rcx, 1
	test	r8b, r8b
	je	.L996
.L995:
	movzx	r8d, BYTE PTR [rcx]
	cmp	r8b, dl
	jne	.L997
	mov	r8d, edx
	mov	rax, rsi
	mov	r10, rcx
	jmp	.L977
	.p2align 4,,10
	.p2align 3
.L998:
	test	r9b, r9b
	setne	r11b
	cmp	r9b, r8b
	sete	r9b
	test	r11b, r9b
	je	.L978
	movzx	r8d, BYTE PTR 1[r10]
	add	r10, 1
	add	rax, 1
	test	r8b, r8b
	je	.L978
.L977:
	movzx	r9d, BYTE PTR [rax]
	cmp	rax, rbx
	jne	.L998
.L978:
	cmp	r8b, BYTE PTR [rax]
	je	.L985
	add	rcx, 1
	jmp	.L995
	.p2align 4,,10
	.p2align 3
.L996:
	xor	r11d, r11d
.L973:
	mov	rax, r11
	pop	rbx
	pop	rsi
	ret
.L985:
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
	ja	.L1009
	vcomisd	xmm0, xmm2
	jbe	.L1003
	vcomisd	xmm2, xmm1
	ja	.L1002
.L1003:
	ret
	.p2align 4,,10
	.p2align 3
.L1009:
	vcomisd	xmm1, xmm2
	jbe	.L1003
.L1002:
	vxorpd	xmm0, xmm0, XMMWORD PTR .LC16[rip]
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
	je	.L1010
	cmp	rdx, r9
	jb	.L1021
	sub	rdx, r9
	add	rdx, rcx
	jc	.L1021
	movzx	r11d, BYTE PTR [r8]
	jmp	.L1016
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1020:
	mov	rax, rcx
.L1012:
	cmp	rdx, rax
	jb	.L1021
.L1016:
	lea	rcx, 1[rax]
	cmp	BYTE PTR [rax], r11b
	jne	.L1020
	cmp	r9, 1
	je	.L1010
.L1015:
	mov	r10d, 1
	jmp	.L1013
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1014:
	add	r10, 1
	cmp	r9, r10
	je	.L1010
.L1013:
	movzx	ebx, BYTE PTR [r8+r10]
	cmp	BYTE PTR [rax+r10], bl
	je	.L1014
	cmp	rdx, rcx
	jb	.L1021
	lea	rax, 1[rcx]
	cmp	r11b, BYTE PTR [rcx]
	jne	.L1012
	mov	r10, rcx
	mov	rcx, rax
	mov	rax, r10
	jmp	.L1015
	.p2align 4,,10
	.p2align 3
.L1021:
	xor	eax, eax
.L1010:
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
	je	.L1031
	call	memmove
	mov	rcx, rax
.L1031:
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
	ja	.L1059
	vmovsd	xmm5, QWORD PTR .LC19[rip]
	xor	ecx, ecx
	vcomisd	xmm0, xmm5
	jb	.L1060
.L1038:
	vmovsd	xmm2, QWORD PTR .LC15[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1045:
	vmulsd	xmm0, xmm0, xmm2
	add	eax, 1
	vcomisd	xmm0, xmm5
	jnb	.L1045
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L1035
.L1062:
	vxorpd	xmm0, xmm0, XMMWORD PTR .LC16[rip]
.L1035:
	ret
	.p2align 4,,10
	.p2align 3
.L1060:
	vmovsd	xmm1, QWORD PTR .LC15[rip]
	vcomisd	xmm1, xmm0
	jbe	.L1041
	vucomisd	xmm0, xmm2
	jp	.L1051
	jne	.L1051
.L1041:
	mov	DWORD PTR [rdx], 0
	ret
	.p2align 4,,10
	.p2align 3
.L1059:
	vmovsd	xmm4, QWORD PTR .LC17[rip]
	vxorpd	xmm3, xmm0, XMMWORD PTR .LC16[rip]
	vcomisd	xmm4, xmm0
	jb	.L1061
	vmovsd	xmm5, QWORD PTR .LC19[rip]
	vmovapd	xmm0, xmm3
	mov	ecx, 1
	jmp	.L1038
	.p2align 4,,10
	.p2align 3
.L1061:
	vcomisd	xmm0, QWORD PTR .LC18[rip]
	jbe	.L1041
	vmovsd	xmm1, QWORD PTR .LC15[rip]
	mov	ecx, 1
.L1039:
	vmovapd	xmm0, xmm3
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1047:
	vaddsd	xmm0, xmm0, xmm0
	sub	eax, 1
	vcomisd	xmm1, xmm0
	ja	.L1047
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	jne	.L1062
	jmp	.L1035
.L1051:
	vmovapd	xmm3, xmm0
	xor	ecx, ecx
	jmp	.L1039
	.seh_endproc
	.p2align 4
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	xor	r8d, r8d
	test	rcx, rcx
	je	.L1063
	.p2align 5
	.p2align 4
	.p2align 3
.L1065:
	mov	rax, rcx
	and	eax, 1
	neg	rax
	and	rax, rdx
	add	rdx, rdx
	add	r8, rax
	shr	rcx
	jne	.L1065
.L1063:
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
	jb	.L1069
	jmp	.L1092
	.p2align 4,,10
	.p2align 3
.L1072:
	add	edx, edx
	add	r9d, r9d
	cmp	edx, ecx
	jnb	.L1071
	test	r9d, r9d
	je	.L1071
.L1069:
	test	edx, edx
	jns	.L1072
.L1073:
	xor	eax, eax
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L1075:
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
	jne	.L1075
.L1074:
	test	r8, r8
	cmovne	eax, ecx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1071:
	xor	eax, eax
	test	r9d, r9d
	jne	.L1073
	test	r8, r8
	cmovne	eax, ecx
	pop	rbx
	ret
.L1092:
	mov	eax, ecx
	sub	eax, edx
	cmp	ecx, edx
	setnb	dl
	cmovnb	ecx, eax
	movzx	eax, dl
	jmp	.L1074
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
	je	.L1095
	movsx	ecx, al
	sal	ecx, 8
	bsr	r8d, ecx
	xor	r8d, 31
	lea	r9d, -1[r8]
.L1095:
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
	je	.L1098
	bsr	rcx, rax
	xor	rcx, 63
	lea	r8d, -1[rcx]
.L1098:
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
	je	.L1101
	.p2align 5
	.p2align 4
	.p2align 3
.L1103:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L1103
.L1101:
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
	mov	r9d, r8d
	shr	ebx, 3
	and	r9d, -8
	cmp	rcx, rdx
	jb	.L1111
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L1196
.L1111:
	test	ebx, ebx
	je	.L1197
	lea	edi, -1[rbx]
	cmp	edi, 3
	jbe	.L1113
	lea	r11, 8[rdx]
	mov	rsi, rcx
	sub	rsi, r11
	cmp	rsi, 16
	jbe	.L1113
	mov	edi, r8d
	xor	eax, eax
	shr	edi, 5
	mov	r10d, edi
	sal	r10, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1114:
	vmovdqu	ymm1, YMMWORD PTR [rdx+rax]
	vmovdqu	YMMWORD PTR [rcx+rax], ymm1
	add	rax, 32
	cmp	r10, rax
	jne	.L1114
	lea	esi, 0[0+rdi*4]
	cmp	ebx, esi
	je	.L1117
	mov	edi, esi
	lea	r10d, 1[rsi]
	mov	r11, QWORD PTR [rdx+rdi*8]
	mov	QWORD PTR [rcx+rdi*8], r11
	cmp	r10d, ebx
	jnb	.L1117
	mov	rax, QWORD PTR [rdx+r10*8]
	add	esi, 2
	mov	QWORD PTR [rcx+r10*8], rax
	cmp	esi, ebx
	jnb	.L1117
	mov	rbx, QWORD PTR [rdx+rsi*8]
	mov	QWORD PTR [rcx+rsi*8], rbx
.L1117:
	cmp	r9d, r8d
	jnb	.L1194
	mov	esi, r8d
	mov	r10d, r9d
	sub	esi, r9d
	lea	eax, -1[rsi]
	cmp	eax, 14
	jbe	.L1178
	lea	rbx, [rcx+r10]
	lea	rdi, 1[rdx+r10]
	mov	r11, rbx
	sub	r11, rdi
	cmp	r11, 30
	jbe	.L1178
	cmp	eax, 30
	jbe	.L1134
	mov	r11d, esi
	lea	rdi, [rdx+r10]
	xor	eax, eax
	shr	r11d, 5
	sal	r11, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1119:
	vmovdqu	ymm2, YMMWORD PTR [rdi+rax]
	vmovdqu	YMMWORD PTR [rbx+rax], ymm2
	add	rax, 32
	cmp	r11, rax
	jne	.L1119
	mov	eax, esi
	and	eax, -32
	add	r9d, eax
	test	sil, 31
	je	.L1194
	sub	esi, eax
	lea	ebx, -1[rsi]
	cmp	ebx, 14
	jbe	.L1121
.L1118:
	add	rax, r10
	mov	r10d, esi
	and	r10d, -16
	vmovdqu	xmm3, XMMWORD PTR [rdx+rax]
	add	r9d, r10d
	and	esi, 15
	vmovdqu	XMMWORD PTR [rcx+rax], xmm3
	je	.L1194
.L1121:
	mov	esi, r9d
	lea	r11d, 1[r9]
	movzx	edi, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1194
	movzx	eax, BYTE PTR [rdx+r11]
	lea	ebx, 2[r9]
	mov	BYTE PTR [rcx+r11], al
	cmp	ebx, r8d
	jnb	.L1194
	movzx	r10d, BYTE PTR [rdx+rbx]
	lea	esi, 3[r9]
	mov	BYTE PTR [rcx+rbx], r10b
	cmp	esi, r8d
	jnb	.L1194
	movzx	edi, BYTE PTR [rdx+rsi]
	lea	r11d, 4[r9]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1194
	movzx	eax, BYTE PTR [rdx+r11]
	lea	ebx, 5[r9]
	mov	BYTE PTR [rcx+r11], al
	cmp	ebx, r8d
	jnb	.L1194
	movzx	r10d, BYTE PTR [rdx+rbx]
	lea	esi, 6[r9]
	mov	BYTE PTR [rcx+rbx], r10b
	cmp	esi, r8d
	jnb	.L1194
	movzx	edi, BYTE PTR [rdx+rsi]
	lea	r11d, 7[r9]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1194
	movzx	eax, BYTE PTR [rdx+r11]
	lea	ebx, 8[r9]
	mov	BYTE PTR [rcx+r11], al
	cmp	ebx, r8d
	jnb	.L1194
	movzx	r10d, BYTE PTR [rdx+rbx]
	lea	esi, 9[r9]
	mov	BYTE PTR [rcx+rbx], r10b
	cmp	esi, r8d
	jnb	.L1194
	movzx	edi, BYTE PTR [rdx+rsi]
	lea	r11d, 10[r9]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1194
	movzx	eax, BYTE PTR [rdx+r11]
	lea	ebx, 11[r9]
	mov	BYTE PTR [rcx+r11], al
	cmp	ebx, r8d
	jnb	.L1194
	movzx	r10d, BYTE PTR [rdx+rbx]
	lea	esi, 12[r9]
	mov	BYTE PTR [rcx+rbx], r10b
	cmp	esi, r8d
	jnb	.L1194
	movzx	edi, BYTE PTR [rdx+rsi]
	lea	r11d, 13[r9]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1194
	movzx	eax, BYTE PTR [rdx+r11]
	add	r9d, 14
	mov	BYTE PTR [rcx+r11], al
	cmp	r9d, r8d
	jnb	.L1194
	movzx	r8d, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rcx+r9], r8b
	vzeroupper
	jmp	.L1195
	.p2align 4,,10
	.p2align 3
.L1194:
	vzeroupper
.L1195:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1196:
	lea	r10d, -1[r8]
	test	r8d, r8d
	je	.L1195
	mov	edi, r10d
	cmp	r10d, 6
	jbe	.L1125
	mov	rsi, rcx
	sub	rsi, rdx
	add	rsi, 15
	cmp	rsi, 14
	jbe	.L1125
	cmp	r10d, 14
	jbe	.L1135
	mov	esi, r8d
	lea	rbx, -15[rdi]
	xor	eax, eax
	shr	esi, 4
	lea	r9, [rdx+rbx]
	add	rbx, rcx
	neg	rsi
	sal	rsi, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1127:
	vmovdqu	xmm0, XMMWORD PTR [r9+rax]
	vmovdqu	XMMWORD PTR [rbx+rax], xmm0
	sub	rax, 16
	cmp	rax, rsi
	jne	.L1127
	mov	r11d, r8d
	and	r11d, -16
	sub	r10d, r11d
	test	r8b, 15
	je	.L1195
	sub	r8d, r11d
	lea	ebx, -1[r8]
	cmp	ebx, 6
	jbe	.L1130
.L1126:
	lea	rdi, -7[rdi]
	mov	r9d, r8d
	sub	rdi, r11
	and	r9d, -8
	mov	r11, QWORD PTR [rdx+rdi]
	sub	r10d, r9d
	and	r8d, 7
	mov	QWORD PTR [rcx+rdi], r11
	je	.L1195
.L1130:
	mov	esi, r10d
	lea	eax, -1[r10]
	movzx	r8d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r8b
	test	r10d, r10d
	je	.L1195
	mov	ebx, eax
	lea	r11d, -2[r10]
	movzx	edi, BYTE PTR [rdx+rbx]
	mov	BYTE PTR [rcx+rbx], dil
	test	eax, eax
	je	.L1195
	mov	esi, r11d
	lea	eax, -3[r10]
	movzx	r9d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r9b
	test	r11d, r11d
	je	.L1195
	mov	r8d, eax
	lea	edi, -4[r10]
	movzx	ebx, BYTE PTR [rdx+r8]
	mov	BYTE PTR [rcx+r8], bl
	test	eax, eax
	je	.L1195
	mov	r11d, edi
	lea	r9d, -5[r10]
	movzx	esi, BYTE PTR [rdx+r11]
	mov	BYTE PTR [rcx+r11], sil
	test	edi, edi
	je	.L1195
	mov	eax, r9d
	lea	r10d, -6[r10]
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	test	r9d, r9d
	je	.L1195
	movzx	edx, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], dl
	jmp	.L1195
.L1134:
	xor	eax, eax
	jmp	.L1118
	.p2align 4,,10
	.p2align 3
.L1113:
	lea	esi, 0[0+rbx*8]
	xor	edi, edi
	.p2align 5
	.p2align 4
	.p2align 3
.L1116:
	mov	r11, QWORD PTR [rdx+rdi]
	mov	QWORD PTR [rcx+rdi], r11
	add	rdi, 8
	cmp	rdi, rsi
	jne	.L1116
	jmp	.L1117
	.p2align 4,,10
	.p2align 3
.L1197:
	mov	r10d, r9d
	test	r8d, r8d
	je	.L1195
	.p2align 5
	.p2align 4
	.p2align 3
.L1123:
	movzx	r9d, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], r9b
	add	r10, 1
	cmp	r10d, r8d
	jb	.L1123
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1178:
	vzeroupper
	jmp	.L1123
.L1125:
	mov	r9, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L1132:
	movzx	ebx, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rcx+r9], bl
	sub	r9, 1
	jnb	.L1132
	jmp	.L1195
.L1135:
	xor	r11d, r11d
	jmp	.L1126
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
	mov	r10d, r8d
	shr	r10d
	cmp	rcx, rdx
	jb	.L1202
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L1264
.L1202:
	test	r10d, r10d
	je	.L1201
	lea	eax, -1[r10]
	cmp	eax, 6
	jbe	.L1205
	lea	rbx, 2[rdx]
	mov	rsi, rcx
	sub	rsi, rbx
	cmp	rsi, 28
	jbe	.L1205
	cmp	eax, 14
	jbe	.L1222
	mov	r11d, r8d
	xor	eax, eax
	shr	r11d, 5
	mov	r9d, r11d
	sal	r9, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1207:
	vmovdqu	ymm1, YMMWORD PTR [rdx+rax]
	vmovdqu	YMMWORD PTR [rcx+rax], ymm1
	add	rax, 32
	cmp	rax, r9
	jne	.L1207
	mov	ebx, r11d
	sal	ebx, 4
	cmp	r10d, ebx
	je	.L1260
	mov	esi, r10d
	sub	esi, ebx
	lea	r11d, -1[rsi]
	cmp	r11d, 6
	jbe	.L1265
	vzeroupper
.L1206:
	mov	r9d, ebx
	mov	eax, esi
	and	eax, -8
	vmovdqu	xmm2, XMMWORD PTR [rdx+r9*2]
	add	ebx, eax
	and	esi, 7
	vmovdqu	XMMWORD PTR [rcx+r9*2], xmm2
	je	.L1201
.L1209:
	mov	esi, ebx
	lea	r9d, 1[rbx]
	movzx	r11d, WORD PTR [rdx+rsi*2]
	mov	WORD PTR [rcx+rsi*2], r11w
	cmp	r9d, r10d
	jnb	.L1201
	movzx	eax, WORD PTR [rdx+r9*2]
	lea	esi, 2[rbx]
	mov	WORD PTR [rcx+r9*2], ax
	cmp	esi, r10d
	jnb	.L1201
	movzx	r11d, WORD PTR [rdx+rsi*2]
	lea	r9d, 3[rbx]
	mov	WORD PTR [rcx+rsi*2], r11w
	cmp	r9d, r10d
	jnb	.L1201
	movzx	eax, WORD PTR [rdx+r9*2]
	lea	esi, 4[rbx]
	mov	WORD PTR [rcx+r9*2], ax
	cmp	esi, r10d
	jnb	.L1201
	movzx	r11d, WORD PTR [rdx+rsi*2]
	lea	r9d, 5[rbx]
	mov	WORD PTR [rcx+rsi*2], r11w
	cmp	r9d, r10d
	jnb	.L1201
	movzx	eax, WORD PTR [rdx+r9*2]
	add	ebx, 6
	mov	WORD PTR [rcx+r9*2], ax
	cmp	ebx, r10d
	jnb	.L1201
	movzx	r10d, WORD PTR [rdx+rbx*2]
	mov	WORD PTR [rcx+rbx*2], r10w
.L1201:
	test	r8b, 1
	je	.L1262
.L1266:
	lea	r8d, -1[r8]
	movzx	edx, BYTE PTR [rdx+r8]
	mov	BYTE PTR [rcx+r8], dl
.L1262:
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1264:
	lea	r10d, -1[r8]
	test	r8d, r8d
	je	.L1262
	mov	r9d, r10d
	cmp	r10d, 6
	jbe	.L1220
	mov	rbx, rcx
	sub	rbx, rdx
	add	rbx, 15
	cmp	rbx, 14
	jbe	.L1220
	cmp	r10d, 14
	jbe	.L1223
	mov	r11d, r8d
	lea	rbx, -15[r9]
	xor	eax, eax
	shr	r11d, 4
	lea	rsi, [rdx+rbx]
	add	rbx, rcx
	neg	r11
	sal	r11, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1216:
	vmovdqu	xmm0, XMMWORD PTR [rsi+rax]
	vmovdqu	XMMWORD PTR [rbx+rax], xmm0
	sub	rax, 16
	cmp	rax, r11
	jne	.L1216
	mov	r11d, r8d
	and	r11d, -16
	sub	r10d, r11d
	test	r8b, 15
	je	.L1262
	sub	r8d, r11d
	lea	ebx, -1[r8]
	cmp	ebx, 6
	jbe	.L1218
.L1215:
	lea	rsi, -7[r9]
	sub	rsi, r11
	mov	r11d, r8d
	and	r11d, -8
	mov	r9, QWORD PTR [rdx+rsi]
	sub	r10d, r11d
	and	r8d, 7
	mov	QWORD PTR [rcx+rsi], r9
	je	.L1262
.L1218:
	mov	eax, r10d
	lea	ebx, -1[r10]
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	test	r10d, r10d
	je	.L1262
	mov	esi, ebx
	lea	r11d, -2[r10]
	movzx	r9d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r9b
	test	ebx, ebx
	je	.L1262
	mov	eax, r11d
	lea	ebx, -3[r10]
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	test	r11d, r11d
	je	.L1262
	mov	esi, ebx
	lea	r11d, -4[r10]
	movzx	r9d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r9b
	test	ebx, ebx
	je	.L1262
	mov	eax, r11d
	lea	ebx, -5[r10]
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	test	r11d, r11d
	je	.L1262
	mov	esi, ebx
	lea	r10d, -6[r10]
	movzx	r9d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r9b
	test	ebx, ebx
	je	.L1262
	movzx	edx, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], dl
	jmp	.L1262
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1220:
	movzx	r11d, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rcx+r9], r11b
	sub	r9, 1
	jb	.L1262
	movzx	r11d, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rcx+r9], r11b
	sub	r9, 1
	jnb	.L1220
	jmp	.L1262
.L1222:
	mov	esi, r10d
	xor	ebx, ebx
	jmp	.L1206
	.p2align 4,,10
	.p2align 3
.L1205:
	add	r10d, r10d
	xor	esi, esi
	mov	ebx, r10d
	.p2align 5
	.p2align 4
	.p2align 3
.L1211:
	movzx	r11d, WORD PTR [rdx+rsi]
	mov	WORD PTR [rcx+rsi], r11w
	add	rsi, 2
	cmp	rsi, rbx
	jne	.L1211
	test	r8b, 1
	je	.L1262
	jmp	.L1266
.L1265:
	vzeroupper
	jmp	.L1209
.L1260:
	vzeroupper
	jmp	.L1201
.L1223:
	xor	r11d, r11d
	jmp	.L1215
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
	mov	r9d, r8d
	shr	ebx, 2
	and	r9d, -4
	cmp	rcx, rdx
	jb	.L1272
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L1364
.L1272:
	test	ebx, ebx
	je	.L1365
	lea	edi, -1[rbx]
	cmp	edi, 2
	jbe	.L1274
	lea	r11, 4[rdx]
	mov	rsi, rcx
	sub	rsi, r11
	cmp	rsi, 24
	jbe	.L1274
	cmp	edi, 6
	jbe	.L1298
	mov	edi, r8d
	xor	esi, esi
	shr	edi, 5
	mov	r11d, edi
	sal	r11, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1276:
	vmovdqu	ymm1, YMMWORD PTR [rdx+rsi]
	vmovdqu	YMMWORD PTR [rcx+rsi], ymm1
	add	rsi, 32
	cmp	r11, rsi
	jne	.L1276
	lea	eax, 0[0+rdi*8]
	cmp	ebx, eax
	je	.L1281
	mov	r10d, ebx
	sub	r10d, eax
	lea	edi, -1[r10]
	cmp	edi, 2
	jbe	.L1278
.L1275:
	mov	r11d, eax
	mov	esi, r10d
	and	esi, -4
	vmovdqu	xmm2, XMMWORD PTR [rdx+r11*4]
	add	eax, esi
	and	r10d, 3
	vmovdqu	XMMWORD PTR [rcx+r11*4], xmm2
	je	.L1281
.L1278:
	mov	r10d, eax
	lea	esi, 1[rax]
	mov	edi, DWORD PTR [rdx+r10*4]
	mov	DWORD PTR [rcx+r10*4], edi
	cmp	esi, ebx
	jnb	.L1281
	mov	r11d, DWORD PTR [rdx+rsi*4]
	add	eax, 2
	mov	DWORD PTR [rcx+rsi*4], r11d
	cmp	eax, ebx
	jnb	.L1281
	mov	ebx, DWORD PTR [rdx+rax*4]
	mov	DWORD PTR [rcx+rax*4], ebx
.L1281:
	cmp	r9d, r8d
	jnb	.L1362
	mov	esi, r8d
	mov	r10d, r9d
	sub	esi, r9d
	lea	eax, -1[rsi]
	cmp	eax, 14
	jbe	.L1346
	lea	rbx, [rcx+r10]
	lea	rdi, 1[rdx+r10]
	mov	r11, rbx
	sub	r11, rdi
	cmp	r11, 30
	jbe	.L1346
	cmp	eax, 30
	jbe	.L1299
	mov	r11d, esi
	lea	rdi, [rdx+r10]
	xor	eax, eax
	shr	r11d, 5
	sal	r11, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1283:
	vmovdqu	ymm3, YMMWORD PTR [rdi+rax]
	vmovdqu	YMMWORD PTR [rbx+rax], ymm3
	add	rax, 32
	cmp	r11, rax
	jne	.L1283
	mov	eax, esi
	and	eax, -32
	add	r9d, eax
	test	sil, 31
	je	.L1362
	sub	esi, eax
	lea	ebx, -1[rsi]
	cmp	ebx, 14
	jbe	.L1285
.L1282:
	add	rax, r10
	mov	r10d, esi
	and	r10d, -16
	vmovdqu	xmm4, XMMWORD PTR [rdx+rax]
	add	r9d, r10d
	and	esi, 15
	vmovdqu	XMMWORD PTR [rcx+rax], xmm4
	je	.L1362
.L1285:
	mov	esi, r9d
	lea	r11d, 1[r9]
	movzx	edi, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1362
	movzx	eax, BYTE PTR [rdx+r11]
	lea	ebx, 2[r9]
	mov	BYTE PTR [rcx+r11], al
	cmp	ebx, r8d
	jnb	.L1362
	movzx	r10d, BYTE PTR [rdx+rbx]
	lea	esi, 3[r9]
	mov	BYTE PTR [rcx+rbx], r10b
	cmp	esi, r8d
	jnb	.L1362
	movzx	edi, BYTE PTR [rdx+rsi]
	lea	r11d, 4[r9]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1362
	movzx	eax, BYTE PTR [rdx+r11]
	lea	ebx, 5[r9]
	mov	BYTE PTR [rcx+r11], al
	cmp	ebx, r8d
	jnb	.L1362
	movzx	r10d, BYTE PTR [rdx+rbx]
	lea	esi, 6[r9]
	mov	BYTE PTR [rcx+rbx], r10b
	cmp	esi, r8d
	jnb	.L1362
	movzx	edi, BYTE PTR [rdx+rsi]
	lea	r11d, 7[r9]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1362
	movzx	eax, BYTE PTR [rdx+r11]
	lea	ebx, 8[r9]
	mov	BYTE PTR [rcx+r11], al
	cmp	ebx, r8d
	jnb	.L1362
	movzx	r10d, BYTE PTR [rdx+rbx]
	lea	esi, 9[r9]
	mov	BYTE PTR [rcx+rbx], r10b
	cmp	esi, r8d
	jnb	.L1362
	movzx	edi, BYTE PTR [rdx+rsi]
	lea	r11d, 10[r9]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1362
	movzx	eax, BYTE PTR [rdx+r11]
	lea	ebx, 11[r9]
	mov	BYTE PTR [rcx+r11], al
	cmp	ebx, r8d
	jnb	.L1362
	movzx	r10d, BYTE PTR [rdx+rbx]
	lea	esi, 12[r9]
	mov	BYTE PTR [rcx+rbx], r10b
	cmp	esi, r8d
	jnb	.L1362
	movzx	edi, BYTE PTR [rdx+rsi]
	lea	r11d, 13[r9]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1362
	movzx	eax, BYTE PTR [rdx+r11]
	add	r9d, 14
	mov	BYTE PTR [rcx+r11], al
	cmp	r9d, r8d
	jnb	.L1362
	movzx	r8d, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rcx+r9], r8b
	vzeroupper
	jmp	.L1363
	.p2align 4,,10
	.p2align 3
.L1364:
	lea	r10d, -1[r8]
	test	r8d, r8d
	je	.L1363
	mov	edi, r10d
	cmp	r10d, 6
	jbe	.L1289
	mov	rsi, rcx
	sub	rsi, rdx
	add	rsi, 15
	cmp	rsi, 14
	jbe	.L1289
	cmp	r10d, 14
	jbe	.L1300
	mov	esi, r8d
	lea	rbx, -15[rdi]
	xor	eax, eax
	shr	esi, 4
	lea	r9, [rdx+rbx]
	add	rbx, rcx
	neg	rsi
	sal	rsi, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1291:
	vmovdqu	xmm0, XMMWORD PTR [r9+rax]
	vmovdqu	XMMWORD PTR [rbx+rax], xmm0
	sub	rax, 16
	cmp	rax, rsi
	jne	.L1291
	mov	r11d, r8d
	and	r11d, -16
	sub	r10d, r11d
	test	r8b, 15
	je	.L1363
	sub	r8d, r11d
	lea	ebx, -1[r8]
	cmp	ebx, 6
	jbe	.L1294
.L1290:
	lea	rdi, -7[rdi]
	mov	r9d, r8d
	sub	rdi, r11
	and	r9d, -8
	mov	r11, QWORD PTR [rdx+rdi]
	sub	r10d, r9d
	and	r8d, 7
	mov	QWORD PTR [rcx+rdi], r11
	je	.L1363
.L1294:
	mov	esi, r10d
	lea	eax, -1[r10]
	movzx	r8d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r8b
	test	r10d, r10d
	je	.L1363
	mov	ebx, eax
	lea	r11d, -2[r10]
	movzx	edi, BYTE PTR [rdx+rbx]
	mov	BYTE PTR [rcx+rbx], dil
	test	eax, eax
	je	.L1363
	mov	esi, r11d
	lea	eax, -3[r10]
	movzx	r9d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r9b
	test	r11d, r11d
	je	.L1363
	mov	r8d, eax
	lea	edi, -4[r10]
	movzx	ebx, BYTE PTR [rdx+r8]
	mov	BYTE PTR [rcx+r8], bl
	test	eax, eax
	je	.L1363
	mov	r11d, edi
	lea	r9d, -5[r10]
	movzx	esi, BYTE PTR [rdx+r11]
	mov	BYTE PTR [rcx+r11], sil
	test	edi, edi
	je	.L1363
	mov	eax, r9d
	lea	r10d, -6[r10]
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	test	r9d, r9d
	je	.L1363
	movzx	edx, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], dl
	jmp	.L1363
	.p2align 4,,10
	.p2align 3
.L1362:
	vzeroupper
.L1363:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
.L1298:
	mov	r10d, ebx
	xor	eax, eax
	jmp	.L1275
	.p2align 4,,10
	.p2align 3
.L1274:
	lea	edi, 0[0+rbx*4]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L1280:
	mov	r10d, DWORD PTR [rdx+rax]
	mov	DWORD PTR [rcx+rax], r10d
	add	rax, 4
	cmp	rdi, rax
	jne	.L1280
	jmp	.L1281
	.p2align 4,,10
	.p2align 3
.L1365:
	mov	r10d, r9d
	test	r8d, r8d
	je	.L1363
	.p2align 5
	.p2align 4
	.p2align 3
.L1287:
	movzx	r9d, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], r9b
	add	r10, 1
	cmp	r10d, r8d
	jb	.L1287
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1346:
	vzeroupper
	jmp	.L1287
.L1299:
	xor	eax, eax
	jmp	.L1282
.L1289:
	mov	r9, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L1296:
	movzx	ebx, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rcx+r9], bl
	sub	r9, 1
	jnb	.L1296
	jmp	.L1363
.L1300:
	xor	r11d, r11d
	jmp	.L1290
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
	mov	ecx, ecx
	vcvtsi2sd	xmm0, xmm0, rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	__uitof
	.def	__uitof;	.scl	2;	.type	32;	.endef
	.seh_proc	__uitof
__uitof:
	.seh_endprologue
	vxorps	xmm0, xmm0, xmm0
	mov	ecx, ecx
	vcvtsi2ss	xmm0, xmm0, rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	__ulltod
	.def	__ulltod;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltod
__ulltod:
	.seh_endprologue
	vxorps	xmm0, xmm0, xmm0
	test	rcx, rcx
	js	.L1374
	vcvtsi2sd	xmm0, xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L1374:
	mov	rax, rcx
	and	ecx, 1
	shr	rax
	or	rax, rcx
	vcvtsi2sd	xmm1, xmm0, rax
	vaddsd	xmm0, xmm1, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	__ulltof
	.def	__ulltof;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltof
__ulltof:
	.seh_endprologue
	vxorps	xmm0, xmm0, xmm0
	test	rcx, rcx
	js	.L1377
	vcvtsi2ss	xmm0, xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L1377:
	mov	rax, rcx
	and	ecx, 1
	shr	rax
	or	rax, rcx
	vcvtsi2ss	xmm1, xmm0, rax
	vaddss	xmm0, xmm1, xmm1
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
	jne	.L1383
	mov	eax, edx
	sar	eax, 14
	jne	.L1380
	mov	eax, edx
	shr	eax, 13
	jne	.L1384
	mov	r8d, edx
	shr	r8d, 12
	jne	.L1385
	mov	r9d, edx
	shr	r9d, 11
	jne	.L1386
	mov	r10d, edx
	shr	r10d, 10
	jne	.L1387
	mov	r11d, edx
	shr	r11d, 9
	jne	.L1388
	mov	eax, edx
	shr	eax, 8
	jne	.L1389
	mov	r8d, edx
	shr	r8d, 7
	jne	.L1390
	mov	r9d, edx
	shr	r9d, 6
	jne	.L1391
	mov	r10d, edx
	shr	r10d, 5
	jne	.L1392
	mov	r11d, edx
	shr	r11d, 4
	jne	.L1393
	mov	eax, edx
	shr	eax, 3
	jne	.L1394
	mov	r8d, edx
	shr	r8d, 2
	jne	.L1395
	shr	edx
	jne	.L1396
	mov	eax, 15
	cmp	cx, 1
	adc	eax, 0
.L1380:
	ret
.L1383:
	xor	eax, eax
	ret
.L1394:
	mov	eax, 12
	ret
.L1384:
	mov	eax, 2
	ret
.L1385:
	mov	eax, 3
	ret
.L1386:
	mov	eax, 4
	ret
.L1387:
	mov	eax, 5
	ret
.L1388:
	mov	eax, 6
	ret
.L1389:
	mov	eax, 7
	ret
.L1390:
	mov	eax, 8
	ret
.L1391:
	mov	eax, 9
	ret
.L1392:
	mov	eax, 10
	ret
.L1393:
	mov	eax, 11
	ret
.L1395:
	mov	eax, 13
	ret
.L1396:
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
	jne	.L1401
	test	cl, 2
	jne	.L1402
	test	cl, 4
	jne	.L1403
	test	cl, 8
	jne	.L1404
	test	cl, 16
	jne	.L1405
	test	cl, 32
	jne	.L1406
	test	cl, 64
	jne	.L1407
	test	cl, -128
	jne	.L1408
	test	ch, 1
	jne	.L1409
	test	ch, 2
	jne	.L1410
	test	ch, 4
	jne	.L1411
	test	ch, 8
	jne	.L1412
	test	ch, 16
	jne	.L1413
	test	ch, 32
	jne	.L1414
	test	ch, 64
	jne	.L1415
	xor	eax, eax
	and	ch, -128
	sete	al
	add	eax, 15
	ret
.L1401:
	xor	eax, eax
	ret
.L1402:
	mov	eax, 1
	ret
.L1413:
	mov	eax, 12
	ret
.L1403:
	mov	eax, 2
	ret
.L1404:
	mov	eax, 3
	ret
.L1405:
	mov	eax, 4
	ret
.L1406:
	mov	eax, 5
	ret
.L1407:
	mov	eax, 6
	ret
.L1408:
	mov	eax, 7
	ret
.L1409:
	mov	eax, 8
	ret
.L1410:
	mov	eax, 9
	ret
.L1411:
	mov	eax, 10
	ret
.L1412:
	mov	eax, 11
	ret
.L1414:
	mov	eax, 13
	ret
.L1415:
	mov	eax, 14
	ret
	.seh_endproc
	.p2align 4
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	vcomiss	xmm0, DWORD PTR .LC20[rip]
	jnb	.L1423
	vcvttss2si	eax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L1423:
	vsubss	xmm0, xmm0, DWORD PTR .LC20[rip]
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
	je	.L1426
	.p2align 5
	.p2align 4
	.p2align 3
.L1428:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L1428
.L1426:
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
	je	.L1431
	test	edx, edx
	je	.L1431
	.p2align 5
	.p2align 4
	.p2align 3
.L1433:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	r8d, eax
	shr	edx
	jne	.L1433
.L1431:
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
	jb	.L1439
	jmp	.L1462
	.p2align 4,,10
	.p2align 3
.L1442:
	add	edx, edx
	add	r9d, r9d
	cmp	edx, ecx
	jnb	.L1441
	test	r9d, r9d
	je	.L1441
.L1439:
	test	edx, edx
	jns	.L1442
.L1443:
	xor	eax, eax
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L1445:
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
	jne	.L1445
.L1444:
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1441:
	xor	eax, eax
	test	r9d, r9d
	jne	.L1443
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
.L1462:
	mov	eax, ecx
	sub	eax, edx
	cmp	ecx, edx
	setnb	dl
	cmovnb	ecx, eax
	movzx	eax, dl
	jmp	.L1444
	.seh_endproc
	.p2align 4
	.globl	__mspabi_cmpf
	.def	__mspabi_cmpf;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpf
__mspabi_cmpf:
	.seh_endprologue
	mov	eax, -1
	vcomiss	xmm1, xmm0
	ja	.L1465
	xor	eax, eax
	vcomiss	xmm0, xmm1
	seta	al
.L1465:
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
	ja	.L1468
	xor	eax, eax
	vcomisd	xmm0, xmm1
	seta	al
.L1468:
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
	js	.L1482
	je	.L1478
	xor	r11d, r11d
.L1475:
	mov	r8d, 1
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L1477:
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
	jne	.L1477
	mov	eax, r9d
	neg	eax
	test	r11d, r11d
	cmove	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L1482:
	neg	edx
	mov	r11d, 1
	jmp	.L1475
	.p2align 4,,10
	.p2align 3
.L1478:
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
	jns	.L1484
	neg	ecx
	xor	eax, eax
	mov	ebx, 1
.L1484:
	test	edx, edx
	jns	.L1485
	neg	edx
	mov	ebx, eax
.L1485:
	mov	r8d, edx
	mov	r9d, ecx
	mov	eax, 1
	cmp	edx, ecx
	jb	.L1486
	jmp	.L1510
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1513:
	test	eax, eax
	je	.L1491
.L1486:
	add	r8d, r8d
	add	eax, eax
	cmp	r8d, ecx
	jb	.L1513
.L1491:
	xor	edx, edx
	xor	r11d, r11d
	test	eax, eax
	je	.L1489
	.p2align 6
	.p2align 4
	.p2align 3
.L1488:
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
	jne	.L1488
.L1489:
	mov	eax, edx
	neg	eax
	test	ebx, ebx
	cmove	eax, edx
	pop	rbx
	ret
.L1510:
	cmp	ecx, edx
	setnb	dl
	movzx	edx, dl
	jmp	.L1489
	.seh_endproc
	.p2align 4
	.globl	__modsi3
	.def	__modsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__modsi3
__modsi3:
	.seh_endprologue
	xor	r9d, r9d
	test	ecx, ecx
	jns	.L1515
	neg	ecx
	mov	r9d, 1
.L1515:
	mov	eax, edx
	mov	r8d, ecx
	neg	eax
	cmovs	eax, edx
	mov	edx, 1
	cmp	eax, ecx
	jb	.L1516
	jmp	.L1540
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1542:
	test	edx, edx
	je	.L1536
.L1516:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jb	.L1542
	test	edx, edx
	je	.L1536
	.p2align 5
	.p2align 4
	.p2align 3
.L1518:
	mov	r10d, r8d
	sub	r10d, eax
	cmp	r8d, eax
	cmovnb	r8d, r10d
	shr	eax
	shr	edx
	jne	.L1518
.L1519:
	mov	eax, r8d
	neg	eax
	test	r9d, r9d
	cmove	eax, r8d
	ret
	.p2align 4,,10
	.p2align 3
.L1536:
	mov	r8d, ecx
	mov	eax, r8d
	neg	eax
	test	r9d, r9d
	cmove	eax, r8d
	ret
.L1540:
	sub	ecx, eax
	cmp	r8d, eax
	cmovnb	r8d, ecx
	jmp	.L1519
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
	jb	.L1544
	jmp	.L1610
	.p2align 4,,10
	.p2align 3
.L1547:
	lea	r10d, [rcx+rcx]
	lea	edx, [r9+r9]
	cmp	r10w, ax
	jnb	.L1546
	test	dx, dx
	je	.L1546
	mov	r9d, edx
	mov	ecx, r10d
.L1544:
	test	cx, cx
	jns	.L1547
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
	je	.L1549
.L1551:
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
	je	.L1549
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
	je	.L1549
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
	je	.L1549
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
	je	.L1549
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
	je	.L1549
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
	je	.L1549
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
	je	.L1549
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
	je	.L1549
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
	je	.L1549
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
	je	.L1549
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
	je	.L1549
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
	je	.L1549
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
	je	.L1549
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
	jns	.L1549
	mov	r9d, eax
	sub	r9d, ecx
	cmp	ax, cx
	setnb	cl
	cmovnb	eax, r9d
	movzx	r10d, cl
	or	edx, r10d
.L1549:
	test	r8d, r8d
	cmove	eax, edx
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1546:
	mov	eax, ebx
	test	dx, dx
	je	.L1549
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
	jmp	.L1551
.L1610:
	sub	eax, edx
	cmp	dx, bx
	sete	dl
	cmovne	eax, ebx
	movzx	edx, dl
	jmp	.L1549
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
	jb	.L1612
	jmp	.L1635
	.p2align 4,,10
	.p2align 3
.L1615:
	add	edx, edx
	add	r9d, r9d
	cmp	edx, ecx
	jnb	.L1614
	test	r9d, r9d
	je	.L1614
.L1612:
	test	edx, edx
	jns	.L1615
.L1616:
	xor	eax, eax
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L1618:
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
	jne	.L1618
.L1617:
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1614:
	xor	eax, eax
	test	r9d, r9d
	jne	.L1616
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
.L1635:
	mov	eax, ecx
	sub	eax, edx
	cmp	ecx, edx
	setnb	dl
	cmovnb	ecx, eax
	movzx	eax, dl
	jmp	.L1617
	.seh_endproc
	.p2align 4
	.globl	__ashldi3
	.def	__ashldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashldi3
__ashldi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1639
	lea	ecx, -32[rdx]
	xor	eax, eax
	sal	r8d, cl
.L1640:
	sal	r8, 32
	or	rax, r8
.L1638:
	ret
	.p2align 4,,10
	.p2align 3
.L1639:
	mov	rax, rcx
	test	edx, edx
	je	.L1638
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
	jmp	.L1640
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
	je	.L1645
	lea	ecx, -64[rdx]
	xor	r9d, r9d
	sal	rax, cl
.L1646:
	mov	r10, rax
	mov	rax, r9
	mov	r8, r10
.L1647:
	vmovdqa	XMMWORD PTR [rsp], xmm0
	mov	r11, QWORD PTR 8[rsp]
	vmovq	xmm0, rax
	vmovq	xmm1, r8
	vpinsrq	xmm2, xmm0, r11, 1
	vpunpcklqdq	xmm0, xmm2, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L1645:
	test	edx, edx
	je	.L1647
	mov	r9, rax
	mov	ecx, edx
	sal	r9, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rax, cl
	mov	ecx, edx
	sal	r8, cl
	or	rax, r8
	jmp	.L1646
	.seh_endproc
	.p2align 4
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1650
	sar	r8, 32
	lea	ecx, -32[rdx]
	mov	eax, r8d
	sar	r8d, cl
	sar	eax, 31
.L1651:
	sal	rax, 32
	or	rax, r8
.L1649:
	ret
	.p2align 4,,10
	.p2align 3
.L1650:
	mov	rax, rcx
	test	edx, edx
	je	.L1649
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
	jmp	.L1651
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
	je	.L1656
	mov	r10, rax
	lea	ecx, -64[rdx]
	sar	r10, 63
	sar	rax, cl
.L1657:
	mov	r9, rax
	mov	rax, r10
.L1658:
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
.L1656:
	mov	r9, r8
	test	edx, edx
	je	.L1658
	mov	r10, rax
	mov	ecx, edx
	sar	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L1657
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
	jl	.L1664
	mov	eax, 2
	jg	.L1664
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1664
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1664:
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
	jl	.L1670
	mov	eax, 1
	jg	.L1670
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1670
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1670:
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
	jl	.L1675
	mov	eax, 2
	jg	.L1675
	xor	eax, eax
	cmp	r8, r9
	jb	.L1675
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1675:
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
	jne	.L1684
	xor	eax, eax
	xor	ecx, ecx
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	cmove	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1684:
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
	je	.L1688
	shr	r8, 32
	lea	ecx, -32[rdx]
	xor	eax, eax
	shr	r8d, cl
.L1689:
	sal	rax, 32
	or	rax, r8
.L1687:
	ret
	.p2align 4,,10
	.p2align 3
.L1688:
	mov	rax, rcx
	test	edx, edx
	je	.L1687
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
	jmp	.L1689
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
	je	.L1694
	lea	ecx, -64[rdx]
	xor	r10d, r10d
	shr	rax, cl
.L1695:
	mov	r9, rax
	mov	rax, r10
.L1696:
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
.L1694:
	mov	r9, r8
	test	edx, edx
	je	.L1696
	mov	r10, rax
	mov	ecx, edx
	shr	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L1695
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
	vmovsd	xmm2, QWORD PTR .LC19[rip]
	vmovapd	xmm1, xmm2
	mov	eax, edx
	test	dl, 1
	je	.L1711
	.p2align 4
	.p2align 3
.L1713:
	vmulsd	xmm1, xmm1, xmm0
.L1711:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1712
	vmulsd	xmm0, xmm0, xmm0
	test	al, 1
	jne	.L1713
.L1717:
	vmulsd	xmm0, xmm0, xmm0
	mov	r8d, eax
	shr	r8d, 31
	add	eax, r8d
	sar	eax
	test	al, 1
	jne	.L1713
	jmp	.L1717
	.p2align 4,,10
	.p2align 3
.L1712:
	test	edx, edx
	jns	.L1710
	vdivsd	xmm1, xmm2, xmm1
.L1710:
	vmovapd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	__powisf2
	.def	__powisf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powisf2
__powisf2:
	.seh_endprologue
	vmovss	xmm2, DWORD PTR .LC21[rip]
	vmovaps	xmm1, xmm2
	mov	eax, edx
	test	dl, 1
	je	.L1719
	.p2align 4
	.p2align 3
.L1721:
	vmulss	xmm1, xmm1, xmm0
.L1719:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1720
	vmulss	xmm0, xmm0, xmm0
	test	al, 1
	jne	.L1721
.L1725:
	vmulss	xmm0, xmm0, xmm0
	mov	r8d, eax
	shr	r8d, 31
	add	eax, r8d
	sar	eax
	test	al, 1
	jne	.L1721
	jmp	.L1725
	.p2align 4,,10
	.p2align 3
.L1720:
	test	edx, edx
	jns	.L1718
	vdivss	xmm1, xmm2, xmm1
.L1718:
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
	jb	.L1726
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L1726
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1726
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1726:
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
	jb	.L1732
	mov	eax, 1
	cmp	r9d, r8d
	jb	.L1732
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1732
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1732:
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
	jb	.L1737
	mov	eax, 2
	cmp	rdx, rcx
	jb	.L1737
	xor	eax, eax
	cmp	r8, r9
	jb	.L1737
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1737:
	ret
	.seh_endproc
.lcomm s.0,7,1
.lcomm seed,8,8
	.section .rdata,"dr"
	.align 32
digits:
	.ascii "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\0"
	.align 16
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
	.align 16
.LC1:
	.byte	1
	.byte	0
	.byte	3
	.byte	2
	.byte	5
	.byte	4
	.byte	7
	.byte	6
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 16
.LC5:
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
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
