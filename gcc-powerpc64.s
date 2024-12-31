	.file	"mini-libc.c"
	.machine power7
	.machine altivec
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
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,144(31)
	std 4,152(31)
	ld 9,144(31)
	std 9,48(31)
	ld 9,152(31)
	std 9,56(31)
	addi 9,31,48
	lxvd2x 0,0,9
	addi 9,31,64
	stxvd2x 0,0,9
	addi 9,31,64
	ld 10,0(9)
	ld 11,8(9)
	mr 3,10
	mr 4,11
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,144(31)
	std 4,152(31)
	ld 9,144(31)
	std 9,48(31)
	ld 9,152(31)
	std 9,56(31)
	addi 9,31,48
	lxvd2x 0,0,9
	addi 9,31,64
	stxvd2x 0,0,9
	addi 9,31,64
	ld 10,0(9)
	ld 11,8(9)
	mr 3,10
	mr 4,11
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	std 4,136(31)
	std 5,144(31)
	ld 9,128(31)
	std 9,48(31)
	ld 9,136(31)
	std 9,56(31)
	ld 10,56(31)
	ld 9,48(31)
	cmpld 0,10,9
	bge 0,.L6
	ld 10,56(31)
	ld 9,144(31)
	add 9,10,9
	std 9,56(31)
	ld 10,48(31)
	ld 9,144(31)
	add 9,10,9
	std 9,48(31)
	b .L7
.L8:
	ld 9,56(31)
	addi 9,9,-1
	std 9,56(31)
	ld 9,48(31)
	addi 9,9,-1
	std 9,48(31)
	ld 9,56(31)
	lbz 10,0(9)
	ld 9,48(31)
	stb 10,0(9)
	ld 9,144(31)
	addi 9,9,-1
	std 9,144(31)
.L7:
	ld 9,144(31)
	cmpdi 0,9,0
	bne 0,.L8
	b .L9
.L6:
	ld 10,56(31)
	ld 9,48(31)
	cmpd 0,10,9
	beq 0,.L9
	b .L10
.L11:
	ld 10,56(31)
	addi 9,10,1
	std 9,56(31)
	ld 9,48(31)
	addi 8,9,1
	std 8,48(31)
	lbz 10,0(10)
	stb 10,0(9)
	ld 9,144(31)
	addi 9,9,-1
	std 9,144(31)
.L10:
	ld 9,144(31)
	cmpdi 0,9,0
	bne 0,.L11
.L9:
	ld 9,128(31)
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	std 4,136(31)
	mr 9,5
	std 6,152(31)
	stw 9,144(31)
	ld 9,128(31)
	std 9,48(31)
	ld 9,136(31)
	std 9,56(31)
	lwz 9,144(31)
	rlwinm 9,9,0,0xff
	stw 9,144(31)
	b .L14
.L16:
	ld 9,152(31)
	addi 9,9,-1
	std 9,152(31)
	ld 9,56(31)
	addi 9,9,1
	std 9,56(31)
	ld 9,48(31)
	addi 9,9,1
	std 9,48(31)
.L14:
	ld 9,152(31)
	cmpdi 0,9,0
	beq 0,.L15
	ld 9,56(31)
	lbz 10,0(9)
	ld 9,48(31)
	stb 10,0(9)
	ld 9,48(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,144(31)
	cmpw 0,10,9
	bne 0,.L16
.L15:
	ld 9,152(31)
	cmpdi 0,9,0
	beq 0,.L17
	ld 9,48(31)
	addi 9,9,1
	b .L18
.L17:
	li 9,0
.L18:
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	mr 9,4
	std 5,144(31)
	stw 9,136(31)
	ld 9,128(31)
	std 9,48(31)
	lwz 9,136(31)
	rlwinm 9,9,0,0xff
	stw 9,136(31)
	b .L20
.L22:
	ld 9,48(31)
	addi 9,9,1
	std 9,48(31)
	ld 9,144(31)
	addi 9,9,-1
	std 9,144(31)
.L20:
	ld 9,144(31)
	cmpdi 0,9,0
	beq 0,.L21
	ld 9,48(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,136(31)
	cmpw 0,10,9
	bne 0,.L22
.L21:
	ld 9,144(31)
	cmpdi 0,9,0
	beq 0,.L23
	ld 9,48(31)
	b .L25
.L23:
	li 9,0
.L25:
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	std 4,136(31)
	std 5,144(31)
	ld 9,128(31)
	std 9,48(31)
	ld 9,136(31)
	std 9,56(31)
	b .L27
.L29:
	ld 9,144(31)
	addi 9,9,-1
	std 9,144(31)
	ld 9,48(31)
	addi 9,9,1
	std 9,48(31)
	ld 9,56(31)
	addi 9,9,1
	std 9,56(31)
.L27:
	ld 9,144(31)
	cmpdi 0,9,0
	beq 0,.L28
	ld 9,48(31)
	lbz 10,0(9)
	ld 9,56(31)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	beq 0,.L29
.L28:
	ld 9,144(31)
	cmpdi 0,9,0
	beq 0,.L30
	ld 9,48(31)
	lbz 9,0(9)
	rlwinm 10,9,0,0xff
	ld 9,56(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	subf 9,9,10
	b .L32
.L30:
	li 9,0
.L32:
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	std 4,136(31)
	std 5,144(31)
	ld 9,128(31)
	std 9,48(31)
	ld 9,136(31)
	std 9,56(31)
	b .L34
.L35:
	ld 10,56(31)
	addi 9,10,1
	std 9,56(31)
	ld 9,48(31)
	addi 8,9,1
	std 8,48(31)
	lbz 10,0(10)
	stb 10,0(9)
	ld 9,144(31)
	addi 9,9,-1
	std 9,144(31)
.L34:
	ld 9,144(31)
	cmpdi 0,9,0
	bne 0,.L35
	ld 9,128(31)
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	mr 9,4
	std 5,144(31)
	stw 9,136(31)
	ld 9,128(31)
	std 9,48(31)
	lwz 9,136(31)
	rlwinm 9,9,0,0xff
	stw 9,136(31)
	b .L38
.L40:
	ld 10,48(31)
	ld 9,144(31)
	add 9,10,9
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,136(31)
	cmpw 0,10,9
	bne 0,.L38
	ld 10,48(31)
	ld 9,144(31)
	add 9,10,9
	b .L39
.L38:
	ld 9,144(31)
	addi 10,9,-1
	std 10,144(31)
	cmpdi 0,9,0
	bne 0,.L40
	li 9,0
.L39:
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	mr 9,4
	std 5,144(31)
	stw 9,136(31)
	ld 9,128(31)
	std 9,48(31)
	b .L42
.L43:
	lwz 9,136(31)
	mr 10,9
	ld 9,48(31)
	stb 10,0(9)
	ld 9,144(31)
	addi 9,9,-1
	std 9,144(31)
	ld 9,48(31)
	addi 9,9,1
	std 9,48(31)
.L42:
	ld 9,144(31)
	cmpdi 0,9,0
	bne 0,.L43
	ld 9,128(31)
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	std 4,120(31)
	b .L46
.L47:
	ld 9,120(31)
	addi 9,9,1
	std 9,120(31)
	ld 9,112(31)
	addi 9,9,1
	std 9,112(31)
.L46:
	ld 9,120(31)
	lbz 10,0(9)
	ld 9,112(31)
	stb 10,0(9)
	ld 9,112(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L47
	ld 9,112(31)
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	mr 9,4
	stw 9,120(31)
	lwz 9,120(31)
	rlwinm 9,9,0,0xff
	stw 9,120(31)
	b .L50
.L52:
	ld 9,112(31)
	addi 9,9,1
	std 9,112(31)
.L50:
	ld 9,112(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L51
	ld 9,112(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,120(31)
	cmpw 0,10,9
	bne 0,.L52
.L51:
	ld 9,112(31)
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	mr 10,4
	stw 10,120(31)
.L57:
	lbz 10,0(9)
	rlwinm 10,10,0,0xff
	lwz 8,120(31)
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	std 4,120(31)
	b .L59
.L61:
	ld 9,112(31)
	addi 9,9,1
	std 9,112(31)
	ld 9,120(31)
	addi 9,9,1
	std 9,120(31)
.L59:
	ld 9,112(31)
	lbz 10,0(9)
	ld 9,120(31)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	bne 0,.L60
	ld 9,112(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L61
.L60:
	ld 9,112(31)
	lbz 9,0(9)
	rlwinm 10,9,0,0xff
	ld 9,120(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	subf 9,9,10
	extsw 9,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	ld 9,128(31)
	std 9,48(31)
	b .L64
.L65:
	ld 9,128(31)
	addi 9,9,1
	std 9,128(31)
.L64:
	ld 9,128(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L65
	ld 10,128(31)
	ld 9,48(31)
	subf 9,9,10
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	std 4,136(31)
	std 5,144(31)
	ld 9,128(31)
	std 9,48(31)
	ld 9,136(31)
	std 9,56(31)
	ld 9,144(31)
	addi 10,9,-1
	std 10,144(31)
	cmpdi 0,9,0
	bne 0,.L70
	li 9,0
	b .L69
.L72:
	ld 9,48(31)
	addi 9,9,1
	std 9,48(31)
	ld 9,56(31)
	addi 9,9,1
	std 9,56(31)
	ld 9,144(31)
	addi 9,9,-1
	std 9,144(31)
.L70:
	ld 9,48(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L71
	ld 9,56(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L71
	ld 9,144(31)
	cmpdi 0,9,0
	beq 0,.L71
	ld 9,48(31)
	lbz 10,0(9)
	ld 9,56(31)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	beq 0,.L72
.L71:
	ld 9,48(31)
	lbz 9,0(9)
	rlwinm 10,9,0,0xff
	ld 9,56(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	subf 9,9,10
.L69:
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	std 4,136(31)
	std 5,144(31)
	ld 9,128(31)
	std 9,48(31)
	ld 9,136(31)
	std 9,56(31)
	b .L74
.L75:
	ld 9,48(31)
	addi 9,9,1
	lbz 10,0(9)
	ld 9,56(31)
	stb 10,0(9)
	ld 9,56(31)
	addi 9,9,1
	ld 10,48(31)
	lbz 10,0(10)
	stb 10,0(9)
	ld 9,56(31)
	addi 9,9,2
	std 9,56(31)
	ld 9,48(31)
	addi 9,9,2
	std 9,48(31)
	ld 9,144(31)
	addi 9,9,-2
	std 9,144(31)
.L74:
	ld 9,144(31)
	cmpdi 0,9,1
	bgt 0,.L75
	nop
	nop
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	lwz 9,112(31)
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	lwz 9,112(31)
	li 10,127
	rldicl 9,9,0,32
	rldicl 10,10,0,32
	subf 9,9,10
	srdi 9,9,63
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	lwz 9,112(31)
	cmpwi 0,9,32
	beq 0,.L81
	lwz 9,112(31)
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	lwz 9,112(31)
	cmplwi 0,9,31
	ble 0,.L86
	lwz 9,112(31)
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	lwz 9,112(31)
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	lwz 9,112(31)
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	lwz 9,112(31)
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	lwz 9,112(31)
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	lwz 9,112(31)
	cmpwi 0,9,32
	beq 0,.L99
	lwz 9,112(31)
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	lwz 9,112(31)
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	lwz 9,112(31)
	cmplwi 0,9,31
	ble 0,.L106
	lwz 9,112(31)
	addi 9,9,-127
	cmplwi 0,9,32
	ble 0,.L106
	lwz 9,112(31)
	addi 9,9,-8232
	cmplwi 0,9,1
	ble 0,.L106
	lwz 9,112(31)
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	lwz 9,112(31)
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	lwz 9,112(31)
	cmplwi 0,9,254
	bgt 0,.L113
	lwz 9,112(31)
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
	lwz 9,112(31)
	cmplwi 0,9,8231
	ble 0,.L115
	lwz 9,112(31)
	addi 10,9,-8234
	li 9,0
	ori 9,9,0xb7d5
	cmplw 0,10,9
	ble 0,.L115
	lwz 9,112(31)
	addis 9,9,0xffff
	addi 9,9,8192
	cmplwi 0,9,8184
	bgt 0,.L116
.L115:
	li 9,1
	b .L114
.L116:
	lwz 9,112(31)
	addis 9,9,0xffff
	addi 10,9,4
	lis 9,0x10
	ori 9,9,0x3
	cmplw 0,10,9
	bgt 0,.L117
	lwz 9,112(31)
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	lwz 9,112(31)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L120
	lwz 9,112(31)
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	lwz 9,112(31)
	rlwinm 9,9,0,25,31
	extsw 9,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,112(31)
	stfd 2,120(31)
	lfd 12,112(31)
	lfd 0,112(31)
	fcmpu 0,12,0
	bnu 0,.L127
	lfd 0,112(31)
	b .L128
.L127:
	lfd 12,120(31)
	lfd 0,120(31)
	fcmpu 0,12,0
	bnu 0,.L129
	lfd 0,120(31)
	b .L128
.L129:
	lfd 12,112(31)
	lfd 0,120(31)
	fcmpu 0,12,0
	bng 0,.L134
	lfd 12,112(31)
	lfd 0,120(31)
	fsub 0,12,0
	b .L128
.L134:
	xxlxor 0,0,0
.L128:
	fmr 1,0
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,112(31)
	stfs 2,120(31)
	lfs 12,112(31)
	lfs 0,112(31)
	fcmpu 0,12,0
	bnu 0,.L136
	lfs 0,112(31)
	b .L137
.L136:
	lfs 12,120(31)
	lfs 0,120(31)
	fcmpu 0,12,0
	bnu 0,.L138
	lfs 0,120(31)
	b .L137
.L138:
	lfs 12,112(31)
	lfs 0,120(31)
	fcmpu 0,12,0
	bng 0,.L143
	lfs 12,112(31)
	lfs 0,120(31)
	fsubs 0,12,0
	b .L137
.L143:
	xxlxor 0,0,0
.L137:
	fmr 1,0
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,112(31)
	stfd 2,120(31)
	lfd 12,112(31)
	lfd 0,112(31)
	fcmpu 0,12,0
	bnu 0,.L145
	lfd 0,120(31)
	b .L146
.L145:
	lfd 12,120(31)
	lfd 0,120(31)
	fcmpu 0,12,0
	bnu 0,.L147
	lfd 0,112(31)
	b .L146
.L147:
	ld 9,112(31)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	mr 10,9
	ld 9,120(31)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	cmpw 0,10,9
	beq 0,.L148
	ld 9,112(31)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L149
	lfd 0,120(31)
	b .L146
.L149:
	lfd 0,112(31)
	b .L146
.L148:
	lfd 12,112(31)
	lfd 0,120(31)
	fcmpu 0,12,0
	bnl 0,.L155
	lfd 0,120(31)
	b .L146
.L155:
	lfd 0,112(31)
.L146:
	fmr 1,0
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,112(31)
	stfs 2,120(31)
	lfs 12,112(31)
	lfs 0,112(31)
	fcmpu 0,12,0
	bnu 0,.L157
	lfs 0,120(31)
	b .L158
.L157:
	lfs 12,120(31)
	lfs 0,120(31)
	fcmpu 0,12,0
	bnu 0,.L159
	lfs 0,112(31)
	b .L158
.L159:
	lwz 9,112(31)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,120(31)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L160
	lwz 9,112(31)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L161
	lfs 0,120(31)
	b .L158
.L161:
	lfs 0,112(31)
	b .L158
.L160:
	lfs 12,112(31)
	lfs 0,120(31)
	fcmpu 0,12,0
	bnl 0,.L167
	lfs 0,120(31)
	b .L158
.L167:
	lfs 0,112(31)
.L158:
	fmr 1,0
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,48(31)
	stfd 2,56(31)
	addi 9,31,64
	stfd 3,0(9)
	stfd 4,8(9)
	lfd 0,48(31)
	lfd 1,56(31)
	fcmpu 0,0,0
	bnu 0,.L169
	addi 9,31,64
	lfd 0,0(9)
	lfd 1,8(9)
	b .L170
.L169:
	addi 9,31,64
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,0,0
	bnu 0,.L171
	lfd 0,48(31)
	lfd 1,56(31)
	b .L170
.L171:
	lfd 0,48(31)
	lfd 1,56(31)
	stfd 0,80(31)
	ld 9,80(31)
	srdi 9,9,63
	mr 10,9
	addi 9,31,64
	lfd 0,0(9)
	lfd 1,8(9)
	stfd 0,80(31)
	ld 9,80(31)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L172
	lfd 0,48(31)
	lfd 1,56(31)
	stfd 0,80(31)
	ld 9,80(31)
	srdi 9,9,63
	cmpwi 0,9,0
	beq 0,.L173
	addi 9,31,64
	lfd 0,0(9)
	lfd 1,8(9)
	b .L170
.L173:
	lfd 0,48(31)
	lfd 1,56(31)
	b .L170
.L172:
	lfd 12,48(31)
	lfd 13,56(31)
	addi 9,31,64
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	bnl 0,.L179
	addi 9,31,64
	lfd 0,0(9)
	lfd 1,8(9)
	b .L170
.L179:
	lfd 0,48(31)
	lfd 1,56(31)
.L170:
	fmr 2,1
	fmr 1,0
	addi 1,31,112
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,112(31)
	stfd 2,120(31)
	lfd 12,112(31)
	lfd 0,112(31)
	fcmpu 0,12,0
	bnu 0,.L181
	lfd 0,120(31)
	b .L182
.L181:
	lfd 12,120(31)
	lfd 0,120(31)
	fcmpu 0,12,0
	bnu 0,.L183
	lfd 0,112(31)
	b .L182
.L183:
	ld 9,112(31)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	mr 10,9
	ld 9,120(31)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	cmpw 0,10,9
	beq 0,.L184
	ld 9,112(31)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L185
	lfd 0,112(31)
	b .L182
.L185:
	lfd 0,120(31)
	b .L182
.L184:
	lfd 12,112(31)
	lfd 0,120(31)
	fcmpu 0,12,0
	bnl 0,.L191
	lfd 0,112(31)
	b .L182
.L191:
	lfd 0,120(31)
.L182:
	fmr 1,0
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,112(31)
	stfs 2,120(31)
	lfs 12,112(31)
	lfs 0,112(31)
	fcmpu 0,12,0
	bnu 0,.L193
	lfs 0,120(31)
	b .L194
.L193:
	lfs 12,120(31)
	lfs 0,120(31)
	fcmpu 0,12,0
	bnu 0,.L195
	lfs 0,112(31)
	b .L194
.L195:
	lwz 9,112(31)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,120(31)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L196
	lwz 9,112(31)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L197
	lfs 0,112(31)
	b .L194
.L197:
	lfs 0,120(31)
	b .L194
.L196:
	lfs 12,112(31)
	lfs 0,120(31)
	fcmpu 0,12,0
	bnl 0,.L203
	lfs 0,112(31)
	b .L194
.L203:
	lfs 0,120(31)
.L194:
	fmr 1,0
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,48(31)
	stfd 2,56(31)
	addi 9,31,64
	stfd 3,0(9)
	stfd 4,8(9)
	lfd 0,48(31)
	lfd 1,56(31)
	fcmpu 0,0,0
	bnu 0,.L205
	addi 9,31,64
	lfd 0,0(9)
	lfd 1,8(9)
	b .L206
.L205:
	addi 9,31,64
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,0,0
	bnu 0,.L207
	lfd 0,48(31)
	lfd 1,56(31)
	b .L206
.L207:
	lfd 0,48(31)
	lfd 1,56(31)
	stfd 0,80(31)
	ld 9,80(31)
	srdi 9,9,63
	mr 10,9
	addi 9,31,64
	lfd 0,0(9)
	lfd 1,8(9)
	stfd 0,80(31)
	ld 9,80(31)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L208
	lfd 0,48(31)
	lfd 1,56(31)
	stfd 0,80(31)
	ld 9,80(31)
	srdi 9,9,63
	cmpwi 0,9,0
	beq 0,.L209
	lfd 0,48(31)
	lfd 1,56(31)
	b .L206
.L209:
	addi 9,31,64
	lfd 0,0(9)
	lfd 1,8(9)
	b .L206
.L208:
	lfd 12,48(31)
	lfd 13,56(31)
	addi 9,31,64
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	bnl 0,.L215
	lfd 0,48(31)
	lfd 1,56(31)
	b .L206
.L215:
	addi 9,31,64
	lfd 0,0(9)
	lfd 1,8(9)
.L206:
	fmr 2,1
	fmr 1,0
	addi 1,31,112
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	ld 9,128(31)
	stw 9,56(31)
	addis 9,2,s.0@toc@ha
	addi 9,9,s.0@toc@l
	std 9,48(31)
	b .L217
.L218:
	lwz 9,56(31)
	rlwinm 9,9,0,26,31
	addis 10,2,digits@toc@ha
	addi 10,10,digits@toc@l
	rldicl 9,9,0,32
	lbzx 10,10,9
	ld 9,48(31)
	stb 10,0(9)
	ld 9,48(31)
	addi 9,9,1
	std 9,48(31)
	lwz 9,56(31)
	srwi 9,9,6
	stw 9,56(31)
.L217:
	lwz 9,56(31)
	cmpwi 0,9,0
	bne 0,.L218
	ld 9,48(31)
	li 10,0
	stb 10,0(9)
	addis 9,2,s.0@toc@ha
	addi 9,9,s.0@toc@l
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	lwz 9,112(31)
	addi 9,9,-1
	rldicl 10,9,0,32
	addis 9,2,seed@toc@ha
	addi 9,9,seed@toc@l
	std 10,0(9)
	nop
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addis 9,2,seed@toc@ha
	addi 9,9,seed@toc@l
	ld 10,0(9)
	addis 9,2,.LC0@toc@ha
	ld 9,.LC0@toc@l(9)
	mulld 9,10,9
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	std 4,136(31)
	ld 9,128(31)
	std 9,48(31)
	ld 9,136(31)
	std 9,56(31)
	ld 9,56(31)
	cmpdi 0,9,0
	bne 0,.L224
	ld 9,48(31)
	li 10,0
	std 10,8(9)
	ld 9,48(31)
	ld 10,8(9)
	ld 9,48(31)
	std 10,0(9)
	b .L223
.L224:
	ld 9,56(31)
	ld 10,0(9)
	ld 9,48(31)
	std 10,0(9)
	ld 9,48(31)
	ld 10,56(31)
	std 10,8(9)
	ld 9,56(31)
	ld 10,48(31)
	std 10,0(9)
	ld 9,48(31)
	ld 9,0(9)
	cmpdi 0,9,0
	beq 0,.L223
	ld 9,48(31)
	ld 9,0(9)
	ld 10,48(31)
	std 10,8(9)
.L223:
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	ld 9,128(31)
	std 9,48(31)
	ld 9,48(31)
	ld 9,0(9)
	cmpdi 0,9,0
	beq 0,.L227
	ld 9,48(31)
	ld 9,0(9)
	ld 10,48(31)
	ld 10,8(10)
	std 10,8(9)
.L227:
	ld 9,48(31)
	ld 9,8(9)
	cmpdi 0,9,0
	beq 0,.L229
	ld 9,48(31)
	ld 9,8(9)
	ld 10,48(31)
	ld 10,0(10)
	std 10,0(9)
.L229:
	nop
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-160(1)
	.cfi_def_cfa_offset 160
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 2,40(1)
	std 3,208(31)
	std 4,216(31)
	std 5,224(31)
	std 6,232(31)
	std 7,240(31)
	ld 30,232(31)
	mr 7,30
	addi 7,7,-1
	std 7,120(31)
	mr 11,30
	li 10,0
	srdi 7,11,61
	sldi 8,10,3
	or 8,7,8
	sldi 9,11,3
	ld 9,216(31)
	std 9,128(31)
	ld 9,224(31)
	ld 9,0(9)
	std 9,136(31)
	li 9,0
	std 9,112(31)
	b .L231
.L234:
	ld 9,112(31)
	mulld 9,30,9
	ld 10,128(31)
	add 10,10,9
	ld 9,240(31)
	mr 4,10
	ld 3,208(31)
	ld 10,0(9)
	mtctr 10
	ld 11,16(9)
	ld 2,8(9)
	bctrl
	ld 2,40(1)
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L232
	ld 9,112(31)
	mulld 9,30,9
	ld 10,128(31)
	add 9,10,9
	b .L233
.L232:
	ld 9,112(31)
	addi 9,9,1
	std 9,112(31)
.L231:
	ld 10,112(31)
	ld 9,136(31)
	cmpld 0,10,9
	blt 0,.L234
	ld 9,136(31)
	addi 10,9,1
	ld 9,224(31)
	std 10,0(9)
	ld 9,136(31)
	mulld 9,30,9
	ld 10,128(31)
	add 9,10,9
	ld 5,232(31)
	ld 4,208(31)
	mr 3,9
	bl memcpy
	mr 9,3
.L233:
	mr 3,9
	addi 1,31,160
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,2,0,1
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
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-160(1)
	.cfi_def_cfa_offset 160
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 2,40(1)
	std 3,208(31)
	std 4,216(31)
	std 5,224(31)
	std 6,232(31)
	std 7,240(31)
	ld 30,232(31)
	mr 7,30
	addi 7,7,-1
	std 7,120(31)
	mr 11,30
	li 10,0
	srdi 7,11,61
	sldi 8,10,3
	or 8,7,8
	sldi 9,11,3
	ld 9,216(31)
	std 9,128(31)
	ld 9,224(31)
	ld 9,0(9)
	std 9,136(31)
	li 9,0
	std 9,112(31)
	b .L236
.L239:
	ld 9,112(31)
	mulld 9,30,9
	ld 10,128(31)
	add 10,10,9
	ld 9,240(31)
	mr 4,10
	ld 3,208(31)
	ld 10,0(9)
	mtctr 10
	ld 11,16(9)
	ld 2,8(9)
	bctrl
	ld 2,40(1)
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L237
	ld 9,112(31)
	mulld 9,30,9
	ld 10,128(31)
	add 9,10,9
	b .L238
.L237:
	ld 9,112(31)
	addi 9,9,1
	std 9,112(31)
.L236:
	ld 10,112(31)
	ld 9,136(31)
	cmpld 0,10,9
	blt 0,.L239
	li 9,0
.L238:
	mr 3,9
	addi 1,31,160
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,2,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	lwz 9,112(31)
	srawi 10,9,31
	lwz 9,112(31)
	xor 9,10,9
	subf 9,10,9
	extsw 9,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-144(1)
	.cfi_def_cfa_offset 144
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,192(31)
	li 9,0
	stw 9,112(31)
	li 9,0
	stw 9,116(31)
	b .L243
.L244:
	ld 9,192(31)
	addi 9,9,1
	std 9,192(31)
.L243:
	ld 9,192(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	bl isspace
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L244
	ld 9,192(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,43
	beq 0,.L245
	cmpwi 0,9,45
	bne 0,.L247
	li 9,1
	stw 9,116(31)
.L245:
	ld 9,192(31)
	addi 9,9,1
	std 9,192(31)
	b .L247
.L248:
	lwz 9,112(31)
	mulli 10,9,10
	ld 9,192(31)
	addi 8,9,1
	std 8,192(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	subf 9,9,10
	stw 9,112(31)
.L247:
	ld 9,192(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L248
	lwz 9,116(31)
	cmpwi 0,9,0
	bne 0,.L249
	lwz 9,112(31)
	neg 9,9
	b .L251
.L249:
	lwz 9,112(31)
.L251:
	extsw 9,9
	mr 3,9
	addi 1,31,144
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-144(1)
	.cfi_def_cfa_offset 144
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,192(31)
	li 9,0
	std 9,112(31)
	li 9,0
	stw 9,120(31)
	b .L253
.L254:
	ld 9,192(31)
	addi 9,9,1
	std 9,192(31)
.L253:
	ld 9,192(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	bl isspace
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L254
	ld 9,192(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,43
	beq 0,.L255
	cmpwi 0,9,45
	bne 0,.L257
	li 9,1
	stw 9,120(31)
.L255:
	ld 9,192(31)
	addi 9,9,1
	std 9,192(31)
	b .L257
.L258:
	ld 9,112(31)
	mulli 10,9,10
	ld 9,192(31)
	addi 8,9,1
	std 8,192(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	extsw 9,9
	subf 9,9,10
	std 9,112(31)
.L257:
	ld 9,192(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L258
	lwz 9,120(31)
	cmpwi 0,9,0
	bne 0,.L259
	ld 9,112(31)
	neg 9,9
	b .L261
.L259:
	ld 9,112(31)
.L261:
	mr 3,9
	addi 1,31,144
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-144(1)
	.cfi_def_cfa_offset 144
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,192(31)
	li 9,0
	std 9,112(31)
	li 9,0
	stw 9,120(31)
	b .L263
.L264:
	ld 9,192(31)
	addi 9,9,1
	std 9,192(31)
.L263:
	ld 9,192(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	bl isspace
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L264
	ld 9,192(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,43
	beq 0,.L265
	cmpwi 0,9,45
	bne 0,.L267
	li 9,1
	stw 9,120(31)
.L265:
	ld 9,192(31)
	addi 9,9,1
	std 9,192(31)
	b .L267
.L268:
	ld 9,112(31)
	mulli 10,9,10
	ld 9,192(31)
	addi 8,9,1
	std 8,192(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	extsw 9,9
	subf 9,9,10
	std 9,112(31)
.L267:
	ld 9,192(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L268
	lwz 9,120(31)
	cmpwi 0,9,0
	bne 0,.L269
	ld 9,112(31)
	neg 9,9
	b .L271
.L269:
	ld 9,112(31)
.L271:
	mr 3,9
	addi 1,31,144
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-144(1)
	.cfi_def_cfa_offset 144
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 2,40(1)
	std 3,192(31)
	std 4,200(31)
	std 5,208(31)
	std 6,216(31)
	std 7,224(31)
	b .L273
.L277:
	ld 9,208(31)
	srdi 10,9,1
	ld 9,216(31)
	mulld 9,10,9
	ld 10,200(31)
	add 9,10,9
	std 9,112(31)
	ld 9,224(31)
	ld 4,112(31)
	ld 3,192(31)
	ld 10,0(9)
	mtctr 10
	ld 11,16(9)
	ld 2,8(9)
	bctrl
	ld 2,40(1)
	mr 9,3
	stw 9,120(31)
	lwz 9,120(31)
	cmpwi 0,9,0
	bge 0,.L274
	ld 9,208(31)
	srdi 9,9,1
	std 9,208(31)
	b .L273
.L274:
	lwz 9,120(31)
	cmpwi 0,9,0
	ble 0,.L275
	ld 10,112(31)
	ld 9,216(31)
	add 9,10,9
	std 9,200(31)
	ld 9,208(31)
	srdi 9,9,1
	ld 10,208(31)
	subf 9,9,10
	addi 9,9,-1
	std 9,208(31)
	b .L273
.L275:
	ld 9,112(31)
	b .L276
.L273:
	ld 9,208(31)
	cmpdi 0,9,0
	bne 0,.L277
	li 9,0
.L276:
	mr 3,9
	addi 1,31,144
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-160(1)
	.cfi_def_cfa_offset 160
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 2,40(1)
	std 3,208(31)
	std 4,216(31)
	std 5,224(31)
	std 6,232(31)
	std 7,240(31)
	std 8,248(31)
	ld 9,216(31)
	std 9,112(31)
	ld 9,224(31)
	stw 9,120(31)
	b .L279
.L283:
	lwz 9,120(31)
	srawi 9,9,1
	extsw 10,9
	ld 9,232(31)
	mulld 9,10,9
	ld 10,112(31)
	add 9,10,9
	std 9,128(31)
	ld 9,240(31)
	ld 5,248(31)
	ld 4,128(31)
	ld 3,208(31)
	ld 10,0(9)
	mtctr 10
	ld 11,16(9)
	ld 2,8(9)
	bctrl
	ld 2,40(1)
	mr 9,3
	stw 9,136(31)
	lwz 9,136(31)
	cmpwi 0,9,0
	bne 0,.L280
	ld 9,128(31)
	b .L281
.L280:
	lwz 9,136(31)
	cmpwi 0,9,0
	ble 0,.L282
	ld 10,128(31)
	ld 9,232(31)
	add 9,10,9
	std 9,112(31)
	lwz 9,120(31)
	addi 9,9,-1
	stw 9,120(31)
.L282:
	lwz 9,120(31)
	srawi 9,9,1
	stw 9,120(31)
.L279:
	lwz 9,120(31)
	cmpwi 0,9,0
	bne 0,.L283
	li 9,0
.L281:
	mr 3,9
	addi 1,31,160
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	mr 9,4
	mr 10,5
	stw 9,120(31)
	mr 9,10
	stw 9,128(31)
	lwz 10,120(31)
	lwz 9,128(31)
	divw 8,10,9
	lwz 9,120(31)
	lwz 10,128(31)
	divw 7,9,10
	lwz 10,128(31)
	mullw 10,7,10
	subf 10,10,9
	ld 9,112(31)
	stw 8,0(9)
	ld 9,112(31)
	stw 10,4(9)
	ld 3,112(31)
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	ld 9,112(31)
	sradi 10,9,63
	ld 9,112(31)
	xor 9,10,9
	subf 9,10,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	std 4,120(31)
	std 5,128(31)
	ld 10,120(31)
	ld 9,128(31)
	divd 8,10,9
	ld 9,120(31)
	ld 10,128(31)
	divd 7,9,10
	ld 10,128(31)
	mulld 10,7,10
	subf 10,10,9
	ld 9,112(31)
	std 8,0(9)
	ld 9,112(31)
	std 10,8(9)
	ld 3,112(31)
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	ld 9,112(31)
	sradi 10,9,63
	ld 9,112(31)
	xor 9,10,9
	subf 9,10,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	std 4,120(31)
	std 5,128(31)
	ld 10,120(31)
	ld 9,128(31)
	divd 8,10,9
	ld 9,120(31)
	ld 10,128(31)
	divd 7,9,10
	ld 10,128(31)
	mulld 10,7,10
	subf 10,10,9
	ld 9,112(31)
	std 8,0(9)
	ld 9,112(31)
	std 10,8(9)
	ld 3,112(31)
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	ld 9,112(31)
	sradi 10,9,63
	ld 9,112(31)
	xor 9,10,9
	subf 9,10,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	std 4,120(31)
	std 5,128(31)
	ld 10,120(31)
	ld 9,128(31)
	divd 8,10,9
	ld 9,120(31)
	ld 10,128(31)
	divd 7,9,10
	ld 10,128(31)
	mulld 10,7,10
	subf 10,10,9
	ld 9,112(31)
	std 8,0(9)
	ld 9,112(31)
	std 10,8(9)
	ld 3,112(31)
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	mr 9,4
	stw 9,120(31)
	b .L299
.L301:
	ld 9,112(31)
	addi 9,9,4
	std 9,112(31)
.L299:
	ld 9,112(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L300
	ld 9,112(31)
	lwz 9,0(9)
	lwz 10,120(31)
	cmpw 0,10,9
	bne 0,.L301
.L300:
	ld 9,112(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L302
	ld 9,112(31)
	b .L304
.L302:
	li 9,0
.L304:
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	std 4,120(31)
	b .L306
.L308:
	ld 9,112(31)
	addi 9,9,4
	std 9,112(31)
	ld 9,120(31)
	addi 9,9,4
	std 9,120(31)
.L306:
	ld 9,112(31)
	lwz 10,0(9)
	ld 9,120(31)
	lwz 9,0(9)
	cmpw 0,10,9
	bne 0,.L307
	ld 9,112(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L307
	ld 9,120(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L308
.L307:
	ld 9,112(31)
	lwz 10,0(9)
	ld 9,120(31)
	lwz 9,0(9)
	cmpw 0,10,9
	blt 0,.L309
	ld 9,112(31)
	lwz 8,0(9)
	ld 9,120(31)
	lwz 10,0(9)
	extsw 9,8
	extsw 10,10
	subf 9,9,10
	srdi 9,9,63
	rlwinm 9,9,0,0xff
	b .L311
.L309:
	li 9,-1
.L311:
	extsw 9,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	std 4,136(31)
	ld 9,128(31)
	std 9,48(31)
	nop
.L313:
	ld 10,136(31)
	addi 9,10,4
	std 9,136(31)
	ld 9,128(31)
	addi 8,9,4
	std 8,128(31)
	lwz 10,0(10)
	stw 10,0(9)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L313
	ld 9,48(31)
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	ld 9,128(31)
	std 9,48(31)
	b .L316
.L317:
	ld 9,128(31)
	addi 9,9,4
	std 9,128(31)
.L316:
	ld 9,128(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L317
	ld 10,128(31)
	ld 9,48(31)
	subf 9,9,10
	sradi 9,9,2
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	std 4,120(31)
	std 5,128(31)
	b .L320
.L322:
	ld 9,128(31)
	addi 9,9,-1
	std 9,128(31)
	ld 9,112(31)
	addi 9,9,4
	std 9,112(31)
	ld 9,120(31)
	addi 9,9,4
	std 9,120(31)
.L320:
	ld 9,128(31)
	cmpdi 0,9,0
	beq 0,.L321
	ld 9,112(31)
	lwz 10,0(9)
	ld 9,120(31)
	lwz 9,0(9)
	cmpw 0,10,9
	bne 0,.L321
	ld 9,112(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L321
	ld 9,120(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L322
.L321:
	ld 9,128(31)
	cmpdi 0,9,0
	beq 0,.L323
	ld 9,112(31)
	lwz 10,0(9)
	ld 9,120(31)
	lwz 9,0(9)
	cmpw 0,10,9
	blt 0,.L324
	ld 9,112(31)
	lwz 8,0(9)
	ld 9,120(31)
	lwz 10,0(9)
	extsw 9,8
	extsw 10,10
	subf 9,9,10
	srdi 9,9,63
	rlwinm 9,9,0,0xff
	b .L327
.L324:
	li 9,-1
	b .L327
.L323:
	li 9,0
.L327:
	extsw 9,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	mr 9,4
	std 5,128(31)
	stw 9,120(31)
	b .L329
.L331:
	ld 9,128(31)
	addi 9,9,-1
	std 9,128(31)
	ld 9,112(31)
	addi 9,9,4
	std 9,112(31)
.L329:
	ld 9,128(31)
	cmpdi 0,9,0
	beq 0,.L330
	ld 9,112(31)
	lwz 9,0(9)
	lwz 10,120(31)
	cmpw 0,10,9
	bne 0,.L331
.L330:
	ld 9,128(31)
	cmpdi 0,9,0
	beq 0,.L332
	ld 9,112(31)
	b .L334
.L332:
	li 9,0
.L334:
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	std 4,120(31)
	std 5,128(31)
	b .L336
.L338:
	ld 9,128(31)
	addi 9,9,-1
	std 9,128(31)
	ld 9,112(31)
	addi 9,9,4
	std 9,112(31)
	ld 9,120(31)
	addi 9,9,4
	std 9,120(31)
.L336:
	ld 9,128(31)
	cmpdi 0,9,0
	beq 0,.L337
	ld 9,112(31)
	lwz 10,0(9)
	ld 9,120(31)
	lwz 9,0(9)
	cmpw 0,10,9
	beq 0,.L338
.L337:
	ld 9,128(31)
	cmpdi 0,9,0
	beq 0,.L339
	ld 9,112(31)
	lwz 10,0(9)
	ld 9,120(31)
	lwz 9,0(9)
	cmpw 0,10,9
	blt 0,.L340
	ld 9,112(31)
	lwz 8,0(9)
	ld 9,120(31)
	lwz 10,0(9)
	extsw 9,8
	extsw 10,10
	subf 9,9,10
	srdi 9,9,63
	rlwinm 9,9,0,0xff
	b .L343
.L340:
	li 9,-1
	b .L343
.L339:
	li 9,0
.L343:
	extsw 9,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	std 4,136(31)
	std 5,144(31)
	ld 9,128(31)
	std 9,48(31)
	b .L345
.L346:
	ld 10,136(31)
	addi 9,10,4
	std 9,136(31)
	ld 9,128(31)
	addi 8,9,4
	std 8,128(31)
	lwz 10,0(10)
	stw 10,0(9)
.L345:
	ld 9,144(31)
	addi 10,9,-1
	std 10,144(31)
	cmpdi 0,9,0
	bne 0,.L346
	ld 9,48(31)
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	std 4,136(31)
	std 5,144(31)
	ld 9,128(31)
	std 9,48(31)
	ld 10,128(31)
	ld 9,136(31)
	cmpd 0,10,9
	bne 0,.L349
	ld 9,128(31)
	b .L350
.L349:
	ld 10,128(31)
	ld 9,136(31)
	subf 10,9,10
	ld 9,144(31)
	sldi 9,9,2
	cmpld 0,10,9
	bge 0,.L355
	b .L352
.L353:
	ld 9,144(31)
	sldi 9,9,2
	ld 10,136(31)
	add 10,10,9
	ld 9,144(31)
	sldi 9,9,2
	ld 8,128(31)
	add 9,8,9
	lwz 10,0(10)
	stw 10,0(9)
.L352:
	ld 9,144(31)
	addi 10,9,-1
	std 10,144(31)
	cmpdi 0,9,0
	bne 0,.L353
	b .L354
.L356:
	ld 10,136(31)
	addi 9,10,4
	std 9,136(31)
	ld 9,128(31)
	addi 8,9,4
	std 8,128(31)
	lwz 10,0(10)
	stw 10,0(9)
.L355:
	ld 9,144(31)
	addi 10,9,-1
	std 10,144(31)
	cmpdi 0,9,0
	bne 0,.L356
.L354:
	ld 9,48(31)
.L350:
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	mr 9,4
	std 5,144(31)
	stw 9,136(31)
	ld 9,128(31)
	std 9,48(31)
	b .L358
.L359:
	ld 9,128(31)
	addi 10,9,4
	std 10,128(31)
	lwz 10,136(31)
	stw 10,0(9)
.L358:
	ld 9,144(31)
	addi 10,9,-1
	std 10,144(31)
	cmpdi 0,9,0
	bne 0,.L359
	ld 9,48(31)
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	std 4,136(31)
	std 5,144(31)
	ld 9,128(31)
	std 9,48(31)
	ld 9,136(31)
	std 9,56(31)
	ld 10,48(31)
	ld 9,56(31)
	cmpld 0,10,9
	bge 0,.L362
	ld 10,48(31)
	ld 9,144(31)
	add 9,10,9
	std 9,48(31)
	ld 10,56(31)
	ld 9,144(31)
	add 9,10,9
	std 9,56(31)
	b .L363
.L364:
	ld 9,48(31)
	addi 9,9,-1
	std 9,48(31)
	ld 9,56(31)
	addi 9,9,-1
	std 9,56(31)
	ld 9,48(31)
	lbz 10,0(9)
	ld 9,56(31)
	stb 10,0(9)
	ld 9,144(31)
	addi 9,9,-1
	std 9,144(31)
.L363:
	ld 9,144(31)
	cmpdi 0,9,0
	bne 0,.L364
	b .L368
.L362:
	ld 10,48(31)
	ld 9,56(31)
	cmpd 0,10,9
	beq 0,.L368
	b .L366
.L367:
	ld 10,48(31)
	addi 9,10,1
	std 9,48(31)
	ld 9,56(31)
	addi 8,9,1
	std 8,56(31)
	lbz 10,0(10)
	stb 10,0(9)
	ld 9,144(31)
	addi 9,9,-1
	std 9,144(31)
.L366:
	ld 9,144(31)
	cmpdi 0,9,0
	bne 0,.L367
.L368:
	nop
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	mr 9,4
	stw 9,120(31)
	ld 10,112(31)
	lwz 9,120(31)
	rotld 9,10,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	mr 9,4
	stw 9,120(31)
	lwz 9,120(31)
	subfic 9,9,64
	ld 10,112(31)
	rotld 9,10,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	mr 10,4
	stw 9,112(31)
	mr 9,10
	stw 9,120(31)
	lwz 10,112(31)
	lwz 9,120(31)
	rotlw 9,10,9
	rldicl 9,9,0,32
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	mr 10,4
	stw 9,112(31)
	mr 9,10
	stw 9,120(31)
	lwz 9,120(31)
	subfic 9,9,32
	lwz 10,112(31)
	rotlw 9,10,9
	rldicl 9,9,0,32
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	mr 9,4
	stw 9,120(31)
	ld 10,112(31)
	lwz 9,120(31)
	sld 10,10,9
	lwz 9,120(31)
	subfic 9,9,64
	ld 8,112(31)
	srd 9,8,9
	or 9,10,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	mr 9,4
	stw 9,120(31)
	ld 10,112(31)
	lwz 9,120(31)
	srd 10,10,9
	lwz 9,120(31)
	subfic 9,9,64
	ld 8,112(31)
	sld 9,8,9
	or 9,10,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	mr 10,4
	sth 9,112(31)
	mr 9,10
	stw 9,120(31)
	lhz 10,112(31)
	lwz 9,120(31)
	slw 9,10,9
	mr 8,9
	lhz 10,112(31)
	lwz 9,120(31)
	subfic 9,9,16
	srw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xffff
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	mr 10,4
	sth 9,112(31)
	mr 9,10
	stw 9,120(31)
	lhz 10,112(31)
	lwz 9,120(31)
	srw 9,10,9
	mr 8,9
	lhz 10,112(31)
	lwz 9,120(31)
	subfic 9,9,16
	slw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xffff
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	mr 10,4
	stb 9,112(31)
	mr 9,10
	stw 9,120(31)
	lbz 10,112(31)
	lwz 9,120(31)
	slw 9,10,9
	mr 8,9
	lbz 10,112(31)
	lwz 9,120(31)
	subfic 9,9,8
	srw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	mr 10,4
	stb 9,112(31)
	mr 9,10
	stw 9,120(31)
	lbz 10,112(31)
	lwz 9,120(31)
	srw 9,10,9
	mr 8,9
	lbz 10,112(31)
	lwz 9,120(31)
	subfic 9,9,8
	slw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	sth 9,128(31)
	li 9,255
	std 9,48(31)
	lhz 10,128(31)
	ld 9,48(31)
	sldi 9,9,8
	and 9,10,9
	srdi 9,9,8
	mr 10,9
	ld 9,48(31)
	mr 8,9
	lhz 9,128(31)
	and 9,9,8
	slwi 9,9,8
	or 9,10,9
	rlwinm 9,9,0,0xffff
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,128(31)
	li 9,255
	std 9,48(31)
	lwz 10,128(31)
	ld 9,48(31)
	sldi 9,9,24
	and 9,10,9
	srdi 9,9,24
	mr 8,9
	lwz 10,128(31)
	ld 9,48(31)
	sldi 9,9,16
	and 9,10,9
	srdi 9,9,8
	or 10,8,9
	ld 9,48(31)
	slwi 8,9,8
	lwz 9,128(31)
	and 9,8,9
	slwi 9,9,8
	or 10,10,9
	ld 9,48(31)
	mr 8,9
	lwz 9,128(31)
	and 9,8,9
	slwi 9,9,24
	or 9,10,9
	rldicl 9,9,0,32
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	li 9,255
	std 9,48(31)
	ld 9,48(31)
	sldi 10,9,56
	ld 9,128(31)
	and 9,10,9
	srdi 10,9,56
	ld 9,48(31)
	sldi 8,9,48
	ld 9,128(31)
	and 9,8,9
	srdi 9,9,40
	or 10,10,9
	ld 9,48(31)
	sldi 8,9,40
	ld 9,128(31)
	and 9,8,9
	srdi 9,9,24
	or 10,10,9
	ld 9,48(31)
	sldi 8,9,32
	ld 9,128(31)
	and 9,8,9
	srdi 9,9,8
	or 10,10,9
	ld 9,48(31)
	sldi 8,9,24
	ld 9,128(31)
	and 9,8,9
	sldi 9,9,8
	or 10,10,9
	ld 9,48(31)
	sldi 8,9,16
	ld 9,128(31)
	and 9,8,9
	sldi 9,9,24
	or 10,10,9
	ld 9,48(31)
	sldi 8,9,8
	ld 9,128(31)
	and 9,8,9
	sldi 9,9,40
	or 10,10,9
	ld 8,128(31)
	ld 9,48(31)
	and 9,8,9
	sldi 9,9,56
	or 9,10,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,128(31)
	li 9,0
	stw 9,48(31)
	b .L396
.L399:
	lwz 10,128(31)
	lwz 9,48(31)
	srw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L397
	lwz 9,48(31)
	addi 9,9,1
	b .L398
.L397:
	lwz 9,48(31)
	addi 9,9,1
	stw 9,48(31)
.L396:
	lwz 9,48(31)
	cmplwi 0,9,31
	ble 0,.L399
	li 9,0
.L398:
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	cmpdi 0,9,0
	bne 0,.L401
	li 9,0
	b .L402
.L401:
	li 30,1
	b .L403
.L404:
	srawi 9,9,1
	extsw 9,9
	addi 30,30,1
.L403:
	rlwinm 10,9,0,31,31
	cmpwi 0,10,0
	beq 0,.L404
	mr 9,30
.L402:
	extsw 9,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,2,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,112(31)
	lfs 12,112(31)
	addis 9,2,.LC1@toc@ha
	addi 9,9,.LC1@toc@l
	lfs 0,0(9)
	fcmpu 0,12,0
	blt 0,.L406
	lfs 12,112(31)
	addis 9,2,.LC2@toc@ha
	addi 9,9,.LC2@toc@l
	lfs 0,0(9)
	fcmpu 0,12,0
	bng 0,.L411
.L406:
	li 9,1
	b .L410
.L411:
	li 9,0
.L410:
	extsw 9,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,112(31)
	lfd 12,112(31)
	addis 9,2,.LC3@toc@ha
	addi 9,9,.LC3@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	blt 0,.L413
	lfd 12,112(31)
	addis 9,2,.LC4@toc@ha
	addi 9,9,.LC4@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bng 0,.L418
.L413:
	li 9,1
	b .L417
.L418:
	li 9,0
.L417:
	extsw 9,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,48(31)
	stfd 2,56(31)
	lfd 12,48(31)
	lfd 13,56(31)
	addis 9,2,.LC5@toc@ha
	addi 9,9,.LC5@toc@l
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	blt 0,.L420
	lfd 12,48(31)
	lfd 13,56(31)
	addis 9,2,.LC6@toc@ha
	addi 9,9,.LC6@toc@l
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	bng 0,.L425
.L420:
	li 9,1
	b .L424
.L425:
	li 9,0
.L424:
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	mr 9,4
	stw 9,120(31)
	li 9,56
	addi 10,31,64
	lfiwax 0,10,9
	fcfid 0,0
	fmr 0,0
	xxlxor 1,1,1
	ld 9,112(31)
	stfd 0,0(9)
	stfd 1,8(9)
	nop
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,128(31)
	mr 9,4
	stw 9,136(31)
	lfs 12,128(31)
	lfs 0,128(31)
	fcmpu 0,12,0
	bun 0,.L428
	lfs 0,128(31)
	fadds 0,0,0
	lfs 12,128(31)
	fcmpu 0,12,0
	beq 0,.L428
	lwz 9,136(31)
	cmpwi 0,9,0
	bge 0,.L429
	addis 9,2,.LC7@toc@ha
	addi 9,9,.LC7@toc@l
	lfs 0,0(9)
	b .L430
.L429:
	addis 9,2,.LC8@toc@ha
	addi 9,9,.LC8@toc@l
	lfs 0,0(9)
.L430:
	stfs 0,48(31)
.L433:
	lwz 9,136(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L431
	lfs 12,128(31)
	lfs 0,48(31)
	fmuls 0,12,0
	stfs 0,128(31)
.L431:
	lwz 9,136(31)
	srawi 9,9,1
	addze 9,9
	stw 9,136(31)
	lwz 9,136(31)
	cmpwi 0,9,0
	beq 0,.L435
	lfs 0,48(31)
	fmuls 0,0,0
	stfs 0,48(31)
	b .L433
.L435:
	nop
.L428:
	lfs 0,128(31)
	fmr 1,0
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,128(31)
	mr 9,4
	stw 9,136(31)
	lfd 12,128(31)
	lfd 0,128(31)
	fcmpu 0,12,0
	bun 0,.L437
	lfd 0,128(31)
	fadd 0,0,0
	lfd 12,128(31)
	fcmpu 0,12,0
	beq 0,.L437
	lwz 9,136(31)
	cmpwi 0,9,0
	bge 0,.L438
	addis 9,2,.LC9@toc@ha
	addi 9,9,.LC9@toc@l
	lfd 0,0(9)
	b .L439
.L438:
	addis 9,2,.LC10@toc@ha
	addi 9,9,.LC10@toc@l
	lfd 0,0(9)
.L439:
	stfd 0,48(31)
.L442:
	lwz 9,136(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L440
	lfd 12,128(31)
	lfd 0,48(31)
	fmul 0,12,0
	stfd 0,128(31)
.L440:
	lwz 9,136(31)
	srawi 9,9,1
	addze 9,9
	stw 9,136(31)
	lwz 9,136(31)
	cmpwi 0,9,0
	beq 0,.L444
	lfd 0,48(31)
	fmul 0,0,0
	stfd 0,48(31)
	b .L442
.L444:
	nop
.L437:
	lfd 0,128(31)
	fmr 1,0
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-160(1)
	.cfi_def_cfa_offset 160
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,31,128
	stfd 1,0(9)
	stfd 2,8(9)
	mr 9,5
	stw 9,224(31)
	addi 9,31,128
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,0,0
	bun 0,.L446
	addi 9,31,128
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
	addi 9,31,128
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,0,12
	bne 0,$+8
	fcmpu 0,1,13
	beq 0,.L446
	lwz 9,224(31)
	cmpwi 0,9,0
	bge 0,.L447
	addis 9,2,.LC11@toc@ha
	addi 9,9,.LC11@toc@l
	lfd 0,0(9)
	lfd 1,8(9)
	b .L448
.L447:
	addis 9,2,.LC12@toc@ha
	addi 9,9,.LC12@toc@l
	lfd 0,0(9)
	lfd 1,8(9)
.L448:
	stfd 0,112(31)
	stfd 1,120(31)
.L451:
	lwz 9,224(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L449
	addi 9,31,128
	lfd 3,112(31)
	lfd 4,120(31)
	lfd 1,0(9)
	lfd 2,8(9)
	bl __gcc_qmul
	nop
	fmr 0,1
	fmr 1,2
	addi 9,31,128
	stfd 0,0(9)
	stfd 1,8(9)
.L449:
	lwz 9,224(31)
	srawi 9,9,1
	addze 9,9
	stw 9,224(31)
	lwz 9,224(31)
	cmpwi 0,9,0
	beq 0,.L453
	lfd 3,112(31)
	lfd 4,120(31)
	lfd 1,112(31)
	lfd 2,120(31)
	bl __gcc_qmul
	nop
	fmr 0,1
	fmr 1,2
	stfd 0,112(31)
	stfd 1,120(31)
	b .L451
.L453:
	nop
.L446:
	addi 9,31,128
	lfd 0,0(9)
	lfd 1,8(9)
	fmr 2,1
	fmr 1,0
	addi 1,31,160
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	std 4,136(31)
	std 5,144(31)
	ld 9,136(31)
	std 9,48(31)
	ld 9,128(31)
	std 9,56(31)
	b .L455
.L456:
	ld 9,48(31)
	addi 10,9,1
	std 10,48(31)
	lbz 8,0(9)
	ld 9,56(31)
	addi 10,9,1
	std 10,56(31)
	lbz 10,0(9)
	xor 10,8,10
	stb 10,0(9)
	ld 9,144(31)
	addi 9,9,-1
	std 9,144(31)
.L455:
	ld 9,144(31)
	cmpdi 0,9,0
	bne 0,.L456
	ld 9,128(31)
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-144(1)
	.cfi_def_cfa_offset 144
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,192(31)
	std 4,200(31)
	std 5,208(31)
	ld 3,192(31)
	bl strlen
	mr 10,3
	ld 9,192(31)
	add 9,9,10
	std 9,112(31)
	b .L459
.L461:
	ld 9,200(31)
	addi 9,9,1
	std 9,200(31)
	ld 9,112(31)
	addi 9,9,1
	std 9,112(31)
	ld 9,208(31)
	addi 9,9,-1
	std 9,208(31)
.L459:
	ld 9,208(31)
	cmpdi 0,9,0
	beq 0,.L460
	ld 9,200(31)
	lbz 10,0(9)
	ld 9,112(31)
	stb 10,0(9)
	ld 9,112(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L461
.L460:
	ld 9,208(31)
	cmpdi 0,9,0
	bne 0,.L462
	ld 9,112(31)
	li 10,0
	stb 10,0(9)
.L462:
	ld 9,192(31)
	mr 3,9
	addi 1,31,144
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	std 4,136(31)
	li 9,0
	std 9,48(31)
	b .L465
.L470:
	nop
	ld 9,48(31)
	addi 9,9,1
	std 9,48(31)
.L465:
	ld 10,48(31)
	ld 9,136(31)
	cmpld 0,10,9
	bge 0,.L466
	ld 10,128(31)
	ld 9,48(31)
	add 9,10,9
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L470
.L466:
	ld 9,48(31)
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	std 4,136(31)
	b .L472
.L476:
	ld 9,136(31)
	std 9,48(31)
	b .L473
.L475:
	ld 9,48(31)
	addi 10,9,1
	std 10,48(31)
	lbz 10,0(9)
	ld 9,128(31)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	bne 0,.L473
	ld 9,128(31)
	b .L474
.L473:
	ld 9,48(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L475
	ld 9,128(31)
	addi 9,9,1
	std 9,128(31)
.L472:
	ld 9,128(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L476
	li 9,0
.L474:
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	mr 10,4
	stw 10,136(31)
	li 10,0
	std 10,48(31)
.L479:
	lbz 10,0(9)
	rlwinm 10,10,0,0xff
	lwz 8,136(31)
	cmpw 0,8,10
	bne 0,.L478
	std 9,48(31)
.L478:
	mr 10,9
	addi 9,10,1
	lbz 10,0(10)
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	bne 0,.L479
	ld 9,48(31)
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-144(1)
	.cfi_def_cfa_offset 144
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,192(31)
	std 4,200(31)
	ld 9,192(31)
	std 9,112(31)
	ld 3,200(31)
	bl strlen
	std 3,120(31)
	ld 9,120(31)
	cmpdi 0,9,0
	bne 0,.L484
	ld 9,192(31)
	b .L483
.L486:
	ld 5,120(31)
	ld 4,200(31)
	ld 3,112(31)
	bl strncmp
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L485
	ld 9,112(31)
	b .L483
.L485:
	ld 9,112(31)
	addi 9,9,1
	std 9,112(31)
.L484:
	ld 9,200(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 4,9
	ld 3,112(31)
	bl strchr
	std 3,112(31)
	ld 9,112(31)
	cmpdi 0,9,0
	bne 0,.L486
	li 9,0
.L483:
	mr 3,9
	addi 1,31,144
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,112(31)
	stfd 2,120(31)
	lfd 12,112(31)
	xxlxor 0,0,0
	fcmpu 0,12,0
	bnl 0,.L488
	lfd 12,120(31)
	xxlxor 0,0,0
	fcmpu 0,12,0
	bgt 0,.L490
.L488:
	lfd 12,112(31)
	xxlxor 0,0,0
	fcmpu 0,12,0
	bng 0,.L491
	lfd 12,120(31)
	xxlxor 0,0,0
	fcmpu 0,12,0
	bnl 0,.L491
.L490:
	lfd 0,112(31)
	fneg 0,0
	b .L494
.L491:
	lfd 0,112(31)
.L494:
	fmr 1,0
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-144(1)
	.cfi_def_cfa_offset 144
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,192(31)
	std 4,200(31)
	std 5,208(31)
	std 6,216(31)
	ld 10,200(31)
	ld 9,216(31)
	subf 9,9,10
	ld 10,192(31)
	add 9,10,9
	std 9,120(31)
	ld 9,216(31)
	cmpdi 0,9,0
	bne 0,.L498
	ld 9,192(31)
	b .L499
.L498:
	ld 10,200(31)
	ld 9,216(31)
	subfc 9,9,10
	subfe 9,9,9
	neg 9,9
	rlwinm 9,9,0,0xff
	cmpdi 0,9,0
	beq 0,.L500
	li 9,0
	b .L499
.L500:
	ld 9,192(31)
	std 9,112(31)
	b .L501
.L503:
	ld 9,112(31)
	lbz 10,0(9)
	ld 9,208(31)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	bne 0,.L502
	ld 9,112(31)
	addi 10,9,1
	ld 9,208(31)
	addi 8,9,1
	ld 9,216(31)
	addi 9,9,-1
	mr 5,9
	mr 4,8
	mr 3,10
	bl memcmp
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L502
	ld 9,112(31)
	b .L499
.L502:
	ld 9,112(31)
	addi 9,9,1
	std 9,112(31)
.L501:
	ld 10,112(31)
	ld 9,120(31)
	cmpld 0,10,9
	ble 0,.L503
	li 9,0
.L499:
	mr 3,9
	addi 1,31,144
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,176(31)
	std 4,184(31)
	std 5,192(31)
	ld 5,192(31)
	ld 4,184(31)
	ld 3,176(31)
	bl memcpy
	mr 10,3
	ld 9,192(31)
	add 9,10,9
	mr 3,9
	addi 1,31,128
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,128(31)
	std 4,136(31)
	li 9,0
	stw 9,52(31)
	li 9,0
	stw 9,48(31)
	lfd 12,128(31)
	xxlxor 0,0,0
	fcmpu 0,12,0
	bnl 0,.L507
	lfd 0,128(31)
	fneg 0,0
	stfd 0,128(31)
	li 9,1
	stw 9,48(31)
.L507:
	lfd 12,128(31)
	addis 9,2,.LC13@toc@ha
	addi 9,9,.LC13@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	cror 2,0,3
	beq 0,.L522
	b .L511
.L512:
	lwz 9,52(31)
	addi 9,9,1
	stw 9,52(31)
	lfd 12,128(31)
	addis 9,2,.LC10@toc@ha
	addi 9,9,.LC10@toc@l
	lfd 0,0(9)
	fdiv 0,12,0
	stfd 0,128(31)
.L511:
	lfd 12,128(31)
	addis 9,2,.LC13@toc@ha
	addi 9,9,.LC13@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	cror 2,1,2
	beq 0,.L512
	b .L513
.L522:
	lfd 12,128(31)
	addis 9,2,.LC9@toc@ha
	addi 9,9,.LC9@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bnl 0,.L513
	lfd 12,128(31)
	xxlxor 0,0,0
	fcmpu 0,12,0
	beq 0,.L513
	b .L515
.L516:
	lwz 9,52(31)
	addi 9,9,-1
	stw 9,52(31)
	lfd 0,128(31)
	fadd 0,0,0
	stfd 0,128(31)
.L515:
	lfd 12,128(31)
	addis 9,2,.LC9@toc@ha
	addi 9,9,.LC9@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	blt 0,.L516
.L513:
	ld 9,136(31)
	lwz 10,52(31)
	stw 10,0(9)
	lwz 9,48(31)
	cmpwi 0,9,0
	beq 0,.L517
	lfd 0,128(31)
	fneg 0,0
	stfd 0,128(31)
.L517:
	lfd 0,128(31)
	fmr 1,0
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	std 4,136(31)
	li 9,0
	std 9,48(31)
	ld 9,128(31)
	std 9,56(31)
	b .L524
.L526:
	ld 9,56(31)
	rldicl 9,9,0,63
	cmpdi 0,9,0
	beq 0,.L525
	ld 10,48(31)
	ld 9,136(31)
	add 9,10,9
	std 9,48(31)
.L525:
	ld 9,136(31)
	sldi 9,9,1
	std 9,136(31)
	ld 9,56(31)
	srdi 9,9,1
	std 9,56(31)
.L524:
	ld 9,56(31)
	cmpdi 0,9,0
	bne 0,.L526
	ld 9,48(31)
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	mr 10,4
	std 5,144(31)
	stw 9,128(31)
	mr 9,10
	stw 9,136(31)
	li 9,1
	stw 9,48(31)
	li 9,0
	stw 9,52(31)
	b .L529
.L531:
	lwz 9,136(31)
	slwi 9,9,1
	stw 9,136(31)
	lwz 9,48(31)
	slwi 9,9,1
	stw 9,48(31)
.L529:
	lwz 10,136(31)
	lwz 9,128(31)
	cmplw 0,10,9
	bge 0,.L532
	lwz 9,48(31)
	cmpwi 0,9,0
	beq 0,.L532
	lwz 9,136(31)
	cmpwi 0,9,0
	bge 0,.L531
	b .L532
.L534:
	lwz 10,128(31)
	lwz 9,136(31)
	cmplw 0,10,9
	blt 0,.L533
	lwz 10,128(31)
	lwz 9,136(31)
	subf 9,9,10
	stw 9,128(31)
	lwz 10,52(31)
	lwz 9,48(31)
	or 9,10,9
	stw 9,52(31)
.L533:
	lwz 9,48(31)
	srwi 9,9,1
	stw 9,48(31)
	lwz 9,136(31)
	srwi 9,9,1
	stw 9,136(31)
.L532:
	lwz 9,48(31)
	cmpwi 0,9,0
	bne 0,.L534
	ld 9,144(31)
	cmpdi 0,9,0
	beq 0,.L535
	lwz 9,128(31)
	b .L536
.L535:
	lwz 9,52(31)
.L536:
	rldicl 9,9,0,32
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stb 9,128(31)
	lbz 9,128(31)
	cmpwi 0,9,0
	bne 0,.L538
	li 9,7
	b .L539
.L538:
	lbz 9,128(31)
	slwi 9,9,8
	cntlzw 9,9
	stw 9,48(31)
	lwz 9,48(31)
	addi 9,9,-1
.L539:
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	ld 9,128(31)
	cmpdi 0,9,0
	bge 0,.L541
	ld 9,128(31)
	not 9,9
	std 9,128(31)
.L541:
	ld 9,128(31)
	cmpdi 0,9,0
	bne 0,.L542
	li 9,63
	b .L543
.L542:
	ld 9,128(31)
	cntlzd 9,9
	stw 9,48(31)
	lwz 9,48(31)
	addi 9,9,-1
.L543:
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	mr 10,4
	stw 9,128(31)
	mr 9,10
	stw 9,136(31)
	li 9,0
	stw 9,48(31)
	b .L545
.L547:
	lwz 9,128(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L546
	lwz 10,48(31)
	lwz 9,136(31)
	add 9,10,9
	stw 9,48(31)
.L546:
	lwz 9,128(31)
	srwi 9,9,1
	stw 9,128(31)
	lwz 9,136(31)
	slwi 9,9,1
	stw 9,136(31)
.L545:
	lwz 9,128(31)
	cmpwi 0,9,0
	bne 0,.L547
	lwz 9,48(31)
	rldicl 9,9,0,32
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,144(31)
	std 4,152(31)
	mr 9,5
	stw 9,160(31)
	lwz 9,160(31)
	srwi 9,9,3
	stw 9,56(31)
	lwz 9,160(31)
	rlwinm 9,9,0,0,28
	stw 9,52(31)
	ld 9,144(31)
	std 9,64(31)
	ld 9,152(31)
	std 9,72(31)
	ld 10,64(31)
	ld 9,72(31)
	cmpld 0,10,9
	blt 0,.L550
	lwz 9,160(31)
	ld 10,72(31)
	add 9,10,9
	ld 10,64(31)
	cmpld 0,10,9
	ble 0,.L557
.L550:
	li 9,0
	stw 9,48(31)
	b .L552
.L553:
	lwz 9,48(31)
	sldi 9,9,3
	ld 10,152(31)
	add 10,10,9
	lwz 9,48(31)
	sldi 9,9,3
	ld 8,144(31)
	add 9,8,9
	ld 10,0(10)
	std 10,0(9)
	lwz 9,48(31)
	addi 9,9,1
	stw 9,48(31)
.L552:
	lwz 10,48(31)
	lwz 9,56(31)
	cmplw 0,10,9
	blt 0,.L553
	b .L554
.L555:
	lwz 9,52(31)
	ld 10,72(31)
	add 10,10,9
	lwz 9,52(31)
	ld 8,64(31)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,52(31)
	addi 9,9,1
	stw 9,52(31)
.L554:
	lwz 10,160(31)
	lwz 9,52(31)
	cmplw 0,10,9
	bgt 0,.L555
	b .L556
.L558:
	lwz 9,160(31)
	ld 10,72(31)
	add 10,10,9
	lwz 9,160(31)
	ld 8,64(31)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
.L557:
	lwz 9,160(31)
	addi 10,9,-1
	stw 10,160(31)
	cmpwi 0,9,0
	bne 0,.L558
	nop
.L556:
	nop
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,144(31)
	std 4,152(31)
	mr 9,5
	stw 9,160(31)
	lwz 9,160(31)
	srwi 9,9,1
	stw 9,52(31)
	ld 9,144(31)
	std 9,56(31)
	ld 9,152(31)
	std 9,64(31)
	ld 10,56(31)
	ld 9,64(31)
	cmpld 0,10,9
	blt 0,.L560
	lwz 9,160(31)
	ld 10,64(31)
	add 9,10,9
	ld 10,56(31)
	cmpld 0,10,9
	ble 0,.L566
.L560:
	li 9,0
	stw 9,48(31)
	b .L562
.L563:
	lwz 9,48(31)
	sldi 9,9,1
	ld 10,152(31)
	add 10,10,9
	lwz 9,48(31)
	sldi 9,9,1
	ld 8,144(31)
	add 9,8,9
	lhz 10,0(10)
	sth 10,0(9)
	lwz 9,48(31)
	addi 9,9,1
	stw 9,48(31)
.L562:
	lwz 10,48(31)
	lwz 9,52(31)
	cmplw 0,10,9
	blt 0,.L563
	lwz 9,160(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L565
	lwz 9,160(31)
	addi 9,9,-1
	rldicl 9,9,0,32
	ld 10,64(31)
	add 10,10,9
	lwz 9,160(31)
	addi 9,9,-1
	rldicl 9,9,0,32
	ld 8,56(31)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
	b .L565
.L567:
	lwz 9,160(31)
	ld 10,64(31)
	add 10,10,9
	lwz 9,160(31)
	ld 8,56(31)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
.L566:
	lwz 9,160(31)
	addi 10,9,-1
	stw 10,160(31)
	cmpwi 0,9,0
	bne 0,.L567
	nop
.L565:
	nop
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,144(31)
	std 4,152(31)
	mr 9,5
	stw 9,160(31)
	lwz 9,160(31)
	srwi 9,9,2
	stw 9,56(31)
	lwz 9,160(31)
	rlwinm 9,9,0,0,29
	stw 9,52(31)
	ld 9,144(31)
	std 9,64(31)
	ld 9,152(31)
	std 9,72(31)
	ld 10,64(31)
	ld 9,72(31)
	cmpld 0,10,9
	blt 0,.L569
	lwz 9,160(31)
	ld 10,72(31)
	add 9,10,9
	ld 10,64(31)
	cmpld 0,10,9
	ble 0,.L576
.L569:
	li 9,0
	stw 9,48(31)
	b .L571
.L572:
	lwz 9,48(31)
	sldi 9,9,2
	ld 10,152(31)
	add 10,10,9
	lwz 9,48(31)
	sldi 9,9,2
	ld 8,144(31)
	add 9,8,9
	lwz 10,0(10)
	stw 10,0(9)
	lwz 9,48(31)
	addi 9,9,1
	stw 9,48(31)
.L571:
	lwz 10,48(31)
	lwz 9,56(31)
	cmplw 0,10,9
	blt 0,.L572
	b .L573
.L574:
	lwz 9,52(31)
	ld 10,72(31)
	add 10,10,9
	lwz 9,52(31)
	ld 8,64(31)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,52(31)
	addi 9,9,1
	stw 9,52(31)
.L573:
	lwz 10,160(31)
	lwz 9,52(31)
	cmplw 0,10,9
	bgt 0,.L574
	b .L575
.L577:
	lwz 9,160(31)
	ld 10,72(31)
	add 10,10,9
	lwz 9,160(31)
	ld 8,64(31)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
.L576:
	lwz 9,160(31)
	addi 10,9,-1
	stw 10,160(31)
	cmpwi 0,9,0
	bne 0,.L577
	nop
.L575:
	nop
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	mr 10,4
	stw 9,112(31)
	mr 9,10
	stw 9,120(31)
	lwz 9,112(31)
	lwz 10,120(31)
	divw 8,9,10
	lwz 10,120(31)
	mullw 10,8,10
	subf 9,10,9
	extsw 9,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	li 9,48
	addi 10,31,64
	lfiwzx 0,10,9
	fcfid 0,0
	fmr 1,0
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	li 9,48
	addi 10,31,64
	lfiwzx 0,10,9
	fcfids 0,0
	fmr 1,0
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	addi 9,31,112
	lxsdx 32,0,9
	xscvuxddp 0,32
	fmr 1,0
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	lfd 0,112(31)
	fcfidus 0,0
	fmr 1,0
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	mr 10,4
	stw 9,112(31)
	mr 9,10
	stw 9,120(31)
	lwz 9,112(31)
	lwz 10,120(31)
	divwu 8,9,10
	lwz 10,120(31)
	mullw 10,8,10
	subf 9,10,9
	rldicl 9,9,0,32
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	sth 9,128(31)
	li 9,0
	stw 9,48(31)
	b .L591
.L594:
	lhz 10,128(31)
	lwz 9,48(31)
	subfic 9,9,15
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	bne 0,.L596
	lwz 9,48(31)
	addi 9,9,1
	stw 9,48(31)
.L591:
	lwz 9,48(31)
	cmpwi 0,9,15
	ble 0,.L594
	b .L593
.L596:
	nop
.L593:
	lwz 9,48(31)
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	sth 9,128(31)
	li 9,0
	stw 9,48(31)
	b .L598
.L601:
	lhz 10,128(31)
	lwz 9,48(31)
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	bne 0,.L603
	lwz 9,48(31)
	addi 9,9,1
	stw 9,48(31)
.L598:
	lwz 9,48(31)
	cmpwi 0,9,15
	ble 0,.L601
	b .L600
.L603:
	nop
.L600:
	lwz 9,48(31)
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,128(31)
	lfs 12,128(31)
	addis 9,2,.LC14@toc@ha
	addi 9,9,.LC14@toc@l
	lfs 0,0(9)
	fcmpu 0,12,0
	cror 2,0,3
	beq 0,.L609
	lfs 12,128(31)
	addis 9,2,.LC14@toc@ha
	addi 9,9,.LC14@toc@l
	lfs 0,0(9)
	fsubs 0,12,0
	fctidz 0,0
	stfd 0,48(31)
	ld 9,48(31)
	addis 9,9,0x1
	addi 9,9,-32768
	b .L607
.L609:
	lfs 0,128(31)
	fctidz 0,0
	stfd 0,48(31)
	ld 9,48(31)
.L607:
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	sth 9,128(31)
	li 9,0
	stw 9,52(31)
	li 9,0
	stw 9,48(31)
	b .L611
.L613:
	lhz 10,128(31)
	lwz 9,48(31)
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L612
	lwz 9,52(31)
	addi 9,9,1
	stw 9,52(31)
.L612:
	lwz 9,48(31)
	addi 9,9,1
	stw 9,48(31)
.L611:
	lwz 9,48(31)
	cmpwi 0,9,15
	ble 0,.L613
	lwz 9,52(31)
	rlwinm 9,9,0,31,31
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	sth 9,128(31)
	li 9,0
	stw 9,52(31)
	li 9,0
	stw 9,48(31)
	b .L616
.L618:
	lhz 10,128(31)
	lwz 9,48(31)
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L617
	lwz 9,52(31)
	addi 9,9,1
	stw 9,52(31)
.L617:
	lwz 9,48(31)
	addi 9,9,1
	stw 9,48(31)
.L616:
	lwz 9,48(31)
	cmpwi 0,9,15
	ble 0,.L618
	lwz 9,52(31)
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	mr 10,4
	stw 9,128(31)
	mr 9,10
	stw 9,136(31)
	li 9,0
	stw 9,48(31)
	b .L621
.L623:
	lwz 9,128(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L622
	lwz 10,48(31)
	lwz 9,136(31)
	add 9,10,9
	stw 9,48(31)
.L622:
	lwz 9,128(31)
	srwi 9,9,1
	stw 9,128(31)
	lwz 9,136(31)
	slwi 9,9,1
	stw 9,136(31)
.L621:
	lwz 9,128(31)
	cmpwi 0,9,0
	bne 0,.L623
	lwz 9,48(31)
	rldicl 9,9,0,32
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	mr 10,4
	stw 9,128(31)
	mr 9,10
	stw 9,136(31)
	li 9,0
	stw 9,48(31)
	lwz 9,128(31)
	cmpwi 0,9,0
	bne 0,.L628
	li 9,0
	b .L627
.L630:
	lwz 9,136(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L629
	lwz 10,48(31)
	lwz 9,128(31)
	add 9,10,9
	stw 9,48(31)
.L629:
	lwz 9,128(31)
	slwi 9,9,1
	stw 9,128(31)
	lwz 9,136(31)
	srwi 9,9,1
	stw 9,136(31)
.L628:
	lwz 9,136(31)
	cmpwi 0,9,0
	bne 0,.L630
	lwz 9,48(31)
.L627:
	rldicl 9,9,0,32
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	mr 8,4
	mr 10,5
	stw 9,128(31)
	mr 9,8
	stw 9,136(31)
	mr 9,10
	stw 9,144(31)
	li 9,1
	stw 9,48(31)
	li 9,0
	stw 9,52(31)
	b .L632
.L634:
	lwz 9,136(31)
	slwi 9,9,1
	stw 9,136(31)
	lwz 9,48(31)
	slwi 9,9,1
	stw 9,48(31)
.L632:
	lwz 10,136(31)
	lwz 9,128(31)
	cmplw 0,10,9
	bge 0,.L635
	lwz 9,48(31)
	cmpwi 0,9,0
	beq 0,.L635
	lwz 9,136(31)
	cmpwi 0,9,0
	bge 0,.L634
	b .L635
.L637:
	lwz 10,128(31)
	lwz 9,136(31)
	cmplw 0,10,9
	blt 0,.L636
	lwz 10,128(31)
	lwz 9,136(31)
	subf 9,9,10
	stw 9,128(31)
	lwz 10,52(31)
	lwz 9,48(31)
	or 9,10,9
	stw 9,52(31)
.L636:
	lwz 9,48(31)
	srwi 9,9,1
	stw 9,48(31)
	lwz 9,136(31)
	srwi 9,9,1
	stw 9,136(31)
.L635:
	lwz 9,48(31)
	cmpwi 0,9,0
	bne 0,.L637
	lwz 9,144(31)
	cmpwi 0,9,0
	beq 0,.L638
	lwz 9,128(31)
	b .L639
.L638:
	lwz 9,52(31)
.L639:
	rldicl 9,9,0,32
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,112(31)
	stfs 2,120(31)
	lfs 12,112(31)
	lfs 0,120(31)
	fcmpu 0,12,0
	bnl 0,.L648
	li 9,-1
	b .L643
.L648:
	lfs 12,112(31)
	lfs 0,120(31)
	fcmpu 0,12,0
	bng 0,.L649
	li 9,1
	b .L643
.L649:
	li 9,0
.L643:
	extsw 9,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,112(31)
	stfd 2,120(31)
	lfd 12,112(31)
	lfd 0,120(31)
	fcmpu 0,12,0
	bnl 0,.L658
	li 9,-1
	b .L653
.L658:
	lfd 12,112(31)
	lfd 0,120(31)
	fcmpu 0,12,0
	bng 0,.L659
	li 9,1
	b .L653
.L659:
	li 9,0
.L653:
	extsw 9,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	std 4,120(31)
	ld 10,112(31)
	ld 9,120(31)
	mulld 9,10,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	std 4,120(31)
	ld 10,112(31)
	ld 9,120(31)
	mulld 9,10,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	mr 10,4
	stw 9,128(31)
	mr 9,10
	stw 9,136(31)
	li 9,0
	stw 9,52(31)
	li 9,0
	stw 9,56(31)
	lwz 9,136(31)
	cmpwi 0,9,0
	bge 0,.L665
	lwz 9,136(31)
	neg 9,9
	stw 9,136(31)
	li 9,1
	stw 9,52(31)
.L665:
	li 9,0
	stb 9,48(31)
	b .L666
.L669:
	lwz 9,136(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L667
	lwz 10,56(31)
	lwz 9,128(31)
	add 9,10,9
	stw 9,56(31)
.L667:
	lwz 9,128(31)
	slwi 9,9,1
	stw 9,128(31)
	lwz 9,136(31)
	srawi 9,9,1
	stw 9,136(31)
	lbz 9,48(31)
	addi 9,9,1
	stb 9,48(31)
.L666:
	lwz 9,136(31)
	cmpwi 0,9,0
	beq 0,.L668
	lbz 9,48(31)
	cmplwi 0,9,31
	ble 0,.L669
.L668:
	lwz 9,52(31)
	cmpwi 0,9,0
	beq 0,.L670
	lwz 9,56(31)
	neg 9,9
	b .L672
.L670:
	lwz 9,56(31)
.L672:
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-144(1)
	.cfi_def_cfa_offset 144
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,192(31)
	std 4,200(31)
	li 9,0
	stw 9,112(31)
	ld 9,192(31)
	cmpdi 0,9,0
	bge 0,.L674
	ld 9,192(31)
	neg 9,9
	std 9,192(31)
	lwz 9,112(31)
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 9,9,0,0xff
	stw 9,112(31)
.L674:
	ld 9,200(31)
	cmpdi 0,9,0
	bge 0,.L675
	ld 9,200(31)
	neg 9,9
	std 9,200(31)
	lwz 9,112(31)
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 9,9,0,0xff
	stw 9,112(31)
.L675:
	ld 9,192(31)
	mr 8,9
	ld 9,200(31)
	rldicl 10,9,0,32
	rldicl 9,8,0,32
	li 5,0
	mr 4,10
	mr 3,9
	bl __udivmodsi4
	mr 9,3
	rldicl 9,9,0,32
	std 9,120(31)
	lwz 9,112(31)
	cmpwi 0,9,0
	beq 0,.L676
	ld 9,120(31)
	neg 9,9
	std 9,120(31)
.L676:
	ld 9,120(31)
	mr 3,9
	addi 1,31,144
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-144(1)
	.cfi_def_cfa_offset 144
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,192(31)
	std 4,200(31)
	li 9,0
	stw 9,112(31)
	ld 9,192(31)
	cmpdi 0,9,0
	bge 0,.L679
	ld 9,192(31)
	neg 9,9
	std 9,192(31)
	li 9,1
	stw 9,112(31)
.L679:
	ld 9,200(31)
	cmpdi 0,9,0
	bge 0,.L680
	ld 9,200(31)
	neg 9,9
	std 9,200(31)
.L680:
	ld 9,192(31)
	mr 8,9
	ld 9,200(31)
	rldicl 10,9,0,32
	rldicl 9,8,0,32
	li 5,1
	mr 4,10
	mr 3,9
	bl __udivmodsi4
	mr 9,3
	rldicl 9,9,0,32
	std 9,120(31)
	lwz 9,112(31)
	cmpwi 0,9,0
	beq 0,.L681
	ld 9,120(31)
	neg 9,9
	std 9,120(31)
.L681:
	ld 9,120(31)
	mr 3,9
	addi 1,31,144
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	mr 8,4
	mr 10,5
	sth 9,128(31)
	mr 9,8
	sth 9,136(31)
	mr 9,10
	stw 9,144(31)
	li 9,1
	sth 9,48(31)
	li 9,0
	sth 9,50(31)
	b .L684
.L686:
	lhz 9,136(31)
	slwi 9,9,1
	sth 9,136(31)
	lhz 9,48(31)
	slwi 9,9,1
	sth 9,48(31)
.L684:
	lhz 10,136(31)
	lhz 9,128(31)
	cmplw 0,10,9
	bge 0,.L687
	lhz 9,48(31)
	cmpwi 0,9,0
	beq 0,.L687
	lhz 9,136(31)
	extsh 9,9
	cmpwi 0,9,0
	bge 0,.L686
	b .L687
.L689:
	lhz 10,128(31)
	lhz 9,136(31)
	cmplw 0,10,9
	blt 0,.L688
	lhz 10,128(31)
	lhz 9,136(31)
	subf 9,9,10
	sth 9,128(31)
	lhz 10,50(31)
	lhz 9,48(31)
	or 9,10,9
	sth 9,50(31)
.L688:
	lhz 9,48(31)
	srwi 9,9,1
	sth 9,48(31)
	lhz 9,136(31)
	srwi 9,9,1
	sth 9,136(31)
.L687:
	lhz 9,48(31)
	cmpwi 0,9,0
	bne 0,.L689
	lwz 9,144(31)
	cmpwi 0,9,0
	beq 0,.L690
	lhz 9,128(31)
	b .L691
.L690:
	lhz 9,50(31)
.L691:
	rlwinm 9,9,0,0xffff
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	std 4,136(31)
	mr 9,5
	stw 9,144(31)
	li 9,1
	std 9,48(31)
	li 9,0
	std 9,56(31)
	b .L693
.L695:
	ld 9,136(31)
	sldi 9,9,1
	std 9,136(31)
	ld 9,48(31)
	sldi 9,9,1
	std 9,48(31)
.L693:
	ld 10,136(31)
	ld 9,128(31)
	cmpld 0,10,9
	bge 0,.L696
	ld 9,48(31)
	cmpdi 0,9,0
	beq 0,.L696
	ld 9,136(31)
	rlwinm 9,9,0,0,0
	cmpdi 0,9,0
	beq 0,.L695
	b .L696
.L698:
	ld 10,128(31)
	ld 9,136(31)
	cmpld 0,10,9
	blt 0,.L697
	ld 10,128(31)
	ld 9,136(31)
	subf 9,9,10
	std 9,128(31)
	ld 10,56(31)
	ld 9,48(31)
	or 9,10,9
	std 9,56(31)
.L697:
	ld 9,48(31)
	srdi 9,9,1
	std 9,48(31)
	ld 9,136(31)
	srdi 9,9,1
	std 9,136(31)
.L696:
	ld 9,48(31)
	cmpdi 0,9,0
	bne 0,.L698
	lwz 9,144(31)
	cmpwi 0,9,0
	beq 0,.L699
	ld 9,128(31)
	b .L700
.L699:
	ld 9,56(31)
.L700:
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,144(31)
	mr 9,4
	stw 9,152(31)
	li 9,32
	stw 9,48(31)
	ld 9,144(31)
	std 9,56(31)
	lwz 10,152(31)
	lwz 9,48(31)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L702
	li 9,0
	stw 9,68(31)
	lwz 10,60(31)
	lwz 8,152(31)
	lwz 9,48(31)
	subf 9,9,8
	slw 9,10,9
	stw 9,64(31)
	b .L703
.L702:
	lwz 9,152(31)
	cmpwi 0,9,0
	bne 0,.L704
	ld 9,144(31)
	b .L706
.L704:
	lwz 10,60(31)
	lwz 9,152(31)
	slw 9,10,9
	stw 9,68(31)
	lwz 9,56(31)
	mr 10,9
	lwz 9,152(31)
	slw 10,10,9
	lwz 8,60(31)
	lwz 7,48(31)
	lwz 9,152(31)
	subf 9,9,7
	srw 9,8,9
	or 9,10,9
	stw 9,64(31)
.L703:
	ld 9,64(31)
.L706:
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-144(1)
	.cfi_def_cfa_offset 144
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,31,96
	std 3,0(9)
	std 4,8(9)
	mr 9,5
	stw 9,208(31)
	li 9,64
	stw 9,48(31)
	addi 9,31,96
	lxvd2x 0,0,9
	addi 9,31,64
	stxvd2x 0,0,9
	lwz 10,208(31)
	lwz 9,48(31)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L708
	li 9,0
	std 9,88(31)
	ld 10,72(31)
	lwz 8,208(31)
	lwz 9,48(31)
	subf 9,9,8
	sld 9,10,9
	std 9,80(31)
	b .L709
.L708:
	lwz 9,208(31)
	cmpwi 0,9,0
	bne 0,.L710
	addi 9,31,96
	lxvd2x 0,0,9
	b .L712
.L710:
	ld 10,72(31)
	lwz 9,208(31)
	sld 9,10,9
	std 9,88(31)
	ld 9,64(31)
	mr 10,9
	lwz 9,208(31)
	sld 10,10,9
	ld 8,72(31)
	lwz 7,48(31)
	lwz 9,208(31)
	subf 9,9,7
	srd 9,8,9
	or 9,10,9
	std 9,80(31)
.L709:
	addi 9,31,80
	lxvd2x 0,0,9
.L712:
	addi 9,31,112
	stxvd2x 0,0,9
	addi 9,31,112
	ld 10,0(9)
	ld 11,8(9)
	mr 3,10
	mr 4,11
	addi 1,31,144
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,144(31)
	mr 9,4
	stw 9,152(31)
	li 9,32
	stw 9,48(31)
	ld 9,144(31)
	std 9,56(31)
	lwz 10,152(31)
	lwz 9,48(31)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L714
	lwz 10,56(31)
	lwz 9,48(31)
	addi 9,9,-1
	sraw 9,10,9
	stw 9,64(31)
	lwz 10,56(31)
	lwz 8,152(31)
	lwz 9,48(31)
	subf 9,9,8
	sraw 9,10,9
	stw 9,68(31)
	b .L715
.L714:
	lwz 9,152(31)
	cmpwi 0,9,0
	bne 0,.L716
	ld 9,144(31)
	b .L718
.L716:
	lwz 10,56(31)
	lwz 9,152(31)
	sraw 9,10,9
	stw 9,64(31)
	lwz 9,56(31)
	mr 8,9
	lwz 10,48(31)
	lwz 9,152(31)
	subf 9,9,10
	slw 10,8,9
	lwz 8,60(31)
	lwz 9,152(31)
	srw 9,8,9
	or 9,10,9
	stw 9,68(31)
.L715:
	ld 9,64(31)
.L718:
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-144(1)
	.cfi_def_cfa_offset 144
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,31,96
	std 3,0(9)
	std 4,8(9)
	mr 9,5
	stw 9,208(31)
	li 9,64
	stw 9,48(31)
	addi 9,31,96
	lxvd2x 0,0,9
	addi 9,31,64
	stxvd2x 0,0,9
	lwz 10,208(31)
	lwz 9,48(31)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L720
	ld 10,64(31)
	lwz 9,48(31)
	addi 9,9,-1
	srad 9,10,9
	std 9,80(31)
	ld 10,64(31)
	lwz 8,208(31)
	lwz 9,48(31)
	subf 9,9,8
	srad 9,10,9
	std 9,88(31)
	b .L721
.L720:
	lwz 9,208(31)
	cmpwi 0,9,0
	bne 0,.L722
	addi 9,31,96
	lxvd2x 0,0,9
	b .L724
.L722:
	ld 10,64(31)
	lwz 9,208(31)
	srad 9,10,9
	std 9,80(31)
	ld 9,64(31)
	mr 8,9
	lwz 10,48(31)
	lwz 9,208(31)
	subf 9,9,10
	sld 10,8,9
	ld 8,72(31)
	lwz 9,208(31)
	srd 9,8,9
	or 9,10,9
	std 9,88(31)
.L721:
	addi 9,31,80
	lxvd2x 0,0,9
.L724:
	addi 9,31,112
	stxvd2x 0,0,9
	addi 9,31,112
	ld 10,0(9)
	ld 11,8(9)
	mr 3,10
	mr 4,11
	addi 1,31,144
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	ld 9,112(31)
	srdi 10,9,56
	ld 9,112(31)
	srdi 9,9,40
	rlwinm 9,9,0,16,23
	or 10,10,9
	ld 9,112(31)
	srdi 9,9,24
	rlwinm 9,9,0,8,15
	or 10,10,9
	ld 9,112(31)
	srdi 9,9,8
	rlwinm 9,9,0,0,7
	or 10,10,9
	ld 9,112(31)
	sldi 9,9,8
	sldi 9,9,24
	rldicr 9,9,0,7
	srdi 9,9,24
	or 10,10,9
	ld 9,112(31)
	sldi 9,9,24
	sldi 9,9,16
	rldicr 9,9,0,7
	srdi 9,9,16
	or 10,10,9
	ld 9,112(31)
	sldi 9,9,40
	sldi 9,9,8
	rldicr 9,9,0,7
	srdi 9,9,8
	or 10,10,9
	ld 9,112(31)
	sldi 9,9,56
	or 9,10,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,112(31)
	lwz 9,112(31)
	srwi 10,9,24
	lwz 9,112(31)
	srwi 9,9,8
	rlwinm 9,9,0,16,23
	or 10,10,9
	lwz 9,112(31)
	slwi 9,9,8
	rlwinm 9,9,0,8,15
	or 10,10,9
	lwz 9,112(31)
	slwi 9,9,24
	or 9,10,9
	rldicl 9,9,0,32
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,128(31)
	lwz 9,128(31)
	stw 9,48(31)
	lwz 10,48(31)
	lis 9,0x1
	cmplw 0,10,9
	bge 0,.L730
	li 9,16
	b .L731
.L730:
	li 9,0
.L731:
	stw 9,52(31)
	lwz 9,52(31)
	subfic 9,9,16
	lwz 10,48(31)
	srw 9,10,9
	stw 9,48(31)
	lwz 9,52(31)
	stw 9,56(31)
	lwz 9,48(31)
	rlwinm 9,9,0,16,23
	cmpwi 0,9,0
	bne 0,.L732
	li 9,8
	b .L733
.L732:
	li 9,0
.L733:
	stw 9,52(31)
	lwz 9,52(31)
	subfic 9,9,8
	lwz 10,48(31)
	srw 9,10,9
	stw 9,48(31)
	lwz 9,52(31)
	lwz 10,56(31)
	add 9,10,9
	stw 9,56(31)
	lwz 9,48(31)
	rlwinm 9,9,0,24,27
	cmpwi 0,9,0
	bne 0,.L734
	li 9,4
	b .L735
.L734:
	li 9,0
.L735:
	stw 9,52(31)
	lwz 9,52(31)
	subfic 9,9,4
	lwz 10,48(31)
	srw 9,10,9
	stw 9,48(31)
	lwz 9,52(31)
	lwz 10,56(31)
	add 9,10,9
	stw 9,56(31)
	lwz 9,48(31)
	rlwinm 9,9,0,28,29
	cmpwi 0,9,0
	bne 0,.L736
	li 9,2
	b .L737
.L736:
	li 9,0
.L737:
	stw 9,52(31)
	lwz 9,52(31)
	subfic 9,9,2
	lwz 10,48(31)
	srw 9,10,9
	stw 9,48(31)
	lwz 9,52(31)
	lwz 10,56(31)
	add 9,10,9
	stw 9,56(31)
	lwz 9,48(31)
	rlwinm 9,9,0,30,30
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 9,9,0,0xff
	mr 10,9
	lwz 9,48(31)
	subfic 9,9,2
	mullw 10,10,9
	lwz 9,56(31)
	add 9,10,9
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,31,80
	std 3,0(9)
	std 4,8(9)
	addi 9,31,80
	lxvd2x 0,0,9
	addi 9,31,64
	stxvd2x 0,0,9
	ld 9,64(31)
	cntlzd 9,9
	srdi 9,9,6
	rlwinm 9,9,0,0xff
	neg 9,9
	extsw 9,9
	std 9,48(31)
	ld 10,64(31)
	ld 9,48(31)
	not 9,9
	and 9,10,9
	mr 8,9
	ld 10,72(31)
	ld 9,48(31)
	and 9,10,9
	or 9,8,9
	cntlzd 9,9
	mr 10,9
	ld 9,48(31)
	rlwinm 9,9,0,25,25
	add 9,10,9
	extsw 9,9
	mr 3,9
	addi 1,31,112
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	std 4,136(31)
	ld 9,128(31)
	std 9,48(31)
	ld 9,136(31)
	std 9,56(31)
	lwz 10,48(31)
	lwz 9,56(31)
	cmpw 0,10,9
	bge 0,.L742
	li 9,0
	b .L747
.L742:
	lwz 10,48(31)
	lwz 9,56(31)
	cmpw 0,10,9
	ble 0,.L744
	li 9,2
	b .L747
.L744:
	lwz 10,52(31)
	lwz 9,60(31)
	cmplw 0,10,9
	bge 0,.L745
	li 9,0
	b .L747
.L745:
	lwz 10,52(31)
	lwz 9,60(31)
	cmplw 0,10,9
	ble 0,.L746
	li 9,2
	b .L747
.L746:
	li 9,1
.L747:
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,176(31)
	std 4,184(31)
	ld 4,184(31)
	ld 3,176(31)
	bl __cmpdi2
	mr 9,3
	addi 9,9,-1
	extsw 9,9
	mr 3,9
	addi 1,31,128
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,31,80
	std 3,0(9)
	std 4,8(9)
	addi 9,31,96
	std 5,0(9)
	std 6,8(9)
	addi 9,31,80
	lxvd2x 0,0,9
	addi 9,31,48
	stxvd2x 0,0,9
	addi 9,31,96
	lxvd2x 0,0,9
	addi 9,31,64
	stxvd2x 0,0,9
	ld 10,48(31)
	ld 9,64(31)
	cmpd 0,10,9
	bge 0,.L751
	li 9,0
	b .L756
.L751:
	ld 10,48(31)
	ld 9,64(31)
	cmpd 0,10,9
	ble 0,.L753
	li 9,2
	b .L756
.L753:
	ld 10,56(31)
	ld 9,72(31)
	cmpld 0,10,9
	bge 0,.L754
	li 9,0
	b .L756
.L754:
	ld 10,56(31)
	ld 9,72(31)
	cmpld 0,10,9
	ble 0,.L755
	li 9,2
	b .L756
.L755:
	li 9,1
.L756:
	extsw 9,9
	mr 3,9
	addi 1,31,128
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,128(31)
	lwz 9,128(31)
	stw 9,48(31)
	lwz 9,48(31)
	rlwinm 9,9,0,16,31
	cmpwi 0,9,0
	bne 0,.L758
	li 9,16
	b .L759
.L758:
	li 9,0
.L759:
	stw 9,52(31)
	lwz 10,48(31)
	lwz 9,52(31)
	srw 9,10,9
	stw 9,48(31)
	lwz 9,52(31)
	stw 9,56(31)
	lwz 9,48(31)
	rlwinm 9,9,0,24,31
	cmpwi 0,9,0
	bne 0,.L760
	li 9,8
	b .L761
.L760:
	li 9,0
.L761:
	stw 9,52(31)
	lwz 10,48(31)
	lwz 9,52(31)
	srw 9,10,9
	stw 9,48(31)
	lwz 9,52(31)
	lwz 10,56(31)
	add 9,10,9
	stw 9,56(31)
	lwz 9,48(31)
	rlwinm 9,9,0,28,31
	cmpwi 0,9,0
	bne 0,.L762
	li 9,4
	b .L763
.L762:
	li 9,0
.L763:
	stw 9,52(31)
	lwz 10,48(31)
	lwz 9,52(31)
	srw 9,10,9
	stw 9,48(31)
	lwz 9,52(31)
	lwz 10,56(31)
	add 9,10,9
	stw 9,56(31)
	lwz 9,48(31)
	rlwinm 9,9,0,30,31
	cmpwi 0,9,0
	bne 0,.L764
	li 9,2
	b .L765
.L764:
	li 9,0
.L765:
	stw 9,52(31)
	lwz 10,48(31)
	lwz 9,52(31)
	srw 9,10,9
	stw 9,48(31)
	lwz 9,48(31)
	rlwinm 9,9,0,30,31
	stw 9,48(31)
	lwz 9,52(31)
	lwz 10,56(31)
	add 9,10,9
	stw 9,56(31)
	lwz 9,48(31)
	not 9,9
	rlwinm 10,9,0,31,31
	lwz 9,48(31)
	srwi 9,9,1
	subfic 9,9,2
	neg 10,10
	and 10,10,9
	lwz 9,56(31)
	add 9,10,9
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,31,80
	std 3,0(9)
	std 4,8(9)
	addi 9,31,80
	lxvd2x 0,0,9
	addi 9,31,64
	stxvd2x 0,0,9
	ld 9,72(31)
	cntlzd 9,9
	srdi 9,9,6
	rlwinm 9,9,0,0xff
	neg 9,9
	extsw 9,9
	std 9,48(31)
	ld 10,64(31)
	ld 9,48(31)
	and 9,10,9
	mr 8,9
	ld 10,72(31)
	ld 9,48(31)
	not 9,9
	and 9,10,9
	or 9,8,9
	addi 10,9,-1
	not 9,9
	and 9,10,9
	popcntd 9,9
	mr 10,9
	ld 9,48(31)
	rlwinm 9,9,0,25,25
	add 9,10,9
	extsw 9,9
	mr 3,9
	addi 1,31,112
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,31,64
	std 3,0(9)
	std 4,8(9)
	addi 9,31,64
	lxvd2x 0,0,9
	addi 9,31,48
	stxvd2x 0,0,9
	ld 9,56(31)
	cmpdi 0,9,0
	bne 0,.L770
	ld 9,48(31)
	cmpdi 0,9,0
	bne 0,.L771
	li 9,0
	b .L773
.L771:
	ld 9,48(31)
	addi 10,9,-1
	not 9,9
	and 9,10,9
	popcntd 9,9
	stw 9,80(31)
	addi 9,31,80
	lfiwzx 0,0,9
	addi 9,31,80
	stfiwx 0,0,9
	lwz 9,80(31)
	addi 9,9,65
	b .L773
.L770:
	ld 9,56(31)
	addi 10,9,-1
	not 9,9
	and 9,10,9
	popcntd 9,9
	addi 9,9,1
.L773:
	extsw 9,9
	mr 3,9
	addi 1,31,112
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,144(31)
	mr 9,4
	stw 9,152(31)
	li 9,32
	stw 9,48(31)
	ld 9,144(31)
	std 9,56(31)
	lwz 10,152(31)
	lwz 9,48(31)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L775
	li 9,0
	stw 9,64(31)
	lwz 10,56(31)
	lwz 8,152(31)
	lwz 9,48(31)
	subf 9,9,8
	srw 9,10,9
	stw 9,68(31)
	b .L776
.L775:
	lwz 9,152(31)
	cmpwi 0,9,0
	bne 0,.L777
	ld 9,144(31)
	b .L779
.L777:
	lwz 10,56(31)
	lwz 9,152(31)
	srw 9,10,9
	stw 9,64(31)
	lwz 10,56(31)
	lwz 8,48(31)
	lwz 9,152(31)
	subf 9,9,8
	slw 10,10,9
	lwz 8,60(31)
	lwz 9,152(31)
	srw 9,8,9
	or 9,10,9
	stw 9,68(31)
.L776:
	ld 9,64(31)
.L779:
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-144(1)
	.cfi_def_cfa_offset 144
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,31,96
	std 3,0(9)
	std 4,8(9)
	mr 9,5
	stw 9,208(31)
	li 9,64
	stw 9,48(31)
	addi 9,31,96
	lxvd2x 0,0,9
	addi 9,31,64
	stxvd2x 0,0,9
	lwz 10,208(31)
	lwz 9,48(31)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L781
	li 9,0
	std 9,80(31)
	ld 10,64(31)
	lwz 8,208(31)
	lwz 9,48(31)
	subf 9,9,8
	srd 9,10,9
	std 9,88(31)
	b .L782
.L781:
	lwz 9,208(31)
	cmpwi 0,9,0
	bne 0,.L783
	addi 9,31,96
	lxvd2x 0,0,9
	b .L785
.L783:
	ld 10,64(31)
	lwz 9,208(31)
	srd 9,10,9
	std 9,80(31)
	ld 10,64(31)
	lwz 8,48(31)
	lwz 9,208(31)
	subf 9,9,8
	sld 10,10,9
	ld 8,72(31)
	lwz 9,208(31)
	srd 9,8,9
	or 9,10,9
	std 9,88(31)
.L782:
	addi 9,31,80
	lxvd2x 0,0,9
.L785:
	addi 9,31,112
	stxvd2x 0,0,9
	addi 9,31,112
	ld 10,0(9)
	ld 11,8(9)
	mr 3,10
	mr 4,11
	addi 1,31,144
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	mr 10,4
	stw 9,144(31)
	mr 9,10
	stw 9,152(31)
	li 9,16
	stw 9,48(31)
	li 10,-1
	lwz 9,48(31)
	srw 9,10,9
	stw 9,52(31)
	lwz 10,144(31)
	lwz 9,52(31)
	and 10,10,9
	lwz 8,152(31)
	lwz 9,52(31)
	and 9,8,9
	mullw 9,10,9
	stw 9,68(31)
	lwz 10,68(31)
	lwz 9,48(31)
	srw 9,10,9
	stw 9,56(31)
	lwz 10,68(31)
	lwz 9,52(31)
	and 9,10,9
	stw 9,68(31)
	lwz 10,144(31)
	lwz 9,48(31)
	srw 10,10,9
	lwz 8,152(31)
	lwz 9,52(31)
	and 9,8,9
	mullw 9,10,9
	lwz 10,56(31)
	add 9,10,9
	stw 9,56(31)
	lwz 10,68(31)
	lwz 8,56(31)
	lwz 9,52(31)
	and 8,8,9
	lwz 9,48(31)
	slw 9,8,9
	add 9,10,9
	stw 9,68(31)
	lwz 10,56(31)
	lwz 9,48(31)
	srw 9,10,9
	stw 9,64(31)
	lwz 10,68(31)
	lwz 9,48(31)
	srw 9,10,9
	stw 9,56(31)
	lwz 10,68(31)
	lwz 9,52(31)
	and 9,10,9
	stw 9,68(31)
	lwz 10,152(31)
	lwz 9,48(31)
	srw 10,10,9
	lwz 8,144(31)
	lwz 9,52(31)
	and 9,8,9
	mullw 9,10,9
	lwz 10,56(31)
	add 9,10,9
	stw 9,56(31)
	lwz 10,68(31)
	lwz 8,56(31)
	lwz 9,52(31)
	and 8,8,9
	lwz 9,48(31)
	slw 9,8,9
	add 9,10,9
	stw 9,68(31)
	lwz 9,64(31)
	mr 8,9
	lwz 10,56(31)
	lwz 9,48(31)
	srw 9,10,9
	add 9,8,9
	stw 9,64(31)
	lwz 9,64(31)
	mr 7,9
	lwz 10,144(31)
	lwz 9,48(31)
	srw 10,10,9
	lwz 8,152(31)
	lwz 9,48(31)
	srw 9,8,9
	mullw 9,10,9
	add 9,7,9
	stw 9,64(31)
	ld 9,64(31)
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-160(1)
	.cfi_def_cfa_offset 160
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,208(31)
	std 4,216(31)
	ld 9,208(31)
	std 9,112(31)
	ld 9,216(31)
	std 9,120(31)
	lwz 9,116(31)
	lwz 10,124(31)
	rldicl 10,10,0,32
	rldicl 9,9,0,32
	mr 4,10
	mr 3,9
	bl __muldsi3
	mr 9,3
	std 9,128(31)
	lwz 9,128(31)
	mr 8,9
	lwz 9,112(31)
	mr 10,9
	lwz 9,124(31)
	mullw 10,10,9
	lwz 9,116(31)
	lwz 7,120(31)
	mullw 9,9,7
	add 9,10,9
	add 9,8,9
	stw 9,128(31)
	ld 9,128(31)
	mr 3,9
	addi 1,31,160
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,176(31)
	std 4,184(31)
	li 9,32
	stw 9,48(31)
	li 10,-1
	lwz 9,48(31)
	srd 9,10,9
	std 9,56(31)
	ld 10,176(31)
	ld 9,56(31)
	and 10,10,9
	ld 8,184(31)
	ld 9,56(31)
	and 9,8,9
	mulld 9,10,9
	std 9,88(31)
	ld 10,88(31)
	lwz 9,48(31)
	srd 9,10,9
	std 9,64(31)
	ld 10,88(31)
	ld 9,56(31)
	and 9,10,9
	std 9,88(31)
	ld 10,176(31)
	lwz 9,48(31)
	srd 10,10,9
	ld 8,184(31)
	ld 9,56(31)
	and 9,8,9
	mulld 9,10,9
	ld 10,64(31)
	add 9,10,9
	std 9,64(31)
	ld 10,88(31)
	ld 8,64(31)
	ld 9,56(31)
	and 8,8,9
	lwz 9,48(31)
	sld 9,8,9
	add 9,10,9
	std 9,88(31)
	ld 10,64(31)
	lwz 9,48(31)
	srd 9,10,9
	std 9,80(31)
	ld 10,88(31)
	lwz 9,48(31)
	srd 9,10,9
	std 9,64(31)
	ld 10,88(31)
	ld 9,56(31)
	and 9,10,9
	std 9,88(31)
	ld 10,184(31)
	lwz 9,48(31)
	srd 10,10,9
	ld 8,176(31)
	ld 9,56(31)
	and 9,8,9
	mulld 9,10,9
	ld 10,64(31)
	add 9,10,9
	std 9,64(31)
	ld 10,88(31)
	ld 8,64(31)
	ld 9,56(31)
	and 8,8,9
	lwz 9,48(31)
	sld 9,8,9
	add 9,10,9
	std 9,88(31)
	ld 9,80(31)
	mr 8,9
	ld 10,64(31)
	lwz 9,48(31)
	srd 9,10,9
	add 9,8,9
	std 9,80(31)
	ld 9,80(31)
	mr 7,9
	ld 10,176(31)
	lwz 9,48(31)
	srd 10,10,9
	ld 8,184(31)
	lwz 9,48(31)
	srd 9,8,9
	mulld 9,10,9
	add 9,7,9
	std 9,80(31)
	addi 9,31,80
	lxvd2x 0,0,9
	addi 9,31,96
	stxvd2x 0,0,9
	addi 9,31,96
	ld 10,0(9)
	ld 11,8(9)
	mr 3,10
	mr 4,11
	addi 1,31,128
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-224(1)
	.cfi_def_cfa_offset 224
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,31,160
	std 3,0(9)
	std 4,8(9)
	addi 9,31,176
	std 5,0(9)
	std 6,8(9)
	addi 9,31,160
	lxvd2x 0,0,9
	addi 9,31,112
	stxvd2x 0,0,9
	addi 9,31,176
	lxvd2x 0,0,9
	addi 9,31,128
	stxvd2x 0,0,9
	ld 9,120(31)
	ld 10,136(31)
	mr 4,10
	mr 3,9
	bl __mulddi3
	mr 11,4
	mr 10,3
	addi 9,31,144
	std 10,0(9)
	std 11,8(9)
	ld 9,144(31)
	mr 8,9
	ld 9,112(31)
	mr 10,9
	ld 9,136(31)
	mulld 10,10,9
	ld 9,120(31)
	ld 7,128(31)
	mulld 9,9,7
	add 9,10,9
	add 9,8,9
	std 9,144(31)
	addi 9,31,144
	lxvd2x 0,0,9
	addi 9,31,192
	stxvd2x 0,0,9
	addi 9,31,192
	ld 10,0(9)
	ld 11,8(9)
	mr 3,10
	mr 4,11
	addi 1,31,224
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,112(31)
	ld 9,112(31)
	neg 9,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 10,31,48
	std 3,0(10)
	std 4,8(10)
	addi 10,31,48
	ld 11,8(10)
	ld 10,0(10)
	subfic 9,11,0
	subfze 8,10
	addi 10,31,64
	std 8,0(10)
	std 9,8(10)
	addi 9,31,64
	lxvd2x 0,0,9
	addi 9,31,64
	stxvd2x 0,0,9
	addi 9,31,64
	ld 10,0(9)
	ld 11,8(9)
	mr 3,10
	mr 4,11
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	ld 9,128(31)
	std 9,56(31)
	lwz 9,56(31)
	mr 10,9
	lwz 9,60(31)
	xor 9,10,9
	stw 9,48(31)
	lwz 9,48(31)
	srwi 9,9,16
	lwz 10,48(31)
	xor 9,10,9
	stw 9,48(31)
	lwz 9,48(31)
	srwi 9,9,8
	lwz 10,48(31)
	xor 9,10,9
	stw 9,48(31)
	lwz 9,48(31)
	srwi 9,9,4
	lwz 10,48(31)
	xor 9,10,9
	stw 9,48(31)
	lwz 9,48(31)
	rlwinm 9,9,0,28,31
	li 10,27030
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,31,96
	std 3,0(9)
	std 4,8(9)
	addi 9,31,96
	lxvd2x 0,0,9
	addi 9,31,64
	stxvd2x 0,0,9
	ld 9,64(31)
	mr 10,9
	ld 9,72(31)
	xor 9,10,9
	std 9,80(31)
	lwz 9,80(31)
	mr 10,9
	lwz 9,84(31)
	xor 9,10,9
	stw 9,48(31)
	lwz 9,48(31)
	srwi 9,9,16
	lwz 10,48(31)
	xor 9,10,9
	stw 9,48(31)
	lwz 9,48(31)
	srwi 9,9,8
	lwz 10,48(31)
	xor 9,10,9
	stw 9,48(31)
	lwz 9,48(31)
	srwi 9,9,4
	lwz 10,48(31)
	xor 9,10,9
	stw 9,48(31)
	lwz 9,48(31)
	rlwinm 9,9,0,28,31
	li 10,27030
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	extsw 9,9
	mr 3,9
	addi 1,31,128
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,128(31)
	lwz 9,128(31)
	stw 9,48(31)
	lwz 9,48(31)
	srwi 9,9,16
	lwz 10,48(31)
	xor 9,10,9
	stw 9,48(31)
	lwz 9,48(31)
	srwi 9,9,8
	lwz 10,48(31)
	xor 9,10,9
	stw 9,48(31)
	lwz 9,48(31)
	srwi 9,9,4
	lwz 10,48(31)
	xor 9,10,9
	stw 9,48(31)
	lwz 9,48(31)
	rlwinm 9,9,0,28,31
	li 10,27030
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	ld 9,128(31)
	std 9,48(31)
	ld 9,48(31)
	srdi 10,9,1
	lis 9,0x5555
	ori 9,9,0x5555
	rldimi 9,9,32,0
	and 9,10,9
	ld 10,48(31)
	subf 9,9,10
	std 9,48(31)
	ld 9,48(31)
	srdi 10,9,2
	lis 9,0x3333
	ori 9,9,0x3333
	rldimi 9,9,32,0
	and 10,10,9
	ld 8,48(31)
	lis 9,0x3333
	ori 9,9,0x3333
	rldimi 9,9,32,0
	and 9,8,9
	add 9,10,9
	std 9,48(31)
	ld 9,48(31)
	srdi 10,9,4
	ld 9,48(31)
	add 10,10,9
	lis 9,0xf0f
	ori 9,9,0xf0f
	rldimi 9,9,32,0
	and 9,10,9
	std 9,48(31)
	ld 9,48(31)
	mr 10,9
	ld 9,48(31)
	srdi 9,9,32
	add 9,10,9
	stw 9,56(31)
	lwz 9,56(31)
	srwi 9,9,16
	lwz 10,56(31)
	add 9,10,9
	stw 9,56(31)
	lwz 9,56(31)
	srwi 10,9,8
	lwz 9,56(31)
	add 9,10,9
	rlwinm 9,9,0,25,31
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,128(31)
	lwz 9,128(31)
	stw 9,48(31)
	lwz 9,48(31)
	srwi 10,9,1
	lis 9,0x5555
	ori 9,9,0x5555
	and 9,10,9
	lwz 10,48(31)
	subf 9,9,10
	stw 9,48(31)
	lwz 9,48(31)
	srwi 10,9,2
	lis 9,0x3333
	ori 9,9,0x3333
	and 10,10,9
	lwz 8,48(31)
	lis 9,0x3333
	ori 9,9,0x3333
	and 9,8,9
	add 9,10,9
	stw 9,48(31)
	lwz 9,48(31)
	srwi 10,9,4
	lwz 9,48(31)
	add 10,10,9
	lis 9,0xf0f
	ori 9,9,0xf0f
	and 9,10,9
	stw 9,48(31)
	lwz 9,48(31)
	srwi 9,9,16
	lwz 10,48(31)
	add 9,10,9
	stw 9,48(31)
	lwz 9,48(31)
	srwi 10,9,8
	lwz 9,48(31)
	add 9,10,9
	rlwinm 9,9,0,26,31
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 22,-80(1)
	std 23,-72(1)
	std 24,-64(1)
	std 25,-56(1)
	std 26,-48(1)
	std 27,-40(1)
	std 28,-32(1)
	std 29,-24(1)
	std 31,-8(1)
	stdu 1,-192(1)
	.cfi_def_cfa_offset 192
	.cfi_offset 22, -80
	.cfi_offset 23, -72
	.cfi_offset 24, -64
	.cfi_offset 25, -56
	.cfi_offset 26, -48
	.cfi_offset 27, -40
	.cfi_offset 28, -32
	.cfi_offset 29, -24
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 5,31,80
	std 3,0(5)
	std 4,8(5)
	addi 5,31,80
	lxvd2x 0,0,5
	addi 5,31,48
	stxvd2x 0,0,5
	ld 5,48(31)
	sldi 5,5,63
	ld 4,56(31)
	srdi 7,4,1
	or 7,5,7
	ld 5,48(31)
	srdi 6,5,1
	lis 4,0x5555
	ori 4,4,0x5555
	rldimi 4,4,32,0
	lis 5,0x5555
	ori 5,5,0x5555
	rldimi 5,5,32,0
	and 6,6,4
	and 7,7,5
	addi 5,31,48
	ld 4,0(5)
	ld 5,8(5)
	subfc 25,7,5
	subfe 24,6,4
	addi 7,31,48
	std 24,0(7)
	std 25,8(7)
	ld 7,48(31)
	sldi 7,7,62
	ld 6,56(31)
	srdi 9,6,2
	or 9,7,9
	ld 7,48(31)
	srdi 8,7,2
	lis 6,0x3333
	ori 6,6,0x3333
	rldimi 6,6,32,0
	lis 7,0x3333
	ori 7,7,0x3333
	rldimi 7,7,32,0
	and 6,6,8
	and 7,7,9
	addi 9,31,48
	lxvd2x 0,0,9
	lis 8,0x3333
	ori 8,8,0x3333
	rldimi 8,8,32,0
	lis 9,0x3333
	ori 9,9,0x3333
	rldimi 9,9,32,0
	addi 5,31,96
	stxvd2x 0,0,5
	addi 5,31,96
	ld 4,0(5)
	ld 5,8(5)
	and 4,4,8
	and 5,5,9
	mr 9,5
	mr 8,4
	addc 27,7,9
	adde 26,6,8
	addi 9,31,48
	std 26,0(9)
	std 27,8(9)
	ld 9,48(31)
	sldi 9,9,60
	ld 8,56(31)
	srdi 11,8,4
	or 11,9,11
	ld 9,48(31)
	srdi 10,9,4
	addi 9,31,48
	ld 8,0(9)
	ld 9,8(9)
	addc 29,11,9
	adde 28,10,8
	lis 10,0xf0f
	ori 10,10,0xf0f
	rldimi 10,10,32,0
	lis 11,0xf0f
	ori 11,11,0xf0f
	rldimi 11,11,32,0
	and 8,28,10
	and 9,29,11
	addi 10,31,96
	std 8,0(10)
	std 9,8(10)
	addi 9,31,96
	lxvd2x 0,0,9
	addi 9,31,48
	stxvd2x 0,0,9
	ld 9,56(31)
	ld 10,48(31)
	srdi 23,10,0
	li 22,0
	mr 10,23
	add 9,9,10
	std 9,64(31)
	ld 9,64(31)
	mr 10,9
	ld 9,64(31)
	srdi 9,9,32
	add 9,10,9
	stw 9,72(31)
	lwz 9,72(31)
	srwi 9,9,16
	lwz 10,72(31)
	add 9,10,9
	stw 9,72(31)
	lwz 9,72(31)
	srwi 10,9,8
	lwz 9,72(31)
	add 9,10,9
	rlwinm 9,9,0,24,31
	extsw 9,9
	mr 3,9
	addi 1,31,192
	.cfi_def_cfa 1, 0
	ld 22,-80(1)
	ld 23,-72(1)
	ld 24,-64(1)
	ld 25,-56(1)
	ld 26,-48(1)
	ld 27,-40(1)
	ld 28,-32(1)
	ld 29,-24(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,10,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,128(31)
	mr 9,4
	stw 9,136(31)
	lwz 9,136(31)
	srwi 9,9,31
	rlwinm 9,9,0,0xff
	stw 9,56(31)
	addis 9,2,.LC13@toc@ha
	addi 9,9,.LC13@toc@l
	lfd 0,0(9)
	stfd 0,48(31)
.L814:
	lwz 9,136(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L811
	lfd 12,48(31)
	lfd 0,128(31)
	fmul 0,12,0
	stfd 0,48(31)
.L811:
	lwz 9,136(31)
	srawi 9,9,1
	addze 9,9
	stw 9,136(31)
	lwz 9,136(31)
	cmpwi 0,9,0
	beq 0,.L819
	lfd 0,128(31)
	fmul 0,0,0
	stfd 0,128(31)
	b .L814
.L819:
	nop
	lwz 9,56(31)
	cmpwi 0,9,0
	beq 0,.L815
	addis 9,2,.LC13@toc@ha
	addi 9,9,.LC13@toc@l
	lfd 12,0(9)
	lfd 0,48(31)
	fdiv 0,12,0
	b .L817
.L815:
	lfd 0,48(31)
.L817:
	fmr 1,0
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,128(31)
	mr 9,4
	stw 9,136(31)
	lwz 9,136(31)
	srwi 9,9,31
	rlwinm 9,9,0,0xff
	stw 9,52(31)
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfs 0,0(9)
	stfs 0,48(31)
.L824:
	lwz 9,136(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L821
	lfs 12,48(31)
	lfs 0,128(31)
	fmuls 0,12,0
	stfs 0,48(31)
.L821:
	lwz 9,136(31)
	srawi 9,9,1
	addze 9,9
	stw 9,136(31)
	lwz 9,136(31)
	cmpwi 0,9,0
	beq 0,.L829
	lfs 0,128(31)
	fmuls 0,0,0
	stfs 0,128(31)
	b .L824
.L829:
	nop
	lwz 9,52(31)
	cmpwi 0,9,0
	beq 0,.L825
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfs 12,0(9)
	lfs 0,48(31)
	fdivs 0,12,0
	b .L827
.L825:
	lfs 0,48(31)
.L827:
	fmr 1,0
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,128(31)
	std 4,136(31)
	ld 9,128(31)
	std 9,48(31)
	ld 9,136(31)
	std 9,56(31)
	lwz 10,48(31)
	lwz 9,56(31)
	cmplw 0,10,9
	bge 0,.L831
	li 9,0
	b .L836
.L831:
	lwz 10,48(31)
	lwz 9,56(31)
	cmplw 0,10,9
	ble 0,.L833
	li 9,2
	b .L836
.L833:
	lwz 10,52(31)
	lwz 9,60(31)
	cmplw 0,10,9
	bge 0,.L834
	li 9,0
	b .L836
.L834:
	lwz 10,52(31)
	lwz 9,60(31)
	cmplw 0,10,9
	ble 0,.L835
	li 9,2
	b .L836
.L835:
	li 9,1
.L836:
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,176(31)
	std 4,184(31)
	ld 9,176(31)
	ld 10,184(31)
	mr 4,10
	mr 3,9
	bl __ucmpdi2
	mr 9,3
	addi 9,9,-1
	extsw 9,9
	mr 3,9
	addi 1,31,128
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
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
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,31,80
	std 3,0(9)
	std 4,8(9)
	addi 9,31,96
	std 5,0(9)
	std 6,8(9)
	addi 9,31,80
	lxvd2x 0,0,9
	addi 9,31,48
	stxvd2x 0,0,9
	addi 9,31,96
	lxvd2x 0,0,9
	addi 9,31,64
	stxvd2x 0,0,9
	ld 10,48(31)
	ld 9,64(31)
	cmpld 0,10,9
	bge 0,.L840
	li 9,0
	b .L845
.L840:
	ld 10,48(31)
	ld 9,64(31)
	cmpld 0,10,9
	ble 0,.L842
	li 9,2
	b .L845
.L842:
	ld 10,56(31)
	ld 9,72(31)
	cmpld 0,10,9
	bge 0,.L843
	li 9,0
	b .L845
.L843:
	ld 10,56(31)
	ld 9,72(31)
	cmpld 0,10,9
	ble 0,.L844
	li 9,2
	b .L845
.L844:
	li 9,1
.L845:
	extsw 9,9
	mr 3,9
	addi 1,31,128
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE165:
	.size	__ucmpti2,.-.L.__ucmpti2
	.lcomm	s.0,7,8
	.type	s.0, @object
	.section	.rodata
	.align 3
.LC0:
	.quad	6364136223846793005
	.align 2
.LC1:
	.long	-8388609
	.align 2
.LC2:
	.long	2139095039
	.align 3
.LC3:
	.long	-1048577
	.long	-1
	.align 3
.LC4:
	.long	2146435071
	.long	-1
	.align 4
.LC5:
	.long	-1048577
	.long	-1
	.long	-57671681
	.long	-2
	.align 4
.LC6:
	.long	2146435071
	.long	-1
	.long	2089811967
	.long	-2
	.align 2
.LC7:
	.long	1056964608
	.align 2
.LC8:
	.long	1073741824
	.align 3
.LC9:
	.long	1071644672
	.long	0
	.align 3
.LC10:
	.long	1073741824
	.long	0
	.align 4
.LC11:
	.long	1071644672
	.long	0
	.long	0
	.long	0
	.align 4
.LC12:
	.long	1073741824
	.long	0
	.long	0
	.long	0
	.align 3
.LC13:
	.long	1072693248
	.long	0
	.align 2
.LC14:
	.long	1191182336
	.align 2
.LC15:
	.long	1065353216
	.globl __gcc_qmul
	.globl __gcc_qadd
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.gnu_attribute 4, 5
	.section	.note.GNU-stack,"",@progbits
