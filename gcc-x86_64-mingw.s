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
	mov	QWORD PTR -16[rbp], 0
	mov	QWORD PTR -8[rbp], 0
	mov	r10d, 0
	mov	QWORD PTR -16[rbp], r10
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
	mov	QWORD PTR -16[rbp], 0
	mov	QWORD PTR -8[rbp], 0
	mov	r10d, 0
	mov	QWORD PTR -16[rbp], r10
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
	mov	rax, rcx
	cmp	rdx, rcx
	jnb	.L4
	add	rdx, r8
	lea	r9, [rcx+r8]
	mov	rcx, r8
	jmp	.L5
.L6:
	mov	r10, rdx
	sub	r10, r8
	movzx	r11d, BYTE PTR -1[r10+rcx]
	mov	r10, r9
	sub	r10, r8
	mov	BYTE PTR -1[r10+rcx], r11b
	sub	rcx, 1
.L5:
	test	rcx, rcx
	jne	.L6
	jmp	.L7
.L4:
	cmp	rcx, rdx
	jne	.L10
	jmp	.L7
.L9:
	movzx	r9d, BYTE PTR [rdx+rcx]
	mov	BYTE PTR [rax+rcx], r9b
	add	rcx, 1
	jmp	.L8
.L10:
	mov	ecx, 0
.L8:
	cmp	rcx, r8
	jne	.L9
.L7:
	ret
	.seh_endproc
	.globl	memccpy
	.def	memccpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memccpy
memccpy:
	.seh_endprologue
	movzx	r8d, r8b
	jmp	.L12
.L14:
	sub	r9, 1
	add	rdx, 1
	add	rcx, 1
.L12:
	test	r9, r9
	je	.L13
	movzx	eax, BYTE PTR [rdx]
	mov	BYTE PTR [rcx], al
	movzx	eax, al
	cmp	r8d, eax
	jne	.L14
.L13:
	test	r9, r9
	je	.L16
	lea	rax, 1[rcx]
	jmp	.L15
.L16:
	mov	eax, 0
.L15:
	ret
	.seh_endproc
	.globl	memchr
	.def	memchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memchr
memchr:
	.seh_endprologue
	movzx	edx, dl
	mov	rax, rcx
	jmp	.L18
.L20:
	add	rax, 1
	sub	r8, 1
.L18:
	test	r8, r8
	je	.L19
	movzx	ecx, BYTE PTR [rax]
	cmp	edx, ecx
	jne	.L20
.L19:
	test	r8, r8
	jne	.L21
	mov	eax, 0
.L21:
	ret
	.seh_endproc
	.globl	memcmp
	.def	memcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	memcmp
memcmp:
	.seh_endprologue
	jmp	.L24
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
	test	r8, r8
	je	.L28
	movzx	eax, BYTE PTR [rcx]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
	jmp	.L27
.L28:
	mov	eax, 0
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
.L31:
	movzx	ecx, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rax+r9], cl
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
	lea	rax, -1[r8]
	cmp	edx, r9d
	jne	.L36
	lea	rax, [rcx+r8]
	jmp	.L34
.L36:
	mov	r8, rax
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
	jmp	.L38
.L39:
	mov	BYTE PTR [rcx], dl
	add	rcx, 1
.L38:
	cmp	rcx, r8
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
	mov	rax, rcx
.L49:
	movsx	ecx, BYTE PTR [rax]
	cmp	edx, ecx
	je	.L48
	add	rax, 1
	cmp	BYTE PTR -1[rax], 0
	jne	.L49
	mov	eax, 0
.L48:
	ret
	.seh_endproc
	.globl	strcmp
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strcmp
strcmp:
	.seh_endprologue
	jmp	.L52
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
	test	r8, r8
	je	.L63
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
	jmp	.L59
.L63:
	mov	eax, 0
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
	setbe	al
	or	dl, al
	jne	.L79
	movzx	eax, cx
	sub	eax, 8232
	cmp	eax, 1
	jbe	.L80
	movzx	ecx, cx
	sub	ecx, 65529
	cmp	ecx, 2
	ja	.L81
	mov	eax, 1
	jmp	.L78
.L79:
	mov	eax, 1
	jmp	.L78
.L80:
	mov	eax, 1
	jmp	.L78
.L81:
	mov	eax, 0
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
	setbe	al
	or	dl, al
	jne	.L86
	movzx	eax, cx
	sub	eax, 57344
	cmp	eax, 8184
	jbe	.L87
	movzx	eax, cx
	sub	eax, 65532
	cmp	eax, 1048579
	ja	.L88
	not	ecx
	test	ecx, 65534
	je	.L89
	mov	eax, 1
	jmp	.L85
.L86:
	mov	eax, 1
	jmp	.L85
.L87:
	mov	eax, 1
	jmp	.L85
.L88:
	mov	eax, 0
	jmp	.L85
.L89:
	mov	eax, 0
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
	cmp	eax, 9
	jbe	.L92
	or	ecx, 32
	movzx	ecx, cx
	sub	ecx, 97
	cmp	ecx, 5
	ja	.L93
	mov	eax, 1
	jmp	.L91
.L92:
	mov	eax, 1
	jmp	.L91
.L93:
	mov	eax, 0
.L91:
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
	jmp	.L112
.L113:
	comisd	xmm1, xmm0
	jbe	.L112
	movapd	xmm0, xmm1
	jmp	.L112
.L115:
	movapd	xmm0, xmm1
.L112:
	ret
	.seh_endproc
	.globl	fmaxf
	.def	fmaxf;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxf
fmaxf:
	.seh_endprologue
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
	movd	eax, xmm0
	test	eax, eax
	jns	.L122
	movaps	xmm0, xmm1
	jmp	.L122
.L123:
	comiss	xmm1, xmm0
	jbe	.L122
	movaps	xmm0, xmm1
	jmp	.L122
.L125:
	movaps	xmm0, xmm1
.L122:
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
	jnp	.L132
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L131
.L132:
	fxch	st(1)
	fucomi	st, st(0)
	jnp	.L134
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L131
.L134:
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
	je	.L135
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	.L143
	fstp	st(0)
	jmp	.L136
.L143:
	fstp	st(1)
.L136:
	fstp	TBYTE PTR [rcx]
	jmp	.L131
.L135:
	fcomi	st, st(1)
	jbe	.L144
	fstp	st(1)
	jmp	.L137
.L144:
	fstp	st(0)
.L137:
	fstp	TBYTE PTR [rcx]
.L131:
	mov	rax, rcx
	ret
	.seh_endproc
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	movapd	xmm2, xmm0
	movapd	xmm0, xmm1
	ucomisd	xmm2, xmm2
	jp	.L146
	ucomisd	xmm1, xmm1
	jp	.L150
	movmskpd	edx, xmm2
	and	edx, 1
	movmskpd	eax, xmm1
	and	eax, 1
	cmp	edx, eax
	je	.L147
	movmskpd	eax, xmm2
	test	al, 1
	je	.L146
	movapd	xmm0, xmm2
	jmp	.L146
.L147:
	comisd	xmm1, xmm2
	jbe	.L146
	movapd	xmm0, xmm2
	jmp	.L146
.L150:
	movapd	xmm0, xmm2
.L146:
	ret
	.seh_endproc
	.globl	fminf
	.def	fminf;	.scl	2;	.type	32;	.endef
	.seh_proc	fminf
fminf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L159
	ucomiss	xmm1, xmm1
	jp	.L156
	movd	edx, xmm0
	and	edx, -2147483648
	movd	eax, xmm1
	and	eax, -2147483648
	cmp	edx, eax
	je	.L157
	movd	eax, xmm0
	test	eax, eax
	jns	.L161
	jmp	.L156
.L157:
	comiss	xmm1, xmm0
	jbe	.L164
	jmp	.L156
.L159:
	movaps	xmm0, xmm1
	jmp	.L156
.L161:
	movaps	xmm0, xmm1
	jmp	.L156
.L164:
	movaps	xmm0, xmm1
.L156:
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
	jnp	.L166
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L165
.L166:
	fxch	st(1)
	fucomi	st, st(0)
	jnp	.L168
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L165
.L168:
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
	je	.L169
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	je	.L177
	fstp	st(1)
	jmp	.L170
.L177:
	fstp	st(0)
.L170:
	fstp	TBYTE PTR [rcx]
	jmp	.L165
.L169:
	fcomi	st, st(1)
	jbe	.L178
	fstp	st(0)
	jmp	.L171
.L178:
	fstp	st(1)
.L171:
	fstp	TBYTE PTR [rcx]
.L165:
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
	jmp	.L180
.L181:
	mov	edx, ecx
	and	edx, 63
	lea	r8, digits[rip]
	movzx	edx, BYTE PTR [r8+rdx]
	mov	BYTE PTR [rax], dl
	add	rax, 1
	shr	ecx, 6
.L180:
	test	ecx, ecx
	jne	.L181
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
	jne	.L185
	mov	QWORD PTR 8[rcx], 0
	mov	QWORD PTR [rcx], 0
	jmp	.L184
.L185:
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	QWORD PTR [rdx], rcx
	cmp	QWORD PTR [rcx], 0
	je	.L184
	mov	rax, QWORD PTR [rcx]
	mov	QWORD PTR 8[rax], rcx
.L184:
	ret
	.seh_endproc
	.globl	remque
	.def	remque;	.scl	2;	.type	32;	.endef
	.seh_proc	remque
remque:
	.seh_endprologue
	cmp	QWORD PTR [rcx], 0
	je	.L188
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L188:
	cmp	QWORD PTR 8[rcx], 0
	je	.L187
	mov	rax, QWORD PTR 8[rcx]
	mov	rdx, QWORD PTR [rcx]
	mov	QWORD PTR [rax], rdx
.L187:
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
	mov	rbx, rdx
	mov	r14, r8
	mov	rsi, r9
	mov	r12, QWORD PTR [r8]
	mov	r15, rdx
	mov	edi, 0
	jmp	.L191
.L194:
	mov	rdx, r15
	mov	rcx, r13
	call	[QWORD PTR 112[rbp]]
	add	r15, rsi
	test	eax, eax
	jne	.L192
	imul	rdi, rsi
	lea	rax, [rbx+rdi]
	jmp	.L193
.L192:
	add	rdi, 1
.L191:
	cmp	rdi, r12
	jne	.L194
	lea	rax, 1[r12]
	mov	QWORD PTR [r14], rax
	imul	r12, rsi
	lea	rcx, [rbx+r12]
	mov	r8, rsi
	mov	rdx, r13
	call	memcpy
.L193:
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
	mov	rbx, rdx
	mov	rdi, r9
	mov	r14, QWORD PTR [r8]
	mov	r12, rdx
	mov	esi, 0
	jmp	.L196
.L199:
	mov	rdx, r12
	mov	rcx, r13
	call	[QWORD PTR 96[rbp]]
	add	r12, rdi
	test	eax, eax
	jne	.L197
	imul	rsi, rdi
	lea	rax, [rbx+rsi]
	jmp	.L198
.L197:
	add	rsi, 1
.L196:
	cmp	rsi, r14
	jne	.L199
	mov	eax, 0
.L198:
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
	cmp	eax, 45
	jne	.L210
	mov	edx, 1
	jmp	.L204
.L209:
	mov	edx, 0
.L204:
	add	rbx, 1
	jmp	.L205
.L210:
	mov	edx, 0
.L205:
	mov	eax, 0
	jmp	.L206
.L207:
	lea	eax, [rax+rax*4]
	add	eax, eax
	add	rbx, 1
	movsx	ecx, BYTE PTR -1[rbx]
	sub	ecx, 48
	sub	eax, ecx
.L206:
	movsx	ecx, BYTE PTR [rbx]
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L207
	test	edx, edx
	jne	.L208
	neg	eax
.L208:
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
	jmp	.L213
.L214:
	add	rbx, 1
.L213:
	movsx	ecx, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L214
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L220
	cmp	eax, 45
	jne	.L221
	mov	edx, 1
	jmp	.L215
.L220:
	mov	edx, 0
.L215:
	add	rbx, 1
	jmp	.L216
.L221:
	mov	edx, 0
.L216:
	mov	eax, 0
	jmp	.L217
.L218:
	lea	eax, [rax+rax*4]
	add	eax, eax
	add	rbx, 1
	movsx	ecx, BYTE PTR -1[rbx]
	sub	ecx, 48
	sub	eax, ecx
.L217:
	movsx	ecx, BYTE PTR [rbx]
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L218
	test	edx, edx
	jne	.L219
	neg	eax
.L219:
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
	jmp	.L224
.L225:
	add	rbx, 1
.L224:
	movsx	ecx, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L225
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L231
	cmp	eax, 45
	jne	.L232
	mov	ecx, 1
	jmp	.L226
.L231:
	mov	ecx, 0
.L226:
	add	rbx, 1
	jmp	.L227
.L232:
	mov	ecx, 0
.L227:
	mov	eax, 0
	jmp	.L228
.L229:
	lea	rax, [rax+rax*4]
	add	rax, rax
	add	rbx, 1
	movsx	edx, BYTE PTR -1[rbx]
	sub	edx, 48
	movsx	rdx, edx
	sub	rax, rdx
.L228:
	movsx	edx, BYTE PTR [rbx]
	sub	edx, 48
	cmp	edx, 9
	jbe	.L229
	test	ecx, ecx
	jne	.L230
	neg	rax
.L230:
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
	mov	r12, rdx
	mov	rbx, r8
	mov	rdi, r9
	jmp	.L235
.L239:
	mov	rsi, rbx
	shr	rsi
	imul	rsi, rdi
	add	rsi, r12
	mov	rdx, rsi
	mov	rcx, r13
	call	[QWORD PTR 96[rbp]]
	test	eax, eax
	jns	.L236
	shr	rbx
	jmp	.L235
.L236:
	jle	.L240
	lea	r12, [rsi+rdi]
	mov	rax, rbx
	shr	rax
	sub	rbx, 1
	sub	rbx, rax
.L235:
	test	rbx, rbx
	jne	.L239
	mov	eax, 0
	jmp	.L238
.L240:
	mov	rax, rsi
.L238:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	rbp
	ret
	.seh_endproc
	.globl	bsearch_r
	.def	bsearch_r;	.scl	2;	.type	32;	.endef
	.seh_proc	bsearch_r
bsearch_r:
	push	rbp
	.seh_pushreg	rbp
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
	mov	esi, r8d
	mov	rdi, rdx
	jmp	.L242
.L245:
	mov	ebx, esi
	sar	ebx
	movsx	rbx, ebx
	imul	rbx, r12
	add	rbx, rdi
	mov	r8, QWORD PTR 104[rbp]
	mov	rdx, rbx
	mov	rcx, r13
	call	[QWORD PTR 96[rbp]]
	test	eax, eax
	je	.L246
	jle	.L244
	lea	rdi, [rbx+r12]
	sub	esi, 1
.L244:
	sar	esi
.L242:
	test	esi, esi
	jne	.L245
	mov	eax, 0
	jmp	.L243
.L246:
	mov	rax, rbx
.L243:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
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
	mov	rax, rcx
	jmp	.L255
.L257:
	add	rax, 2
.L255:
	cmp	WORD PTR [rax], 0
	je	.L256
	cmp	dx, WORD PTR [rax]
	jne	.L257
.L256:
	cmp	WORD PTR [rax], 0
	jne	.L258
	mov	eax, 0
.L258:
	ret
	.seh_endproc
	.globl	wcscmp
	.def	wcscmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscmp
wcscmp:
	.seh_endprologue
	jmp	.L261
.L263:
	add	rcx, 2
	add	rdx, 2
.L261:
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jne	.L262
	cmp	WORD PTR [rcx], 0
	je	.L262
	test	ax, ax
	jne	.L263
.L262:
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jb	.L265
	movzx	eax, WORD PTR [rcx]
	cmp	WORD PTR [rdx], ax
	setb	al
	movzx	eax, al
	jmp	.L264
.L265:
	mov	eax, -1
.L264:
	ret
	.seh_endproc
	.globl	wcscpy
	.def	wcscpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscpy
wcscpy:
	.seh_endprologue
	mov	rax, rcx
.L267:
	add	rdx, 2
	add	rcx, 2
	movzx	r8d, WORD PTR -2[rdx]
	mov	WORD PTR -2[rcx], r8w
	test	r8w, r8w
	jne	.L267
	ret
	.seh_endproc
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L269
.L270:
	add	rax, 2
.L269:
	cmp	WORD PTR [rax], 0
	jne	.L270
	sub	rax, rcx
	sar	rax
	ret
	.seh_endproc
	.globl	wcsncmp
	.def	wcsncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcsncmp
wcsncmp:
	.seh_endprologue
	jmp	.L272
.L274:
	sub	r8, 1
	add	rcx, 2
	add	rdx, 2
.L272:
	test	r8, r8
	je	.L273
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jne	.L273
	cmp	WORD PTR [rcx], 0
	je	.L273
	test	ax, ax
	jne	.L274
.L273:
	test	r8, r8
	je	.L276
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jb	.L277
	movzx	eax, WORD PTR [rcx]
	cmp	WORD PTR [rdx], ax
	setb	al
	movzx	eax, al
	jmp	.L275
.L276:
	mov	eax, 0
	jmp	.L275
.L277:
	mov	eax, -1
.L275:
	ret
	.seh_endproc
	.globl	wmemchr
	.def	wmemchr;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemchr
wmemchr:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L279
.L281:
	sub	r8, 1
	add	rax, 2
.L279:
	test	r8, r8
	je	.L280
	cmp	dx, WORD PTR [rax]
	jne	.L281
.L280:
	test	r8, r8
	jne	.L282
	mov	eax, 0
.L282:
	ret
	.seh_endproc
	.globl	wmemcmp
	.def	wmemcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcmp
wmemcmp:
	.seh_endprologue
	jmp	.L285
.L287:
	sub	r8, 1
	add	rcx, 2
	add	rdx, 2
.L285:
	test	r8, r8
	je	.L286
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	je	.L287
.L286:
	test	r8, r8
	je	.L289
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jb	.L290
	movzx	eax, WORD PTR [rcx]
	cmp	WORD PTR [rdx], ax
	setb	al
	movzx	eax, al
	jmp	.L288
.L289:
	mov	eax, 0
	jmp	.L288
.L290:
	mov	eax, -1
.L288:
	ret
	.seh_endproc
	.globl	wmemcpy
	.def	wmemcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcpy
wmemcpy:
	.seh_endprologue
	mov	rax, rcx
	mov	r9d, 0
	jmp	.L292
.L293:
	movzx	ecx, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], cx
	add	r9, 1
.L292:
	cmp	r9, r8
	jne	.L293
	ret
	.seh_endproc
	.globl	wmemmove
	.def	wmemmove;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemmove
wmemmove:
	.seh_endprologue
	mov	rax, rcx
	cmp	rcx, rdx
	je	.L295
	mov	r9, rcx
	sub	r9, rdx
	lea	rcx, [r8+r8]
	cmp	r9, rcx
	jb	.L296
	mov	ecx, 0
	jmp	.L297
.L298:
	movzx	ecx, WORD PTR [rdx+r8*2]
	mov	WORD PTR [rax+r8*2], cx
.L296:
	sub	r8, 1
	cmp	r8, -1
	jne	.L298
	jmp	.L295
.L299:
	movzx	r9d, WORD PTR [rdx+rcx*2]
	mov	WORD PTR [rax+rcx*2], r9w
	add	rcx, 1
.L297:
	cmp	rcx, r8
	jne	.L299
.L295:
	ret
	.seh_endproc
	.globl	wmemset
	.def	wmemset;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemset
wmemset:
	.seh_endprologue
	mov	rax, rcx
	mov	ecx, 0
	jmp	.L301
.L302:
	mov	WORD PTR [rax+rcx*2], dx
	add	rcx, 1
.L301:
	cmp	rcx, r8
	jne	.L302
	ret
	.seh_endproc
	.globl	bcopy
	.def	bcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	bcopy
bcopy:
	.seh_endprologue
	cmp	rcx, rdx
	jnb	.L304
	add	rcx, r8
	add	rdx, r8
	mov	rax, r8
	jmp	.L305
.L306:
	mov	r9, rcx
	sub	r9, r8
	movzx	r10d, BYTE PTR -1[r9+rax]
	mov	r9, rdx
	sub	r9, r8
	mov	BYTE PTR -1[r9+rax], r10b
	sub	rax, 1
.L305:
	test	rax, rax
	jne	.L306
	jmp	.L303
.L304:
	jne	.L310
	jmp	.L303
.L309:
	movzx	r9d, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx+rax], r9b
	add	rax, 1
	jmp	.L308
.L310:
	mov	eax, 0
.L308:
	cmp	rax, r8
	jne	.L309
.L303:
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
	mov	r9d, eax
	mov	ecx, edx
	sal	r9d, cl
	mov	ecx, 16
	sub	ecx, edx
	shr	eax, cl
	or	eax, r9d
	ret
	.seh_endproc
	.globl	rotr16
	.def	rotr16;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr16
rotr16:
	.seh_endprologue
	movzx	eax, cx
	mov	r9d, eax
	mov	ecx, edx
	shr	r9d, cl
	mov	ecx, 16
	sub	ecx, edx
	sal	eax, cl
	or	eax, r9d
	ret
	.seh_endproc
	.globl	rotl8
	.def	rotl8;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl8
rotl8:
	.seh_endprologue
	movzx	eax, cl
	mov	r9d, eax
	mov	ecx, edx
	sal	r9d, cl
	mov	ecx, 8
	sub	ecx, edx
	shr	eax, cl
	or	eax, r9d
	ret
	.seh_endproc
	.globl	rotr8
	.def	rotr8;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr8
rotr8:
	.seh_endprologue
	movzx	eax, cl
	mov	r9d, eax
	mov	ecx, edx
	shr	r9d, cl
	mov	ecx, 8
	sub	ecx, edx
	sal	eax, cl
	or	eax, r9d
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
	jmp	.L325
.L328:
	bt	ecx, eax
	jnc	.L326
	add	eax, 1
	jmp	.L327
.L326:
	add	eax, 1
.L325:
	cmp	eax, 32
	jne	.L328
	mov	eax, 0
.L327:
	ret
	.seh_endproc
	.globl	libiberty_ffs
	.def	libiberty_ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	libiberty_ffs
libiberty_ffs:
	.seh_endprologue
	test	ecx, ecx
	je	.L333
	mov	eax, 1
	jmp	.L331
.L332:
	sar	ecx
	add	eax, 1
.L331:
	test	cl, 1
	je	.L332
	jmp	.L330
.L333:
	mov	eax, 0
.L330:
	ret
	.seh_endproc
	.globl	gl_isinff
	.def	gl_isinff;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinff
gl_isinff:
	.seh_endprologue
	movss	xmm1, DWORD PTR .LC3[rip]
	comiss	xmm1, xmm0
	ja	.L337
	comiss	xmm0, DWORD PTR .LC4[rip]
	jbe	.L340
	mov	eax, 1
	jmp	.L335
.L337:
	mov	eax, 1
	jmp	.L335
.L340:
	mov	eax, 0
.L335:
	ret
	.seh_endproc
	.globl	gl_isinfd
	.def	gl_isinfd;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfd
gl_isinfd:
	.seh_endprologue
	movsd	xmm1, QWORD PTR .LC5[rip]
	comisd	xmm1, xmm0
	ja	.L344
	comisd	xmm0, QWORD PTR .LC6[rip]
	jbe	.L347
	mov	eax, 1
	jmp	.L342
.L344:
	mov	eax, 1
	jmp	.L342
.L347:
	mov	eax, 0
.L342:
	ret
	.seh_endproc
	.globl	gl_isinfl
	.def	gl_isinfl;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfl
gl_isinfl:
	.seh_endprologue
	fld	TBYTE PTR [rcx]
	fld	TBYTE PTR .LC7[rip]
	fcomip	st, st(1)
	ja	.L351
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	jbe	.L354
	mov	eax, 1
	jmp	.L349
.L351:
	fstp	st(0)
	mov	eax, 1
	jmp	.L349
.L354:
	mov	eax, 0
.L349:
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
	jp	.L357
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm0, xmm1
	jp	.L363
	je	.L357
.L363:
	test	edx, edx
	jns	.L362
	movss	xmm1, DWORD PTR .LC9[rip]
	jmp	.L361
.L362:
	movss	xmm1, DWORD PTR .LC10[rip]
.L361:
	test	dl, 1
	je	.L360
	mulss	xmm0, xmm1
.L360:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L357
	mulss	xmm1, xmm1
	jmp	.L361
.L357:
	ret
	.seh_endproc
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L365
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm0, xmm1
	jp	.L371
	je	.L365
.L371:
	test	edx, edx
	jns	.L370
	movsd	xmm1, QWORD PTR .LC11[rip]
	jmp	.L369
.L370:
	movsd	xmm1, QWORD PTR .LC12[rip]
.L369:
	test	dl, 1
	je	.L368
	mulsd	xmm0, xmm1
.L368:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L365
	mulsd	xmm1, xmm1
	jmp	.L369
.L365:
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
	jp	.L373
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	.L379
	je	.L373
.L379:
	test	r8d, r8d
	jns	.L378
	fld	DWORD PTR .LC9[rip]
	jmp	.L377
.L378:
	fld	DWORD PTR .LC10[rip]
.L377:
	test	r8b, 1
	je	.L376
	fmul	st(1), st
.L376:
	mov	edx, r8d
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	je	.L380
	fmul	st, st(0)
	jmp	.L377
.L380:
	fstp	st(0)
.L373:
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
	jmp	.L382
.L383:
	add	rdx, 1
	add	rcx, 1
	movzx	r9d, BYTE PTR -1[rcx]
	xor	r9b, BYTE PTR -1[rdx]
	mov	BYTE PTR -1[rcx], r9b
.L382:
	cmp	rcx, r8
	jne	.L383
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
	mov	rsi, rcx
	mov	rdi, rdx
	mov	rbx, r8
	call	strlen
	add	rax, rsi
	jmp	.L385
.L387:
	add	rdi, 1
	add	rax, 1
	sub	rbx, 1
.L385:
	test	rbx, rbx
	je	.L386
	movzx	edx, BYTE PTR [rdi]
	mov	BYTE PTR [rax], dl
	test	dl, dl
	jne	.L387
.L386:
	test	rbx, rbx
	jne	.L388
	mov	BYTE PTR [rax], 0
.L388:
	mov	rax, rsi
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
	jmp	.L390
.L392:
	add	rax, 1
.L390:
	cmp	rax, rdx
	je	.L391
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L392
.L391:
	ret
	.seh_endproc
	.globl	strpbrk
	.def	strpbrk;	.scl	2;	.type	32;	.endef
	.seh_proc	strpbrk
strpbrk:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L394
.L396:
	add	rcx, 1
	movzx	r8d, BYTE PTR [rax]
	cmp	BYTE PTR -1[rcx], r8b
	je	.L395
	jmp	.L397
.L399:
	mov	rcx, rdx
.L397:
	cmp	BYTE PTR [rcx], 0
	jne	.L396
	add	rax, 1
.L394:
	cmp	BYTE PTR [rax], 0
	jne	.L399
	mov	eax, 0
.L395:
	ret
	.seh_endproc
	.globl	strrchr
	.def	strrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strrchr
strrchr:
	.seh_endprologue
	mov	eax, 0
.L402:
	movsx	r8d, BYTE PTR [rcx]
	cmp	edx, r8d
	jne	.L401
	mov	rax, rcx
.L401:
	add	rcx, 1
	cmp	BYTE PTR -1[rcx], 0
	jne	.L402
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
	test	rax, rax
	je	.L405
	movsx	r12d, BYTE PTR [rsi]
	jmp	.L406
.L407:
	mov	r8, rdi
	mov	rdx, rsi
	mov	rcx, rbx
	call	strncmp
	test	eax, eax
	je	.L405
	add	rbx, 1
.L406:
	mov	edx, r12d
	mov	rcx, rbx
	call	strchr
	mov	rbx, rax
	test	rax, rax
	jne	.L407
.L405:
	mov	rax, rbx
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
	jbe	.L411
	comisd	xmm1, xmm2
	ja	.L413
.L411:
	pxor	xmm2, xmm2
	comisd	xmm0, xmm2
	jbe	.L414
	comisd	xmm2, xmm1
	jbe	.L414
.L413:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L414:
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
	mov	rdi, r8
	mov	rsi, r9
	mov	r12, rdx
	sub	r12, r9
	add	r12, rcx
	test	r9, r9
	je	.L424
	cmp	rdx, r9
	jb	.L429
	jmp	.L425
.L427:
	movzx	eax, BYTE PTR [rdi]
	cmp	BYTE PTR [rbx], al
	jne	.L426
	lea	rdx, 1[rdi]
	lea	rcx, 1[rbx]
	lea	r8, -1[rsi]
	call	memcmp
	test	eax, eax
	je	.L424
.L426:
	add	rbx, 1
.L425:
	cmp	r12, rbx
	jnb	.L427
	mov	ebx, 0
	jmp	.L424
.L429:
	mov	ebx, 0
.L424:
	mov	rax, rbx
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
	comisd	xmm1, xmm0
	jbe	.L446
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	mov	ecx, 1
	jmp	.L433
.L446:
	mov	ecx, 0
.L433:
	comisd	xmm0, QWORD PTR .LC14[rip]
	jnb	.L443
	jmp	.L447
.L437:
	add	eax, 1
	mulsd	xmm0, QWORD PTR .LC11[rip]
	jmp	.L435
.L443:
	mov	eax, 0
.L435:
	comisd	xmm0, QWORD PTR .LC14[rip]
	jnb	.L437
	jmp	.L438
.L447:
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	setp	al
	mov	r8d, 1
	cmovne	eax, r8d
	movsd	xmm1, QWORD PTR .LC11[rip]
	comisd	xmm1, xmm0
	seta	r8b
	test	r8b, al
	jne	.L444
	mov	eax, 0
	jmp	.L438
.L440:
	sub	eax, 1
	addsd	xmm0, xmm0
	jmp	.L439
.L444:
	mov	eax, 0
.L439:
	movsd	xmm1, QWORD PTR .LC11[rip]
	comisd	xmm1, xmm0
	ja	.L440
.L438:
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L441
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L441:
	ret
	.seh_endproc
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	mov	eax, 0
	jmp	.L449
.L451:
	test	cl, 1
	je	.L450
	add	rax, rdx
.L450:
	add	rdx, rdx
	shr	rcx
.L449:
	test	rcx, rcx
	jne	.L451
	ret
	.seh_endproc
	.globl	udivmodsi4
	.def	udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	udivmodsi4
udivmodsi4:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, 1
	jmp	.L453
.L455:
	add	edx, edx
	add	ecx, ecx
.L453:
	cmp	edx, eax
	setb	r10b
	test	ecx, ecx
	setne	r9b
	test	r10b, r9b
	je	.L460
	test	edx, edx
	jns	.L455
	mov	r9d, 0
	jmp	.L457
.L458:
	cmp	eax, edx
	jb	.L456
	sub	eax, edx
	or	r9d, ecx
.L456:
	shr	ecx
	shr	edx
	jmp	.L457
.L460:
	mov	r9d, 0
.L457:
	test	ecx, ecx
	jne	.L458
	test	r8, r8
	jne	.L459
	mov	eax, r9d
.L459:
	ret
	.seh_endproc
	.globl	__clrsbqi2
	.def	__clrsbqi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbqi2
__clrsbqi2:
	.seh_endprologue
	test	cl, cl
	jns	.L463
	not	ecx
.L463:
	test	cl, cl
	je	.L465
	movsx	ecx, cl
	sal	ecx, 8
	bsr	eax, ecx
	xor	eax, 31
	lea	eax, -1[rax]
	jmp	.L464
.L465:
	mov	eax, 7
.L464:
	ret
	.seh_endproc
	.globl	__clrsbdi2
	.def	__clrsbdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbdi2
__clrsbdi2:
	.seh_endprologue
	test	rcx, rcx
	jns	.L467
	not	rcx
.L467:
	test	rcx, rcx
	je	.L469
	bsr	rax, rcx
	mov	ecx, eax
	xor	ecx, 63
	lea	eax, -1[rcx]
	jmp	.L468
.L469:
	mov	eax, 63
.L468:
	ret
	.seh_endproc
	.globl	__mulsi3
	.def	__mulsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3
__mulsi3:
	.seh_endprologue
	mov	eax, 0
	jmp	.L471
.L473:
	test	cl, 1
	je	.L472
	add	eax, edx
.L472:
	shr	ecx
	add	edx, edx
.L471:
	test	ecx, ecx
	jne	.L473
	ret
	.seh_endproc
	.globl	__cmovd
	.def	__cmovd;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovd
__cmovd:
	.seh_endprologue
	mov	r10d, r8d
	shr	r10d, 3
	mov	eax, r8d
	and	eax, -8
	cmp	rcx, rdx
	jb	.L475
	mov	r9d, r8d
	add	r9, rdx
	cmp	r9, rcx
	jnb	.L476
.L475:
	lea	r10d, 0[0+r10*8]
	mov	r9d, 0
	jmp	.L477
.L478:
	mov	r11, QWORD PTR [rdx+r9]
	mov	QWORD PTR [rcx+r9], r11
	add	r9, 8
.L477:
	cmp	r9, r10
	jne	.L478
	mov	eax, eax
	jmp	.L479
.L480:
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	add	rax, 1
.L479:
	cmp	r8d, eax
	ja	.L480
	jmp	.L474
.L482:
	mov	eax, r8d
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
.L476:
	sub	r8d, 1
	cmp	r8d, -1
	jne	.L482
.L474:
	ret
	.seh_endproc
	.globl	__cmovh
	.def	__cmovh;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovh
__cmovh:
	.seh_endprologue
	mov	rax, rcx
	mov	r9d, r8d
	shr	r9d
	cmp	rcx, rdx
	jb	.L484
	mov	ecx, r8d
	add	rcx, rdx
	cmp	rcx, rax
	jnb	.L485
.L484:
	lea	r9d, [r9+r9]
	mov	ecx, 0
	jmp	.L486
.L487:
	movzx	r10d, WORD PTR [rdx+rcx]
	mov	WORD PTR [rax+rcx], r10w
	add	rcx, 2
.L486:
	cmp	rcx, r9
	jne	.L487
	test	r8b, 1
	je	.L483
	lea	ecx, -1[r8]
	movzx	edx, BYTE PTR [rdx+rcx]
	mov	BYTE PTR [rax+rcx], dl
	jmp	.L483
.L489:
	mov	ecx, r8d
	movzx	r9d, BYTE PTR [rdx+rcx]
	mov	BYTE PTR [rax+rcx], r9b
.L485:
	sub	r8d, 1
	cmp	r8d, -1
	jne	.L489
.L483:
	ret
	.seh_endproc
	.globl	__cmovw
	.def	__cmovw;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovw
__cmovw:
	.seh_endprologue
	mov	r10d, r8d
	shr	r10d, 2
	mov	eax, r8d
	and	eax, -4
	cmp	rcx, rdx
	jb	.L491
	mov	r9d, r8d
	add	r9, rdx
	cmp	r9, rcx
	jnb	.L492
.L491:
	lea	r10d, 0[0+r10*4]
	mov	r9d, 0
	jmp	.L493
.L494:
	mov	r11d, DWORD PTR [rdx+r9]
	mov	DWORD PTR [rcx+r9], r11d
	add	r9, 4
.L493:
	cmp	r9, r10
	jne	.L494
	mov	eax, eax
	jmp	.L495
.L496:
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	add	rax, 1
.L495:
	cmp	r8d, eax
	ja	.L496
	jmp	.L490
.L498:
	mov	eax, r8d
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
.L492:
	sub	r8d, 1
	cmp	r8d, -1
	jne	.L498
.L490:
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
	js	.L507
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
	jmp	.L508
.L507:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	addsd	xmm0, xmm0
.L508:
	ret
	.seh_endproc
	.globl	__ulltof
	.def	__ulltof;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltof
__ulltof:
	.seh_endprologue
	test	rcx, rcx
	js	.L510
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.L511
.L510:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.L511:
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
	jmp	.L514
.L516:
	movzx	r8d, cx
	mov	edx, 15
	sub	edx, eax
	bt	r8d, edx
	jc	.L515
	add	eax, 1
.L514:
	cmp	eax, 16
	jne	.L516
.L515:
	ret
	.seh_endproc
	.globl	__ctzhi2
	.def	__ctzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzhi2
__ctzhi2:
	.seh_endprologue
	mov	eax, 0
	jmp	.L518
.L520:
	movzx	edx, cx
	bt	edx, eax
	jc	.L519
	add	eax, 1
.L518:
	cmp	eax, 16
	jne	.L520
.L519:
	ret
	.seh_endproc
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	comiss	xmm0, DWORD PTR .LC15[rip]
	jb	.L526
	subss	xmm0, DWORD PTR .LC15[rip]
	cvttss2si	eax, xmm0
	add	eax, 32768
	jmp	.L524
.L526:
	cvttss2si	eax, xmm0
.L524:
	ret
	.seh_endproc
	.globl	__parityhi2
	.def	__parityhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__parityhi2
__parityhi2:
	.seh_endprologue
	mov	eax, 0
	mov	edx, 0
	jmp	.L528
.L530:
	movzx	r8d, cx
	bt	r8d, edx
	jnc	.L529
	add	eax, 1
.L529:
	add	edx, 1
.L528:
	cmp	edx, 16
	jne	.L530
	and	eax, 1
	ret
	.seh_endproc
	.globl	__popcounthi2
	.def	__popcounthi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcounthi2
__popcounthi2:
	.seh_endprologue
	mov	edx, 0
	mov	eax, 0
	jmp	.L532
.L534:
	movzx	r8d, cx
	bt	r8d, eax
	jnc	.L533
	add	edx, 1
.L533:
	add	eax, 1
.L532:
	cmp	eax, 16
	jne	.L534
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__mulsi3_iq2000
	.def	__mulsi3_iq2000;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_iq2000
__mulsi3_iq2000:
	.seh_endprologue
	mov	eax, 0
	jmp	.L536
.L538:
	test	cl, 1
	je	.L537
	add	eax, edx
.L537:
	shr	ecx
	add	edx, edx
.L536:
	test	ecx, ecx
	jne	.L538
	ret
	.seh_endproc
	.globl	__mulsi3_lm32
	.def	__mulsi3_lm32;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_lm32
__mulsi3_lm32:
	.seh_endprologue
	test	ecx, ecx
	je	.L544
	mov	eax, 0
	jmp	.L541
.L543:
	test	dl, 1
	je	.L542
	add	eax, ecx
.L542:
	add	ecx, ecx
	shr	edx
.L541:
	test	edx, edx
	jne	.L543
	jmp	.L540
.L544:
	mov	eax, 0
.L540:
	ret
	.seh_endproc
	.globl	__udivmodsi4
	.def	__udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4
__udivmodsi4:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, 1
	jmp	.L546
.L548:
	add	edx, edx
	add	ecx, ecx
.L546:
	cmp	edx, eax
	setb	r10b
	test	ecx, ecx
	setne	r9b
	test	r10b, r9b
	je	.L553
	test	edx, edx
	jns	.L548
	mov	r9d, 0
	jmp	.L550
.L551:
	cmp	eax, edx
	jb	.L549
	sub	eax, edx
	or	r9d, ecx
.L549:
	shr	ecx
	shr	edx
	jmp	.L550
.L553:
	mov	r9d, 0
.L550:
	test	ecx, ecx
	jne	.L551
	test	r8d, r8d
	jne	.L552
	mov	eax, r9d
.L552:
	ret
	.seh_endproc
	.globl	__mspabi_cmpf
	.def	__mspabi_cmpf;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpf
__mspabi_cmpf:
	.seh_endprologue
	comiss	xmm1, xmm0
	ja	.L557
	comiss	xmm0, xmm1
	ja	.L558
	mov	eax, 0
	jmp	.L556
.L557:
	mov	eax, -1
	jmp	.L556
.L558:
	mov	eax, 1
.L556:
	ret
	.seh_endproc
	.globl	__mspabi_cmpd
	.def	__mspabi_cmpd;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpd
__mspabi_cmpd:
	.seh_endprologue
	comisd	xmm1, xmm0
	ja	.L561
	comisd	xmm0, xmm1
	ja	.L562
	mov	eax, 0
	jmp	.L560
.L561:
	mov	eax, -1
	jmp	.L560
.L562:
	mov	eax, 1
.L560:
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
	test	edx, edx
	jns	.L571
	neg	edx
	mov	r9d, 1
	jmp	.L566
.L571:
	mov	r9d, 0
.L566:
	mov	eax, 0
	mov	r8d, 0
	jmp	.L567
.L569:
	test	dl, 1
	je	.L568
	add	eax, ecx
.L568:
	add	ecx, ecx
	sar	edx
	add	r8d, 1
.L567:
	test	edx, edx
	setne	r10b
	cmp	r8b, 31
	setbe	r11b
	test	r11b, r10b
	jne	.L569
	test	r9d, r9d
	je	.L570
	neg	eax
.L570:
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
	test	ecx, ecx
	jns	.L577
	neg	ecx
	mov	ebx, 1
	jmp	.L574
.L577:
	mov	ebx, 0
.L574:
	test	edx, edx
	jns	.L575
	neg	edx
	xor	ebx, 1
.L575:
	mov	r8d, 0
	call	__udivmodsi4
	test	ebx, ebx
	je	.L576
	neg	eax
.L576:
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
	test	ecx, ecx
	jns	.L582
	neg	ecx
	mov	ebx, 1
	jmp	.L579
.L582:
	mov	ebx, 0
.L579:
	test	edx, edx
	jns	.L580
	neg	edx
.L580:
	mov	r8d, 1
	call	__udivmodsi4
	test	ebx, ebx
	je	.L581
	neg	eax
.L581:
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
	mov	eax, ecx
	mov	ecx, 1
	jmp	.L584
.L586:
	add	edx, edx
	add	ecx, ecx
.L584:
	cmp	dx, ax
	setb	r10b
	test	cx, cx
	setne	r9b
	test	r10b, r9b
	je	.L591
	test	dx, dx
	jns	.L586
	mov	r9d, 0
	jmp	.L588
.L589:
	cmp	ax, dx
	jb	.L587
	sub	eax, edx
	or	r9d, ecx
.L587:
	shr	cx
	shr	dx
	jmp	.L588
.L591:
	mov	r9d, 0
.L588:
	test	cx, cx
	jne	.L589
	test	r8d, r8d
	jne	.L590
	mov	eax, r9d
.L590:
	ret
	.seh_endproc
	.globl	__udivmodsi4_libgcc
	.def	__udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, 1
	jmp	.L594
.L596:
	add	edx, edx
	add	ecx, ecx
.L594:
	cmp	edx, eax
	setb	r10b
	test	ecx, ecx
	setne	r9b
	test	r10b, r9b
	je	.L601
	test	edx, edx
	jns	.L596
	mov	r9d, 0
	jmp	.L598
.L599:
	cmp	eax, edx
	jb	.L597
	sub	eax, edx
	or	r9d, ecx
.L597:
	shr	ecx
	shr	edx
	jmp	.L598
.L601:
	mov	r9d, 0
.L598:
	test	ecx, ecx
	jne	.L599
	test	r8d, r8d
	jne	.L600
	mov	eax, r9d
.L600:
	ret
	.seh_endproc
	.globl	__ashldi3
	.def	__ashldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashldi3
__ashldi3:
	.seh_endprologue
	mov	rax, rcx
	mov	r9, rcx
	test	dl, 32
	je	.L604
	lea	ecx, -32[rdx]
	sal	r9d, cl
	mov	rax, r9
	sal	rax, 32
	jmp	.L606
.L604:
	test	edx, edx
	je	.L606
	mov	r8d, ecx
	shr	r9, 32
	mov	ecx, edx
	sal	r9d, cl
	mov	ecx, 32
	sub	ecx, edx
	shr	eax, cl
	or	r9d, eax
	sal	r9, 32
	mov	eax, r8d
	mov	ecx, edx
	sal	eax, cl
	or	rax, r9
.L606:
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
	movdqa	xmm0, XMMWORD PTR [rcx]
	mov	r8d, edx
	movaps	XMMWORD PTR -16[rbp], xmm0
	mov	r10, QWORD PTR -16[rbp]
	mov	r11, QWORD PTR -8[rbp]
	test	dl, 64
	je	.L609
	mov	eax, 0
	lea	ecx, -64[rdx]
	sal	r10, cl
	mov	rdx, r10
	jmp	.L610
.L609:
	test	edx, edx
	je	.L611
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
.L610:
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	movdqa	xmm0, XMMWORD PTR -16[rbp]
.L611:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	rax, rcx
	mov	r8, rcx
	test	dl, 32
	je	.L614
	shr	r8, 32
	mov	eax, r8d
	sar	eax, 31
	lea	ecx, -32[rdx]
	sar	r8d, cl
	sal	rax, 32
	or	rax, r8
	jmp	.L616
.L614:
	test	edx, edx
	je	.L616
	shr	rax, 32
	mov	r9d, eax
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
.L616:
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
	movdqa	xmm0, XMMWORD PTR [rcx]
	mov	r8d, edx
	movaps	XMMWORD PTR -16[rbp], xmm0
	mov	r10, QWORD PTR -16[rbp]
	mov	r11, QWORD PTR -8[rbp]
	test	dl, 64
	je	.L619
	mov	r9, r11
	mov	rcx, r11
	sar	rcx, 63
	mov	rdx, rcx
	lea	ecx, -64[r8]
	sar	r9, cl
	mov	rax, r9
	jmp	.L620
.L619:
	test	edx, edx
	je	.L621
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
.L620:
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	movdqa	xmm0, XMMWORD PTR -16[rbp]
.L621:
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
	cmp	ecx, 65535
	ja	.L630
	mov	eax, 16
	jmp	.L626
.L630:
	mov	eax, 0
.L626:
	mov	ecx, 16
	sub	ecx, eax
	shr	edx, cl
	test	dh, -1
	jne	.L631
	mov	r8d, 8
	jmp	.L627
.L631:
	mov	r8d, 0
.L627:
	mov	ecx, 8
	sub	ecx, r8d
	shr	edx, cl
	add	eax, r8d
	test	dl, -16
	jne	.L632
	mov	r8d, 4
	jmp	.L628
.L632:
	mov	r8d, 0
.L628:
	mov	ecx, 4
	sub	ecx, r8d
	shr	edx, cl
	add	eax, r8d
	test	dl, 12
	jne	.L633
	mov	r9d, 2
	jmp	.L629
.L633:
	mov	r9d, 0
.L629:
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
	sbb	rdx, rdx
	mov	rax, rdx
	not	rax
	and	rax, r9
	and	r8, rdx
	or	rax, r8
	bsr	rax, rax
	xor	eax, 63
	and	edx, 64
	add	eax, edx
	ret
	.seh_endproc
	.globl	__cmpdi2
	.def	__cmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpdi2
__cmpdi2:
	.seh_endprologue
	mov	rax, rcx
	shr	rax, 32
	mov	r8d, eax
	mov	rax, rdx
	shr	rax, 32
	cmp	r8d, eax
	jl	.L637
	mov	rax, rcx
	shr	rax, 32
	mov	r8d, eax
	mov	rax, rdx
	shr	rax, 32
	cmp	r8d, eax
	jg	.L638
	cmp	edx, ecx
	ja	.L639
	jb	.L640
	mov	eax, 1
	jmp	.L636
.L637:
	mov	eax, 0
	jmp	.L636
.L638:
	mov	eax, 2
	jmp	.L636
.L639:
	mov	eax, 0
	jmp	.L636
.L640:
	mov	eax, 2
.L636:
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
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR [rax]
	mov	r8, QWORD PTR [rcx]
	mov	r9, QWORD PTR 8[rcx]
	cmp	rdx, r9
	jl	.L644
	jg	.L645
	cmp	rax, r8
	jb	.L646
	cmp	r8, rax
	jb	.L647
	mov	eax, 1
	jmp	.L643
.L644:
	mov	eax, 0
	jmp	.L643
.L645:
	mov	eax, 2
	jmp	.L643
.L646:
	mov	eax, 0
	jmp	.L643
.L647:
	mov	eax, 2
.L643:
	ret
	.seh_endproc
	.globl	__ctzsi2
	.def	__ctzsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzsi2
__ctzsi2:
	.seh_endprologue
	mov	edx, ecx
	test	cx, cx
	jne	.L653
	mov	eax, 16
	jmp	.L649
.L653:
	mov	eax, 0
.L649:
	mov	ecx, eax
	shr	edx, cl
	test	dl, dl
	jne	.L654
	mov	ecx, 8
	jmp	.L650
.L654:
	mov	ecx, 0
.L650:
	shr	edx, cl
	add	eax, ecx
	test	dl, 15
	jne	.L655
	mov	ecx, 4
	jmp	.L651
.L655:
	mov	ecx, 0
.L651:
	shr	edx, cl
	add	eax, ecx
	test	dl, 3
	jne	.L656
	mov	ecx, 2
	jmp	.L652
.L656:
	mov	ecx, 0
.L652:
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
	sbb	rdx, rdx
	mov	rcx, r9
	and	rcx, rdx
	mov	rax, rdx
	not	rax
	and	rax, r8
	or	rax, rcx
	rep bsf	rax, rax
	and	edx, 64
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
	jne	.L659
	test	rdx, rdx
	je	.L661
	xor	eax, eax
	rep bsf	rax, rdx
	add	eax, 65
	jmp	.L660
.L659:
	rep bsf	rax, rax
	add	eax, 1
	jmp	.L660
.L661:
	mov	eax, 0
.L660:
	ret
	.seh_endproc
	.globl	__lshrdi3
	.def	__lshrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrdi3
__lshrdi3:
	.seh_endprologue
	mov	rax, rcx
	mov	r8, rcx
	test	dl, 32
	je	.L663
	shr	r8, 32
	lea	ecx, -32[rdx]
	mov	eax, r8d
	shr	eax, cl
	jmp	.L665
.L663:
	test	edx, edx
	je	.L665
	shr	rax, 32
	mov	r9d, eax
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
.L665:
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
	movdqa	xmm0, XMMWORD PTR [rcx]
	mov	r8d, edx
	movaps	XMMWORD PTR -16[rbp], xmm0
	mov	r10, QWORD PTR -16[rbp]
	mov	r11, QWORD PTR -8[rbp]
	test	dl, 64
	je	.L668
	mov	rax, r11
	lea	ecx, -64[rdx]
	shr	rax, cl
	mov	edx, 0
	jmp	.L669
.L668:
	test	edx, edx
	je	.L670
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
.L669:
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	movdqa	xmm0, XMMWORD PTR -16[rbp]
.L670:
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.globl	__muldsi3
	.def	__muldsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldsi3
__muldsi3:
	.seh_endprologue
	mov	r8d, edx
	movzx	r9d, cx
	movzx	r10d, dx
	mov	eax, r9d
	imul	eax, r10d
	mov	edx, eax
	shr	edx, 16
	movzx	eax, ax
	shr	ecx, 16
	imul	r10d, ecx
	add	edx, r10d
	mov	r10d, edx
	sal	r10d, 16
	shr	edx, 16
	sal	rdx, 32
	lea	eax, [r10+rax]
	or	rax, rdx
	mov	edx, eax
	shr	edx, 16
	movzx	r10d, ax
	shr	r8d, 16
	imul	r9d, r8d
	add	edx, r9d
	mov	r9d, edx
	sal	r9d, 16
	shr	rax, 32
	shr	edx, 16
	lea	eax, [rdx+rax]
	imul	ecx, r8d
	lea	edx, [rcx+rax]
	sal	rdx, 32
	lea	eax, [r9+r10]
	or	rax, rdx
	ret
	.seh_endproc
	.globl	__muldi3_compiler_rt
	.def	__muldi3_compiler_rt;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3_compiler_rt
__muldi3_compiler_rt:
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
	mov	edi, ecx
	call	__muldsi3
	mov	rcx, rax
	shr	rcx, 32
	shr	rbx, 32
	imul	ebx, esi
	shr	rsi, 32
	imul	esi, edi
	add	ebx, esi
	lea	edx, [rbx+rcx]
	sal	rdx, 32
	mov	eax, eax
	or	rax, rdx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
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
	mov	r8, QWORD PTR [rcx]
	mov	r9, QWORD PTR 8[rcx]
	mov	rax, r9
	xor	rax, r8
	mov	rdx, rax
	shr	rdx, 32
	mov	ecx, edx
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
	mov	rax, rcx
	shr	rax, 32
	mov	edx, eax
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
	.seh_endproc
	.globl	__powidf2
	.def	__powidf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powidf2
__powidf2:
	.seh_endprologue
	mov	eax, edx
	shr	eax, 31
	movsd	xmm1, QWORD PTR .LC14[rip]
.L687:
	test	dl, 1
	je	.L685
	mulsd	xmm1, xmm0
.L685:
	mov	ecx, edx
	shr	ecx, 31
	add	edx, ecx
	sar	edx
	je	.L686
	mulsd	xmm0, xmm0
	jmp	.L687
.L686:
	test	eax, eax
	je	.L689
	movsd	xmm0, QWORD PTR .LC14[rip]
	divsd	xmm0, xmm1
	jmp	.L688
.L689:
	movapd	xmm0, xmm1
.L688:
	ret
	.seh_endproc
	.globl	__powisf2
	.def	__powisf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powisf2
__powisf2:
	.seh_endprologue
	mov	eax, edx
	shr	eax, 31
	movss	xmm1, DWORD PTR .LC16[rip]
.L693:
	test	dl, 1
	je	.L691
	mulss	xmm1, xmm0
.L691:
	mov	ecx, edx
	shr	ecx, 31
	add	edx, ecx
	sar	edx
	je	.L692
	mulss	xmm0, xmm0
	jmp	.L693
.L692:
	test	eax, eax
	je	.L695
	movss	xmm0, DWORD PTR .LC16[rip]
	divss	xmm0, xmm1
	jmp	.L694
.L695:
	movaps	xmm0, xmm1
.L694:
	ret
	.seh_endproc
	.globl	__ucmpdi2
	.def	__ucmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpdi2
__ucmpdi2:
	.seh_endprologue
	mov	rax, rcx
	shr	rax, 32
	mov	r8d, eax
	mov	rax, rdx
	shr	rax, 32
	cmp	r8d, eax
	jb	.L698
	mov	rax, rcx
	shr	rax, 32
	mov	r9, rdx
	shr	r9, 32
	cmp	r9d, eax
	jb	.L699
	cmp	edx, ecx
	ja	.L700
	jb	.L701
	mov	eax, 1
	jmp	.L697
.L698:
	mov	eax, 0
	jmp	.L697
.L699:
	mov	eax, 2
	jmp	.L697
.L700:
	mov	eax, 0
	jmp	.L697
.L701:
	mov	eax, 2
.L697:
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
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR [rax]
	mov	r8, QWORD PTR [rcx]
	mov	r9, QWORD PTR 8[rcx]
	cmp	rdx, r9
	jb	.L705
	cmp	r9, rdx
	jb	.L706
	cmp	rax, r8
	jb	.L707
	cmp	r8, rax
	jb	.L708
	mov	eax, 1
	jmp	.L704
.L705:
	mov	eax, 0
	jmp	.L704
.L706:
	mov	eax, 2
	jmp	.L704
.L707:
	mov	eax, 0
	jmp	.L704
.L708:
	mov	eax, 2
.L704:
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
