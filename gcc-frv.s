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
	bls icc0,0,.L2
	add gr9,gr10,gr9
	add gr8,gr10,gr6
	mov gr10, gr4
	bra .L3
.L4:
	sub gr9,gr10,gr5
	addi gr5,#-1,gr5
	ldsb @(gr5,gr4),gr7
	sub gr6,gr10,gr5
	addi gr5,#-1,gr5
	stb gr7, @(gr5,gr4)
	addi gr4,#-1,gr4
.L3:
	cmpi gr4, #0, icc0
	bne icc0,2,.L4
	bra .L5
.L2:
	cmp gr8,gr9,icc0
	bne icc0,0,.L8
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
	andi gr4,#0xff,gr4
	cmp gr10,gr4,icc0
	bne icc0,2,.L12
.L11:
	cmpi gr11, #0, icc0
	beq icc0,0,.L14
	addi gr8,#1,gr8
	bra .L13
.L14:
	setlos #0, gr8
.L13:
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
	bne icc0,0,.L19
	setlos #0, gr8
.L19:
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
	beq icc0,0,.L26
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
	ldub @(gr8,gr10),gr5
	addi gr10,#-1,gr4
	cmp gr9,gr5,icc0
	bne icc0,0,.L34
	add gr8,gr10,gr8
	bra .L32
.L34:
	mov gr4, gr10
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
	slli gr4,#24,gr4
	srai gr4, #24, gr4
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
	bra .L50
.L52:
	addi gr8,#1,gr8
	addi gr9,#1,gr9
.L50:
	ldsb @(gr8,gr0),gr5
	ldsb @(gr9,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L51
	cmpi gr5, #0, icc0
	bne icc0,2,.L52
.L51:
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
	mov gr8, gr4
	bra .L54
.L55:
	addi gr4,#1,gr4
.L54:
	ldsb @(gr4,gr0),gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L55
	sub gr4,gr8,gr8
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
	beq icc0,0,.L61
	addi gr10,#-1,gr10
	add gr8,gr10,gr10
	bra .L58
.L60:
	addi gr8,#1,gr8
	addi gr9,#1,gr9
.L58:
	ldub @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L59
	ldub @(gr9,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L59
	cmp gr8,gr10,icc0
	beq icc0,0,.L59
	ldub @(gr8,gr0),gr5
	cmp gr5,gr4,icc0
	beq icc0,2,.L60
.L59:
	ldub @(gr8,gr0),gr8
	ldub @(gr9,gr0),gr4
	sub gr8,gr4,gr8
	bra .L57
.L61:
	setlos #0, gr8
.L57:
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
	bra .L63
.L64:
	ldsbi @(gr4,1),gr5
	stb gr5, @(gr9,gr0)
	ldsb @(gr4,gr0),gr5
	stbi gr5, @(gr9,1)
	addi gr9,#2,gr9
	addi gr4,#2,gr4
.L63:
	add gr8,gr10,gr5
	sub gr5,gr4,gr5
	cmpi gr5,#1,icc0
	bgt icc0,2,.L64
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
	beq icc0,0,.L69
	cmpi gr8,#9,icc0
	bne icc0,0,.L70
	setlos #1, gr8
	bra .L68
.L69:
	setlos #1, gr8
	bra .L68
.L70:
	setlos #0, gr8
.L68:
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
	bls icc0,0,.L73
	cmpi gr8,#127,icc0
	bne icc0,0,.L74
	setlos #1, gr8
	bra .L72
.L73:
	setlos #1, gr8
	bra .L72
.L74:
	setlos #0, gr8
.L72:
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
	beq icc0,0,.L81
	addi gr8,#-9,gr8
	cmpi gr8,#4,icc0
	bhi icc0,0,.L82
	setlos #1, gr8
	bra .L80
.L81:
	setlos #1, gr8
	bra .L80
.L82:
	setlos #0, gr8
.L80:
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
	bls icc0,0,.L86
	addi gr8,#-127,gr4
	cmpi gr4,#32,icc0
	bls icc0,0,.L87
	setlos #-8232, gr4
	add gr8,gr4,gr4
	cmpi gr4,#1,icc0
	bls icc0,0,.L88
	sethi #hi(#-65529), gr4
	setlo #lo(#-65529), gr4
	add gr8,gr4,gr8
	cmpi gr8,#2,icc0
	bhi icc0,0,.L89
	setlos #1, gr8
	bra .L85
.L86:
	setlos #1, gr8
	bra .L85
.L87:
	setlos #1, gr8
	bra .L85
.L88:
	setlos #1, gr8
	bra .L85
.L89:
	setlos #0, gr8
.L85:
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
	bhi icc0,0,.L92
	addi gr8,#1,gr8
	andi gr8, #127, gr8
	cmpi gr8,#32,icc0
	ckhi icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L93
.L92:
	setlos #8231, gr4
	cmp gr8,gr4,icc0
	bls icc0,0,.L94
	setlos #-8234, gr4
	add gr8,gr4,gr4
	sethi #hi(#47061), gr5
	setlo #lo(#47061), gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L95
	sethi #hi(#-57344), gr4
	setlo #lo(#-57344), gr4
	add gr8,gr4,gr4
	setlos #8184, gr5
	cmp gr4,gr5,icc0
	bls icc0,0,.L96
	sethi #hi(#-65532), gr4
	setlo #lo(#-65532), gr4
	add gr8,gr4,gr4
	sethi #hi(#1048579), gr5
	setlo #lo(#1048579), gr5
	cmp gr4,gr5,icc0
	bhi icc0,0,.L97
	sethi #hi(#65534), gr4
	setlo #lo(#65534), gr4
	and gr8, gr4, gr8
	cmp gr8,gr4,icc0
	beq icc0,0,.L98
	setlos #1, gr8
	bra .L93
.L94:
	setlos #1, gr8
	bra .L93
.L95:
	setlos #1, gr8
	bra .L93
.L96:
	setlos #1, gr8
	bra .L93
.L97:
	setlos #0, gr8
	bra .L93
.L98:
	setlos #0, gr8
.L93:
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
	bls icc0,0,.L101
	ori gr8, #32, gr8
	addi gr8,#-97,gr8
	cmpi gr8,#5,icc0
	bhi icc0,0,.L102
	setlos #1, gr8
	bra .L100
.L101:
	setlos #1, gr8
	bra .L100
.L102:
	setlos #0, gr8
.L100:
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
	bne icc0,0,.L107
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L108
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,0,.L111
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __subd
	bra .L105
.L107:
	mov gr20, gr8
	mov gr21, gr9
	bra .L105
.L108:
	mov gr18, gr8
	mov gr19, gr9
	bra .L105
.L111:
	setlos #0, gr8
	setlos #0, gr9
.L105:
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
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
	mov gr15, gr20
	mov gr8, gr19
	mov gr9, gr18
	mov gr8, gr9
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L115
	mov gr18, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L116
	mov gr18, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ble icc0,0,.L119
	mov gr18, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __subf
	bra .L113
.L115:
	mov gr19, gr8
	bra .L113
.L116:
	mov gr18, gr8
	bra .L113
.L119:
	setlos #0, gr8
.L113:
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
	bne icc0,0,.L124
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L125
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and gr18, gr6, gr4
	and gr20, gr6, gr5
	cmp gr4,gr5,icc0
	beq icc0,0,.L122
	cmpi gr18, #0, icc0
	bp icc0,0,.L126
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
	cmpi gr8, #0, icc0
	bp icc0,0,.L129
	mov gr20, gr8
	mov gr21, gr9
	bra .L121
.L124:
	mov gr20, gr8
	mov gr21, gr9
	bra .L121
.L125:
	mov gr18, gr8
	mov gr19, gr9
	bra .L121
.L126:
	mov gr18, gr8
	mov gr19, gr9
	bra .L121
.L129:
	mov gr18, gr8
	mov gr19, gr9
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
	bne icc0,0,.L134
	mov gr19, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L131
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and gr18, gr6, gr4
	and gr19, gr6, gr5
	cmp gr4,gr5,icc0
	beq icc0,0,.L132
	cmpi gr18, #0, icc0
	bp icc0,0,.L131
	mov gr19, gr18
	bra .L131
.L132:
	mov gr19, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __ltsf2
	cmpi gr8, #0, icc0
	bp icc0,0,.L131
	mov gr19, gr18
	bra .L131
.L134:
	mov gr19, gr18
.L131:
	mov gr18, gr8
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
	bne icc0,0,.L144
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L145
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and gr18, gr6, gr4
	and gr20, gr6, gr5
	cmp gr4,gr5,icc0
	beq icc0,0,.L142
	cmpi gr18, #0, icc0
	bp icc0,0,.L146
	mov gr20, gr8
	mov gr21, gr9
	bra .L141
.L142:
	mov gr20, gr10
	mov gr21, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,0,.L149
	mov gr20, gr8
	mov gr21, gr9
	bra .L141
.L144:
	mov gr20, gr8
	mov gr21, gr9
	bra .L141
.L145:
	mov gr18, gr8
	mov gr19, gr9
	bra .L141
.L146:
	mov gr18, gr8
	mov gr19, gr9
	bra .L141
.L149:
	mov gr18, gr8
	mov gr19, gr9
.L141:
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
	bne icc0,0,.L154
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L155
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and gr20, gr6, gr4
	and gr18, gr6, gr5
	cmp gr4,gr5,icc0
	beq icc0,0,.L152
	cmpi gr20, #0, icc0
	bp icc0,0,.L156
	mov gr20, gr8
	mov gr21, gr9
	bra .L151
.L152:
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,0,.L159
	mov gr20, gr8
	mov gr21, gr9
	bra .L151
.L154:
	mov gr18, gr8
	mov gr19, gr9
	bra .L151
.L155:
	mov gr20, gr8
	mov gr21, gr9
	bra .L151
.L156:
	mov gr18, gr8
	mov gr19, gr9
	bra .L151
.L159:
	mov gr18, gr8
	mov gr19, gr9
.L151:
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
	bne icc0,0,.L161
	mov gr18, gr9
	mov gr18, gr8
	mov gr20, gr15
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L165
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and gr19, gr6, gr4
	and gr18, gr6, gr5
	cmp gr4,gr5,icc0
	beq icc0,0,.L162
	cmpi gr19, #0, icc0
	bp icc0,0,.L161
	mov gr19, gr18
	bra .L161
.L162:
	mov gr18, gr9
	mov gr19, gr8
	mov gr20, gr15
	call __ltsf2
	cmpi gr8, #0, icc0
	bp icc0,0,.L161
	mov gr19, gr18
	bra .L161
.L165:
	mov gr19, gr18
.L161:
	mov gr18, gr8
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
	bne icc0,0,.L174
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr22, gr15
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L175
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	and gr20, gr6, gr4
	and gr18, gr6, gr5
	cmp gr4,gr5,icc0
	beq icc0,0,.L172
	cmpi gr20, #0, icc0
	bp icc0,0,.L176
	mov gr20, gr8
	mov gr21, gr9
	bra .L171
.L172:
	mov gr18, gr10
	mov gr19, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr22, gr15
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,0,.L179
	mov gr20, gr8
	mov gr21, gr9
	bra .L171
.L174:
	mov gr18, gr8
	mov gr19, gr9
	bra .L171
.L175:
	mov gr20, gr8
	mov gr21, gr9
	bra .L171
.L176:
	mov gr18, gr8
	mov gr19, gr9
	bra .L171
.L179:
	mov gr18, gr8
	mov gr19, gr9
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
	sethi #gotoffhi(s.0), gr4
	setlo #gotofflo(s.0), gr4
	add gr4,gr15,gr4
	bra .L181
.L182:
	andi gr8, #63, gr7
	ldi @(gr15,#got12(_gp)), gr6
	sethi #gprelhi(digits), gr5
	setlo #gprello(digits), gr5
	add gr5,gr6,gr5
	ldsb @(gr5,gr7),gr5
	stb gr5, @(gr4,gr0)
	addi gr4,#1,gr4
	srli gr8, #6, gr8
.L181:
	cmpi gr8, #0, icc0
	bne icc0,2,.L182
	stb gr0, @(gr4,gr0)
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
	bne icc0,0,.L186
	sti gr0, @(gr8,4)
	st gr0, @(gr8,gr0)
	bra .L185
.L186:
	ld @(gr9,gr0), gr4
	st gr4, @(gr8,gr0)
	sti gr9, @(gr8,4)
	st gr8, @(gr9,gr0)
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L185
	sti gr8, @(gr4,4)
.L185:
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
	beq icc0,0,.L189
	ldi @(gr8,4), gr5
	sti gr5, @(gr4,4)
.L189:
	ldi @(gr8,4), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L188
	ld @(gr8,gr0), gr5
	st gr5, @(gr4,gr0)
.L188:
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
	mov gr8, gr22
	mov gr9, gr18
	mov gr10, gr23
	mov gr11, gr19
	mov gr12, gr26
	ld @(gr10,gr0), gr21
	mov gr9, gr25
	setlos #0, gr20
	bra .L192
.L195:
	mov gr25, gr9
	mov gr22, gr8
	ldd @(gr26,gr0), gr14
	calll @(gr14,gr0)
	add gr25,gr19,gr25
	cmpi gr8, #0, icc0
	bne icc0,0,.L193
	umul gr20,gr19,gr20
	add gr18,gr21,gr8
	bra .L194
.L193:
	addi gr20,#1,gr20
.L192:
	cmp gr20,gr21,icc0
	bne icc0,2,.L195
	addi gr21,#1,gr4
	st gr4, @(gr23,gr0)
	umul gr19,gr21,gr4
	add gr18,gr5,gr8
	mov gr19, gr10
	mov gr22, gr9
	mov gr24, gr15
	call memcpy
.L194:
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
	mov gr9, gr18
	mov gr11, gr20
	mov gr12, gr22
	ld @(gr10,gr0), gr24
	mov gr9, gr21
	setlos #0, gr19
	bra .L197
.L200:
	mov gr21, gr9
	mov gr23, gr8
	ldd @(gr22,gr0), gr14
	calll @(gr14,gr0)
	add gr21,gr20,gr21
	cmpi gr8, #0, icc0
	bne icc0,0,.L198
	umul gr19,gr20,gr20
	add gr18,gr21,gr8
	bra .L199
.L198:
	addi gr19,#1,gr19
.L197:
	cmp gr19,gr24,icc0
	bne icc0,2,.L200
	setlos #0, gr8
.L199:
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
	bra .L203
.L204:
	addi gr18,#1,gr18
.L203:
	ldsb @(gr18,gr0),gr8
	mov gr19, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L204
	ldsb @(gr18,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L210
	cmpi gr4,#45,icc0
	bne icc0,0,.L211
	setlos #1, gr4
	bra .L205
.L210:
	setlos #0, gr4
.L205:
	addi gr18,#1,gr18
	bra .L206
.L211:
	setlos #0, gr4
.L206:
	setlos #0, gr8
	bra .L207
.L208:
	smuli gr8,#10,gr8
	addi gr18,#1,gr18
	ldsbi @(gr18,-1),gr5
	addi gr5,#-48,gr5
	sub gr9,gr5,gr8
.L207:
	ldsb @(gr18,gr0),gr5
	addi gr5,#-48,gr5
	cmpi gr5,#9,icc0
	bls icc0,2,.L208
	cmpi gr4, #0, icc0
	bne icc0,0,.L209
	sub gr0,gr8,gr8
.L209:
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
	bra .L214
.L215:
	addi gr18,#1,gr18
.L214:
	ldsb @(gr18,gr0),gr8
	mov gr19, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L215
	ldsb @(gr18,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L221
	cmpi gr4,#45,icc0
	bne icc0,0,.L222
	setlos #1, gr4
	bra .L216
.L221:
	setlos #0, gr4
.L216:
	addi gr18,#1,gr18
	bra .L217
.L222:
	setlos #0, gr4
.L217:
	setlos #0, gr8
	bra .L218
.L219:
	smuli gr8,#10,gr8
	addi gr18,#1,gr18
	ldsbi @(gr18,-1),gr5
	addi gr5,#-48,gr5
	sub gr9,gr5,gr8
.L218:
	ldsb @(gr18,gr0),gr5
	addi gr5,#-48,gr5
	cmpi gr5,#9,icc0
	bls icc0,2,.L219
	cmpi gr4, #0, icc0
	bne icc0,0,.L220
	sub gr0,gr8,gr8
.L220:
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
	bra .L225
.L226:
	addi gr24,#1,gr24
.L225:
	ldsb @(gr24,gr0),gr8
	mov gr25, gr15
	call isspace
	cmpi gr8, #0, icc0
	bne icc0,2,.L226
	ldsb @(gr24,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L232
	cmpi gr4,#45,icc0
	bne icc0,0,.L233
	setlos #1, gr4
	bra .L227
.L232:
	setlos #0, gr4
.L227:
	addi gr24,#1,gr24
	bra .L228
.L233:
	setlos #0, gr4
.L228:
	setlos #0, gr8
	setlos #0, gr9
	bra .L229
.L230:
	srli gr9, #30, gr5
	slli gr8,#2,gr18
	or gr5, gr18, gr18
	slli gr9,#2,gr19
	addcc gr9,gr19,gr9,icc0
	addx gr8,gr18,gr8,icc0
	srli gr9, #31, gr5
	slli gr8,#1,gr20
	or gr5, gr20, gr20
	slli gr9,#1,gr21
	addi gr24,#1,gr24
	ldsbi @(gr24,-1),gr5
	addi gr5,#-48,gr5
	srai gr5, #31, gr22
	subcc gr21,gr5,gr9,icc0
	subx gr20,gr22,gr8,icc0
.L229:
	ldsb @(gr24,gr0),gr5
	addi gr5,#-48,gr5
	cmpi gr5,#9,icc0
	bls icc0,2,.L230
	cmpi gr4, #0, icc0
	bne icc0,0,.L231
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
.L231:
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
	bra .L236
.L240:
	srli gr18, #1, gr4
	umul gr4,gr20,gr4
	add gr21,gr5,gr19
	mov gr19, gr9
	mov gr23, gr8
	ldd @(gr22,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	bp icc0,0,.L237
	srli gr18, #1, gr18
	bra .L236
.L237:
	cmpi gr8,#0,icc0
	ble icc0,0,.L241
	add gr19,gr20,gr21
	srli gr18, #1, gr4
	addi gr18,#-1,gr18
	sub gr18,gr4,gr18
.L236:
	cmpi gr18, #0, icc0
	bne icc0,2,.L240
	setlos #0, gr8
	bra .L239
.L241:
	mov gr19, gr8
.L239:
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
	mov gr10, gr19
	mov gr9, gr20
	bra .L243
.L246:
	srai gr19, #1, gr4
	umul gr4,gr21,gr4
	add gr20,gr5,gr18
	mov gr22, gr10
	mov gr18, gr9
	mov gr24, gr8
	ldd @(gr23,gr0), gr14
	calll @(gr14,gr0)
	cmpi gr8, #0, icc0
	beq icc0,0,.L247
	cmpi gr8,#0,icc0
	ble icc0,0,.L245
	add gr18,gr21,gr20
	addi gr19,#-1,gr19
.L245:
	srai gr19, #1, gr19
.L243:
	cmpi gr19, #0, icc0
	bne icc0,2,.L246
	setlos #0, gr8
	bra .L244
.L247:
	mov gr18, gr8
.L244:
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
	bp icc0,0,.L250
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
.L250:
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
	bp icc0,0,.L256
	subcc gr0,gr9,gr9,icc0
	subx gr0,gr8,gr8,icc0
.L256:
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
	bra .L260
.L262:
	addi gr8,#4,gr8
.L260:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L261
	cmp gr9,gr4,icc0
	bne icc0,2,.L262
.L261:
	ld @(gr8,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L263
	setlos #0, gr8
.L263:
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
	bra .L266
.L268:
	addi gr8,#4,gr8
	addi gr9,#4,gr9
.L266:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L267
	cmpi gr5, #0, icc0
	beq icc0,0,.L267
	ld @(gr9,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L268
.L267:
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,0,.L270
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L269
.L270:
	setlos #-1, gr8
.L269:
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
.L272:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
	addi gr8,#-4,gr5
	ld @(gr5,gr4), gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L272
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
	mov gr8, gr4
	bra .L274
.L275:
	addi gr4,#4,gr4
.L274:
	ld @(gr4,gr0), gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L275
	sub gr4,gr8,gr8
	srai gr8, #2, gr8
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
	bra .L277
.L279:
	addi gr10,#-1,gr10
	addi gr8,#4,gr8
	addi gr9,#4,gr9
.L277:
	cmpi gr10, #0, icc0
	beq icc0,0,.L278
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L278
	cmpi gr5, #0, icc0
	beq icc0,0,.L278
	ld @(gr9,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L279
.L278:
	cmpi gr10, #0, icc0
	beq icc0,0,.L281
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,0,.L282
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L280
.L281:
	setlos #0, gr8
	bra .L280
.L282:
	setlos #-1, gr8
.L280:
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
	bra .L284
.L286:
	addi gr10,#-1,gr10
	addi gr8,#4,gr8
.L284:
	cmpi gr10, #0, icc0
	beq icc0,0,.L285
	ld @(gr8,gr0), gr4
	cmp gr9,gr4,icc0
	bne icc0,2,.L286
.L285:
	cmpi gr10, #0, icc0
	bne icc0,0,.L287
	setlos #0, gr8
.L287:
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
	bra .L290
.L292:
	addi gr10,#-1,gr10
	addi gr8,#4,gr8
	addi gr9,#4,gr9
.L290:
	cmpi gr10, #0, icc0
	beq icc0,0,.L291
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L292
.L291:
	cmpi gr10, #0, icc0
	beq icc0,0,.L294
	ld @(gr8,gr0), gr5
	ld @(gr9,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,0,.L295
	ckgt icc0, cc4
	setlos #1, gr8
	cmov gr0, gr8, cc4, 0
	andi gr8,#0xff,gr8
	bra .L293
.L294:
	setlos #0, gr8
	bra .L293
.L295:
	setlos #-1, gr8
.L293:
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
	bra .L297
.L298:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
.L297:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L298
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
	beq icc0,0,.L300
	sub gr8,gr9,gr4
	slli gr10,#2,gr5
	cmp gr4,gr5,icc0
	bnc icc0,0,.L305
	addi gr10,#-1,gr10
	slli gr10,#2,gr10
	bra .L302
.L303:
	ld @(gr9,gr10), gr4
	st gr4, @(gr8,gr10)
	addi gr10,#-4,gr10
.L302:
	cmpi gr10,#-4,icc0
	bne icc0,2,.L303
	bra .L300
.L304:
	ld @(gr9,gr4), gr5
	st gr5, @(gr8,gr4)
	addi gr4,#4,gr4
	bra .L301
.L305:
	setlos #0, gr4
.L301:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L304
.L300:
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
	bra .L307
.L308:
	addi gr4,#4,gr4
	sti gr9, @(gr4,-4)
.L307:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L308
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
	bnc icc0,0,.L310
	add gr8,gr10,gr8
	add gr9,gr10,gr9
	mov gr10, gr4
	bra .L311
.L312:
	sub gr8,gr10,gr5
	addi gr5,#-1,gr5
	ldsb @(gr5,gr4),gr6
	sub gr9,gr10,gr5
	addi gr5,#-1,gr5
	stb gr6, @(gr5,gr4)
	addi gr4,#-1,gr4
.L311:
	cmpi gr4, #0, icc0
	bne icc0,2,.L312
	bra .L309
.L310:
	cmp gr8,gr9,icc0
	bne icc0,0,.L316
	bra .L309
.L315:
	ldsb @(gr8,gr4),gr5
	stb gr5, @(gr9,gr4)
	addi gr4,#1,gr4
	bra .L314
.L316:
	setlos #0, gr4
.L314:
	cmp gr4,gr10,icc0
	bne icc0,2,.L315
.L309:
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
	srli gr8, #8, gr4
	andi gr4,#0xff,gr4
	andi gr8,#0xff,gr8
	slli gr8,#8,gr8
	or gr4, gr8, gr8
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
	bra .L331
.L334:
	srl gr8, gr4, gr5
	andicc gr5, #1, gr0, icc0
	beq icc0,0,.L332
	addi gr4,#1,gr8
	bra .L333
.L332:
	addi gr4,#1,gr4
.L331:
	cmpi gr4,#32,icc0
	bne icc0,2,.L334
	setlos #0, gr8
.L333:
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
	beq icc0,0,.L339
	setlos #1, gr4
	bra .L337
.L338:
	srai gr8, #1, gr8
	addi gr4,#1,gr4
.L337:
	andicc gr8, #1, gr0, icc0
	beq icc0,2,.L338
	mov gr4, gr8
	bra .L336
.L339:
	setlos #0, gr8
.L336:
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
	bn icc0,0,.L343
	sethi #hi(#2139095039), gr9
	setlo #lo(#2139095039), gr9
	mov gr19, gr8
	mov gr18, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	ble icc0,0,.L346
	setlos #1, gr8
	bra .L341
.L343:
	setlos #1, gr8
	bra .L341
.L346:
	setlos #0, gr8
.L341:
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
	bn icc0,0,.L350
	sethi #hi(#2146435071), gr10
	setlo #lo(#2146435071), gr10
	sethi #hi(#4294967295), gr11
	setlo #lo(#4294967295), gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr18, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,0,.L353
	setlos #1, gr8
	bra .L348
.L350:
	setlos #1, gr8
	bra .L348
.L353:
	setlos #0, gr8
.L348:
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
	bn icc0,0,.L357
	sethi #hi(#2146435071), gr10
	setlo #lo(#2146435071), gr10
	sethi #hi(#4294967295), gr11
	setlo #lo(#4294967295), gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr18, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	ble icc0,0,.L360
	setlos #1, gr8
	bra .L355
.L357:
	setlos #1, gr8
	bra .L355
.L360:
	setlos #0, gr8
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
	mov gr8, gr18
	mov gr9, gr19
	mov gr8, gr9
	call __unordsf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L363
	mov gr18, gr9
	mov gr18, gr8
	mov gr21, gr15
	call __addf
	mov gr8, gr9
	mov gr18, gr8
	mov gr21, gr15
	call __nesf2
	cmpi gr8, #0, icc0
	beq icc0,0,.L363
	cmpi gr19, #0, icc0
	bp icc0,0,.L368
	sethi #hi(#1056964608), gr20
	setlo #lo(#1056964608), gr20
	bra .L367
.L368:
	sethi #hi(#1073741824), gr20
	setlo #lo(#1073741824), gr20
.L367:
	andicc gr19, #1, gr0, icc0
	beq icc0,0,.L366
	mov gr20, gr9
	mov gr18, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr18
.L366:
	srli gr19, #31, gr4
	add gr4,gr19,gr19
	sraicc gr19, #1, gr19, icc0
	beq icc0,0,.L363
	mov gr20, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
	bra .L367
.L363:
	mov gr18, gr8
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
	mov gr15, gr23
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr22
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L371
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr23, gr15
	call __addd
	mov gr8, gr10
	mov gr9, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr23, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	beq icc0,0,.L371
	cmpi gr22, #0, icc0
	bp icc0,0,.L376
	sethi #hi(#1071644672), gr20
	setlo #lo(#1071644672), gr20
	setlos #0, gr21
	bra .L375
.L376:
	sethi #hi(#1073741824), gr20
	setlo #lo(#1073741824), gr20
	setlos #0, gr21
.L375:
	andicc gr22, #1, gr0, icc0
	beq icc0,0,.L374
	mov gr20, gr10
	mov gr21, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr23, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
.L374:
	srli gr22, #31, gr4
	add gr4,gr22,gr4
	sraicc gr4, #1, gr22, icc0
	beq icc0,0,.L371
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr23, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
	bra .L375
.L371:
	mov gr18, gr8
	mov gr19, gr9
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
	mov gr15, gr23
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr22
	mov gr8, gr10
	mov gr9, gr11
	call __unorddf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L379
	mov gr18, gr10
	mov gr19, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr23, gr15
	call __addd
	mov gr8, gr10
	mov gr9, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr23, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	beq icc0,0,.L379
	cmpi gr22, #0, icc0
	bp icc0,0,.L384
	sethi #hi(#1071644672), gr20
	setlo #lo(#1071644672), gr20
	setlos #0, gr21
	bra .L383
.L384:
	sethi #hi(#1073741824), gr20
	setlo #lo(#1073741824), gr20
	setlos #0, gr21
.L383:
	andicc gr22, #1, gr0, icc0
	beq icc0,0,.L382
	mov gr20, gr10
	mov gr21, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr23, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
.L382:
	srli gr22, #31, gr4
	add gr4,gr22,gr4
	sraicc gr4, #1, gr22, icc0
	beq icc0,0,.L379
	mov gr20, gr10
	mov gr21, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr23, gr15
	call __muld
	mov gr8, gr20
	mov gr9, gr21
	bra .L383
.L379:
	mov gr18, gr8
	mov gr19, gr9
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
	bra .L387
.L388:
	ldsb @(gr9,gr4),gr6
	ldsb @(gr8,gr4),gr5
	xor gr5, gr6, gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
.L387:
	cmp gr4,gr10,icc0
	bne icc0,2,.L388
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
	mov gr8, gr19
	mov gr9, gr20
	mov gr10, gr18
	call strlen
	add gr19,gr8,gr8
	bra .L390
.L392:
	addi gr20,#1,gr20
	addi gr8,#1,gr8
	addi gr18,#-1,gr18
.L390:
	cmpi gr18, #0, icc0
	beq icc0,0,.L391
	ldsb @(gr20,gr0),gr4
	stb gr4, @(gr8,gr0)
	slli gr4,#24,gr4
	srai gr4, #24, gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L392
.L391:
	cmpi gr18, #0, icc0
	bne icc0,0,.L393
	stb gr0, @(gr8,gr0)
.L393:
	mov gr19, gr8
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
	mov gr8, gr4
	setlos #0, gr8
	bra .L395
.L397:
	addi gr8,#1,gr8
.L395:
	cmp gr8,gr9,icc0
	beq icc0,0,.L396
	ldsb @(gr4,gr8),gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L397
.L396:
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
	bra .L399
.L401:
	addi gr4,#1,gr4
	ldsbi @(gr4,-1),gr6
	ldsb @(gr8,gr0),gr5
	cmp gr6,gr5,icc0
	beq icc0,0,.L400
	bra .L402
.L404:
	mov gr9, gr4
.L402:
	ldsb @(gr4,gr0),gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L401
	addi gr8,#1,gr8
.L399:
	ldsb @(gr8,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L404
	setlos #0, gr8
.L400:
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
.L407:
	ldsb @(gr8,gr0),gr4
	cmp gr9,gr4,icc0
	bne icc0,0,.L406
	mov gr8, gr5
.L406:
	addi gr8,#1,gr8
	ldsbi @(gr8,-1),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L407
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
	mov gr15, gr20
	mov gr8, gr18
	mov gr9, gr19
	mov gr9, gr8
	call strlen
	mov gr8, gr21
	cmpi gr8, #0, icc0
	beq icc0,0,.L413
	ldsb @(gr19,gr0),gr22
	bra .L411
.L412:
	mov gr21, gr10
	mov gr19, gr9
	mov gr18, gr8
	mov gr20, gr15
	call strncmp
	cmpi gr8, #0, icc0
	beq icc0,0,.L414
	addi gr18,#1,gr18
.L411:
	mov gr22, gr9
	mov gr18, gr8
	mov gr20, gr15
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
	bp icc0,0,.L416
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
	bp icc0,0,.L427
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
	mov gr15, gr22
	mov gr8, gr18
	mov gr10, gr20
	mov gr11, gr19
	sub gr9,gr11,gr21
	add gr8,gr21,gr21
	cmpi gr11, #0, icc0
	beq icc0,0,.L433
	cmp gr9,gr11,icc0
	ckc icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L434
	bra .L430
.L432:
	ldsb @(gr18,gr0),gr5
	ldsb @(gr20,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L431
	addi gr18,#1,gr8
	addi gr20,#1,gr9
	addi gr19,#-1,gr10
	mov gr22, gr15
	call memcmp
	cmpi gr8, #0, icc0
	beq icc0,0,.L435
.L431:
	addi gr18,#1,gr18
.L430:
	cmp gr18,gr21,icc0
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
	mov gr15, gr20
	mov gr8, gr18
	mov gr9, gr19
	mov gr10, gr23
	setlos #0, gr10
	setlos #0, gr11
	call __ltdf2
	cmpi gr8, #0, icc0
	bp icc0,0,.L454
	sethi #hi(#-2147483648), gr6
	setlo #lo(#-2147483648), gr6
	xor gr18, gr6, gr4
	mov gr4, gr18
	setlos #1, gr22
	bra .L438
.L454:
	setlos #0, gr22
.L438:
	sethi #hi(#1072693248), gr10
	setlo #lo(#1072693248), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __gedf2
	cmpi gr8, #0, icc0
	bp icc0,0,.L449
	bra .L455
.L442:
	addi gr21,#1,gr21
	sethi #hi(#1071644672), gr10
	setlo #lo(#1071644672), gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
	bra .L440
.L449:
	setlos #0, gr21
.L440:
	sethi #hi(#1072693248), gr10
	setlo #lo(#1072693248), gr10
	setlos #0, gr11
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
	bp icc0,0,.L456
	setlos #0, gr10
	setlos #0, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr20, gr15
	call __nedf2
	cmpi gr8, #0, icc0
	bne icc0,0,.L451
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
.L445:
	sethi #hi(#1071644672), gr10
	setlo #lo(#1071644672), gr10
	setlos #0, gr11
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
	st gr21, @(gr23,gr0)
	cmpi gr22, #0, icc0
	beq icc0,0,.L447
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
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
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
	mov gr8, gr4
	mov gr9, gr5
	setlos #0, gr8
	setlos #0, gr9
	bra .L458
.L461:
	setlos #0, gr14
	andi gr5, #1, gr15
	orcc gr14, gr15, gr0, icc0
	beq icc0,0,.L459
	addcc gr9,gr11,gr9,icc0
	addx gr8,gr10,gr8,icc0
.L459:
	srli gr11, #31, gr18
	slli gr10,#1,gr6
	or gr18, gr6, gr6
	slli gr11,#1,gr7
	mov gr6, gr10
	mov gr7, gr11
	slli gr4,#31,gr18
	srli gr5, #1, gr13
	or gr18, gr13, gr13
	srli gr4, #1, gr12
	mov gr12, gr4
	mov gr13, gr5
.L458:
	orcc gr4, gr5, gr0, icc0
	bne icc0,2,.L461
	ldi @(sp,0), gr18
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
.L465:
	slli gr9,#1,gr9
	slli gr4,#1,gr4
.L463:
	cmp gr9,gr8,icc0
	bnc icc0,0,.L470
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L471
	cmpi gr9, #0, icc0
	bp icc0,2,.L465
	setlos #0, gr5
	bra .L467
.L468:
	cmp gr8,gr9,icc0
	bc icc0,0,.L466
	sub gr8,gr9,gr8
	or gr5, gr4, gr5
.L466:
	srli gr4, #1, gr4
	srli gr9, #1, gr9
	bra .L467
.L470:
	setlos #0, gr5
	bra .L467
.L471:
	setlos #0, gr5
.L467:
	cmpi gr4, #0, icc0
	bne icc0,2,.L468
	cmpi gr10, #0, icc0
	bne icc0,0,.L469
	mov gr5, gr8
.L469:
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
	slli gr8,#24,gr8
	srai gr8, #24, gr8
	cmpi gr8, #0, icc0
	bp icc0,0,.L474
	not gr8,gr8
.L474:
	cmpi gr8, #0, icc0
	beq icc0,0,.L476
	slli gr8,#8,gr8
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
	bp icc0,0,.L478
	not gr8,gr4
	not gr9,gr5
	mov gr4, gr8
	mov gr5, gr9
.L478:
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
	beq icc0,0,.L485
	add gr4,gr9,gr4
.L485:
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
	srli gr10, #3, gr5
	andi gr10, #-8, gr4
	cmp gr8,gr9,icc0
	bc icc0,0,.L488
	add gr9,gr10,gr6
	cmp gr6,gr8,icc0
	bnc icc0,0,.L489
.L488:
	mov gr9, gr11
	mov gr8, gr12
	slli gr5,#3,gr5
	add gr5,gr9,gr5
	bra .L490
.L491:
	ld @(gr11,gr0), gr6
	ldi @(gr11,4), gr7
	st gr6, @(gr12,gr0)
	sti gr7, @(gr12,4)
	addi gr11,#8,gr11
	addi gr12,#8,gr12
.L490:
	cmp gr11,gr5,icc0
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
	srli gr10, #1, gr5
	cmp gr8,gr9,icc0
	bc icc0,0,.L497
	add gr9,gr10,gr4
	cmp gr4,gr8,icc0
	bnc icc0,0,.L498
.L497:
	slli gr5,#1,gr5
	setlos #0, gr4
	bra .L499
.L500:
	ldsh @(gr9,gr4),gr6
	sth gr6, @(gr8,gr4)
	addi gr4,#2,gr4
.L499:
	cmp gr4,gr5,icc0
	bne icc0,2,.L500
	andicc gr10, #1, gr0, icc0
	beq icc0,0,.L496
	addi gr10,#-1,gr10
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
	bra .L496
.L502:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L498:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L502
.L496:
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
	srli gr10, #2, gr6
	andi gr10, #-4, gr4
	cmp gr8,gr9,icc0
	bc icc0,0,.L504
	add gr9,gr10,gr5
	cmp gr5,gr8,icc0
	bnc icc0,0,.L505
.L504:
	slli gr6,#2,gr6
	setlos #0, gr5
	bra .L506
.L507:
	ld @(gr9,gr5), gr7
	st gr7, @(gr8,gr5)
	addi gr5,#4,gr5
.L506:
	cmp gr5,gr6,icc0
	bne icc0,2,.L507
	bra .L508
.L509:
	ldsb @(gr9,gr4),gr5
	stb gr5, @(gr8,gr4)
	addi gr4,#1,gr4
.L508:
	cmp gr10,gr4,icc0
	bhi icc0,2,.L509
	bra .L503
.L511:
	ldsb @(gr9,gr10),gr4
	stb gr4, @(gr8,gr10)
.L505:
	addi gr10,#-1,gr10
	cmpi gr10,#-1,icc0
	bne icc0,2,.L511
.L503:
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
	bra .L519
.L521:
	setlos #15, gr4
	sub gr4,gr8,gr4
	sra gr5, gr4, gr4
	andicc gr4, #1, gr0, icc0
	bne icc0,0,.L520
	addi gr8,#1,gr8
.L519:
	cmpi gr8,#16,icc0
	bne icc0,2,.L521
.L520:
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
	mov gr8, gr4
	sethi #hi(#0),gr4
	setlos #0, gr8
	bra .L523
.L525:
	sra gr4, gr8, gr5
	andicc gr5, #1, gr0, icc0
	bne icc0,0,.L524
	addi gr8,#1,gr8
.L523:
	cmpi gr8,#16,icc0
	bne icc0,2,.L525
.L524:
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
	bn icc0,0,.L531
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
	bra .L529
.L531:
	mov gr19, gr8
	mov gr18, gr15
	call __ftoi
.L529:
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
	setlos #0, gr4
	setlos #0, gr5
	bra .L533
.L535:
	sra gr8, gr5, gr6
	andicc gr6, #1, gr0, icc0
	beq icc0,0,.L534
	addi gr4,#1,gr4
.L534:
	addi gr5,#1,gr5
.L533:
	cmpi gr5,#16,icc0
	bne icc0,2,.L535
	andi gr4, #1, gr8
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
	mov gr8, gr5
	sethi #hi(#0),gr5
	setlos #0, gr8
	setlos #0, gr4
	bra .L537
.L539:
	sra gr5, gr4, gr6
	andicc gr6, #1, gr0, icc0
	beq icc0,0,.L538
	addi gr8,#1,gr8
.L538:
	addi gr4,#1,gr4
.L537:
	cmpi gr4,#16,icc0
	bne icc0,2,.L539
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
	bra .L541
.L543:
	andicc gr8, #1, gr0, icc0
	beq icc0,0,.L542
	add gr4,gr9,gr4
.L542:
	srli gr8, #1, gr8
	slli gr9,#1,gr9
.L541:
	cmpi gr8, #0, icc0
	bne icc0,2,.L543
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
	beq icc0,0,.L549
	setlos #0, gr4
	bra .L546
.L548:
	andicc gr9, #1, gr0, icc0
	beq icc0,0,.L547
	add gr4,gr8,gr4
.L547:
	slli gr8,#1,gr8
	srli gr9, #1, gr9
.L546:
	cmpi gr9, #0, icc0
	bne icc0,2,.L548
	mov gr4, gr8
	bra .L545
.L549:
	setlos #0, gr8
.L545:
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
	bra .L551
.L553:
	slli gr9,#1,gr9
	slli gr4,#1,gr4
.L551:
	cmp gr9,gr8,icc0
	bnc icc0,0,.L558
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L559
	cmpi gr9, #0, icc0
	bp icc0,2,.L553
	setlos #0, gr5
	bra .L555
.L556:
	cmp gr8,gr9,icc0
	bc icc0,0,.L554
	sub gr8,gr9,gr8
	or gr5, gr4, gr5
.L554:
	srli gr4, #1, gr4
	srli gr9, #1, gr9
	bra .L555
.L558:
	setlos #0, gr5
	bra .L555
.L559:
	setlos #0, gr5
.L555:
	cmpi gr4, #0, icc0
	bne icc0,2,.L556
	cmpi gr10, #0, icc0
	bne icc0,0,.L557
	mov gr5, gr8
.L557:
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
	bn icc0,0,.L563
	mov gr20, gr9
	mov gr19, gr8
	mov gr18, gr15
	call __gtsf2
	cmpi gr8,#0,icc0
	bgt icc0,0,.L564
	setlos #0, gr8
	bra .L562
.L563:
	setlos #-1, gr8
	bra .L562
.L564:
	setlos #1, gr8
.L562:
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
	bn icc0,0,.L567
	mov gr22, gr10
	mov gr23, gr11
	mov gr20, gr8
	mov gr21, gr9
	mov gr18, gr15
	call __gtdf2
	cmpi gr8,#0,icc0
	bgt icc0,0,.L568
	setlos #0, gr8
	bra .L566
.L567:
	setlos #-1, gr8
	bra .L566
.L568:
	setlos #1, gr8
.L566:
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
	mov gr8, gr4
	cmpi gr9, #0, icc0
	bp icc0,0,.L578
	sub gr0,gr9,gr9
	setlos #1, gr5
	bra .L572
.L578:
	setlos #0, gr5
.L572:
	setlos #0, gr6
	setlos #0, gr8
	bra .L573
.L576:
	andicc gr9, #1, gr0, icc0
	beq icc0,0,.L574
	add gr8,gr4,gr8
.L574:
	slli gr4,#1,gr4
	srai gr9, #1, gr9
	addi gr6,#1,gr6
.L573:
	cmpi gr9, #0, icc0
	beq icc0,0,.L575
	cmpi gr6,#32,icc0
	bne icc0,2,.L576
.L575:
	cmpi gr5, #0, icc0
	beq icc0,0,.L577
	sub gr0,gr8,gr8
.L577:
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
	bp icc0,0,.L584
	sub gr0,gr8,gr8
	setlos #1, gr18
	bra .L581
.L584:
	setlos #0, gr18
.L581:
	cmpi gr9, #0, icc0
	bp icc0,0,.L582
	sub gr0,gr9,gr9
	xori gr18, #1, gr18
	andi gr18,#0xff,gr18
.L582:
	setlos #0, gr10
	call __udivmodsi4
	cmpi gr18, #0, icc0
	beq icc0,0,.L583
	sub gr0,gr8,gr8
.L583:
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
	bp icc0,0,.L589
	sub gr0,gr8,gr8
	setlos #1, gr18
	bra .L586
.L589:
	setlos #0, gr18
.L586:
	cmpi gr9, #0, icc0
	bp icc0,0,.L587
	sub gr0,gr9,gr9
.L587:
	setlos #1, gr10
	call __udivmodsi4
	cmpi gr18, #0, icc0
	beq icc0,0,.L588
	sub gr0,gr8,gr8
.L588:
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
	sethi #hi(#0),gr8
	sethi #hi(#0),gr9
	setlos #17, gr5
	setlos #1, gr4
	bra .L591
.L593:
	slli gr9,#1,gr9
	sethi #hi(#0),gr9
	slli gr4,#1,gr4
	sethi #hi(#0),gr4
.L591:
	cmp gr9,gr8,icc0
	bnc icc0,0,.L598
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L599
	slli gr9,#16,gr6
	srai gr6, #16, gr6
	cmpi gr6, #0, icc0
	bp icc0,2,.L593
	setlos #0, gr5
	bra .L595
.L596:
	cmp gr8,gr9,icc0
	bc icc0,0,.L594
	sub gr8,gr9,gr8
	sethi #hi(#0),gr8
	or gr5, gr4, gr5
.L594:
	srli gr4, #1, gr4
	srli gr9, #1, gr9
	bra .L595
.L598:
	setlos #0, gr5
	bra .L595
.L599:
	setlos #0, gr5
.L595:
	cmpi gr4, #0, icc0
	bne icc0,2,.L596
	cmpi gr10, #0, icc0
	bne icc0,0,.L597
	mov gr5, gr8
.L597:
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
	bra .L602
.L604:
	slli gr9,#1,gr9
	slli gr4,#1,gr4
.L602:
	cmp gr9,gr8,icc0
	bnc icc0,0,.L609
	addicc gr5, #-1, gr5, icc0
	beq icc0,0,.L610
	cmpi gr9, #0, icc0
	bp icc0,2,.L604
	setlos #0, gr5
	bra .L606
.L607:
	cmp gr8,gr9,icc0
	bc icc0,0,.L605
	sub gr8,gr9,gr8
	or gr5, gr4, gr5
.L605:
	srli gr4, #1, gr4
	srli gr9, #1, gr9
	bra .L606
.L609:
	setlos #0, gr5
	bra .L606
.L610:
	setlos #0, gr5
.L606:
	cmpi gr4, #0, icc0
	bne icc0,2,.L607
	cmpi gr10, #0, icc0
	bne icc0,0,.L608
	mov gr5, gr8
.L608:
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
	mov gr9, gr5
	andi gr10, #32, gr6
	cmpi gr6, #0, icc0
	beq icc0,0,.L613
	setlos #0, gr9
	addi gr10,#-32,gr10
	sll gr5,gr10,gr8
	bra .L615
.L613:
	cmpi gr10, #0, icc0
	beq icc0,0,.L615
	sll gr9,gr10,gr9
	sll gr8,gr10,gr4
	setlos #32, gr6
	sub gr6,gr10,gr6
	srl gr5, gr6, gr5
	or gr5, gr4, gr8
.L615:
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
	mov gr8, gr4
	andi gr10, #32, gr6
	cmpi gr6, #0, icc0
	beq icc0,0,.L618
	srai gr8, #31, gr8
	addi gr10,#-32,gr10
	sra gr4, gr10, gr9
	bra .L620
.L618:
	cmpi gr10, #0, icc0
	beq icc0,0,.L620
	sra gr8, gr10, gr8
	setlos #32, gr6
	sub gr6,gr10,gr6
	sll gr4,gr6,gr4
	srl gr9, gr10, gr5
	or gr4, gr5, gr9
.L620:
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
	bhi icc0,0,.L629
	setlos #16, gr4
	bra .L625
.L629:
	setlos #0, gr4
.L625:
	setlos #16, gr5
	sub gr5,gr4,gr5
	srl gr8, gr5, gr8
	sethi #hi(#65280), gr5
	setlo #lo(#65280), gr5
	andcc gr8, gr5, gr0, icc0
	bne icc0,0,.L630
	setlos #8, gr5
	bra .L626
.L630:
	setlos #0, gr5
.L626:
	setlos #8, gr6
	sub gr6,gr5,gr6
	srl gr8, gr6, gr8
	add gr4,gr5,gr4
	andicc gr8, #240, gr0, icc0
	bne icc0,0,.L631
	setlos #4, gr5
	bra .L627
.L631:
	setlos #0, gr5
.L627:
	setlos #4, gr6
	sub gr6,gr5,gr6
	srl gr8, gr6, gr8
	add gr4,gr5,gr4
	andicc gr8, #12, gr0, icc0
	bne icc0,0,.L632
	setlos #2, gr6
	bra .L628
.L632:
	setlos #0, gr6
.L628:
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
	blt icc0,0,.L635
	bgt icc0,0,.L636
	cmp gr9,gr11,icc0
	bc icc0,0,.L637
	bhi icc0,0,.L638
	setlos #1, gr8
	bra .L634
.L635:
	setlos #0, gr8
	bra .L634
.L636:
	setlos #2, gr8
	bra .L634
.L637:
	setlos #0, gr8
	bra .L634
.L638:
	setlos #2, gr8
.L634:
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
	bne icc0,0,.L645
	setlos #16, gr4
	bra .L641
.L645:
	setlos #0, gr4
.L641:
	srl gr8, gr4, gr8
	andi gr8, #255, gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L646
	setlos #8, gr5
	bra .L642
.L646:
	setlos #0, gr5
.L642:
	srl gr8, gr5, gr8
	add gr4,gr5,gr4
	andicc gr8, #15, gr0, icc0
	bne icc0,0,.L647
	setlos #4, gr5
	bra .L643
.L647:
	setlos #0, gr5
.L643:
	srl gr8, gr5, gr8
	add gr4,gr5,gr4
	andicc gr8, #3, gr0, icc0
	bne icc0,0,.L648
	setlos #2, gr5
	bra .L644
.L648:
	setlos #0, gr5
.L644:
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
	mov gr8, gr4
	andi gr10, #32, gr6
	cmpi gr6, #0, icc0
	beq icc0,0,.L650
	setlos #0, gr8
	addi gr10,#-32,gr10
	srl gr4, gr10, gr9
	bra .L652
.L650:
	cmpi gr10, #0, icc0
	beq icc0,0,.L652
	srl gr8, gr10, gr8
	setlos #32, gr6
	sub gr6,gr10,gr6
	sll gr4,gr6,gr4
	srl gr9, gr10, gr5
	or gr4, gr5, gr9
.L652:
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
	sethi #hi(#65535), gr11
	setlo #lo(#65535), gr11
	and gr8, gr11, gr10
	and gr9, gr11, gr12
	umul gr10,gr12,gr14
	srli gr15, #16, gr4
	and gr15, gr11, gr7
	srli gr8, #16, gr6
	umul gr6,gr12,gr12
	add gr4,gr13,gr4
	slli gr4,#16,gr12
	add gr12,gr7,gr9
	srli gr4, #16, gr8
	srli gr9, #16, gr4
	and gr9, gr11, gr7
	srli gr5, #16, gr5
	umul gr10,gr5,gr10
	add gr4,gr11,gr4
	slli gr4,#16,gr10
	add gr10,gr7,gr9
	srli gr4, #16, gr4
	add gr4,gr8,gr4
	umul gr6,gr5,gr6
	add gr7,gr4,gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#16,sp
	jmpl @(gr5,gr0)
	.size	__muldsi3, .-__muldsi3
	.p2align 4
	.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
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
	mov gr8, gr20
	mov gr9, gr21
	mov gr10, gr18
	mov gr11, gr19
	mov gr9, gr22
	mov gr11, gr9
	mov gr21, gr8
	call __muldsi3
	mov gr8, gr4
	umul gr20,gr19,gr20
	umul gr18,gr22,gr18
	add gr21,gr19,gr5
	add gr5,gr4,gr8
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
	xor gr8, gr9, gr4
	srli gr4, #16, gr5
	xor gr4, gr5, gr4
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
	mov gr15, gr21
	mov gr8, gr22
	mov gr9, gr23
	mov gr10, gr20
	srli gr10, #31, gr24
	sethi #hi(#1072693248), gr18
	setlo #lo(#1072693248), gr18
	setlos #0, gr19
.L664:
	andicc gr20, #1, gr0, icc0
	beq icc0,0,.L662
	mov gr22, gr10
	mov gr23, gr11
	mov gr18, gr8
	mov gr19, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr18
	mov gr9, gr19
.L662:
	srli gr20, #31, gr4
	add gr4,gr20,gr20
	sraicc gr20, #1, gr20, icc0
	beq icc0,0,.L663
	mov gr22, gr10
	mov gr23, gr11
	mov gr22, gr8
	mov gr23, gr9
	mov gr21, gr15
	call __muld
	mov gr8, gr22
	mov gr9, gr23
	bra .L664
.L663:
	cmpi gr24, #0, icc0
	beq icc0,0,.L666
	mov gr18, gr10
	mov gr19, gr11
	sethi #hi(#1072693248), gr8
	setlo #lo(#1072693248), gr8
	setlos #0, gr9
	mov gr21, gr15
	call __divd
	bra .L665
.L666:
	mov gr18, gr8
	mov gr19, gr9
.L665:
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
	mov gr8, gr20
	mov gr9, gr19
	srli gr9, #31, gr22
	sethi #hi(#1065353216), gr18
	setlo #lo(#1065353216), gr18
.L670:
	andicc gr19, #1, gr0, icc0
	beq icc0,0,.L668
	mov gr20, gr9
	mov gr18, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr18
.L668:
	srli gr19, #31, gr4
	add gr4,gr19,gr19
	sraicc gr19, #1, gr19, icc0
	beq icc0,0,.L669
	mov gr20, gr9
	mov gr20, gr8
	mov gr21, gr15
	call __mulf
	mov gr8, gr20
	bra .L670
.L669:
	cmpi gr22, #0, icc0
	beq icc0,0,.L672
	mov gr18, gr9
	sethi #hi(#1065353216), gr8
	setlo #lo(#1065353216), gr8
	mov gr21, gr15
	call __divf
	bra .L671
.L672:
	mov gr18, gr8
.L671:
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
	bc icc0,0,.L675
	bhi icc0,0,.L676
	cmp gr9,gr11,icc0
	bc icc0,0,.L677
	bhi icc0,0,.L678
	setlos #1, gr8
	bra .L674
.L675:
	setlos #0, gr8
	bra .L674
.L676:
	setlos #2, gr8
	bra .L674
.L677:
	setlos #0, gr8
	bra .L674
.L678:
	setlos #2, gr8
.L674:
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
