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
	ret
	.size	memmove, .-memmove
	.p2align 4
	.globl memccpy
	.type	memccpy, @function
memccpy:
	cmpi gr11, #0, icc0
	andi gr10, #255, gr5
	bne icc0,2,.L16
	bra .L18
.L19:
	addi gr9,#1,gr9
	addi gr8,#1,gr8
	beq icc1,0,.L18
.L16:
	ldub @(gr9,gr0),gr4
	addicc gr11, #-1, gr11, icc1
	stb gr4, @(gr8,gr0)
	cmp gr4,gr5,icc0
	bne icc0,2,.L19
	addi gr8,#1,gr8
	ret
.L18:
	setlos #0, gr8
	ret
	.size	memccpy, .-memccpy
	.p2align 4
	.globl memchr
	.type	memchr, @function
memchr:
	cmpi gr10, #0, icc0
	andi gr9, #255, gr5
	bne icc0,2,.L26
	bra .L29
.L28:
	addi gr8,#1,gr8
	beq icc1,0,.L29
.L26:
	ldub @(gr8,gr0),gr4
	addicc gr10, #-1, gr10, icc1
	cmp gr4,gr5,icc0
	bne icc0,2,.L28
	ret
.L29:
	setlos #0, gr8
	ret
	.size	memchr, .-memchr
	.p2align 4
	.globl memcmp
	.type	memcmp, @function
memcmp:
	cmpi gr10, #0, icc0
	bne icc0,2,.L32
	bra .L36
.L34:
	addi gr8,#1,gr8
	addi gr9,#1,gr9
	beq icc1,0,.L36
.L32:
	ldub @(gr8,gr0),gr4
	ldub @(gr9,gr0),gr5
	addicc gr10, #-1, gr10, icc1
	cmp gr4,gr5,icc0
	beq icc0,2,.L34
	sub gr4,gr5,gr8
	ret
.L36:
	setlos #0, gr8
	ret
	.size	memcmp, .-memcmp
	.p2align 4
	.globl memcpy
	.type	memcpy, @function
memcpy:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	movsg lr, gr5
	mov sp, fp
	sti gr5, @(fp,8)
	cmpi gr10, #0, icc0
	mov gr8, gr4
	beq icc0,0,.L40
	sethi #gotofffuncdeschi(memcpy), gr5
	setlo #gotofffuncdesclo(memcpy), gr5
	ldd @(gr5,gr15), gr14
	calll @(gr14,gr0)
	mov gr8, gr4
.L40:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	mov gr4, gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	memcpy, .-memcpy
	.p2align 4
	.globl memrchr
	.type	memrchr, @function
memrchr:
	addi gr10,#-1,gr4
	andi gr9, #255, gr7
	add gr8,gr4,gr4
	addi gr8,#-1,gr6
	bra .L45
.L47:
	ldub @(gr8,gr0),gr5
	addi gr4,#-1,gr4
	cmp gr5,gr7,icc0
	beq icc0,0,.L44
.L45:
	cmp gr4,gr6,icc0
	mov gr4, gr8
	bne icc0,2,.L47
	setlos #0, gr8
.L44:
	ret
	.size	memrchr, .-memrchr
	.p2align 4
	.globl memset
	.type	memset, @function
memset:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	movsg lr, gr5
	mov sp, fp
	sti gr5, @(fp,8)
	cmpi gr10, #0, icc0
	mov gr8, gr4
	beq icc0,0,.L51
	sethi #gotofffuncdeschi(memset), gr5
	setlo #gotofffuncdesclo(memset), gr5
	ldd @(gr5,gr15), gr14
	andi gr9, #255, gr9
	calll @(gr14,gr0)
	mov gr8, gr4
.L51:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	mov gr4, gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	memset, .-memset
	.p2align 4
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	ldsb @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	beq icc0,0,.L53
.L54:
	ldsbi @(gr9,1),gr4
	addi gr8,#1,gr8
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	addi gr9,#1,gr9
	bne icc0,2,.L54
.L53:
	ret
	.size	stpcpy, .-stpcpy
	.p2align 4
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	ldsb @(gr8,gr0),gr4
	andi gr9, #255, gr5
	cmpi gr4, #0, icc0
	bne icc0,2,.L60
	bra .L59
.L62:
	ldsbi @(gr8,1),gr4
	addi gr8,#1,gr8
	cmpi gr4, #0, icc0
	beq icc0,0,.L59
.L60:
	andi gr4,#0xff,gr4
	cmp gr4,gr5,icc0
	bne icc0,2,.L62
.L59:
	ret
	.size	strchrnul, .-strchrnul
	.p2align 4
	.globl strchr
	.type	strchr, @function
strchr:
.L68:
	ldsb @(gr8,gr0),gr4
	cmp gr4,gr9,icc1
	cmpi gr4, #0, icc0
	beq icc1,0,.L67
	addi gr8,#1,gr8
	bne icc0,2,.L68
	setlos #0, gr8
.L67:
	ret
	.size	strchr, .-strchr
	.p2align 4
	.globl strcmp
	.type	strcmp, @function
strcmp:
	ldsb @(gr8,gr0),gr4
	ldsb @(gr9,gr0),gr6
	cmp gr4,gr6,icc0
	bne icc0,0,.L76
	setlos #1, gr5
	addi gr9,#-1,gr7
	bra .L71
.L73:
	ldsb @(gr8,gr5),gr4
	addi gr5,#1,gr5
	ldsb @(gr7,gr5),gr6
	cmp gr4,gr6,icc0
	bne icc0,0,.L76
.L71:
	cmpi gr4, #0, icc0
	bne icc0,2,.L73
	andi gr6,#0xff,gr6
	setlos #0, gr8
	sub gr8,gr6,gr8
	ret
.L76:
	andi gr4,#0xff,gr8
	andi gr6,#0xff,gr6
	sub gr8,gr6,gr8
	ret
	.size	strcmp, .-strcmp
	.p2align 4
	.globl strlen
	.type	strlen, @function
strlen:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L80
	mov gr8, gr5
.L79:
	ldsbi @(gr5,1),gr4
	addi gr5,#1,gr5
	cmpi gr4, #0, icc0
	bne icc0,2,.L79
	sub gr5,gr8,gr8
	ret
.L80:
	setlos #0, gr8
	ret
	.size	strlen, .-strlen
	.p2align 4
	.globl strncmp
	.type	strncmp, @function
strncmp:
	cmpi gr10, #0, icc0
	beq icc0,0,.L90
	ldub @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L92
	addi gr10,#-1,gr6
	add gr8,gr6,gr6
	bra .L86
.L94:
	beq icc1,0,.L85
	bne icc2,0,.L85
	ldub @(gr8,gr0),gr4
	addi gr9,#1,gr5
	cmpi gr4, #0, icc0
	beq icc0,0,.L93
	mov gr5, gr9
.L86:
	ldub @(gr9,gr0),gr5
	cmp gr6,gr8,icc1
	cmpi gr5, #0, icc0
	addi gr8,#1,gr8
	cmp gr5,gr4,icc2
	bne icc0,2,.L94
.L85:
	sub gr4,gr5,gr8
.L82:
	ret
.L90:
	setlos #0, gr8
	ret
.L93:
	ldubi @(gr9,1),gr5
	sub gr4,gr5,gr8
	bra .L82
.L92:
	ldub @(gr9,gr0),gr5
	sub gr4,gr5,gr8
	bra .L82
	.size	strncmp, .-strncmp
	.p2align 4
	.globl swab
	.type	swab, @function
swab:
	cmpi gr10,#1,icc0
	ble icc0,0,.L95
	andi gr10, #-2, gr6
	add gr8,gr6,gr6
.L97:
	ldsbi @(gr8,1),gr5
	ldsb @(gr8,gr0),gr4
	addi gr8,#2,gr8
	stb gr5, @(gr9,gr0)
	stbi gr4, @(gr9,1)
	cmp gr8,gr6,icc0
	addi gr9,#2,gr9
	bne icc0,2,.L97
.L95:
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
	beq icc0,0,.L103
	cmpi gr8,#9,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L103:
	setlos #1, gr8
	ret
	.size	isblank, .-isblank
	.p2align 4
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpi gr8,#31,icc0
	bls icc0,2,.L106
	cmpi gr8,#127,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L106:
	setlos #1, gr8
	ret
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
	beq icc0,0,.L113
	addi gr8,#-9,gr8
	cmpi gr8,#4,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L113:
	setlos #1, gr8
	ret
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
	bls icc0,2,.L119
	addi gr8,#-127,gr4
	cmpi gr4,#32,icc0
	bhi icc0,2,.L120
.L119:
	setlos #1, gr8
	ret
.L120:
	setlos #-8232, gr4
	add gr8,gr4,gr4
	cmpi gr4,#1,icc0
	bls icc0,0,.L119
	sethi #hi(#-65529), gr4
	setlo #lo(#-65529), gr4
	add gr8,gr4,gr8
	cmpi gr8,#2,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
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
	bls icc0,0,.L129
	setlos #8231, gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L127
	setlos #-8234, gr4
	sethi #hi(#47061), gr5
	add gr8,gr4,gr4
	setlo #lo(#47061), gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L127
	sethi #hi(#-57344), gr4
	setlo #lo(#-57344), gr4
	add gr8,gr4,gr4
	setlos #8184, gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L127
	sethi #hi(#-65532), gr4
	setlo #lo(#-65532), gr4
	sethi #hi(#1048579), gr5
	add gr8,gr4,gr4
	setlo #lo(#1048579), gr5
	cmp gr4,gr5,icc0
	bhi icc0,0,.L128
	sethi #hi(#65534), gr4
	setlo #lo(#65534), gr4
	and gr8, gr4, gr8
	cmp gr8,gr4,icc0
	ckne icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L127:
	setlos #1, gr8
	ret
.L129:
	addi gr8,#1,gr8
	andi gr8, #127, gr8
	cmpi gr8,#32,icc0
	ckhi icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L128:
	setlos #0, gr8
	ret
	.size	iswprint, .-iswprint
	.p2align 4
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi gr8,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L132
	ori gr8, #32, gr8
	addi gr8,#-97,gr8
	cmpi gr8,#5,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L132:
	setlos #1, gr8
	ret
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
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__unorddf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	setlo #gotofffuncdesclo(__unorddf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr21
	ldd @(gr4,gr15), gr14
	mov gr10, gr22
	mov gr11, gr23
	mov gr8, gr10
	mov gr9, gr11
	mov gr8, gr18
	mov gr9, gr19
	add gr4,gr21,gr20
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L137
	ldd @(gr20,gr0), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L138
	sethi #gotofffuncdeschi(__gtdf2), gr4
	setlo #gotofffuncdesclo(__gtdf2), gr4
	ldd @(gr4,gr21), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	bgt icc0,2,.L142
	setlos #0, gr8
	setlos #0, gr9
.L134:
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
.L142:
	sethi #gotofffuncdeschi(__subd), gr4
	setlo #gotofffuncdesclo(__subd), gr4
	ldd @(gr4,gr21), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	bra .L134
.L137:
	mov gr18, gr8
	mov gr19, gr9
	bra .L134
.L138:
	mov gr22, gr8
	mov gr23, gr9
	bra .L134
	.size	fdim, .-fdim
	.p2align 4
	.globl fdimf
	.type	fdimf, @function
fdimf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	movsg lr, gr5
	addi sp,#16,fp
	sethi #gotofffuncdeschi(__unordsf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	setlo #gotofffuncdesclo(__unordsf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr20
	ldd @(gr4,gr15), gr14
	mov gr9, gr21
	mov gr8, gr9
	mov gr8, gr18
	add gr4,gr20,gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L146
	ldd @(gr19,gr0), gr14
	mov gr21, gr9
	mov gr21, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L147
	sethi #gotofffuncdeschi(__gtsf2), gr4
	setlo #gotofffuncdesclo(__gtsf2), gr4
	ldd @(gr4,gr20), gr14
	mov gr21, gr9
	mov gr18, gr8
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	bgt icc0,2,.L151
	setlos #0, gr8
.L143:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L151:
	sethi #gotofffuncdeschi(__subf), gr4
	setlo #gotofffuncdesclo(__subf), gr4
	ldd @(gr4,gr20), gr14
	mov gr21, gr9
	mov gr18, gr8
	calll @(gr14,gr0)
	ldi @(fp,8), gr5
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L146:
	mov gr18, gr8
	bra .L143
.L147:
	mov gr21, gr8
	bra .L143
	.size	fdimf, .-fdimf
	.p2align 4
	.globl fmax
	.type	fmax, @function
fmax:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__unorddf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	setlo #gotofffuncdesclo(__unorddf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr21
	ldd @(gr4,gr15), gr14
	mov gr10, gr18
	mov gr11, gr19
	mov gr8, gr10
	mov gr9, gr11
	mov gr8, gr22
	mov gr9, gr23
	add gr4,gr21,gr20
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L160
	ldd @(gr20,gr0), gr14
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L159
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr22, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L161
	sethi #gotofffuncdeschi(__ltdf2), gr4
	setlo #gotofffuncdesclo(__ltdf2), gr4
	ldd @(gr4,gr21), gr14
	mov gr18, gr10
	mov gr19, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L160
.L159:
	mov gr22, gr8
	mov gr23, gr9
	bra .L152
.L161:
	cmpi gr5, #0, icc0
	beq icc0,2,.L159
.L160:
	mov gr18, gr8
	mov gr19, gr9
.L152:
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
	.size	fmax, .-fmax
	.p2align 4
	.globl fmaxf
	.type	fmaxf, @function
fmaxf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	movsg lr, gr5
	addi sp,#16,fp
	sethi #gotofffuncdeschi(__unordsf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	setlo #gotofffuncdesclo(__unordsf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr21
	ldd @(gr4,gr15), gr14
	mov gr9, gr18
	mov gr8, gr9
	mov gr8, gr20
	add gr4,gr21,gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L170
	ldd @(gr19,gr0), gr14
	mov gr18, gr9
	mov gr18, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L169
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L171
	sethi #gotofffuncdeschi(__ltsf2), gr4
	setlo #gotofffuncdesclo(__ltsf2), gr4
	ldd @(gr4,gr21), gr14
	mov gr18, gr9
	mov gr20, gr8
	calll @(gr14,gr0)
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L170
	mov gr20, gr18
.L170:
	mov gr18, gr8
	ldi @(sp,4), gr19
	ldi @(sp,0), gr18
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L171:
	cmpi gr5, #0, icc0
	bne icc0,2,.L170
.L169:
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
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
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__unorddf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	setlo #gotofffuncdesclo(__unorddf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr21
	ldd @(gr4,gr15), gr14
	mov gr10, gr18
	mov gr11, gr19
	mov gr8, gr10
	mov gr9, gr11
	mov gr8, gr22
	mov gr9, gr23
	add gr4,gr21,gr20
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L180
	ldd @(gr20,gr0), gr14
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L179
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr22, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L181
	sethi #gotofffuncdeschi(__ltdf2), gr4
	setlo #gotofffuncdesclo(__ltdf2), gr4
	ldd @(gr4,gr21), gr14
	mov gr18, gr10
	mov gr19, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L180
.L179:
	mov gr22, gr8
	mov gr23, gr9
	bra .L172
.L181:
	cmpi gr5, #0, icc0
	beq icc0,2,.L179
.L180:
	mov gr18, gr8
	mov gr19, gr9
.L172:
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
	.size	fmaxl, .-fmaxl
	.p2align 4
	.globl fmin
	.type	fmin, @function
fmin:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__unorddf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	setlo #gotofffuncdesclo(__unorddf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr21
	ldd @(gr4,gr15), gr14
	mov gr10, gr22
	mov gr11, gr23
	mov gr8, gr10
	mov gr9, gr11
	mov gr8, gr18
	mov gr9, gr19
	add gr4,gr21,gr20
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L188
	ldd @(gr20,gr0), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L190
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr22, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L191
	sethi #gotofffuncdeschi(__ltdf2), gr4
	setlo #gotofffuncdesclo(__ltdf2), gr4
	ldd @(gr4,gr21), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	beq icc0,2,.L188
.L190:
	mov gr18, gr8
	mov gr19, gr9
	bra .L182
.L191:
	cmpi gr5, #0, icc0
	bne icc0,2,.L190
.L188:
	mov gr22, gr8
	mov gr23, gr9
.L182:
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
	.size	fmin, .-fmin
	.p2align 4
	.globl fminf
	.type	fminf, @function
fminf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	movsg lr, gr5
	addi sp,#16,fp
	sethi #gotofffuncdeschi(__unordsf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	setlo #gotofffuncdesclo(__unordsf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr21
	ldd @(gr4,gr15), gr14
	mov gr9, gr20
	mov gr8, gr9
	mov gr8, gr18
	add gr4,gr21,gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L198
	ldd @(gr19,gr0), gr14
	mov gr20, gr9
	mov gr20, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L200
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L201
	sethi #gotofffuncdeschi(__ltsf2), gr4
	setlo #gotofffuncdesclo(__ltsf2), gr4
	ldd @(gr4,gr21), gr14
	mov gr20, gr9
	mov gr18, gr8
	calll @(gr14,gr0)
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L200
	mov gr20, gr18
.L200:
	mov gr18, gr8
	ldi @(sp,4), gr19
	ldi @(sp,0), gr18
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L201:
	cmpi gr5, #0, icc0
	bne icc0,2,.L200
.L198:
	mov gr20, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
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
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__unorddf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	setlo #gotofffuncdesclo(__unorddf2), gr4
	sti gr5, @(fp,8)
	mov gr15, gr21
	ldd @(gr4,gr15), gr14
	mov gr10, gr22
	mov gr11, gr23
	mov gr8, gr10
	mov gr9, gr11
	mov gr8, gr18
	mov gr9, gr19
	add gr4,gr21,gr20
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L208
	ldd @(gr20,gr0), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L210
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr22, gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L211
	sethi #gotofffuncdeschi(__ltdf2), gr4
	setlo #gotofffuncdesclo(__ltdf2), gr4
	ldd @(gr4,gr21), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	srli gr8, #31, gr8
	andi gr8,#0xff,gr8
	cmpi gr8, #0, icc0
	beq icc0,2,.L208
.L210:
	mov gr18, gr8
	mov gr19, gr9
	bra .L202
.L211:
	cmpi gr5, #0, icc0
	bne icc0,2,.L210
.L208:
	mov gr22, gr8
	mov gr23, gr9
.L202:
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
	.size	fminl, .-fminl
	.p2align 4
	.globl l64a
	.type	l64a, @function
l64a:
	cmpi gr8, #0, icc0
	beq icc0,0,.L215
	sethi #gotoffhi(s.0), gr7
	ldi @(gr15,#got12(_gp)), gr5
	mov gr7, gr4
	sethi #gprelhi(digits), gr6
	setlo #gotofflo(s.0), gr4
	setlo #gprello(digits), gr6
	add gr4,gr15,gr4
	add gr6,gr5,gr6
.L214:
	andi gr8, #63, gr5
	ldsb @(gr6,gr5),gr5
	srlicc gr8, #6, gr8, icc0
	stb gr5, @(gr4,gr0)
	addi gr4,#1,gr4
	bne icc0,2,.L214
	setlo #gotofflo(s.0), gr7
	add gr7,gr15,gr8
	stb gr0, @(gr4,gr0)
	ret
.L215:
	sethi #gotoffhi(s.0), gr7
	mov gr7, gr4
	setlo #gotofflo(s.0), gr4
	add gr4,gr15,gr4
	setlo #gotofflo(s.0), gr7
	add gr7,gr15,gr8
	stb gr0, @(gr4,gr0)
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
	sti gr18, @(sp,0)
	sethi #gotoffhi(seed), gr18
	sti fp, @(sp,8)
	movsg lr, gr5
	addi sp,#8,fp
	setlo #gotofflo(seed), gr18
	sethi #gotofffuncdeschi(__mulll), gr4
	sti gr5, @(fp,8)
	add gr18,gr15,gr18
	setlo #gotofffuncdesclo(__mulll), gr4
	ldd @(gr4,gr15), gr14
	ld @(gr18,gr0), gr8
	ldi @(gr18,4), gr9
	sethi #hi(#1481765933), gr10
	sethi #hi(#1284865837), gr11
	setlo #lo(#1481765933), gr10
	setlo #lo(#1284865837), gr11
	calll @(gr14,gr0)
	addicc gr9,#1,gr9,icc0
	addxi gr8,#0,gr8,icc0
	st gr8, @(gr18,gr0)
	sti gr9, @(gr18,4)
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	srli gr8, #1, gr4
	ld @(fp,gr0), fp
	mov gr4, gr8
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	rand, .-rand
	.p2align 4
	.globl insque
	.type	insque, @function
insque:
	cmpi gr9, #0, icc0
	ckeq icc0, cc5
	cld @(gr9,gr0), gr4, cc5, 0
	setlos #4, gr6
	cst gr9, @(gr8,gr6), cc5, 0
	cst gr4, @(gr8,gr0), cc5, 0
	cst gr8, @(gr9,gr0), cc5, 0
	cld @(gr8,gr0), gr4, cc5, 0
	cst gr0, @(gr8,gr6), cc5, 1
	ccmp gr4, gr0, cc5, 0
	cckne icc1, cc4, cc5, 0
	cst gr0, @(gr8,gr0), cc5, 1
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
	setlos #4, gr6
	cmpi gr4, #0, icc0
	ckne icc0, cc4
	cld @(gr8,gr6), gr5, cc4, 1
	cst gr5, @(gr4,gr6), cc4, 1
	ldi @(gr8,4), gr5
	cmpi gr5, #0, icc0
	ckne icc0, cc4
	cst gr4, @(gr5,gr0), cc4, 1
	ret
	.size	remque, .-remque
	.p2align 4
	.globl lsearch
	.type	lsearch, @function
lsearch:
	addi sp,#-56,sp
	sti fp, @(sp,40)
	movsg lr, gr5
	addi sp,#40,fp
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sti gr27, @(sp,36)
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr25, @(sp,28)
	sti gr26, @(sp,32)
	ld @(gr10,gr0), gr25
	mov gr10, gr22
	cmpi gr25, #0, icc0
	mov gr15, gr24
	mov gr8, gr21
	mov gr9, gr23
	mov gr11, gr20
	mov gr12, gr27
	beq icc0,0,.L235
	mov gr9, gr18
	setlos #0, gr19
	bra .L237
.L249:
	add gr18,gr20,gr18
	beq icc1,0,.L235
.L237:
	ldd @(gr27,gr0), gr14
	mov gr18, gr9
	mov gr21, gr8
	calll @(gr14,gr0)
	addi gr19,#1,gr19
	cmpi gr8, #0, icc0
	mov gr18, gr26
	cmp gr25,gr19,icc1
	bne icc0,2,.L249
.L234:
	mov gr26, gr8
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
.L235:
	addi gr25,#1,gr6
	umul gr20,gr25,gr4
	st gr6, @(gr22,gr0)
	cmpi gr20, #0, icc0
	add gr23,gr5,gr26
	beq icc0,0,.L234
	sethi #gotofffuncdeschi(memmove), gr4
	setlo #gotofffuncdesclo(memmove), gr4
	ldd @(gr4,gr24), gr14
	mov gr20, gr10
	mov gr21, gr9
	mov gr26, gr8
	calll @(gr14,gr0)
	bra .L234
	.size	lsearch, .-lsearch
	.p2align 4
	.globl lfind
	.type	lfind, @function
lfind:
	addi sp,#-48,sp
	sti gr23, @(sp,20)
	ld @(gr10,gr0), gr23
	sti fp, @(sp,32)
	movsg lr, gr5
	addi sp,#32,fp
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr24, @(sp,24)
	cmpi gr23, #0, icc0
	mov gr8, gr20
	mov gr11, gr22
	mov gr12, gr21
	beq icc0,0,.L251
	mov gr9, gr18
	setlos #0, gr19
	bra .L253
.L261:
	add gr18,gr22,gr18
	beq icc1,0,.L251
.L253:
	ldd @(gr21,gr0), gr14
	mov gr18, gr9
	mov gr20, gr8
	calll @(gr14,gr0)
	addi gr19,#1,gr19
	cmpi gr8, #0, icc0
	mov gr18, gr24
	cmp gr23,gr19,icc1
	bne icc0,2,.L261
.L250:
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
.L251:
	setlos #0, gr24
	bra .L250
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
	mov gr8, gr4
.L270:
	ldsb @(gr4,gr0),gr5
	addi gr5,#-9,gr6
	cmpi gr5,#32,icc0
	cmpi gr6,#4,icc1
	beq icc0,0,.L264
	bls icc1,2,.L264
	cmpi gr5,#43,icc0
	beq icc0,0,.L265
	cmpi gr5,#45,icc0
	bne icc0,2,.L283
	ldsbi @(gr4,1),gr5
	addi gr4,#1,gr4
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	bhi icc0,0,.L275
	setlos #1, gr10
.L268:
	setlos #0, gr8
.L272:
	smuli gr8,#10,gr8
	ldsbi @(gr4,1),gr5
	mov gr9, gr7
	sub gr7,gr6,gr8
	mov gr6, gr9
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	addi gr4,#1,gr4
	bls icc0,2,.L272
	cmpi gr10, #0, icc0
	bne icc0,2,.L263
	sub gr9,gr7,gr8
.L263:
	ret
.L264:
	addi gr4,#1,gr4
	bra .L270
.L283:
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	bhi icc0,0,.L275
.L276:
	setlos #0, gr10
	bra .L268
.L265:
	ldsbi @(gr4,1),gr5
	addi gr4,#1,gr4
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	bls icc0,2,.L276
.L275:
	setlos #0, gr8
	ret
	.size	atoi, .-atoi
	.p2align 4
	.globl atol
	.type	atol, @function
atol:
	mov gr8, gr4
.L289:
	ldsb @(gr4,gr0),gr5
	addi gr5,#-9,gr6
	cmpi gr5,#32,icc0
	cmpi gr6,#4,icc1
	beq icc0,0,.L285
	bls icc1,2,.L285
	cmpi gr5,#43,icc0
	beq icc0,0,.L286
	cmpi gr5,#45,icc0
	beq icc0,2,.L287
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	bhi icc0,0,.L296
	setlos #0, gr10
.L290:
	setlos #0, gr8
.L293:
	smuli gr8,#10,gr8
	ldsbi @(gr4,1),gr5
	mov gr9, gr7
	sub gr7,gr6,gr8
	mov gr6, gr9
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	addi gr4,#1,gr4
	bls icc0,2,.L293
	cmpi gr10, #0, icc0
	bne icc0,2,.L284
	sub gr9,gr7,gr8
.L284:
	ret
.L285:
	addi gr4,#1,gr4
	bra .L289
.L287:
	ldsbi @(gr4,1),gr5
	setlos #1, gr10
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	addi gr4,#1,gr4
	bls icc0,2,.L290
.L296:
	setlos #0, gr8
	ret
.L286:
	ldsbi @(gr4,1),gr5
	addi gr4,#1,gr4
	addi gr5,#-48,gr6
	cmpi gr6,#9,icc0
	bhi icc0,0,.L296
	setlos #0, gr10
	bra .L290
	.size	atol, .-atol
	.p2align 4
	.globl atoll
	.type	atoll, @function
atoll:
	addi sp,#-24,sp
	movsg lr, gr5
	sti gr5, @(sp,16)
	sti gr18, @(sp,0)
	mov gr8, gr10
.L311:
	ldsb @(gr10,gr0),gr8
	addi gr8,#-9,gr4
	cmpi gr8,#32,icc0
	cmpi gr4,#4,icc1
	beq icc0,0,.L305
	bls icc1,2,.L305
	cmpi gr8,#43,icc0
	beq icc0,0,.L306
	cmpi gr8,#45,icc0
	bne icc0,2,.L324
	ldsbi @(gr10,1),gr8
	addi gr10,#1,gr10
	addi gr8,#-48,gr11
	cmpi gr11,#9,icc0
	bhi icc0,0,.L316
	setlos #1, gr18
.L309:
	setlos #0, gr8
	setlos #0, gr9
.L313:
	srli gr9, #30, gr4
	slli gr8,#2,gr6
	slli gr9,#2,gr7
	addcc gr7,gr9,gr5,icc0
	or gr4, gr6, gr6
	addx gr6,gr8,gr4,icc0
	ldsbi @(gr10,1),gr8
	mov gr11, gr13
	srli gr5, #31, gr15
	slli gr5,#1,gr9
	srai gr11, #31, gr12
	slli gr4,#1,gr14
	addi gr8,#-48,gr11
	or gr15, gr14, gr4
	mov gr9, gr5
	cmpi gr11,#9,icc0
	subcc gr9,gr13,gr9,icc1
	addi gr10,#1,gr10
	subx gr4,gr12,gr8,icc1
	bls icc0,2,.L313
	cmpi gr18, #0, icc0
	bne icc0,2,.L304
	subcc gr13,gr5,gr9,icc0
	subx gr12,gr4,gr8,icc0
.L304:
	ldi @(sp,0), gr18
	ldi @(sp,16), gr5
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L305:
	addi gr10,#1,gr10
	bra .L311
.L324:
	addi gr8,#-48,gr11
	cmpi gr11,#9,icc0
	bhi icc0,0,.L316
.L317:
	setlos #0, gr18
	bra .L309
.L306:
	ldsbi @(gr10,1),gr8
	addi gr10,#1,gr10
	addi gr8,#-48,gr11
	cmpi gr11,#9,icc0
	bls icc0,2,.L317
.L316:
	ldi @(sp,0), gr18
	ldi @(sp,16), gr5
	setlos #0, gr8
	setlos #0, gr9
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	atoll, .-atoll
	.p2align 4
	.globl bsearch
	.type	bsearch, @function
bsearch:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	movsg lr, gr5
	addi sp,#32,fp
	sti gr18, @(sp,0)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sti gr5, @(fp,8)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	cmpi gr10, #0, icc0
	mov gr10, gr18
	mov gr8, gr23
	mov gr9, gr22
	mov gr11, gr21
	mov gr12, gr24
	bne icc0,2,.L329
	bra .L326
.L335:
	beq icc0,0,.L325
	sub gr18,gr19,gr18
	cmpi gr18, #0, icc0
	add gr20,gr21,gr22
	beq icc0,0,.L326
.L329:
	srli gr18, #1, gr19
	umul gr19,gr21,gr4
	add gr22,gr5,gr20
	ldd @(gr24,gr0), gr14
	mov gr20, gr9
	mov gr23, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	addi gr18,#-1,gr18
	bp icc0,2,.L335
	mov gr19, gr18
	cmpi gr18, #0, icc0
	bne icc0,2,.L329
.L326:
	setlos #0, gr20
.L325:
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
	movsg lr, gr5
	addi sp,#32,fp
	sti gr18, @(sp,0)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sti gr25, @(sp,28)
	sti gr5, @(fp,8)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	cmpi gr10, #0, icc0
	mov gr10, gr18
	mov gr8, gr24
	mov gr9, gr22
	mov gr11, gr21
	mov gr12, gr25
	mov gr13, gr23
	bne icc0,2,.L337
	bra .L340
.L347:
	ckgt icc1, cc4
	setlos #1, gr4
	csra gr18, gr4, gr18, cc4, 1
	cmov gr20, gr18, cc4, 0
	cmpi gr18, #0, icc0
	cadd gr19, gr21, gr22, cc4, 1
	beq icc0,0,.L340
.L337:
	srai gr18, #1, gr20
	umul gr20,gr21,gr4
	add gr22,gr5,gr19
	ldd @(gr25,gr0), gr14
	mov gr23, gr10
	mov gr19, gr9
	mov gr24, gr8
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	cmpi gr8,#0,icc1
	addi gr18,#-1,gr18
	bne icc0,2,.L347
.L336:
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
.L340:
	setlos #0, gr19
	bra .L336
	.size	bsearch_r, .-bsearch_r
	.p2align 4
	.globl div
	.type	div, @function
div:
	addi sp,#-16,sp
	movsg lr, gr5
	sdiv gr8,gr9,gr6
	sti gr5, @(sp,8)
	smul gr6,gr9,gr4
	sti gr3, @(sp,4)
	sub gr8,gr5,gr8
	sti gr8, @(gr3,4)
	st gr6, @(gr3,gr0)
	ldi @(sp,8), gr5
	mov gr3, gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	div, .-div
	.p2align 4
	.globl imaxabs
	.type	imaxabs, @function
imaxabs:
	cmpi gr8, #0, icc0
	bn icc0,0,.L352
	ret
.L352:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	ret
	.size	imaxabs, .-imaxabs
	.p2align 4
	.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__divll), gr4
	sti gr3, @(fp,4)
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	setlo #gotofffuncdesclo(__divll), gr4
	mov gr15, gr20
	ldd @(gr4,gr15), gr14
	mov gr3, gr21
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr22
	mov gr11, gr23
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__modll), gr4
	st gr8, @(gr21,gr0)
	sti gr9, @(gr21,4)
	setlo #gotofffuncdesclo(__modll), gr4
	ldd @(gr4,gr20), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	sti gr8, @(gr21,8)
	sti gr9, @(gr21,12)
	mov gr21, gr8
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
	movsg lr, gr5
	sdiv gr8,gr9,gr6
	sti gr5, @(sp,8)
	smul gr6,gr9,gr4
	sti gr3, @(sp,4)
	sub gr8,gr5,gr8
	sti gr8, @(gr3,4)
	st gr6, @(gr3,gr0)
	ldi @(sp,8), gr5
	mov gr3, gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	ldiv, .-ldiv
	.p2align 4
	.globl llabs
	.type	llabs, @function
llabs:
	cmpi gr8, #0, icc0
	bn icc0,0,.L359
	ret
.L359:
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	ret
	.size	llabs, .-llabs
	.p2align 4
	.globl lldiv
	.type	lldiv, @function
lldiv:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__divll), gr4
	sti gr3, @(fp,4)
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	setlo #gotofffuncdesclo(__divll), gr4
	mov gr15, gr20
	ldd @(gr4,gr15), gr14
	mov gr3, gr21
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr22
	mov gr11, gr23
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__modll), gr4
	st gr8, @(gr21,gr0)
	sti gr9, @(gr21,4)
	setlo #gotofffuncdesclo(__modll), gr4
	ldd @(gr4,gr20), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	sti gr8, @(gr21,8)
	sti gr9, @(gr21,12)
	mov gr21, gr8
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
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L362
	bra .L365
.L364:
	ldi @(gr8,4), gr4
	addi gr8,#4,gr8
	cmpi gr4, #0, icc0
	beq icc0,0,.L365
.L362:
	cmp gr9,gr4,icc0
	bne icc0,2,.L364
	ret
.L365:
	setlos #0, gr8
	ret
	.size	wcschr, .-wcschr
	.p2align 4
	.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr6
	cmp gr5,gr6,icc0
	bne icc0,0,.L369
	setlos #4, gr4
	addi gr9,#-4,gr7
	bra .L368
.L370:
	ld @(gr8,gr4), gr5
	addi gr4,#4,gr4
	ld @(gr7,gr4), gr6
	cmp gr5,gr6,icc0
	bne icc0,0,.L369
.L368:
	cmpi gr5, #0, icc0
	bne icc0,2,.L370
.L369:
	cmp gr5,gr6,icc0
	ckge icc0, cc5
	setlos #1, gr4
	cckgt icc0, cc4, cc5, 1
	cmov gr4, gr8, cc5, 1
	andcr cc5, cc4, cc4
	setlos #-1, gr5
	cmov gr0, gr8, cc4, 0
	cmov gr5, gr8, cc5, 0
	ret
	.size	wcscmp, .-wcscmp
	.p2align 4
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	setlos #0, gr5
.L375:
	ld @(gr9,gr5), gr4
	st gr4, @(gr8,gr5)
	cmpi gr4, #0, icc0
	addi gr5,#4,gr5
	bne icc0,2,.L375
	ret
	.size	wcscpy, .-wcscpy
	.p2align 4
	.globl wcslen
	.type	wcslen, @function
wcslen:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L380
	mov gr8, gr5
.L379:
	ldi @(gr5,4), gr4
	addi gr5,#4,gr5
	cmpi gr4, #0, icc0
	bne icc0,2,.L379
	sub gr5,gr8,gr5
	srai gr5, #2, gr8
	ret
.L380:
	setlos #0, gr8
	ret
	.size	wcslen, .-wcslen
	.p2align 4
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	cmpi gr10, #0, icc0
	bne icc0,2,.L383
	bra .L388
.L390:
	beq icc1,0,.L385
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	beq icc2,0,.L388
.L383:
	ld @(gr8,gr0), gr4
	ld @(gr9,gr0), gr5
	cmpi gr4, #0, icc1
	cmp gr4,gr5,icc0
	addicc gr10, #-1, gr10, icc2
	beq icc0,2,.L390
.L385:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L391
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L391:
	setlos #-1, gr8
	ret
.L388:
	setlos #0, gr8
	ret
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	cmpi gr10, #0, icc0
	bne icc0,2,.L393
	bra .L396
.L395:
	addi gr8,#4,gr8
	beq icc1,0,.L396
.L393:
	ld @(gr8,gr0), gr4
	addicc gr10, #-1, gr10, icc1
	cmp gr4,gr9,icc0
	bne icc0,2,.L395
	ret
.L396:
	setlos #0, gr8
	ret
	.size	wmemchr, .-wmemchr
	.p2align 4
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	cmpi gr10, #0, icc0
	bne icc0,2,.L399
	bra .L404
.L401:
	addi gr8,#4,gr8
	addi gr9,#4,gr9
	beq icc1,0,.L404
.L399:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	addicc gr10, #-1, gr10, icc1
	cmp gr5,gr4,icc0
	beq icc0,2,.L401
	blt icc0,2,.L407
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L404:
	setlos #0, gr8
	ret
.L407:
	setlos #-1, gr8
	ret
	.size	wmemcmp, .-wmemcmp
	.p2align 4
	.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	movsg lr, gr5
	mov sp, fp
	sti gr5, @(fp,8)
	cmpi gr10, #0, icc0
	mov gr8, gr4
	beq icc0,0,.L409
	sethi #gotofffuncdeschi(memcpy), gr5
	setlo #gotofffuncdesclo(memcpy), gr5
	ldd @(gr5,gr15), gr14
	slli gr10,#2,gr10
	calll @(gr14,gr0)
	mov gr8, gr4
.L409:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	mov gr4, gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	wmemcpy, .-wmemcpy
	.p2align 4
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	cmp gr8,gr9,icc0
	beq icc0,0,.L421
	sub gr8,gr9,gr4
	slli gr10,#2,gr5
	cmp gr4,gr5,icc0
	addi gr10,#-1,gr4
	bnc icc0,2,.L426
	cmpi gr10, #0, icc0
	beq icc0,0,.L421
	slli gr4,#2,gr4
.L418:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#-4,gr4
	cmpi gr4,#-4,icc0
	bne icc0,2,.L418
.L421:
	ret
.L426:
	cmpi gr10, #0, icc0
	setlos #0, gr5
	beq icc0,0,.L421
.L416:
	ld @(gr9,gr5), gr6
	addi gr4,#-1,gr4
	st gr6, @(gr8,gr5)
	cmpi gr4,#-1,icc0
	addi gr5,#4,gr5
	bne icc0,2,.L416
	ret
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl wmemset
	.type	wmemset, @function
wmemset:
	cmpi gr10, #0, icc0
	addi gr10,#-1,gr4
	beq icc0,0,.L428
	mov gr8, gr5
.L429:
	addi gr4,#-1,gr4
	st gr9, @(gr5,gr0)
	cmpi gr4,#-1,icc0
	addi gr5,#4,gr5
	bne icc0,2,.L429
.L428:
	ret
	.size	wmemset, .-wmemset
	.p2align 4
	.globl bcopy
	.type	bcopy, @function
bcopy:
	cmp gr8,gr9,icc0
	bnc icc0,2,.L435
	cmpi gr10, #0, icc0
	beq icc0,0,.L434
	addi gr8,#-1,gr8
	addi gr9,#-1,gr9
.L437:
	ldsb @(gr8,gr10),gr4
	stb gr4, @(gr9,gr10)
	addicc gr10, #-1, gr10, icc0
	bne icc0,2,.L437
.L434:
	ret
.L435:
	cmp gr8,gr9,icc0
	beq icc0,0,.L434
	cmpi gr10, #0, icc0
	beq icc0,0,.L434
	setlos #0, gr4
.L438:
	ldsb @(gr8,gr4),gr5
	stb gr5, @(gr9,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L438
	ret
	.size	bcopy, .-bcopy
	.p2align 4
	.globl rotl64
	.type	rotl64, @function
rotl64:
	setlos #31, gr4
	sub gr4,gr10,gr6
	addi gr10,#-32,gr11
	sub gr0,gr10,gr5
	srli gr9, #1, gr13
	andi gr5, #63, gr5
	cmpi gr11, #0, icc1
	srl gr13, gr6, gr13
	sll gr8,gr10,gr6
	sub gr4,gr5,gr4
	addi gr5,#-32,gr7
	sll gr9,gr11,gr11
	or gr13, gr6, gr6
	ckp icc1, cc4
	slli gr8,#1,gr12
	cmpi gr7, #0, icc0
	sll gr12,gr4,gr12
	sll gr9,gr10,gr10
	srl gr9, gr5, gr4
	cmov gr11, gr6, cc4, 1
	ckp icc1, cc4
	srl gr8, gr7, gr7
	or gr12, gr4, gr4
	cmov gr0, gr10, cc4, 1
	ckp icc0, cc4
	srl gr8, gr5, gr8
	cmov gr7, gr4, cc4, 1
	ckp icc0, cc4
	cmov gr0, gr8, cc4, 1
	or gr4, gr10, gr9
	or gr8, gr6, gr8
	ret
	.size	rotl64, .-rotl64
	.p2align 4
	.globl rotr64
	.type	rotr64, @function
rotr64:
	setlos #31, gr4
	sub gr4,gr10,gr6
	addi gr10,#-32,gr11
	sub gr0,gr10,gr5
	slli gr8,#1,gr13
	andi gr5, #63, gr5
	cmpi gr11, #0, icc1
	sll gr13,gr6,gr13
	srl gr9, gr10, gr6
	sub gr4,gr5,gr4
	addi gr5,#-32,gr7
	srl gr8, gr11, gr11
	or gr13, gr6, gr6
	ckp icc1, cc4
	srli gr9, #1, gr12
	cmpi gr7, #0, icc0
	srl gr12, gr4, gr12
	srl gr8, gr10, gr10
	sll gr8,gr5,gr4
	cmov gr11, gr6, cc4, 1
	ckp icc1, cc4
	sll gr9,gr7,gr7
	or gr12, gr4, gr4
	cmov gr0, gr10, cc4, 1
	ckp icc0, cc4
	sll gr9,gr5,gr9
	cmov gr7, gr4, cc4, 1
	ckp icc0, cc4
	cmov gr0, gr9, cc4, 1
	or gr9, gr6, gr9
	or gr4, gr10, gr8
	ret
	.size	rotr64, .-rotr64
	.p2align 4
	.globl rotl32
	.type	rotl32, @function
rotl32:
	sub gr0,gr9,gr4
	andi gr4, #31, gr4
	sll gr8,gr9,gr9
	srl gr8, gr4, gr8
	or gr8, gr9, gr8
	ret
	.size	rotl32, .-rotl32
	.p2align 4
	.globl rotr32
	.type	rotr32, @function
rotr32:
	sub gr0,gr9,gr4
	andi gr4, #31, gr4
	srl gr8, gr9, gr9
	sll gr8,gr4,gr8
	or gr8, gr9, gr8
	ret
	.size	rotr32, .-rotr32
	.p2align 4
	.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	sub gr0,gr9,gr4
	andi gr4, #31, gr4
	sll gr8,gr9,gr9
	srl gr8, gr4, gr8
	or gr8, gr9, gr8
	ret
	.size	rotl_sz, .-rotl_sz
	.p2align 4
	.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	sub gr0,gr9,gr4
	andi gr4, #31, gr4
	srl gr8, gr9, gr9
	sll gr8,gr4,gr8
	or gr8, gr9, gr8
	ret
	.size	rotr_sz, .-rotr_sz
	.p2align 4
	.globl rotl16
	.type	rotl16, @function
rotl16:
	andi gr9, #15, gr9
	sub gr0,gr9,gr5
	mov gr8, gr4
	andi gr5, #15, gr5
	sethi #hi(#0),gr4
	sll gr8,gr9,gr8
	srl gr4, gr5, gr4
	or gr8, gr4, gr8
	ret
	.size	rotl16, .-rotl16
	.p2align 4
	.globl rotr16
	.type	rotr16, @function
rotr16:
	andi gr9, #15, gr9
	sub gr0,gr9,gr5
	mov gr8, gr4
	andi gr5, #15, gr5
	sethi #hi(#0),gr4
	srl gr4, gr9, gr4
	sll gr8,gr5,gr8
	or gr4, gr8, gr8
	ret
	.size	rotr16, .-rotr16
	.p2align 4
	.globl rotl8
	.type	rotl8, @function
rotl8:
	andi gr9, #7, gr9
	sub gr0,gr9,gr5
	andi gr8,#0xff,gr4
	andi gr5, #7, gr5
	sll gr8,gr9,gr8
	srl gr4, gr5, gr4
	or gr8, gr4, gr8
	ret
	.size	rotl8, .-rotl8
	.p2align 4
	.globl rotr8
	.type	rotr8, @function
rotr8:
	andi gr9, #7, gr9
	sub gr0,gr9,gr5
	andi gr8,#0xff,gr4
	andi gr5, #7, gr5
	srl gr4, gr9, gr4
	sll gr8,gr5,gr8
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
	srli gr8, #24, gr6
	slli gr8,#24,gr4
	or gr4, gr6, gr4
	sethi #hi(#65280), gr6
	srli gr8, #8, gr5
	setlo #lo(#65280), gr6
	and gr5, gr6, gr5
	or gr4, gr5, gr4
	sethi #hi(#16711680), gr5
	setlo #lo(#16711680), gr5
	slli gr8,#8,gr8
	and gr8, gr5, gr8
	or gr4, gr8, gr8
	ret
	.size	bswap_32, .-bswap_32
	.p2align 4
	.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	mov gr9, gr4
	sethi #hi(#65280), gr12
	slli gr8,#24,gr10
	setlo #lo(#65280), gr12
	slli gr8,#8,gr13
	srli gr8, #8, gr9
	srli gr4, #24, gr7
	srli gr4, #8, gr6
	sethi #hi(#16711680), gr11
	setlo #lo(#16711680), gr11
	slli gr4,#24,gr5
	srli gr8, #24, gr8
	and gr9, gr12, gr9
	or gr13, gr7, gr7
	or gr6, gr10, gr6
	srli gr4, #24, gr13
	or gr8, gr9, gr9
	and gr7, gr11, gr7
	or gr5, gr13, gr8
	slli gr4,#8,gr4
	and gr6, gr12, gr5
	or gr9, gr7, gr9
	or gr8, gr5, gr8
	and gr4, gr11, gr4
	or gr9, gr10, gr9
	or gr8, gr4, gr8
	ret
	.size	bswap_64, .-bswap_64
	.p2align 4
	.globl ffs
	.type	ffs, @function
ffs:
	setlos #0, gr4
	bra .L463
.L461:
	beq icc1,0,.L465
.L463:
	srl gr8, gr4, gr5
	andicc gr5, #1, gr0, icc0
	addi gr4,#1,gr4
	cmpi gr4,#32,icc1
	beq icc0,2,.L461
	mov gr4, gr8
	ret
.L465:
	setlos #0, gr8
	ret
	.size	ffs, .-ffs
	.p2align 4
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	cmpi gr8, #0, icc0
	beq icc0,0,.L469
	andicc gr8, #1, gr4, icc0
	bne icc0,0,.L466
	setlos #1, gr4
.L468:
	srai gr8, #1, gr8
	andicc gr8, #1, gr0, icc0
	addi gr4,#1,gr4
	beq icc0,2,.L468
.L466:
	mov gr4, gr8
	ret
.L469:
	setlos #0, gr4
	mov gr4, gr8
	ret
	.size	libiberty_ffs, .-libiberty_ffs
	.p2align 4
	.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	movsg lr, gr5
	addi sp,#8,fp
	sethi #gotofffuncdeschi(__ltsf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__ltsf2), gr4
	mov gr15, gr19
	sethi #hi(#4286578687), gr9
	ldd @(gr4,gr15), gr14
	setlo #lo(#4286578687), gr9
	mov gr8, gr18
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,2,.L475
	sethi #gotofffuncdeschi(__gtsf2), gr4
	setlo #gotofffuncdesclo(__gtsf2), gr4
	ldd @(gr4,gr19), gr14
	sethi #hi(#2139095039), gr9
	setlo #lo(#2139095039), gr9
	mov gr18, gr8
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	ldi @(sp,0), gr18
	setlos #1, gr8
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ckgt icc0, cc4
	ld @(fp,gr0), fp
	cmov gr0, gr8, cc4, 0
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L475:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	setlos #1, gr8
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	gl_isinff, .-gl_isinff
	.p2align 4
	.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	movsg lr, gr5
	addi sp,#16,fp
	sethi #gotofffuncdeschi(__ltdf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__ltdf2), gr4
	mov gr15, gr20
	sethi #hi(#4293918719), gr10
	ldd @(gr4,gr15), gr14
	sethi #hi(#4294967295), gr11
	setlo #lo(#4293918719), gr10
	setlo #lo(#4294967295), gr11
	mov gr8, gr18
	mov gr9, gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,2,.L479
	sethi #gotofffuncdeschi(__gtdf2), gr4
	setlo #gotofffuncdesclo(__gtdf2), gr4
	ldd @(gr4,gr20), gr14
	sethi #hi(#2146435071), gr10
	sethi #hi(#4294967295), gr11
	mov gr19, gr9
	setlo #lo(#2146435071), gr10
	setlo #lo(#4294967295), gr11
	mov gr18, gr8
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	ldi @(sp,0), gr18
	setlos #1, gr8
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ckgt icc0, cc4
	ld @(fp,gr0), fp
	cmov gr0, gr8, cc4, 0
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L479:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	setlos #1, gr8
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	gl_isinfd, .-gl_isinfd
	.p2align 4
	.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	movsg lr, gr5
	addi sp,#16,fp
	sethi #gotofffuncdeschi(__ltdf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__ltdf2), gr4
	mov gr15, gr20
	sethi #hi(#4293918719), gr10
	ldd @(gr4,gr15), gr14
	sethi #hi(#4294967295), gr11
	setlo #lo(#4293918719), gr10
	setlo #lo(#4294967295), gr11
	mov gr8, gr18
	mov gr9, gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,2,.L483
	sethi #gotofffuncdeschi(__gtdf2), gr4
	setlo #gotofffuncdesclo(__gtdf2), gr4
	ldd @(gr4,gr20), gr14
	sethi #hi(#2146435071), gr10
	sethi #hi(#4294967295), gr11
	mov gr19, gr9
	setlo #lo(#2146435071), gr10
	setlo #lo(#4294967295), gr11
	mov gr18, gr8
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	ldi @(sp,0), gr18
	setlos #1, gr8
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ckgt icc0, cc4
	ld @(fp,gr0), fp
	cmov gr0, gr8, cc4, 0
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L483:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	setlos #1, gr8
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	gl_isinfl, .-gl_isinfl
	.p2align 4
	.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	movsg lr, gr5
	addi sp,#8,fp
	sethi #gotofffuncdeschi(__itod), gr4
	sti gr18, @(sp,0)
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__itod), gr4
	ldd @(gr4,gr15), gr14
	mov gr8, gr18
	mov gr9, gr8
	calll @(gr14,gr0)
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
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__unordsf2), gr4
	sti gr18, @(sp,0)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr5, @(fp,8)
	sti gr19, @(sp,4)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	setlo #gotofffuncdesclo(__unordsf2), gr4
	mov gr15, gr21
	ldd @(gr4,gr15), gr14
	mov gr9, gr18
	mov gr8, gr9
	mov gr8, gr20
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L486
	sethi #gotofffuncdeschi(__addf), gr4
	setlo #gotofffuncdesclo(__addf), gr4
	ldd @(gr4,gr21), gr14
	mov gr20, gr9
	mov gr20, gr8
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__nesf2), gr4
	setlo #gotofffuncdesclo(__nesf2), gr4
	ldd @(gr4,gr21), gr14
	mov gr20, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,2,.L486
	cmpi gr18, #0, icc0
	bn icc0,0,.L500
	sethi #hi(#1073741824), gr19
	setlo #lo(#1073741824), gr19
.L488:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L489
	sethi #gotofffuncdeschi(__mulf), gr22
.L490:
	setlo #gotofffuncdesclo(__mulf), gr22
	ldd @(gr22,gr21), gr14
	mov gr20, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	mov gr8, gr20
.L489:
	srli gr18, #31, gr4
	add gr4,gr18,gr4
	sraicc gr4, #1, gr18, icc0
	beq icc0,0,.L486
	sethi #gotofffuncdeschi(__mulf), gr22
	mov gr22, gr23
	setlo #gotofffuncdesclo(__mulf), gr23
.L491:
	ldd @(gr23,gr21), gr14
	mov gr19, gr9
	mov gr19, gr8
	calll @(gr14,gr0)
	srli gr18, #31, gr4
	andicc gr18, #1, gr0, icc0
	add gr4,gr18,gr4
	mov gr8, gr19
	bne icc0,2,.L490
	srai gr4, #1, gr18
	bra .L491
.L486:
	mov gr20, gr8
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
.L500:
	sethi #hi(#1056964608), gr19
	setlo #lo(#1056964608), gr19
	bra .L488
	.size	ldexpf, .-ldexpf
	.p2align 4
	.globl ldexp
	.type	ldexp, @function
ldexp:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	movsg lr, gr5
	addi sp,#32,fp
	sethi #gotofffuncdeschi(__unorddf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr5, @(fp,8)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr24, @(sp,24)
	sti gr25, @(sp,28)
	setlo #gotofffuncdesclo(__unorddf2), gr4
	mov gr15, gr19
	ldd @(gr4,gr15), gr14
	mov gr10, gr18
	mov gr9, gr11
	mov gr8, gr10
	mov gr8, gr22
	mov gr9, gr23
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L502
	sethi #gotofffuncdeschi(__addd), gr4
	setlo #gotofffuncdesclo(__addd), gr4
	ldd @(gr4,gr19), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__nedf2), gr4
	setlo #gotofffuncdesclo(__nedf2), gr4
	ldd @(gr4,gr19), gr14
	mov gr22, gr10
	mov gr23, gr11
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,2,.L502
	cmpi gr18, #0, icc0
	bn icc0,0,.L516
	sethi #hi(#1073741824), gr20
	setlo #lo(#1073741824), gr20
	setlos #0, gr21
.L504:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L505
	sethi #gotofffuncdeschi(__muld), gr24
.L506:
	setlo #gotofffuncdesclo(__muld), gr24
	ldd @(gr24,gr19), gr14
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr10
	mov gr21, gr11
	calll @(gr14,gr0)
	mov gr8, gr22
	mov gr9, gr23
.L505:
	srli gr18, #31, gr4
	add gr4,gr18,gr4
	sraicc gr4, #1, gr18, icc0
	beq icc0,0,.L502
	sethi #gotofffuncdeschi(__muld), gr24
	mov gr24, gr25
	setlo #gotofffuncdesclo(__muld), gr25
.L507:
	ldd @(gr25,gr19), gr14
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	srli gr18, #31, gr4
	andicc gr18, #1, gr0, icc0
	add gr4,gr18,gr4
	mov gr8, gr20
	mov gr9, gr21
	bne icc0,2,.L506
	srai gr4, #1, gr18
	bra .L507
.L502:
	mov gr22, gr8
	mov gr23, gr9
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
.L516:
	sethi #hi(#1071644672), gr20
	setlo #lo(#1071644672), gr20
	setlos #0, gr21
	bra .L504
	.size	ldexp, .-ldexp
	.p2align 4
	.globl ldexpl
	.type	ldexpl, @function
ldexpl:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	movsg lr, gr5
	addi sp,#32,fp
	sethi #gotofffuncdeschi(__unorddf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr5, @(fp,8)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr24, @(sp,24)
	sti gr25, @(sp,28)
	setlo #gotofffuncdesclo(__unorddf2), gr4
	mov gr15, gr19
	ldd @(gr4,gr15), gr14
	mov gr10, gr18
	mov gr9, gr11
	mov gr8, gr10
	mov gr8, gr22
	mov gr9, gr23
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L518
	sethi #gotofffuncdeschi(__addd), gr4
	setlo #gotofffuncdesclo(__addd), gr4
	ldd @(gr4,gr19), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__nedf2), gr4
	setlo #gotofffuncdesclo(__nedf2), gr4
	ldd @(gr4,gr19), gr14
	mov gr8, gr10
	mov gr9, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,2,.L518
	cmpi gr18, #0, icc0
	bn icc0,0,.L532
	sethi #hi(#1073741824), gr20
	setlo #lo(#1073741824), gr20
	setlos #0, gr21
.L520:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L521
	sethi #gotofffuncdeschi(__muld), gr24
.L522:
	setlo #gotofffuncdesclo(__muld), gr24
	ldd @(gr24,gr19), gr14
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr10
	mov gr21, gr11
	calll @(gr14,gr0)
	mov gr8, gr22
	mov gr9, gr23
.L521:
	srli gr18, #31, gr4
	add gr4,gr18,gr4
	sraicc gr4, #1, gr18, icc0
	beq icc0,0,.L518
	sethi #gotofffuncdeschi(__muld), gr24
	mov gr24, gr25
	setlo #gotofffuncdesclo(__muld), gr25
.L523:
	ldd @(gr25,gr19), gr14
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	srli gr18, #31, gr4
	andicc gr18, #1, gr0, icc0
	add gr4,gr18,gr4
	mov gr8, gr20
	mov gr9, gr21
	bne icc0,2,.L522
	srai gr4, #1, gr18
	bra .L523
.L518:
	mov gr22, gr8
	mov gr23, gr9
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
.L532:
	sethi #hi(#1071644672), gr20
	setlo #lo(#1071644672), gr20
	setlos #0, gr21
	bra .L520
	.size	ldexpl, .-ldexpl
	.p2align 4
	.globl memxor
	.type	memxor, @function
memxor:
	cmpi gr10, #0, icc0
	beq icc0,0,.L534
	setlos #0, gr4
.L535:
	ldsb @(gr8,gr4),gr5
	ldsb @(gr9,gr4),gr6
	xor gr5, gr6, gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr4,gr10,icc0
	bne icc0,2,.L535
.L534:
	ret
	.size	memxor, .-memxor
	.p2align 4
	.globl strncat
	.type	strncat, @function
strncat:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	mov gr8, gr4
	beq icc0,0,.L541
.L542:
	ldsbi @(gr4,1),gr5
	addi gr4,#1,gr4
	cmpi gr5, #0, icc0
	bne icc0,2,.L542
.L541:
	cmpi gr10, #0, icc0
	bne icc0,2,.L543
	bra .L544
.L545:
	addi gr9,#1,gr9
	addi gr4,#1,gr4
	beq icc1,0,.L544
.L543:
	ldsb @(gr9,gr0),gr5
	addicc gr10, #-1, gr10, icc1
	stb gr5, @(gr4,gr0)
	cmpi gr5, #0, icc0
	bne icc0,2,.L545
	ret
.L544:
	stb gr0, @(gr4,gr0)
	ret
	.size	strncat, .-strncat
	.p2align 4
	.globl strnlen
	.type	strnlen, @function
strnlen:
	cmpi gr9, #0, icc0
	mov gr8, gr5
	setlos #0, gr8
	beq icc0,0,.L553
.L554:
	ldsb @(gr5,gr8),gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L556
.L553:
	ret
.L556:
	addi gr8,#1,gr8
	cmp gr9,gr8,icc0
	bne icc0,2,.L554
	ret
	.size	strnlen, .-strnlen
	.p2align 4
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	ldsb @(gr8,gr0),gr6
	movgs gr9, lcr
	cmpi gr6, #0, icc0
	beq icc0,0,.L564
.L560:
	movsg lcr, gr4
	bra .L563
.L562:
	beq icc1,0,.L561
.L563:
	ldsb @(gr4,gr0),gr5
	addi gr4,#1,gr4
	cmpi gr5, #0, icc0
	cmp gr5,gr6,icc1
	bne icc0,2,.L562
	ldsbi @(gr8,1),gr6
	addi gr8,#1,gr8
	cmpi gr6, #0, icc0
	bne icc0,2,.L560
.L564:
	setlos #0, gr8
.L561:
	ret
	.size	strpbrk, .-strpbrk
	.p2align 4
	.globl strrchr
	.type	strrchr, @function
strrchr:
	setlos #0, gr5
.L568:
	ldsb @(gr8,gr0),gr4
	cmp gr9,gr4,icc1
	ckeq icc1, cc5
	cmpi gr4, #0, icc0
	cmov gr8, gr5, cc5, 1
	addi gr8,#1,gr8
	bne icc0,2,.L568
	mov gr5, gr8
	ret
	.size	strrchr, .-strrchr
	.p2align 4
	.globl strstr
	.type	strstr, @function
strstr:
	ldsb @(gr9,gr0),gr10
	cmpi gr10, #0, icc0
	beq icc0,0,.L570
	mov gr9, gr4
.L572:
	ldsbi @(gr4,1),gr5
	addi gr4,#1,gr4
	cmpi gr5, #0, icc0
	bne icc0,2,.L572
	subcc gr4, gr9, gr4, icc0
	beq icc0,0,.L570
	andi gr10,#0xff,gr13
	addi gr4,#-1,gr12
	bra .L578
.L591:
	cmpi gr4, #0, icc0
	addi gr8,#1,gr8
	beq icc0,0,.L590
.L578:
	ldsb @(gr8,gr0),gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L591
	mov gr13, gr5
	add gr8,gr12,gr11
	mov gr9, gr6
	mov gr8, gr4
	bra .L574
.L592:
	beq icc1,0,.L575
	bne icc2,0,.L575
	ldub @(gr4,gr0),gr5
	addi gr6,#1,gr6
	cmpi gr5, #0, icc0
	beq icc0,0,.L575
.L574:
	ldub @(gr6,gr0),gr7
	cmp gr4,gr11,icc1
	cmpi gr7, #0, icc0
	addi gr4,#1,gr4
	cmp gr7,gr5,icc2
	bne icc0,2,.L592
.L575:
	ldub @(gr6,gr0),gr4
	cmp gr4,gr5,icc0
	beq icc0,0,.L570
	addi gr8,#1,gr8
	bra .L578
.L590:
	setlos #0, gr8
.L570:
	ret
	.size	strstr, .-strstr
	.p2align 4
	.globl copysign
	.type	copysign, @function
copysign:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__ltdf2), gr4
	setlo #gotofffuncdesclo(__ltdf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr5, @(fp,8)
	mov gr15, gr19
	ldd @(gr4,gr15), gr14
	mov gr10, gr22
	mov gr11, gr23
	setlos #0, gr10
	setlos #0, gr11
	add gr4,gr19,gr18
	mov gr8, gr20
	mov gr9, gr21
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__gtdf2), gr4
	setlo #gotofffuncdesclo(__gtdf2), gr4
	cmpi gr8, #0, icc0
	ldd @(gr4,gr19), gr14
	setlos #0, gr10
	setlos #0, gr11
	bn icc0,0,.L603
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	ble icc0,0,.L597
	ldd @(gr18,gr0), gr14
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,0,.L596
.L597:
	mov gr20, gr8
	mov gr21, gr9
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
.L603:
	mov gr22, gr8
	mov gr23, gr9
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	ble icc0,2,.L597
.L596:
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr20, gr6, gr4
	mov gr4, gr20
	bra .L597
	.size	copysign, .-copysign
	.p2align 4
	.globl memmem
	.type	memmem, @function
memmem:
	cmpi gr11, #0, icc0
	beq icc0,0,.L610
	cmp gr9,gr11,icc0
	bc icc0,0,.L612
	sub gr9,gr11,gr9
	add gr8,gr9,gr9
	cmp gr8,gr9,icc0
	bhi icc0,0,.L612
	ldsb @(gr10,gr0),gr12
	bra .L609
.L606:
	cmp gr9,gr8,icc0
	bc icc0,0,.L612
.L609:
	ldsb @(gr8,gr0),gr4
	mov gr8, gr7
	cmp gr4,gr12,icc0
	addi gr8,#1,gr8
	bne icc0,2,.L606
	cmpi gr11,#1,icc0
	beq icc0,0,.L604
	setlos #1, gr4
.L607:
	ldub @(gr7,gr4),gr6
	ldub @(gr10,gr4),gr5
	addi gr4,#1,gr4
	cmp gr6,gr5,icc0
	cmp gr11,gr4,icc1
	bne icc0,0,.L606
	bne icc1,2,.L607
.L604:
	mov gr7, gr8
	ret
.L612:
	setlos #0, gr7
	mov gr7, gr8
	ret
.L610:
	mov gr8, gr7
	mov gr7, gr8
	ret
	.size	memmem, .-memmem
	.p2align 4
	.globl mempcpy
	.type	mempcpy, @function
mempcpy:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	movsg lr, gr5
	addi sp,#8,fp
	sti gr18, @(sp,0)
	sti gr5, @(fp,8)
	cmpi gr10, #0, icc0
	mov gr10, gr18
	mov gr8, gr4
	beq icc0,0,.L616
	sethi #gotofffuncdeschi(memmove), gr5
	setlo #gotofffuncdesclo(memmove), gr5
	ldd @(gr5,gr15), gr14
	calll @(gr14,gr0)
	mov gr8, gr4
.L616:
	add gr4,gr18,gr8
	ldi @(fp,8), gr5
	ldi @(sp,0), gr18
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	mempcpy, .-mempcpy
	.p2align 4
	.globl frexp
	.type	frexp, @function
frexp:
	addi sp,#-64,sp
	sti gr22, @(sp,24)
	sethi #gotofffuncdeschi(__ltdf2), gr22
	sti fp, @(sp,48)
	movsg lr, gr5
	addi sp,#48,fp
	mov gr22, gr4
	sti gr18, @(sp,8)
	sti gr19, @(sp,12)
	sti gr20, @(sp,16)
	sti gr23, @(sp,28)
	sti gr27, @(sp,44)
	setlo #gotofffuncdesclo(__ltdf2), gr4
	sti gr5, @(fp,8)
	sti gr16, @(sp,0)
	sti gr17, @(sp,4)
	sti gr21, @(sp,20)
	sti gr24, @(sp,32)
	sti gr25, @(sp,36)
	sti gr26, @(sp,40)
	mov gr15, gr20
	ldd @(gr4,gr15), gr14
	mov gr10, gr27
	setlos #0, gr11
	setlos #0, gr10
	mov gr8, gr18
	mov gr9, gr19
	add gr4,gr20,gr23
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,0,.L642
	sethi #gotofffuncdeschi(__gedf2), gr21
	mov gr21, gr4
	setlo #gotofffuncdesclo(__gedf2), gr4
	ldd @(gr4,gr20), gr14
	sethi #hi(#1072693248), gr10
	setlo #lo(#1072693248), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,0,.L643
	setlos #0, gr16
.L623:
	sethi #gotofffuncdeschi(__muld), gr26
	sethi #hi(#1071644672), gr24
	sethi #hi(#1072693248), gr22
	setlos #0, gr17
	setlo #gotofffuncdesclo(__muld), gr26
	setlo #lo(#1071644672), gr24
	setlos #0, gr25
	setlo #gotofffuncdesclo(__gedf2), gr21
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
.L629:
	ldd @(gr26,gr20), gr14
	mov gr24, gr10
	mov gr25, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	ldd @(gr21,gr20), gr14
	mov gr8, gr18
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr9, gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	addi gr17,#1,gr17
	bp icc0,2,.L629
.L630:
	st gr17, @(gr27,gr0)
	cmpi gr16, #0, icc0
	beq icc0,0,.L636
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	xor gr18, gr4, gr8
	mov gr19, gr9
.L620:
	ldi @(sp,0), gr16
	ldi @(sp,4), gr17
	ldi @(sp,8), gr18
	ldi @(sp,12), gr19
	ldi @(sp,16), gr20
	ldi @(sp,20), gr21
	ldi @(sp,24), gr22
	ldi @(sp,28), gr23
	ldi @(sp,32), gr24
	ldi @(sp,36), gr25
	ldi @(sp,40), gr26
	ldi @(sp,44), gr27
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#64,sp
	jmpl @(gr5,gr0)
.L643:
	ldd @(gr23,gr0), gr14
	sethi #hi(#1071644672), gr10
	setlo #lo(#1071644672), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bp icc0,2,.L626
	sethi #gotofffuncdeschi(__nedf2), gr4
	setlo #gotofffuncdesclo(__nedf2), gr4
	ldd @(gr4,gr20), gr14
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bne icc0,0,.L635
.L626:
	st gr0, @(gr27,gr0)
	mov gr18, gr8
	mov gr19, gr9
	bra .L620
.L642:
	sethi #gotofffuncdeschi(__ledf2), gr4
	setlo #gotofffuncdesclo(__ledf2), gr4
	ldd @(gr4,gr20), gr14
	sethi #hi(#3220176896), gr10
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	setlo #lo(#3220176896), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	xor gr18, gr4, gr24
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	mov gr19, gr25
	bgt icc0,0,.L644
	mov gr24, gr18
	setlos #1, gr16
	sethi #gotofffuncdeschi(__gedf2), gr21
	bra .L623
.L636:
	mov gr18, gr8
	mov gr19, gr9
	bra .L620
.L644:
	sethi #gotofffuncdeschi(__gtdf2), gr4
	setlo #gotofffuncdesclo(__gtdf2), gr4
	ldd @(gr4,gr20), gr14
	sethi #hi(#3219128320), gr10
	setlo #lo(#3219128320), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	ble icc0,2,.L626
	setlos #1, gr16
.L624:
	mov gr24, gr18
	sethi #gotofffuncdeschi(__addd), gr21
	mov gr22, gr24
	sethi #hi(#1071644672), gr22
	mov gr25, gr19
	setlos #0, gr17
	setlo #gotofffuncdesclo(__addd), gr21
	setlo #gotofffuncdesclo(__ltdf2), gr24
	setlo #lo(#1071644672), gr22
	setlos #0, gr23
.L631:
	ldd @(gr21,gr20), gr14
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	ldd @(gr24,gr20), gr14
	mov gr8, gr18
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr9, gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	addi gr17,#-1,gr17
	bn icc0,2,.L631
	bra .L630
.L635:
	mov gr18, gr24
	mov gr19, gr25
	setlos #0, gr16
	bra .L624
	.size	frexp, .-frexp
	.p2align 4
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	addi sp,#-24,sp
	movsg lr, gr5
	mov gr9, gr4
	sti gr5, @(sp,16)
	mov gr8, gr5
	sti gr18, @(sp,0)
	orcc gr4, gr5, gr0, icc0
	setlos #0, gr8
	setlos #0, gr9
	beq icc0,0,.L645
.L648:
	andi gr4, #1, gr7
	subcc gr0,gr7,gr15,icc0
	slli gr5,#31,gr18
	setlos #0, gr6
	srli gr4, #1, gr4
	subx gr0,gr6,gr14,icc0
	and gr15, gr11, gr13
	srli gr5, #1, gr5
	or gr18, gr4, gr4
	and gr14, gr10, gr12
	addcc gr9,gr13,gr9,icc1
	srli gr11, #31, gr14
	slli gr10,#1,gr10
	orcc gr5, gr4, gr0, icc0
	addx gr8,gr12,gr8,icc1
	or gr14, gr10, gr10
	slli gr11,#1,gr11
	bne icc0,2,.L648
.L645:
	ldi @(sp,0), gr18
	ldi @(sp,16), gr5
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__muldi3, .-__muldi3
	.p2align 4
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	cmp gr9,gr8,icc0
	mov gr8, gr5
	setlos #1, gr4
	bnc icc0,0,.L653
	setlos #32, gr8
	setlos #1, gr4
	bra .L652
.L656:
	slli gr9,#1,gr9
	cmp gr5,gr9,icc0
	slli gr4,#1,gr4
	bls icc0,0,.L654
	beq icc1,0,.L655
.L652:
	cmpi gr9, #0, icc0
	addicc gr8, #-1, gr8, icc1
	bp icc0,2,.L656
.L653:
	setlos #0, gr8
.L658:
	cmp gr5,gr9,icc0
	cknc icc0, cc4
	cor gr8, gr4, gr8, cc4, 1
	srlicc gr4, #1, gr4, icc0
	csub gr5, gr9, gr5, cc4, 1
	srli gr9, #1, gr9
	bne icc0,2,.L658
.L655:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
.L654:
	cmpi gr4, #0, icc0
	bne icc0,2,.L653
	setlos #0, gr8
	bra .L655
	.size	udivmodsi4, .-udivmodsi4
	.p2align 4
	.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	addi sp,#-16,sp
	slli gr8,#24,gr8
	srai gr8, #24, gr8
	srai gr8, #7, gr4
	sti fp, @(sp,0)
	movsg lr, gr5
	mov sp, fp
	cmp gr8,gr4,icc0
	sti gr5, @(fp,8)
	xor gr8, gr4, gr8
	beq icc0,0,.L669
	sethi #gotofffuncdeschi(__clzsi2), gr4
	setlo #gotofffuncdesclo(__clzsi2), gr4
	ldd @(gr4,gr15), gr14
	slli gr8,#8,gr8
	calll @(gr14,gr0)
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi gr8,#-1,gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L669:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	setlos #7, gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__clrsbqi2, .-__clrsbqi2
	.p2align 4
	.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	addi sp,#-16,sp
	srai gr8, #31, gr4
	movsg lr, gr5
	sti fp, @(sp,0)
	mov sp, fp
	sti gr5, @(fp,8)
	cmp gr8,gr4,icc0
	mov gr9, gr5
	xor gr8, gr4, gr6
	xor gr9, gr4, gr9
	beq icc0,0,.L676
.L674:
	sethi #gotofffuncdeschi(__clzdi2), gr4
	setlo #gotofffuncdesclo(__clzdi2), gr4
	ldd @(gr4,gr15), gr14
	mov gr6, gr8
	calll @(gr14,gr0)
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi gr8,#-1,gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
.L676:
	cmp gr5,gr8,icc0
	bne icc0,2,.L674
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	setlos #63, gr8
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__clrsbdi2, .-__clrsbdi2
	.p2align 4
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	cmpi gr8, #0, icc0
	setlos #0, gr6
	beq icc0,0,.L677
.L679:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	srlicc gr8, #1, gr8, icc0
	add gr6,gr5,gr6
	slli gr9,#1,gr9
	bne icc0,2,.L679
.L677:
	mov gr6, gr8
	ret
	.size	__mulsi3, .-__mulsi3
	.p2align 4
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	cmp gr8,gr9,icc0
	srli gr10, #3, gr7
	andi gr10, #-8, gr4
	bc icc0,2,.L686
	add gr9,gr10,gr5
	cmp gr8,gr5,icc0
	bls icc0,2,.L695
.L686:
	cmpi gr7, #0, icc0
	beq icc0,0,.L685
	slli gr7,#3,gr7
	mov gr9, gr5
	mov gr8, gr6
	add gr7,gr9,gr7
.L689:
	ld @(gr5,gr0), gr12
	ldi @(gr5,4), gr13
	addi gr5,#8,gr5
	st gr12, @(gr6,gr0)
	sti gr13, @(gr6,4)
	cmp gr7,gr5,icc0
	addi gr6,#8,gr6
	bne icc0,2,.L689
.L685:
	cmp gr10,gr4,icc0
	bls icc0,0,.L682
.L690:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L690
.L682:
	ret
.L695:
	cmpi gr10, #0, icc0
	addi gr10,#-1,gr10
	beq icc0,0,.L682
.L687:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L687
	ret
	.size	__cmovd, .-__cmovd
	.p2align 4
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	cmp gr8,gr9,icc0
	srli gr10, #1, gr6
	bc icc0,2,.L700
	add gr9,gr10,gr4
	cmp gr8,gr4,icc0
	bls icc0,2,.L711
.L700:
	cmpi gr6, #0, icc0
	beq icc0,0,.L699
	slli gr6,#1,gr6
	setlos #0, gr4
.L703:
	ldsh @(gr9,gr4),gr5
	sth gr5, @(gr8,gr4)
	addi gr4,#2,gr4
	cmp gr4,gr6,icc0
	bne icc0,2,.L703
.L699:
	andicc gr10, #1, gr0, icc0
	beq icc0,2,.L696
	addi gr10,#-1,gr4
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
.L696:
	ret
.L711:
	cmpi gr10, #0, icc0
	addi gr10,#-1,gr4
	beq icc0,0,.L696
.L701:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#-1,gr4
	cmpi gr4,#-1,icc0
	bne icc0,2,.L701
	ret
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	cmp gr8,gr9,icc0
	srli gr10, #2, gr7
	andi gr10, #-4, gr4
	bc icc0,2,.L716
	add gr9,gr10,gr5
	cmp gr8,gr5,icc0
	bls icc0,2,.L725
.L716:
	cmpi gr7, #0, icc0
	beq icc0,0,.L715
	slli gr7,#2,gr7
	setlos #0, gr5
.L719:
	ld @(gr9,gr5), gr6
	st gr6, @(gr8,gr5)
	addi gr5,#4,gr5
	cmp gr7,gr5,icc0
	bne icc0,2,.L719
.L715:
	cmp gr10,gr4,icc0
	bls icc0,0,.L712
.L720:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L720
.L712:
	ret
.L725:
	cmpi gr10, #0, icc0
	addi gr10,#-1,gr10
	beq icc0,0,.L712
.L717:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L717
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
	movsg lr, gr5
	mov sp, fp
	sethi #gotofffuncdeschi(__floatunsidf), gr4
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__floatunsidf), gr4
	ldd @(gr4,gr15), gr14
	calll @(gr14,gr0)
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
	movsg lr, gr5
	mov sp, fp
	sethi #gotofffuncdeschi(__floatunsisf), gr4
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__floatunsisf), gr4
	ldd @(gr4,gr15), gr14
	calll @(gr14,gr0)
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
	movsg lr, gr5
	mov sp, fp
	sethi #gotofffuncdeschi(__floatundidf), gr4
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__floatundidf), gr4
	ldd @(gr4,gr15), gr14
	calll @(gr14,gr0)
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
	movsg lr, gr5
	mov sp, fp
	sethi #gotofffuncdeschi(__floatundisf), gr4
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__floatundisf), gr4
	ldd @(gr4,gr15), gr14
	calll @(gr14,gr0)
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
	sethi #hi(#0),gr8
	srlicc gr8, #15, gr0, icc0
	bne icc0,0,.L735
	sraicc gr8, #14, gr4, icc0
	bne icc0,0,.L732
	srlicc gr8, #13, gr0, icc0
	bne icc0,0,.L736
	srlicc gr8, #12, gr0, icc0
	bne icc0,0,.L737
	srlicc gr8, #11, gr0, icc0
	bne icc0,0,.L738
	srlicc gr8, #10, gr0, icc0
	bne icc0,0,.L739
	srlicc gr8, #9, gr0, icc0
	bne icc0,0,.L740
	srlicc gr8, #8, gr0, icc0
	bne icc0,0,.L741
	srlicc gr8, #7, gr0, icc0
	bne icc0,0,.L742
	srlicc gr8, #6, gr0, icc0
	bne icc0,0,.L743
	srlicc gr8, #5, gr0, icc0
	bne icc0,0,.L744
	srlicc gr8, #4, gr0, icc0
	bne icc0,0,.L745
	srlicc gr8, #3, gr0, icc0
	bne icc0,0,.L746
	srlicc gr8, #2, gr0, icc0
	bne icc0,0,.L747
	srlicc gr8, #1, gr0, icc0
	bne icc0,0,.L748
	cmpi gr8, #0, icc0
	setlos #15, gr4
	bne icc0,0,.L732
	setlos #16, gr4
.L732:
	mov gr4, gr8
	ret
.L735:
	setlos #0, gr4
	bra .L732
.L746:
	setlos #12, gr4
	bra .L732
.L736:
	setlos #2, gr4
	bra .L732
.L737:
	setlos #3, gr4
	bra .L732
.L738:
	setlos #4, gr4
	bra .L732
.L739:
	setlos #5, gr4
	bra .L732
.L740:
	setlos #6, gr4
	bra .L732
.L741:
	setlos #7, gr4
	bra .L732
.L742:
	setlos #8, gr4
	bra .L732
.L743:
	setlos #9, gr4
	bra .L732
.L744:
	setlos #10, gr4
	bra .L732
.L745:
	setlos #11, gr4
	bra .L732
.L747:
	setlos #13, gr4
	bra .L732
.L748:
	setlos #14, gr4
	bra .L732
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	andi gr8, #1, gr5
	sethi #hi(#0),gr5
	mov gr8, gr4
	cmpi gr5, #0, icc0
	sethi #hi(#0),gr4
	bne icc0,0,.L753
	andi gr4, #2, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L754
	andi gr4, #4, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L755
	andi gr4, #8, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L756
	andi gr4, #16, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L757
	andi gr4, #32, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L758
	andi gr4, #64, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L759
	andi gr4, #128, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L760
	andi gr4, #256, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L761
	andi gr4, #512, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L762
	andi gr4, #1024, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L763
	setlos #2048, gr5
	and gr4, gr5, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L764
	setlos #4096, gr5
	and gr4, gr5, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L765
	setlos #8192, gr5
	and gr4, gr5, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L766
	setlos #16384, gr5
	and gr4, gr5, gr5
	sethi #hi(#0),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L767
	srlicc gr4, #15, gr0, icc0
	setlos #15, gr8
	bne icc0,0,.L750
	setlos #16, gr8
.L750:
	ret
.L753:
	setlos #0, gr8
	ret
.L754:
	setlos #1, gr8
	ret
.L765:
	setlos #12, gr8
	ret
.L755:
	setlos #2, gr8
	ret
.L756:
	setlos #3, gr8
	ret
.L757:
	setlos #4, gr8
	ret
.L758:
	setlos #5, gr8
	ret
.L759:
	setlos #6, gr8
	ret
.L760:
	setlos #7, gr8
	ret
.L761:
	setlos #8, gr8
	ret
.L762:
	setlos #9, gr8
	ret
.L763:
	setlos #10, gr8
	ret
.L764:
	setlos #11, gr8
	ret
.L766:
	setlos #13, gr8
	ret
.L767:
	setlos #14, gr8
	ret
	.size	__ctzhi2, .-__ctzhi2
	.p2align 4
	.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	movsg lr, gr5
	addi sp,#8,fp
	sethi #gotofffuncdeschi(__gesf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__gesf2), gr4
	mov gr15, gr18
	sethi #hi(#1191182336), gr9
	ldd @(gr4,gr15), gr14
	setlo #lo(#1191182336), gr9
	mov gr8, gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bp icc0,0,.L775
	sethi #gotofffuncdeschi(__ftoi), gr4
	setlo #gotofffuncdesclo(__ftoi), gr4
	ldd @(gr4,gr18), gr14
	mov gr19, gr8
	calll @(gr14,gr0)
	ldi @(fp,8), gr5
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
.L775:
	sethi #gotofffuncdeschi(__subf), gr4
	setlo #gotofffuncdesclo(__subf), gr4
	ldd @(gr4,gr18), gr14
	sethi #hi(#1191182336), gr9
	setlo #lo(#1191182336), gr9
	mov gr19, gr8
	calll @(gr14,gr0)
	sethi #gotofffuncdeschi(__ftoi), gr4
	setlo #gotofffuncdesclo(__ftoi), gr4
	ldd @(gr4,gr18), gr14
	calll @(gr14,gr0)
	sethi #hi(#32768), gr4
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	setlo #lo(#32768), gr4
	ld @(fp,gr0), fp
	add gr8,gr4,gr8
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__fixunssfsi, .-__fixunssfsi
	.p2align 4
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov gr8, gr4
	sethi #hi(#0),gr4
	srai gr4, #1, gr8
	andi gr4, #1, gr6
	srai gr4, #2, gr5
	andi gr8, #1, gr8
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #3, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #4, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #5, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #6, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #7, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #8, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #9, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #10, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #11, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #12, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #13, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #14, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	add gr8,gr5,gr8
	srai gr4, #15, gr4
	add gr8,gr4,gr8
	andi gr8, #1, gr8
	ret
	.size	__parityhi2, .-__parityhi2
	.p2align 4
	.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	mov gr8, gr4
	sethi #hi(#0),gr4
	srai gr4, #1, gr8
	andi gr4, #1, gr6
	srai gr4, #2, gr5
	andi gr8, #1, gr8
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #3, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #4, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #5, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #6, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #7, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #8, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #9, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #10, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #11, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #12, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	srai gr4, #13, gr6
	add gr8,gr5,gr8
	andi gr6, #1, gr6
	srai gr4, #14, gr5
	add gr8,gr6,gr8
	andi gr5, #1, gr5
	add gr8,gr5,gr8
	srai gr4, #15, gr4
	add gr8,gr4,gr8
	ret
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	cmpi gr8, #0, icc0
	setlos #0, gr6
	beq icc0,0,.L778
.L780:
	andi gr8, #1, gr4
	umul gr4,gr9,gr4
	srlicc gr8, #1, gr8, icc0
	add gr6,gr5,gr6
	slli gr9,#1,gr9
	bne icc0,2,.L780
.L778:
	mov gr6, gr8
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	cmpi gr8, #0, icc0
	setlos #0, gr6
	beq icc0,0,.L783
	cmpi gr9, #0, icc0
	beq icc0,0,.L783
.L785:
	andi gr9, #1, gr4
	umul gr4,gr8,gr4
	srlicc gr9, #1, gr9, icc0
	add gr6,gr5,gr6
	slli gr8,#1,gr8
	bne icc0,2,.L785
.L783:
	mov gr6, gr8
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.p2align 4
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	cmp gr8,gr9,icc0
	mov gr8, gr5
	setlos #1, gr4
	bls icc0,0,.L791
	setlos #32, gr8
	setlos #1, gr4
	bra .L790
.L794:
	slli gr9,#1,gr9
	cmp gr5,gr9,icc0
	slli gr4,#1,gr4
	bls icc0,0,.L792
	beq icc1,0,.L793
.L790:
	cmpi gr9, #0, icc0
	addicc gr8, #-1, gr8, icc1
	bp icc0,2,.L794
.L791:
	setlos #0, gr8
.L796:
	cmp gr5,gr9,icc0
	cknc icc0, cc4
	cor gr8, gr4, gr8, cc4, 1
	srlicc gr4, #1, gr4, icc0
	csub gr5, gr9, gr5, cc4, 1
	srli gr9, #1, gr9
	bne icc0,2,.L796
.L793:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
.L792:
	cmpi gr4, #0, icc0
	bne icc0,2,.L791
	setlos #0, gr8
	bra .L793
	.size	__udivmodsi4, .-__udivmodsi4
	.p2align 4
	.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	movsg lr, gr5
	addi sp,#16,fp
	sethi #gotofffuncdeschi(__ltsf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__ltsf2), gr4
	mov gr15, gr20
	ldd @(gr4,gr15), gr14
	mov gr8, gr18
	mov gr9, gr19
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,0,.L808
	sethi #gotofffuncdeschi(__gtsf2), gr4
	setlo #gotofffuncdesclo(__gtsf2), gr4
	ldd @(gr4,gr20), gr14
	mov gr19, gr9
	mov gr18, gr8
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	ldi @(sp,0), gr18
	setlos #1, gr8
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ckgt icc0, cc4
	ld @(fp,gr0), fp
	cmov gr0, gr8, cc4, 0
	addi sp,#32,sp
	jmpl @(gr5,gr0)
.L808:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	setlos #-1, gr8
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.p2align 4
	.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	movsg lr, gr5
	addi sp,#24,fp
	sethi #gotofffuncdeschi(__ltdf2), gr4
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr22, @(sp,12)
	sti gr23, @(sp,16)
	sti gr5, @(fp,8)
	setlo #gotofffuncdesclo(__ltdf2), gr4
	mov gr15, gr20
	ldd @(gr4,gr15), gr14
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr22
	mov gr11, gr23
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bn icc0,0,.L812
	sethi #gotofffuncdeschi(__gtdf2), gr4
	setlo #gotofffuncdesclo(__gtdf2), gr4
	ldd @(gr4,gr20), gr14
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
.L809:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
.L812:
	setlos #-1, gr8
	bra .L809
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
	bn icc0,0,.L829
	beq icc0,0,.L821
	setlos #0, gr10
.L817:
	setlos #0, gr6
	setlos #0, gr7
	bra .L820
.L830:
	beq icc1,0,.L819
.L820:
	andi gr9, #1, gr4
	smul gr4,gr8,gr4
	addi gr6,#1,gr6
	sraicc gr9, #1, gr9, icc0
	cmpi gr6,#32,icc1
	add gr7,gr5,gr7
	slli gr8,#1,gr8
	bne icc0,2,.L830
.L819:
	cmpi gr10, #0, icc0
	beq icc0,0,.L815
	sub gr0,gr7,gr7
.L815:
	mov gr7, gr8
	ret
.L829:
	sub gr0,gr9,gr9
	setlos #1, gr10
	bra .L817
.L821:
	setlos #0, gr7
	bra .L815
	.size	__mulhi3, .-__mulhi3
	.p2align 4
	.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	cmpi gr8, #0, icc0
	ckn icc0, cc4
	setlos #1, gr4
	cmpi gr9, #0, icc0
	csub gr0, gr8, gr8, cc4, 1
	cmov gr4, gr7, cc4, 1
	cmov gr0, gr7, cc4, 0
	ckn icc0, cc4
	csub gr0, gr9, gr9, cc4, 1
	setlos #1, gr5
	cmp gr8,gr9,icc0
	cxor gr7, gr5, gr7, cc4, 1
	mov gr8, gr6
	setlos #1, gr4
	bls icc0,0,.L835
	setlos #32, gr5
	setlos #1, gr4
	bra .L834
.L838:
	beq icc1,0,.L837
.L834:
	slli gr9,#1,gr9
	cmp gr8,gr9,icc0
	addicc gr5, #-1, gr5, icc1
	slli gr4,#1,gr4
	bhi icc0,2,.L838
.L837:
	cmpi gr4, #0, icc0
	setlos #0, gr8
	beq icc0,0,.L836
.L835:
	setlos #0, gr8
.L840:
	cmp gr6,gr9,icc0
	cknc icc0, cc4
	cor gr8, gr4, gr8, cc4, 1
	srlicc gr4, #1, gr4, icc0
	csub gr6, gr9, gr6, cc4, 1
	srli gr9, #1, gr9
	bne icc0,2,.L840
.L836:
	cmpi gr7, #0, icc0
	ckne icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ret
	.size	__divsi3, .-__divsi3
	.p2align 4
	.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	cmpi gr8, #0, icc0
	ckn icc0, cc4
	setlos #1, gr4
	cmpi gr9,#0,icc0
	csub gr0, gr8, gr8, cc4, 1
	cmov gr4, gr10, cc4, 1
	cmov gr0, gr10, cc4, 0
	cklt icc0, cc4
	csub gr0, gr9, gr4, cc4, 1
	cmov gr9, gr4, cc4, 0
	cmp gr8,gr4,icc0
	mov gr8, gr7
	setlos #1, gr5
	bls icc0,0,.L859
	setlos #32, gr6
	setlos #1, gr5
	bra .L853
.L857:
	beq icc1,0,.L856
.L853:
	slli gr4,#1,gr4
	cmp gr8,gr4,icc0
	addicc gr6, #-1, gr6, icc1
	slli gr5,#1,gr5
	bhi icc0,2,.L857
.L856:
	cmpi gr5, #0, icc0
	beq icc0,0,.L855
.L859:
	cmp gr7,gr4,icc1
	cknc icc1, cc5
	srlicc gr5, #1, gr5, icc0
	csub gr7, gr4, gr7, cc5, 1
	srli gr4, #1, gr4
	bne icc0,2,.L859
	mov gr7, gr8
.L855:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ret
	.size	__modsi3, .-__modsi3
	.p2align 4
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov gr9, gr5
	mov gr8, gr6
	sethi #hi(#0),gr5
	sethi #hi(#0),gr8
	cmp gr5,gr8,icc0
	bnc icc0,0,.L985
	slli gr9,#16,gr9
	srai gr9, #16, gr9
	cmpi gr9, #0, icc0
	bn icc0,0,.L873
	slli gr5,#1,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L874
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L875
	slli gr5,#2,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L876
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L877
	slli gr5,#3,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L878
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L879
	slli gr5,#4,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L880
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L881
	slli gr5,#5,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L882
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L883
	slli gr5,#6,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L884
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L885
	slli gr5,#7,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L886
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L887
	slli gr5,#8,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L888
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L889
	slli gr5,#9,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L890
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L891
	slli gr5,#10,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L892
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L893
	slli gr5,#11,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L894
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L895
	slli gr5,#12,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L896
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L897
	slli gr5,#13,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L898
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L899
	slli gr5,#14,gr4
	sethi #hi(#0),gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L900
	slli gr4,#16,gr7
	srai gr7, #16, gr7
	cmpi gr7, #0, icc0
	bn icc0,0,.L901
	slli gr5,#15,gr7
	sethi #hi(#0),gr7
	cmp gr8,gr7,icc0
	bls icc0,0,.L902
	cmpi gr7, #0, icc0
	bne icc0,0,.L986
.L903:
	cmpi gr10, #0, icc0
	bne icc0,0,.L955
	mov gr7, gr8
.L955:
	ret
.L890:
	bc icc0,2,.L935
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #512, gr6
	setlos #512, gr7
.L905:
	srlicc gr6, #2, gr9, icc0
	srli gr4, #2, gr5
	beq icc0,0,.L903
	cmp gr8,gr5,icc0
	bc icc0,2,.L906
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L906:
	srlicc gr6, #3, gr9, icc0
	srli gr4, #3, gr5
	beq icc0,0,.L903
	cmp gr8,gr5,icc0
	bc icc0,2,.L907
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L907:
	srlicc gr6, #4, gr9, icc0
	srli gr4, #4, gr5
	beq icc0,0,.L903
	cmp gr8,gr5,icc0
	bc icc0,2,.L908
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L908:
	srlicc gr6, #5, gr9, icc0
	srli gr4, #5, gr5
	beq icc0,0,.L903
	cmp gr8,gr5,icc0
	bc icc0,2,.L909
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L909:
	srlicc gr6, #6, gr9, icc0
	srli gr4, #6, gr5
	beq icc0,0,.L903
	cmp gr8,gr5,icc0
	bc icc0,2,.L910
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L910:
	srlicc gr6, #7, gr9, icc0
	srli gr4, #7, gr5
	beq icc0,0,.L903
	cmp gr8,gr5,icc0
	bc icc0,2,.L911
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L911:
	srlicc gr6, #8, gr9, icc0
	srli gr4, #8, gr5
	beq icc0,0,.L903
	cmp gr8,gr5,icc0
	bc icc0,2,.L912
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L912:
	srlicc gr6, #9, gr9, icc0
	srli gr4, #9, gr5
	beq icc0,0,.L903
	cmp gr8,gr5,icc0
	bc icc0,2,.L913
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L913:
	srlicc gr6, #10, gr9, icc0
	srli gr4, #10, gr5
	beq icc0,0,.L903
	cmp gr8,gr5,icc0
	bc icc0,2,.L914
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L914:
	srlicc gr6, #11, gr9, icc0
	srli gr4, #11, gr5
	beq icc0,0,.L903
	cmp gr8,gr5,icc0
	bc icc0,2,.L915
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L915:
	srlicc gr6, #12, gr9, icc0
	srli gr4, #12, gr5
	beq icc0,0,.L903
	cmp gr8,gr5,icc0
	bc icc0,2,.L916
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L916:
	srlicc gr6, #13, gr9, icc0
	srli gr4, #13, gr5
	beq icc0,0,.L903
	cmp gr8,gr5,icc0
	bc icc0,2,.L917
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L917:
	srlicc gr6, #14, gr9, icc0
	srli gr4, #14, gr5
	beq icc0,0,.L903
	cmp gr8,gr5,icc0
	bc icc0,2,.L918
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
.L918:
	setlos #16384, gr5
	cmp gr6,gr5,icc0
	srli gr4, #15, gr4
	beq icc0,0,.L903
	cmp gr8,gr4,icc0
	bc icc0,2,.L925
	sub gr8,gr4,gr4
	mov gr4, gr8
	sethi #hi(#0),gr8
	ori gr7, #1, gr7
	bra .L903
.L925:
	setlos #0, gr8
	bra .L903
.L985:
	cmp gr5,gr8,icc0
	beq icc0,2,.L924
	setlos #0, gr7
	bra .L903
.L873:
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	setlos #1, gr7
	bra .L903
.L874:
	bc icc0,2,.L927
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #2, gr6
	setlos #2, gr7
	bra .L905
.L875:
	setlos #32767, gr6
	sub gr8,gr4,gr8
	and gr5, gr6, gr5
	sethi #hi(#0),gr8
	setlos #1, gr9
	setlos #2, gr6
	setlos #2, gr7
.L923:
	cmp gr8,gr5,icc0
	bc icc0,0,.L905
	sub gr8,gr5,gr5
	mov gr5, gr8
	sethi #hi(#0),gr8
	or gr7, gr9, gr7
	bra .L905
.L876:
	bc icc0,2,.L928
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #4, gr6
	setlos #4, gr7
	bra .L905
.L877:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #2, gr9
	setlos #4, gr6
	setlos #4, gr7
	bra .L923
.L878:
	bc icc0,2,.L929
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #8, gr6
	setlos #8, gr7
	bra .L905
.L879:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #4, gr9
	setlos #8, gr6
	setlos #8, gr7
	bra .L923
.L880:
	bc icc0,2,.L930
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #16, gr6
	setlos #16, gr7
	bra .L905
.L881:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #8, gr9
	setlos #16, gr6
	setlos #16, gr7
	bra .L923
.L882:
	bc icc0,2,.L931
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #32, gr6
	setlos #32, gr7
	bra .L905
.L883:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #16, gr9
	setlos #32, gr6
	setlos #32, gr7
	bra .L923
.L884:
	bc icc0,2,.L932
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #64, gr6
	setlos #64, gr7
	bra .L905
.L885:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #32, gr9
	setlos #64, gr6
	setlos #64, gr7
	bra .L923
.L886:
	bc icc0,2,.L933
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #128, gr6
	setlos #128, gr7
	bra .L905
.L887:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #64, gr9
	setlos #128, gr6
	setlos #128, gr7
	bra .L923
.L889:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #128, gr9
	setlos #256, gr6
	setlos #256, gr7
	bra .L923
.L891:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #256, gr9
	setlos #512, gr6
	setlos #512, gr7
	bra .L923
.L924:
	setlos #1, gr7
	setlos #0, gr8
	bra .L903
.L927:
	setlos #2, gr6
.L922:
	srli gr6, #1, gr9
	srli gr4, #1, gr5
	setlos #0, gr7
	bra .L923
.L893:
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #512, gr9
	setlos #1024, gr6
	setlos #1024, gr7
	bra .L923
.L895:
	sub gr8,gr4,gr8
	setlos #2048, gr6
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #1024, gr9
	mov gr6, gr7
	bra .L923
.L928:
	setlos #4, gr6
	bra .L922
.L929:
	setlos #8, gr6
	bra .L922
.L897:
	sub gr8,gr4,gr8
	setlos #4096, gr6
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #2048, gr9
	mov gr6, gr7
	bra .L923
.L899:
	sub gr8,gr4,gr8
	setlos #8192, gr6
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #4096, gr9
	mov gr6, gr7
	bra .L923
.L930:
	setlos #16, gr6
	bra .L922
.L931:
	setlos #32, gr6
	bra .L922
.L901:
	sub gr8,gr4,gr8
	setlos #16384, gr6
	sethi #hi(#0),gr8
	srli gr4, #1, gr5
	setlos #8192, gr9
	mov gr6, gr7
	bra .L923
.L902:
	slli gr6,#16,gr6
	srai gr6, #16, gr6
	sethi #hi(#32768), gr4
	setlo #lo(#32768), gr4
	cmpi gr6, #0, icc0
	mov gr4, gr6
	bp icc0,2,.L922
	mov gr4, gr7
	setlos #0, gr8
	bra .L905
.L932:
	setlos #64, gr6
	bra .L922
.L986:
	setlos #-32768, gr5
	add gr8,gr5,gr6
	sethi #hi(#32768), gr4
	setlo #lo(#32768), gr4
	mov gr6, gr8
	setlos #16384, gr5
	sethi #hi(#0),gr8
	mov gr5, gr9
	mov gr4, gr6
	mov gr4, gr7
	bra .L923
.L933:
	setlos #128, gr6
	bra .L922
.L888:
	bc icc0,2,.L934
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #256, gr6
	setlos #256, gr7
	bra .L905
.L934:
	setlos #256, gr6
	bra .L922
.L892:
	bc icc0,2,.L936
	sub gr8,gr4,gr8
	sethi #hi(#0),gr8
	setlos #1024, gr6
	setlos #1024, gr7
	bra .L905
.L900:
	bc icc0,2,.L940
	sub gr8,gr4,gr8
	setlos #16384, gr6
	sethi #hi(#0),gr8
	mov gr6, gr7
	bra .L905
.L936:
	setlos #1024, gr6
	bra .L922
.L940:
	setlos #16384, gr6
	bra .L922
.L935:
	setlos #512, gr6
	bra .L922
.L898:
	bc icc0,2,.L939
	sub gr8,gr4,gr8
	setlos #8192, gr6
	sethi #hi(#0),gr8
	mov gr6, gr7
	bra .L905
.L896:
	bc icc0,2,.L938
	sub gr8,gr4,gr8
	setlos #4096, gr6
	sethi #hi(#0),gr8
	mov gr6, gr7
	bra .L905
.L894:
	bc icc0,2,.L937
	sub gr8,gr4,gr8
	setlos #2048, gr6
	sethi #hi(#0),gr8
	mov gr6, gr7
	bra .L905
.L939:
	setlos #8192, gr6
	bra .L922
.L938:
	setlos #4096, gr6
	bra .L922
.L937:
	setlos #2048, gr6
	bra .L922
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	cmp gr8,gr9,icc0
	mov gr8, gr5
	setlos #1, gr4
	bls icc0,0,.L989
	setlos #32, gr8
	setlos #1, gr4
	bra .L988
.L992:
	slli gr9,#1,gr9
	cmp gr5,gr9,icc0
	slli gr4,#1,gr4
	bls icc0,0,.L990
	beq icc1,0,.L991
.L988:
	cmpi gr9, #0, icc0
	addicc gr8, #-1, gr8, icc1
	bp icc0,2,.L992
.L989:
	setlos #0, gr8
.L994:
	cmp gr5,gr9,icc0
	cknc icc0, cc4
	cor gr8, gr4, gr8, cc4, 1
	srlicc gr4, #1, gr4, icc0
	csub gr5, gr9, gr5, cc4, 1
	srli gr9, #1, gr9
	bne icc0,2,.L994
.L991:
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr5, gr8, cc4, 1
	ret
.L990:
	cmpi gr4, #0, icc0
	bne icc0,2,.L989
	setlos #0, gr8
	bra .L991
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.p2align 4
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	ckne icc0, cc5
	ccmp gr10, gr0, cc5, 0
	cckne icc1, cc4, cc5, 0
	andncr cc5, cc4, cc4
	setlos #-32, gr6
	setlos #32, gr5
	cadd gr10, gr6, gr10, cc5, 1
	cmov gr5, gr4, cc4, 1
	csll gr9, gr10, gr8, cc5, 1
	csub gr4, gr10, gr4, cc4, 1
	cmov gr0, gr9, cc5, 1
	csrl gr9, gr4, gr4, cc4, 1
	csll gr8, gr10, gr8, cc4, 1
	csll gr9, gr10, gr9, cc4, 1
	cor gr4, gr8, gr8, cc4, 1
	ret
	.size	__ashldi3, .-__ashldi3
	.p2align 4
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	beq icc0,2,.L1009
	addi gr10,#-32,gr10
	srai gr8, #31, gr4
	sra gr8, gr10, gr9
	mov gr4, gr8
.L1011:
	ret
.L1009:
	cmpi gr10, #0, icc0
	beq icc0,0,.L1011
	setlos #32, gr5
	sub gr5,gr10,gr5
	sll gr8,gr5,gr5
	srl gr9, gr10, gr9
	sra gr8, gr10, gr4
	or gr5, gr9, gr9
	mov gr4, gr8
	bra .L1011
	.size	__ashrdi3, .-__ashrdi3
	.p2align 4
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	mov gr9, gr4
	sethi #hi(#65280), gr12
	slli gr8,#24,gr10
	setlo #lo(#65280), gr12
	slli gr8,#8,gr13
	srli gr8, #8, gr9
	srli gr4, #24, gr7
	srli gr4, #8, gr6
	sethi #hi(#16711680), gr11
	setlo #lo(#16711680), gr11
	slli gr4,#24,gr5
	srli gr8, #24, gr8
	and gr9, gr12, gr9
	or gr13, gr7, gr7
	or gr6, gr10, gr6
	srli gr4, #24, gr13
	or gr8, gr9, gr9
	and gr7, gr11, gr7
	or gr5, gr13, gr8
	slli gr4,#8,gr4
	and gr6, gr12, gr5
	or gr9, gr7, gr9
	or gr8, gr5, gr8
	and gr4, gr11, gr4
	or gr9, gr10, gr9
	or gr8, gr4, gr8
	ret
	.size	__bswapdi2, .-__bswapdi2
	.p2align 4
	.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	slli gr8,#24,gr6
	srli gr8, #24, gr4
	or gr4, gr6, gr4
	sethi #hi(#65280), gr6
	srli gr8, #8, gr5
	setlo #lo(#65280), gr6
	and gr5, gr6, gr5
	or gr4, gr5, gr4
	sethi #hi(#16711680), gr5
	setlo #lo(#16711680), gr5
	slli gr8,#8,gr8
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
	setlos #1, gr9
	cmov gr0, gr9, cc4, 0
	slli gr9,#4,gr9
	setlos #16, gr5
	sub gr5,gr9,gr5
	srl gr8, gr5, gr4
	sethi #hi(#65280), gr5
	setlo #lo(#65280), gr5
	andcc gr4, gr5, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr7
	cmov gr0, gr7, cc4, 0
	slli gr7,#3,gr7
	setlos #8, gr5
	sub gr5,gr7,gr5
	srl gr4, gr5, gr4
	andicc gr4, #240, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr6
	cmov gr0, gr6, cc4, 0
	slli gr6,#2,gr6
	setlos #4, gr5
	sub gr5,gr6,gr5
	srl gr4, gr5, gr4
	andicc gr4, #12, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#1,gr5
	setlos #2, gr8
	sub gr8,gr5,gr10
	srl gr4, gr10, gr4
	add gr7,gr9,gr7
	andi gr4, #2, gr9
	cmpi gr9, #0, icc0
	sub gr8,gr4,gr8
	add gr6,gr7,gr6
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
	blt icc0,0,.L1020
	bgt icc0,0,.L1021
	cmp gr9,gr11,icc0
	bc icc0,0,.L1020
	bhi icc0,0,.L1021
	setlos #1, gr8
	ret
.L1020:
	setlos #0, gr8
	ret
.L1021:
	setlos #2, gr8
	ret
	.size	__cmpdi2, .-__cmpdi2
	.p2align 4
	.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	cmp gr8,gr10,icc0
	blt icc0,0,.L1026
	bgt icc0,0,.L1025
	cmp gr9,gr11,icc0
	bc icc0,0,.L1026
	ckhi icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L1026:
	setlos #-1, gr8
	ret
.L1025:
	setlos #1, gr8
	ret
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.p2align 4
	.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	sethi #hi(#65535), gr5
	setlo #lo(#65535), gr5
	andcc gr8, gr5, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr7
	cmov gr0, gr7, cc4, 0
	slli gr7,#4,gr7
	srl gr8, gr7, gr4
	andi gr4, #255, gr5
	cmpi gr5, #0, icc0
	ckeq icc0, cc4
	setlos #1, gr6
	cmov gr0, gr6, cc4, 0
	slli gr6,#3,gr6
	srl gr4, gr6, gr4
	andicc gr4, #15, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	slli gr5,#2,gr5
	srl gr4, gr5, gr4
	andicc gr4, #3, gr0, icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	slli gr8,#1,gr8
	srl gr4, gr8, gr4
	andi gr4, #3, gr4
	add gr6,gr7,gr6
	not gr4,gr7
	add gr5,gr6,gr5
	srli gr4, #1, gr4
	andi gr7, #1, gr6
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
	ckne icc0, cc5
	ccmp gr10, gr0, cc5, 0
	cckne icc1, cc4, cc5, 0
	andncr cc5, cc4, cc4
	setlos #-32, gr6
	setlos #32, gr5
	cadd gr10, gr6, gr10, cc5, 1
	cmov gr5, gr4, cc4, 1
	csrl gr8, gr10, gr9, cc5, 1
	csub gr4, gr10, gr4, cc4, 1
	cmov gr0, gr8, cc5, 1
	csll gr8, gr4, gr4, cc4, 1
	csrl gr9, gr10, gr9, cc4, 1
	csrl gr8, gr10, gr8, cc4, 1
	cor gr4, gr9, gr9, cc4, 1
	ret
	.size	__lshrdi3, .-__lshrdi3
	.p2align 4
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	sethi #hi(#65535), gr10
	setlo #lo(#65535), gr10
	and gr8, gr10, gr12
	and gr9, gr10, gr6
	umul gr12,gr6,gr14
	srli gr8, #16, gr5
	umul gr6,gr5,gr6
	srli gr15, #16, gr4
	add gr4,gr7,gr4
	slli gr4,#16,gr8
	srli gr9, #16, gr6
	srli gr8, #16, gr7
	and gr10, gr15, gr9
	umul gr12,gr6,gr12
	add gr7,gr13,gr7
	add gr9,gr8,gr9
	srli gr4, #16, gr8
	umul gr5,gr6,gr4
	slli gr7,#16,gr4
	and gr9, gr10, gr9
	add gr8,gr5,gr8
	srli gr7, #16, gr7
	add gr9,gr4,gr9
	add gr8,gr7,gr8
	ret
	.size	__muldsi3, .-__muldsi3
	.p2align 4
	.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	addi sp,#-40,sp
	sethi #hi(#65535), gr12
	setlo #lo(#65535), gr12
	sti gr18, @(sp,0)
	sti gr20, @(sp,8)
	and gr9, gr12, gr18
	and gr11, gr12, gr20
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	srli gr9, #16, gr14
	umul gr18,gr20,gr22
	sti gr21, @(sp,12)
	srli gr23, #16, gr4
	umul gr20,gr14,gr20
	add gr4,gr21,gr4
	movsg lr, gr5
	slli gr4,#16,gr6
	mov gr9, gr7
	srli gr11, #16, gr9
	sti gr5, @(sp,32)
	sti gr19, @(sp,4)
	srli gr6, #16, gr5
	umul gr18,gr9,gr18
	add gr5,gr19,gr5
	umul gr14,gr9,gr14
	srli gr4, #16, gr4
	and gr12, gr23, gr9
	srli gr5, #16, gr13
	add gr4,gr15,gr4
	add gr9,gr6,gr9
	add gr4,gr13,gr4
	umul gr7,gr10,gr6
	and gr9, gr12, gr9
	slli gr5,#16,gr5
	add gr7,gr4,gr4
	add gr9,gr5,gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(sp,20), gr23
	umul gr11,gr8,gr6
	ldi @(sp,32), gr5
	add gr4,gr7,gr8
	addi sp,#40,sp
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
	slli gr8,#31,gr11
	srli gr9, #1, gr6
	sethi #hi(#1431655765), gr7
	setlo #lo(#1431655765), gr7
	or gr11, gr6, gr6
	and gr6, gr7, gr5
	srli gr8, #1, gr10
	subcc gr9,gr5,gr9,icc0
	and gr10, gr7, gr4
	subx gr8,gr4,gr8,icc0
	slli gr8,#30,gr13
	srli gr9, #2, gr5
	sethi #hi(#858993459), gr4
	setlo #lo(#858993459), gr4
	or gr13, gr5, gr5
	srli gr8, #2, gr12
	and gr5, gr4, gr7
	and gr9, gr4, gr11
	and gr8, gr4, gr10
	addcc gr7,gr11,gr7,icc0
	and gr12, gr4, gr6
	addx gr6,gr10,gr6,icc0
	slli gr6,#28,gr8
	srli gr7, #4, gr5
	or gr8, gr5, gr5
	addcc gr5,gr7,gr5,icc0
	srli gr6, #4, gr4
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
	sethi #hi(#1431655765), gr5
	srli gr8, #1, gr4
	setlo #lo(#1431655765), gr5
	and gr4, gr5, gr4
	sub gr8,gr4,gr8
	sethi #hi(#858993459), gr4
	setlo #lo(#858993459), gr4
	srli gr8, #2, gr5
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
	addi sp,#-56,sp
	sti fp, @(sp,40)
	movsg lr, gr5
	addi sp,#40,fp
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sti gr24, @(sp,24)
	sethi #hi(#1072693248), gr22
	sti gr5, @(fp,8)
	sti gr25, @(sp,28)
	sti gr26, @(sp,32)
	andicc gr10, #1, gr0, icc0
	mov gr10, gr24
	mov gr10, gr18
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
	mov gr15, gr19
	mov gr8, gr20
	mov gr9, gr21
	beq icc0,2,.L1041
	sethi #gotofffuncdeschi(__muld), gr25
.L1043:
	setlo #gotofffuncdesclo(__muld), gr25
	ldd @(gr25,gr19), gr14
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr10
	mov gr21, gr11
	calll @(gr14,gr0)
	mov gr8, gr22
	mov gr9, gr23
.L1041:
	srli gr18, #31, gr4
	add gr4,gr18,gr4
	sraicc gr4, #1, gr18, icc0
	beq icc0,0,.L1042
	sethi #gotofffuncdeschi(__muld), gr25
	mov gr25, gr26
	setlo #gotofffuncdesclo(__muld), gr26
.L1044:
	ldd @(gr26,gr19), gr14
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	calll @(gr14,gr0)
	srli gr18, #31, gr4
	andicc gr18, #1, gr0, icc0
	add gr4,gr18,gr4
	mov gr8, gr20
	mov gr9, gr21
	bne icc0,2,.L1043
	srai gr4, #1, gr18
	bra .L1044
.L1042:
	cmpi gr24, #0, icc0
	bp icc0,2,.L1040
	sethi #gotofffuncdeschi(__divd), gr4
	setlo #gotofffuncdesclo(__divd), gr4
	ldd @(gr4,gr19), gr14
	sethi #hi(#1072693248), gr8
	mov gr22, gr10
	mov gr23, gr11
	setlo #lo(#1072693248), gr8
	setlos #0, gr9
	calll @(gr14,gr0)
	mov gr8, gr22
	mov gr9, gr23
.L1040:
	mov gr22, gr8
	mov gr23, gr9
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
	.size	__powidf2, .-__powidf2
	.p2align 4
	.globl __powisf2
	.type	__powisf2, @function
__powisf2:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	movsg lr, gr5
	addi sp,#32,fp
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	sti gr23, @(sp,20)
	sethi #hi(#1065353216), gr21
	sti gr5, @(fp,8)
	sti gr20, @(sp,8)
	sti gr24, @(sp,24)
	andicc gr9, #1, gr0, icc0
	mov gr9, gr23
	mov gr9, gr18
	setlo #lo(#1065353216), gr21
	mov gr15, gr22
	mov gr8, gr19
	beq icc0,2,.L1048
	sethi #gotofffuncdeschi(__mulf), gr20
.L1050:
	setlo #gotofffuncdesclo(__mulf), gr20
	ldd @(gr20,gr22), gr14
	mov gr21, gr8
	mov gr19, gr9
	calll @(gr14,gr0)
	mov gr8, gr21
.L1048:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L1049
	sethi #gotofffuncdeschi(__mulf), gr20
	mov gr20, gr24
	setlo #gotofffuncdesclo(__mulf), gr24
.L1051:
	ldd @(gr24,gr22), gr14
	mov gr19, gr9
	mov gr19, gr8
	calll @(gr14,gr0)
	srli gr18, #31, gr4
	andicc gr18, #1, gr0, icc0
	add gr4,gr18,gr4
	mov gr8, gr19
	bne icc0,2,.L1050
	srai gr4, #1, gr18
	bra .L1051
.L1049:
	cmpi gr23, #0, icc0
	bp icc0,2,.L1047
	sethi #gotofffuncdeschi(__divf), gr4
	setlo #gotofffuncdesclo(__divf), gr4
	ldd @(gr4,gr22), gr14
	sethi #hi(#1065353216), gr8
	mov gr21, gr9
	setlo #lo(#1065353216), gr8
	calll @(gr14,gr0)
	mov gr8, gr21
.L1047:
	mov gr21, gr8
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
	.size	__powisf2, .-__powisf2
	.p2align 4
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	cmp gr8,gr10,icc0
	bc icc0,0,.L1058
	bhi icc0,0,.L1059
	cmp gr9,gr11,icc0
	bc icc0,0,.L1058
	bhi icc0,0,.L1059
	setlos #1, gr8
	ret
.L1058:
	setlos #0, gr8
	ret
.L1059:
	setlos #2, gr8
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.p2align 4
	.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	cmp gr8,gr10,icc0
	bc icc0,0,.L1064
	bhi icc0,0,.L1063
	cmp gr9,gr11,icc0
	bc icc0,0,.L1064
	ckhi icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	ret
.L1064:
	setlos #-1, gr8
	ret
.L1063:
	setlos #1, gr8
	ret
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
	.globl __ledf2
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
