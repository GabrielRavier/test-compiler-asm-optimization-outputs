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
	cmp	rsi, 14
	jbe	.L132
	lea	rbx, -2[rdx+r8]
	mov	r9, rcx
	sub	r9, rbx
	lea	r11, 30[r9+rsi]
	cmp	r11, 30
	jbe	.L132
	lea	rbx, [rdx+r8]
	lea	r11, [rcx+r8]
	cmp	rsi, 30
	jbe	.L24
	mov	r9, r8
	lea	r10, -32[r8]
	xor	eax, eax
	and	r9, -32
	lea	rsi, [rdx+r10]
	add	r10, rcx
	neg	r9
	.p2align 5
	.p2align 4
	.p2align 3
.L9:
	vmovdqu	ymm2, YMMWORD PTR [rsi+rax]
	vmovdqu	YMMWORD PTR [r10+rax], ymm2
	sub	rax, 32
	cmp	r9, rax
	jne	.L9
	mov	r10, r8
	add	rbx, r9
	add	r11, r9
	and	r10d, 31
	and	r8d, 31
	je	.L135
	lea	rsi, -1[r10]
	mov	r8, r10
	cmp	rsi, 14
	jbe	.L137
	vzeroupper
.L8:
	vmovdqu	xmm3, XMMWORD PTR -16[rdx+r8]
	mov	rdx, r8
	and	rdx, -16
	vmovdqu	XMMWORD PTR -16[rcx+r8], xmm3
	sub	rbx, rdx
	sub	r11, rdx
	sub	r10, rdx
	and	r8d, 15
	je	.L6
.L11:
	movzx	r8d, BYTE PTR -1[rbx]
	mov	BYTE PTR -1[r11], r8b
	cmp	r10, 1
	je	.L6
	movzx	r9d, BYTE PTR -2[rbx]
	mov	BYTE PTR -2[r11], r9b
	cmp	r10, 2
	je	.L6
	movzx	eax, BYTE PTR -3[rbx]
	mov	BYTE PTR -3[r11], al
	cmp	r10, 3
	je	.L6
	movzx	esi, BYTE PTR -4[rbx]
	mov	BYTE PTR -4[r11], sil
	cmp	r10, 4
	je	.L6
	movzx	edx, BYTE PTR -5[rbx]
	mov	BYTE PTR -5[r11], dl
	cmp	r10, 5
	je	.L6
	movzx	r8d, BYTE PTR -6[rbx]
	mov	BYTE PTR -6[r11], r8b
	cmp	r10, 6
	je	.L6
	movzx	r9d, BYTE PTR -7[rbx]
	mov	BYTE PTR -7[r11], r9b
	cmp	r10, 7
	je	.L6
	movzx	eax, BYTE PTR -8[rbx]
	mov	BYTE PTR -8[r11], al
	cmp	r10, 8
	je	.L6
	movzx	esi, BYTE PTR -9[rbx]
	mov	BYTE PTR -9[r11], sil
	cmp	r10, 9
	je	.L6
	movzx	edx, BYTE PTR -10[rbx]
	mov	BYTE PTR -10[r11], dl
	cmp	r10, 10
	je	.L6
	movzx	r8d, BYTE PTR -11[rbx]
	mov	BYTE PTR -11[r11], r8b
	cmp	r10, 11
	je	.L6
	movzx	r9d, BYTE PTR -12[rbx]
	mov	BYTE PTR -12[r11], r9b
	cmp	r10, 12
	je	.L6
	movzx	eax, BYTE PTR -13[rbx]
	mov	BYTE PTR -13[r11], al
	cmp	r10, 13
	je	.L6
	movzx	esi, BYTE PTR -14[rbx]
	mov	BYTE PTR -14[r11], sil
	cmp	r10, 14
	je	.L6
	movzx	ebx, BYTE PTR -15[rbx]
	mov	BYTE PTR -15[r11], bl
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
	je	.L135
	lea	r9, -1[rax]
	mov	r8, rax
	cmp	r9, 14
	jbe	.L138
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
.L139:
	sub	rsi, 1
.L132:
	movzx	r11d, BYTE PTR -1[rdx+r8]
	mov	BYTE PTR -1[rcx+r8], r11b
	mov	r8, rsi
	test	rsi, rsi
	jne	.L139
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L26:
	xor	r10d, r10d
	.p2align 5
	.p2align 4
	.p2align 3
.L131:
	movzx	eax, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], al
	add	r10, 1
	cmp	r8, r10
	jne	.L131
	jmp	.L6
.L138:
	vzeroupper
	jmp	.L20
.L24:
	mov	r10, r8
	jmp	.L8
.L137:
	vzeroupper
	jmp	.L11
.L27:
	mov	r11, rdx
	mov	r10, rcx
	mov	rax, r8
	xor	esi, esi
	jmp	.L16
.L135:
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
	jne	.L141
	jmp	.L143
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L144:
	add	rdx, 1
	add	rcx, 1
	sub	r9, 1
	je	.L143
.L141:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [rcx], r10b
	cmp	r10d, r8d
	jne	.L144
	lea	rax, 1[rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L143:
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
	jne	.L152
	jmp	.L155
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L154:
	add	rcx, 1
	sub	r8, 1
	je	.L155
.L152:
	movzx	eax, BYTE PTR [rcx]
	cmp	eax, edx
	jne	.L154
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L155:
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
	jne	.L160
	jmp	.L164
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L162:
	add	rcx, 1
	add	rdx, 1
	sub	r8, 1
	je	.L164
.L160:
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	je	.L162
	movzx	eax, BYTE PTR [rcx]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L164:
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
	je	.L171
	call	memcpy
	mov	rcx, rax
.L171:
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
	jmp	.L176
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L178:
	mov	r8, rax
	sub	rax, 1
	movzx	r9d, BYTE PTR [r8]
	cmp	r9d, edx
	je	.L175
.L176:
	cmp	rcx, rax
	jne	.L178
	xor	r8d, r8d
.L175:
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
	je	.L182
	movzx	edx, dl
	call	memset
	mov	rcx, rax
.L182:
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
	je	.L184
	.p2align 5
	.p2align 4
	.p2align 3
.L185:
	movzx	r8d, BYTE PTR 1[rdx]
	add	rdx, 1
	add	rax, 1
	mov	BYTE PTR [rax], r8b
	test	r8b, r8b
	jne	.L185
.L184:
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
	jne	.L191
	jmp	.L190
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L193:
	movzx	r8d, BYTE PTR 1[rax]
	add	rax, 1
	test	r8b, r8b
	je	.L190
.L191:
	cmp	r8d, edx
	jne	.L193
.L190:
	ret
	.seh_endproc
	.p2align 4
	.globl	strchr
	.def	strchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strchr
strchr:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L200
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L203:
	add	rax, 1
	test	r8b, r8b
	je	.L202
.L200:
	movsx	r8d, BYTE PTR [rax]
	cmp	r8d, edx
	jne	.L203
	ret
	.p2align 4,,10
	.p2align 3
.L202:
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
	je	.L205
	jmp	.L213
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L207:
	movzx	r8d, BYTE PTR [rcx+rax]
	add	rax, 1
	movzx	r9d, BYTE PTR -1[rdx+rax]
	cmp	r8b, r9b
	jne	.L213
.L205:
	test	r8b, r8b
	jne	.L207
	xor	eax, eax
	sub	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L213:
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
	je	.L217
	mov	rax, rcx
	.p2align 4
	.p2align 4
	.p2align 3
.L216:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L216
	sub	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L217:
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
	je	.L219
	movzx	eax, BYTE PTR [rcx]
	sub	r8, 1
	mov	rcx, rdx
	add	r8, rdx
	test	al, al
	jne	.L223
	jmp	.L236
	.p2align 4,,10
	.p2align 3
.L238:
	cmp	rcx, r8
	je	.L222
	movzx	eax, BYTE PTR 1[r9]
	add	r9, 1
	lea	rdx, 1[rcx]
	test	al, al
	je	.L237
	mov	rcx, rdx
.L223:
	movzx	edx, BYTE PTR [rcx]
	test	dl, dl
	setne	r11b
	cmp	dl, al
	sete	r10b
	test	r11b, r10b
	jne	.L238
.L222:
	sub	eax, edx
.L219:
	ret
	.p2align 4,,10
	.p2align 3
.L237:
	movzx	edx, BYTE PTR 1[rcx]
	xor	eax, eax
	sub	eax, edx
	jmp	.L219
.L236:
	movzx	edx, BYTE PTR [rdx]
	xor	eax, eax
	sub	eax, edx
	jmp	.L219
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
	jle	.L252
	mov	rbx, r8
	lea	rax, -2[r8]
	shr	rbx
	lea	r11, -1[rbx]
	cmp	rax, 29
	jbe	.L246
	mov	r10, r8
	mov	r9, r8
	vmovdqa	ymm1, YMMWORD PTR .LC0[rip]
	xor	esi, esi
	shr	r10, 5
	and	r9, -32
	.p2align 5
	.p2align 4
	.p2align 3
.L242:
	vmovdqu	ymm0, YMMWORD PTR [rcx+rsi]
	vpshufb	ymm2, ymm0, ymm1
	vmovdqu	YMMWORD PTR [rdx+rsi], ymm2
	add	rsi, 32
	cmp	rsi, r9
	jne	.L242
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
	je	.L253
	vzeroupper
.L241:
	sub	r11, r9
	lea	rbx, 1[r11]
	cmp	r11, 6
	jbe	.L244
	vmovdqu	xmm3, XMMWORD PTR [rcx+r9*2]
	vpshufb	xmm4, xmm3, XMMWORD PTR .LC1[rip]
	vmovdqu	XMMWORD PTR [rdx+r9*2], xmm4
	mov	rdx, rbx
	and	rdx, -8
	lea	rcx, [rdx+rdx]
	neg	rdx
	add	r10, rcx
	add	rax, rcx
	lea	r8, [r8+rdx*2]
	and	ebx, 7
	je	.L252
.L244:
	movbe	r11w, WORD PTR [rax]
	mov	WORD PTR [r10], r11w
	cmp	r8, 3
	jle	.L252
	movbe	r9w, WORD PTR 2[rax]
	mov	WORD PTR 2[r10], r9w
	cmp	r8, 5
	jle	.L252
	movbe	si, WORD PTR 4[rax]
	mov	WORD PTR 4[r10], si
	cmp	r8, 7
	jle	.L252
	movbe	bx, WORD PTR 6[rax]
	mov	WORD PTR 6[r10], bx
	cmp	r8, 9
	jle	.L252
	movbe	dx, WORD PTR 8[rax]
	mov	WORD PTR 8[r10], dx
	cmp	r8, 11
	jle	.L252
	movbe	cx, WORD PTR 10[rax]
	mov	WORD PTR 10[r10], cx
	cmp	r8, 13
	jle	.L252
	movbe	r8w, WORD PTR 12[rax]
	mov	WORD PTR 12[r10], r8w
.L252:
	pop	rbx
	pop	rsi
	ret
.L246:
	mov	r10, rdx
	mov	rax, rcx
	xor	r9d, r9d
	jmp	.L241
.L253:
	vzeroupper
	jmp	.L252
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
	jbe	.L266
	cmp	cx, 31
	jbe	.L266
	lea	ecx, -8232[rax]
	mov	r8d, 1
	cmp	ecx, 1
	jbe	.L264
	sub	eax, 65529
	xor	r8d, r8d
	cmp	eax, 2
	setbe	r8b
	mov	eax, r8d
	ret
	.p2align 4,,10
	.p2align 3
.L266:
	mov	r8d, 1
.L264:
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
	jbe	.L275
	movzx	eax, cx
	lea	edx, -8234[rax]
	cmp	edx, 47061
	jbe	.L272
	cmp	cx, 8231
	jbe	.L272
	lea	r8d, -57344[rax]
	mov	r9d, 1
	cmp	r8d, 8184
	jbe	.L269
	sub	eax, 65532
	xor	r9d, r9d
	cmp	eax, 1048579
	ja	.L269
	not	ecx
	xor	r9d, r9d
	test	cx, -2
	setne	r9b
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L272:
	mov	r9d, 1
.L269:
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L275:
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
	jbe	.L276
	or	ecx, 32
	xor	edx, edx
	movzx	ecx, cx
	sub	ecx, 97
	cmp	ecx, 5
	setbe	dl
.L276:
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
	jp	.L280
	vucomisd	xmm1, xmm1
	jp	.L284
	vcomisd	xmm0, xmm1
	jbe	.L287
	vsubsd	xmm0, xmm0, xmm1
.L280:
	ret
	.p2align 4,,10
	.p2align 3
.L287:
	vxorpd	xmm0, xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L284:
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
	jp	.L288
	vucomiss	xmm1, xmm1
	jp	.L292
	vcomiss	xmm0, xmm1
	jbe	.L295
	vsubss	xmm0, xmm0, xmm1
.L288:
	ret
	.p2align 4,,10
	.p2align 3
.L295:
	vxorps	xmm0, xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L292:
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
	jp	.L296
	vucomisd	xmm1, xmm1
	jp	.L302
	vmovmskpd	eax, xmm0
	vmovmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L298
	test	eax, eax
	jne	.L296
.L302:
	vmovapd	xmm1, xmm0
.L296:
	vmovapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L298:
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
	jp	.L305
	vucomiss	xmm1, xmm1
	jp	.L311
	vmovd	eax, xmm0
	vmovd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L307
	test	eax, eax
	jne	.L305
.L311:
	vmovaps	xmm1, xmm0
.L305:
	vmovaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L307:
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
	jp	.L320
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L323
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
	je	.L316
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	jmp	.L315
	.p2align 4,,10
	.p2align 3
.L323:
	fstp	st(0)
.L315:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L316:
	fcomi	st, st(1)
	mov	rax, rcx
	fcmovbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L320:
	fstp	st(0)
	jmp	.L315
	.seh_endproc
	.p2align 4
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	vucomisd	xmm0, xmm0
	jp	.L329
	vucomisd	xmm1, xmm1
	jp	.L324
	vmovmskpd	eax, xmm0
	vmovmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L326
	test	eax, eax
	jne	.L324
.L329:
	vmovapd	xmm0, xmm1
.L324:
	ret
	.p2align 4,,10
	.p2align 3
.L326:
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
	jp	.L338
	vucomiss	xmm1, xmm1
	jp	.L333
	vmovd	eax, xmm0
	vmovd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L335
	test	eax, eax
	jne	.L333
.L338:
	vmovaps	xmm0, xmm1
.L333:
	ret
	.p2align 4,,10
	.p2align 3
.L335:
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
	jp	.L351
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L348
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
	je	.L344
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	jmp	.L343
	.p2align 4,,10
	.p2align 3
.L351:
	fstp	st(0)
.L343:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L344:
	fcomi	st, st(1)
	mov	rax, rcx
	fcmovnbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L348:
	fstp	st(0)
	jmp	.L343
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
	je	.L353
	lea	r8, digits[rip]
	.p2align 5
	.p2align 4
	.p2align 3
.L354:
	mov	edx, ecx
	add	rax, 1
	and	edx, 63
	movzx	r10d, BYTE PTR [r8+rdx]
	mov	BYTE PTR -1[rax], r10b
	shr	ecx, 6
	jne	.L354
.L353:
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
	je	.L366
	vmovq	xmm1, QWORD PTR [rdx]
	vpinsrq	xmm0, xmm1, rdx, 1
	vmovdqu	XMMWORD PTR [rcx], xmm0
	mov	QWORD PTR [rdx], rcx
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L365
	mov	QWORD PTR 8[rax], rcx
.L365:
	ret
	.p2align 4,,10
	.p2align 3
.L366:
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
	je	.L368
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L368:
	mov	rcx, QWORD PTR 8[rcx]
	test	rcx, rcx
	je	.L376
	mov	QWORD PTR [rcx], rax
.L376:
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
	je	.L378
	mov	rbx, rdx
	xor	r15d, r15d
	jmp	.L380
	.p2align 4,,10
	.p2align 3
.L392:
	add	r15, 1
	add	rbx, rsi
	cmp	rdi, r15
	je	.L378
.L380:
	mov	r12, rbx
	mov	rdx, rbx
	mov	rcx, rbp
	call	r13
	test	eax, eax
	jne	.L392
.L377:
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
.L378:
	lea	rax, 1[rdi]
	imul	rdi, rsi
	add	rdi, QWORD PTR 120[rsp]
	mov	QWORD PTR [r14], rax
	mov	r12, rdi
	test	rsi, rsi
	je	.L377
	mov	r8, rsi
	mov	rdx, rbp
	mov	rcx, rdi
	call	memmove
	jmp	.L377
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
	je	.L394
	mov	rbx, rdx
	xor	esi, esi
	jmp	.L396
	.p2align 4,,10
	.p2align 3
.L404:
	add	rsi, 1
	add	rbx, rbp
	cmp	r12, rsi
	je	.L394
.L396:
	mov	r14, rbx
	mov	rdx, rbx
	mov	rcx, rdi
	call	r13
	test	eax, eax
	jne	.L404
.L393:
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
.L394:
	xor	r14d, r14d
	jmp	.L393
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
	jmp	.L433
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L429:
	add	rcx, 1
.L433:
	movsx	eax, BYTE PTR [rcx]
	lea	r8d, -9[rax]
	mov	edx, eax
	cmp	r8d, 4
	jbe	.L429
	cmp	dl, 32
	je	.L429
	cmp	dl, 43
	je	.L410
	cmp	dl, 45
	jne	.L434
	movsx	r9d, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	edx, r9d
	sub	r9d, 48
	cmp	r9d, 9
	ja	.L419
	mov	r11d, 1
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
.L434:
	sub	eax, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	eax, 9
	jbe	.L413
.L419:
	xor	eax, eax
.L435:
	ret
	.p2align 4,,10
	.p2align 3
.L410:
	lea	r10, 1[rcx]
	movsx	ecx, BYTE PTR 1[rcx]
	xor	r11d, r11d
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L413
	xor	eax, eax
	jmp	.L435
	.seh_endproc
	.p2align 4
	.globl	atol
	.def	atol;	.scl	2;	.type	32;	.endef
	.seh_proc	atol
atol:
	.seh_endprologue
	jmp	.L460
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L457:
	add	rcx, 1
.L460:
	movsx	eax, BYTE PTR [rcx]
	lea	r8d, -9[rax]
	mov	edx, eax
	cmp	r8d, 4
	jbe	.L457
	cmp	dl, 32
	je	.L457
	cmp	dl, 43
	je	.L440
	cmp	dl, 45
	jne	.L441
	movsx	r9d, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	r11d, 1
	mov	edx, r9d
	sub	r9d, 48
	cmp	r9d, 9
	ja	.L448
.L442:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L445:
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
	jbe	.L445
	sub	eax, ecx
	test	r11d, r11d
	cmovne	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L441:
	sub	eax, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	eax, 9
	jbe	.L442
.L448:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L440:
	lea	r10, 1[rcx]
	movsx	ecx, BYTE PTR 1[rcx]
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	ja	.L448
	xor	r11d, r11d
	jmp	.L442
	.seh_endproc
	.p2align 4
	.globl	atoll
	.def	atoll;	.scl	2;	.type	32;	.endef
	.seh_proc	atoll
atoll:
	.seh_endprologue
	jmp	.L488
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L484:
	add	rcx, 1
.L488:
	movsx	eax, BYTE PTR [rcx]
	lea	r8d, -9[rax]
	mov	edx, eax
	cmp	r8d, 4
	jbe	.L484
	cmp	dl, 32
	je	.L484
	cmp	dl, 43
	je	.L465
	cmp	dl, 45
	jne	.L489
	movsx	r9d, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	edx, r9d
	sub	r9d, 48
	cmp	r9d, 9
	ja	.L474
	mov	r11d, 1
.L468:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L471:
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
	jbe	.L471
	sub	rax, rcx
	test	r11d, r11d
	cmovne	rax, r9
	ret
	.p2align 4,,10
	.p2align 3
.L489:
	sub	eax, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	eax, 9
	jbe	.L468
.L474:
	xor	eax, eax
.L490:
	ret
	.p2align 4,,10
	.p2align 3
.L465:
	lea	r10, 1[rcx]
	movsx	ecx, BYTE PTR 1[rcx]
	xor	r11d, r11d
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L468
	xor	eax, eax
	jmp	.L490
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
.L504:
	test	rbx, rbx
	je	.L492
.L505:
	mov	r14, rbx
	mov	rcx, r12
	shr	r14
	mov	rsi, r14
	imul	rsi, rbp
	add	rsi, rdi
	mov	rdx, rsi
	call	r13
	test	eax, eax
	js	.L496
	je	.L491
	sub	rbx, 1
	lea	rdi, [rsi+rbp]
	sub	rbx, r14
	test	rbx, rbx
	jne	.L505
.L492:
	xor	esi, esi
.L491:
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
.L496:
	mov	rbx, r14
	jmp	.L504
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
	je	.L511
	.p2align 4
	.p2align 3
.L519:
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
	je	.L506
	jle	.L509
	sub	r14d, 1
	lea	rsi, [rbx+rdi]
	sar	r14d
	jne	.L519
.L511:
	xor	ebx, ebx
.L506:
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
.L509:
	test	r15d, r15d
	je	.L511
	mov	r14d, r15d
	jmp	.L519
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
	jne	.L529
	jmp	.L532
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L531:
	movzx	eax, WORD PTR 2[rcx]
	add	rcx, 2
	test	ax, ax
	je	.L532
.L529:
	cmp	dx, ax
	jne	.L531
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L532:
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
	je	.L537
	jmp	.L538
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L539:
	movzx	r8d, WORD PTR [rcx+rax]
	add	rax, 2
	movzx	r9d, WORD PTR -2[rdx+rax]
	cmp	r8w, r9w
	jne	.L538
.L537:
	test	r8w, r8w
	jne	.L539
.L538:
	mov	eax, -1
	cmp	r8w, r9w
	jb	.L536
	xor	eax, eax
	cmp	r9w, r8w
	setb	al
.L536:
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
.L546:
	movzx	r9d, WORD PTR [rdx+r8]
	mov	WORD PTR [rax+r8], r9w
	add	r8, 2
	test	r9w, r9w
	jne	.L546
	ret
	.seh_endproc
	.p2align 4
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	cmp	WORD PTR [rcx], 0
	je	.L551
	mov	rax, rcx
	.p2align 4
	.p2align 4
	.p2align 3
.L550:
	add	rax, 2
	cmp	WORD PTR [rax], 0
	jne	.L550
	sub	rax, rcx
	sar	rax
	ret
	.p2align 4,,10
	.p2align 3
.L551:
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
	jne	.L554
	jmp	.L560
	.p2align 4,,10
	.p2align 3
.L567:
	test	ax, ax
	je	.L558
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L560
.L554:
	movzx	eax, WORD PTR [rcx]
	cmp	WORD PTR [rdx], ax
	je	.L567
.L558:
	movzx	ecx, WORD PTR [rcx]
	movzx	edx, WORD PTR [rdx]
	cmp	cx, dx
	jb	.L568
	cmp	dx, cx
	setb	r8b
	movzx	eax, r8b
	ret
	.p2align 4,,10
	.p2align 3
.L568:
	mov	eax, -1
	ret
	.p2align 4,,10
	.p2align 3
.L560:
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
	jne	.L570
	jmp	.L573
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L572:
	add	rcx, 2
	sub	r8, 1
	je	.L573
.L570:
	cmp	WORD PTR [rcx], dx
	jne	.L572
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L573:
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
	jne	.L578
	jmp	.L583
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L580:
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L583
.L578:
	movzx	eax, WORD PTR [rcx]
	cmp	ax, WORD PTR [rdx]
	je	.L580
	movzx	edx, WORD PTR [rdx]
	cmp	ax, dx
	jb	.L589
	cmp	dx, ax
	setb	cl
	movzx	eax, cl
	ret
	.p2align 4,,10
	.p2align 3
.L583:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L589:
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
	je	.L591
	add	r8, r8
	call	memcpy
	mov	rcx, rax
.L591:
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
	mov	rcx, rdx
	cmp	rax, rdx
	je	.L639
	mov	rdx, rax
	lea	rsi, [r8+r8]
	lea	r9, -1[r8]
	sub	rdx, rcx
	cmp	rdx, rsi
	jnb	.L685
	test	r8, r8
	je	.L639
	cmp	r9, 6
	jbe	.L678
	mov	rdx, rax
	sub	rdx, rcx
	add	rdx, 30
	cmp	rdx, 28
	jbe	.L678
	cmp	r9, 14
	jbe	.L618
	mov	r10, r8
	lea	r11, -32[rsi]
	xor	edx, edx
	shr	r10, 4
	lea	rbx, [rcx+r11]
	add	r11, rax
	neg	r10
	sal	r10, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L602:
	vmovdqu	ymm2, YMMWORD PTR [rbx+rdx]
	vmovdqu	YMMWORD PTR [r11+rdx], ymm2
	sub	rdx, 32
	cmp	rdx, r10
	jne	.L602
	mov	r11, r8
	and	r11, -16
	sub	r9, r11
	test	r8b, 15
	je	.L682
	sub	r8, r11
	lea	rbx, -1[r8]
	cmp	rbx, 6
	jbe	.L686
	vzeroupper
.L601:
	neg	r11
	mov	r10, r8
	lea	rsi, -16[rsi+r11*2]
	and	r10, -8
	vmovdqu	xmm3, XMMWORD PTR [rcx+rsi]
	sub	r9, r10
	and	r8d, 7
	vmovdqu	XMMWORD PTR [rax+rsi], xmm3
	je	.L639
.L605:
	movzx	r8d, WORD PTR [rcx+r9*2]
	lea	r11, -1[r9]
	mov	WORD PTR [rax+r9*2], r8w
	test	r9, r9
	je	.L639
	movzx	ebx, WORD PTR [rcx+r11*2]
	lea	rdx, [r11+r11]
	mov	WORD PTR [rax+r11*2], bx
	test	r11, r11
	je	.L639
	movzx	esi, WORD PTR -2[rcx+rdx]
	mov	WORD PTR -2[rax+rdx], si
	cmp	r9, 2
	je	.L639
	movzx	r10d, WORD PTR -4[rcx+rdx]
	mov	WORD PTR -4[rax+rdx], r10w
	cmp	r9, 3
	je	.L639
	movzx	r8d, WORD PTR -6[rcx+rdx]
	mov	WORD PTR -6[rax+rdx], r8w
	cmp	r9, 4
	je	.L639
	movzx	r11d, WORD PTR -8[rcx+rdx]
	mov	WORD PTR -8[rax+rdx], r11w
	cmp	r9, 5
	je	.L639
	movzx	ecx, WORD PTR -10[rcx+rdx]
	mov	WORD PTR -10[rax+rdx], cx
.L639:
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L685:
	test	r8, r8
	je	.L639
	cmp	r9, 6
	jbe	.L620
	lea	r10, 2[rcx]
	mov	rbx, rax
	sub	rbx, r10
	cmp	rbx, 28
	jbe	.L620
	cmp	r9, 14
	jbe	.L621
	mov	r11, r8
	xor	esi, esi
	xor	edx, edx
	shr	r11, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L611:
	vmovdqu	ymm0, YMMWORD PTR [rcx+rsi]
	add	rdx, 1
	vmovdqu	YMMWORD PTR [rax+rsi], ymm0
	add	rsi, 32
	cmp	r11, rdx
	jne	.L611
	mov	r10, r8
	and	r10, -16
	lea	rsi, [r10+r10]
	sub	r9, r10
	lea	r11, [rcx+rsi]
	add	rsi, rax
	test	r8b, 15
	je	.L682
	sub	r8, r10
	lea	rbx, -1[r8]
	cmp	rbx, 6
	jbe	.L687
	vzeroupper
.L610:
	vmovdqu	xmm1, XMMWORD PTR [rcx+r10*2]
	mov	rcx, r8
	and	rcx, -8
	sub	r9, rcx
	add	rcx, rcx
	vmovdqu	XMMWORD PTR [rax+r10*2], xmm1
	add	r11, rcx
	add	rsi, rcx
	and	r8d, 7
	je	.L639
.L614:
	movzx	r8d, WORD PTR [r11]
	mov	WORD PTR [rsi], r8w
	test	r9, r9
	je	.L639
	movzx	edx, WORD PTR 2[r11]
	mov	WORD PTR 2[rsi], dx
	cmp	r9, 1
	je	.L639
	movzx	r10d, WORD PTR 4[r11]
	mov	WORD PTR 4[rsi], r10w
	cmp	r9, 2
	je	.L639
	movzx	ebx, WORD PTR 6[r11]
	mov	WORD PTR 6[rsi], bx
	cmp	r9, 3
	je	.L639
	movzx	ecx, WORD PTR 8[r11]
	mov	WORD PTR 8[rsi], cx
	cmp	r9, 4
	je	.L639
	movzx	r8d, WORD PTR 10[r11]
	mov	WORD PTR 10[rsi], r8w
	cmp	r9, 5
	je	.L639
	movzx	r9d, WORD PTR 12[r11]
	mov	WORD PTR 12[rsi], r9w
	jmp	.L639
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L678:
	movzx	edx, WORD PTR [rcx+r9*2]
	mov	WORD PTR [rax+r9*2], dx
	sub	r9, 1
	jb	.L639
	movzx	edx, WORD PTR [rcx+r9*2]
	mov	WORD PTR [rax+r9*2], dx
	sub	r9, 1
	jnb	.L678
	jmp	.L639
	.p2align 4,,10
	.p2align 3
.L620:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L679:
	movzx	r11d, WORD PTR [rcx+rsi*2]
	mov	WORD PTR [rax+rsi*2], r11w
	add	rsi, 1
	cmp	r8, rsi
	jne	.L679
	jmp	.L639
.L682:
	vzeroupper
	jmp	.L639
.L618:
	xor	r11d, r11d
	jmp	.L601
.L621:
	mov	r11, rcx
	mov	rsi, rax
	xor	r10d, r10d
	jmp	.L610
.L687:
	vzeroupper
	jmp	.L614
.L686:
	vzeroupper
	jmp	.L605
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
	je	.L689
	cmp	r10, 14
	jbe	.L695
	mov	r11, r8
	vmovd	xmm0, edx
	xor	eax, eax
	shr	r11, 4
	vpbroadcastw	ymm1, xmm0
	.p2align 5
	.p2align 4
	.p2align 3
.L691:
	mov	rcx, rax
	add	rax, 1
	sal	rcx, 5
	vmovdqu	YMMWORD PTR [r9+rcx], ymm1
	cmp	r11, rax
	jne	.L691
	mov	rcx, r8
	and	rcx, -16
	sub	r10, rcx
	lea	rax, [r9+rcx*2]
	test	r8b, 15
	je	.L725
	vzeroupper
.L690:
	sub	r8, rcx
	lea	r11, -1[r8]
	cmp	r11, 6
	jbe	.L693
	vmovd	xmm2, edx
	vpbroadcastw	xmm3, xmm2
	vmovdqu	XMMWORD PTR [r9+rcx*2], xmm3
	mov	rcx, r8
	and	rcx, -8
	sub	r10, rcx
	and	r8d, 7
	lea	rax, [rax+rcx*2]
	je	.L689
.L693:
	mov	WORD PTR [rax], dx
	test	r10, r10
	je	.L689
	mov	WORD PTR 2[rax], dx
	cmp	r10, 1
	je	.L689
	mov	WORD PTR 4[rax], dx
	cmp	r10, 2
	je	.L689
	mov	WORD PTR 6[rax], dx
	cmp	r10, 3
	je	.L689
	mov	WORD PTR 8[rax], dx
	cmp	r10, 4
	je	.L689
	mov	WORD PTR 10[rax], dx
	cmp	r10, 5
	je	.L689
	mov	WORD PTR 12[rax], dx
.L689:
	mov	rax, r9
	ret
.L695:
	mov	rax, rcx
	xor	ecx, ecx
	jmp	.L690
.L725:
	vzeroupper
	jmp	.L689
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
	jnb	.L727
	test	r8, r8
	je	.L859
	lea	rsi, -1[r8]
	cmp	rsi, 14
	jbe	.L854
	lea	rbx, -2[rcx+r8]
	mov	r9, rdx
	sub	r9, rbx
	lea	r11, 30[r9+rsi]
	cmp	r11, 30
	jbe	.L854
	lea	rbx, [rcx+r8]
	lea	r11, [rdx+r8]
	cmp	rsi, 30
	jbe	.L746
	mov	r9, r8
	lea	r10, -32[r8]
	xor	eax, eax
	and	r9, -32
	lea	rsi, [rcx+r10]
	add	r10, rdx
	neg	r9
	.p2align 5
	.p2align 4
	.p2align 3
.L731:
	vmovdqu	ymm2, YMMWORD PTR [rsi+rax]
	vmovdqu	YMMWORD PTR [r10+rax], ymm2
	sub	rax, 32
	cmp	r9, rax
	jne	.L731
	mov	r10, r8
	add	r11, r9
	add	rbx, r9
	and	r10d, 31
	and	r8d, 31
	je	.L857
	lea	rsi, -1[r10]
	mov	r8, r10
	cmp	rsi, 14
	jbe	.L860
	vzeroupper
.L730:
	vmovdqu	xmm3, XMMWORD PTR -16[rcx+r8]
	vmovdqu	XMMWORD PTR -16[rdx+r8], xmm3
	mov	rdx, r8
	and	rdx, -16
	sub	r11, rdx
	sub	rbx, rdx
	sub	r10, rdx
	and	r8d, 15
	je	.L859
.L733:
	movzx	ecx, BYTE PTR -1[rbx]
	mov	BYTE PTR -1[r11], cl
	cmp	r10, 1
	je	.L859
	movzx	r8d, BYTE PTR -2[rbx]
	mov	BYTE PTR -2[r11], r8b
	cmp	r10, 2
	je	.L859
	movzx	r9d, BYTE PTR -3[rbx]
	mov	BYTE PTR -3[r11], r9b
	cmp	r10, 3
	je	.L859
	movzx	eax, BYTE PTR -4[rbx]
	mov	BYTE PTR -4[r11], al
	cmp	r10, 4
	je	.L859
	movzx	esi, BYTE PTR -5[rbx]
	mov	BYTE PTR -5[r11], sil
	cmp	r10, 5
	je	.L859
	movzx	edx, BYTE PTR -6[rbx]
	mov	BYTE PTR -6[r11], dl
	cmp	r10, 6
	je	.L859
	movzx	ecx, BYTE PTR -7[rbx]
	mov	BYTE PTR -7[r11], cl
	cmp	r10, 7
	je	.L859
	movzx	r8d, BYTE PTR -8[rbx]
	mov	BYTE PTR -8[r11], r8b
	cmp	r10, 8
	je	.L859
	movzx	r9d, BYTE PTR -9[rbx]
	mov	BYTE PTR -9[r11], r9b
	cmp	r10, 9
	je	.L859
	movzx	eax, BYTE PTR -10[rbx]
	mov	BYTE PTR -10[r11], al
	cmp	r10, 10
	je	.L859
	movzx	esi, BYTE PTR -11[rbx]
	mov	BYTE PTR -11[r11], sil
	cmp	r10, 11
	je	.L859
	movzx	edx, BYTE PTR -12[rbx]
	mov	BYTE PTR -12[r11], dl
	cmp	r10, 12
	je	.L859
	movzx	ecx, BYTE PTR -13[rbx]
	mov	BYTE PTR -13[r11], cl
	cmp	r10, 13
	je	.L859
	movzx	r8d, BYTE PTR -14[rbx]
	mov	BYTE PTR -14[r11], r8b
	cmp	r10, 14
	je	.L859
	movzx	ebx, BYTE PTR -15[rbx]
	mov	BYTE PTR -15[r11], bl
.L859:
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L727:
	je	.L859
	test	r8, r8
	je	.L859
	lea	rax, -1[r8]
	cmp	rax, 14
	jbe	.L748
	lea	r10, 1[rcx]
	mov	r9, rdx
	sub	r9, r10
	cmp	r9, 30
	jbe	.L748
	cmp	rax, 30
	jbe	.L749
	mov	rsi, r8
	xor	ebx, ebx
	and	rsi, -32
	.p2align 5
	.p2align 4
	.p2align 3
.L739:
	vmovdqu	ymm0, YMMWORD PTR [rcx+rbx]
	vmovdqu	YMMWORD PTR [rdx+rbx], ymm0
	add	rbx, 32
	cmp	rsi, rbx
	jne	.L739
	mov	rax, r8
	lea	r10, [rdx+rsi]
	lea	r11, [rcx+rsi]
	sub	rax, rsi
	cmp	r8, rsi
	je	.L857
	lea	r9, -1[rax]
	mov	r8, rax
	cmp	r9, 14
	jbe	.L861
	vzeroupper
.L738:
	vmovdqu	xmm1, XMMWORD PTR [rcx+rsi]
	vmovdqu	XMMWORD PTR [rdx+rsi], xmm1
	mov	rdx, r8
	and	rdx, -16
	add	r10, rdx
	add	r11, rdx
	sub	rax, rdx
	and	r8d, 15
	je	.L859
.L742:
	movzx	ecx, BYTE PTR [r11]
	mov	BYTE PTR [r10], cl
	cmp	rax, 1
	je	.L859
	movzx	r8d, BYTE PTR 1[r11]
	mov	BYTE PTR 1[r10], r8b
	cmp	rax, 2
	je	.L859
	movzx	esi, BYTE PTR 2[r11]
	mov	BYTE PTR 2[r10], sil
	cmp	rax, 3
	je	.L859
	movzx	ebx, BYTE PTR 3[r11]
	mov	BYTE PTR 3[r10], bl
	cmp	rax, 4
	je	.L859
	movzx	r9d, BYTE PTR 4[r11]
	mov	BYTE PTR 4[r10], r9b
	cmp	rax, 5
	je	.L859
	movzx	edx, BYTE PTR 5[r11]
	mov	BYTE PTR 5[r10], dl
	cmp	rax, 6
	je	.L859
	movzx	ecx, BYTE PTR 6[r11]
	mov	BYTE PTR 6[r10], cl
	cmp	rax, 7
	je	.L859
	movzx	r8d, BYTE PTR 7[r11]
	mov	BYTE PTR 7[r10], r8b
	cmp	rax, 8
	je	.L859
	movzx	esi, BYTE PTR 8[r11]
	mov	BYTE PTR 8[r10], sil
	cmp	rax, 9
	je	.L859
	movzx	ebx, BYTE PTR 9[r11]
	mov	BYTE PTR 9[r10], bl
	cmp	rax, 10
	je	.L859
	movzx	r9d, BYTE PTR 10[r11]
	mov	BYTE PTR 10[r10], r9b
	cmp	rax, 11
	je	.L859
	movzx	edx, BYTE PTR 11[r11]
	mov	BYTE PTR 11[r10], dl
	cmp	rax, 12
	je	.L859
	movzx	ecx, BYTE PTR 12[r11]
	mov	BYTE PTR 12[r10], cl
	cmp	rax, 13
	je	.L859
	movzx	r8d, BYTE PTR 13[r11]
	mov	BYTE PTR 13[r10], r8b
	cmp	rax, 14
	je	.L859
	movzx	r11d, BYTE PTR 14[r11]
	mov	BYTE PTR 14[r10], r11b
	jmp	.L859
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L862:
	sub	rsi, 1
.L854:
	movzx	r11d, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[rdx+r8], r11b
	mov	r8, rsi
	test	rsi, rsi
	jne	.L862
	jmp	.L859
	.p2align 4,,10
	.p2align 3
.L748:
	xor	r10d, r10d
	.p2align 5
	.p2align 4
	.p2align 3
.L853:
	movzx	eax, BYTE PTR [rcx+r10]
	mov	BYTE PTR [rdx+r10], al
	add	r10, 1
	cmp	r8, r10
	jne	.L853
	jmp	.L859
.L861:
	vzeroupper
	jmp	.L742
.L746:
	mov	r10, r8
	jmp	.L730
.L860:
	vzeroupper
	jmp	.L733
.L749:
	mov	r10, rdx
	mov	r11, rcx
	mov	rax, r8
	xor	esi, esi
	jmp	.L738
.L857:
	vzeroupper
	jmp	.L859
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
	vmovdqa	ymm0, YMMWORD PTR .LC10[rip]
	mov	eax, 1
	vpxor	xmm3, xmm3, xmm3
	vmovd	xmm4, eax
	vpbroadcastd	ymm4, xmm4
	vmovd	xmm1, ecx
	mov	edx, ecx
	vpbroadcastd	ymm5, xmm1
	vpsrlvd	ymm2, ymm5, ymm0
	vpand	ymm1, ymm2, ymm4
	vpcmpeqd	ymm2, ymm1, ymm3
	vpcmpeqd	ymm1, ymm2, ymm3
	vptest	ymm1, ymm1
	jne	.L883
	vmovdqa	ymm0, YMMWORD PTR .LC8[rip]
	vpsrlvd	ymm2, ymm5, ymm0
	vpand	ymm1, ymm2, ymm4
	vpcmpeqd	ymm2, ymm1, ymm3
	vpcmpeqd	ymm1, ymm2, ymm3
	vptest	ymm1, ymm1
	jne	.L884
	vmovdqa	ymm0, YMMWORD PTR .LC6[rip]
	vpsrlvd	ymm2, ymm5, ymm0
	vpand	ymm1, ymm2, ymm4
	vpcmpeqd	ymm2, ymm1, ymm3
	vpcmpeqd	ymm1, ymm2, ymm3
	vptest	ymm1, ymm1
	jne	.L885
	vmovdqa	ymm0, YMMWORD PTR .LC12[rip]
	vpsrlvd	ymm5, ymm5, ymm0
	vpand	ymm4, ymm5, ymm4
	vpcmpeqd	ymm2, ymm4, ymm3
	vpcmpeqd	ymm3, ymm2, ymm3
	vptest	ymm3, ymm3
	jne	.L886
.L891:
	xor	r8d, r8d
.L876:
	mov	eax, r8d
	vzeroupper
	ret
.L883:
	vmovdqa	ymm1, YMMWORD PTR .LC9[rip]
.L877:
	vmovd	r10d, xmm0
	vmovd	r8d, xmm1
	bt	edx, r10d
	lea	ecx, 1[r10]
	jc	.L879
	mov	r9d, edx
	shr	r9d, cl
	lea	ecx, 2[r10]
	and	r9d, 1
	jne	.L879
	cmp	r8d, 2
	je	.L891
	mov	r11d, edx
	shr	r11d, cl
	lea	ecx, 3[r10]
	and	r11d, 1
	jne	.L879
	cmp	r8d, 3
	je	.L891
	mov	eax, edx
	shr	eax, cl
	lea	ecx, 4[r10]
	and	eax, 1
	jne	.L879
	cmp	r8d, 4
	je	.L891
	mov	r9d, edx
	shr	r9d, cl
	lea	ecx, 5[r10]
	and	r9d, 1
	jne	.L879
	cmp	r8d, 5
	je	.L891
	mov	r11d, edx
	shr	r11d, cl
	lea	ecx, 6[r10]
	and	r11d, 1
	jne	.L879
	cmp	r8d, 6
	je	.L891
	mov	eax, edx
	shr	eax, cl
	lea	ecx, 7[r10]
	and	eax, 1
	jne	.L879
	cmp	r8d, 7
	mov	r8d, 0
	je	.L876
	bt	edx, ecx
	jnc	.L876
	lea	ecx, 8[r10]
.L879:
	mov	r8d, ecx
	vzeroupper
	mov	eax, r8d
	ret
.L884:
	vmovdqa	ymm1, YMMWORD PTR .LC7[rip]
	jmp	.L877
.L885:
	vmovdqa	ymm1, YMMWORD PTR .LC5[rip]
	jmp	.L877
.L886:
	vmovdqa	ymm1, YMMWORD PTR .LC11[rip]
	jmp	.L877
	.seh_endproc
	.p2align 4
	.globl	libiberty_ffs
	.def	libiberty_ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	libiberty_ffs
libiberty_ffs:
	.seh_endprologue
	xor	eax, eax
	test	ecx, ecx
	je	.L896
	mov	eax, ecx
	and	eax, 1
	jne	.L896
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L898:
	sar	ecx
	add	eax, 1
	test	cl, 1
	je	.L898
.L896:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinff
	.def	gl_isinff;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinff
gl_isinff:
	.seh_endprologue
	vmovss	xmm1, DWORD PTR .LC14[rip]
	mov	eax, 1
	vcomiss	xmm1, xmm0
	ja	.L903
	xor	eax, eax
	vcomiss	xmm0, DWORD PTR .LC15[rip]
	seta	al
.L903:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinfd
	.def	gl_isinfd;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfd
gl_isinfd:
	.seh_endprologue
	vmovsd	xmm1, QWORD PTR .LC16[rip]
	mov	eax, 1
	vcomisd	xmm1, xmm0
	ja	.L906
	xor	eax, eax
	vcomisd	xmm0, QWORD PTR .LC17[rip]
	seta	al
.L906:
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
	fld	TBYTE PTR .LC18[rip]
	fcomip	st, st(1)
	ja	.L912
	fld	TBYTE PTR .LC19[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L909
	.p2align 4,,10
	.p2align 3
.L912:
	fstp	st(0)
.L909:
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
	jp	.L915
	vaddss	xmm1, xmm0, xmm0
	vucomiss	xmm1, xmm0
	jp	.L922
	jne	.L922
.L915:
	ret
	.p2align 4,,10
	.p2align 3
.L922:
	vmovss	xmm2, DWORD PTR .LC20[rip]
	test	edx, edx
	jns	.L917
	vmovss	xmm2, DWORD PTR .LC21[rip]
.L917:
	test	dl, 1
	je	.L918
	.p2align 4
	.p2align 3
.L919:
	vmulss	xmm0, xmm0, xmm2
.L918:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L915
	vmulss	xmm2, xmm2, xmm2
	test	dl, 1
	jne	.L919
.L929:
	vmulss	xmm2, xmm2, xmm2
	mov	ecx, edx
	shr	ecx, 31
	add	edx, ecx
	sar	edx
	test	dl, 1
	jne	.L919
	jmp	.L929
	.seh_endproc
	.p2align 4
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	vucomisd	xmm0, xmm0
	jp	.L931
	vaddsd	xmm1, xmm0, xmm0
	vucomisd	xmm1, xmm0
	jp	.L938
	jne	.L938
.L931:
	ret
	.p2align 4,,10
	.p2align 3
.L938:
	vmovsd	xmm2, QWORD PTR .LC22[rip]
	test	edx, edx
	jns	.L933
	vmovsd	xmm2, QWORD PTR .LC23[rip]
.L933:
	test	dl, 1
	je	.L934
	.p2align 4
	.p2align 3
.L935:
	vmulsd	xmm0, xmm0, xmm2
.L934:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L931
	vmulsd	xmm2, xmm2, xmm2
	test	dl, 1
	jne	.L935
.L945:
	vmulsd	xmm2, xmm2, xmm2
	mov	ecx, edx
	shr	ecx, 31
	add	edx, ecx
	sar	edx
	test	dl, 1
	jne	.L935
	jmp	.L945
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
	jp	.L947
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L954
	jne	.L954
	jmp	.L947
	.p2align 4,,10
	.p2align 3
.L963:
	fstp	st(0)
.L947:
	fstp	TBYTE PTR [rax]
	ret
	.p2align 4,,10
	.p2align 3
.L954:
	test	r8d, r8d
	js	.L961
	fld	DWORD PTR .LC20[rip]
.L949:
	test	r8b, 1
	je	.L950
	.p2align 4
	.p2align 3
.L951:
	fmul	st(1), st
.L950:
	mov	edx, r8d
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	je	.L963
	fmul	st, st(0)
	test	r8b, 1
	jne	.L951
.L962:
	mov	ecx, r8d
	fmul	st, st(0)
	shr	ecx, 31
	add	r8d, ecx
	sar	r8d
	test	r8b, 1
	jne	.L951
	jmp	.L962
	.p2align 4,,10
	.p2align 3
.L961:
	fld	DWORD PTR .LC21[rip]
	jmp	.L949
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
	je	.L965
	lea	rax, -1[r8]
	cmp	rax, 30
	jbe	.L971
	mov	r9, r8
	xor	ebx, ebx
	and	r9, -32
	.p2align 5
	.p2align 4
	.p2align 3
.L967:
	vmovdqu	ymm0, YMMWORD PTR [rcx+rbx]
	vpxor	ymm1, ymm0, YMMWORD PTR [rdx+rbx]
	vmovdqu	YMMWORD PTR [rcx+rbx], ymm1
	add	rbx, 32
	cmp	rbx, r9
	jne	.L967
	mov	r11, r8
	lea	rax, [rcx+r9]
	lea	r10, [rdx+r9]
	sub	r11, r9
	cmp	r8, r9
	je	.L1022
	vzeroupper
.L966:
	sub	r8, r9
	lea	rbx, -1[r8]
	cmp	rbx, 14
	jbe	.L969
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
	je	.L965
.L969:
	movzx	r8d, BYTE PTR [r10]
	xor	BYTE PTR [rax], r8b
	cmp	r11, 1
	je	.L965
	movzx	r9d, BYTE PTR 1[r10]
	xor	BYTE PTR 1[rax], r9b
	cmp	r11, 2
	je	.L965
	movzx	ebx, BYTE PTR 2[r10]
	xor	BYTE PTR 2[rax], bl
	cmp	r11, 3
	je	.L965
	movzx	edx, BYTE PTR 3[r10]
	xor	BYTE PTR 3[rax], dl
	cmp	r11, 4
	je	.L965
	movzx	r8d, BYTE PTR 4[r10]
	xor	BYTE PTR 4[rax], r8b
	cmp	r11, 5
	je	.L965
	movzx	r9d, BYTE PTR 5[r10]
	xor	BYTE PTR 5[rax], r9b
	cmp	r11, 6
	je	.L965
	movzx	ebx, BYTE PTR 6[r10]
	xor	BYTE PTR 6[rax], bl
	cmp	r11, 7
	je	.L965
	movzx	edx, BYTE PTR 7[r10]
	xor	BYTE PTR 7[rax], dl
	cmp	r11, 8
	je	.L965
	movzx	r8d, BYTE PTR 8[r10]
	xor	BYTE PTR 8[rax], r8b
	cmp	r11, 9
	je	.L965
	movzx	r9d, BYTE PTR 9[r10]
	xor	BYTE PTR 9[rax], r9b
	cmp	r11, 10
	je	.L965
	movzx	ebx, BYTE PTR 10[r10]
	xor	BYTE PTR 10[rax], bl
	cmp	r11, 11
	je	.L965
	movzx	edx, BYTE PTR 11[r10]
	xor	BYTE PTR 11[rax], dl
	cmp	r11, 12
	je	.L965
	movzx	r8d, BYTE PTR 12[r10]
	xor	BYTE PTR 12[rax], r8b
	cmp	r11, 13
	je	.L965
	movzx	r9d, BYTE PTR 13[r10]
	xor	BYTE PTR 13[rax], r9b
	cmp	r11, 14
	je	.L965
	movzx	r10d, BYTE PTR 14[r10]
	xor	BYTE PTR 14[rax], r10b
.L965:
	mov	rax, rcx
	pop	rbx
	ret
.L971:
	mov	rax, rcx
	mov	r10, rdx
	mov	r11, r8
	xor	r9d, r9d
	jmp	.L966
.L1022:
	vzeroupper
	jmp	.L965
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
	je	.L1024
	.p2align 4
	.p2align 4
	.p2align 3
.L1025:
	add	r9, 1
	cmp	BYTE PTR [r9], 0
	jne	.L1025
.L1024:
	test	r8, r8
	jne	.L1026
	jmp	.L1027
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1028:
	add	rdx, 1
	add	r9, 1
	sub	r8, 1
	je	.L1027
.L1026:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [r9], r10b
	test	r10b, r10b
	jne	.L1028
	ret
	.p2align 4,,10
	.p2align 3
.L1027:
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
	je	.L1037
.L1038:
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L1040
.L1037:
	ret
	.p2align 4,,10
	.p2align 3
.L1040:
	add	rax, 1
	cmp	rdx, rax
	jne	.L1038
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
	je	.L1051
.L1047:
	mov	r8, rdx
	jmp	.L1050
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1049:
	add	r8, 1
	cmp	r9b, r10b
	je	.L1048
.L1050:
	movzx	r9d, BYTE PTR [r8]
	test	r9b, r9b
	jne	.L1049
	movzx	r10d, BYTE PTR 1[rax]
	add	rax, 1
	test	r10b, r10b
	jne	.L1047
.L1051:
	xor	eax, eax
.L1048:
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
.L1056:
	movsx	r9d, BYTE PTR [rcx]
	cmp	r9d, edx
	cmove	r8, rcx
	add	rcx, 1
	test	r9b, r9b
	jne	.L1056
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
	je	.L1070
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L1060:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L1060
	mov	r11, rcx
	sub	rax, rsi
	je	.L1058
	lea	rbx, -1[rsi+rax]
	jmp	.L1080
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1082:
	add	rcx, 1
	test	r8b, r8b
	je	.L1081
.L1080:
	movzx	r8d, BYTE PTR [rcx]
	cmp	r8b, dl
	jne	.L1082
	mov	r8d, edx
	mov	rax, rsi
	mov	r10, rcx
	jmp	.L1062
	.p2align 4,,10
	.p2align 3
.L1083:
	test	r9b, r9b
	setne	r11b
	cmp	r9b, r8b
	sete	r9b
	test	r11b, r9b
	je	.L1063
	movzx	r8d, BYTE PTR 1[r10]
	add	r10, 1
	add	rax, 1
	test	r8b, r8b
	je	.L1063
.L1062:
	movzx	r9d, BYTE PTR [rax]
	cmp	rax, rbx
	jne	.L1083
.L1063:
	cmp	r8b, BYTE PTR [rax]
	je	.L1070
	add	rcx, 1
	jmp	.L1080
	.p2align 4,,10
	.p2align 3
.L1081:
	xor	r11d, r11d
.L1058:
	mov	rax, r11
	pop	rbx
	pop	rsi
	ret
.L1070:
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
	ja	.L1094
	vcomisd	xmm0, xmm2
	jbe	.L1088
	vcomisd	xmm2, xmm1
	ja	.L1087
.L1088:
	ret
	.p2align 4,,10
	.p2align 3
.L1094:
	vcomisd	xmm1, xmm2
	jbe	.L1088
.L1087:
	vxorpd	xmm0, xmm0, XMMWORD PTR .LC24[rip]
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
	je	.L1095
	cmp	rdx, r9
	jb	.L1106
	sub	rdx, r9
	add	rdx, rcx
	jc	.L1106
	movzx	r11d, BYTE PTR [r8]
	jmp	.L1101
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1105:
	mov	rax, rcx
.L1097:
	cmp	rdx, rax
	jb	.L1106
.L1101:
	lea	rcx, 1[rax]
	cmp	BYTE PTR [rax], r11b
	jne	.L1105
	cmp	r9, 1
	je	.L1095
.L1100:
	mov	r10d, 1
	jmp	.L1098
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1099:
	add	r10, 1
	cmp	r9, r10
	je	.L1095
.L1098:
	movzx	ebx, BYTE PTR [r8+r10]
	cmp	BYTE PTR [rax+r10], bl
	je	.L1099
	cmp	rdx, rcx
	jb	.L1106
	lea	rax, 1[rcx]
	cmp	r11b, BYTE PTR [rcx]
	jne	.L1097
	mov	r10, rcx
	mov	rcx, rax
	mov	rax, r10
	jmp	.L1100
	.p2align 4,,10
	.p2align 3
.L1106:
	xor	eax, eax
.L1095:
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
	je	.L1116
	call	memmove
	mov	rcx, rax
.L1116:
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
	ja	.L1144
	vmovsd	xmm5, QWORD PTR .LC27[rip]
	xor	ecx, ecx
	vcomisd	xmm0, xmm5
	jb	.L1145
.L1123:
	vmovsd	xmm2, QWORD PTR .LC23[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1130:
	vmulsd	xmm0, xmm0, xmm2
	add	eax, 1
	vcomisd	xmm0, xmm5
	jnb	.L1130
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L1120
.L1147:
	vxorpd	xmm0, xmm0, XMMWORD PTR .LC24[rip]
.L1120:
	ret
	.p2align 4,,10
	.p2align 3
.L1145:
	vmovsd	xmm1, QWORD PTR .LC23[rip]
	vcomisd	xmm1, xmm0
	jbe	.L1126
	vucomisd	xmm0, xmm2
	jp	.L1136
	jne	.L1136
.L1126:
	mov	DWORD PTR [rdx], 0
	ret
	.p2align 4,,10
	.p2align 3
.L1144:
	vmovsd	xmm4, QWORD PTR .LC25[rip]
	vxorpd	xmm3, xmm0, XMMWORD PTR .LC24[rip]
	vcomisd	xmm4, xmm0
	jb	.L1146
	vmovsd	xmm5, QWORD PTR .LC27[rip]
	vmovapd	xmm0, xmm3
	mov	ecx, 1
	jmp	.L1123
	.p2align 4,,10
	.p2align 3
.L1146:
	vcomisd	xmm0, QWORD PTR .LC26[rip]
	jbe	.L1126
	vmovsd	xmm1, QWORD PTR .LC23[rip]
	mov	ecx, 1
.L1124:
	vmovapd	xmm0, xmm3
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1132:
	vaddsd	xmm0, xmm0, xmm0
	sub	eax, 1
	vcomisd	xmm1, xmm0
	ja	.L1132
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	jne	.L1147
	jmp	.L1120
.L1136:
	vmovapd	xmm3, xmm0
	xor	ecx, ecx
	jmp	.L1124
	.seh_endproc
	.p2align 4
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	xor	r8d, r8d
	test	rcx, rcx
	je	.L1148
	.p2align 5
	.p2align 4
	.p2align 3
.L1150:
	mov	rax, rcx
	and	eax, 1
	neg	rax
	and	rax, rdx
	add	rdx, rdx
	add	r8, rax
	shr	rcx
	jne	.L1150
.L1148:
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
	jb	.L1154
	jmp	.L1177
	.p2align 4,,10
	.p2align 3
.L1157:
	add	edx, edx
	add	r9d, r9d
	cmp	edx, ecx
	jnb	.L1156
	test	r9d, r9d
	je	.L1156
.L1154:
	test	edx, edx
	jns	.L1157
.L1158:
	xor	eax, eax
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L1160:
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
	jne	.L1160
.L1159:
	test	r8, r8
	cmovne	eax, ecx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1156:
	xor	eax, eax
	test	r9d, r9d
	jne	.L1158
	test	r8, r8
	cmovne	eax, ecx
	pop	rbx
	ret
.L1177:
	mov	eax, ecx
	sub	eax, edx
	cmp	ecx, edx
	setnb	dl
	cmovnb	ecx, eax
	movzx	eax, dl
	jmp	.L1159
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
	je	.L1180
	movsx	ecx, al
	sal	ecx, 8
	bsr	r8d, ecx
	xor	r8d, 31
	lea	r9d, -1[r8]
.L1180:
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
	je	.L1183
	bsr	rcx, rax
	xor	rcx, 63
	lea	r8d, -1[rcx]
.L1183:
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
	je	.L1186
	.p2align 5
	.p2align 4
	.p2align 3
.L1188:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L1188
.L1186:
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
	jb	.L1196
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L1307
.L1196:
	test	ebx, ebx
	je	.L1308
	lea	eax, -1[rbx]
	cmp	eax, 3
	jbe	.L1198
	lea	rsi, 8[rdx]
	mov	rdi, rcx
	sub	rdi, rsi
	cmp	rdi, 16
	jbe	.L1198
	mov	r11d, r8d
	xor	eax, eax
	shr	r11d, 5
	mov	r10d, r11d
	sal	r10, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1199:
	vmovdqu	ymm2, YMMWORD PTR [rdx+rax]
	vmovdqu	YMMWORD PTR [rcx+rax], ymm2
	add	rax, 32
	cmp	r10, rax
	jne	.L1199
	lea	esi, 0[0+r11*4]
	cmp	ebx, esi
	je	.L1202
	mov	edi, esi
	lea	r10d, 1[rsi]
	mov	r11, QWORD PTR [rdx+rdi*8]
	mov	QWORD PTR [rcx+rdi*8], r11
	cmp	r10d, ebx
	jnb	.L1202
	mov	rax, QWORD PTR [rdx+r10*8]
	add	esi, 2
	mov	QWORD PTR [rcx+r10*8], rax
	cmp	esi, ebx
	jnb	.L1202
	mov	rbx, QWORD PTR [rdx+rsi*8]
	mov	QWORD PTR [rcx+rsi*8], rbx
.L1202:
	cmp	r9d, r8d
	jnb	.L1304
	mov	esi, r8d
	mov	r10d, r9d
	sub	esi, r9d
	lea	eax, -1[rsi]
	cmp	eax, 14
	jbe	.L1287
	lea	rbx, [rcx+r10]
	lea	rdi, 1[rdx+r10]
	mov	r11, rbx
	sub	r11, rdi
	cmp	r11, 30
	jbe	.L1287
	cmp	eax, 30
	jbe	.L1219
	mov	r11d, esi
	lea	rdi, [rdx+r10]
	xor	eax, eax
	shr	r11d, 5
	sal	r11, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1204:
	vmovdqu	ymm3, YMMWORD PTR [rdi+rax]
	vmovdqu	YMMWORD PTR [rbx+rax], ymm3
	add	rax, 32
	cmp	r11, rax
	jne	.L1204
	mov	eax, esi
	and	eax, -32
	add	r9d, eax
	test	sil, 31
	je	.L1304
	sub	esi, eax
	lea	ebx, -1[rsi]
	cmp	ebx, 14
	jbe	.L1206
.L1203:
	add	rax, r10
	mov	r10d, esi
	and	r10d, -16
	vmovdqu	xmm4, XMMWORD PTR [rdx+rax]
	add	r9d, r10d
	and	esi, 15
	vmovdqu	XMMWORD PTR [rcx+rax], xmm4
	je	.L1304
.L1206:
	mov	esi, r9d
	lea	r11d, 1[r9]
	movzx	edi, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1304
	movzx	eax, BYTE PTR [rdx+r11]
	lea	ebx, 2[r9]
	mov	BYTE PTR [rcx+r11], al
	cmp	ebx, r8d
	jnb	.L1304
	movzx	r10d, BYTE PTR [rdx+rbx]
	lea	esi, 3[r9]
	mov	BYTE PTR [rcx+rbx], r10b
	cmp	esi, r8d
	jnb	.L1304
	movzx	edi, BYTE PTR [rdx+rsi]
	lea	r11d, 4[r9]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1304
	movzx	eax, BYTE PTR [rdx+r11]
	lea	ebx, 5[r9]
	mov	BYTE PTR [rcx+r11], al
	cmp	ebx, r8d
	jnb	.L1304
	movzx	r10d, BYTE PTR [rdx+rbx]
	lea	esi, 6[r9]
	mov	BYTE PTR [rcx+rbx], r10b
	cmp	esi, r8d
	jnb	.L1304
	movzx	edi, BYTE PTR [rdx+rsi]
	lea	r11d, 7[r9]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1304
	movzx	eax, BYTE PTR [rdx+r11]
	lea	ebx, 8[r9]
	mov	BYTE PTR [rcx+r11], al
	cmp	ebx, r8d
	jnb	.L1304
	movzx	r10d, BYTE PTR [rdx+rbx]
	lea	esi, 9[r9]
	mov	BYTE PTR [rcx+rbx], r10b
	cmp	esi, r8d
	jnb	.L1304
	movzx	edi, BYTE PTR [rdx+rsi]
	lea	r11d, 10[r9]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1304
	movzx	eax, BYTE PTR [rdx+r11]
	lea	ebx, 11[r9]
	mov	BYTE PTR [rcx+r11], al
	cmp	ebx, r8d
	jnb	.L1304
	movzx	r10d, BYTE PTR [rdx+rbx]
	lea	esi, 12[r9]
	mov	BYTE PTR [rcx+rbx], r10b
	cmp	esi, r8d
	jnb	.L1304
	movzx	edi, BYTE PTR [rdx+rsi]
	lea	r11d, 13[r9]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1304
	movzx	eax, BYTE PTR [rdx+r11]
	add	r9d, 14
	mov	BYTE PTR [rcx+r11], al
	cmp	r9d, r8d
	jnb	.L1304
	movzx	edx, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rcx+r9], dl
	vzeroupper
	jmp	.L1306
	.p2align 4,,10
	.p2align 3
.L1304:
	vzeroupper
.L1306:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1307:
	lea	r10d, -1[r8]
	test	r8d, r8d
	je	.L1306
	mov	edi, r10d
	cmp	r10d, 14
	jbe	.L1210
	mov	rsi, rcx
	sub	rsi, rdx
	add	rsi, 31
	cmp	rsi, 30
	jbe	.L1210
	cmp	r10d, 30
	jbe	.L1220
	mov	r11d, r8d
	lea	rbx, -31[rdi]
	xor	eax, eax
	shr	r11d, 5
	lea	r9, [rdx+rbx]
	add	rbx, rcx
	neg	r11
	sal	r11, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1212:
	vmovdqu	ymm0, YMMWORD PTR [r9+rax]
	vmovdqu	YMMWORD PTR [rbx+rax], ymm0
	sub	rax, 32
	cmp	rax, r11
	jne	.L1212
	mov	esi, r8d
	and	esi, -32
	sub	r10d, esi
	test	r8b, 31
	je	.L1304
	sub	r8d, esi
	lea	ebx, -1[r8]
	cmp	ebx, 14
	jbe	.L1309
	vzeroupper
.L1211:
	lea	rdi, -15[rdi]
	mov	r9d, r8d
	sub	rdi, rsi
	and	r9d, -16
	vmovdqu	xmm1, XMMWORD PTR [rdx+rdi]
	sub	r10d, r9d
	and	r8d, 15
	vmovdqu	XMMWORD PTR [rcx+rdi], xmm1
	je	.L1306
.L1215:
	mov	r11d, r10d
	lea	eax, -1[r10]
	movzx	r8d, BYTE PTR [rdx+r11]
	mov	BYTE PTR [rcx+r11], r8b
	test	r10d, r10d
	je	.L1306
	mov	esi, eax
	lea	edi, -2[r10]
	movzx	ebx, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], bl
	test	eax, eax
	je	.L1306
	mov	r11d, edi
	lea	eax, -3[r10]
	movzx	r9d, BYTE PTR [rdx+r11]
	mov	BYTE PTR [rcx+r11], r9b
	test	edi, edi
	je	.L1306
	mov	r8d, eax
	lea	ebx, -4[r10]
	movzx	esi, BYTE PTR [rdx+r8]
	mov	BYTE PTR [rcx+r8], sil
	test	eax, eax
	je	.L1306
	mov	edi, ebx
	lea	eax, -5[r10]
	movzx	r11d, BYTE PTR [rdx+rdi]
	mov	BYTE PTR [rcx+rdi], r11b
	test	ebx, ebx
	je	.L1306
	mov	r8d, eax
	lea	esi, -6[r10]
	movzx	r9d, BYTE PTR [rdx+r8]
	mov	BYTE PTR [rcx+r8], r9b
	test	eax, eax
	je	.L1306
	mov	ebx, esi
	lea	r11d, -7[r10]
	movzx	edi, BYTE PTR [rdx+rbx]
	mov	BYTE PTR [rcx+rbx], dil
	test	esi, esi
	je	.L1306
	mov	eax, r11d
	lea	esi, -8[r10]
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	test	r11d, r11d
	je	.L1306
	mov	ebx, esi
	lea	edi, -9[r10]
	movzx	r9d, BYTE PTR [rdx+rbx]
	mov	BYTE PTR [rcx+rbx], r9b
	test	esi, esi
	je	.L1306
	mov	r11d, edi
	lea	r8d, -10[r10]
	movzx	eax, BYTE PTR [rdx+r11]
	mov	BYTE PTR [rcx+r11], al
	test	edi, edi
	je	.L1306
	mov	esi, r8d
	lea	edi, -11[r10]
	movzx	ebx, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], bl
	test	r8d, r8d
	je	.L1306
	mov	r11d, edi
	lea	r8d, -12[r10]
	movzx	r9d, BYTE PTR [rdx+r11]
	mov	BYTE PTR [rcx+r11], r9b
	test	edi, edi
	je	.L1306
	mov	eax, r8d
	lea	ebx, -13[r10]
	movzx	esi, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], sil
	test	r8d, r8d
	je	.L1306
	mov	edi, ebx
	lea	r10d, -14[r10]
	movzx	r11d, BYTE PTR [rdx+rdi]
	mov	BYTE PTR [rcx+rdi], r11b
	test	ebx, ebx
	je	.L1306
	movzx	edx, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], dl
	jmp	.L1306
.L1219:
	xor	eax, eax
	jmp	.L1203
	.p2align 4,,10
	.p2align 3
.L1198:
	lea	esi, 0[0+rbx*8]
	xor	edi, edi
	.p2align 5
	.p2align 4
	.p2align 3
.L1201:
	mov	r11, QWORD PTR [rdx+rdi]
	mov	QWORD PTR [rcx+rdi], r11
	add	rdi, 8
	cmp	rdi, rsi
	jne	.L1201
	jmp	.L1202
	.p2align 4,,10
	.p2align 3
.L1308:
	mov	r10d, r9d
	test	r8d, r8d
	je	.L1306
	.p2align 5
	.p2align 4
	.p2align 3
.L1208:
	movzx	r9d, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], r9b
	add	r10, 1
	cmp	r10d, r8d
	jb	.L1208
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1287:
	vzeroupper
	jmp	.L1208
.L1210:
	mov	r9, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L1217:
	movzx	r8d, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rcx+r9], r8b
	sub	r9, 1
	jnb	.L1217
	jmp	.L1306
.L1220:
	xor	esi, esi
	jmp	.L1211
.L1309:
	vzeroupper
	jmp	.L1215
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
	jb	.L1314
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L1402
.L1314:
	test	r10d, r10d
	je	.L1313
	lea	eax, -1[r10]
	cmp	eax, 6
	jbe	.L1317
	lea	rbx, 2[rdx]
	mov	rsi, rcx
	sub	rsi, rbx
	cmp	rsi, 28
	jbe	.L1317
	cmp	eax, 14
	jbe	.L1334
	mov	r11d, r8d
	xor	eax, eax
	shr	r11d, 5
	mov	r9d, r11d
	sal	r9, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1319:
	vmovdqu	ymm2, YMMWORD PTR [rdx+rax]
	vmovdqu	YMMWORD PTR [rcx+rax], ymm2
	add	rax, 32
	cmp	rax, r9
	jne	.L1319
	mov	ebx, r11d
	sal	ebx, 4
	cmp	r10d, ebx
	je	.L1396
	mov	esi, r10d
	sub	esi, ebx
	lea	r11d, -1[rsi]
	cmp	r11d, 6
	jbe	.L1403
	vzeroupper
.L1318:
	mov	r9d, ebx
	mov	eax, esi
	and	eax, -8
	vmovdqu	xmm3, XMMWORD PTR [rdx+r9*2]
	add	ebx, eax
	and	esi, 7
	vmovdqu	XMMWORD PTR [rcx+r9*2], xmm3
	je	.L1313
.L1321:
	mov	esi, ebx
	lea	r9d, 1[rbx]
	movzx	r11d, WORD PTR [rdx+rsi*2]
	mov	WORD PTR [rcx+rsi*2], r11w
	cmp	r9d, r10d
	jnb	.L1313
	movzx	eax, WORD PTR [rdx+r9*2]
	lea	esi, 2[rbx]
	mov	WORD PTR [rcx+r9*2], ax
	cmp	esi, r10d
	jnb	.L1313
	movzx	r11d, WORD PTR [rdx+rsi*2]
	lea	r9d, 3[rbx]
	mov	WORD PTR [rcx+rsi*2], r11w
	cmp	r9d, r10d
	jnb	.L1313
	movzx	eax, WORD PTR [rdx+r9*2]
	lea	esi, 4[rbx]
	mov	WORD PTR [rcx+r9*2], ax
	cmp	esi, r10d
	jnb	.L1313
	movzx	r11d, WORD PTR [rdx+rsi*2]
	lea	r9d, 5[rbx]
	mov	WORD PTR [rcx+rsi*2], r11w
	cmp	r9d, r10d
	jnb	.L1313
	movzx	eax, WORD PTR [rdx+r9*2]
	add	ebx, 6
	mov	WORD PTR [rcx+r9*2], ax
	cmp	ebx, r10d
	jnb	.L1313
	movzx	r10d, WORD PTR [rdx+rbx*2]
	mov	WORD PTR [rcx+rbx*2], r10w
.L1313:
	test	r8b, 1
	je	.L1400
.L1405:
	lea	r8d, -1[r8]
	movzx	edx, BYTE PTR [rdx+r8]
	mov	BYTE PTR [rcx+r8], dl
.L1400:
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1402:
	lea	r10d, -1[r8]
	test	r8d, r8d
	je	.L1400
	mov	r9d, r10d
	cmp	r10d, 14
	jbe	.L1332
	mov	rbx, rcx
	sub	rbx, rdx
	add	rbx, 31
	cmp	rbx, 30
	jbe	.L1332
	cmp	r10d, 30
	jbe	.L1335
	mov	r11d, r8d
	lea	rbx, -31[r9]
	xor	eax, eax
	shr	r11d, 5
	lea	rsi, [rdx+rbx]
	add	rbx, rcx
	neg	r11
	sal	r11, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1328:
	vmovdqu	ymm0, YMMWORD PTR [rsi+rax]
	vmovdqu	YMMWORD PTR [rbx+rax], ymm0
	sub	rax, 32
	cmp	rax, r11
	jne	.L1328
	mov	ebx, r8d
	and	ebx, -32
	sub	r10d, ebx
	test	r8b, 31
	je	.L1398
	sub	r8d, ebx
	lea	esi, -1[r8]
	cmp	esi, 14
	jbe	.L1404
	vzeroupper
.L1327:
	lea	r9, -15[r9]
	mov	r11d, r8d
	sub	r9, rbx
	and	r11d, -16
	vmovdqu	xmm1, XMMWORD PTR [rdx+r9]
	sub	r10d, r11d
	and	r8d, 15
	vmovdqu	XMMWORD PTR [rcx+r9], xmm1
	je	.L1400
.L1330:
	mov	eax, r10d
	lea	ebx, -1[r10]
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	test	r10d, r10d
	je	.L1400
	mov	esi, ebx
	lea	r11d, -2[r10]
	movzx	r9d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r9b
	test	ebx, ebx
	je	.L1400
	mov	eax, r11d
	lea	ebx, -3[r10]
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	test	r11d, r11d
	je	.L1400
	mov	esi, ebx
	lea	r11d, -4[r10]
	movzx	r9d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r9b
	test	ebx, ebx
	je	.L1400
	mov	eax, r11d
	lea	ebx, -5[r10]
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	test	r11d, r11d
	je	.L1400
	mov	esi, ebx
	lea	r11d, -6[r10]
	movzx	r9d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r9b
	test	ebx, ebx
	je	.L1400
	mov	eax, r11d
	lea	ebx, -7[r10]
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	test	r11d, r11d
	je	.L1400
	mov	esi, ebx
	lea	r11d, -8[r10]
	movzx	r9d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r9b
	test	ebx, ebx
	je	.L1400
	mov	eax, r11d
	lea	ebx, -9[r10]
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	test	r11d, r11d
	je	.L1400
	mov	esi, ebx
	lea	r11d, -10[r10]
	movzx	r9d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r9b
	test	ebx, ebx
	je	.L1400
	mov	eax, r11d
	lea	ebx, -11[r10]
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	test	r11d, r11d
	je	.L1400
	mov	esi, ebx
	lea	r11d, -12[r10]
	movzx	r9d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r9b
	test	ebx, ebx
	je	.L1400
	mov	eax, r11d
	lea	ebx, -13[r10]
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	test	r11d, r11d
	je	.L1400
	mov	esi, ebx
	lea	r10d, -14[r10]
	movzx	r9d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r9b
	test	ebx, ebx
	je	.L1400
	movzx	edx, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], dl
	jmp	.L1400
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1332:
	movzx	r11d, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rcx+r9], r11b
	sub	r9, 1
	jb	.L1400
	movzx	r11d, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rcx+r9], r11b
	sub	r9, 1
	jnb	.L1332
	jmp	.L1400
.L1334:
	mov	esi, r10d
	xor	ebx, ebx
	jmp	.L1318
	.p2align 4,,10
	.p2align 3
.L1317:
	add	r10d, r10d
	xor	esi, esi
	mov	ebx, r10d
	.p2align 5
	.p2align 4
	.p2align 3
.L1323:
	movzx	r11d, WORD PTR [rdx+rsi]
	mov	WORD PTR [rcx+rsi], r11w
	add	rsi, 2
	cmp	rbx, rsi
	jne	.L1323
	test	r8b, 1
	je	.L1400
	jmp	.L1405
.L1403:
	vzeroupper
	jmp	.L1321
.L1396:
	vzeroupper
	jmp	.L1313
.L1335:
	xor	ebx, ebx
	jmp	.L1327
.L1404:
	vzeroupper
	jmp	.L1330
.L1398:
	vzeroupper
	jmp	.L1400
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
	jb	.L1411
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L1529
.L1411:
	test	ebx, ebx
	je	.L1530
	lea	eax, -1[rbx]
	cmp	eax, 2
	jbe	.L1413
	lea	rsi, 4[rdx]
	mov	rdi, rcx
	sub	rdi, rsi
	cmp	rdi, 24
	jbe	.L1413
	cmp	eax, 6
	jbe	.L1437
	mov	esi, r8d
	xor	edi, edi
	shr	esi, 5
	mov	r11d, esi
	sal	r11, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1415:
	vmovdqu	ymm2, YMMWORD PTR [rdx+rdi]
	vmovdqu	YMMWORD PTR [rcx+rdi], ymm2
	add	rdi, 32
	cmp	r11, rdi
	jne	.L1415
	lea	eax, 0[0+rsi*8]
	cmp	ebx, eax
	je	.L1420
	mov	r10d, ebx
	sub	r10d, eax
	lea	esi, -1[r10]
	cmp	esi, 2
	jbe	.L1417
.L1414:
	mov	r11d, eax
	mov	edi, r10d
	and	edi, -4
	vmovdqu	xmm3, XMMWORD PTR [rdx+r11*4]
	add	eax, edi
	and	r10d, 3
	vmovdqu	XMMWORD PTR [rcx+r11*4], xmm3
	je	.L1420
.L1417:
	mov	r10d, eax
	lea	edi, 1[rax]
	mov	esi, DWORD PTR [rdx+r10*4]
	mov	DWORD PTR [rcx+r10*4], esi
	cmp	edi, ebx
	jnb	.L1420
	mov	r11d, DWORD PTR [rdx+rdi*4]
	add	eax, 2
	mov	DWORD PTR [rcx+rdi*4], r11d
	cmp	eax, ebx
	jnb	.L1420
	mov	ebx, DWORD PTR [rdx+rax*4]
	mov	DWORD PTR [rcx+rax*4], ebx
.L1420:
	cmp	r9d, r8d
	jnb	.L1526
	mov	esi, r8d
	mov	r10d, r9d
	sub	esi, r9d
	lea	eax, -1[rsi]
	cmp	eax, 14
	jbe	.L1509
	lea	rbx, [rcx+r10]
	lea	rdi, 1[rdx+r10]
	mov	r11, rbx
	sub	r11, rdi
	cmp	r11, 30
	jbe	.L1509
	cmp	eax, 30
	jbe	.L1438
	mov	r11d, esi
	lea	rdi, [rdx+r10]
	xor	eax, eax
	shr	r11d, 5
	sal	r11, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1422:
	vmovdqu	ymm4, YMMWORD PTR [rdi+rax]
	vmovdqu	YMMWORD PTR [rbx+rax], ymm4
	add	rax, 32
	cmp	rax, r11
	jne	.L1422
	mov	eax, esi
	and	eax, -32
	add	r9d, eax
	test	sil, 31
	je	.L1526
	sub	esi, eax
	lea	ebx, -1[rsi]
	cmp	ebx, 14
	jbe	.L1424
.L1421:
	add	rax, r10
	mov	r10d, esi
	and	r10d, -16
	vmovdqu	xmm5, XMMWORD PTR [rdx+rax]
	add	r9d, r10d
	and	esi, 15
	vmovdqu	XMMWORD PTR [rcx+rax], xmm5
	je	.L1526
.L1424:
	mov	esi, r9d
	lea	r11d, 1[r9]
	movzx	edi, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1526
	movzx	eax, BYTE PTR [rdx+r11]
	lea	ebx, 2[r9]
	mov	BYTE PTR [rcx+r11], al
	cmp	ebx, r8d
	jnb	.L1526
	movzx	r10d, BYTE PTR [rdx+rbx]
	lea	esi, 3[r9]
	mov	BYTE PTR [rcx+rbx], r10b
	cmp	esi, r8d
	jnb	.L1526
	movzx	edi, BYTE PTR [rdx+rsi]
	lea	r11d, 4[r9]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1526
	movzx	eax, BYTE PTR [rdx+r11]
	lea	ebx, 5[r9]
	mov	BYTE PTR [rcx+r11], al
	cmp	ebx, r8d
	jnb	.L1526
	movzx	r10d, BYTE PTR [rdx+rbx]
	lea	esi, 6[r9]
	mov	BYTE PTR [rcx+rbx], r10b
	cmp	esi, r8d
	jnb	.L1526
	movzx	edi, BYTE PTR [rdx+rsi]
	lea	r11d, 7[r9]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1526
	movzx	eax, BYTE PTR [rdx+r11]
	lea	ebx, 8[r9]
	mov	BYTE PTR [rcx+r11], al
	cmp	ebx, r8d
	jnb	.L1526
	movzx	r10d, BYTE PTR [rdx+rbx]
	lea	esi, 9[r9]
	mov	BYTE PTR [rcx+rbx], r10b
	cmp	esi, r8d
	jnb	.L1526
	movzx	edi, BYTE PTR [rdx+rsi]
	lea	r11d, 10[r9]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1526
	movzx	eax, BYTE PTR [rdx+r11]
	lea	ebx, 11[r9]
	mov	BYTE PTR [rcx+r11], al
	cmp	ebx, r8d
	jnb	.L1526
	movzx	r10d, BYTE PTR [rdx+rbx]
	lea	esi, 12[r9]
	mov	BYTE PTR [rcx+rbx], r10b
	cmp	esi, r8d
	jnb	.L1526
	movzx	edi, BYTE PTR [rdx+rsi]
	lea	r11d, 13[r9]
	mov	BYTE PTR [rcx+rsi], dil
	cmp	r11d, r8d
	jnb	.L1526
	movzx	eax, BYTE PTR [rdx+r11]
	add	r9d, 14
	mov	BYTE PTR [rcx+r11], al
	cmp	r9d, r8d
	jnb	.L1526
	movzx	edx, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rcx+r9], dl
	vzeroupper
	jmp	.L1528
	.p2align 4,,10
	.p2align 3
.L1529:
	lea	r10d, -1[r8]
	test	r8d, r8d
	je	.L1528
	mov	edi, r10d
	cmp	r10d, 14
	jbe	.L1428
	mov	rsi, rcx
	sub	rsi, rdx
	add	rsi, 31
	cmp	rsi, 30
	jbe	.L1428
	cmp	r10d, 30
	jbe	.L1439
	mov	r11d, r8d
	lea	rbx, -31[rdi]
	xor	eax, eax
	shr	r11d, 5
	lea	r9, [rdx+rbx]
	add	rbx, rcx
	neg	r11
	sal	r11, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1430:
	vmovdqu	ymm0, YMMWORD PTR [r9+rax]
	vmovdqu	YMMWORD PTR [rbx+rax], ymm0
	sub	rax, 32
	cmp	rax, r11
	jne	.L1430
	mov	esi, r8d
	and	esi, -32
	sub	r10d, esi
	test	r8b, 31
	je	.L1526
	sub	r8d, esi
	lea	ebx, -1[r8]
	cmp	ebx, 14
	jbe	.L1531
	vzeroupper
.L1429:
	lea	rdi, -15[rdi]
	mov	r9d, r8d
	sub	rdi, rsi
	and	r9d, -16
	vmovdqu	xmm1, XMMWORD PTR [rdx+rdi]
	sub	r10d, r9d
	and	r8d, 15
	vmovdqu	XMMWORD PTR [rcx+rdi], xmm1
	je	.L1528
.L1433:
	mov	r11d, r10d
	lea	eax, -1[r10]
	movzx	r8d, BYTE PTR [rdx+r11]
	mov	BYTE PTR [rcx+r11], r8b
	test	r10d, r10d
	je	.L1528
	mov	esi, eax
	lea	edi, -2[r10]
	movzx	ebx, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], bl
	test	eax, eax
	je	.L1528
	mov	r11d, edi
	lea	eax, -3[r10]
	movzx	r9d, BYTE PTR [rdx+r11]
	mov	BYTE PTR [rcx+r11], r9b
	test	edi, edi
	je	.L1528
	mov	r8d, eax
	lea	ebx, -4[r10]
	movzx	esi, BYTE PTR [rdx+r8]
	mov	BYTE PTR [rcx+r8], sil
	test	eax, eax
	je	.L1528
	mov	edi, ebx
	lea	eax, -5[r10]
	movzx	r11d, BYTE PTR [rdx+rdi]
	mov	BYTE PTR [rcx+rdi], r11b
	test	ebx, ebx
	je	.L1528
	mov	r8d, eax
	lea	esi, -6[r10]
	movzx	r9d, BYTE PTR [rdx+r8]
	mov	BYTE PTR [rcx+r8], r9b
	test	eax, eax
	je	.L1528
	mov	ebx, esi
	lea	r11d, -7[r10]
	movzx	edi, BYTE PTR [rdx+rbx]
	mov	BYTE PTR [rcx+rbx], dil
	test	esi, esi
	je	.L1528
	mov	eax, r11d
	lea	esi, -8[r10]
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	test	r11d, r11d
	je	.L1528
	mov	ebx, esi
	lea	edi, -9[r10]
	movzx	r9d, BYTE PTR [rdx+rbx]
	mov	BYTE PTR [rcx+rbx], r9b
	test	esi, esi
	je	.L1528
	mov	r11d, edi
	lea	r8d, -10[r10]
	movzx	eax, BYTE PTR [rdx+r11]
	mov	BYTE PTR [rcx+r11], al
	test	edi, edi
	je	.L1528
	mov	esi, r8d
	lea	edi, -11[r10]
	movzx	ebx, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], bl
	test	r8d, r8d
	je	.L1528
	mov	r11d, edi
	lea	r8d, -12[r10]
	movzx	r9d, BYTE PTR [rdx+r11]
	mov	BYTE PTR [rcx+r11], r9b
	test	edi, edi
	je	.L1528
	mov	eax, r8d
	lea	ebx, -13[r10]
	movzx	esi, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], sil
	test	r8d, r8d
	je	.L1528
	mov	edi, ebx
	lea	r10d, -14[r10]
	movzx	r11d, BYTE PTR [rdx+rdi]
	mov	BYTE PTR [rcx+rdi], r11b
	test	ebx, ebx
	je	.L1528
	movzx	edx, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], dl
	jmp	.L1528
	.p2align 4,,10
	.p2align 3
.L1526:
	vzeroupper
.L1528:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
.L1437:
	mov	r10d, ebx
	xor	eax, eax
	jmp	.L1414
	.p2align 4,,10
	.p2align 3
.L1413:
	lea	esi, 0[0+rbx*4]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L1419:
	mov	r10d, DWORD PTR [rdx+rax]
	mov	DWORD PTR [rcx+rax], r10d
	add	rax, 4
	cmp	rsi, rax
	jne	.L1419
	jmp	.L1420
	.p2align 4,,10
	.p2align 3
.L1530:
	mov	r10d, r9d
	test	r8d, r8d
	je	.L1528
	.p2align 5
	.p2align 4
	.p2align 3
.L1426:
	movzx	r9d, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], r9b
	add	r10, 1
	cmp	r10d, r8d
	jb	.L1426
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1509:
	vzeroupper
	jmp	.L1426
.L1438:
	xor	eax, eax
	jmp	.L1421
.L1428:
	mov	r9, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L1435:
	movzx	r8d, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rcx+r9], r8b
	sub	r9, 1
	jnb	.L1435
	jmp	.L1528
.L1439:
	xor	esi, esi
	jmp	.L1429
.L1531:
	vzeroupper
	jmp	.L1433
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
	js	.L1540
	vcvtsi2sd	xmm0, xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L1540:
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
	js	.L1543
	vcvtsi2ss	xmm0, xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L1543:
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
	vmovdqa	ymm1, YMMWORD PTR .LC28[rip]
	mov	eax, 1
	vmovd	xmm2, eax
	vpbroadcastd	ymm5, xmm2
	movzx	edx, cx
	vmovd	xmm0, edx
	vpbroadcastd	ymm4, xmm0
	vpsravd	ymm3, ymm4, ymm1
	vpand	ymm0, ymm3, ymm5
	vpxor	xmm3, xmm3, xmm3
	vpcmpeqd	ymm1, ymm0, ymm3
	vpcmpeqd	ymm2, ymm1, ymm3
	vptest	ymm2, ymm2
	jne	.L1552
	vmovdqa	ymm0, YMMWORD PTR .LC29[rip]
	vpsravd	ymm4, ymm4, ymm0
	vpand	ymm5, ymm4, ymm5
	vpcmpeqd	ymm1, ymm5, ymm3
	vpcmpeqd	ymm3, ymm1, ymm3
	vptest	ymm3, ymm3
	jne	.L1553
.L1559:
	mov	eax, 16
.L1546:
	vzeroupper
	ret
.L1552:
	vmovdqa	ymm2, YMMWORD PTR .LC5[rip]
	vmovdqa	ymm0, YMMWORD PTR .LC10[rip]
.L1547:
	mov	ecx, 15
	vmovd	r8d, xmm0
	vmovd	r9d, xmm2
	mov	r10d, ecx
	sub	r10d, r8d
	bt	edx, r10d
	jc	.L1565
	lea	eax, 1[r8]
	mov	r11d, ecx
	sub	r11d, eax
	bt	edx, r11d
	jc	.L1546
	lea	eax, 2[r8]
	cmp	r9d, 2
	je	.L1559
	mov	r10d, ecx
	sub	r10d, eax
	bt	edx, r10d
	jc	.L1546
	lea	eax, 3[r8]
	cmp	r9d, 3
	je	.L1559
	mov	r11d, ecx
	sub	r11d, eax
	bt	edx, r11d
	jc	.L1546
	lea	eax, 4[r8]
	cmp	r9d, 4
	je	.L1559
	mov	r10d, ecx
	sub	r10d, eax
	bt	edx, r10d
	jc	.L1546
	lea	eax, 5[r8]
	cmp	r9d, 5
	je	.L1559
	mov	r11d, ecx
	sub	r11d, eax
	bt	edx, r11d
	jc	.L1546
	lea	eax, 6[r8]
	cmp	r9d, 6
	je	.L1559
	mov	r10d, ecx
	sub	r10d, eax
	bt	edx, r10d
	jc	.L1546
	lea	eax, 7[r8]
	cmp	r9d, 7
	je	.L1559
	sub	ecx, eax
	mov	r9d, 16
	bt	edx, ecx
	cmovnc	eax, r9d
	vzeroupper
	ret
.L1553:
	vmovdqa	ymm2, YMMWORD PTR .LC11[rip]
	vmovdqa	ymm0, YMMWORD PTR .LC8[rip]
	jmp	.L1547
.L1565:
	mov	eax, r8d
	jmp	.L1546
	.seh_endproc
	.p2align 4
	.globl	__ctzhi2
	.def	__ctzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzhi2
__ctzhi2:
	.seh_endprologue
	vmovdqa	ymm2, YMMWORD PTR .LC10[rip]
	mov	eax, 1
	vpxor	xmm4, xmm4, xmm4
	vmovd	xmm3, eax
	vpbroadcastd	ymm3, xmm3
	movzx	ecx, cx
	vmovd	xmm0, ecx
	vpbroadcastd	ymm5, xmm0
	vpsravd	ymm1, ymm5, ymm2
	vpand	ymm0, ymm1, ymm3
	vpcmpeqd	ymm1, ymm0, ymm4
	vpcmpeqd	ymm0, ymm1, ymm4
	vptest	ymm0, ymm0
	jne	.L1572
	vmovdqa	ymm2, YMMWORD PTR .LC8[rip]
	vpsravd	ymm5, ymm5, ymm2
	vpand	ymm3, ymm5, ymm3
	vpcmpeqd	ymm1, ymm3, ymm4
	vpcmpeqd	ymm4, ymm1, ymm4
	vptest	ymm4, ymm4
	jne	.L1573
.L1579:
	mov	eax, 16
.L1566:
	vzeroupper
	ret
.L1572:
	vmovdqa	ymm0, YMMWORD PTR .LC5[rip]
.L1567:
	vmovd	edx, xmm2
	vmovd	r8d, xmm0
	bt	ecx, edx
	jc	.L1585
	lea	eax, 1[rdx]
	bt	ecx, eax
	jc	.L1566
	lea	eax, 2[rdx]
	cmp	r8d, 2
	je	.L1579
	bt	ecx, eax
	jc	.L1566
	lea	eax, 3[rdx]
	cmp	r8d, 3
	je	.L1579
	bt	ecx, eax
	jc	.L1566
	lea	eax, 4[rdx]
	cmp	r8d, 4
	je	.L1579
	bt	ecx, eax
	jc	.L1566
	lea	eax, 5[rdx]
	cmp	r8d, 5
	je	.L1579
	bt	ecx, eax
	jc	.L1566
	lea	eax, 6[rdx]
	cmp	r8d, 6
	je	.L1579
	bt	ecx, eax
	jc	.L1566
	lea	eax, 7[rdx]
	cmp	r8d, 7
	je	.L1579
	bt	ecx, eax
	mov	r9d, 16
	cmovnc	eax, r9d
	vzeroupper
	ret
.L1573:
	vmovdqa	ymm0, YMMWORD PTR .LC11[rip]
	jmp	.L1567
.L1585:
	mov	eax, edx
	jmp	.L1566
	.seh_endproc
	.p2align 4
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	vcomiss	xmm0, DWORD PTR .LC30[rip]
	jnb	.L1592
	vcvttss2si	eax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L1592:
	vsubss	xmm0, xmm0, DWORD PTR .LC30[rip]
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
	vmovdqa	ymm1, YMMWORD PTR .LC10[rip]
	mov	eax, 1
	vmovd	xmm2, eax
	vpbroadcastd	ymm5, xmm2
	movzx	ecx, cx
	vmovd	xmm0, ecx
	vpbroadcastd	ymm4, xmm0
	vmovdqa	ymm0, YMMWORD PTR .LC8[rip]
	vpsravd	ymm3, ymm4, ymm1
	vpsravd	ymm4, ymm4, ymm0
	vpand	ymm1, ymm3, ymm5
	vpand	ymm3, ymm4, ymm5
	vpaddd	ymm2, ymm1, ymm3
	vextracti128	xmm5, ymm2, 0x1
	vpaddd	xmm0, xmm5, xmm2
	vpsrldq	xmm1, xmm0, 8
	vpaddd	xmm4, xmm0, xmm1
	vpsrldq	xmm3, xmm4, 4
	vpaddd	xmm2, xmm4, xmm3
	vmovd	eax, xmm2
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
	vmovdqa	ymm1, YMMWORD PTR .LC10[rip]
	mov	eax, 1
	vmovd	xmm2, eax
	vpbroadcastd	ymm5, xmm2
	movzx	ecx, cx
	vmovd	xmm0, ecx
	vpbroadcastd	ymm4, xmm0
	vmovdqa	ymm0, YMMWORD PTR .LC8[rip]
	vpsravd	ymm3, ymm4, ymm1
	vpsravd	ymm4, ymm4, ymm0
	vpand	ymm1, ymm3, ymm5
	vpand	ymm3, ymm4, ymm5
	vpaddd	ymm2, ymm1, ymm3
	vextracti128	xmm5, ymm2, 0x1
	vpaddd	xmm0, xmm5, xmm2
	vpsrldq	xmm1, xmm0, 8
	vpaddd	xmm4, xmm0, xmm1
	vpsrldq	xmm3, xmm4, 4
	vpaddd	xmm2, xmm4, xmm3
	vmovd	eax, xmm2
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
	je	.L1595
	.p2align 5
	.p2align 4
	.p2align 3
.L1597:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L1597
.L1595:
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
	je	.L1600
	test	edx, edx
	je	.L1600
	.p2align 5
	.p2align 4
	.p2align 3
.L1602:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	r8d, eax
	shr	edx
	jne	.L1602
.L1600:
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
	jb	.L1608
	jmp	.L1631
	.p2align 4,,10
	.p2align 3
.L1611:
	add	edx, edx
	add	r9d, r9d
	cmp	edx, ecx
	jnb	.L1610
	test	r9d, r9d
	je	.L1610
.L1608:
	test	edx, edx
	jns	.L1611
.L1612:
	xor	eax, eax
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L1614:
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
	jne	.L1614
.L1613:
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1610:
	xor	eax, eax
	test	r9d, r9d
	jne	.L1612
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
.L1631:
	mov	eax, ecx
	sub	eax, edx
	cmp	ecx, edx
	setnb	dl
	cmovnb	ecx, eax
	movzx	eax, dl
	jmp	.L1613
	.seh_endproc
	.p2align 4
	.globl	__mspabi_cmpf
	.def	__mspabi_cmpf;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpf
__mspabi_cmpf:
	.seh_endprologue
	mov	eax, -1
	vcomiss	xmm1, xmm0
	ja	.L1634
	xor	eax, eax
	vcomiss	xmm0, xmm1
	seta	al
.L1634:
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
	ja	.L1637
	xor	eax, eax
	vcomisd	xmm0, xmm1
	seta	al
.L1637:
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
	js	.L1651
	je	.L1647
	xor	r11d, r11d
.L1644:
	mov	r8d, 1
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L1646:
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
	jne	.L1646
	mov	eax, r9d
	neg	eax
	test	r11d, r11d
	cmove	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L1651:
	neg	edx
	mov	r11d, 1
	jmp	.L1644
	.p2align 4,,10
	.p2align 3
.L1647:
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
	jns	.L1653
	neg	ecx
	xor	eax, eax
	mov	ebx, 1
.L1653:
	test	edx, edx
	jns	.L1654
	neg	edx
	mov	ebx, eax
.L1654:
	mov	r8d, edx
	mov	r9d, ecx
	mov	eax, 1
	cmp	edx, ecx
	jb	.L1655
	jmp	.L1679
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1682:
	test	eax, eax
	je	.L1660
.L1655:
	add	r8d, r8d
	add	eax, eax
	cmp	r8d, ecx
	jb	.L1682
.L1660:
	xor	edx, edx
	xor	r11d, r11d
	test	eax, eax
	je	.L1658
	.p2align 6
	.p2align 4
	.p2align 3
.L1657:
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
	jne	.L1657
.L1658:
	mov	eax, edx
	neg	eax
	test	ebx, ebx
	cmove	eax, edx
	pop	rbx
	ret
.L1679:
	cmp	ecx, edx
	setnb	dl
	movzx	edx, dl
	jmp	.L1658
	.seh_endproc
	.p2align 4
	.globl	__modsi3
	.def	__modsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__modsi3
__modsi3:
	.seh_endprologue
	xor	r9d, r9d
	test	ecx, ecx
	jns	.L1684
	neg	ecx
	mov	r9d, 1
.L1684:
	mov	eax, edx
	mov	r8d, ecx
	neg	eax
	cmovs	eax, edx
	mov	edx, 1
	cmp	eax, ecx
	jb	.L1685
	jmp	.L1709
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1711:
	test	edx, edx
	je	.L1705
.L1685:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jb	.L1711
	test	edx, edx
	je	.L1705
	.p2align 5
	.p2align 4
	.p2align 3
.L1687:
	mov	r10d, r8d
	sub	r10d, eax
	cmp	r8d, eax
	cmovnb	r8d, r10d
	shr	eax
	shr	edx
	jne	.L1687
.L1688:
	mov	eax, r8d
	neg	eax
	test	r9d, r9d
	cmove	eax, r8d
	ret
	.p2align 4,,10
	.p2align 3
.L1705:
	mov	r8d, ecx
	mov	eax, r8d
	neg	eax
	test	r9d, r9d
	cmove	eax, r8d
	ret
.L1709:
	sub	ecx, eax
	cmp	r8d, eax
	cmovnb	r8d, ecx
	jmp	.L1688
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
	jb	.L1713
	jmp	.L1779
	.p2align 4,,10
	.p2align 3
.L1716:
	lea	r10d, [rcx+rcx]
	lea	edx, [r9+r9]
	cmp	r10w, ax
	jnb	.L1715
	test	dx, dx
	je	.L1715
	mov	r9d, edx
	mov	ecx, r10d
.L1713:
	test	cx, cx
	jns	.L1716
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
	je	.L1718
.L1720:
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
	je	.L1718
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
	je	.L1718
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
	je	.L1718
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
	je	.L1718
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
	je	.L1718
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
	je	.L1718
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
	je	.L1718
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
	je	.L1718
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
	je	.L1718
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
	je	.L1718
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
	je	.L1718
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
	je	.L1718
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
	je	.L1718
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
	jns	.L1718
	mov	r9d, eax
	sub	r9d, ecx
	cmp	ax, cx
	setnb	cl
	cmovnb	eax, r9d
	movzx	r10d, cl
	or	edx, r10d
.L1718:
	test	r8d, r8d
	cmove	eax, edx
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1715:
	mov	eax, ebx
	test	dx, dx
	je	.L1718
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
	jmp	.L1720
.L1779:
	sub	eax, edx
	cmp	dx, bx
	sete	dl
	cmovne	eax, ebx
	movzx	edx, dl
	jmp	.L1718
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
	jb	.L1781
	jmp	.L1804
	.p2align 4,,10
	.p2align 3
.L1784:
	add	edx, edx
	add	r9d, r9d
	cmp	edx, ecx
	jnb	.L1783
	test	r9d, r9d
	je	.L1783
.L1781:
	test	edx, edx
	jns	.L1784
.L1785:
	xor	eax, eax
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L1787:
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
	jne	.L1787
.L1786:
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1783:
	xor	eax, eax
	test	r9d, r9d
	jne	.L1785
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
.L1804:
	mov	eax, ecx
	sub	eax, edx
	cmp	ecx, edx
	setnb	dl
	cmovnb	ecx, eax
	movzx	eax, dl
	jmp	.L1786
	.seh_endproc
	.p2align 4
	.globl	__ashldi3
	.def	__ashldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashldi3
__ashldi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1808
	lea	ecx, -32[rdx]
	xor	eax, eax
	sal	r8d, cl
.L1809:
	sal	r8, 32
	or	rax, r8
.L1807:
	ret
	.p2align 4,,10
	.p2align 3
.L1808:
	mov	rax, rcx
	test	edx, edx
	je	.L1807
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
	jmp	.L1809
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
	je	.L1814
	lea	ecx, -64[rdx]
	xor	r9d, r9d
	sal	rax, cl
.L1815:
	mov	r10, rax
	mov	rax, r9
	mov	r8, r10
.L1816:
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
.L1814:
	test	edx, edx
	je	.L1816
	mov	r9, rax
	mov	ecx, edx
	sal	r9, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rax, cl
	mov	ecx, edx
	sal	r8, cl
	or	rax, r8
	jmp	.L1815
	.seh_endproc
	.p2align 4
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1819
	sar	r8, 32
	lea	ecx, -32[rdx]
	mov	eax, r8d
	sar	r8d, cl
	sar	eax, 31
.L1820:
	sal	rax, 32
	or	rax, r8
.L1818:
	ret
	.p2align 4,,10
	.p2align 3
.L1819:
	mov	rax, rcx
	test	edx, edx
	je	.L1818
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
	jmp	.L1820
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
	je	.L1825
	mov	r10, rax
	lea	ecx, -64[rdx]
	sar	r10, 63
	sar	rax, cl
.L1826:
	mov	r9, rax
	mov	rax, r10
.L1827:
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
.L1825:
	mov	r9, r8
	test	edx, edx
	je	.L1827
	mov	r10, rax
	mov	ecx, edx
	sar	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L1826
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
	jl	.L1833
	mov	eax, 2
	jg	.L1833
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1833
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1833:
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
	jl	.L1839
	mov	eax, 1
	jg	.L1839
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1839
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1839:
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
	jl	.L1844
	mov	eax, 2
	jg	.L1844
	xor	eax, eax
	cmp	r8, r9
	jb	.L1844
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1844:
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
	jne	.L1853
	xor	eax, eax
	xor	ecx, ecx
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	cmove	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1853:
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
	je	.L1857
	shr	r8, 32
	lea	ecx, -32[rdx]
	xor	eax, eax
	shr	r8d, cl
.L1858:
	sal	rax, 32
	or	rax, r8
.L1856:
	ret
	.p2align 4,,10
	.p2align 3
.L1857:
	mov	rax, rcx
	test	edx, edx
	je	.L1856
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
	jmp	.L1858
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
	je	.L1863
	lea	ecx, -64[rdx]
	xor	r10d, r10d
	shr	rax, cl
.L1864:
	mov	r9, rax
	mov	rax, r10
.L1865:
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
.L1863:
	mov	r9, r8
	test	edx, edx
	je	.L1865
	mov	r10, rax
	mov	ecx, edx
	shr	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L1864
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
	vmovsd	xmm2, QWORD PTR .LC27[rip]
	vmovapd	xmm1, xmm2
	mov	eax, edx
	test	dl, 1
	je	.L1880
	.p2align 4
	.p2align 3
.L1882:
	vmulsd	xmm1, xmm1, xmm0
.L1880:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1881
	vmulsd	xmm0, xmm0, xmm0
	test	al, 1
	jne	.L1882
.L1886:
	vmulsd	xmm0, xmm0, xmm0
	mov	r8d, eax
	shr	r8d, 31
	add	eax, r8d
	sar	eax
	test	al, 1
	jne	.L1882
	jmp	.L1886
	.p2align 4,,10
	.p2align 3
.L1881:
	test	edx, edx
	jns	.L1879
	vdivsd	xmm1, xmm2, xmm1
.L1879:
	vmovapd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	__powisf2
	.def	__powisf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powisf2
__powisf2:
	.seh_endprologue
	vmovss	xmm2, DWORD PTR .LC31[rip]
	vmovaps	xmm1, xmm2
	mov	eax, edx
	test	dl, 1
	je	.L1888
	.p2align 4
	.p2align 3
.L1890:
	vmulss	xmm1, xmm1, xmm0
.L1888:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1889
	vmulss	xmm0, xmm0, xmm0
	test	al, 1
	jne	.L1890
.L1894:
	vmulss	xmm0, xmm0, xmm0
	mov	r8d, eax
	shr	r8d, 31
	add	eax, r8d
	sar	eax
	test	al, 1
	jne	.L1890
	jmp	.L1894
	.p2align 4,,10
	.p2align 3
.L1889:
	test	edx, edx
	jns	.L1887
	vdivss	xmm1, xmm2, xmm1
.L1887:
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
	jb	.L1895
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L1895
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1895
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1895:
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
	jb	.L1901
	mov	eax, 1
	cmp	r9d, r8d
	jb	.L1901
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1901
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1901:
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
	jb	.L1906
	mov	eax, 2
	cmp	rdx, rcx
	jb	.L1906
	xor	eax, eax
	cmp	r8, r9
	jb	.L1906
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1906:
	ret
	.seh_endproc
.lcomm s.0,7,1
.lcomm seed,8,8
	.section .rdata,"dr"
	.align 32
digits:
	.ascii "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\0"
	.align 32
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
	.set	.LC1,.LC0
	.align 32
.LC5:
	.long	16
	.long	15
	.long	14
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.align 32
.LC6:
	.long	16
	.long	17
	.long	18
	.long	19
	.long	20
	.long	21
	.long	22
	.long	23
	.align 32
.LC7:
	.long	24
	.long	23
	.long	22
	.long	21
	.long	20
	.long	19
	.long	18
	.long	17
	.align 32
.LC8:
	.long	8
	.long	9
	.long	10
	.long	11
	.long	12
	.long	13
	.long	14
	.long	15
	.align 32
.LC9:
	.long	32
	.long	31
	.long	30
	.long	29
	.long	28
	.long	27
	.long	26
	.long	25
	.align 32
.LC10:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.align 32
.LC11:
	.long	8
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.align 32
.LC12:
	.long	24
	.long	25
	.long	26
	.long	27
	.long	28
	.long	29
	.long	30
	.long	31
	.align 4
.LC14:
	.long	-8388609
	.align 4
.LC15:
	.long	2139095039
	.align 8
.LC16:
	.long	-1
	.long	-1048577
	.align 8
.LC17:
	.long	-1
	.long	2146435071
	.align 16
.LC18:
	.long	-1
	.long	-1
	.long	65534
	.long	0
	.align 16
.LC19:
	.long	-1
	.long	-1
	.long	32766
	.long	0
	.set	.LC20,.LC22+4
	.align 4
.LC21:
	.long	1056964608
	.align 8
.LC22:
	.long	0
	.long	1073741824
	.align 8
.LC23:
	.long	0
	.long	1071644672
	.align 16
.LC24:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC25:
	.long	0
	.long	-1074790400
	.align 8
.LC26:
	.long	0
	.long	-1075838976
	.align 8
.LC27:
	.long	0
	.long	1072693248
	.align 32
.LC28:
	.long	15
	.long	14
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.long	8
	.align 32
.LC29:
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.long	0
	.align 4
.LC30:
	.long	1191182336
	.align 4
.LC31:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
