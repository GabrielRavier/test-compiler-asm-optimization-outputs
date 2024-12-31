	.file	"mini-libc.c"
	.text
	.p2align 4
	.globl memmove
	.type	memmove, @function
memmove:
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
	ldi @(fp,-16), gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-8), gr5
	ldi @(fp,-4), gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L2
	ldi @(fp,-8), gr5
	ldi @(fp,-20), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-4), gr5
	ldi @(fp,-20), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-4)
	bra .L3
.L4:
	ldi @(fp,-8), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-4), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	ldsb @(gr4,gr0),gr5
	ldi @(fp,-4), gr4
	stb gr5, @(gr4,gr0)
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-20)
.L3:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L4
	bra .L5
.L2:
	ldi @(fp,-8), gr5
	ldi @(fp,-4), gr4
	cmp gr5,gr4,icc0
	beq icc0,0,.L5
	bra .L6
.L7:
	ldi @(fp,-8), gr5
	addi gr5,#1,gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-4), gr4
	addi gr4,#1,gr6
	sti gr6, @(fp,-4)
	ldsb @(gr5,gr0),gr5
	stb gr5, @(gr4,gr0)
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-20)
.L6:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L7
.L5:
	ldi @(fp,-12), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
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
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-16), gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-20), gr4
	andi gr4,#0xff,gr4
	sti gr4, @(fp,-20)
	bra .L10
.L12:
	ldi @(fp,-24), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-24)
	ldi @(fp,-8), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L10:
	ldi @(fp,-24), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L11
	ldi @(fp,-8), gr4
	ldub @(gr4,gr0),gr5
	ldi @(fp,-4), gr4
	stb gr5, @(gr4,gr0)
	ldi @(fp,-4), gr4
	ldub @(gr4,gr0),gr4
	mov gr4, gr5
	ldi @(fp,-20), gr4
	cmp gr4,gr5,icc0
	bne icc0,2,.L12
.L11:
	ldi @(fp,-24), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L13
	ldi @(fp,-4), gr4
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
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-16), gr4
	andi gr4,#0xff,gr4
	sti gr4, @(fp,-16)
	bra .L16
.L18:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-20)
.L16:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L17
	ldi @(fp,-4), gr4
	ldub @(gr4,gr0),gr4
	mov gr4, gr5
	ldi @(fp,-16), gr4
	cmp gr4,gr5,icc0
	bne icc0,2,.L18
.L17:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L19
	ldi @(fp,-4), gr4
	bra .L21
.L19:
	setlos #0, gr4
.L21:
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
	ldi @(fp,-16), gr4
	sti gr4, @(fp,-8)
	bra .L23
.L25:
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-20)
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-8)
.L23:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L24
	ldi @(fp,-4), gr4
	ldub @(gr4,gr0),gr5
	ldi @(fp,-8), gr4
	ldub @(gr4,gr0),gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L25
.L24:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L26
	ldi @(fp,-4), gr4
	ldub @(gr4,gr0),gr4
	mov gr4, gr5
	ldi @(fp,-8), gr4
	ldub @(gr4,gr0),gr4
	sub gr5,gr4,gr4
	bra .L28
.L26:
	setlos #0, gr4
.L28:
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
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
	ldi @(fp,-16), gr4
	sti gr4, @(fp,-8)
	bra .L30
.L31:
	ldi @(fp,-8), gr5
	addi gr5,#1,gr4
	sti gr4, @(fp,-8)
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
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-16), gr4
	andi gr4,#0xff,gr4
	sti gr4, @(fp,-16)
	bra .L34
.L36:
	ldi @(fp,-4), gr5
	ldi @(fp,-20), gr4
	add gr5,gr4,gr4
	ldub @(gr4,gr0),gr4
	mov gr4, gr5
	ldi @(fp,-16), gr4
	cmp gr4,gr5,icc0
	bne icc0,0,.L34
	ldi @(fp,-4), gr5
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
	ldi @(fp,-16), gr4
	andi gr4,#0xff,gr5
	ldi @(fp,-4), gr4
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
	addi sp,#-24,sp
	sti fp, @(sp,8)
	addi sp,#8,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	ldi @(fp,-8), gr4
	andi gr4,#0xff,gr4
	sti gr4, @(fp,-8)
	bra .L46
.L48:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L46:
	ldi @(fp,-4), gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L47
	ldi @(fp,-4), gr4
	ldub @(gr4,gr0),gr4
	mov gr4, gr5
	ldi @(fp,-8), gr4
	cmp gr4,gr5,icc0
	bne icc0,2,.L48
.L47:
	ldi @(fp,-4), gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#24,sp
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
	mov gr5, gr6
	ldi @(fp,-4), gr5
	cmp gr5,gr6,icc0
	bne icc0,0,.L51
	bra .L52
.L51:
	mov gr4, gr5
	addi gr5,#1,gr4
	ldsb @(gr5,gr0),gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L53
	setlos #0, gr4
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
	bra .L55
.L57:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-8)
.L55:
	ldi @(fp,-4), gr4
	ldsb @(gr4,gr0),gr5
	ldi @(fp,-8), gr4
	ldsb @(gr4,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L56
	ldi @(fp,-4), gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L57
.L56:
	ldi @(fp,-4), gr4
	ldub @(gr4,gr0),gr4
	mov gr4, gr5
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
	bra .L60
.L61:
	ldi @(fp,-12), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-12)
.L60:
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L61
	ldi @(fp,-12), gr5
	ldi @(fp,-4), gr4
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
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-16), gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr5
	sti gr5, @(fp,-20)
	cmpi gr4, #0, icc0
	bne icc0,0,.L66
	setlos #0, gr4
	bra .L65
.L68:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-20)
.L66:
	ldi @(fp,-4), gr4
	ldub @(gr4,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L67
	ldi @(fp,-8), gr4
	ldub @(gr4,gr0),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L67
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L67
	ldi @(fp,-4), gr4
	ldub @(gr4,gr0),gr5
	ldi @(fp,-8), gr4
	ldub @(gr4,gr0),gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L68
.L67:
	ldi @(fp,-4), gr4
	ldub @(gr4,gr0),gr4
	mov gr4, gr5
	ldi @(fp,-8), gr4
	ldub @(gr4,gr0),gr4
	sub gr5,gr4,gr4
.L65:
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
	ldi @(fp,-16), gr4
	sti gr4, @(fp,-8)
	bra .L70
.L71:
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
	ldi @(fp,-20), gr4
	addi gr4,#-2,gr4
	sti gr4, @(fp,-20)
.L70:
	ldi @(fp,-20), gr4
	cmpi gr4,#1,icc0
	bgt icc0,2,.L71
	nop
	nop
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
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
	andi gr4,#0xff,gr4
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
	andi gr4,#0xff,gr4
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
	beq icc0,0,.L77
	ldi @(fp,-4), gr4
	cmpi gr4,#9,icc0
	bne icc0,0,.L78
.L77:
	setlos #1, gr4
	bra .L80
.L78:
	setlos #0, gr4
.L80:
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
	bls icc0,0,.L82
	ldi @(fp,-4), gr4
	cmpi gr4,#127,icc0
	bne icc0,0,.L83
.L82:
	setlos #1, gr4
	bra .L85
.L83:
	setlos #0, gr4
.L85:
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
	andi gr4,#0xff,gr4
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
	andi gr4,#0xff,gr4
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
	andi gr4,#0xff,gr4
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
	andi gr4,#0xff,gr4
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
	beq icc0,0,.L95
	ldi @(fp,-4), gr4
	addi gr4,#-9,gr4
	cmpi gr4,#4,icc0
	bhi icc0,0,.L96
.L95:
	setlos #1, gr4
	bra .L98
.L96:
	setlos #0, gr4
.L98:
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
	andi gr4,#0xff,gr4
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
	bls icc0,0,.L102
	ldi @(fp,-4), gr4
	addi gr4,#-127,gr4
	cmpi gr4,#32,icc0
	bls icc0,0,.L102
	ldi @(fp,-4), gr5
	setlos #-8232, gr4
	add gr5,gr4,gr4
	cmpi gr4,#1,icc0
	bls icc0,0,.L102
	ldi @(fp,-4), gr5
	sethi #hi(#-65529), gr4
	setlo #lo(#-65529), gr4
	add gr5,gr4,gr4
	cmpi gr4,#2,icc0
	bhi icc0,0,.L103
.L102:
	setlos #1, gr4
	bra .L105
.L103:
	setlos #0, gr4
.L105:
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
	andi gr4,#0xff,gr4
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
	bhi icc0,0,.L109
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	andi gr4, #127, gr4
	cmpi gr4,#32,icc0
	ckhi icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	bra .L110
.L109:
	ldi @(fp,-4), gr5
	setlos #8231, gr4
	cmp gr5,gr4,icc0
	bls icc0,0,.L111
	ldi @(fp,-4), gr5
	setlos #-8234, gr4
	add gr5,gr4,gr5
	sethi #hi(#47061), gr4
	setlo #lo(#47061), gr4
	cmp gr5,gr4,icc0
	bls icc0,0,.L111
	ldi @(fp,-4), gr5
	sethi #hi(#-57344), gr4
	setlo #lo(#-57344), gr4
	add gr5,gr4,gr5
	setlos #8184, gr4
	cmp gr5,gr4,icc0
	bhi icc0,0,.L112
.L111:
	setlos #1, gr4
	bra .L110
.L112:
	ldi @(fp,-4), gr5
	sethi #hi(#-65532), gr4
	setlo #lo(#-65532), gr4
	add gr5,gr4,gr5
	sethi #hi(#1048579), gr4
	setlo #lo(#1048579), gr4
	cmp gr5,gr4,icc0
	bhi icc0,0,.L113
	ldi @(fp,-4), gr5
	sethi #hi(#65534), gr4
	setlo #lo(#65534), gr4
	and gr5, gr4, gr5
	sethi #hi(#65534), gr4
	setlo #lo(#65534), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L114
.L113:
	setlos #0, gr4
	bra .L110
.L114:
	setlos #1, gr4
.L110:
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
	bls icc0,0,.L116
	ldi @(fp,-4), gr4
	ori gr4, #32, gr4
	addi gr4,#-97,gr4
	cmpi gr4,#5,icc0
	bhi icc0,0,.L117
.L116:
	setlos #1, gr4
	bra .L119
.L117:
	setlos #0, gr4
.L119:
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
	beq icc0,0,.L134
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L125
.L134:
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
	beq icc0,0,.L135
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L125
.L135:
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
	ble icc0,0,.L136
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
	bra .L125
.L136:
	setlos #0, gr4
	setlos #0, gr5
.L125:
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
	beq icc0,0,.L149
	ldi @(fp,-4), gr4
	bra .L140
.L149:
	ldi @(fp,-8), gr9
	ldi @(fp,-8), gr8
	mov gr18, gr15
	call __unordsf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L150
	ldi @(fp,-8), gr4
	bra .L140
.L150:
	ldi @(fp,-8), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __gtsf2
	mov gr8, gr4
	cmpi gr4,#0,icc0
	ble icc0,0,.L151
	ldi @(fp,-8), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __subf
	mov gr8, gr4
	bra .L140
.L151:
	setlos #0, gr4
.L140:
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
	beq icc0,0,.L167
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L155
.L167:
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
	beq icc0,0,.L168
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L155
.L168:
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
	beq icc0,0,.L158
	ldi @(fp,-8), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L159
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L155
.L159:
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L155
.L158:
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
	bp icc0,0,.L169
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L155
.L169:
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
.L155:
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
	beq icc0,0,.L185
	ldi @(fp,-8), gr4
	bra .L173
.L185:
	ldi @(fp,-8), gr9
	ldi @(fp,-8), gr8
	mov gr18, gr15
	call __unordsf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L186
	ldi @(fp,-4), gr4
	bra .L173
.L186:
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
	beq icc0,0,.L176
	ldi @(fp,-4), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L177
	ldi @(fp,-8), gr4
	bra .L173
.L177:
	ldi @(fp,-4), gr4
	bra .L173
.L176:
	ldi @(fp,-8), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __ltsf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L187
	ldi @(fp,-8), gr4
	bra .L173
.L187:
	ldi @(fp,-4), gr4
.L173:
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
	beq icc0,0,.L203
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L191
.L203:
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
	beq icc0,0,.L204
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L191
.L204:
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
	beq icc0,0,.L194
	ldi @(fp,-8), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L195
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L191
.L195:
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L191
.L194:
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
	bp icc0,0,.L205
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L191
.L205:
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
.L191:
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
	beq icc0,0,.L221
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L209
.L221:
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
	beq icc0,0,.L222
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L209
.L222:
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
	beq icc0,0,.L212
	ldi @(fp,-8), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L213
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L209
.L213:
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L209
.L212:
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
	bp icc0,0,.L223
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L209
.L223:
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
.L209:
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
	beq icc0,0,.L239
	ldi @(fp,-8), gr4
	bra .L227
.L239:
	ldi @(fp,-8), gr9
	ldi @(fp,-8), gr8
	mov gr18, gr15
	call __unordsf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L240
	ldi @(fp,-4), gr4
	bra .L227
.L240:
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
	beq icc0,0,.L230
	ldi @(fp,-4), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L231
	ldi @(fp,-4), gr4
	bra .L227
.L231:
	ldi @(fp,-8), gr4
	bra .L227
.L230:
	ldi @(fp,-8), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __ltsf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L241
	ldi @(fp,-4), gr4
	bra .L227
.L241:
	ldi @(fp,-8), gr4
.L227:
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
	beq icc0,0,.L257
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L245
.L257:
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
	beq icc0,0,.L258
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L245
.L258:
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
	beq icc0,0,.L248
	ldi @(fp,-8), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	and gr5, gr4, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L249
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L245
.L249:
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	bra .L245
.L248:
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
	bp icc0,0,.L259
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	bra .L245
.L259:
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
.L245:
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
	bra .L261
.L262:
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
.L261:
	ldi @(fp,-8), gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L262
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
	mov gr15, gr6
	sti gr8, @(fp,-4)
	ldi @(fp,-4), gr7
	addi gr7,#-1,gr7
	mov gr7, gr5
	setlos #0, gr4
	sethi #gotoffhi(seed), gr7
	setlo #gotofflo(seed), gr7
	add gr7,gr6,gr6
	st gr4, @(gr6,gr0)
	sti gr5, @(gr6,4)
	nop
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
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr20, @(sp,4)
	sti gr21, @(sp,8)
	mov gr15, gr18
	sethi #gotoffhi(seed), gr4
	setlo #gotofflo(seed), gr4
	add gr4,gr18,gr4
	ldi @(gr4,4), gr5
	ld @(gr4,gr0), gr4
	nop
	sethi #hi(#1481765933), gr10
	setlo #lo(#1481765933), gr10
	sethi #hi(#1284865837), gr11
	setlo #lo(#1284865837), gr11
	mov gr4, gr8
	mov gr5, gr9
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
	ldi @(gr4,4), gr5
	ld @(gr4,gr0), gr4
	nop
	srli gr4, #1, gr21
	setlos #0, gr20
	mov gr21, gr4
	mov gr4, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr20
	ldi @(sp,8), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	rand, .-rand
	.p2align 4
	.globl insque
	.type	insque, @function
insque:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	sti gr9, @(fp,-16)
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-16), gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-8), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L268
	ldi @(fp,-4), gr4
	sti gr0, @(gr4,4)
	ldi @(fp,-4), gr4
	ldi @(gr4,4), gr5
	ldi @(fp,-4), gr4
	st gr5, @(gr4,gr0)
	bra .L267
.L268:
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
	beq icc0,0,.L267
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	ldi @(fp,-4), gr5
	sti gr5, @(gr4,4)
.L267:
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	insque, .-insque
	.p2align 4
	.globl remque
	.type	remque, @function
remque:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L271
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	ldi @(fp,-4), gr5
	ldi @(gr5,4), gr5
	sti gr5, @(gr4,4)
.L271:
	ldi @(fp,-4), gr4
	ldi @(gr4,4), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L273
	ldi @(fp,-4), gr4
	ldi @(gr4,4), gr4
	ldi @(fp,-4), gr5
	ld @(gr5,gr0), gr5
	st gr5, @(gr4,gr0)
.L273:
	nop
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
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
	mov gr18, gr8
	addi gr8,#-1,gr8
	sti gr8, @(fp,-8)
	mov gr18, gr7
	setlos #0, gr6
	srli gr7, #29, gr8
	slli gr6,#3,gr4
	or gr8, gr4, gr4
	slli gr7,#3,gr5
	ldi @(fp,-24), gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-28), gr4
	ld @(gr4,gr0), gr4
	sti gr4, @(fp,-16)
	sti gr0, @(fp,-4)
	bra .L275
.L278:
	ldi @(fp,-4), gr4
	umul gr18,gr4,gr4
	ldi @(fp,-12), gr4
	add gr4,gr5,gr5
	ldi @(fp,-36), gr4
	mov gr5, gr9
	ldi @(fp,-20), gr8
	ldd @(gr4,gr0), gr14
	calll @(gr14,gr0)
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L276
	ldi @(fp,-4), gr4
	umul gr18,gr4,gr4
	ldi @(fp,-12), gr4
	add gr4,gr5,gr4
	bra .L277
.L276:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L275:
	ldi @(fp,-4), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	bc icc0,2,.L278
	ldi @(fp,-16), gr4
	addi gr4,#1,gr5
	ldi @(fp,-28), gr4
	st gr5, @(gr4,gr0)
	ldi @(fp,-16), gr4
	umul gr18,gr4,gr4
	ldi @(fp,-12), gr4
	add gr4,gr5,gr4
	ldi @(fp,-32), gr10
	ldi @(fp,-20), gr9
	mov gr4, gr8
	mov gr19, gr15
	call memcpy
	mov gr8, gr4
.L277:
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
	mov gr18, gr8
	addi gr8,#-1,gr8
	sti gr8, @(fp,-8)
	mov gr18, gr7
	setlos #0, gr6
	srli gr7, #29, gr8
	slli gr6,#3,gr4
	or gr8, gr4, gr4
	slli gr7,#3,gr5
	ldi @(fp,-24), gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-28), gr4
	ld @(gr4,gr0), gr4
	sti gr4, @(fp,-16)
	sti gr0, @(fp,-4)
	bra .L280
.L283:
	ldi @(fp,-4), gr4
	umul gr18,gr4,gr4
	ldi @(fp,-12), gr4
	add gr4,gr5,gr5
	ldi @(fp,-36), gr4
	mov gr5, gr9
	ldi @(fp,-20), gr8
	ldd @(gr4,gr0), gr14
	calll @(gr14,gr0)
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L281
	ldi @(fp,-4), gr4
	umul gr18,gr4,gr4
	ldi @(fp,-12), gr4
	add gr4,gr5,gr4
	bra .L282
.L281:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L280:
	ldi @(fp,-4), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	bc icc0,2,.L283
	setlos #0, gr4
.L282:
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
	bra .L287
.L288:
	ldi @(fp,-12), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-12)
.L287:
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr4
	mov gr4, gr8
	mov gr18, gr15
	call isspace
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L288
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L289
	cmpi gr4,#45,icc0
	bne icc0,0,.L291
	setlos #1, gr4
	sti gr4, @(fp,-8)
.L289:
	ldi @(fp,-12), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-12)
	bra .L291
.L292:
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
.L291:
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L292
	ldi @(fp,-8), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L293
	ldi @(fp,-4), gr4
	sub gr0,gr4,gr4
	bra .L295
.L293:
	ldi @(fp,-4), gr4
.L295:
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
	bra .L297
.L298:
	ldi @(fp,-12), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-12)
.L297:
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr4
	mov gr4, gr8
	mov gr18, gr15
	call isspace
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L298
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L299
	cmpi gr4,#45,icc0
	bne icc0,0,.L301
	setlos #1, gr4
	sti gr4, @(fp,-8)
.L299:
	ldi @(fp,-12), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-12)
	bra .L301
.L302:
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
.L301:
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L302
	ldi @(fp,-8), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L303
	ldi @(fp,-4), gr4
	sub gr0,gr4,gr4
	bra .L305
.L303:
	ldi @(fp,-4), gr4
.L305:
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
	addi sp,#-72,sp
	sti fp, @(sp,56)
	addi sp,#56,fp
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
	sti gr8, @(fp,-20)
	sti gr0, @(fp,-8)
	sti gr0, @(fp,-4)
	nop
	sti gr0, @(fp,-12)
	bra .L307
.L308:
	ldi @(fp,-20), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-20)
.L307:
	ldi @(fp,-20), gr4
	ldsb @(gr4,gr0),gr4
	mov gr4, gr8
	mov gr24, gr15
	call isspace
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L308
	ldi @(fp,-20), gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4,#43,icc0
	beq icc0,0,.L309
	cmpi gr4,#45,icc0
	bne icc0,0,.L311
	setlos #1, gr4
	sti gr4, @(fp,-12)
.L309:
	ldi @(fp,-20), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-20)
	bra .L311
.L312:
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
	srli gr5, #31, gr6
	slli gr4,#1,gr20
	or gr6, gr20, gr20
	slli gr5,#1,gr21
	mov gr20, gr4
	mov gr21, gr5
	mov gr4, gr6
	mov gr5, gr7
	ldi @(fp,-20), gr4
	addi gr4,#1,gr5
	sti gr5, @(fp,-20)
	ldsb @(gr4,gr0),gr4
	addi gr4,#-48,gr4
	mov gr4, gr23
	srai gr4, #31, gr4
	mov gr4, gr22
	subcc gr7,gr23,gr5,icc0
	subx gr6,gr22,gr4,icc0
	sti gr4, @(fp,-8)
	sti gr5, @(fp,-4)
	nop
.L311:
	ldi @(fp,-20), gr4
	ldsb @(gr4,gr0),gr4
	addi gr4,#-48,gr4
	cmpi gr4,#9,icc0
	bls icc0,2,.L312
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L313
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	subcc gr0,gr5,gr5,icc0
	subx gr0,gr4,gr4,icc0
	bra .L315
.L313:
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
.L315:
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
	addi sp,#72,sp
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
	bra .L317
.L322:
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
	bp icc0,0,.L318
	ldi @(fp,-20), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-20)
	bra .L317
.L318:
	ldi @(fp,-8), gr4
	cmpi gr4,#0,icc0
	ble icc0,0,.L320
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
	bra .L317
.L320:
	ldi @(fp,-4), gr4
	bra .L321
.L317:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L322
	setlos #0, gr4
.L321:
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
	ldi @(fp,-24), gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-28), gr4
	sti gr4, @(fp,-8)
	bra .L324
.L328:
	ldi @(fp,-8), gr4
	srai gr4, #1, gr4
	mov gr4, gr5
	ldi @(fp,-32), gr4
	umul gr5,gr4,gr4
	ldi @(fp,-4), gr4
	add gr4,gr5,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-36), gr4
	ldi @(fp,-40), gr10
	ldi @(fp,-12), gr9
	ldi @(fp,-20), gr8
	ldd @(gr4,gr0), gr14
	calll @(gr14,gr0)
	mov gr8, gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-16), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L325
	ldi @(fp,-12), gr4
	bra .L326
.L325:
	ldi @(fp,-16), gr4
	cmpi gr4,#0,icc0
	ble icc0,0,.L327
	ldi @(fp,-12), gr5
	ldi @(fp,-32), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-8)
.L327:
	ldi @(fp,-8), gr4
	srai gr4, #1, gr4
	sti gr4, @(fp,-8)
.L324:
	ldi @(fp,-8), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L328
	setlos #0, gr4
.L326:
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
	bp icc0,0,.L332
	subcc gr0,gr5,gr5,icc0
	subx gr0,gr4,gr4,icc0
.L332:
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
	bp icc0,0,.L342
	subcc gr0,gr5,gr5,icc0
	subx gr0,gr4,gr4,icc0
.L342:
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
	bra .L348
.L350:
	ldi @(fp,-4), gr4
	addi gr4,#4,gr4
	sti gr4, @(fp,-4)
.L348:
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L349
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	ldi @(fp,-8), gr5
	cmp gr5,gr4,icc0
	bne icc0,2,.L350
.L349:
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L351
	ldi @(fp,-4), gr4
	bra .L353
.L351:
	setlos #0, gr4
.L353:
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
	bra .L355
.L357:
	ldi @(fp,-4), gr4
	addi gr4,#4,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	addi gr4,#4,gr4
	sti gr4, @(fp,-8)
.L355:
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr5
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L356
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L356
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L357
.L356:
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr5
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,0,.L358
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr5
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmp gr5,gr4,icc0
	ckgt icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	bra .L360
.L358:
	setlos #-1, gr4
.L360:
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
	nop
.L362:
	ldi @(fp,-16), gr5
	addi gr5,#4,gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-12), gr4
	addi gr4,#4,gr6
	sti gr6, @(fp,-12)
	ld @(gr5,gr0), gr5
	st gr5, @(gr4,gr0)
	ld @(gr4,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L362
	ldi @(fp,-4), gr4
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
	bra .L365
.L366:
	ldi @(fp,-12), gr4
	addi gr4,#4,gr4
	sti gr4, @(fp,-12)
.L365:
	ldi @(fp,-12), gr4
	ld @(gr4,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L366
	ldi @(fp,-12), gr5
	ldi @(fp,-4), gr4
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
	bra .L369
.L371:
	ldi @(fp,-12), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-4), gr4
	addi gr4,#4,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	addi gr4,#4,gr4
	sti gr4, @(fp,-8)
.L369:
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L370
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr5
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L370
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L370
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L371
.L370:
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L372
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr5
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,0,.L373
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr5
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmp gr5,gr4,icc0
	ckgt icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	bra .L376
.L373:
	setlos #-1, gr4
	bra .L376
.L372:
	setlos #0, gr4
.L376:
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
	bra .L378
.L380:
	ldi @(fp,-12), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-4), gr4
	addi gr4,#4,gr4
	sti gr4, @(fp,-4)
.L378:
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L379
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr4
	ldi @(fp,-8), gr5
	cmp gr5,gr4,icc0
	bne icc0,2,.L380
.L379:
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L381
	ldi @(fp,-4), gr4
	bra .L383
.L381:
	setlos #0, gr4
.L383:
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
	bra .L385
.L387:
	ldi @(fp,-12), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-4), gr4
	addi gr4,#4,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	addi gr4,#4,gr4
	sti gr4, @(fp,-8)
.L385:
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L386
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr5
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmp gr5,gr4,icc0
	beq icc0,2,.L387
.L386:
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L388
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr5
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmp gr5,gr4,icc0
	blt icc0,0,.L389
	ldi @(fp,-4), gr4
	ld @(gr4,gr0), gr5
	ldi @(fp,-8), gr4
	ld @(gr4,gr0), gr4
	cmp gr5,gr4,icc0
	ckgt icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	bra .L392
.L389:
	setlos #-1, gr4
	bra .L392
.L388:
	setlos #0, gr4
.L392:
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
	bra .L394
.L395:
	ldi @(fp,-16), gr5
	addi gr5,#4,gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-12), gr4
	addi gr4,#4,gr6
	sti gr6, @(fp,-12)
	ld @(gr5,gr0), gr5
	st gr5, @(gr4,gr0)
.L394:
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr5
	sti gr5, @(fp,-20)
	cmpi gr4, #0, icc0
	bne icc0,2,.L395
	ldi @(fp,-4), gr4
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
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L398
	ldi @(fp,-12), gr4
	bra .L399
.L398:
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	sub gr5,gr4,gr5
	ldi @(fp,-20), gr4
	slli gr4,#2,gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L404
	bra .L401
.L402:
	ldi @(fp,-20), gr4
	slli gr4,#2,gr4
	ldi @(fp,-16), gr5
	add gr5,gr4,gr5
	ldi @(fp,-20), gr4
	slli gr4,#2,gr4
	ldi @(fp,-12), gr6
	add gr6,gr4,gr4
	ld @(gr5,gr0), gr5
	st gr5, @(gr4,gr0)
.L401:
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr5
	sti gr5, @(fp,-20)
	cmpi gr4, #0, icc0
	bne icc0,2,.L402
	bra .L403
.L405:
	ldi @(fp,-16), gr5
	addi gr5,#4,gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-12), gr4
	addi gr4,#4,gr6
	sti gr6, @(fp,-12)
	ld @(gr5,gr0), gr5
	st gr5, @(gr4,gr0)
.L404:
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr5
	sti gr5, @(fp,-20)
	cmpi gr4, #0, icc0
	bne icc0,2,.L405
.L403:
	ldi @(fp,-4), gr4
.L399:
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
	bra .L407
.L408:
	ldi @(fp,-12), gr4
	addi gr4,#4,gr5
	sti gr5, @(fp,-12)
	ldi @(fp,-16), gr5
	st gr5, @(gr4,gr0)
.L407:
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr5
	sti gr5, @(fp,-20)
	cmpi gr4, #0, icc0
	bne icc0,2,.L408
	ldi @(fp,-4), gr4
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
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-16), gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-4), gr5
	ldi @(fp,-8), gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L411
	ldi @(fp,-4), gr5
	ldi @(fp,-20), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr5
	ldi @(fp,-20), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-8)
	bra .L412
.L413:
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
.L412:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L413
	bra .L417
.L411:
	ldi @(fp,-4), gr5
	ldi @(fp,-8), gr4
	cmp gr5,gr4,icc0
	beq icc0,0,.L417
	bra .L415
.L416:
	ldi @(fp,-4), gr5
	addi gr5,#1,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	addi gr4,#1,gr6
	sti gr6, @(fp,-8)
	ldsb @(gr5,gr0),gr5
	stb gr5, @(gr4,gr0)
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-20)
.L415:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L416
.L417:
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
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	sti gr10, @(fp,-12)
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	ldi @(fp,-12), gr10
	addi gr10,#-32,gr10
	sll gr9,gr10,gr11
	setlos #0, gr19
	srli gr9, #1, gr15
	setlos #31, gr18
	ldi @(fp,-12), gr14
	sub gr18,gr14,gr14
	srl gr15, gr14, gr14
	ldi @(fp,-12), gr15
	sll gr8,gr15,gr6
	or gr14, gr6, gr6
	ldi @(fp,-12), gr14
	sll gr9,gr14,gr7
	cmpi gr10, #0, icc0
	ckp icc0, cc4
	cmov gr11, gr6, cc4, 1
	cmpi gr10, #0, icc0
	ckp icc0, cc4
	cmov gr19, gr7, cc4, 1
	ldi @(fp,-12), gr10
	sub gr0,gr10,gr10
	andi gr10, #63, gr10
	addi gr10,#-32,gr10
	srl gr8, gr10, gr14
	setlos #0, gr19
	slli gr8,#1,gr15
	setlos #31, gr18
	ldi @(fp,-12), gr11
	sub gr0,gr11,gr11
	andi gr11, #63, gr11
	sub gr18,gr11,gr11
	sll gr15,gr11,gr15
	ldi @(fp,-12), gr11
	sub gr0,gr11,gr11
	andi gr11, #63, gr11
	srl gr9, gr11, gr5
	or gr15, gr5, gr5
	ldi @(fp,-12), gr11
	sub gr0,gr11,gr11
	andi gr11, #63, gr11
	srl gr8, gr11, gr4
	cmpi gr10, #0, icc0
	ckp icc0, cc4
	cmov gr14, gr5, cc4, 1
	cmpi gr10, #0, icc0
	ckp icc0, cc4
	cmov gr19, gr4, cc4, 1
	or gr4, gr6, gr12
	or gr5, gr7, gr13
	mov gr12, gr4
	mov gr13, gr5
	mov gr4, gr8
	mov gr5, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	rotl64, .-rotl64
	.p2align 4
	.globl rotr64
	.type	rotr64, @function
rotr64:
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	sti gr10, @(fp,-12)
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	ldi @(fp,-12), gr10
	addi gr10,#-32,gr10
	srl gr8, gr10, gr11
	setlos #0, gr19
	slli gr8,#1,gr15
	setlos #31, gr18
	ldi @(fp,-12), gr14
	sub gr18,gr14,gr14
	sll gr15,gr14,gr14
	ldi @(fp,-12), gr15
	srl gr9, gr15, gr7
	or gr14, gr7, gr7
	ldi @(fp,-12), gr14
	srl gr8, gr14, gr6
	cmpi gr10, #0, icc0
	ckp icc0, cc4
	cmov gr11, gr7, cc4, 1
	cmpi gr10, #0, icc0
	ckp icc0, cc4
	cmov gr19, gr6, cc4, 1
	ldi @(fp,-12), gr10
	sub gr0,gr10,gr10
	andi gr10, #63, gr10
	addi gr10,#-32,gr10
	sll gr9,gr10,gr14
	setlos #0, gr19
	srli gr9, #1, gr15
	setlos #31, gr18
	ldi @(fp,-12), gr11
	sub gr0,gr11,gr11
	andi gr11, #63, gr11
	sub gr18,gr11,gr11
	srl gr15, gr11, gr15
	ldi @(fp,-12), gr11
	sub gr0,gr11,gr11
	andi gr11, #63, gr11
	sll gr8,gr11,gr4
	or gr15, gr4, gr4
	ldi @(fp,-12), gr11
	sub gr0,gr11,gr11
	andi gr11, #63, gr11
	sll gr9,gr11,gr5
	cmpi gr10, #0, icc0
	ckp icc0, cc4
	cmov gr14, gr4, cc4, 1
	cmpi gr10, #0, icc0
	ckp icc0, cc4
	cmov gr19, gr5, cc4, 1
	or gr4, gr6, gr12
	or gr5, gr7, gr13
	mov gr12, gr4
	mov gr13, gr5
	mov gr4, gr8
	mov gr5, gr9
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
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
	lduhi @(fp,-10),gr5
	ldi @(fp,-4), gr4
	slli gr4,#8,gr4
	and gr5, gr4, gr4
	srli gr4, #8, gr4
	mov gr4, gr5
	sethi #hi(#0),gr5
	ldi @(fp,-4), gr4
	mov gr4, gr6
	sethi #hi(#0),gr6
	ldshi @(fp,-10),gr4
	and gr6, gr4, gr4
	sethi #hi(#0),gr4
	slli gr4,#8,gr4
	sethi #hi(#0),gr4
	or gr5, gr4, gr4
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
	addi sp,#-240,sp
	sti fp, @(sp,224)
	addi sp,#224,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr16, @(sp,0)
	sti gr17, @(sp,4)
	sti gr18, @(sp,8)
	sti gr19, @(sp,12)
	sti gr20, @(sp,16)
	sti gr21, @(sp,20)
	sti gr22, @(sp,24)
	sti gr23, @(sp,28)
	sti gr24, @(sp,32)
	sti gr25, @(sp,36)
	sti gr26, @(sp,40)
	sti gr27, @(sp,44)
	sti gr8, @(fp,-16)
	sti gr9, @(fp,-12)
	nop
	setlos #0, gr4
	setlos #255, gr5
	sti gr4, @(fp,-8)
	sti gr5, @(fp,-4)
	nop
	ldi @(fp,-4), gr4
	slli gr4,#24,gr6
	setlos #0, gr7
	ldi @(fp,-16), gr4
	and gr4, gr6, gr10
	ldi @(fp,-12), gr4
	and gr4, gr7, gr11
	srli gr10, #24, gr17
	setlos #0, gr16
	ldi @(fp,-4), gr4
	slli gr4,#16,gr14
	setlos #0, gr15
	ldi @(fp,-16), gr4
	and gr4, gr14, gr4
	sti gr4, @(fp,-24)
	ldi @(fp,-12), gr4
	and gr4, gr15, gr4
	sti gr4, @(fp,-20)
	ldi @(fp,-24), gr4
	srli gr4, #8, gr21
	setlos #0, gr20
	or gr16, gr20, gr5
	sti gr5, @(fp,-32)
	or gr17, gr21, gr4
	sti gr4, @(fp,-28)
	ldi @(fp,-4), gr4
	slli gr4,#8,gr26
	setlos #0, gr27
	ldi @(fp,-16), gr4
	and gr4, gr26, gr18
	ldi @(fp,-12), gr4
	and gr4, gr27, gr19
	slli gr18,#8,gr4
	srli gr19, #24, gr13
	or gr4, gr13, gr13
	srli gr18, #24, gr12
	ldi @(fp,-32), gr5
	or gr5, gr12, gr5
	sti gr5, @(fp,-40)
	ldi @(fp,-28), gr4
	or gr4, gr13, gr4
	sti gr4, @(fp,-36)
	ldi @(fp,-4), gr4
	slli gr4,#0,gr4
	sti gr4, @(fp,-48)
	sti gr0, @(fp,-44)
	ldi @(fp,-16), gr4
	ldi @(fp,-48), gr5
	and gr4, gr5, gr24
	ldi @(fp,-12), gr4
	ldi @(fp,-44), gr5
	and gr4, gr5, gr25
	slli gr24,#24,gr4
	srli gr25, #8, gr23
	or gr4, gr23, gr23
	srli gr24, #8, gr22
	ldi @(fp,-40), gr4
	or gr4, gr22, gr4
	sti gr4, @(fp,-56)
	ldi @(fp,-36), gr5
	or gr5, gr23, gr5
	sti gr5, @(fp,-52)
	ldi @(fp,-4), gr4
	srli gr4, #8, gr5
	ldi @(fp,-8), gr4
	slli gr4,#24,gr4
	sti gr4, @(fp,-64)
	ldi @(fp,-64), gr4
	or gr5, gr4, gr5
	sti gr5, @(fp,-64)
	ldi @(fp,-4), gr4
	slli gr4,#24,gr4
	sti gr4, @(fp,-60)
	ldi @(fp,-16), gr4
	ldi @(fp,-64), gr5
	and gr4, gr5, gr4
	sti gr4, @(fp,-72)
	ldi @(fp,-12), gr4
	ldi @(fp,-60), gr5
	and gr4, gr5, gr4
	sti gr4, @(fp,-68)
	ldi @(fp,-68), gr5
	srli gr5, #24, gr4
	ldi @(fp,-72), gr5
	slli gr5,#8,gr5
	sti gr5, @(fp,-80)
	ldi @(fp,-80), gr5
	or gr4, gr5, gr4
	sti gr4, @(fp,-80)
	ldi @(fp,-68), gr4
	slli gr4,#8,gr4
	sti gr4, @(fp,-76)
	ldi @(fp,-56), gr5
	ldi @(fp,-80), gr4
	or gr5, gr4, gr5
	sti gr5, @(fp,-88)
	ldi @(fp,-52), gr5
	ldi @(fp,-76), gr4
	or gr5, gr4, gr5
	sti gr5, @(fp,-84)
	ldi @(fp,-4), gr4
	srli gr4, #16, gr5
	ldi @(fp,-8), gr4
	slli gr4,#16,gr4
	sti gr4, @(fp,-96)
	ldi @(fp,-96), gr4
	or gr5, gr4, gr5
	sti gr5, @(fp,-96)
	ldi @(fp,-4), gr4
	slli gr4,#16,gr4
	sti gr4, @(fp,-92)
	ldi @(fp,-16), gr4
	ldi @(fp,-96), gr5
	and gr4, gr5, gr4
	sti gr4, @(fp,-104)
	ldi @(fp,-12), gr4
	ldi @(fp,-92), gr5
	and gr4, gr5, gr4
	sti gr4, @(fp,-100)
	ldi @(fp,-100), gr5
	srli gr5, #8, gr4
	ldi @(fp,-104), gr5
	slli gr5,#24,gr5
	sti gr5, @(fp,-112)
	ldi @(fp,-112), gr5
	or gr4, gr5, gr4
	sti gr4, @(fp,-112)
	ldi @(fp,-100), gr4
	slli gr4,#24,gr4
	sti gr4, @(fp,-108)
	ldi @(fp,-88), gr5
	ldi @(fp,-112), gr4
	or gr5, gr4, gr5
	sti gr5, @(fp,-120)
	ldi @(fp,-84), gr5
	ldi @(fp,-108), gr4
	or gr5, gr4, gr5
	sti gr5, @(fp,-116)
	ldi @(fp,-4), gr4
	srli gr4, #24, gr4
	ldi @(fp,-8), gr5
	slli gr5,#8,gr5
	sti gr5, @(fp,-128)
	ldi @(fp,-128), gr5
	or gr4, gr5, gr4
	sti gr4, @(fp,-128)
	ldi @(fp,-4), gr4
	slli gr4,#8,gr4
	sti gr4, @(fp,-124)
	ldi @(fp,-16), gr4
	ldi @(fp,-128), gr5
	and gr4, gr5, gr4
	sti gr4, @(fp,-136)
	ldi @(fp,-12), gr4
	ldi @(fp,-124), gr5
	and gr4, gr5, gr4
	sti gr4, @(fp,-132)
	ldi @(fp,-132), gr4
	slli gr4,#8,gr4
	sti gr4, @(fp,-144)
	sti gr0, @(fp,-140)
	ldi @(fp,-120), gr5
	ldi @(fp,-144), gr4
	or gr5, gr4, gr5
	sti gr5, @(fp,-152)
	ldi @(fp,-116), gr5
	ldi @(fp,-140), gr4
	or gr5, gr4, gr5
	sti gr5, @(fp,-148)
	ldi @(fp,-16), gr5
	ldi @(fp,-8), gr4
	and gr5, gr4, gr4
	sti gr4, @(fp,-160)
	ldi @(fp,-12), gr5
	ldi @(fp,-4), gr4
	and gr5, gr4, gr4
	sti gr4, @(fp,-156)
	ldi @(fp,-156), gr5
	slli gr5,#24,gr5
	sti gr5, @(fp,-168)
	sti gr0, @(fp,-164)
	ldi @(fp,-152), gr4
	ldi @(fp,-168), gr5
	or gr4, gr5, gr4
	sti gr4, @(fp,-176)
	ldi @(fp,-148), gr4
	ldi @(fp,-164), gr5
	or gr4, gr5, gr4
	sti gr4, @(fp,-172)
	ldi @(fp,-176), gr4
	ldi @(fp,-172), gr5
	nop
	mov gr4, gr8
	mov gr5, gr9
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
	addi sp,#240,sp
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
	bra .L445
.L448:
	ldi @(fp,-12), gr5
	ldi @(fp,-4), gr4
	srl gr5, gr4, gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L446
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	bra .L447
.L446:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L445:
	ldi @(fp,-4), gr4
	cmpi gr4,#31,icc0
	bls icc0,2,.L448
	setlos #0, gr4
.L447:
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
	bne icc0,0,.L450
	setlos #0, gr4
	bra .L451
.L450:
	setlos #1, gr18
	bra .L452
.L453:
	srai gr4, #1, gr4
	addi gr18,#1,gr18
.L452:
	andi gr4, #1, gr5
	cmpi gr5, #0, icc0
	beq icc0,2,.L453
	mov gr18, gr4
.L451:
	mov gr4, gr8
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
	bn icc0,0,.L455
	sethi #hi(#2139095039), gr9
	setlo #lo(#2139095039), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __gtsf2
	mov gr8, gr4
	cmpi gr4,#0,icc0
	ble icc0,0,.L460
.L455:
	setlos #1, gr4
	bra .L459
.L460:
	setlos #0, gr4
.L459:
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
	bn icc0,0,.L462
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
	ble icc0,0,.L467
.L462:
	setlos #1, gr4
	bra .L466
.L467:
	setlos #0, gr4
.L466:
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
	bn icc0,0,.L469
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
	ble icc0,0,.L474
.L469:
	setlos #1, gr4
	bra .L473
.L474:
	setlos #0, gr4
.L473:
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
	bne icc0,0,.L477
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
	beq icc0,0,.L477
	ldi @(fp,-16), gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L479
	sethi #hi(#1056964608), gr4
	setlo #lo(#1056964608), gr4
	bra .L480
.L479:
	sethi #hi(#1073741824), gr4
	setlo #lo(#1073741824), gr4
.L480:
	sti gr4, @(fp,-4)
.L483:
	ldi @(fp,-16), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L481
	ldi @(fp,-4), gr9
	ldi @(fp,-12), gr8
	mov gr18, gr15
	call __mulf
	mov gr8, gr4
	sti gr4, @(fp,-12)
.L481:
	ldi @(fp,-16), gr4
	srli gr4, #31, gr5
	add gr5,gr4,gr4
	srai gr4, #1, gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-16), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L486
	ldi @(fp,-4), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __mulf
	mov gr8, gr4
	sti gr4, @(fp,-4)
	bra .L483
.L486:
	nop
.L477:
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
	bne icc0,0,.L488
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
	beq icc0,0,.L488
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L490
	sethi #hi(#1071644672), gr4
	setlo #lo(#1071644672), gr4
	setlos #0, gr5
	bra .L491
.L490:
	sethi #hi(#1073741824), gr4
	setlo #lo(#1073741824), gr4
	setlos #0, gr5
.L491:
	sti gr4, @(fp,-8)
	sti gr5, @(fp,-4)
	nop
.L494:
	ldi @(fp,-20), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L492
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
.L492:
	ldi @(fp,-20), gr4
	srli gr4, #31, gr5
	add gr5,gr4,gr4
	srai gr4, #1, gr4
	sti gr4, @(fp,-20)
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L497
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
	bra .L494
.L497:
	nop
.L488:
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
	bne icc0,0,.L499
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
	beq icc0,0,.L499
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L501
	sethi #hi(#1071644672), gr4
	setlo #lo(#1071644672), gr4
	setlos #0, gr5
	bra .L502
.L501:
	sethi #hi(#1073741824), gr4
	setlo #lo(#1073741824), gr4
	setlos #0, gr5
.L502:
	sti gr4, @(fp,-8)
	sti gr5, @(fp,-4)
	nop
.L505:
	ldi @(fp,-20), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L503
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
.L503:
	ldi @(fp,-20), gr4
	srli gr4, #31, gr5
	add gr5,gr4,gr4
	srai gr4, #1, gr4
	sti gr4, @(fp,-20)
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L508
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
	bra .L505
.L508:
	nop
.L499:
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
	ldi @(fp,-16), gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-8)
	bra .L510
.L511:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr5
	sti gr5, @(fp,-4)
	ldsb @(gr4,gr0),gr6
	ldi @(fp,-8), gr4
	addi gr4,#1,gr5
	sti gr5, @(fp,-8)
	ldsb @(gr4,gr0),gr5
	xor gr6, gr5, gr5
	slli gr5,#24,gr5
	srai gr5, #24, gr5
	stb gr5, @(gr4,gr0)
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-20)
.L510:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L511
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
	bra .L514
.L516:
	ldi @(fp,-16), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-20), gr4
	addi gr4,#-1,gr4
	sti gr4, @(fp,-20)
.L514:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L515
	ldi @(fp,-16), gr4
	ldsb @(gr4,gr0),gr5
	ldi @(fp,-4), gr4
	stb gr5, @(gr4,gr0)
	ldi @(fp,-4), gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L516
.L515:
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L517
	ldi @(fp,-4), gr4
	stb gr0, @(gr4,gr0)
.L517:
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
	bra .L520
.L525:
	nop
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L520:
	ldi @(fp,-4), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L521
	ldi @(fp,-12), gr5
	ldi @(fp,-4), gr4
	add gr5,gr4,gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L525
.L521:
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
	bra .L527
.L531:
	ldi @(fp,-16), gr4
	sti gr4, @(fp,-4)
	bra .L528
.L530:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr5
	sti gr5, @(fp,-4)
	ldsb @(gr4,gr0),gr5
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L528
	ldi @(fp,-12), gr4
	bra .L529
.L528:
	ldi @(fp,-4), gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L530
	ldi @(fp,-12), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-12)
.L527:
	ldi @(fp,-12), gr4
	ldsb @(gr4,gr0),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L531
	setlos #0, gr4
.L529:
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
.L534:
	ldsb @(gr4,gr0),gr5
	mov gr5, gr6
	ldi @(fp,-12), gr5
	cmp gr5,gr6,icc0
	bne icc0,0,.L533
	sti gr4, @(fp,-4)
.L533:
	mov gr4, gr5
	addi gr5,#1,gr4
	ldsb @(gr5,gr0),gr5
	cmpi gr5, #0, icc0
	bne icc0,2,.L534
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
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-16), gr8
	mov gr18, gr15
	call strlen
	mov gr8, gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-8), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L539
	ldi @(fp,-12), gr4
	bra .L538
.L541:
	ldi @(fp,-8), gr10
	ldi @(fp,-16), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call strncmp
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L540
	ldi @(fp,-4), gr4
	bra .L538
.L540:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L539:
	ldi @(fp,-16), gr4
	ldsb @(gr4,gr0),gr4
	mov gr4, gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call strchr
	mov gr8, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L541
	setlos #0, gr4
.L538:
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
	bp icc0,0,.L543
	setlos #0, gr10
	setlos #0, gr11
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr20, gr15
	call __gtdf2
	mov gr8, gr4
	cmpi gr4,#0,icc0
	bgt icc0,0,.L545
.L543:
	setlos #0, gr10
	setlos #0, gr11
	ldi @(fp,-8), gr8
	ldi @(fp,-4), gr9
	nop
	mov gr20, gr15
	call __gtdf2
	mov gr8, gr4
	cmpi gr4,#0,icc0
	ble icc0,0,.L546
	setlos #0, gr10
	setlos #0, gr11
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr20, gr15
	call __ltdf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bp icc0,0,.L546
.L545:
	ldi @(fp,-8), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	xor gr5, gr4, gr18
	ldi @(fp,-4), gr19
	bra .L549
.L546:
	ldi @(fp,-8), gr18
	ldi @(fp,-4), gr19
	nop
.L549:
	mov gr18, gr4
	mov gr19, gr5
	mov gr4, gr8
	mov gr5, gr9
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
	sti gr4, @(fp,-8)
	ldi @(fp,-24), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L553
	ldi @(fp,-12), gr4
	bra .L554
.L553:
	ldi @(fp,-16), gr5
	ldi @(fp,-24), gr4
	cmp gr5,gr4,icc0
	ckc icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L555
	setlos #0, gr4
	bra .L554
.L555:
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	bra .L556
.L558:
	ldi @(fp,-4), gr4
	ldsb @(gr4,gr0),gr5
	ldi @(fp,-20), gr4
	ldsb @(gr4,gr0),gr4
	cmp gr5,gr4,icc0
	bne icc0,0,.L557
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	ldi @(fp,-20), gr5
	addi gr5,#1,gr5
	ldi @(fp,-24), gr6
	addi gr6,#-1,gr6
	mov gr6, gr10
	mov gr5, gr9
	mov gr4, gr8
	mov gr18, gr15
	call memcmp
	mov gr8, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L557
	ldi @(fp,-4), gr4
	bra .L554
.L557:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L556:
	ldi @(fp,-4), gr5
	ldi @(fp,-8), gr4
	cmp gr5,gr4,icc0
	bls icc0,2,.L558
	setlos #0, gr4
.L554:
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
	bp icc0,0,.L562
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
.L562:
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
	bn icc0,0,.L579
	bra .L566
.L567:
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
.L566:
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
	bp icc0,2,.L567
	bra .L568
.L579:
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
	bp icc0,0,.L568
	setlos #0, gr10
	setlos #0, gr11
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	nop
	mov gr18, gr15
	call __nedf2
	mov gr8, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L568
	bra .L571
.L572:
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
.L571:
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
	bn icc0,2,.L572
.L568:
	ldi @(fp,-20), gr4
	ldi @(fp,-8), gr5
	st gr5, @(gr4,gr0)
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L573
	ldi @(fp,-16), gr5
	sethi #hi(#-2147483648), gr4
	setlo #lo(#-2147483648), gr4
	xor gr5, gr4, gr20
	ldi @(fp,-12), gr21
	sti gr20, @(fp,-16)
	sti gr21, @(fp,-12)
	nop
.L573:
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
	ldi @(fp,-24), gr8
	ldi @(fp,-20), gr9
	nop
	sti gr8, @(fp,-16)
	sti gr9, @(fp,-12)
	nop
	bra .L581
.L584:
	ldi @(fp,-16), gr8
	andi gr8, #0, gr12
	ldi @(fp,-12), gr8
	andi gr8, #1, gr13
	mov gr12, gr8
	or gr8, gr13, gr8
	cmpi gr8, #0, icc0
	beq icc0,0,.L582
	ldi @(fp,-8), gr10
	ldi @(fp,-4), gr11
	nop
	ldi @(fp,-32), gr8
	ldi @(fp,-28), gr9
	nop
	addcc gr9,gr11,gr9,icc0
	addx gr8,gr10,gr8,icc0
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
.L582:
	ldi @(fp,-28), gr8
	srli gr8, #31, gr8
	ldi @(fp,-32), gr9
	slli gr9,#1,gr4
	or gr8, gr4, gr4
	ldi @(fp,-28), gr8
	slli gr8,#1,gr5
	sti gr4, @(fp,-32)
	sti gr5, @(fp,-28)
	nop
	ldi @(fp,-16), gr8
	slli gr8,#31,gr8
	ldi @(fp,-12), gr9
	srli gr9, #1, gr7
	or gr8, gr7, gr7
	ldi @(fp,-16), gr8
	srli gr8, #1, gr6
	sti gr6, @(fp,-16)
	sti gr7, @(fp,-12)
	nop
.L581:
	ldi @(fp,-16), gr8
	ldi @(fp,-12), gr9
	or gr8, gr9, gr8
	cmpi gr8, #0, icc0
	bne icc0,2,.L584
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
	bra .L587
.L589:
	ldi @(fp,-16), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-4), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-4)
.L587:
	ldi @(fp,-16), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L590
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L590
	ldi @(fp,-16), gr4
	cmpi gr4, #0, icc0
	bp icc0,2,.L589
	bra .L590
.L592:
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	bc icc0,0,.L591
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	sub gr5,gr4,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-8), gr5
	ldi @(fp,-4), gr4
	or gr5, gr4, gr4
	sti gr4, @(fp,-8)
.L591:
	ldi @(fp,-4), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-16), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-16)
.L590:
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L592
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L593
	ldi @(fp,-12), gr4
	bra .L594
.L593:
	ldi @(fp,-8), gr4
.L594:
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
	bp icc0,0,.L596
	ldsbi @(fp,-9),gr5
	not gr5,gr5
	stbi gr5, @(fp,-9)
.L596:
	ldsbi @(fp,-9),gr5
	cmpi gr5, #0, icc0
	bne icc0,0,.L597
	setlos #7, gr4
	bra .L598
.L597:
	ldsbi @(fp,-9),gr5
	slli gr5,#8,gr5
	mov gr5, gr8
	mov gr4, gr15
	call __clzsi2
	mov gr8, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	addi gr4,#-1,gr4
.L598:
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
	mov gr15, gr6
	sti gr8, @(fp,-16)
	sti gr9, @(fp,-12)
	nop
	ldi @(fp,-16), gr7
	cmpi gr7, #0, icc0
	bp icc0,0,.L600
	ldi @(fp,-16), gr7
	not gr7,gr4
	ldi @(fp,-12), gr7
	not gr7,gr5
	sti gr4, @(fp,-16)
	sti gr5, @(fp,-12)
	nop
.L600:
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	or gr4, gr5, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L602
	setlos #63, gr4
	bra .L603
.L602:
	ldi @(fp,-16), gr4
	ldi @(fp,-12), gr5
	nop
	mov gr4, gr8
	mov gr5, gr9
	mov gr6, gr15
	call __clzdi2
	mov gr8, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	addi gr4,#-1,gr4
.L603:
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
	bra .L605
.L607:
	ldi @(fp,-12), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L606
	ldi @(fp,-4), gr5
	ldi @(fp,-16), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-4)
.L606:
	ldi @(fp,-12), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-16), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-16)
.L605:
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L607
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
	addi sp,#-56,sp
	sti fp, @(sp,40)
	addi sp,#40,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-28)
	sti gr9, @(fp,-32)
	sti gr10, @(fp,-36)
	ldi @(fp,-36), gr4
	srli gr4, #3, gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-36), gr4
	andi gr4, #-8, gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-28), gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-32), gr4
	sti gr4, @(fp,-20)
	ldi @(fp,-16), gr5
	ldi @(fp,-20), gr4
	cmp gr5,gr4,icc0
	bc icc0,0,.L610
	ldi @(fp,-20), gr5
	ldi @(fp,-36), gr4
	add gr5,gr4,gr4
	ldi @(fp,-16), gr5
	cmp gr5,gr4,icc0
	bls icc0,0,.L617
.L610:
	sti gr0, @(fp,-4)
	bra .L612
.L613:
	ldi @(fp,-4), gr4
	slli gr4,#3,gr4
	ldi @(fp,-32), gr5
	add gr5,gr4,gr4
	ldi @(fp,-4), gr5
	slli gr5,#3,gr5
	ldi @(fp,-28), gr6
	add gr6,gr5,gr6
	ldi @(gr4,4), gr5
	ld @(gr4,gr0), gr4
	nop
	st gr4, @(gr6,gr0)
	sti gr5, @(gr6,4)
	nop
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L612:
	ldi @(fp,-4), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bc icc0,2,.L613
	bra .L614
.L615:
	ldi @(fp,-20), gr5
	ldi @(fp,-8), gr4
	add gr5,gr4,gr5
	ldi @(fp,-16), gr6
	ldi @(fp,-8), gr4
	add gr6,gr4,gr4
	ldsb @(gr5,gr0),gr5
	stb gr5, @(gr4,gr0)
	ldi @(fp,-8), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-8)
.L614:
	ldi @(fp,-36), gr5
	ldi @(fp,-8), gr4
	cmp gr5,gr4,icc0
	bhi icc0,2,.L615
	bra .L616
.L618:
	ldi @(fp,-20), gr5
	ldi @(fp,-36), gr4
	add gr5,gr4,gr5
	ldi @(fp,-16), gr6
	ldi @(fp,-36), gr4
	add gr6,gr4,gr4
	ldsb @(gr5,gr0),gr5
	stb gr5, @(gr4,gr0)
.L617:
	ldi @(fp,-36), gr4
	addi gr4,#-1,gr5
	sti gr5, @(fp,-36)
	cmpi gr4, #0, icc0
	bne icc0,2,.L618
	nop
.L616:
	nop
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#56,sp
	jmpl @(gr5,gr0)
	.size	__cmovd, .-__cmovd
	.p2align 4
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-20)
	sti gr9, @(fp,-24)
	sti gr10, @(fp,-28)
	ldi @(fp,-28), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-20), gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-24), gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	bc icc0,0,.L620
	ldi @(fp,-16), gr5
	ldi @(fp,-28), gr4
	add gr5,gr4,gr4
	ldi @(fp,-12), gr5
	cmp gr5,gr4,icc0
	bls icc0,0,.L626
.L620:
	sti gr0, @(fp,-4)
	bra .L622
.L623:
	ldi @(fp,-4), gr4
	slli gr4,#1,gr4
	ldi @(fp,-24), gr5
	add gr5,gr4,gr5
	ldi @(fp,-4), gr4
	slli gr4,#1,gr4
	ldi @(fp,-20), gr6
	add gr6,gr4,gr4
	ldsh @(gr5,gr0),gr5
	sth gr5, @(gr4,gr0)
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L622:
	ldi @(fp,-4), gr5
	ldi @(fp,-8), gr4
	cmp gr5,gr4,icc0
	bc icc0,2,.L623
	ldi @(fp,-28), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L625
	ldi @(fp,-28), gr4
	addi gr4,#-1,gr4
	ldi @(fp,-16), gr5
	add gr5,gr4,gr5
	ldi @(fp,-28), gr4
	addi gr4,#-1,gr4
	ldi @(fp,-12), gr6
	add gr6,gr4,gr4
	ldsb @(gr5,gr0),gr5
	stb gr5, @(gr4,gr0)
	bra .L625
.L627:
	ldi @(fp,-16), gr5
	ldi @(fp,-28), gr4
	add gr5,gr4,gr5
	ldi @(fp,-12), gr6
	ldi @(fp,-28), gr4
	add gr6,gr4,gr4
	ldsb @(gr5,gr0),gr5
	stb gr5, @(gr4,gr0)
.L626:
	ldi @(fp,-28), gr4
	addi gr4,#-1,gr5
	sti gr5, @(fp,-28)
	cmpi gr4, #0, icc0
	bne icc0,2,.L627
	nop
.L625:
	nop
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
	jmpl @(gr5,gr0)
	.size	__cmovh, .-__cmovh
	.p2align 4
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	addi sp,#-56,sp
	sti fp, @(sp,40)
	addi sp,#40,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-28)
	sti gr9, @(fp,-32)
	sti gr10, @(fp,-36)
	ldi @(fp,-36), gr4
	srli gr4, #2, gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-36), gr4
	andi gr4, #-4, gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-28), gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-32), gr4
	sti gr4, @(fp,-20)
	ldi @(fp,-16), gr5
	ldi @(fp,-20), gr4
	cmp gr5,gr4,icc0
	bc icc0,0,.L629
	ldi @(fp,-20), gr5
	ldi @(fp,-36), gr4
	add gr5,gr4,gr4
	ldi @(fp,-16), gr5
	cmp gr5,gr4,icc0
	bls icc0,0,.L636
.L629:
	sti gr0, @(fp,-4)
	bra .L631
.L632:
	ldi @(fp,-4), gr4
	slli gr4,#2,gr4
	ldi @(fp,-32), gr5
	add gr5,gr4,gr5
	ldi @(fp,-4), gr4
	slli gr4,#2,gr4
	ldi @(fp,-28), gr6
	add gr6,gr4,gr4
	ld @(gr5,gr0), gr5
	st gr5, @(gr4,gr0)
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L631:
	ldi @(fp,-4), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bc icc0,2,.L632
	bra .L633
.L634:
	ldi @(fp,-20), gr5
	ldi @(fp,-8), gr4
	add gr5,gr4,gr5
	ldi @(fp,-16), gr6
	ldi @(fp,-8), gr4
	add gr6,gr4,gr4
	ldsb @(gr5,gr0),gr5
	stb gr5, @(gr4,gr0)
	ldi @(fp,-8), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-8)
.L633:
	ldi @(fp,-36), gr5
	ldi @(fp,-8), gr4
	cmp gr5,gr4,icc0
	bhi icc0,2,.L634
	bra .L635
.L637:
	ldi @(fp,-20), gr5
	ldi @(fp,-36), gr4
	add gr5,gr4,gr5
	ldi @(fp,-16), gr6
	ldi @(fp,-36), gr4
	add gr6,gr4,gr4
	ldsb @(gr5,gr0),gr5
	stb gr5, @(gr4,gr0)
.L636:
	ldi @(fp,-36), gr4
	addi gr4,#-1,gr5
	sti gr5, @(fp,-36)
	cmpi gr4, #0, icc0
	bne icc0,2,.L637
	nop
.L635:
	nop
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#56,sp
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
	bra .L651
.L654:
	lduhi @(fp,-10),gr5
	setlos #15, gr6
	ldi @(fp,-4), gr4
	sub gr6,gr4,gr4
	sra gr5, gr4, gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L656
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L651:
	ldi @(fp,-4), gr4
	cmpi gr4,#15,icc0
	ble icc0,2,.L654
	bra .L653
.L656:
	nop
.L653:
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
	bra .L658
.L661:
	lduhi @(fp,-10),gr5
	ldi @(fp,-4), gr4
	sra gr5, gr4, gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L663
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L658:
	ldi @(fp,-4), gr4
	cmpi gr4,#15,icc0
	ble icc0,2,.L661
	bra .L660
.L663:
	nop
.L660:
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
	bn icc0,0,.L669
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
	bra .L667
.L669:
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __ftoi
	mov gr8, gr4
.L667:
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
	bra .L671
.L673:
	lduhi @(fp,-10),gr5
	ldi @(fp,-4), gr4
	sra gr5, gr4, gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L672
	ldi @(fp,-8), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-8)
.L672:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L671:
	ldi @(fp,-4), gr4
	cmpi gr4,#15,icc0
	ble icc0,2,.L673
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
	bra .L676
.L678:
	lduhi @(fp,-10),gr5
	ldi @(fp,-4), gr4
	sra gr5, gr4, gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L677
	ldi @(fp,-8), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-8)
.L677:
	ldi @(fp,-4), gr4
	addi gr4,#1,gr4
	sti gr4, @(fp,-4)
.L676:
	ldi @(fp,-4), gr4
	cmpi gr4,#15,icc0
	ble icc0,2,.L678
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
	bra .L681
.L683:
	ldi @(fp,-12), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L682
	ldi @(fp,-4), gr5
	ldi @(fp,-16), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-4)
.L682:
	ldi @(fp,-12), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-16), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-16)
.L681:
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L683
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
	bne icc0,0,.L688
	setlos #0, gr4
	bra .L687
.L690:
	ldi @(fp,-16), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L689
	ldi @(fp,-4), gr5
	ldi @(fp,-12), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-4)
.L689:
	ldi @(fp,-12), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-16), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-16)
.L688:
	ldi @(fp,-16), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L690
	ldi @(fp,-4), gr4
.L687:
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
	bra .L692
.L694:
	ldi @(fp,-16), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-4), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-4)
.L692:
	ldi @(fp,-16), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L695
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L695
	ldi @(fp,-16), gr4
	cmpi gr4, #0, icc0
	bp icc0,2,.L694
	bra .L695
.L697:
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	bc icc0,0,.L696
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	sub gr5,gr4,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-8), gr5
	ldi @(fp,-4), gr4
	or gr5, gr4, gr4
	sti gr4, @(fp,-8)
.L696:
	ldi @(fp,-4), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-16), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-16)
.L695:
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L697
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L698
	ldi @(fp,-12), gr4
	bra .L699
.L698:
	ldi @(fp,-8), gr4
.L699:
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
	bp icc0,0,.L708
	setlos #-1, gr4
	bra .L703
.L708:
	ldi @(fp,-8), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __gtsf2
	mov gr8, gr4
	cmpi gr4,#0,icc0
	ble icc0,0,.L709
	setlos #1, gr4
	bra .L703
.L709:
	setlos #0, gr4
.L703:
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
	bp icc0,0,.L718
	setlos #-1, gr4
	bra .L713
.L718:
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
	ble icc0,0,.L719
	setlos #1, gr4
	bra .L713
.L719:
	setlos #0, gr4
.L713:
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
	mov gr15, gr12
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	ldi @(fp,-4), gr8
	mov gr8, gr5
	srai gr8, #31, gr8
	mov gr8, gr4
	ldi @(fp,-8), gr8
	mov gr8, gr7
	srai gr8, #31, gr8
	mov gr8, gr6
	mov gr6, gr10
	mov gr7, gr11
	mov gr4, gr8
	mov gr5, gr9
	mov gr12, gr15
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
	mov gr15, gr12
	sti gr8, @(fp,-4)
	sti gr9, @(fp,-8)
	ldi @(fp,-4), gr8
	mov gr8, gr5
	setlos #0, gr4
	ldi @(fp,-8), gr8
	mov gr8, gr7
	setlos #0, gr6
	mov gr6, gr10
	mov gr7, gr11
	mov gr4, gr8
	mov gr5, gr9
	mov gr12, gr15
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
	bp icc0,0,.L725
	ldi @(fp,-24), gr4
	sub gr0,gr4,gr4
	sti gr4, @(fp,-24)
	setlos #1, gr4
	sti gr4, @(fp,-8)
.L725:
	stbi gr0, @(fp,-1)
	bra .L726
.L729:
	ldi @(fp,-24), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L727
	ldi @(fp,-12), gr5
	ldi @(fp,-20), gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-12)
.L727:
	ldi @(fp,-20), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-20)
	ldi @(fp,-24), gr4
	srai gr4, #1, gr4
	sti gr4, @(fp,-24)
	ldsbi @(fp,-1),gr4
	andi gr4,#0xff,gr4
	addi gr4,#1,gr4
	andi gr4,#0xff,gr4
	stbi gr4, @(fp,-1)
.L726:
	ldi @(fp,-24), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L728
	ldubi @(fp,-1),gr4
	cmpi gr4,#31,icc0
	bls icc0,2,.L729
.L728:
	ldi @(fp,-8), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L730
	ldi @(fp,-12), gr4
	sub gr0,gr4,gr4
	bra .L732
.L730:
	ldi @(fp,-12), gr4
.L732:
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
	bp icc0,0,.L734
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
.L734:
	ldi @(fp,-16), gr5
	cmpi gr5, #0, icc0
	bp icc0,0,.L735
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
.L735:
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr6
	setlos #0, gr10
	mov gr6, gr9
	mov gr5, gr8
	mov gr4, gr15
	call __udivmodsi4
	mov gr8, gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L736
	ldi @(fp,-8), gr4
	sub gr0,gr4,gr4
	sti gr4, @(fp,-8)
.L736:
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
	bp icc0,0,.L739
	ldi @(fp,-12), gr5
	sub gr0,gr5,gr5
	sti gr5, @(fp,-12)
	setlos #1, gr5
	sti gr5, @(fp,-4)
.L739:
	ldi @(fp,-16), gr5
	cmpi gr5, #0, icc0
	bp icc0,0,.L740
	ldi @(fp,-16), gr5
	sub gr0,gr5,gr5
	sti gr5, @(fp,-16)
.L740:
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr6
	setlos #1, gr10
	mov gr6, gr9
	mov gr5, gr8
	mov gr4, gr15
	call __udivmodsi4
	mov gr8, gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L741
	ldi @(fp,-8), gr4
	sub gr0,gr4,gr4
	sti gr4, @(fp,-8)
.L741:
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
	bra .L744
.L746:
	ldshi @(fp,-12),gr4
	slli gr4,#1,gr4
	sthi gr4, @(fp,-12)
	ldshi @(fp,-2),gr4
	slli gr4,#1,gr4
	sthi gr4, @(fp,-2)
.L744:
	lduhi @(fp,-12),gr5
	lduhi @(fp,-10),gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L747
	lduhi @(fp,-2),gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L747
	ldshi @(fp,-12),gr4
	cmpi gr4, #0, icc0
	bp icc0,2,.L746
	bra .L747
.L749:
	lduhi @(fp,-10),gr5
	lduhi @(fp,-12),gr4
	cmp gr5,gr4,icc0
	bc icc0,0,.L748
	ldshi @(fp,-10),gr5
	ldshi @(fp,-12),gr4
	sub gr5,gr4,gr4
	sthi gr4, @(fp,-10)
	ldshi @(fp,-4),gr5
	ldshi @(fp,-2),gr4
	or gr5, gr4, gr4
	sthi gr4, @(fp,-4)
.L748:
	lduhi @(fp,-2),gr4
	srli gr4, #1, gr4
	sthi gr4, @(fp,-2)
	lduhi @(fp,-12),gr4
	srli gr4, #1, gr4
	sthi gr4, @(fp,-12)
.L747:
	lduhi @(fp,-2),gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L749
	ldi @(fp,-16), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L750
	lduhi @(fp,-10),gr4
	bra .L751
.L750:
	lduhi @(fp,-4),gr4
.L751:
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
	bra .L753
.L755:
	ldi @(fp,-16), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-4), gr4
	slli gr4,#1,gr4
	sti gr4, @(fp,-4)
.L753:
	ldi @(fp,-16), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L756
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L756
	ldi @(fp,-16), gr4
	cmpi gr4, #0, icc0
	bp icc0,2,.L755
	bra .L756
.L758:
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	bc icc0,0,.L757
	ldi @(fp,-12), gr5
	ldi @(fp,-16), gr4
	sub gr5,gr4,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-8), gr5
	ldi @(fp,-4), gr4
	or gr5, gr4, gr4
	sti gr4, @(fp,-8)
.L757:
	ldi @(fp,-4), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-16), gr4
	srli gr4, #1, gr4
	sti gr4, @(fp,-16)
.L756:
	ldi @(fp,-4), gr4
	cmpi gr4, #0, icc0
	bne icc0,2,.L758
	ldi @(fp,-20), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L759
	ldi @(fp,-12), gr4
	bra .L760
.L759:
	ldi @(fp,-8), gr4
.L760:
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
	beq icc0,0,.L762
	sti gr0, @(fp,-20)
	ldi @(fp,-12), gr5
	ldi @(fp,-36), gr6
	ldi @(fp,-4), gr4
	sub gr6,gr4,gr4
	sll gr5,gr4,gr4
	sti gr4, @(fp,-24)
	bra .L763
.L762:
	ldi @(fp,-36), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L764
	ldi @(fp,-32), gr4
	ldi @(fp,-28), gr5
	nop
	bra .L766
.L764:
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
.L763:
	ldi @(fp,-24), gr4
	ldi @(fp,-20), gr5
	nop
.L766:
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
	beq icc0,0,.L768
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
	bra .L769
.L768:
	ldi @(fp,-36), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L770
	ldi @(fp,-32), gr4
	ldi @(fp,-28), gr5
	nop
	bra .L772
.L770:
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
.L769:
	ldi @(fp,-24), gr4
	ldi @(fp,-20), gr5
	nop
.L772:
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
	addi sp,#-160,sp
	sti fp, @(sp,144)
	addi sp,#144,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr16, @(sp,0)
	sti gr17, @(sp,4)
	sti gr18, @(sp,8)
	sti gr19, @(sp,12)
	sti gr20, @(sp,16)
	sti gr21, @(sp,20)
	sti gr22, @(sp,24)
	sti gr23, @(sp,28)
	sti gr24, @(sp,32)
	sti gr25, @(sp,36)
	sti gr26, @(sp,40)
	sti gr27, @(sp,44)
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	ldi @(fp,-8), gr4
	srli gr4, #24, gr15
	setlos #0, gr14
	ldi @(fp,-8), gr4
	srli gr4, #8, gr11
	setlos #0, gr10
	andi gr10, #0, gr6
	sethi #hi(#65280), gr4
	setlo #lo(#65280), gr4
	and gr11, gr4, gr7
	or gr14, gr6, gr26
	or gr15, gr7, gr27
	ldi @(fp,-8), gr4
	slli gr4,#8,gr5
	ldi @(fp,-4), gr4
	srli gr4, #24, gr13
	or gr5, gr13, gr13
	ldi @(fp,-8), gr4
	srli gr4, #24, gr12
	andi gr12, #0, gr20
	sethi #hi(#16711680), gr4
	setlo #lo(#16711680), gr4
	and gr13, gr4, gr21
	or gr26, gr20, gr4
	sti gr4, @(fp,-16)
	or gr27, gr21, gr5
	sti gr5, @(fp,-12)
	ldi @(fp,-8), gr4
	slli gr4,#24,gr5
	ldi @(fp,-4), gr4
	srli gr4, #8, gr19
	or gr5, gr19, gr19
	ldi @(fp,-8), gr4
	srli gr4, #8, gr18
	andi gr18, #0, gr16
	sethi #hi(#-16777216), gr4
	setlo #lo(#-16777216), gr4
	and gr19, gr4, gr17
	ldi @(fp,-16), gr4
	or gr4, gr16, gr4
	sti gr4, @(fp,-24)
	ldi @(fp,-12), gr5
	or gr5, gr17, gr5
	sti gr5, @(fp,-20)
	ldi @(fp,-4), gr4
	srli gr4, #24, gr5
	ldi @(fp,-8), gr4
	slli gr4,#8,gr24
	or gr5, gr24, gr24
	ldi @(fp,-4), gr4
	slli gr4,#8,gr25
	andi gr24, #255, gr4
	sti gr4, @(fp,-32)
	andi gr25, #0, gr5
	sti gr5, @(fp,-28)
	ldi @(fp,-24), gr4
	ldi @(fp,-32), gr5
	or gr4, gr5, gr4
	sti gr4, @(fp,-40)
	ldi @(fp,-20), gr4
	ldi @(fp,-28), gr5
	or gr4, gr5, gr4
	sti gr4, @(fp,-36)
	ldi @(fp,-4), gr4
	srli gr4, #8, gr4
	ldi @(fp,-8), gr5
	slli gr5,#24,gr22
	or gr4, gr22, gr22
	ldi @(fp,-4), gr4
	slli gr4,#24,gr23
	sethi #hi(#65280), gr4
	setlo #lo(#65280), gr4
	and gr22, gr4, gr4
	sti gr4, @(fp,-48)
	andi gr23, #0, gr4
	sti gr4, @(fp,-44)
	ldi @(fp,-40), gr5
	ldi @(fp,-48), gr4
	or gr5, gr4, gr5
	sti gr5, @(fp,-56)
	ldi @(fp,-36), gr5
	ldi @(fp,-44), gr4
	or gr5, gr4, gr5
	sti gr5, @(fp,-52)
	ldi @(fp,-4), gr4
	slli gr4,#8,gr4
	sti gr4, @(fp,-64)
	sti gr0, @(fp,-60)
	sethi #hi(#16711680), gr4
	setlo #lo(#16711680), gr4
	ldi @(fp,-64), gr5
	and gr5, gr4, gr4
	sti gr4, @(fp,-72)
	ldi @(fp,-60), gr4
	andi gr4, #0, gr4
	sti gr4, @(fp,-68)
	ldi @(fp,-56), gr5
	ldi @(fp,-72), gr4
	or gr5, gr4, gr5
	sti gr5, @(fp,-80)
	ldi @(fp,-52), gr5
	ldi @(fp,-68), gr4
	or gr5, gr4, gr5
	sti gr5, @(fp,-76)
	ldi @(fp,-4), gr4
	slli gr4,#24,gr4
	sti gr4, @(fp,-88)
	sti gr0, @(fp,-84)
	ldi @(fp,-80), gr5
	ldi @(fp,-88), gr4
	or gr5, gr4, gr5
	sti gr5, @(fp,-96)
	ldi @(fp,-76), gr5
	ldi @(fp,-84), gr4
	or gr5, gr4, gr5
	sti gr5, @(fp,-92)
	ldi @(fp,-96), gr4
	ldi @(fp,-92), gr5
	nop
	mov gr4, gr8
	mov gr5, gr9
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
	addi sp,#160,sp
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
	srli gr4, #8, gr6
	sethi #hi(#65280), gr4
	setlo #lo(#65280), gr4
	and gr6, gr4, gr4
	or gr5, gr4, gr5
	ldi @(fp,-4), gr4
	slli gr4,#8,gr6
	sethi #hi(#16711680), gr4
	setlo #lo(#16711680), gr4
	and gr6, gr4, gr4
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
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-20)
	ldi @(fp,-20), gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr5
	sethi #hi(#65535), gr4
	setlo #lo(#65535), gr4
	cmp gr5,gr4,icc0
	bhi icc0,0,.L778
	setlos #16, gr4
	bra .L779
.L778:
	setlos #0, gr4
.L779:
	sti gr4, @(fp,-8)
	setlos #16, gr5
	ldi @(fp,-8), gr4
	sub gr5,gr4,gr4
	ldi @(fp,-4), gr5
	srl gr5, gr4, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-4), gr5
	sethi #hi(#65280), gr4
	setlo #lo(#65280), gr4
	and gr5, gr4, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L780
	setlos #8, gr4
	bra .L781
.L780:
	setlos #0, gr4
.L781:
	sti gr4, @(fp,-8)
	setlos #8, gr5
	ldi @(fp,-8), gr4
	sub gr5,gr4,gr4
	ldi @(fp,-4), gr5
	srl gr5, gr4, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	ldi @(fp,-12), gr5
	add gr5,gr4,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-4), gr4
	andi gr4, #240, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L782
	setlos #4, gr4
	bra .L783
.L782:
	setlos #0, gr4
.L783:
	sti gr4, @(fp,-8)
	setlos #4, gr5
	ldi @(fp,-8), gr4
	sub gr5,gr4,gr4
	ldi @(fp,-4), gr5
	srl gr5, gr4, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	ldi @(fp,-12), gr5
	add gr5,gr4,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-4), gr4
	andi gr4, #12, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L784
	setlos #2, gr4
	bra .L785
.L784:
	setlos #0, gr4
.L785:
	sti gr4, @(fp,-8)
	setlos #2, gr5
	ldi @(fp,-8), gr4
	sub gr5,gr4,gr4
	ldi @(fp,-4), gr5
	srl gr5, gr4, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	ldi @(fp,-12), gr5
	add gr5,gr4,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-4), gr4
	andi gr4, #2, gr4
	cmpi gr4, #0, icc0
	ckeq icc0, cc4
	setlos #1, gr4
	cmov gr0, gr4, cc4, 0
	andi gr4,#0xff,gr4
	mov gr4, gr6
	setlos #2, gr5
	ldi @(fp,-4), gr4
	sub gr5,gr4,gr4
	umul gr6,gr4,gr4
	ldi @(fp,-12), gr4
	add gr5,gr4,gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
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
	bge icc0,0,.L788
	setlos #0, gr4
	bra .L793
.L788:
	ldi @(fp,-8), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	ble icc0,0,.L790
	setlos #2, gr4
	bra .L793
.L790:
	ldi @(fp,-4), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L791
	setlos #0, gr4
	bra .L793
.L791:
	ldi @(fp,-4), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bls icc0,0,.L792
	setlos #2, gr4
	bra .L793
.L792:
	setlos #1, gr4
.L793:
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
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-20)
	ldi @(fp,-20), gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr5
	sethi #hi(#65535), gr4
	setlo #lo(#65535), gr4
	and gr5, gr4, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L797
	setlos #16, gr4
	bra .L798
.L797:
	setlos #0, gr4
.L798:
	sti gr4, @(fp,-8)
	ldi @(fp,-4), gr5
	ldi @(fp,-8), gr4
	srl gr5, gr4, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-4), gr4
	andi gr4, #255, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L799
	setlos #8, gr4
	bra .L800
.L799:
	setlos #0, gr4
.L800:
	sti gr4, @(fp,-8)
	ldi @(fp,-4), gr5
	ldi @(fp,-8), gr4
	srl gr5, gr4, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	ldi @(fp,-12), gr5
	add gr5,gr4,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-4), gr4
	andi gr4, #15, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L801
	setlos #4, gr4
	bra .L802
.L801:
	setlos #0, gr4
.L802:
	sti gr4, @(fp,-8)
	ldi @(fp,-4), gr5
	ldi @(fp,-8), gr4
	srl gr5, gr4, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	ldi @(fp,-12), gr5
	add gr5,gr4,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-4), gr4
	andi gr4, #3, gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L803
	setlos #2, gr4
	bra .L804
.L803:
	setlos #0, gr4
.L804:
	sti gr4, @(fp,-8)
	ldi @(fp,-4), gr5
	ldi @(fp,-8), gr4
	srl gr5, gr4, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	andi gr4, #3, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-8), gr4
	ldi @(fp,-12), gr5
	add gr5,gr4,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-4), gr4
	not gr4,gr4
	andi gr4, #1, gr5
	ldi @(fp,-4), gr4
	srli gr4, #1, gr4
	setlos #2, gr6
	sub gr6,gr4,gr4
	umul gr5,gr4,gr4
	ldi @(fp,-12), gr4
	add gr5,gr4,gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
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
	beq icc0,0,.L807
	sti gr0, @(fp,-24)
	ldi @(fp,-16), gr5
	ldi @(fp,-36), gr6
	ldi @(fp,-4), gr4
	sub gr6,gr4,gr4
	srl gr5, gr4, gr4
	sti gr4, @(fp,-20)
	bra .L808
.L807:
	ldi @(fp,-36), gr4
	cmpi gr4, #0, icc0
	bne icc0,0,.L809
	ldi @(fp,-32), gr4
	ldi @(fp,-28), gr5
	nop
	bra .L811
.L809:
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
.L808:
	ldi @(fp,-24), gr4
	ldi @(fp,-20), gr5
	nop
.L811:
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
	addi sp,#-48,sp
	sti fp, @(sp,32)
	addi sp,#32,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-28)
	sti gr9, @(fp,-32)
	setlos #16, gr4
	sti gr4, @(fp,-4)
	setlos #-1, gr5
	ldi @(fp,-4), gr4
	srl gr5, gr4, gr4
	sti gr4, @(fp,-8)
	ldi @(fp,-28), gr5
	ldi @(fp,-8), gr4
	and gr5, gr4, gr5
	ldi @(fp,-32), gr6
	ldi @(fp,-8), gr4
	and gr6, gr4, gr4
	umul gr5,gr4,gr4
	mov gr5, gr4
	sti gr4, @(fp,-20)
	ldi @(fp,-20), gr5
	ldi @(fp,-4), gr4
	srl gr5, gr4, gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-20), gr5
	ldi @(fp,-8), gr4
	and gr5, gr4, gr4
	sti gr4, @(fp,-20)
	ldi @(fp,-28), gr5
	ldi @(fp,-4), gr4
	srl gr5, gr4, gr5
	ldi @(fp,-32), gr6
	ldi @(fp,-8), gr4
	and gr6, gr4, gr4
	umul gr5,gr4,gr4
	ldi @(fp,-12), gr4
	add gr4,gr5,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-20), gr5
	ldi @(fp,-12), gr6
	ldi @(fp,-8), gr4
	and gr6, gr4, gr6
	ldi @(fp,-4), gr4
	sll gr6,gr4,gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-20)
	ldi @(fp,-12), gr5
	ldi @(fp,-4), gr4
	srl gr5, gr4, gr4
	sti gr4, @(fp,-24)
	ldi @(fp,-20), gr5
	ldi @(fp,-4), gr4
	srl gr5, gr4, gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-20), gr5
	ldi @(fp,-8), gr4
	and gr5, gr4, gr4
	sti gr4, @(fp,-20)
	ldi @(fp,-32), gr5
	ldi @(fp,-4), gr4
	srl gr5, gr4, gr5
	ldi @(fp,-28), gr6
	ldi @(fp,-8), gr4
	and gr6, gr4, gr4
	umul gr5,gr4,gr4
	ldi @(fp,-12), gr4
	add gr4,gr5,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-20), gr5
	ldi @(fp,-12), gr6
	ldi @(fp,-8), gr4
	and gr6, gr4, gr6
	ldi @(fp,-4), gr4
	sll gr6,gr4,gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-20)
	ldi @(fp,-24), gr4
	mov gr4, gr6
	ldi @(fp,-12), gr5
	ldi @(fp,-4), gr4
	srl gr5, gr4, gr4
	add gr6,gr4,gr4
	sti gr4, @(fp,-24)
	ldi @(fp,-24), gr4
	mov gr4, gr7
	ldi @(fp,-28), gr5
	ldi @(fp,-4), gr4
	srl gr5, gr4, gr5
	ldi @(fp,-32), gr6
	ldi @(fp,-4), gr4
	srl gr6, gr4, gr4
	umul gr5,gr4,gr4
	mov gr5, gr4
	add gr7,gr4,gr4
	sti gr4, @(fp,-24)
	ldi @(fp,-24), gr4
	ldi @(fp,-20), gr5
	nop
	mov gr4, gr8
	mov gr5, gr9
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#48,sp
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
	ldi @(fp,-4), gr4
	ldi @(fp,-12), gr5
	mov gr5, gr9
	mov gr4, gr8
	mov gr6, gr15
	call __muldsi3
	mov gr8, gr4
	mov gr9, gr5
	sti gr4, @(fp,-24)
	sti gr5, @(fp,-20)
	nop
	ldi @(fp,-24), gr4
	mov gr4, gr6
	ldi @(fp,-8), gr4
	mov gr4, gr5
	ldi @(fp,-12), gr4
	umul gr5,gr4,gr4
	mov gr5, gr7
	ldi @(fp,-4), gr4
	ldi @(fp,-16), gr5
	umul gr4,gr5,gr4
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
	addi sp,#-40,sp
	sti fp, @(sp,24)
	addi sp,#24,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-24)
	sti gr9, @(fp,-20)
	nop
	ldi @(fp,-24), gr4
	ldi @(fp,-20), gr5
	nop
	sti gr4, @(fp,-16)
	sti gr5, @(fp,-12)
	nop
	ldi @(fp,-16), gr4
	mov gr4, gr5
	ldi @(fp,-12), gr4
	xor gr5, gr4, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	srli gr4, #16, gr4
	ldi @(fp,-4), gr5
	xor gr5, gr4, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	srli gr4, #8, gr4
	ldi @(fp,-4), gr5
	xor gr5, gr4, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	srli gr4, #4, gr4
	ldi @(fp,-4), gr5
	xor gr5, gr4, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	andi gr4, #15, gr4
	setlos #27030, gr5
	sra gr5, gr4, gr4
	andi gr4, #1, gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#40,sp
	jmpl @(gr5,gr0)
	.size	__paritydi2, .-__paritydi2
	.p2align 4
	.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	srli gr4, #16, gr4
	ldi @(fp,-4), gr5
	xor gr5, gr4, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	srli gr4, #8, gr4
	ldi @(fp,-4), gr5
	xor gr5, gr4, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	srli gr4, #4, gr4
	ldi @(fp,-4), gr5
	xor gr5, gr4, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	andi gr4, #15, gr4
	setlos #27030, gr5
	sra gr5, gr4, gr4
	andi gr4, #1, gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
	jmpl @(gr5,gr0)
	.size	__paritysi2, .-__paritysi2
	.p2align 4
	.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	addi sp,#-56,sp
	sti fp, @(sp,40)
	addi sp,#40,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr18, @(sp,0)
	sti gr19, @(sp,4)
	sti gr20, @(sp,8)
	sti gr21, @(sp,12)
	sti gr8, @(fp,-24)
	sti gr9, @(fp,-20)
	nop
	ldi @(fp,-24), gr8
	ldi @(fp,-20), gr9
	nop
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	ldi @(fp,-8), gr8
	slli gr8,#31,gr8
	ldi @(fp,-4), gr9
	srli gr9, #1, gr7
	or gr8, gr7, gr7
	ldi @(fp,-8), gr8
	srli gr8, #1, gr6
	sethi #hi(#1431655765), gr8
	setlo #lo(#1431655765), gr8
	and gr6, gr8, gr18
	sethi #hi(#1431655765), gr8
	setlo #lo(#1431655765), gr8
	and gr7, gr8, gr19
	ldi @(fp,-8), gr6
	ldi @(fp,-4), gr7
	nop
	subcc gr7,gr19,gr7,icc0
	subx gr6,gr18,gr6,icc0
	sti gr6, @(fp,-8)
	sti gr7, @(fp,-4)
	nop
	ldi @(fp,-8), gr6
	slli gr6,#30,gr6
	ldi @(fp,-4), gr7
	srli gr7, #2, gr5
	or gr6, gr5, gr5
	ldi @(fp,-8), gr6
	srli gr6, #2, gr4
	sethi #hi(#858993459), gr6
	setlo #lo(#858993459), gr6
	and gr4, gr6, gr14
	sethi #hi(#858993459), gr6
	setlo #lo(#858993459), gr6
	and gr5, gr6, gr15
	ldi @(fp,-8), gr5
	sethi #hi(#858993459), gr4
	setlo #lo(#858993459), gr4
	and gr5, gr4, gr12
	ldi @(fp,-4), gr5
	sethi #hi(#858993459), gr4
	setlo #lo(#858993459), gr4
	and gr5, gr4, gr13
	addcc gr15,gr13,gr5,icc0
	addx gr14,gr12,gr4,icc0
	sti gr4, @(fp,-8)
	sti gr5, @(fp,-4)
	nop
	ldi @(fp,-8), gr4
	slli gr4,#28,gr4
	ldi @(fp,-4), gr5
	srli gr5, #4, gr11
	or gr4, gr11, gr11
	ldi @(fp,-8), gr4
	srli gr4, #4, gr10
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	addcc gr5,gr11,gr5,icc0
	addx gr4,gr10,gr4,icc0
	sethi #hi(#252645135), gr6
	setlo #lo(#252645135), gr6
	and gr4, gr6, gr6
	sti gr6, @(fp,-8)
	sethi #hi(#252645135), gr6
	setlo #lo(#252645135), gr6
	and gr5, gr6, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	ldi @(fp,-8), gr5
	srli gr5, #0, gr21
	setlos #0, gr20
	mov gr21, gr5
	add gr4,gr5,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-12), gr4
	srli gr4, #16, gr4
	ldi @(fp,-12), gr5
	add gr5,gr4,gr4
	sti gr4, @(fp,-12)
	ldi @(fp,-12), gr4
	srli gr4, #8, gr5
	ldi @(fp,-12), gr4
	add gr5,gr4,gr4
	andi gr4, #127, gr4
	mov gr4, gr8
	ldi @(sp,0), gr18
	ldi @(sp,4), gr19
	ldi @(sp,8), gr20
	ldi @(sp,12), gr21
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#56,sp
	jmpl @(gr5,gr0)
	.size	__popcountdi2, .-__popcountdi2
	.p2align 4
	.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	addi sp,#-32,sp
	sti fp, @(sp,16)
	addi sp,#16,fp
	movsg lr, gr5
	sti gr5, @(fp,8)
	sti gr8, @(fp,-12)
	ldi @(fp,-12), gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	srli gr4, #1, gr5
	sethi #hi(#1431655765), gr4
	setlo #lo(#1431655765), gr4
	and gr5, gr4, gr4
	ldi @(fp,-4), gr5
	sub gr5,gr4,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	srli gr4, #2, gr5
	sethi #hi(#858993459), gr4
	setlo #lo(#858993459), gr4
	and gr5, gr4, gr5
	ldi @(fp,-4), gr6
	sethi #hi(#858993459), gr4
	setlo #lo(#858993459), gr4
	and gr6, gr4, gr4
	add gr5,gr4,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	srli gr4, #4, gr5
	ldi @(fp,-4), gr4
	add gr5,gr4,gr5
	sethi #hi(#252645135), gr4
	setlo #lo(#252645135), gr4
	and gr5, gr4, gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	srli gr4, #16, gr4
	ldi @(fp,-4), gr5
	add gr5,gr4,gr4
	sti gr4, @(fp,-4)
	ldi @(fp,-4), gr4
	srli gr4, #8, gr5
	ldi @(fp,-4), gr4
	add gr5,gr4,gr4
	andi gr4, #63, gr4
	mov gr4, gr8
	ldi @(fp,8), gr5
	ld @(fp,gr0), fp
	addi sp,#32,sp
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
.L830:
	ldi @(fp,-28), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L827
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
.L827:
	ldi @(fp,-28), gr4
	srli gr4, #31, gr5
	add gr5,gr4,gr4
	srai gr4, #1, gr4
	sti gr4, @(fp,-28)
	ldi @(fp,-28), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L835
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
	bra .L830
.L835:
	nop
	ldi @(fp,-12), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L831
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
	bra .L833
.L831:
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
.L833:
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
.L840:
	ldi @(fp,-16), gr4
	andi gr4, #1, gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L837
	ldi @(fp,-12), gr9
	ldi @(fp,-4), gr8
	mov gr18, gr15
	call __mulf
	mov gr8, gr4
	sti gr4, @(fp,-4)
.L837:
	ldi @(fp,-16), gr4
	srli gr4, #31, gr5
	add gr5,gr4,gr4
	srai gr4, #1, gr4
	sti gr4, @(fp,-16)
	ldi @(fp,-16), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L845
	ldi @(fp,-12), gr9
	ldi @(fp,-12), gr8
	mov gr18, gr15
	call __mulf
	mov gr8, gr4
	sti gr4, @(fp,-12)
	bra .L840
.L845:
	nop
	ldi @(fp,-8), gr4
	cmpi gr4, #0, icc0
	beq icc0,0,.L841
	ldi @(fp,-4), gr9
	sethi #hi(#1065353216), gr8
	setlo #lo(#1065353216), gr8
	mov gr18, gr15
	call __divf
	mov gr8, gr4
	bra .L843
.L841:
	ldi @(fp,-4), gr4
.L843:
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
	bnc icc0,0,.L847
	setlos #0, gr4
	bra .L852
.L847:
	ldi @(fp,-8), gr5
	ldi @(fp,-16), gr4
	cmp gr5,gr4,icc0
	bls icc0,0,.L849
	setlos #2, gr4
	bra .L852
.L849:
	ldi @(fp,-4), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bnc icc0,0,.L850
	setlos #0, gr4
	bra .L852
.L850:
	ldi @(fp,-4), gr5
	ldi @(fp,-12), gr4
	cmp gr5,gr4,icc0
	bls icc0,0,.L851
	setlos #2, gr4
	bra .L852
.L851:
	setlos #1, gr4
.L852:
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
	mov gr15, gr12
	sti gr8, @(fp,-8)
	sti gr9, @(fp,-4)
	nop
	sti gr10, @(fp,-16)
	sti gr11, @(fp,-12)
	nop
	ldi @(fp,-8), gr4
	ldi @(fp,-4), gr5
	nop
	ldi @(fp,-16), gr6
	ldi @(fp,-12), gr7
	nop
	mov gr6, gr10
	mov gr7, gr11
	mov gr4, gr8
	mov gr5, gr9
	mov gr12, gr15
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
