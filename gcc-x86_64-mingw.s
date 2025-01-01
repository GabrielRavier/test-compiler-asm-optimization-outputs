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
	mov	QWORD PTR [rsp], r10
	mov	QWORD PTR 8[rsp], rcx
	mov	r9, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], r9
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
	mov	QWORD PTR [rsp], r10
	mov	QWORD PTR 8[rsp], rcx
	mov	r9, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], r9
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
	jmp	.L22
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L20:
	add	rdx, 1
	add	rcx, 1
	sub	r9, 1
	je	.L22
.L18:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [rcx], r10b
	cmp	r10d, r8d
	jne	.L20
	lea	rax, 1[rcx]
	test	r9, r9
	je	.L22
	ret
	.p2align 4,,10
	.p2align 3
.L22:
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
	jne	.L29
	jmp	.L34
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L31:
	add	rcx, 1
	sub	r8, 1
	je	.L34
.L29:
	movzx	eax, BYTE PTR [rcx]
	cmp	eax, edx
	jne	.L31
	mov	rax, rcx
	test	r8, r8
	je	.L34
	ret
	.p2align 4,,10
	.p2align 3
.L34:
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
	jne	.L38
	jmp	.L42
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L40:
	add	rcx, 1
	add	rdx, 1
	sub	r8, 1
	je	.L42
.L38:
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	je	.L40
	test	r8, r8
	je	.L42
	movzx	eax, BYTE PTR [rcx]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L42:
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
	je	.L49
	call	memcpy
	mov	rcx, rax
.L49:
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
	movzx	edx, dl
	lea	rax, -1[rcx+r8]
	sub	rcx, 1
	jmp	.L54
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L56:
	mov	r8, rax
	sub	rax, 1
	movzx	r9d, BYTE PTR [r8]
	cmp	r9d, edx
	je	.L53
.L54:
	cmp	rax, rcx
	jne	.L56
	xor	r8d, r8d
.L53:
	mov	rax, r8
	ret
	.seh_endproc
	.p2align 4
	.globl	memset
	.def	memset;	.scl	2;	.type	32;	.endef
	.seh_proc	memset
memset:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L58
	lea	rcx, [rcx+r8]
	mov	r9, rax
	and	r8d, 1
	je	.L59
	mov	BYTE PTR [rax], dl
	lea	r9, 1[rax]
	cmp	rcx, r9
	je	.L58
	.p2align 4
	.p2align 4
	.p2align 3
.L59:
	mov	BYTE PTR [r9], dl
	mov	BYTE PTR 1[r9], dl
	add	r9, 2
	cmp	rcx, r9
	jne	.L59
.L58:
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
	je	.L70
	.p2align 5
	.p2align 4
	.p2align 3
.L71:
	add	rdx, 1
	add	rax, 1
	movzx	ecx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], cl
	test	cl, cl
	jne	.L71
.L70:
	ret
	.seh_endproc
	.p2align 4
	.globl	strchrnul
	.def	strchrnul;	.scl	2;	.type	32;	.endef
	.seh_proc	strchrnul
strchrnul:
	.seh_endprologue
	mov	rax, rcx
	movzx	edx, dl
	movzx	r8d, BYTE PTR [rcx]
	test	r8b, r8b
	jne	.L77
	jmp	.L76
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L79:
	add	rax, 1
	movzx	r8d, BYTE PTR [rax]
	test	r8b, r8b
	je	.L76
.L77:
	cmp	r8d, edx
	jne	.L79
.L76:
	ret
	.seh_endproc
	.p2align 4
	.globl	strchr
	.def	strchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strchr
strchr:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L85
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L88:
	add	rax, 1
	test	r8b, r8b
	je	.L87
.L85:
	movsx	r8d, BYTE PTR [rax]
	cmp	r8d, edx
	jne	.L88
	ret
	.p2align 4,,10
	.p2align 3
.L87:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	strcmp
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strcmp
strcmp:
	.seh_endprologue
	movzx	eax, BYTE PTR [rcx]
	movzx	r9d, BYTE PTR [rdx]
	test	al, al
	je	.L90
	cmp	al, r9b
	jne	.L90
	mov	r8d, 1
	jmp	.L91
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L103:
	cmp	al, r9b
	jne	.L90
.L91:
	movzx	eax, BYTE PTR [rcx+r8]
	movzx	r9d, BYTE PTR [rdx+r8]
	add	r8, 1
	test	al, al
	jne	.L103
.L90:
	sub	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	strlen
	.def	strlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strlen
strlen:
	.seh_endprologue
	mov	rax, rcx
	cmp	BYTE PTR [rcx], 0
	je	.L105
	.p2align 4
	.p2align 4
	.p2align 3
.L106:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L106
.L105:
	sub	rax, rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	strncmp
	.def	strncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strncmp
strncmp:
	.seh_endprologue
	xor	eax, eax
	test	r8, r8
	je	.L109
	movzx	eax, BYTE PTR [rcx]
	test	al, al
	je	.L111
	lea	r10, -1[rdx+r8]
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L124:
	cmp	rdx, r10
	je	.L111
	add	rcx, 1
	add	rdx, 1
	movzx	eax, BYTE PTR [rcx]
	test	al, al
	je	.L111
.L112:
	movzx	r8d, BYTE PTR [rdx]
	test	r8b, r8b
	setne	r9b
	cmp	r8b, al
	sete	r8b
	test	r9b, r8b
	jne	.L124
.L111:
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
.L109:
	ret
	.seh_endproc
	.p2align 4
	.globl	swab
	.def	swab;	.scl	2;	.type	32;	.endef
	.seh_proc	swab
swab:
	.seh_endprologue
	cmp	r8, 1
	jle	.L125
	and	r8, -2
	add	r8, rcx
	.p2align 5
	.p2align 4
	.p2align 3
.L127:
	movzx	eax, BYTE PTR 1[rcx]
	mov	BYTE PTR [rdx], al
	movzx	eax, BYTE PTR [rcx]
	mov	BYTE PTR 1[rdx], al
	add	rdx, 2
	add	rcx, 2
	cmp	rcx, r8
	jne	.L127
.L125:
	ret
	.seh_endproc
	.p2align 4
	.globl	isalpha
	.def	isalpha;	.scl	2;	.type	32;	.endef
	.seh_proc	isalpha
isalpha:
	.seh_endprologue
	or	ecx, 32
	sub	ecx, 97
	xor	eax, eax
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
	sub	ecx, 48
	xor	eax, eax
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
	sub	ecx, 33
	xor	eax, eax
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
	sub	ecx, 97
	xor	eax, eax
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
	sub	ecx, 32
	xor	eax, eax
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
	sub	ecx, 65
	xor	eax, eax
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
	jbe	.L141
	cmp	cx, 31
	jbe	.L141
	lea	ecx, -8232[rax]
	mov	edx, 1
	cmp	ecx, 1
	jbe	.L139
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L141:
	mov	edx, 1
.L139:
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	iswdigit
	.def	iswdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	iswdigit
iswdigit:
	.seh_endprologue
	movzx	ecx, cx
	sub	ecx, 48
	xor	eax, eax
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
	jbe	.L150
	movzx	eax, cx
	lea	edx, -8234[rax]
	cmp	edx, 47061
	jbe	.L147
	cmp	cx, 8231
	jbe	.L147
	lea	r8d, -57344[rax]
	mov	edx, 1
	cmp	r8d, 8184
	jbe	.L144
	sub	eax, 65532
	xor	edx, edx
	cmp	eax, 1048579
	ja	.L144
	not	ecx
	xor	edx, edx
	test	cx, -2
	setne	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L147:
	mov	edx, 1
.L144:
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L150:
	lea	eax, 1[rcx]
	and	eax, 127
	xor	edx, edx
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
	movzx	eax, cx
	sub	eax, 48
	mov	edx, 1
	cmp	eax, 9
	jbe	.L151
	or	ecx, 32
	movzx	ecx, cx
	sub	ecx, 97
	xor	edx, edx
	cmp	ecx, 5
	setbe	dl
.L151:
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
	jp	.L155
	ucomisd	xmm1, xmm1
	jp	.L159
	comisd	xmm0, xmm1
	jbe	.L162
	subsd	xmm0, xmm1
.L155:
	ret
	.p2align 4,,10
	.p2align 3
.L162:
	pxor	xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L159:
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
	jp	.L163
	ucomiss	xmm1, xmm1
	jp	.L167
	comiss	xmm0, xmm1
	jbe	.L170
	subss	xmm0, xmm1
.L163:
	ret
	.p2align 4,,10
	.p2align 3
.L170:
	pxor	xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L167:
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
	jp	.L171
	ucomisd	xmm1, xmm1
	jp	.L177
	movmskpd	eax, xmm0
	and	eax, 1
	movmskpd	edx, xmm1
	and	edx, 1
	cmp	eax, edx
	je	.L173
	test	eax, eax
	jne	.L171
.L177:
	movapd	xmm1, xmm0
.L171:
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L173:
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
	jp	.L180
	ucomiss	xmm1, xmm1
	jp	.L186
	movd	eax, xmm0
	and	eax, -2147483648
	movd	edx, xmm1
	and	edx, -2147483648
	cmp	eax, edx
	je	.L182
	test	eax, eax
	jne	.L180
.L186:
	movaps	xmm1, xmm0
.L180:
	movaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L182:
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
	jp	.L195
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L198
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
	je	.L191
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	jmp	.L190
	.p2align 4,,10
	.p2align 3
.L198:
	fstp	st(0)
.L190:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L191:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L195:
	fstp	st(0)
	jmp	.L190
	.seh_endproc
	.p2align 4
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	movapd	xmm2, xmm0
	ucomisd	xmm0, xmm0
	jp	.L204
	ucomisd	xmm1, xmm1
	jp	.L199
	movmskpd	eax, xmm0
	and	eax, 1
	movmskpd	edx, xmm1
	and	edx, 1
	cmp	eax, edx
	je	.L201
	test	eax, eax
	jne	.L199
.L204:
	movapd	xmm0, xmm1
.L199:
	ret
	.p2align 4,,10
	.p2align 3
.L201:
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
	jp	.L213
	ucomiss	xmm1, xmm1
	jp	.L208
	movd	eax, xmm0
	and	eax, -2147483648
	movd	edx, xmm1
	and	edx, -2147483648
	cmp	eax, edx
	je	.L210
	test	eax, eax
	jne	.L208
.L213:
	movaps	xmm0, xmm1
.L208:
	ret
	.p2align 4,,10
	.p2align 3
.L210:
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
	jp	.L226
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L223
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
	je	.L219
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	jmp	.L218
	.p2align 4,,10
	.p2align 3
.L226:
	fstp	st(0)
.L218:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L219:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L223:
	fstp	st(0)
	jmp	.L218
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
	je	.L228
	lea	r8, digits[rip]
	.p2align 5
	.p2align 4
	.p2align 3
.L229:
	mov	edx, ecx
	and	edx, 63
	movzx	edx, BYTE PTR [r8+rdx]
	mov	BYTE PTR [rax], dl
	add	rax, 1
	shr	ecx, 6
	jne	.L229
.L228:
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
	je	.L240
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	QWORD PTR [rdx], rcx
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L234
	mov	QWORD PTR 8[rax], rcx
.L234:
	ret
	.p2align 4,,10
	.p2align 3
.L240:
	mov	QWORD PTR 8[rcx], 0
	mov	QWORD PTR [rcx], 0
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
	je	.L242
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L242:
	mov	rax, QWORD PTR 8[rcx]
	test	rax, rax
	je	.L241
	mov	rdx, QWORD PTR [rcx]
	mov	QWORD PTR [rax], rdx
.L241:
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
	mov	rbp, rcx
	mov	QWORD PTR 120[rsp], rdx
	mov	r14, r8
	mov	rsi, r9
	mov	r13, QWORD PTR 144[rsp]
	mov	rdi, QWORD PTR [r8]
	test	rdi, rdi
	je	.L251
	mov	rbx, rdx
	xor	r15d, r15d
	jmp	.L253
	.p2align 4,,10
	.p2align 3
.L265:
	add	r15, 1
	add	rbx, rsi
	cmp	rdi, r15
	je	.L251
.L253:
	mov	r12, rbx
	mov	rdx, rbx
	mov	rcx, rbp
	call	r13
	test	eax, eax
	jne	.L265
.L250:
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
.L251:
	lea	rax, 1[rdi]
	mov	QWORD PTR [r14], rax
	imul	rdi, rsi
	add	rdi, QWORD PTR 120[rsp]
	mov	r12, rdi
	test	rsi, rsi
	je	.L250
	mov	r8, rsi
	mov	rdx, rbp
	mov	rcx, rdi
	call	memmove
	jmp	.L250
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
	mov	rdi, rcx
	mov	rbp, r9
	mov	r13, QWORD PTR 128[rsp]
	mov	r12, QWORD PTR [r8]
	test	r12, r12
	je	.L267
	mov	rbx, rdx
	xor	esi, esi
	jmp	.L269
	.p2align 4,,10
	.p2align 3
.L277:
	add	rsi, 1
	add	rbx, rbp
	cmp	r12, rsi
	je	.L267
.L269:
	mov	r14, rbx
	mov	rdx, rbx
	mov	rcx, rdi
	call	r13
	test	eax, eax
	jne	.L277
.L266:
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
.L267:
	xor	r14d, r14d
	jmp	.L266
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
	jmp	.L298
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L295:
	add	rcx, 1
.L298:
	movsx	eax, BYTE PTR [rcx]
	mov	edx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	.L295
	cmp	dl, 32
	je	.L295
	xor	r9d, r9d
	cmp	dl, 43
	je	.L283
	cmp	dl, 45
	je	.L299
.L284:
	movsx	r8d, BYTE PTR [rcx]
	mov	edx, r8d
	sub	r8d, 48
	xor	eax, eax
	cmp	r8d, 9
	ja	.L286
	.p2align 6
	.p2align 4
	.p2align 3
.L285:
	lea	eax, [rax+rax*4]
	add	eax, eax
	add	rcx, 1
	sub	edx, 48
	movsx	edx, dl
	sub	eax, edx
	movsx	r8d, BYTE PTR [rcx]
	mov	edx, r8d
	sub	r8d, 48
	cmp	r8d, 9
	jbe	.L285
.L286:
	mov	edx, eax
	neg	edx
	test	r9d, r9d
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L299:
	mov	r9d, 1
.L283:
	add	rcx, 1
	jmp	.L284
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
	jmp	.L320
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L317:
	add	rcx, 1
.L320:
	movsx	eax, BYTE PTR [rcx]
	mov	edx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	.L317
	cmp	dl, 32
	je	.L317
	xor	r9d, r9d
	cmp	dl, 43
	je	.L305
	cmp	dl, 45
	je	.L321
.L306:
	movsx	r8d, BYTE PTR [rcx]
	mov	edx, r8d
	sub	r8d, 48
	xor	eax, eax
	cmp	r8d, 9
	ja	.L308
	.p2align 6
	.p2align 4
	.p2align 3
.L307:
	lea	rax, [rax+rax*4]
	add	rax, rax
	add	rcx, 1
	sub	edx, 48
	movsx	rdx, dl
	sub	rax, rdx
	movsx	r8d, BYTE PTR [rcx]
	mov	edx, r8d
	sub	r8d, 48
	cmp	r8d, 9
	jbe	.L307
.L308:
	mov	rdx, rax
	neg	rdx
	test	r9d, r9d
	cmove	rax, rdx
	ret
	.p2align 4,,10
	.p2align 3
.L321:
	mov	r9d, 1
.L305:
	add	rcx, 1
	jmp	.L306
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
	mov	r12, rcx
	mov	rbp, rdx
	mov	rbx, r8
	mov	rdi, r9
	mov	r13, QWORD PTR 128[rsp]
	.p2align 4
	.p2align 3
.L332:
	test	rbx, rbx
	je	.L323
.L333:
	mov	r14, rbx
	shr	r14
	mov	rsi, r14
	imul	rsi, rdi
	add	rsi, rbp
	mov	rdx, rsi
	mov	rcx, r12
	call	r13
	test	eax, eax
	js	.L327
	jle	.L322
	lea	rbp, [rsi+rdi]
	sub	rbx, 1
	sub	rbx, r14
	test	rbx, rbx
	jne	.L333
.L323:
	xor	esi, esi
.L322:
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
.L327:
	mov	rbx, r14
	jmp	.L332
	.seh_endproc
	.p2align 4
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
	mov	rbp, rcx
	mov	rdi, rdx
	mov	rsi, r9
	mov	r13, QWORD PTR 128[rsp]
	mov	r12, QWORD PTR 136[rsp]
	mov	r14d, r8d
	test	r8d, r8d
	jne	.L338
	jmp	.L335
	.p2align 4,,10
	.p2align 3
.L343:
	jle	.L337
	lea	rdi, [rbx+rsi]
	sub	r14d, 1
.L337:
	sar	r14d
	je	.L335
.L338:
	mov	ebx, r14d
	sar	ebx
	movsx	rbx, ebx
	imul	rbx, rsi
	add	rbx, rdi
	mov	r8, r12
	mov	rdx, rbx
	mov	rcx, rbp
	call	r13
	test	eax, eax
	jne	.L343
.L334:
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
	.p2align 4,,10
	.p2align 3
.L335:
	xor	ebx, ebx
	jmp	.L334
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
	mov	QWORD PTR 8[rcx], rdx
	mov	rax, rcx
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
	mov	QWORD PTR 8[rcx], rdx
	mov	rax, rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	wcschr
	.def	wcschr;	.scl	2;	.type	32;	.endef
	.seh_proc	wcschr
wcschr:
	.seh_endprologue
	mov	rax, rcx
	mov	r8d, edx
	movzx	ecx, WORD PTR [rcx]
	cmp	cx, dx
	jne	.L366
	jmp	.L352
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L367:
	add	rax, 2
	movzx	ecx, WORD PTR [rax]
	cmp	cx, r8w
	je	.L352
.L366:
	test	cx, cx
	jne	.L367
.L352:
	xor	edx, edx
	test	cx, cx
	cmove	rax, rdx
	ret
	.seh_endproc
	.p2align 4
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
	je	.L369
	test	r9w, r9w
	je	.L369
	mov	eax, 2
	jmp	.L370
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L384:
	test	r9w, r9w
	je	.L369
.L370:
	movzx	r8d, WORD PTR [rcx+rax]
	movzx	r9d, WORD PTR [rdx+rax]
	add	rax, 2
	test	r8w, r8w
	setne	r11b
	cmp	r8w, r9w
	sete	r10b
	test	r11b, r10b
	jne	.L384
.L369:
	mov	eax, -1
	cmp	r8w, r9w
	jb	.L368
	xor	eax, eax
	cmp	r9w, r8w
	setb	al
.L368:
	ret
	.seh_endproc
	.p2align 4
	.globl	wcscpy
	.def	wcscpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscpy
wcscpy:
	.seh_endprologue
	mov	rax, rcx
	xor	r8d, r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L386:
	movzx	r9d, WORD PTR [rdx+r8]
	mov	WORD PTR [rax+r8], r9w
	add	r8, 2
	test	r9w, r9w
	jne	.L386
	ret
	.seh_endproc
	.p2align 4
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	mov	rax, rcx
	cmp	WORD PTR [rcx], 0
	je	.L389
	.p2align 4
	.p2align 4
	.p2align 3
.L390:
	add	rax, 2
	cmp	WORD PTR [rax], 0
	jne	.L390
.L389:
	sub	rax, rcx
	sar	rax
	ret
	.seh_endproc
	.p2align 4
	.globl	wcsncmp
	.def	wcsncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcsncmp
wcsncmp:
	.seh_endprologue
	test	r8, r8
	jne	.L394
	jmp	.L399
	.p2align 4,,10
	.p2align 3
.L409:
	test	r9w, r9w
	je	.L395
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L399
.L394:
	movzx	eax, WORD PTR [rcx]
	movzx	r9d, WORD PTR [rdx]
	test	ax, ax
	setne	r10b
	cmp	ax, r9w
	sete	al
	test	r10b, al
	jne	.L409
.L395:
	test	r8, r8
	je	.L399
	movzx	ecx, WORD PTR [rcx]
	movzx	edx, WORD PTR [rdx]
	mov	eax, -1
	cmp	cx, dx
	jb	.L393
	xor	eax, eax
	cmp	dx, cx
	setb	al
.L393:
	ret
	.p2align 4,,10
	.p2align 3
.L399:
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
	jne	.L411
	jmp	.L416
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L413:
	add	rcx, 2
	sub	r8, 1
	je	.L416
.L411:
	cmp	WORD PTR [rcx], dx
	jne	.L413
	mov	rax, rcx
	test	r8, r8
	je	.L416
	ret
	.p2align 4,,10
	.p2align 3
.L416:
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
	jne	.L420
	jmp	.L424
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L422:
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L424
.L420:
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	je	.L422
	test	r8, r8
	je	.L424
	movzx	ecx, WORD PTR [rcx]
	mov	edx, eax
	mov	eax, -1
	cmp	cx, dx
	jb	.L419
	xor	eax, eax
	cmp	dx, cx
	setb	al
.L419:
	ret
	.p2align 4,,10
	.p2align 3
.L424:
	xor	eax, eax
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
	je	.L432
	add	r8, r8
	call	memcpy
	mov	rcx, rax
.L432:
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
	je	.L437
	mov	r9, rcx
	sub	r9, rdx
	lea	rcx, [r8+r8]
	cmp	r9, rcx
	jnb	.L448
	test	r8, r8
	je	.L437
	sub	r8, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L440:
	movzx	ecx, WORD PTR [rdx+r8*2]
	mov	WORD PTR [rax+r8*2], cx
	sub	r8, 1
	jnb	.L440
.L437:
	ret
	.p2align 4,,10
	.p2align 3
.L448:
	xor	r9d, r9d
	test	r8, r8
	je	.L437
	.p2align 5
	.p2align 4
	.p2align 3
.L439:
	movzx	ecx, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], cx
	add	r9, 1
	cmp	r9, r8
	jne	.L439
	ret
	.seh_endproc
	.p2align 4
	.globl	wmemset
	.def	wmemset;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemset
wmemset:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L450
	xor	r9d, r9d
	test	r8b, 1
	je	.L451
	mov	WORD PTR [rcx], dx
	mov	r9d, 1
	cmp	r9, r8
	je	.L450
	.p2align 5
	.p2align 4
	.p2align 3
.L451:
	mov	WORD PTR [rax+r9*2], dx
	add	r9, 1
	mov	WORD PTR [rax+r9*2], dx
	add	r9, 1
	cmp	r9, r8
	jne	.L451
.L450:
	ret
	.seh_endproc
	.p2align 4
	.globl	bcopy
	.def	bcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	bcopy
bcopy:
	.seh_endprologue
	cmp	rcx, rdx
	jnb	.L462
	test	r8, r8
	je	.L461
	.p2align 5
	.p2align 4
	.p2align 3
.L464:
	movzx	eax, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[rdx+r8], al
	sub	r8, 1
	jne	.L464
.L461:
	ret
	.p2align 4,,10
	.p2align 3
.L462:
	je	.L461
	test	r8, r8
	je	.L461
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L465:
	movzx	r9d, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx+rax], r9b
	add	rax, 1
	cmp	rax, r8
	jne	.L465
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
	jmp	.L490
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L488:
	cmp	ecx, 32
	je	.L492
.L490:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L488
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L492:
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
	je	.L493
	mov	eax, ecx
	and	eax, 1
	jne	.L493
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L495:
	sar	ecx
	add	eax, 1
	test	cl, 1
	je	.L495
.L493:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinff
	.def	gl_isinff;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinff
gl_isinff:
	.seh_endprologue
	mov	eax, 1
	movss	xmm1, DWORD PTR .LC3[rip]
	comiss	xmm1, xmm0
	ja	.L500
	xor	eax, eax
	comiss	xmm0, DWORD PTR .LC4[rip]
	seta	al
.L500:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinfd
	.def	gl_isinfd;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfd
gl_isinfd:
	.seh_endprologue
	mov	eax, 1
	movsd	xmm1, QWORD PTR .LC5[rip]
	comisd	xmm1, xmm0
	ja	.L503
	xor	eax, eax
	comisd	xmm0, QWORD PTR .LC6[rip]
	seta	al
.L503:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinfl
	.def	gl_isinfl;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfl
gl_isinfl:
	.seh_endprologue
	fld	TBYTE PTR [rcx]
	mov	eax, 1
	fld	TBYTE PTR .LC7[rip]
	fcomip	st, st(1)
	ja	.L509
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L506
	.p2align 4,,10
	.p2align 3
.L509:
	fstp	st(0)
.L506:
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
	jp	.L512
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm1, xmm0
	jp	.L518
	jne	.L518
.L512:
	ret
	.p2align 4,,10
	.p2align 3
.L518:
	movss	xmm1, DWORD PTR .LC9[rip]
	test	edx, edx
	jns	.L516
	movss	xmm1, DWORD PTR .LC10[rip]
	jmp	.L516
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L526:
	mulss	xmm1, xmm1
.L516:
	test	dl, 1
	je	.L515
	mulss	xmm0, xmm1
.L515:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	jne	.L526
	ret
	.seh_endproc
	.p2align 4
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L528
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm1, xmm0
	jp	.L534
	jne	.L534
.L528:
	ret
	.p2align 4,,10
	.p2align 3
.L534:
	movsd	xmm1, QWORD PTR .LC11[rip]
	test	edx, edx
	jns	.L532
	movsd	xmm1, QWORD PTR .LC12[rip]
	jmp	.L532
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L542:
	mulsd	xmm1, xmm1
.L532:
	test	dl, 1
	je	.L531
	mulsd	xmm0, xmm1
.L531:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	jne	.L542
	ret
	.seh_endproc
	.p2align 4
	.globl	ldexpl
	.def	ldexpl;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpl
ldexpl:
	.seh_endprologue
	mov	rax, rcx
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L544
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L550
	jne	.L550
.L544:
	fstp	TBYTE PTR [rax]
	ret
	.p2align 4,,10
	.p2align 3
.L550:
	test	r8d, r8d
	js	.L558
	fld	DWORD PTR .LC9[rip]
	jmp	.L548
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L559:
	fmul	st, st(0)
.L548:
	test	r8b, 1
	je	.L547
	fmul	st(1), st
.L547:
	mov	edx, r8d
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	jne	.L559
	fstp	st(0)
	fstp	TBYTE PTR [rax]
	ret
	.p2align 4,,10
	.p2align 3
.L558:
	fld	DWORD PTR .LC10[rip]
	jmp	.L548
	.seh_endproc
	.p2align 4
	.globl	memxor
	.def	memxor;	.scl	2;	.type	32;	.endef
	.seh_proc	memxor
memxor:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L561
	add	r8, rdx
	mov	r9, rcx
	.p2align 5
	.p2align 4
	.p2align 3
.L562:
	add	rdx, 1
	add	r9, 1
	movzx	r10d, BYTE PTR -1[rdx]
	xor	BYTE PTR -1[r9], r10b
	cmp	r8, rdx
	jne	.L562
.L561:
	ret
	.seh_endproc
	.p2align 4
	.globl	strncat
	.def	strncat;	.scl	2;	.type	32;	.endef
	.seh_proc	strncat
strncat:
	.seh_endprologue
	mov	rax, rcx
	mov	r9, rcx
	cmp	BYTE PTR [rcx], 0
	je	.L568
	.p2align 4
	.p2align 4
	.p2align 3
.L569:
	add	r9, 1
	cmp	BYTE PTR [r9], 0
	jne	.L569
.L568:
	test	r8, r8
	jne	.L570
	jmp	.L576
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L572:
	add	rdx, 1
	add	r9, 1
	sub	r8, 1
	je	.L576
.L570:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [r9], r10b
	test	r10b, r10b
	jne	.L572
	test	r8, r8
	jne	.L573
.L576:
	mov	BYTE PTR [r9], 0
.L573:
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
	je	.L580
.L581:
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L583
.L580:
	ret
	.p2align 4,,10
	.p2align 3
.L583:
	add	rax, 1
	cmp	rdx, rax
	jne	.L581
	ret
	.seh_endproc
	.p2align 4
	.globl	strpbrk
	.def	strpbrk;	.scl	2;	.type	32;	.endef
	.seh_proc	strpbrk
strpbrk:
	.seh_endprologue
	mov	rax, rcx
	movzx	r10d, BYTE PTR [rcx]
	test	r10b, r10b
	je	.L593
.L589:
	mov	r8, rdx
	jmp	.L592
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L591:
	add	r8, 1
	cmp	r9b, r10b
	je	.L590
.L592:
	movzx	r9d, BYTE PTR [r8]
	test	r9b, r9b
	jne	.L591
	add	rax, 1
	movzx	r10d, BYTE PTR [rax]
	test	r10b, r10b
	jne	.L589
.L593:
	xor	eax, eax
.L590:
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
.L597:
	movsx	r9d, BYTE PTR [rcx]
	cmp	r9d, edx
	cmove	r8, rcx
	add	rcx, 1
	test	r9b, r9b
	jne	.L597
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
	mov	rax, rcx
	mov	rsi, rdx
	movzx	edx, BYTE PTR [rdx]
	mov	rcx, rsi
	test	dl, dl
	je	.L601
	.p2align 4
	.p2align 4
	.p2align 3
.L602:
	add	rcx, 1
	cmp	BYTE PTR [rcx], 0
	jne	.L602
.L601:
	sub	rcx, rsi
	lea	rbx, -1[rsi+rcx]
	jne	.L610
	jmp	.L603
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L627:
	add	rax, 1
	test	cl, cl
	je	.L626
.L610:
	movzx	ecx, BYTE PTR [rax]
	cmp	cl, dl
	jne	.L627
	test	rax, rax
	je	.L603
	movzx	r8d, BYTE PTR [rax]
	mov	rcx, rsi
	mov	r10, rax
	test	r8b, r8b
	jne	.L605
	jmp	.L606
	.p2align 4,,10
	.p2align 3
.L628:
	cmp	rcx, rbx
	je	.L606
	add	r10, 1
	add	rcx, 1
	movzx	r8d, BYTE PTR [r10]
	test	r8b, r8b
	je	.L606
.L605:
	movzx	r9d, BYTE PTR [rcx]
	test	r9b, r9b
	setne	r11b
	cmp	r9b, r8b
	sete	r9b
	test	r11b, r9b
	jne	.L628
.L606:
	cmp	BYTE PTR [rcx], r8b
	je	.L603
	add	rax, 1
	jmp	.L610
	.p2align 4,,10
	.p2align 3
.L626:
	xor	eax, eax
.L603:
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
	ja	.L638
.L630:
	pxor	xmm2, xmm2
	comisd	xmm0, xmm2
	jbe	.L633
	comisd	xmm2, xmm1
	ja	.L632
.L633:
	ret
	.p2align 4,,10
	.p2align 3
.L638:
	comisd	xmm1, xmm2
	jbe	.L630
.L632:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	ret
	.seh_endproc
	.p2align 4
	.globl	memmem
	.def	memmem;	.scl	2;	.type	32;	.endef
	.seh_proc	memmem
memmem:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r10, rcx
	mov	rbx, rcx
	test	r9, r9
	je	.L639
	cmp	rdx, r9
	jb	.L649
	sub	rdx, r9
	add	rdx, rcx
	mov	r11, rdx
	jc	.L649
	movzx	esi, BYTE PTR [r8]
	jmp	.L646
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L641:
	cmp	r11, r10
	jb	.L649
.L646:
	movzx	eax, BYTE PTR [r10]
	mov	rbx, r10
	add	r10, 1
	cmp	al, sil
	jne	.L641
	lea	rdx, 1[r8]
	mov	rax, r9
	sub	rax, 1
	je	.L639
	mov	rcx, r10
	jmp	.L642
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L644:
	add	rcx, 1
	add	rdx, 1
	sub	rax, 1
	je	.L639
.L642:
	movzx	edi, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], dil
	je	.L644
	test	rax, rax
	jne	.L661
.L639:
	mov	rax, rbx
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L661:
	movzx	eax, BYTE PTR [rcx]
	cmp	dil, al
	je	.L639
	cmp	r11, r10
	jnb	.L646
.L649:
	xor	ebx, ebx
	mov	rax, rbx
	pop	rbx
	pop	rsi
	pop	rdi
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
	je	.L663
	call	memmove
	mov	rcx, rax
.L663:
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
	pxor	xmm1, xmm1
	xor	ecx, ecx
	comisd	xmm1, xmm0
	jbe	.L668
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	mov	ecx, 1
.L668:
	movsd	xmm1, QWORD PTR .LC14[rip]
	comisd	xmm0, xmm1
	jb	.L692
	xor	eax, eax
	movsd	xmm2, QWORD PTR .LC12[rip]
	.p2align 4
	.p2align 4
	.p2align 3
.L672:
	add	eax, 1
	mulsd	xmm0, xmm2
	comisd	xmm0, xmm1
	jnb	.L672
.L673:
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L675
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L675:
	ret
	.p2align 4,,10
	.p2align 3
.L692:
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	setp	al
	mov	r8d, 1
	cmovne	eax, r8d
	test	al, al
	mov	eax, 0
	je	.L673
	movsd	xmm2, QWORD PTR .LC12[rip]
	comisd	xmm2, xmm0
	jbe	.L673
	.p2align 5
	.p2align 4
	.p2align 3
.L674:
	sub	eax, 1
	addsd	xmm0, xmm0
	comisd	xmm2, xmm0
	jbe	.L673
	sub	eax, 1
	addsd	xmm0, xmm0
	comisd	xmm2, xmm0
	ja	.L674
	jmp	.L673
	.seh_endproc
	.p2align 4
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	xor	r8d, r8d
	test	rcx, rcx
	je	.L694
	.p2align 5
	.p2align 4
	.p2align 3
.L696:
	mov	rax, rcx
	and	eax, 1
	neg	rax
	and	rax, rdx
	add	r8, rax
	add	rdx, rdx
	shr	rcx
	jne	.L696
.L694:
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
	jb	.L700
	jmp	.L709
	.p2align 4,,10
	.p2align 3
.L705:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L701
	test	eax, eax
	je	.L701
.L700:
	test	edx, edx
	jns	.L705
.L701:
	xor	r9d, r9d
	test	eax, eax
	je	.L704
.L709:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L703:
	cmp	ecx, edx
	jb	.L706
	sub	ecx, edx
	or	r9d, eax
.L706:
	shr	edx
	shr	eax
	jne	.L703
.L704:
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
	mov	edx, ecx
	sar	dl, 7
	mov	eax, edx
	xor	eax, ecx
	mov	r8d, 7
	cmp	cl, dl
	je	.L717
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	r8d, -1[rax]
.L717:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
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
	je	.L720
	bsr	rax, rax
	xor	rax, 63
	lea	r8d, -1[rax]
.L720:
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
	je	.L723
	.p2align 5
	.p2align 4
	.p2align 3
.L725:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	r8d, eax
	add	edx, edx
	shr	ecx
	jne	.L725
.L723:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
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
	jb	.L729
	mov	r10d, r8d
	add	r10, r9
	cmp	r10, rcx
	jnb	.L743
.L729:
	test	edx, edx
	je	.L732
	lea	r11d, 0[0+rdx*8]
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L733:
	mov	r10, QWORD PTR [r9+rdx]
	mov	QWORD PTR [rcx+rdx], r10
	add	rdx, 8
	cmp	r11, rdx
	jne	.L733
.L732:
	cmp	eax, r8d
	jnb	.L728
	.p2align 5
	.p2align 4
	.p2align 3
.L734:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
	cmp	eax, r8d
	jb	.L734
.L728:
	ret
	.p2align 4,,10
	.p2align 3
.L743:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L728
	.p2align 4
	.p2align 4
	.p2align 3
.L735:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	jnb	.L735
	ret
	.seh_endproc
	.p2align 4
	.globl	__cmovh
	.def	__cmovh;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovh
__cmovh:
	.seh_endprologue
	mov	eax, r8d
	shr	eax
	cmp	rcx, rdx
	jb	.L745
	mov	r9d, r8d
	add	r9, rdx
	cmp	r9, rcx
	jnb	.L760
.L745:
	test	eax, eax
	je	.L748
	lea	r10d, [rax+rax]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L749:
	movzx	r9d, WORD PTR [rdx+rax]
	mov	WORD PTR [rcx+rax], r9w
	add	rax, 2
	cmp	r10, rax
	jne	.L749
.L748:
	test	r8b, 1
	je	.L744
	lea	eax, -1[r8]
	movzx	edx, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], dl
.L744:
	ret
	.p2align 4,,10
	.p2align 3
.L760:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L744
	.p2align 4
	.p2align 4
	.p2align 3
.L750:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	jnb	.L750
	ret
	.seh_endproc
	.p2align 4
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
	jb	.L762
	mov	r10d, r8d
	add	r10, r9
	cmp	r10, rcx
	jnb	.L776
.L762:
	test	edx, edx
	je	.L765
	lea	r11d, 0[0+rdx*4]
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L766:
	mov	r10d, DWORD PTR [r9+rdx]
	mov	DWORD PTR [rcx+rdx], r10d
	add	rdx, 4
	cmp	r11, rdx
	jne	.L766
.L765:
	cmp	eax, r8d
	jnb	.L761
	.p2align 5
	.p2align 4
	.p2align 3
.L767:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
	cmp	eax, r8d
	jb	.L767
.L761:
	ret
	.p2align 4,,10
	.p2align 3
.L776:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L761
	.p2align 4
	.p2align 4
	.p2align 3
.L768:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	jnb	.L768
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
	mov	ecx, ecx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
	ret
	.seh_endproc
	.p2align 4
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
	.p2align 4
	.globl	__ulltod
	.def	__ulltod;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltod
__ulltod:
	.seh_endprologue
	test	rcx, rcx
	js	.L785
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L785:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
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
	js	.L788
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L788:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
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
	movzx	ecx, cx
	mov	r8d, 15
	.p2align 5
	.p2align 4
	.p2align 3
.L793:
	mov	edx, r8d
	sub	edx, eax
	bt	ecx, edx
	jc	.L791
	add	eax, 1
	cmp	eax, 16
	jne	.L793
.L791:
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
.L797:
	bt	ecx, eax
	jc	.L795
	add	eax, 1
	cmp	eax, 16
	jne	.L797
.L795:
	ret
	.seh_endproc
	.p2align 4
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	comiss	xmm0, DWORD PTR .LC15[rip]
	jnb	.L805
	cvttss2si	eax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L805:
	subss	xmm0, DWORD PTR .LC15[rip]
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
	mov	r8d, ecx
	xor	eax, eax
	xor	ecx, ecx
	movzx	r8d, r8w
	.p2align 5
	.p2align 4
	.p2align 3
.L807:
	mov	edx, r8d
	sar	edx, cl
	and	edx, 1
	add	eax, edx
	add	ecx, 1
	cmp	ecx, 16
	jne	.L807
	and	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__popcounthi2
	.def	__popcounthi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcounthi2
__popcounthi2:
	.seh_endprologue
	mov	r8d, ecx
	xor	edx, edx
	xor	ecx, ecx
	movzx	r8d, r8w
	.p2align 5
	.p2align 4
	.p2align 3
.L810:
	mov	eax, r8d
	sar	eax, cl
	and	eax, 1
	add	edx, eax
	add	ecx, 1
	cmp	ecx, 16
	jne	.L810
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
	je	.L812
	.p2align 5
	.p2align 4
	.p2align 3
.L814:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	r8d, eax
	add	edx, edx
	shr	ecx
	jne	.L814
.L812:
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
	je	.L817
	test	edx, edx
	je	.L821
	.p2align 5
	.p2align 4
	.p2align 3
.L819:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	r8d, eax
	add	ecx, ecx
	shr	edx
	jne	.L819
.L817:
	mov	eax, r8d
	ret
	.p2align 4,,10
	.p2align 3
.L821:
	xor	r8d, r8d
	jmp	.L817
	.seh_endproc
	.p2align 4
	.globl	__udivmodsi4
	.def	__udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4
__udivmodsi4:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jb	.L825
	jmp	.L834
	.p2align 4,,10
	.p2align 3
.L830:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L826
	test	eax, eax
	je	.L826
.L825:
	test	edx, edx
	jns	.L830
.L826:
	xor	r9d, r9d
	test	eax, eax
	je	.L829
.L834:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L828:
	cmp	ecx, edx
	jb	.L831
	sub	ecx, edx
	or	r9d, eax
.L831:
	shr	edx
	shr	eax
	jne	.L828
.L829:
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
	ja	.L842
	xor	eax, eax
	comiss	xmm0, xmm1
	seta	al
.L842:
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
	ja	.L845
	xor	eax, eax
	comisd	xmm0, xmm1
	seta	al
.L845:
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
	xor	r11d, r11d
	test	edx, edx
	jns	.L851
	neg	edx
	mov	r11d, 1
.L851:
	test	edx, edx
	je	.L856
	mov	r8d, 1
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L853:
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
	jne	.L853
	mov	eax, r9d
	neg	eax
	test	r11d, r11d
	cmovne	r9d, eax
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L856:
	xor	r9d, r9d
	mov	eax, r9d
	neg	eax
	test	r11d, r11d
	cmovne	r9d, eax
	mov	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	__divsi3
	.def	__divsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__divsi3
__divsi3:
	.seh_endprologue
	xor	r9d, r9d
	test	ecx, ecx
	jns	.L861
	neg	ecx
	mov	r9d, 1
.L861:
	test	edx, edx
	jns	.L862
	neg	edx
	xor	r9d, 1
.L862:
	mov	r8d, ecx
	mov	eax, 1
	cmp	edx, ecx
	jb	.L864
	jmp	.L880
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L881:
	test	eax, eax
	je	.L863
.L864:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jb	.L881
.L863:
	test	eax, eax
	je	.L872
.L880:
	xor	ecx, ecx
	.p2align 4
	.p2align 4
	.p2align 3
.L868:
	cmp	r8d, edx
	jb	.L867
	sub	r8d, edx
	or	ecx, eax
.L867:
	shr	edx
	shr	eax
	jne	.L868
	mov	eax, ecx
	neg	eax
	test	r9d, r9d
	cmove	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L872:
	xor	ecx, ecx
	mov	eax, ecx
	neg	eax
	test	r9d, r9d
	cmove	eax, ecx
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
	jns	.L883
	neg	ecx
	mov	r9d, 1
.L883:
	mov	eax, edx
	neg	eax
	cmovs	eax, edx
	mov	r8d, ecx
	mov	edx, 1
	cmp	eax, ecx
	jb	.L885
	jmp	.L899
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L904:
	test	edx, edx
	je	.L884
.L885:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jb	.L904
.L884:
	test	edx, edx
	je	.L887
	.p2align 5
	.p2align 4
	.p2align 3
.L899:
	mov	ecx, r8d
	sub	ecx, eax
	cmp	r8d, eax
	cmovnb	r8d, ecx
	shr	eax
	shr	edx
	jne	.L899
.L887:
	mov	eax, r8d
	neg	eax
	test	r9d, r9d
	cmove	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__udivmodhi4
	.def	__udivmodhi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodhi4
__udivmodhi4:
	.seh_endprologue
	mov	r10d, ecx
	mov	eax, edx
	mov	r9d, 1
	cmp	dx, cx
	jb	.L906
	jmp	.L915
	.p2align 4,,10
	.p2align 3
.L911:
	add	eax, eax
	add	r9d, r9d
	cmp	ax, r10w
	jnb	.L907
	test	r9w, r9w
	je	.L907
.L906:
	test	ax, ax
	jns	.L911
.L907:
	xor	edx, edx
	test	r9w, r9w
	je	.L910
.L915:
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L909:
	cmp	r10w, ax
	jb	.L912
	sub	r10d, eax
	or	edx, r9d
.L912:
	shr	ax
	shr	r9w
	jne	.L909
.L910:
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
	jb	.L924
	jmp	.L933
	.p2align 4,,10
	.p2align 3
.L929:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L925
	test	eax, eax
	je	.L925
.L924:
	test	edx, edx
	jns	.L929
.L925:
	xor	r9d, r9d
	test	eax, eax
	je	.L928
.L933:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L927:
	cmp	ecx, edx
	jb	.L930
	sub	ecx, edx
	or	r9d, eax
.L930:
	shr	edx
	shr	eax
	jne	.L927
.L928:
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
	je	.L942
	lea	ecx, -32[rdx]
	sal	r8d, cl
	xor	eax, eax
.L943:
	sal	r8, 32
	or	rax, r8
.L941:
	ret
	.p2align 4,,10
	.p2align 3
.L942:
	mov	rax, rcx
	test	edx, edx
	je	.L941
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
	jmp	.L943
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
	je	.L948
	lea	ecx, -64[rdx]
	sal	rax, cl
	xor	r9d, r9d
.L949:
	mov	rcx, rax
	mov	rax, r9
	mov	rdx, rcx
.L950:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	r11, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], r11
	movdqa	xmm0, XMMWORD PTR [rsp]
	movq	xmm1, rdx
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L948:
	test	edx, edx
	je	.L951
	mov	r9, rax
	mov	ecx, edx
	sal	r9, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rax, cl
	mov	ecx, edx
	sal	r8, cl
	or	rax, r8
	jmp	.L949
	.p2align 4,,10
	.p2align 3
.L951:
	mov	rdx, r8
	jmp	.L950
	.seh_endproc
	.p2align 4
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L953
	sar	r8, 32
	mov	eax, r8d
	sar	eax, 31
	lea	ecx, -32[rdx]
	sar	r8d, cl
.L954:
	sal	rax, 32
	or	rax, r8
.L952:
	ret
	.p2align 4,,10
	.p2align 3
.L953:
	mov	rax, rcx
	test	edx, edx
	je	.L952
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
	jmp	.L954
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
	je	.L959
	mov	r10, rax
	sar	r10, 63
	lea	ecx, -64[rdx]
	sar	rax, cl
.L960:
	mov	rdx, rax
	mov	rax, r10
.L961:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	rcx, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
	movq	xmm1, rax
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L959:
	test	edx, edx
	je	.L962
	mov	r10, rax
	mov	ecx, edx
	sar	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L960
	.p2align 4,,10
	.p2align 3
.L962:
	mov	rdx, r8
	jmp	.L961
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
	mov	edx, ecx
	xor	r8d, r8d
	cmp	ecx, 65535
	setbe	r8b
	sal	r8d, 4
	mov	ecx, 16
	sub	ecx, r8d
	shr	edx, cl
	xor	eax, eax
	test	dh, -1
	sete	al
	sal	eax, 3
	mov	ecx, 8
	sub	ecx, eax
	shr	edx, cl
	add	r8d, eax
	xor	eax, eax
	test	dl, -16
	sete	al
	sal	eax, 2
	mov	ecx, 4
	sub	ecx, eax
	shr	edx, cl
	lea	r9d, [rax+r8]
	xor	r8d, r8d
	test	dl, 12
	sete	r8b
	add	r8d, r8d
	mov	eax, 2
	mov	ecx, eax
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
	mov	r8, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 8[rcx]
	xor	eax, eax
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
	xor	rdx, 63
	sal	eax, 6
	add	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__cmpdi2
	.def	__cmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpdi2
__cmpdi2:
	.seh_endprologue
	mov	r9, rcx
	sar	r9, 32
	mov	r8, rdx
	sar	r8, 32
	xor	eax, eax
	cmp	r9d, r8d
	jl	.L967
	mov	eax, 2
	jg	.L967
	xor	eax, eax
	cmp	ecx, edx
	jb	.L967
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L967:
	ret
	.seh_endproc
	.p2align 4
	.globl	__aeabi_lcmp
	.def	__aeabi_lcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_lcmp
__aeabi_lcmp:
	.seh_endprologue
	mov	r9, rcx
	sar	r9, 32
	mov	r8, rdx
	sar	r8, 32
	xor	eax, eax
	cmp	r9d, r8d
	jl	.L974
	mov	eax, 2
	jg	.L974
	xor	eax, eax
	cmp	ecx, edx
	jb	.L974
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L974:
	sub	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__cmpti2
	.def	__cmpti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpti2
__cmpti2:
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	r9, QWORD PTR [rdx]
	xor	eax, eax
	mov	rdx, QWORD PTR 8[rdx]
	cmp	QWORD PTR 8[rcx], rdx
	jl	.L979
	mov	eax, 2
	jg	.L979
	xor	eax, eax
	cmp	r8, r9
	jb	.L979
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L979:
	ret
	.seh_endproc
	.p2align 4
	.globl	__ctzsi2
	.def	__ctzsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzsi2
__ctzsi2:
	.seh_endprologue
	mov	eax, ecx
	xor	edx, edx
	test	cx, cx
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
	.p2align 4
	.globl	__ctzti2
	.def	__ctzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzti2
__ctzti2:
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	xor	eax, eax
	test	r8, r8
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
	.p2align 4
	.globl	__ffsti2
	.def	__ffsti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ffsti2
__ffsti2:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	test	rax, rax
	jne	.L988
	xor	eax, eax
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	mov	edx, 0
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L988:
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
	je	.L992
	shr	r8, 32
	lea	ecx, -32[rdx]
	shr	r8d, cl
	xor	eax, eax
.L993:
	sal	rax, 32
	or	rax, r8
.L991:
	ret
	.p2align 4,,10
	.p2align 3
.L992:
	mov	rax, rcx
	test	edx, edx
	je	.L991
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
	jmp	.L993
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
	je	.L998
	lea	ecx, -64[rdx]
	shr	rax, cl
	xor	r10d, r10d
.L999:
	mov	rdx, rax
	mov	rax, r10
.L1000:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	rcx, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
	movq	xmm1, rax
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L998:
	test	edx, edx
	je	.L1001
	mov	r10, rax
	mov	ecx, edx
	shr	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L999
	.p2align 4,,10
	.p2align 3
.L1001:
	mov	rdx, r8
	jmp	.L1000
	.seh_endproc
	.p2align 4
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
	mov	r9d, edx
	imul	r9d, eax
	mov	r11d, r9d
	shr	r11d, 16
	mov	r10d, r8d
	shr	r10d, 16
	imul	eax, r10d
	add	eax, r11d
	movzx	ebx, ax
	mov	r11d, ecx
	shr	r11d, 16
	imul	edx, r11d
	add	edx, ebx
	movzx	r9d, r9w
	mov	ebx, edx
	sal	ebx, 16
	shr	eax, 16
	imul	r10d, r11d
	add	eax, r10d
	shr	edx, 16
	add	edx, eax
	mov	edx, edx
	sal	rdx, 32
	lea	eax, [r9+rbx]
	or	rax, rdx
	mov	rdx, rcx
	sar	rdx, 32
	imul	edx, r8d
	mov	r9, rax
	sar	r9, 32
	add	edx, r9d
	sar	r8, 32
	imul	ecx, r8d
	add	edx, ecx
	mov	edx, edx
	sal	rdx, 32
	mov	eax, eax
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
	mov	r8, rcx
	mov	rcx, QWORD PTR [rcx]
	mov	r10, rdx
	mov	r9, QWORD PTR [rdx]
	mov	edx, ecx
	mov	eax, r9d
	mov	r11, rdx
	imul	r11, rax
	mov	rsi, r11
	shr	rsi, 32
	mov	rbx, rcx
	shr	rbx, 32
	imul	rax, rbx
	add	rax, rsi
	mov	edi, eax
	mov	rsi, r9
	shr	rsi, 32
	imul	rdx, rsi
	add	rdx, rdi
	mov	r11d, r11d
	mov	rdi, rdx
	sal	rdi, 32
	add	r11, rdi
	shr	rax, 32
	imul	rbx, rsi
	add	rax, rbx
	shr	rdx, 32
	add	rax, rdx
	mov	QWORD PTR [rsp], r11
	mov	QWORD PTR 8[rsp], rax
	imul	rcx, QWORD PTR 8[r10]
	add	rcx, rax
	imul	r9, QWORD PTR 8[r8]
	add	rcx, r9
	mov	rax, QWORD PTR [rsp]
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rcx
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
	mov	rax, QWORD PTR [rcx]
	xor	edx, edx
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
	and	ecx, 15
	mov	eax, 27030
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
	and	ecx, 15
	mov	eax, 27030
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
	and	ecx, 15
	mov	eax, 27030
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
	.p2align 4
	.globl	__popcountti2
	.def	__popcountti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountti2
__popcountti2:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	r8, rax
	mov	r9, rdx
	shrd	r8, rdx, 1
	shr	r9
	movabs	r10, 6148914691236517205
	and	r8, r10
	and	r9, r10
	sub	rax, r8
	sbb	rdx, r9
	mov	r8, rax
	mov	r9, rdx
	shrd	r8, rdx, 2
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
	shrd	rax, r9, 4
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
	.p2align 4
	.globl	__powidf2
	.def	__powidf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powidf2
__powidf2:
	.seh_endprologue
	mov	eax, edx
	movsd	xmm1, QWORD PTR .LC14[rip]
	jmp	.L1017
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1022:
	mulsd	xmm0, xmm0
.L1017:
	test	al, 1
	je	.L1015
	mulsd	xmm1, xmm0
.L1015:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	jne	.L1022
	test	edx, edx
	jns	.L1014
	movsd	xmm2, QWORD PTR .LC14[rip]
	divsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L1014:
	movapd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	__powisf2
	.def	__powisf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powisf2
__powisf2:
	.seh_endprologue
	mov	eax, edx
	movss	xmm1, DWORD PTR .LC16[rip]
	jmp	.L1026
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L1031:
	mulss	xmm0, xmm0
.L1026:
	test	al, 1
	je	.L1024
	mulss	xmm1, xmm0
.L1024:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	jne	.L1031
	test	edx, edx
	jns	.L1023
	movss	xmm2, DWORD PTR .LC16[rip]
	divss	xmm2, xmm1
	movaps	xmm1, xmm2
.L1023:
	movaps	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	__ucmpdi2
	.def	__ucmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpdi2
__ucmpdi2:
	.seh_endprologue
	mov	r8, rcx
	shr	r8, 32
	mov	r9, rdx
	shr	r9, 32
	xor	eax, eax
	cmp	r8d, r9d
	jb	.L1032
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L1032
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1032
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1032:
	ret
	.seh_endproc
	.p2align 4
	.globl	__aeabi_ulcmp
	.def	__aeabi_ulcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_ulcmp
__aeabi_ulcmp:
	.seh_endprologue
	mov	r8, rcx
	shr	r8, 32
	mov	r9, rdx
	shr	r9, 32
	xor	eax, eax
	cmp	r8d, r9d
	jb	.L1039
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L1039
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1039
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1039:
	sub	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__ucmpti2
	.def	__ucmpti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpti2
__ucmpti2:
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 8[rcx]
	mov	r9, QWORD PTR [rdx]
	mov	rdx, QWORD PTR 8[rdx]
	xor	eax, eax
	cmp	rcx, rdx
	jb	.L1044
	mov	eax, 2
	cmp	rdx, rcx
	jb	.L1044
	xor	eax, eax
	cmp	r8, r9
	jb	.L1044
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1044:
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
	.def	memmove;	.scl	2;	.type	32;	.endef
