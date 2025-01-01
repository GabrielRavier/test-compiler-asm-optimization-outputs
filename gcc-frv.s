	.file	"mini-libc.c"
	.text
	.p2align 4
	.globl memmove
	.type	memmove, @function
memmove:
	cmp gr8,gr9,icc0
	bls icc0,2,.L10
	addi gr9,#-1,gr9
	addi gr8,#-1,gr5
	bra .L2
.L4:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr5,gr10)
	addi gr10,#-1,gr10
.L2:
	cmpi gr10, #0, icc0
	bne icc0,2,.L4
.L5:
	ret
.L10:
	cmp gr8,gr9,icc0
	beq icc0,0,.L5
	setlos #0, gr4
	bra .L6
.L7:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
.L6:
	cmp gr4,gr10,icc0
	bne icc0,2,.L7
	bra .L5
	.size	memmove, .-memmove
	.p2align 4
	.globl memccpy
	.type	memccpy, @function
memccpy:
	andi gr10,#0xff,gr10
	bra .L12
.L14:
	addi gr11,#-1,gr11
	addi gr9,#1,gr9
	addi gr8,#1,gr8
.L12:
	cmpi gr11, #0, icc0
	beq icc0,0,.L13
	ldub @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmp gr10,gr4,icc0
	bne icc0,2,.L14
.L13:
	cmpi gr11, #0, icc0
	ckne icc0, cc4
	setlos #1, gr4
	cadd gr8, gr4, gr8, cc4, 1
	cmov gr0, gr8, cc4, 0
	ret
	.size	memccpy, .-memccpy
	.p2align 4
	.globl memchr
	.type	memchr, @function
memchr:
	andi gr9,#0xff,gr9
	bra .L18
.L20:
	addi gr8,#1,gr8
	addi gr10,#-1,gr10
.L18:
	cmpi gr10, #0, icc0
	beq icc0,0,.L19
	ldub @(gr8,gr0),gr4
	cmp gr9,gr4,icc0
	bne icc0,2,.L20
.L19:
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr0, gr8, cc4, 1
	ret
	.size	memchr, .-memchr
	.p2align 4
	.globl memcmp
	.type	memcmp, @function
memcmp:
	bra .L24
.L26:
	addi gr10,#-1,gr10
	addi gr8,#1,gr8
	addi gr9,#1,gr9
.L24:
	cmpi gr10, #0, icc0
	beq icc0,0,.L25
	ldub @(gr8,gr0),gr5
	ldub @(gr9,gr0),gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L26
.L25:
	cmpi gr10, #0, icc0
	beq icc0,2,.L28
	ldub @(gr8,gr0),gr8
	ldub @(gr9,gr0),gr4
	sub gr8,gr4,gr8
.L27:
	ret
.L28:
	setlos #0, gr8
	bra .L27
	.size	memcmp, .-memcmp
	.p2align 4
	.globl memcpy
	.type	memcpy, @function
memcpy:
	setlos #0, gr4
	bra .L30
.L31:
	ldub @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
.L30:
	cmp gr4,gr10,icc0
	bne icc0,2,.L31
	ret
	.size	memcpy, .-memcpy
	.p2align 4
	.globl memrchr
	.type	memrchr, @function
memrchr:
	andi gr9,#0xff,gr9
	addi gr10,#-1,gr10
.L33:
	cmpi gr10,#-1,icc0
	beq icc0,0,.L37
	ldub @(gr8,gr10),gr4
	addi gr10,#-1,gr5
	cmp gr9,gr4,icc0
	beq icc0,0,.L38
	mov gr5, gr10
	bra .L33
.L38:
	add gr8,gr10,gr8
	bra .L34
.L37:
	setlos #0, gr8
.L34:
	ret
	.size	memrchr, .-memrchr
	.p2align 4
	.globl memset
	.type	memset, @function
memset:
	add gr8,gr10,gr10
	mov gr8, gr4
	andi gr9,#0xff,gr9
	bra .L40
.L41:
	stb gr9, @(gr4,gr0)
	addi gr4,#1,gr4
.L40:
	cmp gr4,gr10,icc0
	bne icc0,2,.L41
	ret
	.size	memset, .-memset
	.p2align 4
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	bra .L43
.L44:
	addi gr9,#1,gr9
	addi gr8,#1,gr8
.L43:
	ldsb @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	bne icc0,2,.L44
	ret
	.size	stpcpy, .-stpcpy
	.p2align 4
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	andi gr9,#0xff,gr9
	bra .L46
.L48:
	addi gr8,#1,gr8
.L46:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L47
	ldub @(gr8,gr0),gr4
	cmp gr9,gr4,icc0
	bne icc0,2,.L48
.L47:
	ret
	.size	strchrnul, .-strchrnul
	.p2align 4
	.globl strchr
	.type	strchr, @function
strchr:
.L51:
	ldsb @(gr8,gr0),gr4
	cmp gr9,gr4,icc0
	beq icc0,0,.L50
	addi gr8,#1,gr8
	ldsbi @(gr8,-1),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L51
	setlos #0, gr8
.L50:
	ret
	.size	strchr, .-strchr
	.p2align 4
	.globl strcmp
	.type	strcmp, @function
strcmp:
	bra .L55
.L57:
	addi gr8,#1,gr8
	addi gr9,#1,gr9
.L55:
	ldsb @(gr8,gr0),gr5
	ldsb @(gr9,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L56
	cmpi gr5, #0, icc0
	bne icc0,2,.L57
.L56:
	ldub @(gr8,gr0),gr8
	ldub @(gr9,gr0),gr4
	sub gr8,gr4,gr8
	ret
	.size	strcmp, .-strcmp
	.p2align 4
	.globl strlen
	.type	strlen, @function
strlen:
	mov gr8, gr5
	bra .L59
.L60:
	addi gr5,#1,gr5
.L59:
	ldsb @(gr5,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L60
	sub gr5,gr8,gr8
	ret
	.size	strlen, .-strlen
	.p2align 4
	.globl strncmp
	.type	strncmp, @function
strncmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L66
	addi gr10,#-1,gr5
	add gr8,gr5,gr5
.L63:
	ldub @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L64
	ldub @(gr9,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L64
	cmp gr8,gr5,icc0
	beq icc0,0,.L64
	ldub @(gr8,gr0),gr6
	cmp gr6,gr4,icc0
	bne icc0,0,.L64
	addi gr8,#1,gr8
	addi gr9,#1,gr9
	bra .L63
.L64:
	ldub @(gr8,gr0),gr8
	ldub @(gr9,gr0),gr4
	sub gr8,gr4,gr8
.L62:
	ret
.L66:
	setlos #0, gr8
	bra .L62
	.size	strncmp, .-strncmp
	.p2align 4
	.globl swab
	.type	swab, @function
swab:
	mov gr8, gr4
	add gr8,gr10,gr10
	bra .L68
.L69:
	ldsbi @(gr4,1),gr5
	stb gr5, @(gr9,gr0)
	ldsb @(gr4,gr0),gr5
	stbi gr5, @(gr9,1)
	addi gr9,#2,gr9
	addi gr4,#2,gr4
.L68:
	sub gr10,gr4,gr5
	cmpi gr5,#1,icc0
	bgt icc0,2,.L69
	ret
	.size	swab, .-swab
	.p2align 4
	.globl isalpha
	.type	isalpha, @function
isalpha:
	ori gr8, #32, gr8
	addi gr8,#-97,gr8
	cmpi gr8,#25,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	ret
	.size	isalpha, .-isalpha
	.p2align 4
	.globl isascii
	.type	isascii, @function
isascii:
	cmpi gr8,#127,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	ret
	.size	isascii, .-isascii
	.p2align 4
	.globl isblank
	.type	isblank, @function
isblank:
	cmpi gr8,#32,icc0
	beq icc0,0,.L74
	cmpi gr8,#9,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L73:
	ret
.L74:
	setlos #1, gr8
	bra .L73
	.size	isblank, .-isblank
	.p2align 4
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpi gr8,#31,icc0
	bls icc0,2,.L77
	cmpi gr8,#127,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L76:
	ret
.L77:
	setlos #1, gr8
	bra .L76
	.size	iscntrl, .-iscntrl
	.p2align 4
	.globl isdigit
	.type	isdigit, @function
isdigit:
	addi gr8,#-48,gr8
	cmpi gr8,#9,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	ret
	.size	isdigit, .-isdigit
	.p2align 4
	.globl isgraph
	.type	isgraph, @function
isgraph:
	addi gr8,#-33,gr8
	cmpi gr8,#93,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	ret
	.size	isgraph, .-isgraph
	.p2align 4
	.globl islower
	.type	islower, @function
islower:
	addi gr8,#-97,gr8
	cmpi gr8,#25,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	ret
	.size	islower, .-islower
	.p2align 4
	.globl isprint
	.type	isprint, @function
isprint:
	addi gr8,#-32,gr8
	cmpi gr8,#94,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	ret
	.size	isprint, .-isprint
	.p2align 4
	.globl isspace
	.type	isspace, @function
isspace:
	cmpi gr8,#32,icc0
	beq icc0,0,.L84
	addi gr8,#-9,gr8
	cmpi gr8,#4,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L83:
	ret
.L84:
	setlos #1, gr8
	bra .L83
	.size	isspace, .-isspace
	.p2align 4
	.globl isupper
	.type	isupper, @function
isupper:
	addi gr8,#-65,gr8
	cmpi gr8,#25,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	ret
	.size	isupper, .-isupper
	.p2align 4
	.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmpi gr8,#31,icc0
	bls icc0,2,.L88
	addi gr8,#-127,gr4
	cmpi gr4,#32,icc0
	bls icc0,2,.L89
	setlos #-8232, gr4
	add gr8,gr4,gr4
	cmpi gr4,#1,icc0
	bls icc0,0,.L90
	sethi #hi(#-65529), gr4
	setlo #lo(#-65529), gr4
	add gr8,gr4,gr8
	cmpi gr8,#2,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L87
.L88:
	setlos #1, gr8
.L87:
	ret
.L89:
	setlos #1, gr8
	bra .L87
.L90:
	setlos #1, gr8
	bra .L87
	.size	iswcntrl, .-iswcntrl
	.p2align 4
	.globl iswdigit
	.type	iswdigit, @function
iswdigit:
	addi gr8,#-48,gr8
	cmpi gr8,#9,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	ret
	.size	iswdigit, .-iswdigit
	.p2align 4
	.globl iswprint
	.type	iswprint, @function
iswprint:
	cmpi gr8,#254,icc0
	bls icc0,0,.L99
	setlos #8231, gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L95
	setlos #-8234, gr4
	add gr8,gr4,gr4
	sethi #hi(#47061), gr5
	setlo #lo(#47061), gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L96
	sethi #hi(#-57344), gr4
	setlo #lo(#-57344), gr4
	add gr8,gr4,gr4
	setlos #8184, gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L97
	sethi #hi(#-65532), gr4
	setlo #lo(#-65532), gr4
	add gr8,gr4,gr4
	sethi #hi(#1048579), gr5
	setlo #lo(#1048579), gr5
	cmp gr4,gr5,icc0
	bhi icc0,0,.L98
	sethi #hi(#65534), gr4
	setlo #lo(#65534), gr4
	and gr8, gr4, gr8
	cmp gr8,gr4,icc0
	ckne icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L94
.L99:
	addi gr8,#1,gr8
	andi gr8, #127, gr8
	cmpi gr8,#32,icc0
	ckhi icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L94:
	ret
.L95:
	setlos #1, gr8
	bra .L94
.L96:
	setlos #1, gr8
	bra .L94
.L97:
	setlos #1, gr8
	bra .L94
.L98:
	setlos #0, gr8
	bra .L94
	.size	iswprint, .-iswprint
	.p2align 4
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi gr8,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L102
	ori gr8, #32, gr8
	addi gr8,#-97,gr8
	cmpi gr8,#5,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L101:
	ret
.L102:
	setlos #1, gr8
	bra .L101
	.size	iswxdigit, .-iswxdigit
	.p2align 4
	.globl toascii
	.type	toascii, @function
toascii:
	andi gr8, #127, gr8
	ret
	.size	toascii, .-toascii
	.p2align 4
	.globl fdim
	.type	fdim, @function
fdim:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr22, @(sp,12)
	sti gr23, @(sp,16)
	mov gr15, gr20
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr22
	mov gr11, gr23
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L107
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L108
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L111
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __subd
.L105:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L107:
	mov gr18, gr8
	mov gr19, gr9
	bra .L105
.L108:
	mov gr22, gr8
	mov gr23, gr9
	bra .L105
.L111:
	setlos #0, gr8
	setlos #0, gr9
	bra .L105
	.size	fdim, .-fdim
	.p2align 4
	.globl fdimf
	.type	fdimf, @function
fdimf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	mov gr15, gr19
	mov gr8, gr18
	mov gr9, gr20
	mov gr8, gr9
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L115
	mov gr20, gr9
	mov gr20, gr8
	mov gr19, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L116
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L119
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call __subf
.L113:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L115:
	mov gr18, gr8
	bra .L113
.L116:
	mov gr20, gr8
	bra .L113
.L119:
	setlos #0, gr8
	bra .L113
	.size	fdimf, .-fdimf
	.p2align 4
	.globl fmax
	.type	fmax, @function
fmax:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	mov gr15, gr22
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr20
	mov gr11, gr21
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L126
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L127
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L122
	cmpi gr18, #0, icc0
	bp icc0,2,.L128
	mov gr20, gr8
	mov gr21, gr9
	bra .L121
.L122:
	mov gr20, gr10
	mov gr21, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	ckne icc0, cc4
	cmov gr20, gr8, cc4, 1
	cmov gr21, gr9, cc4, 1
	cmov gr18, gr8, cc4, 0
	cmov gr19, gr9, cc4, 0
.L121:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L126:
	mov gr20, gr8
	mov gr21, gr9
	bra .L121
.L127:
	mov gr18, gr8
	mov gr19, gr9
	bra .L121
.L128:
	mov gr18, gr8
	mov gr19, gr9
	bra .L121
	.size	fmax, .-fmax
	.p2align 4
	.globl fmaxf
	.type	fmaxf, @function
fmaxf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	mov gr15, gr20
	mov gr8, gr18
	mov gr9, gr19
	mov gr8, gr9
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L133
	mov gr19, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L134
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr19, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L131
	cmpi gr18, #0, icc0
	bp icc0,2,.L135
	mov gr19, gr8
	bra .L130
.L131:
	mov gr19, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __ltsf2
	srli gr8, #31, gr8
	slli gr8,#24,gr8
	srai gr8, #24, gr8
	cmpi gr8, #0, icc0
	ckne icc0, cc4
	cmov gr19, gr8, cc4, 1
	cmov gr18, gr8, cc4, 0
.L130:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L133:
	mov gr19, gr8
	bra .L130
.L134:
	mov gr18, gr8
	bra .L130
.L135:
	mov gr18, gr8
	bra .L130
	.size	fmaxf, .-fmaxf
	.p2align 4
	.globl fmaxl
	.type	fmaxl, @function
fmaxl:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	mov gr15, gr22
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr20
	mov gr11, gr21
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L142
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L143
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L138
	cmpi gr18, #0, icc0
	bp icc0,2,.L144
	mov gr20, gr8
	mov gr21, gr9
	bra .L137
.L138:
	mov gr20, gr10
	mov gr21, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	ckne icc0, cc4
	cmov gr20, gr8, cc4, 1
	cmov gr21, gr9, cc4, 1
	cmov gr18, gr8, cc4, 0
	cmov gr19, gr9, cc4, 0
.L137:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L142:
	mov gr20, gr8
	mov gr21, gr9
	bra .L137
.L143:
	mov gr18, gr8
	mov gr19, gr9
	bra .L137
.L144:
	mov gr18, gr8
	mov gr19, gr9
	bra .L137
	.size	fmaxl, .-fmaxl
	.p2align 4
	.globl fmin
	.type	fmin, @function
fmin:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	mov gr15, gr22
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr18
	mov gr11, gr19
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L151
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L152
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L147
	cmpi gr20, #0, icc0
	bp icc0,2,.L153
	mov gr20, gr8
	mov gr21, gr9
	bra .L146
.L147:
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	ckne icc0, cc4
	cmov gr20, gr8, cc4, 1
	cmov gr21, gr9, cc4, 1
	cmov gr18, gr8, cc4, 0
	cmov gr19, gr9, cc4, 0
.L146:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L151:
	mov gr18, gr8
	mov gr19, gr9
	bra .L146
.L152:
	mov gr20, gr8
	mov gr21, gr9
	bra .L146
.L153:
	mov gr18, gr8
	mov gr19, gr9
	bra .L146
	.size	fmin, .-fmin
	.p2align 4
	.globl fminf
	.type	fminf, @function
fminf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	mov gr15, gr20
	mov gr8, gr19
	mov gr9, gr18
	mov gr8, gr9
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L158
	mov gr18, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L159
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr19, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L156
	cmpi gr19, #0, icc0
	bp icc0,2,.L160
	mov gr19, gr8
	bra .L155
.L156:
	mov gr18, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __ltsf2
	srli gr8, #31, gr8
	slli gr8,#24,gr8
	srai gr8, #24, gr8
	cmpi gr8, #0, icc0
	ckne icc0, cc4
	cmov gr19, gr8, cc4, 1
	cmov gr18, gr8, cc4, 0
.L155:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L158:
	mov gr18, gr8
	bra .L155
.L159:
	mov gr19, gr8
	bra .L155
.L160:
	mov gr18, gr8
	bra .L155
	.size	fminf, .-fminf
	.p2align 4
	.globl fminl
	.type	fminl, @function
fminl:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	mov gr15, gr22
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr18
	mov gr11, gr19
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L167
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L168
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L163
	cmpi gr20, #0, icc0
	bp icc0,2,.L169
	mov gr20, gr8
	mov gr21, gr9
	bra .L162
.L163:
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	ckne icc0, cc4
	cmov gr20, gr8, cc4, 1
	cmov gr21, gr9, cc4, 1
	cmov gr18, gr8, cc4, 0
	cmov gr19, gr9, cc4, 0
.L162:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L167:
	mov gr18, gr8
	mov gr19, gr9
	bra .L162
.L168:
	mov gr20, gr8
	mov gr21, gr9
	bra .L162
.L169:
	mov gr18, gr8
	mov gr19, gr9
	bra .L162
	.size	fminl, .-fminl
	.section	.rodata
	.p2align 2
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.p2align 4
	.globl l64a
	.type	l64a, @function
l64a:
	sethi #gotoffhi(s.0), gr5
	setlo #gotofflo(s.0), gr5
	add gr5,gr15,gr5
	sethi #gprelhi(digits), gr7
	setlo #gprello(digits), gr7
	bra .L171
.L172:
	andi gr8, #63, gr6
	ldi @(gr15,#got12(_gp)), gr4
	add gr7,gr4,gr4
	ldsb @(gr4,gr6),gr4
	stb gr4, @(gr5,gr0)
	addi gr5,#1,gr5
	srli gr8, #6, gr8
.L171:
	cmpi gr8, #0, icc0
	bne icc0,2,.L172
	stb gr0, @(gr5,gr0)
	sethi #gotoffhi(s.0), gr8
	setlo #gotofflo(s.0), gr8
	add gr8,gr15,gr8
	ret
	.size	l64a, .-l64a
	.section	.sbss,"aw",@nobits
	.p2align 3
	.type	seed, @object
	.size	seed, 8
seed:
	.zero	8
	.text
	.p2align 4
	.globl srand
	.type	srand, @function
srand:
	addi gr8,#-1,gr8
	sethi #gotoffhi(seed), gr4
	setlo #gotofflo(seed), gr4
	add gr4,gr15,gr5
	st gr0, @(gr4,gr15)
	sti gr8, @(gr5,4)
	ret
	.size	srand, .-srand
	.p2align 4
	.globl rand
	.type	rand, @function
rand:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	mov gr15, gr18
	sethi #gotoffhi(seed), gr19
	setlo #gotofflo(seed), gr19
	add gr19,gr15,gr20
	ld @(gr20,gr0), gr8
	ldi @(gr20,4), gr9
	sethi #hi(#1481765933), gr10
	setlo #lo(#1481765933), gr10
	sethi #hi(#1284865837), gr11
	setlo #lo(#1284865837), gr11
	call __mulll
	addicc gr9,#1,gr9,icc0
	addxi gr8,#0,gr8,icc0
	st gr8, @(gr20,gr0)
	sti gr9, @(gr20,4)
	ld @(gr19,gr18), gr8
	srli gr8, #1, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	rand, .-rand
	.p2align 4
	.globl insque
	.type	insque, @function
insque:
	cmpi gr9, #0, icc0
	ckeq icc0, cc5
	setlos #4, gr6
	cst gr0, @(gr8,gr6), cc5, 1
	cst gr0, @(gr8,gr0), cc5, 1
	cld @(gr9,gr0), gr4, cc5, 0
	cst gr4, @(gr8,gr0), cc5, 0
	cst gr9, @(gr8,gr6), cc5, 0
	cst gr8, @(gr9,gr0), cc5, 0
	cld @(gr8,gr0), gr4, cc5, 0
	ccmp gr4, gr0, cc5, 0
	cckne icc1, cc4, cc5, 0
	setlos #4, gr5
	andncr cc5, cc4, cc4
	cst gr8, @(gr4,gr5), cc4, 1
	ret
	.size	insque, .-insque
	.p2align 4
	.globl remque
	.type	remque, @function
remque:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	ckne icc0, cc4
	setlos #4, gr6
	cld @(gr8,gr6), gr5, cc4, 1
	cst gr5, @(gr4,gr6), cc4, 1
	ldi @(gr8,4), gr4
	cmpi gr4, #0, icc0
	ckne icc0, cc4
	cld @(gr8,gr0), gr5, cc4, 1
	cst gr5, @(gr4,gr0), cc4, 1
	ret
	.size	remque, .-remque
	.p2align 4
	.globl lsearch
	.type	lsearch, @function
lsearch:
	addi sp,#-56,sp
	sti fp, @(sp,40)
	addi sp,#40,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sti gr25, @(sp,28)
	sti gr26, @(sp,32)
	mov gr15, gr24
	mov gr8, gr23
	mov gr9, gr22
	mov gr10, gr26
	mov gr11, gr20
	mov gr12, gr25
	ld @(gr10,gr0), gr21
	mov gr9, gr19
	setlos #0, gr18
	bra .L182
.L183:
	addi gr18,#1,gr18
.L182:
	cmp gr18,gr21,icc0
	beq icc0,0,.L186
	mov gr19, gr9
	mov gr23, gr8
	ldd @(gr25,gr0), gr14
	calll @(gr14,gr0)
	add gr19,gr20,gr19
	cmpi gr8, #0, icc0
	bne icc0,2,.L183
	umul gr18,gr20,gr18
	add gr22,gr19,gr8
	bra .L184
.L186:
	addi gr21,#1,gr4
	st gr4, @(gr26,gr0)
	umul gr20,gr21,gr4
	add gr22,gr5,gr8
	mov gr20, gr10
	mov gr23, gr9
	mov gr24, gr15
	call memcpy
.L184:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(sp,24), gr24
	ldi @(sp,28), gr25
	ldi @(sp,32), gr26
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#56,sp
	jmpl @(gr5,gr0)
	.size	lsearch, .-lsearch
	.p2align 4
	.globl lfind
	.type	lfind, @function
lfind:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	mov gr8, gr23
	mov gr9, gr22
	mov gr11, gr20
	mov gr12, gr21
	ld @(gr10,gr0), gr24
	mov gr9, gr19
	setlos #0, gr18
	bra .L188
.L189:
	addi gr18,#1,gr18
.L188:
	cmp gr18,gr24,icc0
	beq icc0,0,.L192
	mov gr19, gr9
	mov gr23, gr8
	ldd @(gr21,gr0), gr14
	calll @(gr14,gr0)
	add gr19,gr20,gr19
	cmpi gr8, #0, icc0
	bne icc0,2,.L189
	umul gr18,gr20,gr18
	add gr22,gr19,gr8
	bra .L190
.L192:
	setlos #0, gr8
.L190:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(sp,24), gr24
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	lfind, .-lfind
	.p2align 4
	.globl abs
	.type	abs, @function
abs:
	cmpi gr8,#0,icc0
	cklt icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ret
	.size	abs, .-abs
	.p2align 4
	.globl atoi
	.type	atoi, @function
atoi:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	mov gr15, gr19
	mov gr8, gr18
	bra .L195
.L196:
	addi gr18,#1,gr18
.L195:
	ldsb @(gr18,gr0),gr8
	mov gr19, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L196
	ldsb @(gr18,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L202
	cmpi gr4,#45,icc0
	bne icc0,2,.L203
	setlos #1, gr5
.L197:
	addi gr18,#1,gr18
.L198:
	setlos #0, gr8
	bra .L199
.L202:
	setlos #0, gr5
	bra .L197
.L203:
	setlos #0, gr5
	bra .L198
.L200:
	smuli gr8,#10,gr8
	addi gr18,#1,gr18
	ldsbi @(gr18,-1),gr4
	addi gr4,#-48,gr4
	sub gr9,gr4,gr8
.L199:
	ldsb @(gr18,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L200
	cmpi gr5, #0, icc0
	ckeq icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	atoi, .-atoi
	.p2align 4
	.globl atol
	.type	atol, @function
atol:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	mov gr15, gr19
	mov gr8, gr18
	bra .L206
.L207:
	addi gr18,#1,gr18
.L206:
	ldsb @(gr18,gr0),gr8
	mov gr19, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L207
	ldsb @(gr18,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L213
	cmpi gr4,#45,icc0
	bne icc0,2,.L214
	setlos #1, gr5
.L208:
	addi gr18,#1,gr18
.L209:
	setlos #0, gr8
	bra .L210
.L213:
	setlos #0, gr5
	bra .L208
.L214:
	setlos #0, gr5
	bra .L209
.L211:
	smuli gr8,#10,gr8
	addi gr18,#1,gr18
	ldsbi @(gr18,-1),gr4
	addi gr4,#-48,gr4
	sub gr9,gr4,gr8
.L210:
	ldsb @(gr18,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L211
	cmpi gr5, #0, icc0
	ckeq icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	atol, .-atol
	.p2align 4
	.globl atoll
	.type	atoll, @function
atoll:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	mov gr15, gr23
	mov gr8, gr22
	bra .L217
.L218:
	addi gr22,#1,gr22
.L217:
	ldsb @(gr22,gr0),gr8
	mov gr23, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L218
	ldsb @(gr22,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L224
	cmpi gr4,#45,icc0
	bne icc0,2,.L225
	setlos #1, gr7
.L219:
	addi gr22,#1,gr22
.L220:
	setlos #0, gr8
	setlos #0, gr9
	bra .L221
.L224:
	setlos #0, gr7
	bra .L219
.L225:
	setlos #0, gr7
	bra .L220
.L222:
	srli gr9, #30, gr4
	slli gr8,#2,gr18
	or gr4, gr18, gr18
	slli gr9,#2,gr19
	addcc gr9,gr19,gr9,icc0
	addx gr8,gr18,gr8,icc0
	srli gr9, #31, gr6
	slli gr8,#1,gr5
	slli gr9,#1,gr4
	or gr6, gr5, gr8
	mov gr4, gr9
	addi gr22,#1,gr22
	ldsbi @(gr22,-1),gr4
	addi gr4,#-48,gr4
	srai gr4, #31, gr20
	subcc gr9,gr4,gr9,icc0
	subx gr8,gr20,gr8,icc0
.L221:
	ldsb @(gr22,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L222
	cmpi gr7, #0, icc0
	bne icc0,2,.L223
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
.L223:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	atoll, .-atoll
	.p2align 4
	.globl bsearch
	.type	bsearch, @function
bsearch:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	mov gr8, gr23
	mov gr9, gr21
	mov gr10, gr18
	mov gr11, gr20
	mov gr12, gr22
	bra .L228
.L235:
	srli gr18, #1, gr18
.L228:
	cmpi gr18, #0, icc0
	beq icc0,0,.L234
	srli gr18, #1, gr4
	umul gr4,gr20,gr4
	add gr21,gr5,gr19
	mov gr19, gr9
	mov gr23, gr8
	ldd @(gr22,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,0,.L235
	cmpi gr8,#0,icc0
	ble icc0,0,.L233
	add gr19,gr20,gr21
	srli gr18, #1, gr4
	addi gr18,#-1,gr18
	sub gr18,gr4,gr18
	bra .L228
.L234:
	setlos #0, gr8
.L231:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L233:
	mov gr19, gr8
	bra .L231
	.size	bsearch, .-bsearch
	.p2align 4
	.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	mov gr8, gr24
	mov gr11, gr21
	mov gr12, gr23
	mov gr13, gr22
	mov gr10, gr18
	mov gr9, gr20
	bra .L237
.L243:
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #-1, gr4
	cadd gr19, gr21, gr20, cc4, 1
	cadd gr18, gr4, gr18, cc4, 1
	srai gr18, #1, gr18
.L237:
	cmpi gr18, #0, icc0
	beq icc0,0,.L242
	srai gr18, #1, gr4
	umul gr4,gr21,gr4
	add gr20,gr5,gr19
	mov gr22, gr10
	mov gr19, gr9
	mov gr24, gr8
	ldd @(gr23,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,2,.L243
	mov gr19, gr8
	bra .L238
.L242:
	setlos #0, gr8
.L238:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(sp,24), gr24
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	bsearch_r, .-bsearch_r
	.p2align 4
	.globl div
	.type	div, @function
div:
	addi sp,#-16,sp
	sti gr3, @(sp,4)
	movsg lr, gr5
	sti gr5, @(sp,8)
	sdiv gr8,gr9,gr6
	smul gr6,gr9,gr4
	sub gr8,gr5,gr8
	st gr6, @(gr3,gr0)
	sti gr8, @(gr3,4)
	mov gr3, gr8
	ldi @(sp,8), gr5
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	div, .-div
	.p2align 4
	.globl imaxabs
	.type	imaxabs, @function
imaxabs:
	cmpi gr8, #0, icc0
	bn icc0,0,.L248
.L246:
	ret
.L248:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	bra .L246
	.size	imaxabs, .-imaxabs
	.p2align 4
	.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	sti gr3, @(fp,4)
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sti gr25, @(sp,28)
	mov gr15, gr18
	mov gr3, gr19
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr24
	mov gr11, gr25
	call __divll
	mov gr8, gr22
	mov gr9, gr23
	mov gr24, gr10
	mov gr25, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr18, gr15
	call __modll
	st gr22, @(gr19,gr0)
	sti gr23, @(gr19,4)
	sti gr8, @(gr19,8)
	sti gr9, @(gr19,12)
	mov gr19, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(sp,24), gr24
	ldi @(sp,28), gr25
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	imaxdiv, .-imaxdiv
	.p2align 4
	.globl labs
	.type	labs, @function
labs:
	cmpi gr8,#0,icc0
	cklt icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ret
	.size	labs, .-labs
	.p2align 4
	.globl ldiv
	.type	ldiv, @function
ldiv:
	addi sp,#-16,sp
	sti gr3, @(sp,4)
	movsg lr, gr5
	sti gr5, @(sp,8)
	sdiv gr8,gr9,gr6
	smul gr6,gr9,gr4
	sub gr8,gr5,gr8
	st gr6, @(gr3,gr0)
	sti gr8, @(gr3,4)
	mov gr3, gr8
	ldi @(sp,8), gr5
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	ldiv, .-ldiv
	.p2align 4
	.globl llabs
	.type	llabs, @function
llabs:
	cmpi gr8, #0, icc0
	bn icc0,0,.L255
.L253:
	ret
.L255:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	bra .L253
	.size	llabs, .-llabs
	.p2align 4
	.globl lldiv
	.type	lldiv, @function
lldiv:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	sti gr3, @(fp,4)
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sti gr25, @(sp,28)
	mov gr15, gr18
	mov gr3, gr19
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr24
	mov gr11, gr25
	call __divll
	mov gr8, gr22
	mov gr9, gr23
	mov gr24, gr10
	mov gr25, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr18, gr15
	call __modll
	st gr22, @(gr19,gr0)
	sti gr23, @(gr19,4)
	sti gr8, @(gr19,8)
	sti gr9, @(gr19,12)
	mov gr19, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(sp,24), gr24
	ldi @(sp,28), gr25
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	lldiv, .-lldiv
	.p2align 4
	.globl wcschr
	.type	wcschr, @function
wcschr:
	bra .L258
.L260:
	addi gr8,#4,gr8
.L258:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L259
	cmp gr9,gr4,icc0
	bne icc0,2,.L260
.L259:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	ckeq icc0, cc4
	cmov gr0, gr8, cc4, 1
	ret
	.size	wcschr, .-wcschr
	.p2align 4
	.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	bra .L264
.L266:
	addi gr8,#4,gr8
	addi gr9,#4,gr9
.L264:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L265
	cmpi gr5, #0, icc0
	beq icc0,0,.L265
	ld @(gr9,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L266
.L265:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L268
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L267:
	ret
.L268:
	setlos #-1, gr8
	bra .L267
	.size	wcscmp, .-wcscmp
	.p2align 4
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	setlos #0, gr4
	addi gr8,#-4,gr6
.L270:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
	ld @(gr6,gr4), gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L270
	ret
	.size	wcscpy, .-wcscpy
	.p2align 4
	.globl wcslen
	.type	wcslen, @function
wcslen:
	mov gr8, gr5
	bra .L273
.L274:
	addi gr5,#4,gr5
.L273:
	ld @(gr5,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L274
	sub gr5,gr8,gr5
	srai gr5, #2, gr8
	ret
	.size	wcslen, .-wcslen
	.p2align 4
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.L276:
	cmpi gr10, #0, icc0
	beq icc0,0,.L277
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L277
	cmpi gr5, #0, icc0
	beq icc0,0,.L277
	ld @(gr9,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L277
	addi gr10,#-1,gr10
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	bra .L276
.L277:
	cmpi gr10, #0, icc0
	beq icc0,2,.L280
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L281
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L279
.L280:
	setlos #0, gr8
.L279:
	ret
.L281:
	setlos #-1, gr8
	bra .L279
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	bra .L283
.L285:
	addi gr10,#-1,gr10
	addi gr8,#4,gr8
.L283:
	cmpi gr10, #0, icc0
	beq icc0,0,.L284
	ld @(gr8,gr0), gr4
	cmp gr9,gr4,icc0
	bne icc0,2,.L285
.L284:
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr0, gr8, cc4, 1
	ret
	.size	wmemchr, .-wmemchr
	.p2align 4
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	bra .L289
.L291:
	addi gr10,#-1,gr10
	addi gr8,#4,gr8
	addi gr9,#4,gr9
.L289:
	cmpi gr10, #0, icc0
	beq icc0,0,.L290
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L291
.L290:
	cmpi gr10, #0, icc0
	beq icc0,2,.L293
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L294
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L292
.L293:
	setlos #0, gr8
.L292:
	ret
.L294:
	setlos #-1, gr8
	bra .L292
	.size	wmemcmp, .-wmemcmp
	.p2align 4
	.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	setlos #0, gr4
	bra .L296
.L297:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
.L296:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L297
	ret
	.size	wmemcpy, .-wmemcpy
	.p2align 4
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	cmp gr8,gr9,icc0
	beq icc0,0,.L299
	sub gr8,gr9,gr4
	slli gr10,#2,gr5
	cmp gr4,gr5,icc0
	bnc icc0,2,.L304
	addi gr10,#-1,gr4
	slli gr4,#2,gr4
	bra .L301
.L302:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#-4,gr4
.L301:
	cmpi gr4,#-4,icc0
	bne icc0,2,.L302
.L299:
	ret
.L303:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
.L300:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L303
	bra .L299
.L304:
	setlos #0, gr4
	bra .L300
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl wmemset
	.type	wmemset, @function
wmemset:
	mov gr8, gr4
	bra .L306
.L307:
	addi gr4,#4,gr4
	sti gr9, @(gr4,-4)
.L306:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L307
	ret
	.size	wmemset, .-wmemset
	.p2align 4
	.globl bcopy
	.type	bcopy, @function
bcopy:
	cmp gr8,gr9,icc0
	bnc icc0,2,.L317
	addi gr8,#-1,gr8
	addi gr9,#-1,gr9
	bra .L309
.L311:
	ldsb @(gr8,gr10),gr4
	stb gr4, @(gr9,gr10)
	addi gr10,#-1,gr10
.L309:
	cmpi gr10, #0, icc0
	bne icc0,2,.L311
.L308:
	ret
.L317:
	cmp gr8,gr9,icc0
	beq icc0,0,.L308
	setlos #0, gr4
	bra .L313
.L314:
	ldsb @(gr8,gr4),gr5
	stb gr5, @(gr9,gr4)
	addi gr4,#1,gr4
.L313:
	cmp gr4,gr10,icc0
	bne icc0,2,.L314
	bra .L308
	.size	bcopy, .-bcopy
	.p2align 4
	.globl rotl64
	.type	rotl64, @function
rotl64:
	addi gr10,#-32,gr5
	sll gr9,gr5,gr11
	srli gr9, #1, gr7
	setlos #31, gr6
	sub gr6,gr10,gr4
	srl gr7, gr4, gr7
	sll gr8,gr10,gr4
	or gr7, gr4, gr4
	sll gr9,gr10,gr7
	cmpi gr5, #0, icc0
	ckp icc0, cc4
	cmov gr11, gr4, cc4, 1
	ckp icc0, cc4
	cmov gr0, gr7, cc4, 1
	sub gr0,gr10,gr10
	andi gr10, #63, gr10
	addi gr10,#-32,gr5
	srl gr8, gr5, gr12
	slli gr8,#1,gr11
	sub gr6,gr10,gr6
	sll gr11,gr6,gr6
	srl gr9, gr10, gr9
	or gr6, gr9, gr9
	srl gr8, gr10, gr8
	cmpi gr5, #0, icc0
	ckp icc0, cc4
	cmov gr12, gr9, cc4, 1
	ckp icc0, cc4
	cmov gr0, gr8, cc4, 1
	or gr8, gr4, gr8
	or gr9, gr7, gr9
	ret
	.size	rotl64, .-rotl64
	.p2align 4
	.globl rotr64
	.type	rotr64, @function
rotr64:
	addi gr10,#-32,gr5
	srl gr8, gr5, gr11
	slli gr8,#1,gr7
	setlos #31, gr6
	sub gr6,gr10,gr4
	sll gr7,gr4,gr7
	srl gr9, gr10, gr4
	or gr7, gr4, gr4
	srl gr8, gr10, gr7
	cmpi gr5, #0, icc0
	ckp icc0, cc4
	cmov gr11, gr4, cc4, 1
	ckp icc0, cc4
	cmov gr0, gr7, cc4, 1
	sub gr0,gr10,gr10
	andi gr10, #63, gr10
	addi gr10,#-32,gr5
	sll gr9,gr5,gr12
	srli gr9, #1, gr11
	sub gr6,gr10,gr6
	srl gr11, gr6, gr6
	sll gr8,gr10,gr8
	or gr6, gr8, gr8
	sll gr9,gr10,gr9
	cmpi gr5, #0, icc0
	ckp icc0, cc4
	cmov gr12, gr8, cc4, 1
	ckp icc0, cc4
	cmov gr0, gr9, cc4, 1
	or gr8, gr7, gr8
	or gr9, gr4, gr9
	ret
	.size	rotr64, .-rotr64
	.p2align 4
	.globl rotl32
	.type	rotl32, @function
rotl32:
	sll gr8,gr9,gr4
	sub gr0,gr9,gr9
	andi gr9, #31, gr9
	srl gr8, gr9, gr8
	or gr8, gr4, gr8
	ret
	.size	rotl32, .-rotl32
	.p2align 4
	.globl rotr32
	.type	rotr32, @function
rotr32:
	srl gr8, gr9, gr4
	sub gr0,gr9,gr9
	andi gr9, #31, gr9
	sll gr8,gr9,gr8
	or gr8, gr4, gr8
	ret
	.size	rotr32, .-rotr32
	.p2align 4
	.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	sll gr8,gr9,gr4
	sub gr0,gr9,gr9
	andi gr9, #31, gr9
	srl gr8, gr9, gr8
	or gr8, gr4, gr8
	ret
	.size	rotl_sz, .-rotl_sz
	.p2align 4
	.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	srl gr8, gr9, gr4
	sub gr0,gr9,gr9
	andi gr9, #31, gr9
	sll gr8,gr9,gr8
	or gr8, gr4, gr8
	ret
	.size	rotr_sz, .-rotr_sz
	.p2align 4
	.globl rotl16
	.type	rotl16, @function
rotl16:
	mov gr8, gr4
	sethi #hi(#0),gr4
	sll gr4,gr9,gr6
	setlos #16, gr5
	sub gr5,gr9,gr5
	srl gr4, gr5, gr8
	or gr8, gr6, gr8
	sethi #hi(#0),gr8
	ret
	.size	rotl16, .-rotl16
	.p2align 4
	.globl rotr16
	.type	rotr16, @function
rotr16:
	mov gr8, gr4
	sethi #hi(#0),gr4
	srl gr4, gr9, gr6
	setlos #16, gr5
	sub gr5,gr9,gr5
	sll gr4,gr5,gr8
	or gr8, gr6, gr8
	sethi #hi(#0),gr8
	ret
	.size	rotr16, .-rotr16
	.p2align 4
	.globl rotl8
	.type	rotl8, @function
rotl8:
	andi gr8,#0xff,gr8
	sll gr8,gr9,gr5
	setlos #8, gr4
	sub gr4,gr9,gr4
	srl gr8, gr4, gr8
	or gr8, gr5, gr8
	andi gr8,#0xff,gr8
	ret
	.size	rotl8, .-rotl8
	.p2align 4
	.globl rotr8
	.type	rotr8, @function
rotr8:
	andi gr8,#0xff,gr8
	srl gr8, gr9, gr5
	setlos #8, gr4
	sub gr4,gr9,gr4
	sll gr8,gr4,gr8
	or gr8, gr5, gr8
	andi gr8,#0xff,gr8
	ret
	.size	rotr8, .-rotr8
	.p2align 4
	.globl bswap_16
	.type	bswap_16, @function
bswap_16:
	mov gr8, gr4
	sethi #hi(#0),gr4
	srli gr4, #8, gr8
	andi gr4, #255, gr4
	slli gr4,#8,gr4
	or gr8, gr4, gr8
	ret
	.size	bswap_16, .-bswap_16
	.p2align 4
	.globl bswap_32
	.type	bswap_32, @function
bswap_32:
	srli gr8, #24, gr5
	sethi #hi(#16711680), gr4
	setlo #lo(#16711680), gr4
	and gr8, gr4, gr4
	srli gr4, #8, gr4
	or gr4, gr5, gr4
	sethi #hi(#65280), gr5
	setlo #lo(#65280), gr5
	and gr8, gr5, gr5
	slli gr5,#8,gr5
	or gr4, gr5, gr4
	slli gr8,#24,gr8
	or gr4, gr8, gr8
	ret
	.size	bswap_32, .-bswap_32
	.p2align 4
	.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	mov gr9, gr5
	srli gr8, #24, gr6
	sethi #hi(#16711680), gr9
	setlo #lo(#16711680), gr9
	and gr8, gr9, gr4
	srli gr4, #8, gr4
	or gr4, gr6, gr4
	sethi #hi(#65280), gr7
	setlo #lo(#65280), gr7
	and gr8, gr7, gr6
	slli gr6,#8,gr6
	or gr4, gr6, gr4
	slli gr8,#24,gr8
	srli gr5, #24, gr6
	and gr5, gr9, gr9
	srli gr9, #8, gr9
	or gr6, gr9, gr6
	or gr4, gr8, gr9
	and gr5, gr7, gr7
	slli gr7,#8,gr7
	or gr6, gr7, gr8
	slli gr5,#24,gr5
	or gr8, gr5, gr8
	ret
	.size	bswap_64, .-bswap_64
	.p2align 4
	.globl ffs
	.type	ffs, @function
ffs:
	setlos #0, gr4
.L332:
	cmpi gr4,#32,icc0
	beq icc0,0,.L336
	srl gr8, gr4, gr5
	andicc gr5, #1, gr0, icc0
	bne icc0,0,.L337
	addi gr4,#1,gr4
	bra .L332
.L337:
	addi gr4,#1,gr8
.L334:
	ret
.L336:
	setlos #0, gr8
	bra .L334
	.size	ffs, .-ffs
	.p2align 4
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmpi gr8, #0, icc0
	beq icc0,0,.L342
	setlos #1, gr4
	bra .L340
.L341:
	srai gr8, #1, gr8
	addi gr4,#1,gr4
.L340:
	andicc gr8, #1, gr0, icc0
	beq icc0,2,.L341
	mov gr4, gr8
.L339:
	ret
.L342:
	setlos #0, gr8
	bra .L339
	.size	libiberty_ffs, .-libiberty_ffs
	.p2align 4
	.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	mov gr15, gr18
	mov gr8, gr19
	sethi #hi(#4286578687), gr9
	setlo #lo(#4286578687), gr9
	call __ltsf2
	cmpi gr8, #0, icc0
	bn icc0,2,.L346
	sethi #hi(#2139095039), gr9
	setlo #lo(#2139095039), gr9
	mov gr19, gr8
	mov gr18, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L344:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L346:
	setlos #1, gr8
	bra .L344
	.size	gl_isinff, .-gl_isinff
	.p2align 4
	.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr20, @(sp,4)
	sti gr21, @(sp,8)
	mov gr15, gr18
	mov gr8, gr20
	mov gr9, gr21
	sethi #hi(#4293918719), gr10
	setlo #lo(#4293918719), gr10
	sethi #hi(#4294967295), gr11
	setlo #lo(#4294967295), gr11
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,2,.L350
	sethi #hi(#2146435071), gr10
	setlo #lo(#2146435071), gr10
	sethi #hi(#4294967295), gr11
	setlo #lo(#4294967295), gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr18, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L348:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L350:
	setlos #1, gr8
	bra .L348
	.size	gl_isinfd, .-gl_isinfd
	.p2align 4
	.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr20, @(sp,4)
	sti gr21, @(sp,8)
	mov gr15, gr18
	mov gr8, gr20
	mov gr9, gr21
	sethi #hi(#4293918719), gr10
	setlo #lo(#4293918719), gr10
	sethi #hi(#4294967295), gr11
	setlo #lo(#4294967295), gr11
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,2,.L354
	sethi #hi(#2146435071), gr10
	setlo #lo(#2146435071), gr10
	sethi #hi(#4294967295), gr11
	setlo #lo(#4294967295), gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr18, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L352:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L354:
	setlos #1, gr8
	bra .L352
	.size	gl_isinfl, .-gl_isinfl
	.p2align 4
	.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	mov gr8, gr18
	mov gr9, gr8
	call __itod
	st gr8, @(gr18,gr0)
	sti gr9, @(gr18,4)
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	_Qp_itoq, .-_Qp_itoq
	.p2align 4
	.globl ldexpf
	.type	ldexpf, @function
ldexpf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	mov gr15, gr21
	mov gr8, gr20
	mov gr9, gr18
	mov gr8, gr9
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L357
	mov gr20, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __addf
	mov gr8, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __nesf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L357
	cmpi gr18, #0, icc0
	bn icc0,0,.L364
	sethi #hi(#1073741824), gr19
	setlo #lo(#1073741824), gr19
	bra .L361
.L364:
	sethi #hi(#1056964608), gr19
	setlo #lo(#1056964608), gr19
	bra .L361
.L360:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L357
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr19
.L361:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L360
	mov gr19, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
	bra .L360
.L357:
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	ldexpf, .-ldexpf
	.p2align 4
	.globl ldexp
	.type	ldexp, @function
ldexp:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	mov gr15, gr21
	mov gr8, gr22
	mov gr9, gr23
	mov gr10, gr20
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L366
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __addd
	mov gr8, gr10
	mov gr9, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L366
	cmpi gr20, #0, icc0
	bn icc0,0,.L373
	sethi #hi(#1073741824), gr18
	setlo #lo(#1073741824), gr18
	setlos #0, gr19
	bra .L370
.L373:
	sethi #hi(#1071644672), gr18
	setlo #lo(#1071644672), gr18
	setlos #0, gr19
	bra .L370
.L369:
	srli gr20, #31, gr4
	add gr4,gr20,gr10
	sraicc gr10, #1, gr20, icc0
	beq icc0,0,.L366
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
.L370:
	andicc gr20, #1, gr0, icc0
	beq icc0,2,.L369
	mov gr18, gr10
	mov gr19, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L369
.L366:
	mov gr22, gr8
	mov gr23, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	ldexp, .-ldexp
	.p2align 4
	.globl ldexpl
	.type	ldexpl, @function
ldexpl:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	mov gr15, gr21
	mov gr8, gr22
	mov gr9, gr23
	mov gr10, gr20
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L375
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __addd
	mov gr8, gr10
	mov gr9, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L375
	cmpi gr20, #0, icc0
	bn icc0,0,.L382
	sethi #hi(#1073741824), gr18
	setlo #lo(#1073741824), gr18
	setlos #0, gr19
	bra .L379
.L382:
	sethi #hi(#1071644672), gr18
	setlo #lo(#1071644672), gr18
	setlos #0, gr19
	bra .L379
.L378:
	srli gr20, #31, gr4
	add gr4,gr20,gr10
	sraicc gr10, #1, gr20, icc0
	beq icc0,0,.L375
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
.L379:
	andicc gr20, #1, gr0, icc0
	beq icc0,2,.L378
	mov gr18, gr10
	mov gr19, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L378
.L375:
	mov gr22, gr8
	mov gr23, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	ldexpl, .-ldexpl
	.p2align 4
	.globl memxor
	.type	memxor, @function
memxor:
	setlos #0, gr4
	bra .L384
.L385:
	ldsb @(gr9,gr4),gr6
	ldsb @(gr8,gr4),gr5
	xor gr5, gr6, gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
.L384:
	cmp gr4,gr10,icc0
	bne icc0,2,.L385
	ret
	.size	memxor, .-memxor
	.p2align 4
	.globl strncat
	.type	strncat, @function
strncat:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	mov gr8, gr20
	mov gr9, gr19
	mov gr10, gr18
	call strlen
	add gr20,gr8,gr8
	bra .L387
.L389:
	addi gr19,#1,gr19
	addi gr8,#1,gr8
	addi gr18,#-1,gr18
.L387:
	cmpi gr18, #0, icc0
	beq icc0,0,.L388
	ldsb @(gr19,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	bne icc0,2,.L389
.L388:
	cmpi gr18, #0, icc0
	ckeq icc0, cc4
	cstb gr0, @(gr8,gr0), cc4, 1
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	strncat, .-strncat
	.p2align 4
	.globl strnlen
	.type	strnlen, @function
strnlen:
	mov gr8, gr5
	setlos #0, gr8
.L392:
	cmp gr8,gr9,icc0
	beq icc0,0,.L393
	ldsb @(gr5,gr8),gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L394
.L393:
	ret
.L394:
	addi gr8,#1,gr8
	bra .L392
	.size	strnlen, .-strnlen
	.p2align 4
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.L396:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L402
	mov gr9, gr5
.L399:
	ldsb @(gr5,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L403
	addi gr5,#1,gr5
	ldsbi @(gr5,-1),gr6
	ldsb @(gr8,gr0),gr4
	cmp gr6,gr4,icc0
	bne icc0,2,.L399
.L397:
	ret
.L403:
	addi gr8,#1,gr8
	bra .L396
.L402:
	setlos #0, gr8
	bra .L397
	.size	strpbrk, .-strpbrk
	.p2align 4
	.globl strrchr
	.type	strrchr, @function
strrchr:
	setlos #0, gr5
.L406:
	ldsb @(gr8,gr0),gr4
	cmp gr9,gr4,icc0
	ckeq icc0, cc4
	cmov gr8, gr5, cc4, 1
	addi gr8,#1,gr8
	ldsbi @(gr8,-1),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L406
	mov gr5, gr8
	ret
	.size	strrchr, .-strrchr
	.p2align 4
	.globl strstr
	.type	strstr, @function
strstr:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	mov gr15, gr19
	mov gr8, gr18
	mov gr9, gr20
	mov gr9, gr8
	call strlen
	mov gr8, gr21
	cmpi gr8, #0, icc0
	beq icc0,0,.L413
	ldsb @(gr20,gr0),gr22
.L411:
	mov gr22, gr9
	mov gr18, gr8
	mov gr19, gr15
	call strchr
	mov gr8, gr18
	cmpi gr8, #0, icc0
	beq icc0,0,.L415
	mov gr21, gr10
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call strncmp
	cmpi gr8, #0, icc0
	beq icc0,0,.L414
	addi gr18,#1,gr18
	bra .L411
.L415:
	setlos #0, gr8
	bra .L410
.L413:
	mov gr18, gr8
.L410:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L414:
	mov gr18, gr8
	bra .L410
	.size	strstr, .-strstr
	.p2align 4
	.globl copysign
	.type	copysign, @function
copysign:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr22, @(sp,12)
	sti gr23, @(sp,16)
	mov gr15, gr20
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr22
	mov gr11, gr23
	setlos #0, gr10
	setlos #0, gr11
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L429
.L417:
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,0,.L427
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L419
	mov gr18, gr8
	mov gr19, gr9
.L420:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L429:
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L417
.L419:
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	xor gr18, gr4, gr8
	mov gr19, gr9
	bra .L420
.L427:
	mov gr18, gr8
	mov gr19, gr9
	bra .L420
	.size	copysign, .-copysign
	.p2align 4
	.globl memmem
	.type	memmem, @function
memmem:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	mov gr15, gr21
	mov gr8, gr18
	mov gr10, gr19
	sub gr9,gr11,gr20
	add gr8,gr20,gr20
	cmpi gr11, #0, icc0
	beq icc0,0,.L431
	cmp gr9,gr11,icc0
	ckc icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L436
	addi gr10,#1,gr23
	addi gr11,#-1,gr22
	bra .L432
.L433:
	addi gr18,#1,gr18
.L432:
	cmp gr18,gr20,icc0
	bhi icc0,0,.L438
	ldsb @(gr18,gr0),gr5
	ldsb @(gr19,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L433
	addi gr18,#1,gr8
	mov gr22, gr10
	mov gr23, gr9
	mov gr21, gr15
	call memcmp
	cmpi gr8, #0, icc0
	bne icc0,2,.L433
	mov gr18, gr8
	bra .L431
.L438:
	setlos #0, gr8
.L431:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L436:
	setlos #0, gr8
	bra .L431
	.size	memmem, .-memmem
	.p2align 4
	.globl mempcpy
	.type	mempcpy, @function
mempcpy:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	mov gr10, gr18
	call memcpy
	add gr8,gr18,gr8
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	mempcpy, .-mempcpy
	.p2align 4
	.globl frexp
	.type	frexp, @function
frexp:
	addi sp,#-56,sp
	sti fp, @(sp,40)
	addi sp,#40,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sti gr25, @(sp,28)
	sti gr26, @(sp,32)
	sti gr27, @(sp,36)
	mov gr15, gr20
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr27
	setlos #0, gr10
	setlos #0, gr11
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L460
	setlos #0, gr26
.L441:
	sethi #hi(#1072693248), gr10
	setlo #lo(#1072693248), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gedf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L461
	setlos #0, gr21
	sethi #hi(#1072693248), gr22
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
	sethi #hi(#1071644672), gr24
	setlo #lo(#1071644672), gr24
	setlos #0, gr25
	bra .L443
.L460:
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
	setlos #1, gr26
	bra .L441
.L445:
	addi gr21,#1,gr21
	mov gr24, gr10
	mov gr25, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
.L443:
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gedf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L445
.L446:
	st gr21, @(gr27,gr0)
	cmpi gr26, #0, icc0
	beq icc0,2,.L450
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
.L450:
	mov gr18, gr8
	mov gr19, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(sp,24), gr24
	ldi @(sp,28), gr25
	ldi @(sp,32), gr26
	ldi @(sp,36), gr27
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#56,sp
	jmpl @(gr5,gr0)
.L461:
	sethi #hi(#1071644672), gr10
	setlo #lo(#1071644672), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L459
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	bne icc0,2,.L454
	setlos #0, gr21
	bra .L446
.L449:
	addi gr21,#-1,gr21
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __addd
	mov gr8, gr18
	mov gr9, gr19
.L448:
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,2,.L449
	bra .L446
.L454:
	setlos #0, gr21
	sethi #hi(#1071644672), gr22
	setlo #lo(#1071644672), gr22
	setlos #0, gr23
	bra .L448
.L459:
	setlos #0, gr21
	bra .L446
	.size	frexp, .-frexp
	.p2align 4
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	mov gr8, gr5
	mov gr9, gr4
	setlos #0, gr14
	setlos #0, gr15
	bra .L463
.L464:
	setlos #0, gr6
	andi gr4, #1, gr7
	subcc gr0,gr7,gr9,icc0
	subx gr0,gr6,gr8,icc0
	and gr10, gr8, gr12
	and gr11, gr9, gr13
	srli gr11, #31, gr8
	slli gr10,#1,gr10
	or gr8, gr10, gr10
	slli gr11,#1,gr11
	slli gr5,#31,gr9
	srli gr4, #1, gr4
	or gr9, gr4, gr4
	srli gr5, #1, gr5
	addcc gr15,gr13,gr15,icc0
	addx gr14,gr12,gr14,icc0
.L463:
	orcc gr5, gr4, gr0, icc0
	bne icc0,2,.L464
	mov gr14, gr8
	mov gr15, gr9
	ret
	.size	__muldi3, .-__muldi3
	.p2align 4
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	setlos #33, gr5
	setlos #1, gr4
	bra .L466
.L470:
	slli gr9,#1,gr9
	slli gr4,#1,gr4
.L466:
	cmp gr9,gr8,icc0
	bnc icc0,0,.L476
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L474
	cmpi gr9, #0, icc0
	bp icc0,2,.L470
	setlos #0, gr5
	bra .L468
.L476:
	setlos #0, gr5
	bra .L468
.L474:
	setlos #0, gr5
	bra .L468
.L472:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr4, #1, gr4
	srli gr9, #1, gr9
.L468:
	cmpi gr4, #0, icc0
	bne icc0,2,.L472
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
	.size	udivmodsi4, .-udivmodsi4
	.p2align 4
	.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	slli gr8,#24,gr8
	srai gr8, #24, gr8
	srai gr8, #7, gr4
	xorcc gr4, gr8, gr4, icc0
	beq icc0,0,.L479
	slli gr4,#8,gr8
	call __clzsi2
	addi gr8,#-1,gr8
.L478:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L479:
	setlos #7, gr8
	bra .L478
	.size	__clrsbqi2, .-__clrsbqi2
	.p2align 4
	.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr9, gr4
	srai gr8, #31, gr9
	xor gr9, gr8, gr8
	xor gr9, gr4, gr9
	orcc gr8, gr9, gr0, icc0
	beq icc0,0,.L483
	call __clzdi2
	addi gr8,#-1,gr8
.L481:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L483:
	setlos #63, gr8
	bra .L481
	.size	__clrsbdi2, .-__clrsbdi2
	.p2align 4
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	setlos #0, gr6
	bra .L485
.L486:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	srli gr8, #1, gr8
	add gr6,gr5,gr6
	slli gr9,#1,gr9
.L485:
	cmpi gr8, #0, icc0
	bne icc0,2,.L486
	mov gr6, gr8
	ret
	.size	__mulsi3, .-__mulsi3
	.p2align 4
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	srli gr10, #3, gr7
	andi gr10, #-8, gr4
	cmp gr8,gr9,icc0
	bnc icc0,2,.L488
.L490:
	mov gr9, gr5
	mov gr8, gr6
	slli gr7,#3,gr7
	add gr7,gr9,gr7
	bra .L489
.L488:
	add gr9,gr10,gr5
	cmp gr5,gr8,icc0
	bc icc0,2,.L490
	bra .L491
.L492:
	ld @(gr5,gr0), gr12
	ldi @(gr5,4), gr13
	st gr12, @(gr6,gr0)
	sti gr13, @(gr6,4)
	addi gr5,#8,gr5
	addi gr6,#8,gr6
.L489:
	cmp gr5,gr7,icc0
	bne icc0,2,.L492
	bra .L493
.L494:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
.L493:
	cmp gr10,gr4,icc0
	bhi icc0,2,.L494
.L487:
	ret
.L496:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L491:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L496
	bra .L487
	.size	__cmovd, .-__cmovd
	.p2align 4
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	srli gr10, #1, gr6
	cmp gr8,gr9,icc0
	bnc icc0,2,.L498
.L500:
	slli gr6,#1,gr6
	setlos #0, gr4
	bra .L499
.L498:
	add gr9,gr10,gr4
	cmp gr4,gr8,icc0
	bc icc0,2,.L500
	bra .L501
.L502:
	ldsh @(gr9,gr4),gr5
	sth gr5, @(gr8,gr4)
	addi gr4,#2,gr4
.L499:
	cmp gr4,gr6,icc0
	bne icc0,2,.L502
	andicc gr10, #1, gr0, icc0
	beq icc0,2,.L497
	addi gr10,#-1,gr10
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L497:
	ret
.L504:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L501:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L504
	bra .L497
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	srli gr10, #2, gr7
	andi gr10, #-4, gr4
	cmp gr8,gr9,icc0
	bnc icc0,2,.L506
.L508:
	slli gr7,#2,gr7
	setlos #0, gr5
	bra .L507
.L506:
	add gr9,gr10,gr5
	cmp gr5,gr8,icc0
	bc icc0,2,.L508
	bra .L509
.L510:
	ld @(gr9,gr5), gr6
	st gr6, @(gr8,gr5)
	addi gr5,#4,gr5
.L507:
	cmp gr5,gr7,icc0
	bne icc0,2,.L510
	bra .L511
.L512:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
.L511:
	cmp gr10,gr4,icc0
	bhi icc0,2,.L512
.L505:
	ret
.L514:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L509:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L514
	bra .L505
	.size	__cmovw, .-__cmovw
	.p2align 4
	.globl __modi
	.type	__modi, @function
__modi:
	sdiv gr8,gr9,gr4
	smul gr4,gr9,gr4
	sub gr8,gr5,gr8
	ret
	.size	__modi, .-__modi
	.p2align 4
	.globl __uitod
	.type	__uitod, @function
__uitod:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	call __floatunsidf
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__uitod, .-__uitod
	.p2align 4
	.globl __uitof
	.type	__uitof, @function
__uitof:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	call __floatunsisf
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__uitof, .-__uitof
	.p2align 4
	.globl __ulltod
	.type	__ulltod, @function
__ulltod:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	call __floatundidf
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__ulltod, .-__ulltod
	.p2align 4
	.globl __ulltof
	.type	__ulltof, @function
__ulltof:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	call __floatundisf
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__ulltof, .-__ulltof
	.p2align 4
	.globl __umodi
	.type	__umodi, @function
__umodi:
	udiv gr8,gr9,gr4
	umul gr4,gr9,gr4
	sub gr8,gr5,gr8
	ret
	.size	__umodi, .-__umodi
	.p2align 4
	.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	mov gr8, gr5
	sethi #hi(#0),gr5
	setlos #0, gr8
	setlos #15, gr6
.L522:
	cmpi gr8,#16,icc0
	beq icc0,0,.L523
	sub gr6,gr8,gr4
	sra gr5, gr4, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L523
	addi gr8,#1,gr8
	bra .L522
.L523:
	ret
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov gr8, gr5
	sethi #hi(#0),gr5
	setlos #0, gr8
.L526:
	cmpi gr8,#16,icc0
	beq icc0,0,.L527
	sra gr5, gr8, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L527
	addi gr8,#1,gr8
	bra .L526
.L527:
	ret
	.size	__ctzhi2, .-__ctzhi2
	.p2align 4
	.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	mov gr15, gr18
	mov gr8, gr19
	sethi #hi(#1191182336), gr9
	setlo #lo(#1191182336), gr9
	call __gesf2
	cmpi gr8, #0, icc0
	bp icc0,0,.L535
	mov gr19, gr8
	mov gr18, gr15
	call __ftoi
.L532:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L535:
	sethi #hi(#1191182336), gr9
	setlo #lo(#1191182336), gr9
	mov gr19, gr8
	mov gr18, gr15
	call __subf
	mov gr18, gr15
	call __ftoi
	sethi #hi(#32768), gr4
	setlo #lo(#32768), gr4
	add gr8,gr4,gr8
	bra .L532
	.size	__fixunssfsi, .-__fixunssfsi
	.p2align 4
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	sethi #hi(#0),gr8
	setlos #0, gr6
	setlos #0, gr4
	bra .L537
.L538:
	sra gr8, gr4, gr5
	andi gr5, #1, gr5
	addi gr4,#1,gr4
	add gr5,gr6,gr6
.L537:
	cmpi gr4,#16,icc0
	bne icc0,2,.L538
	andi gr6, #1, gr8
	ret
	.size	__parityhi2, .-__parityhi2
	.p2align 4
	.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	mov gr8, gr6
	sethi #hi(#0),gr6
	setlos #0, gr8
	setlos #0, gr4
	bra .L540
.L541:
	sra gr6, gr4, gr5
	andi gr5, #1, gr5
	addi gr4,#1,gr4
	add gr5,gr8,gr8
.L540:
	cmpi gr4,#16,icc0
	bne icc0,2,.L541
	ret
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	setlos #0, gr6
	bra .L543
.L544:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	srli gr8, #1, gr8
	add gr6,gr5,gr6
	slli gr9,#1,gr9
.L543:
	cmpi gr8, #0, icc0
	bne icc0,2,.L544
	mov gr6, gr8
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmpi gr8, #0, icc0
	beq icc0,0,.L549
	setlos #0, gr6
	bra .L547
.L548:
	andi gr9, #1, gr4
	umul gr4,gr8,gr4
	srli gr9, #1, gr9
	add gr6,gr5,gr6
	slli gr8,#1,gr8
.L547:
	cmpi gr9, #0, icc0
	bne icc0,2,.L548
	mov gr6, gr8
.L546:
	ret
.L549:
	setlos #0, gr8
	bra .L546
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.p2align 4
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	setlos #33, gr5
	setlos #1, gr4
	bra .L551
.L555:
	slli gr9,#1,gr9
	slli gr4,#1,gr4
.L551:
	cmp gr9,gr8,icc0
	bnc icc0,0,.L561
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L559
	cmpi gr9, #0, icc0
	bp icc0,2,.L555
	setlos #0, gr5
	bra .L553
.L561:
	setlos #0, gr5
	bra .L553
.L559:
	setlos #0, gr5
	bra .L553
.L557:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr4, #1, gr4
	srli gr9, #1, gr9
.L553:
	cmpi gr4, #0, icc0
	bne icc0,2,.L557
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
	.size	__udivmodsi4, .-__udivmodsi4
	.p2align 4
	.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	mov gr15, gr18
	mov gr8, gr19
	mov gr9, gr20
	call __ltsf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L565
	mov gr20, gr9
	mov gr19, gr8
	mov gr18, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L563:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L565:
	setlos #-1, gr8
	bra .L563
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.p2align 4
	.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr20, @(sp,4)
	sti gr21, @(sp,8)
	sti gr22, @(sp,12)
	sti gr23, @(sp,16)
	mov gr15, gr18
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr22
	mov gr11, gr23
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L569
	mov gr22, gr10
	mov gr23, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr18, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L567:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L569:
	setlos #-1, gr8
	bra .L567
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.p2align 4
	.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr4
	mov gr9, gr11
	srai gr8, #31, gr8
	srai gr9, #31, gr10
	mov gr4, gr9
	call __mulll
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.p2align 4
	.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr4
	setlos #0, gr10
	mov gr9, gr11
	setlos #0, gr8
	mov gr4, gr9
	call __mulll
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.p2align 4
	.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	cmpi gr9, #0, icc0
	ckn icc0, cc4
	setlos #1, gr4
	csub gr0, gr9, gr9, cc4, 1
	cmov gr4, gr10, cc4, 1
	cmov gr0, gr10, cc4, 0
	setlos #0, gr6
	setlos #0, gr7
	bra .L574
.L576:
	andi gr9, #1, gr4
	smul gr4,gr8,gr4
	srai gr9, #1, gr9
	add gr7,gr5,gr7
	slli gr8,#1,gr8
.L574:
	cmpi gr9, #0, icc0
	beq icc0,0,.L575
	addi gr6,#1,gr6
	cmpi gr6,#33,icc0
	bne icc0,2,.L576
.L575:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	csub gr0, gr7, gr8, cc4, 1
	cmov gr7, gr8, cc4, 0
	ret
	.size	__mulhi3, .-__mulhi3
	.p2align 4
	.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	cmpi gr8, #0, icc0
	ckn icc0, cc4
	setlos #1, gr4
	csub gr0, gr8, gr8, cc4, 1
	cmov gr4, gr18, cc4, 1
	cmov gr0, gr18, cc4, 0
	cmpi gr9, #0, icc0
	ckn icc0, cc4
	setlos #1, gr5
	csub gr0, gr9, gr9, cc4, 1
	cxor gr18, gr5, gr18, cc4, 1
	setlos #0, gr10
	call __udivmodsi4
	cmpi gr18, #0, icc0
	ckne icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__divsi3, .-__divsi3
	.p2align 4
	.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	cmpi gr8, #0, icc0
	ckn icc0, cc4
	setlos #1, gr4
	csub gr0, gr8, gr8, cc4, 1
	cmov gr4, gr18, cc4, 1
	cmov gr0, gr18, cc4, 0
	cmpi gr9,#0,icc0
	cklt icc0, cc4
	csub gr0, gr9, gr9, cc4, 1
	setlos #1, gr10
	call __udivmodsi4
	cmpi gr18, #0, icc0
	ckne icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__modsi3, .-__modsi3
	.p2align 4
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov gr8, gr5
	sethi #hi(#0),gr5
	sethi #hi(#0),gr9
	setlos #17, gr7
	setlos #1, gr4
.L590:
	cmp gr9,gr5,icc0
	bnc icc0,0,.L600
	addicc gr7, #-1, gr7, icc0
	beq icc0,0,.L598
	slli gr9,#16,gr6
	srai gr6, #16, gr6
	cmpi gr6, #0, icc0
	bn icc0,0,.L601
	slli gr9,#1,gr9
	sethi #hi(#0),gr9
	slli gr4,#1,gr4
	sethi #hi(#0),gr4
	bra .L590
.L600:
	setlos #0, gr8
	bra .L592
.L598:
	setlos #0, gr8
	bra .L592
.L601:
	setlos #0, gr8
	bra .L592
.L595:
	srli gr4, #1, gr4
	srli gr9, #1, gr9
.L592:
	cmpi gr4, #0, icc0
	beq icc0,0,.L602
	cmp gr5,gr9,icc0
	bc icc0,2,.L595
	sub gr5,gr9,gr5
	sethi #hi(#0),gr5
	or gr8, gr4, gr8
	bra .L595
.L602:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	setlos #33, gr5
	setlos #1, gr4
	bra .L604
.L608:
	slli gr9,#1,gr9
	slli gr4,#1,gr4
.L604:
	cmp gr9,gr8,icc0
	bnc icc0,0,.L614
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L612
	cmpi gr9, #0, icc0
	bp icc0,2,.L608
	setlos #0, gr5
	bra .L606
.L614:
	setlos #0, gr5
	bra .L606
.L612:
	setlos #0, gr5
	bra .L606
.L610:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr4, #1, gr4
	srli gr9, #1, gr9
.L606:
	cmpi gr4, #0, icc0
	bne icc0,2,.L610
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.p2align 4
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	mov gr8, gr4
	mov gr9, gr6
	andi gr10, #32, gr5
	cmpi gr5, #0, icc0
	ckne icc0, cc5
	setlos #-32, gr7
	cmov gr0, gr9, cc5, 1
	cadd gr10, gr7, gr10, cc5, 1
	csll gr6, gr10, gr8, cc5, 1
	ccmp gr10, gr0, cc5, 0
	cckne icc1, cc4, cc5, 0
	setlos #32, gr5
	andncr cc5, cc4, cc4
	csll gr6, gr10, gr9, cc4, 1
	csll gr4, gr10, gr8, cc4, 1
	cmov gr5, gr4, cc4, 1
	csub gr4, gr10, gr4, cc4, 1
	csrl gr6, gr4, gr6, cc4, 1
	cor gr6, gr8, gr8, cc4, 1
	cmov gr4, gr8, cc4, 0
	cmov gr6, gr9, cc4, 0
	ret
	.size	__ashldi3, .-__ashldi3
	.p2align 4
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	mov gr8, gr5
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	ckne icc0, cc5
	setlos #31, gr7
	setlos #-32, gr11
	csra gr8, gr7, gr8, cc5, 1
	cadd gr10, gr11, gr10, cc5, 1
	csra gr5, gr10, gr9, cc5, 1
	ccmp gr10, gr0, cc5, 0
	cckne icc1, cc4, cc5, 0
	setlos #32, gr6
	andncr cc5, cc4, cc4
	csra gr5, gr10, gr8, cc4, 1
	cmov gr6, gr4, cc4, 1
	csub gr4, gr10, gr4, cc4, 1
	csll gr5, gr4, gr5, cc4, 1
	csrl gr9, gr10, gr9, cc4, 1
	cor gr5, gr9, gr9, cc4, 1
	cmov gr5, gr8, cc4, 0
	ret
	.size	__ashrdi3, .-__ashrdi3
	.p2align 4
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	srli gr8, #24, gr4
	srli gr8, #8, gr11
	sethi #hi(#65280), gr13
	setlo #lo(#65280), gr13
	and gr11, gr13, gr11
	slli gr8,#8,gr6
	srli gr9, #24, gr5
	or gr6, gr5, gr5
	sethi #hi(#16711680), gr12
	setlo #lo(#16711680), gr12
	and gr5, gr12, gr7
	slli gr8,#24,gr8
	srli gr9, #8, gr5
	or gr8, gr5, gr5
	sethi #hi(#-16777216), gr6
	setlo #lo(#-16777216), gr6
	and gr5, gr6, gr6
	slli gr9,#8,gr10
	srli gr9, #24, gr14
	srli gr9, #8, gr5
	or gr5, gr8, gr5
	slli gr9,#24,gr8
	and gr5, gr13, gr5
	and gr10, gr12, gr10
	or gr4, gr11, gr9
	or gr9, gr7, gr9
	or gr9, gr6, gr9
	or gr8, gr14, gr8
	or gr8, gr5, gr8
	or gr8, gr10, gr8
	ret
	.size	__bswapdi2, .-__bswapdi2
	.p2align 4
	.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	srli gr8, #24, gr6
	srli gr8, #8, gr5
	sethi #hi(#65280), gr4
	setlo #lo(#65280), gr4
	and gr5, gr4, gr5
	slli gr8,#8,gr4
	sethi #hi(#16711680), gr7
	setlo #lo(#16711680), gr7
	and gr4, gr7, gr4
	slli gr8,#24,gr8
	or gr8, gr6, gr8
	or gr8, gr5, gr8
	or gr8, gr4, gr8
	ret
	.size	__bswapsi2, .-__bswapsi2
	.p2align 4
	.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	sethi #hi(#65535), gr4
	setlo #lo(#65535), gr4
	cmp gr8,gr4,icc0
	ckls icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#4,gr5
	setlos #16, gr4
	sub gr4,gr5,gr4
	srl gr8, gr4, gr4
	sethi #hi(#65280), gr6
	setlo #lo(#65280), gr6
	andcc gr4, gr6, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr6
	cmov gr0, gr6, cc4, 0
	slli gr6,#3,gr6
	setlos #8, gr7
	sub gr7,gr6,gr7
	srl gr4, gr7, gr4
	add gr5,gr6,gr8
	andicc gr4, #240, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#2,gr5
	setlos #4, gr6
	sub gr6,gr5,gr6
	srl gr4, gr6, gr4
	add gr8,gr5,gr8
	andicc gr4, #12, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#1,gr5
	setlos #2, gr6
	sub gr6,gr5,gr7
	srl gr4, gr7, gr4
	add gr8,gr5,gr8
	andi gr4, #2, gr5
	srli gr5, #1, gr5
	xori gr5, #1, gr5
	sub gr6,gr4,gr6
	umul gr5,gr6,gr6
	add gr8,gr7,gr8
	ret
	.size	__clzsi2, .-__clzsi2
	.p2align 4
	.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	cmp gr8,gr10,icc0
	blt icc0,0,.L630
	bgt icc0,0,.L631
	cmp gr9,gr11,icc0
	bc icc0,0,.L632
	bhi icc0,0,.L633
	setlos #1, gr8
	bra .L629
.L630:
	setlos #0, gr8
.L629:
	ret
.L631:
	setlos #2, gr8
	bra .L629
.L632:
	setlos #0, gr8
	bra .L629
.L633:
	setlos #2, gr8
	bra .L629
	.size	__cmpdi2, .-__cmpdi2
	.p2align 4
	.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	call __cmpdi2
	addi gr8,#-1,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.p2align 4
	.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	sethi #hi(#65535), gr4
	setlo #lo(#65535), gr4
	andcc gr8, gr4, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#4,gr5
	srl gr8, gr5, gr4
	andi gr4, #255, gr6
	cmpi gr6, #0, icc0
	ckeq icc0, cc4
	setlos #1, gr6
	cmov gr0, gr6, cc4, 0
	slli gr6,#3,gr6
	srl gr4, gr6, gr4
	add gr5,gr6,gr8
	andicc gr4, #15, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#2,gr5
	srl gr4, gr5, gr4
	add gr8,gr5,gr8
	andicc gr4, #3, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#1,gr5
	srl gr4, gr5, gr4
	andi gr4, #3, gr4
	add gr8,gr5,gr8
	not gr4,gr6
	andi gr6, #1, gr6
	srli gr4, #1, gr4
	setlos #2, gr5
	sub gr5,gr4,gr4
	umul gr4,gr6,gr4
	add gr8,gr5,gr8
	ret
	.size	__ctzsi2, .-__ctzsi2
	.p2align 4
	.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	mov gr8, gr5
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	ckne icc0, cc5
	setlos #-32, gr7
	cmov gr0, gr8, cc5, 1
	cadd gr10, gr7, gr10, cc5, 1
	csrl gr5, gr10, gr9, cc5, 1
	ccmp gr10, gr0, cc5, 0
	cckne icc1, cc4, cc5, 0
	setlos #32, gr6
	andncr cc5, cc4, cc4
	csrl gr5, gr10, gr8, cc4, 1
	cmov gr6, gr4, cc4, 1
	csub gr4, gr10, gr4, cc4, 1
	csll gr5, gr4, gr5, cc4, 1
	csrl gr9, gr10, gr9, cc4, 1
	cor gr5, gr9, gr9, cc4, 1
	cmov gr5, gr8, cc4, 0
	ret
	.size	__lshrdi3, .-__lshrdi3
	.p2align 4
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	sethi #hi(#65535), gr6
	setlo #lo(#65535), gr6
	and gr8, gr6, gr10
	and gr9, gr6, gr12
	umul gr10,gr12,gr4
	srli gr5, #16, gr4
	and gr6, gr5, gr7
	srli gr8, #16, gr5
	umul gr5,gr12,gr12
	add gr4,gr13,gr4
	slli gr4,#16,gr8
	add gr8,gr7,gr7
	srli gr4, #16, gr11
	srli gr8, #16, gr4
	and gr7, gr6, gr7
	srli gr9, #16, gr6
	umul gr10,gr6,gr8
	add gr4,gr9,gr4
	slli gr4,#16,gr9
	add gr9,gr7,gr9
	srli gr4, #16, gr8
	add gr8,gr11,gr8
	umul gr5,gr6,gr6
	add gr8,gr7,gr8
	ret
	.size	__muldsi3, .-__muldsi3
	.p2align 4
	.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	mov gr8, gr18
	mov gr9, gr20
	mov gr10, gr19
	mov gr11, gr21
	mov gr11, gr9
	mov gr20, gr8
	call __muldsi3
	mov gr8, gr10
	umul gr18,gr21,gr4
	umul gr19,gr20,gr20
	add gr21,gr5,gr8
	add gr8,gr10,gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.p2align 4
	.globl __negdi2
	.type	__negdi2, @function
__negdi2:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	ret
	.size	__negdi2, .-__negdi2
	.p2align 4
	.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
	xor gr9, gr8, gr9
	srli gr9, #16, gr4
	xor gr9, gr4, gr9
	srli gr9, #8, gr4
	xor gr9, gr4, gr9
	srli gr9, #4, gr4
	xor gr9, gr4, gr9
	andi gr9, #15, gr9
	setlos #27030, gr8
	sra gr8, gr9, gr8
	andi gr8, #1, gr8
	ret
	.size	__paritydi2, .-__paritydi2
	.p2align 4
	.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	srli gr8, #16, gr4
	xor gr4, gr8, gr4
	srli gr4, #8, gr5
	xor gr4, gr5, gr4
	srli gr4, #4, gr5
	xor gr4, gr5, gr4
	andi gr4, #15, gr4
	setlos #27030, gr8
	sra gr8, gr4, gr8
	andi gr8, #1, gr8
	ret
	.size	__paritysi2, .-__paritysi2
	.p2align 4
	.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	slli gr8,#31,gr4
	srli gr9, #1, gr6
	or gr4, gr6, gr6
	srli gr8, #1, gr10
	sethi #hi(#1431655765), gr7
	setlo #lo(#1431655765), gr7
	and gr10, gr7, gr4
	and gr6, gr7, gr5
	subcc gr9,gr5,gr9,icc0
	subx gr8,gr4,gr8,icc0
	slli gr8,#30,gr4
	srli gr9, #2, gr5
	or gr4, gr5, gr5
	srli gr8, #2, gr6
	sethi #hi(#858993459), gr4
	setlo #lo(#858993459), gr4
	and gr6, gr4, gr10
	and gr5, gr4, gr11
	and gr8, gr4, gr6
	and gr9, gr4, gr7
	addcc gr11,gr7,gr9,icc0
	addx gr10,gr6,gr8,icc0
	slli gr8,#28,gr6
	srli gr9, #4, gr5
	or gr6, gr5, gr5
	srli gr8, #4, gr4
	addcc gr5,gr9,gr5,icc0
	addx gr4,gr8,gr4,icc0
	sethi #hi(#252645135), gr6
	setlo #lo(#252645135), gr6
	and gr4, gr6, gr8
	and gr5, gr6, gr9
	srli gr8, #0, gr4
	add gr4,gr9,gr4
	srli gr4, #16, gr5
	add gr4,gr5,gr4
	srli gr4, #8, gr8
	add gr8,gr4,gr8
	andi gr8, #127, gr8
	ret
	.size	__popcountdi2, .-__popcountdi2
	.p2align 4
	.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	srli gr8, #1, gr4
	sethi #hi(#1431655765), gr5
	setlo #lo(#1431655765), gr5
	and gr4, gr5, gr4
	sub gr8,gr4,gr8
	srli gr8, #2, gr4
	sethi #hi(#858993459), gr5
	setlo #lo(#858993459), gr5
	and gr4, gr5, gr4
	and gr8, gr5, gr8
	add gr4,gr8,gr8
	srli gr8, #4, gr4
	add gr4,gr8,gr8
	sethi #hi(#252645135), gr4
	setlo #lo(#252645135), gr4
	and gr8, gr4, gr8
	srli gr8, #16, gr4
	add gr8,gr4,gr8
	srli gr8, #8, gr4
	add gr4,gr8,gr8
	andi gr8, #63, gr8
	ret
	.size	__popcountsi2, .-__popcountsi2
	.p2align 4
	.globl __powidf2
	.type	__powidf2, @function
__powidf2:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	mov gr15, gr19
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr18
	srli gr10, #31, gr24
	sethi #hi(#1072693248), gr22
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
	bra .L651
.L649:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L650
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
.L651:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L649
	mov gr20, gr10
	mov gr21, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L649
.L650:
	cmpi gr24, #0, icc0
	beq icc0,2,.L653
	mov gr22, gr10
	mov gr23, gr11
	sethi #hi(#1072693248), gr8
	setlo #lo(#1072693248), gr8
	setlos #0, gr9
	mov gr19, gr15
	call __divd
.L652:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(sp,24), gr24
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
.L653:
	mov gr22, gr8
	mov gr23, gr9
	bra .L652
	.size	__powidf2, .-__powidf2
	.p2align 4
	.globl __powisf2
	.type	__powisf2, @function
__powisf2:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	mov gr15, gr21
	mov gr8, gr19
	mov gr9, gr18
	srli gr9, #31, gr22
	sethi #hi(#1065353216), gr20
	setlo #lo(#1065353216), gr20
	bra .L657
.L655:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L656
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr19
.L657:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L655
	mov gr19, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
	bra .L655
.L656:
	cmpi gr22, #0, icc0
	beq icc0,2,.L659
	mov gr20, gr9
	sethi #hi(#1065353216), gr8
	setlo #lo(#1065353216), gr8
	mov gr21, gr15
	call __divf
.L658:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L659:
	mov gr20, gr8
	bra .L658
	.size	__powisf2, .-__powisf2
	.p2align 4
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	cmp gr8,gr10,icc0
	bc icc0,0,.L662
	bhi icc0,0,.L663
	cmp gr9,gr11,icc0
	bc icc0,0,.L664
	bhi icc0,0,.L665
	setlos #1, gr8
	bra .L661
.L662:
	setlos #0, gr8
.L661:
	ret
.L663:
	setlos #2, gr8
	bra .L661
.L664:
	setlos #0, gr8
	bra .L661
.L665:
	setlos #2, gr8
	bra .L661
	.size	__ucmpdi2, .-__ucmpdi2
	.p2align 4
	.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	call __ucmpdi2
	addi gr8,#-1,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.section	.sbss
	.p2align 2
	.type	s.0, @object
	.size	s.0, 7
s.0:
	.zero	7
	.globl __divf
	.globl __divd
	.globl __ftoi
	.globl __gesf2
	.globl __floatundisf
	.globl __floatundidf
	.globl __floatunsisf
	.globl __floatunsidf
	.globl __clzdi2
	.globl __clzsi2
	.globl __gedf2
	.globl __muld
	.globl __nedf2
	.globl __addd
	.globl __mulf
	.globl __nesf2
	.globl __addf
	.globl __itod
	.globl __modll
	.globl __divll
	.globl __mulll
	.globl __ltsf2
	.globl __ltdf2
	.globl __subf
	.globl __gtsf2
	.globl __unordsf2
	.globl __subd
	.globl __gtdf2
	.globl __unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
