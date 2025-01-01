	.file	"mini-libc.c"
	.text
	.p2align 4
	.globl memmove
	.type	memmove, @function
memmove:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
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
	bra .L5
.L2:
	cmp gr8,gr9,icc0
	bne icc0,2,.L8
	bra .L5
.L7:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
	bra .L6
.L8:
	setlos #0, gr4
.L6:
	cmp gr4,gr10,icc0
	bne icc0,2,.L7
.L5:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	memmove, .-memmove
	.p2align 4
	.globl memccpy
	.type	memccpy, @function
memccpy:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	memccpy, .-memccpy
	.p2align 4
	.globl memchr
	.type	memchr, @function
memchr:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	memchr, .-memchr
	.p2align 4
	.globl memcmp
	.type	memcmp, @function
memcmp:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
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
	bra .L25
.L26:
	setlos #0, gr8
.L25:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	setlos #0, gr4
	bra .L28
.L29:
	ldub @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
.L28:
	cmp gr4,gr10,icc0
	bne icc0,2,.L29
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	memcpy, .-memcpy
	.p2align 4
	.globl memrchr
	.type	memrchr, @function
memrchr:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	andi gr9,#0xff,gr9
	addi gr10,#-1,gr10
	bra .L31
.L33:
	ldub @(gr8,gr10),gr4
	addi gr10,#-1,gr5
	cmp gr9,gr4,icc0
	bne icc0,2,.L34
	add gr8,gr10,gr8
	bra .L32
.L34:
	mov gr5, gr10
.L31:
	cmpi gr10,#-1,icc0
	bne icc0,2,.L33
	setlos #0, gr8
.L32:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	memrchr, .-memrchr
	.p2align 4
	.globl memset
	.type	memset, @function
memset:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	add gr8,gr10,gr10
	mov gr8, gr4
	andi gr9,#0xff,gr9
	bra .L36
.L37:
	stb gr9, @(gr4,gr0)
	addi gr4,#1,gr4
.L36:
	cmp gr4,gr10,icc0
	bne icc0,2,.L37
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	memset, .-memset
	.p2align 4
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	bra .L39
.L40:
	addi gr9,#1,gr9
	addi gr8,#1,gr8
.L39:
	ldsb @(gr9,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	bne icc0,2,.L40
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	stpcpy, .-stpcpy
	.p2align 4
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	andi gr9,#0xff,gr9
	bra .L42
.L44:
	addi gr8,#1,gr8
.L42:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L43
	ldub @(gr8,gr0),gr4
	cmp gr9,gr4,icc0
	bne icc0,2,.L44
.L43:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	strchrnul, .-strchrnul
	.p2align 4
	.globl strchr
	.type	strchr, @function
strchr:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
.L47:
	ldsb @(gr8,gr0),gr4
	cmp gr9,gr4,icc0
	beq icc0,0,.L46
	addi gr8,#1,gr8
	ldsbi @(gr8,-1),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L47
	setlos #0, gr8
.L46:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	strchr, .-strchr
	.p2align 4
	.globl strcmp
	.type	strcmp, @function
strcmp:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	bra .L51
.L53:
	addi gr8,#1,gr8
	addi gr9,#1,gr9
.L51:
	ldsb @(gr8,gr0),gr5
	ldsb @(gr9,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L52
	cmpi gr5, #0, icc0
	bne icc0,2,.L53
.L52:
	ldub @(gr8,gr0),gr8
	ldub @(gr9,gr0),gr4
	sub gr8,gr4,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	strcmp, .-strcmp
	.p2align 4
	.globl strlen
	.type	strlen, @function
strlen:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr5
	bra .L55
.L56:
	addi gr5,#1,gr5
.L55:
	ldsb @(gr5,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L56
	sub gr5,gr8,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	strlen, .-strlen
	.p2align 4
	.globl strncmp
	.type	strncmp, @function
strncmp:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmpi gr10, #0, icc0
	beq icc0,0,.L62
	addi gr10,#-1,gr5
	add gr8,gr5,gr5
	bra .L59
.L61:
	addi gr8,#1,gr8
	addi gr9,#1,gr9
.L59:
	ldub @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L60
	ldub @(gr9,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L60
	cmp gr8,gr5,icc0
	beq icc0,0,.L60
	ldub @(gr8,gr0),gr6
	cmp gr6,gr4,icc0
	beq icc0,2,.L61
.L60:
	ldub @(gr8,gr0),gr8
	ldub @(gr9,gr0),gr4
	sub gr8,gr4,gr8
	bra .L58
.L62:
	setlos #0, gr8
.L58:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	strncmp, .-strncmp
	.p2align 4
	.globl swab
	.type	swab, @function
swab:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr4
	add gr8,gr10,gr10
	bra .L64
.L65:
	ldsbi @(gr4,1),gr5
	stb gr5, @(gr9,gr0)
	ldsb @(gr4,gr0),gr5
	stbi gr5, @(gr9,1)
	addi gr9,#2,gr9
	addi gr4,#2,gr4
.L64:
	sub gr10,gr4,gr5
	cmpi gr5,#1,icc0
	bgt icc0,2,.L65
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	swab, .-swab
	.p2align 4
	.globl isalpha
	.type	isalpha, @function
isalpha:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	ori gr8, #32, gr8
	addi gr8,#-97,gr8
	cmpi gr8,#25,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	isalpha, .-isalpha
	.p2align 4
	.globl isascii
	.type	isascii, @function
isascii:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmpi gr8,#127,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	isascii, .-isascii
	.p2align 4
	.globl isblank
	.type	isblank, @function
isblank:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmpi gr8,#32,icc0
	beq icc0,0,.L70
	cmpi gr8,#9,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	bra .L69
.L70:
	setlos #1, gr8
.L69:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	isblank, .-isblank
	.p2align 4
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmpi gr8,#31,icc0
	bls icc0,2,.L74
	cmpi gr8,#127,icc0
	ckeq icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	bra .L73
.L74:
	setlos #1, gr8
.L73:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	iscntrl, .-iscntrl
	.p2align 4
	.globl isdigit
	.type	isdigit, @function
isdigit:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	addi gr8,#-48,gr8
	cmpi gr8,#9,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	isdigit, .-isdigit
	.p2align 4
	.globl isgraph
	.type	isgraph, @function
isgraph:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	addi gr8,#-33,gr8
	cmpi gr8,#93,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	isgraph, .-isgraph
	.p2align 4
	.globl islower
	.type	islower, @function
islower:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	addi gr8,#-97,gr8
	cmpi gr8,#25,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	islower, .-islower
	.p2align 4
	.globl isprint
	.type	isprint, @function
isprint:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	addi gr8,#-32,gr8
	cmpi gr8,#94,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	isprint, .-isprint
	.p2align 4
	.globl isspace
	.type	isspace, @function
isspace:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmpi gr8,#32,icc0
	beq icc0,0,.L82
	addi gr8,#-9,gr8
	cmpi gr8,#5,icc0
	ckc icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	bra .L81
.L82:
	setlos #1, gr8
.L81:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	isspace, .-isspace
	.p2align 4
	.globl isupper
	.type	isupper, @function
isupper:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	addi gr8,#-65,gr8
	cmpi gr8,#25,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	isupper, .-isupper
	.p2align 4
	.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmpi gr8,#31,icc0
	bls icc0,2,.L87
	addi gr8,#-127,gr4
	cmpi gr4,#32,icc0
	bls icc0,2,.L88
	setlos #-8232, gr4
	add gr8,gr4,gr4
	cmpi gr4,#1,icc0
	bls icc0,0,.L89
	sethi #hi(#-65529), gr4
	setlo #lo(#-65529), gr4
	add gr8,gr4,gr8
	cmpi gr8,#3,icc0
	ckc icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	bra .L86
.L87:
	setlos #1, gr8
	bra .L86
.L88:
	setlos #1, gr8
	bra .L86
.L89:
	setlos #1, gr8
.L86:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	iswcntrl, .-iswcntrl
	.p2align 4
	.globl iswdigit
	.type	iswdigit, @function
iswdigit:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	addi gr8,#-48,gr8
	cmpi gr8,#9,icc0
	ckls icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	iswdigit, .-iswdigit
	.p2align 4
	.globl iswprint
	.type	iswprint, @function
iswprint:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmpi gr8,#254,icc0
	bhi icc0,2,.L93
	addi gr8,#1,gr8
	andi gr8, #127, gr8
	cmpi gr8,#32,icc0
	ckhi icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L94
.L93:
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
	bra .L94
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
.L94:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	iswprint, .-iswprint
	.p2align 4
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	addi gr8,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L102
	ori gr8, #32, gr8
	addi gr8,#-97,gr8
	cmpi gr8,#6,icc0
	ckc icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	bra .L101
.L102:
	setlos #1, gr8
.L101:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	iswxdigit, .-iswxdigit
	.p2align 4
	.globl toascii
	.type	toascii, @function
toascii:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	andi gr8, #127, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	bne icc0,0,.L108
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L109
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L112
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __subd
	bra .L106
.L108:
	mov gr18, gr8
	mov gr19, gr9
	bra .L106
.L109:
	mov gr22, gr8
	mov gr23, gr9
	bra .L106
.L112:
	setlos #0, gr8
	setlos #0, gr9
.L106:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
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
	bne icc0,0,.L116
	mov gr20, gr9
	mov gr20, gr8
	mov gr19, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L117
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ble icc0,2,.L120
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call __subf
	bra .L114
.L116:
	mov gr18, gr8
	bra .L114
.L117:
	mov gr20, gr8
	bra .L114
.L120:
	setlos #0, gr8
.L114:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
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
	bne icc0,0,.L125
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L126
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L123
	cmpi gr18, #0, icc0
	bp icc0,2,.L127
	mov gr20, gr8
	mov gr21, gr9
	bra .L122
.L123:
	mov gr20, gr10
	mov gr21, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L130
	mov gr20, gr8
	mov gr21, gr9
	bra .L122
.L125:
	mov gr20, gr8
	mov gr21, gr9
	bra .L122
.L126:
	mov gr18, gr8
	mov gr19, gr9
	bra .L122
.L127:
	mov gr18, gr8
	mov gr19, gr9
	bra .L122
.L130:
	mov gr18, gr8
	mov gr19, gr9
.L122:
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
	mov gr8, gr18
	mov gr9, gr19
	mov gr8, gr9
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L135
	mov gr19, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L136
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr19, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L133
	cmpi gr18, #0, icc0
	bp icc0,2,.L137
	mov gr19, gr8
	bra .L132
.L133:
	mov gr19, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __ltsf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L140
	mov gr19, gr8
	bra .L132
.L135:
	mov gr19, gr8
	bra .L132
.L136:
	mov gr18, gr8
	bra .L132
.L137:
	mov gr18, gr8
	bra .L132
.L140:
	mov gr18, gr8
.L132:
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
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr20
	mov gr11, gr21
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L145
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L146
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr18, gr5
	and gr4, gr20, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L143
	cmpi gr18, #0, icc0
	bp icc0,2,.L147
	mov gr20, gr8
	mov gr21, gr9
	bra .L142
.L143:
	mov gr20, gr10
	mov gr21, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L150
	mov gr20, gr8
	mov gr21, gr9
	bra .L142
.L145:
	mov gr20, gr8
	mov gr21, gr9
	bra .L142
.L146:
	mov gr18, gr8
	mov gr19, gr9
	bra .L142
.L147:
	mov gr18, gr8
	mov gr19, gr9
	bra .L142
.L150:
	mov gr18, gr8
	mov gr19, gr9
.L142:
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
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr18
	mov gr11, gr19
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L155
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L156
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L153
	cmpi gr20, #0, icc0
	bp icc0,2,.L157
	mov gr20, gr8
	mov gr21, gr9
	bra .L152
.L153:
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L160
	mov gr20, gr8
	mov gr21, gr9
	bra .L152
.L155:
	mov gr18, gr8
	mov gr19, gr9
	bra .L152
.L156:
	mov gr20, gr8
	mov gr21, gr9
	bra .L152
.L157:
	mov gr18, gr8
	mov gr19, gr9
	bra .L152
.L160:
	mov gr18, gr8
	mov gr19, gr9
.L152:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
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
	bne icc0,0,.L165
	mov gr18, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L166
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr19, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L163
	cmpi gr19, #0, icc0
	bp icc0,2,.L167
	mov gr19, gr8
	bra .L162
.L163:
	mov gr18, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __ltsf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L170
	mov gr19, gr8
	bra .L162
.L165:
	mov gr18, gr8
	bra .L162
.L166:
	mov gr19, gr8
	bra .L162
.L167:
	mov gr18, gr8
	bra .L162
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
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr18
	mov gr11, gr19
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L175
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L176
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr4, gr20, gr5
	and gr4, gr18, gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L173
	cmpi gr20, #0, icc0
	bp icc0,2,.L177
	mov gr20, gr8
	mov gr21, gr9
	bra .L172
.L173:
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L180
	mov gr20, gr8
	mov gr21, gr9
	bra .L172
.L175:
	mov gr18, gr8
	mov gr19, gr9
	bra .L172
.L176:
	mov gr20, gr8
	mov gr21, gr9
	bra .L172
.L177:
	mov gr18, gr8
	mov gr19, gr9
	bra .L172
.L180:
	mov gr18, gr8
	mov gr19, gr9
.L172:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
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
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sethi #gotoffhi(s.0), gr5
	setlo #gotofflo(s.0), gr5
	add gr5,gr15,gr5
	sethi #gprelhi(digits), gr7
	setlo #gprello(digits), gr7
	bra .L182
.L183:
	andi gr8, #63, gr6
	ldi @(gr15,#got12(_gp)), gr4
	add gr7,gr4,gr4
	ldsb @(gr4,gr6),gr4
	stb gr4, @(gr5,gr0)
	addi gr5,#1,gr5
	srli gr8, #6, gr8
.L182:
	cmpi gr8, #0, icc0
	bne icc0,2,.L183
	stb gr0, @(gr5,gr0)
	sethi #gotoffhi(s.0), gr8
	setlo #gotofflo(s.0), gr8
	add gr8,gr15,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	addi gr8,#-1,gr7
	setlos #0, gr6
	sethi #gotoffhi(seed), gr4
	setlo #gotofflo(seed), gr4
	add gr4,gr15,gr4
	st gr6, @(gr4,gr0)
	sti gr7, @(gr4,4)
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	insque, .-insque
	.p2align 4
	.globl remque
	.type	remque, @function
remque:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	bra .L193
.L196:
	mov gr19, gr9
	mov gr23, gr8
	ldd @(gr25,gr0), gr14
	calll @(gr14,gr0)
	add gr19,gr20,gr19
	cmpi gr8, #0, icc0
	bne icc0,2,.L194
	umul gr18,gr20,gr18
	add gr22,gr19,gr8
	bra .L195
.L194:
	addi gr18,#1,gr18
.L193:
	cmp gr18,gr21,icc0
	bne icc0,2,.L196
	addi gr21,#1,gr4
	st gr4, @(gr26,gr0)
	umul gr20,gr21,gr4
	add gr22,gr5,gr8
	mov gr20, gr10
	mov gr23, gr9
	mov gr24, gr15
	call memcpy
.L195:
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
	bra .L198
.L201:
	mov gr19, gr9
	mov gr23, gr8
	ldd @(gr21,gr0), gr14
	calll @(gr14,gr0)
	add gr19,gr20,gr19
	cmpi gr8, #0, icc0
	bne icc0,2,.L199
	umul gr18,gr20,gr18
	add gr22,gr19,gr8
	bra .L200
.L199:
	addi gr18,#1,gr18
.L198:
	cmp gr18,gr24,icc0
	bne icc0,2,.L201
	setlos #0, gr8
.L200:
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
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmpi gr8,#0,icc0
	cklt icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	bra .L206
.L211:
	setlos #0, gr5
.L206:
	addi gr18,#1,gr18
	bra .L207
.L212:
	setlos #0, gr5
.L207:
	setlos #0, gr8
	bra .L208
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
	bra .L215
.L216:
	addi gr18,#1,gr18
.L215:
	ldsb @(gr18,gr0),gr8
	mov gr19, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L216
	ldsb @(gr18,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L222
	cmpi gr4,#45,icc0
	bne icc0,2,.L223
	setlos #1, gr5
	bra .L217
.L222:
	setlos #0, gr5
.L217:
	addi gr18,#1,gr18
	bra .L218
.L223:
	setlos #0, gr5
.L218:
	setlos #0, gr8
	bra .L219
.L220:
	smuli gr8,#10,gr8
	addi gr18,#1,gr18
	ldsbi @(gr18,-1),gr4
	addi gr4,#-48,gr4
	sub gr9,gr4,gr8
.L219:
	ldsb @(gr18,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L220
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
	bra .L226
.L227:
	addi gr24,#1,gr24
.L226:
	ldsb @(gr24,gr0),gr8
	mov gr25, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L227
	ldsb @(gr24,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L233
	cmpi gr4,#45,icc0
	bne icc0,2,.L234
	setlos #1, gr5
	bra .L228
.L233:
	setlos #0, gr5
.L228:
	addi gr24,#1,gr24
	bra .L229
.L234:
	setlos #0, gr5
.L229:
	setlos #0, gr8
	setlos #0, gr9
	bra .L230
.L231:
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
.L230:
	ldsb @(gr24,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L231
	cmpi gr5, #0, icc0
	bne icc0,2,.L232
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
.L232:
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
	bra .L237
.L241:
	srli gr18, #1, gr4
	umul gr4,gr20,gr4
	add gr21,gr5,gr19
	mov gr19, gr9
	mov gr23, gr8
	ldd @(gr22,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bp icc0,2,.L238
	srli gr18, #1, gr18
	bra .L237
.L238:
	cmpi gr8,#0,icc0
	ble icc0,0,.L242
	add gr19,gr20,gr21
	srli gr18, #1, gr4
	addi gr18,#-1,gr18
	sub gr18,gr4,gr18
.L237:
	cmpi gr18, #0, icc0
	bne icc0,2,.L241
	setlos #0, gr8
	bra .L240
.L242:
	mov gr19, gr8
.L240:
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
	bra .L244
.L247:
	srai gr18, #1, gr4
	umul gr4,gr21,gr4
	add gr20,gr5,gr19
	mov gr22, gr10
	mov gr19, gr9
	mov gr24, gr8
	ldd @(gr23,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,0,.L248
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #-1, gr4
	cadd gr19, gr21, gr20, cc4, 1
	cadd gr18, gr4, gr18, cc4, 1
	srai gr18, #1, gr18
.L244:
	cmpi gr18, #0, icc0
	bne icc0,2,.L247
	setlos #0, gr8
	bra .L245
.L248:
	mov gr19, gr8
.L245:
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
	sti fp, @(sp,0)
	mov sp, fp
	sti gr3, @(fp,4)
	movsg lr, gr5
	sti gr5, @(fp,8)
	sdiv gr8,gr9,gr6
	smul gr6,gr9,gr4
	sub gr8,gr5,gr8
	st gr6, @(gr3,gr0)
	sti gr8, @(gr3,4)
	mov gr3, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	div, .-div
	.p2align 4
	.globl imaxabs
	.type	imaxabs, @function
imaxabs:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmpi gr8, #0, icc0
	bp icc0,2,.L251
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
.L251:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmpi gr8,#0,icc0
	cklt icc0, cc4
	csub gr0, gr8, gr8, cc4, 1
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	labs, .-labs
	.p2align 4
	.globl ldiv
	.type	ldiv, @function
ldiv:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	sti gr3, @(fp,4)
	movsg lr, gr5
	sti gr5, @(fp,8)
	sdiv gr8,gr9,gr6
	smul gr6,gr9,gr4
	sub gr8,gr5,gr8
	st gr6, @(gr3,gr0)
	sti gr8, @(gr3,4)
	mov gr3, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	ldiv, .-ldiv
	.p2align 4
	.globl llabs
	.type	llabs, @function
llabs:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmpi gr8, #0, icc0
	bp icc0,2,.L257
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
.L257:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	bra .L261
.L263:
	addi gr8,#4,gr8
.L261:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L262
	cmp gr9,gr4,icc0
	bne icc0,2,.L263
.L262:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	ckeq icc0, cc4
	cmov gr0, gr8, cc4, 1
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	wcschr, .-wcschr
	.p2align 4
	.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	bra .L267
.L269:
	addi gr8,#4,gr8
	addi gr9,#4,gr9
.L267:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L268
	cmpi gr5, #0, icc0
	beq icc0,0,.L268
	ld @(gr9,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L269
.L268:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L271
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L270
.L271:
	setlos #-1, gr8
.L270:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	wcscmp, .-wcscmp
	.p2align 4
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	setlos #0, gr4
	addi gr8,#-4,gr6
.L273:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
	ld @(gr6,gr4), gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L273
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	wcscpy, .-wcscpy
	.p2align 4
	.globl wcslen
	.type	wcslen, @function
wcslen:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr5
	bra .L276
.L277:
	addi gr5,#4,gr5
.L276:
	ld @(gr5,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L277
	sub gr5,gr8,gr5
	srai gr5, #2, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	wcslen, .-wcslen
	.p2align 4
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	bra .L279
.L281:
	addi gr10,#-1,gr10
	addi gr8,#4,gr8
	addi gr9,#4,gr9
.L279:
	cmpi gr10, #0, icc0
	beq icc0,0,.L280
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L280
	cmpi gr5, #0, icc0
	beq icc0,0,.L280
	ld @(gr9,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L281
.L280:
	cmpi gr10, #0, icc0
	beq icc0,2,.L283
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L284
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L282
.L283:
	setlos #0, gr8
	bra .L282
.L284:
	setlos #-1, gr8
.L282:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	bra .L286
.L288:
	addi gr10,#-1,gr10
	addi gr8,#4,gr8
.L286:
	cmpi gr10, #0, icc0
	beq icc0,0,.L287
	ld @(gr8,gr0), gr4
	cmp gr9,gr4,icc0
	bne icc0,2,.L288
.L287:
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr0, gr8, cc4, 1
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	wmemchr, .-wmemchr
	.p2align 4
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	bra .L292
.L294:
	addi gr10,#-1,gr10
	addi gr8,#4,gr8
	addi gr9,#4,gr9
.L292:
	cmpi gr10, #0, icc0
	beq icc0,0,.L293
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L294
.L293:
	cmpi gr10, #0, icc0
	beq icc0,2,.L296
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,2,.L297
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L295
.L296:
	setlos #0, gr8
	bra .L295
.L297:
	setlos #-1, gr8
.L295:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	setlos #0, gr4
	bra .L299
.L300:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
.L299:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L300
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	wmemcpy, .-wmemcpy
	.p2align 4
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmp gr8,gr9,icc0
	beq icc0,0,.L302
	sub gr8,gr9,gr4
	slli gr10,#2,gr5
	cmp gr4,gr5,icc0
	bnc icc0,2,.L307
	addi gr10,#-1,gr4
	slli gr4,#2,gr4
	bra .L304
.L305:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#-4,gr4
.L304:
	cmpi gr4,#-4,icc0
	bne icc0,2,.L305
	bra .L302
.L306:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
	bra .L303
.L307:
	setlos #0, gr4
.L303:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L306
.L302:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl wmemset
	.type	wmemset, @function
wmemset:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr4
	bra .L309
.L310:
	addi gr4,#4,gr4
	sti gr9, @(gr4,-4)
.L309:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L310
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	wmemset, .-wmemset
	.p2align 4
	.globl bcopy
	.type	bcopy, @function
bcopy:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmp gr8,gr9,icc0
	bnc icc0,2,.L312
	addi gr8,#-1,gr8
	addi gr9,#-1,gr9
	bra .L313
.L314:
	ldsb @(gr8,gr10),gr4
	stb gr4, @(gr9,gr10)
	addi gr10,#-1,gr10
.L313:
	cmpi gr10, #0, icc0
	bne icc0,2,.L314
	bra .L311
.L312:
	cmp gr8,gr9,icc0
	bne icc0,2,.L318
	bra .L311
.L317:
	ldsb @(gr8,gr4),gr5
	stb gr5, @(gr9,gr4)
	addi gr4,#1,gr4
	bra .L316
.L318:
	setlos #0, gr4
.L316:
	cmp gr4,gr10,icc0
	bne icc0,2,.L317
.L311:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	bcopy, .-bcopy
	.p2align 4
	.globl rotl64
	.type	rotl64, @function
rotl64:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	rotl64, .-rotl64
	.p2align 4
	.globl rotr64
	.type	rotr64, @function
rotr64:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	rotr64, .-rotr64
	.p2align 4
	.globl rotl32
	.type	rotl32, @function
rotl32:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sll gr8,gr9,gr4
	sub gr0,gr9,gr9
	andi gr9, #31, gr9
	srl gr8, gr9, gr8
	or gr8, gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	rotl32, .-rotl32
	.p2align 4
	.globl rotr32
	.type	rotr32, @function
rotr32:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	srl gr8, gr9, gr4
	sub gr0,gr9,gr9
	andi gr9, #31, gr9
	sll gr8,gr9,gr8
	or gr8, gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	rotr32, .-rotr32
	.p2align 4
	.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sll gr8,gr9,gr4
	sub gr0,gr9,gr9
	andi gr9, #31, gr9
	srl gr8, gr9, gr8
	or gr8, gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	rotl_sz, .-rotl_sz
	.p2align 4
	.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	srl gr8, gr9, gr4
	sub gr0,gr9,gr9
	andi gr9, #31, gr9
	sll gr8,gr9,gr8
	or gr8, gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	rotr_sz, .-rotr_sz
	.p2align 4
	.globl rotl16
	.type	rotl16, @function
rotl16:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr4
	sethi #hi(#0),gr4
	sll gr4,gr9,gr6
	setlos #16, gr5
	sub gr5,gr9,gr5
	srl gr4, gr5, gr8
	or gr8, gr6, gr8
	sethi #hi(#0),gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	rotl16, .-rotl16
	.p2align 4
	.globl rotr16
	.type	rotr16, @function
rotr16:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr4
	sethi #hi(#0),gr4
	srl gr4, gr9, gr6
	setlos #16, gr5
	sub gr5,gr9,gr5
	sll gr4,gr5,gr8
	or gr8, gr6, gr8
	sethi #hi(#0),gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	rotr16, .-rotr16
	.p2align 4
	.globl rotl8
	.type	rotl8, @function
rotl8:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	andi gr8,#0xff,gr8
	sll gr8,gr9,gr5
	setlos #8, gr4
	sub gr4,gr9,gr4
	srl gr8, gr4, gr8
	or gr8, gr5, gr8
	andi gr8,#0xff,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	rotl8, .-rotl8
	.p2align 4
	.globl rotr8
	.type	rotr8, @function
rotr8:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	andi gr8,#0xff,gr8
	srl gr8, gr9, gr5
	setlos #8, gr4
	sub gr4,gr9,gr4
	sll gr8,gr4,gr8
	or gr8, gr5, gr8
	andi gr8,#0xff,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	rotr8, .-rotr8
	.p2align 4
	.globl bswap_16
	.type	bswap_16, @function
bswap_16:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr4
	sethi #hi(#0),gr4
	srli gr8, #8, gr8
	andi gr8,#0xff,gr8
	andi gr4, #255, gr4
	slli gr4,#8,gr4
	or gr8, gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	bswap_16, .-bswap_16
	.p2align 4
	.globl bswap_32
	.type	bswap_32, @function
bswap_32:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	bswap_32, .-bswap_32
	.p2align 4
	.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	bswap_64, .-bswap_64
	.p2align 4
	.globl ffs
	.type	ffs, @function
ffs:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	setlos #0, gr4
	bra .L333
.L336:
	srl gr8, gr4, gr5
	andicc gr5, #1, gr0, icc0
	beq icc0,2,.L334
	addi gr4,#1,gr8
	bra .L335
.L334:
	addi gr4,#1,gr4
.L333:
	cmpi gr4,#32,icc0
	bne icc0,2,.L336
	setlos #0, gr8
.L335:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	ffs, .-ffs
	.p2align 4
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmpi gr8, #0, icc0
	beq icc0,0,.L341
	setlos #1, gr4
	bra .L339
.L340:
	srai gr8, #1, gr8
	addi gr4,#1,gr4
.L339:
	andicc gr8, #1, gr0, icc0
	beq icc0,2,.L340
	mov gr4, gr8
	bra .L338
.L341:
	setlos #0, gr8
.L338:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	bn icc0,2,.L345
	sethi #hi(#2139095039), gr9
	setlo #lo(#2139095039), gr9
	mov gr19, gr8
	mov gr18, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	bra .L343
.L345:
	setlos #1, gr8
.L343:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
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
	bn icc0,2,.L351
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
	bra .L349
.L351:
	setlos #1, gr8
.L349:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
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
	bn icc0,2,.L357
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
	bra .L355
.L357:
	setlos #1, gr8
.L355:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
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
	bne icc0,0,.L362
	mov gr20, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __addf
	mov gr8, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __nesf2
	cmpi gr8, #0, icc0
	beq icc0,2,.L362
	cmpi gr18, #0, icc0
	bp icc0,2,.L367
	sethi #hi(#1056964608), gr19
	setlo #lo(#1056964608), gr19
	bra .L366
.L367:
	sethi #hi(#1073741824), gr19
	setlo #lo(#1073741824), gr19
.L366:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L365
	mov gr19, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
.L365:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L362
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr19
	bra .L366
.L362:
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
	bne icc0,0,.L370
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
	beq icc0,2,.L370
	cmpi gr20, #0, icc0
	bp icc0,2,.L375
	sethi #hi(#1071644672), gr18
	setlo #lo(#1071644672), gr18
	setlos #0, gr19
	bra .L374
.L375:
	sethi #hi(#1073741824), gr18
	setlo #lo(#1073741824), gr18
	setlos #0, gr19
.L374:
	andicc gr20, #1, gr0, icc0
	beq icc0,2,.L373
	mov gr18, gr10
	mov gr19, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
.L373:
	srli gr20, #31, gr4
	add gr4,gr20,gr10
	sraicc gr10, #1, gr20, icc0
	beq icc0,0,.L370
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
	bra .L374
.L370:
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
	bne icc0,0,.L378
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
	beq icc0,2,.L378
	cmpi gr20, #0, icc0
	bp icc0,2,.L383
	sethi #hi(#1071644672), gr18
	setlo #lo(#1071644672), gr18
	setlos #0, gr19
	bra .L382
.L383:
	sethi #hi(#1073741824), gr18
	setlo #lo(#1073741824), gr18
	setlos #0, gr19
.L382:
	andicc gr20, #1, gr0, icc0
	beq icc0,2,.L381
	mov gr18, gr10
	mov gr19, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
.L381:
	srli gr20, #31, gr4
	add gr4,gr20,gr10
	sraicc gr10, #1, gr20, icc0
	beq icc0,0,.L378
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
	bra .L382
.L378:
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
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	setlos #0, gr4
	bra .L386
.L387:
	ldsb @(gr9,gr4),gr6
	ldsb @(gr8,gr4),gr5
	xor gr5, gr6, gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
.L386:
	cmp gr4,gr10,icc0
	bne icc0,2,.L387
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	bra .L389
.L391:
	addi gr19,#1,gr19
	addi gr8,#1,gr8
	addi gr18,#-1,gr18
.L389:
	cmpi gr18, #0, icc0
	beq icc0,0,.L390
	ldsb @(gr19,gr0),gr4
	stb gr4, @(gr8,gr0)
	cmpi gr4, #0, icc0
	bne icc0,2,.L391
.L390:
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
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr5
	setlos #0, gr8
	bra .L394
.L396:
	addi gr8,#1,gr8
.L394:
	cmp gr8,gr9,icc0
	beq icc0,0,.L395
	ldsb @(gr5,gr8),gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L396
.L395:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	strnlen, .-strnlen
	.p2align 4
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	bra .L398
.L400:
	addi gr5,#1,gr5
	ldsbi @(gr5,-1),gr6
	ldsb @(gr8,gr0),gr4
	cmp gr6,gr4,icc0
	bne icc0,2,.L401
	bra .L399
.L403:
	mov gr9, gr5
.L401:
	ldsb @(gr5,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L400
	addi gr8,#1,gr8
.L398:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L403
	setlos #0, gr8
.L399:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	strpbrk, .-strpbrk
	.p2align 4
	.globl strrchr
	.type	strrchr, @function
strrchr:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	bra .L411
.L412:
	mov gr21, gr10
	mov gr20, gr9
	mov gr18, gr8
	mov gr19, gr15
	call strncmp
	cmpi gr8, #0, icc0
	beq icc0,0,.L414
	addi gr18,#1,gr18
.L411:
	mov gr22, gr9
	mov gr18, gr8
	mov gr19, gr15
	call strchr
	mov gr8, gr18
	cmpi gr8, #0, icc0
	bne icc0,2,.L412
	setlos #0, gr8
	bra .L410
.L413:
	mov gr18, gr8
	bra .L410
.L414:
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
	bp icc0,2,.L416
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	bgt icc0,0,.L418
.L416:
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,0,.L426
	setlos #0, gr10
	setlos #0, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L427
.L418:
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	xor gr18, gr4, gr8
	mov gr19, gr9
	bra .L419
.L426:
	mov gr18, gr8
	mov gr19, gr9
	bra .L419
.L427:
	mov gr18, gr8
	mov gr19, gr9
.L419:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
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
	beq icc0,0,.L433
	cmp gr9,gr11,icc0
	ckc icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L434
	addi gr10,#1,gr23
	addi gr11,#-1,gr22
	bra .L430
.L432:
	ldsb @(gr18,gr0),gr5
	ldsb @(gr19,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,2,.L431
	addi gr18,#1,gr8
	mov gr22, gr10
	mov gr23, gr9
	mov gr21, gr15
	call memcmp
	cmpi gr8, #0, icc0
	beq icc0,0,.L435
.L431:
	addi gr18,#1,gr18
.L430:
	cmp gr18,gr20,icc0
	bls icc0,2,.L432
	setlos #0, gr8
	bra .L429
.L433:
	bra .L429
.L434:
	setlos #0, gr8
	bra .L429
.L435:
	mov gr18, gr8
.L429:
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
	bp icc0,2,.L454
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
	setlos #1, gr26
	bra .L438
.L454:
	setlos #0, gr26
.L438:
	sethi #hi(#1072693248), gr10
	setlo #lo(#1072693248), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gedf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L449
	bra .L455
.L442:
	addi gr21,#1,gr21
	mov gr24, gr10
	mov gr25, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
	bra .L440
.L449:
	setlos #0, gr21
	sethi #hi(#1072693248), gr22
	setlo #lo(#1072693248), gr22
	setlos #0, gr23
	sethi #hi(#1071644672), gr24
	setlo #lo(#1071644672), gr24
	setlos #0, gr25
.L440:
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gedf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L442
	bra .L443
.L455:
	sethi #hi(#1071644672), gr10
	setlo #lo(#1071644672), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,2,.L456
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	bne icc0,2,.L451
	setlos #0, gr21
	bra .L443
.L446:
	addi gr21,#-1,gr21
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __addd
	mov gr8, gr18
	mov gr9, gr19
	bra .L445
.L451:
	setlos #0, gr21
	sethi #hi(#1071644672), gr22
	setlo #lo(#1071644672), gr22
	setlos #0, gr23
.L445:
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bn icc0,2,.L446
	bra .L443
.L456:
	setlos #0, gr21
.L443:
	st gr21, @(gr27,gr0)
	cmpi gr26, #0, icc0
	beq icc0,2,.L447
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
.L447:
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
	.size	frexp, .-frexp
	.p2align 4
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	mov gr8, gr4
	mov gr9, gr5
	setlos #0, gr18
	setlos #0, gr19
	bra .L458
.L461:
	setlos #0, gr14
	andi gr5, #1, gr15
	orcc gr14, gr15, gr0, icc0
	beq icc0,2,.L459
	addcc gr19,gr11,gr19,icc0
	addx gr18,gr10,gr18,icc0
.L459:
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
.L458:
	orcc gr4, gr5, gr0, icc0
	bne icc0,2,.L461
	mov gr18, gr8
	mov gr19, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__muldi3, .-__muldi3
	.p2align 4
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	setlos #33, gr5
	setlos #1, gr4
	bra .L463
.L467:
	slli gr9,#1,gr9
	slli gr4,#1,gr4
.L463:
	cmp gr9,gr8,icc0
	bc icc0,2,.L464
	setlos #0, gr5
	bra .L465
.L471:
	setlos #0, gr5
	bra .L465
.L464:
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L471
	cmpi gr9, #0, icc0
	bp icc0,2,.L467
	setlos #0, gr5
	bra .L465
.L469:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr4, #1, gr4
	srli gr9, #1, gr9
.L465:
	cmpi gr4, #0, icc0
	bne icc0,2,.L469
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr5, gr8, cc4, 1
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	beq icc0,0,.L476
	slli gr4,#8,gr8
	call __clzsi2
	addi gr8,#-1,gr8
	bra .L475
.L476:
	setlos #7, gr8
.L475:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	beq icc0,0,.L482
	call __clzdi2
	addi gr8,#-1,gr8
	bra .L480
.L482:
	setlos #63, gr8
.L480:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__clrsbdi2, .-__clrsbdi2
	.p2align 4
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	setlos #0, gr4
	bra .L484
.L486:
	andicc gr8, #1, gr0, icc0
	ckne icc0, cc4
	cadd gr4, gr9, gr4, cc4, 1
	srli gr8, #1, gr8
	slli gr9,#1,gr9
.L484:
	cmpi gr8, #0, icc0
	bne icc0,2,.L486
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__mulsi3, .-__mulsi3
	.p2align 4
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	srli gr10, #3, gr7
	andi gr10, #-8, gr4
	cmp gr8,gr9,icc0
	bc icc0,2,.L488
	add gr9,gr10,gr5
	cmp gr5,gr8,icc0
	bnc icc0,2,.L489
.L488:
	mov gr9, gr5
	mov gr8, gr6
	slli gr7,#3,gr7
	add gr7,gr9,gr7
	bra .L490
.L491:
	ld @(gr5,gr0), gr12
	ldi @(gr5,4), gr13
	st gr12, @(gr6,gr0)
	sti gr13, @(gr6,4)
	addi gr5,#8,gr5
	addi gr6,#8,gr6
.L490:
	cmp gr5,gr7,icc0
	bne icc0,2,.L491
	bra .L492
.L493:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
.L492:
	cmp gr10,gr4,icc0
	bhi icc0,2,.L493
	bra .L487
.L495:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L489:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L495
.L487:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__cmovd, .-__cmovd
	.p2align 4
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	srli gr10, #1, gr6
	cmp gr8,gr9,icc0
	bc icc0,2,.L498
	add gr9,gr10,gr4
	cmp gr4,gr8,icc0
	bnc icc0,2,.L499
.L498:
	slli gr6,#1,gr6
	setlos #0, gr4
	bra .L500
.L501:
	ldsh @(gr9,gr4),gr5
	sth gr5, @(gr8,gr4)
	addi gr4,#2,gr4
.L500:
	cmp gr4,gr6,icc0
	bne icc0,2,.L501
	andicc gr10, #1, gr0, icc0
	beq icc0,2,.L497
	addi gr10,#-1,gr10
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
	bra .L497
.L503:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L499:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L503
.L497:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	srli gr10, #2, gr7
	andi gr10, #-4, gr4
	cmp gr8,gr9,icc0
	bc icc0,2,.L506
	add gr9,gr10,gr5
	cmp gr5,gr8,icc0
	bnc icc0,2,.L507
.L506:
	slli gr7,#2,gr7
	setlos #0, gr5
	bra .L508
.L509:
	ld @(gr9,gr5), gr6
	st gr6, @(gr8,gr5)
	addi gr5,#4,gr5
.L508:
	cmp gr5,gr7,icc0
	bne icc0,2,.L509
	bra .L510
.L511:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
.L510:
	cmp gr10,gr4,icc0
	bhi icc0,2,.L511
	bra .L505
.L513:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L507:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L513
.L505:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__cmovw, .-__cmovw
	.p2align 4
	.globl __modi
	.type	__modi, @function
__modi:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sdiv gr8,gr9,gr4
	smul gr4,gr9,gr4
	sub gr8,gr5,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	udiv gr8,gr9,gr4
	umul gr4,gr9,gr4
	sub gr8,gr5,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__umodi, .-__umodi
	.p2align 4
	.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr5
	sethi #hi(#0),gr5
	setlos #0, gr8
	setlos #15, gr6
	bra .L522
.L524:
	sub gr6,gr8,gr4
	sra gr5, gr4, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L523
	addi gr8,#1,gr8
.L522:
	cmpi gr8,#16,icc0
	bne icc0,2,.L524
.L523:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr5
	sethi #hi(#0),gr5
	setlos #0, gr8
	bra .L526
.L528:
	sra gr5, gr8, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L527
	addi gr8,#1,gr8
.L526:
	cmpi gr8,#16,icc0
	bne icc0,2,.L528
.L527:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	bn icc0,2,.L534
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
.L534:
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
	.size	__fixunssfsi, .-__fixunssfsi
	.p2align 4
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sethi #hi(#0),gr8
	setlos #0, gr6
	setlos #0, gr4
	bra .L536
.L538:
	sra gr8, gr4, gr5
	andicc gr5, #1, gr0, icc0
	ckne icc0, cc4
	setlos #1, gr5
	cadd gr6, gr5, gr6, cc4, 1
	addi gr4,#1,gr4
.L536:
	cmpi gr4,#16,icc0
	bne icc0,2,.L538
	andi gr6, #1, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__parityhi2, .-__parityhi2
	.p2align 4
	.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sethi #hi(#0),gr8
	setlos #0, gr6
	setlos #0, gr4
	bra .L540
.L542:
	sra gr8, gr4, gr5
	andicc gr5, #1, gr0, icc0
	ckne icc0, cc4
	setlos #1, gr5
	cadd gr6, gr5, gr6, cc4, 1
	addi gr4,#1,gr4
.L540:
	cmpi gr4,#16,icc0
	bne icc0,2,.L542
	mov gr6, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	setlos #0, gr4
	bra .L544
.L546:
	andicc gr8, #1, gr0, icc0
	ckne icc0, cc4
	cadd gr4, gr9, gr4, cc4, 1
	srli gr8, #1, gr8
	slli gr9,#1,gr9
.L544:
	cmpi gr8, #0, icc0
	bne icc0,2,.L546
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmpi gr8, #0, icc0
	beq icc0,0,.L552
	setlos #0, gr4
	bra .L549
.L551:
	andicc gr9, #1, gr0, icc0
	ckne icc0, cc4
	cadd gr4, gr8, gr4, cc4, 1
	slli gr8,#1,gr8
	srli gr9, #1, gr9
.L549:
	cmpi gr9, #0, icc0
	bne icc0,2,.L551
	mov gr4, gr8
	bra .L548
.L552:
	setlos #0, gr8
.L548:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.p2align 4
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	setlos #33, gr5
	setlos #1, gr4
	bra .L554
.L558:
	slli gr9,#1,gr9
	slli gr4,#1,gr4
.L554:
	cmp gr9,gr8,icc0
	bc icc0,2,.L555
	setlos #0, gr5
	bra .L556
.L562:
	setlos #0, gr5
	bra .L556
.L555:
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L562
	cmpi gr9, #0, icc0
	bp icc0,2,.L558
	setlos #0, gr5
	bra .L556
.L560:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr4, #1, gr4
	srli gr9, #1, gr9
.L556:
	cmpi gr4, #0, icc0
	bne icc0,2,.L560
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr5, gr8, cc4, 1
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	bn icc0,0,.L566
	mov gr20, gr9
	mov gr19, gr8
	mov gr18, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	bra .L565
.L566:
	setlos #-1, gr8
.L565:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
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
	bn icc0,0,.L570
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
	bra .L569
.L570:
	setlos #-1, gr8
.L569:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
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
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmpi gr9, #0, icc0
	ckn icc0, cc4
	setlos #1, gr4
	csub gr0, gr9, gr9, cc4, 1
	cmov gr4, gr6, cc4, 1
	cmov gr0, gr6, cc4, 0
	setlos #0, gr4
	setlos #0, gr5
	bra .L576
.L579:
	andicc gr9, #1, gr0, icc0
	ckne icc0, cc4
	cadd gr5, gr8, gr5, cc4, 1
	slli gr8,#1,gr8
	srai gr9, #1, gr9
	addi gr4,#1,gr4
.L576:
	cmpi gr9, #0, icc0
	beq icc0,0,.L578
	cmpi gr4,#32,icc0
	bne icc0,2,.L579
.L578:
	cmpi gr6, #0, icc0
	ckne icc0, cc4
	csub gr0, gr5, gr8, cc4, 1
	cmov gr5, gr8, cc4, 0
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	bp icc0,2,.L585
	sub gr0,gr9,gr9
	xori gr18, #1, gr18
	andi gr18,#0xff,gr18
.L585:
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
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr5
	sethi #hi(#0),gr5
	sethi #hi(#0),gr9
	setlos #17, gr7
	setlos #1, gr4
	bra .L594
.L598:
	slli gr9,#1,gr9
	sethi #hi(#0),gr9
	slli gr4,#1,gr4
	sethi #hi(#0),gr4
.L594:
	cmp gr9,gr5,icc0
	bc icc0,2,.L595
	setlos #0, gr8
	bra .L596
.L602:
	setlos #0, gr8
	bra .L596
.L595:
	addicc gr7, #-1, gr7, icc0
	beq icc0,0,.L602
	slli gr9,#16,gr6
	srai gr6, #16, gr6
	cmpi gr6, #0, icc0
	bp icc0,2,.L598
	setlos #0, gr8
	bra .L596
.L600:
	cmp gr5,gr9,icc0
	bc icc0,2,.L599
	sub gr5,gr9,gr5
	sethi #hi(#0),gr5
	or gr8, gr4, gr8
.L599:
	srli gr4, #1, gr4
	srli gr9, #1, gr9
.L596:
	cmpi gr4, #0, icc0
	bne icc0,2,.L600
	cmpi gr10, #0, icc0
	ckne icc0, cc4
	cmov gr5, gr8, cc4, 1
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	setlos #33, gr5
	setlos #1, gr4
	bra .L605
.L609:
	slli gr9,#1,gr9
	slli gr4,#1,gr4
.L605:
	cmp gr9,gr8,icc0
	bc icc0,2,.L606
	setlos #0, gr5
	bra .L607
.L613:
	setlos #0, gr5
	bra .L607
.L606:
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L613
	cmpi gr9, #0, icc0
	bp icc0,2,.L609
	setlos #0, gr5
	bra .L607
.L611:
	cmp gr8,gr9,icc0
	cknc icc0, cc4
	csub gr8, gr9, gr8, cc4, 1
	cor gr5, gr4, gr5, cc4, 1
	srli gr4, #1, gr4
	srli gr9, #1, gr9
.L607:
	cmpi gr4, #0, icc0
	bne icc0,2,.L611
	cmpi gr10, #0, icc0
	ckeq icc0, cc4
	cmov gr5, gr8, cc4, 1
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.p2align 4
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	beq icc0,2,.L616
	setlos #0, gr5
	addi gr10,#-32,gr10
	sll gr9,gr10,gr4
	bra .L617
.L616:
	cmpi gr10, #0, icc0
	beq icc0,0,.L618
	sll gr9,gr10,gr5
	sll gr8,gr10,gr7
	setlos #32, gr6
	sub gr6,gr10,gr6
	srl gr9, gr6, gr6
	or gr6, gr7, gr4
.L617:
	mov gr4, gr8
	mov gr5, gr9
.L618:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__ashldi3, .-__ashldi3
	.p2align 4
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	beq icc0,2,.L621
	srai gr8, #31, gr4
	addi gr10,#-32,gr10
	sra gr8, gr10, gr5
	bra .L622
.L621:
	cmpi gr10, #0, icc0
	beq icc0,0,.L623
	sra gr8, gr10, gr4
	setlos #32, gr6
	sub gr6,gr10,gr6
	sll gr8,gr6,gr6
	srl gr9, gr10, gr10
	or gr6, gr10, gr5
.L622:
	mov gr4, gr8
	mov gr5, gr9
.L623:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__ashrdi3, .-__ashrdi3
	.p2align 4
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	__bswapdi2, .-__bswapdi2
	.p2align 4
	.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__bswapsi2, .-__bswapsi2
	.p2align 4
	.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__clzsi2, .-__clzsi2
	.p2align 4
	.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmp gr8,gr10,icc0
	blt icc0,0,.L638
	bgt icc0,0,.L639
	cmp gr9,gr11,icc0
	bc icc0,0,.L640
	bhi icc0,0,.L641
	setlos #1, gr8
	bra .L637
.L638:
	setlos #0, gr8
	bra .L637
.L639:
	setlos #2, gr8
	bra .L637
.L640:
	setlos #0, gr8
	bra .L637
.L641:
	setlos #2, gr8
.L637:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__ctzsi2, .-__ctzsi2
	.p2align 4
	.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	andi gr10, #32, gr4
	cmpi gr4, #0, icc0
	beq icc0,2,.L653
	setlos #0, gr4
	addi gr10,#-32,gr10
	srl gr8, gr10, gr5
	bra .L654
.L653:
	cmpi gr10, #0, icc0
	beq icc0,0,.L655
	srl gr8, gr10, gr4
	setlos #32, gr6
	sub gr6,gr10,gr6
	sll gr8,gr6,gr6
	srl gr9, gr10, gr10
	or gr6, gr10, gr5
.L654:
	mov gr4, gr8
	mov gr5, gr9
.L655:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__lshrdi3, .-__lshrdi3
	.p2align 4
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__negdi2, .-__negdi2
	.p2align 4
	.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__paritydi2, .-__paritydi2
	.p2align 4
	.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__paritysi2, .-__paritysi2
	.p2align 4
	.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__popcountdi2, .-__popcountdi2
	.p2align 4
	.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
.L667:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L665
	mov gr20, gr10
	mov gr21, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
.L665:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L666
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr19, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
	bra .L667
.L666:
	cmpi gr24, #0, icc0
	beq icc0,2,.L669
	mov gr22, gr10
	mov gr23, gr11
	sethi #hi(#1072693248), gr8
	setlo #lo(#1072693248), gr8
	setlos #0, gr9
	mov gr19, gr15
	call __divd
	bra .L668
.L669:
	mov gr22, gr8
	mov gr23, gr9
.L668:
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
.L673:
	andicc gr18, #1, gr0, icc0
	beq icc0,2,.L671
	mov gr19, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
.L671:
	srli gr18, #31, gr4
	add gr4,gr18,gr18
	sraicc gr18, #1, gr18, icc0
	beq icc0,0,.L672
	mov gr19, gr9
	mov gr19, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr19
	bra .L673
.L672:
	cmpi gr22, #0, icc0
	beq icc0,2,.L675
	mov gr20, gr9
	sethi #hi(#1065353216), gr8
	setlo #lo(#1065353216), gr8
	mov gr21, gr15
	call __divf
	bra .L674
.L675:
	mov gr20, gr8
.L674:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	__powisf2, .-__powisf2
	.p2align 4
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	addi sp,#-16,sp
	sti fp, @(sp,0)
	mov sp, fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	cmp gr8,gr10,icc0
	bc icc0,0,.L678
	bhi icc0,0,.L679
	cmp gr9,gr11,icc0
	bc icc0,0,.L680
	bhi icc0,0,.L681
	setlos #1, gr8
	bra .L677
.L678:
	setlos #0, gr8
	bra .L677
.L679:
	setlos #2, gr8
	bra .L677
.L680:
	setlos #0, gr8
	bra .L677
.L681:
	setlos #2, gr8
.L677:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
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
