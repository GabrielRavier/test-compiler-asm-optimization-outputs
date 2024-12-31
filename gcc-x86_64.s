	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.globl	make_ti
	.type	make_ti, @function
make_ti:
.LFB0:
	.cfi_startproc
	mov	QWORD PTR [rsp-32], rdi
	mov	QWORD PTR [rsp-40], rsi
	mov	rax, QWORD PTR [rsp-32]
	mov	QWORD PTR [rsp-16], rax
	mov	rax, QWORD PTR [rsp-40]
	mov	QWORD PTR [rsp-24], rax
	mov	rax, QWORD PTR [rsp-24]
	mov	rdx, QWORD PTR [rsp-16]
	ret
	.cfi_endproc
.LFE0:
	.size	make_ti, .-make_ti
	.globl	make_tu
	.type	make_tu, @function
make_tu:
.LFB1:
	.cfi_startproc
	mov	QWORD PTR [rsp-32], rdi
	mov	QWORD PTR [rsp-40], rsi
	mov	rax, QWORD PTR [rsp-32]
	mov	QWORD PTR [rsp-16], rax
	mov	rax, QWORD PTR [rsp-40]
	mov	QWORD PTR [rsp-24], rax
	mov	rax, QWORD PTR [rsp-24]
	mov	rdx, QWORD PTR [rsp-16]
	ret
	.cfi_endproc
.LFE1:
	.size	make_tu, .-make_tu
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB2:
	.cfi_startproc
	mov	QWORD PTR [rsp-40], rdi
	mov	QWORD PTR [rsp-48], rsi
	mov	QWORD PTR [rsp-56], rdx
	mov	rax, QWORD PTR [rsp-48]
	cmp	rax, QWORD PTR [rsp-40]
	jnb	.L6
	mov	rdx, QWORD PTR [rsp-48]
	mov	rax, QWORD PTR [rsp-56]
	add	rax, rdx
	mov	QWORD PTR [rsp-24], rax
	mov	rdx, QWORD PTR [rsp-40]
	mov	rax, QWORD PTR [rsp-56]
	add	rax, rdx
	mov	QWORD PTR [rsp-8], rax
	jmp	.L7
.L8:
	sub	QWORD PTR [rsp-24], 1
	sub	QWORD PTR [rsp-8], 1
	mov	rax, QWORD PTR [rsp-24]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rsp-8]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR [rsp-56], 1
.L7:
	cmp	QWORD PTR [rsp-56], 0
	jne	.L8
	jmp	.L9
.L6:
	mov	rax, QWORD PTR [rsp-48]
	cmp	rax, QWORD PTR [rsp-40]
	je	.L9
	mov	rax, QWORD PTR [rsp-40]
	mov	QWORD PTR [rsp-16], rax
	jmp	.L10
.L11:
	mov	rdx, QWORD PTR [rsp-48]
	lea	rax, [rdx+1]
	mov	QWORD PTR [rsp-48], rax
	mov	rax, QWORD PTR [rsp-16]
	lea	rcx, [rax+1]
	mov	QWORD PTR [rsp-16], rcx
	movzx	edx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR [rsp-56], 1
.L10:
	cmp	QWORD PTR [rsp-56], 0
	jne	.L11
.L9:
	mov	rax, QWORD PTR [rsp-40]
	ret
	.cfi_endproc
.LFE2:
	.size	memmove, .-memmove
	.globl	memccpy
	.type	memccpy, @function
memccpy:
.LFB3:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	mov	QWORD PTR [rsp-32], rsi
	mov	DWORD PTR [rsp-36], edx
	mov	QWORD PTR [rsp-48], rcx
	mov	eax, DWORD PTR [rsp-36]
	movzx	eax, al
	mov	DWORD PTR [rsp-4], eax
	jmp	.L14
.L16:
	sub	QWORD PTR [rsp-48], 1
	add	QWORD PTR [rsp-32], 1
	add	QWORD PTR [rsp-24], 1
.L14:
	cmp	QWORD PTR [rsp-48], 0
	je	.L15
	mov	rax, QWORD PTR [rsp-32]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rsp-24]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR [rsp-24]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	DWORD PTR [rsp-4], eax
	jne	.L16
.L15:
	cmp	QWORD PTR [rsp-48], 0
	je	.L17
	mov	rax, QWORD PTR [rsp-24]
	add	rax, 1
	ret
.L17:
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
	mov	QWORD PTR [rsp-24], rdi
	mov	DWORD PTR [rsp-28], esi
	mov	QWORD PTR [rsp-40], rdx
	mov	eax, DWORD PTR [rsp-28]
	movzx	eax, al
	mov	DWORD PTR [rsp-4], eax
	jmp	.L20
.L22:
	add	QWORD PTR [rsp-24], 1
	sub	QWORD PTR [rsp-40], 1
.L20:
	cmp	QWORD PTR [rsp-40], 0
	je	.L21
	mov	rax, QWORD PTR [rsp-24]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	DWORD PTR [rsp-4], eax
	jne	.L22
.L21:
	cmp	QWORD PTR [rsp-40], 0
	je	.L23
	mov	rax, QWORD PTR [rsp-24]
	ret
.L23:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE4:
	.size	memchr, .-memchr
	.globl	memcmp
	.type	memcmp, @function
memcmp:
.LFB5:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	QWORD PTR [rsp-16], rsi
	mov	QWORD PTR [rsp-24], rdx
	jmp	.L27
.L29:
	sub	QWORD PTR [rsp-24], 1
	add	QWORD PTR [rsp-8], 1
	add	QWORD PTR [rsp-16], 1
.L27:
	cmp	QWORD PTR [rsp-24], 0
	je	.L28
	mov	rax, QWORD PTR [rsp-8]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rsp-16]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	je	.L29
.L28:
	cmp	QWORD PTR [rsp-24], 0
	je	.L30
	mov	rax, QWORD PTR [rsp-8]
	movzx	eax, BYTE PTR [rax]
	movzx	ecx, al
	mov	rax, QWORD PTR [rsp-16]
	movzx	eax, BYTE PTR [rax]
	movzx	edx, al
	mov	eax, ecx
	sub	eax, edx
	ret
.L30:
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
	mov	QWORD PTR [rsp-24], rdi
	mov	QWORD PTR [rsp-32], rsi
	mov	QWORD PTR [rsp-40], rdx
	mov	rax, QWORD PTR [rsp-24]
	mov	QWORD PTR [rsp-8], rax
	jmp	.L34
.L35:
	mov	rdx, QWORD PTR [rsp-32]
	lea	rax, [rdx+1]
	mov	QWORD PTR [rsp-32], rax
	mov	rax, QWORD PTR [rsp-8]
	lea	rcx, [rax+1]
	mov	QWORD PTR [rsp-8], rcx
	movzx	edx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR [rsp-40], 1
.L34:
	cmp	QWORD PTR [rsp-40], 0
	jne	.L35
	mov	rax, QWORD PTR [rsp-24]
	ret
	.cfi_endproc
.LFE6:
	.size	memcpy, .-memcpy
	.globl	memrchr
	.type	memrchr, @function
memrchr:
.LFB7:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	mov	DWORD PTR [rsp-28], esi
	mov	QWORD PTR [rsp-40], rdx
	mov	eax, DWORD PTR [rsp-28]
	movzx	eax, al
	mov	DWORD PTR [rsp-4], eax
	jmp	.L38
.L40:
	mov	rdx, QWORD PTR [rsp-24]
	mov	rax, QWORD PTR [rsp-40]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	DWORD PTR [rsp-4], eax
	jne	.L38
	mov	rdx, QWORD PTR [rsp-24]
	mov	rax, QWORD PTR [rsp-40]
	add	rax, rdx
	ret
.L38:
	mov	rax, QWORD PTR [rsp-40]
	lea	rdx, [rax-1]
	mov	QWORD PTR [rsp-40], rdx
	test	rax, rax
	jne	.L40
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
	mov	QWORD PTR [rsp-24], rdi
	mov	DWORD PTR [rsp-28], esi
	mov	QWORD PTR [rsp-40], rdx
	mov	rax, QWORD PTR [rsp-24]
	mov	QWORD PTR [rsp-8], rax
	jmp	.L42
.L43:
	mov	eax, DWORD PTR [rsp-28]
	mov	edx, eax
	mov	rax, QWORD PTR [rsp-8]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR [rsp-40], 1
	add	QWORD PTR [rsp-8], 1
.L42:
	cmp	QWORD PTR [rsp-40], 0
	jne	.L43
	mov	rax, QWORD PTR [rsp-24]
	ret
	.cfi_endproc
.LFE8:
	.size	memset, .-memset
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB9:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	QWORD PTR [rsp-16], rsi
	jmp	.L46
.L47:
	add	QWORD PTR [rsp-16], 1
	add	QWORD PTR [rsp-8], 1
.L46:
	mov	rax, QWORD PTR [rsp-16]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rsp-8]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR [rsp-8]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L47
	mov	rax, QWORD PTR [rsp-8]
	ret
	.cfi_endproc
.LFE9:
	.size	stpcpy, .-stpcpy
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB10:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	mov	DWORD PTR [rsp-28], esi
	mov	eax, DWORD PTR [rsp-28]
	movzx	eax, al
	mov	DWORD PTR [rsp-4], eax
	jmp	.L50
.L52:
	add	QWORD PTR [rsp-24], 1
.L50:
	mov	rax, QWORD PTR [rsp-24]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L51
	mov	rax, QWORD PTR [rsp-24]
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	DWORD PTR [rsp-4], eax
	jne	.L52
.L51:
	mov	rax, QWORD PTR [rsp-24]
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
	mov	DWORD PTR [rsp-4], esi
.L57:
	movzx	edx, BYTE PTR [rax]
	movsx	edx, dl
	cmp	DWORD PTR [rsp-4], edx
	je	.L56
	mov	rdx, rax
	lea	rax, [rdx+1]
	movzx	edx, BYTE PTR [rdx]
	test	dl, dl
	jne	.L57
	mov	eax, 0
	ret
.L56:
	ret
	.cfi_endproc
.LFE11:
	.size	strchr, .-strchr
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	QWORD PTR [rsp-16], rsi
	jmp	.L60
.L62:
	add	QWORD PTR [rsp-8], 1
	add	QWORD PTR [rsp-16], 1
.L60:
	mov	rax, QWORD PTR [rsp-8]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rsp-16]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L61
	mov	rax, QWORD PTR [rsp-8]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L62
.L61:
	mov	rax, QWORD PTR [rsp-8]
	movzx	eax, BYTE PTR [rax]
	movzx	ecx, al
	mov	rax, QWORD PTR [rsp-16]
	movzx	eax, BYTE PTR [rax]
	movzx	edx, al
	mov	eax, ecx
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
	mov	QWORD PTR [rsp-24], rdi
	mov	rax, QWORD PTR [rsp-24]
	mov	QWORD PTR [rsp-8], rax
	jmp	.L65
.L66:
	add	QWORD PTR [rsp-8], 1
.L65:
	mov	rax, QWORD PTR [rsp-8]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L66
	mov	rax, QWORD PTR [rsp-8]
	sub	rax, QWORD PTR [rsp-24]
	ret
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB14:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	mov	QWORD PTR [rsp-32], rsi
	mov	QWORD PTR [rsp-40], rdx
	mov	rax, QWORD PTR [rsp-40]
	lea	rdx, [rax-1]
	mov	QWORD PTR [rsp-8], rdx
	test	rax, rax
	jne	.L71
	mov	eax, 0
	ret
.L73:
	add	QWORD PTR [rsp-24], 1
	add	QWORD PTR [rsp-32], 1
	sub	QWORD PTR [rsp-8], 1
.L71:
	mov	rax, QWORD PTR [rsp-24]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L72
	mov	rax, QWORD PTR [rsp-32]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L72
	cmp	QWORD PTR [rsp-8], 0
	je	.L72
	mov	rax, QWORD PTR [rsp-24]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rsp-32]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	je	.L73
.L72:
	mov	rax, QWORD PTR [rsp-24]
	movzx	eax, BYTE PTR [rax]
	movzx	ecx, al
	mov	rax, QWORD PTR [rsp-32]
	movzx	eax, BYTE PTR [rax]
	movzx	edx, al
	mov	eax, ecx
	sub	eax, edx
	ret
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.globl	swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	QWORD PTR [rsp-16], rsi
	mov	QWORD PTR [rsp-24], rdx
	jmp	.L75
.L76:
	mov	rax, QWORD PTR [rsp-8]
	add	rax, 1
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rsp-16]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR [rsp-16]
	lea	rdx, [rax+1]
	mov	rax, QWORD PTR [rsp-8]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	add	QWORD PTR [rsp-16], 2
	add	QWORD PTR [rsp-8], 2
	sub	QWORD PTR [rsp-24], 2
.L75:
	cmp	QWORD PTR [rsp-24], 1
	jg	.L76
	ret
	.cfi_endproc
.LFE15:
	.size	swab, .-swab
	.globl	isalpha
	.type	isalpha, @function
isalpha:
.LFB16:
	.cfi_startproc
	mov	DWORD PTR [rsp-4], edi
	mov	eax, DWORD PTR [rsp-4]
	or	eax, 32
	sub	eax, 97
	cmp	eax, 25
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
	mov	DWORD PTR [rsp-4], edi
	mov	eax, DWORD PTR [rsp-4]
	cmp	eax, 127
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
	mov	DWORD PTR [rsp-4], edi
	cmp	DWORD PTR [rsp-4], 32
	je	.L82
	cmp	DWORD PTR [rsp-4], 9
	jne	.L83
.L82:
	mov	eax, 1
	ret
.L83:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE18:
	.size	isblank, .-isblank
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB19:
	.cfi_startproc
	mov	DWORD PTR [rsp-4], edi
	mov	eax, DWORD PTR [rsp-4]
	cmp	eax, 31
	jbe	.L87
	cmp	DWORD PTR [rsp-4], 127
	jne	.L88
.L87:
	mov	eax, 1
	ret
.L88:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE19:
	.size	iscntrl, .-iscntrl
	.globl	isdigit
	.type	isdigit, @function
isdigit:
.LFB20:
	.cfi_startproc
	mov	DWORD PTR [rsp-4], edi
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, 48
	cmp	eax, 9
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
	mov	DWORD PTR [rsp-4], edi
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, 33
	cmp	eax, 93
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
	mov	DWORD PTR [rsp-4], edi
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, 97
	cmp	eax, 25
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
	mov	DWORD PTR [rsp-4], edi
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, 32
	cmp	eax, 94
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
	mov	DWORD PTR [rsp-4], edi
	cmp	DWORD PTR [rsp-4], 32
	je	.L100
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, 9
	cmp	eax, 4
	ja	.L101
.L100:
	mov	eax, 1
	ret
.L101:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE24:
	.size	isspace, .-isspace
	.globl	isupper
	.type	isupper, @function
isupper:
.LFB25:
	.cfi_startproc
	mov	DWORD PTR [rsp-4], edi
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, 65
	cmp	eax, 25
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
	mov	DWORD PTR [rsp-4], edi
	cmp	DWORD PTR [rsp-4], 31
	jbe	.L107
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, 127
	cmp	eax, 32
	jbe	.L107
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, 8232
	cmp	eax, 1
	jbe	.L107
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, 65529
	cmp	eax, 2
	ja	.L108
.L107:
	mov	eax, 1
	ret
.L108:
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
	mov	DWORD PTR [rsp-4], edi
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, 48
	cmp	eax, 9
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
	mov	DWORD PTR [rsp-4], edi
	cmp	DWORD PTR [rsp-4], 254
	ja	.L114
	mov	eax, DWORD PTR [rsp-4]
	add	eax, 1
	and	eax, 127
	cmp	eax, 32
	seta	al
	movzx	eax, al
	ret
.L114:
	cmp	DWORD PTR [rsp-4], 8231
	jbe	.L116
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, 8234
	cmp	eax, 47061
	jbe	.L116
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, 57344
	cmp	eax, 8184
	ja	.L117
.L116:
	mov	eax, 1
	ret
.L117:
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, 65532
	cmp	eax, 1048579
	ja	.L118
	mov	eax, DWORD PTR [rsp-4]
	and	eax, 65534
	cmp	eax, 65534
	jne	.L119
.L118:
	mov	eax, 0
	ret
.L119:
	mov	eax, 1
	ret
	.cfi_endproc
.LFE28:
	.size	iswprint, .-iswprint
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	mov	DWORD PTR [rsp-4], edi
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L121
	mov	eax, DWORD PTR [rsp-4]
	or	eax, 32
	sub	eax, 97
	cmp	eax, 5
	ja	.L122
.L121:
	mov	eax, 1
	ret
.L122:
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
	mov	DWORD PTR [rsp-4], edi
	mov	eax, DWORD PTR [rsp-4]
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
	movsd	QWORD PTR [rsp-8], xmm0
	movsd	QWORD PTR [rsp-16], xmm1
	movsd	xmm0, QWORD PTR [rsp-8]
	ucomisd	xmm0, QWORD PTR [rsp-8]
	jnp	.L128
	mov	rax, QWORD PTR [rsp-8]
	jmp	.L129
.L128:
	movsd	xmm0, QWORD PTR [rsp-16]
	ucomisd	xmm0, QWORD PTR [rsp-16]
	jnp	.L130
	mov	rax, QWORD PTR [rsp-16]
	jmp	.L129
.L130:
	movsd	xmm0, QWORD PTR [rsp-8]
	comisd	xmm0, QWORD PTR [rsp-16]
	jbe	.L135
	movsd	xmm0, QWORD PTR [rsp-8]
	subsd	xmm0, QWORD PTR [rsp-16]
	movq	rax, xmm0
	jmp	.L129
.L135:
	mov	rax, QWORD PTR .LC0[rip]
.L129:
	movq	xmm0, rax
	ret
	.cfi_endproc
.LFE31:
	.size	fdim, .-fdim
	.globl	fdimf
	.type	fdimf, @function
fdimf:
.LFB32:
	.cfi_startproc
	movss	DWORD PTR [rsp-4], xmm0
	movss	DWORD PTR [rsp-8], xmm1
	movss	xmm0, DWORD PTR [rsp-4]
	ucomiss	xmm0, DWORD PTR [rsp-4]
	jnp	.L137
	mov	eax, DWORD PTR [rsp-4]
	jmp	.L138
.L137:
	movss	xmm0, DWORD PTR [rsp-8]
	ucomiss	xmm0, DWORD PTR [rsp-8]
	jnp	.L139
	mov	eax, DWORD PTR [rsp-8]
	jmp	.L138
.L139:
	movss	xmm0, DWORD PTR [rsp-4]
	comiss	xmm0, DWORD PTR [rsp-8]
	jbe	.L144
	movss	xmm0, DWORD PTR [rsp-4]
	subss	xmm0, DWORD PTR [rsp-8]
	movd	eax, xmm0
	jmp	.L138
.L144:
	mov	eax, DWORD PTR .LC1[rip]
.L138:
	movd	xmm0, eax
	ret
	.cfi_endproc
.LFE32:
	.size	fdimf, .-fdimf
	.globl	fmax
	.type	fmax, @function
fmax:
.LFB33:
	.cfi_startproc
	movsd	QWORD PTR [rsp-8], xmm0
	movsd	QWORD PTR [rsp-16], xmm1
	movsd	xmm0, QWORD PTR [rsp-8]
	ucomisd	xmm0, QWORD PTR [rsp-8]
	jnp	.L146
	mov	rax, QWORD PTR [rsp-16]
	jmp	.L147
.L146:
	movsd	xmm0, QWORD PTR [rsp-16]
	ucomisd	xmm0, QWORD PTR [rsp-16]
	jnp	.L148
	mov	rax, QWORD PTR [rsp-8]
	jmp	.L147
.L148:
	movsd	xmm0, QWORD PTR [rsp-8]
	movmskpd	edx, xmm0
	and	edx, 1
	movsd	xmm0, QWORD PTR [rsp-16]
	movmskpd	eax, xmm0
	and	eax, 1
	cmp	edx, eax
	je	.L149
	movsd	xmm0, QWORD PTR [rsp-8]
	movmskpd	eax, xmm0
	and	eax, 1
	je	.L150
	mov	rax, QWORD PTR [rsp-16]
	jmp	.L147
.L150:
	mov	rax, QWORD PTR [rsp-8]
	jmp	.L147
.L149:
	movsd	xmm0, QWORD PTR [rsp-16]
	comisd	xmm0, QWORD PTR [rsp-8]
	jbe	.L156
	mov	rax, QWORD PTR [rsp-16]
	jmp	.L147
.L156:
	mov	rax, QWORD PTR [rsp-8]
.L147:
	movq	xmm0, rax
	ret
	.cfi_endproc
.LFE33:
	.size	fmax, .-fmax
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB34:
	.cfi_startproc
	movss	DWORD PTR [rsp-4], xmm0
	movss	DWORD PTR [rsp-8], xmm1
	movss	xmm0, DWORD PTR [rsp-4]
	ucomiss	xmm0, DWORD PTR [rsp-4]
	jnp	.L158
	mov	eax, DWORD PTR [rsp-8]
	jmp	.L159
.L158:
	movss	xmm0, DWORD PTR [rsp-8]
	ucomiss	xmm0, DWORD PTR [rsp-8]
	jnp	.L160
	mov	eax, DWORD PTR [rsp-4]
	jmp	.L159
.L160:
	mov	eax, DWORD PTR [rsp-4]
	and	eax, -2147483648
	mov	edx, eax
	mov	eax, DWORD PTR [rsp-8]
	and	eax, -2147483648
	cmp	edx, eax
	je	.L161
	mov	eax, DWORD PTR [rsp-4]
	and	eax, -2147483648
	je	.L162
	mov	eax, DWORD PTR [rsp-8]
	jmp	.L159
.L162:
	mov	eax, DWORD PTR [rsp-4]
	jmp	.L159
.L161:
	movss	xmm0, DWORD PTR [rsp-8]
	comiss	xmm0, DWORD PTR [rsp-4]
	jbe	.L168
	mov	eax, DWORD PTR [rsp-8]
	jmp	.L159
.L168:
	mov	eax, DWORD PTR [rsp-4]
.L159:
	movd	xmm0, eax
	ret
	.cfi_endproc
.LFE34:
	.size	fmaxf, .-fmaxf
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB35:
	.cfi_startproc
	fld	TBYTE PTR [rsp+8]
	fld	TBYTE PTR [rsp+8]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	.L170
	mov	rax, QWORD PTR [rsp+24]
	mov	edx, DWORD PTR [rsp+32]
	jmp	.L171
.L170:
	fld	TBYTE PTR [rsp+24]
	fld	TBYTE PTR [rsp+24]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	.L172
	mov	rax, QWORD PTR [rsp+8]
	mov	edx, DWORD PTR [rsp+16]
	jmp	.L171
.L172:
	fld	TBYTE PTR [rsp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	TBYTE PTR [rsp+24]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L173
	fld	TBYTE PTR [rsp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	.L174
	mov	rax, QWORD PTR [rsp+24]
	mov	edx, DWORD PTR [rsp+32]
	jmp	.L171
.L174:
	mov	rax, QWORD PTR [rsp+8]
	mov	edx, DWORD PTR [rsp+16]
	jmp	.L171
.L173:
	fld	TBYTE PTR [rsp+8]
	fld	TBYTE PTR [rsp+24]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	.L180
	mov	rax, QWORD PTR [rsp+24]
	mov	edx, DWORD PTR [rsp+32]
	jmp	.L171
.L180:
	mov	rax, QWORD PTR [rsp+8]
	mov	edx, DWORD PTR [rsp+16]
.L171:
	mov	QWORD PTR [rsp-24], rax
	mov	DWORD PTR [rsp-16], edx
	fld	TBYTE PTR [rsp-24]
	ret
	.cfi_endproc
.LFE35:
	.size	fmaxl, .-fmaxl
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	movsd	QWORD PTR [rsp-8], xmm0
	movsd	QWORD PTR [rsp-16], xmm1
	movsd	xmm0, QWORD PTR [rsp-8]
	ucomisd	xmm0, QWORD PTR [rsp-8]
	jnp	.L182
	mov	rax, QWORD PTR [rsp-16]
	jmp	.L183
.L182:
	movsd	xmm0, QWORD PTR [rsp-16]
	ucomisd	xmm0, QWORD PTR [rsp-16]
	jnp	.L184
	mov	rax, QWORD PTR [rsp-8]
	jmp	.L183
.L184:
	movsd	xmm0, QWORD PTR [rsp-8]
	movmskpd	edx, xmm0
	and	edx, 1
	movsd	xmm0, QWORD PTR [rsp-16]
	movmskpd	eax, xmm0
	and	eax, 1
	cmp	edx, eax
	je	.L185
	movsd	xmm0, QWORD PTR [rsp-8]
	movmskpd	eax, xmm0
	and	eax, 1
	je	.L186
	mov	rax, QWORD PTR [rsp-8]
	jmp	.L183
.L186:
	mov	rax, QWORD PTR [rsp-16]
	jmp	.L183
.L185:
	movsd	xmm0, QWORD PTR [rsp-16]
	comisd	xmm0, QWORD PTR [rsp-8]
	jbe	.L192
	mov	rax, QWORD PTR [rsp-8]
	jmp	.L183
.L192:
	mov	rax, QWORD PTR [rsp-16]
.L183:
	movq	xmm0, rax
	ret
	.cfi_endproc
.LFE36:
	.size	fmin, .-fmin
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB37:
	.cfi_startproc
	movss	DWORD PTR [rsp-4], xmm0
	movss	DWORD PTR [rsp-8], xmm1
	movss	xmm0, DWORD PTR [rsp-4]
	ucomiss	xmm0, DWORD PTR [rsp-4]
	jnp	.L194
	mov	eax, DWORD PTR [rsp-8]
	jmp	.L195
.L194:
	movss	xmm0, DWORD PTR [rsp-8]
	ucomiss	xmm0, DWORD PTR [rsp-8]
	jnp	.L196
	mov	eax, DWORD PTR [rsp-4]
	jmp	.L195
.L196:
	mov	eax, DWORD PTR [rsp-4]
	and	eax, -2147483648
	mov	edx, eax
	mov	eax, DWORD PTR [rsp-8]
	and	eax, -2147483648
	cmp	edx, eax
	je	.L197
	mov	eax, DWORD PTR [rsp-4]
	and	eax, -2147483648
	je	.L198
	mov	eax, DWORD PTR [rsp-4]
	jmp	.L195
.L198:
	mov	eax, DWORD PTR [rsp-8]
	jmp	.L195
.L197:
	movss	xmm0, DWORD PTR [rsp-8]
	comiss	xmm0, DWORD PTR [rsp-4]
	jbe	.L204
	mov	eax, DWORD PTR [rsp-4]
	jmp	.L195
.L204:
	mov	eax, DWORD PTR [rsp-8]
.L195:
	movd	xmm0, eax
	ret
	.cfi_endproc
.LFE37:
	.size	fminf, .-fminf
	.globl	fminl
	.type	fminl, @function
fminl:
.LFB38:
	.cfi_startproc
	fld	TBYTE PTR [rsp+8]
	fld	TBYTE PTR [rsp+8]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	.L206
	mov	rax, QWORD PTR [rsp+24]
	mov	edx, DWORD PTR [rsp+32]
	jmp	.L207
.L206:
	fld	TBYTE PTR [rsp+24]
	fld	TBYTE PTR [rsp+24]
	fucomip	st, st(1)
	fstp	st(0)
	jnp	.L208
	mov	rax, QWORD PTR [rsp+8]
	mov	edx, DWORD PTR [rsp+16]
	jmp	.L207
.L208:
	fld	TBYTE PTR [rsp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	TBYTE PTR [rsp+24]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L209
	fld	TBYTE PTR [rsp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	.L210
	mov	rax, QWORD PTR [rsp+8]
	mov	edx, DWORD PTR [rsp+16]
	jmp	.L207
.L210:
	mov	rax, QWORD PTR [rsp+24]
	mov	edx, DWORD PTR [rsp+32]
	jmp	.L207
.L209:
	fld	TBYTE PTR [rsp+8]
	fld	TBYTE PTR [rsp+24]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	.L216
	mov	rax, QWORD PTR [rsp+8]
	mov	edx, DWORD PTR [rsp+16]
	jmp	.L207
.L216:
	mov	rax, QWORD PTR [rsp+24]
	mov	edx, DWORD PTR [rsp+32]
.L207:
	mov	QWORD PTR [rsp-24], rax
	mov	DWORD PTR [rsp-16], edx
	fld	TBYTE PTR [rsp-24]
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
	mov	QWORD PTR [rsp-24], rdi
	mov	rax, QWORD PTR [rsp-24]
	mov	DWORD PTR [rsp-12], eax
	mov	QWORD PTR [rsp-8], OFFSET FLAT:s.0
	jmp	.L218
.L219:
	mov	eax, DWORD PTR [rsp-12]
	and	eax, 63
	mov	eax, eax
	movzx	edx, BYTE PTR digits[rax]
	mov	rax, QWORD PTR [rsp-8]
	mov	BYTE PTR [rax], dl
	add	QWORD PTR [rsp-8], 1
	shr	DWORD PTR [rsp-12], 6
.L218:
	cmp	DWORD PTR [rsp-12], 0
	jne	.L219
	mov	rax, QWORD PTR [rsp-8]
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
	mov	DWORD PTR [rsp-4], edi
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, 1
	mov	eax, eax
	mov	QWORD PTR seed[rip], rax
	nop
	ret
	.cfi_endproc
.LFE40:
	.size	srand, .-srand
	.globl	rand
	.type	rand, @function
rand:
.LFB41:
	.cfi_startproc
	mov	rax, QWORD PTR seed[rip]
	movabs	rdx, 6364136223846793005
	imul	rax, rdx
	add	rax, 1
	mov	QWORD PTR seed[rip], rax
	mov	rax, QWORD PTR seed[rip]
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
	mov	QWORD PTR [rsp-8], rdi
	mov	QWORD PTR [rsp-16], rsi
	cmp	QWORD PTR [rsp-16], 0
	jne	.L225
	mov	rax, QWORD PTR [rsp-8]
	mov	QWORD PTR [rax+8], 0
	mov	rax, QWORD PTR [rsp-8]
	mov	rdx, QWORD PTR [rax+8]
	mov	rax, QWORD PTR [rsp-8]
	mov	QWORD PTR [rax], rdx
	ret
.L225:
	mov	rax, QWORD PTR [rsp-16]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR [rsp-8]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR [rsp-8]
	mov	rdx, QWORD PTR [rsp-16]
	mov	QWORD PTR [rax+8], rdx
	mov	rax, QWORD PTR [rsp-16]
	mov	rdx, QWORD PTR [rsp-8]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR [rsp-8]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L224
	mov	rax, QWORD PTR [rsp-8]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR [rsp-8]
	mov	QWORD PTR [rax+8], rdx
.L224:
	ret
	.cfi_endproc
.LFE42:
	.size	insque, .-insque
	.globl	remque
	.type	remque, @function
remque:
.LFB43:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	rax, QWORD PTR [rsp-8]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L228
	mov	rax, QWORD PTR [rsp-8]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR [rsp-8]
	mov	rdx, QWORD PTR [rdx+8]
	mov	QWORD PTR [rax+8], rdx
.L228:
	mov	rax, QWORD PTR [rsp-8]
	mov	rax, QWORD PTR [rax+8]
	test	rax, rax
	je	.L227
	mov	rax, QWORD PTR [rsp-8]
	mov	rax, QWORD PTR [rax+8]
	mov	rdx, QWORD PTR [rsp-8]
	mov	rdx, QWORD PTR [rdx]
	mov	QWORD PTR [rax], rdx
.L227:
	ret
	.cfi_endproc
.LFE43:
	.size	remque, .-remque
	.globl	lsearch
	.type	lsearch, @function
lsearch:
.LFB44:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 80
	.cfi_def_cfa_offset 96
	mov	QWORD PTR [rsp+40], rdi
	mov	QWORD PTR [rsp+32], rsi
	mov	QWORD PTR [rsp+24], rdx
	mov	QWORD PTR [rsp+16], rcx
	mov	QWORD PTR [rsp+8], r8
	mov	rbx, QWORD PTR [rsp+16]
	mov	rax, rbx
	sub	rax, 1
	mov	QWORD PTR [rsp+64], rax
	mov	rax, QWORD PTR [rsp+24]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rsp+56], rax
	mov	QWORD PTR [rsp+72], 0
	jmp	.L232
.L235:
	mov	rdx, rbx
	imul	rdx, QWORD PTR [rsp+72]
	mov	rax, QWORD PTR [rsp+32]
	lea	rcx, [rdx+rax]
	mov	rax, QWORD PTR [rsp+40]
	mov	rdx, QWORD PTR [rsp+8]
	mov	rsi, rcx
	mov	rdi, rax
	call	rdx
	test	eax, eax
	jne	.L233
	imul	rbx, QWORD PTR [rsp+72]
	mov	rdx, rbx
	mov	rax, QWORD PTR [rsp+32]
	add	rax, rdx
	jmp	.L234
.L233:
	add	QWORD PTR [rsp+72], 1
.L232:
	mov	rax, QWORD PTR [rsp+72]
	cmp	rax, QWORD PTR [rsp+56]
	jb	.L235
	mov	rax, QWORD PTR [rsp+56]
	lea	rdx, [rax+1]
	mov	rax, QWORD PTR [rsp+24]
	mov	QWORD PTR [rax], rdx
	imul	rbx, QWORD PTR [rsp+56]
	mov	rdx, rbx
	mov	rax, QWORD PTR [rsp+32]
	lea	rcx, [rdx+rax]
	mov	rdx, QWORD PTR [rsp+16]
	mov	rax, QWORD PTR [rsp+40]
	mov	rsi, rax
	mov	rdi, rcx
	call	memcpy
.L234:
	add	rsp, 80
	.cfi_def_cfa_offset 16
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE44:
	.size	lsearch, .-lsearch
	.globl	lfind
	.type	lfind, @function
lfind:
.LFB45:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 80
	.cfi_def_cfa_offset 96
	mov	QWORD PTR [rsp+40], rdi
	mov	QWORD PTR [rsp+32], rsi
	mov	QWORD PTR [rsp+24], rdx
	mov	QWORD PTR [rsp+16], rcx
	mov	QWORD PTR [rsp+8], r8
	mov	rbx, QWORD PTR [rsp+16]
	mov	rax, rbx
	sub	rax, 1
	mov	QWORD PTR [rsp+64], rax
	mov	rax, QWORD PTR [rsp+24]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rsp+56], rax
	mov	QWORD PTR [rsp+72], 0
	jmp	.L238
.L241:
	mov	rdx, rbx
	imul	rdx, QWORD PTR [rsp+72]
	mov	rax, QWORD PTR [rsp+32]
	lea	rcx, [rdx+rax]
	mov	rax, QWORD PTR [rsp+40]
	mov	rdx, QWORD PTR [rsp+8]
	mov	rsi, rcx
	mov	rdi, rax
	call	rdx
	test	eax, eax
	jne	.L239
	imul	rbx, QWORD PTR [rsp+72]
	mov	rdx, rbx
	mov	rax, QWORD PTR [rsp+32]
	add	rax, rdx
	jmp	.L240
.L239:
	add	QWORD PTR [rsp+72], 1
.L238:
	mov	rax, QWORD PTR [rsp+72]
	cmp	rax, QWORD PTR [rsp+56]
	jb	.L241
	mov	eax, 0
.L240:
	add	rsp, 80
	.cfi_def_cfa_offset 16
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE45:
	.size	lfind, .-lfind
	.globl	abs
	.type	abs, @function
abs:
.LFB46:
	.cfi_startproc
	mov	DWORD PTR [rsp-4], edi
	mov	eax, DWORD PTR [rsp-4]
	mov	edx, eax
	neg	edx
	cmovns	eax, edx
	ret
	.cfi_endproc
.LFE46:
	.size	abs, .-abs
	.globl	atoi
	.type	atoi, @function
atoi:
.LFB47:
	.cfi_startproc
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	QWORD PTR [rsp], rdi
	mov	DWORD PTR [rsp+20], 0
	mov	DWORD PTR [rsp+16], 0
	jmp	.L246
.L247:
	add	QWORD PTR [rsp], 1
.L246:
	mov	rax, QWORD PTR [rsp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	isspace
	test	eax, eax
	jne	.L247
	mov	rax, QWORD PTR [rsp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	cmp	eax, 43
	je	.L248
	cmp	eax, 45
	jne	.L250
	mov	DWORD PTR [rsp+16], 1
.L248:
	add	QWORD PTR [rsp], 1
	jmp	.L250
.L251:
	mov	edx, DWORD PTR [rsp+20]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	rax, QWORD PTR [rsp]
	lea	rdx, [rax+1]
	mov	QWORD PTR [rsp], rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	lea	edx, [rax-48]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR [rsp+20], eax
.L250:
	mov	rax, QWORD PTR [rsp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L251
	cmp	DWORD PTR [rsp+16], 0
	jne	.L252
	mov	eax, DWORD PTR [rsp+20]
	neg	eax
	jmp	.L254
.L252:
	mov	eax, DWORD PTR [rsp+20]
.L254:
	add	rsp, 24
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.globl	atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	QWORD PTR [rsp], rdi
	mov	QWORD PTR [rsp+16], 0
	mov	DWORD PTR [rsp+12], 0
	jmp	.L257
.L258:
	add	QWORD PTR [rsp], 1
.L257:
	mov	rax, QWORD PTR [rsp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	isspace
	test	eax, eax
	jne	.L258
	mov	rax, QWORD PTR [rsp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	cmp	eax, 43
	je	.L259
	cmp	eax, 45
	jne	.L261
	mov	DWORD PTR [rsp+12], 1
.L259:
	add	QWORD PTR [rsp], 1
	jmp	.L261
.L262:
	mov	rdx, QWORD PTR [rsp+16]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	mov	rcx, rax
	mov	rax, QWORD PTR [rsp]
	lea	rdx, [rax+1]
	mov	QWORD PTR [rsp], rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	sub	rcx, rax
	mov	rdx, rcx
	mov	QWORD PTR [rsp+16], rdx
.L261:
	mov	rax, QWORD PTR [rsp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L262
	cmp	DWORD PTR [rsp+12], 0
	jne	.L263
	mov	rax, QWORD PTR [rsp+16]
	neg	rax
	jmp	.L265
.L263:
	mov	rax, QWORD PTR [rsp+16]
.L265:
	add	rsp, 24
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB49:
	.cfi_startproc
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	QWORD PTR [rsp], rdi
	mov	QWORD PTR [rsp+16], 0
	mov	DWORD PTR [rsp+12], 0
	jmp	.L268
.L269:
	add	QWORD PTR [rsp], 1
.L268:
	mov	rax, QWORD PTR [rsp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	isspace
	test	eax, eax
	jne	.L269
	mov	rax, QWORD PTR [rsp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	cmp	eax, 43
	je	.L270
	cmp	eax, 45
	jne	.L272
	mov	DWORD PTR [rsp+12], 1
.L270:
	add	QWORD PTR [rsp], 1
	jmp	.L272
.L273:
	mov	rdx, QWORD PTR [rsp+16]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	mov	rcx, rax
	mov	rax, QWORD PTR [rsp]
	lea	rdx, [rax+1]
	mov	QWORD PTR [rsp], rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cdqe
	sub	rcx, rax
	mov	rdx, rcx
	mov	QWORD PTR [rsp+16], rdx
.L272:
	mov	rax, QWORD PTR [rsp]
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L273
	cmp	DWORD PTR [rsp+12], 0
	jne	.L274
	mov	rax, QWORD PTR [rsp+16]
	neg	rax
	jmp	.L276
.L274:
	mov	rax, QWORD PTR [rsp+16]
.L276:
	add	rsp, 24
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE49:
	.size	atoll, .-atoll
	.globl	bsearch
	.type	bsearch, @function
bsearch:
.LFB50:
	.cfi_startproc
	sub	rsp, 72
	.cfi_def_cfa_offset 80
	mov	QWORD PTR [rsp+40], rdi
	mov	QWORD PTR [rsp+32], rsi
	mov	QWORD PTR [rsp+24], rdx
	mov	QWORD PTR [rsp+16], rcx
	mov	QWORD PTR [rsp+8], r8
	jmp	.L279
.L284:
	mov	rax, QWORD PTR [rsp+24]
	shr	rax
	imul	rax, QWORD PTR [rsp+16]
	mov	rdx, rax
	mov	rax, QWORD PTR [rsp+32]
	add	rax, rdx
	mov	QWORD PTR [rsp+56], rax
	mov	rdx, QWORD PTR [rsp+56]
	mov	rax, QWORD PTR [rsp+40]
	mov	rcx, QWORD PTR [rsp+8]
	mov	rsi, rdx
	mov	rdi, rax
	call	rcx
	mov	DWORD PTR [rsp+52], eax
	cmp	DWORD PTR [rsp+52], 0
	jns	.L280
	mov	rax, QWORD PTR [rsp+24]
	shr	rax
	mov	QWORD PTR [rsp+24], rax
	jmp	.L279
.L280:
	cmp	DWORD PTR [rsp+52], 0
	jle	.L282
	mov	rdx, QWORD PTR [rsp+56]
	mov	rax, QWORD PTR [rsp+16]
	add	rax, rdx
	mov	QWORD PTR [rsp+32], rax
	mov	rax, QWORD PTR [rsp+24]
	shr	rax
	mov	rdx, QWORD PTR [rsp+24]
	sub	rdx, rax
	lea	rax, [rdx-1]
	mov	QWORD PTR [rsp+24], rax
	jmp	.L279
.L282:
	mov	rax, QWORD PTR [rsp+56]
	jmp	.L283
.L279:
	cmp	QWORD PTR [rsp+24], 0
	jne	.L284
	mov	eax, 0
.L283:
	add	rsp, 72
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE50:
	.size	bsearch, .-bsearch
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB51:
	.cfi_startproc
	sub	rsp, 88
	.cfi_def_cfa_offset 96
	mov	QWORD PTR [rsp+40], rdi
	mov	QWORD PTR [rsp+32], rsi
	mov	QWORD PTR [rsp+24], rdx
	mov	QWORD PTR [rsp+16], rcx
	mov	QWORD PTR [rsp+8], r8
	mov	QWORD PTR [rsp], r9
	mov	rax, QWORD PTR [rsp+24]
	mov	DWORD PTR [rsp+76], eax
	jmp	.L287
.L291:
	mov	eax, DWORD PTR [rsp+76]
	sar	eax
	cdqe
	imul	rax, QWORD PTR [rsp+16]
	mov	rdx, rax
	mov	rax, QWORD PTR [rsp+32]
	add	rax, rdx
	mov	QWORD PTR [rsp+64], rax
	mov	rdx, QWORD PTR [rsp]
	mov	rcx, QWORD PTR [rsp+64]
	mov	rax, QWORD PTR [rsp+40]
	mov	r8, QWORD PTR [rsp+8]
	mov	rsi, rcx
	mov	rdi, rax
	call	r8
	mov	DWORD PTR [rsp+60], eax
	cmp	DWORD PTR [rsp+60], 0
	jne	.L288
	mov	rax, QWORD PTR [rsp+64]
	jmp	.L289
.L288:
	cmp	DWORD PTR [rsp+60], 0
	jle	.L290
	mov	rdx, QWORD PTR [rsp+64]
	mov	rax, QWORD PTR [rsp+16]
	add	rax, rdx
	mov	QWORD PTR [rsp+32], rax
	sub	DWORD PTR [rsp+76], 1
.L290:
	sar	DWORD PTR [rsp+76]
.L287:
	cmp	DWORD PTR [rsp+76], 0
	jne	.L291
	mov	eax, 0
.L289:
	add	rsp, 88
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE51:
	.size	bsearch_r, .-bsearch_r
	.globl	div
	.type	div, @function
div:
.LFB52:
	.cfi_startproc
	mov	DWORD PTR [rsp-4], edi
	mov	DWORD PTR [rsp-8], esi
	mov	eax, DWORD PTR [rsp-4]
	cdq
	idiv	DWORD PTR [rsp-8]
	mov	edi, eax
	mov	eax, DWORD PTR [rsp-4]
	cdq
	idiv	DWORD PTR [rsp-8]
	mov	esi, edx
	mov	edx, edi
	movabs	rax, -4294967296
	and	rax, rcx
	or	rax, rdx
	mov	rcx, rax
	mov	eax, esi
	sal	rax, 32
	mov	edx, ecx
	or	rax, rdx
	mov	rcx, rax
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
	mov	QWORD PTR [rsp-8], rdi
	mov	rax, QWORD PTR [rsp-8]
	mov	rdx, rax
	neg	rdx
	cmovns	rax, rdx
	ret
	.cfi_endproc
.LFE53:
	.size	imaxabs, .-imaxabs
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB54:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	QWORD PTR [rsp-8], rdi
	mov	QWORD PTR [rsp-16], rsi
	mov	rax, QWORD PTR [rsp-8]
	cqo
	idiv	QWORD PTR [rsp-16]
	mov	rcx, rax
	mov	rax, QWORD PTR [rsp-8]
	cqo
	idiv	QWORD PTR [rsp-16]
	mov	rax, rcx
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE54:
	.size	imaxdiv, .-imaxdiv
	.globl	labs
	.type	labs, @function
labs:
.LFB55:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	rax, QWORD PTR [rsp-8]
	mov	rdx, rax
	neg	rdx
	cmovns	rax, rdx
	ret
	.cfi_endproc
.LFE55:
	.size	labs, .-labs
	.globl	ldiv
	.type	ldiv, @function
ldiv:
.LFB56:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	QWORD PTR [rsp-8], rdi
	mov	QWORD PTR [rsp-16], rsi
	mov	rax, QWORD PTR [rsp-8]
	cqo
	idiv	QWORD PTR [rsp-16]
	mov	rcx, rax
	mov	rax, QWORD PTR [rsp-8]
	cqo
	idiv	QWORD PTR [rsp-16]
	mov	rax, rcx
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE56:
	.size	ldiv, .-ldiv
	.globl	llabs
	.type	llabs, @function
llabs:
.LFB57:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	rax, QWORD PTR [rsp-8]
	mov	rdx, rax
	neg	rdx
	cmovns	rax, rdx
	ret
	.cfi_endproc
.LFE57:
	.size	llabs, .-llabs
	.globl	lldiv
	.type	lldiv, @function
lldiv:
.LFB58:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	QWORD PTR [rsp-8], rdi
	mov	QWORD PTR [rsp-16], rsi
	mov	rax, QWORD PTR [rsp-8]
	cqo
	idiv	QWORD PTR [rsp-16]
	mov	rcx, rax
	mov	rax, QWORD PTR [rsp-8]
	cqo
	idiv	QWORD PTR [rsp-16]
	mov	rax, rcx
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE58:
	.size	lldiv, .-lldiv
	.globl	wcschr
	.type	wcschr, @function
wcschr:
.LFB59:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	DWORD PTR [rsp-12], esi
	jmp	.L311
.L313:
	add	QWORD PTR [rsp-8], 4
.L311:
	mov	rax, QWORD PTR [rsp-8]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L312
	mov	rax, QWORD PTR [rsp-8]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR [rsp-12], eax
	jne	.L313
.L312:
	mov	rax, QWORD PTR [rsp-8]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L314
	mov	rax, QWORD PTR [rsp-8]
	ret
.L314:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE59:
	.size	wcschr, .-wcschr
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	QWORD PTR [rsp-16], rsi
	jmp	.L318
.L320:
	add	QWORD PTR [rsp-8], 4
	add	QWORD PTR [rsp-16], 4
.L318:
	mov	rax, QWORD PTR [rsp-8]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rsp-16]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jne	.L319
	mov	rax, QWORD PTR [rsp-8]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L319
	mov	rax, QWORD PTR [rsp-16]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jne	.L320
.L319:
	mov	rax, QWORD PTR [rsp-8]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rsp-16]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jl	.L321
	mov	rax, QWORD PTR [rsp-8]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rsp-16]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	setg	al
	movzx	eax, al
	ret
.L321:
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
	mov	QWORD PTR [rsp-24], rdi
	mov	QWORD PTR [rsp-32], rsi
	mov	rax, QWORD PTR [rsp-24]
	mov	QWORD PTR [rsp-8], rax
.L325:
	mov	rdx, QWORD PTR [rsp-32]
	lea	rax, [rdx+4]
	mov	QWORD PTR [rsp-32], rax
	mov	rax, QWORD PTR [rsp-8]
	lea	rcx, [rax+4]
	mov	QWORD PTR [rsp-8], rcx
	mov	edx, DWORD PTR [rdx]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jne	.L325
	mov	rax, QWORD PTR [rsp-24]
	ret
	.cfi_endproc
.LFE61:
	.size	wcscpy, .-wcscpy
	.globl	wcslen
	.type	wcslen, @function
wcslen:
.LFB62:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	mov	rax, QWORD PTR [rsp-24]
	mov	QWORD PTR [rsp-8], rax
	jmp	.L328
.L329:
	add	QWORD PTR [rsp-8], 4
.L328:
	mov	rax, QWORD PTR [rsp-8]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jne	.L329
	mov	rax, QWORD PTR [rsp-8]
	sub	rax, QWORD PTR [rsp-24]
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
	mov	QWORD PTR [rsp-8], rdi
	mov	QWORD PTR [rsp-16], rsi
	mov	QWORD PTR [rsp-24], rdx
	jmp	.L332
.L334:
	sub	QWORD PTR [rsp-24], 1
	add	QWORD PTR [rsp-8], 4
	add	QWORD PTR [rsp-16], 4
.L332:
	cmp	QWORD PTR [rsp-24], 0
	je	.L333
	mov	rax, QWORD PTR [rsp-8]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rsp-16]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jne	.L333
	mov	rax, QWORD PTR [rsp-8]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L333
	mov	rax, QWORD PTR [rsp-16]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jne	.L334
.L333:
	cmp	QWORD PTR [rsp-24], 0
	je	.L335
	mov	rax, QWORD PTR [rsp-8]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rsp-16]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jl	.L336
	mov	rax, QWORD PTR [rsp-8]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rsp-16]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	setg	al
	movzx	eax, al
	ret
.L336:
	mov	eax, -1
	ret
.L335:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	DWORD PTR [rsp-12], esi
	mov	QWORD PTR [rsp-24], rdx
	jmp	.L341
.L343:
	sub	QWORD PTR [rsp-24], 1
	add	QWORD PTR [rsp-8], 4
.L341:
	cmp	QWORD PTR [rsp-24], 0
	je	.L342
	mov	rax, QWORD PTR [rsp-8]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR [rsp-12], eax
	jne	.L343
.L342:
	cmp	QWORD PTR [rsp-24], 0
	je	.L344
	mov	rax, QWORD PTR [rsp-8]
	ret
.L344:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE64:
	.size	wmemchr, .-wmemchr
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	QWORD PTR [rsp-16], rsi
	mov	QWORD PTR [rsp-24], rdx
	jmp	.L348
.L350:
	sub	QWORD PTR [rsp-24], 1
	add	QWORD PTR [rsp-8], 4
	add	QWORD PTR [rsp-16], 4
.L348:
	cmp	QWORD PTR [rsp-24], 0
	je	.L349
	mov	rax, QWORD PTR [rsp-8]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rsp-16]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	je	.L350
.L349:
	cmp	QWORD PTR [rsp-24], 0
	je	.L351
	mov	rax, QWORD PTR [rsp-8]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rsp-16]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jl	.L352
	mov	rax, QWORD PTR [rsp-8]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR [rsp-16]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	setg	al
	movzx	eax, al
	ret
.L352:
	mov	eax, -1
	ret
.L351:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	mov	QWORD PTR [rsp-32], rsi
	mov	QWORD PTR [rsp-40], rdx
	mov	rax, QWORD PTR [rsp-24]
	mov	QWORD PTR [rsp-8], rax
	jmp	.L357
.L358:
	mov	rdx, QWORD PTR [rsp-32]
	lea	rax, [rdx+4]
	mov	QWORD PTR [rsp-32], rax
	mov	rax, QWORD PTR [rsp-8]
	lea	rcx, [rax+4]
	mov	QWORD PTR [rsp-8], rcx
	mov	edx, DWORD PTR [rdx]
	mov	DWORD PTR [rax], edx
.L357:
	mov	rax, QWORD PTR [rsp-40]
	lea	rdx, [rax-1]
	mov	QWORD PTR [rsp-40], rdx
	test	rax, rax
	jne	.L358
	mov	rax, QWORD PTR [rsp-24]
	ret
	.cfi_endproc
.LFE66:
	.size	wmemcpy, .-wmemcpy
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	mov	QWORD PTR [rsp-32], rsi
	mov	QWORD PTR [rsp-40], rdx
	mov	rax, QWORD PTR [rsp-24]
	cmp	rax, QWORD PTR [rsp-32]
	jne	.L361
	mov	rax, QWORD PTR [rsp-24]
	ret
.L361:
	mov	rdx, QWORD PTR [rsp-24]
	mov	rax, QWORD PTR [rsp-32]
	sub	rdx, rax
	mov	rax, QWORD PTR [rsp-40]
	sal	rax, 2
	cmp	rdx, rax
	jnb	.L363
	jmp	.L364
.L365:
	mov	rax, QWORD PTR [rsp-40]
	lea	rdx, [0+rax*4]
	mov	rax, QWORD PTR [rsp-32]
	add	rax, rdx
	mov	rdx, QWORD PTR [rsp-40]
	lea	rcx, [0+rdx*4]
	mov	rdx, QWORD PTR [rsp-24]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
.L364:
	mov	rax, QWORD PTR [rsp-40]
	lea	rdx, [rax-1]
	mov	QWORD PTR [rsp-40], rdx
	test	rax, rax
	jne	.L365
	jmp	.L366
.L363:
	mov	rax, QWORD PTR [rsp-24]
	mov	QWORD PTR [rsp-8], rax
	jmp	.L367
.L368:
	mov	rdx, QWORD PTR [rsp-32]
	lea	rax, [rdx+4]
	mov	QWORD PTR [rsp-32], rax
	mov	rax, QWORD PTR [rsp-8]
	lea	rcx, [rax+4]
	mov	QWORD PTR [rsp-8], rcx
	mov	edx, DWORD PTR [rdx]
	mov	DWORD PTR [rax], edx
.L367:
	mov	rax, QWORD PTR [rsp-40]
	lea	rdx, [rax-1]
	mov	QWORD PTR [rsp-40], rdx
	test	rax, rax
	jne	.L368
.L366:
	mov	rax, QWORD PTR [rsp-24]
	ret
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	mov	DWORD PTR [rsp-28], esi
	mov	QWORD PTR [rsp-40], rdx
	mov	rax, QWORD PTR [rsp-24]
	mov	QWORD PTR [rsp-8], rax
	jmp	.L370
.L371:
	mov	rax, QWORD PTR [rsp-8]
	lea	rdx, [rax+4]
	mov	QWORD PTR [rsp-8], rdx
	mov	edx, DWORD PTR [rsp-28]
	mov	DWORD PTR [rax], edx
.L370:
	mov	rax, QWORD PTR [rsp-40]
	lea	rdx, [rax-1]
	mov	QWORD PTR [rsp-40], rdx
	test	rax, rax
	jne	.L371
	mov	rax, QWORD PTR [rsp-24]
	ret
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	mov	QWORD PTR [rsp-32], rsi
	mov	QWORD PTR [rsp-40], rdx
	mov	rax, QWORD PTR [rsp-24]
	cmp	rax, QWORD PTR [rsp-32]
	jnb	.L374
	mov	rdx, QWORD PTR [rsp-24]
	mov	rax, QWORD PTR [rsp-40]
	add	rax, rdx
	mov	QWORD PTR [rsp-8], rax
	mov	rdx, QWORD PTR [rsp-32]
	mov	rax, QWORD PTR [rsp-40]
	add	rax, rdx
	mov	QWORD PTR [rsp-16], rax
	jmp	.L375
.L376:
	sub	QWORD PTR [rsp-8], 1
	sub	QWORD PTR [rsp-16], 1
	mov	rax, QWORD PTR [rsp-8]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rsp-16]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR [rsp-40], 1
.L375:
	cmp	QWORD PTR [rsp-40], 0
	jne	.L376
	ret
.L374:
	mov	rax, QWORD PTR [rsp-24]
	cmp	rax, QWORD PTR [rsp-32]
	je	.L373
	jmp	.L378
.L379:
	mov	rdx, QWORD PTR [rsp-24]
	lea	rax, [rdx+1]
	mov	QWORD PTR [rsp-24], rax
	mov	rax, QWORD PTR [rsp-32]
	lea	rcx, [rax+1]
	mov	QWORD PTR [rsp-32], rcx
	movzx	edx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR [rsp-40], 1
.L378:
	cmp	QWORD PTR [rsp-40], 0
	jne	.L379
.L373:
	ret
	.cfi_endproc
.LFE69:
	.size	bcopy, .-bcopy
	.globl	rotl64
	.type	rotl64, @function
rotl64:
.LFB70:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	DWORD PTR [rsp-12], esi
	mov	eax, DWORD PTR [rsp-12]
	mov	rdx, QWORD PTR [rsp-8]
	mov	ecx, eax
	rol	rdx, cl
	mov	rax, rdx
	ret
	.cfi_endproc
.LFE70:
	.size	rotl64, .-rotl64
	.globl	rotr64
	.type	rotr64, @function
rotr64:
.LFB71:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	DWORD PTR [rsp-12], esi
	mov	eax, DWORD PTR [rsp-12]
	mov	rdx, QWORD PTR [rsp-8]
	mov	ecx, eax
	ror	rdx, cl
	mov	rax, rdx
	ret
	.cfi_endproc
.LFE71:
	.size	rotr64, .-rotr64
	.globl	rotl32
	.type	rotl32, @function
rotl32:
.LFB72:
	.cfi_startproc
	mov	DWORD PTR [rsp-4], edi
	mov	DWORD PTR [rsp-8], esi
	mov	eax, DWORD PTR [rsp-8]
	mov	edx, DWORD PTR [rsp-4]
	mov	ecx, eax
	rol	edx, cl
	mov	eax, edx
	ret
	.cfi_endproc
.LFE72:
	.size	rotl32, .-rotl32
	.globl	rotr32
	.type	rotr32, @function
rotr32:
.LFB73:
	.cfi_startproc
	mov	DWORD PTR [rsp-4], edi
	mov	DWORD PTR [rsp-8], esi
	mov	eax, DWORD PTR [rsp-8]
	mov	edx, DWORD PTR [rsp-4]
	mov	ecx, eax
	ror	edx, cl
	mov	eax, edx
	ret
	.cfi_endproc
.LFE73:
	.size	rotr32, .-rotr32
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB74:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	DWORD PTR [rsp-12], esi
	mov	eax, DWORD PTR [rsp-12]
	mov	rdx, QWORD PTR [rsp-8]
	mov	rsi, rdx
	mov	ecx, eax
	sal	rsi, cl
	mov	eax, DWORD PTR [rsp-12]
	mov	edx, 64
	sub	edx, eax
	mov	rax, QWORD PTR [rsp-8]
	mov	ecx, edx
	shr	rax, cl
	or	rax, rsi
	ret
	.cfi_endproc
.LFE74:
	.size	rotl_sz, .-rotl_sz
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB75:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	DWORD PTR [rsp-12], esi
	mov	eax, DWORD PTR [rsp-12]
	mov	rdx, QWORD PTR [rsp-8]
	mov	rsi, rdx
	mov	ecx, eax
	shr	rsi, cl
	mov	eax, DWORD PTR [rsp-12]
	mov	edx, 64
	sub	edx, eax
	mov	rax, QWORD PTR [rsp-8]
	mov	ecx, edx
	sal	rax, cl
	or	rax, rsi
	ret
	.cfi_endproc
.LFE75:
	.size	rotr_sz, .-rotr_sz
	.globl	rotl16
	.type	rotl16, @function
rotl16:
.LFB76:
	.cfi_startproc
	mov	eax, edi
	mov	DWORD PTR [rsp-8], esi
	mov	WORD PTR [rsp-4], ax
	movzx	edx, WORD PTR [rsp-4]
	mov	eax, DWORD PTR [rsp-8]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	esi, eax
	movzx	edx, WORD PTR [rsp-4]
	mov	eax, 16
	sub	eax, DWORD PTR [rsp-8]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, esi
	ret
	.cfi_endproc
.LFE76:
	.size	rotl16, .-rotl16
	.globl	rotr16
	.type	rotr16, @function
rotr16:
.LFB77:
	.cfi_startproc
	mov	eax, edi
	mov	DWORD PTR [rsp-8], esi
	mov	WORD PTR [rsp-4], ax
	movzx	edx, WORD PTR [rsp-4]
	mov	eax, DWORD PTR [rsp-8]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	esi, eax
	movzx	edx, WORD PTR [rsp-4]
	mov	eax, 16
	sub	eax, DWORD PTR [rsp-8]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	or	eax, esi
	ret
	.cfi_endproc
.LFE77:
	.size	rotr16, .-rotr16
	.globl	rotl8
	.type	rotl8, @function
rotl8:
.LFB78:
	.cfi_startproc
	mov	eax, edi
	mov	DWORD PTR [rsp-8], esi
	mov	BYTE PTR [rsp-4], al
	movzx	edx, BYTE PTR [rsp-4]
	mov	eax, DWORD PTR [rsp-8]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	esi, eax
	movzx	edx, BYTE PTR [rsp-4]
	mov	eax, 8
	sub	eax, DWORD PTR [rsp-8]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, esi
	ret
	.cfi_endproc
.LFE78:
	.size	rotl8, .-rotl8
	.globl	rotr8
	.type	rotr8, @function
rotr8:
.LFB79:
	.cfi_startproc
	mov	eax, edi
	mov	DWORD PTR [rsp-8], esi
	mov	BYTE PTR [rsp-4], al
	movzx	edx, BYTE PTR [rsp-4]
	mov	eax, DWORD PTR [rsp-8]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	esi, eax
	movzx	edx, BYTE PTR [rsp-4]
	mov	eax, 8
	sub	eax, DWORD PTR [rsp-8]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	or	eax, esi
	ret
	.cfi_endproc
.LFE79:
	.size	rotr8, .-rotr8
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB80:
	.cfi_startproc
	mov	eax, edi
	mov	WORD PTR [rsp-20], ax
	mov	QWORD PTR [rsp-8], 255
	movzx	edx, WORD PTR [rsp-20]
	mov	rax, QWORD PTR [rsp-8]
	sal	rax, 8
	and	rax, rdx
	shr	rax, 8
	mov	edx, eax
	mov	rax, QWORD PTR [rsp-8]
	and	ax, WORD PTR [rsp-20]
	sal	eax, 8
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
	mov	DWORD PTR [rsp-20], edi
	mov	QWORD PTR [rsp-8], 255
	mov	edx, DWORD PTR [rsp-20]
	mov	rax, QWORD PTR [rsp-8]
	sal	rax, 24
	and	rax, rdx
	shr	rax, 24
	mov	ecx, eax
	mov	edx, DWORD PTR [rsp-20]
	mov	rax, QWORD PTR [rsp-8]
	sal	rax, 16
	and	rax, rdx
	shr	rax, 8
	or	ecx, eax
	mov	edx, ecx
	mov	rax, QWORD PTR [rsp-8]
	sal	eax, 8
	and	eax, DWORD PTR [rsp-20]
	sal	eax, 8
	or	edx, eax
	mov	rax, QWORD PTR [rsp-8]
	and	eax, DWORD PTR [rsp-20]
	sal	eax, 24
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
	mov	QWORD PTR [rsp-24], rdi
	mov	QWORD PTR [rsp-8], 255
	mov	rax, QWORD PTR [rsp-8]
	sal	rax, 56
	and	rax, QWORD PTR [rsp-24]
	shr	rax, 56
	mov	rdx, rax
	mov	rax, QWORD PTR [rsp-8]
	sal	rax, 48
	and	rax, QWORD PTR [rsp-24]
	shr	rax, 40
	or	rdx, rax
	mov	rax, QWORD PTR [rsp-8]
	sal	rax, 40
	and	rax, QWORD PTR [rsp-24]
	shr	rax, 24
	or	rdx, rax
	mov	rax, QWORD PTR [rsp-8]
	sal	rax, 32
	and	rax, QWORD PTR [rsp-24]
	shr	rax, 8
	or	rdx, rax
	mov	rax, QWORD PTR [rsp-8]
	sal	rax, 24
	and	rax, QWORD PTR [rsp-24]
	sal	rax, 8
	or	rdx, rax
	mov	rax, QWORD PTR [rsp-8]
	sal	rax, 16
	and	rax, QWORD PTR [rsp-24]
	sal	rax, 24
	or	rdx, rax
	mov	rax, QWORD PTR [rsp-8]
	sal	rax, 8
	and	rax, QWORD PTR [rsp-24]
	sal	rax, 40
	or	rdx, rax
	mov	rax, QWORD PTR [rsp-24]
	and	rax, QWORD PTR [rsp-8]
	sal	rax, 56
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
	mov	DWORD PTR [rsp-20], edi
	mov	DWORD PTR [rsp-4], 0
	jmp	.L408
.L411:
	mov	edx, DWORD PTR [rsp-20]
	mov	eax, DWORD PTR [rsp-4]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	and	eax, 1
	je	.L409
	mov	eax, DWORD PTR [rsp-4]
	add	eax, 1
	ret
.L409:
	add	DWORD PTR [rsp-4], 1
.L408:
	cmp	DWORD PTR [rsp-4], 31
	jbe	.L411
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
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	test	edi, edi
	jne	.L413
	mov	ebx, 0
	jmp	.L414
.L413:
	mov	eax, edi
	mov	ebx, 1
	jmp	.L415
.L416:
	sar	eax
	add	ebx, 1
.L415:
	mov	edx, eax
	and	edx, 1
	je	.L416
.L414:
	mov	eax, ebx
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs, .-libiberty_ffs
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB85:
	.cfi_startproc
	movss	DWORD PTR [rsp-4], xmm0
	movss	xmm0, DWORD PTR .LC3[rip]
	comiss	xmm0, DWORD PTR [rsp-4]
	ja	.L419
	movss	xmm0, DWORD PTR [rsp-4]
	comiss	xmm0, DWORD PTR .LC4[rip]
	jbe	.L424
.L419:
	mov	eax, 1
	ret
.L424:
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
	movsd	QWORD PTR [rsp-8], xmm0
	movsd	xmm0, QWORD PTR .LC5[rip]
	comisd	xmm0, QWORD PTR [rsp-8]
	ja	.L426
	movsd	xmm0, QWORD PTR [rsp-8]
	comisd	xmm0, QWORD PTR .LC6[rip]
	jbe	.L431
.L426:
	mov	eax, 1
	ret
.L431:
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
	fld	TBYTE PTR [rsp+8]
	fld	TBYTE PTR .LC7[rip]
	fcomip	st, st(1)
	fstp	st(0)
	ja	.L433
	fld	TBYTE PTR .LC8[rip]
	fld	TBYTE PTR [rsp+8]
	fcomip	st, st(1)
	fstp	st(0)
	jbe	.L438
.L433:
	mov	eax, 1
	ret
.L438:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE87:
	.size	gl_isinfl, .-gl_isinfl
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB88:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rdi
	mov	DWORD PTR [rsp-20], esi
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, DWORD PTR [rsp-20]
	movsd	QWORD PTR [rsp-32], xmm0
	fld	QWORD PTR [rsp-32]
	mov	rax, QWORD PTR [rsp-16]
	fstp	TBYTE PTR [rax]
	nop
	ret
	.cfi_endproc
.LFE88:
	.size	_Qp_itoq, .-_Qp_itoq
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB89:
	.cfi_startproc
	movss	DWORD PTR [rsp-20], xmm0
	mov	DWORD PTR [rsp-24], edi
	movss	xmm0, DWORD PTR [rsp-20]
	ucomiss	xmm0, DWORD PTR [rsp-20]
	jp	.L441
	movss	xmm0, DWORD PTR [rsp-20]
	addss	xmm0, xmm0
	ucomiss	xmm0, DWORD PTR [rsp-20]
	jp	.L449
	ucomiss	xmm0, DWORD PTR [rsp-20]
	je	.L441
.L449:
	cmp	DWORD PTR [rsp-24], 0
	jns	.L443
	movss	xmm0, DWORD PTR .LC9[rip]
	jmp	.L444
.L443:
	movss	xmm0, DWORD PTR .LC10[rip]
.L444:
	movss	DWORD PTR [rsp-4], xmm0
.L447:
	mov	eax, DWORD PTR [rsp-24]
	and	eax, 1
	je	.L445
	movss	xmm0, DWORD PTR [rsp-20]
	mulss	xmm0, DWORD PTR [rsp-4]
	movss	DWORD PTR [rsp-20], xmm0
.L445:
	mov	eax, DWORD PTR [rsp-24]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [rsp-24], eax
	cmp	DWORD PTR [rsp-24], 0
	je	.L441
	movss	xmm0, DWORD PTR [rsp-4]
	mulss	xmm0, xmm0
	movss	DWORD PTR [rsp-4], xmm0
	jmp	.L447
.L441:
	mov	eax, DWORD PTR [rsp-20]
	movd	xmm0, eax
	ret
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB90:
	.cfi_startproc
	movsd	QWORD PTR [rsp-24], xmm0
	mov	DWORD PTR [rsp-28], edi
	movsd	xmm0, QWORD PTR [rsp-24]
	ucomisd	xmm0, QWORD PTR [rsp-24]
	jp	.L452
	movsd	xmm0, QWORD PTR [rsp-24]
	addsd	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR [rsp-24]
	jp	.L460
	ucomisd	xmm0, QWORD PTR [rsp-24]
	je	.L452
.L460:
	cmp	DWORD PTR [rsp-28], 0
	jns	.L454
	movsd	xmm0, QWORD PTR .LC11[rip]
	jmp	.L455
.L454:
	movsd	xmm0, QWORD PTR .LC12[rip]
.L455:
	movsd	QWORD PTR [rsp-8], xmm0
.L458:
	mov	eax, DWORD PTR [rsp-28]
	and	eax, 1
	je	.L456
	movsd	xmm0, QWORD PTR [rsp-24]
	mulsd	xmm0, QWORD PTR [rsp-8]
	movsd	QWORD PTR [rsp-24], xmm0
.L456:
	mov	eax, DWORD PTR [rsp-28]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [rsp-28], eax
	cmp	DWORD PTR [rsp-28], 0
	je	.L452
	movsd	xmm0, QWORD PTR [rsp-8]
	mulsd	xmm0, xmm0
	movsd	QWORD PTR [rsp-8], xmm0
	jmp	.L458
.L452:
	mov	rax, QWORD PTR [rsp-24]
	movq	xmm0, rax
	ret
	.cfi_endproc
.LFE90:
	.size	ldexp, .-ldexp
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB91:
	.cfi_startproc
	mov	DWORD PTR [rsp-28], edi
	fld	TBYTE PTR [rsp+8]
	fld	TBYTE PTR [rsp+8]
	fucomip	st, st(1)
	fstp	st(0)
	jp	.L463
	fld	TBYTE PTR [rsp+8]
	fadd	st, st(0)
	fld	TBYTE PTR [rsp+8]
	fucomip	st, st(1)
	jp	.L473
	fld	TBYTE PTR [rsp+8]
	fucomip	st, st(1)
	fstp	st(0)
	je	.L463
	jmp	.L471
.L473:
	fstp	st(0)
.L471:
	cmp	DWORD PTR [rsp-28], 0
	jns	.L465
	fld	TBYTE PTR .LC13[rip]
	jmp	.L466
.L465:
	fld	TBYTE PTR .LC14[rip]
.L466:
	fstp	TBYTE PTR [rsp-24]
.L469:
	mov	eax, DWORD PTR [rsp-28]
	and	eax, 1
	je	.L467
	fld	TBYTE PTR [rsp+8]
	fld	TBYTE PTR [rsp-24]
	fmulp	st(1), st
	fstp	TBYTE PTR [rsp+8]
.L467:
	mov	eax, DWORD PTR [rsp-28]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [rsp-28], eax
	cmp	DWORD PTR [rsp-28], 0
	je	.L463
	fld	TBYTE PTR [rsp-24]
	fmul	st, st(0)
	fstp	TBYTE PTR [rsp-24]
	jmp	.L469
.L463:
	fld	TBYTE PTR [rsp+8]
	ret
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	mov	QWORD PTR [rsp-32], rsi
	mov	QWORD PTR [rsp-40], rdx
	mov	rax, QWORD PTR [rsp-24]
	mov	QWORD PTR [rsp-8], rax
	jmp	.L475
.L476:
	mov	rax, QWORD PTR [rsp-32]
	lea	rdx, [rax+1]
	mov	QWORD PTR [rsp-32], rdx
	movzx	ecx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rsp-8]
	lea	rdx, [rax+1]
	mov	QWORD PTR [rsp-8], rdx
	movzx	edx, BYTE PTR [rax]
	xor	edx, ecx
	mov	BYTE PTR [rax], dl
	sub	QWORD PTR [rsp-40], 1
.L475:
	cmp	QWORD PTR [rsp-40], 0
	jne	.L476
	mov	rax, QWORD PTR [rsp-24]
	ret
	.cfi_endproc
.LFE92:
	.size	memxor, .-memxor
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB93:
	.cfi_startproc
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	QWORD PTR [rsp+16], rdi
	mov	QWORD PTR [rsp+8], rsi
	mov	QWORD PTR [rsp], rdx
	mov	rax, QWORD PTR [rsp+16]
	mov	rdi, rax
	call	strlen
	mov	rdx, QWORD PTR [rsp+16]
	add	rax, rdx
	mov	QWORD PTR [rsp+32], rax
	jmp	.L479
.L481:
	add	QWORD PTR [rsp+8], 1
	add	QWORD PTR [rsp+32], 1
	sub	QWORD PTR [rsp], 1
.L479:
	cmp	QWORD PTR [rsp], 0
	je	.L480
	mov	rax, QWORD PTR [rsp+8]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rsp+32]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR [rsp+32]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L481
.L480:
	cmp	QWORD PTR [rsp], 0
	jne	.L482
	mov	rax, QWORD PTR [rsp+32]
	mov	BYTE PTR [rax], 0
.L482:
	mov	rax, QWORD PTR [rsp+16]
	add	rsp, 40
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	strncat, .-strncat
	.globl	strnlen
	.type	strnlen, @function
strnlen:
.LFB94:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	mov	QWORD PTR [rsp-32], rsi
	mov	QWORD PTR [rsp-8], 0
	jmp	.L486
.L491:
	add	QWORD PTR [rsp-8], 1
.L486:
	mov	rax, QWORD PTR [rsp-8]
	cmp	rax, QWORD PTR [rsp-32]
	jnb	.L487
	mov	rdx, QWORD PTR [rsp-24]
	mov	rax, QWORD PTR [rsp-8]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L491
.L487:
	mov	rax, QWORD PTR [rsp-8]
	ret
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	mov	QWORD PTR [rsp-32], rsi
	jmp	.L493
.L497:
	mov	rax, QWORD PTR [rsp-32]
	mov	QWORD PTR [rsp-8], rax
	jmp	.L494
.L496:
	mov	rax, QWORD PTR [rsp-8]
	lea	rdx, [rax+1]
	mov	QWORD PTR [rsp-8], rdx
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rsp-24]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L494
	mov	rax, QWORD PTR [rsp-24]
	ret
.L494:
	mov	rax, QWORD PTR [rsp-8]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L496
	add	QWORD PTR [rsp-24], 1
.L493:
	mov	rax, QWORD PTR [rsp-24]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L497
	mov	eax, 0
	ret
	.cfi_endproc
.LFE95:
	.size	strpbrk, .-strpbrk
	.globl	strrchr
	.type	strrchr, @function
strrchr:
.LFB96:
	.cfi_startproc
	mov	rax, rdi
	mov	DWORD PTR [rsp-20], esi
	mov	QWORD PTR [rsp-8], 0
.L500:
	movzx	edx, BYTE PTR [rax]
	movsx	edx, dl
	cmp	DWORD PTR [rsp-20], edx
	jne	.L499
	mov	QWORD PTR [rsp-8], rax
.L499:
	mov	rdx, rax
	lea	rax, [rdx+1]
	movzx	edx, BYTE PTR [rdx]
	test	dl, dl
	jne	.L500
	mov	rax, QWORD PTR [rsp-8]
	ret
	.cfi_endproc
.LFE96:
	.size	strrchr, .-strrchr
	.globl	strstr
	.type	strstr, @function
strstr:
.LFB97:
	.cfi_startproc
	sub	rsp, 32
	.cfi_def_cfa_offset 40
	mov	QWORD PTR [rsp+8], rdi
	mov	QWORD PTR [rsp], rsi
	mov	rax, QWORD PTR [rsp]
	mov	rdi, rax
	call	strlen
	mov	QWORD PTR [rsp+24], rax
	cmp	QWORD PTR [rsp+24], 0
	jne	.L505
	mov	rax, QWORD PTR [rsp+8]
	jmp	.L504
.L507:
	mov	rdx, QWORD PTR [rsp+24]
	mov	rcx, QWORD PTR [rsp]
	mov	rax, QWORD PTR [rsp+16]
	mov	rsi, rcx
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	jne	.L506
	mov	rax, QWORD PTR [rsp+16]
	jmp	.L504
.L506:
	mov	rax, QWORD PTR [rsp+16]
	add	rax, 1
	mov	QWORD PTR [rsp+8], rax
.L505:
	mov	rax, QWORD PTR [rsp]
	movzx	eax, BYTE PTR [rax]
	movsx	edx, al
	mov	rax, QWORD PTR [rsp+8]
	mov	esi, edx
	mov	rdi, rax
	call	strchr
	mov	QWORD PTR [rsp+16], rax
	cmp	QWORD PTR [rsp+16], 0
	jne	.L507
	mov	eax, 0
.L504:
	add	rsp, 32
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	strstr, .-strstr
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
	movsd	QWORD PTR [rsp-8], xmm0
	movsd	QWORD PTR [rsp-16], xmm1
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR [rsp-8]
	jbe	.L510
	movsd	xmm0, QWORD PTR [rsp-16]
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	ja	.L512
.L510:
	movsd	xmm0, QWORD PTR [rsp-8]
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	jbe	.L513
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR [rsp-16]
	jbe	.L513
.L512:
	movsd	xmm0, QWORD PTR [rsp-8]
	movq	xmm1, QWORD PTR .LC15[rip]
	xorpd	xmm0, xmm1
	movq	rax, xmm0
	jmp	.L516
.L513:
	mov	rax, QWORD PTR [rsp-8]
.L516:
	movq	xmm0, rax
	ret
	.cfi_endproc
.LFE98:
	.size	copysign, .-copysign
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB99:
	.cfi_startproc
	sub	rsp, 48
	.cfi_def_cfa_offset 56
	mov	QWORD PTR [rsp+24], rdi
	mov	QWORD PTR [rsp+16], rsi
	mov	QWORD PTR [rsp+8], rdx
	mov	QWORD PTR [rsp], rcx
	mov	rax, QWORD PTR [rsp+16]
	sub	rax, QWORD PTR [rsp]
	mov	rdx, rax
	mov	rax, QWORD PTR [rsp+24]
	add	rax, rdx
	mov	QWORD PTR [rsp+40], rax
	cmp	QWORD PTR [rsp], 0
	jne	.L520
	mov	rax, QWORD PTR [rsp+24]
	jmp	.L521
.L520:
	mov	rax, QWORD PTR [rsp+16]
	cmp	rax, QWORD PTR [rsp]
	setb	al
	movzx	eax, al
	test	rax, rax
	je	.L523
	mov	eax, 0
	jmp	.L521
.L525:
	mov	rax, QWORD PTR [rsp+24]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR [rsp+8]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	jne	.L524
	mov	rax, QWORD PTR [rsp]
	lea	rdx, [rax-1]
	mov	rax, QWORD PTR [rsp+8]
	lea	rcx, [rax+1]
	mov	rax, QWORD PTR [rsp+24]
	add	rax, 1
	mov	rsi, rcx
	mov	rdi, rax
	call	memcmp
	test	eax, eax
	jne	.L524
	mov	rax, QWORD PTR [rsp+24]
	jmp	.L521
.L524:
	add	QWORD PTR [rsp+24], 1
.L523:
	mov	rax, QWORD PTR [rsp+24]
	cmp	QWORD PTR [rsp+40], rax
	jnb	.L525
	mov	eax, 0
.L521:
	add	rsp, 48
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE99:
	.size	memmem, .-memmem
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB100:
	.cfi_startproc
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	QWORD PTR [rsp+16], rdi
	mov	QWORD PTR [rsp+8], rsi
	mov	QWORD PTR [rsp], rdx
	mov	rdx, QWORD PTR [rsp]
	mov	rcx, QWORD PTR [rsp+8]
	mov	rax, QWORD PTR [rsp+16]
	mov	rsi, rcx
	mov	rdi, rax
	call	memcpy
	mov	rdx, QWORD PTR [rsp]
	add	rax, rdx
	add	rsp, 24
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	mempcpy, .-mempcpy
	.globl	frexp
	.type	frexp, @function
frexp:
.LFB101:
	.cfi_startproc
	movsd	QWORD PTR [rsp-24], xmm0
	mov	QWORD PTR [rsp-32], rdi
	mov	DWORD PTR [rsp-8], 0
	mov	DWORD PTR [rsp-4], 0
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR [rsp-24]
	jbe	.L531
	movsd	xmm0, QWORD PTR [rsp-24]
	movq	xmm1, QWORD PTR .LC15[rip]
	xorpd	xmm0, xmm1
	movsd	QWORD PTR [rsp-24], xmm0
	mov	DWORD PTR [rsp-4], 1
.L531:
	movsd	xmm0, QWORD PTR [rsp-24]
	movsd	xmm1, QWORD PTR .LC16[rip]
	comisd	xmm0, xmm1
	jb	.L548
	jmp	.L535
.L536:
	add	DWORD PTR [rsp-8], 1
	movsd	xmm0, QWORD PTR [rsp-24]
	movsd	xmm1, QWORD PTR .LC12[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR [rsp-24], xmm0
.L535:
	movsd	xmm0, QWORD PTR [rsp-24]
	movsd	xmm1, QWORD PTR .LC16[rip]
	comisd	xmm0, xmm1
	jnb	.L536
	jmp	.L537
.L548:
	movsd	xmm0, QWORD PTR .LC11[rip]
	comisd	xmm0, QWORD PTR [rsp-24]
	jbe	.L537
	pxor	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR [rsp-24]
	jp	.L540
	pxor	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR [rsp-24]
	je	.L537
	jmp	.L540
.L541:
	sub	DWORD PTR [rsp-8], 1
	movsd	xmm0, QWORD PTR [rsp-24]
	addsd	xmm0, xmm0
	movsd	QWORD PTR [rsp-24], xmm0
.L540:
	movsd	xmm0, QWORD PTR .LC11[rip]
	comisd	xmm0, QWORD PTR [rsp-24]
	ja	.L541
.L537:
	mov	rax, QWORD PTR [rsp-32]
	mov	edx, DWORD PTR [rsp-8]
	mov	DWORD PTR [rax], edx
	cmp	DWORD PTR [rsp-4], 0
	je	.L542
	movsd	xmm0, QWORD PTR [rsp-24]
	movq	xmm1, QWORD PTR .LC15[rip]
	xorpd	xmm0, xmm1
	movsd	QWORD PTR [rsp-24], xmm0
.L542:
	mov	rax, QWORD PTR [rsp-24]
	movq	xmm0, rax
	ret
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	mov	QWORD PTR [rsp-32], rsi
	mov	QWORD PTR [rsp-8], 0
	mov	rax, QWORD PTR [rsp-24]
	mov	QWORD PTR [rsp-16], rax
	jmp	.L550
.L552:
	mov	rax, QWORD PTR [rsp-16]
	and	eax, 1
	je	.L551
	mov	rax, QWORD PTR [rsp-32]
	add	QWORD PTR [rsp-8], rax
.L551:
	sal	QWORD PTR [rsp-32]
	shr	QWORD PTR [rsp-16]
.L550:
	cmp	QWORD PTR [rsp-16], 0
	jne	.L552
	mov	rax, QWORD PTR [rsp-8]
	ret
	.cfi_endproc
.LFE102:
	.size	__muldi3, .-__muldi3
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB103:
	.cfi_startproc
	mov	DWORD PTR [rsp-20], edi
	mov	DWORD PTR [rsp-24], esi
	mov	QWORD PTR [rsp-32], rdx
	mov	DWORD PTR [rsp-4], 1
	mov	DWORD PTR [rsp-8], 0
	jmp	.L555
.L557:
	sal	DWORD PTR [rsp-24]
	sal	DWORD PTR [rsp-4]
.L555:
	mov	eax, DWORD PTR [rsp-24]
	cmp	eax, DWORD PTR [rsp-20]
	jnb	.L558
	cmp	DWORD PTR [rsp-4], 0
	je	.L558
	mov	eax, DWORD PTR [rsp-24]
	test	eax, eax
	jns	.L557
	jmp	.L558
.L560:
	mov	eax, DWORD PTR [rsp-20]
	cmp	eax, DWORD PTR [rsp-24]
	jb	.L559
	mov	eax, DWORD PTR [rsp-24]
	sub	DWORD PTR [rsp-20], eax
	mov	eax, DWORD PTR [rsp-4]
	or	DWORD PTR [rsp-8], eax
.L559:
	shr	DWORD PTR [rsp-4]
	shr	DWORD PTR [rsp-24]
.L558:
	cmp	DWORD PTR [rsp-4], 0
	jne	.L560
	cmp	QWORD PTR [rsp-32], 0
	je	.L561
	mov	eax, DWORD PTR [rsp-20]
	ret
.L561:
	mov	eax, DWORD PTR [rsp-8]
	ret
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	mov	eax, edi
	mov	BYTE PTR [rsp-20], al
	cmp	BYTE PTR [rsp-20], 0
	jns	.L564
	not	BYTE PTR [rsp-20]
.L564:
	cmp	BYTE PTR [rsp-20], 0
	jne	.L565
	mov	eax, 7
	ret
.L565:
	movsx	eax, BYTE PTR [rsp-20]
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	mov	DWORD PTR [rsp-4], eax
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, 1
	ret
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2, .-__clrsbqi2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	cmp	QWORD PTR [rsp-24], 0
	jns	.L568
	not	QWORD PTR [rsp-24]
.L568:
	cmp	QWORD PTR [rsp-24], 0
	jne	.L569
	mov	eax, 63
	ret
.L569:
	mov	rax, QWORD PTR [rsp-24]
	bsr	rax, rax
	xor	rax, 63
	mov	DWORD PTR [rsp-4], eax
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, 1
	ret
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2, .-__clrsbdi2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106:
	.cfi_startproc
	mov	DWORD PTR [rsp-20], edi
	mov	DWORD PTR [rsp-24], esi
	mov	DWORD PTR [rsp-4], 0
	jmp	.L572
.L574:
	mov	eax, DWORD PTR [rsp-20]
	and	eax, 1
	je	.L573
	mov	eax, DWORD PTR [rsp-24]
	add	DWORD PTR [rsp-4], eax
.L573:
	shr	DWORD PTR [rsp-20]
	sal	DWORD PTR [rsp-24]
.L572:
	cmp	DWORD PTR [rsp-20], 0
	jne	.L574
	mov	eax, DWORD PTR [rsp-4]
	ret
	.cfi_endproc
.LFE106:
	.size	__mulsi3, .-__mulsi3
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	mov	QWORD PTR [rsp-32], rsi
	mov	DWORD PTR [rsp-36], edx
	mov	eax, DWORD PTR [rsp-36]
	shr	eax, 3
	mov	DWORD PTR [rsp-12], eax
	mov	eax, DWORD PTR [rsp-36]
	and	eax, -8
	mov	DWORD PTR [rsp-8], eax
	mov	rax, QWORD PTR [rsp-24]
	cmp	rax, QWORD PTR [rsp-32]
	jb	.L577
	mov	edx, DWORD PTR [rsp-36]
	mov	rax, QWORD PTR [rsp-32]
	add	rax, rdx
	cmp	rax, QWORD PTR [rsp-24]
	jnb	.L584
.L577:
	mov	DWORD PTR [rsp-4], 0
	jmp	.L579
.L580:
	mov	eax, DWORD PTR [rsp-4]
	lea	rdx, [0+rax*8]
	mov	rax, QWORD PTR [rsp-32]
	add	rax, rdx
	mov	edx, DWORD PTR [rsp-4]
	lea	rcx, [0+rdx*8]
	mov	rdx, QWORD PTR [rsp-24]
	add	rdx, rcx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rdx], rax
	add	DWORD PTR [rsp-4], 1
.L579:
	mov	eax, DWORD PTR [rsp-4]
	cmp	eax, DWORD PTR [rsp-12]
	jb	.L580
	jmp	.L581
.L582:
	mov	edx, DWORD PTR [rsp-8]
	mov	rax, QWORD PTR [rsp-32]
	add	rax, rdx
	mov	ecx, DWORD PTR [rsp-8]
	mov	rdx, QWORD PTR [rsp-24]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	add	DWORD PTR [rsp-8], 1
.L581:
	mov	eax, DWORD PTR [rsp-36]
	cmp	DWORD PTR [rsp-8], eax
	jb	.L582
	jmp	.L583
.L585:
	mov	edx, DWORD PTR [rsp-36]
	mov	rax, QWORD PTR [rsp-32]
	add	rax, rdx
	mov	ecx, DWORD PTR [rsp-36]
	mov	rdx, QWORD PTR [rsp-24]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
.L584:
	mov	eax, DWORD PTR [rsp-36]
	lea	edx, [rax-1]
	mov	DWORD PTR [rsp-36], edx
	test	eax, eax
	jne	.L585
.L583:
	nop
	ret
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	mov	QWORD PTR [rsp-32], rsi
	mov	DWORD PTR [rsp-36], edx
	mov	eax, DWORD PTR [rsp-36]
	shr	eax
	mov	DWORD PTR [rsp-8], eax
	mov	rax, QWORD PTR [rsp-24]
	cmp	rax, QWORD PTR [rsp-32]
	jb	.L587
	mov	edx, DWORD PTR [rsp-36]
	mov	rax, QWORD PTR [rsp-32]
	add	rax, rdx
	cmp	rax, QWORD PTR [rsp-24]
	jnb	.L593
.L587:
	mov	DWORD PTR [rsp-4], 0
	jmp	.L589
.L590:
	mov	eax, DWORD PTR [rsp-4]
	lea	rdx, [rax+rax]
	mov	rax, QWORD PTR [rsp-32]
	add	rax, rdx
	mov	edx, DWORD PTR [rsp-4]
	lea	rcx, [rdx+rdx]
	mov	rdx, QWORD PTR [rsp-24]
	add	rdx, rcx
	movzx	eax, WORD PTR [rax]
	mov	WORD PTR [rdx], ax
	add	DWORD PTR [rsp-4], 1
.L589:
	mov	eax, DWORD PTR [rsp-4]
	cmp	eax, DWORD PTR [rsp-8]
	jb	.L590
	mov	eax, DWORD PTR [rsp-36]
	and	eax, 1
	je	.L592
	mov	eax, DWORD PTR [rsp-36]
	sub	eax, 1
	mov	edx, eax
	mov	rax, QWORD PTR [rsp-32]
	add	rax, rdx
	mov	edx, DWORD PTR [rsp-36]
	sub	edx, 1
	mov	ecx, edx
	mov	rdx, QWORD PTR [rsp-24]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	jmp	.L592
.L594:
	mov	edx, DWORD PTR [rsp-36]
	mov	rax, QWORD PTR [rsp-32]
	add	rax, rdx
	mov	ecx, DWORD PTR [rsp-36]
	mov	rdx, QWORD PTR [rsp-24]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
.L593:
	mov	eax, DWORD PTR [rsp-36]
	lea	edx, [rax-1]
	mov	DWORD PTR [rsp-36], edx
	test	eax, eax
	jne	.L594
.L592:
	nop
	ret
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	mov	QWORD PTR [rsp-32], rsi
	mov	DWORD PTR [rsp-36], edx
	mov	eax, DWORD PTR [rsp-36]
	shr	eax, 2
	mov	DWORD PTR [rsp-12], eax
	mov	eax, DWORD PTR [rsp-36]
	and	eax, -4
	mov	DWORD PTR [rsp-8], eax
	mov	rax, QWORD PTR [rsp-24]
	cmp	rax, QWORD PTR [rsp-32]
	jb	.L596
	mov	edx, DWORD PTR [rsp-36]
	mov	rax, QWORD PTR [rsp-32]
	add	rax, rdx
	cmp	rax, QWORD PTR [rsp-24]
	jnb	.L603
.L596:
	mov	DWORD PTR [rsp-4], 0
	jmp	.L598
.L599:
	mov	eax, DWORD PTR [rsp-4]
	lea	rdx, [0+rax*4]
	mov	rax, QWORD PTR [rsp-32]
	add	rax, rdx
	mov	edx, DWORD PTR [rsp-4]
	lea	rcx, [0+rdx*4]
	mov	rdx, QWORD PTR [rsp-24]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR [rsp-4], 1
.L598:
	mov	eax, DWORD PTR [rsp-4]
	cmp	eax, DWORD PTR [rsp-12]
	jb	.L599
	jmp	.L600
.L601:
	mov	edx, DWORD PTR [rsp-8]
	mov	rax, QWORD PTR [rsp-32]
	add	rax, rdx
	mov	ecx, DWORD PTR [rsp-8]
	mov	rdx, QWORD PTR [rsp-24]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	add	DWORD PTR [rsp-8], 1
.L600:
	mov	eax, DWORD PTR [rsp-36]
	cmp	DWORD PTR [rsp-8], eax
	jb	.L601
	jmp	.L602
.L604:
	mov	edx, DWORD PTR [rsp-36]
	mov	rax, QWORD PTR [rsp-32]
	add	rax, rdx
	mov	ecx, DWORD PTR [rsp-36]
	mov	rdx, QWORD PTR [rsp-24]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
.L603:
	mov	eax, DWORD PTR [rsp-36]
	lea	edx, [rax-1]
	mov	DWORD PTR [rsp-36], edx
	test	eax, eax
	jne	.L604
.L602:
	nop
	ret
	.cfi_endproc
.LFE109:
	.size	__cmovw, .-__cmovw
	.globl	__modi
	.type	__modi, @function
__modi:
.LFB110:
	.cfi_startproc
	mov	DWORD PTR [rsp-4], edi
	mov	DWORD PTR [rsp-8], esi
	mov	eax, DWORD PTR [rsp-4]
	cdq
	idiv	DWORD PTR [rsp-8]
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
	mov	DWORD PTR [rsp-4], edi
	mov	eax, DWORD PTR [rsp-4]
	test	rax, rax
	js	.L608
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	movq	rax, xmm1
	jmp	.L610
.L608:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdx
	addsd	xmm0, xmm0
	movq	rax, xmm0
.L610:
	movq	xmm0, rax
	ret
	.cfi_endproc
.LFE111:
	.size	__uitod, .-__uitod
	.globl	__uitof
	.type	__uitof, @function
__uitof:
.LFB112:
	.cfi_startproc
	mov	DWORD PTR [rsp-4], edi
	mov	eax, DWORD PTR [rsp-4]
	test	rax, rax
	js	.L612
	pxor	xmm1, xmm1
	cvtsi2ss	xmm1, rax
	movd	eax, xmm1
	jmp	.L614
.L612:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
	movd	eax, xmm0
.L614:
	movd	xmm0, eax
	ret
	.cfi_endproc
.LFE112:
	.size	__uitof, .-__uitof
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
.LFB113:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	rax, QWORD PTR [rsp-8]
	test	rax, rax
	js	.L616
	pxor	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	movq	rax, xmm1
	jmp	.L618
.L616:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdx
	addsd	xmm0, xmm0
	movq	rax, xmm0
.L618:
	movq	xmm0, rax
	ret
	.cfi_endproc
.LFE113:
	.size	__ulltod, .-__ulltod
	.globl	__ulltof
	.type	__ulltof, @function
__ulltof:
.LFB114:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	rax, QWORD PTR [rsp-8]
	test	rax, rax
	js	.L620
	pxor	xmm1, xmm1
	cvtsi2ss	xmm1, rax
	movd	eax, xmm1
	jmp	.L622
.L620:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
	movd	eax, xmm0
.L622:
	movd	xmm0, eax
	ret
	.cfi_endproc
.LFE114:
	.size	__ulltof, .-__ulltof
	.globl	__umodi
	.type	__umodi, @function
__umodi:
.LFB115:
	.cfi_startproc
	mov	DWORD PTR [rsp-4], edi
	mov	DWORD PTR [rsp-8], esi
	mov	eax, DWORD PTR [rsp-4]
	mov	edx, 0
	div	DWORD PTR [rsp-8]
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
	mov	eax, edi
	mov	WORD PTR [rsp-20], ax
	mov	DWORD PTR [rsp-4], 0
	jmp	.L626
.L629:
	movzx	edx, WORD PTR [rsp-20]
	mov	eax, 15
	sub	eax, DWORD PTR [rsp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	jne	.L628
	add	DWORD PTR [rsp-4], 1
.L626:
	cmp	DWORD PTR [rsp-4], 15
	jle	.L629
.L628:
	mov	eax, DWORD PTR [rsp-4]
	ret
	.cfi_endproc
.LFE116:
	.size	__clzhi2, .-__clzhi2
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117:
	.cfi_startproc
	mov	eax, edi
	mov	WORD PTR [rsp-20], ax
	mov	DWORD PTR [rsp-4], 0
	jmp	.L633
.L636:
	movzx	edx, WORD PTR [rsp-20]
	mov	eax, DWORD PTR [rsp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	jne	.L635
	add	DWORD PTR [rsp-4], 1
.L633:
	cmp	DWORD PTR [rsp-4], 15
	jle	.L636
.L635:
	mov	eax, DWORD PTR [rsp-4]
	ret
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
	movss	DWORD PTR [rsp-4], xmm0
	movss	xmm0, DWORD PTR [rsp-4]
	comiss	xmm0, DWORD PTR .LC17[rip]
	jb	.L644
	movss	xmm0, DWORD PTR [rsp-4]
	movss	xmm1, DWORD PTR .LC17[rip]
	subss	xmm0, xmm1
	cvttss2si	rax, xmm0
	add	rax, 32768
	ret
.L644:
	movss	xmm0, DWORD PTR [rsp-4]
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
	mov	eax, edi
	mov	WORD PTR [rsp-20], ax
	mov	DWORD PTR [rsp-8], 0
	mov	DWORD PTR [rsp-4], 0
	jmp	.L646
.L648:
	movzx	edx, WORD PTR [rsp-20]
	mov	eax, DWORD PTR [rsp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	je	.L647
	add	DWORD PTR [rsp-8], 1
.L647:
	add	DWORD PTR [rsp-4], 1
.L646:
	cmp	DWORD PTR [rsp-4], 15
	jle	.L648
	mov	eax, DWORD PTR [rsp-8]
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
	mov	eax, edi
	mov	WORD PTR [rsp-20], ax
	mov	DWORD PTR [rsp-8], 0
	mov	DWORD PTR [rsp-4], 0
	jmp	.L651
.L653:
	movzx	edx, WORD PTR [rsp-20]
	mov	eax, DWORD PTR [rsp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	je	.L652
	add	DWORD PTR [rsp-8], 1
.L652:
	add	DWORD PTR [rsp-4], 1
.L651:
	cmp	DWORD PTR [rsp-4], 15
	jle	.L653
	mov	eax, DWORD PTR [rsp-8]
	ret
	.cfi_endproc
.LFE120:
	.size	__popcounthi2, .-__popcounthi2
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB121:
	.cfi_startproc
	mov	DWORD PTR [rsp-20], edi
	mov	DWORD PTR [rsp-24], esi
	mov	DWORD PTR [rsp-4], 0
	jmp	.L656
.L658:
	mov	eax, DWORD PTR [rsp-20]
	and	eax, 1
	je	.L657
	mov	eax, DWORD PTR [rsp-24]
	add	DWORD PTR [rsp-4], eax
.L657:
	shr	DWORD PTR [rsp-20]
	sal	DWORD PTR [rsp-24]
.L656:
	cmp	DWORD PTR [rsp-20], 0
	jne	.L658
	mov	eax, DWORD PTR [rsp-4]
	ret
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	mov	DWORD PTR [rsp-20], edi
	mov	DWORD PTR [rsp-24], esi
	mov	DWORD PTR [rsp-4], 0
	cmp	DWORD PTR [rsp-20], 0
	jne	.L663
	mov	eax, 0
	ret
.L665:
	mov	eax, DWORD PTR [rsp-24]
	and	eax, 1
	je	.L664
	mov	eax, DWORD PTR [rsp-20]
	add	DWORD PTR [rsp-4], eax
.L664:
	sal	DWORD PTR [rsp-20]
	shr	DWORD PTR [rsp-24]
.L663:
	cmp	DWORD PTR [rsp-24], 0
	jne	.L665
	mov	eax, DWORD PTR [rsp-4]
	ret
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	mov	DWORD PTR [rsp-20], edi
	mov	DWORD PTR [rsp-24], esi
	mov	DWORD PTR [rsp-28], edx
	mov	DWORD PTR [rsp-4], 1
	mov	DWORD PTR [rsp-8], 0
	jmp	.L667
.L669:
	sal	DWORD PTR [rsp-24]
	sal	DWORD PTR [rsp-4]
.L667:
	mov	eax, DWORD PTR [rsp-24]
	cmp	eax, DWORD PTR [rsp-20]
	jnb	.L670
	cmp	DWORD PTR [rsp-4], 0
	je	.L670
	mov	eax, DWORD PTR [rsp-24]
	test	eax, eax
	jns	.L669
	jmp	.L670
.L672:
	mov	eax, DWORD PTR [rsp-20]
	cmp	eax, DWORD PTR [rsp-24]
	jb	.L671
	mov	eax, DWORD PTR [rsp-24]
	sub	DWORD PTR [rsp-20], eax
	mov	eax, DWORD PTR [rsp-4]
	or	DWORD PTR [rsp-8], eax
.L671:
	shr	DWORD PTR [rsp-4]
	shr	DWORD PTR [rsp-24]
.L670:
	cmp	DWORD PTR [rsp-4], 0
	jne	.L672
	cmp	DWORD PTR [rsp-28], 0
	je	.L673
	mov	eax, DWORD PTR [rsp-20]
	ret
.L673:
	mov	eax, DWORD PTR [rsp-8]
	ret
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4, .-__udivmodsi4
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	movss	DWORD PTR [rsp-4], xmm0
	movss	DWORD PTR [rsp-8], xmm1
	movss	xmm0, DWORD PTR [rsp-8]
	comiss	xmm0, DWORD PTR [rsp-4]
	jbe	.L683
	mov	eax, -1
	ret
.L683:
	movss	xmm0, DWORD PTR [rsp-4]
	comiss	xmm0, DWORD PTR [rsp-8]
	jbe	.L684
	mov	eax, 1
	ret
.L684:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	movsd	QWORD PTR [rsp-8], xmm0
	movsd	QWORD PTR [rsp-16], xmm1
	movsd	xmm0, QWORD PTR [rsp-16]
	comisd	xmm0, QWORD PTR [rsp-8]
	jbe	.L693
	mov	eax, -1
	ret
.L693:
	movsd	xmm0, QWORD PTR [rsp-8]
	comisd	xmm0, QWORD PTR [rsp-16]
	jbe	.L694
	mov	eax, 1
	ret
.L694:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB126:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	QWORD PTR [rsp-16], rsi
	mov	rax, QWORD PTR [rsp-8]
	imul	rax, QWORD PTR [rsp-16]
	ret
	.cfi_endproc
.LFE126:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB127:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	QWORD PTR [rsp-16], rsi
	mov	rax, QWORD PTR [rsp-8]
	imul	rax, QWORD PTR [rsp-16]
	ret
	.cfi_endproc
.LFE127:
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB128:
	.cfi_startproc
	mov	DWORD PTR [rsp-20], edi
	mov	DWORD PTR [rsp-24], esi
	mov	DWORD PTR [rsp-8], 0
	mov	DWORD PTR [rsp-12], 0
	cmp	DWORD PTR [rsp-24], 0
	jns	.L700
	neg	DWORD PTR [rsp-24]
	mov	DWORD PTR [rsp-8], 1
.L700:
	mov	BYTE PTR [rsp-1], 0
	jmp	.L701
.L704:
	mov	eax, DWORD PTR [rsp-24]
	and	eax, 1
	je	.L702
	mov	eax, DWORD PTR [rsp-20]
	add	DWORD PTR [rsp-12], eax
.L702:
	sal	DWORD PTR [rsp-20]
	sar	DWORD PTR [rsp-24]
	movzx	eax, BYTE PTR [rsp-1]
	add	eax, 1
	mov	BYTE PTR [rsp-1], al
.L701:
	cmp	DWORD PTR [rsp-24], 0
	je	.L703
	movzx	eax, BYTE PTR [rsp-1]
	cmp	al, 31
	jbe	.L704
.L703:
	cmp	DWORD PTR [rsp-8], 0
	je	.L705
	mov	eax, DWORD PTR [rsp-12]
	neg	eax
	ret
.L705:
	mov	eax, DWORD PTR [rsp-12]
	ret
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
	sub	rsp, 32
	.cfi_def_cfa_offset 40
	mov	QWORD PTR [rsp+8], rdi
	mov	QWORD PTR [rsp], rsi
	mov	DWORD PTR [rsp+28], 0
	cmp	QWORD PTR [rsp+8], 0
	jns	.L709
	neg	QWORD PTR [rsp+8]
	cmp	DWORD PTR [rsp+28], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR [rsp+28], eax
.L709:
	cmp	QWORD PTR [rsp], 0
	jns	.L710
	neg	QWORD PTR [rsp]
	cmp	DWORD PTR [rsp+28], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR [rsp+28], eax
.L710:
	mov	rax, QWORD PTR [rsp]
	mov	ecx, eax
	mov	rax, QWORD PTR [rsp+8]
	mov	edx, 0
	mov	esi, ecx
	mov	edi, eax
	call	__udivmodsi4
	mov	eax, eax
	mov	QWORD PTR [rsp+16], rax
	cmp	DWORD PTR [rsp+28], 0
	je	.L711
	neg	QWORD PTR [rsp+16]
.L711:
	mov	rax, QWORD PTR [rsp+16]
	add	rsp, 32
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
	sub	rsp, 32
	.cfi_def_cfa_offset 40
	mov	QWORD PTR [rsp+8], rdi
	mov	QWORD PTR [rsp], rsi
	mov	DWORD PTR [rsp+28], 0
	cmp	QWORD PTR [rsp+8], 0
	jns	.L715
	neg	QWORD PTR [rsp+8]
	mov	DWORD PTR [rsp+28], 1
.L715:
	cmp	QWORD PTR [rsp], 0
	jns	.L716
	neg	QWORD PTR [rsp]
.L716:
	mov	rax, QWORD PTR [rsp]
	mov	ecx, eax
	mov	rax, QWORD PTR [rsp+8]
	mov	edx, 1
	mov	esi, ecx
	mov	edi, eax
	call	__udivmodsi4
	mov	eax, eax
	mov	QWORD PTR [rsp+16], rax
	cmp	DWORD PTR [rsp+28], 0
	je	.L717
	neg	QWORD PTR [rsp+16]
.L717:
	mov	rax, QWORD PTR [rsp+16]
	add	rsp, 32
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	mov	ecx, edi
	mov	eax, esi
	mov	DWORD PTR [rsp-28], edx
	mov	edx, ecx
	mov	WORD PTR [rsp-20], dx
	mov	WORD PTR [rsp-24], ax
	mov	WORD PTR [rsp-2], 1
	mov	WORD PTR [rsp-4], 0
	jmp	.L721
.L723:
	sal	WORD PTR [rsp-24]
	sal	WORD PTR [rsp-2]
.L721:
	movzx	eax, WORD PTR [rsp-24]
	cmp	ax, WORD PTR [rsp-20]
	jnb	.L724
	cmp	WORD PTR [rsp-2], 0
	je	.L724
	movzx	eax, WORD PTR [rsp-24]
	test	ax, ax
	jns	.L723
	jmp	.L724
.L726:
	movzx	eax, WORD PTR [rsp-20]
	cmp	ax, WORD PTR [rsp-24]
	jb	.L725
	movzx	eax, WORD PTR [rsp-24]
	sub	WORD PTR [rsp-20], ax
	movzx	eax, WORD PTR [rsp-2]
	or	WORD PTR [rsp-4], ax
.L725:
	shr	WORD PTR [rsp-2]
	shr	WORD PTR [rsp-24]
.L724:
	cmp	WORD PTR [rsp-2], 0
	jne	.L726
	cmp	DWORD PTR [rsp-28], 0
	je	.L727
	movzx	eax, WORD PTR [rsp-20]
	ret
.L727:
	movzx	eax, WORD PTR [rsp-4]
	ret
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	mov	QWORD PTR [rsp-32], rsi
	mov	DWORD PTR [rsp-36], edx
	mov	QWORD PTR [rsp-8], 1
	mov	QWORD PTR [rsp-16], 0
	jmp	.L730
.L732:
	sal	QWORD PTR [rsp-32]
	sal	QWORD PTR [rsp-8]
.L730:
	mov	rax, QWORD PTR [rsp-32]
	cmp	rax, QWORD PTR [rsp-24]
	jnb	.L733
	cmp	QWORD PTR [rsp-8], 0
	je	.L733
	mov	rax, QWORD PTR [rsp-32]
	and	eax, 2147483648
	je	.L732
	jmp	.L733
.L735:
	mov	rax, QWORD PTR [rsp-24]
	cmp	rax, QWORD PTR [rsp-32]
	jb	.L734
	mov	rax, QWORD PTR [rsp-32]
	sub	QWORD PTR [rsp-24], rax
	mov	rax, QWORD PTR [rsp-8]
	or	QWORD PTR [rsp-16], rax
.L734:
	shr	QWORD PTR [rsp-8]
	shr	QWORD PTR [rsp-32]
.L733:
	cmp	QWORD PTR [rsp-8], 0
	jne	.L735
	cmp	DWORD PTR [rsp-36], 0
	je	.L736
	mov	rax, QWORD PTR [rsp-24]
	ret
.L736:
	mov	rax, QWORD PTR [rsp-16]
	ret
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133:
	.cfi_startproc
	mov	QWORD PTR [rsp-40], rdi
	mov	DWORD PTR [rsp-44], esi
	mov	DWORD PTR [rsp-4], 32
	mov	rax, QWORD PTR [rsp-40]
	mov	QWORD PTR [rsp-16], rax
	mov	eax, DWORD PTR [rsp-44]
	and	eax, DWORD PTR [rsp-4]
	je	.L739
	mov	DWORD PTR [rsp-24], 0
	mov	edx, DWORD PTR [rsp-16]
	mov	eax, DWORD PTR [rsp-44]
	sub	eax, DWORD PTR [rsp-4]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rsp-20], eax
	jmp	.L740
.L739:
	cmp	DWORD PTR [rsp-44], 0
	jne	.L741
	mov	rax, QWORD PTR [rsp-40]
	ret
.L741:
	mov	edx, DWORD PTR [rsp-16]
	mov	eax, DWORD PTR [rsp-44]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rsp-24], eax
	mov	eax, DWORD PTR [rsp-12]
	mov	edx, eax
	mov	eax, DWORD PTR [rsp-44]
	mov	esi, edx
	mov	ecx, eax
	sal	esi, cl
	mov	edx, DWORD PTR [rsp-16]
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, DWORD PTR [rsp-44]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, esi
	mov	DWORD PTR [rsp-20], eax
.L740:
	mov	rax, QWORD PTR [rsp-24]
	ret
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.globl	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rax, rdi
	mov	rcx, rdi
	mov	ebx, 0
	mov	rbx, rsi
	mov	QWORD PTR [rsp-64], rcx
	mov	QWORD PTR [rsp-56], rbx
	mov	DWORD PTR [rsp-68], edx
	mov	DWORD PTR [rsp-4], 64
	mov	rax, QWORD PTR [rsp-64]
	mov	rdx, QWORD PTR [rsp-56]
	mov	QWORD PTR [rsp-32], rax
	mov	QWORD PTR [rsp-24], rdx
	mov	eax, DWORD PTR [rsp-68]
	and	eax, DWORD PTR [rsp-4]
	je	.L745
	mov	QWORD PTR [rsp-48], 0
	mov	rdx, QWORD PTR [rsp-32]
	mov	eax, DWORD PTR [rsp-68]
	sub	eax, DWORD PTR [rsp-4]
	mov	ecx, eax
	sal	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rsp-40], rax
	jmp	.L746
.L745:
	cmp	DWORD PTR [rsp-68], 0
	jne	.L747
	mov	rax, QWORD PTR [rsp-64]
	mov	rdx, QWORD PTR [rsp-56]
	jmp	.L749
.L747:
	mov	rdx, QWORD PTR [rsp-32]
	mov	eax, DWORD PTR [rsp-68]
	mov	ecx, eax
	sal	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rsp-48], rax
	mov	rax, QWORD PTR [rsp-24]
	mov	rdx, rax
	mov	eax, DWORD PTR [rsp-68]
	mov	rsi, rdx
	mov	ecx, eax
	sal	rsi, cl
	mov	rdx, QWORD PTR [rsp-32]
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, DWORD PTR [rsp-68]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	or	rax, rsi
	mov	QWORD PTR [rsp-40], rax
.L746:
	mov	rax, QWORD PTR [rsp-48]
	mov	rdx, QWORD PTR [rsp-40]
.L749:
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE134:
	.size	__ashlti3, .-__ashlti3
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135:
	.cfi_startproc
	mov	QWORD PTR [rsp-40], rdi
	mov	DWORD PTR [rsp-44], esi
	mov	DWORD PTR [rsp-4], 32
	mov	rax, QWORD PTR [rsp-40]
	mov	QWORD PTR [rsp-16], rax
	mov	eax, DWORD PTR [rsp-44]
	and	eax, DWORD PTR [rsp-4]
	je	.L752
	mov	edx, DWORD PTR [rsp-12]
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, 1
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rsp-20], eax
	mov	edx, DWORD PTR [rsp-12]
	mov	eax, DWORD PTR [rsp-44]
	sub	eax, DWORD PTR [rsp-4]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rsp-24], eax
	jmp	.L753
.L752:
	cmp	DWORD PTR [rsp-44], 0
	jne	.L754
	mov	rax, QWORD PTR [rsp-40]
	ret
.L754:
	mov	edx, DWORD PTR [rsp-12]
	mov	eax, DWORD PTR [rsp-44]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rsp-20], eax
	mov	eax, DWORD PTR [rsp-12]
	mov	edx, eax
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, DWORD PTR [rsp-44]
	mov	esi, edx
	mov	ecx, eax
	sal	esi, cl
	mov	edx, DWORD PTR [rsp-16]
	mov	eax, DWORD PTR [rsp-44]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, esi
	mov	DWORD PTR [rsp-24], eax
.L753:
	mov	rax, QWORD PTR [rsp-24]
	ret
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.globl	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rax, rdi
	mov	rcx, rdi
	mov	ebx, 0
	mov	rbx, rsi
	mov	QWORD PTR [rsp-64], rcx
	mov	QWORD PTR [rsp-56], rbx
	mov	DWORD PTR [rsp-68], edx
	mov	DWORD PTR [rsp-4], 64
	mov	rax, QWORD PTR [rsp-64]
	mov	rdx, QWORD PTR [rsp-56]
	mov	QWORD PTR [rsp-32], rax
	mov	QWORD PTR [rsp-24], rdx
	mov	eax, DWORD PTR [rsp-68]
	and	eax, DWORD PTR [rsp-4]
	je	.L758
	mov	rdx, QWORD PTR [rsp-24]
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, 1
	mov	ecx, eax
	sar	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rsp-40], rax
	mov	rdx, QWORD PTR [rsp-24]
	mov	eax, DWORD PTR [rsp-68]
	sub	eax, DWORD PTR [rsp-4]
	mov	ecx, eax
	sar	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rsp-48], rax
	jmp	.L759
.L758:
	cmp	DWORD PTR [rsp-68], 0
	jne	.L760
	mov	rax, QWORD PTR [rsp-64]
	mov	rdx, QWORD PTR [rsp-56]
	jmp	.L762
.L760:
	mov	rdx, QWORD PTR [rsp-24]
	mov	eax, DWORD PTR [rsp-68]
	mov	ecx, eax
	sar	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rsp-40], rax
	mov	rax, QWORD PTR [rsp-24]
	mov	rdx, rax
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, DWORD PTR [rsp-68]
	mov	rsi, rdx
	mov	ecx, eax
	sal	rsi, cl
	mov	rdx, QWORD PTR [rsp-32]
	mov	eax, DWORD PTR [rsp-68]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	or	rax, rsi
	mov	QWORD PTR [rsp-48], rax
.L759:
	mov	rax, QWORD PTR [rsp-48]
	mov	rdx, QWORD PTR [rsp-40]
.L762:
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE136:
	.size	__ashrti3, .-__ashrti3
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	rax, QWORD PTR [rsp-8]
	shr	rax, 56
	mov	rdx, rax
	mov	rax, QWORD PTR [rsp-8]
	shr	rax, 40
	and	eax, 65280
	or	rdx, rax
	mov	rax, QWORD PTR [rsp-8]
	shr	rax, 24
	and	eax, 16711680
	or	rdx, rax
	mov	rax, QWORD PTR [rsp-8]
	shr	rax, 8
	and	eax, 4278190080
	or	rdx, rax
	mov	rax, QWORD PTR [rsp-8]
	sal	rax, 8
	mov	rcx, rax
	movabs	rax, 1095216660480
	and	rax, rcx
	or	rdx, rax
	mov	rax, QWORD PTR [rsp-8]
	sal	rax, 24
	mov	rcx, rax
	movabs	rax, 280375465082880
	and	rax, rcx
	or	rdx, rax
	mov	rax, QWORD PTR [rsp-8]
	sal	rax, 40
	mov	rcx, rax
	movabs	rax, 71776119061217280
	and	rax, rcx
	or	rdx, rax
	mov	rax, QWORD PTR [rsp-8]
	sal	rax, 56
	or	rax, rdx
	ret
	.cfi_endproc
.LFE137:
	.size	__bswapdi2, .-__bswapdi2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB138:
	.cfi_startproc
	mov	DWORD PTR [rsp-4], edi
	mov	eax, DWORD PTR [rsp-4]
	shr	eax, 24
	mov	edx, eax
	mov	eax, DWORD PTR [rsp-4]
	shr	eax, 8
	and	eax, 65280
	or	edx, eax
	mov	eax, DWORD PTR [rsp-4]
	sal	eax, 8
	and	eax, 16711680
	or	edx, eax
	mov	eax, DWORD PTR [rsp-4]
	sal	eax, 24
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
	mov	DWORD PTR [rsp-68], edi
	mov	eax, DWORD PTR [rsp-68]
	mov	DWORD PTR [rsp-4], eax
	cmp	DWORD PTR [rsp-4], 65535
	ja	.L769
	mov	eax, 16
	jmp	.L770
.L769:
	mov	eax, 0
.L770:
	mov	DWORD PTR [rsp-8], eax
	mov	eax, 16
	sub	eax, DWORD PTR [rsp-8]
	mov	edx, DWORD PTR [rsp-4]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rsp-12], eax
	mov	eax, DWORD PTR [rsp-8]
	mov	DWORD PTR [rsp-16], eax
	mov	eax, DWORD PTR [rsp-12]
	and	eax, 65280
	jne	.L771
	mov	eax, 8
	jmp	.L772
.L771:
	mov	eax, 0
.L772:
	mov	DWORD PTR [rsp-20], eax
	mov	eax, 8
	sub	eax, DWORD PTR [rsp-20]
	mov	edx, DWORD PTR [rsp-12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rsp-24], eax
	mov	edx, DWORD PTR [rsp-20]
	mov	eax, DWORD PTR [rsp-16]
	add	eax, edx
	mov	DWORD PTR [rsp-28], eax
	mov	eax, DWORD PTR [rsp-24]
	and	eax, 240
	jne	.L773
	mov	eax, 4
	jmp	.L774
.L773:
	mov	eax, 0
.L774:
	mov	DWORD PTR [rsp-32], eax
	mov	eax, 4
	sub	eax, DWORD PTR [rsp-32]
	mov	edx, DWORD PTR [rsp-24]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rsp-36], eax
	mov	edx, DWORD PTR [rsp-32]
	mov	eax, DWORD PTR [rsp-28]
	add	eax, edx
	mov	DWORD PTR [rsp-40], eax
	mov	eax, DWORD PTR [rsp-36]
	and	eax, 12
	jne	.L775
	mov	eax, 2
	jmp	.L776
.L775:
	mov	eax, 0
.L776:
	mov	DWORD PTR [rsp-44], eax
	mov	eax, 2
	sub	eax, DWORD PTR [rsp-44]
	mov	edx, DWORD PTR [rsp-36]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rsp-48], eax
	mov	edx, DWORD PTR [rsp-44]
	mov	eax, DWORD PTR [rsp-40]
	add	eax, edx
	mov	DWORD PTR [rsp-52], eax
	mov	eax, DWORD PTR [rsp-48]
	and	eax, 2
	sete	al
	movzx	eax, al
	mov	edx, eax
	mov	eax, 2
	sub	eax, DWORD PTR [rsp-48]
	imul	edx, eax
	mov	eax, DWORD PTR [rsp-52]
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
	mov	rax, rdi
	mov	rcx, rsi
	mov	rax, rax
	mov	edx, 0
	mov	rdx, rcx
	mov	QWORD PTR [rsp-56], rax
	mov	QWORD PTR [rsp-48], rdx
	mov	rax, QWORD PTR [rsp-56]
	mov	rdx, QWORD PTR [rsp-48]
	mov	QWORD PTR [rsp-40], rax
	mov	QWORD PTR [rsp-32], rdx
	mov	rax, QWORD PTR [rsp-32]
	test	rax, rax
	sete	al
	movzx	eax, al
	neg	eax
	cdqe
	mov	QWORD PTR [rsp-16], rax
	mov	rdx, QWORD PTR [rsp-32]
	mov	rax, QWORD PTR [rsp-16]
	not	rax
	and	rax, rdx
	mov	rcx, rax
	mov	rdx, QWORD PTR [rsp-40]
	mov	rax, QWORD PTR [rsp-16]
	and	rax, rdx
	or	rax, rcx
	bsr	rax, rax
	xor	rax, 63
	mov	edx, eax
	mov	rax, QWORD PTR [rsp-16]
	and	eax, 64
	add	eax, edx
	ret
	.cfi_endproc
.LFE140:
	.size	__clzti2, .-__clzti2
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB141:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	mov	QWORD PTR [rsp-32], rsi
	mov	rax, QWORD PTR [rsp-24]
	mov	QWORD PTR [rsp-8], rax
	mov	rax, QWORD PTR [rsp-32]
	mov	QWORD PTR [rsp-16], rax
	mov	edx, DWORD PTR [rsp-4]
	mov	eax, DWORD PTR [rsp-12]
	cmp	edx, eax
	jge	.L781
	mov	eax, 0
	ret
.L781:
	mov	edx, DWORD PTR [rsp-4]
	mov	eax, DWORD PTR [rsp-12]
	cmp	edx, eax
	jle	.L783
	mov	eax, 2
	ret
.L783:
	mov	edx, DWORD PTR [rsp-8]
	mov	eax, DWORD PTR [rsp-16]
	cmp	edx, eax
	jnb	.L784
	mov	eax, 0
	ret
.L784:
	mov	eax, DWORD PTR [rsp-8]
	mov	edx, DWORD PTR [rsp-16]
	cmp	edx, eax
	jnb	.L785
	mov	eax, 2
	ret
.L785:
	mov	eax, 1
	ret
	.cfi_endproc
.LFE141:
	.size	__cmpdi2, .-__cmpdi2
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB142:
	.cfi_startproc
	sub	rsp, 16
	.cfi_def_cfa_offset 24
	mov	QWORD PTR [rsp+8], rdi
	mov	QWORD PTR [rsp], rsi
	mov	rdx, QWORD PTR [rsp]
	mov	rax, QWORD PTR [rsp+8]
	mov	rsi, rdx
	mov	rdi, rax
	call	__cmpdi2
	sub	eax, 1
	add	rsp, 16
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.globl	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
.LFB143:
	.cfi_startproc
	mov	rax, rdi
	mov	r8, rsi
	mov	rsi, rax
	mov	edi, 0
	mov	rdi, r8
	mov	QWORD PTR [rsp-56], rsi
	mov	QWORD PTR [rsp-48], rdi
	mov	QWORD PTR [rsp-72], rdx
	mov	QWORD PTR [rsp-64], rcx
	mov	rax, QWORD PTR [rsp-56]
	mov	rdx, QWORD PTR [rsp-48]
	mov	QWORD PTR [rsp-24], rax
	mov	QWORD PTR [rsp-16], rdx
	mov	rax, QWORD PTR [rsp-72]
	mov	rdx, QWORD PTR [rsp-64]
	mov	QWORD PTR [rsp-40], rax
	mov	QWORD PTR [rsp-32], rdx
	mov	rdx, QWORD PTR [rsp-16]
	mov	rax, QWORD PTR [rsp-32]
	cmp	rdx, rax
	jge	.L791
	mov	eax, 0
	ret
.L791:
	mov	rdx, QWORD PTR [rsp-16]
	mov	rax, QWORD PTR [rsp-32]
	cmp	rdx, rax
	jle	.L793
	mov	eax, 2
	ret
.L793:
	mov	rdx, QWORD PTR [rsp-24]
	mov	rax, QWORD PTR [rsp-40]
	cmp	rdx, rax
	jnb	.L794
	mov	eax, 0
	ret
.L794:
	mov	rax, QWORD PTR [rsp-24]
	mov	rdx, QWORD PTR [rsp-40]
	cmp	rdx, rax
	jnb	.L795
	mov	eax, 2
	ret
.L795:
	mov	eax, 1
	ret
	.cfi_endproc
.LFE143:
	.size	__cmpti2, .-__cmpti2
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB144:
	.cfi_startproc
	mov	DWORD PTR [rsp-68], edi
	mov	eax, DWORD PTR [rsp-68]
	mov	DWORD PTR [rsp-4], eax
	mov	eax, DWORD PTR [rsp-4]
	movzx	eax, ax
	test	eax, eax
	jne	.L798
	mov	eax, 16
	jmp	.L799
.L798:
	mov	eax, 0
.L799:
	mov	DWORD PTR [rsp-8], eax
	mov	eax, DWORD PTR [rsp-8]
	mov	edx, DWORD PTR [rsp-4]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rsp-12], eax
	mov	eax, DWORD PTR [rsp-8]
	mov	DWORD PTR [rsp-16], eax
	mov	eax, DWORD PTR [rsp-12]
	movzx	eax, al
	test	eax, eax
	jne	.L800
	mov	eax, 8
	jmp	.L801
.L800:
	mov	eax, 0
.L801:
	mov	DWORD PTR [rsp-20], eax
	mov	eax, DWORD PTR [rsp-20]
	mov	edx, DWORD PTR [rsp-12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rsp-24], eax
	mov	edx, DWORD PTR [rsp-20]
	mov	eax, DWORD PTR [rsp-16]
	add	eax, edx
	mov	DWORD PTR [rsp-28], eax
	mov	eax, DWORD PTR [rsp-24]
	and	eax, 15
	jne	.L802
	mov	eax, 4
	jmp	.L803
.L802:
	mov	eax, 0
.L803:
	mov	DWORD PTR [rsp-32], eax
	mov	eax, DWORD PTR [rsp-32]
	mov	edx, DWORD PTR [rsp-24]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rsp-36], eax
	mov	edx, DWORD PTR [rsp-32]
	mov	eax, DWORD PTR [rsp-28]
	add	eax, edx
	mov	DWORD PTR [rsp-40], eax
	mov	eax, DWORD PTR [rsp-36]
	and	eax, 3
	jne	.L804
	mov	eax, 2
	jmp	.L805
.L804:
	mov	eax, 0
.L805:
	mov	DWORD PTR [rsp-44], eax
	mov	eax, DWORD PTR [rsp-44]
	mov	edx, DWORD PTR [rsp-36]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rsp-48], eax
	mov	eax, DWORD PTR [rsp-48]
	and	eax, 3
	mov	DWORD PTR [rsp-52], eax
	mov	edx, DWORD PTR [rsp-44]
	mov	eax, DWORD PTR [rsp-40]
	add	eax, edx
	mov	DWORD PTR [rsp-56], eax
	mov	eax, DWORD PTR [rsp-52]
	not	eax
	and	eax, 1
	mov	ecx, eax
	mov	eax, DWORD PTR [rsp-52]
	shr	eax
	mov	edx, 2
	sub	edx, eax
	mov	eax, ecx
	neg	eax
	and	edx, eax
	mov	eax, DWORD PTR [rsp-56]
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
	mov	rax, rdi
	mov	rcx, rsi
	mov	rax, rax
	mov	edx, 0
	mov	rdx, rcx
	mov	QWORD PTR [rsp-56], rax
	mov	QWORD PTR [rsp-48], rdx
	mov	rax, QWORD PTR [rsp-56]
	mov	rdx, QWORD PTR [rsp-48]
	mov	QWORD PTR [rsp-40], rax
	mov	QWORD PTR [rsp-32], rdx
	mov	rax, QWORD PTR [rsp-40]
	test	rax, rax
	sete	al
	movzx	eax, al
	neg	eax
	cdqe
	mov	QWORD PTR [rsp-16], rax
	mov	rax, QWORD PTR [rsp-32]
	and	rax, QWORD PTR [rsp-16]
	mov	rcx, rax
	mov	rdx, QWORD PTR [rsp-40]
	mov	rax, QWORD PTR [rsp-16]
	not	rax
	and	rax, rdx
	or	rax, rcx
	rep bsf	rax, rax
	mov	edx, eax
	mov	rax, QWORD PTR [rsp-16]
	and	eax, 64
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
	mov	rax, rdi
	mov	rcx, rsi
	mov	rax, rax
	mov	edx, 0
	mov	rdx, rcx
	mov	QWORD PTR [rsp-40], rax
	mov	QWORD PTR [rsp-32], rdx
	mov	rax, QWORD PTR [rsp-40]
	mov	rdx, QWORD PTR [rsp-32]
	mov	QWORD PTR [rsp-24], rax
	mov	QWORD PTR [rsp-16], rdx
	mov	rax, QWORD PTR [rsp-24]
	test	rax, rax
	jne	.L810
	mov	rax, QWORD PTR [rsp-16]
	test	rax, rax
	jne	.L811
	mov	eax, 0
	ret
.L811:
	mov	rax, QWORD PTR [rsp-16]
	rep bsf	rax, rax
	add	eax, 65
	ret
.L810:
	mov	rax, QWORD PTR [rsp-24]
	rep bsf	rax, rax
	add	eax, 1
	ret
	.cfi_endproc
.LFE146:
	.size	__ffsti2, .-__ffsti2
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB147:
	.cfi_startproc
	mov	QWORD PTR [rsp-40], rdi
	mov	DWORD PTR [rsp-44], esi
	mov	DWORD PTR [rsp-4], 32
	mov	rax, QWORD PTR [rsp-40]
	mov	QWORD PTR [rsp-16], rax
	mov	eax, DWORD PTR [rsp-44]
	and	eax, DWORD PTR [rsp-4]
	je	.L815
	mov	DWORD PTR [rsp-20], 0
	mov	edx, DWORD PTR [rsp-12]
	mov	eax, DWORD PTR [rsp-44]
	sub	eax, DWORD PTR [rsp-4]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rsp-24], eax
	jmp	.L816
.L815:
	cmp	DWORD PTR [rsp-44], 0
	jne	.L817
	mov	rax, QWORD PTR [rsp-40]
	ret
.L817:
	mov	edx, DWORD PTR [rsp-12]
	mov	eax, DWORD PTR [rsp-44]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rsp-20], eax
	mov	edx, DWORD PTR [rsp-12]
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, DWORD PTR [rsp-44]
	mov	esi, edx
	mov	ecx, eax
	sal	esi, cl
	mov	edx, DWORD PTR [rsp-16]
	mov	eax, DWORD PTR [rsp-44]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, esi
	mov	DWORD PTR [rsp-24], eax
.L816:
	mov	rax, QWORD PTR [rsp-24]
	ret
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.globl	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rax, rdi
	mov	rcx, rdi
	mov	ebx, 0
	mov	rbx, rsi
	mov	QWORD PTR [rsp-64], rcx
	mov	QWORD PTR [rsp-56], rbx
	mov	DWORD PTR [rsp-68], edx
	mov	DWORD PTR [rsp-4], 64
	mov	rax, QWORD PTR [rsp-64]
	mov	rdx, QWORD PTR [rsp-56]
	mov	QWORD PTR [rsp-32], rax
	mov	QWORD PTR [rsp-24], rdx
	mov	eax, DWORD PTR [rsp-68]
	and	eax, DWORD PTR [rsp-4]
	je	.L821
	mov	QWORD PTR [rsp-40], 0
	mov	rdx, QWORD PTR [rsp-24]
	mov	eax, DWORD PTR [rsp-68]
	sub	eax, DWORD PTR [rsp-4]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rsp-48], rax
	jmp	.L822
.L821:
	cmp	DWORD PTR [rsp-68], 0
	jne	.L823
	mov	rax, QWORD PTR [rsp-64]
	mov	rdx, QWORD PTR [rsp-56]
	jmp	.L825
.L823:
	mov	rdx, QWORD PTR [rsp-24]
	mov	eax, DWORD PTR [rsp-68]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rsp-40], rax
	mov	rdx, QWORD PTR [rsp-24]
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, DWORD PTR [rsp-68]
	mov	rsi, rdx
	mov	ecx, eax
	sal	rsi, cl
	mov	rdx, QWORD PTR [rsp-32]
	mov	eax, DWORD PTR [rsp-68]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	or	rax, rsi
	mov	QWORD PTR [rsp-48], rax
.L822:
	mov	rax, QWORD PTR [rsp-48]
	mov	rdx, QWORD PTR [rsp-40]
.L825:
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	mov	DWORD PTR [rsp-36], edi
	mov	DWORD PTR [rsp-40], esi
	mov	DWORD PTR [rsp-4], 16
	mov	eax, DWORD PTR [rsp-4]
	mov	edx, -1
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rsp-8], eax
	mov	eax, DWORD PTR [rsp-36]
	and	eax, DWORD PTR [rsp-8]
	mov	edx, eax
	mov	eax, DWORD PTR [rsp-40]
	and	eax, DWORD PTR [rsp-8]
	imul	eax, edx
	mov	DWORD PTR [rsp-32], eax
	mov	edx, DWORD PTR [rsp-32]
	mov	eax, DWORD PTR [rsp-4]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rsp-12], eax
	mov	eax, DWORD PTR [rsp-32]
	and	eax, DWORD PTR [rsp-8]
	mov	DWORD PTR [rsp-32], eax
	mov	eax, DWORD PTR [rsp-4]
	mov	edx, DWORD PTR [rsp-36]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [rsp-40]
	and	eax, DWORD PTR [rsp-8]
	imul	edx, eax
	mov	eax, DWORD PTR [rsp-12]
	add	eax, edx
	mov	DWORD PTR [rsp-16], eax
	mov	edx, DWORD PTR [rsp-32]
	mov	eax, DWORD PTR [rsp-16]
	and	eax, DWORD PTR [rsp-8]
	mov	esi, eax
	mov	eax, DWORD PTR [rsp-4]
	mov	ecx, eax
	sal	esi, cl
	mov	eax, esi
	add	eax, edx
	mov	DWORD PTR [rsp-32], eax
	mov	eax, DWORD PTR [rsp-4]
	mov	edx, DWORD PTR [rsp-16]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rsp-28], eax
	mov	edx, DWORD PTR [rsp-32]
	mov	eax, DWORD PTR [rsp-4]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [rsp-20], eax
	mov	eax, DWORD PTR [rsp-32]
	and	eax, DWORD PTR [rsp-8]
	mov	DWORD PTR [rsp-32], eax
	mov	eax, DWORD PTR [rsp-4]
	mov	edx, DWORD PTR [rsp-40]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [rsp-36]
	and	eax, DWORD PTR [rsp-8]
	imul	edx, eax
	mov	eax, DWORD PTR [rsp-20]
	add	eax, edx
	mov	DWORD PTR [rsp-24], eax
	mov	edx, DWORD PTR [rsp-32]
	mov	eax, DWORD PTR [rsp-24]
	and	eax, DWORD PTR [rsp-8]
	mov	esi, eax
	mov	eax, DWORD PTR [rsp-4]
	mov	ecx, eax
	sal	esi, cl
	mov	eax, esi
	add	eax, edx
	mov	DWORD PTR [rsp-32], eax
	mov	eax, DWORD PTR [rsp-28]
	mov	esi, eax
	mov	eax, DWORD PTR [rsp-4]
	mov	edx, DWORD PTR [rsp-24]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	add	eax, esi
	mov	DWORD PTR [rsp-28], eax
	mov	eax, DWORD PTR [rsp-28]
	mov	edi, eax
	mov	eax, DWORD PTR [rsp-4]
	mov	edx, DWORD PTR [rsp-36]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [rsp-4]
	mov	esi, DWORD PTR [rsp-40]
	mov	ecx, eax
	shr	esi, cl
	mov	eax, esi
	imul	eax, edx
	add	eax, edi
	mov	DWORD PTR [rsp-28], eax
	mov	rax, QWORD PTR [rsp-32]
	ret
	.cfi_endproc
.LFE149:
	.size	__muldsi3, .-__muldsi3
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB150:
	.cfi_startproc
	sub	rsp, 48
	.cfi_def_cfa_offset 56
	mov	QWORD PTR [rsp+8], rdi
	mov	QWORD PTR [rsp], rsi
	mov	rax, QWORD PTR [rsp+8]
	mov	QWORD PTR [rsp+40], rax
	mov	rax, QWORD PTR [rsp]
	mov	QWORD PTR [rsp+32], rax
	mov	edx, DWORD PTR [rsp+32]
	mov	eax, DWORD PTR [rsp+40]
	mov	esi, edx
	mov	edi, eax
	call	__muldsi3
	mov	QWORD PTR [rsp+24], rax
	mov	eax, DWORD PTR [rsp+28]
	mov	esi, eax
	mov	eax, DWORD PTR [rsp+44]
	mov	edx, eax
	mov	eax, DWORD PTR [rsp+32]
	imul	edx, eax
	mov	eax, DWORD PTR [rsp+40]
	mov	ecx, DWORD PTR [rsp+36]
	imul	eax, ecx
	add	eax, edx
	add	eax, esi
	mov	DWORD PTR [rsp+28], eax
	mov	rax, QWORD PTR [rsp+24]
	add	rsp, 48
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.globl	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151:
	.cfi_startproc
	mov	QWORD PTR [rsp-80], rdi
	mov	QWORD PTR [rsp-88], rsi
	mov	DWORD PTR [rsp-12], 32
	mov	eax, DWORD PTR [rsp-12]
	mov	rdx, -1
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rsp-24], rax
	mov	rax, QWORD PTR [rsp-80]
	and	rax, QWORD PTR [rsp-24]
	mov	rdx, rax
	mov	rax, QWORD PTR [rsp-88]
	and	rax, QWORD PTR [rsp-24]
	imul	rax, rdx
	mov	QWORD PTR [rsp-72], rax
	mov	rdx, QWORD PTR [rsp-72]
	mov	eax, DWORD PTR [rsp-12]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rsp-32], rax
	mov	rax, QWORD PTR [rsp-72]
	and	rax, QWORD PTR [rsp-24]
	mov	QWORD PTR [rsp-72], rax
	mov	eax, DWORD PTR [rsp-12]
	mov	rdx, QWORD PTR [rsp-80]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, QWORD PTR [rsp-88]
	and	rax, QWORD PTR [rsp-24]
	imul	rdx, rax
	mov	rax, QWORD PTR [rsp-32]
	add	rax, rdx
	mov	QWORD PTR [rsp-40], rax
	mov	rdx, QWORD PTR [rsp-72]
	mov	rax, QWORD PTR [rsp-40]
	and	rax, QWORD PTR [rsp-24]
	mov	rsi, rax
	mov	eax, DWORD PTR [rsp-12]
	mov	ecx, eax
	sal	rsi, cl
	mov	rax, rsi
	add	rax, rdx
	mov	QWORD PTR [rsp-72], rax
	mov	eax, DWORD PTR [rsp-12]
	mov	rdx, QWORD PTR [rsp-40]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rsp-64], rax
	mov	rdx, QWORD PTR [rsp-72]
	mov	eax, DWORD PTR [rsp-12]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR [rsp-48], rax
	mov	rax, QWORD PTR [rsp-72]
	and	rax, QWORD PTR [rsp-24]
	mov	QWORD PTR [rsp-72], rax
	mov	eax, DWORD PTR [rsp-12]
	mov	rdx, QWORD PTR [rsp-88]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, QWORD PTR [rsp-80]
	and	rax, QWORD PTR [rsp-24]
	imul	rdx, rax
	mov	rax, QWORD PTR [rsp-48]
	add	rax, rdx
	mov	QWORD PTR [rsp-56], rax
	mov	rdx, QWORD PTR [rsp-72]
	mov	rax, QWORD PTR [rsp-56]
	and	rax, QWORD PTR [rsp-24]
	mov	rsi, rax
	mov	eax, DWORD PTR [rsp-12]
	mov	ecx, eax
	sal	rsi, cl
	mov	rax, rsi
	add	rax, rdx
	mov	QWORD PTR [rsp-72], rax
	mov	rax, QWORD PTR [rsp-64]
	mov	rsi, rax
	mov	eax, DWORD PTR [rsp-12]
	mov	rdx, QWORD PTR [rsp-56]
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	add	rax, rsi
	mov	QWORD PTR [rsp-64], rax
	mov	rax, QWORD PTR [rsp-64]
	mov	rdi, rax
	mov	eax, DWORD PTR [rsp-12]
	mov	rdx, QWORD PTR [rsp-80]
	mov	ecx, eax
	shr	rdx, cl
	mov	eax, DWORD PTR [rsp-12]
	mov	rsi, QWORD PTR [rsp-88]
	mov	ecx, eax
	shr	rsi, cl
	mov	rax, rsi
	imul	rax, rdx
	add	rax, rdi
	mov	QWORD PTR [rsp-64], rax
	mov	rax, QWORD PTR [rsp-72]
	mov	rdx, QWORD PTR [rsp-64]
	ret
	.cfi_endproc
.LFE151:
	.size	__mulddi3, .-__mulddi3
	.globl	__multi3
	.type	__multi3, @function
__multi3:
.LFB152:
	.cfi_startproc
	sub	rsp, 88
	.cfi_def_cfa_offset 96
	mov	rax, rdi
	mov	r8, rsi
	mov	rsi, rax
	mov	edi, 0
	mov	rdi, r8
	mov	QWORD PTR [rsp+16], rsi
	mov	QWORD PTR [rsp+24], rdi
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR [rsp+8], rcx
	mov	rax, QWORD PTR [rsp+16]
	mov	rdx, QWORD PTR [rsp+24]
	mov	QWORD PTR [rsp+64], rax
	mov	QWORD PTR [rsp+72], rdx
	mov	rax, QWORD PTR [rsp]
	mov	rdx, QWORD PTR [rsp+8]
	mov	QWORD PTR [rsp+48], rax
	mov	QWORD PTR [rsp+56], rdx
	mov	rdx, QWORD PTR [rsp+48]
	mov	rax, QWORD PTR [rsp+64]
	mov	rsi, rdx
	mov	rdi, rax
	call	__mulddi3
	mov	QWORD PTR [rsp+32], rax
	mov	QWORD PTR [rsp+40], rdx
	mov	rax, QWORD PTR [rsp+40]
	mov	rsi, rax
	mov	rax, QWORD PTR [rsp+72]
	mov	rdx, rax
	mov	rax, QWORD PTR [rsp+48]
	imul	rdx, rax
	mov	rax, QWORD PTR [rsp+64]
	mov	rcx, QWORD PTR [rsp+56]
	imul	rax, rcx
	add	rax, rdx
	add	rax, rsi
	mov	QWORD PTR [rsp+40], rax
	mov	rax, QWORD PTR [rsp+32]
	mov	rdx, QWORD PTR [rsp+40]
	add	rsp, 88
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE152:
	.size	__multi3, .-__multi3
	.globl	__negdi2
	.type	__negdi2, @function
__negdi2:
.LFB153:
	.cfi_startproc
	mov	QWORD PTR [rsp-8], rdi
	mov	rax, QWORD PTR [rsp-8]
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
	mov	rcx, rsi
	mov	rax, rax
	mov	edx, 0
	mov	rdx, rcx
	mov	QWORD PTR [rsp-24], rax
	mov	QWORD PTR [rsp-16], rdx
	mov	rax, QWORD PTR [rsp-24]
	mov	rdx, QWORD PTR [rsp-16]
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
	mov	QWORD PTR [rsp-40], rdi
	mov	rax, QWORD PTR [rsp-40]
	mov	QWORD PTR [rsp-24], rax
	mov	eax, DWORD PTR [rsp-20]
	mov	edx, eax
	mov	eax, DWORD PTR [rsp-24]
	xor	eax, edx
	mov	DWORD PTR [rsp-4], eax
	mov	eax, DWORD PTR [rsp-4]
	shr	eax, 16
	xor	eax, DWORD PTR [rsp-4]
	mov	DWORD PTR [rsp-8], eax
	mov	eax, DWORD PTR [rsp-8]
	shr	eax, 8
	xor	eax, DWORD PTR [rsp-8]
	mov	DWORD PTR [rsp-12], eax
	mov	eax, DWORD PTR [rsp-12]
	shr	eax, 4
	xor	eax, DWORD PTR [rsp-12]
	mov	DWORD PTR [rsp-16], eax
	mov	eax, DWORD PTR [rsp-16]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
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
	mov	rax, rdi
	mov	rcx, rsi
	mov	rax, rax
	mov	edx, 0
	mov	rdx, rcx
	mov	QWORD PTR [rsp-72], rax
	mov	QWORD PTR [rsp-64], rdx
	mov	rax, QWORD PTR [rsp-72]
	mov	rdx, QWORD PTR [rsp-64]
	mov	QWORD PTR [rsp-40], rax
	mov	QWORD PTR [rsp-32], rdx
	mov	rax, QWORD PTR [rsp-32]
	mov	rdx, rax
	mov	rax, QWORD PTR [rsp-40]
	xor	rax, rdx
	mov	QWORD PTR [rsp-48], rax
	mov	eax, DWORD PTR [rsp-44]
	mov	edx, eax
	mov	eax, DWORD PTR [rsp-48]
	xor	eax, edx
	mov	DWORD PTR [rsp-12], eax
	mov	eax, DWORD PTR [rsp-12]
	shr	eax, 16
	xor	eax, DWORD PTR [rsp-12]
	mov	DWORD PTR [rsp-16], eax
	mov	eax, DWORD PTR [rsp-16]
	shr	eax, 8
	xor	eax, DWORD PTR [rsp-16]
	mov	DWORD PTR [rsp-20], eax
	mov	eax, DWORD PTR [rsp-20]
	shr	eax, 4
	xor	eax, DWORD PTR [rsp-20]
	mov	DWORD PTR [rsp-24], eax
	mov	eax, DWORD PTR [rsp-24]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
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
	mov	DWORD PTR [rsp-20], edi
	mov	eax, DWORD PTR [rsp-20]
	mov	DWORD PTR [rsp-4], eax
	mov	eax, DWORD PTR [rsp-4]
	shr	eax, 16
	xor	eax, DWORD PTR [rsp-4]
	mov	DWORD PTR [rsp-8], eax
	mov	eax, DWORD PTR [rsp-8]
	shr	eax, 8
	xor	eax, DWORD PTR [rsp-8]
	mov	DWORD PTR [rsp-12], eax
	mov	eax, DWORD PTR [rsp-12]
	shr	eax, 4
	xor	eax, DWORD PTR [rsp-12]
	mov	DWORD PTR [rsp-16], eax
	mov	eax, DWORD PTR [rsp-16]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
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
	mov	QWORD PTR [rsp-56], rdi
	mov	rax, QWORD PTR [rsp-56]
	mov	QWORD PTR [rsp-8], rax
	mov	rax, QWORD PTR [rsp-8]
	shr	rax
	mov	rdx, rax
	movabs	rax, 6148914691236517205
	and	rdx, rax
	mov	rax, QWORD PTR [rsp-8]
	sub	rax, rdx
	mov	QWORD PTR [rsp-16], rax
	mov	rax, QWORD PTR [rsp-16]
	shr	rax, 2
	mov	rdx, rax
	movabs	rax, 3689348814741910323
	and	rdx, rax
	movabs	rax, 3689348814741910323
	and	rax, QWORD PTR [rsp-16]
	add	rax, rdx
	mov	QWORD PTR [rsp-24], rax
	mov	rax, QWORD PTR [rsp-24]
	shr	rax, 4
	mov	rdx, rax
	mov	rax, QWORD PTR [rsp-24]
	add	rdx, rax
	movabs	rax, 1085102592571150095
	and	rax, rdx
	mov	QWORD PTR [rsp-32], rax
	mov	rax, QWORD PTR [rsp-32]
	mov	edx, eax
	mov	rax, QWORD PTR [rsp-32]
	shr	rax, 32
	add	eax, edx
	mov	DWORD PTR [rsp-36], eax
	mov	eax, DWORD PTR [rsp-36]
	shr	eax, 16
	mov	edx, eax
	mov	eax, DWORD PTR [rsp-36]
	add	eax, edx
	mov	DWORD PTR [rsp-40], eax
	mov	eax, DWORD PTR [rsp-40]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR [rsp-40]
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
	mov	DWORD PTR [rsp-36], edi
	mov	eax, DWORD PTR [rsp-36]
	mov	DWORD PTR [rsp-4], eax
	mov	eax, DWORD PTR [rsp-4]
	shr	eax
	and	eax, 1431655765
	mov	edx, eax
	mov	eax, DWORD PTR [rsp-4]
	sub	eax, edx
	mov	DWORD PTR [rsp-8], eax
	mov	eax, DWORD PTR [rsp-8]
	shr	eax, 2
	and	eax, 858993459
	mov	edx, eax
	mov	eax, DWORD PTR [rsp-8]
	and	eax, 858993459
	add	eax, edx
	mov	DWORD PTR [rsp-12], eax
	mov	eax, DWORD PTR [rsp-12]
	shr	eax, 4
	mov	edx, eax
	mov	eax, DWORD PTR [rsp-12]
	add	eax, edx
	and	eax, 252645135
	mov	DWORD PTR [rsp-16], eax
	mov	eax, DWORD PTR [rsp-16]
	shr	eax, 16
	mov	edx, eax
	mov	eax, DWORD PTR [rsp-16]
	add	eax, edx
	mov	DWORD PTR [rsp-20], eax
	mov	eax, DWORD PTR [rsp-20]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR [rsp-20]
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
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rax, rdi
	mov	rcx, rsi
	mov	rax, rax
	mov	edx, 0
	mov	rdx, rcx
	mov	QWORD PTR [rsp-96], rax
	mov	QWORD PTR [rsp-88], rdx
	mov	rax, QWORD PTR [rsp-96]
	mov	rdx, QWORD PTR [rsp-88]
	mov	QWORD PTR [rsp-16], rax
	mov	QWORD PTR [rsp-8], rdx
	mov	rax, QWORD PTR [rsp-16]
	mov	rdx, QWORD PTR [rsp-8]
	shrd	rax, rdx, 1
	shr	rdx
	movabs	rcx, 6148914691236517205
	mov	rbx, rcx
	and	rcx, rax
	and	rbx, rdx
	mov	rax, QWORD PTR [rsp-16]
	mov	rdx, QWORD PTR [rsp-8]
	sub	rax, rcx
	sbb	rdx, rbx
	mov	QWORD PTR [rsp-32], rax
	mov	QWORD PTR [rsp-24], rdx
	mov	rax, QWORD PTR [rsp-32]
	mov	rdx, QWORD PTR [rsp-24]
	shrd	rax, rdx, 2
	shr	rdx, 2
	movabs	rcx, 3689348814741910323
	mov	rbx, rcx
	and	rcx, rax
	and	rbx, rdx
	movabs	rax, 3689348814741910323
	mov	rdx, rax
	and	rax, QWORD PTR [rsp-32]
	and	rdx, QWORD PTR [rsp-24]
	add	rax, rcx
	adc	rdx, rbx
	mov	QWORD PTR [rsp-48], rax
	mov	QWORD PTR [rsp-40], rdx
	mov	rax, QWORD PTR [rsp-48]
	mov	rdx, QWORD PTR [rsp-40]
	shrd	rax, rdx, 4
	shr	rdx, 4
	mov	rcx, QWORD PTR [rsp-48]
	mov	rbx, QWORD PTR [rsp-40]
	add	rax, rcx
	adc	rdx, rbx
	movabs	rcx, 1085102592571150095
	mov	rbx, rcx
	and	rax, rcx
	and	rdx, rbx
	mov	QWORD PTR [rsp-64], rax
	mov	QWORD PTR [rsp-56], rdx
	mov	rax, QWORD PTR [rsp-64]
	mov	rdx, QWORD PTR [rsp-56]
	add	rax, rdx
	mov	QWORD PTR [rsp-72], rax
	mov	rax, QWORD PTR [rsp-72]
	mov	edx, eax
	mov	rax, QWORD PTR [rsp-72]
	shr	rax, 32
	add	eax, edx
	mov	DWORD PTR [rsp-76], eax
	mov	eax, DWORD PTR [rsp-76]
	shr	eax, 16
	mov	edx, eax
	mov	eax, DWORD PTR [rsp-76]
	add	eax, edx
	mov	DWORD PTR [rsp-80], eax
	mov	eax, DWORD PTR [rsp-80]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR [rsp-80]
	add	eax, edx
	movzx	eax, al
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE160:
	.size	__popcountti2, .-__popcountti2
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161:
	.cfi_startproc
	movsd	QWORD PTR [rsp-24], xmm0
	mov	DWORD PTR [rsp-28], edi
	mov	eax, DWORD PTR [rsp-28]
	shr	eax, 31
	movzx	eax, al
	mov	DWORD PTR [rsp-12], eax
	movsd	xmm0, QWORD PTR .LC16[rip]
	movsd	QWORD PTR [rsp-8], xmm0
.L858:
	mov	eax, DWORD PTR [rsp-28]
	and	eax, 1
	je	.L855
	movsd	xmm0, QWORD PTR [rsp-8]
	mulsd	xmm0, QWORD PTR [rsp-24]
	movsd	QWORD PTR [rsp-8], xmm0
.L855:
	mov	eax, DWORD PTR [rsp-28]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [rsp-28], eax
	cmp	DWORD PTR [rsp-28], 0
	je	.L862
	movsd	xmm0, QWORD PTR [rsp-24]
	mulsd	xmm0, xmm0
	movsd	QWORD PTR [rsp-24], xmm0
	jmp	.L858
.L862:
	cmp	DWORD PTR [rsp-12], 0
	je	.L859
	movsd	xmm0, QWORD PTR .LC16[rip]
	divsd	xmm0, QWORD PTR [rsp-8]
	movq	rax, xmm0
	jmp	.L861
.L859:
	mov	rax, QWORD PTR [rsp-8]
.L861:
	movq	xmm0, rax
	ret
	.cfi_endproc
.LFE161:
	.size	__powidf2, .-__powidf2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB162:
	.cfi_startproc
	movss	DWORD PTR [rsp-20], xmm0
	mov	DWORD PTR [rsp-24], edi
	mov	eax, DWORD PTR [rsp-24]
	shr	eax, 31
	movzx	eax, al
	mov	DWORD PTR [rsp-8], eax
	movss	xmm0, DWORD PTR .LC18[rip]
	movss	DWORD PTR [rsp-4], xmm0
.L868:
	mov	eax, DWORD PTR [rsp-24]
	and	eax, 1
	je	.L865
	movss	xmm0, DWORD PTR [rsp-4]
	mulss	xmm0, DWORD PTR [rsp-20]
	movss	DWORD PTR [rsp-4], xmm0
.L865:
	mov	eax, DWORD PTR [rsp-24]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [rsp-24], eax
	cmp	DWORD PTR [rsp-24], 0
	je	.L872
	movss	xmm0, DWORD PTR [rsp-20]
	mulss	xmm0, xmm0
	movss	DWORD PTR [rsp-20], xmm0
	jmp	.L868
.L872:
	cmp	DWORD PTR [rsp-8], 0
	je	.L869
	movss	xmm0, DWORD PTR .LC18[rip]
	divss	xmm0, DWORD PTR [rsp-4]
	movd	eax, xmm0
	jmp	.L871
.L869:
	mov	eax, DWORD PTR [rsp-4]
.L871:
	movd	xmm0, eax
	ret
	.cfi_endproc
.LFE162:
	.size	__powisf2, .-__powisf2
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB163:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rdi
	mov	QWORD PTR [rsp-32], rsi
	mov	rax, QWORD PTR [rsp-24]
	mov	QWORD PTR [rsp-8], rax
	mov	rax, QWORD PTR [rsp-32]
	mov	QWORD PTR [rsp-16], rax
	mov	edx, DWORD PTR [rsp-4]
	mov	eax, DWORD PTR [rsp-12]
	cmp	edx, eax
	jnb	.L875
	mov	eax, 0
	ret
.L875:
	mov	eax, DWORD PTR [rsp-4]
	mov	edx, DWORD PTR [rsp-12]
	cmp	edx, eax
	jnb	.L877
	mov	eax, 2
	ret
.L877:
	mov	edx, DWORD PTR [rsp-8]
	mov	eax, DWORD PTR [rsp-16]
	cmp	edx, eax
	jnb	.L878
	mov	eax, 0
	ret
.L878:
	mov	eax, DWORD PTR [rsp-8]
	mov	edx, DWORD PTR [rsp-16]
	cmp	edx, eax
	jnb	.L879
	mov	eax, 2
	ret
.L879:
	mov	eax, 1
	ret
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2, .-__ucmpdi2
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
	sub	rsp, 16
	.cfi_def_cfa_offset 24
	mov	QWORD PTR [rsp+8], rdi
	mov	QWORD PTR [rsp], rsi
	mov	rdx, QWORD PTR [rsp]
	mov	rax, QWORD PTR [rsp+8]
	mov	rsi, rdx
	mov	rdi, rax
	call	__ucmpdi2
	sub	eax, 1
	add	rsp, 16
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.globl	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
.LFB165:
	.cfi_startproc
	mov	rax, rdi
	mov	r8, rsi
	mov	rsi, rax
	mov	edi, 0
	mov	rdi, r8
	mov	QWORD PTR [rsp-56], rsi
	mov	QWORD PTR [rsp-48], rdi
	mov	QWORD PTR [rsp-72], rdx
	mov	QWORD PTR [rsp-64], rcx
	mov	rax, QWORD PTR [rsp-56]
	mov	rdx, QWORD PTR [rsp-48]
	mov	QWORD PTR [rsp-24], rax
	mov	QWORD PTR [rsp-16], rdx
	mov	rax, QWORD PTR [rsp-72]
	mov	rdx, QWORD PTR [rsp-64]
	mov	QWORD PTR [rsp-40], rax
	mov	QWORD PTR [rsp-32], rdx
	mov	rdx, QWORD PTR [rsp-16]
	mov	rax, QWORD PTR [rsp-32]
	cmp	rdx, rax
	jnb	.L885
	mov	eax, 0
	ret
.L885:
	mov	rax, QWORD PTR [rsp-16]
	mov	rdx, QWORD PTR [rsp-32]
	cmp	rdx, rax
	jnb	.L887
	mov	eax, 2
	ret
.L887:
	mov	rdx, QWORD PTR [rsp-24]
	mov	rax, QWORD PTR [rsp-40]
	cmp	rdx, rax
	jnb	.L888
	mov	eax, 0
	ret
.L888:
	mov	rax, QWORD PTR [rsp-24]
	mov	rdx, QWORD PTR [rsp-40]
	cmp	rdx, rax
	jnb	.L889
	mov	eax, 2
	ret
.L889:
	mov	eax, 1
	ret
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	0
	.align 4
.LC3:
	.long	-8388609
	.align 4
.LC4:
	.long	2139095039
	.section	.rodata.cst8
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
	.section	.rodata.cst4
	.align 4
.LC9:
	.long	1056964608
	.align 4
.LC10:
	.long	1073741824
	.section	.rodata.cst8
	.align 8
.LC11:
	.long	0
	.long	1071644672
	.align 8
.LC12:
	.long	0
	.long	1073741824
	.section	.rodata.cst16
	.align 16
.LC13:
	.long	0
	.long	-2147483648
	.long	16382
	.long	0
	.align 16
.LC14:
	.long	0
	.long	-2147483648
	.long	16384
	.long	0
	.align 16
.LC15:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
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
