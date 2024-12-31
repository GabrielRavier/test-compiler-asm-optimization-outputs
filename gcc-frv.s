	.file	"mini-libc.c"
	.text
	.p2align 4
	.globl memmove
	.type	memmove, @function
memmove:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-20)
	sti gr9, @(fp,-24)
	sti gr10, @(fp,-28)
	ldi @(fp,-24), gr5
	ldi @(fp,-20), gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L2
	ldi @(fp,-24), gr5
	ldi @(fp,-28), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-20), gr5
	ldi @(fp,-28), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-4)
	bra .L3
.L4:
	ldi @(fp,-12), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-4), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr5
	ldi @(fp,-4), gr4
	stb gr5, @(gr4,gr0)
	ldi @(fp,-28), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-28)
.L3:
	ldi @(fp,-28), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L4
	bra .L5
.L2:
	ldi @(fp,-24), gr5
	ldi @(fp,-20), gr4
	cmp gr5,gr4,icc0
	beq icc0,0,.L5
	ldi @(fp,-20), gr4
	sti gr4, @(fp,-8)
	bra .L6
.L7:
	ldi @(fp,-24), gr5
	addi gr5,#1,gr4
	sti gr4, @(fp,-24)
	ldi @(fp,-8), gr4
	addi gr4,#1,gr6
	sti gr6, @(fp,-8)
	ldsb @(gr5,gr0),gr5
	stb gr5, @(gr4,gr0)
	ldi @(fp,-28), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-28)
.L6:
	ldi @(fp,-28), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L7
.L5:
	ldi @(fp,-20), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	memmove, .-memmove
	.p2align 4
	.globl memccpy
	.type	memccpy, @function
memccpy:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr10, @(fp,-20)
	sti gr11, @(fp,-24)
	ldi @(fp,-20), gr4
	andi gr4,#0xff,gr4
	sti gr4, @(fp,-4)
	bra .L10
.L12:
	ldi @(fp,-24), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-24)
	ldi @(fp,-16), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-12), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-12)
.L10:
	ldi @(fp,-24), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L11
	ldi @(fp,-16), gr4
	ldub @(gr4,gr0),gr5
	ldi @(fp,-12), gr4
	stb gr5, @(gr4,gr0)
	ldi @(fp,-12), gr4
	ldub @(gr4,gr0),gr4
	mov gr4, gr5
	ldi @(fp,-4), gr4
	cmp gr4,gr5,icc0
	bne icc0,2,.L12
.L11:
	ldi @(fp,-24), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L13
	ldi @(fp,-12), gr4
	addi gr4,#1,gr4
	bra .L14
.L13:
	setlos #0, gr4
.L14:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	memccpy, .-memccpy
	.p2align 4
	.globl memchr
	.type	memchr, @function
memchr:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr10, @(fp,-20)
	ldi @(fp,-16), gr4
	andi gr4,#0xff,gr4
	sti gr4, @(fp,-4)
	bra .L16
.L18:
	ldi @(fp,-12), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-20)
.L16:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L17
	ldi @(fp,-12), gr4
	ldub @(gr4,gr0),gr4
	ldi @(fp,-4), gr5
	cmp gr5,gr4,icc0
	bne icc0,2,.L18
.L17:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L19
	ldi @(fp,-12), gr4
	bra .L21
.L19:
	setlos #0, gr4
.L21:
	nop
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	memchr, .-memchr
	.p2align 4
	.globl memcmp
	.type	memcmp, @function
memcmp:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	sti gr10, @(fp,-12)
	bra .L23
.L25:
	ldi @(fp,-12), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-8)
.L23:
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L24
	ldi @(fp,-4), gr4
	ldub @(gr4,gr0),gr5
	ldi @(fp,-8), gr4
	ldub @(gr4,gr0),gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L25
.L24:
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L26
	ldi @(fp,-4), gr4
	ldub @(gr4,gr0),gr5
	ldi @(fp,-8), gr4
	ldub @(gr4,gr0),gr4
	sub gr5,gr4,gr4
	bra .L28
.L26:
	setlos #0, gr4
.L28:
	nop
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	memcmp, .-memcmp
	.p2align 4
	.globl memcpy
	.type	memcpy, @function
memcpy:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr10, @(fp,-20)
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	bra .L30
.L31:
	ldi @(fp,-16), gr5
	addi gr5,#1,gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-4), gr4
	addi gr4,#1,gr6
	sti gr6, @(fp,-4)
	ldub @(gr5,gr0),gr5
	stb gr5, @(gr4,gr0)
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-20)
.L30:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L31
	ldi @(fp,-12), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	memcpy, .-memcpy
	.p2align 4
	.globl memrchr
	.type	memrchr, @function
memrchr:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr10, @(fp,-20)
	ldi @(fp,-16), gr4
	andi gr4,#0xff,gr4
	sti gr4, @(fp,-4)
	bra .L34
.L36:
	ldi @(fp,-12), gr5
	ldi @(fp,-20), gr4
	add gr5,gr4,gr4
	ldub @(gr4,gr0),gr4
	ldi @(fp,-4), gr5
	cmp gr5,gr4,icc0
	bne icc0,0,.L34
	ldi @(fp,-12), gr5
	ldi @(fp,-20), gr4
	add gr5,gr4,gr4
	bra .L35
.L34:
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr5
	sti gr5, @(fp,-20)
	cmpi gr4, #0, icc0
	bne icc0,2,.L36
	setlos #0, gr4
.L35:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	memrchr, .-memrchr
	.p2align 4
	.globl memset
	.type	memset, @function
memset:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr10, @(fp,-20)
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	bra .L38
.L39:
	ldi @(fp,-4), gr4
	ldi @(fp,-16), gr5
	stb gr5, @(gr4,gr0)
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-20)
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L38:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L39
	ldi @(fp,-12), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	memset, .-memset
	.p2align 4
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	bra .L42
.L43:
	ldi @(fp,-8), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L42:
	ldi @(fp,-8), gr4
	ldsb @(gr4,gr0),gr5
	ldi @(fp,-4), gr4
	stb gr5, @(gr4,gr0)
	ldi @(fp,-4), gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L43
	ldi @(fp,-4), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	stpcpy, .-stpcpy
	.p2align 4
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	ldi @(fp,-16), gr4
	andi gr4,#0xff,gr4
	sti gr4, @(fp,-4)
	bra .L46
.L48:
	ldi @(fp,-12), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-12)
.L46:
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L47
	ldi @(fp,-12), gr4
	ldub @(gr4,gr0),gr4
	ldi @(fp,-4), gr5
	cmp gr5,gr4,icc0
	bne icc0,2,.L48
.L47:
	ldi @(fp,-12), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	strchrnul, .-strchrnul
	.p2align 4
	.globl strchr
	.type	strchr, @function
strchr:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr4
	sti gr9, @(fp,-4)
.L53:
	ldsb @(gr4,gr0),gr5
	ldi @(fp,-4), gr6
	cmp gr6,gr5,icc0
	beq icc0,0,.L54
	mov gr4, gr5
	addi gr5,#1,gr4
	ldsb @(gr5,gr0),gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L53
	setlos #0, gr4
	bra .L52
.L54:
	nop
.L52:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	strchr, .-strchr
	.p2align 4
	.globl strcmp
	.type	strcmp, @function
strcmp:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	bra .L56
.L58:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-8)
.L56:
	ldi @(fp,-4), gr4
	ldsb @(gr4,gr0),gr5
	ldi @(fp,-8), gr4
	ldsb @(gr4,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L57
	ldi @(fp,-4), gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L58
.L57:
	ldi @(fp,-4), gr4
	ldub @(gr4,gr0),gr5
	ldi @(fp,-8), gr4
	ldub @(gr4,gr0),gr4
	sub gr5,gr4,gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	strcmp, .-strcmp
	.p2align 4
	.globl strlen
	.type	strlen, @function
strlen:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	bra .L61
.L62:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L61:
	ldi @(fp,-4), gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L62
	ldi @(fp,-4), gr5
	ldi @(fp,-12), gr4
	sub gr5,gr4,gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	strlen, .-strlen
	.p2align 4
	.globl strncmp
	.type	strncmp, @function
strncmp:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr10, @(fp,-20)
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr5
	sti gr5, @(fp,-4)
	cmpi gr4, #0, icc0
	bne icc0,0,.L67
	setlos #0, gr4
	bra .L66
.L69:
	ldi @(fp,-12), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-16), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-4), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-4)
.L67:
	ldi @(fp,-12), gr4
	ldub @(gr4,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L68
	ldi @(fp,-16), gr4
	ldub @(gr4,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L68
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L68
	ldi @(fp,-12), gr4
	ldub @(gr4,gr0),gr5
	ldi @(fp,-16), gr4
	ldub @(gr4,gr0),gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L69
.L68:
	ldi @(fp,-12), gr4
	ldub @(gr4,gr0),gr5
	ldi @(fp,-16), gr4
	ldub @(gr4,gr0),gr4
	sub gr5,gr4,gr4
.L66:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	strncmp, .-strncmp
	.p2align 4
	.globl swab
	.type	swab, @function
swab:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	sti gr10, @(fp,-12)
	bra .L71
.L72:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	ldsb @(gr4,gr0),gr5
	ldi @(fp,-8), gr4
	stb gr5, @(gr4,gr0)
	ldi @(fp,-8), gr4
	addi gr4,#1,gr4
	ldi @(fp,-4), gr5
	ldsb @(gr5,gr0),gr5
	stb gr5, @(gr4,gr0)
	ldi @(fp,-8), gr4
	addi gr4,#2,gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-4), gr4
	addi gr4,#2,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-12), gr4
	addi gr4,#-2,gr4
	sti gr4, @(fp,-12)
.L71:
	ldi @(fp,-12), gr4
	cmpi gr4,#1,icc0
	bgt icc0,2,.L72
	nop
	nop
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	swab, .-swab
	.p2align 4
	.globl isalpha
	.type	isalpha, @function
isalpha:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr4
	ori gr4, #32, gr4
	addi gr4,#-97,gr4
	cmpi gr4,#25,icc0
	ckls icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	isalpha, .-isalpha
	.p2align 4
	.globl isascii
	.type	isascii, @function
isascii:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr4
	cmpi gr4,#127,icc0
	ckls icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	isascii, .-isascii
	.p2align 4
	.globl isblank
	.type	isblank, @function
isblank:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr4
	cmpi gr4,#32,icc0
	beq icc0,0,.L78
	ldi @(fp,-4), gr4
	cmpi gr4,#9,icc0
	bne icc0,0,.L79
.L78:
	setlos #1, gr4
	bra .L81
.L79:
	setlos #0, gr4
.L81:
	nop
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	isblank, .-isblank
	.p2align 4
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr4
	cmpi gr4,#31,icc0
	bls icc0,0,.L83
	ldi @(fp,-4), gr4
	cmpi gr4,#127,icc0
	bne icc0,0,.L84
.L83:
	setlos #1, gr4
	bra .L86
.L84:
	setlos #0, gr4
.L86:
	nop
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	iscntrl, .-iscntrl
	.p2align 4
	.globl isdigit
	.type	isdigit, @function
isdigit:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	ckls icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	isdigit, .-isdigit
	.p2align 4
	.globl isgraph
	.type	isgraph, @function
isgraph:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr4
	addi gr4,#-33,gr4
	cmpi gr4,#93,icc0
	ckls icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	isgraph, .-isgraph
	.p2align 4
	.globl islower
	.type	islower, @function
islower:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr4
	addi gr4,#-97,gr4
	cmpi gr4,#25,icc0
	ckls icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	islower, .-islower
	.p2align 4
	.globl isprint
	.type	isprint, @function
isprint:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr4
	addi gr4,#-32,gr4
	cmpi gr4,#94,icc0
	ckls icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	isprint, .-isprint
	.p2align 4
	.globl isspace
	.type	isspace, @function
isspace:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr4
	cmpi gr4,#32,icc0
	beq icc0,0,.L96
	ldi @(fp,-4), gr4
	addi gr4,#-9,gr4
	cmpi gr4,#4,icc0
	bhi icc0,0,.L97
.L96:
	setlos #1, gr4
	bra .L99
.L97:
	setlos #0, gr4
.L99:
	nop
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	isspace, .-isspace
	.p2align 4
	.globl isupper
	.type	isupper, @function
isupper:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr4
	addi gr4,#-65,gr4
	cmpi gr4,#25,icc0
	ckls icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	isupper, .-isupper
	.p2align 4
	.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr4
	cmpi gr4,#31,icc0
	bls icc0,0,.L103
	ldi @(fp,-4), gr4
	addi gr4,#-127,gr4
	cmpi gr4,#32,icc0
	bls icc0,0,.L103
	ldi @(fp,-4), gr5
	setlos #-8232, gr4
	add gr5,gr4,gr4
	cmpi gr4,#1,icc0
	bls icc0,0,.L103
	ldi @(fp,-4), gr5
	sethi #hi(#-65529), gr4
	setlo #lo(#-65529), gr4
	add gr5,gr4,gr4
	cmpi gr4,#2,icc0
	bhi icc0,0,.L104
.L103:
	setlos #1, gr4
	bra .L106
.L104:
	setlos #0, gr4
.L106:
	nop
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	iswcntrl, .-iswcntrl
	.p2align 4
	.globl iswdigit
	.type	iswdigit, @function
iswdigit:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	ckls icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	iswdigit, .-iswdigit
	.p2align 4
	.globl iswprint
	.type	iswprint, @function
iswprint:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr4
	cmpi gr4,#254,icc0
	bhi icc0,0,.L110
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	andi gr4, #127, gr4
	cmpi gr4,#32,icc0
	ckhi icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	bra .L111
.L110:
	ldi @(fp,-4), gr5
	setlos #8231, gr4
	cmp gr5,gr4,icc0
	bls icc0,0,.L112
	ldi @(fp,-4), gr5
	setlos #-8234, gr4
	add gr5,gr4,gr5
	sethi #hi(#47061), gr4
	setlo #lo(#47061), gr4
	cmp gr5,gr4,icc0
	bls icc0,0,.L112
	ldi @(fp,-4), gr5
	sethi #hi(#-57344), gr4
	setlo #lo(#-57344), gr4
	add gr5,gr4,gr5
	setlos #8184, gr4
	cmp gr5,gr4,icc0
	bhi icc0,0,.L113
.L112:
	setlos #1, gr4
	bra .L111
.L113:
	ldi @(fp,-4), gr5
	sethi #hi(#-65532), gr4
	setlo #lo(#-65532), gr4
	add gr5,gr4,gr5
	sethi #hi(#1048579), gr4
	setlo #lo(#1048579), gr4
	cmp gr5,gr4,icc0
	bhi icc0,0,.L114
	ldi @(fp,-4), gr5
	sethi #hi(#65534), gr4
	setlo #lo(#65534), gr4
	and gr5, gr4, gr5
	sethi #hi(#65534), gr4
	setlo #lo(#65534), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L115
.L114:
	setlos #0, gr4
	bra .L111
.L115:
	setlos #1, gr4
.L111:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	iswprint, .-iswprint
	.p2align 4
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,0,.L117
	ldi @(fp,-4), gr4
	ori gr4, #32, gr4
	addi gr4,#-97,gr4
	cmpi gr4,#5,icc0
	bhi icc0,0,.L118
.L117:
	setlos #1, gr4
	bra .L120
.L118:
	setlos #0, gr4
.L120:
	nop
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	iswxdigit, .-iswxdigit
	.p2align 4
	.globl toascii
	.type	toascii, @function
toascii:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr4
	andi gr4, #127, gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
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
	mov gr15, gr18
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	sti gr10, @(fp,-16)
	sti gr11, @(fp,-12)
	nop
	ldi @(fp,-8), gr10
	ldi @(fp,-4), gr11
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __unorddf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L135
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L126
.L135:
	ldi @(fp,-16), gr10
	ldi @(fp,-12), gr11
	nop
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr18, gr15
	call __unorddf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L136
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L126
.L136:
	ldi @(fp,-16), gr10
	ldi @(fp,-12), gr11
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __gtdf2
	mov gr8, gr4
	cmpi gr4,#0,icc0
	ble icc0,0,.L137
	ldi @(fp,-16), gr10
	ldi @(fp,-12), gr11
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __subd
	mov gr8, gr4
	mov gr9, gr5
	bra .L126
.L137:
	setlos #0, gr4
	setlos #0, gr5
.L126:
	mov gr4, gr8
	mov gr5, gr9
	ldi @(sp,0), gr18
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
	mov gr15, gr18
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	ldi @(fp,-4), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __unordsf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L150
	ldi @(fp,-4), gr4
	bra .L141
.L150:
	ldi @(fp,-8), gr9
	ldi @(fp,-8), gr8
	mov gr18, gr15
	call __unordsf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L151
	ldi @(fp,-8), gr4
	bra .L141
.L151:
	ldi @(fp,-8), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __gtsf2
	mov gr8, gr4
	cmpi gr4,#0,icc0
	ble icc0,0,.L152
	ldi @(fp,-8), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __subf
	mov gr8, gr4
	bra .L141
.L152:
	setlos #0, gr4
.L141:
	mov gr4, gr8
	ldi @(sp,0), gr18
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
	mov gr15, gr18
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	sti gr10, @(fp,-16)
	sti gr11, @(fp,-12)
	nop
	ldi @(fp,-8), gr10
	ldi @(fp,-4), gr11
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __unorddf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L168
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L156
.L168:
	ldi @(fp,-16), gr10
	ldi @(fp,-12), gr11
	nop
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr18, gr15
	call __unorddf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L169
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L156
.L169:
	ldi @(fp,-8), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	mov gr4, gr6
	ldi @(fp,-16), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	cmp gr6,gr4,icc0
	beq icc0,0,.L159
	ldi @(fp,-8), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L160
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L156
.L160:
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L156
.L159:
	ldi @(fp,-16), gr10
	ldi @(fp,-12), gr11
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __ltdf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L170
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L156
.L170:
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
.L156:
	mov gr4, gr8
	mov gr5, gr9
	ldi @(sp,0), gr18
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
	mov gr15, gr18
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	ldi @(fp,-4), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __unordsf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L186
	ldi @(fp,-8), gr4
	bra .L174
.L186:
	ldi @(fp,-8), gr9
	ldi @(fp,-8), gr8
	mov gr18, gr15
	call __unordsf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L187
	ldi @(fp,-4), gr4
	bra .L174
.L187:
	ldi @(fp,-4), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	mov gr4, gr6
	ldi @(fp,-8), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	cmp gr6,gr4,icc0
	beq icc0,0,.L177
	ldi @(fp,-4), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L178
	ldi @(fp,-8), gr4
	bra .L174
.L178:
	ldi @(fp,-4), gr4
	bra .L174
.L177:
	ldi @(fp,-8), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __ltsf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L188
	ldi @(fp,-8), gr4
	bra .L174
.L188:
	ldi @(fp,-4), gr4
.L174:
	mov gr4, gr8
	ldi @(sp,0), gr18
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
	mov gr15, gr18
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	sti gr10, @(fp,-16)
	sti gr11, @(fp,-12)
	nop
	ldi @(fp,-8), gr10
	ldi @(fp,-4), gr11
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __unorddf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L204
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L192
.L204:
	ldi @(fp,-16), gr10
	ldi @(fp,-12), gr11
	nop
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr18, gr15
	call __unorddf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L205
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L192
.L205:
	ldi @(fp,-8), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	mov gr4, gr6
	ldi @(fp,-16), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	cmp gr6,gr4,icc0
	beq icc0,0,.L195
	ldi @(fp,-8), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L196
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L192
.L196:
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L192
.L195:
	ldi @(fp,-16), gr10
	ldi @(fp,-12), gr11
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __ltdf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L206
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L192
.L206:
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
.L192:
	mov gr4, gr8
	mov gr5, gr9
	ldi @(sp,0), gr18
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
	mov gr15, gr18
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	sti gr10, @(fp,-16)
	sti gr11, @(fp,-12)
	nop
	ldi @(fp,-8), gr10
	ldi @(fp,-4), gr11
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __unorddf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L222
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L210
.L222:
	ldi @(fp,-16), gr10
	ldi @(fp,-12), gr11
	nop
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr18, gr15
	call __unorddf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L223
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L210
.L223:
	ldi @(fp,-8), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	mov gr4, gr6
	ldi @(fp,-16), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	cmp gr6,gr4,icc0
	beq icc0,0,.L213
	ldi @(fp,-8), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L214
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L210
.L214:
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L210
.L213:
	ldi @(fp,-16), gr10
	ldi @(fp,-12), gr11
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __ltdf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L224
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L210
.L224:
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
.L210:
	mov gr4, gr8
	mov gr5, gr9
	ldi @(sp,0), gr18
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
	mov gr15, gr18
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	ldi @(fp,-4), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __unordsf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L240
	ldi @(fp,-8), gr4
	bra .L228
.L240:
	ldi @(fp,-8), gr9
	ldi @(fp,-8), gr8
	mov gr18, gr15
	call __unordsf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L241
	ldi @(fp,-4), gr4
	bra .L228
.L241:
	ldi @(fp,-4), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	mov gr4, gr6
	ldi @(fp,-8), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	cmp gr6,gr4,icc0
	beq icc0,0,.L231
	ldi @(fp,-4), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L232
	ldi @(fp,-4), gr4
	bra .L228
.L232:
	ldi @(fp,-8), gr4
	bra .L228
.L231:
	ldi @(fp,-8), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __ltsf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L242
	ldi @(fp,-4), gr4
	bra .L228
.L242:
	ldi @(fp,-8), gr4
.L228:
	mov gr4, gr8
	ldi @(sp,0), gr18
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
	mov gr15, gr18
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	sti gr10, @(fp,-16)
	sti gr11, @(fp,-12)
	nop
	ldi @(fp,-8), gr10
	ldi @(fp,-4), gr11
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __unorddf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L258
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L246
.L258:
	ldi @(fp,-16), gr10
	ldi @(fp,-12), gr11
	nop
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr18, gr15
	call __unorddf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L259
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L246
.L259:
	ldi @(fp,-8), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	mov gr4, gr6
	ldi @(fp,-16), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	cmp gr6,gr4,icc0
	beq icc0,0,.L249
	ldi @(fp,-8), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L250
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L246
.L250:
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L246
.L249:
	ldi @(fp,-16), gr10
	ldi @(fp,-12), gr11
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __ltdf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L260
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L246
.L260:
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
.L246:
	mov gr4, gr8
	mov gr5, gr9
	ldi @(sp,0), gr18
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
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr15, gr4
	sti gr8, @(fp,-12)
	ldi @(fp,-12), gr5
	sti gr5, @(fp,-8)
	sethi #gotoffhi(s.0), gr5
	setlo #gotofflo(s.0), gr5
	add gr5,gr4,gr5
	sti gr5, @(fp,-4)
	bra .L262
.L263:
	ldi @(fp,-8), gr5
	andi gr5, #63, gr5
	ldi @(gr4,#got12(_gp)), gr6
	sethi #gprelhi(digits), gr7
	setlo #gprello(digits), gr7
	add gr7,gr6,gr6
	ldsb @(gr6,gr5),gr6
	ldi @(fp,-4), gr5
	stb gr6, @(gr5,gr0)
	ldi @(fp,-4), gr5
	addi gr5,#1,gr5
	sti gr5, @(fp,-4)
	ldi @(fp,-8), gr5
	srli gr5, #6, gr5
	sti gr5, @(fp,-8)
.L262:
	ldi @(fp,-8), gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L263
	ldi @(fp,-4), gr5
	stb gr0, @(gr5,gr0)
	sethi #gotoffhi(s.0), gr5
	setlo #gotofflo(s.0), gr5
	add gr5,gr4,gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
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
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr15, gr4
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr5
	addi gr5,#-1,gr5
	mov gr5, gr6
	setlos #0, gr7
	sethi #gotoffhi(seed), gr5
	setlo #gotofflo(seed), gr5
	add gr5,gr4,gr4
	st gr7, @(gr4,gr0)
	sti gr6, @(gr4,4)
	nop
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
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
	mov gr15, gr18
	sethi #gotoffhi(seed), gr4
	setlo #gotofflo(seed), gr4
	add gr4,gr18,gr4
	sethi #hi(#1481765933), gr10
	setlo #lo(#1481765933), gr10
	sethi #hi(#1284865837), gr11
	setlo #lo(#1284865837), gr11
	ld @(gr4,gr0), gr8
	ldi @(gr4,4), gr9
	nop
	mov gr18, gr15
	call __mulll
	mov gr8, gr4
	mov gr9, gr5
	addicc gr5,#1,gr5,icc0
	addxi gr4,#0,gr4,icc0
	sethi #gotoffhi(seed), gr6
	setlo #gotofflo(seed), gr6
	add gr6,gr18,gr6
	st gr4, @(gr6,gr0)
	sti gr5, @(gr6,4)
	nop
	sethi #gotoffhi(seed), gr4
	setlo #gotofflo(seed), gr4
	add gr4,gr18,gr4
	ld @(gr4,gr0), gr4
	srli gr4, #1, gr4
	mov gr4, gr8
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
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	ldi @(fp,-8), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L269
	ldi @(fp,-4), gr4
	sti gr0, @(gr4,4)
	ldi @(fp,-4), gr4
	ldi @(gr4,4), gr5
	ldi @(fp,-4), gr4
	st gr5, @(gr4,gr0)
	bra .L268
.L269:
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr5
	ldi @(fp,-4), gr4
	st gr5, @(gr4,gr0)
	ldi @(fp,-4), gr4
	ldi @(fp,-8), gr5
	sti gr5, @(gr4,4)
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	st gr5, @(gr4,gr0)
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L268
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	ldi @(fp,-4), gr5
	sti gr5, @(gr4,4)
.L268:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	insque, .-insque
	.p2align 4
	.globl remque
	.type	remque, @function
remque:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L272
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	ldi @(fp,-4), gr5
	ldi @(gr5,4), gr5
	sti gr5, @(gr4,4)
.L272:
	ldi @(fp,-4), gr4
	ldi @(gr4,4), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L274
	ldi @(fp,-4), gr4
	ldi @(gr4,4), gr4
	ldi @(fp,-4), gr5
	ld @(gr5,gr0), gr5
	st gr5, @(gr4,gr0)
.L274:
	nop
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	remque, .-remque
	.p2align 4
	.globl lsearch
	.type	lsearch, @function
lsearch:
	addi sp,#-64,sp
	sti fp, @(sp,48)
	addi sp,#48,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	mov gr15, gr19
	sti gr8, @(fp,-20)
	sti gr9, @(fp,-24)
	sti gr10, @(fp,-28)
	sti gr11, @(fp,-32)
	sti gr12, @(fp,-36)
	ldi @(fp,-32), gr18
	addi gr18,#-1,gr4
	sti gr4, @(fp,-8)
	mov gr18, gr5
	setlos #0, gr4
	srli gr5, #29, gr6
	slli gr4,#3,gr4
	or gr6, gr4, gr4
	slli gr5,#3,gr5
	ldi @(fp,-28), gr4
	ld @(gr4,gr0), gr4
	sti gr4, @(fp,-12)
	sti gr0, @(fp,-4)
	bra .L276
.L279:
	ldi @(fp,-4), gr4
	umul gr18,gr4,gr4
	ldi @(fp,-24), gr6
	add gr6,gr5,gr5
	ldi @(fp,-36), gr4
	mov gr5, gr9
	ldi @(fp,-20), gr8
	ldd @(gr4,gr0), gr14
	calll @(gr14,gr0)
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L277
	ldi @(fp,-4), gr4
	umul gr18,gr4,gr4
	ldi @(fp,-24), gr6
	add gr6,gr5,gr4
	bra .L278
.L277:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L276:
	ldi @(fp,-4), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bc icc0,2,.L279
	ldi @(fp,-12), gr4
	addi gr4,#1,gr5
	ldi @(fp,-28), gr4
	st gr5, @(gr4,gr0)
	ldi @(fp,-12), gr4
	umul gr18,gr4,gr4
	ldi @(fp,-24), gr6
	add gr6,gr5,gr4
	ldi @(fp,-32), gr10
	ldi @(fp,-20), gr9
	mov gr4, gr8
	mov gr19, gr15
	call memcpy
	mov gr8, gr4
.L278:
	mov gr4, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#64,sp
	jmpl @(gr5,gr0)
	.size	lsearch, .-lsearch
	.p2align 4
	.globl lfind
	.type	lfind, @function
lfind:
	addi sp,#-64,sp
	sti fp, @(sp,48)
	addi sp,#48,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr8, @(fp,-20)
	sti gr9, @(fp,-24)
	sti gr10, @(fp,-28)
	sti gr11, @(fp,-32)
	sti gr12, @(fp,-36)
	ldi @(fp,-32), gr18
	addi gr18,#-1,gr4
	sti gr4, @(fp,-8)
	mov gr18, gr5
	setlos #0, gr4
	srli gr5, #29, gr6
	slli gr4,#3,gr4
	or gr6, gr4, gr4
	slli gr5,#3,gr5
	ldi @(fp,-28), gr4
	ld @(gr4,gr0), gr4
	sti gr4, @(fp,-12)
	sti gr0, @(fp,-4)
	bra .L281
.L284:
	ldi @(fp,-4), gr4
	umul gr18,gr4,gr4
	ldi @(fp,-24), gr6
	add gr6,gr5,gr5
	ldi @(fp,-36), gr4
	mov gr5, gr9
	ldi @(fp,-20), gr8
	ldd @(gr4,gr0), gr14
	calll @(gr14,gr0)
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L282
	ldi @(fp,-4), gr4
	umul gr18,gr4,gr4
	ldi @(fp,-24), gr6
	add gr6,gr5,gr4
	bra .L283
.L282:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L281:
	ldi @(fp,-4), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bc icc0,2,.L284
	setlos #0, gr4
.L283:
	mov gr4, gr8
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#64,sp
	jmpl @(gr5,gr0)
	.size	lfind, .-lfind
	.p2align 4
	.globl abs
	.type	abs, @function
abs:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr4
	cmpi gr4,#0,icc0
	cklt icc0, cc4
	csub gr0, gr4, gr4, cc4, 1
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	abs, .-abs
	.p2align 4
	.globl atoi
	.type	atoi, @function
atoi:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	mov gr15, gr18
	sti gr8, @(fp,-12)
	sti gr0, @(fp,-4)
	sti gr0, @(fp,-8)
	bra .L288
.L289:
	ldi @(fp,-12), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-12)
.L288:
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr4
	mov gr4, gr8
	mov gr18, gr15
	call isspace
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L289
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L290
	cmpi gr4,#45,icc0
	bne icc0,0,.L292
	setlos #1, gr4
	sti gr4, @(fp,-8)
.L290:
	ldi @(fp,-12), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-12)
	bra .L292
.L293:
	ldi @(fp,-4), gr4
	smuli gr4,#10,gr4
	mov gr5, gr6
	ldi @(fp,-12), gr4
	addi gr4,#1,gr5
	sti gr5, @(fp,-12)
	ldsb @(gr4,gr0),gr4
	addi gr4,#-48,gr4
	sub gr6,gr4,gr4
	sti gr4, @(fp,-4)
.L292:
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L293
	ldi @(fp,-8), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L294
	ldi @(fp,-4), gr4
	sub gr0,gr4,gr4
	bra .L296
.L294:
	ldi @(fp,-4), gr4
.L296:
	nop
	mov gr4, gr8
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	atoi, .-atoi
	.p2align 4
	.globl atol
	.type	atol, @function
atol:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	mov gr15, gr18
	sti gr8, @(fp,-12)
	sti gr0, @(fp,-4)
	sti gr0, @(fp,-8)
	bra .L298
.L299:
	ldi @(fp,-12), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-12)
.L298:
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr4
	mov gr4, gr8
	mov gr18, gr15
	call isspace
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L299
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L300
	cmpi gr4,#45,icc0
	bne icc0,0,.L302
	setlos #1, gr4
	sti gr4, @(fp,-8)
.L300:
	ldi @(fp,-12), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-12)
	bra .L302
.L303:
	ldi @(fp,-4), gr4
	smuli gr4,#10,gr4
	mov gr5, gr6
	ldi @(fp,-12), gr4
	addi gr4,#1,gr5
	sti gr5, @(fp,-12)
	ldsb @(gr4,gr0),gr4
	addi gr4,#-48,gr4
	sub gr6,gr4,gr4
	sti gr4, @(fp,-4)
.L302:
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L303
	ldi @(fp,-8), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L304
	ldi @(fp,-4), gr4
	sub gr0,gr4,gr4
	bra .L306
.L304:
	ldi @(fp,-4), gr4
.L306:
	nop
	mov gr4, gr8
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	atol, .-atol
	.p2align 4
	.globl atoll
	.type	atoll, @function
atoll:
	addi sp,#-64,sp
	sti fp, @(sp,48)
	addi sp,#48,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr22, @(sp,16)
	mov gr15, gr22
	sti gr8, @(fp,-20)
	sti gr0, @(fp,-8)
	sti gr0, @(fp,-4)
	nop
	sti gr0, @(fp,-12)
	bra .L308
.L309:
	ldi @(fp,-20), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-20)
.L308:
	ldi @(fp,-20), gr4
	ldsb @(gr4,gr0),gr4
	mov gr4, gr8
	mov gr22, gr15
	call isspace
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L309
	ldi @(fp,-20), gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L310
	cmpi gr4,#45,icc0
	bne icc0,0,.L312
	setlos #1, gr4
	sti gr4, @(fp,-12)
.L310:
	ldi @(fp,-20), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-20)
	bra .L312
.L313:
	ldi @(fp,-8), gr6
	ldi @(fp,-4), gr7
	nop
	mov gr6, gr4
	mov gr7, gr5
	srli gr5, #30, gr8
	slli gr4,#2,gr18
	or gr8, gr18, gr18
	slli gr5,#2,gr19
	addcc gr19,gr7,gr5,icc0
	addx gr18,gr6,gr4,icc0
	srli gr5, #31, gr7
	slli gr4,#1,gr6
	or gr7, gr6, gr6
	slli gr5,#1,gr7
	mov gr6, gr4
	mov gr7, gr5
	mov gr4, gr6
	mov gr5, gr7
	ldi @(fp,-20), gr4
	addi gr4,#1,gr5
	sti gr5, @(fp,-20)
	ldsb @(gr4,gr0),gr4
	addi gr4,#-48,gr4
	mov gr4, gr21
	srai gr4, #31, gr4
	mov gr4, gr20
	subcc gr7,gr21,gr5,icc0
	subx gr6,gr20,gr4,icc0
	sti gr4, @(fp,-8)
	sti gr5, @(fp,-4)
	nop
.L312:
	ldi @(fp,-20), gr4
	ldsb @(gr4,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L313
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L314
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	subcc gr0,gr5,gr5,icc0
	subx gr0,gr4,gr4,icc0
	bra .L316
.L314:
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
.L316:
	nop
	mov gr4, gr8
	mov gr5, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(sp,16), gr22
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#64,sp
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
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr10, @(fp,-20)
	sti gr11, @(fp,-24)
	sti gr12, @(fp,-28)
	bra .L318
.L323:
	ldi @(fp,-20), gr4
	srli gr4, #1, gr5
	ldi @(fp,-24), gr4
	umul gr5,gr4,gr4
	ldi @(fp,-16), gr4
	add gr4,gr5,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-28), gr4
	ldi @(fp,-4), gr9
	ldi @(fp,-12), gr8
	ldd @(gr4,gr0), gr14
	calll @(gr14,gr0)
	mov gr8, gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-8), gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L319
	ldi @(fp,-20), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-20)
	bra .L318
.L319:
	ldi @(fp,-8), gr4
	cmpi gr4,#0,icc0
	ble icc0,0,.L321
	ldi @(fp,-4), gr5
	ldi @(fp,-24), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-20), gr4
	srli gr4, #1, gr4
	ldi @(fp,-20), gr5
	sub gr5,gr4,gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-20)
	bra .L318
.L321:
	ldi @(fp,-4), gr4
	bra .L322
.L318:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L323
	setlos #0, gr4
.L322:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	bsearch, .-bsearch
	.p2align 4
	.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	addi sp,#-56,sp
	sti fp, @(sp,40)
	addi sp,#40,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-20)
	sti gr9, @(fp,-24)
	sti gr10, @(fp,-28)
	sti gr11, @(fp,-32)
	sti gr12, @(fp,-36)
	sti gr13, @(fp,-40)
	ldi @(fp,-28), gr4
	sti gr4, @(fp,-4)
	bra .L325
.L329:
	ldi @(fp,-4), gr4
	srai gr4, #1, gr5
	ldi @(fp,-32), gr4
	umul gr5,gr4,gr4
	ldi @(fp,-24), gr4
	add gr4,gr5,gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-36), gr4
	ldi @(fp,-40), gr10
	ldi @(fp,-8), gr9
	ldi @(fp,-20), gr8
	ldd @(gr4,gr0), gr14
	calll @(gr14,gr0)
	mov gr8, gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L326
	ldi @(fp,-8), gr4
	bra .L327
.L326:
	ldi @(fp,-12), gr4
	cmpi gr4,#0,icc0
	ble icc0,0,.L328
	ldi @(fp,-8), gr5
	ldi @(fp,-32), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-24)
	ldi @(fp,-4), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-4)
.L328:
	ldi @(fp,-4), gr4
	srai gr4, #1, gr4
	sti gr4, @(fp,-4)
.L325:
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L329
	setlos #0, gr4
.L327:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#56,sp
	jmpl @(gr5,gr0)
	.size	bsearch_r, .-bsearch_r
	.p2align 4
	.globl div
	.type	div, @function
div:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	sti gr3, @(fp,4)
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr3, gr4
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	ldi @(fp,-12), gr6
	ldi @(fp,-16), gr5
	sdiv gr6,gr5,gr8
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr6
	sdiv gr5,gr6,gr7
	ldi @(fp,-16), gr6
	smul gr7,gr6,gr6
	mov gr7, gr6
	sub gr5,gr6,gr5
	st gr8, @(gr4,gr0)
	sti gr5, @(gr4,4)
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	div, .-div
	.p2align 4
	.globl imaxabs
	.type	imaxabs, @function
imaxabs:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	cmpi gr4, #0, icc0
	bp icc0,0,.L333
	subcc gr0,gr5,gr5,icc0
	subx gr0,gr4,gr4,icc0
.L333:
	mov gr4, gr8
	mov gr5, gr9
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	imaxabs, .-imaxabs
	.p2align 4
	.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	addi sp,#-64,sp
	sti fp, @(sp,48)
	addi sp,#48,fp
	sti gr3, @(fp,4)
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	mov gr15, gr19
	mov gr3, gr18
	sti gr8, @(fp,-24)
	sti gr9, @(fp,-20)
	nop
	sti gr10, @(fp,-32)
	sti gr11, @(fp,-28)
	nop
	ldi @(fp,-32), gr10
	ldi @(fp,-28), gr11
	nop
	ldi @(fp,-24), gr8
	ldi @(fp,-20), gr9
	nop
	mov gr19, gr15
	call __divll
	mov gr8, gr4
	mov gr9, gr5
	mov gr4, gr20
	mov gr5, gr21
	ldi @(fp,-24), gr4
	ldi @(fp,-20), gr5
	nop
	ldi @(fp,-32), gr10
	ldi @(fp,-28), gr11
	nop
	mov gr4, gr8
	mov gr5, gr9
	mov gr19, gr15
	call __modll
	mov gr8, gr4
	mov gr9, gr5
	st gr20, @(gr18,gr0)
	sti gr21, @(gr18,4)
	nop
	sti gr4, @(gr18,8)
	sti gr5, @(gr18,12)
	nop
	mov gr18, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#64,sp
	jmpl @(gr5,gr0)
	.size	imaxdiv, .-imaxdiv
	.p2align 4
	.globl labs
	.type	labs, @function
labs:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr4
	cmpi gr4,#0,icc0
	cklt icc0, cc4
	csub gr0, gr4, gr4, cc4, 1
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	labs, .-labs
	.p2align 4
	.globl ldiv
	.type	ldiv, @function
ldiv:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	sti gr3, @(fp,4)
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr3, gr4
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	ldi @(fp,-12), gr6
	ldi @(fp,-16), gr5
	sdiv gr6,gr5,gr8
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr6
	sdiv gr5,gr6,gr7
	ldi @(fp,-16), gr6
	smul gr7,gr6,gr6
	mov gr7, gr6
	sub gr5,gr6,gr5
	st gr8, @(gr4,gr0)
	sti gr5, @(gr4,4)
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	ldiv, .-ldiv
	.p2align 4
	.globl llabs
	.type	llabs, @function
llabs:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	cmpi gr4, #0, icc0
	bp icc0,0,.L343
	subcc gr0,gr5,gr5,icc0
	subx gr0,gr4,gr4,icc0
.L343:
	mov gr4, gr8
	mov gr5, gr9
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	llabs, .-llabs
	.p2align 4
	.globl lldiv
	.type	lldiv, @function
lldiv:
	addi sp,#-64,sp
	sti fp, @(sp,48)
	addi sp,#48,fp
	sti gr3, @(fp,4)
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	mov gr15, gr19
	mov gr3, gr18
	sti gr8, @(fp,-24)
	sti gr9, @(fp,-20)
	nop
	sti gr10, @(fp,-32)
	sti gr11, @(fp,-28)
	nop
	ldi @(fp,-32), gr10
	ldi @(fp,-28), gr11
	nop
	ldi @(fp,-24), gr8
	ldi @(fp,-20), gr9
	nop
	mov gr19, gr15
	call __divll
	mov gr8, gr4
	mov gr9, gr5
	mov gr4, gr20
	mov gr5, gr21
	ldi @(fp,-24), gr4
	ldi @(fp,-20), gr5
	nop
	ldi @(fp,-32), gr10
	ldi @(fp,-28), gr11
	nop
	mov gr4, gr8
	mov gr5, gr9
	mov gr19, gr15
	call __modll
	mov gr8, gr4
	mov gr9, gr5
	st gr20, @(gr18,gr0)
	sti gr21, @(gr18,4)
	nop
	sti gr4, @(gr18,8)
	sti gr5, @(gr18,12)
	nop
	mov gr18, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#64,sp
	jmpl @(gr5,gr0)
	.size	lldiv, .-lldiv
	.p2align 4
	.globl wcschr
	.type	wcschr, @function
wcschr:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	bra .L349
.L351:
	ldi @(fp,-4), gr4
	addi gr4,#4,gr4
	sti gr4, @(fp,-4)
.L349:
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L350
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	ldi @(fp,-8), gr5
	cmp gr5,gr4,icc0
	bne icc0,2,.L351
.L350:
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L352
	ldi @(fp,-4), gr4
	bra .L354
.L352:
	setlos #0, gr4
.L354:
	nop
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	wcschr, .-wcschr
	.p2align 4
	.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	bra .L356
.L358:
	ldi @(fp,-4), gr4
	addi gr4,#4,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	addi gr4,#4,gr4
	sti gr4, @(fp,-8)
.L356:
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr5
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L357
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L357
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L358
.L357:
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr5
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,0,.L359
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr5
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmp gr5,gr4,icc0
	ckgt icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	bra .L361
.L359:
	setlos #-1, gr4
.L361:
	nop
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	wcscmp, .-wcscmp
	.p2align 4
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
.L363:
	ldi @(fp,-16), gr5
	addi gr5,#4,gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-4), gr4
	addi gr4,#4,gr6
	sti gr6, @(fp,-4)
	ld @(gr5,gr0), gr5
	st gr5, @(gr4,gr0)
	ld @(gr4,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L363
	ldi @(fp,-12), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	wcscpy, .-wcscpy
	.p2align 4
	.globl wcslen
	.type	wcslen, @function
wcslen:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	bra .L366
.L367:
	ldi @(fp,-4), gr4
	addi gr4,#4,gr4
	sti gr4, @(fp,-4)
.L366:
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L367
	ldi @(fp,-4), gr5
	ldi @(fp,-12), gr4
	sub gr5,gr4,gr4
	srai gr4, #2, gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	wcslen, .-wcslen
	.p2align 4
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	sti gr10, @(fp,-12)
	bra .L370
.L372:
	ldi @(fp,-12), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-4), gr4
	addi gr4,#4,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	addi gr4,#4,gr4
	sti gr4, @(fp,-8)
.L370:
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L371
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr5
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L371
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L371
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L372
.L371:
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L373
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr5
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,0,.L374
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr5
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmp gr5,gr4,icc0
	ckgt icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	bra .L377
.L374:
	setlos #-1, gr4
	bra .L377
.L373:
	setlos #0, gr4
.L377:
	nop
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	wcsncmp, .-wcsncmp
	.p2align 4
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	sti gr10, @(fp,-12)
	bra .L379
.L381:
	ldi @(fp,-12), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-4), gr4
	addi gr4,#4,gr4
	sti gr4, @(fp,-4)
.L379:
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L380
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	ldi @(fp,-8), gr5
	cmp gr5,gr4,icc0
	bne icc0,2,.L381
.L380:
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L382
	ldi @(fp,-4), gr4
	bra .L384
.L382:
	setlos #0, gr4
.L384:
	nop
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	wmemchr, .-wmemchr
	.p2align 4
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	sti gr10, @(fp,-12)
	bra .L386
.L388:
	ldi @(fp,-12), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-4), gr4
	addi gr4,#4,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	addi gr4,#4,gr4
	sti gr4, @(fp,-8)
.L386:
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L387
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr5
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L388
.L387:
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L389
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr5
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,0,.L390
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr5
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmp gr5,gr4,icc0
	ckgt icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	bra .L393
.L390:
	setlos #-1, gr4
	bra .L393
.L389:
	setlos #0, gr4
.L393:
	nop
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	wmemcmp, .-wmemcmp
	.p2align 4
	.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr10, @(fp,-20)
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	bra .L395
.L396:
	ldi @(fp,-16), gr5
	addi gr5,#4,gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-4), gr4
	addi gr4,#4,gr6
	sti gr6, @(fp,-4)
	ld @(gr5,gr0), gr5
	st gr5, @(gr4,gr0)
.L395:
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr5
	sti gr5, @(fp,-20)
	cmpi gr4, #0, icc0
	bne icc0,2,.L396
	ldi @(fp,-12), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	wmemcpy, .-wmemcpy
	.p2align 4
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr10, @(fp,-20)
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L399
	ldi @(fp,-12), gr4
	bra .L400
.L399:
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	sub gr5,gr4,gr5
	ldi @(fp,-20), gr4
	slli gr4,#2,gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L401
	bra .L402
.L403:
	ldi @(fp,-20), gr4
	slli gr4,#2,gr4
	ldi @(fp,-12), gr5
	add gr5,gr4,gr4
	ldi @(fp,-20), gr5
	slli gr5,#2,gr5
	ldi @(fp,-16), gr6
	add gr6,gr5,gr5
	ld @(gr5,gr0), gr5
	st gr5, @(gr4,gr0)
.L402:
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr5
	sti gr5, @(fp,-20)
	cmpi gr4, #0, icc0
	bne icc0,2,.L403
	bra .L404
.L401:
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	bra .L405
.L406:
	ldi @(fp,-16), gr5
	addi gr5,#4,gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-4), gr4
	addi gr4,#4,gr6
	sti gr6, @(fp,-4)
	ld @(gr5,gr0), gr5
	st gr5, @(gr4,gr0)
.L405:
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr5
	sti gr5, @(fp,-20)
	cmpi gr4, #0, icc0
	bne icc0,2,.L406
.L404:
	ldi @(fp,-12), gr4
.L400:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	wmemmove, .-wmemmove
	.p2align 4
	.globl wmemset
	.type	wmemset, @function
wmemset:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr10, @(fp,-20)
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	bra .L408
.L409:
	ldi @(fp,-4), gr4
	addi gr4,#4,gr5
	sti gr5, @(fp,-4)
	ldi @(fp,-16), gr5
	st gr5, @(gr4,gr0)
.L408:
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr5
	sti gr5, @(fp,-20)
	cmpi gr4, #0, icc0
	bne icc0,2,.L409
	ldi @(fp,-12), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	wmemset, .-wmemset
	.p2align 4
	.globl bcopy
	.type	bcopy, @function
bcopy:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr10, @(fp,-20)
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L412
	ldi @(fp,-12), gr5
	ldi @(fp,-20), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-16), gr5
	ldi @(fp,-20), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-8)
	bra .L413
.L414:
	ldi @(fp,-4), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-4), gr4
	ldsb @(gr4,gr0),gr5
	ldi @(fp,-8), gr4
	stb gr5, @(gr4,gr0)
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-20)
.L413:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L414
	bra .L418
.L412:
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	beq icc0,0,.L418
	bra .L416
.L417:
	ldi @(fp,-12), gr5
	addi gr5,#1,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-16), gr4
	addi gr4,#1,gr6
	sti gr6, @(fp,-16)
	ldsb @(gr5,gr0),gr5
	stb gr5, @(gr4,gr0)
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-20)
.L416:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L417
.L418:
	nop
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	bcopy, .-bcopy
	.p2align 4
	.globl rotl64
	.type	rotl64, @function
rotl64:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	sti gr10, @(fp,-12)
	ldi @(fp,-8), gr6
	ldi @(fp,-4), gr4
	ldi @(fp,-12), gr5
	addi gr5,#-32,gr8
	sll gr4,gr8,gr9
	setlos #0, gr11
	srli gr4, #1, gr7
	setlos #31, gr10
	ldi @(fp,-12), gr5
	sub gr10,gr5,gr5
	srl gr7, gr5, gr7
	ldi @(fp,-12), gr5
	sll gr6,gr5,gr5
	or gr7, gr5, gr5
	ldi @(fp,-12), gr7
	sll gr4,gr7,gr7
	cmpi gr8, #0, icc0
	ckp icc0, cc4
	cmov gr9, gr5, cc4, 1
	cmpi gr8, #0, icc0
	ckp icc0, cc4
	cmov gr11, gr7, cc4, 1
	ldi @(fp,-12), gr8
	sub gr0,gr8,gr8
	andi gr8, #63, gr8
	addi gr8,#-32,gr8
	srl gr6, gr8, gr10
	setlos #0, gr13
	slli gr6,#1,gr11
	setlos #31, gr12
	ldi @(fp,-12), gr9
	sub gr0,gr9,gr9
	andi gr9, #63, gr9
	sub gr12,gr9,gr9
	sll gr11,gr9,gr11
	ldi @(fp,-12), gr9
	sub gr0,gr9,gr9
	andi gr9, #63, gr9
	srl gr4, gr9, gr4
	or gr11, gr4, gr4
	ldi @(fp,-12), gr9
	sub gr0,gr9,gr9
	andi gr9, #63, gr9
	srl gr6, gr9, gr6
	cmpi gr8, #0, icc0
	ckp icc0, cc4
	cmov gr10, gr4, cc4, 1
	cmpi gr8, #0, icc0
	ckp icc0, cc4
	cmov gr13, gr6, cc4, 1
	or gr6, gr5, gr5
	or gr4, gr7, gr4
	mov gr5, gr6
	mov gr6, gr8
	mov gr4, gr9
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	rotl64, .-rotl64
	.p2align 4
	.globl rotr64
	.type	rotr64, @function
rotr64:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	sti gr10, @(fp,-12)
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr6
	ldi @(fp,-12), gr5
	addi gr5,#-32,gr8
	srl gr4, gr8, gr9
	setlos #0, gr11
	slli gr4,#1,gr7
	setlos #31, gr10
	ldi @(fp,-12), gr5
	sub gr10,gr5,gr5
	sll gr7,gr5,gr7
	ldi @(fp,-12), gr5
	srl gr6, gr5, gr5
	or gr7, gr5, gr5
	ldi @(fp,-12), gr7
	srl gr4, gr7, gr7
	cmpi gr8, #0, icc0
	ckp icc0, cc4
	cmov gr9, gr5, cc4, 1
	cmpi gr8, #0, icc0
	ckp icc0, cc4
	cmov gr11, gr7, cc4, 1
	ldi @(fp,-12), gr8
	sub gr0,gr8,gr8
	andi gr8, #63, gr8
	addi gr8,#-32,gr8
	sll gr6,gr8,gr10
	setlos #0, gr13
	srli gr6, #1, gr11
	setlos #31, gr12
	ldi @(fp,-12), gr9
	sub gr0,gr9,gr9
	andi gr9, #63, gr9
	sub gr12,gr9,gr9
	srl gr11, gr9, gr11
	ldi @(fp,-12), gr9
	sub gr0,gr9,gr9
	andi gr9, #63, gr9
	sll gr4,gr9,gr4
	or gr11, gr4, gr4
	ldi @(fp,-12), gr9
	sub gr0,gr9,gr9
	andi gr9, #63, gr9
	sll gr6,gr9,gr6
	cmpi gr8, #0, icc0
	ckp icc0, cc4
	cmov gr10, gr4, cc4, 1
	cmpi gr8, #0, icc0
	ckp icc0, cc4
	cmov gr13, gr6, cc4, 1
	or gr4, gr7, gr4
	or gr6, gr5, gr5
	mov gr5, gr6
	mov gr4, gr8
	mov gr6, gr9
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	rotr64, .-rotr64
	.p2align 4
	.globl rotl32
	.type	rotl32, @function
rotl32:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	ldi @(fp,-4), gr5
	ldi @(fp,-8), gr4
	sll gr5,gr4,gr6
	ldi @(fp,-8), gr4
	sub gr0,gr4,gr4
	andi gr4, #31, gr4
	srl gr5, gr4, gr4
	or gr4, gr6, gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	rotl32, .-rotl32
	.p2align 4
	.globl rotr32
	.type	rotr32, @function
rotr32:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	ldi @(fp,-4), gr5
	ldi @(fp,-8), gr4
	srl gr5, gr4, gr6
	ldi @(fp,-8), gr4
	sub gr0,gr4,gr4
	andi gr4, #31, gr4
	sll gr5,gr4,gr4
	or gr4, gr6, gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	rotr32, .-rotr32
	.p2align 4
	.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	ldi @(fp,-4), gr5
	ldi @(fp,-8), gr4
	sll gr5,gr4,gr6
	ldi @(fp,-8), gr4
	sub gr0,gr4,gr4
	andi gr4, #31, gr4
	srl gr5, gr4, gr4
	or gr4, gr6, gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	rotl_sz, .-rotl_sz
	.p2align 4
	.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	ldi @(fp,-4), gr5
	ldi @(fp,-8), gr4
	srl gr5, gr4, gr6
	ldi @(fp,-8), gr4
	sub gr0,gr4,gr4
	andi gr4, #31, gr4
	sll gr5,gr4,gr4
	or gr4, gr6, gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	rotr_sz, .-rotr_sz
	.p2align 4
	.globl rotl16
	.type	rotl16, @function
rotl16:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sthi gr8, @(fp,-2)
	sti gr9, @(fp,-8)
	lduhi @(fp,-2),gr5
	ldi @(fp,-8), gr4
	sll gr5,gr4,gr4
	mov gr4, gr5
	sethi #hi(#0),gr5
	lduhi @(fp,-2),gr6
	setlos #16, gr7
	ldi @(fp,-8), gr4
	sub gr7,gr4,gr4
	srl gr6, gr4, gr4
	sethi #hi(#0),gr4
	or gr5, gr4, gr4
	sethi #hi(#0),gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	rotl16, .-rotl16
	.p2align 4
	.globl rotr16
	.type	rotr16, @function
rotr16:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sthi gr8, @(fp,-2)
	sti gr9, @(fp,-8)
	lduhi @(fp,-2),gr5
	ldi @(fp,-8), gr4
	srl gr5, gr4, gr4
	mov gr4, gr5
	sethi #hi(#0),gr5
	lduhi @(fp,-2),gr6
	setlos #16, gr7
	ldi @(fp,-8), gr4
	sub gr7,gr4,gr4
	sll gr6,gr4,gr4
	sethi #hi(#0),gr4
	or gr5, gr4, gr4
	sethi #hi(#0),gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	rotr16, .-rotr16
	.p2align 4
	.globl rotl8
	.type	rotl8, @function
rotl8:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	stbi gr8, @(fp,-1)
	sti gr9, @(fp,-8)
	ldubi @(fp,-1),gr5
	ldi @(fp,-8), gr4
	sll gr5,gr4,gr4
	andi gr4,#0xff,gr5
	ldubi @(fp,-1),gr6
	setlos #8, gr7
	ldi @(fp,-8), gr4
	sub gr7,gr4,gr4
	srl gr6, gr4, gr4
	andi gr4,#0xff,gr4
	or gr5, gr4, gr4
	andi gr4,#0xff,gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	rotl8, .-rotl8
	.p2align 4
	.globl rotr8
	.type	rotr8, @function
rotr8:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	stbi gr8, @(fp,-1)
	sti gr9, @(fp,-8)
	ldubi @(fp,-1),gr5
	ldi @(fp,-8), gr4
	srl gr5, gr4, gr4
	andi gr4,#0xff,gr5
	ldubi @(fp,-1),gr6
	setlos #8, gr7
	ldi @(fp,-8), gr4
	sub gr7,gr4,gr4
	sll gr6,gr4,gr4
	andi gr4,#0xff,gr4
	or gr5, gr4, gr4
	andi gr4,#0xff,gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	rotr8, .-rotr8
	.p2align 4
	.globl bswap_16
	.type	bswap_16, @function
bswap_16:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sthi gr8, @(fp,-10)
	setlos #255, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	slli gr4,#8,gr4
	lduhi @(fp,-10),gr5
	and gr5, gr4, gr4
	srli gr4, #8, gr5
	ldi @(fp,-4), gr6
	ldshi @(fp,-10),gr4
	and gr4, gr6, gr4
	sethi #hi(#0),gr4
	slli gr4,#8,gr4
	sethi #hi(#0),gr4
	or gr4, gr5, gr4
	sethi #hi(#0),gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	bswap_16, .-bswap_16
	.p2align 4
	.globl bswap_32
	.type	bswap_32, @function
bswap_32:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	setlos #255, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	slli gr4,#24,gr5
	ldi @(fp,-12), gr4
	and gr5, gr4, gr4
	srli gr4, #24, gr5
	ldi @(fp,-4), gr4
	slli gr4,#16,gr6
	ldi @(fp,-12), gr4
	and gr6, gr4, gr4
	srli gr4, #8, gr4
	or gr5, gr4, gr5
	ldi @(fp,-4), gr4
	slli gr4,#8,gr6
	ldi @(fp,-12), gr4
	and gr6, gr4, gr4
	slli gr4,#8,gr4
	or gr5, gr4, gr5
	ldi @(fp,-12), gr6
	ldi @(fp,-4), gr4
	and gr6, gr4, gr4
	slli gr4,#24,gr4
	or gr5, gr4, gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	bswap_32, .-bswap_32
	.p2align 4
	.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-16)
	sti gr9, @(fp,-12)
	nop
	setlos #0, gr4
	setlos #255, gr5
	sti gr4, @(fp,-8)
	sti gr5, @(fp,-4)
	nop
	ldi @(fp,-4), gr4
	slli gr4,#24,gr4
	ldi @(fp,-16), gr5
	and gr5, gr4, gr4
	srli gr4, #24, gr5
	setlos #0, gr7
	ldi @(fp,-4), gr4
	slli gr4,#16,gr4
	ldi @(fp,-16), gr6
	and gr6, gr4, gr4
	srli gr4, #8, gr4
	setlos #0, gr6
	or gr7, gr6, gr6
	or gr5, gr4, gr7
	ldi @(fp,-4), gr4
	slli gr4,#8,gr4
	setlos #0, gr8
	ldi @(fp,-16), gr5
	and gr5, gr4, gr5
	ldi @(fp,-12), gr4
	and gr4, gr8, gr4
	slli gr5,#8,gr8
	srli gr4, #24, gr4
	or gr8, gr4, gr4
	srli gr5, #24, gr5
	or gr6, gr5, gr6
	or gr7, gr4, gr7
	ldi @(fp,-4), gr4
	slli gr4,#0,gr4
	setlos #0, gr8
	ldi @(fp,-16), gr5
	and gr5, gr4, gr5
	ldi @(fp,-12), gr4
	and gr4, gr8, gr4
	slli gr5,#24,gr8
	srli gr4, #8, gr4
	or gr8, gr4, gr4
	srli gr5, #8, gr5
	or gr6, gr5, gr6
	or gr7, gr4, gr7
	ldi @(fp,-4), gr4
	srli gr4, #8, gr5
	ldi @(fp,-8), gr4
	slli gr4,#24,gr4
	or gr5, gr4, gr4
	ldi @(fp,-4), gr5
	slli gr5,#24,gr5
	ldi @(fp,-16), gr8
	and gr8, gr4, gr4
	ldi @(fp,-12), gr8
	and gr8, gr5, gr5
	srli gr5, #24, gr8
	slli gr4,#8,gr4
	or gr8, gr4, gr4
	slli gr5,#8,gr5
	or gr6, gr4, gr6
	or gr7, gr5, gr7
	ldi @(fp,-4), gr4
	srli gr4, #16, gr5
	ldi @(fp,-8), gr4
	slli gr4,#16,gr4
	or gr5, gr4, gr4
	ldi @(fp,-4), gr5
	slli gr5,#16,gr5
	ldi @(fp,-16), gr8
	and gr8, gr4, gr4
	ldi @(fp,-12), gr8
	and gr8, gr5, gr5
	srli gr5, #8, gr8
	slli gr4,#24,gr4
	or gr8, gr4, gr4
	slli gr5,#24,gr5
	or gr6, gr4, gr6
	or gr7, gr5, gr4
	ldi @(fp,-4), gr5
	slli gr5,#8,gr5
	ldi @(fp,-12), gr7
	and gr7, gr5, gr5
	slli gr5,#8,gr5
	setlos #0, gr7
	or gr6, gr5, gr6
	or gr4, gr7, gr4
	ldi @(fp,-12), gr7
	ldi @(fp,-4), gr5
	and gr7, gr5, gr5
	slli gr5,#24,gr5
	setlos #0, gr7
	or gr6, gr5, gr5
	or gr4, gr7, gr4
	mov gr5, gr8
	mov gr4, gr9
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	bswap_64, .-bswap_64
	.p2align 4
	.globl ffs
	.type	ffs, @function
ffs:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr0, @(fp,-4)
	bra .L446
.L449:
	ldi @(fp,-12), gr5
	ldi @(fp,-4), gr4
	srl gr5, gr4, gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L447
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	bra .L448
.L447:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L446:
	ldi @(fp,-4), gr4
	cmpi gr4,#31,icc0
	bls icc0,2,.L449
	setlos #0, gr4
.L448:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	ffs, .-ffs
	.p2align 4
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	addi sp,#-24,sp
	movsg lr, gr5
	sti gr5, @(sp,16)
	sti gr18, @(sp,0)
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L451
	setlos #0, gr18
	bra .L452
.L451:
	setlos #1, gr18
	bra .L453
.L454:
	srai gr4, #1, gr4
	addi gr18,#1,gr18
.L453:
	andi gr4, #1, gr5
	cmpi gr5, #0, icc0
	beq icc0,2,.L454
	nop
.L452:
	mov gr18, gr8
	ldi @(sp,0), gr18
	ldi @(sp,16), gr5
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	libiberty_ffs, .-libiberty_ffs
	.p2align 4
	.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	mov gr15, gr18
	sti gr8, @(fp,-4)
	sethi #hi(#4286578687), gr9
	setlo #lo(#4286578687), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __ltsf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bn icc0,0,.L456
	sethi #hi(#2139095039), gr9
	setlo #lo(#2139095039), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __gtsf2
	mov gr8, gr4
	cmpi gr4,#0,icc0
	ble icc0,0,.L461
.L456:
	setlos #1, gr4
	bra .L460
.L461:
	setlos #0, gr4
.L460:
	nop
	mov gr4, gr8
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
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
	mov gr15, gr18
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	sethi #hi(#4293918719), gr10
	setlo #lo(#4293918719), gr10
	sethi #hi(#4294967295), gr11
	setlo #lo(#4294967295), gr11
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __ltdf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bn icc0,0,.L463
	sethi #hi(#2146435071), gr10
	setlo #lo(#2146435071), gr10
	sethi #hi(#4294967295), gr11
	setlo #lo(#4294967295), gr11
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __gtdf2
	mov gr8, gr4
	cmpi gr4,#0,icc0
	ble icc0,0,.L468
.L463:
	setlos #1, gr4
	bra .L467
.L468:
	setlos #0, gr4
.L467:
	nop
	mov gr4, gr8
	ldi @(sp,0), gr18
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
	mov gr15, gr18
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	sethi #hi(#4293918719), gr10
	setlo #lo(#4293918719), gr10
	sethi #hi(#4294967295), gr11
	setlo #lo(#4294967295), gr11
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __ltdf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bn icc0,0,.L470
	sethi #hi(#2146435071), gr10
	setlo #lo(#2146435071), gr10
	sethi #hi(#4294967295), gr11
	setlo #lo(#4294967295), gr11
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __gtdf2
	mov gr8, gr4
	cmpi gr4,#0,icc0
	ble icc0,0,.L475
.L470:
	setlos #1, gr4
	bra .L474
.L475:
	setlos #0, gr4
.L474:
	nop
	mov gr4, gr8
	ldi @(sp,0), gr18
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
	mov gr15, gr4
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	ldi @(fp,-8), gr8
	mov gr4, gr15
	call __itod
	mov gr8, gr4
	mov gr9, gr5
	ldi @(fp,-4), gr6
	st gr4, @(gr6,gr0)
	sti gr5, @(gr6,4)
	nop
	nop
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
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	mov gr15, gr18
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	ldi @(fp,-12), gr9
	ldi @(fp,-12), gr8
	mov gr18, gr15
	call __unordsf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L478
	ldi @(fp,-12), gr4
	mov gr4, gr9
	mov gr4, gr8
	mov gr18, gr15
	call __addf
	mov gr8, gr4
	mov gr4, gr9
	ldi @(fp,-12), gr8
	mov gr18, gr15
	call __nesf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L478
	ldi @(fp,-16), gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L480
	sethi #hi(#1056964608), gr4
	setlo #lo(#1056964608), gr4
	bra .L481
.L480:
	sethi #hi(#1073741824), gr4
	setlo #lo(#1073741824), gr4
.L481:
	sti gr4, @(fp,-4)
.L484:
	ldi @(fp,-16), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L482
	ldi @(fp,-4), gr9
	ldi @(fp,-12), gr8
	mov gr18, gr15
	call __mulf
	mov gr8, gr4
	sti gr4, @(fp,-12)
.L482:
	ldi @(fp,-16), gr4
	srli gr4, #31, gr5
	add gr5,gr4,gr4
	srai gr4, #1, gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-16), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L487
	ldi @(fp,-4), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __mulf
	mov gr8, gr4
	sti gr4, @(fp,-4)
	bra .L484
.L487:
	nop
.L478:
	ldi @(fp,-12), gr4
	mov gr4, gr8
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	ldexpf, .-ldexpf
	.p2align 4
	.globl ldexp
	.type	ldexp, @function
ldexp:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	mov gr15, gr18
	sti gr8, @(fp,-16)
	sti gr9, @(fp,-12)
	nop
	sti gr10, @(fp,-20)
	ldi @(fp,-16), gr10
	ldi @(fp,-12), gr11
	nop
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr18, gr15
	call __unorddf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L489
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	mov gr4, gr10
	mov gr5, gr11
	mov gr4, gr8
	mov gr5, gr9
	mov gr18, gr15
	call __addd
	mov gr8, gr4
	mov gr9, gr5
	mov gr4, gr10
	mov gr5, gr11
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr18, gr15
	call __nedf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L489
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L491
	sethi #hi(#1071644672), gr4
	setlo #lo(#1071644672), gr4
	setlos #0, gr5
	bra .L492
.L491:
	sethi #hi(#1073741824), gr4
	setlo #lo(#1073741824), gr4
	setlos #0, gr5
.L492:
	sti gr4, @(fp,-8)
	sti gr5, @(fp,-4)
	nop
.L495:
	ldi @(fp,-20), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L493
	ldi @(fp,-8), gr10
	ldi @(fp,-4), gr11
	nop
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr18, gr15
	call __muld
	mov gr8, gr4
	mov gr9, gr5
	sti gr4, @(fp,-16)
	sti gr5, @(fp,-12)
	nop
.L493:
	ldi @(fp,-20), gr4
	srli gr4, #31, gr5
	add gr5,gr4,gr4
	srai gr4, #1, gr4
	sti gr4, @(fp,-20)
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L498
	ldi @(fp,-8), gr10
	ldi @(fp,-4), gr11
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __muld
	mov gr8, gr4
	mov gr9, gr5
	sti gr4, @(fp,-8)
	sti gr5, @(fp,-4)
	nop
	bra .L495
.L498:
	nop
.L489:
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	mov gr4, gr8
	mov gr5, gr9
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	ldexp, .-ldexp
	.p2align 4
	.globl ldexpl
	.type	ldexpl, @function
ldexpl:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	mov gr15, gr18
	sti gr8, @(fp,-16)
	sti gr9, @(fp,-12)
	nop
	sti gr10, @(fp,-20)
	ldi @(fp,-16), gr10
	ldi @(fp,-12), gr11
	nop
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr18, gr15
	call __unorddf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L500
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	mov gr4, gr10
	mov gr5, gr11
	mov gr4, gr8
	mov gr5, gr9
	mov gr18, gr15
	call __addd
	mov gr8, gr4
	mov gr9, gr5
	mov gr4, gr10
	mov gr5, gr11
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr18, gr15
	call __nedf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L500
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L502
	sethi #hi(#1071644672), gr4
	setlo #lo(#1071644672), gr4
	setlos #0, gr5
	bra .L503
.L502:
	sethi #hi(#1073741824), gr4
	setlo #lo(#1073741824), gr4
	setlos #0, gr5
.L503:
	sti gr4, @(fp,-8)
	sti gr5, @(fp,-4)
	nop
.L506:
	ldi @(fp,-20), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L504
	ldi @(fp,-8), gr10
	ldi @(fp,-4), gr11
	nop
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr18, gr15
	call __muld
	mov gr8, gr4
	mov gr9, gr5
	sti gr4, @(fp,-16)
	sti gr5, @(fp,-12)
	nop
.L504:
	ldi @(fp,-20), gr4
	srli gr4, #31, gr5
	add gr5,gr4,gr4
	srai gr4, #1, gr4
	sti gr4, @(fp,-20)
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L509
	ldi @(fp,-8), gr10
	ldi @(fp,-4), gr11
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __muld
	mov gr8, gr4
	mov gr9, gr5
	sti gr4, @(fp,-8)
	sti gr5, @(fp,-4)
	nop
	bra .L506
.L509:
	nop
.L500:
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	mov gr4, gr8
	mov gr5, gr9
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	ldexpl, .-ldexpl
	.p2align 4
	.globl memxor
	.type	memxor, @function
memxor:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr10, @(fp,-20)
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	bra .L511
.L512:
	ldi @(fp,-16), gr4
	addi gr4,#1,gr5
	sti gr5, @(fp,-16)
	ldsb @(gr4,gr0),gr6
	ldi @(fp,-4), gr4
	addi gr4,#1,gr5
	sti gr5, @(fp,-4)
	ldsb @(gr4,gr0),gr5
	xor gr6, gr5, gr5
	stb gr5, @(gr4,gr0)
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-20)
.L511:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L512
	ldi @(fp,-12), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	memxor, .-memxor
	.p2align 4
	.globl strncat
	.type	strncat, @function
strncat:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr15, gr4
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr10, @(fp,-20)
	ldi @(fp,-12), gr8
	mov gr4, gr15
	call strlen
	mov gr8, gr4
	ldi @(fp,-12), gr5
	add gr5,gr4,gr4
	sti gr4, @(fp,-4)
	bra .L515
.L517:
	ldi @(fp,-16), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-20)
.L515:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L516
	ldi @(fp,-16), gr4
	ldsb @(gr4,gr0),gr5
	ldi @(fp,-4), gr4
	stb gr5, @(gr4,gr0)
	ldi @(fp,-4), gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L517
.L516:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L518
	ldi @(fp,-4), gr4
	stb gr0, @(gr4,gr0)
.L518:
	ldi @(fp,-12), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	strncat, .-strncat
	.p2align 4
	.globl strnlen
	.type	strnlen, @function
strnlen:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr0, @(fp,-4)
	bra .L521
.L526:
	nop
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L521:
	ldi @(fp,-4), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L522
	ldi @(fp,-12), gr5
	ldi @(fp,-4), gr4
	add gr5,gr4,gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L526
.L522:
	ldi @(fp,-4), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	strnlen, .-strnlen
	.p2align 4
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	bra .L528
.L532:
	ldi @(fp,-16), gr4
	sti gr4, @(fp,-4)
	bra .L529
.L531:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr5
	sti gr5, @(fp,-4)
	ldsb @(gr4,gr0),gr5
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L529
	ldi @(fp,-12), gr4
	bra .L530
.L529:
	ldi @(fp,-4), gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L531
	ldi @(fp,-12), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-12)
.L528:
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L532
	setlos #0, gr4
.L530:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	strpbrk, .-strpbrk
	.p2align 4
	.globl strrchr
	.type	strrchr, @function
strrchr:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr8, gr4
	sti gr9, @(fp,-12)
	sti gr0, @(fp,-4)
.L535:
	ldsb @(gr4,gr0),gr5
	ldi @(fp,-12), gr6
	cmp gr6,gr5,icc0
	bne icc0,0,.L534
	sti gr4, @(fp,-4)
.L534:
	mov gr4, gr5
	addi gr5,#1,gr4
	ldsb @(gr5,gr0),gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L535
	ldi @(fp,-4), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
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
	mov gr15, gr18
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	ldi @(fp,-16), gr8
	mov gr18, gr15
	call strlen
	mov gr8, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L540
	ldi @(fp,-12), gr4
	bra .L539
.L542:
	ldi @(fp,-4), gr10
	ldi @(fp,-16), gr9
	ldi @(fp,-8), gr8
	mov gr18, gr15
	call strncmp
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L541
	ldi @(fp,-8), gr4
	bra .L539
.L541:
	ldi @(fp,-8), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-12)
.L540:
	ldi @(fp,-16), gr4
	ldsb @(gr4,gr0),gr4
	mov gr4, gr9
	ldi @(fp,-12), gr8
	mov gr18, gr15
	call strchr
	mov gr8, gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-8), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L542
	setlos #0, gr4
.L539:
	mov gr4, gr8
	ldi @(sp,0), gr18
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
	mov gr15, gr20
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	sti gr10, @(fp,-16)
	sti gr11, @(fp,-12)
	nop
	setlos #0, gr10
	setlos #0, gr11
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr20, gr15
	call __ltdf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L544
	setlos #0, gr10
	setlos #0, gr11
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr20, gr15
	call __gtdf2
	mov gr8, gr4
	cmpi gr4,#0,icc0
	bgt icc0,0,.L546
.L544:
	setlos #0, gr10
	setlos #0, gr11
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr20, gr15
	call __gtdf2
	mov gr8, gr4
	cmpi gr4,#0,icc0
	ble icc0,0,.L547
	setlos #0, gr10
	setlos #0, gr11
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr20, gr15
	call __ltdf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L547
.L546:
	ldi @(fp,-8), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	xor gr5, gr4, gr18
	ldi @(fp,-4), gr19
	bra .L550
.L547:
	ldi @(fp,-8), gr18
	ldi @(fp,-4), gr19
	nop
.L550:
	mov gr18, gr8
	mov gr19, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
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
	mov gr15, gr18
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr10, @(fp,-20)
	sti gr11, @(fp,-24)
	ldi @(fp,-16), gr5
	ldi @(fp,-24), gr4
	sub gr5,gr4,gr4
	ldi @(fp,-12), gr5
	add gr5,gr4,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-24), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L554
	ldi @(fp,-12), gr4
	bra .L555
.L554:
	ldi @(fp,-16), gr5
	ldi @(fp,-24), gr4
	cmp gr5,gr4,icc0
	ckc icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L557
	setlos #0, gr4
	bra .L555
.L559:
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr5
	ldi @(fp,-20), gr4
	ldsb @(gr4,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L558
	ldi @(fp,-12), gr4
	addi gr4,#1,gr4
	ldi @(fp,-24), gr5
	addi gr5,#-1,gr6
	ldi @(fp,-20), gr5
	addi gr5,#1,gr5
	mov gr6, gr10
	mov gr5, gr9
	mov gr4, gr8
	mov gr18, gr15
	call memcmp
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L558
	ldi @(fp,-12), gr4
	bra .L555
.L558:
	ldi @(fp,-12), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-12)
.L557:
	ldi @(fp,-12), gr5
	ldi @(fp,-4), gr4
	cmp gr5,gr4,icc0
	bls icc0,2,.L559
	setlos #0, gr4
.L555:
	mov gr4, gr8
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	memmem, .-memmem
	.p2align 4
	.globl mempcpy
	.type	mempcpy, @function
mempcpy:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr15, gr4
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	sti gr10, @(fp,-12)
	ldi @(fp,-12), gr10
	ldi @(fp,-8), gr9
	ldi @(fp,-4), gr8
	mov gr4, gr15
	call memcpy
	mov gr8, gr4
	ldi @(fp,-12), gr5
	add gr4,gr5,gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	mempcpy, .-mempcpy
	.p2align 4
	.globl frexp
	.type	frexp, @function
frexp:
	addi sp,#-64,sp
	sti fp, @(sp,48)
	addi sp,#48,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr20, @(sp,4)
	sti gr21, @(sp,8)
	sti gr22, @(sp,12)
	sti gr23, @(sp,16)
	mov gr15, gr18
	sti gr8, @(fp,-16)
	sti gr9, @(fp,-12)
	nop
	sti gr10, @(fp,-20)
	sti gr0, @(fp,-8)
	sti gr0, @(fp,-4)
	setlos #0, gr10
	setlos #0, gr11
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr18, gr15
	call __ltdf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L563
	ldi @(fp,-16), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	xor gr5, gr4, gr22
	ldi @(fp,-12), gr23
	sti gr22, @(fp,-16)
	sti gr23, @(fp,-12)
	nop
	setlos #1, gr4
	sti gr4, @(fp,-4)
.L563:
	sethi #hi(#1072693248), gr10
	setlo #lo(#1072693248), gr10
	setlos #0, gr11
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr18, gr15
	call __gedf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bn icc0,0,.L580
	bra .L567
.L568:
	ldi @(fp,-8), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-8)
	sethi #hi(#1073741824), gr10
	setlo #lo(#1073741824), gr10
	setlos #0, gr11
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr18, gr15
	call __divd
	mov gr8, gr4
	mov gr9, gr5
	sti gr4, @(fp,-16)
	sti gr5, @(fp,-12)
	nop
.L567:
	sethi #hi(#1072693248), gr10
	setlo #lo(#1072693248), gr10
	setlos #0, gr11
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr18, gr15
	call __gedf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bp icc0,2,.L568
	bra .L569
.L580:
	sethi #hi(#1071644672), gr10
	setlo #lo(#1071644672), gr10
	setlos #0, gr11
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr18, gr15
	call __ltdf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L569
	setlos #0, gr10
	setlos #0, gr11
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr18, gr15
	call __nedf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L569
	bra .L572
.L573:
	ldi @(fp,-8), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	mov gr4, gr10
	mov gr5, gr11
	mov gr4, gr8
	mov gr5, gr9
	mov gr18, gr15
	call __addd
	mov gr8, gr4
	mov gr9, gr5
	sti gr4, @(fp,-16)
	sti gr5, @(fp,-12)
	nop
.L572:
	sethi #hi(#1071644672), gr10
	setlo #lo(#1071644672), gr10
	setlos #0, gr11
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr18, gr15
	call __ltdf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bn icc0,2,.L573
.L569:
	ldi @(fp,-20), gr4
	ldi @(fp,-8), gr5
	st gr5, @(gr4,gr0)
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L574
	ldi @(fp,-16), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	xor gr5, gr4, gr20
	ldi @(fp,-12), gr21
	sti gr20, @(fp,-16)
	sti gr21, @(fp,-12)
	nop
.L574:
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	mov gr4, gr8
	mov gr5, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(sp,12), gr22
	ldi @(sp,16), gr23
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#64,sp
	jmpl @(gr5,gr0)
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
	sti gr8, @(fp,-24)
	sti gr9, @(fp,-20)
	nop
	sti gr10, @(fp,-32)
	sti gr11, @(fp,-28)
	nop
	sti gr0, @(fp,-8)
	sti gr0, @(fp,-4)
	nop
	ldi @(fp,-24), gr4
	ldi @(fp,-20), gr5
	nop
	sti gr4, @(fp,-16)
	sti gr5, @(fp,-12)
	nop
	bra .L582
.L585:
	ldi @(fp,-16), gr4
	andi gr4, #0, gr6
	ldi @(fp,-12), gr4
	andi gr4, #1, gr5
	mov gr6, gr4
	or gr4, gr5, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L583
	ldi @(fp,-8), gr6
	ldi @(fp,-4), gr7
	nop
	ldi @(fp,-32), gr4
	ldi @(fp,-28), gr5
	nop
	addcc gr5,gr7,gr5,icc0
	addx gr4,gr6,gr4,icc0
	sti gr4, @(fp,-8)
	sti gr5, @(fp,-4)
	nop
.L583:
	ldi @(fp,-28), gr4
	srli gr4, #31, gr5
	ldi @(fp,-32), gr4
	slli gr4,#1,gr4
	or gr5, gr4, gr4
	ldi @(fp,-28), gr5
	slli gr5,#1,gr5
	sti gr4, @(fp,-32)
	sti gr5, @(fp,-28)
	ldi @(fp,-16), gr4
	slli gr4,#31,gr5
	ldi @(fp,-12), gr4
	srli gr4, #1, gr4
	or gr5, gr4, gr4
	ldi @(fp,-16), gr5
	srli gr5, #1, gr5
	sti gr5, @(fp,-16)
	sti gr4, @(fp,-12)
.L582:
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	or gr4, gr5, gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L585
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	mov gr4, gr8
	mov gr5, gr9
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	__muldi3, .-__muldi3
	.p2align 4
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr10, @(fp,-20)
	setlos #1, gr4
	sti gr4, @(fp,-4)
	sti gr0, @(fp,-8)
	bra .L588
.L590:
	ldi @(fp,-16), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-4), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-4)
.L588:
	ldi @(fp,-16), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L591
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L591
	ldi @(fp,-16), gr4
	cmpi gr4, #0, icc0
	bp icc0,2,.L590
	bra .L591
.L593:
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	bc icc0,0,.L592
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	sub gr5,gr4,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-8), gr5
	ldi @(fp,-4), gr4
	or gr5, gr4, gr4
	sti gr4, @(fp,-8)
.L592:
	ldi @(fp,-4), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-16), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-16)
.L591:
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L593
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L594
	ldi @(fp,-12), gr4
	bra .L595
.L594:
	ldi @(fp,-8), gr4
.L595:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	udivmodsi4, .-udivmodsi4
	.p2align 4
	.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr15, gr4
	stbi gr8, @(fp,-9)
	ldsbi @(fp,-9),gr5
	cmpi gr5, #0, icc0
	bp icc0,0,.L597
	ldsbi @(fp,-9),gr5
	not gr5,gr5
	stbi gr5, @(fp,-9)
.L597:
	ldsbi @(fp,-9),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L598
	setlos #7, gr4
	bra .L599
.L598:
	ldsbi @(fp,-9),gr5
	slli gr5,#8,gr5
	mov gr5, gr8
	mov gr4, gr15
	call __clzsi2
	mov gr8, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	addi gr4,#-1,gr4
.L599:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	__clrsbqi2, .-__clrsbqi2
	.p2align 4
	.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr15, gr5
	sti gr8, @(fp,-16)
	sti gr9, @(fp,-12)
	nop
	ldi @(fp,-16), gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L601
	ldi @(fp,-16), gr4
	not gr4,gr6
	ldi @(fp,-12), gr4
	not gr4,gr4
	sti gr6, @(fp,-16)
	sti gr4, @(fp,-12)
.L601:
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr6
	or gr4, gr6, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L603
	setlos #63, gr4
	bra .L604
.L603:
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr5, gr15
	call __clzdi2
	mov gr8, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	addi gr4,#-1,gr4
.L604:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	__clrsbdi2, .-__clrsbdi2
	.p2align 4
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr0, @(fp,-4)
	bra .L606
.L608:
	ldi @(fp,-12), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L607
	ldi @(fp,-4), gr5
	ldi @(fp,-16), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-4)
.L607:
	ldi @(fp,-12), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-16), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-16)
.L606:
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L608
	ldi @(fp,-4), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	__mulsi3, .-__mulsi3
	.p2align 4
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-20)
	sti gr9, @(fp,-24)
	sti gr10, @(fp,-28)
	ldi @(fp,-28), gr4
	srli gr4, #3, gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-28), gr4
	andi gr4, #-8, gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-20), gr5
	ldi @(fp,-24), gr4
	cmp gr5,gr4,icc0
	bc icc0,0,.L611
	ldi @(fp,-24), gr5
	ldi @(fp,-28), gr4
	add gr5,gr4,gr4
	ldi @(fp,-20), gr5
	cmp gr5,gr4,icc0
	bls icc0,0,.L618
.L611:
	sti gr0, @(fp,-4)
	bra .L613
.L614:
	ldi @(fp,-4), gr4
	slli gr4,#3,gr4
	ldi @(fp,-20), gr5
	add gr5,gr4,gr6
	ldi @(fp,-4), gr4
	slli gr4,#3,gr4
	ldi @(fp,-24), gr5
	add gr5,gr4,gr4
	ldi @(gr4,4), gr5
	ld @(gr4,gr0), gr4
	nop
	st gr4, @(gr6,gr0)
	sti gr5, @(gr6,4)
	nop
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L613:
	ldi @(fp,-4), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bc icc0,2,.L614
	bra .L615
.L616:
	ldi @(fp,-20), gr5
	ldi @(fp,-8), gr4
	add gr5,gr4,gr4
	ldi @(fp,-24), gr6
	ldi @(fp,-8), gr5
	add gr6,gr5,gr5
	ldsb @(gr5,gr0),gr5
	stb gr5, @(gr4,gr0)
	ldi @(fp,-8), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-8)
.L615:
	ldi @(fp,-28), gr5
	ldi @(fp,-8), gr4
	cmp gr5,gr4,icc0
	bhi icc0,2,.L616
	bra .L617
.L619:
	ldi @(fp,-20), gr5
	ldi @(fp,-28), gr4
	add gr5,gr4,gr4
	ldi @(fp,-24), gr6
	ldi @(fp,-28), gr5
	add gr6,gr5,gr5
	ldsb @(gr5,gr0),gr5
	stb gr5, @(gr4,gr0)
.L618:
	ldi @(fp,-28), gr4
	addi gr4,#-1,gr5
	sti gr5, @(fp,-28)
	cmpi gr4, #0, icc0
	bne icc0,2,.L619
	nop
.L617:
	nop
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	__cmovd, .-__cmovd
	.p2align 4
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr10, @(fp,-20)
	ldi @(fp,-20), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	bc icc0,0,.L621
	ldi @(fp,-16), gr5
	ldi @(fp,-20), gr4
	add gr5,gr4,gr4
	ldi @(fp,-12), gr5
	cmp gr5,gr4,icc0
	bls icc0,0,.L627
.L621:
	sti gr0, @(fp,-4)
	bra .L623
.L624:
	ldi @(fp,-4), gr4
	slli gr4,#1,gr4
	ldi @(fp,-12), gr5
	add gr5,gr4,gr4
	ldi @(fp,-4), gr5
	slli gr5,#1,gr5
	ldi @(fp,-16), gr6
	add gr6,gr5,gr5
	ldsh @(gr5,gr0),gr5
	sth gr5, @(gr4,gr0)
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L623:
	ldi @(fp,-4), gr5
	ldi @(fp,-8), gr4
	cmp gr5,gr4,icc0
	bc icc0,2,.L624
	ldi @(fp,-20), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L626
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr4
	ldi @(fp,-12), gr5
	add gr5,gr4,gr4
	ldi @(fp,-16), gr6
	ldi @(fp,-20), gr5
	add gr6,gr5,gr5
	addi gr5,#-1,gr5
	ldsb @(gr5,gr0),gr5
	stb gr5, @(gr4,gr0)
	bra .L626
.L628:
	ldi @(fp,-12), gr5
	ldi @(fp,-20), gr4
	add gr5,gr4,gr4
	ldi @(fp,-16), gr6
	ldi @(fp,-20), gr5
	add gr6,gr5,gr5
	ldsb @(gr5,gr0),gr5
	stb gr5, @(gr4,gr0)
.L627:
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr5
	sti gr5, @(fp,-20)
	cmpi gr4, #0, icc0
	bne icc0,2,.L628
	nop
.L626:
	nop
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-20)
	sti gr9, @(fp,-24)
	sti gr10, @(fp,-28)
	ldi @(fp,-28), gr4
	srli gr4, #2, gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-28), gr4
	andi gr4, #-4, gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-20), gr5
	ldi @(fp,-24), gr4
	cmp gr5,gr4,icc0
	bc icc0,0,.L630
	ldi @(fp,-24), gr5
	ldi @(fp,-28), gr4
	add gr5,gr4,gr4
	ldi @(fp,-20), gr5
	cmp gr5,gr4,icc0
	bls icc0,0,.L637
.L630:
	sti gr0, @(fp,-4)
	bra .L632
.L633:
	ldi @(fp,-4), gr4
	slli gr4,#2,gr4
	ldi @(fp,-20), gr5
	add gr5,gr4,gr4
	ldi @(fp,-4), gr5
	slli gr5,#2,gr5
	ldi @(fp,-24), gr6
	add gr6,gr5,gr5
	ld @(gr5,gr0), gr5
	st gr5, @(gr4,gr0)
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L632:
	ldi @(fp,-4), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bc icc0,2,.L633
	bra .L634
.L635:
	ldi @(fp,-20), gr5
	ldi @(fp,-8), gr4
	add gr5,gr4,gr4
	ldi @(fp,-24), gr6
	ldi @(fp,-8), gr5
	add gr6,gr5,gr5
	ldsb @(gr5,gr0),gr5
	stb gr5, @(gr4,gr0)
	ldi @(fp,-8), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-8)
.L634:
	ldi @(fp,-28), gr5
	ldi @(fp,-8), gr4
	cmp gr5,gr4,icc0
	bhi icc0,2,.L635
	bra .L636
.L638:
	ldi @(fp,-20), gr5
	ldi @(fp,-28), gr4
	add gr5,gr4,gr4
	ldi @(fp,-24), gr6
	ldi @(fp,-28), gr5
	add gr6,gr5,gr5
	ldsb @(gr5,gr0),gr5
	stb gr5, @(gr4,gr0)
.L637:
	ldi @(fp,-28), gr4
	addi gr4,#-1,gr5
	sti gr5, @(fp,-28)
	cmpi gr4, #0, icc0
	bne icc0,2,.L638
	nop
.L636:
	nop
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	__cmovw, .-__cmovw
	.p2align 4
	.globl __modi
	.type	__modi, @function
__modi:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	ldi @(fp,-4), gr4
	ldi @(fp,-8), gr5
	sdiv gr4,gr5,gr6
	ldi @(fp,-8), gr5
	smul gr6,gr5,gr6
	mov gr7, gr5
	sub gr4,gr5,gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__modi, .-__modi
	.p2align 4
	.globl __uitod
	.type	__uitod, @function
__uitod:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr15, gr4
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr8
	mov gr4, gr15
	call __floatunsidf
	mov gr8, gr4
	mov gr9, gr5
	mov gr4, gr8
	mov gr5, gr9
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__uitod, .-__uitod
	.p2align 4
	.globl __uitof
	.type	__uitof, @function
__uitof:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr15, gr4
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr8
	mov gr4, gr15
	call __floatunsisf
	mov gr8, gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__uitof, .-__uitof
	.p2align 4
	.globl __ulltod
	.type	__ulltod, @function
__ulltod:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr15, gr4
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr4, gr15
	call __floatundidf
	mov gr8, gr4
	mov gr9, gr5
	mov gr4, gr8
	mov gr5, gr9
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__ulltod, .-__ulltod
	.p2align 4
	.globl __ulltof
	.type	__ulltof, @function
__ulltof:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr15, gr4
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr4, gr15
	call __floatundisf
	mov gr8, gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__ulltof, .-__ulltof
	.p2align 4
	.globl __umodi
	.type	__umodi, @function
__umodi:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	ldi @(fp,-4), gr4
	ldi @(fp,-8), gr5
	udiv gr4,gr5,gr6
	ldi @(fp,-8), gr5
	umul gr6,gr5,gr6
	mov gr7, gr5
	sub gr4,gr5,gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__umodi, .-__umodi
	.p2align 4
	.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sthi gr8, @(fp,-10)
	sti gr0, @(fp,-4)
	bra .L652
.L655:
	setlos #15, gr5
	ldi @(fp,-4), gr4
	sub gr5,gr4,gr4
	lduhi @(fp,-10),gr5
	sra gr5, gr4, gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L657
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L652:
	ldi @(fp,-4), gr4
	cmpi gr4,#15,icc0
	ble icc0,2,.L655
	bra .L654
.L657:
	nop
.L654:
	ldi @(fp,-4), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	__clzhi2, .-__clzhi2
	.p2align 4
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sthi gr8, @(fp,-10)
	sti gr0, @(fp,-4)
	bra .L659
.L662:
	lduhi @(fp,-10),gr5
	ldi @(fp,-4), gr4
	sra gr5, gr4, gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L664
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L659:
	ldi @(fp,-4), gr4
	cmpi gr4,#15,icc0
	ble icc0,2,.L662
	bra .L661
.L664:
	nop
.L661:
	ldi @(fp,-4), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
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
	mov gr15, gr18
	sti gr8, @(fp,-4)
	sethi #hi(#1191182336), gr9
	setlo #lo(#1191182336), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __gesf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bn icc0,0,.L670
	sethi #hi(#1191182336), gr9
	setlo #lo(#1191182336), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __subf
	mov gr8, gr4
	mov gr4, gr8
	mov gr18, gr15
	call __ftoi
	mov gr8, gr4
	sethi #hi(#32768), gr5
	setlo #lo(#32768), gr5
	add gr4,gr5,gr4
	bra .L668
.L670:
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __ftoi
	mov gr8, gr4
.L668:
	mov gr4, gr8
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	__fixunssfsi, .-__fixunssfsi
	.p2align 4
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sthi gr8, @(fp,-10)
	sti gr0, @(fp,-8)
	sti gr0, @(fp,-4)
	bra .L672
.L674:
	lduhi @(fp,-10),gr5
	ldi @(fp,-4), gr4
	sra gr5, gr4, gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L673
	ldi @(fp,-8), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-8)
.L673:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L672:
	ldi @(fp,-4), gr4
	cmpi gr4,#15,icc0
	ble icc0,2,.L674
	ldi @(fp,-8), gr4
	andi gr4, #1, gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	__parityhi2, .-__parityhi2
	.p2align 4
	.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sthi gr8, @(fp,-10)
	sti gr0, @(fp,-8)
	sti gr0, @(fp,-4)
	bra .L677
.L679:
	lduhi @(fp,-10),gr5
	ldi @(fp,-4), gr4
	sra gr5, gr4, gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L678
	ldi @(fp,-8), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-8)
.L678:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L677:
	ldi @(fp,-4), gr4
	cmpi gr4,#15,icc0
	ble icc0,2,.L679
	ldi @(fp,-8), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	__popcounthi2, .-__popcounthi2
	.p2align 4
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr0, @(fp,-4)
	bra .L682
.L684:
	ldi @(fp,-12), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L683
	ldi @(fp,-4), gr5
	ldi @(fp,-16), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-4)
.L683:
	ldi @(fp,-12), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-16), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-16)
.L682:
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L684
	ldi @(fp,-4), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.p2align 4
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr0, @(fp,-4)
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L689
	setlos #0, gr4
	bra .L688
.L691:
	ldi @(fp,-16), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L690
	ldi @(fp,-4), gr5
	ldi @(fp,-12), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-4)
.L690:
	ldi @(fp,-12), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-16), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-16)
.L689:
	ldi @(fp,-16), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L691
	ldi @(fp,-4), gr4
.L688:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.p2align 4
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr10, @(fp,-20)
	setlos #1, gr4
	sti gr4, @(fp,-4)
	sti gr0, @(fp,-8)
	bra .L693
.L695:
	ldi @(fp,-16), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-4), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-4)
.L693:
	ldi @(fp,-16), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L696
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L696
	ldi @(fp,-16), gr4
	cmpi gr4, #0, icc0
	bp icc0,2,.L695
	bra .L696
.L698:
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	bc icc0,0,.L697
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	sub gr5,gr4,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-8), gr5
	ldi @(fp,-4), gr4
	or gr5, gr4, gr4
	sti gr4, @(fp,-8)
.L697:
	ldi @(fp,-4), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-16), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-16)
.L696:
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L698
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L699
	ldi @(fp,-12), gr4
	bra .L700
.L699:
	ldi @(fp,-8), gr4
.L700:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
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
	mov gr15, gr18
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	ldi @(fp,-8), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __ltsf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L709
	setlos #-1, gr4
	bra .L704
.L709:
	ldi @(fp,-8), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __gtsf2
	mov gr8, gr4
	cmpi gr4,#0,icc0
	ble icc0,0,.L710
	setlos #1, gr4
	bra .L704
.L710:
	setlos #0, gr4
.L704:
	mov gr4, gr8
	ldi @(sp,0), gr18
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
	mov gr15, gr18
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	sti gr10, @(fp,-16)
	sti gr11, @(fp,-12)
	nop
	ldi @(fp,-16), gr10
	ldi @(fp,-12), gr11
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __ltdf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L719
	setlos #-1, gr4
	bra .L714
.L719:
	ldi @(fp,-16), gr10
	ldi @(fp,-12), gr11
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __gtdf2
	mov gr8, gr4
	cmpi gr4,#0,icc0
	ble icc0,0,.L720
	setlos #1, gr4
	bra .L714
.L720:
	setlos #0, gr4
.L714:
	mov gr4, gr8
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.p2align 4
	.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr15, gr4
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	ldi @(fp,-4), gr5
	mov gr5, gr6
	srai gr5, #31, gr5
	mov gr5, gr7
	ldi @(fp,-8), gr5
	mov gr5, gr8
	srai gr5, #31, gr5
	mov gr5, gr10
	mov gr8, gr11
	mov gr7, gr8
	mov gr6, gr9
	mov gr4, gr15
	call __mulll
	mov gr8, gr4
	mov gr9, gr5
	mov gr4, gr8
	mov gr5, gr9
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.p2align 4
	.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr15, gr4
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	ldi @(fp,-4), gr5
	setlos #0, gr6
	ldi @(fp,-8), gr7
	setlos #0, gr8
	mov gr8, gr10
	mov gr7, gr11
	mov gr6, gr8
	mov gr5, gr9
	mov gr4, gr15
	call __mulll
	mov gr8, gr4
	mov gr9, gr5
	mov gr4, gr8
	mov gr5, gr9
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.p2align 4
	.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-20)
	sti gr9, @(fp,-24)
	sti gr0, @(fp,-8)
	sti gr0, @(fp,-12)
	ldi @(fp,-24), gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L726
	ldi @(fp,-24), gr4
	sub gr0,gr4,gr4
	sti gr4, @(fp,-24)
	setlos #1, gr4
	sti gr4, @(fp,-8)
.L726:
	stbi gr0, @(fp,-1)
	bra .L727
.L730:
	ldi @(fp,-24), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L728
	ldi @(fp,-12), gr5
	ldi @(fp,-20), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-12)
.L728:
	ldi @(fp,-20), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-20)
	ldi @(fp,-24), gr4
	srai gr4, #1, gr4
	sti gr4, @(fp,-24)
	ldsbi @(fp,-1),gr4
	addi gr4,#1,gr4
	andi gr4,#0xff,gr4
	stbi gr4, @(fp,-1)
.L727:
	ldi @(fp,-24), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L729
	ldubi @(fp,-1),gr4
	cmpi gr4,#31,icc0
	bls icc0,2,.L730
.L729:
	ldi @(fp,-8), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L731
	ldi @(fp,-12), gr4
	sub gr0,gr4,gr4
	bra .L733
.L731:
	ldi @(fp,-12), gr4
.L733:
	nop
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	__mulhi3, .-__mulhi3
	.p2align 4
	.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr15, gr4
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr0, @(fp,-4)
	ldi @(fp,-12), gr5
	cmpi gr5, #0, icc0
	bp icc0,0,.L735
	ldi @(fp,-12), gr5
	sub gr0,gr5,gr5
	sti gr5, @(fp,-12)
	ldi @(fp,-4), gr5
	cmpi gr5, #0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	andi gr5,#0xff,gr5
	sti gr5, @(fp,-4)
.L735:
	ldi @(fp,-16), gr5
	cmpi gr5, #0, icc0
	bp icc0,0,.L736
	ldi @(fp,-16), gr5
	sub gr0,gr5,gr5
	sti gr5, @(fp,-16)
	ldi @(fp,-4), gr5
	cmpi gr5, #0, icc0
	ckeq icc0, cc4
	setlos #1, gr5
	cmov gr0, gr5, cc4, 0
	andi gr5,#0xff,gr5
	sti gr5, @(fp,-4)
.L736:
	setlos #0, gr10
	ldi @(fp,-16), gr9
	ldi @(fp,-12), gr8
	mov gr4, gr15
	call __udivmodsi4
	mov gr8, gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L737
	ldi @(fp,-8), gr4
	sub gr0,gr4,gr4
	sti gr4, @(fp,-8)
.L737:
	ldi @(fp,-8), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	__divsi3, .-__divsi3
	.p2align 4
	.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr15, gr4
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr0, @(fp,-4)
	ldi @(fp,-12), gr5
	cmpi gr5, #0, icc0
	bp icc0,0,.L740
	ldi @(fp,-12), gr5
	sub gr0,gr5,gr5
	sti gr5, @(fp,-12)
	setlos #1, gr5
	sti gr5, @(fp,-4)
.L740:
	ldi @(fp,-16), gr5
	cmpi gr5, #0, icc0
	bp icc0,0,.L741
	ldi @(fp,-16), gr5
	sub gr0,gr5,gr5
	sti gr5, @(fp,-16)
.L741:
	setlos #1, gr10
	ldi @(fp,-16), gr9
	ldi @(fp,-12), gr8
	mov gr4, gr15
	call __udivmodsi4
	mov gr8, gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L742
	ldi @(fp,-8), gr4
	sub gr0,gr4,gr4
	sti gr4, @(fp,-8)
.L742:
	ldi @(fp,-8), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	__modsi3, .-__modsi3
	.p2align 4
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sthi gr8, @(fp,-10)
	sthi gr9, @(fp,-12)
	sti gr10, @(fp,-16)
	setlos #1, gr4
	sthi gr4, @(fp,-2)
	sthi gr0, @(fp,-4)
	bra .L745
.L747:
	ldshi @(fp,-12),gr4
	slli gr4,#1,gr4
	sthi gr4, @(fp,-12)
	ldshi @(fp,-2),gr4
	slli gr4,#1,gr4
	sthi gr4, @(fp,-2)
.L745:
	lduhi @(fp,-12),gr5
	lduhi @(fp,-10),gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L748
	lduhi @(fp,-2),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L748
	ldshi @(fp,-12),gr4
	cmpi gr4, #0, icc0
	bp icc0,2,.L747
	bra .L748
.L750:
	lduhi @(fp,-10),gr5
	lduhi @(fp,-12),gr4
	cmp gr5,gr4,icc0
	bc icc0,0,.L749
	ldshi @(fp,-10),gr5
	ldshi @(fp,-12),gr4
	sub gr5,gr4,gr4
	sthi gr4, @(fp,-10)
	ldshi @(fp,-4),gr5
	ldshi @(fp,-2),gr4
	or gr5, gr4, gr4
	sthi gr4, @(fp,-4)
.L749:
	lduhi @(fp,-2),gr4
	srli gr4, #1, gr4
	sthi gr4, @(fp,-2)
	lduhi @(fp,-12),gr4
	srli gr4, #1, gr4
	sthi gr4, @(fp,-12)
.L748:
	lduhi @(fp,-2),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L750
	ldi @(fp,-16), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L751
	lduhi @(fp,-10),gr4
	bra .L752
.L751:
	lduhi @(fp,-4),gr4
.L752:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	__udivmodhi4, .-__udivmodhi4
	.p2align 4
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	sti gr10, @(fp,-20)
	setlos #1, gr4
	sti gr4, @(fp,-4)
	sti gr0, @(fp,-8)
	bra .L754
.L756:
	ldi @(fp,-16), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-4), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-4)
.L754:
	ldi @(fp,-16), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L757
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L757
	ldi @(fp,-16), gr4
	cmpi gr4, #0, icc0
	bp icc0,2,.L756
	bra .L757
.L759:
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	bc icc0,0,.L758
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	sub gr5,gr4,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-8), gr5
	ldi @(fp,-4), gr4
	or gr5, gr4, gr4
	sti gr4, @(fp,-8)
.L758:
	ldi @(fp,-4), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-16), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-16)
.L757:
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L759
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L760
	ldi @(fp,-12), gr4
	bra .L761
.L760:
	ldi @(fp,-8), gr4
.L761:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.p2align 4
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	addi sp,#-56,sp
	sti fp, @(sp,40)
	addi sp,#40,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-32)
	sti gr9, @(fp,-28)
	nop
	sti gr10, @(fp,-36)
	setlos #32, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-32), gr4
	ldi @(fp,-28), gr5
	nop
	sti gr4, @(fp,-16)
	sti gr5, @(fp,-12)
	nop
	ldi @(fp,-36), gr5
	ldi @(fp,-4), gr4
	and gr5, gr4, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L763
	sti gr0, @(fp,-20)
	ldi @(fp,-12), gr5
	ldi @(fp,-36), gr6
	ldi @(fp,-4), gr4
	sub gr6,gr4,gr4
	sll gr5,gr4,gr4
	sti gr4, @(fp,-24)
	bra .L764
.L763:
	ldi @(fp,-36), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L765
	ldi @(fp,-32), gr4
	ldi @(fp,-28), gr5
	nop
	bra .L767
.L765:
	ldi @(fp,-12), gr5
	ldi @(fp,-36), gr4
	sll gr5,gr4,gr4
	sti gr4, @(fp,-20)
	ldi @(fp,-16), gr4
	mov gr4, gr5
	ldi @(fp,-36), gr4
	sll gr5,gr4,gr5
	ldi @(fp,-12), gr6
	ldi @(fp,-4), gr7
	ldi @(fp,-36), gr4
	sub gr7,gr4,gr4
	srl gr6, gr4, gr4
	or gr5, gr4, gr4
	sti gr4, @(fp,-24)
.L764:
	ldi @(fp,-24), gr4
	ldi @(fp,-20), gr5
	nop
.L767:
	mov gr4, gr8
	mov gr5, gr9
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#56,sp
	jmpl @(gr5,gr0)
	.size	__ashldi3, .-__ashldi3
	.p2align 4
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	addi sp,#-56,sp
	sti fp, @(sp,40)
	addi sp,#40,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-32)
	sti gr9, @(fp,-28)
	nop
	sti gr10, @(fp,-36)
	setlos #32, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-32), gr4
	ldi @(fp,-28), gr5
	nop
	sti gr4, @(fp,-16)
	sti gr5, @(fp,-12)
	nop
	ldi @(fp,-36), gr5
	ldi @(fp,-4), gr4
	and gr5, gr4, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L769
	ldi @(fp,-16), gr5
	ldi @(fp,-4), gr4
	addi gr4,#-1,gr4
	sra gr5, gr4, gr4
	sti gr4, @(fp,-24)
	ldi @(fp,-16), gr5
	ldi @(fp,-36), gr6
	ldi @(fp,-4), gr4
	sub gr6,gr4,gr4
	sra gr5, gr4, gr4
	sti gr4, @(fp,-20)
	bra .L770
.L769:
	ldi @(fp,-36), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L771
	ldi @(fp,-32), gr4
	ldi @(fp,-28), gr5
	nop
	bra .L773
.L771:
	ldi @(fp,-16), gr5
	ldi @(fp,-36), gr4
	sra gr5, gr4, gr4
	sti gr4, @(fp,-24)
	ldi @(fp,-16), gr4
	mov gr4, gr6
	ldi @(fp,-4), gr5
	ldi @(fp,-36), gr4
	sub gr5,gr4,gr4
	sll gr6,gr4,gr5
	ldi @(fp,-12), gr6
	ldi @(fp,-36), gr4
	srl gr6, gr4, gr4
	or gr5, gr4, gr4
	sti gr4, @(fp,-20)
.L770:
	ldi @(fp,-24), gr4
	ldi @(fp,-20), gr5
	nop
.L773:
	mov gr4, gr8
	mov gr5, gr9
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#56,sp
	jmpl @(gr5,gr0)
	.size	__ashrdi3, .-__ashrdi3
	.p2align 4
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	ldi @(fp,-8), gr4
	srli gr4, #24, gr7
	setlos #0, gr6
	ldi @(fp,-8), gr4
	srli gr4, #8, gr4
	setlos #0, gr5
	andi gr5, #0, gr8
	sethi #hi(#65280), gr5
	setlo #lo(#65280), gr5
	and gr4, gr5, gr4
	mov gr8, gr5
	or gr6, gr5, gr6
	or gr7, gr4, gr7
	ldi @(fp,-8), gr4
	slli gr4,#8,gr5
	ldi @(fp,-4), gr4
	srli gr4, #24, gr4
	or gr5, gr4, gr4
	ldi @(fp,-8), gr5
	srli gr5, #24, gr5
	andi gr5, #0, gr8
	sethi #hi(#16711680), gr5
	setlo #lo(#16711680), gr5
	and gr4, gr5, gr4
	mov gr8, gr5
	or gr6, gr5, gr6
	or gr7, gr4, gr7
	ldi @(fp,-8), gr4
	slli gr4,#24,gr5
	ldi @(fp,-4), gr4
	srli gr4, #8, gr4
	or gr5, gr4, gr4
	ldi @(fp,-8), gr5
	srli gr5, #8, gr5
	andi gr5, #0, gr8
	sethi #hi(#-16777216), gr5
	setlo #lo(#-16777216), gr5
	and gr4, gr5, gr4
	mov gr8, gr5
	or gr6, gr5, gr6
	or gr7, gr4, gr7
	ldi @(fp,-4), gr4
	srli gr4, #24, gr5
	ldi @(fp,-8), gr4
	slli gr4,#8,gr4
	or gr5, gr4, gr4
	ldi @(fp,-4), gr5
	slli gr5,#8,gr5
	andi gr4, #255, gr4
	andi gr5, #0, gr5
	or gr6, gr4, gr6
	or gr7, gr5, gr7
	ldi @(fp,-4), gr4
	srli gr4, #8, gr5
	ldi @(fp,-8), gr4
	slli gr4,#24,gr4
	or gr5, gr4, gr4
	ldi @(fp,-4), gr5
	slli gr5,#24,gr5
	sethi #hi(#65280), gr8
	setlo #lo(#65280), gr8
	and gr4, gr8, gr4
	andi gr5, #0, gr5
	or gr6, gr4, gr6
	or gr7, gr5, gr7
	ldi @(fp,-4), gr4
	slli gr4,#8,gr4
	setlos #0, gr5
	sethi #hi(#16711680), gr8
	setlo #lo(#16711680), gr8
	and gr4, gr8, gr4
	andi gr5, #0, gr5
	or gr6, gr4, gr6
	or gr7, gr5, gr4
	ldi @(fp,-4), gr5
	slli gr5,#24,gr5
	setlos #0, gr7
	or gr6, gr5, gr5
	or gr4, gr7, gr4
	mov gr5, gr8
	mov gr4, gr9
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__bswapdi2, .-__bswapdi2
	.p2align 4
	.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr4
	srli gr4, #24, gr5
	ldi @(fp,-4), gr4
	srli gr4, #8, gr4
	sethi #hi(#65280), gr6
	setlo #lo(#65280), gr6
	and gr4, gr6, gr4
	or gr5, gr4, gr5
	ldi @(fp,-4), gr4
	slli gr4,#8,gr4
	sethi #hi(#16711680), gr6
	setlo #lo(#16711680), gr6
	and gr4, gr6, gr4
	or gr5, gr4, gr5
	ldi @(fp,-4), gr4
	slli gr4,#24,gr4
	or gr5, gr4, gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__bswapsi2, .-__bswapsi2
	.p2align 4
	.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	addi sp,#-80,sp
	sti fp, @(sp,64)
	addi sp,#64,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-60)
	ldi @(fp,-60), gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr5
	sethi #hi(#65535), gr4
	setlo #lo(#65535), gr4
	cmp gr5,gr4,icc0
	bhi icc0,0,.L779
	setlos #16, gr4
	bra .L780
.L779:
	setlos #0, gr4
.L780:
	sti gr4, @(fp,-8)
	setlos #16, gr5
	ldi @(fp,-8), gr4
	sub gr5,gr4,gr4
	ldi @(fp,-4), gr5
	srl gr5, gr4, gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-8), gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-12), gr5
	sethi #hi(#65280), gr4
	setlo #lo(#65280), gr4
	and gr5, gr4, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L781
	setlos #8, gr4
	bra .L782
.L781:
	setlos #0, gr4
.L782:
	sti gr4, @(fp,-20)
	setlos #8, gr5
	ldi @(fp,-20), gr4
	sub gr5,gr4,gr4
	ldi @(fp,-12), gr5
	srl gr5, gr4, gr4
	sti gr4, @(fp,-24)
	ldi @(fp,-16), gr5
	ldi @(fp,-20), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-28)
	ldi @(fp,-24), gr4
	andi gr4, #240, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L783
	setlos #4, gr4
	bra .L784
.L783:
	setlos #0, gr4
.L784:
	sti gr4, @(fp,-32)
	setlos #4, gr5
	ldi @(fp,-32), gr4
	sub gr5,gr4,gr4
	ldi @(fp,-24), gr5
	srl gr5, gr4, gr4
	sti gr4, @(fp,-36)
	ldi @(fp,-28), gr5
	ldi @(fp,-32), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-40)
	ldi @(fp,-36), gr4
	andi gr4, #12, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L785
	setlos #2, gr4
	bra .L786
.L785:
	setlos #0, gr4
.L786:
	sti gr4, @(fp,-44)
	setlos #2, gr5
	ldi @(fp,-44), gr4
	sub gr5,gr4,gr4
	ldi @(fp,-36), gr5
	srl gr5, gr4, gr4
	sti gr4, @(fp,-48)
	ldi @(fp,-40), gr5
	ldi @(fp,-44), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-52)
	ldi @(fp,-48), gr4
	andi gr4, #2, gr4
	cmpi gr4, #0, icc0
	ckeq icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	mov gr4, gr6
	setlos #2, gr5
	ldi @(fp,-48), gr4
	sub gr5,gr4,gr4
	umul gr6,gr4,gr4
	ldi @(fp,-52), gr4
	add gr5,gr4,gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#80,sp
	jmpl @(gr5,gr0)
	.size	__clzsi2, .-__clzsi2
	.p2align 4
	.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-24)
	sti gr9, @(fp,-20)
	nop
	sti gr10, @(fp,-32)
	sti gr11, @(fp,-28)
	nop
	ldi @(fp,-24), gr4
	ldi @(fp,-20), gr5
	nop
	sti gr4, @(fp,-8)
	sti gr5, @(fp,-4)
	nop
	ldi @(fp,-32), gr4
	ldi @(fp,-28), gr5
	nop
	sti gr4, @(fp,-16)
	sti gr5, @(fp,-12)
	nop
	ldi @(fp,-8), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	bge icc0,0,.L789
	setlos #0, gr4
	bra .L794
.L789:
	ldi @(fp,-8), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	ble icc0,0,.L791
	setlos #2, gr4
	bra .L794
.L791:
	ldi @(fp,-4), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L792
	setlos #0, gr4
	bra .L794
.L792:
	ldi @(fp,-4), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bls icc0,0,.L793
	setlos #2, gr4
	bra .L794
.L793:
	setlos #1, gr4
.L794:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	__cmpdi2, .-__cmpdi2
	.p2align 4
	.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr15, gr4
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	sti gr10, @(fp,-16)
	sti gr11, @(fp,-12)
	nop
	ldi @(fp,-16), gr10
	ldi @(fp,-12), gr11
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr4, gr15
	call __cmpdi2
	mov gr8, gr4
	addi gr4,#-1,gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.p2align 4
	.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	addi sp,#-80,sp
	sti fp, @(sp,64)
	addi sp,#64,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-60)
	ldi @(fp,-60), gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr5
	sethi #hi(#65535), gr4
	setlo #lo(#65535), gr4
	and gr5, gr4, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L798
	setlos #16, gr4
	bra .L799
.L798:
	setlos #0, gr4
.L799:
	sti gr4, @(fp,-8)
	ldi @(fp,-4), gr5
	ldi @(fp,-8), gr4
	srl gr5, gr4, gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-8), gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-12), gr4
	andi gr4, #255, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L800
	setlos #8, gr4
	bra .L801
.L800:
	setlos #0, gr4
.L801:
	sti gr4, @(fp,-20)
	ldi @(fp,-12), gr5
	ldi @(fp,-20), gr4
	srl gr5, gr4, gr4
	sti gr4, @(fp,-24)
	ldi @(fp,-16), gr5
	ldi @(fp,-20), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-28)
	ldi @(fp,-24), gr4
	andi gr4, #15, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L802
	setlos #4, gr4
	bra .L803
.L802:
	setlos #0, gr4
.L803:
	sti gr4, @(fp,-32)
	ldi @(fp,-24), gr5
	ldi @(fp,-32), gr4
	srl gr5, gr4, gr4
	sti gr4, @(fp,-36)
	ldi @(fp,-28), gr5
	ldi @(fp,-32), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-40)
	ldi @(fp,-36), gr4
	andi gr4, #3, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L804
	setlos #2, gr4
	bra .L805
.L804:
	setlos #0, gr4
.L805:
	sti gr4, @(fp,-44)
	ldi @(fp,-36), gr5
	ldi @(fp,-44), gr4
	srl gr5, gr4, gr4
	sti gr4, @(fp,-48)
	ldi @(fp,-48), gr4
	andi gr4, #3, gr4
	sti gr4, @(fp,-52)
	ldi @(fp,-40), gr5
	ldi @(fp,-44), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-56)
	ldi @(fp,-52), gr4
	srli gr4, #1, gr4
	setlos #2, gr5
	sub gr5,gr4,gr4
	ldi @(fp,-52), gr5
	not gr5,gr5
	andi gr5, #1, gr5
	umul gr5,gr4,gr4
	ldi @(fp,-56), gr4
	add gr5,gr4,gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#80,sp
	jmpl @(gr5,gr0)
	.size	__ctzsi2, .-__ctzsi2
	.p2align 4
	.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	addi sp,#-56,sp
	sti fp, @(sp,40)
	addi sp,#40,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-32)
	sti gr9, @(fp,-28)
	nop
	sti gr10, @(fp,-36)
	setlos #32, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-32), gr4
	ldi @(fp,-28), gr5
	nop
	sti gr4, @(fp,-16)
	sti gr5, @(fp,-12)
	nop
	ldi @(fp,-36), gr5
	ldi @(fp,-4), gr4
	and gr5, gr4, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L808
	sti gr0, @(fp,-24)
	ldi @(fp,-16), gr5
	ldi @(fp,-36), gr6
	ldi @(fp,-4), gr4
	sub gr6,gr4,gr4
	srl gr5, gr4, gr4
	sti gr4, @(fp,-20)
	bra .L809
.L808:
	ldi @(fp,-36), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L810
	ldi @(fp,-32), gr4
	ldi @(fp,-28), gr5
	nop
	bra .L812
.L810:
	ldi @(fp,-16), gr5
	ldi @(fp,-36), gr4
	srl gr5, gr4, gr4
	sti gr4, @(fp,-24)
	ldi @(fp,-16), gr5
	ldi @(fp,-4), gr6
	ldi @(fp,-36), gr4
	sub gr6,gr4,gr4
	sll gr5,gr4,gr5
	ldi @(fp,-12), gr6
	ldi @(fp,-36), gr4
	srl gr6, gr4, gr4
	or gr5, gr4, gr4
	sti gr4, @(fp,-20)
.L809:
	ldi @(fp,-24), gr4
	ldi @(fp,-20), gr5
	nop
.L812:
	mov gr4, gr8
	mov gr5, gr9
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#56,sp
	jmpl @(gr5,gr0)
	.size	__lshrdi3, .-__lshrdi3
	.p2align 4
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	addi sp,#-56,sp
	sti fp, @(sp,40)
	addi sp,#40,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-36)
	sti gr9, @(fp,-40)
	setlos #16, gr4
	sti gr4, @(fp,-4)
	setlos #-1, gr5
	ldi @(fp,-4), gr4
	srl gr5, gr4, gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-36), gr5
	ldi @(fp,-8), gr4
	and gr5, gr4, gr5
	ldi @(fp,-40), gr6
	ldi @(fp,-8), gr4
	and gr6, gr4, gr4
	umul gr5,gr4,gr4
	mov gr5, gr4
	sti gr4, @(fp,-28)
	ldi @(fp,-28), gr5
	ldi @(fp,-4), gr4
	srl gr5, gr4, gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-28), gr4
	ldi @(fp,-8), gr5
	and gr5, gr4, gr4
	sti gr4, @(fp,-28)
	ldi @(fp,-36), gr5
	ldi @(fp,-4), gr4
	srl gr5, gr4, gr5
	ldi @(fp,-40), gr6
	ldi @(fp,-8), gr4
	and gr6, gr4, gr4
	umul gr5,gr4,gr4
	ldi @(fp,-12), gr4
	add gr4,gr5,gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-28), gr5
	ldi @(fp,-16), gr6
	ldi @(fp,-8), gr4
	and gr6, gr4, gr6
	ldi @(fp,-4), gr4
	sll gr6,gr4,gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-28)
	ldi @(fp,-16), gr5
	ldi @(fp,-4), gr4
	srl gr5, gr4, gr4
	sti gr4, @(fp,-32)
	ldi @(fp,-28), gr5
	ldi @(fp,-4), gr4
	srl gr5, gr4, gr4
	sti gr4, @(fp,-20)
	ldi @(fp,-28), gr4
	ldi @(fp,-8), gr5
	and gr5, gr4, gr4
	sti gr4, @(fp,-28)
	ldi @(fp,-40), gr5
	ldi @(fp,-4), gr4
	srl gr5, gr4, gr5
	ldi @(fp,-36), gr6
	ldi @(fp,-8), gr4
	and gr6, gr4, gr4
	umul gr5,gr4,gr4
	ldi @(fp,-20), gr4
	add gr4,gr5,gr4
	sti gr4, @(fp,-24)
	ldi @(fp,-28), gr5
	ldi @(fp,-24), gr6
	ldi @(fp,-8), gr4
	and gr6, gr4, gr6
	ldi @(fp,-4), gr4
	sll gr6,gr4,gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-28)
	ldi @(fp,-32), gr5
	ldi @(fp,-24), gr6
	ldi @(fp,-4), gr4
	srl gr6, gr4, gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-32)
	ldi @(fp,-32), gr6
	ldi @(fp,-36), gr5
	ldi @(fp,-4), gr4
	srl gr5, gr4, gr5
	ldi @(fp,-40), gr7
	ldi @(fp,-4), gr4
	srl gr7, gr4, gr4
	umul gr5,gr4,gr4
	mov gr5, gr4
	add gr6,gr4,gr4
	sti gr4, @(fp,-32)
	ldi @(fp,-32), gr4
	ldi @(fp,-28), gr5
	nop
	mov gr4, gr8
	mov gr5, gr9
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#56,sp
	jmpl @(gr5,gr0)
	.size	__muldsi3, .-__muldsi3
	.p2align 4
	.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	addi sp,#-56,sp
	sti fp, @(sp,40)
	addi sp,#40,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr15, gr6
	sti gr8, @(fp,-32)
	sti gr9, @(fp,-28)
	nop
	sti gr10, @(fp,-40)
	sti gr11, @(fp,-36)
	nop
	ldi @(fp,-32), gr4
	ldi @(fp,-28), gr5
	nop
	sti gr4, @(fp,-8)
	sti gr5, @(fp,-4)
	nop
	ldi @(fp,-40), gr4
	ldi @(fp,-36), gr5
	nop
	sti gr4, @(fp,-16)
	sti gr5, @(fp,-12)
	nop
	ldi @(fp,-12), gr9
	ldi @(fp,-4), gr8
	mov gr6, gr15
	call __muldsi3
	mov gr8, gr4
	mov gr9, gr5
	sti gr4, @(fp,-24)
	sti gr5, @(fp,-20)
	nop
	ldi @(fp,-24), gr6
	ldi @(fp,-8), gr5
	ldi @(fp,-12), gr4
	umul gr5,gr4,gr4
	mov gr5, gr7
	ldi @(fp,-4), gr5
	ldi @(fp,-16), gr4
	umul gr5,gr4,gr4
	mov gr5, gr4
	add gr7,gr4,gr4
	add gr6,gr4,gr4
	sti gr4, @(fp,-24)
	ldi @(fp,-24), gr4
	ldi @(fp,-20), gr5
	nop
	mov gr4, gr8
	mov gr5, gr9
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#56,sp
	jmpl @(gr5,gr0)
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.p2align 4
	.globl __negdi2
	.type	__negdi2, @function
__negdi2:
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	subcc gr0,gr5,gr5,icc0
	subx gr0,gr4,gr4,icc0
	mov gr4, gr8
	mov gr5, gr9
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
	jmpl @(gr5,gr0)
	.size	__negdi2, .-__negdi2
	.p2align 4
	.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-32)
	sti gr9, @(fp,-28)
	nop
	ldi @(fp,-32), gr4
	ldi @(fp,-28), gr5
	nop
	sti gr4, @(fp,-24)
	sti gr5, @(fp,-20)
	nop
	ldi @(fp,-24), gr5
	ldi @(fp,-20), gr4
	xor gr5, gr4, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	srli gr4, #16, gr4
	ldi @(fp,-4), gr5
	xor gr5, gr4, gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-8), gr4
	srli gr4, #8, gr4
	ldi @(fp,-8), gr5
	xor gr5, gr4, gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-12), gr4
	srli gr4, #4, gr4
	ldi @(fp,-12), gr5
	xor gr5, gr4, gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-16), gr4
	andi gr4, #15, gr4
	setlos #27030, gr5
	sra gr5, gr4, gr4
	andi gr4, #1, gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	__paritydi2, .-__paritydi2
	.p2align 4
	.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-20)
	ldi @(fp,-20), gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	srli gr4, #16, gr4
	ldi @(fp,-4), gr5
	xor gr5, gr4, gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-8), gr4
	srli gr4, #8, gr4
	ldi @(fp,-8), gr5
	xor gr5, gr4, gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-12), gr4
	srli gr4, #4, gr4
	ldi @(fp,-12), gr5
	xor gr5, gr4, gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-16), gr4
	andi gr4, #15, gr4
	setlos #27030, gr5
	sra gr5, gr4, gr4
	andi gr4, #1, gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	__paritysi2, .-__paritysi2
	.p2align 4
	.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	addi sp,#-64,sp
	sti fp, @(sp,48)
	addi sp,#48,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-48)
	sti gr9, @(fp,-44)
	nop
	ldi @(fp,-48), gr8
	ldi @(fp,-44), gr9
	nop
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	ldi @(fp,-8), gr8
	slli gr8,#31,gr9
	ldi @(fp,-4), gr8
	srli gr8, #1, gr8
	or gr9, gr8, gr8
	ldi @(fp,-8), gr9
	srli gr9, #1, gr14
	sethi #hi(#1431655765), gr9
	setlo #lo(#1431655765), gr9
	and gr14, gr9, gr12
	sethi #hi(#1431655765), gr9
	setlo #lo(#1431655765), gr9
	and gr8, gr9, gr13
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	subcc gr9,gr13,gr9,icc0
	subx gr8,gr12,gr8,icc0
	sti gr8, @(fp,-16)
	sti gr9, @(fp,-12)
	nop
	ldi @(fp,-16), gr8
	slli gr8,#30,gr9
	ldi @(fp,-12), gr8
	srli gr8, #2, gr8
	or gr9, gr8, gr8
	ldi @(fp,-16), gr9
	srli gr9, #2, gr12
	sethi #hi(#858993459), gr9
	setlo #lo(#858993459), gr9
	and gr12, gr9, gr10
	sethi #hi(#858993459), gr9
	setlo #lo(#858993459), gr9
	and gr8, gr9, gr11
	ldi @(fp,-16), gr9
	sethi #hi(#858993459), gr8
	setlo #lo(#858993459), gr8
	and gr9, gr8, gr6
	ldi @(fp,-12), gr9
	sethi #hi(#858993459), gr8
	setlo #lo(#858993459), gr8
	and gr9, gr8, gr7
	addcc gr7,gr11,gr7,icc0
	addx gr6,gr10,gr6,icc0
	sti gr6, @(fp,-24)
	sti gr7, @(fp,-20)
	nop
	ldi @(fp,-24), gr6
	slli gr6,#28,gr6
	ldi @(fp,-20), gr7
	srli gr7, #4, gr5
	or gr6, gr5, gr5
	ldi @(fp,-24), gr6
	srli gr6, #4, gr4
	ldi @(fp,-24), gr6
	ldi @(fp,-20), gr7
	nop
	addcc gr5,gr7,gr5,icc0
	addx gr4,gr6,gr4,icc0
	sethi #hi(#252645135), gr6
	setlo #lo(#252645135), gr6
	and gr4, gr6, gr6
	sti gr6, @(fp,-32)
	sethi #hi(#252645135), gr6
	setlo #lo(#252645135), gr6
	and gr5, gr6, gr4
	sti gr4, @(fp,-28)
	ldi @(fp,-28), gr4
	ldi @(fp,-32), gr5
	srli gr5, #0, gr5
	add gr4,gr5,gr4
	sti gr4, @(fp,-36)
	ldi @(fp,-36), gr4
	srli gr4, #16, gr4
	ldi @(fp,-36), gr5
	add gr5,gr4,gr4
	sti gr4, @(fp,-40)
	ldi @(fp,-40), gr4
	srli gr4, #8, gr5
	ldi @(fp,-40), gr4
	add gr5,gr4,gr4
	andi gr4, #127, gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#64,sp
	jmpl @(gr5,gr0)
	.size	__popcountdi2, .-__popcountdi2
	.p2align 4
	.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-28)
	ldi @(fp,-28), gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	srli gr4, #1, gr5
	sethi #hi(#1431655765), gr4
	setlo #lo(#1431655765), gr4
	and gr5, gr4, gr4
	ldi @(fp,-4), gr5
	sub gr5,gr4,gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-8), gr4
	srli gr4, #2, gr5
	sethi #hi(#858993459), gr4
	setlo #lo(#858993459), gr4
	and gr5, gr4, gr5
	ldi @(fp,-8), gr6
	sethi #hi(#858993459), gr4
	setlo #lo(#858993459), gr4
	and gr6, gr4, gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-12), gr4
	srli gr4, #4, gr5
	ldi @(fp,-12), gr4
	add gr5,gr4,gr5
	sethi #hi(#252645135), gr4
	setlo #lo(#252645135), gr4
	and gr5, gr4, gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-16), gr4
	srli gr4, #16, gr4
	ldi @(fp,-16), gr5
	add gr5,gr4,gr4
	sti gr4, @(fp,-20)
	ldi @(fp,-20), gr4
	srli gr4, #8, gr5
	ldi @(fp,-20), gr4
	add gr5,gr4,gr4
	andi gr4, #63, gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	__popcountsi2, .-__popcountsi2
	.p2align 4
	.globl __powidf2
	.type	__powidf2, @function
__powidf2:
	addi sp,#-56,sp
	sti fp, @(sp,40)
	addi sp,#40,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	mov gr15, gr18
	sti gr8, @(fp,-24)
	sti gr9, @(fp,-20)
	nop
	sti gr10, @(fp,-28)
	ldi @(fp,-28), gr4
	srli gr4, #31, gr4
	andi gr4,#0xff,gr4
	sti gr4, @(fp,-12)
	sethi #hi(#1072693248), gr4
	setlo #lo(#1072693248), gr4
	setlos #0, gr5
	sti gr4, @(fp,-8)
	sti gr5, @(fp,-4)
	nop
.L831:
	ldi @(fp,-28), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L828
	ldi @(fp,-24), gr10
	ldi @(fp,-20), gr11
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr18, gr15
	call __muld
	mov gr8, gr4
	mov gr9, gr5
	sti gr4, @(fp,-8)
	sti gr5, @(fp,-4)
	nop
.L828:
	ldi @(fp,-28), gr4
	srli gr4, #31, gr5
	add gr5,gr4,gr4
	srai gr4, #1, gr4
	sti gr4, @(fp,-28)
	ldi @(fp,-28), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L836
	ldi @(fp,-24), gr10
	ldi @(fp,-20), gr11
	nop
	ldi @(fp,-24), gr8
	ldi @(fp,-20), gr9
	nop
	mov gr18, gr15
	call __muld
	mov gr8, gr4
	mov gr9, gr5
	sti gr4, @(fp,-24)
	sti gr5, @(fp,-20)
	nop
	bra .L831
.L836:
	nop
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L832
	ldi @(fp,-8), gr10
	ldi @(fp,-4), gr11
	nop
	sethi #hi(#1072693248), gr8
	setlo #lo(#1072693248), gr8
	setlos #0, gr9
	mov gr18, gr15
	call __divd
	mov gr8, gr4
	mov gr9, gr5
	bra .L834
.L832:
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
.L834:
	nop
	mov gr4, gr8
	mov gr5, gr9
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#56,sp
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
	mov gr15, gr18
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	ldi @(fp,-16), gr4
	srli gr4, #31, gr4
	andi gr4,#0xff,gr4
	sti gr4, @(fp,-8)
	sethi #hi(#1065353216), gr4
	setlo #lo(#1065353216), gr4
	sti gr4, @(fp,-4)
.L841:
	ldi @(fp,-16), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L838
	ldi @(fp,-12), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __mulf
	mov gr8, gr4
	sti gr4, @(fp,-4)
.L838:
	ldi @(fp,-16), gr4
	srli gr4, #31, gr5
	add gr5,gr4,gr4
	srai gr4, #1, gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-16), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L846
	ldi @(fp,-12), gr9
	ldi @(fp,-12), gr8
	mov gr18, gr15
	call __mulf
	mov gr8, gr4
	sti gr4, @(fp,-12)
	bra .L841
.L846:
	nop
	ldi @(fp,-8), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L842
	ldi @(fp,-4), gr9
	sethi #hi(#1065353216), gr8
	setlo #lo(#1065353216), gr8
	mov gr18, gr15
	call __divf
	mov gr8, gr4
	bra .L844
.L842:
	ldi @(fp,-4), gr4
.L844:
	nop
	mov gr4, gr8
	ldi @(sp,0), gr18
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	__powisf2, .-__powisf2
	.p2align 4
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-24)
	sti gr9, @(fp,-20)
	nop
	sti gr10, @(fp,-32)
	sti gr11, @(fp,-28)
	nop
	ldi @(fp,-24), gr4
	ldi @(fp,-20), gr5
	nop
	sti gr4, @(fp,-8)
	sti gr5, @(fp,-4)
	nop
	ldi @(fp,-32), gr4
	ldi @(fp,-28), gr5
	nop
	sti gr4, @(fp,-16)
	sti gr5, @(fp,-12)
	nop
	ldi @(fp,-8), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L848
	setlos #0, gr4
	bra .L853
.L848:
	ldi @(fp,-8), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	bls icc0,0,.L850
	setlos #2, gr4
	bra .L853
.L850:
	ldi @(fp,-4), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L851
	setlos #0, gr4
	bra .L853
.L851:
	ldi @(fp,-4), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bls icc0,0,.L852
	setlos #2, gr4
	bra .L853
.L852:
	setlos #1, gr4
.L853:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	__ucmpdi2, .-__ucmpdi2
	.p2align 4
	.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	mov gr15, gr4
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	sti gr10, @(fp,-16)
	sti gr11, @(fp,-12)
	nop
	ldi @(fp,-16), gr10
	ldi @(fp,-12), gr11
	nop
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr4, gr15
	call __ucmpdi2
	mov gr8, gr4
	addi gr4,#-1,gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.section	.sbss
	.p2align 2
	.type	s.0, @object
	.size	s.0, 7
s.0:
	.zero	7
	.globl __divf
	.globl __ftoi
	.globl __gesf2
	.globl __floatundisf
	.globl __floatundidf
	.globl __floatunsisf
	.globl __floatunsidf
	.globl __clzdi2
	.globl __clzsi2
	.globl __divd
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
