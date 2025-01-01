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
	movzx	r10d, r10b
	cmp	r8d, r10d
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
	cmp	edx, ecx
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
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L32
	mov	r9d, 0
	.p2align 5
.L33:
	movzx	r10d, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rax+r9], r10b
	add	r9, 1
	cmp	r9, r8
	jne	.L33
.L32:
	ret
	.seh_endproc
	.globl	memrchr
	.def	memrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memrchr
memrchr:
	.seh_endprologue
	movzx	edx, dl
	sub	r8, 1
.L36:
	cmp	r8, -1
	je	.L40
	movzx	r9d, BYTE PTR [rcx+r8]
	lea	r10, -1[r8]
	cmp	edx, r9d
	je	.L41
	mov	r8, r10
	jmp	.L36
.L41:
	lea	rax, [rcx+r8]
	jmp	.L35
.L40:
	mov	eax, 0
.L35:
	ret
	.seh_endproc
	.globl	memset
	.def	memset;	.scl	2;	.type	32;	.endef
	.seh_proc	memset
memset:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L43
	add	r8, rcx
	mov	r9, rcx
	.p2align 4
.L44:
	mov	BYTE PTR [r9], dl
	add	r9, 1
	cmp	r9, r8
	jne	.L44
.L43:
	ret
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
	cmp	BYTE PTR [rcx], 0
	je	.L50
	.p2align 4
.L51:
	movzx	ecx, BYTE PTR [rax]
	cmp	edx, ecx
	je	.L50
	add	rax, 1
	cmp	BYTE PTR [rax], 0
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
	movsx	ecx, BYTE PTR [rax]
	cmp	edx, ecx
	je	.L57
	add	rax, 1
	cmp	BYTE PTR -1[rax], 0
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
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	jne	.L62
	.p2align 5
.L61:
	cmp	BYTE PTR [rcx], 0
	je	.L62
	add	rcx, 1
	add	rdx, 1
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	je	.L61
.L62:
	movzx	eax, BYTE PTR [rcx]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
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
	mov	rax, rcx
	lea	r9, -1[rcx+r8]
	cmp	BYTE PTR [rcx], 0
	je	.L73
.L72:
	cmp	rax, r9
	setne	r8b
	cmp	BYTE PTR [rdx], 0
	setne	cl
	test	r8b, cl
	je	.L73
	movzx	ecx, BYTE PTR [rdx]
	cmp	BYTE PTR [rax], cl
	jne	.L73
	add	rax, 1
	add	rdx, 1
	cmp	BYTE PTR [rax], 0
	jne	.L72
.L73:
	movzx	eax, BYTE PTR [rax]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
.L70:
	ret
	.seh_endproc
	.globl	swab
	.def	swab;	.scl	2;	.type	32;	.endef
	.seh_proc	swab
swab:
	.seh_endprologue
	cmp	r8, 1
	jle	.L78
	sub	r8, 2
	shr	r8
	lea	r8, 2[rcx+r8*2]
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
	sete	dl
	cmp	ecx, 9
	sete	al
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
	cmp	ecx, 32
	sete	dl
	sub	ecx, 9
	cmp	ecx, 4
	setbe	al
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
	cmp	cx, 31
	setbe	dl
	movzx	eax, cx
	sub	eax, 127
	cmp	eax, 32
	setbe	r8b
	mov	eax, 1
	or	dl, r8b
	jne	.L92
	movzx	edx, cx
	sub	edx, 8232
	cmp	edx, 1
	jbe	.L92
	movzx	ecx, cx
	sub	ecx, 65529
	cmp	ecx, 2
	setbe	al
	movzx	eax, al
.L92:
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
	cmp	cx, 8231
	setbe	dl
	movzx	eax, cx
	sub	eax, 8234
	cmp	eax, 47061
	setbe	r8b
	mov	eax, 1
	or	dl, r8b
	jne	.L97
	movzx	edx, cx
	sub	edx, 57344
	cmp	edx, 8184
	jbe	.L97
	movzx	edx, cx
	sub	edx, 65532
	mov	eax, 0
	cmp	edx, 1048579
	ja	.L97
	not	ecx
	test	ecx, 65534
	setne	al
	movzx	eax, al
	jmp	.L97
.L103:
	lea	eax, 1[rcx]
	and	eax, 127
	cmp	eax, 32
	setg	al
	movzx	eax, al
.L97:
	ret
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
	jp	.L129
	ucomisd	xmm1, xmm1
	jp	.L124
	movmskpd	edx, xmm0
	and	edx, 1
	movmskpd	eax, xmm1
	and	eax, 1
	cmp	edx, eax
	je	.L126
	movmskpd	eax, xmm0
	test	al, 1
	je	.L124
	movapd	xmm0, xmm1
	jmp	.L124
.L126:
	movapd	xmm2, xmm1
	maxsd	xmm2, xmm0
	movapd	xmm0, xmm2
.L124:
	ret
.L129:
	movapd	xmm0, xmm1
	jmp	.L124
	.seh_endproc
	.globl	fmaxf
	.def	fmaxf;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxf
fmaxf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L137
	ucomiss	xmm1, xmm1
	jp	.L132
	movd	edx, xmm0
	and	edx, -2147483648
	movd	eax, xmm1
	and	eax, -2147483648
	cmp	edx, eax
	je	.L134
	movd	eax, xmm0
	test	eax, eax
	jns	.L132
	movaps	xmm0, xmm1
	jmp	.L132
.L134:
	movaps	xmm2, xmm1
	maxss	xmm2, xmm0
	movaps	xmm0, xmm2
.L132:
	ret
.L137:
	movaps	xmm0, xmm1
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
	je	.L144
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmovne	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
.L140:
	mov	rax, rcx
	ret
.L146:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L140
.L147:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L140
.L144:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	jmp	.L140
	.seh_endproc
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
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
	.seh_endproc
	.globl	fminf
	.def	fminf;	.scl	2;	.type	32;	.endef
	.seh_proc	fminf
fminf:
	.seh_endprologue
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
	.seh_endproc
	.globl	fminl
	.def	fminl;	.scl	2;	.type	32;	.endef
	.seh_proc	fminl
fminl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L170
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
	je	.L168
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmove	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
.L164:
	mov	rax, rcx
	ret
.L170:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L164
.L171:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L164
.L168:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	jmp	.L164
	.seh_endproc
	.section .rdata,"dr"
	.align 32
digits:
	.ascii "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\0"
	.text
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
.lcomm seed,8,8
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
	cmp	QWORD PTR [rcx], 0
	je	.L179
	mov	rax, QWORD PTR [rcx]
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
	cmp	QWORD PTR [rcx], 0
	je	.L184
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L184:
	cmp	QWORD PTR 8[rcx], 0
	je	.L183
	mov	rax, QWORD PTR 8[rcx]
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
	mov	r14, rdx
	mov	r15, r8
	mov	rdi, r9
	mov	r13, QWORD PTR 144[rsp]
	mov	rbp, QWORD PTR [r8]
	test	rbp, rbp
	je	.L187
	mov	rsi, rdx
	mov	ebx, 0
.L190:
	mov	rdx, rsi
	mov	rcx, r12
	call	r13
	test	eax, eax
	je	.L192
	add	rbx, 1
	add	rsi, rdi
	cmp	rbx, rbp
	jne	.L190
.L187:
	lea	rax, 1[rbp]
	mov	QWORD PTR [r15], rax
	imul	rbp, rdi
	lea	rcx, [r14+rbp]
	mov	r8, rdi
	mov	rdx, r12
	call	memcpy
.L186:
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
.L192:
	imul	rbx, rdi
	lea	rax, [r14+rbx]
	jmp	.L186
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
	mov	rbp, rcx
	mov	r13, rdx
	mov	rdi, r9
	mov	r14, QWORD PTR 128[rsp]
	mov	r12, QWORD PTR [r8]
	test	r12, r12
	je	.L197
	mov	rsi, rdx
	mov	ebx, 0
.L196:
	mov	rdx, rsi
	mov	rcx, rbp
	call	r14
	test	eax, eax
	je	.L199
	add	rbx, 1
	add	rsi, rdi
	cmp	rbx, r12
	jne	.L196
	mov	eax, 0
	jmp	.L193
.L199:
	imul	rbx, rdi
	lea	rax, 0[r13+rbx]
.L193:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
.L197:
	mov	eax, 0
	jmp	.L193
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
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	jmp	.L202
.L203:
	add	rbx, 1
.L202:
	movsx	ecx, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L203
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L209
	mov	ecx, 0
	cmp	eax, 45
	jne	.L205
	mov	ecx, 1
.L204:
	add	rbx, 1
.L205:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	ja	.L211
	mov	eax, 0
	.p2align 5
.L207:
	lea	eax, [rax+rax*4]
	add	eax, eax
	add	rbx, 1
	movsx	edx, BYTE PTR -1[rbx]
	sub	edx, 48
	sub	eax, edx
	movsx	edx, BYTE PTR [rbx]
	sub	edx, 48
	cmp	edx, 9
	jbe	.L207
.L206:
	mov	edx, eax
	neg	edx
	test	ecx, ecx
	cmove	eax, edx
	add	rsp, 32
	pop	rbx
	ret
.L209:
	mov	ecx, 0
	jmp	.L204
.L211:
	mov	eax, 0
	jmp	.L206
	.seh_endproc
	.globl	atol
	.def	atol;	.scl	2;	.type	32;	.endef
	.seh_proc	atol
atol:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	jmp	.L214
.L215:
	add	rbx, 1
.L214:
	movsx	ecx, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L215
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L221
	mov	ecx, 0
	cmp	eax, 45
	jne	.L217
	mov	ecx, 1
.L216:
	add	rbx, 1
.L217:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	ja	.L223
	mov	eax, 0
	.p2align 5
.L219:
	lea	eax, [rax+rax*4]
	add	eax, eax
	add	rbx, 1
	movsx	edx, BYTE PTR -1[rbx]
	sub	edx, 48
	sub	eax, edx
	movsx	edx, BYTE PTR [rbx]
	sub	edx, 48
	cmp	edx, 9
	jbe	.L219
.L218:
	mov	edx, eax
	neg	edx
	test	ecx, ecx
	cmove	eax, edx
	add	rsp, 32
	pop	rbx
	ret
.L221:
	mov	ecx, 0
	jmp	.L216
.L223:
	mov	eax, 0
	jmp	.L218
	.seh_endproc
	.globl	atoll
	.def	atoll;	.scl	2;	.type	32;	.endef
	.seh_proc	atoll
atoll:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	jmp	.L226
.L227:
	add	rbx, 1
.L226:
	movsx	ecx, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L227
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L233
	mov	ecx, 0
	cmp	eax, 45
	jne	.L229
	mov	ecx, 1
.L228:
	add	rbx, 1
.L229:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	ja	.L235
	mov	eax, 0
	.p2align 6
.L231:
	lea	rax, [rax+rax*4]
	add	rax, rax
	add	rbx, 1
	movsx	edx, BYTE PTR -1[rbx]
	sub	edx, 48
	movsx	rdx, edx
	sub	rax, rdx
	movsx	edx, BYTE PTR [rbx]
	sub	edx, 48
	cmp	edx, 9
	jbe	.L231
.L230:
	mov	rdx, rax
	neg	rdx
	test	ecx, ecx
	cmove	rax, rdx
	add	rsp, 32
	pop	rbx
	ret
.L233:
	mov	ecx, 0
	jmp	.L228
.L235:
	mov	eax, 0
	jmp	.L230
	.seh_endproc
	.globl	bsearch
	.def	bsearch;	.scl	2;	.type	32;	.endef
	.seh_proc	bsearch
bsearch:
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
	mov	rbp, rdx
	mov	rsi, r8
	mov	rdi, r9
	mov	r13, QWORD PTR 128[rsp]
	test	r8, r8
	jne	.L241
	mov	ebx, 0
	jmp	.L237
.L245:
	shr	rsi
.L240:
	test	rsi, rsi
	je	.L244
.L241:
	mov	rbx, rsi
	shr	rbx
	imul	rbx, rdi
	add	rbx, rbp
	mov	rdx, rbx
	mov	rcx, r12
	call	r13
	test	eax, eax
	js	.L245
	jle	.L237
	lea	rbp, [rbx+rdi]
	mov	rax, rsi
	shr	rax
	sub	rsi, 1
	sub	rsi, rax
	jmp	.L240
.L244:
	mov	ebx, 0
.L237:
	mov	rax, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
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
	jne	.L249
	mov	ebx, 0
	jmp	.L246
.L248:
	sar	esi
	je	.L252
.L249:
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
	je	.L246
	jle	.L248
	lea	rbp, [rbx+rdi]
	sub	esi, 1
	jmp	.L248
.L252:
	mov	ebx, 0
.L246:
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
	cmp	WORD PTR [rcx], 0
	je	.L262
	.p2align 4
.L261:
	cmp	dx, WORD PTR [rax]
	je	.L262
	add	rax, 2
	cmp	WORD PTR [rax], 0
	jne	.L261
.L262:
	cmp	WORD PTR [rax], 0
	mov	edx, 0
	cmove	rax, rdx
	ret
	.seh_endproc
	.globl	wcscmp
	.def	wcscmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscmp
wcscmp:
	.seh_endprologue
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jne	.L269
.L268:
	cmp	WORD PTR [rcx], 0
	je	.L269
	cmp	WORD PTR [rdx], 0
	je	.L269
	add	rcx, 2
	add	rdx, 2
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	je	.L268
.L269:
	mov	eax, -1
	movzx	r8d, WORD PTR [rdx]
	cmp	WORD PTR [rcx], r8w
	jb	.L267
	movzx	eax, WORD PTR [rcx]
	cmp	r8w, ax
	setb	al
	movzx	eax, al
.L267:
	ret
	.seh_endproc
	.globl	wcscpy
	.def	wcscpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscpy
wcscpy:
	.seh_endprologue
	mov	rax, rcx
	mov	r8, rcx
	.p2align 5
.L275:
	add	rdx, 2
	add	r8, 2
	movzx	r9d, WORD PTR -2[rdx]
	mov	WORD PTR -2[r8], r9w
	test	r9w, r9w
	jne	.L275
	ret
	.seh_endproc
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	cmp	WORD PTR [rcx], 0
	je	.L280
	mov	rax, rcx
	.p2align 4
.L279:
	add	rax, 2
	cmp	WORD PTR [rax], 0
	jne	.L279
.L278:
	sub	rax, rcx
	sar	rax
	ret
.L280:
	mov	rax, rcx
	jmp	.L278
	.seh_endproc
	.globl	wcsncmp
	.def	wcsncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcsncmp
wcsncmp:
	.seh_endprologue
	test	r8, r8
	je	.L284
.L283:
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jne	.L284
	cmp	WORD PTR [rcx], 0
	je	.L284
	test	ax, ax
	je	.L284
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	jne	.L283
.L284:
	mov	eax, 0
	test	r8, r8
	je	.L282
	mov	eax, -1
	movzx	r9d, WORD PTR [rdx]
	cmp	WORD PTR [rcx], r9w
	jb	.L282
	movzx	eax, WORD PTR [rcx]
	cmp	r9w, ax
	setb	al
	movzx	eax, al
.L282:
	ret
	.seh_endproc
	.globl	wmemchr
	.def	wmemchr;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemchr
wmemchr:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L292
	.p2align 4
.L291:
	cmp	dx, WORD PTR [rax]
	je	.L292
	add	rax, 2
	sub	r8, 1
	jne	.L291
.L292:
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
	je	.L299
	.p2align 5
.L298:
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jne	.L299
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	jne	.L298
.L299:
	mov	eax, 0
	test	r8, r8
	je	.L297
	mov	eax, -1
	movzx	r9d, WORD PTR [rdx]
	cmp	WORD PTR [rcx], r9w
	jb	.L297
	movzx	eax, WORD PTR [rcx]
	cmp	r9w, ax
	setb	al
	movzx	eax, al
.L297:
	ret
	.seh_endproc
	.globl	wmemcpy
	.def	wmemcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcpy
wmemcpy:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L306
	mov	r9d, 0
	.p2align 5
.L307:
	movzx	r10d, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], r10w
	add	r9, 1
	cmp	r9, r8
	jne	.L307
.L306:
	ret
	.seh_endproc
	.globl	wmemmove
	.def	wmemmove;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemmove
wmemmove:
	.seh_endprologue
	mov	rax, rcx
	cmp	rcx, rdx
	je	.L310
	mov	r9, rcx
	sub	r9, rdx
	lea	rcx, [r8+r8]
	cmp	r9, rcx
	jb	.L311
	mov	r9d, 0
	test	r8, r8
	je	.L310
	.p2align 5
.L312:
	movzx	ecx, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], cx
	add	r9, 1
	cmp	r9, r8
	jne	.L312
	jmp	.L310
.L311:
	lea	r9, -1[r8]
	test	r8, r8
	je	.L310
	.p2align 5
.L313:
	movzx	ecx, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], cx
	sub	r9, 1
	cmp	r9, -1
	jne	.L313
.L310:
	ret
	.seh_endproc
	.globl	wmemset
	.def	wmemset;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemset
wmemset:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L319
	mov	r9d, 0
	.p2align 4
.L320:
	mov	WORD PTR [rax+r9*2], dx
	add	r9, 1
	cmp	r9, r8
	jne	.L320
.L319:
	ret
	.seh_endproc
	.globl	bcopy
	.def	bcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	bcopy
bcopy:
	.seh_endprologue
	cmp	rcx, rdx
	jnb	.L323
	test	r8, r8
	je	.L322
	.p2align 5
.L325:
	movzx	eax, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[rdx+r8], al
	sub	r8, 1
	jne	.L325
.L322:
	ret
.L323:
	je	.L322
	test	r8, r8
	je	.L322
	mov	eax, 0
	.p2align 5
.L326:
	movzx	r9d, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx+rax], r9b
	add	rax, 1
	cmp	rax, r8
	jne	.L326
	jmp	.L322
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
	mov	r8, rcx
	mov	ecx, edx
	sal	r8, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rax, cl
	or	rax, r8
	ret
	.seh_endproc
	.globl	rotr_sz
	.def	rotr_sz;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr_sz
rotr_sz:
	.seh_endprologue
	mov	rax, rcx
	mov	r8, rcx
	mov	ecx, edx
	shr	r8, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	or	rax, r8
	ret
	.seh_endproc
	.globl	rotl16
	.def	rotl16;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl16
rotl16:
	.seh_endprologue
	movzx	eax, cx
	mov	r8d, eax
	mov	ecx, edx
	sal	r8d, cl
	mov	ecx, 16
	sub	ecx, edx
	shr	eax, cl
	or	eax, r8d
	ret
	.seh_endproc
	.globl	rotr16
	.def	rotr16;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr16
rotr16:
	.seh_endprologue
	movzx	eax, cx
	mov	r8d, eax
	mov	ecx, edx
	shr	r8d, cl
	mov	ecx, 16
	sub	ecx, edx
	sal	eax, cl
	or	eax, r8d
	ret
	.seh_endproc
	.globl	rotl8
	.def	rotl8;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl8
rotl8:
	.seh_endprologue
	movzx	eax, cl
	mov	r8d, eax
	mov	ecx, edx
	sal	r8d, cl
	mov	ecx, 8
	sub	ecx, edx
	shr	eax, cl
	or	eax, r8d
	ret
	.seh_endproc
	.globl	rotr8
	.def	rotr8;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr8
rotr8:
	.seh_endprologue
	movzx	eax, cl
	mov	r8d, eax
	mov	ecx, edx
	shr	r8d, cl
	mov	ecx, 8
	sub	ecx, edx
	sal	eax, cl
	or	eax, r8d
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
	mov	edx, ecx
	shr	edx, 24
	mov	eax, ecx
	and	eax, 16711680
	shr	eax, 8
	or	eax, edx
	mov	edx, ecx
	and	edx, 65280
	sal	edx, 8
	or	eax, edx
	sal	ecx, 24
	or	eax, ecx
	ret
	.seh_endproc
	.globl	bswap_64
	.def	bswap_64;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_64
bswap_64:
	.seh_endprologue
	mov	rdx, rcx
	shr	rcx, 56
	mov	rax, rdx
	shr	rax, 40
	and	eax, 65280
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
	and	ecx, 4278190080
	sal	rcx, 8
	or	rax, rcx
	mov	rcx, rdx
	and	ecx, 16711680
	sal	rcx, 24
	or	rax, rcx
	mov	rcx, rdx
	and	ecx, 65280
	sal	rcx, 40
	or	rax, rcx
	sal	rdx, 56
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
.L345:
	bt	ecx, eax
	jc	.L347
	add	eax, 1
	cmp	eax, 32
	jne	.L345
	mov	eax, 0
	jmp	.L342
.L347:
	add	eax, 1
.L342:
	ret
	.seh_endproc
	.globl	libiberty_ffs
	.def	libiberty_ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	libiberty_ffs
libiberty_ffs:
	.seh_endprologue
	mov	eax, 0
	test	ecx, ecx
	je	.L348
	test	cl, 1
	jne	.L352
	mov	eax, 1
	.p2align 4
.L350:
	sar	ecx
	add	eax, 1
	test	cl, 1
	je	.L350
.L348:
	ret
.L352:
	mov	eax, 1
	jmp	.L348
	.seh_endproc
	.globl	gl_isinff
	.def	gl_isinff;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinff
gl_isinff:
	.seh_endprologue
	mov	eax, 1
	movss	xmm1, DWORD PTR .LC3[rip]
	comiss	xmm1, xmm0
	ja	.L354
	comiss	xmm0, DWORD PTR .LC4[rip]
	seta	al
	movzx	eax, al
.L354:
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
	ja	.L357
	comisd	xmm0, QWORD PTR .LC6[rip]
	seta	al
	movzx	eax, al
.L357:
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
	ja	.L363
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	.L360
.L363:
	fstp	st(0)
.L360:
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
	jp	.L366
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm0, xmm1
	jp	.L372
	jne	.L372
.L366:
	ret
.L372:
	movss	xmm1, DWORD PTR .LC9[rip]
	test	edx, edx
	jns	.L370
	movss	xmm1, DWORD PTR .LC10[rip]
	jmp	.L370
	.p2align 5
.L369:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L366
	mulss	xmm1, xmm1
.L370:
	test	dl, 1
	je	.L369
	mulss	xmm0, xmm1
	jmp	.L369
	.seh_endproc
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
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
	movsd	xmm1, QWORD PTR .LC11[rip]
	test	edx, edx
	jns	.L378
	movsd	xmm1, QWORD PTR .LC12[rip]
	jmp	.L378
	.p2align 5
.L377:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L374
	mulsd	xmm1, xmm1
.L378:
	test	dl, 1
	je	.L377
	mulsd	xmm0, xmm1
	jmp	.L377
	.seh_endproc
	.globl	ldexpl
	.def	ldexpl;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpl
ldexpl:
	.seh_endprologue
	mov	rax, rcx
	fld	TBYTE PTR [rdx]
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
	fstp	TBYTE PTR [rax]
	ret
.L388:
	test	r8d, r8d
	js	.L389
	fld	DWORD PTR .LC9[rip]
	jmp	.L386
.L389:
	fld	DWORD PTR .LC10[rip]
	jmp	.L386
	.p2align 5
.L385:
	mov	edx, r8d
	shr	edx, 31
	add	edx, r8d
	sar	edx
	mov	r8d, edx
	je	.L390
	fmul	st, st(0)
.L386:
	test	r8b, 1
	je	.L385
	fmul	st(1), st
	jmp	.L385
	.seh_endproc
	.globl	memxor
	.def	memxor;	.scl	2;	.type	32;	.endef
	.seh_proc	memxor
memxor:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L392
	add	r8, rdx
	mov	r9, rcx
	.p2align 5
.L393:
	add	rdx, 1
	add	r9, 1
	movzx	r10d, BYTE PTR -1[r9]
	xor	r10b, BYTE PTR -1[rdx]
	mov	BYTE PTR -1[r9], r10b
	cmp	rdx, r8
	jne	.L393
.L392:
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
	je	.L397
	.p2align 5
.L396:
	movzx	edx, BYTE PTR [rsi]
	mov	BYTE PTR [rax], dl
	test	dl, dl
	je	.L397
	add	rsi, 1
	add	rax, 1
	sub	rbx, 1
	jne	.L396
.L397:
	test	rbx, rbx
	jne	.L399
	mov	BYTE PTR [rax], 0
.L399:
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
.L402:
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L404
.L401:
	ret
.L404:
	add	rax, 1
	cmp	rax, rdx
	jne	.L402
	jmp	.L401
	.seh_endproc
	.globl	strpbrk
	.def	strpbrk;	.scl	2;	.type	32;	.endef
	.seh_proc	strpbrk
strpbrk:
	.seh_endprologue
	mov	rax, rcx
	cmp	BYTE PTR [rcx], 0
	je	.L414
.L408:
	mov	r8, rdx
	.p2align 5
.L411:
	cmp	BYTE PTR [r8], 0
	je	.L415
	add	r8, 1
	movzx	ecx, BYTE PTR [rax]
	cmp	BYTE PTR -1[r8], cl
	jne	.L411
.L409:
	ret
.L414:
	mov	eax, 0
	jmp	.L409
.L415:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L408
	mov	eax, 0
	jmp	.L409
	.seh_endproc
	.globl	strrchr
	.def	strrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strrchr
strrchr:
	.seh_endprologue
	mov	eax, 0
	.p2align 5
.L418:
	movsx	r8d, BYTE PTR [rcx]
	cmp	edx, r8d
	cmove	rax, rcx
	add	rcx, 1
	cmp	BYTE PTR -1[rcx], 0
	jne	.L418
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
	je	.L421
	movsx	r12d, BYTE PTR [rdi]
.L423:
	mov	edx, r12d
	mov	rcx, rsi
	call	strchr
	mov	rbx, rax
	test	rax, rax
	je	.L421
	mov	r8, rbp
	mov	rdx, rdi
	mov	rcx, rbx
	call	strncmp
	test	eax, eax
	je	.L421
	lea	rsi, 1[rbx]
	jmp	.L423
.L421:
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
	ja	.L435
.L427:
	pxor	xmm2, xmm2
	comisd	xmm0, xmm2
	jbe	.L430
	comisd	xmm2, xmm1
	ja	.L429
.L430:
	ret
.L435:
	comisd	xmm1, xmm2
	jbe	.L427
.L429:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	jmp	.L430
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
	mov	rsi, rdx
	sub	rsi, r9
	add	rsi, rcx
	mov	rax, rcx
	test	r9, r9
	je	.L436
	cmp	rdx, r9
	jb	.L441
	cmp	rsi, rcx
	jb	.L442
	movzx	ebp, BYTE PTR [r8]
	lea	rdi, -1[r9]
	lea	r12, 1[r8]
	jmp	.L439
	.p2align 4
.L438:
	add	rbx, 1
	cmp	rsi, rbx
	jb	.L445
.L439:
	cmp	BYTE PTR [rbx], bpl
	jne	.L438
	lea	rcx, 1[rbx]
	mov	r8, rdi
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.L438
	mov	rax, rbx
	jmp	.L436
.L445:
	mov	eax, 0
.L436:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
.L441:
	mov	eax, 0
	jmp	.L436
.L442:
	mov	eax, 0
	jmp	.L436
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
	ja	.L465
.L448:
	mov	eax, 0
	comisd	xmm0, QWORD PTR .LC14[rip]
	jb	.L464
	movsd	xmm2, QWORD PTR .LC12[rip]
	movsd	xmm1, QWORD PTR .LC14[rip]
	.p2align 4
.L452:
	add	eax, 1
	mulsd	xmm0, xmm2
	comisd	xmm0, xmm1
	jnb	.L452
.L453:
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L455
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L455:
	ret
.L465:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	mov	ecx, 1
	jmp	.L448
.L464:
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	setp	r8b
	mov	eax, 1
	cmovne	r8d, eax
	movsd	xmm1, QWORD PTR .LC12[rip]
	comisd	xmm1, xmm0
	seta	r9b
	mov	eax, 0
	test	r9b, r8b
	je	.L453
	.p2align 4
.L454:
	sub	eax, 1
	addsd	xmm0, xmm0
	comisd	xmm1, xmm0
	ja	.L454
	jmp	.L453
	.seh_endproc
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	mov	r8, rcx
	test	rcx, rcx
	je	.L469
	mov	ecx, 0
	.p2align 5
.L468:
	mov	rax, r8
	and	eax, 1
	neg	rax
	and	rax, rdx
	add	rcx, rax
	add	rdx, rdx
	shr	r8
	jne	.L468
.L466:
	mov	rax, rcx
	ret
.L469:
	mov	ecx, 0
	jmp	.L466
	.seh_endproc
	.globl	udivmodsi4
	.def	udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	udivmodsi4
udivmodsi4:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jnb	.L473
	.p2align 5
.L472:
	test	edx, edx
	js	.L473
	add	edx, edx
	cmp	edx, ecx
	setb	r9b
	add	eax, eax
	setne	r10b
	test	r10b, r9b
	jne	.L472
.L473:
	mov	r9d, 0
	test	eax, eax
	jne	.L474
.L475:
	test	r8, r8
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4
.L477:
	shr	edx
	shr	eax
	je	.L475
.L474:
	cmp	ecx, edx
	jb	.L477
	sub	ecx, edx
	or	r9d, eax
	jmp	.L477
	.seh_endproc
	.globl	__clrsbqi2
	.def	__clrsbqi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbqi2
__clrsbqi2:
	.seh_endprologue
	mov	eax, ecx
	sar	al, 7
	mov	edx, 7
	xor	al, cl
	je	.L486
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	edx, -1[rax]
.L486:
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__clrsbdi2
	.def	__clrsbdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbdi2
__clrsbdi2:
	.seh_endprologue
	mov	rax, rcx
	sar	rax, 63
	mov	edx, 63
	xor	rax, rcx
	je	.L489
	bsr	rax, rax
	xor	rax, 63
	lea	edx, -1[rax]
.L489:
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__mulsi3
	.def	__mulsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3
__mulsi3:
	.seh_endprologue
	test	ecx, ecx
	je	.L495
	mov	r8d, 0
	.p2align 5
.L494:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	r8d, eax
	add	edx, edx
	shr	ecx
	jne	.L494
.L492:
	mov	eax, r8d
	ret
.L495:
	mov	r8d, 0
	jmp	.L492
	.seh_endproc
	.globl	__cmovd
	.def	__cmovd;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovd
__cmovd:
	.seh_endprologue
	mov	r9, rdx
	mov	r10d, r8d
	shr	r10d, 3
	mov	eax, r8d
	and	eax, -8
	cmp	rcx, rdx
	jnb	.L498
.L501:
	lea	r11d, 0[0+r10*8]
	mov	edx, 0
	test	r10d, r10d
	je	.L500
	.p2align 5
.L504:
	mov	r10, QWORD PTR [r9+rdx]
	mov	QWORD PTR [rcx+rdx], r10
	add	rdx, 8
	cmp	rdx, r11
	jne	.L504
.L500:
	cmp	eax, r8d
	jnb	.L497
	mov	eax, eax
	.p2align 5
.L505:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
	cmp	eax, r8d
	jb	.L505
.L497:
	ret
.L498:
	mov	edx, r8d
	add	rdx, r9
	cmp	rdx, rcx
	jb	.L501
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L497
	.p2align 5
.L506:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	cmp	rax, -1
	jne	.L506
	jmp	.L497
	.seh_endproc
	.globl	__cmovh
	.def	__cmovh;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovh
__cmovh:
	.seh_endprologue
	mov	r9d, r8d
	shr	r9d
	cmp	rcx, rdx
	jnb	.L513
.L516:
	lea	r10d, [r9+r9]
	mov	eax, 0
	test	r9d, r9d
	je	.L515
	.p2align 5
.L519:
	movzx	r9d, WORD PTR [rdx+rax]
	mov	WORD PTR [rcx+rax], r9w
	add	rax, 2
	cmp	rax, r10
	jne	.L519
.L515:
	test	r8b, 1
	je	.L512
	lea	eax, -1[r8]
	movzx	edx, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], dl
.L512:
	ret
.L513:
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jb	.L516
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L512
	.p2align 5
.L520:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	cmp	rax, -1
	jne	.L520
	jmp	.L512
	.seh_endproc
	.globl	__cmovw
	.def	__cmovw;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovw
__cmovw:
	.seh_endprologue
	mov	r9, rdx
	mov	r10d, r8d
	shr	r10d, 2
	mov	eax, r8d
	and	eax, -4
	cmp	rcx, rdx
	jnb	.L526
.L529:
	lea	r11d, 0[0+r10*4]
	mov	edx, 0
	test	r10d, r10d
	je	.L528
	.p2align 5
.L532:
	mov	r10d, DWORD PTR [r9+rdx]
	mov	DWORD PTR [rcx+rdx], r10d
	add	rdx, 4
	cmp	rdx, r11
	jne	.L532
.L528:
	cmp	eax, r8d
	jnb	.L525
	mov	eax, eax
	.p2align 5
.L533:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
	cmp	eax, r8d
	jb	.L533
.L525:
	ret
.L526:
	mov	edx, r8d
	add	rdx, r9
	cmp	rdx, rcx
	jb	.L529
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L525
	.p2align 5
.L534:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	cmp	rax, -1
	jne	.L534
	jmp	.L525
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
	js	.L548
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
.L547:
	ret
.L548:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	addsd	xmm0, xmm0
	jmp	.L547
	.seh_endproc
	.globl	__ulltof
	.def	__ulltof;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltof
__ulltof:
	.seh_endprologue
	test	rcx, rcx
	js	.L551
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
.L550:
	ret
.L551:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
	jmp	.L550
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
.L556:
	mov	edx, r8d
	sub	edx, eax
	bt	ecx, edx
	jc	.L554
	add	eax, 1
	cmp	eax, 16
	jne	.L556
.L554:
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
.L560:
	bt	ecx, eax
	jc	.L558
	add	eax, 1
	cmp	eax, 16
	jne	.L560
.L558:
	ret
	.seh_endproc
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	comiss	xmm0, DWORD PTR .LC15[rip]
	jnb	.L568
	cvttss2si	eax, xmm0
.L562:
	ret
.L568:
	subss	xmm0, DWORD PTR .LC15[rip]
	cvttss2si	eax, xmm0
	add	eax, 32768
	jmp	.L562
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
.L570:
	mov	edx, r8d
	sar	edx, cl
	and	edx, 1
	add	eax, edx
	add	ecx, 1
	cmp	ecx, 16
	jne	.L570
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
.L573:
	mov	eax, r8d
	sar	eax, cl
	and	eax, 1
	add	edx, eax
	add	ecx, 1
	cmp	ecx, 16
	jne	.L573
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__mulsi3_iq2000
	.def	__mulsi3_iq2000;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_iq2000
__mulsi3_iq2000:
	.seh_endprologue
	test	ecx, ecx
	je	.L578
	mov	r8d, 0
	.p2align 5
.L577:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	r8d, eax
	add	edx, edx
	shr	ecx
	jne	.L577
.L575:
	mov	eax, r8d
	ret
.L578:
	mov	r8d, 0
	jmp	.L575
	.seh_endproc
	.globl	__mulsi3_lm32
	.def	__mulsi3_lm32;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_lm32
__mulsi3_lm32:
	.seh_endprologue
	mov	r8d, 0
	test	ecx, ecx
	je	.L580
	test	edx, edx
	je	.L584
	.p2align 5
.L582:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	r8d, eax
	add	ecx, ecx
	shr	edx
	jne	.L582
.L580:
	mov	eax, r8d
	ret
.L584:
	mov	r8d, 0
	jmp	.L580
	.seh_endproc
	.globl	__udivmodsi4
	.def	__udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4
__udivmodsi4:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jnb	.L588
	.p2align 5
.L587:
	test	edx, edx
	js	.L588
	add	edx, edx
	cmp	edx, ecx
	setb	r9b
	add	eax, eax
	setne	r10b
	test	r10b, r9b
	jne	.L587
.L588:
	mov	r9d, 0
	test	eax, eax
	jne	.L589
.L590:
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4
.L592:
	shr	edx
	shr	eax
	je	.L590
.L589:
	cmp	ecx, edx
	jb	.L592
	sub	ecx, edx
	or	r9d, eax
	jmp	.L592
	.seh_endproc
	.globl	__mspabi_cmpf
	.def	__mspabi_cmpf;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpf
__mspabi_cmpf:
	.seh_endprologue
	mov	eax, -1
	comiss	xmm1, xmm0
	ja	.L601
	comiss	xmm0, xmm1
	seta	al
	movzx	eax, al
.L601:
	ret
	.seh_endproc
	.globl	__mspabi_cmpd
	.def	__mspabi_cmpd;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpd
__mspabi_cmpd:
	.seh_endprologue
	mov	eax, -1
	comisd	xmm1, xmm0
	ja	.L604
	comisd	xmm0, xmm1
	seta	al
	movzx	eax, al
.L604:
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
	js	.L617
.L610:
	test	edx, edx
	je	.L615
	mov	r8d, 0
	mov	r9d, 0
	.p2align 6
.L612:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	r8d, eax
	add	ecx, ecx
	lea	eax, 1[r9]
	mov	r9d, eax
	sar	edx
	setne	r10b
	cmp	al, 31
	setbe	al
	test	al, r10b
	jne	.L612
.L611:
	mov	eax, r8d
	neg	eax
	test	r11d, r11d
	cmovne	r8d, eax
	mov	eax, r8d
	ret
.L617:
	neg	edx
	mov	r11d, 1
	jmp	.L610
.L615:
	mov	r8d, 0
	jmp	.L611
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
	js	.L623
.L619:
	test	edx, edx
	js	.L624
.L620:
	mov	r8d, 0
	call	__udivmodsi4
	mov	edx, eax
	neg	edx
	test	ebx, ebx
	cmovne	eax, edx
	add	rsp, 32
	pop	rbx
	ret
.L623:
	neg	ecx
	mov	ebx, 1
	jmp	.L619
.L624:
	neg	edx
	xor	ebx, 1
	jmp	.L620
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
	js	.L629
.L626:
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
.L629:
	neg	ecx
	mov	ebx, 1
	jmp	.L626
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
	jnb	.L632
	.p2align 5
.L631:
	test	ax, ax
	js	.L632
	add	eax, eax
	cmp	ax, r10w
	setb	dl
	add	r9w, r9w
	setne	cl
	test	cl, dl
	jne	.L631
.L632:
	mov	edx, 0
	test	r9w, r9w
	jne	.L633
.L634:
	test	r8d, r8d
	cmovne	edx, r10d
	mov	eax, edx
	ret
	.p2align 4
.L636:
	shr	ax
	shr	r9w
	je	.L634
.L633:
	cmp	r10w, ax
	jb	.L636
	sub	r10d, eax
	or	edx, r9d
	jmp	.L636
	.seh_endproc
	.globl	__udivmodsi4_libgcc
	.def	__udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jnb	.L647
	.p2align 5
.L646:
	test	edx, edx
	js	.L647
	add	edx, edx
	cmp	edx, ecx
	setb	r9b
	add	eax, eax
	setne	r10b
	test	r10b, r9b
	jne	.L646
.L647:
	mov	r9d, 0
	test	eax, eax
	jne	.L648
.L649:
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4
.L651:
	shr	edx
	shr	eax
	je	.L649
.L648:
	cmp	ecx, edx
	jb	.L651
	sub	ecx, edx
	or	r9d, eax
	jmp	.L651
	.seh_endproc
	.globl	__ashldi3
	.def	__ashldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashldi3
__ashldi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L661
	lea	ecx, -32[rdx]
	sal	r8d, cl
	mov	rax, r8
	sal	rax, 32
.L660:
	ret
.L661:
	mov	rax, rcx
	test	edx, edx
	je	.L660
	mov	r9, rcx
	sar	r9, 32
	mov	ecx, edx
	sal	r9d, cl
	mov	ecx, 32
	sub	ecx, edx
	shr	eax, cl
	or	eax, r9d
	sal	rax, 32
	mov	ecx, edx
	sal	r8d, cl
	or	rax, r8
	jmp	.L660
	.seh_endproc
	.globl	__ashlti3
	.def	__ashlti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashlti3
__ashlti3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	rax, rcx
	mov	rcx, QWORD PTR [rcx]
	mov	rax, QWORD PTR 8[rax]
	mov	r8, rcx
	mov	r9, rax
	test	dl, 64
	je	.L666
	mov	r10d, 0
	lea	ecx, -64[rdx]
	sal	r8, cl
	mov	r11, r8
.L667:
	mov	rcx, r10
	mov	rax, r11
.L668:
	mov	QWORD PTR [rsp], rcx
	mov	rdx, QWORD PTR [rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rax
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
.L666:
	test	edx, edx
	je	.L668
	mov	r10, rcx
	mov	ecx, edx
	sal	r10, cl
	sal	r9, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	r8, cl
	or	r8, r9
	mov	r11, r8
	jmp	.L667
	.seh_endproc
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L671
	sar	r8, 32
	mov	eax, r8d
	sar	eax, 31
	lea	ecx, -32[rdx]
	sar	r8d, cl
	sal	rax, 32
	or	rax, r8
.L670:
	ret
.L671:
	mov	rax, rcx
	test	edx, edx
	je	.L670
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
	or	r9d, r8d
	sal	rax, 32
	or	rax, r9
	jmp	.L670
	.seh_endproc
	.globl	__ashrti3
	.def	__ashrti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrti3
__ashrti3:
	push	r12
	.seh_pushreg	r12
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 8[rcx]
	mov	r10, r8
	mov	rax, rcx
	test	dl, 64
	je	.L676
	sar	rcx, 63
	mov	r12, rcx
	lea	ecx, -64[rdx]
	sar	rax, cl
	mov	r11, rax
.L677:
	mov	r8, r11
	mov	rcx, r12
.L678:
	mov	QWORD PTR [rsp], r8
	mov	rax, QWORD PTR [rsp]
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 16
	pop	r12
	ret
.L676:
	test	edx, edx
	je	.L678
	mov	r9, rcx
	mov	ecx, edx
	sar	r9, cl
	mov	r12, r9
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r10, cl
	or	rax, r10
	mov	r11, rax
	jmp	.L677
	.seh_endproc
	.globl	__bswapdi2
	.def	__bswapdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__bswapdi2
__bswapdi2:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rdx, rcx
	mov	rsi, rcx
	shr	rsi, 56
	mov	rbx, rcx
	shr	rbx, 40
	and	ebx, 65280
	mov	r11, rcx
	shr	r11, 24
	and	r11d, 16711680
	mov	r10, rcx
	shr	r10, 8
	and	r10d, 4278190080
	mov	r9, rcx
	sal	r9, 8
	movabs	rax, 1095216660480
	and	r9, rax
	mov	r8, rcx
	sal	r8, 24
	movabs	rax, 280375465082880
	and	r8, rax
	sal	rcx, 40
	movabs	rax, 71776119061217280
	and	rcx, rax
	mov	rax, rdx
	sal	rax, 56
	or	rax, rsi
	or	rax, rbx
	or	rax, r11
	or	rax, r10
	or	rax, r9
	or	rax, r8
	or	rax, rcx
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.globl	__bswapsi2
	.def	__bswapsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__bswapsi2
__bswapsi2:
	.seh_endprologue
	mov	r9d, ecx
	shr	r9d, 24
	mov	r8d, ecx
	shr	r8d, 8
	and	r8d, 65280
	mov	edx, ecx
	sal	edx, 8
	and	edx, 16711680
	mov	eax, ecx
	sal	eax, 24
	or	eax, r9d
	or	eax, r8d
	or	eax, edx
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
	add	eax, r8d
	test	dl, -16
	sete	r8b
	movzx	r8d, r8b
	sal	r8d, 2
	mov	ecx, 4
	sub	ecx, r8d
	shr	edx, cl
	add	eax, r8d
	test	dl, 12
	sete	r9b
	movzx	r9d, r9b
	add	r9d, r9d
	mov	r8d, 2
	mov	ecx, r8d
	sub	ecx, r9d
	shr	edx, cl
	add	eax, r9d
	mov	ecx, edx
	shr	ecx
	not	ecx
	sub	r8d, edx
	mov	edx, ecx
	and	edx, 1
	neg	edx
	and	edx, r8d
	add	eax, edx
	ret
	.seh_endproc
	.globl	__clzti2
	.def	__clzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzti2
__clzti2:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	r8, QWORD PTR 8[rcx]
	mov	r9, rax
	cmp	r8, 1
	sbb	eax, eax
	movsx	rcx, eax
	mov	rdx, rcx
	not	rdx
	and	rdx, r8
	and	rcx, r9
	or	rdx, rcx
	bsr	rdx, rdx
	xor	rdx, 63
	and	eax, 64
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
	jl	.L684
	mov	r9, rcx
	sar	r9, 32
	mov	r8, rdx
	sar	r8, 32
	mov	eax, 2
	cmp	r9d, r8d
	jg	.L684
	mov	eax, 0
	cmp	ecx, edx
	jb	.L684
	cmp	edx, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
.L684:
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
	mov	rax, QWORD PTR 8[rdx]
	mov	rdx, rcx
	mov	ecx, 0
	cmp	rdx, rax
	jl	.L692
	mov	ecx, 2
	jg	.L692
	mov	ecx, 0
	cmp	r8, r9
	jb	.L692
	cmp	r9, r8
	setb	cl
	movzx	ecx, cl
	add	ecx, 1
.L692:
	mov	eax, ecx
	ret
	.seh_endproc
	.globl	__ctzsi2
	.def	__ctzsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzsi2
__ctzsi2:
	.seh_endprologue
	mov	edx, ecx
	test	cx, cx
	sete	al
	movzx	eax, al
	sal	eax, 4
	mov	ecx, eax
	shr	edx, cl
	test	dl, dl
	sete	cl
	movzx	ecx, cl
	sal	ecx, 3
	shr	edx, cl
	add	eax, ecx
	test	dl, 15
	sete	cl
	movzx	ecx, cl
	sal	ecx, 2
	shr	edx, cl
	add	eax, ecx
	test	dl, 3
	sete	cl
	movzx	ecx, cl
	add	ecx, ecx
	shr	edx, cl
	and	edx, 3
	add	eax, ecx
	mov	r8d, edx
	not	r8d
	shr	edx
	mov	ecx, 2
	sub	ecx, edx
	mov	edx, r8d
	and	edx, 1
	neg	edx
	and	edx, ecx
	add	eax, edx
	ret
	.seh_endproc
	.globl	__ctzti2
	.def	__ctzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzti2
__ctzti2:
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 8[rcx]
	cmp	r8, 1
	sbb	eax, eax
	movsx	rdx, eax
	and	rcx, rdx
	not	rdx
	and	rdx, r8
	or	rdx, rcx
	rep bsf	rdx, rdx
	and	eax, 64
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
	jne	.L700
	xor	eax, eax
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	mov	edx, 0
	cmove	eax, edx
.L701:
	ret
.L700:
	rep bsf	rax, rax
	add	eax, 1
	jmp	.L701
	.seh_endproc
	.globl	__lshrdi3
	.def	__lshrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrdi3
__lshrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L704
	shr	r8, 32
	lea	ecx, -32[rdx]
	mov	eax, r8d
	shr	eax, cl
.L703:
	ret
.L704:
	mov	rax, rcx
	test	edx, edx
	je	.L703
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
	or	r9d, r8d
	sal	rax, 32
	or	rax, r9
	jmp	.L703
	.seh_endproc
	.globl	__lshrti3
	.def	__lshrti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrti3
__lshrti3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	rax, rcx
	mov	rcx, QWORD PTR [rcx]
	mov	rax, QWORD PTR 8[rax]
	mov	r9, rcx
	mov	r8, rax
	test	dl, 64
	je	.L709
	lea	ecx, -64[rdx]
	shr	r8, cl
	mov	r10, r8
	mov	r11d, 0
.L710:
	mov	rcx, r10
	mov	rax, r11
.L711:
	mov	QWORD PTR [rsp], rcx
	mov	rdx, QWORD PTR [rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rax
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
.L709:
	test	edx, edx
	je	.L711
	mov	ecx, edx
	shr	rax, cl
	mov	r11, rax
	mov	ecx, 64
	sub	ecx, edx
	sal	r8, cl
	mov	ecx, edx
	shr	r9, cl
	or	r8, r9
	mov	r10, r8
	jmp	.L710
	.seh_endproc
	.globl	__muldsi3
	.def	__muldsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldsi3
__muldsi3:
	.seh_endprologue
	movzx	r8d, cx
	movzx	r9d, dx
	mov	r10d, r8d
	imul	r10d, r9d
	mov	eax, r10d
	shr	eax, 16
	shr	ecx, 16
	imul	r9d, ecx
	add	r9d, eax
	mov	eax, r9d
	shr	eax, 16
	movzx	r9d, r9w
	movzx	r10d, r10w
	shr	edx, 16
	imul	r8d, edx
	add	r8d, r9d
	mov	r9d, r8d
	sal	r9d, 16
	lea	r9d, [r9+r10]
	sal	rax, 32
	or	rax, r9
	mov	r9, rax
	sar	r9, 32
	shr	r8d, 16
	lea	r8d, [r8+r9]
	sal	r8, 32
	mov	eax, eax
	or	rax, r8
	mov	r8, rax
	sar	r8, 32
	imul	ecx, edx
	lea	edx, [rcx+r8]
	sal	rdx, 32
	mov	eax, eax
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
	mov	rsi, rcx
	mov	rbx, rdx
	call	__muldsi3
	mov	rcx, rax
	sar	rcx, 32
	mov	rdx, rsi
	sar	rdx, 32
	imul	edx, ebx
	sar	rbx, 32
	imul	ebx, esi
	add	edx, ebx
	lea	edx, [rdx+rcx]
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
	mov	r9, rdx
	mov	r8d, ecx
	mov	eax, edx
	mov	rdx, r8
	imul	rdx, rax
	mov	r10, rdx
	shr	r10, 32
	shr	rcx, 32
	imul	rax, rcx
	add	rax, r10
	mov	edx, edx
	mov	r10, rax
	sal	r10, 32
	add	rdx, r10
	shr	rax, 32
	xchg	rdx, rax
	mov	r11, rax
	shr	r11, 32
	mov	r10d, eax
	mov	rax, r10
	shr	r9, 32
	imul	r8, r9
	add	r8, r11
	mov	r10, r8
	sal	r10, 32
	add	r10, rax
	shr	r8, 32
	add	r8, rdx
	imul	rcx, r9
	add	rcx, r8
	mov	QWORD PTR [rsp], r10
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
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
	mov	rdi, QWORD PTR [rcx]
	mov	rbx, QWORD PTR 8[rcx]
	mov	rbp, QWORD PTR [rdx]
	mov	rsi, QWORD PTR 8[rdx]
	mov	rdx, rbp
	mov	rcx, rdi
	call	__mulddi3
	movaps	XMMWORD PTR 32[rsp], xmm0
	mov	rax, QWORD PTR 32[rsp]
	mov	rdx, QWORD PTR 40[rsp]
	imul	rbx, rbp
	imul	rsi, rdi
	add	rbx, rsi
	add	rbx, rdx
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
	mov	rax, QWORD PTR 8[rcx]
	xor	rax, rdx
	mov	rdx, rax
	sar	rdx, 32
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
	shr	ecx, 31
	movsd	xmm1, QWORD PTR .LC14[rip]
	jmp	.L728
	.p2align 5
.L726:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L727
	mulsd	xmm0, xmm0
.L728:
	test	dl, 1
	je	.L726
	mulsd	xmm1, xmm0
	jmp	.L726
.L727:
	test	ecx, ecx
	je	.L725
	movsd	xmm0, QWORD PTR .LC14[rip]
	divsd	xmm0, xmm1
	movapd	xmm1, xmm0
.L725:
	movapd	xmm0, xmm1
	ret
	.seh_endproc
	.globl	__powisf2
	.def	__powisf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powisf2
__powisf2:
	.seh_endprologue
	mov	ecx, edx
	shr	ecx, 31
	movss	xmm1, DWORD PTR .LC16[rip]
	jmp	.L733
	.p2align 5
.L731:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L732
	mulss	xmm0, xmm0
.L733:
	test	dl, 1
	je	.L731
	mulss	xmm1, xmm0
	jmp	.L731
.L732:
	test	ecx, ecx
	je	.L730
	movss	xmm0, DWORD PTR .LC16[rip]
	divss	xmm0, xmm1
	movaps	xmm1, xmm0
.L730:
	movaps	xmm0, xmm1
	ret
	.seh_endproc
	.globl	__ucmpdi2
	.def	__ucmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpdi2
__ucmpdi2:
	.seh_endprologue
	mov	r9, rcx
	shr	r9, 32
	mov	r8, rdx
	shr	r8, 32
	mov	eax, 0
	cmp	r9d, r8d
	jb	.L735
	mov	r8, r9
	mov	r9, rdx
	shr	r9, 32
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L735
	mov	eax, 0
	cmp	ecx, edx
	jb	.L735
	cmp	edx, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
.L735:
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
	mov	rax, rcx
	mov	rcx, QWORD PTR [rcx]
	mov	rax, QWORD PTR 8[rax]
	mov	r9, QWORD PTR [rdx]
	mov	rdx, QWORD PTR 8[rdx]
	mov	r8, rcx
	mov	ecx, 0
	cmp	rax, rdx
	jb	.L743
	mov	ecx, 2
	cmp	rdx, rax
	jb	.L743
	mov	ecx, 0
	cmp	r8, r9
	jb	.L743
	cmp	r9, r8
	setb	cl
	movzx	ecx, cl
	add	ecx, 1
.L743:
	mov	eax, ecx
	ret
	.seh_endproc
.lcomm s.0,7,1
	.section .rdata,"dr"
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
