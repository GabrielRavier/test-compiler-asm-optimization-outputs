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
	xor	r11d, r11d
	vmovdqa	ymm1, YMMWORD PTR .LC0[rip]
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
	vmovsd	xmm0, xmm1, xmm1
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
	vmovss	xmm0, xmm1, xmm1
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
	vmovsd	xmm1, xmm0, xmm0
.L304:
	vmovsd	xmm0, xmm1, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L306:
	vmaxsd	xmm1, xmm1, xmm0
	vmovsd	xmm0, xmm1, xmm1
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
	vmovss	xmm1, xmm0, xmm0
.L313:
	vmovss	xmm0, xmm1, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L315:
	vmaxss	xmm1, xmm1, xmm0
	vmovss	xmm0, xmm1, xmm1
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
	vmovsd	xmm0, xmm1, xmm1
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
	vmovss	xmm0, xmm1, xmm1
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
	je	.L384
	mov	r13, r8
	mov	r12, rsi
	xor	r15d, r15d
	jmp	.L386
	.p2align 4,,10
	.p2align 3
.L399:
	add	r15, 1
	add	r12, rbx
	cmp	rbp, r15
	je	.L384
.L386:
	mov	rdi, QWORD PTR [rsp+8]
	mov	r14, r12
	mov	rsi, r12
	call	r13
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
	lea	rax, [rbp+1]
	mov	rcx, QWORD PTR [rsp+16]
	mov	r14, QWORD PTR [rsp+24]
	imul	rbp, rbx
	mov	QWORD PTR [rcx], rax
	add	r14, rbp
	test	rbx, rbx
	je	.L383
	mov	rsi, QWORD PTR [rsp+8]
	mov	rdx, rbx
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
	mov	rcx, rsi
	mov	rax, rdi
	mov	rsi, rdx
	cmp	rdi, rcx
	je	.L653
	lea	r11, [0+rdx*4]
	lea	rdi, [rdx-1]
	mov	rdx, rax
	sub	rdx, rcx
	cmp	rdx, r11
	jnb	.L710
	test	rsi, rsi
	je	.L653
	cmp	rdi, 6
	jbe	.L692
	mov	r8, rax
	sub	r8, rcx
	add	r8, 60
	cmp	r8, 56
	jbe	.L692
	cmp	rdi, 14
	jbe	.L632
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
.L616:
	vmovdqu32	zmm2, ZMMWORD PTR [r10+rdx]
	vmovdqu32	ZMMWORD PTR [r9+rdx], zmm2
	sub	rdx, 64
	cmp	rdx, r8
	jne	.L616
	mov	r9, rsi
	and	r9, -16
	sub	rdi, r9
	test	sil, 15
	je	.L709
	sub	rsi, r9
	lea	r10, [rsi-1]
	cmp	r10, 6
	jbe	.L619
.L615:
	neg	r9
	lea	r11, [r11-32+r9*4]
	mov	r9, rsi
	and	r9, -8
	vmovdqu	ymm3, YMMWORD PTR [rcx+r11]
	sub	rdi, r9
	and	esi, 7
	vmovdqu	YMMWORD PTR [rax+r11], ymm3
	je	.L709
.L619:
	mov	esi, DWORD PTR [rcx+rdi*4]
	lea	r10, [rdi-1]
	mov	DWORD PTR [rax+rdi*4], esi
	test	rdi, rdi
	je	.L709
	mov	r8d, DWORD PTR [rcx+r10*4]
	lea	rdx, [0+r10*4]
	mov	DWORD PTR [rax+r10*4], r8d
	test	r10, r10
	je	.L709
	mov	r11d, DWORD PTR [rcx-4+rdx]
	mov	DWORD PTR [rax-4+rdx], r11d
	cmp	rdi, 2
	je	.L709
	mov	r9d, DWORD PTR [rcx-8+rdx]
	mov	DWORD PTR [rax-8+rdx], r9d
	cmp	rdi, 3
	je	.L709
	mov	esi, DWORD PTR [rcx-12+rdx]
	mov	DWORD PTR [rax-12+rdx], esi
	cmp	rdi, 4
	je	.L709
	mov	r10d, DWORD PTR [rcx-16+rdx]
	mov	DWORD PTR [rax-16+rdx], r10d
	cmp	rdi, 5
	je	.L709
	mov	ecx, DWORD PTR [rcx-20+rdx]
	mov	DWORD PTR [rax-20+rdx], ecx
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L710:
	test	rsi, rsi
	je	.L711
	cmp	rdi, 6
	jbe	.L634
	lea	r8, [rcx+4]
	mov	r9, rax
	sub	r9, r8
	cmp	r9, 56
	jbe	.L634
	cmp	rdi, 14
	jbe	.L635
	mov	r10, rsi
	xor	r9d, r9d
	xor	r11d, r11d
	shr	r10, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L625:
	vmovdqu32	zmm0, ZMMWORD PTR [rcx+r9]
	add	r11, 1
	vmovdqu32	ZMMWORD PTR [rax+r9], zmm0
	add	r9, 64
	cmp	r10, r11
	jne	.L625
	mov	r8, rsi
	and	r8, -16
	lea	rdx, [0+r8*4]
	sub	rdi, r8
	lea	r11, [rcx+rdx]
	add	rdx, rax
	test	sil, 15
	je	.L709
	sub	rsi, r8
	lea	r10, [rsi-1]
	cmp	r10, 6
	jbe	.L628
.L624:
	vmovdqu	ymm1, YMMWORD PTR [rcx+r8*4]
	mov	rcx, rsi
	and	rcx, -8
	sub	rdi, rcx
	sal	rcx, 2
	vmovdqu	YMMWORD PTR [rax+r8*4], ymm1
	add	r11, rcx
	add	rdx, rcx
	and	esi, 7
	je	.L709
.L628:
	mov	esi, DWORD PTR [r11]
	mov	DWORD PTR [rdx], esi
	test	rdi, rdi
	je	.L709
	mov	r8d, DWORD PTR [r11+4]
	mov	DWORD PTR [rdx+4], r8d
	cmp	rdi, 1
	jne	.L712
	.p2align 4
	.p2align 3
.L709:
	vzeroupper
.L653:
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L692:
	mov	edx, DWORD PTR [rcx+rdi*4]
	mov	DWORD PTR [rax+rdi*4], edx
	sub	rdi, 1
	jnb	.L692
	ret
	.p2align 4,,10
	.p2align 3
.L712:
	mov	r9d, DWORD PTR [r11+8]
	mov	DWORD PTR [rdx+8], r9d
	cmp	rdi, 2
	je	.L709
	mov	r10d, DWORD PTR [r11+12]
	mov	DWORD PTR [rdx+12], r10d
	cmp	rdi, 3
	je	.L709
	mov	ecx, DWORD PTR [r11+16]
	mov	DWORD PTR [rdx+16], ecx
	cmp	rdi, 4
	je	.L709
	mov	esi, DWORD PTR [r11+20]
	mov	DWORD PTR [rdx+20], esi
	cmp	rdi, 5
	je	.L709
	mov	edi, DWORD PTR [r11+24]
	mov	DWORD PTR [rdx+24], edi
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L634:
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L693:
	mov	r11d, DWORD PTR [rcx+rdx*4]
	mov	DWORD PTR [rax+rdx*4], r11d
	add	rdx, 1
	cmp	rsi, rdx
	jne	.L693
	ret
	.p2align 4,,10
	.p2align 3
.L711:
	ret
.L635:
	mov	r11, rcx
	mov	rdx, rax
	xor	r8d, r8d
	jmp	.L624
.L632:
	xor	r9d, r9d
	jmp	.L615
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
	je	.L714
	cmp	r8, 14
	jbe	.L720
	mov	r9, rdx
	vpbroadcastd	zmm0, esi
	xor	eax, eax
	shr	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L716:
	mov	r10, rax
	add	rax, 1
	sal	r10, 6
	vmovdqu32	ZMMWORD PTR [rdi+r10], zmm0
	cmp	r9, rax
	jne	.L716
	mov	rcx, rdx
	and	rcx, -16
	sub	r8, rcx
	lea	r9, [rdi+rcx*4]
	test	dl, 15
	je	.L755
.L715:
	sub	rdx, rcx
	lea	r11, [rdx-1]
	cmp	r11, 6
	jbe	.L718
	vmovd	xmm1, esi
	vpbroadcastd	ymm2, xmm1
	vmovdqu	YMMWORD PTR [rdi+rcx*4], ymm2
	mov	rcx, rdx
	and	rcx, -8
	sub	r8, rcx
	and	edx, 7
	lea	r9, [r9+rcx*4]
	je	.L755
.L718:
	mov	DWORD PTR [r9], esi
	test	r8, r8
	je	.L755
	mov	DWORD PTR [r9+4], esi
	cmp	r8, 1
	je	.L755
	mov	DWORD PTR [r9+8], esi
	cmp	r8, 2
	je	.L755
	mov	DWORD PTR [r9+12], esi
	cmp	r8, 3
	je	.L755
	mov	DWORD PTR [r9+16], esi
	cmp	r8, 4
	je	.L755
	mov	DWORD PTR [r9+20], esi
	cmp	r8, 5
	je	.L755
	mov	DWORD PTR [r9+24], esi
	mov	rax, rdi
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L755:
	vzeroupper
.L714:
	mov	rax, rdi
	ret
.L720:
	mov	r9, rdi
	xor	ecx, ecx
	jmp	.L715
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
	jnb	.L757
	test	rdx, rdx
	je	.L889
	lea	r11, [rdx-1]
	cmp	r11, 14
	jbe	.L884
	lea	r9, [rdi-2+rdx]
	mov	r10, rsi
	sub	r10, r9
	lea	rdi, [r10+30+r11]
	cmp	rdi, 30
	jbe	.L884
	lea	r10, [rcx+rdx]
	lea	r9, [rsi+rdx]
	cmp	r11, 30
	jbe	.L776
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
.L761:
	vmovdqu	ymm2, YMMWORD PTR [r11+rax]
	vmovdqu	YMMWORD PTR [r8+rax], ymm2
	sub	rax, 32
	cmp	rdi, rax
	jne	.L761
	mov	r8, rdx
	add	r9, rdi
	add	r10, rdi
	and	r8d, 31
	and	edx, 31
	je	.L887
	lea	r11, [r8-1]
	mov	rdx, r8
	cmp	r11, 14
	jbe	.L891
	vzeroupper
.L760:
	vmovdqu	xmm3, XMMWORD PTR [rcx-16+rdx]
	vmovdqu	XMMWORD PTR [rsi-16+rdx], xmm3
	mov	rsi, rdx
	and	rsi, -16
	sub	r9, rsi
	sub	r10, rsi
	sub	r8, rsi
	and	edx, 15
	je	.L889
.L763:
	movzx	edx, BYTE PTR [r10-1]
	mov	BYTE PTR [r9-1], dl
	cmp	r8, 1
	je	.L889
	movzx	ecx, BYTE PTR [r10-2]
	mov	BYTE PTR [r9-2], cl
	cmp	r8, 2
	je	.L889
	movzx	edi, BYTE PTR [r10-3]
	mov	BYTE PTR [r9-3], dil
	cmp	r8, 3
	je	.L889
	movzx	eax, BYTE PTR [r10-4]
	mov	BYTE PTR [r9-4], al
	cmp	r8, 4
	je	.L889
	movzx	r11d, BYTE PTR [r10-5]
	mov	BYTE PTR [r9-5], r11b
	cmp	r8, 5
	je	.L889
	movzx	esi, BYTE PTR [r10-6]
	mov	BYTE PTR [r9-6], sil
	cmp	r8, 6
	je	.L889
	movzx	edx, BYTE PTR [r10-7]
	mov	BYTE PTR [r9-7], dl
	cmp	r8, 7
	je	.L889
	movzx	ecx, BYTE PTR [r10-8]
	mov	BYTE PTR [r9-8], cl
	cmp	r8, 8
	je	.L889
	movzx	edi, BYTE PTR [r10-9]
	mov	BYTE PTR [r9-9], dil
	cmp	r8, 9
	je	.L889
	movzx	eax, BYTE PTR [r10-10]
	mov	BYTE PTR [r9-10], al
	cmp	r8, 10
	je	.L889
	movzx	r11d, BYTE PTR [r10-11]
	mov	BYTE PTR [r9-11], r11b
	cmp	r8, 11
	je	.L889
	movzx	esi, BYTE PTR [r10-12]
	mov	BYTE PTR [r9-12], sil
	cmp	r8, 12
	je	.L889
	movzx	edx, BYTE PTR [r10-13]
	mov	BYTE PTR [r9-13], dl
	cmp	r8, 13
	je	.L889
	movzx	ecx, BYTE PTR [r10-14]
	mov	BYTE PTR [r9-14], cl
	cmp	r8, 14
	je	.L889
	movzx	r10d, BYTE PTR [r10-15]
	mov	BYTE PTR [r9-15], r10b
	ret
	.p2align 4,,10
	.p2align 3
.L757:
	jne	.L892
.L889:
	ret
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L893:
	sub	r11, 1
.L884:
	movzx	r9d, BYTE PTR [rcx-1+rdx]
	mov	BYTE PTR [rsi-1+rdx], r9b
	mov	rdx, r11
	test	r11, r11
	jne	.L893
	ret
	.p2align 4,,10
	.p2align 3
.L892:
	test	rdx, rdx
	je	.L889
	lea	rax, [rdx-1]
	cmp	rax, 14
	jbe	.L778
	lea	r8, [rdi+1]
	mov	rdi, rsi
	sub	rdi, r8
	cmp	rdi, 30
	jbe	.L778
	cmp	rax, 30
	jbe	.L779
	mov	r11, rdx
	xor	r9d, r9d
	and	r11, -32
	.p2align 5
	.p2align 4
	.p2align 3
.L769:
	vmovdqu	ymm0, YMMWORD PTR [rcx+r9]
	vmovdqu	YMMWORD PTR [rsi+r9], ymm0
	add	r9, 32
	cmp	r11, r9
	jne	.L769
	mov	rax, rdx
	lea	r8, [rsi+r11]
	lea	rdi, [rcx+r11]
	sub	rax, r11
	cmp	rdx, r11
	je	.L887
	lea	r10, [rax-1]
	mov	rdx, rax
	cmp	r10, 14
	jbe	.L894
	vzeroupper
.L768:
	vmovdqu	xmm1, XMMWORD PTR [rcx+r11]
	vmovdqu	XMMWORD PTR [rsi+r11], xmm1
	mov	rsi, rdx
	and	rsi, -16
	add	r8, rsi
	add	rdi, rsi
	sub	rax, rsi
	and	edx, 15
	je	.L889
.L772:
	movzx	edx, BYTE PTR [rdi]
	mov	BYTE PTR [r8], dl
	cmp	rax, 1
	je	.L889
	movzx	ecx, BYTE PTR [rdi+1]
	mov	BYTE PTR [r8+1], cl
	cmp	rax, 2
	je	.L889
	movzx	r11d, BYTE PTR [rdi+2]
	mov	BYTE PTR [r8+2], r11b
	cmp	rax, 3
	je	.L889
	movzx	r9d, BYTE PTR [rdi+3]
	mov	BYTE PTR [r8+3], r9b
	cmp	rax, 4
	je	.L889
	movzx	r10d, BYTE PTR [rdi+4]
	mov	BYTE PTR [r8+4], r10b
	cmp	rax, 5
	je	.L889
	movzx	esi, BYTE PTR [rdi+5]
	mov	BYTE PTR [r8+5], sil
	cmp	rax, 6
	je	.L889
	movzx	edx, BYTE PTR [rdi+6]
	mov	BYTE PTR [r8+6], dl
	cmp	rax, 7
	je	.L889
	movzx	ecx, BYTE PTR [rdi+7]
	mov	BYTE PTR [r8+7], cl
	cmp	rax, 8
	je	.L889
	movzx	r11d, BYTE PTR [rdi+8]
	mov	BYTE PTR [r8+8], r11b
	cmp	rax, 9
	je	.L889
	movzx	r9d, BYTE PTR [rdi+9]
	mov	BYTE PTR [r8+9], r9b
	cmp	rax, 10
	je	.L889
	movzx	r10d, BYTE PTR [rdi+10]
	mov	BYTE PTR [r8+10], r10b
	cmp	rax, 11
	je	.L889
	movzx	esi, BYTE PTR [rdi+11]
	mov	BYTE PTR [r8+11], sil
	cmp	rax, 12
	je	.L889
	movzx	edx, BYTE PTR [rdi+12]
	mov	BYTE PTR [r8+12], dl
	cmp	rax, 13
	je	.L889
	movzx	ecx, BYTE PTR [rdi+13]
	mov	BYTE PTR [r8+13], cl
	cmp	rax, 14
	je	.L889
	movzx	edi, BYTE PTR [rdi+14]
	mov	BYTE PTR [r8+14], dil
	ret
	.p2align 4,,10
	.p2align 3
.L778:
	xor	r8d, r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L883:
	movzx	eax, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rsi+r8], al
	add	r8, 1
	cmp	rdx, r8
	jne	.L883
	ret
.L894:
	vzeroupper
	jmp	.L772
.L776:
	mov	r8, rdx
	jmp	.L760
.L891:
	vzeroupper
	jmp	.L763
.L779:
	mov	r8, rsi
	mov	rdi, rcx
	mov	rax, rdx
	xor	r11d, r11d
	jmp	.L768
.L887:
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
	jne	.L915
	vmovdqa32	zmm2, ZMMWORD PTR .LC8[rip]
	vpsrlvd	zmm6, zmm0, zmm2
	vpandd	zmm7, zmm6, zmm1
	vpcmpd	k1, zmm7, zmm4, 4
	kortestw	k1, k1
	jne	.L916
.L929:
	xor	edx, edx
.L908:
	mov	eax, edx
	vzeroupper
	ret
.L916:
	vmovdqa32	zmm8, ZMMWORD PTR .LC7[rip]
.L909:
	vmovd	r8d, xmm2
	vmovd	edx, xmm8
	bt	esi, r8d
	lea	ecx, [r8+1]
	jc	.L911
	mov	edi, esi
	shr	edi, cl
	lea	ecx, [r8+2]
	and	edi, 1
	jne	.L911
	cmp	edx, 2
	je	.L929
	mov	r9d, esi
	shr	r9d, cl
	lea	ecx, [r8+3]
	and	r9d, 1
	jne	.L911
	cmp	edx, 3
	je	.L929
	mov	r10d, esi
	shr	r10d, cl
	lea	ecx, [r8+4]
	and	r10d, 1
	jne	.L911
	cmp	edx, 4
	je	.L929
	mov	r11d, esi
	shr	r11d, cl
	lea	ecx, [r8+5]
	and	r11d, 1
	jne	.L911
	cmp	edx, 5
	je	.L929
	mov	eax, esi
	shr	eax, cl
	lea	ecx, [r8+6]
	and	eax, 1
	jne	.L911
	cmp	edx, 6
	je	.L929
	mov	edi, esi
	shr	edi, cl
	lea	ecx, [r8+7]
	and	edi, 1
	jne	.L911
	cmp	edx, 7
	je	.L929
	mov	r9d, esi
	shr	r9d, cl
	lea	ecx, [r8+8]
	and	r9d, 1
	jne	.L911
	cmp	edx, 8
	je	.L929
	mov	r10d, esi
	shr	r10d, cl
	lea	ecx, [r8+9]
	and	r10d, 1
	jne	.L911
	cmp	edx, 9
	je	.L929
	mov	r11d, esi
	shr	r11d, cl
	lea	ecx, [r8+10]
	and	r11d, 1
	jne	.L911
	cmp	edx, 10
	je	.L929
	mov	eax, esi
	shr	eax, cl
	lea	ecx, [r8+11]
	and	eax, 1
	jne	.L911
	cmp	edx, 11
	je	.L929
	mov	edi, esi
	shr	edi, cl
	lea	ecx, [r8+12]
	and	edi, 1
	jne	.L911
	cmp	edx, 12
	je	.L929
	mov	r9d, esi
	shr	r9d, cl
	lea	ecx, [r8+13]
	and	r9d, 1
	jne	.L911
	cmp	edx, 13
	je	.L929
	mov	r10d, esi
	shr	r10d, cl
	lea	ecx, [r8+14]
	and	r10d, 1
	jne	.L911
	cmp	edx, 14
	je	.L929
	mov	r11d, esi
	shr	r11d, cl
	lea	ecx, [r8+15]
	and	r11d, 1
	jne	.L911
	cmp	edx, 15
	mov	edx, 0
	je	.L908
	bt	esi, ecx
	jnc	.L908
	lea	ecx, [r8+16]
.L911:
	mov	edx, ecx
	mov	eax, edx
	vzeroupper
	ret
.L915:
	vmovdqa32	zmm8, ZMMWORD PTR .LC5[rip]
	jmp	.L909
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
	je	.L934
	mov	eax, edi
	and	eax, 1
	jne	.L934
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L936:
	sar	edi
	add	eax, 1
	test	dil, 1
	je	.L936
.L934:
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
	ja	.L941
	xor	eax, eax
	vcomiss	xmm0, DWORD PTR .LC11[rip]
	seta	al
.L941:
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
	ja	.L944
	xor	eax, eax
	vcomisd	xmm0, QWORD PTR .LC13[rip]
	seta	al
.L944:
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
	ja	.L950
	fld	TBYTE PTR .LC15[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L947
	.p2align 4,,10
	.p2align 3
.L950:
	fstp	st(0)
.L947:
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
	jp	.L953
	vaddss	xmm1, xmm0, xmm0
	vucomiss	xmm1, xmm0
	jp	.L960
	jne	.L960
.L953:
	ret
	.p2align 4,,10
	.p2align 3
.L960:
	vmovss	xmm2, DWORD PTR .LC16[rip]
	test	edi, edi
	jns	.L955
	vmovss	xmm2, DWORD PTR .LC17[rip]
.L955:
	test	dil, 1
	je	.L956
	.p2align 4
	.p2align 3
.L957:
	vmulss	xmm0, xmm0, xmm2
.L956:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L953
	vmulss	xmm2, xmm2, xmm2
	test	dil, 1
	jne	.L957
.L967:
	vmulss	xmm2, xmm2, xmm2
	mov	edx, edi
	shr	edx, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L957
	jmp	.L967
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
	jp	.L969
	vaddsd	xmm1, xmm0, xmm0
	vucomisd	xmm1, xmm0
	jp	.L976
	jne	.L976
.L969:
	ret
	.p2align 4,,10
	.p2align 3
.L976:
	vmovsd	xmm2, QWORD PTR .LC18[rip]
	test	edi, edi
	jns	.L971
	vmovsd	xmm2, QWORD PTR .LC19[rip]
.L971:
	test	dil, 1
	je	.L972
	.p2align 4
	.p2align 3
.L973:
	vmulsd	xmm0, xmm0, xmm2
.L972:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L969
	vmulsd	xmm2, xmm2, xmm2
	test	dil, 1
	jne	.L973
.L983:
	vmulsd	xmm2, xmm2, xmm2
	mov	edx, edi
	shr	edx, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L973
	jmp	.L983
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
	jp	.L985
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L992
	jne	.L992
	jmp	.L985
	.p2align 4,,10
	.p2align 3
.L1001:
	fstp	st(0)
.L985:
	ret
	.p2align 4,,10
	.p2align 3
.L992:
	test	edi, edi
	js	.L999
	fld	DWORD PTR .LC16[rip]
.L987:
	test	dil, 1
	je	.L988
	.p2align 4
	.p2align 3
.L989:
	fmul	st(1), st
.L988:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L1001
	fmul	st, st(0)
	test	dil, 1
	jne	.L989
.L1000:
	mov	edx, edi
	fmul	st, st(0)
	shr	edx, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L989
	jmp	.L1000
	.p2align 4,,10
	.p2align 3
.L999:
	fld	DWORD PTR .LC17[rip]
	jmp	.L987
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
	je	.L1003
	lea	rax, [rdx-1]
	cmp	rax, 30
	jbe	.L1009
	mov	rdi, rdx
	xor	r8d, r8d
	and	rdi, -32
	.p2align 5
	.p2align 4
	.p2align 3
.L1005:
	vmovdqu	ymm0, YMMWORD PTR [rcx+r8]
	vpxor	ymm1, ymm0, YMMWORD PTR [rsi+r8]
	vmovdqu	YMMWORD PTR [rcx+r8], ymm1
	add	r8, 32
	cmp	r8, rdi
	jne	.L1005
	mov	r9, rdx
	lea	r11, [rcx+rdi]
	lea	rax, [rsi+rdi]
	sub	r9, rdi
	cmp	rdx, rdi
	je	.L1060
	vzeroupper
.L1004:
	sub	rdx, rdi
	lea	r10, [rdx-1]
	cmp	r10, 14
	jbe	.L1007
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
	je	.L1003
.L1007:
	movzx	edx, BYTE PTR [rax]
	xor	BYTE PTR [r11], dl
	cmp	r9, 1
	je	.L1003
	movzx	edi, BYTE PTR [rax+1]
	xor	BYTE PTR [r11+1], dil
	cmp	r9, 2
	je	.L1003
	movzx	r10d, BYTE PTR [rax+2]
	xor	BYTE PTR [r11+2], r10b
	cmp	r9, 3
	je	.L1003
	movzx	r8d, BYTE PTR [rax+3]
	xor	BYTE PTR [r11+3], r8b
	cmp	r9, 4
	je	.L1003
	movzx	esi, BYTE PTR [rax+4]
	xor	BYTE PTR [r11+4], sil
	cmp	r9, 5
	je	.L1003
	movzx	edx, BYTE PTR [rax+5]
	xor	BYTE PTR [r11+5], dl
	cmp	r9, 6
	je	.L1003
	movzx	edi, BYTE PTR [rax+6]
	xor	BYTE PTR [r11+6], dil
	cmp	r9, 7
	je	.L1003
	movzx	r10d, BYTE PTR [rax+7]
	xor	BYTE PTR [r11+7], r10b
	cmp	r9, 8
	je	.L1003
	movzx	r8d, BYTE PTR [rax+8]
	xor	BYTE PTR [r11+8], r8b
	cmp	r9, 9
	je	.L1003
	movzx	esi, BYTE PTR [rax+9]
	xor	BYTE PTR [r11+9], sil
	cmp	r9, 10
	je	.L1003
	movzx	edx, BYTE PTR [rax+10]
	xor	BYTE PTR [r11+10], dl
	cmp	r9, 11
	je	.L1003
	movzx	edi, BYTE PTR [rax+11]
	xor	BYTE PTR [r11+11], dil
	cmp	r9, 12
	je	.L1003
	movzx	r10d, BYTE PTR [rax+12]
	xor	BYTE PTR [r11+12], r10b
	cmp	r9, 13
	je	.L1003
	movzx	r8d, BYTE PTR [rax+13]
	xor	BYTE PTR [r11+13], r8b
	cmp	r9, 14
	je	.L1003
	movzx	eax, BYTE PTR [rax+14]
	xor	BYTE PTR [r11+14], al
.L1003:
	mov	rax, rcx
	ret
.L1009:
	mov	r11, rdi
	mov	rax, rsi
	mov	r9, rdx
	xor	edi, edi
	jmp	.L1004
.L1060:
	vzeroupper
	jmp	.L1003
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
	je	.L1062
	.p2align 4
	.p2align 4
	.p2align 3
.L1063:
	add	rcx, 1
	cmp	BYTE PTR [rcx], 0
	jne	.L1063
.L1062:
	test	rdx, rdx
	jne	.L1064
	jmp	.L1065
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1066:
	add	rsi, 1
	add	rcx, 1
	sub	rdx, 1
	je	.L1065
.L1064:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rcx], r8b
	test	r8b, r8b
	jne	.L1066
	ret
	.p2align 4,,10
	.p2align 3
.L1065:
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
	je	.L1075
.L1076:
	cmp	BYTE PTR [rdi+rax], 0
	jne	.L1078
.L1075:
	ret
	.p2align 4,,10
	.p2align 3
.L1078:
	add	rax, 1
	cmp	rsi, rax
	jne	.L1076
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
	je	.L1089
.L1085:
	mov	rdx, rsi
	jmp	.L1088
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1087:
	add	rdx, 1
	cmp	cl, r8b
	je	.L1086
.L1088:
	movzx	ecx, BYTE PTR [rdx]
	test	cl, cl
	jne	.L1087
	movzx	r8d, BYTE PTR [rax+1]
	add	rax, 1
	test	r8b, r8b
	jne	.L1085
.L1089:
	xor	eax, eax
.L1086:
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
.L1094:
	movsx	ecx, BYTE PTR [rdi]
	cmp	ecx, esi
	cmove	rdx, rdi
	add	rdi, 1
	test	cl, cl
	jne	.L1094
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
	je	.L1108
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L1098:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L1098
	mov	r9, rdx
	sub	rax, rsi
	je	.L1096
	lea	r11, [rsi-1+rax]
	jmp	.L1118
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1120:
	add	rdx, 1
	test	cl, cl
	je	.L1119
.L1118:
	movzx	ecx, BYTE PTR [rdx]
	cmp	cl, r10b
	jne	.L1120
	mov	ecx, r10d
	mov	rax, rsi
	mov	r8, rdx
	jmp	.L1100
	.p2align 4,,10
	.p2align 3
.L1121:
	test	dil, dil
	setne	r9b
	cmp	dil, cl
	sete	dil
	test	r9b, dil
	je	.L1101
	movzx	ecx, BYTE PTR [r8+1]
	add	r8, 1
	add	rax, 1
	test	cl, cl
	je	.L1101
.L1100:
	movzx	edi, BYTE PTR [rax]
	cmp	rax, r11
	jne	.L1121
.L1101:
	cmp	cl, BYTE PTR [rax]
	je	.L1108
	add	rdx, 1
	jmp	.L1118
	.p2align 4,,10
	.p2align 3
.L1119:
	xor	r9d, r9d
.L1096:
	mov	rax, r9
	ret
.L1108:
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
	ja	.L1132
	vcomisd	xmm0, xmm2
	jbe	.L1126
	vcomisd	xmm2, xmm1
	ja	.L1125
.L1126:
	ret
	.p2align 4,,10
	.p2align 3
.L1132:
	vcomisd	xmm1, xmm2
	jbe	.L1126
.L1125:
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
	je	.L1133
	cmp	rsi, rcx
	jb	.L1144
	sub	rsi, rcx
	add	rsi, rdi
	jc	.L1144
	movzx	r9d, BYTE PTR [rdx]
	jmp	.L1139
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1143:
	mov	rax, rdi
.L1135:
	cmp	rsi, rax
	jb	.L1144
.L1139:
	lea	rdi, [rax+1]
	cmp	BYTE PTR [rax], r9b
	jne	.L1143
	cmp	rcx, 1
	je	.L1133
.L1138:
	mov	r11d, 1
	jmp	.L1136
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1137:
	add	r11, 1
	cmp	r11, rcx
	je	.L1133
.L1136:
	movzx	r10d, BYTE PTR [rdx+r11]
	cmp	BYTE PTR [rax+r11], r10b
	je	.L1137
	cmp	rsi, rdi
	jb	.L1144
	lea	rax, [rdi+1]
	cmp	r9b, BYTE PTR [rdi]
	jne	.L1135
	mov	r8, rdi
	mov	rdi, rax
	mov	rax, r8
	jmp	.L1138
	.p2align 4,,10
	.p2align 3
.L1144:
	xor	eax, eax
.L1133:
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
	je	.L1154
	call	memmove
	mov	rdi, rax
.L1154:
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
	ja	.L1183
	vmovsd	xmm5, QWORD PTR .LC23[rip]
	xor	edx, edx
	vcomisd	xmm0, xmm5
	jb	.L1184
.L1162:
	vmovsd	xmm6, QWORD PTR .LC19[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1169:
	vmulsd	xmm0, xmm0, xmm6
	add	eax, 1
	vcomisd	xmm0, xmm5
	jnb	.L1169
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	je	.L1159
.L1186:
	vxorpd	xmm0, xmm0, XMMWORD PTR .LC20[rip]
.L1159:
	ret
	.p2align 4,,10
	.p2align 3
.L1184:
	vmovsd	xmm1, QWORD PTR .LC19[rip]
	vcomisd	xmm1, xmm0
	jbe	.L1165
	vucomisd	xmm0, xmm2
	jp	.L1175
	jne	.L1175
.L1165:
	mov	DWORD PTR [rdi], 0
	ret
	.p2align 4,,10
	.p2align 3
.L1183:
	vmovsd	xmm4, QWORD PTR .LC21[rip]
	vxorpd	xmm3, xmm0, XMMWORD PTR .LC20[rip]
	vcomisd	xmm4, xmm0
	jb	.L1185
	vmovsd	xmm5, QWORD PTR .LC23[rip]
	vmovsd	xmm0, xmm3, xmm3
	mov	edx, 1
	jmp	.L1162
	.p2align 4,,10
	.p2align 3
.L1185:
	vcomisd	xmm0, QWORD PTR .LC22[rip]
	jbe	.L1165
	vmovsd	xmm1, QWORD PTR .LC19[rip]
	mov	edx, 1
.L1163:
	vmovsd	xmm0, xmm3, xmm3
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1171:
	vaddsd	xmm0, xmm0, xmm0
	sub	eax, 1
	vcomisd	xmm1, xmm0
	ja	.L1171
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	jne	.L1186
	ret
.L1175:
	vmovsd	xmm3, xmm0, xmm0
	xor	edx, edx
	jmp	.L1163
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
	je	.L1187
	.p2align 5
	.p2align 4
	.p2align 3
.L1189:
	mov	rax, rdi
	and	eax, 1
	neg	rax
	and	rax, rsi
	add	rsi, rsi
	add	rdx, rax
	shr	rdi
	jne	.L1189
.L1187:
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
	jb	.L1193
	jmp	.L1216
	.p2align 4,,10
	.p2align 3
.L1196:
	add	esi, esi
	add	r11d, r11d
	cmp	esi, edi
	jnb	.L1195
	test	r11d, r11d
	je	.L1195
.L1193:
	test	esi, esi
	jns	.L1196
.L1197:
	xor	eax, eax
	xor	r10d, r10d
	.p2align 6
	.p2align 4
	.p2align 3
.L1199:
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
	jne	.L1199
.L1198:
	test	rdx, rdx
	cmovne	eax, edi
	ret
	.p2align 4,,10
	.p2align 3
.L1195:
	xor	eax, eax
	test	r11d, r11d
	jne	.L1197
	test	rdx, rdx
	cmovne	eax, edi
	ret
.L1216:
	mov	eax, edi
	sub	eax, esi
	cmp	edi, esi
	setnb	cl
	cmovnb	edi, eax
	movzx	eax, cl
	jmp	.L1198
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
	je	.L1219
	movsx	ecx, al
	sal	ecx, 8
	bsr	esi, ecx
	xor	esi, 31
	lea	r8d, [rsi-1]
.L1219:
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
	je	.L1222
	bsr	rcx, rax
	xor	rcx, 63
	lea	esi, [rcx-1]
.L1222:
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
	je	.L1225
	.p2align 5
	.p2align 4
	.p2align 3
.L1227:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L1227
.L1225:
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
	mov	r9d, edx
	mov	esi, edx
	shr	r9d, 3
	and	esi, -8
	cmp	rdi, rcx
	jb	.L1235
	mov	eax, edx
	add	rax, rcx
	cmp	rax, rdi
	jnb	.L1359
.L1235:
	test	r9d, r9d
	je	.L1360
	lea	eax, [r9-1]
	cmp	eax, 2
	jbe	.L1237
	lea	r11, [rcx+8]
	mov	r8, rdi
	sub	r8, r11
	cmp	r8, 48
	jbe	.L1237
	cmp	eax, 6
	jbe	.L1261
	mov	r10d, edx
	xor	r11d, r11d
	shr	r10d, 6
	mov	r8d, r10d
	sal	r8, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1239:
	vmovdqu64	zmm2, ZMMWORD PTR [rcx+r11]
	vmovdqu64	ZMMWORD PTR [rdi+r11], zmm2
	add	r11, 64
	cmp	r8, r11
	jne	.L1239
	lea	eax, [0+r10*8]
	cmp	r9d, eax
	je	.L1244
	mov	r11d, r9d
	sub	r11d, eax
	lea	r10d, [r11-1]
	cmp	r10d, 2
	jbe	.L1241
.L1238:
	mov	r8d, eax
	mov	r10d, r11d
	and	r10d, -4
	vmovdqu	ymm3, YMMWORD PTR [rcx+r8*8]
	add	eax, r10d
	and	r11d, 3
	vmovdqu	YMMWORD PTR [rdi+r8*8], ymm3
	je	.L1244
.L1241:
	mov	r11d, eax
	mov	r8, QWORD PTR [rcx+r11*8]
	mov	QWORD PTR [rdi+r11*8], r8
	lea	r11d, [rax+1]
	cmp	r11d, r9d
	jnb	.L1244
	mov	r10, QWORD PTR [rcx+r11*8]
	add	eax, 2
	mov	QWORD PTR [rdi+r11*8], r10
	cmp	eax, r9d
	jnb	.L1244
	mov	r9, QWORD PTR [rcx+rax*8]
	mov	QWORD PTR [rdi+rax*8], r9
.L1244:
	cmp	esi, edx
	jnb	.L1350
	mov	r11d, edx
	sub	r11d, esi
	lea	eax, [r11-1]
	cmp	eax, 14
	jbe	.L1361
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	r10d, esi
	lea	r9, [rcx+1+r10]
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	.cfi_offset 3, -24
	lea	rbx, [rdi+r10]
	mov	r8, rbx
	sub	r8, r9
	cmp	r8, 30
	jbe	.L1333
	cmp	eax, 30
	jbe	.L1262
	mov	r8d, r11d
	lea	r9, [rcx+r10]
	xor	eax, eax
	shr	r8d, 5
	sal	r8, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1246:
	vmovdqu	ymm4, YMMWORD PTR [r9+rax]
	vmovdqu	YMMWORD PTR [rbx+rax], ymm4
	add	rax, 32
	cmp	rax, r8
	jne	.L1246
	mov	ebx, r11d
	and	ebx, -32
	add	esi, ebx
	test	r11b, 31
	je	.L1349
	sub	r11d, ebx
	lea	r9d, [r11-1]
	cmp	r9d, 14
	jbe	.L1248
.L1245:
	add	rbx, r10
	mov	r10d, r11d
	and	r10d, -16
	vmovdqu	xmm5, XMMWORD PTR [rcx+rbx]
	add	esi, r10d
	and	r11d, 15
	vmovdqu	XMMWORD PTR [rdi+rbx], xmm5
	je	.L1349
.L1248:
	mov	r11d, esi
	lea	eax, [rsi+1]
	movzx	ebx, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], bl
	cmp	eax, edx
	jnb	.L1349
	movzx	r8d, BYTE PTR [rcx+rax]
	lea	r9d, [rsi+2]
	mov	BYTE PTR [rdi+rax], r8b
	cmp	r9d, edx
	jnb	.L1349
	movzx	r10d, BYTE PTR [rcx+r9]
	lea	r11d, [rsi+3]
	mov	BYTE PTR [rdi+r9], r10b
	cmp	r11d, edx
	jnb	.L1349
	movzx	ebx, BYTE PTR [rcx+r11]
	lea	eax, [rsi+4]
	mov	BYTE PTR [rdi+r11], bl
	cmp	eax, edx
	jnb	.L1349
	movzx	r8d, BYTE PTR [rcx+rax]
	lea	r9d, [rsi+5]
	mov	BYTE PTR [rdi+rax], r8b
	cmp	r9d, edx
	jnb	.L1349
	movzx	r10d, BYTE PTR [rcx+r9]
	lea	r11d, [rsi+6]
	mov	BYTE PTR [rdi+r9], r10b
	cmp	r11d, edx
	jnb	.L1349
	movzx	ebx, BYTE PTR [rcx+r11]
	lea	eax, [rsi+7]
	mov	BYTE PTR [rdi+r11], bl
	cmp	eax, edx
	jnb	.L1349
	movzx	r8d, BYTE PTR [rcx+rax]
	lea	r9d, [rsi+8]
	mov	BYTE PTR [rdi+rax], r8b
	cmp	r9d, edx
	jnb	.L1349
	movzx	r10d, BYTE PTR [rcx+r9]
	lea	r11d, [rsi+9]
	mov	BYTE PTR [rdi+r9], r10b
	cmp	r11d, edx
	jnb	.L1349
	movzx	ebx, BYTE PTR [rcx+r11]
	lea	eax, [rsi+10]
	mov	BYTE PTR [rdi+r11], bl
	cmp	eax, edx
	jnb	.L1349
	movzx	r8d, BYTE PTR [rcx+rax]
	lea	r9d, [rsi+11]
	mov	BYTE PTR [rdi+rax], r8b
	cmp	r9d, edx
	jnb	.L1349
	movzx	r10d, BYTE PTR [rcx+r9]
	lea	r11d, [rsi+12]
	mov	BYTE PTR [rdi+r9], r10b
	cmp	r11d, edx
	jnb	.L1349
	movzx	ebx, BYTE PTR [rcx+r11]
	lea	eax, [rsi+13]
	mov	BYTE PTR [rdi+r11], bl
	cmp	eax, edx
	jnb	.L1349
	movzx	r8d, BYTE PTR [rcx+rax]
	add	esi, 14
	mov	BYTE PTR [rdi+rax], r8b
	cmp	esi, edx
	jnb	.L1349
	movzx	ecx, BYTE PTR [rcx+rsi]
	mov	BYTE PTR [rdi+rsi], cl
	vzeroupper
	jmp	.L1352
	.p2align 4,,10
	.p2align 3
.L1359:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	lea	r11d, [rdx-1]
	test	edx, edx
	je	.L1362
	mov	r10d, r11d
	cmp	r11d, 14
	jbe	.L1259
	mov	r8, rdi
	sub	r8, rcx
	add	r8, 31
	cmp	r8, 30
	jbe	.L1259
	cmp	r11d, 30
	jbe	.L1263
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
.L1254:
	vmovdqu	ymm0, YMMWORD PTR [r9+rax]
	vmovdqu	YMMWORD PTR [r8+rax], ymm0
	sub	rax, 32
	cmp	rax, rsi
	jne	.L1254
	mov	r8d, edx
	and	r8d, -32
	sub	r11d, r8d
	test	dl, 31
	je	.L1350
	sub	edx, r8d
	lea	r9d, [rdx-1]
	cmp	r9d, 14
	jbe	.L1363
	vzeroupper
.L1253:
	lea	r10, [r10-15]
	mov	esi, edx
	sub	r10, r8
	and	esi, -16
	vmovdqu	xmm1, XMMWORD PTR [rcx+r10]
	sub	r11d, esi
	and	edx, 15
	vmovdqu	XMMWORD PTR [rdi+r10], xmm1
	je	.L1355
.L1257:
	mov	eax, r11d
	lea	r8d, [r11-1]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r11d, r11d
	je	.L1355
	mov	r9d, r8d
	lea	edx, [r11-2]
	movzx	r10d, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], r10b
	test	r8d, r8d
	je	.L1355
	mov	eax, edx
	lea	r8d, [r11-3]
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	test	edx, edx
	je	.L1355
	mov	r9d, r8d
	lea	edx, [r11-4]
	movzx	r10d, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], r10b
	test	r8d, r8d
	je	.L1355
	mov	eax, edx
	lea	r8d, [r11-5]
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	test	edx, edx
	je	.L1355
	mov	r9d, r8d
	lea	edx, [r11-6]
	movzx	r10d, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], r10b
	test	r8d, r8d
	je	.L1355
	mov	eax, edx
	lea	r8d, [r11-7]
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	test	edx, edx
	je	.L1355
	mov	r9d, r8d
	lea	edx, [r11-8]
	movzx	r10d, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], r10b
	test	r8d, r8d
	je	.L1355
	mov	eax, edx
	lea	r8d, [r11-9]
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	test	edx, edx
	je	.L1355
	mov	r9d, r8d
	lea	edx, [r11-10]
	movzx	r10d, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], r10b
	test	r8d, r8d
	je	.L1355
	mov	eax, edx
	lea	r8d, [r11-11]
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	test	edx, edx
	je	.L1355
	mov	r9d, r8d
	lea	edx, [r11-12]
	movzx	r10d, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], r10b
	test	r8d, r8d
	je	.L1355
	mov	eax, edx
	lea	r8d, [r11-13]
	movzx	esi, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], sil
	test	edx, edx
	je	.L1355
	mov	r9d, r8d
	lea	r11d, [r11-14]
	movzx	r10d, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], r10b
	test	r8d, r8d
	je	.L1355
	movzx	ecx, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], cl
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1259:
	movzx	edx, BYTE PTR [rcx+r10]
	mov	BYTE PTR [rdi+r10], dl
	sub	r10, 1
	jnb	.L1259
	ret
	.p2align 4,,10
	.p2align 3
.L1349:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	vzeroupper
.L1352:
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
.L1261:
	.cfi_restore 3
	.cfi_restore 6
	mov	r11d, r9d
	xor	eax, eax
	jmp	.L1238
	.p2align 4,,10
	.p2align 3
.L1237:
	lea	r11d, [0+r9*8]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L1243:
	mov	r8, QWORD PTR [rcx+rax]
	mov	QWORD PTR [rdi+rax], r8
	add	rax, 8
	cmp	r11, rax
	jne	.L1243
	jmp	.L1244
	.p2align 4,,10
	.p2align 3
.L1360:
	mov	esi, esi
	test	edx, edx
	je	.L1364
.L1354:
	mov	r10, rsi
.L1356:
	movzx	r9d, BYTE PTR [rcx+r10]
	mov	BYTE PTR [rdi+r10], r9b
	add	r10, 1
	cmp	r10d, edx
	jb	.L1356
.L1355:
	ret
	.p2align 4,,10
	.p2align 3
.L1350:
	vzeroupper
	ret
.L1333:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	vzeroupper
	.p2align 5
	.p2align 4
	.p2align 3
.L1250:
	movzx	esi, BYTE PTR [rcx+r10]
	mov	BYTE PTR [rdi+r10], sil
	add	r10, 1
	cmp	r10d, edx
	jb	.L1250
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L1262:
	.cfi_restore_state
	xor	ebx, ebx
	jmp	.L1245
.L1362:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	ret
.L1263:
	xor	r8d, r8d
	jmp	.L1253
.L1361:
	mov	esi, esi
	vzeroupper
	jmp	.L1354
.L1363:
	vzeroupper
	jmp	.L1257
.L1364:
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
	jb	.L1369
	mov	eax, edx
	add	rax, rsi
	cmp	rax, rdi
	jnb	.L1456
.L1369:
	test	r8d, r8d
	je	.L1368
	lea	eax, [r8-1]
	cmp	eax, 6
	jbe	.L1372
	lea	r10, [rsi+2]
	mov	r11, rcx
	sub	r11, r10
	cmp	r11, 28
	jbe	.L1372
	cmp	eax, 14
	jbe	.L1389
	mov	r9d, edx
	xor	eax, eax
	shr	r9d, 5
	mov	edi, r9d
	sal	rdi, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1374:
	vmovdqu	ymm2, YMMWORD PTR [rsi+rax]
	vmovdqu	YMMWORD PTR [rcx+rax], ymm2
	add	rax, 32
	cmp	rax, rdi
	jne	.L1374
	mov	r10d, r9d
	sal	r10d, 4
	cmp	r8d, r10d
	je	.L1451
	mov	r11d, r8d
	sub	r11d, r10d
	lea	r9d, [r11-1]
	cmp	r9d, 6
	jbe	.L1457
	vzeroupper
.L1373:
	mov	edi, r10d
	mov	eax, r11d
	and	eax, -8
	vmovdqu	xmm3, XMMWORD PTR [rsi+rdi*2]
	add	r10d, eax
	and	r11d, 7
	vmovdqu	XMMWORD PTR [rcx+rdi*2], xmm3
	je	.L1368
.L1376:
	mov	r11d, r10d
	lea	edi, [r10+1]
	movzx	r9d, WORD PTR [rsi+r11*2]
	mov	WORD PTR [rcx+r11*2], r9w
	cmp	edi, r8d
	jnb	.L1368
	movzx	eax, WORD PTR [rsi+rdi*2]
	lea	r11d, [r10+2]
	mov	WORD PTR [rcx+rdi*2], ax
	cmp	r11d, r8d
	jnb	.L1368
	movzx	r9d, WORD PTR [rsi+r11*2]
	lea	edi, [r10+3]
	mov	WORD PTR [rcx+r11*2], r9w
	cmp	edi, r8d
	jnb	.L1368
	movzx	eax, WORD PTR [rsi+rdi*2]
	lea	r11d, [r10+4]
	mov	WORD PTR [rcx+rdi*2], ax
	cmp	r11d, r8d
	jnb	.L1368
	movzx	r9d, WORD PTR [rsi+r11*2]
	lea	edi, [r10+5]
	mov	WORD PTR [rcx+r11*2], r9w
	cmp	edi, r8d
	jnb	.L1368
	movzx	eax, WORD PTR [rsi+rdi*2]
	add	r10d, 6
	mov	WORD PTR [rcx+rdi*2], ax
	cmp	r10d, r8d
	jnb	.L1368
	movzx	r8d, WORD PTR [rsi+r10*2]
	mov	WORD PTR [rcx+r10*2], r8w
.L1368:
	test	dl, 1
	je	.L1455
.L1461:
	lea	edi, [rdx-1]
	movzx	edx, BYTE PTR [rsi+rdi]
	mov	BYTE PTR [rcx+rdi], dl
	ret
	.p2align 4,,10
	.p2align 3
.L1456:
	lea	r8d, [rdx-1]
	test	edx, edx
	je	.L1458
	mov	edi, r8d
	cmp	r8d, 14
	jbe	.L1387
	mov	r9, rcx
	sub	r9, rsi
	add	r9, 31
	cmp	r9, 30
	jbe	.L1387
	cmp	r8d, 30
	jbe	.L1390
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
.L1383:
	vmovdqu	ymm0, YMMWORD PTR [r11+rax]
	vmovdqu	YMMWORD PTR [r10+rax], ymm0
	sub	rax, 32
	cmp	rax, r9
	jne	.L1383
	mov	r10d, edx
	and	r10d, -32
	sub	r8d, r10d
	test	dl, 31
	je	.L1453
	sub	edx, r10d
	lea	r11d, [rdx-1]
	cmp	r11d, 14
	jbe	.L1459
	vzeroupper
.L1382:
	lea	rdi, [rdi-15]
	mov	r9d, edx
	sub	rdi, r10
	and	r9d, -16
	vmovdqu	xmm1, XMMWORD PTR [rsi+rdi]
	sub	r8d, r9d
	and	edx, 15
	vmovdqu	XMMWORD PTR [rcx+rdi], xmm1
	je	.L1455
.L1385:
	mov	eax, r8d
	lea	r10d, [r8-1]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r8d, r8d
	je	.L1455
	mov	r11d, r10d
	lea	r9d, [r8-2]
	movzx	edi, BYTE PTR [rsi+r11]
	mov	BYTE PTR [rcx+r11], dil
	test	r10d, r10d
	je	.L1455
	mov	eax, r9d
	lea	r10d, [r8-3]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r9d, r9d
	je	.L1455
	mov	r11d, r10d
	lea	r9d, [r8-4]
	movzx	edi, BYTE PTR [rsi+r11]
	mov	BYTE PTR [rcx+r11], dil
	test	r10d, r10d
	je	.L1455
	mov	eax, r9d
	lea	r10d, [r8-5]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r9d, r9d
	je	.L1455
	mov	r11d, r10d
	lea	r9d, [r8-6]
	movzx	edi, BYTE PTR [rsi+r11]
	mov	BYTE PTR [rcx+r11], dil
	test	r10d, r10d
	je	.L1455
	mov	eax, r9d
	lea	r10d, [r8-7]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r9d, r9d
	je	.L1455
	mov	r11d, r10d
	lea	r9d, [r8-8]
	movzx	edi, BYTE PTR [rsi+r11]
	mov	BYTE PTR [rcx+r11], dil
	test	r10d, r10d
	je	.L1455
	mov	eax, r9d
	lea	r10d, [r8-9]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r9d, r9d
	je	.L1455
	mov	r11d, r10d
	lea	r9d, [r8-10]
	movzx	edi, BYTE PTR [rsi+r11]
	mov	BYTE PTR [rcx+r11], dil
	test	r10d, r10d
	je	.L1455
	mov	eax, r9d
	lea	r10d, [r8-11]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r9d, r9d
	jne	.L1460
.L1455:
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1387:
	movzx	r9d, BYTE PTR [rsi+rdi]
	mov	BYTE PTR [rcx+rdi], r9b
	sub	rdi, 1
	jnb	.L1387
	ret
.L1389:
	mov	r11d, r8d
	xor	r10d, r10d
	jmp	.L1373
	.p2align 4,,10
	.p2align 3
.L1372:
	add	r8d, r8d
	xor	r11d, r11d
	mov	r10d, r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L1378:
	movzx	r9d, WORD PTR [rsi+r11]
	mov	WORD PTR [rcx+r11], r9w
	add	r11, 2
	cmp	r10, r11
	jne	.L1378
	test	dl, 1
	je	.L1455
	jmp	.L1461
.L1457:
	vzeroupper
	jmp	.L1376
.L1460:
	mov	r11d, r10d
	lea	r9d, [r8-12]
	movzx	edi, BYTE PTR [rsi+r11]
	mov	BYTE PTR [rcx+r11], dil
	test	r10d, r10d
	je	.L1455
	mov	eax, r9d
	lea	r10d, [r8-13]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r9d, r9d
	je	.L1455
	mov	r11d, r10d
	lea	r8d, [r8-14]
	movzx	edi, BYTE PTR [rsi+r11]
	mov	BYTE PTR [rcx+r11], dil
	test	r10d, r10d
	je	.L1455
	movzx	esi, BYTE PTR [rsi+r8]
	mov	BYTE PTR [rcx+r8], sil
	ret
.L1451:
	vzeroupper
	jmp	.L1368
.L1458:
	ret
.L1390:
	xor	r10d, r10d
	jmp	.L1382
.L1459:
	vzeroupper
	jmp	.L1385
.L1453:
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
	jb	.L1467
	mov	eax, edx
	add	rax, rcx
	cmp	rax, rdi
	jnb	.L1591
.L1467:
	test	r9d, r9d
	je	.L1592
	lea	eax, [r9-1]
	cmp	eax, 6
	jbe	.L1469
	lea	r11, [rcx+4]
	mov	r10, rdi
	sub	r10, r11
	cmp	r10, 56
	jbe	.L1469
	cmp	eax, 14
	jbe	.L1493
	mov	r11d, edx
	xor	r8d, r8d
	shr	r11d, 6
	mov	r10d, r11d
	sal	r10, 6
	.p2align 5
	.p2align 4
	.p2align 3
.L1471:
	vmovdqu32	zmm2, ZMMWORD PTR [rcx+r8]
	vmovdqu32	ZMMWORD PTR [rdi+r8], zmm2
	add	r8, 64
	cmp	r8, r10
	jne	.L1471
	mov	eax, r11d
	sal	eax, 4
	cmp	r9d, eax
	je	.L1476
	mov	r8d, r9d
	sub	r8d, eax
	lea	r11d, [r8-1]
	cmp	r11d, 6
	jbe	.L1473
.L1470:
	mov	r10d, eax
	mov	r11d, r8d
	and	r11d, -8
	vmovdqu	ymm3, YMMWORD PTR [rcx+r10*4]
	add	eax, r11d
	and	r8d, 7
	vmovdqu	YMMWORD PTR [rdi+r10*4], ymm3
	je	.L1476
.L1473:
	mov	r8d, eax
	lea	r11d, [rax+1]
	mov	r10d, DWORD PTR [rcx+r8*4]
	mov	DWORD PTR [rdi+r8*4], r10d
	cmp	r11d, r9d
	jnb	.L1476
	mov	r8d, DWORD PTR [rcx+r11*4]
	mov	DWORD PTR [rdi+r11*4], r8d
	lea	r11d, [rax+2]
	cmp	r11d, r9d
	jnb	.L1476
	mov	r10d, DWORD PTR [rcx+r11*4]
	lea	r8d, [rax+3]
	mov	DWORD PTR [rdi+r11*4], r10d
	cmp	r8d, r9d
	jnb	.L1476
	mov	r11d, DWORD PTR [rcx+r8*4]
	mov	DWORD PTR [rdi+r8*4], r11d
	lea	r8d, [rax+4]
	cmp	r8d, r9d
	jnb	.L1476
	mov	r10d, DWORD PTR [rcx+r8*4]
	lea	r11d, [rax+5]
	mov	DWORD PTR [rdi+r8*4], r10d
	cmp	r11d, r9d
	jnb	.L1476
	mov	r8d, DWORD PTR [rcx+r11*4]
	add	eax, 6
	mov	DWORD PTR [rdi+r11*4], r8d
	cmp	eax, r9d
	jnb	.L1476
	mov	r9d, DWORD PTR [rcx+rax*4]
	mov	DWORD PTR [rdi+rax*4], r9d
.L1476:
	cmp	esi, edx
	jnb	.L1582
	mov	r11d, edx
	sub	r11d, esi
	lea	eax, [r11-1]
	cmp	eax, 14
	jbe	.L1593
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	r10d, esi
	lea	r9, [rcx+1+r10]
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	.cfi_offset 3, -24
	lea	rbx, [rdi+r10]
	mov	r8, rbx
	sub	r8, r9
	cmp	r8, 30
	jbe	.L1565
	cmp	eax, 30
	jbe	.L1494
	mov	r8d, r11d
	lea	r9, [rcx+r10]
	xor	eax, eax
	shr	r8d, 5
	sal	r8, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1478:
	vmovdqu	ymm4, YMMWORD PTR [r9+rax]
	vmovdqu	YMMWORD PTR [rbx+rax], ymm4
	add	rax, 32
	cmp	r8, rax
	jne	.L1478
	mov	ebx, r11d
	and	ebx, -32
	add	esi, ebx
	test	r11b, 31
	je	.L1581
	sub	r11d, ebx
	lea	r9d, [r11-1]
	cmp	r9d, 14
	jbe	.L1480
.L1477:
	add	rbx, r10
	mov	r10d, r11d
	and	r10d, -16
	vmovdqu	xmm5, XMMWORD PTR [rcx+rbx]
	add	esi, r10d
	and	r11d, 15
	vmovdqu	XMMWORD PTR [rdi+rbx], xmm5
	je	.L1581
.L1480:
	mov	r11d, esi
	lea	eax, [rsi+1]
	movzx	ebx, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], bl
	cmp	eax, edx
	jnb	.L1581
	movzx	r8d, BYTE PTR [rcx+rax]
	lea	r9d, [rsi+2]
	mov	BYTE PTR [rdi+rax], r8b
	cmp	r9d, edx
	jnb	.L1581
	movzx	r10d, BYTE PTR [rcx+r9]
	lea	r11d, [rsi+3]
	mov	BYTE PTR [rdi+r9], r10b
	cmp	r11d, edx
	jnb	.L1581
	movzx	ebx, BYTE PTR [rcx+r11]
	lea	eax, [rsi+4]
	mov	BYTE PTR [rdi+r11], bl
	cmp	eax, edx
	jnb	.L1581
	movzx	r8d, BYTE PTR [rcx+rax]
	lea	r9d, [rsi+5]
	mov	BYTE PTR [rdi+rax], r8b
	cmp	r9d, edx
	jnb	.L1581
	movzx	r10d, BYTE PTR [rcx+r9]
	lea	r11d, [rsi+6]
	mov	BYTE PTR [rdi+r9], r10b
	cmp	r11d, edx
	jnb	.L1581
	movzx	ebx, BYTE PTR [rcx+r11]
	lea	eax, [rsi+7]
	mov	BYTE PTR [rdi+r11], bl
	cmp	eax, edx
	jnb	.L1581
	movzx	r8d, BYTE PTR [rcx+rax]
	lea	r9d, [rsi+8]
	mov	BYTE PTR [rdi+rax], r8b
	cmp	r9d, edx
	jnb	.L1581
	movzx	r10d, BYTE PTR [rcx+r9]
	lea	r11d, [rsi+9]
	mov	BYTE PTR [rdi+r9], r10b
	cmp	r11d, edx
	jnb	.L1581
	movzx	ebx, BYTE PTR [rcx+r11]
	lea	eax, [rsi+10]
	mov	BYTE PTR [rdi+r11], bl
	cmp	eax, edx
	jnb	.L1581
	movzx	r8d, BYTE PTR [rcx+rax]
	lea	r9d, [rsi+11]
	mov	BYTE PTR [rdi+rax], r8b
	cmp	r9d, edx
	jnb	.L1581
	movzx	r10d, BYTE PTR [rcx+r9]
	lea	r11d, [rsi+12]
	mov	BYTE PTR [rdi+r9], r10b
	cmp	r11d, edx
	jnb	.L1581
	movzx	ebx, BYTE PTR [rcx+r11]
	lea	eax, [rsi+13]
	mov	BYTE PTR [rdi+r11], bl
	cmp	eax, edx
	jnb	.L1581
	movzx	r8d, BYTE PTR [rcx+rax]
	add	esi, 14
	mov	BYTE PTR [rdi+rax], r8b
	cmp	esi, edx
	jnb	.L1581
	movzx	edx, BYTE PTR [rcx+rsi]
	mov	BYTE PTR [rdi+rsi], dl
	vzeroupper
	jmp	.L1584
	.p2align 4,,10
	.p2align 3
.L1591:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	lea	r10d, [rdx-1]
	test	edx, edx
	je	.L1594
	mov	esi, r10d
	cmp	r10d, 14
	jbe	.L1491
	mov	r8, rdi
	sub	r8, rcx
	add	r8, 31
	cmp	r8, 30
	jbe	.L1491
	cmp	r10d, 30
	jbe	.L1495
	mov	r8d, edx
	lea	r9, [rsi-31]
	xor	eax, eax
	shr	r8d, 5
	lea	r11, [rcx+r9]
	add	r9, rdi
	neg	r8
	sal	r8, 5
	.p2align 5
	.p2align 4
	.p2align 3
.L1486:
	vmovdqu	ymm0, YMMWORD PTR [r11+rax]
	vmovdqu	YMMWORD PTR [r9+rax], ymm0
	sub	rax, 32
	cmp	rax, r8
	jne	.L1486
	mov	r9d, edx
	and	r9d, -32
	sub	r10d, r9d
	test	dl, 31
	je	.L1582
	sub	edx, r9d
	lea	r11d, [rdx-1]
	cmp	r11d, 14
	jbe	.L1595
	vzeroupper
.L1485:
	lea	rsi, [rsi-15]
	mov	r8d, edx
	sub	rsi, r9
	and	r8d, -16
	vmovdqu	xmm1, XMMWORD PTR [rcx+rsi]
	sub	r10d, r8d
	and	edx, 15
	vmovdqu	XMMWORD PTR [rdi+rsi], xmm1
	je	.L1587
.L1489:
	mov	eax, r10d
	lea	r9d, [r10-1]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r10d, r10d
	je	.L1587
	mov	r11d, r9d
	lea	r8d, [r10-2]
	movzx	esi, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], sil
	test	r9d, r9d
	je	.L1587
	mov	eax, r8d
	lea	r9d, [r10-3]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r8d, r8d
	je	.L1587
	mov	r11d, r9d
	lea	r8d, [r10-4]
	movzx	esi, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], sil
	test	r9d, r9d
	je	.L1587
	mov	eax, r8d
	lea	r9d, [r10-5]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r8d, r8d
	je	.L1587
	mov	r11d, r9d
	lea	r8d, [r10-6]
	movzx	esi, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], sil
	test	r9d, r9d
	je	.L1587
	mov	eax, r8d
	lea	r9d, [r10-7]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r8d, r8d
	je	.L1587
	mov	r11d, r9d
	lea	r8d, [r10-8]
	movzx	esi, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], sil
	test	r9d, r9d
	je	.L1587
	mov	eax, r8d
	lea	r9d, [r10-9]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r8d, r8d
	je	.L1587
	mov	r11d, r9d
	lea	r8d, [r10-10]
	movzx	esi, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], sil
	test	r9d, r9d
	je	.L1587
	mov	eax, r8d
	lea	r9d, [r10-11]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r8d, r8d
	je	.L1587
	mov	r11d, r9d
	lea	r8d, [r10-12]
	movzx	esi, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], sil
	test	r9d, r9d
	je	.L1587
	mov	eax, r8d
	lea	r9d, [r10-13]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r8d, r8d
	je	.L1587
	mov	r11d, r9d
	lea	r10d, [r10-14]
	movzx	esi, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], sil
	test	r9d, r9d
	je	.L1587
	movzx	ecx, BYTE PTR [rcx+r10]
	mov	BYTE PTR [rdi+r10], cl
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1491:
	movzx	r8d, BYTE PTR [rcx+rsi]
	mov	BYTE PTR [rdi+rsi], r8b
	sub	rsi, 1
	jnb	.L1491
	ret
	.p2align 4,,10
	.p2align 3
.L1581:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	vzeroupper
.L1584:
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
.L1493:
	.cfi_restore 3
	.cfi_restore 6
	mov	r8d, r9d
	xor	eax, eax
	jmp	.L1470
	.p2align 4,,10
	.p2align 3
.L1469:
	lea	r10d, [0+r9*4]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L1475:
	mov	r11d, DWORD PTR [rcx+rax]
	mov	DWORD PTR [rdi+rax], r11d
	add	rax, 4
	cmp	rax, r10
	jne	.L1475
	jmp	.L1476
	.p2align 4,,10
	.p2align 3
.L1592:
	mov	esi, esi
	test	edx, edx
	je	.L1596
.L1586:
	mov	r10, rsi
.L1588:
	movzx	r8d, BYTE PTR [rcx+r10]
	mov	BYTE PTR [rdi+r10], r8b
	add	r10, 1
	cmp	r10d, edx
	jb	.L1588
.L1587:
	ret
	.p2align 4,,10
	.p2align 3
.L1582:
	vzeroupper
	ret
.L1565:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	vzeroupper
	.p2align 5
	.p2align 4
	.p2align 3
.L1482:
	movzx	esi, BYTE PTR [rcx+r10]
	mov	BYTE PTR [rdi+r10], sil
	add	r10, 1
	cmp	r10d, edx
	jb	.L1482
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L1494:
	.cfi_restore_state
	xor	ebx, ebx
	jmp	.L1477
.L1594:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	ret
.L1495:
	xor	r9d, r9d
	jmp	.L1485
.L1593:
	mov	esi, esi
	vzeroupper
	jmp	.L1586
.L1595:
	vzeroupper
	jmp	.L1489
.L1596:
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
	jne	.L1623
.L1603:
	vzeroupper
	ret
.L1623:
	mov	esi, edx
	shr	esi, 15
	jne	.L1607
	mov	eax, edx
	sar	eax, 14
	jne	.L1603
	mov	edi, edx
	shr	edi, 13
	jne	.L1608
	mov	r8d, edx
	shr	r8d, 12
	jne	.L1609
	mov	r9d, edx
	shr	r9d, 11
	jne	.L1610
	mov	r10d, edx
	shr	r10d, 10
	jne	.L1611
	mov	r11d, edx
	shr	r11d, 9
	jne	.L1612
	mov	eax, edx
	shr	eax, 8
	jne	.L1613
	mov	esi, edx
	shr	esi, 7
	jne	.L1614
	mov	edi, edx
	shr	edi, 6
	jne	.L1615
	mov	r8d, edx
	shr	r8d, 5
	jne	.L1616
	mov	r9d, edx
	shr	r9d, 4
	jne	.L1617
	mov	r10d, edx
	shr	r10d, 3
	jne	.L1618
	mov	r11d, edx
	shr	r11d, 2
	jne	.L1619
	shr	edx
	jne	.L1620
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	vzeroupper
	ret
.L1607:
	xor	eax, eax
	jmp	.L1603
.L1611:
	mov	eax, 5
	jmp	.L1603
.L1618:
	mov	eax, 12
	jmp	.L1603
.L1608:
	mov	eax, 2
	jmp	.L1603
.L1609:
	mov	eax, 3
	jmp	.L1603
.L1610:
	mov	eax, 4
	jmp	.L1603
.L1612:
	mov	eax, 6
	jmp	.L1603
.L1613:
	mov	eax, 7
	jmp	.L1603
.L1614:
	mov	eax, 8
	jmp	.L1603
.L1615:
	mov	eax, 9
	jmp	.L1603
.L1616:
	mov	eax, 10
	jmp	.L1603
.L1617:
	mov	eax, 11
	jmp	.L1603
.L1619:
	mov	eax, 13
	jmp	.L1603
.L1620:
	mov	eax, 14
	jmp	.L1603
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
	jne	.L1645
.L1624:
	vzeroupper
	ret
.L1645:
	test	dil, 1
	jne	.L1628
	test	dil, 2
	jne	.L1629
	test	dil, 4
	jne	.L1630
	test	dil, 8
	jne	.L1631
	test	dil, 16
	jne	.L1632
	test	dil, 32
	jne	.L1633
	test	dil, 64
	jne	.L1634
	test	dil, -128
	jne	.L1635
	test	edi, 256
	jne	.L1636
	test	edi, 512
	jne	.L1637
	test	edi, 1024
	jne	.L1638
	test	edi, 2048
	jne	.L1639
	test	edi, 4096
	jne	.L1640
	test	edi, 8192
	jne	.L1641
	and	edi, 16384
	jne	.L1642
	xor	eax, eax
	shr	edx, 15
	sete	al
	add	eax, 15
	vzeroupper
	ret
.L1628:
	xor	eax, eax
	jmp	.L1624
.L1633:
	mov	eax, 5
	jmp	.L1624
.L1640:
	mov	eax, 12
	jmp	.L1624
.L1629:
	mov	eax, 1
	jmp	.L1624
.L1630:
	mov	eax, 2
	jmp	.L1624
.L1631:
	mov	eax, 3
	jmp	.L1624
.L1632:
	mov	eax, 4
	jmp	.L1624
.L1634:
	mov	eax, 6
	jmp	.L1624
.L1635:
	mov	eax, 7
	jmp	.L1624
.L1636:
	mov	eax, 8
	jmp	.L1624
.L1637:
	mov	eax, 9
	jmp	.L1624
.L1638:
	mov	eax, 10
	jmp	.L1624
.L1639:
	mov	eax, 11
	jmp	.L1624
.L1641:
	mov	eax, 13
	jmp	.L1624
.L1642:
	mov	eax, 14
	jmp	.L1624
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
	jnb	.L1652
	vcvttss2si	rax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L1652:
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
	vextracti64x4	ymm5, zmm4, 0x1
	vpaddd	ymm6, ymm5, ymm4
	vextracti128	xmm7, ymm6, 0x1
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
	vextracti64x4	ymm5, zmm4, 0x1
	vpaddd	ymm6, ymm5, ymm4
	vextracti128	xmm7, ymm6, 0x1
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
	je	.L1655
	.p2align 5
	.p2align 4
	.p2align 3
.L1657:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L1657
.L1655:
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
	je	.L1660
	test	esi, esi
	je	.L1660
	.p2align 5
	.p2align 4
	.p2align 3
.L1662:
	mov	eax, esi
	and	eax, 1
	neg	eax
	and	eax, edi
	add	edi, edi
	add	edx, eax
	shr	esi
	jne	.L1662
.L1660:
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
	jb	.L1668
	jmp	.L1691
	.p2align 4,,10
	.p2align 3
.L1671:
	add	esi, esi
	add	r11d, r11d
	cmp	esi, edi
	jnb	.L1670
	test	r11d, r11d
	je	.L1670
.L1668:
	test	esi, esi
	jns	.L1671
.L1672:
	xor	eax, eax
	xor	r10d, r10d
	.p2align 6
	.p2align 4
	.p2align 3
.L1674:
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
	jne	.L1674
.L1673:
	test	edx, edx
	cmovne	eax, edi
	ret
	.p2align 4,,10
	.p2align 3
.L1670:
	xor	eax, eax
	test	r11d, r11d
	jne	.L1672
	test	edx, edx
	cmovne	eax, edi
	ret
.L1691:
	mov	eax, edi
	sub	eax, esi
	cmp	edi, esi
	setnb	cl
	cmovnb	edi, eax
	movzx	eax, cl
	jmp	.L1673
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
	ja	.L1694
	xor	eax, eax
	vcomiss	xmm0, xmm1
	seta	al
.L1694:
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
	ja	.L1697
	xor	eax, eax
	vcomisd	xmm0, xmm1
	seta	al
.L1697:
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
	js	.L1711
	je	.L1707
	xor	r9d, r9d
.L1704:
	mov	edx, 1
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L1706:
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
	jne	.L1706
	mov	eax, ecx
	neg	eax
	test	r9d, r9d
	cmove	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1711:
	neg	esi
	mov	r9d, 1
	jmp	.L1704
	.p2align 4,,10
	.p2align 3
.L1707:
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
	jns	.L1713
	neg	rdi
	xor	eax, eax
	mov	r10d, 1
.L1713:
	test	rsi, rsi
	jns	.L1714
	neg	rsi
	mov	r10d, eax
.L1714:
	mov	eax, esi
	mov	ecx, edi
	mov	edx, 1
	cmp	esi, edi
	jb	.L1715
	jmp	.L1739
	.p2align 4,,10
	.p2align 3
.L1720:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	.L1726
	test	edx, edx
	je	.L1736
.L1715:
	test	eax, eax
	jns	.L1720
.L1718:
	xor	r11d, r11d
	xor	r9d, r9d
	.p2align 5
	.p2align 4
	.p2align 3
.L1721:
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
	jne	.L1721
.L1719:
	mov	rax, r11
	neg	rax
	test	r10d, r10d
	cmove	rax, r11
	ret
	.p2align 4,,10
	.p2align 3
.L1726:
	test	edx, edx
	jne	.L1718
.L1736:
	xor	r11d, r11d
	mov	rax, r11
	neg	rax
	test	r10d, r10d
	cmove	rax, r11
	ret
.L1739:
	cmp	edi, esi
	setnb	sil
	movzx	r11d, sil
	jmp	.L1719
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
	jns	.L1742
	neg	rdi
	mov	r8d, 1
.L1742:
	mov	rax, rsi
	mov	ecx, edi
	mov	edx, 1
	neg	rax
	cmovns	rsi, rax
	mov	r9d, esi
	cmp	esi, edi
	jb	.L1743
	jmp	.L1766
	.p2align 4,,10
	.p2align 3
.L1748:
	add	r9d, r9d
	add	edx, edx
	cmp	r9d, ecx
	jnb	.L1753
	test	edx, edx
	je	.L1747
.L1743:
	test	r9d, r9d
	jns	.L1748
	.p2align 5
	.p2align 4
	.p2align 3
.L1764:
	mov	esi, ecx
	sub	esi, r9d
	cmp	ecx, r9d
	cmovnb	ecx, esi
	shr	r9d
	shr	edx
	jne	.L1764
.L1747:
	mov	edi, ecx
	mov	rax, rdi
	neg	rax
	test	r8d, r8d
	cmove	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1753:
	test	edx, edx
	jne	.L1764
	jmp	.L1747
.L1766:
	sub	ecx, esi
	cmp	edi, esi
	cmovb	ecx, edi
	jmp	.L1747
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
	jb	.L1769
	jmp	.L1835
	.p2align 4,,10
	.p2align 3
.L1772:
	lea	esi, [rdi+rdi]
	lea	ecx, [r8+r8]
	cmp	si, ax
	jnb	.L1771
	test	cx, cx
	je	.L1771
	mov	r8d, ecx
	mov	edi, esi
.L1769:
	test	di, di
	jns	.L1772
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
	je	.L1774
.L1776:
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
	je	.L1774
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
	je	.L1774
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
	je	.L1774
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
	je	.L1774
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
	je	.L1774
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
	je	.L1774
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
	je	.L1774
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
	je	.L1774
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
	je	.L1774
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
	je	.L1774
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
	je	.L1774
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
	je	.L1774
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
	je	.L1774
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
	jns	.L1774
	mov	r8d, eax
	sub	r8d, edi
	cmp	ax, di
	setnb	dil
	cmovnb	eax, r8d
	movzx	esi, dil
	or	ecx, esi
.L1774:
	test	edx, edx
	cmove	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1771:
	mov	eax, r10d
	test	cx, cx
	je	.L1774
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
	jmp	.L1776
.L1835:
	sub	eax, esi
	cmp	si, r10w
	sete	cl
	cmovne	eax, r10d
	movzx	ecx, cl
	jmp	.L1774
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
	jb	.L1837
	jmp	.L1860
	.p2align 4,,10
	.p2align 3
.L1840:
	add	rsi, rsi
	add	r11, r11
	cmp	rsi, rdi
	jnb	.L1839
	test	r11, r11
	je	.L1839
.L1837:
	test	esi, 2147483648
	je	.L1840
.L1841:
	xor	eax, eax
	xor	r10d, r10d
	.p2align 6
	.p2align 4
	.p2align 3
.L1843:
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
	jne	.L1843
.L1842:
	test	edx, edx
	cmovne	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1839:
	xor	eax, eax
	test	r11, r11
	jne	.L1841
	test	edx, edx
	cmovne	rax, rdi
	ret
.L1860:
	mov	rax, rdi
	sub	rax, rsi
	cmp	rdi, rsi
	setnb	cl
	cmovnb	rdi, rax
	movzx	eax, cl
	jmp	.L1842
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
	je	.L1864
	lea	ecx, [rsi-32]
	xor	eax, eax
	sal	edi, cl
.L1865:
	sal	rdi, 32
	or	rax, rdi
.L1863:
	ret
	.p2align 4,,10
	.p2align 3
.L1864:
	mov	rax, rdi
	test	esi, esi
	je	.L1863
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
	jmp	.L1865
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
	je	.L1870
	lea	ecx, [rdx-64]
	xor	eax, eax
	sal	rdi, cl
	mov	rdx, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1870:
	mov	rax, rdi
	test	edx, edx
	je	.L1873
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
.L1873:
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
	je	.L1875
	sar	rdi, 32
	lea	ecx, [rsi-32]
	mov	eax, edi
	sar	edi, cl
	sar	eax, 31
.L1876:
	sal	rax, 32
	or	rax, rdi
.L1874:
	ret
	.p2align 4,,10
	.p2align 3
.L1875:
	mov	rax, rdi
	test	esi, esi
	je	.L1874
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
	jmp	.L1876
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
	je	.L1881
	lea	ecx, [rdx-64]
	mov	r8, rsi
	sar	r8, 63
	sar	rsi, cl
	mov	rdx, r8
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1881:
	test	edx, edx
	je	.L1884
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
.L1884:
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
	jl	.L1889
	mov	eax, 2
	jg	.L1889
	xor	eax, eax
	cmp	edi, esi
	jb	.L1889
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L1889:
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
	jl	.L1895
	mov	eax, 1
	jg	.L1895
	mov	eax, -1
	cmp	edi, esi
	jb	.L1895
	xor	eax, eax
	cmp	esi, edi
	setb	al
.L1895:
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
	jl	.L1900
	mov	eax, 2
	jg	.L1900
	xor	eax, eax
	cmp	rdi, rdx
	jb	.L1900
	xor	eax, eax
	cmp	rdx, rdi
	setb	al
	add	eax, 1
.L1900:
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
	jne	.L1909
	xor	eax, eax
	xor	edx, edx
	rep bsf	rax, rsi
	add	eax, 65
	test	rsi, rsi
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1909:
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
	je	.L1913
	shr	rdi, 32
	lea	ecx, [rsi-32]
	xor	eax, eax
	shr	edi, cl
.L1914:
	sal	rax, 32
	or	rax, rdi
.L1912:
	ret
	.p2align 4,,10
	.p2align 3
.L1913:
	mov	rax, rdi
	test	esi, esi
	je	.L1912
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
	jmp	.L1914
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
	je	.L1919
	lea	ecx, [rdx-64]
	xor	r8d, r8d
	shr	rsi, cl
	mov	rdx, r8
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1919:
	test	edx, edx
	je	.L1922
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
.L1922:
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
	vmovsd	xmm2, QWORD PTR .LC23[rip]
	mov	eax, edi
	vmovsd	xmm1, xmm2, xmm2
	test	dil, 1
	je	.L1936
	.p2align 4
	.p2align 3
.L1938:
	vmulsd	xmm1, xmm1, xmm0
.L1936:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1937
	vmulsd	xmm0, xmm0, xmm0
	test	al, 1
	jne	.L1938
.L1942:
	vmulsd	xmm0, xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1938
	jmp	.L1942
	.p2align 4,,10
	.p2align 3
.L1937:
	test	edi, edi
	jns	.L1935
	vdivsd	xmm1, xmm2, xmm1
.L1935:
	vmovsd	xmm0, xmm1, xmm1
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
	vmovss	xmm1, xmm2, xmm2
	test	dil, 1
	je	.L1944
	.p2align 4
	.p2align 3
.L1946:
	vmulss	xmm1, xmm1, xmm0
.L1944:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1945
	vmulss	xmm0, xmm0, xmm0
	test	al, 1
	jne	.L1946
.L1950:
	vmulss	xmm0, xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1946
	jmp	.L1950
	.p2align 4,,10
	.p2align 3
.L1945:
	test	edi, edi
	jns	.L1943
	vdivss	xmm1, xmm2, xmm1
.L1943:
	vmovss	xmm0, xmm1, xmm1
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
	jb	.L1951
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1951
	xor	eax, eax
	cmp	edi, esi
	jb	.L1951
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L1951:
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
	jb	.L1957
	mov	eax, 1
	cmp	ecx, edx
	jb	.L1957
	mov	eax, -1
	cmp	edi, esi
	jb	.L1957
	xor	eax, eax
	cmp	esi, edi
	setb	al
.L1957:
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
	jb	.L1962
	mov	eax, 2
	cmp	rcx, rsi
	jb	.L1962
	xor	eax, eax
	cmp	rdi, rdx
	jb	.L1962
	xor	eax, eax
	cmp	rdx, rdi
	setb	al
	add	eax, 1
.L1962:
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
	.section	.rodata
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
