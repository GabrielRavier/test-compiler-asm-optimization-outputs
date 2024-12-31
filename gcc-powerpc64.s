	.file	"mini-libc.c"
	.machine ppc64
	.section	".text"
	.align 2
	.globl make_ti
	.section	".opd","aw"
	.align 3
make_ti:
	.quad	.L.make_ti,.TOC.@tocbase
	.previous
	.type	make_ti, @function
.L.make_ti:
.LFB0:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	ld 9,48(1)
	std 9,-16(1)
	ld 9,56(1)
	std 9,-8(1)
	ld 10,-16(1)
	ld 11,-8(1)
	mr 3,10
	mr 4,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE0:
	.size	make_ti,.-.L.make_ti
	.align 2
	.globl make_tu
	.section	".opd","aw"
	.align 3
make_tu:
	.quad	.L.make_tu,.TOC.@tocbase
	.previous
	.type	make_tu, @function
.L.make_tu:
.LFB1:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	ld 9,48(1)
	std 9,-16(1)
	ld 9,56(1)
	std 9,-8(1)
	ld 10,-16(1)
	ld 11,-8(1)
	mr 3,10
	mr 4,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE1:
	.size	make_tu,.-.L.make_tu
	.align 2
	.globl memmove
	.section	".opd","aw"
	.align 3
memmove:
	.quad	.L.memmove,.TOC.@tocbase
	.previous
	.type	memmove, @function
.L.memmove:
.LFB2:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	std 5,64(1)
	ld 9,48(1)
	std 9,-16(1)
	ld 9,56(1)
	std 9,-8(1)
	ld 10,-8(1)
	ld 9,-16(1)
	cmpld 0,10,9
	bge 0,.L6
	ld 10,-8(1)
	ld 9,64(1)
	add 9,10,9
	std 9,-8(1)
	ld 10,-16(1)
	ld 9,64(1)
	add 9,10,9
	std 9,-16(1)
	b .L7
.L8:
	ld 9,-8(1)
	addi 9,9,-1
	std 9,-8(1)
	ld 9,-16(1)
	addi 9,9,-1
	std 9,-16(1)
	ld 9,-8(1)
	lbz 10,0(9)
	ld 9,-16(1)
	stb 10,0(9)
	ld 9,64(1)
	addi 9,9,-1
	std 9,64(1)
.L7:
	ld 9,64(1)
	cmpdi 0,9,0
	bne 0,.L8
	b .L9
.L6:
	ld 10,-8(1)
	ld 9,-16(1)
	cmpd 0,10,9
	beq 0,.L9
	b .L10
.L11:
	ld 10,-8(1)
	addi 9,10,1
	std 9,-8(1)
	ld 9,-16(1)
	addi 8,9,1
	std 8,-16(1)
	lbz 10,0(10)
	stb 10,0(9)
	ld 9,64(1)
	addi 9,9,-1
	std 9,64(1)
.L10:
	ld 9,64(1)
	cmpdi 0,9,0
	bne 0,.L11
.L9:
	ld 9,48(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE2:
	.size	memmove,.-.L.memmove
	.align 2
	.globl memccpy
	.section	".opd","aw"
	.align 3
memccpy:
	.quad	.L.memccpy,.TOC.@tocbase
	.previous
	.type	memccpy, @function
.L.memccpy:
.LFB3:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	mr 9,5
	std 6,72(1)
	stw 9,64(1)
	ld 9,48(1)
	std 9,-16(1)
	ld 9,56(1)
	std 9,-8(1)
	lwz 9,64(1)
	rlwinm 9,9,0,0xff
	stw 9,64(1)
	b .L14
.L16:
	ld 9,72(1)
	addi 9,9,-1
	std 9,72(1)
	ld 9,-8(1)
	addi 9,9,1
	std 9,-8(1)
	ld 9,-16(1)
	addi 9,9,1
	std 9,-16(1)
.L14:
	ld 9,72(1)
	cmpdi 0,9,0
	beq 0,.L15
	ld 9,-8(1)
	lbz 10,0(9)
	ld 9,-16(1)
	stb 10,0(9)
	ld 9,-16(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,64(1)
	cmpw 0,10,9
	bne 0,.L16
.L15:
	ld 9,72(1)
	cmpdi 0,9,0
	beq 0,.L17
	ld 9,-16(1)
	addi 9,9,1
	b .L18
.L17:
	li 9,0
.L18:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE3:
	.size	memccpy,.-.L.memccpy
	.align 2
	.globl memchr
	.section	".opd","aw"
	.align 3
memchr:
	.quad	.L.memchr,.TOC.@tocbase
	.previous
	.type	memchr, @function
.L.memchr:
.LFB4:
	.cfi_startproc
	std 3,48(1)
	mr 9,4
	std 5,64(1)
	stw 9,56(1)
	ld 9,48(1)
	std 9,-16(1)
	lwz 9,56(1)
	rlwinm 9,9,0,0xff
	stw 9,56(1)
	b .L20
.L22:
	ld 9,-16(1)
	addi 9,9,1
	std 9,-16(1)
	ld 9,64(1)
	addi 9,9,-1
	std 9,64(1)
.L20:
	ld 9,64(1)
	cmpdi 0,9,0
	beq 0,.L21
	ld 9,-16(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,56(1)
	cmpw 0,10,9
	bne 0,.L22
.L21:
	ld 9,64(1)
	cmpdi 0,9,0
	beq 0,.L23
	ld 9,-16(1)
	b .L25
.L23:
	li 9,0
.L25:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE4:
	.size	memchr,.-.L.memchr
	.align 2
	.globl memcmp
	.section	".opd","aw"
	.align 3
memcmp:
	.quad	.L.memcmp,.TOC.@tocbase
	.previous
	.type	memcmp, @function
.L.memcmp:
.LFB5:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	std 5,64(1)
	ld 9,48(1)
	std 9,-16(1)
	ld 9,56(1)
	std 9,-8(1)
	b .L27
.L29:
	ld 9,64(1)
	addi 9,9,-1
	std 9,64(1)
	ld 9,-16(1)
	addi 9,9,1
	std 9,-16(1)
	ld 9,-8(1)
	addi 9,9,1
	std 9,-8(1)
.L27:
	ld 9,64(1)
	cmpdi 0,9,0
	beq 0,.L28
	ld 9,-16(1)
	lbz 10,0(9)
	ld 9,-8(1)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	beq 0,.L29
.L28:
	ld 9,64(1)
	cmpdi 0,9,0
	beq 0,.L30
	ld 9,-16(1)
	lbz 9,0(9)
	rlwinm 10,9,0,0xff
	ld 9,-8(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	subf 9,9,10
	b .L32
.L30:
	li 9,0
.L32:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE5:
	.size	memcmp,.-.L.memcmp
	.align 2
	.globl memcpy
	.section	".opd","aw"
	.align 3
memcpy:
	.quad	.L.memcpy,.TOC.@tocbase
	.previous
	.type	memcpy, @function
.L.memcpy:
.LFB6:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	std 5,64(1)
	ld 9,48(1)
	std 9,-16(1)
	ld 9,56(1)
	std 9,-8(1)
	b .L34
.L35:
	ld 10,-8(1)
	addi 9,10,1
	std 9,-8(1)
	ld 9,-16(1)
	addi 8,9,1
	std 8,-16(1)
	lbz 10,0(10)
	stb 10,0(9)
	ld 9,64(1)
	addi 9,9,-1
	std 9,64(1)
.L34:
	ld 9,64(1)
	cmpdi 0,9,0
	bne 0,.L35
	ld 9,48(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE6:
	.size	memcpy,.-.L.memcpy
	.align 2
	.globl memrchr
	.section	".opd","aw"
	.align 3
memrchr:
	.quad	.L.memrchr,.TOC.@tocbase
	.previous
	.type	memrchr, @function
.L.memrchr:
.LFB7:
	.cfi_startproc
	std 3,48(1)
	mr 9,4
	std 5,64(1)
	stw 9,56(1)
	ld 9,48(1)
	std 9,-16(1)
	lwz 9,56(1)
	rlwinm 9,9,0,0xff
	stw 9,56(1)
	b .L38
.L40:
	ld 10,-16(1)
	ld 9,64(1)
	add 9,10,9
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,56(1)
	cmpw 0,10,9
	bne 0,.L38
	ld 10,-16(1)
	ld 9,64(1)
	add 9,10,9
	b .L39
.L38:
	ld 9,64(1)
	addi 10,9,-1
	std 10,64(1)
	cmpdi 0,9,0
	bne 0,.L40
	li 9,0
.L39:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE7:
	.size	memrchr,.-.L.memrchr
	.align 2
	.globl memset
	.section	".opd","aw"
	.align 3
memset:
	.quad	.L.memset,.TOC.@tocbase
	.previous
	.type	memset, @function
.L.memset:
.LFB8:
	.cfi_startproc
	std 3,48(1)
	mr 9,4
	std 5,64(1)
	stw 9,56(1)
	ld 9,48(1)
	std 9,-16(1)
	b .L42
.L43:
	lwz 9,56(1)
	mr 10,9
	ld 9,-16(1)
	stb 10,0(9)
	ld 9,64(1)
	addi 9,9,-1
	std 9,64(1)
	ld 9,-16(1)
	addi 9,9,1
	std 9,-16(1)
.L42:
	ld 9,64(1)
	cmpdi 0,9,0
	bne 0,.L43
	ld 9,48(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE8:
	.size	memset,.-.L.memset
	.align 2
	.globl stpcpy
	.section	".opd","aw"
	.align 3
stpcpy:
	.quad	.L.stpcpy,.TOC.@tocbase
	.previous
	.type	stpcpy, @function
.L.stpcpy:
.LFB9:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	b .L46
.L47:
	ld 9,56(1)
	addi 9,9,1
	std 9,56(1)
	ld 9,48(1)
	addi 9,9,1
	std 9,48(1)
.L46:
	ld 9,56(1)
	lbz 10,0(9)
	ld 9,48(1)
	stb 10,0(9)
	ld 9,48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L47
	ld 9,48(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE9:
	.size	stpcpy,.-.L.stpcpy
	.align 2
	.globl strchrnul
	.section	".opd","aw"
	.align 3
strchrnul:
	.quad	.L.strchrnul,.TOC.@tocbase
	.previous
	.type	strchrnul, @function
.L.strchrnul:
.LFB10:
	.cfi_startproc
	std 3,48(1)
	mr 9,4
	stw 9,56(1)
	lwz 9,56(1)
	rlwinm 9,9,0,0xff
	stw 9,56(1)
	b .L50
.L52:
	ld 9,48(1)
	addi 9,9,1
	std 9,48(1)
.L50:
	ld 9,48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L51
	ld 9,48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,56(1)
	cmpw 0,10,9
	bne 0,.L52
.L51:
	ld 9,48(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE10:
	.size	strchrnul,.-.L.strchrnul
	.align 2
	.globl strchr
	.section	".opd","aw"
	.align 3
strchr:
	.quad	.L.strchr,.TOC.@tocbase
	.previous
	.type	strchr, @function
.L.strchr:
.LFB11:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 10,56(1)
.L57:
	lbz 10,0(9)
	rlwinm 10,10,0,0xff
	lwz 8,56(1)
	cmpw 0,8,10
	bne 0,.L55
	b .L56
.L55:
	mr 10,9
	addi 9,10,1
	lbz 10,0(10)
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	bne 0,.L57
	li 9,0
.L56:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE11:
	.size	strchr,.-.L.strchr
	.align 2
	.globl strcmp
	.section	".opd","aw"
	.align 3
strcmp:
	.quad	.L.strcmp,.TOC.@tocbase
	.previous
	.type	strcmp, @function
.L.strcmp:
.LFB12:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	b .L59
.L61:
	ld 9,48(1)
	addi 9,9,1
	std 9,48(1)
	ld 9,56(1)
	addi 9,9,1
	std 9,56(1)
.L59:
	ld 9,48(1)
	lbz 10,0(9)
	ld 9,56(1)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	bne 0,.L60
	ld 9,48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L61
.L60:
	ld 9,48(1)
	lbz 9,0(9)
	rlwinm 10,9,0,0xff
	ld 9,56(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	subf 9,9,10
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE12:
	.size	strcmp,.-.L.strcmp
	.align 2
	.globl strlen
	.section	".opd","aw"
	.align 3
strlen:
	.quad	.L.strlen,.TOC.@tocbase
	.previous
	.type	strlen, @function
.L.strlen:
.LFB13:
	.cfi_startproc
	std 3,48(1)
	ld 9,48(1)
	std 9,-16(1)
	b .L64
.L65:
	ld 9,48(1)
	addi 9,9,1
	std 9,48(1)
.L64:
	ld 9,48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L65
	ld 10,48(1)
	ld 9,-16(1)
	subf 9,9,10
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE13:
	.size	strlen,.-.L.strlen
	.align 2
	.globl strncmp
	.section	".opd","aw"
	.align 3
strncmp:
	.quad	.L.strncmp,.TOC.@tocbase
	.previous
	.type	strncmp, @function
.L.strncmp:
.LFB14:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	std 5,64(1)
	ld 9,48(1)
	std 9,-16(1)
	ld 9,56(1)
	std 9,-8(1)
	ld 9,64(1)
	addi 10,9,-1
	std 10,64(1)
	cmpdi 0,9,0
	bne 0,.L70
	li 9,0
	b .L69
.L72:
	ld 9,-16(1)
	addi 9,9,1
	std 9,-16(1)
	ld 9,-8(1)
	addi 9,9,1
	std 9,-8(1)
	ld 9,64(1)
	addi 9,9,-1
	std 9,64(1)
.L70:
	ld 9,-16(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L71
	ld 9,-8(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L71
	ld 9,64(1)
	cmpdi 0,9,0
	beq 0,.L71
	ld 9,-16(1)
	lbz 10,0(9)
	ld 9,-8(1)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	beq 0,.L72
.L71:
	ld 9,-16(1)
	lbz 9,0(9)
	rlwinm 10,9,0,0xff
	ld 9,-8(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	subf 9,9,10
.L69:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE14:
	.size	strncmp,.-.L.strncmp
	.align 2
	.globl swab
	.section	".opd","aw"
	.align 3
swab:
	.quad	.L.swab,.TOC.@tocbase
	.previous
	.type	swab, @function
.L.swab:
.LFB15:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	std 5,64(1)
	ld 9,48(1)
	std 9,-16(1)
	ld 9,56(1)
	std 9,-8(1)
	b .L74
.L75:
	ld 9,-16(1)
	addi 9,9,1
	lbz 10,0(9)
	ld 9,-8(1)
	stb 10,0(9)
	ld 9,-8(1)
	addi 9,9,1
	ld 10,-16(1)
	lbz 10,0(10)
	stb 10,0(9)
	ld 9,-8(1)
	addi 9,9,2
	std 9,-8(1)
	ld 9,-16(1)
	addi 9,9,2
	std 9,-16(1)
	ld 9,64(1)
	addi 9,9,-2
	std 9,64(1)
.L74:
	ld 9,64(1)
	cmpdi 0,9,1
	bgt 0,.L75
	nop
	nop
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE15:
	.size	swab,.-.L.swab
	.align 2
	.globl isalpha
	.section	".opd","aw"
	.align 3
isalpha:
	.quad	.L.isalpha,.TOC.@tocbase
	.previous
	.type	isalpha, @function
.L.isalpha:
.LFB16:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	ori 9,9,0x20
	addi 9,9,-97
	li 10,25
	rldicl 9,9,0,32
	rldicl 10,10,0,32
	subf 9,9,10
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE16:
	.size	isalpha,.-.L.isalpha
	.align 2
	.globl isascii
	.section	".opd","aw"
	.align 3
isascii:
	.quad	.L.isascii,.TOC.@tocbase
	.previous
	.type	isascii, @function
.L.isascii:
.LFB17:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	li 10,127
	rldicl 9,9,0,32
	rldicl 10,10,0,32
	subf 9,9,10
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE17:
	.size	isascii,.-.L.isascii
	.align 2
	.globl isblank
	.section	".opd","aw"
	.align 3
isblank:
	.quad	.L.isblank,.TOC.@tocbase
	.previous
	.type	isblank, @function
.L.isblank:
.LFB18:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	cmpwi 0,9,32
	beq 0,.L81
	lwz 9,48(1)
	cmpwi 0,9,9
	bne 0,.L82
.L81:
	li 9,1
	b .L84
.L82:
	li 9,0
.L84:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE18:
	.size	isblank,.-.L.isblank
	.align 2
	.globl iscntrl
	.section	".opd","aw"
	.align 3
iscntrl:
	.quad	.L.iscntrl,.TOC.@tocbase
	.previous
	.type	iscntrl, @function
.L.iscntrl:
.LFB19:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	cmplwi 0,9,31
	ble 0,.L86
	lwz 9,48(1)
	cmpwi 0,9,127
	bne 0,.L87
.L86:
	li 9,1
	b .L89
.L87:
	li 9,0
.L89:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE19:
	.size	iscntrl,.-.L.iscntrl
	.align 2
	.globl isdigit
	.section	".opd","aw"
	.align 3
isdigit:
	.quad	.L.isdigit,.TOC.@tocbase
	.previous
	.type	isdigit, @function
.L.isdigit:
.LFB20:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	addi 9,9,-48
	li 10,9
	rldicl 9,9,0,32
	rldicl 10,10,0,32
	subf 9,9,10
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE20:
	.size	isdigit,.-.L.isdigit
	.align 2
	.globl isgraph
	.section	".opd","aw"
	.align 3
isgraph:
	.quad	.L.isgraph,.TOC.@tocbase
	.previous
	.type	isgraph, @function
.L.isgraph:
.LFB21:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	addi 9,9,-33
	li 10,93
	rldicl 9,9,0,32
	rldicl 10,10,0,32
	subf 9,9,10
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE21:
	.size	isgraph,.-.L.isgraph
	.align 2
	.globl islower
	.section	".opd","aw"
	.align 3
islower:
	.quad	.L.islower,.TOC.@tocbase
	.previous
	.type	islower, @function
.L.islower:
.LFB22:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	addi 9,9,-97
	li 10,25
	rldicl 9,9,0,32
	rldicl 10,10,0,32
	subf 9,9,10
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE22:
	.size	islower,.-.L.islower
	.align 2
	.globl isprint
	.section	".opd","aw"
	.align 3
isprint:
	.quad	.L.isprint,.TOC.@tocbase
	.previous
	.type	isprint, @function
.L.isprint:
.LFB23:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	addi 9,9,-32
	li 10,94
	rldicl 9,9,0,32
	rldicl 10,10,0,32
	subf 9,9,10
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE23:
	.size	isprint,.-.L.isprint
	.align 2
	.globl isspace
	.section	".opd","aw"
	.align 3
isspace:
	.quad	.L.isspace,.TOC.@tocbase
	.previous
	.type	isspace, @function
.L.isspace:
.LFB24:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	cmpwi 0,9,32
	beq 0,.L99
	lwz 9,48(1)
	addi 9,9,-9
	cmplwi 0,9,4
	bgt 0,.L100
.L99:
	li 9,1
	b .L102
.L100:
	li 9,0
.L102:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE24:
	.size	isspace,.-.L.isspace
	.align 2
	.globl isupper
	.section	".opd","aw"
	.align 3
isupper:
	.quad	.L.isupper,.TOC.@tocbase
	.previous
	.type	isupper, @function
.L.isupper:
.LFB25:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	addi 9,9,-65
	li 10,25
	rldicl 9,9,0,32
	rldicl 10,10,0,32
	subf 9,9,10
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE25:
	.size	isupper,.-.L.isupper
	.align 2
	.globl iswcntrl
	.section	".opd","aw"
	.align 3
iswcntrl:
	.quad	.L.iswcntrl,.TOC.@tocbase
	.previous
	.type	iswcntrl, @function
.L.iswcntrl:
.LFB26:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	cmplwi 0,9,31
	ble 0,.L106
	lwz 9,48(1)
	addi 9,9,-127
	cmplwi 0,9,32
	ble 0,.L106
	lwz 9,48(1)
	addi 9,9,-8232
	cmplwi 0,9,1
	ble 0,.L106
	lwz 9,48(1)
	addis 9,9,0xffff
	addi 9,9,7
	cmplwi 0,9,2
	bgt 0,.L107
.L106:
	li 9,1
	b .L109
.L107:
	li 9,0
.L109:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE26:
	.size	iswcntrl,.-.L.iswcntrl
	.align 2
	.globl iswdigit
	.section	".opd","aw"
	.align 3
iswdigit:
	.quad	.L.iswdigit,.TOC.@tocbase
	.previous
	.type	iswdigit, @function
.L.iswdigit:
.LFB27:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	addi 9,9,-48
	li 10,9
	rldicl 9,9,0,32
	rldicl 10,10,0,32
	subf 9,9,10
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE27:
	.size	iswdigit,.-.L.iswdigit
	.align 2
	.globl iswprint
	.section	".opd","aw"
	.align 3
iswprint:
	.quad	.L.iswprint,.TOC.@tocbase
	.previous
	.type	iswprint, @function
.L.iswprint:
.LFB28:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	cmplwi 0,9,254
	bgt 0,.L113
	lwz 9,48(1)
	addi 9,9,1
	rlwinm 9,9,0,25,31
	li 10,32
	rldicl 9,9,0,32
	rldicl 10,10,0,32
	subf 9,9,10
	srdi 9,9,63
	rlwinm 9,9,0,0xff
	b .L114
.L113:
	lwz 9,48(1)
	cmplwi 0,9,8231
	ble 0,.L115
	lwz 9,48(1)
	addi 10,9,-8234
	li 9,0
	ori 9,9,0xb7d5
	cmplw 0,10,9
	ble 0,.L115
	lwz 9,48(1)
	addis 9,9,0xffff
	addi 9,9,8192
	cmplwi 0,9,8184
	bgt 0,.L116
.L115:
	li 9,1
	b .L114
.L116:
	lwz 9,48(1)
	addis 9,9,0xffff
	addi 10,9,4
	lis 9,0x10
	ori 9,9,0x3
	cmplw 0,10,9
	bgt 0,.L117
	lwz 9,48(1)
	rlwinm 10,9,0,16,30
	li 9,0
	ori 9,9,0xfffe
	cmpw 0,10,9
	bne 0,.L118
.L117:
	li 9,0
	b .L114
.L118:
	li 9,1
.L114:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE28:
	.size	iswprint,.-.L.iswprint
	.align 2
	.globl iswxdigit
	.section	".opd","aw"
	.align 3
iswxdigit:
	.quad	.L.iswxdigit,.TOC.@tocbase
	.previous
	.type	iswxdigit, @function
.L.iswxdigit:
.LFB29:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L120
	lwz 9,48(1)
	ori 9,9,0x20
	addi 9,9,-97
	cmplwi 0,9,5
	bgt 0,.L121
.L120:
	li 9,1
	b .L123
.L121:
	li 9,0
.L123:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE29:
	.size	iswxdigit,.-.L.iswxdigit
	.align 2
	.globl toascii
	.section	".opd","aw"
	.align 3
toascii:
	.quad	.L.toascii,.TOC.@tocbase
	.previous
	.type	toascii, @function
.L.toascii:
.LFB30:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	rlwinm 9,9,0,25,31
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE30:
	.size	toascii,.-.L.toascii
	.align 2
	.globl fdim
	.section	".opd","aw"
	.align 3
fdim:
	.quad	.L.fdim,.TOC.@tocbase
	.previous
	.type	fdim, @function
.L.fdim:
.LFB31:
	.cfi_startproc
	stfd 1,48(1)
	stfd 2,56(1)
	lfd 12,48(1)
	lfd 0,48(1)
	fcmpu 0,12,0
	bnu 0,.L127
	lfd 0,48(1)
	b .L128
.L127:
	lfd 12,56(1)
	lfd 0,56(1)
	fcmpu 0,12,0
	bnu 0,.L129
	lfd 0,56(1)
	b .L128
.L129:
	lfd 12,48(1)
	lfd 0,56(1)
	fcmpu 0,12,0
	bng 0,.L134
	lfd 12,48(1)
	lfd 0,56(1)
	fsub 0,12,0
	b .L128
.L134:
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
.L128:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE31:
	.size	fdim,.-.L.fdim
	.align 2
	.globl fdimf
	.section	".opd","aw"
	.align 3
fdimf:
	.quad	.L.fdimf,.TOC.@tocbase
	.previous
	.type	fdimf, @function
.L.fdimf:
.LFB32:
	.cfi_startproc
	stfs 1,48(1)
	stfs 2,56(1)
	lfs 12,48(1)
	lfs 0,48(1)
	fcmpu 0,12,0
	bnu 0,.L136
	lfs 0,48(1)
	b .L137
.L136:
	lfs 12,56(1)
	lfs 0,56(1)
	fcmpu 0,12,0
	bnu 0,.L138
	lfs 0,56(1)
	b .L137
.L138:
	lfs 12,48(1)
	lfs 0,56(1)
	fcmpu 0,12,0
	bng 0,.L143
	lfs 12,48(1)
	lfs 0,56(1)
	fsubs 0,12,0
	b .L137
.L143:
	addis 9,2,.LC1@toc@ha
	addi 9,9,.LC1@toc@l
	lfs 0,0(9)
.L137:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE32:
	.size	fdimf,.-.L.fdimf
	.align 2
	.globl fmax
	.section	".opd","aw"
	.align 3
fmax:
	.quad	.L.fmax,.TOC.@tocbase
	.previous
	.type	fmax, @function
.L.fmax:
.LFB33:
	.cfi_startproc
	stfd 1,48(1)
	stfd 2,56(1)
	lfd 12,48(1)
	lfd 0,48(1)
	fcmpu 0,12,0
	bnu 0,.L145
	lfd 0,56(1)
	b .L146
.L145:
	lfd 12,56(1)
	lfd 0,56(1)
	fcmpu 0,12,0
	bnu 0,.L147
	lfd 0,48(1)
	b .L146
.L147:
	ld 9,48(1)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	mr 10,9
	ld 9,56(1)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	cmpw 0,10,9
	beq 0,.L148
	ld 9,48(1)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L149
	lfd 0,56(1)
	b .L146
.L149:
	lfd 0,48(1)
	b .L146
.L148:
	lfd 12,48(1)
	lfd 0,56(1)
	fcmpu 0,12,0
	bnl 0,.L155
	lfd 0,56(1)
	b .L146
.L155:
	lfd 0,48(1)
.L146:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE33:
	.size	fmax,.-.L.fmax
	.align 2
	.globl fmaxf
	.section	".opd","aw"
	.align 3
fmaxf:
	.quad	.L.fmaxf,.TOC.@tocbase
	.previous
	.type	fmaxf, @function
.L.fmaxf:
.LFB34:
	.cfi_startproc
	stfs 1,48(1)
	stfs 2,56(1)
	lfs 12,48(1)
	lfs 0,48(1)
	fcmpu 0,12,0
	bnu 0,.L157
	lfs 0,56(1)
	b .L158
.L157:
	lfs 12,56(1)
	lfs 0,56(1)
	fcmpu 0,12,0
	bnu 0,.L159
	lfs 0,48(1)
	b .L158
.L159:
	lwz 9,48(1)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,56(1)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L160
	lwz 9,48(1)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L161
	lfs 0,56(1)
	b .L158
.L161:
	lfs 0,48(1)
	b .L158
.L160:
	lfs 12,48(1)
	lfs 0,56(1)
	fcmpu 0,12,0
	bnl 0,.L167
	lfs 0,56(1)
	b .L158
.L167:
	lfs 0,48(1)
.L158:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE34:
	.size	fmaxf,.-.L.fmaxf
	.align 2
	.globl fmaxl
	.section	".opd","aw"
	.align 3
fmaxl:
	.quad	.L.fmaxl,.TOC.@tocbase
	.previous
	.type	fmaxl, @function
.L.fmaxl:
.LFB35:
	.cfi_startproc
	stfd 1,-48(1)
	stfd 2,-40(1)
	addi 9,1,-32
	stfd 3,0(9)
	stfd 4,8(9)
	lfd 0,-48(1)
	lfd 1,-40(1)
	fcmpu 0,0,0
	bnu 0,.L169
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	b .L170
.L169:
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,0,0
	bnu 0,.L171
	lfd 0,-48(1)
	lfd 1,-40(1)
	b .L170
.L171:
	lfd 0,-48(1)
	lfd 1,-40(1)
	stfd 0,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	mr 10,9
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	stfd 0,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L172
	lfd 0,-48(1)
	lfd 1,-40(1)
	stfd 0,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpwi 0,9,0
	beq 0,.L173
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	b .L170
.L173:
	lfd 0,-48(1)
	lfd 1,-40(1)
	b .L170
.L172:
	lfd 12,-48(1)
	lfd 13,-40(1)
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	bnl 0,.L179
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	b .L170
.L179:
	lfd 0,-48(1)
	lfd 1,-40(1)
.L170:
	fmr 2,1
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE35:
	.size	fmaxl,.-.L.fmaxl
	.align 2
	.globl fmin
	.section	".opd","aw"
	.align 3
fmin:
	.quad	.L.fmin,.TOC.@tocbase
	.previous
	.type	fmin, @function
.L.fmin:
.LFB36:
	.cfi_startproc
	stfd 1,48(1)
	stfd 2,56(1)
	lfd 12,48(1)
	lfd 0,48(1)
	fcmpu 0,12,0
	bnu 0,.L181
	lfd 0,56(1)
	b .L182
.L181:
	lfd 12,56(1)
	lfd 0,56(1)
	fcmpu 0,12,0
	bnu 0,.L183
	lfd 0,48(1)
	b .L182
.L183:
	ld 9,48(1)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	mr 10,9
	ld 9,56(1)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	cmpw 0,10,9
	beq 0,.L184
	ld 9,48(1)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L185
	lfd 0,48(1)
	b .L182
.L185:
	lfd 0,56(1)
	b .L182
.L184:
	lfd 12,48(1)
	lfd 0,56(1)
	fcmpu 0,12,0
	bnl 0,.L191
	lfd 0,48(1)
	b .L182
.L191:
	lfd 0,56(1)
.L182:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE36:
	.size	fmin,.-.L.fmin
	.align 2
	.globl fminf
	.section	".opd","aw"
	.align 3
fminf:
	.quad	.L.fminf,.TOC.@tocbase
	.previous
	.type	fminf, @function
.L.fminf:
.LFB37:
	.cfi_startproc
	stfs 1,48(1)
	stfs 2,56(1)
	lfs 12,48(1)
	lfs 0,48(1)
	fcmpu 0,12,0
	bnu 0,.L193
	lfs 0,56(1)
	b .L194
.L193:
	lfs 12,56(1)
	lfs 0,56(1)
	fcmpu 0,12,0
	bnu 0,.L195
	lfs 0,48(1)
	b .L194
.L195:
	lwz 9,48(1)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,56(1)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L196
	lwz 9,48(1)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L197
	lfs 0,48(1)
	b .L194
.L197:
	lfs 0,56(1)
	b .L194
.L196:
	lfs 12,48(1)
	lfs 0,56(1)
	fcmpu 0,12,0
	bnl 0,.L203
	lfs 0,48(1)
	b .L194
.L203:
	lfs 0,56(1)
.L194:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE37:
	.size	fminf,.-.L.fminf
	.align 2
	.globl fminl
	.section	".opd","aw"
	.align 3
fminl:
	.quad	.L.fminl,.TOC.@tocbase
	.previous
	.type	fminl, @function
.L.fminl:
.LFB38:
	.cfi_startproc
	stfd 1,-48(1)
	stfd 2,-40(1)
	addi 9,1,-32
	stfd 3,0(9)
	stfd 4,8(9)
	lfd 0,-48(1)
	lfd 1,-40(1)
	fcmpu 0,0,0
	bnu 0,.L205
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	b .L206
.L205:
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,0,0
	bnu 0,.L207
	lfd 0,-48(1)
	lfd 1,-40(1)
	b .L206
.L207:
	lfd 0,-48(1)
	lfd 1,-40(1)
	stfd 0,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	mr 10,9
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	stfd 0,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L208
	lfd 0,-48(1)
	lfd 1,-40(1)
	stfd 0,-16(1)
	ld 9,-16(1)
	srdi 9,9,63
	cmpwi 0,9,0
	beq 0,.L209
	lfd 0,-48(1)
	lfd 1,-40(1)
	b .L206
.L209:
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	b .L206
.L208:
	lfd 12,-48(1)
	lfd 13,-40(1)
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	bnl 0,.L215
	lfd 0,-48(1)
	lfd 1,-40(1)
	b .L206
.L215:
	addi 9,1,-32
	lfd 0,0(9)
	lfd 1,8(9)
.L206:
	fmr 2,1
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE38:
	.size	fminl,.-.L.fminl
	.section	.rodata
	.align 3
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	".text"
	.align 2
	.globl l64a
	.section	".opd","aw"
	.align 3
l64a:
	.quad	.L.l64a,.TOC.@tocbase
	.previous
	.type	l64a, @function
.L.l64a:
.LFB39:
	.cfi_startproc
	std 3,48(1)
	ld 9,48(1)
	stw 9,-8(1)
	addis 9,2,s.0@toc@ha
	addi 9,9,s.0@toc@l
	std 9,-16(1)
	b .L217
.L218:
	lwz 9,-8(1)
	rlwinm 9,9,0,26,31
	addis 10,2,digits@toc@ha
	addi 10,10,digits@toc@l
	rldicl 9,9,0,32
	lbzx 10,10,9
	ld 9,-16(1)
	stb 10,0(9)
	ld 9,-16(1)
	addi 9,9,1
	std 9,-16(1)
	lwz 9,-8(1)
	srwi 9,9,6
	stw 9,-8(1)
.L217:
	lwz 9,-8(1)
	cmpwi 0,9,0
	bne 0,.L218
	ld 9,-16(1)
	li 10,0
	stb 10,0(9)
	addis 9,2,s.0@toc@ha
	addi 9,9,s.0@toc@l
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE39:
	.size	l64a,.-.L.l64a
	.lcomm	seed,8,8
	.type	seed, @object
	.align 2
	.globl srand
	.section	".opd","aw"
	.align 3
srand:
	.quad	.L.srand,.TOC.@tocbase
	.previous
	.type	srand, @function
.L.srand:
.LFB40:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	addi 9,9,-1
	rldicl 10,9,0,32
	addis 9,2,seed@toc@ha
	addi 9,9,seed@toc@l
	std 10,0(9)
	nop
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE40:
	.size	srand,.-.L.srand
	.align 2
	.globl rand
	.section	".opd","aw"
	.align 3
rand:
	.quad	.L.rand,.TOC.@tocbase
	.previous
	.type	rand, @function
.L.rand:
.LFB41:
	.cfi_startproc
	addis 9,2,seed@toc@ha
	addi 9,9,seed@toc@l
	ld 10,0(9)
	mr 9,10
	sldi 9,9,4
	subf 9,10,9
	sldi 8,9,6
	subf 8,9,8
	sldi 9,8,7
	add 8,8,9
	sldi 9,8,2
	mr 8,9
	add 8,8,10
	sldi 9,8,6
	subf 9,8,9
	sldi 9,9,7
	add 9,9,10
	sldi 9,9,2
	add 9,9,10
	sldi 7,9,3
	subf 7,9,7
	sldi 8,7,3
	subf 8,7,8
	sldi 9,8,6
	subf 9,8,9
	sldi 9,9,2
	subf 9,10,9
	sldi 9,9,7
	subf 9,10,9
	sldi 9,9,2
	add 9,9,10
	sldi 9,9,2
	subf 9,10,9
	sldi 9,9,2
	subf 9,10,9
	sldi 9,9,2
	add 9,9,10
	addi 10,9,1
	addis 9,2,seed@toc@ha
	addi 9,9,seed@toc@l
	std 10,0(9)
	addis 9,2,seed@toc@ha
	addi 9,9,seed@toc@l
	ld 9,0(9)
	srdi 9,9,33
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE41:
	.size	rand,.-.L.rand
	.align 2
	.globl insque
	.section	".opd","aw"
	.align 3
insque:
	.quad	.L.insque,.TOC.@tocbase
	.previous
	.type	insque, @function
.L.insque:
.LFB42:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	ld 9,48(1)
	std 9,-16(1)
	ld 9,56(1)
	std 9,-8(1)
	ld 9,-8(1)
	cmpdi 0,9,0
	bne 0,.L224
	ld 9,-16(1)
	li 10,0
	std 10,8(9)
	ld 9,-16(1)
	ld 10,8(9)
	ld 9,-16(1)
	std 10,0(9)
	blr
.L224:
	ld 9,-8(1)
	ld 10,0(9)
	ld 9,-16(1)
	std 10,0(9)
	ld 9,-16(1)
	ld 10,-8(1)
	std 10,8(9)
	ld 9,-8(1)
	ld 10,-16(1)
	std 10,0(9)
	ld 9,-16(1)
	ld 9,0(9)
	cmpdi 0,9,0
	beqlr 0
	ld 9,-16(1)
	ld 9,0(9)
	ld 10,-16(1)
	std 10,8(9)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE42:
	.size	insque,.-.L.insque
	.align 2
	.globl remque
	.section	".opd","aw"
	.align 3
remque:
	.quad	.L.remque,.TOC.@tocbase
	.previous
	.type	remque, @function
.L.remque:
.LFB43:
	.cfi_startproc
	std 3,48(1)
	ld 9,48(1)
	std 9,-16(1)
	ld 9,-16(1)
	ld 9,0(9)
	cmpdi 0,9,0
	beq 0,.L227
	ld 9,-16(1)
	ld 9,0(9)
	ld 10,-16(1)
	ld 10,8(10)
	std 10,8(9)
.L227:
	ld 9,-16(1)
	ld 9,8(9)
	cmpdi 0,9,0
	beq 0,.L229
	ld 9,-16(1)
	ld 9,8(9)
	ld 10,-16(1)
	ld 10,0(10)
	std 10,0(9)
.L229:
	nop
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE43:
	.size	remque,.-.L.remque
	.align 2
	.globl lsearch
	.section	".opd","aw"
	.align 3
lsearch:
	.quad	.L.lsearch,.TOC.@tocbase
	.previous
	.type	lsearch, @function
.L.lsearch:
.LFB44:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-160(1)
	.cfi_def_cfa_offset 160
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	std 2,40(1)
	std 3,208(1)
	std 4,216(1)
	std 5,224(1)
	std 6,232(1)
	std 7,240(1)
	ld 31,232(1)
	mr 7,31
	addi 7,7,-1
	std 7,120(1)
	mr 11,31
	li 10,0
	srdi 7,11,61
	sldi 8,10,3
	or 8,7,8
	sldi 9,11,3
	ld 9,216(1)
	std 9,128(1)
	ld 9,224(1)
	ld 9,0(9)
	std 9,136(1)
	li 9,0
	std 9,112(1)
	b .L231
.L234:
	ld 9,112(1)
	mulld 9,31,9
	ld 10,128(1)
	add 10,10,9
	ld 9,240(1)
	mr 4,10
	ld 3,208(1)
	ld 10,0(9)
	mtctr 10
	ld 11,16(9)
	ld 2,8(9)
	bctrl
	ld 2,40(1)
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L232
	ld 9,112(1)
	mulld 9,31,9
	ld 10,128(1)
	add 9,10,9
	b .L233
.L232:
	ld 9,112(1)
	addi 9,9,1
	std 9,112(1)
.L231:
	ld 10,112(1)
	ld 9,136(1)
	cmpld 0,10,9
	blt 0,.L234
	ld 9,136(1)
	addi 10,9,1
	ld 9,224(1)
	std 10,0(9)
	ld 9,136(1)
	mulld 9,31,9
	ld 10,128(1)
	add 9,10,9
	ld 5,232(1)
	ld 4,208(1)
	mr 3,9
	bl memcpy
	mr 9,3
.L233:
	mr 3,9
	addi 1,1,160
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.cfi_endproc
.LFE44:
	.size	lsearch,.-.L.lsearch
	.align 2
	.globl lfind
	.section	".opd","aw"
	.align 3
lfind:
	.quad	.L.lfind,.TOC.@tocbase
	.previous
	.type	lfind, @function
.L.lfind:
.LFB45:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-160(1)
	.cfi_def_cfa_offset 160
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	std 2,40(1)
	std 3,208(1)
	std 4,216(1)
	std 5,224(1)
	std 6,232(1)
	std 7,240(1)
	ld 31,232(1)
	mr 7,31
	addi 7,7,-1
	std 7,120(1)
	mr 11,31
	li 10,0
	srdi 7,11,61
	sldi 8,10,3
	or 8,7,8
	sldi 9,11,3
	ld 9,216(1)
	std 9,128(1)
	ld 9,224(1)
	ld 9,0(9)
	std 9,136(1)
	li 9,0
	std 9,112(1)
	b .L236
.L239:
	ld 9,112(1)
	mulld 9,31,9
	ld 10,128(1)
	add 10,10,9
	ld 9,240(1)
	mr 4,10
	ld 3,208(1)
	ld 10,0(9)
	mtctr 10
	ld 11,16(9)
	ld 2,8(9)
	bctrl
	ld 2,40(1)
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L237
	ld 9,112(1)
	mulld 9,31,9
	ld 10,128(1)
	add 9,10,9
	b .L238
.L237:
	ld 9,112(1)
	addi 9,9,1
	std 9,112(1)
.L236:
	ld 10,112(1)
	ld 9,136(1)
	cmpld 0,10,9
	blt 0,.L239
	li 9,0
.L238:
	mr 3,9
	addi 1,1,160
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.cfi_endproc
.LFE45:
	.size	lfind,.-.L.lfind
	.align 2
	.globl abs
	.section	".opd","aw"
	.align 3
abs:
	.quad	.L.abs,.TOC.@tocbase
	.previous
	.type	abs, @function
.L.abs:
.LFB46:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	srawi 10,9,31
	lwz 9,48(1)
	xor 9,10,9
	subf 9,10,9
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE46:
	.size	abs,.-.L.abs
	.align 2
	.globl atoi
	.section	".opd","aw"
	.align 3
atoi:
	.quad	.L.atoi,.TOC.@tocbase
	.previous
	.type	atoi, @function
.L.atoi:
.LFB47:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	std 3,176(1)
	li 9,0
	stw 9,112(1)
	li 9,0
	stw 9,116(1)
	b .L243
.L244:
	ld 9,176(1)
	addi 9,9,1
	std 9,176(1)
.L243:
	ld 9,176(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	bl isspace
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L244
	ld 9,176(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,43
	beq 0,.L245
	cmpwi 0,9,45
	bne 0,.L247
	li 9,1
	stw 9,116(1)
.L245:
	ld 9,176(1)
	addi 9,9,1
	std 9,176(1)
	b .L247
.L248:
	lwz 10,112(1)
	mr 9,10
	slwi 9,9,2
	add 9,9,10
	slwi 9,9,1
	mr 8,9
	ld 9,176(1)
	addi 10,9,1
	std 10,176(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	subf 9,9,8
	stw 9,112(1)
.L247:
	ld 9,176(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L248
	lwz 9,116(1)
	cmpwi 0,9,0
	bne 0,.L249
	lwz 9,112(1)
	neg 9,9
	b .L251
.L249:
	lwz 9,112(1)
.L251:
	extsw 9,9
	mr 3,9
	addi 1,1,128
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE47:
	.size	atoi,.-.L.atoi
	.align 2
	.globl atol
	.section	".opd","aw"
	.align 3
atol:
	.quad	.L.atol,.TOC.@tocbase
	.previous
	.type	atol, @function
.L.atol:
.LFB48:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	std 3,176(1)
	li 9,0
	std 9,112(1)
	li 9,0
	stw 9,120(1)
	b .L253
.L254:
	ld 9,176(1)
	addi 9,9,1
	std 9,176(1)
.L253:
	ld 9,176(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	bl isspace
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L254
	ld 9,176(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,43
	beq 0,.L255
	cmpwi 0,9,45
	bne 0,.L257
	li 9,1
	stw 9,120(1)
.L255:
	ld 9,176(1)
	addi 9,9,1
	std 9,176(1)
	b .L257
.L258:
	ld 10,112(1)
	mr 9,10
	sldi 9,9,2
	add 9,9,10
	sldi 9,9,1
	mr 8,9
	ld 9,176(1)
	addi 10,9,1
	std 10,176(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	extsw 9,9
	subf 9,9,8
	std 9,112(1)
.L257:
	ld 9,176(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L258
	lwz 9,120(1)
	cmpwi 0,9,0
	bne 0,.L259
	ld 9,112(1)
	neg 9,9
	b .L261
.L259:
	ld 9,112(1)
.L261:
	mr 3,9
	addi 1,1,128
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE48:
	.size	atol,.-.L.atol
	.align 2
	.globl atoll
	.section	".opd","aw"
	.align 3
atoll:
	.quad	.L.atoll,.TOC.@tocbase
	.previous
	.type	atoll, @function
.L.atoll:
.LFB49:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	std 3,176(1)
	li 9,0
	std 9,112(1)
	li 9,0
	stw 9,120(1)
	b .L263
.L264:
	ld 9,176(1)
	addi 9,9,1
	std 9,176(1)
.L263:
	ld 9,176(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	bl isspace
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L264
	ld 9,176(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,43
	beq 0,.L265
	cmpwi 0,9,45
	bne 0,.L267
	li 9,1
	stw 9,120(1)
.L265:
	ld 9,176(1)
	addi 9,9,1
	std 9,176(1)
	b .L267
.L268:
	ld 10,112(1)
	mr 9,10
	sldi 9,9,2
	add 9,9,10
	sldi 9,9,1
	mr 8,9
	ld 9,176(1)
	addi 10,9,1
	std 10,176(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	extsw 9,9
	subf 9,9,8
	std 9,112(1)
.L267:
	ld 9,176(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L268
	lwz 9,120(1)
	cmpwi 0,9,0
	bne 0,.L269
	ld 9,112(1)
	neg 9,9
	b .L271
.L269:
	ld 9,112(1)
.L271:
	mr 3,9
	addi 1,1,128
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE49:
	.size	atoll,.-.L.atoll
	.align 2
	.globl bsearch
	.section	".opd","aw"
	.align 3
bsearch:
	.quad	.L.bsearch,.TOC.@tocbase
	.previous
	.type	bsearch, @function
.L.bsearch:
.LFB50:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	std 2,40(1)
	std 3,176(1)
	std 4,184(1)
	std 5,192(1)
	std 6,200(1)
	std 7,208(1)
	b .L273
.L278:
	ld 9,192(1)
	srdi 10,9,1
	ld 9,200(1)
	mulld 9,10,9
	ld 10,184(1)
	add 9,10,9
	std 9,112(1)
	ld 9,208(1)
	ld 4,112(1)
	ld 3,176(1)
	ld 10,0(9)
	mtctr 10
	ld 11,16(9)
	ld 2,8(9)
	bctrl
	ld 2,40(1)
	mr 9,3
	stw 9,120(1)
	lwz 9,120(1)
	cmpwi 0,9,0
	bge 0,.L274
	ld 9,192(1)
	srdi 9,9,1
	std 9,192(1)
	b .L273
.L274:
	lwz 9,120(1)
	cmpwi 0,9,0
	ble 0,.L276
	ld 10,112(1)
	ld 9,200(1)
	add 9,10,9
	std 9,184(1)
	ld 9,192(1)
	srdi 9,9,1
	ld 10,192(1)
	subf 9,9,10
	addi 9,9,-1
	std 9,192(1)
	b .L273
.L276:
	ld 9,112(1)
	b .L277
.L273:
	ld 9,192(1)
	cmpdi 0,9,0
	bne 0,.L278
	li 9,0
.L277:
	mr 3,9
	addi 1,1,128
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE50:
	.size	bsearch,.-.L.bsearch
	.align 2
	.globl bsearch_r
	.section	".opd","aw"
	.align 3
bsearch_r:
	.quad	.L.bsearch_r,.TOC.@tocbase
	.previous
	.type	bsearch_r, @function
.L.bsearch_r:
.LFB51:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-144(1)
	.cfi_def_cfa_offset 144
	.cfi_offset 65, 16
	std 2,40(1)
	std 3,192(1)
	std 4,200(1)
	std 5,208(1)
	std 6,216(1)
	std 7,224(1)
	std 8,232(1)
	ld 9,200(1)
	std 9,112(1)
	ld 9,208(1)
	stw 9,120(1)
	b .L280
.L284:
	lwz 9,120(1)
	srawi 9,9,1
	extsw 10,9
	ld 9,216(1)
	mulld 9,10,9
	ld 10,112(1)
	add 9,10,9
	std 9,128(1)
	ld 9,224(1)
	ld 5,232(1)
	ld 4,128(1)
	ld 3,192(1)
	ld 10,0(9)
	mtctr 10
	ld 11,16(9)
	ld 2,8(9)
	bctrl
	ld 2,40(1)
	mr 9,3
	stw 9,136(1)
	lwz 9,136(1)
	cmpwi 0,9,0
	bne 0,.L281
	ld 9,128(1)
	b .L282
.L281:
	lwz 9,136(1)
	cmpwi 0,9,0
	ble 0,.L283
	ld 10,128(1)
	ld 9,216(1)
	add 9,10,9
	std 9,112(1)
	lwz 9,120(1)
	addi 9,9,-1
	stw 9,120(1)
.L283:
	lwz 9,120(1)
	srawi 9,9,1
	stw 9,120(1)
.L280:
	lwz 9,120(1)
	cmpwi 0,9,0
	bne 0,.L284
	li 9,0
.L282:
	mr 3,9
	addi 1,1,144
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE51:
	.size	bsearch_r,.-.L.bsearch_r
	.align 2
	.globl div
	.section	".opd","aw"
	.align 3
div:
	.quad	.L.div,.TOC.@tocbase
	.previous
	.type	div, @function
.L.div:
.LFB52:
	.cfi_startproc
	std 3,48(1)
	mr 9,4
	mr 10,5
	stw 9,56(1)
	mr 9,10
	stw 9,64(1)
	lwz 10,56(1)
	lwz 9,64(1)
	divw 8,10,9
	lwz 9,56(1)
	lwz 10,64(1)
	divw 7,9,10
	lwz 10,64(1)
	mullw 10,7,10
	subf 10,10,9
	ld 9,48(1)
	stw 8,0(9)
	ld 9,48(1)
	stw 10,4(9)
	ld 3,48(1)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE52:
	.size	div,.-.L.div
	.align 2
	.globl imaxabs
	.section	".opd","aw"
	.align 3
imaxabs:
	.quad	.L.imaxabs,.TOC.@tocbase
	.previous
	.type	imaxabs, @function
.L.imaxabs:
.LFB53:
	.cfi_startproc
	std 3,48(1)
	ld 9,48(1)
	sradi 10,9,63
	ld 9,48(1)
	xor 9,10,9
	subf 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE53:
	.size	imaxabs,.-.L.imaxabs
	.align 2
	.globl imaxdiv
	.section	".opd","aw"
	.align 3
imaxdiv:
	.quad	.L.imaxdiv,.TOC.@tocbase
	.previous
	.type	imaxdiv, @function
.L.imaxdiv:
.LFB54:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	std 5,64(1)
	ld 10,56(1)
	ld 9,64(1)
	divd 8,10,9
	ld 9,56(1)
	ld 10,64(1)
	divd 7,9,10
	ld 10,64(1)
	mulld 10,7,10
	subf 10,10,9
	ld 9,48(1)
	std 8,0(9)
	ld 9,48(1)
	std 10,8(9)
	ld 3,48(1)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE54:
	.size	imaxdiv,.-.L.imaxdiv
	.align 2
	.globl labs
	.section	".opd","aw"
	.align 3
labs:
	.quad	.L.labs,.TOC.@tocbase
	.previous
	.type	labs, @function
.L.labs:
.LFB55:
	.cfi_startproc
	std 3,48(1)
	ld 9,48(1)
	sradi 10,9,63
	ld 9,48(1)
	xor 9,10,9
	subf 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE55:
	.size	labs,.-.L.labs
	.align 2
	.globl ldiv
	.section	".opd","aw"
	.align 3
ldiv:
	.quad	.L.ldiv,.TOC.@tocbase
	.previous
	.type	ldiv, @function
.L.ldiv:
.LFB56:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	std 5,64(1)
	ld 10,56(1)
	ld 9,64(1)
	divd 8,10,9
	ld 9,56(1)
	ld 10,64(1)
	divd 7,9,10
	ld 10,64(1)
	mulld 10,7,10
	subf 10,10,9
	ld 9,48(1)
	std 8,0(9)
	ld 9,48(1)
	std 10,8(9)
	ld 3,48(1)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE56:
	.size	ldiv,.-.L.ldiv
	.align 2
	.globl llabs
	.section	".opd","aw"
	.align 3
llabs:
	.quad	.L.llabs,.TOC.@tocbase
	.previous
	.type	llabs, @function
.L.llabs:
.LFB57:
	.cfi_startproc
	std 3,48(1)
	ld 9,48(1)
	sradi 10,9,63
	ld 9,48(1)
	xor 9,10,9
	subf 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE57:
	.size	llabs,.-.L.llabs
	.align 2
	.globl lldiv
	.section	".opd","aw"
	.align 3
lldiv:
	.quad	.L.lldiv,.TOC.@tocbase
	.previous
	.type	lldiv, @function
.L.lldiv:
.LFB58:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	std 5,64(1)
	ld 10,56(1)
	ld 9,64(1)
	divd 8,10,9
	ld 9,56(1)
	ld 10,64(1)
	divd 7,9,10
	ld 10,64(1)
	mulld 10,7,10
	subf 10,10,9
	ld 9,48(1)
	std 8,0(9)
	ld 9,48(1)
	std 10,8(9)
	ld 3,48(1)
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE58:
	.size	lldiv,.-.L.lldiv
	.align 2
	.globl wcschr
	.section	".opd","aw"
	.align 3
wcschr:
	.quad	.L.wcschr,.TOC.@tocbase
	.previous
	.type	wcschr, @function
.L.wcschr:
.LFB59:
	.cfi_startproc
	std 3,48(1)
	mr 9,4
	stw 9,56(1)
	b .L300
.L302:
	ld 9,48(1)
	addi 9,9,4
	std 9,48(1)
.L300:
	ld 9,48(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L301
	ld 9,48(1)
	lwz 9,0(9)
	lwz 10,56(1)
	cmpw 0,10,9
	bne 0,.L302
.L301:
	ld 9,48(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L303
	ld 9,48(1)
	b .L305
.L303:
	li 9,0
.L305:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE59:
	.size	wcschr,.-.L.wcschr
	.align 2
	.globl wcscmp
	.section	".opd","aw"
	.align 3
wcscmp:
	.quad	.L.wcscmp,.TOC.@tocbase
	.previous
	.type	wcscmp, @function
.L.wcscmp:
.LFB60:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	b .L307
.L309:
	ld 9,48(1)
	addi 9,9,4
	std 9,48(1)
	ld 9,56(1)
	addi 9,9,4
	std 9,56(1)
.L307:
	ld 9,48(1)
	lwz 10,0(9)
	ld 9,56(1)
	lwz 9,0(9)
	cmpw 0,10,9
	bne 0,.L308
	ld 9,48(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L308
	ld 9,56(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L309
.L308:
	ld 9,48(1)
	lwz 10,0(9)
	ld 9,56(1)
	lwz 9,0(9)
	cmpw 0,10,9
	blt 0,.L310
	ld 9,48(1)
	lwz 8,0(9)
	ld 9,56(1)
	lwz 10,0(9)
	extsw 9,8
	extsw 10,10
	subf 9,9,10
	srdi 9,9,63
	rlwinm 9,9,0,0xff
	b .L312
.L310:
	li 9,-1
.L312:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE60:
	.size	wcscmp,.-.L.wcscmp
	.align 2
	.globl wcscpy
	.section	".opd","aw"
	.align 3
wcscpy:
	.quad	.L.wcscpy,.TOC.@tocbase
	.previous
	.type	wcscpy, @function
.L.wcscpy:
.LFB61:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	ld 9,48(1)
	std 9,-16(1)
	nop
.L314:
	ld 10,56(1)
	addi 9,10,4
	std 9,56(1)
	ld 9,48(1)
	addi 8,9,4
	std 8,48(1)
	lwz 10,0(10)
	stw 10,0(9)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L314
	ld 9,-16(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE61:
	.size	wcscpy,.-.L.wcscpy
	.align 2
	.globl wcslen
	.section	".opd","aw"
	.align 3
wcslen:
	.quad	.L.wcslen,.TOC.@tocbase
	.previous
	.type	wcslen, @function
.L.wcslen:
.LFB62:
	.cfi_startproc
	std 3,48(1)
	ld 9,48(1)
	std 9,-16(1)
	b .L317
.L318:
	ld 9,48(1)
	addi 9,9,4
	std 9,48(1)
.L317:
	ld 9,48(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L318
	ld 10,48(1)
	ld 9,-16(1)
	subf 9,9,10
	sradi 9,9,2
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE62:
	.size	wcslen,.-.L.wcslen
	.align 2
	.globl wcsncmp
	.section	".opd","aw"
	.align 3
wcsncmp:
	.quad	.L.wcsncmp,.TOC.@tocbase
	.previous
	.type	wcsncmp, @function
.L.wcsncmp:
.LFB63:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	std 5,64(1)
	b .L321
.L323:
	ld 9,64(1)
	addi 9,9,-1
	std 9,64(1)
	ld 9,48(1)
	addi 9,9,4
	std 9,48(1)
	ld 9,56(1)
	addi 9,9,4
	std 9,56(1)
.L321:
	ld 9,64(1)
	cmpdi 0,9,0
	beq 0,.L322
	ld 9,48(1)
	lwz 10,0(9)
	ld 9,56(1)
	lwz 9,0(9)
	cmpw 0,10,9
	bne 0,.L322
	ld 9,48(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L322
	ld 9,56(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L323
.L322:
	ld 9,64(1)
	cmpdi 0,9,0
	beq 0,.L324
	ld 9,48(1)
	lwz 10,0(9)
	ld 9,56(1)
	lwz 9,0(9)
	cmpw 0,10,9
	blt 0,.L325
	ld 9,48(1)
	lwz 8,0(9)
	ld 9,56(1)
	lwz 10,0(9)
	extsw 9,8
	extsw 10,10
	subf 9,9,10
	srdi 9,9,63
	rlwinm 9,9,0,0xff
	b .L328
.L325:
	li 9,-1
	b .L328
.L324:
	li 9,0
.L328:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE63:
	.size	wcsncmp,.-.L.wcsncmp
	.align 2
	.globl wmemchr
	.section	".opd","aw"
	.align 3
wmemchr:
	.quad	.L.wmemchr,.TOC.@tocbase
	.previous
	.type	wmemchr, @function
.L.wmemchr:
.LFB64:
	.cfi_startproc
	std 3,48(1)
	mr 9,4
	std 5,64(1)
	stw 9,56(1)
	b .L330
.L332:
	ld 9,64(1)
	addi 9,9,-1
	std 9,64(1)
	ld 9,48(1)
	addi 9,9,4
	std 9,48(1)
.L330:
	ld 9,64(1)
	cmpdi 0,9,0
	beq 0,.L331
	ld 9,48(1)
	lwz 9,0(9)
	lwz 10,56(1)
	cmpw 0,10,9
	bne 0,.L332
.L331:
	ld 9,64(1)
	cmpdi 0,9,0
	beq 0,.L333
	ld 9,48(1)
	b .L335
.L333:
	li 9,0
.L335:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE64:
	.size	wmemchr,.-.L.wmemchr
	.align 2
	.globl wmemcmp
	.section	".opd","aw"
	.align 3
wmemcmp:
	.quad	.L.wmemcmp,.TOC.@tocbase
	.previous
	.type	wmemcmp, @function
.L.wmemcmp:
.LFB65:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	std 5,64(1)
	b .L337
.L339:
	ld 9,64(1)
	addi 9,9,-1
	std 9,64(1)
	ld 9,48(1)
	addi 9,9,4
	std 9,48(1)
	ld 9,56(1)
	addi 9,9,4
	std 9,56(1)
.L337:
	ld 9,64(1)
	cmpdi 0,9,0
	beq 0,.L338
	ld 9,48(1)
	lwz 10,0(9)
	ld 9,56(1)
	lwz 9,0(9)
	cmpw 0,10,9
	beq 0,.L339
.L338:
	ld 9,64(1)
	cmpdi 0,9,0
	beq 0,.L340
	ld 9,48(1)
	lwz 10,0(9)
	ld 9,56(1)
	lwz 9,0(9)
	cmpw 0,10,9
	blt 0,.L341
	ld 9,48(1)
	lwz 8,0(9)
	ld 9,56(1)
	lwz 10,0(9)
	extsw 9,8
	extsw 10,10
	subf 9,9,10
	srdi 9,9,63
	rlwinm 9,9,0,0xff
	b .L344
.L341:
	li 9,-1
	b .L344
.L340:
	li 9,0
.L344:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE65:
	.size	wmemcmp,.-.L.wmemcmp
	.align 2
	.globl wmemcpy
	.section	".opd","aw"
	.align 3
wmemcpy:
	.quad	.L.wmemcpy,.TOC.@tocbase
	.previous
	.type	wmemcpy, @function
.L.wmemcpy:
.LFB66:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	std 5,64(1)
	ld 9,48(1)
	std 9,-16(1)
	b .L346
.L347:
	ld 10,56(1)
	addi 9,10,4
	std 9,56(1)
	ld 9,48(1)
	addi 8,9,4
	std 8,48(1)
	lwz 10,0(10)
	stw 10,0(9)
.L346:
	ld 9,64(1)
	addi 10,9,-1
	std 10,64(1)
	cmpdi 0,9,0
	bne 0,.L347
	ld 9,-16(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE66:
	.size	wmemcpy,.-.L.wmemcpy
	.align 2
	.globl wmemmove
	.section	".opd","aw"
	.align 3
wmemmove:
	.quad	.L.wmemmove,.TOC.@tocbase
	.previous
	.type	wmemmove, @function
.L.wmemmove:
.LFB67:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	std 5,64(1)
	ld 9,48(1)
	std 9,-16(1)
	ld 10,48(1)
	ld 9,56(1)
	cmpd 0,10,9
	bne 0,.L350
	ld 9,48(1)
	b .L351
.L350:
	ld 10,48(1)
	ld 9,56(1)
	subf 10,9,10
	ld 9,64(1)
	sldi 9,9,2
	cmpld 0,10,9
	bge 0,.L356
	b .L353
.L354:
	ld 9,64(1)
	sldi 9,9,2
	ld 10,56(1)
	add 10,10,9
	ld 9,64(1)
	sldi 9,9,2
	ld 8,48(1)
	add 9,8,9
	lwz 10,0(10)
	stw 10,0(9)
.L353:
	ld 9,64(1)
	addi 10,9,-1
	std 10,64(1)
	cmpdi 0,9,0
	bne 0,.L354
	b .L355
.L357:
	ld 10,56(1)
	addi 9,10,4
	std 9,56(1)
	ld 9,48(1)
	addi 8,9,4
	std 8,48(1)
	lwz 10,0(10)
	stw 10,0(9)
.L356:
	ld 9,64(1)
	addi 10,9,-1
	std 10,64(1)
	cmpdi 0,9,0
	bne 0,.L357
.L355:
	ld 9,-16(1)
.L351:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE67:
	.size	wmemmove,.-.L.wmemmove
	.align 2
	.globl wmemset
	.section	".opd","aw"
	.align 3
wmemset:
	.quad	.L.wmemset,.TOC.@tocbase
	.previous
	.type	wmemset, @function
.L.wmemset:
.LFB68:
	.cfi_startproc
	std 3,48(1)
	mr 9,4
	std 5,64(1)
	stw 9,56(1)
	ld 9,48(1)
	std 9,-16(1)
	b .L359
.L360:
	ld 9,48(1)
	addi 10,9,4
	std 10,48(1)
	lwz 10,56(1)
	stw 10,0(9)
.L359:
	ld 9,64(1)
	addi 10,9,-1
	std 10,64(1)
	cmpdi 0,9,0
	bne 0,.L360
	ld 9,-16(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE68:
	.size	wmemset,.-.L.wmemset
	.align 2
	.globl bcopy
	.section	".opd","aw"
	.align 3
bcopy:
	.quad	.L.bcopy,.TOC.@tocbase
	.previous
	.type	bcopy, @function
.L.bcopy:
.LFB69:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	std 5,64(1)
	ld 9,48(1)
	std 9,-16(1)
	ld 9,56(1)
	std 9,-8(1)
	ld 10,-16(1)
	ld 9,-8(1)
	cmpld 0,10,9
	bge 0,.L363
	ld 10,-16(1)
	ld 9,64(1)
	add 9,10,9
	std 9,-16(1)
	ld 10,-8(1)
	ld 9,64(1)
	add 9,10,9
	std 9,-8(1)
	b .L364
.L365:
	ld 9,-16(1)
	addi 9,9,-1
	std 9,-16(1)
	ld 9,-8(1)
	addi 9,9,-1
	std 9,-8(1)
	ld 9,-16(1)
	lbz 10,0(9)
	ld 9,-8(1)
	stb 10,0(9)
	ld 9,64(1)
	addi 9,9,-1
	std 9,64(1)
.L364:
	ld 9,64(1)
	cmpdi 0,9,0
	bne 0,.L365
	b .L369
.L363:
	ld 10,-16(1)
	ld 9,-8(1)
	cmpd 0,10,9
	beq 0,.L369
	b .L367
.L368:
	ld 10,-16(1)
	addi 9,10,1
	std 9,-16(1)
	ld 9,-8(1)
	addi 8,9,1
	std 8,-8(1)
	lbz 10,0(10)
	stb 10,0(9)
	ld 9,64(1)
	addi 9,9,-1
	std 9,64(1)
.L367:
	ld 9,64(1)
	cmpdi 0,9,0
	bne 0,.L368
.L369:
	nop
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE69:
	.size	bcopy,.-.L.bcopy
	.align 2
	.globl rotl64
	.section	".opd","aw"
	.align 3
rotl64:
	.quad	.L.rotl64,.TOC.@tocbase
	.previous
	.type	rotl64, @function
.L.rotl64:
.LFB70:
	.cfi_startproc
	std 3,48(1)
	mr 9,4
	stw 9,56(1)
	ld 10,48(1)
	lwz 9,56(1)
	rotld 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE70:
	.size	rotl64,.-.L.rotl64
	.align 2
	.globl rotr64
	.section	".opd","aw"
	.align 3
rotr64:
	.quad	.L.rotr64,.TOC.@tocbase
	.previous
	.type	rotr64, @function
.L.rotr64:
.LFB71:
	.cfi_startproc
	std 3,48(1)
	mr 9,4
	stw 9,56(1)
	lwz 9,56(1)
	subfic 9,9,64
	ld 10,48(1)
	rotld 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE71:
	.size	rotr64,.-.L.rotr64
	.align 2
	.globl rotl32
	.section	".opd","aw"
	.align 3
rotl32:
	.quad	.L.rotl32,.TOC.@tocbase
	.previous
	.type	rotl32, @function
.L.rotl32:
.LFB72:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 9,48(1)
	mr 9,10
	stw 9,56(1)
	lwz 10,48(1)
	lwz 9,56(1)
	rotlw 9,10,9
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE72:
	.size	rotl32,.-.L.rotl32
	.align 2
	.globl rotr32
	.section	".opd","aw"
	.align 3
rotr32:
	.quad	.L.rotr32,.TOC.@tocbase
	.previous
	.type	rotr32, @function
.L.rotr32:
.LFB73:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 9,48(1)
	mr 9,10
	stw 9,56(1)
	lwz 9,56(1)
	subfic 9,9,32
	lwz 10,48(1)
	rotlw 9,10,9
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE73:
	.size	rotr32,.-.L.rotr32
	.align 2
	.globl rotl_sz
	.section	".opd","aw"
	.align 3
rotl_sz:
	.quad	.L.rotl_sz,.TOC.@tocbase
	.previous
	.type	rotl_sz, @function
.L.rotl_sz:
.LFB74:
	.cfi_startproc
	std 3,48(1)
	mr 9,4
	stw 9,56(1)
	ld 10,48(1)
	lwz 9,56(1)
	sld 10,10,9
	lwz 9,56(1)
	subfic 9,9,64
	ld 8,48(1)
	srd 9,8,9
	or 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE74:
	.size	rotl_sz,.-.L.rotl_sz
	.align 2
	.globl rotr_sz
	.section	".opd","aw"
	.align 3
rotr_sz:
	.quad	.L.rotr_sz,.TOC.@tocbase
	.previous
	.type	rotr_sz, @function
.L.rotr_sz:
.LFB75:
	.cfi_startproc
	std 3,48(1)
	mr 9,4
	stw 9,56(1)
	ld 10,48(1)
	lwz 9,56(1)
	srd 10,10,9
	lwz 9,56(1)
	subfic 9,9,64
	ld 8,48(1)
	sld 9,8,9
	or 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE75:
	.size	rotr_sz,.-.L.rotr_sz
	.align 2
	.globl rotl16
	.section	".opd","aw"
	.align 3
rotl16:
	.quad	.L.rotl16,.TOC.@tocbase
	.previous
	.type	rotl16, @function
.L.rotl16:
.LFB76:
	.cfi_startproc
	mr 9,3
	mr 10,4
	sth 9,48(1)
	mr 9,10
	stw 9,56(1)
	lhz 10,48(1)
	lwz 9,56(1)
	slw 9,10,9
	mr 8,9
	lhz 10,48(1)
	lwz 9,56(1)
	subfic 9,9,16
	srw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xffff
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE76:
	.size	rotl16,.-.L.rotl16
	.align 2
	.globl rotr16
	.section	".opd","aw"
	.align 3
rotr16:
	.quad	.L.rotr16,.TOC.@tocbase
	.previous
	.type	rotr16, @function
.L.rotr16:
.LFB77:
	.cfi_startproc
	mr 9,3
	mr 10,4
	sth 9,48(1)
	mr 9,10
	stw 9,56(1)
	lhz 10,48(1)
	lwz 9,56(1)
	srw 9,10,9
	mr 8,9
	lhz 10,48(1)
	lwz 9,56(1)
	subfic 9,9,16
	slw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xffff
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE77:
	.size	rotr16,.-.L.rotr16
	.align 2
	.globl rotl8
	.section	".opd","aw"
	.align 3
rotl8:
	.quad	.L.rotl8,.TOC.@tocbase
	.previous
	.type	rotl8, @function
.L.rotl8:
.LFB78:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stb 9,48(1)
	mr 9,10
	stw 9,56(1)
	lbz 10,48(1)
	lwz 9,56(1)
	slw 9,10,9
	mr 8,9
	lbz 10,48(1)
	lwz 9,56(1)
	subfic 9,9,8
	srw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xff
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE78:
	.size	rotl8,.-.L.rotl8
	.align 2
	.globl rotr8
	.section	".opd","aw"
	.align 3
rotr8:
	.quad	.L.rotr8,.TOC.@tocbase
	.previous
	.type	rotr8, @function
.L.rotr8:
.LFB79:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stb 9,48(1)
	mr 9,10
	stw 9,56(1)
	lbz 10,48(1)
	lwz 9,56(1)
	srw 9,10,9
	mr 8,9
	lbz 10,48(1)
	lwz 9,56(1)
	subfic 9,9,8
	slw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xff
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE79:
	.size	rotr8,.-.L.rotr8
	.align 2
	.globl bswap_16
	.section	".opd","aw"
	.align 3
bswap_16:
	.quad	.L.bswap_16,.TOC.@tocbase
	.previous
	.type	bswap_16, @function
.L.bswap_16:
.LFB80:
	.cfi_startproc
	mr 9,3
	sth 9,48(1)
	li 9,255
	std 9,-16(1)
	lhz 10,48(1)
	ld 9,-16(1)
	sldi 9,9,8
	and 9,10,9
	srdi 9,9,8
	mr 10,9
	ld 9,-16(1)
	mr 8,9
	lhz 9,48(1)
	and 9,9,8
	slwi 9,9,8
	or 9,10,9
	rlwinm 9,9,0,0xffff
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE80:
	.size	bswap_16,.-.L.bswap_16
	.align 2
	.globl bswap_32
	.section	".opd","aw"
	.align 3
bswap_32:
	.quad	.L.bswap_32,.TOC.@tocbase
	.previous
	.type	bswap_32, @function
.L.bswap_32:
.LFB81:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	li 9,255
	std 9,-16(1)
	lwz 10,48(1)
	ld 9,-16(1)
	sldi 9,9,24
	and 9,10,9
	srdi 9,9,24
	mr 8,9
	lwz 10,48(1)
	ld 9,-16(1)
	sldi 9,9,16
	and 9,10,9
	srdi 9,9,8
	or 10,8,9
	ld 9,-16(1)
	slwi 8,9,8
	lwz 9,48(1)
	and 9,8,9
	slwi 9,9,8
	or 10,10,9
	ld 9,-16(1)
	mr 8,9
	lwz 9,48(1)
	and 9,8,9
	slwi 9,9,24
	or 9,10,9
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE81:
	.size	bswap_32,.-.L.bswap_32
	.align 2
	.globl bswap_64
	.section	".opd","aw"
	.align 3
bswap_64:
	.quad	.L.bswap_64,.TOC.@tocbase
	.previous
	.type	bswap_64, @function
.L.bswap_64:
.LFB82:
	.cfi_startproc
	std 3,48(1)
	li 9,255
	std 9,-16(1)
	ld 9,-16(1)
	sldi 10,9,56
	ld 9,48(1)
	and 9,10,9
	srdi 10,9,56
	ld 9,-16(1)
	sldi 8,9,48
	ld 9,48(1)
	and 9,8,9
	srdi 9,9,40
	or 10,10,9
	ld 9,-16(1)
	sldi 8,9,40
	ld 9,48(1)
	and 9,8,9
	srdi 9,9,24
	or 10,10,9
	ld 9,-16(1)
	sldi 8,9,32
	ld 9,48(1)
	and 9,8,9
	srdi 9,9,8
	or 10,10,9
	ld 9,-16(1)
	sldi 8,9,24
	ld 9,48(1)
	and 9,8,9
	sldi 9,9,8
	or 10,10,9
	ld 9,-16(1)
	sldi 8,9,16
	ld 9,48(1)
	and 9,8,9
	sldi 9,9,24
	or 10,10,9
	ld 9,-16(1)
	sldi 8,9,8
	ld 9,48(1)
	and 9,8,9
	sldi 9,9,40
	or 10,10,9
	ld 8,48(1)
	ld 9,-16(1)
	and 9,8,9
	sldi 9,9,56
	or 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE82:
	.size	bswap_64,.-.L.bswap_64
	.align 2
	.globl ffs
	.section	".opd","aw"
	.align 3
ffs:
	.quad	.L.ffs,.TOC.@tocbase
	.previous
	.type	ffs, @function
.L.ffs:
.LFB83:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	li 9,0
	stw 9,-16(1)
	b .L397
.L400:
	lwz 10,48(1)
	lwz 9,-16(1)
	srw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L398
	lwz 9,-16(1)
	addi 9,9,1
	b .L399
.L398:
	lwz 9,-16(1)
	addi 9,9,1
	stw 9,-16(1)
.L397:
	lwz 9,-16(1)
	cmplwi 0,9,31
	ble 0,.L400
	li 9,0
.L399:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE83:
	.size	ffs,.-.L.ffs
	.align 2
	.globl libiberty_ffs
	.section	".opd","aw"
	.align 3
libiberty_ffs:
	.quad	.L.libiberty_ffs,.TOC.@tocbase
	.previous
	.type	libiberty_ffs, @function
.L.libiberty_ffs:
.LFB84:
	.cfi_startproc
	std 31,-8(1)
	.cfi_offset 31, -8
	mr 9,3
	cmpdi 0,9,0
	bne 0,.L402
	li 9,0
	b .L403
.L402:
	li 31,1
	b .L404
.L405:
	srawi 9,9,1
	extsw 9,9
	addi 31,31,1
.L404:
	rlwinm 10,9,0,31,31
	cmpwi 0,10,0
	beq 0,.L405
	mr 9,31
.L403:
	extsw 9,9
	mr 3,9
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,0,1,0,1
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs,.-.L.libiberty_ffs
	.align 2
	.globl gl_isinff
	.section	".opd","aw"
	.align 3
gl_isinff:
	.quad	.L.gl_isinff,.TOC.@tocbase
	.previous
	.type	gl_isinff, @function
.L.gl_isinff:
.LFB85:
	.cfi_startproc
	stfs 1,48(1)
	lfs 12,48(1)
	addis 9,2,.LC2@toc@ha
	addi 9,9,.LC2@toc@l
	lfs 0,0(9)
	fcmpu 0,12,0
	blt 0,.L407
	lfs 12,48(1)
	addis 9,2,.LC3@toc@ha
	addi 9,9,.LC3@toc@l
	lfs 0,0(9)
	fcmpu 0,12,0
	bng 0,.L412
.L407:
	li 9,1
	b .L411
.L412:
	li 9,0
.L411:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE85:
	.size	gl_isinff,.-.L.gl_isinff
	.align 2
	.globl gl_isinfd
	.section	".opd","aw"
	.align 3
gl_isinfd:
	.quad	.L.gl_isinfd,.TOC.@tocbase
	.previous
	.type	gl_isinfd, @function
.L.gl_isinfd:
.LFB86:
	.cfi_startproc
	stfd 1,48(1)
	lfd 12,48(1)
	addis 9,2,.LC4@toc@ha
	addi 9,9,.LC4@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	blt 0,.L414
	lfd 12,48(1)
	addis 9,2,.LC5@toc@ha
	addi 9,9,.LC5@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bng 0,.L419
.L414:
	li 9,1
	b .L418
.L419:
	li 9,0
.L418:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE86:
	.size	gl_isinfd,.-.L.gl_isinfd
	.align 2
	.globl gl_isinfl
	.section	".opd","aw"
	.align 3
gl_isinfl:
	.quad	.L.gl_isinfl,.TOC.@tocbase
	.previous
	.type	gl_isinfl, @function
.L.gl_isinfl:
.LFB87:
	.cfi_startproc
	stfd 1,-16(1)
	stfd 2,-8(1)
	lfd 12,-16(1)
	lfd 13,-8(1)
	addis 9,2,.LC6@toc@ha
	addi 9,9,.LC6@toc@l
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	blt 0,.L421
	lfd 12,-16(1)
	lfd 13,-8(1)
	addis 9,2,.LC7@toc@ha
	addi 9,9,.LC7@toc@l
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	bng 0,.L426
.L421:
	li 9,1
	b .L425
.L426:
	li 9,0
.L425:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE87:
	.size	gl_isinfl,.-.L.gl_isinfl
	.align 2
	.globl _Qp_itoq
	.section	".opd","aw"
	.align 3
_Qp_itoq:
	.quad	.L._Qp_itoq,.TOC.@tocbase
	.previous
	.type	_Qp_itoq, @function
.L._Qp_itoq:
.LFB88:
	.cfi_startproc
	std 3,48(1)
	mr 9,4
	stw 9,56(1)
	lwz 9,56(1)
	extsw 9,9
	std 9,-16(1)
	lfd 0,-16(1)
	fcfid 12,0
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 11,0(9)
	fmr 0,12
	fmr 1,11
	ld 9,48(1)
	stfd 0,0(9)
	stfd 1,8(9)
	nop
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE88:
	.size	_Qp_itoq,.-.L._Qp_itoq
	.align 2
	.globl ldexpf
	.section	".opd","aw"
	.align 3
ldexpf:
	.quad	.L.ldexpf,.TOC.@tocbase
	.previous
	.type	ldexpf, @function
.L.ldexpf:
.LFB89:
	.cfi_startproc
	stfs 1,48(1)
	mr 9,4
	stw 9,56(1)
	lfs 12,48(1)
	lfs 0,48(1)
	fcmpu 0,12,0
	bun 0,.L429
	lfs 0,48(1)
	fadds 0,0,0
	lfs 12,48(1)
	fcmpu 0,12,0
	beq 0,.L429
	lwz 9,56(1)
	cmpwi 0,9,0
	bge 0,.L430
	addis 9,2,.LC8@toc@ha
	addi 9,9,.LC8@toc@l
	lfs 0,0(9)
	b .L431
.L430:
	addis 9,2,.LC9@toc@ha
	addi 9,9,.LC9@toc@l
	lfs 0,0(9)
.L431:
	stfs 0,-16(1)
.L434:
	lwz 9,56(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L432
	lfs 12,48(1)
	lfs 0,-16(1)
	fmuls 0,12,0
	stfs 0,48(1)
.L432:
	lwz 9,56(1)
	srawi 9,9,1
	addze 9,9
	stw 9,56(1)
	lwz 9,56(1)
	cmpwi 0,9,0
	beq 0,.L436
	lfs 0,-16(1)
	fmuls 0,0,0
	stfs 0,-16(1)
	b .L434
.L436:
	nop
.L429:
	lfs 0,48(1)
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE89:
	.size	ldexpf,.-.L.ldexpf
	.align 2
	.globl ldexp
	.section	".opd","aw"
	.align 3
ldexp:
	.quad	.L.ldexp,.TOC.@tocbase
	.previous
	.type	ldexp, @function
.L.ldexp:
.LFB90:
	.cfi_startproc
	stfd 1,48(1)
	mr 9,4
	stw 9,56(1)
	lfd 12,48(1)
	lfd 0,48(1)
	fcmpu 0,12,0
	bun 0,.L438
	lfd 0,48(1)
	fadd 0,0,0
	lfd 12,48(1)
	fcmpu 0,12,0
	beq 0,.L438
	lwz 9,56(1)
	cmpwi 0,9,0
	bge 0,.L439
	addis 9,2,.LC10@toc@ha
	addi 9,9,.LC10@toc@l
	lfd 0,0(9)
	b .L440
.L439:
	addis 9,2,.LC11@toc@ha
	addi 9,9,.LC11@toc@l
	lfd 0,0(9)
.L440:
	stfd 0,-16(1)
.L443:
	lwz 9,56(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L441
	lfd 12,48(1)
	lfd 0,-16(1)
	fmul 0,12,0
	stfd 0,48(1)
.L441:
	lwz 9,56(1)
	srawi 9,9,1
	addze 9,9
	stw 9,56(1)
	lwz 9,56(1)
	cmpwi 0,9,0
	beq 0,.L445
	lfd 0,-16(1)
	fmul 0,0,0
	stfd 0,-16(1)
	b .L443
.L445:
	nop
.L438:
	lfd 0,48(1)
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE90:
	.size	ldexp,.-.L.ldexp
	.align 2
	.globl ldexpl
	.section	".opd","aw"
	.align 3
ldexpl:
	.quad	.L.ldexpl,.TOC.@tocbase
	.previous
	.type	ldexpl, @function
.L.ldexpl:
.LFB91:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-144(1)
	.cfi_def_cfa_offset 144
	.cfi_offset 65, 16
	addi 9,1,128
	stfd 1,0(9)
	stfd 2,8(9)
	mr 9,5
	stw 9,208(1)
	addi 9,1,128
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,0,0
	bun 0,.L447
	addi 9,1,128
	lfd 0,0(9)
	lfd 1,8(9)
	fmr 4,1
	fmr 3,0
	fmr 2,1
	fmr 1,0
	bl __gcc_qadd
	nop
	fmr 0,1
	fmr 1,2
	fmr 13,1
	fmr 12,0
	addi 9,1,128
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,0,12
	bne 0,$+8
	fcmpu 0,1,13
	beq 0,.L447
	lwz 9,208(1)
	cmpwi 0,9,0
	bge 0,.L448
	addis 9,2,.LC12@toc@ha
	addi 9,9,.LC12@toc@l
	lfd 0,0(9)
	lfd 1,8(9)
	b .L449
.L448:
	addis 9,2,.LC13@toc@ha
	addi 9,9,.LC13@toc@l
	lfd 0,0(9)
	lfd 1,8(9)
.L449:
	stfd 0,112(1)
	stfd 1,120(1)
.L452:
	lwz 9,208(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L450
	addi 9,1,128
	lfd 3,112(1)
	lfd 4,120(1)
	lfd 1,0(9)
	lfd 2,8(9)
	bl __gcc_qmul
	nop
	fmr 0,1
	fmr 1,2
	addi 9,1,128
	stfd 0,0(9)
	stfd 1,8(9)
.L450:
	lwz 9,208(1)
	srawi 9,9,1
	addze 9,9
	stw 9,208(1)
	lwz 9,208(1)
	cmpwi 0,9,0
	beq 0,.L454
	lfd 3,112(1)
	lfd 4,120(1)
	lfd 1,112(1)
	lfd 2,120(1)
	bl __gcc_qmul
	nop
	fmr 0,1
	fmr 1,2
	stfd 0,112(1)
	stfd 1,120(1)
	b .L452
.L454:
	nop
.L447:
	addi 9,1,128
	lfd 0,0(9)
	lfd 1,8(9)
	fmr 2,1
	fmr 1,0
	addi 1,1,144
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE91:
	.size	ldexpl,.-.L.ldexpl
	.align 2
	.globl memxor
	.section	".opd","aw"
	.align 3
memxor:
	.quad	.L.memxor,.TOC.@tocbase
	.previous
	.type	memxor, @function
.L.memxor:
.LFB92:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	std 5,64(1)
	ld 9,56(1)
	std 9,-16(1)
	ld 9,48(1)
	std 9,-8(1)
	b .L456
.L457:
	ld 9,-16(1)
	addi 10,9,1
	std 10,-16(1)
	lbz 8,0(9)
	ld 9,-8(1)
	addi 10,9,1
	std 10,-8(1)
	lbz 10,0(9)
	xor 10,8,10
	stb 10,0(9)
	ld 9,64(1)
	addi 9,9,-1
	std 9,64(1)
.L456:
	ld 9,64(1)
	cmpdi 0,9,0
	bne 0,.L457
	ld 9,48(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE92:
	.size	memxor,.-.L.memxor
	.align 2
	.globl strncat
	.section	".opd","aw"
	.align 3
strncat:
	.quad	.L.strncat,.TOC.@tocbase
	.previous
	.type	strncat, @function
.L.strncat:
.LFB93:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	std 3,176(1)
	std 4,184(1)
	std 5,192(1)
	ld 3,176(1)
	bl strlen
	mr 10,3
	ld 9,176(1)
	add 9,9,10
	std 9,112(1)
	b .L460
.L462:
	ld 9,184(1)
	addi 9,9,1
	std 9,184(1)
	ld 9,112(1)
	addi 9,9,1
	std 9,112(1)
	ld 9,192(1)
	addi 9,9,-1
	std 9,192(1)
.L460:
	ld 9,192(1)
	cmpdi 0,9,0
	beq 0,.L461
	ld 9,184(1)
	lbz 10,0(9)
	ld 9,112(1)
	stb 10,0(9)
	ld 9,112(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L462
.L461:
	ld 9,192(1)
	cmpdi 0,9,0
	bne 0,.L463
	ld 9,112(1)
	li 10,0
	stb 10,0(9)
.L463:
	ld 9,176(1)
	mr 3,9
	addi 1,1,128
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE93:
	.size	strncat,.-.L.strncat
	.align 2
	.globl strnlen
	.section	".opd","aw"
	.align 3
strnlen:
	.quad	.L.strnlen,.TOC.@tocbase
	.previous
	.type	strnlen, @function
.L.strnlen:
.LFB94:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	li 9,0
	std 9,-16(1)
	b .L466
.L471:
	nop
	ld 9,-16(1)
	addi 9,9,1
	std 9,-16(1)
.L466:
	ld 10,-16(1)
	ld 9,56(1)
	cmpld 0,10,9
	bge 0,.L467
	ld 10,48(1)
	ld 9,-16(1)
	add 9,10,9
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L471
.L467:
	ld 9,-16(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE94:
	.size	strnlen,.-.L.strnlen
	.align 2
	.globl strpbrk
	.section	".opd","aw"
	.align 3
strpbrk:
	.quad	.L.strpbrk,.TOC.@tocbase
	.previous
	.type	strpbrk, @function
.L.strpbrk:
.LFB95:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	b .L473
.L477:
	ld 9,56(1)
	std 9,-16(1)
	b .L474
.L476:
	ld 9,-16(1)
	addi 10,9,1
	std 10,-16(1)
	lbz 10,0(9)
	ld 9,48(1)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	bne 0,.L474
	ld 9,48(1)
	b .L475
.L474:
	ld 9,-16(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L476
	ld 9,48(1)
	addi 9,9,1
	std 9,48(1)
.L473:
	ld 9,48(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L477
	li 9,0
.L475:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE95:
	.size	strpbrk,.-.L.strpbrk
	.align 2
	.globl strrchr
	.section	".opd","aw"
	.align 3
strrchr:
	.quad	.L.strrchr,.TOC.@tocbase
	.previous
	.type	strrchr, @function
.L.strrchr:
.LFB96:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 10,56(1)
	li 10,0
	std 10,-16(1)
.L480:
	lbz 10,0(9)
	rlwinm 10,10,0,0xff
	lwz 8,56(1)
	cmpw 0,8,10
	bne 0,.L479
	std 9,-16(1)
.L479:
	mr 10,9
	addi 9,10,1
	lbz 10,0(10)
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	bne 0,.L480
	ld 9,-16(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE96:
	.size	strrchr,.-.L.strrchr
	.align 2
	.globl strstr
	.section	".opd","aw"
	.align 3
strstr:
	.quad	.L.strstr,.TOC.@tocbase
	.previous
	.type	strstr, @function
.L.strstr:
.LFB97:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	std 3,176(1)
	std 4,184(1)
	ld 9,176(1)
	std 9,112(1)
	ld 3,184(1)
	bl strlen
	std 3,120(1)
	ld 9,120(1)
	cmpdi 0,9,0
	bne 0,.L485
	ld 9,176(1)
	b .L484
.L487:
	ld 5,120(1)
	ld 4,184(1)
	ld 3,112(1)
	bl strncmp
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L486
	ld 9,112(1)
	b .L484
.L486:
	ld 9,112(1)
	addi 9,9,1
	std 9,112(1)
.L485:
	ld 9,184(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 4,9
	ld 3,112(1)
	bl strchr
	std 3,112(1)
	ld 9,112(1)
	cmpdi 0,9,0
	bne 0,.L487
	li 9,0
.L484:
	mr 3,9
	addi 1,1,128
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE97:
	.size	strstr,.-.L.strstr
	.align 2
	.globl copysign
	.section	".opd","aw"
	.align 3
copysign:
	.quad	.L.copysign,.TOC.@tocbase
	.previous
	.type	copysign, @function
.L.copysign:
.LFB98:
	.cfi_startproc
	stfd 1,48(1)
	stfd 2,56(1)
	lfd 12,48(1)
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bnl 0,.L489
	lfd 12,56(1)
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bgt 0,.L491
.L489:
	lfd 12,48(1)
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bng 0,.L492
	lfd 12,56(1)
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bnl 0,.L492
.L491:
	lfd 0,48(1)
	fneg 0,0
	b .L495
.L492:
	lfd 0,48(1)
.L495:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE98:
	.size	copysign,.-.L.copysign
	.align 2
	.globl memmem
	.section	".opd","aw"
	.align 3
memmem:
	.quad	.L.memmem,.TOC.@tocbase
	.previous
	.type	memmem, @function
.L.memmem:
.LFB99:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	std 3,176(1)
	std 4,184(1)
	std 5,192(1)
	std 6,200(1)
	ld 10,184(1)
	ld 9,200(1)
	subf 9,9,10
	ld 10,176(1)
	add 9,10,9
	std 9,120(1)
	ld 9,200(1)
	cmpdi 0,9,0
	bne 0,.L499
	ld 9,176(1)
	b .L500
.L499:
	ld 10,184(1)
	ld 9,200(1)
	subfc 9,9,10
	subfe 9,9,9
	neg 9,9
	rlwinm 9,9,0,0xff
	cmpdi 0,9,0
	beq 0,.L501
	li 9,0
	b .L500
.L501:
	ld 9,176(1)
	std 9,112(1)
	b .L502
.L504:
	ld 9,112(1)
	lbz 10,0(9)
	ld 9,192(1)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	bne 0,.L503
	ld 9,112(1)
	addi 10,9,1
	ld 9,192(1)
	addi 8,9,1
	ld 9,200(1)
	addi 9,9,-1
	mr 5,9
	mr 4,8
	mr 3,10
	bl memcmp
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L503
	ld 9,112(1)
	b .L500
.L503:
	ld 9,112(1)
	addi 9,9,1
	std 9,112(1)
.L502:
	ld 10,112(1)
	ld 9,120(1)
	cmpld 0,10,9
	ble 0,.L504
	li 9,0
.L500:
	mr 3,9
	addi 1,1,128
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE99:
	.size	memmem,.-.L.memmem
	.align 2
	.globl mempcpy
	.section	".opd","aw"
	.align 3
mempcpy:
	.quad	.L.mempcpy,.TOC.@tocbase
	.previous
	.type	mempcpy, @function
.L.mempcpy:
.LFB100:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 65, 16
	std 3,160(1)
	std 4,168(1)
	std 5,176(1)
	ld 5,176(1)
	ld 4,168(1)
	ld 3,160(1)
	bl memcpy
	mr 10,3
	ld 9,176(1)
	add 9,10,9
	mr 3,9
	addi 1,1,112
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE100:
	.size	mempcpy,.-.L.mempcpy
	.align 2
	.globl frexp
	.section	".opd","aw"
	.align 3
frexp:
	.quad	.L.frexp,.TOC.@tocbase
	.previous
	.type	frexp, @function
.L.frexp:
.LFB101:
	.cfi_startproc
	stfd 1,48(1)
	std 4,56(1)
	li 9,0
	stw 9,-12(1)
	li 9,0
	stw 9,-16(1)
	lfd 12,48(1)
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bnl 0,.L508
	lfd 0,48(1)
	fneg 0,0
	stfd 0,48(1)
	li 9,1
	stw 9,-16(1)
.L508:
	lfd 12,48(1)
	addis 9,2,.LC14@toc@ha
	addi 9,9,.LC14@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	cror 2,0,3
	beq 0,.L523
	b .L512
.L513:
	lwz 9,-12(1)
	addi 9,9,1
	stw 9,-12(1)
	lfd 12,48(1)
	addis 9,2,.LC11@toc@ha
	addi 9,9,.LC11@toc@l
	lfd 0,0(9)
	fdiv 0,12,0
	stfd 0,48(1)
.L512:
	lfd 12,48(1)
	addis 9,2,.LC14@toc@ha
	addi 9,9,.LC14@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	cror 2,1,2
	beq 0,.L513
	b .L514
.L523:
	lfd 12,48(1)
	addis 9,2,.LC10@toc@ha
	addi 9,9,.LC10@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bnl 0,.L514
	lfd 12,48(1)
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	beq 0,.L514
	b .L516
.L517:
	lwz 9,-12(1)
	addi 9,9,-1
	stw 9,-12(1)
	lfd 0,48(1)
	fadd 0,0,0
	stfd 0,48(1)
.L516:
	lfd 12,48(1)
	addis 9,2,.LC10@toc@ha
	addi 9,9,.LC10@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	blt 0,.L517
.L514:
	ld 9,56(1)
	lwz 10,-12(1)
	stw 10,0(9)
	lwz 9,-16(1)
	cmpwi 0,9,0
	beq 0,.L518
	lfd 0,48(1)
	fneg 0,0
	stfd 0,48(1)
.L518:
	lfd 0,48(1)
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE101:
	.size	frexp,.-.L.frexp
	.align 2
	.globl __muldi3
	.section	".opd","aw"
	.align 3
__muldi3:
	.quad	.L.__muldi3,.TOC.@tocbase
	.previous
	.type	__muldi3, @function
.L.__muldi3:
.LFB102:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	li 9,0
	std 9,-16(1)
	ld 9,48(1)
	std 9,-8(1)
	b .L525
.L527:
	ld 9,-8(1)
	rldicl 9,9,0,63
	cmpdi 0,9,0
	beq 0,.L526
	ld 10,-16(1)
	ld 9,56(1)
	add 9,10,9
	std 9,-16(1)
.L526:
	ld 9,56(1)
	sldi 9,9,1
	std 9,56(1)
	ld 9,-8(1)
	srdi 9,9,1
	std 9,-8(1)
.L525:
	ld 9,-8(1)
	cmpdi 0,9,0
	bne 0,.L527
	ld 9,-16(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE102:
	.size	__muldi3,.-.L.__muldi3
	.align 2
	.globl udivmodsi4
	.section	".opd","aw"
	.align 3
udivmodsi4:
	.quad	.L.udivmodsi4,.TOC.@tocbase
	.previous
	.type	udivmodsi4, @function
.L.udivmodsi4:
.LFB103:
	.cfi_startproc
	mr 9,3
	mr 10,4
	std 5,64(1)
	stw 9,48(1)
	mr 9,10
	stw 9,56(1)
	li 9,1
	stw 9,-16(1)
	li 9,0
	stw 9,-12(1)
	b .L530
.L532:
	lwz 9,56(1)
	slwi 9,9,1
	stw 9,56(1)
	lwz 9,-16(1)
	slwi 9,9,1
	stw 9,-16(1)
.L530:
	lwz 10,56(1)
	lwz 9,48(1)
	cmplw 0,10,9
	bge 0,.L533
	lwz 9,-16(1)
	cmpwi 0,9,0
	beq 0,.L533
	lwz 9,56(1)
	cmpwi 0,9,0
	bge 0,.L532
	b .L533
.L535:
	lwz 10,48(1)
	lwz 9,56(1)
	cmplw 0,10,9
	blt 0,.L534
	lwz 10,48(1)
	lwz 9,56(1)
	subf 9,9,10
	stw 9,48(1)
	lwz 10,-12(1)
	lwz 9,-16(1)
	or 9,10,9
	stw 9,-12(1)
.L534:
	lwz 9,-16(1)
	srwi 9,9,1
	stw 9,-16(1)
	lwz 9,56(1)
	srwi 9,9,1
	stw 9,56(1)
.L533:
	lwz 9,-16(1)
	cmpwi 0,9,0
	bne 0,.L535
	ld 9,64(1)
	cmpdi 0,9,0
	beq 0,.L536
	lwz 9,48(1)
	b .L537
.L536:
	lwz 9,-12(1)
.L537:
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE103:
	.size	udivmodsi4,.-.L.udivmodsi4
	.align 2
	.globl __clrsbqi2
	.section	".opd","aw"
	.align 3
__clrsbqi2:
	.quad	.L.__clrsbqi2,.TOC.@tocbase
	.previous
	.type	__clrsbqi2, @function
.L.__clrsbqi2:
.LFB104:
	.cfi_startproc
	mr 9,3
	stb 9,48(1)
	lbz 9,48(1)
	cmpwi 0,9,0
	bne 0,.L539
	li 9,7
	b .L540
.L539:
	lbz 9,48(1)
	slwi 9,9,8
	cntlzw 9,9
	stw 9,-16(1)
	lwz 9,-16(1)
	addi 9,9,-1
.L540:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2,.-.L.__clrsbqi2
	.align 2
	.globl __clrsbdi2
	.section	".opd","aw"
	.align 3
__clrsbdi2:
	.quad	.L.__clrsbdi2,.TOC.@tocbase
	.previous
	.type	__clrsbdi2, @function
.L.__clrsbdi2:
.LFB105:
	.cfi_startproc
	std 3,48(1)
	ld 9,48(1)
	cmpdi 0,9,0
	bge 0,.L542
	ld 9,48(1)
	not 9,9
	std 9,48(1)
.L542:
	ld 9,48(1)
	cmpdi 0,9,0
	bne 0,.L543
	li 9,63
	b .L544
.L543:
	ld 9,48(1)
	cntlzd 9,9
	stw 9,-16(1)
	lwz 9,-16(1)
	addi 9,9,-1
.L544:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2,.-.L.__clrsbdi2
	.align 2
	.globl __mulsi3
	.section	".opd","aw"
	.align 3
__mulsi3:
	.quad	.L.__mulsi3,.TOC.@tocbase
	.previous
	.type	__mulsi3, @function
.L.__mulsi3:
.LFB106:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 9,48(1)
	mr 9,10
	stw 9,56(1)
	li 9,0
	stw 9,-16(1)
	b .L546
.L548:
	lwz 9,48(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L547
	lwz 10,-16(1)
	lwz 9,56(1)
	add 9,10,9
	stw 9,-16(1)
.L547:
	lwz 9,48(1)
	srwi 9,9,1
	stw 9,48(1)
	lwz 9,56(1)
	slwi 9,9,1
	stw 9,56(1)
.L546:
	lwz 9,48(1)
	cmpwi 0,9,0
	bne 0,.L548
	lwz 9,-16(1)
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE106:
	.size	__mulsi3,.-.L.__mulsi3
	.align 2
	.globl __cmovd
	.section	".opd","aw"
	.align 3
__cmovd:
	.quad	.L.__cmovd,.TOC.@tocbase
	.previous
	.type	__cmovd, @function
.L.__cmovd:
.LFB107:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	mr 9,5
	stw 9,64(1)
	lwz 9,64(1)
	srwi 9,9,3
	stw 9,-24(1)
	lwz 9,64(1)
	rlwinm 9,9,0,0,28
	stw 9,-28(1)
	ld 9,48(1)
	std 9,-16(1)
	ld 9,56(1)
	std 9,-8(1)
	ld 10,-16(1)
	ld 9,-8(1)
	cmpld 0,10,9
	blt 0,.L551
	lwz 9,64(1)
	ld 10,-8(1)
	add 9,10,9
	ld 10,-16(1)
	cmpld 0,10,9
	ble 0,.L558
.L551:
	li 9,0
	stw 9,-32(1)
	b .L553
.L554:
	lwz 9,-32(1)
	sldi 9,9,3
	ld 10,56(1)
	add 10,10,9
	lwz 9,-32(1)
	sldi 9,9,3
	ld 8,48(1)
	add 9,8,9
	ld 10,0(10)
	std 10,0(9)
	lwz 9,-32(1)
	addi 9,9,1
	stw 9,-32(1)
.L553:
	lwz 10,-32(1)
	lwz 9,-24(1)
	cmplw 0,10,9
	blt 0,.L554
	b .L555
.L556:
	lwz 9,-28(1)
	ld 10,-8(1)
	add 10,10,9
	lwz 9,-28(1)
	ld 8,-16(1)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,-28(1)
	addi 9,9,1
	stw 9,-28(1)
.L555:
	lwz 10,64(1)
	lwz 9,-28(1)
	cmplw 0,10,9
	bgt 0,.L556
	b .L557
.L559:
	lwz 9,64(1)
	ld 10,-8(1)
	add 10,10,9
	lwz 9,64(1)
	ld 8,-16(1)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
.L558:
	lwz 9,64(1)
	addi 10,9,-1
	stw 10,64(1)
	cmpwi 0,9,0
	bne 0,.L559
	nop
.L557:
	nop
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE107:
	.size	__cmovd,.-.L.__cmovd
	.align 2
	.globl __cmovh
	.section	".opd","aw"
	.align 3
__cmovh:
	.quad	.L.__cmovh,.TOC.@tocbase
	.previous
	.type	__cmovh, @function
.L.__cmovh:
.LFB108:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	mr 9,5
	stw 9,64(1)
	lwz 9,64(1)
	srwi 9,9,1
	stw 9,-28(1)
	ld 9,48(1)
	std 9,-24(1)
	ld 9,56(1)
	std 9,-16(1)
	ld 10,-24(1)
	ld 9,-16(1)
	cmpld 0,10,9
	blt 0,.L561
	lwz 9,64(1)
	ld 10,-16(1)
	add 9,10,9
	ld 10,-24(1)
	cmpld 0,10,9
	ble 0,.L567
.L561:
	li 9,0
	stw 9,-32(1)
	b .L563
.L564:
	lwz 9,-32(1)
	sldi 9,9,1
	ld 10,56(1)
	add 10,10,9
	lwz 9,-32(1)
	sldi 9,9,1
	ld 8,48(1)
	add 9,8,9
	lhz 10,0(10)
	sth 10,0(9)
	lwz 9,-32(1)
	addi 9,9,1
	stw 9,-32(1)
.L563:
	lwz 10,-32(1)
	lwz 9,-28(1)
	cmplw 0,10,9
	blt 0,.L564
	lwz 9,64(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L566
	lwz 9,64(1)
	addi 9,9,-1
	rldicl 9,9,0,32
	ld 10,-16(1)
	add 10,10,9
	lwz 9,64(1)
	addi 9,9,-1
	rldicl 9,9,0,32
	ld 8,-24(1)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
	b .L566
.L568:
	lwz 9,64(1)
	ld 10,-16(1)
	add 10,10,9
	lwz 9,64(1)
	ld 8,-24(1)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
.L567:
	lwz 9,64(1)
	addi 10,9,-1
	stw 10,64(1)
	cmpwi 0,9,0
	bne 0,.L568
	nop
.L566:
	nop
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE108:
	.size	__cmovh,.-.L.__cmovh
	.align 2
	.globl __cmovw
	.section	".opd","aw"
	.align 3
__cmovw:
	.quad	.L.__cmovw,.TOC.@tocbase
	.previous
	.type	__cmovw, @function
.L.__cmovw:
.LFB109:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	mr 9,5
	stw 9,64(1)
	lwz 9,64(1)
	srwi 9,9,2
	stw 9,-24(1)
	lwz 9,64(1)
	rlwinm 9,9,0,0,29
	stw 9,-28(1)
	ld 9,48(1)
	std 9,-16(1)
	ld 9,56(1)
	std 9,-8(1)
	ld 10,-16(1)
	ld 9,-8(1)
	cmpld 0,10,9
	blt 0,.L570
	lwz 9,64(1)
	ld 10,-8(1)
	add 9,10,9
	ld 10,-16(1)
	cmpld 0,10,9
	ble 0,.L577
.L570:
	li 9,0
	stw 9,-32(1)
	b .L572
.L573:
	lwz 9,-32(1)
	sldi 9,9,2
	ld 10,56(1)
	add 10,10,9
	lwz 9,-32(1)
	sldi 9,9,2
	ld 8,48(1)
	add 9,8,9
	lwz 10,0(10)
	stw 10,0(9)
	lwz 9,-32(1)
	addi 9,9,1
	stw 9,-32(1)
.L572:
	lwz 10,-32(1)
	lwz 9,-24(1)
	cmplw 0,10,9
	blt 0,.L573
	b .L574
.L575:
	lwz 9,-28(1)
	ld 10,-8(1)
	add 10,10,9
	lwz 9,-28(1)
	ld 8,-16(1)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,-28(1)
	addi 9,9,1
	stw 9,-28(1)
.L574:
	lwz 10,64(1)
	lwz 9,-28(1)
	cmplw 0,10,9
	bgt 0,.L575
	b .L576
.L578:
	lwz 9,64(1)
	ld 10,-8(1)
	add 10,10,9
	lwz 9,64(1)
	ld 8,-16(1)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
.L577:
	lwz 9,64(1)
	addi 10,9,-1
	stw 10,64(1)
	cmpwi 0,9,0
	bne 0,.L578
	nop
.L576:
	nop
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE109:
	.size	__cmovw,.-.L.__cmovw
	.align 2
	.globl __modi
	.section	".opd","aw"
	.align 3
__modi:
	.quad	.L.__modi,.TOC.@tocbase
	.previous
	.type	__modi, @function
.L.__modi:
.LFB110:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 9,48(1)
	mr 9,10
	stw 9,56(1)
	lwz 9,48(1)
	lwz 10,56(1)
	divw 8,9,10
	lwz 10,56(1)
	mullw 10,8,10
	subf 9,10,9
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE110:
	.size	__modi,.-.L.__modi
	.align 2
	.globl __uitod
	.section	".opd","aw"
	.align 3
__uitod:
	.quad	.L.__uitod,.TOC.@tocbase
	.previous
	.type	__uitod, @function
.L.__uitod:
.LFB111:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	rldicl 9,9,0,32
	std 9,-16(1)
	lfd 0,-16(1)
	fcfid 0,0
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE111:
	.size	__uitod,.-.L.__uitod
	.align 2
	.globl __uitof
	.section	".opd","aw"
	.align 3
__uitof:
	.quad	.L.__uitof,.TOC.@tocbase
	.previous
	.type	__uitof, @function
.L.__uitof:
.LFB112:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	rldicl 10,9,0,32
	sradi 8,10,53
	rldicl 9,10,0,53
	addi 8,8,1
	addi 9,9,2047
	cmpldi 0,8,2
	or 9,9,10
	rldicr 9,9,0,52
	bge 0,.L584
	mr 9,10
.L584:
	std 9,-16(1)
	lfd 0,-16(1)
	fcfid 12,0
	frsp 0,12
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE112:
	.size	__uitof,.-.L.__uitof
	.align 2
	.globl __ulltod
	.section	".opd","aw"
	.align 3
__ulltod:
	.quad	.L.__ulltod,.TOC.@tocbase
	.previous
	.type	__ulltod, @function
.L.__ulltod:
.LFB113:
	.cfi_startproc
	std 3,48(1)
	ld 9,48(1)
	cmpdi 0,9,0
	blt 0,.L588
	lfd 0,48(1)
	fcfid 0,0
	b .L589
.L588:
	ld 9,48(1)
	rldicl 9,9,0,63
	ld 10,48(1)
	srdi 10,10,1
	or 9,9,10
	std 9,-16(1)
	lfd 0,-16(1)
	fcfid 0,0
	fadd 0,0,0
.L589:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE113:
	.size	__ulltod,.-.L.__ulltod
	.align 2
	.globl __ulltof
	.section	".opd","aw"
	.align 3
__ulltof:
	.quad	.L.__ulltof,.TOC.@tocbase
	.previous
	.type	__ulltof, @function
.L.__ulltof:
.LFB114:
	.cfi_startproc
	std 3,48(1)
	ld 9,48(1)
	cmpdi 0,9,0
	blt 0,.L592
	ld 10,48(1)
	sradi 8,10,53
	rldicl 9,10,0,53
	addi 8,8,1
	addi 9,9,2047
	cmpldi 0,8,2
	or 9,9,10
	rldicr 9,9,0,52
	bge 0,.L593
	mr 9,10
.L593:
	std 9,-16(1)
	lfd 0,-16(1)
	fcfid 12,0
	frsp 0,12
	b .L595
.L592:
	ld 9,48(1)
	rldicl 10,9,0,63
	ld 9,48(1)
	srdi 9,9,1
	or 10,10,9
	sradi 8,10,53
	rldicl 9,10,0,53
	addi 8,8,1
	addi 9,9,2047
	cmpldi 0,8,2
	or 9,9,10
	rldicr 9,9,0,52
	bge 0,.L594
	mr 9,10
.L594:
	std 9,-16(1)
	lfd 0,-16(1)
	fcfid 12,0
	frsp 0,12
	fadds 0,0,0
.L595:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE114:
	.size	__ulltof,.-.L.__ulltof
	.align 2
	.globl __umodi
	.section	".opd","aw"
	.align 3
__umodi:
	.quad	.L.__umodi,.TOC.@tocbase
	.previous
	.type	__umodi, @function
.L.__umodi:
.LFB115:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 9,48(1)
	mr 9,10
	stw 9,56(1)
	lwz 9,48(1)
	lwz 10,56(1)
	divwu 8,9,10
	lwz 10,56(1)
	mullw 10,8,10
	subf 9,10,9
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE115:
	.size	__umodi,.-.L.__umodi
	.align 2
	.globl __clzhi2
	.section	".opd","aw"
	.align 3
__clzhi2:
	.quad	.L.__clzhi2,.TOC.@tocbase
	.previous
	.type	__clzhi2, @function
.L.__clzhi2:
.LFB116:
	.cfi_startproc
	mr 9,3
	sth 9,48(1)
	li 9,0
	stw 9,-16(1)
	b .L599
.L602:
	lhz 10,48(1)
	lwz 9,-16(1)
	subfic 9,9,15
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	bne 0,.L604
	lwz 9,-16(1)
	addi 9,9,1
	stw 9,-16(1)
.L599:
	lwz 9,-16(1)
	cmpwi 0,9,15
	ble 0,.L602
	b .L601
.L604:
	nop
.L601:
	lwz 9,-16(1)
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE116:
	.size	__clzhi2,.-.L.__clzhi2
	.align 2
	.globl __ctzhi2
	.section	".opd","aw"
	.align 3
__ctzhi2:
	.quad	.L.__ctzhi2,.TOC.@tocbase
	.previous
	.type	__ctzhi2, @function
.L.__ctzhi2:
.LFB117:
	.cfi_startproc
	mr 9,3
	sth 9,48(1)
	li 9,0
	stw 9,-16(1)
	b .L606
.L609:
	lhz 10,48(1)
	lwz 9,-16(1)
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	bne 0,.L611
	lwz 9,-16(1)
	addi 9,9,1
	stw 9,-16(1)
.L606:
	lwz 9,-16(1)
	cmpwi 0,9,15
	ble 0,.L609
	b .L608
.L611:
	nop
.L608:
	lwz 9,-16(1)
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE117:
	.size	__ctzhi2,.-.L.__ctzhi2
	.align 2
	.globl __fixunssfsi
	.section	".opd","aw"
	.align 3
__fixunssfsi:
	.quad	.L.__fixunssfsi,.TOC.@tocbase
	.previous
	.type	__fixunssfsi, @function
.L.__fixunssfsi:
.LFB118:
	.cfi_startproc
	stfs 1,48(1)
	lfs 12,48(1)
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfs 0,0(9)
	fcmpu 0,12,0
	cror 2,0,3
	beq 0,.L617
	lfs 12,48(1)
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfs 0,0(9)
	fsubs 0,12,0
	fctidz 0,0
	stfd 0,-16(1)
	ld 9,-16(1)
	addis 9,9,0x1
	addi 9,9,-32768
	b .L615
.L617:
	lfs 0,48(1)
	fctidz 0,0
	stfd 0,-16(1)
	ld 9,-16(1)
.L615:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE118:
	.size	__fixunssfsi,.-.L.__fixunssfsi
	.align 2
	.globl __parityhi2
	.section	".opd","aw"
	.align 3
__parityhi2:
	.quad	.L.__parityhi2,.TOC.@tocbase
	.previous
	.type	__parityhi2, @function
.L.__parityhi2:
.LFB119:
	.cfi_startproc
	mr 9,3
	sth 9,48(1)
	li 9,0
	stw 9,-12(1)
	li 9,0
	stw 9,-16(1)
	b .L619
.L621:
	lhz 10,48(1)
	lwz 9,-16(1)
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L620
	lwz 9,-12(1)
	addi 9,9,1
	stw 9,-12(1)
.L620:
	lwz 9,-16(1)
	addi 9,9,1
	stw 9,-16(1)
.L619:
	lwz 9,-16(1)
	cmpwi 0,9,15
	ble 0,.L621
	lwz 9,-12(1)
	rlwinm 9,9,0,31,31
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE119:
	.size	__parityhi2,.-.L.__parityhi2
	.align 2
	.globl __popcounthi2
	.section	".opd","aw"
	.align 3
__popcounthi2:
	.quad	.L.__popcounthi2,.TOC.@tocbase
	.previous
	.type	__popcounthi2, @function
.L.__popcounthi2:
.LFB120:
	.cfi_startproc
	mr 9,3
	sth 9,48(1)
	li 9,0
	stw 9,-12(1)
	li 9,0
	stw 9,-16(1)
	b .L624
.L626:
	lhz 10,48(1)
	lwz 9,-16(1)
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L625
	lwz 9,-12(1)
	addi 9,9,1
	stw 9,-12(1)
.L625:
	lwz 9,-16(1)
	addi 9,9,1
	stw 9,-16(1)
.L624:
	lwz 9,-16(1)
	cmpwi 0,9,15
	ble 0,.L626
	lwz 9,-12(1)
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE120:
	.size	__popcounthi2,.-.L.__popcounthi2
	.align 2
	.globl __mulsi3_iq2000
	.section	".opd","aw"
	.align 3
__mulsi3_iq2000:
	.quad	.L.__mulsi3_iq2000,.TOC.@tocbase
	.previous
	.type	__mulsi3_iq2000, @function
.L.__mulsi3_iq2000:
.LFB121:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 9,48(1)
	mr 9,10
	stw 9,56(1)
	li 9,0
	stw 9,-16(1)
	b .L629
.L631:
	lwz 9,48(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L630
	lwz 10,-16(1)
	lwz 9,56(1)
	add 9,10,9
	stw 9,-16(1)
.L630:
	lwz 9,48(1)
	srwi 9,9,1
	stw 9,48(1)
	lwz 9,56(1)
	slwi 9,9,1
	stw 9,56(1)
.L629:
	lwz 9,48(1)
	cmpwi 0,9,0
	bne 0,.L631
	lwz 9,-16(1)
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000,.-.L.__mulsi3_iq2000
	.align 2
	.globl __mulsi3_lm32
	.section	".opd","aw"
	.align 3
__mulsi3_lm32:
	.quad	.L.__mulsi3_lm32,.TOC.@tocbase
	.previous
	.type	__mulsi3_lm32, @function
.L.__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 9,48(1)
	mr 9,10
	stw 9,56(1)
	li 9,0
	stw 9,-16(1)
	lwz 9,48(1)
	cmpwi 0,9,0
	bne 0,.L636
	li 9,0
	b .L635
.L638:
	lwz 9,56(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L637
	lwz 10,-16(1)
	lwz 9,48(1)
	add 9,10,9
	stw 9,-16(1)
.L637:
	lwz 9,48(1)
	slwi 9,9,1
	stw 9,48(1)
	lwz 9,56(1)
	srwi 9,9,1
	stw 9,56(1)
.L636:
	lwz 9,56(1)
	cmpwi 0,9,0
	bne 0,.L638
	lwz 9,-16(1)
.L635:
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32,.-.L.__mulsi3_lm32
	.align 2
	.globl __udivmodsi4
	.section	".opd","aw"
	.align 3
__udivmodsi4:
	.quad	.L.__udivmodsi4,.TOC.@tocbase
	.previous
	.type	__udivmodsi4, @function
.L.__udivmodsi4:
.LFB123:
	.cfi_startproc
	mr 9,3
	mr 8,4
	mr 10,5
	stw 9,48(1)
	mr 9,8
	stw 9,56(1)
	mr 9,10
	stw 9,64(1)
	li 9,1
	stw 9,-16(1)
	li 9,0
	stw 9,-12(1)
	b .L640
.L642:
	lwz 9,56(1)
	slwi 9,9,1
	stw 9,56(1)
	lwz 9,-16(1)
	slwi 9,9,1
	stw 9,-16(1)
.L640:
	lwz 10,56(1)
	lwz 9,48(1)
	cmplw 0,10,9
	bge 0,.L643
	lwz 9,-16(1)
	cmpwi 0,9,0
	beq 0,.L643
	lwz 9,56(1)
	cmpwi 0,9,0
	bge 0,.L642
	b .L643
.L645:
	lwz 10,48(1)
	lwz 9,56(1)
	cmplw 0,10,9
	blt 0,.L644
	lwz 10,48(1)
	lwz 9,56(1)
	subf 9,9,10
	stw 9,48(1)
	lwz 10,-12(1)
	lwz 9,-16(1)
	or 9,10,9
	stw 9,-12(1)
.L644:
	lwz 9,-16(1)
	srwi 9,9,1
	stw 9,-16(1)
	lwz 9,56(1)
	srwi 9,9,1
	stw 9,56(1)
.L643:
	lwz 9,-16(1)
	cmpwi 0,9,0
	bne 0,.L645
	lwz 9,64(1)
	cmpwi 0,9,0
	beq 0,.L646
	lwz 9,48(1)
	b .L647
.L646:
	lwz 9,-12(1)
.L647:
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4,.-.L.__udivmodsi4
	.align 2
	.globl __mspabi_cmpf
	.section	".opd","aw"
	.align 3
__mspabi_cmpf:
	.quad	.L.__mspabi_cmpf,.TOC.@tocbase
	.previous
	.type	__mspabi_cmpf, @function
.L.__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	stfs 1,48(1)
	stfs 2,56(1)
	lfs 12,48(1)
	lfs 0,56(1)
	fcmpu 0,12,0
	bnl 0,.L656
	li 9,-1
	b .L651
.L656:
	lfs 12,48(1)
	lfs 0,56(1)
	fcmpu 0,12,0
	bng 0,.L657
	li 9,1
	b .L651
.L657:
	li 9,0
.L651:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf,.-.L.__mspabi_cmpf
	.align 2
	.globl __mspabi_cmpd
	.section	".opd","aw"
	.align 3
__mspabi_cmpd:
	.quad	.L.__mspabi_cmpd,.TOC.@tocbase
	.previous
	.type	__mspabi_cmpd, @function
.L.__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	stfd 1,48(1)
	stfd 2,56(1)
	lfd 12,48(1)
	lfd 0,56(1)
	fcmpu 0,12,0
	bnl 0,.L666
	li 9,-1
	b .L661
.L666:
	lfd 12,48(1)
	lfd 0,56(1)
	fcmpu 0,12,0
	bng 0,.L667
	li 9,1
	b .L661
.L667:
	li 9,0
.L661:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd,.-.L.__mspabi_cmpd
	.align 2
	.globl __mspabi_mpysll
	.section	".opd","aw"
	.align 3
__mspabi_mpysll:
	.quad	.L.__mspabi_mpysll,.TOC.@tocbase
	.previous
	.type	__mspabi_mpysll, @function
.L.__mspabi_mpysll:
.LFB126:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	ld 10,48(1)
	ld 9,56(1)
	mulld 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE126:
	.size	__mspabi_mpysll,.-.L.__mspabi_mpysll
	.align 2
	.globl __mspabi_mpyull
	.section	".opd","aw"
	.align 3
__mspabi_mpyull:
	.quad	.L.__mspabi_mpyull,.TOC.@tocbase
	.previous
	.type	__mspabi_mpyull, @function
.L.__mspabi_mpyull:
.LFB127:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	ld 10,48(1)
	ld 9,56(1)
	mulld 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE127:
	.size	__mspabi_mpyull,.-.L.__mspabi_mpyull
	.align 2
	.globl __mulhi3
	.section	".opd","aw"
	.align 3
__mulhi3:
	.quad	.L.__mulhi3,.TOC.@tocbase
	.previous
	.type	__mulhi3, @function
.L.__mulhi3:
.LFB128:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 9,48(1)
	mr 9,10
	stw 9,56(1)
	li 9,0
	stw 9,-12(1)
	li 9,0
	stw 9,-8(1)
	lwz 9,56(1)
	cmpwi 0,9,0
	bge 0,.L673
	lwz 9,56(1)
	neg 9,9
	stw 9,56(1)
	li 9,1
	stw 9,-12(1)
.L673:
	li 9,0
	stb 9,-16(1)
	b .L674
.L677:
	lwz 9,56(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L675
	lwz 10,-8(1)
	lwz 9,48(1)
	add 9,10,9
	stw 9,-8(1)
.L675:
	lwz 9,48(1)
	slwi 9,9,1
	stw 9,48(1)
	lwz 9,56(1)
	srawi 9,9,1
	stw 9,56(1)
	lbz 9,-16(1)
	addi 9,9,1
	stb 9,-16(1)
.L674:
	lwz 9,56(1)
	cmpwi 0,9,0
	beq 0,.L676
	lbz 9,-16(1)
	cmplwi 0,9,31
	ble 0,.L677
.L676:
	lwz 9,-12(1)
	cmpwi 0,9,0
	beq 0,.L678
	lwz 9,-8(1)
	neg 9,9
	b .L680
.L678:
	lwz 9,-8(1)
.L680:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE128:
	.size	__mulhi3,.-.L.__mulhi3
	.align 2
	.globl __divsi3
	.section	".opd","aw"
	.align 3
__divsi3:
	.quad	.L.__divsi3,.TOC.@tocbase
	.previous
	.type	__divsi3, @function
.L.__divsi3:
.LFB129:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	std 3,176(1)
	std 4,184(1)
	li 9,0
	stw 9,112(1)
	ld 9,176(1)
	cmpdi 0,9,0
	bge 0,.L682
	ld 9,176(1)
	neg 9,9
	std 9,176(1)
	lwz 9,112(1)
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 9,9,0,0xff
	stw 9,112(1)
.L682:
	ld 9,184(1)
	cmpdi 0,9,0
	bge 0,.L683
	ld 9,184(1)
	neg 9,9
	std 9,184(1)
	lwz 9,112(1)
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 9,9,0,0xff
	stw 9,112(1)
.L683:
	ld 9,176(1)
	mr 8,9
	ld 9,184(1)
	rldicl 10,9,0,32
	rldicl 9,8,0,32
	li 5,0
	mr 4,10
	mr 3,9
	bl __udivmodsi4
	mr 9,3
	rldicl 9,9,0,32
	std 9,120(1)
	lwz 9,112(1)
	cmpwi 0,9,0
	beq 0,.L684
	ld 9,120(1)
	neg 9,9
	std 9,120(1)
.L684:
	ld 9,120(1)
	mr 3,9
	addi 1,1,128
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE129:
	.size	__divsi3,.-.L.__divsi3
	.align 2
	.globl __modsi3
	.section	".opd","aw"
	.align 3
__modsi3:
	.quad	.L.__modsi3,.TOC.@tocbase
	.previous
	.type	__modsi3, @function
.L.__modsi3:
.LFB130:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	std 3,176(1)
	std 4,184(1)
	li 9,0
	stw 9,112(1)
	ld 9,176(1)
	cmpdi 0,9,0
	bge 0,.L687
	ld 9,176(1)
	neg 9,9
	std 9,176(1)
	li 9,1
	stw 9,112(1)
.L687:
	ld 9,184(1)
	cmpdi 0,9,0
	bge 0,.L688
	ld 9,184(1)
	neg 9,9
	std 9,184(1)
.L688:
	ld 9,176(1)
	mr 8,9
	ld 9,184(1)
	rldicl 10,9,0,32
	rldicl 9,8,0,32
	li 5,1
	mr 4,10
	mr 3,9
	bl __udivmodsi4
	mr 9,3
	rldicl 9,9,0,32
	std 9,120(1)
	lwz 9,112(1)
	cmpwi 0,9,0
	beq 0,.L689
	ld 9,120(1)
	neg 9,9
	std 9,120(1)
.L689:
	ld 9,120(1)
	mr 3,9
	addi 1,1,128
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE130:
	.size	__modsi3,.-.L.__modsi3
	.align 2
	.globl __udivmodhi4
	.section	".opd","aw"
	.align 3
__udivmodhi4:
	.quad	.L.__udivmodhi4,.TOC.@tocbase
	.previous
	.type	__udivmodhi4, @function
.L.__udivmodhi4:
.LFB131:
	.cfi_startproc
	mr 9,3
	mr 8,4
	mr 10,5
	sth 9,48(1)
	mr 9,8
	sth 9,56(1)
	mr 9,10
	stw 9,64(1)
	li 9,1
	sth 9,-16(1)
	li 9,0
	sth 9,-14(1)
	b .L692
.L694:
	lhz 9,56(1)
	slwi 9,9,1
	sth 9,56(1)
	lhz 9,-16(1)
	slwi 9,9,1
	sth 9,-16(1)
.L692:
	lhz 10,56(1)
	lhz 9,48(1)
	cmplw 0,10,9
	bge 0,.L695
	lhz 9,-16(1)
	cmpwi 0,9,0
	beq 0,.L695
	lhz 9,56(1)
	extsh 9,9
	cmpwi 0,9,0
	bge 0,.L694
	b .L695
.L697:
	lhz 10,48(1)
	lhz 9,56(1)
	cmplw 0,10,9
	blt 0,.L696
	lhz 10,48(1)
	lhz 9,56(1)
	subf 9,9,10
	sth 9,48(1)
	lhz 10,-14(1)
	lhz 9,-16(1)
	or 9,10,9
	sth 9,-14(1)
.L696:
	lhz 9,-16(1)
	srwi 9,9,1
	sth 9,-16(1)
	lhz 9,56(1)
	srwi 9,9,1
	sth 9,56(1)
.L695:
	lhz 9,-16(1)
	cmpwi 0,9,0
	bne 0,.L697
	lwz 9,64(1)
	cmpwi 0,9,0
	beq 0,.L698
	lhz 9,48(1)
	b .L699
.L698:
	lhz 9,-14(1)
.L699:
	rlwinm 9,9,0,0xffff
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4,.-.L.__udivmodhi4
	.align 2
	.globl __udivmodsi4_libgcc
	.section	".opd","aw"
	.align 3
__udivmodsi4_libgcc:
	.quad	.L.__udivmodsi4_libgcc,.TOC.@tocbase
	.previous
	.type	__udivmodsi4_libgcc, @function
.L.__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	mr 9,5
	stw 9,64(1)
	li 9,1
	std 9,-16(1)
	li 9,0
	std 9,-8(1)
	b .L701
.L703:
	ld 9,56(1)
	sldi 9,9,1
	std 9,56(1)
	ld 9,-16(1)
	sldi 9,9,1
	std 9,-16(1)
.L701:
	ld 10,56(1)
	ld 9,48(1)
	cmpld 0,10,9
	bge 0,.L704
	ld 9,-16(1)
	cmpdi 0,9,0
	beq 0,.L704
	ld 9,56(1)
	rlwinm 9,9,0,0,0
	cmpdi 0,9,0
	beq 0,.L703
	b .L704
.L706:
	ld 10,48(1)
	ld 9,56(1)
	cmpld 0,10,9
	blt 0,.L705
	ld 10,48(1)
	ld 9,56(1)
	subf 9,9,10
	std 9,48(1)
	ld 10,-8(1)
	ld 9,-16(1)
	or 9,10,9
	std 9,-8(1)
.L705:
	ld 9,-16(1)
	srdi 9,9,1
	std 9,-16(1)
	ld 9,56(1)
	srdi 9,9,1
	std 9,56(1)
.L704:
	ld 9,-16(1)
	cmpdi 0,9,0
	bne 0,.L706
	lwz 9,64(1)
	cmpwi 0,9,0
	beq 0,.L707
	ld 9,48(1)
	b .L708
.L707:
	ld 9,-8(1)
.L708:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc,.-.L.__udivmodsi4_libgcc
	.align 2
	.globl __ashldi3
	.section	".opd","aw"
	.align 3
__ashldi3:
	.quad	.L.__ashldi3,.TOC.@tocbase
	.previous
	.type	__ashldi3, @function
.L.__ashldi3:
.LFB133:
	.cfi_startproc
	std 3,48(1)
	mr 9,4
	stw 9,56(1)
	li 9,32
	stw 9,-32(1)
	ld 9,48(1)
	std 9,-24(1)
	lwz 10,56(1)
	lwz 9,-32(1)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L710
	li 9,0
	stw 9,-12(1)
	lwz 10,-20(1)
	lwz 8,56(1)
	lwz 9,-32(1)
	subf 9,9,8
	slw 9,10,9
	stw 9,-16(1)
	b .L711
.L710:
	lwz 9,56(1)
	cmpwi 0,9,0
	bne 0,.L712
	ld 9,48(1)
	b .L714
.L712:
	lwz 10,-20(1)
	lwz 9,56(1)
	slw 9,10,9
	stw 9,-12(1)
	lwz 9,-24(1)
	mr 10,9
	lwz 9,56(1)
	slw 10,10,9
	lwz 8,-20(1)
	lwz 7,-32(1)
	lwz 9,56(1)
	subf 9,9,7
	srw 9,8,9
	or 9,10,9
	stw 9,-16(1)
.L711:
	ld 9,-16(1)
.L714:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE133:
	.size	__ashldi3,.-.L.__ashldi3
	.align 2
	.globl __ashlti3
	.section	".opd","aw"
	.align 3
__ashlti3:
	.quad	.L.__ashlti3,.TOC.@tocbase
	.previous
	.type	__ashlti3, @function
.L.__ashlti3:
.LFB134:
	.cfi_startproc
	addi 9,1,-16
	std 3,0(9)
	std 4,8(9)
	mr 9,5
	stw 9,64(1)
	li 9,64
	stw 9,-64(1)
	addi 9,1,-16
	ld 10,0(9)
	ld 11,8(9)
	addi 9,1,-48
	std 10,0(9)
	std 11,8(9)
	lwz 10,64(1)
	lwz 9,-64(1)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L716
	li 9,0
	std 9,-24(1)
	ld 10,-40(1)
	lwz 8,64(1)
	lwz 9,-64(1)
	subf 9,9,8
	sld 9,10,9
	std 9,-32(1)
	b .L717
.L716:
	lwz 9,64(1)
	cmpwi 0,9,0
	bne 0,.L718
	addi 9,1,-16
	ld 10,0(9)
	ld 11,8(9)
	b .L720
.L718:
	ld 10,-40(1)
	lwz 9,64(1)
	sld 9,10,9
	std 9,-24(1)
	ld 9,-48(1)
	mr 10,9
	lwz 9,64(1)
	sld 10,10,9
	ld 8,-40(1)
	lwz 7,-64(1)
	lwz 9,64(1)
	subf 9,9,7
	srd 9,8,9
	or 9,10,9
	std 9,-32(1)
.L717:
	addi 9,1,-32
	ld 10,0(9)
	ld 11,8(9)
.L720:
	mr 3,10
	mr 4,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE134:
	.size	__ashlti3,.-.L.__ashlti3
	.align 2
	.globl __ashrdi3
	.section	".opd","aw"
	.align 3
__ashrdi3:
	.quad	.L.__ashrdi3,.TOC.@tocbase
	.previous
	.type	__ashrdi3, @function
.L.__ashrdi3:
.LFB135:
	.cfi_startproc
	std 3,48(1)
	mr 9,4
	stw 9,56(1)
	li 9,32
	stw 9,-32(1)
	ld 9,48(1)
	std 9,-24(1)
	lwz 10,56(1)
	lwz 9,-32(1)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L722
	lwz 10,-24(1)
	lwz 9,-32(1)
	addi 9,9,-1
	sraw 9,10,9
	stw 9,-16(1)
	lwz 10,-24(1)
	lwz 8,56(1)
	lwz 9,-32(1)
	subf 9,9,8
	sraw 9,10,9
	stw 9,-12(1)
	b .L723
.L722:
	lwz 9,56(1)
	cmpwi 0,9,0
	bne 0,.L724
	ld 9,48(1)
	b .L726
.L724:
	lwz 10,-24(1)
	lwz 9,56(1)
	sraw 9,10,9
	stw 9,-16(1)
	lwz 9,-24(1)
	mr 8,9
	lwz 10,-32(1)
	lwz 9,56(1)
	subf 9,9,10
	slw 10,8,9
	lwz 8,-20(1)
	lwz 9,56(1)
	srw 9,8,9
	or 9,10,9
	stw 9,-12(1)
.L723:
	ld 9,-16(1)
.L726:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE135:
	.size	__ashrdi3,.-.L.__ashrdi3
	.align 2
	.globl __ashrti3
	.section	".opd","aw"
	.align 3
__ashrti3:
	.quad	.L.__ashrti3,.TOC.@tocbase
	.previous
	.type	__ashrti3, @function
.L.__ashrti3:
.LFB136:
	.cfi_startproc
	addi 9,1,-16
	std 3,0(9)
	std 4,8(9)
	mr 9,5
	stw 9,64(1)
	li 9,64
	stw 9,-64(1)
	addi 9,1,-16
	ld 10,0(9)
	ld 11,8(9)
	addi 9,1,-48
	std 10,0(9)
	std 11,8(9)
	lwz 10,64(1)
	lwz 9,-64(1)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L728
	ld 10,-48(1)
	lwz 9,-64(1)
	addi 9,9,-1
	srad 9,10,9
	std 9,-32(1)
	ld 10,-48(1)
	lwz 8,64(1)
	lwz 9,-64(1)
	subf 9,9,8
	srad 9,10,9
	std 9,-24(1)
	b .L729
.L728:
	lwz 9,64(1)
	cmpwi 0,9,0
	bne 0,.L730
	addi 9,1,-16
	ld 10,0(9)
	ld 11,8(9)
	b .L732
.L730:
	ld 10,-48(1)
	lwz 9,64(1)
	srad 9,10,9
	std 9,-32(1)
	ld 9,-48(1)
	mr 8,9
	lwz 10,-64(1)
	lwz 9,64(1)
	subf 9,9,10
	sld 10,8,9
	ld 8,-40(1)
	lwz 9,64(1)
	srd 9,8,9
	or 9,10,9
	std 9,-24(1)
.L729:
	addi 9,1,-32
	ld 10,0(9)
	ld 11,8(9)
.L732:
	mr 3,10
	mr 4,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE136:
	.size	__ashrti3,.-.L.__ashrti3
	.align 2
	.globl __bswapdi2
	.section	".opd","aw"
	.align 3
__bswapdi2:
	.quad	.L.__bswapdi2,.TOC.@tocbase
	.previous
	.type	__bswapdi2, @function
.L.__bswapdi2:
.LFB137:
	.cfi_startproc
	std 3,48(1)
	ld 9,48(1)
	srdi 10,9,56
	ld 9,48(1)
	srdi 9,9,40
	rlwinm 9,9,0,16,23
	or 10,10,9
	ld 9,48(1)
	srdi 9,9,24
	rlwinm 9,9,0,8,15
	or 10,10,9
	ld 9,48(1)
	srdi 9,9,8
	rlwinm 9,9,0,0,7
	or 10,10,9
	ld 9,48(1)
	sldi 9,9,8
	sldi 9,9,24
	rldicr 9,9,0,7
	srdi 9,9,24
	or 10,10,9
	ld 9,48(1)
	sldi 9,9,24
	sldi 9,9,16
	rldicr 9,9,0,7
	srdi 9,9,16
	or 10,10,9
	ld 9,48(1)
	sldi 9,9,40
	sldi 9,9,8
	rldicr 9,9,0,7
	srdi 9,9,8
	or 10,10,9
	ld 9,48(1)
	sldi 9,9,56
	or 9,10,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE137:
	.size	__bswapdi2,.-.L.__bswapdi2
	.align 2
	.globl __bswapsi2
	.section	".opd","aw"
	.align 3
__bswapsi2:
	.quad	.L.__bswapsi2,.TOC.@tocbase
	.previous
	.type	__bswapsi2, @function
.L.__bswapsi2:
.LFB138:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	srwi 10,9,24
	lwz 9,48(1)
	srwi 9,9,8
	rlwinm 9,9,0,16,23
	or 10,10,9
	lwz 9,48(1)
	slwi 9,9,8
	rlwinm 9,9,0,8,15
	or 10,10,9
	lwz 9,48(1)
	slwi 9,9,24
	or 9,10,9
	rldicl 9,9,0,32
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE138:
	.size	__bswapsi2,.-.L.__bswapsi2
	.align 2
	.globl __clzsi2
	.section	".opd","aw"
	.align 3
__clzsi2:
	.quad	.L.__clzsi2,.TOC.@tocbase
	.previous
	.type	__clzsi2, @function
.L.__clzsi2:
.LFB139:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	stw 9,-16(1)
	lwz 10,-16(1)
	lis 9,0x1
	cmplw 0,10,9
	bge 0,.L738
	li 9,16
	b .L739
.L738:
	li 9,0
.L739:
	stw 9,-12(1)
	lwz 9,-12(1)
	subfic 9,9,16
	lwz 10,-16(1)
	srw 9,10,9
	stw 9,-16(1)
	lwz 9,-12(1)
	stw 9,-8(1)
	lwz 9,-16(1)
	rlwinm 9,9,0,16,23
	cmpwi 0,9,0
	bne 0,.L740
	li 9,8
	b .L741
.L740:
	li 9,0
.L741:
	stw 9,-12(1)
	lwz 9,-12(1)
	subfic 9,9,8
	lwz 10,-16(1)
	srw 9,10,9
	stw 9,-16(1)
	lwz 9,-12(1)
	lwz 10,-8(1)
	add 9,10,9
	stw 9,-8(1)
	lwz 9,-16(1)
	rlwinm 9,9,0,24,27
	cmpwi 0,9,0
	bne 0,.L742
	li 9,4
	b .L743
.L742:
	li 9,0
.L743:
	stw 9,-12(1)
	lwz 9,-12(1)
	subfic 9,9,4
	lwz 10,-16(1)
	srw 9,10,9
	stw 9,-16(1)
	lwz 9,-12(1)
	lwz 10,-8(1)
	add 9,10,9
	stw 9,-8(1)
	lwz 9,-16(1)
	rlwinm 9,9,0,28,29
	cmpwi 0,9,0
	bne 0,.L744
	li 9,2
	b .L745
.L744:
	li 9,0
.L745:
	stw 9,-12(1)
	lwz 9,-12(1)
	subfic 9,9,2
	lwz 10,-16(1)
	srw 9,10,9
	stw 9,-16(1)
	lwz 9,-12(1)
	lwz 10,-8(1)
	add 9,10,9
	stw 9,-8(1)
	lwz 9,-16(1)
	rlwinm 9,9,0,30,30
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 9,9,0,0xff
	mr 10,9
	lwz 9,-16(1)
	subfic 9,9,2
	mullw 10,10,9
	lwz 9,-8(1)
	add 9,10,9
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE139:
	.size	__clzsi2,.-.L.__clzsi2
	.align 2
	.globl __clzti2
	.section	".opd","aw"
	.align 3
__clzti2:
	.quad	.L.__clzti2,.TOC.@tocbase
	.previous
	.type	__clzti2, @function
.L.__clzti2:
.LFB140:
	.cfi_startproc
	addi 9,1,-16
	std 3,0(9)
	std 4,8(9)
	addi 9,1,-16
	ld 10,0(9)
	ld 11,8(9)
	addi 9,1,-32
	std 10,0(9)
	std 11,8(9)
	ld 9,-32(1)
	cntlzd 9,9
	srdi 9,9,6
	rlwinm 9,9,0,0xff
	neg 9,9
	extsw 9,9
	std 9,-48(1)
	ld 10,-32(1)
	ld 9,-48(1)
	not 9,9
	and 9,10,9
	mr 8,9
	ld 10,-24(1)
	ld 9,-48(1)
	and 9,10,9
	or 9,8,9
	cntlzd 9,9
	mr 10,9
	ld 9,-48(1)
	rlwinm 9,9,0,25,25
	add 9,10,9
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE140:
	.size	__clzti2,.-.L.__clzti2
	.align 2
	.globl __cmpdi2
	.section	".opd","aw"
	.align 3
__cmpdi2:
	.quad	.L.__cmpdi2,.TOC.@tocbase
	.previous
	.type	__cmpdi2, @function
.L.__cmpdi2:
.LFB141:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	ld 9,48(1)
	std 9,-16(1)
	ld 9,56(1)
	std 9,-8(1)
	lwz 10,-16(1)
	lwz 9,-8(1)
	cmpw 0,10,9
	bge 0,.L750
	li 9,0
	b .L755
.L750:
	lwz 10,-16(1)
	lwz 9,-8(1)
	cmpw 0,10,9
	ble 0,.L752
	li 9,2
	b .L755
.L752:
	lwz 10,-12(1)
	lwz 9,-4(1)
	cmplw 0,10,9
	bge 0,.L753
	li 9,0
	b .L755
.L753:
	lwz 10,-12(1)
	lwz 9,-4(1)
	cmplw 0,10,9
	ble 0,.L754
	li 9,2
	b .L755
.L754:
	li 9,1
.L755:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE141:
	.size	__cmpdi2,.-.L.__cmpdi2
	.align 2
	.globl __aeabi_lcmp
	.section	".opd","aw"
	.align 3
__aeabi_lcmp:
	.quad	.L.__aeabi_lcmp,.TOC.@tocbase
	.previous
	.type	__aeabi_lcmp, @function
.L.__aeabi_lcmp:
.LFB142:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 65, 16
	std 3,160(1)
	std 4,168(1)
	ld 4,168(1)
	ld 3,160(1)
	bl __cmpdi2
	mr 9,3
	addi 9,9,-1
	extsw 9,9
	mr 3,9
	addi 1,1,112
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp,.-.L.__aeabi_lcmp
	.align 2
	.globl __cmpti2
	.section	".opd","aw"
	.align 3
__cmpti2:
	.quad	.L.__cmpti2,.TOC.@tocbase
	.previous
	.type	__cmpti2, @function
.L.__cmpti2:
.LFB143:
	.cfi_startproc
	addi 9,1,-32
	std 3,0(9)
	std 4,8(9)
	addi 9,1,-16
	std 5,0(9)
	std 6,8(9)
	addi 9,1,-32
	ld 10,0(9)
	ld 11,8(9)
	std 10,-64(1)
	std 11,-56(1)
	addi 9,1,-16
	ld 10,0(9)
	ld 11,8(9)
	addi 9,1,-48
	std 10,0(9)
	std 11,8(9)
	ld 10,-64(1)
	ld 9,-48(1)
	cmpd 0,10,9
	bge 0,.L759
	li 9,0
	b .L764
.L759:
	ld 10,-64(1)
	ld 9,-48(1)
	cmpd 0,10,9
	ble 0,.L761
	li 9,2
	b .L764
.L761:
	ld 10,-56(1)
	ld 9,-40(1)
	cmpld 0,10,9
	bge 0,.L762
	li 9,0
	b .L764
.L762:
	ld 10,-56(1)
	ld 9,-40(1)
	cmpld 0,10,9
	ble 0,.L763
	li 9,2
	b .L764
.L763:
	li 9,1
.L764:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE143:
	.size	__cmpti2,.-.L.__cmpti2
	.align 2
	.globl __ctzsi2
	.section	".opd","aw"
	.align 3
__ctzsi2:
	.quad	.L.__ctzsi2,.TOC.@tocbase
	.previous
	.type	__ctzsi2, @function
.L.__ctzsi2:
.LFB144:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	stw 9,-16(1)
	lwz 9,-16(1)
	rlwinm 9,9,0,16,31
	cmpwi 0,9,0
	bne 0,.L766
	li 9,16
	b .L767
.L766:
	li 9,0
.L767:
	stw 9,-12(1)
	lwz 10,-16(1)
	lwz 9,-12(1)
	srw 9,10,9
	stw 9,-16(1)
	lwz 9,-12(1)
	stw 9,-8(1)
	lwz 9,-16(1)
	rlwinm 9,9,0,24,31
	cmpwi 0,9,0
	bne 0,.L768
	li 9,8
	b .L769
.L768:
	li 9,0
.L769:
	stw 9,-12(1)
	lwz 10,-16(1)
	lwz 9,-12(1)
	srw 9,10,9
	stw 9,-16(1)
	lwz 9,-12(1)
	lwz 10,-8(1)
	add 9,10,9
	stw 9,-8(1)
	lwz 9,-16(1)
	rlwinm 9,9,0,28,31
	cmpwi 0,9,0
	bne 0,.L770
	li 9,4
	b .L771
.L770:
	li 9,0
.L771:
	stw 9,-12(1)
	lwz 10,-16(1)
	lwz 9,-12(1)
	srw 9,10,9
	stw 9,-16(1)
	lwz 9,-12(1)
	lwz 10,-8(1)
	add 9,10,9
	stw 9,-8(1)
	lwz 9,-16(1)
	rlwinm 9,9,0,30,31
	cmpwi 0,9,0
	bne 0,.L772
	li 9,2
	b .L773
.L772:
	li 9,0
.L773:
	stw 9,-12(1)
	lwz 10,-16(1)
	lwz 9,-12(1)
	srw 9,10,9
	stw 9,-16(1)
	lwz 9,-16(1)
	rlwinm 9,9,0,30,31
	stw 9,-16(1)
	lwz 9,-12(1)
	lwz 10,-8(1)
	add 9,10,9
	stw 9,-8(1)
	lwz 9,-16(1)
	not 9,9
	rlwinm 10,9,0,31,31
	lwz 9,-16(1)
	srwi 9,9,1
	subfic 9,9,2
	neg 10,10
	and 10,10,9
	lwz 9,-8(1)
	add 9,10,9
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE144:
	.size	__ctzsi2,.-.L.__ctzsi2
	.align 2
	.globl __ctzti2
	.section	".opd","aw"
	.align 3
__ctzti2:
	.quad	.L.__ctzti2,.TOC.@tocbase
	.previous
	.type	__ctzti2, @function
.L.__ctzti2:
.LFB145:
	.cfi_startproc
	addi 9,1,-16
	std 3,0(9)
	std 4,8(9)
	addi 9,1,-16
	ld 10,0(9)
	ld 11,8(9)
	addi 9,1,-32
	std 10,0(9)
	std 11,8(9)
	ld 9,-24(1)
	cntlzd 9,9
	srdi 9,9,6
	rlwinm 9,9,0,0xff
	neg 9,9
	extsw 9,9
	std 9,-48(1)
	ld 10,-32(1)
	ld 9,-48(1)
	and 9,10,9
	mr 8,9
	ld 10,-24(1)
	ld 9,-48(1)
	not 9,9
	and 9,10,9
	or 9,8,9
	neg 10,9
	and 9,9,10
	cntlzd 9,9
	subfic 9,9,63
	mr 10,9
	ld 9,-48(1)
	rlwinm 9,9,0,25,25
	add 9,10,9
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE145:
	.size	__ctzti2,.-.L.__ctzti2
	.align 2
	.globl __ffsti2
	.section	".opd","aw"
	.align 3
__ffsti2:
	.quad	.L.__ffsti2,.TOC.@tocbase
	.previous
	.type	__ffsti2, @function
.L.__ffsti2:
.LFB146:
	.cfi_startproc
	addi 9,1,-16
	std 3,0(9)
	std 4,8(9)
	addi 9,1,-16
	ld 10,0(9)
	ld 11,8(9)
	std 10,-32(1)
	std 11,-24(1)
	ld 9,-24(1)
	cmpdi 0,9,0
	bne 0,.L778
	ld 9,-32(1)
	cmpdi 0,9,0
	bne 0,.L779
	li 9,0
	b .L781
.L779:
	ld 9,-32(1)
	neg 10,9
	and 9,9,10
	cntlzd 9,9
	subfic 9,9,63
	addi 9,9,65
	b .L781
.L778:
	ld 9,-24(1)
	neg 10,9
	and 9,9,10
	cntlzd 9,9
	subfic 9,9,63
	addi 9,9,1
.L781:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE146:
	.size	__ffsti2,.-.L.__ffsti2
	.align 2
	.globl __lshrdi3
	.section	".opd","aw"
	.align 3
__lshrdi3:
	.quad	.L.__lshrdi3,.TOC.@tocbase
	.previous
	.type	__lshrdi3, @function
.L.__lshrdi3:
.LFB147:
	.cfi_startproc
	std 3,48(1)
	mr 9,4
	stw 9,56(1)
	li 9,32
	stw 9,-32(1)
	ld 9,48(1)
	std 9,-24(1)
	lwz 10,56(1)
	lwz 9,-32(1)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L783
	li 9,0
	stw 9,-16(1)
	lwz 10,-24(1)
	lwz 8,56(1)
	lwz 9,-32(1)
	subf 9,9,8
	srw 9,10,9
	stw 9,-12(1)
	b .L784
.L783:
	lwz 9,56(1)
	cmpwi 0,9,0
	bne 0,.L785
	ld 9,48(1)
	b .L787
.L785:
	lwz 10,-24(1)
	lwz 9,56(1)
	srw 9,10,9
	stw 9,-16(1)
	lwz 10,-24(1)
	lwz 8,-32(1)
	lwz 9,56(1)
	subf 9,9,8
	slw 10,10,9
	lwz 8,-20(1)
	lwz 9,56(1)
	srw 9,8,9
	or 9,10,9
	stw 9,-12(1)
.L784:
	ld 9,-16(1)
.L787:
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE147:
	.size	__lshrdi3,.-.L.__lshrdi3
	.align 2
	.globl __lshrti3
	.section	".opd","aw"
	.align 3
__lshrti3:
	.quad	.L.__lshrti3,.TOC.@tocbase
	.previous
	.type	__lshrti3, @function
.L.__lshrti3:
.LFB148:
	.cfi_startproc
	addi 9,1,-16
	std 3,0(9)
	std 4,8(9)
	mr 9,5
	stw 9,64(1)
	li 9,64
	stw 9,-64(1)
	addi 9,1,-16
	ld 10,0(9)
	ld 11,8(9)
	addi 9,1,-48
	std 10,0(9)
	std 11,8(9)
	lwz 10,64(1)
	lwz 9,-64(1)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L789
	li 9,0
	std 9,-32(1)
	ld 10,-48(1)
	lwz 8,64(1)
	lwz 9,-64(1)
	subf 9,9,8
	srd 9,10,9
	std 9,-24(1)
	b .L790
.L789:
	lwz 9,64(1)
	cmpwi 0,9,0
	bne 0,.L791
	addi 9,1,-16
	ld 10,0(9)
	ld 11,8(9)
	b .L793
.L791:
	ld 10,-48(1)
	lwz 9,64(1)
	srd 9,10,9
	std 9,-32(1)
	ld 10,-48(1)
	lwz 8,-64(1)
	lwz 9,64(1)
	subf 9,9,8
	sld 10,10,9
	ld 8,-40(1)
	lwz 9,64(1)
	srd 9,8,9
	or 9,10,9
	std 9,-24(1)
.L790:
	addi 9,1,-32
	ld 10,0(9)
	ld 11,8(9)
.L793:
	mr 3,10
	mr 4,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE148:
	.size	__lshrti3,.-.L.__lshrti3
	.align 2
	.globl __muldsi3
	.section	".opd","aw"
	.align 3
__muldsi3:
	.quad	.L.__muldsi3,.TOC.@tocbase
	.previous
	.type	__muldsi3, @function
.L.__muldsi3:
.LFB149:
	.cfi_startproc
	mr 9,3
	mr 10,4
	stw 9,48(1)
	mr 9,10
	stw 9,56(1)
	li 9,16
	stw 9,-32(1)
	li 10,-1
	lwz 9,-32(1)
	srw 9,10,9
	stw 9,-28(1)
	lwz 10,48(1)
	lwz 9,-28(1)
	and 10,10,9
	lwz 8,56(1)
	lwz 9,-28(1)
	and 9,8,9
	mullw 9,10,9
	stw 9,-12(1)
	lwz 10,-12(1)
	lwz 9,-32(1)
	srw 9,10,9
	stw 9,-24(1)
	lwz 10,-12(1)
	lwz 9,-28(1)
	and 9,10,9
	stw 9,-12(1)
	lwz 10,48(1)
	lwz 9,-32(1)
	srw 10,10,9
	lwz 8,56(1)
	lwz 9,-28(1)
	and 9,8,9
	mullw 9,10,9
	lwz 10,-24(1)
	add 9,10,9
	stw 9,-24(1)
	lwz 10,-12(1)
	lwz 8,-24(1)
	lwz 9,-28(1)
	and 8,8,9
	lwz 9,-32(1)
	slw 9,8,9
	add 9,10,9
	stw 9,-12(1)
	lwz 10,-24(1)
	lwz 9,-32(1)
	srw 9,10,9
	stw 9,-16(1)
	lwz 10,-12(1)
	lwz 9,-32(1)
	srw 9,10,9
	stw 9,-24(1)
	lwz 10,-12(1)
	lwz 9,-28(1)
	and 9,10,9
	stw 9,-12(1)
	lwz 10,56(1)
	lwz 9,-32(1)
	srw 10,10,9
	lwz 8,48(1)
	lwz 9,-28(1)
	and 9,8,9
	mullw 9,10,9
	lwz 10,-24(1)
	add 9,10,9
	stw 9,-24(1)
	lwz 10,-12(1)
	lwz 8,-24(1)
	lwz 9,-28(1)
	and 8,8,9
	lwz 9,-32(1)
	slw 9,8,9
	add 9,10,9
	stw 9,-12(1)
	lwz 9,-16(1)
	mr 8,9
	lwz 10,-24(1)
	lwz 9,-32(1)
	srw 9,10,9
	add 9,8,9
	stw 9,-16(1)
	lwz 9,-16(1)
	mr 7,9
	lwz 10,48(1)
	lwz 9,-32(1)
	srw 10,10,9
	lwz 8,56(1)
	lwz 9,-32(1)
	srw 9,8,9
	mullw 9,10,9
	add 9,7,9
	stw 9,-16(1)
	ld 9,-16(1)
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE149:
	.size	__muldsi3,.-.L.__muldsi3
	.align 2
	.globl __muldi3_compiler_rt
	.section	".opd","aw"
	.align 3
__muldi3_compiler_rt:
	.quad	.L.__muldi3_compiler_rt,.TOC.@tocbase
	.previous
	.type	__muldi3_compiler_rt, @function
.L.__muldi3_compiler_rt:
.LFB150:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-144(1)
	.cfi_def_cfa_offset 144
	.cfi_offset 65, 16
	std 3,192(1)
	std 4,200(1)
	ld 9,192(1)
	std 9,112(1)
	ld 9,200(1)
	std 9,120(1)
	lwz 9,116(1)
	lwz 10,124(1)
	rldicl 10,10,0,32
	rldicl 9,9,0,32
	mr 4,10
	mr 3,9
	bl __muldsi3
	mr 9,3
	std 9,128(1)
	lwz 9,128(1)
	mr 8,9
	lwz 9,112(1)
	mr 10,9
	lwz 9,124(1)
	mullw 10,10,9
	lwz 9,116(1)
	lwz 7,120(1)
	mullw 9,9,7
	add 9,10,9
	add 9,8,9
	stw 9,128(1)
	ld 9,128(1)
	mr 3,9
	addi 1,1,144
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt,.-.L.__muldi3_compiler_rt
	.align 2
	.globl __mulddi3
	.section	".opd","aw"
	.align 3
__mulddi3:
	.quad	.L.__mulddi3,.TOC.@tocbase
	.previous
	.type	__mulddi3, @function
.L.__mulddi3:
.LFB151:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	li 9,32
	stw 9,-48(1)
	li 10,-1
	lwz 9,-48(1)
	srd 9,10,9
	std 9,-40(1)
	ld 10,48(1)
	ld 9,-40(1)
	and 10,10,9
	ld 8,56(1)
	ld 9,-40(1)
	and 9,8,9
	mulld 9,10,9
	std 9,-8(1)
	ld 10,-8(1)
	lwz 9,-48(1)
	srd 9,10,9
	std 9,-32(1)
	ld 10,-8(1)
	ld 9,-40(1)
	and 9,10,9
	std 9,-8(1)
	ld 10,48(1)
	lwz 9,-48(1)
	srd 10,10,9
	ld 8,56(1)
	ld 9,-40(1)
	and 9,8,9
	mulld 9,10,9
	ld 10,-32(1)
	add 9,10,9
	std 9,-32(1)
	ld 10,-8(1)
	ld 8,-32(1)
	ld 9,-40(1)
	and 8,8,9
	lwz 9,-48(1)
	sld 9,8,9
	add 9,10,9
	std 9,-8(1)
	ld 10,-32(1)
	lwz 9,-48(1)
	srd 9,10,9
	std 9,-16(1)
	ld 10,-8(1)
	lwz 9,-48(1)
	srd 9,10,9
	std 9,-32(1)
	ld 10,-8(1)
	ld 9,-40(1)
	and 9,10,9
	std 9,-8(1)
	ld 10,56(1)
	lwz 9,-48(1)
	srd 10,10,9
	ld 8,48(1)
	ld 9,-40(1)
	and 9,8,9
	mulld 9,10,9
	ld 10,-32(1)
	add 9,10,9
	std 9,-32(1)
	ld 10,-8(1)
	ld 8,-32(1)
	ld 9,-40(1)
	and 8,8,9
	lwz 9,-48(1)
	sld 9,8,9
	add 9,10,9
	std 9,-8(1)
	ld 9,-16(1)
	mr 8,9
	ld 10,-32(1)
	lwz 9,-48(1)
	srd 9,10,9
	add 9,8,9
	std 9,-16(1)
	ld 9,-16(1)
	mr 7,9
	ld 10,48(1)
	lwz 9,-48(1)
	srd 10,10,9
	ld 8,56(1)
	lwz 9,-48(1)
	srd 9,8,9
	mulld 9,10,9
	add 9,7,9
	std 9,-16(1)
	addi 9,1,-16
	ld 10,0(9)
	ld 11,8(9)
	mr 3,10
	mr 4,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE151:
	.size	__mulddi3,.-.L.__mulddi3
	.align 2
	.globl __multi3
	.section	".opd","aw"
	.align 3
__multi3:
	.quad	.L.__multi3,.TOC.@tocbase
	.previous
	.type	__multi3, @function
.L.__multi3:
.LFB152:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-192(1)
	.cfi_def_cfa_offset 192
	.cfi_offset 65, 16
	addi 9,1,160
	std 3,0(9)
	std 4,8(9)
	addi 9,1,176
	std 5,0(9)
	std 6,8(9)
	addi 9,1,160
	ld 10,0(9)
	ld 11,8(9)
	std 10,112(1)
	std 11,120(1)
	addi 9,1,176
	ld 10,0(9)
	ld 11,8(9)
	addi 9,1,128
	std 10,0(9)
	std 11,8(9)
	ld 9,120(1)
	ld 10,136(1)
	mr 4,10
	mr 3,9
	bl __mulddi3
	mr 11,4
	mr 10,3
	addi 9,1,144
	std 10,0(9)
	std 11,8(9)
	ld 9,144(1)
	mr 8,9
	ld 9,112(1)
	mr 10,9
	ld 9,136(1)
	mulld 10,10,9
	ld 9,120(1)
	ld 7,128(1)
	mulld 9,9,7
	add 9,10,9
	add 9,8,9
	std 9,144(1)
	addi 9,1,144
	ld 10,0(9)
	ld 11,8(9)
	mr 3,10
	mr 4,11
	addi 1,1,192
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE152:
	.size	__multi3,.-.L.__multi3
	.align 2
	.globl __negdi2
	.section	".opd","aw"
	.align 3
__negdi2:
	.quad	.L.__negdi2,.TOC.@tocbase
	.previous
	.type	__negdi2, @function
.L.__negdi2:
.LFB153:
	.cfi_startproc
	std 3,48(1)
	ld 9,48(1)
	neg 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE153:
	.size	__negdi2,.-.L.__negdi2
	.align 2
	.globl __negti2
	.section	".opd","aw"
	.align 3
__negti2:
	.quad	.L.__negti2,.TOC.@tocbase
	.previous
	.type	__negti2, @function
.L.__negti2:
.LFB154:
	.cfi_startproc
	std 3,-16(1)
	std 4,-8(1)
	ld 10,-16(1)
	ld 11,-8(1)
	subfic 9,11,0
	subfze 8,10
	mr 11,9
	mr 10,8
	mr 3,10
	mr 4,11
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE154:
	.size	__negti2,.-.L.__negti2
	.align 2
	.globl __paritydi2
	.section	".opd","aw"
	.align 3
__paritydi2:
	.quad	.L.__paritydi2,.TOC.@tocbase
	.previous
	.type	__paritydi2, @function
.L.__paritydi2:
.LFB155:
	.cfi_startproc
	std 3,48(1)
	ld 9,48(1)
	std 9,-8(1)
	lwz 9,-8(1)
	mr 10,9
	lwz 9,-4(1)
	xor 9,10,9
	stw 9,-16(1)
	lwz 9,-16(1)
	srwi 9,9,16
	lwz 10,-16(1)
	xor 9,10,9
	stw 9,-16(1)
	lwz 9,-16(1)
	srwi 9,9,8
	lwz 10,-16(1)
	xor 9,10,9
	stw 9,-16(1)
	lwz 9,-16(1)
	srwi 9,9,4
	lwz 10,-16(1)
	xor 9,10,9
	stw 9,-16(1)
	lwz 9,-16(1)
	rlwinm 9,9,0,28,31
	li 10,27030
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE155:
	.size	__paritydi2,.-.L.__paritydi2
	.align 2
	.globl __parityti2
	.section	".opd","aw"
	.align 3
__parityti2:
	.quad	.L.__parityti2,.TOC.@tocbase
	.previous
	.type	__parityti2, @function
.L.__parityti2:
.LFB156:
	.cfi_startproc
	addi 9,1,-16
	std 3,0(9)
	std 4,8(9)
	addi 9,1,-16
	ld 10,0(9)
	ld 11,8(9)
	addi 9,1,-48
	std 10,0(9)
	std 11,8(9)
	ld 9,-48(1)
	mr 10,9
	ld 9,-40(1)
	xor 9,10,9
	std 9,-32(1)
	lwz 9,-32(1)
	mr 10,9
	lwz 9,-28(1)
	xor 9,10,9
	stw 9,-64(1)
	lwz 9,-64(1)
	srwi 9,9,16
	lwz 10,-64(1)
	xor 9,10,9
	stw 9,-64(1)
	lwz 9,-64(1)
	srwi 9,9,8
	lwz 10,-64(1)
	xor 9,10,9
	stw 9,-64(1)
	lwz 9,-64(1)
	srwi 9,9,4
	lwz 10,-64(1)
	xor 9,10,9
	stw 9,-64(1)
	lwz 9,-64(1)
	rlwinm 9,9,0,28,31
	li 10,27030
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE156:
	.size	__parityti2,.-.L.__parityti2
	.align 2
	.globl __paritysi2
	.section	".opd","aw"
	.align 3
__paritysi2:
	.quad	.L.__paritysi2,.TOC.@tocbase
	.previous
	.type	__paritysi2, @function
.L.__paritysi2:
.LFB157:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	stw 9,-16(1)
	lwz 9,-16(1)
	srwi 9,9,16
	lwz 10,-16(1)
	xor 9,10,9
	stw 9,-16(1)
	lwz 9,-16(1)
	srwi 9,9,8
	lwz 10,-16(1)
	xor 9,10,9
	stw 9,-16(1)
	lwz 9,-16(1)
	srwi 9,9,4
	lwz 10,-16(1)
	xor 9,10,9
	stw 9,-16(1)
	lwz 9,-16(1)
	rlwinm 9,9,0,28,31
	li 10,27030
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE157:
	.size	__paritysi2,.-.L.__paritysi2
	.align 2
	.globl __popcountdi2
	.section	".opd","aw"
	.align 3
__popcountdi2:
	.quad	.L.__popcountdi2,.TOC.@tocbase
	.previous
	.type	__popcountdi2, @function
.L.__popcountdi2:
.LFB158:
	.cfi_startproc
	std 3,48(1)
	ld 9,48(1)
	std 9,-16(1)
	ld 9,-16(1)
	srdi 10,9,1
	lis 9,0x5555
	ori 9,9,0x5555
	rldimi 9,9,32,0
	and 9,10,9
	ld 10,-16(1)
	subf 9,9,10
	std 9,-16(1)
	ld 9,-16(1)
	srdi 10,9,2
	lis 9,0x3333
	ori 9,9,0x3333
	rldimi 9,9,32,0
	and 10,10,9
	ld 8,-16(1)
	lis 9,0x3333
	ori 9,9,0x3333
	rldimi 9,9,32,0
	and 9,8,9
	add 9,10,9
	std 9,-16(1)
	ld 9,-16(1)
	srdi 10,9,4
	ld 9,-16(1)
	add 10,10,9
	lis 9,0xf0f
	ori 9,9,0xf0f
	rldimi 9,9,32,0
	and 9,10,9
	std 9,-16(1)
	ld 9,-16(1)
	mr 10,9
	ld 9,-16(1)
	srdi 9,9,32
	add 9,10,9
	stw 9,-8(1)
	lwz 9,-8(1)
	srwi 9,9,16
	lwz 10,-8(1)
	add 9,10,9
	stw 9,-8(1)
	lwz 9,-8(1)
	srwi 10,9,8
	lwz 9,-8(1)
	add 9,10,9
	rlwinm 9,9,0,25,31
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE158:
	.size	__popcountdi2,.-.L.__popcountdi2
	.align 2
	.globl __popcountsi2
	.section	".opd","aw"
	.align 3
__popcountsi2:
	.quad	.L.__popcountsi2,.TOC.@tocbase
	.previous
	.type	__popcountsi2, @function
.L.__popcountsi2:
.LFB159:
	.cfi_startproc
	mr 9,3
	stw 9,48(1)
	lwz 9,48(1)
	stw 9,-16(1)
	lwz 9,-16(1)
	srwi 10,9,1
	lis 9,0x5555
	ori 9,9,0x5555
	and 9,10,9
	lwz 10,-16(1)
	subf 9,9,10
	stw 9,-16(1)
	lwz 9,-16(1)
	srwi 10,9,2
	lis 9,0x3333
	ori 9,9,0x3333
	and 10,10,9
	lwz 8,-16(1)
	lis 9,0x3333
	ori 9,9,0x3333
	and 9,8,9
	add 9,10,9
	stw 9,-16(1)
	lwz 9,-16(1)
	srwi 10,9,4
	lwz 9,-16(1)
	add 10,10,9
	lis 9,0xf0f
	ori 9,9,0xf0f
	and 9,10,9
	stw 9,-16(1)
	lwz 9,-16(1)
	srwi 9,9,16
	lwz 10,-16(1)
	add 9,10,9
	stw 9,-16(1)
	lwz 9,-16(1)
	srwi 10,9,8
	lwz 9,-16(1)
	add 9,10,9
	rlwinm 9,9,0,26,31
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE159:
	.size	__popcountsi2,.-.L.__popcountsi2
	.align 2
	.globl __popcountti2
	.section	".opd","aw"
	.align 3
__popcountti2:
	.quad	.L.__popcountti2,.TOC.@tocbase
	.previous
	.type	__popcountti2, @function
.L.__popcountti2:
.LFB160:
	.cfi_startproc
	std 16,-128(1)
	std 17,-120(1)
	std 18,-112(1)
	std 19,-104(1)
	std 20,-96(1)
	std 21,-88(1)
	std 22,-80(1)
	std 23,-72(1)
	std 24,-64(1)
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 30,-16(1)
	std 31,-8(1)
	.cfi_offset 16, -128
	.cfi_offset 17, -120
	.cfi_offset 18, -112
	.cfi_offset 19, -104
	.cfi_offset 20, -96
	.cfi_offset 21, -88
	.cfi_offset 22, -80
	.cfi_offset 23, -72
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	addi 5,1,-144
	std 3,0(5)
	std 4,8(5)
	addi 5,1,-144
	ld 4,0(5)
	ld 5,8(5)
	std 4,-176(1)
	std 5,-168(1)
	ld 5,-176(1)
	sldi 5,5,63
	ld 4,-168(1)
	srdi 7,4,1
	or 7,5,7
	ld 5,-176(1)
	srdi 6,5,1
	lis 5,0x5555
	ori 5,5,0x5555
	rldimi 5,5,32,0
	mr 18,5
	lis 5,0x5555
	ori 5,5,0x5555
	rldimi 5,5,32,0
	mr 19,5
	and 4,6,18
	and 5,7,19
	ld 6,-176(1)
	ld 7,-168(1)
	subfc 21,5,7
	subfe 20,4,6
	std 20,-176(1)
	std 21,-168(1)
	ld 7,-176(1)
	sldi 7,7,62
	ld 6,-168(1)
	srdi 9,6,2
	or 9,7,9
	ld 7,-176(1)
	srdi 8,7,2
	lis 7,0x3333
	ori 7,7,0x3333
	rldimi 7,7,32,0
	mr 22,7
	lis 7,0x3333
	ori 7,7,0x3333
	rldimi 7,7,32,0
	mr 23,7
	and 6,8,22
	and 7,9,23
	ld 8,-176(1)
	ld 9,-168(1)
	lis 5,0x3333
	ori 5,5,0x3333
	rldimi 5,5,32,0
	mr 24,5
	lis 5,0x3333
	ori 5,5,0x3333
	rldimi 5,5,32,0
	mr 25,5
	and 8,8,24
	and 9,9,25
	addc 27,7,9
	adde 26,6,8
	std 26,-176(1)
	std 27,-168(1)
	ld 9,-176(1)
	sldi 9,9,60
	ld 8,-168(1)
	srdi 11,8,4
	or 11,9,11
	ld 9,-176(1)
	srdi 10,9,4
	ld 8,-176(1)
	ld 9,-168(1)
	addc 29,11,9
	adde 28,10,8
	lis 9,0xf0f
	ori 9,9,0xf0f
	rldimi 9,9,32,0
	mr 30,9
	lis 9,0xf0f
	ori 9,9,0xf0f
	rldimi 9,9,32,0
	mr 31,9
	and 10,28,30
	and 11,29,31
	std 10,-176(1)
	std 11,-168(1)
	ld 9,-168(1)
	ld 10,-176(1)
	srdi 17,10,0
	li 16,0
	mr 10,17
	add 9,9,10
	std 9,-160(1)
	ld 9,-160(1)
	mr 10,9
	ld 9,-160(1)
	srdi 9,9,32
	add 9,10,9
	stw 9,-152(1)
	lwz 9,-152(1)
	srwi 9,9,16
	lwz 10,-152(1)
	add 9,10,9
	stw 9,-152(1)
	lwz 9,-152(1)
	srwi 10,9,8
	lwz 9,-152(1)
	add 9,10,9
	rlwinm 9,9,0,24,31
	extsw 9,9
	mr 3,9
	ld 16,-128(1)
	ld 17,-120(1)
	ld 18,-112(1)
	ld 19,-104(1)
	ld 20,-96(1)
	ld 21,-88(1)
	ld 22,-80(1)
	ld 23,-72(1)
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,0,16,0,1
	.cfi_endproc
.LFE160:
	.size	__popcountti2,.-.L.__popcountti2
	.align 2
	.globl __powidf2
	.section	".opd","aw"
	.align 3
__powidf2:
	.quad	.L.__powidf2,.TOC.@tocbase
	.previous
	.type	__powidf2, @function
.L.__powidf2:
.LFB161:
	.cfi_startproc
	stfd 1,48(1)
	mr 9,4
	stw 9,56(1)
	lwz 9,56(1)
	srwi 9,9,31
	rlwinm 9,9,0,0xff
	stw 9,-8(1)
	addis 9,2,.LC14@toc@ha
	addi 9,9,.LC14@toc@l
	lfd 0,0(9)
	stfd 0,-16(1)
.L822:
	lwz 9,56(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L819
	lfd 12,-16(1)
	lfd 0,48(1)
	fmul 0,12,0
	stfd 0,-16(1)
.L819:
	lwz 9,56(1)
	srawi 9,9,1
	addze 9,9
	stw 9,56(1)
	lwz 9,56(1)
	cmpwi 0,9,0
	beq 0,.L827
	lfd 0,48(1)
	fmul 0,0,0
	stfd 0,48(1)
	b .L822
.L827:
	nop
	lwz 9,-8(1)
	cmpwi 0,9,0
	beq 0,.L823
	addis 9,2,.LC14@toc@ha
	addi 9,9,.LC14@toc@l
	lfd 12,0(9)
	lfd 0,-16(1)
	fdiv 0,12,0
	b .L825
.L823:
	lfd 0,-16(1)
.L825:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE161:
	.size	__powidf2,.-.L.__powidf2
	.align 2
	.globl __powisf2
	.section	".opd","aw"
	.align 3
__powisf2:
	.quad	.L.__powisf2,.TOC.@tocbase
	.previous
	.type	__powisf2, @function
.L.__powisf2:
.LFB162:
	.cfi_startproc
	stfs 1,48(1)
	mr 9,4
	stw 9,56(1)
	lwz 9,56(1)
	srwi 9,9,31
	rlwinm 9,9,0,0xff
	stw 9,-12(1)
	addis 9,2,.LC16@toc@ha
	addi 9,9,.LC16@toc@l
	lfs 0,0(9)
	stfs 0,-16(1)
.L832:
	lwz 9,56(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L829
	lfs 12,-16(1)
	lfs 0,48(1)
	fmuls 0,12,0
	stfs 0,-16(1)
.L829:
	lwz 9,56(1)
	srawi 9,9,1
	addze 9,9
	stw 9,56(1)
	lwz 9,56(1)
	cmpwi 0,9,0
	beq 0,.L837
	lfs 0,48(1)
	fmuls 0,0,0
	stfs 0,48(1)
	b .L832
.L837:
	nop
	lwz 9,-12(1)
	cmpwi 0,9,0
	beq 0,.L833
	addis 9,2,.LC16@toc@ha
	addi 9,9,.LC16@toc@l
	lfs 12,0(9)
	lfs 0,-16(1)
	fdivs 0,12,0
	b .L835
.L833:
	lfs 0,-16(1)
.L835:
	fmr 1,0
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE162:
	.size	__powisf2,.-.L.__powisf2
	.align 2
	.globl __ucmpdi2
	.section	".opd","aw"
	.align 3
__ucmpdi2:
	.quad	.L.__ucmpdi2,.TOC.@tocbase
	.previous
	.type	__ucmpdi2, @function
.L.__ucmpdi2:
.LFB163:
	.cfi_startproc
	std 3,48(1)
	std 4,56(1)
	ld 9,48(1)
	std 9,-16(1)
	ld 9,56(1)
	std 9,-8(1)
	lwz 10,-16(1)
	lwz 9,-8(1)
	cmplw 0,10,9
	bge 0,.L839
	li 9,0
	b .L844
.L839:
	lwz 10,-16(1)
	lwz 9,-8(1)
	cmplw 0,10,9
	ble 0,.L841
	li 9,2
	b .L844
.L841:
	lwz 10,-12(1)
	lwz 9,-4(1)
	cmplw 0,10,9
	bge 0,.L842
	li 9,0
	b .L844
.L842:
	lwz 10,-12(1)
	lwz 9,-4(1)
	cmplw 0,10,9
	ble 0,.L843
	li 9,2
	b .L844
.L843:
	li 9,1
.L844:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2,.-.L.__ucmpdi2
	.align 2
	.globl __aeabi_ulcmp
	.section	".opd","aw"
	.align 3
__aeabi_ulcmp:
	.quad	.L.__aeabi_ulcmp,.TOC.@tocbase
	.previous
	.type	__aeabi_ulcmp, @function
.L.__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
	mflr 0
	std 0,16(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 65, 16
	std 3,160(1)
	std 4,168(1)
	ld 9,160(1)
	ld 10,168(1)
	mr 4,10
	mr 3,9
	bl __ucmpdi2
	mr 9,3
	addi 9,9,-1
	extsw 9,9
	mr 3,9
	addi 1,1,112
	.cfi_def_cfa_offset 0
	ld 0,16(1)
	mtlr 0
	blr
	.long 0
	.byte 0,0,0,1,128,0,0,1
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp,.-.L.__aeabi_ulcmp
	.align 2
	.globl __ucmpti2
	.section	".opd","aw"
	.align 3
__ucmpti2:
	.quad	.L.__ucmpti2,.TOC.@tocbase
	.previous
	.type	__ucmpti2, @function
.L.__ucmpti2:
.LFB165:
	.cfi_startproc
	addi 9,1,-32
	std 3,0(9)
	std 4,8(9)
	addi 9,1,-16
	std 5,0(9)
	std 6,8(9)
	addi 9,1,-32
	ld 10,0(9)
	ld 11,8(9)
	std 10,-64(1)
	std 11,-56(1)
	addi 9,1,-16
	ld 10,0(9)
	ld 11,8(9)
	addi 9,1,-48
	std 10,0(9)
	std 11,8(9)
	ld 10,-64(1)
	ld 9,-48(1)
	cmpld 0,10,9
	bge 0,.L848
	li 9,0
	b .L853
.L848:
	ld 10,-64(1)
	ld 9,-48(1)
	cmpld 0,10,9
	ble 0,.L850
	li 9,2
	b .L853
.L850:
	ld 10,-56(1)
	ld 9,-40(1)
	cmpld 0,10,9
	bge 0,.L851
	li 9,0
	b .L853
.L851:
	ld 10,-56(1)
	ld 9,-40(1)
	cmpld 0,10,9
	ble 0,.L852
	li 9,2
	b .L853
.L852:
	li 9,1
.L853:
	extsw 9,9
	mr 3,9
	blr
	.long 0
	.byte 0,0,0,0,0,0,0,1
	.cfi_endproc
.LFE165:
	.size	__ucmpti2,.-.L.__ucmpti2
	.lcomm	s.0,7,8
	.type	s.0, @object
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.long	0
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.long	0
	.align 2
.LC2:
	.long	-8388609
	.align 2
.LC3:
	.long	2139095039
	.section	.rodata.cst8
	.align 3
.LC4:
	.long	-1048577
	.long	-1
	.align 3
.LC5:
	.long	2146435071
	.long	-1
	.section	.rodata.cst16,"aM",@progbits,16
	.align 4
.LC6:
	.long	-1048577
	.long	-1
	.long	-57671681
	.long	-2
	.align 4
.LC7:
	.long	2146435071
	.long	-1
	.long	2089811967
	.long	-2
	.section	.rodata.cst4
	.align 2
.LC8:
	.long	1056964608
	.align 2
.LC9:
	.long	1073741824
	.section	.rodata.cst8
	.align 3
.LC10:
	.long	1071644672
	.long	0
	.align 3
.LC11:
	.long	1073741824
	.long	0
	.section	.rodata.cst16
	.align 4
.LC12:
	.long	1071644672
	.long	0
	.long	0
	.long	0
	.align 4
.LC13:
	.long	1073741824
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 3
.LC14:
	.long	1072693248
	.long	0
	.section	.rodata.cst4
	.align 2
.LC15:
	.long	1191182336
	.align 2
.LC16:
	.long	1065353216
	.globl __gcc_qmul
	.globl __gcc_qadd
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.gnu_attribute 4, 5
	.section	.note.GNU-stack,"",@progbits
