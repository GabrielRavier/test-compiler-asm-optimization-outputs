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
	.p2align 4
	.p2align 4
	.p2align 3
.L7:
	movzx	edx, BYTE PTR [rsi-1+rax]
	mov	BYTE PTR [rdi-1+rax], dl
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
	mov	rcx, rax
	xor	edx, edx
	and	rcx, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L10:
	movdqu	xmm0, XMMWORD PTR [rsi+rdx]
	movups	XMMWORD PTR [rdi+rdx], xmm0
	add	rdx, 16
	cmp	rcx, rdx
	jne	.L10
	mov	rdx, rax
	lea	r9, [rsi+rcx]
	lea	r8, [rdi+rcx]
	sub	rdx, rcx
	cmp	rcx, rax
	je	.L6
	lea	r10, [rdx-1]
	mov	rax, rdx
	cmp	r10, 6
	jbe	.L13
.L9:
	mov	rsi, QWORD PTR [rsi+rcx]
	mov	QWORD PTR [rdi+rcx], rsi
	mov	rcx, rax
	and	rcx, -8
	add	r9, rcx
	add	r8, rcx
	sub	rdx, rcx
	test	al, 7
	je	.L6
.L13:
	movzx	eax, BYTE PTR [r9]
	mov	BYTE PTR [r8], al
	cmp	rdx, 1
	je	.L6
	movzx	eax, BYTE PTR [r9+1]
	mov	BYTE PTR [r8+1], al
	cmp	rdx, 2
	je	.L6
	movzx	eax, BYTE PTR [r9+2]
	mov	BYTE PTR [r8+2], al
	cmp	rdx, 3
	je	.L6
	movzx	eax, BYTE PTR [r9+3]
	mov	BYTE PTR [r8+3], al
	cmp	rdx, 4
	je	.L6
	movzx	eax, BYTE PTR [r9+4]
	mov	BYTE PTR [r8+4], al
	cmp	rdx, 5
	je	.L6
	movzx	eax, BYTE PTR [r9+5]
	mov	BYTE PTR [r8+5], al
	cmp	rdx, 6
	je	.L6
	movzx	eax, BYTE PTR [r9+6]
	mov	BYTE PTR [r8+6], al
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L18:
	xor	edx, edx
	.p2align 4
	.p2align 4
	.p2align 3
.L15:
	movzx	ecx, BYTE PTR [rsi+rdx]
	mov	BYTE PTR [rdi+rdx], cl
	add	rdx, 1
	cmp	rax, rdx
	jne	.L15
	jmp	.L6
.L19:
	mov	r9, rsi
	mov	r8, rdi
	mov	rdx, rax
	xor	ecx, ecx
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
	jne	.L51
	jmp	.L53
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L54:
	add	rsi, 1
	add	rdi, 1
	sub	rcx, 1
	je	.L53
.L51:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rdi], r8b
	cmp	r8d, edx
	jne	.L54
	lea	rax, [rdi+1]
	ret
	.p2align 4,,10
	.p2align 3
.L53:
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
	jne	.L61
	jmp	.L64
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L63:
	add	rdi, 1
	sub	rdx, 1
	je	.L64
.L61:
	movzx	eax, BYTE PTR [rdi]
	cmp	eax, esi
	jne	.L63
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L64:
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
	jne	.L67
	jmp	.L71
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L69:
	add	rdi, 1
	add	rsi, 1
	sub	rdx, 1
	je	.L71
.L67:
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rdi], al
	je	.L69
	movzx	eax, BYTE PTR [rdi]
	movzx	edx, BYTE PTR [rsi]
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L71:
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
	je	.L80
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	call	memcpy
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L80:
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
	jmp	.L84
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L86:
	mov	rdx, rax
	sub	rax, 1
	movzx	ecx, BYTE PTR [rdx]
	cmp	ecx, esi
	je	.L83
.L84:
	cmp	rax, rdi
	jne	.L86
	xor	edx, edx
.L83:
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
	je	.L92
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	movzx	esi, sil
	call	memset
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L92:
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
	je	.L96
	.p2align 5
	.p2align 4
	.p2align 3
.L97:
	movzx	edx, BYTE PTR [rsi+1]
	add	rsi, 1
	add	rax, 1
	mov	BYTE PTR [rax], dl
	test	dl, dl
	jne	.L97
.L96:
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
	jne	.L103
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L105:
	movzx	edx, BYTE PTR [rax+1]
	add	rax, 1
	test	dl, dl
	je	.L102
.L103:
	cmp	edx, esi
	jne	.L105
.L102:
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
	jmp	.L111
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L114:
	add	rax, 1
	test	cl, cl
	je	.L113
.L111:
	movsx	ecx, BYTE PTR [rax]
	cmp	ecx, esi
	jne	.L114
	ret
	.p2align 4,,10
	.p2align 3
.L113:
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
	je	.L116
	jmp	.L122
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L118:
	movzx	edx, BYTE PTR [rdi+rax]
	add	rax, 1
	movzx	ecx, BYTE PTR [rsi-1+rax]
	cmp	dl, cl
	jne	.L122
.L116:
	test	dl, dl
	jne	.L118
	xor	eax, eax
	sub	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L122:
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
	je	.L126
	mov	rax, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L125:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L125
	sub	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L126:
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
	je	.L128
	movzx	eax, BYTE PTR [rdi]
	sub	rdx, 1
	mov	rcx, rsi
	lea	r8, [rsi+rdx]
	test	al, al
	jne	.L132
	jmp	.L143
	.p2align 4,,10
	.p2align 3
.L145:
	cmp	rcx, r8
	je	.L131
	movzx	eax, BYTE PTR [rdi+1]
	add	rdi, 1
	lea	rdx, [rcx+1]
	test	al, al
	je	.L144
	mov	rcx, rdx
.L132:
	movzx	edx, BYTE PTR [rcx]
	test	dl, dl
	setne	r9b
	cmp	dl, al
	sete	sil
	test	r9b, sil
	jne	.L145
.L131:
	sub	eax, edx
.L128:
	ret
	.p2align 4,,10
	.p2align 3
.L144:
	movzx	edx, BYTE PTR [rcx+1]
	xor	eax, eax
	sub	eax, edx
	ret
.L143:
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
	jle	.L146
	mov	r10, rdx
	lea	rax, [rdx-2]
	shr	r10
	lea	r9, [r10-1]
	cmp	rax, 29
	jbe	.L153
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
.L149:
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
	movdqa	xmm2, xmm0
	punpckhbw	xmm0, xmm1
	punpcklbw	xmm2, xmm1
	movups	XMMWORD PTR [rsi+16+rax], xmm0
	movups	XMMWORD PTR [rsi+rax], xmm2
	add	rax, 32
	cmp	rdi, rax
	jne	.L149
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
	je	.L158
.L148:
	sub	r9, rdi
	lea	r10, [r9+1]
	cmp	r9, 6
	jbe	.L151
	movq	xmm3, QWORD PTR .LC1[rip]
	add	rdi, rdi
	add	rcx, rdi
	add	rdi, rsi
	movq	xmm0, QWORD PTR [rcx]
	movq	xmm2, QWORD PTR [rcx+8]
	movdqa	xmm1, xmm3
	mov	rcx, r10
	and	rcx, -8
	pand	xmm1, xmm0
	pand	xmm3, xmm2
	lea	rsi, [rcx+rcx]
	neg	rcx
	psrlw	xmm2, 8
	psrlw	xmm0, 8
	add	r8, rsi
	add	rax, rsi
	packuswb	xmm0, xmm2
	packuswb	xmm1, xmm3
	lea	rdx, [rdx+rcx*2]
	and	r10d, 7
	pshufd	xmm1, xmm1, 8
	pshufd	xmm0, xmm0, 8
	movdqa	xmm2, xmm0
	punpcklbw	xmm0, xmm1
	punpcklbw	xmm2, xmm1
	pshufd	xmm0, xmm0, 78
	movq	QWORD PTR [rdi], xmm2
	movq	QWORD PTR [rdi+8], xmm0
	je	.L146
.L151:
	movzx	ecx, WORD PTR [rax]
	rol	cx, 8
	mov	WORD PTR [r8], cx
	cmp	rdx, 3
	jle	.L146
	movzx	ecx, WORD PTR [rax+2]
	rol	cx, 8
	mov	WORD PTR [r8+2], cx
	cmp	rdx, 5
	jle	.L146
	movzx	ecx, WORD PTR [rax+4]
	rol	cx, 8
	mov	WORD PTR [r8+4], cx
	cmp	rdx, 7
	jle	.L146
	movzx	ecx, WORD PTR [rax+6]
	rol	cx, 8
	mov	WORD PTR [r8+6], cx
	cmp	rdx, 9
	jle	.L146
	movzx	ecx, WORD PTR [rax+8]
	rol	cx, 8
	mov	WORD PTR [r8+8], cx
	cmp	rdx, 11
	jle	.L146
	movzx	ecx, WORD PTR [rax+10]
	rol	cx, 8
	mov	WORD PTR [r8+10], cx
	cmp	rdx, 13
	jle	.L146
	movzx	eax, WORD PTR [rax+12]
	rol	ax, 8
	mov	WORD PTR [r8+12], ax
.L146:
	ret
.L153:
	mov	rax, rdi
	mov	r8, rsi
	xor	edi, edi
	jmp	.L148
.L158:
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
	setbe	al
	cmp	edi, 32
	sete	dl
	or	eax, edx
	movzx	eax, al
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
	jbe	.L171
	cmp	edi, 31
	jbe	.L171
	lea	edx, [rdi-8232]
	mov	eax, 1
	cmp	edx, 1
	jbe	.L169
	sub	edi, 65529
	xor	eax, eax
	cmp	edi, 2
	setbe	al
	ret
	.p2align 4,,10
	.p2align 3
.L171:
	mov	eax, 1
.L169:
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
	jbe	.L180
	lea	eax, [rdi-8234]
	cmp	eax, 47061
	jbe	.L177
	cmp	edi, 8231
	jbe	.L177
	lea	edx, [rdi-57344]
	mov	eax, 1
	cmp	edx, 8184
	jbe	.L174
	lea	edx, [rdi-65532]
	xor	eax, eax
	cmp	edx, 1048579
	ja	.L174
	not	edi
	xor	eax, eax
	and	edi, 65534
	setne	al
	ret
	.p2align 4,,10
	.p2align 3
.L177:
	mov	eax, 1
.L174:
	ret
	.p2align 4,,10
	.p2align 3
.L180:
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
	jbe	.L181
	or	edi, 32
	xor	eax, eax
	sub	edi, 97
	cmp	edi, 5
	setbe	al
.L181:
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
	jp	.L185
	ucomisd	xmm1, xmm1
	jp	.L189
	comisd	xmm0, xmm1
	jbe	.L192
	subsd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L192:
	pxor	xmm0, xmm0
.L185:
	ret
	.p2align 4,,10
	.p2align 3
.L189:
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
	jp	.L193
	ucomiss	xmm1, xmm1
	jp	.L197
	comiss	xmm0, xmm1
	jbe	.L200
	subss	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L200:
	pxor	xmm0, xmm0
.L193:
	ret
	.p2align 4,,10
	.p2align 3
.L197:
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
	jp	.L201
	ucomisd	xmm1, xmm1
	jp	.L207
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L203
	test	eax, eax
	jne	.L201
.L207:
	movapd	xmm1, xmm0
.L201:
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L203:
	movapd	xmm2, xmm1
	maxsd	xmm2, xmm0
	movapd	xmm1, xmm2
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
	jp	.L210
	ucomiss	xmm1, xmm1
	jp	.L216
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L212
	test	eax, eax
	jne	.L210
.L216:
	movaps	xmm1, xmm0
.L210:
	movaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L212:
	movaps	xmm2, xmm1
	maxss	xmm2, xmm0
	movaps	xmm1, xmm2
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
	jp	.L224
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L227
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
	je	.L221
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L224:
	fstp	st(0)
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L227:
	fstp	st(0)
.L219:
	ret
	.p2align 4,,10
	.p2align 3
.L221:
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
	movapd	xmm2, xmm0
	jp	.L233
	ucomisd	xmm1, xmm1
	jp	.L228
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L230
	test	eax, eax
	jne	.L228
.L233:
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L228:
	ret
	.p2align 4,,10
	.p2align 3
.L230:
	minsd	xmm2, xmm1
	movapd	xmm0, xmm2
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
	jp	.L242
	ucomiss	xmm1, xmm1
	jp	.L237
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L239
	test	eax, eax
	jne	.L237
.L242:
	movaps	xmm0, xmm1
.L237:
	ret
	.p2align 4,,10
	.p2align 3
.L239:
	movaps	xmm2, xmm0
	minss	xmm2, xmm1
	movaps	xmm0, xmm2
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
	jp	.L254
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L252
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
	je	.L248
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L252:
	fstp	st(0)
	jmp	.L246
	.p2align 4,,10
	.p2align 3
.L254:
	fstp	st(0)
.L246:
	ret
	.p2align 4,,10
	.p2align 3
.L248:
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
	je	.L256
	.p2align 5
	.p2align 4
	.p2align 3
.L257:
	mov	ecx, eax
	add	rdx, 1
	and	ecx, 63
	movzx	ecx, BYTE PTR digits[rcx]
	mov	BYTE PTR [rdx-1], cl
	shr	eax, 6
	jne	.L257
.L256:
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
	je	.L268
	movq	xmm0, QWORD PTR [rsi]
	movq	xmm1, rsi
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR [rdi], xmm0
	mov	QWORD PTR [rsi], rdi
	mov	rax, QWORD PTR [rdi]
	test	rax, rax
	je	.L262
	mov	QWORD PTR [rax+8], rdi
.L262:
	ret
	.p2align 4,,10
	.p2align 3
.L268:
	pxor	xmm0, xmm0
	movups	XMMWORD PTR [rdi], xmm0
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
	je	.L270
	mov	rdx, QWORD PTR [rdi+8]
	mov	QWORD PTR [rax+8], rdx
.L270:
	mov	rdx, QWORD PTR [rdi+8]
	test	rdx, rdx
	je	.L269
	mov	QWORD PTR [rdx], rax
.L269:
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
	je	.L279
	mov	r13, rsi
	xor	r15d, r15d
	jmp	.L281
	.p2align 4,,10
	.p2align 3
.L294:
	add	r15, 1
	add	r13, rbx
	cmp	rbp, r15
	je	.L279
.L281:
	mov	rax, QWORD PTR [rsp+8]
	mov	r14, r13
	mov	rsi, r13
	mov	rdi, r12
	call	rax
	test	eax, eax
	jne	.L294
.L278:
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
.L279:
	.cfi_restore_state
	lea	rax, [rbp+1]
	mov	rcx, QWORD PTR [rsp+24]
	mov	r14, QWORD PTR [rsp+16]
	imul	rbp, rbx
	mov	QWORD PTR [rcx], rax
	add	r14, rbp
	test	rbx, rbx
	je	.L278
	mov	rdx, rbx
	mov	rsi, r12
	mov	rdi, r14
	call	memmove
	jmp	.L278
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
	je	.L296
	mov	r13, rcx
	mov	r12, r8
	mov	rbx, rsi
	xor	ebp, ebp
	jmp	.L298
	.p2align 4,,10
	.p2align 3
.L307:
	add	rbp, 1
	add	rbx, r13
	cmp	r14, rbp
	je	.L296
.L298:
	mov	rdi, QWORD PTR [rsp+8]
	mov	r15, rbx
	mov	rsi, rbx
	call	r12
	test	eax, eax
	jne	.L307
.L295:
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
.L296:
	.cfi_restore_state
	xor	r15d, r15d
	jmp	.L295
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
	jmp	.L332
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L327:
	add	rdi, 1
.L332:
	movsx	edx, BYTE PTR [rdi]
	lea	ecx, [rdx-9]
	mov	eax, edx
	cmp	ecx, 4
	jbe	.L327
	cmp	al, 32
	je	.L327
	cmp	al, 43
	je	.L313
	cmp	al, 45
	jne	.L333
	movsx	edx, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L322
	mov	r9d, 1
.L316:
	xor	edi, edi
	.p2align 6
	.p2align 4
	.p2align 3
.L319:
	lea	ecx, [rdi+rdi*4]
	movsx	esi, BYTE PTR [r8+1]
	lea	edx, [rax-48]
	add	r8, 1
	add	ecx, ecx
	movsx	edx, dl
	mov	edi, ecx
	mov	eax, esi
	sub	esi, 48
	sub	edi, edx
	cmp	esi, 9
	jbe	.L319
	sub	edx, ecx
	test	r9d, r9d
	cmove	edi, edx
	mov	eax, edi
	ret
	.p2align 4,,10
	.p2align 3
.L333:
	sub	edx, 48
	mov	r8, rdi
	xor	r9d, r9d
	cmp	edx, 9
	jbe	.L316
.L322:
	xor	edi, edi
.L334:
	mov	eax, edi
	ret
	.p2align 4,,10
	.p2align 3
.L313:
	movsx	edx, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	xor	r9d, r9d
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L316
	xor	edi, edi
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
	jmp	.L358
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L353:
	add	rdi, 1
.L358:
	movsx	edx, BYTE PTR [rdi]
	lea	ecx, [rdx-9]
	mov	eax, edx
	cmp	ecx, 4
	jbe	.L353
	cmp	al, 32
	je	.L353
	cmp	al, 43
	je	.L339
	cmp	al, 45
	jne	.L359
	movsx	edx, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L348
	mov	r9d, 1
.L342:
	xor	edi, edi
	.p2align 6
	.p2align 4
	.p2align 3
.L345:
	lea	rcx, [rdi+rdi*4]
	movsx	esi, BYTE PTR [r8+1]
	lea	edx, [rax-48]
	add	r8, 1
	add	rcx, rcx
	movsx	rdx, dl
	mov	rdi, rcx
	mov	eax, esi
	sub	esi, 48
	sub	rdi, rdx
	cmp	esi, 9
	jbe	.L345
	sub	rdx, rcx
	test	r9d, r9d
	cmove	rdi, rdx
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L359:
	sub	edx, 48
	mov	r8, rdi
	xor	r9d, r9d
	cmp	edx, 9
	jbe	.L342
.L348:
	xor	edi, edi
.L360:
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L339:
	movsx	edx, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	xor	r9d, r9d
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L342
	xor	edi, edi
	jmp	.L360
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.p2align 4
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB171:
	.cfi_startproc
	jmp	.L382
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L378:
	add	rdi, 1
.L382:
	movsx	edx, BYTE PTR [rdi]
	lea	ecx, [rdx-9]
	mov	eax, edx
	cmp	ecx, 4
	jbe	.L378
	cmp	al, 32
	je	.L378
	cmp	al, 43
	je	.L365
	cmp	al, 45
	je	.L383
	sub	edx, 48
	mov	r8, rdi
	xor	r9d, r9d
	cmp	edx, 9
	ja	.L373
.L367:
	xor	edi, edi
	.p2align 6
	.p2align 4
	.p2align 3
.L370:
	lea	rcx, [rdi+rdi*4]
	movsx	esi, BYTE PTR [r8+1]
	lea	edx, [rax-48]
	add	r8, 1
	add	rcx, rcx
	movsx	rdx, dl
	mov	rdi, rcx
	mov	eax, esi
	sub	esi, 48
	sub	rdi, rdx
	cmp	esi, 9
	jbe	.L370
	sub	rdx, rcx
	test	r9d, r9d
	cmove	rdi, rdx
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L383:
	movsx	edx, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	mov	r9d, 1
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L367
.L373:
	xor	edi, edi
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L365:
	movsx	edx, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L373
	xor	r9d, r9d
	jmp	.L367
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
	je	.L385
	mov	r13, rsi
	mov	rbx, rdx
	mov	r12, rcx
	mov	r14, r8
	jmp	.L388
	.p2align 4,,10
	.p2align 3
.L398:
	je	.L384
	sub	rbx, 1
	lea	r13, [rbp+0+r12]
	sub	rbx, r15
	test	rbx, rbx
	je	.L385
.L388:
	mov	r15, rbx
	mov	rdi, QWORD PTR [rsp+8]
	shr	r15
	mov	rbp, r15
	imul	rbp, r12
	add	rbp, r13
	mov	rsi, rbp
	call	r14
	test	eax, eax
	jns	.L398
	mov	rbx, r15
	test	rbx, rbx
	jne	.L388
.L385:
	xor	ebp, ebp
.L384:
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
	mov	r12, rsi
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	mov	rbp, rcx
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 24
	.cfi_def_cfa_offset 80
	mov	QWORD PTR [rsp], rdi
	mov	QWORD PTR [rsp+8], r9
	test	edx, edx
	je	.L404
	.p2align 4
	.p2align 3
.L400:
	mov	r15d, r13d
	mov	rdx, QWORD PTR [rsp+8]
	mov	rdi, QWORD PTR [rsp]
	sar	r15d
	movsx	rbx, r15d
	imul	rbx, rbp
	add	rbx, r12
	mov	rsi, rbx
	call	r14
	test	eax, eax
	je	.L399
	jle	.L402
	lea	ecx, [r13-1]
	lea	r12, [rbx+rbp]
	sar	ecx
	mov	r13d, ecx
	jne	.L400
.L404:
	xor	ebx, ebx
.L399:
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
.L402:
	.cfi_restore_state
	test	r15d, r15d
	je	.L404
	mov	r13d, r15d
	jmp	.L400
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
	jmp	.L427
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L429:
	cmp	esi, eax
	je	.L428
	add	rdi, 4
.L427:
	mov	eax, DWORD PTR [rdi]
	test	eax, eax
	jne	.L429
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L428:
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
	je	.L431
	jmp	.L432
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L433:
	mov	edx, DWORD PTR [rdi+rax]
	add	rax, 4
	mov	ecx, DWORD PTR [rsi-4+rax]
	cmp	edx, ecx
	jne	.L432
.L431:
	test	edx, edx
	jne	.L433
.L432:
	xor	eax, eax
	cmp	edx, ecx
	mov	edx, -1
	setg	al
	cmovl	eax, edx
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
.L439:
	mov	ecx, DWORD PTR [rsi+rdx]
	mov	DWORD PTR [rax+rdx], ecx
	add	rdx, 4
	test	ecx, ecx
	jne	.L439
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
	je	.L444
	mov	rax, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L443:
	mov	edx, DWORD PTR [rax+4]
	add	rax, 4
	test	edx, edx
	jne	.L443
	sub	rax, rdi
	sar	rax, 2
	ret
	.p2align 4,,10
	.p2align 3
.L444:
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
	jne	.L447
	jmp	.L453
	.p2align 4,,10
	.p2align 3
.L458:
	test	eax, eax
	je	.L451
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	je	.L453
.L447:
	mov	eax, DWORD PTR [rdi]
	cmp	DWORD PTR [rsi], eax
	je	.L458
.L451:
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	mov	edx, -1
	setg	al
	movzx	eax, al
	cmovl	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L453:
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
	jne	.L460
	jmp	.L463
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L462:
	add	rdi, 4
	sub	rdx, 1
	je	.L463
.L460:
	cmp	DWORD PTR [rdi], esi
	jne	.L462
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L463:
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
	jne	.L466
	jmp	.L471
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L468:
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	je	.L471
.L466:
	mov	eax, DWORD PTR [rdi]
	cmp	eax, DWORD PTR [rsi]
	je	.L468
	cmp	eax, DWORD PTR [rsi]
	mov	edx, -1
	setg	al
	movzx	eax, al
	cmovl	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L471:
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
	je	.L480
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	sal	rdx, 2
	call	memcpy
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L480:
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
	je	.L509
	mov	rax, rcx
	lea	rdx, [0+rdx*4]
	lea	rdi, [r8-1]
	sub	rax, rsi
	cmp	rax, rdx
	jnb	.L529
	test	r8, r8
	je	.L509
	cmp	rdi, 2
	jbe	.L492
	mov	rax, rcx
	sub	rax, rsi
	add	rax, 12
	cmp	rax, 8
	jbe	.L492
	mov	r9, r8
	sub	rdx, 16
	xor	eax, eax
	shr	r9, 2
	lea	r10, [rsi+rdx]
	add	rdx, rcx
	neg	r9
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L489:
	movdqu	xmm0, XMMWORD PTR [r10+rax]
	movups	XMMWORD PTR [rdx+rax], xmm0
	sub	rax, 16
	cmp	r9, rax
	jne	.L489
	mov	rax, r8
	and	rax, -4
	sub	rdi, rax
	and	r8d, 3
	je	.L509
	mov	eax, DWORD PTR [rsi+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], eax
	test	rdi, rdi
	je	.L509
	sub	rdi, 1
	mov	edx, DWORD PTR [rsi+rdi*4]
	lea	rax, [0+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], edx
	je	.L509
	mov	edx, DWORD PTR [rsi-4+rax]
	mov	DWORD PTR [rcx-4+rax], edx
.L509:
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L529:
	test	r8, r8
	je	.L509
	cmp	rdi, 2
	jbe	.L501
	lea	rdx, [rsi+4]
	mov	rax, rcx
	sub	rax, rdx
	cmp	rax, 8
	jbe	.L501
	mov	r9, r8
	xor	eax, eax
	xor	edx, edx
	shr	r9, 2
	.p2align 5
	.p2align 4
	.p2align 3
.L495:
	movdqu	xmm0, XMMWORD PTR [rsi+rax]
	add	rdx, 1
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	r9, rdx
	jne	.L495
	mov	rax, r8
	and	rax, -4
	sub	rdi, rax
	sal	rax, 2
	add	rsi, rax
	add	rax, rcx
	and	r8d, 3
	je	.L509
	mov	edx, DWORD PTR [rsi]
	mov	DWORD PTR [rax], edx
	test	rdi, rdi
	je	.L509
	mov	edx, DWORD PTR [rsi+4]
	mov	DWORD PTR [rax+4], edx
	cmp	rdi, 1
	je	.L509
	mov	edx, DWORD PTR [rsi+8]
	mov	DWORD PTR [rax+8], edx
	jmp	.L509
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L492:
	mov	eax, DWORD PTR [rsi+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], eax
	sub	rdi, 1
	jb	.L509
	mov	eax, DWORD PTR [rsi+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], eax
	sub	rdi, 1
	jnb	.L492
	jmp	.L509
	.p2align 4,,10
	.p2align 3
.L501:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L498:
	mov	edx, DWORD PTR [rsi+rax*4]
	mov	DWORD PTR [rcx+rax*4], edx
	add	rax, 1
	cmp	r8, rax
	jne	.L498
	jmp	.L509
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
	je	.L531
	cmp	r9, 2
	jbe	.L535
	mov	rdi, rdx
	movd	xmm1, esi
	xor	ecx, ecx
	shr	rdi, 2
	pshufd	xmm0, xmm1, 0
	.p2align 5
	.p2align 4
	.p2align 3
.L533:
	mov	r8, rcx
	add	rcx, 1
	sal	r8, 4
	movups	XMMWORD PTR [rax+r8], xmm0
	cmp	rdi, rcx
	jne	.L533
	test	dl, 3
	je	.L531
	and	rdx, -4
	sub	r9, rdx
	lea	rdx, [rax+rdx*4]
.L532:
	mov	DWORD PTR [rdx], esi
	test	r9, r9
	je	.L531
	mov	DWORD PTR [rdx+4], esi
	cmp	r9, 1
	je	.L531
	mov	DWORD PTR [rdx+8], esi
.L531:
	ret
.L535:
	mov	rdx, rdi
	jmp	.L532
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
	jnb	.L550
	test	rdx, rdx
	je	.L549
	.p2align 4
	.p2align 4
	.p2align 3
.L552:
	movzx	edx, BYTE PTR [rdi-1+rax]
	mov	BYTE PTR [rsi-1+rax], dl
	sub	rax, 1
	jne	.L552
	ret
	.p2align 4,,10
	.p2align 3
.L550:
	jne	.L595
.L549:
	ret
	.p2align 4,,10
	.p2align 3
.L595:
	test	rdx, rdx
	je	.L549
	lea	rdx, [rdx-1]
	cmp	rdx, 6
	jbe	.L563
	lea	r8, [rdi+1]
	mov	rcx, rsi
	sub	rcx, r8
	cmp	rcx, 14
	jbe	.L563
	cmp	rdx, 14
	jbe	.L564
	mov	rcx, rax
	xor	edx, edx
	and	rcx, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L555:
	movdqu	xmm0, XMMWORD PTR [rdi+rdx]
	movups	XMMWORD PTR [rsi+rdx], xmm0
	add	rdx, 16
	cmp	rcx, rdx
	jne	.L555
	mov	rdx, rax
	lea	r8, [rsi+rcx]
	lea	r9, [rdi+rcx]
	sub	rdx, rcx
	cmp	rcx, rax
	je	.L549
	lea	r10, [rdx-1]
	mov	rax, rdx
	cmp	r10, 6
	jbe	.L558
.L554:
	mov	rdi, QWORD PTR [rdi+rcx]
	mov	QWORD PTR [rsi+rcx], rdi
	mov	rcx, rax
	and	rcx, -8
	add	r8, rcx
	add	r9, rcx
	sub	rdx, rcx
	test	al, 7
	je	.L549
.L558:
	movzx	eax, BYTE PTR [r9]
	mov	BYTE PTR [r8], al
	cmp	rdx, 1
	je	.L549
	movzx	eax, BYTE PTR [r9+1]
	mov	BYTE PTR [r8+1], al
	cmp	rdx, 2
	je	.L549
	movzx	eax, BYTE PTR [r9+2]
	mov	BYTE PTR [r8+2], al
	cmp	rdx, 3
	je	.L549
	movzx	eax, BYTE PTR [r9+3]
	mov	BYTE PTR [r8+3], al
	cmp	rdx, 4
	je	.L549
	movzx	eax, BYTE PTR [r9+4]
	mov	BYTE PTR [r8+4], al
	cmp	rdx, 5
	je	.L549
	movzx	eax, BYTE PTR [r9+5]
	mov	BYTE PTR [r8+5], al
	cmp	rdx, 6
	je	.L549
	movzx	eax, BYTE PTR [r9+6]
	mov	BYTE PTR [r8+6], al
	ret
	.p2align 4,,10
	.p2align 3
.L563:
	xor	edx, edx
	.p2align 4
	.p2align 4
	.p2align 3
.L560:
	movzx	ecx, BYTE PTR [rdi+rdx]
	mov	BYTE PTR [rsi+rdx], cl
	add	rdx, 1
	cmp	rax, rdx
	jne	.L560
	ret
.L564:
	mov	r8, rsi
	mov	r9, rdi
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.L554
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
	jmp	.L612
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L610:
	cmp	ecx, 32
	je	.L614
.L612:
	mov	eax, edi
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L610
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L614:
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
	je	.L615
	mov	eax, edi
	and	eax, 1
	jne	.L615
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L617:
	sar	edi
	add	eax, 1
	test	dil, 1
	je	.L617
.L615:
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
	ja	.L622
	xor	eax, eax
	comiss	xmm0, DWORD PTR .LC7[rip]
	seta	al
.L622:
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
	ja	.L625
	xor	eax, eax
	comisd	xmm0, QWORD PTR .LC9[rip]
	seta	al
.L625:
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
	ja	.L631
	fld	TBYTE PTR .LC11[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L628
	.p2align 4,,10
	.p2align 3
.L631:
	fstp	st(0)
.L628:
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
	jp	.L634
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm1, xmm0
	jp	.L641
	jne	.L641
.L634:
	ret
	.p2align 4,,10
	.p2align 3
.L641:
	movss	xmm1, DWORD PTR .LC12[rip]
	test	edi, edi
	jns	.L636
	movss	xmm1, DWORD PTR .LC13[rip]
.L636:
	test	dil, 1
	je	.L637
	.p2align 4
	.p2align 3
.L638:
	mulss	xmm0, xmm1
.L637:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L634
	mulss	xmm1, xmm1
	test	dil, 1
	jne	.L638
.L648:
	mulss	xmm1, xmm1
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	test	dil, 1
	jne	.L638
	jmp	.L648
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
	jp	.L650
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm1, xmm0
	jp	.L657
	jne	.L657
.L650:
	ret
	.p2align 4,,10
	.p2align 3
.L657:
	movsd	xmm1, QWORD PTR .LC14[rip]
	test	edi, edi
	jns	.L652
	movsd	xmm1, QWORD PTR .LC15[rip]
.L652:
	test	dil, 1
	je	.L653
	.p2align 4
	.p2align 3
.L654:
	mulsd	xmm0, xmm1
.L653:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L650
	mulsd	xmm1, xmm1
	test	dil, 1
	jne	.L654
.L664:
	mulsd	xmm1, xmm1
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	test	dil, 1
	jne	.L654
	jmp	.L664
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
	jp	.L666
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L673
	jne	.L673
	jmp	.L666
	.p2align 4,,10
	.p2align 3
.L682:
	fstp	st(0)
.L666:
	ret
	.p2align 4,,10
	.p2align 3
.L673:
	test	edi, edi
	js	.L680
	fld	DWORD PTR .LC12[rip]
.L668:
	test	dil, 1
	je	.L669
	.p2align 4
	.p2align 3
.L670:
	fmul	st(1), st
.L669:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L682
	fmul	st, st(0)
	test	dil, 1
	jne	.L670
.L681:
	mov	eax, edi
	fmul	st, st(0)
	shr	eax, 31
	add	edi, eax
	sar	edi
	test	dil, 1
	jne	.L670
	jmp	.L681
	.p2align 4,,10
	.p2align 3
.L680:
	fld	DWORD PTR .LC13[rip]
	jmp	.L668
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
	je	.L684
	lea	rax, [rdx-1]
	cmp	rax, 14
	jbe	.L690
	mov	rdi, rdx
	xor	eax, eax
	and	rdi, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L686:
	movdqu	xmm2, XMMWORD PTR [rcx+rax]
	movdqu	xmm0, XMMWORD PTR [rsi+rax]
	pxor	xmm0, xmm2
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, rdi
	jne	.L686
	mov	r9, rdx
	lea	rax, [rcx+rdi]
	lea	r8, [rsi+rdi]
	sub	r9, rdi
	cmp	rdx, rdi
	je	.L684
.L685:
	sub	rdx, rdi
	lea	r10, [rdx-1]
	cmp	r10, 6
	jbe	.L688
	lea	r10, [rcx+rdi]
	movq	xmm0, QWORD PTR [rsi+rdi]
	mov	rsi, rdx
	movq	xmm1, QWORD PTR [r10]
	and	rsi, -8
	add	rax, rsi
	add	r8, rsi
	sub	r9, rsi
	and	edx, 7
	pxor	xmm0, xmm1
	movq	QWORD PTR [r10], xmm0
	je	.L684
.L688:
	movzx	edx, BYTE PTR [r8]
	xor	BYTE PTR [rax], dl
	cmp	r9, 1
	je	.L684
	movzx	edx, BYTE PTR [r8+1]
	xor	BYTE PTR [rax+1], dl
	cmp	r9, 2
	je	.L684
	movzx	edx, BYTE PTR [r8+2]
	xor	BYTE PTR [rax+2], dl
	cmp	r9, 3
	je	.L684
	movzx	edx, BYTE PTR [r8+3]
	xor	BYTE PTR [rax+3], dl
	cmp	r9, 4
	je	.L684
	movzx	edx, BYTE PTR [r8+4]
	xor	BYTE PTR [rax+4], dl
	cmp	r9, 5
	je	.L684
	movzx	edx, BYTE PTR [r8+5]
	xor	BYTE PTR [rax+5], dl
	cmp	r9, 6
	je	.L684
	movzx	edx, BYTE PTR [r8+6]
	xor	BYTE PTR [rax+6], dl
.L684:
	mov	rax, rcx
	ret
.L690:
	mov	rax, rdi
	mov	r8, rsi
	mov	r9, rdx
	xor	edi, edi
	jmp	.L685
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
	je	.L717
	.p2align 4
	.p2align 4
	.p2align 3
.L718:
	add	rcx, 1
	cmp	BYTE PTR [rcx], 0
	jne	.L718
.L717:
	test	rdx, rdx
	jne	.L719
	jmp	.L720
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L721:
	add	rsi, 1
	add	rcx, 1
	sub	rdx, 1
	je	.L720
.L719:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rcx], r8b
	test	r8b, r8b
	jne	.L721
	ret
	.p2align 4,,10
	.p2align 3
.L720:
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
	je	.L737
.L730:
	cmp	BYTE PTR [rdi+rax], 0
	jne	.L732
	ret
	.p2align 4,,10
	.p2align 3
.L732:
	add	rax, 1
	cmp	rsi, rax
	jne	.L730
	ret
	.p2align 4,,10
	.p2align 3
.L737:
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
	je	.L743
.L739:
	mov	rdx, rsi
	jmp	.L742
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L741:
	add	rdx, 1
	cmp	cl, r8b
	je	.L740
.L742:
	movzx	ecx, BYTE PTR [rdx]
	test	cl, cl
	jne	.L741
	movzx	r8d, BYTE PTR [rax+1]
	add	rax, 1
	test	r8b, r8b
	jne	.L739
.L743:
	xor	eax, eax
.L740:
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
.L747:
	movsx	ecx, BYTE PTR [rdi]
	cmp	esi, ecx
	cmove	rdx, rdi
	add	rdi, 1
	test	cl, cl
	jne	.L747
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
	je	.L761
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L751:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L751
	mov	rcx, rdx
	sub	rax, rsi
	je	.L749
	lea	r11, [rsi-1+rax]
	jmp	.L758
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L772:
	add	rdx, 1
	test	al, al
	je	.L771
.L758:
	movzx	eax, BYTE PTR [rdx]
	cmp	al, r10b
	jne	.L772
	mov	ecx, r10d
	mov	rax, rsi
	mov	r8, rdx
	jmp	.L753
	.p2align 4,,10
	.p2align 3
.L773:
	test	dil, dil
	setne	r9b
	cmp	dil, cl
	sete	dil
	test	r9b, dil
	je	.L754
	movzx	ecx, BYTE PTR [r8+1]
	add	r8, 1
	add	rax, 1
	test	cl, cl
	je	.L754
.L753:
	movzx	edi, BYTE PTR [rax]
	cmp	rax, r11
	jne	.L773
.L754:
	cmp	cl, BYTE PTR [rax]
	je	.L761
	add	rdx, 1
	jmp	.L758
	.p2align 4,,10
	.p2align 3
.L771:
	xor	ecx, ecx
.L749:
	mov	rax, rcx
	ret
.L761:
	mov	rcx, rdx
	mov	rax, rcx
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
	ja	.L784
	comisd	xmm0, xmm2
	jbe	.L778
	comisd	xmm2, xmm1
	ja	.L777
.L778:
	ret
	.p2align 4,,10
	.p2align 3
.L784:
	comisd	xmm1, xmm2
	jbe	.L778
.L777:
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
	je	.L785
	cmp	rsi, rcx
	jb	.L796
	sub	rsi, rcx
	add	rsi, rdi
	jc	.L796
	movzx	r9d, BYTE PTR [rdx]
	jmp	.L791
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L795:
	mov	rax, rdi
.L787:
	cmp	rsi, rax
	jb	.L796
.L791:
	lea	rdi, [rax+1]
	cmp	BYTE PTR [rax], r9b
	jne	.L795
	cmp	rcx, 1
	je	.L803
.L790:
	mov	r8d, 1
	jmp	.L788
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L789:
	add	r8, 1
	cmp	rcx, r8
	je	.L785
.L788:
	movzx	r10d, BYTE PTR [rdx+r8]
	cmp	BYTE PTR [rax+r8], r10b
	je	.L789
	cmp	rsi, rdi
	jb	.L796
	lea	rax, [rdi+1]
	cmp	r9b, BYTE PTR [rdi]
	jne	.L787
	mov	r8, rdi
	mov	rdi, rax
	mov	rax, r8
	jmp	.L790
	.p2align 4,,10
	.p2align 3
.L796:
	xor	eax, eax
.L785:
	ret
.L803:
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
	je	.L805
	call	memmove
	mov	rdi, rax
.L805:
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
	pxor	xmm1, xmm1
	comisd	xmm1, xmm0
	ja	.L834
	xor	edx, edx
	comisd	xmm0, QWORD PTR .LC19[rip]
	jb	.L835
.L813:
	movsd	xmm3, QWORD PTR .LC15[rip]
	movsd	xmm2, QWORD PTR .LC14[rip]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L820:
	movapd	xmm1, xmm0
	add	eax, 1
	mulsd	xmm0, xmm3
	comisd	xmm1, xmm2
	jnb	.L820
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	je	.L810
.L837:
	xorpd	xmm0, XMMWORD PTR .LC16[rip]
.L810:
	ret
	.p2align 4,,10
	.p2align 3
.L835:
	movsd	xmm2, QWORD PTR .LC15[rip]
	comisd	xmm2, xmm0
	jbe	.L816
	ucomisd	xmm0, xmm1
	jp	.L826
	jne	.L826
.L816:
	mov	DWORD PTR [rdi], 0
	ret
	.p2align 4,,10
	.p2align 3
.L834:
	movsd	xmm1, QWORD PTR .LC17[rip]
	movapd	xmm2, xmm0
	xorpd	xmm2, XMMWORD PTR .LC16[rip]
	comisd	xmm1, xmm0
	jb	.L836
	movapd	xmm0, xmm2
	mov	edx, 1
	jmp	.L813
	.p2align 4,,10
	.p2align 3
.L836:
	comisd	xmm0, QWORD PTR .LC18[rip]
	jbe	.L816
	mov	edx, 1
.L814:
	movapd	xmm0, xmm2
	movsd	xmm2, QWORD PTR .LC20[rip]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L822:
	movapd	xmm1, xmm0
	sub	eax, 1
	addsd	xmm0, xmm0
	comisd	xmm2, xmm1
	ja	.L822
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	jne	.L837
	ret
.L826:
	movapd	xmm2, xmm0
	xor	edx, edx
	jmp	.L814
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
	je	.L838
	.p2align 5
	.p2align 4
	.p2align 3
.L840:
	mov	rax, rdi
	and	eax, 1
	neg	rax
	and	rax, rsi
	add	rsi, rsi
	add	rdx, rax
	shr	rdi
	jne	.L840
.L838:
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
	mov	eax, 1
	cmp	esi, edi
	jb	.L844
	jmp	.L845
	.p2align 4,,10
	.p2align 3
.L847:
	add	esi, esi
	add	eax, eax
	cmp	esi, edi
	jnb	.L846
	test	eax, eax
	je	.L846
.L844:
	test	esi, esi
	jns	.L847
.L845:
	xor	ecx, ecx
	.p2align 4
	.p2align 4
	.p2align 3
.L850:
	cmp	edi, esi
	jb	.L849
	sub	edi, esi
	or	ecx, eax
.L849:
	shr	esi
	shr	eax
	jne	.L850
	test	rdx, rdx
	cmovne	ecx, edi
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L846:
	xor	ecx, ecx
	test	eax, eax
	jne	.L845
	test	rdx, rdx
	cmovne	ecx, edi
	mov	eax, ecx
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
	mov	ecx, 7
	sar	dl, 7
	mov	eax, edx
	xor	eax, edi
	cmp	dil, dl
	je	.L865
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	ecx, [rax-1]
.L865:
	mov	eax, ecx
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
	mov	ecx, 63
	sar	rdx, 63
	xor	rax, rdx
	cmp	rdi, rdx
	je	.L868
	bsr	rax, rax
	xor	rax, 63
	lea	ecx, [rax-1]
.L868:
	mov	eax, ecx
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
	je	.L871
	.p2align 5
	.p2align 4
	.p2align 3
.L873:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L873
.L871:
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
	jb	.L881
	mov	eax, edx
	add	rax, rsi
	cmp	rax, rdi
	jnb	.L918
.L881:
	test	r10d, r10d
	je	.L919
	lea	eax, [r10-1]
	cmp	eax, 2
	jbe	.L883
	lea	rax, [rcx+8]
	cmp	rdi, rax
	je	.L883
	mov	r9d, edx
	xor	eax, eax
	shr	r9d, 4
	mov	esi, r9d
	sal	rsi, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L884:
	movdqu	xmm0, XMMWORD PTR [rcx+rax]
	movups	XMMWORD PTR [rdi+rax], xmm0
	add	rax, 16
	cmp	rax, rsi
	jne	.L884
	add	r9d, r9d
	cmp	r10d, r9d
	je	.L887
	mov	rax, QWORD PTR [rcx+r9*8]
	mov	QWORD PTR [rdi+r9*8], rax
.L887:
	cmp	r8d, edx
	jnb	.L914
	mov	r11d, edx
	mov	esi, r8d
	sub	r11d, r8d
	lea	eax, [r11-1]
	cmp	eax, 6
	jbe	.L913
	mov	esi, r8d
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	lea	r10, [rdi+rsi]
	lea	rbx, [rcx+1+rsi]
	mov	r9, r10
	sub	r9, rbx
	cmp	r9, 14
	jbe	.L879
	cmp	eax, 14
	jbe	.L896
	mov	r9d, r11d
	lea	rbx, [rcx+rsi]
	xor	eax, eax
	shr	r9d, 4
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L889:
	movdqu	xmm0, XMMWORD PTR [rbx+rax]
	movups	XMMWORD PTR [r10+rax], xmm0
	add	rax, 16
	cmp	r9, rax
	jne	.L889
	mov	eax, r11d
	and	eax, -16
	add	r8d, eax
	test	r11b, 15
	je	.L876
	sub	r11d, eax
	lea	r9d, [r11-1]
	cmp	r9d, 6
	jbe	.L891
.L888:
	add	rax, rsi
	mov	rsi, QWORD PTR [rcx+rax]
	mov	QWORD PTR [rdi+rax], rsi
	mov	eax, r11d
	and	eax, -8
	add	r8d, eax
	and	r11d, 7
	je	.L876
.L891:
	mov	eax, r8d
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	lea	eax, [r8+1]
	cmp	eax, edx
	jnb	.L876
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	lea	eax, [r8+2]
	cmp	eax, edx
	jnb	.L876
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	lea	eax, [r8+3]
	cmp	eax, edx
	jnb	.L876
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	lea	eax, [r8+4]
	cmp	eax, edx
	jnb	.L876
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	lea	eax, [r8+5]
	cmp	eax, edx
	jnb	.L876
	movzx	esi, BYTE PTR [rcx+rax]
	add	r8d, 6
	mov	BYTE PTR [rdi+rax], sil
	cmp	r8d, edx
	jnb	.L876
	movzx	eax, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], al
.L876:
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L918:
	.cfi_restore 3
	lea	eax, [rdx-1]
	test	edx, edx
	je	.L920
	.p2align 4
	.p2align 4
	.p2align 3
.L895:
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	sub	rax, 1
	jnb	.L895
	ret
.L896:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xor	eax, eax
	jmp	.L888
	.p2align 4,,10
	.p2align 3
.L883:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	lea	r9d, [0+r10*8]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L886:
	mov	rsi, QWORD PTR [rcx+rax]
	mov	QWORD PTR [rdi+rax], rsi
	add	rax, 8
	cmp	r9, rax
	jne	.L886
	jmp	.L887
.L879:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L893:
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	add	rax, 1
	cmp	eax, edx
	jb	.L893
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L919:
	.cfi_restore 3
	mov	esi, r8d
	test	edx, edx
	je	.L921
.L913:
	mov	rax, rsi
.L915:
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	add	rax, 1
	cmp	eax, edx
	jb	.L915
.L914:
	ret
.L920:
	ret
.L921:
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
	jb	.L926
	mov	eax, edx
	add	rax, rsi
	cmp	rax, rdi
	jnb	.L950
.L926:
	test	r9d, r9d
	je	.L925
	lea	eax, [r9-1]
	cmp	eax, 2
	jbe	.L929
	lea	r8, [rsi+2]
	mov	rdi, rcx
	sub	rdi, r8
	cmp	rdi, 12
	jbe	.L929
	cmp	eax, 6
	jbe	.L939
	mov	edi, edx
	xor	eax, eax
	shr	edi, 4
	mov	r8d, edi
	sal	r8, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L931:
	movdqu	xmm0, XMMWORD PTR [rsi+rax]
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, r8
	jne	.L931
	lea	eax, [0+rdi*8]
	cmp	r9d, eax
	je	.L925
	mov	edi, r9d
	sub	edi, eax
	lea	r8d, [rdi-1]
	cmp	r8d, 2
	jbe	.L933
.L930:
	mov	r8d, eax
	mov	r10, QWORD PTR [rsi+r8*2]
	mov	QWORD PTR [rcx+r8*2], r10
	mov	r8d, edi
	and	r8d, -4
	add	eax, r8d
	and	edi, 3
	je	.L925
.L933:
	mov	edi, eax
	movzx	r8d, WORD PTR [rsi+rdi*2]
	mov	WORD PTR [rcx+rdi*2], r8w
	lea	edi, [rax+1]
	cmp	edi, r9d
	jnb	.L925
	movzx	r8d, WORD PTR [rsi+rdi*2]
	add	eax, 2
	mov	WORD PTR [rcx+rdi*2], r8w
	cmp	eax, r9d
	jnb	.L925
	movzx	edi, WORD PTR [rsi+rax*2]
	mov	WORD PTR [rcx+rax*2], di
.L925:
	test	dl, 1
	je	.L922
.L952:
	lea	eax, [rdx-1]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	ret
	.p2align 4,,10
	.p2align 3
.L950:
	lea	eax, [rdx-1]
	test	edx, edx
	je	.L951
	.p2align 4
	.p2align 4
	.p2align 3
.L938:
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	jnb	.L938
.L922:
	ret
.L939:
	mov	edi, r9d
	xor	eax, eax
	jmp	.L930
	.p2align 4,,10
	.p2align 3
.L929:
	lea	r8d, [r9+r9]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L935:
	movzx	edi, WORD PTR [rsi+rax]
	mov	WORD PTR [rcx+rax], di
	add	rax, 2
	cmp	rax, r8
	jne	.L935
	test	dl, 1
	je	.L922
	jmp	.L952
.L951:
	ret
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
	jb	.L958
	mov	eax, edx
	add	rax, rsi
	cmp	rax, rdi
	jnb	.L995
.L958:
	test	r10d, r10d
	je	.L996
	lea	eax, [r10-1]
	cmp	eax, 2
	jbe	.L960
	lea	rsi, [rcx+4]
	mov	rax, rdi
	sub	rax, rsi
	cmp	rax, 8
	jbe	.L960
	mov	r9d, edx
	xor	eax, eax
	shr	r9d, 4
	mov	esi, r9d
	sal	rsi, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L961:
	movdqu	xmm0, XMMWORD PTR [rcx+rax]
	movups	XMMWORD PTR [rdi+rax], xmm0
	add	rax, 16
	cmp	rax, rsi
	jne	.L961
	lea	eax, [0+r9*4]
	cmp	r10d, eax
	je	.L964
	mov	esi, eax
	mov	r9d, DWORD PTR [rcx+rsi*4]
	mov	DWORD PTR [rdi+rsi*4], r9d
	lea	esi, [rax+1]
	cmp	esi, r10d
	jnb	.L964
	mov	r9d, DWORD PTR [rcx+rsi*4]
	add	eax, 2
	mov	DWORD PTR [rdi+rsi*4], r9d
	cmp	eax, r10d
	jnb	.L964
	mov	esi, DWORD PTR [rcx+rax*4]
	mov	DWORD PTR [rdi+rax*4], esi
.L964:
	cmp	r8d, edx
	jnb	.L991
	mov	r11d, edx
	mov	esi, r8d
	sub	r11d, r8d
	lea	eax, [r11-1]
	cmp	eax, 6
	jbe	.L990
	mov	esi, r8d
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	lea	r10, [rdi+rsi]
	lea	rbx, [rcx+1+rsi]
	mov	r9, r10
	sub	r9, rbx
	cmp	r9, 14
	jbe	.L956
	cmp	eax, 14
	jbe	.L973
	mov	r9d, r11d
	lea	rbx, [rcx+rsi]
	xor	eax, eax
	shr	r9d, 4
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L966:
	movdqu	xmm0, XMMWORD PTR [rbx+rax]
	movups	XMMWORD PTR [r10+rax], xmm0
	add	rax, 16
	cmp	r9, rax
	jne	.L966
	mov	eax, r11d
	and	eax, -16
	add	r8d, eax
	test	r11b, 15
	je	.L953
	sub	r11d, eax
	lea	r9d, [r11-1]
	cmp	r9d, 6
	jbe	.L968
.L965:
	add	rax, rsi
	mov	rsi, QWORD PTR [rcx+rax]
	mov	QWORD PTR [rdi+rax], rsi
	mov	eax, r11d
	and	eax, -8
	add	r8d, eax
	and	r11d, 7
	je	.L953
.L968:
	mov	eax, r8d
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	lea	eax, [r8+1]
	cmp	eax, edx
	jnb	.L953
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	lea	eax, [r8+2]
	cmp	eax, edx
	jnb	.L953
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	lea	eax, [r8+3]
	cmp	eax, edx
	jnb	.L953
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	lea	eax, [r8+4]
	cmp	eax, edx
	jnb	.L953
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	lea	eax, [r8+5]
	cmp	eax, edx
	jnb	.L953
	movzx	esi, BYTE PTR [rcx+rax]
	add	r8d, 6
	mov	BYTE PTR [rdi+rax], sil
	cmp	r8d, edx
	jnb	.L953
	movzx	eax, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], al
.L953:
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L995:
	.cfi_restore 3
	lea	eax, [rdx-1]
	test	edx, edx
	je	.L997
	.p2align 4
	.p2align 4
	.p2align 3
.L972:
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	sub	rax, 1
	jnb	.L972
	ret
.L973:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xor	eax, eax
	jmp	.L965
	.p2align 4,,10
	.p2align 3
.L960:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	lea	r9d, [0+r10*4]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L963:
	mov	esi, DWORD PTR [rcx+rax]
	mov	DWORD PTR [rdi+rax], esi
	add	rax, 4
	cmp	rax, r9
	jne	.L963
	jmp	.L964
.L956:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L970:
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	add	rax, 1
	cmp	eax, edx
	jb	.L970
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L996:
	.cfi_restore 3
	mov	esi, r8d
	test	edx, edx
	je	.L998
.L990:
	mov	rax, rsi
.L992:
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	add	rax, 1
	cmp	eax, edx
	jb	.L992
.L991:
	ret
.L997:
	ret
.L998:
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
	js	.L1007
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1007:
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
	js	.L1010
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1010:
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
	jne	.L1016
	mov	eax, edx
	sar	eax, 14
	jne	.L1013
	mov	eax, edx
	shr	eax, 13
	jne	.L1017
	mov	eax, edx
	shr	eax, 12
	jne	.L1018
	mov	eax, edx
	shr	eax, 11
	jne	.L1019
	mov	eax, edx
	shr	eax, 10
	jne	.L1020
	mov	eax, edx
	shr	eax, 9
	jne	.L1021
	mov	eax, edx
	shr	eax, 8
	jne	.L1022
	mov	eax, edx
	shr	eax, 7
	jne	.L1023
	mov	eax, edx
	shr	eax, 6
	jne	.L1024
	mov	eax, edx
	shr	eax, 5
	jne	.L1025
	mov	eax, edx
	shr	eax, 4
	jne	.L1026
	mov	eax, edx
	shr	eax, 3
	jne	.L1027
	mov	eax, edx
	shr	eax, 2
	jne	.L1028
	shr	edx
	jne	.L1029
	cmp	di, 1
	mov	eax, 15
	adc	eax, 0
	ret
.L1029:
	mov	eax, 14
.L1013:
	ret
.L1016:
	xor	eax, eax
	ret
.L1027:
	mov	eax, 12
	ret
.L1017:
	mov	eax, 2
	ret
.L1018:
	mov	eax, 3
	ret
.L1019:
	mov	eax, 4
	ret
.L1020:
	mov	eax, 5
	ret
.L1021:
	mov	eax, 6
	ret
.L1022:
	mov	eax, 7
	ret
.L1023:
	mov	eax, 8
	ret
.L1024:
	mov	eax, 9
	ret
.L1025:
	mov	eax, 10
	ret
.L1026:
	mov	eax, 11
	ret
.L1028:
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
	jne	.L1034
	test	dil, 2
	jne	.L1035
	test	dil, 4
	jne	.L1036
	test	dil, 8
	jne	.L1037
	test	dil, 16
	jne	.L1038
	test	dil, 32
	jne	.L1039
	test	dil, 64
	jne	.L1040
	test	dil, -128
	jne	.L1041
	test	edi, 256
	jne	.L1042
	test	edi, 512
	jne	.L1043
	test	edi, 1024
	jne	.L1044
	test	edi, 2048
	jne	.L1045
	test	edi, 4096
	jne	.L1046
	test	edi, 8192
	jne	.L1047
	test	edi, 16384
	jne	.L1048
	xor	eax, eax
	and	edi, 32768
	sete	al
	add	eax, 15
	ret
.L1034:
	xor	eax, eax
	ret
.L1035:
	mov	eax, 1
	ret
.L1046:
	mov	eax, 12
	ret
.L1036:
	mov	eax, 2
	ret
.L1037:
	mov	eax, 3
	ret
.L1038:
	mov	eax, 4
	ret
.L1039:
	mov	eax, 5
	ret
.L1040:
	mov	eax, 6
	ret
.L1041:
	mov	eax, 7
	ret
.L1042:
	mov	eax, 8
	ret
.L1043:
	mov	eax, 9
	ret
.L1044:
	mov	eax, 10
	ret
.L1045:
	mov	eax, 11
	ret
.L1047:
	mov	eax, 13
	ret
.L1048:
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
	comiss	xmm0, DWORD PTR .LC21[rip]
	jnb	.L1056
	cvttss2si	rax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L1056:
	subss	xmm0, DWORD PTR .LC21[rip]
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
	sar	eax
	sar	ecx, 2
	and	eax, 1
	and	ecx, 1
	add	eax, edi
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
	sar	eax
	sar	ecx, 2
	and	eax, 1
	and	ecx, 1
	add	eax, edi
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
	je	.L1059
	.p2align 5
	.p2align 4
	.p2align 3
.L1061:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L1061
.L1059:
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
	je	.L1064
	test	esi, esi
	je	.L1064
	.p2align 5
	.p2align 4
	.p2align 3
.L1066:
	mov	eax, esi
	and	eax, 1
	neg	eax
	and	eax, edi
	add	edi, edi
	add	edx, eax
	shr	esi
	jne	.L1066
.L1064:
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
	mov	eax, 1
	cmp	esi, edi
	jb	.L1072
	jmp	.L1073
	.p2align 4,,10
	.p2align 3
.L1075:
	add	esi, esi
	add	eax, eax
	cmp	esi, edi
	jnb	.L1074
	test	eax, eax
	je	.L1074
.L1072:
	test	esi, esi
	jns	.L1075
.L1073:
	xor	ecx, ecx
	.p2align 4
	.p2align 4
	.p2align 3
.L1078:
	cmp	edi, esi
	jb	.L1077
	sub	edi, esi
	or	ecx, eax
.L1077:
	shr	esi
	shr	eax
	jne	.L1078
	test	edx, edx
	cmovne	ecx, edi
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1074:
	xor	ecx, ecx
	test	eax, eax
	jne	.L1073
	test	edx, edx
	cmovne	ecx, edi
	mov	eax, ecx
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
	ja	.L1093
	xor	eax, eax
	comiss	xmm0, xmm1
	seta	al
.L1093:
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
	ja	.L1096
	xor	eax, eax
	comisd	xmm0, xmm1
	seta	al
.L1096:
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
	js	.L1110
	je	.L1106
	xor	r9d, r9d
.L1103:
	mov	edx, 1
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L1105:
	mov	eax, esi
	and	eax, 1
	neg	eax
	and	eax, edi
	add	edi, edi
	add	ecx, eax
	sar	esi
	setne	r8b
	cmp	dl, 32
	setne	al
	add	edx, 1
	test	r8b, al
	jne	.L1105
	mov	eax, ecx
	neg	eax
	test	r9d, r9d
	cmovne	ecx, eax
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1110:
	neg	esi
	mov	r9d, 1
	jmp	.L1103
	.p2align 4,,10
	.p2align 3
.L1106:
	xor	ecx, ecx
	mov	eax, ecx
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
	xor	r9d, r9d
	test	rdi, rdi
	jns	.L1112
	neg	rdi
	xor	eax, eax
	mov	r9d, 1
.L1112:
	test	rsi, rsi
	jns	.L1113
	neg	rsi
	mov	r9d, eax
.L1113:
	mov	edx, esi
	mov	r8d, edi
	mov	ecx, 1
	cmp	esi, edi
	jb	.L1114
	jmp	.L1115
	.p2align 4,,10
	.p2align 3
.L1118:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, r8d
	jnb	.L1124
	test	ecx, ecx
	je	.L1133
.L1114:
	test	edx, edx
	jns	.L1118
.L1115:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1120:
	cmp	r8d, edx
	jb	.L1119
	sub	r8d, edx
	or	eax, ecx
.L1119:
	shr	edx
	shr	ecx
	jne	.L1120
	mov	rdx, rax
	neg	rdx
	test	r9d, r9d
	cmovne	rax, rdx
	ret
	.p2align 4,,10
	.p2align 3
.L1124:
	test	ecx, ecx
	jne	.L1115
.L1133:
	xor	eax, eax
	mov	rdx, rax
	neg	rdx
	test	r9d, r9d
	cmovne	rax, rdx
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
	jns	.L1135
	neg	rdi
	mov	r8d, 1
.L1135:
	mov	rax, rsi
	mov	ecx, 1
	neg	rax
	cmovns	rsi, rax
	mov	eax, edi
	mov	edx, esi
	cmp	esi, edi
	jb	.L1136
	jmp	.L1142
	.p2align 4,,10
	.p2align 3
.L1140:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	.L1146
	test	ecx, ecx
	je	.L1139
.L1136:
	test	edx, edx
	jns	.L1140
	.p2align 4
	.p2align 4
	.p2align 3
.L1142:
	mov	esi, eax
	sub	esi, edx
	cmp	eax, edx
	cmovnb	rax, rsi
	shr	edx
	shr	ecx
	jne	.L1142
.L1139:
	mov	rdx, rax
	neg	rdx
	test	r8d, r8d
	cmovne	rax, rdx
	ret
	.p2align 4,,10
	.p2align 3
.L1146:
	test	ecx, ecx
	je	.L1139
	mov	esi, eax
	sub	esi, edx
	cmp	eax, edx
	cmovnb	rax, rsi
	shr	edx
	shr	ecx
	jne	.L1142
	jmp	.L1139
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
	mov	r8d, edi
	mov	eax, esi
	mov	ecx, 1
	cmp	si, di
	jb	.L1157
	jmp	.L1212
	.p2align 4,,10
	.p2align 3
.L1160:
	lea	esi, [rax+rax]
	lea	edx, [rcx+rcx]
	cmp	si, r8w
	jnb	.L1159
	test	dx, dx
	je	.L1159
	mov	ecx, edx
	mov	eax, esi
.L1157:
	test	ax, ax
	jns	.L1160
	xor	edx, edx
	cmp	di, ax
	jb	.L1183
	mov	r8d, edi
	mov	edx, ecx
	sub	r8d, eax
.L1183:
	mov	edi, eax
	mov	r9d, ecx
	shr	di
	shr	r9w
	je	.L1200
.L1164:
	cmp	r8w, di
	jb	.L1165
	sub	r8d, edi
	or	edx, r9d
.L1165:
	mov	esi, eax
	mov	edi, ecx
	shr	si, 2
	shr	di, 2
	je	.L1200
	cmp	r8w, si
	jb	.L1166
	sub	r8d, esi
	or	edx, edi
.L1166:
	mov	esi, eax
	mov	edi, ecx
	shr	si, 3
	shr	di, 3
	je	.L1200
	cmp	r8w, si
	jb	.L1167
	sub	r8d, esi
	or	edx, edi
.L1167:
	mov	esi, eax
	mov	edi, ecx
	shr	si, 4
	shr	di, 4
	je	.L1200
	cmp	r8w, si
	jb	.L1168
	sub	r8d, esi
	or	edx, edi
.L1168:
	mov	esi, eax
	mov	edi, ecx
	shr	si, 5
	shr	di, 5
	je	.L1200
	cmp	r8w, si
	jb	.L1169
	sub	r8d, esi
	or	edx, edi
.L1169:
	mov	esi, eax
	mov	edi, ecx
	shr	si, 6
	shr	di, 6
	je	.L1200
	cmp	r8w, si
	jb	.L1170
	sub	r8d, esi
	or	edx, edi
.L1170:
	mov	esi, eax
	mov	edi, ecx
	shr	si, 7
	shr	di, 7
	je	.L1200
	cmp	r8w, si
	jnb	.L1213
.L1171:
	mov	esi, eax
	mov	edi, ecx
	shr	si, 8
	shr	di, 8
	je	.L1200
	cmp	r8w, si
	jnb	.L1214
.L1172:
	mov	esi, eax
	mov	edi, ecx
	shr	si, 9
	shr	di, 9
	je	.L1200
	cmp	r8w, si
	jnb	.L1215
.L1173:
	mov	esi, eax
	mov	edi, ecx
	shr	si, 10
	shr	di, 10
	je	.L1200
	cmp	r8w, si
	jnb	.L1216
.L1174:
	mov	esi, eax
	mov	edi, ecx
	shr	si, 11
	shr	di, 11
	je	.L1200
	cmp	r8w, si
	jnb	.L1217
.L1175:
	mov	esi, eax
	mov	edi, ecx
	shr	si, 12
	shr	di, 12
	je	.L1200
	cmp	r8w, si
	jb	.L1176
	sub	r8d, esi
	or	edx, edi
.L1176:
	mov	esi, eax
	mov	edi, ecx
	shr	si, 13
	shr	di, 13
	je	.L1200
	cmp	r8w, si
	jb	.L1177
	sub	r8d, esi
	or	edx, edi
.L1177:
	mov	esi, eax
	mov	edi, ecx
	shr	si, 14
	shr	di, 14
	je	.L1200
	cmp	r8w, si
	jb	.L1178
	sub	r8d, esi
	or	edx, edi
.L1178:
	shr	ax, 15
	test	cx, cx
	jns	.L1200
	xor	r9d, r9d
	cmp	r8w, ax
	jb	.L1162
	mov	r9d, r8d
	or	edx, 1
	sub	r9d, eax
	jmp	.L1162
	.p2align 4,,10
	.p2align 3
.L1200:
	mov	r9d, r8d
.L1162:
	test	r10d, r10d
	cmove	r9d, edx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L1159:
	mov	r9d, edi
	test	dx, dx
	je	.L1162
	cmp	di, si
	jb	.L1163
	mov	r8d, edi
	and	cx, 32767
	and	ax, 32767
	mov	r9d, ecx
	mov	edi, eax
	sub	r8d, esi
	mov	eax, esi
	mov	ecx, edx
	jmp	.L1164
	.p2align 4,,10
	.p2align 3
.L1213:
	sub	r8d, esi
	or	edx, edi
	jmp	.L1171
	.p2align 4,,10
	.p2align 3
.L1163:
	and	cx, 32767
	and	ax, 32767
	mov	r9d, ecx
	mov	edi, eax
	mov	ecx, edx
	mov	eax, esi
	xor	edx, edx
	jmp	.L1164
	.p2align 4,,10
	.p2align 3
.L1214:
	sub	r8d, esi
	or	edx, edi
	jmp	.L1172
	.p2align 4,,10
	.p2align 3
.L1215:
	sub	r8d, esi
	or	edx, edi
	jmp	.L1173
	.p2align 4,,10
	.p2align 3
.L1216:
	sub	r8d, esi
	or	edx, edi
	jmp	.L1174
	.p2align 4,,10
	.p2align 3
.L1217:
	sub	r8d, esi
	or	edx, edi
	jmp	.L1175
.L1212:
	sete	dl
	mov	r9d, 0
	cmovne	r9d, edi
	movzx	edx, dl
	jmp	.L1162
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	mov	eax, 1
	cmp	rsi, rdi
	jb	.L1219
	jmp	.L1220
	.p2align 4,,10
	.p2align 3
.L1222:
	add	rsi, rsi
	add	rax, rax
	cmp	rsi, rdi
	jnb	.L1221
	test	rax, rax
	je	.L1221
.L1219:
	test	esi, 2147483648
	je	.L1222
.L1220:
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L1225:
	cmp	rdi, rsi
	jb	.L1224
	sub	rdi, rsi
	or	rcx, rax
.L1224:
	shr	rsi
	shr	rax
	jne	.L1225
	test	edx, edx
	cmovne	rcx, rdi
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L1221:
	xor	ecx, ecx
	test	rax, rax
	jne	.L1220
	test	edx, edx
	cmovne	rcx, rdi
	mov	rax, rcx
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
	je	.L1241
	lea	ecx, [rsi-32]
	xor	eax, eax
	sal	edi, cl
.L1242:
	sal	rdi, 32
	or	rax, rdi
.L1240:
	ret
	.p2align 4,,10
	.p2align 3
.L1241:
	mov	rax, rdi
	test	esi, esi
	je	.L1240
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
	jmp	.L1242
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
	je	.L1247
	lea	ecx, [rdx-64]
	xor	eax, eax
	sal	rdi, cl
	mov	rdx, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1247:
	mov	rax, rdi
	test	edx, edx
	je	.L1250
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
.L1250:
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
	je	.L1252
	sar	rdi, 32
	lea	ecx, [rsi-32]
	mov	eax, edi
	sar	edi, cl
	sar	eax, 31
.L1253:
	sal	rax, 32
	or	rax, rdi
.L1251:
	ret
	.p2align 4,,10
	.p2align 3
.L1252:
	mov	rax, rdi
	test	esi, esi
	je	.L1251
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
	jmp	.L1253
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
	je	.L1258
	lea	ecx, [rdx-64]
	mov	r8, rsi
	sar	r8, 63
	sar	rsi, cl
	mov	rax, rsi
	mov	rdx, r8
	ret
	.p2align 4,,10
	.p2align 3
.L1258:
	test	edx, edx
	je	.L1261
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
.L1261:
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
	sal	eax, 3
	sub	ecx, eax
	add	edx, eax
	xor	eax, eax
	shr	edi, cl
	mov	ecx, 4
	test	dil, -16
	sete	al
	sal	eax, 2
	sub	ecx, eax
	lea	esi, [rax+rdx]
	xor	edx, edx
	mov	eax, 2
	shr	edi, cl
	mov	ecx, eax
	test	dil, 12
	sete	dl
	add	edx, edx
	sub	ecx, edx
	shr	edi, cl
	xor	ecx, ecx
	sub	eax, edi
	and	edi, 2
	cmovne	eax, ecx
	add	edx, esi
	add	eax, edx
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
	movsx	rdi, edi
	and	rdi, rsi
	test	rsi, rsi
	cmovne	rdx, rcx
	or	rdi, rdx
	bsr	rdi, rdi
	sal	eax, 6
	xor	rdi, 63
	add	eax, edi
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
	jl	.L1266
	mov	eax, 2
	jg	.L1266
	xor	eax, eax
	cmp	edi, esi
	jb	.L1266
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L1266:
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
	jl	.L1272
	mov	eax, 1
	jg	.L1272
	mov	eax, -1
	cmp	edi, esi
	jb	.L1272
	xor	eax, eax
	cmp	esi, edi
	setb	al
.L1272:
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
	jl	.L1277
	mov	eax, 2
	jg	.L1277
	xor	eax, eax
	cmp	rdi, rdx
	jb	.L1277
	xor	eax, eax
	cmp	rdx, rdi
	setb	al
	add	eax, 1
.L1277:
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
	mov	rdx, rsi
	test	rdi, rdi
	mov	rcx, rdi
	cmovne	rdx, rax
	sete	al
	movzx	eax, al
	lea	edi, [rax-1]
	sal	eax, 6
	movsx	rdi, edi
	and	rdi, rcx
	or	rdx, rdi
	rep bsf	rdx, rdx
	add	eax, edx
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
	jne	.L1286
	xor	eax, eax
	xor	edx, edx
	rep bsf	rax, rsi
	add	eax, 65
	test	rsi, rsi
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1286:
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
	je	.L1290
	shr	rdi, 32
	lea	ecx, [rsi-32]
	xor	eax, eax
	shr	edi, cl
.L1291:
	sal	rax, 32
	or	rax, rdi
.L1289:
	ret
	.p2align 4,,10
	.p2align 3
.L1290:
	mov	rax, rdi
	test	esi, esi
	je	.L1289
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
	jmp	.L1291
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
	je	.L1296
	lea	ecx, [rdx-64]
	xor	r8d, r8d
	shr	rsi, cl
	mov	rdx, r8
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1296:
	test	edx, edx
	je	.L1299
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
.L1299:
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
	movzx	ecx, cx
	shr	r8d, 16
	add	eax, r8d
	movzx	r8d, ax
	shr	eax, 16
	add	edx, r8d
	add	eax, edi
	mov	r8d, edx
	shr	edx, 16
	add	edx, eax
	sal	r8d, 16
	mov	edx, edx
	lea	eax, [rcx+r8]
	sal	rdx, 32
	or	rax, rdx
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
	imul	esi, eax
	imul	eax, r8d
	mov	r9d, esi
	movzx	esi, si
	shr	r9d, 16
	add	eax, r9d
	mov	r9d, ecx
	shr	r9d, 16
	movzx	r10d, ax
	shr	eax, 16
	imul	edx, r9d
	imul	r8d, r9d
	add	edx, r10d
	add	eax, r8d
	mov	r10d, edx
	shr	edx, 16
	add	edx, eax
	sal	r10d, 16
	mov	edx, edx
	lea	eax, [rsi+r10]
	sal	rdx, 32
	or	rax, rdx
	mov	rdx, rcx
	sar	rdx, 32
	mov	rsi, rax
	mov	eax, eax
	imul	edx, edi
	sar	rdi, 32
	sar	rsi, 32
	imul	ecx, edi
	add	edx, esi
	add	edx, ecx
	mov	edx, edx
	sal	rdx, 32
	or	rax, rdx
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
	mov	ecx, ecx
	shr	r8, 32
	add	rax, r8
	mov	r8d, eax
	shr	rax, 32
	add	rdx, r8
	add	rax, rdi
	mov	r8, rdx
	shr	rdx, 32
	sal	r8, 32
	add	rax, rdx
	add	rcx, r8
	mov	rdx, rax
	mov	rax, rcx
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
	mov	r9, rsi
	mov	esi, edx
	mov	rdi, rax
	mov	r10, r8
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	imul	rdi, rsi
	shr	r10, 32
	imul	rsi, r10
	imul	r8, rcx
	mov	r11, rdi
	mov	edi, edi
	shr	r11, 32
	add	rsi, r11
	mov	r11, rdx
	shr	r11, 32
	imul	rdx, r9
	mov	ebx, esi
	shr	rsi, 32
	imul	rax, r11
	imul	r10, r11
	add	rax, rbx
	mov	rbx, rax
	add	rsi, r10
	shr	rax, 32
	add	rsi, rax
	sal	rbx, 32
	add	r8, rsi
	add	rdi, rbx
	pop	rbx
	.cfi_def_cfa_offset 8
	add	r8, rdx
	mov	rax, rdi
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
	mov	eax, edi
	shr	eax, 16
	xor	eax, edi
	mov	edi, eax
	shr	edi, 8
	xor	edi, eax
	mov	eax, 27030
	mov	ecx, edi
	shr	ecx, 4
	xor	ecx, edi
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
	shr	rax
	and	rax, rdx
	sub	rdi, rax
	movabs	rax, 3689348814741910323
	mov	rdx, rdi
	and	rdi, rax
	shr	rdx, 2
	and	rdx, rax
	add	rdx, rdi
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
	mov	rax, rsi
	mov	rdx, rdi
	shrd	rax, rdi, 1
	shr	rdx
	and	rax, r8
	and	rdx, r8
	movabs	r8, 3689348814741910323
	sub	rsi, rax
	sbb	rdi, rdx
	mov	rax, rsi
	and	rsi, r8
	shrd	rax, rdi, 2
	mov	rdx, rdi
	and	rdi, r8
	and	rax, r8
	shr	rdx, 2
	and	rdx, r8
	add	rsi, rax
	adc	rdi, rdx
	mov	rax, rsi
	mov	rdx, rdi
	shrd	rax, rdi, 4
	shr	rdx, 4
	add	rax, rsi
	movabs	rsi, 1085102592571150095
	adc	rdx, rdi
	mov	rdi, rsi
	and	rsi, rax
	and	rdi, rdx
	mov	rdx, rdi
	add	rdx, rsi
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
	je	.L1314
	.p2align 4
	.p2align 3
.L1316:
	mulsd	xmm1, xmm0
.L1314:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1315
	mulsd	xmm0, xmm0
	test	al, 1
	jne	.L1316
.L1320:
	mulsd	xmm0, xmm0
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1316
	jmp	.L1320
	.p2align 4,,10
	.p2align 3
.L1315:
	test	edi, edi
	jns	.L1313
	divsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L1313:
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
	movss	xmm2, DWORD PTR .LC22[rip]
	mov	eax, edi
	movaps	xmm1, xmm2
	test	dil, 1
	je	.L1322
	.p2align 4
	.p2align 3
.L1324:
	mulss	xmm1, xmm0
.L1322:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1323
	mulss	xmm0, xmm0
	test	al, 1
	jne	.L1324
.L1328:
	mulss	xmm0, xmm0
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1324
	jmp	.L1328
	.p2align 4,,10
	.p2align 3
.L1323:
	test	edi, edi
	jns	.L1321
	divss	xmm2, xmm1
	movaps	xmm1, xmm2
.L1321:
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
	jb	.L1329
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1329
	xor	eax, eax
	cmp	edi, esi
	jb	.L1329
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L1329:
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
	jb	.L1335
	mov	eax, 1
	cmp	ecx, edx
	jb	.L1335
	mov	eax, -1
	cmp	edi, esi
	jb	.L1335
	xor	eax, eax
	cmp	esi, edi
	setb	al
.L1335:
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
	jb	.L1340
	mov	eax, 2
	cmp	rcx, rsi
	jb	.L1340
	xor	eax, eax
	cmp	rdi, rdx
	jb	.L1340
	xor	eax, eax
	cmp	rdx, rdi
	setb	al
	add	eax, 1
.L1340:
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
	.align 8
.LC20:
	.long	0
	.long	1070596096
	.section	.rodata.cst4
	.align 4
.LC21:
	.long	1191182336
	.align 4
.LC22:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
