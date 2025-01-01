	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.globl	make_ti
	.def	make_ti;	.scl	2;	.type	32;	.endef
	.seh_proc	make_ti
make_ti:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r10d, 0
	mov	QWORD PTR [rsp], r10
	mov	QWORD PTR 8[rsp], rcx
	mov	r9, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], r9
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	make_tu
	.def	make_tu;	.scl	2;	.type	32;	.endef
	.seh_proc	make_tu
make_tu:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r10d, 0
	mov	QWORD PTR [rsp], r10
	mov	QWORD PTR 8[rsp], rcx
	mov	r9, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], r9
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	memmove
	.def	memmove;	.scl	2;	.type	32;	.endef
	.seh_proc	memmove
memmove:
	.seh_endprologue
	mov	rax, rcx
	cmp	rdx, rcx
	jnb	.L4
	test	r8, r8
	je	.L5
	.p2align 5
.L6:
	movzx	ecx, BYTE PTR -1[rdx+r8]
	mov	BYTE PTR -1[rax+r8], cl
	sub	r8, 1
	jne	.L6
.L5:
	ret
.L4:
	cmp	rcx, rdx
	je	.L5
	test	r8, r8
	je	.L5
	mov	r9d, 0
	.p2align 5
.L7:
	movzx	ecx, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rax+r9], cl
	add	r9, 1
	cmp	r9, r8
	jne	.L7
	jmp	.L5
	.seh_endproc
	.globl	memccpy
	.def	memccpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memccpy
memccpy:
	.seh_endprologue
	movzx	r8d, r8b
	test	r9, r9
	je	.L12
	.p2align 5
.L11:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [rcx], r10b
	cmp	r10d, r8d
	je	.L12
	add	rdx, 1
	add	rcx, 1
	sub	r9, 1
	jne	.L11
.L12:
	add	rcx, 1
	test	r9, r9
	mov	eax, 0
	cmovne	rax, rcx
	ret
	.seh_endproc
	.globl	memchr
	.def	memchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memchr
memchr:
	.seh_endprologue
	mov	rax, rcx
	movzx	edx, dl
	test	r8, r8
	je	.L19
	.p2align 5
.L18:
	movzx	ecx, BYTE PTR [rax]
	cmp	ecx, edx
	je	.L19
	add	rax, 1
	sub	r8, 1
	jne	.L18
.L19:
	test	r8, r8
	mov	edx, 0
	cmove	rax, rdx
	ret
	.seh_endproc
	.globl	memcmp
	.def	memcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	memcmp
memcmp:
	.seh_endprologue
	test	r8, r8
	je	.L26
	.p2align 5
.L25:
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	jne	.L26
	add	rcx, 1
	add	rdx, 1
	sub	r8, 1
	jne	.L25
.L26:
	mov	eax, 0
	test	r8, r8
	je	.L24
	movzx	eax, BYTE PTR [rcx]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
.L24:
	ret
	.seh_endproc
	.globl	memcpy
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memcpy
memcpy:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	test	r8, r8
	je	.L32
	call	memcpy
.L32:
	mov	rax, rbx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.globl	memrchr
	.def	memrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memrchr
memrchr:
	.seh_endprologue
	movzx	edx, dl
	lea	rax, -1[rcx+r8]
	sub	rcx, 1
	.p2align 5
.L34:
	cmp	rax, rcx
	je	.L37
	mov	r8, rax
	sub	rax, 1
	movzx	r9d, BYTE PTR [r8]
	cmp	r9d, edx
	jne	.L34
	jmp	.L33
.L37:
	mov	r8d, 0
.L33:
	mov	rax, r8
	ret
	.seh_endproc
	.globl	memset
	.def	memset;	.scl	2;	.type	32;	.endef
	.seh_proc	memset
memset:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L39
	add	r8, rcx
	mov	r9, rcx
	mov	rcx, r8
	sub	rcx, rax
	test	cl, 1
	jne	.L45
	.p2align 4
.L40:
	mov	BYTE PTR [r9], dl
	mov	BYTE PTR 1[r9], dl
	add	r9, 2
	cmp	r8, r9
	jne	.L40
.L39:
	ret
.L45:
	mov	BYTE PTR [rax], dl
	add	r9, 1
	cmp	r8, r9
	jne	.L40
	jmp	.L39
	.seh_endproc
	.globl	stpcpy
	.def	stpcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	stpcpy
stpcpy:
	.seh_endprologue
	mov	rax, rcx
	movzx	ecx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], cl
	test	cl, cl
	je	.L47
	.p2align 5
.L48:
	add	rdx, 1
	add	rax, 1
	movzx	ecx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], cl
	test	cl, cl
	jne	.L48
.L47:
	ret
	.seh_endproc
	.globl	strchrnul
	.def	strchrnul;	.scl	2;	.type	32;	.endef
	.seh_proc	strchrnul
strchrnul:
	.seh_endprologue
	mov	rax, rcx
	movzx	edx, dl
	movzx	r8d, BYTE PTR [rcx]
	test	r8b, r8b
	je	.L50
	.p2align 5
.L51:
	cmp	r8d, edx
	je	.L50
	add	rax, 1
	movzx	r8d, BYTE PTR [rax]
	test	r8b, r8b
	jne	.L51
.L50:
	ret
	.seh_endproc
	.globl	strchr
	.def	strchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strchr
strchr:
	.seh_endprologue
	mov	rax, rcx
	.p2align 5
.L58:
	movsx	r8d, BYTE PTR [rax]
	cmp	r8d, edx
	je	.L57
	add	rax, 1
	test	r8b, r8b
	jne	.L58
	mov	eax, 0
.L57:
	ret
	.seh_endproc
	.globl	strcmp
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strcmp
strcmp:
	.seh_endprologue
	movzx	eax, BYTE PTR [rcx]
	movzx	r9d, BYTE PTR [rdx]
	test	al, al
	je	.L61
	cmp	al, r9b
	jne	.L61
	mov	r8d, 1
	.p2align 5
.L62:
	movzx	eax, BYTE PTR [rcx+r8]
	movzx	r9d, BYTE PTR [rdx+r8]
	add	r8, 1
	test	al, al
	je	.L61
	cmp	al, r9b
	je	.L62
.L61:
	sub	eax, r9d
	ret
	.seh_endproc
	.globl	strlen
	.def	strlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strlen
strlen:
	.seh_endprologue
	cmp	BYTE PTR [rcx], 0
	je	.L68
	mov	rax, rcx
	.p2align 4
.L67:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L67
.L66:
	sub	rax, rcx
	ret
.L68:
	mov	rax, rcx
	jmp	.L66
	.seh_endproc
	.globl	strncmp
	.def	strncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strncmp
strncmp:
	.seh_endprologue
	mov	eax, 0
	test	r8, r8
	je	.L70
	movzx	eax, BYTE PTR [rcx]
	test	al, al
	je	.L77
	mov	r9, rdx
	lea	r10, -1[rdx+r8]
.L73:
	movzx	edx, BYTE PTR [r9]
	test	dl, dl
	setne	r8b
	cmp	dl, al
	sete	dl
	test	r8b, dl
	je	.L72
	cmp	r9, r10
	je	.L72
	add	rcx, 1
	add	r9, 1
	movzx	eax, BYTE PTR [rcx]
	test	al, al
	jne	.L73
.L72:
	movzx	edx, BYTE PTR [r9]
	sub	eax, edx
.L70:
	ret
.L77:
	mov	r9, rdx
	jmp	.L72
	.seh_endproc
	.globl	swab
	.def	swab;	.scl	2;	.type	32;	.endef
	.seh_proc	swab
swab:
	.seh_endprologue
	cmp	r8, 1
	jle	.L78
	and	r8, -2
	add	r8, rcx
	.p2align 5
.L80:
	movzx	eax, BYTE PTR 1[rcx]
	mov	BYTE PTR [rdx], al
	movzx	eax, BYTE PTR [rcx]
	mov	BYTE PTR 1[rdx], al
	add	rdx, 2
	add	rcx, 2
	cmp	rcx, r8
	jne	.L80
.L78:
	ret
	.seh_endproc
	.globl	isalpha
	.def	isalpha;	.scl	2;	.type	32;	.endef
	.seh_proc	isalpha
isalpha:
	.seh_endprologue
	or	ecx, 32
	sub	ecx, 97
	cmp	ecx, 25
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	isascii
	.def	isascii;	.scl	2;	.type	32;	.endef
	.seh_proc	isascii
isascii:
	.seh_endprologue
	cmp	ecx, 127
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
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
	.globl	isdigit
	.def	isdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	isdigit
isdigit:
	.seh_endprologue
	sub	ecx, 48
	cmp	ecx, 9
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	isgraph
	.def	isgraph;	.scl	2;	.type	32;	.endef
	.seh_proc	isgraph
isgraph:
	.seh_endprologue
	sub	ecx, 33
	cmp	ecx, 93
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	islower
	.def	islower;	.scl	2;	.type	32;	.endef
	.seh_proc	islower
islower:
	.seh_endprologue
	sub	ecx, 97
	cmp	ecx, 25
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	isprint
	.def	isprint;	.scl	2;	.type	32;	.endef
	.seh_proc	isprint
isprint:
	.seh_endprologue
	sub	ecx, 32
	cmp	ecx, 94
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
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
	.globl	isupper
	.def	isupper;	.scl	2;	.type	32;	.endef
	.seh_proc	isupper
isupper:
	.seh_endprologue
	sub	ecx, 65
	cmp	ecx, 25
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	iswcntrl
	.def	iswcntrl;	.scl	2;	.type	32;	.endef
	.seh_proc	iswcntrl
iswcntrl:
	.seh_endprologue
	movzx	eax, cx
	lea	edx, -127[rax]
	cmp	edx, 32
	jbe	.L94
	cmp	cx, 31
	jbe	.L94
	lea	ecx, -8232[rax]
	mov	edx, 1
	cmp	ecx, 1
	jbe	.L92
	sub	eax, 65529
	cmp	eax, 2
	setbe	dl
	movzx	edx, dl
	jmp	.L92
.L94:
	mov	edx, 1
.L92:
	mov	eax, edx
	ret
	.seh_endproc
	.globl	iswdigit
	.def	iswdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	iswdigit
iswdigit:
	.seh_endprologue
	movzx	ecx, cx
	sub	ecx, 48
	cmp	ecx, 9
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	iswprint
	.def	iswprint;	.scl	2;	.type	32;	.endef
	.seh_proc	iswprint
iswprint:
	.seh_endprologue
	cmp	cx, 254
	jbe	.L103
	movzx	eax, cx
	lea	edx, -8234[rax]
	cmp	edx, 47061
	jbe	.L100
	cmp	cx, 8231
	jbe	.L100
	lea	r8d, -57344[rax]
	mov	edx, 1
	cmp	r8d, 8184
	jbe	.L97
	sub	eax, 65532
	mov	edx, 0
	cmp	eax, 1048579
	ja	.L97
	not	ecx
	test	cx, -2
	setne	dl
	movzx	edx, dl
	jmp	.L97
.L103:
	lea	eax, 1[rcx]
	and	eax, 127
	cmp	eax, 32
	setg	dl
	movzx	edx, dl
.L97:
	mov	eax, edx
	ret
.L100:
	mov	edx, 1
	jmp	.L97
	.seh_endproc
	.globl	iswxdigit
	.def	iswxdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	iswxdigit
iswxdigit:
	.seh_endprologue
	movzx	eax, cx
	sub	eax, 48
	mov	edx, 1
	cmp	eax, 9
	jbe	.L104
	or	ecx, 32
	movzx	ecx, cx
	sub	ecx, 97
	cmp	ecx, 5
	setbe	dl
	movzx	edx, dl
.L104:
	mov	eax, edx
	ret
	.seh_endproc
	.globl	toascii
	.def	toascii;	.scl	2;	.type	32;	.endef
	.seh_proc	toascii
toascii:
	.seh_endprologue
	mov	eax, ecx
	and	eax, 127
	ret
	.seh_endproc
	.globl	fdim
	.def	fdim;	.scl	2;	.type	32;	.endef
	.seh_proc	fdim
fdim:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L108
	ucomisd	xmm1, xmm1
	jp	.L112
	comisd	xmm0, xmm1
	jbe	.L115
	subsd	xmm0, xmm1
.L108:
	ret
.L112:
	movapd	xmm0, xmm1
	jmp	.L108
.L115:
	pxor	xmm0, xmm0
	jmp	.L108
	.seh_endproc
	.globl	fdimf
	.def	fdimf;	.scl	2;	.type	32;	.endef
	.seh_proc	fdimf
fdimf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L116
	ucomiss	xmm1, xmm1
	jp	.L120
	comiss	xmm0, xmm1
	jbe	.L123
	subss	xmm0, xmm1
.L116:
	ret
.L120:
	movaps	xmm0, xmm1
	jmp	.L116
.L123:
	pxor	xmm0, xmm0
	jmp	.L116
	.seh_endproc
	.globl	fmax
	.def	fmax;	.scl	2;	.type	32;	.endef
	.seh_proc	fmax
fmax:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L124
	ucomisd	xmm1, xmm1
	jp	.L130
	movmskpd	eax, xmm0
	and	eax, 1
	movmskpd	edx, xmm1
	and	edx, 1
	cmp	eax, edx
	je	.L126
	test	eax, eax
	jne	.L124
	movapd	xmm1, xmm0
	jmp	.L124
.L126:
	movapd	xmm2, xmm1
	maxsd	xmm2, xmm0
	movapd	xmm1, xmm2
.L124:
	movapd	xmm0, xmm1
	ret
.L130:
	movapd	xmm1, xmm0
	jmp	.L124
	.seh_endproc
	.globl	fmaxf
	.def	fmaxf;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxf
fmaxf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L132
	ucomiss	xmm1, xmm1
	jp	.L138
	movd	eax, xmm0
	and	eax, -2147483648
	movd	edx, xmm1
	and	edx, -2147483648
	cmp	eax, edx
	je	.L134
	test	eax, eax
	jne	.L132
	movaps	xmm1, xmm0
	jmp	.L132
.L134:
	movaps	xmm2, xmm1
	maxss	xmm2, xmm0
	movaps	xmm1, xmm2
.L132:
	movaps	xmm0, xmm1
	ret
.L138:
	movaps	xmm1, xmm0
	jmp	.L132
	.seh_endproc
	.globl	fmaxl
	.def	fmaxl;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxl
fmaxl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L146
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L147
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
	je	.L142
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	jmp	.L141
.L147:
	fstp	st(0)
.L141:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
.L142:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	jmp	.L141
.L146:
	fstp	st(0)
	jmp	.L141
	.seh_endproc
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L153
	ucomisd	xmm1, xmm1
	jp	.L148
	movmskpd	eax, xmm0
	and	eax, 1
	movmskpd	edx, xmm1
	and	edx, 1
	cmp	eax, edx
	je	.L150
	test	eax, eax
	jne	.L148
	movapd	xmm0, xmm1
	jmp	.L148
.L150:
	movapd	xmm2, xmm0
	minsd	xmm2, xmm1
	movapd	xmm0, xmm2
.L148:
	ret
.L153:
	movapd	xmm0, xmm1
	jmp	.L148
	.seh_endproc
	.globl	fminf
	.def	fminf;	.scl	2;	.type	32;	.endef
	.seh_proc	fminf
fminf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L161
	ucomiss	xmm1, xmm1
	jp	.L156
	movd	eax, xmm0
	and	eax, -2147483648
	movd	edx, xmm1
	and	edx, -2147483648
	cmp	eax, edx
	je	.L158
	test	eax, eax
	jne	.L156
	movaps	xmm0, xmm1
	jmp	.L156
.L158:
	movaps	xmm2, xmm0
	minss	xmm2, xmm1
	movaps	xmm0, xmm2
.L156:
	ret
.L161:
	movaps	xmm0, xmm1
	jmp	.L156
	.seh_endproc
	.globl	fminl
	.def	fminl;	.scl	2;	.type	32;	.endef
	.seh_proc	fminl
fminl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L171
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
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	jmp	.L165
.L171:
	fstp	st(0)
.L165:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
.L166:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	jmp	.L165
.L170:
	fstp	st(0)
	jmp	.L165
	.seh_endproc
	.globl	l64a
	.def	l64a;	.scl	2;	.type	32;	.endef
	.seh_proc	l64a
l64a:
	.seh_endprologue
	mov	eax, ecx
	lea	rdx, s.0[rip]
	test	ecx, ecx
	je	.L173
	lea	r8, digits[rip]
	.p2align 5
.L174:
	mov	ecx, eax
	and	ecx, 63
	movzx	ecx, BYTE PTR [r8+rcx]
	mov	BYTE PTR [rdx], cl
	add	rdx, 1
	shr	eax, 6
	jne	.L174
.L173:
	mov	BYTE PTR [rdx], 0
	lea	rax, s.0[rip]
	ret
	.seh_endproc
	.globl	srand
	.def	srand;	.scl	2;	.type	32;	.endef
	.seh_proc	srand
srand:
	.seh_endprologue
	lea	eax, -1[rcx]
	mov	QWORD PTR seed[rip], rax
	ret
	.seh_endproc
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
	.globl	insque
	.def	insque;	.scl	2;	.type	32;	.endef
	.seh_proc	insque
insque:
	.seh_endprologue
	test	rdx, rdx
	je	.L182
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	QWORD PTR [rdx], rcx
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L179
	mov	QWORD PTR 8[rax], rcx
.L179:
	ret
.L182:
	mov	QWORD PTR 8[rcx], 0
	mov	QWORD PTR [rcx], 0
	jmp	.L179
	.seh_endproc
	.globl	remque
	.def	remque;	.scl	2;	.type	32;	.endef
	.seh_proc	remque
remque:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L184
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L184:
	mov	rax, QWORD PTR 8[rcx]
	test	rax, rax
	je	.L183
	mov	rdx, QWORD PTR [rcx]
	mov	QWORD PTR [rax], rdx
.L183:
	ret
	.seh_endproc
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
	mov	r12, rcx
	mov	QWORD PTR 120[rsp], rdx
	mov	r15, r8
	mov	rbp, r9
	mov	r14, QWORD PTR 144[rsp]
	mov	rdi, QWORD PTR [r8]
	test	rdi, rdi
	je	.L187
	mov	rbx, rdx
	mov	esi, 0
.L189:
	mov	r13, rbx
	mov	rdx, rbx
	mov	rcx, r12
	call	r14
	test	eax, eax
	je	.L186
	add	rsi, 1
	add	rbx, rbp
	cmp	rdi, rsi
	jne	.L189
.L187:
	lea	rax, 1[rdi]
	mov	QWORD PTR [r15], rax
	imul	rdi, rbp
	add	rdi, QWORD PTR 120[rsp]
	mov	rcx, rdi
	mov	r8, rbp
	mov	rdx, r12
	call	memcpy
	mov	r13, rdi
.L186:
	mov	rax, r13
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
	mov	rdi, rcx
	mov	rbp, r9
	mov	r13, QWORD PTR 128[rsp]
	mov	r12, QWORD PTR [r8]
	test	r12, r12
	je	.L192
	mov	rbx, rdx
	mov	esi, 0
.L194:
	mov	r14, rbx
	mov	rdx, rbx
	mov	rcx, rdi
	call	r13
	test	eax, eax
	je	.L191
	add	rsi, 1
	add	rbx, rbp
	cmp	r12, rsi
	jne	.L194
.L192:
	mov	r14d, 0
.L191:
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
	.seh_endproc
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
	.globl	atoi
	.def	atoi;	.scl	2;	.type	32;	.endef
	.seh_proc	atoi
atoi:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, rcx
	jmp	.L198
.L199:
	add	rbx, 1
.L198:
	movsx	ecx, BYTE PTR [rbx]
	mov	esi, ecx
	call	isspace
	test	eax, eax
	jne	.L199
	cmp	sil, 43
	je	.L205
	mov	r8d, eax
	cmp	sil, 45
	jne	.L201
	mov	r8d, 1
.L200:
	add	rbx, 1
.L201:
	movsx	ecx, BYTE PTR [rbx]
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	ja	.L203
	.p2align 5
.L202:
	lea	eax, [rax+rax*4]
	add	eax, eax
	add	rbx, 1
	sub	edx, 48
	movsx	edx, dl
	sub	eax, edx
	movsx	ecx, BYTE PTR [rbx]
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L202
.L203:
	mov	edx, eax
	neg	edx
	test	r8d, r8d
	cmove	eax, edx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
.L205:
	mov	r8d, eax
	jmp	.L200
	.seh_endproc
	.globl	atol
	.def	atol;	.scl	2;	.type	32;	.endef
	.seh_proc	atol
atol:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, rcx
	jmp	.L210
.L211:
	add	rbx, 1
.L210:
	movsx	ecx, BYTE PTR [rbx]
	mov	esi, ecx
	call	isspace
	test	eax, eax
	jne	.L211
	cmp	sil, 43
	je	.L217
	mov	r8d, eax
	cmp	sil, 45
	jne	.L213
	mov	r8d, 1
.L212:
	add	rbx, 1
.L213:
	movsx	ecx, BYTE PTR [rbx]
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	ja	.L215
	.p2align 5
.L214:
	lea	eax, [rax+rax*4]
	add	eax, eax
	add	rbx, 1
	sub	edx, 48
	movsx	edx, dl
	sub	eax, edx
	movsx	ecx, BYTE PTR [rbx]
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L214
.L215:
	mov	edx, eax
	neg	edx
	test	r8d, r8d
	cmove	eax, edx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
.L217:
	mov	r8d, eax
	jmp	.L212
	.seh_endproc
	.globl	atoll
	.def	atoll;	.scl	2;	.type	32;	.endef
	.seh_proc	atoll
atoll:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, rcx
	jmp	.L222
.L223:
	add	rbx, 1
.L222:
	movsx	ecx, BYTE PTR [rbx]
	mov	esi, ecx
	call	isspace
	test	eax, eax
	jne	.L223
	cmp	sil, 43
	je	.L224
	cmp	sil, 45
	jne	.L225
	mov	eax, 1
.L224:
	add	rbx, 1
.L225:
	movsx	r8d, BYTE PTR [rbx]
	mov	ecx, r8d
	sub	r8d, 48
	mov	edx, 0
	cmp	r8d, 9
	ja	.L227
	.p2align 6
.L226:
	lea	rdx, [rdx+rdx*4]
	add	rdx, rdx
	add	rbx, 1
	sub	ecx, 48
	movsx	rcx, cl
	sub	rdx, rcx
	movsx	r8d, BYTE PTR [rbx]
	mov	ecx, r8d
	sub	r8d, 48
	cmp	r8d, 9
	jbe	.L226
.L227:
	mov	rcx, rdx
	neg	rcx
	test	eax, eax
	cmove	rdx, rcx
	mov	rax, rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
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
	mov	r13, rcx
	mov	r12, rdx
	mov	rbx, r8
	mov	rbp, r9
	mov	r14, QWORD PTR 128[rsp]
	test	r8, r8
	jne	.L236
.L233:
	mov	esi, 0
.L232:
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
.L237:
	mov	rbx, rdi
.L234:
	test	rbx, rbx
	je	.L233
.L236:
	mov	rdi, rbx
	shr	rdi
	mov	rsi, rdi
	imul	rsi, rbp
	add	rsi, r12
	mov	rdx, rsi
	mov	rcx, r13
	call	r14
	test	eax, eax
	js	.L237
	jle	.L232
	lea	r12, [rsi+rbp]
	sub	rbx, 1
	sub	rbx, rdi
	jmp	.L234
	.seh_endproc
	.globl	bsearch_r
	.def	bsearch_r;	.scl	2;	.type	32;	.endef
	.seh_proc	bsearch_r
bsearch_r:
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
	mov	r12, rcx
	mov	rbp, rdx
	mov	rdi, r9
	mov	r14, QWORD PTR 128[rsp]
	mov	r13, QWORD PTR 136[rsp]
	mov	esi, r8d
	test	r8d, r8d
	jne	.L243
.L240:
	mov	ebx, 0
.L239:
	mov	rax, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
.L242:
	sar	esi
	je	.L240
.L243:
	mov	ebx, esi
	sar	ebx
	movsx	rbx, ebx
	imul	rbx, rdi
	add	rbx, rbp
	mov	r8, r13
	mov	rdx, rbx
	mov	rcx, r12
	call	r14
	test	eax, eax
	je	.L239
	jle	.L242
	lea	rbp, [rbx+rdi]
	sub	esi, 1
	jmp	.L242
	.seh_endproc
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
	.globl	imaxdiv
	.def	imaxdiv;	.scl	2;	.type	32;	.endef
	.seh_proc	imaxdiv
imaxdiv:
	.seh_endprologue
	mov	rax, rdx
	cqo
	idiv	r8
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	rax, rcx
	ret
	.seh_endproc
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
	.globl	lldiv
	.def	lldiv;	.scl	2;	.type	32;	.endef
	.seh_proc	lldiv
lldiv:
	.seh_endprologue
	mov	rax, rdx
	cqo
	idiv	r8
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	rax, rcx
	ret
	.seh_endproc
	.globl	wcschr
	.def	wcschr;	.scl	2;	.type	32;	.endef
	.seh_proc	wcschr
wcschr:
	.seh_endprologue
	mov	rax, rcx
	mov	r8d, edx
	movzx	ecx, WORD PTR [rcx]
	cmp	cx, dx
	je	.L253
	test	cx, cx
	je	.L253
	.p2align 5
.L254:
	add	rax, 2
	movzx	ecx, WORD PTR [rax]
	cmp	cx, r8w
	je	.L253
	test	cx, cx
	jne	.L254
.L253:
	test	cx, cx
	mov	edx, 0
	cmove	rax, rdx
	ret
	.seh_endproc
	.globl	wcscmp
	.def	wcscmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscmp
wcscmp:
	.seh_endprologue
	movzx	r8d, WORD PTR [rcx]
	movzx	r9d, WORD PTR [rdx]
	test	r8w, r8w
	setne	r10b
	cmp	r8w, r9w
	sete	al
	test	r10b, al
	je	.L259
	test	r9w, r9w
	je	.L259
	mov	eax, 2
	.p2align 6
.L260:
	movzx	r8d, WORD PTR [rcx+rax]
	movzx	r9d, WORD PTR [rdx+rax]
	add	rax, 2
	test	r8w, r8w
	setne	r11b
	cmp	r8w, r9w
	sete	r10b
	test	r11b, r10b
	je	.L259
	test	r9w, r9w
	jne	.L260
.L259:
	mov	eax, -1
	cmp	r8w, r9w
	jb	.L258
	cmp	r9w, r8w
	setb	al
	movzx	eax, al
.L258:
	ret
	.seh_endproc
	.globl	wcscpy
	.def	wcscpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscpy
wcscpy:
	.seh_endprologue
	mov	rax, rcx
	mov	r8d, 0
	.p2align 5
.L266:
	movzx	r9d, WORD PTR [rdx+r8]
	mov	WORD PTR [rax+r8], r9w
	add	r8, 2
	test	r9w, r9w
	jne	.L266
	ret
	.seh_endproc
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	cmp	WORD PTR [rcx], 0
	je	.L271
	mov	rax, rcx
	.p2align 4
.L270:
	add	rax, 2
	cmp	WORD PTR [rax], 0
	jne	.L270
.L269:
	sub	rax, rcx
	sar	rax
	ret
.L271:
	mov	rax, rcx
	jmp	.L269
	.seh_endproc
	.globl	wcsncmp
	.def	wcsncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcsncmp
wcsncmp:
	.seh_endprologue
	test	r8, r8
	je	.L275
.L274:
	movzx	eax, WORD PTR [rcx]
	movzx	r9d, WORD PTR [rdx]
	test	ax, ax
	setne	r10b
	cmp	ax, r9w
	sete	al
	test	r10b, al
	je	.L275
	test	r9w, r9w
	je	.L275
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	jne	.L274
.L275:
	mov	eax, 0
	test	r8, r8
	je	.L273
	movzx	ecx, WORD PTR [rcx]
	movzx	edx, WORD PTR [rdx]
	mov	eax, -1
	cmp	cx, dx
	jb	.L273
	cmp	dx, cx
	setb	al
	movzx	eax, al
.L273:
	ret
	.seh_endproc
	.globl	wmemchr
	.def	wmemchr;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemchr
wmemchr:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L284
	.p2align 4
.L283:
	cmp	WORD PTR [rax], dx
	je	.L284
	add	rax, 2
	sub	r8, 1
	jne	.L283
.L284:
	test	r8, r8
	mov	edx, 0
	cmove	rax, rdx
	ret
	.seh_endproc
	.globl	wmemcmp
	.def	wmemcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcmp
wmemcmp:
	.seh_endprologue
	test	r8, r8
	je	.L291
	.p2align 5
.L290:
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jne	.L291
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	jne	.L290
.L291:
	mov	eax, 0
	test	r8, r8
	je	.L289
	movzx	ecx, WORD PTR [rcx]
	movzx	edx, WORD PTR [rdx]
	mov	eax, -1
	cmp	cx, dx
	jb	.L289
	cmp	dx, cx
	setb	al
	movzx	eax, al
.L289:
	ret
	.seh_endproc
	.globl	wmemcpy
	.def	wmemcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcpy
wmemcpy:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	test	r8, r8
	je	.L298
	add	r8, r8
	call	memcpy
.L298:
	mov	rax, rbx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.globl	wmemmove
	.def	wmemmove;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemmove
wmemmove:
	.seh_endprologue
	mov	rax, rcx
	cmp	rcx, rdx
	je	.L300
	mov	r9, rcx
	sub	r9, rdx
	lea	rcx, [r8+r8]
	cmp	r9, rcx
	jb	.L301
	mov	r9d, 0
	test	r8, r8
	je	.L300
	.p2align 5
.L302:
	movzx	ecx, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], cx
	add	r9, 1
	cmp	r9, r8
	jne	.L302
	jmp	.L300
.L301:
	lea	r9, -1[r8]
	test	r8, r8
	je	.L300
	.p2align 5
.L303:
	movzx	ecx, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], cx
	sub	r9, 1
	cmp	r9, -1
	jne	.L303
.L300:
	ret
	.seh_endproc
	.globl	wmemset
	.def	wmemset;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemset
wmemset:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L309
	mov	r9d, 0
	test	r8b, 1
	jne	.L315
	.p2align 5
.L310:
	mov	WORD PTR [rax+r9*2], dx
	add	r9, 1
	mov	WORD PTR [rax+r9*2], dx
	add	r9, 1
	cmp	r9, r8
	jne	.L310
.L309:
	ret
.L315:
	mov	WORD PTR [rcx+r9*2], dx
	add	r9, 1
	cmp	r9, r8
	jne	.L310
	jmp	.L309
	.seh_endproc
	.globl	bcopy
	.def	bcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	bcopy
bcopy:
	.seh_endprologue
	cmp	rcx, rdx
	jnb	.L317
	test	r8, r8
	je	.L316
	.p2align 5
.L319:
	movzx	eax, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[rdx+r8], al
	sub	r8, 1
	jne	.L319
.L316:
	ret
.L317:
	je	.L316
	test	r8, r8
	je	.L316
	mov	eax, 0
	.p2align 5
.L320:
	movzx	r9d, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx+rax], r9b
	add	rax, 1
	cmp	rax, r8
	jne	.L320
	jmp	.L316
	.seh_endproc
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
	.globl	bswap_16
	.def	bswap_16;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_16
bswap_16:
	.seh_endprologue
	mov	eax, ecx
	rol	ax, 8
	ret
	.seh_endproc
	.globl	bswap_32
	.def	bswap_32;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_32
bswap_32:
	.seh_endprologue
	mov	eax, ecx
	sal	eax, 24
	mov	edx, ecx
	shr	edx, 24
	or	eax, edx
	mov	edx, ecx
	shr	edx, 8
	and	edx, 65280
	or	eax, edx
	sal	ecx, 8
	and	ecx, 16711680
	or	eax, ecx
	ret
	.seh_endproc
	.globl	bswap_64
	.def	bswap_64;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_64
bswap_64:
	.seh_endprologue
	mov	rdx, rcx
	mov	rax, rcx
	sal	rax, 56
	shr	rcx, 56
	or	rax, rcx
	mov	rcx, rdx
	shr	rcx, 40
	and	ecx, 65280
	or	rax, rcx
	mov	rcx, rdx
	shr	rcx, 24
	and	ecx, 16711680
	or	rax, rcx
	mov	rcx, rdx
	shr	rcx, 8
	and	ecx, 4278190080
	or	rax, rcx
	mov	rcx, rdx
	sal	rcx, 8
	movabs	r8, 1095216660480
	and	rcx, r8
	or	rax, rcx
	mov	rcx, rdx
	sal	rcx, 24
	movabs	r8, 280375465082880
	and	rcx, r8
	or	rax, rcx
	sal	rdx, 40
	movabs	rcx, 71776119061217280
	and	rdx, rcx
	or	rax, rdx
	ret
	.seh_endproc
	.globl	ffs
	.def	ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	ffs
ffs:
	.seh_endprologue
	mov	eax, 0
	.p2align 4
.L339:
	bt	ecx, eax
	jc	.L341
	add	eax, 1
	cmp	eax, 32
	jne	.L339
	mov	eax, 0
	jmp	.L336
.L341:
	add	eax, 1
.L336:
	ret
	.seh_endproc
	.globl	libiberty_ffs
	.def	libiberty_ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	libiberty_ffs
libiberty_ffs:
	.seh_endprologue
	mov	eax, ecx
	test	ecx, ecx
	je	.L342
	and	eax, 1
	jne	.L342
	mov	eax, 1
	.p2align 4
.L344:
	sar	ecx
	add	eax, 1
	test	cl, 1
	je	.L344
.L342:
	ret
	.seh_endproc
	.globl	gl_isinff
	.def	gl_isinff;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinff
gl_isinff:
	.seh_endprologue
	mov	eax, 1
	movss	xmm1, DWORD PTR .LC3[rip]
	comiss	xmm1, xmm0
	ja	.L347
	comiss	xmm0, DWORD PTR .LC4[rip]
	seta	al
	movzx	eax, al
.L347:
	ret
	.seh_endproc
	.globl	gl_isinfd
	.def	gl_isinfd;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfd
gl_isinfd:
	.seh_endprologue
	mov	eax, 1
	movsd	xmm1, QWORD PTR .LC5[rip]
	comisd	xmm1, xmm0
	ja	.L350
	comisd	xmm0, QWORD PTR .LC6[rip]
	seta	al
	movzx	eax, al
.L350:
	ret
	.seh_endproc
	.globl	gl_isinfl
	.def	gl_isinfl;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfl
gl_isinfl:
	.seh_endprologue
	fld	TBYTE PTR [rcx]
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
	jmp	.L353
.L356:
	fstp	st(0)
.L353:
	ret
	.seh_endproc
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
	.globl	ldexpf
	.def	ldexpf;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpf
ldexpf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L359
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm1, xmm0
	jp	.L365
	jne	.L365
.L359:
	ret
.L365:
	movss	xmm1, DWORD PTR .LC9[rip]
	test	edx, edx
	jns	.L363
	movss	xmm1, DWORD PTR .LC10[rip]
	jmp	.L363
	.p2align 5
.L362:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L359
	mulss	xmm1, xmm1
.L363:
	test	dl, 1
	je	.L362
	mulss	xmm0, xmm1
	jmp	.L362
	.seh_endproc
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L367
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm1, xmm0
	jp	.L373
	jne	.L373
.L367:
	ret
.L373:
	movsd	xmm1, QWORD PTR .LC11[rip]
	test	edx, edx
	jns	.L371
	movsd	xmm1, QWORD PTR .LC12[rip]
	jmp	.L371
	.p2align 5
.L370:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L367
	mulsd	xmm1, xmm1
.L371:
	test	dl, 1
	je	.L370
	mulsd	xmm0, xmm1
	jmp	.L370
	.seh_endproc
	.globl	ldexpl
	.def	ldexpl;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpl
ldexpl:
	.seh_endprologue
	mov	rax, rcx
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L375
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L381
	jne	.L381
	jmp	.L375
.L383:
	fstp	st(0)
.L375:
	fstp	TBYTE PTR [rax]
	ret
.L381:
	test	r8d, r8d
	js	.L382
	fld	DWORD PTR .LC9[rip]
	jmp	.L379
.L382:
	fld	DWORD PTR .LC10[rip]
	jmp	.L379
	.p2align 5
.L378:
	mov	edx, r8d
	shr	edx, 31
	add	edx, r8d
	sar	edx
	mov	r8d, edx
	je	.L383
	fmul	st, st(0)
.L379:
	test	r8b, 1
	je	.L378
	fmul	st(1), st
	jmp	.L378
	.seh_endproc
	.globl	memxor
	.def	memxor;	.scl	2;	.type	32;	.endef
	.seh_proc	memxor
memxor:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L385
	add	r8, rdx
	mov	r9, rcx
	.p2align 5
.L386:
	add	rdx, 1
	add	r9, 1
	movzx	r10d, BYTE PTR -1[rdx]
	xor	BYTE PTR -1[r9], r10b
	cmp	r8, rdx
	jne	.L386
.L385:
	ret
	.seh_endproc
	.globl	strncat
	.def	strncat;	.scl	2;	.type	32;	.endef
	.seh_proc	strncat
strncat:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdi, rcx
	mov	rsi, rdx
	mov	rbx, r8
	call	strlen
	add	rax, rdi
	test	rbx, rbx
	je	.L390
	.p2align 5
.L389:
	movzx	edx, BYTE PTR [rsi]
	mov	BYTE PTR [rax], dl
	test	dl, dl
	je	.L390
	add	rsi, 1
	add	rax, 1
	sub	rbx, 1
	jne	.L389
.L390:
	test	rbx, rbx
	jne	.L392
	mov	BYTE PTR [rax], 0
.L392:
	mov	rax, rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.globl	strnlen
	.def	strnlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strnlen
strnlen:
	.seh_endprologue
	mov	eax, 0
	test	rdx, rdx
	je	.L401
.L395:
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L402
.L394:
	ret
.L401:
	mov	rax, rdx
	jmp	.L394
.L402:
	add	rax, 1
	cmp	rdx, rax
	jne	.L395
	mov	rax, rdx
	jmp	.L394
	.seh_endproc
	.globl	strpbrk
	.def	strpbrk;	.scl	2;	.type	32;	.endef
	.seh_proc	strpbrk
strpbrk:
	.seh_endprologue
	mov	rax, rcx
	movzx	r10d, BYTE PTR [rcx]
	test	r10b, r10b
	je	.L410
.L404:
	mov	r8, rdx
	.p2align 5
.L407:
	movzx	r9d, BYTE PTR [r8]
	test	r9b, r9b
	je	.L411
	add	r8, 1
	cmp	r9b, r10b
	jne	.L407
.L405:
	ret
.L410:
	mov	eax, 0
	jmp	.L405
.L411:
	add	rax, 1
	movzx	r10d, BYTE PTR [rax]
	test	r10b, r10b
	jne	.L404
	mov	eax, 0
	jmp	.L405
	.seh_endproc
	.globl	strrchr
	.def	strrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strrchr
strrchr:
	.seh_endprologue
	mov	r8d, 0
	.p2align 5
.L414:
	movsx	r9d, BYTE PTR [rcx]
	cmp	r9d, edx
	cmove	r8, rcx
	add	rcx, 1
	test	r9b, r9b
	jne	.L414
	mov	rax, r8
	ret
	.seh_endproc
	.globl	strstr
	.def	strstr;	.scl	2;	.type	32;	.endef
	.seh_proc	strstr
strstr:
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
	mov	rsi, rcx
	mov	rdi, rdx
	mov	rcx, rdx
	call	strlen
	mov	rbp, rax
	mov	rbx, rsi
	test	rax, rax
	je	.L417
	movsx	r12d, BYTE PTR [rdi]
.L419:
	mov	edx, r12d
	mov	rcx, rsi
	call	strchr
	mov	rbx, rax
	test	rax, rax
	je	.L417
	mov	r8, rbp
	mov	rdx, rdi
	mov	rcx, rbx
	call	strncmp
	test	eax, eax
	je	.L417
	lea	rsi, 1[rbx]
	jmp	.L419
.L417:
	mov	rax, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.globl	copysign
	.def	copysign;	.scl	2;	.type	32;	.endef
	.seh_proc	copysign
copysign:
	.seh_endprologue
	pxor	xmm2, xmm2
	comisd	xmm2, xmm0
	ja	.L431
.L423:
	pxor	xmm2, xmm2
	comisd	xmm0, xmm2
	jbe	.L426
	comisd	xmm2, xmm1
	ja	.L425
.L426:
	ret
.L431:
	comisd	xmm1, xmm2
	jbe	.L423
.L425:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	jmp	.L426
	.seh_endproc
	.globl	memmem
	.def	memmem;	.scl	2;	.type	32;	.endef
	.seh_proc	memmem
memmem:
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
	mov	rbx, rcx
	mov	rax, rcx
	test	r9, r9
	je	.L432
	cmp	rdx, r9
	jb	.L437
	sub	rdx, r9
	mov	rsi, rdx
	add	rsi, rcx
	jc	.L438
	movzx	ebp, BYTE PTR [r8]
	lea	rdi, -1[r9]
	lea	r12, 1[r8]
	jmp	.L435
	.p2align 4
.L434:
	add	rbx, 1
	cmp	rsi, rbx
	jb	.L441
.L435:
	cmp	BYTE PTR [rbx], bpl
	jne	.L434
	lea	rcx, 1[rbx]
	mov	r8, rdi
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.L434
	mov	rax, rbx
	jmp	.L432
.L441:
	mov	eax, 0
.L432:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
.L437:
	mov	eax, 0
	jmp	.L432
.L438:
	mov	eax, 0
	jmp	.L432
	.seh_endproc
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
	call	memcpy
	add	rax, rbx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.globl	frexp
	.def	frexp;	.scl	2;	.type	32;	.endef
	.seh_proc	frexp
frexp:
	.seh_endprologue
	pxor	xmm1, xmm1
	mov	ecx, 0
	comisd	xmm1, xmm0
	ja	.L461
.L444:
	mov	eax, 0
	comisd	xmm0, QWORD PTR .LC14[rip]
	jb	.L460
	movsd	xmm2, QWORD PTR .LC12[rip]
	movsd	xmm1, QWORD PTR .LC14[rip]
	.p2align 4
.L448:
	add	eax, 1
	mulsd	xmm0, xmm2
	comisd	xmm0, xmm1
	jnb	.L448
.L449:
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L451
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L451:
	ret
.L461:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	mov	ecx, 1
	jmp	.L444
.L460:
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	setp	al
	mov	r8d, 1
	cmovne	eax, r8d
	test	al, al
	je	.L453
	movsd	xmm1, QWORD PTR .LC12[rip]
	comisd	xmm1, xmm0
	ja	.L462
.L453:
	mov	eax, 0
	jmp	.L449
.L462:
	mov	eax, 0
	.p2align 4
.L450:
	sub	eax, 1
	addsd	xmm0, xmm0
	comisd	xmm1, xmm0
	ja	.L450
	jmp	.L449
	.seh_endproc
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	mov	r8, rcx
	test	rcx, rcx
	je	.L466
	mov	ecx, 0
	.p2align 5
.L465:
	mov	rax, r8
	and	eax, 1
	neg	rax
	and	rax, rdx
	add	rcx, rax
	add	rdx, rdx
	shr	r8
	jne	.L465
.L463:
	mov	rax, rcx
	ret
.L466:
	mov	ecx, 0
	jmp	.L463
	.seh_endproc
	.globl	udivmodsi4
	.def	udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	udivmodsi4
udivmodsi4:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jnb	.L470
.L469:
	test	edx, edx
	js	.L470
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L470
	test	eax, eax
	jne	.L469
.L470:
	mov	r9d, 0
	test	eax, eax
	jne	.L472
	mov	r9d, eax
.L473:
	test	r8, r8
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4
.L475:
	shr	edx
	shr	eax
	je	.L473
.L472:
	cmp	ecx, edx
	jb	.L475
	sub	ecx, edx
	or	r9d, eax
	jmp	.L475
	.seh_endproc
	.globl	__clrsbqi2
	.def	__clrsbqi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbqi2
__clrsbqi2:
	.seh_endprologue
	mov	edx, ecx
	sar	dl, 7
	mov	eax, edx
	xor	eax, ecx
	mov	r8d, 7
	cmp	cl, dl
	je	.L484
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	r8d, -1[rax]
.L484:
	mov	eax, r8d
	ret
	.seh_endproc
	.globl	__clrsbdi2
	.def	__clrsbdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbdi2
__clrsbdi2:
	.seh_endprologue
	mov	rdx, rcx
	sar	rdx, 63
	mov	rax, rcx
	xor	rax, rdx
	mov	r8d, 63
	cmp	rcx, rdx
	je	.L487
	bsr	rax, rax
	xor	rax, 63
	lea	r8d, -1[rax]
.L487:
	mov	eax, r8d
	ret
	.seh_endproc
	.globl	__mulsi3
	.def	__mulsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3
__mulsi3:
	.seh_endprologue
	test	ecx, ecx
	je	.L493
	mov	r8d, 0
	.p2align 5
.L492:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	r8d, eax
	add	edx, edx
	shr	ecx
	jne	.L492
.L490:
	mov	eax, r8d
	ret
.L493:
	mov	r8d, ecx
	jmp	.L490
	.seh_endproc
	.globl	__cmovd
	.def	__cmovd;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovd
__cmovd:
	.seh_endprologue
	mov	r9, rdx
	mov	edx, r8d
	shr	edx, 3
	mov	eax, r8d
	and	eax, -8
	cmp	rcx, r9
	jb	.L496
	mov	r10d, r8d
	add	r10, r9
	cmp	r10, rcx
	jb	.L496
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L495
	.p2align 5
.L502:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	cmp	rax, -1
	jne	.L502
	jmp	.L495
.L496:
	test	edx, edx
	je	.L499
	lea	r11d, 0[0+rdx*8]
	mov	edx, 0
	.p2align 5
.L500:
	mov	r10, QWORD PTR [r9+rdx]
	mov	QWORD PTR [rcx+rdx], r10
	add	rdx, 8
	cmp	r11, rdx
	jne	.L500
.L499:
	cmp	eax, r8d
	jnb	.L495
	.p2align 5
.L501:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
	cmp	eax, r8d
	jb	.L501
.L495:
	ret
	.seh_endproc
	.globl	__cmovh
	.def	__cmovh;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovh
__cmovh:
	.seh_endprologue
	mov	eax, r8d
	shr	eax
	cmp	rcx, rdx
	jb	.L508
	mov	r9d, r8d
	add	r9, rdx
	cmp	r9, rcx
	jb	.L508
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L507
	.p2align 5
.L513:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	cmp	rax, -1
	jne	.L513
	jmp	.L507
.L508:
	test	eax, eax
	je	.L511
	lea	r10d, [rax+rax]
	mov	eax, 0
	.p2align 5
.L512:
	movzx	r9d, WORD PTR [rdx+rax]
	mov	WORD PTR [rcx+rax], r9w
	add	rax, 2
	cmp	rax, r10
	jne	.L512
.L511:
	test	r8b, 1
	je	.L507
	lea	eax, -1[r8]
	movzx	edx, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], dl
.L507:
	ret
	.seh_endproc
	.globl	__cmovw
	.def	__cmovw;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovw
__cmovw:
	.seh_endprologue
	mov	r9, rdx
	mov	edx, r8d
	shr	edx, 2
	mov	eax, r8d
	and	eax, -4
	cmp	rcx, r9
	jb	.L518
	mov	r10d, r8d
	add	r10, r9
	cmp	r10, rcx
	jb	.L518
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L517
	.p2align 5
.L524:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	cmp	rax, -1
	jne	.L524
	jmp	.L517
.L518:
	test	edx, edx
	je	.L521
	lea	r11d, 0[0+rdx*4]
	mov	edx, 0
	.p2align 5
.L522:
	mov	r10d, DWORD PTR [r9+rdx]
	mov	DWORD PTR [rcx+rdx], r10d
	add	rdx, 4
	cmp	r11, rdx
	jne	.L522
.L521:
	cmp	eax, r8d
	jnb	.L517
	.p2align 5
.L523:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
	cmp	eax, r8d
	jb	.L523
.L517:
	ret
	.seh_endproc
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
	.globl	__uitod
	.def	__uitod;	.scl	2;	.type	32;	.endef
	.seh_proc	__uitod
__uitod:
	.seh_endprologue
	mov	ecx, ecx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
	ret
	.seh_endproc
	.globl	__uitof
	.def	__uitof;	.scl	2;	.type	32;	.endef
	.seh_proc	__uitof
__uitof:
	.seh_endprologue
	mov	ecx, ecx
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	ret
	.seh_endproc
	.globl	__ulltod
	.def	__ulltod;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltod
__ulltod:
	.seh_endprologue
	test	rcx, rcx
	js	.L537
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
.L538:
	ret
.L537:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	addsd	xmm0, xmm0
	jmp	.L538
	.seh_endproc
	.globl	__ulltof
	.def	__ulltof;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltof
__ulltof:
	.seh_endprologue
	test	rcx, rcx
	js	.L540
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
.L541:
	ret
.L540:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
	jmp	.L541
	.seh_endproc
	.globl	__umodi
	.def	__umodi;	.scl	2;	.type	32;	.endef
	.seh_proc	__umodi
__umodi:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	mov	edx, 0
	div	ecx
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__clzhi2
	.def	__clzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzhi2
__clzhi2:
	.seh_endprologue
	mov	eax, 0
	movzx	ecx, cx
	mov	r8d, 15
	.p2align 5
.L545:
	mov	edx, r8d
	sub	edx, eax
	bt	ecx, edx
	jc	.L543
	add	eax, 1
	cmp	eax, 16
	jne	.L545
.L543:
	ret
	.seh_endproc
	.globl	__ctzhi2
	.def	__ctzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzhi2
__ctzhi2:
	.seh_endprologue
	mov	eax, 0
	movzx	ecx, cx
	.p2align 4
.L549:
	bt	ecx, eax
	jc	.L547
	add	eax, 1
	cmp	eax, 16
	jne	.L549
.L547:
	ret
	.seh_endproc
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	comiss	xmm0, DWORD PTR .LC15[rip]
	jnb	.L557
	cvttss2si	eax, xmm0
.L551:
	ret
.L557:
	subss	xmm0, DWORD PTR .LC15[rip]
	cvttss2si	eax, xmm0
	add	eax, 32768
	jmp	.L551
	.seh_endproc
	.globl	__parityhi2
	.def	__parityhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__parityhi2
__parityhi2:
	.seh_endprologue
	mov	r8d, ecx
	mov	eax, 0
	mov	ecx, 0
	movzx	r8d, r8w
	.p2align 5
.L559:
	mov	edx, r8d
	sar	edx, cl
	and	edx, 1
	add	eax, edx
	add	ecx, 1
	cmp	ecx, 16
	jne	.L559
	and	eax, 1
	ret
	.seh_endproc
	.globl	__popcounthi2
	.def	__popcounthi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcounthi2
__popcounthi2:
	.seh_endprologue
	mov	r8d, ecx
	mov	edx, 0
	mov	ecx, 0
	movzx	r8d, r8w
	.p2align 5
.L562:
	mov	eax, r8d
	sar	eax, cl
	and	eax, 1
	add	edx, eax
	add	ecx, 1
	cmp	ecx, 16
	jne	.L562
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__mulsi3_iq2000
	.def	__mulsi3_iq2000;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_iq2000
__mulsi3_iq2000:
	.seh_endprologue
	test	ecx, ecx
	je	.L567
	mov	r8d, 0
	.p2align 5
.L566:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	r8d, eax
	add	edx, edx
	shr	ecx
	jne	.L566
.L564:
	mov	eax, r8d
	ret
.L567:
	mov	r8d, ecx
	jmp	.L564
	.seh_endproc
	.globl	__mulsi3_lm32
	.def	__mulsi3_lm32;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_lm32
__mulsi3_lm32:
	.seh_endprologue
	mov	r8d, ecx
	test	ecx, ecx
	je	.L569
	test	edx, edx
	je	.L573
	mov	r8d, 0
	.p2align 5
.L571:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	r8d, eax
	add	ecx, ecx
	shr	edx
	jne	.L571
.L569:
	mov	eax, r8d
	ret
.L573:
	mov	r8d, edx
	jmp	.L569
	.seh_endproc
	.globl	__udivmodsi4
	.def	__udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4
__udivmodsi4:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jnb	.L577
.L576:
	test	edx, edx
	js	.L577
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L577
	test	eax, eax
	jne	.L576
.L577:
	mov	r9d, 0
	test	eax, eax
	jne	.L579
	mov	r9d, eax
.L580:
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4
.L582:
	shr	edx
	shr	eax
	je	.L580
.L579:
	cmp	ecx, edx
	jb	.L582
	sub	ecx, edx
	or	r9d, eax
	jmp	.L582
	.seh_endproc
	.globl	__mspabi_cmpf
	.def	__mspabi_cmpf;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpf
__mspabi_cmpf:
	.seh_endprologue
	mov	eax, -1
	comiss	xmm1, xmm0
	ja	.L591
	comiss	xmm0, xmm1
	seta	al
	movzx	eax, al
.L591:
	ret
	.seh_endproc
	.globl	__mspabi_cmpd
	.def	__mspabi_cmpd;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpd
__mspabi_cmpd:
	.seh_endprologue
	mov	eax, -1
	comisd	xmm1, xmm0
	ja	.L594
	comisd	xmm0, xmm1
	seta	al
	movzx	eax, al
.L594:
	ret
	.seh_endproc
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
	.globl	__mulhi3
	.def	__mulhi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulhi3
__mulhi3:
	.seh_endprologue
	mov	r11d, 0
	test	edx, edx
	js	.L607
.L600:
	test	edx, edx
	je	.L605
	mov	r8d, 1
	mov	r9d, 0
	.p2align 6
.L602:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	r9d, eax
	add	ecx, ecx
	sar	edx
	setne	r10b
	cmp	r8b, 31
	setbe	al
	add	r8d, 1
	test	r10b, al
	jne	.L602
.L601:
	mov	eax, r9d
	neg	eax
	test	r11d, r11d
	cmovne	r9d, eax
	mov	eax, r9d
	ret
.L607:
	neg	edx
	mov	r11d, 1
	jmp	.L600
.L605:
	mov	r9d, edx
	jmp	.L601
	.seh_endproc
	.globl	__divsi3
	.def	__divsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__divsi3
__divsi3:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	ebx, 0
	test	ecx, ecx
	js	.L613
.L609:
	test	edx, edx
	js	.L614
.L610:
	mov	r8d, 0
	call	__udivmodsi4
	mov	edx, eax
	neg	edx
	test	ebx, ebx
	cmovne	eax, edx
	add	rsp, 32
	pop	rbx
	ret
.L613:
	neg	ecx
	mov	ebx, 1
	jmp	.L609
.L614:
	neg	edx
	xor	ebx, 1
	jmp	.L610
	.seh_endproc
	.globl	__modsi3
	.def	__modsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__modsi3
__modsi3:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	ebx, 0
	test	ecx, ecx
	js	.L619
.L616:
	mov	eax, edx
	neg	eax
	cmovns	edx, eax
	mov	r8d, 1
	call	__udivmodsi4
	mov	edx, eax
	neg	edx
	test	ebx, ebx
	cmovne	eax, edx
	add	rsp, 32
	pop	rbx
	ret
.L619:
	neg	ecx
	mov	ebx, 1
	jmp	.L616
	.seh_endproc
	.globl	__udivmodhi4
	.def	__udivmodhi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodhi4
__udivmodhi4:
	.seh_endprologue
	mov	r10d, ecx
	mov	eax, edx
	mov	r9d, 1
	cmp	dx, cx
	jnb	.L622
.L621:
	test	ax, ax
	js	.L622
	add	eax, eax
	add	r9d, r9d
	cmp	ax, r10w
	jnb	.L622
	test	r9w, r9w
	jne	.L621
.L622:
	mov	edx, 0
	test	r9w, r9w
	jne	.L624
	mov	edx, r9d
.L625:
	test	r8d, r8d
	cmovne	edx, r10d
	mov	eax, edx
	ret
	.p2align 4
.L627:
	shr	ax
	shr	r9w
	je	.L625
.L624:
	cmp	r10w, ax
	jb	.L627
	sub	r10d, eax
	or	edx, r9d
	jmp	.L627
	.seh_endproc
	.globl	__udivmodsi4_libgcc
	.def	__udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jnb	.L638
.L637:
	test	edx, edx
	js	.L638
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L638
	test	eax, eax
	jne	.L637
.L638:
	mov	r9d, 0
	test	eax, eax
	jne	.L640
	mov	r9d, eax
.L641:
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4
.L643:
	shr	edx
	shr	eax
	je	.L641
.L640:
	cmp	ecx, edx
	jb	.L643
	sub	ecx, edx
	or	r9d, eax
	jmp	.L643
	.seh_endproc
	.globl	__ashldi3
	.def	__ashldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashldi3
__ashldi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L653
	lea	ecx, -32[rdx]
	sal	r8d, cl
	mov	eax, 0
.L654:
	sal	r8, 32
	or	rax, r8
.L652:
	ret
.L653:
	mov	rax, rcx
	test	edx, edx
	je	.L652
	mov	ecx, edx
	sal	eax, cl
	mov	ecx, 32
	sub	ecx, edx
	mov	r9d, r8d
	shr	r9d, cl
	sar	r8, 32
	mov	ecx, edx
	sal	r8d, cl
	or	r8d, r9d
	jmp	.L654
	.seh_endproc
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
	je	.L658
	lea	ecx, -64[rdx]
	sal	rax, cl
	mov	r9d, 0
.L659:
	mov	rcx, rax
	mov	rax, r9
	mov	rdx, rcx
.L660:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	r11, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], r11
	movdqa	xmm0, XMMWORD PTR [rsp]
	movq	xmm1, rdx
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
.L658:
	test	edx, edx
	je	.L661
	mov	r9, rax
	mov	ecx, edx
	sal	r9, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rax, cl
	mov	ecx, edx
	sal	r8, cl
	or	rax, r8
	jmp	.L659
.L661:
	mov	rdx, r8
	jmp	.L660
	.seh_endproc
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L663
	sar	r8, 32
	mov	eax, r8d
	sar	eax, 31
	lea	ecx, -32[rdx]
	sar	r8d, cl
.L664:
	sal	rax, 32
	or	rax, r8
.L662:
	ret
.L663:
	mov	rax, rcx
	test	edx, edx
	je	.L662
	mov	r9, rcx
	sar	r9, 32
	mov	eax, r9d
	mov	ecx, edx
	sar	eax, cl
	mov	ecx, 32
	sub	ecx, edx
	sal	r9d, cl
	mov	ecx, edx
	shr	r8d, cl
	or	r8d, r9d
	jmp	.L664
	.seh_endproc
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
	je	.L668
	mov	r10, rax
	sar	r10, 63
	lea	ecx, -64[rdx]
	sar	rax, cl
.L669:
	mov	rdx, rax
	mov	rax, r10
.L670:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	rcx, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
	movq	xmm1, rax
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
.L668:
	test	edx, edx
	je	.L671
	mov	r10, rax
	mov	ecx, edx
	sar	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L669
.L671:
	mov	rdx, r8
	jmp	.L670
	.seh_endproc
	.globl	__bswapdi2
	.def	__bswapdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__bswapdi2
__bswapdi2:
	.seh_endprologue
	mov	rdx, rcx
	mov	rax, rcx
	shr	rax, 56
	sal	rcx, 56
	or	rax, rcx
	mov	rcx, rdx
	shr	rcx, 40
	and	ecx, 65280
	or	rax, rcx
	mov	rcx, rdx
	shr	rcx, 24
	and	ecx, 16711680
	or	rax, rcx
	mov	rcx, rdx
	shr	rcx, 8
	and	ecx, 4278190080
	or	rax, rcx
	mov	rcx, rdx
	sal	rcx, 8
	movabs	r8, 1095216660480
	and	rcx, r8
	or	rax, rcx
	mov	rcx, rdx
	sal	rcx, 24
	movabs	r8, 280375465082880
	and	rcx, r8
	or	rax, rcx
	sal	rdx, 40
	movabs	rcx, 71776119061217280
	and	rdx, rcx
	or	rax, rdx
	ret
	.seh_endproc
	.globl	__bswapsi2
	.def	__bswapsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__bswapsi2
__bswapsi2:
	.seh_endprologue
	mov	eax, ecx
	shr	eax, 24
	mov	edx, ecx
	sal	edx, 24
	or	eax, edx
	mov	edx, ecx
	shr	edx, 8
	and	edx, 65280
	or	eax, edx
	sal	ecx, 8
	and	ecx, 16711680
	or	eax, ecx
	ret
	.seh_endproc
	.globl	__clzsi2
	.def	__clzsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzsi2
__clzsi2:
	.seh_endprologue
	mov	edx, ecx
	cmp	ecx, 65535
	setbe	r8b
	movzx	r8d, r8b
	sal	r8d, 4
	mov	ecx, 16
	sub	ecx, r8d
	shr	edx, cl
	test	dh, -1
	sete	al
	movzx	eax, al
	sal	eax, 3
	mov	ecx, 8
	sub	ecx, eax
	shr	edx, cl
	add	r8d, eax
	test	dl, -16
	sete	al
	movzx	eax, al
	sal	eax, 2
	mov	ecx, 4
	sub	ecx, eax
	shr	edx, cl
	lea	r9d, [rax+r8]
	test	dl, 12
	sete	r8b
	movzx	r8d, r8b
	add	r8d, r8d
	mov	eax, 2
	mov	ecx, eax
	sub	ecx, r8d
	shr	edx, cl
	sub	eax, edx
	test	dl, 2
	mov	edx, 0
	cmovne	eax, edx
	add	r8d, r9d
	add	eax, r8d
	ret
	.seh_endproc
	.globl	__clzti2
	.def	__clzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzti2
__clzti2:
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 8[rcx]
	test	rcx, rcx
	sete	al
	movzx	eax, al
	lea	edx, -1[rax]
	movsx	rdx, edx
	and	rdx, rcx
	test	rcx, rcx
	mov	ecx, 0
	cmove	rcx, r8
	or	rdx, rcx
	bsr	rdx, rdx
	xor	rdx, 63
	sal	eax, 6
	add	eax, edx
	ret
	.seh_endproc
	.globl	__cmpdi2
	.def	__cmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpdi2
__cmpdi2:
	.seh_endprologue
	mov	r9, rcx
	sar	r9, 32
	mov	r8, rdx
	sar	r8, 32
	mov	eax, 0
	cmp	r9d, r8d
	jl	.L676
	mov	eax, 2
	jg	.L676
	mov	eax, 0
	cmp	ecx, edx
	jb	.L676
	cmp	edx, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
.L676:
	ret
	.seh_endproc
	.globl	__aeabi_lcmp
	.def	__aeabi_lcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_lcmp
__aeabi_lcmp:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	call	__cmpdi2
	sub	eax, 1
	add	rsp, 40
	ret
	.seh_endproc
	.globl	__cmpti2
	.def	__cmpti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpti2
__cmpti2:
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 8[rcx]
	mov	r9, QWORD PTR [rdx]
	mov	rdx, QWORD PTR 8[rdx]
	mov	eax, 0
	cmp	rcx, rdx
	jl	.L683
	mov	eax, 2
	jg	.L683
	mov	eax, 0
	cmp	r8, r9
	jb	.L683
	cmp	r9, r8
	setb	al
	movzx	eax, al
	add	eax, 1
.L683:
	ret
	.seh_endproc
	.globl	__ctzsi2
	.def	__ctzsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzsi2
__ctzsi2:
	.seh_endprologue
	mov	eax, ecx
	test	cx, cx
	sete	dl
	movzx	edx, dl
	sal	edx, 4
	mov	ecx, edx
	shr	eax, cl
	test	al, al
	sete	cl
	movzx	ecx, cl
	sal	ecx, 3
	shr	eax, cl
	add	edx, ecx
	test	al, 15
	sete	cl
	movzx	ecx, cl
	sal	ecx, 2
	shr	eax, cl
	lea	r8d, [rcx+rdx]
	test	al, 3
	sete	cl
	movzx	ecx, cl
	add	ecx, ecx
	shr	eax, cl
	and	eax, 3
	mov	edx, eax
	not	edx
	shr	eax
	mov	r9d, 2
	sub	r9d, eax
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, r9d
	add	ecx, r8d
	add	eax, ecx
	ret
	.seh_endproc
	.globl	__ctzti2
	.def	__ctzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzti2
__ctzti2:
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	test	r8, r8
	mov	eax, 0
	cmovne	rdx, rax
	sete	al
	movzx	eax, al
	lea	ecx, -1[rax]
	movsx	rcx, ecx
	and	rcx, r8
	or	rdx, rcx
	rep bsf	rdx, rdx
	sal	eax, 6
	add	eax, edx
	ret
	.seh_endproc
	.globl	__ffsti2
	.def	__ffsti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ffsti2
__ffsti2:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	test	rax, rax
	jne	.L692
	xor	eax, eax
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	mov	edx, 0
	cmove	eax, edx
.L691:
	ret
.L692:
	rep bsf	rax, rax
	add	eax, 1
	jmp	.L691
	.seh_endproc
	.globl	__lshrdi3
	.def	__lshrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrdi3
__lshrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L696
	shr	r8, 32
	lea	ecx, -32[rdx]
	shr	r8d, cl
	mov	eax, 0
.L697:
	sal	rax, 32
	or	rax, r8
.L695:
	ret
.L696:
	mov	rax, rcx
	test	edx, edx
	je	.L695
	mov	r9, rcx
	shr	r9, 32
	mov	eax, r9d
	mov	ecx, edx
	shr	eax, cl
	mov	ecx, 32
	sub	ecx, edx
	sal	r9d, cl
	mov	ecx, edx
	shr	r8d, cl
	or	r8d, r9d
	jmp	.L697
	.seh_endproc
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
	je	.L701
	lea	ecx, -64[rdx]
	shr	rax, cl
	mov	r10d, 0
.L702:
	mov	rdx, rax
	mov	rax, r10
.L703:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	rcx, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
	movq	xmm1, rax
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
.L701:
	test	edx, edx
	je	.L704
	mov	r10, rax
	mov	ecx, edx
	shr	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L702
.L704:
	mov	rdx, r8
	jmp	.L703
	.seh_endproc
	.globl	__muldsi3
	.def	__muldsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldsi3
__muldsi3:
	.seh_endprologue
	movzx	r8d, cx
	movzx	eax, dx
	mov	r9d, r8d
	imul	r9d, eax
	mov	r10d, r9d
	shr	r10d, 16
	shr	ecx, 16
	imul	eax, ecx
	add	eax, r10d
	movzx	r10d, ax
	shr	edx, 16
	imul	r8d, edx
	add	r8d, r10d
	movzx	r9d, r9w
	mov	r10d, r8d
	sal	r10d, 16
	shr	eax, 16
	imul	ecx, edx
	add	eax, ecx
	shr	r8d, 16
	lea	edx, [rax+r8]
	sal	rdx, 32
	lea	eax, [r9+r10]
	or	rax, rdx
	ret
	.seh_endproc
	.globl	__muldi3_compiler_rt
	.def	__muldi3_compiler_rt;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3_compiler_rt
__muldi3_compiler_rt:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, rcx
	mov	rsi, rdx
	call	__muldsi3
	mov	rdx, rbx
	sar	rdx, 32
	imul	edx, esi
	sar	rsi, 32
	imul	ebx, esi
	add	ebx, edx
	mov	rdx, rax
	sar	rdx, 32
	lea	edx, [rbx+rdx]
	sal	rdx, 32
	mov	eax, eax
	or	rax, rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.globl	__mulddi3
	.def	__mulddi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulddi3
__mulddi3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r8d, ecx
	mov	eax, edx
	mov	r9, r8
	imul	r9, rax
	mov	r10, r9
	shr	r10, 32
	shr	rcx, 32
	imul	rax, rcx
	add	rax, r10
	mov	r10d, eax
	shr	rdx, 32
	imul	r8, rdx
	add	r8, r10
	mov	r9d, r9d
	mov	r10, r8
	sal	r10, 32
	add	r9, r10
	shr	rax, 32
	imul	rcx, rdx
	add	rax, rcx
	shr	r8, 32
	add	rax, r8
	movaps	XMMWORD PTR [rsp], xmm0
	mov	rcx, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], r9
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
	movq	xmm1, rax
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__multi3
	.def	__multi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__multi3
__multi3:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rsi, QWORD PTR [rcx]
	mov	rdi, QWORD PTR 8[rcx]
	mov	rbx, QWORD PTR [rdx]
	mov	rbp, QWORD PTR 8[rdx]
	mov	rdx, rbx
	mov	rcx, rsi
	call	__mulddi3
	movaps	XMMWORD PTR 32[rsp], xmm0
	mov	rdx, QWORD PTR 32[rsp]
	mov	rax, QWORD PTR 40[rsp]
	mov	QWORD PTR 32[rsp], rdx
	mov	QWORD PTR 40[rsp], rax
	imul	rbx, rdi
	imul	rsi, rbp
	add	rbx, rsi
	add	rbx, rax
	mov	rax, QWORD PTR 32[rsp]
	mov	QWORD PTR 32[rsp], rax
	mov	QWORD PTR 40[rsp], rbx
	movdqa	xmm0, XMMWORD PTR 32[rsp]
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.globl	__negdi2
	.def	__negdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__negdi2
__negdi2:
	.seh_endprologue
	mov	rax, rcx
	neg	rax
	ret
	.seh_endproc
	.globl	__negti2
	.def	__negti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__negti2
__negti2:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	neg	rax
	adc	rdx, 0
	neg	rdx
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rdx
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
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
	and	ecx, 15
	mov	eax, 27030
	sar	eax, cl
	and	eax, 1
	ret
	.seh_endproc
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
	and	ecx, 15
	mov	eax, 27030
	sar	eax, cl
	and	eax, 1
	ret
	.seh_endproc
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
	and	ecx, 15
	mov	eax, 27030
	sar	eax, cl
	and	eax, 1
	ret
	.seh_endproc
	.globl	__popcountdi2
	.def	__popcountdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountdi2
__popcountdi2:
	.seh_endprologue
	mov	rax, rcx
	shr	rax
	movabs	rdx, 6148914691236517205
	and	rax, rdx
	sub	rcx, rax
	mov	rdx, rcx
	shr	rdx, 2
	movabs	rax, 3689348814741910323
	and	rdx, rax
	and	rcx, rax
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
	shr	edx, 2
	and	edx, 858993459
	and	ecx, 858993459
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
	.globl	__popcountti2
	.def	__popcountti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountti2
__popcountti2:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	r8, rax
	mov	r9, rdx
	shrd	r8, r9, 1
	shr	r9
	movabs	r10, 6148914691236517205
	and	r8, r10
	and	r9, r10
	sub	rax, r8
	sbb	rdx, r9
	mov	r8, rax
	mov	r9, rdx
	shrd	r8, r9, 2
	shr	r9, 2
	movabs	r10, 3689348814741910323
	and	r8, r10
	and	r9, r10
	and	rax, r10
	and	rdx, r10
	add	r8, rax
	adc	r9, rdx
	mov	rax, r8
	mov	rdx, r9
	shrd	rax, rdx, 4
	shr	rdx, 4
	add	rax, r8
	adc	rdx, r9
	movabs	r8, 1085102592571150095
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
	.globl	__powidf2
	.def	__powidf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powidf2
__powidf2:
	.seh_endprologue
	mov	ecx, edx
	movsd	xmm1, QWORD PTR .LC14[rip]
	jmp	.L720
	.p2align 5
.L718:
	mov	eax, ecx
	shr	eax, 31
	add	eax, ecx
	sar	eax
	mov	ecx, eax
	je	.L719
	mulsd	xmm0, xmm0
.L720:
	test	cl, 1
	je	.L718
	mulsd	xmm1, xmm0
	jmp	.L718
.L719:
	test	edx, edx
	js	.L722
.L717:
	movapd	xmm0, xmm1
	ret
.L722:
	movsd	xmm0, QWORD PTR .LC14[rip]
	divsd	xmm0, xmm1
	movapd	xmm1, xmm0
	jmp	.L717
	.seh_endproc
	.globl	__powisf2
	.def	__powisf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powisf2
__powisf2:
	.seh_endprologue
	mov	ecx, edx
	movss	xmm1, DWORD PTR .LC16[rip]
	jmp	.L726
	.p2align 5
.L724:
	mov	eax, ecx
	shr	eax, 31
	add	eax, ecx
	sar	eax
	mov	ecx, eax
	je	.L725
	mulss	xmm0, xmm0
.L726:
	test	cl, 1
	je	.L724
	mulss	xmm1, xmm0
	jmp	.L724
.L725:
	test	edx, edx
	js	.L728
.L723:
	movaps	xmm0, xmm1
	ret
.L728:
	movss	xmm0, DWORD PTR .LC16[rip]
	divss	xmm0, xmm1
	movaps	xmm1, xmm0
	jmp	.L723
	.seh_endproc
	.globl	__ucmpdi2
	.def	__ucmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpdi2
__ucmpdi2:
	.seh_endprologue
	mov	r8, rcx
	shr	r8, 32
	mov	r9, rdx
	shr	r9, 32
	mov	eax, 0
	cmp	r8d, r9d
	jb	.L729
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L729
	mov	eax, 0
	cmp	ecx, edx
	jb	.L729
	cmp	edx, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
.L729:
	ret
	.seh_endproc
	.globl	__aeabi_ulcmp
	.def	__aeabi_ulcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_ulcmp
__aeabi_ulcmp:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	call	__ucmpdi2
	sub	eax, 1
	add	rsp, 40
	ret
	.seh_endproc
	.globl	__ucmpti2
	.def	__ucmpti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpti2
__ucmpti2:
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 8[rcx]
	mov	r9, QWORD PTR [rdx]
	mov	rdx, QWORD PTR 8[rdx]
	mov	eax, 0
	cmp	rcx, rdx
	jb	.L736
	mov	eax, 2
	cmp	rdx, rcx
	jb	.L736
	mov	eax, 0
	cmp	r8, r9
	jb	.L736
	cmp	r9, r8
	setb	al
	movzx	eax, al
	add	eax, 1
.L736:
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
	.long	1072693248
	.align 4
.LC15:
	.long	1191182336
	.align 4
.LC16:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
	.def	memcpy;	.scl	2;	.type	32;	.endef
