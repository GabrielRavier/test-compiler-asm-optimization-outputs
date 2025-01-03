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
	mov	r11, rdi
	mov	rcx, rsi
	cmp	rsi, rdi
	jnb	.L5
	test	rdx, rdx
	je	.L6
	lea	r23, [rdx-1]
	cmp	r23, 30
	jbe	.L52
	lea	r24, [rsi-2+rdx]
	sub	r25, rdi, r24
	lea	r26, [r25+62+r23]
	cmp	r26, 62
	jbe	.L52
	lea	r27, [rsi+rdx]
	lea	r28, [rdi+rdx]
	cmp	r23, 62
	jbe	.L26
	lea	r30, [rdx-64]
	xor	eax, eax
	lea	r31, [rsi+r30]
	and	rsi, rdx, -64
	add	r30, rdi
	neg	rsi
	.p2align 5
	.p2align 4
	.p2align 3
.L9:
	vmovdqu8	zmm2, ZMMWORD PTR [r31+rax]
	vmovdqu8	ZMMWORD PTR [r30+rax], zmm2
	sub	rax, 64
	cmp	rax, rsi
	jne	.L9
	add	r27, rax
	add	r28, rax
	and	r29d, edx, 63
	and	edx, 63
	je	.L56
	lea	rdi, [r29-1]
	mov	rdx, r29
	cmp	rdi, 30
	jbe	.L11
.L8:
	vmovdqu8	ymm3, YMMWORD PTR [rcx-32+rdx]
	and	rcx, rdx, -32
	sub	r27, rcx
	sub	r28, rcx
	sub	r29, rcx
	vmovdqu8	YMMWORD PTR [r11-32+rdx], ymm3
	and	edx, 31
	je	.L56
.L11:
	sub	r27, r29
	sub	r9, r28, r29
	.p2align 5
	.p2align 4
	.p2align 3
.L13:
	movzx	r8d, BYTE PTR [r27-1+r29]
	mov	BYTE PTR [r9-1+r29], r8b
	sub	r29, 1
	jne	.L13
.L56:
	vzeroupper
.L6:
	mov	rax, r11
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	cmp	rdi, rsi
	je	.L6
	test	rdx, rdx
	je	.L6
	lea	rsi, [rdx-1]
	cmp	rsi, 30
	jbe	.L28
	lea	rax, [rcx+1]
	sub	rdi, rax
	cmp	rdi, 62
	jbe	.L28
	cmp	rsi, 62
	jbe	.L29
	and	r16, rdx, -64
	xor	r17d, r17d
	.p2align 5
	.p2align 4
	.p2align 3
.L18:
	vmovdqu8	zmm0, ZMMWORD PTR [rcx+r17]
	vmovdqu8	ZMMWORD PTR [r11+r17], zmm0
	add	r17, 64
	cmp	r17, r16
	jne	.L18
	lea	r9, [rcx+r16]
	lea	r8, [r11+r16]
	sub	r10, rdx, r16
	je	.L56
	lea	r18, [r10-1]
	mov	rdx, r10
	cmp	r18, 30
	jbe	.L21
.L17:
	and	r19, rdx, -32
	vmovdqu8	ymm1, YMMWORD PTR [rcx+r16]
	add	r9, r19
	add	r8, r19
	sub	r10, r19
	and	edx, 31
	vmovdqu8	YMMWORD PTR [r11+r16], ymm1
	je	.L56
.L21:
	xor	r20d, r20d
	.p2align 5
	.p2align 4
	.p2align 3
.L23:
	movzx	edx, BYTE PTR [r9+r20]
	mov	BYTE PTR [r8+r20], dl
	add	r20, 1
	cmp	r20, r10
	jne	.L23
	vzeroupper
	jmp	.L6
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L57:
	sub	r23, 1
.L52:
	movzx	r10d, BYTE PTR [rcx-1+rdx]
	mov	BYTE PTR [r11-1+rdx], r10b
	mov	rdx, r23
	test	r23, r23
	jne	.L57
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L28:
	xor	r21d, r21d
	.p2align 5
	.p2align 4
	.p2align 3
.L51:
	movzx	r22d, BYTE PTR [rcx+r21]
	mov	BYTE PTR [r11+r21], r22b
	add	r21, 1
	cmp	rdx, r21
	jne	.L51
	jmp	.L6
.L26:
	mov	r29, rdx
	jmp	.L8
.L29:
	mov	r9, rcx
	mov	r8, r11
	mov	r10, rdx
	xor	r16d, r16d
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
	cmp	rdx, 1
	jle	.L192
	shr	r10, rdx, 1
	lea	rax, [rdx-2]
	lea	r9, [r10-1]
	cmp	rax, 61
	jbe	.L172
	shr	r11, rdx, 6
	and	r17, rdx, -64
	xor	r18d, r18d
	vmovdqa64	zmm1, ZMMWORD PTR .LC0[rip]
	.p2align 5
	.p2align 4
	.p2align 3
.L168:
	vmovdqu8	zmm0, ZMMWORD PTR [rdi+r18]
	vpshufb	zmm2, zmm0, zmm1
	vmovdqu8	ZMMWORD PTR [rsi+r18], zmm2
	add	r18, 64
	cmp	r18, r17
	jne	.L168
	sal	r8, r11, 5
	sal	r16, r11, 6
	neg	r19, r8
	lea	rcx, [rsi+r16]
	add	r16, rdi
	lea	rdx, [rdx+r19*2]
	cmp	r8, r10
	je	.L191
.L167:
	sub	r9, r8
	lea	r20, [r9+1]
	cmp	r9, 14
	jbe	.L170
	vmovdqu8	ymm3, YMMWORD PTR [rdi+r8*2]
	vpshufb	ymm4, ymm3, YMMWORD PTR .LC1[rip]
	vmovdqu8	YMMWORD PTR [rsi+r8*2], ymm4
	and	rsi, r20, -16
	lea	rdi, [rsi+rsi]
	neg	rsi
	add	rcx, rdi
	add	r16, rdi
	lea	rdx, [rdx+rsi*2]
	and	r20d, 15
	je	.L191
.L170:
	movbe	r21w, WORD PTR [r16]
	mov	WORD PTR [rcx], r21w
	cmp	rdx, 3
	jle	.L191
	movbe	r22w, WORD PTR [r16+2]
	mov	WORD PTR [rcx+2], r22w
	cmp	rdx, 5
	jle	.L191
	movbe	r23w, WORD PTR [r16+4]
	mov	WORD PTR [rcx+4], r23w
	cmp	rdx, 7
	jle	.L191
	movbe	r24w, WORD PTR [r16+6]
	mov	WORD PTR [rcx+6], r24w
	cmp	rdx, 9
	jle	.L191
	movbe	r25w, WORD PTR [r16+8]
	mov	WORD PTR [rcx+8], r25w
	cmp	rdx, 11
	jle	.L191
	movbe	r26w, WORD PTR [r16+10]
	mov	WORD PTR [rcx+10], r26w
	cmp	rdx, 13
	jle	.L191
	movbe	r27w, WORD PTR [r16+12]
	mov	WORD PTR [rcx+12], r27w
	cmp	rdx, 15
	jle	.L191
	movbe	r28w, WORD PTR [r16+14]
	mov	WORD PTR [rcx+14], r28w
	cmp	rdx, 17
	jle	.L191
	movbe	r29w, WORD PTR [r16+16]
	mov	WORD PTR [rcx+16], r29w
	cmp	rdx, 19
	jle	.L191
	movbe	r30w, WORD PTR [r16+18]
	mov	WORD PTR [rcx+18], r30w
	cmp	rdx, 21
	jle	.L191
	movbe	r31w, WORD PTR [r16+20]
	mov	WORD PTR [rcx+20], r31w
	cmp	rdx, 23
	jle	.L191
	movbe	r10w, WORD PTR [r16+22]
	mov	WORD PTR [rcx+22], r10w
	cmp	rdx, 25
	jle	.L191
	movbe	r9w, WORD PTR [r16+24]
	mov	WORD PTR [rcx+24], r9w
	cmp	rdx, 27
	jle	.L191
	movbe	ax, WORD PTR [r16+26]
	mov	WORD PTR [rcx+26], ax
	cmp	rdx, 29
	jle	.L191
	movbe	dx, WORD PTR [r16+28]
	mov	WORD PTR [rcx+28], dx
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L191:
	vzeroupper
.L192:
	ret
.L172:
	mov	rcx, rsi
	mov	r16, rdi
	xor	r8d, r8d
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
	and	eax, edi, 127
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
	and	edx, eax, 512
	fxam
	fnstsw	ax
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
	and	edx, eax, 512
	fxam
	fnstsw	ax
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
	and	ecx, eax, 63
	add	rdx, 1
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
	pushp	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push2p	r14, r13
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	push2p	r12, rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 12, -40
	.cfi_offset 6, -48
	pushp	rbx
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
	popp	rbx
	.cfi_def_cfa_offset 48
	pop2p	rbp, r12
	.cfi_restore 12
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	pop2p	r13, r14
	.cfi_restore 14
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	popp	r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L315:
	.cfi_restore_state
	mov	rcx, QWORD PTR [rsp+16]
	lea	rax, [rbp+1]
	imul	rbp, rbx
	add	r14, QWORD PTR [rsp+24], rbp
	mov	QWORD PTR [rcx], rax
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
	pushp	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push2p	r14, r13
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	push2p	r12, rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 12, -40
	.cfi_offset 6, -48
	pushp	rbx
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
	popp	rbx
	.cfi_def_cfa_offset 48
	pop2p	rbp, r12
	.cfi_restore 12
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	pop2p	r13, r14
	.cfi_restore 14
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	popp	r15
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
	neg	eax, edi
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
	xor	r11d, r11d
	.p2align 6
	.p2align 4
	.p2align 3
.L355:
	movsx	r16d, BYTE PTR [r8+1]
	lea	r10d, [r11+r11*4]
	sub	edx, 48
	add	r8, 1
	movsx	eax, dl
	add	r10d, r10d
	mov	edx, r16d
	sub	r16d, 48
	sub	r11d, r10d, eax
	cmp	r16d, 9
	jbe	.L355
	sub	eax, r10d
	test	r9d, r9d
	cmovne	eax, r11d
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
	xor	r11d, r11d
	.p2align 6
	.p2align 4
	.p2align 3
.L384:
	movsx	r16d, BYTE PTR [r8+1]
	lea	r10, [r11+r11*4]
	sub	edx, 48
	add	r8, 1
	movsx	rax, dl
	add	r10, r10
	mov	edx, r16d
	sub	r16d, 48
	sub	r11, r10, rax
	cmp	r16d, 9
	jbe	.L384
	sub	rax, r10
	test	r9d, r9d
	cmovne	rax, r11
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
	jne	.L408
	lea	r8, [rdi+1]
	movsx	edi, BYTE PTR [rdi+1]
	mov	r9d, 1
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	ja	.L415
.L409:
	xor	r11d, r11d
	.p2align 6
	.p2align 4
	.p2align 3
.L412:
	movsx	r16d, BYTE PTR [r8+1]
	lea	r10, [r11+r11*4]
	sub	edx, 48
	add	r8, 1
	movsx	rax, dl
	add	r10, r10
	mov	edx, r16d
	sub	r16d, 48
	sub	r11, r10, rax
	cmp	r16d, 9
	jbe	.L412
	sub	rax, r10
	test	r9d, r9d
	cmovne	rax, r11
	ret
	.p2align 4,,10
	.p2align 3
.L408:
	sub	eax, 48
	mov	r8, rdi
	xor	r9d, r9d
	cmp	eax, 9
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
	pushp	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push2p	r14, r13
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	push2p	r12, rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 12, -40
	.cfi_offset 6, -48
	pushp	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 24
	.cfi_def_cfa_offset 80
	mov	QWORD PTR [rsp+8], rdi
	test	rdx, rdx
	je	.L429
	mov	rbp, rsi
	mov	rbx, rdx
	mov	r12, rcx
	mov	r14, r8
	jmp	.L432
	.p2align 4,,10
	.p2align 3
.L442:
	je	.L428
	sub	rbx, 1
	lea	rbp, [r15+r12]
	sub	rbx, r13
	test	rbx, rbx
	je	.L429
.L432:
	shr	r13, rbx, 1
	mov	rdi, QWORD PTR [rsp+8]
	mov	r15, r13
	imul	r15, r12
	add	r15, rbp
	mov	rsi, r15
	call	r14
	test	eax, eax
	jns	.L442
	mov	rbx, r13
	test	rbx, rbx
	jne	.L432
.L429:
	xor	r15d, r15d
.L428:
	add	rsp, 24
	.cfi_def_cfa_offset 56
	mov	rax, r15
	popp	rbx
	.cfi_def_cfa_offset 48
	pop2p	rbp, r12
	.cfi_restore 12
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	pop2p	r13, r14
	.cfi_restore 14
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	popp	r15
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
	pushp	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push2p	r14, r13
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	mov	r14, r8
	mov	r13d, edx
	push2p	r12, rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 12, -40
	.cfi_offset 6, -48
	mov	rbp, rsi
	mov	r12, rcx
	pushp	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 24
	.cfi_def_cfa_offset 80
	mov	QWORD PTR [rsp], rdi
	mov	QWORD PTR [rsp+8], r9
	test	edx, edx
	je	.L448
	.p2align 4
	.p2align 3
.L456:
	sar	r15d, r13d, 1
	mov	rdx, QWORD PTR [rsp+8]
	mov	rdi, QWORD PTR [rsp]
	movsx	rbx, r15d
	imul	rbx, r12
	add	rbx, rbp
	mov	rsi, rbx
	call	r14
	test	eax, eax
	je	.L443
	jle	.L446
	lea	ecx, [r13-1]
	lea	rbp, [rbx+r12]
	sar	r13d, ecx, 1
	jne	.L456
.L448:
	xor	ebx, ebx
.L443:
	add	rsp, 24
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	mov	rax, rbx
	popp	rbx
	.cfi_def_cfa_offset 48
	pop2p	rbp, r12
	.cfi_restore 12
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	pop2p	r13, r14
	.cfi_restore 14
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	popp	r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L446:
	.cfi_restore_state
	test	r15d, r15d
	je	.L448
	mov	r13d, r15d
	jmp	.L456
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
	neg	rax, rdi
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
	neg	rax, rdi
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
	neg	rax, rdi
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
	jmp	.L475
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L477:
	cmp	esi, eax
	je	.L476
	add	rdi, 4
.L475:
	mov	eax, DWORD PTR [rdi]
	test	eax, eax
	jne	.L477
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L476:
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
	je	.L479
	jmp	.L480
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L481:
	mov	edx, DWORD PTR [rdi+rax]
	add	rax, 4
	mov	ecx, DWORD PTR [rsi-4+rax]
	cmp	edx, ecx
	jne	.L480
.L479:
	test	edx, edx
	jne	.L481
.L480:
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
.L488:
	mov	ecx, DWORD PTR [rsi+rdx]
	mov	DWORD PTR [rax+rdx], ecx
	add	rdx, 4
	test	ecx, ecx
	jne	.L488
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
	je	.L493
	mov	rax, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L492:
	mov	edx, DWORD PTR [rax+4]
	add	rax, 4
	test	edx, edx
	jne	.L492
	sub	rax, rdi
	sar	rax, 2
	ret
	.p2align 4,,10
	.p2align 3
.L493:
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
	jne	.L496
	jmp	.L502
	.p2align 4,,10
	.p2align 3
.L509:
	test	eax, eax
	je	.L500
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	je	.L502
.L496:
	mov	eax, DWORD PTR [rdi]
	cmp	DWORD PTR [rsi], eax
	je	.L509
.L500:
	mov	edx, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], edx
	mov	ecx, -1
	setg	sil
	movzx	eax, sil
	cmovl	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L502:
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
	jne	.L511
	jmp	.L514
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L513:
	add	rdi, 4
	sub	rdx, 1
	je	.L514
.L511:
	cmp	DWORD PTR [rdi], esi
	jne	.L513
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L514:
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
	jne	.L519
	jmp	.L524
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L521:
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	je	.L524
.L519:
	mov	eax, DWORD PTR [rdi]
	cmp	eax, DWORD PTR [rsi]
	je	.L521
	cmp	eax, DWORD PTR [rsi]
	mov	edx, -1
	setg	cl
	movzx	eax, cl
	cmovl	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L524:
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
	je	.L536
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	sal	rdx, 2
	call	memcpy
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L536:
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
	je	.L583
	lea	r10, [0+rdx*4]
	lea	r11, [rdx-1]
	sub	rdx, rdi, rcx
	cmp	rdx, r10
	jnb	.L640
	test	rsi, rsi
	je	.L583
	cmp	r11, 6
	jbe	.L622
	sub	rdx, rdi, rcx
	add	rdx, 60
	cmp	rdx, 56
	jbe	.L622
	cmp	r11, 14
	jbe	.L562
	lea	r16, [r10-64]
	xor	r18d, r18d
	lea	r17, [rcx+r16]
	add	r16, rdi
	shr	rdi, rsi, 4
	neg	rdi
	sal	rdi, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L546:
	vmovdqu32	zmm2, ZMMWORD PTR [r17+r18]
	vmovdqu32	ZMMWORD PTR [r16+r18], zmm2
	sub	r18, 64
	cmp	r18, rdi
	jne	.L546
	and	r8, rsi, -16
	sub	r11, r8
	test	sil, 15
	je	.L639
	sub	rsi, r8
	lea	r9, [rsi-1]
	cmp	r9, 6
	jbe	.L549
.L545:
	neg	r8
	and	r19, rsi, -8
	lea	r10, [r10-32+r8*4]
	sub	r11, r19
	and	esi, 7
	vmovdqu	ymm3, YMMWORD PTR [rcx+r10]
	vmovdqu	YMMWORD PTR [rax+r10], ymm3
	je	.L639
.L549:
	mov	esi, DWORD PTR [rcx+r11*4]
	lea	r20, [r11-1]
	mov	DWORD PTR [rax+r11*4], esi
	test	r11, r11
	je	.L639
	mov	r22d, DWORD PTR [rcx+r20*4]
	lea	r21, [0+r20*4]
	mov	DWORD PTR [rax+r20*4], r22d
	test	r20, r20
	je	.L639
	mov	r23d, DWORD PTR [rcx-4+r21]
	mov	DWORD PTR [rax-4+r21], r23d
	cmp	r11, 2
	je	.L639
	mov	r24d, DWORD PTR [rcx-8+r21]
	mov	DWORD PTR [rax-8+r21], r24d
	cmp	r11, 3
	je	.L639
	mov	r25d, DWORD PTR [rcx-12+r21]
	mov	DWORD PTR [rax-12+r21], r25d
	cmp	r11, 4
	je	.L639
	mov	r26d, DWORD PTR [rcx-16+r21]
	mov	DWORD PTR [rax-16+r21], r26d
	cmp	r11, 5
	je	.L639
	mov	ecx, DWORD PTR [rcx-20+r21]
	mov	DWORD PTR [rax-20+r21], ecx
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L640:
	test	rsi, rsi
	je	.L641
	cmp	r11, 6
	jbe	.L564
	lea	rdi, [rcx+4]
	sub	r8, rax, rdi
	cmp	r8, 56
	jbe	.L564
	cmp	r11, 14
	jbe	.L565
	shr	r9, rsi, 4
	xor	r19d, r19d
	xor	r20d, r20d
	.p2align 5
	.p2align 4
	.p2align 3
.L555:
	vmovdqu32	zmm0, ZMMWORD PTR [rcx+r19]
	add	r20, 1
	vmovdqu32	ZMMWORD PTR [rax+r19], zmm0
	add	r19, 64
	cmp	r9, r20
	jne	.L555
	and	r18, rsi, -16
	lea	r17, [0+r18*4]
	sub	r11, r18
	lea	r16, [rcx+r17]
	add	r17, rax
	test	sil, 15
	je	.L639
	sub	rsi, r18
	lea	r21, [rsi-1]
	cmp	r21, 6
	jbe	.L558
.L554:
	and	r22, rsi, -8
	vmovdqu32	ymm1, YMMWORD PTR [rcx+r18*4]
	sub	r11, r22
	sal	r22, 2
	add	r16, r22
	add	r17, r22
	and	esi, 7
	vmovdqu32	YMMWORD PTR [rax+r18*4], ymm1
	je	.L639
.L558:
	mov	r23d, DWORD PTR [r16]
	mov	DWORD PTR [r17], r23d
	test	r11, r11
	je	.L639
	mov	r24d, DWORD PTR [r16+4]
	mov	DWORD PTR [r17+4], r24d
	cmp	r11, 1
	jne	.L642
	.p2align 4
	.p2align 3
.L639:
	vzeroupper
.L583:
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L622:
	mov	r27d, DWORD PTR [rcx+r11*4]
	mov	DWORD PTR [rax+r11*4], r27d
	sub	r11, 1
	jnb	.L622
	ret
	.p2align 4,,10
	.p2align 3
.L642:
	mov	r25d, DWORD PTR [r16+8]
	mov	DWORD PTR [r17+8], r25d
	cmp	r11, 2
	je	.L639
	mov	r26d, DWORD PTR [r16+12]
	mov	DWORD PTR [r17+12], r26d
	cmp	r11, 3
	je	.L639
	mov	r27d, DWORD PTR [r16+16]
	mov	DWORD PTR [r17+16], r27d
	cmp	r11, 4
	je	.L639
	mov	r28d, DWORD PTR [r16+20]
	mov	DWORD PTR [r17+20], r28d
	cmp	r11, 5
	je	.L639
	mov	r29d, DWORD PTR [r16+24]
	mov	DWORD PTR [r17+24], r29d
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L564:
	xor	r30d, r30d
	.p2align 5
	.p2align 4
	.p2align 3
.L623:
	mov	r31d, DWORD PTR [rcx+r30*4]
	mov	DWORD PTR [rax+r30*4], r31d
	add	r30, 1
	cmp	rsi, r30
	jne	.L623
	ret
	.p2align 4,,10
	.p2align 3
.L641:
	ret
.L565:
	mov	r16, rcx
	mov	r17, rax
	xor	r18d, r18d
	jmp	.L554
.L562:
	xor	r8d, r8d
	jmp	.L545
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
	lea	rdi, [rdx-1]
	test	rdx, rdx
	je	.L644
	cmp	rdi, 14
	jbe	.L650
	shr	r9, rdx, 4
	vpbroadcastd	zmm0, esi
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L646:
	sal	r10, rcx, 6
	add	rcx, 1
	vmovdqu32	ZMMWORD PTR [rax+r10], zmm0
	cmp	r9, rcx
	jne	.L646
	and	r8, rdx, -16
	sub	rdi, r8
	lea	r17, [rax+r8*4]
	test	dl, 15
	je	.L685
.L645:
	sub	rdx, r8
	lea	r11, [rdx-1]
	cmp	r11, 6
	jbe	.L648
	and	r16, rdx, -8
	vpbroadcastd	ymm1, esi
	sub	rdi, r16
	and	edx, 7
	vmovdqu	YMMWORD PTR [rax+r8*4], ymm1
	lea	r17, [r17+r16*4]
	je	.L685
.L648:
	mov	DWORD PTR [r17], esi
	test	rdi, rdi
	je	.L685
	mov	DWORD PTR [r17+4], esi
	cmp	rdi, 1
	je	.L685
	mov	DWORD PTR [r17+8], esi
	cmp	rdi, 2
	je	.L685
	mov	DWORD PTR [r17+12], esi
	cmp	rdi, 3
	je	.L685
	mov	DWORD PTR [r17+16], esi
	cmp	rdi, 4
	je	.L685
	mov	DWORD PTR [r17+20], esi
	cmp	rdi, 5
	je	.L685
	mov	DWORD PTR [r17+24], esi
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L685:
	vzeroupper
.L644:
	ret
.L650:
	mov	r17, rax
	xor	r8d, r8d
	jmp	.L645
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.p2align 4
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	mov	r11, rdi
	mov	rcx, rsi
	cmp	rdi, rsi
	jnb	.L687
	test	rdx, rdx
	je	.L739
	lea	r23, [rdx-1]
	cmp	r23, 30
	jbe	.L734
	lea	r24, [rdi-2+rdx]
	sub	r25, rsi, r24
	lea	r26, [r25+62+r23]
	cmp	r26, 62
	jbe	.L734
	lea	r27, [rdi+rdx]
	lea	r28, [rsi+rdx]
	cmp	r23, 62
	jbe	.L708
	lea	r30, [rdx-64]
	xor	eax, eax
	lea	r31, [rdi+r30]
	add	r30, rsi
	and	rsi, rdx, -64
	neg	rsi
	.p2align 5
	.p2align 4
	.p2align 3
.L691:
	vmovdqu8	zmm2, ZMMWORD PTR [r31+rax]
	vmovdqu8	ZMMWORD PTR [r30+rax], zmm2
	sub	rax, 64
	cmp	rax, rsi
	jne	.L691
	add	r28, rax
	add	r27, rax
	and	r29d, edx, 63
	and	edx, 63
	je	.L738
	lea	rdi, [r29-1]
	mov	rdx, r29
	cmp	rdi, 30
	jbe	.L693
.L690:
	vmovdqu8	ymm3, YMMWORD PTR [r11-32+rdx]
	and	r11, rdx, -32
	sub	r28, r11
	sub	r27, r11
	sub	r29, r11
	vmovdqu8	YMMWORD PTR [rcx-32+rdx], ymm3
	and	edx, 31
	je	.L738
.L693:
	sub	r27, r29
	sub	rcx, r28, r29
	.p2align 5
	.p2align 4
	.p2align 3
.L695:
	movzx	r9d, BYTE PTR [r27-1+r29]
	mov	BYTE PTR [rcx-1+r29], r9b
	sub	r29, 1
	jne	.L695
.L738:
	vzeroupper
.L739:
	ret
	.p2align 4,,10
	.p2align 3
.L687:
	je	.L739
	test	rdx, rdx
	je	.L739
	lea	rsi, [rdx-1]
	cmp	rsi, 30
	jbe	.L710
	lea	rax, [rdi+1]
	sub	rdi, rcx, rax
	cmp	rdi, 62
	jbe	.L710
	cmp	rsi, 62
	jbe	.L711
	and	r16, rdx, -64
	xor	r17d, r17d
	.p2align 5
	.p2align 4
	.p2align 3
.L700:
	vmovdqu8	zmm0, ZMMWORD PTR [r11+r17]
	vmovdqu8	ZMMWORD PTR [rcx+r17], zmm0
	add	r17, 64
	cmp	r17, r16
	jne	.L700
	lea	r9, [rcx+r16]
	lea	r8, [r11+r16]
	sub	r10, rdx, r16
	je	.L738
	lea	r18, [r10-1]
	mov	rdx, r10
	cmp	r18, 30
	jbe	.L703
.L699:
	and	r19, rdx, -32
	vmovdqu8	ymm1, YMMWORD PTR [r11+r16]
	add	r9, r19
	add	r8, r19
	sub	r10, r19
	and	edx, 31
	vmovdqu8	YMMWORD PTR [rcx+r16], ymm1
	je	.L738
.L703:
	xor	r20d, r20d
	.p2align 5
	.p2align 4
	.p2align 3
.L705:
	movzx	edx, BYTE PTR [r8+r20]
	mov	BYTE PTR [r9+r20], dl
	add	r20, 1
	cmp	r20, r10
	jne	.L705
	vzeroupper
	ret
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L741:
	sub	r23, 1
.L734:
	movzx	r8d, BYTE PTR [r11-1+rdx]
	mov	BYTE PTR [rcx-1+rdx], r8b
	mov	rdx, r23
	test	r23, r23
	jne	.L741
	ret
	.p2align 4,,10
	.p2align 3
.L710:
	xor	r21d, r21d
	.p2align 5
	.p2align 4
	.p2align 3
.L733:
	movzx	r22d, BYTE PTR [r11+r21]
	mov	BYTE PTR [rcx+r21], r22b
	add	r21, 1
	cmp	rdx, r21
	jne	.L733
	ret
.L708:
	mov	r29, rdx
	jmp	.L690
.L711:
	mov	r9, rcx
	mov	r8, r11
	mov	r10, rdx
	xor	r16d, r16d
	jmp	.L699
	.cfi_endproc
.LFE69:
	.size	bcopy, .-bcopy
	.p2align 4
	.globl	rotl64
	.type	rotl64, @function
rotl64:
.LFB70:
	.cfi_startproc
	mov	ecx, esi
	rol	rax, rdi, cl
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
	mov	ecx, esi
	ror	rax, rdi, cl
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
	mov	ecx, esi
	rol	eax, edi, cl
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
	mov	ecx, esi
	ror	eax, edi, cl
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
	mov	ecx, esi
	rol	rax, rdi, cl
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
	mov	ecx, esi
	ror	rax, rdi, cl
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
	mov	ecx, esi
	rol	ax, di, cl
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
	mov	ecx, esi
	ror	ax, di, cl
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
	mov	ecx, esi
	rol	al, dil, cl
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
	mov	ecx, esi
	ror	al, dil, cl
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
	vmovdqa32	zmm0, ZMMWORD PTR .LC6[rip]
	vpbroadcastd	zmm1, edi
	mov	eax, 1
	vpxor	xmm4, xmm4, xmm4
	vpbroadcastd	zmm2, eax
	vpsrlvd	zmm3, zmm1, zmm0
	vpandd	zmm5, zmm3, zmm2
	vpcmpd	k0, zmm5, zmm4, 4
	kortestw	k0, k0
	jne	.L762
	vmovdqa32	zmm0, ZMMWORD PTR .LC8[rip]
	vpsrlvd	zmm6, zmm1, zmm0
	vpandd	zmm7, zmm6, zmm2
	vpcmpd	k1, zmm7, zmm4, 4
	kortestw	k1, k1
	jne	.L763
.L776:
	xor	r25d, r25d
.L755:
	mov	eax, r25d
	vzeroupper
	ret
.L762:
	vmovdqa32	zmm8, ZMMWORD PTR .LC5[rip]
.L756:
	vmovd	edx, xmm0
	vmovd	ecx, xmm8
	bt	edi, edx
	lea	r8d, [rdx+1]
	jc	.L758
	shrx	esi, edi, r8d
	and	esi, 1
	lea	r8d, [rdx+2]
	jne	.L758
	cmp	ecx, 2
	je	.L776
	shrx	r9d, edi, r8d
	and	r9d, 1
	lea	r8d, [rdx+3]
	jne	.L758
	cmp	ecx, 3
	je	.L776
	shrx	r10d, edi, r8d
	and	r10d, 1
	lea	r8d, [rdx+4]
	jne	.L758
	cmp	ecx, 4
	je	.L776
	shrx	r11d, edi, r8d
	and	r11d, 1
	lea	r8d, [rdx+5]
	jne	.L758
	cmp	ecx, 5
	je	.L776
	shrx	r16d, edi, r8d
	and	r16d, 1
	lea	r8d, [rdx+6]
	jne	.L758
	cmp	ecx, 6
	je	.L776
	shrx	r17d, edi, r8d
	and	r17d, 1
	lea	r8d, [rdx+7]
	jne	.L758
	cmp	ecx, 7
	je	.L776
	shrx	r18d, edi, r8d
	and	r18d, 1
	lea	r8d, [rdx+8]
	jne	.L758
	cmp	ecx, 8
	je	.L776
	shrx	r19d, edi, r8d
	and	r19d, 1
	lea	r8d, [rdx+9]
	jne	.L758
	cmp	ecx, 9
	je	.L776
	shrx	r20d, edi, r8d
	and	r20d, 1
	lea	r8d, [rdx+10]
	jne	.L758
	cmp	ecx, 10
	je	.L776
	shrx	r21d, edi, r8d
	and	r21d, 1
	lea	r8d, [rdx+11]
	jne	.L758
	cmp	ecx, 11
	je	.L776
	shrx	r22d, edi, r8d
	and	r22d, 1
	lea	r8d, [rdx+12]
	jne	.L758
	cmp	ecx, 12
	je	.L776
	shrx	r23d, edi, r8d
	and	r23d, 1
	lea	r8d, [rdx+13]
	jne	.L758
	cmp	ecx, 13
	je	.L776
	shrx	r24d, edi, r8d
	and	r24d, 1
	lea	r8d, [rdx+14]
	jne	.L758
	cmp	ecx, 14
	je	.L776
	shrx	r26d, edi, r8d
	and	r26d, 1
	lea	r8d, [rdx+15]
	jne	.L758
	cmp	ecx, 15
	mov	r25d, 0
	je	.L755
	bt	edi, r8d
	jnc	.L755
	lea	r8d, [rdx+16]
.L758:
	mov	r25d, r8d
	mov	eax, r25d
	vzeroupper
	ret
.L763:
	vmovdqa32	zmm8, ZMMWORD PTR .LC7[rip]
	jmp	.L756
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
	je	.L781
	and	eax, edi, 1
	jne	.L781
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L783:
	sar	edi
	add	eax, 1
	test	dil, 1
	je	.L783
.L781:
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
	ja	.L788
	xor	eax, eax
	vcomiss	xmm0, DWORD PTR .LC11[rip]
	seta	al
.L788:
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
	ja	.L791
	xor	eax, eax
	vcomisd	xmm0, QWORD PTR .LC13[rip]
	seta	al
.L791:
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
	ja	.L797
	fld	TBYTE PTR .LC15[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L794
	.p2align 4,,10
	.p2align 3
.L797:
	fstp	st(0)
.L794:
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
	jp	.L800
	vaddss	xmm1, xmm0, xmm0
	vucomiss	xmm1, xmm0
	jp	.L807
	jne	.L807
.L800:
	ret
	.p2align 4,,10
	.p2align 3
.L807:
	vmovss	xmm2, DWORD PTR .LC16[rip]
	test	edi, edi
	jns	.L802
	vmovss	xmm2, DWORD PTR .LC17[rip]
.L802:
	test	dil, 1
	je	.L803
	.p2align 4
	.p2align 3
.L804:
	vmulss	xmm0, xmm0, xmm2
.L803:
	shr	eax, edi, 31
	add	edi, eax
	sar	edi
	je	.L800
	vmulss	xmm2, xmm2, xmm2
	test	dil, 1
	jne	.L804
.L814:
	vmulss	xmm2, xmm2, xmm2
	shr	edx, edi, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L804
	jmp	.L814
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
	jp	.L816
	vaddsd	xmm1, xmm0, xmm0
	vucomisd	xmm1, xmm0
	jp	.L823
	jne	.L823
.L816:
	ret
	.p2align 4,,10
	.p2align 3
.L823:
	vmovsd	xmm2, QWORD PTR .LC18[rip]
	test	edi, edi
	jns	.L818
	vmovsd	xmm2, QWORD PTR .LC19[rip]
.L818:
	test	dil, 1
	je	.L819
	.p2align 4
	.p2align 3
.L820:
	vmulsd	xmm0, xmm0, xmm2
.L819:
	shr	eax, edi, 31
	add	edi, eax
	sar	edi
	je	.L816
	vmulsd	xmm2, xmm2, xmm2
	test	dil, 1
	jne	.L820
.L830:
	vmulsd	xmm2, xmm2, xmm2
	shr	edx, edi, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L820
	jmp	.L830
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
	jp	.L832
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L839
	jne	.L839
	jmp	.L832
	.p2align 4,,10
	.p2align 3
.L848:
	fstp	st(0)
.L832:
	ret
	.p2align 4,,10
	.p2align 3
.L839:
	test	edi, edi
	js	.L846
	fld	DWORD PTR .LC16[rip]
.L834:
	test	dil, 1
	je	.L835
	.p2align 4
	.p2align 3
.L836:
	fmul	st(1), st
.L835:
	shr	eax, edi, 31
	add	edi, eax
	sar	edi
	je	.L848
	fmul	st, st(0)
	test	dil, 1
	jne	.L836
.L847:
	shr	edx, edi, 31
	fmul	st, st(0)
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L836
	jmp	.L847
	.p2align 4,,10
	.p2align 3
.L846:
	fld	DWORD PTR .LC17[rip]
	jmp	.L834
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.p2align 4
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	mov	rax, rdi
	test	rdx, rdx
	je	.L850
	lea	rcx, [rdx-1]
	cmp	rcx, 62
	jbe	.L857
	and	rdi, rdx, -64
	xor	r10d, r10d
	.p2align 5
	.p2align 4
	.p2align 3
.L852:
	vmovdqu8	zmm0, ZMMWORD PTR [rax+r10]
	vpxorq	zmm1, zmm0, ZMMWORD PTR [rsi+r10]
	vmovdqu8	ZMMWORD PTR [rax+r10], zmm1
	add	r10, 64
	cmp	r10, rdi
	jne	.L852
	lea	r8, [rax+rdi]
	lea	r11, [rsi+rdi]
	sub	r9, rdx, rdi
	je	.L866
.L851:
	sub	rdx, rdi
	lea	r16, [rdx-1]
	cmp	r16, 30
	jbe	.L854
	lea	r17, [rax+rdi]
	vmovdqu8	ymm2, YMMWORD PTR [r17]
	vpxorq	ymm3, ymm2, YMMWORD PTR [rsi+rdi]
	and	rsi, rdx, -32
	add	r8, rsi
	add	r11, rsi
	sub	r9, rsi
	and	edx, 31
	vmovdqu8	YMMWORD PTR [r17], ymm3
	je	.L866
.L854:
	lea	r18, [r11+r9]
	.p2align 5
	.p2align 4
	.p2align 3
.L856:
	add	r11, 1
	add	r8, 1
	movzx	edx, BYTE PTR [r11-1]
	xor	BYTE PTR [r8-1], dl
	cmp	r11, r18
	jne	.L856
.L866:
	vzeroupper
.L850:
	ret
.L857:
	mov	r8, rdi
	mov	r11, rsi
	mov	r9, rdx
	xor	edi, edi
	jmp	.L851
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
	je	.L868
	.p2align 4
	.p2align 4
	.p2align 3
.L869:
	add	rcx, 1
	cmp	BYTE PTR [rcx], 0
	jne	.L869
.L868:
	test	rdx, rdx
	jne	.L870
	jmp	.L871
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L872:
	add	rsi, 1
	add	rcx, 1
	sub	rdx, 1
	je	.L871
.L870:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rcx], r8b
	test	r8b, r8b
	jne	.L872
	ret
	.p2align 4,,10
	.p2align 3
.L871:
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
	je	.L881
.L882:
	cmp	BYTE PTR [rdi+rax], 0
	jne	.L884
.L881:
	ret
	.p2align 4,,10
	.p2align 3
.L884:
	add	rax, 1
	cmp	rsi, rax
	jne	.L882
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
	je	.L895
.L891:
	mov	rdx, rsi
	jmp	.L894
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L893:
	add	rdx, 1
	cmp	cl, r8b
	je	.L892
.L894:
	movzx	ecx, BYTE PTR [rdx]
	test	cl, cl
	jne	.L893
	movzx	r8d, BYTE PTR [rax+1]
	add	rax, 1
	test	r8b, r8b
	jne	.L891
.L895:
	xor	eax, eax
.L892:
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
.L900:
	movsx	ecx, BYTE PTR [rdi]
	cmp	ecx, esi
	cmove	rdx, rdi
	add	rdi, 1
	test	cl, cl
	jne	.L900
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
	test	r10b, r10b
	je	.L914
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L904:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L904
	mov	r19, rdi
	sub	rax, rsi
	je	.L902
	lea	r11, [rsi-1+rax]
	jmp	.L924
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L926:
	add	rdi, 1
	test	dl, dl
	je	.L925
.L924:
	movzx	edx, BYTE PTR [rdi]
	cmp	dl, r10b
	jne	.L926
	mov	r18d, r10d
	mov	r17, rsi
	mov	r8, rdi
	jmp	.L906
	.p2align 4,,10
	.p2align 3
.L927:
	test	cl, cl
	setne	r9b
	cmp	cl, r18b
	sete	r16b
	test	r9b, r16b
	je	.L907
	movzx	r18d, BYTE PTR [r8+1]
	add	r8, 1
	add	r17, 1
	test	r18b, r18b
	je	.L907
.L906:
	movzx	ecx, BYTE PTR [r17]
	cmp	r17, r11
	jne	.L927
.L907:
	cmp	r18b, BYTE PTR [r17]
	je	.L914
	add	rdi, 1
	jmp	.L924
	.p2align 4,,10
	.p2align 3
.L925:
	xor	r19d, r19d
.L902:
	mov	rax, r19
	ret
.L914:
	mov	r19, rdi
	mov	rax, r19
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
	ja	.L938
	vcomisd	xmm0, xmm2
	jbe	.L932
	vcomisd	xmm2, xmm1
	ja	.L931
.L932:
	ret
	.p2align 4,,10
	.p2align 3
.L938:
	vcomisd	xmm1, xmm2
	jbe	.L932
.L931:
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
	je	.L939
	cmp	rsi, rcx
	jb	.L950
	sub	rsi, rcx
	add	rdi, rsi
	jc	.L950
	movzx	r9d, BYTE PTR [rdx]
	jmp	.L945
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L949:
	mov	rax, r8
.L941:
	cmp	rdi, rax
	jb	.L950
.L945:
	lea	r8, [rax+1]
	cmp	BYTE PTR [rax], r9b
	jne	.L949
	cmp	rcx, 1
	je	.L939
.L944:
	mov	r11d, 1
	jmp	.L942
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L943:
	add	r11, 1
	cmp	r11, rcx
	je	.L939
.L942:
	movzx	r10d, BYTE PTR [rdx+r11]
	cmp	BYTE PTR [rax+r11], r10b
	je	.L943
	cmp	rdi, r8
	jb	.L950
	lea	rax, [r8+1]
	cmp	r9b, BYTE PTR [r8]
	jne	.L941
	mov	rsi, r8
	mov	r8, rax
	mov	rax, rsi
	jmp	.L944
	.p2align 4,,10
	.p2align 3
.L950:
	xor	eax, eax
.L939:
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
	pushp	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdx
	test	rdx, rdx
	je	.L960
	call	memmove
	mov	rdi, rax
.L960:
	lea	rax, [rdi+rbx]
	popp	rbx
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
	ja	.L989
	vmovsd	xmm5, QWORD PTR .LC23[rip]
	xor	edx, edx
	vcomisd	xmm0, xmm5
	jb	.L990
.L968:
	vmovsd	xmm6, QWORD PTR .LC19[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L975:
	vmulsd	xmm0, xmm0, xmm6
	add	eax, 1
	vcomisd	xmm0, xmm5
	jnb	.L975
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	je	.L965
.L992:
	vxorpd	xmm0, xmm0, XMMWORD PTR .LC20[rip]
.L965:
	ret
	.p2align 4,,10
	.p2align 3
.L990:
	vmovsd	xmm1, QWORD PTR .LC19[rip]
	vcomisd	xmm1, xmm0
	jbe	.L971
	vucomisd	xmm0, xmm2
	jp	.L981
	jne	.L981
.L971:
	mov	DWORD PTR [rdi], 0
	ret
	.p2align 4,,10
	.p2align 3
.L989:
	vmovsd	xmm4, QWORD PTR .LC21[rip]
	vxorpd	xmm3, xmm0, XMMWORD PTR .LC20[rip]
	vcomisd	xmm4, xmm0
	jb	.L991
	vmovsd	xmm5, QWORD PTR .LC23[rip]
	vmovapd	xmm0, xmm3
	mov	edx, 1
	jmp	.L968
	.p2align 4,,10
	.p2align 3
.L991:
	vcomisd	xmm0, QWORD PTR .LC22[rip]
	jbe	.L971
	vmovsd	xmm1, QWORD PTR .LC19[rip]
	mov	edx, 1
.L969:
	vmovapd	xmm0, xmm3
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L977:
	vaddsd	xmm0, xmm0, xmm0
	sub	eax, 1
	vcomisd	xmm1, xmm0
	ja	.L977
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	jne	.L992
	ret
.L981:
	vmovapd	xmm3, xmm0
	xor	edx, edx
	jmp	.L969
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
	je	.L993
	.p2align 5
	.p2align 4
	.p2align 3
.L995:
	and	eax, edi, 1
	neg	rax
	and	rax, rsi
	add	rsi, rsi
	add	rdx, rax
	shr	rdi
	jne	.L995
.L993:
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
	jb	.L999
	jmp	.L1022
	.p2align 4,,10
	.p2align 3
.L1002:
	add	esi, esi
	add	r11d, r11d
	cmp	esi, edi
	jnb	.L1001
	test	r11d, r11d
	je	.L1001
.L999:
	test	esi, esi
	jns	.L1002
.L1003:
	xor	eax, eax
	xor	r10d, r10d
	.p2align 5
	.p2align 4
	.p2align 3
.L1005:
	sub	r8d, edi, esi
	setnb	r9b
	test	r9b, r9b
	cmovne	r16d, r10d, r11d
	cmovne	edi, r8d
	shr	esi
	or	eax, r16d
	shr	r11d
	jne	.L1005
.L1004:
	test	rdx, rdx
	cmovne	eax, edi
	ret
	.p2align 4,,10
	.p2align 3
.L1001:
	xor	eax, eax
	test	r11d, r11d
	jne	.L1003
	test	rdx, rdx
	cmovne	eax, edi
	ret
.L1022:
	sub	eax, edi, esi
	setnb	cl
	cmovnb	edi, eax
	movzx	eax, cl
	jmp	.L1004
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.p2align 4
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	sar	dl, dil, 7
	mov	r8d, 7
	xor	eax, edx, edi
	cmp	dil, dl
	je	.L1025
	movsx	ecx, al
	xor	esi, esi
	sal	ecx, 8
	lzcnt	esi, ecx
	lea	r8d, [rsi-1]
.L1025:
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
	sar	rdx, rdi, 63
	mov	ecx, 63
	xor	rax, rdi, rdx
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
	je	.L1031
	.p2align 4
	.p2align 4
	.p2align 3
.L1033:
	and	eax, edi, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L1033
.L1031:
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
	mov	rcx, rsi
	shr	r10d, edx, 3
	mov	esi, edx
	and	eax, edx, -8
	cmp	rdi, rcx
	jb	.L1041
	mov	edx, edx
	add	rdx, rcx
	cmp	rdx, rdi
	jnb	.L1107
.L1041:
	test	r10d, r10d
	je	.L1108
	lea	r25d, [r10-1]
	cmp	r25d, 2
	jbe	.L1043
	lea	r26, [rcx+8]
	sub	r27, rdi, r26
	cmp	r27, 48
	jbe	.L1043
	cmp	r25d, 6
	jbe	.L1069
	shr	r30d, esi, 6
	xor	edx, edx
	mov	r31, r30
	sal	r30, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1045:
	vmovdqu64	zmm2, ZMMWORD PTR [rcx+rdx]
	vmovdqu64	ZMMWORD PTR [rdi+rdx], zmm2
	add	rdx, 64
	cmp	rdx, r30
	jne	.L1045
	lea	r29d, [0+r31*8]
	cmp	r10d, r29d
	je	.L1050
	sub	r28d, r10d, r29d
	lea	r16d, [r28-1]
	cmp	r16d, 2
	jbe	.L1047
.L1044:
	mov	r9d, r29d
	and	r11d, r28d, -4
	vmovdqu	ymm3, YMMWORD PTR [rcx+r9*8]
	add	r29d, r11d
	and	r28d, 3
	vmovdqu	YMMWORD PTR [rdi+r9*8], ymm3
	je	.L1050
.L1047:
	mov	r17d, r29d
	lea	r19d, [r29+1]
	mov	r18, QWORD PTR [rcx+r17*8]
	mov	QWORD PTR [rdi+r17*8], r18
	cmp	r19d, r10d
	jnb	.L1050
	mov	r20, QWORD PTR [rcx+r19*8]
	add	r29d, 2
	mov	QWORD PTR [rdi+r19*8], r20
	cmp	r29d, r10d
	jnb	.L1050
	mov	r10, QWORD PTR [rcx+r29*8]
	mov	QWORD PTR [rdi+r29*8], r10
.L1050:
	cmp	eax, esi
	jnb	.L1105
	sub	r24d, esi, eax
	mov	r8d, eax
	lea	r25d, [r24-1]
	cmp	r25d, 30
	jbe	.L1101
	lea	r26, [rdi+r8]
	lea	r27, [rcx+1+r8]
	sub	r28, r26, r27
	cmp	r28, 62
	jbe	.L1101
	cmp	r25d, 62
	jbe	.L1070
	shr	r31d, r24d, 6
	lea	r30, [rcx+r8]
	xor	edx, edx
	sal	r31, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1052:
	vmovdqu8	zmm4, ZMMWORD PTR [r30+rdx]
	vmovdqu8	ZMMWORD PTR [r26+rdx], zmm4
	add	rdx, 64
	cmp	rdx, r31
	jne	.L1052
	and	r29d, r24d, -64
	add	eax, r29d
	test	r24b, 63
	je	.L1105
	sub	r24d, r29d
	lea	r16d, [r24-1]
	cmp	r16d, 30
	jbe	.L1056
.L1051:
	add	r29, r8
	and	r9d, r24d, -32
	vmovdqu8	ymm5, YMMWORD PTR [rcx+r29]
	add	eax, r9d
	and	r24d, 31
	vmovdqu8	YMMWORD PTR [rdi+r29], ymm5
	je	.L1105
	.p2align 5
	.p2align 4
	.p2align 3
.L1056:
	movzx	r11d, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], r11b
	add	rax, 1
	cmp	eax, esi
	jb	.L1056
.L1105:
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L1107:
	lea	r16d, [rsi-1]
	test	esi, esi
	je	.L1109
	mov	r8d, r16d
	cmp	r16d, 30
	jbe	.L1067
	sub	r9, rdi, rcx
	add	r9, 63
	cmp	r9, 62
	jbe	.L1067
	cmp	r16d, 62
	jbe	.L1071
	shr	r19d, esi, 6
	lea	r17, [r8-63]
	xor	r20d, r20d
	neg	r19
	lea	r18, [rcx+r17]
	add	r17, rdi
	sal	r19, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1061:
	vmovdqu8	zmm0, ZMMWORD PTR [r18+r20]
	vmovdqu8	ZMMWORD PTR [r17+r20], zmm0
	sub	r20, 64
	cmp	r20, r19
	jne	.L1061
	and	r11d, esi, -64
	sub	r16d, r11d
	test	sil, 63
	je	.L1105
	sub	esi, r11d
	lea	r21d, [rsi-1]
	cmp	r21d, 30
	jbe	.L1066
.L1060:
	sub	r8, 31
	and	r22d, esi, -32
	sub	r8, r11
	sub	r16d, r22d
	and	esi, 31
	vmovdqu8	ymm1, YMMWORD PTR [rcx+r8]
	vmovdqu8	YMMWORD PTR [rdi+r8], ymm1
	je	.L1105
	.p2align 4
	.p2align 4
	.p2align 3
.L1066:
	movzx	r23d, BYTE PTR [rcx+r16]
	mov	BYTE PTR [rdi+r16], r23b
	sub	r16, 1
	jnb	.L1066
	vzeroupper
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1067:
	movzx	r24d, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], r24b
	sub	r8, 1
	jnb	.L1067
	ret
.L1069:
	mov	r28d, r10d
	xor	r29d, r29d
	jmp	.L1044
	.p2align 4,,10
	.p2align 3
.L1043:
	lea	r21d, [0+r10*8]
	xor	r22d, r22d
	.p2align 5
	.p2align 4
	.p2align 3
.L1049:
	mov	r23, QWORD PTR [rcx+r22]
	mov	QWORD PTR [rdi+r22], r23
	add	r22, 8
	cmp	r21, r22
	jne	.L1049
	jmp	.L1050
	.p2align 4,,10
	.p2align 3
.L1108:
	mov	r8d, eax
	test	esi, esi
	je	.L1110
	.p2align 5
	.p2align 4
	.p2align 3
.L1057:
	movzx	eax, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], al
	add	r8, 1
	cmp	r8d, esi
	jb	.L1057
	ret
	.p2align 4,,10
	.p2align 3
.L1101:
	vzeroupper
	jmp	.L1057
.L1070:
	xor	r29d, r29d
	jmp	.L1051
.L1109:
	ret
.L1071:
	xor	r11d, r11d
	jmp	.L1060
.L1110:
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
	shr	r9d, edx, 1
	cmp	rdi, rsi
	jb	.L1115
	mov	eax, edx
	add	rax, rsi
	cmp	rax, rdi
	jnb	.L1176
.L1115:
	test	r9d, r9d
	je	.L1114
	lea	r23d, [r9-1]
	cmp	r23d, 14
	jbe	.L1118
	lea	r24, [rsi+2]
	sub	r25, rcx, r24
	cmp	r25, 60
	jbe	.L1118
	cmp	r23d, 30
	jbe	.L1136
	shr	r28d, edx, 6
	xor	r30d, r30d
	mov	r29, r28
	sal	r28, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1120:
	vmovdqu16	zmm2, ZMMWORD PTR [rsi+r30]
	vmovdqu16	ZMMWORD PTR [rcx+r30], zmm2
	add	r30, 64
	cmp	r28, r30
	jne	.L1120
	sal	r27d, r29d, 5
	cmp	r9d, r27d
	je	.L1172
	sub	r26d, r9d, r27d
	lea	r31d, [r26-1]
	cmp	r31d, 14
	jbe	.L1122
.L1119:
	mov	eax, r27d
	and	r16d, r26d, -16
	vmovdqu16	ymm3, YMMWORD PTR [rsi+rax*2]
	add	r27d, r16d
	and	r26d, 15
	vmovdqu16	YMMWORD PTR [rcx+rax*2], ymm3
	je	.L1172
.L1122:
	mov	edi, r27d
	lea	r17d, [r27+1]
	movzx	r10d, WORD PTR [rsi+rdi*2]
	mov	WORD PTR [rcx+rdi*2], r10w
	cmp	r17d, r9d
	jnb	.L1172
	movzx	r11d, WORD PTR [rsi+r17*2]
	lea	r18d, [r27+2]
	mov	WORD PTR [rcx+r17*2], r11w
	cmp	r18d, r9d
	jnb	.L1172
	movzx	r19d, WORD PTR [rsi+r18*2]
	lea	r20d, [r27+3]
	mov	WORD PTR [rcx+r18*2], r19w
	cmp	r20d, r9d
	jnb	.L1172
	movzx	r21d, WORD PTR [rsi+r20*2]
	lea	r22d, [r27+4]
	mov	WORD PTR [rcx+r20*2], r21w
	cmp	r22d, r9d
	jnb	.L1172
	movzx	r8d, WORD PTR [rsi+r22*2]
	lea	r23d, [r27+5]
	mov	WORD PTR [rcx+r22*2], r8w
	cmp	r23d, r9d
	jnb	.L1172
	movzx	r24d, WORD PTR [rsi+r23*2]
	lea	r25d, [r27+6]
	mov	WORD PTR [rcx+r23*2], r24w
	cmp	r25d, r9d
	jnb	.L1172
	movzx	r26d, WORD PTR [rsi+r25*2]
	lea	r28d, [r27+7]
	mov	WORD PTR [rcx+r25*2], r26w
	cmp	r28d, r9d
	jnb	.L1172
	movzx	r29d, WORD PTR [rsi+r28*2]
	lea	r30d, [r27+8]
	mov	WORD PTR [rcx+r28*2], r29w
	cmp	r30d, r9d
	jnb	.L1172
	movzx	r31d, WORD PTR [rsi+r30*2]
	lea	eax, [r27+9]
	mov	WORD PTR [rcx+r30*2], r31w
	cmp	eax, r9d
	jnb	.L1172
	movzx	r16d, WORD PTR [rsi+rax*2]
	lea	edi, [r27+10]
	mov	WORD PTR [rcx+rax*2], r16w
	cmp	edi, r9d
	jnb	.L1172
	movzx	r10d, WORD PTR [rsi+rdi*2]
	lea	r17d, [r27+11]
	mov	WORD PTR [rcx+rdi*2], r10w
	cmp	r17d, r9d
	jnb	.L1172
	movzx	r11d, WORD PTR [rsi+r17*2]
	lea	r18d, [r27+12]
	mov	WORD PTR [rcx+r17*2], r11w
	cmp	r18d, r9d
	jnb	.L1172
	movzx	r19d, WORD PTR [rsi+r18*2]
	lea	r20d, [r27+13]
	mov	WORD PTR [rcx+r18*2], r19w
	cmp	r20d, r9d
	jnb	.L1172
	movzx	r21d, WORD PTR [rsi+r20*2]
	add	r27d, 14
	mov	WORD PTR [rcx+r20*2], r21w
	cmp	r27d, r9d
	jnb	.L1172
	movzx	r9d, WORD PTR [rsi+r27*2]
	mov	WORD PTR [rcx+r27*2], r9w
	vzeroupper
.L1114:
	test	dl, 1
	je	.L1175
.L1178:
	lea	r23d, [rdx-1]
	movzx	esi, BYTE PTR [rsi+r23]
	mov	BYTE PTR [rcx+r23], sil
	ret
	.p2align 4,,10
	.p2align 3
.L1176:
	lea	r16d, [rdx-1]
	test	edx, edx
	je	.L1177
	mov	r8d, r16d
	cmp	r16d, 30
	jbe	.L1134
	sub	rdi, rsi
	add	rdi, 63
	cmp	rdi, 62
	jbe	.L1134
	cmp	r16d, 62
	jbe	.L1137
	shr	r18d, edx, 6
	lea	r17, [r8-63]
	xor	r19d, r19d
	neg	r18
	lea	r11, [rsi+r17]
	add	r17, rcx
	sal	r18, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1129:
	vmovdqu8	zmm0, ZMMWORD PTR [r11+r19]
	vmovdqu8	ZMMWORD PTR [r17+r19], zmm0
	sub	r19, 64
	cmp	r18, r19
	jne	.L1129
	and	r10d, edx, -64
	sub	r16d, r10d
	test	dl, 63
	je	.L1174
	sub	edx, r10d
	lea	r20d, [rdx-1]
	cmp	r20d, 30
	jbe	.L1133
.L1128:
	sub	r8, 31
	and	r21d, edx, -32
	sub	r8, r10
	sub	r16d, r21d
	and	edx, 31
	vmovdqu8	ymm1, YMMWORD PTR [rsi+r8]
	vmovdqu8	YMMWORD PTR [rcx+r8], ymm1
	je	.L1174
	.p2align 4
	.p2align 4
	.p2align 3
.L1133:
	movzx	edx, BYTE PTR [rsi+r16]
	mov	BYTE PTR [rcx+r16], dl
	sub	r16, 1
	jnb	.L1133
.L1174:
	vzeroupper
.L1175:
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1134:
	movzx	r22d, BYTE PTR [rsi+r8]
	mov	BYTE PTR [rcx+r8], r22b
	sub	r8, 1
	jnb	.L1134
	ret
	.p2align 4,,10
	.p2align 3
.L1172:
	vzeroupper
	test	dl, 1
	je	.L1175
	jmp	.L1178
.L1136:
	mov	r26d, r9d
	xor	r27d, r27d
	jmp	.L1119
	.p2align 4,,10
	.p2align 3
.L1118:
	lea	r27d, [r9+r9]
	xor	r22d, r22d
	.p2align 5
	.p2align 4
	.p2align 3
.L1124:
	movzx	r8d, WORD PTR [rsi+r22]
	mov	WORD PTR [rcx+r22], r8w
	add	r22, 2
	cmp	r27, r22
	jne	.L1124
	test	dl, 1
	je	.L1175
	jmp	.L1178
.L1177:
	ret
.L1137:
	xor	r10d, r10d
	jmp	.L1128
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	mov	rcx, rsi
	shr	r10d, edx, 2
	mov	esi, edx
	and	eax, edx, -4
	cmp	rdi, rcx
	jb	.L1184
	mov	edx, edx
	add	rdx, rcx
	cmp	rdx, rdi
	jnb	.L1250
.L1184:
	test	r10d, r10d
	je	.L1251
	lea	r25d, [r10-1]
	cmp	r25d, 6
	jbe	.L1186
	lea	r26, [rcx+4]
	sub	r27, rdi, r26
	cmp	r27, 56
	jbe	.L1186
	cmp	r25d, 14
	jbe	.L1212
	shr	r30d, esi, 6
	xor	edx, edx
	mov	r31, r30
	sal	r30, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1188:
	vmovdqu32	zmm2, ZMMWORD PTR [rcx+rdx]
	vmovdqu32	ZMMWORD PTR [rdi+rdx], zmm2
	add	rdx, 64
	cmp	rdx, r30
	jne	.L1188
	sal	r29d, r31d, 4
	cmp	r10d, r29d
	je	.L1193
	sub	r28d, r10d, r29d
	lea	r16d, [r28-1]
	cmp	r16d, 6
	jbe	.L1190
.L1187:
	mov	r9d, r29d
	and	r11d, r28d, -8
	vmovdqu	ymm3, YMMWORD PTR [rcx+r9*4]
	add	r29d, r11d
	and	r28d, 7
	vmovdqu	YMMWORD PTR [rdi+r9*4], ymm3
	je	.L1193
.L1190:
	mov	r17d, r29d
	lea	r19d, [r29+1]
	mov	r18d, DWORD PTR [rcx+r17*4]
	mov	DWORD PTR [rdi+r17*4], r18d
	cmp	r19d, r10d
	jnb	.L1193
	mov	r20d, DWORD PTR [rcx+r19*4]
	lea	r21d, [r29+2]
	mov	DWORD PTR [rdi+r19*4], r20d
	cmp	r21d, r10d
	jnb	.L1193
	mov	r22d, DWORD PTR [rcx+r21*4]
	lea	r23d, [r29+3]
	mov	DWORD PTR [rdi+r21*4], r22d
	cmp	r23d, r10d
	jnb	.L1193
	mov	r8d, DWORD PTR [rcx+r23*4]
	lea	r24d, [r29+4]
	mov	DWORD PTR [rdi+r23*4], r8d
	cmp	r24d, r10d
	jnb	.L1193
	mov	r25d, DWORD PTR [rcx+r24*4]
	lea	r26d, [r29+5]
	mov	DWORD PTR [rdi+r24*4], r25d
	cmp	r26d, r10d
	jnb	.L1193
	mov	r27d, DWORD PTR [rcx+r26*4]
	add	r29d, 6
	mov	DWORD PTR [rdi+r26*4], r27d
	cmp	r29d, r10d
	jnb	.L1193
	mov	r10d, DWORD PTR [rcx+r29*4]
	mov	DWORD PTR [rdi+r29*4], r10d
.L1193:
	cmp	eax, esi
	jnb	.L1248
	sub	r31d, esi, eax
	mov	r11d, eax
	lea	r16d, [r31-1]
	cmp	r16d, 30
	jbe	.L1244
	lea	r17, [rdi+r11]
	lea	rdx, [rcx+1+r11]
	sub	r9, r17, rdx
	cmp	r9, 62
	jbe	.L1244
	cmp	r16d, 62
	jbe	.L1213
	shr	r20d, r31d, 6
	lea	r19, [rcx+r11]
	xor	r21d, r21d
	sal	r20, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1195:
	vmovdqu8	zmm4, ZMMWORD PTR [r19+r21]
	vmovdqu8	ZMMWORD PTR [r17+r21], zmm4
	add	r21, 64
	cmp	r21, r20
	jne	.L1195
	and	r18d, r31d, -64
	add	eax, r18d
	test	r31b, 63
	je	.L1248
	sub	r31d, r18d
	lea	r22d, [r31-1]
	cmp	r22d, 30
	jbe	.L1199
.L1194:
	add	r18, r11
	and	r23d, r31d, -32
	vmovdqu8	ymm5, YMMWORD PTR [rcx+r18]
	add	eax, r23d
	and	r31d, 31
	vmovdqu8	YMMWORD PTR [rdi+r18], ymm5
	je	.L1248
	.p2align 5
	.p2align 4
	.p2align 3
.L1199:
	movzx	r8d, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], r8b
	add	rax, 1
	cmp	eax, esi
	jb	.L1199
.L1248:
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L1250:
	lea	r16d, [rsi-1]
	test	esi, esi
	je	.L1252
	mov	r8d, r16d
	cmp	r16d, 30
	jbe	.L1210
	sub	r9, rdi, rcx
	add	r9, 63
	cmp	r9, 62
	jbe	.L1210
	cmp	r16d, 62
	jbe	.L1214
	shr	r19d, esi, 6
	lea	r17, [r8-63]
	xor	r20d, r20d
	neg	r19
	lea	r18, [rcx+r17]
	add	r17, rdi
	sal	r19, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1204:
	vmovdqu8	zmm0, ZMMWORD PTR [r18+r20]
	vmovdqu8	ZMMWORD PTR [r17+r20], zmm0
	sub	r20, 64
	cmp	r20, r19
	jne	.L1204
	and	r11d, esi, -64
	sub	r16d, r11d
	test	sil, 63
	je	.L1248
	sub	esi, r11d
	lea	r21d, [rsi-1]
	cmp	r21d, 30
	jbe	.L1209
.L1203:
	sub	r8, 31
	and	r22d, esi, -32
	sub	r8, r11
	sub	r16d, r22d
	and	esi, 31
	vmovdqu8	ymm1, YMMWORD PTR [rcx+r8]
	vmovdqu8	YMMWORD PTR [rdi+r8], ymm1
	je	.L1248
	.p2align 4
	.p2align 4
	.p2align 3
.L1209:
	movzx	r23d, BYTE PTR [rcx+r16]
	mov	BYTE PTR [rdi+r16], r23b
	sub	r16, 1
	jnb	.L1209
	vzeroupper
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1210:
	movzx	r24d, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], r24b
	sub	r8, 1
	jnb	.L1210
	ret
.L1212:
	mov	r28d, r10d
	xor	r29d, r29d
	jmp	.L1187
	.p2align 4,,10
	.p2align 3
.L1186:
	lea	r28d, [0+r10*4]
	xor	r29d, r29d
	.p2align 5
	.p2align 4
	.p2align 3
.L1192:
	mov	r30d, DWORD PTR [rcx+r29]
	mov	DWORD PTR [rdi+r29], r30d
	add	r29, 4
	cmp	r29, r28
	jne	.L1192
	jmp	.L1193
	.p2align 4,,10
	.p2align 3
.L1251:
	mov	r11d, eax
	test	esi, esi
	je	.L1253
.L1182:
	mov	r8, r11
	.p2align 5
	.p2align 4
	.p2align 3
.L1200:
	movzx	eax, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], al
	add	r8, 1
	cmp	r8d, esi
	jb	.L1200
	ret
	.p2align 4,,10
	.p2align 3
.L1244:
	vzeroupper
	jmp	.L1182
.L1213:
	xor	r18d, r18d
	jmp	.L1194
.L1252:
	ret
.L1214:
	xor	r11d, r11d
	jmp	.L1203
.L1253:
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
	vmovdqa32	zmm1, ZMMWORD PTR .LC24[rip]
	vpxor	xmm5, xmm5, xmm5
	vpbroadcastd	zmm0, edx
	vpbroadcastd	zmm3, eax
	mov	eax, 16
	vpsravd	zmm2, zmm0, zmm1
	vpandd	zmm4, zmm2, zmm3
	vpcmpd	k0, zmm4, zmm5, 4
	kortestw	k0, k0
	jne	.L1280
.L1260:
	vzeroupper
	ret
.L1280:
	shr	eax, edx, 15
	jne	.L1264
	sar	eax, edx, 14
	jne	.L1260
	shr	eax, edx, 13
	jne	.L1265
	shr	eax, edx, 12
	jne	.L1266
	shr	eax, edx, 11
	jne	.L1267
	shr	eax, edx, 10
	jne	.L1268
	shr	eax, edx, 9
	jne	.L1269
	shr	eax, edx, 8
	jne	.L1270
	shr	eax, edx, 7
	jne	.L1271
	shr	eax, edx, 6
	jne	.L1272
	shr	eax, edx, 5
	jne	.L1273
	shr	eax, edx, 4
	jne	.L1274
	shr	eax, edx, 3
	jne	.L1275
	shr	eax, edx, 2
	jne	.L1276
	shr	edx
	jne	.L1277
	cmp	di, 1
	mov	eax, 15
	adc	eax, 0
	vzeroupper
	ret
.L1264:
	xor	eax, eax
	jmp	.L1260
.L1268:
	mov	eax, 5
	jmp	.L1260
.L1275:
	mov	eax, 12
	jmp	.L1260
.L1265:
	mov	eax, 2
	jmp	.L1260
.L1266:
	mov	eax, 3
	jmp	.L1260
.L1267:
	mov	eax, 4
	jmp	.L1260
.L1269:
	mov	eax, 6
	jmp	.L1260
.L1270:
	mov	eax, 7
	jmp	.L1260
.L1271:
	mov	eax, 8
	jmp	.L1260
.L1272:
	mov	eax, 9
	jmp	.L1260
.L1273:
	mov	eax, 10
	jmp	.L1260
.L1274:
	mov	eax, 11
	jmp	.L1260
.L1276:
	mov	eax, 13
	jmp	.L1260
.L1277:
	mov	eax, 14
	jmp	.L1260
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
	jne	.L1302
.L1281:
	vzeroupper
	ret
.L1302:
	test	dil, 1
	jne	.L1285
	test	dil, 2
	jne	.L1286
	test	dil, 4
	jne	.L1287
	test	dil, 8
	jne	.L1288
	test	dil, 16
	jne	.L1289
	test	dil, 32
	jne	.L1290
	test	dil, 64
	jne	.L1291
	test	dil, -128
	jne	.L1292
	test	edi, 256
	jne	.L1293
	test	edi, 512
	jne	.L1294
	test	edi, 1024
	jne	.L1295
	test	edi, 2048
	jne	.L1296
	test	edi, 4096
	jne	.L1297
	test	edi, 8192
	jne	.L1298
	and	edi, 16384
	jne	.L1299
	xor	eax, eax
	shr	edx, 15
	sete	al
	add	eax, 15
	vzeroupper
	ret
.L1285:
	xor	eax, eax
	jmp	.L1281
.L1290:
	mov	eax, 5
	jmp	.L1281
.L1297:
	mov	eax, 12
	jmp	.L1281
.L1286:
	mov	eax, 1
	jmp	.L1281
.L1287:
	mov	eax, 2
	jmp	.L1281
.L1288:
	mov	eax, 3
	jmp	.L1281
.L1289:
	mov	eax, 4
	jmp	.L1281
.L1291:
	mov	eax, 6
	jmp	.L1281
.L1292:
	mov	eax, 7
	jmp	.L1281
.L1293:
	mov	eax, 8
	jmp	.L1281
.L1294:
	mov	eax, 9
	jmp	.L1281
.L1295:
	mov	eax, 10
	jmp	.L1281
.L1296:
	mov	eax, 11
	jmp	.L1281
.L1298:
	mov	eax, 13
	jmp	.L1281
.L1299:
	mov	eax, 14
	jmp	.L1281
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
	jnb	.L1309
	vcvttss2si	rax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L1309:
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
	je	.L1312
	.p2align 4
	.p2align 4
	.p2align 3
.L1314:
	and	eax, edi, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L1314
.L1312:
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
	je	.L1317
	test	esi, esi
	je	.L1317
	.p2align 4
	.p2align 4
	.p2align 3
.L1319:
	and	eax, esi, 1
	neg	eax
	and	eax, edi
	add	edi, edi
	add	edx, eax
	shr	esi
	jne	.L1319
.L1317:
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
	jb	.L1325
	jmp	.L1348
	.p2align 4,,10
	.p2align 3
.L1328:
	add	esi, esi
	add	r11d, r11d
	cmp	esi, edi
	jnb	.L1327
	test	r11d, r11d
	je	.L1327
.L1325:
	test	esi, esi
	jns	.L1328
.L1329:
	xor	eax, eax
	xor	r10d, r10d
	.p2align 5
	.p2align 4
	.p2align 3
.L1331:
	sub	r8d, edi, esi
	setnb	r9b
	test	r9b, r9b
	cmovne	r16d, r10d, r11d
	cmovne	edi, r8d
	shr	esi
	or	eax, r16d
	shr	r11d
	jne	.L1331
.L1330:
	test	edx, edx
	cmovne	eax, edi
	ret
	.p2align 4,,10
	.p2align 3
.L1327:
	xor	eax, eax
	test	r11d, r11d
	jne	.L1329
	test	edx, edx
	cmovne	eax, edi
	ret
.L1348:
	sub	eax, edi, esi
	setnb	cl
	cmovnb	edi, eax
	movzx	eax, cl
	jmp	.L1330
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
	ja	.L1351
	xor	eax, eax
	vcomiss	xmm0, xmm1
	seta	al
.L1351:
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
	ja	.L1354
	xor	eax, eax
	vcomisd	xmm0, xmm1
	seta	al
.L1354:
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
	js	.L1368
	je	.L1364
	xor	r9d, r9d
.L1361:
	mov	edx, 1
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L1363:
	and	eax, esi, 1
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
	jne	.L1363
	neg	eax, ecx
	test	r9d, r9d
	cmove	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1368:
	neg	esi
	mov	r9d, 1
	jmp	.L1361
	.p2align 4,,10
	.p2align 3
.L1364:
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
	jns	.L1370
	neg	rdi
	xor	eax, eax
	mov	r10d, 1
.L1370:
	test	rsi, rsi
	jns	.L1371
	neg	rsi
	mov	r10d, eax
.L1371:
	mov	r16d, esi
	mov	ecx, edi
	mov	edx, 1
	cmp	esi, edi
	jb	.L1372
	jmp	.L1396
	.p2align 4,,10
	.p2align 3
.L1377:
	add	r16d, r16d
	add	edx, edx
	cmp	r16d, ecx
	jnb	.L1383
	test	edx, edx
	je	.L1393
.L1372:
	test	r16d, r16d
	jns	.L1377
.L1375:
	xor	r11d, r11d
	xor	r9d, r9d
	.p2align 5
	.p2align 4
	.p2align 3
.L1378:
	sub	edi, ecx, r16d
	setnb	r8b
	test	r8b, r8b
	cmovne	r17d, r9d, edx
	cmovne	ecx, edi
	shr	r16d
	or	r11d, r17d
	shr	edx
	jne	.L1378
.L1376:
	neg	rax, r11
	test	r10d, r10d
	cmove	rax, r11
	ret
	.p2align 4,,10
	.p2align 3
.L1383:
	test	edx, edx
	jne	.L1375
.L1393:
	xor	r11d, r11d
	neg	rax, r11
	test	r10d, r10d
	cmove	rax, r11
	ret
.L1396:
	cmp	edi, esi
	setnb	sil
	movzx	r11d, sil
	jmp	.L1376
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
	jns	.L1399
	neg	rdi
	mov	r8d, 1
.L1399:
	neg	rax, rsi
	mov	ecx, edi
	mov	edx, 1
	cmovns	rsi, rax
	mov	r9d, esi
	cmp	esi, edi
	jb	.L1400
	jmp	.L1423
	.p2align 4,,10
	.p2align 3
.L1405:
	add	r9d, r9d
	add	edx, edx
	cmp	r9d, ecx
	jnb	.L1410
	test	edx, edx
	je	.L1404
.L1400:
	test	r9d, r9d
	jns	.L1405
	.p2align 4
	.p2align 4
	.p2align 3
.L1421:
	sub	esi, ecx, r9d
	cmovnb	ecx, esi
	shr	r9d
	shr	edx
	jne	.L1421
.L1404:
	mov	edi, ecx
	neg	rax, rdi
	test	r8d, r8d
	cmove	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1410:
	test	edx, edx
	je	.L1404
	sub	esi, ecx, r9d
	cmovnb	ecx, esi
	shr	r9d
	shr	edx
	jne	.L1421
	jmp	.L1404
.L1423:
	sub	ecx, edi, esi
	cmovb	ecx, edi
	jmp	.L1404
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.p2align 4
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	mov	eax, edi
	mov	r10d, esi
	mov	r11d, 1
	cmp	si, di
	jb	.L1427
	jmp	.L1493
	.p2align 4,,10
	.p2align 3
.L1430:
	lea	esi, [r10+r10]
	lea	r16d, [r11+r11]
	cmp	si, ax
	jnb	.L1429
	test	r16w, r16w
	je	.L1429
	mov	r11d, r16d
	mov	r10d, esi
.L1427:
	test	r10w, r10w
	jns	.L1430
	sub	eax, edi, r10d
	cmp	r10w, di
	cmova	eax, edi
	xor	r16d, r16d
	cmp	di, r10w
	cmovnb	r16d, r11d
	shr	r8w, r10w, 1
	shr	di, r11w, 1
	mov	r9d, r16d
	je	.L1432
.L1434:
	sub	r17d, eax, r8d
	cmp	ax, r8w
	mov	r19d, 0
	setnb	r18b
	test	r18b, r18b
	cmove	edi, r19d
	cmovne	eax, r17d
	shr	r20w, r10w, 2
	or	r16d, edi, r9d
	shr	r21w, r11w, 2
	je	.L1432
	sub	r22d, eax, r20d
	cmp	ax, r20w
	setnb	r23b
	test	r23b, r23b
	cmove	r21d, r19d
	cmovne	eax, r22d
	shr	r24w, r10w, 3
	or	r16d, r21d
	shr	r25w, r11w, 3
	je	.L1432
	sub	r26d, eax, r24d
	cmp	ax, r24w
	setnb	r27b
	test	r27b, r27b
	cmove	r25d, r19d
	cmovne	eax, r26d
	shr	r28w, r10w, 4
	or	r16d, r25d
	shr	r29w, r11w, 4
	je	.L1432
	sub	r30d, eax, r28d
	cmp	ax, r28w
	setnb	r31b
	test	r31b, r31b
	cmove	r29d, r19d
	cmovne	eax, r30d
	shr	cx, r10w, 5
	or	r16d, r29d
	shr	di, r11w, 5
	je	.L1432
	sub	r9d, eax, ecx
	cmp	ax, cx
	setnb	r8b
	test	r8b, r8b
	cmove	edi, r19d
	cmovne	eax, r9d
	shr	si, r10w, 6
	or	r16d, edi
	shr	r17w, r11w, 6
	je	.L1432
	sub	r18d, eax, esi
	cmp	ax, si
	setnb	r20b
	test	r20b, r20b
	cmove	r17d, r19d
	cmovne	eax, r18d
	shr	r21w, r10w, 7
	or	r16d, r17d
	shr	r22w, r11w, 7
	je	.L1432
	sub	r23d, eax, r21d
	cmp	ax, r21w
	setnb	r24b
	test	r24b, r24b
	cmove	r22d, r19d
	cmovne	eax, r23d
	shr	r25w, r10w, 8
	or	r16d, r22d
	shr	r26w, r11w, 8
	je	.L1432
	sub	r27d, eax, r25d
	cmp	ax, r25w
	setnb	r28b
	test	r28b, r28b
	cmove	r26d, r19d
	cmovne	eax, r27d
	shr	r29w, r10w, 9
	or	r16d, r26d
	shr	r30w, r11w, 9
	je	.L1432
	sub	r31d, eax, r29d
	cmp	ax, r29w
	setnb	cl
	test	cl, cl
	cmove	r30d, r19d
	cmovne	eax, r31d
	shr	r8w, r10w, 10
	or	r16d, r30d
	shr	di, r11w, 10
	je	.L1432
	sub	r9d, eax, r8d
	cmp	ax, r8w
	setnb	sil
	test	sil, sil
	cmove	edi, r19d
	cmovne	eax, r9d
	shr	r17w, r10w, 11
	or	r16d, edi
	shr	r18w, r11w, 11
	je	.L1432
	sub	r20d, eax, r17d
	cmp	ax, r17w
	setnb	r21b
	test	r21b, r21b
	cmove	r18d, r19d
	cmovne	eax, r20d
	shr	r22w, r10w, 12
	or	r16d, r18d
	shr	r23w, r11w, 12
	je	.L1432
	sub	r24d, eax, r22d
	cmp	ax, r22w
	setnb	r25b
	test	r25b, r25b
	cmove	r23d, r19d
	cmovne	eax, r24d
	shr	r26w, r10w, 13
	or	r16d, r23d
	shr	r27w, r11w, 13
	je	.L1432
	sub	r28d, eax, r26d
	cmp	ax, r26w
	setnb	r29b
	test	r29b, r29b
	cmove	r27d, r19d
	cmovne	eax, r28d
	shr	r30w, r10w, 14
	or	r16d, r27d
	shr	r31w, r11w, 14
	je	.L1432
	sub	ecx, eax, r30d
	cmp	ax, r30w
	setnb	r8b
	test	r8b, r8b
	cmove	r31d, r19d
	cmovne	eax, ecx
	shr	r10w, 15
	or	r16d, r31d
	test	r11w, r11w
	jns	.L1432
	sub	r11d, eax, r10d
	cmp	ax, r10w
	setnb	r10b
	cmovnb	eax, r11d
	movzx	r19d, r10b
	or	r16d, r19d
.L1432:
	test	edx, edx
	cmove	eax, r16d
	ret
	.p2align 4,,10
	.p2align 3
.L1429:
	mov	eax, edi
	test	r16w, r16w
	je	.L1432
	sub	eax, edi, esi
	cmp	si, di
	cmova	eax, edi
	xor	r9d, r9d
	cmp	di, si
	cmovnb	r9d, r16d
	and	di, r11w, 32767
	and	r8w, r10w, 32767
	mov	r11d, r16d
	mov	r10d, esi
	jmp	.L1434
.L1493:
	sub	eax, edi, esi
	cmp	si, di
	sete	cl
	cmovne	eax, edi
	movzx	r16d, cl
	jmp	.L1432
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
	jb	.L1495
	jmp	.L1518
	.p2align 4,,10
	.p2align 3
.L1498:
	add	rsi, rsi
	add	r11, r11
	cmp	rsi, rdi
	jnb	.L1497
	test	r11, r11
	je	.L1497
.L1495:
	test	esi, 2147483648
	je	.L1498
.L1499:
	xor	eax, eax
	xor	r10d, r10d
	.p2align 5
	.p2align 4
	.p2align 3
.L1501:
	sub	r8, rdi, rsi
	setnb	r9b
	test	r9b, r9b
	cmovne	r16, r10, r11
	cmovne	rdi, r8
	shr	rsi
	or	rax, r16
	shr	r11
	jne	.L1501
.L1500:
	test	edx, edx
	cmovne	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1497:
	xor	eax, eax
	test	r11, r11
	jne	.L1499
	test	edx, edx
	cmovne	rax, rdi
	ret
.L1518:
	sub	rax, rdi, rsi
	setnb	cl
	cmovnb	rdi, rax
	movzx	eax, cl
	jmp	.L1500
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
	je	.L1522
	sub	esi, 32
	xor	eax, eax
	shlx	edi, edi, esi
.L1523:
	sal	rdi, 32
	or	rax, rdi
.L1521:
	ret
	.p2align 4,,10
	.p2align 3
.L1522:
	mov	rax, rdi
	test	esi, esi
	je	.L1521
	mov	edx, 32
	shlx	eax, edi, esi
	sub	edx, esi
	shrx	ecx, edi, edx
	sar	rdi, 32
	shlx	edi, edi, esi
	or	edi, ecx
	jmp	.L1523
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
	je	.L1528
	lea	eax, [rdx-64]
	shlx	rsi, rdi, rax
	xor	eax, eax
	mov	rdx, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1528:
	test	edx, edx
	je	.L1531
	mov	ecx, 64
	shlx	rax, rdi, rdx
	shlx	rsi, rsi, rdx
	sub	ecx, edx
	shrx	rdi, rdi, rcx
	or	rsi, rdi
	mov	rdx, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1531:
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
	je	.L1533
	sar	rdi, 32
	sub	esi, 32
	sar	eax, edi, 31
	sarx	edi, edi, esi
.L1534:
	sal	rax, 32
	or	rax, rdi
.L1532:
	ret
	.p2align 4,,10
	.p2align 3
.L1533:
	mov	rax, rdi
	test	esi, esi
	je	.L1532
	mov	ecx, 32
	sar	rdx, rdi, 32
	shrx	edi, edi, esi
	sub	ecx, esi
	sarx	eax, edx, esi
	shlx	r8d, edx, ecx
	or	edi, r8d
	jmp	.L1534
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
	je	.L1539
	sar	rcx, rsi, 63
	sub	edx, 64
	sarx	rsi, rsi, rdx
	mov	rdx, rcx
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1539:
	test	edx, edx
	je	.L1542
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
.L1542:
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
	sete	r9b
	xor	r17d, r17d
	sal	r9d, 2
	sub	r10d, r9d
	lea	r16d, [r9+rcx]
	shrx	r11d, r8d, r10d
	test	r11b, 12
	sete	r17b
	xor	r20d, r20d
	add	r17d, r17d
	sub	r18d, eax, r17d
	shrx	r19d, r11d, r18d
	sub	eax, r19d
	and	r19d, 2
	cmovne	eax, r20d
	add	r17d, r16d
	add	eax, r17d
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
	sar	rcx, rdi, 32
	sar	rdx, rsi, 32
	xor	eax, eax
	cmp	ecx, edx
	jl	.L1547
	mov	eax, 2
	jg	.L1547
	xor	eax, eax
	cmp	edi, esi
	jb	.L1547
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L1547:
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
	sar	rcx, rdi, 32
	sar	rdx, rsi, 32
	mov	eax, -1
	cmp	ecx, edx
	jl	.L1553
	mov	eax, 1
	jg	.L1553
	mov	eax, -1
	cmp	edi, esi
	jb	.L1553
	xor	eax, eax
	cmp	esi, edi
	setb	al
.L1553:
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
	jl	.L1558
	mov	eax, 2
	jg	.L1558
	xor	eax, eax
	cmp	rdi, rdx
	jb	.L1558
	xor	eax, eax
	cmp	rdx, rdi
	setb	al
	add	eax, 1
.L1558:
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
	mov	r17d, 2
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
	sete	r11b
	add	r11d, r11d
	shrx	r16d, r9d, r11d
	and	r16d, 3
	add	r11d, r10d
	not	eax, r16d
	shr	r16d
	and	eax, 1
	sub	r18d, r17d, r16d
	neg	eax
	and	eax, r18d
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
	sete	cl
	cmovne	rdx, rax
	movzx	eax, cl
	lea	esi, [rax-1]
	sal	eax, 6
	movsx	r8, esi
	and	rdi, r8
	or	rdx, rdi
	xor	edi, edi
	tzcnt	rdi, rdx
	add	eax, edi
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
	jne	.L1567
	xor	eax, eax
	xor	edx, edx
	tzcnt	rax, rsi
	add	eax, 65
	test	rsi, rsi
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1567:
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
	je	.L1571
	shr	rdi, 32
	sub	esi, 32
	xor	eax, eax
	shrx	edi, edi, esi
.L1572:
	sal	rax, 32
	or	rax, rdi
.L1570:
	ret
	.p2align 4,,10
	.p2align 3
.L1571:
	mov	rax, rdi
	test	esi, esi
	je	.L1570
	mov	ecx, 32
	shr	rdx, rdi, 32
	shrx	edi, edi, esi
	sub	ecx, esi
	shrx	eax, edx, esi
	shlx	r8d, edx, ecx
	or	edi, r8d
	jmp	.L1572
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
	je	.L1577
	sub	edx, 64
	xor	ecx, ecx
	shrx	rsi, rsi, rdx
	mov	rdx, rcx
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1577:
	test	edx, edx
	je	.L1580
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
.L1580:
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
	shr	r8d, ecx, 16
	imul	edi, esi
	movzx	r10d, cx
	add	eax, r8d
	movzx	r9d, ax
	shr	eax, 16
	add	edx, r9d
	add	eax, edi
	sal	r11d, edx, 16
	shr	edx, 16
	add	edx, eax
	lea	eax, [r10+r11]
	mov	esi, edx
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
	shr	r8d, edi, 16
	movzx	edx, di
	movzx	eax, si
	shr	r11d, esi, 16
	mov	ecx, edx
	imul	edx, r11d
	sar	r20, rsi, 32
	imul	ecx, eax
	imul	eax, r8d
	imul	r8d, r11d
	shr	r9d, ecx, 16
	imul	r20d, edi
	movzx	r16d, cx
	sar	rdi, 32
	add	eax, r9d
	imul	esi, edi
	movzx	r10d, ax
	shr	eax, 16
	add	edx, r10d
	add	eax, r8d
	sal	r17d, edx, 16
	shr	edx, 16
	add	edx, eax
	lea	r19d, [r16+r17]
	mov	r18d, edx
	sal	r18, 32
	or	r19, r18
	sar	r21, r19, 32
	mov	eax, r19d
	add	r20d, r21d
	add	r20d, esi
	mov	esi, r20d
	sal	rsi, 32
	or	rax, rsi
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
	shr	r8, rcx, 32
	imul	rdi, rsi
	mov	r10d, ecx
	add	rax, r8
	mov	r9d, eax
	shr	rax, 32
	add	rdx, r9
	add	rax, rdi
	sal	r11, rdx, 32
	shr	rdx, 32
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
	mov	r11, rcx
	mov	r18d, edx
	mov	r8, rdi
	mov	rcx, rax
	shr	rdi, 32
	imul	r8, r11
	mov	r10, rsi
	imul	rcx, r18
	shr	rsi, rdx, 32
	imul	r18, rdi
	imul	rax, rsi
	shr	r9, rcx, 32
	imul	rdi, rsi
	mov	r17d, ecx
	add	r18, r9
	imul	rdx, r10
	mov	r16d, r18d
	shr	r18, 32
	add	rax, r16
	add	r18, rdi
	sal	r19, rax, 32
	shr	rax, 32
	add	r18, rax
	add	r17, r19
	add	r8, r18
	mov	rax, r17
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
	neg	rax, rdi
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
	shr	edx, eax, 16
	xor	edx, eax
	shr	ecx, edx, 8
	xor	ecx, edx
	shr	esi, ecx, 4
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
	xor	rdi, rsi
	sar	rax, rdi, 32
	xor	eax, edi
	mov	edi, 27030
	shr	edx, eax, 16
	xor	edx, eax
	shr	ecx, edx, 8
	xor	ecx, edx
	shr	esi, ecx, 4
	xor	esi, ecx
	and	esi, 15
	sarx	eax, edi, esi
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
	shr	edx, edi, 16
	mov	esi, 27030
	xor	edx, edi
	shr	eax, edx, 8
	xor	eax, edx
	shr	ecx, eax, 4
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
	shr	rax, rdi, 1
	movabs	rsi, 3689348814741910323
	movabs	r8, 1085102592571150095
	and	rax, rdx
	sub	rdi, rax
	shr	rcx, rdi, 2
	and	rdi, rsi
	and	rcx, rsi
	add	rcx, rdi
	shr	rdi, rcx, 4
	add	rdi, rcx
	and	rdi, r8
	shr	r9, rdi, 32
	add	edi, r9d
	shr	r10d, edi, 16
	add	r10d, edi
	shr	eax, r10d, 8
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
	shr	eax, edi, 1
	and	eax, 1431655765
	sub	edi, eax
	shr	edx, edi, 2
	and	edi, 858993459
	and	edx, 858993459
	add	edx, edi
	shr	ecx, edx, 4
	add	ecx, edx
	and	ecx, 252645135
	shr	esi, ecx, 16
	add	esi, ecx
	shr	eax, esi, 8
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
	shrd	rax, rsi, rdi, 1
	shr	rdx, rdi, 1
	and	rax, r8
	and	rdx, r8
	sub	rsi, rax
	sbb	rdi, rdx
	shrd	rcx, rsi, rdi, 2
	shr	r10, rdi, 2
	and	rsi, r11
	and	rdi, r11
	and	rcx, r11
	and	r10, r11
	add	rsi, rcx
	adc	rdi, r10
	shrd	r17, rsi, rdi, 4
	shr	r18, rdi, 4
	add	r17, rsi
	movabs	rsi, 1085102592571150095
	adc	r18, rdi
	mov	rdx, rsi
	and	rsi, r17
	and	rdx, r18
	add	rdx, rsi
	shr	rdi, rdx, 32
	add	edi, edx
	shr	r19d, edi, 16
	add	r19d, edi
	shr	r20d, r19d, 8
	add	r20d, r19d
	movzx	eax, r20b
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
	je	.L1594
	.p2align 4
	.p2align 3
.L1596:
	vmulsd	xmm1, xmm1, xmm0
.L1594:
	shr	edx, eax, 31
	add	eax, edx
	sar	eax
	je	.L1595
	vmulsd	xmm0, xmm0, xmm0
	test	al, 1
	jne	.L1596
.L1600:
	vmulsd	xmm0, xmm0, xmm0
	shr	ecx, eax, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1596
	jmp	.L1600
	.p2align 4,,10
	.p2align 3
.L1595:
	test	edi, edi
	jns	.L1593
	vdivsd	xmm1, xmm2, xmm1
.L1593:
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
	je	.L1602
	.p2align 4
	.p2align 3
.L1604:
	vmulss	xmm1, xmm1, xmm0
.L1602:
	shr	edx, eax, 31
	add	eax, edx
	sar	eax
	je	.L1603
	vmulss	xmm0, xmm0, xmm0
	test	al, 1
	jne	.L1604
.L1608:
	vmulss	xmm0, xmm0, xmm0
	shr	ecx, eax, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1604
	jmp	.L1608
	.p2align 4,,10
	.p2align 3
.L1603:
	test	edi, edi
	jns	.L1601
	vdivss	xmm1, xmm2, xmm1
.L1601:
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
	shr	rdx, rdi, 32
	shr	rcx, rsi, 32
	xor	eax, eax
	cmp	edx, ecx
	jb	.L1609
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1609
	xor	eax, eax
	cmp	edi, esi
	jb	.L1609
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L1609:
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
	shr	rdx, rdi, 32
	shr	rcx, rsi, 32
	mov	eax, -1
	cmp	edx, ecx
	jb	.L1615
	mov	eax, 1
	cmp	ecx, edx
	jb	.L1615
	mov	eax, -1
	cmp	edi, esi
	jb	.L1615
	xor	eax, eax
	cmp	esi, edi
	setb	al
.L1615:
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
	jb	.L1620
	mov	eax, 2
	cmp	rcx, rsi
	jb	.L1620
	xor	eax, eax
	cmp	rdi, rdx
	jb	.L1620
	xor	eax, eax
	cmp	rdx, rdi
	setb	al
	add	eax, 1
.L1620:
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
