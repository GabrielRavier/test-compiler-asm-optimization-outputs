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
	mov	rcx, rdi
	cmp	rsi, rdi
	jnb	.L5
	test	rdx, rdx
	je	.L6
	lea	r11, [rdx-1]
	cmp	r11, 30
	jbe	.L52
	lea	rax, [rsi-2+rdx]
	sub	rdi, rax
	lea	r8, [rdi+62+r11]
	cmp	r8, 62
	jbe	.L52
	lea	r8, [rsi+rdx]
	lea	rdi, [rcx+rdx]
	cmp	r11, 62
	jbe	.L26
	mov	r10, rdx
	lea	r9, [rdx-64]
	xor	eax, eax
	and	r10, -64
	lea	r11, [rsi+r9]
	add	r9, rcx
	neg	r10
	.p2align 5
	.p2align 4
	.p2align 3
.L9:
	vmovdqu8	zmm2, ZMMWORD PTR [r11+rax]
	vmovdqu8	ZMMWORD PTR [r9+rax], zmm2
	sub	rax, 64
	cmp	rax, r10
	jne	.L9
	mov	r10, rdx
	add	r8, rax
	add	rdi, rax
	and	r10d, 63
	and	edx, 63
	je	.L56
	lea	r9, [r10-1]
	mov	rdx, r10
	cmp	r9, 30
	jbe	.L11
.L8:
	vmovdqu8	ymm3, YMMWORD PTR [rsi-32+rdx]
	mov	rsi, rdx
	and	rsi, -32
	vmovdqu8	YMMWORD PTR [rcx-32+rdx], ymm3
	sub	r8, rsi
	sub	rdi, rsi
	sub	r10, rsi
	and	edx, 31
	je	.L56
.L11:
	sub	r8, r10
	sub	rdi, r10
	.p2align 5
	.p2align 4
	.p2align 3
.L13:
	movzx	edx, BYTE PTR [r8-1+r10]
	mov	BYTE PTR [rdi-1+r10], dl
	sub	r10, 1
	jne	.L13
.L56:
	vzeroupper
.L6:
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	cmp	rdi, rsi
	je	.L6
	test	rdx, rdx
	je	.L6
	lea	rax, [rdx-1]
	cmp	rax, 30
	jbe	.L28
	lea	r8, [rsi+1]
	sub	rdi, r8
	cmp	rdi, 62
	jbe	.L28
	cmp	rax, 62
	jbe	.L29
	mov	r8, rdx
	xor	eax, eax
	and	r8, -64
	.p2align 5
	.p2align 4
	.p2align 3
.L18:
	vmovdqu8	zmm0, ZMMWORD PTR [rsi+rax]
	vmovdqu8	ZMMWORD PTR [rcx+rax], zmm0
	add	rax, 64
	cmp	rax, r8
	jne	.L18
	mov	r11, rdx
	lea	r10, [rsi+r8]
	lea	r9, [rcx+r8]
	sub	r11, r8
	cmp	rdx, r8
	je	.L56
	lea	rdi, [r11-1]
	mov	rdx, r11
	cmp	rdi, 30
	jbe	.L21
.L17:
	vmovdqu8	ymm1, YMMWORD PTR [rsi+r8]
	mov	rsi, rdx
	and	rsi, -32
	add	r10, rsi
	add	r9, rsi
	sub	r11, rsi
	and	edx, 31
	vmovdqu8	YMMWORD PTR [rcx+r8], ymm1
	je	.L56
.L21:
	xor	r8d, r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L23:
	movzx	edx, BYTE PTR [r10+r8]
	mov	BYTE PTR [r9+r8], dl
	add	r8, 1
	cmp	r8, r11
	jne	.L23
	vzeroupper
	jmp	.L6
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L57:
	sub	r11, 1
.L52:
	movzx	r8d, BYTE PTR [rsi-1+rdx]
	mov	BYTE PTR [rcx-1+rdx], r8b
	mov	rdx, r11
	test	r11, r11
	jne	.L57
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L28:
	xor	r10d, r10d
	.p2align 5
	.p2align 4
	.p2align 3
.L51:
	movzx	r9d, BYTE PTR [rsi+r10]
	mov	BYTE PTR [rcx+r10], r9b
	add	r10, 1
	cmp	rdx, r10
	jne	.L51
	jmp	.L6
.L26:
	mov	r10, rdx
	jmp	.L8
.L29:
	mov	r10, rsi
	mov	r9, rcx
	mov	r11, rdx
	xor	r8d, r8d
	jmp	.L17
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
	jne	.L59
	jmp	.L61
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L62:
	add	rsi, 1
	add	rdi, 1
	sub	rcx, 1
	je	.L61
.L59:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rdi], r8b
	cmp	r8d, edx
	jne	.L62
	lea	rax, [rdi+1]
	ret
	.p2align 4,,10
	.p2align 3
.L61:
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
	jne	.L70
	jmp	.L73
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L72:
	add	rdi, 1
	sub	rdx, 1
	je	.L73
.L70:
	movzx	eax, BYTE PTR [rdi]
	cmp	eax, esi
	jne	.L72
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L73:
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
	jne	.L78
	jmp	.L82
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L80:
	add	rdi, 1
	add	rsi, 1
	sub	rdx, 1
	je	.L82
.L78:
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rdi], al
	je	.L80
	movzx	eax, BYTE PTR [rdi]
	movzx	edx, BYTE PTR [rsi]
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L82:
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
	je	.L94
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	call	memcpy
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L94:
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
	jmp	.L98
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L100:
	mov	rdx, rax
	sub	rax, 1
	movzx	ecx, BYTE PTR [rdx]
	cmp	ecx, esi
	je	.L97
.L98:
	cmp	rdi, rax
	jne	.L100
	xor	edx, edx
.L97:
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
	je	.L106
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	movzx	esi, sil
	call	memset
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L106:
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
	je	.L110
	.p2align 5
	.p2align 4
	.p2align 3
.L111:
	movzx	ecx, BYTE PTR [rsi+1]
	add	rsi, 1
	add	rax, 1
	mov	BYTE PTR [rax], cl
	test	cl, cl
	jne	.L111
.L110:
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
	jne	.L117
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L119:
	movzx	edx, BYTE PTR [rax+1]
	add	rax, 1
	test	dl, dl
	je	.L116
.L117:
	cmp	edx, esi
	jne	.L119
.L116:
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
	jmp	.L126
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L129:
	add	rax, 1
	test	cl, cl
	je	.L128
.L126:
	movsx	ecx, BYTE PTR [rax]
	cmp	ecx, esi
	jne	.L129
	ret
	.p2align 4,,10
	.p2align 3
.L128:
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
	je	.L131
	jmp	.L139
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L133:
	movzx	edx, BYTE PTR [rdi+rax]
	add	rax, 1
	movzx	ecx, BYTE PTR [rsi-1+rax]
	cmp	dl, cl
	jne	.L139
.L131:
	test	dl, dl
	jne	.L133
	xor	eax, eax
	sub	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L139:
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
	je	.L143
	mov	rax, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L142:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L142
	sub	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L143:
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
	je	.L145
	movzx	eax, BYTE PTR [rdi]
	sub	rdx, 1
	mov	rcx, rsi
	lea	r8, [rsi+rdx]
	test	al, al
	jne	.L149
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L164:
	cmp	rcx, r8
	je	.L148
	movzx	eax, BYTE PTR [rdi+1]
	add	rdi, 1
	lea	r10, [rcx+1]
	test	al, al
	je	.L163
	mov	rcx, r10
.L149:
	movzx	edx, BYTE PTR [rcx]
	test	dl, dl
	setne	r9b
	cmp	dl, al
	sete	sil
	test	r9b, sil
	jne	.L164
.L148:
	sub	eax, edx
.L145:
	ret
	.p2align 4,,10
	.p2align 3
.L163:
	movzx	edx, BYTE PTR [rcx+1]
	xor	eax, eax
	sub	eax, edx
	ret
.L162:
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
	mov	r8, rdi
	mov	rdi, rsi
	cmp	rdx, 1
	jle	.L192
	mov	r10, rdx
	lea	rax, [rdx-2]
	shr	r10
	lea	r9, [r10-1]
	cmp	rax, 61
	jbe	.L172
	mov	r11, rdx
	mov	rsi, rdx
	xor	eax, eax
	vmovdqa64	zmm1, ZMMWORD PTR .LC0[rip]
	shr	r11, 6
	and	rsi, -64
	.p2align 5
	.p2align 4
	.p2align 3
.L168:
	vmovdqu8	zmm0, ZMMWORD PTR [r8+rax]
	vpshufb	zmm2, zmm0, zmm1
	vmovdqu8	ZMMWORD PTR [rdi+rax], zmm2
	add	rax, 64
	cmp	rax, rsi
	jne	.L168
	mov	rcx, r11
	mov	rax, r11
	sal	rcx, 5
	sal	rax, 6
	mov	r11, rcx
	lea	rsi, [rdi+rax]
	add	rax, r8
	neg	r11
	lea	rdx, [rdx+r11*2]
	cmp	rcx, r10
	je	.L191
.L167:
	sub	r9, rcx
	lea	r10, [r9+1]
	cmp	r9, 14
	jbe	.L170
	vmovdqu8	ymm3, YMMWORD PTR [r8+rcx*2]
	mov	r8, r10
	and	r8, -16
	vpshufb	ymm4, ymm3, YMMWORD PTR .LC1[rip]
	vmovdqu8	YMMWORD PTR [rdi+rcx*2], ymm4
	lea	rdi, [r8+r8]
	neg	r8
	add	rsi, rdi
	add	rax, rdi
	lea	rdx, [rdx+r8*2]
	and	r10d, 15
	je	.L191
.L170:
	movbe	r9w, WORD PTR [rax]
	mov	WORD PTR [rsi], r9w
	cmp	rdx, 3
	jle	.L191
	movbe	cx, WORD PTR [rax+2]
	mov	WORD PTR [rsi+2], cx
	cmp	rdx, 5
	jle	.L191
	movbe	r11w, WORD PTR [rax+4]
	mov	WORD PTR [rsi+4], r11w
	cmp	rdx, 7
	jle	.L191
	movbe	r10w, WORD PTR [rax+6]
	mov	WORD PTR [rsi+6], r10w
	cmp	rdx, 9
	jle	.L191
	movbe	r8w, WORD PTR [rax+8]
	mov	WORD PTR [rsi+8], r8w
	cmp	rdx, 11
	jle	.L191
	movbe	di, WORD PTR [rax+10]
	mov	WORD PTR [rsi+10], di
	cmp	rdx, 13
	jle	.L191
	movbe	r9w, WORD PTR [rax+12]
	mov	WORD PTR [rsi+12], r9w
	cmp	rdx, 15
	jle	.L191
	movbe	cx, WORD PTR [rax+14]
	mov	WORD PTR [rsi+14], cx
	cmp	rdx, 17
	jle	.L191
	movbe	r11w, WORD PTR [rax+16]
	mov	WORD PTR [rsi+16], r11w
	cmp	rdx, 19
	jle	.L191
	movbe	r10w, WORD PTR [rax+18]
	mov	WORD PTR [rsi+18], r10w
	cmp	rdx, 21
	jle	.L191
	movbe	r8w, WORD PTR [rax+20]
	mov	WORD PTR [rsi+20], r8w
	cmp	rdx, 23
	jle	.L191
	movbe	di, WORD PTR [rax+22]
	mov	WORD PTR [rsi+22], di
	cmp	rdx, 25
	jle	.L191
	movbe	r9w, WORD PTR [rax+24]
	mov	WORD PTR [rsi+24], r9w
	cmp	rdx, 27
	jle	.L191
	movbe	cx, WORD PTR [rax+26]
	mov	WORD PTR [rsi+26], cx
	cmp	rdx, 29
	jle	.L191
	movbe	dx, WORD PTR [rax+28]
	mov	WORD PTR [rsi+28], dx
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L191:
	vzeroupper
.L192:
	ret
.L172:
	mov	rax, r8
	xor	ecx, ecx
	jmp	.L167
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
	jbe	.L205
	cmp	edi, 31
	jbe	.L205
	lea	edx, [rdi-8232]
	mov	eax, 1
	cmp	edx, 1
	jbe	.L203
	sub	edi, 65529
	xor	eax, eax
	cmp	edi, 2
	setbe	al
	ret
	.p2align 4,,10
	.p2align 3
.L205:
	mov	eax, 1
.L203:
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
	jbe	.L214
	lea	eax, [rdi-8234]
	cmp	eax, 47061
	jbe	.L211
	cmp	edi, 8231
	jbe	.L211
	lea	edx, [rdi-57344]
	mov	eax, 1
	cmp	edx, 8184
	jbe	.L208
	lea	ecx, [rdi-65532]
	xor	eax, eax
	cmp	ecx, 1048579
	ja	.L208
	not	edi
	xor	eax, eax
	and	edi, 65534
	setne	al
	ret
	.p2align 4,,10
	.p2align 3
.L211:
	mov	eax, 1
.L208:
	ret
	.p2align 4,,10
	.p2align 3
.L214:
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
	jbe	.L215
	or	edi, 32
	xor	eax, eax
	sub	edi, 97
	cmp	edi, 5
	setbe	al
.L215:
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
	vucomisd	xmm0, xmm0
	jp	.L219
	vucomisd	xmm1, xmm1
	jp	.L223
	vcomisd	xmm0, xmm1
	jbe	.L226
	vsubsd	xmm0, xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L226:
	vxorpd	xmm0, xmm0, xmm0
.L219:
	ret
	.p2align 4,,10
	.p2align 3
.L223:
	vmovapd	xmm0, xmm1
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
	vucomiss	xmm0, xmm0
	jp	.L227
	vucomiss	xmm1, xmm1
	jp	.L231
	vcomiss	xmm0, xmm1
	jbe	.L234
	vsubss	xmm0, xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L234:
	vxorps	xmm0, xmm0, xmm0
.L227:
	ret
	.p2align 4,,10
	.p2align 3
.L231:
	vmovaps	xmm0, xmm1
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
	vucomisd	xmm0, xmm0
	jp	.L235
	vucomisd	xmm1, xmm1
	jp	.L241
	vmovmskpd	eax, xmm0
	vmovmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L237
	test	eax, eax
	jne	.L235
.L241:
	vmovapd	xmm1, xmm0
.L235:
	vmovapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L237:
	vmaxsd	xmm1, xmm1, xmm0
	vmovapd	xmm0, xmm1
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
	vucomiss	xmm0, xmm0
	jp	.L244
	vucomiss	xmm1, xmm1
	jp	.L250
	vmovd	eax, xmm0
	vmovd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L246
	test	eax, eax
	jne	.L244
.L250:
	vmovaps	xmm1, xmm0
.L244:
	vmovaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L246:
	vmaxss	xmm1, xmm1, xmm0
	vmovaps	xmm0, xmm1
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
	jp	.L258
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L261
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
	je	.L255
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L258:
	fstp	st(0)
	jmp	.L253
	.p2align 4,,10
	.p2align 3
.L261:
	fstp	st(0)
.L253:
	ret
	.p2align 4,,10
	.p2align 3
.L255:
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
	vucomisd	xmm0, xmm0
	jp	.L267
	vucomisd	xmm1, xmm1
	jp	.L262
	vmovmskpd	eax, xmm0
	vmovmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L264
	test	eax, eax
	jne	.L262
.L267:
	vmovapd	xmm0, xmm1
.L262:
	ret
	.p2align 4,,10
	.p2align 3
.L264:
	vminsd	xmm0, xmm0, xmm1
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
	vucomiss	xmm0, xmm0
	jp	.L276
	vucomiss	xmm1, xmm1
	jp	.L271
	vmovd	eax, xmm0
	vmovd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L273
	test	eax, eax
	jne	.L271
.L276:
	vmovaps	xmm0, xmm1
.L271:
	ret
	.p2align 4,,10
	.p2align 3
.L273:
	vminss	xmm0, xmm0, xmm1
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
	jp	.L288
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L286
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
	je	.L282
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L286:
	fstp	st(0)
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L288:
	fstp	st(0)
.L280:
	ret
	.p2align 4,,10
	.p2align 3
.L282:
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
	je	.L290
	.p2align 5
	.p2align 4
	.p2align 3
.L291:
	mov	ecx, eax
	add	rdx, 1
	and	ecx, 63
	movzx	esi, BYTE PTR digits[rcx]
	mov	BYTE PTR [rdx-1], sil
	shr	eax, 6
	jne	.L291
.L290:
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
	bextr	rax, rax, 7969
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
	je	.L303
	vmovq	xmm1, QWORD PTR [rsi]
	vpinsrq	xmm0, xmm1, rsi, 1
	vmovdqu	XMMWORD PTR [rdi], xmm0
	mov	QWORD PTR [rsi], rdi
	mov	rax, QWORD PTR [rdi]
	test	rax, rax
	je	.L302
	mov	QWORD PTR [rax+8], rdi
.L302:
	ret
	.p2align 4,,10
	.p2align 3
.L303:
	vpxor	xmm2, xmm2, xmm2
	vmovdqu	XMMWORD PTR [rdi], xmm2
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
	je	.L305
	mov	rdx, QWORD PTR [rdi+8]
	mov	QWORD PTR [rax+8], rdx
.L305:
	mov	rcx, QWORD PTR [rdi+8]
	test	rcx, rcx
	je	.L313
	mov	QWORD PTR [rcx], rax
.L313:
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
	mov	QWORD PTR [rsp+8], rdi
	mov	QWORD PTR [rsp+24], rsi
	mov	QWORD PTR [rsp+16], rdx
	test	rbp, rbp
	je	.L315
	mov	r13, r8
	mov	r12, rsi
	xor	r15d, r15d
	jmp	.L317
	.p2align 4,,10
	.p2align 3
.L330:
	add	r15, 1
	add	r12, rbx
	cmp	rbp, r15
	je	.L315
.L317:
	mov	rdi, QWORD PTR [rsp+8]
	mov	r14, r12
	mov	rsi, r12
	call	r13
	test	eax, eax
	jne	.L330
.L314:
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
.L315:
	.cfi_restore_state
	lea	rax, [rbp+1]
	mov	rcx, QWORD PTR [rsp+16]
	mov	r14, QWORD PTR [rsp+24]
	imul	rbp, rbx
	mov	QWORD PTR [rcx], rax
	add	r14, rbp
	test	rbx, rbx
	je	.L314
	mov	rsi, QWORD PTR [rsp+8]
	mov	rdx, rbx
	mov	rdi, r14
	call	memmove
	jmp	.L314
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
	je	.L332
	mov	r13, rcx
	mov	r12, r8
	mov	rbx, rsi
	xor	ebp, ebp
	jmp	.L334
	.p2align 4,,10
	.p2align 3
.L343:
	add	rbp, 1
	add	rbx, r13
	cmp	r14, rbp
	je	.L332
.L334:
	mov	rdi, QWORD PTR [rsp+8]
	mov	r15, rbx
	mov	rsi, rbx
	call	r12
	test	eax, eax
	jne	.L343
.L331:
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
.L332:
	.cfi_restore_state
	xor	r15d, r15d
	jmp	.L331
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
	jmp	.L372
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L368:
	add	rdi, 1
.L372:
	movsx	eax, BYTE PTR [rdi]
	lea	ecx, [rax-9]
	mov	edx, eax
	cmp	ecx, 4
	jbe	.L368
	cmp	dl, 32
	je	.L368
	cmp	dl, 43
	je	.L349
	cmp	dl, 45
	jne	.L373
	lea	r8, [rdi+1]
	movsx	edi, BYTE PTR [rdi+1]
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	ja	.L358
	mov	r9d, 1
.L352:
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L355:
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
	jbe	.L355
	sub	eax, r10d
	test	r9d, r9d
	cmovne	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L373:
	sub	eax, 48
	mov	r8, rdi
	xor	r9d, r9d
	cmp	eax, 9
	jbe	.L352
.L358:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L349:
	movsx	esi, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	xor	r9d, r9d
	mov	edx, esi
	sub	esi, 48
	cmp	esi, 9
	jbe	.L352
	jmp	.L358
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.p2align 4
	.globl	atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
	jmp	.L401
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L397:
	add	rdi, 1
.L401:
	movsx	eax, BYTE PTR [rdi]
	lea	ecx, [rax-9]
	mov	edx, eax
	cmp	ecx, 4
	jbe	.L397
	cmp	dl, 32
	je	.L397
	cmp	dl, 43
	je	.L378
	cmp	dl, 45
	jne	.L402
	lea	r8, [rdi+1]
	movsx	edi, BYTE PTR [rdi+1]
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	ja	.L387
	mov	r9d, 1
.L381:
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L384:
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
	jbe	.L384
	sub	rax, r10
	test	r9d, r9d
	cmovne	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L402:
	sub	eax, 48
	mov	r8, rdi
	xor	r9d, r9d
	cmp	eax, 9
	jbe	.L381
.L387:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L378:
	movsx	esi, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	xor	r9d, r9d
	mov	edx, esi
	sub	esi, 48
	cmp	esi, 9
	jbe	.L381
	jmp	.L387
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.p2align 4
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB171:
	.cfi_startproc
	jmp	.L427
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L424:
	add	rdi, 1
.L427:
	movsx	eax, BYTE PTR [rdi]
	lea	ecx, [rax-9]
	mov	edx, eax
	cmp	ecx, 4
	jbe	.L424
	cmp	dl, 32
	je	.L424
	cmp	dl, 43
	je	.L407
	cmp	dl, 45
	je	.L428
	sub	eax, 48
	mov	r8, rdi
	xor	r9d, r9d
	cmp	eax, 9
	ja	.L415
.L409:
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L412:
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
	jbe	.L412
	sub	rax, r10
	test	r9d, r9d
	cmovne	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L428:
	lea	r8, [rdi+1]
	movsx	edi, BYTE PTR [rdi+1]
	mov	r9d, 1
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	jbe	.L409
.L415:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L407:
	movsx	esi, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	mov	edx, esi
	sub	esi, 48
	cmp	esi, 9
	ja	.L415
	xor	r9d, r9d
	jmp	.L409
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
	je	.L430
	mov	r12, rsi
	mov	rbx, rdx
	mov	r13, rcx
	mov	r15, r8
	jmp	.L433
	.p2align 4,,10
	.p2align 3
.L443:
	je	.L429
	sub	rbx, 1
	lea	r12, [rbp+0+r13]
	sub	rbx, r14
	test	rbx, rbx
	je	.L430
.L433:
	mov	r14, rbx
	mov	rdi, QWORD PTR [rsp+8]
	shr	r14
	mov	rbp, r14
	imul	rbp, r13
	add	rbp, r12
	mov	rsi, rbp
	call	r15
	test	eax, eax
	jns	.L443
	mov	rbx, r14
	test	rbx, rbx
	jne	.L433
.L430:
	xor	ebp, ebp
.L429:
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
	je	.L449
	.p2align 4
	.p2align 3
.L457:
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
	je	.L444
	jle	.L447
	lea	r13d, [r13-1]
	lea	rbp, [rbx+r12]
	sar	r13d
	jne	.L457
.L449:
	xor	ebx, ebx
.L444:
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
.L447:
	.cfi_restore_state
	test	r15d, r15d
	je	.L449
	mov	r13d, r15d
	jmp	.L457
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
	jmp	.L476
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L478:
	cmp	esi, eax
	je	.L477
	add	rdi, 4
.L476:
	mov	eax, DWORD PTR [rdi]
	test	eax, eax
	jne	.L478
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L477:
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
	je	.L480
	jmp	.L481
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L482:
	mov	edx, DWORD PTR [rdi+rax]
	add	rax, 4
	mov	ecx, DWORD PTR [rsi-4+rax]
	cmp	edx, ecx
	jne	.L481
.L480:
	test	edx, edx
	jne	.L482
.L481:
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
.L489:
	mov	ecx, DWORD PTR [rsi+rdx]
	mov	DWORD PTR [rax+rdx], ecx
	add	rdx, 4
	test	ecx, ecx
	jne	.L489
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
	je	.L494
	mov	rax, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L493:
	mov	edx, DWORD PTR [rax+4]
	add	rax, 4
	test	edx, edx
	jne	.L493
	sub	rax, rdi
	sar	rax, 2
	ret
	.p2align 4,,10
	.p2align 3
.L494:
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
	jne	.L497
	jmp	.L503
	.p2align 4,,10
	.p2align 3
.L510:
	test	eax, eax
	je	.L501
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	je	.L503
.L497:
	mov	eax, DWORD PTR [rdi]
	cmp	DWORD PTR [rsi], eax
	je	.L510
.L501:
	mov	edx, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], edx
	mov	ecx, -1
	setg	sil
	movzx	eax, sil
	cmovl	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L503:
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
	jne	.L512
	jmp	.L515
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L514:
	add	rdi, 4
	sub	rdx, 1
	je	.L515
.L512:
	cmp	DWORD PTR [rdi], esi
	jne	.L514
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L515:
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
	jne	.L520
	jmp	.L525
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L522:
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	je	.L525
.L520:
	mov	eax, DWORD PTR [rdi]
	cmp	eax, DWORD PTR [rsi]
	je	.L522
	cmp	eax, DWORD PTR [rsi]
	mov	edx, -1
	setg	cl
	movzx	eax, cl
	cmovl	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L525:
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
	je	.L537
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	sal	rdx, 2
	call	memcpy
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L537:
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
	mov	rcx, rsi
	mov	rax, rdi
	mov	rsi, rdx
	cmp	rdi, rcx
	je	.L584
	lea	r11, [0+rdx*4]
	lea	rdi, [rdx-1]
	mov	rdx, rax
	sub	rdx, rcx
	cmp	rdx, r11
	jnb	.L641
	test	rsi, rsi
	je	.L584
	cmp	rdi, 6
	jbe	.L623
	mov	r8, rax
	sub	r8, rcx
	add	r8, 60
	cmp	r8, 56
	jbe	.L623
	cmp	rdi, 14
	jbe	.L563
	mov	r8, rsi
	lea	r9, [r11-64]
	xor	edx, edx
	shr	r8, 4
	lea	r10, [rcx+r9]
	add	r9, rax
	neg	r8
	sal	r8, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L547:
	vmovdqu32	zmm2, ZMMWORD PTR [r10+rdx]
	vmovdqu32	ZMMWORD PTR [r9+rdx], zmm2
	sub	rdx, 64
	cmp	rdx, r8
	jne	.L547
	mov	r9, rsi
	and	r9, -16
	sub	rdi, r9
	test	sil, 15
	je	.L640
	sub	rsi, r9
	lea	r10, [rsi-1]
	cmp	r10, 6
	jbe	.L550
.L546:
	neg	r9
	lea	r11, [r11-32+r9*4]
	mov	r9, rsi
	and	r9, -8
	vmovdqu	ymm3, YMMWORD PTR [rcx+r11]
	sub	rdi, r9
	and	esi, 7
	vmovdqu	YMMWORD PTR [rax+r11], ymm3
	je	.L640
.L550:
	mov	esi, DWORD PTR [rcx+rdi*4]
	lea	r10, [rdi-1]
	mov	DWORD PTR [rax+rdi*4], esi
	test	rdi, rdi
	je	.L640
	mov	r8d, DWORD PTR [rcx+r10*4]
	lea	rdx, [0+r10*4]
	mov	DWORD PTR [rax+r10*4], r8d
	test	r10, r10
	je	.L640
	mov	r11d, DWORD PTR [rcx-4+rdx]
	mov	DWORD PTR [rax-4+rdx], r11d
	cmp	rdi, 2
	je	.L640
	mov	r9d, DWORD PTR [rcx-8+rdx]
	mov	DWORD PTR [rax-8+rdx], r9d
	cmp	rdi, 3
	je	.L640
	mov	esi, DWORD PTR [rcx-12+rdx]
	mov	DWORD PTR [rax-12+rdx], esi
	cmp	rdi, 4
	je	.L640
	mov	r10d, DWORD PTR [rcx-16+rdx]
	mov	DWORD PTR [rax-16+rdx], r10d
	cmp	rdi, 5
	je	.L640
	mov	ecx, DWORD PTR [rcx-20+rdx]
	mov	DWORD PTR [rax-20+rdx], ecx
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L641:
	test	rsi, rsi
	je	.L642
	cmp	rdi, 6
	jbe	.L565
	lea	r8, [rcx+4]
	mov	r9, rax
	sub	r9, r8
	cmp	r9, 56
	jbe	.L565
	cmp	rdi, 14
	jbe	.L566
	mov	r10, rsi
	xor	r9d, r9d
	xor	r11d, r11d
	shr	r10, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L556:
	vmovdqu32	zmm0, ZMMWORD PTR [rcx+r9]
	add	r11, 1
	vmovdqu32	ZMMWORD PTR [rax+r9], zmm0
	add	r9, 64
	cmp	r10, r11
	jne	.L556
	mov	r8, rsi
	and	r8, -16
	lea	rdx, [0+r8*4]
	sub	rdi, r8
	lea	r11, [rcx+rdx]
	add	rdx, rax
	test	sil, 15
	je	.L640
	sub	rsi, r8
	lea	r10, [rsi-1]
	cmp	r10, 6
	jbe	.L559
.L555:
	vmovdqu	ymm1, YMMWORD PTR [rcx+r8*4]
	mov	rcx, rsi
	and	rcx, -8
	sub	rdi, rcx
	sal	rcx, 2
	vmovdqu	YMMWORD PTR [rax+r8*4], ymm1
	add	r11, rcx
	add	rdx, rcx
	and	esi, 7
	je	.L640
.L559:
	mov	esi, DWORD PTR [r11]
	mov	DWORD PTR [rdx], esi
	test	rdi, rdi
	je	.L640
	mov	r8d, DWORD PTR [r11+4]
	mov	DWORD PTR [rdx+4], r8d
	cmp	rdi, 1
	jne	.L643
	.p2align 4
	.p2align 3
.L640:
	vzeroupper
.L584:
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L623:
	mov	edx, DWORD PTR [rcx+rdi*4]
	mov	DWORD PTR [rax+rdi*4], edx
	sub	rdi, 1
	jnb	.L623
	ret
	.p2align 4,,10
	.p2align 3
.L643:
	mov	r9d, DWORD PTR [r11+8]
	mov	DWORD PTR [rdx+8], r9d
	cmp	rdi, 2
	je	.L640
	mov	r10d, DWORD PTR [r11+12]
	mov	DWORD PTR [rdx+12], r10d
	cmp	rdi, 3
	je	.L640
	mov	ecx, DWORD PTR [r11+16]
	mov	DWORD PTR [rdx+16], ecx
	cmp	rdi, 4
	je	.L640
	mov	esi, DWORD PTR [r11+20]
	mov	DWORD PTR [rdx+20], esi
	cmp	rdi, 5
	je	.L640
	mov	edi, DWORD PTR [r11+24]
	mov	DWORD PTR [rdx+24], edi
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L565:
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L624:
	mov	r11d, DWORD PTR [rcx+rdx*4]
	mov	DWORD PTR [rax+rdx*4], r11d
	add	rdx, 1
	cmp	rsi, rdx
	jne	.L624
	ret
	.p2align 4,,10
	.p2align 3
.L642:
	ret
.L566:
	mov	r11, rcx
	mov	rdx, rax
	xor	r8d, r8d
	jmp	.L555
.L563:
	xor	r9d, r9d
	jmp	.L546
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	lea	r8, [rdx-1]
	test	rdx, rdx
	je	.L645
	cmp	r8, 14
	jbe	.L651
	mov	r9, rdx
	vpbroadcastd	zmm0, esi
	xor	eax, eax
	shr	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L647:
	mov	r10, rax
	add	rax, 1
	sal	r10, 6
	vmovdqu32	ZMMWORD PTR [rdi+r10], zmm0
	cmp	r9, rax
	jne	.L647
	mov	rcx, rdx
	and	rcx, -16
	sub	r8, rcx
	lea	r9, [rdi+rcx*4]
	test	dl, 15
	je	.L686
.L646:
	sub	rdx, rcx
	lea	r11, [rdx-1]
	cmp	r11, 6
	jbe	.L649
	vpbroadcastd	ymm1, esi
	vmovdqu	YMMWORD PTR [rdi+rcx*4], ymm1
	mov	rcx, rdx
	and	rcx, -8
	sub	r8, rcx
	and	edx, 7
	lea	r9, [r9+rcx*4]
	je	.L686
.L649:
	mov	DWORD PTR [r9], esi
	test	r8, r8
	je	.L686
	mov	DWORD PTR [r9+4], esi
	cmp	r8, 1
	je	.L686
	mov	DWORD PTR [r9+8], esi
	cmp	r8, 2
	je	.L686
	mov	DWORD PTR [r9+12], esi
	cmp	r8, 3
	je	.L686
	mov	DWORD PTR [r9+16], esi
	cmp	r8, 4
	je	.L686
	mov	DWORD PTR [r9+20], esi
	cmp	r8, 5
	je	.L686
	mov	DWORD PTR [r9+24], esi
	mov	rax, rdi
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L686:
	vzeroupper
.L645:
	mov	rax, rdi
	ret
.L651:
	mov	r9, rdi
	xor	ecx, ecx
	jmp	.L646
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.p2align 4
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	mov	rcx, rdi
	cmp	rdi, rsi
	jnb	.L688
	test	rdx, rdx
	je	.L740
	lea	r11, [rdx-1]
	cmp	r11, 30
	jbe	.L735
	lea	r8, [rdi-2+rdx]
	mov	rax, rsi
	sub	rax, r8
	lea	rdi, [rax+62+r11]
	cmp	rdi, 62
	jbe	.L735
	lea	r8, [rcx+rdx]
	lea	rdi, [rsi+rdx]
	cmp	r11, 62
	jbe	.L709
	mov	r10, rdx
	lea	r9, [rdx-64]
	xor	eax, eax
	and	r10, -64
	lea	r11, [rcx+r9]
	add	r9, rsi
	neg	r10
	.p2align 5
	.p2align 4
	.p2align 3
.L692:
	vmovdqu8	zmm2, ZMMWORD PTR [r11+rax]
	vmovdqu8	ZMMWORD PTR [r9+rax], zmm2
	sub	rax, 64
	cmp	rax, r10
	jne	.L692
	mov	r10, rdx
	add	rdi, rax
	add	r8, rax
	and	r10d, 63
	and	edx, 63
	je	.L739
	lea	r9, [r10-1]
	mov	rdx, r10
	cmp	r9, 30
	jbe	.L694
.L691:
	vmovdqu8	ymm3, YMMWORD PTR [rcx-32+rdx]
	vmovdqu8	YMMWORD PTR [rsi-32+rdx], ymm3
	mov	rsi, rdx
	and	rsi, -32
	sub	rdi, rsi
	sub	r8, rsi
	sub	r10, rsi
	and	edx, 31
	je	.L739
.L694:
	sub	r8, r10
	sub	rdi, r10
	.p2align 5
	.p2align 4
	.p2align 3
.L696:
	movzx	ecx, BYTE PTR [r8-1+r10]
	mov	BYTE PTR [rdi-1+r10], cl
	sub	r10, 1
	jne	.L696
.L739:
	vzeroupper
.L740:
	ret
	.p2align 4,,10
	.p2align 3
.L688:
	je	.L740
	test	rdx, rdx
	je	.L740
	lea	rax, [rdx-1]
	cmp	rax, 30
	jbe	.L711
	lea	r8, [rdi+1]
	mov	rdi, rsi
	sub	rdi, r8
	cmp	rdi, 62
	jbe	.L711
	cmp	rax, 62
	jbe	.L712
	mov	r8, rdx
	xor	eax, eax
	and	r8, -64
	.p2align 5
	.p2align 4
	.p2align 3
.L701:
	vmovdqu8	zmm0, ZMMWORD PTR [rcx+rax]
	vmovdqu8	ZMMWORD PTR [rsi+rax], zmm0
	add	rax, 64
	cmp	rax, r8
	jne	.L701
	mov	r11, rdx
	lea	r10, [rsi+r8]
	lea	r9, [rcx+r8]
	sub	r11, r8
	cmp	rdx, r8
	je	.L739
	lea	rdi, [r11-1]
	mov	rdx, r11
	cmp	rdi, 30
	jbe	.L704
.L700:
	vmovdqu8	ymm1, YMMWORD PTR [rcx+r8]
	vmovdqu8	YMMWORD PTR [rsi+r8], ymm1
	mov	rsi, rdx
	and	rsi, -32
	add	r10, rsi
	add	r9, rsi
	sub	r11, rsi
	and	edx, 31
	je	.L739
.L704:
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L706:
	movzx	edx, BYTE PTR [r9+rcx]
	mov	BYTE PTR [r10+rcx], dl
	add	rcx, 1
	cmp	rcx, r11
	jne	.L706
	vzeroupper
	ret
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L742:
	sub	r11, 1
.L735:
	movzx	r10d, BYTE PTR [rcx-1+rdx]
	mov	BYTE PTR [rsi-1+rdx], r10b
	mov	rdx, r11
	test	r11, r11
	jne	.L742
	ret
	.p2align 4,,10
	.p2align 3
.L711:
	xor	r10d, r10d
	.p2align 5
	.p2align 4
	.p2align 3
.L734:
	movzx	r9d, BYTE PTR [rcx+r10]
	mov	BYTE PTR [rsi+r10], r9b
	add	r10, 1
	cmp	rdx, r10
	jne	.L734
	ret
.L709:
	mov	r10, rdx
	jmp	.L691
.L712:
	mov	r10, rsi
	mov	r9, rcx
	mov	r11, rdx
	xor	r8d, r8d
	jmp	.L700
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
	vpbroadcastd	zmm0, edi
	mov	eax, 1
	vpxor	xmm4, xmm4, xmm4
	mov	esi, edi
	vmovdqa32	zmm2, ZMMWORD PTR .LC6[rip]
	vpbroadcastd	zmm1, eax
	vpsrlvd	zmm3, zmm0, zmm2
	vpandd	zmm5, zmm3, zmm1
	vpcmpd	k0, zmm5, zmm4, 4
	kortestw	k0, k0
	jne	.L763
	vmovdqa32	zmm2, ZMMWORD PTR .LC8[rip]
	vpsrlvd	zmm6, zmm0, zmm2
	vpandd	zmm7, zmm6, zmm1
	vpcmpd	k1, zmm7, zmm4, 4
	kortestw	k1, k1
	jne	.L764
.L777:
	xor	ecx, ecx
.L756:
	mov	eax, ecx
	vzeroupper
	ret
.L764:
	vmovdqa32	zmm8, ZMMWORD PTR .LC7[rip]
.L757:
	vmovd	edx, xmm2
	vmovd	ecx, xmm8
	bt	esi, edx
	lea	r8d, [rdx+1]
	jc	.L759
	shrx	edi, esi, r8d
	and	edi, 1
	lea	r8d, [rdx+2]
	jne	.L759
	cmp	ecx, 2
	je	.L777
	shrx	r9d, esi, r8d
	and	r9d, 1
	lea	r8d, [rdx+3]
	jne	.L759
	cmp	ecx, 3
	je	.L777
	shrx	r10d, esi, r8d
	and	r10d, 1
	lea	r8d, [rdx+4]
	jne	.L759
	cmp	ecx, 4
	je	.L777
	shrx	r11d, esi, r8d
	and	r11d, 1
	lea	r8d, [rdx+5]
	jne	.L759
	cmp	ecx, 5
	je	.L777
	shrx	eax, esi, r8d
	and	eax, 1
	lea	r8d, [rdx+6]
	jne	.L759
	cmp	ecx, 6
	je	.L777
	shrx	edi, esi, r8d
	and	edi, 1
	lea	r8d, [rdx+7]
	jne	.L759
	cmp	ecx, 7
	je	.L777
	shrx	r9d, esi, r8d
	and	r9d, 1
	lea	r8d, [rdx+8]
	jne	.L759
	cmp	ecx, 8
	je	.L777
	shrx	r10d, esi, r8d
	and	r10d, 1
	lea	r8d, [rdx+9]
	jne	.L759
	cmp	ecx, 9
	je	.L777
	shrx	r11d, esi, r8d
	and	r11d, 1
	lea	r8d, [rdx+10]
	jne	.L759
	cmp	ecx, 10
	je	.L777
	shrx	eax, esi, r8d
	and	eax, 1
	lea	r8d, [rdx+11]
	jne	.L759
	cmp	ecx, 11
	je	.L777
	shrx	edi, esi, r8d
	and	edi, 1
	lea	r8d, [rdx+12]
	jne	.L759
	cmp	ecx, 12
	je	.L777
	shrx	r9d, esi, r8d
	and	r9d, 1
	lea	r8d, [rdx+13]
	jne	.L759
	cmp	ecx, 13
	je	.L777
	shrx	r10d, esi, r8d
	and	r10d, 1
	lea	r8d, [rdx+14]
	jne	.L759
	cmp	ecx, 14
	je	.L777
	shrx	r11d, esi, r8d
	and	r11d, 1
	lea	r8d, [rdx+15]
	jne	.L759
	cmp	ecx, 15
	mov	ecx, 0
	je	.L756
	bt	esi, r8d
	jnc	.L756
	lea	r8d, [rdx+16]
.L759:
	mov	ecx, r8d
	mov	eax, ecx
	vzeroupper
	ret
.L763:
	vmovdqa32	zmm8, ZMMWORD PTR .LC5[rip]
	jmp	.L757
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
	je	.L782
	mov	eax, edi
	and	eax, 1
	jne	.L782
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L784:
	sar	edi
	add	eax, 1
	test	dil, 1
	je	.L784
.L782:
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
	vmovss	xmm1, DWORD PTR .LC10[rip]
	mov	eax, 1
	vcomiss	xmm1, xmm0
	ja	.L789
	xor	eax, eax
	vcomiss	xmm0, DWORD PTR .LC11[rip]
	seta	al
.L789:
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
	vmovsd	xmm1, QWORD PTR .LC12[rip]
	mov	eax, 1
	vcomisd	xmm1, xmm0
	ja	.L792
	xor	eax, eax
	vcomisd	xmm0, QWORD PTR .LC13[rip]
	seta	al
.L792:
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
	fld	TBYTE PTR .LC14[rip]
	fcomip	st, st(1)
	ja	.L798
	fld	TBYTE PTR .LC15[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L795
	.p2align 4,,10
	.p2align 3
.L798:
	fstp	st(0)
.L795:
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
	vxorps	xmm0, xmm0, xmm0
	vcvtsi2sd	xmm1, xmm0, esi
	vmovlpd	QWORD PTR [rsp-16], xmm1
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
	vucomiss	xmm0, xmm0
	jp	.L801
	vaddss	xmm1, xmm0, xmm0
	vucomiss	xmm1, xmm0
	jp	.L808
	jne	.L808
.L801:
	ret
	.p2align 4,,10
	.p2align 3
.L808:
	vmovss	xmm2, DWORD PTR .LC16[rip]
	test	edi, edi
	jns	.L803
	vmovss	xmm2, DWORD PTR .LC17[rip]
.L803:
	test	dil, 1
	je	.L804
	.p2align 4
	.p2align 3
.L805:
	vmulss	xmm0, xmm0, xmm2
.L804:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L801
	vmulss	xmm2, xmm2, xmm2
	test	dil, 1
	jne	.L805
.L815:
	vmulss	xmm2, xmm2, xmm2
	mov	edx, edi
	shr	edx, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L805
	jmp	.L815
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.p2align 4
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB90:
	.cfi_startproc
	vucomisd	xmm0, xmm0
	jp	.L817
	vaddsd	xmm1, xmm0, xmm0
	vucomisd	xmm1, xmm0
	jp	.L824
	jne	.L824
.L817:
	ret
	.p2align 4,,10
	.p2align 3
.L824:
	vmovsd	xmm2, QWORD PTR .LC18[rip]
	test	edi, edi
	jns	.L819
	vmovsd	xmm2, QWORD PTR .LC19[rip]
.L819:
	test	dil, 1
	je	.L820
	.p2align 4
	.p2align 3
.L821:
	vmulsd	xmm0, xmm0, xmm2
.L820:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L817
	vmulsd	xmm2, xmm2, xmm2
	test	dil, 1
	jne	.L821
.L831:
	vmulsd	xmm2, xmm2, xmm2
	mov	edx, edi
	shr	edx, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L821
	jmp	.L831
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
	jp	.L833
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L840
	jne	.L840
	jmp	.L833
	.p2align 4,,10
	.p2align 3
.L849:
	fstp	st(0)
.L833:
	ret
	.p2align 4,,10
	.p2align 3
.L840:
	test	edi, edi
	js	.L847
	fld	DWORD PTR .LC16[rip]
.L835:
	test	dil, 1
	je	.L836
	.p2align 4
	.p2align 3
.L837:
	fmul	st(1), st
.L836:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L849
	fmul	st, st(0)
	test	dil, 1
	jne	.L837
.L848:
	mov	edx, edi
	fmul	st, st(0)
	shr	edx, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L837
	jmp	.L848
	.p2align 4,,10
	.p2align 3
.L847:
	fld	DWORD PTR .LC17[rip]
	jmp	.L835
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.p2align 4
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	test	rdx, rdx
	je	.L851
	lea	rax, [rdx-1]
	cmp	rax, 62
	jbe	.L858
	mov	r8, rdx
	xor	r10d, r10d
	and	r8, -64
	.p2align 5
	.p2align 4
	.p2align 3
.L853:
	vmovdqu8	zmm0, ZMMWORD PTR [rdi+r10]
	vpxorq	zmm1, zmm0, ZMMWORD PTR [rsi+r10]
	vmovdqu8	ZMMWORD PTR [rdi+r10], zmm1
	add	r10, 64
	cmp	r10, r8
	jne	.L853
	mov	r9, rdx
	lea	rcx, [rdi+r8]
	lea	r11, [rsi+r8]
	sub	r9, r8
	cmp	rdx, r8
	je	.L867
.L852:
	sub	rdx, r8
	lea	rax, [rdx-1]
	cmp	rax, 30
	jbe	.L855
	lea	r10, [rdi+r8]
	vmovdqu8	ymm2, YMMWORD PTR [r10]
	vpxorq	ymm3, ymm2, YMMWORD PTR [rsi+r8]
	mov	rsi, rdx
	and	rsi, -32
	add	rcx, rsi
	add	r11, rsi
	sub	r9, rsi
	and	edx, 31
	vmovdqu8	YMMWORD PTR [r10], ymm3
	je	.L867
.L855:
	lea	r9, [r11+r9]
	.p2align 5
	.p2align 4
	.p2align 3
.L857:
	add	r11, 1
	add	rcx, 1
	movzx	edx, BYTE PTR [r11-1]
	xor	BYTE PTR [rcx-1], dl
	cmp	r11, r9
	jne	.L857
.L867:
	vzeroupper
.L851:
	mov	rax, rdi
	ret
.L858:
	mov	rcx, rdi
	mov	r11, rsi
	mov	r9, rdx
	xor	r8d, r8d
	jmp	.L852
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
	je	.L869
	.p2align 4
	.p2align 4
	.p2align 3
.L870:
	add	rcx, 1
	cmp	BYTE PTR [rcx], 0
	jne	.L870
.L869:
	test	rdx, rdx
	jne	.L871
	jmp	.L872
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L873:
	add	rsi, 1
	add	rcx, 1
	sub	rdx, 1
	je	.L872
.L871:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rcx], r8b
	test	r8b, r8b
	jne	.L873
	ret
	.p2align 4,,10
	.p2align 3
.L872:
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
	je	.L882
.L883:
	cmp	BYTE PTR [rdi+rax], 0
	jne	.L885
.L882:
	ret
	.p2align 4,,10
	.p2align 3
.L885:
	add	rax, 1
	cmp	rsi, rax
	jne	.L883
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
	je	.L896
.L892:
	mov	rdx, rsi
	jmp	.L895
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L894:
	add	rdx, 1
	cmp	cl, r8b
	je	.L893
.L895:
	movzx	ecx, BYTE PTR [rdx]
	test	cl, cl
	jne	.L894
	movzx	r8d, BYTE PTR [rax+1]
	add	rax, 1
	test	r8b, r8b
	jne	.L892
.L896:
	xor	eax, eax
.L893:
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
.L901:
	movsx	ecx, BYTE PTR [rdi]
	cmp	ecx, esi
	cmove	rdx, rdi
	add	rdi, 1
	test	cl, cl
	jne	.L901
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
	je	.L915
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L905:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L905
	mov	r9, rdx
	sub	rax, rsi
	je	.L903
	lea	r11, [rsi-1+rax]
	jmp	.L925
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L927:
	add	rdx, 1
	test	cl, cl
	je	.L926
.L925:
	movzx	ecx, BYTE PTR [rdx]
	cmp	cl, r10b
	jne	.L927
	mov	ecx, r10d
	mov	rax, rsi
	mov	r8, rdx
	jmp	.L907
	.p2align 4,,10
	.p2align 3
.L928:
	test	dil, dil
	setne	r9b
	cmp	dil, cl
	sete	dil
	test	r9b, dil
	je	.L908
	movzx	ecx, BYTE PTR [r8+1]
	add	r8, 1
	add	rax, 1
	test	cl, cl
	je	.L908
.L907:
	movzx	edi, BYTE PTR [rax]
	cmp	rax, r11
	jne	.L928
.L908:
	cmp	cl, BYTE PTR [rax]
	je	.L915
	add	rdx, 1
	jmp	.L925
	.p2align 4,,10
	.p2align 3
.L926:
	xor	r9d, r9d
.L903:
	mov	rax, r9
	ret
.L915:
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
	vxorpd	xmm2, xmm2, xmm2
	vcomisd	xmm2, xmm0
	ja	.L939
	vcomisd	xmm0, xmm2
	jbe	.L933
	vcomisd	xmm2, xmm1
	ja	.L932
.L933:
	ret
	.p2align 4,,10
	.p2align 3
.L939:
	vcomisd	xmm1, xmm2
	jbe	.L933
.L932:
	vxorpd	xmm0, xmm0, XMMWORD PTR .LC20[rip]
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
	je	.L940
	cmp	rsi, rcx
	jb	.L951
	sub	rsi, rcx
	add	rsi, rdi
	jc	.L951
	movzx	r9d, BYTE PTR [rdx]
	jmp	.L946
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L950:
	mov	rax, rdi
.L942:
	cmp	rsi, rax
	jb	.L951
.L946:
	lea	rdi, [rax+1]
	cmp	BYTE PTR [rax], r9b
	jne	.L950
	cmp	rcx, 1
	je	.L940
.L945:
	mov	r11d, 1
	jmp	.L943
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L944:
	add	r11, 1
	cmp	r11, rcx
	je	.L940
.L943:
	movzx	r10d, BYTE PTR [rdx+r11]
	cmp	BYTE PTR [rax+r11], r10b
	je	.L944
	cmp	rsi, rdi
	jb	.L951
	lea	rax, [rdi+1]
	cmp	r9b, BYTE PTR [rdi]
	jne	.L942
	mov	r8, rdi
	mov	rdi, rax
	mov	rax, r8
	jmp	.L945
	.p2align 4,,10
	.p2align 3
.L951:
	xor	eax, eax
.L940:
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
	je	.L961
	call	memmove
	mov	rdi, rax
.L961:
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
	vxorpd	xmm2, xmm2, xmm2
	vcomisd	xmm2, xmm0
	ja	.L990
	vmovsd	xmm5, QWORD PTR .LC23[rip]
	xor	edx, edx
	vcomisd	xmm0, xmm5
	jb	.L991
.L969:
	vmovsd	xmm6, QWORD PTR .LC19[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L976:
	vmulsd	xmm0, xmm0, xmm6
	add	eax, 1
	vcomisd	xmm0, xmm5
	jnb	.L976
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	je	.L966
.L993:
	vxorpd	xmm0, xmm0, XMMWORD PTR .LC20[rip]
.L966:
	ret
	.p2align 4,,10
	.p2align 3
.L991:
	vmovsd	xmm1, QWORD PTR .LC19[rip]
	vcomisd	xmm1, xmm0
	jbe	.L972
	vucomisd	xmm0, xmm2
	jp	.L982
	jne	.L982
.L972:
	mov	DWORD PTR [rdi], 0
	ret
	.p2align 4,,10
	.p2align 3
.L990:
	vmovsd	xmm4, QWORD PTR .LC21[rip]
	vxorpd	xmm3, xmm0, XMMWORD PTR .LC20[rip]
	vcomisd	xmm4, xmm0
	jb	.L992
	vmovsd	xmm5, QWORD PTR .LC23[rip]
	vmovapd	xmm0, xmm3
	mov	edx, 1
	jmp	.L969
	.p2align 4,,10
	.p2align 3
.L992:
	vcomisd	xmm0, QWORD PTR .LC22[rip]
	jbe	.L972
	vmovsd	xmm1, QWORD PTR .LC19[rip]
	mov	edx, 1
.L970:
	vmovapd	xmm0, xmm3
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L978:
	vaddsd	xmm0, xmm0, xmm0
	sub	eax, 1
	vcomisd	xmm1, xmm0
	ja	.L978
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	jne	.L993
	ret
.L982:
	vmovapd	xmm3, xmm0
	xor	edx, edx
	jmp	.L970
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
	je	.L994
	.p2align 5
	.p2align 4
	.p2align 3
.L996:
	mov	rax, rdi
	and	eax, 1
	neg	rax
	and	rax, rsi
	add	rsi, rsi
	add	rdx, rax
	shr	rdi
	jne	.L996
.L994:
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
	mov	r11d, 1
	cmp	esi, edi
	jb	.L1000
	jmp	.L1023
	.p2align 4,,10
	.p2align 3
.L1003:
	add	esi, esi
	add	r11d, r11d
	cmp	esi, edi
	jnb	.L1002
	test	r11d, r11d
	je	.L1002
.L1000:
	test	esi, esi
	jns	.L1003
.L1004:
	xor	eax, eax
	xor	r10d, r10d
	.p2align 6
	.p2align 4
	.p2align 3
.L1006:
	mov	r8d, edi
	mov	ecx, r10d
	sub	r8d, esi
	cmp	edi, esi
	setnb	r9b
	test	r9b, r9b
	cmovne	ecx, r11d
	cmovne	edi, r8d
	shr	esi
	or	eax, ecx
	shr	r11d
	jne	.L1006
.L1005:
	test	rdx, rdx
	cmovne	eax, edi
	ret
	.p2align 4,,10
	.p2align 3
.L1002:
	xor	eax, eax
	test	r11d, r11d
	jne	.L1004
	test	rdx, rdx
	cmovne	eax, edi
	ret
.L1023:
	mov	eax, edi
	sub	eax, esi
	cmp	edi, esi
	setnb	cl
	cmovnb	edi, eax
	movzx	eax, cl
	jmp	.L1005
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
	je	.L1026
	movsx	ecx, al
	xor	esi, esi
	sal	ecx, 8
	lzcnt	esi, ecx
	lea	r8d, [rsi-1]
.L1026:
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
	mov	ecx, 63
	sar	rdx, 63
	xor	rax, rdx
	lzcnt	rax, rax
	sub	eax, 1
	cmp	rdi, rdx
	cmove	eax, ecx
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
	je	.L1032
	.p2align 5
	.p2align 4
	.p2align 3
.L1034:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L1034
.L1032:
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
	mov	rcx, rdi
	mov	r9d, edx
	mov	eax, edx
	mov	edi, edx
	shr	r9d, 3
	and	eax, -8
	cmp	rcx, rsi
	jb	.L1042
	mov	edx, edx
	add	rdx, rsi
	cmp	rdx, rcx
	jnb	.L1114
.L1042:
	test	r9d, r9d
	je	.L1115
	lea	edx, [r9-1]
	cmp	edx, 2
	jbe	.L1044
	lea	r10, [rsi+8]
	mov	r8, rcx
	sub	r8, r10
	cmp	r8, 48
	jbe	.L1044
	cmp	edx, 6
	jbe	.L1070
	mov	r10d, edi
	xor	r11d, r11d
	shr	r10d, 6
	mov	r8d, r10d
	sal	r8, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1046:
	vmovdqu64	zmm2, ZMMWORD PTR [rsi+r11]
	vmovdqu64	ZMMWORD PTR [rcx+r11], zmm2
	add	r11, 64
	cmp	r11, r8
	jne	.L1046
	lea	edx, [0+r10*8]
	cmp	r9d, edx
	je	.L1051
	mov	r11d, r9d
	sub	r11d, edx
	lea	r10d, [r11-1]
	cmp	r10d, 2
	jbe	.L1048
.L1045:
	mov	r8d, edx
	mov	r10d, r11d
	and	r10d, -4
	vmovdqu	ymm3, YMMWORD PTR [rsi+r8*8]
	add	edx, r10d
	and	r11d, 3
	vmovdqu	YMMWORD PTR [rcx+r8*8], ymm3
	je	.L1051
.L1048:
	mov	r11d, edx
	mov	r8, QWORD PTR [rsi+r11*8]
	mov	QWORD PTR [rcx+r11*8], r8
	lea	r11d, [rdx+1]
	cmp	r11d, r9d
	jnb	.L1051
	mov	r10, QWORD PTR [rsi+r11*8]
	add	edx, 2
	mov	QWORD PTR [rcx+r11*8], r10
	cmp	edx, r9d
	jnb	.L1051
	mov	r9, QWORD PTR [rsi+rdx*8]
	mov	QWORD PTR [rcx+rdx*8], r9
.L1051:
	cmp	eax, edi
	jnb	.L1106
	mov	r11d, edi
	sub	r11d, eax
	lea	edx, [r11-1]
	cmp	edx, 30
	jbe	.L1116
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	r8d, eax
	lea	r10, [rsi+1+r8]
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	.cfi_offset 3, -24
	lea	rbx, [rcx+r8]
	mov	r9, rbx
	sub	r9, r10
	cmp	r9, 62
	jbe	.L1102
	cmp	edx, 62
	jbe	.L1071
	mov	r9d, r11d
	lea	r10, [rsi+r8]
	xor	edx, edx
	shr	r9d, 6
	sal	r9, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1053:
	vmovdqu8	zmm4, ZMMWORD PTR [r10+rdx]
	vmovdqu8	ZMMWORD PTR [rbx+rdx], zmm4
	add	rdx, 64
	cmp	rdx, r9
	jne	.L1053
	mov	edx, r11d
	and	edx, -64
	add	eax, edx
	test	r11b, 63
	je	.L1104
	sub	r11d, edx
	lea	ebx, [r11-1]
	cmp	ebx, 30
	jbe	.L1057
.L1052:
	add	rdx, r8
	mov	r8d, r11d
	and	r8d, -32
	vmovdqu8	ymm5, YMMWORD PTR [rsi+rdx]
	add	eax, r8d
	and	r11d, 31
	vmovdqu8	YMMWORD PTR [rcx+rdx], ymm5
	je	.L1104
	.p2align 5
	.p2align 4
	.p2align 3
.L1057:
	movzx	r11d, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], r11b
	add	rax, 1
	cmp	eax, edi
	jb	.L1057
.L1104:
	vzeroupper
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L1114:
	.cfi_restore 3
	.cfi_restore 6
	lea	eax, [rdi-1]
	test	edi, edi
	je	.L1117
	mov	r11d, eax
	cmp	eax, 30
	jbe	.L1068
	mov	r8, rcx
	sub	r8, rsi
	add	r8, 63
	cmp	r8, 62
	jbe	.L1068
	cmp	eax, 62
	jbe	.L1072
	mov	r8d, edi
	lea	r9, [r11-63]
	xor	edx, edx
	shr	r8d, 6
	lea	r10, [rsi+r9]
	add	r9, rcx
	neg	r8
	sal	r8, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1062:
	vmovdqu8	zmm0, ZMMWORD PTR [r10+rdx]
	vmovdqu8	ZMMWORD PTR [r9+rdx], zmm0
	sub	rdx, 64
	cmp	rdx, r8
	jne	.L1062
	mov	r10d, edi
	and	r10d, -64
	sub	eax, r10d
	test	dil, 63
	je	.L1106
	sub	edi, r10d
	lea	r9d, [rdi-1]
	cmp	r9d, 30
	jbe	.L1067
.L1061:
	sub	r11, 31
	sub	r11, r10
	vmovdqu8	ymm1, YMMWORD PTR [rsi+r11]
	vmovdqu8	YMMWORD PTR [rcx+r11], ymm1
	mov	r11d, edi
	and	r11d, -32
	sub	eax, r11d
	and	edi, 31
	je	.L1106
	.p2align 4
	.p2align 4
	.p2align 3
.L1067:
	movzx	edi, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dil
	sub	rax, 1
	jnb	.L1067
.L1106:
	vzeroupper
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1068:
	movzx	eax, BYTE PTR [rsi+r11]
	mov	BYTE PTR [rcx+r11], al
	sub	r11, 1
	jnb	.L1068
	ret
.L1070:
	mov	r11d, r9d
	xor	edx, edx
	jmp	.L1045
	.p2align 4,,10
	.p2align 3
.L1044:
	lea	r11d, [0+r9*8]
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L1050:
	mov	r8, QWORD PTR [rsi+rdx]
	mov	QWORD PTR [rcx+rdx], r8
	add	rdx, 8
	cmp	r11, rdx
	jne	.L1050
	jmp	.L1051
	.p2align 4,,10
	.p2align 3
.L1115:
	mov	eax, eax
	test	edi, edi
	je	.L1118
.L1109:
	mov	r8, rax
.L1111:
	movzx	r10d, BYTE PTR [rsi+r8]
	mov	BYTE PTR [rcx+r8], r10b
	add	r8, 1
	cmp	r8d, edi
	jb	.L1111
	ret
.L1102:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	vzeroupper
	.p2align 5
	.p2align 4
	.p2align 3
.L1058:
	movzx	eax, BYTE PTR [rsi+r8]
	mov	BYTE PTR [rcx+r8], al
	add	r8, 1
	cmp	r8d, edi
	jb	.L1058
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L1071:
	.cfi_restore_state
	xor	edx, edx
	jmp	.L1052
.L1117:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	ret
.L1072:
	xor	r10d, r10d
	jmp	.L1061
.L1116:
	mov	eax, eax
	vzeroupper
	jmp	.L1109
.L1118:
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
	mov	rcx, rdi
	mov	edi, edx
	shr	edi
	cmp	rcx, rsi
	jb	.L1123
	mov	eax, edx
	add	rax, rsi
	cmp	rax, rcx
	jnb	.L1184
.L1123:
	test	edi, edi
	je	.L1122
	lea	r10d, [rdi-1]
	cmp	r10d, 14
	jbe	.L1126
	lea	r9, [rsi+2]
	mov	r11, rcx
	sub	r11, r9
	cmp	r11, 60
	jbe	.L1126
	cmp	r10d, 30
	jbe	.L1144
	mov	r10d, edx
	xor	r11d, r11d
	shr	r10d, 6
	mov	r9d, r10d
	sal	r9, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1128:
	vmovdqu16	zmm2, ZMMWORD PTR [rsi+r11]
	vmovdqu16	ZMMWORD PTR [rcx+r11], zmm2
	add	r11, 64
	cmp	r9, r11
	jne	.L1128
	mov	eax, r10d
	sal	eax, 5
	cmp	edi, eax
	je	.L1180
	mov	r8d, edi
	sub	r8d, eax
	lea	r10d, [r8-1]
	cmp	r10d, 14
	jbe	.L1130
.L1127:
	mov	r9d, eax
	mov	r11d, r8d
	and	r11d, -16
	vmovdqu16	ymm3, YMMWORD PTR [rsi+r9*2]
	add	eax, r11d
	and	r8d, 15
	vmovdqu16	YMMWORD PTR [rcx+r9*2], ymm3
	je	.L1180
.L1130:
	mov	r8d, eax
	lea	r11d, [rax+1]
	movzx	r10d, WORD PTR [rsi+r8*2]
	mov	WORD PTR [rcx+r8*2], r10w
	cmp	r11d, edi
	jnb	.L1180
	movzx	r9d, WORD PTR [rsi+r11*2]
	lea	r8d, [rax+2]
	mov	WORD PTR [rcx+r11*2], r9w
	cmp	r8d, edi
	jnb	.L1180
	movzx	r10d, WORD PTR [rsi+r8*2]
	lea	r11d, [rax+3]
	mov	WORD PTR [rcx+r8*2], r10w
	cmp	r11d, edi
	jnb	.L1180
	movzx	r9d, WORD PTR [rsi+r11*2]
	lea	r8d, [rax+4]
	mov	WORD PTR [rcx+r11*2], r9w
	cmp	r8d, edi
	jnb	.L1180
	movzx	r10d, WORD PTR [rsi+r8*2]
	lea	r11d, [rax+5]
	mov	WORD PTR [rcx+r8*2], r10w
	cmp	r11d, edi
	jnb	.L1180
	movzx	r9d, WORD PTR [rsi+r11*2]
	lea	r8d, [rax+6]
	mov	WORD PTR [rcx+r11*2], r9w
	cmp	r8d, edi
	jnb	.L1180
	movzx	r10d, WORD PTR [rsi+r8*2]
	lea	r11d, [rax+7]
	mov	WORD PTR [rcx+r8*2], r10w
	cmp	r11d, edi
	jnb	.L1180
	movzx	r9d, WORD PTR [rsi+r11*2]
	lea	r8d, [rax+8]
	mov	WORD PTR [rcx+r11*2], r9w
	cmp	r8d, edi
	jnb	.L1180
	movzx	r10d, WORD PTR [rsi+r8*2]
	lea	r11d, [rax+9]
	mov	WORD PTR [rcx+r8*2], r10w
	cmp	r11d, edi
	jnb	.L1180
	movzx	r9d, WORD PTR [rsi+r11*2]
	lea	r8d, [rax+10]
	mov	WORD PTR [rcx+r11*2], r9w
	cmp	r8d, edi
	jnb	.L1180
	movzx	r10d, WORD PTR [rsi+r8*2]
	lea	r11d, [rax+11]
	mov	WORD PTR [rcx+r8*2], r10w
	cmp	r11d, edi
	jnb	.L1180
	movzx	r9d, WORD PTR [rsi+r11*2]
	lea	r8d, [rax+12]
	mov	WORD PTR [rcx+r11*2], r9w
	cmp	r8d, edi
	jnb	.L1180
	movzx	r10d, WORD PTR [rsi+r8*2]
	lea	r11d, [rax+13]
	mov	WORD PTR [rcx+r8*2], r10w
	cmp	r11d, edi
	jnb	.L1180
	movzx	r9d, WORD PTR [rsi+r11*2]
	add	eax, 14
	mov	WORD PTR [rcx+r11*2], r9w
	cmp	eax, edi
	jnb	.L1180
	movzx	edi, WORD PTR [rsi+rax*2]
	mov	WORD PTR [rcx+rax*2], di
	vzeroupper
.L1122:
	test	dl, 1
	je	.L1183
.L1186:
	lea	r11d, [rdx-1]
	movzx	esi, BYTE PTR [rsi+r11]
	mov	BYTE PTR [rcx+r11], sil
	ret
	.p2align 4,,10
	.p2align 3
.L1184:
	lea	eax, [rdx-1]
	test	edx, edx
	je	.L1185
	mov	r8d, eax
	cmp	eax, 30
	jbe	.L1142
	mov	r9, rcx
	sub	r9, rsi
	add	r9, 63
	cmp	r9, 62
	jbe	.L1142
	cmp	eax, 62
	jbe	.L1145
	mov	r9d, edx
	lea	r10, [r8-63]
	xor	edi, edi
	shr	r9d, 6
	lea	r11, [rsi+r10]
	add	r10, rcx
	neg	r9
	sal	r9, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1137:
	vmovdqu8	zmm0, ZMMWORD PTR [r11+rdi]
	vmovdqu8	ZMMWORD PTR [r10+rdi], zmm0
	sub	rdi, 64
	cmp	r9, rdi
	jne	.L1137
	mov	r10d, edx
	and	r10d, -64
	sub	eax, r10d
	test	dl, 63
	je	.L1182
	sub	edx, r10d
	lea	r11d, [rdx-1]
	cmp	r11d, 30
	jbe	.L1141
.L1136:
	sub	r8, 31
	sub	r8, r10
	vmovdqu8	ymm1, YMMWORD PTR [rsi+r8]
	vmovdqu8	YMMWORD PTR [rcx+r8], ymm1
	mov	r8d, edx
	and	r8d, -32
	sub	eax, r8d
	and	edx, 31
	je	.L1182
	.p2align 4
	.p2align 4
	.p2align 3
.L1141:
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	jnb	.L1141
.L1182:
	vzeroupper
.L1183:
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1142:
	movzx	eax, BYTE PTR [rsi+r8]
	mov	BYTE PTR [rcx+r8], al
	sub	r8, 1
	jnb	.L1142
	ret
	.p2align 4,,10
	.p2align 3
.L1180:
	vzeroupper
	test	dl, 1
	je	.L1183
	jmp	.L1186
.L1144:
	mov	r8d, edi
	xor	eax, eax
	jmp	.L1127
	.p2align 4,,10
	.p2align 3
.L1126:
	lea	r8d, [rdi+rdi]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L1132:
	movzx	r10d, WORD PTR [rsi+rax]
	mov	WORD PTR [rcx+rax], r10w
	add	rax, 2
	cmp	r8, rax
	jne	.L1132
	test	dl, 1
	je	.L1183
	jmp	.L1186
.L1185:
	ret
.L1145:
	xor	r10d, r10d
	jmp	.L1136
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	mov	rcx, rdi
	mov	r9d, edx
	mov	eax, edx
	mov	edi, edx
	shr	r9d, 2
	and	eax, -4
	cmp	rcx, rsi
	jb	.L1192
	mov	edx, edx
	add	rdx, rsi
	cmp	rdx, rcx
	jnb	.L1264
.L1192:
	test	r9d, r9d
	je	.L1265
	lea	r11d, [r9-1]
	cmp	r11d, 6
	jbe	.L1194
	lea	rdx, [rsi+4]
	mov	r10, rcx
	sub	r10, rdx
	cmp	r10, 56
	jbe	.L1194
	cmp	r11d, 14
	jbe	.L1220
	mov	r10d, edi
	xor	edx, edx
	shr	r10d, 6
	mov	r8d, r10d
	sal	r8, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1196:
	vmovdqu32	zmm2, ZMMWORD PTR [rsi+rdx]
	vmovdqu32	ZMMWORD PTR [rcx+rdx], zmm2
	add	rdx, 64
	cmp	rdx, r8
	jne	.L1196
	mov	r11d, r10d
	sal	r11d, 4
	cmp	r9d, r11d
	je	.L1201
	mov	r8d, r9d
	sub	r8d, r11d
	lea	r10d, [r8-1]
	cmp	r10d, 6
	jbe	.L1198
.L1195:
	mov	edx, r11d
	mov	r10d, r8d
	and	r10d, -8
	vmovdqu	ymm3, YMMWORD PTR [rsi+rdx*4]
	add	r11d, r10d
	and	r8d, 7
	vmovdqu	YMMWORD PTR [rcx+rdx*4], ymm3
	je	.L1201
.L1198:
	mov	r8d, r11d
	mov	edx, DWORD PTR [rsi+r8*4]
	mov	DWORD PTR [rcx+r8*4], edx
	lea	r8d, [r11+1]
	cmp	r8d, r9d
	jnb	.L1201
	mov	r10d, DWORD PTR [rsi+r8*4]
	lea	edx, [r11+2]
	mov	DWORD PTR [rcx+r8*4], r10d
	cmp	edx, r9d
	jnb	.L1201
	mov	r8d, DWORD PTR [rsi+rdx*4]
	mov	DWORD PTR [rcx+rdx*4], r8d
	lea	edx, [r11+3]
	cmp	edx, r9d
	jnb	.L1201
	mov	r10d, DWORD PTR [rsi+rdx*4]
	lea	r8d, [r11+4]
	mov	DWORD PTR [rcx+rdx*4], r10d
	cmp	r8d, r9d
	jnb	.L1201
	mov	edx, DWORD PTR [rsi+r8*4]
	mov	DWORD PTR [rcx+r8*4], edx
	lea	r8d, [r11+5]
	cmp	r8d, r9d
	jnb	.L1201
	mov	r10d, DWORD PTR [rsi+r8*4]
	add	r11d, 6
	mov	DWORD PTR [rcx+r8*4], r10d
	cmp	r11d, r9d
	jnb	.L1201
	mov	r9d, DWORD PTR [rsi+r11*4]
	mov	DWORD PTR [rcx+r11*4], r9d
.L1201:
	cmp	eax, edi
	jnb	.L1256
	mov	r11d, edi
	sub	r11d, eax
	lea	edx, [r11-1]
	cmp	edx, 30
	jbe	.L1266
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	r8d, eax
	lea	r10, [rcx+r8]
	mov	r9, r10
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	.cfi_offset 3, -24
	lea	rbx, [rsi+1+r8]
	sub	r9, rbx
	cmp	r9, 62
	jbe	.L1252
	cmp	edx, 62
	jbe	.L1221
	mov	r9d, r11d
	lea	rbx, [rsi+r8]
	xor	edx, edx
	shr	r9d, 6
	sal	r9, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1203:
	vmovdqu8	zmm4, ZMMWORD PTR [rbx+rdx]
	vmovdqu8	ZMMWORD PTR [r10+rdx], zmm4
	add	rdx, 64
	cmp	rdx, r9
	jne	.L1203
	mov	edx, r11d
	and	edx, -64
	add	eax, edx
	test	r11b, 63
	je	.L1254
	sub	r11d, edx
	lea	r10d, [r11-1]
	cmp	r10d, 30
	jbe	.L1207
.L1202:
	add	rdx, r8
	mov	r8d, r11d
	and	r8d, -32
	vmovdqu8	ymm5, YMMWORD PTR [rsi+rdx]
	add	eax, r8d
	and	r11d, 31
	vmovdqu8	YMMWORD PTR [rcx+rdx], ymm5
	je	.L1254
	.p2align 5
	.p2align 4
	.p2align 3
.L1207:
	movzx	r11d, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], r11b
	add	rax, 1
	cmp	eax, edi
	jb	.L1207
.L1254:
	vzeroupper
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L1264:
	.cfi_restore 3
	.cfi_restore 6
	lea	eax, [rdi-1]
	test	edi, edi
	je	.L1267
	mov	r8d, eax
	cmp	eax, 30
	jbe	.L1218
	mov	r10, rcx
	sub	r10, rsi
	add	r10, 63
	cmp	r10, 62
	jbe	.L1218
	cmp	eax, 62
	jbe	.L1222
	mov	r9d, edi
	lea	r10, [r8-63]
	xor	edx, edx
	shr	r9d, 6
	lea	r11, [rsi+r10]
	add	r10, rcx
	neg	r9
	sal	r9, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1212:
	vmovdqu8	zmm0, ZMMWORD PTR [r11+rdx]
	vmovdqu8	ZMMWORD PTR [r10+rdx], zmm0
	sub	rdx, 64
	cmp	rdx, r9
	jne	.L1212
	mov	r11d, edi
	and	r11d, -64
	sub	eax, r11d
	test	dil, 63
	je	.L1256
	sub	edi, r11d
	lea	r10d, [rdi-1]
	cmp	r10d, 30
	jbe	.L1217
.L1211:
	sub	r8, 31
	sub	r8, r11
	vmovdqu8	ymm1, YMMWORD PTR [rsi+r8]
	vmovdqu8	YMMWORD PTR [rcx+r8], ymm1
	mov	r8d, edi
	and	r8d, -32
	sub	eax, r8d
	and	edi, 31
	je	.L1256
	.p2align 4
	.p2align 4
	.p2align 3
.L1217:
	movzx	edi, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dil
	sub	rax, 1
	jnb	.L1217
.L1256:
	vzeroupper
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1218:
	movzx	eax, BYTE PTR [rsi+r8]
	mov	BYTE PTR [rcx+r8], al
	sub	r8, 1
	jnb	.L1218
	ret
.L1220:
	mov	r8d, r9d
	xor	r11d, r11d
	jmp	.L1195
	.p2align 4,,10
	.p2align 3
.L1194:
	lea	r11d, [0+r9*4]
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L1200:
	mov	r8d, DWORD PTR [rsi+rdx]
	mov	DWORD PTR [rcx+rdx], r8d
	add	rdx, 4
	cmp	rdx, r11
	jne	.L1200
	jmp	.L1201
	.p2align 4,,10
	.p2align 3
.L1265:
	mov	eax, eax
	test	edi, edi
	je	.L1268
.L1259:
	mov	r8, rax
.L1261:
	movzx	r10d, BYTE PTR [rsi+r8]
	mov	BYTE PTR [rcx+r8], r10b
	add	r8, 1
	cmp	r8d, edi
	jb	.L1261
	ret
.L1252:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	vzeroupper
	.p2align 5
	.p2align 4
	.p2align 3
.L1208:
	movzx	eax, BYTE PTR [rsi+r8]
	mov	BYTE PTR [rcx+r8], al
	add	r8, 1
	cmp	r8d, edi
	jb	.L1208
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L1221:
	.cfi_restore_state
	xor	edx, edx
	jmp	.L1202
.L1267:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	ret
.L1222:
	xor	r11d, r11d
	jmp	.L1211
.L1266:
	mov	eax, eax
	vzeroupper
	jmp	.L1259
.L1268:
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
	vxorps	xmm0, xmm0, xmm0
	vcvtusi2sd	xmm0, xmm0, edi
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
	vxorps	xmm0, xmm0, xmm0
	vcvtusi2ss	xmm0, xmm0, edi
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
	vxorps	xmm0, xmm0, xmm0
	vcvtusi2sd	xmm0, xmm0, rdi
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
	vxorps	xmm0, xmm0, xmm0
	vcvtusi2ss	xmm0, xmm0, rdi
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
	movzx	edx, di
	mov	eax, 1
	vpxor	xmm5, xmm5, xmm5
	mov	ecx, edi
	vmovdqa32	zmm1, ZMMWORD PTR .LC24[rip]
	vpbroadcastd	zmm0, edx
	vpbroadcastd	zmm3, eax
	mov	eax, 16
	vpsravd	zmm2, zmm0, zmm1
	vpandd	zmm4, zmm2, zmm3
	vpcmpd	k0, zmm4, zmm5, 4
	kortestw	k0, k0
	jne	.L1295
.L1275:
	vzeroupper
	ret
.L1295:
	mov	esi, edx
	shr	esi, 15
	jne	.L1279
	mov	eax, edx
	sar	eax, 14
	jne	.L1275
	mov	edi, edx
	shr	edi, 13
	jne	.L1280
	mov	r8d, edx
	shr	r8d, 12
	jne	.L1281
	mov	r9d, edx
	shr	r9d, 11
	jne	.L1282
	mov	r10d, edx
	shr	r10d, 10
	jne	.L1283
	mov	r11d, edx
	shr	r11d, 9
	jne	.L1284
	mov	eax, edx
	shr	eax, 8
	jne	.L1285
	mov	esi, edx
	shr	esi, 7
	jne	.L1286
	mov	edi, edx
	shr	edi, 6
	jne	.L1287
	mov	r8d, edx
	shr	r8d, 5
	jne	.L1288
	mov	r9d, edx
	shr	r9d, 4
	jne	.L1289
	mov	r10d, edx
	shr	r10d, 3
	jne	.L1290
	mov	r11d, edx
	shr	r11d, 2
	jne	.L1291
	shr	edx
	jne	.L1292
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	vzeroupper
	ret
.L1279:
	xor	eax, eax
	jmp	.L1275
.L1283:
	mov	eax, 5
	jmp	.L1275
.L1290:
	mov	eax, 12
	jmp	.L1275
.L1280:
	mov	eax, 2
	jmp	.L1275
.L1281:
	mov	eax, 3
	jmp	.L1275
.L1282:
	mov	eax, 4
	jmp	.L1275
.L1284:
	mov	eax, 6
	jmp	.L1275
.L1285:
	mov	eax, 7
	jmp	.L1275
.L1286:
	mov	eax, 8
	jmp	.L1275
.L1287:
	mov	eax, 9
	jmp	.L1275
.L1288:
	mov	eax, 10
	jmp	.L1275
.L1289:
	mov	eax, 11
	jmp	.L1275
.L1291:
	mov	eax, 13
	jmp	.L1275
.L1292:
	mov	eax, 14
	jmp	.L1275
	.cfi_endproc
.LFE116:
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117:
	.cfi_startproc
	movzx	edx, di
	mov	eax, 1
	vmovdqa32	zmm1, ZMMWORD PTR .LC6[rip]
	vpxor	xmm5, xmm5, xmm5
	vpbroadcastd	zmm0, edx
	vpbroadcastd	zmm3, eax
	mov	eax, 16
	vpsravd	zmm2, zmm0, zmm1
	vpandd	zmm4, zmm2, zmm3
	vpcmpd	k0, zmm4, zmm5, 4
	kortestw	k0, k0
	jne	.L1317
.L1296:
	vzeroupper
	ret
.L1317:
	test	dil, 1
	jne	.L1300
	test	dil, 2
	jne	.L1301
	test	dil, 4
	jne	.L1302
	test	dil, 8
	jne	.L1303
	test	dil, 16
	jne	.L1304
	test	dil, 32
	jne	.L1305
	test	dil, 64
	jne	.L1306
	test	dil, -128
	jne	.L1307
	test	edi, 256
	jne	.L1308
	test	edi, 512
	jne	.L1309
	test	edi, 1024
	jne	.L1310
	test	edi, 2048
	jne	.L1311
	test	edi, 4096
	jne	.L1312
	test	edi, 8192
	jne	.L1313
	and	edi, 16384
	jne	.L1314
	xor	eax, eax
	shr	edx, 15
	sete	al
	add	eax, 15
	vzeroupper
	ret
.L1300:
	xor	eax, eax
	jmp	.L1296
.L1305:
	mov	eax, 5
	jmp	.L1296
.L1312:
	mov	eax, 12
	jmp	.L1296
.L1301:
	mov	eax, 1
	jmp	.L1296
.L1302:
	mov	eax, 2
	jmp	.L1296
.L1303:
	mov	eax, 3
	jmp	.L1296
.L1304:
	mov	eax, 4
	jmp	.L1296
.L1306:
	mov	eax, 6
	jmp	.L1296
.L1307:
	mov	eax, 7
	jmp	.L1296
.L1308:
	mov	eax, 8
	jmp	.L1296
.L1309:
	mov	eax, 9
	jmp	.L1296
.L1310:
	mov	eax, 10
	jmp	.L1296
.L1311:
	mov	eax, 11
	jmp	.L1296
.L1313:
	mov	eax, 13
	jmp	.L1296
.L1314:
	mov	eax, 14
	jmp	.L1296
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.p2align 4
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
	vcomiss	xmm0, DWORD PTR .LC25[rip]
	jnb	.L1324
	vcvttss2si	rax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L1324:
	vsubss	xmm0, xmm0, DWORD PTR .LC25[rip]
	vcvttss2si	rax, xmm0
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
	vmovdqa32	zmm1, ZMMWORD PTR .LC6[rip]
	movzx	edi, di
	mov	eax, 1
	vpbroadcastd	zmm0, edi
	vpbroadcastd	zmm3, eax
	vpsravd	zmm2, zmm0, zmm1
	vpandd	zmm4, zmm2, zmm3
	vextracti32x8	ymm5, zmm4, 0x1
	vpaddd	ymm6, ymm5, ymm4
	vextracti32x4	xmm7, ymm6, 0x1
	vpaddd	xmm8, xmm7, xmm6
	vpsrldq	xmm9, xmm8, 8
	vpaddd	xmm10, xmm8, xmm9
	vpsrldq	xmm11, xmm10, 4
	vpaddd	xmm12, xmm10, xmm11
	vmovd	eax, xmm12
	and	eax, 1
	vzeroupper
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
	vmovdqa32	zmm1, ZMMWORD PTR .LC6[rip]
	movzx	edi, di
	mov	eax, 1
	vpbroadcastd	zmm0, edi
	vpbroadcastd	zmm3, eax
	vpsravd	zmm2, zmm0, zmm1
	vpandd	zmm4, zmm2, zmm3
	vextracti32x8	ymm5, zmm4, 0x1
	vpaddd	ymm6, ymm5, ymm4
	vextracti32x4	xmm7, ymm6, 0x1
	vpaddd	xmm8, xmm7, xmm6
	vpsrldq	xmm9, xmm8, 8
	vpaddd	xmm10, xmm8, xmm9
	vpsrldq	xmm11, xmm10, 4
	vpaddd	xmm12, xmm10, xmm11
	vmovd	eax, xmm12
	vzeroupper
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
	je	.L1327
	.p2align 5
	.p2align 4
	.p2align 3
.L1329:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L1329
.L1327:
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
	je	.L1332
	test	esi, esi
	je	.L1332
	.p2align 5
	.p2align 4
	.p2align 3
.L1334:
	mov	eax, esi
	and	eax, 1
	neg	eax
	and	eax, edi
	add	edi, edi
	add	edx, eax
	shr	esi
	jne	.L1334
.L1332:
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
	mov	r11d, 1
	cmp	esi, edi
	jb	.L1340
	jmp	.L1363
	.p2align 4,,10
	.p2align 3
.L1343:
	add	esi, esi
	add	r11d, r11d
	cmp	esi, edi
	jnb	.L1342
	test	r11d, r11d
	je	.L1342
.L1340:
	test	esi, esi
	jns	.L1343
.L1344:
	xor	eax, eax
	xor	r10d, r10d
	.p2align 6
	.p2align 4
	.p2align 3
.L1346:
	mov	r8d, edi
	mov	ecx, r10d
	sub	r8d, esi
	cmp	edi, esi
	setnb	r9b
	test	r9b, r9b
	cmovne	ecx, r11d
	cmovne	edi, r8d
	shr	esi
	or	eax, ecx
	shr	r11d
	jne	.L1346
.L1345:
	test	edx, edx
	cmovne	eax, edi
	ret
	.p2align 4,,10
	.p2align 3
.L1342:
	xor	eax, eax
	test	r11d, r11d
	jne	.L1344
	test	edx, edx
	cmovne	eax, edi
	ret
.L1363:
	mov	eax, edi
	sub	eax, esi
	cmp	edi, esi
	setnb	cl
	cmovnb	edi, eax
	movzx	eax, cl
	jmp	.L1345
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4, .-__udivmodsi4
	.p2align 4
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	vcomiss	xmm1, xmm0
	mov	eax, -1
	ja	.L1366
	xor	eax, eax
	vcomiss	xmm0, xmm1
	seta	al
.L1366:
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
	vcomisd	xmm1, xmm0
	mov	eax, -1
	ja	.L1369
	xor	eax, eax
	vcomisd	xmm0, xmm1
	seta	al
.L1369:
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
	js	.L1383
	je	.L1379
	xor	r9d, r9d
.L1376:
	mov	edx, 1
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L1378:
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
	jne	.L1378
	mov	eax, ecx
	neg	eax
	test	r9d, r9d
	cmove	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1383:
	neg	esi
	mov	r9d, 1
	jmp	.L1376
	.p2align 4,,10
	.p2align 3
.L1379:
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
	xor	r10d, r10d
	test	rdi, rdi
	jns	.L1385
	neg	rdi
	xor	eax, eax
	mov	r10d, 1
.L1385:
	test	rsi, rsi
	jns	.L1386
	neg	rsi
	mov	r10d, eax
.L1386:
	mov	eax, esi
	mov	ecx, edi
	mov	edx, 1
	cmp	esi, edi
	jb	.L1387
	jmp	.L1411
	.p2align 4,,10
	.p2align 3
.L1392:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	.L1398
	test	edx, edx
	je	.L1408
.L1387:
	test	eax, eax
	jns	.L1392
.L1390:
	xor	r11d, r11d
	xor	r9d, r9d
	.p2align 5
	.p2align 4
	.p2align 3
.L1393:
	mov	edi, ecx
	mov	esi, r9d
	sub	edi, eax
	cmp	ecx, eax
	setnb	r8b
	test	r8b, r8b
	cmovne	esi, edx
	cmovne	ecx, edi
	shr	eax
	or	r11d, esi
	shr	edx
	jne	.L1393
.L1391:
	mov	rax, r11
	neg	rax
	test	r10d, r10d
	cmove	rax, r11
	ret
	.p2align 4,,10
	.p2align 3
.L1398:
	test	edx, edx
	jne	.L1390
.L1408:
	xor	r11d, r11d
	mov	rax, r11
	neg	rax
	test	r10d, r10d
	cmove	rax, r11
	ret
.L1411:
	cmp	edi, esi
	setnb	sil
	movzx	r11d, sil
	jmp	.L1391
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
	jns	.L1414
	neg	rdi
	mov	r8d, 1
.L1414:
	mov	rax, rsi
	mov	ecx, edi
	mov	edx, 1
	neg	rax
	cmovns	rsi, rax
	mov	r9d, esi
	cmp	esi, edi
	jb	.L1415
	jmp	.L1438
	.p2align 4,,10
	.p2align 3
.L1420:
	add	r9d, r9d
	add	edx, edx
	cmp	r9d, ecx
	jnb	.L1425
	test	edx, edx
	je	.L1419
.L1415:
	test	r9d, r9d
	jns	.L1420
	.p2align 5
	.p2align 4
	.p2align 3
.L1436:
	mov	esi, ecx
	sub	esi, r9d
	cmp	ecx, r9d
	cmovnb	ecx, esi
	shr	r9d
	shr	edx
	jne	.L1436
.L1419:
	mov	edi, ecx
	mov	rax, rdi
	neg	rax
	test	r8d, r8d
	cmove	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1425:
	test	edx, edx
	jne	.L1436
	jmp	.L1419
.L1438:
	sub	ecx, esi
	cmp	edi, esi
	cmovb	ecx, edi
	jmp	.L1419
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.p2align 4
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	mov	r10d, edi
	mov	eax, edi
	mov	r8d, 1
	mov	edi, esi
	cmp	si, r10w
	jb	.L1441
	jmp	.L1507
	.p2align 4,,10
	.p2align 3
.L1444:
	lea	esi, [rdi+rdi]
	lea	ecx, [r8+r8]
	cmp	si, ax
	jnb	.L1443
	test	cx, cx
	je	.L1443
	mov	r8d, ecx
	mov	edi, esi
.L1441:
	test	di, di
	jns	.L1444
	mov	eax, r10d
	mov	r9d, r8d
	sub	eax, edi
	cmp	di, r10w
	cmova	eax, r10d
	xor	ecx, ecx
	cmp	r10w, di
	mov	r10d, edi
	cmovnb	ecx, r8d
	shr	r10w
	shr	r9w
	mov	r11d, ecx
	je	.L1446
.L1448:
	mov	ecx, eax
	mov	esi, 0
	sub	ecx, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, edi
	cmove	r9d, esi
	cmovne	eax, ecx
	shr	r10w, 2
	mov	ecx, r9d
	mov	r9d, r8d
	or	ecx, r11d
	shr	r9w, 2
	je	.L1446
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, edi
	cmove	r9d, esi
	cmovne	eax, r11d
	shr	r10w, 3
	or	ecx, r9d
	mov	r9d, r8d
	shr	r9w, 3
	je	.L1446
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, edi
	cmove	r9d, esi
	cmovne	eax, r11d
	shr	r10w, 4
	or	ecx, r9d
	mov	r9d, r8d
	shr	r9w, 4
	je	.L1446
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, edi
	cmove	r9d, esi
	cmovne	eax, r11d
	shr	r10w, 5
	or	ecx, r9d
	mov	r9d, r8d
	shr	r9w, 5
	je	.L1446
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, edi
	cmove	r9d, esi
	cmovne	eax, r11d
	shr	r10w, 6
	or	ecx, r9d
	mov	r9d, r8d
	shr	r9w, 6
	je	.L1446
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, edi
	cmove	r9d, esi
	cmovne	eax, r11d
	shr	r10w, 7
	or	ecx, r9d
	mov	r9d, r8d
	shr	r9w, 7
	je	.L1446
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, edi
	cmove	r9d, esi
	cmovne	eax, r11d
	shr	r10w, 8
	or	ecx, r9d
	mov	r9d, r8d
	shr	r9w, 8
	je	.L1446
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, edi
	cmove	r9d, esi
	cmovne	eax, r11d
	shr	r10w, 9
	or	ecx, r9d
	mov	r9d, r8d
	shr	r9w, 9
	je	.L1446
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, edi
	cmove	r9d, esi
	cmovne	eax, r11d
	shr	r10w, 10
	or	ecx, r9d
	mov	r9d, r8d
	shr	r9w, 10
	je	.L1446
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, edi
	cmove	r9d, esi
	cmovne	eax, r11d
	shr	r10w, 11
	or	ecx, r9d
	mov	r9d, r8d
	shr	r9w, 11
	je	.L1446
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, edi
	cmove	r9d, esi
	cmovne	eax, r11d
	shr	r10w, 12
	or	ecx, r9d
	mov	r9d, r8d
	shr	r9w, 12
	je	.L1446
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, edi
	cmove	r9d, esi
	cmovne	eax, r11d
	shr	r10w, 13
	or	ecx, r9d
	mov	r9d, r8d
	shr	r9w, 13
	je	.L1446
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, edi
	cmove	r9d, esi
	cmovne	eax, r11d
	shr	r10w, 14
	or	ecx, r9d
	mov	r9d, r8d
	shr	r9w, 14
	je	.L1446
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	cmove	r9d, esi
	cmovne	eax, r11d
	shr	di, 15
	or	ecx, r9d
	test	r8w, r8w
	jns	.L1446
	mov	r8d, eax
	sub	r8d, edi
	cmp	ax, di
	setnb	dil
	cmovnb	eax, r8d
	movzx	esi, dil
	or	ecx, esi
.L1446:
	test	edx, edx
	cmove	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1443:
	mov	eax, r10d
	test	cx, cx
	je	.L1446
	sub	eax, esi
	cmp	si, r10w
	cmova	eax, r10d
	xor	r11d, r11d
	cmp	r10w, si
	cmovnb	r11d, ecx
	and	r8w, 32767
	and	di, 32767
	mov	r9d, r8d
	mov	r10d, edi
	mov	r8d, ecx
	mov	edi, esi
	jmp	.L1448
.L1507:
	sub	eax, esi
	cmp	si, r10w
	sete	cl
	cmovne	eax, r10d
	movzx	ecx, cl
	jmp	.L1446
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	mov	r11d, 1
	cmp	rsi, rdi
	jb	.L1509
	jmp	.L1532
	.p2align 4,,10
	.p2align 3
.L1512:
	add	rsi, rsi
	add	r11, r11
	cmp	rsi, rdi
	jnb	.L1511
	test	r11, r11
	je	.L1511
.L1509:
	test	esi, 2147483648
	je	.L1512
.L1513:
	xor	eax, eax
	xor	r10d, r10d
	.p2align 6
	.p2align 4
	.p2align 3
.L1515:
	mov	r8, rdi
	mov	rcx, r10
	sub	r8, rsi
	cmp	rdi, rsi
	setnb	r9b
	test	r9b, r9b
	cmovne	rcx, r11
	cmovne	rdi, r8
	shr	rsi
	or	rax, rcx
	shr	r11
	jne	.L1515
.L1514:
	test	edx, edx
	cmovne	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1511:
	xor	eax, eax
	test	r11, r11
	jne	.L1513
	test	edx, edx
	cmovne	rax, rdi
	ret
.L1532:
	mov	rax, rdi
	sub	rax, rsi
	cmp	rdi, rsi
	setnb	cl
	cmovnb	rdi, rax
	movzx	eax, cl
	jmp	.L1514
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
	je	.L1536
	sub	esi, 32
	xor	eax, eax
	shlx	ecx, edi, esi
.L1537:
	sal	rcx, 32
	or	rax, rcx
.L1535:
	ret
	.p2align 4,,10
	.p2align 3
.L1536:
	mov	rax, rdi
	test	esi, esi
	je	.L1535
	mov	edx, 32
	shlx	eax, edi, esi
	sub	edx, esi
	shrx	ecx, edi, edx
	sar	rdi, 32
	shlx	edi, edi, esi
	or	ecx, edi
	jmp	.L1537
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
	je	.L1542
	sub	edx, 64
	xor	ecx, ecx
	shlx	rdi, rdi, rdx
	mov	rax, rcx
	mov	rdx, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1542:
	test	edx, edx
	je	.L1545
	mov	eax, 64
	shlx	rcx, rdi, rdx
	shlx	rsi, rsi, rdx
	sub	eax, edx
	shrx	rdi, rdi, rax
	or	rdi, rsi
	mov	rax, rcx
	mov	rdx, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1545:
	mov	rax, rdi
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
	je	.L1547
	sar	rdi, 32
	sub	esi, 32
	mov	eax, edi
	sarx	r8d, edi, esi
	sar	eax, 31
.L1548:
	sal	rax, 32
	or	rax, r8
.L1546:
	ret
	.p2align 4,,10
	.p2align 3
.L1547:
	mov	rax, rdi
	test	esi, esi
	je	.L1546
	mov	rdx, rdi
	mov	ecx, 32
	shrx	edi, edi, esi
	sar	rdx, 32
	sub	ecx, esi
	shlx	r8d, edx, ecx
	sarx	eax, edx, esi
	or	r8d, edi
	jmp	.L1548
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
	je	.L1553
	mov	rcx, rsi
	sub	edx, 64
	sar	rcx, 63
	sarx	rsi, rsi, rdx
	mov	rax, rsi
	mov	rdx, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L1553:
	test	edx, edx
	je	.L1556
	mov	eax, 64
	sarx	rcx, rsi, rdx
	shrx	rdi, rdi, rdx
	sub	eax, edx
	mov	rdx, rcx
	shlx	rsi, rsi, rax
	or	rsi, rdi
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1556:
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
	xor	ecx, ecx
	mov	eax, 16
	cmp	edi, 65535
	mov	esi, 8
	setbe	cl
	mov	r10d, 4
	sal	ecx, 4
	sub	eax, ecx
	shrx	edx, edi, eax
	xor	edi, edi
	test	dh, -1
	mov	eax, 2
	sete	dil
	xor	r9d, r9d
	sal	edi, 3
	sub	esi, edi
	add	ecx, edi
	shrx	r8d, edx, esi
	test	r8b, -16
	mov	edx, eax
	sete	r9b
	sal	r9d, 2
	sub	r10d, r9d
	lea	esi, [r9+rcx]
	xor	ecx, ecx
	shrx	r11d, r8d, r10d
	test	r11b, 12
	sete	cl
	xor	edi, edi
	add	ecx, ecx
	sub	edx, ecx
	shrx	r8d, r11d, edx
	sub	eax, r8d
	and	r8d, 2
	cmovne	eax, edi
	add	ecx, esi
	add	eax, ecx
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
	sete	al
	xor	ecx, ecx
	lea	edx, [rax-1]
	movsx	r8, edx
	and	r8, rsi
	test	rsi, rsi
	cmovne	rdi, rcx
	xor	esi, esi
	sal	eax, 6
	or	r8, rdi
	lzcnt	rsi, r8
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
	jl	.L1561
	mov	eax, 2
	jg	.L1561
	xor	eax, eax
	cmp	edi, esi
	jb	.L1561
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L1561:
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
	jl	.L1567
	mov	eax, 1
	jg	.L1567
	mov	eax, -1
	cmp	edi, esi
	jb	.L1567
	xor	eax, eax
	cmp	esi, edi
	setb	al
.L1567:
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
	jl	.L1572
	mov	eax, 2
	jg	.L1572
	xor	eax, eax
	cmp	rdi, rdx
	jb	.L1572
	xor	eax, eax
	cmp	rdx, rdi
	setb	al
	add	eax, 1
.L1572:
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
	xor	ecx, ecx
	test	di, di
	sete	cl
	xor	eax, eax
	sal	ecx, 4
	shrx	esi, edi, ecx
	test	sil, sil
	sete	al
	xor	r8d, r8d
	sal	eax, 3
	add	ecx, eax
	shrx	edi, esi, eax
	test	dil, 15
	sete	r8b
	xor	r11d, r11d
	sal	r8d, 2
	shrx	r9d, edi, r8d
	test	r9b, 3
	lea	r10d, [r8+rcx]
	mov	ecx, 2
	sete	r11b
	add	r11d, r11d
	shrx	edx, r9d, r11d
	and	edx, 3
	add	r11d, r10d
	mov	eax, edx
	shr	edx
	not	eax
	sub	ecx, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	eax, r11d
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
	tzcnt	r9, rdx
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
	jne	.L1581
	xor	eax, eax
	xor	edx, edx
	tzcnt	rax, rsi
	add	eax, 65
	test	rsi, rsi
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1581:
	tzcnt	rdi, rdi
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
	je	.L1585
	shr	rdi, 32
	sub	esi, 32
	xor	eax, eax
	shrx	r8d, edi, esi
.L1586:
	sal	rax, 32
	or	rax, r8
.L1584:
	ret
	.p2align 4,,10
	.p2align 3
.L1585:
	mov	rax, rdi
	test	esi, esi
	je	.L1584
	mov	rdx, rdi
	mov	ecx, 32
	shrx	edi, edi, esi
	shr	rdx, 32
	sub	ecx, esi
	shlx	r8d, edx, ecx
	shrx	eax, edx, esi
	or	r8d, edi
	jmp	.L1586
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
	je	.L1591
	sub	edx, 64
	xor	ecx, ecx
	shrx	rsi, rsi, rdx
	mov	rdx, rcx
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1591:
	test	edx, edx
	je	.L1594
	mov	eax, 64
	shrx	rcx, rsi, rdx
	shrx	rdi, rdi, rdx
	sub	eax, edx
	mov	rdx, rcx
	shlx	rsi, rsi, rax
	or	rsi, rdi
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1594:
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
	imul	rcx, rdi
	mov	r11, rsi
	mov	esi, edx
	mov	r8, rax
	mov	r9, rdi
	mov	rdi, rdx
	imul	r8, rsi
	shr	r9, 32
	shr	rdi, 32
	imul	rsi, r9
	imul	rax, rdi
	mov	r10, r8
	imul	r9, rdi
	shr	r10, 32
	imul	rdx, r11
	mov	r11d, r8d
	add	rsi, r10
	mov	r10d, esi
	shr	rsi, 32
	add	rax, r10
	add	rsi, r9
	mov	r8, rax
	shr	rax, 32
	add	rsi, rax
	sal	r8, 32
	add	rcx, rsi
	add	r11, r8
	add	rcx, rdx
	mov	rax, r11
	mov	rdx, rcx
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
	bextr	rax, rdi, 8224
	xor	eax, edi
	mov	edi, 27030
	mov	edx, eax
	shr	edx, 16
	xor	edx, eax
	mov	ecx, edx
	shr	ecx, 8
	xor	ecx, edx
	mov	esi, ecx
	shr	esi, 4
	xor	esi, ecx
	and	esi, 15
	sarx	eax, edi, esi
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
	mov	r8d, 27030
	xor	rax, rsi
	mov	rdi, rax
	sar	rdi, 32
	xor	edi, eax
	mov	edx, edi
	shr	edx, 16
	xor	edx, edi
	mov	ecx, edx
	shr	ecx, 8
	xor	ecx, edx
	mov	esi, ecx
	shr	esi, 4
	xor	esi, ecx
	and	esi, 15
	sarx	eax, r8d, esi
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
	mov	esi, 27030
	shr	edx, 16
	xor	edx, edi
	mov	eax, edx
	shr	eax, 8
	xor	eax, edx
	mov	ecx, eax
	shr	ecx, 4
	xor	ecx, eax
	and	ecx, 15
	sarx	eax, esi, ecx
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
	vmovsd	xmm2, QWORD PTR .LC23[rip]
	mov	eax, edi
	vmovapd	xmm1, xmm2
	test	dil, 1
	je	.L1608
	.p2align 4
	.p2align 3
.L1610:
	vmulsd	xmm1, xmm1, xmm0
.L1608:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1609
	vmulsd	xmm0, xmm0, xmm0
	test	al, 1
	jne	.L1610
.L1614:
	vmulsd	xmm0, xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1610
	jmp	.L1614
	.p2align 4,,10
	.p2align 3
.L1609:
	test	edi, edi
	jns	.L1607
	vdivsd	xmm1, xmm2, xmm1
.L1607:
	vmovapd	xmm0, xmm1
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
	vmovss	xmm2, DWORD PTR .LC26[rip]
	mov	eax, edi
	vmovaps	xmm1, xmm2
	test	dil, 1
	je	.L1616
	.p2align 4
	.p2align 3
.L1618:
	vmulss	xmm1, xmm1, xmm0
.L1616:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1617
	vmulss	xmm0, xmm0, xmm0
	test	al, 1
	jne	.L1618
.L1622:
	vmulss	xmm0, xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1618
	jmp	.L1622
	.p2align 4,,10
	.p2align 3
.L1617:
	test	edi, edi
	jns	.L1615
	vdivss	xmm1, xmm2, xmm1
.L1615:
	vmovaps	xmm0, xmm1
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
	jb	.L1623
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1623
	xor	eax, eax
	cmp	edi, esi
	jb	.L1623
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L1623:
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
	jb	.L1629
	mov	eax, 1
	cmp	ecx, edx
	jb	.L1629
	mov	eax, -1
	cmp	edi, esi
	jb	.L1629
	xor	eax, eax
	cmp	esi, edi
	setb	al
.L1629:
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
	jb	.L1634
	mov	eax, 2
	cmp	rcx, rsi
	jb	.L1634
	xor	eax, eax
	cmp	rdi, rdx
	jb	.L1634
	xor	eax, eax
	cmp	rdx, rdi
	setb	al
	add	eax, 1
.L1634:
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
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC10:
	.long	-8388609
	.align 4
.LC11:
	.long	2139095039
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC12:
	.long	-1
	.long	-1048577
	.align 8
.LC13:
	.long	-1
	.long	2146435071
	.section	.rodata.cst16,"aM",@progbits,16
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
	.section	.rodata.cst4
	.align 4
.LC17:
	.long	1056964608
	.section	.rodata.cst8
	.align 8
.LC18:
	.long	0
	.long	1073741824
	.align 8
.LC19:
	.long	0
	.long	1071644672
	.section	.rodata.cst16
	.align 16
.LC20:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
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
	.section	.rodata
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
	.section	.rodata.cst4
	.align 4
.LC25:
	.long	1191182336
	.align 4
.LC26:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
