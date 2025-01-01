	.file	"mini-libc.c"
	.text
	.p2align 4
	.globl memmove
	.type	memmove, @function
memmove:
	cmp gr8,gr9,icc0
	bls icc0,2,.L2
	addi gr9,#-1,gr9
	addi gr8,#-1,gr5
	bra .L3
.L4:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr5,gr10)
	addi gr10,#-1,gr10
.L3:
	cmpi gr10, #0, icc0
	bne icc0,2,.L4
.L5:
	ret
.L2:
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
	bra .L10
.L12:
	addi gr11,#-1,gr11
	addi gr9,#1,gr9
	addi gr8,#1,gr8
.L10:
	cmpi gr11, #0, icc0
	beq icc0,0,.L11
	ldub @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmp gr10,gr4,icc0
	bne icc0,2,.L12
.L11:
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
	bra .L16
.L18:
	addi gr8,#1,gr8
	addi gr10,#-1,gr10
.L16:
	cmpi gr10, #0, icc0
	beq icc0,0,.L17
	ldub @(gr8,gr0),gr4
	cmp gr9,gr4,icc0
	bne icc0,2,.L18
.L17:
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr0, gr8, cc4, 1
	ret
	.size	memchr, .-memchr
	.p2align 4
	.globl memcmp
	.type	memcmp, @function
memcmp:
	bra .L22
.L24:
	addi gr10,#-1,gr10
	addi gr8,#1,gr8
	addi gr9,#1,gr9
.L22:
	cmpi gr10, #0, icc0
	beq icc0,0,.L23
	ldub @(gr8,gr0),gr5
	ldub @(gr9,gr0),gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L24
.L23:
	cmpi gr10, #0, icc0
	beq icc0,2,.L26
	ldub @(gr8,gr0),gr8
	ldub @(gr9,gr0),gr4
	sub gr8,gr4,gr8
.L25:
	ret
.L26:
	setlos #0, gr8
	bra .L25
	.size	memcmp, .-memcmp
	.p2align 4
	.globl memcpy
	.type	memcpy, @function
memcpy:
	setlos #0, gr4
	bra .L28
.L29:
	ldub @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
.L28:
	cmp gr4,gr10,icc0
	bne icc0,2,.L29
	ret
	.size	memcpy, .-memcpy
	.p2align 4
	.globl memrchr
	.type	memrchr, @function
memrchr:
	andi gr9,#0xff,gr9
	addi gr10,#-1,gr10
.L31:
	cmpi gr10,#-1,icc0
	beq icc0,0,.L35
	ldub @(gr8,gr10),gr4
	addi gr10,#-1,gr5
	cmp gr9,gr4,icc0
	beq icc0,0,.L36
	mov gr5, gr10
	bra .L31
.L36:
	add gr8,gr10,gr8
	bra .L32
.L35:
	setlos #0, gr8
.L32:
	ret
	.size	memrchr, .-memrchr
	.p2align 4
	.globl memset
	.type	memset, @function
memset:
	add gr8,gr10,gr10
	mov gr8, gr4
	andi gr9,#0xff,gr9
	bra .L38
.L39:
	stb gr9, @(gr4,gr0)
	addi gr4,#1,gr4
.L38:
	cmp gr4,gr10,icc0
	bne icc0,2,.L39
	ret
	.size	memset, .-memset
	.p2align 4
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	bra .L41
.L42:
	addi gr9,#1,gr9
	addi gr8,#1,gr8
.L41:
	ldsb @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	bne icc0,2,.L42
	ret
	.size	stpcpy, .-stpcpy
	.p2align 4
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	andi gr9,#0xff,gr9
	bra .L44
.L46:
	addi gr8,#1,gr8
.L44:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L45
	ldub @(gr8,gr0),gr4
	cmp gr9,gr4,icc0
	bne icc0,2,.L46
.L45:
	ret
	.size	strchrnul, .-strchrnul
	.p2align 4
	.globl strchr
	.type	strchr, @function
strchr:
.L49:
	ldsb @(gr8,gr0),gr4
	cmp gr9,gr4,icc0
	beq icc0,0,.L48
	addi gr8,#1,gr8
	ldsbi @(gr8,-1),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L49
	setlos #0, gr8
.L48:
	ret
	.size	strchr, .-strchr
	.p2align 4
	.globl strcmp
	.type	strcmp, @function
strcmp:
	bra .L53
.L55:
	addi gr8,#1,gr8
	addi gr9,#1,gr9
.L53:
	ldsb @(gr8,gr0),gr5
	ldsb @(gr9,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L54
	cmpi gr5, #0, icc0
	bne icc0,2,.L55
.L54:
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
	bra .L57
.L58:
	addi gr5,#1,gr5
.L57:
	ldsb @(gr5,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L58
	sub gr5,gr8,gr8
	ret
	.size	strlen, .-strlen
	.p2align 4
	.globl strncmp
	.type	strncmp, @function
strncmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L64
	addi gr10,#-1,gr5
	add gr8,gr5,gr5
.L61:
	ldub @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L62
	ldub @(gr9,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L62
	cmp gr8,gr5,icc0
	beq icc0,0,.L62
	ldub @(gr8,gr0),gr6
	cmp gr6,gr4,icc0
	bne icc0,0,.L62
	addi gr8,#1,gr8
	addi gr9,#1,gr9
	bra .L61
.L62:
	ldub @(gr8,gr0),gr8
	ldub @(gr9,gr0),gr4
	sub gr8,gr4,gr8
.L60:
	ret
.L64:
	setlos #0, gr8
	bra .L60
	.size	strncmp, .-strncmp
	.p2align 4
	.globl swab
	.type	swab, @function
swab:
	mov gr8, gr4
	add gr8,gr10,gr10
	bra .L66
.L67:
	ldsbi @(gr4,1),gr5
	stb gr5, @(gr9,gr0)
	ldsb @(gr4,gr0),gr5
	stbi gr5, @(gr9,1)
	addi gr9,#2,gr9
	addi gr4,#2,gr4
.L66:
	sub gr10,gr4,gr5
	cmpi gr5,#1,icc0
	bgt icc0,2,.L67
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
	beq icc0,0,.L72
	cmpi gr8,#9,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L71:
	ret
.L72:
	setlos #1, gr8
	bra .L71
	.size	isblank, .-isblank
	.p2align 4
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpi gr8,#31,icc0
	bls icc0,2,.L75
	cmpi gr8,#127,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L74:
	ret
.L75:
	setlos #1, gr8
	bra .L74
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
	beq icc0,0,.L82
	addi gr8,#-9,gr8
	cmpi gr8,#4,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L81:
	ret
.L82:
	setlos #1, gr8
	bra .L81
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
	bls icc0,2,.L86
	addi gr8,#-127,gr4
	cmpi gr4,#32,icc0
	bls icc0,2,.L87
	setlos #-8232, gr4
	add gr8,gr4,gr4
	cmpi gr4,#1,icc0
	bls icc0,0,.L88
	sethi #hi(#-65529), gr4
	setlo #lo(#-65529), gr4
	add gr8,gr4,gr8
	cmpi gr8,#2,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L85
.L86:
	setlos #1, gr8
.L85:
	ret
.L87:
	setlos #1, gr8
	bra .L85
.L88:
	setlos #1, gr8
	bra .L85
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
	bls icc0,0,.L97
	setlos #8231, gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L93
	setlos #-8234, gr4
	add gr8,gr4,gr4
	sethi #hi(#47061), gr5
	setlo #lo(#47061), gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L94
	sethi #hi(#-57344), gr4
	setlo #lo(#-57344), gr4
	add gr8,gr4,gr4
	setlos #8184, gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L95
	sethi #hi(#-65532), gr4
	setlo #lo(#-65532), gr4
	add gr8,gr4,gr4
	sethi #hi(#1048579), gr5
	setlo #lo(#1048579), gr5
	cmp gr4,gr5,icc0
	bhi icc0,0,.L96
	sethi #hi(#65534), gr4
	setlo #lo(#65534), gr4
	and gr8, gr4, gr8
	cmp gr8,gr4,icc0
	ckne icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L92
.L97:
	addi gr8,#1,gr8
	andi gr8, #127, gr8
	cmpi gr8,#32,icc0
	ckhi icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L92:
	ret
.L93:
	setlos #1, gr8
	bra .L92
.L94:
	setlos #1, gr8
	bra .L92
.L95:
	setlos #1, gr8
	bra .L92
.L96:
	setlos #0, gr8
	bra .L92
	.size	iswprint, .-iswprint
	.p2align 4
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi gr8,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L100
	ori gr8, #32, gr8
	addi gr8,#-97,gr8
	cmpi gr8,#5,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L99:
	ret
.L100:
	setlos #1, gr8
	bra .L99
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
	bne icc0,0,.L105
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L106
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L109
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __subd
.L103:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L105:
	mov gr18, gr8
	mov gr19, gr9
	bra .L103
.L106:
	mov gr22, gr8
	mov gr23, gr9
	bra .L103
.L109:
	setlos #0, gr8
	setlos #0, gr9
	bra .L103
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
	bne icc0,0,.L113
	mov gr20, gr9
	mov gr20, gr8
	mov gr19, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L114
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L117
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call __subf
.L111:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L113:
	mov gr18, gr8
	bra .L111
.L114:
	mov gr20, gr8
	bra .L111
.L117:
	setlos #0, gr8
	bra .L111
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
	bne icc0,0,.L124
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L125
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L120
	cmpi gr18, #0, icc0
	bp icc0,2,.L126
	mov gr20, gr8
	mov gr21, gr9
	bra .L119
.L120:
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
.L119:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L124:
	mov gr20, gr8
	mov gr21, gr9
	bra .L119
.L125:
	mov gr18, gr8
	mov gr19, gr9
	bra .L119
.L126:
	mov gr18, gr8
	mov gr19, gr9
	bra .L119
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
	bne icc0,0,.L131
	mov gr19, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L132
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr19, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L129
	cmpi gr18, #0, icc0
	bp icc0,2,.L133
	mov gr19, gr8
	bra .L128
.L129:
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
.L128:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L131:
	mov gr19, gr8
	bra .L128
.L132:
	mov gr18, gr8
	bra .L128
.L133:
	mov gr18, gr8
	bra .L128
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
	bne icc0,0,.L140
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L141
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L136
	cmpi gr18, #0, icc0
	bp icc0,2,.L142
	mov gr20, gr8
	mov gr21, gr9
	bra .L135
.L136:
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
.L135:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L140:
	mov gr20, gr8
	mov gr21, gr9
	bra .L135
.L141:
	mov gr18, gr8
	mov gr19, gr9
	bra .L135
.L142:
	mov gr18, gr8
	mov gr19, gr9
	bra .L135
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
	bne icc0,0,.L149
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L150
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L145
	cmpi gr20, #0, icc0
	bp icc0,2,.L151
	mov gr20, gr8
	mov gr21, gr9
	bra .L144
.L145:
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
.L144:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L149:
	mov gr18, gr8
	mov gr19, gr9
	bra .L144
.L150:
	mov gr20, gr8
	mov gr21, gr9
	bra .L144
.L151:
	mov gr18, gr8
	mov gr19, gr9
	bra .L144
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
	bne icc0,0,.L156
	mov gr18, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L157
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr19, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L154
	cmpi gr19, #0, icc0
	bp icc0,2,.L158
	mov gr19, gr8
	bra .L153
.L154:
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
.L153:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L156:
	mov gr18, gr8
	bra .L153
.L157:
	mov gr19, gr8
	bra .L153
.L158:
	mov gr18, gr8
	bra .L153
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
	bne icc0,0,.L165
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L166
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L161
	cmpi gr20, #0, icc0
	bp icc0,2,.L167
	mov gr20, gr8
	mov gr21, gr9
	bra .L160
.L161:
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
.L160:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L165:
	mov gr18, gr8
	mov gr19, gr9
	bra .L160
.L166:
	mov gr20, gr8
	mov gr21, gr9
	bra .L160
.L167:
	mov gr18, gr8
	mov gr19, gr9
	bra .L160
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
	bra .L169
.L170:
	andi gr8, #63, gr6
	ldi @(gr15,#got12(_gp)), gr4
	add gr7,gr4,gr4
	ldsb @(gr4,gr6),gr4
	stb gr4, @(gr5,gr0)
	addi gr5,#1,gr5
	srli gr8, #6, gr8
.L169:
	cmpi gr8, #0, icc0
	bne icc0,2,.L170
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
	bra .L180
.L181:
	addi gr18,#1,gr18
.L180:
	cmp gr18,gr21,icc0
	beq icc0,0,.L184
	mov gr19, gr9
	mov gr23, gr8
	ldd @(gr25,gr0), gr14
	calll @(gr14,gr0)
	add gr19,gr20,gr19
	cmpi gr8, #0, icc0
	bne icc0,2,.L181
	umul gr18,gr20,gr18
	add gr22,gr19,gr8
	bra .L182
.L184:
	addi gr21,#1,gr4
	st gr4, @(gr26,gr0)
	umul gr20,gr21,gr4
	add gr22,gr5,gr8
	mov gr20, gr10
	mov gr23, gr9
	mov gr24, gr15
	call memcpy
.L182:
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
	bra .L186
.L187:
	addi gr18,#1,gr18
.L186:
	cmp gr18,gr24,icc0
	beq icc0,0,.L190
	mov gr19, gr9
	mov gr23, gr8
	ldd @(gr21,gr0), gr14
	calll @(gr14,gr0)
	add gr19,gr20,gr19
	cmpi gr8, #0, icc0
	bne icc0,2,.L187
	umul gr18,gr20,gr18
	add gr22,gr19,gr8
	bra .L188
.L190:
	setlos #0, gr8
.L188:
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
	bra .L193
.L194:
	addi gr18,#1,gr18
.L193:
	ldsb @(gr18,gr0),gr8
	mov gr19, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L194
	ldsb @(gr18,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L200
	cmpi gr4,#45,icc0
	bne icc0,2,.L201
	setlos #1, gr5
.L195:
	addi gr18,#1,gr18
.L196:
	setlos #0, gr8
	bra .L197
.L200:
	setlos #0, gr5
	bra .L195
.L201:
	setlos #0, gr5
	bra .L196
.L198:
	smuli gr8,#10,gr8
	addi gr18,#1,gr18
	ldsbi @(gr18,-1),gr4
	addi gr4,#-48,gr4
	sub gr9,gr4,gr8
.L197:
	ldsb @(gr18,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L198
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
	bra .L204
.L205:
	addi gr18,#1,gr18
.L204:
	ldsb @(gr18,gr0),gr8
	mov gr19, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L205
	ldsb @(gr18,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L211
	cmpi gr4,#45,icc0
	bne icc0,2,.L212
	setlos #1, gr5
.L206:
	addi gr18,#1,gr18
.L207:
	setlos #0, gr8
	bra .L208
.L211:
	setlos #0, gr5
	bra .L206
.L212:
	setlos #0, gr5
	bra .L207
.L209:
	smuli gr8,#10,gr8
	addi gr18,#1,gr18
	ldsbi @(gr18,-1),gr4
	addi gr4,#-48,gr4
	sub gr9,gr4,gr8
.L208:
	ldsb @(gr18,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L209
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
	bra .L215
.L216:
	addi gr22,#1,gr22
.L215:
	ldsb @(gr22,gr0),gr8
	mov gr23, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L216
	ldsb @(gr22,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L222
	cmpi gr4,#45,icc0
	bne icc0,2,.L223
	setlos #1, gr7
.L217:
	addi gr22,#1,gr22
.L218:
	setlos #0, gr8
	setlos #0, gr9
	bra .L219
.L222:
	setlos #0, gr7
	bra .L217
.L223:
	setlos #0, gr7
	bra .L218
.L220:
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
.L219:
	ldsb @(gr22,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L220
	cmpi gr7, #0, icc0
	bne icc0,2,.L221
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
.L221:
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
	bra .L226
.L233:
	srli gr18, #1, gr18
.L226:
	cmpi gr18, #0, icc0
	beq icc0,0,.L232
	srli gr18, #1, gr4
	umul gr4,gr20,gr4
	add gr21,gr5,gr19
	mov gr19, gr9
	mov gr23, gr8
	ldd @(gr22,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,0,.L233
	cmpi gr8,#0,icc0
	ble icc0,0,.L231
	add gr19,gr20,gr21
	srli gr18, #1, gr4
	addi gr18,#-1,gr18
	sub gr18,gr4,gr18
	bra .L226
.L232:
	setlos #0, gr8
.L229:
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
.L231:
	mov gr19, gr8
	bra .L229
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
	bra .L235
.L241:
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #-1, gr4
	cadd gr19, gr21, gr20, cc4, 1
	cadd gr18, gr4, gr18, cc4, 1
	srai gr18, #1, gr18
.L235:
	cmpi gr18, #0, icc0
	beq icc0,0,.L240
	srai gr18, #1, gr4
	umul gr4,gr21,gr4
	add gr20,gr5,gr19
	mov gr22, gr10
	mov gr19, gr9
	mov gr24, gr8
	ldd @(gr23,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,2,.L241
	mov gr19, gr8
	bra .L236
.L240:
	setlos #0, gr8
.L236:
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
	bn icc0,0,.L246
.L244:
	ret
.L246:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	bra .L244
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
	bn icc0,0,.L253
.L251:
	ret
.L253:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	bra .L251
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
	bra .L256
.L258:
	addi gr8,#4,gr8
.L256:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L257
	cmp gr9,gr4,icc0
	bne icc0,2,.L258
.L257:
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
	bra .L262
.L264:
	addi gr8,#4,gr8
	addi gr9,#4,gr9
.L262:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L263
	cmpi gr5, #0, icc0
	beq icc0,0,.L263
	ld @(gr9,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L264
.L263:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L266
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L265:
	ret
.L266:
	setlos #-1, gr8
	bra .L265
	.size	wcscmp, .-wcscmp
	.p2align 4
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	setlos #0, gr4
	addi gr8,#-4,gr6
.L268:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
	ld @(gr6,gr4), gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L268
	ret
	.size	wcscpy, .-wcscpy
	.p2align 4
	.globl wcslen
	.type	wcslen, @function
wcslen:
	mov gr8, gr5
	bra .L271
.L272:
	addi gr5,#4,gr5
.L271:
	ld @(gr5,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L272
	sub gr5,gr8,gr5
	srai gr5, #2, gr8
	ret
	.size	wcslen, .-wcslen
	.p2align 4
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.L274:
	cmpi gr10, #0, icc0
	beq icc0,0,.L275
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L275
	cmpi gr5, #0, icc0
	beq icc0,0,.L275
	ld @(gr9,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L275
	addi gr10,#-1,gr10
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	bra .L274
.L275:
	cmpi gr10, #0, icc0
	beq icc0,2,.L278
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L279
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L277
.L278:
	setlos #0, gr8
.L277:
	ret
.L279:
	setlos #-1, gr8
	bra .L277
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	bra .L281
.L283:
	addi gr10,#-1,gr10
	addi gr8,#4,gr8
.L281:
	cmpi gr10, #0, icc0
	beq icc0,0,.L282
	ld @(gr8,gr0), gr4
	cmp gr9,gr4,icc0
	bne icc0,2,.L283
.L282:
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr0, gr8, cc4, 1
	ret
	.size	wmemchr, .-wmemchr
	.p2align 4
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	bra .L287
.L289:
	addi gr10,#-1,gr10
	addi gr8,#4,gr8
	addi gr9,#4,gr9
.L287:
	cmpi gr10, #0, icc0
	beq icc0,0,.L288
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L289
.L288:
	cmpi gr10, #0, icc0
	beq icc0,2,.L291
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L292
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L290
.L291:
	setlos #0, gr8
.L290:
	ret
.L292:
	setlos #-1, gr8
	bra .L290
	.size	wmemcmp, .-wmemcmp
	.p2align 4
	.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	setlos #0, gr4
	bra .L294
.L295:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
.L294:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L295
	ret
	.size	wmemcpy, .-wmemcpy
	.p2align 4
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	cmp gr8,gr9,icc0
	beq icc0,0,.L297
	sub gr8,gr9,gr4
	slli gr10,#2,gr5
	cmp gr4,gr5,icc0
	bnc icc0,2,.L302
	addi gr10,#-1,gr4
	slli gr4,#2,gr4
	bra .L299
.L300:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#-4,gr4
.L299:
	cmpi gr4,#-4,icc0
	bne icc0,2,.L300
.L297:
	ret
.L301:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
.L298:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L301
	bra .L297
.L302:
	setlos #0, gr4
	bra .L298
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl wmemset
	.type	wmemset, @function
wmemset:
	mov gr8, gr4
	bra .L304
.L305:
	addi gr4,#4,gr4
	sti gr9, @(gr4,-4)
.L304:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L305
	ret
	.size	wmemset, .-wmemset
	.p2align 4
	.globl bcopy
	.type	bcopy, @function
bcopy:
	cmp gr8,gr9,icc0
	bnc icc0,2,.L307
	addi gr8,#-1,gr8
	addi gr9,#-1,gr9
	bra .L308
.L309:
	ldsb @(gr8,gr10),gr4
	stb gr4, @(gr9,gr10)
	addi gr10,#-1,gr10
.L308:
	cmpi gr10, #0, icc0
	bne icc0,2,.L309
.L306:
	ret
.L307:
	cmp gr8,gr9,icc0
	beq icc0,0,.L306
	setlos #0, gr4
	bra .L311
.L312:
	ldsb @(gr8,gr4),gr5
	stb gr5, @(gr9,gr4)
	addi gr4,#1,gr4
.L311:
	cmp gr4,gr10,icc0
	bne icc0,2,.L312
	bra .L306
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
	srli gr8, #8, gr8
	andi gr8,#0xff,gr8
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
.L328:
	cmpi gr4,#32,icc0
	beq icc0,0,.L332
	srl gr8, gr4, gr5
	andicc gr5, #1, gr0, icc0
	bne icc0,0,.L333
	addi gr4,#1,gr4
	bra .L328
.L333:
	addi gr4,#1,gr8
.L330:
	ret
.L332:
	setlos #0, gr8
	bra .L330
	.size	ffs, .-ffs
	.p2align 4
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmpi gr8, #0, icc0
	beq icc0,0,.L338
	setlos #1, gr4
	bra .L336
.L337:
	srai gr8, #1, gr8
	addi gr4,#1,gr4
.L336:
	andicc gr8, #1, gr0, icc0
	beq icc0,2,.L337
	mov gr4, gr8
.L335:
	ret
.L338:
	setlos #0, gr8
	bra .L335
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
	bn icc0,2,.L342
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
.L340:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L342:
	setlos #1, gr8
	bra .L340
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
	bn icc0,2,.L346
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
.L344:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L346:
	setlos #1, gr8
	bra .L344
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
	bne icc0,0,.L353
	mov gr20, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __addf
	mov gr8, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __nesf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L353
	cmpi gr18, #0, icc0
	bn icc0,0,.L360
	sethi #hi(#1073741824), gr19
	setlo #lo(#1073741824), gr19
	bra .L357
.L360:
	sethi #hi(#1056964608), gr19
	setlo #lo(#1056964608), gr19
	bra .L357
.L356:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L353
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr19
.L357:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L356
	mov gr19, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
	bra .L356
.L353:
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
	bne icc0,0,.L362
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
	beq icc0,2,.L362
	cmpi gr20, #0, icc0
	bn icc0,0,.L369
	sethi #hi(#1073741824), gr18
	setlo #lo(#1073741824), gr18
	setlos #0, gr19
	bra .L366
.L369:
	sethi #hi(#1071644672), gr18
	setlo #lo(#1071644672), gr18
	setlos #0, gr19
	bra .L366
.L365:
	srli gr20, #31, gr4
	add gr4,gr20,gr10
	sraicc gr10, #1, gr20, icc0
	beq icc0,0,.L362
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
.L366:
	andicc gr20, #1, gr0, icc0
	beq icc0,2,.L365
	mov gr18, gr10
	mov gr19, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L365
.L362:
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
	bne icc0,0,.L371
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
	beq icc0,2,.L371
	cmpi gr20, #0, icc0
	bn icc0,0,.L378
	sethi #hi(#1073741824), gr18
	setlo #lo(#1073741824), gr18
	setlos #0, gr19
	bra .L375
.L378:
	sethi #hi(#1071644672), gr18
	setlo #lo(#1071644672), gr18
	setlos #0, gr19
	bra .L375
.L374:
	srli gr20, #31, gr4
	add gr4,gr20,gr10
	sraicc gr10, #1, gr20, icc0
	beq icc0,0,.L371
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
.L375:
	andicc gr20, #1, gr0, icc0
	beq icc0,2,.L374
	mov gr18, gr10
	mov gr19, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L374
.L371:
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
	bra .L380
.L381:
	ldsb @(gr9,gr4),gr6
	ldsb @(gr8,gr4),gr5
	xor gr5, gr6, gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
.L380:
	cmp gr4,gr10,icc0
	bne icc0,2,.L381
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
	bra .L383
.L385:
	addi gr19,#1,gr19
	addi gr8,#1,gr8
	addi gr18,#-1,gr18
.L383:
	cmpi gr18, #0, icc0
	beq icc0,0,.L384
	ldsb @(gr19,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	bne icc0,2,.L385
.L384:
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
.L388:
	cmp gr8,gr9,icc0
	beq icc0,0,.L389
	ldsb @(gr5,gr8),gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L390
.L389:
	ret
.L390:
	addi gr8,#1,gr8
	bra .L388
	.size	strnlen, .-strnlen
	.p2align 4
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.L392:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L398
	mov gr9, gr5
.L395:
	ldsb @(gr5,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L399
	addi gr5,#1,gr5
	ldsbi @(gr5,-1),gr6
	ldsb @(gr8,gr0),gr4
	cmp gr6,gr4,icc0
	bne icc0,2,.L395
.L393:
	ret
.L399:
	addi gr8,#1,gr8
	bra .L392
.L398:
	setlos #0, gr8
	bra .L393
	.size	strpbrk, .-strpbrk
	.p2align 4
	.globl strrchr
	.type	strrchr, @function
strrchr:
	setlos #0, gr5
.L402:
	ldsb @(gr8,gr0),gr4
	cmp gr9,gr4,icc0
	ckeq icc0, cc4
	cmov gr8, gr5, cc4, 1
	addi gr8,#1,gr8
	ldsbi @(gr8,-1),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L402
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
	beq icc0,0,.L409
	ldsb @(gr20,gr0),gr22
.L407:
	mov gr22, gr9
	mov gr18, gr8
	mov gr19, gr15
	call strchr
	mov gr8, gr18
	cmpi gr8, #0, icc0
	beq icc0,0,.L411
	mov gr21, gr10
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call strncmp
	cmpi gr8, #0, icc0
	beq icc0,0,.L410
	addi gr18,#1,gr18
	bra .L407
.L411:
	setlos #0, gr8
	bra .L406
.L409:
	mov gr18, gr8
.L406:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L410:
	mov gr18, gr8
	bra .L406
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
	bn icc0,0,.L425
.L413:
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,0,.L423
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L415
	mov gr18, gr8
	mov gr19, gr9
.L416:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L425:
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L413
.L415:
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	xor gr18, gr4, gr8
	mov gr19, gr9
	bra .L416
.L423:
	mov gr18, gr8
	mov gr19, gr9
	bra .L416
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
	beq icc0,0,.L427
	cmp gr9,gr11,icc0
	ckc icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L432
	addi gr10,#1,gr23
	addi gr11,#-1,gr22
	bra .L428
.L429:
	addi gr18,#1,gr18
.L428:
	cmp gr18,gr20,icc0
	bhi icc0,0,.L434
	ldsb @(gr18,gr0),gr5
	ldsb @(gr19,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L429
	addi gr18,#1,gr8
	mov gr22, gr10
	mov gr23, gr9
	mov gr21, gr15
	call memcmp
	cmpi gr8, #0, icc0
	bne icc0,2,.L429
	mov gr18, gr8
	bra .L427
.L434:
	setlos #0, gr8
.L427:
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
.L432:
	setlos #0, gr8
	bra .L427
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
	bn icc0,0,.L456
	setlos #0, gr26
.L437:
	sethi #hi(#1072693248), gr10
	setlo #lo(#1072693248), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gedf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L457
	setlos #0, gr21
	sethi #hi(#1072693248), gr22
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
	sethi #hi(#1071644672), gr24
	setlo #lo(#1071644672), gr24
	setlos #0, gr25
	bra .L439
.L456:
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
	setlos #1, gr26
	bra .L437
.L441:
	addi gr21,#1,gr21
	mov gr24, gr10
	mov gr25, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
.L439:
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gedf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L441
.L442:
	st gr21, @(gr27,gr0)
	cmpi gr26, #0, icc0
	beq icc0,2,.L446
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
.L446:
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
.L457:
	sethi #hi(#1071644672), gr10
	setlo #lo(#1071644672), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L455
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	bne icc0,2,.L450
	setlos #0, gr21
	bra .L442
.L445:
	addi gr21,#-1,gr21
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __addd
	mov gr8, gr18
	mov gr9, gr19
.L444:
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,2,.L445
	bra .L442
.L450:
	setlos #0, gr21
	sethi #hi(#1071644672), gr22
	setlo #lo(#1071644672), gr22
	setlos #0, gr23
	bra .L444
.L455:
	setlos #0, gr21
	bra .L442
	.size	frexp, .-frexp
	.p2align 4
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
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
	mov gr15, gr24
	mov gr8, gr20
	mov gr9, gr18
	mov gr10, gr19
	mov gr11, gr21
	setlos #0, gr22
	setlos #0, gr23
	bra .L459
.L460:
	setlos #0, gr10
	andi gr18, #1, gr11
	mov gr19, gr8
	mov gr21, gr9
	mov gr24, gr15
	call __mulll
	srli gr21, #31, gr4
	slli gr19,#1,gr19
	or gr4, gr19, gr19
	slli gr21,#1,gr21
	slli gr20,#31,gr4
	srli gr18, #1, gr18
	or gr4, gr18, gr18
	srli gr20, #1, gr20
	addcc gr23,gr9,gr23,icc0
	addx gr22,gr8,gr22,icc0
.L459:
	orcc gr20, gr18, gr0, icc0
	bne icc0,2,.L460
	mov gr22, gr8
	mov gr23, gr9
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
	.size	__muldi3, .-__muldi3
	.p2align 4
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	setlos #33, gr5
	setlos #1, gr4
	bra .L462
.L466:
	slli gr9,#1,gr9
	slli gr4,#1,gr4
.L462:
	cmp gr9,gr8,icc0
	bnc icc0,0,.L472
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L470
	cmpi gr9, #0, icc0
	bp icc0,2,.L466
	setlos #0, gr5
	bra .L464
.L472:
	setlos #0, gr5
	bra .L464
.L470:
	setlos #0, gr5
	bra .L464
.L468:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr4, #1, gr4
	srli gr9, #1, gr9
.L464:
	cmpi gr4, #0, icc0
	bne icc0,2,.L468
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
	beq icc0,0,.L475
	slli gr4,#8,gr8
	call __clzsi2
	addi gr8,#-1,gr8
.L474:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L475:
	setlos #7, gr8
	bra .L474
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
	beq icc0,0,.L479
	call __clzdi2
	addi gr8,#-1,gr8
.L477:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L479:
	setlos #63, gr8
	bra .L477
	.size	__clrsbdi2, .-__clrsbdi2
	.p2align 4
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	setlos #0, gr6
	bra .L481
.L482:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	srli gr8, #1, gr8
	add gr6,gr5,gr6
	slli gr9,#1,gr9
.L481:
	cmpi gr8, #0, icc0
	bne icc0,2,.L482
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
	bc icc0,2,.L484
	add gr9,gr10,gr5
	cmp gr5,gr8,icc0
	bnc icc0,2,.L485
.L484:
	mov gr9, gr5
	mov gr8, gr6
	slli gr7,#3,gr7
	add gr7,gr9,gr7
	bra .L486
.L487:
	ld @(gr5,gr0), gr12
	ldi @(gr5,4), gr13
	st gr12, @(gr6,gr0)
	sti gr13, @(gr6,4)
	addi gr5,#8,gr5
	addi gr6,#8,gr6
.L486:
	cmp gr5,gr7,icc0
	bne icc0,2,.L487
	bra .L488
.L489:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
.L488:
	cmp gr10,gr4,icc0
	bhi icc0,2,.L489
.L483:
	ret
.L491:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L485:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L491
	bra .L483
	.size	__cmovd, .-__cmovd
	.p2align 4
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	srli gr10, #1, gr6
	cmp gr8,gr9,icc0
	bc icc0,2,.L494
	add gr9,gr10,gr4
	cmp gr4,gr8,icc0
	bnc icc0,2,.L495
.L494:
	slli gr6,#1,gr6
	setlos #0, gr4
	bra .L496
.L497:
	ldsh @(gr9,gr4),gr5
	sth gr5, @(gr8,gr4)
	addi gr4,#2,gr4
.L496:
	cmp gr4,gr6,icc0
	bne icc0,2,.L497
	andicc gr10, #1, gr0, icc0
	beq icc0,2,.L493
	addi gr10,#-1,gr10
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L493:
	ret
.L499:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L495:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L499
	bra .L493
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	srli gr10, #2, gr7
	andi gr10, #-4, gr4
	cmp gr8,gr9,icc0
	bc icc0,2,.L502
	add gr9,gr10,gr5
	cmp gr5,gr8,icc0
	bnc icc0,2,.L503
.L502:
	slli gr7,#2,gr7
	setlos #0, gr5
	bra .L504
.L505:
	ld @(gr9,gr5), gr6
	st gr6, @(gr8,gr5)
	addi gr5,#4,gr5
.L504:
	cmp gr5,gr7,icc0
	bne icc0,2,.L505
	bra .L506
.L507:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
.L506:
	cmp gr10,gr4,icc0
	bhi icc0,2,.L507
.L501:
	ret
.L509:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L503:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L509
	bra .L501
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
.L518:
	cmpi gr8,#16,icc0
	beq icc0,0,.L519
	sub gr6,gr8,gr4
	sra gr5, gr4, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L519
	addi gr8,#1,gr8
	bra .L518
.L519:
	ret
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov gr8, gr5
	sethi #hi(#0),gr5
	setlos #0, gr8
.L522:
	cmpi gr8,#16,icc0
	beq icc0,0,.L523
	sra gr5, gr8, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L523
	addi gr8,#1,gr8
	bra .L522
.L523:
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
	bp icc0,0,.L531
	mov gr19, gr8
	mov gr18, gr15
	call __ftoi
.L528:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L531:
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
	bra .L528
	.size	__fixunssfsi, .-__fixunssfsi
	.p2align 4
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	sethi #hi(#0),gr8
	setlos #0, gr6
	setlos #0, gr4
	bra .L533
.L534:
	sra gr8, gr4, gr5
	andi gr5, #1, gr5
	addi gr4,#1,gr4
	add gr5,gr6,gr6
.L533:
	cmpi gr4,#16,icc0
	bne icc0,2,.L534
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
	bra .L536
.L537:
	sra gr6, gr4, gr5
	andi gr5, #1, gr5
	addi gr4,#1,gr4
	add gr5,gr8,gr8
.L536:
	cmpi gr4,#16,icc0
	bne icc0,2,.L537
	ret
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	setlos #0, gr6
	bra .L539
.L540:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	srli gr8, #1, gr8
	add gr6,gr5,gr6
	slli gr9,#1,gr9
.L539:
	cmpi gr8, #0, icc0
	bne icc0,2,.L540
	mov gr6, gr8
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmpi gr8, #0, icc0
	beq icc0,0,.L545
	setlos #0, gr6
	bra .L543
.L544:
	andi gr9, #1, gr4
	umul gr4,gr8,gr4
	srli gr9, #1, gr9
	add gr6,gr5,gr6
	slli gr8,#1,gr8
.L543:
	cmpi gr9, #0, icc0
	bne icc0,2,.L544
	mov gr6, gr8
.L542:
	ret
.L545:
	setlos #0, gr8
	bra .L542
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.p2align 4
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	setlos #33, gr5
	setlos #1, gr4
	bra .L547
.L551:
	slli gr9,#1,gr9
	slli gr4,#1,gr4
.L547:
	cmp gr9,gr8,icc0
	bnc icc0,0,.L557
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L555
	cmpi gr9, #0, icc0
	bp icc0,2,.L551
	setlos #0, gr5
	bra .L549
.L557:
	setlos #0, gr5
	bra .L549
.L555:
	setlos #0, gr5
	bra .L549
.L553:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr4, #1, gr4
	srli gr9, #1, gr9
.L549:
	cmpi gr4, #0, icc0
	bne icc0,2,.L553
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
	bn icc0,0,.L561
	mov gr20, gr9
	mov gr19, gr8
	mov gr18, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L559:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L561:
	setlos #-1, gr8
	bra .L559
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
	bn icc0,0,.L565
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
.L563:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L565:
	setlos #-1, gr8
	bra .L563
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
	bra .L570
.L572:
	andi gr9, #1, gr4
	smul gr4,gr8,gr4
	srai gr9, #1, gr9
	add gr7,gr5,gr7
	slli gr8,#1,gr8
.L570:
	cmpi gr9, #0, icc0
	beq icc0,0,.L571
	addi gr6,#1,gr6
	cmpi gr6,#33,icc0
	bne icc0,2,.L572
.L571:
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
	bn icc0,0,.L581
.L578:
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
.L581:
	sub gr0,gr9,gr9
	xori gr18, #1, gr18
	andi gr18,#0xff,gr18
	bra .L578
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
.L587:
	cmp gr9,gr5,icc0
	bnc icc0,0,.L597
	addicc gr7, #-1, gr7, icc0
	beq icc0,0,.L595
	slli gr9,#16,gr6
	srai gr6, #16, gr6
	cmpi gr6, #0, icc0
	bn icc0,0,.L598
	slli gr9,#1,gr9
	sethi #hi(#0),gr9
	slli gr4,#1,gr4
	sethi #hi(#0),gr4
	bra .L587
.L597:
	setlos #0, gr8
	bra .L589
.L595:
	setlos #0, gr8
	bra .L589
.L598:
	setlos #0, gr8
	bra .L589
.L592:
	srli gr4, #1, gr4
	srli gr9, #1, gr9
.L589:
	cmpi gr4, #0, icc0
	beq icc0,0,.L599
	cmp gr5,gr9,icc0
	bc icc0,2,.L592
	sub gr5,gr9,gr5
	sethi #hi(#0),gr5
	or gr8, gr4, gr8
	bra .L592
.L599:
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
	bra .L601
.L605:
	slli gr9,#1,gr9
	slli gr4,#1,gr4
.L601:
	cmp gr9,gr8,icc0
	bnc icc0,0,.L611
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L609
	cmpi gr9, #0, icc0
	bp icc0,2,.L605
	setlos #0, gr5
	bra .L603
.L611:
	setlos #0, gr5
	bra .L603
.L609:
	setlos #0, gr5
	bra .L603
.L607:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr4, #1, gr4
	srli gr9, #1, gr9
.L603:
	cmpi gr4, #0, icc0
	bne icc0,2,.L607
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
	cmpi gr5, #0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	andi gr5,#0xff,gr5
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
	blt icc0,0,.L627
	bgt icc0,0,.L628
	cmp gr9,gr11,icc0
	bc icc0,0,.L629
	bhi icc0,0,.L630
	setlos #1, gr8
	bra .L626
.L627:
	setlos #0, gr8
.L626:
	ret
.L628:
	setlos #2, gr8
	bra .L626
.L629:
	setlos #0, gr8
	bra .L626
.L630:
	setlos #2, gr8
	bra .L626
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
	bra .L648
.L646:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L647
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
.L648:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L646
	mov gr20, gr10
	mov gr21, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L646
.L647:
	cmpi gr24, #0, icc0
	beq icc0,2,.L650
	mov gr22, gr10
	mov gr23, gr11
	sethi #hi(#1072693248), gr8
	setlo #lo(#1072693248), gr8
	setlos #0, gr9
	mov gr19, gr15
	call __divd
.L649:
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
.L650:
	mov gr22, gr8
	mov gr23, gr9
	bra .L649
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
	bra .L654
.L652:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L653
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr19
.L654:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L652
	mov gr19, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
	bra .L652
.L653:
	cmpi gr22, #0, icc0
	beq icc0,2,.L656
	mov gr20, gr9
	sethi #hi(#1065353216), gr8
	setlo #lo(#1065353216), gr8
	mov gr21, gr15
	call __divf
.L655:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L656:
	mov gr20, gr8
	bra .L655
	.size	__powisf2, .-__powisf2
	.p2align 4
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	cmp gr8,gr10,icc0
	bc icc0,0,.L659
	bhi icc0,0,.L660
	cmp gr9,gr11,icc0
	bc icc0,0,.L661
	bhi icc0,0,.L662
	setlos #1, gr8
	bra .L658
.L659:
	setlos #0, gr8
.L658:
	ret
.L660:
	setlos #2, gr8
	bra .L658
.L661:
	setlos #0, gr8
	bra .L658
.L662:
	setlos #2, gr8
	bra .L658
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
