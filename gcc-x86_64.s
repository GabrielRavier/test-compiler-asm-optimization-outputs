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
	mov	rcx, rdi
	cmp	rsi, rdi
	jnb	.L5
	test	rdx, rdx
	je	.L6
	lea	r9, [rdx-1]
	cmp	r9, 6
	jbe	.L84
	lea	r10, [rsi-2+rdx]
	sub	rdi, r10
	lea	r8, [rdi+14+r9]
	cmp	r8, 14
	jbe	.L84
	lea	r11, [rsi+rdx]
	lea	r10, [rcx+rdx]
	cmp	r9, 14
	jbe	.L24
	mov	rdi, rdx
	lea	r8, [rdx-16]
	xor	eax, eax
	and	rdi, -16
	lea	r9, [rsi+r8]
	add	r8, rcx
	neg	rdi
	.p2align 5
	.p2align 4
	.p2align 3
.L9:
	movdqu	xmm1, XMMWORD PTR [r9+rax]
	movups	XMMWORD PTR [r8+rax], xmm1
	sub	rax, 16
	cmp	rdi, rax
	jne	.L9
	mov	rax, rdx
	add	r11, rdi
	add	r10, rdi
	and	eax, 15
	and	edx, 15
	je	.L6
	lea	r8, [rax-1]
	mov	rdx, rax
	cmp	r8, 6
	jbe	.L11
.L8:
	mov	rsi, QWORD PTR [rsi-8+rdx]
	mov	r9, rdx
	and	r9, -8
	mov	QWORD PTR [rcx-8+rdx], rsi
	sub	r11, r9
	sub	r10, r9
	sub	rax, r9
	and	edx, 7
	je	.L6
.L11:
	movzx	edx, BYTE PTR [r11-1]
	mov	BYTE PTR [r10-1], dl
	cmp	rax, 1
	je	.L6
	movzx	edi, BYTE PTR [r11-2]
	mov	BYTE PTR [r10-2], dil
	cmp	rax, 2
	je	.L6
	movzx	r8d, BYTE PTR [r11-3]
	mov	BYTE PTR [r10-3], r8b
	cmp	rax, 3
	je	.L6
	movzx	esi, BYTE PTR [r11-4]
	mov	BYTE PTR [r10-4], sil
	cmp	rax, 4
	je	.L6
	movzx	r9d, BYTE PTR [r11-5]
	mov	BYTE PTR [r10-5], r9b
	cmp	rax, 5
	je	.L6
	movzx	edx, BYTE PTR [r11-6]
	mov	BYTE PTR [r10-6], dl
	cmp	rax, 6
	je	.L6
	movzx	r11d, BYTE PTR [r11-7]
	mov	BYTE PTR [r10-7], r11b
.L6:
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	cmp	rdi, rsi
	je	.L6
	test	rdx, rdx
	je	.L6
	lea	rax, [rdx-1]
	cmp	rax, 6
	jbe	.L26
	lea	r8, [rsi+1]
	sub	rdi, r8
	cmp	rdi, 14
	jbe	.L26
	cmp	rax, 14
	jbe	.L27
	mov	r8, rdx
	xor	r10d, r10d
	and	r8, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L17:
	movdqu	xmm0, XMMWORD PTR [rsi+r10]
	movups	XMMWORD PTR [rcx+r10], xmm0
	add	r10, 16
	cmp	r8, r10
	jne	.L17
	mov	rax, rdx
	lea	r9, [rsi+r8]
	lea	r11, [rcx+r8]
	sub	rax, r8
	cmp	rdx, r8
	je	.L6
	lea	rdi, [rax-1]
	mov	rdx, rax
	cmp	rdi, 6
	jbe	.L20
.L16:
	mov	rsi, QWORD PTR [rsi+r8]
	mov	QWORD PTR [rcx+r8], rsi
	mov	r8, rdx
	and	r8, -8
	add	r9, r8
	add	r11, r8
	sub	rax, r8
	and	edx, 7
	je	.L6
.L20:
	movzx	edx, BYTE PTR [r9]
	mov	BYTE PTR [r11], dl
	cmp	rax, 1
	je	.L6
	movzx	r10d, BYTE PTR [r9+1]
	mov	BYTE PTR [r11+1], r10b
	cmp	rax, 2
	je	.L6
	movzx	edi, BYTE PTR [r9+2]
	mov	BYTE PTR [r11+2], dil
	cmp	rax, 3
	je	.L6
	movzx	esi, BYTE PTR [r9+3]
	mov	BYTE PTR [r11+3], sil
	cmp	rax, 4
	je	.L6
	movzx	r8d, BYTE PTR [r9+4]
	mov	BYTE PTR [r11+4], r8b
	cmp	rax, 5
	je	.L6
	movzx	edx, BYTE PTR [r9+5]
	mov	BYTE PTR [r11+5], dl
	cmp	rax, 6
	je	.L6
	movzx	r9d, BYTE PTR [r9+6]
	mov	BYTE PTR [r11+6], r9b
	jmp	.L6
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L85:
	sub	r9, 1
.L84:
	movzx	r10d, BYTE PTR [rsi-1+rdx]
	mov	BYTE PTR [rcx-1+rdx], r10b
	mov	rdx, r9
	test	r9, r9
	jne	.L85
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L26:
	xor	r11d, r11d
	.p2align 5
	.p2align 4
	.p2align 3
.L83:
	movzx	eax, BYTE PTR [rsi+r11]
	mov	BYTE PTR [rcx+r11], al
	add	r11, 1
	cmp	rdx, r11
	jne	.L83
	jmp	.L6
.L24:
	mov	rax, rdx
	jmp	.L8
.L27:
	mov	r9, rsi
	mov	r11, rcx
	mov	rax, rdx
	xor	r8d, r8d
	jmp	.L16
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
	jne	.L87
	jmp	.L89
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L90:
	add	rsi, 1
	add	rdi, 1
	sub	rcx, 1
	je	.L89
.L87:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rdi], r8b
	cmp	r8d, edx
	jne	.L90
	lea	rax, [rdi+1]
	ret
	.p2align 4,,10
	.p2align 3
.L89:
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
	jne	.L98
	jmp	.L101
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L100:
	add	rdi, 1
	sub	rdx, 1
	je	.L101
.L98:
	movzx	eax, BYTE PTR [rdi]
	cmp	eax, esi
	jne	.L100
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L101:
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
	jne	.L106
	jmp	.L110
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L108:
	add	rdi, 1
	add	rsi, 1
	sub	rdx, 1
	je	.L110
.L106:
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rdi], al
	je	.L108
	movzx	eax, BYTE PTR [rdi]
	movzx	edx, BYTE PTR [rsi]
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L110:
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
	je	.L122
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	call	memcpy
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L122:
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
	jmp	.L126
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L128:
	mov	rdx, rax
	sub	rax, 1
	movzx	ecx, BYTE PTR [rdx]
	cmp	ecx, esi
	je	.L125
.L126:
	cmp	rax, rdi
	jne	.L128
	xor	edx, edx
.L125:
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
	test	rdx, rdx
	je	.L134
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	movzx	esi, sil
	call	memset
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L134:
	mov	rax, rdi
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
	je	.L138
	.p2align 5
	.p2align 4
	.p2align 3
.L139:
	movzx	ecx, BYTE PTR [rsi+1]
	add	rsi, 1
	add	rax, 1
	mov	BYTE PTR [rax], cl
	test	cl, cl
	jne	.L139
.L138:
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
	jne	.L145
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L147:
	movzx	edx, BYTE PTR [rax+1]
	add	rax, 1
	test	dl, dl
	je	.L144
.L145:
	cmp	edx, esi
	jne	.L147
.L144:
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
	jmp	.L154
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L157:
	add	rax, 1
	test	cl, cl
	je	.L156
.L154:
	movsx	ecx, BYTE PTR [rax]
	cmp	ecx, esi
	jne	.L157
	ret
	.p2align 4,,10
	.p2align 3
.L156:
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
	movzx	edx, BYTE PTR [rdi]
	movzx	ecx, BYTE PTR [rsi]
	mov	eax, 1
	cmp	dl, cl
	je	.L159
	jmp	.L167
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L161:
	movzx	edx, BYTE PTR [rdi+rax]
	add	rax, 1
	movzx	ecx, BYTE PTR [rsi-1+rax]
	cmp	dl, cl
	jne	.L167
.L159:
	test	dl, dl
	jne	.L161
	xor	eax, eax
	sub	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L167:
	movzx	eax, dl
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
	je	.L171
	mov	rax, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L170:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L170
	sub	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L171:
	xor	eax, eax
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
	je	.L173
	movzx	eax, BYTE PTR [rdi]
	sub	rdx, 1
	mov	rcx, rsi
	lea	r8, [rsi+rdx]
	test	al, al
	jne	.L177
	jmp	.L190
	.p2align 4,,10
	.p2align 3
.L192:
	cmp	rcx, r8
	je	.L176
	movzx	eax, BYTE PTR [rdi+1]
	add	rdi, 1
	lea	r10, [rcx+1]
	test	al, al
	je	.L191
	mov	rcx, r10
.L177:
	movzx	edx, BYTE PTR [rcx]
	test	dl, dl
	setne	r9b
	cmp	dl, al
	sete	sil
	test	r9b, sil
	jne	.L192
.L176:
	sub	eax, edx
.L173:
	ret
	.p2align 4,,10
	.p2align 3
.L191:
	movzx	edx, BYTE PTR [rcx+1]
	xor	eax, eax
	sub	eax, edx
	ret
.L190:
	movzx	edx, BYTE PTR [rsi]
	xor	eax, eax
	sub	eax, edx
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
	mov	rcx, rsi
	cmp	rdx, 1
	jle	.L193
	mov	r11, rdx
	lea	rax, [rdx-2]
	shr	r11
	lea	r9, [r11-1]
	cmp	rax, 13
	jbe	.L200
	mov	r8, rdx
	mov	r10, rdx
	movdqa	xmm1, XMMWORD PTR .LC0[rip]
	xor	eax, eax
	shr	r8, 4
	and	r10, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L196:
	movdqu	xmm0, XMMWORD PTR [rdi+rax]
	pshufb	xmm0, xmm1
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	r10, rax
	jne	.L196
	lea	rsi, [0+r8*8]
	mov	rax, r8
	mov	r8, rsi
	sal	rax, 4
	neg	r8
	lea	r10, [rcx+rax]
	add	rax, rdi
	lea	rdx, [rdx+r8*2]
	cmp	rsi, r11
	je	.L205
.L195:
	sub	r9, rsi
	mov	r11, r9
	lea	r9, [r9+1]
	cmp	r11, 2
	jbe	.L198
	movq	xmm2, QWORD PTR [rdi+rsi*2]
	mov	rdi, r9
	and	rdi, -4
	pshufb	xmm2, XMMWORD PTR .LC1[rip]
	movq	QWORD PTR [rcx+rsi*2], xmm2
	lea	rcx, [rdi+rdi]
	neg	rdi
	add	r10, rcx
	add	rax, rcx
	lea	rdx, [rdx+rdi*2]
	and	r9d, 3
	je	.L193
.L198:
	movbe	si, WORD PTR [rax]
	mov	WORD PTR [r10], si
	cmp	rdx, 3
	jle	.L193
	movbe	r8w, WORD PTR [rax+2]
	mov	WORD PTR [r10+2], r8w
	cmp	rdx, 5
	jle	.L193
	movbe	dx, WORD PTR [rax+4]
	mov	WORD PTR [r10+4], dx
.L193:
	ret
	.p2align 4,,10
	.p2align 3
.L205:
	ret
.L200:
	mov	r10, rsi
	mov	rax, rdi
	xor	esi, esi
	jmp	.L195
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
	setbe	cl
	cmp	edi, 32
	sete	dl
	or	ecx, edx
	movzx	eax, cl
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
	jbe	.L218
	cmp	edi, 31
	jbe	.L218
	lea	edx, [rdi-8232]
	mov	eax, 1
	cmp	edx, 1
	jbe	.L216
	sub	edi, 65529
	xor	eax, eax
	cmp	edi, 2
	setbe	al
	ret
	.p2align 4,,10
	.p2align 3
.L218:
	mov	eax, 1
.L216:
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
	jbe	.L227
	lea	eax, [rdi-8234]
	cmp	eax, 47061
	jbe	.L224
	cmp	edi, 8231
	jbe	.L224
	lea	edx, [rdi-57344]
	mov	eax, 1
	cmp	edx, 8184
	jbe	.L221
	lea	ecx, [rdi-65532]
	xor	eax, eax
	cmp	ecx, 1048579
	ja	.L221
	not	edi
	xor	eax, eax
	and	edi, 65534
	setne	al
	ret
	.p2align 4,,10
	.p2align 3
.L224:
	mov	eax, 1
.L221:
	ret
	.p2align 4,,10
	.p2align 3
.L227:
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
	jbe	.L228
	or	edi, 32
	xor	eax, eax
	sub	edi, 97
	cmp	edi, 5
	setbe	al
.L228:
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
	jp	.L232
	ucomisd	xmm1, xmm1
	jp	.L236
	comisd	xmm0, xmm1
	jbe	.L239
	subsd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L239:
	pxor	xmm0, xmm0
.L232:
	ret
	.p2align 4,,10
	.p2align 3
.L236:
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
	jp	.L240
	ucomiss	xmm1, xmm1
	jp	.L244
	comiss	xmm0, xmm1
	jbe	.L247
	subss	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L247:
	pxor	xmm0, xmm0
.L240:
	ret
	.p2align 4,,10
	.p2align 3
.L244:
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
	jp	.L248
	ucomisd	xmm1, xmm1
	jp	.L254
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L250
	test	eax, eax
	jne	.L248
.L254:
	movapd	xmm1, xmm0
.L248:
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L250:
	maxsd	xmm1, xmm0
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
	jp	.L257
	ucomiss	xmm1, xmm1
	jp	.L263
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L259
	test	eax, eax
	jne	.L257
.L263:
	movaps	xmm1, xmm0
.L257:
	movaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L259:
	maxss	xmm1, xmm0
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
	jp	.L271
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L274
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
	je	.L268
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L271:
	fstp	st(0)
	jmp	.L266
	.p2align 4,,10
	.p2align 3
.L274:
	fstp	st(0)
.L266:
	ret
	.p2align 4,,10
	.p2align 3
.L268:
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
	jp	.L280
	ucomisd	xmm1, xmm1
	jp	.L275
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L277
	test	eax, eax
	jne	.L275
.L280:
	movapd	xmm0, xmm1
.L275:
	ret
	.p2align 4,,10
	.p2align 3
.L277:
	minsd	xmm0, xmm1
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
	jp	.L289
	ucomiss	xmm1, xmm1
	jp	.L284
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L286
	test	eax, eax
	jne	.L284
.L289:
	movaps	xmm0, xmm1
.L284:
	ret
	.p2align 4,,10
	.p2align 3
.L286:
	minss	xmm0, xmm1
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
	jp	.L301
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L299
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
	je	.L295
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	ret
	.p2align 4,,10
	.p2align 3
.L299:
	fstp	st(0)
	jmp	.L293
	.p2align 4,,10
	.p2align 3
.L301:
	fstp	st(0)
.L293:
	ret
	.p2align 4,,10
	.p2align 3
.L295:
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
	je	.L303
	.p2align 5
	.p2align 4
	.p2align 3
.L304:
	mov	ecx, eax
	add	rdx, 1
	and	ecx, 63
	movzx	esi, BYTE PTR digits[rcx]
	mov	BYTE PTR [rdx-1], sil
	shr	eax, 6
	jne	.L304
.L303:
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
	je	.L315
	movq	xmm0, QWORD PTR [rsi]
	movq	xmm1, rsi
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR [rdi], xmm0
	mov	QWORD PTR [rsi], rdi
	mov	rax, QWORD PTR [rdi]
	test	rax, rax
	je	.L309
	mov	QWORD PTR [rax+8], rdi
.L309:
	ret
	.p2align 4,,10
	.p2align 3
.L315:
	pxor	xmm2, xmm2
	movups	XMMWORD PTR [rdi], xmm2
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
	je	.L317
	mov	rdx, QWORD PTR [rdi+8]
	mov	QWORD PTR [rax+8], rdx
.L317:
	mov	rcx, QWORD PTR [rdi+8]
	test	rcx, rcx
	je	.L316
	mov	QWORD PTR [rcx], rax
.L316:
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
	je	.L326
	mov	r13, rsi
	xor	r15d, r15d
	jmp	.L328
	.p2align 4,,10
	.p2align 3
.L341:
	add	r15, 1
	add	r13, rbx
	cmp	rbp, r15
	je	.L326
.L328:
	mov	rax, QWORD PTR [rsp+8]
	mov	r14, r13
	mov	rsi, r13
	mov	rdi, r12
	call	rax
	test	eax, eax
	jne	.L341
.L325:
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
.L326:
	.cfi_restore_state
	lea	rdx, [rbp+1]
	mov	rcx, QWORD PTR [rsp+24]
	mov	r14, QWORD PTR [rsp+16]
	imul	rbp, rbx
	mov	QWORD PTR [rcx], rdx
	add	r14, rbp
	test	rbx, rbx
	je	.L325
	mov	rdx, rbx
	mov	rsi, r12
	mov	rdi, r14
	call	memmove
	jmp	.L325
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
	je	.L343
	mov	r13, rcx
	mov	r12, r8
	mov	rbx, rsi
	xor	ebp, ebp
	jmp	.L345
	.p2align 4,,10
	.p2align 3
.L354:
	add	rbp, 1
	add	rbx, r13
	cmp	r14, rbp
	je	.L343
.L345:
	mov	rdi, QWORD PTR [rsp+8]
	mov	r15, rbx
	mov	rsi, rbx
	call	r12
	test	eax, eax
	jne	.L354
.L342:
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
.L343:
	.cfi_restore_state
	xor	r15d, r15d
	jmp	.L342
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
	jmp	.L383
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L379:
	add	rdi, 1
.L383:
	movsx	eax, BYTE PTR [rdi]
	lea	ecx, [rax-9]
	mov	edx, eax
	cmp	ecx, 4
	jbe	.L379
	cmp	dl, 32
	je	.L379
	cmp	dl, 43
	je	.L360
	cmp	dl, 45
	jne	.L384
	lea	r8, [rdi+1]
	movsx	edi, BYTE PTR [rdi+1]
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	ja	.L369
	mov	r9d, 1
.L363:
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L366:
	lea	r10d, [rcx+rcx*4]
	movsx	esi, BYTE PTR [r8+1]
	lea	r11d, [rdx-48]
	add	r8, 1
	add	r10d, r10d
	movsx	eax, r11b
	mov	ecx, r10d
	mov	edx, esi
	sub	esi, 48
	sub	ecx, eax
	cmp	esi, 9
	jbe	.L366
	sub	eax, r10d
	test	r9d, r9d
	cmovne	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L384:
	sub	eax, 48
	mov	r8, rdi
	xor	r9d, r9d
	cmp	eax, 9
	jbe	.L363
.L369:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L360:
	movsx	esi, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	xor	r9d, r9d
	mov	edx, esi
	sub	esi, 48
	cmp	esi, 9
	jbe	.L363
	jmp	.L369
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.p2align 4
	.globl	atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
	jmp	.L412
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L408:
	add	rdi, 1
.L412:
	movsx	eax, BYTE PTR [rdi]
	lea	ecx, [rax-9]
	mov	edx, eax
	cmp	ecx, 4
	jbe	.L408
	cmp	dl, 32
	je	.L408
	cmp	dl, 43
	je	.L389
	cmp	dl, 45
	jne	.L413
	lea	r8, [rdi+1]
	movsx	edi, BYTE PTR [rdi+1]
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	ja	.L398
	mov	r9d, 1
.L392:
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L395:
	lea	r10, [rcx+rcx*4]
	movsx	esi, BYTE PTR [r8+1]
	lea	r11d, [rdx-48]
	add	r8, 1
	add	r10, r10
	movsx	rax, r11b
	mov	rcx, r10
	mov	edx, esi
	sub	esi, 48
	sub	rcx, rax
	cmp	esi, 9
	jbe	.L395
	sub	rax, r10
	test	r9d, r9d
	cmovne	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L413:
	sub	eax, 48
	mov	r8, rdi
	xor	r9d, r9d
	cmp	eax, 9
	jbe	.L392
.L398:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L389:
	movsx	esi, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	xor	r9d, r9d
	mov	edx, esi
	sub	esi, 48
	cmp	esi, 9
	jbe	.L392
	jmp	.L398
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.p2align 4
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB171:
	.cfi_startproc
	jmp	.L438
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L435:
	add	rdi, 1
.L438:
	movsx	eax, BYTE PTR [rdi]
	lea	ecx, [rax-9]
	mov	edx, eax
	cmp	ecx, 4
	jbe	.L435
	cmp	dl, 32
	je	.L435
	cmp	dl, 43
	je	.L418
	cmp	dl, 45
	je	.L439
	sub	eax, 48
	mov	r8, rdi
	xor	r9d, r9d
	cmp	eax, 9
	ja	.L426
.L420:
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L423:
	lea	r10, [rcx+rcx*4]
	movsx	esi, BYTE PTR [r8+1]
	lea	r11d, [rdx-48]
	add	r8, 1
	add	r10, r10
	movsx	rax, r11b
	mov	rcx, r10
	mov	edx, esi
	sub	esi, 48
	sub	rcx, rax
	cmp	esi, 9
	jbe	.L423
	sub	rax, r10
	test	r9d, r9d
	cmovne	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L439:
	lea	r8, [rdi+1]
	movsx	edi, BYTE PTR [rdi+1]
	mov	r9d, 1
	mov	edx, edi
	sub	edi, 48
	cmp	edi, 9
	jbe	.L420
.L426:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L418:
	movsx	esi, BYTE PTR [rdi+1]
	lea	r8, [rdi+1]
	mov	edx, esi
	sub	esi, 48
	cmp	esi, 9
	ja	.L426
	xor	r9d, r9d
	jmp	.L420
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
	je	.L441
	mov	r12, rsi
	mov	rbx, rdx
	mov	r13, rcx
	mov	r15, r8
	jmp	.L444
	.p2align 4,,10
	.p2align 3
.L454:
	je	.L440
	sub	rbx, 1
	lea	r12, [rbp+0+r13]
	sub	rbx, r14
	test	rbx, rbx
	je	.L441
.L444:
	mov	r14, rbx
	mov	rdi, QWORD PTR [rsp+8]
	shr	r14
	mov	rbp, r14
	imul	rbp, r13
	add	rbp, r12
	mov	rsi, rbp
	call	r15
	test	eax, eax
	jns	.L454
	mov	rbx, r14
	test	rbx, rbx
	jne	.L444
.L441:
	xor	ebp, ebp
.L440:
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
	mov	r14, r8
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	mov	r13d, edx
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	mov	r12, rcx
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	mov	rbp, rsi
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 24
	.cfi_def_cfa_offset 80
	mov	QWORD PTR [rsp], rdi
	mov	QWORD PTR [rsp+8], r9
	test	edx, edx
	je	.L460
	.p2align 4
	.p2align 3
.L468:
	mov	r15d, r13d
	mov	rdx, QWORD PTR [rsp+8]
	mov	rdi, QWORD PTR [rsp]
	sar	r15d
	movsx	rbx, r15d
	imul	rbx, r12
	add	rbx, rbp
	mov	rsi, rbx
	call	r14
	test	eax, eax
	je	.L455
	jle	.L458
	lea	r13d, [r13-1]
	lea	rbp, [rbx+r12]
	sar	r13d
	jne	.L468
.L460:
	xor	ebx, ebx
.L455:
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
.L458:
	.cfi_restore_state
	test	r15d, r15d
	je	.L460
	mov	r13d, r15d
	jmp	.L468
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
	jmp	.L487
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L489:
	cmp	esi, eax
	je	.L488
	add	rdi, 4
.L487:
	mov	eax, DWORD PTR [rdi]
	test	eax, eax
	jne	.L489
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L488:
	mov	rax, rdi
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
	mov	eax, 4
	cmp	edx, ecx
	je	.L491
	jmp	.L492
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L493:
	mov	edx, DWORD PTR [rdi+rax]
	add	rax, 4
	mov	ecx, DWORD PTR [rsi-4+rax]
	cmp	edx, ecx
	jne	.L492
.L491:
	test	edx, edx
	jne	.L493
.L492:
	cmp	edx, ecx
	mov	esi, -1
	setg	dil
	movzx	eax, dil
	cmovl	eax, esi
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
.L500:
	mov	ecx, DWORD PTR [rsi+rdx]
	mov	DWORD PTR [rax+rdx], ecx
	add	rdx, 4
	test	ecx, ecx
	jne	.L500
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
	test	ecx, ecx
	je	.L505
	mov	rax, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L504:
	mov	edx, DWORD PTR [rax+4]
	add	rax, 4
	test	edx, edx
	jne	.L504
	sub	rax, rdi
	sar	rax, 2
	ret
	.p2align 4,,10
	.p2align 3
.L505:
	xor	eax, eax
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
	jne	.L508
	jmp	.L514
	.p2align 4,,10
	.p2align 3
.L521:
	test	eax, eax
	je	.L512
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	je	.L514
.L508:
	mov	eax, DWORD PTR [rdi]
	cmp	DWORD PTR [rsi], eax
	je	.L521
.L512:
	mov	edx, DWORD PTR [rsi]
	cmp	DWORD PTR [rdi], edx
	mov	ecx, -1
	setg	sil
	movzx	eax, sil
	cmovl	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L514:
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
	jne	.L523
	jmp	.L526
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L525:
	add	rdi, 4
	sub	rdx, 1
	je	.L526
.L523:
	cmp	DWORD PTR [rdi], esi
	jne	.L525
	mov	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L526:
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
	jne	.L531
	jmp	.L536
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L533:
	add	rdi, 4
	add	rsi, 4
	sub	rdx, 1
	je	.L536
.L531:
	mov	eax, DWORD PTR [rdi]
	cmp	eax, DWORD PTR [rsi]
	je	.L533
	cmp	eax, DWORD PTR [rsi]
	mov	edx, -1
	setg	cl
	movzx	eax, cl
	cmovl	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L536:
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
	je	.L548
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	sal	rdx, 2
	call	memcpy
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L548:
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
	mov	rcx, rdi
	mov	r8, rdx
	cmp	rdi, rsi
	je	.L577
	mov	rax, rcx
	lea	rdx, [0+rdx*4]
	lea	rdi, [r8-1]
	sub	rax, rsi
	cmp	rax, rdx
	jnb	.L599
	test	r8, r8
	je	.L577
	cmp	rdi, 2
	jbe	.L596
	mov	rax, rcx
	sub	rax, rsi
	add	rax, 12
	cmp	rax, 8
	jbe	.L596
	mov	r9, r8
	sub	rdx, 16
	xor	r11d, r11d
	shr	r9, 2
	lea	r10, [rsi+rdx]
	add	rdx, rcx
	neg	r9
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L557:
	movdqu	xmm1, XMMWORD PTR [r10+r11]
	movups	XMMWORD PTR [rdx+r11], xmm1
	sub	r11, 16
	cmp	r9, r11
	jne	.L557
	mov	rdx, r8
	and	rdx, -4
	sub	rdi, rdx
	and	r8d, 3
	je	.L577
	mov	r8d, DWORD PTR [rsi+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], r8d
	test	rdi, rdi
	je	.L577
	sub	rdi, 1
	mov	r10d, DWORD PTR [rsi+rdi*4]
	lea	rax, [0+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], r10d
	je	.L577
	mov	esi, DWORD PTR [rsi-4+rax]
	mov	DWORD PTR [rcx-4+rax], esi
.L577:
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L599:
	test	r8, r8
	je	.L577
	cmp	rdi, 2
	jbe	.L569
	lea	r9, [rsi+4]
	mov	r10, rcx
	sub	r10, r9
	cmp	r10, 8
	jbe	.L569
	mov	r11, r8
	xor	eax, eax
	xor	edx, edx
	shr	r11, 2
	.p2align 5
	.p2align 4
	.p2align 3
.L563:
	movdqu	xmm0, XMMWORD PTR [rsi+rax]
	add	rdx, 1
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	r11, rdx
	jne	.L563
	mov	r9, r8
	and	r9, -4
	sub	rdi, r9
	sal	r9, 2
	add	rsi, r9
	add	r9, rcx
	and	r8d, 3
	je	.L577
	mov	r8d, DWORD PTR [rsi]
	mov	DWORD PTR [r9], r8d
	test	rdi, rdi
	je	.L577
	mov	r10d, DWORD PTR [rsi+4]
	mov	DWORD PTR [r9+4], r10d
	cmp	rdi, 1
	je	.L577
	mov	esi, DWORD PTR [rsi+8]
	mov	DWORD PTR [r9+8], esi
	jmp	.L577
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L596:
	mov	r9d, DWORD PTR [rsi+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], r9d
	sub	rdi, 1
	jb	.L577
	mov	r9d, DWORD PTR [rsi+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], r9d
	sub	rdi, 1
	jnb	.L596
	jmp	.L577
	.p2align 4,,10
	.p2align 3
.L569:
	xor	edi, edi
	.p2align 5
	.p2align 4
	.p2align 3
.L597:
	mov	r11d, DWORD PTR [rsi+rdi*4]
	mov	DWORD PTR [rcx+rdi*4], r11d
	add	rdi, 1
	cmp	r8, rdi
	jne	.L597
	jmp	.L577
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
	lea	r9, [rdx-1]
	test	rdx, rdx
	je	.L601
	cmp	r9, 2
	jbe	.L605
	mov	rdi, rdx
	movd	xmm1, esi
	xor	ecx, ecx
	shr	rdi, 2
	pshufd	xmm0, xmm1, 0
	.p2align 5
	.p2align 4
	.p2align 3
.L603:
	mov	r8, rcx
	add	rcx, 1
	sal	r8, 4
	movups	XMMWORD PTR [rax+r8], xmm0
	cmp	rdi, rcx
	jne	.L603
	test	dl, 3
	je	.L601
	and	rdx, -4
	sub	r9, rdx
	lea	rdx, [rax+rdx*4]
.L602:
	mov	DWORD PTR [rdx], esi
	test	r9, r9
	je	.L601
	mov	DWORD PTR [rdx+4], esi
	cmp	r9, 1
	je	.L601
	mov	DWORD PTR [rdx+8], esi
.L601:
	ret
.L605:
	mov	rdx, rdi
	jmp	.L602
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.p2align 4
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	mov	rcx, rdi
	cmp	rdi, rsi
	jnb	.L620
	test	rdx, rdx
	je	.L619
	lea	r9, [rdx-1]
	cmp	r9, 6
	jbe	.L699
	lea	r8, [rdi-2+rdx]
	mov	r10, rsi
	sub	r10, r8
	lea	rdi, [r10+14+r9]
	cmp	rdi, 14
	jbe	.L699
	lea	r11, [rcx+rdx]
	lea	r10, [rsi+rdx]
	cmp	r9, 14
	jbe	.L639
	mov	rdi, rdx
	lea	r8, [rdx-16]
	xor	eax, eax
	and	rdi, -16
	lea	r9, [rcx+r8]
	add	r8, rsi
	neg	rdi
	.p2align 5
	.p2align 4
	.p2align 3
.L624:
	movdqu	xmm1, XMMWORD PTR [r9+rax]
	movups	XMMWORD PTR [r8+rax], xmm1
	sub	rax, 16
	cmp	rdi, rax
	jne	.L624
	mov	rax, rdx
	add	r10, rdi
	add	r11, rdi
	and	eax, 15
	and	edx, 15
	je	.L619
	lea	r8, [rax-1]
	mov	rdx, rax
	cmp	r8, 6
	jbe	.L626
.L623:
	mov	rcx, QWORD PTR [rcx-8+rdx]
	mov	QWORD PTR [rsi-8+rdx], rcx
	mov	rsi, rdx
	and	rsi, -8
	sub	r10, rsi
	sub	r11, rsi
	sub	rax, rsi
	and	edx, 7
	je	.L619
.L626:
	movzx	edx, BYTE PTR [r11-1]
	mov	BYTE PTR [r10-1], dl
	cmp	rax, 1
	je	.L619
	movzx	r9d, BYTE PTR [r11-2]
	mov	BYTE PTR [r10-2], r9b
	cmp	rax, 2
	je	.L619
	movzx	edi, BYTE PTR [r11-3]
	mov	BYTE PTR [r10-3], dil
	cmp	rax, 3
	je	.L619
	movzx	r8d, BYTE PTR [r11-4]
	mov	BYTE PTR [r10-4], r8b
	cmp	rax, 4
	je	.L619
	movzx	ecx, BYTE PTR [r11-5]
	mov	BYTE PTR [r10-5], cl
	cmp	rax, 5
	je	.L619
	movzx	esi, BYTE PTR [r11-6]
	mov	BYTE PTR [r10-6], sil
	cmp	rax, 6
	je	.L619
	movzx	r11d, BYTE PTR [r11-7]
	mov	BYTE PTR [r10-7], r11b
	ret
	.p2align 4,,10
	.p2align 3
.L620:
	jne	.L701
.L619:
	ret
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L702:
	sub	r9, 1
.L699:
	movzx	r10d, BYTE PTR [rcx-1+rdx]
	mov	BYTE PTR [rsi-1+rdx], r10b
	mov	rdx, r9
	test	r9, r9
	jne	.L702
	ret
	.p2align 4,,10
	.p2align 3
.L701:
	test	rdx, rdx
	je	.L619
	lea	rax, [rdx-1]
	cmp	rax, 6
	jbe	.L641
	lea	r8, [rdi+1]
	mov	rdi, rsi
	sub	rdi, r8
	cmp	rdi, 14
	jbe	.L641
	cmp	rax, 14
	jbe	.L642
	mov	r8, rdx
	xor	r10d, r10d
	and	r8, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L632:
	movdqu	xmm0, XMMWORD PTR [rcx+r10]
	movups	XMMWORD PTR [rsi+r10], xmm0
	add	r10, 16
	cmp	r8, r10
	jne	.L632
	mov	rax, rdx
	lea	r11, [rsi+r8]
	lea	r9, [rcx+r8]
	sub	rax, r8
	cmp	rdx, r8
	je	.L619
	lea	rdi, [rax-1]
	mov	rdx, rax
	cmp	rdi, 6
	jbe	.L635
.L631:
	mov	rcx, QWORD PTR [rcx+r8]
	mov	QWORD PTR [rsi+r8], rcx
	mov	rsi, rdx
	and	rsi, -8
	add	r11, rsi
	add	r9, rsi
	sub	rax, rsi
	and	edx, 7
	je	.L619
.L635:
	movzx	edx, BYTE PTR [r9]
	mov	BYTE PTR [r11], dl
	cmp	rax, 1
	je	.L619
	movzx	r8d, BYTE PTR [r9+1]
	mov	BYTE PTR [r11+1], r8b
	cmp	rax, 2
	je	.L619
	movzx	r10d, BYTE PTR [r9+2]
	mov	BYTE PTR [r11+2], r10b
	cmp	rax, 3
	je	.L619
	movzx	edi, BYTE PTR [r9+3]
	mov	BYTE PTR [r11+3], dil
	cmp	rax, 4
	je	.L619
	movzx	ecx, BYTE PTR [r9+4]
	mov	BYTE PTR [r11+4], cl
	cmp	rax, 5
	je	.L619
	movzx	esi, BYTE PTR [r9+5]
	mov	BYTE PTR [r11+5], sil
	cmp	rax, 6
	je	.L619
	movzx	r9d, BYTE PTR [r9+6]
	mov	BYTE PTR [r11+6], r9b
	ret
	.p2align 4,,10
	.p2align 3
.L641:
	xor	r11d, r11d
	.p2align 5
	.p2align 4
	.p2align 3
.L698:
	movzx	eax, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rsi+r11], al
	add	r11, 1
	cmp	rdx, r11
	jne	.L698
	ret
.L639:
	mov	rax, rdx
	jmp	.L623
.L642:
	mov	r11, rsi
	mov	r9, rcx
	mov	rax, rdx
	xor	r8d, r8d
	jmp	.L631
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
	jmp	.L719
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L717:
	cmp	ecx, 32
	je	.L721
.L719:
	mov	eax, edi
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L717
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L721:
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
	je	.L722
	mov	eax, edi
	and	eax, 1
	jne	.L722
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L724:
	sar	edi
	add	eax, 1
	test	dil, 1
	je	.L724
.L722:
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
	movss	xmm1, DWORD PTR .LC5[rip]
	mov	eax, 1
	comiss	xmm1, xmm0
	ja	.L729
	xor	eax, eax
	comiss	xmm0, DWORD PTR .LC6[rip]
	seta	al
.L729:
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
	movsd	xmm1, QWORD PTR .LC7[rip]
	mov	eax, 1
	comisd	xmm1, xmm0
	ja	.L732
	xor	eax, eax
	comisd	xmm0, QWORD PTR .LC8[rip]
	seta	al
.L732:
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
	fld	TBYTE PTR .LC9[rip]
	fcomip	st, st(1)
	ja	.L738
	fld	TBYTE PTR .LC10[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L735
	.p2align 4,,10
	.p2align 3
.L738:
	fstp	st(0)
.L735:
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
	jp	.L741
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm1, xmm0
	jp	.L748
	jne	.L748
.L741:
	ret
	.p2align 4,,10
	.p2align 3
.L748:
	movss	xmm2, DWORD PTR .LC11[rip]
	test	edi, edi
	jns	.L743
	movss	xmm2, DWORD PTR .LC12[rip]
.L743:
	test	dil, 1
	je	.L744
	.p2align 4
	.p2align 3
.L745:
	mulss	xmm0, xmm2
.L744:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L741
	mulss	xmm2, xmm2
	test	dil, 1
	jne	.L745
.L755:
	mulss	xmm2, xmm2
	mov	edx, edi
	shr	edx, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L745
	jmp	.L755
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
	jp	.L757
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm1, xmm0
	jp	.L764
	jne	.L764
.L757:
	ret
	.p2align 4,,10
	.p2align 3
.L764:
	movsd	xmm2, QWORD PTR .LC13[rip]
	test	edi, edi
	jns	.L759
	movsd	xmm2, QWORD PTR .LC14[rip]
.L759:
	test	dil, 1
	je	.L760
	.p2align 4
	.p2align 3
.L761:
	mulsd	xmm0, xmm2
.L760:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L757
	mulsd	xmm2, xmm2
	test	dil, 1
	jne	.L761
.L771:
	mulsd	xmm2, xmm2
	mov	edx, edi
	shr	edx, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L761
	jmp	.L771
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
	jp	.L773
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L780
	jne	.L780
	jmp	.L773
	.p2align 4,,10
	.p2align 3
.L789:
	fstp	st(0)
.L773:
	ret
	.p2align 4,,10
	.p2align 3
.L780:
	test	edi, edi
	js	.L787
	fld	DWORD PTR .LC11[rip]
.L775:
	test	dil, 1
	je	.L776
	.p2align 4
	.p2align 3
.L777:
	fmul	st(1), st
.L776:
	mov	eax, edi
	shr	eax, 31
	add	edi, eax
	sar	edi
	je	.L789
	fmul	st, st(0)
	test	dil, 1
	jne	.L777
.L788:
	mov	edx, edi
	fmul	st, st(0)
	shr	edx, 31
	add	edi, edx
	sar	edi
	test	dil, 1
	jne	.L777
	jmp	.L788
	.p2align 4,,10
	.p2align 3
.L787:
	fld	DWORD PTR .LC12[rip]
	jmp	.L775
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.p2align 4
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	mov	rcx, rdi
	test	rdx, rdx
	je	.L791
	lea	rax, [rdx-1]
	cmp	rax, 14
	jbe	.L797
	mov	rdi, rdx
	xor	r10d, r10d
	and	rdi, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L793:
	movdqu	xmm2, XMMWORD PTR [rcx+r10]
	movdqu	xmm0, XMMWORD PTR [rsi+r10]
	pxor	xmm0, xmm2
	movups	XMMWORD PTR [rcx+r10], xmm0
	add	r10, 16
	cmp	r10, rdi
	jne	.L793
	mov	r9, rdx
	lea	r11, [rcx+rdi]
	lea	r8, [rsi+rdi]
	sub	r9, rdi
	cmp	rdx, rdi
	je	.L791
.L792:
	sub	rdx, rdi
	lea	rax, [rdx-1]
	cmp	rax, 6
	jbe	.L795
	lea	r10, [rcx+rdi]
	movq	xmm3, QWORD PTR [rsi+rdi]
	mov	rsi, rdx
	movq	xmm1, QWORD PTR [r10]
	and	rsi, -8
	add	r11, rsi
	add	r8, rsi
	sub	r9, rsi
	and	edx, 7
	pxor	xmm3, xmm1
	movq	QWORD PTR [r10], xmm3
	je	.L791
.L795:
	movzx	edx, BYTE PTR [r8]
	xor	BYTE PTR [r11], dl
	cmp	r9, 1
	je	.L791
	movzx	edi, BYTE PTR [r8+1]
	xor	BYTE PTR [r11+1], dil
	cmp	r9, 2
	je	.L791
	movzx	eax, BYTE PTR [r8+2]
	xor	BYTE PTR [r11+2], al
	cmp	r9, 3
	je	.L791
	movzx	r10d, BYTE PTR [r8+3]
	xor	BYTE PTR [r11+3], r10b
	cmp	r9, 4
	je	.L791
	movzx	esi, BYTE PTR [r8+4]
	xor	BYTE PTR [r11+4], sil
	cmp	r9, 5
	je	.L791
	movzx	edx, BYTE PTR [r8+5]
	xor	BYTE PTR [r11+5], dl
	cmp	r9, 6
	je	.L791
	movzx	r8d, BYTE PTR [r8+6]
	xor	BYTE PTR [r11+6], r8b
.L791:
	mov	rax, rcx
	ret
.L797:
	mov	r11, rdi
	mov	r8, rsi
	mov	r9, rdx
	xor	edi, edi
	jmp	.L792
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
	je	.L824
	.p2align 4
	.p2align 4
	.p2align 3
.L825:
	add	rcx, 1
	cmp	BYTE PTR [rcx], 0
	jne	.L825
.L824:
	test	rdx, rdx
	jne	.L826
	jmp	.L827
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L828:
	add	rsi, 1
	add	rcx, 1
	sub	rdx, 1
	je	.L827
.L826:
	movzx	r8d, BYTE PTR [rsi]
	mov	BYTE PTR [rcx], r8b
	test	r8b, r8b
	jne	.L828
	ret
	.p2align 4,,10
	.p2align 3
.L827:
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
	je	.L837
.L838:
	cmp	BYTE PTR [rdi+rax], 0
	jne	.L840
.L837:
	ret
	.p2align 4,,10
	.p2align 3
.L840:
	add	rax, 1
	cmp	rsi, rax
	jne	.L838
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
	je	.L851
.L847:
	mov	rdx, rsi
	jmp	.L850
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L849:
	add	rdx, 1
	cmp	cl, r8b
	je	.L848
.L850:
	movzx	ecx, BYTE PTR [rdx]
	test	cl, cl
	jne	.L849
	movzx	r8d, BYTE PTR [rax+1]
	add	rax, 1
	test	r8b, r8b
	jne	.L847
.L851:
	xor	eax, eax
.L848:
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
.L856:
	movsx	ecx, BYTE PTR [rdi]
	cmp	ecx, esi
	cmove	rdx, rdi
	add	rdi, 1
	test	cl, cl
	jne	.L856
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
	mov	rdx, rdi
	test	r10b, r10b
	je	.L870
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L860:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L860
	mov	r9, rdx
	sub	rax, rsi
	je	.L858
	lea	r11, [rsi-1+rax]
	jmp	.L880
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L882:
	add	rdx, 1
	test	cl, cl
	je	.L881
.L880:
	movzx	ecx, BYTE PTR [rdx]
	cmp	cl, r10b
	jne	.L882
	mov	ecx, r10d
	mov	rax, rsi
	mov	r8, rdx
	jmp	.L862
	.p2align 4,,10
	.p2align 3
.L883:
	test	dil, dil
	setne	r9b
	cmp	dil, cl
	sete	dil
	test	r9b, dil
	je	.L863
	movzx	ecx, BYTE PTR [r8+1]
	add	r8, 1
	add	rax, 1
	test	cl, cl
	je	.L863
.L862:
	movzx	edi, BYTE PTR [rax]
	cmp	rax, r11
	jne	.L883
.L863:
	cmp	cl, BYTE PTR [rax]
	je	.L870
	add	rdx, 1
	jmp	.L880
	.p2align 4,,10
	.p2align 3
.L881:
	xor	r9d, r9d
.L858:
	mov	rax, r9
	ret
.L870:
	mov	r9, rdx
	mov	rax, r9
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
	ja	.L894
	comisd	xmm0, xmm2
	jbe	.L888
	comisd	xmm2, xmm1
	ja	.L887
.L888:
	ret
	.p2align 4,,10
	.p2align 3
.L894:
	comisd	xmm1, xmm2
	jbe	.L888
.L887:
	xorpd	xmm0, XMMWORD PTR .LC15[rip]
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
	mov	rax, rdi
	test	rcx, rcx
	je	.L895
	cmp	rsi, rcx
	jb	.L906
	sub	rsi, rcx
	add	rsi, rdi
	jc	.L906
	movzx	r9d, BYTE PTR [rdx]
	jmp	.L901
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L905:
	mov	rax, rdi
.L897:
	cmp	rsi, rax
	jb	.L906
.L901:
	lea	rdi, [rax+1]
	cmp	BYTE PTR [rax], r9b
	jne	.L905
	cmp	rcx, 1
	je	.L895
.L900:
	mov	r11d, 1
	jmp	.L898
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L899:
	add	r11, 1
	cmp	rcx, r11
	je	.L895
.L898:
	movzx	r10d, BYTE PTR [rdx+r11]
	cmp	BYTE PTR [rax+r11], r10b
	je	.L899
	cmp	rsi, rdi
	jb	.L906
	lea	rax, [rdi+1]
	cmp	r9b, BYTE PTR [rdi]
	jne	.L897
	mov	r8, rdi
	mov	rdi, rax
	mov	rax, r8
	jmp	.L900
	.p2align 4,,10
	.p2align 3
.L906:
	xor	eax, eax
.L895:
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
	je	.L916
	call	memmove
	mov	rdi, rax
.L916:
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
	pxor	xmm2, xmm2
	comisd	xmm2, xmm0
	ja	.L945
	movsd	xmm5, QWORD PTR .LC18[rip]
	xor	edx, edx
	comisd	xmm0, xmm5
	jb	.L946
.L924:
	movsd	xmm6, QWORD PTR .LC14[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L931:
	mulsd	xmm0, xmm6
	add	eax, 1
	comisd	xmm0, xmm5
	jnb	.L931
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	je	.L921
.L948:
	xorpd	xmm0, XMMWORD PTR .LC15[rip]
.L921:
	ret
	.p2align 4,,10
	.p2align 3
.L946:
	movsd	xmm1, QWORD PTR .LC14[rip]
	comisd	xmm1, xmm0
	jbe	.L927
	ucomisd	xmm0, xmm2
	jp	.L937
	jne	.L937
.L927:
	mov	DWORD PTR [rdi], 0
	ret
	.p2align 4,,10
	.p2align 3
.L945:
	movsd	xmm4, QWORD PTR .LC16[rip]
	movapd	xmm3, xmm0
	xorpd	xmm3, XMMWORD PTR .LC15[rip]
	comisd	xmm4, xmm0
	jb	.L947
	movsd	xmm5, QWORD PTR .LC18[rip]
	movapd	xmm0, xmm3
	mov	edx, 1
	jmp	.L924
	.p2align 4,,10
	.p2align 3
.L947:
	comisd	xmm0, QWORD PTR .LC17[rip]
	jbe	.L927
	movsd	xmm1, QWORD PTR .LC14[rip]
	mov	edx, 1
.L925:
	movapd	xmm0, xmm3
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L933:
	addsd	xmm0, xmm0
	sub	eax, 1
	comisd	xmm1, xmm0
	ja	.L933
	mov	DWORD PTR [rdi], eax
	test	edx, edx
	jne	.L948
	ret
.L937:
	movapd	xmm3, xmm0
	xor	edx, edx
	jmp	.L925
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
	je	.L949
	.p2align 5
	.p2align 4
	.p2align 3
.L951:
	mov	rax, rdi
	and	eax, 1
	neg	rax
	and	rax, rsi
	add	rsi, rsi
	add	rdx, rax
	shr	rdi
	jne	.L951
.L949:
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
	mov	r11d, 1
	cmp	esi, edi
	jb	.L955
	jmp	.L978
	.p2align 4,,10
	.p2align 3
.L958:
	add	esi, esi
	add	r11d, r11d
	cmp	esi, edi
	jnb	.L957
	test	r11d, r11d
	je	.L957
.L955:
	test	esi, esi
	jns	.L958
.L959:
	xor	eax, eax
	xor	r10d, r10d
	.p2align 6
	.p2align 4
	.p2align 3
.L961:
	mov	r8d, edi
	mov	ecx, r10d
	sub	r8d, esi
	cmp	edi, esi
	setnb	r9b
	test	r9b, r9b
	cmovne	ecx, r11d
	cmovne	edi, r8d
	shr	esi
	or	eax, ecx
	shr	r11d
	jne	.L961
.L960:
	test	rdx, rdx
	cmovne	eax, edi
	ret
	.p2align 4,,10
	.p2align 3
.L957:
	xor	eax, eax
	test	r11d, r11d
	jne	.L959
	test	rdx, rdx
	cmovne	eax, edi
	ret
.L978:
	mov	eax, edi
	sub	eax, esi
	cmp	edi, esi
	setnb	cl
	cmovnb	edi, eax
	movzx	eax, cl
	jmp	.L960
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
	mov	r8d, 7
	sar	dl, 7
	mov	eax, edx
	xor	eax, edi
	cmp	dil, dl
	je	.L981
	movsx	ecx, al
	sal	ecx, 8
	bsr	esi, ecx
	xor	esi, 31
	lea	r8d, [rsi-1]
.L981:
	mov	eax, r8d
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
	mov	esi, 63
	sar	rdx, 63
	xor	rax, rdx
	cmp	rdi, rdx
	je	.L984
	bsr	rcx, rax
	xor	rcx, 63
	lea	esi, [rcx-1]
.L984:
	mov	eax, esi
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
	je	.L987
	.p2align 5
	.p2align 4
	.p2align 3
.L989:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L989
.L987:
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
	mov	r10d, edx
	mov	r8d, edx
	mov	rcx, rsi
	shr	r10d, 3
	and	r8d, -8
	cmp	rdi, rsi
	jb	.L997
	mov	eax, edx
	add	rax, rsi
	cmp	rax, rdi
	jnb	.L1069
.L997:
	test	r10d, r10d
	je	.L1070
	lea	eax, [r10-1]
	cmp	eax, 2
	jbe	.L999
	lea	r9, [rcx+8]
	cmp	rdi, r9
	je	.L999
	mov	r11d, edx
	xor	eax, eax
	shr	r11d, 4
	mov	esi, r11d
	sal	rsi, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1000:
	movdqu	xmm1, XMMWORD PTR [rcx+rax]
	movups	XMMWORD PTR [rdi+rax], xmm1
	add	rax, 16
	cmp	rsi, rax
	jne	.L1000
	add	r11d, r11d
	cmp	r10d, r11d
	je	.L1003
	mov	r10, QWORD PTR [rcx+r11*8]
	mov	QWORD PTR [rdi+r11*8], r10
.L1003:
	cmp	r8d, edx
	jnb	.L1065
	mov	r11d, edx
	mov	r10d, r8d
	sub	r11d, r8d
	lea	eax, [r11-1]
	cmp	eax, 6
	jbe	.L1064
	mov	esi, r8d
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	lea	r10, [rdi+rsi]
	lea	rbx, [rcx+1+rsi]
	mov	r9, r10
	sub	r9, rbx
	cmp	r9, 14
	jbe	.L995
	cmp	eax, 14
	jbe	.L1020
	mov	r9d, r11d
	lea	rbx, [rcx+rsi]
	xor	eax, eax
	shr	r9d, 4
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1005:
	movdqu	xmm2, XMMWORD PTR [rbx+rax]
	movups	XMMWORD PTR [r10+rax], xmm2
	add	rax, 16
	cmp	r9, rax
	jne	.L1005
	mov	eax, r11d
	and	eax, -16
	add	r8d, eax
	test	r11b, 15
	je	.L992
	sub	r11d, eax
	lea	r10d, [r11-1]
	cmp	r10d, 6
	jbe	.L1007
.L1004:
	add	rax, rsi
	mov	ebx, r11d
	and	ebx, -8
	mov	rsi, QWORD PTR [rcx+rax]
	add	r8d, ebx
	and	r11d, 7
	mov	QWORD PTR [rdi+rax], rsi
	je	.L992
.L1007:
	mov	r11d, r8d
	lea	eax, [r8+1]
	movzx	r9d, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], r9b
	cmp	eax, edx
	jnb	.L992
	movzx	r10d, BYTE PTR [rcx+rax]
	lea	ebx, [r8+2]
	mov	BYTE PTR [rdi+rax], r10b
	cmp	ebx, edx
	jnb	.L992
	movzx	esi, BYTE PTR [rcx+rbx]
	lea	r11d, [r8+3]
	mov	BYTE PTR [rdi+rbx], sil
	cmp	r11d, edx
	jnb	.L992
	movzx	r9d, BYTE PTR [rcx+r11]
	lea	eax, [r8+4]
	mov	BYTE PTR [rdi+r11], r9b
	cmp	eax, edx
	jnb	.L992
	movzx	r10d, BYTE PTR [rcx+rax]
	lea	ebx, [r8+5]
	mov	BYTE PTR [rdi+rax], r10b
	cmp	ebx, edx
	jnb	.L992
	movzx	esi, BYTE PTR [rcx+rbx]
	add	r8d, 6
	mov	BYTE PTR [rdi+rbx], sil
	cmp	r8d, edx
	jnb	.L992
	movzx	edx, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], dl
.L992:
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1069:
	.cfi_restore 3
	lea	r8d, [rdx-1]
	test	edx, edx
	je	.L1071
	mov	esi, r8d
	cmp	r8d, 6
	jbe	.L1018
	mov	r9, rdi
	sub	r9, rcx
	add	r9, 15
	cmp	r9, 14
	jbe	.L1018
	cmp	r8d, 14
	jbe	.L1021
	mov	r9d, edx
	lea	r10, [rsi-15]
	xor	eax, eax
	shr	r9d, 4
	lea	r11, [rcx+r10]
	add	r10, rdi
	neg	r9
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1013:
	movdqu	xmm0, XMMWORD PTR [r11+rax]
	movups	XMMWORD PTR [r10+rax], xmm0
	sub	rax, 16
	cmp	rax, r9
	jne	.L1013
	mov	r11d, edx
	and	r11d, -16
	sub	r8d, r11d
	test	dl, 15
	je	.L1065
	sub	edx, r11d
	lea	r10d, [rdx-1]
	cmp	r10d, 6
	jbe	.L1016
.L1012:
	lea	r9, [rsi-7]
	sub	r9, r11
	mov	r11d, edx
	and	r11d, -8
	mov	rsi, QWORD PTR [rcx+r9]
	sub	r8d, r11d
	and	edx, 7
	mov	QWORD PTR [rdi+r9], rsi
	je	.L1065
.L1016:
	mov	eax, r8d
	lea	r10d, [r8-1]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r8d, r8d
	je	.L1065
	mov	r9d, r10d
	lea	r11d, [r8-2]
	movzx	esi, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], sil
	test	r10d, r10d
	je	.L1065
	mov	eax, r11d
	lea	r10d, [r8-3]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r11d, r11d
	je	.L1065
	mov	r9d, r10d
	lea	r11d, [r8-4]
	movzx	esi, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], sil
	test	r10d, r10d
	je	.L1065
	mov	eax, r11d
	lea	r10d, [r8-5]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r11d, r11d
	je	.L1065
	mov	r9d, r10d
	lea	r8d, [r8-6]
	movzx	esi, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], sil
	test	r10d, r10d
	je	.L1065
	movzx	ecx, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], cl
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1018:
	movzx	r11d, BYTE PTR [rcx+rsi]
	mov	BYTE PTR [rdi+rsi], r11b
	sub	rsi, 1
	jnb	.L1018
	ret
.L1020:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xor	eax, eax
	jmp	.L1004
	.p2align 4,,10
	.p2align 3
.L999:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	lea	r9d, [0+r10*8]
	xor	r11d, r11d
	.p2align 5
	.p2align 4
	.p2align 3
.L1002:
	mov	rsi, QWORD PTR [rcx+r11]
	mov	QWORD PTR [rdi+r11], rsi
	add	r11, 8
	cmp	r11, r9
	jne	.L1002
	jmp	.L1003
.L995:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	r8, rsi
	.p2align 5
	.p2align 4
	.p2align 3
.L1009:
	movzx	r11d, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], r11b
	add	r8, 1
	cmp	r8d, edx
	jb	.L1009
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1070:
	.cfi_restore 3
	mov	r10d, r8d
	test	edx, edx
	je	.L1072
.L1064:
	mov	r9, r10
.L1066:
	movzx	eax, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], al
	add	r9, 1
	cmp	r9d, edx
	jb	.L1066
.L1065:
	ret
.L1071:
	ret
.L1021:
	xor	r11d, r11d
	jmp	.L1012
.L1072:
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
	mov	r9d, edx
	mov	rcx, rdi
	shr	r9d
	cmp	rdi, rsi
	jb	.L1077
	mov	eax, edx
	add	rax, rsi
	cmp	rax, rdi
	jnb	.L1135
.L1077:
	test	r9d, r9d
	je	.L1076
	lea	eax, [r9-1]
	cmp	eax, 2
	jbe	.L1080
	lea	r10, [rsi+2]
	mov	r8, rcx
	sub	r8, r10
	cmp	r8, 12
	jbe	.L1080
	cmp	eax, 6
	jbe	.L1097
	mov	r10d, edx
	xor	eax, eax
	shr	r10d, 4
	mov	r8d, r10d
	sal	r8, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1082:
	movdqu	xmm1, XMMWORD PTR [rsi+rax]
	movups	XMMWORD PTR [rcx+rax], xmm1
	add	rax, 16
	cmp	r8, rax
	jne	.L1082
	lea	r11d, [0+r10*8]
	cmp	r9d, r11d
	je	.L1076
	mov	edi, r9d
	sub	edi, r11d
	lea	r10d, [rdi-1]
	cmp	r10d, 2
	jbe	.L1084
.L1081:
	mov	r8d, r11d
	mov	r10d, edi
	and	r10d, -4
	mov	rax, QWORD PTR [rsi+r8*2]
	add	r11d, r10d
	and	edi, 3
	mov	QWORD PTR [rcx+r8*2], rax
	je	.L1076
.L1084:
	mov	edi, r11d
	lea	eax, [r11+1]
	movzx	r8d, WORD PTR [rsi+rdi*2]
	mov	WORD PTR [rcx+rdi*2], r8w
	cmp	eax, r9d
	jnb	.L1076
	movzx	r10d, WORD PTR [rsi+rax*2]
	add	r11d, 2
	mov	WORD PTR [rcx+rax*2], r10w
	cmp	r11d, r9d
	jnb	.L1076
	movzx	r9d, WORD PTR [rsi+r11*2]
	mov	WORD PTR [rcx+r11*2], r9w
.L1076:
	test	dl, 1
	je	.L1073
.L1137:
	lea	eax, [rdx-1]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	ret
	.p2align 4,,10
	.p2align 3
.L1135:
	lea	r8d, [rdx-1]
	test	edx, edx
	je	.L1136
	mov	edi, r8d
	cmp	r8d, 6
	ja	.L1134
	.p2align 4
	.p2align 4
	.p2align 3
.L1095:
	movzx	r11d, BYTE PTR [rsi+rdi]
	mov	BYTE PTR [rcx+rdi], r11b
	sub	rdi, 1
	jnb	.L1095
.L1073:
	ret
	.p2align 4,,10
	.p2align 3
.L1134:
	mov	r10, rcx
	sub	r10, rsi
	add	r10, 15
	cmp	r10, 14
	jbe	.L1095
	cmp	r8d, 14
	jbe	.L1098
	mov	r9d, edx
	lea	r10, [rdi-15]
	xor	eax, eax
	shr	r9d, 4
	lea	r11, [rsi+r10]
	add	r10, rcx
	neg	r9
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1091:
	movdqu	xmm0, XMMWORD PTR [r11+rax]
	movups	XMMWORD PTR [r10+rax], xmm0
	sub	rax, 16
	cmp	rax, r9
	jne	.L1091
	mov	r11d, edx
	and	r11d, -16
	sub	r8d, r11d
	test	dl, 15
	je	.L1073
	sub	edx, r11d
	lea	r10d, [rdx-1]
	cmp	r10d, 6
	jbe	.L1093
.L1090:
	lea	r9, [rdi-7]
	sub	r9, r11
	mov	r11d, edx
	and	r11d, -8
	mov	rdi, QWORD PTR [rsi+r9]
	sub	r8d, r11d
	and	edx, 7
	mov	QWORD PTR [rcx+r9], rdi
	je	.L1073
.L1093:
	mov	eax, r8d
	lea	r10d, [r8-1]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r8d, r8d
	je	.L1073
	mov	r9d, r10d
	lea	r11d, [r8-2]
	movzx	edi, BYTE PTR [rsi+r9]
	mov	BYTE PTR [rcx+r9], dil
	test	r10d, r10d
	je	.L1073
	mov	eax, r11d
	lea	r10d, [r8-3]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r11d, r11d
	je	.L1073
	mov	r9d, r10d
	lea	r11d, [r8-4]
	movzx	edi, BYTE PTR [rsi+r9]
	mov	BYTE PTR [rcx+r9], dil
	test	r10d, r10d
	je	.L1073
	mov	eax, r11d
	lea	r10d, [r8-5]
	movzx	edx, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rcx+rax], dl
	test	r11d, r11d
	je	.L1073
	mov	r9d, r10d
	lea	r8d, [r8-6]
	movzx	edi, BYTE PTR [rsi+r9]
	mov	BYTE PTR [rcx+r9], dil
	test	r10d, r10d
	je	.L1073
	movzx	esi, BYTE PTR [rsi+r8]
	mov	BYTE PTR [rcx+r8], sil
	ret
.L1097:
	mov	edi, r9d
	xor	r11d, r11d
	jmp	.L1081
	.p2align 4,,10
	.p2align 3
.L1080:
	lea	r11d, [r9+r9]
	xor	r8d, r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L1086:
	movzx	edi, WORD PTR [rsi+r8]
	mov	WORD PTR [rcx+r8], di
	add	r8, 2
	cmp	r8, r11
	jne	.L1086
	test	dl, 1
	je	.L1073
	jmp	.L1137
.L1136:
	ret
.L1098:
	xor	r11d, r11d
	jmp	.L1090
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	mov	r10d, edx
	mov	r8d, edx
	mov	rcx, rsi
	shr	r10d, 2
	and	r8d, -4
	cmp	rdi, rsi
	jb	.L1143
	mov	eax, edx
	add	rax, rsi
	cmp	rax, rdi
	jnb	.L1215
.L1143:
	test	r10d, r10d
	je	.L1216
	lea	eax, [r10-1]
	cmp	eax, 2
	jbe	.L1145
	lea	r9, [rcx+4]
	mov	rsi, rdi
	sub	rsi, r9
	cmp	rsi, 8
	jbe	.L1145
	mov	r11d, edx
	xor	eax, eax
	shr	r11d, 4
	mov	r9d, r11d
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1146:
	movdqu	xmm1, XMMWORD PTR [rcx+rax]
	movups	XMMWORD PTR [rdi+rax], xmm1
	add	rax, 16
	cmp	r9, rax
	jne	.L1146
	lea	r11d, [0+r11*4]
	cmp	r10d, r11d
	je	.L1149
	mov	esi, r11d
	lea	eax, [r11+1]
	mov	r9d, DWORD PTR [rcx+rsi*4]
	mov	DWORD PTR [rdi+rsi*4], r9d
	cmp	eax, r10d
	jnb	.L1149
	mov	esi, DWORD PTR [rcx+rax*4]
	add	r11d, 2
	mov	DWORD PTR [rdi+rax*4], esi
	cmp	r11d, r10d
	jnb	.L1149
	mov	r10d, DWORD PTR [rcx+r11*4]
	mov	DWORD PTR [rdi+r11*4], r10d
.L1149:
	cmp	r8d, edx
	jnb	.L1211
	mov	r11d, edx
	mov	esi, r8d
	sub	r11d, r8d
	lea	eax, [r11-1]
	cmp	eax, 6
	jbe	.L1210
	mov	esi, r8d
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	lea	r10, [rdi+rsi]
	lea	rbx, [rcx+1+rsi]
	mov	r9, r10
	sub	r9, rbx
	cmp	r9, 14
	jbe	.L1141
	cmp	eax, 14
	jbe	.L1166
	mov	r9d, r11d
	lea	rbx, [rcx+rsi]
	xor	eax, eax
	shr	r9d, 4
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1151:
	movdqu	xmm2, XMMWORD PTR [rbx+rax]
	movups	XMMWORD PTR [r10+rax], xmm2
	add	rax, 16
	cmp	r9, rax
	jne	.L1151
	mov	eax, r11d
	and	eax, -16
	add	r8d, eax
	test	r11b, 15
	je	.L1138
	sub	r11d, eax
	lea	r10d, [r11-1]
	cmp	r10d, 6
	jbe	.L1153
.L1150:
	add	rax, rsi
	mov	ebx, r11d
	and	ebx, -8
	mov	rsi, QWORD PTR [rcx+rax]
	add	r8d, ebx
	and	r11d, 7
	mov	QWORD PTR [rdi+rax], rsi
	je	.L1138
.L1153:
	mov	r11d, r8d
	lea	eax, [r8+1]
	movzx	r9d, BYTE PTR [rcx+r11]
	mov	BYTE PTR [rdi+r11], r9b
	cmp	eax, edx
	jnb	.L1138
	movzx	r10d, BYTE PTR [rcx+rax]
	lea	ebx, [r8+2]
	mov	BYTE PTR [rdi+rax], r10b
	cmp	ebx, edx
	jnb	.L1138
	movzx	esi, BYTE PTR [rcx+rbx]
	lea	r11d, [r8+3]
	mov	BYTE PTR [rdi+rbx], sil
	cmp	r11d, edx
	jnb	.L1138
	movzx	r9d, BYTE PTR [rcx+r11]
	lea	eax, [r8+4]
	mov	BYTE PTR [rdi+r11], r9b
	cmp	eax, edx
	jnb	.L1138
	movzx	r10d, BYTE PTR [rcx+rax]
	lea	ebx, [r8+5]
	mov	BYTE PTR [rdi+rax], r10b
	cmp	ebx, edx
	jnb	.L1138
	movzx	esi, BYTE PTR [rcx+rbx]
	add	r8d, 6
	mov	BYTE PTR [rdi+rbx], sil
	cmp	r8d, edx
	jnb	.L1138
	movzx	edx, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], dl
.L1138:
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1215:
	.cfi_restore 3
	lea	r8d, [rdx-1]
	test	edx, edx
	je	.L1217
	mov	esi, r8d
	cmp	r8d, 6
	jbe	.L1164
	mov	r9, rdi
	sub	r9, rcx
	add	r9, 15
	cmp	r9, 14
	jbe	.L1164
	cmp	r8d, 14
	jbe	.L1167
	mov	r9d, edx
	lea	r10, [rsi-15]
	xor	eax, eax
	shr	r9d, 4
	lea	r11, [rcx+r10]
	add	r10, rdi
	neg	r9
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L1159:
	movdqu	xmm0, XMMWORD PTR [r11+rax]
	movups	XMMWORD PTR [r10+rax], xmm0
	sub	rax, 16
	cmp	rax, r9
	jne	.L1159
	mov	r11d, edx
	and	r11d, -16
	sub	r8d, r11d
	test	dl, 15
	je	.L1211
	sub	edx, r11d
	lea	r10d, [rdx-1]
	cmp	r10d, 6
	jbe	.L1162
.L1158:
	lea	r9, [rsi-7]
	sub	r9, r11
	mov	r11d, edx
	and	r11d, -8
	mov	rsi, QWORD PTR [rcx+r9]
	sub	r8d, r11d
	and	edx, 7
	mov	QWORD PTR [rdi+r9], rsi
	je	.L1211
.L1162:
	mov	eax, r8d
	lea	r10d, [r8-1]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r8d, r8d
	je	.L1211
	mov	r9d, r10d
	lea	r11d, [r8-2]
	movzx	esi, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], sil
	test	r10d, r10d
	je	.L1211
	mov	eax, r11d
	lea	r10d, [r8-3]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r11d, r11d
	je	.L1211
	mov	r9d, r10d
	lea	r11d, [r8-4]
	movzx	esi, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], sil
	test	r10d, r10d
	je	.L1211
	mov	eax, r11d
	lea	r10d, [r8-5]
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdi+rax], dl
	test	r11d, r11d
	je	.L1211
	mov	r9d, r10d
	lea	r8d, [r8-6]
	movzx	esi, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], sil
	test	r10d, r10d
	je	.L1211
	movzx	ecx, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], cl
	ret
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1164:
	movzx	r11d, BYTE PTR [rcx+rsi]
	mov	BYTE PTR [rdi+rsi], r11b
	sub	rsi, 1
	jnb	.L1164
	ret
.L1166:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xor	eax, eax
	jmp	.L1150
	.p2align 4,,10
	.p2align 3
.L1145:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	lea	r11d, [0+r10*4]
	xor	r9d, r9d
	.p2align 5
	.p2align 4
	.p2align 3
.L1148:
	mov	eax, DWORD PTR [rcx+r9]
	mov	DWORD PTR [rdi+r9], eax
	add	r9, 4
	cmp	r9, r11
	jne	.L1148
	jmp	.L1149
.L1141:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	r8, rsi
	.p2align 5
	.p2align 4
	.p2align 3
.L1155:
	movzx	r11d, BYTE PTR [rcx+r8]
	mov	BYTE PTR [rdi+r8], r11b
	add	r8, 1
	cmp	r8d, edx
	jb	.L1155
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1216:
	.cfi_restore 3
	mov	esi, r8d
	test	edx, edx
	je	.L1218
.L1210:
	mov	r9, rsi
.L1212:
	movzx	eax, BYTE PTR [rcx+r9]
	mov	BYTE PTR [rdi+r9], al
	add	r9, 1
	cmp	r9d, edx
	jb	.L1212
.L1211:
	ret
.L1217:
	ret
.L1167:
	xor	r11d, r11d
	jmp	.L1158
.L1218:
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
	js	.L1227
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1227:
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
	js	.L1230
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1230:
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
	mov	ecx, edi
	movzx	edx, di
	test	ch, -128
	jne	.L1236
	mov	eax, edx
	sar	eax, 14
	jne	.L1233
	mov	eax, edx
	shr	eax, 13
	jne	.L1237
	mov	esi, edx
	shr	esi, 12
	jne	.L1238
	mov	edi, edx
	shr	edi, 11
	jne	.L1239
	mov	r8d, edx
	shr	r8d, 10
	jne	.L1240
	mov	r9d, edx
	shr	r9d, 9
	jne	.L1241
	mov	r10d, edx
	shr	r10d, 8
	jne	.L1242
	mov	r11d, edx
	shr	r11d, 7
	jne	.L1243
	mov	eax, edx
	shr	eax, 6
	jne	.L1244
	mov	esi, edx
	shr	esi, 5
	jne	.L1245
	mov	edi, edx
	shr	edi, 4
	jne	.L1246
	mov	r8d, edx
	shr	r8d, 3
	jne	.L1247
	mov	r9d, edx
	shr	r9d, 2
	jne	.L1248
	shr	edx
	jne	.L1249
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	ret
.L1249:
	mov	eax, 14
.L1233:
	ret
.L1236:
	xor	eax, eax
	ret
.L1247:
	mov	eax, 12
	ret
.L1237:
	mov	eax, 2
	ret
.L1238:
	mov	eax, 3
	ret
.L1239:
	mov	eax, 4
	ret
.L1240:
	mov	eax, 5
	ret
.L1241:
	mov	eax, 6
	ret
.L1242:
	mov	eax, 7
	ret
.L1243:
	mov	eax, 8
	ret
.L1244:
	mov	eax, 9
	ret
.L1245:
	mov	eax, 10
	ret
.L1246:
	mov	eax, 11
	ret
.L1248:
	mov	eax, 13
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
	test	dil, 1
	jne	.L1254
	test	dil, 2
	jne	.L1255
	test	dil, 4
	jne	.L1256
	test	dil, 8
	jne	.L1257
	test	dil, 16
	jne	.L1258
	test	dil, 32
	jne	.L1259
	test	dil, 64
	jne	.L1260
	test	dil, -128
	jne	.L1261
	test	edi, 256
	jne	.L1262
	test	edi, 512
	jne	.L1263
	test	edi, 1024
	jne	.L1264
	test	edi, 2048
	jne	.L1265
	test	edi, 4096
	jne	.L1266
	test	edi, 8192
	jne	.L1267
	test	edi, 16384
	jne	.L1268
	xor	eax, eax
	and	edi, 32768
	sete	al
	add	eax, 15
	ret
.L1254:
	xor	eax, eax
	ret
.L1255:
	mov	eax, 1
	ret
.L1266:
	mov	eax, 12
	ret
.L1256:
	mov	eax, 2
	ret
.L1257:
	mov	eax, 3
	ret
.L1258:
	mov	eax, 4
	ret
.L1259:
	mov	eax, 5
	ret
.L1260:
	mov	eax, 6
	ret
.L1261:
	mov	eax, 7
	ret
.L1262:
	mov	eax, 8
	ret
.L1263:
	mov	eax, 9
	ret
.L1264:
	mov	eax, 10
	ret
.L1265:
	mov	eax, 11
	ret
.L1267:
	mov	eax, 13
	ret
.L1268:
	mov	eax, 14
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
	comiss	xmm0, DWORD PTR .LC19[rip]
	jnb	.L1276
	cvttss2si	rax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L1276:
	subss	xmm0, DWORD PTR .LC19[rip]
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
	movzx	edx, di
	and	edi, 1
	mov	eax, edx
	mov	ecx, edx
	mov	esi, edx
	mov	r8d, edx
	sar	eax
	sar	ecx, 2
	mov	r9d, edx
	mov	r10d, edx
	and	eax, 1
	and	ecx, 1
	sar	esi, 3
	mov	r11d, edx
	sar	r8d, 5
	add	eax, edi
	mov	edi, edx
	and	esi, 1
	sar	edi, 4
	add	eax, ecx
	and	r8d, 1
	sar	r9d, 6
	add	eax, esi
	and	edi, 1
	and	r9d, 1
	sar	r10d, 7
	add	eax, edi
	and	r10d, 1
	sar	r11d, 8
	mov	ecx, edx
	add	eax, r8d
	and	r11d, 1
	sar	ecx, 9
	mov	esi, edx
	add	eax, r9d
	and	ecx, 1
	sar	esi, 10
	mov	edi, edx
	add	eax, r10d
	and	esi, 1
	sar	edi, 11
	mov	r8d, edx
	add	eax, r11d
	and	edi, 1
	sar	r8d, 12
	mov	r9d, edx
	add	eax, ecx
	and	r8d, 1
	sar	r9d, 13
	mov	r10d, edx
	sar	r10d, 14
	add	eax, esi
	and	r9d, 1
	sar	edx, 15
	add	eax, edi
	and	r10d, 1
	add	eax, r8d
	add	eax, r9d
	add	eax, r10d
	add	eax, edx
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
	movzx	edx, di
	and	edi, 1
	mov	eax, edx
	mov	ecx, edx
	mov	esi, edx
	mov	r8d, edx
	sar	eax
	sar	ecx, 2
	mov	r9d, edx
	mov	r10d, edx
	and	eax, 1
	and	ecx, 1
	sar	esi, 3
	mov	r11d, edx
	sar	r8d, 5
	add	eax, edi
	mov	edi, edx
	and	esi, 1
	sar	edi, 4
	add	eax, ecx
	and	r8d, 1
	sar	r9d, 6
	add	eax, esi
	and	edi, 1
	and	r9d, 1
	sar	r10d, 7
	add	eax, edi
	and	r10d, 1
	sar	r11d, 8
	mov	ecx, edx
	add	eax, r8d
	and	r11d, 1
	sar	ecx, 9
	mov	esi, edx
	add	eax, r9d
	and	ecx, 1
	sar	esi, 10
	mov	edi, edx
	add	eax, r10d
	and	esi, 1
	sar	edi, 11
	mov	r8d, edx
	add	eax, r11d
	and	edi, 1
	sar	r8d, 12
	mov	r9d, edx
	add	eax, ecx
	and	r8d, 1
	sar	r9d, 13
	mov	r10d, edx
	sar	r10d, 14
	add	eax, esi
	and	r9d, 1
	sar	edx, 15
	add	eax, edi
	and	r10d, 1
	add	eax, r8d
	add	eax, r9d
	add	eax, r10d
	add	eax, edx
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
	je	.L1279
	.p2align 5
	.p2align 4
	.p2align 3
.L1281:
	mov	eax, edi
	and	eax, 1
	neg	eax
	and	eax, esi
	add	esi, esi
	add	edx, eax
	shr	edi
	jne	.L1281
.L1279:
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
	je	.L1284
	test	esi, esi
	je	.L1284
	.p2align 5
	.p2align 4
	.p2align 3
.L1286:
	mov	eax, esi
	and	eax, 1
	neg	eax
	and	eax, edi
	add	edi, edi
	add	edx, eax
	shr	esi
	jne	.L1286
.L1284:
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
	mov	r11d, 1
	cmp	esi, edi
	jb	.L1292
	jmp	.L1315
	.p2align 4,,10
	.p2align 3
.L1295:
	add	esi, esi
	add	r11d, r11d
	cmp	esi, edi
	jnb	.L1294
	test	r11d, r11d
	je	.L1294
.L1292:
	test	esi, esi
	jns	.L1295
.L1296:
	xor	eax, eax
	xor	r10d, r10d
	.p2align 6
	.p2align 4
	.p2align 3
.L1298:
	mov	r8d, edi
	mov	ecx, r10d
	sub	r8d, esi
	cmp	edi, esi
	setnb	r9b
	test	r9b, r9b
	cmovne	ecx, r11d
	cmovne	edi, r8d
	shr	esi
	or	eax, ecx
	shr	r11d
	jne	.L1298
.L1297:
	test	edx, edx
	cmovne	eax, edi
	ret
	.p2align 4,,10
	.p2align 3
.L1294:
	xor	eax, eax
	test	r11d, r11d
	jne	.L1296
	test	edx, edx
	cmovne	eax, edi
	ret
.L1315:
	mov	eax, edi
	sub	eax, esi
	cmp	edi, esi
	setnb	cl
	cmovnb	edi, eax
	movzx	eax, cl
	jmp	.L1297
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
	ja	.L1318
	xor	eax, eax
	comiss	xmm0, xmm1
	seta	al
.L1318:
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
	ja	.L1321
	xor	eax, eax
	comisd	xmm0, xmm1
	seta	al
.L1321:
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
	js	.L1335
	je	.L1331
	xor	r9d, r9d
.L1328:
	mov	edx, 1
	xor	ecx, ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L1330:
	mov	eax, esi
	and	eax, 1
	neg	eax
	and	eax, edi
	add	edi, edi
	add	ecx, eax
	sar	esi
	setne	r8b
	cmp	dl, 32
	setne	r10b
	add	edx, 1
	test	r8b, r10b
	jne	.L1330
	mov	eax, ecx
	neg	eax
	test	r9d, r9d
	cmove	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L1335:
	neg	esi
	mov	r9d, 1
	jmp	.L1328
	.p2align 4,,10
	.p2align 3
.L1331:
	xor	eax, eax
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
	mov	eax, 1
	xor	r10d, r10d
	test	rdi, rdi
	jns	.L1337
	neg	rdi
	xor	eax, eax
	mov	r10d, 1
.L1337:
	test	rsi, rsi
	jns	.L1338
	neg	rsi
	mov	r10d, eax
.L1338:
	mov	eax, esi
	mov	ecx, edi
	mov	edx, 1
	cmp	esi, edi
	jb	.L1339
	jmp	.L1363
	.p2align 4,,10
	.p2align 3
.L1344:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	.L1350
	test	edx, edx
	je	.L1360
.L1339:
	test	eax, eax
	jns	.L1344
.L1342:
	xor	r11d, r11d
	xor	r9d, r9d
	.p2align 5
	.p2align 4
	.p2align 3
.L1345:
	mov	edi, ecx
	mov	esi, r9d
	sub	edi, eax
	cmp	ecx, eax
	setnb	r8b
	test	r8b, r8b
	cmovne	esi, edx
	cmovne	ecx, edi
	shr	eax
	or	r11d, esi
	shr	edx
	jne	.L1345
.L1343:
	mov	rax, r11
	neg	rax
	test	r10d, r10d
	cmove	rax, r11
	ret
	.p2align 4,,10
	.p2align 3
.L1350:
	test	edx, edx
	jne	.L1342
.L1360:
	xor	r11d, r11d
	mov	rax, r11
	neg	rax
	test	r10d, r10d
	cmove	rax, r11
	ret
.L1363:
	cmp	edi, esi
	setnb	sil
	movzx	r11d, sil
	jmp	.L1343
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
	jns	.L1366
	neg	rdi
	mov	r8d, 1
.L1366:
	mov	rax, rsi
	mov	ecx, edi
	mov	edx, 1
	neg	rax
	cmovns	rsi, rax
	mov	r9d, esi
	cmp	esi, edi
	jb	.L1367
	jmp	.L1390
	.p2align 4,,10
	.p2align 3
.L1372:
	add	r9d, r9d
	add	edx, edx
	cmp	r9d, ecx
	jnb	.L1377
	test	edx, edx
	je	.L1371
.L1367:
	test	r9d, r9d
	jns	.L1372
	.p2align 5
	.p2align 4
	.p2align 3
.L1388:
	mov	esi, ecx
	sub	esi, r9d
	cmp	ecx, r9d
	cmovnb	ecx, esi
	shr	r9d
	shr	edx
	jne	.L1388
.L1371:
	mov	edi, ecx
	mov	rax, rdi
	neg	rax
	test	r8d, r8d
	cmove	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1377:
	test	edx, edx
	jne	.L1388
	jmp	.L1371
.L1390:
	sub	ecx, esi
	cmp	edi, esi
	cmovb	ecx, edi
	jmp	.L1371
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.p2align 4
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	mov	r10d, edi
	mov	eax, edi
	mov	r9d, edx
	mov	ecx, esi
	mov	edi, 1
	cmp	si, r10w
	jb	.L1393
	jmp	.L1459
	.p2align 4,,10
	.p2align 3
.L1396:
	lea	esi, [rcx+rcx]
	lea	edx, [rdi+rdi]
	cmp	si, ax
	jnb	.L1395
	test	dx, dx
	je	.L1395
	mov	edi, edx
	mov	ecx, esi
.L1393:
	test	cx, cx
	jns	.L1396
	mov	eax, r10d
	mov	r8d, edi
	sub	eax, ecx
	cmp	cx, r10w
	cmova	eax, r10d
	xor	edx, edx
	cmp	r10w, cx
	mov	r10d, ecx
	cmovnb	edx, edi
	shr	r10w
	shr	r8w
	mov	r11d, edx
	je	.L1398
.L1400:
	mov	edx, eax
	mov	esi, 0
	sub	edx, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, edx
	shr	r10w, 2
	mov	edx, r8d
	mov	r8d, edi
	or	edx, r11d
	shr	r8w, 2
	je	.L1398
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 3
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 3
	je	.L1398
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 4
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 4
	je	.L1398
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 5
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 5
	je	.L1398
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 6
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 6
	je	.L1398
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 7
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 7
	je	.L1398
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 8
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 8
	je	.L1398
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 9
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 9
	je	.L1398
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 10
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 10
	je	.L1398
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 11
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 11
	je	.L1398
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 12
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 12
	je	.L1398
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 13
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 13
	je	.L1398
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	mov	r10d, ecx
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	r10w, 14
	or	edx, r8d
	mov	r8d, edi
	shr	r8w, 14
	je	.L1398
	mov	r11d, eax
	sub	r11d, r10d
	cmp	ax, r10w
	setnb	r10b
	test	r10b, r10b
	cmove	r8d, esi
	cmovne	eax, r11d
	shr	cx, 15
	or	edx, r8d
	test	di, di
	jns	.L1398
	mov	edi, eax
	sub	edi, ecx
	cmp	ax, cx
	setnb	cl
	cmovnb	eax, edi
	movzx	esi, cl
	or	edx, esi
.L1398:
	test	r9d, r9d
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1395:
	mov	eax, r10d
	test	dx, dx
	je	.L1398
	sub	eax, esi
	cmp	si, r10w
	cmova	eax, r10d
	xor	r11d, r11d
	cmp	r10w, si
	cmovnb	r11d, edx
	and	di, 32767
	and	cx, 32767
	mov	r8d, edi
	mov	r10d, ecx
	mov	edi, edx
	mov	ecx, esi
	jmp	.L1400
.L1459:
	sub	eax, esi
	cmp	si, r10w
	sete	dl
	cmovne	eax, r10d
	movzx	edx, dl
	jmp	.L1398
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	mov	r11d, 1
	cmp	rsi, rdi
	jb	.L1461
	jmp	.L1484
	.p2align 4,,10
	.p2align 3
.L1464:
	add	rsi, rsi
	add	r11, r11
	cmp	rsi, rdi
	jnb	.L1463
	test	r11, r11
	je	.L1463
.L1461:
	test	esi, 2147483648
	je	.L1464
.L1465:
	xor	eax, eax
	xor	r10d, r10d
	.p2align 6
	.p2align 4
	.p2align 3
.L1467:
	mov	r8, rdi
	mov	rcx, r10
	sub	r8, rsi
	cmp	rdi, rsi
	setnb	r9b
	test	r9b, r9b
	cmovne	rcx, r11
	cmovne	rdi, r8
	shr	rsi
	or	rax, rcx
	shr	r11
	jne	.L1467
.L1466:
	test	edx, edx
	cmovne	rax, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1463:
	xor	eax, eax
	test	r11, r11
	jne	.L1465
	test	edx, edx
	cmovne	rax, rdi
	ret
.L1484:
	mov	rax, rdi
	sub	rax, rsi
	cmp	rdi, rsi
	setnb	cl
	cmovnb	rdi, rax
	movzx	eax, cl
	jmp	.L1466
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
	je	.L1488
	lea	ecx, [rsi-32]
	xor	eax, eax
	sal	edi, cl
.L1489:
	sal	rdi, 32
	or	rax, rdi
.L1487:
	ret
	.p2align 4,,10
	.p2align 3
.L1488:
	mov	rax, rdi
	test	esi, esi
	je	.L1487
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
	jmp	.L1489
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
	je	.L1494
	lea	ecx, [rdx-64]
	xor	eax, eax
	sal	rdi, cl
	mov	rdx, rdi
	ret
	.p2align 4,,10
	.p2align 3
.L1494:
	mov	rax, rdi
	test	edx, edx
	je	.L1497
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
.L1497:
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
	je	.L1499
	sar	rdi, 32
	lea	ecx, [rsi-32]
	mov	eax, edi
	sar	edi, cl
	sar	eax, 31
.L1500:
	sal	rax, 32
	or	rax, rdi
.L1498:
	ret
	.p2align 4,,10
	.p2align 3
.L1499:
	mov	rax, rdi
	test	esi, esi
	je	.L1498
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
	jmp	.L1500
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
	je	.L1505
	lea	ecx, [rdx-64]
	mov	r8, rsi
	sar	r8, 63
	sar	rsi, cl
	mov	rdx, r8
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1505:
	test	edx, edx
	je	.L1508
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
.L1508:
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
	xor	esi, esi
	sal	eax, 3
	sub	ecx, eax
	add	edx, eax
	mov	eax, 2
	shr	edi, cl
	mov	ecx, 4
	test	dil, -16
	sete	sil
	xor	r9d, r9d
	sal	esi, 2
	sub	ecx, esi
	lea	r8d, [rsi+rdx]
	shr	edi, cl
	mov	ecx, eax
	test	dil, 12
	sete	r9b
	xor	r10d, r10d
	add	r9d, r9d
	sub	ecx, r9d
	shr	edi, cl
	sub	eax, edi
	and	edi, 2
	cmovne	eax, r10d
	add	r9d, r8d
	add	eax, r9d
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
	movsx	r8, edi
	and	r8, rsi
	test	rsi, rsi
	cmovne	rdx, rcx
	or	r8, rdx
	bsr	rsi, r8
	sal	eax, 6
	xor	rsi, 63
	add	eax, esi
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
	jl	.L1513
	mov	eax, 2
	jg	.L1513
	xor	eax, eax
	cmp	edi, esi
	jb	.L1513
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L1513:
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
	mov	eax, -1
	sar	rcx, 32
	sar	rdx, 32
	cmp	ecx, edx
	jl	.L1519
	mov	eax, 1
	jg	.L1519
	mov	eax, -1
	cmp	edi, esi
	jb	.L1519
	xor	eax, eax
	cmp	esi, edi
	setb	al
.L1519:
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
	jl	.L1524
	mov	eax, 2
	jg	.L1524
	xor	eax, eax
	cmp	rdi, rdx
	jb	.L1524
	xor	eax, eax
	cmp	rdx, rdi
	setb	al
	add	eax, 1
.L1524:
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
	test	rdi, rdi
	mov	rdx, rsi
	mov	rcx, rdi
	sete	sil
	cmovne	rdx, rax
	xor	r9d, r9d
	movzx	eax, sil
	lea	edi, [rax-1]
	sal	eax, 6
	movsx	r8, edi
	and	r8, rcx
	or	rdx, r8
	rep bsf	r9, rdx
	add	eax, r9d
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
	jne	.L1533
	xor	eax, eax
	xor	edx, edx
	rep bsf	rax, rsi
	add	eax, 65
	test	rsi, rsi
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1533:
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
	je	.L1537
	shr	rdi, 32
	lea	ecx, [rsi-32]
	xor	eax, eax
	shr	edi, cl
.L1538:
	sal	rax, 32
	or	rax, rdi
.L1536:
	ret
	.p2align 4,,10
	.p2align 3
.L1537:
	mov	rax, rdi
	test	esi, esi
	je	.L1536
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
	jmp	.L1538
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
	je	.L1543
	lea	ecx, [rdx-64]
	xor	r8d, r8d
	shr	rsi, cl
	mov	rdx, r8
	mov	rax, rsi
	ret
	.p2align 4,,10
	.p2align 3
.L1543:
	test	edx, edx
	je	.L1546
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
.L1546:
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
	movzx	r10d, cx
	shr	r8d, 16
	add	eax, r8d
	movzx	r9d, ax
	shr	eax, 16
	add	edx, r9d
	add	eax, edi
	mov	r11d, edx
	shr	edx, 16
	add	edx, eax
	sal	r11d, 16
	mov	esi, edx
	lea	eax, [r10+r11]
	sal	rsi, 32
	or	rax, rsi
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
	mov	r11d, ecx
	imul	esi, eax
	shr	r11d, 16
	imul	eax, r8d
	imul	edx, r11d
	mov	r9d, esi
	imul	r8d, r11d
	movzx	esi, si
	shr	r9d, 16
	add	eax, r9d
	movzx	r10d, ax
	shr	eax, 16
	add	edx, r10d
	add	eax, r8d
	mov	r8, rcx
	mov	r9d, edx
	shr	edx, 16
	sal	r9d, 16
	add	edx, eax
	sar	r8, 32
	mov	edx, edx
	imul	r8d, edi
	lea	eax, [rsi+r9]
	sar	rdi, 32
	sal	rdx, 32
	imul	ecx, edi
	or	rax, rdx
	mov	r10, rax
	mov	eax, eax
	sar	r10, 32
	add	r8d, r10d
	add	r8d, ecx
	mov	edi, r8d
	sal	rdi, 32
	or	rax, rdi
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
	mov	r10d, ecx
	shr	r8, 32
	add	rax, r8
	mov	r9d, eax
	shr	rax, 32
	add	rdx, r9
	add	rax, rdi
	mov	r11, rdx
	shr	rdx, 32
	sal	r11, 32
	add	rax, rdx
	add	r10, r11
	mov	rdx, rax
	mov	rax, r10
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
	mov	r11, rsi
	mov	r10, rcx
	mov	rsi, rax
	mov	ecx, edx
	mov	r9, r8
	imul	rsi, rcx
	shr	r9, 32
	imul	r8, r10
	mov	r10, rdx
	imul	rcx, r9
	shr	r10, 32
	mov	rdi, rsi
	imul	rax, r10
	shr	rdi, 32
	imul	r9, r10
	add	rcx, rdi
	imul	rdx, r11
	mov	r11d, esi
	mov	edi, ecx
	shr	rcx, 32
	add	rax, rdi
	lea	rcx, [rcx+r9]
	mov	rdi, rax
	shr	rax, 32
	sal	rdi, 32
	add	rcx, rax
	add	rdi, r11
	xchg	rdi, rcx
	add	r8, rdi
	mov	rax, rcx
	add	r8, rdx
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
	mov	eax, 27030
	mov	esi, edx
	shr	esi, 8
	xor	esi, edx
	mov	ecx, esi
	shr	ecx, 4
	xor	ecx, esi
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
	mov	eax, 27030
	mov	edx, edi
	shr	edx, 16
	xor	edx, edi
	mov	esi, edx
	shr	esi, 8
	xor	esi, edx
	mov	ecx, esi
	shr	ecx, 4
	xor	ecx, esi
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
	movabs	rsi, 3689348814741910323
	movabs	r8, 1085102592571150095
	shr	rax
	and	rax, rdx
	sub	rdi, rax
	mov	rcx, rdi
	and	rdi, rsi
	shr	rcx, 2
	and	rcx, rsi
	add	rcx, rdi
	mov	rdi, rcx
	shr	rdi, 4
	add	rdi, rcx
	and	rdi, r8
	mov	r9, rdi
	shr	r9, 32
	add	edi, r9d
	mov	r10d, edi
	shr	r10d, 16
	add	r10d, edi
	mov	eax, r10d
	shr	eax, 8
	add	eax, r10d
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
	mov	ecx, edx
	shr	ecx, 4
	add	ecx, edx
	and	ecx, 252645135
	mov	esi, ecx
	shr	esi, 16
	add	esi, ecx
	mov	eax, esi
	shr	eax, 8
	add	eax, esi
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
	movabs	r11, 3689348814741910323
	mov	rax, rsi
	mov	rdx, rdi
	shrd	rax, rdi, 1
	shr	rdx
	and	rax, r8
	and	rdx, r8
	sub	rsi, rax
	sbb	rdi, rdx
	mov	rcx, rsi
	and	rsi, r11
	shrd	rcx, rdi, 2
	mov	r10, rdi
	and	rdi, r11
	and	rcx, r11
	shr	r10, 2
	and	r10, r11
	add	rsi, rcx
	adc	rdi, r10
	mov	r8, rsi
	mov	rdx, rdi
	shrd	r8, rdi, 4
	shr	rdx, 4
	add	r8, rsi
	movabs	rsi, 1085102592571150095
	adc	rdx, rdi
	mov	rdi, rsi
	and	rsi, r8
	and	rdi, rdx
	add	rdi, rsi
	mov	r9, rdi
	shr	r9, 32
	add	r9d, edi
	mov	ecx, r9d
	shr	ecx, 16
	add	ecx, r9d
	mov	r10d, ecx
	shr	r10d, 8
	add	r10d, ecx
	movzx	eax, r10b
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
	movsd	xmm2, QWORD PTR .LC18[rip]
	mov	eax, edi
	movapd	xmm1, xmm2
	test	dil, 1
	je	.L1560
	.p2align 4
	.p2align 3
.L1562:
	mulsd	xmm1, xmm0
.L1560:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1561
	mulsd	xmm0, xmm0
	test	al, 1
	jne	.L1562
.L1566:
	mulsd	xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1562
	jmp	.L1566
	.p2align 4,,10
	.p2align 3
.L1561:
	test	edi, edi
	jns	.L1559
	divsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L1559:
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
	movss	xmm2, DWORD PTR .LC20[rip]
	mov	eax, edi
	movaps	xmm1, xmm2
	test	dil, 1
	je	.L1568
	.p2align 4
	.p2align 3
.L1570:
	mulss	xmm1, xmm0
.L1568:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1569
	mulss	xmm0, xmm0
	test	al, 1
	jne	.L1570
.L1574:
	mulss	xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1570
	jmp	.L1574
	.p2align 4,,10
	.p2align 3
.L1569:
	test	edi, edi
	jns	.L1567
	divss	xmm2, xmm1
	movaps	xmm1, xmm2
.L1567:
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
	jb	.L1575
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1575
	xor	eax, eax
	cmp	edi, esi
	jb	.L1575
	xor	eax, eax
	cmp	esi, edi
	setb	al
	add	eax, 1
.L1575:
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
	mov	eax, -1
	shr	rdx, 32
	shr	rcx, 32
	cmp	edx, ecx
	jb	.L1581
	mov	eax, 1
	cmp	ecx, edx
	jb	.L1581
	mov	eax, -1
	cmp	edi, esi
	jb	.L1581
	xor	eax, eax
	cmp	esi, edi
	setb	al
.L1581:
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
	jb	.L1586
	mov	eax, 2
	cmp	rcx, rsi
	jb	.L1586
	xor	eax, eax
	cmp	rdi, rdx
	jb	.L1586
	xor	eax, eax
	cmp	rdx, rdi
	setb	al
	add	eax, 1
.L1586:
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
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.byte	1
	.byte	0
	.byte	3
	.byte	2
	.byte	5
	.byte	4
	.byte	7
	.byte	6
	.byte	9
	.byte	8
	.byte	11
	.byte	10
	.byte	13
	.byte	12
	.byte	15
	.byte	14
	.align 16
.LC1:
	.byte	1
	.byte	0
	.byte	3
	.byte	2
	.byte	5
	.byte	4
	.byte	7
	.byte	6
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC5:
	.long	-8388609
	.align 4
.LC6:
	.long	2139095039
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC7:
	.long	-1
	.long	-1048577
	.align 8
.LC8:
	.long	-1
	.long	2146435071
	.section	.rodata.cst16
	.align 16
.LC9:
	.long	-1
	.long	-1
	.long	65534
	.long	0
	.align 16
.LC10:
	.long	-1
	.long	-1
	.long	32766
	.long	0
	.set	.LC11,.LC13+4
	.section	.rodata.cst4
	.align 4
.LC12:
	.long	1056964608
	.section	.rodata.cst8
	.align 8
.LC13:
	.long	0
	.long	1073741824
	.align 8
.LC14:
	.long	0
	.long	1071644672
	.section	.rodata.cst16
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
	.long	-1074790400
	.align 8
.LC17:
	.long	0
	.long	-1075838976
	.align 8
.LC18:
	.long	0
	.long	1072693248
	.section	.rodata.cst4
	.align 4
.LC19:
	.long	1191182336
	.align 4
.LC20:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
