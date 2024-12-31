	.file	"mini-libc.c"
	.machine ppc64
	.abiversion 2
	.section	".text"
	.align 2
	.globl make_ti
	.type	make_ti, @function
make_ti:
.LFB0:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	ld 9,48(31)
	std 9,40(31)
	ld 9,56(31)
	std 9,32(31)
	ld 10,32(31)
	ld 11,40(31)
	mr 3,10
	mr 4,11
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE0:
	.size	make_ti,.-make_ti
	.align 2
	.globl make_tu
	.type	make_tu, @function
make_tu:
.LFB1:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	ld 9,48(31)
	std 9,40(31)
	ld 9,56(31)
	std 9,32(31)
	ld 10,32(31)
	ld 11,40(31)
	mr 3,10
	mr 4,11
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE1:
	.size	make_tu,.-make_tu
	.align 2
	.globl memmove
	.type	memmove, @function
memmove:
.LFB2:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	std 5,64(31)
	ld 9,48(31)
	std 9,32(31)
	ld 9,56(31)
	std 9,40(31)
	ld 10,40(31)
	ld 9,32(31)
	cmpld 0,10,9
	bge 0,.L6
	ld 10,40(31)
	ld 9,64(31)
	add 9,10,9
	std 9,40(31)
	ld 10,32(31)
	ld 9,64(31)
	add 9,10,9
	std 9,32(31)
	b .L7
.L8:
	ld 9,40(31)
	addi 9,9,-1
	std 9,40(31)
	ld 9,32(31)
	addi 9,9,-1
	std 9,32(31)
	ld 9,40(31)
	lbz 10,0(9)
	ld 9,32(31)
	stb 10,0(9)
	ld 9,64(31)
	addi 9,9,-1
	std 9,64(31)
.L7:
	ld 9,64(31)
	cmpdi 0,9,0
	bne 0,.L8
	b .L9
.L6:
	ld 10,40(31)
	ld 9,32(31)
	cmpd 0,10,9
	beq 0,.L9
	b .L10
.L11:
	ld 10,40(31)
	addi 9,10,1
	std 9,40(31)
	ld 9,32(31)
	addi 8,9,1
	std 8,32(31)
	lbz 10,0(10)
	stb 10,0(9)
	ld 9,64(31)
	addi 9,9,-1
	std 9,64(31)
.L10:
	ld 9,64(31)
	cmpdi 0,9,0
	bne 0,.L11
.L9:
	ld 9,48(31)
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE2:
	.size	memmove,.-memmove
	.align 2
	.globl memccpy
	.type	memccpy, @function
memccpy:
.LFB3:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	mr 9,5
	std 6,72(31)
	stw 9,64(31)
	ld 9,48(31)
	std 9,32(31)
	ld 9,56(31)
	std 9,40(31)
	lwz 9,64(31)
	rlwinm 9,9,0,0xff
	stw 9,64(31)
	b .L14
.L16:
	ld 9,72(31)
	addi 9,9,-1
	std 9,72(31)
	ld 9,40(31)
	addi 9,9,1
	std 9,40(31)
	ld 9,32(31)
	addi 9,9,1
	std 9,32(31)
.L14:
	ld 9,72(31)
	cmpdi 0,9,0
	beq 0,.L15
	ld 9,40(31)
	lbz 10,0(9)
	ld 9,32(31)
	stb 10,0(9)
	ld 9,32(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,64(31)
	cmpw 0,10,9
	bne 0,.L16
.L15:
	ld 9,72(31)
	cmpdi 0,9,0
	beq 0,.L17
	ld 9,32(31)
	addi 9,9,1
	b .L18
.L17:
	li 9,0
.L18:
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE3:
	.size	memccpy,.-memccpy
	.align 2
	.globl memchr
	.type	memchr, @function
memchr:
.LFB4:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	mr 9,4
	std 5,64(31)
	stw 9,56(31)
	ld 9,48(31)
	std 9,32(31)
	lwz 9,56(31)
	rlwinm 9,9,0,0xff
	stw 9,56(31)
	b .L20
.L22:
	ld 9,32(31)
	addi 9,9,1
	std 9,32(31)
	ld 9,64(31)
	addi 9,9,-1
	std 9,64(31)
.L20:
	ld 9,64(31)
	cmpdi 0,9,0
	beq 0,.L21
	ld 9,32(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,56(31)
	cmpw 0,10,9
	bne 0,.L22
.L21:
	ld 9,64(31)
	cmpdi 0,9,0
	beq 0,.L23
	ld 9,32(31)
	b .L25
.L23:
	li 9,0
.L25:
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE4:
	.size	memchr,.-memchr
	.align 2
	.globl memcmp
	.type	memcmp, @function
memcmp:
.LFB5:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	std 5,64(31)
	ld 9,48(31)
	std 9,32(31)
	ld 9,56(31)
	std 9,40(31)
	b .L27
.L29:
	ld 9,64(31)
	addi 9,9,-1
	std 9,64(31)
	ld 9,32(31)
	addi 9,9,1
	std 9,32(31)
	ld 9,40(31)
	addi 9,9,1
	std 9,40(31)
.L27:
	ld 9,64(31)
	cmpdi 0,9,0
	beq 0,.L28
	ld 9,32(31)
	lbz 10,0(9)
	ld 9,40(31)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	beq 0,.L29
.L28:
	ld 9,64(31)
	cmpdi 0,9,0
	beq 0,.L30
	ld 9,32(31)
	lbz 9,0(9)
	rlwinm 10,9,0,0xff
	ld 9,40(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	subf 9,9,10
	b .L32
.L30:
	li 9,0
.L32:
	extsw 9,9
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE5:
	.size	memcmp,.-memcmp
	.align 2
	.globl memcpy
	.type	memcpy, @function
memcpy:
.LFB6:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	std 5,64(31)
	ld 9,48(31)
	std 9,32(31)
	ld 9,56(31)
	std 9,40(31)
	b .L34
.L35:
	ld 10,40(31)
	addi 9,10,1
	std 9,40(31)
	ld 9,32(31)
	addi 8,9,1
	std 8,32(31)
	lbz 10,0(10)
	stb 10,0(9)
	ld 9,64(31)
	addi 9,9,-1
	std 9,64(31)
.L34:
	ld 9,64(31)
	cmpdi 0,9,0
	bne 0,.L35
	ld 9,48(31)
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE6:
	.size	memcpy,.-memcpy
	.align 2
	.globl memrchr
	.type	memrchr, @function
memrchr:
.LFB7:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	mr 9,4
	std 5,64(31)
	stw 9,56(31)
	ld 9,48(31)
	std 9,32(31)
	lwz 9,56(31)
	rlwinm 9,9,0,0xff
	stw 9,56(31)
	b .L38
.L40:
	ld 10,32(31)
	ld 9,64(31)
	add 9,10,9
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,56(31)
	cmpw 0,10,9
	bne 0,.L38
	ld 10,32(31)
	ld 9,64(31)
	add 9,10,9
	b .L39
.L38:
	ld 9,64(31)
	addi 10,9,-1
	std 10,64(31)
	cmpdi 0,9,0
	bne 0,.L40
	li 9,0
.L39:
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE7:
	.size	memrchr,.-memrchr
	.align 2
	.globl memset
	.type	memset, @function
memset:
.LFB8:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	mr 9,4
	std 5,64(31)
	stw 9,56(31)
	ld 9,48(31)
	std 9,32(31)
	b .L42
.L43:
	lwz 9,56(31)
	mr 10,9
	ld 9,32(31)
	stb 10,0(9)
	ld 9,64(31)
	addi 9,9,-1
	std 9,64(31)
	ld 9,32(31)
	addi 9,9,1
	std 9,32(31)
.L42:
	ld 9,64(31)
	cmpdi 0,9,0
	bne 0,.L43
	ld 9,48(31)
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE8:
	.size	memset,.-memset
	.align 2
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB9:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	std 4,40(31)
	b .L46
.L47:
	ld 9,40(31)
	addi 9,9,1
	std 9,40(31)
	ld 9,32(31)
	addi 9,9,1
	std 9,32(31)
.L46:
	ld 9,40(31)
	lbz 10,0(9)
	ld 9,32(31)
	stb 10,0(9)
	ld 9,32(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L47
	ld 9,32(31)
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE9:
	.size	stpcpy,.-stpcpy
	.align 2
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB10:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	mr 9,4
	stw 9,40(31)
	lwz 9,40(31)
	rlwinm 9,9,0,0xff
	stw 9,40(31)
	b .L50
.L52:
	ld 9,32(31)
	addi 9,9,1
	std 9,32(31)
.L50:
	ld 9,32(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L51
	ld 9,32(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,40(31)
	cmpw 0,10,9
	bne 0,.L52
.L51:
	ld 9,32(31)
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE10:
	.size	strchrnul,.-strchrnul
	.align 2
	.globl strchr
	.type	strchr, @function
strchr:
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
	stw 10,32(31)
.L57:
	lbz 10,0(9)
	rlwinm 10,10,0,0xff
	lwz 8,32(31)
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
	.size	strchr,.-strchr
	.align 2
	.globl strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	std 4,40(31)
	b .L59
.L61:
	ld 9,32(31)
	addi 9,9,1
	std 9,32(31)
	ld 9,40(31)
	addi 9,9,1
	std 9,40(31)
.L59:
	ld 9,32(31)
	lbz 10,0(9)
	ld 9,40(31)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	bne 0,.L60
	ld 9,32(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L61
.L60:
	ld 9,32(31)
	lbz 9,0(9)
	rlwinm 10,9,0,0xff
	ld 9,40(31)
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
	.size	strcmp,.-strcmp
	.align 2
	.globl strlen
	.type	strlen, @function
strlen:
.LFB13:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	ld 9,48(31)
	std 9,32(31)
	b .L64
.L65:
	ld 9,48(31)
	addi 9,9,1
	std 9,48(31)
.L64:
	ld 9,48(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L65
	ld 10,48(31)
	ld 9,32(31)
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
	.size	strlen,.-strlen
	.align 2
	.globl strncmp
	.type	strncmp, @function
strncmp:
.LFB14:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	std 5,64(31)
	ld 9,48(31)
	std 9,32(31)
	ld 9,56(31)
	std 9,40(31)
	ld 9,64(31)
	addi 10,9,-1
	std 10,64(31)
	cmpdi 0,9,0
	bne 0,.L70
	li 9,0
	b .L69
.L72:
	ld 9,32(31)
	addi 9,9,1
	std 9,32(31)
	ld 9,40(31)
	addi 9,9,1
	std 9,40(31)
	ld 9,64(31)
	addi 9,9,-1
	std 9,64(31)
.L70:
	ld 9,32(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L71
	ld 9,40(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L71
	ld 9,64(31)
	cmpdi 0,9,0
	beq 0,.L71
	ld 9,32(31)
	lbz 10,0(9)
	ld 9,40(31)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	beq 0,.L72
.L71:
	ld 9,32(31)
	lbz 9,0(9)
	rlwinm 10,9,0,0xff
	ld 9,40(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	subf 9,9,10
.L69:
	extsw 9,9
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE14:
	.size	strncmp,.-strncmp
	.align 2
	.globl swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	std 5,64(31)
	ld 9,48(31)
	std 9,32(31)
	ld 9,56(31)
	std 9,40(31)
	b .L74
.L75:
	ld 9,32(31)
	addi 9,9,1
	lbz 10,0(9)
	ld 9,40(31)
	stb 10,0(9)
	ld 9,40(31)
	addi 9,9,1
	ld 10,32(31)
	lbz 10,0(10)
	stb 10,0(9)
	ld 9,40(31)
	addi 9,9,2
	std 9,40(31)
	ld 9,32(31)
	addi 9,9,2
	std 9,32(31)
	ld 9,64(31)
	addi 9,9,-2
	std 9,64(31)
.L74:
	ld 9,64(31)
	cmpdi 0,9,1
	bgt 0,.L75
	nop
	nop
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE15:
	.size	swab,.-swab
	.align 2
	.globl isalpha
	.type	isalpha, @function
isalpha:
.LFB16:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
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
	.size	isalpha,.-isalpha
	.align 2
	.globl isascii
	.type	isascii, @function
isascii:
.LFB17:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
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
	.size	isascii,.-isascii
	.align 2
	.globl isblank
	.type	isblank, @function
isblank:
.LFB18:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
	cmpwi 0,9,32
	beq 0,.L81
	lwz 9,32(31)
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
	.size	isblank,.-isblank
	.align 2
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB19:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
	cmplwi 0,9,31
	ble 0,.L86
	lwz 9,32(31)
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
	.size	iscntrl,.-iscntrl
	.align 2
	.globl isdigit
	.type	isdigit, @function
isdigit:
.LFB20:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
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
	.size	isdigit,.-isdigit
	.align 2
	.globl isgraph
	.type	isgraph, @function
isgraph:
.LFB21:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
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
	.size	isgraph,.-isgraph
	.align 2
	.globl islower
	.type	islower, @function
islower:
.LFB22:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
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
	.size	islower,.-islower
	.align 2
	.globl isprint
	.type	isprint, @function
isprint:
.LFB23:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
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
	.size	isprint,.-isprint
	.align 2
	.globl isspace
	.type	isspace, @function
isspace:
.LFB24:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
	cmpwi 0,9,32
	beq 0,.L99
	lwz 9,32(31)
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
	.size	isspace,.-isspace
	.align 2
	.globl isupper
	.type	isupper, @function
isupper:
.LFB25:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
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
	.size	isupper,.-isupper
	.align 2
	.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB26:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
	cmplwi 0,9,31
	ble 0,.L106
	lwz 9,32(31)
	addi 9,9,-127
	cmplwi 0,9,32
	ble 0,.L106
	lwz 9,32(31)
	addi 9,9,-8232
	cmplwi 0,9,1
	ble 0,.L106
	lwz 9,32(31)
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
	.size	iswcntrl,.-iswcntrl
	.align 2
	.globl iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB27:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
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
	.size	iswdigit,.-iswdigit
	.align 2
	.globl iswprint
	.type	iswprint, @function
iswprint:
.LFB28:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
	cmplwi 0,9,254
	bgt 0,.L113
	lwz 9,32(31)
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
	lwz 9,32(31)
	cmplwi 0,9,8231
	ble 0,.L115
	lwz 9,32(31)
	addi 10,9,-8234
	li 9,0
	ori 9,9,0xb7d5
	cmplw 0,10,9
	ble 0,.L115
	lwz 9,32(31)
	addis 9,9,0xffff
	addi 9,9,8192
	cmplwi 0,9,8184
	bgt 0,.L116
.L115:
	li 9,1
	b .L114
.L116:
	lwz 9,32(31)
	addis 9,9,0xffff
	addi 10,9,4
	lis 9,0x10
	ori 9,9,0x3
	cmplw 0,10,9
	bgt 0,.L117
	lwz 9,32(31)
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
	.size	iswprint,.-iswprint
	.align 2
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L120
	lwz 9,32(31)
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
	.size	iswxdigit,.-iswxdigit
	.align 2
	.globl toascii
	.type	toascii, @function
toascii:
.LFB30:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
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
	.size	toascii,.-toascii
	.align 2
	.globl fdim
	.type	fdim, @function
fdim:
.LFB31:
	.cfi_startproc
.LCF31:
0:	addis 2,12,.TOC.-.LCF31@ha
	addi 2,2,.TOC.-.LCF31@l
	.localentry	fdim,.-fdim
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,32(31)
	stfd 2,40(31)
	lfd 12,32(31)
	lfd 0,32(31)
	fcmpu 0,12,0
	bnu 0,.L127
	lfd 0,32(31)
	b .L128
.L127:
	lfd 12,40(31)
	lfd 0,40(31)
	fcmpu 0,12,0
	bnu 0,.L129
	lfd 0,40(31)
	b .L128
.L129:
	lfd 12,32(31)
	lfd 0,40(31)
	fcmpu 0,12,0
	bng 0,.L134
	lfd 12,32(31)
	lfd 0,40(31)
	fsub 0,12,0
	b .L128
.L134:
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
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
	.size	fdim,.-fdim
	.align 2
	.globl fdimf
	.type	fdimf, @function
fdimf:
.LFB32:
	.cfi_startproc
.LCF32:
0:	addis 2,12,.TOC.-.LCF32@ha
	addi 2,2,.TOC.-.LCF32@l
	.localentry	fdimf,.-fdimf
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,32(31)
	stfs 2,36(31)
	lfs 12,32(31)
	lfs 0,32(31)
	fcmpu 0,12,0
	bnu 0,.L136
	lfs 0,32(31)
	b .L137
.L136:
	lfs 12,36(31)
	lfs 0,36(31)
	fcmpu 0,12,0
	bnu 0,.L138
	lfs 0,36(31)
	b .L137
.L138:
	lfs 12,32(31)
	lfs 0,36(31)
	fcmpu 0,12,0
	bng 0,.L143
	lfs 12,32(31)
	lfs 0,36(31)
	fsubs 0,12,0
	b .L137
.L143:
	addis 9,2,.LC1@toc@ha
	addi 9,9,.LC1@toc@l
	lfs 0,0(9)
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
	.size	fdimf,.-fdimf
	.align 2
	.globl fmax
	.type	fmax, @function
fmax:
.LFB33:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,32(31)
	stfd 2,40(31)
	lfd 12,32(31)
	lfd 0,32(31)
	fcmpu 0,12,0
	bnu 0,.L145
	lfd 0,40(31)
	b .L146
.L145:
	lfd 12,40(31)
	lfd 0,40(31)
	fcmpu 0,12,0
	bnu 0,.L147
	lfd 0,32(31)
	b .L146
.L147:
	ld 9,32(31)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	mr 10,9
	ld 9,40(31)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	cmpw 0,10,9
	beq 0,.L148
	ld 9,32(31)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L149
	lfd 0,40(31)
	b .L146
.L149:
	lfd 0,32(31)
	b .L146
.L148:
	lfd 12,32(31)
	lfd 0,40(31)
	fcmpu 0,12,0
	bnl 0,.L155
	lfd 0,40(31)
	b .L146
.L155:
	lfd 0,32(31)
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
	.size	fmax,.-fmax
	.align 2
	.globl fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB34:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,32(31)
	stfs 2,36(31)
	lfs 12,32(31)
	lfs 0,32(31)
	fcmpu 0,12,0
	bnu 0,.L157
	lfs 0,36(31)
	b .L158
.L157:
	lfs 12,36(31)
	lfs 0,36(31)
	fcmpu 0,12,0
	bnu 0,.L159
	lfs 0,32(31)
	b .L158
.L159:
	lwz 9,32(31)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,36(31)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L160
	lwz 9,32(31)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L161
	lfs 0,36(31)
	b .L158
.L161:
	lfs 0,32(31)
	b .L158
.L160:
	lfs 12,32(31)
	lfs 0,36(31)
	fcmpu 0,12,0
	bnl 0,.L167
	lfs 0,36(31)
	b .L158
.L167:
	lfs 0,32(31)
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
	.size	fmaxf,.-fmaxf
	.align 2
	.globl fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB35:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,32(31)
	stfd 2,40(31)
	addi 9,31,48
	stfd 3,0(9)
	stfd 4,8(9)
	lfd 0,32(31)
	lfd 1,40(31)
	fcmpu 0,0,0
	bnu 0,.L169
	addi 9,31,48
	lfd 0,0(9)
	lfd 1,8(9)
	b .L170
.L169:
	addi 9,31,48
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,0,0
	bnu 0,.L171
	lfd 0,32(31)
	lfd 1,40(31)
	b .L170
.L171:
	lfd 0,32(31)
	lfd 1,40(31)
	stfd 0,64(31)
	ld 9,64(31)
	srdi 9,9,63
	mr 10,9
	addi 9,31,48
	lfd 0,0(9)
	lfd 1,8(9)
	stfd 0,64(31)
	ld 9,64(31)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L172
	lfd 0,32(31)
	lfd 1,40(31)
	stfd 0,64(31)
	ld 9,64(31)
	srdi 9,9,63
	cmpwi 0,9,0
	beq 0,.L173
	addi 9,31,48
	lfd 0,0(9)
	lfd 1,8(9)
	b .L170
.L173:
	lfd 0,32(31)
	lfd 1,40(31)
	b .L170
.L172:
	lfd 12,32(31)
	lfd 13,40(31)
	addi 9,31,48
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	bnl 0,.L179
	addi 9,31,48
	lfd 0,0(9)
	lfd 1,8(9)
	b .L170
.L179:
	lfd 0,32(31)
	lfd 1,40(31)
.L170:
	fmr 2,1
	fmr 1,0
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE35:
	.size	fmaxl,.-fmaxl
	.align 2
	.globl fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,32(31)
	stfd 2,40(31)
	lfd 12,32(31)
	lfd 0,32(31)
	fcmpu 0,12,0
	bnu 0,.L181
	lfd 0,40(31)
	b .L182
.L181:
	lfd 12,40(31)
	lfd 0,40(31)
	fcmpu 0,12,0
	bnu 0,.L183
	lfd 0,32(31)
	b .L182
.L183:
	ld 9,32(31)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	mr 10,9
	ld 9,40(31)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	cmpw 0,10,9
	beq 0,.L184
	ld 9,32(31)
	srdi 9,9,63
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L185
	lfd 0,32(31)
	b .L182
.L185:
	lfd 0,40(31)
	b .L182
.L184:
	lfd 12,32(31)
	lfd 0,40(31)
	fcmpu 0,12,0
	bnl 0,.L191
	lfd 0,32(31)
	b .L182
.L191:
	lfd 0,40(31)
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
	.size	fmin,.-fmin
	.align 2
	.globl fminf
	.type	fminf, @function
fminf:
.LFB37:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,32(31)
	stfs 2,36(31)
	lfs 12,32(31)
	lfs 0,32(31)
	fcmpu 0,12,0
	bnu 0,.L193
	lfs 0,36(31)
	b .L194
.L193:
	lfs 12,36(31)
	lfs 0,36(31)
	fcmpu 0,12,0
	bnu 0,.L195
	lfs 0,32(31)
	b .L194
.L195:
	lwz 9,32(31)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,36(31)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L196
	lwz 9,32(31)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L197
	lfs 0,32(31)
	b .L194
.L197:
	lfs 0,36(31)
	b .L194
.L196:
	lfs 12,32(31)
	lfs 0,36(31)
	fcmpu 0,12,0
	bnl 0,.L203
	lfs 0,32(31)
	b .L194
.L203:
	lfs 0,36(31)
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
	.size	fminf,.-fminf
	.align 2
	.globl fminl
	.type	fminl, @function
fminl:
.LFB38:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,32(31)
	stfd 2,40(31)
	addi 9,31,48
	stfd 3,0(9)
	stfd 4,8(9)
	lfd 0,32(31)
	lfd 1,40(31)
	fcmpu 0,0,0
	bnu 0,.L205
	addi 9,31,48
	lfd 0,0(9)
	lfd 1,8(9)
	b .L206
.L205:
	addi 9,31,48
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,0,0
	bnu 0,.L207
	lfd 0,32(31)
	lfd 1,40(31)
	b .L206
.L207:
	lfd 0,32(31)
	lfd 1,40(31)
	stfd 0,64(31)
	ld 9,64(31)
	srdi 9,9,63
	mr 10,9
	addi 9,31,48
	lfd 0,0(9)
	lfd 1,8(9)
	stfd 0,64(31)
	ld 9,64(31)
	srdi 9,9,63
	cmpw 0,10,9
	beq 0,.L208
	lfd 0,32(31)
	lfd 1,40(31)
	stfd 0,64(31)
	ld 9,64(31)
	srdi 9,9,63
	cmpwi 0,9,0
	beq 0,.L209
	lfd 0,32(31)
	lfd 1,40(31)
	b .L206
.L209:
	addi 9,31,48
	lfd 0,0(9)
	lfd 1,8(9)
	b .L206
.L208:
	lfd 12,32(31)
	lfd 13,40(31)
	addi 9,31,48
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	bnl 0,.L215
	lfd 0,32(31)
	lfd 1,40(31)
	b .L206
.L215:
	addi 9,31,48
	lfd 0,0(9)
	lfd 1,8(9)
.L206:
	fmr 2,1
	fmr 1,0
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE38:
	.size	fminl,.-fminl
	.section	.rodata
	.align 3
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	".text"
	.align 2
	.globl l64a
	.type	l64a, @function
l64a:
.LFB39:
	.cfi_startproc
.LCF39:
0:	addis 2,12,.TOC.-.LCF39@ha
	addi 2,2,.TOC.-.LCF39@l
	.localentry	l64a,.-l64a
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	ld 9,48(31)
	stw 9,40(31)
	addis 9,2,s.0@toc@ha
	addi 9,9,s.0@toc@l
	std 9,32(31)
	b .L217
.L218:
	lwz 9,40(31)
	rlwinm 9,9,0,26,31
	addis 10,2,digits@toc@ha
	addi 10,10,digits@toc@l
	rldicl 9,9,0,32
	lbzx 10,10,9
	ld 9,32(31)
	stb 10,0(9)
	ld 9,32(31)
	addi 9,9,1
	std 9,32(31)
	lwz 9,40(31)
	srwi 9,9,6
	stw 9,40(31)
.L217:
	lwz 9,40(31)
	cmpwi 0,9,0
	bne 0,.L218
	ld 9,32(31)
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
	.size	l64a,.-l64a
	.lcomm	seed,8,8
	.type	seed, @object
	.align 2
	.globl srand
	.type	srand, @function
srand:
.LFB40:
	.cfi_startproc
.LCF40:
0:	addis 2,12,.TOC.-.LCF40@ha
	addi 2,2,.TOC.-.LCF40@l
	.localentry	srand,.-srand
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
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
	.size	srand,.-srand
	.align 2
	.globl rand
	.type	rand, @function
rand:
.LFB41:
	.cfi_startproc
.LCF41:
0:	addis 2,12,.TOC.-.LCF41@ha
	addi 2,2,.TOC.-.LCF41@l
	.localentry	rand,.-rand
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addis 9,2,seed@toc@ha
	addi 9,9,seed@toc@l
	ld 10,0(9)
	addis 9,2,.LC2@toc@ha
	ld 9,.LC2@toc@l(9)
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
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE41:
	.size	rand,.-rand
	.align 2
	.globl insque
	.type	insque, @function
insque:
.LFB42:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	ld 9,48(31)
	std 9,32(31)
	ld 9,56(31)
	std 9,40(31)
	ld 9,40(31)
	cmpdi 0,9,0
	bne 0,.L224
	ld 9,32(31)
	li 10,0
	std 10,8(9)
	ld 9,32(31)
	ld 10,8(9)
	ld 9,32(31)
	std 10,0(9)
	b .L223
.L224:
	ld 9,40(31)
	ld 10,0(9)
	ld 9,32(31)
	std 10,0(9)
	ld 9,32(31)
	ld 10,40(31)
	std 10,8(9)
	ld 9,40(31)
	ld 10,32(31)
	std 10,0(9)
	ld 9,32(31)
	ld 9,0(9)
	cmpdi 0,9,0
	beq 0,.L223
	ld 9,32(31)
	ld 9,0(9)
	ld 10,32(31)
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
	.size	insque,.-insque
	.align 2
	.globl remque
	.type	remque, @function
remque:
.LFB43:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	ld 9,48(31)
	std 9,32(31)
	ld 9,32(31)
	ld 9,0(9)
	cmpdi 0,9,0
	beq 0,.L227
	ld 9,32(31)
	ld 9,0(9)
	ld 10,32(31)
	ld 10,8(10)
	std 10,8(9)
.L227:
	ld 9,32(31)
	ld 9,8(9)
	cmpdi 0,9,0
	beq 0,.L229
	ld 9,32(31)
	ld 9,8(9)
	ld 10,32(31)
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
	.size	remque,.-remque
	.align 2
	.globl lsearch
	.type	lsearch, @function
lsearch:
.LFB44:
	.cfi_startproc
.LCF44:
0:	addis 2,12,.TOC.-.LCF44@ha
	addi 2,2,.TOC.-.LCF44@l
	.localentry	lsearch,.-lsearch
	mflr 0
	std 0,16(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 2,24(1)
	std 3,64(31)
	std 4,72(31)
	std 5,80(31)
	std 6,88(31)
	std 7,96(31)
	ld 30,88(31)
	mr 7,30
	addi 7,7,-1
	std 7,40(31)
	mr 10,30
	li 11,0
	srdi 7,10,61
	sldi 9,11,3
	or 9,7,9
	sldi 8,10,3
	ld 9,72(31)
	std 9,48(31)
	ld 9,80(31)
	ld 9,0(9)
	std 9,56(31)
	li 9,0
	std 9,32(31)
	b .L231
.L234:
	ld 9,32(31)
	mulld 9,30,9
	ld 10,48(31)
	add 10,10,9
	ld 9,96(31)
	mr 4,10
	ld 3,64(31)
	mr 12,9
	mtctr 12
	bctrl
	ld 2,24(1)
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L232
	ld 9,32(31)
	mulld 9,30,9
	ld 10,48(31)
	add 9,10,9
	b .L233
.L232:
	ld 9,32(31)
	addi 9,9,1
	std 9,32(31)
.L231:
	ld 10,32(31)
	ld 9,56(31)
	cmpld 0,10,9
	blt 0,.L234
	ld 9,56(31)
	addi 10,9,1
	ld 9,80(31)
	std 10,0(9)
	ld 9,56(31)
	mulld 9,30,9
	ld 10,48(31)
	add 9,10,9
	ld 5,88(31)
	ld 4,64(31)
	mr 3,9
	bl memcpy
	mr 9,3
.L233:
	mr 3,9
	addi 1,31,128
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
	.size	lsearch,.-lsearch
	.align 2
	.globl lfind
	.type	lfind, @function
lfind:
.LFB45:
	.cfi_startproc
.LCF45:
0:	addis 2,12,.TOC.-.LCF45@ha
	addi 2,2,.TOC.-.LCF45@l
	.localentry	lfind,.-lfind
	mflr 0
	std 0,16(1)
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	.cfi_offset 30, -16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 2,24(1)
	std 3,64(31)
	std 4,72(31)
	std 5,80(31)
	std 6,88(31)
	std 7,96(31)
	ld 30,88(31)
	mr 7,30
	addi 7,7,-1
	std 7,40(31)
	mr 10,30
	li 11,0
	srdi 7,10,61
	sldi 9,11,3
	or 9,7,9
	sldi 8,10,3
	ld 9,72(31)
	std 9,48(31)
	ld 9,80(31)
	ld 9,0(9)
	std 9,56(31)
	li 9,0
	std 9,32(31)
	b .L236
.L239:
	ld 9,32(31)
	mulld 9,30,9
	ld 10,48(31)
	add 10,10,9
	ld 9,96(31)
	mr 4,10
	ld 3,64(31)
	mr 12,9
	mtctr 12
	bctrl
	ld 2,24(1)
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L237
	ld 9,32(31)
	mulld 9,30,9
	ld 10,48(31)
	add 9,10,9
	b .L238
.L237:
	ld 9,32(31)
	addi 9,9,1
	std 9,32(31)
.L236:
	ld 10,32(31)
	ld 9,56(31)
	cmpld 0,10,9
	blt 0,.L239
	li 9,0
.L238:
	mr 3,9
	addi 1,31,128
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
	.size	lfind,.-lfind
	.align 2
	.globl abs
	.type	abs, @function
abs:
.LFB46:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
	srawi 10,9,31
	lwz 9,32(31)
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
	.size	abs,.-abs
	.align 2
	.globl atoi
	.type	atoi, @function
atoi:
.LFB47:
	.cfi_startproc
.LCF47:
0:	addis 2,12,.TOC.-.LCF47@ha
	addi 2,2,.TOC.-.LCF47@l
	.localentry	atoi,.-atoi
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	li 9,0
	stw 9,32(31)
	li 9,0
	stw 9,36(31)
	b .L243
.L244:
	ld 9,48(31)
	addi 9,9,1
	std 9,48(31)
.L243:
	ld 9,48(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	bl isspace
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L244
	ld 9,48(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,43
	beq 0,.L245
	cmpwi 0,9,45
	bne 0,.L247
	li 9,1
	stw 9,36(31)
.L245:
	ld 9,48(31)
	addi 9,9,1
	std 9,48(31)
	b .L247
.L248:
	lwz 9,32(31)
	mulli 10,9,10
	ld 9,48(31)
	addi 8,9,1
	std 8,48(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	subf 9,9,10
	stw 9,32(31)
.L247:
	ld 9,48(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L248
	lwz 9,36(31)
	cmpwi 0,9,0
	bne 0,.L249
	lwz 9,32(31)
	neg 9,9
	b .L251
.L249:
	lwz 9,32(31)
.L251:
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.cfi_endproc
.LFE47:
	.size	atoi,.-atoi
	.align 2
	.globl atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
.LCF48:
0:	addis 2,12,.TOC.-.LCF48@ha
	addi 2,2,.TOC.-.LCF48@l
	.localentry	atol,.-atol
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	li 9,0
	std 9,32(31)
	li 9,0
	stw 9,40(31)
	b .L253
.L254:
	ld 9,48(31)
	addi 9,9,1
	std 9,48(31)
.L253:
	ld 9,48(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	bl isspace
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L254
	ld 9,48(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,43
	beq 0,.L255
	cmpwi 0,9,45
	bne 0,.L257
	li 9,1
	stw 9,40(31)
.L255:
	ld 9,48(31)
	addi 9,9,1
	std 9,48(31)
	b .L257
.L258:
	ld 9,32(31)
	mulli 10,9,10
	ld 9,48(31)
	addi 8,9,1
	std 8,48(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	extsw 9,9
	subf 9,9,10
	std 9,32(31)
.L257:
	ld 9,48(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L258
	lwz 9,40(31)
	cmpwi 0,9,0
	bne 0,.L259
	ld 9,32(31)
	neg 9,9
	b .L261
.L259:
	ld 9,32(31)
.L261:
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.cfi_endproc
.LFE48:
	.size	atol,.-atol
	.align 2
	.globl atoll
	.type	atoll, @function
atoll:
.LFB49:
	.cfi_startproc
.LCF49:
0:	addis 2,12,.TOC.-.LCF49@ha
	addi 2,2,.TOC.-.LCF49@l
	.localentry	atoll,.-atoll
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	li 9,0
	std 9,32(31)
	li 9,0
	stw 9,40(31)
	b .L263
.L264:
	ld 9,48(31)
	addi 9,9,1
	std 9,48(31)
.L263:
	ld 9,48(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 3,9
	bl isspace
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L264
	ld 9,48(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,43
	beq 0,.L265
	cmpwi 0,9,45
	bne 0,.L267
	li 9,1
	stw 9,40(31)
.L265:
	ld 9,48(31)
	addi 9,9,1
	std 9,48(31)
	b .L267
.L268:
	ld 9,32(31)
	mulli 10,9,10
	ld 9,48(31)
	addi 8,9,1
	std 8,48(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	extsw 9,9
	subf 9,9,10
	std 9,32(31)
.L267:
	ld 9,48(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L268
	lwz 9,40(31)
	cmpwi 0,9,0
	bne 0,.L269
	ld 9,32(31)
	neg 9,9
	b .L271
.L269:
	ld 9,32(31)
.L271:
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.cfi_endproc
.LFE49:
	.size	atoll,.-atoll
	.align 2
	.globl bsearch
	.type	bsearch, @function
bsearch:
.LFB50:
	.cfi_startproc
.LCF50:
0:	addis 2,12,.TOC.-.LCF50@ha
	addi 2,2,.TOC.-.LCF50@l
	.localentry	bsearch,.-bsearch
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 2,24(1)
	std 3,48(31)
	std 4,56(31)
	std 5,64(31)
	std 6,72(31)
	std 7,80(31)
	b .L273
.L277:
	ld 9,64(31)
	srdi 10,9,1
	ld 9,72(31)
	mulld 9,10,9
	ld 10,56(31)
	add 9,10,9
	std 9,32(31)
	ld 9,80(31)
	ld 4,32(31)
	ld 3,48(31)
	mr 12,9
	mtctr 12
	bctrl
	ld 2,24(1)
	mr 9,3
	stw 9,40(31)
	lwz 9,40(31)
	cmpwi 0,9,0
	bge 0,.L274
	ld 9,64(31)
	srdi 9,9,1
	std 9,64(31)
	b .L273
.L274:
	lwz 9,40(31)
	cmpwi 0,9,0
	ble 0,.L275
	ld 10,32(31)
	ld 9,72(31)
	add 9,10,9
	std 9,56(31)
	ld 9,64(31)
	srdi 9,9,1
	ld 10,64(31)
	subf 9,9,10
	addi 9,9,-1
	std 9,64(31)
	b .L273
.L275:
	ld 9,32(31)
	b .L276
.L273:
	ld 9,64(31)
	cmpdi 0,9,0
	bne 0,.L277
	li 9,0
.L276:
	mr 3,9
	addi 1,31,112
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.cfi_endproc
.LFE50:
	.size	bsearch,.-bsearch
	.align 2
	.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB51:
	.cfi_startproc
.LCF51:
0:	addis 2,12,.TOC.-.LCF51@ha
	addi 2,2,.TOC.-.LCF51@l
	.localentry	bsearch_r,.-bsearch_r
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 2,24(1)
	std 3,64(31)
	std 4,72(31)
	std 5,80(31)
	std 6,88(31)
	std 7,96(31)
	std 8,104(31)
	ld 9,72(31)
	std 9,32(31)
	ld 9,80(31)
	stw 9,40(31)
	b .L279
.L283:
	lwz 9,40(31)
	srawi 9,9,1
	extsw 10,9
	ld 9,88(31)
	mulld 9,10,9
	ld 10,32(31)
	add 9,10,9
	std 9,48(31)
	ld 9,96(31)
	ld 5,104(31)
	ld 4,48(31)
	ld 3,64(31)
	mr 12,9
	mtctr 12
	bctrl
	ld 2,24(1)
	mr 9,3
	stw 9,56(31)
	lwz 9,56(31)
	cmpwi 0,9,0
	bne 0,.L280
	ld 9,48(31)
	b .L281
.L280:
	lwz 9,56(31)
	cmpwi 0,9,0
	ble 0,.L282
	ld 10,48(31)
	ld 9,88(31)
	add 9,10,9
	std 9,32(31)
	lwz 9,40(31)
	addi 9,9,-1
	stw 9,40(31)
.L282:
	lwz 9,40(31)
	srawi 9,9,1
	stw 9,40(31)
.L279:
	lwz 9,40(31)
	cmpwi 0,9,0
	bne 0,.L283
	li 9,0
.L281:
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
.LFE51:
	.size	bsearch_r,.-bsearch_r
	.align 2
	.globl div
	.type	div, @function
div:
.LFB52:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 10,3
	mr 8,4
	stw 10,32(31)
	mr 10,8
	stw 10,36(31)
	lwz 8,32(31)
	lwz 10,36(31)
	divw 6,8,10
	lwz 10,32(31)
	lwz 8,36(31)
	divw 7,10,8
	lwz 8,36(31)
	mullw 8,7,8
	subf 8,8,10
	rldicl 10,6,0,32
	rldicr 9,9,0,31
	or 9,9,10
	rldicl 10,8,0,32
	sldi 10,10,32
	rldicl 9,9,0,32
	or 9,9,10
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE52:
	.size	div,.-div
	.align 2
	.globl imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB53:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	ld 9,32(31)
	sradi 10,9,63
	ld 9,32(31)
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
	.size	imaxabs,.-imaxabs
	.align 2
	.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB54:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	std 4,40(31)
	ld 10,32(31)
	ld 9,40(31)
	divd 5,10,9
	ld 9,32(31)
	ld 10,40(31)
	divd 8,9,10
	ld 10,40(31)
	mulld 10,8,10
	subf 9,10,9
	mr 6,5
	mr 7,9
	mr 11,7
	mr 10,6
	mr 3,10
	mr 4,11
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE54:
	.size	imaxdiv,.-imaxdiv
	.align 2
	.globl labs
	.type	labs, @function
labs:
.LFB55:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	ld 9,32(31)
	sradi 10,9,63
	ld 9,32(31)
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
	.size	labs,.-labs
	.align 2
	.globl ldiv
	.type	ldiv, @function
ldiv:
.LFB56:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	std 4,40(31)
	ld 10,32(31)
	ld 9,40(31)
	divd 5,10,9
	ld 9,32(31)
	ld 10,40(31)
	divd 8,9,10
	ld 10,40(31)
	mulld 10,8,10
	subf 9,10,9
	mr 6,5
	mr 7,9
	mr 11,7
	mr 10,6
	mr 3,10
	mr 4,11
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE56:
	.size	ldiv,.-ldiv
	.align 2
	.globl llabs
	.type	llabs, @function
llabs:
.LFB57:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	ld 9,32(31)
	sradi 10,9,63
	ld 9,32(31)
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
	.size	llabs,.-llabs
	.align 2
	.globl lldiv
	.type	lldiv, @function
lldiv:
.LFB58:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	std 4,40(31)
	ld 10,32(31)
	ld 9,40(31)
	divd 5,10,9
	ld 9,32(31)
	ld 10,40(31)
	divd 8,9,10
	ld 10,40(31)
	mulld 10,8,10
	subf 9,10,9
	mr 6,5
	mr 7,9
	mr 11,7
	mr 10,6
	mr 3,10
	mr 4,11
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE58:
	.size	lldiv,.-lldiv
	.align 2
	.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB59:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	mr 9,4
	stw 9,40(31)
	b .L299
.L301:
	ld 9,32(31)
	addi 9,9,4
	std 9,32(31)
.L299:
	ld 9,32(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L300
	ld 9,32(31)
	lwz 9,0(9)
	lwz 10,40(31)
	cmpw 0,10,9
	bne 0,.L301
.L300:
	ld 9,32(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L302
	ld 9,32(31)
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
	.size	wcschr,.-wcschr
	.align 2
	.globl wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	std 4,40(31)
	b .L306
.L308:
	ld 9,32(31)
	addi 9,9,4
	std 9,32(31)
	ld 9,40(31)
	addi 9,9,4
	std 9,40(31)
.L306:
	ld 9,32(31)
	lwz 10,0(9)
	ld 9,40(31)
	lwz 9,0(9)
	cmpw 0,10,9
	bne 0,.L307
	ld 9,32(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L307
	ld 9,40(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L308
.L307:
	ld 9,32(31)
	lwz 10,0(9)
	ld 9,40(31)
	lwz 9,0(9)
	cmpw 0,10,9
	blt 0,.L309
	ld 9,32(31)
	lwz 8,0(9)
	ld 9,40(31)
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
	.size	wcscmp,.-wcscmp
	.align 2
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB61:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	ld 9,48(31)
	std 9,32(31)
	nop
.L313:
	ld 10,56(31)
	addi 9,10,4
	std 9,56(31)
	ld 9,48(31)
	addi 8,9,4
	std 8,48(31)
	lwz 10,0(10)
	stw 10,0(9)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L313
	ld 9,32(31)
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE61:
	.size	wcscpy,.-wcscpy
	.align 2
	.globl wcslen
	.type	wcslen, @function
wcslen:
.LFB62:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	ld 9,48(31)
	std 9,32(31)
	b .L316
.L317:
	ld 9,48(31)
	addi 9,9,4
	std 9,48(31)
.L316:
	ld 9,48(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L317
	ld 10,48(31)
	ld 9,32(31)
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
	.size	wcslen,.-wcslen
	.align 2
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	std 4,40(31)
	std 5,48(31)
	b .L320
.L322:
	ld 9,48(31)
	addi 9,9,-1
	std 9,48(31)
	ld 9,32(31)
	addi 9,9,4
	std 9,32(31)
	ld 9,40(31)
	addi 9,9,4
	std 9,40(31)
.L320:
	ld 9,48(31)
	cmpdi 0,9,0
	beq 0,.L321
	ld 9,32(31)
	lwz 10,0(9)
	ld 9,40(31)
	lwz 9,0(9)
	cmpw 0,10,9
	bne 0,.L321
	ld 9,32(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L321
	ld 9,40(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L322
.L321:
	ld 9,48(31)
	cmpdi 0,9,0
	beq 0,.L323
	ld 9,32(31)
	lwz 10,0(9)
	ld 9,40(31)
	lwz 9,0(9)
	cmpw 0,10,9
	blt 0,.L324
	ld 9,32(31)
	lwz 8,0(9)
	ld 9,40(31)
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
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE63:
	.size	wcsncmp,.-wcsncmp
	.align 2
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	mr 9,4
	std 5,48(31)
	stw 9,40(31)
	b .L329
.L331:
	ld 9,48(31)
	addi 9,9,-1
	std 9,48(31)
	ld 9,32(31)
	addi 9,9,4
	std 9,32(31)
.L329:
	ld 9,48(31)
	cmpdi 0,9,0
	beq 0,.L330
	ld 9,32(31)
	lwz 9,0(9)
	lwz 10,40(31)
	cmpw 0,10,9
	bne 0,.L331
.L330:
	ld 9,48(31)
	cmpdi 0,9,0
	beq 0,.L332
	ld 9,32(31)
	b .L334
.L332:
	li 9,0
.L334:
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE64:
	.size	wmemchr,.-wmemchr
	.align 2
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	std 4,40(31)
	std 5,48(31)
	b .L336
.L338:
	ld 9,48(31)
	addi 9,9,-1
	std 9,48(31)
	ld 9,32(31)
	addi 9,9,4
	std 9,32(31)
	ld 9,40(31)
	addi 9,9,4
	std 9,40(31)
.L336:
	ld 9,48(31)
	cmpdi 0,9,0
	beq 0,.L337
	ld 9,32(31)
	lwz 10,0(9)
	ld 9,40(31)
	lwz 9,0(9)
	cmpw 0,10,9
	beq 0,.L338
.L337:
	ld 9,48(31)
	cmpdi 0,9,0
	beq 0,.L339
	ld 9,32(31)
	lwz 10,0(9)
	ld 9,40(31)
	lwz 9,0(9)
	cmpw 0,10,9
	blt 0,.L340
	ld 9,32(31)
	lwz 8,0(9)
	ld 9,40(31)
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
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE65:
	.size	wmemcmp,.-wmemcmp
	.align 2
	.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	std 5,64(31)
	ld 9,48(31)
	std 9,32(31)
	b .L345
.L346:
	ld 10,56(31)
	addi 9,10,4
	std 9,56(31)
	ld 9,48(31)
	addi 8,9,4
	std 8,48(31)
	lwz 10,0(10)
	stw 10,0(9)
.L345:
	ld 9,64(31)
	addi 10,9,-1
	std 10,64(31)
	cmpdi 0,9,0
	bne 0,.L346
	ld 9,32(31)
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE66:
	.size	wmemcpy,.-wmemcpy
	.align 2
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	std 5,64(31)
	ld 9,48(31)
	std 9,32(31)
	ld 10,48(31)
	ld 9,56(31)
	cmpd 0,10,9
	bne 0,.L349
	ld 9,48(31)
	b .L350
.L349:
	ld 10,48(31)
	ld 9,56(31)
	subf 10,9,10
	ld 9,64(31)
	sldi 9,9,2
	cmpld 0,10,9
	bge 0,.L355
	b .L352
.L353:
	ld 9,64(31)
	sldi 9,9,2
	ld 10,56(31)
	add 10,10,9
	ld 9,64(31)
	sldi 9,9,2
	ld 8,48(31)
	add 9,8,9
	lwz 10,0(10)
	stw 10,0(9)
.L352:
	ld 9,64(31)
	addi 10,9,-1
	std 10,64(31)
	cmpdi 0,9,0
	bne 0,.L353
	b .L354
.L356:
	ld 10,56(31)
	addi 9,10,4
	std 9,56(31)
	ld 9,48(31)
	addi 8,9,4
	std 8,48(31)
	lwz 10,0(10)
	stw 10,0(9)
.L355:
	ld 9,64(31)
	addi 10,9,-1
	std 10,64(31)
	cmpdi 0,9,0
	bne 0,.L356
.L354:
	ld 9,32(31)
.L350:
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE67:
	.size	wmemmove,.-wmemmove
	.align 2
	.globl wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	mr 9,4
	std 5,64(31)
	stw 9,56(31)
	ld 9,48(31)
	std 9,32(31)
	b .L358
.L359:
	ld 9,48(31)
	addi 10,9,4
	std 10,48(31)
	lwz 10,56(31)
	stw 10,0(9)
.L358:
	ld 9,64(31)
	addi 10,9,-1
	std 10,64(31)
	cmpdi 0,9,0
	bne 0,.L359
	ld 9,32(31)
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE68:
	.size	wmemset,.-wmemset
	.align 2
	.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	std 5,64(31)
	ld 9,48(31)
	std 9,32(31)
	ld 9,56(31)
	std 9,40(31)
	ld 10,32(31)
	ld 9,40(31)
	cmpld 0,10,9
	bge 0,.L362
	ld 10,32(31)
	ld 9,64(31)
	add 9,10,9
	std 9,32(31)
	ld 10,40(31)
	ld 9,64(31)
	add 9,10,9
	std 9,40(31)
	b .L363
.L364:
	ld 9,32(31)
	addi 9,9,-1
	std 9,32(31)
	ld 9,40(31)
	addi 9,9,-1
	std 9,40(31)
	ld 9,32(31)
	lbz 10,0(9)
	ld 9,40(31)
	stb 10,0(9)
	ld 9,64(31)
	addi 9,9,-1
	std 9,64(31)
.L363:
	ld 9,64(31)
	cmpdi 0,9,0
	bne 0,.L364
	b .L368
.L362:
	ld 10,32(31)
	ld 9,40(31)
	cmpd 0,10,9
	beq 0,.L368
	b .L366
.L367:
	ld 10,32(31)
	addi 9,10,1
	std 9,32(31)
	ld 9,40(31)
	addi 8,9,1
	std 8,40(31)
	lbz 10,0(10)
	stb 10,0(9)
	ld 9,64(31)
	addi 9,9,-1
	std 9,64(31)
.L366:
	ld 9,64(31)
	cmpdi 0,9,0
	bne 0,.L367
.L368:
	nop
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE69:
	.size	bcopy,.-bcopy
	.align 2
	.globl rotl64
	.type	rotl64, @function
rotl64:
.LFB70:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	mr 9,4
	stw 9,40(31)
	ld 10,32(31)
	lwz 9,40(31)
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
	.size	rotl64,.-rotl64
	.align 2
	.globl rotr64
	.type	rotr64, @function
rotr64:
.LFB71:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	mr 9,4
	stw 9,40(31)
	lwz 9,40(31)
	subfic 9,9,64
	ld 10,32(31)
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
	.size	rotr64,.-rotr64
	.align 2
	.globl rotl32
	.type	rotl32, @function
rotl32:
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
	stw 9,32(31)
	mr 9,10
	stw 9,36(31)
	lwz 10,32(31)
	lwz 9,36(31)
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
	.size	rotl32,.-rotl32
	.align 2
	.globl rotr32
	.type	rotr32, @function
rotr32:
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
	stw 9,32(31)
	mr 9,10
	stw 9,36(31)
	lwz 9,36(31)
	subfic 9,9,32
	lwz 10,32(31)
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
	.size	rotr32,.-rotr32
	.align 2
	.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB74:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	mr 9,4
	stw 9,40(31)
	ld 10,32(31)
	lwz 9,40(31)
	sld 10,10,9
	lwz 9,40(31)
	subfic 9,9,64
	ld 8,32(31)
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
	.size	rotl_sz,.-rotl_sz
	.align 2
	.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB75:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	mr 9,4
	stw 9,40(31)
	ld 10,32(31)
	lwz 9,40(31)
	srd 10,10,9
	lwz 9,40(31)
	subfic 9,9,64
	ld 8,32(31)
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
	.size	rotr_sz,.-rotr_sz
	.align 2
	.globl rotl16
	.type	rotl16, @function
rotl16:
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
	sth 9,32(31)
	mr 9,10
	stw 9,36(31)
	lhz 10,32(31)
	lwz 9,36(31)
	slw 9,10,9
	mr 8,9
	lhz 10,32(31)
	lwz 9,36(31)
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
	.size	rotl16,.-rotl16
	.align 2
	.globl rotr16
	.type	rotr16, @function
rotr16:
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
	sth 9,32(31)
	mr 9,10
	stw 9,36(31)
	lhz 10,32(31)
	lwz 9,36(31)
	srw 9,10,9
	mr 8,9
	lhz 10,32(31)
	lwz 9,36(31)
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
	.size	rotr16,.-rotr16
	.align 2
	.globl rotl8
	.type	rotl8, @function
rotl8:
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
	stb 9,32(31)
	mr 9,10
	stw 9,36(31)
	lbz 10,32(31)
	lwz 9,36(31)
	slw 9,10,9
	mr 8,9
	lbz 10,32(31)
	lwz 9,36(31)
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
	.size	rotl8,.-rotl8
	.align 2
	.globl rotr8
	.type	rotr8, @function
rotr8:
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
	stb 9,32(31)
	mr 9,10
	stw 9,36(31)
	lbz 10,32(31)
	lwz 9,36(31)
	srw 9,10,9
	mr 8,9
	lbz 10,32(31)
	lwz 9,36(31)
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
	.size	rotr8,.-rotr8
	.align 2
	.globl bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB80:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	sth 9,48(31)
	li 9,255
	std 9,32(31)
	lhz 10,48(31)
	ld 9,32(31)
	sldi 9,9,8
	and 9,10,9
	srdi 9,9,8
	mr 10,9
	ld 9,32(31)
	mr 8,9
	lhz 9,48(31)
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
	.size	bswap_16,.-bswap_16
	.align 2
	.globl bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB81:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,48(31)
	li 9,255
	std 9,32(31)
	lwz 10,48(31)
	ld 9,32(31)
	sldi 9,9,24
	and 9,10,9
	srdi 9,9,24
	mr 8,9
	lwz 10,48(31)
	ld 9,32(31)
	sldi 9,9,16
	and 9,10,9
	srdi 9,9,8
	or 10,8,9
	ld 9,32(31)
	slwi 8,9,8
	lwz 9,48(31)
	and 9,8,9
	slwi 9,9,8
	or 10,10,9
	ld 9,32(31)
	mr 8,9
	lwz 9,48(31)
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
	.size	bswap_32,.-bswap_32
	.align 2
	.globl bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB82:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	li 9,255
	std 9,32(31)
	ld 9,32(31)
	sldi 10,9,56
	ld 9,48(31)
	and 9,10,9
	srdi 10,9,56
	ld 9,32(31)
	sldi 8,9,48
	ld 9,48(31)
	and 9,8,9
	srdi 9,9,40
	or 10,10,9
	ld 9,32(31)
	sldi 8,9,40
	ld 9,48(31)
	and 9,8,9
	srdi 9,9,24
	or 10,10,9
	ld 9,32(31)
	sldi 8,9,32
	ld 9,48(31)
	and 9,8,9
	srdi 9,9,8
	or 10,10,9
	ld 9,32(31)
	sldi 8,9,24
	ld 9,48(31)
	and 9,8,9
	sldi 9,9,8
	or 10,10,9
	ld 9,32(31)
	sldi 8,9,16
	ld 9,48(31)
	and 9,8,9
	sldi 9,9,24
	or 10,10,9
	ld 9,32(31)
	sldi 8,9,8
	ld 9,48(31)
	and 9,8,9
	sldi 9,9,40
	or 10,10,9
	ld 8,48(31)
	ld 9,32(31)
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
	.size	bswap_64,.-bswap_64
	.align 2
	.globl ffs
	.type	ffs, @function
ffs:
.LFB83:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,48(31)
	li 9,0
	stw 9,32(31)
	b .L396
.L399:
	lwz 10,48(31)
	lwz 9,32(31)
	srw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L397
	lwz 9,32(31)
	addi 9,9,1
	b .L398
.L397:
	lwz 9,32(31)
	addi 9,9,1
	stw 9,32(31)
.L396:
	lwz 9,32(31)
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
	.size	ffs,.-ffs
	.align 2
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	std 30,-16(1)
	std 31,-8(1)
	stdu 1,-48(1)
	.cfi_def_cfa_offset 48
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
	addi 1,31,48
	.cfi_def_cfa 1, 0
	ld 30,-16(1)
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,2,0,1
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs,.-libiberty_ffs
	.align 2
	.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB85:
	.cfi_startproc
.LCF85:
0:	addis 2,12,.TOC.-.LCF85@ha
	addi 2,2,.TOC.-.LCF85@l
	.localentry	gl_isinff,.-gl_isinff
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,32(31)
	lfs 12,32(31)
	addis 9,2,.LC3@toc@ha
	addi 9,9,.LC3@toc@l
	lfs 0,0(9)
	fcmpu 0,12,0
	blt 0,.L406
	lfs 12,32(31)
	addis 9,2,.LC4@toc@ha
	addi 9,9,.LC4@toc@l
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
	.size	gl_isinff,.-gl_isinff
	.align 2
	.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB86:
	.cfi_startproc
.LCF86:
0:	addis 2,12,.TOC.-.LCF86@ha
	addi 2,2,.TOC.-.LCF86@l
	.localentry	gl_isinfd,.-gl_isinfd
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,32(31)
	lfd 12,32(31)
	addis 9,2,.LC5@toc@ha
	addi 9,9,.LC5@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	blt 0,.L413
	lfd 12,32(31)
	addis 9,2,.LC6@toc@ha
	addi 9,9,.LC6@toc@l
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
	.size	gl_isinfd,.-gl_isinfd
	.align 2
	.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB87:
	.cfi_startproc
.LCF87:
0:	addis 2,12,.TOC.-.LCF87@ha
	addi 2,2,.TOC.-.LCF87@l
	.localentry	gl_isinfl,.-gl_isinfl
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,32(31)
	stfd 2,40(31)
	lfd 12,32(31)
	lfd 13,40(31)
	addis 9,2,.LC7@toc@ha
	addi 9,9,.LC7@toc@l
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,12,0
	bne 0,$+8
	fcmpu 0,13,1
	blt 0,.L420
	lfd 12,32(31)
	lfd 13,40(31)
	addis 9,2,.LC8@toc@ha
	addi 9,9,.LC8@toc@l
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
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE87:
	.size	gl_isinfl,.-gl_isinfl
	.align 2
	.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB88:
	.cfi_startproc
.LCF88:
0:	addis 2,12,.TOC.-.LCF88@ha
	addi 2,2,.TOC.-.LCF88@l
	.localentry	_Qp_itoq,.-_Qp_itoq
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	mr 9,4
	stw 9,40(31)
	lwz 9,40(31)
	extsw 9,9
	std 9,48(31)
	lfd 0,48(31)
	fcfid 12,0
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 11,0(9)
	fmr 0,12
	fmr 1,11
	ld 9,32(31)
	stfd 0,0(9)
	stfd 1,8(9)
	nop
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE88:
	.size	_Qp_itoq,.-_Qp_itoq
	.align 2
	.globl ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB89:
	.cfi_startproc
.LCF89:
0:	addis 2,12,.TOC.-.LCF89@ha
	addi 2,2,.TOC.-.LCF89@l
	.localentry	ldexpf,.-ldexpf
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,48(31)
	mr 9,4
	stw 9,52(31)
	lfs 12,48(31)
	lfs 0,48(31)
	fcmpu 0,12,0
	bun 0,.L428
	lfs 0,48(31)
	fadds 0,0,0
	lfs 12,48(31)
	fcmpu 0,12,0
	beq 0,.L428
	lwz 9,52(31)
	cmpwi 0,9,0
	bge 0,.L429
	addis 9,2,.LC9@toc@ha
	addi 9,9,.LC9@toc@l
	lfs 0,0(9)
	b .L430
.L429:
	addis 9,2,.LC10@toc@ha
	addi 9,9,.LC10@toc@l
	lfs 0,0(9)
.L430:
	stfs 0,32(31)
.L433:
	lwz 9,52(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L431
	lfs 12,48(31)
	lfs 0,32(31)
	fmuls 0,12,0
	stfs 0,48(31)
.L431:
	lwz 9,52(31)
	srawi 9,9,1
	addze 9,9
	stw 9,52(31)
	lwz 9,52(31)
	cmpwi 0,9,0
	beq 0,.L435
	lfs 0,32(31)
	fmuls 0,0,0
	stfs 0,32(31)
	b .L433
.L435:
	nop
.L428:
	lfs 0,48(31)
	fmr 1,0
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE89:
	.size	ldexpf,.-ldexpf
	.align 2
	.globl ldexp
	.type	ldexp, @function
ldexp:
.LFB90:
	.cfi_startproc
.LCF90:
0:	addis 2,12,.TOC.-.LCF90@ha
	addi 2,2,.TOC.-.LCF90@l
	.localentry	ldexp,.-ldexp
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,48(31)
	mr 9,4
	stw 9,56(31)
	lfd 12,48(31)
	lfd 0,48(31)
	fcmpu 0,12,0
	bun 0,.L437
	lfd 0,48(31)
	fadd 0,0,0
	lfd 12,48(31)
	fcmpu 0,12,0
	beq 0,.L437
	lwz 9,56(31)
	cmpwi 0,9,0
	bge 0,.L438
	addis 9,2,.LC11@toc@ha
	addi 9,9,.LC11@toc@l
	lfd 0,0(9)
	b .L439
.L438:
	addis 9,2,.LC12@toc@ha
	addi 9,9,.LC12@toc@l
	lfd 0,0(9)
.L439:
	stfd 0,32(31)
.L442:
	lwz 9,56(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L440
	lfd 12,48(31)
	lfd 0,32(31)
	fmul 0,12,0
	stfd 0,48(31)
.L440:
	lwz 9,56(31)
	srawi 9,9,1
	addze 9,9
	stw 9,56(31)
	lwz 9,56(31)
	cmpwi 0,9,0
	beq 0,.L444
	lfd 0,32(31)
	fmul 0,0,0
	stfd 0,32(31)
	b .L442
.L444:
	nop
.L437:
	lfd 0,48(31)
	fmr 1,0
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE90:
	.size	ldexp,.-ldexp
	.align 2
	.globl ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB91:
	.cfi_startproc
.LCF91:
0:	addis 2,12,.TOC.-.LCF91@ha
	addi 2,2,.TOC.-.LCF91@l
	.localentry	ldexpl,.-ldexpl
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,31,48
	stfd 1,0(9)
	stfd 2,8(9)
	mr 9,5
	stw 9,64(31)
	addi 9,31,48
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,0,0
	bun 0,.L446
	addi 9,31,48
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
	addi 9,31,48
	lfd 0,0(9)
	lfd 1,8(9)
	fcmpu 0,0,12
	bne 0,$+8
	fcmpu 0,1,13
	beq 0,.L446
	lwz 9,64(31)
	cmpwi 0,9,0
	bge 0,.L447
	addis 9,2,.LC13@toc@ha
	addi 9,9,.LC13@toc@l
	lfd 0,0(9)
	lfd 1,8(9)
	b .L448
.L447:
	addis 9,2,.LC14@toc@ha
	addi 9,9,.LC14@toc@l
	lfd 0,0(9)
	lfd 1,8(9)
.L448:
	stfd 0,32(31)
	stfd 1,40(31)
.L451:
	lwz 9,64(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L449
	addi 9,31,48
	lfd 3,32(31)
	lfd 4,40(31)
	lfd 1,0(9)
	lfd 2,8(9)
	bl __gcc_qmul
	nop
	fmr 0,1
	fmr 1,2
	addi 9,31,48
	stfd 0,0(9)
	stfd 1,8(9)
.L449:
	lwz 9,64(31)
	srawi 9,9,1
	addze 9,9
	stw 9,64(31)
	lwz 9,64(31)
	cmpwi 0,9,0
	beq 0,.L453
	lfd 3,32(31)
	lfd 4,40(31)
	lfd 1,32(31)
	lfd 2,40(31)
	bl __gcc_qmul
	nop
	fmr 0,1
	fmr 1,2
	stfd 0,32(31)
	stfd 1,40(31)
	b .L451
.L453:
	nop
.L446:
	addi 9,31,48
	lfd 0,0(9)
	lfd 1,8(9)
	fmr 2,1
	fmr 1,0
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.cfi_endproc
.LFE91:
	.size	ldexpl,.-ldexpl
	.align 2
	.globl memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	std 5,64(31)
	ld 9,56(31)
	std 9,32(31)
	ld 9,48(31)
	std 9,40(31)
	b .L455
.L456:
	ld 9,32(31)
	addi 10,9,1
	std 10,32(31)
	lbz 8,0(9)
	ld 9,40(31)
	addi 10,9,1
	std 10,40(31)
	lbz 10,0(9)
	xor 10,8,10
	stb 10,0(9)
	ld 9,64(31)
	addi 9,9,-1
	std 9,64(31)
.L455:
	ld 9,64(31)
	cmpdi 0,9,0
	bne 0,.L456
	ld 9,48(31)
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE92:
	.size	memxor,.-memxor
	.align 2
	.globl strncat
	.type	strncat, @function
strncat:
.LFB93:
	.cfi_startproc
.LCF93:
0:	addis 2,12,.TOC.-.LCF93@ha
	addi 2,2,.TOC.-.LCF93@l
	.localentry	strncat,.-strncat
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	std 5,64(31)
	ld 3,48(31)
	bl strlen
	mr 10,3
	ld 9,48(31)
	add 9,9,10
	std 9,32(31)
	b .L459
.L461:
	ld 9,56(31)
	addi 9,9,1
	std 9,56(31)
	ld 9,32(31)
	addi 9,9,1
	std 9,32(31)
	ld 9,64(31)
	addi 9,9,-1
	std 9,64(31)
.L459:
	ld 9,64(31)
	cmpdi 0,9,0
	beq 0,.L460
	ld 9,56(31)
	lbz 10,0(9)
	ld 9,32(31)
	stb 10,0(9)
	ld 9,32(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L461
.L460:
	ld 9,64(31)
	cmpdi 0,9,0
	bne 0,.L462
	ld 9,32(31)
	li 10,0
	stb 10,0(9)
.L462:
	ld 9,48(31)
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.cfi_endproc
.LFE93:
	.size	strncat,.-strncat
	.align 2
	.globl strnlen
	.type	strnlen, @function
strnlen:
.LFB94:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	li 9,0
	std 9,32(31)
	b .L465
.L470:
	nop
	ld 9,32(31)
	addi 9,9,1
	std 9,32(31)
.L465:
	ld 10,32(31)
	ld 9,56(31)
	cmpld 0,10,9
	bge 0,.L466
	ld 10,48(31)
	ld 9,32(31)
	add 9,10,9
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L470
.L466:
	ld 9,32(31)
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE94:
	.size	strnlen,.-strnlen
	.align 2
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	b .L472
.L476:
	ld 9,56(31)
	std 9,32(31)
	b .L473
.L475:
	ld 9,32(31)
	addi 10,9,1
	std 10,32(31)
	lbz 10,0(9)
	ld 9,48(31)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	bne 0,.L473
	ld 9,48(31)
	b .L474
.L473:
	ld 9,32(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L475
	ld 9,48(31)
	addi 9,9,1
	std 9,48(31)
.L472:
	ld 9,48(31)
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
	.size	strpbrk,.-strpbrk
	.align 2
	.globl strrchr
	.type	strrchr, @function
strrchr:
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
	stw 10,48(31)
	li 10,0
	std 10,32(31)
.L479:
	lbz 10,0(9)
	rlwinm 10,10,0,0xff
	lwz 8,48(31)
	cmpw 0,8,10
	bne 0,.L478
	std 9,32(31)
.L478:
	mr 10,9
	addi 9,10,1
	lbz 10,0(10)
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	bne 0,.L479
	ld 9,32(31)
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE96:
	.size	strrchr,.-strrchr
	.align 2
	.globl strstr
	.type	strstr, @function
strstr:
.LFB97:
	.cfi_startproc
.LCF97:
0:	addis 2,12,.TOC.-.LCF97@ha
	addi 2,2,.TOC.-.LCF97@l
	.localentry	strstr,.-strstr
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	ld 9,48(31)
	std 9,32(31)
	ld 3,56(31)
	bl strlen
	std 3,40(31)
	ld 9,40(31)
	cmpdi 0,9,0
	bne 0,.L484
	ld 9,48(31)
	b .L483
.L486:
	ld 5,40(31)
	ld 4,56(31)
	ld 3,32(31)
	bl strncmp
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L485
	ld 9,32(31)
	b .L483
.L485:
	ld 9,32(31)
	addi 9,9,1
	std 9,32(31)
.L484:
	ld 9,56(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	extsw 9,9
	mr 4,9
	ld 3,32(31)
	bl strchr
	std 3,32(31)
	ld 9,32(31)
	cmpdi 0,9,0
	bne 0,.L486
	li 9,0
.L483:
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.cfi_endproc
.LFE97:
	.size	strstr,.-strstr
	.align 2
	.globl copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
.LCF98:
0:	addis 2,12,.TOC.-.LCF98@ha
	addi 2,2,.TOC.-.LCF98@l
	.localentry	copysign,.-copysign
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,32(31)
	stfd 2,40(31)
	lfd 12,32(31)
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bnl 0,.L488
	lfd 12,40(31)
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bgt 0,.L490
.L488:
	lfd 12,32(31)
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bng 0,.L491
	lfd 12,40(31)
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bnl 0,.L491
.L490:
	lfd 0,32(31)
	fneg 0,0
	b .L494
.L491:
	lfd 0,32(31)
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
	.size	copysign,.-copysign
	.align 2
	.globl memmem
	.type	memmem, @function
memmem:
.LFB99:
	.cfi_startproc
.LCF99:
0:	addis 2,12,.TOC.-.LCF99@ha
	addi 2,2,.TOC.-.LCF99@l
	.localentry	memmem,.-memmem
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	std 5,64(31)
	std 6,72(31)
	ld 10,56(31)
	ld 9,72(31)
	subf 9,9,10
	ld 10,48(31)
	add 9,10,9
	std 9,40(31)
	ld 9,72(31)
	cmpdi 0,9,0
	bne 0,.L498
	ld 9,48(31)
	b .L499
.L498:
	ld 10,56(31)
	ld 9,72(31)
	subfc 9,9,10
	subfe 9,9,9
	neg 9,9
	rlwinm 9,9,0,0xff
	cmpdi 0,9,0
	beq 0,.L500
	li 9,0
	b .L499
.L500:
	ld 9,48(31)
	std 9,32(31)
	b .L501
.L503:
	ld 9,32(31)
	lbz 10,0(9)
	ld 9,64(31)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	bne 0,.L502
	ld 9,32(31)
	addi 10,9,1
	ld 9,64(31)
	addi 8,9,1
	ld 9,72(31)
	addi 9,9,-1
	mr 5,9
	mr 4,8
	mr 3,10
	bl memcmp
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L502
	ld 9,32(31)
	b .L499
.L502:
	ld 9,32(31)
	addi 9,9,1
	std 9,32(31)
.L501:
	ld 10,32(31)
	ld 9,40(31)
	cmpld 0,10,9
	ble 0,.L503
	li 9,0
.L499:
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.cfi_endproc
.LFE99:
	.size	memmem,.-memmem
	.align 2
	.globl mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB100:
	.cfi_startproc
.LCF100:
0:	addis 2,12,.TOC.-.LCF100@ha
	addi 2,2,.TOC.-.LCF100@l
	.localentry	mempcpy,.-mempcpy
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	std 4,40(31)
	std 5,48(31)
	ld 5,48(31)
	ld 4,40(31)
	ld 3,32(31)
	bl memcpy
	mr 10,3
	ld 9,48(31)
	add 9,10,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.cfi_endproc
.LFE100:
	.size	mempcpy,.-mempcpy
	.align 2
	.globl frexp
	.type	frexp, @function
frexp:
.LFB101:
	.cfi_startproc
.LCF101:
0:	addis 2,12,.TOC.-.LCF101@ha
	addi 2,2,.TOC.-.LCF101@l
	.localentry	frexp,.-frexp
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,48(31)
	std 4,56(31)
	li 9,0
	stw 9,36(31)
	li 9,0
	stw 9,32(31)
	lfd 12,48(31)
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bnl 0,.L507
	lfd 0,48(31)
	fneg 0,0
	stfd 0,48(31)
	li 9,1
	stw 9,32(31)
.L507:
	lfd 12,48(31)
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	cror 2,0,3
	beq 0,.L522
	b .L511
.L512:
	lwz 9,36(31)
	addi 9,9,1
	stw 9,36(31)
	lfd 12,48(31)
	addis 9,2,.LC12@toc@ha
	addi 9,9,.LC12@toc@l
	lfd 0,0(9)
	fdiv 0,12,0
	stfd 0,48(31)
.L511:
	lfd 12,48(31)
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	cror 2,1,2
	beq 0,.L512
	b .L513
.L522:
	lfd 12,48(31)
	addis 9,2,.LC11@toc@ha
	addi 9,9,.LC11@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	bnl 0,.L513
	lfd 12,48(31)
	addis 9,2,.LC0@toc@ha
	addi 9,9,.LC0@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	beq 0,.L513
	b .L515
.L516:
	lwz 9,36(31)
	addi 9,9,-1
	stw 9,36(31)
	lfd 0,48(31)
	fadd 0,0,0
	stfd 0,48(31)
.L515:
	lfd 12,48(31)
	addis 9,2,.LC11@toc@ha
	addi 9,9,.LC11@toc@l
	lfd 0,0(9)
	fcmpu 0,12,0
	blt 0,.L516
.L513:
	ld 9,56(31)
	lwz 10,36(31)
	stw 10,0(9)
	lwz 9,32(31)
	cmpwi 0,9,0
	beq 0,.L517
	lfd 0,48(31)
	fneg 0,0
	stfd 0,48(31)
.L517:
	lfd 0,48(31)
	fmr 1,0
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE101:
	.size	frexp,.-frexp
	.align 2
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	li 9,0
	std 9,32(31)
	ld 9,48(31)
	std 9,40(31)
	b .L524
.L526:
	ld 9,40(31)
	rldicl 9,9,0,63
	cmpdi 0,9,0
	beq 0,.L525
	ld 10,32(31)
	ld 9,56(31)
	add 9,10,9
	std 9,32(31)
.L525:
	ld 9,56(31)
	sldi 9,9,1
	std 9,56(31)
	ld 9,40(31)
	srdi 9,9,1
	std 9,40(31)
.L524:
	ld 9,40(31)
	cmpdi 0,9,0
	bne 0,.L526
	ld 9,32(31)
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE102:
	.size	__muldi3,.-__muldi3
	.align 2
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
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
	std 5,56(31)
	stw 9,48(31)
	mr 9,10
	stw 9,52(31)
	li 9,1
	stw 9,32(31)
	li 9,0
	stw 9,36(31)
	b .L529
.L531:
	lwz 9,52(31)
	slwi 9,9,1
	stw 9,52(31)
	lwz 9,32(31)
	slwi 9,9,1
	stw 9,32(31)
.L529:
	lwz 10,52(31)
	lwz 9,48(31)
	cmplw 0,10,9
	bge 0,.L532
	lwz 9,32(31)
	cmpwi 0,9,0
	beq 0,.L532
	lwz 9,52(31)
	cmpwi 0,9,0
	bge 0,.L531
	b .L532
.L534:
	lwz 10,48(31)
	lwz 9,52(31)
	cmplw 0,10,9
	blt 0,.L533
	lwz 10,48(31)
	lwz 9,52(31)
	subf 9,9,10
	stw 9,48(31)
	lwz 10,36(31)
	lwz 9,32(31)
	or 9,10,9
	stw 9,36(31)
.L533:
	lwz 9,32(31)
	srwi 9,9,1
	stw 9,32(31)
	lwz 9,52(31)
	srwi 9,9,1
	stw 9,52(31)
.L532:
	lwz 9,32(31)
	cmpwi 0,9,0
	bne 0,.L534
	ld 9,56(31)
	cmpdi 0,9,0
	beq 0,.L535
	lwz 9,48(31)
	b .L536
.L535:
	lwz 9,36(31)
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
	.size	udivmodsi4,.-udivmodsi4
	.align 2
	.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stb 9,48(31)
	lbz 9,48(31)
	cmpwi 0,9,0
	bne 0,.L538
	li 9,7
	b .L539
.L538:
	lbz 9,48(31)
	slwi 9,9,8
	cntlzw 9,9
	stw 9,32(31)
	lwz 9,32(31)
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
	.size	__clrsbqi2,.-__clrsbqi2
	.align 2
	.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	ld 9,48(31)
	cmpdi 0,9,0
	bge 0,.L541
	ld 9,48(31)
	not 9,9
	std 9,48(31)
.L541:
	ld 9,48(31)
	cmpdi 0,9,0
	bne 0,.L542
	li 9,63
	b .L543
.L542:
	ld 9,48(31)
	cntlzd 9,9
	stw 9,32(31)
	lwz 9,32(31)
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
	.size	__clrsbdi2,.-__clrsbdi2
	.align 2
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
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
	stw 9,48(31)
	mr 9,10
	stw 9,52(31)
	li 9,0
	stw 9,32(31)
	b .L545
.L547:
	lwz 9,48(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L546
	lwz 10,32(31)
	lwz 9,52(31)
	add 9,10,9
	stw 9,32(31)
.L546:
	lwz 9,48(31)
	srwi 9,9,1
	stw 9,48(31)
	lwz 9,52(31)
	slwi 9,9,1
	stw 9,52(31)
.L545:
	lwz 9,48(31)
	cmpwi 0,9,0
	bne 0,.L547
	lwz 9,32(31)
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
	.size	__mulsi3,.-__mulsi3
	.align 2
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,64(31)
	std 4,72(31)
	mr 9,5
	stw 9,80(31)
	lwz 9,80(31)
	srwi 9,9,3
	stw 9,40(31)
	lwz 9,80(31)
	rlwinm 9,9,0,0,28
	stw 9,36(31)
	ld 9,64(31)
	std 9,48(31)
	ld 9,72(31)
	std 9,56(31)
	ld 10,48(31)
	ld 9,56(31)
	cmpld 0,10,9
	blt 0,.L550
	lwz 9,80(31)
	ld 10,56(31)
	add 9,10,9
	ld 10,48(31)
	cmpld 0,10,9
	ble 0,.L557
.L550:
	li 9,0
	stw 9,32(31)
	b .L552
.L553:
	lwz 9,32(31)
	sldi 9,9,3
	ld 10,72(31)
	add 10,10,9
	lwz 9,32(31)
	sldi 9,9,3
	ld 8,64(31)
	add 9,8,9
	ld 10,0(10)
	std 10,0(9)
	lwz 9,32(31)
	addi 9,9,1
	stw 9,32(31)
.L552:
	lwz 10,32(31)
	lwz 9,40(31)
	cmplw 0,10,9
	blt 0,.L553
	b .L554
.L555:
	lwz 9,36(31)
	ld 10,56(31)
	add 10,10,9
	lwz 9,36(31)
	ld 8,48(31)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,36(31)
	addi 9,9,1
	stw 9,36(31)
.L554:
	lwz 10,80(31)
	lwz 9,36(31)
	cmplw 0,10,9
	bgt 0,.L555
	b .L556
.L558:
	lwz 9,80(31)
	ld 10,56(31)
	add 10,10,9
	lwz 9,80(31)
	ld 8,48(31)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
.L557:
	lwz 9,80(31)
	addi 10,9,-1
	stw 10,80(31)
	cmpwi 0,9,0
	bne 0,.L558
	nop
.L556:
	nop
	addi 1,31,112
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE107:
	.size	__cmovd,.-__cmovd
	.align 2
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,64(31)
	std 4,72(31)
	mr 9,5
	stw 9,80(31)
	lwz 9,80(31)
	srwi 9,9,1
	stw 9,36(31)
	ld 9,64(31)
	std 9,40(31)
	ld 9,72(31)
	std 9,48(31)
	ld 10,40(31)
	ld 9,48(31)
	cmpld 0,10,9
	blt 0,.L560
	lwz 9,80(31)
	ld 10,48(31)
	add 9,10,9
	ld 10,40(31)
	cmpld 0,10,9
	ble 0,.L566
.L560:
	li 9,0
	stw 9,32(31)
	b .L562
.L563:
	lwz 9,32(31)
	sldi 9,9,1
	ld 10,72(31)
	add 10,10,9
	lwz 9,32(31)
	sldi 9,9,1
	ld 8,64(31)
	add 9,8,9
	lhz 10,0(10)
	sth 10,0(9)
	lwz 9,32(31)
	addi 9,9,1
	stw 9,32(31)
.L562:
	lwz 10,32(31)
	lwz 9,36(31)
	cmplw 0,10,9
	blt 0,.L563
	lwz 9,80(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L565
	lwz 9,80(31)
	addi 9,9,-1
	rldicl 9,9,0,32
	ld 10,48(31)
	add 10,10,9
	lwz 9,80(31)
	addi 9,9,-1
	rldicl 9,9,0,32
	ld 8,40(31)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
	b .L565
.L567:
	lwz 9,80(31)
	ld 10,48(31)
	add 10,10,9
	lwz 9,80(31)
	ld 8,40(31)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
.L566:
	lwz 9,80(31)
	addi 10,9,-1
	stw 10,80(31)
	cmpwi 0,9,0
	bne 0,.L567
	nop
.L565:
	nop
	addi 1,31,112
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE108:
	.size	__cmovh,.-__cmovh
	.align 2
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,64(31)
	std 4,72(31)
	mr 9,5
	stw 9,80(31)
	lwz 9,80(31)
	srwi 9,9,2
	stw 9,40(31)
	lwz 9,80(31)
	rlwinm 9,9,0,0,29
	stw 9,36(31)
	ld 9,64(31)
	std 9,48(31)
	ld 9,72(31)
	std 9,56(31)
	ld 10,48(31)
	ld 9,56(31)
	cmpld 0,10,9
	blt 0,.L569
	lwz 9,80(31)
	ld 10,56(31)
	add 9,10,9
	ld 10,48(31)
	cmpld 0,10,9
	ble 0,.L576
.L569:
	li 9,0
	stw 9,32(31)
	b .L571
.L572:
	lwz 9,32(31)
	sldi 9,9,2
	ld 10,72(31)
	add 10,10,9
	lwz 9,32(31)
	sldi 9,9,2
	ld 8,64(31)
	add 9,8,9
	lwz 10,0(10)
	stw 10,0(9)
	lwz 9,32(31)
	addi 9,9,1
	stw 9,32(31)
.L571:
	lwz 10,32(31)
	lwz 9,40(31)
	cmplw 0,10,9
	blt 0,.L572
	b .L573
.L574:
	lwz 9,36(31)
	ld 10,56(31)
	add 10,10,9
	lwz 9,36(31)
	ld 8,48(31)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,36(31)
	addi 9,9,1
	stw 9,36(31)
.L573:
	lwz 10,80(31)
	lwz 9,36(31)
	cmplw 0,10,9
	bgt 0,.L574
	b .L575
.L577:
	lwz 9,80(31)
	ld 10,56(31)
	add 10,10,9
	lwz 9,80(31)
	ld 8,48(31)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
.L576:
	lwz 9,80(31)
	addi 10,9,-1
	stw 10,80(31)
	cmpwi 0,9,0
	bne 0,.L577
	nop
.L575:
	nop
	addi 1,31,112
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE109:
	.size	__cmovw,.-__cmovw
	.align 2
	.globl __modi
	.type	__modi, @function
__modi:
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
	stw 9,32(31)
	mr 9,10
	stw 9,36(31)
	lwz 9,32(31)
	lwz 10,36(31)
	divw 8,9,10
	lwz 10,36(31)
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
	.size	__modi,.-__modi
	.align 2
	.globl __uitod
	.type	__uitod, @function
__uitod:
.LFB111:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
	rldicl 9,9,0,32
	std 9,40(31)
	lfd 0,40(31)
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
	.size	__uitod,.-__uitod
	.align 2
	.globl __uitof
	.type	__uitof, @function
__uitof:
.LFB112:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
	rldicl 10,9,0,32
	sradi 8,10,53
	rldicl 9,10,0,53
	addi 8,8,1
	addi 9,9,2047
	cmpldi 0,8,2
	or 9,9,10
	rldicr 9,9,0,52
	bge 0,.L583
	mr 9,10
.L583:
	std 9,40(31)
	lfd 0,40(31)
	fcfid 12,0
	frsp 0,12
	fmr 1,0
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE112:
	.size	__uitof,.-__uitof
	.align 2
	.globl __ulltod
	.type	__ulltod, @function
__ulltod:
.LFB113:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	ld 9,32(31)
	cmpdi 0,9,0
	blt 0,.L587
	lfd 0,32(31)
	fcfid 0,0
	b .L588
.L587:
	ld 9,32(31)
	rldicl 9,9,0,63
	ld 10,32(31)
	srdi 10,10,1
	or 9,9,10
	std 9,40(31)
	lfd 0,40(31)
	fcfid 0,0
	fadd 0,0,0
.L588:
	fmr 1,0
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE113:
	.size	__ulltod,.-__ulltod
	.align 2
	.globl __ulltof
	.type	__ulltof, @function
__ulltof:
.LFB114:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	ld 9,32(31)
	cmpdi 0,9,0
	blt 0,.L591
	ld 10,32(31)
	sradi 8,10,53
	rldicl 9,10,0,53
	addi 8,8,1
	addi 9,9,2047
	cmpldi 0,8,2
	or 9,9,10
	rldicr 9,9,0,52
	bge 0,.L592
	mr 9,10
.L592:
	std 9,40(31)
	lfd 0,40(31)
	fcfid 12,0
	frsp 0,12
	b .L594
.L591:
	ld 9,32(31)
	rldicl 10,9,0,63
	ld 9,32(31)
	srdi 9,9,1
	or 10,10,9
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
	std 9,40(31)
	lfd 0,40(31)
	fcfid 12,0
	frsp 0,12
	fadds 0,0,0
.L594:
	fmr 1,0
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE114:
	.size	__ulltof,.-__ulltof
	.align 2
	.globl __umodi
	.type	__umodi, @function
__umodi:
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
	stw 9,32(31)
	mr 9,10
	stw 9,36(31)
	lwz 9,32(31)
	lwz 10,36(31)
	divwu 8,9,10
	lwz 10,36(31)
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
	.size	__umodi,.-__umodi
	.align 2
	.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB116:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	sth 9,48(31)
	li 9,0
	stw 9,32(31)
	b .L598
.L601:
	lhz 10,48(31)
	lwz 9,32(31)
	subfic 9,9,15
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	bne 0,.L603
	lwz 9,32(31)
	addi 9,9,1
	stw 9,32(31)
.L598:
	lwz 9,32(31)
	cmpwi 0,9,15
	ble 0,.L601
	b .L600
.L603:
	nop
.L600:
	lwz 9,32(31)
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
	.size	__clzhi2,.-__clzhi2
	.align 2
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	sth 9,48(31)
	li 9,0
	stw 9,32(31)
	b .L605
.L608:
	lhz 10,48(31)
	lwz 9,32(31)
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	bne 0,.L610
	lwz 9,32(31)
	addi 9,9,1
	stw 9,32(31)
.L605:
	lwz 9,32(31)
	cmpwi 0,9,15
	ble 0,.L608
	b .L607
.L610:
	nop
.L607:
	lwz 9,32(31)
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
	.size	__ctzhi2,.-__ctzhi2
	.align 2
	.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
.LCF118:
0:	addis 2,12,.TOC.-.LCF118@ha
	addi 2,2,.TOC.-.LCF118@l
	.localentry	__fixunssfsi,.-__fixunssfsi
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,32(31)
	lfs 12,32(31)
	addis 9,2,.LC16@toc@ha
	addi 9,9,.LC16@toc@l
	lfs 0,0(9)
	fcmpu 0,12,0
	cror 2,0,3
	beq 0,.L616
	lfs 12,32(31)
	addis 9,2,.LC16@toc@ha
	addi 9,9,.LC16@toc@l
	lfs 0,0(9)
	fsubs 0,12,0
	fctidz 0,0
	stfd 0,40(31)
	ld 9,40(31)
	addis 9,9,0x1
	addi 9,9,-32768
	b .L614
.L616:
	lfs 0,32(31)
	fctidz 0,0
	stfd 0,40(31)
	ld 9,40(31)
.L614:
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE118:
	.size	__fixunssfsi,.-__fixunssfsi
	.align 2
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB119:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	sth 9,48(31)
	li 9,0
	stw 9,36(31)
	li 9,0
	stw 9,32(31)
	b .L618
.L620:
	lhz 10,48(31)
	lwz 9,32(31)
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L619
	lwz 9,36(31)
	addi 9,9,1
	stw 9,36(31)
.L619:
	lwz 9,32(31)
	addi 9,9,1
	stw 9,32(31)
.L618:
	lwz 9,32(31)
	cmpwi 0,9,15
	ble 0,.L620
	lwz 9,36(31)
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
	.size	__parityhi2,.-__parityhi2
	.align 2
	.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB120:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	sth 9,48(31)
	li 9,0
	stw 9,36(31)
	li 9,0
	stw 9,32(31)
	b .L623
.L625:
	lhz 10,48(31)
	lwz 9,32(31)
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L624
	lwz 9,36(31)
	addi 9,9,1
	stw 9,36(31)
.L624:
	lwz 9,32(31)
	addi 9,9,1
	stw 9,32(31)
.L623:
	lwz 9,32(31)
	cmpwi 0,9,15
	ble 0,.L625
	lwz 9,36(31)
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
	.size	__popcounthi2,.-__popcounthi2
	.align 2
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
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
	stw 9,48(31)
	mr 9,10
	stw 9,52(31)
	li 9,0
	stw 9,32(31)
	b .L628
.L630:
	lwz 9,48(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L629
	lwz 10,32(31)
	lwz 9,52(31)
	add 9,10,9
	stw 9,32(31)
.L629:
	lwz 9,48(31)
	srwi 9,9,1
	stw 9,48(31)
	lwz 9,52(31)
	slwi 9,9,1
	stw 9,52(31)
.L628:
	lwz 9,48(31)
	cmpwi 0,9,0
	bne 0,.L630
	lwz 9,32(31)
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
	.size	__mulsi3_iq2000,.-__mulsi3_iq2000
	.align 2
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
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
	stw 9,48(31)
	mr 9,10
	stw 9,52(31)
	li 9,0
	stw 9,32(31)
	lwz 9,48(31)
	cmpwi 0,9,0
	bne 0,.L635
	li 9,0
	b .L634
.L637:
	lwz 9,52(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L636
	lwz 10,32(31)
	lwz 9,48(31)
	add 9,10,9
	stw 9,32(31)
.L636:
	lwz 9,48(31)
	slwi 9,9,1
	stw 9,48(31)
	lwz 9,52(31)
	srwi 9,9,1
	stw 9,52(31)
.L635:
	lwz 9,52(31)
	cmpwi 0,9,0
	bne 0,.L637
	lwz 9,32(31)
.L634:
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
	.size	__mulsi3_lm32,.-__mulsi3_lm32
	.align 2
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
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
	stw 9,48(31)
	mr 9,8
	stw 9,52(31)
	mr 9,10
	stw 9,56(31)
	li 9,1
	stw 9,32(31)
	li 9,0
	stw 9,36(31)
	b .L639
.L641:
	lwz 9,52(31)
	slwi 9,9,1
	stw 9,52(31)
	lwz 9,32(31)
	slwi 9,9,1
	stw 9,32(31)
.L639:
	lwz 10,52(31)
	lwz 9,48(31)
	cmplw 0,10,9
	bge 0,.L642
	lwz 9,32(31)
	cmpwi 0,9,0
	beq 0,.L642
	lwz 9,52(31)
	cmpwi 0,9,0
	bge 0,.L641
	b .L642
.L644:
	lwz 10,48(31)
	lwz 9,52(31)
	cmplw 0,10,9
	blt 0,.L643
	lwz 10,48(31)
	lwz 9,52(31)
	subf 9,9,10
	stw 9,48(31)
	lwz 10,36(31)
	lwz 9,32(31)
	or 9,10,9
	stw 9,36(31)
.L643:
	lwz 9,32(31)
	srwi 9,9,1
	stw 9,32(31)
	lwz 9,52(31)
	srwi 9,9,1
	stw 9,52(31)
.L642:
	lwz 9,32(31)
	cmpwi 0,9,0
	bne 0,.L644
	lwz 9,56(31)
	cmpwi 0,9,0
	beq 0,.L645
	lwz 9,48(31)
	b .L646
.L645:
	lwz 9,36(31)
.L646:
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
	.size	__udivmodsi4,.-__udivmodsi4
	.align 2
	.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,32(31)
	stfs 2,36(31)
	lfs 12,32(31)
	lfs 0,36(31)
	fcmpu 0,12,0
	bnl 0,.L655
	li 9,-1
	b .L650
.L655:
	lfs 12,32(31)
	lfs 0,36(31)
	fcmpu 0,12,0
	bng 0,.L656
	li 9,1
	b .L650
.L656:
	li 9,0
.L650:
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
	.size	__mspabi_cmpf,.-__mspabi_cmpf
	.align 2
	.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,32(31)
	stfd 2,40(31)
	lfd 12,32(31)
	lfd 0,40(31)
	fcmpu 0,12,0
	bnl 0,.L665
	li 9,-1
	b .L660
.L665:
	lfd 12,32(31)
	lfd 0,40(31)
	fcmpu 0,12,0
	bng 0,.L666
	li 9,1
	b .L660
.L666:
	li 9,0
.L660:
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
	.size	__mspabi_cmpd,.-__mspabi_cmpd
	.align 2
	.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB126:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	std 4,40(31)
	ld 10,32(31)
	ld 9,40(31)
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
	.size	__mspabi_mpysll,.-__mspabi_mpysll
	.align 2
	.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB127:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	std 4,40(31)
	ld 10,32(31)
	ld 9,40(31)
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
	.size	__mspabi_mpyull,.-__mspabi_mpyull
	.align 2
	.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
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
	stw 9,48(31)
	mr 9,10
	stw 9,52(31)
	li 9,0
	stw 9,36(31)
	li 9,0
	stw 9,40(31)
	lwz 9,52(31)
	cmpwi 0,9,0
	bge 0,.L672
	lwz 9,52(31)
	neg 9,9
	stw 9,52(31)
	li 9,1
	stw 9,36(31)
.L672:
	li 9,0
	stb 9,32(31)
	b .L673
.L676:
	lwz 9,52(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L674
	lwz 10,40(31)
	lwz 9,48(31)
	add 9,10,9
	stw 9,40(31)
.L674:
	lwz 9,48(31)
	slwi 9,9,1
	stw 9,48(31)
	lwz 9,52(31)
	srawi 9,9,1
	stw 9,52(31)
	lbz 9,32(31)
	addi 9,9,1
	stb 9,32(31)
.L673:
	lwz 9,52(31)
	cmpwi 0,9,0
	beq 0,.L675
	lbz 9,32(31)
	cmplwi 0,9,31
	ble 0,.L676
.L675:
	lwz 9,36(31)
	cmpwi 0,9,0
	beq 0,.L677
	lwz 9,40(31)
	neg 9,9
	b .L679
.L677:
	lwz 9,40(31)
.L679:
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
	.size	__mulhi3,.-__mulhi3
	.align 2
	.globl __divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
.LCF129:
0:	addis 2,12,.TOC.-.LCF129@ha
	addi 2,2,.TOC.-.LCF129@l
	.localentry	__divsi3,.-__divsi3
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	li 9,0
	stw 9,32(31)
	ld 9,48(31)
	cmpdi 0,9,0
	bge 0,.L681
	ld 9,48(31)
	neg 9,9
	std 9,48(31)
	lwz 9,32(31)
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 9,9,0,0xff
	stw 9,32(31)
.L681:
	ld 9,56(31)
	cmpdi 0,9,0
	bge 0,.L682
	ld 9,56(31)
	neg 9,9
	std 9,56(31)
	lwz 9,32(31)
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 9,9,0,0xff
	stw 9,32(31)
.L682:
	ld 9,48(31)
	mr 8,9
	ld 9,56(31)
	rldicl 10,9,0,32
	rldicl 9,8,0,32
	li 5,0
	mr 4,10
	mr 3,9
	bl __udivmodsi4
	mr 9,3
	rldicl 9,9,0,32
	std 9,40(31)
	lwz 9,32(31)
	cmpwi 0,9,0
	beq 0,.L683
	ld 9,40(31)
	neg 9,9
	std 9,40(31)
.L683:
	ld 9,40(31)
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.cfi_endproc
.LFE129:
	.size	__divsi3,.-__divsi3
	.align 2
	.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
.LCF130:
0:	addis 2,12,.TOC.-.LCF130@ha
	addi 2,2,.TOC.-.LCF130@l
	.localentry	__modsi3,.-__modsi3
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	li 9,0
	stw 9,32(31)
	ld 9,48(31)
	cmpdi 0,9,0
	bge 0,.L686
	ld 9,48(31)
	neg 9,9
	std 9,48(31)
	li 9,1
	stw 9,32(31)
.L686:
	ld 9,56(31)
	cmpdi 0,9,0
	bge 0,.L687
	ld 9,56(31)
	neg 9,9
	std 9,56(31)
.L687:
	ld 9,48(31)
	mr 8,9
	ld 9,56(31)
	rldicl 10,9,0,32
	rldicl 9,8,0,32
	li 5,1
	mr 4,10
	mr 3,9
	bl __udivmodsi4
	mr 9,3
	rldicl 9,9,0,32
	std 9,40(31)
	lwz 9,32(31)
	cmpwi 0,9,0
	beq 0,.L688
	ld 9,40(31)
	neg 9,9
	std 9,40(31)
.L688:
	ld 9,40(31)
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.cfi_endproc
.LFE130:
	.size	__modsi3,.-__modsi3
	.align 2
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
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
	sth 9,48(31)
	mr 9,8
	sth 9,50(31)
	mr 9,10
	stw 9,52(31)
	li 9,1
	sth 9,32(31)
	li 9,0
	sth 9,34(31)
	b .L691
.L693:
	lhz 9,50(31)
	slwi 9,9,1
	sth 9,50(31)
	lhz 9,32(31)
	slwi 9,9,1
	sth 9,32(31)
.L691:
	lhz 10,50(31)
	lhz 9,48(31)
	cmplw 0,10,9
	bge 0,.L694
	lhz 9,32(31)
	cmpwi 0,9,0
	beq 0,.L694
	lhz 9,50(31)
	extsh 9,9
	cmpwi 0,9,0
	bge 0,.L693
	b .L694
.L696:
	lhz 10,48(31)
	lhz 9,50(31)
	cmplw 0,10,9
	blt 0,.L695
	lhz 10,48(31)
	lhz 9,50(31)
	subf 9,9,10
	sth 9,48(31)
	lhz 10,34(31)
	lhz 9,32(31)
	or 9,10,9
	sth 9,34(31)
.L695:
	lhz 9,32(31)
	srwi 9,9,1
	sth 9,32(31)
	lhz 9,50(31)
	srwi 9,9,1
	sth 9,50(31)
.L694:
	lhz 9,32(31)
	cmpwi 0,9,0
	bne 0,.L696
	lwz 9,52(31)
	cmpwi 0,9,0
	beq 0,.L697
	lhz 9,48(31)
	b .L698
.L697:
	lhz 9,34(31)
.L698:
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
	.size	__udivmodhi4,.-__udivmodhi4
	.align 2
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	mr 9,5
	stw 9,64(31)
	li 9,1
	std 9,32(31)
	li 9,0
	std 9,40(31)
	b .L700
.L702:
	ld 9,56(31)
	sldi 9,9,1
	std 9,56(31)
	ld 9,32(31)
	sldi 9,9,1
	std 9,32(31)
.L700:
	ld 10,56(31)
	ld 9,48(31)
	cmpld 0,10,9
	bge 0,.L703
	ld 9,32(31)
	cmpdi 0,9,0
	beq 0,.L703
	ld 9,56(31)
	rlwinm 9,9,0,0,0
	cmpdi 0,9,0
	beq 0,.L702
	b .L703
.L705:
	ld 10,48(31)
	ld 9,56(31)
	cmpld 0,10,9
	blt 0,.L704
	ld 10,48(31)
	ld 9,56(31)
	subf 9,9,10
	std 9,48(31)
	ld 10,40(31)
	ld 9,32(31)
	or 9,10,9
	std 9,40(31)
.L704:
	ld 9,32(31)
	srdi 9,9,1
	std 9,32(31)
	ld 9,56(31)
	srdi 9,9,1
	std 9,56(31)
.L703:
	ld 9,32(31)
	cmpdi 0,9,0
	bne 0,.L705
	lwz 9,64(31)
	cmpwi 0,9,0
	beq 0,.L706
	ld 9,48(31)
	b .L707
.L706:
	ld 9,40(31)
.L707:
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc,.-__udivmodsi4_libgcc
	.align 2
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,64(31)
	mr 9,4
	stw 9,72(31)
	li 9,32
	stw 9,32(31)
	ld 9,64(31)
	std 9,40(31)
	lwz 10,72(31)
	lwz 9,32(31)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L709
	li 9,0
	stw 9,48(31)
	lwz 10,40(31)
	lwz 8,72(31)
	lwz 9,32(31)
	subf 9,9,8
	slw 9,10,9
	stw 9,52(31)
	b .L710
.L709:
	lwz 9,72(31)
	cmpwi 0,9,0
	bne 0,.L711
	ld 9,64(31)
	b .L713
.L711:
	lwz 10,40(31)
	lwz 9,72(31)
	slw 9,10,9
	stw 9,48(31)
	lwz 9,44(31)
	mr 10,9
	lwz 9,72(31)
	slw 10,10,9
	lwz 8,40(31)
	lwz 7,32(31)
	lwz 9,72(31)
	subf 9,9,7
	srw 9,8,9
	or 9,10,9
	stw 9,52(31)
.L710:
	ld 9,48(31)
.L713:
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE133:
	.size	__ashldi3,.-__ashldi3
	.align 2
	.globl __ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
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
	mr 9,5
	stw 9,96(31)
	li 9,64
	stw 9,32(31)
	addi 9,31,80
	ld 10,0(9)
	ld 11,8(9)
	addi 9,31,48
	std 10,0(9)
	std 11,8(9)
	lwz 10,96(31)
	lwz 9,32(31)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L715
	li 9,0
	std 9,64(31)
	ld 10,48(31)
	lwz 8,96(31)
	lwz 9,32(31)
	subf 9,9,8
	sld 9,10,9
	std 9,72(31)
	b .L716
.L715:
	lwz 9,96(31)
	cmpwi 0,9,0
	bne 0,.L717
	addi 9,31,80
	ld 10,0(9)
	ld 11,8(9)
	b .L719
.L717:
	ld 10,48(31)
	lwz 9,96(31)
	sld 9,10,9
	std 9,64(31)
	ld 9,56(31)
	mr 10,9
	lwz 9,96(31)
	sld 10,10,9
	ld 8,48(31)
	lwz 7,32(31)
	lwz 9,96(31)
	subf 9,9,7
	srd 9,8,9
	or 9,10,9
	std 9,72(31)
.L716:
	addi 9,31,64
	ld 10,0(9)
	ld 11,8(9)
.L719:
	mr 3,10
	mr 4,11
	addi 1,31,128
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE134:
	.size	__ashlti3,.-__ashlti3
	.align 2
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,64(31)
	mr 9,4
	stw 9,72(31)
	li 9,32
	stw 9,32(31)
	ld 9,64(31)
	std 9,40(31)
	lwz 10,72(31)
	lwz 9,32(31)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L721
	lwz 10,44(31)
	lwz 9,32(31)
	addi 9,9,-1
	sraw 9,10,9
	stw 9,52(31)
	lwz 10,44(31)
	lwz 8,72(31)
	lwz 9,32(31)
	subf 9,9,8
	sraw 9,10,9
	stw 9,48(31)
	b .L722
.L721:
	lwz 9,72(31)
	cmpwi 0,9,0
	bne 0,.L723
	ld 9,64(31)
	b .L725
.L723:
	lwz 10,44(31)
	lwz 9,72(31)
	sraw 9,10,9
	stw 9,52(31)
	lwz 9,44(31)
	mr 8,9
	lwz 10,32(31)
	lwz 9,72(31)
	subf 9,9,10
	slw 10,8,9
	lwz 8,40(31)
	lwz 9,72(31)
	srw 9,8,9
	or 9,10,9
	stw 9,48(31)
.L722:
	ld 9,48(31)
.L725:
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE135:
	.size	__ashrdi3,.-__ashrdi3
	.align 2
	.globl __ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
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
	mr 9,5
	stw 9,96(31)
	li 9,64
	stw 9,32(31)
	addi 9,31,80
	ld 10,0(9)
	ld 11,8(9)
	addi 9,31,48
	std 10,0(9)
	std 11,8(9)
	lwz 10,96(31)
	lwz 9,32(31)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L727
	ld 10,56(31)
	lwz 9,32(31)
	addi 9,9,-1
	srad 9,10,9
	std 9,72(31)
	ld 10,56(31)
	lwz 8,96(31)
	lwz 9,32(31)
	subf 9,9,8
	srad 9,10,9
	std 9,64(31)
	b .L728
.L727:
	lwz 9,96(31)
	cmpwi 0,9,0
	bne 0,.L729
	addi 9,31,80
	ld 10,0(9)
	ld 11,8(9)
	b .L731
.L729:
	ld 10,56(31)
	lwz 9,96(31)
	srad 9,10,9
	std 9,72(31)
	ld 9,56(31)
	mr 8,9
	lwz 10,32(31)
	lwz 9,96(31)
	subf 9,9,10
	sld 10,8,9
	ld 8,48(31)
	lwz 9,96(31)
	srd 9,8,9
	or 9,10,9
	std 9,64(31)
.L728:
	addi 9,31,64
	ld 10,0(9)
	ld 11,8(9)
.L731:
	mr 3,10
	mr 4,11
	addi 1,31,128
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE136:
	.size	__ashrti3,.-__ashrti3
	.align 2
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	ld 9,32(31)
	srdi 10,9,56
	ld 9,32(31)
	srdi 9,9,40
	rlwinm 9,9,0,16,23
	or 10,10,9
	ld 9,32(31)
	srdi 9,9,24
	rlwinm 9,9,0,8,15
	or 10,10,9
	ld 9,32(31)
	srdi 9,9,8
	rlwinm 9,9,0,0,7
	or 10,10,9
	ld 9,32(31)
	sldi 9,9,8
	sldi 9,9,24
	rldicr 9,9,0,7
	srdi 9,9,24
	or 10,10,9
	ld 9,32(31)
	sldi 9,9,24
	sldi 9,9,16
	rldicr 9,9,0,7
	srdi 9,9,16
	or 10,10,9
	ld 9,32(31)
	sldi 9,9,40
	sldi 9,9,8
	rldicr 9,9,0,7
	srdi 9,9,8
	or 10,10,9
	ld 9,32(31)
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
	.size	__bswapdi2,.-__bswapdi2
	.align 2
	.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB138:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,32(31)
	lwz 9,32(31)
	srwi 10,9,24
	lwz 9,32(31)
	srwi 9,9,8
	rlwinm 9,9,0,16,23
	or 10,10,9
	lwz 9,32(31)
	slwi 9,9,8
	rlwinm 9,9,0,8,15
	or 10,10,9
	lwz 9,32(31)
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
	.size	__bswapsi2,.-__bswapsi2
	.align 2
	.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB139:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,48(31)
	lwz 9,48(31)
	stw 9,32(31)
	lwz 10,32(31)
	lis 9,0x1
	cmplw 0,10,9
	bge 0,.L737
	li 9,16
	b .L738
.L737:
	li 9,0
.L738:
	stw 9,36(31)
	lwz 9,36(31)
	subfic 9,9,16
	lwz 10,32(31)
	srw 9,10,9
	stw 9,32(31)
	lwz 9,36(31)
	stw 9,40(31)
	lwz 9,32(31)
	rlwinm 9,9,0,16,23
	cmpwi 0,9,0
	bne 0,.L739
	li 9,8
	b .L740
.L739:
	li 9,0
.L740:
	stw 9,36(31)
	lwz 9,36(31)
	subfic 9,9,8
	lwz 10,32(31)
	srw 9,10,9
	stw 9,32(31)
	lwz 9,36(31)
	lwz 10,40(31)
	add 9,10,9
	stw 9,40(31)
	lwz 9,32(31)
	rlwinm 9,9,0,24,27
	cmpwi 0,9,0
	bne 0,.L741
	li 9,4
	b .L742
.L741:
	li 9,0
.L742:
	stw 9,36(31)
	lwz 9,36(31)
	subfic 9,9,4
	lwz 10,32(31)
	srw 9,10,9
	stw 9,32(31)
	lwz 9,36(31)
	lwz 10,40(31)
	add 9,10,9
	stw 9,40(31)
	lwz 9,32(31)
	rlwinm 9,9,0,28,29
	cmpwi 0,9,0
	bne 0,.L743
	li 9,2
	b .L744
.L743:
	li 9,0
.L744:
	stw 9,36(31)
	lwz 9,36(31)
	subfic 9,9,2
	lwz 10,32(31)
	srw 9,10,9
	stw 9,32(31)
	lwz 9,36(31)
	lwz 10,40(31)
	add 9,10,9
	stw 9,40(31)
	lwz 9,32(31)
	rlwinm 9,9,0,30,30
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 9,9,0,0xff
	mr 10,9
	lwz 9,32(31)
	subfic 9,9,2
	mullw 10,10,9
	lwz 9,40(31)
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
	.size	__clzsi2,.-__clzsi2
	.align 2
	.globl __clzti2
	.type	__clzti2, @function
__clzti2:
.LFB140:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,31,64
	std 3,0(9)
	std 4,8(9)
	addi 9,31,64
	ld 10,0(9)
	ld 11,8(9)
	addi 9,31,48
	std 10,0(9)
	std 11,8(9)
	ld 9,56(31)
	cntlzd 9,9
	srdi 9,9,6
	rlwinm 9,9,0,0xff
	neg 9,9
	extsw 9,9
	std 9,32(31)
	ld 10,56(31)
	ld 9,32(31)
	not 9,9
	and 9,10,9
	mr 8,9
	ld 10,48(31)
	ld 9,32(31)
	and 9,10,9
	or 9,8,9
	cntlzd 9,9
	mr 10,9
	ld 9,32(31)
	rlwinm 9,9,0,25,25
	add 9,10,9
	extsw 9,9
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE140:
	.size	__clzti2,.-__clzti2
	.align 2
	.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB141:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	ld 9,48(31)
	std 9,32(31)
	ld 9,56(31)
	std 9,40(31)
	lwz 10,36(31)
	lwz 9,44(31)
	cmpw 0,10,9
	bge 0,.L749
	li 9,0
	b .L754
.L749:
	lwz 10,36(31)
	lwz 9,44(31)
	cmpw 0,10,9
	ble 0,.L751
	li 9,2
	b .L754
.L751:
	lwz 10,32(31)
	lwz 9,40(31)
	cmplw 0,10,9
	bge 0,.L752
	li 9,0
	b .L754
.L752:
	lwz 10,32(31)
	lwz 9,40(31)
	cmplw 0,10,9
	ble 0,.L753
	li 9,2
	b .L754
.L753:
	li 9,1
.L754:
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
	.size	__cmpdi2,.-__cmpdi2
	.align 2
	.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB142:
	.cfi_startproc
.LCF142:
0:	addis 2,12,.TOC.-.LCF142@ha
	addi 2,2,.TOC.-.LCF142@l
	.localentry	__aeabi_lcmp,.-__aeabi_lcmp
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	std 4,40(31)
	ld 4,40(31)
	ld 3,32(31)
	bl __cmpdi2
	mr 9,3
	addi 9,9,-1
	extsw 9,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp,.-__aeabi_lcmp
	.align 2
	.globl __cmpti2
	.type	__cmpti2, @function
__cmpti2:
.LFB143:
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
	addi 9,31,80
	std 5,0(9)
	std 6,8(9)
	addi 9,31,64
	ld 10,0(9)
	ld 11,8(9)
	std 10,32(31)
	std 11,40(31)
	addi 9,31,80
	ld 10,0(9)
	ld 11,8(9)
	addi 9,31,48
	std 10,0(9)
	std 11,8(9)
	ld 10,40(31)
	ld 9,56(31)
	cmpd 0,10,9
	bge 0,.L758
	li 9,0
	b .L763
.L758:
	ld 10,40(31)
	ld 9,56(31)
	cmpd 0,10,9
	ble 0,.L760
	li 9,2
	b .L763
.L760:
	ld 10,32(31)
	ld 9,48(31)
	cmpld 0,10,9
	bge 0,.L761
	li 9,0
	b .L763
.L761:
	ld 10,32(31)
	ld 9,48(31)
	cmpld 0,10,9
	ble 0,.L762
	li 9,2
	b .L763
.L762:
	li 9,1
.L763:
	extsw 9,9
	mr 3,9
	addi 1,31,112
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE143:
	.size	__cmpti2,.-__cmpti2
	.align 2
	.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB144:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,48(31)
	lwz 9,48(31)
	stw 9,32(31)
	lwz 9,32(31)
	rlwinm 9,9,0,16,31
	cmpwi 0,9,0
	bne 0,.L765
	li 9,16
	b .L766
.L765:
	li 9,0
.L766:
	stw 9,36(31)
	lwz 10,32(31)
	lwz 9,36(31)
	srw 9,10,9
	stw 9,32(31)
	lwz 9,36(31)
	stw 9,40(31)
	lwz 9,32(31)
	rlwinm 9,9,0,24,31
	cmpwi 0,9,0
	bne 0,.L767
	li 9,8
	b .L768
.L767:
	li 9,0
.L768:
	stw 9,36(31)
	lwz 10,32(31)
	lwz 9,36(31)
	srw 9,10,9
	stw 9,32(31)
	lwz 9,36(31)
	lwz 10,40(31)
	add 9,10,9
	stw 9,40(31)
	lwz 9,32(31)
	rlwinm 9,9,0,28,31
	cmpwi 0,9,0
	bne 0,.L769
	li 9,4
	b .L770
.L769:
	li 9,0
.L770:
	stw 9,36(31)
	lwz 10,32(31)
	lwz 9,36(31)
	srw 9,10,9
	stw 9,32(31)
	lwz 9,36(31)
	lwz 10,40(31)
	add 9,10,9
	stw 9,40(31)
	lwz 9,32(31)
	rlwinm 9,9,0,30,31
	cmpwi 0,9,0
	bne 0,.L771
	li 9,2
	b .L772
.L771:
	li 9,0
.L772:
	stw 9,36(31)
	lwz 10,32(31)
	lwz 9,36(31)
	srw 9,10,9
	stw 9,32(31)
	lwz 9,32(31)
	rlwinm 9,9,0,30,31
	stw 9,32(31)
	lwz 9,36(31)
	lwz 10,40(31)
	add 9,10,9
	stw 9,40(31)
	lwz 9,32(31)
	not 9,9
	rlwinm 10,9,0,31,31
	lwz 9,32(31)
	srwi 9,9,1
	subfic 9,9,2
	neg 10,10
	and 10,10,9
	lwz 9,40(31)
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
	.size	__ctzsi2,.-__ctzsi2
	.align 2
	.globl __ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,31,64
	std 3,0(9)
	std 4,8(9)
	addi 9,31,64
	ld 10,0(9)
	ld 11,8(9)
	addi 9,31,48
	std 10,0(9)
	std 11,8(9)
	ld 9,48(31)
	cntlzd 9,9
	srdi 9,9,6
	rlwinm 9,9,0,0xff
	neg 9,9
	extsw 9,9
	std 9,32(31)
	ld 10,56(31)
	ld 9,32(31)
	and 9,10,9
	mr 8,9
	ld 10,48(31)
	ld 9,32(31)
	not 9,9
	and 9,10,9
	or 9,8,9
	neg 10,9
	and 9,9,10
	cntlzd 9,9
	subfic 9,9,63
	mr 10,9
	ld 9,32(31)
	rlwinm 9,9,0,25,25
	add 9,10,9
	extsw 9,9
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE145:
	.size	__ctzti2,.-__ctzti2
	.align 2
	.globl __ffsti2
	.type	__ffsti2, @function
__ffsti2:
.LFB146:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,31,48
	std 3,0(9)
	std 4,8(9)
	addi 9,31,48
	ld 10,0(9)
	ld 11,8(9)
	std 10,32(31)
	std 11,40(31)
	ld 9,32(31)
	cmpdi 0,9,0
	bne 0,.L777
	ld 9,40(31)
	cmpdi 0,9,0
	bne 0,.L778
	li 9,0
	b .L780
.L778:
	ld 9,40(31)
	neg 10,9
	and 9,9,10
	cntlzd 9,9
	subfic 9,9,63
	addi 9,9,65
	b .L780
.L777:
	ld 9,32(31)
	neg 10,9
	and 9,9,10
	cntlzd 9,9
	subfic 9,9,63
	addi 9,9,1
.L780:
	extsw 9,9
	mr 3,9
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE146:
	.size	__ffsti2,.-__ffsti2
	.align 2
	.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB147:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,64(31)
	mr 9,4
	stw 9,72(31)
	li 9,32
	stw 9,32(31)
	ld 9,64(31)
	std 9,40(31)
	lwz 10,72(31)
	lwz 9,32(31)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L782
	li 9,0
	stw 9,52(31)
	lwz 10,44(31)
	lwz 8,72(31)
	lwz 9,32(31)
	subf 9,9,8
	srw 9,10,9
	stw 9,48(31)
	b .L783
.L782:
	lwz 9,72(31)
	cmpwi 0,9,0
	bne 0,.L784
	ld 9,64(31)
	b .L786
.L784:
	lwz 10,44(31)
	lwz 9,72(31)
	srw 9,10,9
	stw 9,52(31)
	lwz 10,44(31)
	lwz 8,32(31)
	lwz 9,72(31)
	subf 9,9,8
	slw 10,10,9
	lwz 8,40(31)
	lwz 9,72(31)
	srw 9,8,9
	or 9,10,9
	stw 9,48(31)
.L783:
	ld 9,48(31)
.L786:
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE147:
	.size	__lshrdi3,.-__lshrdi3
	.align 2
	.globl __lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
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
	mr 9,5
	stw 9,96(31)
	li 9,64
	stw 9,32(31)
	addi 9,31,80
	ld 10,0(9)
	ld 11,8(9)
	addi 9,31,48
	std 10,0(9)
	std 11,8(9)
	lwz 10,96(31)
	lwz 9,32(31)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L788
	li 9,0
	std 9,72(31)
	ld 10,56(31)
	lwz 8,96(31)
	lwz 9,32(31)
	subf 9,9,8
	srd 9,10,9
	std 9,64(31)
	b .L789
.L788:
	lwz 9,96(31)
	cmpwi 0,9,0
	bne 0,.L790
	addi 9,31,80
	ld 10,0(9)
	ld 11,8(9)
	b .L792
.L790:
	ld 10,56(31)
	lwz 9,96(31)
	srd 9,10,9
	std 9,72(31)
	ld 10,56(31)
	lwz 8,32(31)
	lwz 9,96(31)
	subf 9,9,8
	sld 10,10,9
	ld 8,48(31)
	lwz 9,96(31)
	srd 9,8,9
	or 9,10,9
	std 9,64(31)
.L789:
	addi 9,31,64
	ld 10,0(9)
	ld 11,8(9)
.L792:
	mr 3,10
	mr 4,11
	addi 1,31,128
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE148:
	.size	__lshrti3,.-__lshrti3
	.align 2
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
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
	stw 9,64(31)
	mr 9,10
	stw 9,68(31)
	li 9,16
	stw 9,32(31)
	li 10,-1
	lwz 9,32(31)
	srw 9,10,9
	stw 9,36(31)
	lwz 10,64(31)
	lwz 9,36(31)
	and 10,10,9
	lwz 8,68(31)
	lwz 9,36(31)
	and 9,8,9
	mullw 9,10,9
	stw 9,48(31)
	lwz 10,48(31)
	lwz 9,32(31)
	srw 9,10,9
	stw 9,40(31)
	lwz 10,48(31)
	lwz 9,36(31)
	and 9,10,9
	stw 9,48(31)
	lwz 10,64(31)
	lwz 9,32(31)
	srw 10,10,9
	lwz 8,68(31)
	lwz 9,36(31)
	and 9,8,9
	mullw 9,10,9
	lwz 10,40(31)
	add 9,10,9
	stw 9,40(31)
	lwz 10,48(31)
	lwz 8,40(31)
	lwz 9,36(31)
	and 8,8,9
	lwz 9,32(31)
	slw 9,8,9
	add 9,10,9
	stw 9,48(31)
	lwz 10,40(31)
	lwz 9,32(31)
	srw 9,10,9
	stw 9,52(31)
	lwz 10,48(31)
	lwz 9,32(31)
	srw 9,10,9
	stw 9,40(31)
	lwz 10,48(31)
	lwz 9,36(31)
	and 9,10,9
	stw 9,48(31)
	lwz 10,68(31)
	lwz 9,32(31)
	srw 10,10,9
	lwz 8,64(31)
	lwz 9,36(31)
	and 9,8,9
	mullw 9,10,9
	lwz 10,40(31)
	add 9,10,9
	stw 9,40(31)
	lwz 10,48(31)
	lwz 8,40(31)
	lwz 9,36(31)
	and 8,8,9
	lwz 9,32(31)
	slw 9,8,9
	add 9,10,9
	stw 9,48(31)
	lwz 9,52(31)
	mr 8,9
	lwz 10,40(31)
	lwz 9,32(31)
	srw 9,10,9
	add 9,8,9
	stw 9,52(31)
	lwz 9,52(31)
	mr 7,9
	lwz 10,64(31)
	lwz 9,32(31)
	srw 10,10,9
	lwz 8,68(31)
	lwz 9,32(31)
	srw 9,8,9
	mullw 9,10,9
	add 9,7,9
	stw 9,52(31)
	ld 9,48(31)
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE149:
	.size	__muldsi3,.-__muldsi3
	.align 2
	.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB150:
	.cfi_startproc
.LCF150:
0:	addis 2,12,.TOC.-.LCF150@ha
	addi 2,2,.TOC.-.LCF150@l
	.localentry	__muldi3_compiler_rt,.-__muldi3_compiler_rt
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-96(1)
	.cfi_def_cfa_offset 96
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,64(31)
	std 4,72(31)
	ld 9,64(31)
	std 9,32(31)
	ld 9,72(31)
	std 9,40(31)
	lwz 9,32(31)
	lwz 10,40(31)
	rldicl 10,10,0,32
	rldicl 9,9,0,32
	mr 4,10
	mr 3,9
	bl __muldsi3
	mr 9,3
	std 9,48(31)
	lwz 9,52(31)
	mr 8,9
	lwz 9,36(31)
	mr 10,9
	lwz 9,40(31)
	mullw 10,10,9
	lwz 9,32(31)
	lwz 7,44(31)
	mullw 9,9,7
	add 9,10,9
	add 9,8,9
	stw 9,52(31)
	ld 9,48(31)
	mr 3,9
	addi 1,31,96
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt,.-__muldi3_compiler_rt
	.align 2
	.globl __mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,80(31)
	std 4,88(31)
	li 9,32
	stw 9,32(31)
	li 10,-1
	lwz 9,32(31)
	srd 9,10,9
	std 9,40(31)
	ld 10,80(31)
	ld 9,40(31)
	and 10,10,9
	ld 8,88(31)
	ld 9,40(31)
	and 9,8,9
	mulld 9,10,9
	std 9,64(31)
	ld 10,64(31)
	lwz 9,32(31)
	srd 9,10,9
	std 9,48(31)
	ld 10,64(31)
	ld 9,40(31)
	and 9,10,9
	std 9,64(31)
	ld 10,80(31)
	lwz 9,32(31)
	srd 10,10,9
	ld 8,88(31)
	ld 9,40(31)
	and 9,8,9
	mulld 9,10,9
	ld 10,48(31)
	add 9,10,9
	std 9,48(31)
	ld 10,64(31)
	ld 8,48(31)
	ld 9,40(31)
	and 8,8,9
	lwz 9,32(31)
	sld 9,8,9
	add 9,10,9
	std 9,64(31)
	ld 10,48(31)
	lwz 9,32(31)
	srd 9,10,9
	std 9,72(31)
	ld 10,64(31)
	lwz 9,32(31)
	srd 9,10,9
	std 9,48(31)
	ld 10,64(31)
	ld 9,40(31)
	and 9,10,9
	std 9,64(31)
	ld 10,88(31)
	lwz 9,32(31)
	srd 10,10,9
	ld 8,80(31)
	ld 9,40(31)
	and 9,8,9
	mulld 9,10,9
	ld 10,48(31)
	add 9,10,9
	std 9,48(31)
	ld 10,64(31)
	ld 8,48(31)
	ld 9,40(31)
	and 8,8,9
	lwz 9,32(31)
	sld 9,8,9
	add 9,10,9
	std 9,64(31)
	ld 9,72(31)
	mr 8,9
	ld 10,48(31)
	lwz 9,32(31)
	srd 9,10,9
	add 9,8,9
	std 9,72(31)
	ld 9,72(31)
	mr 7,9
	ld 10,80(31)
	lwz 9,32(31)
	srd 10,10,9
	ld 8,88(31)
	lwz 9,32(31)
	srd 9,8,9
	mulld 9,10,9
	add 9,7,9
	std 9,72(31)
	addi 9,31,64
	ld 10,0(9)
	ld 11,8(9)
	mr 3,10
	mr 4,11
	addi 1,31,112
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE151:
	.size	__mulddi3,.-__mulddi3
	.align 2
	.globl __multi3
	.type	__multi3, @function
__multi3:
.LFB152:
	.cfi_startproc
.LCF152:
0:	addis 2,12,.TOC.-.LCF152@ha
	addi 2,2,.TOC.-.LCF152@l
	.localentry	__multi3,.-__multi3
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_offset 65, 16
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
	ld 10,0(9)
	ld 11,8(9)
	std 10,32(31)
	std 11,40(31)
	addi 9,31,96
	ld 10,0(9)
	ld 11,8(9)
	addi 9,31,48
	std 10,0(9)
	std 11,8(9)
	ld 9,32(31)
	ld 10,48(31)
	mr 4,10
	mr 3,9
	bl __mulddi3
	mr 11,4
	mr 10,3
	addi 9,31,64
	std 10,0(9)
	std 11,8(9)
	ld 9,72(31)
	mr 8,9
	ld 9,40(31)
	mr 10,9
	ld 9,48(31)
	mulld 10,10,9
	ld 9,32(31)
	ld 7,56(31)
	mulld 9,9,7
	add 9,10,9
	add 9,8,9
	std 9,72(31)
	addi 9,31,64
	ld 10,0(9)
	ld 11,8(9)
	mr 3,10
	mr 4,11
	addi 1,31,128
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.cfi_endproc
.LFE152:
	.size	__multi3,.-__multi3
	.align 2
	.globl __negdi2
	.type	__negdi2, @function
__negdi2:
.LFB153:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	ld 9,32(31)
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
	.size	__negdi2,.-__negdi2
	.align 2
	.globl __negti2
	.type	__negti2, @function
__negti2:
.LFB154:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	std 4,40(31)
	ld 10,32(31)
	ld 11,40(31)
	subfic 8,10,0
	subfze 9,11
	mr 11,9
	mr 10,8
	mr 3,10
	mr 4,11
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE154:
	.size	__negti2,.-__negti2
	.align 2
	.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB155:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	ld 9,48(31)
	std 9,40(31)
	lwz 9,44(31)
	mr 10,9
	lwz 9,40(31)
	xor 9,10,9
	stw 9,32(31)
	lwz 9,32(31)
	srwi 9,9,16
	lwz 10,32(31)
	xor 9,10,9
	stw 9,32(31)
	lwz 9,32(31)
	srwi 9,9,8
	lwz 10,32(31)
	xor 9,10,9
	stw 9,32(31)
	lwz 9,32(31)
	srwi 9,9,4
	lwz 10,32(31)
	xor 9,10,9
	stw 9,32(31)
	lwz 9,32(31)
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
	.size	__paritydi2,.-__paritydi2
	.align 2
	.globl __parityti2
	.type	__parityti2, @function
__parityti2:
.LFB156:
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
	ld 10,0(9)
	ld 11,8(9)
	addi 9,31,48
	std 10,0(9)
	std 11,8(9)
	ld 9,56(31)
	mr 10,9
	ld 9,48(31)
	xor 9,10,9
	std 9,64(31)
	lwz 9,68(31)
	mr 10,9
	lwz 9,64(31)
	xor 9,10,9
	stw 9,32(31)
	lwz 9,32(31)
	srwi 9,9,16
	lwz 10,32(31)
	xor 9,10,9
	stw 9,32(31)
	lwz 9,32(31)
	srwi 9,9,8
	lwz 10,32(31)
	xor 9,10,9
	stw 9,32(31)
	lwz 9,32(31)
	srwi 9,9,4
	lwz 10,32(31)
	xor 9,10,9
	stw 9,32(31)
	lwz 9,32(31)
	rlwinm 9,9,0,28,31
	li 10,27030
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	extsw 9,9
	mr 3,9
	addi 1,31,112
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE156:
	.size	__parityti2,.-__parityti2
	.align 2
	.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB157:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,48(31)
	lwz 9,48(31)
	stw 9,32(31)
	lwz 9,32(31)
	srwi 9,9,16
	lwz 10,32(31)
	xor 9,10,9
	stw 9,32(31)
	lwz 9,32(31)
	srwi 9,9,8
	lwz 10,32(31)
	xor 9,10,9
	stw 9,32(31)
	lwz 9,32(31)
	srwi 9,9,4
	lwz 10,32(31)
	xor 9,10,9
	stw 9,32(31)
	lwz 9,32(31)
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
	.size	__paritysi2,.-__paritysi2
	.align 2
	.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB158:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	ld 9,48(31)
	std 9,32(31)
	ld 9,32(31)
	srdi 10,9,1
	lis 9,0x5555
	ori 9,9,0x5555
	rldimi 9,9,32,0
	and 9,10,9
	ld 10,32(31)
	subf 9,9,10
	std 9,32(31)
	ld 9,32(31)
	srdi 10,9,2
	lis 9,0x3333
	ori 9,9,0x3333
	rldimi 9,9,32,0
	and 10,10,9
	ld 8,32(31)
	lis 9,0x3333
	ori 9,9,0x3333
	rldimi 9,9,32,0
	and 9,8,9
	add 9,10,9
	std 9,32(31)
	ld 9,32(31)
	srdi 10,9,4
	ld 9,32(31)
	add 10,10,9
	lis 9,0xf0f
	ori 9,9,0xf0f
	rldimi 9,9,32,0
	and 9,10,9
	std 9,32(31)
	ld 9,32(31)
	mr 10,9
	ld 9,32(31)
	srdi 9,9,32
	add 9,10,9
	stw 9,40(31)
	lwz 9,40(31)
	srwi 9,9,16
	lwz 10,40(31)
	add 9,10,9
	stw 9,40(31)
	lwz 9,40(31)
	srwi 10,9,8
	lwz 9,40(31)
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
	.size	__popcountdi2,.-__popcountdi2
	.align 2
	.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB159:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 9,48(31)
	lwz 9,48(31)
	stw 9,32(31)
	lwz 9,32(31)
	srwi 10,9,1
	lis 9,0x5555
	ori 9,9,0x5555
	and 9,10,9
	lwz 10,32(31)
	subf 9,9,10
	stw 9,32(31)
	lwz 9,32(31)
	srwi 10,9,2
	lis 9,0x3333
	ori 9,9,0x3333
	and 10,10,9
	lwz 8,32(31)
	lis 9,0x3333
	ori 9,9,0x3333
	and 9,8,9
	add 9,10,9
	stw 9,32(31)
	lwz 9,32(31)
	srwi 10,9,4
	lwz 9,32(31)
	add 10,10,9
	lis 9,0xf0f
	ori 9,9,0xf0f
	and 9,10,9
	stw 9,32(31)
	lwz 9,32(31)
	srwi 9,9,16
	lwz 10,32(31)
	add 9,10,9
	stw 9,32(31)
	lwz 9,32(31)
	srwi 10,9,8
	lwz 9,32(31)
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
	.size	__popcountsi2,.-__popcountsi2
	.align 2
	.globl __popcountti2
	.type	__popcountti2, @function
__popcountti2:
.LFB160:
	.cfi_startproc
	std 14,-144(1)
	std 15,-136(1)
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
	std 31,-8(1)
	stdu 1,-224(1)
	.cfi_def_cfa_offset 224
	.cfi_offset 14, -144
	.cfi_offset 15, -136
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
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	addi 5,31,64
	std 3,0(5)
	std 4,8(5)
	addi 5,31,64
	ld 4,0(5)
	ld 5,8(5)
	std 4,32(31)
	std 5,40(31)
	ld 5,40(31)
	sldi 5,5,63
	ld 4,32(31)
	srdi 6,4,1
	or 6,5,6
	ld 5,40(31)
	srdi 7,5,1
	lis 5,0x5555
	ori 5,5,0x5555
	rldimi 5,5,32,0
	mr 17,5
	lis 5,0x5555
	ori 5,5,0x5555
	rldimi 5,5,32,0
	mr 16,5
	and 4,6,16
	and 5,7,17
	ld 6,32(31)
	ld 7,40(31)
	subfc 18,4,6
	subfe 19,5,7
	std 18,32(31)
	std 19,40(31)
	ld 7,40(31)
	sldi 7,7,62
	ld 6,32(31)
	srdi 8,6,2
	or 8,7,8
	ld 7,40(31)
	srdi 9,7,2
	lis 7,0x3333
	ori 7,7,0x3333
	rldimi 7,7,32,0
	mr 21,7
	lis 7,0x3333
	ori 7,7,0x3333
	rldimi 7,7,32,0
	mr 20,7
	and 6,8,20
	and 7,9,21
	ld 8,32(31)
	ld 9,40(31)
	lis 5,0x3333
	ori 5,5,0x3333
	rldimi 5,5,32,0
	mr 23,5
	lis 5,0x3333
	ori 5,5,0x3333
	rldimi 5,5,32,0
	mr 22,5
	and 8,8,22
	and 9,9,23
	addc 24,6,8
	adde 25,7,9
	std 24,32(31)
	std 25,40(31)
	ld 9,40(31)
	sldi 9,9,60
	ld 8,32(31)
	srdi 10,8,4
	or 10,9,10
	ld 9,40(31)
	srdi 11,9,4
	ld 8,32(31)
	ld 9,40(31)
	addc 26,10,8
	adde 27,11,9
	lis 9,0xf0f
	ori 9,9,0xf0f
	rldimi 9,9,32,0
	mr 29,9
	lis 9,0xf0f
	ori 9,9,0xf0f
	rldimi 9,9,32,0
	mr 28,9
	and 10,26,28
	and 11,27,29
	std 10,32(31)
	std 11,40(31)
	ld 9,32(31)
	ld 10,40(31)
	srdi 14,10,0
	li 15,0
	mr 10,14
	add 9,9,10
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
	rlwinm 9,9,0,24,31
	extsw 9,9
	mr 3,9
	addi 1,31,224
	.cfi_def_cfa 1, 0
	ld 14,-144(1)
	ld 15,-136(1)
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
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,18,0,1
	.cfi_endproc
.LFE160:
	.size	__popcountti2,.-__popcountti2
	.align 2
	.globl __powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161:
	.cfi_startproc
.LCF161:
0:	addis 2,12,.TOC.-.LCF161@ha
	addi 2,2,.TOC.-.LCF161@l
	.localentry	__powidf2,.-__powidf2
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfd 1,48(31)
	mr 9,4
	stw 9,56(31)
	lwz 9,56(31)
	srwi 9,9,31
	rlwinm 9,9,0,0xff
	stw 9,40(31)
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfd 0,0(9)
	stfd 0,32(31)
.L821:
	lwz 9,56(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L818
	lfd 12,32(31)
	lfd 0,48(31)
	fmul 0,12,0
	stfd 0,32(31)
.L818:
	lwz 9,56(31)
	srawi 9,9,1
	addze 9,9
	stw 9,56(31)
	lwz 9,56(31)
	cmpwi 0,9,0
	beq 0,.L826
	lfd 0,48(31)
	fmul 0,0,0
	stfd 0,48(31)
	b .L821
.L826:
	nop
	lwz 9,40(31)
	cmpwi 0,9,0
	beq 0,.L822
	addis 9,2,.LC15@toc@ha
	addi 9,9,.LC15@toc@l
	lfd 12,0(9)
	lfd 0,32(31)
	fdiv 0,12,0
	b .L824
.L822:
	lfd 0,32(31)
.L824:
	fmr 1,0
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE161:
	.size	__powidf2,.-__powidf2
	.align 2
	.globl __powisf2
	.type	__powisf2, @function
__powisf2:
.LFB162:
	.cfi_startproc
.LCF162:
0:	addis 2,12,.TOC.-.LCF162@ha
	addi 2,2,.TOC.-.LCF162@l
	.localentry	__powisf2,.-__powisf2
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	stfs 1,48(31)
	mr 9,4
	stw 9,52(31)
	lwz 9,52(31)
	srwi 9,9,31
	rlwinm 9,9,0,0xff
	stw 9,36(31)
	addis 9,2,.LC17@toc@ha
	addi 9,9,.LC17@toc@l
	lfs 0,0(9)
	stfs 0,32(31)
.L831:
	lwz 9,52(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L828
	lfs 12,32(31)
	lfs 0,48(31)
	fmuls 0,12,0
	stfs 0,32(31)
.L828:
	lwz 9,52(31)
	srawi 9,9,1
	addze 9,9
	stw 9,52(31)
	lwz 9,52(31)
	cmpwi 0,9,0
	beq 0,.L836
	lfs 0,48(31)
	fmuls 0,0,0
	stfs 0,48(31)
	b .L831
.L836:
	nop
	lwz 9,36(31)
	cmpwi 0,9,0
	beq 0,.L832
	addis 9,2,.LC17@toc@ha
	addi 9,9,.LC17@toc@l
	lfs 12,0(9)
	lfs 0,32(31)
	fdivs 0,12,0
	b .L834
.L832:
	lfs 0,32(31)
.L834:
	fmr 1,0
	addi 1,31,80
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE162:
	.size	__powisf2,.-__powisf2
	.align 2
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB163:
	.cfi_startproc
	std 31,-8(1)
	stdu 1,-80(1)
	.cfi_def_cfa_offset 80
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,48(31)
	std 4,56(31)
	ld 9,48(31)
	std 9,32(31)
	ld 9,56(31)
	std 9,40(31)
	lwz 10,36(31)
	lwz 9,44(31)
	cmplw 0,10,9
	bge 0,.L838
	li 9,0
	b .L843
.L838:
	lwz 10,36(31)
	lwz 9,44(31)
	cmplw 0,10,9
	ble 0,.L840
	li 9,2
	b .L843
.L840:
	lwz 10,32(31)
	lwz 9,40(31)
	cmplw 0,10,9
	bge 0,.L841
	li 9,0
	b .L843
.L841:
	lwz 10,32(31)
	lwz 9,40(31)
	cmplw 0,10,9
	ble 0,.L842
	li 9,2
	b .L843
.L842:
	li 9,1
.L843:
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
	.size	__ucmpdi2,.-__ucmpdi2
	.align 2
	.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
.LCF164:
0:	addis 2,12,.TOC.-.LCF164@ha
	addi 2,2,.TOC.-.LCF164@l
	.localentry	__aeabi_ulcmp,.-__aeabi_ulcmp
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_offset 65, 16
	.cfi_offset 31, -8
	mr 31,1
	.cfi_def_cfa_register 31
	std 3,32(31)
	std 4,40(31)
	ld 9,32(31)
	ld 10,40(31)
	mr 4,10
	mr 3,9
	bl __ucmpdi2
	mr 9,3
	addi 9,9,-1
	extsw 9,9
	mr 3,9
	addi 1,31,64
	.cfi_def_cfa 1, 0
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp,.-__aeabi_ulcmp
	.align 2
	.globl __ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
.LFB165:
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
	addi 9,31,80
	std 5,0(9)
	std 6,8(9)
	addi 9,31,64
	ld 10,0(9)
	ld 11,8(9)
	std 10,32(31)
	std 11,40(31)
	addi 9,31,80
	ld 10,0(9)
	ld 11,8(9)
	addi 9,31,48
	std 10,0(9)
	std 11,8(9)
	ld 10,40(31)
	ld 9,56(31)
	cmpld 0,10,9
	bge 0,.L847
	li 9,0
	b .L852
.L847:
	ld 10,40(31)
	ld 9,56(31)
	cmpld 0,10,9
	ble 0,.L849
	li 9,2
	b .L852
.L849:
	ld 10,32(31)
	ld 9,48(31)
	cmpld 0,10,9
	bge 0,.L850
	li 9,0
	b .L852
.L850:
	ld 10,32(31)
	ld 9,48(31)
	cmpld 0,10,9
	ble 0,.L851
	li 9,2
	b .L852
.L851:
	li 9,1
.L852:
	extsw 9,9
	mr 3,9
	addi 1,31,112
	.cfi_def_cfa 1, 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,0,128,1,0,1
	.cfi_endproc
.LFE165:
	.size	__ucmpti2,.-__ucmpti2
	.lcomm	s.0,7,8
	.type	s.0, @object
	.section	.rodata
	.align 3
.LC0:
	.long	0
	.long	0
	.align 2
.LC1:
	.long	0
	.align 3
.LC2:
	.quad	6364136223846793005
	.align 2
.LC3:
	.long	-8388609
	.align 2
.LC4:
	.long	2139095039
	.align 3
.LC5:
	.long	-1
	.long	-1048577
	.align 3
.LC6:
	.long	-1
	.long	2146435071
	.align 4
.LC7:
	.long	-1
	.long	-1048577
	.long	-2
	.long	-57671681
	.align 4
.LC8:
	.long	-1
	.long	2146435071
	.long	-2
	.long	2089811967
	.align 2
.LC9:
	.long	1056964608
	.align 2
.LC10:
	.long	1073741824
	.align 3
.LC11:
	.long	0
	.long	1071644672
	.align 3
.LC12:
	.long	0
	.long	1073741824
	.align 4
.LC13:
	.long	0
	.long	1071644672
	.long	0
	.long	0
	.align 4
.LC14:
	.long	0
	.long	1073741824
	.long	0
	.long	0
	.align 3
.LC15:
	.long	0
	.long	1072693248
	.align 2
.LC16:
	.long	1191182336
	.align 2
.LC17:
	.long	1065353216
	.globl __gcc_qmul
	.globl __gcc_qadd
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.gnu_attribute 4, 5
	.section	.note.GNU-stack,"",@progbits
