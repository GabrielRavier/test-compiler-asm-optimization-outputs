	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.globl	make_ti
	.def	make_ti;	.scl	2;	.type	32;	.endef
	.seh_proc	make_ti
make_ti:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR -8[rbp], rcx
	mov	r9, QWORD PTR -8[rbp]
	mov	QWORD PTR -16[rbp], rdx
	mov	QWORD PTR -8[rbp], r9
	movdqa	xmm0, XMMWORD PTR -16[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	make_tu
	.def	make_tu;	.scl	2;	.type	32;	.endef
	.seh_proc	make_tu
make_tu:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR -8[rbp], rcx
	mov	r9, QWORD PTR -8[rbp]
	mov	QWORD PTR -16[rbp], rdx
	mov	QWORD PTR -8[rbp], r9
	movdqa	xmm0, XMMWORD PTR -16[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	memmove
	.def	memmove;	.scl	2;	.type	32;	.endef
	.seh_proc	memmove
memmove:
	.seh_endprologue
	cmp	rdx, rcx
	jnb	.L4
	add	rdx, r8
	lea	r11, [rcx+r8]
	mov	rax, r8
	jmp	.L5
	.p2align 5
.L6:
	mov	r9, rdx
	sub	r9, r8
	movzx	r10d, BYTE PTR -1[r9+rax]
	mov	r9, r11
	sub	r9, r8
	mov	BYTE PTR -1[r9+rax], r10b
	sub	rax, 1
.L5:
	test	rax, rax
	jne	.L6
	jmp	.L7
.L4:
	mov	eax, 0
	cmp	rcx, rdx
	jne	.L8
	jmp	.L7
	.p2align 5
.L9:
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	add	rax, 1
.L8:
	cmp	rax, r8
	jne	.L9
.L7:
	mov	rax, rcx
	ret
	.seh_endproc
	.globl	memccpy
	.def	memccpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memccpy
memccpy:
	.seh_endprologue
	movzx	r8d, r8b
	jmp	.L12
	.p2align 6
.L14:
	sub	r9, 1
	add	rdx, 1
	add	rcx, 1
.L12:
	test	r9, r9
	je	.L13
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [rcx], r10b
	movzx	r10d, r10b
	cmp	r8d, r10d
	jne	.L14
.L13:
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
	movzx	edx, dl
	jmp	.L18
	.p2align 5
.L20:
	add	rcx, 1
	sub	r8, 1
.L18:
	test	r8, r8
	je	.L19
	movzx	eax, BYTE PTR [rcx]
	cmp	edx, eax
	jne	.L20
.L19:
	test	r8, r8
	mov	eax, 0
	cmovne	rax, rcx
	ret
	.seh_endproc
	.globl	memcmp
	.def	memcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	memcmp
memcmp:
	.seh_endprologue
	jmp	.L24
	.p2align 5
.L26:
	sub	r8, 1
	add	rcx, 1
	add	rdx, 1
.L24:
	test	r8, r8
	je	.L25
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	je	.L26
.L25:
	mov	eax, 0
	test	r8, r8
	je	.L27
	movzx	eax, BYTE PTR [rcx]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
.L27:
	ret
	.seh_endproc
	.globl	memcpy
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memcpy
memcpy:
	.seh_endprologue
	mov	rax, rcx
	mov	r9d, 0
	jmp	.L30
	.p2align 5
.L31:
	movzx	r10d, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rax+r9], r10b
	add	r9, 1
.L30:
	cmp	r9, r8
	jne	.L31
	ret
	.seh_endproc
	.globl	memrchr
	.def	memrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memrchr
memrchr:
	.seh_endprologue
	movzx	edx, dl
	sub	r8, 1
	jmp	.L33
.L35:
	movzx	r9d, BYTE PTR [rcx+r8]
	lea	r10, -1[r8]
	cmp	edx, r9d
	jne	.L36
	lea	rax, [rcx+r8]
	jmp	.L34
.L36:
	mov	r8, r10
.L33:
	cmp	r8, -1
	jne	.L35
	mov	eax, 0
.L34:
	ret
	.seh_endproc
	.globl	memset
	.def	memset;	.scl	2;	.type	32;	.endef
	.seh_proc	memset
memset:
	.seh_endprologue
	mov	rax, rcx
	add	r8, rcx
	mov	r9, rcx
	jmp	.L38
	.p2align 4
.L39:
	mov	BYTE PTR [r9], dl
	add	r9, 1
.L38:
	cmp	r9, r8
	jne	.L39
	ret
	.seh_endproc
	.globl	stpcpy
	.def	stpcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	stpcpy
stpcpy:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L41
	.p2align 5
.L42:
	add	rdx, 1
	add	rax, 1
.L41:
	movzx	ecx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], cl
	test	cl, cl
	jne	.L42
	ret
	.seh_endproc
	.globl	strchrnul
	.def	strchrnul;	.scl	2;	.type	32;	.endef
	.seh_proc	strchrnul
strchrnul:
	.seh_endprologue
	mov	rax, rcx
	movzx	edx, dl
	jmp	.L44
	.p2align 4
.L46:
	add	rax, 1
.L44:
	cmp	BYTE PTR [rax], 0
	je	.L45
	movzx	ecx, BYTE PTR [rax]
	cmp	edx, ecx
	jne	.L46
.L45:
	ret
	.seh_endproc
	.globl	strchr
	.def	strchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strchr
strchr:
	.seh_endprologue
	.p2align 5
.L49:
	movsx	eax, BYTE PTR [rcx]
	cmp	edx, eax
	je	.L50
	add	rcx, 1
	cmp	BYTE PTR -1[rcx], 0
	jne	.L49
	mov	eax, 0
	jmp	.L48
.L50:
	mov	rax, rcx
.L48:
	ret
	.seh_endproc
	.globl	strcmp
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strcmp
strcmp:
	.seh_endprologue
	jmp	.L52
	.p2align 5
.L54:
	add	rcx, 1
	add	rdx, 1
.L52:
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	jne	.L53
	cmp	BYTE PTR [rcx], 0
	jne	.L54
.L53:
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
	mov	rax, rcx
	jmp	.L56
	.p2align 4
.L57:
	add	rax, 1
.L56:
	cmp	BYTE PTR [rax], 0
	jne	.L57
	sub	rax, rcx
	ret
	.seh_endproc
	.globl	strncmp
	.def	strncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strncmp
strncmp:
	.seh_endprologue
	mov	eax, 0
	test	r8, r8
	je	.L59
	mov	rax, rcx
	jmp	.L60
.L62:
	add	rax, 1
	add	rdx, 1
.L60:
	cmp	BYTE PTR [rax], 0
	je	.L61
	lea	r9, -1[rcx+r8]
	cmp	rax, r9
	setne	r10b
	cmp	BYTE PTR [rdx], 0
	setne	r9b
	test	r10b, r9b
	je	.L61
	movzx	r11d, BYTE PTR [rdx]
	cmp	BYTE PTR [rax], r11b
	je	.L62
.L61:
	movzx	eax, BYTE PTR [rax]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
.L59:
	ret
	.seh_endproc
	.globl	swab
	.def	swab;	.scl	2;	.type	32;	.endef
	.seh_proc	swab
swab:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L65
	.p2align 6
.L66:
	movzx	r9d, BYTE PTR 1[rax]
	mov	BYTE PTR [rdx], r9b
	movzx	r9d, BYTE PTR [rax]
	mov	BYTE PTR 1[rdx], r9b
	add	rdx, 2
	add	rax, 2
.L65:
	lea	r9, [rcx+r8]
	sub	r9, rax
	cmp	r9, 1
	jg	.L66
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
	jne	.L78
	movzx	edx, cx
	sub	edx, 8232
	cmp	edx, 1
	jbe	.L78
	movzx	ecx, cx
	sub	ecx, 65529
	cmp	ecx, 3
	setb	al
	movzx	eax, al
.L78:
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
	ja	.L84
	lea	eax, 1[rcx]
	and	eax, 127
	cmp	eax, 32
	setg	al
	movzx	eax, al
	jmp	.L85
.L84:
	cmp	cx, 8231
	setbe	dl
	movzx	eax, cx
	sub	eax, 8234
	cmp	eax, 47061
	setbe	r8b
	mov	eax, 1
	or	dl, r8b
	jne	.L85
	movzx	edx, cx
	sub	edx, 57344
	cmp	edx, 8184
	jbe	.L85
	movzx	edx, cx
	sub	edx, 65532
	mov	eax, 0
	cmp	edx, 1048579
	ja	.L85
	not	ecx
	test	ecx, 65534
	setne	al
	movzx	eax, al
.L85:
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
	jbe	.L91
	or	ecx, 32
	movzx	ecx, cx
	sub	ecx, 97
	cmp	ecx, 6
	setb	dl
	movzx	edx, dl
.L91:
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
	jp	.L96
	ucomisd	xmm1, xmm1
	jp	.L99
	comisd	xmm0, xmm1
	jbe	.L102
	subsd	xmm0, xmm1
	jmp	.L96
.L99:
	movapd	xmm0, xmm1
	jmp	.L96
.L102:
	pxor	xmm0, xmm0
.L96:
	ret
	.seh_endproc
	.globl	fdimf
	.def	fdimf;	.scl	2;	.type	32;	.endef
	.seh_proc	fdimf
fdimf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L104
	ucomiss	xmm1, xmm1
	jp	.L107
	comiss	xmm0, xmm1
	jbe	.L110
	subss	xmm0, xmm1
	jmp	.L104
.L107:
	movaps	xmm0, xmm1
	jmp	.L104
.L110:
	pxor	xmm0, xmm0
.L104:
	ret
	.seh_endproc
	.globl	fmax
	.def	fmax;	.scl	2;	.type	32;	.endef
	.seh_proc	fmax
fmax:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L115
	ucomisd	xmm1, xmm1
	jp	.L116
	movmskpd	edx, xmm0
	and	edx, 1
	movmskpd	eax, xmm1
	and	eax, 1
	cmp	edx, eax
	je	.L113
	movmskpd	eax, xmm0
	movapd	xmm2, xmm0
	test	al, 1
	je	.L112
	movapd	xmm2, xmm1
	jmp	.L112
.L113:
	movapd	xmm2, xmm1
	maxsd	xmm2, xmm0
	jmp	.L112
.L115:
	movapd	xmm2, xmm1
	jmp	.L112
.L116:
	movapd	xmm2, xmm0
.L112:
	movapd	xmm0, xmm2
	ret
	.seh_endproc
	.globl	fmaxf
	.def	fmaxf;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxf
fmaxf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L124
	ucomiss	xmm1, xmm1
	jp	.L125
	movd	edx, xmm0
	and	edx, -2147483648
	movd	eax, xmm1
	and	eax, -2147483648
	cmp	edx, eax
	je	.L122
	movd	eax, xmm0
	movaps	xmm2, xmm0
	test	eax, eax
	jns	.L121
	movaps	xmm2, xmm1
	jmp	.L121
.L122:
	movaps	xmm2, xmm1
	maxss	xmm2, xmm0
	jmp	.L121
.L124:
	movaps	xmm2, xmm1
	jmp	.L121
.L125:
	movaps	xmm2, xmm0
.L121:
	movaps	xmm0, xmm2
	ret
	.seh_endproc
	.globl	fmaxl
	.def	fmaxl;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxl
fmaxl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jnp	.L130
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L129
.L130:
	fxch	st(1)
	fucomi	st, st(0)
	jnp	.L132
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L129
.L132:
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
	fcmovne	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	jmp	.L129
.L133:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
.L129:
	mov	rax, rcx
	ret
	.seh_endproc
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L144
	ucomisd	xmm1, xmm1
	jp	.L145
	movmskpd	edx, xmm0
	and	edx, 1
	movmskpd	eax, xmm1
	and	eax, 1
	cmp	edx, eax
	je	.L142
	movmskpd	eax, xmm0
	movapd	xmm2, xmm1
	test	al, 1
	je	.L141
	movapd	xmm2, xmm0
	jmp	.L141
.L142:
	movapd	xmm2, xmm0
	minsd	xmm2, xmm1
	jmp	.L141
.L144:
	movapd	xmm2, xmm1
	jmp	.L141
.L145:
	movapd	xmm2, xmm0
.L141:
	movapd	xmm0, xmm2
	ret
	.seh_endproc
	.globl	fminf
	.def	fminf;	.scl	2;	.type	32;	.endef
	.seh_proc	fminf
fminf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L153
	ucomiss	xmm1, xmm1
	jp	.L154
	movd	edx, xmm0
	and	edx, -2147483648
	movd	eax, xmm1
	and	eax, -2147483648
	cmp	edx, eax
	je	.L151
	movd	eax, xmm0
	movaps	xmm2, xmm1
	test	eax, eax
	jns	.L150
	movaps	xmm2, xmm0
	jmp	.L150
.L151:
	movaps	xmm2, xmm0
	minss	xmm2, xmm1
	jmp	.L150
.L153:
	movaps	xmm2, xmm1
	jmp	.L150
.L154:
	movaps	xmm2, xmm0
.L150:
	movaps	xmm0, xmm2
	ret
	.seh_endproc
	.globl	fminl
	.def	fminl;	.scl	2;	.type	32;	.endef
	.seh_proc	fminl
fminl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jnp	.L159
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L158
.L159:
	fxch	st(1)
	fucomi	st, st(0)
	jnp	.L161
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L158
.L161:
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
	je	.L162
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmove	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	jmp	.L158
.L162:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
.L158:
	mov	rax, rcx
	ret
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
	lea	rax, s.0[rip]
	jmp	.L170
	.p2align 5
.L171:
	mov	edx, ecx
	and	edx, 63
	lea	r8, digits[rip]
	movzx	edx, BYTE PTR [r8+rdx]
	mov	BYTE PTR [rax], dl
	add	rax, 1
	shr	ecx, 6
.L170:
	test	ecx, ecx
	jne	.L171
	mov	BYTE PTR [rax], 0
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
	jne	.L175
	mov	QWORD PTR 8[rcx], 0
	mov	QWORD PTR [rcx], 0
	jmp	.L174
.L175:
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	QWORD PTR [rdx], rcx
	cmp	QWORD PTR [rcx], 0
	je	.L174
	mov	rax, QWORD PTR [rcx]
	mov	QWORD PTR 8[rax], rcx
.L174:
	ret
	.seh_endproc
	.globl	remque
	.def	remque;	.scl	2;	.type	32;	.endef
	.seh_proc	remque
remque:
	.seh_endprologue
	cmp	QWORD PTR [rcx], 0
	je	.L178
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L178:
	cmp	QWORD PTR 8[rcx], 0
	je	.L177
	mov	rax, QWORD PTR 8[rcx]
	mov	rdx, QWORD PTR [rcx]
	mov	QWORD PTR [rax], rdx
.L177:
	ret
	.seh_endproc
	.globl	lsearch
	.def	lsearch;	.scl	2;	.type	32;	.endef
	.seh_proc	lsearch
lsearch:
	push	rbp
	.seh_pushreg	rbp
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	r13, rcx
	mov	QWORD PTR 88[rbp], rdx
	mov	r15, r8
	mov	rdi, r9
	mov	r14, QWORD PTR 112[rbp]
	mov	r12, QWORD PTR [r8]
	mov	rsi, rdx
	mov	ebx, 0
	jmp	.L181
.L184:
	mov	rdx, rsi
	mov	rcx, r13
	call	r14
	add	rsi, rdi
	test	eax, eax
	jne	.L182
	imul	rbx, rdi
	mov	rax, rbx
	add	rax, QWORD PTR 88[rbp]
	jmp	.L183
.L182:
	add	rbx, 1
.L181:
	cmp	rbx, r12
	jne	.L184
	lea	rax, 1[r12]
	mov	QWORD PTR [r15], rax
	imul	r12, rdi
	mov	rcx, r12
	add	rcx, QWORD PTR 88[rbp]
	mov	r8, rdi
	mov	rdx, r13
	call	memcpy
.L183:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
	.seh_endproc
	.globl	lfind
	.def	lfind;	.scl	2;	.type	32;	.endef
	.seh_proc	lfind
lfind:
	push	rbp
	.seh_pushreg	rbp
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	r12, rcx
	mov	r14, rdx
	mov	rdi, r9
	mov	r15, QWORD PTR 112[rbp]
	mov	r13, QWORD PTR [r8]
	mov	rsi, rdx
	mov	ebx, 0
	jmp	.L186
.L189:
	mov	rdx, rsi
	mov	rcx, r12
	call	r15
	add	rsi, rdi
	test	eax, eax
	jne	.L187
	imul	rbx, rdi
	lea	rax, [r14+rbx]
	jmp	.L188
.L187:
	add	rbx, 1
.L186:
	cmp	rbx, r13
	jne	.L189
	mov	eax, 0
.L188:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
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
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	rbx, rcx
	jmp	.L192
.L193:
	add	rbx, 1
.L192:
	movsx	ecx, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L193
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L199
	mov	ecx, 0
	cmp	eax, 45
	jne	.L195
	mov	ecx, 1
	jmp	.L194
.L199:
	mov	ecx, 0
.L194:
	add	rbx, 1
.L195:
	mov	edx, 0
	jmp	.L196
	.p2align 5
.L197:
	lea	edx, [rdx+rdx*4]
	add	edx, edx
	add	rbx, 1
	movsx	eax, BYTE PTR -1[rbx]
	sub	eax, 48
	sub	edx, eax
.L196:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L197
	mov	eax, edx
	neg	eax
	test	ecx, ecx
	cmovne	eax, edx
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	atol
	.def	atol;	.scl	2;	.type	32;	.endef
	.seh_proc	atol
atol:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	rbx, rcx
	jmp	.L203
.L204:
	add	rbx, 1
.L203:
	movsx	ecx, BYTE PTR [rbx]
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
	jmp	.L205
.L210:
	mov	ecx, 0
.L205:
	add	rbx, 1
.L206:
	mov	edx, 0
	jmp	.L207
	.p2align 5
.L208:
	lea	edx, [rdx+rdx*4]
	add	edx, edx
	add	rbx, 1
	movsx	eax, BYTE PTR -1[rbx]
	sub	eax, 48
	sub	edx, eax
.L207:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L208
	mov	eax, edx
	neg	eax
	test	ecx, ecx
	cmovne	eax, edx
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	atoll
	.def	atoll;	.scl	2;	.type	32;	.endef
	.seh_proc	atoll
atoll:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
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
	jmp	.L216
.L221:
	mov	ecx, 0
.L216:
	add	rbx, 1
.L217:
	mov	edx, 0
	jmp	.L218
	.p2align 6
.L219:
	lea	rdx, [rdx+rdx*4]
	add	rdx, rdx
	add	rbx, 1
	movsx	eax, BYTE PTR -1[rbx]
	sub	eax, 48
	cdqe
	sub	rdx, rax
.L218:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L219
	mov	rax, rdx
	neg	rax
	test	ecx, ecx
	cmovne	rax, rdx
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	bsearch
	.def	bsearch;	.scl	2;	.type	32;	.endef
	.seh_proc	bsearch
bsearch:
	push	rbp
	.seh_pushreg	rbp
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	r13, rcx
	mov	r12, rdx
	mov	rsi, r8
	mov	rdi, r9
	mov	r14, QWORD PTR 96[rbp]
	jmp	.L225
.L229:
	mov	rbx, rsi
	shr	rbx
	imul	rbx, rdi
	add	rbx, r12
	mov	rdx, rbx
	mov	rcx, r13
	call	r14
	test	eax, eax
	jns	.L226
	shr	rsi
	jmp	.L225
.L226:
	jle	.L230
	lea	r12, [rbx+rdi]
	mov	rax, rsi
	shr	rax
	sub	rsi, 1
	sub	rsi, rax
.L225:
	test	rsi, rsi
	jne	.L229
	mov	eax, 0
	jmp	.L228
.L230:
	mov	rax, rbx
.L228:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	rbp
	ret
	.seh_endproc
	.globl	bsearch_r
	.def	bsearch_r;	.scl	2;	.type	32;	.endef
	.seh_proc	bsearch_r
bsearch_r:
	push	rbp
	.seh_pushreg	rbp
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	r13, rcx
	mov	r12, r9
	mov	r15, QWORD PTR 112[rbp]
	mov	r14, QWORD PTR 120[rbp]
	mov	esi, r8d
	mov	rdi, rdx
	jmp	.L232
.L235:
	mov	ebx, esi
	sar	ebx
	movsx	rbx, ebx
	imul	rbx, r12
	add	rbx, rdi
	mov	r8, r14
	mov	rdx, rbx
	mov	rcx, r13
	call	r15
	test	eax, eax
	je	.L236
	jle	.L234
	lea	rdi, [rbx+r12]
	sub	esi, 1
.L234:
	sar	esi
.L232:
	test	esi, esi
	jne	.L235
	mov	eax, 0
	jmp	.L233
.L236:
	mov	rax, rbx
.L233:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
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
	jmp	.L245
	.p2align 4
.L247:
	add	rcx, 2
.L245:
	cmp	WORD PTR [rcx], 0
	je	.L246
	cmp	dx, WORD PTR [rcx]
	jne	.L247
.L246:
	cmp	WORD PTR [rcx], 0
	mov	eax, 0
	cmovne	rax, rcx
	ret
	.seh_endproc
	.globl	wcscmp
	.def	wcscmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscmp
wcscmp:
	.seh_endprologue
	jmp	.L251
.L253:
	add	rcx, 2
	add	rdx, 2
.L251:
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jne	.L252
	cmp	WORD PTR [rcx], 0
	je	.L252
	test	ax, ax
	jne	.L253
.L252:
	mov	eax, -1
	movzx	r8d, WORD PTR [rdx]
	cmp	WORD PTR [rcx], r8w
	jb	.L254
	movzx	eax, WORD PTR [rcx]
	cmp	r8w, ax
	setb	al
	movzx	eax, al
.L254:
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
.L257:
	add	rdx, 2
	add	r8, 2
	movzx	r9d, WORD PTR -2[rdx]
	mov	WORD PTR -2[r8], r9w
	test	r9w, r9w
	jne	.L257
	ret
	.seh_endproc
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L259
	.p2align 4
.L260:
	add	rax, 2
.L259:
	cmp	WORD PTR [rax], 0
	jne	.L260
	sub	rax, rcx
	sar	rax
	ret
	.seh_endproc
	.globl	wcsncmp
	.def	wcsncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcsncmp
wcsncmp:
	.seh_endprologue
	jmp	.L262
.L264:
	sub	r8, 1
	add	rcx, 2
	add	rdx, 2
.L262:
	test	r8, r8
	je	.L263
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jne	.L263
	cmp	WORD PTR [rcx], 0
	je	.L263
	test	ax, ax
	jne	.L264
.L263:
	mov	eax, 0
	test	r8, r8
	je	.L265
	mov	eax, -1
	movzx	r9d, WORD PTR [rdx]
	cmp	WORD PTR [rcx], r9w
	jb	.L265
	movzx	eax, WORD PTR [rcx]
	cmp	r9w, ax
	setb	al
	movzx	eax, al
.L265:
	ret
	.seh_endproc
	.globl	wmemchr
	.def	wmemchr;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemchr
wmemchr:
	.seh_endprologue
	jmp	.L269
	.p2align 5
.L271:
	sub	r8, 1
	add	rcx, 2
.L269:
	test	r8, r8
	je	.L270
	cmp	dx, WORD PTR [rcx]
	jne	.L271
.L270:
	test	r8, r8
	mov	eax, 0
	cmovne	rax, rcx
	ret
	.seh_endproc
	.globl	wmemcmp
	.def	wmemcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcmp
wmemcmp:
	.seh_endprologue
	jmp	.L275
	.p2align 5
.L277:
	sub	r8, 1
	add	rcx, 2
	add	rdx, 2
.L275:
	test	r8, r8
	je	.L276
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	je	.L277
.L276:
	mov	eax, 0
	test	r8, r8
	je	.L278
	mov	eax, -1
	movzx	r9d, WORD PTR [rdx]
	cmp	WORD PTR [rcx], r9w
	jb	.L278
	movzx	eax, WORD PTR [rcx]
	cmp	r9w, ax
	setb	al
	movzx	eax, al
.L278:
	ret
	.seh_endproc
	.globl	wmemcpy
	.def	wmemcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcpy
wmemcpy:
	.seh_endprologue
	mov	rax, rcx
	mov	r9d, 0
	jmp	.L282
	.p2align 5
.L283:
	movzx	r10d, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], r10w
	add	r9, 1
.L282:
	cmp	r9, r8
	jne	.L283
	ret
	.seh_endproc
	.globl	wmemmove
	.def	wmemmove;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemmove
wmemmove:
	.seh_endprologue
	mov	rax, rcx
	cmp	rcx, rdx
	je	.L285
	mov	r9, rcx
	sub	r9, rdx
	lea	rcx, [r8+r8]
	cmp	r9, rcx
	jb	.L286
	mov	r9d, 0
	jmp	.L287
	.p2align 5
.L288:
	movzx	ecx, WORD PTR [rdx+r8*2]
	mov	WORD PTR [rax+r8*2], cx
.L286:
	sub	r8, 1
	cmp	r8, -1
	jne	.L288
	jmp	.L285
	.p2align 5
.L289:
	movzx	ecx, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], cx
	add	r9, 1
.L287:
	cmp	r9, r8
	jne	.L289
.L285:
	ret
	.seh_endproc
	.globl	wmemset
	.def	wmemset;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemset
wmemset:
	.seh_endprologue
	mov	rax, rcx
	mov	r9d, 0
	jmp	.L291
	.p2align 4
.L292:
	mov	WORD PTR [rax+r9*2], dx
	add	r9, 1
.L291:
	cmp	r9, r8
	jne	.L292
	ret
	.seh_endproc
	.globl	bcopy
	.def	bcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	bcopy
bcopy:
	.seh_endprologue
	cmp	rcx, rdx
	jnb	.L294
	add	rcx, r8
	add	rdx, r8
	mov	rax, r8
	jmp	.L295
	.p2align 5
.L296:
	mov	r9, rcx
	sub	r9, r8
	movzx	r10d, BYTE PTR -1[r9+rax]
	mov	r9, rdx
	sub	r9, r8
	mov	BYTE PTR -1[r9+rax], r10b
	sub	rax, 1
.L295:
	test	rax, rax
	jne	.L296
	jmp	.L293
.L294:
	mov	eax, 0
	jne	.L298
	jmp	.L293
	.p2align 5
.L299:
	movzx	r9d, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx+rax], r9b
	add	rax, 1
.L298:
	cmp	rax, r8
	jne	.L299
.L293:
	ret
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
	jmp	.L315
.L318:
	bt	ecx, eax
	jnc	.L316
	add	eax, 1
	jmp	.L317
.L316:
	add	eax, 1
.L315:
	cmp	eax, 32
	jne	.L318
	mov	eax, 0
.L317:
	ret
	.seh_endproc
	.globl	libiberty_ffs
	.def	libiberty_ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	libiberty_ffs
libiberty_ffs:
	.seh_endprologue
	mov	eax, 0
	test	ecx, ecx
	je	.L320
	mov	eax, 1
	jmp	.L321
	.p2align 4
.L322:
	sar	ecx
	add	eax, 1
.L321:
	test	cl, 1
	je	.L322
.L320:
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
	ja	.L325
	comiss	xmm0, DWORD PTR .LC4[rip]
	seta	al
	movzx	eax, al
.L325:
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
	ja	.L331
	comisd	xmm0, QWORD PTR .LC6[rip]
	seta	al
	movzx	eax, al
.L331:
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
	ja	.L342
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	.L337
.L342:
	fstp	st(0)
.L337:
	ret
	.seh_endproc
	.globl	_Qp_itoq
	.def	_Qp_itoq;	.scl	2;	.type	32;	.endef
	.seh_proc	_Qp_itoq
_Qp_itoq:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, edx
	movsd	QWORD PTR -8[rbp], xmm0
	fld	QWORD PTR -8[rbp]
	fstp	TBYTE PTR [rcx]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	ldexpf
	.def	ldexpf;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpf
ldexpf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L345
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm0, xmm1
	jp	.L351
	je	.L345
.L351:
	movss	xmm1, DWORD PTR .LC10[rip]
	test	edx, edx
	jns	.L349
	movss	xmm1, DWORD PTR .LC9[rip]
.L349:
	test	dl, 1
	je	.L348
	mulss	xmm0, xmm1
.L348:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L345
	mulss	xmm1, xmm1
	jmp	.L349
.L345:
	ret
	.seh_endproc
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L353
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm0, xmm1
	jp	.L359
	je	.L353
.L359:
	movsd	xmm1, QWORD PTR .LC12[rip]
	test	edx, edx
	jns	.L357
	movsd	xmm1, QWORD PTR .LC11[rip]
.L357:
	test	dl, 1
	je	.L356
	mulsd	xmm0, xmm1
.L356:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L353
	mulsd	xmm1, xmm1
	jmp	.L357
.L353:
	ret
	.seh_endproc
	.globl	ldexpl
	.def	ldexpl;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpl
ldexpl:
	.seh_endprologue
	mov	rax, rcx
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L361
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	.L367
	je	.L361
.L367:
	test	r8d, r8d
	jns	.L366
	fld	DWORD PTR .LC9[rip]
	jmp	.L365
.L366:
	fld	DWORD PTR .LC10[rip]
.L365:
	test	r8b, 1
	je	.L364
	fmul	st(1), st
.L364:
	mov	edx, r8d
	shr	edx, 31
	add	edx, r8d
	sar	edx
	mov	r8d, edx
	je	.L368
	fmul	st, st(0)
	jmp	.L365
.L368:
	fstp	st(0)
.L361:
	fstp	TBYTE PTR [rax]
	ret
	.seh_endproc
	.globl	memxor
	.def	memxor;	.scl	2;	.type	32;	.endef
	.seh_proc	memxor
memxor:
	.seh_endprologue
	mov	rax, rcx
	add	r8, rcx
	mov	r9, rcx
	jmp	.L370
	.p2align 5
.L371:
	add	rdx, 1
	add	r9, 1
	movzx	r10d, BYTE PTR -1[r9]
	xor	r10b, BYTE PTR -1[rdx]
	mov	BYTE PTR -1[r9], r10b
.L370:
	cmp	r9, r8
	jne	.L371
	ret
	.seh_endproc
	.globl	strncat
	.def	strncat;	.scl	2;	.type	32;	.endef
	.seh_proc	strncat
strncat:
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
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	rdi, rcx
	mov	rsi, rdx
	mov	rbx, r8
	call	strlen
	add	rax, rdi
	jmp	.L373
	.p2align 5
.L375:
	add	rsi, 1
	add	rax, 1
	sub	rbx, 1
.L373:
	test	rbx, rbx
	je	.L374
	movzx	edx, BYTE PTR [rsi]
	mov	BYTE PTR [rax], dl
	test	dl, dl
	jne	.L375
.L374:
	test	rbx, rbx
	jne	.L376
	mov	BYTE PTR [rax], 0
.L376:
	mov	rax, rdi
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.globl	strnlen
	.def	strnlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strnlen
strnlen:
	.seh_endprologue
	mov	eax, 0
	jmp	.L378
	.p2align 4
.L380:
	add	rax, 1
.L378:
	cmp	rax, rdx
	je	.L379
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L380
.L379:
	ret
	.seh_endproc
	.globl	strpbrk
	.def	strpbrk;	.scl	2;	.type	32;	.endef
	.seh_proc	strpbrk
strpbrk:
	.seh_endprologue
	jmp	.L382
.L384:
	add	r8, 1
	movzx	eax, BYTE PTR [rcx]
	cmp	BYTE PTR -1[r8], al
	jne	.L385
	jmp	.L386
.L387:
	mov	r8, rdx
.L385:
	cmp	BYTE PTR [r8], 0
	jne	.L384
	add	rcx, 1
.L382:
	cmp	BYTE PTR [rcx], 0
	jne	.L387
	mov	eax, 0
	jmp	.L383
.L386:
	mov	rax, rcx
.L383:
	ret
	.seh_endproc
	.globl	strrchr
	.def	strrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strrchr
strrchr:
	.seh_endprologue
	mov	eax, 0
	.p2align 5
.L390:
	movsx	r8d, BYTE PTR [rcx]
	cmp	edx, r8d
	cmove	rax, rcx
	add	rcx, 1
	cmp	BYTE PTR -1[rcx], 0
	jne	.L390
	ret
	.seh_endproc
	.globl	strstr
	.def	strstr;	.scl	2;	.type	32;	.endef
	.seh_proc	strstr
strstr:
	push	rbp
	.seh_pushreg	rbp
	push	r12
	.seh_pushreg	r12
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	rbx, rcx
	mov	rsi, rdx
	mov	rcx, rdx
	call	strlen
	mov	rdi, rax
	mov	rax, rbx
	test	rdi, rdi
	je	.L393
	movsx	r12d, BYTE PTR [rsi]
	jmp	.L394
.L395:
	mov	r8, rdi
	mov	rdx, rsi
	mov	rcx, rbx
	call	strncmp
	test	eax, eax
	je	.L397
	add	rbx, 1
.L394:
	mov	edx, r12d
	mov	rcx, rbx
	call	strchr
	mov	rbx, rax
	test	rax, rax
	jne	.L395
	mov	eax, 0
	jmp	.L393
.L397:
	mov	rax, rbx
.L393:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	rbp
	ret
	.seh_endproc
	.globl	copysign
	.def	copysign;	.scl	2;	.type	32;	.endef
	.seh_proc	copysign
copysign:
	.seh_endprologue
	pxor	xmm2, xmm2
	comisd	xmm2, xmm0
	jbe	.L399
	comisd	xmm1, xmm2
	ja	.L401
.L399:
	pxor	xmm2, xmm2
	comisd	xmm0, xmm2
	jbe	.L402
	comisd	xmm2, xmm1
	jbe	.L402
.L401:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L402:
	ret
	.seh_endproc
	.globl	memmem
	.def	memmem;	.scl	2;	.type	32;	.endef
	.seh_proc	memmem
memmem:
	push	rbp
	.seh_pushreg	rbp
	push	r12
	.seh_pushreg	r12
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	rbx, rcx
	mov	rsi, r8
	mov	r12, r9
	mov	rdi, rdx
	sub	rdi, r9
	add	rdi, rcx
	mov	rax, rcx
	test	r9, r9
	je	.L412
	cmp	rdx, r9
	jb	.L417
	jmp	.L413
.L415:
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rbx], al
	jne	.L414
	lea	rdx, 1[rsi]
	lea	rcx, 1[rbx]
	lea	r8, -1[r12]
	call	memcmp
	test	eax, eax
	je	.L418
.L414:
	add	rbx, 1
.L413:
	cmp	rdi, rbx
	jnb	.L415
	mov	eax, 0
	jmp	.L412
.L417:
	mov	eax, 0
	jmp	.L412
.L418:
	mov	rax, rbx
.L412:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	rbp
	ret
	.seh_endproc
	.globl	mempcpy
	.def	mempcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	mempcpy
mempcpy:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	rbx, r8
	call	memcpy
	add	rax, rbx
	add	rsp, 40
	pop	rbx
	pop	rbp
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
	jbe	.L421
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	mov	ecx, 1
	jmp	.L421
.L421:
	mov	eax, 0
	comisd	xmm0, QWORD PTR .LC14[rip]
	jnb	.L423
	jmp	.L435
	.p2align 5
.L425:
	add	eax, 1
	mulsd	xmm0, QWORD PTR .LC11[rip]
.L423:
	comisd	xmm0, QWORD PTR .LC14[rip]
	jnb	.L425
	jmp	.L426
.L435:
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	setp	al
	mov	r8d, 1
	cmovne	eax, r8d
	movsd	xmm1, QWORD PTR .LC11[rip]
	comisd	xmm1, xmm0
	seta	r8b
	test	r8b, al
	jne	.L432
	mov	eax, 0
	jmp	.L426
.L428:
	sub	eax, 1
	addsd	xmm0, xmm0
	jmp	.L427
.L432:
	mov	eax, 0
.L427:
	movsd	xmm1, QWORD PTR .LC11[rip]
	comisd	xmm1, xmm0
	ja	.L428
.L426:
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L429
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L429:
	ret
	.seh_endproc
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	mov	eax, 0
	jmp	.L437
	.p2align 5
.L439:
	lea	r8, [rax+rdx]
	test	cl, 1
	cmovne	rax, r8
	add	rdx, rdx
	shr	rcx
.L437:
	test	rcx, rcx
	jne	.L439
	ret
	.seh_endproc
	.globl	udivmodsi4
	.def	udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	udivmodsi4
udivmodsi4:
	.seh_endprologue
	mov	r9d, 1
	jmp	.L441
	.p2align 5
.L443:
	add	edx, edx
	add	r9d, r9d
.L441:
	cmp	edx, ecx
	setb	r10b
	test	r9d, r9d
	setne	al
	test	r10b, al
	je	.L448
	test	edx, edx
	jns	.L443
	mov	eax, 0
	jmp	.L445
.L446:
	cmp	ecx, edx
	jb	.L444
	sub	ecx, edx
	or	eax, r9d
.L444:
	shr	r9d
	shr	edx
	jmp	.L445
.L448:
	mov	eax, 0
.L445:
	test	r9d, r9d
	jne	.L446
	test	r8, r8
	cmovne	eax, ecx
	ret
	.seh_endproc
	.globl	__clrsbqi2
	.def	__clrsbqi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbqi2
__clrsbqi2:
	.seh_endprologue
	mov	eax, ecx
	not	eax
	cmp	al, cl
	cmovl	eax, ecx
	mov	edx, 7
	test	al, al
	je	.L452
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	edx, -1[rax]
.L452:
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__clrsbdi2
	.def	__clrsbdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbdi2
__clrsbdi2:
	.seh_endprologue
	mov	rax, rcx
	not	rax
	cmp	rax, rcx
	cmovl	rax, rcx
	mov	edx, 63
	test	rax, rax
	je	.L456
	bsr	rax, rax
	xor	rax, 63
	lea	edx, -1[rax]
.L456:
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__mulsi3
	.def	__mulsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3
__mulsi3:
	.seh_endprologue
	mov	eax, 0
	jmp	.L459
	.p2align 5
.L461:
	lea	r8d, [rax+rdx]
	test	cl, 1
	cmovne	eax, r8d
	shr	ecx
	add	edx, edx
.L459:
	test	ecx, ecx
	jne	.L461
	ret
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
	jb	.L463
	mov	edx, r8d
	add	rdx, r9
	cmp	rdx, rcx
	jnb	.L464
.L463:
	lea	r11d, 0[0+r10*8]
	mov	edx, 0
	jmp	.L465
	.p2align 5
.L466:
	mov	r10, QWORD PTR [r9+rdx]
	mov	QWORD PTR [rcx+rdx], r10
	add	rdx, 8
.L465:
	cmp	rdx, r11
	jne	.L466
	mov	eax, eax
	jmp	.L467
	.p2align 5
.L468:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
.L467:
	cmp	eax, r8d
	jb	.L468
	jmp	.L462
	.p2align 5
.L470:
	mov	eax, r8d
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
.L464:
	sub	r8d, 1
	cmp	r8d, -1
	jne	.L470
.L462:
	ret
	.seh_endproc
	.globl	__cmovh
	.def	__cmovh;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovh
__cmovh:
	.seh_endprologue
	mov	r9d, r8d
	shr	r9d
	cmp	rcx, rdx
	jb	.L472
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L473
.L472:
	lea	r10d, [r9+r9]
	mov	eax, 0
	jmp	.L474
	.p2align 5
.L475:
	movzx	r9d, WORD PTR [rdx+rax]
	mov	WORD PTR [rcx+rax], r9w
	add	rax, 2
.L474:
	cmp	rax, r10
	jne	.L475
	test	r8b, 1
	je	.L471
	lea	eax, -1[r8]
	movzx	edx, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], dl
	jmp	.L471
	.p2align 5
.L477:
	mov	eax, r8d
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
.L473:
	sub	r8d, 1
	cmp	r8d, -1
	jne	.L477
.L471:
	ret
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
	jb	.L479
	mov	edx, r8d
	add	rdx, r9
	cmp	rdx, rcx
	jnb	.L480
.L479:
	lea	r11d, 0[0+r10*4]
	mov	edx, 0
	jmp	.L481
	.p2align 5
.L482:
	mov	r10d, DWORD PTR [r9+rdx]
	mov	DWORD PTR [rcx+rdx], r10d
	add	rdx, 4
.L481:
	cmp	rdx, r11
	jne	.L482
	mov	eax, eax
	jmp	.L483
	.p2align 5
.L484:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
.L483:
	cmp	eax, r8d
	jb	.L484
	jmp	.L478
	.p2align 5
.L486:
	mov	eax, r8d
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
.L480:
	sub	r8d, 1
	cmp	r8d, -1
	jne	.L486
.L478:
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
	js	.L495
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
	jmp	.L496
.L495:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	addsd	xmm0, xmm0
.L496:
	ret
	.seh_endproc
	.globl	__ulltof
	.def	__ulltof;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltof
__ulltof:
	.seh_endprologue
	test	rcx, rcx
	js	.L498
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.L499
.L498:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.L499:
	ret
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
	jmp	.L502
	.p2align 5
.L504:
	movzx	r8d, cx
	mov	edx, 15
	sub	edx, eax
	bt	r8d, edx
	jc	.L503
	add	eax, 1
.L502:
	cmp	eax, 16
	jne	.L504
.L503:
	ret
	.seh_endproc
	.globl	__ctzhi2
	.def	__ctzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzhi2
__ctzhi2:
	.seh_endprologue
	mov	eax, 0
	jmp	.L506
	.p2align 4
.L508:
	movzx	edx, cx
	bt	edx, eax
	jc	.L507
	add	eax, 1
.L506:
	cmp	eax, 16
	jne	.L508
.L507:
	ret
	.seh_endproc
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	comiss	xmm0, DWORD PTR .LC15[rip]
	jb	.L514
	subss	xmm0, DWORD PTR .LC15[rip]
	cvttss2si	eax, xmm0
	add	eax, 32768
	jmp	.L512
.L514:
	cvttss2si	eax, xmm0
.L512:
	ret
	.seh_endproc
	.globl	__parityhi2
	.def	__parityhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__parityhi2
__parityhi2:
	.seh_endprologue
	mov	r8d, ecx
	mov	eax, 0
	mov	ecx, 0
	jmp	.L516
	.p2align 5
.L518:
	movzx	edx, r8w
	sar	edx, cl
	and	edx, 1
	cmp	edx, 1
	sbb	eax, -1
	add	ecx, 1
.L516:
	cmp	ecx, 16
	jne	.L518
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
	jmp	.L520
	.p2align 5
.L522:
	movzx	eax, r8w
	sar	eax, cl
	and	eax, 1
	cmp	eax, 1
	sbb	edx, -1
	add	ecx, 1
.L520:
	cmp	ecx, 16
	jne	.L522
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__mulsi3_iq2000
	.def	__mulsi3_iq2000;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_iq2000
__mulsi3_iq2000:
	.seh_endprologue
	mov	eax, 0
	jmp	.L524
	.p2align 5
.L526:
	lea	r8d, [rax+rdx]
	test	cl, 1
	cmovne	eax, r8d
	shr	ecx
	add	edx, edx
.L524:
	test	ecx, ecx
	jne	.L526
	ret
	.seh_endproc
	.globl	__mulsi3_lm32
	.def	__mulsi3_lm32;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_lm32
__mulsi3_lm32:
	.seh_endprologue
	mov	eax, 0
	test	ecx, ecx
	je	.L528
	jmp	.L529
	.p2align 5
.L531:
	lea	r8d, [rax+rcx]
	test	dl, 1
	cmovne	eax, r8d
	add	ecx, ecx
	shr	edx
.L529:
	test	edx, edx
	jne	.L531
.L528:
	ret
	.seh_endproc
	.globl	__udivmodsi4
	.def	__udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4
__udivmodsi4:
	.seh_endprologue
	mov	r9d, 1
	jmp	.L534
	.p2align 5
.L536:
	add	edx, edx
	add	r9d, r9d
.L534:
	cmp	edx, ecx
	setb	r10b
	test	r9d, r9d
	setne	al
	test	r10b, al
	je	.L541
	test	edx, edx
	jns	.L536
	mov	eax, 0
	jmp	.L538
.L539:
	cmp	ecx, edx
	jb	.L537
	sub	ecx, edx
	or	eax, r9d
.L537:
	shr	r9d
	shr	edx
	jmp	.L538
.L541:
	mov	eax, 0
.L538:
	test	r9d, r9d
	jne	.L539
	test	r8d, r8d
	cmovne	eax, ecx
	ret
	.seh_endproc
	.globl	__mspabi_cmpf
	.def	__mspabi_cmpf;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpf
__mspabi_cmpf:
	.seh_endprologue
	mov	eax, -1
	comiss	xmm1, xmm0
	ja	.L544
	comiss	xmm0, xmm1
	seta	al
	movzx	eax, al
.L544:
	ret
	.seh_endproc
	.globl	__mspabi_cmpd
	.def	__mspabi_cmpd;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpd
__mspabi_cmpd:
	.seh_endprologue
	mov	eax, -1
	comisd	xmm1, xmm0
	ja	.L548
	comisd	xmm0, xmm1
	seta	al
	movzx	eax, al
.L548:
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
	jns	.L554
	neg	edx
	mov	r11d, 1
.L554:
	mov	r8d, 0
	mov	eax, 0
	jmp	.L555
	.p2align 6
.L557:
	lea	r9d, [r8+rcx]
	test	dl, 1
	cmovne	r8d, r9d
	add	ecx, ecx
	sar	edx
	add	eax, 1
.L555:
	test	edx, edx
	setne	r9b
	cmp	al, 31
	setbe	r10b
	test	r10b, r9b
	jne	.L557
	mov	eax, r8d
	neg	eax
	test	r11d, r11d
	cmove	eax, r8d
	ret
	.seh_endproc
	.globl	__divsi3
	.def	__divsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__divsi3
__divsi3:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	ebx, 0
	test	ecx, ecx
	jns	.L562
	neg	ecx
	mov	ebx, 1
.L562:
	test	edx, edx
	jns	.L563
	neg	edx
	xor	ebx, 1
.L563:
	mov	r8d, 0
	call	__udivmodsi4
	mov	edx, eax
	neg	edx
	test	ebx, ebx
	cmovne	eax, edx
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	__modsi3
	.def	__modsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__modsi3
__modsi3:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	ebx, 0
	test	ecx, ecx
	jns	.L567
	neg	ecx
	mov	ebx, 1
.L567:
	mov	eax, edx
	neg	eax
	cmovns	edx, eax
	mov	r8d, 1
	call	__udivmodsi4
	mov	edx, eax
	neg	edx
	test	ebx, ebx
	cmovne	eax, edx
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	__udivmodhi4
	.def	__udivmodhi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodhi4
__udivmodhi4:
	.seh_endprologue
	mov	r9d, 1
	jmp	.L572
	.p2align 5
.L574:
	add	edx, edx
	add	r9d, r9d
.L572:
	cmp	dx, cx
	setb	r10b
	test	r9w, r9w
	setne	al
	test	r10b, al
	je	.L579
	test	dx, dx
	jns	.L574
	mov	eax, 0
	jmp	.L576
.L577:
	cmp	cx, dx
	jb	.L575
	sub	ecx, edx
	or	eax, r9d
.L575:
	shr	r9w
	shr	dx
	jmp	.L576
.L579:
	mov	eax, 0
.L576:
	test	r9w, r9w
	jne	.L577
	test	r8d, r8d
	cmovne	eax, ecx
	ret
	.seh_endproc
	.globl	__udivmodsi4_libgcc
	.def	__udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	.seh_endprologue
	mov	r9d, 1
	jmp	.L582
	.p2align 5
.L584:
	add	edx, edx
	add	r9d, r9d
.L582:
	cmp	edx, ecx
	setb	r10b
	test	r9d, r9d
	setne	al
	test	r10b, al
	je	.L589
	test	edx, edx
	jns	.L584
	mov	eax, 0
	jmp	.L586
.L587:
	cmp	ecx, edx
	jb	.L585
	sub	ecx, edx
	or	eax, r9d
.L585:
	shr	r9d
	shr	edx
	jmp	.L586
.L589:
	mov	eax, 0
.L586:
	test	r9d, r9d
	jne	.L587
	test	r8d, r8d
	cmovne	eax, ecx
	ret
	.seh_endproc
	.globl	__ashldi3
	.def	__ashldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashldi3
__ashldi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L592
	lea	ecx, -32[rdx]
	sal	r8d, cl
	mov	rax, r8
	sal	rax, 32
	jmp	.L594
.L592:
	mov	rax, rcx
	test	edx, edx
	je	.L594
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
.L594:
	ret
	.seh_endproc
	.globl	__ashlti3
	.def	__ashlti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashlti3
__ashlti3:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	r10, QWORD PTR [rcx]
	mov	r11, QWORD PTR 8[rcx]
	mov	r8d, edx
	test	dl, 64
	je	.L597
	mov	eax, 0
	lea	ecx, -64[rdx]
	sal	r10, cl
	mov	rdx, r10
	jmp	.L598
.L597:
	mov	QWORD PTR -16[rbp], r10
	mov	QWORD PTR -8[rbp], r11
	movdqa	xmm0, XMMWORD PTR -16[rbp]
	test	edx, edx
	je	.L599
	mov	rax, r10
	mov	r9, r10
	mov	ecx, edx
	sal	r9, cl
	mov	rdx, r11
	sal	rdx, cl
	mov	ecx, 64
	sub	ecx, r8d
	shr	rax, cl
	or	rax, rdx
	mov	rdx, rax
	mov	rax, r9
.L598:
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	movdqa	xmm0, XMMWORD PTR -16[rbp]
.L599:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L602
	sar	r8, 32
	mov	eax, r8d
	sar	eax, 31
	lea	ecx, -32[rdx]
	sar	r8d, cl
	sal	rax, 32
	or	rax, r8
	jmp	.L604
.L602:
	mov	rax, rcx
	test	edx, edx
	je	.L604
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
.L604:
	ret
	.seh_endproc
	.globl	__ashrti3
	.def	__ashrti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrti3
__ashrti3:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	r10, QWORD PTR [rcx]
	mov	r11, QWORD PTR 8[rcx]
	mov	r8d, edx
	test	dl, 64
	je	.L607
	mov	r9, r11
	mov	rcx, r11
	sar	rcx, 63
	mov	rdx, rcx
	lea	ecx, -64[r8]
	sar	r9, cl
	mov	rax, r9
	jmp	.L608
.L607:
	mov	QWORD PTR -16[rbp], r10
	mov	QWORD PTR -8[rbp], r11
	movdqa	xmm0, XMMWORD PTR -16[rbp]
	test	edx, edx
	je	.L609
	mov	r9, r11
	mov	rax, r11
	mov	ecx, edx
	sar	rax, cl
	mov	rdx, rax
	mov	ecx, 64
	sub	ecx, r8d
	sal	r9, cl
	mov	ecx, r8d
	shr	r10, cl
	or	r9, r10
	mov	rax, r9
.L608:
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	movdqa	xmm0, XMMWORD PTR -16[rbp]
.L609:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__bswapdi2
	.def	__bswapdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__bswapdi2
__bswapdi2:
	push	rbp
	.seh_pushreg	rbp
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	lea	rbp, [rsp]
	.seh_setframe	rbp, 0
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
	pop	rbp
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
	cmp	ecx, 65536
	setb	al
	movzx	eax, al
	sal	eax, 4
	mov	ecx, 16
	sub	ecx, eax
	shr	edx, cl
	test	dh, -1
	sete	r8b
	movzx	r8d, r8b
	sal	r8d, 3
	mov	ecx, 8
	sub	ecx, r8d
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
	test	dl, 2
	sete	cl
	movzx	ecx, cl
	sub	r8d, edx
	mov	edx, ecx
	imul	edx, r8d
	add	eax, edx
	ret
	.seh_endproc
	.globl	__clzti2
	.def	__clzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzti2
__clzti2:
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	r9, QWORD PTR 8[rcx]
	cmp	r9, 1
	sbb	eax, eax
	movsx	rcx, eax
	mov	rdx, rcx
	not	rdx
	and	rdx, r9
	and	rcx, r8
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
	jl	.L624
	mov	r9, rcx
	sar	r9, 32
	mov	r8, rdx
	sar	r8, 32
	mov	eax, 2
	cmp	r9d, r8d
	jg	.L624
	mov	eax, 0
	cmp	ecx, edx
	jb	.L624
	cmp	edx, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
.L624:
	ret
	.seh_endproc
	.globl	__aeabi_lcmp
	.def	__aeabi_lcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_lcmp
__aeabi_lcmp:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	call	__cmpdi2
	sub	eax, 1
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.globl	__cmpti2
	.def	__cmpti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpti2
__cmpti2:
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	r9, QWORD PTR 8[rcx]
	mov	r10, QWORD PTR [rdx]
	mov	r11, QWORD PTR 8[rdx]
	mov	eax, 0
	cmp	r9, r11
	jl	.L631
	mov	eax, 2
	jg	.L631
	mov	eax, 0
	cmp	r8, r10
	jb	.L631
	cmp	r10, r8
	setb	al
	movzx	eax, al
	add	eax, 1
.L631:
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
	mov	r9, QWORD PTR 8[rcx]
	cmp	r8, 1
	sbb	eax, eax
	movsx	rdx, eax
	mov	rcx, r9
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
	mov	rcx, rax
	test	rax, rax
	jne	.L647
	test	rdx, rdx
	je	.L648
	xor	ecx, ecx
	rep bsf	rcx, rdx
	add	ecx, 65
	jmp	.L648
.L647:
	rep bsf	rax, rax
	lea	ecx, 1[rax]
.L648:
	mov	eax, ecx
	ret
	.seh_endproc
	.globl	__lshrdi3
	.def	__lshrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrdi3
__lshrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L651
	shr	r8, 32
	lea	ecx, -32[rdx]
	mov	eax, r8d
	shr	eax, cl
	jmp	.L653
.L651:
	mov	rax, rcx
	test	edx, edx
	je	.L653
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
.L653:
	ret
	.seh_endproc
	.globl	__lshrti3
	.def	__lshrti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrti3
__lshrti3:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	r10, QWORD PTR [rcx]
	mov	r11, QWORD PTR 8[rcx]
	mov	r8d, edx
	test	dl, 64
	je	.L656
	mov	rax, r11
	lea	ecx, -64[rdx]
	shr	rax, cl
	mov	edx, 0
	jmp	.L657
.L656:
	mov	QWORD PTR -16[rbp], r10
	mov	QWORD PTR -8[rbp], r11
	movdqa	xmm0, XMMWORD PTR -16[rbp]
	test	edx, edx
	je	.L658
	mov	r9, r11
	mov	rax, r11
	mov	ecx, edx
	shr	rax, cl
	mov	rdx, rax
	mov	ecx, 64
	sub	ecx, r8d
	sal	r9, cl
	mov	ecx, r8d
	shr	r10, cl
	or	r9, r10
	mov	rax, r9
.L657:
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	movdqa	xmm0, XMMWORD PTR -16[rbp]
.L658:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__muldsi3
	.def	__muldsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldsi3
__muldsi3:
	.seh_endprologue
	movzx	r10d, cx
	movzx	eax, dx
	mov	r9d, r10d
	imul	r9d, eax
	mov	r8d, r9d
	shr	r8d, 16
	shr	ecx, 16
	imul	eax, ecx
	add	r8d, eax
	mov	eax, r8d
	shr	eax, 16
	movzx	r8d, r8w
	movzx	r9d, r9w
	shr	edx, 16
	imul	r10d, edx
	add	r8d, r10d
	mov	r10d, r8d
	sal	r10d, 16
	lea	r9d, [r10+r9]
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
	push	rbp
	.seh_pushreg	rbp
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	lea	rbp, 32[rsp]
	.seh_setframe	rbp, 32
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
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rbp
	ret
	.seh_endproc
	.globl	__mulddi3
	.def	__mulddi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulddi3
__mulddi3:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	r9, rdx
	mov	r10d, ecx
	mov	edx, edx
	mov	rax, r10
	imul	rax, rdx
	mov	r8, rax
	shr	r8, 32
	shr	rcx, 32
	imul	rdx, rcx
	add	r8, rdx
	mov	eax, eax
	mov	rdx, r8
	sal	rdx, 32
	add	rax, rdx
	shr	r8, 32
	mov	rdx, r8
	mov	r8, rax
	shr	r8, 32
	mov	r11d, eax
	shr	r9, 32
	imul	r10, r9
	add	r8, r10
	mov	r10, r8
	sal	r10, 32
	add	r10, r11
	shr	r8, 32
	add	r8, rdx
	imul	rcx, r9
	add	rcx, r8
	mov	QWORD PTR -16[rbp], r10
	mov	QWORD PTR -8[rbp], rcx
	movdqa	xmm0, XMMWORD PTR -16[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__multi3
	.def	__multi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__multi3
__multi3:
	push	rbp
	.seh_pushreg	rbp
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 48
	.seh_stackalloc	48
	lea	rbp, 48[rsp]
	.seh_setframe	rbp, 48
	.seh_endprologue
	mov	r12, QWORD PTR [rcx]
	mov	r13, QWORD PTR 8[rcx]
	mov	rsi, QWORD PTR [rdx]
	mov	rdi, QWORD PTR 8[rdx]
	mov	rdx, rsi
	mov	rcx, r12
	call	__mulddi3
	movaps	XMMWORD PTR -16[rbp], xmm0
	mov	r8, QWORD PTR -16[rbp]
	mov	r9, QWORD PTR -8[rbp]
	mov	rax, r13
	imul	rax, rsi
	mov	rdx, rdi
	imul	rdx, r12
	add	rax, rdx
	add	rax, r9
	mov	QWORD PTR -16[rbp], r8
	mov	QWORD PTR -8[rbp], rax
	movdqa	xmm0, XMMWORD PTR -16[rbp]
	add	rsp, 48
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
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
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	neg	rax
	adc	rdx, 0
	neg	rdx
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	movdqa	xmm0, XMMWORD PTR -16[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__paritydi2
	.def	__paritydi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__paritydi2
__paritydi2:
	.seh_endprologue
	mov	rax, rcx
	shr	rcx, 32
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
	.seh_endproc
	.globl	__parityti2
	.def	__parityti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__parityti2
__parityti2:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	rcx, rdx
	xor	rcx, rax
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
	.seh_endproc
	.globl	__paritysi2
	.def	__paritysi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__paritysi2
__paritysi2:
	.seh_endprologue
	mov	eax, ecx
	shr	ecx, 16
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
	mov	rax, rcx
	shr	rax, 2
	movabs	rdx, 3689348814741910323
	and	rax, rdx
	and	rcx, rdx
	add	rcx, rax
	mov	rax, rcx
	shr	rax, 4
	add	rcx, rax
	movabs	rax, 1085102592571150095
	and	rcx, rax
	mov	rdx, rcx
	shr	rdx, 32
	add	edx, ecx
	mov	eax, edx
	shr	eax, 16
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
	mov	eax, ecx
	shr	eax, 2
	and	eax, 858993459
	and	ecx, 858993459
	add	ecx, eax
	mov	eax, ecx
	shr	eax, 4
	add	ecx, eax
	and	ecx, 252645135
	mov	eax, ecx
	shr	eax, 16
	add	ecx, eax
	mov	eax, ecx
	shr	eax, 8
	add	eax, ecx
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
	mov	r10, rax
	mov	r11, rdx
	shrd	r10, r11, 2
	shr	r11, 2
	movabs	r8, 3689348814741910323
	and	r10, r8
	and	r11, r8
	and	rax, r8
	and	rdx, r8
	add	rax, r10
	adc	rdx, r11
	mov	r8, rax
	mov	r9, rdx
	shrd	r8, r9, 4
	shr	r9, 4
	add	r8, rax
	adc	r9, rdx
	movabs	rax, 1085102592571150095
	mov	rdx, rax
	and	rax, r8
	and	rdx, r9
	mov	rcx, rax
	mov	rax, rdx
	add	rax, rcx
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
	.seh_endproc
	.globl	__powidf2
	.def	__powidf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powidf2
__powidf2:
	.seh_endprologue
	mov	ecx, edx
	shr	ecx, 31
	movsd	xmm1, QWORD PTR .LC14[rip]
.L675:
	test	dl, 1
	je	.L673
	mulsd	xmm1, xmm0
.L673:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L674
	mulsd	xmm0, xmm0
	jmp	.L675
.L674:
	movapd	xmm0, xmm1
	test	ecx, ecx
	je	.L676
	movsd	xmm0, QWORD PTR .LC14[rip]
	divsd	xmm0, xmm1
.L676:
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
.L681:
	test	dl, 1
	je	.L679
	mulss	xmm1, xmm0
.L679:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L680
	mulss	xmm0, xmm0
	jmp	.L681
.L680:
	movaps	xmm0, xmm1
	test	ecx, ecx
	je	.L682
	movss	xmm0, DWORD PTR .LC16[rip]
	divss	xmm0, xmm1
.L682:
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
	jb	.L685
	mov	r8, r9
	mov	r9, rdx
	shr	r9, 32
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L685
	mov	eax, 0
	cmp	ecx, edx
	jb	.L685
	cmp	edx, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
.L685:
	ret
	.seh_endproc
	.globl	__aeabi_ulcmp
	.def	__aeabi_ulcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_ulcmp
__aeabi_ulcmp:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	call	__ucmpdi2
	sub	eax, 1
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.globl	__ucmpti2
	.def	__ucmpti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpti2
__ucmpti2:
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	r9, QWORD PTR 8[rcx]
	mov	r10, QWORD PTR [rdx]
	mov	r11, QWORD PTR 8[rdx]
	mov	eax, 0
	cmp	r9, r11
	jb	.L692
	mov	eax, 2
	cmp	r11, r9
	jb	.L692
	mov	eax, 0
	cmp	r8, r10
	jb	.L692
	cmp	r10, r8
	setb	al
	movzx	eax, al
	add	eax, 1
.L692:
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
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
	.def	memcpy;	.scl	2;	.type	32;	.endef
