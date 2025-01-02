	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	ebx, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+28]
	cmp	edx, ebx
	jnb	.L2
	test	eax, eax
	je	.L3
	.p2align 4
	.p2align 4
	.p2align 3
.L4:
	movzx	ecx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [ebx-1+eax], cl
	sub	eax, 1
	jne	.L4
.L3:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	cmp	ebx, edx
	je	.L3
	test	eax, eax
	je	.L3
	lea	ecx, [eax-1]
	lea	esi, [edx+1]
	cmp	ecx, 3
	jbe	.L5
	mov	ecx, edx
	lea	esi, [edx+1]
	or	ecx, ebx
	and	ecx, 3
	jne	.L5
	mov	ecx, ebx
	sub	ecx, esi
	cmp	ecx, 2
	jbe	.L5
	mov	edi, eax
	mov	ecx, ebx
	and	edi, -4
	lea	ebp, [edx+edi]
	.p2align 4
	.p2align 4
	.p2align 3
.L6:
	mov	esi, DWORD PTR [edx]
	add	edx, 4
	add	ecx, 4
	mov	DWORD PTR [ecx-4], esi
	cmp	edx, ebp
	jne	.L6
	mov	esi, eax
	lea	ecx, [ebx+edi]
	sub	esi, edi
	cmp	eax, edi
	je	.L3
	movzx	eax, BYTE PTR [edx]
	mov	BYTE PTR [ecx], al
	cmp	esi, 1
	je	.L3
	movzx	eax, BYTE PTR [edx+1]
	mov	BYTE PTR [ecx+1], al
	cmp	esi, 2
	je	.L3
	movzx	eax, BYTE PTR [edx+2]
	mov	BYTE PTR [ecx+2], al
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L5:
	add	eax, ebx
	mov	edx, ebx
	jmp	.L9
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L36:
	add	esi, 1
.L9:
	movzx	ecx, BYTE PTR [esi-1]
	add	edx, 1
	mov	BYTE PTR [edx-1], cl
	cmp	eax, edx
	jne	.L36
	jmp	.L3
	.cfi_endproc
.LFE0:
	.size	memmove, .-memmove
	.p2align 4
	.globl	memccpy
	.type	memccpy, @function
memccpy:
.LFB1:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ecx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+12]
	mov	ebx, DWORD PTR [esp+16]
	movzx	esi, BYTE PTR [esp+20]
	test	ecx, ecx
	jne	.L38
	jmp	.L40
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L41:
	add	ebx, 1
	add	eax, 1
	sub	ecx, 1
	je	.L40
.L38:
	movzx	edx, BYTE PTR [ebx]
	mov	BYTE PTR [eax], dl
	cmp	edx, esi
	jne	.L41
	add	eax, 1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L40:
	.cfi_restore_state
	xor	eax, eax
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1:
	.size	memccpy, .-memccpy
	.p2align 4
	.globl	memchr
	.type	memchr, @function
memchr:
.LFB2:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+8]
	movzx	ebx, BYTE PTR [esp+12]
	test	edx, edx
	jne	.L49
	jmp	.L52
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L51:
	add	eax, 1
	sub	edx, 1
	je	.L52
.L49:
	movzx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	.L51
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L52:
	.cfi_restore_state
	xor	eax, eax
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE2:
	.size	memchr, .-memchr
	.p2align 4
	.globl	memcmp
	.type	memcmp, @function
memcmp:
.LFB3:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	test	eax, eax
	jne	.L56
	jmp	.L55
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L58:
	add	ecx, 1
	add	edx, 1
	sub	eax, 1
	je	.L60
.L56:
	movzx	ebx, BYTE PTR [edx]
	cmp	BYTE PTR [ecx], bl
	je	.L58
	movzx	eax, BYTE PTR [ecx]
	movzx	edx, BYTE PTR [edx]
	sub	eax, edx
.L55:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L60:
	.cfi_restore_state
	xor	eax, eax
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE3:
	.size	memcmp, .-memcmp
	.p2align 4
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB4:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 8
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+16]
	test	eax, eax
	je	.L65
	sub	esp, 4
	.cfi_def_cfa_offset 20
	push	eax
	.cfi_def_cfa_offset 24
	push	DWORD PTR [esp+28]
	.cfi_def_cfa_offset 28
	push	ebx
	.cfi_def_cfa_offset 32
	call	memcpy
	add	esp, 16
	.cfi_def_cfa_offset 16
.L65:
	add	esp, 8
	.cfi_def_cfa_offset 8
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE4:
	.size	memcpy, .-memcpy
	.p2align 4
	.globl	memrchr
	.type	memrchr, @function
memrchr:
.LFB5:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+20]
	movzx	esi, BYTE PTR [esp+16]
	lea	eax, [ebx-1+eax]
	sub	ebx, 1
	jmp	.L71
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L73:
	mov	edx, eax
	sub	eax, 1
	movzx	ecx, BYTE PTR [edx]
	cmp	ecx, esi
	je	.L70
.L71:
	cmp	eax, ebx
	jne	.L73
	xor	edx, edx
.L70:
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE5:
	.size	memrchr, .-memrchr
	.p2align 4
	.globl	memset
	.type	memset, @function
memset:
.LFB6:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 8
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+16]
	test	eax, eax
	je	.L78
	sub	esp, 4
	.cfi_def_cfa_offset 20
	push	eax
	.cfi_def_cfa_offset 24
	movzx	eax, BYTE PTR [esp+28]
	push	eax
	.cfi_def_cfa_offset 28
	push	ebx
	.cfi_def_cfa_offset 32
	call	memset
	add	esp, 16
	.cfi_def_cfa_offset 16
.L78:
	add	esp, 8
	.cfi_def_cfa_offset 8
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE6:
	.size	memset, .-memset
	.p2align 4
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB7:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	movzx	ecx, BYTE PTR [edx]
	mov	BYTE PTR [eax], cl
	test	cl, cl
	je	.L81
	.p2align 4
	.p2align 4
	.p2align 3
.L82:
	movzx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	add	eax, 1
	mov	BYTE PTR [eax], cl
	test	cl, cl
	jne	.L82
.L81:
	ret
	.cfi_endproc
.LFE7:
	.size	stpcpy, .-stpcpy
	.p2align 4
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB8:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	movzx	ecx, BYTE PTR [esp+8]
	movzx	eax, BYTE PTR [edx]
	test	al, al
	jne	.L88
	jmp	.L87
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L90:
	movzx	eax, BYTE PTR [edx+1]
	add	edx, 1
	test	al, al
	je	.L87
.L88:
	cmp	eax, ecx
	jne	.L90
.L87:
	mov	eax, edx
	ret
	.cfi_endproc
.LFE8:
	.size	strchrnul, .-strchrnul
	.p2align 4
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB9:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	mov	ebx, DWORD PTR [esp+12]
	jmp	.L96
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L100:
	add	eax, 1
	test	cl, cl
	je	.L99
.L96:
	movsx	ecx, BYTE PTR [eax]
	cmp	ecx, ebx
	jne	.L100
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L99:
	.cfi_restore_state
	xor	eax, eax
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE9:
	.size	strchr, .-strchr
	.p2align 4
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB10:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	movzx	eax, BYTE PTR [ecx]
	movzx	ebx, BYTE PTR [edx]
	cmp	al, bl
	je	.L102
	jmp	.L103
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L104:
	movzx	eax, BYTE PTR [ecx+1]
	movzx	ebx, BYTE PTR [edx+1]
	add	ecx, 1
	add	edx, 1
	cmp	al, bl
	jne	.L103
.L102:
	test	al, al
	jne	.L104
	xor	eax, eax
.L103:
	sub	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE10:
	.size	strcmp, .-strcmp
	.p2align 4
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB11:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	cmp	BYTE PTR [edx], 0
	je	.L111
	mov	eax, edx
	.p2align 3
	.p2align 4
	.p2align 3
.L110:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L110
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L111:
	xor	eax, eax
	ret
	.cfi_endproc
.LFE11:
	.size	strlen, .-strlen
	.p2align 4
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB12:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xor	eax, eax
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 4
	.cfi_def_cfa_offset 24
	mov	ebp, DWORD PTR [esp+32]
	test	ebp, ebp
	je	.L113
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	sub	ebp, 1
	movzx	eax, BYTE PTR [eax]
	add	ebp, edx
	test	al, al
	jne	.L117
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L132:
	cmp	edx, ebp
	je	.L116
	add	DWORD PTR [esp+24], 1
	mov	eax, DWORD PTR [esp+24]
	lea	ecx, [edx+1]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	.L131
	mov	edx, ecx
.L117:
	movzx	ecx, BYTE PTR [edx]
	test	cl, cl
	mov	BYTE PTR [esp+3], cl
	setne	bl
	cmp	cl, al
	mov	edi, ebx
	sete	bl
	mov	esi, ebx
	mov	ebx, edi
	mov	ecx, esi
	test	bl, cl
	jne	.L132
.L116:
	movzx	ecx, BYTE PTR [esp+3]
	sub	eax, ecx
.L113:
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L131:
	.cfi_restore_state
	movzx	eax, BYTE PTR [edx+1]
	mov	BYTE PTR [esp+3], al
	xor	eax, eax
	jmp	.L116
.L130:
	movzx	eax, BYTE PTR [edx]
	mov	BYTE PTR [esp+3], al
	xor	eax, eax
	jmp	.L116
	.cfi_endproc
.LFE12:
	.size	strncmp, .-strncmp
	.p2align 4
	.globl	swab
	.type	swab, @function
swab:
.LFB13:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ebx, DWORD PTR [esp+16]
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	cmp	ebx, 1
	jle	.L133
	and	ebx, -2
	add	ebx, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L135:
	movzx	ecx, BYTE PTR [eax+1]
	add	eax, 2
	add	edx, 2
	mov	BYTE PTR [edx-2], cl
	movzx	ecx, BYTE PTR [eax-2]
	mov	BYTE PTR [edx-1], cl
	cmp	eax, ebx
	jne	.L135
.L133:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE13:
	.size	swab, .-swab
	.p2align 4
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
	.p2align 4
	.globl	isascii
	.type	isascii, @function
isascii:
.LFB15:
	.cfi_startproc
	xor	eax, eax
	cmp	DWORD PTR [esp+4], 127
	setbe	al
	ret
	.cfi_endproc
.LFE15:
	.size	isascii, .-isascii
	.p2align 4
	.globl	isblank
	.type	isblank, @function
isblank:
.LFB16:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	cmp	edx, 32
	sete	al
	cmp	edx, 9
	sete	dl
	or	eax, edx
	movzx	eax, al
	ret
	.cfi_endproc
.LFE16:
	.size	isblank, .-isblank
	.p2align 4
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB17:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	cmp	edx, 31
	setbe	al
	cmp	edx, 127
	sete	dl
	or	eax, edx
	movzx	eax, al
	ret
	.cfi_endproc
.LFE17:
	.size	iscntrl, .-iscntrl
	.p2align 4
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
	.p2align 4
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
	.p2align 4
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
	.p2align 4
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
	.p2align 4
	.globl	isspace
	.type	isspace, @function
isspace:
.LFB22:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	lea	eax, [edx-9]
	cmp	eax, 4
	setbe	al
	cmp	edx, 32
	sete	dl
	or	eax, edx
	movzx	eax, al
	ret
	.cfi_endproc
.LFE22:
	.size	isspace, .-isspace
	.p2align 4
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
	.p2align 4
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB24:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	lea	edx, [eax-127]
	cmp	edx, 32
	jbe	.L150
	cmp	eax, 31
	jbe	.L150
	lea	ecx, [eax-8232]
	mov	edx, 1
	cmp	ecx, 1
	jbe	.L148
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L150:
	mov	edx, 1
.L148:
	mov	eax, edx
	ret
	.cfi_endproc
.LFE24:
	.size	iswcntrl, .-iswcntrl
	.p2align 4
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
	.p2align 4
	.globl	iswprint
	.type	iswprint, @function
iswprint:
.LFB26:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	cmp	eax, 254
	jbe	.L159
	lea	edx, [eax-8234]
	cmp	edx, 47061
	jbe	.L156
	cmp	eax, 8231
	jbe	.L156
	lea	ecx, [eax-57344]
	mov	edx, 1
	cmp	ecx, 8184
	jbe	.L153
	lea	ecx, [eax-65532]
	xor	edx, edx
	cmp	ecx, 1048579
	ja	.L153
	not	eax
	xor	edx, edx
	test	eax, 65534
	setne	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L156:
	mov	edx, 1
.L153:
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L159:
	add	eax, 1
	xor	edx, edx
	and	eax, 127
	cmp	eax, 32
	seta	dl
	mov	eax, edx
	ret
	.cfi_endproc
.LFE26:
	.size	iswprint, .-iswprint
	.p2align 4
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB27:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, 1
	lea	ecx, [eax-48]
	cmp	ecx, 9
	jbe	.L160
	or	eax, 32
	xor	edx, edx
	sub	eax, 97
	cmp	eax, 5
	setbe	dl
.L160:
	mov	eax, edx
	ret
	.cfi_endproc
.LFE27:
	.size	iswxdigit, .-iswxdigit
	.p2align 4
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
	.p2align 4
	.globl	fdim
	.type	fdim, @function
fdim:
.LFB29:
	.cfi_startproc
	fld	QWORD PTR [esp+12]
	fld	QWORD PTR [esp+4]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L172
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L168
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L171
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
.L171:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L172:
	fstp	st(1)
.L164:
	ret
	.p2align 4,,10
	.p2align 3
.L168:
	fstp	st(1)
	ret
	.cfi_endproc
.LFE29:
	.size	fdim, .-fdim
	.p2align 4
	.globl	fdimf
	.type	fdimf, @function
fdimf:
.LFB30:
	.cfi_startproc
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+4]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L181
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L177
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L180
	fsubrp	st(1), st
	ret
	.p2align 4,,10
	.p2align 3
.L180:
	fstp	st(0)
	fstp	st(0)
	fldz
	jmp	.L173
	.p2align 4,,10
	.p2align 3
.L181:
	fstp	st(1)
.L173:
	ret
	.p2align 4,,10
	.p2align 3
.L177:
	fstp	st(1)
	ret
	.cfi_endproc
.LFE30:
	.size	fdimf, .-fdimf
	.p2align 4
	.globl	fmax
	.type	fmax, @function
fmax:
.LFB31:
	.cfi_startproc
	fld	QWORD PTR [esp+12]
	fld	QWORD PTR [esp+4]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L193
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L194
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
	jne	.L192
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L195
	fstp	st(1)
	jmp	.L188
	.p2align 4,,10
	.p2align 3
.L194:
	fstp	st(0)
	jmp	.L188
	.p2align 4,,10
	.p2align 3
.L195:
	fstp	st(0)
	jmp	.L188
	.p2align 4,,10
	.p2align 3
.L196:
	fstp	st(0)
.L188:
	jmp	.L182
	.p2align 4,,10
	.p2align 3
.L193:
	fstp	st(0)
.L182:
	ret
	.p2align 4,,10
	.p2align 3
.L192:
	test	edx, edx
	je	.L196
	fstp	st(1)
	ret
	.cfi_endproc
.LFE31:
	.size	fmax, .-fmax
	.p2align 4
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB32:
	.cfi_startproc
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+4]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L208
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L209
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
	jne	.L207
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L210
	fstp	st(1)
	jmp	.L203
	.p2align 4,,10
	.p2align 3
.L209:
	fstp	st(0)
	jmp	.L203
	.p2align 4,,10
	.p2align 3
.L210:
	fstp	st(0)
	jmp	.L203
	.p2align 4,,10
	.p2align 3
.L211:
	fstp	st(0)
.L203:
	jmp	.L197
	.p2align 4,,10
	.p2align 3
.L208:
	fstp	st(0)
.L197:
	ret
	.p2align 4,,10
	.p2align 3
.L207:
	test	edx, edx
	je	.L211
	fstp	st(1)
	ret
	.cfi_endproc
.LFE32:
	.size	fmaxf, .-fmaxf
	.p2align 4
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB33:
	.cfi_startproc
	fld	TBYTE PTR [esp+16]
	fld	TBYTE PTR [esp+4]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L223
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L224
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
	jne	.L222
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L225
	fstp	st(1)
	jmp	.L218
	.p2align 4,,10
	.p2align 3
.L224:
	fstp	st(0)
	jmp	.L218
	.p2align 4,,10
	.p2align 3
.L225:
	fstp	st(0)
	jmp	.L218
	.p2align 4,,10
	.p2align 3
.L226:
	fstp	st(0)
.L218:
	jmp	.L212
	.p2align 4,,10
	.p2align 3
.L223:
	fstp	st(0)
.L212:
	ret
	.p2align 4,,10
	.p2align 3
.L222:
	test	edx, edx
	je	.L226
	fstp	st(1)
	ret
	.cfi_endproc
.LFE33:
	.size	fmaxl, .-fmaxl
	.p2align 4
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB34:
	.cfi_startproc
	fld	QWORD PTR [esp+12]
	fld	QWORD PTR [esp+4]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L238
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L239
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
	jne	.L237
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L240
	fstp	st(0)
	jmp	.L232
	.p2align 4,,10
	.p2align 3
.L238:
	fstp	st(0)
	jmp	.L232
	.p2align 4,,10
	.p2align 3
.L240:
	fstp	st(1)
	jmp	.L232
	.p2align 4,,10
	.p2align 3
.L241:
	fstp	st(1)
.L232:
	jmp	.L227
	.p2align 4,,10
	.p2align 3
.L239:
	fstp	st(0)
.L227:
	ret
	.p2align 4,,10
	.p2align 3
.L237:
	test	edx, edx
	je	.L241
	fstp	st(0)
	ret
	.cfi_endproc
.LFE34:
	.size	fmin, .-fmin
	.p2align 4
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB35:
	.cfi_startproc
	fld	DWORD PTR [esp+8]
	fld	DWORD PTR [esp+4]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L253
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L254
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
	jne	.L252
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L255
	fstp	st(0)
	jmp	.L247
	.p2align 4,,10
	.p2align 3
.L253:
	fstp	st(0)
	jmp	.L247
	.p2align 4,,10
	.p2align 3
.L255:
	fstp	st(1)
	jmp	.L247
	.p2align 4,,10
	.p2align 3
.L256:
	fstp	st(1)
.L247:
	jmp	.L242
	.p2align 4,,10
	.p2align 3
.L254:
	fstp	st(0)
.L242:
	ret
	.p2align 4,,10
	.p2align 3
.L252:
	test	edx, edx
	je	.L256
	fstp	st(0)
	ret
	.cfi_endproc
.LFE35:
	.size	fminf, .-fminf
	.p2align 4
	.globl	fminl
	.type	fminl, @function
fminl:
.LFB36:
	.cfi_startproc
	fld	TBYTE PTR [esp+16]
	fld	TBYTE PTR [esp+4]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L268
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L269
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
	jne	.L267
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L270
	fstp	st(0)
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L268:
	fstp	st(0)
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L270:
	fstp	st(1)
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L271:
	fstp	st(1)
.L262:
	jmp	.L257
	.p2align 4,,10
	.p2align 3
.L269:
	fstp	st(0)
.L257:
	ret
	.p2align 4,,10
	.p2align 3
.L267:
	test	edx, edx
	je	.L271
	fstp	st(0)
	ret
	.cfi_endproc
.LFE36:
	.size	fminl, .-fminl
	.p2align 4
	.globl	l64a
	.type	l64a, @function
l64a:
.LFB37:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, OFFSET FLAT:s.0
	test	eax, eax
	je	.L273
	.p2align 5
	.p2align 4
	.p2align 3
.L274:
	mov	ecx, eax
	add	edx, 1
	and	ecx, 63
	movzx	ecx, BYTE PTR digits[ecx]
	mov	BYTE PTR [edx-1], cl
	shr	eax, 6
	jne	.L274
.L273:
	mov	BYTE PTR [edx], 0
	mov	eax, OFFSET FLAT:s.0
	ret
	.cfi_endproc
.LFE37:
	.size	l64a, .-l64a
	.p2align 4
	.globl	srand
	.type	srand, @function
srand:
.LFB38:
	.cfi_startproc
	mov	DWORD PTR seed+4, 0
	mov	eax, DWORD PTR [esp+4]
	sub	eax, 1
	mov	DWORD PTR seed, eax
	ret
	.cfi_endproc
.LFE38:
	.size	srand, .-srand
	.p2align 4
	.globl	rand
	.type	rand, @function
rand:
.LFB39:
	.cfi_startproc
	mov	eax, DWORD PTR seed
	imul	ecx, DWORD PTR seed+4, 1284865837
	imul	edx, eax, 1481765933
	add	ecx, edx
	mov	edx, 1284865837
	mul	edx
	add	edx, ecx
	add	eax, 1
	adc	edx, 0
	mov	DWORD PTR seed, eax
	mov	eax, edx
	mov	DWORD PTR seed+4, edx
	shr	eax
	ret
	.cfi_endproc
.LFE39:
	.size	rand, .-rand
	.p2align 4
	.globl	insque
	.type	insque, @function
insque:
.LFB40:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	test	edx, edx
	je	.L285
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [eax], ecx
	mov	DWORD PTR [edx], eax
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	je	.L279
	mov	DWORD PTR [edx+4], eax
.L279:
	ret
	.p2align 4,,10
	.p2align 3
.L285:
	mov	DWORD PTR [eax+4], 0
	mov	DWORD PTR [eax], 0
	ret
	.cfi_endproc
.LFE40:
	.size	insque, .-insque
	.p2align 4
	.globl	remque
	.type	remque, @function
remque:
.LFB41:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	je	.L287
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
.L287:
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	.L286
	mov	DWORD PTR [eax], edx
.L286:
	ret
	.cfi_endproc
.LFE41:
	.size	remque, .-remque
	.p2align 4
	.globl	lsearch
	.type	lsearch, @function
lsearch:
.LFB42:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 28
	.cfi_def_cfa_offset 48
	mov	eax, DWORD PTR [esp+56]
	mov	edi, DWORD PTR [esp+60]
	mov	ecx, DWORD PTR [eax]
	test	ecx, ecx
	je	.L296
	mov	ebx, DWORD PTR [esp+52]
	xor	esi, esi
	mov	DWORD PTR [esp+12], ecx
	mov	ebp, ebx
	mov	ebx, esi
	jmp	.L298
	.p2align 4,,10
	.p2align 3
.L313:
	add	ebx, 1
	add	ebp, edi
	cmp	DWORD PTR [esp+12], ebx
	je	.L312
.L298:
	sub	esp, 8
	.cfi_def_cfa_offset 56
	push	ebp
	.cfi_def_cfa_offset 60
	push	DWORD PTR [esp+60]
	.cfi_def_cfa_offset 64
	call	[DWORD PTR [esp+80]]
	add	esp, 16
	.cfi_def_cfa_offset 48
	test	eax, eax
	jne	.L313
.L295:
	add	esp, 28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	mov	eax, ebp
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L312:
	.cfi_restore_state
	mov	ecx, DWORD PTR [esp+12]
.L296:
	mov	edx, DWORD PTR [esp+56]
	lea	eax, [ecx+1]
	imul	ecx, edi
	add	ecx, DWORD PTR [esp+52]
	mov	DWORD PTR [edx], eax
	mov	ebp, ecx
	test	edi, edi
	je	.L295
	sub	esp, 4
	.cfi_def_cfa_offset 52
	push	edi
	.cfi_def_cfa_offset 56
	push	DWORD PTR [esp+56]
	.cfi_def_cfa_offset 60
	push	ecx
	.cfi_def_cfa_offset 64
	call	memmove
	add	esp, 16
	.cfi_def_cfa_offset 48
	mov	eax, ebp
	add	esp, 28
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE42:
	.size	lsearch, .-lsearch
	.p2align 4
	.globl	lfind
	.type	lfind, @function
lfind:
.LFB43:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 12
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+40]
	mov	ebp, DWORD PTR [eax]
	test	ebp, ebp
	je	.L315
	mov	ebx, DWORD PTR [esp+36]
	mov	esi, ebp
	xor	edi, edi
	mov	ebp, ebx
	jmp	.L317
	.p2align 4,,10
	.p2align 3
.L327:
	add	edi, 1
	add	ebp, DWORD PTR [esp+44]
	cmp	esi, edi
	je	.L315
.L317:
	sub	esp, 8
	.cfi_def_cfa_offset 40
	push	ebp
	.cfi_def_cfa_offset 44
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	call	[DWORD PTR [esp+64]]
	add	esp, 16
	.cfi_def_cfa_offset 32
	test	eax, eax
	jne	.L327
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	mov	edi, ebp
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, edi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L315:
	.cfi_restore_state
	add	esp, 12
	.cfi_def_cfa_offset 20
	xor	edi, edi
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, edi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE43:
	.size	lfind, .-lfind
	.p2align 4
	.globl	abs
	.type	abs, @function
abs:
.LFB44:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	cdq
	xor	eax, edx
	sub	eax, edx
	ret
	.cfi_endproc
.LFE44:
	.size	abs, .-abs
	.p2align 4
	.globl	atoi
	.type	atoi, @function
atoi:
.LFB45:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [esp+20]
	movsx	ecx, BYTE PTR [edx]
	lea	ebx, [ecx-9]
	cmp	ebx, 4
	jbe	.L347
	mov	eax, ecx
	jmp	.L352
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L347:
	movsx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	lea	ebx, [ecx-9]
	mov	eax, ecx
	cmp	ebx, 4
	jbe	.L347
.L352:
	cmp	al, 32
	je	.L347
	cmp	al, 43
	je	.L333
	cmp	al, 45
	jne	.L353
	lea	edi, [edx+1]
	movsx	edx, BYTE PTR [edx+1]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L342
	mov	ebp, 1
.L336:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L339:
	lea	edx, [esi+esi*4]
	movsx	ebx, BYTE PTR [edi+1]
	lea	ecx, [eax-48]
	add	edi, 1
	add	edx, edx
	movsx	ecx, cl
	mov	esi, edx
	mov	eax, ebx
	sub	ebx, 48
	sub	esi, ecx
	cmp	ebx, 9
	jbe	.L339
	test	ebp, ebp
	jne	.L329
	mov	esi, ecx
	sub	esi, edx
.L329:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L353:
	.cfi_restore_state
	sub	ecx, 48
	mov	edi, edx
	xor	ebp, ebp
	cmp	ecx, 9
	jbe	.L336
.L342:
	xor	esi, esi
.L354:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L333:
	.cfi_restore_state
	lea	edi, [edx+1]
	movsx	edx, BYTE PTR [edx+1]
	xor	ebp, ebp
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L336
	xor	esi, esi
	jmp	.L354
	.cfi_endproc
.LFE45:
	.size	atoi, .-atoi
	.p2align 4
	.globl	atol
	.type	atol, @function
atol:
.LFB156:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [esp+20]
	movsx	ecx, BYTE PTR [edx]
	lea	ebx, [ecx-9]
	cmp	ebx, 4
	jbe	.L372
	mov	eax, ecx
	jmp	.L376
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L372:
	movsx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	lea	ebx, [ecx-9]
	mov	eax, ecx
	cmp	ebx, 4
	jbe	.L372
.L376:
	cmp	al, 32
	je	.L372
	cmp	al, 43
	je	.L359
	cmp	al, 45
	je	.L377
	sub	ecx, 48
	mov	edi, edx
	xor	ebp, ebp
	cmp	ecx, 9
	ja	.L367
.L361:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L364:
	lea	edx, [esi+esi*4]
	movsx	ebx, BYTE PTR [edi+1]
	lea	ecx, [eax-48]
	add	edi, 1
	add	edx, edx
	movsx	ecx, cl
	mov	esi, edx
	mov	eax, ebx
	sub	ebx, 48
	sub	esi, ecx
	cmp	ebx, 9
	jbe	.L364
	test	ebp, ebp
	jne	.L355
	mov	esi, ecx
	sub	esi, edx
.L355:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L377:
	.cfi_restore_state
	lea	edi, [edx+1]
	movsx	edx, BYTE PTR [edx+1]
	mov	ebp, 1
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L361
.L367:
	xor	esi, esi
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L359:
	.cfi_restore_state
	lea	edi, [edx+1]
	movsx	edx, BYTE PTR [edx+1]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L367
	xor	ebp, ebp
	jmp	.L361
	.cfi_endproc
.LFE156:
	.size	atol, .-atol
	.p2align 4
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 20
	.cfi_def_cfa_offset 40
	mov	ecx, DWORD PTR [esp+40]
	movsx	eax, BYTE PTR [ecx]
	lea	ebx, [eax-9]
	cmp	ebx, 4
	jbe	.L396
	mov	edx, eax
	jmp	.L403
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L396:
	movsx	eax, BYTE PTR [ecx+1]
	add	ecx, 1
	lea	ebx, [eax-9]
	mov	edx, eax
	cmp	ebx, 4
	jbe	.L396
.L403:
	cmp	dl, 32
	je	.L396
	cmp	dl, 43
	je	.L382
	cmp	dl, 45
	jne	.L404
	lea	eax, [ecx+1]
	movsx	ecx, BYTE PTR [ecx+1]
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	ja	.L391
	mov	ebp, 1
.L385:
	mov	DWORD PTR [esp+12], ebp
	xor	ecx, ecx
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L388:
	mov	esi, ecx
	mov	edi, ebx
	shld	edi, esi, 2
	sal	esi, 2
	add	ecx, esi
	adc	ebx, edi
	add	ecx, ecx
	adc	ebx, ebx
	sub	edx, 48
	movsx	ebp, BYTE PTR [eax+1]
	add	eax, 1
	movsx	esi, dl
	mov	DWORD PTR [esp], ecx
	mov	edi, esi
	mov	DWORD PTR [esp+4], ebx
	mov	edx, ebp
	sar	edi, 31
	sub	ecx, esi
	sbb	ebx, edi
	sub	ebp, 48
	cmp	ebp, 9
	jbe	.L388
	mov	ebp, DWORD PTR [esp+12]
	test	ebp, ebp
	jne	.L378
	sub	esi, DWORD PTR [esp]
	sbb	edi, DWORD PTR [esp+4]
	mov	ecx, esi
	mov	ebx, edi
.L378:
	add	esp, 20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	mov	edx, ebx
	mov	eax, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L404:
	.cfi_restore_state
	lea	ebx, [eax-48]
	xor	ebp, ebp
	mov	eax, ecx
	cmp	ebx, 9
	jbe	.L385
.L391:
	add	esp, 20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xor	ebx, ebx
	xor	ecx, ecx
	mov	edx, ebx
	mov	eax, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L382:
	.cfi_restore_state
	lea	eax, [ecx+1]
	movsx	ecx, BYTE PTR [ecx+1]
	xor	ebp, ebp
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L385
	jmp	.L391
	.cfi_endproc
.LFE47:
	.size	atoll, .-atoll
	.p2align 4
	.globl	bsearch
	.type	bsearch, @function
bsearch:
.LFB48:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 12
	.cfi_def_cfa_offset 32
	mov	ebx, DWORD PTR [esp+40]
	mov	esi, DWORD PTR [esp+44]
	.p2align 4
	.p2align 3
.L420:
	test	ebx, ebx
	je	.L406
.L421:
	mov	edi, ebx
	sub	esp, 8
	.cfi_def_cfa_offset 40
	shr	edi
	mov	edx, edi
	imul	edx, esi
	add	edx, DWORD PTR [esp+44]
	push	edx
	.cfi_def_cfa_offset 44
	mov	ebp, edx
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	call	[DWORD PTR [esp+64]]
	add	esp, 16
	.cfi_def_cfa_offset 32
	test	eax, eax
	js	.L410
	je	.L405
	sub	ebx, 1
	lea	eax, [ebp+0+esi]
	sub	ebx, edi
	mov	DWORD PTR [esp+36], eax
	test	ebx, ebx
	jne	.L421
.L406:
	xor	ebp, ebp
.L405:
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	mov	eax, ebp
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L410:
	.cfi_restore_state
	mov	ebx, edi
	jmp	.L420
	.cfi_endproc
.LFE48:
	.size	bsearch, .-bsearch
	.p2align 4
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB49:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 12
	.cfi_def_cfa_offset 32
	mov	esi, DWORD PTR [esp+44]
	mov	ebp, DWORD PTR [esp+40]
	mov	edi, esi
	test	ebp, ebp
	je	.L427
	.p2align 4
	.p2align 3
.L423:
	mov	esi, ebp
	sub	esp, 4
	.cfi_def_cfa_offset 36
	sar	esi
	mov	ebx, esi
	imul	ebx, edi
	add	ebx, DWORD PTR [esp+40]
	push	DWORD PTR [esp+56]
	.cfi_def_cfa_offset 40
	push	ebx
	.cfi_def_cfa_offset 44
	push	DWORD PTR [esp+44]
	.cfi_def_cfa_offset 48
	call	[DWORD PTR [esp+64]]
	add	esp, 16
	.cfi_def_cfa_offset 32
	test	eax, eax
	je	.L422
	jle	.L425
	sub	ebp, 1
	lea	eax, [ebx+edi]
	sar	ebp
	mov	DWORD PTR [esp+36], eax
	jne	.L423
.L427:
	xor	ebx, ebx
.L422:
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L425:
	.cfi_restore_state
	test	esi, esi
	je	.L427
	mov	ebp, esi
	jmp	.L423
	.cfi_endproc
.LFE49:
	.size	bsearch_r, .-bsearch_r
	.p2align 4
	.globl	div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+4]
	cdq
	idiv	DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	mov	eax, ecx
	mov	DWORD PTR [ecx+4], edx
	ret	4
	.cfi_endproc
.LFE50:
	.size	div, .-div
	.p2align 4
	.globl	imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB51:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+8]
	mov	ebx, edx
	sar	ebx, 31
	mov	ecx, ebx
	xor	edx, ebx
	xor	eax, ecx
	sub	eax, ecx
	sbb	edx, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE51:
	.size	imaxabs, .-imaxabs
	.p2align 4
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB52:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 24
	.cfi_def_cfa_offset 32
	mov	ebx, DWORD PTR [esp+32]
	lea	eax, [esp+8]
	sub	esp, 12
	.cfi_def_cfa_offset 44
	push	eax
	.cfi_def_cfa_offset 48
	push	DWORD PTR [esp+64]
	.cfi_def_cfa_offset 52
	push	DWORD PTR [esp+64]
	.cfi_def_cfa_offset 56
	push	DWORD PTR [esp+64]
	.cfi_def_cfa_offset 60
	push	DWORD PTR [esp+64]
	.cfi_def_cfa_offset 64
	call	__divmoddi4
	mov	DWORD PTR [ebx], eax
	mov	DWORD PTR [ebx+4], edx
	mov	eax, DWORD PTR [esp+40]
	mov	edx, DWORD PTR [esp+44]
	mov	DWORD PTR [ebx+8], eax
	mov	eax, ebx
	mov	DWORD PTR [ebx+12], edx
	add	esp, 56
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	4
	.cfi_endproc
.LFE52:
	.size	imaxdiv, .-imaxdiv
	.p2align 4
	.globl	labs
	.type	labs, @function
labs:
.LFB152:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	cdq
	xor	eax, edx
	sub	eax, edx
	ret
	.cfi_endproc
.LFE152:
	.size	labs, .-labs
	.p2align 4
	.globl	ldiv
	.type	ldiv, @function
ldiv:
.LFB54:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+4]
	cdq
	idiv	DWORD PTR [esp+12]
	mov	DWORD PTR [ecx], eax
	mov	eax, ecx
	mov	DWORD PTR [ecx+4], edx
	ret	4
	.cfi_endproc
.LFE54:
	.size	ldiv, .-ldiv
	.p2align 4
	.globl	llabs
	.type	llabs, @function
llabs:
.LFB154:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+8]
	mov	ebx, edx
	sar	ebx, 31
	mov	ecx, ebx
	xor	edx, ebx
	xor	eax, ecx
	sub	eax, ecx
	sbb	edx, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE154:
	.size	llabs, .-llabs
	.p2align 4
	.globl	lldiv
	.type	lldiv, @function
lldiv:
.LFB56:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 24
	.cfi_def_cfa_offset 32
	mov	ebx, DWORD PTR [esp+32]
	lea	eax, [esp+8]
	sub	esp, 12
	.cfi_def_cfa_offset 44
	push	eax
	.cfi_def_cfa_offset 48
	push	DWORD PTR [esp+64]
	.cfi_def_cfa_offset 52
	push	DWORD PTR [esp+64]
	.cfi_def_cfa_offset 56
	push	DWORD PTR [esp+64]
	.cfi_def_cfa_offset 60
	push	DWORD PTR [esp+64]
	.cfi_def_cfa_offset 64
	call	__divmoddi4
	mov	DWORD PTR [ebx], eax
	mov	DWORD PTR [ebx+4], edx
	mov	eax, DWORD PTR [esp+40]
	mov	edx, DWORD PTR [esp+44]
	mov	DWORD PTR [ebx+8], eax
	mov	eax, ebx
	mov	DWORD PTR [ebx+12], edx
	add	esp, 56
	.cfi_def_cfa_offset 8
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	4
	.cfi_endproc
.LFE56:
	.size	lldiv, .-lldiv
	.p2align 4
	.globl	wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	jne	.L450
	jmp	.L453
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L452:
	mov	edx, DWORD PTR [eax+4]
	add	eax, 4
	test	edx, edx
	je	.L453
.L450:
	cmp	ecx, edx
	jne	.L452
	ret
	.p2align 4,,10
	.p2align 3
.L453:
	xor	eax, eax
	ret
	.cfi_endproc
.LFE57:
	.size	wcschr, .-wcschr
	.p2align 4
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB58:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [ecx]
	mov	ebx, DWORD PTR [edx]
	cmp	eax, ebx
	je	.L456
	jmp	.L457
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L458:
	mov	eax, DWORD PTR [ecx+4]
	mov	ebx, DWORD PTR [edx+4]
	add	ecx, 4
	add	edx, 4
	cmp	eax, ebx
	jne	.L457
.L456:
	test	eax, eax
	jne	.L458
.L457:
	mov	edx, -1
	cmp	eax, ebx
	jl	.L455
	setg	dl
	movzx	edx, dl
.L455:
	mov	eax, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE58:
	.size	wcscmp, .-wcscmp
	.p2align 4
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB59:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	xor	eax, eax
	mov	ebx, DWORD PTR [esp+12]
	.p2align 4
	.p2align 4
	.p2align 3
.L464:
	mov	edx, DWORD PTR [ebx+eax]
	mov	DWORD PTR [ecx+eax], edx
	add	eax, 4
	test	edx, edx
	jne	.L464
	mov	eax, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE59:
	.size	wcscpy, .-wcscpy
	.p2align 4
	.globl	wcslen
	.type	wcslen, @function
wcslen:
.LFB60:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [edx]
	test	eax, eax
	je	.L470
	mov	eax, edx
	.p2align 4
	.p2align 4
	.p2align 3
.L469:
	mov	ecx, DWORD PTR [eax+4]
	add	eax, 4
	test	ecx, ecx
	jne	.L469
	sub	eax, edx
	sar	eax, 2
	ret
	.p2align 4,,10
	.p2align 3
.L470:
	xor	eax, eax
	ret
	.cfi_endproc
.LFE60:
	.size	wcslen, .-wcslen
	.p2align 4
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+12]
	test	ecx, ecx
	jne	.L473
	jmp	.L479
	.p2align 4,,10
	.p2align 3
.L485:
	test	ebx, ebx
	je	.L477
	add	edx, 4
	add	eax, 4
	sub	ecx, 1
	je	.L479
.L473:
	mov	ebx, DWORD PTR [edx]
	cmp	DWORD PTR [eax], ebx
	je	.L485
.L477:
	mov	eax, DWORD PTR [eax]
	cmp	DWORD PTR [edx], eax
	jl	.L486
	setg	al
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L486:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L479:
	.cfi_restore_state
	xor	eax, eax
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE61:
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB62:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+12]
	mov	eax, DWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+8]
	test	edx, edx
	jne	.L488
	jmp	.L491
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L490:
	add	eax, 4
	sub	edx, 1
	je	.L491
.L488:
	cmp	DWORD PTR [eax], ecx
	jne	.L490
	ret
	.p2align 4,,10
	.p2align 3
.L491:
	xor	eax, eax
	ret
	.cfi_endproc
.LFE62:
	.size	wmemchr, .-wmemchr
	.p2align 4
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB63:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	test	eax, eax
	jne	.L494
	jmp	.L493
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L496:
	add	ecx, 4
	add	edx, 4
	sub	eax, 1
	je	.L499
.L494:
	mov	ebx, DWORD PTR [ecx]
	cmp	ebx, DWORD PTR [edx]
	je	.L496
	cmp	ebx, DWORD PTR [edx]
	jl	.L503
	setg	al
	movzx	eax, al
.L493:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L503:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L499:
	.cfi_restore_state
	xor	eax, eax
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE63:
	.size	wmemcmp, .-wmemcmp
	.p2align 4
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB64:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sub	esp, 8
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+16]
	test	eax, eax
	je	.L505
	sub	esp, 4
	.cfi_def_cfa_offset 20
	sal	eax, 2
	push	eax
	.cfi_def_cfa_offset 24
	push	DWORD PTR [esp+28]
	.cfi_def_cfa_offset 28
	push	ebx
	.cfi_def_cfa_offset 32
	call	memcpy
	add	esp, 16
	.cfi_def_cfa_offset 16
.L505:
	add	esp, 8
	.cfi_def_cfa_offset 8
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE64:
	.size	wmemcpy, .-wmemcpy
	.p2align 4
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB65:
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
	mov	edx, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	mov	ecx, DWORD PTR [esp+24]
	cmp	edx, esi
	je	.L518
	mov	ebx, edx
	lea	edi, [0+ecx*4]
	lea	eax, [ecx-1]
	sub	ebx, esi
	cmp	ebx, edi
	jnb	.L525
	test	ecx, ecx
	je	.L518
	.p2align 4
	.p2align 4
	.p2align 3
.L515:
	mov	ecx, DWORD PTR [esi+eax*4]
	mov	DWORD PTR [edx+eax*4], ecx
	sub	eax, 1
	jnb	.L515
.L518:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	mov	eax, edx
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L525:
	.cfi_restore_state
	mov	edi, edx
	test	ecx, ecx
	je	.L518
	.p2align 3
	.p2align 4
	.p2align 3
.L513:
	movsd
	sub	eax, 1
	jnb	.L513
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	mov	eax, edx
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE65:
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB66:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	test	edx, edx
	je	.L527
	lea	eax, [edx-1]
	mov	edx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
.L528:
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	sub	eax, 1
	jnb	.L528
.L527:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE66:
	.size	wmemset, .-wmemset
	.p2align 4
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB67:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [esp+20]
	mov	ebx, DWORD PTR [esp+24]
	mov	eax, DWORD PTR [esp+28]
	cmp	edx, ebx
	jnb	.L535
	test	eax, eax
	je	.L534
	.p2align 4
	.p2align 4
	.p2align 3
.L537:
	movzx	ecx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [ebx-1+eax], cl
	sub	eax, 1
	jne	.L537
.L534:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L535:
	.cfi_restore_state
	je	.L534
	test	eax, eax
	je	.L534
	lea	ecx, [eax-1]
	cmp	ecx, 3
	jbe	.L568
	mov	ecx, ebx
	or	ecx, edx
	and	ecx, 3
	lea	ecx, [edx+1]
	jne	.L538
	mov	esi, ebx
	sub	esi, ecx
	cmp	esi, 2
	jbe	.L538
	mov	edi, eax
	mov	ecx, ebx
	and	edi, -4
	lea	esi, [edx+edi]
	.p2align 4
	.p2align 4
	.p2align 3
.L539:
	mov	ebp, DWORD PTR [edx]
	add	edx, 4
	add	ecx, 4
	mov	DWORD PTR [ecx-4], ebp
	cmp	edx, esi
	jne	.L539
	mov	ecx, eax
	add	ebx, edi
	sub	ecx, edi
	cmp	eax, edi
	je	.L534
	movzx	eax, BYTE PTR [edx]
	mov	BYTE PTR [ebx], al
	cmp	ecx, 1
	je	.L534
	movzx	eax, BYTE PTR [edx+1]
	mov	BYTE PTR [ebx+1], al
	cmp	ecx, 2
	je	.L534
	movzx	eax, BYTE PTR [edx+2]
	mov	BYTE PTR [ebx+2], al
	jmp	.L534
.L568:
	lea	ecx, [edx+1]
.L538:
	add	edx, eax
	jmp	.L542
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L569:
	add	ecx, 1
.L542:
	movzx	eax, BYTE PTR [ecx-1]
	add	ebx, 1
	mov	BYTE PTR [ebx-1], al
	cmp	edx, ecx
	jne	.L569
	jmp	.L534
	.cfi_endproc
.LFE67:
	.size	bcopy, .-bcopy
	.p2align 4
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
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+20]
	mov	esi, eax
	mov	edi, edx
	shld	edi, esi, cl
	sal	esi, cl
	test	cl, 32
	je	.L572
	mov	edi, esi
	xor	esi, esi
.L572:
	neg	ecx
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	.L573
	mov	eax, edx
	xor	edx, edx
.L573:
	or	eax, esi
	or	edx, edi
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
	.p2align 4
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
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+20]
	mov	esi, eax
	mov	edi, edx
	shrd	esi, edi, cl
	shr	edi, cl
	test	cl, 32
	je	.L576
	mov	esi, edi
	xor	edi, edi
.L576:
	neg	ecx
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	.L577
	mov	edx, eax
	xor	eax, eax
.L577:
	or	eax, esi
	or	edx, edi
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
	.p2align 4
	.globl	rotl32
	.type	rotl32, @function
rotl32:
.LFB70:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	rol	eax, cl
	ret
	.cfi_endproc
.LFE70:
	.size	rotl32, .-rotl32
	.p2align 4
	.globl	rotr32
	.type	rotr32, @function
rotr32:
.LFB71:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	ror	eax, cl
	ret
	.cfi_endproc
.LFE71:
	.size	rotr32, .-rotr32
	.p2align 4
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB158:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	rol	eax, cl
	ret
	.cfi_endproc
.LFE158:
	.size	rotl_sz, .-rotl_sz
	.p2align 4
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB160:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	ror	eax, cl
	ret
	.cfi_endproc
.LFE160:
	.size	rotr_sz, .-rotr_sz
	.p2align 4
	.globl	rotl16
	.type	rotl16, @function
rotl16:
.LFB74:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [esp+4]
	rol	ax, cl
	ret
	.cfi_endproc
.LFE74:
	.size	rotl16, .-rotl16
	.p2align 4
	.globl	rotr16
	.type	rotr16, @function
rotr16:
.LFB75:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	movzx	eax, WORD PTR [esp+4]
	ror	ax, cl
	ret
	.cfi_endproc
.LFE75:
	.size	rotr16, .-rotr16
	.p2align 4
	.globl	rotl8
	.type	rotl8, @function
rotl8:
.LFB76:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [esp+4]
	rol	al, cl
	ret
	.cfi_endproc
.LFE76:
	.size	rotl8, .-rotl8
	.p2align 4
	.globl	rotr8
	.type	rotr8, @function
rotr8:
.LFB77:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+8]
	movzx	eax, BYTE PTR [esp+4]
	ror	al, cl
	ret
	.cfi_endproc
.LFE77:
	.size	rotr8, .-rotr8
	.p2align 4
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB78:
	.cfi_startproc
	movzx	eax, WORD PTR [esp+4]
	rol	ax, 8
	ret
	.cfi_endproc
.LFE78:
	.size	bswap_16, .-bswap_16
	.p2align 4
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB79:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	xchg	al, ah
	rol	eax, 16
	xchg	al, ah
	ret
	.cfi_endproc
.LFE79:
	.size	bswap_32, .-bswap_32
	.p2align 4
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB80:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp+8]
	xchg	dl, dh
	xchg	al, ah
	rol	edx, 16
	xchg	dl, dh
	rol	eax, 16
	xchg	al, ah
	ret
	.cfi_endproc
.LFE80:
	.size	bswap_64, .-bswap_64
	.p2align 4
	.globl	ffs
	.type	ffs, @function
ffs:
.LFB81:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	xor	ecx, ecx
	jmp	.L592
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L590:
	cmp	ecx, 32
	je	.L594
.L592:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L590
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L594:
	xor	eax, eax
	ret
	.cfi_endproc
.LFE81:
	.size	ffs, .-ffs
	.p2align 4
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB82:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	xor	edx, edx
	test	eax, eax
	je	.L595
	mov	edx, eax
	and	edx, 1
	jne	.L595
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L597:
	sar	eax
	add	edx, 1
	test	al, 1
	je	.L597
.L595:
	mov	eax, edx
	ret
	.cfi_endproc
.LFE82:
	.size	libiberty_ffs, .-libiberty_ffs
	.p2align 4
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB83:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	fld	DWORD PTR .LC2
	fcomp	st(1)
	fnstsw	ax
	sahf
	mov	eax, 1
	ja	.L605
	fcomp	DWORD PTR .LC3
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L602
	.p2align 4,,10
	.p2align 3
.L605:
	fstp	st(0)
.L602:
	ret
	.cfi_endproc
.LFE83:
	.size	gl_isinff, .-gl_isinff
	.p2align 4
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB84:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	fld	QWORD PTR .LC4
	fcomp	st(1)
	fnstsw	ax
	sahf
	mov	eax, 1
	ja	.L609
	fcomp	QWORD PTR .LC5
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L606
	.p2align 4,,10
	.p2align 3
.L609:
	fstp	st(0)
.L606:
	ret
	.cfi_endproc
.LFE84:
	.size	gl_isinfd, .-gl_isinfd
	.p2align 4
	.globl	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB85:
	.cfi_startproc
	fld	TBYTE PTR [esp+4]
	fld	TBYTE PTR .LC6
	fcomp	st(1)
	fnstsw	ax
	sahf
	mov	eax, 1
	ja	.L613
	fld	TBYTE PTR .LC7
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L610
	.p2align 4,,10
	.p2align 3
.L613:
	fstp	st(0)
.L610:
	ret
	.cfi_endproc
.LFE85:
	.size	gl_isinfl, .-gl_isinfl
	.p2align 4
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB86:
	.cfi_startproc
	fild	DWORD PTR [esp+8]
	mov	eax, DWORD PTR [esp+4]
	fstp	TBYTE PTR [eax]
	ret
	.cfi_endproc
.LFE86:
	.size	_Qp_itoq, .-_Qp_itoq
	.p2align 4
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB87:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L616
	fld	st(0)
	fadd	st, st(1)
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L623
	jne	.L623
	jmp	.L616
	.p2align 4,,10
	.p2align 3
.L631:
	fstp	st(0)
.L616:
	ret
	.p2align 4,,10
	.p2align 3
.L623:
	fld	DWORD PTR .LC8
	test	edx, edx
	jns	.L618
	fstp	st(0)
	fld	DWORD PTR .LC9
.L618:
	test	dl, 1
	je	.L619
	.p2align 4
	.p2align 3
.L620:
	fmul	st(1), st
.L619:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L631
	fmul	st, st(0)
	test	dl, 1
	jne	.L620
.L630:
	mov	eax, edx
	fmul	st, st(0)
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L620
	jmp	.L630
	.cfi_endproc
.LFE87:
	.size	ldexpf, .-ldexpf
	.p2align 4
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB88:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+12]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L633
	fld	st(0)
	fadd	st, st(1)
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L640
	jne	.L640
	jmp	.L633
	.p2align 4,,10
	.p2align 3
.L649:
	fstp	st(0)
.L633:
	ret
	.p2align 4,,10
	.p2align 3
.L640:
	test	edx, edx
	js	.L647
	fld	DWORD PTR .LC8
.L635:
	test	dl, 1
	je	.L636
	.p2align 4
	.p2align 3
.L637:
	fmul	st(1), st
.L636:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L649
	fmul	st, st(0)
	test	dl, 1
	jne	.L637
.L648:
	mov	eax, edx
	fmul	st, st(0)
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L637
	jmp	.L648
	.p2align 4,,10
	.p2align 3
.L647:
	fld	DWORD PTR .LC9
	jmp	.L635
	.cfi_endproc
.LFE88:
	.size	ldexp, .-ldexp
	.p2align 4
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB89:
	.cfi_startproc
	fld	TBYTE PTR [esp+4]
	mov	edx, DWORD PTR [esp+16]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L651
	fld	st(0)
	fadd	st, st(1)
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L658
	jne	.L658
	jmp	.L651
	.p2align 4,,10
	.p2align 3
.L667:
	fstp	st(0)
.L651:
	ret
	.p2align 4,,10
	.p2align 3
.L658:
	test	edx, edx
	js	.L665
	fld	DWORD PTR .LC8
.L653:
	test	dl, 1
	je	.L654
	.p2align 4
	.p2align 3
.L655:
	fmul	st(1), st
.L654:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L667
	fmul	st, st(0)
	test	dl, 1
	jne	.L655
.L666:
	mov	eax, edx
	fmul	st, st(0)
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L655
	jmp	.L666
	.p2align 4,,10
	.p2align 3
.L665:
	fld	DWORD PTR .LC9
	jmp	.L653
	.cfi_endproc
.LFE89:
	.size	ldexpl, .-ldexpl
	.p2align 4
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	ecx, DWORD PTR [esp+28]
	mov	ebx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+24]
	test	ecx, ecx
	je	.L669
	lea	edx, [ecx-1]
	cmp	edx, 2
	jbe	.L670
	mov	edx, ebx
	or	edx, eax
	and	edx, 3
	jne	.L670
	mov	edi, ecx
	mov	esi, ebx
	and	edi, -4
	lea	edx, [eax+edi]
	.p2align 4
	.p2align 4
	.p2align 3
.L671:
	mov	ebp, DWORD PTR [eax]
	add	eax, 4
	xor	DWORD PTR [esi], ebp
	add	esi, 4
	cmp	edx, eax
	jne	.L671
	mov	esi, ecx
	lea	eax, [ebx+edi]
	sub	esi, edi
	cmp	ecx, edi
	je	.L669
	movzx	ecx, BYTE PTR [edx]
	xor	BYTE PTR [eax], cl
	cmp	esi, 1
	je	.L669
	movzx	ecx, BYTE PTR [edx+1]
	xor	BYTE PTR [eax+1], cl
	cmp	esi, 2
	je	.L669
	movzx	edx, BYTE PTR [edx+2]
	xor	BYTE PTR [eax+2], dl
.L669:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L670:
	.cfi_restore_state
	add	ecx, eax
	mov	esi, ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L673:
	add	eax, 1
	add	esi, 1
	movzx	edx, BYTE PTR [eax-1]
	xor	BYTE PTR [esi-1], dl
	cmp	ecx, eax
	jne	.L673
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE90:
	.size	memxor, .-memxor
	.p2align 4
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB91:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	esi, DWORD PTR [esp+12]
	mov	ecx, DWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+20]
	cmp	BYTE PTR [esi], 0
	mov	eax, esi
	je	.L688
	.p2align 3
	.p2align 4
	.p2align 3
.L689:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L689
.L688:
	test	edx, edx
	jne	.L690
	jmp	.L691
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L692:
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	je	.L691
.L690:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	jne	.L692
	mov	eax, esi
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L691:
	.cfi_restore_state
	mov	BYTE PTR [eax], 0
	mov	eax, esi
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE91:
	.size	strncat, .-strncat
	.p2align 4
	.globl	strnlen
	.type	strnlen, @function
strnlen:
.LFB92:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+4]
	xor	eax, eax
	test	edx, edx
	je	.L709
.L702:
	cmp	BYTE PTR [ecx+eax], 0
	jne	.L704
	ret
	.p2align 4,,10
	.p2align 3
.L704:
	add	eax, 1
	cmp	edx, eax
	jne	.L702
	ret
	.p2align 4,,10
	.p2align 3
.L709:
	ret
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.p2align 4
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	movzx	ecx, BYTE PTR [ebx]
	test	cl, cl
	je	.L715
.L711:
	mov	eax, esi
	jmp	.L714
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L713:
	add	eax, 1
	cmp	dl, cl
	je	.L712
.L714:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	jne	.L713
	movzx	ecx, BYTE PTR [ebx+1]
	add	ebx, 1
	test	cl, cl
	jne	.L711
.L715:
	xor	ebx, ebx
.L712:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE93:
	.size	strpbrk, .-strpbrk
	.p2align 4
	.globl	strrchr
	.type	strrchr, @function
strrchr:
.LFB94:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	xor	esi, esi
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [esp+12]
	mov	ebx, DWORD PTR [esp+16]
	.p2align 5
	.p2align 4
	.p2align 3
.L720:
	movsx	ecx, BYTE PTR [eax]
	mov	edx, ecx
	cmp	ebx, ecx
	jne	.L719
	mov	esi, eax
.L719:
	add	eax, 1
	test	dl, dl
	jne	.L720
	mov	eax, esi
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE94:
	.size	strrchr, .-strrchr
	.p2align 4
	.globl	strstr
	.type	strstr, @function
strstr:
.LFB95:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	ebp, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+20]
	movzx	ebx, BYTE PTR [ebp+0]
	test	bl, bl
	je	.L735
	mov	eax, ebp
	.p2align 3
	.p2align 4
	.p2align 3
.L725:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L725
	mov	ecx, edx
	sub	eax, ebp
	je	.L723
	lea	edi, [ebp-1+eax]
	jmp	.L732
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L747:
	add	edx, 1
	test	al, al
	je	.L746
.L732:
	movzx	eax, BYTE PTR [edx]
	cmp	al, bl
	jne	.L747
	mov	DWORD PTR [esp+24], ebp
	mov	eax, ebp
	mov	ecx, ebx
	mov	esi, edx
	mov	DWORD PTR [esp+20], edx
	mov	ebp, ebx
	jmp	.L727
	.p2align 4,,10
	.p2align 3
.L748:
	test	dl, dl
	setne	bl
	cmp	dl, cl
	sete	dl
	test	bl, dl
	je	.L728
	movzx	ecx, BYTE PTR [esi+1]
	add	esi, 1
	add	eax, 1
	test	cl, cl
	je	.L728
.L727:
	movzx	edx, BYTE PTR [eax]
	cmp	eax, edi
	jne	.L748
.L728:
	mov	ebx, ebp
	mov	edx, DWORD PTR [esp+20]
	mov	ebp, DWORD PTR [esp+24]
	cmp	cl, BYTE PTR [eax]
	je	.L735
	add	edx, 1
	jmp	.L732
	.p2align 4,,10
	.p2align 3
.L746:
	xor	ecx, ecx
.L723:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, ecx
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L735:
	.cfi_restore_state
	mov	ecx, edx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	mov	eax, ecx
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE95:
	.size	strstr, .-strstr
	.p2align 4
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	fld	QWORD PTR [esp+12]
	fldz
	fcom	st(2)
	fnstsw	ax
	sahf
	ja	.L759
	fxch	st(2)
	ftst
	fnstsw	ax
	sahf
	jbe	.L760
	fxch	st(2)
	fcompp
	fnstsw	ax
	sahf
	ja	.L752
	jmp	.L753
	.p2align 4,,10
	.p2align 3
.L760:
	fstp	st(1)
	fstp	st(1)
.L753:
	ret
	.p2align 4,,10
	.p2align 3
.L759:
	fstp	st(0)
	ftst
	fnstsw	ax
	fstp	st(0)
	sahf
	jbe	.L753
.L752:
	fchs
	ret
	.cfi_endproc
.LFE96:
	.size	copysign, .-copysign
	.p2align 4
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	eax, DWORD PTR [esp+32]
	mov	esi, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+28]
	mov	edx, DWORD PTR [esp+20]
	test	eax, eax
	je	.L761
	cmp	esi, DWORD PTR [esp+32]
	jb	.L772
	sub	esi, DWORD PTR [esp+32]
	add	esi, edx
	jc	.L772
	movzx	ebp, BYTE PTR [edi]
	jmp	.L767
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L771:
	mov	edx, ebx
.L763:
	cmp	esi, edx
	jb	.L772
.L767:
	lea	ebx, [edx+1]
	mov	eax, ebp
	cmp	BYTE PTR [edx], al
	jne	.L771
	cmp	DWORD PTR [esp+32], 1
	je	.L761
.L766:
	mov	eax, 1
	jmp	.L764
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L765:
	add	eax, 1
	cmp	eax, DWORD PTR [esp+32]
	je	.L761
.L764:
	movzx	ecx, BYTE PTR [edi+eax]
	cmp	BYTE PTR [edx+eax], cl
	je	.L765
	cmp	esi, ebx
	jb	.L772
	lea	edx, [ebx+1]
	mov	eax, ebp
	cmp	al, BYTE PTR [ebx]
	jne	.L763
	mov	eax, ebx
	mov	ebx, edx
	mov	edx, eax
	jmp	.L766
	.p2align 4,,10
	.p2align 3
.L772:
	xor	edx, edx
.L761:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, edx
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE97:
	.size	memmem, .-memmem
	.p2align 4
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB98:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	sub	esp, 4
	.cfi_def_cfa_offset 16
	mov	esi, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+16]
	test	esi, esi
	je	.L781
	sub	esp, 4
	.cfi_def_cfa_offset 20
	push	esi
	.cfi_def_cfa_offset 24
	push	DWORD PTR [esp+28]
	.cfi_def_cfa_offset 28
	push	ebx
	.cfi_def_cfa_offset 32
	call	memmove
	add	esp, 16
	.cfi_def_cfa_offset 16
.L781:
	add	esp, 4
	.cfi_def_cfa_offset 12
	lea	eax, [ebx+esi]
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE98:
	.size	mempcpy, .-mempcpy
	.p2align 4
	.globl	frexp
	.type	frexp, @function
frexp:
.LFB99:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	fldz
	fcom	st(1)
	fnstsw	ax
	sahf
	ja	.L810
	fld1
	fxch	st(2)
	xor	ecx, ecx
	fcom	st(2)
	fnstsw	ax
	fstp	st(2)
	sahf
	jb	.L811
	fstp	st(0)
.L789:
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L796:
	fmul	DWORD PTR .LC9
	add	edx, 1
	fld1
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jnb	.L796
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], edx
	test	ecx, ecx
	je	.L786
.L813:
	fchs
.L786:
	ret
	.p2align 4,,10
	.p2align 3
.L811:
	fld	DWORD PTR .LC9
	fcomp	st(2)
	fnstsw	ax
	sahf
	jbe	.L814
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L802
	jne	.L802
	jmp	.L792
	.p2align 4,,10
	.p2align 3
.L814:
	fstp	st(0)
	jmp	.L792
	.p2align 4,,10
	.p2align 3
.L815:
	fstp	st(0)
.L792:
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], 0
	ret
	.p2align 4,,10
	.p2align 3
.L810:
	fstp	st(0)
	fld	st(0)
	fchs
	fld1
	fchs
	fcomp	st(2)
	fnstsw	ax
	sahf
	jb	.L812
	fstp	st(1)
	mov	ecx, 1
	jmp	.L789
	.p2align 4,,10
	.p2align 3
.L812:
	fld	DWORD PTR .LC11
	fxch	st(2)
	fcom	st(2)
	fnstsw	ax
	fstp	st(2)
	sahf
	jbe	.L815
	fstp	st(1)
	mov	ecx, 1
.L790:
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L798:
	fadd	st, st(0)
	fld	DWORD PTR .LC9
	sub	edx, 1
	fcomp	st(1)
	fnstsw	ax
	sahf
	ja	.L798
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [eax], edx
	test	ecx, ecx
	jne	.L813
	ret
.L802:
	xor	ecx, ecx
	jmp	.L790
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.p2align 4
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
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
	sub	esp, 8
	.cfi_def_cfa_offset 24
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], 0
	mov	esi, DWORD PTR [esp+32]
	mov	edi, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], 0
	mov	ecx, eax
	or	ecx, edx
	je	.L816
	.p2align 6
	.p2align 4
	.p2align 3
.L818:
	mov	ecx, eax
	and	ecx, 1
	neg	ecx
	sbb	ebx, ebx
	and	ecx, esi
	and	ebx, edi
	add	DWORD PTR [esp], ecx
	adc	DWORD PTR [esp+4], ebx
	add	esi, esi
	adc	edi, edi
	shrd	eax, edx, 1
	mov	ecx, eax
	shr	edx
	or	ecx, edx
	jne	.L818
.L816:
	mov	eax, DWORD PTR [esp]
	mov	edx, DWORD PTR [esp+4]
	add	esp, 8
	.cfi_def_cfa_offset 16
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
.LFE100:
	.size	__muldi3, .-__muldi3
	.p2align 4
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB101:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, 1
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, ecx
	jb	.L823
	jmp	.L824
	.p2align 4,,10
	.p2align 3
.L826:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	.L825
	test	edx, edx
	je	.L825
.L823:
	test	eax, eax
	jns	.L826
.L824:
	xor	ebx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
.L829:
	cmp	ecx, eax
	jb	.L828
	sub	ecx, eax
	or	ebx, edx
.L828:
	shr	eax
	shr	edx
	jne	.L829
.L827:
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	je	.L822
	mov	ebx, ecx
.L822:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L825:
	.cfi_restore_state
	xor	ebx, ebx
	test	edx, edx
	jne	.L824
	jmp	.L827
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.p2align 4
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	mov	ebx, 7
	mov	ecx, edx
	sar	cl, 7
	mov	eax, ecx
	xor	eax, edx
	cmp	dl, cl
	je	.L844
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	ebx, [eax-1]
.L844:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE102:
	.size	__clrsbqi2, .-__clrsbqi2
	.p2align 4
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB103:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, 63
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [esp+24]
	sar	edx, 31
	mov	eax, edx
	mov	ebx, edx
	mov	edx, DWORD PTR [esp+24]
	mov	ecx, eax
	mov	eax, DWORD PTR [esp+20]
	xor	edx, ebx
	xor	eax, ecx
	mov	edi, edx
	mov	edx, DWORD PTR [esp+24]
	mov	esi, eax
	mov	eax, DWORD PTR [esp+20]
	xor	edx, ebx
	xor	eax, ecx
	or	eax, edx
	je	.L849
	test	edi, edi
	je	.L851
	bsr	esi, edi
	xor	esi, 31
.L852:
	lea	ebp, [esi-1]
.L849:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, ebp
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L851:
	.cfi_restore_state
	bsr	esi, esi
	xor	esi, 31
	add	esi, 32
	jmp	.L852
	.cfi_endproc
.LFE103:
	.size	__clrsbdi2, .-__clrsbdi2
	.p2align 4
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB104:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	xor	ebx, ebx
	mov	ecx, DWORD PTR [esp+12]
	test	edx, edx
	je	.L856
	.p2align 5
	.p2align 4
	.p2align 3
.L858:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L858
.L856:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE104:
	.size	__mulsi3, .-__mulsi3
	.p2align 4
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
.LFB105:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 12
	.cfi_def_cfa_offset 32
	mov	ebp, DWORD PTR [esp+40]
	mov	esi, DWORD PTR [esp+32]
	mov	ecx, DWORD PTR [esp+36]
	mov	edi, ebp
	mov	ebx, ebp
	shr	edi, 3
	and	ebx, -8
	cmp	esi, ecx
	jb	.L866
	lea	eax, [ecx+ebp]
	cmp	eax, esi
	jnb	.L890
.L866:
	test	edi, edi
	je	.L865
	mov	DWORD PTR [esp], ebx
	mov	eax, ecx
	mov	edx, esi
	lea	edi, [ecx+edi*8]
	mov	DWORD PTR [esp+36], ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L869:
	mov	ecx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+4]
	add	eax, 8
	add	edx, 8
	mov	DWORD PTR [edx-8], ecx
	mov	DWORD PTR [edx-4], ebx
	cmp	eax, edi
	jne	.L869
	mov	ebx, DWORD PTR [esp]
	mov	ecx, DWORD PTR [esp+36]
.L865:
	cmp	ebx, ebp
	jnb	.L862
	mov	eax, ebp
	lea	edx, [esi+ebx]
	sub	eax, ebx
	mov	DWORD PTR [esp+4], eax
	sub	eax, 1
	cmp	eax, 3
	lea	eax, [ecx+ebx]
	mov	DWORD PTR [esp], eax
	jbe	.L870
	lea	edi, [ecx+1+ebx]
	mov	eax, edx
	sub	eax, edi
	cmp	eax, 2
	jbe	.L870
	mov	eax, DWORD PTR [esp]
	or	eax, edx
	mov	edi, eax
	and	edi, 3
	jne	.L870
	mov	edi, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp]
	mov	DWORD PTR [esp+36], ecx
	and	edi, -4
	mov	DWORD PTR [esp], edi
	add	edi, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L871:
	mov	ecx, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	cmp	eax, edi
	jne	.L871
	mov	eax, DWORD PTR [esp]
	mov	ecx, DWORD PTR [esp+36]
	add	ebx, eax
	cmp	DWORD PTR [esp+4], eax
	je	.L862
	movzx	eax, BYTE PTR [ecx+ebx]
	mov	BYTE PTR [esi+ebx], al
	lea	eax, [ebx+1]
	cmp	eax, ebp
	jnb	.L862
	movzx	eax, BYTE PTR [ecx+1+ebx]
	mov	BYTE PTR [esi+1+ebx], al
	lea	eax, [ebx+2]
	cmp	eax, ebp
	jnb	.L862
	movzx	eax, BYTE PTR [ecx+2+ebx]
	mov	BYTE PTR [esi+2+ebx], al
.L862:
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L890:
	.cfi_restore_state
	lea	eax, [ebp-1]
	test	ebp, ebp
	je	.L862
	.p2align 4
	.p2align 4
	.p2align 3
.L867:
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [esi+eax], dl
	sub	eax, 1
	jnb	.L867
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L870:
	.cfi_restore_state
	mov	eax, DWORD PTR [esp]
	add	ecx, ebp
	.p2align 4
	.p2align 4
	.p2align 3
.L873:
	movzx	ebx, BYTE PTR [eax]
	add	eax, 1
	add	edx, 1
	mov	BYTE PTR [edx-1], bl
	cmp	eax, ecx
	jne	.L873
	add	esp, 12
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE105:
	.size	__cmovd, .-__cmovd
	.p2align 4
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB106:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 4
	.cfi_def_cfa_offset 24
	mov	edi, DWORD PTR [esp+32]
	mov	ebx, DWORD PTR [esp+24]
	mov	ecx, DWORD PTR [esp+28]
	mov	ebp, edi
	shr	ebp
	cmp	ebx, ecx
	jb	.L895
	lea	eax, [ecx+edi]
	cmp	eax, ebx
	jnb	.L919
.L895:
	test	ebp, ebp
	je	.L894
	lea	eax, [ebp-1]
	cmp	eax, 3
	jbe	.L898
	mov	eax, ecx
	or	eax, ebx
	test	al, 3
	jne	.L898
	lea	eax, [ecx+2]
	cmp	ebx, eax
	je	.L898
	mov	eax, edi
	mov	esi, edi
	mov	DWORD PTR [esp+28], ecx
	mov	edx, ebx
	shr	eax, 2
	and	esi, -4
	mov	DWORD PTR [esp], eax
	add	esi, ecx
	mov	eax, ecx
	.p2align 4
	.p2align 4
	.p2align 3
.L899:
	mov	ecx, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	cmp	eax, esi
	jne	.L899
	mov	esi, DWORD PTR [esp]
	mov	ecx, DWORD PTR [esp+28]
	lea	eax, [esi+esi]
	cmp	ebp, eax
	je	.L894
	movzx	eax, WORD PTR [ecx+esi*4]
	mov	WORD PTR [ebx+esi*4], ax
.L894:
	test	edi, 1
	je	.L891
.L920:
	movzx	eax, BYTE PTR [ecx-1+edi]
	mov	BYTE PTR [ebx-1+edi], al
.L891:
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L919:
	.cfi_restore_state
	lea	eax, [edi-1]
	test	edi, edi
	je	.L891
	.p2align 4
	.p2align 4
	.p2align 3
.L896:
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [ebx+eax], dl
	sub	eax, 1
	jnb	.L896
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L898:
	.cfi_restore_state
	mov	eax, ecx
	mov	edx, ebx
	lea	ebp, [ecx+ebp*2]
	.p2align 5
	.p2align 4
	.p2align 3
.L901:
	movzx	esi, WORD PTR [eax]
	add	eax, 2
	add	edx, 2
	mov	WORD PTR [edx-2], si
	cmp	ebp, eax
	jne	.L901
	test	edi, 1
	je	.L891
	jmp	.L920
	.cfi_endproc
.LFE106:
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB107:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	sub	esp, 4
	.cfi_def_cfa_offset 24
	mov	edi, DWORD PTR [esp+32]
	mov	ebx, DWORD PTR [esp+32]
	mov	esi, DWORD PTR [esp+24]
	mov	ecx, DWORD PTR [esp+28]
	shr	edi, 2
	and	ebx, -4
	cmp	esi, ecx
	jb	.L925
	mov	eax, DWORD PTR [esp+32]
	add	eax, ecx
	cmp	eax, esi
	jnb	.L953
.L925:
	test	edi, edi
	je	.L954
	mov	eax, ecx
	mov	edx, esi
	lea	edi, [ecx+edi*4]
	.p2align 4
	.p2align 4
	.p2align 3
.L928:
	mov	ebp, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], ebp
	cmp	eax, edi
	jne	.L928
	cmp	ebx, DWORD PTR [esp+32]
	jnb	.L921
	mov	eax, DWORD PTR [esp+32]
	lea	edx, [esi+ebx]
	sub	eax, ebx
	mov	DWORD PTR [esp], eax
	sub	eax, 1
	cmp	eax, 3
	lea	eax, [ecx+ebx]
	jbe	.L930
	lea	ebp, [ecx+1+ebx]
	mov	edi, edx
	sub	edi, ebp
	cmp	edi, 2
	jbe	.L930
	mov	edi, eax
	or	edi, edx
	and	edi, 3
	jne	.L930
	mov	ebp, DWORD PTR [esp]
	mov	DWORD PTR [esp+28], ecx
	and	ebp, -4
	lea	edi, [eax+ebp]
	.p2align 4
	.p2align 4
	.p2align 3
.L931:
	mov	ecx, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	cmp	eax, edi
	jne	.L931
	mov	ecx, DWORD PTR [esp+28]
	add	ebx, ebp
	cmp	DWORD PTR [esp], ebp
	je	.L921
	movzx	eax, BYTE PTR [ecx+ebx]
	mov	BYTE PTR [esi+ebx], al
	lea	eax, [ebx+1]
	cmp	eax, DWORD PTR [esp+32]
	jnb	.L921
	movzx	eax, BYTE PTR [ecx+1+ebx]
	mov	BYTE PTR [esi+1+ebx], al
	lea	eax, [ebx+2]
	cmp	eax, DWORD PTR [esp+32]
	jnb	.L921
	movzx	eax, BYTE PTR [ecx+2+ebx]
	mov	BYTE PTR [esi+2+ebx], al
.L921:
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L953:
	.cfi_restore_state
	mov	eax, DWORD PTR [esp+32]
	mov	edi, DWORD PTR [esp+32]
	sub	eax, 1
	test	edi, edi
	je	.L921
	.p2align 4
	.p2align 4
	.p2align 3
.L926:
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [esi+eax], dl
	sub	eax, 1
	jnb	.L926
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L954:
	.cfi_restore_state
	lea	edx, [esi+ebx]
	lea	eax, [ecx+ebx]
	mov	ebx, DWORD PTR [esp+32]
	test	ebx, ebx
	je	.L921
.L930:
	add	ecx, DWORD PTR [esp+32]
	.p2align 4
	.p2align 4
	.p2align 3
.L933:
	movzx	ebx, BYTE PTR [eax]
	add	eax, 1
	add	edx, 1
	mov	BYTE PTR [edx-1], bl
	cmp	eax, ecx
	jne	.L933
	add	esp, 4
	.cfi_def_cfa_offset 20
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE107:
	.size	__cmovw, .-__cmovw
	.p2align 4
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
	.p2align 4
	.globl	__uitod
	.type	__uitod, @function
__uitod:
.LFB109:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	xor	edx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	fild	QWORD PTR [esp]
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE109:
	.size	__uitod, .-__uitod
	.p2align 4
	.globl	__uitof
	.type	__uitof, @function
__uitof:
.LFB110:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	xor	edx, edx
	mov	eax, DWORD PTR [esp+16]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	fild	QWORD PTR [esp]
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE110:
	.size	__uitof, .-__uitof
	.p2align 4
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
.LFB111:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+20]
	fild	QWORD PTR [esp+16]
	test	eax, eax
	jns	.L961
	fadd	DWORD PTR .LC13
.L961:
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE111:
	.size	__ulltod, .-__ulltod
	.p2align 4
	.globl	__ulltof
	.type	__ulltof, @function
__ulltof:
.LFB112:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [esp+20]
	fild	QWORD PTR [esp+16]
	test	eax, eax
	jns	.L964
	fadd	DWORD PTR .LC13
.L964:
	fstp	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+4]
	add	esp, 12
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE112:
	.size	__ulltof, .-__ulltof
	.p2align 4
	.globl	__umodi
	.type	__umodi, @function
__umodi:
.LFB113:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	xor	edx, edx
	div	DWORD PTR [esp+8]
	mov	eax, edx
	ret
	.cfi_endproc
.LFE113:
	.size	__umodi, .-__umodi
	.p2align 4
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB114:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+4]
	movzx	edx, cx
	test	ch, -128
	jne	.L970
	mov	eax, edx
	sar	eax, 14
	jne	.L967
	mov	eax, edx
	shr	eax, 13
	jne	.L971
	mov	eax, edx
	shr	eax, 12
	jne	.L972
	mov	eax, edx
	shr	eax, 11
	jne	.L973
	mov	eax, edx
	shr	eax, 10
	jne	.L974
	mov	eax, edx
	shr	eax, 9
	jne	.L975
	mov	eax, edx
	shr	eax, 8
	jne	.L976
	mov	eax, edx
	shr	eax, 7
	jne	.L977
	mov	eax, edx
	shr	eax, 6
	jne	.L978
	mov	eax, edx
	shr	eax, 5
	jne	.L979
	mov	eax, edx
	shr	eax, 4
	jne	.L980
	mov	eax, edx
	shr	eax, 3
	jne	.L981
	mov	eax, edx
	shr	eax, 2
	jne	.L982
	shr	edx
	jne	.L983
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	ret
.L983:
	mov	eax, 14
.L967:
	ret
.L970:
	xor	eax, eax
	ret
.L981:
	mov	eax, 12
	ret
.L971:
	mov	eax, 2
	ret
.L972:
	mov	eax, 3
	ret
.L973:
	mov	eax, 4
	ret
.L974:
	mov	eax, 5
	ret
.L975:
	mov	eax, 6
	ret
.L976:
	mov	eax, 7
	ret
.L977:
	mov	eax, 8
	ret
.L978:
	mov	eax, 9
	ret
.L979:
	mov	eax, 10
	ret
.L980:
	mov	eax, 11
	ret
.L982:
	mov	eax, 13
	ret
	.cfi_endproc
.LFE114:
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB115:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	test	al, 1
	jne	.L988
	test	al, 2
	jne	.L989
	test	al, 4
	jne	.L990
	test	al, 8
	jne	.L991
	test	al, 16
	jne	.L992
	test	al, 32
	jne	.L993
	test	al, 64
	jne	.L994
	test	al, -128
	jne	.L995
	test	ah, 1
	jne	.L996
	test	ah, 2
	jne	.L997
	test	ah, 4
	jne	.L998
	test	ah, 8
	jne	.L999
	test	ah, 16
	jne	.L1000
	test	ah, 32
	jne	.L1001
	test	ah, 64
	jne	.L1002
	test	ah, -128
	sete	al
	movzx	eax, al
	add	eax, 15
	ret
.L988:
	xor	eax, eax
	ret
.L989:
	mov	eax, 1
	ret
.L1000:
	mov	eax, 12
	ret
.L990:
	mov	eax, 2
	ret
.L991:
	mov	eax, 3
	ret
.L992:
	mov	eax, 4
	ret
.L993:
	mov	eax, 5
	ret
.L994:
	mov	eax, 6
	ret
.L995:
	mov	eax, 7
	ret
.L996:
	mov	eax, 8
	ret
.L997:
	mov	eax, 9
	ret
.L998:
	mov	eax, 10
	ret
.L999:
	mov	eax, 11
	ret
.L1001:
	mov	eax, 13
	ret
.L1002:
	mov	eax, 14
	ret
	.cfi_endproc
.LFE115:
	.size	__ctzhi2, .-__ctzhi2
	.p2align 4
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB116:
	.cfi_startproc
	sub	esp, 8
	.cfi_def_cfa_offset 12
	fld	DWORD PTR [esp+12]
	fcom	DWORD PTR .LC14
	fnstsw	ax
	sahf
	jnb	.L1012
	fnstcw	WORD PTR [esp+6]
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
	add	esp, 8
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1012:
	.cfi_restore_state
	fnstcw	WORD PTR [esp+6]
	fsub	DWORD PTR .LC14
	movzx	eax, WORD PTR [esp+6]
	or	ah, 12
	mov	WORD PTR [esp+4], ax
	fldcw	WORD PTR [esp+4]
	fistp	DWORD PTR [esp]
	fldcw	WORD PTR [esp+6]
	mov	eax, DWORD PTR [esp]
	add	esp, 8
	.cfi_def_cfa_offset 4
	add	eax, 32768
	ret
	.cfi_endproc
.LFE116:
	.size	__fixunssfsi, .-__fixunssfsi
	.p2align 4
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB117:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+4]
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
	.cfi_endproc
.LFE117:
	.size	__parityhi2, .-__parityhi2
	.p2align 4
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB118:
	.cfi_startproc
	mov	ecx, DWORD PTR [esp+4]
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
	.cfi_endproc
.LFE118:
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB166:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	edx, DWORD PTR [esp+8]
	xor	ebx, ebx
	mov	ecx, DWORD PTR [esp+12]
	test	edx, edx
	je	.L1015
	.p2align 5
	.p2align 4
	.p2align 3
.L1017:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1017
.L1015:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE166:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	xor	ebx, ebx
	mov	edx, DWORD PTR [esp+12]
	test	ecx, ecx
	je	.L1021
	test	edx, edx
	je	.L1021
	.p2align 5
	.p2align 4
	.p2align 3
.L1023:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1023
.L1021:
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.p2align 4
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB162:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, 1
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, ecx
	jb	.L1030
	jmp	.L1031
	.p2align 4,,10
	.p2align 3
.L1033:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	.L1032
	test	edx, edx
	je	.L1032
.L1030:
	test	eax, eax
	jns	.L1033
.L1031:
	xor	ebx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
.L1036:
	cmp	ecx, eax
	jb	.L1035
	sub	ecx, eax
	or	ebx, edx
.L1035:
	shr	eax
	shr	edx
	jne	.L1036
.L1034:
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	je	.L1029
	mov	ebx, ecx
.L1029:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1032:
	.cfi_restore_state
	xor	ebx, ebx
	test	edx, edx
	jne	.L1031
	jmp	.L1034
	.cfi_endproc
.LFE162:
	.size	__udivmodsi4, .-__udivmodsi4
	.p2align 4
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	fld	DWORD PTR [esp+8]
	fcom	st(1)
	fnstsw	ax
	sahf
	mov	eax, -1
	ja	.L1054
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L1051
	.p2align 4,,10
	.p2align 3
.L1054:
	fstp	st(0)
	fstp	st(0)
.L1051:
	ret
	.cfi_endproc
.LFE122:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.p2align 4
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB123:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	fld	QWORD PTR [esp+12]
	fcom	st(1)
	fnstsw	ax
	sahf
	mov	eax, -1
	ja	.L1058
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L1055
	.p2align 4,,10
	.p2align 3
.L1058:
	fstp	st(0)
	fstp	st(0)
.L1055:
	ret
	.cfi_endproc
.LFE123:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.p2align 4
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB124:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	imul	DWORD PTR [esp+8]
	ret
	.cfi_endproc
.LFE124:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.p2align 4
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB125:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mul	DWORD PTR [esp+8]
	ret
	.cfi_endproc
.LFE125:
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.p2align 4
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB126:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [esp+24]
	test	edx, edx
	js	.L1072
	je	.L1066
	xor	edi, edi
.L1063:
	mov	ebx, 1
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
.L1065:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, DWORD PTR [esp+20]
	sal	DWORD PTR [esp+20]
	add	esi, eax
	sar	edx
	setne	al
	cmp	bl, 32
	mov	ebp, eax
	setne	al
	add	ebx, 1
	mov	ecx, ebp
	test	cl, al
	jne	.L1065
	test	edi, edi
	je	.L1061
	neg	esi
.L1061:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1072:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	.L1063
	.p2align 4,,10
	.p2align 3
.L1066:
	xor	esi, esi
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE126:
	.size	__mulhi3, .-__mulhi3
	.p2align 4
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	mov	ecx, 1
	xor	esi, esi
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	test	eax, eax
	jns	.L1074
	neg	eax
	xor	ecx, ecx
	mov	esi, 1
.L1074:
	test	edx, edx
	jns	.L1075
	neg	edx
	mov	esi, ecx
.L1075:
	mov	ebx, eax
	mov	ecx, 1
	cmp	edx, eax
	jb	.L1076
	jmp	.L1077
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1098:
	test	ecx, ecx
	je	.L1095
.L1076:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jb	.L1098
	test	ecx, ecx
	je	.L1095
.L1077:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1082:
	cmp	ebx, edx
	jb	.L1081
	sub	ebx, edx
	or	eax, ecx
.L1081:
	shr	edx
	shr	ecx
	jne	.L1082
.L1078:
	test	esi, esi
	je	.L1073
	neg	eax
.L1073:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1095:
	.cfi_restore_state
	xor	eax, eax
	jmp	.L1078
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.p2align 4
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	xor	esi, esi
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+12]
	mov	edx, DWORD PTR [esp+16]
	test	ebx, ebx
	jns	.L1100
	neg	ebx
	mov	esi, 1
.L1100:
	mov	eax, edx
	mov	ecx, 1
	sar	eax, 31
	xor	edx, eax
	sub	edx, eax
	mov	eax, ebx
	cmp	edx, ebx
	jb	.L1101
	jmp	.L1107
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1123:
	test	ecx, ecx
	je	.L1120
.L1101:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, ebx
	jb	.L1123
	test	ecx, ecx
	je	.L1120
	.p2align 4
	.p2align 4
	.p2align 3
.L1107:
	cmp	eax, edx
	jb	.L1106
	sub	eax, edx
.L1106:
	shr	edx
	shr	ecx
	jne	.L1107
.L1103:
	test	esi, esi
	je	.L1099
	neg	eax
.L1099:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1120:
	.cfi_restore_state
	mov	eax, ebx
	jmp	.L1103
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.p2align 4
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ecx, 1
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	edi, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+24]
	mov	esi, edi
	mov	eax, edx
	cmp	dx, di
	jb	.L1125
	jmp	.L1181
	.p2align 4,,10
	.p2align 3
.L1128:
	lea	ebx, [eax+eax]
	lea	edx, [ecx+ecx]
	cmp	bx, si
	jnb	.L1127
	test	dx, dx
	je	.L1127
	mov	ecx, edx
	mov	eax, ebx
.L1125:
	test	ax, ax
	jns	.L1128
	xor	edx, edx
	cmp	di, ax
	jb	.L1151
	mov	esi, edi
	mov	edx, ecx
	sub	esi, eax
.L1151:
	mov	edi, eax
	mov	ebp, ecx
	shr	di
	shr	bp
	je	.L1168
.L1132:
	cmp	si, di
	jb	.L1133
	sub	esi, edi
	or	edx, ebp
.L1133:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 2
	shr	di, 2
	je	.L1168
	cmp	si, bx
	jb	.L1134
	sub	esi, ebx
	or	edx, edi
.L1134:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 3
	shr	di, 3
	je	.L1168
	cmp	si, bx
	jb	.L1135
	sub	esi, ebx
	or	edx, edi
.L1135:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 4
	shr	di, 4
	je	.L1168
	cmp	si, bx
	jb	.L1136
	sub	esi, ebx
	or	edx, edi
.L1136:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 5
	shr	di, 5
	je	.L1168
	cmp	si, bx
	jb	.L1137
	sub	esi, ebx
	or	edx, edi
.L1137:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 6
	shr	di, 6
	je	.L1168
	cmp	si, bx
	jb	.L1138
	sub	esi, ebx
	or	edx, edi
.L1138:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 7
	shr	di, 7
	je	.L1168
	cmp	si, bx
	jnb	.L1182
.L1139:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 8
	shr	di, 8
	je	.L1168
	cmp	si, bx
	jnb	.L1183
.L1140:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 9
	shr	di, 9
	je	.L1168
	cmp	si, bx
	jnb	.L1184
.L1141:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 10
	shr	di, 10
	je	.L1168
	cmp	si, bx
	jnb	.L1185
.L1142:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 11
	shr	di, 11
	je	.L1168
	cmp	si, bx
	jnb	.L1186
.L1143:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 12
	shr	di, 12
	je	.L1168
	cmp	si, bx
	jb	.L1144
	sub	esi, ebx
	or	edx, edi
.L1144:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 13
	shr	di, 13
	je	.L1168
	cmp	si, bx
	jb	.L1145
	sub	esi, ebx
	or	edx, edi
.L1145:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 14
	shr	di, 14
	je	.L1168
	cmp	si, bx
	jb	.L1146
	sub	esi, ebx
	or	edx, edi
.L1146:
	shr	ax, 15
	test	cx, cx
	jns	.L1168
	xor	ebp, ebp
	cmp	si, ax
	jb	.L1130
	sub	esi, eax
	or	edx, 1
	mov	ebp, esi
	jmp	.L1130
	.p2align 4,,10
	.p2align 3
.L1168:
	mov	ebp, esi
.L1130:
	mov	eax, DWORD PTR [esp+28]
	test	eax, eax
	jne	.L1124
	mov	ebp, edx
.L1124:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	mov	eax, ebp
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1127:
	.cfi_restore_state
	mov	ebp, edi
	test	dx, dx
	je	.L1130
	cmp	di, bx
	jb	.L1131
	mov	esi, edi
	and	cx, 32767
	and	ax, 32767
	mov	ebp, ecx
	mov	edi, eax
	sub	esi, ebx
	mov	eax, ebx
	mov	ecx, edx
	jmp	.L1132
	.p2align 4,,10
	.p2align 3
.L1182:
	sub	esi, ebx
	or	edx, edi
	jmp	.L1139
	.p2align 4,,10
	.p2align 3
.L1131:
	and	cx, 32767
	and	ax, 32767
	mov	ebp, ecx
	mov	edi, eax
	mov	ecx, edx
	mov	eax, ebx
	xor	edx, edx
	jmp	.L1132
	.p2align 4,,10
	.p2align 3
.L1183:
	sub	esi, ebx
	or	edx, edi
	jmp	.L1140
	.p2align 4,,10
	.p2align 3
.L1184:
	sub	esi, ebx
	or	edx, edi
	jmp	.L1141
	.p2align 4,,10
	.p2align 3
.L1185:
	sub	esi, ebx
	or	edx, edi
	jmp	.L1142
	.p2align 4,,10
	.p2align 3
.L1186:
	sub	esi, ebx
	or	edx, edi
	jmp	.L1143
.L1181:
	jne	.L1153
	mov	edx, 1
	xor	ebp, ebp
	jmp	.L1130
.L1153:
	mov	ebp, edi
	xor	edx, edx
	jmp	.L1130
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB164:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	ecx, DWORD PTR [esp+8]
	mov	edx, 1
	mov	eax, DWORD PTR [esp+12]
	cmp	eax, ecx
	jb	.L1188
	jmp	.L1189
	.p2align 4,,10
	.p2align 3
.L1191:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	.L1190
	test	edx, edx
	je	.L1190
.L1188:
	test	eax, eax
	jns	.L1191
.L1189:
	xor	ebx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
.L1194:
	cmp	ecx, eax
	jb	.L1193
	sub	ecx, eax
	or	ebx, edx
.L1193:
	shr	eax
	shr	edx
	jne	.L1194
.L1192:
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	je	.L1187
	mov	ebx, ecx
.L1187:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1190:
	.cfi_restore_state
	xor	ebx, ebx
	test	edx, edx
	jne	.L1189
	jmp	.L1192
	.cfi_endproc
.LFE164:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.p2align 4
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	ebx, DWORD PTR [esp+20]
	mov	edx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+16]
	test	bl, 32
	je	.L1210
	lea	ecx, [ebx-32]
	xor	eax, eax
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	sal	edx, cl
	ret
	.p2align 4,,10
	.p2align 3
.L1210:
	.cfi_restore_state
	mov	eax, edx
	test	ebx, ebx
	je	.L1213
	mov	ecx, ebx
	sal	eax, cl
	mov	ecx, 32
	sub	ecx, ebx
	shr	edx, cl
	mov	ecx, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	sal	esi, cl
	or	edx, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1213:
	.cfi_restore_state
	mov	edx, esi
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE131:
	.size	__ashldi3, .-__ashldi3
	.p2align 4
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB132:
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
	mov	ebx, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	test	bl, 32
	je	.L1216
	mov	edx, esi
	lea	ecx, [ebx-32]
	mov	eax, esi
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	sar	edx, 31
	sar	eax, cl
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1216:
	.cfi_restore_state
	test	ebx, ebx
	je	.L1219
	mov	ecx, ebx
	mov	edx, esi
	mov	eax, esi
	sar	edx, cl
	mov	ecx, 32
	sub	ecx, ebx
	sal	eax, cl
	mov	ecx, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	shr	edi, cl
	or	eax, edi
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1219:
	.cfi_restore_state
	mov	eax, edi
	mov	edx, esi
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
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.p2align 4
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	mov	edx, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp+8]
	xchg	dl, dh
	xchg	al, ah
	rol	edx, 16
	xchg	dl, dh
	rol	eax, 16
	xchg	al, ah
	ret
	.cfi_endproc
.LFE133:
	.size	__bswapdi2, .-__bswapdi2
	.p2align 4
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB134:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	xchg	al, ah
	rol	eax, 16
	xchg	al, ah
	ret
	.cfi_endproc
.LFE134:
	.size	__bswapsi2, .-__bswapsi2
	.p2align 4
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB135:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	xor	eax, eax
	mov	ecx, 16
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [esp+12]
	cmp	edx, 65535
	setbe	al
	xor	ebx, ebx
	sal	eax, 4
	sub	ecx, eax
	shr	edx, cl
	mov	ecx, 8
	test	dh, -1
	sete	bl
	sal	ebx, 3
	sub	ecx, ebx
	add	ebx, eax
	xor	eax, eax
	shr	edx, cl
	mov	ecx, 4
	test	dl, -16
	sete	al
	lea	esi, [0+eax*4]
	mov	eax, 2
	sub	ecx, esi
	add	esi, ebx
	xor	ebx, ebx
	shr	edx, cl
	mov	ecx, eax
	test	dl, 12
	sete	bl
	add	ebx, ebx
	sub	ecx, ebx
	shr	edx, cl
	sub	eax, edx
	and	edx, 2
	cmp	edx, 1
	sbb	edx, edx
	add	ebx, esi
	and	eax, edx
	add	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE135:
	.size	__clzsi2, .-__clzsi2
	.p2align 4
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB136:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xor	eax, eax
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	cmp	DWORD PTR [esp+12], ebx
	jl	.L1225
	mov	eax, 2
	jg	.L1225
	xor	eax, eax
	cmp	edx, ecx
	jb	.L1225
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
.L1225:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE136:
	.size	__cmpdi2, .-__cmpdi2
	.p2align 4
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB137:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, -1
	mov	edx, DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+16]
	mov	ebx, DWORD PTR [esp+20]
	cmp	DWORD PTR [esp+12], ebx
	jl	.L1232
	mov	eax, 1
	jg	.L1232
	mov	eax, -1
	cmp	edx, ecx
	jb	.L1232
	xor	eax, eax
	cmp	ecx, edx
	setb	al
.L1232:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE137:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.p2align 4
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB138:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	xor	edx, edx
	mov	esi, 2
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	eax, DWORD PTR [esp+12]
	test	ax, ax
	sete	dl
	sal	edx, 4
	mov	ecx, edx
	shr	eax, cl
	xor	ecx, ecx
	test	al, al
	sete	cl
	sal	ecx, 3
	shr	eax, cl
	lea	ebx, [ecx+edx]
	xor	ecx, ecx
	test	al, 15
	sete	cl
	sal	ecx, 2
	shr	eax, cl
	lea	edx, [ecx+ebx]
	xor	ecx, ecx
	test	al, 3
	sete	cl
	add	ecx, ecx
	shr	eax, cl
	add	ecx, edx
	and	eax, 3
	mov	ebx, eax
	shr	eax
	not	ebx
	sub	esi, eax
	mov	eax, ebx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	and	eax, 1
	neg	eax
	and	eax, esi
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	add	eax, ecx
	ret
	.cfi_endproc
.LFE138:
	.size	__ctzsi2, .-__ctzsi2
	.p2align 4
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB139:
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
	mov	ebx, DWORD PTR [esp+24]
	mov	edi, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	test	bl, 32
	je	.L1241
	lea	ecx, [ebx-32]
	mov	eax, esi
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	xor	edx, edx
	shr	eax, cl
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1241:
	.cfi_restore_state
	test	ebx, ebx
	je	.L1244
	mov	ecx, ebx
	mov	edx, esi
	mov	eax, esi
	shr	edx, cl
	mov	ecx, 32
	sub	ecx, ebx
	sal	eax, cl
	mov	ecx, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	shr	edi, cl
	or	eax, edi
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1244:
	.cfi_restore_state
	mov	eax, edi
	mov	edx, esi
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
.LFE139:
	.size	__lshrdi3, .-__lshrdi3
	.p2align 4
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
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
	mov	ecx, DWORD PTR [esp+16]
	mov	esi, DWORD PTR [esp+20]
	movzx	eax, cx
	shr	ecx, 16
	movzx	edx, si
	mov	ebx, eax
	shr	esi, 16
	imul	ebx, edx
	imul	edx, ecx
	imul	eax, esi
	mov	edi, ebx
	imul	ecx, esi
	movzx	ebx, bx
	shr	edi, 16
	add	edx, edi
	movzx	edi, dx
	shr	edx, 16
	add	eax, edi
	add	edx, ecx
	mov	edi, eax
	shr	eax, 16
	sal	edi, 16
	add	edx, eax
	add	ebx, edi
	mov	eax, ebx
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
.LFE140:
	.size	__muldsi3, .-__muldsi3
	.p2align 4
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB141:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	push	edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	push	esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	mov	edx, DWORD PTR [esp+20]
	movzx	eax, WORD PTR [esp+28]
	movzx	ecx, dx
	mov	esi, edx
	mov	ebx, ecx
	shr	esi, 16
	imul	edx, DWORD PTR [esp+32]
	imul	ebx, eax
	imul	eax, esi
	mov	edi, ebx
	movzx	ebx, bx
	shr	edi, 16
	add	eax, edi
	mov	edi, DWORD PTR [esp+28]
	movzx	ebp, ax
	shr	eax, 16
	shr	edi, 16
	imul	ecx, edi
	imul	esi, edi
	add	ecx, ebp
	add	eax, esi
	mov	ebp, ecx
	shr	ecx, 16
	add	ecx, eax
	mov	eax, DWORD PTR [esp+28]
	imul	eax, DWORD PTR [esp+24]
	sal	ebp, 16
	add	ebp, ebx
	add	edx, ecx
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	pop	edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	add	edx, eax
	mov	eax, ebp
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE141:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.p2align 4
	.globl	__negdi2
	.type	__negdi2, @function
__negdi2:
.LFB142:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	xor	edx, edx
	neg	eax
	sbb	edx, DWORD PTR [esp+8]
	ret
	.cfi_endproc
.LFE142:
	.size	__negdi2, .-__negdi2
	.p2align 4
	.globl	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB143:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+8]
	xor	eax, DWORD PTR [esp+4]
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
	.cfi_endproc
.LFE143:
	.size	__paritydi2, .-__paritydi2
	.p2align 4
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB144:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
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
	.cfi_endproc
.LFE144:
	.size	__paritysi2, .-__paritysi2
	.p2align 4
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB145:
	.cfi_startproc
	push	ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	mov	eax, DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	mov	ecx, eax
	mov	ebx, edx
	shrd	ecx, ebx, 1
	shr	ebx
	and	ecx, 1431655765
	and	ebx, 1431655765
	sub	eax, ecx
	sbb	edx, ebx
	mov	ecx, eax
	and	eax, 858993459
	mov	ebx, edx
	and	edx, 858993459
	shrd	ecx, ebx, 2
	shr	ebx, 2
	and	ecx, 858993459
	and	ebx, 858993459
	add	ecx, eax
	adc	ebx, edx
	mov	eax, ecx
	mov	edx, ebx
	shrd	eax, edx, 4
	shr	edx, 4
	add	eax, ecx
	adc	edx, ebx
	and	eax, 252645135
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	and	edx, 252645135
	lea	eax, [eax+edx]
	mov	edx, eax
	shr	edx, 16
	add	edx, eax
	mov	eax, edx
	shr	eax, 8
	add	eax, edx
	and	eax, 127
	ret
	.cfi_endproc
.LFE145:
	.size	__popcountdi2, .-__popcountdi2
	.p2align 4
	.globl	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB146:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+4]
	mov	edx, eax
	shr	edx
	and	edx, 1431655765
	sub	eax, edx
	mov	edx, eax
	and	eax, 858993459
	shr	edx, 2
	and	edx, 858993459
	add	edx, eax
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
	.cfi_endproc
.LFE146:
	.size	__popcountsi2, .-__popcountsi2
	.p2align 4
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
.LFB147:
	.cfi_startproc
	fld	QWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+12]
	mov	eax, ecx
	fld1
	test	cl, 1
	je	.L1257
	jmp	.L1259
	.p2align 4,,10
	.p2align 3
.L1264:
	fxch	st(1)
	jmp	.L1259
	.p2align 4,,10
	.p2align 3
.L1265:
	fxch	st(1)
.L1259:
	fmul	st, st(1)
.L1257:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1258
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	.L1264
.L1263:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1265
	jmp	.L1263
	.p2align 4,,10
	.p2align 3
.L1258:
	fstp	st(1)
	test	ecx, ecx
	jns	.L1256
	fdivr	DWORD PTR .LC12
.L1256:
	ret
	.cfi_endproc
.LFE147:
	.size	__powidf2, .-__powidf2
	.p2align 4
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	fld	DWORD PTR [esp+4]
	mov	ecx, DWORD PTR [esp+8]
	mov	eax, ecx
	fld1
	test	cl, 1
	je	.L1267
	jmp	.L1269
	.p2align 4,,10
	.p2align 3
.L1274:
	fxch	st(1)
	jmp	.L1269
	.p2align 4,,10
	.p2align 3
.L1275:
	fxch	st(1)
.L1269:
	fmul	st, st(1)
.L1267:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1268
	fxch	st(1)
	fmul	st, st(0)
	test	al, 1
	jne	.L1274
.L1273:
	mov	edx, eax
	fmul	st, st(0)
	shr	edx, 31
	add	eax, edx
	sar	eax
	test	al, 1
	jne	.L1275
	jmp	.L1273
	.p2align 4,,10
	.p2align 3
.L1268:
	fstp	st(1)
	test	ecx, ecx
	jns	.L1266
	fdivr	DWORD PTR .LC12
.L1266:
	ret
	.cfi_endproc
.LFE148:
	.size	__powisf2, .-__powisf2
	.p2align 4
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB149:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	xor	eax, eax
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+20]
	cmp	edx, ecx
	jb	.L1276
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1276
	xor	eax, eax
	cmp	ebx, esi
	jb	.L1276
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
.L1276:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE149:
	.size	__ucmpdi2, .-__ucmpdi2
	.p2align 4
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB150:
	.cfi_startproc
	push	esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	mov	eax, -1
	push	ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	mov	edx, DWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+24]
	mov	ebx, DWORD PTR [esp+12]
	mov	esi, DWORD PTR [esp+20]
	cmp	edx, ecx
	jb	.L1283
	mov	eax, 1
	cmp	ecx, edx
	jb	.L1283
	mov	eax, -1
	cmp	ebx, esi
	jb	.L1283
	xor	eax, eax
	cmp	esi, ebx
	setb	al
.L1283:
	pop	ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	pop	esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
	.local	seed
	.comm	seed,8,8
	.section	.rodata
	.align 32
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.long	-8388609
	.align 4
.LC3:
	.long	2139095039
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	-1
	.long	-1048577
	.align 8
.LC5:
	.long	-1
	.long	2146435071
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC6:
	.long	-1
	.long	-1
	.long	65534
	.align 16
	.align 16
.LC7:
	.long	-1
	.long	-1
	.long	32766
	.align 16
	.section	.rodata.cst4
	.align 4
.LC8:
	.long	1073741824
	.align 4
.LC9:
	.long	1056964608
	.align 4
.LC11:
	.long	-1090519040
	.align 4
.LC12:
	.long	1065353216
	.align 4
.LC13:
	.long	1602224128
	.align 4
.LC14:
	.long	1191182336
	.globl	__divmoddi4
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
