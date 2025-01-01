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
	je	.L190
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
.L190:
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
	jmp	.L192
.L193:
	add	rbx, 1
.L192:
	cmp	rbx, r15
	je	.L197
	mov	rsi, rbp
	mov	rdi, r14
	call	r13
	add	rbp, r12
	test	eax, eax
	jne	.L193
	imul	rbx, r12
	mov	rax, QWORD PTR [rsp+8]
	add	rax, rbx
	jmp	.L194
.L197:
	mov	eax, 0
.L194:
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
	jmp	.L200
.L201:
	add	rbx, 1
.L200:
	movsx	edi, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L201
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L207
	mov	ecx, 0
	cmp	eax, 45
	jne	.L203
	mov	ecx, 1
.L202:
	add	rbx, 1
.L203:
	mov	edx, 0
	jmp	.L204
.L207:
	mov	ecx, 0
	jmp	.L202
	.p2align 5
.L205:
	lea	edx, [rdx+rdx*4]
	add	edx, edx
	add	rbx, 1
	movsx	eax, BYTE PTR [rbx-1]
	sub	eax, 48
	sub	edx, eax
.L204:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L205
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
	jmp	.L212
.L213:
	add	rbx, 1
.L212:
	movsx	edi, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L213
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L219
	mov	ecx, 0
	cmp	eax, 45
	jne	.L215
	mov	ecx, 1
.L214:
	add	rbx, 1
.L215:
	mov	edx, 0
	jmp	.L216
.L219:
	mov	ecx, 0
	jmp	.L214
	.p2align 6
.L217:
	lea	rdx, [rdx+rdx*4]
	add	rdx, rdx
	add	rbx, 1
	movsx	eax, BYTE PTR [rbx-1]
	sub	eax, 48
	cdqe
	sub	rdx, rax
.L216:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L217
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
	jmp	.L224
.L225:
	add	rbx, 1
.L224:
	movsx	edi, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L225
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L231
	mov	ecx, 0
	cmp	eax, 45
	jne	.L227
	mov	ecx, 1
.L226:
	add	rbx, 1
.L227:
	mov	edx, 0
	jmp	.L228
.L231:
	mov	ecx, 0
	jmp	.L226
	.p2align 6
.L229:
	lea	rdx, [rdx+rdx*4]
	add	rdx, rdx
	add	rbx, 1
	movsx	eax, BYTE PTR [rbx-1]
	sub	eax, 48
	cdqe
	sub	rdx, rax
.L228:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L229
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
	jmp	.L236
.L244:
	shr	rbp
.L236:
	test	rbp, rbp
	je	.L243
	mov	rbx, rbp
	shr	rbx
	imul	rbx, r12
	add	rbx, r13
	mov	rsi, rbx
	mov	rdi, r15
	call	r14
	test	eax, eax
	js	.L244
	jle	.L241
	lea	r13, [rbx+r12]
	mov	rax, rbp
	shr	rax
	sub	rbp, 1
	sub	rbp, rax
	jmp	.L236
.L243:
	mov	eax, 0
.L239:
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
.L241:
	.cfi_restore_state
	mov	rax, rbx
	jmp	.L239
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
	jmp	.L246
.L248:
	sar	ebp
.L246:
	test	ebp, ebp
	je	.L252
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
	je	.L250
	jle	.L248
	lea	r12, [rbx+r13]
	sub	ebp, 1
	jmp	.L248
.L252:
	mov	eax, 0
.L247:
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
.L250:
	.cfi_restore_state
	mov	rax, rbx
	jmp	.L247
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
	jmp	.L261
	.p2align 4
.L263:
	add	rdi, 4
.L261:
	cmp	DWORD PTR [rdi], 0
	je	.L262
	cmp	esi, DWORD PTR [rdi]
	jne	.L263
.L262:
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
	jmp	.L267
.L269:
	add	rdi, 4
	add	rsi, 4
.L267:
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	jne	.L268
	cmp	DWORD PTR [rdi], 0
	je	.L268
	test	eax, eax
	jne	.L269
.L268:
	mov	eax, -1
	mov	edx, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], edx
	jl	.L270
	setg	al
	movzx	eax, al
.L270:
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
.L273:
	add	rsi, 4
	add	rdx, 4
	mov	ecx, DWORD PTR [rsi-4]
	mov	DWORD PTR [rdx-4], ecx
	test	ecx, ecx
	jne	.L273
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
	jmp	.L276
	.p2align 4
.L277:
	add	rax, 4
.L276:
	cmp	DWORD PTR [rax], 0
	jne	.L277
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
.L279:
	test	rdx, rdx
	je	.L280
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	jne	.L280
	cmp	DWORD PTR [rdi], 0
	je	.L280
	test	eax, eax
	je	.L280
	sub	rdx, 1
	add	rdi, 4
	add	rsi, 4
	jmp	.L279
.L280:
	mov	eax, 0
	test	rdx, rdx
	je	.L282
	mov	eax, -1
	mov	ecx, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], ecx
	jl	.L282
	setg	al
	movzx	eax, al
.L282:
	ret
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	jmp	.L286
	.p2align 5
.L288:
	sub	rdx, 1
	add	rdi, 4
.L286:
	test	rdx, rdx
	je	.L287
	cmp	esi, DWORD PTR [rdi]
	jne	.L288
.L287:
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
	jmp	.L292
	.p2align 5
.L294:
	sub	rdx, 1
	add	rdi, 4
	add	rsi, 4
.L292:
	test	rdx, rdx
	je	.L293
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	je	.L294
.L293:
	mov	eax, 0
	test	rdx, rdx
	je	.L295
	mov	eax, -1
	mov	ecx, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], ecx
	jl	.L295
	setg	al
	movzx	eax, al
.L295:
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
	jmp	.L299
	.p2align 5
.L300:
	mov	r8d, DWORD PTR [rsi+rcx*4]
	mov	DWORD PTR [rax+rcx*4], r8d
	add	rcx, 1
.L299:
	cmp	rcx, rdx
	jne	.L300
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
	je	.L302
	sub	rdi, rsi
	lea	rcx, [0+rdx*4]
	cmp	rdi, rcx
	jb	.L303
	mov	ecx, 0
	jmp	.L304
	.p2align 4
.L305:
	mov	ecx, DWORD PTR [rsi+rdx*4]
	mov	DWORD PTR [rax+rdx*4], ecx
.L303:
	sub	rdx, 1
	cmp	rdx, -1
	jne	.L305
	ret
	.p2align 4
.L306:
	mov	edi, DWORD PTR [rsi+rcx*4]
	mov	DWORD PTR [rax+rcx*4], edi
	add	rcx, 1
.L304:
	cmp	rcx, rdx
	jne	.L306
.L302:
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
	jmp	.L309
	.p2align 4
.L310:
	mov	DWORD PTR [rax+rcx*4], esi
	add	rcx, 1
.L309:
	cmp	rcx, rdx
	jne	.L310
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
	jb	.L313
	mov	eax, 0
	jne	.L316
	ret
	.p2align 5
.L314:
	movzx	eax, BYTE PTR [rdi-1+rdx]
	mov	BYTE PTR [rsi-1+rdx], al
	sub	rdx, 1
.L313:
	test	rdx, rdx
	jne	.L314
	ret
	.p2align 4
.L317:
	movzx	ecx, BYTE PTR [rdi+rax]
	mov	BYTE PTR [rsi+rax], cl
	add	rax, 1
.L316:
	cmp	rax, rdx
	jne	.L317
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
.L334:
	cmp	eax, 32
	je	.L338
	bt	edi, eax
	jc	.L339
	add	eax, 1
	jmp	.L334
.L339:
	add	eax, 1
	ret
.L338:
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
	je	.L341
	mov	eax, 1
	jmp	.L342
	.p2align 4
.L343:
	sar	edi
	add	eax, 1
.L342:
	test	dil, 1
	je	.L343
.L341:
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
	ja	.L346
	comiss	xmm0, DWORD PTR .LC4[rip]
	seta	al
	movzx	eax, al
.L346:
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
	ja	.L352
	comisd	xmm0, QWORD PTR .LC6[rip]
	seta	al
	movzx	eax, al
.L352:
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
	ja	.L363
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	.L358
.L363:
	fstp	st(0)
.L358:
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
	jp	.L366
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm0, xmm1
	jp	.L372
	jne	.L372
.L366:
	ret
.L372:
	movss	xmm1, DWORD PTR .LC10[rip]
	test	edi, edi
	jns	.L370
	movss	xmm1, DWORD PTR .LC9[rip]
	jmp	.L370
	.p2align 5
.L369:
	mov	eax, edi
	shr	eax, 31
	add	eax, edi
	sar	eax
	mov	edi, eax
	je	.L366
	mulss	xmm1, xmm1
.L370:
	test	dil, 1
	je	.L369
	mulss	xmm0, xmm1
	jmp	.L369
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB90:
	.cfi_startproc
	ucomisd	xmm0, xmm0
	jp	.L374
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm0, xmm1
	jp	.L380
	jne	.L380
.L374:
	ret
.L380:
	movsd	xmm1, QWORD PTR .LC12[rip]
	test	edi, edi
	jns	.L378
	movsd	xmm1, QWORD PTR .LC11[rip]
	jmp	.L378
	.p2align 5
.L377:
	mov	eax, edi
	shr	eax, 31
	add	eax, edi
	sar	eax
	mov	edi, eax
	je	.L374
	mulsd	xmm1, xmm1
.L378:
	test	dil, 1
	je	.L377
	mulsd	xmm0, xmm1
	jmp	.L377
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
	jp	.L382
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	.L388
	jne	.L388
	jmp	.L382
.L390:
	fstp	st(0)
.L382:
	ret
.L388:
	test	edi, edi
	js	.L389
	fld	DWORD PTR .LC10[rip]
	jmp	.L386
.L389:
	fld	DWORD PTR .LC9[rip]
	jmp	.L386
	.p2align 5
.L385:
	mov	eax, edi
	shr	eax, 31
	add	eax, edi
	sar	eax
	mov	edi, eax
	je	.L390
	fmul	st, st(0)
.L386:
	test	dil, 1
	je	.L385
	fmul	st(1), st
	jmp	.L385
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
	jmp	.L392
	.p2align 5
.L393:
	add	rsi, 1
	add	rcx, 1
	movzx	r8d, BYTE PTR [rcx-1]
	xor	r8b, BYTE PTR [rsi-1]
	mov	BYTE PTR [rcx-1], r8b
.L392:
	cmp	rcx, rdx
	jne	.L393
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
	jmp	.L395
	.p2align 5
.L397:
	add	rbp, 1
	add	rax, 1
	sub	rbx, 1
.L395:
	test	rbx, rbx
	je	.L396
	movzx	edx, BYTE PTR [rbp+0]
	mov	BYTE PTR [rax], dl
	test	dl, dl
	jne	.L397
.L396:
	test	rbx, rbx
	jne	.L398
	mov	BYTE PTR [rax], 0
.L398:
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
.L401:
	cmp	rax, rsi
	je	.L402
	cmp	BYTE PTR [rdi+rax], 0
	jne	.L403
.L402:
	ret
.L403:
	add	rax, 1
	jmp	.L401
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
.L405:
	cmp	BYTE PTR [rdi], 0
	je	.L411
	mov	rdx, rsi
	.p2align 5
.L408:
	cmp	BYTE PTR [rdx], 0
	je	.L412
	add	rdx, 1
	movzx	eax, BYTE PTR [rdi]
	cmp	BYTE PTR [rdx-1], al
	jne	.L408
	mov	rax, rdi
	ret
.L412:
	add	rdi, 1
	jmp	.L405
.L411:
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
.L415:
	movsx	edx, BYTE PTR [rdi]
	cmp	esi, edx
	cmove	rax, rdi
	add	rdi, 1
	cmp	BYTE PTR [rdi-1], 0
	jne	.L415
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
	je	.L419
	movsx	r13d, BYTE PTR [rbp+0]
.L420:
	mov	esi, r13d
	mov	rdi, rbx
	call	strchr
	mov	rbx, rax
	test	rax, rax
	je	.L425
	mov	rdx, r12
	mov	rsi, rbp
	mov	rdi, rbx
	call	strncmp
	test	eax, eax
	je	.L423
	add	rbx, 1
	jmp	.L420
.L425:
	mov	eax, 0
.L419:
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
.L423:
	.cfi_restore_state
	mov	rax, rbx
	jmp	.L419
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
	ja	.L439
.L427:
	pxor	xmm2, xmm2
	comisd	xmm0, xmm2
	jbe	.L430
	comisd	xmm2, xmm1
	ja	.L429
.L430:
	ret
.L439:
	comisd	xmm1, xmm2
	jbe	.L427
.L429:
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
	mov	r12, rsi
	sub	r12, rcx
	add	r12, rdi
	mov	rax, rdi
	test	rcx, rcx
	je	.L441
	mov	rbp, rdx
	cmp	rsi, rcx
	jb	.L446
	mov	rbx, rdi
	lea	r13, [rcx-1]
	lea	r14, [rdx+1]
	jmp	.L442
	.p2align 5
.L443:
	add	rbx, 1
.L442:
	cmp	r12, rbx
	jb	.L449
	movzx	eax, BYTE PTR [rbp+0]
	cmp	BYTE PTR [rbx], al
	jne	.L443
	lea	rdi, [rbx+1]
	mov	rdx, r13
	mov	rsi, r14
	call	memcmp
	test	eax, eax
	jne	.L443
	mov	rax, rbx
	jmp	.L441
.L449:
	mov	eax, 0
.L441:
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
.L446:
	.cfi_restore_state
	mov	eax, 0
	jmp	.L441
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
	ja	.L469
.L453:
	mov	eax, 0
	comisd	xmm0, QWORD PTR .LC14[rip]
	jb	.L468
	movsd	xmm1, QWORD PTR .LC14[rip]
	movsd	xmm2, QWORD PTR .LC11[rip]
	jmp	.L455
.L469:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	mov	edx, 1
	jmp	.L453
	.p2align 4
.L457:
	add	eax, 1
	mulsd	xmm0, xmm2
.L455:
	comisd	xmm0, xmm1
	jnb	.L457
.L458:
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	je	.L461
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L461:
	ret
.L468:
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	setp	al
	mov	ecx, 1
	cmovne	eax, ecx
	movsd	xmm1, QWORD PTR .LC11[rip]
	comisd	xmm1, xmm0
	seta	cl
	test	cl, al
	jne	.L464
	mov	eax, 0
	jmp	.L458
	.p2align 4
.L460:
	sub	eax, 1
	addsd	xmm0, xmm0
.L459:
	comisd	xmm1, xmm0
	ja	.L460
	jmp	.L458
.L464:
	mov	eax, 0
	movsd	xmm1, QWORD PTR .LC11[rip]
	jmp	.L459
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	mov	eax, 0
	jmp	.L471
	.p2align 5
.L473:
	lea	rdx, [rax+rsi]
	test	dil, 1
	cmovne	rax, rdx
	add	rsi, rsi
	shr	rdi
.L471:
	test	rdi, rdi
	jne	.L473
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
	jmp	.L475
	.p2align 5
.L478:
	add	esi, esi
	add	ecx, ecx
.L475:
	cmp	esi, edi
	setb	r8b
	test	ecx, ecx
	setne	al
	test	r8b, al
	je	.L484
	test	esi, esi
	jns	.L478
	mov	eax, 0
	jmp	.L477
.L484:
	mov	eax, 0
	jmp	.L477
	.p2align 4
.L480:
	shr	ecx
	shr	esi
.L477:
	test	ecx, ecx
	je	.L485
	cmp	edi, esi
	jb	.L480
	sub	edi, esi
	or	eax, ecx
	jmp	.L480
.L485:
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
	je	.L488
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	edx, [rax-1]
.L488:
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
	je	.L492
	bsr	rax, rax
	xor	rax, 63
	lea	edx, [rax-1]
.L492:
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
	jmp	.L495
	.p2align 5
.L497:
	lea	edx, [rax+rsi]
	test	dil, 1
	cmovne	eax, edx
	shr	edi
	add	esi, esi
.L495:
	test	edi, edi
	jne	.L497
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
	jb	.L499
	mov	ecx, edx
	add	rcx, rsi
	cmp	rcx, rdi
	jnb	.L500
.L499:
	lea	r9d, [0+r8*8]
	mov	ecx, 0
	jmp	.L501
	.p2align 5
.L502:
	mov	r8, QWORD PTR [rsi+rcx]
	mov	QWORD PTR [rdi+rcx], r8
	add	rcx, 8
.L501:
	cmp	rcx, r9
	jne	.L502
	mov	eax, eax
	jmp	.L503
	.p2align 4
.L504:
	movzx	ecx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], cl
	add	rax, 1
.L503:
	cmp	eax, edx
	jb	.L504
	ret
	.p2align 5
.L506:
	mov	eax, edx
	movzx	ecx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], cl
.L500:
	sub	edx, 1
	cmp	edx, -1
	jne	.L506
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
	jb	.L509
	mov	eax, edx
	add	rax, rsi
	cmp	rax, rcx
	jnb	.L510
.L509:
	lea	r8d, [rdi+rdi]
	mov	eax, 0
	jmp	.L511
	.p2align 5
.L512:
	movzx	edi, WORD PTR [rsi+rax]
	mov	WORD PTR [rcx+rax], di
	add	rax, 2
.L511:
	cmp	rax, r8
	jne	.L512
	test	dl, 1
	je	.L508
	lea	eax, [rdx-1]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	ret
	.p2align 5
.L514:
	mov	eax, edx
	movzx	edi, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dil
.L510:
	sub	edx, 1
	cmp	edx, -1
	jne	.L514
.L508:
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
	jb	.L517
	mov	ecx, edx
	add	rcx, rsi
	cmp	rcx, rdi
	jnb	.L518
.L517:
	lea	r9d, [0+r8*4]
	mov	ecx, 0
	jmp	.L519
	.p2align 5
.L520:
	mov	r8d, DWORD PTR [rsi+rcx]
	mov	DWORD PTR [rdi+rcx], r8d
	add	rcx, 4
.L519:
	cmp	rcx, r9
	jne	.L520
	mov	eax, eax
	jmp	.L521
	.p2align 4
.L522:
	movzx	ecx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], cl
	add	rax, 1
.L521:
	cmp	eax, edx
	jb	.L522
	ret
	.p2align 5
.L524:
	mov	eax, edx
	movzx	ecx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], cl
.L518:
	sub	edx, 1
	cmp	edx, -1
	jne	.L524
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
	js	.L534
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdi
	ret
.L534:
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
	js	.L537
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdi
	ret
.L537:
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
.L541:
	cmp	eax, 16
	je	.L542
	mov	edx, ecx
	sub	edx, eax
	bt	edi, edx
	jc	.L542
	add	eax, 1
	jmp	.L541
.L542:
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
.L545:
	cmp	eax, 16
	je	.L546
	bt	edi, eax
	jc	.L546
	add	eax, 1
	jmp	.L545
.L546:
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
	jnb	.L554
	cvttss2si	rax, xmm0
	ret
.L554:
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
	jmp	.L556
	.p2align 5
.L558:
	mov	edx, edi
	sar	edx, cl
	and	edx, 1
	cmp	edx, 1
	sbb	eax, -1
	add	ecx, 1
.L556:
	cmp	ecx, 16
	jne	.L558
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
	jmp	.L560
	.p2align 5
.L562:
	mov	eax, edi
	sar	eax, cl
	and	eax, 1
	cmp	eax, 1
	sbb	edx, -1
	add	ecx, 1
.L560:
	cmp	ecx, 16
	jne	.L562
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
	jmp	.L564
	.p2align 5
.L566:
	lea	edx, [rax+rsi]
	test	dil, 1
	cmovne	eax, edx
	shr	edi
	add	esi, esi
.L564:
	test	edi, edi
	jne	.L566
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
	jne	.L569
	ret
	.p2align 5
.L571:
	lea	edx, [rax+rdi]
	test	sil, 1
	cmovne	eax, edx
	add	edi, edi
	shr	esi
.L569:
	test	esi, esi
	jne	.L571
.L568:
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
	jmp	.L574
	.p2align 5
.L577:
	add	esi, esi
	add	ecx, ecx
.L574:
	cmp	esi, edi
	setb	r8b
	test	ecx, ecx
	setne	al
	test	r8b, al
	je	.L583
	test	esi, esi
	jns	.L577
	mov	eax, 0
	jmp	.L576
.L583:
	mov	eax, 0
	jmp	.L576
	.p2align 4
.L579:
	shr	ecx
	shr	esi
.L576:
	test	ecx, ecx
	je	.L584
	cmp	edi, esi
	jb	.L579
	sub	edi, esi
	or	eax, ecx
	jmp	.L579
.L584:
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
	ja	.L586
	comiss	xmm0, xmm1
	seta	al
	movzx	eax, al
.L586:
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
	ja	.L590
	comisd	xmm0, xmm1
	seta	al
	movzx	eax, al
.L590:
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
	js	.L603
.L596:
	mov	edx, 0
	mov	eax, 0
	jmp	.L597
.L603:
	neg	esi
	mov	r9d, 1
	jmp	.L596
	.p2align 6
.L599:
	lea	ecx, [rdx+rdi]
	test	sil, 1
	cmovne	edx, ecx
	add	edi, edi
	sar	esi
	add	eax, 1
.L597:
	test	esi, esi
	setne	cl
	cmp	al, 31
	setbe	r8b
	test	r8b, cl
	jne	.L599
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
	js	.L610
.L605:
	test	rsi, rsi
	js	.L611
.L606:
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
.L610:
	.cfi_restore_state
	neg	rdi
	mov	ebx, 1
	jmp	.L605
.L611:
	neg	rsi
	xor	ebx, 1
	jmp	.L606
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
	js	.L618
.L613:
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
.L618:
	.cfi_restore_state
	neg	rdi
	mov	ebx, 1
	jmp	.L613
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	mov	ecx, 1
	jmp	.L620
	.p2align 5
.L623:
	add	esi, esi
	add	ecx, ecx
.L620:
	cmp	si, di
	setb	r8b
	test	cx, cx
	setne	al
	test	r8b, al
	je	.L629
	test	si, si
	jns	.L623
	mov	eax, 0
	jmp	.L622
.L629:
	mov	eax, 0
	jmp	.L622
	.p2align 4
.L625:
	shr	cx
	shr	si
.L622:
	test	cx, cx
	je	.L630
	cmp	di, si
	jb	.L625
	sub	edi, esi
	or	eax, ecx
	jmp	.L625
.L630:
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
	jmp	.L632
	.p2align 5
.L635:
	add	rsi, rsi
	add	rcx, rcx
.L632:
	cmp	rsi, rdi
	setb	r8b
	test	rcx, rcx
	setne	al
	test	r8b, al
	je	.L641
	test	esi, 2147483648
	je	.L635
	mov	eax, 0
	jmp	.L634
.L641:
	mov	eax, 0
	jmp	.L634
	.p2align 4
.L637:
	shr	rcx
	shr	rsi
.L634:
	test	rcx, rcx
	je	.L642
	cmp	rdi, rsi
	jb	.L637
	sub	rdi, rsi
	or	rax, rcx
	jmp	.L637
.L642:
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
	je	.L644
	lea	ecx, [rsi-32]
	sal	edi, cl
	mov	rax, rdi
	sal	rax, 32
	ret
.L644:
	mov	rax, rdi
	test	esi, esi
	je	.L646
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
.L646:
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
	je	.L649
	mov	eax, 0
	lea	ecx, [rdx-64]
	sal	rdi, cl
	mov	rdx, rdi
	ret
.L649:
	mov	rax, rdi
	mov	rdx, rsi
	test	r10d, r10d
	je	.L651
	mov	ecx, r10d
	sal	rax, cl
	sal	rsi, cl
	mov	ecx, 64
	sub	ecx, r10d
	shr	rdi, cl
	or	rdi, rsi
	mov	rdx, rdi
.L651:
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
	je	.L654
	sar	rdi, 32
	mov	eax, edi
	sar	eax, 31
	lea	ecx, [rsi-32]
	sar	edi, cl
	sal	rax, 32
	or	rax, rdi
	ret
.L654:
	mov	rax, rdi
	test	esi, esi
	je	.L656
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
.L656:
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
	je	.L659
	mov	rcx, r8
	sar	rcx, 63
	mov	rdx, rcx
	lea	ecx, [r9-64]
	sar	r8, cl
	mov	rax, r8
	ret
.L659:
	mov	rax, rdi
	mov	rdx, rsi
	test	r9d, r9d
	je	.L661
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
.L661:
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
	jl	.L676
	mov	rcx, rdi
	sar	rcx, 32
	mov	rdx, rsi
	sar	rdx, 32
	mov	eax, 2
	cmp	ecx, edx
	jg	.L676
	mov	eax, 0
	cmp	edi, esi
	jb	.L676
	cmp	esi, edi
	setb	al
	movzx	eax, al
	add	eax, 1
.L676:
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
	mov	rcx, rax
	mov	rax, rdx
	mov	edx, 0
	cmp	rsi, rax
	jl	.L683
	mov	edx, 2
	jg	.L683
	mov	edx, 0
	cmp	rdi, rcx
	jb	.L683
	cmp	rcx, rdi
	setb	dl
	movzx	edx, dl
	add	edx, 1
.L683:
	mov	eax, edx
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
	jne	.L699
	xor	eax, eax
	rep bsf	rax, rsi
	add	eax, 65
	test	rsi, rsi
	mov	edx, 0
	cmove	eax, edx
	ret
.L699:
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
	je	.L703
	shr	rdi, 32
	lea	ecx, [rsi-32]
	mov	eax, edi
	shr	eax, cl
	ret
.L703:
	mov	rax, rdi
	test	esi, esi
	je	.L705
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
.L705:
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
	je	.L708
	lea	ecx, [rdx-64]
	shr	rsi, cl
	mov	r8, rsi
	mov	r9d, 0
.L710:
	mov	rax, r8
	mov	rdx, r9
	ret
.L708:
	test	edx, edx
	je	.L710
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
	jmp	.L710
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
	imul	rbx, r13
	imul	rbp, r12
	add	rbx, rbp
	add	rbx, rdx
	mov	rdx, rbx
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
	jmp	.L729
	.p2align 5
.L727:
	mov	eax, edi
	shr	eax, 31
	add	eax, edi
	sar	eax
	mov	edi, eax
	je	.L728
	mulsd	xmm0, xmm0
.L729:
	test	dil, 1
	je	.L727
	mulsd	xmm1, xmm0
	jmp	.L727
.L728:
	movapd	xmm0, xmm1
	test	edx, edx
	je	.L730
	movsd	xmm0, QWORD PTR .LC14[rip]
	divsd	xmm0, xmm1
.L730:
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
	jmp	.L735
	.p2align 5
.L733:
	mov	eax, edi
	shr	eax, 31
	add	eax, edi
	sar	eax
	mov	edi, eax
	je	.L734
	mulss	xmm0, xmm0
.L735:
	test	dil, 1
	je	.L733
	mulss	xmm1, xmm0
	jmp	.L733
.L734:
	movaps	xmm0, xmm1
	test	edx, edx
	je	.L736
	movss	xmm0, DWORD PTR .LC16[rip]
	divss	xmm0, xmm1
.L736:
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
	jb	.L739
	mov	rdx, rcx
	mov	rcx, rsi
	shr	rcx, 32
	mov	eax, 2
	cmp	ecx, edx
	jb	.L739
	mov	eax, 0
	cmp	edi, esi
	jb	.L739
	cmp	esi, edi
	setb	al
	movzx	eax, al
	add	eax, 1
.L739:
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
	mov	rcx, rax
	mov	rax, rdx
	mov	edx, 0
	cmp	rsi, rax
	jb	.L746
	mov	edx, 2
	cmp	rax, rsi
	jb	.L746
	mov	edx, 0
	cmp	rdi, rcx
	jb	.L746
	cmp	rcx, rdi
	setb	dl
	movzx	edx, dl
	add	edx, 1
.L746:
	mov	eax, edx
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
