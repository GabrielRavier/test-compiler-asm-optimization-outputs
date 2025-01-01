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
	jb	.L5
	mov	ecx, 0
	cmp	rdi, rsi
	jne	.L8
	ret
	.p2align 5
.L6:
	movzx	ecx, BYTE PTR [rsi-1+rdx]
	mov	BYTE PTR [rdi-1+rdx], cl
	sub	rdx, 1
.L5:
	test	rdx, rdx
	jne	.L6
	ret
	.p2align 5
.L9:
	movzx	edi, BYTE PTR [rsi+rcx]
	mov	BYTE PTR [rax+rcx], dil
	add	rcx, 1
.L8:
	cmp	rcx, rdx
	jne	.L9
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
	jmp	.L13
	.p2align 6
.L15:
	sub	rcx, 1
	add	rsi, 1
	add	rdi, 1
.L13:
	test	rcx, rcx
	je	.L14
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rdi], r8b
	movzx	r8d, r8b
	cmp	edx, r8d
	jne	.L15
.L14:
	add	rdi, 1
	test	rcx, rcx
	mov	eax, 0
	cmovne	rax, rdi
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
	jmp	.L19
	.p2align 5
.L21:
	add	rdi, 1
	sub	rdx, 1
.L19:
	test	rdx, rdx
	je	.L20
	movzx	eax, BYTE PTR [rdi]
	cmp	esi, eax
	jne	.L21
.L20:
	test	rdx, rdx
	mov	eax, 0
	cmovne	rax, rdi
	ret
	.cfi_endproc
.LFE4:
	.size	memchr, .-memchr
	.globl	memcmp
	.type	memcmp, @function
memcmp:
.LFB5:
	.cfi_startproc
	jmp	.L25
	.p2align 5
.L27:
	sub	rdx, 1
	add	rdi, 1
	add	rsi, 1
.L25:
	test	rdx, rdx
	je	.L26
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rdi], al
	je	.L27
.L26:
	mov	eax, 0
	test	rdx, rdx
	je	.L28
	movzx	eax, BYTE PTR [rdi]
	movzx	edx, BYTE PTR [rsi]
	sub	eax, edx
.L28:
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
	mov	ecx, 0
	jmp	.L31
	.p2align 5
.L32:
	movzx	r8d, BYTE PTR [rsi+rcx]
	mov	BYTE PTR [rax+rcx], r8b
	add	rcx, 1
.L31:
	cmp	rcx, rdx
	jne	.L32
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
	sub	rdx, 1
.L34:
	cmp	rdx, -1
	je	.L38
	movzx	ecx, BYTE PTR [rdi+rdx]
	lea	r8, [rdx-1]
	cmp	esi, ecx
	je	.L39
	mov	rdx, r8
	jmp	.L34
.L39:
	lea	rax, [rdi+rdx]
	ret
.L38:
	mov	eax, 0
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
	add	rdx, rdi
	mov	rcx, rdi
	jmp	.L41
	.p2align 4
.L42:
	mov	BYTE PTR [rcx], sil
	add	rcx, 1
.L41:
	cmp	rcx, rdx
	jne	.L42
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
	jmp	.L44
	.p2align 5
.L45:
	add	rsi, 1
	add	rax, 1
.L44:
	movzx	edx, BYTE PTR [rsi]
	mov	BYTE PTR [rax], dl
	test	dl, dl
	jne	.L45
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
	jmp	.L47
	.p2align 4
.L49:
	add	rax, 1
.L47:
	cmp	BYTE PTR [rax], 0
	je	.L48
	movzx	edx, BYTE PTR [rax]
	cmp	esi, edx
	jne	.L49
.L48:
	ret
	.cfi_endproc
.LFE10:
	.size	strchrnul, .-strchrnul
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB11:
	.cfi_startproc
	.p2align 5
.L52:
	movsx	eax, BYTE PTR [rdi]
	cmp	esi, eax
	je	.L53
	add	rdi, 1
	cmp	BYTE PTR [rdi-1], 0
	jne	.L52
	mov	eax, 0
	ret
.L53:
	mov	rax, rdi
	ret
	.cfi_endproc
.LFE11:
	.size	strchr, .-strchr
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.cfi_startproc
	jmp	.L56
	.p2align 5
.L58:
	add	rdi, 1
	add	rsi, 1
.L56:
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rdi], al
	jne	.L57
	cmp	BYTE PTR [rdi], 0
	jne	.L58
.L57:
	movzx	eax, BYTE PTR [rdi]
	movzx	edx, BYTE PTR [rsi]
	sub	eax, edx
	ret
	.cfi_endproc
.LFE12:
	.size	strcmp, .-strcmp
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB13:
	.cfi_startproc
	mov	rax, rdi
	jmp	.L60
	.p2align 4
.L61:
	add	rax, 1
.L60:
	cmp	BYTE PTR [rax], 0
	jne	.L61
	sub	rax, rdi
	ret
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
	je	.L63
	mov	rax, rdi
	lea	rdi, [rdi-1+rdx]
.L64:
	cmp	BYTE PTR [rax], 0
	je	.L65
	cmp	rax, rdi
	setne	cl
	cmp	BYTE PTR [rsi], 0
	setne	dl
	test	cl, dl
	je	.L65
	movzx	ecx, BYTE PTR [rsi]
	cmp	BYTE PTR [rax], cl
	jne	.L65
	add	rax, 1
	add	rsi, 1
	jmp	.L64
.L65:
	movzx	eax, BYTE PTR [rax]
	movzx	edx, BYTE PTR [rsi]
	sub	eax, edx
.L63:
	ret
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.globl	swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	mov	rax, rdi
	add	rdi, rdx
	jmp	.L69
	.p2align 5
.L70:
	movzx	edx, BYTE PTR [rax+1]
	mov	BYTE PTR [rsi], dl
	movzx	edx, BYTE PTR [rax]
	mov	BYTE PTR [rsi+1], dl
	add	rsi, 2
	add	rax, 2
.L69:
	mov	rdx, rdi
	sub	rdx, rax
	cmp	rdx, 1
	jg	.L70
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
	sete	dl
	cmp	edi, 9
	sete	al
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
	sete	dl
	sub	edi, 9
	cmp	edi, 4
	setbe	al
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
	jne	.L82
	lea	eax, [rdi-8232]
	cmp	eax, 1
	jbe	.L82
	sub	edi, 65529
	cmp	edi, 3
	setb	dl
	movzx	edx, dl
.L82:
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
	jbe	.L94
	cmp	edi, 8231
	setbe	dl
	lea	eax, [rdi-8234]
	cmp	eax, 47061
	setbe	cl
	mov	eax, 1
	or	dl, cl
	jne	.L89
	lea	edx, [rdi-57344]
	cmp	edx, 8184
	jbe	.L89
	lea	edx, [rdi-65532]
	mov	eax, 0
	cmp	edx, 1048579
	ja	.L89
	not	edi
	test	edi, 65534
	setne	al
	movzx	eax, al
.L89:
	ret
.L94:
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
	jbe	.L96
	or	edi, 32
	sub	edi, 97
	cmp	edi, 6
	setb	al
	movzx	eax, al
.L96:
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
	jp	.L101
	ucomisd	xmm1, xmm1
	jp	.L104
	comisd	xmm0, xmm1
	jbe	.L107
	subsd	xmm0, xmm1
	ret
.L104:
	movapd	xmm0, xmm1
	ret
.L107:
	pxor	xmm0, xmm0
.L101:
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
	jp	.L109
	ucomiss	xmm1, xmm1
	jp	.L112
	comiss	xmm0, xmm1
	jbe	.L115
	subss	xmm0, xmm1
	ret
.L112:
	movaps	xmm0, xmm1
	ret
.L115:
	pxor	xmm0, xmm0
.L109:
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
	jp	.L120
	ucomisd	xmm1, xmm1
	jp	.L121
	movmskpd	edx, xmm0
	and	edx, 1
	movmskpd	eax, xmm1
	and	eax, 1
	cmp	edx, eax
	je	.L118
	movmskpd	eax, xmm0
	movapd	xmm2, xmm0
	test	al, 1
	je	.L117
	movapd	xmm2, xmm1
	jmp	.L117
.L118:
	movapd	xmm2, xmm1
	maxsd	xmm2, xmm0
.L117:
	movapd	xmm0, xmm2
	ret
.L120:
	movapd	xmm2, xmm1
	jmp	.L117
.L121:
	movapd	xmm2, xmm0
	jmp	.L117
	.cfi_endproc
.LFE33:
	.size	fmax, .-fmax
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB34:
	.cfi_startproc
	ucomiss	xmm0, xmm0
	jp	.L129
	ucomiss	xmm1, xmm1
	jp	.L130
	movd	edx, xmm0
	and	edx, -2147483648
	movd	eax, xmm1
	and	eax, -2147483648
	cmp	edx, eax
	je	.L127
	movd	eax, xmm0
	movaps	xmm2, xmm0
	test	eax, eax
	jns	.L126
	movaps	xmm2, xmm1
	jmp	.L126
.L127:
	movaps	xmm2, xmm1
	maxss	xmm2, xmm0
.L126:
	movaps	xmm0, xmm2
	ret
.L129:
	movaps	xmm2, xmm1
	jmp	.L126
.L130:
	movaps	xmm2, xmm0
	jmp	.L126
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
	jp	.L143
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L139
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
	je	.L136
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmovne	st, st(1)
	fstp	st(1)
	ret
.L136:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	ret
.L139:
	fstp	st(0)
	jmp	.L135
.L143:
	fstp	st(0)
.L135:
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
	jp	.L148
	ucomisd	xmm1, xmm1
	jp	.L149
	movmskpd	edx, xmm0
	and	edx, 1
	movmskpd	eax, xmm1
	and	eax, 1
	cmp	edx, eax
	je	.L146
	movmskpd	eax, xmm0
	movapd	xmm2, xmm1
	test	al, 1
	je	.L145
	movapd	xmm2, xmm0
	jmp	.L145
.L146:
	movapd	xmm2, xmm0
	minsd	xmm2, xmm1
.L145:
	movapd	xmm0, xmm2
	ret
.L148:
	movapd	xmm2, xmm1
	jmp	.L145
.L149:
	movapd	xmm2, xmm0
	jmp	.L145
	.cfi_endproc
.LFE36:
	.size	fmin, .-fmin
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB37:
	.cfi_startproc
	ucomiss	xmm0, xmm0
	jp	.L157
	ucomiss	xmm1, xmm1
	jp	.L158
	movd	edx, xmm0
	and	edx, -2147483648
	movd	eax, xmm1
	and	eax, -2147483648
	cmp	edx, eax
	je	.L155
	movd	eax, xmm0
	movaps	xmm2, xmm1
	test	eax, eax
	jns	.L154
	movaps	xmm2, xmm0
	jmp	.L154
.L155:
	movaps	xmm2, xmm0
	minss	xmm2, xmm1
.L154:
	movaps	xmm0, xmm2
	ret
.L157:
	movaps	xmm2, xmm1
	jmp	.L154
.L158:
	movaps	xmm2, xmm0
	jmp	.L154
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
	jp	.L166
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L171
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
	je	.L164
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmove	st, st(1)
	fstp	st(1)
	ret
.L164:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	ret
.L166:
	fstp	st(0)
	jmp	.L163
.L171:
	fstp	st(0)
.L163:
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
	mov	eax, OFFSET FLAT:s.0
	jmp	.L173
	.p2align 5
.L174:
	mov	edx, edi
	and	edx, 63
	movzx	edx, BYTE PTR digits[rdx]
	mov	BYTE PTR [rax], dl
	add	rax, 1
	shr	edi, 6
.L173:
	test	edi, edi
	jne	.L174
	mov	BYTE PTR [rax], 0
	mov	eax, OFFSET FLAT:s.0
	ret
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
	je	.L180
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR [rdi], rax
	mov	QWORD PTR [rdi+8], rsi
	mov	QWORD PTR [rsi], rdi
	cmp	QWORD PTR [rdi], 0
	je	.L177
	mov	rax, QWORD PTR [rdi]
	mov	QWORD PTR [rax+8], rdi
.L177:
	ret
.L180:
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
	cmp	QWORD PTR [rdi], 0
	je	.L182
	mov	rax, QWORD PTR [rdi]
	mov	rdx, QWORD PTR [rdi+8]
	mov	QWORD PTR [rax+8], rdx
.L182:
	cmp	QWORD PTR [rdi+8], 0
	je	.L181
	mov	rax, QWORD PTR [rdi+8]
	mov	rdx, QWORD PTR [rdi]
	mov	QWORD PTR [rax], rdx
.L181:
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
	sub	rsp, 24
	.cfi_def_cfa_offset 80
	mov	r14, rdi
	mov	QWORD PTR [rsp], rsi
	mov	QWORD PTR [rsp+8], rdx
	mov	r12, rcx
	mov	r15, r8
	mov	r13, QWORD PTR [rdx]
	mov	rbp, rsi
	mov	ebx, 0
	jmp	.L185
.L186:
	add	rbx, 1
.L185:
	cmp	rbx, r13
	je	.L189
	mov	rsi, rbp
	mov	rdi, r14
	call	r15
	add	rbp, r12
	test	eax, eax
	jne	.L186
	imul	rbx, r12
	mov	rax, QWORD PTR [rsp]
	add	rax, rbx
	jmp	.L187
.L189:
	lea	rax, [r13+1]
	mov	rcx, QWORD PTR [rsp+8]
	mov	QWORD PTR [rcx], rax
	imul	r13, r12
	mov	rdi, QWORD PTR [rsp]
	add	rdi, r13
	mov	rdx, r12
	mov	rsi, r14
	call	memcpy
.L187:
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
	mov	r14, rdi
	mov	QWORD PTR [rsp+8], rsi
	mov	r12, rcx
	mov	r13, r8
	mov	r15, QWORD PTR [rdx]
	mov	rbp, rsi
	mov	ebx, 0
	jmp	.L191
.L192:
	add	rbx, 1
.L191:
	cmp	rbx, r15
	je	.L195
	mov	rsi, rbp
	mov	rdi, r14
	call	r13
	add	rbp, r12
	test	eax, eax
	jne	.L192
	imul	rbx, r12
	mov	rax, QWORD PTR [rsp+8]
	add	rax, rbx
	jmp	.L193
.L195:
	mov	eax, 0
.L193:
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
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi
	jmp	.L198
.L199:
	add	rbx, 1
.L198:
	movsx	edi, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L199
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L205
	mov	ecx, 0
	cmp	eax, 45
	jne	.L201
	mov	ecx, 1
.L200:
	add	rbx, 1
.L201:
	mov	edx, 0
	jmp	.L202
.L205:
	mov	ecx, 0
	jmp	.L200
	.p2align 5
.L203:
	lea	edx, [rdx+rdx*4]
	add	edx, edx
	add	rbx, 1
	movsx	eax, BYTE PTR [rbx-1]
	sub	eax, 48
	sub	edx, eax
.L202:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L203
	mov	eax, edx
	neg	eax
	test	ecx, ecx
	cmovne	eax, edx
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.globl	atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi
	jmp	.L209
.L210:
	add	rbx, 1
.L209:
	movsx	edi, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L210
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L216
	mov	ecx, 0
	cmp	eax, 45
	jne	.L212
	mov	ecx, 1
.L211:
	add	rbx, 1
.L212:
	mov	edx, 0
	jmp	.L213
.L216:
	mov	ecx, 0
	jmp	.L211
	.p2align 6
.L214:
	lea	rdx, [rdx+rdx*4]
	add	rdx, rdx
	add	rbx, 1
	movsx	eax, BYTE PTR [rbx-1]
	sub	eax, 48
	cdqe
	sub	rdx, rax
.L213:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L214
	mov	rax, rdx
	neg	rax
	test	ecx, ecx
	cmovne	rax, rdx
	pop	rbx
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
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi
	jmp	.L220
.L221:
	add	rbx, 1
.L220:
	movsx	edi, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L221
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L227
	mov	ecx, 0
	cmp	eax, 45
	jne	.L223
	mov	ecx, 1
.L222:
	add	rbx, 1
.L223:
	mov	edx, 0
	jmp	.L224
.L227:
	mov	ecx, 0
	jmp	.L222
	.p2align 6
.L225:
	lea	rdx, [rdx+rdx*4]
	add	rdx, rdx
	add	rbx, 1
	movsx	eax, BYTE PTR [rbx-1]
	sub	eax, 48
	cdqe
	sub	rdx, rax
.L224:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L225
	mov	rax, rdx
	neg	rax
	test	ecx, ecx
	cmovne	rax, rdx
	pop	rbx
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
	sub	rsp, 8
	.cfi_def_cfa_offset 64
	mov	r15, rdi
	mov	r13, rsi
	mov	rbp, rdx
	mov	r12, rcx
	mov	r14, r8
	jmp	.L231
.L238:
	shr	rbp
.L231:
	test	rbp, rbp
	je	.L237
	mov	rbx, rbp
	shr	rbx
	imul	rbx, r12
	add	rbx, r13
	mov	rsi, rbx
	mov	rdi, r15
	call	r14
	test	eax, eax
	js	.L238
	jle	.L236
	lea	r13, [rbx+r12]
	mov	rax, rbp
	shr	rax
	sub	rbp, 1
	sub	rbp, rax
	jmp	.L231
.L237:
	mov	eax, 0
.L234:
	add	rsp, 8
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
.L236:
	.cfi_restore_state
	mov	rax, rbx
	jmp	.L234
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
	mov	r13, rcx
	mov	r14, r8
	mov	QWORD PTR [rsp+8], r9
	mov	ebp, edx
	mov	r12, rsi
	jmp	.L240
.L242:
	sar	ebp
.L240:
	test	ebp, ebp
	je	.L245
	mov	ebx, ebp
	sar	ebx
	movsx	rbx, ebx
	imul	rbx, r13
	add	rbx, r12
	mov	rdx, QWORD PTR [rsp+8]
	mov	rsi, rbx
	mov	rdi, r15
	call	r14
	test	eax, eax
	je	.L244
	jle	.L242
	lea	r12, [rbx+r13]
	sub	ebp, 1
	jmp	.L242
.L245:
	mov	eax, 0
.L241:
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
.L244:
	.cfi_restore_state
	mov	rax, rbx
	jmp	.L241
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
	jmp	.L254
	.p2align 4
.L256:
	add	rdi, 4
.L254:
	cmp	DWORD PTR [rdi], 0
	je	.L255
	cmp	esi, DWORD PTR [rdi]
	jne	.L256
.L255:
	cmp	DWORD PTR [rdi], 0
	mov	eax, 0
	cmovne	rax, rdi
	ret
	.cfi_endproc
.LFE59:
	.size	wcschr, .-wcschr
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60:
	.cfi_startproc
	jmp	.L260
.L262:
	add	rdi, 4
	add	rsi, 4
.L260:
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	jne	.L261
	cmp	DWORD PTR [rdi], 0
	je	.L261
	test	eax, eax
	jne	.L262
.L261:
	mov	eax, -1
	mov	edx, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], edx
	jl	.L263
	setg	al
	movzx	eax, al
.L263:
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
	mov	rdx, rdi
	.p2align 5
.L266:
	add	rsi, 4
	add	rdx, 4
	mov	ecx, DWORD PTR [rsi-4]
	mov	DWORD PTR [rdx-4], ecx
	test	ecx, ecx
	jne	.L266
	ret
	.cfi_endproc
.LFE61:
	.size	wcscpy, .-wcscpy
	.globl	wcslen
	.type	wcslen, @function
wcslen:
.LFB62:
	.cfi_startproc
	mov	rax, rdi
	jmp	.L269
	.p2align 4
.L270:
	add	rax, 4
.L269:
	cmp	DWORD PTR [rax], 0
	jne	.L270
	sub	rax, rdi
	sar	rax, 2
	ret
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
.L272:
	test	rdx, rdx
	je	.L273
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	jne	.L273
	cmp	DWORD PTR [rdi], 0
	je	.L273
	test	eax, eax
	je	.L273
	sub	rdx, 1
	add	rdi, 4
	add	rsi, 4
	jmp	.L272
.L273:
	mov	eax, 0
	test	rdx, rdx
	je	.L275
	mov	eax, -1
	mov	ecx, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], ecx
	jl	.L275
	setg	al
	movzx	eax, al
.L275:
	ret
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	jmp	.L279
	.p2align 5
.L281:
	sub	rdx, 1
	add	rdi, 4
.L279:
	test	rdx, rdx
	je	.L280
	cmp	esi, DWORD PTR [rdi]
	jne	.L281
.L280:
	test	rdx, rdx
	mov	eax, 0
	cmovne	rax, rdi
	ret
	.cfi_endproc
.LFE64:
	.size	wmemchr, .-wmemchr
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65:
	.cfi_startproc
	jmp	.L285
	.p2align 5
.L287:
	sub	rdx, 1
	add	rdi, 4
	add	rsi, 4
.L285:
	test	rdx, rdx
	je	.L286
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	je	.L287
.L286:
	mov	eax, 0
	test	rdx, rdx
	je	.L288
	mov	eax, -1
	mov	ecx, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], ecx
	jl	.L288
	setg	al
	movzx	eax, al
.L288:
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
	mov	ecx, 0
	jmp	.L292
	.p2align 5
.L293:
	mov	r8d, DWORD PTR [rsi+rcx*4]
	mov	DWORD PTR [rax+rcx*4], r8d
	add	rcx, 1
.L292:
	cmp	rcx, rdx
	jne	.L293
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
	je	.L295
	sub	rdi, rsi
	lea	rcx, [0+rdx*4]
	cmp	rdi, rcx
	jb	.L296
	mov	ecx, 0
	jmp	.L297
	.p2align 4
.L298:
	mov	ecx, DWORD PTR [rsi+rdx*4]
	mov	DWORD PTR [rax+rdx*4], ecx
.L296:
	sub	rdx, 1
	cmp	rdx, -1
	jne	.L298
	ret
	.p2align 4
.L299:
	mov	edi, DWORD PTR [rsi+rcx*4]
	mov	DWORD PTR [rax+rcx*4], edi
	add	rcx, 1
.L297:
	cmp	rcx, rdx
	jne	.L299
.L295:
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
	mov	ecx, 0
	jmp	.L302
	.p2align 4
.L303:
	mov	DWORD PTR [rax+rcx*4], esi
	add	rcx, 1
.L302:
	cmp	rcx, rdx
	jne	.L303
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
	jb	.L306
	mov	eax, 0
	jne	.L309
	ret
	.p2align 5
.L307:
	movzx	eax, BYTE PTR [rdi-1+rdx]
	mov	BYTE PTR [rsi-1+rdx], al
	sub	rdx, 1
.L306:
	test	rdx, rdx
	jne	.L307
	ret
	.p2align 4
.L310:
	movzx	ecx, BYTE PTR [rdi+rax]
	mov	BYTE PTR [rsi+rax], cl
	add	rax, 1
.L309:
	cmp	rax, rdx
	jne	.L310
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
	sal	rax, cl
	mov	ecx, 64
	sub	ecx, esi
	shr	rdi, cl
	or	rax, rdi
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
	shr	rax, cl
	mov	ecx, 64
	sub	ecx, esi
	sal	rdi, cl
	or	rax, rdi
	ret
	.cfi_endproc
.LFE75:
	.size	rotr_sz, .-rotr_sz
	.globl	rotl16
	.type	rotl16, @function
rotl16:
.LFB76:
	.cfi_startproc
	movzx	eax, di
	mov	edx, eax
	mov	ecx, esi
	sal	edx, cl
	mov	ecx, 16
	sub	ecx, esi
	shr	eax, cl
	or	eax, edx
	ret
	.cfi_endproc
.LFE76:
	.size	rotl16, .-rotl16
	.globl	rotr16
	.type	rotr16, @function
rotr16:
.LFB77:
	.cfi_startproc
	movzx	eax, di
	mov	edx, eax
	mov	ecx, esi
	shr	edx, cl
	mov	ecx, 16
	sub	ecx, esi
	sal	eax, cl
	or	eax, edx
	ret
	.cfi_endproc
.LFE77:
	.size	rotr16, .-rotr16
	.globl	rotl8
	.type	rotl8, @function
rotl8:
.LFB78:
	.cfi_startproc
	movzx	eax, dil
	mov	edx, eax
	mov	ecx, esi
	sal	edx, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	eax, cl
	or	eax, edx
	ret
	.cfi_endproc
.LFE78:
	.size	rotl8, .-rotl8
	.globl	rotr8
	.type	rotr8, @function
rotr8:
.LFB79:
	.cfi_startproc
	movzx	eax, dil
	mov	edx, eax
	mov	ecx, esi
	shr	edx, cl
	mov	ecx, 8
	sub	ecx, esi
	sal	eax, cl
	or	eax, edx
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
	mov	edx, edi
	and	edx, 16711680
	shr	rdx, 8
	mov	ecx, edi
	and	ecx, 65280
	sal	ecx, 8
	sal	edi, 24
	or	edi, ecx
	or	eax, edi
	or	eax, edx
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
	mov	rcx, rdi
	shr	rcx, 56
	mov	rax, rdi
	shr	rax, 40
	and	eax, 65280
	or	rax, rcx
	mov	rcx, rdi
	shr	rcx, 24
	and	ecx, 16711680
	or	rax, rcx
	mov	rcx, rdi
	shr	rcx, 8
	and	ecx, 4278190080
	or	rax, rcx
	mov	rcx, rdi
	and	ecx, 4278190080
	sal	rcx, 8
	or	rax, rcx
	mov	rcx, rdi
	and	ecx, 16711680
	sal	rcx, 24
	or	rax, rcx
	mov	rcx, rdi
	and	ecx, 65280
	sal	rcx, 40
	or	rax, rcx
	sal	rdx, 56
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
.L327:
	cmp	eax, 32
	je	.L331
	bt	edi, eax
	jc	.L332
	add	eax, 1
	jmp	.L327
.L332:
	add	eax, 1
	ret
.L331:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE83:
	.size	ffs, .-ffs
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	mov	eax, 0
	test	edi, edi
	je	.L334
	mov	eax, 1
	jmp	.L335
	.p2align 4
.L336:
	sar	edi
	add	eax, 1
.L335:
	test	dil, 1
	je	.L336
.L334:
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
	ja	.L339
	comiss	xmm0, DWORD PTR .LC4[rip]
	seta	al
	movzx	eax, al
.L339:
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
	ja	.L345
	comisd	xmm0, QWORD PTR .LC6[rip]
	seta	al
	movzx	eax, al
.L345:
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
	ja	.L356
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	.L351
.L356:
	fstp	st(0)
.L351:
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
	jp	.L359
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm0, xmm1
	jp	.L365
	jne	.L365
.L359:
	ret
.L365:
	movss	xmm1, DWORD PTR .LC10[rip]
	test	edi, edi
	jns	.L363
	movss	xmm1, DWORD PTR .LC9[rip]
	jmp	.L363
	.p2align 5
.L362:
	mov	eax, edi
	shr	eax, 31
	add	eax, edi
	sar	eax
	mov	edi, eax
	je	.L359
	mulss	xmm1, xmm1
.L363:
	test	dil, 1
	je	.L362
	mulss	xmm0, xmm1
	jmp	.L362
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB90:
	.cfi_startproc
	ucomisd	xmm0, xmm0
	jp	.L367
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm0, xmm1
	jp	.L373
	jne	.L373
.L367:
	ret
.L373:
	movsd	xmm1, QWORD PTR .LC12[rip]
	test	edi, edi
	jns	.L371
	movsd	xmm1, QWORD PTR .LC11[rip]
	jmp	.L371
	.p2align 5
.L370:
	mov	eax, edi
	shr	eax, 31
	add	eax, edi
	sar	eax
	mov	edi, eax
	je	.L367
	mulsd	xmm1, xmm1
.L371:
	test	dil, 1
	je	.L370
	mulsd	xmm0, xmm1
	jmp	.L370
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
	jp	.L375
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	.L381
	jne	.L381
	jmp	.L375
.L383:
	fstp	st(0)
.L375:
	ret
.L381:
	test	edi, edi
	js	.L382
	fld	DWORD PTR .LC10[rip]
	jmp	.L379
.L382:
	fld	DWORD PTR .LC9[rip]
	jmp	.L379
	.p2align 5
.L378:
	mov	eax, edi
	shr	eax, 31
	add	eax, edi
	sar	eax
	mov	edi, eax
	je	.L383
	fmul	st, st(0)
.L379:
	test	dil, 1
	je	.L378
	fmul	st(1), st
	jmp	.L378
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	mov	rax, rdi
	add	rdx, rdi
	mov	rcx, rdi
	jmp	.L385
	.p2align 5
.L386:
	add	rsi, 1
	add	rcx, 1
	movzx	r8d, BYTE PTR [rcx-1]
	xor	r8b, BYTE PTR [rsi-1]
	mov	BYTE PTR [rcx-1], r8b
.L385:
	cmp	rcx, rdx
	jne	.L386
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
	jmp	.L388
	.p2align 5
.L390:
	add	rbp, 1
	add	rax, 1
	sub	rbx, 1
.L388:
	test	rbx, rbx
	je	.L389
	movzx	edx, BYTE PTR [rbp+0]
	mov	BYTE PTR [rax], dl
	test	dl, dl
	jne	.L390
.L389:
	test	rbx, rbx
	jne	.L391
	mov	BYTE PTR [rax], 0
.L391:
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
.L393:
	cmp	rax, rsi
	je	.L394
	cmp	BYTE PTR [rdi+rax], 0
	jne	.L395
.L394:
	ret
.L395:
	add	rax, 1
	jmp	.L393
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
.L397:
	cmp	BYTE PTR [rdi], 0
	je	.L403
	mov	rdx, rsi
	.p2align 5
.L400:
	cmp	BYTE PTR [rdx], 0
	je	.L404
	add	rdx, 1
	movzx	eax, BYTE PTR [rdi]
	cmp	BYTE PTR [rdx-1], al
	jne	.L400
	mov	rax, rdi
	ret
.L404:
	add	rdi, 1
	jmp	.L397
.L403:
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
	mov	eax, 0
	.p2align 5
.L407:
	movsx	edx, BYTE PTR [rdi]
	cmp	esi, edx
	cmove	rax, rdi
	add	rdi, 1
	cmp	BYTE PTR [rdi-1], 0
	jne	.L407
	ret
	.cfi_endproc
.LFE96:
	.size	strrchr, .-strrchr
	.globl	strstr
	.type	strstr, @function
strstr:
.LFB97:
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
	mov	rbx, rdi
	mov	rbp, rsi
	mov	rdi, rsi
	call	strlen
	mov	r12, rax
	mov	rax, rbx
	test	r12, r12
	je	.L411
	movsx	r13d, BYTE PTR [rbp+0]
.L412:
	mov	esi, r13d
	mov	rdi, rbx
	call	strchr
	mov	rbx, rax
	test	rax, rax
	je	.L416
	mov	rdx, r12
	mov	rsi, rbp
	mov	rdi, rbx
	call	strncmp
	test	eax, eax
	je	.L415
	add	rbx, 1
	jmp	.L412
.L416:
	mov	eax, 0
.L411:
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	pop	rbp
	.cfi_def_cfa_offset 24
	pop	r12
	.cfi_def_cfa_offset 16
	pop	r13
	.cfi_def_cfa_offset 8
	ret
.L415:
	.cfi_restore_state
	mov	rax, rbx
	jmp	.L411
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
	ja	.L430
.L418:
	pxor	xmm2, xmm2
	comisd	xmm0, xmm2
	jbe	.L421
	comisd	xmm2, xmm1
	ja	.L420
.L421:
	ret
.L430:
	comisd	xmm1, xmm2
	jbe	.L418
.L420:
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
	mov	rbp, rdx
	mov	r12, rsi
	sub	r12, rcx
	add	r12, rdi
	mov	rax, rdi
	test	rcx, rcx
	je	.L432
	cmp	rsi, rcx
	jb	.L437
	mov	rbx, rdi
	lea	r13, [rcx-1]
	lea	r14, [rdx+1]
	jmp	.L433
	.p2align 5
.L434:
	add	rbx, 1
.L433:
	cmp	r12, rbx
	jb	.L439
	movzx	eax, BYTE PTR [rbp+0]
	cmp	BYTE PTR [rbx], al
	jne	.L434
	lea	rdi, [rbx+1]
	mov	rdx, r13
	mov	rsi, r14
	call	memcmp
	test	eax, eax
	jne	.L434
	mov	rax, rbx
	jmp	.L432
.L439:
	mov	eax, 0
.L432:
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
.L437:
	.cfi_restore_state
	mov	eax, 0
	jmp	.L432
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
	ja	.L458
.L442:
	mov	eax, 0
	comisd	xmm0, QWORD PTR .LC14[rip]
	jb	.L457
	movsd	xmm1, QWORD PTR .LC14[rip]
	movsd	xmm2, QWORD PTR .LC11[rip]
	jmp	.L444
.L458:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	mov	edx, 1
	jmp	.L442
	.p2align 4
.L446:
	add	eax, 1
	mulsd	xmm0, xmm2
.L444:
	comisd	xmm0, xmm1
	jnb	.L446
.L447:
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	je	.L450
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L450:
	ret
.L457:
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	setp	al
	mov	ecx, 1
	cmovne	eax, ecx
	movsd	xmm1, QWORD PTR .LC11[rip]
	comisd	xmm1, xmm0
	seta	cl
	test	cl, al
	jne	.L453
	mov	eax, 0
	jmp	.L447
	.p2align 4
.L449:
	sub	eax, 1
	addsd	xmm0, xmm0
.L448:
	comisd	xmm1, xmm0
	ja	.L449
	jmp	.L447
.L453:
	mov	eax, 0
	movsd	xmm1, QWORD PTR .LC11[rip]
	jmp	.L448
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	mov	eax, 0
	jmp	.L460
	.p2align 5
.L462:
	lea	rdx, [rax+rsi]
	test	dil, 1
	cmovne	rax, rdx
	add	rsi, rsi
	shr	rdi
.L460:
	test	rdi, rdi
	jne	.L462
	ret
	.cfi_endproc
.LFE102:
	.size	__muldi3, .-__muldi3
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB103:
	.cfi_startproc
	mov	ecx, 1
	jmp	.L464
	.p2align 5
.L467:
	add	esi, esi
	add	ecx, ecx
.L464:
	cmp	esi, edi
	setb	r8b
	test	ecx, ecx
	setne	al
	test	r8b, al
	je	.L473
	test	esi, esi
	jns	.L467
	mov	eax, 0
	jmp	.L466
.L473:
	mov	eax, 0
	jmp	.L466
	.p2align 4
.L469:
	shr	ecx
	shr	esi
.L466:
	test	ecx, ecx
	je	.L474
	cmp	edi, esi
	jb	.L469
	sub	edi, esi
	or	eax, ecx
	jmp	.L469
.L474:
	test	rdx, rdx
	cmovne	eax, edi
	ret
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	mov	eax, edi
	not	eax
	cmp	al, dil
	cmovl	eax, edi
	mov	edx, 7
	test	al, al
	je	.L477
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	edx, [rax-1]
.L477:
	mov	eax, edx
	ret
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2, .-__clrsbqi2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	mov	rax, rdi
	not	rax
	cmp	rax, rdi
	cmovl	rax, rdi
	mov	edx, 63
	test	rax, rax
	je	.L481
	bsr	rax, rax
	xor	rax, 63
	lea	edx, [rax-1]
.L481:
	mov	eax, edx
	ret
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2, .-__clrsbdi2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106:
	.cfi_startproc
	mov	eax, 0
	jmp	.L484
	.p2align 5
.L486:
	lea	edx, [rax+rsi]
	test	dil, 1
	cmovne	eax, edx
	shr	edi
	add	esi, esi
.L484:
	test	edi, edi
	jne	.L486
	ret
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
	jb	.L488
	mov	ecx, edx
	add	rcx, rsi
	cmp	rcx, rdi
	jnb	.L489
.L488:
	lea	r9d, [0+r8*8]
	mov	ecx, 0
	jmp	.L490
	.p2align 5
.L491:
	mov	r8, QWORD PTR [rsi+rcx]
	mov	QWORD PTR [rdi+rcx], r8
	add	rcx, 8
.L490:
	cmp	rcx, r9
	jne	.L491
	mov	eax, eax
	jmp	.L492
	.p2align 4
.L493:
	movzx	ecx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], cl
	add	rax, 1
.L492:
	cmp	eax, edx
	jb	.L493
	ret
	.p2align 5
.L495:
	mov	eax, edx
	movzx	ecx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], cl
.L489:
	sub	edx, 1
	cmp	edx, -1
	jne	.L495
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
	jb	.L498
	mov	eax, edx
	add	rax, rsi
	cmp	rax, rcx
	jnb	.L499
.L498:
	lea	r8d, [rdi+rdi]
	mov	eax, 0
	jmp	.L500
	.p2align 5
.L501:
	movzx	edi, WORD PTR [rsi+rax]
	mov	WORD PTR [rcx+rax], di
	add	rax, 2
.L500:
	cmp	rax, r8
	jne	.L501
	test	dl, 1
	je	.L497
	lea	eax, [rdx-1]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	ret
	.p2align 5
.L503:
	mov	eax, edx
	movzx	edi, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dil
.L499:
	sub	edx, 1
	cmp	edx, -1
	jne	.L503
.L497:
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
	jb	.L506
	mov	ecx, edx
	add	rcx, rsi
	cmp	rcx, rdi
	jnb	.L507
.L506:
	lea	r9d, [0+r8*4]
	mov	ecx, 0
	jmp	.L508
	.p2align 5
.L509:
	mov	r8d, DWORD PTR [rsi+rcx]
	mov	DWORD PTR [rdi+rcx], r8d
	add	rcx, 4
.L508:
	cmp	rcx, r9
	jne	.L509
	mov	eax, eax
	jmp	.L510
	.p2align 4
.L511:
	movzx	ecx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], cl
	add	rax, 1
.L510:
	cmp	eax, edx
	jb	.L511
	ret
	.p2align 5
.L513:
	mov	eax, edx
	movzx	ecx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], cl
.L507:
	sub	edx, 1
	cmp	edx, -1
	jne	.L513
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
	js	.L523
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdi
	ret
.L523:
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
	js	.L526
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdi
	ret
.L526:
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
.L530:
	cmp	eax, 16
	je	.L531
	mov	edx, ecx
	sub	edx, eax
	bt	edi, edx
	jc	.L531
	add	eax, 1
	jmp	.L530
.L531:
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
.L534:
	cmp	eax, 16
	je	.L535
	bt	edi, eax
	jc	.L535
	add	eax, 1
	jmp	.L534
.L535:
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
	jnb	.L543
	cvttss2si	rax, xmm0
	ret
.L543:
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
	jmp	.L545
	.p2align 5
.L547:
	mov	edx, edi
	sar	edx, cl
	and	edx, 1
	cmp	edx, 1
	sbb	eax, -1
	add	ecx, 1
.L545:
	cmp	ecx, 16
	jne	.L547
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
	jmp	.L549
	.p2align 5
.L551:
	mov	eax, edi
	sar	eax, cl
	and	eax, 1
	cmp	eax, 1
	sbb	edx, -1
	add	ecx, 1
.L549:
	cmp	ecx, 16
	jne	.L551
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
	mov	eax, 0
	jmp	.L553
	.p2align 5
.L555:
	lea	edx, [rax+rsi]
	test	dil, 1
	cmovne	eax, edx
	shr	edi
	add	esi, esi
.L553:
	test	edi, edi
	jne	.L555
	ret
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	mov	eax, 0
	test	edi, edi
	jne	.L558
	ret
	.p2align 5
.L560:
	lea	edx, [rax+rdi]
	test	sil, 1
	cmovne	eax, edx
	add	edi, edi
	shr	esi
.L558:
	test	esi, esi
	jne	.L560
.L557:
	ret
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	mov	ecx, 1
	jmp	.L563
	.p2align 5
.L566:
	add	esi, esi
	add	ecx, ecx
.L563:
	cmp	esi, edi
	setb	r8b
	test	ecx, ecx
	setne	al
	test	r8b, al
	je	.L572
	test	esi, esi
	jns	.L566
	mov	eax, 0
	jmp	.L565
.L572:
	mov	eax, 0
	jmp	.L565
	.p2align 4
.L568:
	shr	ecx
	shr	esi
.L565:
	test	ecx, ecx
	je	.L573
	cmp	edi, esi
	jb	.L568
	sub	edi, esi
	or	eax, ecx
	jmp	.L568
.L573:
	test	edx, edx
	cmovne	eax, edi
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
	ja	.L575
	comiss	xmm0, xmm1
	seta	al
	movzx	eax, al
.L575:
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
	ja	.L579
	comisd	xmm0, xmm1
	seta	al
	movzx	eax, al
.L579:
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
	mov	r9d, 0
	test	esi, esi
	js	.L592
.L585:
	mov	edx, 0
	mov	eax, 0
	jmp	.L586
.L592:
	neg	esi
	mov	r9d, 1
	jmp	.L585
	.p2align 6
.L588:
	lea	ecx, [rdx+rdi]
	test	sil, 1
	cmovne	edx, ecx
	add	edi, edi
	sar	esi
	add	eax, 1
.L586:
	test	esi, esi
	setne	cl
	cmp	al, 31
	setbe	r8b
	test	r8b, cl
	jne	.L588
	mov	eax, edx
	neg	eax
	test	r9d, r9d
	cmove	eax, edx
	ret
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	ebx, 0
	test	rdi, rdi
	js	.L598
.L594:
	test	rsi, rsi
	js	.L599
.L595:
	mov	edx, 0
	call	__udivmodsi4
	mov	eax, eax
	mov	rdx, rax
	neg	rdx
	test	ebx, ebx
	cmovne	rax, rdx
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L598:
	.cfi_restore_state
	neg	rdi
	mov	ebx, 1
	jmp	.L594
.L599:
	neg	rsi
	xor	ebx, 1
	jmp	.L595
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	ebx, 0
	test	rdi, rdi
	js	.L605
.L601:
	mov	rax, rsi
	neg	rax
	cmovns	rsi, rax
	mov	edx, 1
	call	__udivmodsi4
	mov	eax, eax
	mov	rdx, rax
	neg	rdx
	test	ebx, ebx
	cmovne	rax, rdx
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L605:
	.cfi_restore_state
	neg	rdi
	mov	ebx, 1
	jmp	.L601
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	mov	ecx, 1
	jmp	.L607
	.p2align 5
.L610:
	add	esi, esi
	add	ecx, ecx
.L607:
	cmp	si, di
	setb	r8b
	test	cx, cx
	setne	al
	test	r8b, al
	je	.L616
	test	si, si
	jns	.L610
	mov	eax, 0
	jmp	.L609
.L616:
	mov	eax, 0
	jmp	.L609
	.p2align 4
.L612:
	shr	cx
	shr	si
.L609:
	test	cx, cx
	je	.L617
	cmp	di, si
	jb	.L612
	sub	edi, esi
	or	eax, ecx
	jmp	.L612
.L617:
	test	edx, edx
	cmovne	eax, edi
	ret
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	mov	ecx, 1
	jmp	.L619
	.p2align 5
.L622:
	add	rsi, rsi
	add	rcx, rcx
.L619:
	cmp	rsi, rdi
	setb	r8b
	test	rcx, rcx
	setne	al
	test	r8b, al
	je	.L628
	test	esi, 2147483648
	je	.L622
	mov	eax, 0
	jmp	.L621
.L628:
	mov	eax, 0
	jmp	.L621
	.p2align 4
.L624:
	shr	rcx
	shr	rsi
.L621:
	test	rcx, rcx
	je	.L629
	cmp	rdi, rsi
	jb	.L624
	sub	rdi, rsi
	or	rax, rcx
	jmp	.L624
.L629:
	test	edx, edx
	cmovne	rax, rdi
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
	je	.L631
	lea	ecx, [rsi-32]
	sal	edi, cl
	mov	rax, rdi
	sal	rax, 32
	ret
.L631:
	mov	rax, rdi
	test	esi, esi
	je	.L633
	mov	rdx, rdi
	sar	rdx, 32
	mov	ecx, esi
	sal	edx, cl
	mov	ecx, 32
	sub	ecx, esi
	shr	eax, cl
	or	eax, edx
	sal	rax, 32
	mov	ecx, esi
	sal	edi, cl
	or	rax, rdi
.L633:
	ret
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.globl	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	mov	r10d, edx
	test	dl, 64
	je	.L636
	mov	eax, 0
	lea	ecx, [rdx-64]
	sal	rdi, cl
	mov	rdx, rdi
	ret
.L636:
	mov	rax, rdi
	mov	rdx, rsi
	test	r10d, r10d
	je	.L638
	mov	ecx, r10d
	sal	rax, cl
	sal	rsi, cl
	mov	ecx, 64
	sub	ecx, r10d
	shr	rdi, cl
	or	rdi, rsi
	mov	rdx, rdi
.L638:
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
	je	.L641
	sar	rdi, 32
	mov	eax, edi
	sar	eax, 31
	lea	ecx, [rsi-32]
	sar	edi, cl
	sal	rax, 32
	or	rax, rdi
	ret
.L641:
	mov	rax, rdi
	test	esi, esi
	je	.L643
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
	or	edx, edi
	sal	rax, 32
	or	rax, rdx
.L643:
	ret
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.globl	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	mov	r10, rdi
	mov	r8, rsi
	mov	r9d, edx
	test	dl, 64
	je	.L646
	mov	rcx, r8
	sar	rcx, 63
	mov	rdx, rcx
	lea	ecx, [r9-64]
	sar	r8, cl
	mov	rax, r8
	ret
.L646:
	mov	rax, rdi
	mov	rdx, rsi
	test	r9d, r9d
	je	.L648
	mov	rax, rsi
	mov	ecx, r9d
	sar	rax, cl
	mov	rdx, rax
	mov	ecx, 64
	sub	ecx, r9d
	sal	r8, cl
	mov	ecx, r9d
	shr	r10, cl
	or	r8, r10
	mov	rax, r8
.L648:
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
	mov	r11, rdi
	shr	r11, 56
	mov	r10, rdi
	shr	r10, 40
	and	r10d, 65280
	mov	r9, rdi
	shr	r9, 24
	and	r9d, 16711680
	mov	r8, rdi
	shr	r8, 8
	and	r8d, 4278190080
	sal	rdi, 8
	movabs	rax, 1095216660480
	and	rdi, rax
	mov	rsi, rdx
	sal	rsi, 24
	movabs	rax, 280375465082880
	and	rsi, rax
	mov	rcx, rdx
	sal	rcx, 40
	movabs	rax, 71776119061217280
	and	rcx, rax
	mov	rax, rdx
	sal	rax, 56
	or	rax, r11
	or	rax, r10
	or	rax, r9
	or	rax, r8
	or	rax, rdi
	or	rax, rsi
	or	rax, rcx
	ret
	.cfi_endproc
.LFE137:
	.size	__bswapdi2, .-__bswapdi2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB138:
	.cfi_startproc
	mov	esi, edi
	shr	esi, 24
	mov	ecx, edi
	shr	ecx, 8
	and	ecx, 65280
	mov	edx, edi
	sal	edx, 8
	and	edx, 16711680
	mov	eax, edi
	sal	eax, 24
	or	eax, esi
	or	eax, ecx
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
	mov	edx, edi
	cmp	edi, 65536
	setb	al
	movzx	eax, al
	sal	eax, 4
	mov	ecx, 16
	sub	ecx, eax
	shr	edx, cl
	test	dh, -1
	sete	sil
	movzx	esi, sil
	sal	esi, 3
	mov	ecx, 8
	sub	ecx, esi
	shr	edx, cl
	add	eax, esi
	test	dl, -16
	sete	sil
	movzx	esi, sil
	sal	esi, 2
	mov	ecx, 4
	sub	ecx, esi
	shr	edx, cl
	add	eax, esi
	test	dl, 12
	sete	dil
	movzx	edi, dil
	add	edi, edi
	mov	esi, 2
	mov	ecx, esi
	sub	ecx, edi
	shr	edx, cl
	add	eax, edi
	test	dl, 2
	sete	cl
	movzx	ecx, cl
	sub	esi, edx
	mov	edx, ecx
	imul	edx, esi
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
	mov	rcx, rsi
	cmp	rsi, 1
	sbb	eax, eax
	movsx	rdx, eax
	mov	rsi, rdx
	not	rsi
	and	rsi, rcx
	and	rdx, rdi
	or	rsi, rdx
	bsr	rsi, rsi
	xor	rsi, 63
	and	eax, 64
	add	eax, esi
	ret
	.cfi_endproc
.LFE140:
	.size	__clzti2, .-__clzti2
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB141:
	.cfi_startproc
	mov	rcx, rdi
	sar	rcx, 32
	mov	rdx, rsi
	sar	rdx, 32
	mov	eax, 0
	cmp	ecx, edx
	jl	.L663
	mov	rcx, rdi
	sar	rcx, 32
	mov	rdx, rsi
	sar	rdx, 32
	mov	eax, 2
	cmp	ecx, edx
	jg	.L663
	mov	eax, 0
	cmp	edi, esi
	jb	.L663
	cmp	esi, edi
	setb	al
	movzx	eax, al
	add	eax, 1
.L663:
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
	mov	rax, rdx
	mov	rdx, rcx
	mov	ecx, 0
	cmp	rsi, rdx
	jl	.L670
	mov	ecx, 2
	jg	.L670
	mov	ecx, 0
	cmp	rdi, rax
	jb	.L670
	cmp	rax, rdi
	setb	cl
	movzx	ecx, cl
	add	ecx, 1
.L670:
	mov	eax, ecx
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
	add	eax, ecx
	mov	ecx, edi
	not	ecx
	shr	edi
	mov	edx, 2
	sub	edx, edi
	and	ecx, 1
	neg	ecx
	and	edx, ecx
	add	eax, edx
	ret
	.cfi_endproc
.LFE144:
	.size	__ctzsi2, .-__ctzsi2
	.globl	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145:
	.cfi_startproc
	cmp	rdi, 1
	sbb	eax, eax
	movsx	rdx, eax
	and	rsi, rdx
	not	rdx
	and	rdx, rdi
	or	rdx, rsi
	rep bsf	rdx, rdx
	and	eax, 64
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
	jne	.L686
	xor	eax, eax
	rep bsf	rax, rsi
	add	eax, 65
	test	rsi, rsi
	mov	edx, 0
	cmove	eax, edx
	ret
.L686:
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
	je	.L690
	shr	rdi, 32
	lea	ecx, [rsi-32]
	mov	eax, edi
	shr	eax, cl
	ret
.L690:
	mov	rax, rdi
	test	esi, esi
	je	.L692
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
	or	edx, edi
	sal	rax, 32
	or	rax, rdx
.L692:
	ret
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.globl	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	mov	rax, rdi
	mov	r8, rdi
	mov	r9, rsi
	test	dl, 64
	je	.L695
	lea	ecx, [rdx-64]
	shr	rsi, cl
	mov	r8, rsi
	mov	r9d, 0
.L697:
	mov	rax, r8
	mov	rdx, r9
	ret
.L695:
	test	edx, edx
	je	.L697
	mov	rdi, rsi
	mov	ecx, edx
	shr	rdi, cl
	mov	r9, rdi
	mov	ecx, 64
	sub	ecx, edx
	sal	rsi, cl
	mov	ecx, edx
	shr	rax, cl
	or	rsi, rax
	mov	r8, rsi
	jmp	.L697
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	movzx	r8d, di
	movzx	eax, si
	mov	ecx, r8d
	imul	ecx, eax
	mov	edx, ecx
	shr	edx, 16
	shr	edi, 16
	imul	eax, edi
	add	edx, eax
	mov	eax, edx
	shr	eax, 16
	movzx	edx, dx
	movzx	ecx, cx
	shr	esi, 16
	imul	r8d, esi
	add	edx, r8d
	mov	r8d, edx
	sal	r8d, 16
	lea	ecx, [r8+rcx]
	sal	rax, 32
	or	rax, rcx
	mov	rcx, rax
	sar	rcx, 32
	shr	edx, 16
	lea	edx, [rdx+rcx]
	sal	rdx, 32
	mov	eax, eax
	or	rax, rdx
	mov	rdx, rax
	sar	rdx, 32
	imul	edi, esi
	lea	edx, [rdi+rdx]
	sal	rdx, 32
	mov	eax, eax
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
	mov	r8d, edi
	mov	edx, esi
	mov	rax, r8
	imul	rax, rdx
	mov	rcx, rax
	shr	rcx, 32
	shr	rdi, 32
	imul	rdx, rdi
	add	rcx, rdx
	mov	eax, eax
	mov	rdx, rcx
	sal	rdx, 32
	add	rax, rdx
	shr	rcx, 32
	mov	rdx, rcx
	mov	rcx, rax
	shr	rcx, 32
	mov	r9d, eax
	shr	rsi, 32
	imul	r8, rsi
	add	rcx, r8
	mov	r8, rcx
	sal	r8, 32
	add	r8, r9
	mov	rax, r8
	shr	rcx, 32
	add	rcx, rdx
	imul	rdi, rsi
	add	rdi, rcx
	mov	rdx, rdi
	ret
	.cfi_endproc
.LFE151:
	.size	__mulddi3, .-__mulddi3
	.globl	__multi3
	.type	__multi3, @function
__multi3:
.LFB152:
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
	mov	rbx, rsi
	mov	r12, rdx
	mov	r13, rcx
	mov	rsi, rdx
	call	__mulddi3
	imul	rbx, r12
	mov	rcx, r13
	imul	rcx, rbp
	add	rbx, rcx
	add	rbx, rdx
	mov	rdx, rbx
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
	mov	rcx, rdi
	shr	rcx, 32
	xor	ecx, edi
	mov	eax, ecx
	shr	eax, 16
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 8
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 4
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
	mov	rcx, rsi
	mov	rax, rsi
	sar	rax, 32
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 16
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 8
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 4
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
	mov	ecx, edi
	shr	ecx, 16
	xor	ecx, edi
	mov	eax, ecx
	shr	eax, 8
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 4
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
	mov	rax, rdi
	shr	rax, 2
	movabs	rdx, 3689348814741910323
	and	rax, rdx
	and	rdi, rdx
	add	rdi, rax
	mov	rax, rdi
	shr	rax, 4
	add	rdi, rax
	movabs	rax, 1085102592571150095
	and	rdi, rax
	mov	rdx, rdi
	shr	rdx, 32
	add	edx, edi
	mov	eax, edx
	shr	eax, 16
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
	mov	eax, edi
	shr	eax, 2
	and	eax, 858993459
	and	edi, 858993459
	add	edi, eax
	mov	eax, edi
	shr	eax, 4
	add	edi, eax
	and	edi, 252645135
	mov	eax, edi
	shr	eax, 16
	add	edi, eax
	mov	eax, edi
	shr	eax, 8
	add	eax, edi
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
	mov	r8, rsi
	mov	r9, rdi
	shrd	r8, r9, 2
	shr	r9, 2
	movabs	rax, 3689348814741910323
	and	r8, rax
	and	r9, rax
	and	rsi, rax
	and	rdi, rax
	add	rsi, r8
	adc	rdi, r9
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
	mov	rax, rdi
	add	rax, rsi
	mov	rdx, rax
	shr	rdx, 32
	add	edx, eax
	mov	eax, edx
	shr	eax, 16
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
	shr	edx, 31
	movsd	xmm1, QWORD PTR .LC14[rip]
	jmp	.L714
	.p2align 5
.L712:
	mov	eax, edi
	shr	eax, 31
	add	eax, edi
	sar	eax
	mov	edi, eax
	je	.L713
	mulsd	xmm0, xmm0
.L714:
	test	dil, 1
	je	.L712
	mulsd	xmm1, xmm0
	jmp	.L712
.L713:
	movapd	xmm0, xmm1
	test	edx, edx
	je	.L715
	movsd	xmm0, QWORD PTR .LC14[rip]
	divsd	xmm0, xmm1
.L715:
	ret
	.cfi_endproc
.LFE161:
	.size	__powidf2, .-__powidf2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB162:
	.cfi_startproc
	mov	edx, edi
	shr	edx, 31
	movss	xmm1, DWORD PTR .LC16[rip]
	jmp	.L720
	.p2align 5
.L718:
	mov	eax, edi
	shr	eax, 31
	add	eax, edi
	sar	eax
	mov	edi, eax
	je	.L719
	mulss	xmm0, xmm0
.L720:
	test	dil, 1
	je	.L718
	mulss	xmm1, xmm0
	jmp	.L718
.L719:
	movaps	xmm0, xmm1
	test	edx, edx
	je	.L721
	movss	xmm0, DWORD PTR .LC16[rip]
	divss	xmm0, xmm1
.L721:
	ret
	.cfi_endproc
.LFE162:
	.size	__powisf2, .-__powisf2
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB163:
	.cfi_startproc
	mov	rcx, rdi
	shr	rcx, 32
	mov	rdx, rsi
	shr	rdx, 32
	mov	eax, 0
	cmp	ecx, edx
	jb	.L724
	mov	rdx, rcx
	mov	rcx, rsi
	shr	rcx, 32
	mov	eax, 2
	cmp	ecx, edx
	jb	.L724
	mov	eax, 0
	cmp	edi, esi
	jb	.L724
	cmp	esi, edi
	setb	al
	movzx	eax, al
	add	eax, 1
.L724:
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
	mov	rax, rdx
	mov	rdx, rcx
	mov	ecx, 0
	cmp	rsi, rdx
	jb	.L731
	mov	ecx, 2
	cmp	rdx, rsi
	jb	.L731
	mov	ecx, 0
	cmp	rdi, rax
	jb	.L731
	cmp	rax, rdi
	setb	cl
	movzx	ecx, cl
	add	ecx, 1
.L731:
	mov	eax, ecx
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
	.section	.rodata.cst4
	.align 4
.LC9:
	.long	1056964608
	.set	.LC10,.LC12+4
	.section	.rodata.cst8
	.align 8
.LC11:
	.long	0
	.long	1071644672
	.align 8
.LC12:
	.long	0
	.long	1073741824
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
