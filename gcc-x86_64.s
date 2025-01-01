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
	je	.L12
	.p2align 5
.L11:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rdi], r8b
	movzx	r8d, r8b
	cmp	edx, r8d
	je	.L12
	add	rsi, 1
	add	rdi, 1
	sub	rcx, 1
	jne	.L11
.L12:
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
	mov	rax, rdi
	movzx	esi, sil
	test	rdx, rdx
	je	.L19
	.p2align 5
.L18:
	movzx	ecx, BYTE PTR [rax]
	cmp	esi, ecx
	je	.L19
	add	rax, 1
	sub	rdx, 1
	jne	.L18
.L19:
	test	rdx, rdx
	mov	edx, 0
	cmove	rax, rdx
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
	je	.L26
	.p2align 5
.L25:
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rdi], al
	jne	.L26
	add	rdi, 1
	add	rsi, 1
	sub	rdx, 1
	jne	.L25
.L26:
	mov	eax, 0
	test	rdx, rdx
	je	.L24
	movzx	eax, BYTE PTR [rdi]
	movzx	edx, BYTE PTR [rsi]
	sub	eax, edx
.L24:
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
	je	.L32
	mov	ecx, 0
	.p2align 5
.L33:
	movzx	r8d, BYTE PTR [rsi+rcx]
	mov	BYTE PTR [rax+rcx], r8b
	add	rcx, 1
	cmp	rcx, rdx
	jne	.L33
.L32:
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
.L36:
	cmp	rdx, -1
	je	.L40
	movzx	ecx, BYTE PTR [rdi+rdx]
	lea	r8, [rdx-1]
	cmp	esi, ecx
	je	.L41
	mov	rdx, r8
	jmp	.L36
.L41:
	lea	rax, [rdi+rdx]
	ret
.L40:
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
	test	rdx, rdx
	je	.L43
	add	rdx, rdi
	mov	rcx, rdi
	.p2align 4
.L44:
	mov	BYTE PTR [rcx], sil
	add	rcx, 1
	cmp	rcx, rdx
	jne	.L44
.L43:
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
	je	.L47
	.p2align 5
.L48:
	add	rsi, 1
	add	rax, 1
	movzx	edx, BYTE PTR [rsi]
	mov	BYTE PTR [rax], dl
	test	dl, dl
	jne	.L48
.L47:
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
	cmp	BYTE PTR [rdi], 0
	je	.L56
	.p2align 4
.L51:
	movzx	edx, BYTE PTR [rax]
	cmp	esi, edx
	je	.L50
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L51
.L50:
	ret
.L56:
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
.L59:
	movsx	edx, BYTE PTR [rax]
	cmp	esi, edx
	je	.L58
	add	rax, 1
	cmp	BYTE PTR [rax-1], 0
	jne	.L59
	mov	eax, 0
.L58:
	ret
	.cfi_endproc
.LFE11:
	.size	strchr, .-strchr
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.cfi_startproc
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rdi], al
	jne	.L63
	.p2align 5
.L62:
	cmp	BYTE PTR [rdi], 0
	je	.L63
	add	rdi, 1
	add	rsi, 1
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rdi], al
	je	.L62
.L63:
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
	cmp	BYTE PTR [rdi], 0
	je	.L69
	mov	rax, rdi
	.p2align 4
.L68:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L68
.L67:
	sub	rax, rdi
	ret
.L69:
	mov	rax, rdi
	jmp	.L67
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
	je	.L71
	mov	rax, rdi
	lea	r8, [rdi-1+rdx]
	cmp	BYTE PTR [rdi], 0
	je	.L74
.L73:
	cmp	rax, r8
	setne	cl
	cmp	BYTE PTR [rsi], 0
	setne	dl
	test	cl, dl
	je	.L74
	movzx	edi, BYTE PTR [rsi]
	cmp	BYTE PTR [rax], dil
	jne	.L74
	add	rax, 1
	add	rsi, 1
	cmp	BYTE PTR [rax], 0
	jne	.L73
.L74:
	movzx	eax, BYTE PTR [rax]
	movzx	edx, BYTE PTR [rsi]
	sub	eax, edx
.L71:
	ret
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.globl	swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	cmp	rdx, 1
	jle	.L79
	sub	rdx, 2
	shr	rdx
	lea	rdx, [rdi+2+rdx*2]
	.p2align 5
.L81:
	movzx	eax, BYTE PTR [rdi+1]
	mov	BYTE PTR [rsi], al
	movzx	eax, BYTE PTR [rdi]
	mov	BYTE PTR [rsi+1], al
	add	rsi, 2
	add	rdi, 2
	cmp	rdi, rdx
	jne	.L81
.L79:
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
	jne	.L93
	lea	eax, [rdi-8232]
	cmp	eax, 1
	jbe	.L93
	sub	edi, 65529
	cmp	edi, 2
	setbe	dl
	movzx	edx, dl
.L93:
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
	jbe	.L104
	cmp	edi, 8231
	setbe	dl
	lea	eax, [rdi-8234]
	cmp	eax, 47061
	setbe	cl
	mov	eax, 1
	or	dl, cl
	jne	.L98
	lea	edx, [rdi-57344]
	cmp	edx, 8184
	jbe	.L98
	lea	edx, [rdi-65532]
	mov	eax, 0
	cmp	edx, 1048579
	ja	.L98
	not	edi
	test	edi, 65534
	setne	al
	movzx	eax, al
.L98:
	ret
.L104:
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
	jbe	.L105
	or	edi, 32
	sub	edi, 97
	cmp	edi, 5
	setbe	al
	movzx	eax, al
.L105:
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
	jp	.L109
	ucomisd	xmm1, xmm1
	jp	.L113
	comisd	xmm0, xmm1
	jbe	.L116
	subsd	xmm0, xmm1
	ret
.L113:
	movapd	xmm0, xmm1
	ret
.L116:
	pxor	xmm0, xmm0
.L109:
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
	jp	.L117
	ucomiss	xmm1, xmm1
	jp	.L121
	comiss	xmm0, xmm1
	jbe	.L124
	subss	xmm0, xmm1
	ret
.L121:
	movaps	xmm0, xmm1
	ret
.L124:
	pxor	xmm0, xmm0
.L117:
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
	jp	.L130
	ucomisd	xmm1, xmm1
	jp	.L125
	movmskpd	edx, xmm0
	and	edx, 1
	movmskpd	eax, xmm1
	and	eax, 1
	cmp	edx, eax
	je	.L127
	movmskpd	eax, xmm0
	test	al, 1
	je	.L125
	movapd	xmm0, xmm1
	ret
.L127:
	movapd	xmm2, xmm1
	maxsd	xmm2, xmm0
	movapd	xmm0, xmm2
	ret
.L130:
	movapd	xmm0, xmm1
.L125:
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
	jp	.L138
	ucomiss	xmm1, xmm1
	jp	.L133
	movd	edx, xmm0
	and	edx, -2147483648
	movd	eax, xmm1
	and	eax, -2147483648
	cmp	edx, eax
	je	.L135
	movd	eax, xmm0
	test	eax, eax
	jns	.L133
	movaps	xmm0, xmm1
	ret
.L135:
	movaps	xmm2, xmm1
	maxss	xmm2, xmm0
	movaps	xmm0, xmm2
	ret
.L138:
	movaps	xmm0, xmm1
.L133:
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
	jp	.L147
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L145
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
	je	.L143
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmovne	st, st(1)
	fstp	st(1)
	ret
.L143:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	ret
.L145:
	fstp	st(0)
	jmp	.L141
.L147:
	fstp	st(0)
.L141:
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
	jp	.L154
	movmskpd	edx, xmm0
	and	edx, 1
	movmskpd	eax, xmm1
	and	eax, 1
	cmp	edx, eax
	je	.L150
	movmskpd	eax, xmm0
	test	al, 1
	je	.L148
	movapd	xmm1, xmm0
	jmp	.L148
.L150:
	movapd	xmm2, xmm0
	minsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L148:
	movapd	xmm0, xmm1
	ret
.L154:
	movapd	xmm1, xmm0
	jmp	.L148
	.cfi_endproc
.LFE36:
	.size	fmin, .-fmin
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB37:
	.cfi_startproc
	ucomiss	xmm0, xmm0
	jp	.L156
	ucomiss	xmm1, xmm1
	jp	.L162
	movd	edx, xmm0
	and	edx, -2147483648
	movd	eax, xmm1
	and	eax, -2147483648
	cmp	edx, eax
	je	.L158
	movd	eax, xmm0
	test	eax, eax
	jns	.L156
	movaps	xmm1, xmm0
	jmp	.L156
.L158:
	movaps	xmm2, xmm0
	minss	xmm2, xmm1
	movaps	xmm1, xmm2
.L156:
	movaps	xmm0, xmm1
	ret
.L162:
	movaps	xmm1, xmm0
	jmp	.L156
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
	jp	.L167
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L170
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
	je	.L166
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmove	st, st(1)
	fstp	st(1)
	ret
.L166:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	ret
.L167:
	fstp	st(0)
	jmp	.L164
.L170:
	fstp	st(0)
.L164:
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
	je	.L174
	mov	edx, OFFSET FLAT:s.0
	.p2align 5
.L173:
	mov	ecx, eax
	and	ecx, 63
	movzx	ecx, BYTE PTR digits[rcx]
	mov	BYTE PTR [rdx], cl
	add	rdx, 1
	shr	eax, 6
	jne	.L173
.L172:
	mov	BYTE PTR [rdx], 0
	mov	eax, OFFSET FLAT:s.0
	ret
.L174:
	mov	edx, OFFSET FLAT:s.0
	jmp	.L172
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
	je	.L181
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR [rdi], rax
	mov	QWORD PTR [rdi+8], rsi
	mov	QWORD PTR [rsi], rdi
	cmp	QWORD PTR [rdi], 0
	je	.L178
	mov	rax, QWORD PTR [rdi]
	mov	QWORD PTR [rax+8], rdi
.L178:
	ret
.L181:
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
	je	.L183
	mov	rax, QWORD PTR [rdi]
	mov	rdx, QWORD PTR [rdi+8]
	mov	QWORD PTR [rax+8], rdx
.L183:
	cmp	QWORD PTR [rdi+8], 0
	je	.L182
	mov	rax, QWORD PTR [rdi+8]
	mov	rdx, QWORD PTR [rdi]
	mov	QWORD PTR [rax], rdx
.L182:
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
	mov	r13, QWORD PTR [rdx]
	test	r13, r13
	je	.L186
	mov	r15, r8
	mov	rbp, rsi
	mov	ebx, 0
.L189:
	mov	rsi, rbp
	mov	rdi, r14
	call	r15
	test	eax, eax
	je	.L192
	add	rbx, 1
	add	rbp, r12
	cmp	rbx, r13
	jne	.L189
.L186:
	lea	rax, [r13+1]
	mov	rcx, QWORD PTR [rsp+8]
	mov	QWORD PTR [rcx], rax
	imul	r13, r12
	mov	rdi, QWORD PTR [rsp]
	add	rdi, r13
	mov	rdx, r12
	mov	rsi, r14
	call	memcpy
.L185:
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
.L192:
	.cfi_restore_state
	imul	rbx, r12
	mov	rax, QWORD PTR [rsp]
	add	rax, rbx
	jmp	.L185
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
	mov	QWORD PTR [rsp+8], rsi
	mov	r15, QWORD PTR [rdx]
	test	r15, r15
	je	.L197
	mov	r13, rdi
	mov	r12, rcx
	mov	r14, r8
	mov	rbp, rsi
	mov	ebx, 0
.L196:
	mov	rsi, rbp
	mov	rdi, r13
	call	r14
	test	eax, eax
	je	.L200
	add	rbx, 1
	add	rbp, r12
	cmp	rbx, r15
	jne	.L196
	mov	eax, 0
	jmp	.L193
.L200:
	imul	rbx, r12
	mov	rax, QWORD PTR [rsp+8]
	add	rax, rbx
.L193:
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
	mov	eax, 0
	jmp	.L193
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
	jmp	.L203
.L204:
	add	rbx, 1
.L203:
	movsx	edi, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L204
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L210
	mov	ecx, 0
	cmp	eax, 45
	jne	.L206
	mov	ecx, 1
.L205:
	add	rbx, 1
.L206:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	ja	.L212
	mov	eax, 0
	.p2align 5
.L208:
	lea	eax, [rax+rax*4]
	add	eax, eax
	add	rbx, 1
	movsx	edx, BYTE PTR [rbx-1]
	sub	edx, 48
	sub	eax, edx
	movsx	edx, BYTE PTR [rbx]
	sub	edx, 48
	cmp	edx, 9
	jbe	.L208
.L207:
	mov	edx, eax
	neg	edx
	test	ecx, ecx
	cmove	eax, edx
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L210:
	.cfi_restore_state
	mov	ecx, 0
	jmp	.L205
.L212:
	mov	eax, 0
	jmp	.L207
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
	jmp	.L216
.L217:
	add	rbx, 1
.L216:
	movsx	edi, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L217
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L223
	mov	ecx, 0
	cmp	eax, 45
	jne	.L219
	mov	ecx, 1
.L218:
	add	rbx, 1
.L219:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	ja	.L225
	mov	eax, 0
	.p2align 6
.L221:
	lea	rax, [rax+rax*4]
	add	rax, rax
	add	rbx, 1
	movsx	edx, BYTE PTR [rbx-1]
	sub	edx, 48
	movsx	rdx, edx
	sub	rax, rdx
	movsx	edx, BYTE PTR [rbx]
	sub	edx, 48
	cmp	edx, 9
	jbe	.L221
.L220:
	mov	rdx, rax
	neg	rdx
	test	ecx, ecx
	cmove	rax, rdx
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L223:
	.cfi_restore_state
	mov	ecx, 0
	jmp	.L218
.L225:
	mov	eax, 0
	jmp	.L220
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
	jmp	.L229
.L230:
	add	rbx, 1
.L229:
	movsx	edi, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L230
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L236
	mov	ecx, 0
	cmp	eax, 45
	jne	.L232
	mov	ecx, 1
.L231:
	add	rbx, 1
.L232:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	ja	.L238
	mov	eax, 0
	.p2align 6
.L234:
	lea	rax, [rax+rax*4]
	add	rax, rax
	add	rbx, 1
	movsx	edx, BYTE PTR [rbx-1]
	sub	edx, 48
	movsx	rdx, edx
	sub	rax, rdx
	movsx	edx, BYTE PTR [rbx]
	sub	edx, 48
	cmp	edx, 9
	jbe	.L234
.L233:
	mov	rdx, rax
	neg	rdx
	test	ecx, ecx
	cmove	rax, rdx
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L236:
	.cfi_restore_state
	mov	ecx, 0
	jmp	.L231
.L238:
	mov	eax, 0
	jmp	.L233
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
	test	rdx, rdx
	jne	.L245
	mov	ebx, 0
	jmp	.L241
.L250:
	shr	rbp
.L244:
	test	rbp, rbp
	je	.L249
.L245:
	mov	rbx, rbp
	shr	rbx
	imul	rbx, r12
	add	rbx, r13
	mov	rsi, rbx
	mov	rdi, r15
	call	r14
	test	eax, eax
	js	.L250
	jle	.L241
	lea	r13, [rbx+r12]
	mov	rax, rbp
	shr	rax
	sub	rbp, 1
	sub	rbp, rax
	jmp	.L244
.L249:
	mov	ebx, 0
.L241:
	mov	rax, rbx
	add	rsp, 8
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
	jne	.L254
	mov	ebx, 0
	jmp	.L251
.L253:
	sar	ebp
	je	.L258
.L254:
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
	je	.L251
	jle	.L253
	lea	r13, [rbx+r12]
	sub	ebp, 1
	jmp	.L253
.L258:
	mov	ebx, 0
.L251:
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
	cmp	DWORD PTR [rdi], 0
	je	.L268
	.p2align 4
.L267:
	cmp	esi, DWORD PTR [rax]
	je	.L268
	add	rax, 4
	cmp	DWORD PTR [rax], 0
	jne	.L267
.L268:
	cmp	DWORD PTR [rax], 0
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
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	jne	.L275
.L274:
	cmp	DWORD PTR [rdi], 0
	je	.L275
	cmp	DWORD PTR [rsi], 0
	je	.L275
	add	rdi, 4
	add	rsi, 4
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	je	.L274
.L275:
	mov	eax, -1
	mov	edx, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], edx
	jl	.L273
	setg	al
	movzx	eax, al
.L273:
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
.L281:
	add	rsi, 4
	add	rdx, 4
	mov	ecx, DWORD PTR [rsi-4]
	mov	DWORD PTR [rdx-4], ecx
	test	ecx, ecx
	jne	.L281
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
	je	.L286
	mov	rax, rdi
	.p2align 4
.L285:
	add	rax, 4
	cmp	DWORD PTR [rax], 0
	jne	.L285
.L284:
	sub	rax, rdi
	sar	rax, 2
	ret
.L286:
	mov	rax, rdi
	jmp	.L284
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
.L289:
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	jne	.L290
	cmp	DWORD PTR [rdi], 0
	je	.L290
	test	eax, eax
	je	.L290
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	jne	.L289
.L290:
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
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	mov	rax, rdi
	test	rdx, rdx
	je	.L298
	.p2align 4
.L297:
	cmp	esi, DWORD PTR [rax]
	je	.L298
	add	rax, 4
	sub	rdx, 1
	jne	.L297
.L298:
	test	rdx, rdx
	mov	edx, 0
	cmove	rax, rdx
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
	je	.L305
	.p2align 5
.L304:
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	jne	.L305
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	jne	.L304
.L305:
	mov	eax, 0
	test	rdx, rdx
	je	.L303
	mov	eax, -1
	mov	ecx, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], ecx
	jl	.L303
	setg	al
	movzx	eax, al
.L303:
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
	mov	eax, 0
	test	edi, edi
	je	.L355
	test	dil, 1
	jne	.L359
	mov	eax, 1
	.p2align 4
.L357:
	sar	edi
	add	eax, 1
	test	dil, 1
	je	.L357
	ret
.L359:
	mov	eax, 1
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
	ja	.L361
	comiss	xmm0, DWORD PTR .LC4[rip]
	seta	al
	movzx	eax, al
.L361:
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
	ja	.L364
	comisd	xmm0, QWORD PTR .LC6[rip]
	seta	al
	movzx	eax, al
.L364:
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
	ja	.L370
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	.L367
.L370:
	fstp	st(0)
.L367:
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
	jp	.L373
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm0, xmm1
	jp	.L379
	jne	.L379
.L373:
	ret
.L379:
	movss	xmm1, DWORD PTR .LC9[rip]
	test	edi, edi
	jns	.L377
	movss	xmm1, DWORD PTR .LC10[rip]
	jmp	.L377
	.p2align 5
.L376:
	mov	eax, edi
	shr	eax, 31
	add	eax, edi
	sar	eax
	mov	edi, eax
	je	.L373
	mulss	xmm1, xmm1
.L377:
	test	dil, 1
	je	.L376
	mulss	xmm0, xmm1
	jmp	.L376
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB90:
	.cfi_startproc
	ucomisd	xmm0, xmm0
	jp	.L381
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm0, xmm1
	jp	.L387
	jne	.L387
.L381:
	ret
.L387:
	movsd	xmm1, QWORD PTR .LC11[rip]
	test	edi, edi
	jns	.L385
	movsd	xmm1, QWORD PTR .LC12[rip]
	jmp	.L385
	.p2align 5
.L384:
	mov	eax, edi
	shr	eax, 31
	add	eax, edi
	sar	eax
	mov	edi, eax
	je	.L381
	mulsd	xmm1, xmm1
.L385:
	test	dil, 1
	je	.L384
	mulsd	xmm0, xmm1
	jmp	.L384
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
	jp	.L389
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	.L395
	jne	.L395
	jmp	.L389
.L397:
	fstp	st(0)
.L389:
	ret
.L395:
	test	edi, edi
	js	.L396
	fld	DWORD PTR .LC9[rip]
	jmp	.L393
.L396:
	fld	DWORD PTR .LC10[rip]
	jmp	.L393
	.p2align 5
.L392:
	mov	eax, edi
	shr	eax, 31
	add	eax, edi
	sar	eax
	mov	edi, eax
	je	.L397
	fmul	st, st(0)
.L393:
	test	dil, 1
	je	.L392
	fmul	st(1), st
	jmp	.L392
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
	je	.L399
	add	rdx, rsi
	mov	rcx, rdi
	.p2align 5
.L400:
	add	rsi, 1
	add	rcx, 1
	movzx	r8d, BYTE PTR [rcx-1]
	xor	r8b, BYTE PTR [rsi-1]
	mov	BYTE PTR [rcx-1], r8b
	cmp	rsi, rdx
	jne	.L400
.L399:
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
	je	.L404
	.p2align 5
.L403:
	movzx	edx, BYTE PTR [rbp+0]
	mov	BYTE PTR [rax], dl
	test	dl, dl
	je	.L404
	add	rbp, 1
	add	rax, 1
	sub	rbx, 1
	jne	.L403
.L404:
	test	rbx, rbx
	jne	.L406
	mov	BYTE PTR [rax], 0
.L406:
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
.L410:
	cmp	BYTE PTR [rdi+rax], 0
	jne	.L412
.L409:
	ret
.L415:
	ret
.L412:
	add	rax, 1
	cmp	rax, rsi
	jne	.L410
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
	cmp	BYTE PTR [rdi], 0
	je	.L423
.L417:
	mov	rdx, rsi
	.p2align 5
.L420:
	cmp	BYTE PTR [rdx], 0
	je	.L424
	add	rdx, 1
	movzx	ecx, BYTE PTR [rax]
	cmp	BYTE PTR [rdx-1], cl
	jne	.L420
.L418:
	ret
.L423:
	mov	eax, 0
	ret
.L424:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L417
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
.L427:
	movsx	edx, BYTE PTR [rdi]
	cmp	esi, edx
	cmove	rax, rdi
	add	rdi, 1
	cmp	BYTE PTR [rdi-1], 0
	jne	.L427
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
	je	.L430
	mov	r13, rax
	movsx	r14d, BYTE PTR [r12]
.L432:
	mov	esi, r14d
	mov	rdi, rbp
	call	strchr
	mov	rbx, rax
	test	rax, rax
	je	.L430
	mov	rdx, r13
	mov	rsi, r12
	mov	rdi, rbx
	call	strncmp
	test	eax, eax
	je	.L430
	lea	rbp, [rbx+1]
	jmp	.L432
.L430:
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
	ja	.L445
.L437:
	pxor	xmm2, xmm2
	comisd	xmm0, xmm2
	jbe	.L440
	comisd	xmm2, xmm1
	ja	.L439
.L440:
	ret
.L445:
	comisd	xmm1, xmm2
	jbe	.L437
.L439:
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
	mov	rbp, rsi
	sub	rbp, rcx
	add	rbp, rdi
	mov	rax, rdi
	test	rcx, rcx
	je	.L446
	mov	rbx, rdi
	cmp	rsi, rcx
	jb	.L451
	cmp	rbp, rdi
	jb	.L452
	movzx	r14d, BYTE PTR [rdx]
	lea	r13, [rcx-1]
	lea	r12, [rdx+1]
	jmp	.L449
	.p2align 4
.L448:
	add	rbx, 1
	cmp	rbp, rbx
	jb	.L456
.L449:
	cmp	BYTE PTR [rbx], r14b
	jne	.L448
	lea	rdi, [rbx+1]
	mov	rdx, r13
	mov	rsi, r12
	call	memcmp
	test	eax, eax
	jne	.L448
	mov	rax, rbx
	jmp	.L446
.L456:
	mov	eax, 0
.L446:
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
.L451:
	.cfi_restore_state
	mov	eax, 0
	jmp	.L446
.L452:
	mov	eax, 0
	jmp	.L446
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
	ja	.L477
.L460:
	mov	eax, 0
	comisd	xmm0, QWORD PTR .LC14[rip]
	jb	.L476
	movsd	xmm2, QWORD PTR .LC12[rip]
	movsd	xmm1, QWORD PTR .LC14[rip]
	.p2align 4
.L464:
	add	eax, 1
	mulsd	xmm0, xmm2
	comisd	xmm0, xmm1
	jnb	.L464
.L465:
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	je	.L467
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L467:
	ret
.L477:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	mov	edx, 1
	jmp	.L460
.L476:
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	setp	cl
	mov	eax, 1
	cmovne	ecx, eax
	movsd	xmm1, QWORD PTR .LC12[rip]
	comisd	xmm1, xmm0
	seta	sil
	mov	eax, 0
	test	sil, cl
	je	.L465
	.p2align 4
.L466:
	sub	eax, 1
	addsd	xmm0, xmm0
	comisd	xmm1, xmm0
	ja	.L466
	jmp	.L465
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
	je	.L481
	mov	ecx, 0
	.p2align 5
.L480:
	mov	rax, rdx
	and	eax, 1
	neg	rax
	and	rax, rsi
	add	rcx, rax
	add	rsi, rsi
	shr	rdx
	jne	.L480
.L478:
	mov	rax, rcx
	ret
.L481:
	mov	ecx, 0
	jmp	.L478
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
	jnb	.L485
	.p2align 5
.L484:
	test	esi, esi
	js	.L485
	add	esi, esi
	cmp	esi, edi
	setb	cl
	add	eax, eax
	setne	r8b
	test	r8b, cl
	jne	.L484
.L485:
	mov	ecx, 0
	test	eax, eax
	jne	.L486
.L487:
	test	rdx, rdx
	cmovne	ecx, edi
	mov	eax, ecx
	ret
	.p2align 4
.L489:
	shr	esi
	shr	eax
	je	.L487
.L486:
	cmp	edi, esi
	jb	.L489
	sub	edi, esi
	or	ecx, eax
	jmp	.L489
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	mov	eax, edi
	sar	al, 7
	mov	edx, 7
	xor	al, dil
	je	.L498
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	edx, [rax-1]
.L498:
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
	sar	rax, 63
	mov	edx, 63
	xor	rax, rdi
	je	.L501
	bsr	rax, rax
	xor	rax, 63
	lea	edx, [rax-1]
.L501:
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
	test	edi, edi
	je	.L507
	mov	edx, 0
	.p2align 5
.L506:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	edx, eax
	add	esi, esi
	shr	edi
	jne	.L506
.L504:
	mov	eax, edx
	ret
.L507:
	mov	edx, 0
	jmp	.L504
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
	jnb	.L510
.L513:
	lea	r9d, [0+r8*8]
	mov	ecx, 0
	test	r8d, r8d
	je	.L512
	.p2align 5
.L516:
	mov	r8, QWORD PTR [rsi+rcx]
	mov	QWORD PTR [rdi+rcx], r8
	add	rcx, 8
	cmp	rcx, r9
	jne	.L516
.L512:
	cmp	eax, edx
	jnb	.L509
	mov	eax, eax
	.p2align 4
.L517:
	movzx	ecx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], cl
	add	rax, 1
	cmp	eax, edx
	jb	.L517
	ret
.L510:
	mov	ecx, edx
	add	rcx, rsi
	cmp	rcx, rdi
	jb	.L513
	lea	eax, [rdx-1]
	test	edx, edx
	je	.L524
	.p2align 5
.L518:
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], dl
	sub	rax, 1
	cmp	rax, -1
	jne	.L518
.L509:
	ret
.L524:
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
	jnb	.L526
.L529:
	lea	r8d, [rdi+rdi]
	mov	eax, 0
	test	edi, edi
	je	.L528
	.p2align 5
.L532:
	movzx	edi, WORD PTR [rsi+rax]
	mov	WORD PTR [rcx+rax], di
	add	rax, 2
	cmp	rax, r8
	jne	.L532
.L528:
	test	dl, 1
	je	.L525
	lea	eax, [rdx-1]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	ret
.L526:
	mov	eax, edx
	add	rax, rsi
	cmp	rax, rcx
	jb	.L529
	lea	eax, [rdx-1]
	test	edx, edx
	je	.L538
	.p2align 5
.L533:
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	cmp	rax, -1
	jne	.L533
.L525:
	ret
.L538:
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
	jnb	.L540
.L543:
	lea	r9d, [0+r8*4]
	mov	ecx, 0
	test	r8d, r8d
	je	.L542
	.p2align 5
.L546:
	mov	r8d, DWORD PTR [rsi+rcx]
	mov	DWORD PTR [rdi+rcx], r8d
	add	rcx, 4
	cmp	rcx, r9
	jne	.L546
.L542:
	cmp	eax, edx
	jnb	.L539
	mov	eax, eax
	.p2align 4
.L547:
	movzx	ecx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], cl
	add	rax, 1
	cmp	eax, edx
	jb	.L547
	ret
.L540:
	mov	ecx, edx
	add	rcx, rsi
	cmp	rcx, rdi
	jb	.L543
	lea	eax, [rdx-1]
	test	edx, edx
	je	.L554
	.p2align 5
.L548:
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], dl
	sub	rax, 1
	cmp	rax, -1
	jne	.L548
.L539:
	ret
.L554:
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
	js	.L563
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdi
	ret
.L563:
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
	js	.L566
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdi
	ret
.L566:
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
.L571:
	mov	edx, ecx
	sub	edx, eax
	bt	edi, edx
	jc	.L569
	add	eax, 1
	cmp	eax, 16
	jne	.L571
.L569:
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
.L575:
	bt	edi, eax
	jc	.L573
	add	eax, 1
	cmp	eax, 16
	jne	.L575
.L573:
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
	jnb	.L583
	cvttss2si	rax, xmm0
	ret
.L583:
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
.L585:
	mov	edx, edi
	sar	edx, cl
	and	edx, 1
	add	eax, edx
	add	ecx, 1
	cmp	ecx, 16
	jne	.L585
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
.L588:
	mov	eax, edi
	sar	eax, cl
	and	eax, 1
	add	edx, eax
	add	ecx, 1
	cmp	ecx, 16
	jne	.L588
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
	je	.L593
	mov	edx, 0
	.p2align 5
.L592:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	edx, eax
	add	esi, esi
	shr	edi
	jne	.L592
.L590:
	mov	eax, edx
	ret
.L593:
	mov	edx, 0
	jmp	.L590
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	mov	edx, 0
	test	edi, edi
	je	.L595
	test	esi, esi
	je	.L599
	.p2align 5
.L597:
	mov	eax, esi
	and	eax, 1
	neg	eax
	and	eax, edi
	add	edx, eax
	add	edi, edi
	shr	esi
	jne	.L597
.L595:
	mov	eax, edx
	ret
.L599:
	mov	edx, 0
	jmp	.L595
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
	jnb	.L603
	.p2align 5
.L602:
	test	esi, esi
	js	.L603
	add	esi, esi
	cmp	esi, edi
	setb	cl
	add	eax, eax
	setne	r8b
	test	r8b, cl
	jne	.L602
.L603:
	mov	ecx, 0
	test	eax, eax
	jne	.L604
.L605:
	test	edx, edx
	cmovne	ecx, edi
	mov	eax, ecx
	ret
	.p2align 4
.L607:
	shr	esi
	shr	eax
	je	.L605
.L604:
	cmp	edi, esi
	jb	.L607
	sub	edi, esi
	or	ecx, eax
	jmp	.L607
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
	ja	.L616
	comiss	xmm0, xmm1
	seta	al
	movzx	eax, al
.L616:
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
	ja	.L619
	comisd	xmm0, xmm1
	seta	al
	movzx	eax, al
.L619:
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
	js	.L632
.L625:
	test	esi, esi
	je	.L630
	mov	edx, 0
	mov	ecx, 0
	.p2align 6
.L627:
	mov	eax, esi
	and	eax, 1
	neg	eax
	and	eax, edi
	add	edx, eax
	add	edi, edi
	lea	eax, [rcx+1]
	mov	ecx, eax
	sar	esi
	setne	r8b
	cmp	al, 31
	setbe	al
	test	al, r8b
	jne	.L627
.L626:
	mov	eax, edx
	neg	eax
	test	r9d, r9d
	cmovne	edx, eax
	mov	eax, edx
	ret
.L632:
	neg	esi
	mov	r9d, 1
	jmp	.L625
.L630:
	mov	edx, 0
	jmp	.L626
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
	js	.L639
.L634:
	test	rsi, rsi
	js	.L640
.L635:
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
.L639:
	.cfi_restore_state
	neg	rdi
	mov	ebx, 1
	jmp	.L634
.L640:
	neg	rsi
	xor	ebx, 1
	jmp	.L635
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
	js	.L646
.L642:
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
.L646:
	.cfi_restore_state
	neg	rdi
	mov	ebx, 1
	jmp	.L642
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
	jnb	.L649
	.p2align 5
.L648:
	test	ax, ax
	js	.L649
	add	eax, eax
	cmp	ax, r8w
	setb	sil
	add	cx, cx
	setne	dil
	test	dil, sil
	jne	.L648
.L649:
	mov	esi, 0
	test	cx, cx
	jne	.L650
.L651:
	test	edx, edx
	cmovne	esi, r8d
	mov	eax, esi
	ret
	.p2align 4
.L653:
	shr	ax
	shr	cx
	je	.L651
.L650:
	cmp	r8w, ax
	jb	.L653
	sub	r8d, eax
	or	esi, ecx
	jmp	.L653
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
	jnb	.L664
	.p2align 5
.L663:
	test	esi, 2147483648
	jne	.L664
	add	rsi, rsi
	cmp	rsi, rdi
	setb	cl
	add	rax, rax
	setne	r8b
	test	r8b, cl
	jne	.L663
.L664:
	mov	ecx, 0
	test	rax, rax
	jne	.L665
.L666:
	test	edx, edx
	cmovne	rcx, rdi
	mov	rax, rcx
	ret
	.p2align 4
.L668:
	shr	rsi
	shr	rax
	je	.L666
.L665:
	cmp	rdi, rsi
	jb	.L668
	sub	rdi, rsi
	or	rcx, rax
	jmp	.L668
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133:
	.cfi_startproc
	test	sil, 32
	je	.L678
	lea	ecx, [rsi-32]
	sal	edi, cl
	mov	rax, rdi
	sal	rax, 32
	ret
.L678:
	mov	rax, rdi
	test	esi, esi
	je	.L677
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
.L677:
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
	je	.L683
	mov	eax, 0
	lea	ecx, [rdx-64]
	sal	rdi, cl
	mov	rdx, rdi
	ret
.L683:
	mov	rax, rdi
	mov	rdx, rsi
	test	r10d, r10d
	je	.L685
	mov	ecx, r10d
	sal	rax, cl
	sal	rsi, cl
	mov	ecx, 64
	sub	ecx, r10d
	shr	rdi, cl
	or	rdi, rsi
	mov	rdx, rdi
.L685:
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
	je	.L688
	sar	rdi, 32
	mov	eax, edi
	sar	eax, 31
	lea	ecx, [rsi-32]
	sar	edi, cl
	sal	rax, 32
	or	rax, rdi
	ret
.L688:
	mov	rax, rdi
	test	esi, esi
	je	.L687
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
.L687:
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
	je	.L693
	mov	rcx, r8
	sar	rcx, 63
	mov	rdx, rcx
	lea	ecx, [r9-64]
	sar	r8, cl
	mov	rax, r8
	ret
.L693:
	mov	rax, rdi
	mov	rdx, rsi
	test	r9d, r9d
	je	.L695
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
.L695:
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
	add	eax, edx
	test	dil, -16
	sete	dl
	movzx	edx, dl
	sal	edx, 2
	mov	ecx, 4
	sub	ecx, edx
	shr	edi, cl
	add	eax, edx
	test	dil, 12
	sete	dl
	movzx	edx, dl
	add	edx, edx
	mov	esi, 2
	mov	ecx, esi
	sub	ecx, edx
	shr	edi, cl
	add	eax, edx
	mov	edx, edi
	shr	edx
	not	edx
	sub	esi, edi
	and	edx, 1
	neg	edx
	and	edx, esi
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
	jl	.L701
	mov	rcx, rdi
	sar	rcx, 32
	mov	rdx, rsi
	sar	rdx, 32
	mov	eax, 2
	cmp	ecx, edx
	jg	.L701
	mov	eax, 0
	cmp	edi, esi
	jb	.L701
	cmp	esi, edi
	setb	al
	movzx	eax, al
	add	eax, 1
.L701:
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
	jl	.L709
	mov	edx, 2
	jg	.L709
	mov	edx, 0
	cmp	rdi, rcx
	jb	.L709
	cmp	rcx, rdi
	setb	dl
	movzx	edx, dl
	add	edx, 1
.L709:
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
	jne	.L717
	xor	eax, eax
	rep bsf	rax, rsi
	add	eax, 65
	test	rsi, rsi
	mov	edx, 0
	cmove	eax, edx
	ret
.L717:
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
	je	.L721
	shr	rdi, 32
	lea	ecx, [rsi-32]
	mov	eax, edi
	shr	eax, cl
	ret
.L721:
	mov	rax, rdi
	test	esi, esi
	je	.L720
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
.L720:
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
	je	.L726
	lea	ecx, [rdx-64]
	shr	rsi, cl
	mov	r8, rsi
	mov	r9d, 0
.L728:
	mov	rax, r8
	mov	rdx, r9
	ret
.L726:
	test	edx, edx
	je	.L728
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
	jmp	.L728
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	movzx	edx, di
	movzx	ecx, si
	mov	r8d, edx
	imul	r8d, ecx
	mov	eax, r8d
	shr	eax, 16
	shr	edi, 16
	imul	ecx, edi
	add	ecx, eax
	mov	eax, ecx
	shr	eax, 16
	movzx	ecx, cx
	movzx	r8d, r8w
	shr	esi, 16
	imul	edx, esi
	add	edx, ecx
	mov	ecx, edx
	sal	ecx, 16
	lea	ecx, [rcx+r8]
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
	mov	ecx, edi
	mov	eax, esi
	mov	rdx, rcx
	imul	rdx, rax
	mov	r8, rdx
	shr	r8, 32
	shr	rdi, 32
	imul	rax, rdi
	add	rax, r8
	mov	edx, edx
	mov	r8, rax
	sal	r8, 32
	add	rdx, r8
	shr	rax, 32
	xchg	rdx, rax
	mov	r9, rax
	shr	r9, 32
	mov	r8d, eax
	mov	rax, r8
	shr	rsi, 32
	imul	rcx, rsi
	add	rcx, r9
	mov	r8, rcx
	sal	r8, 32
	add	r8, rax
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
	shr	edx, 31
	movsd	xmm1, QWORD PTR .LC14[rip]
	jmp	.L747
	.p2align 5
.L745:
	mov	eax, edi
	shr	eax, 31
	add	eax, edi
	sar	eax
	mov	edi, eax
	je	.L746
	mulsd	xmm0, xmm0
.L747:
	test	dil, 1
	je	.L745
	mulsd	xmm1, xmm0
	jmp	.L745
.L746:
	test	edx, edx
	je	.L744
	movsd	xmm0, QWORD PTR .LC14[rip]
	divsd	xmm0, xmm1
	movapd	xmm1, xmm0
.L744:
	movapd	xmm0, xmm1
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
	jmp	.L752
	.p2align 5
.L750:
	mov	eax, edi
	shr	eax, 31
	add	eax, edi
	sar	eax
	mov	edi, eax
	je	.L751
	mulss	xmm0, xmm0
.L752:
	test	dil, 1
	je	.L750
	mulss	xmm1, xmm0
	jmp	.L750
.L751:
	test	edx, edx
	je	.L749
	movss	xmm0, DWORD PTR .LC16[rip]
	divss	xmm0, xmm1
	movaps	xmm1, xmm0
.L749:
	movaps	xmm0, xmm1
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
	jb	.L754
	mov	rdx, rcx
	mov	rcx, rsi
	shr	rcx, 32
	mov	eax, 2
	cmp	ecx, edx
	jb	.L754
	mov	eax, 0
	cmp	edi, esi
	jb	.L754
	cmp	esi, edi
	setb	al
	movzx	eax, al
	add	eax, 1
.L754:
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
	jb	.L762
	mov	edx, 2
	cmp	rax, rsi
	jb	.L762
	mov	edx, 0
	cmp	rdi, rcx
	jb	.L762
	cmp	rcx, rdi
	setb	dl
	movzx	edx, dl
	add	edx, 1
.L762:
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
