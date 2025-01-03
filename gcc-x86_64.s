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
	cmp	r11, 14
	jbe	.L132
	mov	r10, rdi
	lea	r9, [rsi-2+rdx]
	sub	r10, r9
	lea	rdi, [r10+30+r11]
	cmp	rdi, 30
	jbe	.L132
	lea	r10, [rsi+rdx]
	lea	r9, [rcx+rdx]
	cmp	r11, 30
	jbe	.L24
	mov	rdi, rdx
	lea	r8, [rdx-32]
	xor	eax, eax
	and	rdi, -32
	lea	r11, [rsi+r8]
	add	r8, rcx
	neg	rdi
	.p2align 5
	.p2align 4
	.p2align 3
.L9:
	vmovdqu	ymm2, YMMWORD PTR [r11+rax]
	vmovdqu	YMMWORD PTR [r8+rax], ymm2
	sub	rax, 32
	cmp	rdi, rax
	jne	.L9
	mov	r8, rdx
	add	r10, rdi
	add	r9, rdi
	and	r8d, 31
	and	edx, 31
	je	.L135
	lea	r11, [r8-1]
	mov	rdx, r8
	cmp	r11, 14
	jbe	.L137
	vzeroupper
.L8:
	vmovdqu	xmm3, XMMWORD PTR [rsi-16+rdx]
	mov	rsi, rdx
	and	rsi, -16
	vmovdqu	XMMWORD PTR [rcx-16+rdx], xmm3
	sub	r10, rsi
	sub	r9, rsi
	sub	r8, rsi
	and	edx, 15
	je	.L6
.L11:
	movzx	edx, BYTE PTR [r10-1]
	mov	BYTE PTR [r9-1], dl
	cmp	r8, 1
	je	.L6
	movzx	edi, BYTE PTR [r10-2]
	mov	BYTE PTR [r9-2], dil
	cmp	r8, 2
	je	.L6
	movzx	eax, BYTE PTR [r10-3]
	mov	BYTE PTR [r9-3], al
	cmp	r8, 3
	je	.L6
	movzx	r11d, BYTE PTR [r10-4]
	mov	BYTE PTR [r9-4], r11b
	cmp	r8, 4
	je	.L6
	movzx	esi, BYTE PTR [r10-5]
	mov	BYTE PTR [r9-5], sil
	cmp	r8, 5
	je	.L6
	movzx	edx, BYTE PTR [r10-6]
	mov	BYTE PTR [r9-6], dl
	cmp	r8, 6
	je	.L6
	movzx	edi, BYTE PTR [r10-7]
	mov	BYTE PTR [r9-7], dil
	cmp	r8, 7
	je	.L6
	movzx	eax, BYTE PTR [r10-8]
	mov	BYTE PTR [r9-8], al
	cmp	r8, 8
	je	.L6
	movzx	r11d, BYTE PTR [r10-9]
	mov	BYTE PTR [r9-9], r11b
	cmp	r8, 9
	je	.L6
	movzx	esi, BYTE PTR [r10-10]
	mov	BYTE PTR [r9-10], sil
	cmp	r8, 10
	je	.L6
	movzx	edx, BYTE PTR [r10-11]
	mov	BYTE PTR [r9-11], dl
	cmp	r8, 11
	je	.L6
	movzx	edi, BYTE PTR [r10-12]
	mov	BYTE PTR [r9-12], dil
	cmp	r8, 12
	je	.L6
	movzx	eax, BYTE PTR [r10-13]
	mov	BYTE PTR [r9-13], al
	cmp	r8, 13
	je	.L6
	movzx	r11d, BYTE PTR [r10-14]
	mov	BYTE PTR [r9-14], r11b
	cmp	r8, 14
	je	.L6
	movzx	r10d, BYTE PTR [r10-15]
	mov	BYTE PTR [r9-15], r10b
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
	je	.L135
	lea	r10, [rax-1]
	mov	rdx, rax
	cmp	r10, 14
	jbe	.L138
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
.L139:
	sub	r11, 1
.L132:
	movzx	r9d, BYTE PTR [rsi-1+rdx]
	mov	BYTE PTR [rcx-1+rdx], r9b
	mov	rdx, r11
	test	r11, r11
	jne	.L139
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L26:
	xor	r8d, r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L131:
	movzx	eax, BYTE PTR [rsi+r8]
	mov	BYTE PTR [rcx+r8], al
	add	r8, 1
	cmp	rdx, r8
	jne	.L131
	jmp	.L6
.L138:
	vzeroupper
	jmp	.L20
.L24:
	mov	r8, rdx
	jmp	.L8
.L137:
	vzeroupper
	jmp	.L11
.L27:
	mov	rdi, rsi
	mov	r8, rcx
	mov	rax, rdx
	xor	r11d, r11d
	jmp	.L16
.L135:
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
	jne	.L141
	jmp	.L143
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L144:
	add	rsi, 1
	add	rdi, 1
	sub	rcx, 1
	je	.L143
.L141:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rdi], r8b
	cmp	r8d, edx
	jne	.L144
	lea	rax, [rdi+1]
	ret
	.p2align 4,,10
	.p2align 3
.L143:
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
	jne	.L152
	jmp	.L155
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L154:
	add	rdi, 1
	sub	rdx, 1
	je	.L155
.L152:
	movzx	eax, BYTE PTR [rdi]
	cmp	eax, esi
	jne	.L154
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L155:
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
	jne	.L160
	jmp	.L164
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L162:
	add	rdi, 1
	add	rsi, 1
	sub	rdx, 1
	je	.L164
.L160:
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rdi], al
	je	.L162
	movzx	eax, BYTE PTR [rdi]
	movzx	edx, BYTE PTR [rsi]
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L164:
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
	je	.L176
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	call	memcpy
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L176:
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
	jmp	.L180
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L182:
	mov	rdx, rax
	sub	rax, 1
	movzx	ecx, BYTE PTR [rdx]
	cmp	ecx, esi
	je	.L179
.L180:
	cmp	rdi, rax
	jne	.L182
	xor	edx, edx
.L179:
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
	je	.L188
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	movzx	esi, sil
	call	memset
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L188:
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
	je	.L192
	.p2align 5
	.p2align 4
	.p2align 3
.L193:
	movzx	ecx, BYTE PTR [rsi+1]
	add	rsi, 1
	add	rax, 1
	mov	BYTE PTR [rax], cl
	test	cl, cl
	jne	.L193
.L192:
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
	jne	.L199
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L201:
	movzx	edx, BYTE PTR [rax+1]
	add	rax, 1
	test	dl, dl
	je	.L198
.L199:
	cmp	edx, esi
	jne	.L201
.L198:
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
	jmp	.L208
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L211:
	add	rax, 1
	test	cl, cl
	je	.L210
.L208:
	movsx	ecx, BYTE PTR [rax]
	cmp	ecx, esi
	jne	.L211
	ret
	.p2align 4,,10
	.p2align 3
.L210:
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
	je	.L213
	jmp	.L221
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L215:
	movzx	edx, BYTE PTR [rdi+rax]
	add	rax, 1
	movzx	ecx, BYTE PTR [rsi-1+rax]
	cmp	dl, cl
	jne	.L221
.L213:
	test	dl, dl
	jne	.L215
	xor	eax, eax
	sub	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L221:
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
	je	.L225
	mov	rax, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L224:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L224
	sub	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L225:
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
	je	.L227
	movzx	eax, BYTE PTR [rdi]
	sub	rdx, 1
	mov	rcx, rsi
	lea	r8, [rsi+rdx]
	test	al, al
	jne	.L231
	jmp	.L244
	.p2align 4,,10
	.p2align 3
.L246:
	cmp	rcx, r8
	je	.L230
	movzx	eax, BYTE PTR [rdi+1]
	add	rdi, 1
	lea	r10, [rcx+1]
	test	al, al
	je	.L245
	mov	rcx, r10
.L231:
	movzx	edx, BYTE PTR [rcx]
	test	dl, dl
	setne	r9b
	cmp	dl, al
	sete	sil
	test	r9b, sil
	jne	.L246
.L230:
	sub	eax, edx
.L227:
	ret
	.p2align 4,,10
	.p2align 3
.L245:
	movzx	edx, BYTE PTR [rcx+1]
	xor	eax, eax
	sub	eax, edx
	ret
.L244:
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
	jle	.L260
	mov	r10, rdx
	lea	rax, [rdx-2]
	shr	r10
	lea	r9, [r10-1]
	cmp	rax, 29
	jbe	.L254
	mov	r8, rdx
	mov	rsi, rdx
	vmovdqa	ymm1, YMMWORD PTR .LC0[rip]
	xor	r11d, r11d
	shr	r8, 5
	and	rsi, -32
	.p2align 5
	.p2align 4
	.p2align 3
.L250:
	vmovdqu	ymm0, YMMWORD PTR [rdi+r11]
	vpshufb	ymm2, ymm0, ymm1
	vmovdqu	YMMWORD PTR [rcx+r11], ymm2
	add	r11, 32
	cmp	r11, rsi
	jne	.L250
	mov	rsi, r8
	mov	rax, r8
	sal	rsi, 4
	sal	rax, 5
	mov	r11, rsi
	lea	r8, [rcx+rax]
	add	rax, rdi
	neg	r11
	lea	rdx, [rdx+r11*2]
	cmp	rsi, r10
	je	.L261
	vzeroupper
.L249:
	sub	r9, rsi
	lea	r10, [r9+1]
	cmp	r9, 6
	jbe	.L252
	vmovdqu	xmm3, XMMWORD PTR [rdi+rsi*2]
	mov	rdi, r10
	and	rdi, -8
	vpshufb	xmm4, xmm3, XMMWORD PTR .LC1[rip]
	vmovdqu	XMMWORD PTR [rcx+rsi*2], xmm4
	lea	rcx, [rdi+rdi]
	neg	rdi
	add	r8, rcx
	add	rax, rcx
	lea	rdx, [rdx+rdi*2]
	and	r10d, 7
	je	.L260
.L252:
	movbe	r9w, WORD PTR [rax]
	mov	WORD PTR [r8], r9w
	cmp	rdx, 3
	jle	.L260
	movbe	si, WORD PTR [rax+2]
	mov	WORD PTR [r8+2], si
	cmp	rdx, 5
	jle	.L260
	movbe	r11w, WORD PTR [rax+4]
	mov	WORD PTR [r8+4], r11w
	cmp	rdx, 7
	jle	.L260
	movbe	r10w, WORD PTR [rax+6]
	mov	WORD PTR [r8+6], r10w
	cmp	rdx, 9
	jle	.L260
	movbe	di, WORD PTR [rax+8]
	mov	WORD PTR [r8+8], di
	cmp	rdx, 11
	jle	.L260
	movbe	cx, WORD PTR [rax+10]
	mov	WORD PTR [r8+10], cx
	cmp	rdx, 13
	jle	.L260
	movbe	dx, WORD PTR [rax+12]
	mov	WORD PTR [r8+12], dx
.L260:
	ret
.L254:
	mov	r8, rsi
	mov	rax, rdi
	xor	esi, esi
	jmp	.L249
.L261:
	vzeroupper
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
	jbe	.L274
	cmp	edi, 31
	jbe	.L274
	lea	edx, [rdi-8232]
	mov	eax, 1
	cmp	edx, 1
	jbe	.L272
	sub	edi, 65529
	xor	eax, eax
	cmp	edi, 2
	setbe	al
	ret
	.p2align 4,,10
	.p2align 3
.L274:
	mov	eax, 1
.L272:
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
	jbe	.L283
	lea	eax, [rdi-8234]
	cmp	eax, 47061
	jbe	.L280
	cmp	edi, 8231
	jbe	.L280
	lea	edx, [rdi-57344]
	mov	eax, 1
	cmp	edx, 8184
	jbe	.L277
	lea	ecx, [rdi-65532]
	xor	eax, eax
	cmp	ecx, 1048579
	ja	.L277
	not	edi
	xor	eax, eax
	and	edi, 65534
	setne	al
	ret
	.p2align 4,,10
	.p2align 3
.L280:
	mov	eax, 1
.L277:
	ret
	.p2align 4,,10
	.p2align 3
.L283:
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
	jbe	.L284
	or	edi, 32
	xor	eax, eax
	sub	edi, 97
	cmp	edi, 5
	setbe	al
.L284:
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
	jp	.L288
	vucomisd	xmm1, xmm1
	jp	.L292
	vcomisd	xmm0, xmm1
	jbe	.L295
	vsubsd	xmm0, xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L295:
	vxorpd	xmm0, xmm0, xmm0
.L288:
	ret
	.p2align 4,,10
	.p2align 3
.L292:
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
	jp	.L296
	vucomiss	xmm1, xmm1
	jp	.L300
	vcomiss	xmm0, xmm1
	jbe	.L303
	vsubss	xmm0, xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L303:
	vxorps	xmm0, xmm0, xmm0
.L296:
	ret
	.p2align 4,,10
	.p2align 3
.L300:
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
	jp	.L304
	vucomisd	xmm1, xmm1
	jp	.L310
	vmovmskpd	eax, xmm0
	vmovmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L306
	test	eax, eax
	jne	.L304
.L310:
	vmovapd	xmm1, xmm0
.L304:
	vmovapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L306:
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
	jp	.L313
	vucomiss	xmm1, xmm1
	jp	.L319
	vmovd	eax, xmm0
	vmovd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L315
	test	eax, eax
	jne	.L313
.L319:
	vmovaps	xmm1, xmm0
.L313:
	vmovaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L315:
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
	jp	.L327
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L330
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
	je	.L324
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L327:
	fstp	st(0)
	jmp	.L322
	.p2align 4,,10
	.p2align 3
.L330:
	fstp	st(0)
.L322:
	ret
	.p2align 4,,10
	.p2align 3
.L324:
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
	jp	.L336
	vucomisd	xmm1, xmm1
	jp	.L331
	vmovmskpd	eax, xmm0
	vmovmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L333
	test	eax, eax
	jne	.L331
.L336:
	vmovapd	xmm0, xmm1
.L331:
	ret
	.p2align 4,,10
	.p2align 3
.L333:
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
	jp	.L345
	vucomiss	xmm1, xmm1
	jp	.L340
	vmovd	eax, xmm0
	vmovd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L342
	test	eax, eax
	jne	.L340
.L345:
	vmovaps	xmm0, xmm1
.L340:
	ret
	.p2align 4,,10
	.p2align 3
.L342:
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
	jp	.L357
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L355
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
	je	.L351
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L355:
	fstp	st(0)
	jmp	.L349
	.p2align 4,,10
	.p2align 3
.L357:
	fstp	st(0)
.L349:
	ret
	.p2align 4,,10
	.p2align 3
.L351:
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
	je	.L359
	.p2align 5
	.p2align 4
	.p2align 3
.L360:
	mov	ecx, eax
	add	rdx, 1
	and	ecx, 63
	movzx	esi, BYTE PTR digits[rcx]
	mov	BYTE PTR [rdx-1], sil
	shr	eax, 6
	jne	.L360
.L359:
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
	je	.L372
	vmovq	xmm1, QWORD PTR [rsi]
	vpinsrq	xmm0, xmm1, rsi, 1
	vmovdqu	XMMWORD PTR [rdi], xmm0
	mov	QWORD PTR [rsi], rdi
	mov	rax, QWORD PTR [rdi]
	test	rax, rax
	je	.L371
	mov	QWORD PTR [rax+8], rdi
.L371:
	ret
	.p2align 4,,10
	.p2align 3
.L372:
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
	je	.L374
	mov	rdx, QWORD PTR [rdi+8]
	mov	QWORD PTR [rax+8], rdx
.L374:
	mov	rcx, QWORD PTR [rdi+8]
	test	rcx, rcx
	je	.L382
	mov	QWORD PTR [rcx], rax
.L382:
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
	je	.L384
	mov	r13, rsi
	xor	r15d, r15d
	jmp	.L386
	.p2align 4,,10
	.p2align 3
.L399:
	add	r15, 1
	add	r13, rbx
	cmp	rbp, r15
	je	.L384
.L386:
	mov	rax, QWORD PTR [rsp+8]
	mov	r14, r13
	mov	rsi, r13
	mov	rdi, r12
	call	rax
	test	eax, eax
	jne	.L399
.L383:
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
.L384:
	.cfi_restore_state
	lea	rdx, [rbp+1]
	mov	rcx, QWORD PTR [rsp+24]
	mov	r14, QWORD PTR [rsp+16]
	imul	rbp, rbx
	mov	QWORD PTR [rcx], rdx
	add	r14, rbp
	test	rbx, rbx
	je	.L383
	mov	rdx, rbx
	mov	rsi, r12
	mov	rdi, r14
	call	memmove
	jmp	.L383
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
	je	.L401
	mov	r13, rcx
	mov	r12, r8
	mov	rbx, rsi
	xor	ebp, ebp
	jmp	.L403
	.p2align 4,,10
	.p2align 3
.L412:
	add	rbp, 1
	add	rbx, r13
	cmp	r14, rbp
	je	.L401
.L403:
	mov	rdi, QWORD PTR [rsp+8]
	mov	r15, rbx
	mov	rsi, rbx
	call	r12
	test	eax, eax
	jne	.L412
.L400:
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
.L401:
	.cfi_restore_state
	xor	r15d, r15d
	jmp	.L400
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
	jmp	.L441
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L437:
	add	rdi, 1
.L441:
	movsx	eax, BYTE PTR [rdi]
	lea	ecx, [rax-9]
	mov	edx, eax
	cmp	ecx, 4
	jbe	.L437
	cmp	dl, 32
	je	.L437
	cmp	dl, 43
	je	.L418
	cmp	dl, 45
	jne	.L442
	lea	r8, [rdi+1]
	movsx	edi, BYTE PTR [rdi+1]
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	ja	.L427
	mov	r9d, 1
.L421:
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L424:
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
	jbe	.L424
	sub	eax, r10d
	test	r9d, r9d
	cmovne	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L442:
	sub	eax, 48
	mov	r8, rdi
	xor	r9d, r9d
	cmp	eax, 9
	jbe	.L421
.L427:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L418:
	movsx	esi, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	xor	r9d, r9d
	mov	edx, esi
	sub	esi, 48
	cmp	esi, 9
	jbe	.L421
	jmp	.L427
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.p2align 4
	.globl	atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
	jmp	.L470
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L466:
	add	rdi, 1
.L470:
	movsx	eax, BYTE PTR [rdi]
	lea	ecx, [rax-9]
	mov	edx, eax
	cmp	ecx, 4
	jbe	.L466
	cmp	dl, 32
	je	.L466
	cmp	dl, 43
	je	.L447
	cmp	dl, 45
	jne	.L471
	lea	r8, [rdi+1]
	movsx	edi, BYTE PTR [rdi+1]
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	ja	.L456
	mov	r9d, 1
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
.L471:
	sub	eax, 48
	mov	r8, rdi
	xor	r9d, r9d
	cmp	eax, 9
	jbe	.L450
.L456:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L447:
	movsx	esi, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	xor	r9d, r9d
	mov	edx, esi
	sub	esi, 48
	cmp	esi, 9
	jbe	.L450
	jmp	.L456
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.p2align 4
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB171:
	.cfi_startproc
	jmp	.L496
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L493:
	add	rdi, 1
.L496:
	movsx	eax, BYTE PTR [rdi]
	lea	ecx, [rax-9]
	mov	edx, eax
	cmp	ecx, 4
	jbe	.L493
	cmp	dl, 32
	je	.L493
	cmp	dl, 43
	je	.L476
	cmp	dl, 45
	je	.L497
	sub	eax, 48
	mov	r8, rdi
	xor	r9d, r9d
	cmp	eax, 9
	ja	.L484
.L478:
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L481:
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
	jbe	.L481
	sub	rax, r10
	test	r9d, r9d
	cmovne	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L497:
	lea	r8, [rdi+1]
	movsx	edi, BYTE PTR [rdi+1]
	mov	r9d, 1
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	jbe	.L478
.L484:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L476:
	movsx	esi, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	mov	edx, esi
	sub	esi, 48
	cmp	esi, 9
	ja	.L484
	xor	r9d, r9d
	jmp	.L478
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
	je	.L499
	mov	r12, rsi
	mov	rbx, rdx
	mov	r13, rcx
	mov	r15, r8
	jmp	.L502
	.p2align 4,,10
	.p2align 3
.L512:
	je	.L498
	sub	rbx, 1
	lea	r12, [rbp+0+r13]
	sub	rbx, r14
	test	rbx, rbx
	je	.L499
.L502:
	mov	r14, rbx
	mov	rdi, QWORD PTR [rsp+8]
	shr	r14
	mov	rbp, r14
	imul	rbp, r13
	add	rbp, r12
	mov	rsi, rbp
	call	r15
	test	eax, eax
	jns	.L512
	mov	rbx, r14
	test	rbx, rbx
	jne	.L502
.L499:
	xor	ebp, ebp
.L498:
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
	je	.L518
	.p2align 4
	.p2align 3
.L526:
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
	je	.L513
	jle	.L516
	lea	r13d, [r13-1]
	lea	rbp, [rbx+r12]
	sar	r13d
	jne	.L526
.L518:
	xor	ebx, ebx
.L513:
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
.L516:
	.cfi_restore_state
	test	r15d, r15d
	je	.L518
	mov	r13d, r15d
	jmp	.L526
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
	jmp	.L545
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L547:
	cmp	esi, eax
	je	.L546
	add	rdi, 4
.L545:
	mov	eax, DWORD PTR [rdi]
	test	eax, eax
	jne	.L547
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L546:
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
	je	.L549
	jmp	.L550
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L551:
	mov	edx, DWORD PTR [rdi+rax]
	add	rax, 4
	mov	ecx, DWORD PTR [rsi-4+rax]
	cmp	edx, ecx
	jne	.L550
.L549:
	test	edx, edx
	jne	.L551
.L550:
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
.L558:
	mov	ecx, DWORD PTR [rsi+rdx]
	mov	DWORD PTR [rax+rdx], ecx
	add	rdx, 4
	test	ecx, ecx
	jne	.L558
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
	je	.L563
	mov	rax, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L562:
	mov	edx, DWORD PTR [rax+4]
	add	rax, 4
	test	edx, edx
	jne	.L562
	sub	rax, rdi
	sar	rax, 2
	ret
	.p2align 4,,10
	.p2align 3
.L563:
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
	jne	.L566
	jmp	.L572
	.p2align 4,,10
	.p2align 3
.L579:
	test	eax, eax
	je	.L570
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	je	.L572
.L566:
	mov	eax, DWORD PTR [rdi]
	cmp	DWORD PTR [rsi], eax
	je	.L579
.L570:
	mov	edx, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], edx
	mov	ecx, -1
	setg	sil
	movzx	eax, sil
	cmovl	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L572:
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
	jne	.L581
	jmp	.L584
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L583:
	add	rdi, 4
	sub	rdx, 1
	je	.L584
.L581:
	cmp	DWORD PTR [rdi], esi
	jne	.L583
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L584:
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
	jne	.L589
	jmp	.L594
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L591:
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	je	.L594
.L589:
	mov	eax, DWORD PTR [rdi]
	cmp	eax, DWORD PTR [rsi]
	je	.L591
	cmp	eax, DWORD PTR [rsi]
	mov	edx, -1
	setg	cl
	movzx	eax, cl
	cmovl	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L594:
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
	je	.L606
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	sal	rdx, 2
	call	memcpy
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L606:
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
	je	.L645
	mov	rax, rcx
	lea	r11, [0+rdx*4]
	lea	rdi, [rdx-1]
	sub	rax, rsi
	cmp	rax, r11
	jnb	.L675
	test	rdx, rdx
	je	.L645
	cmp	rdi, 2
	jbe	.L668
	mov	r9, rcx
	sub	r9, rsi
	add	r9, 28
	cmp	r9, 24
	jbe	.L668
	cmp	rdi, 6
	jbe	.L632
	mov	r8, rdx
	lea	r9, [r11-32]
	xor	eax, eax
	shr	r8, 3
	lea	r10, [rsi+r9]
	add	r9, rcx
	neg	r8
	sal	r8, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L616:
	vmovdqu	ymm2, YMMWORD PTR [r10+rax]
	vmovdqu	YMMWORD PTR [r9+rax], ymm2
	sub	rax, 32
	cmp	rax, r8
	jne	.L616
	mov	r9, rdx
	and	r9, -8
	sub	rdi, r9
	test	dl, 7
	je	.L672
	sub	rdx, r9
	lea	r10, [rdx-1]
	cmp	r10, 2
	jbe	.L676
	vzeroupper
.L615:
	neg	r9
	mov	r8, rdx
	lea	r11, [r11-16+r9*4]
	and	r8, -4
	vmovdqu	xmm3, XMMWORD PTR [rsi+r11]
	sub	rdi, r8
	and	edx, 3
	vmovdqu	XMMWORD PTR [rcx+r11], xmm3
	je	.L645
.L619:
	mov	edx, DWORD PTR [rsi+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], edx
	test	rdi, rdi
	je	.L645
	sub	rdi, 1
	mov	r9d, DWORD PTR [rsi+rdi*4]
	lea	rax, [0+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], r9d
	je	.L645
	mov	esi, DWORD PTR [rsi-4+rax]
	mov	DWORD PTR [rcx-4+rax], esi
.L645:
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L675:
	test	rdx, rdx
	je	.L645
	cmp	rdi, 2
	jbe	.L634
	lea	r8, [rsi+4]
	mov	r9, rcx
	sub	r9, r8
	cmp	r9, 24
	jbe	.L634
	cmp	rdi, 6
	jbe	.L635
	mov	r10, rdx
	xor	r11d, r11d
	xor	eax, eax
	shr	r10, 3
	.p2align 5
	.p2align 4
	.p2align 3
.L625:
	vmovdqu	ymm0, YMMWORD PTR [rsi+r11]
	add	rax, 1
	vmovdqu	YMMWORD PTR [rcx+r11], ymm0
	add	r11, 32
	cmp	r10, rax
	jne	.L625
	mov	r8, rdx
	and	r8, -8
	lea	r11, [0+r8*4]
	sub	rdi, r8
	lea	r9, [rsi+r11]
	add	r11, rcx
	test	dl, 7
	je	.L672
	sub	rdx, r8
	lea	r10, [rdx-1]
	cmp	r10, 2
	jbe	.L677
	vzeroupper
.L624:
	vmovdqu	xmm1, XMMWORD PTR [rsi+r8*4]
	mov	rsi, rdx
	and	rsi, -4
	sub	rdi, rsi
	sal	rsi, 2
	vmovdqu	XMMWORD PTR [rcx+r8*4], xmm1
	add	r9, rsi
	add	r11, rsi
	and	edx, 3
	je	.L645
.L628:
	mov	edx, DWORD PTR [r9]
	mov	DWORD PTR [r11], edx
	test	rdi, rdi
	je	.L645
	mov	eax, DWORD PTR [r9+4]
	mov	DWORD PTR [r11+4], eax
	cmp	rdi, 1
	je	.L645
	mov	edi, DWORD PTR [r9+8]
	mov	DWORD PTR [r11+8], edi
	jmp	.L645
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L668:
	mov	r10d, DWORD PTR [rsi+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], r10d
	sub	rdi, 1
	jb	.L645
	mov	r10d, DWORD PTR [rsi+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], r10d
	sub	rdi, 1
	jnb	.L668
	jmp	.L645
	.p2align 4,,10
	.p2align 3
.L634:
	xor	r8d, r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L669:
	mov	r11d, DWORD PTR [rsi+r8*4]
	mov	DWORD PTR [rcx+r8*4], r11d
	add	r8, 1
	cmp	rdx, r8
	jne	.L669
	jmp	.L645
	.p2align 4,,10
	.p2align 3
.L672:
	vzeroupper
	jmp	.L645
.L635:
	mov	r9, rsi
	mov	r11, rcx
	xor	r8d, r8d
	jmp	.L624
.L632:
	xor	r9d, r9d
	jmp	.L615
.L677:
	vzeroupper
	jmp	.L628
.L676:
	vzeroupper
	jmp	.L619
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	lea	r9, [rdx-1]
	test	rdx, rdx
	je	.L679
	cmp	r9, 6
	jbe	.L685
	mov	r8, rdx
	vmovd	xmm0, esi
	xor	eax, eax
	shr	r8, 3
	vpbroadcastd	ymm1, xmm0
	.p2align 5
	.p2align 4
	.p2align 3
.L681:
	mov	rcx, rax
	add	rax, 1
	sal	rcx, 5
	vmovdqu	YMMWORD PTR [rdi+rcx], ymm1
	cmp	r8, rax
	jne	.L681
	mov	r10, rdx
	and	r10, -8
	sub	r9, r10
	lea	rax, [rdi+r10*4]
	test	dl, 7
	je	.L703
	vzeroupper
.L680:
	sub	rdx, r10
	lea	r11, [rdx-1]
	cmp	r11, 2
	jbe	.L683
	mov	r8, rdx
	vmovd	xmm2, esi
	and	r8, -4
	vpbroadcastd	xmm3, xmm2
	sub	r9, r8
	and	edx, 3
	vmovdqu	XMMWORD PTR [rdi+r10*4], xmm3
	lea	rax, [rax+r8*4]
	je	.L679
.L683:
	mov	DWORD PTR [rax], esi
	test	r9, r9
	je	.L679
	mov	DWORD PTR [rax+4], esi
	cmp	r9, 1
	je	.L679
	mov	DWORD PTR [rax+8], esi
.L679:
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L703:
	mov	rax, rdi
	vzeroupper
	ret
.L685:
	mov	rax, rdi
	xor	r10d, r10d
	jmp	.L680
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
	jnb	.L705
	test	rdx, rdx
	je	.L837
	lea	r11, [rdx-1]
	cmp	r11, 14
	jbe	.L832
	lea	r9, [rdi-2+rdx]
	mov	r10, rsi
	sub	r10, r9
	lea	rdi, [r10+30+r11]
	cmp	rdi, 30
	jbe	.L832
	lea	r10, [rcx+rdx]
	lea	r9, [rsi+rdx]
	cmp	r11, 30
	jbe	.L724
	mov	rdi, rdx
	lea	r8, [rdx-32]
	xor	eax, eax
	and	rdi, -32
	lea	r11, [rcx+r8]
	add	r8, rsi
	neg	rdi
	.p2align 5
	.p2align 4
	.p2align 3
.L709:
	vmovdqu	ymm2, YMMWORD PTR [r11+rax]
	vmovdqu	YMMWORD PTR [r8+rax], ymm2
	sub	rax, 32
	cmp	rdi, rax
	jne	.L709
	mov	r8, rdx
	add	r9, rdi
	add	r10, rdi
	and	r8d, 31
	and	edx, 31
	je	.L835
	lea	r11, [r8-1]
	mov	rdx, r8
	cmp	r11, 14
	jbe	.L839
	vzeroupper
.L708:
	vmovdqu	xmm3, XMMWORD PTR [rcx-16+rdx]
	vmovdqu	XMMWORD PTR [rsi-16+rdx], xmm3
	mov	rsi, rdx
	and	rsi, -16
	sub	r9, rsi
	sub	r10, rsi
	sub	r8, rsi
	and	edx, 15
	je	.L837
.L711:
	movzx	edx, BYTE PTR [r10-1]
	mov	BYTE PTR [r9-1], dl
	cmp	r8, 1
	je	.L837
	movzx	ecx, BYTE PTR [r10-2]
	mov	BYTE PTR [r9-2], cl
	cmp	r8, 2
	je	.L837
	movzx	edi, BYTE PTR [r10-3]
	mov	BYTE PTR [r9-3], dil
	cmp	r8, 3
	je	.L837
	movzx	eax, BYTE PTR [r10-4]
	mov	BYTE PTR [r9-4], al
	cmp	r8, 4
	je	.L837
	movzx	r11d, BYTE PTR [r10-5]
	mov	BYTE PTR [r9-5], r11b
	cmp	r8, 5
	je	.L837
	movzx	esi, BYTE PTR [r10-6]
	mov	BYTE PTR [r9-6], sil
	cmp	r8, 6
	je	.L837
	movzx	edx, BYTE PTR [r10-7]
	mov	BYTE PTR [r9-7], dl
	cmp	r8, 7
	je	.L837
	movzx	ecx, BYTE PTR [r10-8]
	mov	BYTE PTR [r9-8], cl
	cmp	r8, 8
	je	.L837
	movzx	edi, BYTE PTR [r10-9]
	mov	BYTE PTR [r9-9], dil
	cmp	r8, 9
	je	.L837
	movzx	eax, BYTE PTR [r10-10]
	mov	BYTE PTR [r9-10], al
	cmp	r8, 10
	je	.L837
	movzx	r11d, BYTE PTR [r10-11]
	mov	BYTE PTR [r9-11], r11b
	cmp	r8, 11
	je	.L837
	movzx	esi, BYTE PTR [r10-12]
	mov	BYTE PTR [r9-12], sil
	cmp	r8, 12
	je	.L837
	movzx	edx, BYTE PTR [r10-13]
	mov	BYTE PTR [r9-13], dl
	cmp	r8, 13
	je	.L837
	movzx	ecx, BYTE PTR [r10-14]
	mov	BYTE PTR [r9-14], cl
	cmp	r8, 14
	je	.L837
	movzx	r10d, BYTE PTR [r10-15]
	mov	BYTE PTR [r9-15], r10b
	ret
	.p2align 4,,10
	.p2align 3
.L705:
	jne	.L840
.L837:
	ret
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L841:
	sub	r11, 1
.L832:
	movzx	r9d, BYTE PTR [rcx-1+rdx]
	mov	BYTE PTR [rsi-1+rdx], r9b
	mov	rdx, r11
	test	r11, r11
	jne	.L841
	ret
	.p2align 4,,10
	.p2align 3
.L840:
	test	rdx, rdx
	je	.L837
	lea	rax, [rdx-1]
	cmp	rax, 14
	jbe	.L726
	lea	r8, [rdi+1]
	mov	rdi, rsi
	sub	rdi, r8
	cmp	rdi, 30
	jbe	.L726
	cmp	rax, 30
	jbe	.L727
	mov	r11, rdx
	xor	r9d, r9d
	and	r11, -32
	.p2align 5
	.p2align 4
	.p2align 3
.L717:
	vmovdqu	ymm0, YMMWORD PTR [rcx+r9]
	vmovdqu	YMMWORD PTR [rsi+r9], ymm0
	add	r9, 32
	cmp	r11, r9
	jne	.L717
	mov	rax, rdx
	lea	r8, [rsi+r11]
	lea	rdi, [rcx+r11]
	sub	rax, r11
	cmp	rdx, r11
	je	.L835
	lea	r10, [rax-1]
	mov	rdx, rax
	cmp	r10, 14
	jbe	.L842
	vzeroupper
.L716:
	vmovdqu	xmm1, XMMWORD PTR [rcx+r11]
	vmovdqu	XMMWORD PTR [rsi+r11], xmm1
	mov	rsi, rdx
	and	rsi, -16
	add	r8, rsi
	add	rdi, rsi
	sub	rax, rsi
	and	edx, 15
	je	.L837
.L720:
	movzx	edx, BYTE PTR [rdi]
	mov	BYTE PTR [r8], dl
	cmp	rax, 1
	je	.L837
	movzx	ecx, BYTE PTR [rdi+1]
	mov	BYTE PTR [r8+1], cl
	cmp	rax, 2
	je	.L837
	movzx	r11d, BYTE PTR [rdi+2]
	mov	BYTE PTR [r8+2], r11b
	cmp	rax, 3
	je	.L837
	movzx	r9d, BYTE PTR [rdi+3]
	mov	BYTE PTR [r8+3], r9b
	cmp	rax, 4
	je	.L837
	movzx	r10d, BYTE PTR [rdi+4]
	mov	BYTE PTR [r8+4], r10b
	cmp	rax, 5
	je	.L837
	movzx	esi, BYTE PTR [rdi+5]
	mov	BYTE PTR [r8+5], sil
	cmp	rax, 6
	je	.L837
	movzx	edx, BYTE PTR [rdi+6]
	mov	BYTE PTR [r8+6], dl
	cmp	rax, 7
	je	.L837
	movzx	ecx, BYTE PTR [rdi+7]
	mov	BYTE PTR [r8+7], cl
	cmp	rax, 8
	je	.L837
	movzx	r11d, BYTE PTR [rdi+8]
	mov	BYTE PTR [r8+8], r11b
	cmp	rax, 9
	je	.L837
	movzx	r9d, BYTE PTR [rdi+9]
	mov	BYTE PTR [r8+9], r9b
	cmp	rax, 10
	je	.L837
	movzx	r10d, BYTE PTR [rdi+10]
	mov	BYTE PTR [r8+10], r10b
	cmp	rax, 11
	je	.L837
	movzx	esi, BYTE PTR [rdi+11]
	mov	BYTE PTR [r8+11], sil
	cmp	rax, 12
	je	.L837
	movzx	edx, BYTE PTR [rdi+12]
	mov	BYTE PTR [r8+12], dl
	cmp	rax, 13
	je	.L837
	movzx	ecx, BYTE PTR [rdi+13]
	mov	BYTE PTR [r8+13], cl
	cmp	rax, 14
	je	.L837
	movzx	edi, BYTE PTR [rdi+14]
	mov	BYTE PTR [r8+14], dil
	ret
	.p2align 4,,10
	.p2align 3
.L726:
	xor	r8d, r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L831:
	movzx	eax, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rsi+r8], al
	add	r8, 1
	cmp	rdx, r8
	jne	.L831
	ret
.L842:
	vzeroupper
	jmp	.L720
.L724:
	mov	r8, rdx
	jmp	.L708
.L839:
	vzeroupper
	jmp	.L711
.L727:
	mov	r8, rsi
	mov	rdi, rcx
	mov	rax, rdx
	xor	r11d, r11d
	jmp	.L716
.L835:
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
	vmovdqa	ymm0, YMMWORD PTR .LC10[rip]
	vmovd	xmm1, edi
	mov	eax, 1
	vpxor	xmm3, xmm3, xmm3
	vpbroadcastd	ymm5, xmm1
	vmovd	xmm4, eax
	vpsrlvd	ymm2, ymm5, ymm0
	vpbroadcastd	ymm6, xmm4
	vpand	ymm7, ymm2, ymm6
	vpcmpeqd	ymm8, ymm7, ymm3
	vpcmpeqd	ymm9, ymm8, ymm3
	vptest	ymm9, ymm9
	jne	.L863
	vmovdqa	ymm0, YMMWORD PTR .LC8[rip]
	vpsrlvd	ymm10, ymm5, ymm0
	vpand	ymm11, ymm10, ymm6
	vpcmpeqd	ymm12, ymm11, ymm3
	vpcmpeqd	ymm13, ymm12, ymm3
	vptest	ymm13, ymm13
	jne	.L864
	vmovdqa	ymm0, YMMWORD PTR .LC6[rip]
	vpsrlvd	ymm14, ymm5, ymm0
	vpand	ymm15, ymm14, ymm6
	vpcmpeqd	ymm1, ymm15, ymm3
	vpcmpeqd	ymm2, ymm1, ymm3
	vptest	ymm2, ymm2
	jne	.L865
	vmovdqa	ymm0, YMMWORD PTR .LC12[rip]
	vpsrlvd	ymm5, ymm5, ymm0
	vpand	ymm4, ymm5, ymm6
	vpcmpeqd	ymm6, ymm4, ymm3
	vpcmpeqd	ymm7, ymm6, ymm3
	vptest	ymm7, ymm7
	jne	.L866
.L871:
	xor	edx, edx
.L856:
	mov	eax, edx
	vzeroupper
	ret
.L863:
	vmovdqa	ymm3, YMMWORD PTR .LC9[rip]
.L857:
	vmovd	r8d, xmm0
	vmovd	edx, xmm3
	bt	edi, r8d
	lea	ecx, [r8+1]
	jc	.L859
	mov	esi, edi
	shr	esi, cl
	lea	ecx, [r8+2]
	and	esi, 1
	jne	.L859
	cmp	edx, 2
	je	.L871
	mov	r9d, edi
	shr	r9d, cl
	lea	ecx, [r8+3]
	and	r9d, 1
	jne	.L859
	cmp	edx, 3
	je	.L871
	mov	r10d, edi
	shr	r10d, cl
	lea	ecx, [r8+4]
	and	r10d, 1
	jne	.L859
	cmp	edx, 4
	je	.L871
	mov	r11d, edi
	shr	r11d, cl
	lea	ecx, [r8+5]
	and	r11d, 1
	jne	.L859
	cmp	edx, 5
	je	.L871
	mov	eax, edi
	shr	eax, cl
	lea	ecx, [r8+6]
	and	eax, 1
	jne	.L859
	cmp	edx, 6
	je	.L871
	mov	esi, edi
	shr	esi, cl
	lea	ecx, [r8+7]
	and	esi, 1
	jne	.L859
	cmp	edx, 7
	mov	edx, 0
	je	.L856
	bt	edi, ecx
	jnc	.L856
	lea	ecx, [r8+8]
.L859:
	mov	edx, ecx
	mov	eax, edx
	vzeroupper
	ret
.L864:
	vmovdqa	ymm3, YMMWORD PTR .LC7[rip]
	jmp	.L857
.L866:
	vmovdqa	ymm3, YMMWORD PTR .LC11[rip]
	jmp	.L857
.L865:
	vmovdqa	ymm3, YMMWORD PTR .LC5[rip]
	jmp	.L857
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
	je	.L876
	mov	eax, edi
	and	eax, 1
	jne	.L876
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L878:
	sar	edi
	add	eax, 1
	test	dil, 1
	je	.L878
.L876:
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
	vmovss	xmm1, DWORD PTR .LC14[rip]
	mov	eax, 1
	vcomiss	xmm1, xmm0
	ja	.L883
	xor	eax, eax
	vcomiss	xmm0, DWORD PTR .LC15[rip]
	seta	al
.L883:
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
	vmovsd	xmm1, QWORD PTR .LC16[rip]
	mov	eax, 1
	vcomisd	xmm1, xmm0
	ja	.L886
	xor	eax, eax
	vcomisd	xmm0, QWORD PTR .LC17[rip]
	seta	al
.L886:
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
	fld	TBYTE PTR .LC18[rip]
	fcomip	st, st(1)
	ja	.L892
	fld	TBYTE PTR .LC19[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L889
	.p2align 4,,10
	.p2align 3
.L892:
	fstp	st(0)
.L889:
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
	jp	.L895
	vaddss	xmm1, xmm0, xmm0
	vucomiss	xmm1, xmm0
	jp	.L902
	jne	.L902
.L895:
	ret
	.p2align 4,,10
	.p2align 3
.L902:
	vmovss	xmm2, DWORD PTR .LC20[rip]
	test	edi, edi
	jns	.L897
	vmovss	xmm2, DWORD PTR .LC21[rip]
.L897:
	test	dil, 1
	je	.L898
	.p2align 4
	.p2align 3
.L899:
	vmulss	xmm0, xmm0, xmm2
.L898:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L895
	vmulss	xmm2, xmm2, xmm2
	test	dil, 1
	jne	.L899
.L909:
	vmulss	xmm2, xmm2, xmm2
	mov	edx, edi
	shr	edx, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L899
	jmp	.L909
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
	jp	.L911
	vaddsd	xmm1, xmm0, xmm0
	vucomisd	xmm1, xmm0
	jp	.L918
	jne	.L918
.L911:
	ret
	.p2align 4,,10
	.p2align 3
.L918:
	vmovsd	xmm2, QWORD PTR .LC22[rip]
	test	edi, edi
	jns	.L913
	vmovsd	xmm2, QWORD PTR .LC23[rip]
.L913:
	test	dil, 1
	je	.L914
	.p2align 4
	.p2align 3
.L915:
	vmulsd	xmm0, xmm0, xmm2
.L914:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L911
	vmulsd	xmm2, xmm2, xmm2
	test	dil, 1
	jne	.L915
.L925:
	vmulsd	xmm2, xmm2, xmm2
	mov	edx, edi
	shr	edx, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L915
	jmp	.L925
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
	jp	.L927
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L934
	jne	.L934
	jmp	.L927
	.p2align 4,,10
	.p2align 3
.L943:
	fstp	st(0)
.L927:
	ret
	.p2align 4,,10
	.p2align 3
.L934:
	test	edi, edi
	js	.L941
	fld	DWORD PTR .LC20[rip]
.L929:
	test	dil, 1
	je	.L930
	.p2align 4
	.p2align 3
.L931:
	fmul	st(1), st
.L930:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L943
	fmul	st, st(0)
	test	dil, 1
	jne	.L931
.L942:
	mov	edx, edi
	fmul	st, st(0)
	shr	edx, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L931
	jmp	.L942
	.p2align 4,,10
	.p2align 3
.L941:
	fld	DWORD PTR .LC21[rip]
	jmp	.L929
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
	je	.L945
	lea	rax, [rdx-1]
	cmp	rax, 30
	jbe	.L951
	mov	rdi, rdx
	xor	r8d, r8d
	and	rdi, -32
	.p2align 5
	.p2align 4
	.p2align 3
.L947:
	vmovdqu	ymm0, YMMWORD PTR [rcx+r8]
	vpxor	ymm1, ymm0, YMMWORD PTR [rsi+r8]
	vmovdqu	YMMWORD PTR [rcx+r8], ymm1
	add	r8, 32
	cmp	r8, rdi
	jne	.L947
	mov	r9, rdx
	lea	r11, [rcx+rdi]
	lea	rax, [rsi+rdi]
	sub	r9, rdi
	cmp	rdx, rdi
	je	.L1002
	vzeroupper
.L946:
	sub	rdx, rdi
	lea	r10, [rdx-1]
	cmp	r10, 14
	jbe	.L949
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
	je	.L945
.L949:
	movzx	edx, BYTE PTR [rax]
	xor	BYTE PTR [r11], dl
	cmp	r9, 1
	je	.L945
	movzx	edi, BYTE PTR [rax+1]
	xor	BYTE PTR [r11+1], dil
	cmp	r9, 2
	je	.L945
	movzx	r10d, BYTE PTR [rax+2]
	xor	BYTE PTR [r11+2], r10b
	cmp	r9, 3
	je	.L945
	movzx	r8d, BYTE PTR [rax+3]
	xor	BYTE PTR [r11+3], r8b
	cmp	r9, 4
	je	.L945
	movzx	esi, BYTE PTR [rax+4]
	xor	BYTE PTR [r11+4], sil
	cmp	r9, 5
	je	.L945
	movzx	edx, BYTE PTR [rax+5]
	xor	BYTE PTR [r11+5], dl
	cmp	r9, 6
	je	.L945
	movzx	edi, BYTE PTR [rax+6]
	xor	BYTE PTR [r11+6], dil
	cmp	r9, 7
	je	.L945
	movzx	r10d, BYTE PTR [rax+7]
	xor	BYTE PTR [r11+7], r10b
	cmp	r9, 8
	je	.L945
	movzx	r8d, BYTE PTR [rax+8]
	xor	BYTE PTR [r11+8], r8b
	cmp	r9, 9
	je	.L945
	movzx	esi, BYTE PTR [rax+9]
	xor	BYTE PTR [r11+9], sil
	cmp	r9, 10
	je	.L945
	movzx	edx, BYTE PTR [rax+10]
	xor	BYTE PTR [r11+10], dl
	cmp	r9, 11
	je	.L945
	movzx	edi, BYTE PTR [rax+11]
	xor	BYTE PTR [r11+11], dil
	cmp	r9, 12
	je	.L945
	movzx	r10d, BYTE PTR [rax+12]
	xor	BYTE PTR [r11+12], r10b
	cmp	r9, 13
	je	.L945
	movzx	r8d, BYTE PTR [rax+13]
	xor	BYTE PTR [r11+13], r8b
	cmp	r9, 14
	je	.L945
	movzx	eax, BYTE PTR [rax+14]
	xor	BYTE PTR [r11+14], al
.L945:
	mov	rax, rcx
	ret
.L951:
	mov	r11, rdi
	mov	rax, rsi
	mov	r9, rdx
	xor	edi, edi
	jmp	.L946
.L1002:
	vzeroupper
	jmp	.L945
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
	je	.L1004
	.p2align 4
	.p2align 4
	.p2align 3
.L1005:
	add	rcx, 1
	cmp	BYTE PTR [rcx], 0
	jne	.L1005
.L1004:
	test	rdx, rdx
	jne	.L1006
	jmp	.L1007
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1008:
	add	rsi, 1
	add	rcx, 1
	sub	rdx, 1
	je	.L1007
.L1006:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rcx], r8b
	test	r8b, r8b
	jne	.L1008
	ret
	.p2align 4,,10
	.p2align 3
.L1007:
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
	je	.L1017
.L1018:
	cmp	BYTE PTR [rdi+rax], 0
	jne	.L1020
.L1017:
	ret
	.p2align 4,,10
	.p2align 3
.L1020:
	add	rax, 1
	cmp	rsi, rax
	jne	.L1018
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
	je	.L1031
.L1027:
	mov	rdx, rsi
	jmp	.L1030
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1029:
	add	rdx, 1
	cmp	cl, r8b
	je	.L1028
.L1030:
	movzx	ecx, BYTE PTR [rdx]
	test	cl, cl
	jne	.L1029
	movzx	r8d, BYTE PTR [rax+1]
	add	rax, 1
	test	r8b, r8b
	jne	.L1027
.L1031:
	xor	eax, eax
.L1028:
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
.L1036:
	movsx	ecx, BYTE PTR [rdi]
	cmp	ecx, esi
	cmove	rdx, rdi
	add	rdi, 1
	test	cl, cl
	jne	.L1036
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
	je	.L1050
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L1040:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L1040
	mov	r9, rdx
	sub	rax, rsi
	je	.L1038
	lea	r11, [rsi-1+rax]
	jmp	.L1060
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1062:
	add	rdx, 1
	test	cl, cl
	je	.L1061
.L1060:
	movzx	ecx, BYTE PTR [rdx]
	cmp	cl, r10b
	jne	.L1062
	mov	ecx, r10d
	mov	rax, rsi
	mov	r8, rdx
	jmp	.L1042
	.p2align 4,,10
	.p2align 3
.L1063:
	test	dil, dil
	setne	r9b
	cmp	dil, cl
	sete	dil
	test	r9b, dil
	je	.L1043
	movzx	ecx, BYTE PTR [r8+1]
	add	r8, 1
	add	rax, 1
	test	cl, cl
	je	.L1043
.L1042:
	movzx	edi, BYTE PTR [rax]
	cmp	rax, r11
	jne	.L1063
.L1043:
	cmp	cl, BYTE PTR [rax]
	je	.L1050
	add	rdx, 1
	jmp	.L1060
	.p2align 4,,10
	.p2align 3
.L1061:
	xor	r9d, r9d
.L1038:
	mov	rax, r9
	ret
.L1050:
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
	ja	.L1074
	vcomisd	xmm0, xmm2
	jbe	.L1068
	vcomisd	xmm2, xmm1
	ja	.L1067
.L1068:
	ret
	.p2align 4,,10
	.p2align 3
.L1074:
	vcomisd	xmm1, xmm2
	jbe	.L1068
.L1067:
	vxorpd	xmm0, xmm0, XMMWORD PTR .LC24[rip]
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
	je	.L1075
	cmp	rsi, rcx
	jb	.L1086
	sub	rsi, rcx
	add	rsi, rdi
	jc	.L1086
	movzx	r9d, BYTE PTR [rdx]
	jmp	.L1081
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1085:
	mov	rax, rdi
.L1077:
	cmp	rsi, rax
	jb	.L1086
.L1081:
	lea	rdi, [rax+1]
	cmp	BYTE PTR [rax], r9b
	jne	.L1085
	cmp	rcx, 1
	je	.L1075
.L1080:
	mov	r11d, 1
	jmp	.L1078
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1079:
	add	r11, 1
	cmp	rcx, r11
	je	.L1075
.L1078:
	movzx	r10d, BYTE PTR [rdx+r11]
	cmp	BYTE PTR [rax+r11], r10b
	je	.L1079
	cmp	rsi, rdi
	jb	.L1086
	lea	rax, [rdi+1]
	cmp	r9b, BYTE PTR [rdi]
	jne	.L1077
	mov	r8, rdi
	mov	rdi, rax
	mov	rax, r8
	jmp	.L1080
	.p2align 4,,10
	.p2align 3
.L1086:
	xor	eax, eax
.L1075:
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
	je	.L1096
	call	memmove
	mov	rdi, rax
.L1096:
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
	ja	.L1125
	vmovsd	xmm5, QWORD PTR .LC27[rip]
	xor	edx, edx
	vcomisd	xmm0, xmm5
	jb	.L1126
.L1104:
	vmovsd	xmm6, QWORD PTR .LC23[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1111:
	vmulsd	xmm0, xmm0, xmm6
	add	eax, 1
	vcomisd	xmm0, xmm5
	jnb	.L1111
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	je	.L1101
.L1128:
	vxorpd	xmm0, xmm0, XMMWORD PTR .LC24[rip]
.L1101:
	ret
	.p2align 4,,10
	.p2align 3
.L1126:
	vmovsd	xmm1, QWORD PTR .LC23[rip]
	vcomisd	xmm1, xmm0
	jbe	.L1107
	vucomisd	xmm0, xmm2
	jp	.L1117
	jne	.L1117
.L1107:
	mov	DWORD PTR [rdi], 0
	ret
	.p2align 4,,10
	.p2align 3
.L1125:
	vmovsd	xmm4, QWORD PTR .LC25[rip]
	vxorpd	xmm3, xmm0, XMMWORD PTR .LC24[rip]
	vcomisd	xmm4, xmm0
	jb	.L1127
	vmovsd	xmm5, QWORD PTR .LC27[rip]
	vmovapd	xmm0, xmm3
	mov	edx, 1
	jmp	.L1104
	.p2align 4,,10
	.p2align 3
.L1127:
	vcomisd	xmm0, QWORD PTR .LC26[rip]
	jbe	.L1107
	vmovsd	xmm1, QWORD PTR .LC23[rip]
	mov	edx, 1
.L1105:
	vmovapd	xmm0, xmm3
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1113:
	vaddsd	xmm0, xmm0, xmm0
	sub	eax, 1
	vcomisd	xmm1, xmm0
	ja	.L1113
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	jne	.L1128
	ret
.L1117:
	vmovapd	xmm3, xmm0
	xor	edx, edx
	jmp	.L1105
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
	je	.L1129
	.p2align 5
	.p2align 4
	.p2align 3
.L1131:
	mov	rax, rdi
	and	eax, 1
	neg	rax
	and	rax, rsi
	add	rsi, rsi
	add	rdx, rax
	shr	rdi
	jne	.L1131
.L1129:
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
	jb	.L1135
	jmp	.L1158
	.p2align 4,,10
	.p2align 3
.L1138:
	add	esi, esi
	add	r11d, r11d
	cmp	esi, edi
	jnb	.L1137
	test	r11d, r11d
	je	.L1137
.L1135:
	test	esi, esi
	jns	.L1138
.L1139:
	xor	eax, eax
	xor	r10d, r10d
	.p2align 6
	.p2align 4
	.p2align 3
.L1141:
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
	jne	.L1141
.L1140:
	test	rdx, rdx
	cmovne	eax, edi
	ret
	.p2align 4,,10
	.p2align 3
.L1137:
	xor	eax, eax
	test	r11d, r11d
	jne	.L1139
	test	rdx, rdx
	cmovne	eax, edi
	ret
.L1158:
	mov	eax, edi
	sub	eax, esi
	cmp	edi, esi
	setnb	cl
	cmovnb	edi, eax
	movzx	eax, cl
	jmp	.L1140
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
	je	.L1161
	movsx	ecx, al
	sal	ecx, 8
	bsr	esi, ecx
	xor	esi, 31
	lea	r8d, [rsi-1]
.L1161:
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
	je	.L1164
	bsr	rcx, rax
	xor	rcx, 63
	lea	esi, [rcx-1]
.L1164:
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
	je	.L1167
	.p2align 5
	.p2align 4
	.p2align 3
.L1169:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L1169
.L1167:
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
	jb	.L1177
	mov	eax, edx
	add	rax, rcx
	cmp	rax, rdi
	jnb	.L1294
.L1177:
	test	r10d, r10d
	je	.L1295
	lea	eax, [r10-1]
	cmp	eax, 3
	jbe	.L1179
	lea	r11, [rcx+8]
	mov	r8, rdi
	sub	r8, r11
	cmp	r8, 16
	jbe	.L1179
	mov	r9d, edx
	xor	eax, eax
	shr	r9d, 5
	mov	r11d, r9d
	sal	r11, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1180:
	vmovdqu	ymm2, YMMWORD PTR [rcx+rax]
	vmovdqu	YMMWORD PTR [rdi+rax], ymm2
	add	rax, 32
	cmp	r11, rax
	jne	.L1180
	lea	r11d, [0+r9*4]
	cmp	r10d, r11d
	je	.L1183
	mov	r8d, r11d
	lea	eax, [r11+1]
	mov	r9, QWORD PTR [rcx+r8*8]
	mov	QWORD PTR [rdi+r8*8], r9
	cmp	eax, r10d
	jnb	.L1183
	mov	r8, QWORD PTR [rcx+rax*8]
	add	r11d, 2
	mov	QWORD PTR [rdi+rax*8], r8
	cmp	r11d, r10d
	jnb	.L1183
	mov	r10, QWORD PTR [rcx+r11*8]
	mov	QWORD PTR [rdi+r11*8], r10
.L1183:
	cmp	esi, edx
	jnb	.L1285
	mov	r11d, edx
	sub	r11d, esi
	lea	eax, [r11-1]
	cmp	eax, 14
	jbe	.L1296
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
	jbe	.L1268
	cmp	eax, 30
	jbe	.L1200
	mov	r9d, r11d
	lea	rbx, [rcx+r8]
	xor	eax, eax
	shr	r9d, 5
	sal	r9, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1185:
	vmovdqu	ymm3, YMMWORD PTR [rbx+rax]
	vmovdqu	YMMWORD PTR [r10+rax], ymm3
	add	rax, 32
	cmp	r9, rax
	jne	.L1185
	mov	eax, r11d
	and	eax, -32
	add	esi, eax
	test	r11b, 31
	je	.L1284
	sub	r11d, eax
	lea	r10d, [r11-1]
	cmp	r10d, 14
	jbe	.L1187
.L1184:
	add	rax, r8
	mov	r8d, r11d
	and	r8d, -16
	vmovdqu	xmm4, XMMWORD PTR [rcx+rax]
	add	esi, r8d
	and	r11d, 15
	vmovdqu	XMMWORD PTR [rdi+rax], xmm4
	je	.L1284
.L1187:
	mov	r11d, esi
	lea	r9d, [rsi+1]
	movzx	ebx, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], bl
	cmp	r9d, edx
	jnb	.L1284
	movzx	eax, BYTE PTR [rcx+r9]
	lea	r10d, [rsi+2]
	mov	BYTE PTR [rdi+r9], al
	cmp	r10d, edx
	jnb	.L1284
	movzx	r8d, BYTE PTR [rcx+r10]
	lea	r11d, [rsi+3]
	mov	BYTE PTR [rdi+r10], r8b
	cmp	r11d, edx
	jnb	.L1284
	movzx	ebx, BYTE PTR [rcx+r11]
	lea	r9d, [rsi+4]
	mov	BYTE PTR [rdi+r11], bl
	cmp	r9d, edx
	jnb	.L1284
	movzx	eax, BYTE PTR [rcx+r9]
	lea	r10d, [rsi+5]
	mov	BYTE PTR [rdi+r9], al
	cmp	r10d, edx
	jnb	.L1284
	movzx	r8d, BYTE PTR [rcx+r10]
	lea	r11d, [rsi+6]
	mov	BYTE PTR [rdi+r10], r8b
	cmp	r11d, edx
	jnb	.L1284
	movzx	ebx, BYTE PTR [rcx+r11]
	lea	r9d, [rsi+7]
	mov	BYTE PTR [rdi+r11], bl
	cmp	r9d, edx
	jnb	.L1284
	movzx	eax, BYTE PTR [rcx+r9]
	lea	r10d, [rsi+8]
	mov	BYTE PTR [rdi+r9], al
	cmp	r10d, edx
	jnb	.L1284
	movzx	r8d, BYTE PTR [rcx+r10]
	lea	r11d, [rsi+9]
	mov	BYTE PTR [rdi+r10], r8b
	cmp	r11d, edx
	jnb	.L1284
	movzx	ebx, BYTE PTR [rcx+r11]
	lea	r9d, [rsi+10]
	mov	BYTE PTR [rdi+r11], bl
	cmp	r9d, edx
	jnb	.L1284
	movzx	eax, BYTE PTR [rcx+r9]
	lea	r10d, [rsi+11]
	mov	BYTE PTR [rdi+r9], al
	cmp	r10d, edx
	jnb	.L1284
	movzx	r8d, BYTE PTR [rcx+r10]
	lea	r11d, [rsi+12]
	mov	BYTE PTR [rdi+r10], r8b
	cmp	r11d, edx
	jnb	.L1284
	movzx	ebx, BYTE PTR [rcx+r11]
	lea	r9d, [rsi+13]
	mov	BYTE PTR [rdi+r11], bl
	cmp	r9d, edx
	jnb	.L1284
	movzx	eax, BYTE PTR [rcx+r9]
	add	esi, 14
	mov	BYTE PTR [rdi+r9], al
	cmp	esi, edx
	jnb	.L1284
	movzx	edx, BYTE PTR [rcx+rsi]
	mov	BYTE PTR [rdi+rsi], dl
	vzeroupper
	jmp	.L1287
	.p2align 4,,10
	.p2align 3
.L1294:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	lea	r8d, [rdx-1]
	test	edx, edx
	je	.L1297
	mov	esi, r8d
	cmp	r8d, 14
	jbe	.L1198
	mov	r9, rdi
	sub	r9, rcx
	add	r9, 31
	cmp	r9, 30
	jbe	.L1198
	cmp	r8d, 30
	jbe	.L1201
	mov	r9d, edx
	lea	r10, [rsi-31]
	xor	eax, eax
	shr	r9d, 5
	lea	r11, [rcx+r10]
	add	r10, rdi
	neg	r9
	sal	r9, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1193:
	vmovdqu	ymm0, YMMWORD PTR [r11+rax]
	vmovdqu	YMMWORD PTR [r10+rax], ymm0
	sub	rax, 32
	cmp	rax, r9
	jne	.L1193
	mov	r10d, edx
	and	r10d, -32
	sub	r8d, r10d
	test	dl, 31
	je	.L1285
	sub	edx, r10d
	lea	r11d, [rdx-1]
	cmp	r11d, 14
	jbe	.L1298
	vzeroupper
.L1192:
	lea	rsi, [rsi-15]
	mov	r9d, edx
	sub	rsi, r10
	and	r9d, -16
	vmovdqu	xmm1, XMMWORD PTR [rcx+rsi]
	sub	r8d, r9d
	and	edx, 15
	vmovdqu	XMMWORD PTR [rdi+rsi], xmm1
	je	.L1290
.L1196:
	mov	eax, r8d
	lea	r10d, [r8-1]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r8d, r8d
	je	.L1290
	mov	r11d, r10d
	lea	r9d, [r8-2]
	movzx	esi, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], sil
	test	r10d, r10d
	je	.L1290
	mov	eax, r9d
	lea	r10d, [r8-3]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r9d, r9d
	je	.L1290
	mov	r11d, r10d
	lea	r9d, [r8-4]
	movzx	esi, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], sil
	test	r10d, r10d
	je	.L1290
	mov	eax, r9d
	lea	r10d, [r8-5]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r9d, r9d
	je	.L1290
	mov	r11d, r10d
	lea	r9d, [r8-6]
	movzx	esi, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], sil
	test	r10d, r10d
	je	.L1290
	mov	eax, r9d
	lea	r10d, [r8-7]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r9d, r9d
	je	.L1290
	mov	r11d, r10d
	lea	r9d, [r8-8]
	movzx	esi, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], sil
	test	r10d, r10d
	je	.L1290
	mov	eax, r9d
	lea	r10d, [r8-9]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r9d, r9d
	je	.L1290
	mov	r11d, r10d
	lea	r9d, [r8-10]
	movzx	esi, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], sil
	test	r10d, r10d
	je	.L1290
	mov	eax, r9d
	lea	r10d, [r8-11]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r9d, r9d
	je	.L1290
	mov	r11d, r10d
	lea	r9d, [r8-12]
	movzx	esi, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], sil
	test	r10d, r10d
	je	.L1290
	mov	eax, r9d
	lea	r10d, [r8-13]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r9d, r9d
	je	.L1290
	mov	r11d, r10d
	lea	r8d, [r8-14]
	movzx	esi, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], sil
	test	r10d, r10d
	je	.L1290
	movzx	ecx, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], cl
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1198:
	movzx	r9d, BYTE PTR [rcx+rsi]
	mov	BYTE PTR [rdi+rsi], r9b
	sub	rsi, 1
	jnb	.L1198
	ret
	.p2align 4,,10
	.p2align 3
.L1284:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	vzeroupper
.L1287:
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L1200:
	.cfi_restore_state
	xor	eax, eax
	jmp	.L1184
	.p2align 4,,10
	.p2align 3
.L1179:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	lea	r11d, [0+r10*8]
	xor	r9d, r9d
	.p2align 5
	.p2align 4
	.p2align 3
.L1182:
	mov	rax, QWORD PTR [rcx+r9]
	mov	QWORD PTR [rdi+r9], rax
	add	r9, 8
	cmp	r9, r11
	jne	.L1182
	jmp	.L1183
	.p2align 4,,10
	.p2align 3
.L1295:
	mov	esi, esi
	test	edx, edx
	je	.L1299
.L1289:
	mov	r8, rsi
.L1291:
	movzx	r10d, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], r10b
	add	r8, 1
	cmp	r8d, edx
	jb	.L1291
.L1290:
	ret
	.p2align 4,,10
	.p2align 3
.L1285:
	vzeroupper
	ret
.L1268:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	vzeroupper
	.p2align 5
	.p2align 4
	.p2align 3
.L1189:
	movzx	esi, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], sil
	add	r8, 1
	cmp	r8d, edx
	jb	.L1189
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
.L1297:
	.cfi_restore 3
	.cfi_restore 6
	ret
.L1201:
	xor	r10d, r10d
	jmp	.L1192
.L1296:
	mov	esi, esi
	vzeroupper
	jmp	.L1289
.L1298:
	vzeroupper
	jmp	.L1196
.L1299:
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
	jb	.L1304
	mov	eax, edx
	add	rax, rsi
	cmp	rax, rdi
	jnb	.L1391
.L1304:
	test	r8d, r8d
	je	.L1303
	lea	eax, [r8-1]
	cmp	eax, 6
	jbe	.L1307
	lea	r10, [rsi+2]
	mov	r11, rcx
	sub	r11, r10
	cmp	r11, 28
	jbe	.L1307
	cmp	eax, 14
	jbe	.L1324
	mov	r9d, edx
	xor	eax, eax
	shr	r9d, 5
	mov	edi, r9d
	sal	rdi, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1309:
	vmovdqu	ymm2, YMMWORD PTR [rsi+rax]
	vmovdqu	YMMWORD PTR [rcx+rax], ymm2
	add	rax, 32
	cmp	rax, rdi
	jne	.L1309
	mov	r10d, r9d
	sal	r10d, 4
	cmp	r8d, r10d
	je	.L1386
	mov	r11d, r8d
	sub	r11d, r10d
	lea	r9d, [r11-1]
	cmp	r9d, 6
	jbe	.L1392
	vzeroupper
.L1308:
	mov	edi, r10d
	mov	eax, r11d
	and	eax, -8
	vmovdqu	xmm3, XMMWORD PTR [rsi+rdi*2]
	add	r10d, eax
	and	r11d, 7
	vmovdqu	XMMWORD PTR [rcx+rdi*2], xmm3
	je	.L1303
.L1311:
	mov	r11d, r10d
	lea	edi, [r10+1]
	movzx	r9d, WORD PTR [rsi+r11*2]
	mov	WORD PTR [rcx+r11*2], r9w
	cmp	edi, r8d
	jnb	.L1303
	movzx	eax, WORD PTR [rsi+rdi*2]
	lea	r11d, [r10+2]
	mov	WORD PTR [rcx+rdi*2], ax
	cmp	r11d, r8d
	jnb	.L1303
	movzx	r9d, WORD PTR [rsi+r11*2]
	lea	edi, [r10+3]
	mov	WORD PTR [rcx+r11*2], r9w
	cmp	edi, r8d
	jnb	.L1303
	movzx	eax, WORD PTR [rsi+rdi*2]
	lea	r11d, [r10+4]
	mov	WORD PTR [rcx+rdi*2], ax
	cmp	r11d, r8d
	jnb	.L1303
	movzx	r9d, WORD PTR [rsi+r11*2]
	lea	edi, [r10+5]
	mov	WORD PTR [rcx+r11*2], r9w
	cmp	edi, r8d
	jnb	.L1303
	movzx	eax, WORD PTR [rsi+rdi*2]
	add	r10d, 6
	mov	WORD PTR [rcx+rdi*2], ax
	cmp	r10d, r8d
	jnb	.L1303
	movzx	r8d, WORD PTR [rsi+r10*2]
	mov	WORD PTR [rcx+r10*2], r8w
.L1303:
	test	dl, 1
	je	.L1390
.L1396:
	lea	edi, [rdx-1]
	movzx	edx, BYTE PTR [rsi+rdi]
	mov	BYTE PTR [rcx+rdi], dl
	ret
	.p2align 4,,10
	.p2align 3
.L1391:
	lea	r8d, [rdx-1]
	test	edx, edx
	je	.L1393
	mov	edi, r8d
	cmp	r8d, 14
	jbe	.L1322
	mov	r9, rcx
	sub	r9, rsi
	add	r9, 31
	cmp	r9, 30
	jbe	.L1322
	cmp	r8d, 30
	jbe	.L1325
	mov	r9d, edx
	lea	r10, [rdi-31]
	xor	eax, eax
	shr	r9d, 5
	lea	r11, [rsi+r10]
	add	r10, rcx
	neg	r9
	sal	r9, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1318:
	vmovdqu	ymm0, YMMWORD PTR [r11+rax]
	vmovdqu	YMMWORD PTR [r10+rax], ymm0
	sub	rax, 32
	cmp	rax, r9
	jne	.L1318
	mov	r10d, edx
	and	r10d, -32
	sub	r8d, r10d
	test	dl, 31
	je	.L1388
	sub	edx, r10d
	lea	r11d, [rdx-1]
	cmp	r11d, 14
	jbe	.L1394
	vzeroupper
.L1317:
	lea	rdi, [rdi-15]
	mov	r9d, edx
	sub	rdi, r10
	and	r9d, -16
	vmovdqu	xmm1, XMMWORD PTR [rsi+rdi]
	sub	r8d, r9d
	and	edx, 15
	vmovdqu	XMMWORD PTR [rcx+rdi], xmm1
	je	.L1390
.L1320:
	mov	eax, r8d
	lea	r10d, [r8-1]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r8d, r8d
	je	.L1390
	mov	r11d, r10d
	lea	r9d, [r8-2]
	movzx	edi, BYTE PTR [rsi+r11]
	mov	BYTE PTR [rcx+r11], dil
	test	r10d, r10d
	je	.L1390
	mov	eax, r9d
	lea	r10d, [r8-3]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r9d, r9d
	je	.L1390
	mov	r11d, r10d
	lea	r9d, [r8-4]
	movzx	edi, BYTE PTR [rsi+r11]
	mov	BYTE PTR [rcx+r11], dil
	test	r10d, r10d
	je	.L1390
	mov	eax, r9d
	lea	r10d, [r8-5]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r9d, r9d
	je	.L1390
	mov	r11d, r10d
	lea	r9d, [r8-6]
	movzx	edi, BYTE PTR [rsi+r11]
	mov	BYTE PTR [rcx+r11], dil
	test	r10d, r10d
	je	.L1390
	mov	eax, r9d
	lea	r10d, [r8-7]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r9d, r9d
	je	.L1390
	mov	r11d, r10d
	lea	r9d, [r8-8]
	movzx	edi, BYTE PTR [rsi+r11]
	mov	BYTE PTR [rcx+r11], dil
	test	r10d, r10d
	je	.L1390
	mov	eax, r9d
	lea	r10d, [r8-9]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r9d, r9d
	je	.L1390
	mov	r11d, r10d
	lea	r9d, [r8-10]
	movzx	edi, BYTE PTR [rsi+r11]
	mov	BYTE PTR [rcx+r11], dil
	test	r10d, r10d
	je	.L1390
	mov	eax, r9d
	lea	r10d, [r8-11]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r9d, r9d
	jne	.L1395
.L1390:
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1322:
	movzx	r9d, BYTE PTR [rsi+rdi]
	mov	BYTE PTR [rcx+rdi], r9b
	sub	rdi, 1
	jnb	.L1322
	ret
.L1324:
	mov	r11d, r8d
	xor	r10d, r10d
	jmp	.L1308
	.p2align 4,,10
	.p2align 3
.L1307:
	add	r8d, r8d
	xor	r11d, r11d
	mov	r10d, r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L1313:
	movzx	r9d, WORD PTR [rsi+r11]
	mov	WORD PTR [rcx+r11], r9w
	add	r11, 2
	cmp	r10, r11
	jne	.L1313
	test	dl, 1
	je	.L1390
	jmp	.L1396
.L1392:
	vzeroupper
	jmp	.L1311
.L1395:
	mov	r11d, r10d
	lea	r9d, [r8-12]
	movzx	edi, BYTE PTR [rsi+r11]
	mov	BYTE PTR [rcx+r11], dil
	test	r10d, r10d
	je	.L1390
	mov	eax, r9d
	lea	r10d, [r8-13]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r9d, r9d
	je	.L1390
	mov	r11d, r10d
	lea	r8d, [r8-14]
	movzx	edi, BYTE PTR [rsi+r11]
	mov	BYTE PTR [rcx+r11], dil
	test	r10d, r10d
	je	.L1390
	movzx	esi, BYTE PTR [rsi+r8]
	mov	BYTE PTR [rcx+r8], sil
	ret
.L1386:
	vzeroupper
	jmp	.L1303
.L1393:
	ret
.L1325:
	xor	r10d, r10d
	jmp	.L1317
.L1394:
	vzeroupper
	jmp	.L1320
.L1388:
	vzeroupper
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
	mov	rcx, rsi
	mov	r9d, edx
	mov	esi, edx
	shr	r9d, 2
	and	esi, -4
	cmp	rdi, rcx
	jb	.L1402
	mov	eax, edx
	add	rax, rcx
	cmp	rax, rdi
	jnb	.L1526
.L1402:
	test	r9d, r9d
	je	.L1527
	lea	eax, [r9-1]
	cmp	eax, 2
	jbe	.L1404
	lea	r11, [rcx+4]
	mov	r8, rdi
	sub	r8, r11
	cmp	r8, 24
	jbe	.L1404
	cmp	eax, 6
	jbe	.L1428
	mov	r10d, edx
	xor	r11d, r11d
	shr	r10d, 5
	mov	r8d, r10d
	sal	r8, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1406:
	vmovdqu	ymm2, YMMWORD PTR [rcx+r11]
	vmovdqu	YMMWORD PTR [rdi+r11], ymm2
	add	r11, 32
	cmp	r8, r11
	jne	.L1406
	lea	eax, [0+r10*8]
	cmp	r9d, eax
	je	.L1411
	mov	r11d, r9d
	sub	r11d, eax
	lea	r10d, [r11-1]
	cmp	r10d, 2
	jbe	.L1408
.L1405:
	mov	r8d, eax
	mov	r10d, r11d
	and	r10d, -4
	vmovdqu	xmm3, XMMWORD PTR [rcx+r8*4]
	add	eax, r10d
	and	r11d, 3
	vmovdqu	XMMWORD PTR [rdi+r8*4], xmm3
	je	.L1411
.L1408:
	mov	r11d, eax
	mov	r8d, DWORD PTR [rcx+r11*4]
	mov	DWORD PTR [rdi+r11*4], r8d
	lea	r11d, [rax+1]
	cmp	r11d, r9d
	jnb	.L1411
	mov	r10d, DWORD PTR [rcx+r11*4]
	add	eax, 2
	mov	DWORD PTR [rdi+r11*4], r10d
	cmp	eax, r9d
	jnb	.L1411
	mov	r9d, DWORD PTR [rcx+rax*4]
	mov	DWORD PTR [rdi+rax*4], r9d
.L1411:
	cmp	esi, edx
	jnb	.L1517
	mov	r11d, edx
	sub	r11d, esi
	lea	eax, [r11-1]
	cmp	eax, 14
	jbe	.L1528
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
	jbe	.L1500
	cmp	eax, 30
	jbe	.L1429
	mov	r9d, r11d
	lea	r10, [rcx+r8]
	xor	eax, eax
	shr	r9d, 5
	sal	r9, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1413:
	vmovdqu	ymm4, YMMWORD PTR [r10+rax]
	vmovdqu	YMMWORD PTR [rbx+rax], ymm4
	add	rax, 32
	cmp	rax, r9
	jne	.L1413
	mov	eax, r11d
	and	eax, -32
	add	esi, eax
	test	r11b, 31
	je	.L1516
	sub	r11d, eax
	lea	ebx, [r11-1]
	cmp	ebx, 14
	jbe	.L1415
.L1412:
	add	rax, r8
	mov	r8d, r11d
	and	r8d, -16
	vmovdqu	xmm5, XMMWORD PTR [rcx+rax]
	add	esi, r8d
	and	r11d, 15
	vmovdqu	XMMWORD PTR [rdi+rax], xmm5
	je	.L1516
.L1415:
	mov	r11d, esi
	lea	r9d, [rsi+1]
	movzx	r10d, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], r10b
	cmp	r9d, edx
	jnb	.L1516
	movzx	eax, BYTE PTR [rcx+r9]
	lea	ebx, [rsi+2]
	mov	BYTE PTR [rdi+r9], al
	cmp	ebx, edx
	jnb	.L1516
	movzx	r8d, BYTE PTR [rcx+rbx]
	lea	r11d, [rsi+3]
	mov	BYTE PTR [rdi+rbx], r8b
	cmp	r11d, edx
	jnb	.L1516
	movzx	r10d, BYTE PTR [rcx+r11]
	lea	r9d, [rsi+4]
	mov	BYTE PTR [rdi+r11], r10b
	cmp	r9d, edx
	jnb	.L1516
	movzx	eax, BYTE PTR [rcx+r9]
	lea	ebx, [rsi+5]
	mov	BYTE PTR [rdi+r9], al
	cmp	ebx, edx
	jnb	.L1516
	movzx	r8d, BYTE PTR [rcx+rbx]
	lea	r11d, [rsi+6]
	mov	BYTE PTR [rdi+rbx], r8b
	cmp	r11d, edx
	jnb	.L1516
	movzx	r10d, BYTE PTR [rcx+r11]
	lea	r9d, [rsi+7]
	mov	BYTE PTR [rdi+r11], r10b
	cmp	r9d, edx
	jnb	.L1516
	movzx	eax, BYTE PTR [rcx+r9]
	lea	ebx, [rsi+8]
	mov	BYTE PTR [rdi+r9], al
	cmp	ebx, edx
	jnb	.L1516
	movzx	r8d, BYTE PTR [rcx+rbx]
	lea	r11d, [rsi+9]
	mov	BYTE PTR [rdi+rbx], r8b
	cmp	r11d, edx
	jnb	.L1516
	movzx	r10d, BYTE PTR [rcx+r11]
	lea	r9d, [rsi+10]
	mov	BYTE PTR [rdi+r11], r10b
	cmp	r9d, edx
	jnb	.L1516
	movzx	eax, BYTE PTR [rcx+r9]
	lea	ebx, [rsi+11]
	mov	BYTE PTR [rdi+r9], al
	cmp	ebx, edx
	jnb	.L1516
	movzx	r8d, BYTE PTR [rcx+rbx]
	lea	r11d, [rsi+12]
	mov	BYTE PTR [rdi+rbx], r8b
	cmp	r11d, edx
	jnb	.L1516
	movzx	r10d, BYTE PTR [rcx+r11]
	lea	r9d, [rsi+13]
	mov	BYTE PTR [rdi+r11], r10b
	cmp	r9d, edx
	jnb	.L1516
	movzx	eax, BYTE PTR [rcx+r9]
	add	esi, 14
	mov	BYTE PTR [rdi+r9], al
	cmp	esi, edx
	jnb	.L1516
	movzx	ecx, BYTE PTR [rcx+rsi]
	mov	BYTE PTR [rdi+rsi], cl
	vzeroupper
	jmp	.L1519
	.p2align 4,,10
	.p2align 3
.L1526:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	lea	r11d, [rdx-1]
	test	edx, edx
	je	.L1529
	mov	r10d, r11d
	cmp	r11d, 14
	jbe	.L1426
	mov	r8, rdi
	sub	r8, rcx
	add	r8, 31
	cmp	r8, 30
	jbe	.L1426
	cmp	r11d, 30
	jbe	.L1430
	mov	esi, edx
	lea	r8, [r10-31]
	xor	eax, eax
	shr	esi, 5
	lea	r9, [rcx+r8]
	add	r8, rdi
	neg	rsi
	sal	rsi, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1421:
	vmovdqu	ymm0, YMMWORD PTR [r9+rax]
	vmovdqu	YMMWORD PTR [r8+rax], ymm0
	sub	rax, 32
	cmp	rax, rsi
	jne	.L1421
	mov	r8d, edx
	and	r8d, -32
	sub	r11d, r8d
	test	dl, 31
	je	.L1517
	sub	edx, r8d
	lea	r9d, [rdx-1]
	cmp	r9d, 14
	jbe	.L1530
	vzeroupper
.L1420:
	lea	r10, [r10-15]
	mov	esi, edx
	sub	r10, r8
	and	esi, -16
	vmovdqu	xmm1, XMMWORD PTR [rcx+r10]
	sub	r11d, esi
	and	edx, 15
	vmovdqu	XMMWORD PTR [rdi+r10], xmm1
	je	.L1522
.L1424:
	mov	eax, r11d
	lea	r8d, [r11-1]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r11d, r11d
	je	.L1522
	mov	r9d, r8d
	lea	edx, [r11-2]
	movzx	r10d, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], r10b
	test	r8d, r8d
	je	.L1522
	mov	eax, edx
	lea	r8d, [r11-3]
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	test	edx, edx
	je	.L1522
	mov	r9d, r8d
	lea	edx, [r11-4]
	movzx	r10d, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], r10b
	test	r8d, r8d
	je	.L1522
	mov	eax, edx
	lea	r8d, [r11-5]
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	test	edx, edx
	je	.L1522
	mov	r9d, r8d
	lea	edx, [r11-6]
	movzx	r10d, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], r10b
	test	r8d, r8d
	je	.L1522
	mov	eax, edx
	lea	r8d, [r11-7]
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	test	edx, edx
	je	.L1522
	mov	r9d, r8d
	lea	edx, [r11-8]
	movzx	r10d, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], r10b
	test	r8d, r8d
	je	.L1522
	mov	eax, edx
	lea	r8d, [r11-9]
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	test	edx, edx
	je	.L1522
	mov	r9d, r8d
	lea	edx, [r11-10]
	movzx	r10d, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], r10b
	test	r8d, r8d
	je	.L1522
	mov	eax, edx
	lea	r8d, [r11-11]
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	test	edx, edx
	je	.L1522
	mov	r9d, r8d
	lea	edx, [r11-12]
	movzx	r10d, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], r10b
	test	r8d, r8d
	je	.L1522
	mov	eax, edx
	lea	r8d, [r11-13]
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	test	edx, edx
	je	.L1522
	mov	r9d, r8d
	lea	r11d, [r11-14]
	movzx	r10d, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], r10b
	test	r8d, r8d
	je	.L1522
	movzx	ecx, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], cl
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1426:
	movzx	edx, BYTE PTR [rcx+r10]
	mov	BYTE PTR [rdi+r10], dl
	sub	r10, 1
	jnb	.L1426
	ret
	.p2align 4,,10
	.p2align 3
.L1516:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	vzeroupper
.L1519:
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
.L1428:
	.cfi_restore 3
	.cfi_restore 6
	mov	r11d, r9d
	xor	eax, eax
	jmp	.L1405
	.p2align 4,,10
	.p2align 3
.L1404:
	lea	r11d, [0+r9*4]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L1410:
	mov	r8d, DWORD PTR [rcx+rax]
	mov	DWORD PTR [rdi+rax], r8d
	add	rax, 4
	cmp	r11, rax
	jne	.L1410
	jmp	.L1411
	.p2align 4,,10
	.p2align 3
.L1527:
	mov	esi, esi
	test	edx, edx
	je	.L1531
.L1521:
	mov	r8, rsi
.L1523:
	movzx	r10d, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], r10b
	add	r8, 1
	cmp	r8d, edx
	jb	.L1523
.L1522:
	ret
	.p2align 4,,10
	.p2align 3
.L1517:
	vzeroupper
	ret
.L1500:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	vzeroupper
	.p2align 5
	.p2align 4
	.p2align 3
.L1417:
	movzx	esi, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], sil
	add	r8, 1
	cmp	r8d, edx
	jb	.L1417
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L1429:
	.cfi_restore_state
	xor	eax, eax
	jmp	.L1412
.L1529:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	ret
.L1430:
	xor	r8d, r8d
	jmp	.L1420
.L1528:
	mov	esi, esi
	vzeroupper
	jmp	.L1521
.L1530:
	vzeroupper
	jmp	.L1424
.L1531:
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
	js	.L1540
	vcvtsi2sd	xmm0, xmm0, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1540:
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
	js	.L1543
	vcvtsi2ss	xmm0, xmm0, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1543:
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
	movzx	edx, di
	vmovdqa	ymm1, YMMWORD PTR .LC28[rip]
	mov	eax, 1
	vpxor	xmm7, xmm7, xmm7
	vmovd	xmm0, edx
	vmovd	xmm2, eax
	vpbroadcastd	ymm4, xmm0
	vpbroadcastd	ymm5, xmm2
	vpsravd	ymm3, ymm4, ymm1
	vpand	ymm6, ymm3, ymm5
	vpcmpeqd	ymm8, ymm6, ymm7
	vpcmpeqd	ymm9, ymm8, ymm7
	vptest	ymm9, ymm9
	jne	.L1552
	vmovdqa	ymm10, YMMWORD PTR .LC29[rip]
	vpsravd	ymm11, ymm4, ymm10
	vpand	ymm12, ymm11, ymm5
	vpcmpeqd	ymm13, ymm12, ymm7
	vpcmpeqd	ymm14, ymm13, ymm7
	vptest	ymm14, ymm14
	jne	.L1553
.L1559:
	mov	eax, 16
.L1546:
	vzeroupper
	ret
.L1552:
	vmovdqa	ymm15, YMMWORD PTR .LC5[rip]
	vmovdqa	ymm0, YMMWORD PTR .LC10[rip]
.L1547:
	mov	ecx, 15
	vmovd	esi, xmm0
	vmovd	edi, xmm15
	mov	r8d, ecx
	sub	r8d, esi
	bt	edx, r8d
	jc	.L1565
	lea	eax, [rsi+1]
	mov	r9d, ecx
	sub	r9d, eax
	bt	edx, r9d
	jc	.L1546
	lea	eax, [rsi+2]
	cmp	edi, 2
	je	.L1559
	mov	r10d, ecx
	sub	r10d, eax
	bt	edx, r10d
	jc	.L1546
	lea	eax, [rsi+3]
	cmp	edi, 3
	je	.L1559
	mov	r11d, ecx
	sub	r11d, eax
	bt	edx, r11d
	jc	.L1546
	lea	eax, [rsi+4]
	cmp	edi, 4
	je	.L1559
	mov	r8d, ecx
	sub	r8d, eax
	bt	edx, r8d
	jc	.L1546
	lea	eax, [rsi+5]
	cmp	edi, 5
	je	.L1559
	mov	r9d, ecx
	sub	r9d, eax
	bt	edx, r9d
	jc	.L1546
	lea	eax, [rsi+6]
	cmp	edi, 6
	je	.L1559
	mov	r10d, ecx
	sub	r10d, eax
	bt	edx, r10d
	jc	.L1546
	lea	eax, [rsi+7]
	cmp	edi, 7
	je	.L1559
	sub	ecx, eax
	mov	edi, 16
	bt	edx, ecx
	cmovnc	eax, edi
	vzeroupper
	ret
.L1553:
	vmovdqa	ymm15, YMMWORD PTR .LC11[rip]
	vmovdqa	ymm0, YMMWORD PTR .LC8[rip]
	jmp	.L1547
.L1565:
	mov	eax, esi
	jmp	.L1546
	.cfi_endproc
.LFE116:
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117:
	.cfi_startproc
	movzx	edi, di
	vmovdqa	ymm2, YMMWORD PTR .LC10[rip]
	mov	eax, 1
	vpxor	xmm4, xmm4, xmm4
	vmovd	xmm0, edi
	vmovd	xmm3, eax
	vpbroadcastd	ymm5, xmm0
	vpbroadcastd	ymm6, xmm3
	vpsravd	ymm1, ymm5, ymm2
	vpand	ymm7, ymm1, ymm6
	vpcmpeqd	ymm8, ymm7, ymm4
	vpcmpeqd	ymm9, ymm8, ymm4
	vptest	ymm9, ymm9
	jne	.L1572
	vmovdqa	ymm2, YMMWORD PTR .LC8[rip]
	vpsravd	ymm10, ymm5, ymm2
	vpand	ymm11, ymm10, ymm6
	vpcmpeqd	ymm12, ymm11, ymm4
	vpcmpeqd	ymm13, ymm12, ymm4
	vptest	ymm13, ymm13
	jne	.L1573
.L1579:
	mov	eax, 16
.L1566:
	vzeroupper
	ret
.L1572:
	vmovdqa	ymm14, YMMWORD PTR .LC5[rip]
.L1567:
	vmovd	edx, xmm2
	vmovd	ecx, xmm14
	bt	edi, edx
	jc	.L1585
	lea	eax, [rdx+1]
	bt	edi, eax
	jc	.L1566
	lea	eax, [rdx+2]
	cmp	ecx, 2
	je	.L1579
	bt	edi, eax
	jc	.L1566
	lea	eax, [rdx+3]
	cmp	ecx, 3
	je	.L1579
	bt	edi, eax
	jc	.L1566
	lea	eax, [rdx+4]
	cmp	ecx, 4
	je	.L1579
	bt	edi, eax
	jc	.L1566
	lea	eax, [rdx+5]
	cmp	ecx, 5
	je	.L1579
	bt	edi, eax
	jc	.L1566
	lea	eax, [rdx+6]
	cmp	ecx, 6
	je	.L1579
	bt	edi, eax
	jc	.L1566
	lea	eax, [rdx+7]
	cmp	ecx, 7
	je	.L1579
	bt	edi, eax
	mov	esi, 16
	cmovnc	eax, esi
	vzeroupper
	ret
.L1573:
	vmovdqa	ymm14, YMMWORD PTR .LC11[rip]
	jmp	.L1567
.L1585:
	mov	eax, edx
	jmp	.L1566
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.p2align 4
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
	vcomiss	xmm0, DWORD PTR .LC30[rip]
	jnb	.L1592
	vcvttss2si	rax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L1592:
	vsubss	xmm0, xmm0, DWORD PTR .LC30[rip]
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
	movzx	edi, di
	vmovdqa	ymm1, YMMWORD PTR .LC10[rip]
	mov	eax, 1
	vmovdqa	ymm7, YMMWORD PTR .LC8[rip]
	vmovd	xmm0, edi
	vmovd	xmm2, eax
	vpbroadcastd	ymm4, xmm0
	vpbroadcastd	ymm5, xmm2
	vpsravd	ymm3, ymm4, ymm1
	vpsravd	ymm8, ymm4, ymm7
	vpand	ymm6, ymm3, ymm5
	vpand	ymm9, ymm8, ymm5
	vpaddd	ymm10, ymm6, ymm9
	vextracti128	xmm11, ymm10, 0x1
	vpaddd	xmm12, xmm11, xmm10
	vpsrldq	xmm13, xmm12, 8
	vpaddd	xmm14, xmm12, xmm13
	vpsrldq	xmm15, xmm14, 4
	vpaddd	xmm0, xmm14, xmm15
	vmovd	eax, xmm0
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
	movzx	edi, di
	vmovdqa	ymm1, YMMWORD PTR .LC10[rip]
	mov	eax, 1
	vmovdqa	ymm7, YMMWORD PTR .LC8[rip]
	vmovd	xmm0, edi
	vmovd	xmm2, eax
	vpbroadcastd	ymm4, xmm0
	vpbroadcastd	ymm5, xmm2
	vpsravd	ymm3, ymm4, ymm1
	vpsravd	ymm8, ymm4, ymm7
	vpand	ymm6, ymm3, ymm5
	vpand	ymm9, ymm8, ymm5
	vpaddd	ymm10, ymm6, ymm9
	vextracti128	xmm11, ymm10, 0x1
	vpaddd	xmm12, xmm11, xmm10
	vpsrldq	xmm13, xmm12, 8
	vpaddd	xmm14, xmm12, xmm13
	vpsrldq	xmm15, xmm14, 4
	vpaddd	xmm0, xmm14, xmm15
	vmovd	eax, xmm0
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
	je	.L1595
	.p2align 5
	.p2align 4
	.p2align 3
.L1597:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L1597
.L1595:
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
	je	.L1600
	test	esi, esi
	je	.L1600
	.p2align 5
	.p2align 4
	.p2align 3
.L1602:
	mov	eax, esi
	and	eax, 1
	neg	eax
	and	eax, edi
	add	edi, edi
	add	edx, eax
	shr	esi
	jne	.L1602
.L1600:
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
	jb	.L1608
	jmp	.L1631
	.p2align 4,,10
	.p2align 3
.L1611:
	add	esi, esi
	add	r11d, r11d
	cmp	esi, edi
	jnb	.L1610
	test	r11d, r11d
	je	.L1610
.L1608:
	test	esi, esi
	jns	.L1611
.L1612:
	xor	eax, eax
	xor	r10d, r10d
	.p2align 6
	.p2align 4
	.p2align 3
.L1614:
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
	jne	.L1614
.L1613:
	test	edx, edx
	cmovne	eax, edi
	ret
	.p2align 4,,10
	.p2align 3
.L1610:
	xor	eax, eax
	test	r11d, r11d
	jne	.L1612
	test	edx, edx
	cmovne	eax, edi
	ret
.L1631:
	mov	eax, edi
	sub	eax, esi
	cmp	edi, esi
	setnb	cl
	cmovnb	edi, eax
	movzx	eax, cl
	jmp	.L1613
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
	ja	.L1634
	xor	eax, eax
	vcomiss	xmm0, xmm1
	seta	al
.L1634:
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
	ja	.L1637
	xor	eax, eax
	vcomisd	xmm0, xmm1
	seta	al
.L1637:
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
	js	.L1651
	je	.L1647
	xor	r9d, r9d
.L1644:
	mov	edx, 1
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L1646:
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
	jne	.L1646
	mov	eax, ecx
	neg	eax
	test	r9d, r9d
	cmove	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1651:
	neg	esi
	mov	r9d, 1
	jmp	.L1644
	.p2align 4,,10
	.p2align 3
.L1647:
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
	jns	.L1653
	neg	rdi
	xor	eax, eax
	mov	r10d, 1
.L1653:
	test	rsi, rsi
	jns	.L1654
	neg	rsi
	mov	r10d, eax
.L1654:
	mov	eax, esi
	mov	ecx, edi
	mov	edx, 1
	cmp	esi, edi
	jb	.L1655
	jmp	.L1679
	.p2align 4,,10
	.p2align 3
.L1660:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	.L1666
	test	edx, edx
	je	.L1676
.L1655:
	test	eax, eax
	jns	.L1660
.L1658:
	xor	r11d, r11d
	xor	r9d, r9d
	.p2align 5
	.p2align 4
	.p2align 3
.L1661:
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
	jne	.L1661
.L1659:
	mov	rax, r11
	neg	rax
	test	r10d, r10d
	cmove	rax, r11
	ret
	.p2align 4,,10
	.p2align 3
.L1666:
	test	edx, edx
	jne	.L1658
.L1676:
	xor	r11d, r11d
	mov	rax, r11
	neg	rax
	test	r10d, r10d
	cmove	rax, r11
	ret
.L1679:
	cmp	edi, esi
	setnb	sil
	movzx	r11d, sil
	jmp	.L1659
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
	jns	.L1682
	neg	rdi
	mov	r8d, 1
.L1682:
	mov	rax, rsi
	mov	ecx, edi
	mov	edx, 1
	neg	rax
	cmovns	rsi, rax
	mov	r9d, esi
	cmp	esi, edi
	jb	.L1683
	jmp	.L1706
	.p2align 4,,10
	.p2align 3
.L1688:
	add	r9d, r9d
	add	edx, edx
	cmp	r9d, ecx
	jnb	.L1693
	test	edx, edx
	je	.L1687
.L1683:
	test	r9d, r9d
	jns	.L1688
	.p2align 5
	.p2align 4
	.p2align 3
.L1704:
	mov	esi, ecx
	sub	esi, r9d
	cmp	ecx, r9d
	cmovnb	ecx, esi
	shr	r9d
	shr	edx
	jne	.L1704
.L1687:
	mov	edi, ecx
	mov	rax, rdi
	neg	rax
	test	r8d, r8d
	cmove	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1693:
	test	edx, edx
	jne	.L1704
	jmp	.L1687
.L1706:
	sub	ecx, esi
	cmp	edi, esi
	cmovb	ecx, edi
	jmp	.L1687
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
	jb	.L1709
	jmp	.L1775
	.p2align 4,,10
	.p2align 3
.L1712:
	lea	esi, [rcx+rcx]
	lea	edx, [rdi+rdi]
	cmp	si, ax
	jnb	.L1711
	test	dx, dx
	je	.L1711
	mov	edi, edx
	mov	ecx, esi
.L1709:
	test	cx, cx
	jns	.L1712
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
	je	.L1714
.L1716:
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
	je	.L1714
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
	je	.L1714
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
	je	.L1714
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
	je	.L1714
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
	je	.L1714
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
	je	.L1714
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
	je	.L1714
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
	je	.L1714
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
	je	.L1714
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
	je	.L1714
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
	je	.L1714
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
	je	.L1714
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
	je	.L1714
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
	jns	.L1714
	mov	edi, eax
	sub	edi, ecx
	cmp	ax, cx
	setnb	cl
	cmovnb	eax, edi
	movzx	esi, cl
	or	edx, esi
.L1714:
	test	r9d, r9d
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1711:
	mov	eax, r10d
	test	dx, dx
	je	.L1714
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
	jmp	.L1716
.L1775:
	sub	eax, esi
	cmp	si, r10w
	sete	dl
	cmovne	eax, r10d
	movzx	edx, dl
	jmp	.L1714
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
	jb	.L1777
	jmp	.L1800
	.p2align 4,,10
	.p2align 3
.L1780:
	add	rsi, rsi
	add	r11, r11
	cmp	rsi, rdi
	jnb	.L1779
	test	r11, r11
	je	.L1779
.L1777:
	test	esi, 2147483648
	je	.L1780
.L1781:
	xor	eax, eax
	xor	r10d, r10d
	.p2align 6
	.p2align 4
	.p2align 3
.L1783:
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
	jne	.L1783
.L1782:
	test	edx, edx
	cmovne	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1779:
	xor	eax, eax
	test	r11, r11
	jne	.L1781
	test	edx, edx
	cmovne	rax, rdi
	ret
.L1800:
	mov	rax, rdi
	sub	rax, rsi
	cmp	rdi, rsi
	setnb	cl
	cmovnb	rdi, rax
	movzx	eax, cl
	jmp	.L1782
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
	je	.L1804
	lea	ecx, [rsi-32]
	xor	eax, eax
	sal	edi, cl
.L1805:
	sal	rdi, 32
	or	rax, rdi
.L1803:
	ret
	.p2align 4,,10
	.p2align 3
.L1804:
	mov	rax, rdi
	test	esi, esi
	je	.L1803
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
	jmp	.L1805
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
	je	.L1810
	lea	ecx, [rdx-64]
	xor	eax, eax
	sal	rdi, cl
	mov	rdx, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1810:
	mov	rax, rdi
	test	edx, edx
	je	.L1813
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
.L1813:
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
	je	.L1815
	sar	rdi, 32
	lea	ecx, [rsi-32]
	mov	eax, edi
	sar	edi, cl
	sar	eax, 31
.L1816:
	sal	rax, 32
	or	rax, rdi
.L1814:
	ret
	.p2align 4,,10
	.p2align 3
.L1815:
	mov	rax, rdi
	test	esi, esi
	je	.L1814
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
	jmp	.L1816
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
	je	.L1821
	lea	ecx, [rdx-64]
	mov	r8, rsi
	sar	r8, 63
	sar	rsi, cl
	mov	rdx, r8
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1821:
	test	edx, edx
	je	.L1824
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
.L1824:
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
	jl	.L1829
	mov	eax, 2
	jg	.L1829
	xor	eax, eax
	cmp	edi, esi
	jb	.L1829
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L1829:
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
	jl	.L1835
	mov	eax, 1
	jg	.L1835
	mov	eax, -1
	cmp	edi, esi
	jb	.L1835
	xor	eax, eax
	cmp	esi, edi
	setb	al
.L1835:
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
	jl	.L1840
	mov	eax, 2
	jg	.L1840
	xor	eax, eax
	cmp	rdi, rdx
	jb	.L1840
	xor	eax, eax
	cmp	rdx, rdi
	setb	al
	add	eax, 1
.L1840:
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
	jne	.L1849
	xor	eax, eax
	xor	edx, edx
	rep bsf	rax, rsi
	add	eax, 65
	test	rsi, rsi
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1849:
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
	je	.L1853
	shr	rdi, 32
	lea	ecx, [rsi-32]
	xor	eax, eax
	shr	edi, cl
.L1854:
	sal	rax, 32
	or	rax, rdi
.L1852:
	ret
	.p2align 4,,10
	.p2align 3
.L1853:
	mov	rax, rdi
	test	esi, esi
	je	.L1852
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
	jmp	.L1854
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
	je	.L1859
	lea	ecx, [rdx-64]
	xor	r8d, r8d
	shr	rsi, cl
	mov	rdx, r8
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1859:
	test	edx, edx
	je	.L1862
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
.L1862:
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
	vmovsd	xmm2, QWORD PTR .LC27[rip]
	mov	eax, edi
	vmovapd	xmm1, xmm2
	test	dil, 1
	je	.L1876
	.p2align 4
	.p2align 3
.L1878:
	vmulsd	xmm1, xmm1, xmm0
.L1876:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1877
	vmulsd	xmm0, xmm0, xmm0
	test	al, 1
	jne	.L1878
.L1882:
	vmulsd	xmm0, xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1878
	jmp	.L1882
	.p2align 4,,10
	.p2align 3
.L1877:
	test	edi, edi
	jns	.L1875
	vdivsd	xmm1, xmm2, xmm1
.L1875:
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
	vmovss	xmm2, DWORD PTR .LC31[rip]
	mov	eax, edi
	vmovaps	xmm1, xmm2
	test	dil, 1
	je	.L1884
	.p2align 4
	.p2align 3
.L1886:
	vmulss	xmm1, xmm1, xmm0
.L1884:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1885
	vmulss	xmm0, xmm0, xmm0
	test	al, 1
	jne	.L1886
.L1890:
	vmulss	xmm0, xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1886
	jmp	.L1890
	.p2align 4,,10
	.p2align 3
.L1885:
	test	edi, edi
	jns	.L1883
	vdivss	xmm1, xmm2, xmm1
.L1883:
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
	jb	.L1891
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1891
	xor	eax, eax
	cmp	edi, esi
	jb	.L1891
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L1891:
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
	jb	.L1897
	mov	eax, 1
	cmp	ecx, edx
	jb	.L1897
	mov	eax, -1
	cmp	edi, esi
	jb	.L1897
	xor	eax, eax
	cmp	esi, edi
	setb	al
.L1897:
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
	jb	.L1902
	mov	eax, 2
	cmp	rcx, rsi
	jb	.L1902
	xor	eax, eax
	cmp	rdi, rdx
	jb	.L1902
	xor	eax, eax
	cmp	rdx, rdi
	setb	al
	add	eax, 1
.L1902:
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
	.section	.rodata.cst32,"aM",@progbits,32
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
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC14:
	.long	-8388609
	.align 4
.LC15:
	.long	2139095039
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC16:
	.long	-1
	.long	-1048577
	.align 8
.LC17:
	.long	-1
	.long	2146435071
	.section	.rodata.cst16,"aM",@progbits,16
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
	.section	.rodata.cst4
	.align 4
.LC21:
	.long	1056964608
	.section	.rodata.cst8
	.align 8
.LC22:
	.long	0
	.long	1073741824
	.align 8
.LC23:
	.long	0
	.long	1071644672
	.section	.rodata.cst16
	.align 16
.LC24:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
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
	.section	.rodata.cst32
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
	.section	.rodata.cst4
	.align 4
.LC30:
	.long	1191182336
	.align 4
.LC31:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
