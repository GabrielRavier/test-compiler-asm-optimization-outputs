	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
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
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB2:
	.cfi_startproc
	mov	rax, rdi
	cmp	rsi, rdi
	jnb	.L4
	test	rdx, rdx
	je	.L5
	.p2align 4
.L6:
	movzx	ecx, BYTE PTR [rsi-1+rdx]
	mov	BYTE PTR [rax-1+rdx], cl
	sub	rdx, 1
	jne	.L6
	ret
.L4:
	cmp	rdi, rsi
	je	.L5
	test	rdx, rdx
	je	.L5
	mov	ecx, 0
	.p2align 5
.L7:
	movzx	edi, BYTE PTR [rsi+rcx]
	mov	BYTE PTR [rax+rcx], dil
	add	rcx, 1
	cmp	rcx, rdx
	jne	.L7
.L5:
	ret
	.cfi_endproc
.LFE2:
	.size	memmove, .-memmove
	.globl	memccpy
	.type	memccpy, @function
memccpy:
.LFB3:
	.cfi_startproc
	movzx	edx, dl
	test	rcx, rcx
	je	.L18
	.p2align 5
.L11:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rdi], r8b
	movzx	r8d, r8b
	cmp	r8d, edx
	je	.L19
	add	rsi, 1
	add	rdi, 1
	sub	rcx, 1
	jne	.L11
	mov	eax, 0
	ret
.L18:
	mov	eax, 0
	ret
.L19:
	lea	rax, [rdi+1]
	ret
	.cfi_endproc
.LFE3:
	.size	memccpy, .-memccpy
	.globl	memchr
	.type	memchr, @function
memchr:
.LFB4:
	.cfi_startproc
	movzx	esi, sil
	test	rdx, rdx
	je	.L26
	.p2align 5
.L21:
	movzx	eax, BYTE PTR [rdi]
	cmp	eax, esi
	je	.L27
	add	rdi, 1
	sub	rdx, 1
	jne	.L21
	mov	eax, 0
	ret
.L26:
	mov	eax, 0
	ret
.L27:
	mov	rax, rdi
	ret
	.cfi_endproc
.LFE4:
	.size	memchr, .-memchr
	.globl	memcmp
	.type	memcmp, @function
memcmp:
.LFB5:
	.cfi_startproc
	test	rdx, rdx
	je	.L36
	.p2align 5
.L29:
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rdi], al
	jne	.L37
	add	rdi, 1
	add	rsi, 1
	sub	rdx, 1
	jne	.L29
	mov	eax, 0
	ret
.L36:
	mov	eax, 0
	ret
.L37:
	movzx	eax, BYTE PTR [rdi]
	movzx	edx, BYTE PTR [rsi]
	sub	eax, edx
	ret
	.cfi_endproc
.LFE5:
	.size	memcmp, .-memcmp
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB6:
	.cfi_startproc
	mov	rax, rdi
	test	rdx, rdx
	je	.L39
	mov	ecx, 0
	.p2align 5
.L40:
	movzx	r8d, BYTE PTR [rsi+rcx]
	mov	BYTE PTR [rax+rcx], r8b
	add	rcx, 1
	cmp	rcx, rdx
	jne	.L40
.L39:
	ret
	.cfi_endproc
.LFE6:
	.size	memcpy, .-memcpy
	.globl	memrchr
	.type	memrchr, @function
memrchr:
.LFB7:
	.cfi_startproc
	movzx	esi, sil
	lea	rax, [rdi-1+rdx]
	sub	rdi, 1
	.p2align 5
.L43:
	cmp	rax, rdi
	je	.L46
	mov	rcx, rax
	movzx	edx, BYTE PTR [rax]
	sub	rax, 1
	cmp	edx, esi
	jne	.L43
	jmp	.L42
.L46:
	mov	ecx, 0
.L42:
	mov	rax, rcx
	ret
	.cfi_endproc
.LFE7:
	.size	memrchr, .-memrchr
	.globl	memset
	.type	memset, @function
memset:
.LFB8:
	.cfi_startproc
	mov	rax, rdi
	test	rdx, rdx
	je	.L48
	add	rdx, rdi
	mov	rcx, rdi
	.p2align 4
.L49:
	mov	BYTE PTR [rcx], sil
	add	rcx, 1
	cmp	rdx, rcx
	jne	.L49
.L48:
	ret
	.cfi_endproc
.LFE8:
	.size	memset, .-memset
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB9:
	.cfi_startproc
	mov	rax, rdi
	movzx	edx, BYTE PTR [rsi]
	mov	BYTE PTR [rdi], dl
	test	dl, dl
	je	.L52
	.p2align 5
.L53:
	add	rsi, 1
	add	rax, 1
	movzx	edx, BYTE PTR [rsi]
	mov	BYTE PTR [rax], dl
	test	dl, dl
	jne	.L53
.L52:
	ret
	.cfi_endproc
.LFE9:
	.size	stpcpy, .-stpcpy
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB10:
	.cfi_startproc
	mov	rax, rdi
	movzx	esi, sil
	movzx	edx, BYTE PTR [rdi]
	test	dl, dl
	je	.L61
	.p2align 5
.L56:
	movzx	edx, dl
	cmp	edx, esi
	je	.L55
	add	rax, 1
	movzx	edx, BYTE PTR [rax]
	test	dl, dl
	jne	.L56
.L55:
	ret
.L61:
	ret
	.cfi_endproc
.LFE10:
	.size	strchrnul, .-strchrnul
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB11:
	.cfi_startproc
	mov	rax, rdi
	.p2align 5
.L64:
	movzx	edx, BYTE PTR [rax]
	movsx	ecx, dl
	cmp	ecx, esi
	je	.L63
	add	rax, 1
	test	dl, dl
	jne	.L64
	mov	eax, 0
.L63:
	ret
	.cfi_endproc
.LFE11:
	.size	strchr, .-strchr
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.cfi_startproc
	movzx	eax, BYTE PTR [rdi]
	movzx	ecx, BYTE PTR [rsi]
	test	al, al
	setne	r8b
	cmp	al, cl
	sete	dl
	test	r8b, dl
	je	.L67
	mov	edx, 1
	.p2align 5
.L68:
	movzx	eax, BYTE PTR [rdi+rdx]
	movzx	ecx, BYTE PTR [rsi+rdx]
	test	al, al
	setne	r9b
	cmp	al, cl
	sete	r8b
	add	rdx, 1
	test	r9b, r8b
	jne	.L68
.L67:
	movzx	eax, al
	movzx	ecx, cl
	sub	eax, ecx
	ret
	.cfi_endproc
.LFE12:
	.size	strcmp, .-strcmp
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB13:
	.cfi_startproc
	cmp	BYTE PTR [rdi], 0
	je	.L73
	mov	rax, rdi
	.p2align 4
.L72:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L72
.L71:
	sub	rax, rdi
	ret
.L73:
	mov	rax, rdi
	jmp	.L71
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB14:
	.cfi_startproc
	mov	eax, 0
	test	rdx, rdx
	je	.L75
	movzx	eax, BYTE PTR [rdi]
	test	al, al
	je	.L81
	mov	rcx, rsi
	lea	r9, [rsi-1+rdx]
	.p2align 6
.L78:
	movzx	esi, BYTE PTR [rcx]
	cmp	r9, rcx
	setne	r8b
	test	sil, sil
	setne	dl
	cmp	sil, al
	sete	sil
	and	edx, esi
	test	dl, r8b
	je	.L77
	add	rdi, 1
	add	rcx, 1
	movzx	eax, BYTE PTR [rdi]
	test	al, al
	jne	.L78
.L77:
	movzx	eax, al
	movzx	edx, BYTE PTR [rcx]
	sub	eax, edx
.L75:
	ret
.L81:
	mov	rcx, rsi
	jmp	.L77
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.globl	swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	cmp	rdx, 1
	jle	.L82
	and	rdx, -2
	add	rdx, rdi
	.p2align 5
.L84:
	movzx	eax, BYTE PTR [rdi+1]
	mov	BYTE PTR [rsi], al
	movzx	eax, BYTE PTR [rdi]
	mov	BYTE PTR [rsi+1], al
	add	rsi, 2
	add	rdi, 2
	cmp	rdi, rdx
	jne	.L84
.L82:
	ret
	.cfi_endproc
.LFE15:
	.size	swab, .-swab
	.globl	isalpha
	.type	isalpha, @function
isalpha:
.LFB16:
	.cfi_startproc
	or	edi, 32
	sub	edi, 97
	cmp	edi, 25
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE16:
	.size	isalpha, .-isalpha
	.globl	isascii
	.type	isascii, @function
isascii:
.LFB17:
	.cfi_startproc
	cmp	edi, 127
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE17:
	.size	isascii, .-isascii
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
	.globl	isdigit
	.type	isdigit, @function
isdigit:
.LFB20:
	.cfi_startproc
	sub	edi, 48
	cmp	edi, 9
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE20:
	.size	isdigit, .-isdigit
	.globl	isgraph
	.type	isgraph, @function
isgraph:
.LFB21:
	.cfi_startproc
	sub	edi, 33
	cmp	edi, 93
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE21:
	.size	isgraph, .-isgraph
	.globl	islower
	.type	islower, @function
islower:
.LFB22:
	.cfi_startproc
	sub	edi, 97
	cmp	edi, 25
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE22:
	.size	islower, .-islower
	.globl	isprint
	.type	isprint, @function
isprint:
.LFB23:
	.cfi_startproc
	sub	edi, 32
	cmp	edi, 94
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE23:
	.size	isprint, .-isprint
	.globl	isspace
	.type	isspace, @function
isspace:
.LFB24:
	.cfi_startproc
	cmp	edi, 32
	sete	al
	sub	edi, 9
	cmp	edi, 4
	setbe	dl
	or	eax, edx
	movzx	eax, al
	ret
	.cfi_endproc
.LFE24:
	.size	isspace, .-isspace
	.globl	isupper
	.type	isupper, @function
isupper:
.LFB25:
	.cfi_startproc
	sub	edi, 65
	cmp	edi, 25
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE25:
	.size	isupper, .-isupper
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB26:
	.cfi_startproc
	cmp	edi, 31
	setbe	al
	lea	edx, [rdi-127]
	cmp	edx, 32
	setbe	cl
	mov	edx, 1
	or	al, cl
	jne	.L96
	lea	eax, [rdi-8232]
	cmp	eax, 1
	jbe	.L96
	sub	edi, 65529
	cmp	edi, 2
	setbe	dl
	movzx	edx, dl
.L96:
	mov	eax, edx
	ret
	.cfi_endproc
.LFE26:
	.size	iswcntrl, .-iswcntrl
	.globl	iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB27:
	.cfi_startproc
	sub	edi, 48
	cmp	edi, 9
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE27:
	.size	iswdigit, .-iswdigit
	.globl	iswprint
	.type	iswprint, @function
iswprint:
.LFB28:
	.cfi_startproc
	cmp	edi, 254
	jbe	.L107
	cmp	edi, 8231
	setbe	dl
	lea	eax, [rdi-8234]
	cmp	eax, 47061
	setbe	cl
	mov	eax, 1
	or	dl, cl
	jne	.L101
	lea	edx, [rdi-57344]
	cmp	edx, 8184
	jbe	.L101
	lea	edx, [rdi-65532]
	mov	eax, 0
	cmp	edx, 1048579
	ja	.L101
	not	edi
	test	edi, 65534
	setne	al
	movzx	eax, al
.L101:
	ret
.L107:
	add	edi, 1
	and	edi, 127
	cmp	edi, 32
	seta	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE28:
	.size	iswprint, .-iswprint
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	lea	edx, [rdi-48]
	mov	eax, 1
	cmp	edx, 9
	jbe	.L108
	or	edi, 32
	sub	edi, 97
	cmp	edi, 5
	setbe	al
	movzx	eax, al
.L108:
	ret
	.cfi_endproc
.LFE29:
	.size	iswxdigit, .-iswxdigit
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
	.globl	fdim
	.type	fdim, @function
fdim:
.LFB31:
	.cfi_startproc
	ucomisd	xmm0, xmm0
	jp	.L112
	ucomisd	xmm1, xmm1
	jp	.L116
	comisd	xmm0, xmm1
	jbe	.L119
	subsd	xmm0, xmm1
	ret
.L116:
	movapd	xmm0, xmm1
	ret
.L119:
	pxor	xmm0, xmm0
.L112:
	ret
	.cfi_endproc
.LFE31:
	.size	fdim, .-fdim
	.globl	fdimf
	.type	fdimf, @function
fdimf:
.LFB32:
	.cfi_startproc
	ucomiss	xmm0, xmm0
	jp	.L120
	ucomiss	xmm1, xmm1
	jp	.L124
	comiss	xmm0, xmm1
	jbe	.L127
	subss	xmm0, xmm1
	ret
.L124:
	movaps	xmm0, xmm1
	ret
.L127:
	pxor	xmm0, xmm0
.L120:
	ret
	.cfi_endproc
.LFE32:
	.size	fdimf, .-fdimf
	.globl	fmax
	.type	fmax, @function
fmax:
.LFB33:
	.cfi_startproc
	ucomisd	xmm0, xmm0
	jp	.L133
	ucomisd	xmm1, xmm1
	jp	.L128
	movmskpd	eax, xmm0
	and	eax, 1
	movmskpd	edx, xmm1
	and	edx, 1
	cmp	eax, edx
	je	.L130
	test	eax, eax
	je	.L128
	movapd	xmm0, xmm1
	ret
.L130:
	movapd	xmm2, xmm1
	maxsd	xmm2, xmm0
	movapd	xmm0, xmm2
	ret
.L133:
	movapd	xmm0, xmm1
.L128:
	ret
	.cfi_endproc
.LFE33:
	.size	fmax, .-fmax
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB34:
	.cfi_startproc
	ucomiss	xmm0, xmm0
	jp	.L141
	ucomiss	xmm1, xmm1
	jp	.L136
	movd	eax, xmm0
	and	eax, -2147483648
	movd	edx, xmm1
	and	edx, -2147483648
	cmp	eax, edx
	je	.L138
	test	eax, eax
	je	.L136
	movaps	xmm0, xmm1
	ret
.L138:
	movaps	xmm2, xmm1
	maxss	xmm2, xmm0
	movaps	xmm0, xmm2
	ret
.L141:
	movaps	xmm0, xmm1
.L136:
	ret
	.cfi_endproc
.LFE34:
	.size	fmaxf, .-fmaxf
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB35:
	.cfi_startproc
	fld	TBYTE PTR [rsp+24]
	fld	TBYTE PTR [rsp+8]
	fucomi	st, st(0)
	jp	.L150
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L148
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	and	edx, 512
	fxam
	fnstsw	ax
	and	eax, 512
	cmp	edx, eax
	je	.L146
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
.L146:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	ret
.L148:
	fstp	st(0)
	jmp	.L144
.L150:
	fstp	st(0)
.L144:
	ret
	.cfi_endproc
.LFE35:
	.size	fmaxl, .-fmaxl
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	ucomisd	xmm0, xmm0
	jp	.L151
	ucomisd	xmm1, xmm1
	jp	.L157
	movmskpd	eax, xmm0
	and	eax, 1
	movmskpd	edx, xmm1
	and	edx, 1
	cmp	eax, edx
	je	.L153
	test	eax, eax
	je	.L151
	movapd	xmm1, xmm0
	jmp	.L151
.L153:
	movapd	xmm2, xmm0
	minsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L151:
	movapd	xmm0, xmm1
	ret
.L157:
	movapd	xmm1, xmm0
	jmp	.L151
	.cfi_endproc
.LFE36:
	.size	fmin, .-fmin
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB37:
	.cfi_startproc
	ucomiss	xmm0, xmm0
	jp	.L159
	ucomiss	xmm1, xmm1
	jp	.L165
	movd	eax, xmm0
	and	eax, -2147483648
	movd	edx, xmm1
	and	edx, -2147483648
	cmp	eax, edx
	je	.L161
	test	eax, eax
	je	.L159
	movaps	xmm1, xmm0
	jmp	.L159
.L161:
	movaps	xmm2, xmm0
	minss	xmm2, xmm1
	movaps	xmm1, xmm2
.L159:
	movaps	xmm0, xmm1
	ret
.L165:
	movaps	xmm1, xmm0
	jmp	.L159
	.cfi_endproc
.LFE37:
	.size	fminf, .-fminf
	.globl	fminl
	.type	fminl, @function
fminl:
.LFB38:
	.cfi_startproc
	fld	TBYTE PTR [rsp+24]
	fld	TBYTE PTR [rsp+8]
	fucomi	st, st(0)
	jp	.L170
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L173
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	and	edx, 512
	fxam
	fnstsw	ax
	and	eax, 512
	cmp	edx, eax
	je	.L169
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
.L169:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	ret
.L170:
	fstp	st(0)
	jmp	.L167
.L173:
	fstp	st(0)
.L167:
	ret
	.cfi_endproc
.LFE38:
	.size	fminl, .-fminl
	.section	.rodata
	.align 32
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.globl	l64a
	.type	l64a, @function
l64a:
.LFB39:
	.cfi_startproc
	mov	eax, edi
	test	edi, edi
	je	.L177
	mov	edx, OFFSET FLAT:s.0
	.p2align 5
.L176:
	mov	ecx, eax
	and	ecx, 63
	movzx	ecx, BYTE PTR digits[rcx]
	mov	BYTE PTR [rdx], cl
	add	rdx, 1
	shr	eax, 6
	jne	.L176
.L175:
	mov	BYTE PTR [rdx], 0
	mov	eax, OFFSET FLAT:s.0
	ret
.L177:
	mov	edx, OFFSET FLAT:s.0
	jmp	.L175
	.cfi_endproc
.LFE39:
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
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
	.globl	insque
	.type	insque, @function
insque:
.LFB42:
	.cfi_startproc
	test	rsi, rsi
	je	.L184
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR [rdi], rax
	mov	QWORD PTR [rdi+8], rsi
	mov	QWORD PTR [rsi], rdi
	mov	rax, QWORD PTR [rdi]
	test	rax, rax
	je	.L181
	mov	QWORD PTR [rax+8], rdi
.L181:
	ret
.L184:
	mov	QWORD PTR [rdi+8], 0
	mov	QWORD PTR [rdi], 0
	ret
	.cfi_endproc
.LFE42:
	.size	insque, .-insque
	.globl	remque
	.type	remque, @function
remque:
.LFB43:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi]
	test	rax, rax
	je	.L186
	mov	rdx, QWORD PTR [rdi+8]
	mov	QWORD PTR [rax+8], rdx
.L186:
	mov	rax, QWORD PTR [rdi+8]
	test	rax, rax
	je	.L185
	mov	rdx, QWORD PTR [rdi]
	mov	QWORD PTR [rax], rdx
.L185:
	ret
	.cfi_endproc
.LFE43:
	.size	remque, .-remque
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
	sub	rsp, 40
	.cfi_def_cfa_offset 96
	mov	r14, rdi
	mov	QWORD PTR [rsp+16], rsi
	mov	QWORD PTR [rsp+24], rdx
	mov	r13, rcx
	mov	r12, QWORD PTR [rdx]
	test	r12, r12
	je	.L189
	mov	r15, r8
	mov	rbx, rsi
	mov	ebp, 0
.L191:
	mov	QWORD PTR [rsp+8], rbx
	mov	rsi, rbx
	mov	rdi, r14
	call	r15
	test	eax, eax
	je	.L188
	add	rbp, 1
	add	rbx, r13
	cmp	r12, rbp
	jne	.L191
.L189:
	lea	rax, [r12+1]
	mov	rcx, QWORD PTR [rsp+24]
	mov	QWORD PTR [rcx], rax
	imul	r12, r13
	mov	rdi, QWORD PTR [rsp+16]
	add	rdi, r12
	mov	rdx, r13
	mov	rsi, r14
	call	memcpy
	mov	QWORD PTR [rsp+8], rax
.L188:
	mov	rax, QWORD PTR [rsp+8]
	add	rsp, 40
	.cfi_def_cfa_offset 56
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
.LFE44:
	.size	lsearch, .-lsearch
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
	mov	r15, QWORD PTR [rdx]
	test	r15, r15
	je	.L197
	mov	r12, rdi
	mov	r14, rcx
	mov	r13, r8
	mov	rbx, rsi
	mov	ebp, 0
.L196:
	mov	QWORD PTR [rsp+8], rbx
	mov	rsi, rbx
	mov	rdi, r12
	call	r13
	test	eax, eax
	je	.L194
	add	rbp, 1
	add	rbx, r14
	cmp	r15, rbp
	jne	.L196
	mov	QWORD PTR [rsp+8], 0
.L194:
	mov	rax, QWORD PTR [rsp+8]
	add	rsp, 24
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
.L197:
	.cfi_restore_state
	mov	QWORD PTR [rsp+8], 0
	jmp	.L194
	.cfi_endproc
.LFE45:
	.size	lfind, .-lfind
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
	.globl	atoi
	.type	atoi, @function
atoi:
.LFB47:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi
	jmp	.L202
.L203:
	add	rbx, 1
.L202:
	movzx	ebp, BYTE PTR [rbx]
	movsx	edi, bpl
	call	isspace
	test	eax, eax
	jne	.L203
	cmp	bpl, 43
	je	.L209
	mov	esi, eax
	cmp	bpl, 45
	jne	.L205
	mov	esi, 1
.L204:
	add	rbx, 1
.L205:
	movzx	edx, BYTE PTR [rbx]
	movsx	ecx, dl
	sub	ecx, 48
	cmp	ecx, 9
	ja	.L207
	.p2align 5
.L206:
	lea	eax, [rax+rax*4]
	add	eax, eax
	add	rbx, 1
	sub	edx, 48
	movsx	edx, dl
	sub	eax, edx
	movzx	edx, BYTE PTR [rbx]
	movsx	ecx, dl
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L206
.L207:
	mov	edx, eax
	neg	edx
	test	esi, esi
	cmove	eax, edx
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.L209:
	.cfi_restore_state
	mov	esi, eax
	jmp	.L204
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.globl	atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi
	jmp	.L215
.L216:
	add	rbx, 1
.L215:
	movzx	ebp, BYTE PTR [rbx]
	movsx	edi, bpl
	call	isspace
	test	eax, eax
	jne	.L216
	cmp	bpl, 43
	je	.L217
	cmp	bpl, 45
	jne	.L218
	mov	eax, 1
.L217:
	add	rbx, 1
.L218:
	movzx	ecx, BYTE PTR [rbx]
	movsx	esi, cl
	sub	esi, 48
	mov	edx, 0
	cmp	esi, 9
	ja	.L220
	.p2align 6
.L219:
	lea	rdx, [rdx+rdx*4]
	add	rdx, rdx
	add	rbx, 1
	sub	ecx, 48
	movsx	rcx, cl
	sub	rdx, rcx
	movzx	ecx, BYTE PTR [rbx]
	movsx	esi, cl
	sub	esi, 48
	cmp	esi, 9
	jbe	.L219
.L220:
	mov	rcx, rdx
	neg	rcx
	test	eax, eax
	cmove	rdx, rcx
	mov	rax, rdx
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB49:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi
	jmp	.L227
.L228:
	add	rbx, 1
.L227:
	movzx	ebp, BYTE PTR [rbx]
	movsx	edi, bpl
	call	isspace
	test	eax, eax
	jne	.L228
	cmp	bpl, 43
	je	.L229
	cmp	bpl, 45
	jne	.L230
	mov	eax, 1
.L229:
	add	rbx, 1
.L230:
	movzx	ecx, BYTE PTR [rbx]
	movsx	esi, cl
	sub	esi, 48
	mov	edx, 0
	cmp	esi, 9
	ja	.L232
	.p2align 6
.L231:
	lea	rdx, [rdx+rdx*4]
	add	rdx, rdx
	add	rbx, 1
	sub	ecx, 48
	movsx	rcx, cl
	sub	rdx, rcx
	movzx	ecx, BYTE PTR [rbx]
	movsx	esi, cl
	sub	esi, 48
	cmp	esi, 9
	jbe	.L231
.L232:
	mov	rcx, rdx
	neg	rcx
	test	eax, eax
	cmove	rdx, rcx
	mov	rax, rdx
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE49:
	.size	atoll, .-atoll
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
	mov	r14, rsi
	mov	rbx, rdx
	mov	r13, rcx
	mov	r15, r8
	test	rdx, rdx
	jne	.L241
	mov	ebp, 0
	jmp	.L238
.L243:
	mov	rbx, r12
.L240:
	test	rbx, rbx
	je	.L246
.L241:
	mov	r12, rbx
	shr	r12
	mov	rbp, r12
	imul	rbp, r13
	add	rbp, r14
	mov	rsi, rbp
	mov	rdi, QWORD PTR [rsp+8]
	call	r15
	test	eax, eax
	js	.L243
	jle	.L238
	lea	r14, [rbp+0+r13]
	sub	rbx, 1
	sub	rbx, r12
	jmp	.L240
.L246:
	mov	ebp, 0
.L238:
	mov	rax, rbp
	add	rsp, 24
	.cfi_def_cfa_offset 56
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
	mov	r15, rdi
	mov	r13, rsi
	mov	r12, rcx
	mov	r14, r8
	mov	QWORD PTR [rsp+8], r9
	mov	ebp, edx
	test	edx, edx
	jne	.L250
	mov	ebx, 0
	jmp	.L247
.L249:
	sar	ebp
	je	.L254
.L250:
	mov	ebx, ebp
	sar	ebx
	movsx	rbx, ebx
	imul	rbx, r12
	add	rbx, r13
	mov	rdx, QWORD PTR [rsp+8]
	mov	rsi, rbx
	mov	rdi, r15
	call	r14
	test	eax, eax
	je	.L247
	jle	.L249
	lea	r13, [rbx+r12]
	sub	ebp, 1
	jmp	.L249
.L254:
	mov	ebx, 0
.L247:
	mov	rax, rbx
	add	rsp, 24
	.cfi_def_cfa_offset 56
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
	.globl	labs
	.type	labs, @function
labs:
.LFB55:
	.cfi_startproc
	mov	rax, rdi
	neg	rax
	cmovs	rax, rdi
	ret
	.cfi_endproc
.LFE55:
	.size	labs, .-labs
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
	.globl	llabs
	.type	llabs, @function
llabs:
.LFB57:
	.cfi_startproc
	mov	rax, rdi
	neg	rax
	cmovs	rax, rdi
	ret
	.cfi_endproc
.LFE57:
	.size	llabs, .-llabs
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
	.globl	wcschr
	.type	wcschr, @function
wcschr:
.LFB59:
	.cfi_startproc
	mov	rax, rdi
	mov	edx, DWORD PTR [rdi]
	cmp	esi, edx
	setne	dil
	test	edx, edx
	setne	cl
	test	dil, cl
	je	.L263
	.p2align 5
.L264:
	add	rax, 4
	mov	edx, DWORD PTR [rax]
	cmp	edx, esi
	setne	dil
	test	edx, edx
	setne	cl
	test	dil, cl
	jne	.L264
.L263:
	test	edx, edx
	mov	edx, 0
	cmove	rax, rdx
	ret
	.cfi_endproc
.LFE59:
	.size	wcschr, .-wcschr
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60:
	.cfi_startproc
	mov	r8d, DWORD PTR [rdi]
	mov	ecx, DWORD PTR [rsi]
	test	r8d, r8d
	setne	al
	cmp	r8d, ecx
	sete	dl
	and	eax, edx
	test	ecx, ecx
	setne	dl
	test	al, dl
	je	.L268
	mov	eax, 4
	.p2align 6
.L269:
	mov	r8d, DWORD PTR [rdi+rax]
	mov	ecx, DWORD PTR [rsi+rax]
	test	r8d, r8d
	setne	dl
	cmp	r8d, ecx
	sete	r9b
	and	edx, r9d
	test	ecx, ecx
	setne	r9b
	add	rax, 4
	test	dl, r9b
	jne	.L269
.L268:
	mov	eax, -1
	cmp	r8d, ecx
	jl	.L267
	setg	al
	movzx	eax, al
.L267:
	ret
	.cfi_endproc
.LFE60:
	.size	wcscmp, .-wcscmp
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB61:
	.cfi_startproc
	mov	rax, rdi
	mov	edx, 0
	.p2align 4
.L274:
	mov	ecx, DWORD PTR [rsi+rdx]
	mov	DWORD PTR [rax+rdx], ecx
	add	rdx, 4
	test	ecx, ecx
	jne	.L274
	ret
	.cfi_endproc
.LFE61:
	.size	wcscpy, .-wcscpy
	.globl	wcslen
	.type	wcslen, @function
wcslen:
.LFB62:
	.cfi_startproc
	cmp	DWORD PTR [rdi], 0
	je	.L279
	mov	rax, rdi
	.p2align 4
.L278:
	add	rax, 4
	cmp	DWORD PTR [rax], 0
	jne	.L278
.L277:
	sub	rax, rdi
	sar	rax, 2
	ret
.L279:
	mov	rax, rdi
	jmp	.L277
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
	test	rdx, rdx
	je	.L290
	.p2align 6
.L282:
	mov	r8d, DWORD PTR [rdi]
	mov	ecx, DWORD PTR [rsi]
	test	r8d, r8d
	setne	al
	cmp	r8d, ecx
	sete	r8b
	and	eax, r8d
	test	ecx, ecx
	setne	cl
	test	al, cl
	je	.L291
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	jne	.L282
	mov	eax, 0
	ret
.L290:
	mov	eax, 0
	ret
.L286:
	cmp	edx, eax
	setg	al
	movzx	eax, al
	ret
.L291:
	mov	edx, DWORD PTR [rdi]
	mov	eax, DWORD PTR [rsi]
	cmp	edx, eax
	jge	.L286
	mov	eax, -1
	ret
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	test	rdx, rdx
	je	.L298
	.p2align 4
.L293:
	cmp	DWORD PTR [rdi], esi
	je	.L299
	add	rdi, 4
	sub	rdx, 1
	jne	.L293
	mov	eax, 0
	ret
.L298:
	mov	eax, 0
	ret
.L299:
	mov	rax, rdi
	ret
	.cfi_endproc
.LFE64:
	.size	wmemchr, .-wmemchr
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65:
	.cfi_startproc
	test	rdx, rdx
	je	.L309
	.p2align 5
.L301:
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	jne	.L310
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	jne	.L301
	mov	eax, 0
	ret
.L309:
	mov	eax, 0
	ret
.L305:
	cmp	edx, eax
	setg	al
	movzx	eax, al
	ret
.L310:
	mov	edx, DWORD PTR [rdi]
	mov	eax, DWORD PTR [rsi]
	cmp	edx, eax
	jge	.L305
	mov	eax, -1
	ret
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66:
	.cfi_startproc
	mov	rax, rdi
	test	rdx, rdx
	je	.L312
	mov	ecx, 0
	.p2align 5
.L313:
	mov	r8d, DWORD PTR [rsi+rcx*4]
	mov	DWORD PTR [rax+rcx*4], r8d
	add	rcx, 1
	cmp	rcx, rdx
	jne	.L313
.L312:
	ret
	.cfi_endproc
.LFE66:
	.size	wmemcpy, .-wmemcpy
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67:
	.cfi_startproc
	mov	rax, rdi
	cmp	rdi, rsi
	je	.L316
	sub	rdi, rsi
	lea	rcx, [0+rdx*4]
	cmp	rdi, rcx
	jb	.L317
	mov	ecx, 0
	test	rdx, rdx
	je	.L324
	.p2align 4
.L318:
	mov	edi, DWORD PTR [rsi+rcx*4]
	mov	DWORD PTR [rax+rcx*4], edi
	add	rcx, 1
	cmp	rcx, rdx
	jne	.L318
.L316:
	ret
.L324:
	ret
.L317:
	lea	rcx, [rdx-1]
	test	rdx, rdx
	je	.L316
	.p2align 4
.L319:
	mov	edx, DWORD PTR [rsi+rcx*4]
	mov	DWORD PTR [rax+rcx*4], edx
	sub	rcx, 1
	cmp	rcx, -1
	jne	.L319
	ret
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	mov	rax, rdi
	test	rdx, rdx
	je	.L326
	mov	ecx, 0
	.p2align 4
.L327:
	mov	DWORD PTR [rax+rcx*4], esi
	add	rcx, 1
	cmp	rcx, rdx
	jne	.L327
.L326:
	ret
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	cmp	rdi, rsi
	jnb	.L330
	test	rdx, rdx
	je	.L329
	.p2align 4
.L332:
	movzx	eax, BYTE PTR [rdi-1+rdx]
	mov	BYTE PTR [rsi-1+rdx], al
	sub	rdx, 1
	jne	.L332
	ret
.L330:
	je	.L329
	test	rdx, rdx
	je	.L329
	mov	eax, 0
	.p2align 4
.L333:
	movzx	ecx, BYTE PTR [rdi+rax]
	mov	BYTE PTR [rsi+rax], cl
	add	rax, 1
	cmp	rax, rdx
	jne	.L333
.L329:
	ret
	.cfi_endproc
.LFE69:
	.size	bcopy, .-bcopy
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
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB74:
	.cfi_startproc
	mov	rax, rdi
	mov	ecx, esi
	rol	rax, cl
	ret
	.cfi_endproc
.LFE74:
	.size	rotl_sz, .-rotl_sz
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB75:
	.cfi_startproc
	mov	rax, rdi
	mov	ecx, esi
	ror	rax, cl
	ret
	.cfi_endproc
.LFE75:
	.size	rotr_sz, .-rotr_sz
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
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB80:
	.cfi_startproc
	mov	eax, edi
	movzx	edx, ah
	sal	eax, 8
	or	eax, edx
	ret
	.cfi_endproc
.LFE80:
	.size	bswap_16, .-bswap_16
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB81:
	.cfi_startproc
	mov	eax, edi
	shr	eax, 24
	mov	ecx, edi
	and	ecx, 16711680
	shr	rcx, 8
	mov	edx, edi
	sal	edx, 8
	and	edx, 16711680
	sal	edi, 24
	or	edx, edi
	or	eax, edx
	or	eax, ecx
	ret
	.cfi_endproc
.LFE81:
	.size	bswap_32, .-bswap_32
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB82:
	.cfi_startproc
	mov	rdx, rdi
	mov	r10, rdi
	shr	r10, 56
	mov	r9, rdi
	shr	r9, 40
	and	r9d, 65280
	mov	r8, rdi
	shr	r8, 24
	and	r8d, 16711680
	shr	rdi, 8
	and	edi, 4278190080
	mov	rsi, rdx
	sal	rsi, 8
	movabs	rax, 1095216660480
	and	rsi, rax
	mov	rcx, rdx
	sal	rcx, 24
	movabs	rax, 280375465082880
	and	rcx, rax
	mov	rax, rdx
	sal	rax, 40
	movabs	r11, 71776119061217280
	and	rax, r11
	sal	rdx, 56
	or	rdx, r10
	or	rdx, r9
	or	rdx, r8
	or	rdx, rdi
	or	rdx, rsi
	or	rdx, rcx
	or	rax, rdx
	ret
	.cfi_endproc
.LFE82:
	.size	bswap_64, .-bswap_64
	.globl	ffs
	.type	ffs, @function
ffs:
.LFB83:
	.cfi_startproc
	mov	eax, 0
	.p2align 4
.L352:
	bt	edi, eax
	jc	.L354
	add	eax, 1
	cmp	eax, 32
	jne	.L352
	mov	eax, 0
	ret
.L354:
	add	eax, 1
	ret
	.cfi_endproc
.LFE83:
	.size	ffs, .-ffs
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	mov	eax, edi
	test	edi, edi
	je	.L355
	and	eax, 1
	jne	.L355
	mov	eax, 1
	.p2align 4
.L357:
	sar	edi
	add	eax, 1
	test	dil, 1
	je	.L357
.L355:
	ret
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs, .-libiberty_ffs
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB85:
	.cfi_startproc
	mov	eax, 1
	movss	xmm1, DWORD PTR .LC3[rip]
	comiss	xmm1, xmm0
	ja	.L360
	comiss	xmm0, DWORD PTR .LC4[rip]
	seta	al
	movzx	eax, al
.L360:
	ret
	.cfi_endproc
.LFE85:
	.size	gl_isinff, .-gl_isinff
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB86:
	.cfi_startproc
	mov	eax, 1
	movsd	xmm1, QWORD PTR .LC5[rip]
	comisd	xmm1, xmm0
	ja	.L363
	comisd	xmm0, QWORD PTR .LC6[rip]
	seta	al
	movzx	eax, al
.L363:
	ret
	.cfi_endproc
.LFE86:
	.size	gl_isinfd, .-gl_isinfd
	.globl	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB87:
	.cfi_startproc
	fld	TBYTE PTR [rsp+8]
	mov	eax, 1
	fld	TBYTE PTR .LC7[rip]
	fcomip	st, st(1)
	ja	.L369
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	.L366
.L369:
	fstp	st(0)
.L366:
	ret
	.cfi_endproc
.LFE87:
	.size	gl_isinfl, .-gl_isinfl
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
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB89:
	.cfi_startproc
	ucomiss	xmm0, xmm0
	jp	.L372
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm1, xmm0
	jp	.L378
	jne	.L378
.L372:
	ret
.L378:
	movss	xmm1, DWORD PTR .LC9[rip]
	test	edi, edi
	jns	.L376
	movss	xmm1, DWORD PTR .LC10[rip]
	jmp	.L376
	.p2align 5
.L375:
	mov	eax, edi
	shr	eax, 31
	add	eax, edi
	sar	eax
	mov	edi, eax
	je	.L372
	mulss	xmm1, xmm1
.L376:
	test	dil, 1
	je	.L375
	mulss	xmm0, xmm1
	jmp	.L375
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB90:
	.cfi_startproc
	ucomisd	xmm0, xmm0
	jp	.L380
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm1, xmm0
	jp	.L386
	jne	.L386
.L380:
	ret
.L386:
	movsd	xmm1, QWORD PTR .LC11[rip]
	test	edi, edi
	jns	.L384
	movsd	xmm1, QWORD PTR .LC12[rip]
	jmp	.L384
	.p2align 5
.L383:
	mov	eax, edi
	shr	eax, 31
	add	eax, edi
	sar	eax
	mov	edi, eax
	je	.L380
	mulsd	xmm1, xmm1
.L384:
	test	dil, 1
	je	.L383
	mulsd	xmm0, xmm1
	jmp	.L383
	.cfi_endproc
.LFE90:
	.size	ldexp, .-ldexp
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB91:
	.cfi_startproc
	fld	TBYTE PTR [rsp+8]
	fucomi	st, st(0)
	jp	.L388
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L394
	jne	.L394
	jmp	.L388
.L396:
	fstp	st(0)
.L388:
	ret
.L394:
	test	edi, edi
	js	.L395
	fld	DWORD PTR .LC9[rip]
	jmp	.L392
.L395:
	fld	DWORD PTR .LC10[rip]
	jmp	.L392
	.p2align 5
.L391:
	mov	eax, edi
	shr	eax, 31
	add	eax, edi
	sar	eax
	mov	edi, eax
	je	.L396
	fmul	st, st(0)
.L392:
	test	dil, 1
	je	.L391
	fmul	st(1), st
	jmp	.L391
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	mov	rax, rdi
	test	rdx, rdx
	je	.L398
	add	rdx, rsi
	mov	rcx, rdi
	.p2align 5
.L399:
	add	rsi, 1
	add	rcx, 1
	movzx	r8d, BYTE PTR [rcx-1]
	xor	r8b, BYTE PTR [rsi-1]
	mov	BYTE PTR [rcx-1], r8b
	cmp	rdx, rsi
	jne	.L399
.L398:
	ret
	.cfi_endproc
.LFE92:
	.size	memxor, .-memxor
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB93:
	.cfi_startproc
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	r12, rdi
	mov	rbp, rsi
	mov	rbx, rdx
	call	strlen
	add	rax, r12
	test	rbx, rbx
	je	.L403
	.p2align 5
.L402:
	movzx	edx, BYTE PTR [rbp+0]
	mov	BYTE PTR [rax], dl
	test	dl, dl
	je	.L405
	add	rbp, 1
	add	rax, 1
	sub	rbx, 1
	jne	.L402
.L403:
	mov	BYTE PTR [rax], 0
.L405:
	mov	rax, r12
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	strncat, .-strncat
	.globl	strnlen
	.type	strnlen, @function
strnlen:
.LFB94:
	.cfi_startproc
	mov	eax, 0
	test	rsi, rsi
	je	.L415
.L409:
	cmp	BYTE PTR [rdi+rax], 0
	jne	.L416
.L408:
	ret
.L415:
	mov	rax, rsi
	ret
.L416:
	add	rax, 1
	cmp	rsi, rax
	jne	.L409
	mov	rax, rsi
	ret
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
	mov	rax, rdi
	movzx	r8d, BYTE PTR [rdi]
	test	r8b, r8b
	je	.L424
.L418:
	mov	rdx, rsi
	.p2align 4
.L421:
	movzx	ecx, BYTE PTR [rdx]
	test	cl, cl
	je	.L425
	add	rdx, 1
	cmp	cl, r8b
	jne	.L421
.L419:
	ret
.L424:
	mov	eax, 0
	ret
.L425:
	add	rax, 1
	movzx	r8d, BYTE PTR [rax]
	test	r8b, r8b
	jne	.L418
	mov	eax, 0
	ret
	.cfi_endproc
.LFE95:
	.size	strpbrk, .-strpbrk
	.globl	strrchr
	.type	strrchr, @function
strrchr:
.LFB96:
	.cfi_startproc
	mov	edx, 0
	.p2align 5
.L428:
	movzx	eax, BYTE PTR [rdi]
	movsx	ecx, al
	cmp	ecx, esi
	cmove	rdx, rdi
	add	rdi, 1
	test	al, al
	jne	.L428
	mov	rax, rdx
	ret
	.cfi_endproc
.LFE96:
	.size	strrchr, .-strrchr
	.globl	strstr
	.type	strstr, @function
strstr:
.LFB97:
	.cfi_startproc
	push	r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	push	rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	mov	rbp, rdi
	mov	r12, rsi
	mov	rdi, rsi
	call	strlen
	mov	rbx, rbp
	test	rax, rax
	je	.L431
	mov	r13, rax
	movsx	r14d, BYTE PTR [r12]
.L433:
	mov	esi, r14d
	mov	rdi, rbp
	call	strchr
	mov	rbx, rax
	test	rax, rax
	je	.L431
	mov	rdx, r13
	mov	rsi, r12
	mov	rdi, rbx
	call	strncmp
	test	eax, eax
	je	.L431
	lea	rbp, [rbx+1]
	jmp	.L433
.L431:
	mov	rax, rbx
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	rbp
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r13
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	strstr, .-strstr
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
	pxor	xmm2, xmm2
	comisd	xmm2, xmm0
	ja	.L447
	pxor	xmm2, xmm2
	comisd	xmm0, xmm2
	jbe	.L441
	comisd	xmm2, xmm1
	ja	.L440
.L441:
	ret
.L447:
	comisd	xmm1, xmm2
	jbe	.L441
.L440:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	ret
	.cfi_endproc
.LFE98:
	.size	copysign, .-copysign
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB99:
	.cfi_startproc
	mov	rax, rdi
	test	rcx, rcx
	je	.L458
	push	r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	push	rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	mov	rbx, rdi
	cmp	rsi, rcx
	jb	.L453
	sub	rsi, rcx
	add	rsi, rdi
	mov	rbp, rsi
	jc	.L454
	movzx	r14d, BYTE PTR [rdx]
	lea	r13, [rcx-1]
	lea	r12, [rdx+1]
	jmp	.L451
	.p2align 4
.L450:
	add	rbx, 1
	cmp	rbp, rbx
	jb	.L461
.L451:
	cmp	BYTE PTR [rbx], r14b
	jne	.L450
	lea	rdi, [rbx+1]
	mov	rdx, r13
	mov	rsi, r12
	call	memcmp
	test	eax, eax
	jne	.L450
	mov	rax, rbx
	jmp	.L448
.L461:
	mov	eax, 0
.L448:
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	pop	rbp
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r13
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.L453:
	.cfi_restore_state
	mov	eax, 0
	jmp	.L448
.L454:
	mov	eax, 0
	jmp	.L448
.L458:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	ret
	.cfi_endproc
.LFE99:
	.size	memmem, .-memmem
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB100:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdx
	call	memcpy
	add	rax, rbx
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	mempcpy, .-mempcpy
	.globl	frexp
	.type	frexp, @function
frexp:
.LFB101:
	.cfi_startproc
	pxor	xmm1, xmm1
	mov	edx, 0
	comisd	xmm1, xmm0
	ja	.L482
.L465:
	mov	eax, 0
	comisd	xmm0, QWORD PTR .LC14[rip]
	jb	.L481
	movsd	xmm2, QWORD PTR .LC12[rip]
	movsd	xmm1, QWORD PTR .LC14[rip]
	.p2align 4
.L469:
	add	eax, 1
	mulsd	xmm0, xmm2
	comisd	xmm0, xmm1
	jnb	.L469
.L470:
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	je	.L472
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L472:
	ret
.L482:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	mov	edx, 1
	jmp	.L465
.L481:
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	setp	cl
	mov	eax, 1
	cmovne	ecx, eax
	movsd	xmm1, QWORD PTR .LC12[rip]
	comisd	xmm1, xmm0
	seta	sil
	mov	eax, 0
	test	cl, sil
	je	.L470
	.p2align 4
.L471:
	sub	eax, 1
	addsd	xmm0, xmm0
	comisd	xmm1, xmm0
	ja	.L471
	jmp	.L470
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	mov	rdx, rdi
	test	rdi, rdi
	je	.L486
	mov	ecx, 0
	.p2align 5
.L485:
	mov	rax, rdx
	and	eax, 1
	neg	rax
	and	rax, rsi
	add	rcx, rax
	add	rsi, rsi
	shr	rdx
	jne	.L485
.L483:
	mov	rax, rcx
	ret
.L486:
	mov	ecx, 0
	jmp	.L483
	.cfi_endproc
.LFE102:
	.size	__muldi3, .-__muldi3
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB103:
	.cfi_startproc
	mov	eax, 1
	cmp	esi, edi
	jnb	.L496
	.p2align 5
.L489:
	test	esi, esi
	js	.L496
	add	esi, esi
	cmp	esi, edi
	setb	r8b
	add	eax, eax
	setne	cl
	test	r8b, cl
	jne	.L489
	test	eax, eax
	je	.L502
.L496:
	mov	ecx, 0
	jmp	.L494
	.p2align 4
.L493:
	shr	esi
	shr	eax
	je	.L495
.L494:
	cmp	edi, esi
	jb	.L493
	sub	edi, esi
	or	ecx, eax
	jmp	.L493
.L502:
	mov	ecx, eax
.L495:
	test	rdx, rdx
	cmovne	ecx, edi
	mov	eax, ecx
	ret
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	mov	edx, edi
	sar	dl, 7
	mov	eax, edx
	xor	eax, edi
	mov	ecx, 7
	cmp	dil, dl
	je	.L503
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	ecx, [rax-1]
.L503:
	mov	eax, ecx
	ret
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2, .-__clrsbqi2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	mov	rdx, rdi
	sar	rdx, 63
	mov	rax, rdi
	xor	rax, rdx
	mov	ecx, 63
	cmp	rdi, rdx
	je	.L506
	bsr	rax, rax
	xor	rax, 63
	lea	ecx, [rax-1]
.L506:
	mov	eax, ecx
	ret
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2, .-__clrsbdi2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106:
	.cfi_startproc
	test	edi, edi
	je	.L512
	mov	edx, 0
	.p2align 5
.L511:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	edx, eax
	add	esi, esi
	shr	edi
	jne	.L511
.L509:
	mov	eax, edx
	ret
.L512:
	mov	edx, edi
	jmp	.L509
	.cfi_endproc
.LFE106:
	.size	__mulsi3, .-__mulsi3
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107:
	.cfi_startproc
	mov	r8d, edx
	shr	r8d, 3
	mov	eax, edx
	and	eax, -8
	cmp	rdi, rsi
	jnb	.L515
.L518:
	lea	r9d, [0+r8*8]
	mov	ecx, 0
	test	r8d, r8d
	je	.L517
	.p2align 5
.L521:
	mov	r8, QWORD PTR [rsi+rcx]
	mov	QWORD PTR [rdi+rcx], r8
	add	rcx, 8
	cmp	r9, rcx
	jne	.L521
.L517:
	cmp	eax, edx
	jnb	.L514
	mov	eax, eax
	.p2align 4
.L522:
	movzx	ecx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], cl
	add	rax, 1
	cmp	eax, edx
	jb	.L522
	ret
.L515:
	mov	ecx, edx
	add	rcx, rsi
	cmp	rcx, rdi
	jb	.L518
	lea	eax, [rdx-1]
	test	edx, edx
	je	.L529
	.p2align 5
.L523:
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], dl
	sub	rax, 1
	cmp	rax, -1
	jne	.L523
.L514:
	ret
.L529:
	ret
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	mov	rcx, rdi
	mov	edi, edx
	shr	edi
	cmp	rcx, rsi
	jnb	.L531
.L534:
	lea	r8d, [rdi+rdi]
	mov	eax, 0
	test	edi, edi
	je	.L533
	.p2align 5
.L537:
	movzx	edi, WORD PTR [rsi+rax]
	mov	WORD PTR [rcx+rax], di
	add	rax, 2
	cmp	rax, r8
	jne	.L537
.L533:
	test	dl, 1
	je	.L530
	lea	eax, [rdx-1]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	ret
.L531:
	mov	eax, edx
	add	rax, rsi
	cmp	rax, rcx
	jb	.L534
	lea	eax, [rdx-1]
	test	edx, edx
	je	.L543
	.p2align 5
.L538:
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	cmp	rax, -1
	jne	.L538
.L530:
	ret
.L543:
	ret
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	mov	r8d, edx
	shr	r8d, 2
	mov	eax, edx
	and	eax, -4
	cmp	rdi, rsi
	jnb	.L545
.L548:
	lea	r9d, [0+r8*4]
	mov	ecx, 0
	test	r8d, r8d
	je	.L547
	.p2align 5
.L551:
	mov	r8d, DWORD PTR [rsi+rcx]
	mov	DWORD PTR [rdi+rcx], r8d
	add	rcx, 4
	cmp	r9, rcx
	jne	.L551
.L547:
	cmp	eax, edx
	jnb	.L544
	mov	eax, eax
	.p2align 4
.L552:
	movzx	ecx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], cl
	add	rax, 1
	cmp	eax, edx
	jb	.L552
	ret
.L545:
	mov	ecx, edx
	add	rcx, rsi
	cmp	rcx, rdi
	jb	.L548
	lea	eax, [rdx-1]
	test	edx, edx
	je	.L559
	.p2align 5
.L553:
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], dl
	sub	rax, 1
	cmp	rax, -1
	jne	.L553
.L544:
	ret
.L559:
	ret
	.cfi_endproc
.LFE109:
	.size	__cmovw, .-__cmovw
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
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
.LFB113:
	.cfi_startproc
	test	rdi, rdi
	js	.L568
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdi
	ret
.L568:
	mov	rax, rdi
	shr	rax
	and	edi, 1
	or	rax, rdi
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	addsd	xmm0, xmm0
	ret
	.cfi_endproc
.LFE113:
	.size	__ulltod, .-__ulltod
	.globl	__ulltof
	.type	__ulltof, @function
__ulltof:
.LFB114:
	.cfi_startproc
	test	rdi, rdi
	js	.L571
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdi
	ret
.L571:
	mov	rax, rdi
	shr	rax
	and	edi, 1
	or	rax, rdi
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
	ret
	.cfi_endproc
.LFE114:
	.size	__ulltof, .-__ulltof
	.globl	__umodi
	.type	__umodi, @function
__umodi:
.LFB115:
	.cfi_startproc
	mov	eax, edi
	mov	edx, 0
	div	esi
	mov	eax, edx
	ret
	.cfi_endproc
.LFE115:
	.size	__umodi, .-__umodi
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB116:
	.cfi_startproc
	mov	eax, 0
	movzx	edi, di
	mov	ecx, 15
	.p2align 5
.L576:
	mov	edx, ecx
	sub	edx, eax
	bt	edi, edx
	jc	.L574
	add	eax, 1
	cmp	eax, 16
	jne	.L576
.L574:
	ret
	.cfi_endproc
.LFE116:
	.size	__clzhi2, .-__clzhi2
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117:
	.cfi_startproc
	mov	eax, 0
	movzx	edi, di
	.p2align 4
.L580:
	bt	edi, eax
	jc	.L578
	add	eax, 1
	cmp	eax, 16
	jne	.L580
.L578:
	ret
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
	comiss	xmm0, DWORD PTR .LC15[rip]
	jnb	.L588
	cvttss2si	rax, xmm0
	ret
.L588:
	subss	xmm0, DWORD PTR .LC15[rip]
	cvttss2si	rax, xmm0
	add	rax, 32768
	ret
	.cfi_endproc
.LFE118:
	.size	__fixunssfsi, .-__fixunssfsi
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB119:
	.cfi_startproc
	mov	eax, 0
	mov	ecx, 0
	movzx	edi, di
	.p2align 5
.L590:
	mov	edx, edi
	sar	edx, cl
	and	edx, 1
	add	eax, edx
	add	ecx, 1
	cmp	ecx, 16
	jne	.L590
	and	eax, 1
	ret
	.cfi_endproc
.LFE119:
	.size	__parityhi2, .-__parityhi2
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB120:
	.cfi_startproc
	mov	edx, 0
	mov	ecx, 0
	movzx	edi, di
	.p2align 5
.L593:
	mov	eax, edi
	sar	eax, cl
	and	eax, 1
	add	edx, eax
	add	ecx, 1
	cmp	ecx, 16
	jne	.L593
	mov	eax, edx
	ret
	.cfi_endproc
.LFE120:
	.size	__popcounthi2, .-__popcounthi2
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB121:
	.cfi_startproc
	test	edi, edi
	je	.L598
	mov	edx, 0
	.p2align 5
.L597:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	edx, eax
	add	esi, esi
	shr	edi
	jne	.L597
.L595:
	mov	eax, edx
	ret
.L598:
	mov	edx, edi
	jmp	.L595
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	mov	edx, edi
	test	edi, edi
	je	.L600
	test	esi, esi
	je	.L604
	mov	edx, 0
	.p2align 5
.L602:
	mov	eax, esi
	and	eax, 1
	neg	eax
	and	eax, edi
	add	edx, eax
	add	edi, edi
	shr	esi
	jne	.L602
.L600:
	mov	eax, edx
	ret
.L604:
	mov	edx, esi
	jmp	.L600
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	mov	eax, 1
	cmp	esi, edi
	jnb	.L614
	.p2align 5
.L607:
	test	esi, esi
	js	.L614
	add	esi, esi
	cmp	esi, edi
	setb	r8b
	add	eax, eax
	setne	cl
	test	r8b, cl
	jne	.L607
	test	eax, eax
	je	.L620
.L614:
	mov	ecx, 0
	jmp	.L612
	.p2align 4
.L611:
	shr	esi
	shr	eax
	je	.L613
.L612:
	cmp	edi, esi
	jb	.L611
	sub	edi, esi
	or	ecx, eax
	jmp	.L611
.L620:
	mov	ecx, eax
.L613:
	test	edx, edx
	cmovne	ecx, edi
	mov	eax, ecx
	ret
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4, .-__udivmodsi4
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	mov	eax, -1
	comiss	xmm1, xmm0
	ja	.L621
	comiss	xmm0, xmm1
	seta	al
	movzx	eax, al
.L621:
	ret
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	mov	eax, -1
	comisd	xmm1, xmm0
	ja	.L624
	comisd	xmm0, xmm1
	seta	al
	movzx	eax, al
.L624:
	ret
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
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
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB128:
	.cfi_startproc
	test	esi, esi
	js	.L637
	je	.L635
	mov	r9d, 0
.L631:
	mov	edx, 1
	mov	ecx, 0
	.p2align 6
.L633:
	mov	eax, esi
	and	eax, 1
	neg	eax
	and	eax, edi
	add	ecx, eax
	add	edi, edi
	sar	esi
	setne	r8b
	cmp	dl, 31
	setbe	al
	add	edx, 1
	test	r8b, al
	jne	.L633
.L632:
	mov	eax, ecx
	neg	eax
	test	r9d, r9d
	cmovne	ecx, eax
	mov	eax, ecx
	ret
.L637:
	neg	esi
	mov	r9d, 1
	jmp	.L631
.L635:
	mov	r9d, esi
	mov	ecx, esi
	jmp	.L632
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
	test	rdi, rdi
	js	.L646
	test	rsi, rsi
	js	.L647
	mov	edx, 0
	call	__udivmodsi4
	mov	eax, eax
	ret
.L646:
	neg	rdi
	test	rsi, rsi
	js	.L648
	mov	edx, 0
	call	__udivmodsi4
	mov	eax, eax
.L642:
	neg	rax
	ret
.L647:
	neg	esi
	mov	edx, 0
	call	__udivmodsi4
	mov	eax, eax
	jmp	.L642
.L648:
	neg	esi
	mov	edx, 0
	call	__udivmodsi4
	mov	eax, eax
	ret
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
	test	rdi, rdi
	js	.L652
	mov	rax, rsi
	neg	rax
	cmovns	rsi, rax
	mov	edx, 1
	call	__udivmodsi4
	mov	eax, eax
	ret
.L652:
	mov	rax, rsi
	neg	rax
	cmovns	rsi, rax
	neg	edi
	mov	edx, 1
	call	__udivmodsi4
	mov	eax, eax
	neg	rax
	ret
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	mov	r8d, edi
	mov	eax, esi
	mov	ecx, 1
	cmp	si, di
	jnb	.L661
	.p2align 5
.L654:
	test	ax, ax
	js	.L661
	add	eax, eax
	cmp	ax, r8w
	setb	dil
	add	cx, cx
	setne	sil
	test	dil, sil
	jne	.L654
	test	cx, cx
	je	.L667
.L661:
	mov	esi, 0
	jmp	.L659
	.p2align 4
.L658:
	shr	ax
	shr	cx
	je	.L660
.L659:
	cmp	r8w, ax
	jb	.L658
	sub	r8d, eax
	or	esi, ecx
	jmp	.L658
.L667:
	mov	esi, ecx
.L660:
	test	edx, edx
	cmovne	esi, r8d
	mov	eax, esi
	ret
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	mov	eax, 1
	cmp	rsi, rdi
	jnb	.L676
	.p2align 5
.L669:
	test	esi, 2147483648
	jne	.L676
	add	rsi, rsi
	cmp	rsi, rdi
	setb	r8b
	add	rax, rax
	setne	cl
	test	r8b, cl
	jne	.L669
	test	rax, rax
	je	.L682
.L676:
	mov	ecx, 0
	jmp	.L674
	.p2align 4
.L673:
	shr	rsi
	shr	rax
	je	.L675
.L674:
	cmp	rdi, rsi
	jb	.L673
	sub	rdi, rsi
	or	rcx, rax
	jmp	.L673
.L682:
	mov	rcx, rax
.L675:
	test	edx, edx
	cmovne	rcx, rdi
	mov	rax, rcx
	ret
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133:
	.cfi_startproc
	test	sil, 32
	je	.L684
	lea	ecx, [rsi-32]
	sal	edi, cl
	mov	eax, 0
.L685:
	sal	rdi, 32
	mov	eax, eax
	or	rax, rdi
.L683:
	ret
.L684:
	mov	rax, rdi
	test	esi, esi
	je	.L683
	mov	ecx, esi
	sal	eax, cl
	mov	rdx, rdi
	sar	rdx, 32
	sal	edx, cl
	mov	ecx, 32
	sub	ecx, esi
	shr	edi, cl
	or	edi, edx
	jmp	.L685
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.globl	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	test	dl, 64
	je	.L689
	lea	ecx, [rdx-64]
	sal	rdi, cl
	mov	eax, 0
.L690:
	mov	rdx, rdi
	ret
.L689:
	test	edx, edx
	je	.L692
	mov	rax, rdi
	mov	ecx, edx
	sal	rax, cl
	sal	rsi, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rdi, cl
	or	rdi, rsi
	jmp	.L690
.L692:
	mov	rax, rdi
	mov	rdx, rsi
	ret
	.cfi_endproc
.LFE134:
	.size	__ashlti3, .-__ashlti3
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135:
	.cfi_startproc
	test	sil, 32
	je	.L694
	sar	rdi, 32
	mov	eax, edi
	sar	eax, 31
	lea	ecx, [rsi-32]
	sar	edi, cl
.L695:
	mov	edi, edi
	sal	rax, 32
	or	rax, rdi
.L693:
	ret
.L694:
	mov	rax, rdi
	test	esi, esi
	je	.L693
	mov	rdx, rdi
	sar	rdx, 32
	mov	eax, edx
	mov	ecx, esi
	sar	eax, cl
	mov	ecx, 32
	sub	ecx, esi
	sal	edx, cl
	mov	ecx, esi
	shr	edi, cl
	or	edi, edx
	jmp	.L695
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.globl	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	test	dl, 64
	je	.L699
	mov	r8, rsi
	sar	r8, 63
	lea	ecx, [rdx-64]
	sar	rsi, cl
.L700:
	mov	rax, rsi
	mov	rdx, r8
	ret
.L699:
	test	edx, edx
	je	.L702
	mov	r8, rsi
	mov	ecx, edx
	sar	r8, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rsi, cl
	mov	ecx, edx
	shr	rdi, cl
	or	rsi, rdi
	jmp	.L700
.L702:
	mov	rax, rdi
	mov	rdx, rsi
	ret
	.cfi_endproc
.LFE136:
	.size	__ashrti3, .-__ashrti3
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137:
	.cfi_startproc
	mov	rdx, rdi
	mov	r10, rdi
	shr	r10, 56
	mov	r9, rdi
	shr	r9, 40
	and	r9d, 65280
	mov	r8, rdi
	shr	r8, 24
	and	r8d, 16711680
	shr	rdi, 8
	and	edi, 4278190080
	mov	rsi, rdx
	sal	rsi, 8
	movabs	rax, 1095216660480
	and	rsi, rax
	mov	rcx, rdx
	sal	rcx, 24
	movabs	rax, 280375465082880
	and	rcx, rax
	mov	rax, rdx
	sal	rax, 40
	movabs	r11, 71776119061217280
	and	rax, r11
	sal	rdx, 56
	or	rdx, r10
	or	rdx, r9
	or	rdx, r8
	or	rdx, rdi
	or	rdx, rsi
	or	rdx, rcx
	or	rax, rdx
	ret
	.cfi_endproc
.LFE137:
	.size	__bswapdi2, .-__bswapdi2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB138:
	.cfi_startproc
	mov	ecx, edi
	shr	ecx, 24
	mov	edx, edi
	shr	edx, 8
	and	edx, 65280
	mov	eax, edi
	sal	eax, 8
	and	eax, 16711680
	sal	edi, 24
	or	ecx, edi
	or	edx, ecx
	or	eax, edx
	ret
	.cfi_endproc
.LFE138:
	.size	__bswapsi2, .-__bswapsi2
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB139:
	.cfi_startproc
	cmp	edi, 65535
	setbe	dl
	movzx	edx, dl
	sal	edx, 4
	mov	ecx, 16
	sub	ecx, edx
	shr	edi, cl
	test	edi, 65280
	sete	al
	movzx	eax, al
	sal	eax, 3
	mov	ecx, 8
	sub	ecx, eax
	shr	edi, cl
	add	edx, eax
	test	dil, -16
	sete	al
	movzx	eax, al
	sal	eax, 2
	mov	ecx, 4
	sub	ecx, eax
	shr	edi, cl
	lea	esi, [rax+rdx]
	test	dil, 12
	sete	dl
	movzx	edx, dl
	add	edx, edx
	mov	eax, 2
	mov	ecx, eax
	sub	ecx, edx
	shr	edi, cl
	add	edx, esi
	sub	eax, edi
	test	dil, 2
	mov	ecx, 0
	cmovne	eax, ecx
	add	eax, edx
	ret
	.cfi_endproc
.LFE139:
	.size	__clzsi2, .-__clzsi2
	.globl	__clzti2
	.type	__clzti2, @function
__clzti2:
.LFB140:
	.cfi_startproc
	mov	rdx, rdi
	test	rsi, rsi
	sete	al
	movzx	eax, al
	lea	edi, [rax-1]
	movsx	rdi, edi
	and	rdi, rsi
	test	rsi, rsi
	mov	ecx, 0
	cmovne	rdx, rcx
	or	rdi, rdx
	bsr	rdi, rdi
	xor	rdi, 63
	sal	eax, 6
	add	eax, edi
	ret
	.cfi_endproc
.LFE140:
	.size	__clzti2, .-__clzti2
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB141:
	.cfi_startproc
	mov	rdx, rdi
	sar	rdx, 32
	mov	rcx, rsi
	sar	rcx, 32
	mov	eax, 0
	cmp	ecx, edx
	jg	.L707
	mov	eax, 2
	jl	.L707
	mov	eax, 0
	cmp	edi, esi
	jb	.L707
	cmp	esi, edi
	setb	al
	movzx	eax, al
	add	eax, 1
.L707:
	ret
	.cfi_endproc
.LFE141:
	.size	__cmpdi2, .-__cmpdi2
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB142:
	.cfi_startproc
	call	__cmpdi2
	sub	eax, 1
	ret
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.globl	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
.LFB143:
	.cfi_startproc
	mov	eax, 0
	cmp	rcx, rsi
	jg	.L714
	mov	eax, 2
	jl	.L714
	mov	eax, 0
	cmp	rdi, rdx
	jb	.L714
	cmp	rdx, rdi
	setb	al
	movzx	eax, al
	add	eax, 1
.L714:
	ret
	.cfi_endproc
.LFE143:
	.size	__cmpti2, .-__cmpti2
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB144:
	.cfi_startproc
	test	di, di
	sete	al
	movzx	eax, al
	sal	eax, 4
	mov	ecx, eax
	shr	edi, cl
	test	dil, dil
	sete	cl
	movzx	ecx, cl
	sal	ecx, 3
	shr	edi, cl
	add	eax, ecx
	test	dil, 15
	sete	cl
	movzx	ecx, cl
	sal	ecx, 2
	shr	edi, cl
	add	eax, ecx
	test	dil, 3
	sete	cl
	movzx	ecx, cl
	add	ecx, ecx
	shr	edi, cl
	and	edi, 3
	add	ecx, eax
	mov	eax, edi
	not	eax
	shr	edi
	mov	edx, 2
	sub	edx, edi
	and	eax, 1
	neg	eax
	and	eax, edx
	add	eax, ecx
	ret
	.cfi_endproc
.LFE144:
	.size	__ctzsi2, .-__ctzsi2
	.globl	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145:
	.cfi_startproc
	mov	rcx, rdi
	mov	rdx, rsi
	test	rdi, rdi
	sete	al
	movzx	eax, al
	mov	esi, 0
	cmovne	rdx, rsi
	lea	edi, [rax-1]
	movsx	rdi, edi
	and	rdi, rcx
	or	rdx, rdi
	rep bsf	rdx, rdx
	sal	eax, 6
	add	eax, edx
	ret
	.cfi_endproc
.LFE145:
	.size	__ctzti2, .-__ctzti2
	.globl	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
.LFB146:
	.cfi_startproc
	test	rdi, rdi
	jne	.L723
	xor	eax, eax
	rep bsf	rax, rsi
	add	eax, 65
	test	rsi, rsi
	mov	edx, 0
	cmove	eax, edx
	ret
.L723:
	rep bsf	rdi, rdi
	lea	eax, [rdi+1]
	ret
	.cfi_endproc
.LFE146:
	.size	__ffsti2, .-__ffsti2
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB147:
	.cfi_startproc
	test	sil, 32
	je	.L727
	shr	rdi, 32
	lea	ecx, [rsi-32]
	shr	edi, cl
	mov	eax, 0
.L728:
	mov	edi, edi
	sal	rax, 32
	or	rax, rdi
.L726:
	ret
.L727:
	mov	rax, rdi
	test	esi, esi
	je	.L726
	mov	rdx, rdi
	shr	rdx, 32
	mov	eax, edx
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 32
	sub	ecx, esi
	sal	edx, cl
	mov	ecx, esi
	shr	edi, cl
	or	edi, edx
	jmp	.L728
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.globl	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	test	dl, 64
	je	.L732
	lea	ecx, [rdx-64]
	shr	rsi, cl
	mov	r8d, 0
.L733:
	mov	rax, rsi
	mov	rdx, r8
	ret
.L732:
	test	edx, edx
	je	.L735
	mov	r8, rsi
	mov	ecx, edx
	shr	r8, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rsi, cl
	mov	ecx, edx
	shr	rdi, cl
	or	rsi, rdi
	jmp	.L733
.L735:
	mov	rax, rdi
	mov	rdx, rsi
	ret
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	movzx	eax, di
	movzx	edx, si
	mov	ecx, eax
	imul	ecx, edx
	mov	r8d, ecx
	shr	r8d, 16
	shr	edi, 16
	imul	edx, edi
	add	edx, r8d
	mov	r8d, edx
	shr	r8d, 16
	movzx	edx, dx
	movzx	ecx, cx
	shr	esi, 16
	imul	eax, esi
	add	eax, edx
	mov	r9d, eax
	sal	r9d, 16
	shr	eax, 16
	imul	edi, esi
	lea	edx, [r8+rdi]
	lea	edx, [rax+rdx]
	sal	rdx, 32
	lea	eax, [rcx+r9]
	or	rax, rdx
	ret
	.cfi_endproc
.LFE149:
	.size	__muldsi3, .-__muldsi3
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB150:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbp, rdi
	mov	rbx, rsi
	call	__muldsi3
	mov	rcx, rax
	sar	rcx, 32
	mov	rdx, rbp
	sar	rdx, 32
	imul	edx, ebx
	sar	rbx, 32
	imul	ebx, ebp
	add	edx, ebx
	lea	edx, [rdx+rcx]
	sal	rdx, 32
	mov	eax, eax
	or	rax, rdx
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.globl	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151:
	.cfi_startproc
	mov	eax, edi
	mov	edx, esi
	mov	rcx, rax
	imul	rcx, rdx
	mov	r8, rcx
	shr	r8, 32
	shr	rdi, 32
	imul	rdx, rdi
	add	rdx, r8
	mov	r8, rdx
	shr	r8, 32
	mov	edx, edx
	mov	ecx, ecx
	shr	rsi, 32
	imul	rax, rsi
	add	rax, rdx
	mov	rdx, rax
	sal	rdx, 32
	add	rcx, rdx
	shr	rax, 32
	imul	rdi, rsi
	lea	rdx, [r8+rdi]
	add	rax, rdx
	mov	rdx, rax
	mov	rax, rcx
	ret
	.cfi_endproc
.LFE151:
	.size	__mulddi3, .-__mulddi3
	.globl	__multi3
	.type	__multi3, @function
__multi3:
.LFB152:
	.cfi_startproc
	push	r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	push	rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	sub	rsp, 8
	.cfi_def_cfa_offset 48
	mov	r12, rdi
	mov	rbx, rsi
	mov	r13, rdx
	mov	rbp, rcx
	mov	rsi, rdx
	call	__mulddi3
	mov	rsi, rax
	imul	rbx, r13
	imul	rbp, r12
	add	rbx, rbp
	add	rdx, rbx
	mov	rax, rsi
	add	rsp, 8
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	rbp
	.cfi_def_cfa_offset 24
	pop	r12
	.cfi_def_cfa_offset 16
	pop	r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE152:
	.size	__multi3, .-__multi3
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
	.globl	__negti2
	.type	__negti2, @function
__negti2:
.LFB154:
	.cfi_startproc
	mov	rax, rdi
	mov	rdx, rsi
	neg	rax
	adc	rdx, 0
	neg	rdx
	ret
	.cfi_endproc
.LFE154:
	.size	__negti2, .-__negti2
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
	and	ecx, 15
	mov	eax, 27030
	sar	eax, cl
	and	eax, 1
	ret
	.cfi_endproc
.LFE155:
	.size	__paritydi2, .-__paritydi2
	.globl	__parityti2
	.type	__parityti2, @function
__parityti2:
.LFB156:
	.cfi_startproc
	xor	rsi, rdi
	mov	rax, rsi
	sar	rax, 32
	xor	esi, eax
	mov	edx, esi
	shr	edx, 16
	xor	edx, esi
	mov	eax, edx
	shr	eax, 8
	xor	eax, edx
	mov	ecx, eax
	shr	ecx, 4
	xor	ecx, eax
	and	ecx, 15
	mov	eax, 27030
	sar	eax, cl
	and	eax, 1
	ret
	.cfi_endproc
.LFE156:
	.size	__parityti2, .-__parityti2
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
	and	ecx, 15
	mov	eax, 27030
	sar	eax, cl
	and	eax, 1
	ret
	.cfi_endproc
.LFE157:
	.size	__paritysi2, .-__paritysi2
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB158:
	.cfi_startproc
	mov	rax, rdi
	shr	rax
	movabs	rdx, 6148914691236517205
	and	rax, rdx
	sub	rdi, rax
	mov	rdx, rdi
	shr	rdx, 2
	movabs	rax, 3689348814741910323
	and	rdx, rax
	and	rdi, rax
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
	shr	edx, 2
	and	edx, 858993459
	and	edi, 858993459
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
	.globl	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
.LFB160:
	.cfi_startproc
	xchg	rdi, rsi
	mov	rax, rsi
	mov	rdx, rdi
	shrd	rax, rdx, 1
	shr	rdx
	movabs	r8, 6148914691236517205
	and	rax, r8
	and	rdx, r8
	sub	rsi, rax
	sbb	rdi, rdx
	mov	rax, rsi
	mov	rdx, rdi
	shrd	rax, rdx, 2
	shr	rdx, 2
	movabs	r8, 3689348814741910323
	and	rax, r8
	and	rdx, r8
	and	rsi, r8
	and	rdi, r8
	add	rsi, rax
	adc	rdi, rdx
	mov	rax, rsi
	mov	rdx, rdi
	shrd	rax, rdx, 4
	shr	rdx, 4
	add	rax, rsi
	adc	rdx, rdi
	movabs	rsi, 1085102592571150095
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
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161:
	.cfi_startproc
	mov	edx, edi
	movsd	xmm1, QWORD PTR .LC14[rip]
	jmp	.L753
	.p2align 5
.L751:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L752
	mulsd	xmm0, xmm0
.L753:
	test	dl, 1
	je	.L751
	mulsd	xmm1, xmm0
	jmp	.L751
.L752:
	test	edi, edi
	js	.L755
.L750:
	movapd	xmm0, xmm1
	ret
.L755:
	movsd	xmm0, QWORD PTR .LC14[rip]
	divsd	xmm0, xmm1
	movapd	xmm1, xmm0
	jmp	.L750
	.cfi_endproc
.LFE161:
	.size	__powidf2, .-__powidf2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB162:
	.cfi_startproc
	mov	edx, edi
	movss	xmm1, DWORD PTR .LC16[rip]
	jmp	.L759
	.p2align 5
.L757:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L758
	mulss	xmm0, xmm0
.L759:
	test	dl, 1
	je	.L757
	mulss	xmm1, xmm0
	jmp	.L757
.L758:
	test	edi, edi
	js	.L761
.L756:
	movaps	xmm0, xmm1
	ret
.L761:
	movss	xmm0, DWORD PTR .LC16[rip]
	divss	xmm0, xmm1
	movaps	xmm1, xmm0
	jmp	.L756
	.cfi_endproc
.LFE162:
	.size	__powisf2, .-__powisf2
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB163:
	.cfi_startproc
	mov	rdx, rdi
	shr	rdx, 32
	mov	rcx, rsi
	shr	rcx, 32
	mov	eax, 0
	cmp	edx, ecx
	jb	.L762
	mov	eax, 2
	cmp	ecx, edx
	jb	.L762
	mov	eax, 0
	cmp	edi, esi
	jb	.L762
	cmp	esi, edi
	setb	al
	movzx	eax, al
	add	eax, 1
.L762:
	ret
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2, .-__ucmpdi2
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
	call	__ucmpdi2
	sub	eax, 1
	ret
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.globl	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
.LFB165:
	.cfi_startproc
	mov	eax, 0
	cmp	rsi, rcx
	jb	.L769
	mov	eax, 2
	cmp	rcx, rsi
	jb	.L769
	mov	eax, 0
	cmp	rdi, rdx
	jb	.L769
	cmp	rdx, rdi
	setb	al
	movzx	eax, al
	add	eax, 1
.L769:
	ret
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,1
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
	.long	1072693248
	.section	.rodata.cst4
	.align 4
.LC15:
	.long	1191182336
	.align 4
.LC16:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
