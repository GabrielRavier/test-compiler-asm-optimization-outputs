	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	make_ti
	.type	make_ti, @function
make_ti:
.LFB0:
	.cfi_startproc
	mov	rdx, rdi
	mov	rax, rsi
	ret
	.cfi_endproc
.LFE0:
	.size	make_ti, .-make_ti
	.p2align 4
	.globl	make_tu
	.type	make_tu, @function
make_tu:
.LFB1:
	.cfi_startproc
	mov	rdx, rdi
	mov	rax, rsi
	ret
	.cfi_endproc
.LFE1:
	.size	make_tu, .-make_tu
	.p2align 4
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB2:
	.cfi_startproc
	mov	rax, rdx
	cmp	rsi, rdi
	jnb	.L5
	test	rdx, rdx
	je	.L6
	.p2align 5
	.p2align 4
	.p2align 3
.L7:
	movzx	r10d, BYTE PTR [rsi-1+rax]
	mov	BYTE PTR [rdi-1+rax], r10b
	sub	rax, 1
	jne	.L7
.L6:
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	cmp	rdi, rsi
	je	.L6
	test	rdx, rdx
	je	.L6
	lea	rdx, [rdx-1]
	cmp	rdx, 6
	jbe	.L18
	lea	r8, [rsi+1]
	mov	rcx, rdi
	sub	rcx, r8
	cmp	rcx, 14
	jbe	.L18
	cmp	rdx, 14
	jbe	.L19
	mov	r8, rax
	xor	r10d, r10d
	and	r8, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L10:
	movdqu	xmm0, XMMWORD PTR [rsi+r10]
	movups	XMMWORD PTR [rdi+r10], xmm0
	add	r10, 16
	cmp	r8, r10
	jne	.L10
	mov	rdx, rax
	lea	r9, [rsi+r8]
	lea	r11, [rdi+r8]
	sub	rdx, r8
	cmp	r8, rax
	je	.L6
	lea	rcx, [rdx-1]
	mov	rax, rdx
	cmp	rcx, 6
	jbe	.L13
.L9:
	mov	rsi, QWORD PTR [rsi+r8]
	mov	QWORD PTR [rdi+r8], rsi
	mov	r8, rax
	and	r8, -8
	add	r9, r8
	add	r11, r8
	sub	rdx, r8
	test	al, 7
	je	.L6
.L13:
	movzx	eax, BYTE PTR [r9]
	mov	BYTE PTR [r11], al
	cmp	rdx, 1
	je	.L6
	movzx	r10d, BYTE PTR [r9+1]
	mov	BYTE PTR [r11+1], r10b
	cmp	rdx, 2
	je	.L6
	movzx	ecx, BYTE PTR [r9+2]
	mov	BYTE PTR [r11+2], cl
	cmp	rdx, 3
	je	.L6
	movzx	esi, BYTE PTR [r9+3]
	mov	BYTE PTR [r11+3], sil
	cmp	rdx, 4
	je	.L6
	movzx	r8d, BYTE PTR [r9+4]
	mov	BYTE PTR [r11+4], r8b
	cmp	rdx, 5
	je	.L6
	movzx	eax, BYTE PTR [r9+5]
	mov	BYTE PTR [r11+5], al
	cmp	rdx, 6
	je	.L6
	movzx	r9d, BYTE PTR [r9+6]
	mov	BYTE PTR [r11+6], r9b
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L18:
	xor	r11d, r11d
	.p2align 5
	.p2align 4
	.p2align 3
.L50:
	movzx	edx, BYTE PTR [rsi+r11]
	mov	BYTE PTR [rdi+r11], dl
	add	r11, 1
	cmp	rax, r11
	jne	.L50
	jmp	.L6
.L19:
	mov	r9, rsi
	mov	r11, rdi
	mov	rdx, rax
	xor	r8d, r8d
	jmp	.L9
	.cfi_endproc
.LFE2:
	.size	memmove, .-memmove
	.p2align 4
	.globl	memccpy
	.type	memccpy, @function
memccpy:
.LFB3:
	.cfi_startproc
	movzx	edx, dl
	test	rcx, rcx
	jne	.L52
	jmp	.L54
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L55:
	add	rsi, 1
	add	rdi, 1
	sub	rcx, 1
	je	.L54
.L52:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rdi], r8b
	cmp	r8d, edx
	jne	.L55
	lea	rax, [rdi+1]
	ret
	.p2align 4,,10
	.p2align 3
.L54:
	xor	eax, eax
	ret
	.cfi_endproc
.LFE3:
	.size	memccpy, .-memccpy
	.p2align 4
	.globl	memchr
	.type	memchr, @function
memchr:
.LFB4:
	.cfi_startproc
	movzx	esi, sil
	test	rdx, rdx
	jne	.L63
	jmp	.L66
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L65:
	add	rdi, 1
	sub	rdx, 1
	je	.L66
.L63:
	movzx	eax, BYTE PTR [rdi]
	cmp	eax, esi
	jne	.L65
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L66:
	xor	eax, eax
	ret
	.cfi_endproc
.LFE4:
	.size	memchr, .-memchr
	.p2align 4
	.globl	memcmp
	.type	memcmp, @function
memcmp:
.LFB5:
	.cfi_startproc
	test	rdx, rdx
	jne	.L71
	jmp	.L75
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L73:
	add	rdi, 1
	add	rsi, 1
	sub	rdx, 1
	je	.L75
.L71:
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rdi], al
	je	.L73
	movzx	eax, BYTE PTR [rdi]
	movzx	edx, BYTE PTR [rsi]
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L75:
	xor	eax, eax
	ret
	.cfi_endproc
.LFE5:
	.size	memcmp, .-memcmp
	.p2align 4
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB6:
	.cfi_startproc
	test	rdx, rdx
	je	.L87
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	call	memcpy
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L87:
	mov	rax, rdi
	ret
	.cfi_endproc
.LFE6:
	.size	memcpy, .-memcpy
	.p2align 4
	.globl	memrchr
	.type	memrchr, @function
memrchr:
.LFB7:
	.cfi_startproc
	lea	rax, [rdi-1+rdx]
	movzx	esi, sil
	sub	rdi, 1
	jmp	.L91
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L93:
	mov	rdx, rax
	sub	rax, 1
	movzx	ecx, BYTE PTR [rdx]
	cmp	ecx, esi
	je	.L90
.L91:
	cmp	rax, rdi
	jne	.L93
	xor	edx, edx
.L90:
	mov	rax, rdx
	ret
	.cfi_endproc
.LFE7:
	.size	memrchr, .-memrchr
	.p2align 4
	.globl	memset
	.type	memset, @function
memset:
.LFB8:
	.cfi_startproc
	test	rdx, rdx
	je	.L99
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	movzx	esi, sil
	call	memset
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L99:
	mov	rax, rdi
	ret
	.cfi_endproc
.LFE8:
	.size	memset, .-memset
	.p2align 4
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB9:
	.cfi_startproc
	movzx	edx, BYTE PTR [rsi]
	mov	rax, rdi
	mov	BYTE PTR [rdi], dl
	test	dl, dl
	je	.L103
	.p2align 5
	.p2align 4
	.p2align 3
.L104:
	movzx	ecx, BYTE PTR [rsi+1]
	add	rsi, 1
	add	rax, 1
	mov	BYTE PTR [rax], cl
	test	cl, cl
	jne	.L104
.L103:
	ret
	.cfi_endproc
.LFE9:
	.size	stpcpy, .-stpcpy
	.p2align 4
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB10:
	.cfi_startproc
	movzx	edx, BYTE PTR [rdi]
	mov	rax, rdi
	movzx	esi, sil
	test	dl, dl
	jne	.L110
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L112:
	movzx	edx, BYTE PTR [rax+1]
	add	rax, 1
	test	dl, dl
	je	.L109
.L110:
	cmp	edx, esi
	jne	.L112
.L109:
	ret
	.cfi_endproc
.LFE10:
	.size	strchrnul, .-strchrnul
	.p2align 4
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB11:
	.cfi_startproc
	mov	rax, rdi
	jmp	.L119
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L122:
	add	rax, 1
	test	cl, cl
	je	.L121
.L119:
	movsx	ecx, BYTE PTR [rax]
	cmp	ecx, esi
	jne	.L122
	ret
	.p2align 4,,10
	.p2align 3
.L121:
	xor	eax, eax
	ret
	.cfi_endproc
.LFE11:
	.size	strchr, .-strchr
	.p2align 4
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.cfi_startproc
	movzx	edx, BYTE PTR [rdi]
	movzx	ecx, BYTE PTR [rsi]
	mov	eax, 1
	cmp	dl, cl
	je	.L124
	jmp	.L132
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L126:
	movzx	edx, BYTE PTR [rdi+rax]
	add	rax, 1
	movzx	ecx, BYTE PTR [rsi-1+rax]
	cmp	dl, cl
	jne	.L132
.L124:
	test	dl, dl
	jne	.L126
	xor	eax, eax
	sub	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L132:
	movzx	eax, dl
	sub	eax, ecx
	ret
	.cfi_endproc
.LFE12:
	.size	strcmp, .-strcmp
	.p2align 4
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB13:
	.cfi_startproc
	cmp	BYTE PTR [rdi], 0
	je	.L136
	mov	rax, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L135:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L135
	sub	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L136:
	xor	eax, eax
	ret
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.p2align 4
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB14:
	.cfi_startproc
	xor	eax, eax
	test	rdx, rdx
	je	.L138
	movzx	eax, BYTE PTR [rdi]
	sub	rdx, 1
	mov	rcx, rsi
	lea	r8, [rsi+rdx]
	test	al, al
	jne	.L142
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L157:
	cmp	rcx, r8
	je	.L141
	movzx	eax, BYTE PTR [rdi+1]
	add	rdi, 1
	lea	r10, [rcx+1]
	test	al, al
	je	.L156
	mov	rcx, r10
.L142:
	movzx	edx, BYTE PTR [rcx]
	test	dl, dl
	setne	r9b
	cmp	dl, al
	sete	sil
	test	r9b, sil
	jne	.L157
.L141:
	sub	eax, edx
.L138:
	ret
	.p2align 4,,10
	.p2align 3
.L156:
	movzx	edx, BYTE PTR [rcx+1]
	xor	eax, eax
	sub	eax, edx
	ret
.L155:
	movzx	edx, BYTE PTR [rsi]
	xor	eax, eax
	sub	eax, edx
	ret
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.p2align 4
	.globl	swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	mov	rcx, rdi
	cmp	rdx, 1
	jle	.L158
	mov	r10, rdx
	lea	rax, [rdx-2]
	shr	r10
	lea	r9, [r10-1]
	cmp	rax, 29
	jbe	.L165
	mov	r11d, 16711935
	mov	r8, rdx
	mov	rdi, rdx
	xor	eax, eax
	movd	xmm5, r11d
	shr	r8, 5
	and	rdi, -32
	pshufd	xmm4, xmm5, 0
	movaps	XMMWORD PTR [rsp-24], xmm4
	.p2align 4
	.p2align 3
.L161:
	movdqu	xmm0, XMMWORD PTR [rcx+rax]
	movdqu	xmm2, XMMWORD PTR [rcx+16+rax]
	movdqa	xmm1, XMMWORD PTR [rsp-24]
	movdqa	xmm3, XMMWORD PTR [rsp-24]
	pand	xmm1, xmm0
	psrlw	xmm0, 8
	pand	xmm3, xmm2
	psrlw	xmm2, 8
	packuswb	xmm1, xmm3
	packuswb	xmm0, xmm2
	movdqa	xmm6, xmm0
	punpckhbw	xmm0, xmm1
	punpcklbw	xmm6, xmm1
	movups	XMMWORD PTR [rsi+16+rax], xmm0
	movups	XMMWORD PTR [rsi+rax], xmm6
	add	rax, 32
	cmp	rdi, rax
	jne	.L161
	mov	rdi, r8
	mov	rax, r8
	sal	rdi, 4
	sal	rax, 5
	mov	r11, rdi
	lea	r8, [rsi+rax]
	add	rax, rcx
	neg	r11
	lea	rdx, [rdx+r11*2]
	cmp	rdi, r10
	je	.L170
.L160:
	sub	r9, rdi
	lea	r10, [r9+1]
	cmp	r9, 6
	jbe	.L163
	movq	xmm9, QWORD PTR .LC1[rip]
	add	rdi, rdi
	add	rcx, rdi
	add	rdi, rsi
	movq	xmm7, QWORD PTR [rcx]
	movq	xmm8, QWORD PTR [rcx+8]
	movdqa	xmm10, xmm9
	mov	rcx, r10
	and	rcx, -8
	pand	xmm10, xmm7
	pand	xmm9, xmm8
	lea	rsi, [rcx+rcx]
	neg	rcx
	psrlw	xmm7, 8
	packuswb	xmm10, xmm9
	add	r8, rsi
	add	rax, rsi
	psrlw	xmm8, 8
	pshufd	xmm11, xmm10, 8
	lea	rdx, [rdx+rcx*2]
	and	r10d, 7
	packuswb	xmm7, xmm8
	pshufd	xmm12, xmm7, 8
	movdqa	xmm13, xmm12
	punpcklbw	xmm12, xmm11
	punpcklbw	xmm13, xmm11
	pshufd	xmm14, xmm12, 78
	movq	QWORD PTR [rdi], xmm13
	movq	QWORD PTR [rdi+8], xmm14
	je	.L158
.L163:
	movzx	r9d, WORD PTR [rax]
	rol	r9w, 8
	mov	WORD PTR [r8], r9w
	cmp	rdx, 3
	jle	.L158
	movzx	edi, WORD PTR [rax+2]
	rol	di, 8
	mov	WORD PTR [r8+2], di
	cmp	rdx, 5
	jle	.L158
	movzx	r11d, WORD PTR [rax+4]
	rol	r11w, 8
	mov	WORD PTR [r8+4], r11w
	cmp	rdx, 7
	jle	.L158
	movzx	r10d, WORD PTR [rax+6]
	rol	r10w, 8
	mov	WORD PTR [r8+6], r10w
	cmp	rdx, 9
	jle	.L158
	movzx	ecx, WORD PTR [rax+8]
	rol	cx, 8
	mov	WORD PTR [r8+8], cx
	cmp	rdx, 11
	jle	.L158
	movzx	esi, WORD PTR [rax+10]
	rol	si, 8
	mov	WORD PTR [r8+10], si
	cmp	rdx, 13
	jle	.L158
	movzx	edx, WORD PTR [rax+12]
	rol	dx, 8
	mov	WORD PTR [r8+12], dx
.L158:
	ret
.L165:
	mov	rax, rdi
	mov	r8, rsi
	xor	edi, edi
	jmp	.L160
.L170:
	ret
	.cfi_endproc
.LFE15:
	.size	swab, .-swab
	.p2align 4
	.globl	isalpha
	.type	isalpha, @function
isalpha:
.LFB16:
	.cfi_startproc
	or	edi, 32
	xor	eax, eax
	sub	edi, 97
	cmp	edi, 25
	setbe	al
	ret
	.cfi_endproc
.LFE16:
	.size	isalpha, .-isalpha
	.p2align 4
	.globl	isascii
	.type	isascii, @function
isascii:
.LFB17:
	.cfi_startproc
	xor	eax, eax
	cmp	edi, 127
	setbe	al
	ret
	.cfi_endproc
.LFE17:
	.size	isascii, .-isascii
	.p2align 4
	.globl	isblank
	.type	isblank, @function
isblank:
.LFB18:
	.cfi_startproc
	cmp	edi, 32
	sete	al
	cmp	edi, 9
	sete	dl
	or	eax, edx
	movzx	eax, al
	ret
	.cfi_endproc
.LFE18:
	.size	isblank, .-isblank
	.p2align 4
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB19:
	.cfi_startproc
	cmp	edi, 31
	setbe	al
	cmp	edi, 127
	sete	dl
	or	eax, edx
	movzx	eax, al
	ret
	.cfi_endproc
.LFE19:
	.size	iscntrl, .-iscntrl
	.p2align 4
	.globl	isdigit
	.type	isdigit, @function
isdigit:
.LFB20:
	.cfi_startproc
	sub	edi, 48
	xor	eax, eax
	cmp	edi, 9
	setbe	al
	ret
	.cfi_endproc
.LFE20:
	.size	isdigit, .-isdigit
	.p2align 4
	.globl	isgraph
	.type	isgraph, @function
isgraph:
.LFB21:
	.cfi_startproc
	sub	edi, 33
	xor	eax, eax
	cmp	edi, 93
	setbe	al
	ret
	.cfi_endproc
.LFE21:
	.size	isgraph, .-isgraph
	.p2align 4
	.globl	islower
	.type	islower, @function
islower:
.LFB22:
	.cfi_startproc
	sub	edi, 97
	xor	eax, eax
	cmp	edi, 25
	setbe	al
	ret
	.cfi_endproc
.LFE22:
	.size	islower, .-islower
	.p2align 4
	.globl	isprint
	.type	isprint, @function
isprint:
.LFB23:
	.cfi_startproc
	sub	edi, 32
	xor	eax, eax
	cmp	edi, 94
	setbe	al
	ret
	.cfi_endproc
.LFE23:
	.size	isprint, .-isprint
	.p2align 4
	.globl	isspace
	.type	isspace, @function
isspace:
.LFB24:
	.cfi_startproc
	lea	eax, [rdi-9]
	cmp	eax, 4
	setbe	cl
	cmp	edi, 32
	sete	dl
	or	ecx, edx
	movzx	eax, cl
	ret
	.cfi_endproc
.LFE24:
	.size	isspace, .-isspace
	.p2align 4
	.globl	isupper
	.type	isupper, @function
isupper:
.LFB25:
	.cfi_startproc
	sub	edi, 65
	xor	eax, eax
	cmp	edi, 25
	setbe	al
	ret
	.cfi_endproc
.LFE25:
	.size	isupper, .-isupper
	.p2align 4
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB26:
	.cfi_startproc
	lea	eax, [rdi-127]
	cmp	eax, 32
	jbe	.L183
	cmp	edi, 31
	jbe	.L183
	lea	edx, [rdi-8232]
	mov	eax, 1
	cmp	edx, 1
	jbe	.L181
	sub	edi, 65529
	xor	eax, eax
	cmp	edi, 2
	setbe	al
	ret
	.p2align 4,,10
	.p2align 3
.L183:
	mov	eax, 1
.L181:
	ret
	.cfi_endproc
.LFE26:
	.size	iswcntrl, .-iswcntrl
	.p2align 4
	.globl	iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB27:
	.cfi_startproc
	sub	edi, 48
	xor	eax, eax
	cmp	edi, 9
	setbe	al
	ret
	.cfi_endproc
.LFE27:
	.size	iswdigit, .-iswdigit
	.p2align 4
	.globl	iswprint
	.type	iswprint, @function
iswprint:
.LFB28:
	.cfi_startproc
	cmp	edi, 254
	jbe	.L192
	lea	eax, [rdi-8234]
	cmp	eax, 47061
	jbe	.L189
	cmp	edi, 8231
	jbe	.L189
	lea	edx, [rdi-57344]
	mov	eax, 1
	cmp	edx, 8184
	jbe	.L186
	lea	ecx, [rdi-65532]
	xor	eax, eax
	cmp	ecx, 1048579
	ja	.L186
	not	edi
	xor	eax, eax
	and	edi, 65534
	setne	al
	ret
	.p2align 4,,10
	.p2align 3
.L189:
	mov	eax, 1
.L186:
	ret
	.p2align 4,,10
	.p2align 3
.L192:
	add	edi, 1
	xor	eax, eax
	and	edi, 127
	cmp	edi, 32
	seta	al
	ret
	.cfi_endproc
.LFE28:
	.size	iswprint, .-iswprint
	.p2align 4
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	lea	edx, [rdi-48]
	mov	eax, 1
	cmp	edx, 9
	jbe	.L193
	or	edi, 32
	xor	eax, eax
	sub	edi, 97
	cmp	edi, 5
	setbe	al
.L193:
	ret
	.cfi_endproc
.LFE29:
	.size	iswxdigit, .-iswxdigit
	.p2align 4
	.globl	toascii
	.type	toascii, @function
toascii:
.LFB30:
	.cfi_startproc
	mov	eax, edi
	and	eax, 127
	ret
	.cfi_endproc
.LFE30:
	.size	toascii, .-toascii
	.p2align 4
	.globl	fdim
	.type	fdim, @function
fdim:
.LFB31:
	.cfi_startproc
	ucomisd	xmm0, xmm0
	jp	.L197
	ucomisd	xmm1, xmm1
	jp	.L201
	comisd	xmm0, xmm1
	jbe	.L204
	subsd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L204:
	pxor	xmm0, xmm0
.L197:
	ret
	.p2align 4,,10
	.p2align 3
.L201:
	movapd	xmm0, xmm1
	ret
	.cfi_endproc
.LFE31:
	.size	fdim, .-fdim
	.p2align 4
	.globl	fdimf
	.type	fdimf, @function
fdimf:
.LFB32:
	.cfi_startproc
	ucomiss	xmm0, xmm0
	jp	.L205
	ucomiss	xmm1, xmm1
	jp	.L209
	comiss	xmm0, xmm1
	jbe	.L212
	subss	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L212:
	pxor	xmm0, xmm0
.L205:
	ret
	.p2align 4,,10
	.p2align 3
.L209:
	movaps	xmm0, xmm1
	ret
	.cfi_endproc
.LFE32:
	.size	fdimf, .-fdimf
	.p2align 4
	.globl	fmax
	.type	fmax, @function
fmax:
.LFB33:
	.cfi_startproc
	ucomisd	xmm0, xmm0
	jp	.L213
	ucomisd	xmm1, xmm1
	jp	.L219
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L215
	test	eax, eax
	jne	.L213
.L219:
	movapd	xmm1, xmm0
.L213:
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L215:
	maxsd	xmm1, xmm0
	movapd	xmm0, xmm1
	ret
	.cfi_endproc
.LFE33:
	.size	fmax, .-fmax
	.p2align 4
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB34:
	.cfi_startproc
	ucomiss	xmm0, xmm0
	jp	.L222
	ucomiss	xmm1, xmm1
	jp	.L228
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L224
	test	eax, eax
	jne	.L222
.L228:
	movaps	xmm1, xmm0
.L222:
	movaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L224:
	maxss	xmm1, xmm0
	movaps	xmm0, xmm1
	ret
	.cfi_endproc
.LFE34:
	.size	fmaxf, .-fmaxf
	.p2align 4
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB35:
	.cfi_startproc
	fld	TBYTE PTR [rsp+24]
	fld	TBYTE PTR [rsp+8]
	fucomi	st, st(0)
	jp	.L236
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L239
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
	je	.L233
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L236:
	fstp	st(0)
	jmp	.L231
	.p2align 4,,10
	.p2align 3
.L239:
	fstp	st(0)
.L231:
	ret
	.p2align 4,,10
	.p2align 3
.L233:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	ret
	.cfi_endproc
.LFE35:
	.size	fmaxl, .-fmaxl
	.p2align 4
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	ucomisd	xmm0, xmm0
	jp	.L245
	ucomisd	xmm1, xmm1
	jp	.L240
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L242
	test	eax, eax
	jne	.L240
.L245:
	movapd	xmm0, xmm1
.L240:
	ret
	.p2align 4,,10
	.p2align 3
.L242:
	minsd	xmm0, xmm1
	ret
	.cfi_endproc
.LFE36:
	.size	fmin, .-fmin
	.p2align 4
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB37:
	.cfi_startproc
	ucomiss	xmm0, xmm0
	jp	.L254
	ucomiss	xmm1, xmm1
	jp	.L249
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L251
	test	eax, eax
	jne	.L249
.L254:
	movaps	xmm0, xmm1
.L249:
	ret
	.p2align 4,,10
	.p2align 3
.L251:
	minss	xmm0, xmm1
	ret
	.cfi_endproc
.LFE37:
	.size	fminf, .-fminf
	.p2align 4
	.globl	fminl
	.type	fminl, @function
fminl:
.LFB38:
	.cfi_startproc
	fld	TBYTE PTR [rsp+24]
	fld	TBYTE PTR [rsp+8]
	fucomi	st, st(0)
	jp	.L266
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L264
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
	je	.L260
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L264:
	fstp	st(0)
	jmp	.L258
	.p2align 4,,10
	.p2align 3
.L266:
	fstp	st(0)
.L258:
	ret
	.p2align 4,,10
	.p2align 3
.L260:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	ret
	.cfi_endproc
.LFE38:
	.size	fminl, .-fminl
	.p2align 4
	.globl	l64a
	.type	l64a, @function
l64a:
.LFB39:
	.cfi_startproc
	mov	eax, edi
	mov	edx, OFFSET FLAT:s.0
	test	edi, edi
	je	.L268
	.p2align 5
	.p2align 4
	.p2align 3
.L269:
	mov	ecx, eax
	add	rdx, 1
	and	ecx, 63
	movzx	esi, BYTE PTR digits[rcx]
	mov	BYTE PTR [rdx-1], sil
	shr	eax, 6
	jne	.L269
.L268:
	mov	BYTE PTR [rdx], 0
	mov	eax, OFFSET FLAT:s.0
	ret
	.cfi_endproc
.LFE39:
	.size	l64a, .-l64a
	.p2align 4
	.globl	srand
	.type	srand, @function
srand:
.LFB40:
	.cfi_startproc
	lea	eax, [rdi-1]
	mov	QWORD PTR seed[rip], rax
	ret
	.cfi_endproc
.LFE40:
	.size	srand, .-srand
	.p2align 4
	.globl	rand
	.type	rand, @function
rand:
.LFB41:
	.cfi_startproc
	movabs	rax, 6364136223846793005
	imul	rax, QWORD PTR seed[rip]
	add	rax, 1
	mov	QWORD PTR seed[rip], rax
	shr	rax, 33
	ret
	.cfi_endproc
.LFE41:
	.size	rand, .-rand
	.p2align 4
	.globl	insque
	.type	insque, @function
insque:
.LFB42:
	.cfi_startproc
	test	rsi, rsi
	je	.L280
	movq	xmm0, QWORD PTR [rsi]
	movq	xmm1, rsi
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR [rdi], xmm0
	mov	QWORD PTR [rsi], rdi
	mov	rax, QWORD PTR [rdi]
	test	rax, rax
	je	.L274
	mov	QWORD PTR [rax+8], rdi
.L274:
	ret
	.p2align 4,,10
	.p2align 3
.L280:
	pxor	xmm2, xmm2
	movups	XMMWORD PTR [rdi], xmm2
	ret
	.cfi_endproc
.LFE42:
	.size	insque, .-insque
	.p2align 4
	.globl	remque
	.type	remque, @function
remque:
.LFB43:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi]
	test	rax, rax
	je	.L282
	mov	rdx, QWORD PTR [rdi+8]
	mov	QWORD PTR [rax+8], rdx
.L282:
	mov	rcx, QWORD PTR [rdi+8]
	test	rcx, rcx
	je	.L281
	mov	QWORD PTR [rcx], rax
.L281:
	ret
	.cfi_endproc
.LFE43:
	.size	remque, .-remque
	.p2align 4
	.globl	lsearch
	.type	lsearch, @function
lsearch:
.LFB44:
	.cfi_startproc
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	mov	r12, rdi
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	mov	rbx, rcx
	sub	rsp, 40
	.cfi_def_cfa_offset 96
	mov	rbp, QWORD PTR [rdx]
	mov	QWORD PTR [rsp+16], rsi
	mov	QWORD PTR [rsp+24], rdx
	mov	QWORD PTR [rsp+8], r8
	test	rbp, rbp
	je	.L291
	mov	r13, rsi
	xor	r15d, r15d
	jmp	.L293
	.p2align 4,,10
	.p2align 3
.L306:
	add	r15, 1
	add	r13, rbx
	cmp	rbp, r15
	je	.L291
.L293:
	mov	rax, QWORD PTR [rsp+8]
	mov	r14, r13
	mov	rsi, r13
	mov	rdi, r12
	call	rax
	test	eax, eax
	jne	.L306
.L290:
	add	rsp, 40
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	mov	rax, r14
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L291:
	.cfi_restore_state
	lea	rdx, [rbp+1]
	mov	rcx, QWORD PTR [rsp+24]
	mov	r14, QWORD PTR [rsp+16]
	imul	rbp, rbx
	mov	QWORD PTR [rcx], rdx
	add	r14, rbp
	test	rbx, rbx
	je	.L290
	mov	rdx, rbx
	mov	rsi, r12
	mov	rdi, r14
	call	memmove
	jmp	.L290
	.cfi_endproc
.LFE44:
	.size	lsearch, .-lsearch
	.p2align 4
	.globl	lfind
	.type	lfind, @function
lfind:
.LFB45:
	.cfi_startproc
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 24
	.cfi_def_cfa_offset 80
	mov	r14, QWORD PTR [rdx]
	mov	QWORD PTR [rsp+8], rdi
	test	r14, r14
	je	.L308
	mov	r13, rcx
	mov	r12, r8
	mov	rbx, rsi
	xor	ebp, ebp
	jmp	.L310
	.p2align 4,,10
	.p2align 3
.L319:
	add	rbp, 1
	add	rbx, r13
	cmp	r14, rbp
	je	.L308
.L310:
	mov	rdi, QWORD PTR [rsp+8]
	mov	r15, rbx
	mov	rsi, rbx
	call	r12
	test	eax, eax
	jne	.L319
.L307:
	add	rsp, 24
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	mov	rax, r15
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L308:
	.cfi_restore_state
	xor	r15d, r15d
	jmp	.L307
	.cfi_endproc
.LFE45:
	.size	lfind, .-lfind
	.p2align 4
	.globl	abs
	.type	abs, @function
abs:
.LFB46:
	.cfi_startproc
	mov	eax, edi
	neg	eax
	cmovs	eax, edi
	ret
	.cfi_endproc
.LFE46:
	.size	abs, .-abs
	.p2align 4
	.globl	atoi
	.type	atoi, @function
atoi:
.LFB47:
	.cfi_startproc
	jmp	.L348
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L344:
	add	rdi, 1
.L348:
	movsx	eax, BYTE PTR [rdi]
	lea	ecx, [rax-9]
	mov	edx, eax
	cmp	ecx, 4
	jbe	.L344
	cmp	dl, 32
	je	.L344
	cmp	dl, 43
	je	.L325
	cmp	dl, 45
	jne	.L349
	lea	r8, [rdi+1]
	movsx	edi, BYTE PTR [rdi+1]
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	ja	.L334
	mov	r9d, 1
.L328:
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L331:
	lea	r10d, [rcx+rcx*4]
	movsx	esi, BYTE PTR [r8+1]
	lea	r11d, [rdx-48]
	add	r8, 1
	add	r10d, r10d
	movsx	eax, r11b
	mov	ecx, r10d
	mov	edx, esi
	sub	esi, 48
	sub	ecx, eax
	cmp	esi, 9
	jbe	.L331
	sub	eax, r10d
	test	r9d, r9d
	cmovne	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L349:
	sub	eax, 48
	mov	r8, rdi
	xor	r9d, r9d
	cmp	eax, 9
	jbe	.L328
.L334:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L325:
	movsx	esi, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	xor	r9d, r9d
	mov	edx, esi
	sub	esi, 48
	cmp	esi, 9
	jbe	.L328
	jmp	.L334
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.p2align 4
	.globl	atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
	jmp	.L377
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L373:
	add	rdi, 1
.L377:
	movsx	eax, BYTE PTR [rdi]
	lea	ecx, [rax-9]
	mov	edx, eax
	cmp	ecx, 4
	jbe	.L373
	cmp	dl, 32
	je	.L373
	cmp	dl, 43
	je	.L354
	cmp	dl, 45
	jne	.L378
	lea	r8, [rdi+1]
	movsx	edi, BYTE PTR [rdi+1]
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	ja	.L363
	mov	r9d, 1
.L357:
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L360:
	lea	r10, [rcx+rcx*4]
	movsx	esi, BYTE PTR [r8+1]
	lea	r11d, [rdx-48]
	add	r8, 1
	add	r10, r10
	movsx	rax, r11b
	mov	rcx, r10
	mov	edx, esi
	sub	esi, 48
	sub	rcx, rax
	cmp	esi, 9
	jbe	.L360
	sub	rax, r10
	test	r9d, r9d
	cmovne	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L378:
	sub	eax, 48
	mov	r8, rdi
	xor	r9d, r9d
	cmp	eax, 9
	jbe	.L357
.L363:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L354:
	movsx	esi, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	xor	r9d, r9d
	mov	edx, esi
	sub	esi, 48
	cmp	esi, 9
	jbe	.L357
	jmp	.L363
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.p2align 4
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB171:
	.cfi_startproc
	jmp	.L403
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L400:
	add	rdi, 1
.L403:
	movsx	eax, BYTE PTR [rdi]
	lea	ecx, [rax-9]
	mov	edx, eax
	cmp	ecx, 4
	jbe	.L400
	cmp	dl, 32
	je	.L400
	cmp	dl, 43
	je	.L383
	cmp	dl, 45
	je	.L404
	sub	eax, 48
	mov	r8, rdi
	xor	r9d, r9d
	cmp	eax, 9
	ja	.L391
.L385:
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L388:
	lea	r10, [rcx+rcx*4]
	movsx	esi, BYTE PTR [r8+1]
	lea	r11d, [rdx-48]
	add	r8, 1
	add	r10, r10
	movsx	rax, r11b
	mov	rcx, r10
	mov	edx, esi
	sub	esi, 48
	sub	rcx, rax
	cmp	esi, 9
	jbe	.L388
	sub	rax, r10
	test	r9d, r9d
	cmovne	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L404:
	lea	r8, [rdi+1]
	movsx	edi, BYTE PTR [rdi+1]
	mov	r9d, 1
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	jbe	.L385
.L391:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L383:
	movsx	esi, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	mov	edx, esi
	sub	esi, 48
	cmp	esi, 9
	ja	.L391
	xor	r9d, r9d
	jmp	.L385
	.cfi_endproc
.LFE171:
	.size	atoll, .-atoll
	.p2align 4
	.globl	bsearch
	.type	bsearch, @function
bsearch:
.LFB50:
	.cfi_startproc
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 24
	.cfi_def_cfa_offset 80
	mov	QWORD PTR [rsp+8], rdi
	test	rdx, rdx
	je	.L406
	mov	r12, rsi
	mov	rbx, rdx
	mov	r13, rcx
	mov	r15, r8
	jmp	.L409
	.p2align 4,,10
	.p2align 3
.L419:
	je	.L405
	sub	rbx, 1
	lea	r12, [rbp+0+r13]
	sub	rbx, r14
	test	rbx, rbx
	je	.L406
.L409:
	mov	r14, rbx
	mov	rdi, QWORD PTR [rsp+8]
	shr	r14
	mov	rbp, r14
	imul	rbp, r13
	add	rbp, r12
	mov	rsi, rbp
	call	r15
	test	eax, eax
	jns	.L419
	mov	rbx, r14
	test	rbx, rbx
	jne	.L409
.L406:
	xor	ebp, ebp
.L405:
	add	rsp, 24
	.cfi_def_cfa_offset 56
	mov	rax, rbp
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE50:
	.size	bsearch, .-bsearch
	.p2align 4
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB51:
	.cfi_startproc
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	mov	r14, r8
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	mov	r13d, edx
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	mov	r12, rcx
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	mov	rbp, rsi
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 24
	.cfi_def_cfa_offset 80
	mov	QWORD PTR [rsp], rdi
	mov	QWORD PTR [rsp+8], r9
	test	edx, edx
	je	.L425
	.p2align 4
	.p2align 3
.L433:
	mov	r15d, r13d
	mov	rdx, QWORD PTR [rsp+8]
	mov	rdi, QWORD PTR [rsp]
	sar	r15d
	movsx	rbx, r15d
	imul	rbx, r12
	add	rbx, rbp
	mov	rsi, rbx
	call	r14
	test	eax, eax
	je	.L420
	jle	.L423
	lea	r13d, [r13-1]
	lea	rbp, [rbx+r12]
	sar	r13d
	jne	.L433
.L425:
	xor	ebx, ebx
.L420:
	add	rsp, 24
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	mov	rax, rbx
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L423:
	.cfi_restore_state
	test	r15d, r15d
	je	.L425
	mov	r13d, r15d
	jmp	.L433
	.cfi_endproc
.LFE51:
	.size	bsearch_r, .-bsearch_r
	.p2align 4
	.globl	div
	.type	div, @function
div:
.LFB52:
	.cfi_startproc
	mov	eax, edi
	cdq
	idiv	esi
	sal	rdx, 32
	or	rax, rdx
	ret
	.cfi_endproc
.LFE52:
	.size	div, .-div
	.p2align 4
	.globl	imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB53:
	.cfi_startproc
	mov	rax, rdi
	neg	rax
	cmovs	rax, rdi
	ret
	.cfi_endproc
.LFE53:
	.size	imaxabs, .-imaxabs
	.p2align 4
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB54:
	.cfi_startproc
	mov	rax, rdi
	cqo
	idiv	rsi
	ret
	.cfi_endproc
.LFE54:
	.size	imaxdiv, .-imaxdiv
	.p2align 4
	.globl	labs
	.type	labs, @function
labs:
.LFB167:
	.cfi_startproc
	mov	rax, rdi
	neg	rax
	cmovs	rax, rdi
	ret
	.cfi_endproc
.LFE167:
	.size	labs, .-labs
	.p2align 4
	.globl	ldiv
	.type	ldiv, @function
ldiv:
.LFB56:
	.cfi_startproc
	mov	rax, rdi
	cqo
	idiv	rsi
	ret
	.cfi_endproc
.LFE56:
	.size	ldiv, .-ldiv
	.p2align 4
	.globl	llabs
	.type	llabs, @function
llabs:
.LFB169:
	.cfi_startproc
	mov	rax, rdi
	neg	rax
	cmovs	rax, rdi
	ret
	.cfi_endproc
.LFE169:
	.size	llabs, .-llabs
	.p2align 4
	.globl	lldiv
	.type	lldiv, @function
lldiv:
.LFB58:
	.cfi_startproc
	mov	rax, rdi
	cqo
	idiv	rsi
	ret
	.cfi_endproc
.LFE58:
	.size	lldiv, .-lldiv
	.p2align 4
	.globl	wcschr
	.type	wcschr, @function
wcschr:
.LFB59:
	.cfi_startproc
	jmp	.L452
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L454:
	cmp	esi, eax
	je	.L453
	add	rdi, 4
.L452:
	mov	eax, DWORD PTR [rdi]
	test	eax, eax
	jne	.L454
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L453:
	mov	rax, rdi
	ret
	.cfi_endproc
.LFE59:
	.size	wcschr, .-wcschr
	.p2align 4
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60:
	.cfi_startproc
	mov	edx, DWORD PTR [rdi]
	mov	ecx, DWORD PTR [rsi]
	mov	eax, 4
	cmp	edx, ecx
	je	.L456
	jmp	.L457
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L458:
	mov	edx, DWORD PTR [rdi+rax]
	add	rax, 4
	mov	ecx, DWORD PTR [rsi-4+rax]
	cmp	edx, ecx
	jne	.L457
.L456:
	test	edx, edx
	jne	.L458
.L457:
	cmp	edx, ecx
	mov	esi, -1
	setg	dil
	movzx	eax, dil
	cmovl	eax, esi
	ret
	.cfi_endproc
.LFE60:
	.size	wcscmp, .-wcscmp
	.p2align 4
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB61:
	.cfi_startproc
	mov	rax, rdi
	xor	edx, edx
	.p2align 4
	.p2align 4
	.p2align 3
.L465:
	mov	ecx, DWORD PTR [rsi+rdx]
	mov	DWORD PTR [rax+rdx], ecx
	add	rdx, 4
	test	ecx, ecx
	jne	.L465
	ret
	.cfi_endproc
.LFE61:
	.size	wcscpy, .-wcscpy
	.p2align 4
	.globl	wcslen
	.type	wcslen, @function
wcslen:
.LFB62:
	.cfi_startproc
	mov	ecx, DWORD PTR [rdi]
	test	ecx, ecx
	je	.L470
	mov	rax, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L469:
	mov	edx, DWORD PTR [rax+4]
	add	rax, 4
	test	edx, edx
	jne	.L469
	sub	rax, rdi
	sar	rax, 2
	ret
	.p2align 4,,10
	.p2align 3
.L470:
	xor	eax, eax
	ret
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.p2align 4
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
	test	rdx, rdx
	jne	.L473
	jmp	.L479
	.p2align 4,,10
	.p2align 3
.L486:
	test	eax, eax
	je	.L477
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	je	.L479
.L473:
	mov	eax, DWORD PTR [rdi]
	cmp	DWORD PTR [rsi], eax
	je	.L486
.L477:
	mov	edx, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], edx
	mov	ecx, -1
	setg	sil
	movzx	eax, sil
	cmovl	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L479:
	xor	eax, eax
	ret
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	test	rdx, rdx
	jne	.L488
	jmp	.L491
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L490:
	add	rdi, 4
	sub	rdx, 1
	je	.L491
.L488:
	cmp	DWORD PTR [rdi], esi
	jne	.L490
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L491:
	xor	eax, eax
	ret
	.cfi_endproc
.LFE64:
	.size	wmemchr, .-wmemchr
	.p2align 4
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65:
	.cfi_startproc
	test	rdx, rdx
	jne	.L496
	jmp	.L501
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L498:
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	je	.L501
.L496:
	mov	eax, DWORD PTR [rdi]
	cmp	eax, DWORD PTR [rsi]
	je	.L498
	cmp	eax, DWORD PTR [rsi]
	mov	edx, -1
	setg	cl
	movzx	eax, cl
	cmovl	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L501:
	xor	eax, eax
	ret
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.p2align 4
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66:
	.cfi_startproc
	test	rdx, rdx
	je	.L513
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	sal	rdx, 2
	call	memcpy
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L513:
	mov	rax, rdi
	ret
	.cfi_endproc
.LFE66:
	.size	wmemcpy, .-wmemcpy
	.p2align 4
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67:
	.cfi_startproc
	mov	rcx, rdi
	mov	r8, rdx
	cmp	rdi, rsi
	je	.L542
	mov	rax, rcx
	lea	rdx, [0+rdx*4]
	lea	rdi, [r8-1]
	sub	rax, rsi
	cmp	rax, rdx
	jnb	.L564
	test	r8, r8
	je	.L542
	cmp	rdi, 2
	jbe	.L561
	mov	rax, rcx
	sub	rax, rsi
	add	rax, 12
	cmp	rax, 8
	jbe	.L561
	mov	r9, r8
	sub	rdx, 16
	xor	r11d, r11d
	shr	r9, 2
	lea	r10, [rsi+rdx]
	add	rdx, rcx
	neg	r9
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L522:
	movdqu	xmm1, XMMWORD PTR [r10+r11]
	movups	XMMWORD PTR [rdx+r11], xmm1
	sub	r11, 16
	cmp	r9, r11
	jne	.L522
	mov	rdx, r8
	and	rdx, -4
	sub	rdi, rdx
	and	r8d, 3
	je	.L542
	mov	r8d, DWORD PTR [rsi+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], r8d
	test	rdi, rdi
	je	.L542
	sub	rdi, 1
	mov	r10d, DWORD PTR [rsi+rdi*4]
	lea	rax, [0+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], r10d
	je	.L542
	mov	esi, DWORD PTR [rsi-4+rax]
	mov	DWORD PTR [rcx-4+rax], esi
.L542:
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L564:
	test	r8, r8
	je	.L542
	cmp	rdi, 2
	jbe	.L534
	lea	r9, [rsi+4]
	mov	r10, rcx
	sub	r10, r9
	cmp	r10, 8
	jbe	.L534
	mov	r11, r8
	xor	eax, eax
	xor	edx, edx
	shr	r11, 2
	.p2align 5
	.p2align 4
	.p2align 3
.L528:
	movdqu	xmm0, XMMWORD PTR [rsi+rax]
	add	rdx, 1
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	r11, rdx
	jne	.L528
	mov	r9, r8
	and	r9, -4
	sub	rdi, r9
	sal	r9, 2
	add	rsi, r9
	add	r9, rcx
	and	r8d, 3
	je	.L542
	mov	r8d, DWORD PTR [rsi]
	mov	DWORD PTR [r9], r8d
	test	rdi, rdi
	je	.L542
	mov	r10d, DWORD PTR [rsi+4]
	mov	DWORD PTR [r9+4], r10d
	cmp	rdi, 1
	je	.L542
	mov	esi, DWORD PTR [rsi+8]
	mov	DWORD PTR [r9+8], esi
	jmp	.L542
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L561:
	mov	r9d, DWORD PTR [rsi+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], r9d
	sub	rdi, 1
	jb	.L542
	mov	r9d, DWORD PTR [rsi+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], r9d
	sub	rdi, 1
	jnb	.L561
	jmp	.L542
	.p2align 4,,10
	.p2align 3
.L534:
	xor	edi, edi
	.p2align 5
	.p2align 4
	.p2align 3
.L562:
	mov	r11d, DWORD PTR [rsi+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], r11d
	add	rdi, 1
	cmp	r8, rdi
	jne	.L562
	jmp	.L542
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	mov	rax, rdi
	lea	r9, [rdx-1]
	test	rdx, rdx
	je	.L566
	cmp	r9, 2
	jbe	.L570
	mov	rdi, rdx
	movd	xmm1, esi
	xor	ecx, ecx
	shr	rdi, 2
	pshufd	xmm0, xmm1, 0
	.p2align 5
	.p2align 4
	.p2align 3
.L568:
	mov	r8, rcx
	add	rcx, 1
	sal	r8, 4
	movups	XMMWORD PTR [rax+r8], xmm0
	cmp	rdi, rcx
	jne	.L568
	test	dl, 3
	je	.L566
	and	rdx, -4
	sub	r9, rdx
	lea	rdx, [rax+rdx*4]
.L567:
	mov	DWORD PTR [rdx], esi
	test	r9, r9
	je	.L566
	mov	DWORD PTR [rdx+4], esi
	cmp	r9, 1
	je	.L566
	mov	DWORD PTR [rdx+8], esi
.L566:
	ret
.L570:
	mov	rdx, rdi
	jmp	.L567
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.p2align 4
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	mov	rax, rdx
	cmp	rdi, rsi
	jnb	.L585
	test	rdx, rdx
	je	.L584
	.p2align 5
	.p2align 4
	.p2align 3
.L587:
	movzx	r8d, BYTE PTR [rdi-1+rax]
	mov	BYTE PTR [rsi-1+rax], r8b
	sub	rax, 1
	jne	.L587
	ret
	.p2align 4,,10
	.p2align 3
.L585:
	jne	.L631
.L584:
	ret
	.p2align 4,,10
	.p2align 3
.L631:
	test	rdx, rdx
	je	.L584
	lea	rdx, [rdx-1]
	cmp	rdx, 6
	jbe	.L598
	lea	r8, [rdi+1]
	mov	rcx, rsi
	sub	rcx, r8
	cmp	rcx, 14
	jbe	.L598
	cmp	rdx, 14
	jbe	.L599
	mov	r8, rax
	xor	r10d, r10d
	and	r8, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L590:
	movdqu	xmm0, XMMWORD PTR [rdi+r10]
	movups	XMMWORD PTR [rsi+r10], xmm0
	add	r10, 16
	cmp	r8, r10
	jne	.L590
	mov	rdx, rax
	lea	r11, [rsi+r8]
	lea	r9, [rdi+r8]
	sub	rdx, r8
	cmp	r8, rax
	je	.L584
	lea	rcx, [rdx-1]
	mov	rax, rdx
	cmp	rcx, 6
	jbe	.L593
.L589:
	mov	rdi, QWORD PTR [rdi+r8]
	mov	QWORD PTR [rsi+r8], rdi
	mov	rsi, rax
	and	rsi, -8
	add	r11, rsi
	add	r9, rsi
	sub	rdx, rsi
	test	al, 7
	je	.L584
.L593:
	movzx	eax, BYTE PTR [r9]
	mov	BYTE PTR [r11], al
	cmp	rdx, 1
	je	.L584
	movzx	r8d, BYTE PTR [r9+1]
	mov	BYTE PTR [r11+1], r8b
	cmp	rdx, 2
	je	.L584
	movzx	r10d, BYTE PTR [r9+2]
	mov	BYTE PTR [r11+2], r10b
	cmp	rdx, 3
	je	.L584
	movzx	ecx, BYTE PTR [r9+3]
	mov	BYTE PTR [r11+3], cl
	cmp	rdx, 4
	je	.L584
	movzx	edi, BYTE PTR [r9+4]
	mov	BYTE PTR [r11+4], dil
	cmp	rdx, 5
	je	.L584
	movzx	esi, BYTE PTR [r9+5]
	mov	BYTE PTR [r11+5], sil
	cmp	rdx, 6
	je	.L584
	movzx	r9d, BYTE PTR [r9+6]
	mov	BYTE PTR [r11+6], r9b
	ret
	.p2align 4,,10
	.p2align 3
.L598:
	xor	r11d, r11d
	.p2align 5
	.p2align 4
	.p2align 3
.L630:
	movzx	edx, BYTE PTR [rdi+r11]
	mov	BYTE PTR [rsi+r11], dl
	add	r11, 1
	cmp	rax, r11
	jne	.L630
	ret
.L599:
	mov	r11, rsi
	mov	r9, rdi
	mov	rdx, rax
	xor	r8d, r8d
	jmp	.L589
	.cfi_endproc
.LFE69:
	.size	bcopy, .-bcopy
	.p2align 4
	.globl	rotl64
	.type	rotl64, @function
rotl64:
.LFB70:
	.cfi_startproc
	mov	rax, rdi
	mov	ecx, esi
	rol	rax, cl
	ret
	.cfi_endproc
.LFE70:
	.size	rotl64, .-rotl64
	.p2align 4
	.globl	rotr64
	.type	rotr64, @function
rotr64:
.LFB71:
	.cfi_startproc
	mov	rax, rdi
	mov	ecx, esi
	ror	rax, cl
	ret
	.cfi_endproc
.LFE71:
	.size	rotr64, .-rotr64
	.p2align 4
	.globl	rotl32
	.type	rotl32, @function
rotl32:
.LFB72:
	.cfi_startproc
	mov	eax, edi
	mov	ecx, esi
	rol	eax, cl
	ret
	.cfi_endproc
.LFE72:
	.size	rotl32, .-rotl32
	.p2align 4
	.globl	rotr32
	.type	rotr32, @function
rotr32:
.LFB73:
	.cfi_startproc
	mov	eax, edi
	mov	ecx, esi
	ror	eax, cl
	ret
	.cfi_endproc
.LFE73:
	.size	rotr32, .-rotr32
	.p2align 4
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB173:
	.cfi_startproc
	mov	rax, rdi
	mov	ecx, esi
	rol	rax, cl
	ret
	.cfi_endproc
.LFE173:
	.size	rotl_sz, .-rotl_sz
	.p2align 4
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB175:
	.cfi_startproc
	mov	rax, rdi
	mov	ecx, esi
	ror	rax, cl
	ret
	.cfi_endproc
.LFE175:
	.size	rotr_sz, .-rotr_sz
	.p2align 4
	.globl	rotl16
	.type	rotl16, @function
rotl16:
.LFB76:
	.cfi_startproc
	mov	eax, edi
	mov	ecx, esi
	rol	ax, cl
	ret
	.cfi_endproc
.LFE76:
	.size	rotl16, .-rotl16
	.p2align 4
	.globl	rotr16
	.type	rotr16, @function
rotr16:
.LFB77:
	.cfi_startproc
	mov	eax, edi
	mov	ecx, esi
	ror	ax, cl
	ret
	.cfi_endproc
.LFE77:
	.size	rotr16, .-rotr16
	.p2align 4
	.globl	rotl8
	.type	rotl8, @function
rotl8:
.LFB78:
	.cfi_startproc
	mov	eax, edi
	mov	ecx, esi
	rol	al, cl
	ret
	.cfi_endproc
.LFE78:
	.size	rotl8, .-rotl8
	.p2align 4
	.globl	rotr8
	.type	rotr8, @function
rotr8:
.LFB79:
	.cfi_startproc
	mov	eax, edi
	mov	ecx, esi
	ror	al, cl
	ret
	.cfi_endproc
.LFE79:
	.size	rotr8, .-rotr8
	.p2align 4
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB80:
	.cfi_startproc
	mov	eax, edi
	rol	ax, 8
	ret
	.cfi_endproc
.LFE80:
	.size	bswap_16, .-bswap_16
	.p2align 4
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB81:
	.cfi_startproc
	mov	eax, edi
	bswap	eax
	ret
	.cfi_endproc
.LFE81:
	.size	bswap_32, .-bswap_32
	.p2align 4
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB82:
	.cfi_startproc
	mov	rax, rdi
	bswap	rax
	ret
	.cfi_endproc
.LFE82:
	.size	bswap_64, .-bswap_64
	.p2align 4
	.globl	ffs
	.type	ffs, @function
ffs:
.LFB83:
	.cfi_startproc
	xor	ecx, ecx
	jmp	.L648
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L646:
	cmp	ecx, 32
	je	.L650
.L648:
	mov	eax, edi
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L646
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L650:
	xor	eax, eax
	ret
	.cfi_endproc
.LFE83:
	.size	ffs, .-ffs
	.p2align 4
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	xor	eax, eax
	test	edi, edi
	je	.L651
	mov	eax, edi
	and	eax, 1
	jne	.L651
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L653:
	sar	edi
	add	eax, 1
	test	dil, 1
	je	.L653
.L651:
	ret
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs, .-libiberty_ffs
	.p2align 4
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB85:
	.cfi_startproc
	movss	xmm1, DWORD PTR .LC6[rip]
	mov	eax, 1
	comiss	xmm1, xmm0
	ja	.L658
	xor	eax, eax
	comiss	xmm0, DWORD PTR .LC7[rip]
	seta	al
.L658:
	ret
	.cfi_endproc
.LFE85:
	.size	gl_isinff, .-gl_isinff
	.p2align 4
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB86:
	.cfi_startproc
	movsd	xmm1, QWORD PTR .LC8[rip]
	mov	eax, 1
	comisd	xmm1, xmm0
	ja	.L661
	xor	eax, eax
	comisd	xmm0, QWORD PTR .LC9[rip]
	seta	al
.L661:
	ret
	.cfi_endproc
.LFE86:
	.size	gl_isinfd, .-gl_isinfd
	.p2align 4
	.globl	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB87:
	.cfi_startproc
	fld	TBYTE PTR [rsp+8]
	mov	eax, 1
	fld	TBYTE PTR .LC10[rip]
	fcomip	st, st(1)
	ja	.L667
	fld	TBYTE PTR .LC11[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L664
	.p2align 4,,10
	.p2align 3
.L667:
	fstp	st(0)
.L664:
	ret
	.cfi_endproc
.LFE87:
	.size	gl_isinfl, .-gl_isinfl
	.p2align 4
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB88:
	.cfi_startproc
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, esi
	movsd	QWORD PTR [rsp-16], xmm0
	fld	QWORD PTR [rsp-16]
	fstp	TBYTE PTR [rdi]
	ret
	.cfi_endproc
.LFE88:
	.size	_Qp_itoq, .-_Qp_itoq
	.p2align 4
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB89:
	.cfi_startproc
	ucomiss	xmm0, xmm0
	jp	.L670
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm1, xmm0
	jp	.L677
	jne	.L677
.L670:
	ret
	.p2align 4,,10
	.p2align 3
.L677:
	movss	xmm2, DWORD PTR .LC12[rip]
	test	edi, edi
	jns	.L672
	movss	xmm2, DWORD PTR .LC13[rip]
.L672:
	test	dil, 1
	je	.L673
	.p2align 4
	.p2align 3
.L674:
	mulss	xmm0, xmm2
.L673:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L670
	mulss	xmm2, xmm2
	test	dil, 1
	jne	.L674
.L684:
	mulss	xmm2, xmm2
	mov	edx, edi
	shr	edx, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L674
	jmp	.L684
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.p2align 4
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB90:
	.cfi_startproc
	ucomisd	xmm0, xmm0
	jp	.L686
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm1, xmm0
	jp	.L693
	jne	.L693
.L686:
	ret
	.p2align 4,,10
	.p2align 3
.L693:
	movsd	xmm2, QWORD PTR .LC14[rip]
	test	edi, edi
	jns	.L688
	movsd	xmm2, QWORD PTR .LC15[rip]
.L688:
	test	dil, 1
	je	.L689
	.p2align 4
	.p2align 3
.L690:
	mulsd	xmm0, xmm2
.L689:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L686
	mulsd	xmm2, xmm2
	test	dil, 1
	jne	.L690
.L700:
	mulsd	xmm2, xmm2
	mov	edx, edi
	shr	edx, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L690
	jmp	.L700
	.cfi_endproc
.LFE90:
	.size	ldexp, .-ldexp
	.p2align 4
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB91:
	.cfi_startproc
	fld	TBYTE PTR [rsp+8]
	fucomi	st, st(0)
	jp	.L702
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L709
	jne	.L709
	jmp	.L702
	.p2align 4,,10
	.p2align 3
.L718:
	fstp	st(0)
.L702:
	ret
	.p2align 4,,10
	.p2align 3
.L709:
	test	edi, edi
	js	.L716
	fld	DWORD PTR .LC12[rip]
.L704:
	test	dil, 1
	je	.L705
	.p2align 4
	.p2align 3
.L706:
	fmul	st(1), st
.L705:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L718
	fmul	st, st(0)
	test	dil, 1
	jne	.L706
.L717:
	mov	edx, edi
	fmul	st, st(0)
	shr	edx, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L706
	jmp	.L717
	.p2align 4,,10
	.p2align 3
.L716:
	fld	DWORD PTR .LC13[rip]
	jmp	.L704
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.p2align 4
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	mov	rcx, rdi
	test	rdx, rdx
	je	.L720
	lea	rax, [rdx-1]
	cmp	rax, 14
	jbe	.L726
	mov	rdi, rdx
	xor	r10d, r10d
	and	rdi, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L722:
	movdqu	xmm2, XMMWORD PTR [rcx+r10]
	movdqu	xmm0, XMMWORD PTR [rsi+r10]
	pxor	xmm0, xmm2
	movups	XMMWORD PTR [rcx+r10], xmm0
	add	r10, 16
	cmp	r10, rdi
	jne	.L722
	mov	r9, rdx
	lea	r11, [rcx+rdi]
	lea	r8, [rsi+rdi]
	sub	r9, rdi
	cmp	rdx, rdi
	je	.L720
.L721:
	sub	rdx, rdi
	lea	rax, [rdx-1]
	cmp	rax, 6
	jbe	.L724
	lea	r10, [rcx+rdi]
	movq	xmm3, QWORD PTR [rsi+rdi]
	mov	rsi, rdx
	movq	xmm1, QWORD PTR [r10]
	and	rsi, -8
	add	r11, rsi
	add	r8, rsi
	sub	r9, rsi
	and	edx, 7
	pxor	xmm3, xmm1
	movq	QWORD PTR [r10], xmm3
	je	.L720
.L724:
	movzx	edx, BYTE PTR [r8]
	xor	BYTE PTR [r11], dl
	cmp	r9, 1
	je	.L720
	movzx	edi, BYTE PTR [r8+1]
	xor	BYTE PTR [r11+1], dil
	cmp	r9, 2
	je	.L720
	movzx	eax, BYTE PTR [r8+2]
	xor	BYTE PTR [r11+2], al
	cmp	r9, 3
	je	.L720
	movzx	r10d, BYTE PTR [r8+3]
	xor	BYTE PTR [r11+3], r10b
	cmp	r9, 4
	je	.L720
	movzx	esi, BYTE PTR [r8+4]
	xor	BYTE PTR [r11+4], sil
	cmp	r9, 5
	je	.L720
	movzx	edx, BYTE PTR [r8+5]
	xor	BYTE PTR [r11+5], dl
	cmp	r9, 6
	je	.L720
	movzx	r8d, BYTE PTR [r8+6]
	xor	BYTE PTR [r11+6], r8b
.L720:
	mov	rax, rcx
	ret
.L726:
	mov	r11, rdi
	mov	r8, rsi
	mov	r9, rdx
	xor	edi, edi
	jmp	.L721
	.cfi_endproc
.LFE92:
	.size	memxor, .-memxor
	.p2align 4
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB93:
	.cfi_startproc
	cmp	BYTE PTR [rdi], 0
	mov	rax, rdi
	mov	rcx, rdi
	je	.L753
	.p2align 4
	.p2align 4
	.p2align 3
.L754:
	add	rcx, 1
	cmp	BYTE PTR [rcx], 0
	jne	.L754
.L753:
	test	rdx, rdx
	jne	.L755
	jmp	.L756
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L757:
	add	rsi, 1
	add	rcx, 1
	sub	rdx, 1
	je	.L756
.L755:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rcx], r8b
	test	r8b, r8b
	jne	.L757
	ret
	.p2align 4,,10
	.p2align 3
.L756:
	mov	BYTE PTR [rcx], 0
	ret
	.cfi_endproc
.LFE93:
	.size	strncat, .-strncat
	.p2align 4
	.globl	strnlen
	.type	strnlen, @function
strnlen:
.LFB94:
	.cfi_startproc
	xor	eax, eax
	test	rsi, rsi
	je	.L766
.L767:
	cmp	BYTE PTR [rdi+rax], 0
	jne	.L769
.L766:
	ret
	.p2align 4,,10
	.p2align 3
.L769:
	add	rax, 1
	cmp	rsi, rax
	jne	.L767
	ret
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.p2align 4
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
	movzx	r8d, BYTE PTR [rdi]
	mov	rax, rdi
	test	r8b, r8b
	je	.L780
.L776:
	mov	rdx, rsi
	jmp	.L779
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L778:
	add	rdx, 1
	cmp	cl, r8b
	je	.L777
.L779:
	movzx	ecx, BYTE PTR [rdx]
	test	cl, cl
	jne	.L778
	movzx	r8d, BYTE PTR [rax+1]
	add	rax, 1
	test	r8b, r8b
	jne	.L776
.L780:
	xor	eax, eax
.L777:
	ret
	.cfi_endproc
.LFE95:
	.size	strpbrk, .-strpbrk
	.p2align 4
	.globl	strrchr
	.type	strrchr, @function
strrchr:
.LFB96:
	.cfi_startproc
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L786:
	movsx	ecx, BYTE PTR [rdi]
	cmp	esi, ecx
	cmove	rdx, rdi
	add	rdi, 1
	test	cl, cl
	jne	.L786
	mov	rax, rdx
	ret
	.cfi_endproc
.LFE96:
	.size	strrchr, .-strrchr
	.p2align 4
	.globl	strstr
	.type	strstr, @function
strstr:
.LFB97:
	.cfi_startproc
	movzx	r10d, BYTE PTR [rsi]
	mov	rdx, rdi
	test	r10b, r10b
	je	.L800
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L790:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L790
	mov	r9, rdx
	sub	rax, rsi
	je	.L788
	lea	r11, [rsi-1+rax]
	jmp	.L810
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L812:
	add	rdx, 1
	test	cl, cl
	je	.L811
.L810:
	movzx	ecx, BYTE PTR [rdx]
	cmp	cl, r10b
	jne	.L812
	mov	ecx, r10d
	mov	rax, rsi
	mov	r8, rdx
	jmp	.L792
	.p2align 4,,10
	.p2align 3
.L813:
	test	dil, dil
	setne	r9b
	cmp	dil, cl
	sete	dil
	test	r9b, dil
	je	.L793
	movzx	ecx, BYTE PTR [r8+1]
	add	r8, 1
	add	rax, 1
	test	cl, cl
	je	.L793
.L792:
	movzx	edi, BYTE PTR [rax]
	cmp	rax, r11
	jne	.L813
.L793:
	cmp	cl, BYTE PTR [rax]
	je	.L800
	add	rdx, 1
	jmp	.L810
	.p2align 4,,10
	.p2align 3
.L811:
	xor	r9d, r9d
.L788:
	mov	rax, r9
	ret
.L800:
	mov	r9, rdx
	mov	rax, r9
	ret
	.cfi_endproc
.LFE97:
	.size	strstr, .-strstr
	.p2align 4
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
	pxor	xmm2, xmm2
	comisd	xmm2, xmm0
	ja	.L824
	comisd	xmm0, xmm2
	jbe	.L818
	comisd	xmm2, xmm1
	ja	.L817
.L818:
	ret
	.p2align 4,,10
	.p2align 3
.L824:
	comisd	xmm1, xmm2
	jbe	.L818
.L817:
	xorpd	xmm0, XMMWORD PTR .LC16[rip]
	ret
	.cfi_endproc
.LFE98:
	.size	copysign, .-copysign
	.p2align 4
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB99:
	.cfi_startproc
	mov	rax, rdi
	test	rcx, rcx
	je	.L825
	cmp	rsi, rcx
	jb	.L836
	sub	rsi, rcx
	add	rsi, rdi
	jc	.L836
	movzx	r9d, BYTE PTR [rdx]
	jmp	.L831
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L835:
	mov	rax, rdi
.L827:
	cmp	rsi, rax
	jb	.L836
.L831:
	lea	rdi, [rax+1]
	cmp	BYTE PTR [rax], r9b
	jne	.L835
	cmp	rcx, 1
	je	.L825
.L830:
	mov	r11d, 1
	jmp	.L828
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L829:
	add	r11, 1
	cmp	rcx, r11
	je	.L825
.L828:
	movzx	r10d, BYTE PTR [rdx+r11]
	cmp	BYTE PTR [rax+r11], r10b
	je	.L829
	cmp	rsi, rdi
	jb	.L836
	lea	rax, [rdi+1]
	cmp	r9b, BYTE PTR [rdi]
	jne	.L827
	mov	r8, rdi
	mov	rdi, rax
	mov	rax, r8
	jmp	.L830
	.p2align 4,,10
	.p2align 3
.L836:
	xor	eax, eax
.L825:
	ret
	.cfi_endproc
.LFE99:
	.size	memmem, .-memmem
	.p2align 4
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB100:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdx
	test	rdx, rdx
	je	.L846
	call	memmove
	mov	rdi, rax
.L846:
	lea	rax, [rdi+rbx]
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	mempcpy, .-mempcpy
	.p2align 4
	.globl	frexp
	.type	frexp, @function
frexp:
.LFB101:
	.cfi_startproc
	pxor	xmm2, xmm2
	comisd	xmm2, xmm0
	ja	.L875
	movsd	xmm5, QWORD PTR .LC19[rip]
	xor	edx, edx
	comisd	xmm0, xmm5
	jb	.L876
.L854:
	movsd	xmm6, QWORD PTR .LC15[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L861:
	mulsd	xmm0, xmm6
	add	eax, 1
	comisd	xmm0, xmm5
	jnb	.L861
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	je	.L851
.L878:
	xorpd	xmm0, XMMWORD PTR .LC16[rip]
.L851:
	ret
	.p2align 4,,10
	.p2align 3
.L876:
	movsd	xmm1, QWORD PTR .LC15[rip]
	comisd	xmm1, xmm0
	jbe	.L857
	ucomisd	xmm0, xmm2
	jp	.L867
	jne	.L867
.L857:
	mov	DWORD PTR [rdi], 0
	ret
	.p2align 4,,10
	.p2align 3
.L875:
	movsd	xmm4, QWORD PTR .LC17[rip]
	movapd	xmm3, xmm0
	xorpd	xmm3, XMMWORD PTR .LC16[rip]
	comisd	xmm4, xmm0
	jb	.L877
	movsd	xmm5, QWORD PTR .LC19[rip]
	movapd	xmm0, xmm3
	mov	edx, 1
	jmp	.L854
	.p2align 4,,10
	.p2align 3
.L877:
	comisd	xmm0, QWORD PTR .LC18[rip]
	jbe	.L857
	movsd	xmm1, QWORD PTR .LC15[rip]
	mov	edx, 1
.L855:
	movapd	xmm0, xmm3
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L863:
	addsd	xmm0, xmm0
	sub	eax, 1
	comisd	xmm1, xmm0
	ja	.L863
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	jne	.L878
	ret
.L867:
	movapd	xmm3, xmm0
	xor	edx, edx
	jmp	.L855
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.p2align 4
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	xor	edx, edx
	test	rdi, rdi
	je	.L879
	.p2align 5
	.p2align 4
	.p2align 3
.L881:
	mov	rax, rdi
	and	eax, 1
	neg	rax
	and	rax, rsi
	add	rsi, rsi
	add	rdx, rax
	shr	rdi
	jne	.L881
.L879:
	mov	rax, rdx
	ret
	.cfi_endproc
.LFE102:
	.size	__muldi3, .-__muldi3
	.p2align 4
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB103:
	.cfi_startproc
	mov	ecx, 1
	cmp	esi, edi
	jb	.L885
	jmp	.L886
	.p2align 4,,10
	.p2align 3
.L888:
	add	esi, esi
	add	ecx, ecx
	cmp	esi, edi
	jnb	.L887
	test	ecx, ecx
	je	.L887
.L885:
	test	esi, esi
	jns	.L888
.L886:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L891:
	cmp	edi, esi
	jb	.L890
	sub	edi, esi
	or	eax, ecx
.L890:
	shr	esi
	shr	ecx
	jne	.L891
	test	rdx, rdx
	cmovne	eax, edi
	ret
	.p2align 4,,10
	.p2align 3
.L887:
	xor	eax, eax
	test	ecx, ecx
	jne	.L886
	test	rdx, rdx
	cmovne	eax, edi
	ret
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.p2align 4
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	mov	edx, edi
	mov	r8d, 7
	sar	dl, 7
	mov	eax, edx
	xor	eax, edi
	cmp	dil, dl
	je	.L907
	movsx	ecx, al
	sal	ecx, 8
	bsr	esi, ecx
	xor	esi, 31
	lea	r8d, [rsi-1]
.L907:
	mov	eax, r8d
	ret
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2, .-__clrsbqi2
	.p2align 4
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	mov	rdx, rdi
	mov	rax, rdi
	mov	esi, 63
	sar	rdx, 63
	xor	rax, rdx
	cmp	rdi, rdx
	je	.L910
	bsr	rcx, rax
	xor	rcx, 63
	lea	esi, [rcx-1]
.L910:
	mov	eax, esi
	ret
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2, .-__clrsbdi2
	.p2align 4
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106:
	.cfi_startproc
	xor	edx, edx
	test	edi, edi
	je	.L913
	.p2align 5
	.p2align 4
	.p2align 3
.L915:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L915
.L913:
	mov	eax, edx
	ret
	.cfi_endproc
.LFE106:
	.size	__mulsi3, .-__mulsi3
	.p2align 4
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107:
	.cfi_startproc
	mov	r10d, edx
	mov	r8d, edx
	mov	rcx, rsi
	shr	r10d, 3
	and	r8d, -8
	cmp	rdi, rsi
	jb	.L923
	mov	eax, edx
	add	rax, rsi
	cmp	rax, rdi
	jnb	.L961
.L923:
	test	r10d, r10d
	je	.L962
	lea	r9d, [r10-1]
	cmp	r9d, 2
	jbe	.L925
	lea	r11, [rcx+8]
	cmp	rdi, r11
	je	.L925
	mov	r9d, edx
	xor	eax, eax
	shr	r9d, 4
	mov	esi, r9d
	sal	rsi, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L926:
	movdqu	xmm0, XMMWORD PTR [rcx+rax]
	movups	XMMWORD PTR [rdi+rax], xmm0
	add	rax, 16
	cmp	rax, rsi
	jne	.L926
	add	r9d, r9d
	cmp	r10d, r9d
	je	.L929
	mov	r10, QWORD PTR [rcx+r9*8]
	mov	QWORD PTR [rdi+r9*8], r10
.L929:
	cmp	r8d, edx
	jnb	.L957
	mov	r11d, edx
	mov	r10d, r8d
	sub	r11d, r8d
	lea	eax, [r11-1]
	cmp	eax, 6
	jbe	.L956
	mov	esi, r8d
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	lea	r10, [rdi+rsi]
	lea	rbx, [rcx+1+rsi]
	mov	r9, r10
	sub	r9, rbx
	cmp	r9, 14
	jbe	.L921
	cmp	eax, 14
	jbe	.L938
	mov	r9d, r11d
	lea	rbx, [rcx+rsi]
	xor	eax, eax
	shr	r9d, 4
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L931:
	movdqu	xmm1, XMMWORD PTR [rbx+rax]
	movups	XMMWORD PTR [r10+rax], xmm1
	add	rax, 16
	cmp	r9, rax
	jne	.L931
	mov	eax, r11d
	and	eax, -16
	add	r8d, eax
	test	r11b, 15
	je	.L918
	sub	r11d, eax
	lea	r10d, [r11-1]
	cmp	r10d, 6
	jbe	.L933
.L930:
	add	rax, rsi
	mov	ebx, r11d
	and	ebx, -8
	mov	rsi, QWORD PTR [rcx+rax]
	add	r8d, ebx
	and	r11d, 7
	mov	QWORD PTR [rdi+rax], rsi
	je	.L918
.L933:
	mov	r11d, r8d
	lea	eax, [r8+1]
	movzx	r9d, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], r9b
	cmp	eax, edx
	jnb	.L918
	movzx	r10d, BYTE PTR [rcx+rax]
	lea	ebx, [r8+2]
	mov	BYTE PTR [rdi+rax], r10b
	cmp	ebx, edx
	jnb	.L918
	movzx	esi, BYTE PTR [rcx+rbx]
	lea	r11d, [r8+3]
	mov	BYTE PTR [rdi+rbx], sil
	cmp	r11d, edx
	jnb	.L918
	movzx	r9d, BYTE PTR [rcx+r11]
	lea	eax, [r8+4]
	mov	BYTE PTR [rdi+r11], r9b
	cmp	eax, edx
	jnb	.L918
	movzx	r10d, BYTE PTR [rcx+rax]
	lea	ebx, [r8+5]
	mov	BYTE PTR [rdi+rax], r10b
	cmp	ebx, edx
	jnb	.L918
	movzx	esi, BYTE PTR [rcx+rbx]
	add	r8d, 6
	mov	BYTE PTR [rdi+rbx], sil
	cmp	r8d, edx
	jnb	.L918
	movzx	ecx, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], cl
.L918:
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L961:
	.cfi_restore 3
	lea	esi, [rdx-1]
	test	edx, edx
	je	.L957
	.p2align 4
	.p2align 4
	.p2align 3
.L937:
	movzx	edx, BYTE PTR [rcx+rsi]
	mov	BYTE PTR [rdi+rsi], dl
	sub	rsi, 1
	jnb	.L937
	ret
.L938:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xor	eax, eax
	jmp	.L930
	.p2align 4,,10
	.p2align 3
.L925:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	lea	r11d, [0+r10*8]
	xor	r9d, r9d
	.p2align 5
	.p2align 4
	.p2align 3
.L928:
	mov	rsi, QWORD PTR [rcx+r9]
	mov	QWORD PTR [rdi+r9], rsi
	add	r9, 8
	cmp	r11, r9
	jne	.L928
	jmp	.L929
.L921:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	r8, rsi
	.p2align 5
	.p2align 4
	.p2align 3
.L935:
	movzx	r11d, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], r11b
	add	r8, 1
	cmp	r8d, edx
	jb	.L935
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L962:
	.cfi_restore 3
	mov	r10d, r8d
	test	edx, edx
	je	.L963
.L956:
	mov	r9, r10
.L958:
	movzx	eax, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], al
	add	r9, 1
	cmp	r9d, edx
	jb	.L958
.L957:
	ret
.L963:
	ret
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.p2align 4
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	mov	r9d, edx
	mov	rcx, rdi
	shr	r9d
	cmp	rdi, rsi
	jb	.L968
	mov	eax, edx
	add	rax, rsi
	cmp	rax, rdi
	jnb	.L993
.L968:
	test	r9d, r9d
	je	.L967
	lea	r10d, [r9-1]
	cmp	r10d, 2
	jbe	.L971
	lea	r8, [rsi+2]
	mov	r11, rcx
	sub	r11, r8
	cmp	r11, 12
	jbe	.L971
	cmp	r10d, 6
	jbe	.L981
	mov	r10d, edx
	xor	r11d, r11d
	shr	r10d, 4
	mov	r8d, r10d
	sal	r8, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L973:
	movdqu	xmm0, XMMWORD PTR [rsi+r11]
	movups	XMMWORD PTR [rcx+r11], xmm0
	add	r11, 16
	cmp	r11, r8
	jne	.L973
	lea	eax, [0+r10*8]
	cmp	r9d, eax
	je	.L967
	mov	edi, r9d
	sub	edi, eax
	lea	r10d, [rdi-1]
	cmp	r10d, 2
	jbe	.L975
.L972:
	mov	r8d, eax
	mov	r10d, edi
	and	r10d, -4
	mov	r11, QWORD PTR [rsi+r8*2]
	add	eax, r10d
	and	edi, 3
	mov	QWORD PTR [rcx+r8*2], r11
	je	.L967
.L975:
	mov	edi, eax
	lea	r11d, [rax+1]
	movzx	r8d, WORD PTR [rsi+rdi*2]
	mov	WORD PTR [rcx+rdi*2], r8w
	cmp	r11d, r9d
	jnb	.L967
	movzx	r10d, WORD PTR [rsi+r11*2]
	add	eax, 2
	mov	WORD PTR [rcx+r11*2], r10w
	cmp	eax, r9d
	jnb	.L967
	movzx	r9d, WORD PTR [rsi+rax*2]
	mov	WORD PTR [rcx+rax*2], r9w
.L967:
	test	dl, 1
	je	.L964
.L994:
	lea	r11d, [rdx-1]
	movzx	esi, BYTE PTR [rsi+r11]
	mov	BYTE PTR [rcx+r11], sil
	ret
	.p2align 4,,10
	.p2align 3
.L993:
	lea	edi, [rdx-1]
	test	edx, edx
	je	.L964
	.p2align 4
	.p2align 4
	.p2align 3
.L980:
	movzx	edx, BYTE PTR [rsi+rdi]
	mov	BYTE PTR [rcx+rdi], dl
	sub	rdi, 1
	jnb	.L980
.L964:
	ret
.L981:
	mov	edi, r9d
	xor	eax, eax
	jmp	.L972
	.p2align 4,,10
	.p2align 3
.L971:
	lea	r8d, [r9+r9]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L977:
	movzx	edi, WORD PTR [rsi+rax]
	mov	WORD PTR [rcx+rax], di
	add	rax, 2
	cmp	rax, r8
	jne	.L977
	test	dl, 1
	je	.L964
	jmp	.L994
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	mov	r10d, edx
	mov	r8d, edx
	mov	rcx, rsi
	shr	r10d, 2
	and	r8d, -4
	cmp	rdi, rsi
	jb	.L1000
	mov	eax, edx
	add	rax, rsi
	cmp	rax, rdi
	jnb	.L1038
.L1000:
	test	r10d, r10d
	je	.L1039
	lea	r9d, [r10-1]
	cmp	r9d, 2
	jbe	.L1002
	lea	r11, [rcx+4]
	mov	rax, rdi
	sub	rax, r11
	cmp	rax, 8
	jbe	.L1002
	mov	r9d, edx
	xor	r11d, r11d
	shr	r9d, 4
	mov	esi, r9d
	sal	rsi, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1003:
	movdqu	xmm0, XMMWORD PTR [rcx+r11]
	movups	XMMWORD PTR [rdi+r11], xmm0
	add	r11, 16
	cmp	r11, rsi
	jne	.L1003
	lea	eax, [0+r9*4]
	cmp	r10d, eax
	je	.L1006
	mov	esi, eax
	lea	r11d, [rax+1]
	mov	r9d, DWORD PTR [rcx+rsi*4]
	mov	DWORD PTR [rdi+rsi*4], r9d
	cmp	r11d, r10d
	jnb	.L1006
	mov	esi, DWORD PTR [rcx+r11*4]
	add	eax, 2
	mov	DWORD PTR [rdi+r11*4], esi
	cmp	eax, r10d
	jnb	.L1006
	mov	r10d, DWORD PTR [rcx+rax*4]
	mov	DWORD PTR [rdi+rax*4], r10d
.L1006:
	cmp	r8d, edx
	jnb	.L1034
	mov	r11d, edx
	mov	esi, r8d
	sub	r11d, r8d
	lea	eax, [r11-1]
	cmp	eax, 6
	jbe	.L1033
	mov	esi, r8d
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	lea	r10, [rdi+rsi]
	lea	rbx, [rcx+1+rsi]
	mov	r9, r10
	sub	r9, rbx
	cmp	r9, 14
	jbe	.L998
	cmp	eax, 14
	jbe	.L1015
	mov	r9d, r11d
	lea	rbx, [rcx+rsi]
	xor	eax, eax
	shr	r9d, 4
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1008:
	movdqu	xmm1, XMMWORD PTR [rbx+rax]
	movups	XMMWORD PTR [r10+rax], xmm1
	add	rax, 16
	cmp	r9, rax
	jne	.L1008
	mov	eax, r11d
	and	eax, -16
	add	r8d, eax
	test	r11b, 15
	je	.L995
	sub	r11d, eax
	lea	r10d, [r11-1]
	cmp	r10d, 6
	jbe	.L1010
.L1007:
	add	rax, rsi
	mov	ebx, r11d
	and	ebx, -8
	mov	rsi, QWORD PTR [rcx+rax]
	add	r8d, ebx
	and	r11d, 7
	mov	QWORD PTR [rdi+rax], rsi
	je	.L995
.L1010:
	mov	r11d, r8d
	lea	eax, [r8+1]
	movzx	r9d, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], r9b
	cmp	eax, edx
	jnb	.L995
	movzx	r10d, BYTE PTR [rcx+rax]
	lea	ebx, [r8+2]
	mov	BYTE PTR [rdi+rax], r10b
	cmp	ebx, edx
	jnb	.L995
	movzx	esi, BYTE PTR [rcx+rbx]
	lea	r11d, [r8+3]
	mov	BYTE PTR [rdi+rbx], sil
	cmp	r11d, edx
	jnb	.L995
	movzx	r9d, BYTE PTR [rcx+r11]
	lea	eax, [r8+4]
	mov	BYTE PTR [rdi+r11], r9b
	cmp	eax, edx
	jnb	.L995
	movzx	r10d, BYTE PTR [rcx+rax]
	lea	ebx, [r8+5]
	mov	BYTE PTR [rdi+rax], r10b
	cmp	ebx, edx
	jnb	.L995
	movzx	esi, BYTE PTR [rcx+rbx]
	add	r8d, 6
	mov	BYTE PTR [rdi+rbx], sil
	cmp	r8d, edx
	jnb	.L995
	movzx	ecx, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], cl
.L995:
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1038:
	.cfi_restore 3
	lea	esi, [rdx-1]
	test	edx, edx
	je	.L1034
	.p2align 4
	.p2align 4
	.p2align 3
.L1014:
	movzx	edx, BYTE PTR [rcx+rsi]
	mov	BYTE PTR [rdi+rsi], dl
	sub	rsi, 1
	jnb	.L1014
	ret
.L1015:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xor	eax, eax
	jmp	.L1007
	.p2align 4,,10
	.p2align 3
.L1002:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	lea	r9d, [0+r10*4]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L1005:
	mov	r11d, DWORD PTR [rcx+rax]
	mov	DWORD PTR [rdi+rax], r11d
	add	rax, 4
	cmp	rax, r9
	jne	.L1005
	jmp	.L1006
.L998:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	r8, rsi
	.p2align 5
	.p2align 4
	.p2align 3
.L1012:
	movzx	r11d, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], r11b
	add	r8, 1
	cmp	r8d, edx
	jb	.L1012
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1039:
	.cfi_restore 3
	mov	esi, r8d
	test	edx, edx
	je	.L1040
.L1033:
	mov	r9, rsi
.L1035:
	movzx	eax, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], al
	add	r9, 1
	cmp	r9d, edx
	jb	.L1035
.L1034:
	ret
.L1040:
	ret
	.cfi_endproc
.LFE109:
	.size	__cmovw, .-__cmovw
	.p2align 4
	.globl	__modi
	.type	__modi, @function
__modi:
.LFB110:
	.cfi_startproc
	mov	eax, edi
	cdq
	idiv	esi
	mov	eax, edx
	ret
	.cfi_endproc
.LFE110:
	.size	__modi, .-__modi
	.p2align 4
	.globl	__uitod
	.type	__uitod, @function
__uitod:
.LFB111:
	.cfi_startproc
	mov	edi, edi
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdi
	ret
	.cfi_endproc
.LFE111:
	.size	__uitod, .-__uitod
	.p2align 4
	.globl	__uitof
	.type	__uitof, @function
__uitof:
.LFB112:
	.cfi_startproc
	mov	edi, edi
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdi
	ret
	.cfi_endproc
.LFE112:
	.size	__uitof, .-__uitof
	.p2align 4
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
.LFB113:
	.cfi_startproc
	test	rdi, rdi
	js	.L1049
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1049:
	mov	rax, rdi
	and	edi, 1
	pxor	xmm0, xmm0
	shr	rax
	or	rax, rdi
	cvtsi2sd	xmm0, rax
	addsd	xmm0, xmm0
	ret
	.cfi_endproc
.LFE113:
	.size	__ulltod, .-__ulltod
	.p2align 4
	.globl	__ulltof
	.type	__ulltof, @function
__ulltof:
.LFB114:
	.cfi_startproc
	test	rdi, rdi
	js	.L1052
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1052:
	mov	rax, rdi
	and	edi, 1
	pxor	xmm0, xmm0
	shr	rax
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
	ret
	.cfi_endproc
.LFE114:
	.size	__ulltof, .-__ulltof
	.p2align 4
	.globl	__umodi
	.type	__umodi, @function
__umodi:
.LFB115:
	.cfi_startproc
	mov	eax, edi
	xor	edx, edx
	div	esi
	mov	eax, edx
	ret
	.cfi_endproc
.LFE115:
	.size	__umodi, .-__umodi
	.p2align 4
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB116:
	.cfi_startproc
	mov	ecx, edi
	movzx	edx, di
	test	ch, -128
	jne	.L1058
	mov	eax, edx
	sar	eax, 14
	jne	.L1055
	mov	eax, edx
	shr	eax, 13
	jne	.L1059
	mov	esi, edx
	shr	esi, 12
	jne	.L1060
	mov	edi, edx
	shr	edi, 11
	jne	.L1061
	mov	r8d, edx
	shr	r8d, 10
	jne	.L1062
	mov	r9d, edx
	shr	r9d, 9
	jne	.L1063
	mov	r10d, edx
	shr	r10d, 8
	jne	.L1064
	mov	r11d, edx
	shr	r11d, 7
	jne	.L1065
	mov	eax, edx
	shr	eax, 6
	jne	.L1066
	mov	esi, edx
	shr	esi, 5
	jne	.L1067
	mov	edi, edx
	shr	edi, 4
	jne	.L1068
	mov	r8d, edx
	shr	r8d, 3
	jne	.L1069
	mov	r9d, edx
	shr	r9d, 2
	jne	.L1070
	shr	edx
	jne	.L1071
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	ret
.L1071:
	mov	eax, 14
.L1055:
	ret
.L1058:
	xor	eax, eax
	ret
.L1069:
	mov	eax, 12
	ret
.L1059:
	mov	eax, 2
	ret
.L1060:
	mov	eax, 3
	ret
.L1061:
	mov	eax, 4
	ret
.L1062:
	mov	eax, 5
	ret
.L1063:
	mov	eax, 6
	ret
.L1064:
	mov	eax, 7
	ret
.L1065:
	mov	eax, 8
	ret
.L1066:
	mov	eax, 9
	ret
.L1067:
	mov	eax, 10
	ret
.L1068:
	mov	eax, 11
	ret
.L1070:
	mov	eax, 13
	ret
	.cfi_endproc
.LFE116:
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117:
	.cfi_startproc
	test	dil, 1
	jne	.L1076
	test	dil, 2
	jne	.L1077
	test	dil, 4
	jne	.L1078
	test	dil, 8
	jne	.L1079
	test	dil, 16
	jne	.L1080
	test	dil, 32
	jne	.L1081
	test	dil, 64
	jne	.L1082
	test	dil, -128
	jne	.L1083
	test	edi, 256
	jne	.L1084
	test	edi, 512
	jne	.L1085
	test	edi, 1024
	jne	.L1086
	test	edi, 2048
	jne	.L1087
	test	edi, 4096
	jne	.L1088
	test	edi, 8192
	jne	.L1089
	test	edi, 16384
	jne	.L1090
	xor	eax, eax
	and	edi, 32768
	sete	al
	add	eax, 15
	ret
.L1076:
	xor	eax, eax
	ret
.L1077:
	mov	eax, 1
	ret
.L1088:
	mov	eax, 12
	ret
.L1078:
	mov	eax, 2
	ret
.L1079:
	mov	eax, 3
	ret
.L1080:
	mov	eax, 4
	ret
.L1081:
	mov	eax, 5
	ret
.L1082:
	mov	eax, 6
	ret
.L1083:
	mov	eax, 7
	ret
.L1084:
	mov	eax, 8
	ret
.L1085:
	mov	eax, 9
	ret
.L1086:
	mov	eax, 10
	ret
.L1087:
	mov	eax, 11
	ret
.L1089:
	mov	eax, 13
	ret
.L1090:
	mov	eax, 14
	ret
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.p2align 4
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
	comiss	xmm0, DWORD PTR .LC20[rip]
	jnb	.L1098
	cvttss2si	rax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L1098:
	subss	xmm0, DWORD PTR .LC20[rip]
	cvttss2si	rax, xmm0
	add	rax, 32768
	ret
	.cfi_endproc
.LFE118:
	.size	__fixunssfsi, .-__fixunssfsi
	.p2align 4
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB119:
	.cfi_startproc
	movzx	edx, di
	and	edi, 1
	mov	eax, edx
	mov	ecx, edx
	mov	esi, edx
	mov	r8d, edx
	sar	eax
	sar	ecx, 2
	mov	r9d, edx
	mov	r10d, edx
	and	eax, 1
	and	ecx, 1
	sar	esi, 3
	mov	r11d, edx
	sar	r8d, 5
	add	eax, edi
	mov	edi, edx
	and	esi, 1
	sar	edi, 4
	add	eax, ecx
	and	r8d, 1
	sar	r9d, 6
	add	eax, esi
	and	edi, 1
	and	r9d, 1
	sar	r10d, 7
	add	eax, edi
	and	r10d, 1
	sar	r11d, 8
	mov	ecx, edx
	add	eax, r8d
	and	r11d, 1
	sar	ecx, 9
	mov	esi, edx
	add	eax, r9d
	and	ecx, 1
	sar	esi, 10
	mov	edi, edx
	add	eax, r10d
	and	esi, 1
	sar	edi, 11
	mov	r8d, edx
	add	eax, r11d
	and	edi, 1
	mov	r9d, edx
	sar	r8d, 12
	add	eax, ecx
	mov	r10d, edx
	add	eax, esi
	add	eax, edi
	and	r8d, 1
	sar	r9d, 13
	sar	r10d, 14
	add	eax, r8d
	and	r9d, 1
	sar	edx, 15
	add	eax, r9d
	and	r10d, 1
	add	eax, r10d
	add	eax, edx
	and	eax, 1
	ret
	.cfi_endproc
.LFE119:
	.size	__parityhi2, .-__parityhi2
	.p2align 4
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB120:
	.cfi_startproc
	movzx	edx, di
	and	edi, 1
	mov	eax, edx
	mov	ecx, edx
	mov	esi, edx
	mov	r8d, edx
	sar	eax
	sar	ecx, 2
	mov	r9d, edx
	mov	r10d, edx
	and	eax, 1
	and	ecx, 1
	sar	esi, 3
	mov	r11d, edx
	sar	r8d, 5
	add	eax, edi
	mov	edi, edx
	and	esi, 1
	sar	edi, 4
	add	eax, ecx
	and	r8d, 1
	sar	r9d, 6
	add	eax, esi
	and	edi, 1
	and	r9d, 1
	sar	r10d, 7
	add	eax, edi
	and	r10d, 1
	sar	r11d, 8
	mov	ecx, edx
	add	eax, r8d
	and	r11d, 1
	sar	ecx, 9
	mov	esi, edx
	add	eax, r9d
	and	ecx, 1
	sar	esi, 10
	mov	edi, edx
	add	eax, r10d
	and	esi, 1
	sar	edi, 11
	mov	r8d, edx
	add	eax, r11d
	and	edi, 1
	mov	r9d, edx
	sar	r8d, 12
	add	eax, ecx
	mov	r10d, edx
	add	eax, esi
	add	eax, edi
	and	r8d, 1
	sar	r9d, 13
	sar	r10d, 14
	add	eax, r8d
	and	r9d, 1
	sar	edx, 15
	add	eax, r9d
	and	r10d, 1
	add	eax, r10d
	add	eax, edx
	ret
	.cfi_endproc
.LFE120:
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB177:
	.cfi_startproc
	xor	edx, edx
	test	edi, edi
	je	.L1101
	.p2align 5
	.p2align 4
	.p2align 3
.L1103:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L1103
.L1101:
	mov	eax, edx
	ret
	.cfi_endproc
.LFE177:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	xor	edx, edx
	test	edi, edi
	je	.L1106
	test	esi, esi
	je	.L1106
	.p2align 5
	.p2align 4
	.p2align 3
.L1108:
	mov	eax, esi
	and	eax, 1
	neg	eax
	and	eax, edi
	add	edi, edi
	add	edx, eax
	shr	esi
	jne	.L1108
.L1106:
	mov	eax, edx
	ret
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.p2align 4
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	mov	ecx, 1
	cmp	esi, edi
	jb	.L1114
	jmp	.L1115
	.p2align 4,,10
	.p2align 3
.L1117:
	add	esi, esi
	add	ecx, ecx
	cmp	esi, edi
	jnb	.L1116
	test	ecx, ecx
	je	.L1116
.L1114:
	test	esi, esi
	jns	.L1117
.L1115:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1120:
	cmp	edi, esi
	jb	.L1119
	sub	edi, esi
	or	eax, ecx
.L1119:
	shr	esi
	shr	ecx
	jne	.L1120
	test	edx, edx
	cmovne	eax, edi
	ret
	.p2align 4,,10
	.p2align 3
.L1116:
	xor	eax, eax
	test	ecx, ecx
	jne	.L1115
	test	edx, edx
	cmovne	eax, edi
	ret
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4, .-__udivmodsi4
	.p2align 4
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	comiss	xmm1, xmm0
	mov	eax, -1
	ja	.L1136
	xor	eax, eax
	comiss	xmm0, xmm1
	seta	al
.L1136:
	ret
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.p2align 4
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	comisd	xmm1, xmm0
	mov	eax, -1
	ja	.L1139
	xor	eax, eax
	comisd	xmm0, xmm1
	seta	al
.L1139:
	ret
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.p2align 4
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB126:
	.cfi_startproc
	mov	rax, rdi
	imul	rax, rsi
	ret
	.cfi_endproc
.LFE126:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.p2align 4
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB127:
	.cfi_startproc
	mov	rax, rdi
	imul	rax, rsi
	ret
	.cfi_endproc
.LFE127:
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.p2align 4
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB128:
	.cfi_startproc
	test	esi, esi
	js	.L1153
	je	.L1149
	xor	r9d, r9d
.L1146:
	mov	edx, 1
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L1148:
	mov	eax, esi
	and	eax, 1
	neg	eax
	and	eax, edi
	add	edi, edi
	add	ecx, eax
	sar	esi
	setne	r8b
	cmp	dl, 32
	setne	r10b
	add	edx, 1
	test	r8b, r10b
	jne	.L1148
	mov	eax, ecx
	neg	eax
	test	r9d, r9d
	cmove	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1153:
	neg	esi
	mov	r9d, 1
	jmp	.L1146
	.p2align 4,,10
	.p2align 3
.L1149:
	xor	eax, eax
	ret
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.p2align 4
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
	mov	eax, 1
	xor	r8d, r8d
	test	rdi, rdi
	jns	.L1155
	neg	rdi
	xor	eax, eax
	mov	r8d, 1
.L1155:
	test	rsi, rsi
	jns	.L1156
	neg	rsi
	mov	r8d, eax
.L1156:
	mov	r9d, esi
	mov	ecx, edi
	mov	edx, 1
	cmp	esi, edi
	jb	.L1157
	jmp	.L1158
	.p2align 4,,10
	.p2align 3
.L1161:
	add	r9d, r9d
	add	edx, edx
	cmp	r9d, ecx
	jnb	.L1167
	test	edx, edx
	je	.L1176
.L1157:
	test	r9d, r9d
	jns	.L1161
.L1158:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L1163:
	cmp	ecx, r9d
	jb	.L1162
	sub	ecx, r9d
	or	esi, edx
.L1162:
	shr	r9d
	shr	edx
	jne	.L1163
	mov	rax, rsi
	neg	rax
	test	r8d, r8d
	cmove	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1167:
	test	edx, edx
	jne	.L1158
.L1176:
	xor	esi, esi
	mov	rax, rsi
	neg	rax
	test	r8d, r8d
	cmove	rax, rsi
	ret
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.p2align 4
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
	xor	r8d, r8d
	test	rdi, rdi
	jns	.L1179
	neg	rdi
	mov	r8d, 1
.L1179:
	mov	rax, rsi
	mov	ecx, edi
	mov	edx, 1
	neg	rax
	cmovns	rsi, rax
	mov	r9d, esi
	cmp	esi, edi
	jb	.L1180
	jmp	.L1199
	.p2align 4,,10
	.p2align 3
.L1184:
	add	r9d, r9d
	add	edx, edx
	cmp	r9d, ecx
	jnb	.L1190
	test	edx, edx
	je	.L1183
.L1180:
	test	r9d, r9d
	jns	.L1184
	.p2align 5
	.p2align 4
	.p2align 3
.L1199:
	mov	esi, ecx
	sub	esi, r9d
	cmp	ecx, r9d
	cmovnb	rcx, rsi
	shr	r9d
	shr	edx
	jne	.L1199
.L1183:
	mov	rax, rcx
	neg	rax
	test	r8d, r8d
	cmove	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L1190:
	test	edx, edx
	jne	.L1199
	jmp	.L1183
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.p2align 4
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	mov	r10d, edx
	mov	r9d, edi
	mov	edx, esi
	mov	ecx, 1
	cmp	si, di
	jb	.L1202
	jmp	.L1261
	.p2align 4,,10
	.p2align 3
.L1205:
	lea	esi, [rdx+rdx]
	lea	r11d, [rcx+rcx]
	cmp	si, r9w
	jnb	.L1204
	test	r11w, r11w
	je	.L1204
	mov	ecx, r11d
	mov	edx, esi
.L1202:
	test	dx, dx
	jns	.L1205
	xor	r11d, r11d
	cmp	di, dx
	jb	.L1228
	mov	r9d, edi
	mov	r11d, ecx
	sub	r9d, edx
.L1228:
	mov	eax, edx
	mov	edi, ecx
	shr	ax
	shr	di
	je	.L1245
.L1209:
	cmp	r9w, ax
	jb	.L1210
	sub	r9d, eax
	or	r11d, edi
.L1210:
	mov	r8d, edx
	mov	eax, ecx
	shr	r8w, 2
	shr	ax, 2
	je	.L1245
	cmp	r9w, r8w
	jb	.L1211
	sub	r9d, r8d
	or	r11d, eax
.L1211:
	mov	edi, edx
	mov	esi, ecx
	shr	di, 3
	shr	si, 3
	je	.L1245
	cmp	r9w, di
	jb	.L1212
	sub	r9d, edi
	or	r11d, esi
.L1212:
	mov	r8d, edx
	mov	eax, ecx
	shr	r8w, 4
	shr	ax, 4
	je	.L1245
	cmp	r9w, r8w
	jb	.L1213
	sub	r9d, r8d
	or	r11d, eax
.L1213:
	mov	edi, edx
	mov	esi, ecx
	shr	di, 5
	shr	si, 5
	je	.L1245
	cmp	r9w, di
	jb	.L1214
	sub	r9d, edi
	or	r11d, esi
.L1214:
	mov	r8d, edx
	mov	eax, ecx
	shr	r8w, 6
	shr	ax, 6
	je	.L1245
	cmp	r9w, r8w
	jb	.L1215
	sub	r9d, r8d
	or	r11d, eax
.L1215:
	mov	edi, edx
	mov	esi, ecx
	shr	di, 7
	shr	si, 7
	je	.L1245
	cmp	r9w, di
	jnb	.L1262
.L1216:
	mov	r8d, edx
	mov	eax, ecx
	shr	r8w, 8
	shr	ax, 8
	je	.L1245
	cmp	r9w, r8w
	jnb	.L1263
.L1217:
	mov	edi, edx
	mov	esi, ecx
	shr	di, 9
	shr	si, 9
	je	.L1245
	cmp	r9w, di
	jnb	.L1264
.L1218:
	mov	r8d, edx
	mov	eax, ecx
	shr	r8w, 10
	shr	ax, 10
	je	.L1245
	cmp	r9w, r8w
	jnb	.L1265
.L1219:
	mov	edi, edx
	mov	esi, ecx
	shr	di, 11
	shr	si, 11
	je	.L1245
	cmp	r9w, di
	jnb	.L1266
.L1220:
	mov	r8d, edx
	mov	eax, ecx
	shr	r8w, 12
	shr	ax, 12
	je	.L1245
	cmp	r9w, r8w
	jb	.L1221
	sub	r9d, r8d
	or	r11d, eax
.L1221:
	mov	edi, edx
	mov	esi, ecx
	shr	di, 13
	shr	si, 13
	je	.L1245
	cmp	r9w, di
	jb	.L1222
	sub	r9d, edi
	or	r11d, esi
.L1222:
	mov	r8d, edx
	mov	eax, ecx
	shr	r8w, 14
	shr	ax, 14
	je	.L1245
	cmp	r9w, r8w
	jb	.L1223
	sub	r9d, r8d
	or	r11d, eax
.L1223:
	shr	dx, 15
	test	cx, cx
	jns	.L1245
	xor	eax, eax
	cmp	r9w, dx
	jb	.L1207
	mov	eax, r9d
	or	r11d, 1
	sub	eax, edx
	jmp	.L1207
	.p2align 4,,10
	.p2align 3
.L1245:
	mov	eax, r9d
.L1207:
	test	r10d, r10d
	cmove	eax, r11d
	ret
	.p2align 4,,10
	.p2align 3
.L1204:
	mov	eax, edi
	test	r11w, r11w
	je	.L1207
	cmp	di, si
	jb	.L1208
	mov	r9d, edi
	mov	eax, edx
	mov	edi, ecx
	mov	edx, esi
	sub	r9d, esi
	and	di, 32767
	and	ax, 32767
	mov	ecx, r11d
	jmp	.L1209
	.p2align 4,,10
	.p2align 3
.L1262:
	sub	r9d, edi
	or	r11d, esi
	jmp	.L1216
	.p2align 4,,10
	.p2align 3
.L1208:
	mov	edi, ecx
	mov	eax, edx
	mov	ecx, r11d
	mov	edx, esi
	and	di, 32767
	and	ax, 32767
	xor	r11d, r11d
	jmp	.L1209
	.p2align 4,,10
	.p2align 3
.L1263:
	sub	r9d, r8d
	or	r11d, eax
	jmp	.L1217
	.p2align 4,,10
	.p2align 3
.L1264:
	sub	r9d, edi
	or	r11d, esi
	jmp	.L1218
	.p2align 4,,10
	.p2align 3
.L1265:
	sub	r9d, r8d
	or	r11d, eax
	jmp	.L1219
	.p2align 4,,10
	.p2align 3
.L1266:
	sub	r9d, edi
	or	r11d, esi
	jmp	.L1220
.L1261:
	sete	cl
	mov	eax, 0
	cmovne	eax, edi
	movzx	r11d, cl
	jmp	.L1207
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	mov	ecx, 1
	cmp	rsi, rdi
	jb	.L1268
	jmp	.L1269
	.p2align 4,,10
	.p2align 3
.L1271:
	add	rsi, rsi
	add	rcx, rcx
	cmp	rsi, rdi
	jnb	.L1270
	test	rcx, rcx
	je	.L1270
.L1268:
	test	esi, 2147483648
	je	.L1271
.L1269:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L1274:
	cmp	rdi, rsi
	jb	.L1273
	sub	rdi, rsi
	or	rax, rcx
.L1273:
	shr	rsi
	shr	rcx
	jne	.L1274
	test	edx, edx
	cmovne	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1270:
	xor	eax, eax
	test	rcx, rcx
	jne	.L1269
	test	edx, edx
	cmovne	rax, rdi
	ret
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.p2align 4
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133:
	.cfi_startproc
	test	sil, 32
	je	.L1291
	lea	ecx, [rsi-32]
	xor	eax, eax
	sal	edi, cl
.L1292:
	sal	rdi, 32
	or	rax, rdi
.L1290:
	ret
	.p2align 4,,10
	.p2align 3
.L1291:
	mov	rax, rdi
	test	esi, esi
	je	.L1290
	mov	ecx, esi
	mov	edx, edi
	sar	rdi, 32
	sal	eax, cl
	mov	ecx, 32
	sub	ecx, esi
	shr	edx, cl
	mov	ecx, esi
	sal	edi, cl
	or	edi, edx
	jmp	.L1292
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.p2align 4
	.globl	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	test	dl, 64
	je	.L1297
	lea	ecx, [rdx-64]
	xor	eax, eax
	sal	rdi, cl
	mov	rdx, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1297:
	mov	rax, rdi
	test	edx, edx
	je	.L1300
	mov	ecx, edx
	sal	rax, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rdi, cl
	mov	ecx, edx
	sal	rsi, cl
	or	rdi, rsi
	mov	rdx, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1300:
	mov	rdx, rsi
	ret
	.cfi_endproc
.LFE134:
	.size	__ashlti3, .-__ashlti3
	.p2align 4
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135:
	.cfi_startproc
	test	sil, 32
	je	.L1302
	sar	rdi, 32
	lea	ecx, [rsi-32]
	mov	eax, edi
	sar	edi, cl
	sar	eax, 31
.L1303:
	sal	rax, 32
	or	rax, rdi
.L1301:
	ret
	.p2align 4,,10
	.p2align 3
.L1302:
	mov	rax, rdi
	test	esi, esi
	je	.L1301
	mov	rdx, rdi
	mov	ecx, esi
	sar	rdx, 32
	mov	eax, edx
	sar	eax, cl
	mov	ecx, 32
	sub	ecx, esi
	sal	edx, cl
	mov	ecx, esi
	shr	edi, cl
	or	edi, edx
	jmp	.L1303
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.p2align 4
	.globl	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	test	dl, 64
	je	.L1308
	lea	ecx, [rdx-64]
	mov	r8, rsi
	sar	r8, 63
	sar	rsi, cl
	mov	rdx, r8
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1308:
	test	edx, edx
	je	.L1311
	mov	ecx, edx
	mov	r8, rsi
	sar	r8, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rsi, cl
	mov	ecx, edx
	mov	rdx, r8
	shr	rdi, cl
	or	rsi, rdi
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1311:
	mov	rax, rdi
	mov	rdx, rsi
	ret
	.cfi_endproc
.LFE136:
	.size	__ashrti3, .-__ashrti3
	.p2align 4
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137:
	.cfi_startproc
	mov	rax, rdi
	bswap	rax
	ret
	.cfi_endproc
.LFE137:
	.size	__bswapdi2, .-__bswapdi2
	.p2align 4
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB138:
	.cfi_startproc
	mov	eax, edi
	bswap	eax
	ret
	.cfi_endproc
.LFE138:
	.size	__bswapsi2, .-__bswapsi2
	.p2align 4
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB139:
	.cfi_startproc
	xor	edx, edx
	cmp	edi, 65535
	mov	ecx, 16
	setbe	dl
	xor	eax, eax
	sal	edx, 4
	sub	ecx, edx
	shr	edi, cl
	mov	ecx, 8
	test	edi, 65280
	sete	al
	xor	esi, esi
	sal	eax, 3
	sub	ecx, eax
	add	edx, eax
	mov	eax, 2
	shr	edi, cl
	mov	ecx, 4
	test	dil, -16
	sete	sil
	xor	r9d, r9d
	sal	esi, 2
	sub	ecx, esi
	lea	r8d, [rsi+rdx]
	shr	edi, cl
	mov	ecx, eax
	test	dil, 12
	sete	r9b
	xor	r10d, r10d
	add	r9d, r9d
	sub	ecx, r9d
	shr	edi, cl
	sub	eax, edi
	and	edi, 2
	cmovne	eax, r10d
	add	r9d, r8d
	add	eax, r9d
	ret
	.cfi_endproc
.LFE139:
	.size	__clzsi2, .-__clzsi2
	.p2align 4
	.globl	__clzti2
	.type	__clzti2, @function
__clzti2:
.LFB140:
	.cfi_startproc
	xor	eax, eax
	test	rsi, rsi
	mov	rdx, rdi
	sete	al
	xor	ecx, ecx
	lea	edi, [rax-1]
	movsx	r8, edi
	and	r8, rsi
	test	rsi, rsi
	cmovne	rdx, rcx
	or	r8, rdx
	bsr	rsi, r8
	sal	eax, 6
	xor	rsi, 63
	add	eax, esi
	ret
	.cfi_endproc
.LFE140:
	.size	__clzti2, .-__clzti2
	.p2align 4
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB141:
	.cfi_startproc
	mov	rcx, rdi
	mov	rdx, rsi
	xor	eax, eax
	sar	rcx, 32
	sar	rdx, 32
	cmp	ecx, edx
	jl	.L1316
	mov	eax, 2
	jg	.L1316
	xor	eax, eax
	cmp	edi, esi
	jb	.L1316
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L1316:
	ret
	.cfi_endproc
.LFE141:
	.size	__cmpdi2, .-__cmpdi2
	.p2align 4
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB142:
	.cfi_startproc
	mov	rcx, rdi
	mov	rdx, rsi
	mov	eax, -1
	sar	rcx, 32
	sar	rdx, 32
	cmp	ecx, edx
	jl	.L1322
	mov	eax, 1
	jg	.L1322
	mov	eax, -1
	cmp	edi, esi
	jb	.L1322
	xor	eax, eax
	cmp	esi, edi
	setb	al
.L1322:
	ret
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.p2align 4
	.globl	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
.LFB143:
	.cfi_startproc
	xor	eax, eax
	cmp	rsi, rcx
	jl	.L1327
	mov	eax, 2
	jg	.L1327
	xor	eax, eax
	cmp	rdi, rdx
	jb	.L1327
	xor	eax, eax
	cmp	rdx, rdi
	setb	al
	add	eax, 1
.L1327:
	ret
	.cfi_endproc
.LFE143:
	.size	__cmpti2, .-__cmpti2
	.p2align 4
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB144:
	.cfi_startproc
	xor	eax, eax
	test	di, di
	mov	esi, 2
	sete	al
	sal	eax, 4
	mov	ecx, eax
	shr	edi, cl
	xor	ecx, ecx
	test	dil, dil
	sete	cl
	sal	ecx, 3
	shr	edi, cl
	add	eax, ecx
	xor	ecx, ecx
	test	dil, 15
	sete	cl
	sal	ecx, 2
	shr	edi, cl
	lea	edx, [rcx+rax]
	xor	ecx, ecx
	test	dil, 3
	sete	cl
	add	ecx, ecx
	shr	edi, cl
	add	ecx, edx
	and	edi, 3
	mov	eax, edi
	shr	edi
	not	eax
	sub	esi, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	eax, ecx
	ret
	.cfi_endproc
.LFE144:
	.size	__ctzsi2, .-__ctzsi2
	.p2align 4
	.globl	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145:
	.cfi_startproc
	xor	eax, eax
	test	rdi, rdi
	mov	rdx, rsi
	mov	rcx, rdi
	sete	sil
	cmovne	rdx, rax
	xor	r9d, r9d
	movzx	eax, sil
	lea	edi, [rax-1]
	sal	eax, 6
	movsx	r8, edi
	and	r8, rcx
	or	rdx, r8
	rep bsf	r9, rdx
	add	eax, r9d
	ret
	.cfi_endproc
.LFE145:
	.size	__ctzti2, .-__ctzti2
	.p2align 4
	.globl	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
.LFB146:
	.cfi_startproc
	test	rdi, rdi
	jne	.L1336
	xor	eax, eax
	xor	edx, edx
	rep bsf	rax, rsi
	add	eax, 65
	test	rsi, rsi
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1336:
	rep bsf	rdi, rdi
	lea	eax, [rdi+1]
	ret
	.cfi_endproc
.LFE146:
	.size	__ffsti2, .-__ffsti2
	.p2align 4
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB147:
	.cfi_startproc
	test	sil, 32
	je	.L1340
	shr	rdi, 32
	lea	ecx, [rsi-32]
	xor	eax, eax
	shr	edi, cl
.L1341:
	sal	rax, 32
	or	rax, rdi
.L1339:
	ret
	.p2align 4,,10
	.p2align 3
.L1340:
	mov	rax, rdi
	test	esi, esi
	je	.L1339
	mov	rdx, rdi
	mov	ecx, esi
	shr	rdx, 32
	mov	eax, edx
	shr	eax, cl
	mov	ecx, 32
	sub	ecx, esi
	sal	edx, cl
	mov	ecx, esi
	shr	edi, cl
	or	edi, edx
	jmp	.L1341
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.p2align 4
	.globl	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	test	dl, 64
	je	.L1346
	lea	ecx, [rdx-64]
	xor	r8d, r8d
	shr	rsi, cl
	mov	rdx, r8
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1346:
	test	edx, edx
	je	.L1349
	mov	ecx, edx
	mov	r8, rsi
	shr	r8, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rsi, cl
	mov	ecx, edx
	mov	rdx, r8
	shr	rdi, cl
	or	rsi, rdi
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1349:
	mov	rax, rdi
	mov	rdx, rsi
	ret
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.p2align 4
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	movzx	edx, di
	movzx	eax, si
	shr	edi, 16
	mov	ecx, edx
	shr	esi, 16
	imul	ecx, eax
	imul	eax, edi
	imul	edx, esi
	mov	r8d, ecx
	imul	edi, esi
	movzx	r10d, cx
	shr	r8d, 16
	add	eax, r8d
	movzx	r9d, ax
	shr	eax, 16
	add	edx, r9d
	add	eax, edi
	mov	r11d, edx
	shr	edx, 16
	add	edx, eax
	sal	r11d, 16
	mov	esi, edx
	lea	eax, [r10+r11]
	sal	rsi, 32
	or	rax, rsi
	ret
	.cfi_endproc
.LFE149:
	.size	__muldsi3, .-__muldsi3
	.p2align 4
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB150:
	.cfi_startproc
	movzx	edx, di
	mov	rcx, rsi
	movzx	eax, si
	mov	r8d, edi
	mov	esi, edx
	shr	r8d, 16
	mov	r11d, ecx
	imul	esi, eax
	shr	r11d, 16
	imul	eax, r8d
	imul	edx, r11d
	mov	r9d, esi
	imul	r8d, r11d
	movzx	esi, si
	shr	r9d, 16
	add	eax, r9d
	movzx	r10d, ax
	shr	eax, 16
	add	edx, r10d
	add	eax, r8d
	mov	r8, rcx
	mov	r9d, edx
	shr	edx, 16
	sal	r9d, 16
	add	edx, eax
	sar	r8, 32
	mov	edx, edx
	imul	r8d, edi
	lea	eax, [rsi+r9]
	sar	rdi, 32
	sal	rdx, 32
	imul	ecx, edi
	or	rax, rdx
	mov	r10, rax
	mov	eax, eax
	sar	r10, 32
	add	r8d, r10d
	add	r8d, ecx
	mov	edi, r8d
	sal	rdi, 32
	or	rax, rdi
	ret
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.p2align 4
	.globl	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151:
	.cfi_startproc
	mov	edx, edi
	mov	eax, esi
	shr	rdi, 32
	mov	rcx, rdx
	shr	rsi, 32
	imul	rcx, rax
	imul	rax, rdi
	imul	rdx, rsi
	mov	r8, rcx
	imul	rdi, rsi
	mov	r10d, ecx
	shr	r8, 32
	add	rax, r8
	mov	r9d, eax
	shr	rax, 32
	add	rdx, r9
	add	rax, rdi
	mov	r11, rdx
	shr	rdx, 32
	sal	r11, 32
	add	rax, rdx
	add	r10, r11
	mov	rdx, rax
	mov	rax, r10
	ret
	.cfi_endproc
.LFE151:
	.size	__mulddi3, .-__mulddi3
	.p2align 4
	.globl	__multi3
	.type	__multi3, @function
__multi3:
.LFB152:
	.cfi_startproc
	mov	eax, edi
	mov	r8, rdi
	mov	r11, rsi
	mov	r10, rcx
	mov	rsi, rax
	mov	ecx, edx
	mov	r9, r8
	imul	rsi, rcx
	shr	r9, 32
	imul	r8, r10
	mov	r10, rdx
	imul	rcx, r9
	shr	r10, 32
	mov	rdi, rsi
	imul	rax, r10
	shr	rdi, 32
	imul	r9, r10
	add	rcx, rdi
	imul	rdx, r11
	mov	r11d, esi
	mov	edi, ecx
	shr	rcx, 32
	add	rax, rdi
	lea	rcx, [rcx+r9]
	mov	rdi, rax
	shr	rax, 32
	sal	rdi, 32
	add	rcx, rax
	add	rdi, r11
	xchg	rdi, rcx
	add	r8, rdi
	mov	rax, rcx
	add	r8, rdx
	mov	rdx, r8
	ret
	.cfi_endproc
.LFE152:
	.size	__multi3, .-__multi3
	.p2align 4
	.globl	__negdi2
	.type	__negdi2, @function
__negdi2:
.LFB153:
	.cfi_startproc
	mov	rax, rdi
	neg	rax
	ret
	.cfi_endproc
.LFE153:
	.size	__negdi2, .-__negdi2
	.p2align 4
	.globl	__negti2
	.type	__negti2, @function
__negti2:
.LFB154:
	.cfi_startproc
	mov	rax, rdi
	xor	edx, edx
	neg	rax
	sbb	rdx, rsi
	ret
	.cfi_endproc
.LFE154:
	.size	__negti2, .-__negti2
	.p2align 4
	.globl	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB155:
	.cfi_startproc
	mov	rax, rdi
	shr	rax, 32
	xor	eax, edi
	mov	edx, eax
	shr	edx, 16
	xor	edx, eax
	mov	eax, 27030
	mov	esi, edx
	shr	esi, 8
	xor	esi, edx
	mov	ecx, esi
	shr	ecx, 4
	xor	ecx, esi
	and	ecx, 15
	sar	eax, cl
	and	eax, 1
	ret
	.cfi_endproc
.LFE155:
	.size	__paritydi2, .-__paritydi2
	.p2align 4
	.globl	__parityti2
	.type	__parityti2, @function
__parityti2:
.LFB156:
	.cfi_startproc
	mov	rax, rdi
	xor	rax, rsi
	mov	rdi, rax
	sar	rdi, 32
	xor	edi, eax
	mov	eax, 27030
	mov	edx, edi
	shr	edx, 16
	xor	edx, edi
	mov	esi, edx
	shr	esi, 8
	xor	esi, edx
	mov	ecx, esi
	shr	ecx, 4
	xor	ecx, esi
	and	ecx, 15
	sar	eax, cl
	and	eax, 1
	ret
	.cfi_endproc
.LFE156:
	.size	__parityti2, .-__parityti2
	.p2align 4
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB157:
	.cfi_startproc
	mov	edx, edi
	shr	edx, 16
	xor	edx, edi
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
	.cfi_endproc
.LFE157:
	.size	__paritysi2, .-__paritysi2
	.p2align 4
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB158:
	.cfi_startproc
	movabs	rdx, 6148914691236517205
	mov	rax, rdi
	movabs	rsi, 3689348814741910323
	movabs	r8, 1085102592571150095
	shr	rax
	and	rax, rdx
	sub	rdi, rax
	mov	rcx, rdi
	and	rdi, rsi
	shr	rcx, 2
	and	rcx, rsi
	add	rcx, rdi
	mov	rdi, rcx
	shr	rdi, 4
	add	rdi, rcx
	and	rdi, r8
	mov	r9, rdi
	shr	r9, 32
	add	edi, r9d
	mov	r10d, edi
	shr	r10d, 16
	add	r10d, edi
	mov	eax, r10d
	shr	eax, 8
	add	eax, r10d
	and	eax, 127
	ret
	.cfi_endproc
.LFE158:
	.size	__popcountdi2, .-__popcountdi2
	.p2align 4
	.globl	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB159:
	.cfi_startproc
	mov	eax, edi
	shr	eax
	and	eax, 1431655765
	sub	edi, eax
	mov	edx, edi
	and	edi, 858993459
	shr	edx, 2
	and	edx, 858993459
	add	edx, edi
	mov	ecx, edx
	shr	ecx, 4
	add	ecx, edx
	and	ecx, 252645135
	mov	esi, ecx
	shr	esi, 16
	add	esi, ecx
	mov	eax, esi
	shr	eax, 8
	add	eax, esi
	and	eax, 63
	ret
	.cfi_endproc
.LFE159:
	.size	__popcountsi2, .-__popcountsi2
	.p2align 4
	.globl	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
.LFB160:
	.cfi_startproc
	movabs	r8, 6148914691236517205
	xchg	rdi, rsi
	movabs	r11, 3689348814741910323
	mov	rax, rsi
	mov	rdx, rdi
	shrd	rax, rdi, 1
	shr	rdx
	and	rax, r8
	and	rdx, r8
	sub	rsi, rax
	sbb	rdi, rdx
	mov	rcx, rsi
	and	rsi, r11
	shrd	rcx, rdi, 2
	mov	r10, rdi
	and	rdi, r11
	and	rcx, r11
	shr	r10, 2
	and	r10, r11
	add	rsi, rcx
	adc	rdi, r10
	mov	r8, rsi
	mov	rdx, rdi
	shrd	r8, rdi, 4
	shr	rdx, 4
	add	r8, rsi
	movabs	rsi, 1085102592571150095
	adc	rdx, rdi
	mov	rdi, rsi
	and	rsi, r8
	and	rdi, rdx
	add	rdi, rsi
	mov	r9, rdi
	shr	r9, 32
	add	r9d, edi
	mov	ecx, r9d
	shr	ecx, 16
	add	ecx, r9d
	mov	r10d, ecx
	shr	r10d, 8
	add	r10d, ecx
	movzx	eax, r10b
	ret
	.cfi_endproc
.LFE160:
	.size	__popcountti2, .-__popcountti2
	.p2align 4
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161:
	.cfi_startproc
	movsd	xmm2, QWORD PTR .LC19[rip]
	mov	eax, edi
	movapd	xmm1, xmm2
	test	dil, 1
	je	.L1363
	.p2align 4
	.p2align 3
.L1365:
	mulsd	xmm1, xmm0
.L1363:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1364
	mulsd	xmm0, xmm0
	test	al, 1
	jne	.L1365
.L1369:
	mulsd	xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1365
	jmp	.L1369
	.p2align 4,,10
	.p2align 3
.L1364:
	test	edi, edi
	jns	.L1362
	divsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L1362:
	movapd	xmm0, xmm1
	ret
	.cfi_endproc
.LFE161:
	.size	__powidf2, .-__powidf2
	.p2align 4
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB162:
	.cfi_startproc
	movss	xmm2, DWORD PTR .LC21[rip]
	mov	eax, edi
	movaps	xmm1, xmm2
	test	dil, 1
	je	.L1371
	.p2align 4
	.p2align 3
.L1373:
	mulss	xmm1, xmm0
.L1371:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1372
	mulss	xmm0, xmm0
	test	al, 1
	jne	.L1373
.L1377:
	mulss	xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1373
	jmp	.L1377
	.p2align 4,,10
	.p2align 3
.L1372:
	test	edi, edi
	jns	.L1370
	divss	xmm2, xmm1
	movaps	xmm1, xmm2
.L1370:
	movaps	xmm0, xmm1
	ret
	.cfi_endproc
.LFE162:
	.size	__powisf2, .-__powisf2
	.p2align 4
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB163:
	.cfi_startproc
	mov	rdx, rdi
	mov	rcx, rsi
	xor	eax, eax
	shr	rdx, 32
	shr	rcx, 32
	cmp	edx, ecx
	jb	.L1378
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1378
	xor	eax, eax
	cmp	edi, esi
	jb	.L1378
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L1378:
	ret
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2, .-__ucmpdi2
	.p2align 4
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
	mov	rdx, rdi
	mov	rcx, rsi
	mov	eax, -1
	shr	rdx, 32
	shr	rcx, 32
	cmp	edx, ecx
	jb	.L1384
	mov	eax, 1
	cmp	ecx, edx
	jb	.L1384
	mov	eax, -1
	cmp	edi, esi
	jb	.L1384
	xor	eax, eax
	cmp	esi, edi
	setb	al
.L1384:
	ret
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.p2align 4
	.globl	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
.LFB165:
	.cfi_startproc
	xor	eax, eax
	cmp	rsi, rcx
	jb	.L1389
	mov	eax, 2
	cmp	rcx, rsi
	jb	.L1389
	xor	eax, eax
	cmp	rdi, rdx
	jb	.L1389
	xor	eax, eax
	cmp	rdx, rdi
	setb	al
	add	eax, 1
.L1389:
	ret
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,1
	.local	seed
	.comm	seed,8,8
	.section	.rodata
	.align 32
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.value	255
	.value	255
	.value	255
	.value	255
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC6:
	.long	-8388609
	.align 4
.LC7:
	.long	2139095039
	.section	.rodata.cst8
	.align 8
.LC8:
	.long	-1
	.long	-1048577
	.align 8
.LC9:
	.long	-1
	.long	2146435071
	.section	.rodata.cst16,"aM",@progbits,16
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
	.section	.rodata.cst4
	.align 4
.LC13:
	.long	1056964608
	.section	.rodata.cst8
	.align 8
.LC14:
	.long	0
	.long	1073741824
	.align 8
.LC15:
	.long	0
	.long	1071644672
	.section	.rodata.cst16
	.align 16
.LC16:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
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
	.section	.rodata.cst4
	.align 4
.LC20:
	.long	1191182336
	.align 4
.LC21:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
