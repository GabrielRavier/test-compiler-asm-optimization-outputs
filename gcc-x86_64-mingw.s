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
	movsx	eax, BYTE PTR [rcx]
	mov	edx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	.L277
	cmp	dl, 32
	je	.L277
	cmp	dl, 43
	je	.L263
	cmp	dl, 45
	jne	.L283
	movsx	eax, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	r9d, eax
	sub	eax, 48
	cmp	eax, 9
	ja	.L272
	mov	r11d, 1
.L266:
	xor	r8d, r8d
	.p2align 6
	.p2align 4
	.p2align 3
.L269:
	lea	edx, [r8+r8*4]
	movsx	ecx, BYTE PTR 1[r10]
	lea	eax, -48[r9]
	add	r10, 1
	add	edx, edx
	movsx	eax, al
	mov	r8d, edx
	mov	r9d, ecx
	sub	ecx, 48
	sub	r8d, eax
	cmp	ecx, 9
	jbe	.L269
	sub	eax, edx
	test	r11d, r11d
	cmove	r8d, eax
	mov	eax, r8d
	ret
	.p2align 4,,10
	.p2align 3
.L283:
	movsx	eax, BYTE PTR [rcx]
	mov	r10, rcx
	xor	r11d, r11d
	mov	r9d, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L266
.L272:
	xor	r8d, r8d
	mov	eax, r8d
	ret
	.p2align 4,,10
	.p2align 3
.L263:
	movsx	eax, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	xor	r11d, r11d
	mov	r9d, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L266
	jmp	.L272
	.seh_endproc
	.p2align 4
	.globl	atol
	.def	atol;	.scl	2;	.type	32;	.endef
	.seh_proc	atol
atol:
	.seh_endprologue
	jmp	atoi
	.seh_endproc
	.p2align 4
	.globl	atoll
	.def	atoll;	.scl	2;	.type	32;	.endef
	.seh_proc	atoll
atoll:
	.seh_endprologue
	jmp	.L308
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L303:
	add	rcx, 1
.L308:
	movsx	eax, BYTE PTR [rcx]
	mov	edx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	.L303
	cmp	dl, 32
	je	.L303
	cmp	dl, 43
	je	.L289
	cmp	dl, 45
	jne	.L309
	movsx	eax, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	r9d, eax
	sub	eax, 48
	cmp	eax, 9
	ja	.L298
	mov	r11d, 1
.L292:
	xor	r8d, r8d
	.p2align 6
	.p2align 4
	.p2align 3
.L295:
	lea	rdx, [r8+r8*4]
	movsx	ecx, BYTE PTR 1[r10]
	lea	eax, -48[r9]
	add	r10, 1
	add	rdx, rdx
	movsx	rax, al
	mov	r8, rdx
	mov	r9d, ecx
	sub	ecx, 48
	sub	r8, rax
	cmp	ecx, 9
	jbe	.L295
	sub	rax, rdx
	test	r11d, r11d
	cmove	r8, rax
	mov	rax, r8
	ret
	.p2align 4,,10
	.p2align 3
.L309:
	movsx	eax, BYTE PTR [rcx]
	mov	r10, rcx
	xor	r11d, r11d
	mov	r9d, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L292
.L298:
	xor	r8d, r8d
	mov	rax, r8
	ret
	.p2align 4,,10
	.p2align 3
.L289:
	movsx	eax, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	xor	r11d, r11d
	mov	r9d, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L292
	jmp	.L298
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
.L323:
	test	rbx, rbx
	je	.L311
.L324:
	mov	r14, rbx
	mov	rcx, r12
	shr	r14
	mov	rsi, r14
	imul	rsi, rdi
	add	rsi, rbp
	mov	rdx, rsi
	call	r13
	test	eax, eax
	js	.L315
	je	.L310
	sub	rbx, 1
	lea	rbp, [rsi+rdi]
	sub	rbx, r14
	test	rbx, rbx
	jne	.L324
.L311:
	xor	esi, esi
.L310:
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
.L315:
	mov	rbx, r14
	jmp	.L323
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
	mov	r14, QWORD PTR 144[rsp]
	mov	r13, QWORD PTR 152[rsp]
	mov	r12, rcx
	mov	rbp, rdx
	mov	rdi, r9
	mov	r15d, r8d
	test	r8d, r8d
	jne	.L326
	jmp	.L329
	.p2align 4,,10
	.p2align 3
.L336:
	sub	r15d, 1
	lea	rbp, [rbx+rdi]
	sar	r15d
	test	r15d, r15d
	je	.L329
.L326:
	mov	esi, r15d
	mov	r8, r13
	mov	rcx, r12
	sar	esi
	movsx	rbx, esi
	imul	rbx, rdi
	add	rbx, rbp
	mov	rdx, rbx
	call	r14
	test	eax, eax
	je	.L325
	jg	.L336
	mov	r15d, esi
	test	r15d, r15d
	jne	.L326
.L329:
	xor	ebx, ebx
.L325:
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
	jne	.L345
	jmp	.L348
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L347:
	movzx	eax, WORD PTR 2[rcx]
	add	rcx, 2
	test	ax, ax
	je	.L348
.L345:
	cmp	dx, ax
	jne	.L347
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L348:
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
	je	.L351
	jmp	.L352
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L353:
	movzx	r8d, WORD PTR [rcx+rax]
	add	rax, 2
	movzx	r9d, WORD PTR -2[rdx+rax]
	cmp	r8w, r9w
	jne	.L352
.L351:
	test	r8w, r8w
	jne	.L353
.L352:
	mov	eax, -1
	cmp	r8w, r9w
	jb	.L350
	xor	eax, eax
	cmp	r9w, r8w
	setb	al
.L350:
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
.L359:
	movzx	r9d, WORD PTR [rdx+r8]
	mov	WORD PTR [rax+r8], r9w
	add	r8, 2
	test	r9w, r9w
	jne	.L359
	ret
	.seh_endproc
	.p2align 4
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	cmp	WORD PTR [rcx], 0
	je	.L364
	mov	rax, rcx
	.p2align 4
	.p2align 4
	.p2align 3
.L363:
	add	rax, 2
	cmp	WORD PTR [rax], 0
	jne	.L363
	sub	rax, rcx
	sar	rax
	ret
	.p2align 4,,10
	.p2align 3
.L364:
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
	jne	.L367
	jmp	.L373
	.p2align 4,,10
	.p2align 3
.L378:
	test	ax, ax
	je	.L371
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L373
.L367:
	movzx	eax, WORD PTR [rcx]
	cmp	WORD PTR [rdx], ax
	je	.L378
.L371:
	movzx	ecx, WORD PTR [rcx]
	movzx	eax, WORD PTR [rdx]
	cmp	cx, ax
	jb	.L379
	cmp	ax, cx
	setb	al
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L379:
	mov	eax, -1
	ret
	.p2align 4,,10
	.p2align 3
.L373:
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
	jne	.L381
	jmp	.L384
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L383:
	add	rcx, 2
	sub	r8, 1
	je	.L384
.L381:
	cmp	WORD PTR [rcx], dx
	jne	.L383
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L384:
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
	jne	.L387
	jmp	.L392
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L389:
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L392
.L387:
	movzx	eax, WORD PTR [rcx]
	cmp	ax, WORD PTR [rdx]
	je	.L389
	movzx	edx, WORD PTR [rdx]
	cmp	ax, dx
	jb	.L395
	cmp	dx, ax
	setb	al
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L392:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L395:
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
	je	.L397
	add	r8, r8
	call	memcpy
	mov	rcx, rax
.L397:
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
	je	.L409
	mov	r9, rcx
	lea	rcx, [r8+r8]
	sub	r9, rdx
	cmp	r9, rcx
	jnb	.L415
	test	r8, r8
	je	.L409
	sub	r8, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L406:
	movzx	ecx, WORD PTR [rdx+r8*2]
	mov	WORD PTR [rax+r8*2], cx
	sub	r8, 1
	jnb	.L406
.L409:
	ret
	.p2align 4,,10
	.p2align 3
.L415:
	xor	r9d, r9d
	test	r8, r8
	je	.L409
	.p2align 5
	.p2align 4
	.p2align 3
.L404:
	movzx	ecx, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], cx
	add	r9, 1
	cmp	r9, r8
	jne	.L404
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
	je	.L417
	xor	r9d, r9d
	test	r8b, 1
	je	.L418
	mov	r9d, 1
	mov	WORD PTR [rax], dx
	cmp	r9, r8
	je	.L417
	.p2align 5
	.p2align 4
	.p2align 3
.L418:
	mov	WORD PTR [rax+r9*2], cx
	mov	WORD PTR 2[rax+r9*2], cx
	add	r9, 2
	cmp	r9, r8
	jne	.L418
.L417:
	ret
	.seh_endproc
	.p2align 4
	.globl	bcopy
	.def	bcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	bcopy
bcopy:
	.seh_endprologue
	cmp	rcx, rdx
	jnb	.L429
	test	r8, r8
	je	.L428
	.p2align 5
	.p2align 4
	.p2align 3
.L431:
	movzx	eax, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[rdx+r8], al
	sub	r8, 1
	jne	.L431
.L428:
	ret
	.p2align 4,,10
	.p2align 3
.L429:
	je	.L428
	test	r8, r8
	je	.L428
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L432:
	movzx	r9d, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx+rax], r9b
	add	rax, 1
	cmp	rax, r8
	jne	.L432
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
	jmp	.L457
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L455:
	cmp	ecx, 32
	je	.L459
.L457:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L455
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L459:
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
	je	.L460
	mov	eax, ecx
	and	eax, 1
	jne	.L460
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L462:
	sar	ecx
	add	eax, 1
	test	cl, 1
	je	.L462
.L460:
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
	ja	.L467
	xor	eax, eax
	comiss	xmm0, DWORD PTR .LC4[rip]
	seta	al
.L467:
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
	ja	.L470
	xor	eax, eax
	comisd	xmm0, QWORD PTR .LC6[rip]
	seta	al
.L470:
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
	ja	.L476
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L473
	.p2align 4,,10
	.p2align 3
.L476:
	fstp	st(0)
.L473:
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
	jp	.L479
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm1, xmm0
	jp	.L486
	jne	.L486
.L479:
	ret
	.p2align 4,,10
	.p2align 3
.L486:
	movss	xmm1, DWORD PTR .LC9[rip]
	test	edx, edx
	jns	.L481
	movss	xmm1, DWORD PTR .LC10[rip]
.L481:
	test	dl, 1
	je	.L482
	.p2align 4
	.p2align 3
.L483:
	mulss	xmm0, xmm1
.L482:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L479
	mulss	xmm1, xmm1
	test	dl, 1
	jne	.L483
.L493:
	mulss	xmm1, xmm1
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L483
	jmp	.L493
	.seh_endproc
	.p2align 4
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L495
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm1, xmm0
	jp	.L502
	jne	.L502
.L495:
	ret
	.p2align 4,,10
	.p2align 3
.L502:
	movsd	xmm1, QWORD PTR .LC11[rip]
	test	edx, edx
	jns	.L497
	movsd	xmm1, QWORD PTR .LC12[rip]
.L497:
	test	dl, 1
	je	.L498
	.p2align 4
	.p2align 3
.L499:
	mulsd	xmm0, xmm1
.L498:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L495
	mulsd	xmm1, xmm1
	test	dl, 1
	jne	.L499
.L509:
	mulsd	xmm1, xmm1
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L499
	jmp	.L509
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
	jp	.L511
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L518
	jne	.L518
	jmp	.L511
	.p2align 4,,10
	.p2align 3
.L527:
	fstp	st(0)
.L511:
	fstp	TBYTE PTR [rax]
	ret
	.p2align 4,,10
	.p2align 3
.L518:
	test	r8d, r8d
	js	.L525
	fld	DWORD PTR .LC9[rip]
.L513:
	test	r8b, 1
	je	.L514
	.p2align 4
	.p2align 3
.L515:
	fmul	st(1), st
.L514:
	mov	edx, r8d
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	je	.L527
	fmul	st, st(0)
	test	r8b, 1
	jne	.L515
.L526:
	mov	edx, r8d
	fmul	st, st(0)
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	test	r8b, 1
	jne	.L515
	jmp	.L526
	.p2align 4,,10
	.p2align 3
.L525:
	fld	DWORD PTR .LC10[rip]
	jmp	.L513
	.seh_endproc
	.p2align 4
	.globl	memxor
	.def	memxor;	.scl	2;	.type	32;	.endef
	.seh_proc	memxor
memxor:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L529
	add	r8, rdx
	mov	r9, rcx
	.p2align 5
	.p2align 4
	.p2align 3
.L530:
	add	rdx, 1
	add	r9, 1
	movzx	r10d, BYTE PTR -1[rdx]
	xor	BYTE PTR -1[r9], r10b
	cmp	r8, rdx
	jne	.L530
.L529:
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
	je	.L536
	.p2align 4
	.p2align 4
	.p2align 3
.L537:
	add	r9, 1
	cmp	BYTE PTR [r9], 0
	jne	.L537
.L536:
	test	r8, r8
	jne	.L538
	jmp	.L539
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L540:
	add	rdx, 1
	add	r9, 1
	sub	r8, 1
	je	.L539
.L538:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [r9], r10b
	test	r10b, r10b
	jne	.L540
	ret
	.p2align 4,,10
	.p2align 3
.L539:
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
	je	.L548
.L549:
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L551
.L548:
	ret
	.p2align 4,,10
	.p2align 3
.L551:
	add	rax, 1
	cmp	rdx, rax
	jne	.L549
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
	je	.L561
.L557:
	mov	r8, rdx
	jmp	.L560
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L559:
	add	r8, 1
	cmp	r9b, r10b
	je	.L558
.L560:
	movzx	r9d, BYTE PTR [r8]
	test	r9b, r9b
	jne	.L559
	movzx	r10d, BYTE PTR 1[rax]
	add	rax, 1
	test	r10b, r10b
	jne	.L557
.L561:
	xor	eax, eax
.L558:
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
.L565:
	movsx	r9d, BYTE PTR [rcx]
	cmp	edx, r9d
	cmove	r8, rcx
	add	rcx, 1
	test	r9b, r9b
	jne	.L565
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
	mov	rax, rcx
	test	dl, dl
	je	.L579
	mov	rcx, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L569:
	add	rcx, 1
	cmp	BYTE PTR [rcx], 0
	jne	.L569
	mov	r8, rax
	sub	rcx, rsi
	je	.L567
	lea	rbx, -1[rsi+rcx]
	jmp	.L576
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L590:
	add	rax, 1
	test	cl, cl
	je	.L589
.L576:
	movzx	ecx, BYTE PTR [rax]
	cmp	cl, dl
	jne	.L590
	mov	r8d, edx
	mov	rcx, rsi
	mov	r9, rax
	jmp	.L571
	.p2align 4,,10
	.p2align 3
.L591:
	cmp	r10b, r8b
	sete	r11b
	test	r10b, r10b
	setne	r10b
	test	r11b, r10b
	je	.L572
	movzx	r8d, BYTE PTR 1[r9]
	add	r9, 1
	add	rcx, 1
	test	r8b, r8b
	je	.L572
.L571:
	movzx	r10d, BYTE PTR [rcx]
	cmp	rcx, rbx
	jne	.L591
.L572:
	cmp	r8b, BYTE PTR [rcx]
	je	.L579
	add	rax, 1
	jmp	.L576
	.p2align 4,,10
	.p2align 3
.L589:
	xor	r8d, r8d
.L567:
	mov	rax, r8
	pop	rbx
	pop	rsi
	ret
.L579:
	mov	r8, rax
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
	ja	.L602
	comisd	xmm0, xmm2
	jbe	.L596
	comisd	xmm2, xmm1
	ja	.L595
.L596:
	ret
	.p2align 4,,10
	.p2align 3
.L602:
	comisd	xmm1, xmm2
	jbe	.L596
.L595:
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
	mov	r10, rcx
	test	r9, r9
	je	.L603
	cmp	rdx, r9
	jb	.L611
	sub	rdx, r9
	add	rdx, rcx
	jc	.L611
	movzx	r11d, BYTE PTR [r8]
	jmp	.L608
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L605:
	cmp	rdx, rcx
	jb	.L611
.L608:
	movzx	eax, BYTE PTR [rcx]
	mov	r10, rcx
	add	rcx, 1
	cmp	al, r11b
	jne	.L605
	cmp	r9, 1
	je	.L603
	mov	eax, 1
	.p2align 5
	.p2align 4
	.p2align 3
.L606:
	movzx	ebx, BYTE PTR [r8+rax]
	cmp	BYTE PTR [r10+rax], bl
	jne	.L605
	add	rax, 1
	cmp	r9, rax
	jne	.L606
.L603:
	mov	rax, r10
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L611:
	xor	r10d, r10d
	mov	rax, r10
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
	je	.L616
	call	memmove
	mov	rcx, rax
.L616:
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
	ja	.L644
	movsd	xmm2, QWORD PTR .LC16[rip]
	xor	ecx, ecx
	comisd	xmm0, xmm2
	jb	.L645
.L623:
	movsd	xmm1, QWORD PTR .LC12[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L630:
	mulsd	xmm0, xmm1
	add	eax, 1
	comisd	xmm0, xmm2
	jnb	.L630
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L620
.L647:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L620:
	ret
	.p2align 4,,10
	.p2align 3
.L645:
	movsd	xmm1, QWORD PTR .LC12[rip]
	comisd	xmm1, xmm0
	jbe	.L626
	ucomisd	xmm0, xmm3
	jp	.L636
	jne	.L636
.L626:
	mov	DWORD PTR [rdx], 0
	ret
	.p2align 4,,10
	.p2align 3
.L644:
	movsd	xmm1, QWORD PTR .LC14[rip]
	movapd	xmm2, xmm0
	xorpd	xmm2, XMMWORD PTR .LC13[rip]
	comisd	xmm1, xmm0
	jb	.L646
	movapd	xmm0, xmm2
	mov	ecx, 1
	movsd	xmm2, QWORD PTR .LC16[rip]
	jmp	.L623
	.p2align 4,,10
	.p2align 3
.L646:
	comisd	xmm0, QWORD PTR .LC15[rip]
	jbe	.L626
	movsd	xmm1, QWORD PTR .LC12[rip]
	mov	ecx, 1
.L624:
	movapd	xmm0, xmm2
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L632:
	addsd	xmm0, xmm0
	sub	eax, 1
	comisd	xmm1, xmm0
	ja	.L632
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	jne	.L647
	jmp	.L620
.L636:
	movapd	xmm2, xmm0
	xor	ecx, ecx
	jmp	.L624
	.seh_endproc
	.p2align 4
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	xor	r8d, r8d
	test	rcx, rcx
	je	.L648
	.p2align 5
	.p2align 4
	.p2align 3
.L650:
	mov	rax, rcx
	and	eax, 1
	neg	rax
	and	rax, rdx
	add	rdx, rdx
	add	r8, rax
	shr	rcx
	jne	.L650
.L648:
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
	jb	.L654
	jmp	.L655
	.p2align 4,,10
	.p2align 3
.L657:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L656
	test	eax, eax
	je	.L656
.L654:
	test	edx, edx
	jns	.L657
.L655:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L660:
	cmp	ecx, edx
	jb	.L659
	sub	ecx, edx
	or	r9d, eax
.L659:
	shr	edx
	shr	eax
	jne	.L660
	test	r8, r8
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L656:
	xor	r9d, r9d
	test	eax, eax
	jne	.L655
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
	je	.L675
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	r8d, -1[rax]
.L675:
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
	je	.L678
	bsr	rax, rax
	xor	rax, 63
	lea	r8d, -1[rax]
.L678:
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
	je	.L681
	.p2align 5
	.p2align 4
	.p2align 3
.L683:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L683
.L681:
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
	jb	.L690
	mov	edx, r8d
	add	rdx, r9
	cmp	rdx, rcx
	jnb	.L701
.L690:
	lea	r11d, 0[0+r10*8]
	xor	edx, edx
	test	r10d, r10d
	je	.L689
	.p2align 5
	.p2align 4
	.p2align 3
.L693:
	mov	r10, QWORD PTR [r9+rdx]
	mov	QWORD PTR [rcx+rdx], r10
	add	rdx, 8
	cmp	r11, rdx
	jne	.L693
.L689:
	cmp	eax, r8d
	jnb	.L686
	.p2align 5
	.p2align 4
	.p2align 3
.L694:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
	cmp	eax, r8d
	jb	.L694
.L686:
	ret
	.p2align 4,,10
	.p2align 3
.L701:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L686
	.p2align 4
	.p2align 4
	.p2align 3
.L695:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	jnb	.L695
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
	jb	.L706
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L719
.L706:
	lea	r10d, [r9+r9]
	xor	eax, eax
	test	r9d, r9d
	je	.L705
	.p2align 5
	.p2align 4
	.p2align 3
.L709:
	movzx	r9d, WORD PTR [rdx+rax]
	mov	WORD PTR [rcx+rax], r9w
	add	rax, 2
	cmp	r10, rax
	jne	.L709
.L705:
	test	r8b, 1
	je	.L702
	lea	eax, -1[r8]
	movzx	edx, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], dl
.L702:
	ret
	.p2align 4,,10
	.p2align 3
.L719:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L702
	.p2align 4
	.p2align 4
	.p2align 3
.L711:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	jnb	.L711
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
	jb	.L724
	mov	edx, r8d
	add	rdx, r9
	cmp	rdx, rcx
	jnb	.L735
.L724:
	lea	r11d, 0[0+r10*4]
	xor	edx, edx
	test	r10d, r10d
	je	.L723
	.p2align 5
	.p2align 4
	.p2align 3
.L727:
	mov	r10d, DWORD PTR [r9+rdx]
	mov	DWORD PTR [rcx+rdx], r10d
	add	rdx, 4
	cmp	r11, rdx
	jne	.L727
.L723:
	cmp	eax, r8d
	jnb	.L720
	.p2align 5
	.p2align 4
	.p2align 3
.L728:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
	cmp	eax, r8d
	jb	.L728
.L720:
	ret
	.p2align 4,,10
	.p2align 3
.L735:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L720
	.p2align 4
	.p2align 4
	.p2align 3
.L729:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	jnb	.L729
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
	js	.L744
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L744:
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
	js	.L747
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L747:
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
	xor	eax, eax
	mov	r8d, 15
	movzx	ecx, cx
	.p2align 5
	.p2align 4
	.p2align 3
.L752:
	mov	edx, r8d
	sub	edx, eax
	bt	ecx, edx
	jc	.L750
	add	eax, 1
	cmp	eax, 16
	jne	.L752
.L750:
	ret
	.seh_endproc
	.p2align 4
	.globl	__ctzhi2
	.def	__ctzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzhi2
__ctzhi2:
	.seh_endprologue
	xor	eax, eax
	movzx	ecx, cx
	.p2align 4
	.p2align 4
	.p2align 3
.L756:
	bt	ecx, eax
	jc	.L754
	add	eax, 1
	cmp	eax, 16
	jne	.L756
.L754:
	ret
	.seh_endproc
	.p2align 4
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	comiss	xmm0, DWORD PTR .LC17[rip]
	jnb	.L764
	cvttss2si	eax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L764:
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
	xor	eax, eax
	movzx	r8d, cx
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L766:
	mov	edx, r8d
	sar	edx, cl
	add	ecx, 1
	and	edx, 1
	add	eax, edx
	cmp	ecx, 16
	jne	.L766
	and	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__popcounthi2
	.def	__popcounthi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcounthi2
__popcounthi2:
	.seh_endprologue
	xor	edx, edx
	movzx	r8d, cx
	xor	ecx, ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L769:
	mov	eax, r8d
	sar	eax, cl
	add	ecx, 1
	and	eax, 1
	add	edx, eax
	cmp	ecx, 16
	jne	.L769
	mov	eax, edx
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
	je	.L771
	.p2align 5
	.p2align 4
	.p2align 3
.L773:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L773
.L771:
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
	je	.L776
	test	edx, edx
	je	.L776
	.p2align 5
	.p2align 4
	.p2align 3
.L778:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	r8d, eax
	shr	edx
	jne	.L778
.L776:
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
	jb	.L784
	jmp	.L785
	.p2align 4,,10
	.p2align 3
.L787:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L786
	test	eax, eax
	je	.L786
.L784:
	test	edx, edx
	jns	.L787
.L785:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L790:
	cmp	ecx, edx
	jb	.L789
	sub	ecx, edx
	or	r9d, eax
.L789:
	shr	edx
	shr	eax
	jne	.L790
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L786:
	xor	r9d, r9d
	test	eax, eax
	jne	.L785
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
	ja	.L805
	xor	eax, eax
	comiss	xmm0, xmm1
	seta	al
.L805:
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
	ja	.L808
	xor	eax, eax
	comisd	xmm0, xmm1
	seta	al
.L808:
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
	js	.L822
	je	.L818
	xor	r11d, r11d
.L815:
	mov	r8d, 1
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L817:
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
	jne	.L817
	mov	eax, r9d
	neg	eax
	test	r11d, r11d
	cmovne	r9d, eax
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L822:
	neg	edx
	mov	r11d, 1
	jmp	.L815
	.p2align 4,,10
	.p2align 3
.L818:
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
	xor	r10d, r10d
	test	ecx, ecx
	jns	.L824
	neg	ecx
	mov	r10d, 1
.L824:
	test	edx, edx
	jns	.L825
	neg	edx
	xor	r10d, 1
.L825:
	mov	r9d, ecx
	mov	r8d, 1
	cmp	edx, ecx
	jb	.L826
	jmp	.L827
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L845:
	test	r8d, r8d
	je	.L844
.L826:
	add	edx, edx
	add	r8d, r8d
	cmp	edx, ecx
	jb	.L845
	test	r8d, r8d
	je	.L844
.L827:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L832:
	cmp	r9d, edx
	jb	.L831
	sub	r9d, edx
	or	eax, r8d
.L831:
	shr	edx
	shr	r8d
	jne	.L832
.L828:
	mov	edx, eax
	neg	edx
	test	r10d, r10d
	cmovne	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L844:
	xor	eax, eax
	jmp	.L828
	.seh_endproc
	.p2align 4
	.globl	__modsi3
	.def	__modsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__modsi3
__modsi3:
	.seh_endprologue
	xor	r9d, r9d
	test	ecx, ecx
	jns	.L847
	neg	ecx
	mov	r9d, 1
.L847:
	mov	eax, edx
	mov	r8d, 1
	neg	eax
	cmovns	edx, eax
	mov	eax, ecx
	cmp	edx, ecx
	jb	.L848
	jmp	.L854
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L867:
	test	r8d, r8d
	je	.L866
.L848:
	add	edx, edx
	add	r8d, r8d
	cmp	edx, ecx
	jb	.L867
	test	r8d, r8d
	je	.L866
	.p2align 4
	.p2align 4
	.p2align 3
.L854:
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	cmovnb	eax, ecx
	shr	edx
	shr	r8d
	jne	.L854
.L850:
	mov	edx, eax
	neg	edx
	test	r9d, r9d
	cmovne	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L866:
	mov	eax, ecx
	jmp	.L850
	.seh_endproc
	.p2align 4
	.globl	__udivmodhi4
	.def	__udivmodhi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodhi4
__udivmodhi4:
	.seh_endprologue
	mov	r9d, 1
	mov	r10d, ecx
	mov	eax, edx
	cmp	dx, cx
	jb	.L869
	jmp	.L870
	.p2align 4,,10
	.p2align 3
.L872:
	add	eax, eax
	add	r9d, r9d
	cmp	ax, r10w
	jnb	.L871
	test	r9w, r9w
	je	.L871
.L869:
	test	ax, ax
	jns	.L872
.L870:
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L875:
	cmp	r10w, ax
	jb	.L874
	sub	r10d, eax
	or	edx, r9d
.L874:
	shr	ax
	shr	r9w
	jne	.L875
	test	r8d, r8d
	cmovne	edx, r10d
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L871:
	xor	edx, edx
	test	r9w, r9w
	jne	.L870
	test	r8d, r8d
	cmovne	edx, r10d
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__udivmodsi4_libgcc
	.def	__udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jb	.L891
	jmp	.L892
	.p2align 4,,10
	.p2align 3
.L894:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L893
	test	eax, eax
	je	.L893
.L891:
	test	edx, edx
	jns	.L894
.L892:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L897:
	cmp	ecx, edx
	jb	.L896
	sub	ecx, edx
	or	r9d, eax
.L896:
	shr	edx
	shr	eax
	jne	.L897
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L893:
	xor	r9d, r9d
	test	eax, eax
	jne	.L892
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
	je	.L913
	lea	ecx, -32[rdx]
	xor	eax, eax
	sal	r8d, cl
.L914:
	sal	r8, 32
	or	rax, r8
.L912:
	ret
	.p2align 4,,10
	.p2align 3
.L913:
	mov	rax, rcx
	test	edx, edx
	je	.L912
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
	jmp	.L914
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
	je	.L919
	lea	ecx, -64[rdx]
	xor	r9d, r9d
	sal	rax, cl
.L920:
	mov	rcx, rax
	mov	rax, r9
	mov	rdx, rcx
.L921:
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
.L919:
	test	edx, edx
	je	.L922
	mov	r9, rax
	mov	ecx, edx
	sal	r9, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rax, cl
	mov	ecx, edx
	sal	r8, cl
	or	rax, r8
	jmp	.L920
	.p2align 4,,10
	.p2align 3
.L922:
	mov	rdx, r8
	jmp	.L921
	.seh_endproc
	.p2align 4
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L924
	sar	r8, 32
	lea	ecx, -32[rdx]
	mov	eax, r8d
	sar	r8d, cl
	sar	eax, 31
.L925:
	sal	rax, 32
	or	rax, r8
.L923:
	ret
	.p2align 4,,10
	.p2align 3
.L924:
	mov	rax, rcx
	test	edx, edx
	je	.L923
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
	jmp	.L925
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
	je	.L930
	mov	r10, rax
	lea	ecx, -64[rdx]
	sar	r10, 63
	sar	rax, cl
.L931:
	mov	rdx, rax
	mov	rax, r10
.L932:
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
.L930:
	test	edx, edx
	je	.L933
	mov	r10, rax
	mov	ecx, edx
	sar	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L931
	.p2align 4,,10
	.p2align 3
.L933:
	mov	rdx, r8
	jmp	.L932
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
	jl	.L938
	mov	eax, 2
	jg	.L938
	xor	eax, eax
	cmp	ecx, edx
	jb	.L938
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L938:
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
	jl	.L944
	mov	eax, 1
	jg	.L944
	mov	eax, -1
	cmp	ecx, edx
	jb	.L944
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L944:
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
	jl	.L949
	mov	eax, 2
	jg	.L949
	xor	eax, eax
	cmp	r8, r9
	jb	.L949
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L949:
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
	jne	.L958
	xor	eax, eax
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	mov	edx, 0
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L958:
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
	je	.L962
	shr	r8, 32
	lea	ecx, -32[rdx]
	xor	eax, eax
	shr	r8d, cl
.L963:
	sal	rax, 32
	or	rax, r8
.L961:
	ret
	.p2align 4,,10
	.p2align 3
.L962:
	mov	rax, rcx
	test	edx, edx
	je	.L961
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
	jmp	.L963
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
	je	.L968
	lea	ecx, -64[rdx]
	xor	r10d, r10d
	shr	rax, cl
.L969:
	mov	rdx, rax
	mov	rax, r10
.L970:
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
.L968:
	test	edx, edx
	je	.L971
	mov	r10, rax
	mov	ecx, edx
	shr	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L969
	.p2align 4,,10
	.p2align 3
.L971:
	mov	rdx, r8
	jmp	.L970
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
	je	.L985
	.p2align 4
	.p2align 3
.L987:
	mulsd	xmm1, xmm0
.L985:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L986
	mulsd	xmm0, xmm0
	test	al, 1
	jne	.L987
.L991:
	mulsd	xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L987
	jmp	.L991
	.p2align 4,,10
	.p2align 3
.L986:
	test	edx, edx
	jns	.L984
	divsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L984:
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
	je	.L993
	.p2align 4
	.p2align 3
.L995:
	mulss	xmm1, xmm0
.L993:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L994
	mulss	xmm0, xmm0
	test	al, 1
	jne	.L995
.L999:
	mulss	xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L995
	jmp	.L999
	.p2align 4,,10
	.p2align 3
.L994:
	test	edx, edx
	jns	.L992
	divss	xmm2, xmm1
	movaps	xmm1, xmm2
.L992:
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
	jb	.L1000
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L1000
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1000
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1000:
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
	jb	.L1006
	mov	eax, 1
	cmp	r9d, r8d
	jb	.L1006
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1006
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1006:
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
	jb	.L1011
	mov	eax, 2
	cmp	rdx, rcx
	jb	.L1011
	xor	eax, eax
	cmp	r8, r9
	jb	.L1011
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1011:
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
