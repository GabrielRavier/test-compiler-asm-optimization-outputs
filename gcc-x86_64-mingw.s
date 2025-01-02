	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	make_ti
	.def	make_ti;	.scl	2;	.type	32;	.endef
	.seh_proc	make_ti
make_ti:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	xor	r10d, r10d
	mov	QWORD PTR 8[rsp], rcx
	mov	r9, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], r10
	mov	QWORD PTR 8[rsp], r9
	mov	QWORD PTR [rsp], rdx
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.p2align 4
	.globl	make_tu
	.def	make_tu;	.scl	2;	.type	32;	.endef
	.seh_proc	make_tu
make_tu:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	xor	r10d, r10d
	mov	QWORD PTR 8[rsp], rcx
	mov	r9, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], r10
	mov	QWORD PTR 8[rsp], r9
	mov	QWORD PTR [rsp], rdx
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.p2align 4
	.globl	memmove
	.def	memmove;	.scl	2;	.type	32;	.endef
	.seh_proc	memmove
memmove:
	.seh_endprologue
	mov	rax, rcx
	cmp	rdx, rcx
	jnb	.L5
	test	r8, r8
	je	.L6
	.p2align 5
	.p2align 4
	.p2align 3
.L7:
	movzx	ecx, BYTE PTR -1[rdx+r8]
	mov	BYTE PTR -1[rax+r8], cl
	sub	r8, 1
	jne	.L7
.L6:
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	cmp	rcx, rdx
	je	.L6
	test	r8, r8
	je	.L6
	xor	r9d, r9d
	.p2align 5
	.p2align 4
	.p2align 3
.L8:
	movzx	ecx, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rax+r9], cl
	add	r9, 1
	cmp	r9, r8
	jne	.L8
	ret
	.seh_endproc
	.p2align 4
	.globl	memccpy
	.def	memccpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memccpy
memccpy:
	.seh_endprologue
	movzx	r8d, r8b
	test	r9, r9
	jne	.L18
	jmp	.L20
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L21:
	add	rdx, 1
	add	rcx, 1
	sub	r9, 1
	je	.L20
.L18:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [rcx], r10b
	cmp	r10d, r8d
	jne	.L21
	lea	rax, 1[rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	memchr
	.def	memchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memchr
memchr:
	.seh_endprologue
	movzx	edx, dl
	test	r8, r8
	jne	.L28
	jmp	.L31
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L30:
	add	rcx, 1
	sub	r8, 1
	je	.L31
.L28:
	movzx	eax, BYTE PTR [rcx]
	cmp	eax, edx
	jne	.L30
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L31:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	memcmp
	.def	memcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	memcmp
memcmp:
	.seh_endprologue
	test	r8, r8
	jne	.L34
	jmp	.L38
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L36:
	add	rcx, 1
	add	rdx, 1
	sub	r8, 1
	je	.L38
.L34:
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	je	.L36
	movzx	eax, BYTE PTR [rcx]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L38:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	memcpy
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memcpy
memcpy:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	test	r8, r8
	je	.L42
	call	memcpy
	mov	rcx, rax
.L42:
	mov	rax, rcx
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	memrchr
	.def	memrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memrchr
memrchr:
	.seh_endprologue
	lea	rax, -1[rcx+r8]
	movzx	edx, dl
	sub	rcx, 1
	jmp	.L47
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L49:
	mov	r8, rax
	sub	rax, 1
	movzx	r9d, BYTE PTR [r8]
	cmp	r9d, edx
	je	.L46
.L47:
	cmp	rax, rcx
	jne	.L49
	xor	r8d, r8d
.L46:
	mov	rax, r8
	ret
	.seh_endproc
	.p2align 4
	.globl	memset
	.def	memset;	.scl	2;	.type	32;	.endef
	.seh_proc	memset
memset:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	test	r8, r8
	je	.L53
	movzx	edx, dl
	call	memset
	mov	rcx, rax
.L53:
	mov	rax, rcx
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	stpcpy
	.def	stpcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	stpcpy
stpcpy:
	.seh_endprologue
	mov	rax, rcx
	movzx	ecx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], cl
	test	cl, cl
	je	.L55
	.p2align 5
	.p2align 4
	.p2align 3
.L56:
	movzx	ecx, BYTE PTR 1[rdx]
	add	rdx, 1
	add	rax, 1
	mov	BYTE PTR [rax], cl
	test	cl, cl
	jne	.L56
.L55:
	ret
	.seh_endproc
	.p2align 4
	.globl	strchrnul
	.def	strchrnul;	.scl	2;	.type	32;	.endef
	.seh_proc	strchrnul
strchrnul:
	.seh_endprologue
	movzx	r8d, BYTE PTR [rcx]
	mov	rax, rcx
	movzx	edx, dl
	test	r8b, r8b
	jne	.L62
	jmp	.L61
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L64:
	movzx	r8d, BYTE PTR 1[rax]
	add	rax, 1
	test	r8b, r8b
	je	.L61
.L62:
	cmp	r8d, edx
	jne	.L64
.L61:
	ret
	.seh_endproc
	.p2align 4
	.globl	strchr
	.def	strchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strchr
strchr:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L70
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L73:
	add	rax, 1
	test	r8b, r8b
	je	.L72
.L70:
	movsx	r8d, BYTE PTR [rax]
	cmp	r8d, edx
	jne	.L73
	ret
	.p2align 4,,10
	.p2align 3
.L72:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	strcmp
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strcmp
strcmp:
	.seh_endprologue
	mov	eax, 1
	movzx	r8d, BYTE PTR [rcx]
	movzx	r9d, BYTE PTR [rdx]
	cmp	r8b, r9b
	je	.L75
	jmp	.L81
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L77:
	movzx	r8d, BYTE PTR [rcx+rax]
	add	rax, 1
	movzx	r9d, BYTE PTR -1[rdx+rax]
	cmp	r8b, r9b
	jne	.L81
.L75:
	test	r8b, r8b
	jne	.L77
	xor	eax, eax
	sub	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L81:
	movzx	eax, r8b
	sub	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	strlen
	.def	strlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strlen
strlen:
	.seh_endprologue
	cmp	BYTE PTR [rcx], 0
	je	.L85
	mov	rax, rcx
	.p2align 4
	.p2align 4
	.p2align 3
.L84:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L84
	sub	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L85:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	strncmp
	.def	strncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strncmp
strncmp:
	.seh_endprologue
	xor	eax, eax
	mov	r9, rcx
	test	r8, r8
	je	.L87
	movzx	eax, BYTE PTR [rcx]
	sub	r8, 1
	mov	rcx, rdx
	add	r8, rdx
	test	al, al
	jne	.L91
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L104:
	cmp	rcx, r8
	je	.L90
	movzx	eax, BYTE PTR 1[r9]
	add	r9, 1
	lea	rdx, 1[rcx]
	test	al, al
	je	.L103
	mov	rcx, rdx
.L91:
	movzx	edx, BYTE PTR [rcx]
	test	dl, dl
	setne	r11b
	cmp	dl, al
	sete	r10b
	test	r11b, r10b
	jne	.L104
.L90:
	sub	eax, edx
.L87:
	ret
	.p2align 4,,10
	.p2align 3
.L103:
	movzx	edx, BYTE PTR 1[rcx]
	xor	eax, eax
	sub	eax, edx
	jmp	.L87
.L102:
	movzx	edx, BYTE PTR [rdx]
	xor	eax, eax
	sub	eax, edx
	jmp	.L87
	.seh_endproc
	.p2align 4
	.globl	swab
	.def	swab;	.scl	2;	.type	32;	.endef
	.seh_proc	swab
swab:
	.seh_endprologue
	cmp	r8, 1
	jle	.L105
	and	r8, -2
	add	r8, rcx
	.p2align 5
	.p2align 4
	.p2align 3
.L107:
	movzx	eax, BYTE PTR 1[rcx]
	add	rcx, 2
	add	rdx, 2
	mov	BYTE PTR -2[rdx], al
	movzx	eax, BYTE PTR -2[rcx]
	mov	BYTE PTR -1[rdx], al
	cmp	rcx, r8
	jne	.L107
.L105:
	ret
	.seh_endproc
	.p2align 4
	.globl	isalpha
	.def	isalpha;	.scl	2;	.type	32;	.endef
	.seh_proc	isalpha
isalpha:
	.seh_endprologue
	xor	eax, eax
	or	ecx, 32
	sub	ecx, 97
	cmp	ecx, 25
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	isascii
	.def	isascii;	.scl	2;	.type	32;	.endef
	.seh_proc	isascii
isascii:
	.seh_endprologue
	xor	eax, eax
	cmp	ecx, 127
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	isblank
	.def	isblank;	.scl	2;	.type	32;	.endef
	.seh_proc	isblank
isblank:
	.seh_endprologue
	cmp	ecx, 32
	sete	al
	cmp	ecx, 9
	sete	dl
	or	eax, edx
	movzx	eax, al
	ret
	.seh_endproc
	.p2align 4
	.globl	iscntrl
	.def	iscntrl;	.scl	2;	.type	32;	.endef
	.seh_proc	iscntrl
iscntrl:
	.seh_endprologue
	cmp	ecx, 31
	setbe	al
	cmp	ecx, 127
	sete	dl
	or	eax, edx
	movzx	eax, al
	ret
	.seh_endproc
	.p2align 4
	.globl	isdigit
	.def	isdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	isdigit
isdigit:
	.seh_endprologue
	xor	eax, eax
	sub	ecx, 48
	cmp	ecx, 9
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	isgraph
	.def	isgraph;	.scl	2;	.type	32;	.endef
	.seh_proc	isgraph
isgraph:
	.seh_endprologue
	xor	eax, eax
	sub	ecx, 33
	cmp	ecx, 93
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	islower
	.def	islower;	.scl	2;	.type	32;	.endef
	.seh_proc	islower
islower:
	.seh_endprologue
	xor	eax, eax
	sub	ecx, 97
	cmp	ecx, 25
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	isprint
	.def	isprint;	.scl	2;	.type	32;	.endef
	.seh_proc	isprint
isprint:
	.seh_endprologue
	xor	eax, eax
	sub	ecx, 32
	cmp	ecx, 94
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	isspace
	.def	isspace;	.scl	2;	.type	32;	.endef
	.seh_proc	isspace
isspace:
	.seh_endprologue
	lea	eax, -9[rcx]
	cmp	eax, 4
	setbe	al
	cmp	ecx, 32
	sete	dl
	or	eax, edx
	movzx	eax, al
	ret
	.seh_endproc
	.p2align 4
	.globl	isupper
	.def	isupper;	.scl	2;	.type	32;	.endef
	.seh_proc	isupper
isupper:
	.seh_endprologue
	xor	eax, eax
	sub	ecx, 65
	cmp	ecx, 25
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	iswcntrl
	.def	iswcntrl;	.scl	2;	.type	32;	.endef
	.seh_proc	iswcntrl
iswcntrl:
	.seh_endprologue
	movzx	eax, cx
	lea	edx, -127[rax]
	cmp	edx, 32
	jbe	.L121
	cmp	cx, 31
	jbe	.L121
	lea	ecx, -8232[rax]
	mov	edx, 1
	cmp	ecx, 1
	jbe	.L119
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L121:
	mov	edx, 1
.L119:
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	iswdigit
	.def	iswdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	iswdigit
iswdigit:
	.seh_endprologue
	xor	eax, eax
	movzx	ecx, cx
	sub	ecx, 48
	cmp	ecx, 9
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	iswprint
	.def	iswprint;	.scl	2;	.type	32;	.endef
	.seh_proc	iswprint
iswprint:
	.seh_endprologue
	cmp	cx, 254
	jbe	.L130
	movzx	eax, cx
	lea	edx, -8234[rax]
	cmp	edx, 47061
	jbe	.L127
	cmp	cx, 8231
	jbe	.L127
	lea	r8d, -57344[rax]
	mov	edx, 1
	cmp	r8d, 8184
	jbe	.L124
	sub	eax, 65532
	xor	edx, edx
	cmp	eax, 1048579
	ja	.L124
	not	ecx
	xor	edx, edx
	test	cx, -2
	setne	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L127:
	mov	edx, 1
.L124:
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L130:
	lea	eax, 1[rcx]
	xor	edx, edx
	and	eax, 127
	cmp	eax, 32
	setg	dl
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	iswxdigit
	.def	iswxdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	iswxdigit
iswxdigit:
	.seh_endprologue
	mov	edx, 1
	movzx	eax, cx
	sub	eax, 48
	cmp	eax, 9
	jbe	.L131
	or	ecx, 32
	xor	edx, edx
	movzx	ecx, cx
	sub	ecx, 97
	cmp	ecx, 5
	setbe	dl
.L131:
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	toascii
	.def	toascii;	.scl	2;	.type	32;	.endef
	.seh_proc	toascii
toascii:
	.seh_endprologue
	mov	eax, ecx
	and	eax, 127
	ret
	.seh_endproc
	.p2align 4
	.globl	fdim
	.def	fdim;	.scl	2;	.type	32;	.endef
	.seh_proc	fdim
fdim:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L135
	ucomisd	xmm1, xmm1
	jp	.L139
	comisd	xmm0, xmm1
	jbe	.L142
	subsd	xmm0, xmm1
.L135:
	ret
	.p2align 4,,10
	.p2align 3
.L142:
	pxor	xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L139:
	movapd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	fdimf
	.def	fdimf;	.scl	2;	.type	32;	.endef
	.seh_proc	fdimf
fdimf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L143
	ucomiss	xmm1, xmm1
	jp	.L147
	comiss	xmm0, xmm1
	jbe	.L150
	subss	xmm0, xmm1
.L143:
	ret
	.p2align 4,,10
	.p2align 3
.L150:
	pxor	xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L147:
	movaps	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	fmax
	.def	fmax;	.scl	2;	.type	32;	.endef
	.seh_proc	fmax
fmax:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L151
	ucomisd	xmm1, xmm1
	jp	.L157
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L153
	test	eax, eax
	jne	.L151
.L157:
	movapd	xmm1, xmm0
.L151:
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L153:
	movapd	xmm2, xmm1
	maxsd	xmm2, xmm0
	movapd	xmm1, xmm2
	movapd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	fmaxf
	.def	fmaxf;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxf
fmaxf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L160
	ucomiss	xmm1, xmm1
	jp	.L166
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L162
	test	eax, eax
	jne	.L160
.L166:
	movaps	xmm1, xmm0
.L160:
	movaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L162:
	movaps	xmm2, xmm1
	maxss	xmm2, xmm0
	movaps	xmm1, xmm2
	movaps	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	fmaxl
	.def	fmaxl;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxl
fmaxl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L175
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L178
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
	je	.L171
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	jmp	.L170
	.p2align 4,,10
	.p2align 3
.L178:
	fstp	st(0)
.L170:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L171:
	fcomi	st, st(1)
	mov	rax, rcx
	fcmovbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L175:
	fstp	st(0)
	jmp	.L170
	.seh_endproc
	.p2align 4
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	movapd	xmm2, xmm0
	jp	.L184
	ucomisd	xmm1, xmm1
	jp	.L179
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L181
	test	eax, eax
	jne	.L179
.L184:
	movapd	xmm0, xmm1
.L179:
	ret
	.p2align 4,,10
	.p2align 3
.L181:
	minsd	xmm2, xmm1
	movapd	xmm0, xmm2
	ret
	.seh_endproc
	.p2align 4
	.globl	fminf
	.def	fminf;	.scl	2;	.type	32;	.endef
	.seh_proc	fminf
fminf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L193
	ucomiss	xmm1, xmm1
	jp	.L188
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L190
	test	eax, eax
	jne	.L188
.L193:
	movaps	xmm0, xmm1
.L188:
	ret
	.p2align 4,,10
	.p2align 3
.L190:
	movaps	xmm2, xmm0
	minss	xmm2, xmm1
	movaps	xmm0, xmm2
	ret
	.seh_endproc
	.p2align 4
	.globl	fminl
	.def	fminl;	.scl	2;	.type	32;	.endef
	.seh_proc	fminl
fminl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L206
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L203
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
	je	.L199
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	jmp	.L198
	.p2align 4,,10
	.p2align 3
.L206:
	fstp	st(0)
.L198:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L199:
	fcomi	st, st(1)
	mov	rax, rcx
	fcmovnbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L203:
	fstp	st(0)
	jmp	.L198
	.seh_endproc
	.p2align 4
	.globl	l64a
	.def	l64a;	.scl	2;	.type	32;	.endef
	.seh_proc	l64a
l64a:
	.seh_endprologue
	lea	r9, s.0[rip]
	mov	rax, r9
	test	ecx, ecx
	je	.L208
	lea	r8, digits[rip]
	.p2align 5
	.p2align 4
	.p2align 3
.L209:
	mov	edx, ecx
	add	rax, 1
	and	edx, 63
	movzx	edx, BYTE PTR [r8+rdx]
	mov	BYTE PTR -1[rax], dl
	shr	ecx, 6
	jne	.L209
.L208:
	mov	BYTE PTR [rax], 0
	mov	rax, r9
	ret
	.seh_endproc
	.p2align 4
	.globl	srand
	.def	srand;	.scl	2;	.type	32;	.endef
	.seh_proc	srand
srand:
	.seh_endprologue
	lea	eax, -1[rcx]
	mov	QWORD PTR seed[rip], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	rand
	.def	rand;	.scl	2;	.type	32;	.endef
	.seh_proc	rand
rand:
	.seh_endprologue
	movabs	rax, 6364136223846793005
	imul	rax, QWORD PTR seed[rip]
	add	rax, 1
	mov	QWORD PTR seed[rip], rax
	shr	rax, 33
	ret
	.seh_endproc
	.p2align 4
	.globl	insque
	.def	insque;	.scl	2;	.type	32;	.endef
	.seh_proc	insque
insque:
	.seh_endprologue
	test	rdx, rdx
	je	.L220
	movq	xmm0, QWORD PTR [rdx]
	movq	xmm1, rdx
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR [rcx], xmm0
	mov	QWORD PTR [rdx], rcx
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L214
	mov	QWORD PTR 8[rax], rcx
.L214:
	ret
	.p2align 4,,10
	.p2align 3
.L220:
	pxor	xmm0, xmm0
	movups	XMMWORD PTR [rcx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	remque
	.def	remque;	.scl	2;	.type	32;	.endef
	.seh_proc	remque
remque:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L222
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L222:
	mov	rdx, QWORD PTR 8[rcx]
	test	rdx, rdx
	je	.L221
	mov	QWORD PTR [rdx], rax
.L221:
	ret
	.seh_endproc
	.p2align 4
	.globl	lsearch
	.def	lsearch;	.scl	2;	.type	32;	.endef
	.seh_proc	lsearch
lsearch:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rdi, QWORD PTR [r8]
	mov	r13, QWORD PTR 144[rsp]
	mov	QWORD PTR 120[rsp], rdx
	mov	rbp, rcx
	mov	r14, r8
	mov	rsi, r9
	test	rdi, rdi
	je	.L231
	mov	rbx, rdx
	xor	r15d, r15d
	jmp	.L233
	.p2align 4,,10
	.p2align 3
.L245:
	add	r15, 1
	add	rbx, rsi
	cmp	rdi, r15
	je	.L231
.L233:
	mov	r12, rbx
	mov	rdx, rbx
	mov	rcx, rbp
	call	r13
	test	eax, eax
	jne	.L245
.L230:
	mov	rax, r12
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L231:
	lea	rax, 1[rdi]
	imul	rdi, rsi
	add	rdi, QWORD PTR 120[rsp]
	mov	QWORD PTR [r14], rax
	mov	r12, rdi
	test	rsi, rsi
	je	.L230
	mov	r8, rsi
	mov	rdx, rbp
	mov	rcx, rdi
	call	memmove
	jmp	.L230
	.seh_endproc
	.p2align 4
	.globl	lfind
	.def	lfind;	.scl	2;	.type	32;	.endef
	.seh_proc	lfind
lfind:
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r12, QWORD PTR [r8]
	mov	r13, QWORD PTR 128[rsp]
	mov	rdi, rcx
	mov	rbp, r9
	test	r12, r12
	je	.L247
	mov	rbx, rdx
	xor	esi, esi
	jmp	.L249
	.p2align 4,,10
	.p2align 3
.L257:
	add	rsi, 1
	add	rbx, rbp
	cmp	r12, rsi
	je	.L247
.L249:
	mov	r14, rbx
	mov	rdx, rbx
	mov	rcx, rdi
	call	r13
	test	eax, eax
	jne	.L257
.L246:
	mov	rax, r14
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L247:
	xor	r14d, r14d
	jmp	.L246
	.seh_endproc
	.p2align 4
	.globl	abs
	.def	abs;	.scl	2;	.type	32;	.endef
	.seh_proc	abs
abs:
	.seh_endprologue
	mov	eax, ecx
	neg	eax
	cmovs	eax, ecx
	ret
	.seh_endproc
	.p2align 4
	.globl	atoi
	.def	atoi;	.scl	2;	.type	32;	.endef
	.seh_proc	atoi
atoi:
	.seh_endprologue
	jmp	.L282
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L277:
	add	rcx, 1
.L282:
	movsx	edx, BYTE PTR [rcx]
	lea	r8d, -9[rdx]
	mov	eax, edx
	cmp	r8d, 4
	jbe	.L277
	cmp	al, 32
	je	.L277
	cmp	al, 43
	je	.L263
	cmp	al, 45
	jne	.L283
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L272
	mov	r11d, 1
.L266:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L269:
	lea	ecx, [r9+r9*4]
	movsx	r8d, BYTE PTR 1[r10]
	lea	edx, -48[rax]
	add	r10, 1
	add	ecx, ecx
	movsx	edx, dl
	mov	r9d, ecx
	mov	eax, r8d
	sub	r8d, 48
	sub	r9d, edx
	cmp	r8d, 9
	jbe	.L269
	sub	edx, ecx
	test	r11d, r11d
	cmove	r9d, edx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L283:
	sub	edx, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	edx, 9
	jbe	.L266
.L272:
	xor	r9d, r9d
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L263:
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	xor	r11d, r11d
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L266
	jmp	.L272
	.seh_endproc
	.p2align 4
	.globl	atol
	.def	atol;	.scl	2;	.type	32;	.endef
	.seh_proc	atol
atol:
	.seh_endprologue
	jmp	.L305
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L301:
	add	rcx, 1
.L305:
	movsx	edx, BYTE PTR [rcx]
	lea	r8d, -9[rdx]
	mov	eax, edx
	cmp	r8d, 4
	jbe	.L301
	cmp	al, 32
	je	.L301
	cmp	al, 43
	je	.L288
	cmp	al, 45
	jne	.L289
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	r11d, 1
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L296
.L290:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L293:
	lea	ecx, [r9+r9*4]
	movsx	r8d, BYTE PTR 1[r10]
	lea	edx, -48[rax]
	add	r10, 1
	add	ecx, ecx
	movsx	edx, dl
	mov	r9d, ecx
	mov	eax, r8d
	sub	r8d, 48
	sub	r9d, edx
	cmp	r8d, 9
	jbe	.L293
	sub	edx, ecx
	test	r11d, r11d
	cmove	r9d, edx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L289:
	sub	edx, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	edx, 9
	jbe	.L290
.L296:
	xor	r9d, r9d
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L288:
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L296
	xor	r11d, r11d
	jmp	.L290
	.seh_endproc
	.p2align 4
	.globl	atoll
	.def	atoll;	.scl	2;	.type	32;	.endef
	.seh_proc	atoll
atoll:
	.seh_endprologue
	jmp	.L329
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L324:
	add	rcx, 1
.L329:
	movsx	edx, BYTE PTR [rcx]
	lea	r8d, -9[rdx]
	mov	eax, edx
	cmp	r8d, 4
	jbe	.L324
	cmp	al, 32
	je	.L324
	cmp	al, 43
	je	.L310
	cmp	al, 45
	jne	.L330
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L319
	mov	r11d, 1
.L313:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L316:
	lea	rcx, [r9+r9*4]
	movsx	r8d, BYTE PTR 1[r10]
	lea	edx, -48[rax]
	add	r10, 1
	add	rcx, rcx
	movsx	rdx, dl
	mov	r9, rcx
	mov	eax, r8d
	sub	r8d, 48
	sub	r9, rdx
	cmp	r8d, 9
	jbe	.L316
	sub	rdx, rcx
	test	r11d, r11d
	cmove	r9, rdx
	mov	rax, r9
	ret
	.p2align 4,,10
	.p2align 3
.L330:
	sub	edx, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	edx, 9
	jbe	.L313
.L319:
	xor	r9d, r9d
	mov	rax, r9
	ret
	.p2align 4,,10
	.p2align 3
.L310:
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	xor	r11d, r11d
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L313
	jmp	.L319
	.seh_endproc
	.p2align 4
	.globl	bsearch
	.def	bsearch;	.scl	2;	.type	32;	.endef
	.seh_proc	bsearch
bsearch:
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r13, QWORD PTR 128[rsp]
	mov	r12, rcx
	mov	rbp, rdx
	mov	rbx, r8
	mov	rdi, r9
	.p2align 4
	.p2align 3
.L344:
	test	rbx, rbx
	je	.L332
.L345:
	mov	r14, rbx
	mov	rcx, r12
	shr	r14
	mov	rsi, r14
	imul	rsi, rdi
	add	rsi, rbp
	mov	rdx, rsi
	call	r13
	test	eax, eax
	js	.L336
	je	.L331
	sub	rbx, 1
	lea	rbp, [rsi+rdi]
	sub	rbx, r14
	test	rbx, rbx
	jne	.L345
.L332:
	xor	esi, esi
.L331:
	mov	rax, rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L336:
	mov	rbx, r14
	jmp	.L344
	.seh_endproc
	.p2align 4
	.globl	bsearch_r
	.def	bsearch_r;	.scl	2;	.type	32;	.endef
	.seh_proc	bsearch_r
bsearch_r:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	r13, QWORD PTR 144[rsp]
	mov	r12, QWORD PTR 152[rsp]
	mov	rbp, rcx
	mov	rdi, rdx
	mov	rsi, r9
	mov	r14d, r8d
	test	r8d, r8d
	je	.L351
	.p2align 4
	.p2align 3
.L347:
	mov	r15d, r14d
	mov	r8, r12
	mov	rcx, rbp
	sar	r15d
	movsx	rbx, r15d
	imul	rbx, rsi
	add	rbx, rdi
	mov	rdx, rbx
	call	r13
	test	eax, eax
	je	.L346
	jle	.L349
	sub	r14d, 1
	lea	rdi, [rbx+rsi]
	sar	r14d
	jne	.L347
.L351:
	xor	ebx, ebx
.L346:
	mov	rax, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L349:
	test	r15d, r15d
	je	.L351
	mov	r14d, r15d
	jmp	.L347
	.seh_endproc
	.p2align 4
	.globl	div
	.def	div;	.scl	2;	.type	32;	.endef
	.seh_proc	div
div:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	cdq
	idiv	ecx
	sal	rdx, 32
	or	rax, rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	imaxabs
	.def	imaxabs;	.scl	2;	.type	32;	.endef
	.seh_proc	imaxabs
imaxabs:
	.seh_endprologue
	mov	rax, rcx
	neg	rax
	cmovs	rax, rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	imaxdiv
	.def	imaxdiv;	.scl	2;	.type	32;	.endef
	.seh_proc	imaxdiv
imaxdiv:
	.seh_endprologue
	mov	rax, rdx
	cqo
	idiv	r8
	mov	QWORD PTR [rcx], rax
	mov	rax, rcx
	mov	QWORD PTR 8[rcx], rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	labs
	.def	labs;	.scl	2;	.type	32;	.endef
	.seh_proc	labs
labs:
	.seh_endprologue
	mov	eax, ecx
	neg	eax
	cmovs	eax, ecx
	ret
	.seh_endproc
	.p2align 4
	.globl	ldiv
	.def	ldiv;	.scl	2;	.type	32;	.endef
	.seh_proc	ldiv
ldiv:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	cdq
	idiv	ecx
	sal	rdx, 32
	or	rax, rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	llabs
	.def	llabs;	.scl	2;	.type	32;	.endef
	.seh_proc	llabs
llabs:
	.seh_endprologue
	mov	rax, rcx
	neg	rax
	cmovs	rax, rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	lldiv
	.def	lldiv;	.scl	2;	.type	32;	.endef
	.seh_proc	lldiv
lldiv:
	.seh_endprologue
	mov	rax, rdx
	cqo
	idiv	r8
	mov	QWORD PTR [rcx], rax
	mov	rax, rcx
	mov	QWORD PTR 8[rcx], rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	wcschr
	.def	wcschr;	.scl	2;	.type	32;	.endef
	.seh_proc	wcschr
wcschr:
	.seh_endprologue
	movzx	eax, WORD PTR [rcx]
	test	ax, ax
	jne	.L367
	jmp	.L370
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L369:
	movzx	eax, WORD PTR 2[rcx]
	add	rcx, 2
	test	ax, ax
	je	.L370
.L367:
	cmp	dx, ax
	jne	.L369
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L370:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	wcscmp
	.def	wcscmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscmp
wcscmp:
	.seh_endprologue
	mov	eax, 2
	movzx	r8d, WORD PTR [rcx]
	movzx	r9d, WORD PTR [rdx]
	cmp	r8w, r9w
	je	.L373
	jmp	.L374
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L375:
	movzx	r8d, WORD PTR [rcx+rax]
	add	rax, 2
	movzx	r9d, WORD PTR -2[rdx+rax]
	cmp	r8w, r9w
	jne	.L374
.L373:
	test	r8w, r8w
	jne	.L375
.L374:
	mov	eax, -1
	cmp	r8w, r9w
	jb	.L372
	xor	eax, eax
	cmp	r9w, r8w
	setb	al
.L372:
	ret
	.seh_endproc
	.p2align 4
	.globl	wcscpy
	.def	wcscpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscpy
wcscpy:
	.seh_endprologue
	xor	r8d, r8d
	mov	rax, rcx
	.p2align 5
	.p2align 4
	.p2align 3
.L381:
	movzx	r9d, WORD PTR [rdx+r8]
	mov	WORD PTR [rax+r8], r9w
	add	r8, 2
	test	r9w, r9w
	jne	.L381
	ret
	.seh_endproc
	.p2align 4
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	cmp	WORD PTR [rcx], 0
	je	.L386
	mov	rax, rcx
	.p2align 4
	.p2align 4
	.p2align 3
.L385:
	add	rax, 2
	cmp	WORD PTR [rax], 0
	jne	.L385
	sub	rax, rcx
	sar	rax
	ret
	.p2align 4,,10
	.p2align 3
.L386:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	wcsncmp
	.def	wcsncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcsncmp
wcsncmp:
	.seh_endprologue
	test	r8, r8
	jne	.L389
	jmp	.L395
	.p2align 4,,10
	.p2align 3
.L400:
	test	ax, ax
	je	.L393
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L395
.L389:
	movzx	eax, WORD PTR [rcx]
	cmp	WORD PTR [rdx], ax
	je	.L400
.L393:
	movzx	ecx, WORD PTR [rcx]
	movzx	eax, WORD PTR [rdx]
	cmp	cx, ax
	jb	.L401
	cmp	ax, cx
	setb	al
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L401:
	mov	eax, -1
	ret
	.p2align 4,,10
	.p2align 3
.L395:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	wmemchr
	.def	wmemchr;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemchr
wmemchr:
	.seh_endprologue
	test	r8, r8
	jne	.L403
	jmp	.L406
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L405:
	add	rcx, 2
	sub	r8, 1
	je	.L406
.L403:
	cmp	WORD PTR [rcx], dx
	jne	.L405
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L406:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	wmemcmp
	.def	wmemcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcmp
wmemcmp:
	.seh_endprologue
	test	r8, r8
	jne	.L409
	jmp	.L414
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L411:
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L414
.L409:
	movzx	eax, WORD PTR [rcx]
	cmp	ax, WORD PTR [rdx]
	je	.L411
	movzx	edx, WORD PTR [rdx]
	cmp	ax, dx
	jb	.L417
	cmp	dx, ax
	setb	al
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L414:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L417:
	mov	eax, -1
	ret
	.seh_endproc
	.p2align 4
	.globl	wmemcpy
	.def	wmemcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcpy
wmemcpy:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	test	r8, r8
	je	.L419
	add	r8, r8
	call	memcpy
	mov	rcx, rax
.L419:
	mov	rax, rcx
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	wmemmove
	.def	wmemmove;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemmove
wmemmove:
	.seh_endprologue
	mov	rax, rcx
	cmp	rcx, rdx
	je	.L431
	mov	r9, rcx
	lea	rcx, [r8+r8]
	sub	r9, rdx
	cmp	r9, rcx
	jnb	.L437
	test	r8, r8
	je	.L431
	sub	r8, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L428:
	movzx	ecx, WORD PTR [rdx+r8*2]
	mov	WORD PTR [rax+r8*2], cx
	sub	r8, 1
	jnb	.L428
.L431:
	ret
	.p2align 4,,10
	.p2align 3
.L437:
	xor	r9d, r9d
	test	r8, r8
	je	.L431
	.p2align 5
	.p2align 4
	.p2align 3
.L426:
	movzx	ecx, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], cx
	add	r9, 1
	cmp	r8, r9
	jne	.L426
	ret
	.seh_endproc
	.p2align 4
	.globl	wmemset
	.def	wmemset;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemset
wmemset:
	.seh_endprologue
	mov	rax, rcx
	mov	ecx, edx
	test	r8, r8
	je	.L439
	xor	r9d, r9d
	test	r8b, 1
	je	.L440
	mov	r9d, 1
	mov	WORD PTR [rax], dx
	cmp	r9, r8
	je	.L439
	.p2align 5
	.p2align 4
	.p2align 3
.L440:
	mov	WORD PTR [rax+r9*2], cx
	mov	WORD PTR 2[rax+r9*2], cx
	add	r9, 2
	cmp	r9, r8
	jne	.L440
.L439:
	ret
	.seh_endproc
	.p2align 4
	.globl	bcopy
	.def	bcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	bcopy
bcopy:
	.seh_endprologue
	cmp	rcx, rdx
	jnb	.L451
	test	r8, r8
	je	.L450
	.p2align 5
	.p2align 4
	.p2align 3
.L453:
	movzx	eax, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[rdx+r8], al
	sub	r8, 1
	jne	.L453
.L450:
	ret
	.p2align 4,,10
	.p2align 3
.L451:
	je	.L450
	test	r8, r8
	je	.L450
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L454:
	movzx	r9d, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx+rax], r9b
	add	rax, 1
	cmp	rax, r8
	jne	.L454
	ret
	.seh_endproc
	.p2align 4
	.globl	rotl64
	.def	rotl64;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl64
rotl64:
	.seh_endprologue
	mov	rax, rcx
	mov	ecx, edx
	rol	rax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotr64
	.def	rotr64;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr64
rotr64:
	.seh_endprologue
	mov	rax, rcx
	mov	ecx, edx
	ror	rax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotl32
	.def	rotl32;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl32
rotl32:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	rol	eax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotr32
	.def	rotr32;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr32
rotr32:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	ror	eax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotl_sz
	.def	rotl_sz;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl_sz
rotl_sz:
	.seh_endprologue
	mov	rax, rcx
	mov	ecx, edx
	rol	rax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotr_sz
	.def	rotr_sz;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr_sz
rotr_sz:
	.seh_endprologue
	mov	rax, rcx
	mov	ecx, edx
	ror	rax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotl16
	.def	rotl16;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl16
rotl16:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	rol	ax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotr16
	.def	rotr16;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr16
rotr16:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	ror	ax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotl8
	.def	rotl8;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl8
rotl8:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	rol	al, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotr8
	.def	rotr8;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr8
rotr8:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	ror	al, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	bswap_16
	.def	bswap_16;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_16
bswap_16:
	.seh_endprologue
	mov	eax, ecx
	rol	ax, 8
	ret
	.seh_endproc
	.p2align 4
	.globl	bswap_32
	.def	bswap_32;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_32
bswap_32:
	.seh_endprologue
	mov	eax, ecx
	bswap	eax
	ret
	.seh_endproc
	.p2align 4
	.globl	bswap_64
	.def	bswap_64;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_64
bswap_64:
	.seh_endprologue
	mov	rax, rcx
	bswap	rax
	ret
	.seh_endproc
	.p2align 4
	.globl	ffs
	.def	ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	ffs
ffs:
	.seh_endprologue
	mov	edx, ecx
	xor	ecx, ecx
	jmp	.L479
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L477:
	cmp	ecx, 32
	je	.L481
.L479:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L477
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L481:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	libiberty_ffs
	.def	libiberty_ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	libiberty_ffs
libiberty_ffs:
	.seh_endprologue
	xor	eax, eax
	test	ecx, ecx
	je	.L482
	mov	eax, ecx
	and	eax, 1
	jne	.L482
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L484:
	sar	ecx
	add	eax, 1
	test	cl, 1
	je	.L484
.L482:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinff
	.def	gl_isinff;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinff
gl_isinff:
	.seh_endprologue
	movss	xmm1, DWORD PTR .LC3[rip]
	mov	eax, 1
	comiss	xmm1, xmm0
	ja	.L489
	xor	eax, eax
	comiss	xmm0, DWORD PTR .LC4[rip]
	seta	al
.L489:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinfd
	.def	gl_isinfd;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfd
gl_isinfd:
	.seh_endprologue
	movsd	xmm1, QWORD PTR .LC5[rip]
	mov	eax, 1
	comisd	xmm1, xmm0
	ja	.L492
	xor	eax, eax
	comisd	xmm0, QWORD PTR .LC6[rip]
	seta	al
.L492:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinfl
	.def	gl_isinfl;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfl
gl_isinfl:
	.seh_endprologue
	mov	eax, 1
	fld	TBYTE PTR [rcx]
	fld	TBYTE PTR .LC7[rip]
	fcomip	st, st(1)
	ja	.L498
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L495
	.p2align 4,,10
	.p2align 3
.L498:
	fstp	st(0)
.L495:
	ret
	.seh_endproc
	.p2align 4
	.globl	_Qp_itoq
	.def	_Qp_itoq;	.scl	2;	.type	32;	.endef
	.seh_proc	_Qp_itoq
_Qp_itoq:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, edx
	movsd	QWORD PTR 8[rsp], xmm0
	fld	QWORD PTR 8[rsp]
	fstp	TBYTE PTR [rcx]
	add	rsp, 24
	ret
	.seh_endproc
	.p2align 4
	.globl	ldexpf
	.def	ldexpf;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpf
ldexpf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L501
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm1, xmm0
	jp	.L508
	jne	.L508
.L501:
	ret
	.p2align 4,,10
	.p2align 3
.L508:
	movss	xmm1, DWORD PTR .LC9[rip]
	test	edx, edx
	jns	.L503
	movss	xmm1, DWORD PTR .LC10[rip]
.L503:
	test	dl, 1
	je	.L504
	.p2align 4
	.p2align 3
.L505:
	mulss	xmm0, xmm1
.L504:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L501
	mulss	xmm1, xmm1
	test	dl, 1
	jne	.L505
.L515:
	mulss	xmm1, xmm1
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L505
	jmp	.L515
	.seh_endproc
	.p2align 4
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L517
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm1, xmm0
	jp	.L524
	jne	.L524
.L517:
	ret
	.p2align 4,,10
	.p2align 3
.L524:
	movsd	xmm1, QWORD PTR .LC11[rip]
	test	edx, edx
	jns	.L519
	movsd	xmm1, QWORD PTR .LC12[rip]
.L519:
	test	dl, 1
	je	.L520
	.p2align 4
	.p2align 3
.L521:
	mulsd	xmm0, xmm1
.L520:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L517
	mulsd	xmm1, xmm1
	test	dl, 1
	jne	.L521
.L531:
	mulsd	xmm1, xmm1
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L521
	jmp	.L531
	.seh_endproc
	.p2align 4
	.globl	ldexpl
	.def	ldexpl;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpl
ldexpl:
	.seh_endprologue
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	mov	rax, rcx
	jp	.L533
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L540
	jne	.L540
	jmp	.L533
	.p2align 4,,10
	.p2align 3
.L549:
	fstp	st(0)
.L533:
	fstp	TBYTE PTR [rax]
	ret
	.p2align 4,,10
	.p2align 3
.L540:
	test	r8d, r8d
	js	.L547
	fld	DWORD PTR .LC9[rip]
.L535:
	test	r8b, 1
	je	.L536
	.p2align 4
	.p2align 3
.L537:
	fmul	st(1), st
.L536:
	mov	edx, r8d
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	je	.L549
	fmul	st, st(0)
	test	r8b, 1
	jne	.L537
.L548:
	mov	edx, r8d
	fmul	st, st(0)
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	test	r8b, 1
	jne	.L537
	jmp	.L548
	.p2align 4,,10
	.p2align 3
.L547:
	fld	DWORD PTR .LC10[rip]
	jmp	.L535
	.seh_endproc
	.p2align 4
	.globl	memxor
	.def	memxor;	.scl	2;	.type	32;	.endef
	.seh_proc	memxor
memxor:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L551
	add	r8, rdx
	mov	r9, rcx
	.p2align 5
	.p2align 4
	.p2align 3
.L552:
	add	rdx, 1
	add	r9, 1
	movzx	r10d, BYTE PTR -1[rdx]
	xor	BYTE PTR -1[r9], r10b
	cmp	rdx, r8
	jne	.L552
.L551:
	ret
	.seh_endproc
	.p2align 4
	.globl	strncat
	.def	strncat;	.scl	2;	.type	32;	.endef
	.seh_proc	strncat
strncat:
	.seh_endprologue
	cmp	BYTE PTR [rcx], 0
	mov	rax, rcx
	mov	r9, rcx
	je	.L558
	.p2align 4
	.p2align 4
	.p2align 3
.L559:
	add	r9, 1
	cmp	BYTE PTR [r9], 0
	jne	.L559
.L558:
	test	r8, r8
	jne	.L560
	jmp	.L561
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L562:
	add	rdx, 1
	add	r9, 1
	sub	r8, 1
	je	.L561
.L560:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [r9], r10b
	test	r10b, r10b
	jne	.L562
	ret
	.p2align 4,,10
	.p2align 3
.L561:
	mov	BYTE PTR [r9], 0
	ret
	.seh_endproc
	.p2align 4
	.globl	strnlen
	.def	strnlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strnlen
strnlen:
	.seh_endprologue
	xor	eax, eax
	test	rdx, rdx
	je	.L570
.L571:
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L573
.L570:
	ret
	.p2align 4,,10
	.p2align 3
.L573:
	add	rax, 1
	cmp	rdx, rax
	jne	.L571
	ret
	.seh_endproc
	.p2align 4
	.globl	strpbrk
	.def	strpbrk;	.scl	2;	.type	32;	.endef
	.seh_proc	strpbrk
strpbrk:
	.seh_endprologue
	movzx	r10d, BYTE PTR [rcx]
	mov	rax, rcx
	test	r10b, r10b
	je	.L583
.L579:
	mov	r8, rdx
	jmp	.L582
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L581:
	add	r8, 1
	cmp	r9b, r10b
	je	.L580
.L582:
	movzx	r9d, BYTE PTR [r8]
	test	r9b, r9b
	jne	.L581
	movzx	r10d, BYTE PTR 1[rax]
	add	rax, 1
	test	r10b, r10b
	jne	.L579
.L583:
	xor	eax, eax
.L580:
	ret
	.seh_endproc
	.p2align 4
	.globl	strrchr
	.def	strrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strrchr
strrchr:
	.seh_endprologue
	xor	r8d, r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L587:
	movsx	r9d, BYTE PTR [rcx]
	cmp	edx, r9d
	cmove	r8, rcx
	add	rcx, 1
	test	r9b, r9b
	jne	.L587
	mov	rax, r8
	ret
	.seh_endproc
	.p2align 4
	.globl	strstr
	.def	strstr;	.scl	2;	.type	32;	.endef
	.seh_proc	strstr
strstr:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rsi, rdx
	movzx	edx, BYTE PTR [rdx]
	test	dl, dl
	je	.L601
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L591:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L591
	mov	r8, rcx
	sub	rax, rsi
	je	.L589
	lea	rbx, -1[rsi+rax]
	jmp	.L598
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L612:
	add	rcx, 1
	test	al, al
	je	.L611
.L598:
	movzx	eax, BYTE PTR [rcx]
	cmp	al, dl
	jne	.L612
	mov	r8d, edx
	mov	rax, rsi
	mov	r10, rcx
	jmp	.L593
	.p2align 4,,10
	.p2align 3
.L613:
	test	r9b, r9b
	setne	r11b
	cmp	r9b, r8b
	sete	r9b
	test	r11b, r9b
	je	.L594
	movzx	r8d, BYTE PTR 1[r10]
	add	r10, 1
	add	rax, 1
	test	r8b, r8b
	je	.L594
.L593:
	movzx	r9d, BYTE PTR [rax]
	cmp	rax, rbx
	jne	.L613
.L594:
	cmp	r8b, BYTE PTR [rax]
	je	.L601
	add	rcx, 1
	jmp	.L598
	.p2align 4,,10
	.p2align 3
.L611:
	xor	r8d, r8d
.L589:
	mov	rax, r8
	pop	rbx
	pop	rsi
	ret
.L601:
	mov	r8, rcx
	mov	rax, r8
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	copysign
	.def	copysign;	.scl	2;	.type	32;	.endef
	.seh_proc	copysign
copysign:
	.seh_endprologue
	pxor	xmm2, xmm2
	comisd	xmm2, xmm0
	ja	.L624
	comisd	xmm0, xmm2
	jbe	.L618
	comisd	xmm2, xmm1
	ja	.L617
.L618:
	ret
	.p2align 4,,10
	.p2align 3
.L624:
	comisd	xmm1, xmm2
	jbe	.L618
.L617:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	ret
	.seh_endproc
	.p2align 4
	.globl	memmem
	.def	memmem;	.scl	2;	.type	32;	.endef
	.seh_proc	memmem
memmem:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, rcx
	test	r9, r9
	je	.L625
	cmp	rdx, r9
	jb	.L636
	sub	rdx, r9
	add	rdx, rcx
	jc	.L636
	movzx	r11d, BYTE PTR [r8]
	jmp	.L631
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L635:
	mov	rax, rcx
.L627:
	cmp	rdx, rax
	jb	.L636
.L631:
	lea	rcx, 1[rax]
	cmp	BYTE PTR [rax], r11b
	jne	.L635
	cmp	r9, 1
	je	.L625
.L630:
	mov	r10d, 1
	jmp	.L628
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L629:
	add	r10, 1
	cmp	r9, r10
	je	.L625
.L628:
	movzx	ebx, BYTE PTR [r8+r10]
	cmp	BYTE PTR [rax+r10], bl
	je	.L629
	cmp	rdx, rcx
	jb	.L636
	lea	rax, 1[rcx]
	cmp	r11b, BYTE PTR [rcx]
	jne	.L627
	mov	r10, rcx
	mov	rcx, rax
	mov	rax, r10
	jmp	.L630
	.p2align 4,,10
	.p2align 3
.L636:
	xor	eax, eax
.L625:
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	mempcpy
	.def	mempcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	mempcpy
mempcpy:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, r8
	test	r8, r8
	je	.L644
	call	memmove
	mov	rcx, rax
.L644:
	lea	rax, [rcx+rbx]
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	frexp
	.def	frexp;	.scl	2;	.type	32;	.endef
	.seh_proc	frexp
frexp:
	.seh_endprologue
	pxor	xmm3, xmm3
	comisd	xmm3, xmm0
	ja	.L672
	movsd	xmm2, QWORD PTR .LC16[rip]
	xor	ecx, ecx
	comisd	xmm0, xmm2
	jb	.L673
.L651:
	movsd	xmm1, QWORD PTR .LC12[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L658:
	mulsd	xmm0, xmm1
	add	eax, 1
	comisd	xmm0, xmm2
	jnb	.L658
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L648
.L675:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L648:
	ret
	.p2align 4,,10
	.p2align 3
.L673:
	movsd	xmm1, QWORD PTR .LC12[rip]
	comisd	xmm1, xmm0
	jbe	.L654
	ucomisd	xmm0, xmm3
	jp	.L664
	jne	.L664
.L654:
	mov	DWORD PTR [rdx], 0
	ret
	.p2align 4,,10
	.p2align 3
.L672:
	movsd	xmm1, QWORD PTR .LC14[rip]
	movapd	xmm2, xmm0
	xorpd	xmm2, XMMWORD PTR .LC13[rip]
	comisd	xmm1, xmm0
	jb	.L674
	movapd	xmm0, xmm2
	mov	ecx, 1
	movsd	xmm2, QWORD PTR .LC16[rip]
	jmp	.L651
	.p2align 4,,10
	.p2align 3
.L674:
	comisd	xmm0, QWORD PTR .LC15[rip]
	jbe	.L654
	movsd	xmm1, QWORD PTR .LC12[rip]
	mov	ecx, 1
.L652:
	movapd	xmm0, xmm2
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L660:
	addsd	xmm0, xmm0
	sub	eax, 1
	comisd	xmm1, xmm0
	ja	.L660
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	jne	.L675
	jmp	.L648
.L664:
	movapd	xmm2, xmm0
	xor	ecx, ecx
	jmp	.L652
	.seh_endproc
	.p2align 4
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	xor	r8d, r8d
	test	rcx, rcx
	je	.L676
	.p2align 5
	.p2align 4
	.p2align 3
.L678:
	mov	rax, rcx
	and	eax, 1
	neg	rax
	and	rax, rdx
	add	rdx, rdx
	add	r8, rax
	shr	rcx
	jne	.L678
.L676:
	mov	rax, r8
	ret
	.seh_endproc
	.p2align 4
	.globl	udivmodsi4
	.def	udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	udivmodsi4
udivmodsi4:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jb	.L682
	jmp	.L683
	.p2align 4,,10
	.p2align 3
.L685:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L684
	test	eax, eax
	je	.L684
.L682:
	test	edx, edx
	jns	.L685
.L683:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L688:
	cmp	ecx, edx
	jb	.L687
	sub	ecx, edx
	or	r9d, eax
.L687:
	shr	edx
	shr	eax
	jne	.L688
	test	r8, r8
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L684:
	xor	r9d, r9d
	test	eax, eax
	jne	.L683
	test	r8, r8
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	__clrsbqi2
	.def	__clrsbqi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbqi2
__clrsbqi2:
	.seh_endprologue
	mov	r8d, 7
	mov	edx, ecx
	sar	dl, 7
	mov	eax, edx
	xor	eax, ecx
	cmp	cl, dl
	je	.L703
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	r8d, -1[rax]
.L703:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__clrsbdi2
	.def	__clrsbdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbdi2
__clrsbdi2:
	.seh_endprologue
	mov	r8d, 63
	mov	rdx, rcx
	mov	rax, rcx
	sar	rdx, 63
	xor	rax, rdx
	cmp	rcx, rdx
	je	.L706
	bsr	rax, rax
	xor	rax, 63
	lea	r8d, -1[rax]
.L706:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__mulsi3
	.def	__mulsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3
__mulsi3:
	.seh_endprologue
	xor	r8d, r8d
	test	ecx, ecx
	je	.L709
	.p2align 5
	.p2align 4
	.p2align 3
.L711:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L711
.L709:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__cmovd
	.def	__cmovd;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovd
__cmovd:
	.seh_endprologue
	mov	r10d, r8d
	mov	eax, r8d
	mov	r9, rdx
	shr	r10d, 3
	and	eax, -8
	cmp	rcx, rdx
	jb	.L718
	mov	edx, r8d
	add	rdx, r9
	cmp	rdx, rcx
	jnb	.L729
.L718:
	lea	r11d, 0[0+r10*8]
	xor	edx, edx
	test	r10d, r10d
	je	.L717
	.p2align 5
	.p2align 4
	.p2align 3
.L721:
	mov	r10, QWORD PTR [r9+rdx]
	mov	QWORD PTR [rcx+rdx], r10
	add	rdx, 8
	cmp	r11, rdx
	jne	.L721
.L717:
	cmp	eax, r8d
	jnb	.L714
	.p2align 5
	.p2align 4
	.p2align 3
.L722:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
	cmp	eax, r8d
	jb	.L722
.L714:
	ret
	.p2align 4,,10
	.p2align 3
.L729:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L714
	.p2align 4
	.p2align 4
	.p2align 3
.L723:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	jnb	.L723
	ret
	.seh_endproc
	.p2align 4
	.globl	__cmovh
	.def	__cmovh;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovh
__cmovh:
	.seh_endprologue
	mov	r9d, r8d
	shr	r9d
	cmp	rcx, rdx
	jb	.L734
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L747
.L734:
	lea	r10d, [r9+r9]
	xor	eax, eax
	test	r9d, r9d
	je	.L733
	.p2align 5
	.p2align 4
	.p2align 3
.L737:
	movzx	r9d, WORD PTR [rdx+rax]
	mov	WORD PTR [rcx+rax], r9w
	add	rax, 2
	cmp	r10, rax
	jne	.L737
.L733:
	test	r8b, 1
	je	.L730
	lea	eax, -1[r8]
	movzx	edx, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], dl
.L730:
	ret
	.p2align 4,,10
	.p2align 3
.L747:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L730
	.p2align 4
	.p2align 4
	.p2align 3
.L739:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	jnb	.L739
	ret
	.seh_endproc
	.p2align 4
	.globl	__cmovw
	.def	__cmovw;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovw
__cmovw:
	.seh_endprologue
	mov	r10d, r8d
	mov	eax, r8d
	mov	r9, rdx
	shr	r10d, 2
	and	eax, -4
	cmp	rcx, rdx
	jb	.L752
	mov	edx, r8d
	add	rdx, r9
	cmp	rdx, rcx
	jnb	.L763
.L752:
	lea	r11d, 0[0+r10*4]
	xor	edx, edx
	test	r10d, r10d
	je	.L751
	.p2align 5
	.p2align 4
	.p2align 3
.L755:
	mov	r10d, DWORD PTR [r9+rdx]
	mov	DWORD PTR [rcx+rdx], r10d
	add	rdx, 4
	cmp	r11, rdx
	jne	.L755
.L751:
	cmp	eax, r8d
	jnb	.L748
	.p2align 5
	.p2align 4
	.p2align 3
.L756:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
	cmp	eax, r8d
	jb	.L756
.L748:
	ret
	.p2align 4,,10
	.p2align 3
.L763:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L748
	.p2align 4
	.p2align 4
	.p2align 3
.L757:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	jnb	.L757
	ret
	.seh_endproc
	.p2align 4
	.globl	__modi
	.def	__modi;	.scl	2;	.type	32;	.endef
	.seh_proc	__modi
__modi:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	cdq
	idiv	ecx
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__uitod
	.def	__uitod;	.scl	2;	.type	32;	.endef
	.seh_proc	__uitod
__uitod:
	.seh_endprologue
	pxor	xmm0, xmm0
	mov	ecx, ecx
	cvtsi2sd	xmm0, rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	__uitof
	.def	__uitof;	.scl	2;	.type	32;	.endef
	.seh_proc	__uitof
__uitof:
	.seh_endprologue
	pxor	xmm0, xmm0
	mov	ecx, ecx
	cvtsi2ss	xmm0, rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	__ulltod
	.def	__ulltod;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltod
__ulltod:
	.seh_endprologue
	test	rcx, rcx
	js	.L772
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L772:
	mov	rax, rcx
	and	ecx, 1
	pxor	xmm0, xmm0
	shr	rax
	or	rax, rcx
	cvtsi2sd	xmm0, rax
	addsd	xmm0, xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	__ulltof
	.def	__ulltof;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltof
__ulltof:
	.seh_endprologue
	test	rcx, rcx
	js	.L775
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L775:
	mov	rax, rcx
	and	ecx, 1
	pxor	xmm0, xmm0
	shr	rax
	or	rax, rcx
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	__umodi
	.def	__umodi;	.scl	2;	.type	32;	.endef
	.seh_proc	__umodi
__umodi:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	xor	edx, edx
	div	ecx
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__clzhi2
	.def	__clzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzhi2
__clzhi2:
	.seh_endprologue
	movzx	edx, cx
	test	ch, -128
	jne	.L781
	mov	eax, edx
	sar	eax, 14
	jne	.L778
	mov	eax, edx
	shr	eax, 13
	jne	.L782
	mov	eax, edx
	shr	eax, 12
	jne	.L783
	mov	eax, edx
	shr	eax, 11
	jne	.L784
	mov	eax, edx
	shr	eax, 10
	jne	.L785
	mov	eax, edx
	shr	eax, 9
	jne	.L786
	mov	eax, edx
	shr	eax, 8
	jne	.L787
	mov	eax, edx
	shr	eax, 7
	jne	.L788
	mov	eax, edx
	shr	eax, 6
	jne	.L789
	mov	eax, edx
	shr	eax, 5
	jne	.L790
	mov	eax, edx
	shr	eax, 4
	jne	.L791
	mov	eax, edx
	shr	eax, 3
	jne	.L792
	mov	eax, edx
	shr	eax, 2
	jne	.L793
	shr	edx
	jne	.L794
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
.L778:
	ret
.L781:
	xor	eax, eax
	ret
.L792:
	mov	eax, 12
	ret
.L782:
	mov	eax, 2
	ret
.L783:
	mov	eax, 3
	ret
.L784:
	mov	eax, 4
	ret
.L785:
	mov	eax, 5
	ret
.L786:
	mov	eax, 6
	ret
.L787:
	mov	eax, 7
	ret
.L788:
	mov	eax, 8
	ret
.L789:
	mov	eax, 9
	ret
.L790:
	mov	eax, 10
	ret
.L791:
	mov	eax, 11
	ret
.L793:
	mov	eax, 13
	ret
.L794:
	mov	eax, 14
	ret
	.seh_endproc
	.p2align 4
	.globl	__ctzhi2
	.def	__ctzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzhi2
__ctzhi2:
	.seh_endprologue
	test	cl, 1
	jne	.L799
	test	cl, 2
	jne	.L800
	test	cl, 4
	jne	.L801
	test	cl, 8
	jne	.L802
	test	cl, 16
	jne	.L803
	test	cl, 32
	jne	.L804
	test	cl, 64
	jne	.L805
	test	cl, -128
	jne	.L806
	test	ch, 1
	jne	.L807
	test	ch, 2
	jne	.L808
	test	ch, 4
	jne	.L809
	test	ch, 8
	jne	.L810
	test	ch, 16
	jne	.L811
	test	ch, 32
	jne	.L812
	test	ch, 64
	jne	.L813
	xor	eax, eax
	and	ch, -128
	sete	al
	add	eax, 15
	ret
.L799:
	xor	eax, eax
	ret
.L800:
	mov	eax, 1
	ret
.L811:
	mov	eax, 12
	ret
.L801:
	mov	eax, 2
	ret
.L802:
	mov	eax, 3
	ret
.L803:
	mov	eax, 4
	ret
.L804:
	mov	eax, 5
	ret
.L805:
	mov	eax, 6
	ret
.L806:
	mov	eax, 7
	ret
.L807:
	mov	eax, 8
	ret
.L808:
	mov	eax, 9
	ret
.L809:
	mov	eax, 10
	ret
.L810:
	mov	eax, 11
	ret
.L812:
	mov	eax, 13
	ret
.L813:
	mov	eax, 14
	ret
	.seh_endproc
	.p2align 4
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	comiss	xmm0, DWORD PTR .LC17[rip]
	jnb	.L821
	cvttss2si	eax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L821:
	subss	xmm0, DWORD PTR .LC17[rip]
	cvttss2si	eax, xmm0
	add	eax, 32768
	ret
	.seh_endproc
	.p2align 4
	.globl	__parityhi2
	.def	__parityhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__parityhi2
__parityhi2:
	.seh_endprologue
	movzx	edx, cx
	and	ecx, 1
	mov	eax, edx
	sar	eax
	and	eax, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 2
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 3
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 4
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 5
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 6
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 7
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 8
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 9
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 10
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 11
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 12
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 13
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	edx, 15
	sar	ecx, 14
	and	ecx, 1
	add	eax, ecx
	add	eax, edx
	and	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__popcounthi2
	.def	__popcounthi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcounthi2
__popcounthi2:
	.seh_endprologue
	movzx	edx, cx
	and	ecx, 1
	mov	eax, edx
	sar	eax
	and	eax, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 2
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 3
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 4
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 5
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 6
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 7
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 8
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 9
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 10
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 11
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 12
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 13
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	edx, 15
	sar	ecx, 14
	and	ecx, 1
	add	eax, ecx
	add	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__mulsi3_iq2000
	.def	__mulsi3_iq2000;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_iq2000
__mulsi3_iq2000:
	.seh_endprologue
	xor	r8d, r8d
	test	ecx, ecx
	je	.L824
	.p2align 5
	.p2align 4
	.p2align 3
.L826:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L826
.L824:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__mulsi3_lm32
	.def	__mulsi3_lm32;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_lm32
__mulsi3_lm32:
	.seh_endprologue
	xor	r8d, r8d
	test	ecx, ecx
	je	.L829
	test	edx, edx
	je	.L829
	.p2align 5
	.p2align 4
	.p2align 3
.L831:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	r8d, eax
	shr	edx
	jne	.L831
.L829:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__udivmodsi4
	.def	__udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4
__udivmodsi4:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jb	.L837
	jmp	.L838
	.p2align 4,,10
	.p2align 3
.L840:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L839
	test	eax, eax
	je	.L839
.L837:
	test	edx, edx
	jns	.L840
.L838:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L843:
	cmp	ecx, edx
	jb	.L842
	sub	ecx, edx
	or	r9d, eax
.L842:
	shr	edx
	shr	eax
	jne	.L843
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L839:
	xor	r9d, r9d
	test	eax, eax
	jne	.L838
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	__mspabi_cmpf
	.def	__mspabi_cmpf;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpf
__mspabi_cmpf:
	.seh_endprologue
	mov	eax, -1
	comiss	xmm1, xmm0
	ja	.L858
	xor	eax, eax
	comiss	xmm0, xmm1
	seta	al
.L858:
	ret
	.seh_endproc
	.p2align 4
	.globl	__mspabi_cmpd
	.def	__mspabi_cmpd;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpd
__mspabi_cmpd:
	.seh_endprologue
	mov	eax, -1
	comisd	xmm1, xmm0
	ja	.L861
	xor	eax, eax
	comisd	xmm0, xmm1
	seta	al
.L861:
	ret
	.seh_endproc
	.p2align 4
	.globl	__mspabi_mpysll
	.def	__mspabi_mpysll;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_mpysll
__mspabi_mpysll:
	.seh_endprologue
	movsx	rax, ecx
	movsx	rdx, edx
	imul	rax, rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	__mspabi_mpyull
	.def	__mspabi_mpyull;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_mpyull
__mspabi_mpyull:
	.seh_endprologue
	mov	eax, ecx
	mov	edx, edx
	imul	rax, rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	__mulhi3
	.def	__mulhi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulhi3
__mulhi3:
	.seh_endprologue
	test	edx, edx
	js	.L875
	je	.L871
	xor	r11d, r11d
.L868:
	mov	r8d, 1
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L870:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	r9d, eax
	sar	edx
	setne	r10b
	cmp	r8b, 32
	setne	al
	add	r8d, 1
	test	r10b, al
	jne	.L870
	mov	eax, r9d
	neg	eax
	test	r11d, r11d
	cmovne	r9d, eax
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L875:
	neg	edx
	mov	r11d, 1
	jmp	.L868
	.p2align 4,,10
	.p2align 3
.L871:
	xor	r9d, r9d
	mov	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	__divsi3
	.def	__divsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__divsi3
__divsi3:
	.seh_endprologue
	mov	eax, 1
	xor	r10d, r10d
	test	ecx, ecx
	jns	.L877
	neg	ecx
	xor	eax, eax
	mov	r10d, 1
.L877:
	test	edx, edx
	jns	.L878
	neg	edx
	mov	r10d, eax
.L878:
	mov	r9d, ecx
	mov	r8d, 1
	cmp	edx, ecx
	jb	.L879
	jmp	.L880
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L898:
	test	r8d, r8d
	je	.L897
.L879:
	add	edx, edx
	add	r8d, r8d
	cmp	edx, ecx
	jb	.L898
	test	r8d, r8d
	je	.L897
.L880:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L885:
	cmp	r9d, edx
	jb	.L884
	sub	r9d, edx
	or	eax, r8d
.L884:
	shr	edx
	shr	r8d
	jne	.L885
	mov	edx, eax
	neg	edx
	test	r10d, r10d
	cmovne	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L897:
	xor	eax, eax
	mov	edx, eax
	neg	edx
	test	r10d, r10d
	cmovne	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__modsi3
	.def	__modsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__modsi3
__modsi3:
	.seh_endprologue
	xor	r9d, r9d
	test	ecx, ecx
	jns	.L900
	neg	ecx
	mov	r9d, 1
.L900:
	mov	eax, edx
	mov	r8d, 1
	neg	eax
	cmovns	edx, eax
	mov	eax, ecx
	cmp	edx, ecx
	jb	.L901
	jmp	.L907
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L920:
	test	r8d, r8d
	je	.L919
.L901:
	add	edx, edx
	add	r8d, r8d
	cmp	edx, ecx
	jb	.L920
	test	r8d, r8d
	je	.L919
	.p2align 4
	.p2align 4
	.p2align 3
.L907:
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	cmovnb	eax, ecx
	shr	edx
	shr	r8d
	jne	.L907
	mov	edx, eax
	neg	edx
	test	r9d, r9d
	cmovne	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L919:
	mov	eax, ecx
	mov	edx, eax
	neg	edx
	test	r9d, r9d
	cmovne	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__udivmodhi4
	.def	__udivmodhi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodhi4
__udivmodhi4:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r9d, 1
	mov	r11d, ecx
	mov	eax, edx
	cmp	dx, cx
	jb	.L922
	jmp	.L977
	.p2align 4,,10
	.p2align 3
.L925:
	lea	r10d, [rax+rax]
	lea	edx, [r9+r9]
	cmp	r10w, r11w
	jnb	.L924
	test	dx, dx
	je	.L924
	mov	r9d, edx
	mov	eax, r10d
.L922:
	test	ax, ax
	jns	.L925
	xor	edx, edx
	cmp	cx, ax
	jb	.L948
	mov	r11d, ecx
	mov	edx, r9d
	sub	r11d, eax
.L948:
	mov	ecx, eax
	mov	ebx, r9d
	shr	cx
	shr	bx
	je	.L965
.L929:
	cmp	r11w, cx
	jb	.L930
	sub	r11d, ecx
	or	edx, ebx
.L930:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 2
	shr	r10w, 2
	je	.L965
	cmp	r11w, cx
	jb	.L931
	sub	r11d, ecx
	or	edx, r10d
.L931:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 3
	shr	r10w, 3
	je	.L965
	cmp	r11w, cx
	jb	.L932
	sub	r11d, ecx
	or	edx, r10d
.L932:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 4
	shr	r10w, 4
	je	.L965
	cmp	r11w, cx
	jb	.L933
	sub	r11d, ecx
	or	edx, r10d
.L933:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 5
	shr	r10w, 5
	je	.L965
	cmp	r11w, cx
	jb	.L934
	sub	r11d, ecx
	or	edx, r10d
.L934:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 6
	shr	r10w, 6
	je	.L965
	cmp	r11w, cx
	jb	.L935
	sub	r11d, ecx
	or	edx, r10d
.L935:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 7
	shr	r10w, 7
	je	.L965
	cmp	r11w, cx
	jnb	.L978
.L936:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 8
	shr	r10w, 8
	je	.L965
	cmp	r11w, cx
	jnb	.L979
.L937:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 9
	shr	r10w, 9
	je	.L965
	cmp	r11w, cx
	jnb	.L980
.L938:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 10
	shr	r10w, 10
	je	.L965
	cmp	r11w, cx
	jnb	.L981
.L939:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 11
	shr	r10w, 11
	je	.L965
	cmp	r11w, cx
	jnb	.L982
.L940:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 12
	shr	r10w, 12
	je	.L965
	cmp	r11w, cx
	jb	.L941
	sub	r11d, ecx
	or	edx, r10d
.L941:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 13
	shr	r10w, 13
	je	.L965
	cmp	r11w, cx
	jb	.L942
	sub	r11d, ecx
	or	edx, r10d
.L942:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 14
	shr	r10w, 14
	je	.L965
	cmp	r11w, cx
	jb	.L943
	sub	r11d, ecx
	or	edx, r10d
.L943:
	shr	ax, 15
	test	r9w, r9w
	jns	.L965
	xor	ebx, ebx
	cmp	r11w, ax
	jb	.L927
	mov	ebx, r11d
	or	edx, 1
	sub	ebx, eax
	jmp	.L927
	.p2align 4,,10
	.p2align 3
.L965:
	mov	ebx, r11d
.L927:
	test	r8d, r8d
	cmove	ebx, edx
	mov	eax, ebx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L924:
	mov	ebx, ecx
	test	dx, dx
	je	.L927
	cmp	cx, r10w
	jb	.L928
	mov	r11d, ecx
	mov	ebx, r9d
	and	ax, 32767
	mov	r9d, edx
	mov	ecx, eax
	sub	r11d, r10d
	and	bx, 32767
	mov	eax, r10d
	jmp	.L929
	.p2align 4,,10
	.p2align 3
.L978:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L936
	.p2align 4,,10
	.p2align 3
.L928:
	mov	ebx, r9d
	and	ax, 32767
	mov	r9d, edx
	xor	edx, edx
	mov	ecx, eax
	and	bx, 32767
	mov	eax, r10d
	jmp	.L929
	.p2align 4,,10
	.p2align 3
.L979:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L937
	.p2align 4,,10
	.p2align 3
.L980:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L938
	.p2align 4,,10
	.p2align 3
.L981:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L939
	.p2align 4,,10
	.p2align 3
.L982:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L940
.L977:
	sete	dl
	mov	ebx, 0
	cmovne	ebx, ecx
	movzx	edx, dl
	jmp	.L927
	.seh_endproc
	.p2align 4
	.globl	__udivmodsi4_libgcc
	.def	__udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jb	.L984
	jmp	.L985
	.p2align 4,,10
	.p2align 3
.L987:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L986
	test	eax, eax
	je	.L986
.L984:
	test	edx, edx
	jns	.L987
.L985:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L990:
	cmp	ecx, edx
	jb	.L989
	sub	ecx, edx
	or	r9d, eax
.L989:
	shr	edx
	shr	eax
	jne	.L990
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L986:
	xor	r9d, r9d
	test	eax, eax
	jne	.L985
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	__ashldi3
	.def	__ashldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashldi3
__ashldi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1006
	lea	ecx, -32[rdx]
	xor	eax, eax
	sal	r8d, cl
.L1007:
	sal	r8, 32
	or	rax, r8
.L1005:
	ret
	.p2align 4,,10
	.p2align 3
.L1006:
	mov	rax, rcx
	test	edx, edx
	je	.L1005
	mov	ecx, edx
	mov	r9d, r8d
	sar	r8, 32
	sal	eax, cl
	mov	ecx, 32
	sub	ecx, edx
	shr	r9d, cl
	mov	ecx, edx
	sal	r8d, cl
	or	r8d, r9d
	jmp	.L1007
	.seh_endproc
	.p2align 4
	.globl	__ashlti3
	.def	__ashlti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashlti3
__ashlti3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	r8, QWORD PTR 8[rcx]
	test	dl, 64
	je	.L1012
	lea	ecx, -64[rdx]
	xor	r9d, r9d
	sal	rax, cl
.L1013:
	mov	rcx, rax
	mov	rax, r9
	mov	rdx, rcx
.L1014:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	r11, QWORD PTR 8[rsp]
	movq	xmm1, rdx
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], r11
	movdqa	xmm0, XMMWORD PTR [rsp]
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L1012:
	test	edx, edx
	je	.L1015
	mov	r9, rax
	mov	ecx, edx
	sal	r9, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rax, cl
	mov	ecx, edx
	sal	r8, cl
	or	rax, r8
	jmp	.L1013
	.p2align 4,,10
	.p2align 3
.L1015:
	mov	rdx, r8
	jmp	.L1014
	.seh_endproc
	.p2align 4
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1017
	sar	r8, 32
	lea	ecx, -32[rdx]
	mov	eax, r8d
	sar	r8d, cl
	sar	eax, 31
.L1018:
	sal	rax, 32
	or	rax, r8
.L1016:
	ret
	.p2align 4,,10
	.p2align 3
.L1017:
	mov	rax, rcx
	test	edx, edx
	je	.L1016
	mov	r9, rcx
	mov	ecx, edx
	sar	r9, 32
	mov	eax, r9d
	sar	eax, cl
	mov	ecx, 32
	sub	ecx, edx
	sal	r9d, cl
	mov	ecx, edx
	shr	r8d, cl
	or	r8d, r9d
	jmp	.L1018
	.seh_endproc
	.p2align 4
	.globl	__ashrti3
	.def	__ashrti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrti3
__ashrti3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rax, QWORD PTR 8[rcx]
	test	dl, 64
	je	.L1023
	mov	r10, rax
	lea	ecx, -64[rdx]
	sar	r10, 63
	sar	rax, cl
.L1024:
	mov	rdx, rax
	mov	rax, r10
.L1025:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	rcx, QWORD PTR 8[rsp]
	movq	xmm1, rax
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L1023:
	test	edx, edx
	je	.L1026
	mov	r10, rax
	mov	ecx, edx
	sar	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L1024
	.p2align 4,,10
	.p2align 3
.L1026:
	mov	rdx, r8
	jmp	.L1025
	.seh_endproc
	.p2align 4
	.globl	__bswapdi2
	.def	__bswapdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__bswapdi2
__bswapdi2:
	.seh_endprologue
	mov	rax, rcx
	bswap	rax
	ret
	.seh_endproc
	.p2align 4
	.globl	__bswapsi2
	.def	__bswapsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__bswapsi2
__bswapsi2:
	.seh_endprologue
	mov	eax, ecx
	bswap	eax
	ret
	.seh_endproc
	.p2align 4
	.globl	__clzsi2
	.def	__clzsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzsi2
__clzsi2:
	.seh_endprologue
	xor	r8d, r8d
	cmp	ecx, 65535
	mov	edx, ecx
	mov	ecx, 16
	setbe	r8b
	xor	eax, eax
	sal	r8d, 4
	sub	ecx, r8d
	shr	edx, cl
	mov	ecx, 8
	test	dh, -1
	sete	al
	sal	eax, 3
	sub	ecx, eax
	add	r8d, eax
	xor	eax, eax
	shr	edx, cl
	mov	ecx, 4
	test	dl, -16
	sete	al
	sal	eax, 2
	sub	ecx, eax
	lea	r9d, [rax+r8]
	xor	r8d, r8d
	mov	eax, 2
	shr	edx, cl
	mov	ecx, eax
	test	dl, 12
	sete	r8b
	add	r8d, r8d
	sub	ecx, r8d
	shr	edx, cl
	sub	eax, edx
	and	edx, 2
	mov	edx, 0
	cmovne	eax, edx
	add	r8d, r9d
	add	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__clzti2
	.def	__clzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzti2
__clzti2:
	.seh_endprologue
	xor	eax, eax
	mov	r8, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 8[rcx]
	test	rcx, rcx
	sete	al
	lea	edx, -1[rax]
	movsx	rdx, edx
	and	rdx, rcx
	test	rcx, rcx
	mov	ecx, 0
	cmove	rcx, r8
	or	rdx, rcx
	bsr	rdx, rdx
	sal	eax, 6
	xor	rdx, 63
	add	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__cmpdi2
	.def	__cmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpdi2
__cmpdi2:
	.seh_endprologue
	xor	eax, eax
	mov	r9, rcx
	mov	r8, rdx
	sar	r9, 32
	sar	r8, 32
	cmp	r9d, r8d
	jl	.L1031
	mov	eax, 2
	jg	.L1031
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1031
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1031:
	ret
	.seh_endproc
	.p2align 4
	.globl	__aeabi_lcmp
	.def	__aeabi_lcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_lcmp
__aeabi_lcmp:
	.seh_endprologue
	mov	eax, -1
	mov	r9, rcx
	mov	r8, rdx
	sar	r9, 32
	sar	r8, 32
	cmp	r9d, r8d
	jl	.L1037
	mov	eax, 1
	jg	.L1037
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1037
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1037:
	ret
	.seh_endproc
	.p2align 4
	.globl	__cmpti2
	.def	__cmpti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpti2
__cmpti2:
	.seh_endprologue
	xor	eax, eax
	mov	r9, QWORD PTR [rdx]
	mov	r8, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rdx]
	cmp	QWORD PTR 8[rcx], rdx
	jl	.L1042
	mov	eax, 2
	jg	.L1042
	xor	eax, eax
	cmp	r8, r9
	jb	.L1042
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1042:
	ret
	.seh_endproc
	.p2align 4
	.globl	__ctzsi2
	.def	__ctzsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzsi2
__ctzsi2:
	.seh_endprologue
	xor	edx, edx
	mov	r9d, 2
	test	cx, cx
	mov	eax, ecx
	sete	dl
	sal	edx, 4
	mov	ecx, edx
	shr	eax, cl
	xor	ecx, ecx
	test	al, al
	sete	cl
	sal	ecx, 3
	shr	eax, cl
	add	edx, ecx
	xor	ecx, ecx
	test	al, 15
	sete	cl
	sal	ecx, 2
	shr	eax, cl
	lea	r8d, [rcx+rdx]
	xor	ecx, ecx
	test	al, 3
	sete	cl
	add	ecx, ecx
	shr	eax, cl
	add	ecx, r8d
	and	eax, 3
	mov	edx, eax
	shr	eax
	not	edx
	sub	r9d, eax
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, r9d
	add	eax, ecx
	ret
	.seh_endproc
	.p2align 4
	.globl	__ctzti2
	.def	__ctzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzti2
__ctzti2:
	.seh_endprologue
	xor	eax, eax
	mov	r8, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	test	r8, r8
	cmovne	rdx, rax
	sete	al
	movzx	eax, al
	lea	ecx, -1[rax]
	sal	eax, 6
	movsx	rcx, ecx
	and	rcx, r8
	or	rdx, rcx
	rep bsf	rdx, rdx
	add	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__ffsti2
	.def	__ffsti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ffsti2
__ffsti2:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	test	rax, rax
	jne	.L1051
	xor	eax, eax
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	mov	edx, 0
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1051:
	rep bsf	rax, rax
	add	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__lshrdi3
	.def	__lshrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrdi3
__lshrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1055
	shr	r8, 32
	lea	ecx, -32[rdx]
	xor	eax, eax
	shr	r8d, cl
.L1056:
	sal	rax, 32
	or	rax, r8
.L1054:
	ret
	.p2align 4,,10
	.p2align 3
.L1055:
	mov	rax, rcx
	test	edx, edx
	je	.L1054
	mov	r9, rcx
	mov	ecx, edx
	shr	r9, 32
	mov	eax, r9d
	shr	eax, cl
	mov	ecx, 32
	sub	ecx, edx
	sal	r9d, cl
	mov	ecx, edx
	shr	r8d, cl
	or	r8d, r9d
	jmp	.L1056
	.seh_endproc
	.p2align 4
	.globl	__lshrti3
	.def	__lshrti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrti3
__lshrti3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rax, QWORD PTR 8[rcx]
	test	dl, 64
	je	.L1061
	lea	ecx, -64[rdx]
	xor	r10d, r10d
	shr	rax, cl
.L1062:
	mov	rdx, rax
	mov	rax, r10
.L1063:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	rcx, QWORD PTR 8[rsp]
	movq	xmm1, rax
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L1061:
	test	edx, edx
	je	.L1064
	mov	r10, rax
	mov	ecx, edx
	shr	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L1062
	.p2align 4,,10
	.p2align 3
.L1064:
	mov	rdx, r8
	jmp	.L1063
	.seh_endproc
	.p2align 4
	.globl	__muldsi3
	.def	__muldsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldsi3
__muldsi3:
	.seh_endprologue
	movzx	r8d, cx
	movzx	eax, dx
	shr	ecx, 16
	mov	r9d, r8d
	shr	edx, 16
	imul	r9d, eax
	imul	eax, ecx
	imul	r8d, edx
	mov	r10d, r9d
	imul	ecx, edx
	movzx	r9d, r9w
	shr	r10d, 16
	add	eax, r10d
	movzx	r10d, ax
	shr	eax, 16
	add	r8d, r10d
	add	eax, ecx
	mov	r10d, r8d
	shr	r8d, 16
	lea	edx, [rax+r8]
	sal	r10d, 16
	sal	rdx, 32
	lea	eax, [r9+r10]
	or	rax, rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	__muldi3_compiler_rt
	.def	__muldi3_compiler_rt;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3_compiler_rt
__muldi3_compiler_rt:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r8, rcx
	mov	rcx, rdx
	movzx	edx, r8w
	movzx	eax, cx
	mov	r10d, r8d
	mov	r9d, edx
	shr	r10d, 16
	imul	r9d, eax
	imul	eax, r10d
	mov	r11d, r9d
	movzx	r9d, r9w
	shr	r11d, 16
	add	eax, r11d
	mov	r11d, ecx
	shr	r11d, 16
	movzx	ebx, ax
	shr	eax, 16
	imul	edx, r11d
	imul	r10d, r11d
	add	edx, ebx
	add	eax, r10d
	mov	ebx, edx
	shr	edx, 16
	add	edx, eax
	sal	ebx, 16
	mov	edx, edx
	lea	eax, [r9+rbx]
	sal	rdx, 32
	or	rax, rdx
	mov	rdx, rcx
	sar	rdx, 32
	mov	r9, rax
	mov	eax, eax
	imul	edx, r8d
	sar	r8, 32
	sar	r9, 32
	imul	ecx, r8d
	add	edx, r9d
	add	edx, ecx
	mov	edx, edx
	sal	rdx, 32
	or	rax, rdx
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	__mulddi3
	.def	__mulddi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulddi3
__mulddi3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r8d, ecx
	mov	eax, edx
	shr	rcx, 32
	movaps	XMMWORD PTR [rsp], xmm0
	mov	r9, r8
	shr	rdx, 32
	imul	r9, rax
	imul	rax, rcx
	imul	r8, rdx
	mov	r10, r9
	imul	rcx, rdx
	mov	r9d, r9d
	shr	r10, 32
	add	rax, r10
	mov	r10d, eax
	shr	rax, 32
	add	r8, r10
	add	rax, rcx
	mov	rcx, QWORD PTR 8[rsp]
	mov	r10, r8
	shr	r8, 32
	sal	r10, 32
	mov	QWORD PTR 8[rsp], rcx
	add	rax, r8
	add	r9, r10
	movq	xmm1, rax
	mov	QWORD PTR [rsp], r9
	movdqa	xmm0, XMMWORD PTR [rsp]
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
	.seh_endproc
	.p2align 4
	.globl	__multi3
	.def	__multi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__multi3
__multi3:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	r9, QWORD PTR [rdx]
	mov	eax, r9d
	mov	r8, rcx
	mov	rcx, QWORD PTR [rcx]
	mov	r10, rdx
	mov	edx, ecx
	mov	rbx, rcx
	mov	r11, rdx
	shr	rbx, 32
	imul	rcx, QWORD PTR 8[r10]
	imul	r11, rax
	imul	rax, rbx
	mov	rsi, r11
	mov	r11d, r11d
	shr	rsi, 32
	add	rax, rsi
	mov	rsi, r9
	shr	rsi, 32
	imul	r9, QWORD PTR 8[r8]
	mov	edi, eax
	shr	rax, 32
	imul	rdx, rsi
	imul	rbx, rsi
	add	rdx, rdi
	mov	rdi, rdx
	add	rax, rbx
	shr	rdx, 32
	sal	rdi, 32
	add	rax, rdx
	add	r11, rdi
	mov	QWORD PTR 8[rsp], rax
	add	rcx, rax
	mov	QWORD PTR [rsp], r11
	mov	rax, QWORD PTR [rsp]
	add	rcx, r9
	mov	QWORD PTR 8[rsp], rcx
	mov	QWORD PTR [rsp], rax
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 16
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	__negdi2
	.def	__negdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__negdi2
__negdi2:
	.seh_endprologue
	mov	rax, rcx
	neg	rax
	ret
	.seh_endproc
	.p2align 4
	.globl	__negti2
	.def	__negti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__negti2
__negti2:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	xor	edx, edx
	mov	rax, QWORD PTR [rcx]
	neg	rax
	sbb	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rdx
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.p2align 4
	.globl	__paritydi2
	.def	__paritydi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__paritydi2
__paritydi2:
	.seh_endprologue
	mov	rax, rcx
	shr	rax, 32
	xor	eax, ecx
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
	.seh_endproc
	.p2align 4
	.globl	__parityti2
	.def	__parityti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__parityti2
__parityti2:
	.seh_endprologue
	mov	rdx, QWORD PTR [rcx]
	xor	rdx, QWORD PTR 8[rcx]
	mov	rax, rdx
	sar	rax, 32
	xor	eax, edx
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
	.seh_endproc
	.p2align 4
	.globl	__paritysi2
	.def	__paritysi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__paritysi2
__paritysi2:
	.seh_endprologue
	mov	edx, ecx
	shr	edx, 16
	xor	edx, ecx
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
	.seh_endproc
	.p2align 4
	.globl	__popcountdi2
	.def	__popcountdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountdi2
__popcountdi2:
	.seh_endprologue
	movabs	rdx, 6148914691236517205
	mov	rax, rcx
	shr	rax
	and	rax, rdx
	sub	rcx, rax
	movabs	rax, 3689348814741910323
	mov	rdx, rcx
	and	rcx, rax
	shr	rdx, 2
	and	rdx, rax
	add	rdx, rcx
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
	.seh_endproc
	.p2align 4
	.globl	__popcountsi2
	.def	__popcountsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountsi2
__popcountsi2:
	.seh_endprologue
	mov	eax, ecx
	shr	eax
	and	eax, 1431655765
	sub	ecx, eax
	mov	edx, ecx
	and	ecx, 858993459
	shr	edx, 2
	and	edx, 858993459
	add	edx, ecx
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
	.seh_endproc
	.p2align 4
	.globl	__popcountti2
	.def	__popcountti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountti2
__popcountti2:
	.seh_endprologue
	movabs	r10, 6148914691236517205
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	r8, rax
	mov	r9, rdx
	shrd	r8, rdx, 1
	shr	r9
	and	r8, r10
	and	r9, r10
	movabs	r10, 3689348814741910323
	sub	rax, r8
	sbb	rdx, r9
	mov	r8, rax
	and	rax, r10
	shrd	r8, rdx, 2
	mov	r9, rdx
	and	rdx, r10
	shr	r9, 2
	and	r8, r10
	and	r9, r10
	add	r8, rax
	adc	r9, rdx
	mov	rax, r8
	mov	rdx, r9
	shrd	rax, r9, 4
	shr	rdx, 4
	add	rax, r8
	movabs	r8, 1085102592571150095
	adc	rdx, r9
	and	rax, r8
	and	rdx, r8
	add	rdx, rax
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
	.seh_endproc
	.p2align 4
	.globl	__powidf2
	.def	__powidf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powidf2
__powidf2:
	.seh_endprologue
	movsd	xmm2, QWORD PTR .LC16[rip]
	movapd	xmm1, xmm2
	mov	eax, edx
	test	dl, 1
	je	.L1078
	.p2align 4
	.p2align 3
.L1080:
	mulsd	xmm1, xmm0
.L1078:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1079
	mulsd	xmm0, xmm0
	test	al, 1
	jne	.L1080
.L1084:
	mulsd	xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1080
	jmp	.L1084
	.p2align 4,,10
	.p2align 3
.L1079:
	test	edx, edx
	jns	.L1077
	divsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L1077:
	movapd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	__powisf2
	.def	__powisf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powisf2
__powisf2:
	.seh_endprologue
	movss	xmm2, DWORD PTR .LC18[rip]
	movaps	xmm1, xmm2
	mov	eax, edx
	test	dl, 1
	je	.L1086
	.p2align 4
	.p2align 3
.L1088:
	mulss	xmm1, xmm0
.L1086:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1087
	mulss	xmm0, xmm0
	test	al, 1
	jne	.L1088
.L1092:
	mulss	xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1088
	jmp	.L1092
	.p2align 4,,10
	.p2align 3
.L1087:
	test	edx, edx
	jns	.L1085
	divss	xmm2, xmm1
	movaps	xmm1, xmm2
.L1085:
	movaps	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	__ucmpdi2
	.def	__ucmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpdi2
__ucmpdi2:
	.seh_endprologue
	xor	eax, eax
	mov	r8, rcx
	mov	r9, rdx
	shr	r8, 32
	shr	r9, 32
	cmp	r8d, r9d
	jb	.L1093
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L1093
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1093
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1093:
	ret
	.seh_endproc
	.p2align 4
	.globl	__aeabi_ulcmp
	.def	__aeabi_ulcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_ulcmp
__aeabi_ulcmp:
	.seh_endprologue
	mov	eax, -1
	mov	r8, rcx
	mov	r9, rdx
	shr	r8, 32
	shr	r9, 32
	cmp	r8d, r9d
	jb	.L1099
	mov	eax, 1
	cmp	r9d, r8d
	jb	.L1099
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1099
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1099:
	ret
	.seh_endproc
	.p2align 4
	.globl	__ucmpti2
	.def	__ucmpti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpti2
__ucmpti2:
	.seh_endprologue
	xor	eax, eax
	mov	r8, QWORD PTR [rcx]
	mov	r9, QWORD PTR [rdx]
	mov	rcx, QWORD PTR 8[rcx]
	mov	rdx, QWORD PTR 8[rdx]
	cmp	rcx, rdx
	jb	.L1104
	mov	eax, 2
	cmp	rdx, rcx
	jb	.L1104
	xor	eax, eax
	cmp	r8, r9
	jb	.L1104
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1104:
	ret
	.seh_endproc
.lcomm s.0,7,1
.lcomm seed,8,8
	.section .rdata,"dr"
	.align 32
digits:
	.ascii "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\0"
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
	.set	.LC9,.LC11+4
	.align 4
.LC10:
	.long	1056964608
	.align 8
.LC11:
	.long	0
	.long	1073741824
	.align 8
.LC12:
	.long	0
	.long	1071644672
	.align 16
.LC13:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
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
	.align 4
.LC17:
	.long	1191182336
	.align 4
.LC18:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
