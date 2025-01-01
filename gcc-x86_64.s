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
	mov	rax, rdi
	cmp	rsi, rdi
	jnb	.L5
	test	rdx, rdx
	je	.L6
	.p2align 4
	.p2align 4
	.p2align 3
.L7:
	movzx	ecx, BYTE PTR [rsi-1+rdx]
	mov	BYTE PTR [rax-1+rdx], cl
	sub	rdx, 1
	jne	.L7
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	cmp	rdi, rsi
	je	.L6
	test	rdx, rdx
	je	.L6
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L8:
	movzx	edi, BYTE PTR [rsi+rcx]
	mov	BYTE PTR [rax+rcx], dil
	add	rcx, 1
	cmp	rcx, rdx
	jne	.L8
.L6:
	ret
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
	jne	.L18
	jmp	.L20
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L21:
	add	rsi, 1
	add	rdi, 1
	sub	rcx, 1
	je	.L20
.L18:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rdi], r8b
	cmp	r8d, edx
	jne	.L21
	lea	rax, [rdi+1]
	ret
	.p2align 4,,10
	.p2align 3
.L20:
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
	jne	.L28
	jmp	.L31
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L30:
	add	rdi, 1
	sub	rdx, 1
	je	.L31
.L28:
	movzx	eax, BYTE PTR [rdi]
	cmp	eax, esi
	jne	.L30
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L31:
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
	jne	.L34
	jmp	.L38
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L36:
	add	rdi, 1
	add	rsi, 1
	sub	rdx, 1
	je	.L38
.L34:
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rdi], al
	je	.L36
	movzx	eax, BYTE PTR [rdi]
	movzx	edx, BYTE PTR [rsi]
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L38:
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
	je	.L47
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	call	memcpy
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L47:
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
	jmp	.L51
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L53:
	mov	rdx, rax
	sub	rax, 1
	movzx	ecx, BYTE PTR [rdx]
	cmp	ecx, esi
	je	.L50
.L51:
	cmp	rax, rdi
	jne	.L53
	xor	edx, edx
.L50:
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
	je	.L59
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	movzx	esi, sil
	call	memset
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L59:
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
	je	.L63
	.p2align 5
	.p2align 4
	.p2align 3
.L64:
	movzx	edx, BYTE PTR [rsi+1]
	add	rsi, 1
	add	rax, 1
	mov	BYTE PTR [rax], dl
	test	dl, dl
	jne	.L64
.L63:
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
	jne	.L70
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L72:
	movzx	edx, BYTE PTR [rax+1]
	add	rax, 1
	test	dl, dl
	je	.L69
.L70:
	cmp	edx, esi
	jne	.L72
.L69:
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
	jmp	.L78
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L81:
	add	rax, 1
	test	cl, cl
	je	.L80
.L78:
	movsx	ecx, BYTE PTR [rax]
	cmp	ecx, esi
	jne	.L81
	ret
	.p2align 4,,10
	.p2align 3
.L80:
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
	movzx	eax, BYTE PTR [rdi]
	movzx	ecx, BYTE PTR [rsi]
	test	al, al
	je	.L83
	cmp	al, cl
	jne	.L83
	mov	edx, 1
	jmp	.L84
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L96:
	cmp	al, cl
	jne	.L83
.L84:
	movzx	eax, BYTE PTR [rdi+rdx]
	movzx	ecx, BYTE PTR [rsi+rdx]
	add	rdx, 1
	test	al, al
	jne	.L96
.L83:
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
	je	.L100
	mov	rax, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L99:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L99
	sub	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L100:
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
	je	.L102
	movzx	eax, BYTE PTR [rdi]
	sub	rdx, 1
	mov	rcx, rsi
	lea	r8, [rsi+rdx]
	test	al, al
	jne	.L106
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L119:
	cmp	rcx, r8
	je	.L105
	movzx	eax, BYTE PTR [rdi+1]
	add	rdi, 1
	lea	rdx, [rcx+1]
	test	al, al
	je	.L118
	mov	rcx, rdx
.L106:
	movzx	edx, BYTE PTR [rcx]
	test	dl, dl
	setne	r9b
	cmp	dl, al
	sete	sil
	test	r9b, sil
	jne	.L119
.L105:
	sub	eax, edx
.L102:
	ret
	.p2align 4,,10
	.p2align 3
.L118:
	movzx	edx, BYTE PTR [rcx+1]
	xor	eax, eax
	sub	eax, edx
	ret
.L117:
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
	jle	.L120
	and	rdx, -2
	add	rdx, rdi
	.p2align 5
	.p2align 4
	.p2align 3
.L122:
	movzx	eax, BYTE PTR [rdi+1]
	add	rdi, 2
	add	rsi, 2
	mov	BYTE PTR [rsi-2], al
	movzx	eax, BYTE PTR [rdi-2]
	mov	BYTE PTR [rsi-1], al
	cmp	rdi, rdx
	jne	.L122
.L120:
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
	jbe	.L136
	cmp	edi, 31
	jbe	.L136
	lea	edx, [rdi-8232]
	mov	eax, 1
	cmp	edx, 1
	jbe	.L134
	sub	edi, 65529
	xor	eax, eax
	cmp	edi, 2
	setbe	al
	ret
	.p2align 4,,10
	.p2align 3
.L136:
	mov	eax, 1
.L134:
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
	jbe	.L145
	lea	eax, [rdi-8234]
	cmp	eax, 47061
	jbe	.L142
	cmp	edi, 8231
	jbe	.L142
	lea	edx, [rdi-57344]
	mov	eax, 1
	cmp	edx, 8184
	jbe	.L139
	lea	edx, [rdi-65532]
	xor	eax, eax
	cmp	edx, 1048579
	ja	.L139
	not	edi
	xor	eax, eax
	and	edi, 65534
	setne	al
	ret
	.p2align 4,,10
	.p2align 3
.L142:
	mov	eax, 1
.L139:
	ret
	.p2align 4,,10
	.p2align 3
.L145:
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
	jbe	.L146
	or	edi, 32
	xor	eax, eax
	sub	edi, 97
	cmp	edi, 5
	setbe	al
.L146:
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
	jp	.L150
	ucomisd	xmm1, xmm1
	jp	.L154
	comisd	xmm0, xmm1
	jbe	.L157
	subsd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L157:
	pxor	xmm0, xmm0
.L150:
	ret
	.p2align 4,,10
	.p2align 3
.L154:
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
	jp	.L158
	ucomiss	xmm1, xmm1
	jp	.L162
	comiss	xmm0, xmm1
	jbe	.L165
	subss	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L165:
	pxor	xmm0, xmm0
.L158:
	ret
	.p2align 4,,10
	.p2align 3
.L162:
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
	jp	.L166
	ucomisd	xmm1, xmm1
	jp	.L172
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L168
	test	eax, eax
	jne	.L166
.L172:
	movapd	xmm1, xmm0
.L166:
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L168:
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
	jp	.L175
	ucomiss	xmm1, xmm1
	jp	.L181
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L177
	test	eax, eax
	jne	.L175
.L181:
	movaps	xmm1, xmm0
.L175:
	movaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L177:
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
	jp	.L189
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L192
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
	je	.L186
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L189:
	fstp	st(0)
	jmp	.L184
	.p2align 4,,10
	.p2align 3
.L192:
	fstp	st(0)
.L184:
	ret
	.p2align 4,,10
	.p2align 3
.L186:
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
	jp	.L198
	ucomisd	xmm1, xmm1
	jp	.L193
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L195
	test	eax, eax
	jne	.L193
.L198:
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L193:
	ret
	.p2align 4,,10
	.p2align 3
.L195:
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
	jp	.L207
	ucomiss	xmm1, xmm1
	jp	.L202
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L204
	test	eax, eax
	jne	.L202
.L207:
	movaps	xmm0, xmm1
.L202:
	ret
	.p2align 4,,10
	.p2align 3
.L204:
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
	jp	.L219
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L217
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
	je	.L213
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L217:
	fstp	st(0)
	jmp	.L211
	.p2align 4,,10
	.p2align 3
.L219:
	fstp	st(0)
.L211:
	ret
	.p2align 4,,10
	.p2align 3
.L213:
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
	je	.L221
	.p2align 5
	.p2align 4
	.p2align 3
.L222:
	mov	ecx, eax
	add	rdx, 1
	and	ecx, 63
	movzx	ecx, BYTE PTR digits[rcx]
	mov	BYTE PTR [rdx-1], cl
	shr	eax, 6
	jne	.L222
.L221:
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
	je	.L233
	movq	xmm0, QWORD PTR [rsi]
	movq	xmm1, rsi
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR [rdi], xmm0
	mov	QWORD PTR [rsi], rdi
	mov	rax, QWORD PTR [rdi]
	test	rax, rax
	je	.L227
	mov	QWORD PTR [rax+8], rdi
.L227:
	ret
	.p2align 4,,10
	.p2align 3
.L233:
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
	je	.L235
	mov	rdx, QWORD PTR [rdi+8]
	mov	QWORD PTR [rax+8], rdx
.L235:
	mov	rdx, QWORD PTR [rdi+8]
	test	rdx, rdx
	je	.L234
	mov	QWORD PTR [rdx], rax
.L234:
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
	je	.L244
	mov	r13, rsi
	xor	r15d, r15d
	jmp	.L246
	.p2align 4,,10
	.p2align 3
.L259:
	add	r15, 1
	add	r13, rbx
	cmp	rbp, r15
	je	.L244
.L246:
	mov	rax, QWORD PTR [rsp+8]
	mov	r14, r13
	mov	rsi, r13
	mov	rdi, r12
	call	rax
	test	eax, eax
	jne	.L259
.L243:
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
.L244:
	.cfi_restore_state
	lea	rax, [rbp+1]
	mov	rcx, QWORD PTR [rsp+24]
	mov	r14, QWORD PTR [rsp+16]
	imul	rbp, rbx
	mov	QWORD PTR [rcx], rax
	add	r14, rbp
	test	rbx, rbx
	je	.L243
	mov	rdx, rbx
	mov	rsi, r12
	mov	rdi, r14
	call	memmove
	jmp	.L243
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
	je	.L261
	mov	r13, rcx
	mov	r12, r8
	mov	rbx, rsi
	xor	ebp, ebp
	jmp	.L263
	.p2align 4,,10
	.p2align 3
.L272:
	add	rbp, 1
	add	rbx, r13
	cmp	r14, rbp
	je	.L261
.L263:
	mov	rdi, QWORD PTR [rsp+8]
	mov	r15, rbx
	mov	rsi, rbx
	call	r12
	test	eax, eax
	jne	.L272
.L260:
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
.L261:
	.cfi_restore_state
	xor	r15d, r15d
	jmp	.L260
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
	jmp	.L297
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L292:
	add	rdi, 1
.L297:
	movsx	eax, BYTE PTR [rdi]
	mov	edx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	.L292
	cmp	dl, 32
	je	.L292
	cmp	dl, 43
	je	.L278
	cmp	dl, 45
	jne	.L298
	movsx	eax, BYTE PTR [rdi+1]
	lea	r9, [rdi+1]
	mov	r8d, eax
	sub	eax, 48
	cmp	eax, 9
	ja	.L287
	mov	edi, 1
.L281:
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
.L284:
	lea	edx, [rsi+rsi*4]
	movsx	ecx, BYTE PTR [r9+1]
	lea	eax, [r8-48]
	add	r9, 1
	add	edx, edx
	movsx	eax, al
	mov	esi, edx
	mov	r8d, ecx
	sub	ecx, 48
	sub	esi, eax
	cmp	ecx, 9
	jbe	.L284
	sub	eax, edx
	test	edi, edi
	cmove	esi, eax
	mov	eax, esi
	ret
	.p2align 4,,10
	.p2align 3
.L298:
	movsx	eax, BYTE PTR [rdi]
	mov	r9, rdi
	xor	edi, edi
	mov	r8d, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L281
.L287:
	xor	esi, esi
.L299:
	mov	eax, esi
	ret
	.p2align 4,,10
	.p2align 3
.L278:
	movsx	eax, BYTE PTR [rdi+1]
	lea	r9, [rdi+1]
	xor	edi, edi
	mov	r8d, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L281
	xor	esi, esi
	jmp	.L299
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.p2align 4
	.globl	atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
	jmp	.L323
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L318:
	add	rdi, 1
.L323:
	movsx	eax, BYTE PTR [rdi]
	mov	edx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	.L318
	cmp	dl, 32
	je	.L318
	cmp	dl, 43
	je	.L304
	cmp	dl, 45
	jne	.L324
	movsx	eax, BYTE PTR [rdi+1]
	lea	r9, [rdi+1]
	mov	r8d, eax
	sub	eax, 48
	cmp	eax, 9
	ja	.L313
	mov	edi, 1
.L307:
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
.L310:
	lea	rdx, [rsi+rsi*4]
	movsx	ecx, BYTE PTR [r9+1]
	lea	eax, [r8-48]
	add	r9, 1
	add	rdx, rdx
	movsx	rax, al
	mov	rsi, rdx
	mov	r8d, ecx
	sub	ecx, 48
	sub	rsi, rax
	cmp	ecx, 9
	jbe	.L310
	sub	rax, rdx
	test	edi, edi
	cmove	rsi, rax
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L324:
	movsx	eax, BYTE PTR [rdi]
	mov	r9, rdi
	xor	edi, edi
	mov	r8d, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L307
.L313:
	xor	esi, esi
.L325:
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L304:
	movsx	eax, BYTE PTR [rdi+1]
	lea	r9, [rdi+1]
	xor	edi, edi
	mov	r8d, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L307
	xor	esi, esi
	jmp	.L325
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.p2align 4
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB171:
	.cfi_startproc
	jmp	atol
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
	je	.L328
	mov	r13, rsi
	mov	rbx, rdx
	mov	r12, rcx
	mov	r14, r8
	jmp	.L331
	.p2align 4,,10
	.p2align 3
.L338:
	jle	.L327
	sub	rbx, 1
	lea	r13, [rbp+0+r12]
	sub	rbx, r15
	test	rbx, rbx
	je	.L328
.L331:
	mov	r15, rbx
	mov	rdi, QWORD PTR [rsp+8]
	shr	r15
	mov	rbp, r15
	imul	rbp, r12
	add	rbp, r13
	mov	rsi, rbp
	call	r14
	test	eax, eax
	jns	.L338
	mov	rbx, r15
	test	rbx, rbx
	jne	.L331
.L328:
	xor	ebp, ebp
.L327:
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
	mov	QWORD PTR [rsp], rdi
	mov	QWORD PTR [rsp+8], r9
	test	edx, edx
	je	.L343
	mov	r12, rsi
	mov	rbp, rcx
	mov	r14, r8
	mov	r15d, edx
	jmp	.L340
	.p2align 4,,10
	.p2align 3
.L352:
	lea	r8d, [r15-1]
	lea	r12, [r13+0+rbp]
	sar	r8d
	mov	r15d, r8d
	test	r15d, r15d
	je	.L343
.L340:
	mov	ebx, r15d
	mov	rdx, QWORD PTR [rsp+8]
	mov	rdi, QWORD PTR [rsp]
	sar	ebx
	movsx	rcx, ebx
	imul	rcx, rbp
	lea	r13, [r12+rcx]
	mov	rsi, r13
	call	r14
	test	eax, eax
	je	.L339
	jg	.L352
	mov	r15d, ebx
	test	r15d, r15d
	jne	.L340
.L343:
	xor	r13d, r13d
.L339:
	add	rsp, 24
	.cfi_def_cfa_offset 56
	mov	rax, r13
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
	mov	edx, DWORD PTR [rdi]
	mov	rax, rdi
	cmp	esi, edx
	jne	.L375
	jmp	.L361
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L376:
	mov	edx, DWORD PTR [rax+4]
	add	rax, 4
	cmp	edx, esi
	je	.L361
.L375:
	test	edx, edx
	jne	.L376
.L361:
	test	edx, edx
	mov	edx, 0
	cmove	rax, rdx
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
	test	edx, edx
	setne	r8b
	cmp	edx, ecx
	sete	al
	test	r8b, al
	je	.L378
	test	ecx, ecx
	je	.L378
	mov	eax, 4
	jmp	.L379
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L393:
	test	ecx, ecx
	je	.L378
.L379:
	mov	edx, DWORD PTR [rdi+rax]
	mov	ecx, DWORD PTR [rsi+rax]
	add	rax, 4
	test	edx, edx
	setne	r9b
	cmp	edx, ecx
	sete	r8b
	test	r9b, r8b
	jne	.L393
.L378:
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
.L395:
	mov	ecx, DWORD PTR [rsi+rdx]
	mov	DWORD PTR [rax+rdx], ecx
	add	rdx, 4
	test	ecx, ecx
	jne	.L395
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
	je	.L400
	mov	rax, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L399:
	mov	edx, DWORD PTR [rax+4]
	add	rax, 4
	test	edx, edx
	jne	.L399
	sub	rax, rdi
	sar	rax, 2
	ret
	.p2align 4,,10
	.p2align 3
.L400:
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
	jne	.L403
	jmp	.L409
	.p2align 4,,10
	.p2align 3
.L414:
	test	ecx, ecx
	je	.L407
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	je	.L409
.L403:
	mov	eax, DWORD PTR [rdi]
	mov	ecx, DWORD PTR [rsi]
	test	eax, eax
	setne	r8b
	cmp	eax, ecx
	sete	al
	test	r8b, al
	jne	.L414
.L407:
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	mov	edx, -1
	setg	al
	movzx	eax, al
	cmovl	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L409:
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
	jne	.L416
	jmp	.L419
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L418:
	add	rdi, 4
	sub	rdx, 1
	je	.L419
.L416:
	cmp	DWORD PTR [rdi], esi
	jne	.L418
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L419:
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
	jne	.L422
	jmp	.L427
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L424:
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	je	.L427
.L422:
	mov	eax, DWORD PTR [rdi]
	cmp	eax, DWORD PTR [rsi]
	je	.L424
	cmp	eax, DWORD PTR [rsi]
	mov	edx, -1
	setg	al
	movzx	eax, al
	cmovl	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L427:
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
	je	.L436
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	sal	rdx, 2
	call	memcpy
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L436:
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
	mov	rax, rdi
	cmp	rdi, rsi
	je	.L447
	sub	rdi, rsi
	lea	rcx, [0+rdx*4]
	cmp	rdi, rcx
	jnb	.L453
	test	rdx, rdx
	je	.L447
	sub	rdx, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L444:
	mov	ecx, DWORD PTR [rsi+rdx*4]
	mov	DWORD PTR [rax+rdx*4], ecx
	sub	rdx, 1
	jnb	.L444
	ret
	.p2align 4,,10
	.p2align 3
.L453:
	xor	ecx, ecx
	test	rdx, rdx
	je	.L454
	.p2align 4
	.p2align 4
	.p2align 3
.L442:
	mov	edi, DWORD PTR [rsi+rcx*4]
	mov	DWORD PTR [rax+rcx*4], edi
	add	rcx, 1
	cmp	rcx, rdx
	jne	.L442
.L447:
	ret
	.p2align 4,,10
	.p2align 3
.L454:
	ret
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
	test	rdx, rdx
	je	.L456
	xor	ecx, ecx
	test	dl, 1
	je	.L457
	mov	ecx, 1
	mov	DWORD PTR [rdi], esi
	cmp	rcx, rdx
	je	.L467
	.p2align 4
	.p2align 4
	.p2align 3
.L457:
	mov	DWORD PTR [rax+rcx*4], esi
	mov	DWORD PTR [rax+4+rcx*4], esi
	add	rcx, 2
	cmp	rcx, rdx
	jne	.L457
.L456:
	ret
.L467:
	ret
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.p2align 4
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	cmp	rdi, rsi
	jnb	.L469
	test	rdx, rdx
	je	.L468
	.p2align 4
	.p2align 4
	.p2align 3
.L471:
	movzx	eax, BYTE PTR [rdi-1+rdx]
	mov	BYTE PTR [rsi-1+rdx], al
	sub	rdx, 1
	jne	.L471
	ret
	.p2align 4,,10
	.p2align 3
.L469:
	je	.L468
	test	rdx, rdx
	je	.L468
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L472:
	movzx	ecx, BYTE PTR [rdi+rax]
	mov	BYTE PTR [rsi+rax], cl
	add	rax, 1
	cmp	rax, rdx
	jne	.L472
.L468:
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
	jmp	.L497
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L495:
	cmp	ecx, 32
	je	.L499
.L497:
	mov	eax, edi
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L495
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L499:
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
	je	.L500
	mov	eax, edi
	and	eax, 1
	jne	.L500
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L502:
	sar	edi
	add	eax, 1
	test	dil, 1
	je	.L502
.L500:
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
	movss	xmm1, DWORD PTR .LC3[rip]
	mov	eax, 1
	comiss	xmm1, xmm0
	ja	.L507
	xor	eax, eax
	comiss	xmm0, DWORD PTR .LC4[rip]
	seta	al
.L507:
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
	movsd	xmm1, QWORD PTR .LC5[rip]
	mov	eax, 1
	comisd	xmm1, xmm0
	ja	.L510
	xor	eax, eax
	comisd	xmm0, QWORD PTR .LC6[rip]
	seta	al
.L510:
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
	fld	TBYTE PTR .LC7[rip]
	fcomip	st, st(1)
	ja	.L516
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L513
	.p2align 4,,10
	.p2align 3
.L516:
	fstp	st(0)
.L513:
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
	jp	.L519
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm1, xmm0
	jp	.L526
	jne	.L526
.L519:
	ret
	.p2align 4,,10
	.p2align 3
.L526:
	movss	xmm1, DWORD PTR .LC9[rip]
	test	edi, edi
	jns	.L521
	movss	xmm1, DWORD PTR .LC10[rip]
.L521:
	test	dil, 1
	je	.L522
	.p2align 4
	.p2align 3
.L523:
	mulss	xmm0, xmm1
.L522:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L519
	mulss	xmm1, xmm1
	test	dil, 1
	jne	.L523
.L533:
	mulss	xmm1, xmm1
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	test	dil, 1
	jne	.L523
	jmp	.L533
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
	jp	.L535
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm1, xmm0
	jp	.L542
	jne	.L542
.L535:
	ret
	.p2align 4,,10
	.p2align 3
.L542:
	movsd	xmm1, QWORD PTR .LC11[rip]
	test	edi, edi
	jns	.L537
	movsd	xmm1, QWORD PTR .LC12[rip]
.L537:
	test	dil, 1
	je	.L538
	.p2align 4
	.p2align 3
.L539:
	mulsd	xmm0, xmm1
.L538:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L535
	mulsd	xmm1, xmm1
	test	dil, 1
	jne	.L539
.L549:
	mulsd	xmm1, xmm1
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	test	dil, 1
	jne	.L539
	jmp	.L549
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
	jp	.L551
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L558
	jne	.L558
	jmp	.L551
	.p2align 4,,10
	.p2align 3
.L567:
	fstp	st(0)
.L551:
	ret
	.p2align 4,,10
	.p2align 3
.L558:
	test	edi, edi
	js	.L565
	fld	DWORD PTR .LC9[rip]
.L553:
	test	dil, 1
	je	.L554
	.p2align 4
	.p2align 3
.L555:
	fmul	st(1), st
.L554:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L567
	fmul	st, st(0)
	test	dil, 1
	jne	.L555
.L566:
	mov	eax, edi
	fmul	st, st(0)
	shr	eax, 31
	add	edi, eax
	sar	edi
	test	dil, 1
	jne	.L555
	jmp	.L566
	.p2align 4,,10
	.p2align 3
.L565:
	fld	DWORD PTR .LC10[rip]
	jmp	.L553
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
	je	.L569
	add	rdx, rsi
	mov	rcx, rdi
	.p2align 5
	.p2align 4
	.p2align 3
.L570:
	add	rsi, 1
	add	rcx, 1
	movzx	r8d, BYTE PTR [rsi-1]
	xor	BYTE PTR [rcx-1], r8b
	cmp	rdx, rsi
	jne	.L570
.L569:
	ret
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
	je	.L576
	.p2align 4
	.p2align 4
	.p2align 3
.L577:
	add	rcx, 1
	cmp	BYTE PTR [rcx], 0
	jne	.L577
.L576:
	test	rdx, rdx
	jne	.L578
	jmp	.L579
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L580:
	add	rsi, 1
	add	rcx, 1
	sub	rdx, 1
	je	.L579
.L578:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rcx], r8b
	test	r8b, r8b
	jne	.L580
	ret
	.p2align 4,,10
	.p2align 3
.L579:
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
	je	.L596
.L589:
	cmp	BYTE PTR [rdi+rax], 0
	jne	.L591
	ret
	.p2align 4,,10
	.p2align 3
.L591:
	add	rax, 1
	cmp	rsi, rax
	jne	.L589
	ret
	.p2align 4,,10
	.p2align 3
.L596:
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
	je	.L602
.L598:
	mov	rdx, rsi
	jmp	.L601
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L600:
	add	rdx, 1
	cmp	cl, r8b
	je	.L599
.L601:
	movzx	ecx, BYTE PTR [rdx]
	test	cl, cl
	jne	.L600
	movzx	r8d, BYTE PTR [rax+1]
	add	rax, 1
	test	r8b, r8b
	jne	.L598
.L602:
	xor	eax, eax
.L599:
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
.L606:
	movsx	ecx, BYTE PTR [rdi]
	cmp	esi, ecx
	cmove	rdx, rdi
	add	rdi, 1
	test	cl, cl
	jne	.L606
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
	mov	rax, rdi
	test	r10b, r10b
	je	.L620
	mov	rdx, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L610:
	add	rdx, 1
	cmp	BYTE PTR [rdx], 0
	jne	.L610
	mov	rcx, rax
	sub	rdx, rsi
	je	.L608
	lea	r11, [rsi-1+rdx]
	jmp	.L617
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L631:
	add	rax, 1
	test	dl, dl
	je	.L630
.L617:
	movzx	edx, BYTE PTR [rax]
	cmp	dl, r10b
	jne	.L631
	mov	ecx, r10d
	mov	rdx, rsi
	mov	rdi, rax
	jmp	.L612
	.p2align 4,,10
	.p2align 3
.L632:
	test	r8b, r8b
	setne	r9b
	cmp	r8b, cl
	sete	r8b
	test	r9b, r8b
	je	.L613
	movzx	ecx, BYTE PTR [rdi+1]
	add	rdi, 1
	add	rdx, 1
	test	cl, cl
	je	.L613
.L612:
	movzx	r8d, BYTE PTR [rdx]
	cmp	rdx, r11
	jne	.L632
.L613:
	cmp	BYTE PTR [rdx], cl
	je	.L620
	add	rax, 1
	jmp	.L617
	.p2align 4,,10
	.p2align 3
.L630:
	xor	ecx, ecx
.L608:
	mov	rax, rcx
	ret
.L620:
	mov	rcx, rax
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
	ja	.L643
	comisd	xmm0, xmm2
	jbe	.L637
	comisd	xmm2, xmm1
	ja	.L636
.L637:
	ret
	.p2align 4,,10
	.p2align 3
.L643:
	comisd	xmm1, xmm2
	jbe	.L637
.L636:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
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
	mov	r8, rdi
	test	rcx, rcx
	je	.L644
	cmp	rsi, rcx
	jb	.L652
	sub	rsi, rcx
	add	rsi, rdi
	jc	.L652
	movzx	r9d, BYTE PTR [rdx]
	jmp	.L649
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L646:
	cmp	rsi, rdi
	jb	.L652
.L649:
	movzx	eax, BYTE PTR [rdi]
	mov	r8, rdi
	add	rdi, 1
	cmp	al, r9b
	jne	.L646
	cmp	rcx, 1
	je	.L644
	mov	eax, 1
	.p2align 5
	.p2align 4
	.p2align 3
.L647:
	movzx	r10d, BYTE PTR [rdx+rax]
	cmp	BYTE PTR [r8+rax], r10b
	jne	.L646
	add	rax, 1
	cmp	rcx, rax
	jne	.L647
.L644:
	mov	rax, r8
	ret
	.p2align 4,,10
	.p2align 3
.L652:
	xor	r8d, r8d
	mov	rax, r8
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
	je	.L657
	call	memmove
	mov	rdi, rax
.L657:
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
	pxor	xmm3, xmm3
	comisd	xmm3, xmm0
	ja	.L686
	movsd	xmm2, QWORD PTR .LC16[rip]
	xor	edx, edx
	comisd	xmm0, xmm2
	jb	.L687
.L665:
	movsd	xmm1, QWORD PTR .LC12[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L672:
	mulsd	xmm0, xmm1
	add	eax, 1
	comisd	xmm0, xmm2
	jnb	.L672
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	je	.L662
.L689:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L662:
	ret
	.p2align 4,,10
	.p2align 3
.L687:
	movsd	xmm1, QWORD PTR .LC12[rip]
	comisd	xmm1, xmm0
	jbe	.L668
	ucomisd	xmm0, xmm3
	jp	.L678
	jne	.L678
.L668:
	mov	DWORD PTR [rdi], 0
	ret
	.p2align 4,,10
	.p2align 3
.L686:
	movsd	xmm1, QWORD PTR .LC14[rip]
	movapd	xmm2, xmm0
	xorpd	xmm2, XMMWORD PTR .LC13[rip]
	comisd	xmm1, xmm0
	jb	.L688
	movapd	xmm0, xmm2
	mov	edx, 1
	movsd	xmm2, QWORD PTR .LC16[rip]
	jmp	.L665
	.p2align 4,,10
	.p2align 3
.L688:
	comisd	xmm0, QWORD PTR .LC15[rip]
	jbe	.L668
	movsd	xmm1, QWORD PTR .LC12[rip]
	mov	edx, 1
.L666:
	movapd	xmm0, xmm2
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L674:
	addsd	xmm0, xmm0
	sub	eax, 1
	comisd	xmm1, xmm0
	ja	.L674
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	jne	.L689
	ret
.L678:
	movapd	xmm2, xmm0
	xor	edx, edx
	jmp	.L666
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
	je	.L690
	.p2align 5
	.p2align 4
	.p2align 3
.L692:
	mov	rax, rdi
	and	eax, 1
	neg	rax
	and	rax, rsi
	add	rsi, rsi
	add	rdx, rax
	shr	rdi
	jne	.L692
.L690:
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
	jb	.L696
	jmp	.L697
	.p2align 4,,10
	.p2align 3
.L699:
	add	esi, esi
	add	eax, eax
	cmp	esi, edi
	jnb	.L698
	test	eax, eax
	je	.L698
.L696:
	test	esi, esi
	jns	.L699
.L697:
	xor	ecx, ecx
	.p2align 4
	.p2align 4
	.p2align 3
.L702:
	cmp	edi, esi
	jb	.L701
	sub	edi, esi
	or	ecx, eax
.L701:
	shr	esi
	shr	eax
	jne	.L702
	test	rdx, rdx
	cmovne	ecx, edi
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L698:
	xor	ecx, ecx
	test	eax, eax
	jne	.L697
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
	je	.L717
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	ecx, [rax-1]
.L717:
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
	je	.L720
	bsr	rax, rax
	xor	rax, 63
	lea	ecx, [rax-1]
.L720:
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
	je	.L723
	.p2align 5
	.p2align 4
	.p2align 3
.L725:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L725
.L723:
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
	mov	ecx, edx
	mov	eax, edx
	shr	ecx, 3
	and	eax, -8
	cmp	rdi, rsi
	jb	.L729
	mov	r8d, edx
	add	r8, rsi
	cmp	r8, rdi
	jnb	.L743
.L729:
	test	ecx, ecx
	je	.L732
	lea	r9d, [0+rcx*8]
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L733:
	mov	r8, QWORD PTR [rsi+rcx]
	mov	QWORD PTR [rdi+rcx], r8
	add	rcx, 8
	cmp	r9, rcx
	jne	.L733
.L732:
	cmp	eax, edx
	jnb	.L728
	.p2align 4
	.p2align 4
	.p2align 3
.L734:
	movzx	ecx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], cl
	add	rax, 1
	cmp	eax, edx
	jb	.L734
	ret
	.p2align 4,,10
	.p2align 3
.L743:
	lea	eax, [rdx-1]
	test	edx, edx
	je	.L744
	.p2align 4
	.p2align 4
	.p2align 3
.L735:
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], dl
	sub	rax, 1
	jnb	.L735
.L728:
	ret
.L744:
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
	mov	eax, edx
	mov	rcx, rdi
	shr	eax
	cmp	rdi, rsi
	jb	.L746
	mov	edi, edx
	add	rdi, rsi
	cmp	rdi, rcx
	jnb	.L762
.L746:
	test	eax, eax
	je	.L749
	lea	r8d, [rax+rax]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L750:
	movzx	edi, WORD PTR [rsi+rax]
	mov	WORD PTR [rcx+rax], di
	add	rax, 2
	cmp	r8, rax
	jne	.L750
.L749:
	test	dl, 1
	je	.L745
	lea	eax, [rdx-1]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	ret
	.p2align 4,,10
	.p2align 3
.L762:
	lea	eax, [rdx-1]
	test	edx, edx
	je	.L763
	.p2align 4
	.p2align 4
	.p2align 3
.L752:
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	jnb	.L752
.L745:
	ret
.L763:
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
	mov	ecx, edx
	mov	eax, edx
	shr	ecx, 2
	and	eax, -4
	cmp	rdi, rsi
	jb	.L765
	mov	r8d, edx
	add	r8, rsi
	cmp	r8, rdi
	jnb	.L779
.L765:
	test	ecx, ecx
	je	.L768
	lea	r9d, [0+rcx*4]
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L769:
	mov	r8d, DWORD PTR [rsi+rcx]
	mov	DWORD PTR [rdi+rcx], r8d
	add	rcx, 4
	cmp	r9, rcx
	jne	.L769
.L768:
	cmp	eax, edx
	jnb	.L764
	.p2align 4
	.p2align 4
	.p2align 3
.L770:
	movzx	ecx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], cl
	add	rax, 1
	cmp	eax, edx
	jb	.L770
	ret
	.p2align 4,,10
	.p2align 3
.L779:
	lea	eax, [rdx-1]
	test	edx, edx
	je	.L780
	.p2align 4
	.p2align 4
	.p2align 3
.L771:
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], dl
	sub	rax, 1
	jnb	.L771
.L764:
	ret
.L780:
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
	js	.L789
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L789:
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
	js	.L792
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L792:
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
	movzx	edi, di
	xor	eax, eax
	mov	ecx, 15
	.p2align 5
	.p2align 4
	.p2align 3
.L797:
	mov	edx, ecx
	sub	edx, eax
	bt	edi, edx
	jc	.L795
	add	eax, 1
	cmp	eax, 16
	jne	.L797
.L795:
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
	movzx	edi, di
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L801:
	bt	edi, eax
	jc	.L799
	add	eax, 1
	cmp	eax, 16
	jne	.L801
.L799:
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
	comiss	xmm0, DWORD PTR .LC17[rip]
	jnb	.L809
	cvttss2si	rax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L809:
	subss	xmm0, DWORD PTR .LC17[rip]
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
	movzx	edi, di
	xor	eax, eax
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L811:
	mov	edx, edi
	sar	edx, cl
	add	ecx, 1
	and	edx, 1
	add	eax, edx
	cmp	ecx, 16
	jne	.L811
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
	movzx	edi, di
	xor	edx, edx
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L814:
	mov	eax, edi
	sar	eax, cl
	add	ecx, 1
	and	eax, 1
	add	edx, eax
	cmp	ecx, 16
	jne	.L814
	mov	eax, edx
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
	je	.L816
	.p2align 5
	.p2align 4
	.p2align 3
.L818:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L818
.L816:
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
	je	.L821
	test	esi, esi
	je	.L821
	.p2align 5
	.p2align 4
	.p2align 3
.L823:
	mov	eax, esi
	and	eax, 1
	neg	eax
	and	eax, edi
	add	edi, edi
	add	edx, eax
	shr	esi
	jne	.L823
.L821:
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
	jb	.L829
	jmp	.L830
	.p2align 4,,10
	.p2align 3
.L832:
	add	esi, esi
	add	eax, eax
	cmp	esi, edi
	jnb	.L831
	test	eax, eax
	je	.L831
.L829:
	test	esi, esi
	jns	.L832
.L830:
	xor	ecx, ecx
	.p2align 4
	.p2align 4
	.p2align 3
.L835:
	cmp	edi, esi
	jb	.L834
	sub	edi, esi
	or	ecx, eax
.L834:
	shr	esi
	shr	eax
	jne	.L835
	test	edx, edx
	cmovne	ecx, edi
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L831:
	xor	ecx, ecx
	test	eax, eax
	jne	.L830
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
	ja	.L850
	xor	eax, eax
	comiss	xmm0, xmm1
	seta	al
.L850:
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
	ja	.L853
	xor	eax, eax
	comisd	xmm0, xmm1
	seta	al
.L853:
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
	js	.L867
	je	.L863
	xor	r9d, r9d
.L860:
	mov	edx, 1
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L862:
	mov	eax, esi
	and	eax, 1
	neg	eax
	and	eax, edi
	add	edi, edi
	add	ecx, eax
	sar	esi
	setne	r8b
	cmp	dl, 31
	setbe	al
	add	edx, 1
	test	r8b, al
	jne	.L862
	mov	eax, ecx
	neg	eax
	test	r9d, r9d
	cmovne	ecx, eax
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L867:
	neg	esi
	mov	r9d, 1
	jmp	.L860
	.p2align 4,,10
	.p2align 3
.L863:
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
	xor	r9d, r9d
	test	rdi, rdi
	jns	.L869
	neg	rdi
	mov	r9d, 1
.L869:
	test	rsi, rsi
	jns	.L870
	neg	rsi
	xor	r9d, 1
.L870:
	mov	edx, esi
	mov	r8d, edi
	mov	ecx, 1
	cmp	esi, edi
	jb	.L871
	jmp	.L872
	.p2align 4,,10
	.p2align 3
.L874:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, r8d
	jnb	.L873
	test	ecx, ecx
	je	.L873
.L871:
	test	edx, edx
	jns	.L874
.L872:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L877:
	cmp	r8d, edx
	jb	.L876
	sub	r8d, edx
	or	eax, ecx
.L876:
	shr	edx
	shr	ecx
	jne	.L877
	mov	rdx, rax
	neg	rdx
	test	r9d, r9d
	cmovne	rax, rdx
	ret
	.p2align 4,,10
	.p2align 3
.L873:
	xor	eax, eax
	test	ecx, ecx
	jne	.L872
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
	jns	.L895
	neg	rdi
	mov	r8d, 1
.L895:
	mov	rax, rsi
	mov	ecx, 1
	neg	rax
	cmovns	rsi, rax
	mov	eax, edi
	mov	edx, esi
	cmp	esi, edi
	jb	.L896
	jmp	.L902
	.p2align 4,,10
	.p2align 3
.L900:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	.L906
	test	ecx, ecx
	je	.L899
.L896:
	test	edx, edx
	jns	.L900
	.p2align 4
	.p2align 4
	.p2align 3
.L902:
	mov	esi, eax
	sub	esi, edx
	cmp	eax, edx
	cmovnb	rax, rsi
	shr	edx
	shr	ecx
	jne	.L902
.L899:
	mov	rdx, rax
	neg	rdx
	test	r8d, r8d
	cmovne	rax, rdx
	ret
	.p2align 4,,10
	.p2align 3
.L906:
	test	ecx, ecx
	je	.L899
	mov	esi, eax
	sub	esi, edx
	cmp	eax, edx
	cmovnb	rax, rsi
	shr	edx
	shr	ecx
	jne	.L902
	jmp	.L899
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.p2align 4
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	mov	r8d, edi
	mov	eax, esi
	mov	ecx, 1
	cmp	si, di
	jb	.L917
	jmp	.L918
	.p2align 4,,10
	.p2align 3
.L920:
	add	eax, eax
	add	ecx, ecx
	cmp	ax, r8w
	jnb	.L919
	test	cx, cx
	je	.L919
.L917:
	test	ax, ax
	jns	.L920
.L918:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L923:
	cmp	r8w, ax
	jb	.L922
	sub	r8d, eax
	or	esi, ecx
.L922:
	shr	ax
	shr	cx
	jne	.L923
	test	edx, edx
	cmovne	esi, r8d
	mov	eax, esi
	ret
	.p2align 4,,10
	.p2align 3
.L919:
	xor	esi, esi
	test	cx, cx
	jne	.L918
	test	edx, edx
	cmovne	esi, r8d
	mov	eax, esi
	ret
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
	jb	.L939
	jmp	.L940
	.p2align 4,,10
	.p2align 3
.L942:
	add	rsi, rsi
	add	rax, rax
	cmp	rsi, rdi
	jnb	.L941
	test	rax, rax
	je	.L941
.L939:
	test	esi, 2147483648
	je	.L942
.L940:
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L945:
	cmp	rdi, rsi
	jb	.L944
	sub	rdi, rsi
	or	rcx, rax
.L944:
	shr	rsi
	shr	rax
	jne	.L945
	test	edx, edx
	cmovne	rcx, rdi
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L941:
	xor	ecx, ecx
	test	rax, rax
	jne	.L940
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
	je	.L961
	lea	ecx, [rsi-32]
	xor	eax, eax
	sal	edi, cl
.L962:
	sal	rdi, 32
	or	rax, rdi
.L960:
	ret
	.p2align 4,,10
	.p2align 3
.L961:
	mov	rax, rdi
	test	esi, esi
	je	.L960
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
	jmp	.L962
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
	je	.L967
	lea	ecx, [rdx-64]
	xor	eax, eax
	sal	rdi, cl
	mov	rdx, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L967:
	mov	rax, rdi
	test	edx, edx
	je	.L970
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
.L970:
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
	je	.L972
	sar	rdi, 32
	lea	ecx, [rsi-32]
	mov	eax, edi
	sar	edi, cl
	sar	eax, 31
.L973:
	sal	rax, 32
	or	rax, rdi
.L971:
	ret
	.p2align 4,,10
	.p2align 3
.L972:
	mov	rax, rdi
	test	esi, esi
	je	.L971
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
	jmp	.L973
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
	je	.L978
	lea	ecx, [rdx-64]
	mov	r8, rsi
	sar	r8, 63
	sar	rsi, cl
	mov	rax, rsi
	mov	rdx, r8
	ret
	.p2align 4,,10
	.p2align 3
.L978:
	test	edx, edx
	je	.L981
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
.L981:
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
	jl	.L986
	mov	eax, 2
	jg	.L986
	xor	eax, eax
	cmp	edi, esi
	jb	.L986
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L986:
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
	jl	.L992
	mov	eax, 1
	jg	.L992
	mov	eax, -1
	cmp	edi, esi
	jb	.L992
	xor	eax, eax
	cmp	esi, edi
	setb	al
.L992:
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
	jl	.L997
	mov	eax, 2
	jg	.L997
	xor	eax, eax
	cmp	rdi, rdx
	jb	.L997
	xor	eax, eax
	cmp	rdx, rdi
	setb	al
	add	eax, 1
.L997:
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
	jne	.L1006
	xor	eax, eax
	xor	edx, edx
	rep bsf	rax, rsi
	add	eax, 65
	test	rsi, rsi
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1006:
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
	je	.L1010
	shr	rdi, 32
	lea	ecx, [rsi-32]
	xor	eax, eax
	shr	edi, cl
.L1011:
	sal	rax, 32
	or	rax, rdi
.L1009:
	ret
	.p2align 4,,10
	.p2align 3
.L1010:
	mov	rax, rdi
	test	esi, esi
	je	.L1009
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
	jmp	.L1011
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
	je	.L1016
	lea	ecx, [rdx-64]
	xor	r8d, r8d
	shr	rsi, cl
	mov	rdx, r8
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1016:
	test	edx, edx
	je	.L1019
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
.L1019:
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
	movsd	xmm2, QWORD PTR .LC16[rip]
	mov	eax, edi
	movapd	xmm1, xmm2
	test	dil, 1
	je	.L1034
	.p2align 4
	.p2align 3
.L1036:
	mulsd	xmm1, xmm0
.L1034:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1035
	mulsd	xmm0, xmm0
	test	al, 1
	jne	.L1036
.L1040:
	mulsd	xmm0, xmm0
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1036
	jmp	.L1040
	.p2align 4,,10
	.p2align 3
.L1035:
	test	edi, edi
	jns	.L1033
	divsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L1033:
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
	movss	xmm2, DWORD PTR .LC18[rip]
	mov	eax, edi
	movaps	xmm1, xmm2
	test	dil, 1
	je	.L1042
	.p2align 4
	.p2align 3
.L1044:
	mulss	xmm1, xmm0
.L1042:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1043
	mulss	xmm0, xmm0
	test	al, 1
	jne	.L1044
.L1048:
	mulss	xmm0, xmm0
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1044
	jmp	.L1048
	.p2align 4,,10
	.p2align 3
.L1043:
	test	edi, edi
	jns	.L1041
	divss	xmm2, xmm1
	movaps	xmm1, xmm2
.L1041:
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
	jb	.L1049
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1049
	xor	eax, eax
	cmp	edi, esi
	jb	.L1049
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L1049:
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
	jb	.L1055
	mov	eax, 1
	cmp	ecx, edx
	jb	.L1055
	mov	eax, -1
	cmp	edi, esi
	jb	.L1055
	xor	eax, eax
	cmp	esi, edi
	setb	al
.L1055:
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
	jb	.L1060
	mov	eax, 2
	cmp	rcx, rsi
	jb	.L1060
	xor	eax, eax
	cmp	rdi, rdx
	jb	.L1060
	xor	eax, eax
	cmp	rdx, rdi
	setb	al
	add	eax, 1
.L1060:
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
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC3:
	.long	-8388609
	.align 4
.LC4:
	.long	2139095039
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC5:
	.long	-1
	.long	-1048577
	.align 8
.LC6:
	.long	-1
	.long	2146435071
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC7:
	.long	-1
	.long	-1
	.long	65534
	.long	0
	.align 16
.LC8:
	.long	-1
	.long	-1
	.long	32766
	.long	0
	.set	.LC9,.LC11+4
	.section	.rodata.cst4
	.align 4
.LC10:
	.long	1056964608
	.section	.rodata.cst8
	.align 8
.LC11:
	.long	0
	.long	1073741824
	.align 8
.LC12:
	.long	0
	.long	1071644672
	.section	.rodata.cst16
	.align 16
.LC13:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC14:
	.long	0
	.long	-1074790400
	.align 8
.LC15:
	.long	0
	.long	-1075838976
	.align 8
.LC16:
	.long	0
	.long	1072693248
	.section	.rodata.cst4
	.align 4
.LC17:
	.long	1191182336
	.align 4
.LC18:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
