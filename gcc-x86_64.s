	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.globl	make_ti
	.type	make_ti, @function
make_ti:
.LFB0:
	.cfi_startproc
	mov	rax, rsi
	mov	rdx, rdi
	ret
	.cfi_endproc
.LFE0:
	.size	make_ti, .-make_ti
	.globl	make_tu
	.type	make_tu, @function
make_tu:
.LFB1:
	.cfi_startproc
	mov	rax, rsi
	mov	rdx, rdi
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
	add	rsi, rdx
	lea	r8, [rdi+rdx]
	mov	rcx, rdx
	jmp	.L5
.L6:
	mov	rdi, rdx
	neg	rdi
	mov	r9, rsi
	sub	r9, rdx
	movzx	r9d, BYTE PTR [r9-1+rcx]
	add	rdi, r8
	mov	BYTE PTR [rdi-1+rcx], r9b
	sub	rcx, 1
.L5:
	test	rcx, rcx
	jne	.L6
	ret
.L4:
	cmp	rdi, rsi
	jne	.L10
	ret
.L9:
	movzx	edi, BYTE PTR [rsi+rcx]
	mov	BYTE PTR [rax+rcx], dil
	add	rcx, 1
	jmp	.L8
.L10:
	mov	ecx, 0
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
	jmp	.L12
.L14:
	sub	rcx, 1
	add	rsi, 1
	add	rdi, 1
.L12:
	test	rcx, rcx
	je	.L13
	movzx	eax, BYTE PTR [rsi]
	mov	BYTE PTR [rdi], al
	movzx	eax, al
	cmp	edx, eax
	jne	.L14
.L13:
	test	rcx, rcx
	je	.L16
	lea	rax, [rdi+1]
	ret
.L16:
	mov	eax, 0
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
	mov	rax, rdi
	jmp	.L18
.L20:
	add	rax, 1
	sub	rdx, 1
.L18:
	test	rdx, rdx
	je	.L19
	movzx	ecx, BYTE PTR [rax]
	cmp	esi, ecx
	jne	.L20
.L19:
	test	rdx, rdx
	jne	.L21
	mov	eax, 0
.L21:
	ret
	.cfi_endproc
.LFE4:
	.size	memchr, .-memchr
	.globl	memcmp
	.type	memcmp, @function
memcmp:
.LFB5:
	.cfi_startproc
	jmp	.L24
.L26:
	sub	rdx, 1
	add	rdi, 1
	add	rsi, 1
.L24:
	test	rdx, rdx
	je	.L25
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rdi], al
	je	.L26
.L25:
	test	rdx, rdx
	je	.L28
	movzx	eax, BYTE PTR [rdi]
	movzx	edx, BYTE PTR [rsi]
	sub	eax, edx
	ret
.L28:
	mov	eax, 0
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
	jmp	.L30
.L31:
	movzx	edi, BYTE PTR [rsi+rcx]
	mov	BYTE PTR [rax+rcx], dil
	add	rcx, 1
.L30:
	cmp	rcx, rdx
	jne	.L31
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
	jmp	.L33
.L35:
	movzx	ecx, BYTE PTR [rdi+rdx]
	lea	rax, [rdx-1]
	cmp	esi, ecx
	jne	.L36
	lea	rax, [rdi+rdx]
	ret
.L36:
	mov	rdx, rax
.L33:
	cmp	rdx, -1
	jne	.L35
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
	jmp	.L38
.L39:
	mov	BYTE PTR [rcx], sil
	add	rcx, 1
.L38:
	cmp	rcx, rdx
	jne	.L39
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
	jmp	.L41
.L42:
	add	rsi, 1
	add	rax, 1
.L41:
	movzx	edx, BYTE PTR [rsi]
	mov	BYTE PTR [rax], dl
	test	dl, dl
	jne	.L42
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
	jmp	.L44
.L46:
	add	rax, 1
.L44:
	cmp	BYTE PTR [rax], 0
	je	.L45
	movzx	edx, BYTE PTR [rax]
	cmp	esi, edx
	jne	.L46
.L45:
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
.L49:
	movsx	edx, BYTE PTR [rax]
	cmp	esi, edx
	je	.L48
	add	rax, 1
	cmp	BYTE PTR [rax-1], 0
	jne	.L49
	mov	eax, 0
.L48:
	ret
	.cfi_endproc
.LFE11:
	.size	strchr, .-strchr
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.cfi_startproc
	jmp	.L52
.L54:
	add	rdi, 1
	add	rsi, 1
.L52:
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rdi], al
	jne	.L53
	cmp	BYTE PTR [rdi], 0
	jne	.L54
.L53:
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
	jmp	.L56
.L57:
	add	rax, 1
.L56:
	cmp	BYTE PTR [rax], 0
	jne	.L57
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
	test	rdx, rdx
	je	.L63
	mov	rax, rdi
	jmp	.L60
.L62:
	add	rax, 1
	add	rsi, 1
.L60:
	cmp	BYTE PTR [rax], 0
	je	.L61
	lea	rcx, [rdi-1+rdx]
	cmp	rax, rcx
	setne	r8b
	cmp	BYTE PTR [rsi], 0
	setne	cl
	test	r8b, cl
	je	.L61
	movzx	ecx, BYTE PTR [rsi]
	cmp	BYTE PTR [rax], cl
	je	.L62
.L61:
	movzx	eax, BYTE PTR [rax]
	movzx	edx, BYTE PTR [rsi]
	sub	eax, edx
	ret
.L63:
	mov	eax, 0
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
	jmp	.L65
.L66:
	movzx	ecx, BYTE PTR [rax+1]
	mov	BYTE PTR [rsi], cl
	movzx	ecx, BYTE PTR [rax]
	mov	BYTE PTR [rsi+1], cl
	add	rsi, 2
	add	rax, 2
.L65:
	lea	rcx, [rdi+rdx]
	sub	rcx, rax
	cmp	rcx, 1
	jg	.L66
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
	setbe	dl
	or	al, dl
	jne	.L79
	lea	eax, [rdi-8232]
	cmp	eax, 1
	jbe	.L80
	sub	edi, 65529
	cmp	edi, 2
	ja	.L81
	mov	eax, 1
	ret
.L79:
	mov	eax, 1
	ret
.L80:
	mov	eax, 1
	ret
.L81:
	mov	eax, 0
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
	ja	.L84
	add	edi, 1
	and	edi, 127
	cmp	edi, 32
	seta	al
	movzx	eax, al
	ret
.L84:
	cmp	edi, 8231
	setbe	al
	lea	edx, [rdi-8234]
	cmp	edx, 47061
	setbe	dl
	or	al, dl
	jne	.L86
	lea	eax, [rdi-57344]
	cmp	eax, 8184
	jbe	.L87
	lea	eax, [rdi-65532]
	cmp	eax, 1048579
	ja	.L88
	not	edi
	test	edi, 65534
	je	.L89
	mov	eax, 1
	ret
.L86:
	mov	eax, 1
	ret
.L87:
	mov	eax, 1
	ret
.L88:
	mov	eax, 0
	ret
.L89:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE28:
	.size	iswprint, .-iswprint
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	lea	eax, [rdi-48]
	cmp	eax, 9
	jbe	.L92
	or	edi, 32
	sub	edi, 97
	cmp	edi, 5
	ja	.L93
	mov	eax, 1
	ret
.L92:
	mov	eax, 1
	ret
.L93:
	mov	eax, 0
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
	jp	.L96
	ucomisd	xmm1, xmm1
	jp	.L99
	comisd	xmm0, xmm1
	jbe	.L102
	subsd	xmm0, xmm1
	ret
.L99:
	movapd	xmm0, xmm1
	ret
.L102:
	pxor	xmm0, xmm0
.L96:
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
	jp	.L104
	ucomiss	xmm1, xmm1
	jp	.L107
	comiss	xmm0, xmm1
	jbe	.L110
	subss	xmm0, xmm1
	ret
.L107:
	movaps	xmm0, xmm1
	ret
.L110:
	pxor	xmm0, xmm0
.L104:
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
	jp	.L115
	ucomisd	xmm1, xmm1
	jp	.L112
	movmskpd	edx, xmm0
	and	edx, 1
	movmskpd	eax, xmm1
	and	eax, 1
	cmp	edx, eax
	je	.L113
	movmskpd	eax, xmm0
	test	al, 1
	je	.L112
	movapd	xmm0, xmm1
	ret
.L113:
	comisd	xmm1, xmm0
	jbe	.L112
	movapd	xmm0, xmm1
	ret
.L115:
	movapd	xmm0, xmm1
.L112:
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
	jp	.L125
	ucomiss	xmm1, xmm1
	jp	.L122
	movd	edx, xmm0
	and	edx, -2147483648
	movd	eax, xmm1
	and	eax, -2147483648
	cmp	edx, eax
	je	.L123
	test	edx, edx
	je	.L122
	movaps	xmm0, xmm1
	ret
.L123:
	comiss	xmm1, xmm0
	jbe	.L122
	movaps	xmm0, xmm1
	ret
.L125:
	movaps	xmm0, xmm1
.L122:
	ret
	.cfi_endproc
.LFE34:
	.size	fmaxf, .-fmaxf
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB35:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	fld	TBYTE PTR [rbp+32]
	fld	TBYTE PTR [rbp+16]
	fucomi	st, st(0)
	jp	.L135
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L141
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
	je	.L133
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	.L142
	fstp	st(0)
	jmp	.L132
.L133:
	fcomi	st, st(1)
	jbe	.L143
	fstp	st(1)
	jmp	.L132
.L135:
	fstp	st(0)
	jmp	.L132
.L141:
	fstp	st(0)
	jmp	.L132
.L142:
	fstp	st(1)
	jmp	.L132
.L143:
	fstp	st(0)
.L132:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	fmaxl, .-fmaxl
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	movapd	xmm2, xmm0
	movapd	xmm0, xmm1
	ucomisd	xmm2, xmm2
	jp	.L145
	ucomisd	xmm1, xmm1
	jp	.L149
	movmskpd	edx, xmm2
	and	edx, 1
	movmskpd	eax, xmm1
	and	eax, 1
	cmp	edx, eax
	je	.L146
	movmskpd	eax, xmm2
	test	al, 1
	je	.L145
	movapd	xmm0, xmm2
	ret
.L146:
	comisd	xmm1, xmm2
	jbe	.L145
	movapd	xmm0, xmm2
	ret
.L149:
	movapd	xmm0, xmm2
.L145:
	ret
	.cfi_endproc
.LFE36:
	.size	fmin, .-fmin
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB37:
	.cfi_startproc
	ucomiss	xmm0, xmm0
	jp	.L158
	ucomiss	xmm1, xmm1
	jp	.L155
	movd	edx, xmm0
	and	edx, -2147483648
	movd	eax, xmm1
	and	eax, -2147483648
	cmp	edx, eax
	je	.L156
	test	edx, edx
	je	.L160
	ret
.L156:
	comiss	xmm1, xmm0
	jbe	.L163
	ret
.L158:
	movaps	xmm0, xmm1
	ret
.L160:
	movaps	xmm0, xmm1
	ret
.L163:
	movaps	xmm0, xmm1
.L155:
	ret
	.cfi_endproc
.LFE37:
	.size	fminf, .-fminf
	.globl	fminl
	.type	fminl, @function
fminl:
.LFB38:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	fld	TBYTE PTR [rbp+32]
	fld	TBYTE PTR [rbp+16]
	fucomi	st, st(0)
	jp	.L174
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L169
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
	je	.L175
	fstp	st(1)
	jmp	.L165
.L166:
	fcomi	st, st(1)
	jbe	.L176
	fstp	st(0)
	jmp	.L165
.L169:
	fstp	st(0)
	jmp	.L165
.L174:
	fstp	st(0)
	jmp	.L165
.L175:
	fstp	st(0)
	jmp	.L165
.L176:
	fstp	st(1)
.L165:
	pop	rbp
	.cfi_def_cfa 7, 8
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
	jmp	.L178
.L179:
	mov	edx, edi
	and	edx, 63
	movzx	edx, BYTE PTR digits[rdx]
	mov	BYTE PTR [rax], dl
	add	rax, 1
	shr	edi, 6
.L178:
	test	edi, edi
	jne	.L179
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
	jne	.L183
	mov	QWORD PTR [rdi+8], 0
	mov	QWORD PTR [rdi], 0
	ret
.L183:
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR [rdi], rax
	mov	QWORD PTR [rdi+8], rsi
	mov	QWORD PTR [rsi], rdi
	cmp	QWORD PTR [rdi], 0
	je	.L182
	mov	rax, QWORD PTR [rdi]
	mov	QWORD PTR [rax+8], rdi
.L182:
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
	je	.L186
	mov	rax, QWORD PTR [rdi]
	mov	rdx, QWORD PTR [rdi+8]
	mov	QWORD PTR [rax+8], rdx
.L186:
	cmp	QWORD PTR [rdi+8], 0
	je	.L185
	mov	rax, QWORD PTR [rdi+8]
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 40
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	QWORD PTR [rbp-56], rdi
	mov	rbx, rsi
	mov	QWORD PTR [rbp-64], rdx
	mov	r12, rcx
	mov	QWORD PTR [rbp-72], r8
	mov	r14, QWORD PTR [rdx]
	mov	r15, rsi
	mov	r13d, 0
	jmp	.L189
.L192:
	mov	rsi, r15
	mov	rdi, QWORD PTR [rbp-56]
	mov	rax, QWORD PTR [rbp-72]
	call	rax
	add	r15, r12
	test	eax, eax
	jne	.L190
	imul	r13, r12
	lea	rax, [rbx+r13]
	jmp	.L191
.L190:
	add	r13, 1
.L189:
	cmp	r13, r14
	jne	.L192
	lea	rax, [r14+1]
	mov	rcx, QWORD PTR [rbp-64]
	mov	QWORD PTR [rcx], rax
	imul	r14, r12
	lea	rdi, [rbx+r14]
	mov	rdx, r12
	mov	rsi, QWORD PTR [rbp-56]
	call	memcpy
.L191:
	add	rsp, 40
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	lsearch, .-lsearch
	.globl	lfind
	.type	lfind, @function
lfind:
.LFB45:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 24
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	QWORD PTR [rbp-56], rdi
	mov	rbx, rsi
	mov	r13, rcx
	mov	QWORD PTR [rbp-64], r8
	mov	r15, QWORD PTR [rdx]
	mov	r14, rsi
	mov	r12d, 0
	jmp	.L194
.L197:
	mov	rsi, r14
	mov	rdi, QWORD PTR [rbp-56]
	mov	rax, QWORD PTR [rbp-64]
	call	rax
	add	r14, r13
	test	eax, eax
	jne	.L195
	imul	r12, r13
	lea	rax, [rbx+r12]
	jmp	.L196
.L195:
	add	r12, 1
.L194:
	cmp	r12, r15
	jne	.L197
	mov	eax, 0
.L196:
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_def_cfa 7, 8
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 8
	.cfi_offset 3, -24
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
	cmp	eax, 45
	jne	.L208
	mov	edx, 1
	jmp	.L202
.L207:
	mov	edx, 0
.L202:
	add	rbx, 1
	jmp	.L203
.L208:
	mov	edx, 0
.L203:
	mov	eax, 0
	jmp	.L204
.L205:
	lea	ecx, [rax+rax*4]
	lea	eax, [rcx+rcx]
	add	rbx, 1
	movsx	ecx, BYTE PTR [rbx-1]
	sub	ecx, 48
	sub	eax, ecx
.L204:
	movsx	ecx, BYTE PTR [rbx]
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L205
	test	edx, edx
	jne	.L206
	neg	eax
.L206:
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
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
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 8
	.cfi_offset 3, -24
	mov	rbx, rdi
	jmp	.L211
.L212:
	add	rbx, 1
.L211:
	movsx	edi, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L212
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L218
	cmp	eax, 45
	jne	.L219
	mov	ecx, 1
	jmp	.L213
.L218:
	mov	ecx, 0
.L213:
	add	rbx, 1
	jmp	.L214
.L219:
	mov	ecx, 0
.L214:
	mov	eax, 0
	jmp	.L215
.L216:
	lea	rdx, [rax+rax*4]
	lea	rax, [rdx+rdx]
	add	rbx, 1
	movsx	edx, BYTE PTR [rbx-1]
	sub	edx, 48
	movsx	rdx, edx
	sub	rax, rdx
.L215:
	movsx	edx, BYTE PTR [rbx]
	sub	edx, 48
	cmp	edx, 9
	jbe	.L216
	test	ecx, ecx
	jne	.L217
	neg	rax
.L217:
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
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
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 8
	.cfi_offset 3, -24
	mov	rbx, rdi
	jmp	.L222
.L223:
	add	rbx, 1
.L222:
	movsx	edi, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L223
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L229
	cmp	eax, 45
	jne	.L230
	mov	ecx, 1
	jmp	.L224
.L229:
	mov	ecx, 0
.L224:
	add	rbx, 1
	jmp	.L225
.L230:
	mov	ecx, 0
.L225:
	mov	eax, 0
	jmp	.L226
.L227:
	lea	rdx, [rax+rax*4]
	lea	rax, [rdx+rdx]
	add	rbx, 1
	movsx	edx, BYTE PTR [rbx-1]
	sub	edx, 48
	movsx	rdx, edx
	sub	rax, rdx
.L226:
	movsx	edx, BYTE PTR [rbx]
	sub	edx, 48
	cmp	edx, 9
	jbe	.L227
	test	ecx, ecx
	jne	.L228
	neg	rax
.L228:
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	atoll, .-atoll
	.globl	bsearch
	.type	bsearch, @function
bsearch:
.LFB50:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 24
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	QWORD PTR [rbp-56], rdi
	mov	r14, rsi
	mov	rbx, rdx
	mov	r13, rcx
	mov	r15, r8
	jmp	.L233
.L237:
	mov	r12, rbx
	shr	r12
	imul	r12, r13
	add	r12, r14
	mov	rsi, r12
	mov	rdi, QWORD PTR [rbp-56]
	call	r15
	test	eax, eax
	jns	.L234
	shr	rbx
	jmp	.L233
.L234:
	jle	.L238
	lea	r14, [r12+r13]
	mov	rax, rbx
	shr	rax
	sub	rbx, 1
	sub	rbx, rax
.L233:
	test	rbx, rbx
	jne	.L237
	mov	eax, 0
	jmp	.L236
.L238:
	mov	rax, r12
.L236:
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	bsearch, .-bsearch
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB51:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 24
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	QWORD PTR [rbp-56], rdi
	mov	r14, rcx
	mov	r15, r8
	mov	QWORD PTR [rbp-64], r9
	mov	r12d, edx
	mov	r13, rsi
	jmp	.L240
.L243:
	mov	ebx, r12d
	sar	ebx
	movsx	rbx, ebx
	imul	rbx, r14
	add	rbx, r13
	mov	rdx, QWORD PTR [rbp-64]
	mov	rsi, rbx
	mov	rdi, QWORD PTR [rbp-56]
	call	r15
	test	eax, eax
	je	.L244
	jle	.L242
	lea	r13, [rbx+r14]
	sub	r12d, 1
.L242:
	sar	r12d
.L240:
	test	r12d, r12d
	jne	.L243
	mov	eax, 0
	jmp	.L241
.L244:
	mov	rax, rbx
.L241:
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_def_cfa 7, 8
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
	mov	ecx, eax
	or	rcx, rdx
	mov	rax, rcx
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
	mov	rcx, rdx
	mov	rdi, rax
	mov	rax, rdi
	mov	rdx, rcx
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
	mov	rcx, rdx
	mov	rdi, rax
	mov	rax, rdi
	mov	rdx, rcx
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
	mov	rcx, rdx
	mov	rdi, rax
	mov	rax, rdi
	mov	rdx, rcx
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
	jmp	.L253
.L255:
	add	rax, 4
.L253:
	cmp	DWORD PTR [rax], 0
	je	.L254
	cmp	esi, DWORD PTR [rax]
	jne	.L255
.L254:
	cmp	DWORD PTR [rax], 0
	jne	.L256
	mov	eax, 0
.L256:
	ret
	.cfi_endproc
.LFE59:
	.size	wcschr, .-wcschr
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60:
	.cfi_startproc
	jmp	.L259
.L261:
	add	rdi, 4
	add	rsi, 4
.L259:
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	jne	.L260
	cmp	DWORD PTR [rdi], 0
	je	.L260
	test	eax, eax
	jne	.L261
.L260:
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	jl	.L263
	setg	al
	movzx	eax, al
	ret
.L263:
	mov	eax, -1
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
.L265:
	add	rsi, 4
	add	rdx, 4
	mov	ecx, DWORD PTR [rsi-4]
	mov	DWORD PTR [rdx-4], ecx
	test	ecx, ecx
	jne	.L265
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
	jmp	.L267
.L268:
	add	rax, 4
.L267:
	cmp	DWORD PTR [rax], 0
	jne	.L268
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
	jmp	.L270
.L272:
	sub	rdx, 1
	add	rdi, 4
	add	rsi, 4
.L270:
	test	rdx, rdx
	je	.L271
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	jne	.L271
	cmp	DWORD PTR [rdi], 0
	je	.L271
	test	eax, eax
	jne	.L272
.L271:
	test	rdx, rdx
	je	.L274
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	jl	.L275
	setg	al
	movzx	eax, al
	ret
.L274:
	mov	eax, 0
	ret
.L275:
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
	mov	rax, rdi
	jmp	.L277
.L279:
	sub	rdx, 1
	add	rax, 4
.L277:
	test	rdx, rdx
	je	.L278
	cmp	esi, DWORD PTR [rax]
	jne	.L279
.L278:
	test	rdx, rdx
	jne	.L280
	mov	eax, 0
.L280:
	ret
	.cfi_endproc
.LFE64:
	.size	wmemchr, .-wmemchr
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65:
	.cfi_startproc
	jmp	.L283
.L285:
	sub	rdx, 1
	add	rdi, 4
	add	rsi, 4
.L283:
	test	rdx, rdx
	je	.L284
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	je	.L285
.L284:
	test	rdx, rdx
	je	.L287
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	jl	.L288
	setg	al
	movzx	eax, al
	ret
.L287:
	mov	eax, 0
	ret
.L288:
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
	mov	ecx, 0
	jmp	.L290
.L291:
	mov	edi, DWORD PTR [rsi+rcx*4]
	mov	DWORD PTR [rax+rcx*4], edi
	add	rcx, 1
.L290:
	cmp	rcx, rdx
	jne	.L291
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
	je	.L293
	sub	rdi, rsi
	lea	rcx, [0+rdx*4]
	cmp	rdi, rcx
	jb	.L294
	mov	ecx, 0
	jmp	.L295
.L296:
	mov	ecx, DWORD PTR [rsi+rdx*4]
	mov	DWORD PTR [rax+rdx*4], ecx
.L294:
	sub	rdx, 1
	cmp	rdx, -1
	jne	.L296
	ret
.L297:
	mov	edi, DWORD PTR [rsi+rcx*4]
	mov	DWORD PTR [rax+rcx*4], edi
	add	rcx, 1
.L295:
	cmp	rcx, rdx
	jne	.L297
.L293:
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
	jmp	.L299
.L300:
	mov	DWORD PTR [rax+rcx*4], esi
	add	rcx, 1
.L299:
	cmp	rcx, rdx
	jne	.L300
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
	jnb	.L302
	add	rdi, rdx
	add	rsi, rdx
	mov	rax, rdx
	jmp	.L303
.L304:
	mov	rcx, rdx
	neg	rcx
	mov	r8, rdi
	sub	r8, rdx
	movzx	r8d, BYTE PTR [r8-1+rax]
	add	rcx, rsi
	mov	BYTE PTR [rcx-1+rax], r8b
	sub	rax, 1
.L303:
	test	rax, rax
	jne	.L304
	ret
.L302:
	jne	.L308
	ret
.L307:
	movzx	ecx, BYTE PTR [rdi+rax]
	mov	BYTE PTR [rsi+rax], cl
	add	rax, 1
	jmp	.L306
.L308:
	mov	eax, 0
.L306:
	cmp	rax, rdx
	jne	.L307
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
	mov	edx, edi
	movzx	eax, dh
	sal	edx, 8
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
	mov	edx, edi
	mov	eax, edi
	shr	eax, 24
	shr	rdx, 8
	and	edx, 65280
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
	jmp	.L323
.L326:
	bt	edi, eax
	jnc	.L324
	add	eax, 1
	ret
.L324:
	add	eax, 1
.L323:
	cmp	eax, 32
	jne	.L326
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
	test	edi, edi
	je	.L331
	mov	eax, 1
	jmp	.L329
.L330:
	sar	edi
	add	eax, 1
.L329:
	test	dil, 1
	je	.L330
	ret
.L331:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs, .-libiberty_ffs
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB85:
	.cfi_startproc
	movss	xmm1, DWORD PTR .LC3[rip]
	comiss	xmm1, xmm0
	ja	.L335
	comiss	xmm0, DWORD PTR .LC4[rip]
	jbe	.L338
	mov	eax, 1
	ret
.L335:
	mov	eax, 1
	ret
.L338:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE85:
	.size	gl_isinff, .-gl_isinff
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB86:
	.cfi_startproc
	movsd	xmm1, QWORD PTR .LC5[rip]
	comisd	xmm1, xmm0
	ja	.L342
	comisd	xmm0, QWORD PTR .LC6[rip]
	jbe	.L345
	mov	eax, 1
	ret
.L342:
	mov	eax, 1
	ret
.L345:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE86:
	.size	gl_isinfd, .-gl_isinfd
	.globl	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB87:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	fld	TBYTE PTR [rbp+16]
	fld	TBYTE PTR .LC7[rip]
	fcomip	st, st(1)
	ja	.L349
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	.L352
	mov	eax, 1
	jmp	.L347
.L349:
	fstp	st(0)
	mov	eax, 1
	jmp	.L347
.L352:
	mov	eax, 0
.L347:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	gl_isinfl, .-gl_isinfl
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB88:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, esi
	movsd	QWORD PTR [rbp-8], xmm0
	fld	QWORD PTR [rbp-8]
	fstp	TBYTE PTR [rdi]
	pop	rbp
	.cfi_def_cfa 7, 8
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
	jp	.L355
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm0, xmm1
	jp	.L361
	je	.L355
.L361:
	test	edi, edi
	jns	.L360
	movss	xmm1, DWORD PTR .LC9[rip]
	jmp	.L359
.L360:
	movss	xmm1, DWORD PTR .LC10[rip]
.L359:
	test	dil, 1
	je	.L358
	mulss	xmm0, xmm1
.L358:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L355
	mulss	xmm1, xmm1
	jmp	.L359
.L355:
	ret
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB90:
	.cfi_startproc
	ucomisd	xmm0, xmm0
	jp	.L363
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm0, xmm1
	jp	.L369
	je	.L363
.L369:
	test	edi, edi
	jns	.L368
	movsd	xmm1, QWORD PTR .LC11[rip]
	jmp	.L367
.L368:
	movsd	xmm1, QWORD PTR .LC12[rip]
.L367:
	test	dil, 1
	je	.L366
	mulsd	xmm0, xmm1
.L366:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L363
	mulsd	xmm1, xmm1
	jmp	.L367
.L363:
	ret
	.cfi_endproc
.LFE90:
	.size	ldexp, .-ldexp
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB91:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	fld	TBYTE PTR [rbp+16]
	fucomi	st, st(0)
	jp	.L371
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	.L377
	je	.L371
.L377:
	test	edi, edi
	jns	.L376
	fld	DWORD PTR .LC9[rip]
	jmp	.L375
.L376:
	fld	DWORD PTR .LC10[rip]
.L375:
	test	dil, 1
	je	.L374
	fmul	st(1), st
.L374:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L378
	fmul	st, st(0)
	jmp	.L375
.L378:
	fstp	st(0)
.L371:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
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
	jmp	.L380
.L381:
	add	rsi, 1
	add	rcx, 1
	movzx	edi, BYTE PTR [rcx-1]
	xor	dil, BYTE PTR [rsi-1]
	mov	BYTE PTR [rcx-1], dil
.L380:
	cmp	rcx, rdx
	jne	.L381
	ret
	.cfi_endproc
.LFE92:
	.size	memxor, .-memxor
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB93:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r13
	push	r12
	push	rbx
	sub	rsp, 8
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	mov	r12, rdi
	mov	r13, rsi
	mov	rbx, rdx
	call	strlen
	add	rax, r12
	jmp	.L383
.L385:
	add	r13, 1
	add	rax, 1
	sub	rbx, 1
.L383:
	test	rbx, rbx
	je	.L384
	movzx	edx, BYTE PTR [r13+0]
	mov	BYTE PTR [rax], dl
	test	dl, dl
	jne	.L385
.L384:
	test	rbx, rbx
	jne	.L386
	mov	BYTE PTR [rax], 0
.L386:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	.cfi_def_cfa 7, 8
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
	jmp	.L388
.L390:
	add	rax, 1
.L388:
	cmp	rax, rsi
	je	.L389
	cmp	BYTE PTR [rdi+rax], 0
	jne	.L390
.L389:
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
	jmp	.L392
.L394:
	add	rdx, 1
	movzx	ecx, BYTE PTR [rax]
	cmp	BYTE PTR [rdx-1], cl
	je	.L393
	jmp	.L395
.L397:
	mov	rdx, rsi
.L395:
	cmp	BYTE PTR [rdx], 0
	jne	.L394
	add	rax, 1
.L392:
	cmp	BYTE PTR [rax], 0
	jne	.L397
	mov	eax, 0
.L393:
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
.L400:
	movsx	edx, BYTE PTR [rdi]
	cmp	esi, edx
	jne	.L399
	mov	rax, rdi
.L399:
	add	rdi, 1
	cmp	BYTE PTR [rdi-1], 0
	jne	.L400
	ret
	.cfi_endproc
.LFE96:
	.size	strrchr, .-strrchr
	.globl	strstr
	.type	strstr, @function
strstr:
.LFB97:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r14
	push	r13
	push	r12
	push	rbx
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	mov	rbx, rdi
	mov	r13, rsi
	mov	rdi, rsi
	call	strlen
	mov	r12, rax
	test	rax, rax
	je	.L403
	movsx	r14d, BYTE PTR [r13+0]
	jmp	.L404
.L405:
	mov	rdx, r12
	mov	rsi, r13
	mov	rdi, rbx
	call	strncmp
	test	eax, eax
	je	.L403
	add	rbx, 1
.L404:
	mov	esi, r14d
	mov	rdi, rbx
	call	strchr
	mov	rbx, rax
	test	rax, rax
	jne	.L405
.L403:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	rbp
	.cfi_def_cfa 7, 8
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
	jbe	.L409
	comisd	xmm1, xmm2
	ja	.L411
.L409:
	pxor	xmm2, xmm2
	comisd	xmm0, xmm2
	jbe	.L412
	comisd	xmm2, xmm1
	jbe	.L412
.L411:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L412:
	ret
	.cfi_endproc
.LFE98:
	.size	copysign, .-copysign
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB99:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r14
	push	r13
	push	r12
	push	rbx
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	mov	rbx, rdi
	mov	r13, rdx
	mov	r12, rcx
	mov	r14, rsi
	sub	r14, rcx
	add	r14, rdi
	test	rcx, rcx
	je	.L422
	cmp	rsi, rcx
	setb	al
	test	al, al
	jne	.L427
	jmp	.L423
.L425:
	movzx	eax, BYTE PTR [r13+0]
	cmp	BYTE PTR [rbx], al
	jne	.L424
	lea	rdx, [r12-1]
	lea	rsi, [r13+1]
	lea	rdi, [rbx+1]
	call	memcmp
	test	eax, eax
	je	.L422
.L424:
	add	rbx, 1
.L423:
	cmp	r14, rbx
	jnb	.L425
	mov	ebx, 0
	jmp	.L422
.L427:
	mov	ebx, 0
.L422:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	memmem, .-memmem
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB100:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 8
	.cfi_offset 3, -24
	mov	rbx, rdx
	call	memcpy
	add	rax, rbx
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
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
	comisd	xmm1, xmm0
	jbe	.L444
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	mov	edx, 1
	jmp	.L431
.L444:
	mov	edx, 0
.L431:
	comisd	xmm0, QWORD PTR .LC14[rip]
	jnb	.L441
	jmp	.L445
.L435:
	add	eax, 1
	mulsd	xmm0, QWORD PTR .LC11[rip]
	jmp	.L433
.L441:
	mov	eax, 0
.L433:
	comisd	xmm0, QWORD PTR .LC14[rip]
	jnb	.L435
	jmp	.L436
.L445:
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	setp	al
	mov	ecx, 1
	cmovne	eax, ecx
	movsd	xmm1, QWORD PTR .LC11[rip]
	comisd	xmm1, xmm0
	seta	cl
	test	cl, al
	jne	.L442
	mov	eax, 0
	jmp	.L436
.L438:
	sub	eax, 1
	addsd	xmm0, xmm0
	jmp	.L437
.L442:
	mov	eax, 0
.L437:
	movsd	xmm1, QWORD PTR .LC11[rip]
	comisd	xmm1, xmm0
	ja	.L438
.L436:
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	je	.L439
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L439:
	ret
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	mov	eax, 0
	jmp	.L447
.L449:
	test	dil, 1
	je	.L448
	add	rax, rsi
.L448:
	add	rsi, rsi
	shr	rdi
.L447:
	test	rdi, rdi
	jne	.L449
	ret
	.cfi_endproc
.LFE102:
	.size	__muldi3, .-__muldi3
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB103:
	.cfi_startproc
	mov	eax, edi
	mov	ecx, 1
	jmp	.L451
.L453:
	add	esi, esi
	add	ecx, ecx
.L451:
	cmp	esi, eax
	setb	r8b
	test	ecx, ecx
	setne	dil
	test	r8b, dil
	je	.L458
	test	esi, esi
	jns	.L453
	mov	edi, 0
	jmp	.L455
.L456:
	cmp	eax, esi
	jb	.L454
	sub	eax, esi
	or	edi, ecx
.L454:
	shr	ecx
	shr	esi
	jmp	.L455
.L458:
	mov	edi, 0
.L455:
	test	ecx, ecx
	jne	.L456
	test	rdx, rdx
	jne	.L457
	mov	eax, edi
.L457:
	ret
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	test	dil, dil
	jns	.L461
	not	edi
.L461:
	test	dil, dil
	je	.L463
	movsx	edi, dil
	sal	edi, 8
	bsr	eax, edi
	xor	eax, 31
	lea	eax, [rax-1]
	ret
.L463:
	mov	eax, 7
	ret
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2, .-__clrsbqi2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	test	rdi, rdi
	jns	.L465
	not	rdi
.L465:
	test	rdi, rdi
	je	.L467
	bsr	rax, rdi
	mov	edi, eax
	xor	edi, 63
	lea	eax, [rdi-1]
	ret
.L467:
	mov	eax, 63
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
	jmp	.L469
.L471:
	test	dil, 1
	je	.L470
	add	eax, esi
.L470:
	shr	edi
	add	esi, esi
.L469:
	test	edi, edi
	jne	.L471
	ret
	.cfi_endproc
.LFE106:
	.size	__mulsi3, .-__mulsi3
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107:
	.cfi_startproc
	mov	rcx, rdi
	mov	r8d, edx
	shr	r8d, 3
	mov	eax, edx
	and	eax, -8
	cmp	rdi, rsi
	jb	.L473
	mov	edi, edx
	add	rdi, rsi
	cmp	rdi, rcx
	jnb	.L474
.L473:
	lea	r8d, [0+r8*8]
	mov	edi, 0
	jmp	.L475
.L476:
	mov	r9, QWORD PTR [rsi+rdi]
	mov	QWORD PTR [rcx+rdi], r9
	add	rdi, 8
.L475:
	cmp	rdi, r8
	jne	.L476
	mov	eax, eax
	jmp	.L477
.L478:
	movzx	edi, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dil
	add	rax, 1
.L477:
	cmp	edx, eax
	ja	.L478
	ret
.L480:
	mov	eax, edx
	movzx	edi, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dil
.L474:
	sub	edx, 1
	cmp	edx, -1
	jne	.L480
	ret
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	mov	rax, rdi
	mov	rcx, rsi
	mov	edi, edx
	shr	edi
	cmp	rax, rsi
	jb	.L482
	mov	esi, edx
	add	rsi, rcx
	cmp	rsi, rax
	jnb	.L483
.L482:
	lea	edi, [rdi+rdi]
	mov	esi, 0
	jmp	.L484
.L485:
	movzx	r8d, WORD PTR [rcx+rsi]
	mov	WORD PTR [rax+rsi], r8w
	add	rsi, 2
.L484:
	cmp	rsi, rdi
	jne	.L485
	test	dl, 1
	je	.L481
	sub	edx, 1
	mov	edx, edx
	movzx	ecx, BYTE PTR [rcx+rdx]
	mov	BYTE PTR [rax+rdx], cl
	ret
.L487:
	mov	esi, edx
	movzx	edi, BYTE PTR [rcx+rsi]
	mov	BYTE PTR [rax+rsi], dil
.L483:
	sub	edx, 1
	cmp	edx, -1
	jne	.L487
.L481:
	ret
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	mov	rcx, rdi
	mov	r8d, edx
	shr	r8d, 2
	mov	eax, edx
	and	eax, -4
	cmp	rdi, rsi
	jb	.L489
	mov	edi, edx
	add	rdi, rsi
	cmp	rdi, rcx
	jnb	.L490
.L489:
	lea	r8d, [0+r8*4]
	mov	edi, 0
	jmp	.L491
.L492:
	mov	r9d, DWORD PTR [rsi+rdi]
	mov	DWORD PTR [rcx+rdi], r9d
	add	rdi, 4
.L491:
	cmp	rdi, r8
	jne	.L492
	mov	eax, eax
	jmp	.L493
.L494:
	movzx	edi, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dil
	add	rax, 1
.L493:
	cmp	edx, eax
	ja	.L494
	ret
.L496:
	mov	eax, edx
	movzx	edi, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dil
.L490:
	sub	edx, 1
	cmp	edx, -1
	jne	.L496
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
	js	.L505
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdi
	ret
.L505:
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
	js	.L508
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdi
	ret
.L508:
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
	jmp	.L512
.L514:
	movzx	ecx, di
	mov	edx, 15
	sub	edx, eax
	bt	ecx, edx
	jc	.L513
	add	eax, 1
.L512:
	cmp	eax, 16
	jne	.L514
.L513:
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
	jmp	.L516
.L518:
	movzx	edx, di
	bt	edx, eax
	jc	.L517
	add	eax, 1
.L516:
	cmp	eax, 16
	jne	.L518
.L517:
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
	jb	.L524
	subss	xmm0, DWORD PTR .LC15[rip]
	cvttss2si	rax, xmm0
	add	rax, 32768
	ret
.L524:
	cvttss2si	rax, xmm0
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
	mov	edx, 0
	jmp	.L526
.L528:
	movzx	ecx, di
	bt	ecx, edx
	jnc	.L527
	add	eax, 1
.L527:
	add	edx, 1
.L526:
	cmp	edx, 16
	jne	.L528
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
	mov	eax, 0
	jmp	.L530
.L532:
	movzx	ecx, di
	bt	ecx, eax
	jnc	.L531
	add	edx, 1
.L531:
	add	eax, 1
.L530:
	cmp	eax, 16
	jne	.L532
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
	jmp	.L534
.L536:
	test	dil, 1
	je	.L535
	add	eax, esi
.L535:
	shr	edi
	add	esi, esi
.L534:
	test	edi, edi
	jne	.L536
	ret
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	test	edi, edi
	je	.L542
	mov	eax, 0
	jmp	.L539
.L541:
	test	sil, 1
	je	.L540
	add	eax, edi
.L540:
	add	edi, edi
	shr	esi
.L539:
	test	esi, esi
	jne	.L541
	ret
.L542:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	mov	eax, edi
	mov	ecx, 1
	jmp	.L544
.L546:
	add	esi, esi
	add	ecx, ecx
.L544:
	cmp	esi, eax
	setb	r8b
	test	ecx, ecx
	setne	dil
	test	r8b, dil
	je	.L551
	test	esi, esi
	jns	.L546
	mov	edi, 0
	jmp	.L548
.L549:
	cmp	eax, esi
	jb	.L547
	sub	eax, esi
	or	edi, ecx
.L547:
	shr	ecx
	shr	esi
	jmp	.L548
.L551:
	mov	edi, 0
.L548:
	test	ecx, ecx
	jne	.L549
	test	edx, edx
	jne	.L550
	mov	eax, edi
.L550:
	ret
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4, .-__udivmodsi4
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	comiss	xmm1, xmm0
	ja	.L555
	comiss	xmm0, xmm1
	ja	.L556
	mov	eax, 0
	ret
.L555:
	mov	eax, -1
	ret
.L556:
	mov	eax, 1
	ret
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	comisd	xmm1, xmm0
	ja	.L559
	comisd	xmm0, xmm1
	ja	.L560
	mov	eax, 0
	ret
.L559:
	mov	eax, -1
	ret
.L560:
	mov	eax, 1
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
	jns	.L569
	neg	esi
	mov	ecx, 1
	jmp	.L564
.L569:
	mov	ecx, 0
.L564:
	mov	eax, 0
	mov	edx, 0
	jmp	.L565
.L567:
	test	sil, 1
	je	.L566
	add	eax, edi
.L566:
	add	edi, edi
	sar	esi
	add	edx, 1
.L565:
	test	esi, esi
	setne	r8b
	cmp	dl, 31
	setbe	r9b
	test	r9b, r8b
	jne	.L567
	test	ecx, ecx
	je	.L568
	neg	eax
.L568:
	ret
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 8
	.cfi_offset 3, -24
	test	rdi, rdi
	jns	.L575
	neg	rdi
	mov	ebx, 1
	jmp	.L572
.L575:
	mov	ebx, 0
.L572:
	test	rsi, rsi
	jns	.L573
	neg	rsi
	test	ebx, ebx
	sete	bl
	movzx	ebx, bl
.L573:
	mov	edx, 0
	call	__udivmodsi4
	mov	eax, eax
	test	ebx, ebx
	je	.L574
	neg	rax
.L574:
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 8
	.cfi_offset 3, -24
	test	rdi, rdi
	jns	.L580
	neg	rdi
	mov	ebx, 1
	jmp	.L577
.L580:
	mov	ebx, 0
.L577:
	test	rsi, rsi
	jns	.L578
	neg	rsi
.L578:
	mov	edx, 1
	call	__udivmodsi4
	mov	eax, eax
	test	ebx, ebx
	je	.L579
	neg	rax
.L579:
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	mov	eax, edi
	mov	ecx, 1
	jmp	.L582
.L584:
	add	esi, esi
	add	ecx, ecx
.L582:
	cmp	si, ax
	setb	r8b
	test	cx, cx
	setne	dil
	test	r8b, dil
	je	.L589
	test	si, si
	jns	.L584
	mov	edi, 0
	jmp	.L586
.L587:
	cmp	ax, si
	jb	.L585
	sub	eax, esi
	or	edi, ecx
.L585:
	shr	cx
	shr	si
	jmp	.L586
.L589:
	mov	edi, 0
.L586:
	test	cx, cx
	jne	.L587
	test	edx, edx
	jne	.L588
	mov	eax, edi
.L588:
	ret
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	mov	rax, rdi
	mov	ecx, 1
	jmp	.L592
.L594:
	add	rsi, rsi
	add	rcx, rcx
.L592:
	cmp	rsi, rax
	setb	r8b
	test	rcx, rcx
	setne	dil
	test	r8b, dil
	je	.L599
	test	esi, 2147483648
	je	.L594
	mov	edi, 0
	jmp	.L596
.L597:
	cmp	rax, rsi
	jb	.L595
	sub	rax, rsi
	or	rdi, rcx
.L595:
	shr	rcx
	shr	rsi
	jmp	.L596
.L599:
	mov	edi, 0
.L596:
	test	rcx, rcx
	jne	.L597
	test	edx, edx
	jne	.L598
	mov	rax, rdi
.L598:
	ret
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133:
	.cfi_startproc
	mov	rax, rdi
	mov	rdx, rdi
	test	sil, 32
	je	.L602
	lea	ecx, [rsi-32]
	sal	edx, cl
	mov	rax, rdx
	sal	rax, 32
	ret
.L602:
	test	esi, esi
	je	.L604
	sar	rdx, 32
	mov	ecx, esi
	sal	edx, cl
	mov	ecx, 32
	sub	ecx, esi
	mov	eax, edi
	shr	eax, cl
	or	eax, edx
	sal	rax, 32
	mov	ecx, esi
	sal	edi, cl
	or	rax, rdi
.L604:
	ret
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.globl	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	xchg	rdi, rsi
	mov	r9, rsi
	mov	r10, rdi
	test	dl, 64
	je	.L607
	mov	esi, 0
	mov	r8, r9
	lea	ecx, [rdx-64]
	sal	r8, cl
	mov	rdi, r8
	jmp	.L608
.L607:
	test	edx, edx
	je	.L610
	mov	rax, rsi
	mov	r8, rsi
	mov	ecx, edx
	sal	r8, cl
	mov	rsi, r10
	sal	rsi, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rax, cl
	or	rax, rsi
	mov	rsi, r8
	mov	rdi, rax
.L608:
	mov	rax, rsi
	mov	rdx, rdi
	ret
.L610:
	mov	rax, rsi
	mov	rdx, rdi
	ret
	.cfi_endproc
.LFE134:
	.size	__ashlti3, .-__ashlti3
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135:
	.cfi_startproc
	mov	rax, rdi
	mov	rdx, rdi
	test	sil, 32
	je	.L612
	sar	rdx, 32
	mov	edi, edx
	sar	edi, 31
	lea	ecx, [rsi-32]
	sar	edx, cl
	mov	eax, edx
	sal	rdi, 32
	or	rax, rdi
	ret
.L612:
	test	esi, esi
	je	.L614
	sar	rdi, 32
	mov	r8d, edi
	mov	ecx, esi
	sar	r8d, cl
	mov	ecx, 32
	sub	ecx, esi
	sal	edi, cl
	mov	ecx, esi
	shr	edx, cl
	or	edi, edx
	sal	r8, 32
	mov	rax, r8
	or	rax, rdi
.L614:
	ret
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.globl	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	xchg	rdi, rsi
	mov	r10, rsi
	mov	r11, rdi
	test	dl, 64
	je	.L617
	mov	rax, rdi
	mov	rcx, rdi
	sar	rcx, 63
	mov	r9, rcx
	lea	ecx, [rdx-64]
	sar	rax, cl
	mov	r8, rax
	jmp	.L618
.L617:
	test	edx, edx
	je	.L620
	mov	rax, rdi
	mov	ecx, edx
	sar	rdi, cl
	mov	r9, rdi
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r10, cl
	or	rax, r10
	mov	r8, rax
.L618:
	mov	rax, r8
	mov	rdx, r9
	ret
.L620:
	mov	rax, rsi
	mov	rdx, rdi
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
	cmp	edi, 65535
	ja	.L628
	mov	eax, 16
	jmp	.L624
.L628:
	mov	eax, 0
.L624:
	mov	ecx, 16
	sub	ecx, eax
	shr	edx, cl
	test	dh, -1
	jne	.L629
	mov	esi, 8
	jmp	.L625
.L629:
	mov	esi, 0
.L625:
	mov	ecx, 8
	sub	ecx, esi
	shr	edx, cl
	add	eax, esi
	test	dl, -16
	jne	.L630
	mov	esi, 4
	jmp	.L626
.L630:
	mov	esi, 0
.L626:
	mov	ecx, 4
	sub	ecx, esi
	shr	edx, cl
	add	eax, esi
	test	dl, 12
	jne	.L631
	mov	edi, 2
	jmp	.L627
.L631:
	mov	edi, 0
.L627:
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
	mov	r9, rsi
	test	rsi, rsi
	sete	dl
	sal	rdx, 63
	sar	rdx, 63
	mov	rsi, rdx
	not	rsi
	and	rsi, r9
	mov	rax, rdi
	and	rax, rdx
	or	rsi, rax
	bsr	rax, rsi
	mov	esi, eax
	xor	esi, 63
	and	edx, 64
	lea	eax, [rsi+rdx]
	ret
	.cfi_endproc
.LFE140:
	.size	__clzti2, .-__clzti2
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB141:
	.cfi_startproc
	mov	rax, rdi
	shr	rax, 32
	mov	edx, eax
	mov	rax, rsi
	shr	rax, 32
	cmp	edx, eax
	jl	.L635
	mov	rax, rdi
	shr	rax, 32
	mov	edx, eax
	mov	rax, rsi
	shr	rax, 32
	cmp	edx, eax
	jg	.L636
	cmp	esi, edi
	ja	.L637
	jb	.L638
	mov	eax, 1
	ret
.L635:
	mov	eax, 0
	ret
.L636:
	mov	eax, 2
	ret
.L637:
	mov	eax, 0
	ret
.L638:
	mov	eax, 2
	ret
	.cfi_endproc
.LFE141:
	.size	__cmpdi2, .-__cmpdi2
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB142:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	call	__cmpdi2
	sub	eax, 1
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.globl	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
.LFB143:
	.cfi_startproc
	xchg	rdi, rsi
	mov	rax, rdx
	cmp	rdi, rcx
	jl	.L642
	jg	.L643
	cmp	rsi, rax
	jb	.L644
	cmp	rax, rsi
	jb	.L645
	mov	ecx, 1
	jmp	.L641
.L642:
	mov	ecx, 0
	jmp	.L641
.L643:
	mov	ecx, 2
	jmp	.L641
.L644:
	mov	ecx, 0
	jmp	.L641
.L645:
	mov	ecx, 2
.L641:
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
	jne	.L651
	mov	eax, 16
	jmp	.L647
.L651:
	mov	eax, 0
.L647:
	mov	ecx, eax
	shr	edi, cl
	test	dil, dil
	jne	.L652
	mov	ecx, 8
	jmp	.L648
.L652:
	mov	ecx, 0
.L648:
	shr	edi, cl
	add	eax, ecx
	test	dil, 15
	jne	.L653
	mov	ecx, 4
	jmp	.L649
.L653:
	mov	ecx, 0
.L649:
	shr	edi, cl
	add	eax, ecx
	test	dil, 3
	jne	.L654
	mov	ecx, 2
	jmp	.L650
.L654:
	mov	ecx, 0
.L650:
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
	xchg	rdi, rsi
	test	rsi, rsi
	sete	dl
	sal	rdx, 63
	sar	rdx, 63
	mov	rcx, rdi
	and	rcx, rdx
	mov	rax, rdx
	not	rax
	and	rax, rsi
	or	rax, rcx
	rep bsf	rax, rax
	and	edx, 64
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
	xchg	rdi, rsi
	test	rsi, rsi
	jne	.L657
	test	rdi, rdi
	je	.L659
	xor	eax, eax
	rep bsf	rax, rdi
	add	eax, 65
	ret
.L657:
	rep bsf	rsi, rsi
	lea	eax, [rsi+1]
	ret
.L659:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE146:
	.size	__ffsti2, .-__ffsti2
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB147:
	.cfi_startproc
	mov	rax, rdi
	test	sil, 32
	je	.L661
	shr	rdi, 32
	lea	ecx, [rsi-32]
	mov	eax, edi
	shr	eax, cl
	ret
.L661:
	test	esi, esi
	je	.L663
	mov	rdx, rdi
	shr	rdx, 32
	mov	r8d, edx
	mov	ecx, esi
	shr	r8d, cl
	mov	ecx, 32
	sub	ecx, esi
	sal	edx, cl
	mov	ecx, esi
	shr	edi, cl
	or	edx, edi
	sal	r8, 32
	mov	rax, r8
	or	rax, rdx
.L663:
	ret
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.globl	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	xchg	rdi, rsi
	mov	r10, rsi
	mov	r11, rdi
	test	dl, 64
	je	.L666
	mov	r8, rdi
	lea	ecx, [rdx-64]
	shr	r8, cl
	mov	r9d, 0
	jmp	.L667
.L666:
	test	edx, edx
	je	.L669
	mov	rax, rdi
	mov	ecx, edx
	shr	rdi, cl
	mov	r9, rdi
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r10, cl
	or	rax, r10
	mov	r8, rax
.L667:
	mov	rax, r8
	mov	rdx, r9
	ret
.L669:
	mov	rax, rsi
	mov	rdx, rdi
	ret
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	mov	ecx, esi
	movzx	r8d, di
	movzx	esi, si
	movabs	r9, -4294967296
	mov	eax, r8d
	imul	eax, esi
	mov	edx, eax
	shr	edx, 16
	movzx	eax, ax
	shr	edi, 16
	imul	esi, edi
	add	edx, esi
	mov	esi, edx
	sal	esi, 16
	shr	edx, 16
	sal	rdx, 32
	lea	eax, [rsi+rax]
	or	rax, rdx
	mov	edx, eax
	shr	edx, 16
	movzx	esi, ax
	and	rax, r9
	or	rax, rsi
	shr	ecx, 16
	imul	r8d, ecx
	add	edx, r8d
	mov	r8d, edx
	sal	r8d, 16
	lea	esi, [r8+rsi]
	and	rax, r9
	or	rax, rsi
	mov	rsi, rax
	sar	rsi, 32
	shr	edx, 16
	add	edx, esi
	sal	rdx, 32
	mov	eax, eax
	or	rax, rdx
	mov	rsi, rax
	sar	rsi, 32
	imul	edi, ecx
	mov	edx, edi
	add	edx, esi
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
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r14
	push	r13
	push	r12
	push	rbx
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	mov	r14, rdi
	mov	r12, rsi
	mov	ebx, esi
	mov	r13d, edi
	call	__muldsi3
	mov	rdx, rax
	sar	rdx, 32
	sar	r14, 32
	imul	ebx, r14d
	sar	r12, 32
	imul	r13d, r12d
	add	ebx, r13d
	add	ebx, edx
	sal	rbx, 32
	mov	eax, eax
	or	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.globl	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151:
	.cfi_startproc
	mov	rax, rdi
	mov	rcx, rsi
	mov	r8d, edi
	mov	r9d, esi
	mov	rdx, r8
	imul	rdx, r9
	mov	rsi, rdx
	shr	rdx, 32
	shr	rax, 32
	imul	r9, rax
	add	rdx, r9
	mov	esi, esi
	mov	rdi, rdx
	sal	rdi, 32
	add	rsi, rdi
	shr	rdx, 32
	mov	rdi, rdx
	mov	rdx, rsi
	shr	rdx, 32
	mov	r9d, esi
	shr	rcx, 32
	imul	r8, rcx
	add	rdx, r8
	mov	r8, rdx
	sal	r8, 32
	add	r8, r9
	mov	rsi, r8
	shr	rdx, 32
	add	rdx, rdi
	imul	rax, rcx
	add	rax, rdx
	mov	rdx, rax
	mov	rax, r8
	ret
	.cfi_endproc
.LFE151:
	.size	__mulddi3, .-__mulddi3
	.globl	__multi3
	.type	__multi3, @function
__multi3:
.LFB152:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 24
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	r15, rsi
	mov	r12, rdx
	mov	r13, rcx
	mov	rsi, rdx
	mov	QWORD PTR [rbp-56], rdi
	call	__mulddi3
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, r15
	imul	rdx, r12
	mov	rax, r13
	mov	rbx, QWORD PTR [rbp-56]
	imul	rax, rbx
	add	rdx, rax
	add	rdx, rdi
	mov	rax, rsi
	add	rsp, 24
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_def_cfa 7, 8
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
	mov	rax, rdi
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
.LFE155:
	.size	__paritydi2, .-__paritydi2
	.globl	__parityti2
	.type	__parityti2, @function
__parityti2:
.LFB156:
	.cfi_startproc
	xchg	rdi, rsi
	mov	rcx, rdi
	xor	rcx, rsi
	mov	rax, rcx
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
	mov	rdx, rdi
	shr	rdx
	movabs	rax, 6148914691236517205
	and	rdx, rax
	mov	rax, rdi
	sub	rax, rdx
	mov	rdx, rax
	shr	rdx, 2
	movabs	rcx, 3689348814741910323
	and	rdx, rcx
	and	rax, rcx
	add	rax, rdx
	mov	rdx, rax
	shr	rdx, 4
	add	rax, rdx
	movabs	rdx, 1085102592571150095
	and	rax, rdx
	mov	rsi, rax
	shr	rsi, 32
	mov	edx, esi
	add	edx, eax
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
	mov	edx, edi
	mov	eax, edi
	shr	eax, 2
	and	eax, 858993459
	and	edx, 858993459
	add	edx, eax
	mov	eax, edx
	shr	eax, 4
	add	edx, eax
	and	edx, 252645135
	mov	eax, edx
	shr	eax, 16
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
	mov	r8, rsi
	mov	r9, rdi
	shrd	r8, r9, 1
	shr	r9
	movabs	rax, 6148914691236517205
	and	r8, rax
	and	r9, rax
	mov	rax, rsi
	mov	rdx, rdi
	sub	rax, r8
	sbb	rdx, r9
	mov	r8, rax
	mov	r9, rdx
	shrd	r8, r9, 2
	shr	r9, 2
	movabs	rsi, 3689348814741910323
	and	r8, rsi
	and	r9, rsi
	and	rax, rsi
	and	rdx, rsi
	add	rax, r8
	adc	rdx, r9
	mov	rsi, rax
	mov	rdi, rdx
	shrd	rsi, rdi, 4
	shr	rdi, 4
	add	rsi, rax
	adc	rdi, rdx
	movabs	rax, 1085102592571150095
	mov	rdx, rax
	and	rax, rsi
	and	rdx, rdi
	mov	rcx, rax
	mov	rax, rdx
	add	rax, rcx
	mov	rcx, rax
	shr	rcx, 32
	mov	edx, ecx
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
	mov	eax, edi
	shr	eax, 31
	movsd	xmm1, QWORD PTR .LC14[rip]
.L685:
	test	dil, 1
	je	.L683
	mulsd	xmm1, xmm0
.L683:
	mov	edx, edi
	shr	edx, 31
	add	edi, edx
	sar	edi
	je	.L684
	mulsd	xmm0, xmm0
	jmp	.L685
.L684:
	test	eax, eax
	je	.L687
	movsd	xmm0, QWORD PTR .LC14[rip]
	divsd	xmm0, xmm1
	ret
.L687:
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
	mov	eax, edi
	shr	eax, 31
	movss	xmm1, DWORD PTR .LC16[rip]
.L691:
	test	dil, 1
	je	.L689
	mulss	xmm1, xmm0
.L689:
	mov	edx, edi
	shr	edx, 31
	add	edi, edx
	sar	edi
	je	.L690
	mulss	xmm0, xmm0
	jmp	.L691
.L690:
	test	eax, eax
	je	.L693
	movss	xmm0, DWORD PTR .LC16[rip]
	divss	xmm0, xmm1
	ret
.L693:
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
	mov	rax, rdi
	shr	rax, 32
	mov	edx, eax
	mov	rax, rsi
	shr	rax, 32
	cmp	edx, eax
	jb	.L696
	mov	rax, rdi
	shr	rax, 32
	mov	rcx, rsi
	shr	rcx, 32
	cmp	ecx, eax
	jb	.L697
	cmp	esi, edi
	ja	.L698
	jb	.L699
	mov	eax, 1
	ret
.L696:
	mov	eax, 0
	ret
.L697:
	mov	eax, 2
	ret
.L698:
	mov	eax, 0
	ret
.L699:
	mov	eax, 2
	ret
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2, .-__ucmpdi2
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	call	__ucmpdi2
	sub	eax, 1
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.globl	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
.LFB165:
	.cfi_startproc
	xchg	rdi, rsi
	mov	rax, rdx
	mov	rdx, rcx
	cmp	rdi, rcx
	jb	.L703
	cmp	rcx, rdi
	jb	.L704
	cmp	rsi, rax
	jb	.L705
	cmp	rax, rsi
	jb	.L706
	mov	ecx, 1
	jmp	.L702
.L703:
	mov	ecx, 0
	jmp	.L702
.L704:
	mov	ecx, 2
	jmp	.L702
.L705:
	mov	ecx, 0
	jmp	.L702
.L706:
	mov	ecx, 2
.L702:
	mov	eax, ecx
	ret
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,1
	.section	.rodata
	.align 4
.LC3:
	.long	-8388609
	.align 4
.LC4:
	.long	2139095039
	.align 8
.LC5:
	.long	-1
	.long	-1048577
	.align 8
.LC6:
	.long	-1
	.long	2146435071
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
	.align 4
.LC9:
	.long	1056964608
	.set	.LC10,.LC12+4
	.align 8
.LC11:
	.long	0
	.long	1071644672
	.align 8
.LC12:
	.long	0
	.long	1073741824
	.align 16
.LC13:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC14:
	.long	0
	.long	1072693248
	.align 4
.LC15:
	.long	1191182336
	.align 4
.LC16:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
