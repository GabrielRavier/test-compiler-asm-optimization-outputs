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
	sub	esp, 12
	.cfi_def_cfa_offset 16
	fld	QWORD PTR [esp+24]
	fld	QWORD PTR [esp+16]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L173
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
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L173:
	fstp	st(1)
.L164:
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L171:
	.cfi_restore_state
	fstp	st(0)
	fstp	st(0)
	fldz
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L168:
	.cfi_restore_state
	fstp	st(1)
	jmp	.L164
	.cfi_endproc
.LFE29:
	.size	fdim, .-fdim
	.p2align 4
	.globl	fdimf
	.type	fdimf, @function
fdimf:
.LFB30:
	.cfi_startproc
	sub	esp, 4
	.cfi_def_cfa_offset 8
	fld	DWORD PTR [esp+12]
	fld	DWORD PTR [esp+8]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L183
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L178
	fxch	st(1)
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L181
	fsubrp	st(1), st
	fstp	DWORD PTR [esp]
	fld	DWORD PTR [esp]
	jmp	.L174
	.p2align 4,,10
	.p2align 3
.L183:
	fstp	st(1)
.L174:
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L181:
	.cfi_restore_state
	fstp	st(0)
	fstp	st(0)
	fldz
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L178:
	.cfi_restore_state
	fstp	st(1)
	jmp	.L174
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
	jp	.L195
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L196
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
	jne	.L194
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L197
	fstp	st(1)
	jmp	.L190
	.p2align 4,,10
	.p2align 3
.L196:
	fstp	st(0)
	jmp	.L190
	.p2align 4,,10
	.p2align 3
.L197:
	fstp	st(0)
	jmp	.L190
	.p2align 4,,10
	.p2align 3
.L198:
	fstp	st(0)
.L190:
	jmp	.L184
	.p2align 4,,10
	.p2align 3
.L195:
	fstp	st(0)
.L184:
	ret
	.p2align 4,,10
	.p2align 3
.L194:
	test	edx, edx
	je	.L198
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
	jp	.L210
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L211
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
	jne	.L209
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L212
	fstp	st(1)
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L211:
	fstp	st(0)
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L212:
	fstp	st(0)
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L213:
	fstp	st(0)
.L205:
	jmp	.L199
	.p2align 4,,10
	.p2align 3
.L210:
	fstp	st(0)
.L199:
	ret
	.p2align 4,,10
	.p2align 3
.L209:
	test	edx, edx
	je	.L213
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
	jp	.L225
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L226
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
	jne	.L224
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L227
	fstp	st(1)
	jmp	.L220
	.p2align 4,,10
	.p2align 3
.L226:
	fstp	st(0)
	jmp	.L220
	.p2align 4,,10
	.p2align 3
.L227:
	fstp	st(0)
	jmp	.L220
	.p2align 4,,10
	.p2align 3
.L228:
	fstp	st(0)
.L220:
	jmp	.L214
	.p2align 4,,10
	.p2align 3
.L225:
	fstp	st(0)
.L214:
	ret
	.p2align 4,,10
	.p2align 3
.L224:
	test	edx, edx
	je	.L228
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
	jp	.L240
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L241
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
	jne	.L239
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L242
	fstp	st(0)
	jmp	.L234
	.p2align 4,,10
	.p2align 3
.L240:
	fstp	st(0)
	jmp	.L234
	.p2align 4,,10
	.p2align 3
.L242:
	fstp	st(1)
	jmp	.L234
	.p2align 4,,10
	.p2align 3
.L243:
	fstp	st(1)
.L234:
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L241:
	fstp	st(0)
.L229:
	ret
	.p2align 4,,10
	.p2align 3
.L239:
	test	edx, edx
	je	.L243
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
	jp	.L255
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L256
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
	jne	.L254
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L257
	fstp	st(0)
	jmp	.L249
	.p2align 4,,10
	.p2align 3
.L255:
	fstp	st(0)
	jmp	.L249
	.p2align 4,,10
	.p2align 3
.L257:
	fstp	st(1)
	jmp	.L249
	.p2align 4,,10
	.p2align 3
.L258:
	fstp	st(1)
.L249:
	jmp	.L244
	.p2align 4,,10
	.p2align 3
.L256:
	fstp	st(0)
.L244:
	ret
	.p2align 4,,10
	.p2align 3
.L254:
	test	edx, edx
	je	.L258
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
	jp	.L270
	fxch	st(1)
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L271
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
	jne	.L269
	fcom	st(1)
	fnstsw	ax
	sahf
	jbe	.L272
	fstp	st(0)
	jmp	.L264
	.p2align 4,,10
	.p2align 3
.L270:
	fstp	st(0)
	jmp	.L264
	.p2align 4,,10
	.p2align 3
.L272:
	fstp	st(1)
	jmp	.L264
	.p2align 4,,10
	.p2align 3
.L273:
	fstp	st(1)
.L264:
	jmp	.L259
	.p2align 4,,10
	.p2align 3
.L271:
	fstp	st(0)
.L259:
	ret
	.p2align 4,,10
	.p2align 3
.L269:
	test	edx, edx
	je	.L273
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
	je	.L275
	.p2align 5
	.p2align 4
	.p2align 3
.L276:
	mov	ecx, eax
	add	edx, 1
	and	ecx, 63
	movzx	ecx, BYTE PTR digits[ecx]
	mov	BYTE PTR [edx-1], cl
	shr	eax, 6
	jne	.L276
.L275:
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
	je	.L287
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax+4], edx
	mov	DWORD PTR [eax], ecx
	mov	DWORD PTR [edx], eax
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	je	.L281
	mov	DWORD PTR [edx+4], eax
.L281:
	ret
	.p2align 4,,10
	.p2align 3
.L287:
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
	je	.L289
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [edx+4], ecx
.L289:
	mov	eax, DWORD PTR [eax+4]
	test	eax, eax
	je	.L288
	mov	DWORD PTR [eax], edx
.L288:
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
	je	.L298
	mov	ebx, DWORD PTR [esp+52]
	xor	esi, esi
	mov	DWORD PTR [esp+12], ecx
	mov	ebp, ebx
	mov	ebx, esi
	jmp	.L300
	.p2align 4,,10
	.p2align 3
.L315:
	add	ebx, 1
	add	ebp, edi
	cmp	DWORD PTR [esp+12], ebx
	je	.L314
.L300:
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
	jne	.L315
.L297:
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
.L314:
	.cfi_restore_state
	mov	ecx, DWORD PTR [esp+12]
.L298:
	mov	edx, DWORD PTR [esp+56]
	lea	eax, [ecx+1]
	imul	ecx, edi
	add	ecx, DWORD PTR [esp+52]
	mov	DWORD PTR [edx], eax
	mov	ebp, ecx
	test	edi, edi
	je	.L297
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
	je	.L317
	mov	ebx, DWORD PTR [esp+36]
	mov	esi, ebp
	xor	edi, edi
	mov	ebp, ebx
	jmp	.L319
	.p2align 4,,10
	.p2align 3
.L329:
	add	edi, 1
	add	ebp, DWORD PTR [esp+44]
	cmp	esi, edi
	je	.L317
.L319:
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
	jne	.L329
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
.L317:
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
	jbe	.L349
	mov	eax, ecx
	jmp	.L354
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L349:
	movsx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	lea	ebx, [ecx-9]
	mov	eax, ecx
	cmp	ebx, 4
	jbe	.L349
.L354:
	cmp	al, 32
	je	.L349
	cmp	al, 43
	je	.L335
	cmp	al, 45
	jne	.L355
	lea	edi, [edx+1]
	movsx	edx, BYTE PTR [edx+1]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L344
	mov	ebp, 1
.L338:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L341:
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
	jbe	.L341
	test	ebp, ebp
	jne	.L331
	mov	esi, ecx
	sub	esi, edx
.L331:
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
.L355:
	.cfi_restore_state
	sub	ecx, 48
	mov	edi, edx
	xor	ebp, ebp
	cmp	ecx, 9
	jbe	.L338
.L344:
	xor	esi, esi
.L356:
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
.L335:
	.cfi_restore_state
	lea	edi, [edx+1]
	movsx	edx, BYTE PTR [edx+1]
	xor	ebp, ebp
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L338
	xor	esi, esi
	jmp	.L356
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
	jbe	.L374
	mov	eax, ecx
	jmp	.L378
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L374:
	movsx	ecx, BYTE PTR [edx+1]
	add	edx, 1
	lea	ebx, [ecx-9]
	mov	eax, ecx
	cmp	ebx, 4
	jbe	.L374
.L378:
	cmp	al, 32
	je	.L374
	cmp	al, 43
	je	.L361
	cmp	al, 45
	je	.L379
	sub	ecx, 48
	mov	edi, edx
	xor	ebp, ebp
	cmp	ecx, 9
	ja	.L369
.L363:
	xor	esi, esi
	.p2align 5
	.p2align 4
	.p2align 3
.L366:
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
	jbe	.L366
	test	ebp, ebp
	jne	.L357
	mov	esi, ecx
	sub	esi, edx
.L357:
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
.L379:
	.cfi_restore_state
	lea	edi, [edx+1]
	movsx	edx, BYTE PTR [edx+1]
	mov	ebp, 1
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L363
.L369:
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
.L361:
	.cfi_restore_state
	lea	edi, [edx+1]
	movsx	edx, BYTE PTR [edx+1]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L369
	xor	ebp, ebp
	jmp	.L363
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
	jbe	.L398
	mov	edx, eax
	jmp	.L405
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L398:
	movsx	eax, BYTE PTR [ecx+1]
	add	ecx, 1
	lea	ebx, [eax-9]
	mov	edx, eax
	cmp	ebx, 4
	jbe	.L398
.L405:
	cmp	dl, 32
	je	.L398
	cmp	dl, 43
	je	.L384
	cmp	dl, 45
	jne	.L406
	lea	eax, [ecx+1]
	movsx	ecx, BYTE PTR [ecx+1]
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	ja	.L393
	mov	ebp, 1
.L387:
	mov	DWORD PTR [esp+12], ebp
	xor	ecx, ecx
	xor	ebx, ebx
	.p2align 6
	.p2align 4
	.p2align 3
.L390:
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
	jbe	.L390
	mov	ebp, DWORD PTR [esp+12]
	test	ebp, ebp
	jne	.L380
	sub	esi, DWORD PTR [esp]
	sbb	edi, DWORD PTR [esp+4]
	mov	ecx, esi
	mov	ebx, edi
.L380:
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
.L406:
	.cfi_restore_state
	lea	ebx, [eax-48]
	xor	ebp, ebp
	mov	eax, ecx
	cmp	ebx, 9
	jbe	.L387
.L393:
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
.L384:
	.cfi_restore_state
	lea	eax, [ecx+1]
	movsx	ecx, BYTE PTR [ecx+1]
	xor	ebp, ebp
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L387
	jmp	.L393
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
.L422:
	test	ebx, ebx
	je	.L408
.L423:
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
	js	.L412
	je	.L407
	sub	ebx, 1
	lea	eax, [ebp+0+esi]
	sub	ebx, edi
	mov	DWORD PTR [esp+36], eax
	test	ebx, ebx
	jne	.L423
.L408:
	xor	ebp, ebp
.L407:
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
.L412:
	.cfi_restore_state
	mov	ebx, edi
	jmp	.L422
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
	je	.L429
	.p2align 4
	.p2align 3
.L425:
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
	je	.L424
	jle	.L427
	sub	ebp, 1
	lea	eax, [ebx+edi]
	sar	ebp
	mov	DWORD PTR [esp+36], eax
	jne	.L425
.L429:
	xor	ebx, ebx
.L424:
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
.L427:
	.cfi_restore_state
	test	esi, esi
	je	.L429
	mov	ebp, esi
	jmp	.L425
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
	jne	.L452
	jmp	.L455
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L454:
	mov	edx, DWORD PTR [eax+4]
	add	eax, 4
	test	edx, edx
	je	.L455
.L452:
	cmp	ecx, edx
	jne	.L454
	ret
	.p2align 4,,10
	.p2align 3
.L455:
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
	je	.L458
	jmp	.L459
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L460:
	mov	eax, DWORD PTR [ecx+4]
	mov	ebx, DWORD PTR [edx+4]
	add	ecx, 4
	add	edx, 4
	cmp	eax, ebx
	jne	.L459
.L458:
	test	eax, eax
	jne	.L460
.L459:
	mov	edx, -1
	cmp	eax, ebx
	jl	.L457
	setg	dl
	movzx	edx, dl
.L457:
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
.L466:
	mov	edx, DWORD PTR [ebx+eax]
	mov	DWORD PTR [ecx+eax], edx
	add	eax, 4
	test	edx, edx
	jne	.L466
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
	je	.L472
	mov	eax, edx
	.p2align 4
	.p2align 4
	.p2align 3
.L471:
	mov	ecx, DWORD PTR [eax+4]
	add	eax, 4
	test	ecx, ecx
	jne	.L471
	sub	eax, edx
	sar	eax, 2
	ret
	.p2align 4,,10
	.p2align 3
.L472:
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
	jne	.L475
	jmp	.L481
	.p2align 4,,10
	.p2align 3
.L487:
	test	ebx, ebx
	je	.L479
	add	edx, 4
	add	eax, 4
	sub	ecx, 1
	je	.L481
.L475:
	mov	ebx, DWORD PTR [edx]
	cmp	DWORD PTR [eax], ebx
	je	.L487
.L479:
	mov	eax, DWORD PTR [eax]
	cmp	DWORD PTR [edx], eax
	jl	.L488
	setg	al
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L488:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L481:
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
	jne	.L490
	jmp	.L493
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L492:
	add	eax, 4
	sub	edx, 1
	je	.L493
.L490:
	cmp	DWORD PTR [eax], ecx
	jne	.L492
	ret
	.p2align 4,,10
	.p2align 3
.L493:
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
	jne	.L496
	jmp	.L495
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L498:
	add	ecx, 4
	add	edx, 4
	sub	eax, 1
	je	.L501
.L496:
	mov	ebx, DWORD PTR [ecx]
	cmp	ebx, DWORD PTR [edx]
	je	.L498
	cmp	ebx, DWORD PTR [edx]
	jl	.L505
	setg	al
	movzx	eax, al
.L495:
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L505:
	.cfi_restore_state
	mov	eax, -1
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L501:
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
	je	.L507
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
.L507:
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
	je	.L520
	mov	ebx, edx
	lea	edi, [0+ecx*4]
	lea	eax, [ecx-1]
	sub	ebx, esi
	cmp	ebx, edi
	jnb	.L527
	test	ecx, ecx
	je	.L520
	.p2align 4
	.p2align 4
	.p2align 3
.L517:
	mov	ecx, DWORD PTR [esi+eax*4]
	mov	DWORD PTR [edx+eax*4], ecx
	sub	eax, 1
	jnb	.L517
.L520:
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
.L527:
	.cfi_restore_state
	mov	edi, edx
	test	ecx, ecx
	je	.L520
	.p2align 3
	.p2align 4
	.p2align 3
.L515:
	movsd
	sub	eax, 1
	jnb	.L515
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
	je	.L529
	lea	eax, [edx-1]
	mov	edx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
.L530:
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	sub	eax, 1
	jnb	.L530
.L529:
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
	jnb	.L537
	test	eax, eax
	je	.L536
	.p2align 4
	.p2align 4
	.p2align 3
.L539:
	movzx	ecx, BYTE PTR [edx-1+eax]
	mov	BYTE PTR [ebx-1+eax], cl
	sub	eax, 1
	jne	.L539
.L536:
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
.L537:
	.cfi_restore_state
	je	.L536
	test	eax, eax
	je	.L536
	lea	ecx, [eax-1]
	cmp	ecx, 3
	jbe	.L570
	mov	ecx, ebx
	or	ecx, edx
	and	ecx, 3
	lea	ecx, [edx+1]
	jne	.L540
	mov	esi, ebx
	sub	esi, ecx
	cmp	esi, 2
	jbe	.L540
	mov	edi, eax
	mov	ecx, ebx
	and	edi, -4
	lea	esi, [edx+edi]
	.p2align 4
	.p2align 4
	.p2align 3
.L541:
	mov	ebp, DWORD PTR [edx]
	add	edx, 4
	add	ecx, 4
	mov	DWORD PTR [ecx-4], ebp
	cmp	edx, esi
	jne	.L541
	mov	ecx, eax
	add	ebx, edi
	sub	ecx, edi
	cmp	eax, edi
	je	.L536
	movzx	eax, BYTE PTR [edx]
	mov	BYTE PTR [ebx], al
	cmp	ecx, 1
	je	.L536
	movzx	eax, BYTE PTR [edx+1]
	mov	BYTE PTR [ebx+1], al
	cmp	ecx, 2
	je	.L536
	movzx	eax, BYTE PTR [edx+2]
	mov	BYTE PTR [ebx+2], al
	jmp	.L536
.L570:
	lea	ecx, [edx+1]
.L540:
	add	edx, eax
	jmp	.L544
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L571:
	add	ecx, 1
.L544:
	movzx	eax, BYTE PTR [ecx-1]
	add	ebx, 1
	mov	BYTE PTR [ebx-1], al
	cmp	edx, ecx
	jne	.L571
	jmp	.L536
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
	je	.L574
	mov	edi, esi
	xor	esi, esi
.L574:
	neg	ecx
	shrd	eax, edx, cl
	shr	edx, cl
	test	cl, 32
	je	.L575
	mov	eax, edx
	xor	edx, edx
.L575:
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
	je	.L578
	mov	esi, edi
	xor	edi, edi
.L578:
	neg	ecx
	shld	edx, eax, cl
	sal	eax, cl
	test	cl, 32
	je	.L579
	mov	edx, eax
	xor	eax, eax
.L579:
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
	jmp	.L594
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L592:
	cmp	ecx, 32
	je	.L596
.L594:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L592
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L596:
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
	je	.L597
	mov	edx, eax
	and	edx, 1
	jne	.L597
	mov	edx, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L599:
	sar	eax
	add	edx, 1
	test	al, 1
	je	.L599
.L597:
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
	ja	.L607
	fcomp	DWORD PTR .LC3
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L604
	.p2align 4,,10
	.p2align 3
.L607:
	fstp	st(0)
.L604:
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
	ja	.L611
	fcomp	QWORD PTR .LC5
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L608
	.p2align 4,,10
	.p2align 3
.L611:
	fstp	st(0)
.L608:
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
	ja	.L615
	fld	TBYTE PTR .LC7
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L612
	.p2align 4,,10
	.p2align 3
.L615:
	fstp	st(0)
.L612:
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
	sub	esp, 4
	.cfi_def_cfa_offset 8
	fld	DWORD PTR [esp+8]
	mov	edx, DWORD PTR [esp+12]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L618
	fld	st(0)
	fld	st(1)
	fadd	st, st(2)
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L625
	jne	.L625
	fstp	st(0)
	jmp	.L618
	.p2align 4,,10
	.p2align 3
.L637:
	fstp	st(1)
.L618:
	add	esp, 4
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L625:
	.cfi_restore_state
	fld	DWORD PTR .LC8
	test	edx, edx
	jns	.L620
	fstp	st(0)
	fld	DWORD PTR .LC9
.L620:
	test	dl, 1
	je	.L636
	fstp	st(2)
	fxch	st(1)
	jmp	.L622
	.p2align 4,,10
	.p2align 3
.L635:
.L622:
	fmul	st(1), st
	fxch	st(1)
	fstp	DWORD PTR [esp]
	fld	DWORD PTR [esp]
	jmp	.L621
	.p2align 4,,10
	.p2align 3
.L636:
	fstp	st(1)
	fxch	st(1)
	.p2align 4
	.p2align 3
.L621:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L637
	fxch	st(1)
.L623:
	fmul	st, st(0)
	fstp	DWORD PTR [esp]
	fld	DWORD PTR [esp]
	test	dl, 1
	jne	.L635
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	jmp	.L623
	.cfi_endproc
.LFE87:
	.size	ldexpf, .-ldexpf
	.p2align 4
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB88:
	.cfi_startproc
	sub	esp, 12
	.cfi_def_cfa_offset 16
	fld	QWORD PTR [esp+16]
	mov	edx, DWORD PTR [esp+24]
	fucom	st(0)
	fnstsw	ax
	sahf
	jp	.L639
	fld	st(0)
	fld	st(1)
	fadd	st, st(2)
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L646
	jne	.L646
	fstp	st(0)
	jmp	.L639
	.p2align 4,,10
	.p2align 3
.L659:
	fstp	st(1)
.L639:
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L646:
	.cfi_restore_state
	test	edx, edx
	js	.L656
	fld	DWORD PTR .LC8
.L641:
	test	dl, 1
	je	.L658
	fstp	st(2)
	fxch	st(1)
	jmp	.L643
	.p2align 4,,10
	.p2align 3
.L657:
.L643:
	fmul	st(1), st
	fxch	st(1)
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	jmp	.L642
	.p2align 4,,10
	.p2align 3
.L658:
	fstp	st(1)
	fxch	st(1)
	.p2align 4
	.p2align 3
.L642:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L659
	fxch	st(1)
.L644:
	fmul	st, st(0)
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	test	dl, 1
	jne	.L657
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	jmp	.L644
	.p2align 4,,10
	.p2align 3
.L656:
	fld	DWORD PTR .LC9
	jmp	.L641
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
	jp	.L661
	fld	st(0)
	fadd	st, st(1)
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	.L668
	jne	.L668
	jmp	.L661
	.p2align 4,,10
	.p2align 3
.L677:
	fstp	st(0)
.L661:
	ret
	.p2align 4,,10
	.p2align 3
.L668:
	test	edx, edx
	js	.L675
	fld	DWORD PTR .LC8
.L663:
	test	dl, 1
	je	.L664
	.p2align 4
	.p2align 3
.L665:
	fmul	st(1), st
.L664:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L677
	fmul	st, st(0)
	test	dl, 1
	jne	.L665
.L676:
	mov	eax, edx
	fmul	st, st(0)
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L665
	jmp	.L676
	.p2align 4,,10
	.p2align 3
.L675:
	fld	DWORD PTR .LC9
	jmp	.L663
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
	je	.L679
	lea	edx, [ecx-1]
	cmp	edx, 2
	jbe	.L680
	mov	edx, ebx
	or	edx, eax
	and	edx, 3
	jne	.L680
	mov	edi, ecx
	mov	esi, ebx
	and	edi, -4
	lea	edx, [eax+edi]
	.p2align 4
	.p2align 4
	.p2align 3
.L681:
	mov	ebp, DWORD PTR [eax]
	add	eax, 4
	xor	DWORD PTR [esi], ebp
	add	esi, 4
	cmp	edx, eax
	jne	.L681
	mov	esi, ecx
	lea	eax, [ebx+edi]
	sub	esi, edi
	cmp	ecx, edi
	je	.L679
	movzx	ecx, BYTE PTR [edx]
	xor	BYTE PTR [eax], cl
	cmp	esi, 1
	je	.L679
	movzx	ecx, BYTE PTR [edx+1]
	xor	BYTE PTR [eax+1], cl
	cmp	esi, 2
	je	.L679
	movzx	edx, BYTE PTR [edx+2]
	xor	BYTE PTR [eax+2], dl
.L679:
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
.L680:
	.cfi_restore_state
	add	ecx, eax
	mov	esi, ebx
	.p2align 5
	.p2align 4
	.p2align 3
.L683:
	add	eax, 1
	add	esi, 1
	movzx	edx, BYTE PTR [eax-1]
	xor	BYTE PTR [esi-1], dl
	cmp	ecx, eax
	jne	.L683
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
	je	.L698
	.p2align 3
	.p2align 4
	.p2align 3
.L699:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L699
.L698:
	test	edx, edx
	jne	.L700
	jmp	.L701
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L702:
	add	ecx, 1
	add	eax, 1
	sub	edx, 1
	je	.L701
.L700:
	movzx	ebx, BYTE PTR [ecx]
	mov	BYTE PTR [eax], bl
	test	bl, bl
	jne	.L702
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
.L701:
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
	je	.L719
.L712:
	cmp	BYTE PTR [ecx+eax], 0
	jne	.L714
	ret
	.p2align 4,,10
	.p2align 3
.L714:
	add	eax, 1
	cmp	edx, eax
	jne	.L712
	ret
	.p2align 4,,10
	.p2align 3
.L719:
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
	je	.L725
.L721:
	mov	eax, esi
	jmp	.L724
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L723:
	add	eax, 1
	cmp	dl, cl
	je	.L722
.L724:
	movzx	edx, BYTE PTR [eax]
	test	dl, dl
	jne	.L723
	movzx	ecx, BYTE PTR [ebx+1]
	add	ebx, 1
	test	cl, cl
	jne	.L721
.L725:
	xor	ebx, ebx
.L722:
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
.L730:
	movsx	ecx, BYTE PTR [eax]
	mov	edx, ecx
	cmp	ebx, ecx
	jne	.L729
	mov	esi, eax
.L729:
	add	eax, 1
	test	dl, dl
	jne	.L730
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
	je	.L745
	mov	eax, ebp
	.p2align 3
	.p2align 4
	.p2align 3
.L735:
	add	eax, 1
	cmp	BYTE PTR [eax], 0
	jne	.L735
	mov	ecx, edx
	sub	eax, ebp
	je	.L733
	lea	edi, [ebp-1+eax]
	jmp	.L742
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L757:
	add	edx, 1
	test	al, al
	je	.L756
.L742:
	movzx	eax, BYTE PTR [edx]
	cmp	al, bl
	jne	.L757
	mov	DWORD PTR [esp+24], ebp
	mov	eax, ebp
	mov	ecx, ebx
	mov	esi, edx
	mov	DWORD PTR [esp+20], edx
	mov	ebp, ebx
	jmp	.L737
	.p2align 4,,10
	.p2align 3
.L758:
	test	dl, dl
	setne	bl
	cmp	dl, cl
	sete	dl
	test	bl, dl
	je	.L738
	movzx	ecx, BYTE PTR [esi+1]
	add	esi, 1
	add	eax, 1
	test	cl, cl
	je	.L738
.L737:
	movzx	edx, BYTE PTR [eax]
	cmp	eax, edi
	jne	.L758
.L738:
	mov	ebx, ebp
	mov	edx, DWORD PTR [esp+20]
	mov	ebp, DWORD PTR [esp+24]
	cmp	cl, BYTE PTR [eax]
	je	.L745
	add	edx, 1
	jmp	.L742
	.p2align 4,,10
	.p2align 3
.L756:
	xor	ecx, ecx
.L733:
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
.L745:
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
	ja	.L769
	fxch	st(2)
	ftst
	fnstsw	ax
	sahf
	jbe	.L770
	fxch	st(2)
	fcompp
	fnstsw	ax
	sahf
	ja	.L762
	jmp	.L763
	.p2align 4,,10
	.p2align 3
.L770:
	fstp	st(1)
	fstp	st(1)
.L763:
	ret
	.p2align 4,,10
	.p2align 3
.L769:
	fstp	st(0)
	ftst
	fnstsw	ax
	fstp	st(0)
	sahf
	jbe	.L763
.L762:
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
	je	.L771
	cmp	esi, DWORD PTR [esp+32]
	jb	.L782
	sub	esi, DWORD PTR [esp+32]
	add	esi, edx
	jc	.L782
	movzx	ebp, BYTE PTR [edi]
	jmp	.L777
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L781:
	mov	edx, ebx
.L773:
	cmp	esi, edx
	jb	.L782
.L777:
	lea	ebx, [edx+1]
	mov	eax, ebp
	cmp	BYTE PTR [edx], al
	jne	.L781
	cmp	DWORD PTR [esp+32], 1
	je	.L771
.L776:
	mov	eax, 1
	jmp	.L774
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L775:
	add	eax, 1
	cmp	eax, DWORD PTR [esp+32]
	je	.L771
.L774:
	movzx	ecx, BYTE PTR [edi+eax]
	cmp	BYTE PTR [edx+eax], cl
	je	.L775
	cmp	esi, ebx
	jb	.L782
	lea	edx, [ebx+1]
	mov	eax, ebp
	cmp	al, BYTE PTR [ebx]
	jne	.L773
	mov	eax, ebx
	mov	ebx, edx
	mov	edx, eax
	jmp	.L776
	.p2align 4,,10
	.p2align 3
.L782:
	xor	edx, edx
.L771:
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
	je	.L791
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
.L791:
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
	sub	esp, 12
	.cfi_def_cfa_offset 16
	fld	QWORD PTR [esp+16]
	fldz
	fcom	st(1)
	fnstsw	ax
	sahf
	ja	.L821
	fld1
	fxch	st(2)
	xor	ecx, ecx
	fcom	st(2)
	fnstsw	ax
	fstp	st(2)
	sahf
	jb	.L822
	fstp	st(0)
.L799:
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L806:
	fld	DWORD PTR .LC9
	add	edx, 1
	fmulp	st(1), st
	fstp	QWORD PTR [esp]
	fld1
	fld	QWORD PTR [esp]
	fcom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jnb	.L806
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [eax], edx
	test	ecx, ecx
	je	.L796
.L824:
	fchs
.L796:
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L822:
	.cfi_restore_state
	fld	DWORD PTR .LC9
	fcomp	st(2)
	fnstsw	ax
	sahf
	jbe	.L825
	fxch	st(1)
	fucom	st(1)
	fnstsw	ax
	fstp	st(1)
	sahf
	jp	.L812
	jne	.L812
	jmp	.L802
	.p2align 4,,10
	.p2align 3
.L825:
	fstp	st(0)
	jmp	.L802
	.p2align 4,,10
	.p2align 3
.L826:
	fstp	st(0)
.L802:
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [eax], 0
	add	esp, 12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L821:
	.cfi_restore_state
	fstp	st(0)
	fld	st(0)
	fchs
	fld1
	fchs
	fcomp	st(2)
	fnstsw	ax
	sahf
	jb	.L823
	fstp	st(1)
	mov	ecx, 1
	jmp	.L799
	.p2align 4,,10
	.p2align 3
.L823:
	fld	DWORD PTR .LC11
	fxch	st(2)
	fcom	st(2)
	fnstsw	ax
	fstp	st(2)
	sahf
	jbe	.L826
	fstp	st(1)
	mov	ecx, 1
.L800:
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L808:
	fadd	st, st(0)
	sub	edx, 1
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	fld	DWORD PTR .LC9
	fcomp	st(1)
	fnstsw	ax
	sahf
	ja	.L808
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [eax], edx
	test	ecx, ecx
	jne	.L824
	jmp	.L796
.L812:
	xor	ecx, ecx
	jmp	.L800
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
	je	.L827
	.p2align 6
	.p2align 4
	.p2align 3
.L829:
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
	jne	.L829
.L827:
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
	jb	.L834
	jmp	.L835
	.p2align 4,,10
	.p2align 3
.L837:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	.L836
	test	edx, edx
	je	.L836
.L834:
	test	eax, eax
	jns	.L837
.L835:
	xor	ebx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
.L840:
	cmp	ecx, eax
	jb	.L839
	sub	ecx, eax
	or	ebx, edx
.L839:
	shr	eax
	shr	edx
	jne	.L840
.L838:
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	je	.L833
	mov	ebx, ecx
.L833:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L836:
	.cfi_restore_state
	xor	ebx, ebx
	test	edx, edx
	jne	.L835
	jmp	.L838
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
	je	.L855
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	ebx, [eax-1]
.L855:
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
	je	.L860
	test	edi, edi
	je	.L862
	bsr	esi, edi
	xor	esi, 31
.L863:
	lea	ebp, [esi-1]
.L860:
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
.L862:
	.cfi_restore_state
	bsr	esi, esi
	xor	esi, 31
	add	esi, 32
	jmp	.L863
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
	je	.L867
	.p2align 5
	.p2align 4
	.p2align 3
.L869:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L869
.L867:
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
	jb	.L877
	lea	eax, [ecx+ebp]
	cmp	eax, esi
	jnb	.L901
.L877:
	test	edi, edi
	je	.L876
	mov	DWORD PTR [esp], ebx
	mov	eax, ecx
	mov	edx, esi
	lea	edi, [ecx+edi*8]
	mov	DWORD PTR [esp+36], ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L880:
	mov	ecx, DWORD PTR [eax]
	mov	ebx, DWORD PTR [eax+4]
	add	eax, 8
	add	edx, 8
	mov	DWORD PTR [edx-8], ecx
	mov	DWORD PTR [edx-4], ebx
	cmp	eax, edi
	jne	.L880
	mov	ebx, DWORD PTR [esp]
	mov	ecx, DWORD PTR [esp+36]
.L876:
	cmp	ebx, ebp
	jnb	.L873
	mov	eax, ebp
	lea	edx, [esi+ebx]
	sub	eax, ebx
	mov	DWORD PTR [esp+4], eax
	sub	eax, 1
	cmp	eax, 3
	lea	eax, [ecx+ebx]
	mov	DWORD PTR [esp], eax
	jbe	.L881
	lea	edi, [ecx+1+ebx]
	mov	eax, edx
	sub	eax, edi
	cmp	eax, 2
	jbe	.L881
	mov	eax, DWORD PTR [esp]
	or	eax, edx
	mov	edi, eax
	and	edi, 3
	jne	.L881
	mov	edi, DWORD PTR [esp+4]
	mov	eax, DWORD PTR [esp]
	mov	DWORD PTR [esp+36], ecx
	and	edi, -4
	mov	DWORD PTR [esp], edi
	add	edi, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L882:
	mov	ecx, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	cmp	eax, edi
	jne	.L882
	mov	eax, DWORD PTR [esp]
	mov	ecx, DWORD PTR [esp+36]
	add	ebx, eax
	cmp	DWORD PTR [esp+4], eax
	je	.L873
	movzx	eax, BYTE PTR [ecx+ebx]
	mov	BYTE PTR [esi+ebx], al
	lea	eax, [ebx+1]
	cmp	eax, ebp
	jnb	.L873
	movzx	eax, BYTE PTR [ecx+1+ebx]
	mov	BYTE PTR [esi+1+ebx], al
	lea	eax, [ebx+2]
	cmp	eax, ebp
	jnb	.L873
	movzx	eax, BYTE PTR [ecx+2+ebx]
	mov	BYTE PTR [esi+2+ebx], al
.L873:
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
.L901:
	.cfi_restore_state
	lea	eax, [ebp-1]
	test	ebp, ebp
	je	.L873
	.p2align 4
	.p2align 4
	.p2align 3
.L878:
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [esi+eax], dl
	sub	eax, 1
	jnb	.L878
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
.L881:
	.cfi_restore_state
	mov	eax, DWORD PTR [esp]
	add	ecx, ebp
	.p2align 4
	.p2align 4
	.p2align 3
.L884:
	movzx	ebx, BYTE PTR [eax]
	add	eax, 1
	add	edx, 1
	mov	BYTE PTR [edx-1], bl
	cmp	eax, ecx
	jne	.L884
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
	jb	.L906
	lea	eax, [ecx+edi]
	cmp	eax, ebx
	jnb	.L930
.L906:
	test	ebp, ebp
	je	.L905
	lea	eax, [ebp-1]
	cmp	eax, 3
	jbe	.L909
	mov	eax, ecx
	or	eax, ebx
	test	al, 3
	jne	.L909
	lea	eax, [ecx+2]
	cmp	ebx, eax
	je	.L909
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
.L910:
	mov	ecx, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	cmp	eax, esi
	jne	.L910
	mov	esi, DWORD PTR [esp]
	mov	ecx, DWORD PTR [esp+28]
	lea	eax, [esi+esi]
	cmp	ebp, eax
	je	.L905
	movzx	eax, WORD PTR [ecx+esi*4]
	mov	WORD PTR [ebx+esi*4], ax
.L905:
	test	edi, 1
	je	.L902
.L931:
	movzx	eax, BYTE PTR [ecx-1+edi]
	mov	BYTE PTR [ebx-1+edi], al
.L902:
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
.L930:
	.cfi_restore_state
	lea	eax, [edi-1]
	test	edi, edi
	je	.L902
	.p2align 4
	.p2align 4
	.p2align 3
.L907:
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [ebx+eax], dl
	sub	eax, 1
	jnb	.L907
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
.L909:
	.cfi_restore_state
	mov	eax, ecx
	mov	edx, ebx
	lea	ebp, [ecx+ebp*2]
	.p2align 5
	.p2align 4
	.p2align 3
.L912:
	movzx	esi, WORD PTR [eax]
	add	eax, 2
	add	edx, 2
	mov	WORD PTR [edx-2], si
	cmp	ebp, eax
	jne	.L912
	test	edi, 1
	je	.L902
	jmp	.L931
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
	jb	.L936
	mov	eax, DWORD PTR [esp+32]
	add	eax, ecx
	cmp	eax, esi
	jnb	.L964
.L936:
	test	edi, edi
	je	.L965
	mov	eax, ecx
	mov	edx, esi
	lea	edi, [ecx+edi*4]
	.p2align 4
	.p2align 4
	.p2align 3
.L939:
	mov	ebp, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], ebp
	cmp	eax, edi
	jne	.L939
	cmp	ebx, DWORD PTR [esp+32]
	jnb	.L932
	mov	eax, DWORD PTR [esp+32]
	lea	edx, [esi+ebx]
	sub	eax, ebx
	mov	DWORD PTR [esp], eax
	sub	eax, 1
	cmp	eax, 3
	lea	eax, [ecx+ebx]
	jbe	.L941
	lea	ebp, [ecx+1+ebx]
	mov	edi, edx
	sub	edi, ebp
	cmp	edi, 2
	jbe	.L941
	mov	edi, eax
	or	edi, edx
	and	edi, 3
	jne	.L941
	mov	ebp, DWORD PTR [esp]
	mov	DWORD PTR [esp+28], ecx
	and	ebp, -4
	lea	edi, [eax+ebp]
	.p2align 4
	.p2align 4
	.p2align 3
.L942:
	mov	ecx, DWORD PTR [eax]
	add	eax, 4
	add	edx, 4
	mov	DWORD PTR [edx-4], ecx
	cmp	eax, edi
	jne	.L942
	mov	ecx, DWORD PTR [esp+28]
	add	ebx, ebp
	cmp	DWORD PTR [esp], ebp
	je	.L932
	movzx	eax, BYTE PTR [ecx+ebx]
	mov	BYTE PTR [esi+ebx], al
	lea	eax, [ebx+1]
	cmp	eax, DWORD PTR [esp+32]
	jnb	.L932
	movzx	eax, BYTE PTR [ecx+1+ebx]
	mov	BYTE PTR [esi+1+ebx], al
	lea	eax, [ebx+2]
	cmp	eax, DWORD PTR [esp+32]
	jnb	.L932
	movzx	eax, BYTE PTR [ecx+2+ebx]
	mov	BYTE PTR [esi+2+ebx], al
.L932:
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
.L964:
	.cfi_restore_state
	mov	eax, DWORD PTR [esp+32]
	mov	edi, DWORD PTR [esp+32]
	sub	eax, 1
	test	edi, edi
	je	.L932
	.p2align 4
	.p2align 4
	.p2align 3
.L937:
	movzx	edx, BYTE PTR [ecx+eax]
	mov	BYTE PTR [esi+eax], dl
	sub	eax, 1
	jnb	.L937
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
.L965:
	.cfi_restore_state
	lea	edx, [esi+ebx]
	lea	eax, [ecx+ebx]
	mov	ebx, DWORD PTR [esp+32]
	test	ebx, ebx
	je	.L932
.L941:
	add	ecx, DWORD PTR [esp+32]
	.p2align 4
	.p2align 4
	.p2align 3
.L944:
	movzx	ebx, BYTE PTR [eax]
	add	eax, 1
	add	edx, 1
	mov	BYTE PTR [edx-1], bl
	cmp	eax, ecx
	jne	.L944
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
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
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
	fstp	DWORD PTR [esp]
	fld	DWORD PTR [esp]
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
	jns	.L972
	fadd	DWORD PTR .LC13
.L972:
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
	jns	.L975
	fadd	DWORD PTR .LC13
.L975:
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
	jne	.L981
	mov	eax, edx
	sar	eax, 14
	jne	.L978
	mov	eax, edx
	shr	eax, 13
	jne	.L982
	mov	eax, edx
	shr	eax, 12
	jne	.L983
	mov	eax, edx
	shr	eax, 11
	jne	.L984
	mov	eax, edx
	shr	eax, 10
	jne	.L985
	mov	eax, edx
	shr	eax, 9
	jne	.L986
	mov	eax, edx
	shr	eax, 8
	jne	.L987
	mov	eax, edx
	shr	eax, 7
	jne	.L988
	mov	eax, edx
	shr	eax, 6
	jne	.L989
	mov	eax, edx
	shr	eax, 5
	jne	.L990
	mov	eax, edx
	shr	eax, 4
	jne	.L991
	mov	eax, edx
	shr	eax, 3
	jne	.L992
	mov	eax, edx
	shr	eax, 2
	jne	.L993
	shr	edx
	jne	.L994
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
	ret
.L994:
	mov	eax, 14
.L978:
	ret
.L981:
	xor	eax, eax
	ret
.L992:
	mov	eax, 12
	ret
.L982:
	mov	eax, 2
	ret
.L983:
	mov	eax, 3
	ret
.L984:
	mov	eax, 4
	ret
.L985:
	mov	eax, 5
	ret
.L986:
	mov	eax, 6
	ret
.L987:
	mov	eax, 7
	ret
.L988:
	mov	eax, 8
	ret
.L989:
	mov	eax, 9
	ret
.L990:
	mov	eax, 10
	ret
.L991:
	mov	eax, 11
	ret
.L993:
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
	jne	.L999
	test	al, 2
	jne	.L1000
	test	al, 4
	jne	.L1001
	test	al, 8
	jne	.L1002
	test	al, 16
	jne	.L1003
	test	al, 32
	jne	.L1004
	test	al, 64
	jne	.L1005
	test	al, -128
	jne	.L1006
	test	ah, 1
	jne	.L1007
	test	ah, 2
	jne	.L1008
	test	ah, 4
	jne	.L1009
	test	ah, 8
	jne	.L1010
	test	ah, 16
	jne	.L1011
	test	ah, 32
	jne	.L1012
	test	ah, 64
	jne	.L1013
	test	ah, -128
	sete	al
	movzx	eax, al
	add	eax, 15
	ret
.L999:
	xor	eax, eax
	ret
.L1000:
	mov	eax, 1
	ret
.L1011:
	mov	eax, 12
	ret
.L1001:
	mov	eax, 2
	ret
.L1002:
	mov	eax, 3
	ret
.L1003:
	mov	eax, 4
	ret
.L1004:
	mov	eax, 5
	ret
.L1005:
	mov	eax, 6
	ret
.L1006:
	mov	eax, 7
	ret
.L1007:
	mov	eax, 8
	ret
.L1008:
	mov	eax, 9
	ret
.L1009:
	mov	eax, 10
	ret
.L1010:
	mov	eax, 11
	ret
.L1012:
	mov	eax, 13
	ret
.L1013:
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
	jnb	.L1023
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
.L1023:
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
	je	.L1026
	.p2align 5
	.p2align 4
	.p2align 3
.L1028:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1028
.L1026:
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
	je	.L1032
	test	edx, edx
	je	.L1032
	.p2align 5
	.p2align 4
	.p2align 3
.L1034:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	ebx, eax
	shr	edx
	jne	.L1034
.L1032:
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
	jb	.L1041
	jmp	.L1042
	.p2align 4,,10
	.p2align 3
.L1044:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	.L1043
	test	edx, edx
	je	.L1043
.L1041:
	test	eax, eax
	jns	.L1044
.L1042:
	xor	ebx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
.L1047:
	cmp	ecx, eax
	jb	.L1046
	sub	ecx, eax
	or	ebx, edx
.L1046:
	shr	eax
	shr	edx
	jne	.L1047
.L1045:
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	je	.L1040
	mov	ebx, ecx
.L1040:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1043:
	.cfi_restore_state
	xor	ebx, ebx
	test	edx, edx
	jne	.L1042
	jmp	.L1045
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
	ja	.L1065
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L1062
	.p2align 4,,10
	.p2align 3
.L1065:
	fstp	st(0)
	fstp	st(0)
.L1062:
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
	ja	.L1069
	fxch	st(1)
	fcompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax, al
	jmp	.L1066
	.p2align 4,,10
	.p2align 3
.L1069:
	fstp	st(0)
	fstp	st(0)
.L1066:
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
	js	.L1083
	je	.L1077
	xor	edi, edi
.L1074:
	mov	ebx, 1
	xor	esi, esi
	.p2align 6
	.p2align 4
	.p2align 3
.L1076:
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
	jne	.L1076
	test	edi, edi
	je	.L1072
	neg	esi
.L1072:
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
.L1083:
	.cfi_restore_state
	neg	edx
	mov	edi, 1
	jmp	.L1074
	.p2align 4,,10
	.p2align 3
.L1077:
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
	jns	.L1085
	neg	eax
	xor	ecx, ecx
	mov	esi, 1
.L1085:
	test	edx, edx
	jns	.L1086
	neg	edx
	mov	esi, ecx
.L1086:
	mov	ebx, eax
	mov	ecx, 1
	cmp	edx, eax
	jb	.L1087
	jmp	.L1088
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1109:
	test	ecx, ecx
	je	.L1106
.L1087:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, eax
	jb	.L1109
	test	ecx, ecx
	je	.L1106
.L1088:
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L1093:
	cmp	ebx, edx
	jb	.L1092
	sub	ebx, edx
	or	eax, ecx
.L1092:
	shr	edx
	shr	ecx
	jne	.L1093
.L1089:
	test	esi, esi
	je	.L1084
	neg	eax
.L1084:
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
.L1106:
	.cfi_restore_state
	xor	eax, eax
	jmp	.L1089
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
	jns	.L1111
	neg	ebx
	mov	esi, 1
.L1111:
	mov	eax, edx
	mov	ecx, 1
	sar	eax, 31
	xor	edx, eax
	sub	edx, eax
	mov	eax, ebx
	cmp	edx, ebx
	jb	.L1112
	jmp	.L1118
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1134:
	test	ecx, ecx
	je	.L1131
.L1112:
	add	edx, edx
	add	ecx, ecx
	cmp	edx, ebx
	jb	.L1134
	test	ecx, ecx
	je	.L1131
	.p2align 4
	.p2align 4
	.p2align 3
.L1118:
	cmp	eax, edx
	jb	.L1117
	sub	eax, edx
.L1117:
	shr	edx
	shr	ecx
	jne	.L1118
.L1114:
	test	esi, esi
	je	.L1110
	neg	eax
.L1110:
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
.L1131:
	.cfi_restore_state
	mov	eax, ebx
	jmp	.L1114
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
	jb	.L1136
	jmp	.L1192
	.p2align 4,,10
	.p2align 3
.L1139:
	lea	ebx, [eax+eax]
	lea	edx, [ecx+ecx]
	cmp	bx, si
	jnb	.L1138
	test	dx, dx
	je	.L1138
	mov	ecx, edx
	mov	eax, ebx
.L1136:
	test	ax, ax
	jns	.L1139
	xor	edx, edx
	cmp	di, ax
	jb	.L1162
	mov	esi, edi
	mov	edx, ecx
	sub	esi, eax
.L1162:
	mov	edi, eax
	mov	ebp, ecx
	shr	di
	shr	bp
	je	.L1179
.L1143:
	cmp	si, di
	jb	.L1144
	sub	esi, edi
	or	edx, ebp
.L1144:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 2
	shr	di, 2
	je	.L1179
	cmp	si, bx
	jb	.L1145
	sub	esi, ebx
	or	edx, edi
.L1145:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 3
	shr	di, 3
	je	.L1179
	cmp	si, bx
	jb	.L1146
	sub	esi, ebx
	or	edx, edi
.L1146:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 4
	shr	di, 4
	je	.L1179
	cmp	si, bx
	jb	.L1147
	sub	esi, ebx
	or	edx, edi
.L1147:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 5
	shr	di, 5
	je	.L1179
	cmp	si, bx
	jb	.L1148
	sub	esi, ebx
	or	edx, edi
.L1148:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 6
	shr	di, 6
	je	.L1179
	cmp	si, bx
	jb	.L1149
	sub	esi, ebx
	or	edx, edi
.L1149:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 7
	shr	di, 7
	je	.L1179
	cmp	si, bx
	jnb	.L1193
.L1150:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 8
	shr	di, 8
	je	.L1179
	cmp	si, bx
	jnb	.L1194
.L1151:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 9
	shr	di, 9
	je	.L1179
	cmp	si, bx
	jnb	.L1195
.L1152:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 10
	shr	di, 10
	je	.L1179
	cmp	si, bx
	jnb	.L1196
.L1153:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 11
	shr	di, 11
	je	.L1179
	cmp	si, bx
	jnb	.L1197
.L1154:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 12
	shr	di, 12
	je	.L1179
	cmp	si, bx
	jb	.L1155
	sub	esi, ebx
	or	edx, edi
.L1155:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 13
	shr	di, 13
	je	.L1179
	cmp	si, bx
	jb	.L1156
	sub	esi, ebx
	or	edx, edi
.L1156:
	mov	ebx, eax
	mov	edi, ecx
	shr	bx, 14
	shr	di, 14
	je	.L1179
	cmp	si, bx
	jb	.L1157
	sub	esi, ebx
	or	edx, edi
.L1157:
	shr	ax, 15
	test	cx, cx
	jns	.L1179
	xor	ebp, ebp
	cmp	si, ax
	jb	.L1141
	sub	esi, eax
	or	edx, 1
	mov	ebp, esi
	jmp	.L1141
	.p2align 4,,10
	.p2align 3
.L1179:
	mov	ebp, esi
.L1141:
	mov	eax, DWORD PTR [esp+28]
	test	eax, eax
	jne	.L1135
	mov	ebp, edx
.L1135:
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
.L1138:
	.cfi_restore_state
	mov	ebp, edi
	test	dx, dx
	je	.L1141
	cmp	di, bx
	jb	.L1142
	mov	esi, edi
	and	cx, 32767
	and	ax, 32767
	mov	ebp, ecx
	mov	edi, eax
	sub	esi, ebx
	mov	eax, ebx
	mov	ecx, edx
	jmp	.L1143
	.p2align 4,,10
	.p2align 3
.L1193:
	sub	esi, ebx
	or	edx, edi
	jmp	.L1150
	.p2align 4,,10
	.p2align 3
.L1142:
	and	cx, 32767
	and	ax, 32767
	mov	ebp, ecx
	mov	edi, eax
	mov	ecx, edx
	mov	eax, ebx
	xor	edx, edx
	jmp	.L1143
	.p2align 4,,10
	.p2align 3
.L1194:
	sub	esi, ebx
	or	edx, edi
	jmp	.L1151
	.p2align 4,,10
	.p2align 3
.L1195:
	sub	esi, ebx
	or	edx, edi
	jmp	.L1152
	.p2align 4,,10
	.p2align 3
.L1196:
	sub	esi, ebx
	or	edx, edi
	jmp	.L1153
	.p2align 4,,10
	.p2align 3
.L1197:
	sub	esi, ebx
	or	edx, edi
	jmp	.L1154
.L1192:
	jne	.L1164
	mov	edx, 1
	xor	ebp, ebp
	jmp	.L1141
.L1164:
	mov	ebp, edi
	xor	edx, edx
	jmp	.L1141
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
	jb	.L1199
	jmp	.L1200
	.p2align 4,,10
	.p2align 3
.L1202:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jnb	.L1201
	test	edx, edx
	je	.L1201
.L1199:
	test	eax, eax
	jns	.L1202
.L1200:
	xor	ebx, ebx
	.p2align 4
	.p2align 4
	.p2align 3
.L1205:
	cmp	ecx, eax
	jb	.L1204
	sub	ecx, eax
	or	ebx, edx
.L1204:
	shr	eax
	shr	edx
	jne	.L1205
.L1203:
	mov	eax, DWORD PTR [esp+16]
	test	eax, eax
	je	.L1198
	mov	ebx, ecx
.L1198:
	mov	eax, ebx
	pop	ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1201:
	.cfi_restore_state
	xor	ebx, ebx
	test	edx, edx
	jne	.L1200
	jmp	.L1203
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
	je	.L1221
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
.L1221:
	.cfi_restore_state
	mov	eax, edx
	test	ebx, ebx
	je	.L1224
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
.L1224:
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
	je	.L1227
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
.L1227:
	.cfi_restore_state
	test	ebx, ebx
	je	.L1230
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
.L1230:
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
	jl	.L1236
	mov	eax, 2
	jg	.L1236
	xor	eax, eax
	cmp	edx, ecx
	jb	.L1236
	xor	eax, eax
	cmp	ecx, edx
	setb	al
	add	eax, 1
.L1236:
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
	jl	.L1243
	mov	eax, 1
	jg	.L1243
	mov	eax, -1
	cmp	edx, ecx
	jb	.L1243
	xor	eax, eax
	cmp	ecx, edx
	setb	al
.L1243:
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
	je	.L1252
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
.L1252:
	.cfi_restore_state
	test	ebx, ebx
	je	.L1255
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
.L1255:
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
	sub	esp, 12
	.cfi_def_cfa_offset 16
	fld	QWORD PTR [esp+16]
	mov	ecx, DWORD PTR [esp+24]
	mov	eax, ecx
	fld1
	test	cl, 1
	je	.L1268
	jmp	.L1270
	.p2align 4,,10
	.p2align 3
.L1276:
	fxch	st(1)
	jmp	.L1270
	.p2align 4,,10
	.p2align 3
.L1277:
	fxch	st(1)
.L1270:
	fmul	st, st(1)
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
.L1268:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1269
	fxch	st(1)
	fmul	st, st(0)
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	test	al, 1
	jne	.L1276
.L1275:
	fmul	st, st(0)
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
	test	al, 1
	jne	.L1277
	jmp	.L1275
	.p2align 4,,10
	.p2align 3
.L1269:
	fstp	st(1)
	test	ecx, ecx
	jns	.L1267
	fld1
	fdivrp	st(1), st
	fstp	QWORD PTR [esp]
	fld	QWORD PTR [esp]
.L1267:
	add	esp, 12
	.cfi_def_cfa_offset 4
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
	sub	esp, 4
	.cfi_def_cfa_offset 8
	fld	DWORD PTR [esp+8]
	mov	ecx, DWORD PTR [esp+12]
	mov	eax, ecx
	fld1
	test	cl, 1
	je	.L1279
	jmp	.L1281
	.p2align 4,,10
	.p2align 3
.L1287:
	fxch	st(1)
	jmp	.L1281
	.p2align 4,,10
	.p2align 3
.L1288:
	fxch	st(1)
.L1281:
	fmul	st, st(1)
	fstp	DWORD PTR [esp]
	fld	DWORD PTR [esp]
.L1279:
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	je	.L1280
	fxch	st(1)
	fmul	st, st(0)
	fstp	DWORD PTR [esp]
	fld	DWORD PTR [esp]
	test	al, 1
	jne	.L1287
.L1286:
	fmul	st, st(0)
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	fstp	DWORD PTR [esp]
	fld	DWORD PTR [esp]
	test	al, 1
	jne	.L1288
	jmp	.L1286
	.p2align 4,,10
	.p2align 3
.L1280:
	fstp	st(1)
	test	ecx, ecx
	jns	.L1278
	fld1
	fdivrp	st(1), st
	fstp	DWORD PTR [esp]
	fld	DWORD PTR [esp]
.L1278:
	add	esp, 4
	.cfi_def_cfa_offset 4
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
	jb	.L1289
	mov	eax, 2
	cmp	ecx, edx
	jb	.L1289
	xor	eax, eax
	cmp	ebx, esi
	jb	.L1289
	xor	eax, eax
	cmp	esi, ebx
	setb	al
	add	eax, 1
.L1289:
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
	jb	.L1296
	mov	eax, 1
	cmp	ecx, edx
	jb	.L1296
	mov	eax, -1
	cmp	ebx, esi
	jb	.L1296
	xor	eax, eax
	cmp	esi, ebx
	setb	al
.L1296:
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
.LC13:
	.long	1602224128
	.align 4
.LC14:
	.long	1191182336
	.globl	__divmoddi4
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
