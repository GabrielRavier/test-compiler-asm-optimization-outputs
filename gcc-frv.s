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
	bls icc0,2,.L76
	cmpi gr8,#127,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
.L75:
	ret
.L76:
	setlos #1, gr8
	bra .L75
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
	cmpi gr8,#5,icc0
	ckc icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
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
	bls icc0,2,.L89
	addi gr8,#-127,gr4
	cmpi gr4,#32,icc0
	bls icc0,2,.L90
	setlos #-8232, gr4
	add gr8,gr4,gr4
	cmpi gr4,#1,icc0
	bls icc0,0,.L91
	sethi #hi(#-65529), gr4
	setlo #lo(#-65529), gr4
	add gr8,gr4,gr8
	cmpi gr8,#3,icc0
	ckc icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	bra .L88
.L89:
	setlos #1, gr8
.L88:
	ret
.L90:
	setlos #1, gr8
	bra .L88
.L91:
	setlos #1, gr8
	bra .L88
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
	bls icc0,0,.L102
	setlos #8231, gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L97
	setlos #-8234, gr4
	add gr8,gr4,gr4
	sethi #hi(#47061), gr5
	setlo #lo(#47061), gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L98
	sethi #hi(#-57344), gr4
	setlo #lo(#-57344), gr4
	add gr8,gr4,gr4
	setlos #8184, gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L99
	sethi #hi(#-65532), gr4
	setlo #lo(#-65532), gr4
	add gr8,gr4,gr4
	sethi #hi(#1048579), gr5
	setlo #lo(#1048579), gr5
	cmp gr4,gr5,icc0
	bhi icc0,0,.L100
	sethi #hi(#65534), gr4
	setlo #lo(#65534), gr4
	and gr8, gr4, gr8
	cmp gr8,gr4,icc0
	ckne icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	bra .L96
.L102:
	addi gr8,#1,gr8
	andi gr8, #127, gr8
	cmpi gr8,#32,icc0
	ckhi icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L96:
	ret
.L97:
	setlos #1, gr8
	bra .L96
.L98:
	setlos #1, gr8
	bra .L96
.L99:
	setlos #1, gr8
	bra .L96
.L100:
	setlos #0, gr8
	bra .L96
	.size	iswprint, .-iswprint
	.p2align 4
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi gr8,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L105
	ori gr8, #32, gr8
	addi gr8,#-97,gr8
	cmpi gr8,#6,icc0
	ckc icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
.L104:
	ret
.L105:
	setlos #1, gr8
	bra .L104
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
	bne icc0,0,.L111
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L112
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L115
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __subd
.L109:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L111:
	mov gr18, gr8
	mov gr19, gr9
	bra .L109
.L112:
	mov gr22, gr8
	mov gr23, gr9
	bra .L109
.L115:
	setlos #0, gr8
	setlos #0, gr9
	bra .L109
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
	bne icc0,0,.L119
	mov gr20, gr9
	mov gr20, gr8
	mov gr19, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L120
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L123
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call __subf
.L117:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L119:
	mov gr18, gr8
	bra .L117
.L120:
	mov gr20, gr8
	bra .L117
.L123:
	setlos #0, gr8
	bra .L117
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
	bne icc0,0,.L128
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L129
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L126
	cmpi gr18, #0, icc0
	bp icc0,2,.L130
	mov gr20, gr8
	mov gr21, gr9
.L125:
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
	mov gr20, gr10
	mov gr21, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L133
	mov gr20, gr8
	mov gr21, gr9
	bra .L125
.L128:
	mov gr20, gr8
	mov gr21, gr9
	bra .L125
.L129:
	mov gr18, gr8
	mov gr19, gr9
	bra .L125
.L130:
	mov gr18, gr8
	mov gr19, gr9
	bra .L125
.L133:
	mov gr18, gr8
	mov gr19, gr9
	bra .L125
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
	bne icc0,0,.L138
	mov gr19, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L139
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr19, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L136
	cmpi gr18, #0, icc0
	bp icc0,2,.L140
	mov gr19, gr8
.L135:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L136:
	mov gr19, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __ltsf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L143
	mov gr19, gr8
	bra .L135
.L138:
	mov gr19, gr8
	bra .L135
.L139:
	mov gr18, gr8
	bra .L135
.L140:
	mov gr18, gr8
	bra .L135
.L143:
	mov gr18, gr8
	bra .L135
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
	bne icc0,0,.L148
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L149
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L146
	cmpi gr18, #0, icc0
	bp icc0,2,.L150
	mov gr20, gr8
	mov gr21, gr9
.L145:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L146:
	mov gr20, gr10
	mov gr21, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L153
	mov gr20, gr8
	mov gr21, gr9
	bra .L145
.L148:
	mov gr20, gr8
	mov gr21, gr9
	bra .L145
.L149:
	mov gr18, gr8
	mov gr19, gr9
	bra .L145
.L150:
	mov gr18, gr8
	mov gr19, gr9
	bra .L145
.L153:
	mov gr18, gr8
	mov gr19, gr9
	bra .L145
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
	bne icc0,0,.L158
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L159
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L156
	cmpi gr20, #0, icc0
	bp icc0,2,.L160
	mov gr20, gr8
	mov gr21, gr9
.L155:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L156:
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L163
	mov gr20, gr8
	mov gr21, gr9
	bra .L155
.L158:
	mov gr18, gr8
	mov gr19, gr9
	bra .L155
.L159:
	mov gr20, gr8
	mov gr21, gr9
	bra .L155
.L160:
	mov gr18, gr8
	mov gr19, gr9
	bra .L155
.L163:
	mov gr18, gr8
	mov gr19, gr9
	bra .L155
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
	bne icc0,0,.L168
	mov gr18, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L169
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr19, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L166
	cmpi gr19, #0, icc0
	bp icc0,2,.L170
	mov gr19, gr8
.L165:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L166:
	mov gr18, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __ltsf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L173
	mov gr19, gr8
	bra .L165
.L168:
	mov gr18, gr8
	bra .L165
.L169:
	mov gr19, gr8
	bra .L165
.L170:
	mov gr18, gr8
	bra .L165
.L173:
	mov gr18, gr8
	bra .L165
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
	bne icc0,0,.L178
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L179
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L176
	cmpi gr20, #0, icc0
	bp icc0,2,.L180
	mov gr20, gr8
	mov gr21, gr9
.L175:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L176:
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L183
	mov gr20, gr8
	mov gr21, gr9
	bra .L175
.L178:
	mov gr18, gr8
	mov gr19, gr9
	bra .L175
.L179:
	mov gr20, gr8
	mov gr21, gr9
	bra .L175
.L180:
	mov gr18, gr8
	mov gr19, gr9
	bra .L175
.L183:
	mov gr18, gr8
	mov gr19, gr9
	bra .L175
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
	bra .L185
.L186:
	andi gr8, #63, gr6
	ldi @(gr15,#got12(_gp)), gr4
	add gr7,gr4,gr4
	ldsb @(gr4,gr6),gr4
	stb gr4, @(gr5,gr0)
	addi gr5,#1,gr5
	srli gr8, #6, gr8
.L185:
	cmpi gr8, #0, icc0
	bne icc0,2,.L186
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
	addi gr8,#-1,gr7
	setlos #0, gr6
	sethi #gotoffhi(seed), gr4
	setlo #gotofflo(seed), gr4
	add gr4,gr15,gr4
	st gr6, @(gr4,gr0)
	sti gr7, @(gr4,4)
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
	ld @(gr18,gr0), gr8
	ldi @(gr18,4), gr9
	sethi #hi(#1481765933), gr10
	setlo #lo(#1481765933), gr10
	sethi #hi(#1284865837), gr11
	setlo #lo(#1284865837), gr11
	call __mulll
	addicc gr9,#1,gr9,icc0
	addxi gr8,#0,gr8,icc0
	st gr8, @(gr18,gr0)
	sti gr9, @(gr18,4)
	srli gr8, #1, gr5
	mov gr5, gr8
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
	mov gr15, gr24
	mov gr8, gr23
	mov gr9, gr22
	mov gr10, gr26
	mov gr11, gr20
	mov gr12, gr25
	ld @(gr10,gr0), gr21
	mov gr9, gr19
	setlos #0, gr18
	bra .L196
.L197:
	addi gr18,#1,gr18
.L196:
	cmp gr18,gr21,icc0
	beq icc0,0,.L200
	mov gr19, gr9
	mov gr23, gr8
	ldd @(gr25,gr0), gr14
	calll @(gr14,gr0)
	add gr19,gr20,gr19
	cmpi gr8, #0, icc0
	bne icc0,2,.L197
	umul gr18,gr20,gr18
	add gr22,gr19,gr8
	bra .L198
.L200:
	addi gr21,#1,gr4
	st gr4, @(gr26,gr0)
	umul gr20,gr21,gr4
	add gr22,gr5,gr8
	mov gr20, gr10
	mov gr23, gr9
	mov gr24, gr15
	call memcpy
.L198:
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
	bra .L202
.L203:
	addi gr18,#1,gr18
.L202:
	cmp gr18,gr24,icc0
	beq icc0,0,.L206
	mov gr19, gr9
	mov gr23, gr8
	ldd @(gr21,gr0), gr14
	calll @(gr14,gr0)
	add gr19,gr20,gr19
	cmpi gr8, #0, icc0
	bne icc0,2,.L203
	umul gr18,gr20,gr18
	add gr22,gr19,gr8
	bra .L204
.L206:
	setlos #0, gr8
.L204:
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
	bra .L209
.L210:
	addi gr18,#1,gr18
.L209:
	ldsb @(gr18,gr0),gr8
	mov gr19, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L210
	ldsb @(gr18,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L216
	cmpi gr4,#45,icc0
	bne icc0,2,.L217
	setlos #1, gr5
.L211:
	addi gr18,#1,gr18
.L212:
	setlos #0, gr8
	bra .L213
.L216:
	setlos #0, gr5
	bra .L211
.L217:
	setlos #0, gr5
	bra .L212
.L214:
	smuli gr8,#10,gr8
	addi gr18,#1,gr18
	ldsbi @(gr18,-1),gr4
	addi gr4,#-48,gr4
	sub gr9,gr4,gr8
.L213:
	ldsb @(gr18,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L214
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
	bra .L220
.L221:
	addi gr18,#1,gr18
.L220:
	ldsb @(gr18,gr0),gr8
	mov gr19, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L221
	ldsb @(gr18,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L227
	cmpi gr4,#45,icc0
	bne icc0,2,.L228
	setlos #1, gr5
.L222:
	addi gr18,#1,gr18
.L223:
	setlos #0, gr8
	bra .L224
.L227:
	setlos #0, gr5
	bra .L222
.L228:
	setlos #0, gr5
	bra .L223
.L225:
	smuli gr8,#10,gr8
	addi gr18,#1,gr18
	ldsbi @(gr18,-1),gr4
	addi gr4,#-48,gr4
	sub gr9,gr4,gr8
.L224:
	ldsb @(gr18,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L225
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
	sti gr25, @(sp,28)
	mov gr15, gr25
	mov gr8, gr24
	bra .L231
.L232:
	addi gr24,#1,gr24
.L231:
	ldsb @(gr24,gr0),gr8
	mov gr25, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L232
	ldsb @(gr24,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L238
	cmpi gr4,#45,icc0
	bne icc0,2,.L239
	setlos #1, gr5
.L233:
	addi gr24,#1,gr24
.L234:
	setlos #0, gr8
	setlos #0, gr9
	bra .L235
.L238:
	setlos #0, gr5
	bra .L233
.L239:
	setlos #0, gr5
	bra .L234
.L236:
	srli gr9, #30, gr4
	slli gr8,#2,gr18
	or gr4, gr18, gr18
	slli gr9,#2,gr19
	addcc gr9,gr19,gr9,icc0
	addx gr8,gr18,gr8,icc0
	srli gr9, #31, gr4
	slli gr8,#1,gr20
	or gr4, gr20, gr20
	slli gr9,#1,gr21
	addi gr24,#1,gr24
	ldsbi @(gr24,-1),gr4
	addi gr4,#-48,gr4
	srai gr4, #31, gr22
	subcc gr21,gr4,gr9,icc0
	subx gr20,gr22,gr8,icc0
.L235:
	ldsb @(gr24,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L236
	cmpi gr5, #0, icc0
	bne icc0,2,.L237
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
.L237:
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
	bra .L242
.L249:
	srli gr18, #1, gr18
.L242:
	cmpi gr18, #0, icc0
	beq icc0,0,.L248
	srli gr18, #1, gr4
	umul gr4,gr20,gr4
	add gr21,gr5,gr19
	mov gr19, gr9
	mov gr23, gr8
	ldd @(gr22,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,0,.L249
	cmpi gr8,#0,icc0
	ble icc0,0,.L247
	add gr19,gr20,gr21
	srli gr18, #1, gr4
	addi gr18,#-1,gr18
	sub gr18,gr4,gr18
	bra .L242
.L248:
	setlos #0, gr8
.L245:
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
.L247:
	mov gr19, gr8
	bra .L245
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
	bra .L251
.L257:
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #-1, gr4
	cadd gr19, gr21, gr20, cc4, 1
	cadd gr18, gr4, gr18, cc4, 1
	srai gr18, #1, gr18
.L251:
	cmpi gr18, #0, icc0
	beq icc0,0,.L256
	srai gr18, #1, gr4
	umul gr4,gr21,gr4
	add gr20,gr5,gr19
	mov gr22, gr10
	mov gr19, gr9
	mov gr24, gr8
	ldd @(gr23,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,2,.L257
	mov gr19, gr8
	bra .L252
.L256:
	setlos #0, gr8
.L252:
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
	bn icc0,0,.L262
.L260:
	ret
.L262:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	bra .L260
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
	bn icc0,0,.L269
.L267:
	ret
.L269:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	bra .L267
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
	bra .L272
.L274:
	addi gr8,#4,gr8
.L272:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L273
	cmp gr9,gr4,icc0
	bne icc0,2,.L274
.L273:
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
	bra .L278
.L280:
	addi gr8,#4,gr8
	addi gr9,#4,gr9
.L278:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L279
	cmpi gr5, #0, icc0
	beq icc0,0,.L279
	ld @(gr9,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L280
.L279:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L282
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
.L281:
	ret
.L282:
	setlos #-1, gr8
	bra .L281
	.size	wcscmp, .-wcscmp
	.p2align 4
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	setlos #0, gr4
	addi gr8,#-4,gr6
.L284:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
	ld @(gr6,gr4), gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L284
	ret
	.size	wcscpy, .-wcscpy
	.p2align 4
	.globl wcslen
	.type	wcslen, @function
wcslen:
	mov gr8, gr5
	bra .L287
.L288:
	addi gr5,#4,gr5
.L287:
	ld @(gr5,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L288
	sub gr5,gr8,gr5
	srai gr5, #2, gr8
	ret
	.size	wcslen, .-wcslen
	.p2align 4
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.L290:
	cmpi gr10, #0, icc0
	beq icc0,0,.L291
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L291
	cmpi gr5, #0, icc0
	beq icc0,0,.L291
	ld @(gr9,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L291
	addi gr10,#-1,gr10
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	bra .L290
.L291:
	cmpi gr10, #0, icc0
	beq icc0,2,.L294
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L295
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L293
.L294:
	setlos #0, gr8
.L293:
	ret
.L295:
	setlos #-1, gr8
	bra .L293
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	bra .L297
.L299:
	addi gr10,#-1,gr10
	addi gr8,#4,gr8
.L297:
	cmpi gr10, #0, icc0
	beq icc0,0,.L298
	ld @(gr8,gr0), gr4
	cmp gr9,gr4,icc0
	bne icc0,2,.L299
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
	bra .L303
.L305:
	addi gr10,#-1,gr10
	addi gr8,#4,gr8
	addi gr9,#4,gr9
.L303:
	cmpi gr10, #0, icc0
	beq icc0,0,.L304
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L305
.L304:
	cmpi gr10, #0, icc0
	beq icc0,2,.L307
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L308
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L306
.L307:
	setlos #0, gr8
.L306:
	ret
.L308:
	setlos #-1, gr8
	bra .L306
	.size	wmemcmp, .-wmemcmp
	.p2align 4
	.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	setlos #0, gr4
	bra .L310
.L311:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
.L310:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L311
	ret
	.size	wmemcpy, .-wmemcpy
	.p2align 4
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	cmp gr8,gr9,icc0
	beq icc0,0,.L313
	sub gr8,gr9,gr4
	slli gr10,#2,gr5
	cmp gr4,gr5,icc0
	bnc icc0,2,.L318
	addi gr10,#-1,gr4
	slli gr4,#2,gr4
	bra .L315
.L316:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#-4,gr4
.L315:
	cmpi gr4,#-4,icc0
	bne icc0,2,.L316
.L313:
	ret
.L317:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
.L314:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L317
	bra .L313
.L318:
	setlos #0, gr4
	bra .L314
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl wmemset
	.type	wmemset, @function
wmemset:
	mov gr8, gr4
	bra .L320
.L321:
	addi gr4,#4,gr4
	sti gr9, @(gr4,-4)
.L320:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L321
	ret
	.size	wmemset, .-wmemset
	.p2align 4
	.globl bcopy
	.type	bcopy, @function
bcopy:
	cmp gr8,gr9,icc0
	bnc icc0,2,.L323
	addi gr8,#-1,gr8
	addi gr9,#-1,gr9
	bra .L324
.L325:
	ldsb @(gr8,gr10),gr4
	stb gr4, @(gr9,gr10)
	addi gr10,#-1,gr10
.L324:
	cmpi gr10, #0, icc0
	bne icc0,2,.L325
.L322:
	ret
.L323:
	cmp gr8,gr9,icc0
	beq icc0,0,.L322
	setlos #0, gr4
	bra .L327
.L328:
	ldsb @(gr8,gr4),gr5
	stb gr5, @(gr9,gr4)
	addi gr4,#1,gr4
.L327:
	cmp gr4,gr10,icc0
	bne icc0,2,.L328
	bra .L322
	.size	bcopy, .-bcopy
	.p2align 4
	.globl rotl64
	.type	rotl64, @function
rotl64:
	addi gr10,#-32,gr6
	sll gr9,gr6,gr12
	srli gr9, #1, gr11
	setlos #31, gr7
	sub gr7,gr10,gr4
	srl gr11, gr4, gr11
	sll gr8,gr10,gr4
	or gr11, gr4, gr4
	sll gr9,gr10,gr5
	cmpi gr6, #0, icc0
	ckp icc0, cc4
	cmov gr12, gr4, cc4, 1
	ckp icc0, cc4
	cmov gr0, gr5, cc4, 1
	sub gr0,gr10,gr10
	andi gr10, #63, gr10
	addi gr10,#-32,gr11
	srl gr8, gr11, gr13
	slli gr8,#1,gr12
	sub gr7,gr10,gr7
	sll gr12,gr7,gr12
	srl gr9, gr10, gr7
	or gr12, gr7, gr7
	srl gr8, gr10, gr6
	cmpi gr11, #0, icc0
	ckp icc0, cc4
	cmov gr13, gr7, cc4, 1
	ckp icc0, cc4
	cmov gr0, gr6, cc4, 1
	or gr6, gr4, gr8
	or gr7, gr5, gr9
	ret
	.size	rotl64, .-rotl64
	.p2align 4
	.globl rotr64
	.type	rotr64, @function
rotr64:
	addi gr10,#-32,gr6
	srl gr8, gr6, gr12
	slli gr8,#1,gr11
	setlos #31, gr7
	sub gr7,gr10,gr4
	sll gr11,gr4,gr11
	srl gr9, gr10, gr5
	or gr11, gr5, gr5
	srl gr8, gr10, gr4
	cmpi gr6, #0, icc0
	ckp icc0, cc4
	cmov gr12, gr5, cc4, 1
	ckp icc0, cc4
	cmov gr0, gr4, cc4, 1
	sub gr0,gr10,gr10
	andi gr10, #63, gr10
	addi gr10,#-32,gr11
	sll gr9,gr11,gr13
	srli gr9, #1, gr12
	sub gr7,gr10,gr7
	srl gr12, gr7, gr12
	sll gr8,gr10,gr6
	or gr12, gr6, gr6
	sll gr9,gr10,gr7
	cmpi gr11, #0, icc0
	ckp icc0, cc4
	cmov gr13, gr6, cc4, 1
	ckp icc0, cc4
	cmov gr0, gr7, cc4, 1
	or gr6, gr4, gr8
	or gr7, gr5, gr9
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
	addi sp,#-24,sp
	movsg lr, gr5
	sti gr5, @(sp,16)
	sti gr18, @(sp,0)
	sethi #hi(#-16777216), gr18
	setlo #lo(#-16777216), gr18
	and gr8, gr18, gr6
	srli gr6, #24, gr5
	sethi #hi(#16711680), gr13
	setlo #lo(#16711680), gr13
	and gr8, gr13, gr10
	srli gr10, #8, gr7
	setlos #0, gr14
	or gr7, gr5, gr15
	sethi #hi(#65280), gr12
	setlo #lo(#65280), gr12
	and gr8, gr12, gr6
	slli gr6,#8,gr5
	srli gr6, #24, gr4
	or gr14, gr4, gr10
	or gr15, gr5, gr11
	andi gr8, #255, gr6
	slli gr6,#24,gr5
	srli gr6, #8, gr4
	or gr10, gr4, gr6
	or gr11, gr5, gr7
	setlos #0, gr10
	and gr9, gr18, gr11
	srli gr11, #24, gr8
	slli gr10,#8,gr4
	or gr8, gr4, gr4
	slli gr11,#8,gr5
	or gr6, gr4, gr10
	or gr7, gr5, gr11
	setlos #0, gr6
	and gr9, gr13, gr7
	srli gr7, #8, gr8
	slli gr6,#24,gr4
	or gr8, gr4, gr4
	slli gr7,#24,gr5
	or gr10, gr4, gr6
	or gr11, gr5, gr7
	and gr9, gr12, gr5
	slli gr5,#8,gr10
	or gr6, gr10, gr4
	andi gr9, #255, gr11
	slli gr11,#24,gr6
	or gr4, gr6, gr8
	mov gr7, gr9
	ldi @(sp,0), gr18
	ldi @(sp,16), gr5
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	bswap_64, .-bswap_64
	.p2align 4
	.globl ffs
	.type	ffs, @function
ffs:
	setlos #0, gr4
.L344:
	cmpi gr4,#32,icc0
	beq icc0,0,.L348
	srl gr8, gr4, gr5
	andicc gr5, #1, gr0, icc0
	bne icc0,0,.L349
	addi gr4,#1,gr4
	bra .L344
.L349:
	addi gr4,#1,gr8
.L346:
	ret
.L348:
	setlos #0, gr8
	bra .L346
	.size	ffs, .-ffs
	.p2align 4
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmpi gr8, #0, icc0
	beq icc0,0,.L354
	setlos #1, gr4
	bra .L352
.L353:
	srai gr8, #1, gr8
	addi gr4,#1,gr4
.L352:
	andicc gr8, #1, gr0, icc0
	beq icc0,2,.L353
	mov gr4, gr8
.L351:
	ret
.L354:
	setlos #0, gr8
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
	bn icc0,2,.L358
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
.L358:
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
	bn icc0,2,.L364
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
.L362:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L364:
	setlos #1, gr8
	bra .L362
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
	bn icc0,2,.L370
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
.L368:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L370:
	setlos #1, gr8
	bra .L368
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
	bne icc0,0,.L375
	mov gr20, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __addf
	mov gr8, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __nesf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L375
	cmpi gr18, #0, icc0
	bn icc0,0,.L382
	sethi #hi(#1073741824), gr19
	setlo #lo(#1073741824), gr19
	bra .L379
.L382:
	sethi #hi(#1056964608), gr19
	setlo #lo(#1056964608), gr19
	bra .L379
.L378:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L375
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr19
.L379:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L378
	mov gr19, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
	bra .L378
.L375:
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
	bne icc0,0,.L384
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
	beq icc0,2,.L384
	cmpi gr20, #0, icc0
	bn icc0,0,.L391
	sethi #hi(#1073741824), gr18
	setlo #lo(#1073741824), gr18
	setlos #0, gr19
	bra .L388
.L391:
	sethi #hi(#1071644672), gr18
	setlo #lo(#1071644672), gr18
	setlos #0, gr19
	bra .L388
.L387:
	srli gr20, #31, gr4
	add gr4,gr20,gr10
	sraicc gr10, #1, gr20, icc0
	beq icc0,0,.L384
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
.L388:
	andicc gr20, #1, gr0, icc0
	beq icc0,2,.L387
	mov gr18, gr10
	mov gr19, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L387
.L384:
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
	bne icc0,0,.L393
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
	beq icc0,2,.L393
	cmpi gr20, #0, icc0
	bn icc0,0,.L400
	sethi #hi(#1073741824), gr18
	setlo #lo(#1073741824), gr18
	setlos #0, gr19
	bra .L397
.L400:
	sethi #hi(#1071644672), gr18
	setlo #lo(#1071644672), gr18
	setlos #0, gr19
	bra .L397
.L396:
	srli gr20, #31, gr4
	add gr4,gr20,gr10
	sraicc gr10, #1, gr20, icc0
	beq icc0,0,.L393
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
.L397:
	andicc gr20, #1, gr0, icc0
	beq icc0,2,.L396
	mov gr18, gr10
	mov gr19, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L396
.L393:
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
	bra .L402
.L403:
	ldsb @(gr9,gr4),gr6
	ldsb @(gr8,gr4),gr5
	xor gr5, gr6, gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
.L402:
	cmp gr4,gr10,icc0
	bne icc0,2,.L403
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
	bra .L405
.L407:
	addi gr19,#1,gr19
	addi gr8,#1,gr8
	addi gr18,#-1,gr18
.L405:
	cmpi gr18, #0, icc0
	beq icc0,0,.L406
	ldsb @(gr19,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	bne icc0,2,.L407
.L406:
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
.L410:
	cmp gr8,gr9,icc0
	beq icc0,0,.L411
	ldsb @(gr5,gr8),gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L412
.L411:
	ret
.L412:
	addi gr8,#1,gr8
	bra .L410
	.size	strnlen, .-strnlen
	.p2align 4
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.L414:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L420
	mov gr9, gr5
.L417:
	ldsb @(gr5,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L421
	addi gr5,#1,gr5
	ldsbi @(gr5,-1),gr6
	ldsb @(gr8,gr0),gr4
	cmp gr6,gr4,icc0
	bne icc0,2,.L417
.L415:
	ret
.L421:
	addi gr8,#1,gr8
	bra .L414
.L420:
	setlos #0, gr8
	bra .L415
	.size	strpbrk, .-strpbrk
	.p2align 4
	.globl strrchr
	.type	strrchr, @function
strrchr:
	setlos #0, gr5
.L424:
	ldsb @(gr8,gr0),gr4
	cmp gr9,gr4,icc0
	ckeq icc0, cc4
	cmov gr8, gr5, cc4, 1
	addi gr8,#1,gr8
	ldsbi @(gr8,-1),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L424
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
	beq icc0,0,.L431
	ldsb @(gr20,gr0),gr22
.L429:
	mov gr22, gr9
	mov gr18, gr8
	mov gr19, gr15
	call strchr
	mov gr8, gr18
	cmpi gr8, #0, icc0
	beq icc0,0,.L433
	mov gr21, gr10
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call strncmp
	cmpi gr8, #0, icc0
	beq icc0,0,.L432
	addi gr18,#1,gr18
	bra .L429
.L433:
	setlos #0, gr8
	bra .L428
.L431:
	mov gr18, gr8
.L428:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L432:
	mov gr18, gr8
	bra .L428
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
	bn icc0,0,.L447
.L435:
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,0,.L445
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L437
	mov gr18, gr8
	mov gr19, gr9
.L438:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L447:
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L435
.L437:
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	xor gr18, gr4, gr8
	mov gr19, gr9
	bra .L438
.L445:
	mov gr18, gr8
	mov gr19, gr9
	bra .L438
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
	beq icc0,0,.L449
	cmp gr9,gr11,icc0
	ckc icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L454
	addi gr10,#1,gr23
	addi gr11,#-1,gr22
	bra .L450
.L451:
	addi gr18,#1,gr18
.L450:
	cmp gr18,gr20,icc0
	bhi icc0,0,.L456
	ldsb @(gr18,gr0),gr5
	ldsb @(gr19,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L451
	addi gr18,#1,gr8
	mov gr22, gr10
	mov gr23, gr9
	mov gr21, gr15
	call memcmp
	cmpi gr8, #0, icc0
	bne icc0,2,.L451
	mov gr18, gr8
	bra .L449
.L456:
	setlos #0, gr8
.L449:
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
.L454:
	setlos #0, gr8
	bra .L449
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
	bn icc0,0,.L478
	setlos #0, gr26
.L459:
	sethi #hi(#1072693248), gr10
	setlo #lo(#1072693248), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gedf2
	cmpi gr8, #0, icc0
	bn icc0,0,.L479
	setlos #0, gr21
	sethi #hi(#1072693248), gr22
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
	sethi #hi(#1071644672), gr24
	setlo #lo(#1071644672), gr24
	setlos #0, gr25
	bra .L461
.L478:
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
	setlos #1, gr26
	bra .L459
.L463:
	addi gr21,#1,gr21
	mov gr24, gr10
	mov gr25, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
.L461:
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gedf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L463
.L464:
	st gr21, @(gr27,gr0)
	cmpi gr26, #0, icc0
	beq icc0,2,.L468
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
.L468:
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
.L479:
	sethi #hi(#1071644672), gr10
	setlo #lo(#1071644672), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L477
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	bne icc0,2,.L472
	setlos #0, gr21
	bra .L464
.L467:
	addi gr21,#-1,gr21
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __addd
	mov gr8, gr18
	mov gr9, gr19
.L466:
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,2,.L467
	bra .L464
.L472:
	setlos #0, gr21
	sethi #hi(#1071644672), gr22
	setlo #lo(#1071644672), gr22
	setlos #0, gr23
	bra .L466
.L477:
	setlos #0, gr21
	bra .L464
	.size	frexp, .-frexp
	.p2align 4
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	addi sp,#-24,sp
	movsg lr, gr5
	sti gr5, @(sp,16)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	mov gr8, gr4
	mov gr9, gr5
	setlos #0, gr18
	setlos #0, gr19
	bra .L481
.L482:
	srli gr11, #31, gr9
	slli gr10,#1,gr6
	or gr9, gr6, gr6
	slli gr11,#1,gr7
	mov gr6, gr10
	mov gr7, gr11
	slli gr4,#31,gr9
	srli gr5, #1, gr13
	or gr9, gr13, gr13
	srli gr4, #1, gr12
	mov gr12, gr4
	mov gr13, gr5
.L481:
	orcc gr4, gr5, gr0, icc0
	beq icc0,0,.L485
	setlos #0, gr14
	andi gr5, #1, gr15
	orcc gr14, gr15, gr0, icc0
	beq icc0,2,.L482
	addcc gr19,gr11,gr19,icc0
	addx gr18,gr10,gr18,icc0
	bra .L482
.L485:
	mov gr18, gr8
	mov gr19, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,16), gr5
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__muldi3, .-__muldi3
	.p2align 4
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	setlos #33, gr5
	setlos #1, gr4
	bra .L487
.L491:
	slli gr9,#1,gr9
	slli gr4,#1,gr4
.L487:
	cmp gr9,gr8,icc0
	bnc icc0,0,.L497
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L495
	cmpi gr9, #0, icc0
	bp icc0,2,.L491
	setlos #0, gr5
	bra .L489
.L497:
	setlos #0, gr5
	bra .L489
.L495:
	setlos #0, gr5
	bra .L489
.L493:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr4, #1, gr4
	srli gr9, #1, gr9
.L489:
	cmpi gr4, #0, icc0
	bne icc0,2,.L493
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
	slli gr8,#24,gr4
	srai gr4, #24, gr4
	cmpi gr4, #0, icc0
	ckn icc0, cc4
	setlos #24, gr5
	cnot gr8, gr8, cc4, 1
	csll gr8, gr5, gr4, cc4, 1
	csra gr4, gr5, gr4, cc4, 1
	cmpi gr4, #0, icc0
	beq icc0,0,.L501
	slli gr4,#8,gr8
	call __clzsi2
	addi gr8,#-1,gr8
.L500:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L501:
	setlos #7, gr8
	bra .L500
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
	cmpi gr8, #0, icc0
	ckn icc0, cc4
	cmov gr0, gr4, cc4, 1
	cmov gr0, gr5, cc4, 1
	cnot gr8, gr4, cc4, 1
	cnot gr9, gr5, cc4, 1
	cmov gr4, gr8, cc4, 1
	cmov gr5, gr9, cc4, 1
	orcc gr8, gr9, gr0, icc0
	beq icc0,0,.L507
	call __clzdi2
	addi gr8,#-1,gr8
.L505:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L507:
	setlos #63, gr8
	bra .L505
	.size	__clrsbdi2, .-__clrsbdi2
	.p2align 4
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	setlos #0, gr4
	bra .L509
.L511:
	andicc gr8, #1, gr0, icc0
	ckne icc0, cc4
	cadd gr4, gr9, gr4, cc4, 1
	srli gr8, #1, gr8
	slli gr9,#1,gr9
.L509:
	cmpi gr8, #0, icc0
	bne icc0,2,.L511
	mov gr4, gr8
	ret
	.size	__mulsi3, .-__mulsi3
	.p2align 4
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	srli gr10, #3, gr7
	andi gr10, #-8, gr4
	cmp gr8,gr9,icc0
	bc icc0,2,.L513
	add gr9,gr10,gr5
	cmp gr5,gr8,icc0
	bnc icc0,2,.L514
.L513:
	mov gr9, gr5
	mov gr8, gr6
	slli gr7,#3,gr7
	add gr7,gr9,gr7
	bra .L515
.L516:
	ld @(gr5,gr0), gr12
	ldi @(gr5,4), gr13
	st gr12, @(gr6,gr0)
	sti gr13, @(gr6,4)
	addi gr5,#8,gr5
	addi gr6,#8,gr6
.L515:
	cmp gr5,gr7,icc0
	bne icc0,2,.L516
	bra .L517
.L518:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
.L517:
	cmp gr10,gr4,icc0
	bhi icc0,2,.L518
.L512:
	ret
.L520:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L514:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L520
	bra .L512
	.size	__cmovd, .-__cmovd
	.p2align 4
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	srli gr10, #1, gr6
	cmp gr8,gr9,icc0
	bc icc0,2,.L523
	add gr9,gr10,gr4
	cmp gr4,gr8,icc0
	bnc icc0,2,.L524
.L523:
	slli gr6,#1,gr6
	setlos #0, gr4
	bra .L525
.L526:
	ldsh @(gr9,gr4),gr5
	sth gr5, @(gr8,gr4)
	addi gr4,#2,gr4
.L525:
	cmp gr4,gr6,icc0
	bne icc0,2,.L526
	andicc gr10, #1, gr0, icc0
	beq icc0,2,.L522
	addi gr10,#-1,gr10
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L522:
	ret
.L528:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L524:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L528
	bra .L522
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	srli gr10, #2, gr7
	andi gr10, #-4, gr4
	cmp gr8,gr9,icc0
	bc icc0,2,.L531
	add gr9,gr10,gr5
	cmp gr5,gr8,icc0
	bnc icc0,2,.L532
.L531:
	slli gr7,#2,gr7
	setlos #0, gr5
	bra .L533
.L534:
	ld @(gr9,gr5), gr6
	st gr6, @(gr8,gr5)
	addi gr5,#4,gr5
.L533:
	cmp gr5,gr7,icc0
	bne icc0,2,.L534
	bra .L535
.L536:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
.L535:
	cmp gr10,gr4,icc0
	bhi icc0,2,.L536
.L530:
	ret
.L538:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L532:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L538
	bra .L530
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
	cmpi gr8,#16,icc0
	beq icc0,0,.L548
	sub gr6,gr8,gr4
	sra gr5, gr4, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L548
	addi gr8,#1,gr8
	bra .L547
.L548:
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
	cmpi gr8,#16,icc0
	beq icc0,0,.L552
	sra gr5, gr8, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L552
	addi gr8,#1,gr8
	bra .L551
.L552:
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
	bp icc0,0,.L560
	mov gr19, gr8
	mov gr18, gr15
	call __ftoi
.L557:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L560:
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
	bra .L557
	.size	__fixunssfsi, .-__fixunssfsi
	.p2align 4
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	sethi #hi(#0),gr8
	setlos #0, gr6
	setlos #0, gr4
	bra .L562
.L564:
	sra gr8, gr4, gr5
	andicc gr5, #1, gr0, icc0
	ckne icc0, cc4
	setlos #1, gr5
	cadd gr6, gr5, gr6, cc4, 1
	addi gr4,#1,gr4
.L562:
	cmpi gr4,#16,icc0
	bne icc0,2,.L564
	andi gr6, #1, gr8
	ret
	.size	__parityhi2, .-__parityhi2
	.p2align 4
	.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	sethi #hi(#0),gr8
	setlos #0, gr6
	setlos #0, gr4
	bra .L566
.L568:
	sra gr8, gr4, gr5
	andicc gr5, #1, gr0, icc0
	ckne icc0, cc4
	setlos #1, gr5
	cadd gr6, gr5, gr6, cc4, 1
	addi gr4,#1,gr4
.L566:
	cmpi gr4,#16,icc0
	bne icc0,2,.L568
	mov gr6, gr8
	ret
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	setlos #0, gr4
	bra .L570
.L572:
	andicc gr8, #1, gr0, icc0
	ckne icc0, cc4
	cadd gr4, gr9, gr4, cc4, 1
	srli gr8, #1, gr8
	slli gr9,#1,gr9
.L570:
	cmpi gr8, #0, icc0
	bne icc0,2,.L572
	mov gr4, gr8
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmpi gr8, #0, icc0
	beq icc0,0,.L578
	setlos #0, gr4
	bra .L575
.L577:
	andicc gr9, #1, gr0, icc0
	ckne icc0, cc4
	cadd gr4, gr8, gr4, cc4, 1
	slli gr8,#1,gr8
	srli gr9, #1, gr9
.L575:
	cmpi gr9, #0, icc0
	bne icc0,2,.L577
	mov gr4, gr8
.L574:
	ret
.L578:
	setlos #0, gr8
	bra .L574
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.p2align 4
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	setlos #33, gr5
	setlos #1, gr4
	bra .L580
.L584:
	slli gr9,#1,gr9
	slli gr4,#1,gr4
.L580:
	cmp gr9,gr8,icc0
	bnc icc0,0,.L590
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L588
	cmpi gr9, #0, icc0
	bp icc0,2,.L584
	setlos #0, gr5
	bra .L582
.L590:
	setlos #0, gr5
	bra .L582
.L588:
	setlos #0, gr5
	bra .L582
.L586:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr4, #1, gr4
	srli gr9, #1, gr9
.L582:
	cmpi gr4, #0, icc0
	bne icc0,2,.L586
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
	bn icc0,0,.L593
	mov gr20, gr9
	mov gr19, gr8
	mov gr18, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
.L592:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L593:
	setlos #-1, gr8
	bra .L592
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
.L596:
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
	bra .L596
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
	srai gr8, #31, gr6
	mov gr9, gr11
	srai gr9, #31, gr10
	mov gr6, gr8
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
	mov gr9, gr4
	mov gr8, gr9
	setlos #0, gr8
	mov gr4, gr11
	setlos #0, gr10
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
	cmov gr4, gr6, cc4, 1
	cmov gr0, gr6, cc4, 0
	setlos #0, gr4
	setlos #0, gr5
	bra .L603
.L606:
	andicc gr9, #1, gr0, icc0
	ckne icc0, cc4
	cadd gr5, gr8, gr5, cc4, 1
	slli gr8,#1,gr8
	srai gr9, #1, gr9
	addi gr4,#1,gr4
.L603:
	cmpi gr9, #0, icc0
	beq icc0,0,.L605
	cmpi gr4,#32,icc0
	bne icc0,2,.L606
.L605:
	cmpi gr6, #0, icc0
	ckne icc0, cc4
	csub gr0, gr5, gr8, cc4, 1
	cmov gr5, gr8, cc4, 0
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
	bn icc0,0,.L615
.L612:
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
.L615:
	sub gr0,gr9,gr9
	xori gr18, #1, gr18
	andi gr18,#0xff,gr18
	bra .L612
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
.L622:
	cmp gr9,gr5,icc0
	bnc icc0,0,.L632
	addicc gr7, #-1, gr7, icc0
	beq icc0,0,.L630
	slli gr9,#16,gr6
	srai gr6, #16, gr6
	cmpi gr6, #0, icc0
	bn icc0,0,.L633
	slli gr9,#1,gr9
	sethi #hi(#0),gr9
	slli gr4,#1,gr4
	sethi #hi(#0),gr4
	bra .L622
.L632:
	setlos #0, gr8
	bra .L624
.L630:
	setlos #0, gr8
	bra .L624
.L633:
	setlos #0, gr8
	bra .L624
.L627:
	srli gr4, #1, gr4
	srli gr9, #1, gr9
.L624:
	cmpi gr4, #0, icc0
	beq icc0,0,.L634
	cmp gr5,gr9,icc0
	bc icc0,2,.L627
	sub gr5,gr9,gr5
	sethi #hi(#0),gr5
	or gr8, gr4, gr8
	bra .L627
.L634:
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
	bra .L636
.L640:
	slli gr9,#1,gr9
	slli gr4,#1,gr4
.L636:
	cmp gr9,gr8,icc0
	bnc icc0,0,.L646
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L644
	cmpi gr9, #0, icc0
	bp icc0,2,.L640
	setlos #0, gr5
	bra .L638
.L646:
	setlos #0, gr5
	bra .L638
.L644:
	setlos #0, gr5
	bra .L638
.L642:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr4, #1, gr4
	srli gr9, #1, gr9
.L638:
	cmpi gr4, #0, icc0
	bne icc0,2,.L642
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.p2align 4
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	beq icc0,2,.L648
	setlos #0, gr5
	addi gr10,#-32,gr10
	sll gr9,gr10,gr4
.L649:
	mov gr4, gr8
	mov gr5, gr9
.L650:
	ret
.L648:
	cmpi gr10, #0, icc0
	beq icc0,0,.L650
	sll gr9,gr10,gr5
	sll gr8,gr10,gr7
	setlos #32, gr6
	sub gr6,gr10,gr6
	srl gr9, gr6, gr6
	or gr6, gr7, gr4
	bra .L649
	.size	__ashldi3, .-__ashldi3
	.p2align 4
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	beq icc0,2,.L653
	srai gr8, #31, gr4
	addi gr10,#-32,gr10
	sra gr8, gr10, gr5
.L654:
	mov gr4, gr8
	mov gr5, gr9
.L655:
	ret
.L653:
	cmpi gr10, #0, icc0
	beq icc0,0,.L655
	sra gr8, gr10, gr4
	setlos #32, gr6
	sub gr6,gr10,gr6
	sll gr8,gr6,gr6
	srl gr9, gr10, gr10
	or gr6, gr10, gr5
	bra .L654
	.size	__ashrdi3, .-__ashrdi3
	.p2align 4
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	addi sp,#-48,sp
	movsg lr, gr5
	sti gr5, @(sp,40)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sti gr25, @(sp,28)
	srli gr8, #24, gr11
	setlos #0, gr10
	srli gr8, #8, gr5
	setlos #0, gr14
	sethi #hi(#65280), gr22
	setlo #lo(#65280), gr22
	and gr5, gr22, gr15
	slli gr8,#8,gr20
	srli gr9, #24, gr5
	or gr20, gr5, gr5
	setlos #0, gr12
	sethi #hi(#16711680), gr24
	setlo #lo(#16711680), gr24
	and gr5, gr24, gr13
	slli gr8,#24,gr23
	srli gr9, #8, gr5
	or gr23, gr5, gr5
	setlos #0, gr18
	sethi #hi(#-16777216), gr4
	setlo #lo(#-16777216), gr4
	and gr5, gr4, gr19
	srli gr9, #24, gr4
	or gr4, gr20, gr6
	slli gr9,#8,gr7
	andi gr6, #255, gr20
	srli gr9, #8, gr6
	or gr6, gr23, gr4
	slli gr9,#24,gr5
	and gr4, gr22, gr8
	and gr7, gr24, gr6
	or gr5, gr10, gr22
	or gr22, gr14, gr4
	or gr11, gr15, gr5
	or gr4, gr12, gr10
	or gr5, gr13, gr11
	or gr10, gr18, gr4
	or gr11, gr19, gr5
	or gr4, gr20, gr10
	or gr10, gr8, gr4
	or gr4, gr6, gr8
	mov gr5, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	ldi @(sp,24), gr24
	ldi @(sp,28), gr25
	ldi @(sp,40), gr5
	addi sp,#48,sp
	jmpl @(gr5,gr0)
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
	setlos #16, gr5
	cmov gr5, gr4, cc4, 1
	cmov gr0, gr4, cc4, 0
	setlos #16, gr5
	sub gr5,gr4,gr5
	srl gr8, gr5, gr8
	sethi #hi(#65280), gr5
	setlo #lo(#65280), gr5
	andcc gr8, gr5, gr0, icc0
	ckeq icc0, cc4
	setlos #8, gr9
	cmov gr9, gr6, cc4, 1
	cmov gr0, gr6, cc4, 0
	setlos #8, gr5
	sub gr5,gr6,gr5
	srl gr8, gr5, gr8
	add gr4,gr6,gr4
	andicc gr8, #240, gr0, icc0
	ckeq icc0, cc4
	setlos #4, gr7
	cmov gr7, gr6, cc4, 1
	cmov gr0, gr6, cc4, 0
	setlos #4, gr5
	sub gr5,gr6,gr5
	srl gr8, gr5, gr8
	add gr4,gr6,gr4
	andicc gr8, #12, gr0, icc0
	ckeq icc0, cc4
	setlos #2, gr10
	cmov gr10, gr6, cc4, 1
	cmov gr0, gr6, cc4, 0
	setlos #2, gr5
	sub gr5,gr6,gr7
	srl gr8, gr7, gr8
	add gr4,gr6,gr4
	andi gr8, #2, gr6
	cmpi gr6, #0, icc0
	ckeq icc0, cc4
	setlos #1, gr6
	cmov gr0, gr6, cc4, 0
	andi gr6,#0xff,gr6
	sub gr5,gr8,gr5
	umul gr6,gr5,gr6
	add gr4,gr7,gr8
	ret
	.size	__clzsi2, .-__clzsi2
	.p2align 4
	.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	cmp gr8,gr10,icc0
	blt icc0,0,.L670
	bgt icc0,0,.L671
	cmp gr9,gr11,icc0
	bc icc0,0,.L672
	bhi icc0,0,.L673
	setlos #1, gr8
	bra .L669
.L670:
	setlos #0, gr8
.L669:
	ret
.L671:
	setlos #2, gr8
	bra .L669
.L672:
	setlos #0, gr8
	bra .L669
.L673:
	setlos #2, gr8
	bra .L669
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
	setlos #16, gr5
	cmov gr5, gr4, cc4, 1
	cmov gr0, gr4, cc4, 0
	srl gr8, gr4, gr8
	andi gr8, #255, gr5
	cmpi gr5, #0, icc0
	ckeq icc0, cc4
	setlos #8, gr7
	cmov gr7, gr5, cc4, 1
	cmov gr0, gr5, cc4, 0
	srl gr8, gr5, gr8
	add gr4,gr5,gr4
	andicc gr8, #15, gr0, icc0
	ckeq icc0, cc4
	setlos #4, gr6
	cmov gr6, gr5, cc4, 1
	cmov gr0, gr5, cc4, 0
	srl gr8, gr5, gr8
	add gr4,gr5,gr4
	andicc gr8, #3, gr0, icc0
	ckeq icc0, cc4
	setlos #2, gr9
	cmov gr9, gr5, cc4, 1
	cmov gr0, gr5, cc4, 0
	srl gr8, gr5, gr8
	andi gr8, #3, gr8
	add gr4,gr5,gr4
	not gr8,gr5
	andi gr5, #1, gr5
	srli gr8, #1, gr8
	setlos #2, gr6
	sub gr6,gr8,gr6
	umul gr6,gr5,gr6
	add gr4,gr7,gr8
	ret
	.size	__ctzsi2, .-__ctzsi2
	.p2align 4
	.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	beq icc0,2,.L685
	setlos #0, gr4
	addi gr10,#-32,gr10
	srl gr8, gr10, gr5
.L686:
	mov gr4, gr8
	mov gr5, gr9
.L687:
	ret
.L685:
	cmpi gr10, #0, icc0
	beq icc0,0,.L687
	srl gr8, gr10, gr4
	setlos #32, gr6
	sub gr6,gr10,gr6
	sll gr8,gr6,gr6
	srl gr9, gr10, gr10
	or gr6, gr10, gr5
	bra .L686
	.size	__lshrdi3, .-__lshrdi3
	.p2align 4
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	mov gr9, gr5
	sethi #hi(#65535), gr7
	setlo #lo(#65535), gr7
	and gr8, gr7, gr10
	and gr9, gr7, gr12
	umul gr10,gr12,gr14
	srli gr15, #16, gr4
	and gr7, gr15, gr11
	srli gr8, #16, gr6
	umul gr6,gr12,gr12
	add gr4,gr13,gr4
	slli gr4,#16,gr12
	add gr12,gr11,gr9
	srli gr4, #16, gr8
	srli gr9, #16, gr4
	and gr7, gr9, gr7
	srli gr5, #16, gr5
	umul gr10,gr5,gr10
	add gr4,gr11,gr4
	slli gr4,#16,gr10
	add gr10,gr7,gr9
	srli gr4, #16, gr4
	add gr4,gr8,gr4
	umul gr6,gr5,gr6
	add gr4,gr7,gr8
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
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr18
	mov gr11, gr19
	mov gr11, gr9
	mov gr21, gr8
	call __muldsi3
	mov gr8, gr4
	umul gr20,gr19,gr6
	umul gr18,gr21,gr18
	add gr19,gr7,gr5
	add gr5,gr4,gr8
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
	xor gr9, gr8, gr8
	srli gr8, #16, gr4
	xor gr8, gr4, gr8
	srli gr8, #8, gr4
	xor gr8, gr4, gr8
	srli gr8, #4, gr4
	xor gr8, gr4, gr8
	andi gr8, #15, gr8
	setlos #27030, gr4
	sra gr4, gr8, gr8
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
	slli gr8,#31,gr6
	srli gr9, #1, gr5
	or gr6, gr5, gr5
	srli gr8, #1, gr4
	sethi #hi(#1431655765), gr10
	setlo #lo(#1431655765), gr10
	and gr4, gr10, gr6
	and gr5, gr10, gr7
	subcc gr9,gr7,gr9,icc0
	subx gr8,gr6,gr8,icc0
	slli gr8,#30,gr6
	srli gr9, #2, gr5
	or gr6, gr5, gr5
	srli gr8, #2, gr4
	sethi #hi(#858993459), gr6
	setlo #lo(#858993459), gr6
	and gr4, gr6, gr10
	and gr5, gr6, gr11
	and gr8, gr6, gr4
	and gr9, gr6, gr5
	addcc gr11,gr5,gr9,icc0
	addx gr10,gr4,gr8,icc0
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
	srli gr8, #0, gr5
	add gr5,gr9,gr4
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
	bra .L699
.L697:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L698
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
.L699:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L697
	mov gr20, gr10
	mov gr21, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L697
.L698:
	cmpi gr24, #0, icc0
	beq icc0,2,.L701
	mov gr22, gr10
	mov gr23, gr11
	sethi #hi(#1072693248), gr8
	setlo #lo(#1072693248), gr8
	setlos #0, gr9
	mov gr19, gr15
	call __divd
.L700:
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
.L701:
	mov gr22, gr8
	mov gr23, gr9
	bra .L700
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
	bra .L705
.L703:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L704
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr19
.L705:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L703
	mov gr19, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
	bra .L703
.L704:
	cmpi gr22, #0, icc0
	beq icc0,2,.L707
	mov gr20, gr9
	sethi #hi(#1065353216), gr8
	setlo #lo(#1065353216), gr8
	mov gr21, gr15
	call __divf
.L706:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L707:
	mov gr20, gr8
	bra .L706
	.size	__powisf2, .-__powisf2
	.p2align 4
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	cmp gr8,gr10,icc0
	bc icc0,0,.L710
	bhi icc0,0,.L711
	cmp gr9,gr11,icc0
	bc icc0,0,.L712
	bhi icc0,0,.L713
	setlos #1, gr8
	bra .L709
.L710:
	setlos #0, gr8
.L709:
	ret
.L711:
	setlos #2, gr8
	bra .L709
.L712:
	setlos #0, gr8
	bra .L709
.L713:
	setlos #2, gr8
	bra .L709
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
