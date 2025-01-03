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
	lea	r9, [rdx-1]
	cmp	r9, 6
	jbe	.L108
	mov	r10, rdi
	lea	r11, [rsi-2+rdx]
	sub	r10, r11
	lea	rdi, [r10+14+r9]
	cmp	rdi, 14
	jbe	.L108
	lea	r11, [rsi+rdx]
	lea	r10, [rcx+rdx]
	cmp	r9, 14
	jbe	.L24
	mov	r8, rdx
	lea	rdi, [rdx-16]
	xor	eax, eax
	and	r8, -16
	lea	r9, [rsi+rdi]
	add	rdi, rcx
	neg	r8
	.p2align 5
	.p2align 4
	.p2align 3
.L9:
	vmovdqu	xmm2, XMMWORD PTR [r9+rax]
	vmovdqu	XMMWORD PTR [rdi+rax], xmm2
	sub	rax, 16
	cmp	r8, rax
	jne	.L9
	mov	rdi, rdx
	mov	r8, rdx
	and	rdi, -16
	sub	r11, rdi
	sub	r10, rdi
	sub	r8, rdi
	and	edx, 15
	je	.L6
	lea	r9, [r8-1]
	mov	rdx, r8
	cmp	r9, 6
	jbe	.L11
.L8:
	mov	rsi, QWORD PTR [rsi-8+rdx]
	mov	rax, rdx
	and	rax, -8
	mov	QWORD PTR [rcx-8+rdx], rsi
	sub	r11, rax
	sub	r10, rax
	sub	r8, rax
	and	edx, 7
	je	.L6
.L11:
	movzx	edx, BYTE PTR [r11-1]
	mov	BYTE PTR [r10-1], dl
	cmp	r8, 1
	je	.L6
	movzx	edi, BYTE PTR [r11-2]
	mov	BYTE PTR [r10-2], dil
	cmp	r8, 2
	je	.L6
	movzx	r9d, BYTE PTR [r11-3]
	mov	BYTE PTR [r10-3], r9b
	cmp	r8, 3
	je	.L6
	movzx	esi, BYTE PTR [r11-4]
	mov	BYTE PTR [r10-4], sil
	cmp	r8, 4
	je	.L6
	movzx	eax, BYTE PTR [r11-5]
	mov	BYTE PTR [r10-5], al
	cmp	r8, 5
	je	.L6
	movzx	edx, BYTE PTR [r11-6]
	mov	BYTE PTR [r10-6], dl
	cmp	r8, 6
	je	.L6
	movzx	r11d, BYTE PTR [r11-7]
	mov	BYTE PTR [r10-7], r11b
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
	cmp	rax, 14
	jbe	.L26
	lea	r8, [rsi+1]
	sub	rdi, r8
	cmp	rdi, 30
	jbe	.L26
	cmp	rax, 30
	jbe	.L27
	mov	r11, rdx
	xor	r9d, r9d
	and	r11, -32
	.p2align 5
	.p2align 4
	.p2align 3
.L17:
	vmovdqu	ymm0, YMMWORD PTR [rsi+r9]
	vmovdqu	YMMWORD PTR [rcx+r9], ymm0
	add	r9, 32
	cmp	r11, r9
	jne	.L17
	mov	rax, rdx
	lea	rdi, [rsi+r11]
	lea	r8, [rcx+r11]
	sub	rax, r11
	cmp	rdx, r11
	je	.L109
	lea	r10, [rax-1]
	mov	rdx, rax
	cmp	r10, 14
	jbe	.L111
	vzeroupper
.L16:
	vmovdqu	xmm1, XMMWORD PTR [rsi+r11]
	mov	rsi, rdx
	and	rsi, -16
	add	rdi, rsi
	add	r8, rsi
	sub	rax, rsi
	and	edx, 15
	vmovdqu	XMMWORD PTR [rcx+r11], xmm1
	je	.L6
.L20:
	movzx	edx, BYTE PTR [rdi]
	mov	BYTE PTR [r8], dl
	cmp	rax, 1
	je	.L6
	movzx	r11d, BYTE PTR [rdi+1]
	mov	BYTE PTR [r8+1], r11b
	cmp	rax, 2
	je	.L6
	movzx	r9d, BYTE PTR [rdi+2]
	mov	BYTE PTR [r8+2], r9b
	cmp	rax, 3
	je	.L6
	movzx	r10d, BYTE PTR [rdi+3]
	mov	BYTE PTR [r8+3], r10b
	cmp	rax, 4
	je	.L6
	movzx	esi, BYTE PTR [rdi+4]
	mov	BYTE PTR [r8+4], sil
	cmp	rax, 5
	je	.L6
	movzx	edx, BYTE PTR [rdi+5]
	mov	BYTE PTR [r8+5], dl
	cmp	rax, 6
	je	.L6
	movzx	r11d, BYTE PTR [rdi+6]
	mov	BYTE PTR [r8+6], r11b
	cmp	rax, 7
	je	.L6
	movzx	r9d, BYTE PTR [rdi+7]
	mov	BYTE PTR [r8+7], r9b
	cmp	rax, 8
	je	.L6
	movzx	r10d, BYTE PTR [rdi+8]
	mov	BYTE PTR [r8+8], r10b
	cmp	rax, 9
	je	.L6
	movzx	esi, BYTE PTR [rdi+9]
	mov	BYTE PTR [r8+9], sil
	cmp	rax, 10
	je	.L6
	movzx	edx, BYTE PTR [rdi+10]
	mov	BYTE PTR [r8+10], dl
	cmp	rax, 11
	je	.L6
	movzx	r11d, BYTE PTR [rdi+11]
	mov	BYTE PTR [r8+11], r11b
	cmp	rax, 12
	je	.L6
	movzx	r9d, BYTE PTR [rdi+12]
	mov	BYTE PTR [r8+12], r9b
	cmp	rax, 13
	je	.L6
	movzx	r10d, BYTE PTR [rdi+13]
	mov	BYTE PTR [r8+13], r10b
	cmp	rax, 14
	je	.L6
	movzx	edi, BYTE PTR [rdi+14]
	mov	BYTE PTR [r8+14], dil
	jmp	.L6
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L112:
	sub	r9, 1
.L108:
	movzx	r10d, BYTE PTR [rsi-1+rdx]
	mov	BYTE PTR [rcx-1+rdx], r10b
	mov	rdx, r9
	test	r9, r9
	jne	.L112
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L26:
	xor	r8d, r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L107:
	movzx	eax, BYTE PTR [rsi+r8]
	mov	BYTE PTR [rcx+r8], al
	add	r8, 1
	cmp	rdx, r8
	jne	.L107
	jmp	.L6
.L111:
	vzeroupper
	jmp	.L20
.L24:
	mov	r8, rdx
	jmp	.L8
.L27:
	mov	rdi, rsi
	mov	r8, rcx
	mov	rax, rdx
	xor	r11d, r11d
	jmp	.L16
.L109:
	vzeroupper
	jmp	.L6
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
	jne	.L114
	jmp	.L116
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L117:
	add	rsi, 1
	add	rdi, 1
	sub	rcx, 1
	je	.L116
.L114:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rdi], r8b
	cmp	r8d, edx
	jne	.L117
	lea	rax, [rdi+1]
	ret
	.p2align 4,,10
	.p2align 3
.L116:
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
	jne	.L125
	jmp	.L128
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L127:
	add	rdi, 1
	sub	rdx, 1
	je	.L128
.L125:
	movzx	eax, BYTE PTR [rdi]
	cmp	eax, esi
	jne	.L127
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L128:
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
	jne	.L133
	jmp	.L137
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L135:
	add	rdi, 1
	add	rsi, 1
	sub	rdx, 1
	je	.L137
.L133:
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rdi], al
	je	.L135
	movzx	eax, BYTE PTR [rdi]
	movzx	edx, BYTE PTR [rsi]
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L137:
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
	je	.L149
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	call	memcpy
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L149:
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
	jmp	.L153
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L155:
	mov	rdx, rax
	sub	rax, 1
	movzx	ecx, BYTE PTR [rdx]
	cmp	ecx, esi
	je	.L152
.L153:
	cmp	rdi, rax
	jne	.L155
	xor	edx, edx
.L152:
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
	je	.L161
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	movzx	esi, sil
	call	memset
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L161:
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
	je	.L165
	.p2align 5
	.p2align 4
	.p2align 3
.L166:
	movzx	ecx, BYTE PTR [rsi+1]
	add	rsi, 1
	add	rax, 1
	mov	BYTE PTR [rax], cl
	test	cl, cl
	jne	.L166
.L165:
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
	jne	.L172
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L174:
	movzx	edx, BYTE PTR [rax+1]
	add	rax, 1
	test	dl, dl
	je	.L171
.L172:
	cmp	edx, esi
	jne	.L174
.L171:
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
	jmp	.L181
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L184:
	add	rax, 1
	test	cl, cl
	je	.L183
.L181:
	movsx	ecx, BYTE PTR [rax]
	cmp	ecx, esi
	jne	.L184
	ret
	.p2align 4,,10
	.p2align 3
.L183:
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
	je	.L186
	jmp	.L194
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L188:
	movzx	edx, BYTE PTR [rdi+rax]
	add	rax, 1
	movzx	ecx, BYTE PTR [rsi-1+rax]
	cmp	dl, cl
	jne	.L194
.L186:
	test	dl, dl
	jne	.L188
	xor	eax, eax
	sub	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L194:
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
	je	.L198
	mov	rax, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L197:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L197
	sub	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L198:
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
	je	.L200
	movzx	eax, BYTE PTR [rdi]
	sub	rdx, 1
	mov	rcx, rsi
	lea	r8, [rsi+rdx]
	test	al, al
	jne	.L204
	jmp	.L217
	.p2align 4,,10
	.p2align 3
.L219:
	cmp	rcx, r8
	je	.L203
	movzx	eax, BYTE PTR [rdi+1]
	add	rdi, 1
	lea	r10, [rcx+1]
	test	al, al
	je	.L218
	mov	rcx, r10
.L204:
	movzx	edx, BYTE PTR [rcx]
	test	dl, dl
	setne	r9b
	cmp	dl, al
	sete	sil
	test	r9b, sil
	jne	.L219
.L203:
	sub	eax, edx
.L200:
	ret
	.p2align 4,,10
	.p2align 3
.L218:
	movzx	edx, BYTE PTR [rcx+1]
	xor	eax, eax
	sub	eax, edx
	ret
.L217:
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
	mov	rcx, rsi
	cmp	rdx, 1
	jle	.L232
	mov	r11, rdx
	lea	rax, [rdx-2]
	shr	r11
	lea	r9, [r11-1]
	cmp	rax, 13
	jbe	.L227
	mov	r8, rdx
	mov	r10, rdx
	vmovdqa	xmm1, XMMWORD PTR .LC0[rip]
	xor	eax, eax
	shr	r8, 4
	and	r10, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L223:
	vmovdqu	xmm0, XMMWORD PTR [rdi+rax]
	vpshufb	xmm2, xmm0, xmm1
	vmovdqu	XMMWORD PTR [rcx+rax], xmm2
	add	rax, 16
	cmp	r10, rax
	jne	.L223
	lea	rsi, [0+r8*8]
	mov	rax, r8
	mov	r8, rsi
	sal	rax, 4
	neg	r8
	lea	r10, [rcx+rax]
	add	rax, rdi
	lea	rdx, [rdx+r8*2]
	cmp	rsi, r11
	je	.L233
.L222:
	sub	r9, rsi
	mov	r11, r9
	lea	r9, [r9+1]
	cmp	r11, 2
	jbe	.L225
	vmovq	xmm3, QWORD PTR [rdi+rsi*2]
	mov	rdi, r9
	and	rdi, -4
	vpshufb	xmm4, xmm3, XMMWORD PTR .LC1[rip]
	vmovq	QWORD PTR [rcx+rsi*2], xmm4
	lea	rcx, [rdi+rdi]
	neg	rdi
	add	r10, rcx
	add	rax, rcx
	lea	rdx, [rdx+rdi*2]
	and	r9d, 3
	je	.L232
.L225:
	movbe	si, WORD PTR [rax]
	mov	WORD PTR [r10], si
	cmp	rdx, 3
	jle	.L232
	movbe	r8w, WORD PTR [rax+2]
	mov	WORD PTR [r10+2], r8w
	cmp	rdx, 5
	jle	.L232
	movbe	dx, WORD PTR [rax+4]
	mov	WORD PTR [r10+4], dx
.L232:
	ret
	.p2align 4,,10
	.p2align 3
.L233:
	ret
.L227:
	mov	r10, rsi
	mov	rax, rdi
	xor	esi, esi
	jmp	.L222
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
	jbe	.L246
	cmp	edi, 31
	jbe	.L246
	lea	edx, [rdi-8232]
	mov	eax, 1
	cmp	edx, 1
	jbe	.L244
	sub	edi, 65529
	xor	eax, eax
	cmp	edi, 2
	setbe	al
	ret
	.p2align 4,,10
	.p2align 3
.L246:
	mov	eax, 1
.L244:
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
	jbe	.L255
	lea	eax, [rdi-8234]
	cmp	eax, 47061
	jbe	.L252
	cmp	edi, 8231
	jbe	.L252
	lea	edx, [rdi-57344]
	mov	eax, 1
	cmp	edx, 8184
	jbe	.L249
	lea	ecx, [rdi-65532]
	xor	eax, eax
	cmp	ecx, 1048579
	ja	.L249
	not	edi
	xor	eax, eax
	and	edi, 65534
	setne	al
	ret
	.p2align 4,,10
	.p2align 3
.L252:
	mov	eax, 1
.L249:
	ret
	.p2align 4,,10
	.p2align 3
.L255:
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
	jbe	.L256
	or	edi, 32
	xor	eax, eax
	sub	edi, 97
	cmp	edi, 5
	setbe	al
.L256:
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
	jp	.L260
	vucomisd	xmm1, xmm1
	jp	.L264
	vcomisd	xmm0, xmm1
	jbe	.L267
	vsubsd	xmm0, xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L267:
	vxorpd	xmm0, xmm0, xmm0
.L260:
	ret
	.p2align 4,,10
	.p2align 3
.L264:
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
	jp	.L268
	vucomiss	xmm1, xmm1
	jp	.L272
	vcomiss	xmm0, xmm1
	jbe	.L275
	vsubss	xmm0, xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L275:
	vxorps	xmm0, xmm0, xmm0
.L268:
	ret
	.p2align 4,,10
	.p2align 3
.L272:
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
	jp	.L276
	vucomisd	xmm1, xmm1
	jp	.L282
	vmovmskpd	eax, xmm0
	vmovmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L278
	test	eax, eax
	jne	.L276
.L282:
	vmovapd	xmm1, xmm0
.L276:
	vmovapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L278:
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
	jp	.L285
	vucomiss	xmm1, xmm1
	jp	.L291
	vmovd	eax, xmm0
	vmovd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L287
	test	eax, eax
	jne	.L285
.L291:
	vmovaps	xmm1, xmm0
.L285:
	vmovaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L287:
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
	jp	.L299
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L302
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
	je	.L296
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L299:
	fstp	st(0)
	jmp	.L294
	.p2align 4,,10
	.p2align 3
.L302:
	fstp	st(0)
.L294:
	ret
	.p2align 4,,10
	.p2align 3
.L296:
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
	jp	.L308
	vucomisd	xmm1, xmm1
	jp	.L303
	vmovmskpd	eax, xmm0
	vmovmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L305
	test	eax, eax
	jne	.L303
.L308:
	vmovapd	xmm0, xmm1
.L303:
	ret
	.p2align 4,,10
	.p2align 3
.L305:
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
	jp	.L317
	vucomiss	xmm1, xmm1
	jp	.L312
	vmovd	eax, xmm0
	vmovd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L314
	test	eax, eax
	jne	.L312
.L317:
	vmovaps	xmm0, xmm1
.L312:
	ret
	.p2align 4,,10
	.p2align 3
.L314:
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
	jp	.L329
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L327
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
	je	.L323
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L327:
	fstp	st(0)
	jmp	.L321
	.p2align 4,,10
	.p2align 3
.L329:
	fstp	st(0)
.L321:
	ret
	.p2align 4,,10
	.p2align 3
.L323:
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
	je	.L331
	.p2align 5
	.p2align 4
	.p2align 3
.L332:
	mov	ecx, eax
	add	rdx, 1
	and	ecx, 63
	movzx	esi, BYTE PTR digits[rcx]
	mov	BYTE PTR [rdx-1], sil
	shr	eax, 6
	jne	.L332
.L331:
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
	je	.L344
	vmovq	xmm1, QWORD PTR [rsi]
	vpinsrq	xmm0, xmm1, rsi, 1
	vmovdqu	XMMWORD PTR [rdi], xmm0
	mov	QWORD PTR [rsi], rdi
	mov	rax, QWORD PTR [rdi]
	test	rax, rax
	je	.L343
	mov	QWORD PTR [rax+8], rdi
.L343:
	ret
	.p2align 4,,10
	.p2align 3
.L344:
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
	je	.L346
	mov	rdx, QWORD PTR [rdi+8]
	mov	QWORD PTR [rax+8], rdx
.L346:
	mov	rcx, QWORD PTR [rdi+8]
	test	rcx, rcx
	je	.L354
	mov	QWORD PTR [rcx], rax
.L354:
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
	je	.L356
	mov	r13, rsi
	xor	r15d, r15d
	jmp	.L358
	.p2align 4,,10
	.p2align 3
.L371:
	add	r15, 1
	add	r13, rbx
	cmp	rbp, r15
	je	.L356
.L358:
	mov	rax, QWORD PTR [rsp+8]
	mov	r14, r13
	mov	rsi, r13
	mov	rdi, r12
	call	rax
	test	eax, eax
	jne	.L371
.L355:
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
.L356:
	.cfi_restore_state
	lea	rdx, [rbp+1]
	mov	rcx, QWORD PTR [rsp+24]
	mov	r14, QWORD PTR [rsp+16]
	imul	rbp, rbx
	mov	QWORD PTR [rcx], rdx
	add	r14, rbp
	test	rbx, rbx
	je	.L355
	mov	rdx, rbx
	mov	rsi, r12
	mov	rdi, r14
	call	memmove
	jmp	.L355
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
	je	.L373
	mov	r13, rcx
	mov	r12, r8
	mov	rbx, rsi
	xor	ebp, ebp
	jmp	.L375
	.p2align 4,,10
	.p2align 3
.L384:
	add	rbp, 1
	add	rbx, r13
	cmp	r14, rbp
	je	.L373
.L375:
	mov	rdi, QWORD PTR [rsp+8]
	mov	r15, rbx
	mov	rsi, rbx
	call	r12
	test	eax, eax
	jne	.L384
.L372:
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
.L373:
	.cfi_restore_state
	xor	r15d, r15d
	jmp	.L372
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
	jmp	.L413
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L409:
	add	rdi, 1
.L413:
	movsx	eax, BYTE PTR [rdi]
	lea	ecx, [rax-9]
	mov	edx, eax
	cmp	ecx, 4
	jbe	.L409
	cmp	dl, 32
	je	.L409
	cmp	dl, 43
	je	.L390
	cmp	dl, 45
	jne	.L414
	lea	r8, [rdi+1]
	movsx	edi, BYTE PTR [rdi+1]
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	ja	.L399
	mov	r9d, 1
.L393:
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L396:
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
	jbe	.L396
	sub	eax, r10d
	test	r9d, r9d
	cmovne	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L414:
	sub	eax, 48
	mov	r8, rdi
	xor	r9d, r9d
	cmp	eax, 9
	jbe	.L393
.L399:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L390:
	movsx	esi, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	xor	r9d, r9d
	mov	edx, esi
	sub	esi, 48
	cmp	esi, 9
	jbe	.L393
	jmp	.L399
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.p2align 4
	.globl	atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
	jmp	.L442
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L438:
	add	rdi, 1
.L442:
	movsx	eax, BYTE PTR [rdi]
	lea	ecx, [rax-9]
	mov	edx, eax
	cmp	ecx, 4
	jbe	.L438
	cmp	dl, 32
	je	.L438
	cmp	dl, 43
	je	.L419
	cmp	dl, 45
	jne	.L443
	lea	r8, [rdi+1]
	movsx	edi, BYTE PTR [rdi+1]
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	ja	.L428
	mov	r9d, 1
.L422:
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L425:
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
	jbe	.L425
	sub	rax, r10
	test	r9d, r9d
	cmovne	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L443:
	sub	eax, 48
	mov	r8, rdi
	xor	r9d, r9d
	cmp	eax, 9
	jbe	.L422
.L428:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L419:
	movsx	esi, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	xor	r9d, r9d
	mov	edx, esi
	sub	esi, 48
	cmp	esi, 9
	jbe	.L422
	jmp	.L428
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.p2align 4
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB171:
	.cfi_startproc
	jmp	.L468
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L465:
	add	rdi, 1
.L468:
	movsx	eax, BYTE PTR [rdi]
	lea	ecx, [rax-9]
	mov	edx, eax
	cmp	ecx, 4
	jbe	.L465
	cmp	dl, 32
	je	.L465
	cmp	dl, 43
	je	.L448
	cmp	dl, 45
	je	.L469
	sub	eax, 48
	mov	r8, rdi
	xor	r9d, r9d
	cmp	eax, 9
	ja	.L456
.L450:
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L453:
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
	jbe	.L453
	sub	rax, r10
	test	r9d, r9d
	cmovne	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L469:
	lea	r8, [rdi+1]
	movsx	edi, BYTE PTR [rdi+1]
	mov	r9d, 1
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	jbe	.L450
.L456:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L448:
	movsx	esi, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	mov	edx, esi
	sub	esi, 48
	cmp	esi, 9
	ja	.L456
	xor	r9d, r9d
	jmp	.L450
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
	je	.L471
	mov	r12, rsi
	mov	rbx, rdx
	mov	r13, rcx
	mov	r15, r8
	jmp	.L474
	.p2align 4,,10
	.p2align 3
.L484:
	je	.L470
	sub	rbx, 1
	lea	r12, [rbp+0+r13]
	sub	rbx, r14
	test	rbx, rbx
	je	.L471
.L474:
	mov	r14, rbx
	mov	rdi, QWORD PTR [rsp+8]
	shr	r14
	mov	rbp, r14
	imul	rbp, r13
	add	rbp, r12
	mov	rsi, rbp
	call	r15
	test	eax, eax
	jns	.L484
	mov	rbx, r14
	test	rbx, rbx
	jne	.L474
.L471:
	xor	ebp, ebp
.L470:
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
	je	.L490
	.p2align 4
	.p2align 3
.L498:
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
	je	.L485
	jle	.L488
	lea	r13d, [r13-1]
	lea	rbp, [rbx+r12]
	sar	r13d
	jne	.L498
.L490:
	xor	ebx, ebx
.L485:
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
.L488:
	.cfi_restore_state
	test	r15d, r15d
	je	.L490
	mov	r13d, r15d
	jmp	.L498
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
	jmp	.L517
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L519:
	cmp	esi, eax
	je	.L518
	add	rdi, 4
.L517:
	mov	eax, DWORD PTR [rdi]
	test	eax, eax
	jne	.L519
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L518:
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
	je	.L521
	jmp	.L522
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L523:
	mov	edx, DWORD PTR [rdi+rax]
	add	rax, 4
	mov	ecx, DWORD PTR [rsi-4+rax]
	cmp	edx, ecx
	jne	.L522
.L521:
	test	edx, edx
	jne	.L523
.L522:
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
.L530:
	mov	ecx, DWORD PTR [rsi+rdx]
	mov	DWORD PTR [rax+rdx], ecx
	add	rdx, 4
	test	ecx, ecx
	jne	.L530
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
	je	.L535
	mov	rax, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L534:
	mov	edx, DWORD PTR [rax+4]
	add	rax, 4
	test	edx, edx
	jne	.L534
	sub	rax, rdi
	sar	rax, 2
	ret
	.p2align 4,,10
	.p2align 3
.L535:
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
	jne	.L538
	jmp	.L544
	.p2align 4,,10
	.p2align 3
.L551:
	test	eax, eax
	je	.L542
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	je	.L544
.L538:
	mov	eax, DWORD PTR [rdi]
	cmp	DWORD PTR [rsi], eax
	je	.L551
.L542:
	mov	edx, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], edx
	mov	ecx, -1
	setg	sil
	movzx	eax, sil
	cmovl	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L544:
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
	jne	.L553
	jmp	.L556
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L555:
	add	rdi, 4
	sub	rdx, 1
	je	.L556
.L553:
	cmp	DWORD PTR [rdi], esi
	jne	.L555
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L556:
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
	jne	.L561
	jmp	.L566
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L563:
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	je	.L566
.L561:
	mov	eax, DWORD PTR [rdi]
	cmp	eax, DWORD PTR [rsi]
	je	.L563
	cmp	eax, DWORD PTR [rsi]
	mov	edx, -1
	setg	cl
	movzx	eax, cl
	cmovl	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L566:
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
	je	.L578
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	sal	rdx, 2
	call	memcpy
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L578:
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
	cmp	rdi, rsi
	je	.L612
	mov	rax, rcx
	lea	r8, [0+rdx*4]
	lea	rdi, [rdx-1]
	sub	rax, rsi
	cmp	rax, r8
	jb	.L583
	test	rdx, rdx
	je	.L612
	cmp	rdi, 2
	jbe	.L602
	lea	r9, [rsi+4]
	mov	r10, rcx
	sub	r10, r9
	cmp	r10, 24
	jbe	.L602
	cmp	rdi, 6
	jbe	.L603
	mov	r11, rdx
	xor	eax, eax
	xor	r8d, r8d
	shr	r11, 3
	.p2align 5
	.p2align 4
	.p2align 3
.L594:
	vmovdqu	ymm0, YMMWORD PTR [rsi+rax]
	add	r8, 1
	vmovdqu	YMMWORD PTR [rcx+rax], ymm0
	add	rax, 32
	cmp	r11, r8
	jne	.L594
	mov	r11, rdx
	and	r11, -8
	lea	rax, [0+r11*4]
	sub	rdi, r11
	lea	r9, [rsi+rax]
	add	rax, rcx
	test	dl, 7
	je	.L635
	sub	rdx, r11
	lea	r10, [rdx-1]
	cmp	r10, 2
	jbe	.L638
	vzeroupper
.L593:
	vmovdqu	xmm1, XMMWORD PTR [rsi+r11*4]
	mov	rsi, rdx
	and	rsi, -4
	sub	rdi, rsi
	sal	rsi, 2
	vmovdqu	XMMWORD PTR [rcx+r11*4], xmm1
	add	r9, rsi
	add	rax, rsi
	and	edx, 3
	je	.L612
.L597:
	mov	edx, DWORD PTR [r9]
	mov	DWORD PTR [rax], edx
	test	rdi, rdi
	je	.L612
	mov	r8d, DWORD PTR [r9+4]
	mov	DWORD PTR [rax+4], r8d
	cmp	rdi, 1
	je	.L612
	mov	edi, DWORD PTR [r9+8]
	mov	DWORD PTR [rax+8], edi
.L612:
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L583:
	test	rdx, rdx
	je	.L612
	cmp	rdi, 2
	jbe	.L633
	mov	r9, rcx
	sub	r9, rsi
	add	r9, 12
	cmp	r9, 8
	jbe	.L633
	mov	r11, rdx
	sub	r8, 16
	xor	eax, eax
	shr	r11, 2
	lea	r10, [rsi+r8]
	add	r8, rcx
	neg	r11
	sal	r11, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L587:
	vmovdqu	xmm2, XMMWORD PTR [r10+rax]
	vmovdqu	XMMWORD PTR [r8+rax], xmm2
	sub	rax, 16
	cmp	rax, r11
	jne	.L587
	mov	r8, rdx
	and	r8, -4
	sub	rdi, r8
	and	edx, 3
	je	.L612
	mov	edx, DWORD PTR [rsi+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], edx
	test	rdi, rdi
	je	.L612
	sub	rdi, 1
	mov	r10d, DWORD PTR [rsi+rdi*4]
	lea	r9, [0+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], r10d
	je	.L612
	mov	esi, DWORD PTR [rsi-4+r9]
	mov	DWORD PTR [rcx-4+r9], esi
	jmp	.L612
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L633:
	mov	r11d, DWORD PTR [rsi+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], r11d
	sub	rdi, 1
	jb	.L612
	mov	r11d, DWORD PTR [rsi+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], r11d
	sub	rdi, 1
	jnb	.L633
	jmp	.L612
	.p2align 4,,10
	.p2align 3
.L602:
	xor	r11d, r11d
	.p2align 5
	.p2align 4
	.p2align 3
.L634:
	mov	eax, DWORD PTR [rsi+r11*4]
	mov	DWORD PTR [rcx+r11*4], eax
	add	r11, 1
	cmp	rdx, r11
	jne	.L634
	jmp	.L612
.L635:
	vzeroupper
	jmp	.L612
.L603:
	mov	r9, rsi
	mov	rax, rcx
	xor	r11d, r11d
	jmp	.L593
.L638:
	vzeroupper
	jmp	.L597
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	vmovd	xmm1, esi
	lea	r9, [rdx-1]
	test	rdx, rdx
	je	.L640
	cmp	r9, 6
	jbe	.L646
	mov	r8, rdx
	vpshufd	xmm0, xmm1, 0
	xor	eax, eax
	vinsertf128	ymm0, ymm0, xmm0, 1
	shr	r8, 3
	.p2align 5
	.p2align 4
	.p2align 3
.L642:
	mov	rcx, rax
	add	rax, 1
	sal	rcx, 5
	vmovdqu	YMMWORD PTR [rdi+rcx], ymm0
	cmp	r8, rax
	jne	.L642
	mov	r10, rdx
	and	r10, -8
	sub	r9, r10
	lea	r8, [rdi+r10*4]
	test	dl, 7
	je	.L664
	vzeroupper
.L641:
	sub	rdx, r10
	lea	rsi, [rdx-1]
	cmp	rsi, 2
	jbe	.L644
	mov	r11, rdx
	vpshufd	xmm2, xmm1, 0
	vmovdqu	XMMWORD PTR [rdi+r10*4], xmm2
	and	r11, -4
	sub	r9, r11
	and	edx, 3
	lea	r8, [r8+r11*4]
	je	.L640
.L644:
	vmovd	DWORD PTR [r8], xmm1
	test	r9, r9
	je	.L640
	vmovd	DWORD PTR [r8+4], xmm1
	cmp	r9, 1
	je	.L640
	vmovd	DWORD PTR [r8+8], xmm1
.L640:
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L664:
	mov	rax, rdi
	vzeroupper
	ret
.L646:
	mov	r8, rdi
	xor	r10d, r10d
	jmp	.L641
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
	jnb	.L666
	test	rdx, rdx
	je	.L772
	lea	r9, [rdx-1]
	cmp	r9, 6
	jbe	.L769
	lea	r11, [rdi-2+rdx]
	mov	r10, rsi
	sub	r10, r11
	lea	rdi, [r10+14+r9]
	cmp	rdi, 14
	jbe	.L769
	lea	r11, [rcx+rdx]
	lea	r10, [rsi+rdx]
	cmp	r9, 14
	jbe	.L685
	mov	r8, rdx
	lea	rdi, [rdx-16]
	xor	eax, eax
	and	r8, -16
	lea	r9, [rcx+rdi]
	add	rdi, rsi
	neg	r8
	.p2align 5
	.p2align 4
	.p2align 3
.L670:
	vmovdqu	xmm2, XMMWORD PTR [r9+rax]
	vmovdqu	XMMWORD PTR [rdi+rax], xmm2
	sub	rax, 16
	cmp	r8, rax
	jne	.L670
	mov	rdi, rdx
	mov	r8, rdx
	and	rdi, -16
	sub	r10, rdi
	sub	r11, rdi
	sub	r8, rdi
	and	edx, 15
	je	.L772
	lea	r9, [r8-1]
	mov	rdx, r8
	cmp	r9, 6
	jbe	.L672
.L669:
	mov	rcx, QWORD PTR [rcx-8+rdx]
	mov	QWORD PTR [rsi-8+rdx], rcx
	mov	rsi, rdx
	and	rsi, -8
	sub	r10, rsi
	sub	r11, rsi
	sub	r8, rsi
	and	edx, 7
	je	.L772
.L672:
	movzx	edx, BYTE PTR [r11-1]
	mov	BYTE PTR [r10-1], dl
	cmp	r8, 1
	je	.L772
	movzx	eax, BYTE PTR [r11-2]
	mov	BYTE PTR [r10-2], al
	cmp	r8, 2
	je	.L772
	movzx	edi, BYTE PTR [r11-3]
	mov	BYTE PTR [r10-3], dil
	cmp	r8, 3
	je	.L772
	movzx	r9d, BYTE PTR [r11-4]
	mov	BYTE PTR [r10-4], r9b
	cmp	r8, 4
	je	.L772
	movzx	ecx, BYTE PTR [r11-5]
	mov	BYTE PTR [r10-5], cl
	cmp	r8, 5
	je	.L772
	movzx	esi, BYTE PTR [r11-6]
	mov	BYTE PTR [r10-6], sil
	cmp	r8, 6
	je	.L772
	movzx	r11d, BYTE PTR [r11-7]
	mov	BYTE PTR [r10-7], r11b
	ret
	.p2align 4,,10
	.p2align 3
.L666:
	jne	.L774
.L772:
	ret
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L775:
	sub	r9, 1
.L769:
	movzx	r10d, BYTE PTR [rcx-1+rdx]
	mov	BYTE PTR [rsi-1+rdx], r10b
	mov	rdx, r9
	test	r9, r9
	jne	.L775
	ret
	.p2align 4,,10
	.p2align 3
.L774:
	test	rdx, rdx
	je	.L772
	lea	rax, [rdx-1]
	cmp	rax, 14
	jbe	.L687
	lea	r8, [rdi+1]
	mov	rdi, rsi
	sub	rdi, r8
	cmp	rdi, 30
	jbe	.L687
	cmp	rax, 30
	jbe	.L688
	mov	r11, rdx
	xor	r9d, r9d
	and	r11, -32
	.p2align 5
	.p2align 4
	.p2align 3
.L678:
	vmovdqu	ymm0, YMMWORD PTR [rcx+r9]
	vmovdqu	YMMWORD PTR [rsi+r9], ymm0
	add	r9, 32
	cmp	r11, r9
	jne	.L678
	mov	rax, rdx
	lea	r8, [rsi+r11]
	lea	rdi, [rcx+r11]
	sub	rax, r11
	cmp	rdx, r11
	je	.L770
	lea	r10, [rax-1]
	mov	rdx, rax
	cmp	r10, 14
	jbe	.L776
	vzeroupper
.L677:
	vmovdqu	xmm1, XMMWORD PTR [rcx+r11]
	vmovdqu	XMMWORD PTR [rsi+r11], xmm1
	mov	rsi, rdx
	and	rsi, -16
	add	r8, rsi
	add	rdi, rsi
	sub	rax, rsi
	and	edx, 15
	je	.L772
.L681:
	movzx	edx, BYTE PTR [rdi]
	mov	BYTE PTR [r8], dl
	cmp	rax, 1
	je	.L772
	movzx	ecx, BYTE PTR [rdi+1]
	mov	BYTE PTR [r8+1], cl
	cmp	rax, 2
	je	.L772
	movzx	r11d, BYTE PTR [rdi+2]
	mov	BYTE PTR [r8+2], r11b
	cmp	rax, 3
	je	.L772
	movzx	r9d, BYTE PTR [rdi+3]
	mov	BYTE PTR [r8+3], r9b
	cmp	rax, 4
	je	.L772
	movzx	r10d, BYTE PTR [rdi+4]
	mov	BYTE PTR [r8+4], r10b
	cmp	rax, 5
	je	.L772
	movzx	esi, BYTE PTR [rdi+5]
	mov	BYTE PTR [r8+5], sil
	cmp	rax, 6
	je	.L772
	movzx	edx, BYTE PTR [rdi+6]
	mov	BYTE PTR [r8+6], dl
	cmp	rax, 7
	je	.L772
	movzx	ecx, BYTE PTR [rdi+7]
	mov	BYTE PTR [r8+7], cl
	cmp	rax, 8
	je	.L772
	movzx	r11d, BYTE PTR [rdi+8]
	mov	BYTE PTR [r8+8], r11b
	cmp	rax, 9
	je	.L772
	movzx	r9d, BYTE PTR [rdi+9]
	mov	BYTE PTR [r8+9], r9b
	cmp	rax, 10
	je	.L772
	movzx	r10d, BYTE PTR [rdi+10]
	mov	BYTE PTR [r8+10], r10b
	cmp	rax, 11
	je	.L772
	movzx	esi, BYTE PTR [rdi+11]
	mov	BYTE PTR [r8+11], sil
	cmp	rax, 12
	je	.L772
	movzx	edx, BYTE PTR [rdi+12]
	mov	BYTE PTR [r8+12], dl
	cmp	rax, 13
	je	.L772
	movzx	ecx, BYTE PTR [rdi+13]
	mov	BYTE PTR [r8+13], cl
	cmp	rax, 14
	je	.L772
	movzx	edi, BYTE PTR [rdi+14]
	mov	BYTE PTR [r8+14], dil
	ret
	.p2align 4,,10
	.p2align 3
.L687:
	xor	r8d, r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L768:
	movzx	eax, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rsi+r8], al
	add	r8, 1
	cmp	rdx, r8
	jne	.L768
	ret
.L776:
	vzeroupper
	jmp	.L681
.L685:
	mov	r8, rdx
	jmp	.L669
.L688:
	mov	r8, rsi
	mov	rdi, rcx
	mov	rax, rdx
	xor	r11d, r11d
	jmp	.L677
.L770:
	vzeroupper
	ret
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
	jmp	.L793
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L791:
	cmp	ecx, 32
	je	.L795
.L793:
	mov	eax, edi
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L791
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L795:
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
	je	.L796
	mov	eax, edi
	and	eax, 1
	jne	.L796
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L798:
	sar	edi
	add	eax, 1
	test	dil, 1
	je	.L798
.L796:
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
	vmovss	xmm1, DWORD PTR .LC5[rip]
	mov	eax, 1
	vcomiss	xmm1, xmm0
	ja	.L803
	xor	eax, eax
	vcomiss	xmm0, DWORD PTR .LC6[rip]
	seta	al
.L803:
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
	vmovsd	xmm1, QWORD PTR .LC7[rip]
	mov	eax, 1
	vcomisd	xmm1, xmm0
	ja	.L806
	xor	eax, eax
	vcomisd	xmm0, QWORD PTR .LC8[rip]
	seta	al
.L806:
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
	fld	TBYTE PTR .LC9[rip]
	fcomip	st, st(1)
	ja	.L812
	fld	TBYTE PTR .LC10[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L809
	.p2align 4,,10
	.p2align 3
.L812:
	fstp	st(0)
.L809:
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
	jp	.L815
	vaddss	xmm1, xmm0, xmm0
	vucomiss	xmm1, xmm0
	jp	.L822
	jne	.L822
.L815:
	ret
	.p2align 4,,10
	.p2align 3
.L822:
	vmovss	xmm2, DWORD PTR .LC11[rip]
	test	edi, edi
	jns	.L817
	vmovss	xmm2, DWORD PTR .LC12[rip]
.L817:
	test	dil, 1
	je	.L818
	.p2align 4
	.p2align 3
.L819:
	vmulss	xmm0, xmm0, xmm2
.L818:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L815
	vmulss	xmm2, xmm2, xmm2
	test	dil, 1
	jne	.L819
.L829:
	vmulss	xmm2, xmm2, xmm2
	mov	edx, edi
	shr	edx, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L819
	jmp	.L829
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
	jp	.L831
	vaddsd	xmm1, xmm0, xmm0
	vucomisd	xmm1, xmm0
	jp	.L838
	jne	.L838
.L831:
	ret
	.p2align 4,,10
	.p2align 3
.L838:
	vmovsd	xmm2, QWORD PTR .LC13[rip]
	test	edi, edi
	jns	.L833
	vmovsd	xmm2, QWORD PTR .LC14[rip]
.L833:
	test	dil, 1
	je	.L834
	.p2align 4
	.p2align 3
.L835:
	vmulsd	xmm0, xmm0, xmm2
.L834:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L831
	vmulsd	xmm2, xmm2, xmm2
	test	dil, 1
	jne	.L835
.L845:
	vmulsd	xmm2, xmm2, xmm2
	mov	edx, edi
	shr	edx, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L835
	jmp	.L845
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
	jp	.L847
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L854
	jne	.L854
	jmp	.L847
	.p2align 4,,10
	.p2align 3
.L863:
	fstp	st(0)
.L847:
	ret
	.p2align 4,,10
	.p2align 3
.L854:
	test	edi, edi
	js	.L861
	fld	DWORD PTR .LC11[rip]
.L849:
	test	dil, 1
	je	.L850
	.p2align 4
	.p2align 3
.L851:
	fmul	st(1), st
.L850:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L863
	fmul	st, st(0)
	test	dil, 1
	jne	.L851
.L862:
	mov	edx, edi
	fmul	st, st(0)
	shr	edx, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L851
	jmp	.L862
	.p2align 4,,10
	.p2align 3
.L861:
	fld	DWORD PTR .LC12[rip]
	jmp	.L849
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
	je	.L865
	lea	rax, [rdx-1]
	cmp	rax, 30
	jbe	.L871
	mov	rdi, rdx
	xor	r8d, r8d
	and	rdi, -32
	.p2align 5
	.p2align 4
	.p2align 3
.L867:
	vmovdqu	ymm0, YMMWORD PTR [rcx+r8]
	vxorps	ymm1, ymm0, YMMWORD PTR [rsi+r8]
	vmovdqu	YMMWORD PTR [rcx+r8], ymm1
	add	r8, 32
	cmp	r8, rdi
	jne	.L867
	mov	r9, rdx
	lea	r11, [rcx+rdi]
	lea	rax, [rsi+rdi]
	sub	r9, rdi
	cmp	rdx, rdi
	je	.L922
	vzeroupper
.L866:
	sub	rdx, rdi
	lea	r10, [rdx-1]
	cmp	r10, 14
	jbe	.L869
	lea	r8, [rcx+rdi]
	vmovdqu	xmm2, XMMWORD PTR [r8]
	vpxor	xmm3, xmm2, XMMWORD PTR [rsi+rdi]
	mov	rsi, rdx
	and	rsi, -16
	add	r11, rsi
	add	rax, rsi
	sub	r9, rsi
	and	edx, 15
	vmovdqu	XMMWORD PTR [r8], xmm3
	je	.L865
.L869:
	movzx	edx, BYTE PTR [rax]
	xor	BYTE PTR [r11], dl
	cmp	r9, 1
	je	.L865
	movzx	edi, BYTE PTR [rax+1]
	xor	BYTE PTR [r11+1], dil
	cmp	r9, 2
	je	.L865
	movzx	r10d, BYTE PTR [rax+2]
	xor	BYTE PTR [r11+2], r10b
	cmp	r9, 3
	je	.L865
	movzx	r8d, BYTE PTR [rax+3]
	xor	BYTE PTR [r11+3], r8b
	cmp	r9, 4
	je	.L865
	movzx	esi, BYTE PTR [rax+4]
	xor	BYTE PTR [r11+4], sil
	cmp	r9, 5
	je	.L865
	movzx	edx, BYTE PTR [rax+5]
	xor	BYTE PTR [r11+5], dl
	cmp	r9, 6
	je	.L865
	movzx	edi, BYTE PTR [rax+6]
	xor	BYTE PTR [r11+6], dil
	cmp	r9, 7
	je	.L865
	movzx	r10d, BYTE PTR [rax+7]
	xor	BYTE PTR [r11+7], r10b
	cmp	r9, 8
	je	.L865
	movzx	r8d, BYTE PTR [rax+8]
	xor	BYTE PTR [r11+8], r8b
	cmp	r9, 9
	je	.L865
	movzx	esi, BYTE PTR [rax+9]
	xor	BYTE PTR [r11+9], sil
	cmp	r9, 10
	je	.L865
	movzx	edx, BYTE PTR [rax+10]
	xor	BYTE PTR [r11+10], dl
	cmp	r9, 11
	je	.L865
	movzx	edi, BYTE PTR [rax+11]
	xor	BYTE PTR [r11+11], dil
	cmp	r9, 12
	je	.L865
	movzx	r10d, BYTE PTR [rax+12]
	xor	BYTE PTR [r11+12], r10b
	cmp	r9, 13
	je	.L865
	movzx	r8d, BYTE PTR [rax+13]
	xor	BYTE PTR [r11+13], r8b
	cmp	r9, 14
	je	.L865
	movzx	eax, BYTE PTR [rax+14]
	xor	BYTE PTR [r11+14], al
.L865:
	mov	rax, rcx
	ret
.L871:
	mov	r11, rdi
	mov	rax, rsi
	mov	r9, rdx
	xor	edi, edi
	jmp	.L866
.L922:
	vzeroupper
	jmp	.L865
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
	je	.L924
	.p2align 4
	.p2align 4
	.p2align 3
.L925:
	add	rcx, 1
	cmp	BYTE PTR [rcx], 0
	jne	.L925
.L924:
	test	rdx, rdx
	jne	.L926
	jmp	.L927
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L928:
	add	rsi, 1
	add	rcx, 1
	sub	rdx, 1
	je	.L927
.L926:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rcx], r8b
	test	r8b, r8b
	jne	.L928
	ret
	.p2align 4,,10
	.p2align 3
.L927:
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
	je	.L937
.L938:
	cmp	BYTE PTR [rdi+rax], 0
	jne	.L940
.L937:
	ret
	.p2align 4,,10
	.p2align 3
.L940:
	add	rax, 1
	cmp	rsi, rax
	jne	.L938
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
	je	.L951
.L947:
	mov	rdx, rsi
	jmp	.L950
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L949:
	add	rdx, 1
	cmp	cl, r8b
	je	.L948
.L950:
	movzx	ecx, BYTE PTR [rdx]
	test	cl, cl
	jne	.L949
	movzx	r8d, BYTE PTR [rax+1]
	add	rax, 1
	test	r8b, r8b
	jne	.L947
.L951:
	xor	eax, eax
.L948:
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
.L956:
	movsx	ecx, BYTE PTR [rdi]
	cmp	ecx, esi
	cmove	rdx, rdi
	add	rdi, 1
	test	cl, cl
	jne	.L956
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
	je	.L970
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L960:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L960
	mov	r9, rdx
	sub	rax, rsi
	je	.L958
	lea	r11, [rsi-1+rax]
	jmp	.L980
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L982:
	add	rdx, 1
	test	cl, cl
	je	.L981
.L980:
	movzx	ecx, BYTE PTR [rdx]
	cmp	cl, r10b
	jne	.L982
	mov	ecx, r10d
	mov	rax, rsi
	mov	r8, rdx
	jmp	.L962
	.p2align 4,,10
	.p2align 3
.L983:
	test	dil, dil
	setne	r9b
	cmp	dil, cl
	sete	dil
	test	r9b, dil
	je	.L963
	movzx	ecx, BYTE PTR [r8+1]
	add	r8, 1
	add	rax, 1
	test	cl, cl
	je	.L963
.L962:
	movzx	edi, BYTE PTR [rax]
	cmp	rax, r11
	jne	.L983
.L963:
	cmp	cl, BYTE PTR [rax]
	je	.L970
	add	rdx, 1
	jmp	.L980
	.p2align 4,,10
	.p2align 3
.L981:
	xor	r9d, r9d
.L958:
	mov	rax, r9
	ret
.L970:
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
	ja	.L994
	vcomisd	xmm0, xmm2
	jbe	.L988
	vcomisd	xmm2, xmm1
	ja	.L987
.L988:
	ret
	.p2align 4,,10
	.p2align 3
.L994:
	vcomisd	xmm1, xmm2
	jbe	.L988
.L987:
	vxorpd	xmm0, xmm0, XMMWORD PTR .LC15[rip]
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
	je	.L995
	cmp	rsi, rcx
	jb	.L1006
	sub	rsi, rcx
	add	rsi, rdi
	jc	.L1006
	movzx	r9d, BYTE PTR [rdx]
	jmp	.L1001
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1005:
	mov	rax, rdi
.L997:
	cmp	rsi, rax
	jb	.L1006
.L1001:
	lea	rdi, [rax+1]
	cmp	BYTE PTR [rax], r9b
	jne	.L1005
	cmp	rcx, 1
	je	.L995
.L1000:
	mov	r11d, 1
	jmp	.L998
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L999:
	add	r11, 1
	cmp	rcx, r11
	je	.L995
.L998:
	movzx	r10d, BYTE PTR [rdx+r11]
	cmp	BYTE PTR [rax+r11], r10b
	je	.L999
	cmp	rsi, rdi
	jb	.L1006
	lea	rax, [rdi+1]
	cmp	r9b, BYTE PTR [rdi]
	jne	.L997
	mov	r8, rdi
	mov	rdi, rax
	mov	rax, r8
	jmp	.L1000
	.p2align 4,,10
	.p2align 3
.L1006:
	xor	eax, eax
.L995:
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
	je	.L1016
	call	memmove
	mov	rdi, rax
.L1016:
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
	ja	.L1045
	vmovsd	xmm5, QWORD PTR .LC18[rip]
	xor	edx, edx
	vcomisd	xmm0, xmm5
	jb	.L1046
.L1024:
	vmovsd	xmm6, QWORD PTR .LC14[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1031:
	vmulsd	xmm0, xmm0, xmm6
	add	eax, 1
	vcomisd	xmm0, xmm5
	jnb	.L1031
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	je	.L1021
.L1048:
	vxorpd	xmm0, xmm0, XMMWORD PTR .LC15[rip]
.L1021:
	ret
	.p2align 4,,10
	.p2align 3
.L1046:
	vmovsd	xmm1, QWORD PTR .LC14[rip]
	vcomisd	xmm1, xmm0
	jbe	.L1027
	vucomisd	xmm0, xmm2
	jp	.L1037
	jne	.L1037
.L1027:
	mov	DWORD PTR [rdi], 0
	ret
	.p2align 4,,10
	.p2align 3
.L1045:
	vmovsd	xmm4, QWORD PTR .LC16[rip]
	vxorpd	xmm3, xmm0, XMMWORD PTR .LC15[rip]
	vcomisd	xmm4, xmm0
	jb	.L1047
	vmovsd	xmm5, QWORD PTR .LC18[rip]
	vmovapd	xmm0, xmm3
	mov	edx, 1
	jmp	.L1024
	.p2align 4,,10
	.p2align 3
.L1047:
	vcomisd	xmm0, QWORD PTR .LC17[rip]
	jbe	.L1027
	vmovsd	xmm1, QWORD PTR .LC14[rip]
	mov	edx, 1
.L1025:
	vmovapd	xmm0, xmm3
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1033:
	vaddsd	xmm0, xmm0, xmm0
	sub	eax, 1
	vcomisd	xmm1, xmm0
	ja	.L1033
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	jne	.L1048
	ret
.L1037:
	vmovapd	xmm3, xmm0
	xor	edx, edx
	jmp	.L1025
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
	je	.L1049
	.p2align 5
	.p2align 4
	.p2align 3
.L1051:
	mov	rax, rdi
	and	eax, 1
	neg	rax
	and	rax, rsi
	add	rsi, rsi
	add	rdx, rax
	shr	rdi
	jne	.L1051
.L1049:
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
	jb	.L1055
	jmp	.L1078
	.p2align 4,,10
	.p2align 3
.L1058:
	add	esi, esi
	add	r11d, r11d
	cmp	esi, edi
	jnb	.L1057
	test	r11d, r11d
	je	.L1057
.L1055:
	test	esi, esi
	jns	.L1058
.L1059:
	xor	eax, eax
	xor	r10d, r10d
	.p2align 6
	.p2align 4
	.p2align 3
.L1061:
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
	jne	.L1061
.L1060:
	test	rdx, rdx
	cmovne	eax, edi
	ret
	.p2align 4,,10
	.p2align 3
.L1057:
	xor	eax, eax
	test	r11d, r11d
	jne	.L1059
	test	rdx, rdx
	cmovne	eax, edi
	ret
.L1078:
	mov	eax, edi
	sub	eax, esi
	cmp	edi, esi
	setnb	cl
	cmovnb	edi, eax
	movzx	eax, cl
	jmp	.L1060
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
	je	.L1081
	movsx	ecx, al
	sal	ecx, 8
	bsr	esi, ecx
	xor	esi, 31
	lea	r8d, [rsi-1]
.L1081:
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
	je	.L1084
	bsr	rcx, rax
	xor	rcx, 63
	lea	esi, [rcx-1]
.L1084:
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
	je	.L1087
	.p2align 5
	.p2align 4
	.p2align 3
.L1089:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L1089
.L1087:
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
	mov	r10d, edx
	mov	esi, edx
	shr	r10d, 3
	and	esi, -8
	cmp	rdi, rcx
	jb	.L1097
	mov	eax, edx
	add	rax, rcx
	cmp	rax, rdi
	jnb	.L1188
.L1097:
	test	r10d, r10d
	je	.L1189
	lea	eax, [r10-1]
	cmp	eax, 3
	jbe	.L1099
	lea	r9, [rcx+8]
	mov	r8, rdi
	sub	r8, r9
	cmp	r8, 16
	jbe	.L1099
	mov	r11d, edx
	xor	eax, eax
	shr	r11d, 5
	mov	r9d, r11d
	sal	r9, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1100:
	vmovdqu	ymm1, YMMWORD PTR [rcx+rax]
	vmovdqu	YMMWORD PTR [rdi+rax], ymm1
	add	rax, 32
	cmp	r9, rax
	jne	.L1100
	lea	r11d, [0+r11*4]
	cmp	r10d, r11d
	je	.L1103
	mov	r8d, r11d
	lea	eax, [r11+1]
	mov	r9, QWORD PTR [rcx+r8*8]
	mov	QWORD PTR [rdi+r8*8], r9
	cmp	eax, r10d
	jnb	.L1103
	mov	r8, QWORD PTR [rcx+rax*8]
	add	r11d, 2
	mov	QWORD PTR [rdi+rax*8], r8
	cmp	r11d, r10d
	jnb	.L1103
	mov	r10, QWORD PTR [rcx+r11*8]
	mov	QWORD PTR [rdi+r11*8], r10
.L1103:
	cmp	esi, edx
	jnb	.L1163
	mov	r11d, edx
	sub	r11d, esi
	lea	eax, [r11-1]
	cmp	eax, 14
	jbe	.L1190
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	r8d, esi
	lea	r10, [rdi+r8]
	mov	r9, r10
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	.cfi_offset 3, -24
	lea	rbx, [rcx+1+r8]
	sub	r9, rbx
	cmp	r9, 30
	jbe	.L1164
	cmp	eax, 30
	jbe	.L1120
	mov	r9d, r11d
	lea	rbx, [rcx+r8]
	xor	eax, eax
	shr	r9d, 5
	sal	r9, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1105:
	vmovdqu	ymm2, YMMWORD PTR [rbx+rax]
	vmovdqu	YMMWORD PTR [r10+rax], ymm2
	add	rax, 32
	cmp	r9, rax
	jne	.L1105
	mov	eax, r11d
	and	eax, -32
	add	esi, eax
	test	r11b, 31
	je	.L1180
	sub	r11d, eax
	lea	r10d, [r11-1]
	cmp	r10d, 14
	jbe	.L1107
.L1104:
	add	rax, r8
	mov	r8d, r11d
	and	r8d, -16
	vmovdqu	xmm3, XMMWORD PTR [rcx+rax]
	add	esi, r8d
	and	r11d, 15
	vmovdqu	XMMWORD PTR [rdi+rax], xmm3
	je	.L1180
.L1107:
	mov	r11d, esi
	lea	r9d, [rsi+1]
	movzx	ebx, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], bl
	cmp	r9d, edx
	jnb	.L1180
	movzx	eax, BYTE PTR [rcx+r9]
	lea	r10d, [rsi+2]
	mov	BYTE PTR [rdi+r9], al
	cmp	r10d, edx
	jnb	.L1180
	movzx	r8d, BYTE PTR [rcx+r10]
	lea	r11d, [rsi+3]
	mov	BYTE PTR [rdi+r10], r8b
	cmp	r11d, edx
	jnb	.L1180
	movzx	ebx, BYTE PTR [rcx+r11]
	lea	r9d, [rsi+4]
	mov	BYTE PTR [rdi+r11], bl
	cmp	r9d, edx
	jnb	.L1180
	movzx	eax, BYTE PTR [rcx+r9]
	lea	r10d, [rsi+5]
	mov	BYTE PTR [rdi+r9], al
	cmp	r10d, edx
	jnb	.L1180
	movzx	r8d, BYTE PTR [rcx+r10]
	lea	r11d, [rsi+6]
	mov	BYTE PTR [rdi+r10], r8b
	cmp	r11d, edx
	jnb	.L1180
	movzx	ebx, BYTE PTR [rcx+r11]
	lea	r9d, [rsi+7]
	mov	BYTE PTR [rdi+r11], bl
	cmp	r9d, edx
	jnb	.L1180
	movzx	eax, BYTE PTR [rcx+r9]
	lea	r10d, [rsi+8]
	mov	BYTE PTR [rdi+r9], al
	cmp	r10d, edx
	jnb	.L1180
	movzx	r8d, BYTE PTR [rcx+r10]
	lea	r11d, [rsi+9]
	mov	BYTE PTR [rdi+r10], r8b
	cmp	r11d, edx
	jnb	.L1180
	movzx	ebx, BYTE PTR [rcx+r11]
	lea	r9d, [rsi+10]
	mov	BYTE PTR [rdi+r11], bl
	cmp	r9d, edx
	jnb	.L1180
	movzx	eax, BYTE PTR [rcx+r9]
	lea	r10d, [rsi+11]
	mov	BYTE PTR [rdi+r9], al
	cmp	r10d, edx
	jnb	.L1180
	movzx	r8d, BYTE PTR [rcx+r10]
	lea	r11d, [rsi+12]
	mov	BYTE PTR [rdi+r10], r8b
	cmp	r11d, edx
	jnb	.L1180
	movzx	ebx, BYTE PTR [rcx+r11]
	lea	r9d, [rsi+13]
	mov	BYTE PTR [rdi+r11], bl
	cmp	r9d, edx
	jnb	.L1180
	movzx	eax, BYTE PTR [rcx+r9]
	add	esi, 14
	mov	BYTE PTR [rdi+r9], al
	cmp	esi, edx
	jnb	.L1180
	movzx	edx, BYTE PTR [rcx+rsi]
	mov	BYTE PTR [rdi+rsi], dl
	vzeroupper
	jmp	.L1181
	.p2align 4,,10
	.p2align 3
.L1188:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	lea	r8d, [rdx-1]
	test	edx, edx
	je	.L1191
	mov	esi, r8d
	cmp	r8d, 6
	jbe	.L1118
	mov	r9, rdi
	sub	r9, rcx
	add	r9, 15
	cmp	r9, 14
	jbe	.L1118
	cmp	r8d, 14
	jbe	.L1121
	mov	r9d, edx
	lea	r10, [rsi-15]
	xor	eax, eax
	shr	r9d, 4
	lea	r11, [rcx+r10]
	add	r10, rdi
	neg	r9
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1113:
	vmovdqu	xmm0, XMMWORD PTR [r11+rax]
	vmovdqu	XMMWORD PTR [r10+rax], xmm0
	sub	rax, 16
	cmp	rax, r9
	jne	.L1113
	mov	r11d, edx
	and	r11d, -16
	sub	r8d, r11d
	test	dl, 15
	je	.L1184
	sub	edx, r11d
	lea	r10d, [rdx-1]
	cmp	r10d, 6
	jbe	.L1116
.L1112:
	lea	r9, [rsi-7]
	sub	r9, r11
	mov	r11d, edx
	and	r11d, -8
	mov	rsi, QWORD PTR [rcx+r9]
	sub	r8d, r11d
	and	edx, 7
	mov	QWORD PTR [rdi+r9], rsi
	je	.L1184
.L1116:
	mov	eax, r8d
	lea	r10d, [r8-1]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r8d, r8d
	je	.L1184
	mov	r9d, r10d
	lea	r11d, [r8-2]
	movzx	esi, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], sil
	test	r10d, r10d
	je	.L1184
	mov	eax, r11d
	lea	r10d, [r8-3]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r11d, r11d
	je	.L1184
	mov	r9d, r10d
	lea	r11d, [r8-4]
	movzx	esi, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], sil
	test	r10d, r10d
	je	.L1184
	mov	eax, r11d
	lea	r10d, [r8-5]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r11d, r11d
	je	.L1184
	mov	r9d, r10d
	lea	r8d, [r8-6]
	movzx	esi, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], sil
	test	r10d, r10d
	je	.L1184
	movzx	ecx, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], cl
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1118:
	movzx	r11d, BYTE PTR [rcx+rsi]
	mov	BYTE PTR [rdi+rsi], r11b
	sub	rsi, 1
	jnb	.L1118
	ret
	.p2align 4,,10
	.p2align 3
.L1180:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	vzeroupper
.L1181:
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L1120:
	.cfi_restore_state
	xor	eax, eax
	jmp	.L1104
	.p2align 4,,10
	.p2align 3
.L1099:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	lea	r11d, [0+r10*8]
	xor	r9d, r9d
	.p2align 5
	.p2align 4
	.p2align 3
.L1102:
	mov	rax, QWORD PTR [rcx+r9]
	mov	QWORD PTR [rdi+r9], rax
	add	r9, 8
	cmp	r9, r11
	jne	.L1102
	jmp	.L1103
	.p2align 4,,10
	.p2align 3
.L1189:
	mov	esi, esi
	test	edx, edx
	je	.L1192
.L1183:
	mov	r8, rsi
.L1185:
	movzx	r10d, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], r10b
	add	r8, 1
	cmp	r8d, edx
	jb	.L1185
.L1184:
	ret
	.p2align 4,,10
	.p2align 3
.L1163:
	vzeroupper
	ret
.L1164:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	vzeroupper
	.p2align 5
	.p2align 4
	.p2align 3
.L1109:
	movzx	esi, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], sil
	add	r8, 1
	cmp	r8d, edx
	jb	.L1109
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
.L1191:
	.cfi_restore 3
	.cfi_restore 6
	ret
.L1121:
	xor	r11d, r11d
	jmp	.L1112
.L1190:
	mov	esi, esi
	vzeroupper
	jmp	.L1183
.L1192:
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
	mov	r8d, edx
	mov	rcx, rdi
	shr	r8d
	cmp	rdi, rsi
	jb	.L1197
	mov	eax, edx
	add	rax, rsi
	cmp	rax, rdi
	jnb	.L1258
.L1197:
	test	r8d, r8d
	je	.L1196
	lea	eax, [r8-1]
	cmp	eax, 6
	jbe	.L1200
	lea	r11, [rsi+2]
	mov	r9, rcx
	sub	r9, r11
	cmp	r9, 28
	jbe	.L1200
	cmp	eax, 14
	jbe	.L1217
	mov	r10d, edx
	xor	eax, eax
	shr	r10d, 5
	mov	edi, r10d
	sal	rdi, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1202:
	vmovdqu	ymm1, YMMWORD PTR [rsi+rax]
	vmovdqu	YMMWORD PTR [rcx+rax], ymm1
	add	rax, 32
	cmp	rax, rdi
	jne	.L1202
	mov	r11d, r10d
	sal	r11d, 4
	cmp	r8d, r11d
	je	.L1255
	mov	r10d, r8d
	sub	r10d, r11d
	lea	r9d, [r10-1]
	cmp	r9d, 6
	jbe	.L1259
	vzeroupper
.L1201:
	mov	edi, r11d
	mov	eax, r10d
	and	eax, -8
	vmovdqu	xmm2, XMMWORD PTR [rsi+rdi*2]
	add	r11d, eax
	and	r10d, 7
	vmovdqu	XMMWORD PTR [rcx+rdi*2], xmm2
	je	.L1196
.L1204:
	mov	r10d, r11d
	lea	edi, [r11+1]
	movzx	r9d, WORD PTR [rsi+r10*2]
	mov	WORD PTR [rcx+r10*2], r9w
	cmp	edi, r8d
	jnb	.L1196
	movzx	eax, WORD PTR [rsi+rdi*2]
	lea	r10d, [r11+2]
	mov	WORD PTR [rcx+rdi*2], ax
	cmp	r10d, r8d
	jnb	.L1196
	movzx	r9d, WORD PTR [rsi+r10*2]
	lea	edi, [r11+3]
	mov	WORD PTR [rcx+r10*2], r9w
	cmp	edi, r8d
	jnb	.L1196
	movzx	eax, WORD PTR [rsi+rdi*2]
	lea	r10d, [r11+4]
	mov	WORD PTR [rcx+rdi*2], ax
	cmp	r10d, r8d
	jnb	.L1196
	movzx	r9d, WORD PTR [rsi+r10*2]
	lea	edi, [r11+5]
	mov	WORD PTR [rcx+r10*2], r9w
	cmp	edi, r8d
	jnb	.L1196
	movzx	eax, WORD PTR [rsi+rdi*2]
	add	r11d, 6
	mov	WORD PTR [rcx+rdi*2], ax
	cmp	r11d, r8d
	jnb	.L1196
	movzx	r8d, WORD PTR [rsi+r11*2]
	mov	WORD PTR [rcx+r11*2], r8w
.L1196:
	test	dl, 1
	je	.L1257
.L1261:
	lea	edi, [rdx-1]
	movzx	edx, BYTE PTR [rsi+rdi]
	mov	BYTE PTR [rcx+rdi], dl
	ret
	.p2align 4,,10
	.p2align 3
.L1258:
	lea	r8d, [rdx-1]
	test	edx, edx
	je	.L1260
	mov	edi, r8d
	cmp	r8d, 6
	ja	.L1254
	.p2align 4
	.p2align 4
	.p2align 3
.L1215:
	movzx	r10d, BYTE PTR [rsi+rdi]
	mov	BYTE PTR [rcx+rdi], r10b
	sub	rdi, 1
	jnb	.L1215
.L1257:
	ret
	.p2align 4,,10
	.p2align 3
.L1254:
	mov	r9, rcx
	sub	r9, rsi
	add	r9, 15
	cmp	r9, 14
	jbe	.L1215
	cmp	r8d, 14
	jbe	.L1218
	mov	r9d, edx
	lea	r10, [rdi-15]
	xor	eax, eax
	shr	r9d, 4
	lea	r11, [rsi+r10]
	add	r10, rcx
	neg	r9
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1211:
	vmovdqu	xmm0, XMMWORD PTR [r11+rax]
	vmovdqu	XMMWORD PTR [r10+rax], xmm0
	sub	rax, 16
	cmp	rax, r9
	jne	.L1211
	mov	r10d, edx
	and	r10d, -16
	sub	r8d, r10d
	test	dl, 15
	je	.L1257
	sub	edx, r10d
	lea	r11d, [rdx-1]
	cmp	r11d, 6
	jbe	.L1213
.L1210:
	lea	r9, [rdi-7]
	sub	r9, r10
	mov	r10d, edx
	and	r10d, -8
	mov	rdi, QWORD PTR [rsi+r9]
	sub	r8d, r10d
	and	edx, 7
	mov	QWORD PTR [rcx+r9], rdi
	je	.L1257
.L1213:
	mov	eax, r8d
	lea	r11d, [r8-1]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r8d, r8d
	je	.L1257
	mov	r9d, r11d
	lea	r10d, [r8-2]
	movzx	edi, BYTE PTR [rsi+r9]
	mov	BYTE PTR [rcx+r9], dil
	test	r11d, r11d
	je	.L1257
	mov	eax, r10d
	lea	r11d, [r8-3]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r10d, r10d
	je	.L1257
	mov	r9d, r11d
	lea	r10d, [r8-4]
	movzx	edi, BYTE PTR [rsi+r9]
	mov	BYTE PTR [rcx+r9], dil
	test	r11d, r11d
	je	.L1257
	mov	eax, r10d
	lea	r11d, [r8-5]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r10d, r10d
	je	.L1257
	mov	r9d, r11d
	lea	r8d, [r8-6]
	movzx	edi, BYTE PTR [rsi+r9]
	mov	BYTE PTR [rcx+r9], dil
	test	r11d, r11d
	je	.L1257
	movzx	esi, BYTE PTR [rsi+r8]
	mov	BYTE PTR [rcx+r8], sil
	ret
.L1217:
	mov	r10d, r8d
	xor	r11d, r11d
	jmp	.L1201
	.p2align 4,,10
	.p2align 3
.L1200:
	add	r8d, r8d
	xor	r10d, r10d
	mov	r11d, r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L1206:
	movzx	r9d, WORD PTR [rsi+r10]
	mov	WORD PTR [rcx+r10], r9w
	add	r10, 2
	cmp	r10, r11
	jne	.L1206
	test	dl, 1
	je	.L1257
	jmp	.L1261
.L1259:
	vzeroupper
	jmp	.L1204
.L1255:
	vzeroupper
	jmp	.L1196
.L1260:
	ret
.L1218:
	xor	r10d, r10d
	jmp	.L1210
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
	mov	r9d, edx
	mov	esi, edx
	shr	r9d, 2
	and	esi, -4
	cmp	rdi, rcx
	jb	.L1267
	mov	eax, edx
	add	rax, rcx
	cmp	rax, rdi
	jnb	.L1365
.L1267:
	test	r9d, r9d
	je	.L1366
	lea	eax, [r9-1]
	cmp	eax, 2
	jbe	.L1269
	lea	r11, [rcx+4]
	mov	r8, rdi
	sub	r8, r11
	cmp	r8, 24
	jbe	.L1269
	cmp	eax, 6
	jbe	.L1293
	mov	r10d, edx
	xor	r11d, r11d
	shr	r10d, 5
	mov	r8d, r10d
	sal	r8, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1271:
	vmovdqu	ymm1, YMMWORD PTR [rcx+r11]
	vmovdqu	YMMWORD PTR [rdi+r11], ymm1
	add	r11, 32
	cmp	r8, r11
	jne	.L1271
	lea	eax, [0+r10*8]
	cmp	r9d, eax
	je	.L1276
	mov	r11d, r9d
	sub	r11d, eax
	lea	r10d, [r11-1]
	cmp	r10d, 2
	jbe	.L1273
.L1270:
	mov	r8d, eax
	mov	r10d, r11d
	and	r10d, -4
	vmovdqu	xmm2, XMMWORD PTR [rcx+r8*4]
	add	eax, r10d
	and	r11d, 3
	vmovdqu	XMMWORD PTR [rdi+r8*4], xmm2
	je	.L1276
.L1273:
	mov	r11d, eax
	mov	r8d, DWORD PTR [rcx+r11*4]
	mov	DWORD PTR [rdi+r11*4], r8d
	lea	r11d, [rax+1]
	cmp	r11d, r9d
	jnb	.L1276
	mov	r10d, DWORD PTR [rcx+r11*4]
	add	eax, 2
	mov	DWORD PTR [rdi+r11*4], r10d
	cmp	eax, r9d
	jnb	.L1276
	mov	r9d, DWORD PTR [rcx+rax*4]
	mov	DWORD PTR [rdi+rax*4], r9d
.L1276:
	cmp	esi, edx
	jnb	.L1340
	mov	r11d, edx
	sub	r11d, esi
	lea	eax, [r11-1]
	cmp	eax, 14
	jbe	.L1367
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	r8d, esi
	lea	r10, [rcx+1+r8]
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	.cfi_offset 3, -24
	lea	rbx, [rdi+r8]
	mov	r9, rbx
	sub	r9, r10
	cmp	r9, 30
	jbe	.L1341
	cmp	eax, 30
	jbe	.L1294
	mov	r9d, r11d
	lea	r10, [rcx+r8]
	xor	eax, eax
	shr	r9d, 5
	sal	r9, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1278:
	vmovdqu	ymm3, YMMWORD PTR [r10+rax]
	vmovdqu	YMMWORD PTR [rbx+rax], ymm3
	add	rax, 32
	cmp	r9, rax
	jne	.L1278
	mov	eax, r11d
	and	eax, -32
	add	esi, eax
	test	r11b, 31
	je	.L1357
	sub	r11d, eax
	lea	ebx, [r11-1]
	cmp	ebx, 14
	jbe	.L1280
.L1277:
	add	rax, r8
	mov	r8d, r11d
	and	r8d, -16
	vmovdqu	xmm4, XMMWORD PTR [rcx+rax]
	add	esi, r8d
	and	r11d, 15
	vmovdqu	XMMWORD PTR [rdi+rax], xmm4
	je	.L1357
.L1280:
	mov	r11d, esi
	lea	r9d, [rsi+1]
	movzx	r10d, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], r10b
	cmp	r9d, edx
	jnb	.L1357
	movzx	eax, BYTE PTR [rcx+r9]
	lea	ebx, [rsi+2]
	mov	BYTE PTR [rdi+r9], al
	cmp	ebx, edx
	jnb	.L1357
	movzx	r8d, BYTE PTR [rcx+rbx]
	lea	r11d, [rsi+3]
	mov	BYTE PTR [rdi+rbx], r8b
	cmp	r11d, edx
	jnb	.L1357
	movzx	r10d, BYTE PTR [rcx+r11]
	lea	r9d, [rsi+4]
	mov	BYTE PTR [rdi+r11], r10b
	cmp	r9d, edx
	jnb	.L1357
	movzx	eax, BYTE PTR [rcx+r9]
	lea	ebx, [rsi+5]
	mov	BYTE PTR [rdi+r9], al
	cmp	ebx, edx
	jnb	.L1357
	movzx	r8d, BYTE PTR [rcx+rbx]
	lea	r11d, [rsi+6]
	mov	BYTE PTR [rdi+rbx], r8b
	cmp	r11d, edx
	jnb	.L1357
	movzx	r10d, BYTE PTR [rcx+r11]
	lea	r9d, [rsi+7]
	mov	BYTE PTR [rdi+r11], r10b
	cmp	r9d, edx
	jnb	.L1357
	movzx	eax, BYTE PTR [rcx+r9]
	lea	ebx, [rsi+8]
	mov	BYTE PTR [rdi+r9], al
	cmp	ebx, edx
	jnb	.L1357
	movzx	r8d, BYTE PTR [rcx+rbx]
	lea	r11d, [rsi+9]
	mov	BYTE PTR [rdi+rbx], r8b
	cmp	r11d, edx
	jnb	.L1357
	movzx	r10d, BYTE PTR [rcx+r11]
	lea	r9d, [rsi+10]
	mov	BYTE PTR [rdi+r11], r10b
	cmp	r9d, edx
	jnb	.L1357
	movzx	eax, BYTE PTR [rcx+r9]
	lea	ebx, [rsi+11]
	mov	BYTE PTR [rdi+r9], al
	cmp	ebx, edx
	jnb	.L1357
	movzx	r8d, BYTE PTR [rcx+rbx]
	lea	r11d, [rsi+12]
	mov	BYTE PTR [rdi+rbx], r8b
	cmp	r11d, edx
	jnb	.L1357
	movzx	r10d, BYTE PTR [rcx+r11]
	lea	r9d, [rsi+13]
	mov	BYTE PTR [rdi+r11], r10b
	cmp	r9d, edx
	jnb	.L1357
	movzx	eax, BYTE PTR [rcx+r9]
	add	esi, 14
	mov	BYTE PTR [rdi+r9], al
	cmp	esi, edx
	jnb	.L1357
	movzx	ecx, BYTE PTR [rcx+rsi]
	mov	BYTE PTR [rdi+rsi], cl
	vzeroupper
	jmp	.L1358
	.p2align 4,,10
	.p2align 3
.L1365:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	lea	r11d, [rdx-1]
	test	edx, edx
	je	.L1368
	mov	r10d, r11d
	cmp	r11d, 6
	jbe	.L1291
	mov	r8, rdi
	sub	r8, rcx
	add	r8, 15
	cmp	r8, 14
	jbe	.L1291
	cmp	r11d, 14
	jbe	.L1295
	mov	esi, edx
	lea	r8, [r10-15]
	xor	eax, eax
	shr	esi, 4
	lea	r9, [rcx+r8]
	add	r8, rdi
	neg	rsi
	sal	rsi, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1286:
	vmovdqu	xmm0, XMMWORD PTR [r9+rax]
	vmovdqu	XMMWORD PTR [r8+rax], xmm0
	sub	rax, 16
	cmp	rax, rsi
	jne	.L1286
	mov	r9d, edx
	and	r9d, -16
	sub	r11d, r9d
	test	dl, 15
	je	.L1361
	sub	edx, r9d
	lea	r8d, [rdx-1]
	cmp	r8d, 6
	jbe	.L1289
.L1285:
	lea	r10, [r10-7]
	mov	esi, edx
	sub	r10, r9
	and	esi, -8
	mov	r9, QWORD PTR [rcx+r10]
	sub	r11d, esi
	and	edx, 7
	mov	QWORD PTR [rdi+r10], r9
	je	.L1361
.L1289:
	mov	eax, r11d
	lea	r8d, [r11-1]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r11d, r11d
	je	.L1361
	mov	r10d, r8d
	lea	edx, [r11-2]
	movzx	r9d, BYTE PTR [rcx+r10]
	mov	BYTE PTR [rdi+r10], r9b
	test	r8d, r8d
	je	.L1361
	mov	eax, edx
	lea	r8d, [r11-3]
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	test	edx, edx
	je	.L1361
	mov	r10d, r8d
	lea	edx, [r11-4]
	movzx	r9d, BYTE PTR [rcx+r10]
	mov	BYTE PTR [rdi+r10], r9b
	test	r8d, r8d
	je	.L1361
	mov	eax, edx
	lea	r8d, [r11-5]
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	test	edx, edx
	je	.L1361
	mov	r10d, r8d
	lea	r11d, [r11-6]
	movzx	r9d, BYTE PTR [rcx+r10]
	mov	BYTE PTR [rdi+r10], r9b
	test	r8d, r8d
	je	.L1361
	movzx	ecx, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], cl
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1291:
	movzx	edx, BYTE PTR [rcx+r10]
	mov	BYTE PTR [rdi+r10], dl
	sub	r10, 1
	jnb	.L1291
	ret
	.p2align 4,,10
	.p2align 3
.L1357:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	vzeroupper
.L1358:
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
.L1293:
	.cfi_restore 3
	.cfi_restore 6
	mov	r11d, r9d
	xor	eax, eax
	jmp	.L1270
	.p2align 4,,10
	.p2align 3
.L1269:
	lea	r11d, [0+r9*4]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L1275:
	mov	r8d, DWORD PTR [rcx+rax]
	mov	DWORD PTR [rdi+rax], r8d
	add	rax, 4
	cmp	r11, rax
	jne	.L1275
	jmp	.L1276
	.p2align 4,,10
	.p2align 3
.L1366:
	mov	esi, esi
	test	edx, edx
	je	.L1369
.L1360:
	mov	r8, rsi
.L1362:
	movzx	r10d, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], r10b
	add	r8, 1
	cmp	r8d, edx
	jb	.L1362
.L1361:
	ret
	.p2align 4,,10
	.p2align 3
.L1340:
	vzeroupper
	ret
.L1341:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	vzeroupper
	.p2align 5
	.p2align 4
	.p2align 3
.L1282:
	movzx	esi, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], sil
	add	r8, 1
	cmp	r8d, edx
	jb	.L1282
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L1294:
	.cfi_restore_state
	xor	eax, eax
	jmp	.L1277
.L1368:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	ret
.L1295:
	xor	r9d, r9d
	jmp	.L1285
.L1367:
	mov	esi, esi
	vzeroupper
	jmp	.L1360
.L1369:
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
	vxorps	xmm0, xmm0, xmm0
	vcvtsi2sd	xmm0, xmm0, rdi
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
	vxorps	xmm0, xmm0, xmm0
	vcvtsi2ss	xmm0, xmm0, rdi
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
	test	rdi, rdi
	js	.L1378
	vcvtsi2sd	xmm0, xmm0, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1378:
	mov	rax, rdi
	and	edi, 1
	shr	rax
	or	rax, rdi
	vcvtsi2sd	xmm1, xmm0, rax
	vaddsd	xmm0, xmm1, xmm1
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
	test	rdi, rdi
	js	.L1381
	vcvtsi2ss	xmm0, xmm0, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1381:
	mov	rax, rdi
	and	edi, 1
	shr	rax
	or	rax, rdi
	vcvtsi2ss	xmm1, xmm0, rax
	vaddss	xmm0, xmm1, xmm1
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
	jne	.L1387
	mov	eax, edx
	sar	eax, 14
	jne	.L1384
	mov	eax, edx
	shr	eax, 13
	jne	.L1388
	mov	esi, edx
	shr	esi, 12
	jne	.L1389
	mov	edi, edx
	shr	edi, 11
	jne	.L1390
	mov	r8d, edx
	shr	r8d, 10
	jne	.L1391
	mov	r9d, edx
	shr	r9d, 9
	jne	.L1392
	mov	r10d, edx
	shr	r10d, 8
	jne	.L1393
	mov	r11d, edx
	shr	r11d, 7
	jne	.L1394
	mov	eax, edx
	shr	eax, 6
	jne	.L1395
	mov	esi, edx
	shr	esi, 5
	jne	.L1396
	mov	edi, edx
	shr	edi, 4
	jne	.L1397
	mov	r8d, edx
	shr	r8d, 3
	jne	.L1398
	mov	r9d, edx
	shr	r9d, 2
	jne	.L1399
	shr	edx
	jne	.L1400
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	ret
.L1400:
	mov	eax, 14
.L1384:
	ret
.L1387:
	xor	eax, eax
	ret
.L1398:
	mov	eax, 12
	ret
.L1388:
	mov	eax, 2
	ret
.L1389:
	mov	eax, 3
	ret
.L1390:
	mov	eax, 4
	ret
.L1391:
	mov	eax, 5
	ret
.L1392:
	mov	eax, 6
	ret
.L1393:
	mov	eax, 7
	ret
.L1394:
	mov	eax, 8
	ret
.L1395:
	mov	eax, 9
	ret
.L1396:
	mov	eax, 10
	ret
.L1397:
	mov	eax, 11
	ret
.L1399:
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
	jne	.L1405
	test	dil, 2
	jne	.L1406
	test	dil, 4
	jne	.L1407
	test	dil, 8
	jne	.L1408
	test	dil, 16
	jne	.L1409
	test	dil, 32
	jne	.L1410
	test	dil, 64
	jne	.L1411
	test	dil, -128
	jne	.L1412
	test	edi, 256
	jne	.L1413
	test	edi, 512
	jne	.L1414
	test	edi, 1024
	jne	.L1415
	test	edi, 2048
	jne	.L1416
	test	edi, 4096
	jne	.L1417
	test	edi, 8192
	jne	.L1418
	test	edi, 16384
	jne	.L1419
	xor	eax, eax
	and	edi, 32768
	sete	al
	add	eax, 15
	ret
.L1405:
	xor	eax, eax
	ret
.L1406:
	mov	eax, 1
	ret
.L1417:
	mov	eax, 12
	ret
.L1407:
	mov	eax, 2
	ret
.L1408:
	mov	eax, 3
	ret
.L1409:
	mov	eax, 4
	ret
.L1410:
	mov	eax, 5
	ret
.L1411:
	mov	eax, 6
	ret
.L1412:
	mov	eax, 7
	ret
.L1413:
	mov	eax, 8
	ret
.L1414:
	mov	eax, 9
	ret
.L1415:
	mov	eax, 10
	ret
.L1416:
	mov	eax, 11
	ret
.L1418:
	mov	eax, 13
	ret
.L1419:
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
	vcomiss	xmm0, DWORD PTR .LC19[rip]
	jnb	.L1427
	vcvttss2si	rax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L1427:
	vsubss	xmm0, xmm0, DWORD PTR .LC19[rip]
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
	sar	r8d, 12
	mov	r9d, edx
	add	eax, ecx
	and	r8d, 1
	sar	r9d, 13
	mov	r10d, edx
	sar	r10d, 14
	add	eax, esi
	and	r9d, 1
	sar	edx, 15
	add	eax, edi
	and	r10d, 1
	add	eax, r8d
	add	eax, r9d
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
	sar	r8d, 12
	mov	r9d, edx
	add	eax, ecx
	and	r8d, 1
	sar	r9d, 13
	mov	r10d, edx
	sar	r10d, 14
	add	eax, esi
	and	r9d, 1
	sar	edx, 15
	add	eax, edi
	and	r10d, 1
	add	eax, r8d
	add	eax, r9d
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
	je	.L1430
	.p2align 5
	.p2align 4
	.p2align 3
.L1432:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L1432
.L1430:
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
	je	.L1435
	test	esi, esi
	je	.L1435
	.p2align 5
	.p2align 4
	.p2align 3
.L1437:
	mov	eax, esi
	and	eax, 1
	neg	eax
	and	eax, edi
	add	edi, edi
	add	edx, eax
	shr	esi
	jne	.L1437
.L1435:
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
	jb	.L1443
	jmp	.L1466
	.p2align 4,,10
	.p2align 3
.L1446:
	add	esi, esi
	add	r11d, r11d
	cmp	esi, edi
	jnb	.L1445
	test	r11d, r11d
	je	.L1445
.L1443:
	test	esi, esi
	jns	.L1446
.L1447:
	xor	eax, eax
	xor	r10d, r10d
	.p2align 6
	.p2align 4
	.p2align 3
.L1449:
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
	jne	.L1449
.L1448:
	test	edx, edx
	cmovne	eax, edi
	ret
	.p2align 4,,10
	.p2align 3
.L1445:
	xor	eax, eax
	test	r11d, r11d
	jne	.L1447
	test	edx, edx
	cmovne	eax, edi
	ret
.L1466:
	mov	eax, edi
	sub	eax, esi
	cmp	edi, esi
	setnb	cl
	cmovnb	edi, eax
	movzx	eax, cl
	jmp	.L1448
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
	ja	.L1469
	xor	eax, eax
	vcomiss	xmm0, xmm1
	seta	al
.L1469:
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
	ja	.L1472
	xor	eax, eax
	vcomisd	xmm0, xmm1
	seta	al
.L1472:
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
	js	.L1486
	je	.L1482
	xor	r9d, r9d
.L1479:
	mov	edx, 1
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L1481:
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
	jne	.L1481
	mov	eax, ecx
	neg	eax
	test	r9d, r9d
	cmove	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1486:
	neg	esi
	mov	r9d, 1
	jmp	.L1479
	.p2align 4,,10
	.p2align 3
.L1482:
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
	jns	.L1488
	neg	rdi
	xor	eax, eax
	mov	r10d, 1
.L1488:
	test	rsi, rsi
	jns	.L1489
	neg	rsi
	mov	r10d, eax
.L1489:
	mov	eax, esi
	mov	ecx, edi
	mov	edx, 1
	cmp	esi, edi
	jb	.L1490
	jmp	.L1514
	.p2align 4,,10
	.p2align 3
.L1495:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	.L1501
	test	edx, edx
	je	.L1511
.L1490:
	test	eax, eax
	jns	.L1495
.L1493:
	xor	r11d, r11d
	xor	r9d, r9d
	.p2align 5
	.p2align 4
	.p2align 3
.L1496:
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
	jne	.L1496
.L1494:
	mov	rax, r11
	neg	rax
	test	r10d, r10d
	cmove	rax, r11
	ret
	.p2align 4,,10
	.p2align 3
.L1501:
	test	edx, edx
	jne	.L1493
.L1511:
	xor	r11d, r11d
	mov	rax, r11
	neg	rax
	test	r10d, r10d
	cmove	rax, r11
	ret
.L1514:
	cmp	edi, esi
	setnb	sil
	movzx	r11d, sil
	jmp	.L1494
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
	jns	.L1517
	neg	rdi
	mov	r8d, 1
.L1517:
	mov	rax, rsi
	mov	ecx, edi
	mov	edx, 1
	neg	rax
	cmovns	rsi, rax
	mov	r9d, esi
	cmp	esi, edi
	jb	.L1518
	jmp	.L1541
	.p2align 4,,10
	.p2align 3
.L1523:
	add	r9d, r9d
	add	edx, edx
	cmp	r9d, ecx
	jnb	.L1528
	test	edx, edx
	je	.L1522
.L1518:
	test	r9d, r9d
	jns	.L1523
	.p2align 5
	.p2align 4
	.p2align 3
.L1539:
	mov	esi, ecx
	sub	esi, r9d
	cmp	ecx, r9d
	cmovnb	ecx, esi
	shr	r9d
	shr	edx
	jne	.L1539
.L1522:
	mov	edi, ecx
	mov	rax, rdi
	neg	rax
	test	r8d, r8d
	cmove	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1528:
	test	edx, edx
	jne	.L1539
	jmp	.L1522
.L1541:
	sub	ecx, esi
	cmp	edi, esi
	cmovb	ecx, edi
	jmp	.L1522
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
	mov	r9d, edx
	mov	ecx, esi
	mov	edi, 1
	cmp	si, r10w
	jb	.L1544
	jmp	.L1610
	.p2align 4,,10
	.p2align 3
.L1547:
	lea	esi, [rcx+rcx]
	lea	edx, [rdi+rdi]
	cmp	si, ax
	jnb	.L1546
	test	dx, dx
	je	.L1546
	mov	edi, edx
	mov	ecx, esi
.L1544:
	test	cx, cx
	jns	.L1547
	mov	eax, r10d
	mov	r8d, edi
	sub	eax, ecx
	cmp	cx, r10w
	cmova	eax, r10d
	xor	edx, edx
	cmp	r10w, cx
	mov	r10d, ecx
	cmovnb	edx, edi
	shr	r10w
	shr	r8w
	mov	r11d, edx
	je	.L1549
.L1551:
	mov	edx, eax
	mov	esi, 0
	sub	edx, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, edx
	shr	r10w, 2
	mov	edx, r8d
	mov	r8d, edi
	or	edx, r11d
	shr	r8w, 2
	je	.L1549
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 3
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 3
	je	.L1549
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 4
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 4
	je	.L1549
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 5
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 5
	je	.L1549
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 6
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 6
	je	.L1549
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 7
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 7
	je	.L1549
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 8
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 8
	je	.L1549
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 9
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 9
	je	.L1549
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 10
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 10
	je	.L1549
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 11
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 11
	je	.L1549
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 12
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 12
	je	.L1549
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 13
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 13
	je	.L1549
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 14
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 14
	je	.L1549
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	cx, 15
	or	edx, r8d
	test	di, di
	jns	.L1549
	mov	edi, eax
	sub	edi, ecx
	cmp	ax, cx
	setnb	cl
	cmovnb	eax, edi
	movzx	esi, cl
	or	edx, esi
.L1549:
	test	r9d, r9d
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1546:
	mov	eax, r10d
	test	dx, dx
	je	.L1549
	sub	eax, esi
	cmp	si, r10w
	cmova	eax, r10d
	xor	r11d, r11d
	cmp	r10w, si
	cmovnb	r11d, edx
	and	di, 32767
	and	cx, 32767
	mov	r8d, edi
	mov	r10d, ecx
	mov	edi, edx
	mov	ecx, esi
	jmp	.L1551
.L1610:
	sub	eax, esi
	cmp	si, r10w
	sete	dl
	cmovne	eax, r10d
	movzx	edx, dl
	jmp	.L1549
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
	jb	.L1612
	jmp	.L1635
	.p2align 4,,10
	.p2align 3
.L1615:
	add	rsi, rsi
	add	r11, r11
	cmp	rsi, rdi
	jnb	.L1614
	test	r11, r11
	je	.L1614
.L1612:
	test	esi, 2147483648
	je	.L1615
.L1616:
	xor	eax, eax
	xor	r10d, r10d
	.p2align 6
	.p2align 4
	.p2align 3
.L1618:
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
	jne	.L1618
.L1617:
	test	edx, edx
	cmovne	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1614:
	xor	eax, eax
	test	r11, r11
	jne	.L1616
	test	edx, edx
	cmovne	rax, rdi
	ret
.L1635:
	mov	rax, rdi
	sub	rax, rsi
	cmp	rdi, rsi
	setnb	cl
	cmovnb	rdi, rax
	movzx	eax, cl
	jmp	.L1617
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
	je	.L1639
	lea	ecx, [rsi-32]
	xor	eax, eax
	sal	edi, cl
.L1640:
	sal	rdi, 32
	or	rax, rdi
.L1638:
	ret
	.p2align 4,,10
	.p2align 3
.L1639:
	mov	rax, rdi
	test	esi, esi
	je	.L1638
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
	jmp	.L1640
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
	je	.L1645
	lea	ecx, [rdx-64]
	xor	eax, eax
	sal	rdi, cl
	mov	rdx, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1645:
	mov	rax, rdi
	test	edx, edx
	je	.L1648
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
.L1648:
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
	je	.L1650
	sar	rdi, 32
	lea	ecx, [rsi-32]
	mov	eax, edi
	sar	edi, cl
	sar	eax, 31
.L1651:
	sal	rax, 32
	or	rax, rdi
.L1649:
	ret
	.p2align 4,,10
	.p2align 3
.L1650:
	mov	rax, rdi
	test	esi, esi
	je	.L1649
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
	jmp	.L1651
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
	je	.L1656
	lea	ecx, [rdx-64]
	mov	r8, rsi
	sar	r8, 63
	sar	rsi, cl
	mov	rdx, r8
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1656:
	test	edx, edx
	je	.L1659
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
.L1659:
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
	jl	.L1664
	mov	eax, 2
	jg	.L1664
	xor	eax, eax
	cmp	edi, esi
	jb	.L1664
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L1664:
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
	jl	.L1670
	mov	eax, 1
	jg	.L1670
	mov	eax, -1
	cmp	edi, esi
	jb	.L1670
	xor	eax, eax
	cmp	esi, edi
	setb	al
.L1670:
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
	jl	.L1675
	mov	eax, 2
	jg	.L1675
	xor	eax, eax
	cmp	rdi, rdx
	jb	.L1675
	xor	eax, eax
	cmp	rdx, rdi
	setb	al
	add	eax, 1
.L1675:
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
	jne	.L1684
	xor	eax, eax
	xor	edx, edx
	rep bsf	rax, rsi
	add	eax, 65
	test	rsi, rsi
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1684:
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
	je	.L1688
	shr	rdi, 32
	lea	ecx, [rsi-32]
	xor	eax, eax
	shr	edi, cl
.L1689:
	sal	rax, 32
	or	rax, rdi
.L1687:
	ret
	.p2align 4,,10
	.p2align 3
.L1688:
	mov	rax, rdi
	test	esi, esi
	je	.L1687
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
	jmp	.L1689
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
	je	.L1694
	lea	ecx, [rdx-64]
	xor	r8d, r8d
	shr	rsi, cl
	mov	rdx, r8
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1694:
	test	edx, edx
	je	.L1697
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
.L1697:
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
	vmovsd	xmm2, QWORD PTR .LC18[rip]
	mov	eax, edi
	vmovapd	xmm1, xmm2
	test	dil, 1
	je	.L1711
	.p2align 4
	.p2align 3
.L1713:
	vmulsd	xmm1, xmm1, xmm0
.L1711:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1712
	vmulsd	xmm0, xmm0, xmm0
	test	al, 1
	jne	.L1713
.L1717:
	vmulsd	xmm0, xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1713
	jmp	.L1717
	.p2align 4,,10
	.p2align 3
.L1712:
	test	edi, edi
	jns	.L1710
	vdivsd	xmm1, xmm2, xmm1
.L1710:
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
	vmovss	xmm2, DWORD PTR .LC20[rip]
	mov	eax, edi
	vmovaps	xmm1, xmm2
	test	dil, 1
	je	.L1719
	.p2align 4
	.p2align 3
.L1721:
	vmulss	xmm1, xmm1, xmm0
.L1719:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1720
	vmulss	xmm0, xmm0, xmm0
	test	al, 1
	jne	.L1721
.L1725:
	vmulss	xmm0, xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1721
	jmp	.L1725
	.p2align 4,,10
	.p2align 3
.L1720:
	test	edi, edi
	jns	.L1718
	vdivss	xmm1, xmm2, xmm1
.L1718:
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
	jb	.L1726
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1726
	xor	eax, eax
	cmp	edi, esi
	jb	.L1726
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L1726:
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
	jb	.L1732
	mov	eax, 1
	cmp	ecx, edx
	jb	.L1732
	mov	eax, -1
	cmp	edi, esi
	jb	.L1732
	xor	eax, eax
	cmp	esi, edi
	setb	al
.L1732:
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
	jb	.L1737
	mov	eax, 2
	cmp	rcx, rsi
	jb	.L1737
	xor	eax, eax
	cmp	rdi, rdx
	jb	.L1737
	xor	eax, eax
	cmp	rdx, rdi
	setb	al
	add	eax, 1
.L1737:
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
	.section	.rodata.cst16,"aM",@progbits,16
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
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC5:
	.long	-8388609
	.align 4
.LC6:
	.long	2139095039
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC7:
	.long	-1
	.long	-1048577
	.align 8
.LC8:
	.long	-1
	.long	2146435071
	.section	.rodata.cst16
	.align 16
.LC9:
	.long	-1
	.long	-1
	.long	65534
	.long	0
	.align 16
.LC10:
	.long	-1
	.long	-1
	.long	32766
	.long	0
	.set	.LC11,.LC13+4
	.section	.rodata.cst4
	.align 4
.LC12:
	.long	1056964608
	.section	.rodata.cst8
	.align 8
.LC13:
	.long	0
	.long	1073741824
	.align 8
.LC14:
	.long	0
	.long	1071644672
	.section	.rodata.cst16
	.align 16
.LC15:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC16:
	.long	0
	.long	-1074790400
	.align 8
.LC17:
	.long	0
	.long	-1075838976
	.align 8
.LC18:
	.long	0
	.long	1072693248
	.section	.rodata.cst4
	.align 4
.LC19:
	.long	1191182336
	.align 4
.LC20:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
