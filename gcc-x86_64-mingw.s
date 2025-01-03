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
	jbe	.L84
	lea	rbx, -2[rdx+r8]
	mov	r9, rcx
	sub	r9, rbx
	lea	r10, 14[r9+r11]
	cmp	r10, 14
	jbe	.L84
	lea	rsi, [rdx+r8]
	lea	rbx, [rcx+r8]
	cmp	r11, 14
	jbe	.L24
	mov	r9, r8
	lea	r10, -16[r8]
	xor	eax, eax
	and	r9, -16
	lea	r11, [rdx+r10]
	add	r10, rcx
	neg	r9
	.p2align 5
	.p2align 4
	.p2align 3
.L9:
	movdqu	xmm1, XMMWORD PTR [r11+rax]
	movups	XMMWORD PTR [r10+rax], xmm1
	sub	rax, 16
	cmp	r9, rax
	jne	.L9
	mov	rax, r8
	add	rsi, r9
	add	rbx, r9
	and	eax, 15
	and	r8d, 15
	je	.L6
	lea	r10, -1[rax]
	mov	r8, rax
	cmp	r10, 6
	jbe	.L11
.L8:
	mov	rdx, QWORD PTR -8[rdx+r8]
	mov	r11, r8
	and	r11, -8
	mov	QWORD PTR -8[rcx+r8], rdx
	sub	rsi, r11
	sub	rbx, r11
	sub	rax, r11
	and	r8d, 7
	je	.L6
.L11:
	movzx	r8d, BYTE PTR -1[rsi]
	mov	BYTE PTR -1[rbx], r8b
	cmp	rax, 1
	je	.L6
	movzx	r9d, BYTE PTR -2[rsi]
	mov	BYTE PTR -2[rbx], r9b
	cmp	rax, 2
	je	.L6
	movzx	r10d, BYTE PTR -3[rsi]
	mov	BYTE PTR -3[rbx], r10b
	cmp	rax, 3
	je	.L6
	movzx	edx, BYTE PTR -4[rsi]
	mov	BYTE PTR -4[rbx], dl
	cmp	rax, 4
	je	.L6
	movzx	r11d, BYTE PTR -5[rsi]
	mov	BYTE PTR -5[rbx], r11b
	cmp	rax, 5
	je	.L6
	movzx	r8d, BYTE PTR -6[rsi]
	mov	BYTE PTR -6[rbx], r8b
	cmp	rax, 6
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
	cmp	rax, 6
	jbe	.L26
	lea	r10, 1[rdx]
	mov	r9, rcx
	sub	r9, r10
	cmp	r9, 14
	jbe	.L26
	cmp	rax, 14
	jbe	.L27
	mov	r10, r8
	xor	ebx, ebx
	and	r10, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L17:
	movdqu	xmm0, XMMWORD PTR [rdx+rbx]
	movups	XMMWORD PTR [rcx+rbx], xmm0
	add	rbx, 16
	cmp	r10, rbx
	jne	.L17
	mov	rax, r8
	lea	r11, [rdx+r10]
	lea	rsi, [rcx+r10]
	sub	rax, r10
	cmp	r8, r10
	je	.L6
	lea	r9, -1[rax]
	mov	r8, rax
	cmp	r9, 6
	jbe	.L20
.L16:
	mov	rdx, QWORD PTR [rdx+r10]
	mov	QWORD PTR [rcx+r10], rdx
	mov	r10, r8
	and	r10, -8
	add	r11, r10
	add	rsi, r10
	sub	rax, r10
	and	r8d, 7
	je	.L6
.L20:
	movzx	r8d, BYTE PTR [r11]
	mov	BYTE PTR [rsi], r8b
	cmp	rax, 1
	je	.L6
	movzx	ebx, BYTE PTR 1[r11]
	mov	BYTE PTR 1[rsi], bl
	cmp	rax, 2
	je	.L6
	movzx	r9d, BYTE PTR 2[r11]
	mov	BYTE PTR 2[rsi], r9b
	cmp	rax, 3
	je	.L6
	movzx	edx, BYTE PTR 3[r11]
	mov	BYTE PTR 3[rsi], dl
	cmp	rax, 4
	je	.L6
	movzx	r10d, BYTE PTR 4[r11]
	mov	BYTE PTR 4[rsi], r10b
	cmp	rax, 5
	je	.L6
	movzx	r8d, BYTE PTR 5[r11]
	mov	BYTE PTR 5[rsi], r8b
	cmp	rax, 6
	je	.L6
	movzx	r11d, BYTE PTR 6[r11]
	mov	BYTE PTR 6[rsi], r11b
	jmp	.L6
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L85:
	sub	r11, 1
.L84:
	movzx	ebx, BYTE PTR -1[rdx+r8]
	mov	BYTE PTR -1[rcx+r8], bl
	mov	r8, r11
	test	r11, r11
	jne	.L85
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L26:
	xor	esi, esi
	.p2align 4
	.p2align 4
	.p2align 3
.L83:
	movzx	eax, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], al
	add	rsi, 1
	cmp	r8, rsi
	jne	.L83
	jmp	.L6
.L24:
	mov	rax, r8
	jmp	.L8
.L27:
	mov	r11, rdx
	mov	rsi, rcx
	mov	rax, r8
	xor	r10d, r10d
	jmp	.L16
	.seh_endproc
	.p2align 4
	.globl	memccpy
	.def	memccpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memccpy
memccpy:
	.seh_endprologue
	movzx	r8d, r8b
	test	r9, r9
	jne	.L87
	jmp	.L89
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L90:
	add	rdx, 1
	add	rcx, 1
	sub	r9, 1
	je	.L89
.L87:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [rcx], r10b
	cmp	r10d, r8d
	jne	.L90
	lea	rax, 1[rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L89:
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
	jne	.L98
	jmp	.L101
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L100:
	add	rcx, 1
	sub	r8, 1
	je	.L101
.L98:
	movzx	eax, BYTE PTR [rcx]
	cmp	eax, edx
	jne	.L100
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L101:
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
	jne	.L106
	jmp	.L110
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L108:
	add	rcx, 1
	add	rdx, 1
	sub	r8, 1
	je	.L110
.L106:
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	je	.L108
	movzx	eax, BYTE PTR [rcx]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L110:
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
	je	.L117
	call	memcpy
	mov	rcx, rax
.L117:
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
	jmp	.L122
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L124:
	mov	r8, rax
	sub	rax, 1
	movzx	r9d, BYTE PTR [r8]
	cmp	r9d, edx
	je	.L121
.L122:
	cmp	rax, rcx
	jne	.L124
	xor	r8d, r8d
.L121:
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
	je	.L128
	movzx	edx, dl
	call	memset
	mov	rcx, rax
.L128:
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
	je	.L130
	.p2align 5
	.p2align 4
	.p2align 3
.L131:
	movzx	r8d, BYTE PTR 1[rdx]
	add	rdx, 1
	add	rax, 1
	mov	BYTE PTR [rax], r8b
	test	r8b, r8b
	jne	.L131
.L130:
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
	jne	.L137
	jmp	.L136
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L139:
	movzx	r8d, BYTE PTR 1[rax]
	add	rax, 1
	test	r8b, r8b
	je	.L136
.L137:
	cmp	r8d, edx
	jne	.L139
.L136:
	ret
	.seh_endproc
	.p2align 4
	.globl	strchr
	.def	strchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strchr
strchr:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L146
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L149:
	add	rax, 1
	test	r8b, r8b
	je	.L148
.L146:
	movsx	r8d, BYTE PTR [rax]
	cmp	r8d, edx
	jne	.L149
	ret
	.p2align 4,,10
	.p2align 3
.L148:
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
	je	.L151
	jmp	.L159
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L153:
	movzx	r8d, BYTE PTR [rcx+rax]
	add	rax, 1
	movzx	r9d, BYTE PTR -1[rdx+rax]
	cmp	r8b, r9b
	jne	.L159
.L151:
	test	r8b, r8b
	jne	.L153
	xor	eax, eax
	sub	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L159:
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
	je	.L163
	mov	rax, rcx
	.p2align 4
	.p2align 4
	.p2align 3
.L162:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L162
	sub	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L163:
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
	je	.L165
	movzx	eax, BYTE PTR [rcx]
	sub	r8, 1
	mov	rcx, rdx
	add	r8, rdx
	test	al, al
	jne	.L169
	jmp	.L182
	.p2align 4,,10
	.p2align 3
.L184:
	cmp	rcx, r8
	je	.L168
	movzx	eax, BYTE PTR 1[r9]
	add	r9, 1
	lea	rdx, 1[rcx]
	test	al, al
	je	.L183
	mov	rcx, rdx
.L169:
	movzx	edx, BYTE PTR [rcx]
	test	dl, dl
	setne	r11b
	cmp	dl, al
	sete	r10b
	test	r11b, r10b
	jne	.L184
.L168:
	sub	eax, edx
.L165:
	ret
	.p2align 4,,10
	.p2align 3
.L183:
	movzx	edx, BYTE PTR 1[rcx]
	xor	eax, eax
	sub	eax, edx
	jmp	.L165
.L182:
	movzx	edx, BYTE PTR [rdx]
	xor	eax, eax
	sub	eax, edx
	jmp	.L165
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
	jle	.L185
	mov	rsi, r8
	lea	rax, -2[r8]
	shr	rsi
	lea	r11, -1[rsi]
	cmp	rax, 13
	jbe	.L192
	mov	r10, r8
	mov	rbx, r8
	movdqa	xmm1, XMMWORD PTR .LC0[rip]
	xor	eax, eax
	shr	r10, 4
	and	rbx, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L188:
	movdqu	xmm0, XMMWORD PTR [rcx+rax]
	pshufb	xmm0, xmm1
	movups	XMMWORD PTR [rdx+rax], xmm0
	add	rax, 16
	cmp	rbx, rax
	jne	.L188
	lea	r9, 0[0+r10*8]
	mov	rax, r10
	mov	r10, r9
	sal	rax, 4
	neg	r10
	lea	rbx, [rdx+rax]
	add	rax, rcx
	lea	r8, [r8+r10*2]
	cmp	r9, rsi
	je	.L185
.L187:
	sub	r11, r9
	mov	rsi, r11
	lea	r11, 1[r11]
	cmp	rsi, 2
	jbe	.L190
	movq	xmm2, QWORD PTR [rcx+r9*2]
	pshufb	xmm2, XMMWORD PTR .LC1[rip]
	movq	QWORD PTR [rdx+r9*2], xmm2
	mov	rdx, r11
	and	rdx, -4
	lea	rcx, [rdx+rdx]
	neg	rdx
	add	rbx, rcx
	add	rax, rcx
	lea	r8, [r8+rdx*2]
	and	r11d, 3
	je	.L185
.L190:
	movbe	r9w, WORD PTR [rax]
	mov	WORD PTR [rbx], r9w
	cmp	r8, 3
	jle	.L185
	movbe	r10w, WORD PTR 2[rax]
	mov	WORD PTR 2[rbx], r10w
	cmp	r8, 5
	jle	.L185
	movbe	r8w, WORD PTR 4[rax]
	mov	WORD PTR 4[rbx], r8w
.L185:
	pop	rbx
	pop	rsi
	ret
.L192:
	mov	rbx, rdx
	mov	rax, rcx
	xor	r9d, r9d
	jmp	.L187
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
	jbe	.L209
	cmp	cx, 31
	jbe	.L209
	lea	ecx, -8232[rax]
	mov	r8d, 1
	cmp	ecx, 1
	jbe	.L207
	sub	eax, 65529
	xor	r8d, r8d
	cmp	eax, 2
	setbe	r8b
	mov	eax, r8d
	ret
	.p2align 4,,10
	.p2align 3
.L209:
	mov	r8d, 1
.L207:
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
	jbe	.L218
	movzx	eax, cx
	lea	edx, -8234[rax]
	cmp	edx, 47061
	jbe	.L215
	cmp	cx, 8231
	jbe	.L215
	lea	r8d, -57344[rax]
	mov	r9d, 1
	cmp	r8d, 8184
	jbe	.L212
	sub	eax, 65532
	xor	r9d, r9d
	cmp	eax, 1048579
	ja	.L212
	not	ecx
	xor	r9d, r9d
	test	cx, -2
	setne	r9b
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L215:
	mov	r9d, 1
.L212:
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L218:
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
	jbe	.L219
	or	ecx, 32
	xor	edx, edx
	movzx	ecx, cx
	sub	ecx, 97
	cmp	ecx, 5
	setbe	dl
.L219:
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
	jp	.L223
	ucomisd	xmm1, xmm1
	jp	.L227
	comisd	xmm0, xmm1
	jbe	.L230
	subsd	xmm0, xmm1
.L223:
	ret
	.p2align 4,,10
	.p2align 3
.L230:
	pxor	xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L227:
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
	jp	.L231
	ucomiss	xmm1, xmm1
	jp	.L235
	comiss	xmm0, xmm1
	jbe	.L238
	subss	xmm0, xmm1
.L231:
	ret
	.p2align 4,,10
	.p2align 3
.L238:
	pxor	xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L235:
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
	jp	.L239
	ucomisd	xmm1, xmm1
	jp	.L245
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L241
	test	eax, eax
	jne	.L239
.L245:
	movapd	xmm1, xmm0
.L239:
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L241:
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
	jp	.L248
	ucomiss	xmm1, xmm1
	jp	.L254
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L250
	test	eax, eax
	jne	.L248
.L254:
	movaps	xmm1, xmm0
.L248:
	movaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L250:
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
	jp	.L263
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L266
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
	je	.L259
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	jmp	.L258
	.p2align 4,,10
	.p2align 3
.L266:
	fstp	st(0)
.L258:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L259:
	fcomi	st, st(1)
	mov	rax, rcx
	fcmovbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L263:
	fstp	st(0)
	jmp	.L258
	.seh_endproc
	.p2align 4
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L272
	ucomisd	xmm1, xmm1
	jp	.L267
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L269
	test	eax, eax
	jne	.L267
.L272:
	movapd	xmm0, xmm1
.L267:
	ret
	.p2align 4,,10
	.p2align 3
.L269:
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
	jp	.L281
	ucomiss	xmm1, xmm1
	jp	.L276
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L278
	test	eax, eax
	jne	.L276
.L281:
	movaps	xmm0, xmm1
.L276:
	ret
	.p2align 4,,10
	.p2align 3
.L278:
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
	jp	.L294
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L291
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
	fcmovne	st, st(1)
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
	fcmovnbe	st, st(1)
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
	.globl	l64a
	.def	l64a;	.scl	2;	.type	32;	.endef
	.seh_proc	l64a
l64a:
	.seh_endprologue
	lea	r9, s.0[rip]
	mov	rax, r9
	test	ecx, ecx
	je	.L296
	lea	r8, digits[rip]
	.p2align 5
	.p2align 4
	.p2align 3
.L297:
	mov	edx, ecx
	add	rax, 1
	and	edx, 63
	movzx	r10d, BYTE PTR [r8+rdx]
	mov	BYTE PTR -1[rax], r10b
	shr	ecx, 6
	jne	.L297
.L296:
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
	je	.L308
	movq	xmm0, QWORD PTR [rdx]
	movq	xmm1, rdx
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR [rcx], xmm0
	mov	QWORD PTR [rdx], rcx
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L302
	mov	QWORD PTR 8[rax], rcx
.L302:
	ret
	.p2align 4,,10
	.p2align 3
.L308:
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
	je	.L310
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L310:
	mov	rcx, QWORD PTR 8[rcx]
	test	rcx, rcx
	je	.L309
	mov	QWORD PTR [rcx], rax
.L309:
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
	je	.L319
	mov	rbx, rdx
	xor	r15d, r15d
	jmp	.L321
	.p2align 4,,10
	.p2align 3
.L333:
	add	r15, 1
	add	rbx, rsi
	cmp	rdi, r15
	je	.L319
.L321:
	mov	r12, rbx
	mov	rdx, rbx
	mov	rcx, rbp
	call	r13
	test	eax, eax
	jne	.L333
.L318:
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
.L319:
	lea	rax, 1[rdi]
	imul	rdi, rsi
	add	rdi, QWORD PTR 120[rsp]
	mov	QWORD PTR [r14], rax
	mov	r12, rdi
	test	rsi, rsi
	je	.L318
	mov	r8, rsi
	mov	rdx, rbp
	mov	rcx, rdi
	call	memmove
	jmp	.L318
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
	je	.L335
	mov	rbx, rdx
	xor	esi, esi
	jmp	.L337
	.p2align 4,,10
	.p2align 3
.L345:
	add	rsi, 1
	add	rbx, rbp
	cmp	r12, rsi
	je	.L335
.L337:
	mov	r14, rbx
	mov	rdx, rbx
	mov	rcx, rdi
	call	r13
	test	eax, eax
	jne	.L345
.L334:
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
.L335:
	xor	r14d, r14d
	jmp	.L334
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
	jmp	.L374
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L370:
	add	rcx, 1
.L374:
	movsx	eax, BYTE PTR [rcx]
	lea	r8d, -9[rax]
	mov	edx, eax
	cmp	r8d, 4
	jbe	.L370
	cmp	dl, 32
	je	.L370
	cmp	dl, 43
	je	.L351
	cmp	dl, 45
	jne	.L375
	movsx	r9d, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	edx, r9d
	sub	r9d, 48
	cmp	r9d, 9
	ja	.L360
	mov	r11d, 1
.L354:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L357:
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
	jbe	.L357
	sub	eax, ecx
	test	r11d, r11d
	cmovne	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L375:
	sub	eax, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	eax, 9
	jbe	.L354
.L360:
	xor	eax, eax
.L376:
	ret
	.p2align 4,,10
	.p2align 3
.L351:
	lea	r10, 1[rcx]
	movsx	ecx, BYTE PTR 1[rcx]
	xor	r11d, r11d
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L354
	xor	eax, eax
	jmp	.L376
	.seh_endproc
	.p2align 4
	.globl	atol
	.def	atol;	.scl	2;	.type	32;	.endef
	.seh_proc	atol
atol:
	.seh_endprologue
	jmp	.L401
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L398:
	add	rcx, 1
.L401:
	movsx	eax, BYTE PTR [rcx]
	lea	r8d, -9[rax]
	mov	edx, eax
	cmp	r8d, 4
	jbe	.L398
	cmp	dl, 32
	je	.L398
	cmp	dl, 43
	je	.L381
	cmp	dl, 45
	jne	.L382
	movsx	r9d, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	r11d, 1
	mov	edx, r9d
	sub	r9d, 48
	cmp	r9d, 9
	ja	.L389
.L383:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L386:
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
	jbe	.L386
	sub	eax, ecx
	test	r11d, r11d
	cmovne	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L382:
	sub	eax, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	eax, 9
	jbe	.L383
.L389:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L381:
	lea	r10, 1[rcx]
	movsx	ecx, BYTE PTR 1[rcx]
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	ja	.L389
	xor	r11d, r11d
	jmp	.L383
	.seh_endproc
	.p2align 4
	.globl	atoll
	.def	atoll;	.scl	2;	.type	32;	.endef
	.seh_proc	atoll
atoll:
	.seh_endprologue
	jmp	.L429
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L425:
	add	rcx, 1
.L429:
	movsx	eax, BYTE PTR [rcx]
	lea	r8d, -9[rax]
	mov	edx, eax
	cmp	r8d, 4
	jbe	.L425
	cmp	dl, 32
	je	.L425
	cmp	dl, 43
	je	.L406
	cmp	dl, 45
	jne	.L430
	movsx	r9d, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	edx, r9d
	sub	r9d, 48
	cmp	r9d, 9
	ja	.L415
	mov	r11d, 1
.L409:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L412:
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
	jbe	.L412
	sub	rax, rcx
	test	r11d, r11d
	cmovne	rax, r9
	ret
	.p2align 4,,10
	.p2align 3
.L430:
	sub	eax, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	eax, 9
	jbe	.L409
.L415:
	xor	eax, eax
.L431:
	ret
	.p2align 4,,10
	.p2align 3
.L406:
	lea	r10, 1[rcx]
	movsx	ecx, BYTE PTR 1[rcx]
	xor	r11d, r11d
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L409
	xor	eax, eax
	jmp	.L431
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
.L445:
	test	rbx, rbx
	je	.L433
.L446:
	mov	r14, rbx
	mov	rcx, r12
	shr	r14
	mov	rsi, r14
	imul	rsi, rbp
	add	rsi, rdi
	mov	rdx, rsi
	call	r13
	test	eax, eax
	js	.L437
	je	.L432
	sub	rbx, 1
	lea	rdi, [rsi+rbp]
	sub	rbx, r14
	test	rbx, rbx
	jne	.L446
.L433:
	xor	esi, esi
.L432:
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
.L437:
	mov	rbx, r14
	jmp	.L445
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
	je	.L452
	.p2align 4
	.p2align 3
.L460:
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
	je	.L447
	jle	.L450
	sub	r14d, 1
	lea	rsi, [rbx+rdi]
	sar	r14d
	jne	.L460
.L452:
	xor	ebx, ebx
.L447:
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
.L450:
	test	r15d, r15d
	je	.L452
	mov	r14d, r15d
	jmp	.L460
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
	jne	.L470
	jmp	.L473
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L472:
	movzx	eax, WORD PTR 2[rcx]
	add	rcx, 2
	test	ax, ax
	je	.L473
.L470:
	cmp	dx, ax
	jne	.L472
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L473:
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
	je	.L478
	jmp	.L479
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L480:
	movzx	r8d, WORD PTR [rcx+rax]
	add	rax, 2
	movzx	r9d, WORD PTR -2[rdx+rax]
	cmp	r8w, r9w
	jne	.L479
.L478:
	test	r8w, r8w
	jne	.L480
.L479:
	mov	eax, -1
	cmp	r8w, r9w
	jb	.L477
	xor	eax, eax
	cmp	r9w, r8w
	setb	al
.L477:
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
.L487:
	movzx	r9d, WORD PTR [rdx+r8]
	mov	WORD PTR [rax+r8], r9w
	add	r8, 2
	test	r9w, r9w
	jne	.L487
	ret
	.seh_endproc
	.p2align 4
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	cmp	WORD PTR [rcx], 0
	je	.L492
	mov	rax, rcx
	.p2align 4
	.p2align 4
	.p2align 3
.L491:
	add	rax, 2
	cmp	WORD PTR [rax], 0
	jne	.L491
	sub	rax, rcx
	sar	rax
	ret
	.p2align 4,,10
	.p2align 3
.L492:
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
	jne	.L495
	jmp	.L501
	.p2align 4,,10
	.p2align 3
.L508:
	test	ax, ax
	je	.L499
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L501
.L495:
	movzx	eax, WORD PTR [rcx]
	cmp	WORD PTR [rdx], ax
	je	.L508
.L499:
	movzx	ecx, WORD PTR [rcx]
	movzx	edx, WORD PTR [rdx]
	cmp	cx, dx
	jb	.L509
	cmp	dx, cx
	setb	r8b
	movzx	eax, r8b
	ret
	.p2align 4,,10
	.p2align 3
.L509:
	mov	eax, -1
	ret
	.p2align 4,,10
	.p2align 3
.L501:
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
	jne	.L511
	jmp	.L514
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L513:
	add	rcx, 2
	sub	r8, 1
	je	.L514
.L511:
	cmp	WORD PTR [rcx], dx
	jne	.L513
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L514:
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
	jne	.L519
	jmp	.L524
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L521:
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L524
.L519:
	movzx	eax, WORD PTR [rcx]
	cmp	ax, WORD PTR [rdx]
	je	.L521
	movzx	edx, WORD PTR [rdx]
	cmp	ax, dx
	jb	.L530
	cmp	dx, ax
	setb	cl
	movzx	eax, cl
	ret
	.p2align 4,,10
	.p2align 3
.L524:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L530:
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
	je	.L532
	add	r8, r8
	call	memcpy
	mov	rcx, rax
.L532:
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
	je	.L572
	mov	rax, rcx
	lea	rsi, [r8+r8]
	lea	r9, -1[r8]
	sub	rax, rdx
	cmp	rax, rsi
	jnb	.L598
	test	r8, r8
	je	.L572
	cmp	r9, 2
	jbe	.L595
	mov	rbx, rcx
	sub	rbx, rdx
	add	rbx, 14
	cmp	rbx, 12
	jbe	.L595
	cmp	r9, 6
	jbe	.L559
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
.L543:
	movdqu	xmm1, XMMWORD PTR [rbx+rax]
	movups	XMMWORD PTR [r11+rax], xmm1
	sub	rax, 16
	cmp	rax, r10
	jne	.L543
	mov	rax, r8
	and	rax, -8
	sub	r9, rax
	test	r8b, 7
	je	.L572
	sub	r8, rax
	lea	r11, -1[r8]
	cmp	r11, 2
	jbe	.L546
.L542:
	neg	rax
	mov	r10, r8
	lea	rsi, -8[rsi+rax*2]
	and	r10, -4
	mov	rbx, QWORD PTR [rdx+rsi]
	sub	r9, r10
	and	r8d, 3
	mov	QWORD PTR [rcx+rsi], rbx
	je	.L572
.L546:
	movzx	r8d, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], r8w
	test	r9, r9
	je	.L572
	sub	r9, 1
	movzx	r11d, WORD PTR [rdx+r9*2]
	lea	rax, [r9+r9]
	mov	WORD PTR [rcx+r9*2], r11w
	je	.L572
	movzx	edx, WORD PTR -2[rdx+rax]
	mov	WORD PTR -2[rcx+rax], dx
.L572:
	mov	rax, rcx
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L598:
	test	r8, r8
	je	.L572
	cmp	r9, 2
	jbe	.L561
	lea	r10, 2[rdx]
	mov	rbx, rcx
	sub	rbx, r10
	cmp	rbx, 12
	jbe	.L561
	cmp	r9, 6
	jbe	.L562
	mov	rbx, r8
	xor	r11d, r11d
	xor	r10d, r10d
	shr	rbx, 3
	.p2align 5
	.p2align 4
	.p2align 3
.L552:
	movdqu	xmm0, XMMWORD PTR [rdx+r11]
	add	r10, 1
	movups	XMMWORD PTR [rcx+r11], xmm0
	add	r11, 16
	cmp	rbx, r10
	jne	.L552
	mov	rax, r8
	and	rax, -8
	lea	rsi, [rax+rax]
	sub	r9, rax
	lea	r11, [rdx+rsi]
	add	rsi, rcx
	test	r8b, 7
	je	.L572
	sub	r8, rax
	lea	rbx, -1[r8]
	cmp	rbx, 2
	jbe	.L555
.L551:
	mov	rdx, QWORD PTR [rdx+rax*2]
	mov	QWORD PTR [rcx+rax*2], rdx
	mov	rax, r8
	and	rax, -4
	sub	r9, rax
	add	rax, rax
	add	r11, rax
	add	rsi, rax
	and	r8d, 3
	je	.L572
.L555:
	movzx	r8d, WORD PTR [r11]
	mov	WORD PTR [rsi], r8w
	test	r9, r9
	je	.L572
	movzx	r10d, WORD PTR 2[r11]
	mov	WORD PTR 2[rsi], r10w
	cmp	r9, 1
	je	.L572
	movzx	r9d, WORD PTR 4[r11]
	mov	WORD PTR 4[rsi], r9w
	jmp	.L572
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L595:
	movzx	esi, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], si
	sub	r9, 1
	jb	.L572
	movzx	esi, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], si
	sub	r9, 1
	jnb	.L595
	jmp	.L572
	.p2align 4,,10
	.p2align 3
.L561:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L596:
	movzx	r11d, WORD PTR [rdx+rsi*2]
	mov	WORD PTR [rcx+rsi*2], r11w
	add	rsi, 1
	cmp	r8, rsi
	jne	.L596
	jmp	.L572
.L559:
	xor	eax, eax
	jmp	.L542
.L562:
	mov	r11, rdx
	mov	rsi, rcx
	xor	eax, eax
	jmp	.L551
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
	je	.L600
	cmp	r11, 6
	jbe	.L606
	mov	r10, r8
	movd	xmm0, edx
	xor	eax, eax
	pshufb	xmm0, XMMWORD PTR .LC5[rip]
	shr	r10, 3
	.p2align 5
	.p2align 4
	.p2align 3
.L602:
	mov	rcx, rax
	add	rax, 1
	sal	rcx, 4
	movups	XMMWORD PTR [r9+rcx], xmm0
	cmp	r10, rax
	jne	.L602
	mov	rax, r8
	and	rax, -8
	sub	r11, rax
	lea	rcx, [r9+rax*2]
	test	r8b, 7
	je	.L600
.L601:
	sub	r8, rax
	lea	r10, -1[r8]
	cmp	r10, 2
	jbe	.L604
	movd	xmm1, edx
	pshuflw	xmm2, xmm1, 0
	movq	QWORD PTR [r9+rax*2], xmm2
	mov	rax, r8
	and	rax, -4
	sub	r11, rax
	and	r8d, 3
	lea	rcx, [rcx+rax*2]
	je	.L600
.L604:
	mov	WORD PTR [rcx], dx
	test	r11, r11
	je	.L600
	mov	WORD PTR 2[rcx], dx
	cmp	r11, 1
	je	.L600
	mov	WORD PTR 4[rcx], dx
.L600:
	mov	rax, r9
	ret
.L606:
	xor	eax, eax
	jmp	.L601
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
	jnb	.L624
	test	r8, r8
	je	.L623
	lea	r11, -1[r8]
	cmp	r11, 6
	jbe	.L703
	lea	r10, -2[rcx+r8]
	mov	rbx, rdx
	sub	rbx, r10
	lea	r9, 14[rbx+r11]
	cmp	r9, 14
	jbe	.L703
	lea	rsi, [rcx+r8]
	lea	rbx, [rdx+r8]
	cmp	r11, 14
	jbe	.L643
	mov	r9, r8
	lea	r10, -16[r8]
	xor	eax, eax
	and	r9, -16
	lea	r11, [rcx+r10]
	add	r10, rdx
	neg	r9
	.p2align 5
	.p2align 4
	.p2align 3
.L628:
	movdqu	xmm1, XMMWORD PTR [r11+rax]
	movups	XMMWORD PTR [r10+rax], xmm1
	sub	rax, 16
	cmp	r9, rax
	jne	.L628
	mov	rax, r8
	add	rbx, r9
	add	rsi, r9
	and	eax, 15
	and	r8d, 15
	je	.L623
	lea	r10, -1[rax]
	mov	r8, rax
	cmp	r10, 6
	jbe	.L630
.L627:
	mov	rcx, QWORD PTR -8[rcx+r8]
	mov	QWORD PTR -8[rdx+r8], rcx
	mov	rdx, r8
	and	rdx, -8
	sub	rbx, rdx
	sub	rsi, rdx
	sub	rax, rdx
	and	r8d, 7
	je	.L623
.L630:
	movzx	r8d, BYTE PTR -1[rsi]
	mov	BYTE PTR -1[rbx], r8b
	cmp	rax, 1
	je	.L623
	movzx	r11d, BYTE PTR -2[rsi]
	mov	BYTE PTR -2[rbx], r11b
	cmp	rax, 2
	je	.L623
	movzx	r9d, BYTE PTR -3[rsi]
	mov	BYTE PTR -3[rbx], r9b
	cmp	rax, 3
	je	.L623
	movzx	r10d, BYTE PTR -4[rsi]
	mov	BYTE PTR -4[rbx], r10b
	cmp	rax, 4
	je	.L623
	movzx	ecx, BYTE PTR -5[rsi]
	mov	BYTE PTR -5[rbx], cl
	cmp	rax, 5
	je	.L623
	movzx	edx, BYTE PTR -6[rsi]
	mov	BYTE PTR -6[rbx], dl
	cmp	rax, 6
	je	.L623
	movzx	esi, BYTE PTR -7[rsi]
	mov	BYTE PTR -7[rbx], sil
.L623:
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L624:
	je	.L623
	test	r8, r8
	je	.L623
	lea	rax, -1[r8]
	cmp	rax, 6
	jbe	.L645
	lea	r10, 1[rcx]
	mov	r9, rdx
	sub	r9, r10
	cmp	r9, 14
	jbe	.L645
	cmp	rax, 14
	jbe	.L646
	mov	r10, r8
	xor	ebx, ebx
	and	r10, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L636:
	movdqu	xmm0, XMMWORD PTR [rcx+rbx]
	movups	XMMWORD PTR [rdx+rbx], xmm0
	add	rbx, 16
	cmp	r10, rbx
	jne	.L636
	mov	rax, r8
	lea	rsi, [rdx+r10]
	lea	r11, [rcx+r10]
	sub	rax, r10
	cmp	r8, r10
	je	.L623
	lea	r9, -1[rax]
	mov	r8, rax
	cmp	r9, 6
	jbe	.L639
.L635:
	mov	rcx, QWORD PTR [rcx+r10]
	mov	QWORD PTR [rdx+r10], rcx
	mov	rdx, r8
	and	rdx, -8
	add	rsi, rdx
	add	r11, rdx
	sub	rax, rdx
	and	r8d, 7
	je	.L623
.L639:
	movzx	r8d, BYTE PTR [r11]
	mov	BYTE PTR [rsi], r8b
	cmp	rax, 1
	je	.L623
	movzx	r10d, BYTE PTR 1[r11]
	mov	BYTE PTR 1[rsi], r10b
	cmp	rax, 2
	je	.L623
	movzx	ebx, BYTE PTR 2[r11]
	mov	BYTE PTR 2[rsi], bl
	cmp	rax, 3
	je	.L623
	movzx	r9d, BYTE PTR 3[r11]
	mov	BYTE PTR 3[rsi], r9b
	cmp	rax, 4
	je	.L623
	movzx	ecx, BYTE PTR 4[r11]
	mov	BYTE PTR 4[rsi], cl
	cmp	rax, 5
	je	.L623
	movzx	edx, BYTE PTR 5[r11]
	mov	BYTE PTR 5[rsi], dl
	cmp	rax, 6
	je	.L623
	movzx	r11d, BYTE PTR 6[r11]
	mov	BYTE PTR 6[rsi], r11b
	jmp	.L623
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L704:
	sub	r11, 1
.L703:
	movzx	ebx, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[rdx+r8], bl
	mov	r8, r11
	test	r11, r11
	jne	.L704
	jmp	.L623
	.p2align 4,,10
	.p2align 3
.L645:
	xor	esi, esi
	.p2align 4
	.p2align 4
	.p2align 3
.L702:
	movzx	eax, BYTE PTR [rcx+rsi]
	mov	BYTE PTR [rdx+rsi], al
	add	rsi, 1
	cmp	r8, rsi
	jne	.L702
	jmp	.L623
.L643:
	mov	rax, r8
	jmp	.L627
.L646:
	mov	rsi, rdx
	mov	r11, rcx
	mov	rax, r8
	xor	r10d, r10d
	jmp	.L635
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
	jmp	.L721
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L719:
	cmp	ecx, 32
	je	.L723
.L721:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L719
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L723:
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
	je	.L724
	mov	eax, ecx
	and	eax, 1
	jne	.L724
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L726:
	sar	ecx
	add	eax, 1
	test	cl, 1
	je	.L726
.L724:
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
	ja	.L731
	xor	eax, eax
	comiss	xmm0, DWORD PTR .LC7[rip]
	seta	al
.L731:
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
	ja	.L734
	xor	eax, eax
	comisd	xmm0, QWORD PTR .LC9[rip]
	seta	al
.L734:
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
	ja	.L740
	fld	TBYTE PTR .LC11[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L737
	.p2align 4,,10
	.p2align 3
.L740:
	fstp	st(0)
.L737:
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
	jp	.L743
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm1, xmm0
	jp	.L750
	jne	.L750
.L743:
	ret
	.p2align 4,,10
	.p2align 3
.L750:
	movss	xmm2, DWORD PTR .LC12[rip]
	test	edx, edx
	jns	.L745
	movss	xmm2, DWORD PTR .LC13[rip]
.L745:
	test	dl, 1
	je	.L746
	.p2align 4
	.p2align 3
.L747:
	mulss	xmm0, xmm2
.L746:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L743
	mulss	xmm2, xmm2
	test	dl, 1
	jne	.L747
.L757:
	mulss	xmm2, xmm2
	mov	ecx, edx
	shr	ecx, 31
	add	edx, ecx
	sar	edx
	test	dl, 1
	jne	.L747
	jmp	.L757
	.seh_endproc
	.p2align 4
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L759
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm1, xmm0
	jp	.L766
	jne	.L766
.L759:
	ret
	.p2align 4,,10
	.p2align 3
.L766:
	movsd	xmm2, QWORD PTR .LC14[rip]
	test	edx, edx
	jns	.L761
	movsd	xmm2, QWORD PTR .LC15[rip]
.L761:
	test	dl, 1
	je	.L762
	.p2align 4
	.p2align 3
.L763:
	mulsd	xmm0, xmm2
.L762:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L759
	mulsd	xmm2, xmm2
	test	dl, 1
	jne	.L763
.L773:
	mulsd	xmm2, xmm2
	mov	ecx, edx
	shr	ecx, 31
	add	edx, ecx
	sar	edx
	test	dl, 1
	jne	.L763
	jmp	.L773
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
	jp	.L775
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L782
	jne	.L782
	jmp	.L775
	.p2align 4,,10
	.p2align 3
.L791:
	fstp	st(0)
.L775:
	fstp	TBYTE PTR [rax]
	ret
	.p2align 4,,10
	.p2align 3
.L782:
	test	r8d, r8d
	js	.L789
	fld	DWORD PTR .LC12[rip]
.L777:
	test	r8b, 1
	je	.L778
	.p2align 4
	.p2align 3
.L779:
	fmul	st(1), st
.L778:
	mov	edx, r8d
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	je	.L791
	fmul	st, st(0)
	test	r8b, 1
	jne	.L779
.L790:
	mov	ecx, r8d
	fmul	st, st(0)
	shr	ecx, 31
	add	r8d, ecx
	sar	r8d
	test	r8b, 1
	jne	.L779
	jmp	.L790
	.p2align 4,,10
	.p2align 3
.L789:
	fld	DWORD PTR .LC13[rip]
	jmp	.L777
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
	je	.L793
	lea	rax, -1[r8]
	cmp	rax, 14
	jbe	.L799
	mov	r9, r8
	xor	ebx, ebx
	and	r9, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L795:
	movdqu	xmm2, XMMWORD PTR [rcx+rbx]
	movdqu	xmm0, XMMWORD PTR [rdx+rbx]
	pxor	xmm0, xmm2
	movups	XMMWORD PTR [rcx+rbx], xmm0
	add	rbx, 16
	cmp	rbx, r9
	jne	.L795
	mov	r11, r8
	lea	rax, [rcx+r9]
	lea	r10, [rdx+r9]
	sub	r11, r9
	cmp	r8, r9
	je	.L793
.L794:
	sub	r8, r9
	lea	rbx, -1[r8]
	cmp	rbx, 6
	jbe	.L797
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
	je	.L793
.L797:
	movzx	r8d, BYTE PTR [r10]
	xor	BYTE PTR [rax], r8b
	cmp	r11, 1
	je	.L793
	movzx	r9d, BYTE PTR 1[r10]
	xor	BYTE PTR 1[rax], r9b
	cmp	r11, 2
	je	.L793
	movzx	ebx, BYTE PTR 2[r10]
	xor	BYTE PTR 2[rax], bl
	cmp	r11, 3
	je	.L793
	movzx	edx, BYTE PTR 3[r10]
	xor	BYTE PTR 3[rax], dl
	cmp	r11, 4
	je	.L793
	movzx	r8d, BYTE PTR 4[r10]
	xor	BYTE PTR 4[rax], r8b
	cmp	r11, 5
	je	.L793
	movzx	r9d, BYTE PTR 5[r10]
	xor	BYTE PTR 5[rax], r9b
	cmp	r11, 6
	je	.L793
	movzx	r10d, BYTE PTR 6[r10]
	xor	BYTE PTR 6[rax], r10b
.L793:
	mov	rax, rcx
	pop	rbx
	ret
.L799:
	mov	rax, rcx
	mov	r10, rdx
	mov	r11, r8
	xor	r9d, r9d
	jmp	.L794
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
	je	.L826
	.p2align 4
	.p2align 4
	.p2align 3
.L827:
	add	r9, 1
	cmp	BYTE PTR [r9], 0
	jne	.L827
.L826:
	test	r8, r8
	jne	.L828
	jmp	.L829
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L830:
	add	rdx, 1
	add	r9, 1
	sub	r8, 1
	je	.L829
.L828:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [r9], r10b
	test	r10b, r10b
	jne	.L830
	ret
	.p2align 4,,10
	.p2align 3
.L829:
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
	je	.L839
.L840:
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L842
.L839:
	ret
	.p2align 4,,10
	.p2align 3
.L842:
	add	rax, 1
	cmp	rdx, rax
	jne	.L840
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
	je	.L853
.L849:
	mov	r8, rdx
	jmp	.L852
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L851:
	add	r8, 1
	cmp	r9b, r10b
	je	.L850
.L852:
	movzx	r9d, BYTE PTR [r8]
	test	r9b, r9b
	jne	.L851
	movzx	r10d, BYTE PTR 1[rax]
	add	rax, 1
	test	r10b, r10b
	jne	.L849
.L853:
	xor	eax, eax
.L850:
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
.L858:
	movsx	r9d, BYTE PTR [rcx]
	cmp	r9d, edx
	cmove	r8, rcx
	add	rcx, 1
	test	r9b, r9b
	jne	.L858
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
	je	.L872
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L862:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L862
	mov	r11, rcx
	sub	rax, rsi
	je	.L860
	lea	rbx, -1[rsi+rax]
	jmp	.L882
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L884:
	add	rcx, 1
	test	r8b, r8b
	je	.L883
.L882:
	movzx	r8d, BYTE PTR [rcx]
	cmp	r8b, dl
	jne	.L884
	mov	r8d, edx
	mov	rax, rsi
	mov	r10, rcx
	jmp	.L864
	.p2align 4,,10
	.p2align 3
.L885:
	test	r9b, r9b
	setne	r11b
	cmp	r9b, r8b
	sete	r9b
	test	r11b, r9b
	je	.L865
	movzx	r8d, BYTE PTR 1[r10]
	add	r10, 1
	add	rax, 1
	test	r8b, r8b
	je	.L865
.L864:
	movzx	r9d, BYTE PTR [rax]
	cmp	rax, rbx
	jne	.L885
.L865:
	cmp	r8b, BYTE PTR [rax]
	je	.L872
	add	rcx, 1
	jmp	.L882
	.p2align 4,,10
	.p2align 3
.L883:
	xor	r11d, r11d
.L860:
	mov	rax, r11
	pop	rbx
	pop	rsi
	ret
.L872:
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
	ja	.L896
	comisd	xmm0, xmm2
	jbe	.L890
	comisd	xmm2, xmm1
	ja	.L889
.L890:
	ret
	.p2align 4,,10
	.p2align 3
.L896:
	comisd	xmm1, xmm2
	jbe	.L890
.L889:
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
	je	.L897
	cmp	rdx, r9
	jb	.L908
	sub	rdx, r9
	add	rdx, rcx
	jc	.L908
	movzx	r11d, BYTE PTR [r8]
	jmp	.L903
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L907:
	mov	rax, rcx
.L899:
	cmp	rdx, rax
	jb	.L908
.L903:
	lea	rcx, 1[rax]
	cmp	BYTE PTR [rax], r11b
	jne	.L907
	cmp	r9, 1
	je	.L897
.L902:
	mov	r10d, 1
	jmp	.L900
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L901:
	add	r10, 1
	cmp	r9, r10
	je	.L897
.L900:
	movzx	ebx, BYTE PTR [r8+r10]
	cmp	BYTE PTR [rax+r10], bl
	je	.L901
	cmp	rdx, rcx
	jb	.L908
	lea	rax, 1[rcx]
	cmp	r11b, BYTE PTR [rcx]
	jne	.L899
	mov	r10, rcx
	mov	rcx, rax
	mov	rax, r10
	jmp	.L902
	.p2align 4,,10
	.p2align 3
.L908:
	xor	eax, eax
.L897:
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
	je	.L918
	call	memmove
	mov	rcx, rax
.L918:
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
	ja	.L946
	movsd	xmm5, QWORD PTR .LC19[rip]
	xor	ecx, ecx
	comisd	xmm0, xmm5
	jb	.L947
.L925:
	movsd	xmm2, QWORD PTR .LC15[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L932:
	mulsd	xmm0, xmm2
	add	eax, 1
	comisd	xmm0, xmm5
	jnb	.L932
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L922
.L949:
	xorpd	xmm0, XMMWORD PTR .LC16[rip]
.L922:
	ret
	.p2align 4,,10
	.p2align 3
.L947:
	movsd	xmm1, QWORD PTR .LC15[rip]
	comisd	xmm1, xmm0
	jbe	.L928
	ucomisd	xmm0, xmm2
	jp	.L938
	jne	.L938
.L928:
	mov	DWORD PTR [rdx], 0
	ret
	.p2align 4,,10
	.p2align 3
.L946:
	movsd	xmm4, QWORD PTR .LC17[rip]
	movapd	xmm3, xmm0
	xorpd	xmm3, XMMWORD PTR .LC16[rip]
	comisd	xmm4, xmm0
	jb	.L948
	movsd	xmm5, QWORD PTR .LC19[rip]
	movapd	xmm0, xmm3
	mov	ecx, 1
	jmp	.L925
	.p2align 4,,10
	.p2align 3
.L948:
	comisd	xmm0, QWORD PTR .LC18[rip]
	jbe	.L928
	movsd	xmm1, QWORD PTR .LC15[rip]
	mov	ecx, 1
.L926:
	movapd	xmm0, xmm3
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L934:
	addsd	xmm0, xmm0
	sub	eax, 1
	comisd	xmm1, xmm0
	ja	.L934
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	jne	.L949
	jmp	.L922
.L938:
	movapd	xmm3, xmm0
	xor	ecx, ecx
	jmp	.L926
	.seh_endproc
	.p2align 4
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	xor	r8d, r8d
	test	rcx, rcx
	je	.L950
	.p2align 5
	.p2align 4
	.p2align 3
.L952:
	mov	rax, rcx
	and	eax, 1
	neg	rax
	and	rax, rdx
	add	rdx, rdx
	add	r8, rax
	shr	rcx
	jne	.L952
.L950:
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
	jb	.L956
	jmp	.L979
	.p2align 4,,10
	.p2align 3
.L959:
	add	edx, edx
	add	r9d, r9d
	cmp	edx, ecx
	jnb	.L958
	test	r9d, r9d
	je	.L958
.L956:
	test	edx, edx
	jns	.L959
.L960:
	xor	eax, eax
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L962:
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
	jne	.L962
.L961:
	test	r8, r8
	cmovne	eax, ecx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L958:
	xor	eax, eax
	test	r9d, r9d
	jne	.L960
	test	r8, r8
	cmovne	eax, ecx
	pop	rbx
	ret
.L979:
	mov	eax, ecx
	sub	eax, edx
	cmp	ecx, edx
	setnb	dl
	cmovnb	ecx, eax
	movzx	eax, dl
	jmp	.L961
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
	je	.L982
	movsx	ecx, al
	sal	ecx, 8
	bsr	r8d, ecx
	xor	r8d, 31
	lea	r9d, -1[r8]
.L982:
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
	je	.L985
	bsr	rcx, rax
	xor	rcx, 63
	lea	r8d, -1[rcx]
.L985:
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
	je	.L988
	.p2align 5
	.p2align 4
	.p2align 3
.L990:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L990
.L988:
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
	jb	.L998
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L1065
.L998:
	test	ebx, ebx
	je	.L1066
	lea	r11d, -1[rbx]
	cmp	r11d, 2
	jbe	.L1000
	lea	rsi, 8[rdx]
	cmp	rcx, rsi
	je	.L1000
	mov	edi, r8d
	xor	eax, eax
	shr	edi, 4
	mov	r9d, edi
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1001:
	movdqu	xmm1, XMMWORD PTR [rdx+rax]
	movups	XMMWORD PTR [rcx+rax], xmm1
	add	rax, 16
	cmp	r9, rax
	jne	.L1001
	add	edi, edi
	cmp	ebx, edi
	je	.L1004
	mov	rbx, QWORD PTR [rdx+rdi*8]
	mov	QWORD PTR [rcx+rdi*8], rbx
.L1004:
	cmp	r10d, r8d
	jnb	.L993
	mov	esi, r8d
	mov	r9d, r10d
	sub	esi, r10d
	lea	eax, -1[rsi]
	cmp	eax, 6
	jbe	.L996
	lea	rbx, [rcx+r9]
	lea	rdi, 1[rdx+r9]
	mov	r11, rbx
	sub	r11, rdi
	cmp	r11, 14
	jbe	.L996
	cmp	eax, 14
	jbe	.L1021
	mov	r11d, esi
	lea	rdi, [rdx+r9]
	xor	eax, eax
	shr	r11d, 4
	sal	r11, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1006:
	movdqu	xmm2, XMMWORD PTR [rdi+rax]
	movups	XMMWORD PTR [rbx+rax], xmm2
	add	rax, 16
	cmp	r11, rax
	jne	.L1006
	mov	eax, esi
	and	eax, -16
	add	r10d, eax
	test	sil, 15
	je	.L993
	sub	esi, eax
	lea	ebx, -1[rsi]
	cmp	ebx, 6
	jbe	.L1008
.L1005:
	add	rax, r9
	mov	edi, esi
	and	edi, -8
	mov	r9, QWORD PTR [rdx+rax]
	add	r10d, edi
	and	esi, 7
	mov	QWORD PTR [rcx+rax], r9
	je	.L993
.L1008:
	mov	esi, r10d
	lea	eax, 1[r10]
	movzx	r11d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r11b
	cmp	eax, r8d
	jnb	.L993
	movzx	ebx, BYTE PTR [rdx+rax]
	lea	edi, 2[r10]
	mov	BYTE PTR [rcx+rax], bl
	cmp	edi, r8d
	jnb	.L993
	movzx	r9d, BYTE PTR [rdx+rdi]
	lea	esi, 3[r10]
	mov	BYTE PTR [rcx+rdi], r9b
	cmp	esi, r8d
	jnb	.L993
	movzx	r11d, BYTE PTR [rdx+rsi]
	lea	eax, 4[r10]
	mov	BYTE PTR [rcx+rsi], r11b
	cmp	eax, r8d
	jnb	.L993
	movzx	ebx, BYTE PTR [rdx+rax]
	lea	edi, 5[r10]
	mov	BYTE PTR [rcx+rax], bl
	cmp	edi, r8d
	jnb	.L993
	movzx	r9d, BYTE PTR [rdx+rdi]
	add	r10d, 6
	mov	BYTE PTR [rcx+rdi], r9b
	cmp	r10d, r8d
	jnb	.L993
	movzx	r8d, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], r8b
.L993:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1065:
	lea	edi, -1[r8]
	test	r8d, r8d
	je	.L993
	mov	r9d, edi
	cmp	edi, 6
	jbe	.L1019
	mov	rsi, rcx
	sub	rsi, rdx
	add	rsi, 15
	cmp	rsi, 14
	jbe	.L1019
	cmp	edi, 14
	jbe	.L1022
	mov	esi, r8d
	lea	rbx, -15[r9]
	xor	eax, eax
	shr	esi, 4
	lea	r10, [rdx+rbx]
	add	rbx, rcx
	neg	rsi
	sal	rsi, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1014:
	movdqu	xmm0, XMMWORD PTR [r10+rax]
	movups	XMMWORD PTR [rbx+rax], xmm0
	sub	rax, 16
	cmp	rax, rsi
	jne	.L1014
	mov	r11d, r8d
	and	r11d, -16
	sub	edi, r11d
	test	r8b, 15
	je	.L993
	sub	r8d, r11d
	lea	ebx, -1[r8]
	cmp	ebx, 6
	jbe	.L1017
.L1013:
	lea	r10, -7[r9]
	sub	r10, r11
	mov	r11d, r8d
	and	r11d, -8
	mov	r9, QWORD PTR [rdx+r10]
	sub	edi, r11d
	and	r8d, 7
	mov	QWORD PTR [rcx+r10], r9
	je	.L993
.L1017:
	mov	esi, edi
	lea	eax, -1[rdi]
	movzx	r8d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r8b
	test	edi, edi
	je	.L993
	mov	ebx, eax
	lea	r11d, -2[rdi]
	movzx	r10d, BYTE PTR [rdx+rbx]
	mov	BYTE PTR [rcx+rbx], r10b
	test	eax, eax
	je	.L993
	mov	esi, r11d
	lea	eax, -3[rdi]
	movzx	r9d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r9b
	test	r11d, r11d
	je	.L993
	mov	r8d, eax
	lea	r10d, -4[rdi]
	movzx	ebx, BYTE PTR [rdx+r8]
	mov	BYTE PTR [rcx+r8], bl
	test	eax, eax
	je	.L993
	mov	r11d, r10d
	lea	r9d, -5[rdi]
	movzx	esi, BYTE PTR [rdx+r11]
	mov	BYTE PTR [rcx+r11], sil
	test	r10d, r10d
	je	.L993
	mov	eax, r9d
	lea	edi, -6[rdi]
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	test	r9d, r9d
	je	.L993
	movzx	edx, BYTE PTR [rdx+rdi]
	mov	BYTE PTR [rcx+rdi], dl
	jmp	.L993
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1019:
	movzx	ebx, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rcx+r9], bl
	sub	r9, 1
	jb	.L993
	movzx	ebx, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rcx+r9], bl
	sub	r9, 1
	jnb	.L1019
	jmp	.L993
.L1021:
	xor	eax, eax
	jmp	.L1005
	.p2align 4,,10
	.p2align 3
.L1066:
	mov	r9d, r10d
	test	r8d, r8d
	je	.L993
.L996:
	mov	r10, r9
	.p2align 5
	.p2align 4
	.p2align 3
.L1010:
	movzx	esi, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], sil
	add	r10, 1
	cmp	r10d, r8d
	jb	.L1010
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1000:
	lea	r11d, 0[0+rbx*8]
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L1003:
	mov	rdi, QWORD PTR [rdx+rsi]
	mov	QWORD PTR [rcx+rsi], rdi
	add	rsi, 8
	cmp	rsi, r11
	jne	.L1003
	jmp	.L1004
.L1022:
	xor	r11d, r11d
	jmp	.L1013
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
	mov	r11d, r8d
	shr	r11d
	cmp	rcx, rdx
	jb	.L1071
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L1130
.L1071:
	test	r11d, r11d
	je	.L1070
	lea	eax, -1[r11]
	cmp	eax, 2
	jbe	.L1074
	lea	rbx, 2[rdx]
	mov	r10, rcx
	sub	r10, rbx
	cmp	r10, 12
	jbe	.L1074
	cmp	eax, 6
	jbe	.L1091
	mov	ebx, r8d
	xor	eax, eax
	shr	ebx, 4
	mov	r10d, ebx
	sal	r10, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1076:
	movdqu	xmm1, XMMWORD PTR [rdx+rax]
	movups	XMMWORD PTR [rcx+rax], xmm1
	add	rax, 16
	cmp	r10, rax
	jne	.L1076
	lea	esi, 0[0+rbx*8]
	cmp	r11d, esi
	je	.L1070
	mov	r9d, r11d
	sub	r9d, esi
	lea	ebx, -1[r9]
	cmp	ebx, 2
	jbe	.L1078
.L1075:
	mov	r10d, esi
	mov	ebx, r9d
	and	ebx, -4
	mov	rax, QWORD PTR [rdx+r10*2]
	add	esi, ebx
	and	r9d, 3
	mov	QWORD PTR [rcx+r10*2], rax
	je	.L1070
.L1078:
	mov	r9d, esi
	lea	eax, 1[rsi]
	movzx	r10d, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], r10w
	cmp	eax, r11d
	jnb	.L1070
	movzx	ebx, WORD PTR [rdx+rax*2]
	add	esi, 2
	mov	WORD PTR [rcx+rax*2], bx
	cmp	esi, r11d
	jnb	.L1070
	movzx	r11d, WORD PTR [rdx+rsi*2]
	mov	WORD PTR [rcx+rsi*2], r11w
.L1070:
	test	r8b, 1
	je	.L1067
.L1131:
	lea	r8d, -1[r8]
	movzx	edx, BYTE PTR [rdx+r8]
	mov	BYTE PTR [rcx+r8], dl
.L1067:
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1130:
	lea	r10d, -1[r8]
	test	r8d, r8d
	je	.L1067
	mov	r9d, r10d
	cmp	r10d, 6
	jbe	.L1089
	mov	rbx, rcx
	sub	rbx, rdx
	add	rbx, 15
	cmp	rbx, 14
	jbe	.L1089
	cmp	r10d, 14
	jbe	.L1092
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
.L1085:
	movdqu	xmm0, XMMWORD PTR [rsi+rax]
	movups	XMMWORD PTR [rbx+rax], xmm0
	sub	rax, 16
	cmp	rax, r11
	jne	.L1085
	mov	esi, r8d
	and	esi, -16
	sub	r10d, esi
	test	r8b, 15
	je	.L1067
	sub	r8d, esi
	lea	ebx, -1[r8]
	cmp	ebx, 6
	jbe	.L1087
.L1084:
	lea	r11, -7[r9]
	sub	r11, rsi
	mov	esi, r8d
	and	esi, -8
	mov	r9, QWORD PTR [rdx+r11]
	sub	r10d, esi
	and	r8d, 7
	mov	QWORD PTR [rcx+r11], r9
	je	.L1067
.L1087:
	mov	eax, r10d
	lea	ebx, -1[r10]
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	test	r10d, r10d
	je	.L1067
	mov	r11d, ebx
	lea	esi, -2[r10]
	movzx	r9d, BYTE PTR [rdx+r11]
	mov	BYTE PTR [rcx+r11], r9b
	test	ebx, ebx
	je	.L1067
	mov	eax, esi
	lea	ebx, -3[r10]
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	test	esi, esi
	je	.L1067
	mov	r11d, ebx
	lea	esi, -4[r10]
	movzx	r9d, BYTE PTR [rdx+r11]
	mov	BYTE PTR [rcx+r11], r9b
	test	ebx, ebx
	je	.L1067
	mov	eax, esi
	lea	ebx, -5[r10]
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	test	esi, esi
	je	.L1067
	mov	r11d, ebx
	lea	r10d, -6[r10]
	movzx	r9d, BYTE PTR [rdx+r11]
	mov	BYTE PTR [rcx+r11], r9b
	test	ebx, ebx
	je	.L1067
	movzx	edx, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], dl
	jmp	.L1067
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1089:
	movzx	esi, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rcx+r9], sil
	sub	r9, 1
	jb	.L1067
	movzx	esi, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rcx+r9], sil
	sub	r9, 1
	jnb	.L1089
	jmp	.L1067
.L1091:
	mov	r9d, r11d
	xor	esi, esi
	jmp	.L1075
	.p2align 4,,10
	.p2align 3
.L1074:
	lea	esi, [r11+r11]
	xor	r10d, r10d
	.p2align 5
	.p2align 4
	.p2align 3
.L1080:
	movzx	r9d, WORD PTR [rdx+r10]
	mov	WORD PTR [rcx+r10], r9w
	add	r10, 2
	cmp	r10, rsi
	jne	.L1080
	test	r8b, 1
	je	.L1067
	jmp	.L1131
.L1092:
	xor	esi, esi
	jmp	.L1084
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
	jb	.L1137
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L1204
.L1137:
	test	ebx, ebx
	je	.L1205
	lea	r11d, -1[rbx]
	cmp	r11d, 2
	jbe	.L1139
	lea	rsi, 4[rdx]
	mov	rax, rcx
	sub	rax, rsi
	cmp	rax, 8
	jbe	.L1139
	mov	edi, r8d
	xor	r11d, r11d
	shr	edi, 4
	mov	r9d, edi
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1140:
	movdqu	xmm1, XMMWORD PTR [rdx+r11]
	movups	XMMWORD PTR [rcx+r11], xmm1
	add	r11, 16
	cmp	r9, r11
	jne	.L1140
	lea	esi, 0[0+rdi*4]
	cmp	ebx, esi
	je	.L1143
	mov	eax, esi
	lea	r9d, 1[rsi]
	mov	edi, DWORD PTR [rdx+rax*4]
	mov	DWORD PTR [rcx+rax*4], edi
	cmp	r9d, ebx
	jnb	.L1143
	mov	r11d, DWORD PTR [rdx+r9*4]
	add	esi, 2
	mov	DWORD PTR [rcx+r9*4], r11d
	cmp	esi, ebx
	jnb	.L1143
	mov	ebx, DWORD PTR [rdx+rsi*4]
	mov	DWORD PTR [rcx+rsi*4], ebx
.L1143:
	cmp	r10d, r8d
	jnb	.L1132
	mov	esi, r8d
	mov	r9d, r10d
	sub	esi, r10d
	lea	eax, -1[rsi]
	cmp	eax, 6
	jbe	.L1135
	lea	rbx, [rcx+r9]
	lea	rdi, 1[rdx+r9]
	mov	r11, rbx
	sub	r11, rdi
	cmp	r11, 14
	jbe	.L1135
	cmp	eax, 14
	jbe	.L1160
	mov	r11d, esi
	lea	rdi, [rdx+r9]
	xor	eax, eax
	shr	r11d, 4
	sal	r11, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1145:
	movdqu	xmm2, XMMWORD PTR [rdi+rax]
	movups	XMMWORD PTR [rbx+rax], xmm2
	add	rax, 16
	cmp	r11, rax
	jne	.L1145
	mov	eax, esi
	and	eax, -16
	add	r10d, eax
	test	sil, 15
	je	.L1132
	sub	esi, eax
	lea	ebx, -1[rsi]
	cmp	ebx, 6
	jbe	.L1147
.L1144:
	add	rax, r9
	mov	edi, esi
	and	edi, -8
	mov	r9, QWORD PTR [rdx+rax]
	add	r10d, edi
	and	esi, 7
	mov	QWORD PTR [rcx+rax], r9
	je	.L1132
.L1147:
	mov	esi, r10d
	lea	eax, 1[r10]
	movzx	r11d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r11b
	cmp	eax, r8d
	jnb	.L1132
	movzx	ebx, BYTE PTR [rdx+rax]
	lea	edi, 2[r10]
	mov	BYTE PTR [rcx+rax], bl
	cmp	edi, r8d
	jnb	.L1132
	movzx	r9d, BYTE PTR [rdx+rdi]
	lea	esi, 3[r10]
	mov	BYTE PTR [rcx+rdi], r9b
	cmp	esi, r8d
	jnb	.L1132
	movzx	r11d, BYTE PTR [rdx+rsi]
	lea	eax, 4[r10]
	mov	BYTE PTR [rcx+rsi], r11b
	cmp	eax, r8d
	jnb	.L1132
	movzx	ebx, BYTE PTR [rdx+rax]
	lea	edi, 5[r10]
	mov	BYTE PTR [rcx+rax], bl
	cmp	edi, r8d
	jnb	.L1132
	movzx	r9d, BYTE PTR [rdx+rdi]
	add	r10d, 6
	mov	BYTE PTR [rcx+rdi], r9b
	cmp	r10d, r8d
	jnb	.L1132
	movzx	r8d, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], r8b
.L1132:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1204:
	lea	edi, -1[r8]
	test	r8d, r8d
	je	.L1132
	mov	r9d, edi
	cmp	edi, 6
	jbe	.L1158
	mov	rsi, rcx
	sub	rsi, rdx
	add	rsi, 15
	cmp	rsi, 14
	jbe	.L1158
	cmp	edi, 14
	jbe	.L1161
	mov	esi, r8d
	lea	rbx, -15[r9]
	xor	eax, eax
	shr	esi, 4
	lea	r10, [rdx+rbx]
	add	rbx, rcx
	neg	rsi
	sal	rsi, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1153:
	movdqu	xmm0, XMMWORD PTR [r10+rax]
	movups	XMMWORD PTR [rbx+rax], xmm0
	sub	rax, 16
	cmp	rax, rsi
	jne	.L1153
	mov	r11d, r8d
	and	r11d, -16
	sub	edi, r11d
	test	r8b, 15
	je	.L1132
	sub	r8d, r11d
	lea	ebx, -1[r8]
	cmp	ebx, 6
	jbe	.L1156
.L1152:
	lea	r10, -7[r9]
	sub	r10, r11
	mov	r11d, r8d
	and	r11d, -8
	mov	r9, QWORD PTR [rdx+r10]
	sub	edi, r11d
	and	r8d, 7
	mov	QWORD PTR [rcx+r10], r9
	je	.L1132
.L1156:
	mov	esi, edi
	lea	eax, -1[rdi]
	movzx	r8d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r8b
	test	edi, edi
	je	.L1132
	mov	ebx, eax
	lea	r11d, -2[rdi]
	movzx	r10d, BYTE PTR [rdx+rbx]
	mov	BYTE PTR [rcx+rbx], r10b
	test	eax, eax
	je	.L1132
	mov	esi, r11d
	lea	eax, -3[rdi]
	movzx	r9d, BYTE PTR [rdx+rsi]
	mov	BYTE PTR [rcx+rsi], r9b
	test	r11d, r11d
	je	.L1132
	mov	r8d, eax
	lea	r10d, -4[rdi]
	movzx	ebx, BYTE PTR [rdx+r8]
	mov	BYTE PTR [rcx+r8], bl
	test	eax, eax
	je	.L1132
	mov	r11d, r10d
	lea	r9d, -5[rdi]
	movzx	esi, BYTE PTR [rdx+r11]
	mov	BYTE PTR [rcx+r11], sil
	test	r10d, r10d
	je	.L1132
	mov	eax, r9d
	lea	edi, -6[rdi]
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	test	r9d, r9d
	je	.L1132
	movzx	edx, BYTE PTR [rdx+rdi]
	mov	BYTE PTR [rcx+rdi], dl
	jmp	.L1132
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1158:
	movzx	ebx, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rcx+r9], bl
	sub	r9, 1
	jb	.L1132
	movzx	ebx, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rcx+r9], bl
	sub	r9, 1
	jnb	.L1158
	jmp	.L1132
.L1160:
	xor	eax, eax
	jmp	.L1144
	.p2align 4,,10
	.p2align 3
.L1205:
	mov	r9d, r10d
	test	r8d, r8d
	je	.L1132
.L1135:
	mov	r10, r9
	.p2align 5
	.p2align 4
	.p2align 3
.L1149:
	movzx	esi, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], sil
	add	r10, 1
	cmp	r10d, r8d
	jb	.L1149
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1139:
	lea	esi, 0[0+rbx*4]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1142:
	mov	edi, DWORD PTR [rdx+rax]
	mov	DWORD PTR [rcx+rax], edi
	add	rax, 4
	cmp	rax, rsi
	jne	.L1142
	jmp	.L1143
.L1161:
	xor	r11d, r11d
	jmp	.L1152
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
	js	.L1214
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L1214:
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
	js	.L1217
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L1217:
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
	jne	.L1223
	mov	eax, edx
	sar	eax, 14
	jne	.L1220
	mov	eax, edx
	shr	eax, 13
	jne	.L1224
	mov	r8d, edx
	shr	r8d, 12
	jne	.L1225
	mov	r9d, edx
	shr	r9d, 11
	jne	.L1226
	mov	r10d, edx
	shr	r10d, 10
	jne	.L1227
	mov	r11d, edx
	shr	r11d, 9
	jne	.L1228
	mov	eax, edx
	shr	eax, 8
	jne	.L1229
	mov	r8d, edx
	shr	r8d, 7
	jne	.L1230
	mov	r9d, edx
	shr	r9d, 6
	jne	.L1231
	mov	r10d, edx
	shr	r10d, 5
	jne	.L1232
	mov	r11d, edx
	shr	r11d, 4
	jne	.L1233
	mov	eax, edx
	shr	eax, 3
	jne	.L1234
	mov	r8d, edx
	shr	r8d, 2
	jne	.L1235
	shr	edx
	jne	.L1236
	mov	eax, 15
	cmp	cx, 1
	adc	eax, 0
.L1220:
	ret
.L1223:
	xor	eax, eax
	ret
.L1234:
	mov	eax, 12
	ret
.L1224:
	mov	eax, 2
	ret
.L1225:
	mov	eax, 3
	ret
.L1226:
	mov	eax, 4
	ret
.L1227:
	mov	eax, 5
	ret
.L1228:
	mov	eax, 6
	ret
.L1229:
	mov	eax, 7
	ret
.L1230:
	mov	eax, 8
	ret
.L1231:
	mov	eax, 9
	ret
.L1232:
	mov	eax, 10
	ret
.L1233:
	mov	eax, 11
	ret
.L1235:
	mov	eax, 13
	ret
.L1236:
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
	jne	.L1241
	test	cl, 2
	jne	.L1242
	test	cl, 4
	jne	.L1243
	test	cl, 8
	jne	.L1244
	test	cl, 16
	jne	.L1245
	test	cl, 32
	jne	.L1246
	test	cl, 64
	jne	.L1247
	test	cl, -128
	jne	.L1248
	test	ch, 1
	jne	.L1249
	test	ch, 2
	jne	.L1250
	test	ch, 4
	jne	.L1251
	test	ch, 8
	jne	.L1252
	test	ch, 16
	jne	.L1253
	test	ch, 32
	jne	.L1254
	test	ch, 64
	jne	.L1255
	xor	eax, eax
	and	ch, -128
	sete	al
	add	eax, 15
	ret
.L1241:
	xor	eax, eax
	ret
.L1242:
	mov	eax, 1
	ret
.L1253:
	mov	eax, 12
	ret
.L1243:
	mov	eax, 2
	ret
.L1244:
	mov	eax, 3
	ret
.L1245:
	mov	eax, 4
	ret
.L1246:
	mov	eax, 5
	ret
.L1247:
	mov	eax, 6
	ret
.L1248:
	mov	eax, 7
	ret
.L1249:
	mov	eax, 8
	ret
.L1250:
	mov	eax, 9
	ret
.L1251:
	mov	eax, 10
	ret
.L1252:
	mov	eax, 11
	ret
.L1254:
	mov	eax, 13
	ret
.L1255:
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
	jnb	.L1263
	cvttss2si	eax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L1263:
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
	je	.L1266
	.p2align 5
	.p2align 4
	.p2align 3
.L1268:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L1268
.L1266:
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
	je	.L1271
	test	edx, edx
	je	.L1271
	.p2align 5
	.p2align 4
	.p2align 3
.L1273:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	r8d, eax
	shr	edx
	jne	.L1273
.L1271:
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
	jb	.L1279
	jmp	.L1302
	.p2align 4,,10
	.p2align 3
.L1282:
	add	edx, edx
	add	r9d, r9d
	cmp	edx, ecx
	jnb	.L1281
	test	r9d, r9d
	je	.L1281
.L1279:
	test	edx, edx
	jns	.L1282
.L1283:
	xor	eax, eax
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L1285:
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
	jne	.L1285
.L1284:
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1281:
	xor	eax, eax
	test	r9d, r9d
	jne	.L1283
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
.L1302:
	mov	eax, ecx
	sub	eax, edx
	cmp	ecx, edx
	setnb	dl
	cmovnb	ecx, eax
	movzx	eax, dl
	jmp	.L1284
	.seh_endproc
	.p2align 4
	.globl	__mspabi_cmpf
	.def	__mspabi_cmpf;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpf
__mspabi_cmpf:
	.seh_endprologue
	mov	eax, -1
	comiss	xmm1, xmm0
	ja	.L1305
	xor	eax, eax
	comiss	xmm0, xmm1
	seta	al
.L1305:
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
	ja	.L1308
	xor	eax, eax
	comisd	xmm0, xmm1
	seta	al
.L1308:
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
	js	.L1322
	je	.L1318
	xor	r11d, r11d
.L1315:
	mov	r8d, 1
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L1317:
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
	jne	.L1317
	mov	eax, r9d
	neg	eax
	test	r11d, r11d
	cmove	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L1322:
	neg	edx
	mov	r11d, 1
	jmp	.L1315
	.p2align 4,,10
	.p2align 3
.L1318:
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
	jns	.L1324
	neg	ecx
	xor	eax, eax
	mov	ebx, 1
.L1324:
	test	edx, edx
	jns	.L1325
	neg	edx
	mov	ebx, eax
.L1325:
	mov	r8d, edx
	mov	r9d, ecx
	mov	eax, 1
	cmp	edx, ecx
	jb	.L1326
	jmp	.L1350
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1353:
	test	eax, eax
	je	.L1331
.L1326:
	add	r8d, r8d
	add	eax, eax
	cmp	r8d, ecx
	jb	.L1353
.L1331:
	xor	edx, edx
	xor	r11d, r11d
	test	eax, eax
	je	.L1329
	.p2align 6
	.p2align 4
	.p2align 3
.L1328:
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
	jne	.L1328
.L1329:
	mov	eax, edx
	neg	eax
	test	ebx, ebx
	cmove	eax, edx
	pop	rbx
	ret
.L1350:
	cmp	ecx, edx
	setnb	dl
	movzx	edx, dl
	jmp	.L1329
	.seh_endproc
	.p2align 4
	.globl	__modsi3
	.def	__modsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__modsi3
__modsi3:
	.seh_endprologue
	xor	r9d, r9d
	test	ecx, ecx
	jns	.L1355
	neg	ecx
	mov	r9d, 1
.L1355:
	mov	eax, edx
	mov	r8d, ecx
	neg	eax
	cmovs	eax, edx
	mov	edx, 1
	cmp	eax, ecx
	jb	.L1356
	jmp	.L1380
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1382:
	test	edx, edx
	je	.L1376
.L1356:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jb	.L1382
	test	edx, edx
	je	.L1376
	.p2align 5
	.p2align 4
	.p2align 3
.L1358:
	mov	r10d, r8d
	sub	r10d, eax
	cmp	r8d, eax
	cmovnb	r8d, r10d
	shr	eax
	shr	edx
	jne	.L1358
.L1359:
	mov	eax, r8d
	neg	eax
	test	r9d, r9d
	cmove	eax, r8d
	ret
	.p2align 4,,10
	.p2align 3
.L1376:
	mov	r8d, ecx
	mov	eax, r8d
	neg	eax
	test	r9d, r9d
	cmove	eax, r8d
	ret
.L1380:
	sub	ecx, eax
	cmp	r8d, eax
	cmovnb	r8d, ecx
	jmp	.L1359
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
	jb	.L1384
	jmp	.L1450
	.p2align 4,,10
	.p2align 3
.L1387:
	lea	r10d, [rcx+rcx]
	lea	edx, [r9+r9]
	cmp	r10w, ax
	jnb	.L1386
	test	dx, dx
	je	.L1386
	mov	r9d, edx
	mov	ecx, r10d
.L1384:
	test	cx, cx
	jns	.L1387
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
	je	.L1389
.L1391:
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
	je	.L1389
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
	je	.L1389
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
	je	.L1389
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
	je	.L1389
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
	je	.L1389
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
	je	.L1389
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
	je	.L1389
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
	je	.L1389
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
	je	.L1389
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
	je	.L1389
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
	je	.L1389
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
	je	.L1389
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
	je	.L1389
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
	jns	.L1389
	mov	r9d, eax
	sub	r9d, ecx
	cmp	ax, cx
	setnb	cl
	cmovnb	eax, r9d
	movzx	r10d, cl
	or	edx, r10d
.L1389:
	test	r8d, r8d
	cmove	eax, edx
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1386:
	mov	eax, ebx
	test	dx, dx
	je	.L1389
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
	jmp	.L1391
.L1450:
	sub	eax, edx
	cmp	dx, bx
	sete	dl
	cmovne	eax, ebx
	movzx	edx, dl
	jmp	.L1389
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
	jb	.L1452
	jmp	.L1475
	.p2align 4,,10
	.p2align 3
.L1455:
	add	edx, edx
	add	r9d, r9d
	cmp	edx, ecx
	jnb	.L1454
	test	r9d, r9d
	je	.L1454
.L1452:
	test	edx, edx
	jns	.L1455
.L1456:
	xor	eax, eax
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L1458:
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
	jne	.L1458
.L1457:
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1454:
	xor	eax, eax
	test	r9d, r9d
	jne	.L1456
	test	r8d, r8d
	cmovne	eax, ecx
	pop	rbx
	ret
.L1475:
	mov	eax, ecx
	sub	eax, edx
	cmp	ecx, edx
	setnb	dl
	cmovnb	ecx, eax
	movzx	eax, dl
	jmp	.L1457
	.seh_endproc
	.p2align 4
	.globl	__ashldi3
	.def	__ashldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashldi3
__ashldi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1479
	lea	ecx, -32[rdx]
	xor	eax, eax
	sal	r8d, cl
.L1480:
	sal	r8, 32
	or	rax, r8
.L1478:
	ret
	.p2align 4,,10
	.p2align 3
.L1479:
	mov	rax, rcx
	test	edx, edx
	je	.L1478
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
	jmp	.L1480
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
	je	.L1485
	lea	ecx, -64[rdx]
	xor	r9d, r9d
	sal	rax, cl
.L1486:
	mov	r10, rax
	mov	rax, r9
	mov	r8, r10
.L1487:
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
.L1485:
	test	edx, edx
	je	.L1487
	mov	r9, rax
	mov	ecx, edx
	sal	r9, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rax, cl
	mov	ecx, edx
	sal	r8, cl
	or	rax, r8
	jmp	.L1486
	.seh_endproc
	.p2align 4
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1490
	sar	r8, 32
	lea	ecx, -32[rdx]
	mov	eax, r8d
	sar	r8d, cl
	sar	eax, 31
.L1491:
	sal	rax, 32
	or	rax, r8
.L1489:
	ret
	.p2align 4,,10
	.p2align 3
.L1490:
	mov	rax, rcx
	test	edx, edx
	je	.L1489
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
	jmp	.L1491
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
	je	.L1496
	mov	r10, rax
	lea	ecx, -64[rdx]
	sar	r10, 63
	sar	rax, cl
.L1497:
	mov	r9, rax
	mov	rax, r10
.L1498:
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
.L1496:
	mov	r9, r8
	test	edx, edx
	je	.L1498
	mov	r10, rax
	mov	ecx, edx
	sar	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L1497
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
	jl	.L1504
	mov	eax, 2
	jg	.L1504
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1504
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1504:
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
	jl	.L1510
	mov	eax, 1
	jg	.L1510
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1510
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1510:
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
	jl	.L1515
	mov	eax, 2
	jg	.L1515
	xor	eax, eax
	cmp	r8, r9
	jb	.L1515
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1515:
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
	jne	.L1524
	xor	eax, eax
	xor	ecx, ecx
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	cmove	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1524:
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
	je	.L1528
	shr	r8, 32
	lea	ecx, -32[rdx]
	xor	eax, eax
	shr	r8d, cl
.L1529:
	sal	rax, 32
	or	rax, r8
.L1527:
	ret
	.p2align 4,,10
	.p2align 3
.L1528:
	mov	rax, rcx
	test	edx, edx
	je	.L1527
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
	jmp	.L1529
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
	je	.L1534
	lea	ecx, -64[rdx]
	xor	r10d, r10d
	shr	rax, cl
.L1535:
	mov	r9, rax
	mov	rax, r10
.L1536:
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
.L1534:
	mov	r9, r8
	test	edx, edx
	je	.L1536
	mov	r10, rax
	mov	ecx, edx
	shr	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L1535
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
	je	.L1551
	.p2align 4
	.p2align 3
.L1553:
	mulsd	xmm1, xmm0
.L1551:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1552
	mulsd	xmm0, xmm0
	test	al, 1
	jne	.L1553
.L1557:
	mulsd	xmm0, xmm0
	mov	r8d, eax
	shr	r8d, 31
	add	eax, r8d
	sar	eax
	test	al, 1
	jne	.L1553
	jmp	.L1557
	.p2align 4,,10
	.p2align 3
.L1552:
	test	edx, edx
	jns	.L1550
	divsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L1550:
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
	je	.L1559
	.p2align 4
	.p2align 3
.L1561:
	mulss	xmm1, xmm0
.L1559:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1560
	mulss	xmm0, xmm0
	test	al, 1
	jne	.L1561
.L1565:
	mulss	xmm0, xmm0
	mov	r8d, eax
	shr	r8d, 31
	add	eax, r8d
	sar	eax
	test	al, 1
	jne	.L1561
	jmp	.L1565
	.p2align 4,,10
	.p2align 3
.L1560:
	test	edx, edx
	jns	.L1558
	divss	xmm2, xmm1
	movaps	xmm1, xmm2
.L1558:
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
	jb	.L1566
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L1566
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1566
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1566:
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
	jb	.L1572
	mov	eax, 1
	cmp	r9d, r8d
	jb	.L1572
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1572
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1572:
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
	jb	.L1577
	mov	eax, 2
	cmp	rdx, rcx
	jb	.L1577
	xor	eax, eax
	cmp	r8, r9
	jb	.L1577
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1577:
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
