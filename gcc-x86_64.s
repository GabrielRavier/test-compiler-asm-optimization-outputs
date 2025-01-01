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
	jmp	.L19
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L20:
	add	rsi, 1
	add	rdi, 1
	sub	rcx, 1
	je	.L19
.L18:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rdi], r8b
	cmp	r8d, edx
	jne	.L20
	lea	rax, [rdi+1]
	ret
	.p2align 4,,10
	.p2align 3
.L19:
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
	jne	.L29
	jmp	.L32
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L31:
	add	rdi, 1
	sub	rdx, 1
	je	.L32
.L29:
	movzx	eax, BYTE PTR [rdi]
	cmp	eax, esi
	jne	.L31
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L32:
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
	jne	.L35
	jmp	.L39
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L37:
	add	rdi, 1
	add	rsi, 1
	sub	rdx, 1
	je	.L39
.L35:
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rdi], al
	je	.L37
	movzx	eax, BYTE PTR [rdi]
	movzx	edx, BYTE PTR [rsi]
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L39:
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
	je	.L48
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	call	memcpy
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L48:
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
	jmp	.L52
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L54:
	mov	rdx, rax
	sub	rax, 1
	movzx	ecx, BYTE PTR [rdx]
	cmp	ecx, esi
	je	.L51
.L52:
	cmp	rax, rdi
	jne	.L54
	xor	edx, edx
.L51:
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
	je	.L56
	lea	rdi, [rdi+rdx]
	and	edx, 1
	mov	rcx, rax
	je	.L57
	lea	rcx, [rax+1]
	mov	BYTE PTR [rax], sil
	cmp	rdi, rcx
	je	.L67
	.p2align 4
	.p2align 4
	.p2align 3
.L57:
	mov	BYTE PTR [rcx], sil
	add	rcx, 2
	mov	BYTE PTR [rcx-1], sil
	cmp	rdi, rcx
	jne	.L57
.L56:
	ret
.L67:
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
	je	.L69
	.p2align 5
	.p2align 4
	.p2align 3
.L70:
	movzx	edx, BYTE PTR [rsi+1]
	add	rsi, 1
	add	rax, 1
	mov	BYTE PTR [rax], dl
	test	dl, dl
	jne	.L70
.L69:
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
	jne	.L76
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L78:
	movzx	edx, BYTE PTR [rax+1]
	add	rax, 1
	test	dl, dl
	je	.L75
.L76:
	cmp	edx, esi
	jne	.L78
.L75:
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
	jmp	.L84
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L87:
	add	rax, 1
	test	cl, cl
	je	.L86
.L84:
	movsx	ecx, BYTE PTR [rax]
	cmp	ecx, esi
	jne	.L87
	ret
	.p2align 4,,10
	.p2align 3
.L86:
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
	je	.L89
	cmp	al, cl
	jne	.L89
	mov	edx, 1
	jmp	.L90
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L102:
	cmp	al, cl
	jne	.L89
.L90:
	movzx	eax, BYTE PTR [rdi+rdx]
	movzx	ecx, BYTE PTR [rsi+rdx]
	add	rdx, 1
	test	al, al
	jne	.L102
.L89:
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
	mov	rax, rdi
	je	.L104
	.p2align 4
	.p2align 4
	.p2align 3
.L105:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L105
.L104:
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
	xor	eax, eax
	test	rdx, rdx
	je	.L108
	movzx	eax, BYTE PTR [rdi]
	test	al, al
	je	.L110
	lea	r8, [rsi-1+rdx]
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L123:
	cmp	rsi, r8
	je	.L110
	movzx	eax, BYTE PTR [rdi+1]
	add	rdi, 1
	add	rsi, 1
	test	al, al
	je	.L110
.L111:
	movzx	edx, BYTE PTR [rsi]
	test	dl, dl
	setne	cl
	cmp	dl, al
	sete	dl
	test	cl, dl
	jne	.L123
.L110:
	movzx	edx, BYTE PTR [rsi]
	sub	eax, edx
.L108:
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
	jle	.L124
	and	rdx, -2
	add	rdx, rdi
	.p2align 5
	.p2align 4
	.p2align 3
.L126:
	movzx	eax, BYTE PTR [rdi+1]
	add	rdi, 2
	add	rsi, 2
	mov	BYTE PTR [rsi-2], al
	movzx	eax, BYTE PTR [rdi-2]
	mov	BYTE PTR [rsi-1], al
	cmp	rdi, rdx
	jne	.L126
.L124:
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
	jbe	.L140
	cmp	edi, 31
	jbe	.L140
	lea	edx, [rdi-8232]
	mov	eax, 1
	cmp	edx, 1
	jbe	.L138
	sub	edi, 65529
	xor	eax, eax
	cmp	edi, 2
	setbe	al
	ret
	.p2align 4,,10
	.p2align 3
.L140:
	mov	eax, 1
.L138:
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
	jbe	.L149
	lea	eax, [rdi-8234]
	cmp	eax, 47061
	jbe	.L146
	cmp	edi, 8231
	jbe	.L146
	lea	edx, [rdi-57344]
	mov	eax, 1
	cmp	edx, 8184
	jbe	.L143
	lea	edx, [rdi-65532]
	xor	eax, eax
	cmp	edx, 1048579
	ja	.L143
	not	edi
	xor	eax, eax
	and	edi, 65534
	setne	al
	ret
	.p2align 4,,10
	.p2align 3
.L146:
	mov	eax, 1
.L143:
	ret
	.p2align 4,,10
	.p2align 3
.L149:
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
	jbe	.L150
	or	edi, 32
	xor	eax, eax
	sub	edi, 97
	cmp	edi, 5
	setbe	al
.L150:
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
	jp	.L154
	ucomisd	xmm1, xmm1
	jp	.L158
	comisd	xmm0, xmm1
	jbe	.L161
	subsd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L161:
	pxor	xmm0, xmm0
.L154:
	ret
	.p2align 4,,10
	.p2align 3
.L158:
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
	jp	.L162
	ucomiss	xmm1, xmm1
	jp	.L166
	comiss	xmm0, xmm1
	jbe	.L169
	subss	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L169:
	pxor	xmm0, xmm0
.L162:
	ret
	.p2align 4,,10
	.p2align 3
.L166:
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
	jp	.L170
	ucomisd	xmm1, xmm1
	jp	.L176
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L172
	test	eax, eax
	jne	.L170
.L176:
	movapd	xmm1, xmm0
.L170:
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L172:
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
	jp	.L179
	ucomiss	xmm1, xmm1
	jp	.L185
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L181
	test	eax, eax
	jne	.L179
.L185:
	movaps	xmm1, xmm0
.L179:
	movaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L181:
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
	jp	.L193
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L196
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
	je	.L190
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L193:
	fstp	st(0)
	jmp	.L188
	.p2align 4,,10
	.p2align 3
.L196:
	fstp	st(0)
.L188:
	ret
	.p2align 4,,10
	.p2align 3
.L190:
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
	jp	.L202
	ucomisd	xmm1, xmm1
	jp	.L197
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L199
	test	eax, eax
	jne	.L197
.L202:
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L197:
	ret
	.p2align 4,,10
	.p2align 3
.L199:
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
	jp	.L211
	ucomiss	xmm1, xmm1
	jp	.L206
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L208
	test	eax, eax
	jne	.L206
.L211:
	movaps	xmm0, xmm1
.L206:
	ret
	.p2align 4,,10
	.p2align 3
.L208:
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
	jp	.L223
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L221
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
	je	.L217
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L221:
	fstp	st(0)
	jmp	.L215
	.p2align 4,,10
	.p2align 3
.L223:
	fstp	st(0)
.L215:
	ret
	.p2align 4,,10
	.p2align 3
.L217:
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
	je	.L225
	.p2align 5
	.p2align 4
	.p2align 3
.L226:
	mov	ecx, eax
	add	rdx, 1
	and	ecx, 63
	movzx	ecx, BYTE PTR digits[rcx]
	mov	BYTE PTR [rdx-1], cl
	shr	eax, 6
	jne	.L226
.L225:
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
	je	.L237
	mov	rax, QWORD PTR [rsi]
	mov	QWORD PTR [rdi+8], rsi
	mov	QWORD PTR [rdi], rax
	mov	QWORD PTR [rsi], rdi
	mov	rax, QWORD PTR [rdi]
	test	rax, rax
	je	.L231
	mov	QWORD PTR [rax+8], rdi
.L231:
	ret
	.p2align 4,,10
	.p2align 3
.L237:
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
	je	.L239
	mov	rdx, QWORD PTR [rdi+8]
	mov	QWORD PTR [rax+8], rdx
.L239:
	mov	rdx, QWORD PTR [rdi+8]
	test	rdx, rdx
	je	.L238
	mov	QWORD PTR [rdx], rax
.L238:
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
	je	.L248
	mov	r13, rsi
	xor	r15d, r15d
	jmp	.L250
	.p2align 4,,10
	.p2align 3
.L263:
	add	r15, 1
	add	r13, rbx
	cmp	rbp, r15
	je	.L248
.L250:
	mov	rax, QWORD PTR [rsp+8]
	mov	r14, r13
	mov	rsi, r13
	mov	rdi, r12
	call	rax
	test	eax, eax
	jne	.L263
.L247:
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
.L248:
	.cfi_restore_state
	lea	rax, [rbp+1]
	mov	rcx, QWORD PTR [rsp+24]
	mov	r14, QWORD PTR [rsp+16]
	imul	rbp, rbx
	mov	QWORD PTR [rcx], rax
	add	r14, rbp
	test	rbx, rbx
	je	.L247
	mov	rdx, rbx
	mov	rsi, r12
	mov	rdi, r14
	call	memmove
	jmp	.L247
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
	je	.L265
	mov	r13, rcx
	mov	r12, r8
	mov	rbx, rsi
	xor	ebp, ebp
	jmp	.L267
	.p2align 4,,10
	.p2align 3
.L276:
	add	rbp, 1
	add	rbx, r13
	cmp	r14, rbp
	je	.L265
.L267:
	mov	rdi, QWORD PTR [rsp+8]
	mov	r15, rbx
	mov	rsi, rbx
	call	r12
	test	eax, eax
	jne	.L276
.L264:
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
.L265:
	.cfi_restore_state
	xor	r15d, r15d
	jmp	.L264
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
	jmp	.L301
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L296:
	add	rdi, 1
.L301:
	movsx	eax, BYTE PTR [rdi]
	mov	edx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	.L296
	cmp	dl, 32
	je	.L296
	cmp	dl, 43
	je	.L282
	cmp	dl, 45
	jne	.L303
	movsx	eax, BYTE PTR [rdi+1]
	lea	rsi, [rdi+1]
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	ja	.L291
	mov	edi, 1
.L285:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L288:
	movsx	ecx, BYTE PTR [rsi+1]
	lea	eax, [rax+rax*4]
	sub	edx, 48
	add	rsi, 1
	movsx	edx, dl
	add	eax, eax
	sub	eax, edx
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L288
	test	edi, edi
	jne	.L278
.L286:
	neg	eax
	ret
	.p2align 4,,10
	.p2align 3
.L303:
	movsx	eax, BYTE PTR [rdi]
	mov	rsi, rdi
	xor	edi, edi
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L285
	xor	eax, eax
	jmp	.L286
.L291:
	xor	eax, eax
.L278:
	ret
	.p2align 4,,10
	.p2align 3
.L282:
	movsx	eax, BYTE PTR [rdi+1]
	lea	rsi, [rdi+1]
	xor	edi, edi
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L285
	xor	eax, eax
	jmp	.L286
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.p2align 4
	.globl	atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
	jmp	.L327
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L322:
	add	rdi, 1
.L327:
	movsx	eax, BYTE PTR [rdi]
	mov	edx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	.L322
	cmp	dl, 32
	je	.L322
	cmp	dl, 43
	je	.L308
	cmp	dl, 45
	jne	.L329
	movsx	eax, BYTE PTR [rdi+1]
	lea	rsi, [rdi+1]
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	ja	.L317
	mov	edi, 1
.L311:
	xor	eax, eax
	.p2align 6
	.p2align 4
	.p2align 3
.L314:
	movsx	ecx, BYTE PTR [rsi+1]
	lea	rax, [rax+rax*4]
	sub	edx, 48
	add	rsi, 1
	movsx	rdx, dl
	add	rax, rax
	sub	rax, rdx
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L314
	test	edi, edi
	jne	.L304
.L312:
	neg	rax
	ret
	.p2align 4,,10
	.p2align 3
.L329:
	movsx	eax, BYTE PTR [rdi]
	mov	rsi, rdi
	xor	edi, edi
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L311
	xor	eax, eax
	jmp	.L312
.L317:
	xor	eax, eax
.L304:
	ret
	.p2align 4,,10
	.p2align 3
.L308:
	movsx	eax, BYTE PTR [rdi+1]
	lea	rsi, [rdi+1]
	xor	edi, edi
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L311
	xor	eax, eax
	jmp	.L312
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
	je	.L332
	mov	r13, rsi
	mov	rbx, rdx
	mov	r12, rcx
	mov	r14, r8
	jmp	.L335
	.p2align 4,,10
	.p2align 3
.L342:
	jle	.L331
	sub	rbx, 1
	lea	r13, [rbp+0+r12]
	sub	rbx, r15
	test	rbx, rbx
	je	.L332
.L335:
	mov	r15, rbx
	mov	rdi, QWORD PTR [rsp+8]
	shr	r15
	mov	rbp, r15
	imul	rbp, r12
	add	rbp, r13
	mov	rsi, rbp
	call	r14
	test	eax, eax
	jns	.L342
	mov	rbx, r15
	test	rbx, rbx
	jne	.L335
.L332:
	xor	ebp, ebp
.L331:
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
	mov	QWORD PTR [rsp+8], r9
	test	edx, edx
	je	.L344
	mov	r15, rdi
	mov	r12, rsi
	mov	rbp, rcx
	mov	r14, r8
	mov	r13d, edx
	jmp	.L347
	.p2align 4,,10
	.p2align 3
.L353:
	jle	.L346
	lea	r12, [rbx+rbp]
	sub	r13d, 1
.L346:
	sar	r13d
	je	.L344
.L347:
	mov	ebx, r13d
	mov	rdx, QWORD PTR [rsp+8]
	mov	rdi, r15
	sar	ebx
	movsx	rbx, ebx
	imul	rbx, rbp
	add	rbx, r12
	mov	rsi, rbx
	call	r14
	test	eax, eax
	jne	.L353
.L343:
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
.L344:
	.cfi_restore_state
	xor	ebx, ebx
	jmp	.L343
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
	jne	.L376
	jmp	.L362
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L377:
	mov	edx, DWORD PTR [rax+4]
	add	rax, 4
	cmp	edx, esi
	je	.L362
.L376:
	test	edx, edx
	jne	.L377
.L362:
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
	je	.L379
	test	ecx, ecx
	je	.L379
	mov	eax, 4
	jmp	.L380
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L394:
	test	ecx, ecx
	je	.L379
.L380:
	mov	edx, DWORD PTR [rdi+rax]
	mov	ecx, DWORD PTR [rsi+rax]
	add	rax, 4
	test	edx, edx
	setne	r9b
	cmp	edx, ecx
	sete	r8b
	test	r9b, r8b
	jne	.L394
.L379:
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
.L396:
	mov	ecx, DWORD PTR [rsi+rdx]
	mov	DWORD PTR [rax+rdx], ecx
	add	rdx, 4
	test	ecx, ecx
	jne	.L396
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
	mov	rax, rdi
	test	ecx, ecx
	je	.L399
	.p2align 4
	.p2align 4
	.p2align 3
.L400:
	mov	edx, DWORD PTR [rax+4]
	add	rax, 4
	test	edx, edx
	jne	.L400
.L399:
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
	jne	.L404
	jmp	.L410
	.p2align 4,,10
	.p2align 3
.L415:
	test	ecx, ecx
	je	.L408
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	je	.L410
.L404:
	mov	eax, DWORD PTR [rdi]
	mov	ecx, DWORD PTR [rsi]
	test	eax, eax
	setne	r8b
	cmp	eax, ecx
	sete	al
	test	r8b, al
	jne	.L415
.L408:
	mov	eax, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], eax
	mov	edx, -1
	setg	al
	movzx	eax, al
	cmovl	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L410:
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
	jne	.L417
	jmp	.L420
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L419:
	add	rdi, 4
	sub	rdx, 1
	je	.L420
.L417:
	cmp	DWORD PTR [rdi], esi
	jne	.L419
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L420:
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
	jne	.L423
	jmp	.L428
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L425:
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	je	.L428
.L423:
	mov	eax, DWORD PTR [rdi]
	cmp	eax, DWORD PTR [rsi]
	je	.L425
	cmp	eax, DWORD PTR [rsi]
	mov	edx, -1
	setg	al
	movzx	eax, al
	cmovl	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L428:
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
	je	.L437
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	sal	rdx, 2
	call	memcpy
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L437:
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
	je	.L441
	sub	rdi, rsi
	lea	rcx, [0+rdx*4]
	cmp	rdi, rcx
	jnb	.L452
	test	rdx, rdx
	je	.L441
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
.L452:
	xor	ecx, ecx
	test	rdx, rdx
	je	.L453
	.p2align 4
	.p2align 4
	.p2align 3
.L443:
	mov	edi, DWORD PTR [rsi+rcx*4]
	mov	DWORD PTR [rax+rcx*4], edi
	add	rcx, 1
	cmp	rcx, rdx
	jne	.L443
.L441:
	ret
	.p2align 4,,10
	.p2align 3
.L453:
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
	je	.L455
	xor	ecx, ecx
	test	dl, 1
	je	.L456
	mov	ecx, 1
	mov	DWORD PTR [rdi], esi
	cmp	rcx, rdx
	je	.L466
	.p2align 4
	.p2align 4
	.p2align 3
.L456:
	mov	DWORD PTR [rax+rcx*4], esi
	mov	DWORD PTR [rax+4+rcx*4], esi
	add	rcx, 2
	cmp	rcx, rdx
	jne	.L456
.L455:
	ret
.L466:
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
	jnb	.L468
	test	rdx, rdx
	je	.L467
	.p2align 4
	.p2align 4
	.p2align 3
.L470:
	movzx	eax, BYTE PTR [rdi-1+rdx]
	mov	BYTE PTR [rsi-1+rdx], al
	sub	rdx, 1
	jne	.L470
	ret
	.p2align 4,,10
	.p2align 3
.L468:
	je	.L467
	test	rdx, rdx
	je	.L467
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L471:
	movzx	ecx, BYTE PTR [rdi+rax]
	mov	BYTE PTR [rsi+rax], cl
	add	rax, 1
	cmp	rax, rdx
	jne	.L471
.L467:
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
	jmp	.L496
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L494:
	cmp	ecx, 32
	je	.L498
.L496:
	mov	eax, edi
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L494
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L498:
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
	je	.L499
	mov	eax, edi
	and	eax, 1
	jne	.L499
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L501:
	sar	edi
	add	eax, 1
	test	dil, 1
	je	.L501
.L499:
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
	ja	.L506
	xor	eax, eax
	comiss	xmm0, DWORD PTR .LC4[rip]
	seta	al
.L506:
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
	ja	.L509
	xor	eax, eax
	comisd	xmm0, QWORD PTR .LC6[rip]
	seta	al
.L509:
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
	ja	.L515
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L512
	.p2align 4,,10
	.p2align 3
.L515:
	fstp	st(0)
.L512:
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
	jp	.L518
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm1, xmm0
	jp	.L525
	jne	.L525
.L518:
	ret
	.p2align 4,,10
	.p2align 3
.L525:
	movss	xmm1, DWORD PTR .LC9[rip]
	test	edi, edi
	jns	.L520
	movss	xmm1, DWORD PTR .LC10[rip]
.L520:
	test	dil, 1
	je	.L521
	.p2align 4
	.p2align 3
.L522:
	mulss	xmm0, xmm1
.L521:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L518
	mulss	xmm1, xmm1
	test	dil, 1
	jne	.L522
.L532:
	mulss	xmm1, xmm1
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	test	dil, 1
	jne	.L522
	jmp	.L532
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
	jp	.L534
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm1, xmm0
	jp	.L541
	jne	.L541
.L534:
	ret
	.p2align 4,,10
	.p2align 3
.L541:
	movsd	xmm1, QWORD PTR .LC11[rip]
	test	edi, edi
	jns	.L536
	movsd	xmm1, QWORD PTR .LC12[rip]
.L536:
	test	dil, 1
	je	.L537
	.p2align 4
	.p2align 3
.L538:
	mulsd	xmm0, xmm1
.L537:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L534
	mulsd	xmm1, xmm1
	test	dil, 1
	jne	.L538
.L548:
	mulsd	xmm1, xmm1
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	test	dil, 1
	jne	.L538
	jmp	.L548
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
	jp	.L550
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L557
	jne	.L557
	jmp	.L550
	.p2align 4,,10
	.p2align 3
.L566:
	fstp	st(0)
.L550:
	ret
	.p2align 4,,10
	.p2align 3
.L557:
	test	edi, edi
	js	.L564
	fld	DWORD PTR .LC9[rip]
.L552:
	test	dil, 1
	je	.L553
	.p2align 4
	.p2align 3
.L554:
	fmul	st(1), st
.L553:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L566
	fmul	st, st(0)
	test	dil, 1
	jne	.L554
.L565:
	mov	eax, edi
	fmul	st, st(0)
	shr	eax, 31
	add	edi, eax
	sar	edi
	test	dil, 1
	jne	.L554
	jmp	.L565
	.p2align 4,,10
	.p2align 3
.L564:
	fld	DWORD PTR .LC10[rip]
	jmp	.L552
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
	je	.L568
	add	rdx, rsi
	mov	rcx, rdi
	.p2align 5
	.p2align 4
	.p2align 3
.L569:
	add	rsi, 1
	add	rcx, 1
	movzx	r8d, BYTE PTR [rsi-1]
	xor	BYTE PTR [rcx-1], r8b
	cmp	rdx, rsi
	jne	.L569
.L568:
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
	je	.L575
	.p2align 4
	.p2align 4
	.p2align 3
.L576:
	add	rcx, 1
	cmp	BYTE PTR [rcx], 0
	jne	.L576
.L575:
	test	rdx, rdx
	jne	.L577
	jmp	.L578
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L579:
	add	rsi, 1
	add	rcx, 1
	sub	rdx, 1
	je	.L578
.L577:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rcx], r8b
	test	r8b, r8b
	jne	.L579
	ret
	.p2align 4,,10
	.p2align 3
.L578:
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
	je	.L595
.L588:
	cmp	BYTE PTR [rdi+rax], 0
	jne	.L590
	ret
	.p2align 4,,10
	.p2align 3
.L590:
	add	rax, 1
	cmp	rsi, rax
	jne	.L588
	ret
	.p2align 4,,10
	.p2align 3
.L595:
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
	je	.L601
.L597:
	mov	rdx, rsi
	jmp	.L600
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L599:
	add	rdx, 1
	cmp	cl, r8b
	je	.L598
.L600:
	movzx	ecx, BYTE PTR [rdx]
	test	cl, cl
	jne	.L599
	movzx	r8d, BYTE PTR [rax+1]
	add	rax, 1
	test	r8b, r8b
	jne	.L597
.L601:
	xor	eax, eax
.L598:
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
.L605:
	movsx	ecx, BYTE PTR [rdi]
	cmp	esi, ecx
	cmove	rdx, rdi
	add	rdi, 1
	test	cl, cl
	jne	.L605
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
	je	.L619
	mov	rdx, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L609:
	add	rdx, 1
	cmp	BYTE PTR [rdx], 0
	jne	.L609
	mov	rcx, rax
	sub	rdx, rsi
	je	.L607
	lea	r11, [rsi-1+rdx]
	jmp	.L616
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L630:
	add	rax, 1
	test	dl, dl
	je	.L629
.L616:
	movzx	edx, BYTE PTR [rax]
	cmp	dl, r10b
	jne	.L630
	mov	ecx, r10d
	mov	rdx, rsi
	mov	rdi, rax
	jmp	.L611
	.p2align 4,,10
	.p2align 3
.L631:
	test	r8b, r8b
	setne	r9b
	cmp	r8b, cl
	sete	r8b
	test	r9b, r8b
	je	.L612
	movzx	ecx, BYTE PTR [rdi+1]
	add	rdi, 1
	add	rdx, 1
	test	cl, cl
	je	.L612
.L611:
	movzx	r8d, BYTE PTR [rdx]
	cmp	rdx, r11
	jne	.L631
.L612:
	cmp	BYTE PTR [rdx], cl
	je	.L619
	add	rax, 1
	jmp	.L616
	.p2align 4,,10
	.p2align 3
.L629:
	xor	ecx, ecx
.L607:
	mov	rax, rcx
	ret
.L619:
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
	ja	.L642
	comisd	xmm0, xmm2
	jbe	.L636
	comisd	xmm2, xmm1
	ja	.L635
.L636:
	ret
	.p2align 4,,10
	.p2align 3
.L642:
	comisd	xmm1, xmm2
	jbe	.L636
.L635:
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
	je	.L643
	cmp	rsi, rcx
	jb	.L651
	sub	rsi, rcx
	add	rsi, rdi
	jc	.L651
	movzx	r9d, BYTE PTR [rdx]
	jmp	.L648
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L645:
	cmp	rsi, rdi
	jb	.L651
.L648:
	movzx	eax, BYTE PTR [rdi]
	mov	r8, rdi
	add	rdi, 1
	cmp	al, r9b
	jne	.L645
	cmp	rcx, 1
	je	.L643
	mov	eax, 1
	.p2align 5
	.p2align 4
	.p2align 3
.L646:
	movzx	r10d, BYTE PTR [rdx+rax]
	cmp	BYTE PTR [r8+rax], r10b
	jne	.L645
	add	rax, 1
	cmp	rcx, rax
	jne	.L646
.L643:
	mov	rax, r8
	ret
	.p2align 4,,10
	.p2align 3
.L651:
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
	je	.L656
	call	memmove
	mov	rdi, rax
.L656:
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
	ja	.L685
	movsd	xmm2, QWORD PTR .LC16[rip]
	xor	edx, edx
	comisd	xmm0, xmm2
	jb	.L686
.L664:
	movsd	xmm1, QWORD PTR .LC12[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L671:
	mulsd	xmm0, xmm1
	add	eax, 1
	comisd	xmm0, xmm2
	jnb	.L671
	mov	DWORD PTR [rdi], eax
	movapd	xmm1, xmm0
	test	edx, edx
	je	.L661
.L688:
	movq	xmm1, QWORD PTR .LC13[rip]
.L666:
	xorpd	xmm1, xmm0
.L661:
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L686:
	movsd	xmm1, QWORD PTR .LC12[rip]
	comisd	xmm1, xmm0
	jbe	.L667
	ucomisd	xmm0, xmm3
	jp	.L677
	jne	.L677
.L667:
	movapd	xmm1, xmm0
	mov	DWORD PTR [rdi], 0
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L685:
	movsd	xmm3, QWORD PTR .LC14[rip]
	movq	xmm1, QWORD PTR .LC13[rip]
	movapd	xmm2, xmm0
	comisd	xmm3, xmm0
	xorpd	xmm2, xmm1
	jb	.L687
	movapd	xmm0, xmm2
	mov	edx, 1
	movsd	xmm2, QWORD PTR .LC16[rip]
	jmp	.L664
	.p2align 4,,10
	.p2align 3
.L687:
	comisd	xmm0, QWORD PTR .LC15[rip]
	ja	.L675
	mov	DWORD PTR [rdi], 0
	movapd	xmm0, xmm2
	jmp	.L666
	.p2align 4,,10
	.p2align 3
.L675:
	movsd	xmm1, QWORD PTR .LC12[rip]
	mov	edx, 1
.L665:
	movapd	xmm0, xmm2
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L673:
	addsd	xmm0, xmm0
	sub	eax, 1
	comisd	xmm1, xmm0
	ja	.L673
	mov	DWORD PTR [rdi], eax
	movapd	xmm1, xmm0
	test	edx, edx
	jne	.L688
	jmp	.L661
.L677:
	movapd	xmm2, xmm0
	xor	edx, edx
	jmp	.L665
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
	je	.L689
	.p2align 5
	.p2align 4
	.p2align 3
.L691:
	mov	rax, rdi
	and	eax, 1
	neg	rax
	and	rax, rsi
	add	rsi, rsi
	add	rdx, rax
	shr	rdi
	jne	.L691
.L689:
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
	jb	.L695
	jmp	.L696
	.p2align 4,,10
	.p2align 3
.L698:
	add	esi, esi
	add	eax, eax
	cmp	esi, edi
	jnb	.L697
	test	eax, eax
	je	.L697
.L695:
	test	esi, esi
	jns	.L698
.L696:
	xor	ecx, ecx
	.p2align 4
	.p2align 4
	.p2align 3
.L701:
	cmp	edi, esi
	jb	.L700
	sub	edi, esi
	or	ecx, eax
.L700:
	shr	esi
	shr	eax
	jne	.L701
	test	rdx, rdx
	cmovne	ecx, edi
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L697:
	xor	ecx, ecx
	test	eax, eax
	jne	.L696
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
	je	.L716
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	ecx, [rax-1]
.L716:
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
	je	.L719
	bsr	rax, rax
	xor	rax, 63
	lea	ecx, [rax-1]
.L719:
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
	je	.L722
	.p2align 5
	.p2align 4
	.p2align 3
.L724:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L724
.L722:
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
	jb	.L728
	mov	r8d, edx
	add	r8, rsi
	cmp	r8, rdi
	jnb	.L742
.L728:
	test	ecx, ecx
	je	.L731
	lea	r9d, [0+rcx*8]
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L732:
	mov	r8, QWORD PTR [rsi+rcx]
	mov	QWORD PTR [rdi+rcx], r8
	add	rcx, 8
	cmp	r9, rcx
	jne	.L732
.L731:
	cmp	eax, edx
	jnb	.L727
	.p2align 4
	.p2align 4
	.p2align 3
.L733:
	movzx	ecx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], cl
	add	rax, 1
	cmp	eax, edx
	jb	.L733
	ret
	.p2align 4,,10
	.p2align 3
.L742:
	lea	eax, [rdx-1]
	test	edx, edx
	je	.L743
	.p2align 4
	.p2align 4
	.p2align 3
.L734:
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], dl
	sub	rax, 1
	jnb	.L734
.L727:
	ret
.L743:
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
	jb	.L745
	mov	edi, edx
	add	rdi, rsi
	cmp	rdi, rcx
	jnb	.L760
.L745:
	test	eax, eax
	je	.L748
	lea	r8d, [rax+rax]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L749:
	movzx	edi, WORD PTR [rsi+rax]
	mov	WORD PTR [rcx+rax], di
	add	rax, 2
	cmp	r8, rax
	jne	.L749
.L748:
	test	dl, 1
	je	.L744
	lea	eax, [rdx-1]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	ret
	.p2align 4,,10
	.p2align 3
.L760:
	lea	eax, [rdx-1]
	test	edx, edx
	je	.L761
	.p2align 4
	.p2align 4
	.p2align 3
.L750:
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	jnb	.L750
.L744:
	ret
.L761:
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
	jb	.L763
	mov	r8d, edx
	add	r8, rsi
	cmp	r8, rdi
	jnb	.L777
.L763:
	test	ecx, ecx
	je	.L766
	lea	r9d, [0+rcx*4]
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L767:
	mov	r8d, DWORD PTR [rsi+rcx]
	mov	DWORD PTR [rdi+rcx], r8d
	add	rcx, 4
	cmp	r9, rcx
	jne	.L767
.L766:
	cmp	eax, edx
	jnb	.L762
	.p2align 4
	.p2align 4
	.p2align 3
.L768:
	movzx	ecx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], cl
	add	rax, 1
	cmp	eax, edx
	jb	.L768
	ret
	.p2align 4,,10
	.p2align 3
.L777:
	lea	eax, [rdx-1]
	test	edx, edx
	je	.L778
	.p2align 4
	.p2align 4
	.p2align 3
.L769:
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], dl
	sub	rax, 1
	jnb	.L769
.L762:
	ret
.L778:
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
	js	.L787
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L787:
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
	js	.L790
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L790:
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
	xor	eax, eax
	movzx	edi, di
	mov	ecx, 15
	.p2align 5
	.p2align 4
	.p2align 3
.L795:
	mov	edx, ecx
	sub	edx, eax
	bt	edi, edx
	jc	.L793
	add	eax, 1
	cmp	eax, 16
	jne	.L795
.L793:
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
	xor	eax, eax
	movzx	edi, di
	.p2align 4
	.p2align 4
	.p2align 3
.L799:
	bt	edi, eax
	jc	.L797
	add	eax, 1
	cmp	eax, 16
	jne	.L799
.L797:
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
	jnb	.L807
	cvttss2si	rax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L807:
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
	xor	eax, eax
	xor	ecx, ecx
	movzx	edi, di
	.p2align 5
	.p2align 4
	.p2align 3
.L809:
	mov	edx, edi
	sar	edx, cl
	add	ecx, 1
	and	edx, 1
	add	eax, edx
	cmp	ecx, 16
	jne	.L809
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
	xor	edx, edx
	xor	ecx, ecx
	movzx	edi, di
	.p2align 5
	.p2align 4
	.p2align 3
.L812:
	mov	eax, edi
	sar	eax, cl
	add	ecx, 1
	and	eax, 1
	add	edx, eax
	cmp	ecx, 16
	jne	.L812
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
	je	.L814
	.p2align 5
	.p2align 4
	.p2align 3
.L816:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L816
.L814:
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
	je	.L819
	test	esi, esi
	je	.L819
	.p2align 5
	.p2align 4
	.p2align 3
.L821:
	mov	eax, esi
	and	eax, 1
	neg	eax
	and	eax, edi
	add	edi, edi
	add	edx, eax
	shr	esi
	jne	.L821
.L819:
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
	jb	.L827
	jmp	.L828
	.p2align 4,,10
	.p2align 3
.L830:
	add	esi, esi
	add	eax, eax
	cmp	esi, edi
	jnb	.L829
	test	eax, eax
	je	.L829
.L827:
	test	esi, esi
	jns	.L830
.L828:
	xor	ecx, ecx
	.p2align 4
	.p2align 4
	.p2align 3
.L833:
	cmp	edi, esi
	jb	.L832
	sub	edi, esi
	or	ecx, eax
.L832:
	shr	esi
	shr	eax
	jne	.L833
	test	edx, edx
	cmovne	ecx, edi
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L829:
	xor	ecx, ecx
	test	eax, eax
	jne	.L828
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
	ja	.L848
	xor	eax, eax
	comiss	xmm0, xmm1
	seta	al
.L848:
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
	ja	.L851
	xor	eax, eax
	comisd	xmm0, xmm1
	seta	al
.L851:
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
	js	.L865
	je	.L861
	xor	r9d, r9d
.L858:
	mov	edx, 1
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L860:
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
	jne	.L860
	mov	eax, ecx
	neg	eax
	test	r9d, r9d
	cmovne	ecx, eax
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L865:
	neg	esi
	mov	r9d, 1
	jmp	.L858
	.p2align 4,,10
	.p2align 3
.L861:
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
	jns	.L867
	neg	rdi
	mov	r9d, 1
.L867:
	test	rsi, rsi
	jns	.L868
	neg	rsi
	xor	r9d, 1
.L868:
	mov	edx, esi
	mov	r8d, edi
	mov	ecx, 1
	cmp	esi, edi
	jb	.L869
	jmp	.L870
	.p2align 4,,10
	.p2align 3
.L872:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, r8d
	jnb	.L871
	test	ecx, ecx
	je	.L871
.L869:
	test	edx, edx
	jns	.L872
.L870:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L875:
	cmp	r8d, edx
	jb	.L874
	sub	r8d, edx
	or	eax, ecx
.L874:
	shr	edx
	shr	ecx
	jne	.L875
	mov	rdx, rax
	neg	rdx
	test	r9d, r9d
	cmovne	rax, rdx
	ret
	.p2align 4,,10
	.p2align 3
.L871:
	xor	eax, eax
	test	ecx, ecx
	jne	.L870
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
	jns	.L893
	neg	rdi
	mov	r8d, 1
.L893:
	mov	rax, rsi
	mov	ecx, 1
	neg	rax
	cmovns	rsi, rax
	mov	eax, edi
	mov	edx, esi
	cmp	esi, edi
	jb	.L894
	jmp	.L900
	.p2align 4,,10
	.p2align 3
.L898:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jnb	.L904
	test	ecx, ecx
	je	.L897
.L894:
	test	edx, edx
	jns	.L898
	.p2align 4
	.p2align 4
	.p2align 3
.L900:
	mov	esi, eax
	sub	esi, edx
	cmp	eax, edx
	cmovnb	rax, rsi
	shr	edx
	shr	ecx
	jne	.L900
.L897:
	mov	rdx, rax
	neg	rdx
	test	r8d, r8d
	cmovne	rax, rdx
	ret
	.p2align 4,,10
	.p2align 3
.L904:
	test	ecx, ecx
	je	.L897
	mov	esi, eax
	sub	esi, edx
	cmp	eax, edx
	cmovnb	rax, rsi
	shr	edx
	shr	ecx
	jne	.L900
	jmp	.L897
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
	jb	.L915
	jmp	.L916
	.p2align 4,,10
	.p2align 3
.L918:
	add	eax, eax
	add	ecx, ecx
	cmp	ax, r8w
	jnb	.L917
	test	cx, cx
	je	.L917
.L915:
	test	ax, ax
	jns	.L918
.L916:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L921:
	cmp	r8w, ax
	jb	.L920
	sub	r8d, eax
	or	esi, ecx
.L920:
	shr	ax
	shr	cx
	jne	.L921
	test	edx, edx
	cmovne	esi, r8d
	mov	eax, esi
	ret
	.p2align 4,,10
	.p2align 3
.L917:
	xor	esi, esi
	test	cx, cx
	jne	.L916
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
	jb	.L937
	jmp	.L938
	.p2align 4,,10
	.p2align 3
.L940:
	add	rsi, rsi
	add	rax, rax
	cmp	rsi, rdi
	jnb	.L939
	test	rax, rax
	je	.L939
.L937:
	test	esi, 2147483648
	je	.L940
.L938:
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L943:
	cmp	rdi, rsi
	jb	.L942
	sub	rdi, rsi
	or	rcx, rax
.L942:
	shr	rsi
	shr	rax
	jne	.L943
	test	edx, edx
	cmovne	rcx, rdi
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L939:
	xor	ecx, ecx
	test	rax, rax
	jne	.L938
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
	je	.L959
	lea	ecx, [rsi-32]
	xor	eax, eax
	sal	edi, cl
.L960:
	sal	rdi, 32
	or	rax, rdi
.L958:
	ret
	.p2align 4,,10
	.p2align 3
.L959:
	mov	rax, rdi
	test	esi, esi
	je	.L958
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
	jmp	.L960
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
	je	.L965
	lea	ecx, [rdx-64]
	xor	eax, eax
	sal	rdi, cl
	mov	rdx, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L965:
	mov	rax, rdi
	test	edx, edx
	je	.L968
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
.L968:
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
	je	.L970
	sar	rdi, 32
	lea	ecx, [rsi-32]
	mov	eax, edi
	sar	edi, cl
	sar	eax, 31
.L971:
	sal	rax, 32
	or	rax, rdi
.L969:
	ret
	.p2align 4,,10
	.p2align 3
.L970:
	mov	rax, rdi
	test	esi, esi
	je	.L969
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
	jmp	.L971
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
	je	.L976
	lea	ecx, [rdx-64]
	mov	r8, rsi
	sar	r8, 63
	sar	rsi, cl
	mov	rax, rsi
	mov	rdx, r8
	ret
	.p2align 4,,10
	.p2align 3
.L976:
	test	edx, edx
	je	.L979
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
.L979:
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
	jl	.L984
	mov	eax, 2
	jg	.L984
	xor	eax, eax
	cmp	edi, esi
	jb	.L984
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L984:
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
	xor	eax, eax
	sar	rcx, 32
	sar	rdx, 32
	cmp	ecx, edx
	jl	.L991
	mov	eax, 2
	jg	.L991
	xor	eax, eax
	cmp	edi, esi
	jb	.L991
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L991:
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
	xor	eax, eax
	cmp	rsi, rcx
	jl	.L996
	mov	eax, 2
	jg	.L996
	xor	eax, eax
	cmp	rdi, rdx
	jb	.L996
	xor	eax, eax
	cmp	rdx, rdi
	setb	al
	add	eax, 1
.L996:
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
	jne	.L1005
	xor	eax, eax
	xor	edx, edx
	rep bsf	rax, rsi
	add	eax, 65
	test	rsi, rsi
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1005:
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
	je	.L1009
	shr	rdi, 32
	lea	ecx, [rsi-32]
	xor	eax, eax
	shr	edi, cl
.L1010:
	sal	rax, 32
	or	rax, rdi
.L1008:
	ret
	.p2align 4,,10
	.p2align 3
.L1009:
	mov	rax, rdi
	test	esi, esi
	je	.L1008
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
	jmp	.L1010
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
	je	.L1015
	lea	ecx, [rdx-64]
	xor	r8d, r8d
	shr	rsi, cl
	mov	rdx, r8
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1015:
	test	edx, edx
	je	.L1018
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
.L1018:
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
	je	.L1033
	.p2align 4
	.p2align 3
.L1035:
	mulsd	xmm1, xmm0
.L1033:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1034
	mulsd	xmm0, xmm0
	test	al, 1
	jne	.L1035
.L1039:
	mulsd	xmm0, xmm0
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1035
	jmp	.L1039
	.p2align 4,,10
	.p2align 3
.L1034:
	test	edi, edi
	jns	.L1032
	divsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L1032:
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
	je	.L1041
	.p2align 4
	.p2align 3
.L1043:
	mulss	xmm1, xmm0
.L1041:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1042
	mulss	xmm0, xmm0
	test	al, 1
	jne	.L1043
.L1047:
	mulss	xmm0, xmm0
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1043
	jmp	.L1047
	.p2align 4,,10
	.p2align 3
.L1042:
	test	edi, edi
	jns	.L1040
	divss	xmm2, xmm1
	movaps	xmm1, xmm2
.L1040:
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
	jb	.L1048
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1048
	xor	eax, eax
	cmp	edi, esi
	jb	.L1048
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L1048:
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
	xor	eax, eax
	shr	rdx, 32
	shr	rcx, 32
	cmp	edx, ecx
	jb	.L1055
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1055
	xor	eax, eax
	cmp	edi, esi
	jb	.L1055
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L1055:
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
