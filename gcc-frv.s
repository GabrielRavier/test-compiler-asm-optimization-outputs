	.file	"mini-libc.c"
	.text
	.p2align 4
	.globl memmove
	.type	memmove, @function
memmove:
	cmp gr8,gr9,icc0
	bls icc0,2,.L2
	cmpi gr10, #0, icc0
	beq icc0,0,.L3
	addi gr9,#-1,gr9
	addi gr8,#-1,gr5
.L4:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr5,gr10)
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L4
.L3:
	ret
.L2:
	cmp gr8,gr9,icc0
	beq icc0,0,.L3
	cmpi gr10, #0, icc0
	beq icc0,0,.L3
	setlos #0, gr4
.L5:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L5
	bra .L3
	.size	memmove, .-memmove
	.p2align 4
	.globl memccpy
	.type	memccpy, @function
memccpy:
	andi gr10, #255, gr5
	cmpi gr11, #0, icc0
	beq icc0,0,.L11
.L10:
	ldub @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmp gr4,gr5,icc0
	beq icc0,0,.L11
	addi gr9,#1,gr9
	addi gr8,#1,gr8
	addicc gr11, #-1, gr11, icc0
	bne icc0,2,.L10
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
	andi gr9, #255, gr5
	cmpi gr10, #0, icc0
	beq icc0,0,.L18
.L17:
	ldub @(gr8,gr0),gr4
	cmp gr4,gr5,icc0
	beq icc0,0,.L18
	addi gr8,#1,gr8
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L17
.L18:
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr0, gr8, cc4, 1
	ret
	.size	memchr, .-memchr
	.p2align 4
	.globl memcmp
	.type	memcmp, @function
memcmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L25
.L24:
	ldub @(gr8,gr0),gr5
	ldub @(gr9,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L25
	addi gr8,#1,gr8
	addi gr9,#1,gr9
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L24
.L25:
	cmpi gr10, #0, icc0
	beq icc0,2,.L28
	ldub @(gr8,gr0),gr8
	ldub @(gr9,gr0),gr4
	sub gr8,gr4,gr8
.L23:
	ret
.L28:
	setlos #0, gr8
	bra .L23
	.size	memcmp, .-memcmp
	.p2align 4
	.globl memcpy
	.type	memcpy, @function
memcpy:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L31
	call memcpy
	mov gr8, gr4
.L31:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	memcpy, .-memcpy
	.p2align 4
	.globl memrchr
	.type	memrchr, @function
memrchr:
	andi gr9, #255, gr7
	addi gr10,#-1,gr4
	add gr8,gr4,gr4
	addi gr8,#-1,gr6
.L33:
	cmp gr4,gr6,icc0
	beq icc0,0,.L36
	mov gr4, gr8
	addi gr4,#-1,gr4
	ldub @(gr8,gr0),gr5
	cmp gr5,gr7,icc0
	bne icc0,2,.L33
	bra .L32
.L36:
	setlos #0, gr8
.L32:
	ret
	.size	memrchr, .-memrchr
	.p2align 4
	.globl memset
	.type	memset, @function
memset:
	cmpi gr10, #0, icc0
	beq icc0,0,.L38
	add gr8,gr10,gr5
	mov gr8, gr4
.L39:
	stb gr9, @(gr4,gr0)
	addi gr4,#1,gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L39
.L38:
	ret
	.size	memset, .-memset
	.p2align 4
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	bra .L45
.L43:
	addi gr9,#1,gr9
	addi gr8,#1,gr8
.L45:
	ldsb @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	bne icc0,2,.L43
	ret
	.size	stpcpy, .-stpcpy
	.p2align 4
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	andi gr9, #255, gr5
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L46
.L47:
	andi gr4,#0xff,gr4
	cmp gr4,gr5,icc0
	beq icc0,0,.L46
	addi gr8,#1,gr8
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L47
.L46:
	ret
	.size	strchrnul, .-strchrnul
	.p2align 4
	.globl strchr
	.type	strchr, @function
strchr:
.L54:
	ldsb @(gr8,gr0),gr4
	cmp gr4,gr9,icc0
	beq icc0,0,.L53
	addi gr8,#1,gr8
	cmpi gr4, #0, icc0
	bne icc0,2,.L54
	setlos #0, gr8
.L53:
	ret
	.size	strchr, .-strchr
	.p2align 4
	.globl strcmp
	.type	strcmp, @function
strcmp:
	ldsb @(gr8,gr0),gr5
	ldsb @(gr9,gr0),gr6
	cmp gr5,gr6,icc0
	bne icc0,0,.L58
	setlos #1, gr4
	addi gr9,#-1,gr7
.L57:
	cmpi gr5, #0, icc0
	beq icc0,0,.L58
	ldsb @(gr8,gr4),gr5
	addi gr4,#1,gr4
	ldsb @(gr7,gr4),gr6
	cmp gr5,gr6,icc0
	beq icc0,2,.L57
.L58:
	andi gr5,#0xff,gr5
	andi gr6,#0xff,gr6
	sub gr5,gr6,gr8
	ret
	.size	strcmp, .-strcmp
	.p2align 4
	.globl strlen
	.type	strlen, @function
strlen:
	ldsb @(gr8,gr0),gr4
	mov gr8, gr5
	cmpi gr4, #0, icc0
	beq icc0,0,.L62
.L63:
	addi gr5,#1,gr5
	ldsb @(gr5,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L63
.L62:
	sub gr5,gr8,gr8
	ret
	.size	strlen, .-strlen
	.p2align 4
	.globl strncmp
	.type	strncmp, @function
strncmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L71
	ldub @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L68
	addi gr10,#-1,gr6
	add gr8,gr6,gr6
.L69:
	ldub @(gr9,gr0),gr5
	cmpi gr5, #0, icc0
	beq icc0,0,.L68
	cmp gr8,gr6,icc0
	beq icc0,0,.L68
	cmp gr5,gr4,icc0
	bne icc0,0,.L68
	addi gr8,#1,gr8
	addi gr9,#1,gr9
	ldub @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L69
.L68:
	ldub @(gr9,gr0),gr5
	sub gr4,gr5,gr8
.L66:
	ret
.L71:
	setlos #0, gr8
	bra .L66
	.size	strncmp, .-strncmp
	.p2align 4
	.globl swab
	.type	swab, @function
swab:
	cmpi gr10,#1,icc0
	ble icc0,0,.L72
	andi gr10, #-2, gr5
	add gr8,gr5,gr5
.L74:
	ldsbi @(gr8,1),gr4
	stb gr4, @(gr9,gr0)
	ldsb @(gr8,gr0),gr4
	stbi gr4, @(gr9,1)
	addi gr9,#2,gr9
	addi gr8,#2,gr8
	cmp gr8,gr5,icc0
	bne icc0,2,.L74
.L72:
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
	ret
	.size	isascii, .-isascii
	.p2align 4
	.globl isblank
	.type	isblank, @function
isblank:
	cmpi gr8,#32,icc0
	beq icc0,0,.L80
	cmpi gr8,#9,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
.L78:
	ret
.L80:
	setlos #1, gr8
	bra .L78
	.size	isblank, .-isblank
	.p2align 4
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpi gr8,#31,icc0
	bls icc0,2,.L83
	cmpi gr8,#127,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
.L81:
	ret
.L83:
	setlos #1, gr8
	bra .L81
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
	ret
	.size	isprint, .-isprint
	.p2align 4
	.globl isspace
	.type	isspace, @function
isspace:
	cmpi gr8,#32,icc0
	beq icc0,0,.L90
	addi gr8,#-9,gr8
	cmpi gr8,#4,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
.L88:
	ret
.L90:
	setlos #1, gr8
	bra .L88
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
	ret
	.size	isupper, .-isupper
	.p2align 4
	.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmpi gr8,#31,icc0
	bls icc0,2,.L96
	addi gr8,#-127,gr4
	cmpi gr4,#32,icc0
	bls icc0,2,.L96
	setlos #-8232, gr4
	add gr8,gr4,gr4
	cmpi gr4,#1,icc0
	bls icc0,0,.L96
	sethi #hi(#-65529), gr4
	setlo #lo(#-65529), gr4
	add gr8,gr4,gr8
	cmpi gr8,#2,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	bra .L92
.L96:
	setlos #1, gr8
.L92:
	ret
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
	ret
	.size	iswdigit, .-iswdigit
	.p2align 4
	.globl iswprint
	.type	iswprint, @function
iswprint:
	cmpi gr8,#254,icc0
	bls icc0,0,.L105
	setlos #8231, gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L103
	setlos #-8234, gr4
	add gr8,gr4,gr4
	sethi #hi(#47061), gr5
	setlo #lo(#47061), gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L103
	sethi #hi(#-57344), gr4
	setlo #lo(#-57344), gr4
	add gr8,gr4,gr4
	setlos #8184, gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L103
	sethi #hi(#-65532), gr4
	setlo #lo(#-65532), gr4
	add gr8,gr4,gr4
	sethi #hi(#1048579), gr5
	setlo #lo(#1048579), gr5
	cmp gr4,gr5,icc0
	bhi icc0,0,.L104
	sethi #hi(#65534), gr4
	setlo #lo(#65534), gr4
	and gr8, gr4, gr8
	cmp gr8,gr4,icc0
	ckne icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	bra .L98
.L105:
	addi gr8,#1,gr8
	andi gr8, #127, gr8
	cmpi gr8,#32,icc0
	ckhi icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	bra .L98
.L103:
	setlos #1, gr8
.L98:
	ret
.L104:
	setlos #0, gr8
	bra .L98
	.size	iswprint, .-iswprint
	.p2align 4
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi gr8,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L108
	ori gr8, #32, gr8
	addi gr8,#-97,gr8
	cmpi gr8,#5,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
.L106:
	ret
.L108:
	setlos #1, gr8
	bra .L106
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
	bne icc0,0,.L113
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L114
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L117
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __subd
.L110:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L113:
	mov gr18, gr8
	mov gr19, gr9
	bra .L110
.L114:
	mov gr22, gr8
	mov gr23, gr9
	bra .L110
.L117:
	setlos #0, gr8
	setlos #0, gr9
	bra .L110
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
	bne icc0,0,.L121
	mov gr20, gr9
	mov gr20, gr8
	mov gr19, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L122
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L125
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call __subf
.L118:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L121:
	mov gr18, gr8
	bra .L118
.L122:
	mov gr20, gr8
	bra .L118
.L125:
	setlos #0, gr8
	bra .L118
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
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr18
	mov gr11, gr19
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L134
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L133
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L128
	cmpi gr5, #0, icc0
	bne icc0,2,.L134
.L133:
	mov gr20, gr8
	mov gr21, gr9
	bra .L126
.L128:
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	beq icc0,2,.L133
.L134:
	mov gr18, gr8
	mov gr19, gr9
.L126:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
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
	mov gr8, gr19
	mov gr9, gr18
	mov gr8, gr9
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L143
	mov gr18, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L142
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr19, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L137
	cmpi gr5, #0, icc0
	bne icc0,2,.L143
.L142:
	mov gr19, gr8
	bra .L135
.L137:
	mov gr18, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __ltsf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L143
	mov gr19, gr18
.L143:
	mov gr18, gr8
.L135:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
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
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr18
	mov gr11, gr19
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L152
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L151
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L146
	cmpi gr5, #0, icc0
	bne icc0,2,.L152
.L151:
	mov gr20, gr8
	mov gr21, gr9
	bra .L144
.L146:
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	beq icc0,2,.L151
.L152:
	mov gr18, gr8
	mov gr19, gr9
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
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr20
	mov gr11, gr21
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L159
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L161
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L155
	cmpi gr5, #0, icc0
	bne icc0,2,.L161
.L159:
	mov gr20, gr8
	mov gr21, gr9
.L153:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L155:
	mov gr20, gr10
	mov gr21, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	beq icc0,2,.L159
.L161:
	mov gr18, gr8
	mov gr19, gr9
	bra .L153
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
	mov gr8, gr18
	mov gr9, gr19
	mov gr8, gr9
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L168
	mov gr19, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L170
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr19, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L164
	cmpi gr5, #0, icc0
	bne icc0,2,.L170
.L168:
	mov gr19, gr8
	bra .L162
.L164:
	mov gr19, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __ltsf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L170
	mov gr19, gr18
.L170:
	mov gr18, gr8
.L162:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
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
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr20
	mov gr11, gr21
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L177
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L179
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L173
	cmpi gr5, #0, icc0
	bne icc0,2,.L179
.L177:
	mov gr20, gr8
	mov gr21, gr9
.L171:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L173:
	mov gr20, gr10
	mov gr21, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __ltdf2
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	beq icc0,2,.L177
.L179:
	mov gr18, gr8
	mov gr19, gr9
	bra .L171
	.size	fminl, .-fminl
	.p2align 4
	.globl l64a
	.type	l64a, @function
l64a:
	sethi #gotoffhi(s.0), gr4
	setlo #gotofflo(s.0), gr4
	add gr4,gr15,gr4
	cmpi gr8, #0, icc0
	beq icc0,0,.L181
	ldi @(gr15,#got12(_gp)), gr5
	sethi #gprelhi(digits), gr6
	setlo #gprello(digits), gr6
	add gr6,gr5,gr6
.L182:
	andi gr8, #63, gr5
	ldsb @(gr6,gr5),gr5
	stb gr5, @(gr4,gr0)
	addi gr4,#1,gr4
	srlicc gr8, #6, gr8, icc0
	bne icc0,2,.L182
.L181:
	stb gr0, @(gr4,gr0)
	sethi #gotoffhi(s.0), gr8
	setlo #gotofflo(s.0), gr8
	add gr8,gr15,gr8
	ret
	.size	l64a, .-l64a
	.p2align 4
	.globl srand
	.type	srand, @function
srand:
	sethi #gotoffhi(seed), gr4
	setlo #gotofflo(seed), gr4
	add gr4,gr15,gr5
	addi gr8,#-1,gr8
	sti gr8, @(gr5,4)
	st gr0, @(gr4,gr15)
	ret
	.size	srand, .-srand
	.p2align 4
	.globl rand
	.type	rand, @function
rand:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sethi #gotoffhi(seed), gr18
	setlo #gotofflo(seed), gr18
	add gr18,gr15,gr18
	sethi #hi(#1481765933), gr10
	setlo #lo(#1481765933), gr10
	sethi #hi(#1284865837), gr11
	setlo #lo(#1284865837), gr11
	ld @(gr18,gr0), gr8
	ldi @(gr18,4), gr9
	call __mulll
	addicc gr9,#1,gr9,icc0
	addxi gr8,#0,gr8,icc0
	st gr8, @(gr18,gr0)
	sti gr9, @(gr18,4)
	srli gr8, #1, gr8
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
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
	sti gr27, @(sp,36)
	mov gr15, gr24
	mov gr8, gr22
	mov gr9, gr23
	mov gr10, gr26
	mov gr11, gr21
	mov gr12, gr27
	ld @(gr10,gr0), gr20
	cmpi gr20, #0, icc0
	beq icc0,0,.L194
	mov gr9, gr18
	setlos #0, gr19
.L196:
	mov gr18, gr25
	mov gr18, gr9
	mov gr22, gr8
	ldd @(gr27,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,0,.L193
	addi gr19,#1,gr19
	add gr18,gr21,gr18
	cmp gr20,gr19,icc0
	bne icc0,2,.L196
.L194:
	addi gr20,#1,gr4
	st gr4, @(gr26,gr0)
	umul gr21,gr20,gr4
	add gr23,gr5,gr8
	mov gr21, gr10
	mov gr22, gr9
	mov gr24, gr15
	call memcpy
	mov gr8, gr25
.L193:
	mov gr25, gr8
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
	mov gr8, gr20
	mov gr11, gr22
	mov gr12, gr21
	ld @(gr10,gr0), gr23
	cmpi gr23, #0, icc0
	beq icc0,0,.L199
	mov gr9, gr18
	setlos #0, gr19
.L201:
	mov gr18, gr24
	mov gr18, gr9
	mov gr20, gr8
	ldd @(gr21,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,0,.L198
	addi gr19,#1,gr19
	add gr18,gr22,gr18
	cmp gr23,gr19,icc0
	bne icc0,2,.L201
.L199:
	setlos #0, gr24
.L198:
	mov gr24, gr8
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
	bra .L205
.L206:
	addi gr18,#1,gr18
.L205:
	ldsb @(gr18,gr0),gr19
	mov gr19, gr8
	mov gr20, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L206
	cmpi gr19,#43,icc0
	beq icc0,0,.L212
	cmpi gr19,#45,icc0
	bne icc0,2,.L213
	setlos #1, gr6
.L207:
	addi gr18,#1,gr18
.L208:
	ldsb @(gr18,gr0),gr4
	addi gr4,#-48,gr5
	cmpi gr5,#9,icc0
	bhi icc0,0,.L210
.L209:
	smuli gr8,#10,gr8
	addi gr18,#1,gr18
	addi gr4,#-48,gr4
	slli gr4,#24,gr4
	srai gr4, #24, gr4
	sub gr9,gr4,gr8
	ldsb @(gr18,gr0),gr4
	addi gr4,#-48,gr5
	cmpi gr5,#9,icc0
	bls icc0,2,.L209
.L210:
	cmpi gr6, #0, icc0
	ckeq icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L212:
	setlos #0, gr6
	bra .L207
.L213:
	setlos #0, gr6
	bra .L208
	.size	atoi, .-atoi
	.p2align 4
	.globl atol
	.type	atol, @function
atol:
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
	bra .L217
.L218:
	addi gr18,#1,gr18
.L217:
	ldsb @(gr18,gr0),gr19
	mov gr19, gr8
	mov gr20, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L218
	cmpi gr19,#43,icc0
	beq icc0,0,.L224
	cmpi gr19,#45,icc0
	bne icc0,2,.L225
	setlos #1, gr6
.L219:
	addi gr18,#1,gr18
.L220:
	ldsb @(gr18,gr0),gr4
	addi gr4,#-48,gr5
	cmpi gr5,#9,icc0
	bhi icc0,0,.L222
.L221:
	smuli gr8,#10,gr8
	addi gr18,#1,gr18
	addi gr4,#-48,gr4
	slli gr4,#24,gr4
	srai gr4, #24, gr4
	sub gr9,gr4,gr8
	ldsb @(gr18,gr0),gr4
	addi gr4,#-48,gr5
	cmpi gr5,#9,icc0
	bls icc0,2,.L221
.L222:
	cmpi gr6, #0, icc0
	ckeq icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L224:
	setlos #0, gr6
	bra .L219
.L225:
	setlos #0, gr6
	bra .L220
	.size	atol, .-atol
	.p2align 4
	.globl atoll
	.type	atoll, @function
atoll:
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
	mov gr8, gr18
	bra .L229
.L230:
	addi gr18,#1,gr18
.L229:
	ldsb @(gr18,gr0),gr19
	mov gr19, gr8
	mov gr24, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L230
	cmpi gr19,#43,icc0
	beq icc0,0,.L231
	cmpi gr19,#45,icc0
	bne icc0,2,.L232
	setlos #1, gr8
.L231:
	addi gr18,#1,gr18
.L232:
	ldsb @(gr18,gr0),gr6
	addi gr6,#-48,gr4
	cmpi gr4,#9,icc0
	setlos #0, gr4
	setlos #0, gr5
	bhi icc0,0,.L234
.L233:
	srli gr5, #30, gr7
	slli gr4,#2,gr20
	or gr7, gr20, gr20
	slli gr5,#2,gr21
	addcc gr5,gr21,gr5,icc0
	addx gr4,gr20,gr4,icc0
	srli gr5, #31, gr10
	slli gr4,#1,gr9
	slli gr5,#1,gr7
	or gr10, gr9, gr4
	addi gr18,#1,gr18
	addi gr6,#-48,gr6
	slli gr6,#24,gr6
	srai gr6, #24, gr6
	srai gr6, #31, gr22
	subcc gr7,gr6,gr5,icc0
	subx gr4,gr22,gr4,icc0
	ldsb @(gr18,gr0),gr6
	addi gr6,#-48,gr7
	cmpi gr7,#9,icc0
	bls icc0,2,.L233
.L234:
	cmpi gr8, #0, icc0
	bne icc0,2,.L228
	subcc gr0,gr5,gr5,icc0
	subx gr0,gr4,gr4,icc0
.L228:
	mov gr4, gr8
	mov gr5, gr9
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
	.size	atoll, .-atoll
	.p2align 4
	.globl bsearch
	.type	bsearch, @function
bsearch:
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
	mov gr10, gr18
	mov gr11, gr21
	mov gr12, gr24
	bra .L245
.L243:
	mov gr19, gr18
.L245:
	cmpi gr18, #0, icc0
	beq icc0,0,.L239
	srli gr18, #1, gr19
	umul gr19,gr21,gr4
	add gr22,gr5,gr20
	mov gr20, gr9
	mov gr23, gr8
	ldd @(gr24,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,0,.L243
	cmpi gr8,#0,icc0
	ble icc0,0,.L238
	add gr20,gr21,gr22
	addi gr18,#-1,gr18
	sub gr18,gr19,gr18
	bra .L245
.L239:
	setlos #0, gr20
.L238:
	mov gr20, gr8
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
	mov gr8, gr22
	mov gr9, gr21
	mov gr10, gr18
	mov gr11, gr20
	mov gr12, gr24
	mov gr13, gr23
	cmpi gr10, #0, icc0
	beq icc0,0,.L247
.L250:
	srai gr18, #1, gr4
	umul gr4,gr20,gr4
	add gr21,gr5,gr19
	mov gr23, gr10
	mov gr19, gr9
	mov gr22, gr8
	ldd @(gr24,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,0,.L246
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #-1, gr4
	cadd gr19, gr20, gr21, cc4, 1
	cadd gr18, gr4, gr18, cc4, 1
	sraicc gr18, #1, gr18, icc0
	bne icc0,2,.L250
.L247:
	setlos #0, gr19
.L246:
	mov gr19, gr8
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
	sdiv gr8,gr9,gr4
	st gr4, @(gr3,gr0)
	smul gr4,gr9,gr4
	sub gr8,gr5,gr8
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
	bn icc0,0,.L256
.L254:
	ret
.L256:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	bra .L254
	.size	imaxabs, .-imaxabs
	.p2align 4
	.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	sti gr3, @(fp,4)
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	mov gr15, gr18
	mov gr3, gr19
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr22
	mov gr11, gr23
	call __divll
	st gr8, @(gr19,gr0)
	sti gr9, @(gr19,4)
	mov gr22, gr10
	mov gr23, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr18, gr15
	call __modll
	sti gr8, @(gr19,8)
	sti gr9, @(gr19,12)
	mov gr19, gr8
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
	sdiv gr8,gr9,gr4
	st gr4, @(gr3,gr0)
	smul gr4,gr9,gr4
	sub gr8,gr5,gr8
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
	bn icc0,0,.L263
.L261:
	ret
.L263:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	bra .L261
	.size	llabs, .-llabs
	.p2align 4
	.globl lldiv
	.type	lldiv, @function
lldiv:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	sti gr3, @(fp,4)
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	mov gr15, gr18
	mov gr3, gr19
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr22
	mov gr11, gr23
	call __divll
	st gr8, @(gr19,gr0)
	sti gr9, @(gr19,4)
	mov gr22, gr10
	mov gr23, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr18, gr15
	call __modll
	sti gr8, @(gr19,8)
	sti gr9, @(gr19,12)
	mov gr19, gr8
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
	.size	lldiv, .-lldiv
	.p2align 4
	.globl wcschr
	.type	wcschr, @function
wcschr:
	bra .L272
.L268:
	addi gr8,#4,gr8
.L272:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L267
	cmp gr9,gr4,icc0
	bne icc0,2,.L268
.L267:
	cmpi gr4, #0, icc0
	ckeq icc0, cc4
	cmov gr0, gr8, cc4, 1
	ret
	.size	wcschr, .-wcschr
	.p2align 4
	.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr6
	cmp gr5,gr6,icc0
	bne icc0,0,.L275
	setlos #4, gr4
	addi gr9,#-4,gr7
.L274:
	cmpi gr5, #0, icc0
	beq icc0,0,.L275
	cmpi gr6, #0, icc0
	beq icc0,0,.L275
	ld @(gr8,gr4), gr5
	addi gr4,#4,gr4
	ld @(gr7,gr4), gr6
	cmp gr5,gr6,icc0
	beq icc0,2,.L274
.L275:
	cmp gr5,gr6,icc0
	ckge icc0, cc5
	setlos #1, gr4
	setlos #-1, gr5
	cckgt icc0, cc4, cc5, 1
	cmov gr4, gr8, cc5, 1
	andcr cc5, cc4, cc4
	cmov gr0, gr8, cc4, 0
	cmov gr5, gr8, cc5, 0
	ret
	.size	wcscmp, .-wcscmp
	.p2align 4
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	setlos #0, gr5
.L281:
	ld @(gr9,gr5), gr4
	st gr4, @(gr8,gr5)
	addi gr5,#4,gr5
	cmpi gr4, #0, icc0
	bne icc0,2,.L281
	ret
	.size	wcscpy, .-wcscpy
	.p2align 4
	.globl wcslen
	.type	wcslen, @function
wcslen:
	ld @(gr8,gr0), gr4
	mov gr8, gr5
	cmpi gr4, #0, icc0
	beq icc0,0,.L284
.L285:
	addi gr5,#4,gr5
	ld @(gr5,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L285
.L284:
	sub gr5,gr8,gr5
	srai gr5, #2, gr8
	ret
	.size	wcslen, .-wcslen
	.p2align 4
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L290
.L289:
	ld @(gr8,gr0), gr4
	ld @(gr9,gr0), gr5
	cmp gr4,gr5,icc0
	bne icc0,0,.L290
	cmpi gr4, #0, icc0
	beq icc0,0,.L290
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L289
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
	bra .L288
.L293:
	setlos #0, gr8
.L288:
	ret
.L294:
	setlos #-1, gr8
	bra .L288
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	cmpi gr10, #0, icc0
	beq icc0,0,.L298
.L297:
	ld @(gr8,gr0), gr4
	cmp gr4,gr9,icc0
	beq icc0,0,.L298
	addi gr8,#4,gr8
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L297
.L298:
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr0, gr8, cc4, 1
	ret
	.size	wmemchr, .-wmemchr
	.p2align 4
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L305
.L304:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L305
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L304
.L305:
	cmpi gr10, #0, icc0
	beq icc0,2,.L308
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L309
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	bra .L303
.L308:
	setlos #0, gr8
.L303:
	ret
.L309:
	setlos #-1, gr8
	bra .L303
	.size	wmemcmp, .-wmemcmp
	.p2align 4
	.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L312
	slli gr10,#2,gr10
	call memcpy
	mov gr8, gr4
.L312:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	wmemcpy, .-wmemcpy
	.p2align 4
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	cmp gr8,gr9,icc0
	beq icc0,0,.L314
	addi gr10,#-1,gr4
	sub gr8,gr9,gr5
	slli gr10,#2,gr6
	cmp gr5,gr6,icc0
	bc icc0,2,.L315
	setlos #0, gr5
	cmpi gr10, #0, icc0
	beq icc0,0,.L314
.L316:
	ld @(gr9,gr5), gr6
	st gr6, @(gr8,gr5)
	addi gr4,#-1,gr4
	addi gr5,#4,gr5
	cmpi gr4,#-1,icc0
	bne icc0,2,.L316
	bra .L314
.L315:
	cmpi gr10, #0, icc0
	beq icc0,0,.L314
	slli gr4,#2,gr4
.L317:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#-4,gr4
	cmpi gr4,#-4,icc0
	bne icc0,2,.L317
.L314:
	ret
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl wmemset
	.type	wmemset, @function
wmemset:
	addi gr10,#-1,gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L322
	mov gr8, gr5
.L323:
	addi gr5,#4,gr5
	sti gr9, @(gr5,-4)
	addi gr4,#-1,gr4
	cmpi gr4,#-1,icc0
	bne icc0,2,.L323
.L322:
	ret
	.size	wmemset, .-wmemset
	.p2align 4
	.globl bcopy
	.type	bcopy, @function
bcopy:
	cmp gr8,gr9,icc0
	bnc icc0,2,.L326
	cmpi gr10, #0, icc0
	beq icc0,0,.L325
	addi gr8,#-1,gr8
	addi gr9,#-1,gr9
.L328:
	ldsb @(gr8,gr10),gr4
	stb gr4, @(gr9,gr10)
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L328
.L325:
	ret
.L326:
	cmp gr8,gr9,icc0
	beq icc0,0,.L325
	cmpi gr10, #0, icc0
	beq icc0,0,.L325
	setlos #0, gr4
.L329:
	ldsb @(gr8,gr4),gr5
	stb gr5, @(gr9,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L329
	bra .L325
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
	andi gr9, #15, gr9
	sll gr8,gr9,gr4
	sethi #hi(#0),gr8
	sub gr0,gr9,gr9
	andi gr9, #15, gr9
	srl gr8, gr9, gr8
	or gr4, gr8, gr8
	ret
	.size	rotl16, .-rotl16
	.p2align 4
	.globl rotr16
	.type	rotr16, @function
rotr16:
	andi gr9, #15, gr9
	mov gr8, gr4
	sethi #hi(#0),gr4
	srl gr4, gr9, gr4
	sub gr0,gr9,gr9
	andi gr9, #15, gr9
	sll gr8,gr9,gr8
	or gr4, gr8, gr8
	ret
	.size	rotr16, .-rotr16
	.p2align 4
	.globl rotl8
	.type	rotl8, @function
rotl8:
	andi gr9, #7, gr9
	sll gr8,gr9,gr4
	andi gr8,#0xff,gr8
	sub gr0,gr9,gr9
	andi gr9, #7, gr9
	srl gr8, gr9, gr8
	or gr4, gr8, gr8
	ret
	.size	rotl8, .-rotl8
	.p2align 4
	.globl rotr8
	.type	rotr8, @function
rotr8:
	andi gr9, #7, gr9
	andi gr8,#0xff,gr4
	srl gr4, gr9, gr4
	sub gr0,gr9,gr9
	andi gr9, #7, gr9
	sll gr8,gr9,gr8
	or gr4, gr8, gr8
	ret
	.size	rotr8, .-rotr8
	.p2align 4
	.globl bswap_16
	.type	bswap_16, @function
bswap_16:
	mov gr8, gr4
	sethi #hi(#0),gr4
	srli gr4, #8, gr4
	slli gr8,#8,gr8
	or gr4, gr8, gr8
	ret
	.size	bswap_16, .-bswap_16
	.p2align 4
	.globl bswap_32
	.type	bswap_32, @function
bswap_32:
	slli gr8,#24,gr4
	srli gr8, #24, gr5
	or gr4, gr5, gr4
	srli gr8, #8, gr5
	sethi #hi(#65280), gr6
	setlo #lo(#65280), gr6
	and gr5, gr6, gr5
	or gr4, gr5, gr4
	slli gr8,#8,gr8
	sethi #hi(#16711680), gr5
	setlo #lo(#16711680), gr5
	and gr8, gr5, gr8
	or gr4, gr8, gr8
	ret
	.size	bswap_32, .-bswap_32
	.p2align 4
	.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	slli gr9,#24,gr5
	srli gr8, #24, gr4
	srli gr8, #8, gr6
	sethi #hi(#65280), gr10
	setlo #lo(#65280), gr10
	and gr6, gr10, gr6
	or gr4, gr6, gr4
	slli gr8,#8,gr7
	srli gr9, #24, gr6
	or gr7, gr6, gr6
	sethi #hi(#16711680), gr7
	setlo #lo(#16711680), gr7
	and gr6, gr7, gr6
	or gr4, gr6, gr4
	slli gr8,#24,gr8
	or gr4, gr8, gr4
	slli gr9,#8,gr6
	srli gr9, #24, gr11
	or gr5, gr11, gr5
	srli gr9, #8, gr9
	or gr9, gr8, gr9
	and gr9, gr10, gr9
	or gr5, gr9, gr8
	and gr6, gr7, gr5
	or gr8, gr5, gr8
	mov gr4, gr9
	ret
	.size	bswap_64, .-bswap_64
	.p2align 4
	.globl ffs
	.type	ffs, @function
ffs:
	setlos #0, gr4
.L348:
	srl gr8, gr4, gr5
	andicc gr5, #1, gr0, icc0
	addi gr4,#1,gr4
	bne icc0,0,.L350
	cmpi gr4,#32,icc0
	bne icc0,2,.L348
	setlos #0, gr8
	bra .L345
.L350:
	mov gr4, gr8
.L345:
	ret
	.size	ffs, .-ffs
	.p2align 4
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmpi gr8, #0, icc0
	beq icc0,0,.L354
	andicc gr8, #1, gr4, icc0
	bne icc0,0,.L351
	setlos #1, gr4
.L353:
	srai gr8, #1, gr8
	addi gr4,#1,gr4
	andicc gr8, #1, gr0, icc0
	beq icc0,2,.L353
.L351:
	mov gr4, gr8
	ret
.L354:
	setlos #0, gr4
	bra .L351
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
	bn icc0,2,.L359
	sethi #hi(#2139095039), gr9
	setlo #lo(#2139095039), gr9
	mov gr19, gr8
	mov gr18, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
.L356:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L359:
	setlos #1, gr8
	bra .L356
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
	bn icc0,2,.L363
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
.L360:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L363:
	setlos #1, gr8
	bra .L360
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
	bn icc0,2,.L367
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
.L364:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L367:
	setlos #1, gr8
	bra .L364
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
	bne icc0,0,.L370
	mov gr20, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __addf
	mov gr20, gr9
	mov gr21, gr15
	call __nesf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L370
	cmpi gr18, #0, icc0
	bn icc0,0,.L377
	sethi #hi(#1073741824), gr19
	setlo #lo(#1073741824), gr19
	bra .L374
.L377:
	sethi #hi(#1056964608), gr19
	setlo #lo(#1056964608), gr19
	bra .L374
.L373:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L370
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr19
.L374:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L373
	mov gr19, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
	bra .L373
.L370:
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
	mov gr15, gr19
	mov gr8, gr22
	mov gr9, gr23
	mov gr10, gr18
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L379
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __addd
	mov gr22, gr10
	mov gr23, gr11
	mov gr19, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L379
	cmpi gr18, #0, icc0
	bn icc0,0,.L386
	sethi #hi(#1073741824), gr20
	setlo #lo(#1073741824), gr20
	setlos #0, gr21
	bra .L383
.L386:
	sethi #hi(#1071644672), gr20
	setlo #lo(#1071644672), gr20
	setlos #0, gr21
	bra .L383
.L382:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L379
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
.L383:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L382
	mov gr20, gr10
	mov gr21, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L382
.L379:
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
	mov gr15, gr19
	mov gr8, gr22
	mov gr9, gr23
	mov gr10, gr18
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L388
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __addd
	mov gr22, gr10
	mov gr23, gr11
	mov gr19, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L388
	cmpi gr18, #0, icc0
	bn icc0,0,.L395
	sethi #hi(#1073741824), gr20
	setlo #lo(#1073741824), gr20
	setlos #0, gr21
	bra .L392
.L395:
	sethi #hi(#1071644672), gr20
	setlo #lo(#1071644672), gr20
	setlos #0, gr21
	bra .L392
.L391:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L388
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
.L392:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L391
	mov gr20, gr10
	mov gr21, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L391
.L388:
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
	cmpi gr10, #0, icc0
	beq icc0,0,.L397
	setlos #0, gr4
.L398:
	ldsb @(gr8,gr4),gr5
	ldsb @(gr9,gr4),gr6
	xor gr5, gr6, gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr4,gr10,icc0
	bne icc0,2,.L398
.L397:
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
	mov gr8, gr19
	mov gr9, gr18
	sti gr10, @(fp,-4)
	call strlen
	add gr19,gr8,gr8
	ldi @(fp,-4), gr10
	cmpi gr10, #0, icc0
	beq icc0,0,.L402
.L401:
	ldsb @(gr18,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	beq icc0,0,.L402
	addi gr18,#1,gr18
	addi gr8,#1,gr8
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L401
.L402:
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cstb gr0, @(gr8,gr0), cc4, 1
	mov gr19, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
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
	cmpi gr9, #0, icc0
	beq icc0,0,.L406
.L407:
	ldsb @(gr5,gr8),gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L409
.L406:
	ret
.L409:
	addi gr8,#1,gr8
	cmp gr9,gr8,icc0
	bne icc0,2,.L407
	bra .L406
	.size	strnlen, .-strnlen
	.p2align 4
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	movgs gr9, lcr
	ldsb @(gr8,gr0),gr6
	cmpi gr6, #0, icc0
	beq icc0,0,.L417
.L413:
	movsg lcr, gr4
.L416:
	ldsb @(gr4,gr0),gr5
	cmpi gr5, #0, icc0
	beq icc0,0,.L419
	addi gr4,#1,gr4
	cmp gr5,gr6,icc0
	bne icc0,2,.L416
.L414:
	ret
.L419:
	addi gr8,#1,gr8
	ldsb @(gr8,gr0),gr6
	cmpi gr6, #0, icc0
	bne icc0,2,.L413
.L417:
	setlos #0, gr8
	bra .L414
	.size	strpbrk, .-strpbrk
	.p2align 4
	.globl strrchr
	.type	strrchr, @function
strrchr:
	setlos #0, gr5
.L422:
	ldsb @(gr8,gr0),gr4
	cmp gr4,gr9,icc0
	ckeq icc0, cc4
	cmov gr8, gr5, cc4, 1
	addi gr8,#1,gr8
	cmpi gr4, #0, icc0
	bne icc0,2,.L422
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
	beq icc0,0,.L425
	ldsb @(gr20,gr0),gr22
.L427:
	mov gr22, gr9
	mov gr18, gr8
	mov gr19, gr15
	call strchr
	mov gr8, gr18
	cmpi gr8, #0, icc0
	beq icc0,0,.L425
	mov gr21, gr10
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call strncmp
	cmpi gr8, #0, icc0
	beq icc0,0,.L425
	addi gr18,#1,gr18
	bra .L427
.L425:
	mov gr18, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	strstr, .-strstr
	.p2align 4
	.globl copysign
	.type	copysign, @function
copysign:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr22, @(sp,12)
	sti gr23, @(sp,16)
	sti gr24, @(sp,20)
	sti gr25, @(sp,24)
	mov gr15, gr20
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr22
	mov gr11, gr23
	setlos #0, gr24
	setlos #0, gr25
	mov gr24, gr10
	mov gr25, gr11
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L439
.L431:
	setlos #0, gr24
	setlos #0, gr25
	mov gr24, gr10
	mov gr25, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,0,.L434
	mov gr24, gr10
	mov gr25, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L433
.L434:
	mov gr18, gr8
	mov gr19, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(sp,20), gr24
	ldi @(sp,24), gr25
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
.L439:
	mov gr24, gr10
	mov gr25, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L431
.L433:
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
	bra .L434
	.size	copysign, .-copysign
	.p2align 4
	.globl memmem
	.type	memmem, @function
memmem:
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
	mov gr15, gr22
	mov gr8, gr18
	cmpi gr11, #0, icc0
	beq icc0,0,.L444
	cmp gr9,gr11,icc0
	bc icc0,0,.L446
	sub gr9,gr11,gr9
	add gr8,gr9,gr19
	cmp gr8,gr19,icc0
	bhi icc0,0,.L446
	ldsb @(gr10,gr0),gr23
	addi gr11,#-1,gr21
	addi gr10,#1,gr24
	bra .L443
.L442:
	cmp gr18,gr19,icc0
	bhi icc0,0,.L446
.L443:
	ldsb @(gr18,gr0),gr4
	mov gr18, gr20
	addi gr18,#1,gr18
	cmp gr4,gr23,icc0
	bne icc0,2,.L442
	mov gr21, gr10
	mov gr24, gr9
	mov gr18, gr8
	mov gr22, gr15
	call memcmp
	cmpi gr8, #0, icc0
	bne icc0,2,.L442
	bra .L440
.L444:
	mov gr8, gr20
	bra .L440
.L446:
	setlos #0, gr20
.L440:
	mov gr20, gr8
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
	bn icc0,0,.L473
	setlos #0, gr26
.L450:
	sethi #hi(#1072693248), gr10
	setlo #lo(#1072693248), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gedf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L470
	setlos #0, gr21
	sethi #hi(#1071644672), gr24
	setlo #lo(#1071644672), gr24
	setlos #0, gr25
	sethi #hi(#1072693248), gr22
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
.L454:
	addi gr21,#1,gr21
	mov gr24, gr10
	mov gr25, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr20, gr15
	call __gedf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L454
.L455:
	st gr21, @(gr27,gr0)
	cmpi gr26, #0, icc0
	beq icc0,2,.L459
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
.L459:
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
.L473:
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
	setlos #1, gr26
	bra .L450
.L470:
	sethi #hi(#1071644672), gr10
	setlo #lo(#1071644672), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L471
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __nedf2
	setlos #0, gr21
	cmpi gr8, #0, icc0
	beq icc0,2,.L455
	sethi #hi(#1071644672), gr22
	setlo #lo(#1071644672), gr22
	setlos #0, gr23
.L458:
	addi gr21,#-1,gr21
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __addd
	mov gr8, gr18
	mov gr9, gr19
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,2,.L458
	bra .L455
.L471:
	setlos #0, gr21
	bra .L455
	.size	frexp, .-frexp
	.p2align 4
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	mov gr8, gr4
	mov gr9, gr5
	mov gr8, gr9
	mov gr5, gr8
	mov gr4, gr5
	mov gr8, gr4
	orcc gr8, gr9, gr0, icc0
	setlos #0, gr8
	setlos #0, gr9
	beq icc0,0,.L474
.L477:
	setlos #0, gr6
	andi gr4, #1, gr7
	subcc gr0,gr7,gr15,icc0
	subx gr0,gr6,gr14,icc0
	and gr14, gr10, gr12
	and gr15, gr11, gr13
	addcc gr9,gr13,gr9,icc0
	addx gr8,gr12,gr8,icc0
	srli gr11, #31, gr14
	slli gr10,#1,gr10
	or gr14, gr10, gr10
	slli gr11,#1,gr11
	slli gr5,#31,gr14
	srli gr4, #1, gr4
	or gr14, gr4, gr4
	srli gr5, #1, gr5
	orcc gr5, gr4, gr0, icc0
	bne icc0,2,.L477
.L474:
	ret
	.size	__muldi3, .-__muldi3
	.p2align 4
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	setlos #1, gr4
	cmp gr9,gr8,icc0
	bnc icc0,0,.L482
	setlos #32, gr5
	setlos #1, gr4
.L481:
	cmpi gr9, #0, icc0
	bn icc0,0,.L482
	slli gr9,#1,gr9
	slli gr4,#1,gr4
	cmp gr8,gr9,icc0
	bls icc0,0,.L482
	addicc gr5, #-1, gr5, icc0
	bne icc0,2,.L481
	setlos #0, gr4
.L482:
	setlos #0, gr5
	cmpi gr4, #0, icc0
	beq icc0,0,.L484
.L486:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr9, #1, gr9
	srlicc gr4, #1, gr4, icc0
	bne icc0,2,.L486
.L484:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr8, gr5, cc4, 1
	mov gr5, gr8
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
	srai gr8, #7, gr5
	xor gr8, gr5, gr4
	cmp gr8,gr5,icc0
	beq icc0,0,.L495
	slli gr4,#8,gr8
	call __clzsi2
	addi gr8,#-1,gr8
.L493:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L495:
	setlos #7, gr8
	bra .L493
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
	srai gr8, #31, gr4
	xor gr8, gr4, gr6
	xor gr9, gr4, gr5
	cmp gr8,gr4,icc0
	beq icc0,0,.L502
.L500:
	mov gr6, gr8
	mov gr5, gr9
	call __clzdi2
	addi gr8,#-1,gr8
.L496:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L502:
	cmp gr9,gr8,icc0
	bne icc0,2,.L500
	setlos #63, gr8
	bra .L496
	.size	__clrsbdi2, .-__clrsbdi2
	.p2align 4
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	setlos #0, gr6
	cmpi gr8, #0, icc0
	beq icc0,0,.L503
.L505:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	add gr6,gr5,gr6
	slli gr9,#1,gr9
	srlicc gr8, #1, gr8, icc0
	bne icc0,2,.L505
.L503:
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
	bc icc0,2,.L509
	add gr9,gr10,gr5
	cmp gr8,gr5,icc0
	bhi icc0,2,.L509
	addi gr10,#-1,gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L508
.L510:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#-1,gr4
	cmpi gr4,#-1,icc0
	bne icc0,2,.L510
	bra .L508
.L509:
	cmpi gr7, #0, icc0
	beq icc0,0,.L512
	mov gr9, gr5
	mov gr8, gr6
	slli gr7,#3,gr7
	add gr7,gr9,gr7
.L513:
	ld @(gr5,gr0), gr12
	ldi @(gr5,4), gr13
	st gr12, @(gr6,gr0)
	sti gr13, @(gr6,4)
	addi gr5,#8,gr5
	addi gr6,#8,gr6
	cmp gr5,gr7,icc0
	bne icc0,2,.L513
.L512:
	cmp gr10,gr4,icc0
	bls icc0,0,.L508
.L514:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L514
.L508:
	ret
	.size	__cmovd, .-__cmovd
	.p2align 4
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	srli gr10, #1, gr6
	cmp gr8,gr9,icc0
	bc icc0,2,.L520
	add gr9,gr10,gr4
	cmp gr8,gr4,icc0
	bhi icc0,2,.L520
	addi gr10,#-1,gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L519
.L521:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#-1,gr4
	cmpi gr4,#-1,icc0
	bne icc0,2,.L521
	bra .L519
.L520:
	cmpi gr6, #0, icc0
	beq icc0,0,.L523
	slli gr6,#1,gr6
	setlos #0, gr4
.L524:
	ldsh @(gr9,gr4),gr5
	sth gr5, @(gr8,gr4)
	addi gr4,#2,gr4
	cmp gr6,gr4,icc0
	bne icc0,2,.L524
.L523:
	andicc gr10, #1, gr0, icc0
	beq icc0,2,.L519
	addi gr10,#-1,gr10
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L519:
	ret
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	srli gr10, #2, gr7
	andi gr10, #-4, gr4
	cmp gr8,gr9,icc0
	bc icc0,2,.L529
	add gr9,gr10,gr5
	cmp gr8,gr5,icc0
	bhi icc0,2,.L529
	addi gr10,#-1,gr4
	cmpi gr10, #0, icc0
	beq icc0,0,.L528
.L530:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#-1,gr4
	cmpi gr4,#-1,icc0
	bne icc0,2,.L530
	bra .L528
.L529:
	cmpi gr7, #0, icc0
	beq icc0,0,.L532
	slli gr7,#2,gr7
	setlos #0, gr5
.L533:
	ld @(gr9,gr5), gr6
	st gr6, @(gr8,gr5)
	addi gr5,#4,gr5
	cmp gr7,gr5,icc0
	bne icc0,2,.L533
.L532:
	cmp gr10,gr4,icc0
	bls icc0,0,.L528
.L534:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L534
.L528:
	ret
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
.L547:
	sub gr6,gr8,gr4
	sra gr5, gr4, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L545
	addi gr8,#1,gr8
	cmpi gr8,#16,icc0
	bne icc0,2,.L547
.L545:
	ret
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov gr8, gr5
	sethi #hi(#0),gr5
	setlos #0, gr8
.L551:
	sra gr5, gr8, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L549
	addi gr8,#1,gr8
	cmpi gr8,#16,icc0
	bne icc0,2,.L551
.L549:
	ret
	.size	__ctzhi2, .-__ctzhi2
	.p2align 4
	.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
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
	sethi #hi(#1191182336), gr20
	setlo #lo(#1191182336), gr20
	mov gr20, gr9
	call __gesf2
	cmpi gr8, #0, icc0
	bp icc0,0,.L559
	mov gr19, gr8
	mov gr18, gr15
	call __ftoi
.L553:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L559:
	mov gr20, gr9
	mov gr19, gr8
	mov gr18, gr15
	call __subf
	mov gr18, gr15
	call __ftoi
	sethi #hi(#32768), gr4
	setlo #lo(#32768), gr4
	add gr8,gr4,gr8
	bra .L553
	.size	__fixunssfsi, .-__fixunssfsi
	.p2align 4
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	sethi #hi(#0),gr8
	setlos #0, gr6
	setlos #0, gr4
.L561:
	sra gr8, gr4, gr5
	andi gr5, #1, gr5
	add gr6,gr5,gr6
	addi gr4,#1,gr4
	cmpi gr4,#16,icc0
	bne icc0,2,.L561
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
.L564:
	sra gr6, gr4, gr5
	andi gr5, #1, gr5
	add gr8,gr5,gr8
	addi gr4,#1,gr4
	cmpi gr4,#16,icc0
	bne icc0,2,.L564
	ret
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	setlos #0, gr6
	cmpi gr8, #0, icc0
	beq icc0,0,.L566
.L568:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	add gr6,gr5,gr6
	slli gr9,#1,gr9
	srlicc gr8, #1, gr8, icc0
	bne icc0,2,.L568
.L566:
	mov gr6, gr8
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	setlos #0, gr6
	cmpi gr8, #0, icc0
	beq icc0,0,.L571
	cmpi gr9, #0, icc0
	beq icc0,0,.L571
.L573:
	andi gr9, #1, gr4
	umul gr4,gr8,gr4
	add gr6,gr5,gr6
	slli gr8,#1,gr8
	srlicc gr9, #1, gr9, icc0
	bne icc0,2,.L573
.L571:
	mov gr6, gr8
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.p2align 4
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	setlos #1, gr4
	cmp gr9,gr8,icc0
	bnc icc0,0,.L579
	setlos #32, gr5
	setlos #1, gr4
.L578:
	cmpi gr9, #0, icc0
	bn icc0,0,.L579
	slli gr9,#1,gr9
	slli gr4,#1,gr4
	cmp gr8,gr9,icc0
	bls icc0,0,.L579
	addicc gr5, #-1, gr5, icc0
	bne icc0,2,.L578
	setlos #0, gr4
.L579:
	setlos #0, gr5
	cmpi gr4, #0, icc0
	beq icc0,0,.L581
.L583:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr9, #1, gr9
	srlicc gr4, #1, gr4, icc0
	bne icc0,2,.L583
.L581:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr8, gr5, cc4, 1
	mov gr5, gr8
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
	bn icc0,0,.L593
	mov gr20, gr9
	mov gr19, gr8
	mov gr18, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
.L590:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L593:
	setlos #-1, gr8
	bra .L590
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
	bn icc0,0,.L597
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
.L594:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L597:
	setlos #-1, gr8
	bra .L594
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.p2align 4
	.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	smul gr8,gr9,gr8
	ret
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.p2align 4
	.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	umul gr8,gr9,gr8
	ret
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
	cmpi gr9, #0, icc0
	beq icc0,0,.L606
	setlos #0, gr6
	setlos #0, gr7
.L603:
	andi gr9, #1, gr4
	smul gr4,gr8,gr4
	add gr7,gr5,gr7
	slli gr8,#1,gr8
	sraicc gr9, #1, gr9, icc0
	beq icc0,0,.L602
	addi gr6,#1,gr6
	cmpi gr6,#32,icc0
	bne icc0,2,.L603
.L602:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	csub gr0, gr7, gr7, cc4, 1
	mov gr7, gr8
	ret
.L606:
	setlos #0, gr7
	bra .L602
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
	sethi #hi(#0),gr8
	sethi #hi(#0),gr9
	setlos #1, gr4
	cmp gr9,gr8,icc0
	bnc icc0,0,.L619
	setlos #16, gr6
	setlos #1, gr4
.L618:
	slli gr9,#16,gr5
	srai gr5, #16, gr5
	cmpi gr5, #0, icc0
	bn icc0,0,.L619
	slli gr9,#1,gr9
	sethi #hi(#0),gr9
	slli gr4,#1,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr9,icc0
	bls icc0,0,.L619
	addicc gr6, #-1, gr6, icc0
	bne icc0,2,.L618
	setlos #0, gr4
.L619:
	setlos #0, gr5
	cmpi gr4, #0, icc0
	bne icc0,2,.L623
.L621:
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
.L622:
	srli gr9, #1, gr9
	srlicc gr4, #1, gr4, icc0
	beq icc0,0,.L621
.L623:
	cmp gr8,gr9,icc0
	bc icc0,2,.L622
	sub gr8,gr9,gr8
	sethi #hi(#0),gr8
	or gr4, gr5, gr5
	bra .L622
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	setlos #1, gr4
	cmp gr9,gr8,icc0
	bnc icc0,0,.L631
	setlos #32, gr5
	setlos #1, gr4
.L630:
	cmpi gr9, #0, icc0
	bn icc0,0,.L631
	slli gr9,#1,gr9
	slli gr4,#1,gr4
	cmp gr8,gr9,icc0
	bls icc0,0,.L631
	addicc gr5, #-1, gr5, icc0
	bne icc0,2,.L630
	setlos #0, gr4
.L631:
	setlos #0, gr5
	cmpi gr4, #0, icc0
	beq icc0,0,.L633
.L635:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr9, #1, gr9
	srlicc gr4, #1, gr4, icc0
	bne icc0,2,.L635
.L633:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr8, gr5, cc4, 1
	mov gr5, gr8
	ret
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.p2align 4
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	beq icc0,2,.L643
	addi gr10,#-32,gr10
	sll gr9,gr10,gr8
	setlos #0, gr5
.L644:
	mov gr5, gr9
.L645:
	ret
.L643:
	cmpi gr10, #0, icc0
	beq icc0,0,.L645
	sll gr9,gr10,gr5
	setlos #32, gr4
	sub gr4,gr10,gr4
	srl gr9, gr4, gr4
	sll gr8,gr10,gr8
	or gr4, gr8, gr8
	bra .L644
	.size	__ashldi3, .-__ashldi3
	.p2align 4
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	beq icc0,2,.L648
	srai gr8, #31, gr5
	addi gr10,#-32,gr10
	sra gr8, gr10, gr9
.L649:
	mov gr5, gr8
.L650:
	ret
.L648:
	cmpi gr10, #0, icc0
	beq icc0,0,.L650
	sra gr8, gr10, gr5
	setlos #32, gr4
	sub gr4,gr10,gr4
	sll gr8,gr4,gr4
	srl gr9, gr10, gr9
	or gr4, gr9, gr9
	bra .L649
	.size	__ashrdi3, .-__ashrdi3
	.p2align 4
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	srli gr8, #24, gr4
	slli gr9,#24,gr5
	srli gr8, #8, gr6
	sethi #hi(#65280), gr10
	setlo #lo(#65280), gr10
	and gr6, gr10, gr6
	or gr4, gr6, gr4
	slli gr8,#8,gr7
	srli gr9, #24, gr6
	or gr7, gr6, gr6
	sethi #hi(#16711680), gr7
	setlo #lo(#16711680), gr7
	and gr6, gr7, gr6
	or gr4, gr6, gr4
	slli gr8,#24,gr8
	or gr4, gr8, gr4
	slli gr9,#8,gr6
	srli gr9, #24, gr11
	or gr5, gr11, gr5
	srli gr9, #8, gr9
	or gr9, gr8, gr9
	and gr9, gr10, gr9
	or gr5, gr9, gr8
	and gr6, gr7, gr5
	or gr8, gr5, gr8
	mov gr4, gr9
	ret
	.size	__bswapdi2, .-__bswapdi2
	.p2align 4
	.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	srli gr8, #24, gr4
	slli gr8,#24,gr5
	or gr4, gr5, gr4
	srli gr8, #8, gr5
	sethi #hi(#65280), gr6
	setlo #lo(#65280), gr6
	and gr5, gr6, gr5
	or gr4, gr5, gr4
	slli gr8,#8,gr8
	sethi #hi(#16711680), gr5
	setlo #lo(#16711680), gr5
	and gr8, gr5, gr8
	or gr4, gr8, gr8
	ret
	.size	__bswapsi2, .-__bswapsi2
	.p2align 4
	.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	sethi #hi(#65535), gr5
	setlo #lo(#65535), gr5
	cmp gr8,gr5,icc0
	ckls icc0, cc4
	setlos #1, gr6
	cmov gr0, gr6, cc4, 0
	slli gr6,#4,gr6
	setlos #16, gr5
	sub gr5,gr6,gr5
	srl gr8, gr5, gr4
	sethi #hi(#65280), gr5
	setlo #lo(#65280), gr5
	andcc gr4, gr5, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#3,gr5
	setlos #8, gr7
	sub gr7,gr5,gr7
	srl gr4, gr7, gr4
	add gr5,gr6,gr6
	andicc gr4, #240, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#2,gr5
	setlos #4, gr7
	sub gr7,gr5,gr7
	srl gr4, gr7, gr4
	add gr5,gr6,gr6
	andicc gr4, #12, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#1,gr5
	setlos #2, gr8
	sub gr8,gr5,gr7
	srl gr4, gr7, gr4
	sub gr8,gr4,gr8
	andi gr4, #2, gr4
	cmpi gr4, #0, icc0
	ckeq icc0, cc4
	cmov gr0, gr8, cc4, 0
	add gr5,gr6,gr5
	add gr8,gr5,gr8
	ret
	.size	__clzsi2, .-__clzsi2
	.p2align 4
	.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	cmp gr8,gr10,icc0
	blt icc0,0,.L659
	bgt icc0,0,.L660
	cmp gr9,gr11,icc0
	bc icc0,0,.L659
	bhi icc0,0,.L660
	setlos #1, gr8
	bra .L655
.L659:
	setlos #0, gr8
.L655:
	ret
.L660:
	setlos #2, gr8
	bra .L655
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
	sethi #hi(#65535), gr5
	setlo #lo(#65535), gr5
	andcc gr8, gr5, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr6
	cmov gr0, gr6, cc4, 0
	slli gr6,#4,gr6
	srl gr8, gr6, gr4
	andi gr4, #255, gr5
	cmpi gr5, #0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#3,gr5
	srl gr4, gr5, gr4
	add gr5,gr6,gr6
	andicc gr4, #15, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#2,gr5
	srl gr4, gr5, gr4
	add gr5,gr6,gr5
	andicc gr4, #3, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	slli gr8,#1,gr8
	srl gr4, gr8, gr4
	andi gr4, #3, gr4
	not gr4,gr6
	andi gr6, #1, gr6
	srli gr4, #1, gr4
	setlos #2, gr7
	sub gr7,gr4,gr4
	umul gr6,gr4,gr6
	add gr8,gr5,gr8
	add gr8,gr7,gr8
	ret
	.size	__ctzsi2, .-__ctzsi2
	.p2align 4
	.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	beq icc0,2,.L664
	addi gr10,#-32,gr10
	srl gr8, gr10, gr9
	setlos #0, gr5
.L665:
	mov gr5, gr8
.L666:
	ret
.L664:
	cmpi gr10, #0, icc0
	beq icc0,0,.L666
	srl gr8, gr10, gr5
	setlos #32, gr4
	sub gr4,gr10,gr4
	sll gr8,gr4,gr4
	srl gr9, gr10, gr9
	or gr4, gr9, gr9
	bra .L665
	.size	__lshrdi3, .-__lshrdi3
	.p2align 4
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	mov gr9, gr7
	sethi #hi(#65535), gr10
	setlo #lo(#65535), gr10
	and gr8, gr10, gr12
	and gr9, gr10, gr5
	umul gr12,gr5,gr14
	srli gr15, #16, gr4
	srli gr8, #16, gr6
	umul gr5,gr6,gr8
	add gr4,gr9,gr4
	and gr10, gr15, gr9
	slli gr4,#16,gr5
	add gr9,gr5,gr9
	srli gr5, #16, gr5
	srli gr7, #16, gr7
	umul gr12,gr7,gr12
	add gr5,gr13,gr5
	and gr9, gr10, gr9
	slli gr5,#16,gr8
	add gr9,gr8,gr9
	srli gr4, #16, gr8
	umul gr6,gr7,gr6
	add gr8,gr7,gr8
	srli gr5, #16, gr5
	add gr8,gr5,gr8
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
	mov gr8, gr19
	mov gr9, gr18
	mov gr11, gr9
	mov gr18, gr8
	sti gr10, @(fp,-4)
	sti gr11, @(fp,-8)
	call __muldsi3
	mov gr8, gr5
	mov gr9, gr4
	ldi @(fp,-8), gr11
	umul gr11,gr19,gr8
	ldi @(fp,-4), gr10
	umul gr18,gr10,gr10
	add gr9,gr11,gr8
	add gr8,gr5,gr8
	mov gr4, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
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
	xor gr8, gr9, gr8
	srli gr8, #16, gr4
	xor gr4, gr8, gr4
	srli gr4, #8, gr5
	xor gr5, gr4, gr5
	srli gr5, #4, gr4
	xor gr4, gr5, gr4
	andi gr4, #15, gr4
	setlos #27030, gr8
	sra gr8, gr4, gr8
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
	xor gr5, gr4, gr5
	srli gr5, #4, gr4
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
	srli gr8, #2, gr10
	sethi #hi(#858993459), gr4
	setlo #lo(#858993459), gr4
	and gr10, gr4, gr6
	and gr5, gr4, gr7
	and gr8, gr4, gr10
	and gr9, gr4, gr11
	addcc gr7,gr11,gr7,icc0
	addx gr6,gr10,gr6,icc0
	slli gr6,#28,gr8
	srli gr7, #4, gr5
	or gr8, gr5, gr5
	srli gr6, #4, gr4
	addcc gr5,gr7,gr5,icc0
	addx gr4,gr6,gr4,icc0
	sethi #hi(#252645135), gr6
	setlo #lo(#252645135), gr6
	and gr4, gr6, gr4
	and gr5, gr6, gr6
	add gr4,gr6,gr5
	srli gr5, #16, gr4
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
	srli gr8, #2, gr5
	sethi #hi(#858993459), gr4
	setlo #lo(#858993459), gr4
	and gr5, gr4, gr5
	and gr8, gr4, gr8
	add gr5,gr8,gr5
	srli gr5, #4, gr4
	add gr4,gr5,gr4
	sethi #hi(#252645135), gr5
	setlo #lo(#252645135), gr5
	and gr4, gr5, gr4
	srli gr4, #16, gr5
	add gr5,gr4,gr4
	srli gr4, #8, gr8
	add gr8,gr4,gr8
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
	mov gr10, gr24
	mov gr10, gr18
	sethi #hi(#1072693248), gr22
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
	bra .L678
.L676:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L677
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
.L678:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L676
	mov gr20, gr10
	mov gr21, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L676
.L677:
	cmpi gr24, #0, icc0
	bn icc0,0,.L680
.L675:
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
.L680:
	mov gr22, gr10
	mov gr23, gr11
	sethi #hi(#1072693248), gr8
	setlo #lo(#1072693248), gr8
	setlos #0, gr9
	mov gr19, gr15
	call __divd
	mov gr8, gr22
	mov gr9, gr23
	bra .L675
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
	mov gr9, gr22
	mov gr9, gr18
	sethi #hi(#1065353216), gr20
	setlo #lo(#1065353216), gr20
	bra .L684
.L682:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L683
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr19
.L684:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L682
	mov gr19, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
	bra .L682
.L683:
	cmpi gr22, #0, icc0
	bn icc0,0,.L686
.L681:
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L686:
	mov gr20, gr9
	sethi #hi(#1065353216), gr8
	setlo #lo(#1065353216), gr8
	mov gr21, gr15
	call __divf
	mov gr8, gr20
	bra .L681
	.size	__powisf2, .-__powisf2
	.p2align 4
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	cmp gr8,gr10,icc0
	bc icc0,0,.L691
	bhi icc0,0,.L692
	cmp gr9,gr11,icc0
	bc icc0,0,.L691
	bhi icc0,0,.L692
	setlos #1, gr8
	bra .L687
.L691:
	setlos #0, gr8
.L687:
	ret
.L692:
	setlos #2, gr8
	bra .L687
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
	.section	.sbss,"aw",@nobits
	.p2align 2
	.type	s.0, @object
	.size	s.0, 7
s.0:
	.zero	7
	.p2align 3
	.type	seed, @object
	.size	seed, 8
seed:
	.zero	8
	.section	.rodata
	.p2align 2
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
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
