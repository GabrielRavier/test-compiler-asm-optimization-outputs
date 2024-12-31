	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+8]
	cmp	eax, DWORD PTR [esp+12]
	jnb	.L2
	mov	eax, DWORD PTR [esp+28]
	add	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	add	DWORD PTR [esp+12], eax
	jmp	.L3
.L4:
	sub	DWORD PTR [esp+8], 1
	sub	DWORD PTR [esp+12], 1
	mov	eax, DWORD PTR [esp+8]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+12]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
.L3:
	cmp	DWORD PTR [esp+28], 0
	jne	.L4
	jmp	.L5
.L2:
	mov	eax, DWORD PTR [esp+8]
	cmp	eax, DWORD PTR [esp+12]
	je	.L5
	jmp	.L6
.L7:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, [edx+1]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+12]
	lea	ecx, [eax+1]
	mov	DWORD PTR [esp+12], ecx
	movzx	edx, BYTE PTR [edx]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
.L6:
	cmp	DWORD PTR [esp+28], 0
	jne	.L7
.L5:
	mov	eax, DWORD PTR [esp+20]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	memmove, .-memmove
	.globl	memccpy
	.type	memccpy, @function
memccpy:
.LFB1:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	movzx	eax, al
	mov	DWORD PTR [esp+28], eax
	jmp	.L11
.L13:
	sub	DWORD PTR [esp+32], 1
	add	DWORD PTR [esp+8], 1
	add	DWORD PTR [esp+12], 1
.L11:
	cmp	DWORD PTR [esp+32], 0
	je	.L12
	mov	eax, DWORD PTR [esp+8]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+12]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	cmp	DWORD PTR [esp+28], eax
	jne	.L13
.L12:
	cmp	DWORD PTR [esp+32], 0
	je	.L14
	mov	eax, DWORD PTR [esp+12]
	add	eax, 1
	jmp	.L15
.L14:
	mov	eax, 0
.L15:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1:
	.size	memccpy, .-memccpy
	.globl	memchr
	.type	memchr, @function
memchr:
.LFB2:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, al
	mov	DWORD PTR [esp+24], eax
	jmp	.L18
.L20:
	add	DWORD PTR [esp+12], 1
	sub	DWORD PTR [esp+28], 1
.L18:
	cmp	DWORD PTR [esp+28], 0
	je	.L19
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	cmp	DWORD PTR [esp+24], eax
	jne	.L20
.L19:
	cmp	DWORD PTR [esp+28], 0
	je	.L21
	mov	eax, DWORD PTR [esp+12]
	jmp	.L23
.L21:
	mov	eax, 0
.L23:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE2:
	.size	memchr, .-memchr
	.globl	memcmp
	.type	memcmp, @function
memcmp:
.LFB3:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	jmp	.L26
.L28:
	sub	DWORD PTR [esp+28], 1
	add	DWORD PTR [esp+12], 1
	add	DWORD PTR [esp+8], 1
.L26:
	cmp	DWORD PTR [esp+28], 0
	je	.L27
	mov	eax, DWORD PTR [esp+12]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	je	.L28
.L27:
	cmp	DWORD PTR [esp+28], 0
	je	.L29
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [eax]
	movzx	edx, al
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	sub	edx, eax
	jmp	.L31
.L29:
	mov	edx, 0
.L31:
	mov	eax, edx
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE3:
	.size	memcmp, .-memcmp
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB4:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	jmp	.L34
.L35:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, [edx+1]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+12]
	lea	ecx, [eax+1]
	mov	DWORD PTR [esp+12], ecx
	movzx	edx, BYTE PTR [edx]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
.L34:
	cmp	DWORD PTR [esp+28], 0
	jne	.L35
	mov	eax, DWORD PTR [esp+20]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE4:
	.size	memcpy, .-memcpy
	.globl	memrchr
	.type	memrchr, @function
memrchr:
.LFB5:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, al
	mov	DWORD PTR [esp+24], eax
	jmp	.L39
.L41:
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+28]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	cmp	DWORD PTR [esp+24], eax
	jne	.L39
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+28]
	add	eax, edx
	jmp	.L40
.L39:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+28], edx
	test	eax, eax
	jne	.L41
	mov	eax, 0
.L40:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE5:
	.size	memrchr, .-memrchr
	.globl	memset
	.type	memset, @function
memset:
.LFB6:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	jmp	.L44
.L45:
	mov	eax, DWORD PTR [esp+24]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+12]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
	add	DWORD PTR [esp+12], 1
.L44:
	cmp	DWORD PTR [esp+28], 0
	jne	.L45
	mov	eax, DWORD PTR [esp+20]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE6:
	.size	memset, .-memset
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB7:
	.cfi_startproc
	jmp	.L49
.L50:
	add	DWORD PTR [esp+8], 1
	add	DWORD PTR [esp+4], 1
.L49:
	mov	eax, DWORD PTR [esp+8]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+4]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [esp+4]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	.L50
	mov	eax, DWORD PTR [esp+4]
	ret
	.cfi_endproc
.LFE7:
	.size	stpcpy, .-stpcpy
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB8:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, al
	mov	DWORD PTR [esp+8], eax
	jmp	.L53
.L55:
	add	DWORD PTR [esp+4], 1
.L53:
	mov	eax, DWORD PTR [esp+4]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	.L54
	mov	eax, DWORD PTR [esp+4]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	cmp	DWORD PTR [esp+8], eax
	jne	.L55
.L54:
	mov	eax, DWORD PTR [esp+4]
	ret
	.cfi_endproc
.LFE8:
	.size	strchrnul, .-strchrnul
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB9:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
.L60:
	movzx	edx, BYTE PTR [eax]
	movsx	edx, dl
	cmp	DWORD PTR [esp+8], edx
	jne	.L58
	ret
.L58:
	mov	edx, eax
	lea	eax, [edx+1]
	movzx	edx, BYTE PTR [edx]
	test	dl, dl
	jne	.L60
	mov	eax, 0
	ret
	.cfi_endproc
.LFE9:
	.size	strchr, .-strchr
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB10:
	.cfi_startproc
	jmp	.L62
.L64:
	add	DWORD PTR [esp+4], 1
	add	DWORD PTR [esp+8], 1
.L62:
	mov	eax, DWORD PTR [esp+4]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jne	.L63
	mov	eax, DWORD PTR [esp+4]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	.L64
.L63:
	mov	eax, DWORD PTR [esp+4]
	movzx	eax, BYTE PTR [eax]
	movzx	edx, al
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	sub	edx, eax
	mov	eax, edx
	ret
	.cfi_endproc
.LFE10:
	.size	strcmp, .-strcmp
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB11:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	jmp	.L67
.L68:
	add	DWORD PTR [esp+20], 1
.L67:
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	.L68
	mov	eax, DWORD PTR [esp+20]
	sub	eax, DWORD PTR [esp+12]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE11:
	.size	strlen, .-strlen
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB12:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+28], edx
	test	eax, eax
	jne	.L74
	mov	edx, 0
	jmp	.L73
.L76:
	add	DWORD PTR [esp+12], 1
	add	DWORD PTR [esp+8], 1
	sub	DWORD PTR [esp+28], 1
.L74:
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	.L75
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	.L75
	cmp	DWORD PTR [esp+28], 0
	je	.L75
	mov	eax, DWORD PTR [esp+12]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	je	.L76
.L75:
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [eax]
	movzx	edx, al
	mov	eax, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	sub	edx, eax
.L73:
	mov	eax, edx
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE12:
	.size	strncmp, .-strncmp
	.globl	swab
	.type	swab, @function
swab:
.LFB13:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	jmp	.L79
.L80:
	mov	eax, DWORD PTR [esp+12]
	add	eax, 1
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [esp+8]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [esp+8], 2
	add	DWORD PTR [esp+12], 2
	sub	DWORD PTR [esp+28], 2
.L79:
	cmp	DWORD PTR [esp+28], 1
	jg	.L80
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE13:
	.size	swab, .-swab
	.globl	isalpha
	.type	isalpha, @function
isalpha:
.LFB14:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	or	eax, 32
	sub	eax, 97
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE14:
	.size	isalpha, .-isalpha
	.globl	isascii
	.type	isascii, @function
isascii:
.LFB15:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	cmp	eax, 127
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE15:
	.size	isascii, .-isascii
	.globl	isblank
	.type	isblank, @function
isblank:
.LFB16:
	.cfi_startproc
	cmp	DWORD PTR [esp+4], 32
	je	.L87
	cmp	DWORD PTR [esp+4], 9
	jne	.L88
.L87:
	mov	eax, 1
	ret
.L88:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE16:
	.size	isblank, .-isblank
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB17:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	cmp	eax, 31
	jbe	.L92
	cmp	DWORD PTR [esp+4], 127
	jne	.L93
.L92:
	mov	eax, 1
	ret
.L93:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE17:
	.size	iscntrl, .-iscntrl
	.globl	isdigit
	.type	isdigit, @function
isdigit:
.LFB18:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 48
	cmp	eax, 9
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE18:
	.size	isdigit, .-isdigit
	.globl	isgraph
	.type	isgraph, @function
isgraph:
.LFB19:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 33
	cmp	eax, 93
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE19:
	.size	isgraph, .-isgraph
	.globl	islower
	.type	islower, @function
islower:
.LFB20:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 97
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE20:
	.size	islower, .-islower
	.globl	isprint
	.type	isprint, @function
isprint:
.LFB21:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 32
	cmp	eax, 94
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE21:
	.size	isprint, .-isprint
	.globl	isspace
	.type	isspace, @function
isspace:
.LFB22:
	.cfi_startproc
	cmp	DWORD PTR [esp+4], 32
	je	.L105
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 9
	cmp	eax, 4
	ja	.L106
.L105:
	mov	eax, 1
	ret
.L106:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE22:
	.size	isspace, .-isspace
	.globl	isupper
	.type	isupper, @function
isupper:
.LFB23:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 65
	cmp	eax, 25
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE23:
	.size	isupper, .-isupper
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB24:
	.cfi_startproc
	cmp	DWORD PTR [esp+4], 31
	jbe	.L112
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 127
	cmp	eax, 32
	jbe	.L112
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 8232
	cmp	eax, 1
	jbe	.L112
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 65529
	cmp	eax, 2
	ja	.L113
.L112:
	mov	eax, 1
	ret
.L113:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE24:
	.size	iswcntrl, .-iswcntrl
	.globl	iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB25:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 48
	cmp	eax, 9
	setbe	al
	movzx	eax, al
	ret
	.cfi_endproc
.LFE25:
	.size	iswdigit, .-iswdigit
	.globl	iswprint
	.type	iswprint, @function
iswprint:
.LFB26:
	.cfi_startproc
	cmp	DWORD PTR [esp+4], 254
	ja	.L119
	mov	eax, DWORD PTR [esp+4]
	add	eax, 1
	and	eax, 127
	cmp	eax, 32
	seta	al
	movzx	eax, al
	ret
.L119:
	cmp	DWORD PTR [esp+4], 8231
	jbe	.L121
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 8234
	cmp	eax, 47061
	jbe	.L121
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 57344
	cmp	eax, 8184
	ja	.L122
.L121:
	mov	eax, 1
	ret
.L122:
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 65532
	cmp	eax, 1048579
	ja	.L123
	mov	eax, DWORD PTR [esp+4]
	and	eax, 65534
	cmp	eax, 65534
	jne	.L124
.L123:
	mov	eax, 0
	ret
.L124:
	mov	eax, 1
	ret
	.cfi_endproc
.LFE26:
	.size	iswprint, .-iswprint
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB27:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L126
	mov	eax, DWORD PTR [esp+4]
	or	eax, 32
	sub	eax, 97
	cmp	eax, 5
	ja	.L127
.L126:
	mov	eax, 1
	ret
.L127:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE27:
	.size	iswxdigit, .-iswxdigit
	.globl	toascii
	.type	toascii, @function
toascii:
.LFB28:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	and	eax, 127
	ret
	.cfi_endproc
.LFE28:
	.size	toascii, .-toascii
	.globl	fdim
	.type	fdim, @function
fdim:
.LFB29:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	fld	QWORD PTR [esp+8]
	fld	QWORD PTR [esp+8]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L133
	fld	QWORD PTR [esp+8]
	jmp	.L134
.L133:
	fld	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L135
	fld	QWORD PTR [esp]
	jmp	.L134
.L135:
	fld	QWORD PTR [esp+8]
	fcomp	QWORD PTR [esp]
	fnstsw	ax
	sahf
	jbe	.L140
	fld	QWORD PTR [esp+8]
	fsub	QWORD PTR [esp]
	jmp	.L134
.L140:
	fldz
.L134:
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE29:
	.size	fdim, .-fdim
	.globl	fdimf
	.type	fdimf, @function
fdimf:
.LFB30:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L143
	fld	DWORD PTR [esp+4]
	ret
.L143:
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+8]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L145
	fld	DWORD PTR [esp+8]
	ret
.L145:
	fld	DWORD PTR [esp+4]
	fcomp	DWORD PTR [esp+8]
	fnstsw	ax
	sahf
	jbe	.L150
	fld	DWORD PTR [esp+4]
	fsub	DWORD PTR [esp+8]
	ret
.L150:
	fldz
	ret
	.cfi_endproc
.LFE30:
	.size	fdimf, .-fdimf
	.globl	fmax
	.type	fmax, @function
fmax:
.LFB31:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	fld	QWORD PTR [esp+8]
	fld	QWORD PTR [esp+8]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L152
	fld	QWORD PTR [esp]
	jmp	.L153
.L152:
	fld	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L154
	fld	QWORD PTR [esp+8]
	jmp	.L153
.L154:
	fld	QWORD PTR [esp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	QWORD PTR [esp]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L155
	fld	QWORD PTR [esp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	.L156
	fld	QWORD PTR [esp]
	jmp	.L153
.L156:
	fld	QWORD PTR [esp+8]
	jmp	.L153
.L155:
	fld	QWORD PTR [esp]
	fcomp	QWORD PTR [esp+8]
	fnstsw	ax
	sahf
	jbe	.L162
	fld	QWORD PTR [esp]
	jmp	.L153
.L162:
	fld	QWORD PTR [esp+8]
.L153:
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE31:
	.size	fmax, .-fmax
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB32:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L165
	fld	DWORD PTR [esp+8]
	ret
.L165:
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+8]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L167
	fld	DWORD PTR [esp+4]
	ret
.L167:
	fld	DWORD PTR [esp+4]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	DWORD PTR [esp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L168
	fld	DWORD PTR [esp+4]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	.L169
	fld	DWORD PTR [esp+8]
	ret
.L169:
	fld	DWORD PTR [esp+4]
	ret
.L168:
	fld	DWORD PTR [esp+8]
	fcomp	DWORD PTR [esp+4]
	fnstsw	ax
	sahf
	jbe	.L175
	fld	DWORD PTR [esp+8]
	ret
.L175:
	fld	DWORD PTR [esp+4]
	ret
	.cfi_endproc
.LFE32:
	.size	fmaxf, .-fmaxf
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB33:
	.cfi_startproc
	fld	TBYTE PTR [esp+4]
	fld	TBYTE PTR [esp+4]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L177
	fld	TBYTE PTR [esp+16]
	ret
.L177:
	fld	TBYTE PTR [esp+16]
	fld	TBYTE PTR [esp+16]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L179
	fld	TBYTE PTR [esp+4]
	ret
.L179:
	fld	TBYTE PTR [esp+4]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	TBYTE PTR [esp+16]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L180
	fld	TBYTE PTR [esp+4]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	.L181
	fld	TBYTE PTR [esp+16]
	ret
.L181:
	fld	TBYTE PTR [esp+4]
	ret
.L180:
	fld	TBYTE PTR [esp+4]
	fld	TBYTE PTR [esp+16]
	fcompp
	fnstsw	ax
	sahf
	jbe	.L187
	fld	TBYTE PTR [esp+16]
	ret
.L187:
	fld	TBYTE PTR [esp+4]
	ret
	.cfi_endproc
.LFE33:
	.size	fmaxl, .-fmaxl
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB34:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	fld	QWORD PTR [esp+8]
	fld	QWORD PTR [esp+8]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L189
	fld	QWORD PTR [esp]
	jmp	.L190
.L189:
	fld	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L191
	fld	QWORD PTR [esp+8]
	jmp	.L190
.L191:
	fld	QWORD PTR [esp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	QWORD PTR [esp]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L192
	fld	QWORD PTR [esp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	.L193
	fld	QWORD PTR [esp+8]
	jmp	.L190
.L193:
	fld	QWORD PTR [esp]
	jmp	.L190
.L192:
	fld	QWORD PTR [esp]
	fcomp	QWORD PTR [esp+8]
	fnstsw	ax
	sahf
	jbe	.L199
	fld	QWORD PTR [esp+8]
	jmp	.L190
.L199:
	fld	QWORD PTR [esp]
.L190:
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE34:
	.size	fmin, .-fmin
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB35:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L202
	fld	DWORD PTR [esp+8]
	ret
.L202:
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+8]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L204
	fld	DWORD PTR [esp+4]
	ret
.L204:
	fld	DWORD PTR [esp+4]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	DWORD PTR [esp+8]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L205
	fld	DWORD PTR [esp+4]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	.L206
	fld	DWORD PTR [esp+4]
	ret
.L206:
	fld	DWORD PTR [esp+8]
	ret
.L205:
	fld	DWORD PTR [esp+8]
	fcomp	DWORD PTR [esp+4]
	fnstsw	ax
	sahf
	jbe	.L212
	fld	DWORD PTR [esp+4]
	ret
.L212:
	fld	DWORD PTR [esp+8]
	ret
	.cfi_endproc
.LFE35:
	.size	fminf, .-fminf
	.globl	fminl
	.type	fminl, @function
fminl:
.LFB36:
	.cfi_startproc
	fld	TBYTE PTR [esp+4]
	fld	TBYTE PTR [esp+4]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L214
	fld	TBYTE PTR [esp+16]
	ret
.L214:
	fld	TBYTE PTR [esp+16]
	fld	TBYTE PTR [esp+16]
	fucompp
	fnstsw	ax
	sahf
	jnp	.L216
	fld	TBYTE PTR [esp+4]
	ret
.L216:
	fld	TBYTE PTR [esp+4]
	fxam
	fnstsw	ax
	fstp	st(0)
	mov	edx, eax
	and	edx, 512
	fld	TBYTE PTR [esp+16]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	cmp	edx, eax
	je	.L217
	fld	TBYTE PTR [esp+4]
	fxam
	fnstsw	ax
	fstp	st(0)
	and	eax, 512
	je	.L218
	fld	TBYTE PTR [esp+4]
	ret
.L218:
	fld	TBYTE PTR [esp+16]
	ret
.L217:
	fld	TBYTE PTR [esp+4]
	fld	TBYTE PTR [esp+16]
	fcompp
	fnstsw	ax
	sahf
	jbe	.L224
	fld	TBYTE PTR [esp+4]
	ret
.L224:
	fld	TBYTE PTR [esp+16]
	ret
	.cfi_endproc
.LFE36:
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
.LFB37:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], OFFSET FLAT:s.0
	jmp	.L226
.L227:
	mov	eax, DWORD PTR [esp+8]
	and	eax, 63
	movzx	edx, BYTE PTR digits[eax]
	mov	eax, DWORD PTR [esp+12]
	mov	BYTE PTR [eax], dl
	add	DWORD PTR [esp+12], 1
	shr	DWORD PTR [esp+8], 6
.L226:
	cmp	DWORD PTR [esp+8], 0
	jne	.L227
	mov	eax, DWORD PTR [esp+12]
	mov	BYTE PTR [eax], 0
	mov	eax, OFFSET FLAT:s.0
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE37:
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.globl	srand
	.type	srand, @function
srand:
.LFB38:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 1
	mov	edx, 0
	mov	DWORD PTR seed, eax
	mov	DWORD PTR seed+4, edx
	nop
	ret
	.cfi_endproc
.LFE38:
	.size	srand, .-srand
	.globl	rand
	.type	rand, @function
rand:
.LFB39:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR seed
	mov	edx, DWORD PTR seed+4
	imul	ebx, edx, 1284865837
	imul	ecx, eax, 1481765933
	add	ecx, ebx
	mov	ebx, 1284865837
	mul	ebx
	add	ecx, edx
	mov	edx, ecx
	add	eax, 1
	adc	edx, 0
	mov	DWORD PTR seed, eax
	mov	DWORD PTR seed+4, edx
	mov	eax, DWORD PTR seed
	mov	edx, DWORD PTR seed+4
	mov	eax, edx
	xor	edx, edx
	shr	eax
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE39:
	.size	rand, .-rand
	.globl	insque
	.type	insque, @function
insque:
.LFB40:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	cmp	DWORD PTR [esp+8], 0
	jne	.L235
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax+4], 0
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], edx
	jmp	.L234
.L235:
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], edx
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+8]
	mov	DWORD PTR [eax+4], edx
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], edx
	mov	eax, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	je	.L234
	mov	eax, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [esp+12]
	mov	DWORD PTR [eax+4], edx
.L234:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE40:
	.size	insque, .-insque
	.globl	remque
	.type	remque, @function
remque:
.LFB41:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	je	.L239
	mov	eax, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [edx+4]
	mov	DWORD PTR [eax+4], edx
.L239:
	mov	eax, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	.L238
	mov	eax, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [eax+4]
	mov	edx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [edx]
	mov	DWORD PTR [eax], edx
.L238:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE41:
	.size	remque, .-remque
	.globl	lsearch
	.type	lsearch, @function
lsearch:
.LFB42:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 24
	.cfi_def_cfa_offset 32
	mov	ebx, DWORD PTR [esp+44]
	mov	eax, ebx
	sub	eax, 1
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+40]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+12], 0
	jmp	.L244
.L247:
	mov	edx, ebx
	imul	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+4]
	add	eax, edx
	sub	esp, 8
	.cfi_def_cfa_offset 40
	push	eax
	.cfi_def_cfa_offset 44
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	mov	eax, DWORD PTR [esp+64]
	call	eax
	add	esp, 16
	.cfi_def_cfa_offset 32
	test	eax, eax
	jne	.L245
	imul	ebx, DWORD PTR [esp+12]
	mov	edx, ebx
	mov	eax, DWORD PTR [esp+4]
	add	eax, edx
	jmp	.L246
.L245:
	add	DWORD PTR [esp+12], 1
.L244:
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, DWORD PTR [esp]
	jb	.L247
	mov	eax, DWORD PTR [esp]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [eax], edx
	imul	ebx, DWORD PTR [esp]
	mov	edx, ebx
	mov	eax, DWORD PTR [esp+4]
	add	eax, edx
	sub	esp, 4
	.cfi_def_cfa_offset 36
	push	DWORD PTR [esp+48]
	.cfi_def_cfa_offset 40
	push	DWORD PTR [esp+40]
	.cfi_def_cfa_offset 44
	push	eax
	.cfi_def_cfa_offset 48
	call	memcpy
	add	esp, 16
	.cfi_def_cfa_offset 32
.L246:
	add	esp, 24
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE42:
	.size	lsearch, .-lsearch
	.globl	lfind
	.type	lfind, @function
lfind:
.LFB43:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 24
	.cfi_def_cfa_offset 32
	mov	ebx, DWORD PTR [esp+44]
	mov	eax, ebx
	sub	eax, 1
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+40]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+12], 0
	jmp	.L250
.L253:
	mov	edx, ebx
	imul	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+4]
	add	eax, edx
	sub	esp, 8
	.cfi_def_cfa_offset 40
	push	eax
	.cfi_def_cfa_offset 44
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	mov	eax, DWORD PTR [esp+64]
	call	eax
	add	esp, 16
	.cfi_def_cfa_offset 32
	test	eax, eax
	jne	.L251
	imul	ebx, DWORD PTR [esp+12]
	mov	edx, ebx
	mov	eax, DWORD PTR [esp+4]
	add	eax, edx
	jmp	.L252
.L251:
	add	DWORD PTR [esp+12], 1
.L250:
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, DWORD PTR [esp]
	jb	.L253
	mov	eax, 0
.L252:
	add	esp, 24
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE43:
	.size	lfind, .-lfind
	.globl	abs
	.type	abs, @function
abs:
.LFB44:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	cdq
	mov	eax, edx
	xor	eax, DWORD PTR [esp+4]
	sub	eax, edx
	ret
	.cfi_endproc
.LFE44:
	.size	abs, .-abs
	.globl	atoi
	.type	atoi, @function
atoi:
.LFB45:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 0
	mov	DWORD PTR [esp+8], 0
	jmp	.L258
.L259:
	add	DWORD PTR [esp+20], 1
.L258:
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	push	eax
	.cfi_def_cfa_offset 24
	call	isspace
	add	esp, 4
	.cfi_def_cfa_offset 20
	test	eax, eax
	jne	.L259
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	cmp	eax, 43
	je	.L260
	cmp	eax, 45
	jne	.L262
	mov	DWORD PTR [esp+8], 1
.L260:
	add	DWORD PTR [esp+20], 1
	jmp	.L262
.L263:
	mov	edx, DWORD PTR [esp+12]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	eax, DWORD PTR [esp+20]
	lea	edx, [eax+1]
	mov	DWORD PTR [esp+20], edx
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	lea	edx, [eax-48]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR [esp+12], eax
.L262:
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L263
	cmp	DWORD PTR [esp+8], 0
	jne	.L264
	mov	eax, DWORD PTR [esp+12]
	neg	eax
	jmp	.L266
.L264:
	mov	eax, DWORD PTR [esp+12]
.L266:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE45:
	.size	atoi, .-atoi
	.globl	atol
	.type	atol, @function
atol:
.LFB46:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 0
	mov	DWORD PTR [esp+8], 0
	jmp	.L269
.L270:
	add	DWORD PTR [esp+20], 1
.L269:
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	push	eax
	.cfi_def_cfa_offset 24
	call	isspace
	add	esp, 4
	.cfi_def_cfa_offset 20
	test	eax, eax
	jne	.L270
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	cmp	eax, 43
	je	.L271
	cmp	eax, 45
	jne	.L273
	mov	DWORD PTR [esp+8], 1
.L271:
	add	DWORD PTR [esp+20], 1
	jmp	.L273
.L274:
	mov	edx, DWORD PTR [esp+12]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	eax, DWORD PTR [esp+20]
	lea	edx, [eax+1]
	mov	DWORD PTR [esp+20], edx
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	lea	edx, [eax-48]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR [esp+12], eax
.L273:
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L274
	cmp	DWORD PTR [esp+8], 0
	jne	.L275
	mov	eax, DWORD PTR [esp+12]
	neg	eax
	jmp	.L277
.L275:
	mov	eax, DWORD PTR [esp+12]
.L277:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE46:
	.size	atol, .-atol
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 16
	.cfi_def_cfa_offset 24
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+12], 0
	mov	DWORD PTR [esp+4], 0
	jmp	.L280
.L281:
	add	DWORD PTR [esp+24], 1
.L280:
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	push	eax
	.cfi_def_cfa_offset 28
	call	isspace
	add	esp, 4
	.cfi_def_cfa_offset 24
	test	eax, eax
	jne	.L281
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	cmp	eax, 43
	je	.L282
	cmp	eax, 45
	jne	.L284
	mov	DWORD PTR [esp+4], 1
.L282:
	add	DWORD PTR [esp+24], 1
	jmp	.L284
.L285:
	mov	ecx, DWORD PTR [esp+8]
	mov	ebx, DWORD PTR [esp+12]
	mov	eax, ecx
	mov	edx, ebx
	shld	edx, eax, 2
	sal	eax, 2
	add	eax, ecx
	adc	edx, ebx
	add	eax, eax
	adc	edx, edx
	mov	ecx, DWORD PTR [esp+24]
	lea	ebx, [ecx+1]
	mov	DWORD PTR [esp+24], ebx
	movzx	ecx, BYTE PTR [ecx]
	movsx	ecx, cl
	sub	ecx, 48
	mov	ebx, ecx
	sar	ebx, 31
	sub	eax, ecx
	sbb	edx, ebx
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
.L284:
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	sub	eax, 48
	cmp	eax, 9
	jbe	.L285
	cmp	DWORD PTR [esp+4], 0
	jne	.L286
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	neg	eax
	adc	edx, 0
	neg	edx
	jmp	.L288
.L286:
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
.L288:
	add	esp, 16
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE47:
	.size	atoll, .-atoll
	.globl	bsearch
	.type	bsearch, @function
bsearch:
.LFB48:
	.cfi_startproc
	sub	esp, 28
	.cfi_def_cfa_offset 32
	jmp	.L291
.L296:
	mov	eax, DWORD PTR [esp+40]
	shr	eax
	imul	eax, DWORD PTR [esp+44]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+36]
	add	eax, edx
	mov	DWORD PTR [esp+12], eax
	sub	esp, 8
	.cfi_def_cfa_offset 40
	push	DWORD PTR [esp+20]
	.cfi_def_cfa_offset 44
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	mov	eax, DWORD PTR [esp+64]
	call	eax
	mov	DWORD PTR [esp+24], eax
	add	esp, 16
	.cfi_def_cfa_offset 32
	cmp	DWORD PTR [esp+8], 0
	jns	.L292
	mov	eax, DWORD PTR [esp+40]
	shr	eax
	mov	DWORD PTR [esp+40], eax
	jmp	.L291
.L292:
	cmp	DWORD PTR [esp+8], 0
	jle	.L294
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+44]
	add	eax, edx
	mov	DWORD PTR [esp+36], eax
	mov	eax, DWORD PTR [esp+40]
	shr	eax
	mov	edx, DWORD PTR [esp+40]
	sub	edx, eax
	lea	eax, [edx-1]
	mov	DWORD PTR [esp+40], eax
	jmp	.L291
.L294:
	mov	eax, DWORD PTR [esp+12]
	jmp	.L295
.L291:
	cmp	DWORD PTR [esp+40], 0
	jne	.L296
	mov	eax, 0
.L295:
	add	esp, 28
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE48:
	.size	bsearch, .-bsearch
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB49:
	.cfi_startproc
	sub	esp, 28
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [esp+8], eax
	jmp	.L299
.L303:
	mov	eax, DWORD PTR [esp+8]
	sar	eax
	imul	eax, DWORD PTR [esp+44]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+12]
	add	eax, edx
	mov	DWORD PTR [esp+4], eax
	sub	esp, 4
	.cfi_def_cfa_offset 36
	push	DWORD PTR [esp+56]
	.cfi_def_cfa_offset 40
	push	DWORD PTR [esp+12]
	.cfi_def_cfa_offset 44
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	mov	eax, DWORD PTR [esp+64]
	call	eax
	mov	DWORD PTR [esp+16], eax
	add	esp, 16
	.cfi_def_cfa_offset 32
	cmp	DWORD PTR [esp], 0
	jne	.L300
	mov	eax, DWORD PTR [esp+4]
	jmp	.L301
.L300:
	cmp	DWORD PTR [esp], 0
	jle	.L302
	mov	edx, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp+44]
	add	eax, edx
	mov	DWORD PTR [esp+12], eax
	sub	DWORD PTR [esp+8], 1
.L302:
	sar	DWORD PTR [esp+8]
.L299:
	cmp	DWORD PTR [esp+8], 0
	jne	.L303
	mov	eax, 0
.L301:
	add	esp, 28
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE49:
	.size	bsearch_r, .-bsearch_r
	.globl	div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+8]
	cdq
	idiv	DWORD PTR [esp+12]
	mov	ecx, eax
	mov	eax, DWORD PTR [esp+8]
	cdq
	idiv	DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+4]
	mov	DWORD PTR [eax], ecx
	mov	eax, DWORD PTR [esp+4]
	mov	DWORD PTR [eax+4], edx
	mov	eax, DWORD PTR [esp+4]
	ret	4
	.cfi_endproc
.LFE50:
	.size	div, .-div
	.globl	imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB51:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 8
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+16]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	edx, edx
	sar	edx, 31
	mov	eax, edx
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, ecx
	mov	edx, ebx
	xor	eax, DWORD PTR [esp]
	xor	edx, DWORD PTR [esp+4]
	sub	eax, ecx
	sbb	edx, ebx
	add	esp, 8
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE51:
	.size	imaxabs, .-imaxabs
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB52:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	sub	esp, 36
	.cfi_def_cfa_offset 48
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+56]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+60]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+64]
	mov	DWORD PTR [esp+4], eax
	push	DWORD PTR [esp+4]
	.cfi_def_cfa_offset 52
	push	DWORD PTR [esp+4]
	.cfi_def_cfa_offset 56
	push	DWORD PTR [esp+20]
	.cfi_def_cfa_offset 60
	push	DWORD PTR [esp+20]
	.cfi_def_cfa_offset 64
	call	__divdi3
	add	esp, 16
	.cfi_def_cfa_offset 48
	mov	esi, eax
	mov	edi, edx
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	push	DWORD PTR [esp+4]
	.cfi_def_cfa_offset 52
	push	DWORD PTR [esp+4]
	.cfi_def_cfa_offset 56
	push	edx
	.cfi_def_cfa_offset 60
	push	eax
	.cfi_def_cfa_offset 64
	call	__moddi3
	mov	ecx, DWORD PTR [esp+64]
	mov	DWORD PTR [ecx], esi
	mov	DWORD PTR [ecx+4], edi
	mov	ecx, DWORD PTR [esp+64]
	mov	DWORD PTR [ecx+8], eax
	mov	DWORD PTR [ecx+12], edx
	mov	eax, DWORD PTR [esp+64]
	add	esp, 52
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	4
	.cfi_endproc
.LFE52:
	.size	imaxdiv, .-imaxdiv
	.globl	labs
	.type	labs, @function
labs:
.LFB53:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	cdq
	mov	eax, edx
	xor	eax, DWORD PTR [esp+4]
	sub	eax, edx
	ret
	.cfi_endproc
.LFE53:
	.size	labs, .-labs
	.globl	ldiv
	.type	ldiv, @function
ldiv:
.LFB54:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+8]
	cdq
	idiv	DWORD PTR [esp+12]
	mov	ecx, eax
	mov	eax, DWORD PTR [esp+8]
	cdq
	idiv	DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+4]
	mov	DWORD PTR [eax], ecx
	mov	eax, DWORD PTR [esp+4]
	mov	DWORD PTR [eax+4], edx
	mov	eax, DWORD PTR [esp+4]
	ret	4
	.cfi_endproc
.LFE54:
	.size	ldiv, .-ldiv
	.globl	llabs
	.type	llabs, @function
llabs:
.LFB55:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 8
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+16]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	edx, edx
	sar	edx, 31
	mov	eax, edx
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, ecx
	mov	edx, ebx
	xor	eax, DWORD PTR [esp]
	xor	edx, DWORD PTR [esp+4]
	sub	eax, ecx
	sbb	edx, ebx
	add	esp, 8
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE55:
	.size	llabs, .-llabs
	.globl	lldiv
	.type	lldiv, @function
lldiv:
.LFB56:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	sub	esp, 36
	.cfi_def_cfa_offset 48
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+56]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+60]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+64]
	mov	DWORD PTR [esp+4], eax
	push	DWORD PTR [esp+4]
	.cfi_def_cfa_offset 52
	push	DWORD PTR [esp+4]
	.cfi_def_cfa_offset 56
	push	DWORD PTR [esp+20]
	.cfi_def_cfa_offset 60
	push	DWORD PTR [esp+20]
	.cfi_def_cfa_offset 64
	call	__divdi3
	add	esp, 16
	.cfi_def_cfa_offset 48
	mov	esi, eax
	mov	edi, edx
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	push	DWORD PTR [esp+4]
	.cfi_def_cfa_offset 52
	push	DWORD PTR [esp+4]
	.cfi_def_cfa_offset 56
	push	edx
	.cfi_def_cfa_offset 60
	push	eax
	.cfi_def_cfa_offset 64
	call	__moddi3
	mov	ecx, DWORD PTR [esp+64]
	mov	DWORD PTR [ecx], esi
	mov	DWORD PTR [ecx+4], edi
	mov	ecx, DWORD PTR [esp+64]
	mov	DWORD PTR [ecx+8], eax
	mov	DWORD PTR [ecx+12], edx
	mov	eax, DWORD PTR [esp+64]
	add	esp, 52
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	4
	.cfi_endproc
.LFE56:
	.size	lldiv, .-lldiv
	.globl	wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	jmp	.L324
.L326:
	add	DWORD PTR [esp+4], 4
.L324:
	mov	eax, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	je	.L325
	mov	eax, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [eax]
	cmp	DWORD PTR [esp+8], eax
	jne	.L326
.L325:
	mov	eax, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	je	.L327
	mov	eax, DWORD PTR [esp+4]
	ret
.L327:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE57:
	.size	wcschr, .-wcschr
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB58:
	.cfi_startproc
	jmp	.L331
.L333:
	add	DWORD PTR [esp+4], 4
	add	DWORD PTR [esp+8], 4
.L331:
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	jne	.L332
	mov	eax, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	je	.L332
	mov	eax, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	jne	.L333
.L332:
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	jl	.L334
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	setg	al
	movzx	eax, al
	ret
.L334:
	mov	eax, -1
	ret
	.cfi_endproc
.LFE58:
	.size	wcscmp, .-wcscmp
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB59:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
.L338:
	mov	edx, DWORD PTR [esp+24]
	lea	eax, [edx+4]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+20]
	lea	ecx, [eax+4]
	mov	DWORD PTR [esp+20], ecx
	mov	edx, DWORD PTR [edx]
	mov	DWORD PTR [eax], edx
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	jne	.L338
	mov	eax, DWORD PTR [esp+12]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE59:
	.size	wcscpy, .-wcscpy
	.globl	wcslen
	.type	wcslen, @function
wcslen:
.LFB60:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	jmp	.L342
.L343:
	add	DWORD PTR [esp+20], 4
.L342:
	mov	eax, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	jne	.L343
	mov	eax, DWORD PTR [esp+20]
	sub	eax, DWORD PTR [esp+12]
	sar	eax, 2
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE60:
	.size	wcslen, .-wcslen
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
	jmp	.L347
.L349:
	sub	DWORD PTR [esp+12], 1
	add	DWORD PTR [esp+4], 4
	add	DWORD PTR [esp+8], 4
.L347:
	cmp	DWORD PTR [esp+12], 0
	je	.L348
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	jne	.L348
	mov	eax, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	je	.L348
	mov	eax, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	jne	.L349
.L348:
	cmp	DWORD PTR [esp+12], 0
	je	.L350
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	jl	.L351
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	setg	al
	movzx	eax, al
	ret
.L351:
	mov	eax, -1
	ret
.L350:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE61:
	.size	wcsncmp, .-wcsncmp
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB62:
	.cfi_startproc
	jmp	.L356
.L358:
	sub	DWORD PTR [esp+12], 1
	add	DWORD PTR [esp+4], 4
.L356:
	cmp	DWORD PTR [esp+12], 0
	je	.L357
	mov	eax, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [eax]
	cmp	DWORD PTR [esp+8], eax
	jne	.L358
.L357:
	cmp	DWORD PTR [esp+12], 0
	je	.L359
	mov	eax, DWORD PTR [esp+4]
	ret
.L359:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE62:
	.size	wmemchr, .-wmemchr
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB63:
	.cfi_startproc
	jmp	.L363
.L365:
	sub	DWORD PTR [esp+12], 1
	add	DWORD PTR [esp+4], 4
	add	DWORD PTR [esp+8], 4
.L363:
	cmp	DWORD PTR [esp+12], 0
	je	.L364
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	je	.L365
.L364:
	cmp	DWORD PTR [esp+12], 0
	je	.L366
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	jl	.L367
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [eax]
	cmp	edx, eax
	setg	al
	movzx	eax, al
	ret
.L367:
	mov	eax, -1
	ret
.L366:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE63:
	.size	wmemcmp, .-wmemcmp
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB64:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	jmp	.L372
.L373:
	mov	edx, DWORD PTR [esp+24]
	lea	eax, [edx+4]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+20]
	lea	ecx, [eax+4]
	mov	DWORD PTR [esp+20], ecx
	mov	edx, DWORD PTR [edx]
	mov	DWORD PTR [eax], edx
.L372:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+28], edx
	test	eax, eax
	jne	.L373
	mov	eax, DWORD PTR [esp+12]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE64:
	.size	wmemcpy, .-wmemcpy
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB65:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+20]
	cmp	eax, DWORD PTR [esp+24]
	jne	.L377
	mov	eax, DWORD PTR [esp+20]
	jmp	.L378
.L377:
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+24]
	sub	edx, eax
	mov	eax, DWORD PTR [esp+28]
	sal	eax, 2
	cmp	edx, eax
	jnb	.L383
	jmp	.L380
.L381:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [esp+24]
	add	eax, edx
	mov	edx, DWORD PTR [esp+28]
	lea	ecx, [0+edx*4]
	mov	edx, DWORD PTR [esp+20]
	add	edx, ecx
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [edx], eax
.L380:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+28], edx
	test	eax, eax
	jne	.L381
	jmp	.L382
.L384:
	mov	edx, DWORD PTR [esp+24]
	lea	eax, [edx+4]
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+20]
	lea	ecx, [eax+4]
	mov	DWORD PTR [esp+20], ecx
	mov	edx, DWORD PTR [edx]
	mov	DWORD PTR [eax], edx
.L383:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+28], edx
	test	eax, eax
	jne	.L384
.L382:
	mov	eax, DWORD PTR [esp+12]
.L378:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE65:
	.size	wmemmove, .-wmemmove
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB66:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	jmp	.L387
.L388:
	mov	eax, DWORD PTR [esp+20]
	lea	edx, [eax+4]
	mov	DWORD PTR [esp+20], edx
	mov	edx, DWORD PTR [esp+24]
	mov	DWORD PTR [eax], edx
.L387:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+28], edx
	test	eax, eax
	jne	.L388
	mov	eax, DWORD PTR [esp+12]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE66:
	.size	wmemset, .-wmemset
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB67:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, DWORD PTR [esp+8]
	jnb	.L392
	mov	eax, DWORD PTR [esp+28]
	add	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+28]
	add	DWORD PTR [esp+8], eax
	jmp	.L393
.L394:
	sub	DWORD PTR [esp+12], 1
	sub	DWORD PTR [esp+8], 1
	mov	eax, DWORD PTR [esp+12]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
.L393:
	cmp	DWORD PTR [esp+28], 0
	jne	.L394
	jmp	.L391
.L392:
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, DWORD PTR [esp+8]
	je	.L391
	jmp	.L396
.L397:
	mov	edx, DWORD PTR [esp+12]
	lea	eax, [edx+1]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+8]
	lea	ecx, [eax+1]
	mov	DWORD PTR [esp+8], ecx
	movzx	edx, BYTE PTR [edx]
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
.L396:
	cmp	DWORD PTR [esp+28], 0
	jne	.L397
.L391:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE67:
	.size	bcopy, .-bcopy
	.globl	rotl64
	.type	rotl64, @function
rotl64:
.LFB68:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	sub	esp, 12
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+32]
	mov	esi, eax
	mov	edi, edx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	.L403
	mov	edi, esi
	xor	esi, esi
.L403:
	mov	ecx, DWORD PTR [esp+32]
	neg	ecx
	and	ecx, 63
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	.L404
	mov	eax, edx
	xor	edx, edx
.L404:
	or	eax, esi
	or	edx, edi
	add	esp, 12
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE68:
	.size	rotl64, .-rotl64
	.globl	rotr64
	.type	rotr64, @function
rotr64:
.LFB69:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	sub	esp, 12
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+32]
	mov	esi, eax
	mov	edi, edx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	.L408
	mov	esi, edi
	xor	edi, edi
.L408:
	mov	ecx, DWORD PTR [esp+32]
	neg	ecx
	and	ecx, 63
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	.L409
	mov	edx, eax
	xor	eax, eax
.L409:
	or	eax, esi
	or	edx, edi
	add	esp, 12
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE69:
	.size	rotr64, .-rotr64
	.globl	rotl32
	.type	rotl32, @function
rotl32:
.LFB70:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+4]
	mov	ecx, eax
	rol	edx, cl
	mov	eax, edx
	ret
	.cfi_endproc
.LFE70:
	.size	rotl32, .-rotl32
	.globl	rotr32
	.type	rotr32, @function
rotr32:
.LFB71:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+4]
	mov	ecx, eax
	ror	edx, cl
	mov	eax, edx
	ret
	.cfi_endproc
.LFE71:
	.size	rotr32, .-rotr32
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB72:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+4]
	mov	ecx, eax
	rol	edx, cl
	mov	eax, edx
	ret
	.cfi_endproc
.LFE72:
	.size	rotl_sz, .-rotl_sz
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB73:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+4]
	mov	ecx, eax
	ror	edx, cl
	mov	eax, edx
	ret
	.cfi_endproc
.LFE73:
	.size	rotr_sz, .-rotr_sz
	.globl	rotl16
	.type	rotl16, @function
rotl16:
.LFB74:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 4
	.cfi_def_cfa_offset 12
	mov	eax, DWORD PTR [esp+12]
	mov	WORD PTR [esp], ax
	movzx	edx, WORD PTR [esp]
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	ebx, eax
	movzx	edx, WORD PTR [esp]
	mov	eax, 16
	sub	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, ebx
	add	esp, 4
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE74:
	.size	rotl16, .-rotl16
	.globl	rotr16
	.type	rotr16, @function
rotr16:
.LFB75:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 4
	.cfi_def_cfa_offset 12
	mov	eax, DWORD PTR [esp+12]
	mov	WORD PTR [esp], ax
	movzx	edx, WORD PTR [esp]
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	ebx, eax
	movzx	edx, WORD PTR [esp]
	mov	eax, 16
	sub	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	or	eax, ebx
	add	esp, 4
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE75:
	.size	rotr16, .-rotr16
	.globl	rotl8
	.type	rotl8, @function
rotl8:
.LFB76:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 4
	.cfi_def_cfa_offset 12
	mov	eax, DWORD PTR [esp+12]
	mov	BYTE PTR [esp], al
	movzx	edx, BYTE PTR [esp]
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	ebx, eax
	movzx	edx, BYTE PTR [esp]
	mov	eax, 8
	sub	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, ebx
	add	esp, 4
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE76:
	.size	rotl8, .-rotl8
	.globl	rotr8
	.type	rotr8, @function
rotr8:
.LFB77:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 4
	.cfi_def_cfa_offset 12
	mov	eax, DWORD PTR [esp+12]
	mov	BYTE PTR [esp], al
	movzx	edx, BYTE PTR [esp]
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	ebx, eax
	movzx	edx, BYTE PTR [esp]
	mov	eax, 8
	sub	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	or	eax, ebx
	add	esp, 4
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE77:
	.size	rotr8, .-rotr8
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB78:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	WORD PTR [esp], ax
	mov	DWORD PTR [esp+16], 255
	movzx	eax, WORD PTR [esp]
	mov	edx, DWORD PTR [esp+16]
	sal	edx, 8
	and	eax, edx
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR [esp+16]
	and	ax, WORD PTR [esp]
	sal	eax, 8
	or	eax, edx
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE78:
	.size	bswap_16, .-bswap_16
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB79:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 255
	mov	eax, DWORD PTR [esp+12]
	sal	eax, 24
	and	eax, DWORD PTR [esp+20]
	shr	eax, 24
	mov	edx, eax
	mov	eax, DWORD PTR [esp+12]
	sal	eax, 16
	and	eax, DWORD PTR [esp+20]
	shr	eax, 8
	or	edx, eax
	mov	eax, DWORD PTR [esp+12]
	sal	eax, 8
	and	eax, DWORD PTR [esp+20]
	sal	eax, 8
	or	edx, eax
	mov	eax, DWORD PTR [esp+20]
	and	eax, DWORD PTR [esp+12]
	sal	eax, 24
	or	eax, edx
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE79:
	.size	bswap_32, .-bswap_32
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB80:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 24
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp+16], 255
	mov	DWORD PTR [esp+20], 0
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 24
	and	eax, DWORD PTR [esp]
	and	edx, DWORD PTR [esp+4]
	mov	eax, edx
	xor	edx, edx
	shr	eax, 24
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 16
	and	eax, DWORD PTR [esp]
	and	edx, DWORD PTR [esp+4]
	mov	eax, edx
	xor	edx, edx
	shr	eax, 8
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 8
	and	eax, DWORD PTR [esp]
	and	edx, DWORD PTR [esp+4]
	shrd	eax, edx, 24
	shr	edx, 24
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	edx, eax
	xor	eax, eax
	and	eax, DWORD PTR [esp]
	and	edx, DWORD PTR [esp+4]
	shrd	eax, edx, 8
	shr	edx, 8
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	shld	edx, eax, 24
	sal	eax, 24
	and	eax, DWORD PTR [esp]
	and	edx, DWORD PTR [esp+4]
	shld	edx, eax, 8
	sal	eax, 8
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	shld	edx, eax, 16
	sal	eax, 16
	and	eax, DWORD PTR [esp]
	and	edx, DWORD PTR [esp+4]
	shld	edx, eax, 24
	sal	eax, 24
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	shld	edx, eax, 8
	sal	eax, 8
	and	eax, DWORD PTR [esp]
	and	edx, DWORD PTR [esp+4]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 8
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	and	eax, DWORD PTR [esp+16]
	and	edx, DWORD PTR [esp+20]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 24
	or	eax, ecx
	or	edx, ebx
	add	esp, 24
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE80:
	.size	bswap_64, .-bswap_64
	.globl	ffs
	.type	ffs, @function
ffs:
.LFB81:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 0
	jmp	.L440
.L443:
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+12]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	and	eax, 1
	je	.L441
	mov	eax, DWORD PTR [esp+12]
	add	eax, 1
	jmp	.L442
.L441:
	add	DWORD PTR [esp+12], 1
.L440:
	cmp	DWORD PTR [esp+12], 31
	jbe	.L443
	mov	eax, 0
.L442:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE81:
	.size	ffs, .-ffs
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB82:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	test	eax, eax
	jne	.L446
	mov	eax, 0
	jmp	.L447
.L446:
	mov	ebx, 1
	jmp	.L448
.L449:
	sar	eax
	add	ebx, 1
.L448:
	mov	edx, eax
	and	edx, 1
	je	.L449
	mov	eax, ebx
.L447:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE82:
	.size	libiberty_ffs, .-libiberty_ffs
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB83:
	.cfi_startproc
	fld	DWORD PTR .LC3
	fcomp	DWORD PTR [esp+4]
	fnstsw	ax
	sahf
	ja	.L452
	fld	DWORD PTR [esp+4]
	fcomp	DWORD PTR .LC4
	fnstsw	ax
	sahf
	jbe	.L457
.L452:
	mov	eax, 1
	ret
.L457:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE83:
	.size	gl_isinff, .-gl_isinff
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB84:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+16]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+4], eax
	fld	QWORD PTR .LC5
	fcomp	QWORD PTR [esp]
	fnstsw	ax
	sahf
	ja	.L459
	fld	QWORD PTR [esp]
	fcomp	QWORD PTR .LC6
	fnstsw	ax
	sahf
	jbe	.L464
.L459:
	mov	eax, 1
	jmp	.L463
.L464:
	mov	eax, 0
.L463:
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE84:
	.size	gl_isinfd, .-gl_isinfd
	.globl	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB85:
	.cfi_startproc
	fld	TBYTE PTR [esp+4]
	fld	TBYTE PTR .LC7
	fcompp
	fnstsw	ax
	sahf
	ja	.L467
	fld	TBYTE PTR .LC8
	fld	TBYTE PTR [esp+4]
	fcompp
	fnstsw	ax
	sahf
	jbe	.L472
.L467:
	mov	eax, 1
	ret
.L472:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE85:
	.size	gl_isinfl, .-gl_isinfl
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB86:
	.cfi_startproc
	fild	DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	fstp	TBYTE PTR [eax]
	nop
	ret
	.cfi_endproc
.LFE86:
	.size	_Qp_itoq, .-_Qp_itoq
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB87:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	fld	DWORD PTR [esp+20]
	fld	DWORD PTR [esp+20]
	fucompp
	fnstsw	ax
	sahf
	jp	.L475
	fld	DWORD PTR [esp+20]
	fadd	st, st(0)
	fld	DWORD PTR [esp+20]
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L486
	fld	DWORD PTR [esp+20]
	fucompp
	fnstsw	ax
	sahf
	je	.L475
	jmp	.L483
.L486:
	fstp	st(0)
.L483:
	cmp	DWORD PTR [esp+24], 0
	jns	.L477
	fld	DWORD PTR .LC9
	jmp	.L478
.L477:
	fld	DWORD PTR .LC10
.L478:
	fstp	DWORD PTR [esp+12]
.L481:
	mov	eax, DWORD PTR [esp+24]
	and	eax, 1
	je	.L479
	fld	DWORD PTR [esp+20]
	fmul	DWORD PTR [esp+12]
	fstp	DWORD PTR [esp+20]
.L479:
	mov	eax, DWORD PTR [esp+24]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [esp+24], eax
	cmp	DWORD PTR [esp+24], 0
	je	.L475
	fld	DWORD PTR [esp+12]
	fmul	st, st(0)
	fstp	DWORD PTR [esp+12]
	jmp	.L481
.L475:
	fld	DWORD PTR [esp+20]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE87:
	.size	ldexpf, .-ldexpf
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB88:
	.cfi_startproc
	sub	esp, 28
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	fld	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	fucompp
	fnstsw	ax
	sahf
	jp	.L488
	fld	QWORD PTR [esp]
	fadd	st, st(0)
	fld	QWORD PTR [esp]
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L499
	fld	QWORD PTR [esp]
	fucompp
	fnstsw	ax
	sahf
	je	.L488
	jmp	.L496
.L499:
	fstp	st(0)
.L496:
	cmp	DWORD PTR [esp+40], 0
	jns	.L490
	fld	QWORD PTR .LC11
	jmp	.L491
.L490:
	fld	QWORD PTR .LC12
.L491:
	fstp	QWORD PTR [esp+16]
.L494:
	mov	eax, DWORD PTR [esp+40]
	and	eax, 1
	je	.L492
	fld	QWORD PTR [esp]
	fmul	QWORD PTR [esp+16]
	fstp	QWORD PTR [esp]
.L492:
	mov	eax, DWORD PTR [esp+40]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [esp+40], eax
	cmp	DWORD PTR [esp+40], 0
	je	.L488
	fld	QWORD PTR [esp+16]
	fmul	st, st(0)
	fstp	QWORD PTR [esp+16]
	jmp	.L494
.L488:
	fld	QWORD PTR [esp]
	add	esp, 28
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE88:
	.size	ldexp, .-ldexp
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB89:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	fld	TBYTE PTR [esp+20]
	fld	TBYTE PTR [esp+20]
	fucompp
	fnstsw	ax
	sahf
	jp	.L501
	fld	TBYTE PTR [esp+20]
	fadd	st, st(0)
	fld	TBYTE PTR [esp+20]
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L512
	fld	TBYTE PTR [esp+20]
	fucompp
	fnstsw	ax
	sahf
	je	.L501
	jmp	.L509
.L512:
	fstp	st(0)
.L509:
	cmp	DWORD PTR [esp+32], 0
	jns	.L503
	fld	TBYTE PTR .LC13
	jmp	.L504
.L503:
	fld	TBYTE PTR .LC14
.L504:
	fstp	TBYTE PTR [esp+4]
.L507:
	mov	eax, DWORD PTR [esp+32]
	and	eax, 1
	je	.L505
	fld	TBYTE PTR [esp+20]
	fld	TBYTE PTR [esp+4]
	fmulp	st(1), st
	fstp	TBYTE PTR [esp+20]
.L505:
	mov	eax, DWORD PTR [esp+32]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [esp+32], eax
	cmp	DWORD PTR [esp+32], 0
	je	.L501
	fld	TBYTE PTR [esp+4]
	fmul	st, st(0)
	fstp	TBYTE PTR [esp+4]
	jmp	.L507
.L501:
	fld	TBYTE PTR [esp+20]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE89:
	.size	ldexpl, .-ldexpl
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+8], eax
	jmp	.L514
.L515:
	mov	eax, DWORD PTR [esp+12]
	lea	edx, [eax+1]
	mov	DWORD PTR [esp+12], edx
	movzx	ecx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+8]
	lea	edx, [eax+1]
	mov	DWORD PTR [esp+8], edx
	movzx	edx, BYTE PTR [eax]
	xor	edx, ecx
	mov	BYTE PTR [eax], dl
	sub	DWORD PTR [esp+28], 1
.L514:
	cmp	DWORD PTR [esp+28], 0
	jne	.L515
	mov	eax, DWORD PTR [esp+20]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE90:
	.size	memxor, .-memxor
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB91:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	push	DWORD PTR [esp+20]
	.cfi_def_cfa_offset 24
	call	strlen
	add	esp, 4
	.cfi_def_cfa_offset 20
	mov	edx, DWORD PTR [esp+20]
	add	eax, edx
	mov	DWORD PTR [esp+12], eax
	jmp	.L519
.L521:
	add	DWORD PTR [esp+24], 1
	add	DWORD PTR [esp+12], 1
	sub	DWORD PTR [esp+28], 1
.L519:
	cmp	DWORD PTR [esp+28], 0
	je	.L520
	mov	eax, DWORD PTR [esp+24]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+12]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	.L521
.L520:
	cmp	DWORD PTR [esp+28], 0
	jne	.L522
	mov	eax, DWORD PTR [esp+12]
	mov	BYTE PTR [eax], 0
.L522:
	mov	eax, DWORD PTR [esp+20]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE91:
	.size	strncat, .-strncat
	.globl	strnlen
	.type	strnlen, @function
strnlen:
.LFB92:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 0
	jmp	.L526
.L531:
	add	DWORD PTR [esp+12], 1
.L526:
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, DWORD PTR [esp+24]
	jnb	.L527
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+12]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	.L531
.L527:
	mov	eax, DWORD PTR [esp+12]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	jmp	.L534
.L538:
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+12], eax
	jmp	.L535
.L537:
	mov	eax, DWORD PTR [esp+12]
	lea	edx, [eax+1]
	mov	DWORD PTR [esp+12], edx
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jne	.L535
	mov	eax, DWORD PTR [esp+20]
	jmp	.L536
.L535:
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	.L537
	add	DWORD PTR [esp+20], 1
.L534:
	mov	eax, DWORD PTR [esp+20]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	.L538
	mov	eax, 0
.L536:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE93:
	.size	strpbrk, .-strpbrk
	.globl	strrchr
	.type	strrchr, @function
strrchr:
.LFB94:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], 0
.L542:
	movzx	edx, BYTE PTR [eax]
	movsx	edx, dl
	cmp	DWORD PTR [esp+24], edx
	jne	.L541
	mov	DWORD PTR [esp+12], eax
.L541:
	mov	edx, eax
	lea	eax, [edx+1]
	movzx	edx, BYTE PTR [edx]
	test	dl, dl
	jne	.L542
	mov	eax, DWORD PTR [esp+12]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE94:
	.size	strrchr, .-strrchr
	.globl	strstr
	.type	strstr, @function
strstr:
.LFB95:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	push	DWORD PTR [esp+24]
	.cfi_def_cfa_offset 24
	call	strlen
	add	esp, 4
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+8], eax
	cmp	DWORD PTR [esp+8], 0
	jne	.L548
	mov	eax, DWORD PTR [esp+20]
	jmp	.L547
.L550:
	push	DWORD PTR [esp+8]
	.cfi_def_cfa_offset 24
	push	DWORD PTR [esp+28]
	.cfi_def_cfa_offset 28
	push	DWORD PTR [esp+20]
	.cfi_def_cfa_offset 32
	call	strncmp
	add	esp, 12
	.cfi_def_cfa_offset 20
	test	eax, eax
	jne	.L549
	mov	eax, DWORD PTR [esp+12]
	jmp	.L547
.L549:
	add	DWORD PTR [esp+12], 1
.L548:
	mov	eax, DWORD PTR [esp+24]
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	push	eax
	.cfi_def_cfa_offset 24
	push	DWORD PTR [esp+16]
	.cfi_def_cfa_offset 28
	call	strchr
	add	esp, 8
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], eax
	cmp	DWORD PTR [esp+12], 0
	jne	.L550
	mov	eax, 0
.L547:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE95:
	.size	strstr, .-strstr
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	fldz
	fcomp	QWORD PTR [esp+8]
	fnstsw	ax
	sahf
	jbe	.L553
	fld	QWORD PTR [esp]
	ftst
	fnstsw	ax
	fstp	st(0)
	sahf
	ja	.L555
.L553:
	fld	QWORD PTR [esp+8]
	ftst
	fnstsw	ax
	fstp	st(0)
	sahf
	jbe	.L556
	fldz
	fcomp	QWORD PTR [esp]
	fnstsw	ax
	sahf
	jbe	.L556
.L555:
	fld	QWORD PTR [esp+8]
	fchs
	jmp	.L559
.L556:
	fld	QWORD PTR [esp+8]
.L559:
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE96:
	.size	copysign, .-copysign
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+24]
	sub	eax, DWORD PTR [esp+32]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+20]
	add	eax, edx
	mov	DWORD PTR [esp+8], eax
	cmp	DWORD PTR [esp+32], 0
	jne	.L564
	mov	eax, DWORD PTR [esp+20]
	jmp	.L565
.L564:
	mov	eax, DWORD PTR [esp+24]
	cmp	eax, DWORD PTR [esp+32]
	setb	al
	movzx	eax, al
	test	eax, eax
	je	.L566
	mov	eax, 0
	jmp	.L565
.L566:
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	jmp	.L567
.L569:
	mov	eax, DWORD PTR [esp+12]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [esp+28]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jne	.L568
	mov	eax, DWORD PTR [esp+32]
	lea	ecx, [eax-1]
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [esp+12]
	add	eax, 1
	push	ecx
	.cfi_def_cfa_offset 24
	push	edx
	.cfi_def_cfa_offset 28
	push	eax
	.cfi_def_cfa_offset 32
	call	memcmp
	add	esp, 12
	.cfi_def_cfa_offset 20
	test	eax, eax
	jne	.L568
	mov	eax, DWORD PTR [esp+12]
	jmp	.L565
.L568:
	add	DWORD PTR [esp+12], 1
.L567:
	mov	eax, DWORD PTR [esp+12]
	cmp	DWORD PTR [esp+8], eax
	jnb	.L569
	mov	eax, 0
.L565:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE97:
	.size	memmem, .-memmem
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB98:
	.cfi_startproc
	push	DWORD PTR [esp+12]
	.cfi_def_cfa_offset 8
	push	DWORD PTR [esp+12]
	.cfi_def_cfa_offset 12
	push	DWORD PTR [esp+12]
	.cfi_def_cfa_offset 16
	call	memcpy
	mov	edx, DWORD PTR [esp+24]
	add	eax, edx
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE98:
	.size	mempcpy, .-mempcpy
	.globl	frexp
	.type	frexp, @function
frexp:
.LFB99:
	.cfi_startproc
	sub	esp, 28
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp+16], 0
	mov	DWORD PTR [esp+20], 0
	fldz
	fcomp	QWORD PTR [esp]
	fnstsw	ax
	sahf
	jbe	.L574
	fld	QWORD PTR [esp]
	fchs
	fstp	QWORD PTR [esp]
	mov	DWORD PTR [esp+20], 1
.L574:
	fld1
	fld	QWORD PTR [esp]
	fcompp
	fnstsw	ax
	sahf
	jb	.L591
	jmp	.L578
.L579:
	add	DWORD PTR [esp+16], 1
	fld	QWORD PTR [esp]
	fld	QWORD PTR .LC12
	fdivp	st(1), st
	fstp	QWORD PTR [esp]
.L578:
	fld1
	fld	QWORD PTR [esp]
	fcompp
	fnstsw	ax
	sahf
	jnb	.L579
	jmp	.L580
.L591:
	fld	QWORD PTR .LC11
	fcomp	QWORD PTR [esp]
	fnstsw	ax
	sahf
	jbe	.L580
	fld	QWORD PTR [esp]
	fldz
	fucompp
	fnstsw	ax
	sahf
	jp	.L583
	fld	QWORD PTR [esp]
	fldz
	fucompp
	fnstsw	ax
	sahf
	je	.L580
	jmp	.L583
.L584:
	sub	DWORD PTR [esp+16], 1
	fld	QWORD PTR [esp]
	fadd	st, st(0)
	fstp	QWORD PTR [esp]
.L583:
	fld	QWORD PTR .LC11
	fcomp	QWORD PTR [esp]
	fnstsw	ax
	sahf
	ja	.L584
.L580:
	mov	eax, DWORD PTR [esp+40]
	mov	edx, DWORD PTR [esp+16]
	mov	DWORD PTR [eax], edx
	cmp	DWORD PTR [esp+20], 0
	je	.L585
	fld	QWORD PTR [esp]
	fchs
	fstp	QWORD PTR [esp]
.L585:
	fld	QWORD PTR [esp]
	add	esp, 28
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	sub	esp, 36
	.cfi_def_cfa_offset 40
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+44]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp+24], 0
	mov	DWORD PTR [esp+28], 0
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+20], edx
	jmp	.L594
.L596:
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	and	eax, 1
	mov	edx, 0
	mov	ecx, eax
	or	ecx, edx
	je	.L595
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	add	DWORD PTR [esp+24], eax
	adc	DWORD PTR [esp+28], edx
.L595:
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	add	eax, eax
	adc	edx, edx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	shrd	eax, edx, 1
	shr	edx
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+20], edx
.L594:
	mov	eax, DWORD PTR [esp+16]
	or	eax, DWORD PTR [esp+20]
	jne	.L596
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	add	esp, 36
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE100:
	.size	__muldi3, .-__muldi3
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB101:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 1
	mov	DWORD PTR [esp+8], 0
	jmp	.L600
.L602:
	sal	DWORD PTR [esp+24]
	sal	DWORD PTR [esp+12]
.L600:
	mov	eax, DWORD PTR [esp+24]
	cmp	eax, DWORD PTR [esp+20]
	jnb	.L603
	cmp	DWORD PTR [esp+12], 0
	je	.L603
	mov	eax, DWORD PTR [esp+24]
	test	eax, eax
	jns	.L602
	jmp	.L603
.L605:
	mov	eax, DWORD PTR [esp+20]
	cmp	eax, DWORD PTR [esp+24]
	jb	.L604
	mov	eax, DWORD PTR [esp+24]
	sub	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+12]
	or	DWORD PTR [esp+8], eax
.L604:
	shr	DWORD PTR [esp+12]
	shr	DWORD PTR [esp+24]
.L603:
	cmp	DWORD PTR [esp+12], 0
	jne	.L605
	cmp	DWORD PTR [esp+28], 0
	je	.L606
	mov	eax, DWORD PTR [esp+20]
	jmp	.L607
.L606:
	mov	eax, DWORD PTR [esp+8]
.L607:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	BYTE PTR [esp], al
	cmp	BYTE PTR [esp], 0
	jns	.L610
	not	BYTE PTR [esp]
.L610:
	cmp	BYTE PTR [esp], 0
	jne	.L611
	mov	eax, 7
	jmp	.L612
.L611:
	movsx	eax, BYTE PTR [esp]
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+16]
	sub	eax, 1
.L612:
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE102:
	.size	__clrsbqi2, .-__clrsbqi2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB103:
	.cfi_startproc
	sub	esp, 28
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	cmp	DWORD PTR [esp+4], 0
	jns	.L615
	not	DWORD PTR [esp]
	not	DWORD PTR [esp+4]
.L615:
	mov	eax, DWORD PTR [esp]
	or	eax, DWORD PTR [esp+4]
	jne	.L616
	mov	eax, 63
	jmp	.L617
.L616:
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	test	edx, edx
	je	.L618
	bsr	eax, edx
	xor	eax, 31
	jmp	.L619
.L618:
	bsr	eax, eax
	xor	eax, 31
	add	eax, 32
.L619:
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+20]
	sub	eax, 1
.L617:
	add	esp, 28
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE103:
	.size	__clrsbdi2, .-__clrsbdi2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB104:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 0
	jmp	.L622
.L624:
	mov	eax, DWORD PTR [esp+20]
	and	eax, 1
	je	.L623
	mov	eax, DWORD PTR [esp+24]
	add	DWORD PTR [esp+12], eax
.L623:
	shr	DWORD PTR [esp+20]
	sal	DWORD PTR [esp+24]
.L622:
	cmp	DWORD PTR [esp+20], 0
	jne	.L624
	mov	eax, DWORD PTR [esp+12]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE104:
	.size	__mulsi3, .-__mulsi3
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
.LFB105:
	.cfi_startproc
	sub	esp, 36
	.cfi_def_cfa_offset 40
	mov	eax, DWORD PTR [esp+48]
	shr	eax, 3
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+48]
	and	eax, -8
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+44]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+16]
	cmp	eax, DWORD PTR [esp+12]
	jb	.L628
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+48]
	add	eax, edx
	cmp	eax, DWORD PTR [esp+16]
	jnb	.L635
.L628:
	mov	DWORD PTR [esp+28], 0
	jmp	.L630
.L631:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [0+eax*8]
	mov	eax, DWORD PTR [esp+44]
	add	eax, edx
	mov	edx, DWORD PTR [esp+28]
	lea	ecx, [0+edx*8]
	mov	edx, DWORD PTR [esp+40]
	add	ecx, edx
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ecx], eax
	mov	DWORD PTR [ecx+4], edx
	add	DWORD PTR [esp+28], 1
.L630:
	mov	eax, DWORD PTR [esp+28]
	cmp	eax, DWORD PTR [esp+20]
	jb	.L631
	jmp	.L632
.L633:
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+24]
	add	eax, edx
	mov	ecx, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+24]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [esp+24], 1
.L632:
	mov	eax, DWORD PTR [esp+48]
	cmp	DWORD PTR [esp+24], eax
	jb	.L633
	jmp	.L634
.L636:
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+48]
	add	eax, edx
	mov	ecx, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+48]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
.L635:
	mov	eax, DWORD PTR [esp+48]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+48], edx
	test	eax, eax
	jne	.L636
.L634:
	nop
	add	esp, 36
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE105:
	.size	__cmovd, .-__cmovd
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB106:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+28]
	shr	eax
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+4]
	cmp	eax, DWORD PTR [esp]
	jb	.L639
	mov	edx, DWORD PTR [esp]
	mov	eax, DWORD PTR [esp+28]
	add	eax, edx
	cmp	eax, DWORD PTR [esp+4]
	jnb	.L645
.L639:
	mov	DWORD PTR [esp+12], 0
	jmp	.L641
.L642:
	mov	eax, DWORD PTR [esp+12]
	lea	edx, [eax+eax]
	mov	eax, DWORD PTR [esp+24]
	add	eax, edx
	mov	edx, DWORD PTR [esp+12]
	lea	ecx, [edx+edx]
	mov	edx, DWORD PTR [esp+20]
	add	edx, ecx
	movzx	eax, WORD PTR [eax]
	mov	WORD PTR [edx], ax
	add	DWORD PTR [esp+12], 1
.L641:
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, DWORD PTR [esp+8]
	jb	.L642
	mov	eax, DWORD PTR [esp+28]
	and	eax, 1
	je	.L644
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	eax, DWORD PTR [esp]
	add	eax, edx
	mov	edx, DWORD PTR [esp+28]
	lea	ecx, [edx-1]
	mov	edx, DWORD PTR [esp+4]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	jmp	.L644
.L646:
	mov	edx, DWORD PTR [esp]
	mov	eax, DWORD PTR [esp+28]
	add	eax, edx
	mov	ecx, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+28]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
.L645:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+28], edx
	test	eax, eax
	jne	.L646
.L644:
	nop
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE106:
	.size	__cmovh, .-__cmovh
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB107:
	.cfi_startproc
	sub	esp, 32
	.cfi_def_cfa_offset 36
	mov	eax, DWORD PTR [esp+44]
	shr	eax, 2
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+44]
	and	eax, -4
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+16]
	cmp	eax, DWORD PTR [esp+12]
	jb	.L649
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+44]
	add	eax, edx
	cmp	eax, DWORD PTR [esp+16]
	jnb	.L656
.L649:
	mov	DWORD PTR [esp+28], 0
	jmp	.L651
.L652:
	mov	eax, DWORD PTR [esp+28]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [esp+40]
	add	eax, edx
	mov	edx, DWORD PTR [esp+28]
	lea	ecx, [0+edx*4]
	mov	edx, DWORD PTR [esp+36]
	add	edx, ecx
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [edx], eax
	add	DWORD PTR [esp+28], 1
.L651:
	mov	eax, DWORD PTR [esp+28]
	cmp	eax, DWORD PTR [esp+20]
	jb	.L652
	jmp	.L653
.L654:
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+24]
	add	eax, edx
	mov	ecx, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+24]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [esp+24], 1
.L653:
	mov	eax, DWORD PTR [esp+44]
	cmp	DWORD PTR [esp+24], eax
	jb	.L654
	jmp	.L655
.L657:
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+44]
	add	eax, edx
	mov	ecx, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+44]
	add	edx, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
.L656:
	mov	eax, DWORD PTR [esp+44]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+44], edx
	test	eax, eax
	jne	.L657
.L655:
	nop
	add	esp, 32
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE107:
	.size	__cmovw, .-__cmovw
	.globl	__modi
	.type	__modi, @function
__modi:
.LFB108:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	cdq
	idiv	DWORD PTR [esp+8]
	mov	eax, edx
	ret
	.cfi_endproc
.LFE108:
	.size	__modi, .-__modi
	.globl	__uitod
	.type	__uitod, @function
__uitod:
.LFB109:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+16]
	mov	edx, 0
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	fild	QWORD PTR [esp]
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE109:
	.size	__uitod, .-__uitod
	.globl	__uitof
	.type	__uitof, @function
__uitof:
.LFB110:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+16]
	mov	edx, 0
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	fild	QWORD PTR [esp]
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE110:
	.size	__uitof, .-__uitof
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
.LFB111:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+12], eax
	fild	QWORD PTR [esp+8]
	cmp	DWORD PTR [esp+12], 0
	jns	.L668
	fld	TBYTE PTR .LC16
	faddp	st(1), st
.L668:
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE111:
	.size	__ulltod, .-__ulltod
	.globl	__ulltof
	.type	__ulltof, @function
__ulltof:
.LFB112:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+12], eax
	fild	QWORD PTR [esp+8]
	cmp	DWORD PTR [esp+12], 0
	jns	.L672
	fld	TBYTE PTR .LC16
	faddp	st(1), st
.L672:
	fstp	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE112:
	.size	__ulltof, .-__ulltof
	.globl	__umodi
	.type	__umodi, @function
__umodi:
.LFB113:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, 0
	div	DWORD PTR [esp+8]
	mov	eax, edx
	ret
	.cfi_endproc
.LFE113:
	.size	__umodi, .-__umodi
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB114:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	WORD PTR [esp], ax
	mov	DWORD PTR [esp+16], 0
	jmp	.L678
.L681:
	movzx	edx, WORD PTR [esp]
	mov	eax, 15
	sub	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	jne	.L680
	add	DWORD PTR [esp+16], 1
.L678:
	cmp	DWORD PTR [esp+16], 15
	jle	.L681
.L680:
	mov	eax, DWORD PTR [esp+16]
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE114:
	.size	__clzhi2, .-__clzhi2
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB115:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	WORD PTR [esp], ax
	mov	DWORD PTR [esp+16], 0
	jmp	.L686
.L689:
	movzx	edx, WORD PTR [esp]
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	jne	.L688
	add	DWORD PTR [esp+16], 1
.L686:
	cmp	DWORD PTR [esp+16], 15
	jle	.L689
.L688:
	mov	eax, DWORD PTR [esp+16]
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE115:
	.size	__ctzhi2, .-__ctzhi2
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB116:
	.cfi_startproc
	sub	esp, 8
	.cfi_def_cfa_offset 12
	fld	DWORD PTR [esp+12]
	fcomp	DWORD PTR .LC17
	fnstsw	ax
	sahf
	jb	.L698
	fld	DWORD PTR [esp+12]
	fld	DWORD PTR .LC17
	fsubp	st(1), st
	fnstcw	WORD PTR [esp+6]
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
	add	eax, 32768
	jmp	.L696
.L698:
	fld	DWORD PTR [esp+12]
	fnstcw	WORD PTR [esp+6]
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
.L696:
	add	esp, 8
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE116:
	.size	__fixunssfsi, .-__fixunssfsi
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB117:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	WORD PTR [esp], ax
	mov	DWORD PTR [esp+12], 0
	mov	DWORD PTR [esp+16], 0
	jmp	.L701
.L703:
	movzx	edx, WORD PTR [esp]
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	je	.L702
	add	DWORD PTR [esp+12], 1
.L702:
	add	DWORD PTR [esp+16], 1
.L701:
	cmp	DWORD PTR [esp+16], 15
	jle	.L703
	mov	eax, DWORD PTR [esp+12]
	and	eax, 1
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE117:
	.size	__parityhi2, .-__parityhi2
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB118:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	WORD PTR [esp], ax
	mov	DWORD PTR [esp+12], 0
	mov	DWORD PTR [esp+16], 0
	jmp	.L707
.L709:
	movzx	edx, WORD PTR [esp]
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	je	.L708
	add	DWORD PTR [esp+12], 1
.L708:
	add	DWORD PTR [esp+16], 1
.L707:
	cmp	DWORD PTR [esp+16], 15
	jle	.L709
	mov	eax, DWORD PTR [esp+12]
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE118:
	.size	__popcounthi2, .-__popcounthi2
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB119:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 0
	jmp	.L713
.L715:
	mov	eax, DWORD PTR [esp+20]
	and	eax, 1
	je	.L714
	mov	eax, DWORD PTR [esp+24]
	add	DWORD PTR [esp+12], eax
.L714:
	shr	DWORD PTR [esp+20]
	sal	DWORD PTR [esp+24]
.L713:
	cmp	DWORD PTR [esp+20], 0
	jne	.L715
	mov	eax, DWORD PTR [esp+12]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE119:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 0
	cmp	DWORD PTR [esp+20], 0
	jne	.L721
	mov	eax, 0
	jmp	.L720
.L723:
	mov	eax, DWORD PTR [esp+24]
	and	eax, 1
	je	.L722
	mov	eax, DWORD PTR [esp+20]
	add	DWORD PTR [esp+12], eax
.L722:
	sal	DWORD PTR [esp+20]
	shr	DWORD PTR [esp+24]
.L721:
	cmp	DWORD PTR [esp+24], 0
	jne	.L723
	mov	eax, DWORD PTR [esp+12]
.L720:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB121:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 1
	mov	DWORD PTR [esp+8], 0
	jmp	.L726
.L728:
	sal	DWORD PTR [esp+24]
	sal	DWORD PTR [esp+12]
.L726:
	mov	eax, DWORD PTR [esp+24]
	cmp	eax, DWORD PTR [esp+20]
	jnb	.L729
	cmp	DWORD PTR [esp+12], 0
	je	.L729
	mov	eax, DWORD PTR [esp+24]
	test	eax, eax
	jns	.L728
	jmp	.L729
.L731:
	mov	eax, DWORD PTR [esp+20]
	cmp	eax, DWORD PTR [esp+24]
	jb	.L730
	mov	eax, DWORD PTR [esp+24]
	sub	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+12]
	or	DWORD PTR [esp+8], eax
.L730:
	shr	DWORD PTR [esp+12]
	shr	DWORD PTR [esp+24]
.L729:
	cmp	DWORD PTR [esp+12], 0
	jne	.L731
	cmp	DWORD PTR [esp+28], 0
	je	.L732
	mov	eax, DWORD PTR [esp+20]
	jmp	.L733
.L732:
	mov	eax, DWORD PTR [esp+8]
.L733:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE121:
	.size	__udivmodsi4, .-__udivmodsi4
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	fld	DWORD PTR [esp+8]
	fcomp	DWORD PTR [esp+4]
	fnstsw	ax
	sahf
	jbe	.L743
	mov	eax, -1
	ret
.L743:
	fld	DWORD PTR [esp+4]
	fcomp	DWORD PTR [esp+8]
	fnstsw	ax
	sahf
	jbe	.L744
	mov	eax, 1
	ret
.L744:
	mov	eax, 0
	ret
	.cfi_endproc
.LFE122:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB123:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	fld	QWORD PTR [esp]
	fcomp	QWORD PTR [esp+8]
	fnstsw	ax
	sahf
	jbe	.L753
	mov	eax, -1
	jmp	.L748
.L753:
	fld	QWORD PTR [esp+8]
	fcomp	QWORD PTR [esp]
	fnstsw	ax
	sahf
	jbe	.L754
	mov	eax, 1
	jmp	.L748
.L754:
	mov	eax, 0
.L748:
	add	esp, 20
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE123:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB124:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	push	ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	eax, DWORD PTR [esp+16]
	cdq
	mov	ecx, DWORD PTR [esp+20]
	mov	ebx, ecx
	sar	ebx, 31
	mov	edi, edx
	imul	edi, ecx
	mov	esi, ebx
	imul	esi, eax
	add	esi, edi
	mul	ecx
	lea	ecx, [esi+edx]
	mov	edx, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE124:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB125:
	.cfi_startproc
	push	edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	push	esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	push	ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	eax, DWORD PTR [esp+16]
	mov	edx, 0
	mov	ecx, DWORD PTR [esp+20]
	mov	ebx, 0
	mov	edi, edx
	imul	edi, ecx
	mov	esi, ebx
	imul	esi, eax
	add	esi, edi
	mul	ecx
	lea	ecx, [esi+edx]
	mov	edx, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE125:
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB126:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+4], 0
	cmp	DWORD PTR [esp+24], 0
	jns	.L763
	neg	DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], 1
.L763:
	mov	BYTE PTR [esp+15], 0
	jmp	.L764
.L767:
	mov	eax, DWORD PTR [esp+24]
	and	eax, 1
	je	.L765
	mov	eax, DWORD PTR [esp+20]
	add	DWORD PTR [esp+4], eax
.L765:
	sal	DWORD PTR [esp+20]
	sar	DWORD PTR [esp+24]
	movzx	eax, BYTE PTR [esp+15]
	add	eax, 1
	mov	BYTE PTR [esp+15], al
.L764:
	cmp	DWORD PTR [esp+24], 0
	je	.L766
	movzx	eax, BYTE PTR [esp+15]
	cmp	al, 31
	jbe	.L767
.L766:
	cmp	DWORD PTR [esp+8], 0
	je	.L768
	mov	eax, DWORD PTR [esp+4]
	neg	eax
	jmp	.L770
.L768:
	mov	eax, DWORD PTR [esp+4]
.L770:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE126:
	.size	__mulhi3, .-__mulhi3
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 0
	cmp	DWORD PTR [esp+20], 0
	jns	.L773
	neg	DWORD PTR [esp+20]
	cmp	DWORD PTR [esp+12], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR [esp+12], eax
.L773:
	cmp	DWORD PTR [esp+24], 0
	jns	.L774
	neg	DWORD PTR [esp+24]
	cmp	DWORD PTR [esp+12], 0
	sete	al
	movzx	eax, al
	mov	DWORD PTR [esp+12], eax
.L774:
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+20]
	push	0
	.cfi_def_cfa_offset 24
	push	edx
	.cfi_def_cfa_offset 28
	push	eax
	.cfi_def_cfa_offset 32
	call	__udivmodsi4
	add	esp, 12
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+8], eax
	cmp	DWORD PTR [esp+12], 0
	je	.L775
	neg	DWORD PTR [esp+8]
.L775:
	mov	eax, DWORD PTR [esp+8]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 0
	cmp	DWORD PTR [esp+20], 0
	jns	.L779
	neg	DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], 1
.L779:
	cmp	DWORD PTR [esp+24], 0
	jns	.L780
	neg	DWORD PTR [esp+24]
.L780:
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+20]
	push	1
	.cfi_def_cfa_offset 24
	push	edx
	.cfi_def_cfa_offset 28
	push	eax
	.cfi_def_cfa_offset 32
	call	__udivmodsi4
	add	esp, 12
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+8], eax
	cmp	DWORD PTR [esp+12], 0
	je	.L781
	neg	DWORD PTR [esp+8]
.L781:
	mov	eax, DWORD PTR [esp+8]
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	sub	esp, 24
	.cfi_def_cfa_offset 28
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+32]
	mov	WORD PTR [esp+4], dx
	mov	WORD PTR [esp], ax
	mov	WORD PTR [esp+22], 1
	mov	WORD PTR [esp+20], 0
	jmp	.L785
.L787:
	sal	WORD PTR [esp]
	sal	WORD PTR [esp+22]
.L785:
	movzx	eax, WORD PTR [esp]
	cmp	ax, WORD PTR [esp+4]
	jnb	.L788
	cmp	WORD PTR [esp+22], 0
	je	.L788
	movzx	eax, WORD PTR [esp]
	test	ax, ax
	jns	.L787
	jmp	.L788
.L790:
	movzx	eax, WORD PTR [esp+4]
	cmp	ax, WORD PTR [esp]
	jb	.L789
	movzx	eax, WORD PTR [esp]
	sub	WORD PTR [esp+4], ax
	movzx	eax, WORD PTR [esp+22]
	or	WORD PTR [esp+20], ax
.L789:
	shr	WORD PTR [esp+22]
	shr	WORD PTR [esp]
.L788:
	cmp	WORD PTR [esp+22], 0
	jne	.L790
	cmp	DWORD PTR [esp+36], 0
	je	.L791
	movzx	eax, WORD PTR [esp+4]
	jmp	.L792
.L791:
	movzx	eax, WORD PTR [esp+20]
.L792:
	add	esp, 24
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB130:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	DWORD PTR [esp+12], 1
	mov	DWORD PTR [esp+8], 0
	jmp	.L795
.L797:
	sal	DWORD PTR [esp+24]
	sal	DWORD PTR [esp+12]
.L795:
	mov	eax, DWORD PTR [esp+24]
	cmp	eax, DWORD PTR [esp+20]
	jnb	.L798
	cmp	DWORD PTR [esp+12], 0
	je	.L798
	mov	eax, DWORD PTR [esp+24]
	test	eax, eax
	jns	.L797
	jmp	.L798
.L800:
	mov	eax, DWORD PTR [esp+20]
	cmp	eax, DWORD PTR [esp+24]
	jb	.L799
	mov	eax, DWORD PTR [esp+24]
	sub	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+12]
	or	DWORD PTR [esp+8], eax
.L799:
	shr	DWORD PTR [esp+12]
	shr	DWORD PTR [esp+24]
.L798:
	cmp	DWORD PTR [esp+12], 0
	jne	.L800
	cmp	DWORD PTR [esp+28], 0
	je	.L801
	mov	eax, DWORD PTR [esp+20]
	jmp	.L802
.L801:
	mov	eax, DWORD PTR [esp+8]
.L802:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE130:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 40
	.cfi_def_cfa_offset 48
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp+36], 32
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [esp+28], eax
	mov	DWORD PTR [esp+32], edx
	mov	eax, DWORD PTR [esp+56]
	and	eax, DWORD PTR [esp+36]
	je	.L805
	mov	DWORD PTR [esp+20], 0
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+56]
	sub	eax, DWORD PTR [esp+36]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+24], eax
	jmp	.L806
.L805:
	cmp	DWORD PTR [esp+56], 0
	jne	.L807
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	jmp	.L809
.L807:
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+56]
	mov	ecx, eax
	sal	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+32]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+56]
	mov	ebx, edx
	mov	ecx, eax
	sal	ebx, cl
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+36]
	sub	eax, DWORD PTR [esp+56]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, ebx
	mov	DWORD PTR [esp+24], eax
.L806:
	mov	eax, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+24]
.L809:
	add	esp, 40
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE131:
	.size	__ashldi3, .-__ashldi3
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB132:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 40
	.cfi_def_cfa_offset 48
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp+36], 32
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [esp+28], eax
	mov	DWORD PTR [esp+32], edx
	mov	eax, DWORD PTR [esp+56]
	and	eax, DWORD PTR [esp+36]
	je	.L812
	mov	edx, DWORD PTR [esp+32]
	mov	eax, DWORD PTR [esp+36]
	sub	eax, 1
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+24], eax
	mov	edx, DWORD PTR [esp+32]
	mov	eax, DWORD PTR [esp+56]
	sub	eax, DWORD PTR [esp+36]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+20], eax
	jmp	.L813
.L812:
	cmp	DWORD PTR [esp+56], 0
	jne	.L814
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	jmp	.L816
.L814:
	mov	edx, DWORD PTR [esp+32]
	mov	eax, DWORD PTR [esp+56]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+32]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+36]
	sub	eax, DWORD PTR [esp+56]
	mov	ebx, edx
	mov	ecx, eax
	sal	ebx, cl
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+56]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, ebx
	mov	DWORD PTR [esp+20], eax
.L813:
	mov	eax, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+24]
.L816:
	add	esp, 40
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 8
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+16]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	eax, edx
	xor	edx, edx
	shr	eax, 24
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	eax, edx
	xor	edx, edx
	shr	eax, 8
	and	eax, 65280
	mov	edx, 0
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	shrd	eax, edx, 24
	shr	edx, 24
	and	eax, 16711680
	mov	edx, 0
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	shrd	eax, edx, 8
	shr	edx, 8
	and	eax, -16777216
	mov	edx, 0
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	shld	edx, eax, 8
	sal	eax, 8
	mov	eax, 0
	and	edx, 255
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	shld	edx, eax, 24
	sal	eax, 24
	mov	eax, 0
	and	edx, 65280
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 8
	mov	eax, 0
	and	edx, 16711680
	or	ecx, eax
	or	ebx, edx
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	edx, eax
	xor	eax, eax
	sal	edx, 24
	or	eax, ecx
	or	edx, ebx
	add	esp, 8
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE133:
	.size	__bswapdi2, .-__bswapdi2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB134:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	shr	eax, 24
	mov	edx, eax
	mov	eax, DWORD PTR [esp+4]
	shr	eax, 8
	and	eax, 65280
	or	edx, eax
	mov	eax, DWORD PTR [esp+4]
	sal	eax, 8
	and	eax, 16711680
	or	edx, eax
	mov	eax, DWORD PTR [esp+4]
	sal	eax, 24
	or	eax, edx
	ret
	.cfi_endproc
.LFE134:
	.size	__bswapsi2, .-__bswapsi2
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB135:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	cmp	DWORD PTR [esp+12], 65535
	ja	.L824
	mov	eax, 16
	jmp	.L825
.L824:
	mov	eax, 0
.L825:
	mov	DWORD PTR [esp+8], eax
	mov	eax, 16
	sub	eax, DWORD PTR [esp+8]
	mov	ecx, eax
	shr	DWORD PTR [esp+12], cl
	mov	eax, DWORD PTR [esp+8]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+12]
	and	eax, 65280
	jne	.L826
	mov	eax, 8
	jmp	.L827
.L826:
	mov	eax, 0
.L827:
	mov	DWORD PTR [esp+8], eax
	mov	eax, 8
	sub	eax, DWORD PTR [esp+8]
	mov	ecx, eax
	shr	DWORD PTR [esp+12], cl
	mov	eax, DWORD PTR [esp+8]
	add	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+12]
	and	eax, 240
	jne	.L828
	mov	eax, 4
	jmp	.L829
.L828:
	mov	eax, 0
.L829:
	mov	DWORD PTR [esp+8], eax
	mov	eax, 4
	sub	eax, DWORD PTR [esp+8]
	mov	ecx, eax
	shr	DWORD PTR [esp+12], cl
	mov	eax, DWORD PTR [esp+8]
	add	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+12]
	and	eax, 12
	jne	.L830
	mov	eax, 2
	jmp	.L831
.L830:
	mov	eax, 0
.L831:
	mov	DWORD PTR [esp+8], eax
	mov	eax, 2
	sub	eax, DWORD PTR [esp+8]
	mov	ecx, eax
	shr	DWORD PTR [esp+12], cl
	mov	eax, DWORD PTR [esp+8]
	add	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+12]
	and	eax, 2
	sete	al
	movzx	eax, al
	mov	edx, eax
	mov	eax, 2
	sub	eax, DWORD PTR [esp+12]
	imul	edx, eax
	mov	eax, DWORD PTR [esp+4]
	add	eax, edx
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE135:
	.size	__clzsi2, .-__clzsi2
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB136:
	.cfi_startproc
	sub	esp, 36
	.cfi_def_cfa_offset 40
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+44]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	DWORD PTR [esp+24], eax
	mov	DWORD PTR [esp+28], edx
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+20], edx
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+20]
	cmp	edx, eax
	jge	.L835
	mov	eax, 0
	jmp	.L840
.L835:
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+20]
	cmp	edx, eax
	jle	.L837
	mov	eax, 2
	jmp	.L840
.L837:
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+16]
	cmp	edx, eax
	jnb	.L838
	mov	eax, 0
	jmp	.L840
.L838:
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+16]
	cmp	edx, eax
	jnb	.L839
	mov	eax, 2
	jmp	.L840
.L839:
	mov	eax, 1
.L840:
	add	esp, 36
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE136:
	.size	__cmpdi2, .-__cmpdi2
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB137:
	.cfi_startproc
	sub	esp, 20
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	push	DWORD PTR [esp+4]
	.cfi_def_cfa_offset 28
	push	DWORD PTR [esp+4]
	.cfi_def_cfa_offset 32
	push	DWORD PTR [esp+20]
	.cfi_def_cfa_offset 36
	push	DWORD PTR [esp+20]
	.cfi_def_cfa_offset 40
	call	__cmpdi2
	sub	eax, 1
	add	esp, 36
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE137:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB138:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, ax
	test	eax, eax
	jne	.L846
	mov	eax, 16
	jmp	.L847
.L846:
	mov	eax, 0
.L847:
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+8]
	mov	ecx, eax
	shr	DWORD PTR [esp+12], cl
	mov	eax, DWORD PTR [esp+8]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+12]
	movzx	eax, al
	test	eax, eax
	jne	.L848
	mov	eax, 8
	jmp	.L849
.L848:
	mov	eax, 0
.L849:
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+8]
	mov	ecx, eax
	shr	DWORD PTR [esp+12], cl
	mov	eax, DWORD PTR [esp+8]
	add	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+12]
	and	eax, 15
	jne	.L850
	mov	eax, 4
	jmp	.L851
.L850:
	mov	eax, 0
.L851:
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+8]
	mov	ecx, eax
	shr	DWORD PTR [esp+12], cl
	mov	eax, DWORD PTR [esp+8]
	add	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+12]
	and	eax, 3
	jne	.L852
	mov	eax, 2
	jmp	.L853
.L852:
	mov	eax, 0
.L853:
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+8]
	mov	ecx, eax
	shr	DWORD PTR [esp+12], cl
	and	DWORD PTR [esp+12], 3
	mov	eax, DWORD PTR [esp+8]
	add	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+12]
	not	eax
	and	eax, 1
	mov	ecx, eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax
	mov	edx, 2
	sub	edx, eax
	mov	eax, ecx
	neg	eax
	and	edx, eax
	mov	eax, DWORD PTR [esp+4]
	add	eax, edx
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE138:
	.size	__ctzsi2, .-__ctzsi2
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB139:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 40
	.cfi_def_cfa_offset 48
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp+36], 32
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [esp+28], eax
	mov	DWORD PTR [esp+32], edx
	mov	eax, DWORD PTR [esp+56]
	and	eax, DWORD PTR [esp+36]
	je	.L857
	mov	DWORD PTR [esp+24], 0
	mov	edx, DWORD PTR [esp+32]
	mov	eax, DWORD PTR [esp+56]
	sub	eax, DWORD PTR [esp+36]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+20], eax
	jmp	.L858
.L857:
	cmp	DWORD PTR [esp+56], 0
	jne	.L859
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	jmp	.L861
.L859:
	mov	edx, DWORD PTR [esp+32]
	mov	eax, DWORD PTR [esp+56]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+24], eax
	mov	edx, DWORD PTR [esp+32]
	mov	eax, DWORD PTR [esp+36]
	sub	eax, DWORD PTR [esp+56]
	mov	ebx, edx
	mov	ecx, eax
	sal	ebx, cl
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+56]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	or	eax, ebx
	mov	DWORD PTR [esp+20], eax
.L858:
	mov	eax, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+24]
.L861:
	add	esp, 40
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE139:
	.size	__lshrdi3, .-__lshrdi3
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	sub	esp, 36
	.cfi_def_cfa_offset 48
	mov	DWORD PTR [esp+28], 16
	mov	eax, DWORD PTR [esp+28]
	mov	edx, -1
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+24], eax
	mov	eax, DWORD PTR [esp+48]
	and	eax, DWORD PTR [esp+24]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+52]
	and	eax, DWORD PTR [esp+24]
	imul	eax, edx
	mov	DWORD PTR [esp+12], eax
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+28]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+12]
	and	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+48]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [esp+52]
	and	eax, DWORD PTR [esp+24]
	imul	eax, edx
	add	DWORD PTR [esp+20], eax
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+20]
	and	eax, DWORD PTR [esp+24]
	mov	ebx, eax
	mov	eax, DWORD PTR [esp+28]
	mov	ecx, eax
	sal	ebx, cl
	mov	eax, ebx
	add	eax, edx
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+20]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+16], eax
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+28]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+12]
	and	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+52]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [esp+48]
	and	eax, DWORD PTR [esp+24]
	imul	eax, edx
	add	DWORD PTR [esp+20], eax
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+20]
	and	eax, DWORD PTR [esp+24]
	mov	ebx, eax
	mov	eax, DWORD PTR [esp+28]
	mov	ecx, eax
	sal	ebx, cl
	mov	eax, ebx
	add	eax, edx
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+16]
	mov	ebx, eax
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+20]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, edx
	add	eax, ebx
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+16]
	mov	esi, eax
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+48]
	mov	ecx, eax
	shr	edx, cl
	mov	eax, DWORD PTR [esp+28]
	mov	ebx, DWORD PTR [esp+52]
	mov	ecx, eax
	shr	ebx, cl
	mov	eax, ebx
	imul	eax, edx
	add	eax, esi
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	add	esp, 36
	.cfi_def_cfa_offset 12
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE140:
	.size	__muldsi3, .-__muldsi3
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB141:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 48
	.cfi_def_cfa_offset 56
	mov	eax, DWORD PTR [esp+56]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+60]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+64]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	DWORD PTR [esp+40], eax
	mov	DWORD PTR [esp+44], edx
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [esp+32], eax
	mov	DWORD PTR [esp+36], edx
	mov	edx, DWORD PTR [esp+32]
	mov	eax, DWORD PTR [esp+40]
	push	edx
	.cfi_def_cfa_offset 60
	push	eax
	.cfi_def_cfa_offset 64
	call	__muldsi3
	mov	DWORD PTR [esp+32], eax
	mov	DWORD PTR [esp+36], edx
	mov	eax, DWORD PTR [esp+36]
	mov	ebx, eax
	mov	eax, DWORD PTR [esp+52]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+40]
	imul	edx, eax
	mov	eax, DWORD PTR [esp+48]
	mov	ecx, DWORD PTR [esp+44]
	imul	eax, ecx
	add	eax, edx
	add	eax, ebx
	mov	DWORD PTR [esp+36], eax
	mov	eax, DWORD PTR [esp+32]
	mov	edx, DWORD PTR [esp+36]
	add	esp, 56
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE141:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.globl	__negdi2
	.type	__negdi2, @function
__negdi2:
.LFB142:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+16]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	neg	eax
	adc	edx, 0
	neg	edx
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE142:
	.size	__negdi2, .-__negdi2
	.globl	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB143:
	.cfi_startproc
	sub	esp, 28
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [esp+12], eax
	mov	DWORD PTR [esp+16], edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+12]
	xor	eax, edx
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+20]
	shr	eax, 16
	xor	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+20]
	shr	eax, 8
	xor	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+20]
	shr	eax, 4
	xor	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [esp+20]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	add	esp, 28
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE143:
	.size	__paritydi2, .-__paritydi2
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB144:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax, 16
	xor	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax, 8
	xor	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax, 4
	xor	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	and	eax, 15
	mov	edx, 27030
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE144:
	.size	__paritysi2, .-__paritysi2
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB145:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 24
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+20], edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	shrd	eax, edx, 1
	shr	edx
	and	eax, 1431655765
	and	edx, 1431655765
	sub	DWORD PTR [esp+16], eax
	sbb	DWORD PTR [esp+20], edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	shrd	eax, edx, 2
	shr	edx, 2
	and	eax, 858993459
	and	edx, 858993459
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	and	eax, 858993459
	and	edx, 858993459
	add	eax, ecx
	adc	edx, ebx
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+20], edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	shrd	eax, edx, 4
	shr	edx, 4
	mov	ecx, eax
	mov	ebx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	add	eax, ecx
	adc	edx, ebx
	and	eax, 252645135
	and	edx, 252645135
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+20], edx
	mov	ecx, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	mov	eax, edx
	xor	edx, edx
	add	eax, ecx
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax, 16
	add	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR [esp+12]
	add	eax, edx
	and	eax, 127
	add	esp, 24
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE145:
	.size	__popcountdi2, .-__popcountdi2
	.globl	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB146:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax
	and	eax, 1431655765
	sub	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax, 2
	and	eax, 858993459
	mov	edx, eax
	mov	eax, DWORD PTR [esp+12]
	and	eax, 858993459
	add	eax, edx
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax, 4
	mov	edx, eax
	mov	eax, DWORD PTR [esp+12]
	add	eax, edx
	and	eax, 252645135
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax, 16
	add	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+12]
	shr	eax, 8
	mov	edx, eax
	mov	eax, DWORD PTR [esp+12]
	add	eax, edx
	and	eax, 63
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE146:
	.size	__popcountsi2, .-__popcountsi2
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
.LFB147:
	.cfi_startproc
	sub	esp, 28
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+40]
	shr	eax, 31
	movzx	eax, al
	mov	DWORD PTR [esp+12], eax
	fld1
	fstp	QWORD PTR [esp+16]
.L888:
	mov	eax, DWORD PTR [esp+40]
	and	eax, 1
	je	.L885
	fld	QWORD PTR [esp+16]
	fmul	QWORD PTR [esp]
	fstp	QWORD PTR [esp+16]
.L885:
	mov	eax, DWORD PTR [esp+40]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [esp+40], eax
	cmp	DWORD PTR [esp+40], 0
	je	.L892
	fld	QWORD PTR [esp]
	fmul	st, st(0)
	fstp	QWORD PTR [esp]
	jmp	.L888
.L892:
	cmp	DWORD PTR [esp+12], 0
	je	.L889
	fld1
	fdiv	QWORD PTR [esp+16]
	jmp	.L891
.L889:
	fld	QWORD PTR [esp+16]
.L891:
	add	esp, 28
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE147:
	.size	__powidf2, .-__powidf2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	sub	esp, 16
	.cfi_def_cfa_offset 20
	mov	eax, DWORD PTR [esp+24]
	shr	eax, 31
	movzx	eax, al
	mov	DWORD PTR [esp+8], eax
	fld1
	fstp	DWORD PTR [esp+12]
.L899:
	mov	eax, DWORD PTR [esp+24]
	and	eax, 1
	je	.L896
	fld	DWORD PTR [esp+12]
	fmul	DWORD PTR [esp+20]
	fstp	DWORD PTR [esp+12]
.L896:
	mov	eax, DWORD PTR [esp+24]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR [esp+24], eax
	cmp	DWORD PTR [esp+24], 0
	je	.L903
	fld	DWORD PTR [esp+20]
	fmul	st, st(0)
	fstp	DWORD PTR [esp+20]
	jmp	.L899
.L903:
	cmp	DWORD PTR [esp+8], 0
	je	.L900
	fld1
	fdiv	DWORD PTR [esp+12]
	jmp	.L902
.L900:
	fld	DWORD PTR [esp+12]
.L902:
	add	esp, 16
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE148:
	.size	__powisf2, .-__powisf2
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB149:
	.cfi_startproc
	sub	esp, 36
	.cfi_def_cfa_offset 40
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+44]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+48]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+52]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	DWORD PTR [esp+24], eax
	mov	DWORD PTR [esp+28], edx
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+20], edx
	mov	edx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+20]
	cmp	edx, eax
	jnb	.L907
	mov	eax, 0
	jmp	.L912
.L907:
	mov	eax, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+20]
	cmp	edx, eax
	jnb	.L909
	mov	eax, 2
	jmp	.L912
.L909:
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+16]
	cmp	edx, eax
	jnb	.L910
	mov	eax, 0
	jmp	.L912
.L910:
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+16]
	cmp	edx, eax
	jnb	.L911
	mov	eax, 2
	jmp	.L912
.L911:
	mov	eax, 1
.L912:
	add	esp, 36
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE149:
	.size	__ucmpdi2, .-__ucmpdi2
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB150:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 16
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	ecx, DWORD PTR [esp]
	mov	ebx, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	push	ebx
	.cfi_def_cfa_offset 28
	push	ecx
	.cfi_def_cfa_offset 32
	push	edx
	.cfi_def_cfa_offset 36
	push	eax
	.cfi_def_cfa_offset 40
	call	__ucmpdi2
	sub	eax, 1
	add	esp, 32
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
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
	.align 16
	.align 16
.LC8:
	.long	-1
	.long	-1
	.long	32766
	.align 16
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
	.align 16
	.align 16
.LC14:
	.long	0
	.long	-2147483648
	.long	16384
	.align 16
	.align 16
.LC16:
	.long	0
	.long	-2147483648
	.long	16447
	.align 16
	.section	.rodata.cst4
	.align 4
.LC17:
	.long	1191182336
	.globl	__moddi3
	.globl	__divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
