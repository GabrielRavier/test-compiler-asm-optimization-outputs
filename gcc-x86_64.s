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
	mov	ecx, 0
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
	je	.L13
	.p2align 5
	.p2align 4
	.p2align 3
.L12:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rdi], r8b
	cmp	r8d, edx
	je	.L13
	add	rsi, 1
	add	rdi, 1
	sub	rcx, 1
	jne	.L12
.L13:
	add	rdi, 1
	test	rcx, rcx
	mov	eax, 0
	cmovne	rax, rdi
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
	mov	rax, rdi
	movzx	esi, sil
	test	rdx, rdx
	je	.L20
	.p2align 5
	.p2align 4
	.p2align 3
.L19:
	movzx	ecx, BYTE PTR [rax]
	cmp	ecx, esi
	je	.L20
	add	rax, 1
	sub	rdx, 1
	jne	.L19
.L20:
	test	rdx, rdx
	mov	edx, 0
	cmove	rax, rdx
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
	je	.L27
	.p2align 5
	.p2align 4
	.p2align 3
.L26:
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rdi], al
	jne	.L27
	add	rdi, 1
	add	rsi, 1
	sub	rdx, 1
	jne	.L26
.L27:
	mov	eax, 0
	test	rdx, rdx
	je	.L25
	movzx	eax, BYTE PTR [rdi]
	movzx	edx, BYTE PTR [rsi]
	sub	eax, edx
.L25:
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
	je	.L35
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	call	memcpy
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L35:
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
	movzx	esi, sil
	lea	rax, [rdi-1+rdx]
	sub	rdi, 1
	.p2align 5
	.p2align 4
	.p2align 3
.L39:
	cmp	rax, rdi
	je	.L42
	mov	rdx, rax
	sub	rax, 1
	movzx	ecx, BYTE PTR [rdx]
	cmp	ecx, esi
	jne	.L39
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L42:
	mov	edx, 0
.L38:
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
	mov	rax, rdi
	test	rdx, rdx
	je	.L44
	add	rdx, rdi
	mov	rcx, rdi
	mov	rdi, rdx
	sub	rdi, rax
	test	dil, 1
	jne	.L50
	.p2align 4
	.p2align 4
	.p2align 3
.L45:
	mov	BYTE PTR [rcx], sil
	mov	BYTE PTR [rcx+1], sil
	add	rcx, 2
	cmp	rdx, rcx
	jne	.L45
.L44:
	ret
	.p2align 4,,10
	.p2align 3
.L50:
	mov	BYTE PTR [rax], sil
	add	rcx, 1
	cmp	rdx, rcx
	jne	.L45
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
	mov	rax, rdi
	movzx	edx, BYTE PTR [rsi]
	mov	BYTE PTR [rdi], dl
	test	dl, dl
	je	.L52
	.p2align 5
	.p2align 4
	.p2align 3
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
	.p2align 4
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
	.p2align 4
	.p2align 4
	.p2align 3
.L56:
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
	.p2align 4
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB11:
	.cfi_startproc
	mov	rax, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L64:
	movsx	ecx, BYTE PTR [rax]
	cmp	ecx, esi
	je	.L63
	add	rax, 1
	test	cl, cl
	jne	.L64
	mov	eax, 0
.L63:
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
	je	.L67
	cmp	al, cl
	jne	.L67
	mov	edx, 1
	.p2align 5
	.p2align 4
	.p2align 3
.L68:
	movzx	eax, BYTE PTR [rdi+rdx]
	movzx	ecx, BYTE PTR [rsi+rdx]
	add	rdx, 1
	test	al, al
	je	.L67
	cmp	al, cl
	je	.L68
.L67:
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
	mov	rax, rdi
	cmp	BYTE PTR [rdi], 0
	je	.L72
	.p2align 4
	.p2align 4
	.p2align 3
.L73:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L73
.L72:
	sub	rax, rdi
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
	mov	eax, 0
	test	rdx, rdx
	je	.L76
	movzx	eax, BYTE PTR [rdi]
	test	al, al
	je	.L78
	lea	r8, [rsi-1+rdx]
	.p2align 4
	.p2align 3
.L79:
	movzx	edx, BYTE PTR [rsi]
	test	dl, dl
	setne	cl
	cmp	dl, al
	sete	dl
	test	cl, dl
	je	.L78
	cmp	rsi, r8
	je	.L78
	add	rdi, 1
	add	rsi, 1
	movzx	eax, BYTE PTR [rdi]
	test	al, al
	jne	.L79
.L78:
	movzx	edx, BYTE PTR [rsi]
	sub	eax, edx
.L76:
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
	jle	.L84
	and	rdx, -2
	add	rdx, rdi
	.p2align 5
	.p2align 4
	.p2align 3
.L86:
	movzx	eax, BYTE PTR [rdi+1]
	mov	BYTE PTR [rsi], al
	movzx	eax, BYTE PTR [rdi]
	mov	BYTE PTR [rsi+1], al
	add	rsi, 2
	add	rdi, 2
	cmp	rdi, rdx
	jne	.L86
.L84:
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
	sub	edi, 97
	cmp	edi, 25
	setbe	al
	movzx	eax, al
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
	cmp	edi, 127
	setbe	al
	movzx	eax, al
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
	cmp	edi, 9
	setbe	al
	movzx	eax, al
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
	cmp	edi, 93
	setbe	al
	movzx	eax, al
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
	cmp	edi, 25
	setbe	al
	movzx	eax, al
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
	cmp	edi, 94
	setbe	al
	movzx	eax, al
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
	cmp	edi, 25
	setbe	al
	movzx	eax, al
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
	jbe	.L100
	cmp	edi, 31
	jbe	.L100
	lea	edx, [rdi-8232]
	mov	eax, 1
	cmp	edx, 1
	jbe	.L98
	sub	edi, 65529
	cmp	edi, 2
	setbe	al
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L100:
	mov	eax, 1
.L98:
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
	cmp	edi, 9
	setbe	al
	movzx	eax, al
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
	jbe	.L109
	lea	eax, [rdi-8234]
	cmp	eax, 47061
	jbe	.L106
	cmp	edi, 8231
	jbe	.L106
	lea	edx, [rdi-57344]
	mov	eax, 1
	cmp	edx, 8184
	jbe	.L103
	lea	edx, [rdi-65532]
	mov	eax, 0
	cmp	edx, 1048579
	ja	.L103
	not	edi
	test	edi, 65534
	setne	al
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L109:
	add	edi, 1
	and	edi, 127
	cmp	edi, 32
	seta	al
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L106:
	mov	eax, 1
.L103:
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
	jbe	.L110
	or	edi, 32
	sub	edi, 97
	cmp	edi, 5
	setbe	al
	movzx	eax, al
.L110:
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
	jp	.L114
	ucomisd	xmm1, xmm1
	jp	.L118
	comisd	xmm0, xmm1
	jbe	.L121
	subsd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L118:
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L121:
	pxor	xmm0, xmm0
.L114:
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
	jp	.L122
	ucomiss	xmm1, xmm1
	jp	.L126
	comiss	xmm0, xmm1
	jbe	.L129
	subss	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L126:
	movaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L129:
	pxor	xmm0, xmm0
.L122:
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
	jp	.L130
	ucomisd	xmm1, xmm1
	jp	.L136
	movmskpd	eax, xmm0
	and	eax, 1
	movmskpd	edx, xmm1
	and	edx, 1
	cmp	eax, edx
	je	.L132
	test	eax, eax
	jne	.L130
.L136:
	movapd	xmm1, xmm0
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L132:
	movapd	xmm2, xmm1
	maxsd	xmm2, xmm0
	movapd	xmm1, xmm2
.L130:
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
	jp	.L138
	ucomiss	xmm1, xmm1
	jp	.L144
	movd	eax, xmm0
	and	eax, -2147483648
	movd	edx, xmm1
	and	edx, -2147483648
	cmp	eax, edx
	je	.L140
	test	eax, eax
	jne	.L138
.L144:
	movaps	xmm1, xmm0
	jmp	.L138
	.p2align 4,,10
	.p2align 3
.L140:
	movaps	xmm2, xmm1
	maxss	xmm2, xmm0
	movaps	xmm1, xmm2
.L138:
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
	jp	.L151
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L154
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
	je	.L148
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L148:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L151:
	fstp	st(0)
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L154:
	fstp	st(0)
.L146:
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
	movapd	xmm2, xmm0
	ucomisd	xmm0, xmm0
	jp	.L160
	ucomisd	xmm1, xmm1
	jp	.L155
	movmskpd	eax, xmm0
	and	eax, 1
	movmskpd	edx, xmm1
	and	edx, 1
	cmp	eax, edx
	je	.L157
	test	eax, eax
	jne	.L155
.L160:
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L157:
	minsd	xmm2, xmm1
	movapd	xmm0, xmm2
	ret
	.p2align 4,,10
	.p2align 3
.L155:
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
	jp	.L168
	ucomiss	xmm1, xmm1
	jp	.L163
	movd	eax, xmm0
	and	eax, -2147483648
	movd	edx, xmm1
	and	edx, -2147483648
	cmp	eax, edx
	je	.L165
	test	eax, eax
	jne	.L163
.L168:
	movaps	xmm0, xmm1
.L163:
	ret
	.p2align 4,,10
	.p2align 3
.L165:
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
	jp	.L179
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L177
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
	je	.L173
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L173:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L177:
	fstp	st(0)
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L179:
	fstp	st(0)
.L171:
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
	je	.L181
	.p2align 5
	.p2align 4
	.p2align 3
.L182:
	mov	ecx, eax
	and	ecx, 63
	movzx	ecx, BYTE PTR digits[rcx]
	mov	BYTE PTR [rdx], cl
	add	rdx, 1
	shr	eax, 6
	jne	.L182
.L181:
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
	je	.L190
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR [rdi], rax
	mov	QWORD PTR [rdi+8], rsi
	mov	QWORD PTR [rsi], rdi
	mov	rax, QWORD PTR [rdi]
	test	rax, rax
	je	.L187
	mov	QWORD PTR [rax+8], rdi
.L187:
	ret
	.p2align 4,,10
	.p2align 3
.L190:
	mov	QWORD PTR [rdi+8], 0
	mov	QWORD PTR [rdi], 0
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
	je	.L192
	mov	rdx, QWORD PTR [rdi+8]
	mov	QWORD PTR [rax+8], rdx
.L192:
	mov	rax, QWORD PTR [rdi+8]
	test	rax, rax
	je	.L191
	mov	rdx, QWORD PTR [rdi]
	mov	QWORD PTR [rax], rdx
.L191:
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
	sub	rsp, 40
	.cfi_def_cfa_offset 96
	mov	r12, rdi
	mov	QWORD PTR [rsp+16], rsi
	mov	QWORD PTR [rsp+24], rdx
	mov	rbp, rcx
	mov	QWORD PTR [rsp+8], r8
	mov	rbx, QWORD PTR [rdx]
	test	rbx, rbx
	je	.L195
	mov	r13, rsi
	mov	r15d, 0
	.p2align 4
	.p2align 3
.L197:
	mov	r14, r13
	mov	rsi, r13
	mov	rdi, r12
	mov	rax, QWORD PTR [rsp+8]
	call	rax
	test	eax, eax
	je	.L194
	add	r15, 1
	add	r13, rbp
	cmp	rbx, r15
	jne	.L197
.L195:
	lea	rax, [rbx+1]
	mov	rcx, QWORD PTR [rsp+24]
	mov	QWORD PTR [rcx], rax
	imul	rbx, rbp
	mov	rdi, QWORD PTR [rsp+16]
	add	rdi, rbx
	mov	rdx, rbp
	mov	rsi, r12
	call	memcpy
	mov	r14, rax
.L194:
	mov	rax, r14
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
	mov	QWORD PTR [rsp+8], rdi
	mov	r14, QWORD PTR [rdx]
	test	r14, r14
	je	.L201
	mov	r13, rcx
	mov	r12, r8
	mov	rbx, rsi
	mov	ebp, 0
	.p2align 4
	.p2align 3
.L203:
	mov	r15, rbx
	mov	rsi, rbx
	mov	rdi, QWORD PTR [rsp+8]
	call	r12
	test	eax, eax
	je	.L200
	add	rbp, 1
	add	rbx, r13
	cmp	r14, rbp
	jne	.L203
.L201:
	mov	r15d, 0
.L200:
	mov	rax, r15
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi
	jmp	.L208
	.p2align 4,,10
	.p2align 3
.L209:
	add	rbx, 1
.L208:
	movsx	edi, BYTE PTR [rbx]
	mov	ebp, edi
	call	isspace
	test	eax, eax
	jne	.L209
	mov	esi, 0
	cmp	bpl, 43
	je	.L210
	cmp	bpl, 45
	jne	.L211
	mov	esi, 1
.L210:
	add	rbx, 1
	jmp	.L211
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L212:
	lea	eax, [rax+rax*4]
	add	eax, eax
	add	rbx, 1
	sub	edx, 48
	movsx	edx, dl
	sub	eax, edx
.L211:
	movsx	ecx, BYTE PTR [rbx]
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L212
	mov	edx, eax
	neg	edx
	test	esi, esi
	cmove	eax, edx
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.p2align 4
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
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L222:
	add	rbx, 1
.L221:
	movsx	edi, BYTE PTR [rbx]
	mov	ebp, edi
	call	isspace
	test	eax, eax
	jne	.L222
	cmp	bpl, 43
	je	.L223
	cmp	bpl, 45
	jne	.L224
	mov	eax, 1
.L223:
	add	rbx, 1
.L224:
	movsx	esi, BYTE PTR [rbx]
	mov	ecx, esi
	sub	esi, 48
	mov	edx, 0
	cmp	esi, 9
	ja	.L226
	.p2align 6
	.p2align 4
	.p2align 3
.L225:
	lea	rdx, [rdx+rdx*4]
	add	rdx, rdx
	add	rbx, 1
	sub	ecx, 48
	movsx	rcx, cl
	sub	rdx, rcx
	movsx	esi, BYTE PTR [rbx]
	mov	ecx, esi
	sub	esi, 48
	cmp	esi, 9
	jbe	.L225
.L226:
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
	.p2align 4
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
	jmp	.L233
	.p2align 4,,10
	.p2align 3
.L234:
	add	rbx, 1
.L233:
	movsx	edi, BYTE PTR [rbx]
	mov	ebp, edi
	call	isspace
	test	eax, eax
	jne	.L234
	cmp	bpl, 43
	je	.L235
	cmp	bpl, 45
	jne	.L236
	mov	eax, 1
.L235:
	add	rbx, 1
.L236:
	movsx	esi, BYTE PTR [rbx]
	mov	ecx, esi
	sub	esi, 48
	mov	edx, 0
	cmp	esi, 9
	ja	.L238
	.p2align 6
	.p2align 4
	.p2align 3
.L237:
	lea	rdx, [rdx+rdx*4]
	add	rdx, rdx
	add	rbx, 1
	sub	ecx, 48
	movsx	rcx, cl
	sub	rdx, rcx
	movsx	esi, BYTE PTR [rbx]
	mov	ecx, esi
	sub	esi, 48
	cmp	esi, 9
	jbe	.L237
.L238:
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
	je	.L245
	mov	r13, rsi
	mov	rbx, rdx
	mov	r12, rcx
	mov	r14, r8
	jmp	.L248
	.p2align 4,,10
	.p2align 3
.L249:
	mov	rbx, r15
.L246:
	test	rbx, rbx
	je	.L245
.L248:
	mov	r15, rbx
	shr	r15
	mov	rbp, r15
	imul	rbp, r12
	add	rbp, r13
	mov	rsi, rbp
	mov	rdi, QWORD PTR [rsp+8]
	call	r14
	test	eax, eax
	js	.L249
	jle	.L244
	lea	r13, [rbp+0+r12]
	sub	rbx, 1
	sub	rbx, r15
	jmp	.L246
	.p2align 4,,10
	.p2align 3
.L245:
	mov	ebp, 0
.L244:
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
	mov	QWORD PTR [rsp+8], r9
	test	edx, edx
	je	.L253
	mov	r15, rdi
	mov	r12, rsi
	mov	rbp, rcx
	mov	r14, r8
	mov	r13d, edx
	jmp	.L256
	.p2align 4,,10
	.p2align 3
.L255:
	sar	r13d
	je	.L253
.L256:
	mov	ebx, r13d
	sar	ebx
	movsx	rbx, ebx
	imul	rbx, rbp
	add	rbx, r12
	mov	rdx, QWORD PTR [rsp+8]
	mov	rsi, rbx
	mov	rdi, r15
	call	r14
	test	eax, eax
	je	.L252
	jle	.L255
	lea	r12, [rbx+rbp]
	sub	r13d, 1
	jmp	.L255
	.p2align 4,,10
	.p2align 3
.L253:
	mov	ebx, 0
.L252:
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
.LFB55:
	.cfi_startproc
	mov	rax, rdi
	neg	rax
	cmovs	rax, rdi
	ret
	.cfi_endproc
.LFE55:
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
.LFB57:
	.cfi_startproc
	mov	rax, rdi
	neg	rax
	cmovs	rax, rdi
	ret
	.cfi_endproc
.LFE57:
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
	mov	rax, rdi
	mov	edx, DWORD PTR [rdi]
	cmp	esi, edx
	je	.L267
	.p2align 4
	.p2align 4
	.p2align 3
.L272:
	test	edx, edx
	je	.L267
	add	rax, 4
	mov	edx, DWORD PTR [rax]
	cmp	edx, esi
	jne	.L272
.L267:
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
	je	.L274
	test	ecx, ecx
	je	.L274
	mov	eax, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L275:
	mov	edx, DWORD PTR [rdi+rax]
	mov	ecx, DWORD PTR [rsi+rax]
	add	rax, 4
	test	edx, edx
	setne	r9b
	cmp	edx, ecx
	sete	r8b
	test	r9b, r8b
	je	.L274
	test	ecx, ecx
	jne	.L275
.L274:
	cmp	edx, ecx
	setg	al
	movzx	eax, al
	mov	edx, -1
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
	mov	edx, 0
	.p2align 4
	.p2align 4
	.p2align 3
.L281:
	mov	ecx, DWORD PTR [rsi+rdx]
	mov	DWORD PTR [rax+rdx], ecx
	add	rdx, 4
	test	ecx, ecx
	jne	.L281
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
	mov	rax, rdi
	cmp	DWORD PTR [rdi], 0
	je	.L284
	.p2align 4
	.p2align 4
	.p2align 3
.L285:
	add	rax, 4
	cmp	DWORD PTR [rax], 0
	jne	.L285
.L284:
	sub	rax, rdi
	sar	rax, 2
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
	je	.L290
	.p2align 4
	.p2align 3
.L289:
	mov	eax, DWORD PTR [rdi]
	mov	ecx, DWORD PTR [rsi]
	test	eax, eax
	setne	r8b
	cmp	eax, ecx
	sete	al
	test	r8b, al
	je	.L290
	test	ecx, ecx
	je	.L290
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	jne	.L289
.L290:
	mov	eax, 0
	test	rdx, rdx
	je	.L288
	mov	ecx, DWORD PTR [rdi]
	mov	edx, DWORD PTR [rsi]
	cmp	ecx, edx
	setg	al
	movzx	eax, al
	mov	edx, -1
	cmovl	eax, edx
.L288:
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
	mov	rax, rdi
	test	rdx, rdx
	je	.L299
	.p2align 4
	.p2align 4
	.p2align 3
.L298:
	cmp	DWORD PTR [rax], esi
	je	.L299
	add	rax, 4
	sub	rdx, 1
	jne	.L298
.L299:
	test	rdx, rdx
	mov	edx, 0
	cmove	rax, rdx
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
	je	.L306
	.p2align 5
	.p2align 4
	.p2align 3
.L305:
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	jne	.L306
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	jne	.L305
.L306:
	mov	eax, 0
	test	rdx, rdx
	je	.L304
	mov	ecx, DWORD PTR [rdi]
	mov	edx, DWORD PTR [rsi]
	cmp	ecx, edx
	setg	al
	movzx	eax, al
	mov	edx, -1
	cmovl	eax, edx
.L304:
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
	je	.L315
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	sal	rdx, 2
	call	memcpy
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L315:
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
	je	.L319
	sub	rdi, rsi
	lea	rcx, [0+rdx*4]
	cmp	rdi, rcx
	jb	.L320
	mov	ecx, 0
	test	rdx, rdx
	je	.L327
	.p2align 4
	.p2align 4
	.p2align 3
.L321:
	mov	edi, DWORD PTR [rsi+rcx*4]
	mov	DWORD PTR [rax+rcx*4], edi
	add	rcx, 1
	cmp	rcx, rdx
	jne	.L321
.L319:
	ret
	.p2align 4,,10
	.p2align 3
.L327:
	ret
	.p2align 4,,10
	.p2align 3
.L320:
	test	rdx, rdx
	je	.L319
	sub	rdx, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L322:
	mov	ecx, DWORD PTR [rsi+rdx*4]
	mov	DWORD PTR [rax+rdx*4], ecx
	sub	rdx, 1
	cmp	rdx, -1
	jne	.L322
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
	je	.L329
	mov	ecx, 0
	test	dl, 1
	jne	.L335
	.p2align 5
	.p2align 4
	.p2align 3
.L330:
	mov	DWORD PTR [rax+rcx*4], esi
	add	rcx, 1
	mov	DWORD PTR [rax+rcx*4], esi
	add	rcx, 1
	cmp	rcx, rdx
	jne	.L330
.L329:
	ret
	.p2align 4,,10
	.p2align 3
.L335:
	mov	DWORD PTR [rdi+rcx*4], esi
	add	rcx, 1
	cmp	rcx, rdx
	jne	.L330
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
	jnb	.L337
	test	rdx, rdx
	je	.L336
	.p2align 4
	.p2align 4
	.p2align 3
.L339:
	movzx	eax, BYTE PTR [rdi-1+rdx]
	mov	BYTE PTR [rsi-1+rdx], al
	sub	rdx, 1
	jne	.L339
	ret
	.p2align 4,,10
	.p2align 3
.L337:
	je	.L336
	test	rdx, rdx
	je	.L336
	mov	eax, 0
	.p2align 4
	.p2align 4
	.p2align 3
.L340:
	movzx	ecx, BYTE PTR [rdi+rax]
	mov	BYTE PTR [rsi+rax], cl
	add	rax, 1
	cmp	rax, rdx
	jne	.L340
.L336:
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
.LFB74:
	.cfi_startproc
	mov	rax, rdi
	mov	ecx, esi
	rol	rax, cl
	ret
	.cfi_endproc
.LFE74:
	.size	rotl_sz, .-rotl_sz
	.p2align 4
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
	mov	ecx, 0
	.p2align 4
	.p2align 4
	.p2align 3
.L359:
	mov	eax, edi
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	jne	.L361
	cmp	ecx, 32
	jne	.L359
	mov	eax, 0
	ret
	.p2align 4,,10
	.p2align 3
.L361:
	mov	eax, ecx
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
	mov	eax, 0
	test	edi, edi
	je	.L362
	mov	eax, edi
	and	eax, 1
	jne	.L362
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L364:
	sar	edi
	add	eax, 1
	test	dil, 1
	je	.L364
.L362:
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
	mov	eax, 1
	movss	xmm1, DWORD PTR .LC3[rip]
	comiss	xmm1, xmm0
	ja	.L367
	comiss	xmm0, DWORD PTR .LC4[rip]
	seta	al
	movzx	eax, al
.L367:
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
	mov	eax, 1
	movsd	xmm1, QWORD PTR .LC5[rip]
	comisd	xmm1, xmm0
	ja	.L370
	comisd	xmm0, QWORD PTR .LC6[rip]
	seta	al
	movzx	eax, al
.L370:
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
	ja	.L376
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	.L373
	.p2align 4,,10
	.p2align 3
.L376:
	fstp	st(0)
.L373:
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
	jp	.L379
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm1, xmm0
	jp	.L385
	jne	.L385
.L379:
	ret
	.p2align 4,,10
	.p2align 3
.L385:
	movss	xmm1, DWORD PTR .LC9[rip]
	test	edi, edi
	jns	.L383
	movss	xmm1, DWORD PTR .LC10[rip]
	jmp	.L383
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L382:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L379
	mulss	xmm1, xmm1
.L383:
	test	dil, 1
	je	.L382
	mulss	xmm0, xmm1
	jmp	.L382
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
	jp	.L387
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm1, xmm0
	jp	.L393
	jne	.L393
.L387:
	ret
	.p2align 4,,10
	.p2align 3
.L393:
	movsd	xmm1, QWORD PTR .LC11[rip]
	test	edi, edi
	jns	.L391
	movsd	xmm1, QWORD PTR .LC12[rip]
	jmp	.L391
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L390:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L387
	mulsd	xmm1, xmm1
.L391:
	test	dil, 1
	je	.L390
	mulsd	xmm0, xmm1
	jmp	.L390
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
	jp	.L395
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L401
	jne	.L401
	jmp	.L395
	.p2align 4,,10
	.p2align 3
.L403:
	fstp	st(0)
.L395:
	ret
	.p2align 4,,10
	.p2align 3
.L401:
	test	edi, edi
	js	.L402
	fld	DWORD PTR .LC9[rip]
	jmp	.L399
	.p2align 4,,10
	.p2align 3
.L402:
	fld	DWORD PTR .LC10[rip]
	jmp	.L399
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L398:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L403
	fmul	st, st(0)
.L399:
	test	dil, 1
	je	.L398
	fmul	st(1), st
	jmp	.L398
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
	je	.L405
	add	rdx, rsi
	mov	rcx, rdi
	.p2align 5
	.p2align 4
	.p2align 3
.L406:
	add	rsi, 1
	add	rcx, 1
	movzx	r8d, BYTE PTR [rsi-1]
	xor	BYTE PTR [rcx-1], r8b
	cmp	rdx, rsi
	jne	.L406
.L405:
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
	je	.L410
	.p2align 5
	.p2align 4
	.p2align 3
.L409:
	movzx	edx, BYTE PTR [rbp+0]
	mov	BYTE PTR [rax], dl
	test	dl, dl
	je	.L410
	add	rbp, 1
	add	rax, 1
	sub	rbx, 1
	jne	.L409
.L410:
	test	rbx, rbx
	jne	.L412
	mov	BYTE PTR [rax], 0
.L412:
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
	.p2align 4
	.globl	strnlen
	.type	strnlen, @function
strnlen:
.LFB94:
	.cfi_startproc
	mov	eax, 0
	test	rsi, rsi
	je	.L422
.L416:
	cmp	BYTE PTR [rdi+rax], 0
	jne	.L418
.L415:
	ret
	.p2align 4,,10
	.p2align 3
.L422:
	ret
	.p2align 4,,10
	.p2align 3
.L418:
	add	rax, 1
	cmp	rsi, rax
	jne	.L416
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
	mov	rax, rdi
	movzx	r8d, BYTE PTR [rdi]
	test	r8b, r8b
	je	.L428
.L424:
	mov	rdx, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L427:
	movzx	ecx, BYTE PTR [rdx]
	test	cl, cl
	je	.L430
	add	rdx, 1
	cmp	cl, r8b
	jne	.L427
.L425:
	ret
	.p2align 4,,10
	.p2align 3
.L430:
	add	rax, 1
	movzx	r8d, BYTE PTR [rax]
	test	r8b, r8b
	jne	.L424
.L428:
	mov	eax, 0
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
	mov	edx, 0
	.p2align 5
	.p2align 4
	.p2align 3
.L433:
	movsx	ecx, BYTE PTR [rdi]
	cmp	ecx, esi
	cmove	rdx, rdi
	add	rdi, 1
	test	cl, cl
	jne	.L433
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
	je	.L436
	mov	r13, rax
	movsx	r14d, BYTE PTR [r12]
	.p2align 4
	.p2align 3
.L438:
	mov	esi, r14d
	mov	rdi, rbp
	call	strchr
	mov	rbx, rax
	test	rax, rax
	je	.L436
	mov	rdx, r13
	mov	rsi, r12
	mov	rdi, rbx
	call	strncmp
	test	eax, eax
	je	.L436
	lea	rbp, [rbx+1]
	jmp	.L438
	.p2align 4,,10
	.p2align 3
.L436:
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
	.p2align 4
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
	pxor	xmm2, xmm2
	comisd	xmm2, xmm0
	ja	.L451
.L443:
	pxor	xmm2, xmm2
	comisd	xmm0, xmm2
	jbe	.L446
	comisd	xmm2, xmm1
	ja	.L445
.L446:
	ret
	.p2align 4,,10
	.p2align 3
.L451:
	comisd	xmm1, xmm2
	jbe	.L443
.L445:
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
	mov	r12, rdi
	test	rcx, rcx
	je	.L452
	cmp	rsi, rcx
	jb	.L458
	mov	rbx, rdi
	sub	rsi, rcx
	add	rsi, rdi
	mov	rbp, rsi
	jc	.L458
	movzx	r15d, BYTE PTR [rdx]
	lea	r13, [rcx-1]
	lea	r14, [rdx+1]
	jmp	.L455
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L454:
	cmp	rbp, rbx
	jb	.L458
.L455:
	movzx	eax, BYTE PTR [rbx]
	mov	r12, rbx
	add	rbx, 1
	cmp	al, r15b
	jne	.L454
	mov	rdx, r13
	mov	rsi, r14
	mov	rdi, rbx
	call	memcmp
	test	eax, eax
	jne	.L454
	jmp	.L452
	.p2align 4,,10
	.p2align 3
.L458:
	mov	r12d, 0
.L452:
	mov	rax, r12
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
	call	memcpy
	add	rax, rbx
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
	pxor	xmm1, xmm1
	mov	edx, 0
	comisd	xmm1, xmm0
	ja	.L481
.L464:
	mov	eax, 0
	comisd	xmm0, QWORD PTR .LC14[rip]
	jb	.L480
	movsd	xmm2, QWORD PTR .LC12[rip]
	movsd	xmm1, QWORD PTR .LC14[rip]
	.p2align 4
	.p2align 4
	.p2align 3
.L468:
	add	eax, 1
	mulsd	xmm0, xmm2
	comisd	xmm0, xmm1
	jnb	.L468
.L469:
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	je	.L471
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L471:
	ret
	.p2align 4,,10
	.p2align 3
.L481:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	mov	edx, 1
	jmp	.L464
	.p2align 4,,10
	.p2align 3
.L480:
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	setp	al
	mov	ecx, 1
	cmovne	eax, ecx
	test	al, al
	mov	eax, 0
	je	.L469
	movsd	xmm1, QWORD PTR .LC12[rip]
	comisd	xmm1, xmm0
	jbe	.L469
	.p2align 4
	.p2align 4
	.p2align 3
.L470:
	sub	eax, 1
	addsd	xmm0, xmm0
	comisd	xmm1, xmm0
	ja	.L470
	jmp	.L469
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.p2align 4
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	mov	edx, 0
	test	rdi, rdi
	je	.L482
	.p2align 5
	.p2align 4
	.p2align 3
.L484:
	mov	rax, rdi
	and	eax, 1
	neg	rax
	and	rax, rsi
	add	rdx, rax
	add	rsi, rsi
	shr	rdi
	jne	.L484
.L482:
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
	jnb	.L489
	.p2align 4
	.p2align 3
.L488:
	test	esi, esi
	js	.L489
	add	esi, esi
	add	eax, eax
	cmp	esi, edi
	jnb	.L489
	test	eax, eax
	jne	.L488
.L489:
	mov	ecx, 0
	test	eax, eax
	jne	.L491
.L492:
	test	rdx, rdx
	cmovne	ecx, edi
	mov	eax, ecx
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L494:
	shr	esi
	shr	eax
	je	.L492
.L491:
	cmp	edi, esi
	jb	.L494
	sub	edi, esi
	or	ecx, eax
	jmp	.L494
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
	.p2align 4
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
	.p2align 4
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106:
	.cfi_startproc
	mov	edx, 0
	test	edi, edi
	je	.L509
	.p2align 5
	.p2align 4
	.p2align 3
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
	shr	ecx, 3
	mov	eax, edx
	and	eax, -8
	cmp	rdi, rsi
	jb	.L515
	mov	r8d, edx
	add	r8, rsi
	cmp	r8, rdi
	jb	.L515
	lea	eax, [rdx-1]
	test	edx, edx
	je	.L526
	.p2align 5
	.p2align 4
	.p2align 3
.L521:
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], dl
	sub	rax, 1
	cmp	rax, -1
	jne	.L521
.L514:
	ret
.L526:
	ret
	.p2align 4,,10
	.p2align 3
.L515:
	test	ecx, ecx
	je	.L518
	lea	r9d, [0+rcx*8]
	mov	ecx, 0
	.p2align 5
	.p2align 4
	.p2align 3
.L519:
	mov	r8, QWORD PTR [rsi+rcx]
	mov	QWORD PTR [rdi+rcx], r8
	add	rcx, 8
	cmp	r9, rcx
	jne	.L519
.L518:
	cmp	eax, edx
	jnb	.L514
	.p2align 4
	.p2align 4
	.p2align 3
.L520:
	movzx	ecx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], cl
	add	rax, 1
	cmp	eax, edx
	jb	.L520
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
	mov	eax, edx
	shr	eax
	cmp	rdi, rsi
	jb	.L528
	mov	edi, edx
	add	rdi, rsi
	cmp	rdi, rcx
	jb	.L528
	lea	eax, [rdx-1]
	test	edx, edx
	je	.L537
	.p2align 5
	.p2align 4
	.p2align 3
.L533:
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	cmp	rax, -1
	jne	.L533
.L527:
	ret
.L537:
	ret
	.p2align 4,,10
	.p2align 3
.L528:
	test	eax, eax
	je	.L531
	lea	r8d, [rax+rax]
	mov	eax, 0
	.p2align 5
	.p2align 4
	.p2align 3
.L532:
	movzx	edi, WORD PTR [rsi+rax]
	mov	WORD PTR [rcx+rax], di
	add	rax, 2
	cmp	r8, rax
	jne	.L532
.L531:
	test	dl, 1
	je	.L527
	lea	eax, [rdx-1]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
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
	shr	ecx, 2
	mov	eax, edx
	and	eax, -4
	cmp	rdi, rsi
	jb	.L539
	mov	r8d, edx
	add	r8, rsi
	cmp	r8, rdi
	jb	.L539
	lea	eax, [rdx-1]
	test	edx, edx
	je	.L550
	.p2align 5
	.p2align 4
	.p2align 3
.L545:
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], dl
	sub	rax, 1
	cmp	rax, -1
	jne	.L545
.L538:
	ret
.L550:
	ret
	.p2align 4,,10
	.p2align 3
.L539:
	test	ecx, ecx
	je	.L542
	lea	r9d, [0+rcx*4]
	mov	ecx, 0
	.p2align 5
	.p2align 4
	.p2align 3
.L543:
	mov	r8d, DWORD PTR [rsi+rcx]
	mov	DWORD PTR [rdi+rcx], r8d
	add	rcx, 4
	cmp	r9, rcx
	jne	.L543
.L542:
	cmp	eax, edx
	jnb	.L538
	.p2align 4
	.p2align 4
	.p2align 3
.L544:
	movzx	ecx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], cl
	add	rax, 1
	cmp	eax, edx
	jb	.L544
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
	js	.L559
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L559:
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
	.p2align 4
	.globl	__ulltof
	.type	__ulltof, @function
__ulltof:
.LFB114:
	.cfi_startproc
	test	rdi, rdi
	js	.L562
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L562:
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
	.p2align 4
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
	.p2align 4
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB116:
	.cfi_startproc
	mov	eax, 0
	movzx	edi, di
	mov	ecx, 15
	.p2align 5
	.p2align 4
	.p2align 3
.L567:
	mov	edx, ecx
	sub	edx, eax
	bt	edi, edx
	jc	.L565
	add	eax, 1
	cmp	eax, 16
	jne	.L567
.L565:
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
	mov	eax, 0
	movzx	edi, di
	.p2align 4
	.p2align 4
	.p2align 3
.L571:
	bt	edi, eax
	jc	.L569
	add	eax, 1
	cmp	eax, 16
	jne	.L571
.L569:
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
	comiss	xmm0, DWORD PTR .LC15[rip]
	jnb	.L579
	cvttss2si	rax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L579:
	subss	xmm0, DWORD PTR .LC15[rip]
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
	mov	eax, 0
	mov	ecx, 0
	movzx	edi, di
	.p2align 5
	.p2align 4
	.p2align 3
.L581:
	mov	edx, edi
	sar	edx, cl
	and	edx, 1
	add	eax, edx
	add	ecx, 1
	cmp	ecx, 16
	jne	.L581
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
	mov	edx, 0
	mov	ecx, 0
	movzx	edi, di
	.p2align 5
	.p2align 4
	.p2align 3
.L584:
	mov	eax, edi
	sar	eax, cl
	and	eax, 1
	add	edx, eax
	add	ecx, 1
	cmp	ecx, 16
	jne	.L584
	mov	eax, edx
	ret
	.cfi_endproc
.LFE120:
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB121:
	.cfi_startproc
	mov	edx, 0
	test	edi, edi
	je	.L586
	.p2align 5
	.p2align 4
	.p2align 3
.L588:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	edx, eax
	add	esi, esi
	shr	edi
	jne	.L588
.L586:
	mov	eax, edx
	ret
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	mov	edx, 0
	test	edi, edi
	je	.L591
	test	esi, esi
	je	.L595
	.p2align 5
	.p2align 4
	.p2align 3
.L593:
	mov	eax, esi
	and	eax, 1
	neg	eax
	and	eax, edi
	add	edx, eax
	add	edi, edi
	shr	esi
	jne	.L593
.L591:
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L595:
	mov	edx, 0
	jmp	.L591
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
	jnb	.L599
	.p2align 4
	.p2align 3
.L598:
	test	esi, esi
	js	.L599
	add	esi, esi
	add	eax, eax
	cmp	esi, edi
	jnb	.L599
	test	eax, eax
	jne	.L598
.L599:
	mov	ecx, 0
	test	eax, eax
	jne	.L601
.L602:
	test	edx, edx
	cmovne	ecx, edi
	mov	eax, ecx
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L604:
	shr	esi
	shr	eax
	je	.L602
.L601:
	cmp	edi, esi
	jb	.L604
	sub	edi, esi
	or	ecx, eax
	jmp	.L604
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4, .-__udivmodsi4
	.p2align 4
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	mov	eax, -1
	comiss	xmm1, xmm0
	ja	.L613
	comiss	xmm0, xmm1
	seta	al
	movzx	eax, al
.L613:
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
	mov	eax, -1
	comisd	xmm1, xmm0
	ja	.L616
	comisd	xmm0, xmm1
	seta	al
	movzx	eax, al
.L616:
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
	mov	r9d, 0
	test	esi, esi
	js	.L629
.L622:
	test	esi, esi
	je	.L627
	mov	edx, 1
	mov	ecx, 0
	.p2align 6
	.p2align 4
	.p2align 3
.L624:
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
	jne	.L624
.L623:
	mov	eax, ecx
	neg	eax
	test	r9d, r9d
	cmovne	ecx, eax
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L629:
	neg	esi
	mov	r9d, 1
	jmp	.L622
	.p2align 4,,10
	.p2align 3
.L627:
	mov	ecx, 0
	jmp	.L623
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.p2align 4
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
	js	.L637
.L631:
	test	rsi, rsi
	js	.L638
.L632:
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
	.p2align 4,,10
	.p2align 3
.L637:
	.cfi_restore_state
	neg	rdi
	mov	ebx, 1
	jmp	.L631
	.p2align 4,,10
	.p2align 3
.L638:
	neg	rsi
	xor	ebx, 1
	jmp	.L632
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.p2align 4
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
	js	.L645
.L640:
	mov	edx, 1
	mov	rax, rsi
	neg	rax
	cmovns	rsi, rax
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
	.p2align 4,,10
	.p2align 3
.L645:
	.cfi_restore_state
	neg	rdi
	mov	ebx, 1
	jmp	.L640
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
	jnb	.L648
	.p2align 4
	.p2align 3
.L647:
	test	ax, ax
	js	.L648
	add	eax, eax
	add	ecx, ecx
	cmp	ax, r8w
	jnb	.L648
	test	cx, cx
	jne	.L647
.L648:
	mov	esi, 0
	test	cx, cx
	jne	.L650
.L651:
	test	edx, edx
	cmovne	esi, r8d
	mov	eax, esi
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
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
	.p2align 4
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	mov	eax, 1
	cmp	rsi, rdi
	jnb	.L664
	.p2align 4
	.p2align 3
.L663:
	test	esi, 2147483648
	jne	.L664
	add	rsi, rsi
	add	rax, rax
	cmp	rsi, rdi
	jnb	.L664
	test	rax, rax
	jne	.L663
.L664:
	mov	ecx, 0
	test	rax, rax
	jne	.L666
.L667:
	test	edx, edx
	cmovne	rcx, rdi
	mov	rax, rcx
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L669:
	shr	rsi
	shr	rax
	je	.L667
.L666:
	cmp	rdi, rsi
	jb	.L669
	sub	rdi, rsi
	or	rcx, rax
	jmp	.L669
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
	je	.L679
	lea	ecx, [rsi-32]
	sal	edi, cl
	mov	eax, 0
.L680:
	sal	rdi, 32
	or	rax, rdi
.L678:
	ret
	.p2align 4,,10
	.p2align 3
.L679:
	mov	rax, rdi
	test	esi, esi
	je	.L678
	mov	ecx, esi
	sal	eax, cl
	mov	ecx, 32
	sub	ecx, esi
	mov	edx, edi
	shr	edx, cl
	sar	rdi, 32
	mov	ecx, esi
	sal	edi, cl
	or	edi, edx
	jmp	.L680
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
	je	.L684
	lea	ecx, [rdx-64]
	sal	rdi, cl
	mov	eax, 0
.L685:
	mov	rdx, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L684:
	mov	rax, rdi
	test	edx, edx
	je	.L687
	mov	ecx, edx
	sal	rax, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rdi, cl
	mov	ecx, edx
	sal	rsi, cl
	or	rdi, rsi
	jmp	.L685
	.p2align 4,,10
	.p2align 3
.L687:
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
	je	.L689
	sar	rdi, 32
	mov	eax, edi
	sar	eax, 31
	lea	ecx, [rsi-32]
	sar	edi, cl
.L690:
	sal	rax, 32
	or	rax, rdi
.L688:
	ret
	.p2align 4,,10
	.p2align 3
.L689:
	mov	rax, rdi
	test	esi, esi
	je	.L688
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
	jmp	.L690
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
	je	.L694
	mov	r8, rsi
	sar	r8, 63
	lea	ecx, [rdx-64]
	sar	rsi, cl
.L695:
	mov	rax, rsi
	mov	rdx, r8
	ret
	.p2align 4,,10
	.p2align 3
.L694:
	test	edx, edx
	je	.L697
	mov	r8, rsi
	mov	ecx, edx
	sar	r8, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rsi, cl
	mov	ecx, edx
	shr	rdi, cl
	or	rsi, rdi
	jmp	.L695
	.p2align 4,,10
	.p2align 3
.L697:
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
	sub	eax, edi
	test	dil, 2
	mov	ecx, 0
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
	.p2align 4
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
	jl	.L702
	mov	eax, 2
	jg	.L702
	mov	eax, 0
	cmp	edi, esi
	jb	.L702
	cmp	esi, edi
	setb	al
	movzx	eax, al
	add	eax, 1
.L702:
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
	call	__cmpdi2
	sub	eax, 1
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
	mov	eax, 0
	cmp	rsi, rcx
	jl	.L709
	mov	eax, 2
	jg	.L709
	mov	eax, 0
	cmp	rdi, rdx
	jb	.L709
	cmp	rdx, rdi
	setb	al
	movzx	eax, al
	add	eax, 1
.L709:
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
	lea	edx, [rcx+rax]
	test	dil, 3
	sete	cl
	movzx	ecx, cl
	add	ecx, ecx
	shr	edi, cl
	and	edi, 3
	mov	eax, edi
	not	eax
	shr	edi
	mov	esi, 2
	sub	esi, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	ecx, edx
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
	mov	rcx, rdi
	mov	rdx, rsi
	test	rdi, rdi
	mov	eax, 0
	cmovne	rdx, rax
	sete	al
	movzx	eax, al
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
	.p2align 4
	.globl	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
.LFB146:
	.cfi_startproc
	test	rdi, rdi
	jne	.L718
	xor	eax, eax
	rep bsf	rax, rsi
	add	eax, 65
	test	rsi, rsi
	mov	edx, 0
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L718:
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
	je	.L722
	shr	rdi, 32
	lea	ecx, [rsi-32]
	shr	edi, cl
	mov	eax, 0
.L723:
	sal	rax, 32
	or	rax, rdi
.L721:
	ret
	.p2align 4,,10
	.p2align 3
.L722:
	mov	rax, rdi
	test	esi, esi
	je	.L721
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
	jmp	.L723
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
	je	.L727
	lea	ecx, [rdx-64]
	shr	rsi, cl
	mov	r8d, 0
.L728:
	mov	rax, rsi
	mov	rdx, r8
	ret
	.p2align 4,,10
	.p2align 3
.L727:
	test	edx, edx
	je	.L730
	mov	r8, rsi
	mov	ecx, edx
	shr	r8, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rsi, cl
	mov	ecx, edx
	shr	rdi, cl
	or	rsi, rdi
	jmp	.L728
	.p2align 4,,10
	.p2align 3
.L730:
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
	mov	ecx, edx
	imul	ecx, eax
	mov	r8d, ecx
	shr	r8d, 16
	shr	edi, 16
	imul	eax, edi
	add	eax, r8d
	movzx	r8d, ax
	shr	esi, 16
	imul	edx, esi
	add	edx, r8d
	movzx	ecx, cx
	mov	r8d, edx
	sal	r8d, 16
	shr	eax, 16
	imul	edi, esi
	add	eax, edi
	shr	edx, 16
	lea	edx, [rax+rdx]
	sal	rdx, 32
	lea	eax, [rcx+r8]
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi
	mov	rbp, rsi
	call	__muldsi3
	mov	rdx, rbx
	sar	rdx, 32
	imul	edx, ebp
	sar	rbp, 32
	imul	ebx, ebp
	add	edx, ebx
	mov	rcx, rax
	sar	rcx, 32
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
	.p2align 4
	.globl	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151:
	.cfi_startproc
	mov	edx, edi
	mov	eax, esi
	mov	rcx, rdx
	imul	rcx, rax
	mov	r8, rcx
	shr	r8, 32
	shr	rdi, 32
	imul	rax, rdi
	add	rax, r8
	mov	r8d, eax
	shr	rsi, 32
	imul	rdx, rsi
	add	rdx, r8
	mov	ecx, ecx
	mov	r8, rdx
	sal	r8, 32
	add	rcx, r8
	shr	rax, 32
	imul	rdi, rsi
	add	rax, rdi
	shr	rdx, 32
	add	rax, rdx
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
	mov	rbp, rdi
	mov	r13, rsi
	mov	rbx, rdx
	mov	r12, rcx
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
	mov	rdx, rsi
	neg	rax
	adc	rdx, 0
	neg	rdx
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
	and	ecx, 15
	mov	eax, 27030
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
	mov	ecx, edi
	shr	ecx, 4
	xor	ecx, edi
	and	ecx, 15
	mov	eax, 27030
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
	and	ecx, 15
	mov	eax, 27030
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
	.p2align 4
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
	.p2align 4
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161:
	.cfi_startproc
	mov	eax, edi
	movsd	xmm1, QWORD PTR .LC14[rip]
	jmp	.L748
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L746:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L747
	mulsd	xmm0, xmm0
.L748:
	test	al, 1
	je	.L746
	mulsd	xmm1, xmm0
	jmp	.L746
	.p2align 4,,10
	.p2align 3
.L747:
	test	edi, edi
	js	.L750
.L745:
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L750:
	movsd	xmm0, QWORD PTR .LC14[rip]
	divsd	xmm0, xmm1
	movapd	xmm1, xmm0
	jmp	.L745
	.cfi_endproc
.LFE161:
	.size	__powidf2, .-__powidf2
	.p2align 4
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB162:
	.cfi_startproc
	mov	eax, edi
	movss	xmm1, DWORD PTR .LC16[rip]
	jmp	.L754
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L752:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L753
	mulss	xmm0, xmm0
.L754:
	test	al, 1
	je	.L752
	mulss	xmm1, xmm0
	jmp	.L752
	.p2align 4,,10
	.p2align 3
.L753:
	test	edi, edi
	js	.L756
.L751:
	movaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L756:
	movss	xmm0, DWORD PTR .LC16[rip]
	divss	xmm0, xmm1
	movaps	xmm1, xmm0
	jmp	.L751
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
	shr	rdx, 32
	mov	rcx, rsi
	shr	rcx, 32
	mov	eax, 0
	cmp	edx, ecx
	jb	.L757
	mov	eax, 2
	cmp	ecx, edx
	jb	.L757
	mov	eax, 0
	cmp	edi, esi
	jb	.L757
	cmp	esi, edi
	setb	al
	movzx	eax, al
	add	eax, 1
.L757:
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
	call	__ucmpdi2
	sub	eax, 1
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
	mov	eax, 0
	cmp	rsi, rcx
	jb	.L764
	mov	eax, 2
	cmp	rcx, rsi
	jb	.L764
	mov	eax, 0
	cmp	rdi, rdx
	jb	.L764
	cmp	rdx, rdi
	setb	al
	movzx	eax, al
	add	eax, 1
.L764:
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
