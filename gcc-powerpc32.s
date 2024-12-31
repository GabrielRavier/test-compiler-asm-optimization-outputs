	.file	"mini-libc.c"
	.machine "403"
	.section	".text"
	.align 2
	.globl memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	lwz 9,24(1)
	stw 9,8(1)
	lwz 9,28(1)
	stw 9,12(1)
	lwz 10,12(1)
	lwz 9,8(1)
	cmplw 0,10,9
	bge 0,.L2
	lwz 10,12(1)
	lwz 9,32(1)
	add 9,10,9
	stw 9,12(1)
	lwz 10,8(1)
	lwz 9,32(1)
	add 9,10,9
	stw 9,8(1)
	b .L3
.L4:
	lwz 9,12(1)
	addi 9,9,-1
	stw 9,12(1)
	lwz 9,8(1)
	addi 9,9,-1
	stw 9,8(1)
	lwz 9,12(1)
	lbz 10,0(9)
	lwz 9,8(1)
	stb 10,0(9)
	lwz 9,32(1)
	addi 9,9,-1
	stw 9,32(1)
.L3:
	lwz 9,32(1)
	cmpwi 0,9,0
	bne 0,.L4
	b .L5
.L2:
	lwz 10,12(1)
	lwz 9,8(1)
	cmpw 0,10,9
	beq 0,.L5
	b .L6
.L7:
	lwz 10,12(1)
	addi 9,10,1
	stw 9,12(1)
	lwz 9,8(1)
	addi 8,9,1
	stw 8,8(1)
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,32(1)
	addi 9,9,-1
	stw 9,32(1)
.L6:
	lwz 9,32(1)
	cmpwi 0,9,0
	bne 0,.L7
.L5:
	lwz 9,24(1)
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE0:
	.size	memmove,.-memmove
	.align 2
	.globl memccpy
	.type	memccpy, @function
memccpy:
.LFB1:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	stw 6,36(1)
	lwz 9,24(1)
	stw 9,8(1)
	lwz 9,28(1)
	stw 9,12(1)
	lwz 9,32(1)
	rlwinm 9,9,0,0xff
	stw 9,32(1)
	b .L11
.L13:
	lwz 9,36(1)
	addi 9,9,-1
	stw 9,36(1)
	lwz 9,12(1)
	addi 9,9,1
	stw 9,12(1)
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
.L11:
	lwz 9,36(1)
	cmpwi 0,9,0
	beq 0,.L12
	lwz 9,12(1)
	lbz 10,0(9)
	lwz 9,8(1)
	stb 10,0(9)
	lwz 9,8(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,32(1)
	cmpw 0,10,9
	bne 0,.L13
.L12:
	lwz 9,36(1)
	cmpwi 0,9,0
	beq 0,.L14
	lwz 9,8(1)
	addi 9,9,1
	b .L15
.L14:
	li 9,0
.L15:
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE1:
	.size	memccpy,.-memccpy
	.align 2
	.globl memchr
	.type	memchr, @function
memchr:
.LFB2:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	lwz 9,24(1)
	stw 9,8(1)
	lwz 9,28(1)
	rlwinm 9,9,0,0xff
	stw 9,28(1)
	b .L18
.L20:
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
	lwz 9,32(1)
	addi 9,9,-1
	stw 9,32(1)
.L18:
	lwz 9,32(1)
	cmpwi 0,9,0
	beq 0,.L19
	lwz 9,8(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,28(1)
	cmpw 0,10,9
	bne 0,.L20
.L19:
	lwz 9,32(1)
	cmpwi 0,9,0
	beq 0,.L21
	lwz 9,8(1)
	b .L23
.L21:
	li 9,0
.L23:
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2:
	.size	memchr,.-memchr
	.align 2
	.globl memcmp
	.type	memcmp, @function
memcmp:
.LFB3:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	lwz 9,24(1)
	stw 9,8(1)
	lwz 9,28(1)
	stw 9,12(1)
	b .L26
.L28:
	lwz 9,32(1)
	addi 9,9,-1
	stw 9,32(1)
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
	lwz 9,12(1)
	addi 9,9,1
	stw 9,12(1)
.L26:
	lwz 9,32(1)
	cmpwi 0,9,0
	beq 0,.L27
	lwz 9,8(1)
	lbz 10,0(9)
	lwz 9,12(1)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	beq 0,.L28
.L27:
	lwz 9,32(1)
	cmpwi 0,9,0
	beq 0,.L29
	lwz 9,8(1)
	lbz 9,0(9)
	rlwinm 10,9,0,0xff
	lwz 9,12(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	subf 9,9,10
	b .L31
.L29:
	li 9,0
.L31:
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE3:
	.size	memcmp,.-memcmp
	.align 2
	.globl memcpy
	.type	memcpy, @function
memcpy:
.LFB4:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	lwz 9,24(1)
	stw 9,8(1)
	lwz 9,28(1)
	stw 9,12(1)
	b .L34
.L35:
	lwz 10,12(1)
	addi 9,10,1
	stw 9,12(1)
	lwz 9,8(1)
	addi 8,9,1
	stw 8,8(1)
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,32(1)
	addi 9,9,-1
	stw 9,32(1)
.L34:
	lwz 9,32(1)
	cmpwi 0,9,0
	bne 0,.L35
	lwz 9,24(1)
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE4:
	.size	memcpy,.-memcpy
	.align 2
	.globl memrchr
	.type	memrchr, @function
memrchr:
.LFB5:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	lwz 9,24(1)
	stw 9,8(1)
	lwz 9,28(1)
	rlwinm 9,9,0,0xff
	stw 9,28(1)
	b .L39
.L41:
	lwz 10,8(1)
	lwz 9,32(1)
	add 9,10,9
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,28(1)
	cmpw 0,10,9
	bne 0,.L39
	lwz 10,8(1)
	lwz 9,32(1)
	add 9,10,9
	b .L40
.L39:
	lwz 9,32(1)
	addi 10,9,-1
	stw 10,32(1)
	cmpwi 0,9,0
	bne 0,.L41
	li 9,0
.L40:
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE5:
	.size	memrchr,.-memrchr
	.align 2
	.globl memset
	.type	memset, @function
memset:
.LFB6:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	lwz 9,24(1)
	stw 9,8(1)
	b .L44
.L45:
	lwz 9,28(1)
	mr 10,9
	lwz 9,8(1)
	stb 10,0(9)
	lwz 9,32(1)
	addi 9,9,-1
	stw 9,32(1)
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
.L44:
	lwz 9,32(1)
	cmpwi 0,9,0
	bne 0,.L45
	lwz 9,24(1)
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE6:
	.size	memset,.-memset
	.align 2
	.globl stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB7:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	stw 4,12(1)
	b .L49
.L50:
	lwz 9,12(1)
	addi 9,9,1
	stw 9,12(1)
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
.L49:
	lwz 9,12(1)
	lbz 10,0(9)
	lwz 9,8(1)
	stb 10,0(9)
	lwz 9,8(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L50
	lwz 9,8(1)
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE7:
	.size	stpcpy,.-stpcpy
	.align 2
	.globl strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB8:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	stw 4,12(1)
	lwz 9,12(1)
	rlwinm 9,9,0,0xff
	stw 9,12(1)
	b .L54
.L56:
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
.L54:
	lwz 9,8(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L55
	lwz 9,8(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,12(1)
	cmpw 0,10,9
	bne 0,.L56
.L55:
	lwz 9,8(1)
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE8:
	.size	strchrnul,.-strchrnul
	.align 2
	.globl strchr
	.type	strchr, @function
strchr:
.LFB9:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mr 9,3
	stw 4,8(1)
.L62:
	lbz 10,0(9)
	rlwinm 10,10,0,0xff
	lwz 8,8(1)
	cmpw 0,8,10
	bne 0,.L60
	b .L61
.L60:
	mr 10,9
	addi 9,10,1
	lbz 10,0(10)
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	bne 0,.L62
	li 9,0
.L61:
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE9:
	.size	strchr,.-strchr
	.align 2
	.globl strcmp
	.type	strcmp, @function
strcmp:
.LFB10:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	stw 4,12(1)
	b .L65
.L67:
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
	lwz 9,12(1)
	addi 9,9,1
	stw 9,12(1)
.L65:
	lwz 9,8(1)
	lbz 10,0(9)
	lwz 9,12(1)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	bne 0,.L66
	lwz 9,8(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L67
.L66:
	lwz 9,8(1)
	lbz 9,0(9)
	rlwinm 10,9,0,0xff
	lwz 9,12(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	subf 9,9,10
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE10:
	.size	strcmp,.-strcmp
	.align 2
	.globl strlen
	.type	strlen, @function
strlen:
.LFB11:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	lwz 9,24(1)
	stw 9,8(1)
	b .L71
.L72:
	lwz 9,24(1)
	addi 9,9,1
	stw 9,24(1)
.L71:
	lwz 9,24(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L72
	lwz 10,24(1)
	lwz 9,8(1)
	subf 9,9,10
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE11:
	.size	strlen,.-strlen
	.align 2
	.globl strncmp
	.type	strncmp, @function
strncmp:
.LFB12:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	lwz 9,24(1)
	stw 9,8(1)
	lwz 9,28(1)
	stw 9,12(1)
	lwz 9,32(1)
	addi 10,9,-1
	stw 10,32(1)
	cmpwi 0,9,0
	bne 0,.L78
	li 9,0
	b .L77
.L80:
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
	lwz 9,12(1)
	addi 9,9,1
	stw 9,12(1)
	lwz 9,32(1)
	addi 9,9,-1
	stw 9,32(1)
.L78:
	lwz 9,8(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L79
	lwz 9,12(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L79
	lwz 9,32(1)
	cmpwi 0,9,0
	beq 0,.L79
	lwz 9,8(1)
	lbz 10,0(9)
	lwz 9,12(1)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	beq 0,.L80
.L79:
	lwz 9,8(1)
	lbz 9,0(9)
	rlwinm 10,9,0,0xff
	lwz 9,12(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	subf 9,9,10
.L77:
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE12:
	.size	strncmp,.-strncmp
	.align 2
	.globl swab
	.type	swab, @function
swab:
.LFB13:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	lwz 9,24(1)
	stw 9,8(1)
	lwz 9,28(1)
	stw 9,12(1)
	b .L83
.L84:
	lwz 9,8(1)
	addi 9,9,1
	lbz 10,0(9)
	lwz 9,12(1)
	stb 10,0(9)
	lwz 9,12(1)
	addi 9,9,1
	lwz 10,8(1)
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,12(1)
	addi 9,9,2
	stw 9,12(1)
	lwz 9,8(1)
	addi 9,9,2
	stw 9,8(1)
	lwz 9,32(1)
	addi 9,9,-2
	stw 9,32(1)
.L83:
	lwz 9,32(1)
	cmpwi 0,9,1
	bgt 0,.L84
	nop
	nop
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE13:
	.size	swab,.-swab
	.align 2
	.globl isalpha
	.type	isalpha, @function
isalpha:
.LFB14:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	lwz 9,8(1)
	ori 9,9,0x20
	addi 9,9,-97
	subfic 9,9,25
	subfe 9,9,9
	addi 9,9,1
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE14:
	.size	isalpha,.-isalpha
	.align 2
	.globl isascii
	.type	isascii, @function
isascii:
.LFB15:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	lwz 9,8(1)
	subfic 9,9,127
	subfe 9,9,9
	addi 9,9,1
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE15:
	.size	isascii,.-isascii
	.align 2
	.globl isblank
	.type	isblank, @function
isblank:
.LFB16:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	lwz 9,8(1)
	cmpwi 0,9,32
	beq 0,.L93
	lwz 9,8(1)
	cmpwi 0,9,9
	bne 0,.L94
.L93:
	li 9,1
	b .L96
.L94:
	li 9,0
.L96:
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE16:
	.size	isblank,.-isblank
	.align 2
	.globl iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB17:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	lwz 9,8(1)
	cmplwi 0,9,31
	ble 0,.L99
	lwz 9,8(1)
	cmpwi 0,9,127
	bne 0,.L100
.L99:
	li 9,1
	b .L102
.L100:
	li 9,0
.L102:
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE17:
	.size	iscntrl,.-iscntrl
	.align 2
	.globl isdigit
	.type	isdigit, @function
isdigit:
.LFB18:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	lwz 9,8(1)
	addi 9,9,-48
	subfic 9,9,9
	subfe 9,9,9
	addi 9,9,1
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE18:
	.size	isdigit,.-isdigit
	.align 2
	.globl isgraph
	.type	isgraph, @function
isgraph:
.LFB19:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	lwz 9,8(1)
	addi 9,9,-33
	subfic 9,9,93
	subfe 9,9,9
	addi 9,9,1
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE19:
	.size	isgraph,.-isgraph
	.align 2
	.globl islower
	.type	islower, @function
islower:
.LFB20:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	lwz 9,8(1)
	addi 9,9,-97
	subfic 9,9,25
	subfe 9,9,9
	addi 9,9,1
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE20:
	.size	islower,.-islower
	.align 2
	.globl isprint
	.type	isprint, @function
isprint:
.LFB21:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	lwz 9,8(1)
	addi 9,9,-32
	subfic 9,9,94
	subfe 9,9,9
	addi 9,9,1
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE21:
	.size	isprint,.-isprint
	.align 2
	.globl isspace
	.type	isspace, @function
isspace:
.LFB22:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	lwz 9,8(1)
	cmpwi 0,9,32
	beq 0,.L117
	lwz 9,8(1)
	addi 9,9,-9
	cmplwi 0,9,4
	bgt 0,.L118
.L117:
	li 9,1
	b .L120
.L118:
	li 9,0
.L120:
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE22:
	.size	isspace,.-isspace
	.align 2
	.globl isupper
	.type	isupper, @function
isupper:
.LFB23:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	lwz 9,8(1)
	addi 9,9,-65
	subfic 9,9,25
	subfe 9,9,9
	addi 9,9,1
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE23:
	.size	isupper,.-isupper
	.align 2
	.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB24:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	lwz 9,8(1)
	cmplwi 0,9,31
	ble 0,.L126
	lwz 9,8(1)
	addi 9,9,-127
	cmplwi 0,9,32
	ble 0,.L126
	lwz 9,8(1)
	addi 9,9,-8232
	cmplwi 0,9,1
	ble 0,.L126
	lwz 9,8(1)
	addis 9,9,0xffff
	addi 9,9,7
	cmplwi 0,9,2
	bgt 0,.L127
.L126:
	li 9,1
	b .L129
.L127:
	li 9,0
.L129:
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE24:
	.size	iswcntrl,.-iswcntrl
	.align 2
	.globl iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB25:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	lwz 9,8(1)
	addi 9,9,-48
	subfic 9,9,9
	subfe 9,9,9
	addi 9,9,1
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE25:
	.size	iswdigit,.-iswdigit
	.align 2
	.globl iswprint
	.type	iswprint, @function
iswprint:
.LFB26:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	lwz 9,8(1)
	cmplwi 0,9,254
	bgt 0,.L135
	lwz 9,8(1)
	addi 9,9,1
	rlwinm 9,9,0,25,31
	subfic 9,9,32
	subfe 9,9,9
	neg 9,9
	rlwinm 9,9,0,0xff
	b .L136
.L135:
	lwz 9,8(1)
	cmplwi 0,9,8231
	ble 0,.L137
	lwz 9,8(1)
	addi 10,9,-8234
	li 9,0
	ori 9,9,0xb7d5
	cmplw 0,10,9
	ble 0,.L137
	lwz 9,8(1)
	addis 9,9,0xffff
	addi 9,9,8192
	cmplwi 0,9,8184
	bgt 0,.L138
.L137:
	li 9,1
	b .L136
.L138:
	lwz 9,8(1)
	addis 9,9,0xffff
	addi 10,9,4
	lis 9,0x10
	ori 9,9,0x3
	cmplw 0,10,9
	bgt 0,.L139
	lwz 9,8(1)
	rlwinm 10,9,0,16,30
	li 9,0
	ori 9,9,0xfffe
	cmpw 0,10,9
	bne 0,.L140
.L139:
	li 9,0
	b .L136
.L140:
	li 9,1
.L136:
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE26:
	.size	iswprint,.-iswprint
	.align 2
	.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB27:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	lwz 9,8(1)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L143
	lwz 9,8(1)
	ori 9,9,0x20
	addi 9,9,-97
	cmplwi 0,9,5
	bgt 0,.L144
.L143:
	li 9,1
	b .L146
.L144:
	li 9,0
.L146:
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE27:
	.size	iswxdigit,.-iswxdigit
	.align 2
	.globl toascii
	.type	toascii, @function
toascii:
.LFB28:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	lwz 9,8(1)
	rlwinm 9,9,0,25,31
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE28:
	.size	toascii,.-toascii
	.align 2
	.globl fdim
	.type	fdim, @function
fdim:
.LFB29:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	.cfi_offset 65, 4
	stw 3,8(1)
	stw 4,12(1)
	stw 5,16(1)
	stw 6,20(1)
	lwz 5,8(1)
	lwz 6,12(1)
	lwz 3,8(1)
	lwz 4,12(1)
	bl __unorddf2
	mr 9,3
	cmpwi 0,3,0
	beq 0,.L163
	lwz 10,8(1)
	lwz 11,12(1)
	b .L154
.L163:
	lwz 5,16(1)
	lwz 6,20(1)
	lwz 3,16(1)
	lwz 4,20(1)
	bl __unorddf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L164
	lwz 10,16(1)
	lwz 11,20(1)
	b .L154
.L164:
	lwz 5,16(1)
	lwz 6,20(1)
	lwz 3,8(1)
	lwz 4,12(1)
	bl __gtdf2
	mr 9,3
	cmpwi 0,9,0
	ble 0,.L165
	lwz 5,16(1)
	lwz 6,20(1)
	lwz 3,8(1)
	lwz 4,12(1)
	bl __subdf3
	mr 11,4
	mr 10,3
	b .L154
.L165:
	li 10,0
	li 11,0
.L154:
	mr 3,10
	mr 4,11
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE29:
	.size	fdim,.-fdim
	.align 2
	.globl fdimf
	.type	fdimf, @function
fdimf:
.LFB30:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	.cfi_offset 65, 4
	stw 3,8(1)
	stw 4,12(1)
	lwz 4,8(1)
	lwz 3,8(1)
	bl __unordsf2
	mr 9,3
	cmpwi 0,3,0
	beq 0,.L179
	lwz 9,8(1)
	b .L170
.L179:
	lwz 4,12(1)
	lwz 3,12(1)
	bl __unordsf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L180
	lwz 9,12(1)
	b .L170
.L180:
	lwz 4,12(1)
	lwz 3,8(1)
	bl __gtsf2
	mr 9,3
	cmpwi 0,9,0
	ble 0,.L181
	lwz 4,12(1)
	lwz 3,8(1)
	bl __subsf3
	mr 9,3
	b .L170
.L181:
	li 9,0
.L170:
	mr 3,9
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE30:
	.size	fdimf,.-fdimf
	.align 2
	.globl fmax
	.type	fmax, @function
fmax:
.LFB31:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	.cfi_offset 65, 4
	stw 3,8(1)
	stw 4,12(1)
	stw 5,16(1)
	stw 6,20(1)
	lwz 5,8(1)
	lwz 6,12(1)
	lwz 3,8(1)
	lwz 4,12(1)
	bl __unorddf2
	mr 9,3
	cmpwi 0,3,0
	beq 0,.L198
	lwz 10,16(1)
	lwz 11,20(1)
	b .L186
.L198:
	lwz 5,16(1)
	lwz 6,20(1)
	lwz 3,16(1)
	lwz 4,20(1)
	bl __unorddf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L199
	lwz 10,8(1)
	lwz 11,12(1)
	b .L186
.L199:
	lwz 9,8(1)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,16(1)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L189
	lwz 9,8(1)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L190
	lwz 10,16(1)
	lwz 11,20(1)
	b .L186
.L190:
	lwz 10,8(1)
	lwz 11,12(1)
	b .L186
.L189:
	lwz 5,16(1)
	lwz 6,20(1)
	lwz 3,8(1)
	lwz 4,12(1)
	bl __ltdf2
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L200
	lwz 10,16(1)
	lwz 11,20(1)
	b .L186
.L200:
	lwz 10,8(1)
	lwz 11,12(1)
.L186:
	mr 3,10
	mr 4,11
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE31:
	.size	fmax,.-fmax
	.align 2
	.globl fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB32:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	.cfi_offset 65, 4
	stw 3,8(1)
	stw 4,12(1)
	lwz 4,8(1)
	lwz 3,8(1)
	bl __unordsf2
	mr 9,3
	cmpwi 0,3,0
	beq 0,.L217
	lwz 9,12(1)
	b .L205
.L217:
	lwz 4,12(1)
	lwz 3,12(1)
	bl __unordsf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L218
	lwz 9,8(1)
	b .L205
.L218:
	lwz 9,8(1)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,12(1)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L208
	lwz 9,8(1)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L209
	lwz 9,12(1)
	b .L205
.L209:
	lwz 9,8(1)
	b .L205
.L208:
	lwz 4,12(1)
	lwz 3,8(1)
	bl __ltsf2
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L219
	lwz 9,12(1)
	b .L205
.L219:
	lwz 9,8(1)
.L205:
	mr 3,9
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE32:
	.size	fmaxf,.-fmaxf
	.align 2
	.globl fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB33:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	.cfi_offset 65, 4
	addi 11,1,16
	stw 3,0(11)
	stw 4,4(11)
	stw 5,8(11)
	stw 6,12(11)
	addi 6,1,32
	stw 7,0(6)
	stw 8,4(6)
	stw 9,8(6)
	stw 10,12(6)
	addi 9,1,16
	lwz 3,0(9)
	lwz 4,4(9)
	lwz 5,8(9)
	lwz 6,12(9)
	bl __gcc_qtod
	mr 11,4
	mr 10,3
	mr 6,4
	mr 5,3
	bl __unorddf2
	mr 9,3
	cmpwi 0,3,0
	beq 0,.L236
	addi 9,1,32
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L224
.L236:
	addi 9,1,32
	lwz 3,0(9)
	lwz 4,4(9)
	lwz 5,8(9)
	lwz 6,12(9)
	bl __gcc_qtod
	mr 11,4
	mr 10,3
	mr 5,10
	mr 6,11
	mr 3,10
	mr 4,11
	bl __unorddf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L237
	addi 9,1,16
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L224
.L237:
	lwz 9,16(1)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,32(1)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L227
	lwz 9,16(1)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L228
	addi 9,1,32
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L224
.L228:
	addi 9,1,16
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L224
.L227:
	addi 9,1,32
	addi 6,1,16
	lwz 10,12(9)
	lwz 7,0(9)
	lwz 8,4(9)
	lwz 9,8(9)
	lwz 3,0(6)
	lwz 4,4(6)
	lwz 5,8(6)
	lwz 6,12(6)
	bl __gcc_qlt
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L238
	addi 9,1,32
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L224
.L238:
	addi 9,1,16
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
.L224:
	mr 3,8
	mr 4,9
	mr 5,10
	mr 6,11
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE33:
	.size	fmaxl,.-fmaxl
	.align 2
	.globl fmin
	.type	fmin, @function
fmin:
.LFB34:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	.cfi_offset 65, 4
	stw 3,8(1)
	stw 4,12(1)
	stw 5,16(1)
	stw 6,20(1)
	lwz 5,8(1)
	lwz 6,12(1)
	lwz 3,8(1)
	lwz 4,12(1)
	bl __unorddf2
	mr 9,3
	cmpwi 0,3,0
	beq 0,.L255
	lwz 10,16(1)
	lwz 11,20(1)
	b .L243
.L255:
	lwz 5,16(1)
	lwz 6,20(1)
	lwz 3,16(1)
	lwz 4,20(1)
	bl __unorddf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L256
	lwz 10,8(1)
	lwz 11,12(1)
	b .L243
.L256:
	lwz 9,8(1)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,16(1)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L246
	lwz 9,8(1)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L247
	lwz 10,8(1)
	lwz 11,12(1)
	b .L243
.L247:
	lwz 10,16(1)
	lwz 11,20(1)
	b .L243
.L246:
	lwz 5,16(1)
	lwz 6,20(1)
	lwz 3,8(1)
	lwz 4,12(1)
	bl __ltdf2
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L257
	lwz 10,8(1)
	lwz 11,12(1)
	b .L243
.L257:
	lwz 10,16(1)
	lwz 11,20(1)
.L243:
	mr 3,10
	mr 4,11
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE34:
	.size	fmin,.-fmin
	.align 2
	.globl fminf
	.type	fminf, @function
fminf:
.LFB35:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	.cfi_offset 65, 4
	stw 3,8(1)
	stw 4,12(1)
	lwz 4,8(1)
	lwz 3,8(1)
	bl __unordsf2
	mr 9,3
	cmpwi 0,3,0
	beq 0,.L274
	lwz 9,12(1)
	b .L262
.L274:
	lwz 4,12(1)
	lwz 3,12(1)
	bl __unordsf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L275
	lwz 9,8(1)
	b .L262
.L275:
	lwz 9,8(1)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,12(1)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L265
	lwz 9,8(1)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L266
	lwz 9,8(1)
	b .L262
.L266:
	lwz 9,12(1)
	b .L262
.L265:
	lwz 4,12(1)
	lwz 3,8(1)
	bl __ltsf2
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L276
	lwz 9,8(1)
	b .L262
.L276:
	lwz 9,12(1)
.L262:
	mr 3,9
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE35:
	.size	fminf,.-fminf
	.align 2
	.globl fminl
	.type	fminl, @function
fminl:
.LFB36:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	.cfi_offset 65, 4
	addi 11,1,16
	stw 3,0(11)
	stw 4,4(11)
	stw 5,8(11)
	stw 6,12(11)
	addi 6,1,32
	stw 7,0(6)
	stw 8,4(6)
	stw 9,8(6)
	stw 10,12(6)
	addi 9,1,16
	lwz 3,0(9)
	lwz 4,4(9)
	lwz 5,8(9)
	lwz 6,12(9)
	bl __gcc_qtod
	mr 11,4
	mr 10,3
	mr 6,4
	mr 5,3
	bl __unorddf2
	mr 9,3
	cmpwi 0,3,0
	beq 0,.L293
	addi 9,1,32
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L281
.L293:
	addi 9,1,32
	lwz 3,0(9)
	lwz 4,4(9)
	lwz 5,8(9)
	lwz 6,12(9)
	bl __gcc_qtod
	mr 11,4
	mr 10,3
	mr 5,10
	mr 6,11
	mr 3,10
	mr 4,11
	bl __unorddf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L294
	addi 9,1,16
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L281
.L294:
	lwz 9,16(1)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,32(1)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L284
	lwz 9,16(1)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L285
	addi 9,1,16
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L281
.L285:
	addi 9,1,32
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L281
.L284:
	addi 9,1,32
	addi 6,1,16
	lwz 10,12(9)
	lwz 7,0(9)
	lwz 8,4(9)
	lwz 9,8(9)
	lwz 3,0(6)
	lwz 4,4(6)
	lwz 5,8(6)
	lwz 6,12(6)
	bl __gcc_qlt
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L295
	addi 9,1,16
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L281
.L295:
	addi 9,1,32
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
.L281:
	mr 3,8
	mr 4,9
	mr 5,10
	mr 6,11
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE36:
	.size	fminl,.-fminl
	.section	.rodata
	.align 2
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	".text"
	.align 2
	.globl l64a
	.type	l64a, @function
l64a:
.LFB37:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	lwz 9,24(1)
	stw 9,12(1)
	lis 9,s.0@ha
	la 9,s.0@l(9)
	stw 9,8(1)
	b .L298
.L299:
	lwz 9,12(1)
	rlwinm 9,9,0,26,31
	lis 10,digits@ha
	la 10,digits@l(10)
	lbzx 10,10,9
	lwz 9,8(1)
	stb 10,0(9)
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
	lwz 9,12(1)
	srwi 9,9,6
	stw 9,12(1)
.L298:
	lwz 9,12(1)
	cmpwi 0,9,0
	bne 0,.L299
	lwz 9,8(1)
	li 10,0
	stb 10,0(9)
	lis 9,s.0@ha
	la 9,s.0@l(9)
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE37:
	.size	l64a,.-l64a
	.lcomm	seed,8,8
	.type	seed, @object
	.align 2
	.globl srand
	.type	srand, @function
srand:
.LFB38:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	lwz 9,8(1)
	addi 9,9,-1
	mr 8,9
	li 10,0
	lis 9,seed@ha
	la 9,seed@l(9)
	stw 10,0(9)
	stw 8,4(9)
	nop
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE38:
	.size	srand,.-srand
	.align 2
	.globl rand
	.type	rand, @function
rand:
.LFB39:
	.cfi_startproc
	lis 9,seed@ha
	la 9,seed@l(9)
	lwz 8,0(9)
	lwz 9,4(9)
	lis 10,0x4c95
	ori 10,10,0x7f2d
	mullw 8,8,10
	lis 10,0x5851
	ori 10,10,0xf42d
	mullw 10,9,10
	add 8,8,10
	lis 10,0x4c95
	ori 10,10,0x7f2d
	mullw 7,9,10
	mulhwu 9,9,10
	mr 10,7
	add 9,8,9
	addic 10,10,1
	addze 8,9
	lis 9,seed@ha
	la 9,seed@l(9)
	stw 8,0(9)
	stw 10,4(9)
	lis 9,seed@ha
	la 9,seed@l(9)
	lwz 9,0(9)
	srwi 9,9,1
	mr 3,9
	blr
	.cfi_endproc
.LFE39:
	.size	rand,.-rand
	.align 2
	.globl insque
	.type	insque, @function
insque:
.LFB40:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	stw 4,28(1)
	lwz 9,24(1)
	stw 9,8(1)
	lwz 9,28(1)
	stw 9,12(1)
	lwz 9,12(1)
	cmpwi 0,9,0
	bne 0,.L307
	lwz 9,8(1)
	li 10,0
	stw 10,4(9)
	lwz 9,8(1)
	lwz 10,4(9)
	lwz 9,8(1)
	stw 10,0(9)
	b .L306
.L307:
	lwz 9,12(1)
	lwz 10,0(9)
	lwz 9,8(1)
	stw 10,0(9)
	lwz 9,8(1)
	lwz 10,12(1)
	stw 10,4(9)
	lwz 9,12(1)
	lwz 10,8(1)
	stw 10,0(9)
	lwz 9,8(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L306
	lwz 9,8(1)
	lwz 9,0(9)
	lwz 10,8(1)
	stw 10,4(9)
.L306:
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE40:
	.size	insque,.-insque
	.align 2
	.globl remque
	.type	remque, @function
remque:
.LFB41:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	lwz 9,24(1)
	stw 9,8(1)
	lwz 9,8(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L311
	lwz 9,8(1)
	lwz 9,0(9)
	lwz 10,8(1)
	lwz 10,4(10)
	stw 10,4(9)
.L311:
	lwz 9,8(1)
	lwz 9,4(9)
	cmpwi 0,9,0
	beq 0,.L313
	lwz 9,8(1)
	lwz 9,4(9)
	lwz 10,8(1)
	lwz 10,0(10)
	stw 10,0(9)
.L313:
	nop
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE41:
	.size	remque,.-remque
	.align 2
	.globl lsearch
	.type	lsearch, @function
lsearch:
.LFB42:
	.cfi_startproc
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mflr 0
	stw 0,68(1)
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	stw 6,36(1)
	stw 7,40(1)
	lwz 31,36(1)
	mr 9,31
	addi 9,31,-1
	stw 9,12(1)
	lwz 9,28(1)
	stw 9,16(1)
	lwz 9,32(1)
	lwz 9,0(9)
	stw 9,20(1)
	li 9,0
	stw 9,8(1)
	b .L316
.L319:
	lwz 9,8(1)
	mullw 9,31,9
	lwz 10,16(1)
	add 10,10,9
	lwz 9,40(1)
	mr 4,10
	lwz 3,24(1)
	mtctr 9
	bctrl
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L317
	lwz 9,8(1)
	mullw 9,31,9
	lwz 10,16(1)
	add 9,10,9
	b .L318
.L317:
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
.L316:
	lwz 10,8(1)
	lwz 9,20(1)
	cmplw 0,10,9
	blt 0,.L319
	lwz 9,20(1)
	addi 10,9,1
	lwz 9,32(1)
	stw 10,0(9)
	lwz 9,20(1)
	mullw 9,31,9
	lwz 10,16(1)
	add 9,10,9
	lwz 5,36(1)
	lwz 4,24(1)
	mr 3,9
	bl memcpy
	mr 9,3
.L318:
	mr 3,9
	lwz 0,68(1)
	mtlr 0
	.cfi_restore 65
	lwz 31,60(1)
	addi 1,1,64
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE42:
	.size	lsearch,.-lsearch
	.align 2
	.globl lfind
	.type	lfind, @function
lfind:
.LFB43:
	.cfi_startproc
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mflr 0
	stw 0,68(1)
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	stw 6,36(1)
	stw 7,40(1)
	lwz 31,36(1)
	mr 9,31
	addi 9,31,-1
	stw 9,12(1)
	lwz 9,28(1)
	stw 9,16(1)
	lwz 9,32(1)
	lwz 9,0(9)
	stw 9,20(1)
	li 9,0
	stw 9,8(1)
	b .L322
.L325:
	lwz 9,8(1)
	mullw 9,31,9
	lwz 10,16(1)
	add 10,10,9
	lwz 9,40(1)
	mr 4,10
	lwz 3,24(1)
	mtctr 9
	bctrl
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L323
	lwz 9,8(1)
	mullw 9,31,9
	lwz 10,16(1)
	add 9,10,9
	b .L324
.L323:
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
.L322:
	lwz 10,8(1)
	lwz 9,20(1)
	cmplw 0,10,9
	blt 0,.L325
	li 9,0
.L324:
	mr 3,9
	lwz 0,68(1)
	mtlr 0
	.cfi_restore 65
	lwz 31,60(1)
	addi 1,1,64
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE43:
	.size	lfind,.-lfind
	.align 2
	.globl abs
	.type	abs, @function
abs:
.LFB44:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	lwz 9,8(1)
	srawi 10,9,31
	lwz 9,8(1)
	xor 9,10,9
	subf 9,10,9
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE44:
	.size	abs,.-abs
	.align 2
	.globl atoi
	.type	atoi, @function
atoi:
.LFB45:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	.cfi_offset 65, 4
	stw 3,24(1)
	li 9,0
	stw 9,8(1)
	li 9,0
	stw 9,12(1)
	b .L331
.L332:
	lwz 9,24(1)
	addi 9,9,1
	stw 9,24(1)
.L331:
	lwz 9,24(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	mr 3,9
	bl isspace
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L332
	lwz 9,24(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,43
	beq 0,.L333
	cmpwi 0,9,45
	bne 0,.L335
	li 9,1
	stw 9,12(1)
.L333:
	lwz 9,24(1)
	addi 9,9,1
	stw 9,24(1)
	b .L335
.L336:
	lwz 10,8(1)
	mr 9,10
	slwi 9,9,2
	add 9,9,10
	slwi 9,9,1
	mr 8,9
	lwz 9,24(1)
	addi 10,9,1
	stw 10,24(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	subf 9,9,8
	stw 9,8(1)
.L335:
	lwz 9,24(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L336
	lwz 9,12(1)
	cmpwi 0,9,0
	bne 0,.L337
	lwz 9,8(1)
	neg 9,9
	b .L339
.L337:
	lwz 9,8(1)
.L339:
	mr 3,9
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE45:
	.size	atoi,.-atoi
	.align 2
	.globl atol
	.type	atol, @function
atol:
.LFB46:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	.cfi_offset 65, 4
	stw 3,24(1)
	li 9,0
	stw 9,8(1)
	li 9,0
	stw 9,12(1)
	b .L342
.L343:
	lwz 9,24(1)
	addi 9,9,1
	stw 9,24(1)
.L342:
	lwz 9,24(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	mr 3,9
	bl isspace
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L343
	lwz 9,24(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,43
	beq 0,.L344
	cmpwi 0,9,45
	bne 0,.L346
	li 9,1
	stw 9,12(1)
.L344:
	lwz 9,24(1)
	addi 9,9,1
	stw 9,24(1)
	b .L346
.L347:
	lwz 10,8(1)
	mr 9,10
	slwi 9,9,2
	add 9,9,10
	slwi 9,9,1
	mr 8,9
	lwz 9,24(1)
	addi 10,9,1
	stw 10,24(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	subf 9,9,8
	stw 9,8(1)
.L346:
	lwz 9,24(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L347
	lwz 9,12(1)
	cmpwi 0,9,0
	bne 0,.L348
	lwz 9,8(1)
	neg 9,9
	b .L350
.L348:
	lwz 9,8(1)
.L350:
	mr 3,9
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE46:
	.size	atol,.-atol
	.align 2
	.globl atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	.cfi_offset 65, 4
	stw 3,24(1)
	li 10,0
	li 11,0
	stw 10,8(1)
	stw 11,12(1)
	li 9,0
	stw 9,16(1)
	b .L353
.L354:
	lwz 9,24(1)
	addi 9,9,1
	stw 9,24(1)
.L353:
	lwz 9,24(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	mr 3,9
	bl isspace
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L354
	lwz 9,24(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,43
	beq 0,.L355
	cmpwi 0,9,45
	bne 0,.L357
	li 9,1
	stw 9,16(1)
.L355:
	lwz 9,24(1)
	addi 9,9,1
	stw 9,24(1)
	b .L357
.L358:
	lwz 7,8(1)
	lwz 8,12(1)
	mr 10,7
	mr 9,8
	srwi 6,9,30
	slwi 10,10,2
	or 10,6,10
	slwi 9,9,2
	addc 9,9,8
	adde 10,10,7
	srwi 8,9,31
	slwi 10,10,1
	or 10,8,10
	slwi 9,9,1
	mr 8,10
	mr 6,9
	lwz 9,24(1)
	addi 10,9,1
	stw 10,24(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	mr 7,9
	srawi 9,9,31
	mr 10,9
	subfc 9,7,6
	subfe 10,10,8
	stw 10,8(1)
	stw 9,12(1)
.L357:
	lwz 9,24(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L358
	lwz 9,16(1)
	cmpwi 0,9,0
	bne 0,.L359
	lwz 10,8(1)
	lwz 9,12(1)
	subfic 9,9,0
	subfze 10,10
	b .L361
.L359:
	lwz 10,8(1)
	lwz 9,12(1)
.L361:
	mr 3,10
	mr 4,9
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE47:
	.size	atoll,.-atoll
	.align 2
	.globl bsearch
	.type	bsearch, @function
bsearch:
.LFB48:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	.cfi_offset 65, 4
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	stw 6,36(1)
	stw 7,40(1)
	b .L364
.L369:
	lwz 9,32(1)
	srwi 10,9,1
	lwz 9,36(1)
	mullw 9,10,9
	lwz 10,28(1)
	add 9,10,9
	stw 9,8(1)
	lwz 9,40(1)
	lwz 4,8(1)
	lwz 3,24(1)
	mtctr 9
	bctrl
	stw 3,12(1)
	lwz 9,12(1)
	cmpwi 0,9,0
	bge 0,.L365
	lwz 9,32(1)
	srwi 9,9,1
	stw 9,32(1)
	b .L364
.L365:
	lwz 9,12(1)
	cmpwi 0,9,0
	ble 0,.L367
	lwz 10,8(1)
	lwz 9,36(1)
	add 9,10,9
	stw 9,28(1)
	lwz 9,32(1)
	srwi 9,9,1
	lwz 10,32(1)
	subf 9,9,10
	addi 9,9,-1
	stw 9,32(1)
	b .L364
.L367:
	lwz 9,8(1)
	b .L368
.L364:
	lwz 9,32(1)
	cmpwi 0,9,0
	bne 0,.L369
	li 9,0
.L368:
	mr 3,9
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE48:
	.size	bsearch,.-bsearch
	.align 2
	.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB49:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	.cfi_offset 65, 4
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	stw 6,36(1)
	stw 7,40(1)
	stw 8,44(1)
	lwz 9,28(1)
	stw 9,8(1)
	lwz 9,32(1)
	stw 9,12(1)
	b .L372
.L376:
	lwz 9,12(1)
	srawi 9,9,1
	mr 10,9
	lwz 9,36(1)
	mullw 9,10,9
	lwz 10,8(1)
	add 9,10,9
	stw 9,16(1)
	lwz 9,40(1)
	lwz 5,44(1)
	lwz 4,16(1)
	lwz 3,24(1)
	mtctr 9
	bctrl
	stw 3,20(1)
	lwz 9,20(1)
	cmpwi 0,9,0
	bne 0,.L373
	lwz 9,16(1)
	b .L374
.L373:
	lwz 9,20(1)
	cmpwi 0,9,0
	ble 0,.L375
	lwz 10,16(1)
	lwz 9,36(1)
	add 9,10,9
	stw 9,8(1)
	lwz 9,12(1)
	addi 9,9,-1
	stw 9,12(1)
.L375:
	lwz 9,12(1)
	srawi 9,9,1
	stw 9,12(1)
.L372:
	lwz 9,12(1)
	cmpwi 0,9,0
	bne 0,.L376
	li 9,0
.L374:
	mr 3,9
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE49:
	.size	bsearch_r,.-bsearch_r
	.align 2
	.globl div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,8(1)
	stw 4,12(1)
	stw 5,16(1)
	lwz 10,12(1)
	lwz 9,16(1)
	divw 8,10,9
	lwz 9,12(1)
	lwz 10,16(1)
	divw 7,9,10
	lwz 10,16(1)
	mullw 10,7,10
	subf 10,10,9
	lwz 9,8(1)
	stw 8,0(9)
	lwz 9,8(1)
	stw 10,4(9)
	lwz 3,8(1)
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE50:
	.size	div,.-div
	.align 2
	.globl imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB51:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	stw 4,12(1)
	lwz 9,8(1)
	srawi 9,9,31
	lwz 10,8(1)
	srawi 7,10,31
	lwz 8,8(1)
	lwz 10,12(1)
	xor 8,7,8
	xor 10,9,10
	subfc 9,9,10
	subfe 10,7,8
	mr 8,10
	mr 10,9
	mr 9,10
	mr 3,8
	mr 4,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE51:
	.size	imaxabs,.-imaxabs
	.align 2
	.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB52:
	.cfi_startproc
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mflr 0
	stw 0,68(1)
	stw 30,56(1)
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	stw 3,24(1)
	stw 5,32(1)
	stw 6,36(1)
	stw 7,40(1)
	stw 8,44(1)
	lwz 5,40(1)
	lwz 6,44(1)
	lwz 3,32(1)
	lwz 4,36(1)
	bl __divdi3
	mr 10,3
	mr 9,4
	mr 30,10
	mr 31,9
	lwz 10,32(1)
	lwz 11,36(1)
	lwz 5,40(1)
	lwz 6,44(1)
	mr 3,10
	mr 4,11
	bl __moddi3
	mr 10,3
	mr 9,4
	mr 8,10
	mr 10,9
	lwz 9,24(1)
	stw 30,0(9)
	stw 31,4(9)
	lwz 9,24(1)
	stw 8,8(9)
	stw 10,12(9)
	lwz 3,24(1)
	lwz 0,68(1)
	mtlr 0
	.cfi_restore 65
	lwz 30,56(1)
	lwz 31,60(1)
	addi 1,1,64
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE52:
	.size	imaxdiv,.-imaxdiv
	.align 2
	.globl labs
	.type	labs, @function
labs:
.LFB53:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	lwz 9,8(1)
	srawi 10,9,31
	lwz 9,8(1)
	xor 9,10,9
	subf 9,10,9
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE53:
	.size	labs,.-labs
	.align 2
	.globl ldiv
	.type	ldiv, @function
ldiv:
.LFB54:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,8(1)
	stw 4,12(1)
	stw 5,16(1)
	lwz 10,12(1)
	lwz 9,16(1)
	divw 8,10,9
	lwz 9,12(1)
	lwz 10,16(1)
	divw 7,9,10
	lwz 10,16(1)
	mullw 10,7,10
	subf 10,10,9
	lwz 9,8(1)
	stw 8,0(9)
	lwz 9,8(1)
	stw 10,4(9)
	lwz 3,8(1)
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE54:
	.size	ldiv,.-ldiv
	.align 2
	.globl llabs
	.type	llabs, @function
llabs:
.LFB55:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	stw 4,12(1)
	lwz 9,8(1)
	srawi 9,9,31
	lwz 10,8(1)
	srawi 7,10,31
	lwz 8,8(1)
	lwz 10,12(1)
	xor 8,7,8
	xor 10,9,10
	subfc 9,9,10
	subfe 10,7,8
	mr 8,10
	mr 10,9
	mr 9,10
	mr 3,8
	mr 4,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE55:
	.size	llabs,.-llabs
	.align 2
	.globl lldiv
	.type	lldiv, @function
lldiv:
.LFB56:
	.cfi_startproc
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mflr 0
	stw 0,68(1)
	stw 30,56(1)
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	stw 3,24(1)
	stw 5,32(1)
	stw 6,36(1)
	stw 7,40(1)
	stw 8,44(1)
	lwz 5,40(1)
	lwz 6,44(1)
	lwz 3,32(1)
	lwz 4,36(1)
	bl __divdi3
	mr 10,3
	mr 9,4
	mr 30,10
	mr 31,9
	lwz 10,32(1)
	lwz 11,36(1)
	lwz 5,40(1)
	lwz 6,44(1)
	mr 3,10
	mr 4,11
	bl __moddi3
	mr 10,3
	mr 9,4
	mr 8,10
	mr 10,9
	lwz 9,24(1)
	stw 30,0(9)
	stw 31,4(9)
	lwz 9,24(1)
	stw 8,8(9)
	stw 10,12(9)
	lwz 3,24(1)
	lwz 0,68(1)
	mtlr 0
	.cfi_restore 65
	lwz 30,56(1)
	lwz 31,60(1)
	addi 1,1,64
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE56:
	.size	lldiv,.-lldiv
	.align 2
	.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	stw 4,12(1)
	b .L400
.L402:
	lwz 9,8(1)
	addi 9,9,4
	stw 9,8(1)
.L400:
	lwz 9,8(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L401
	lwz 9,8(1)
	lwz 9,0(9)
	lwz 10,12(1)
	cmpw 0,10,9
	bne 0,.L402
.L401:
	lwz 9,8(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L403
	lwz 9,8(1)
	b .L405
.L403:
	li 9,0
.L405:
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE57:
	.size	wcschr,.-wcschr
	.align 2
	.globl wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB58:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	stw 4,12(1)
	b .L408
.L410:
	lwz 9,8(1)
	addi 9,9,4
	stw 9,8(1)
	lwz 9,12(1)
	addi 9,9,4
	stw 9,12(1)
.L408:
	lwz 9,8(1)
	lwz 10,0(9)
	lwz 9,12(1)
	lwz 9,0(9)
	cmpw 0,10,9
	bne 0,.L409
	lwz 9,8(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L409
	lwz 9,12(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L410
.L409:
	lwz 9,8(1)
	lwz 10,0(9)
	lwz 9,12(1)
	lwz 9,0(9)
	cmpw 0,10,9
	blt 0,.L411
	lwz 9,8(1)
	lwz 9,0(9)
	lwz 10,12(1)
	lwz 10,0(10)
	srwi 7,9,31
	srawi 8,10,31
	subfc 9,9,10
	adde 9,7,8
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	b .L413
.L411:
	li 9,-1
.L413:
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE58:
	.size	wcscmp,.-wcscmp
	.align 2
	.globl wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB59:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	stw 4,28(1)
	lwz 9,24(1)
	stw 9,8(1)
	nop
.L416:
	lwz 10,28(1)
	addi 9,10,4
	stw 9,28(1)
	lwz 9,24(1)
	addi 8,9,4
	stw 8,24(1)
	lwz 10,0(10)
	stw 10,0(9)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L416
	lwz 9,8(1)
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE59:
	.size	wcscpy,.-wcscpy
	.align 2
	.globl wcslen
	.type	wcslen, @function
wcslen:
.LFB60:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	lwz 9,24(1)
	stw 9,8(1)
	b .L420
.L421:
	lwz 9,24(1)
	addi 9,9,4
	stw 9,24(1)
.L420:
	lwz 9,24(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L421
	lwz 10,24(1)
	lwz 9,8(1)
	subf 9,9,10
	srawi 9,9,2
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE60:
	.size	wcslen,.-wcslen
	.align 2
	.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,8(1)
	stw 4,12(1)
	stw 5,16(1)
	b .L425
.L427:
	lwz 9,16(1)
	addi 9,9,-1
	stw 9,16(1)
	lwz 9,8(1)
	addi 9,9,4
	stw 9,8(1)
	lwz 9,12(1)
	addi 9,9,4
	stw 9,12(1)
.L425:
	lwz 9,16(1)
	cmpwi 0,9,0
	beq 0,.L426
	lwz 9,8(1)
	lwz 10,0(9)
	lwz 9,12(1)
	lwz 9,0(9)
	cmpw 0,10,9
	bne 0,.L426
	lwz 9,8(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L426
	lwz 9,12(1)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L427
.L426:
	lwz 9,16(1)
	cmpwi 0,9,0
	beq 0,.L428
	lwz 9,8(1)
	lwz 10,0(9)
	lwz 9,12(1)
	lwz 9,0(9)
	cmpw 0,10,9
	blt 0,.L429
	lwz 9,8(1)
	lwz 9,0(9)
	lwz 10,12(1)
	lwz 10,0(10)
	srwi 7,9,31
	srawi 8,10,31
	subfc 9,9,10
	adde 9,7,8
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	b .L432
.L429:
	li 9,-1
	b .L432
.L428:
	li 9,0
.L432:
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE61:
	.size	wcsncmp,.-wcsncmp
	.align 2
	.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB62:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,8(1)
	stw 4,12(1)
	stw 5,16(1)
	b .L435
.L437:
	lwz 9,16(1)
	addi 9,9,-1
	stw 9,16(1)
	lwz 9,8(1)
	addi 9,9,4
	stw 9,8(1)
.L435:
	lwz 9,16(1)
	cmpwi 0,9,0
	beq 0,.L436
	lwz 9,8(1)
	lwz 9,0(9)
	lwz 10,12(1)
	cmpw 0,10,9
	bne 0,.L437
.L436:
	lwz 9,16(1)
	cmpwi 0,9,0
	beq 0,.L438
	lwz 9,8(1)
	b .L440
.L438:
	li 9,0
.L440:
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE62:
	.size	wmemchr,.-wmemchr
	.align 2
	.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB63:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,8(1)
	stw 4,12(1)
	stw 5,16(1)
	b .L443
.L445:
	lwz 9,16(1)
	addi 9,9,-1
	stw 9,16(1)
	lwz 9,8(1)
	addi 9,9,4
	stw 9,8(1)
	lwz 9,12(1)
	addi 9,9,4
	stw 9,12(1)
.L443:
	lwz 9,16(1)
	cmpwi 0,9,0
	beq 0,.L444
	lwz 9,8(1)
	lwz 10,0(9)
	lwz 9,12(1)
	lwz 9,0(9)
	cmpw 0,10,9
	beq 0,.L445
.L444:
	lwz 9,16(1)
	cmpwi 0,9,0
	beq 0,.L446
	lwz 9,8(1)
	lwz 10,0(9)
	lwz 9,12(1)
	lwz 9,0(9)
	cmpw 0,10,9
	blt 0,.L447
	lwz 9,8(1)
	lwz 9,0(9)
	lwz 10,12(1)
	lwz 10,0(10)
	srwi 7,9,31
	srawi 8,10,31
	subfc 9,9,10
	adde 9,7,8
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	b .L450
.L447:
	li 9,-1
	b .L450
.L446:
	li 9,0
.L450:
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE63:
	.size	wmemcmp,.-wmemcmp
	.align 2
	.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB64:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	lwz 9,24(1)
	stw 9,8(1)
	b .L453
.L454:
	lwz 10,28(1)
	addi 9,10,4
	stw 9,28(1)
	lwz 9,24(1)
	addi 8,9,4
	stw 8,24(1)
	lwz 10,0(10)
	stw 10,0(9)
.L453:
	lwz 9,32(1)
	addi 10,9,-1
	stw 10,32(1)
	cmpwi 0,9,0
	bne 0,.L454
	lwz 9,8(1)
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE64:
	.size	wmemcpy,.-wmemcpy
	.align 2
	.globl wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB65:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	lwz 9,24(1)
	stw 9,8(1)
	lwz 10,24(1)
	lwz 9,28(1)
	cmpw 0,10,9
	bne 0,.L458
	lwz 9,24(1)
	b .L459
.L458:
	lwz 10,24(1)
	lwz 9,28(1)
	subf 10,9,10
	lwz 9,32(1)
	slwi 9,9,2
	cmplw 0,10,9
	bge 0,.L464
	b .L461
.L462:
	lwz 9,32(1)
	slwi 9,9,2
	lwz 10,28(1)
	add 10,10,9
	lwz 9,32(1)
	slwi 9,9,2
	lwz 8,24(1)
	add 9,8,9
	lwz 10,0(10)
	stw 10,0(9)
.L461:
	lwz 9,32(1)
	addi 10,9,-1
	stw 10,32(1)
	cmpwi 0,9,0
	bne 0,.L462
	b .L463
.L465:
	lwz 10,28(1)
	addi 9,10,4
	stw 9,28(1)
	lwz 9,24(1)
	addi 8,9,4
	stw 8,24(1)
	lwz 10,0(10)
	stw 10,0(9)
.L464:
	lwz 9,32(1)
	addi 10,9,-1
	stw 10,32(1)
	cmpwi 0,9,0
	bne 0,.L465
.L463:
	lwz 9,8(1)
.L459:
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE65:
	.size	wmemmove,.-wmemmove
	.align 2
	.globl wmemset
	.type	wmemset, @function
wmemset:
.LFB66:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	lwz 9,24(1)
	stw 9,8(1)
	b .L468
.L469:
	lwz 9,24(1)
	addi 10,9,4
	stw 10,24(1)
	lwz 10,28(1)
	stw 10,0(9)
.L468:
	lwz 9,32(1)
	addi 10,9,-1
	stw 10,32(1)
	cmpwi 0,9,0
	bne 0,.L469
	lwz 9,8(1)
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE66:
	.size	wmemset,.-wmemset
	.align 2
	.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB67:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	lwz 9,24(1)
	stw 9,8(1)
	lwz 9,28(1)
	stw 9,12(1)
	lwz 10,8(1)
	lwz 9,12(1)
	cmplw 0,10,9
	bge 0,.L473
	lwz 10,8(1)
	lwz 9,32(1)
	add 9,10,9
	stw 9,8(1)
	lwz 10,12(1)
	lwz 9,32(1)
	add 9,10,9
	stw 9,12(1)
	b .L474
.L475:
	lwz 9,8(1)
	addi 9,9,-1
	stw 9,8(1)
	lwz 9,12(1)
	addi 9,9,-1
	stw 9,12(1)
	lwz 9,8(1)
	lbz 10,0(9)
	lwz 9,12(1)
	stb 10,0(9)
	lwz 9,32(1)
	addi 9,9,-1
	stw 9,32(1)
.L474:
	lwz 9,32(1)
	cmpwi 0,9,0
	bne 0,.L475
	b .L479
.L473:
	lwz 10,8(1)
	lwz 9,12(1)
	cmpw 0,10,9
	beq 0,.L479
	b .L477
.L478:
	lwz 10,8(1)
	addi 9,10,1
	stw 9,8(1)
	lwz 9,12(1)
	addi 8,9,1
	stw 8,12(1)
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,32(1)
	addi 9,9,-1
	stw 9,32(1)
.L477:
	lwz 9,32(1)
	cmpwi 0,9,0
	bne 0,.L478
.L479:
	nop
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE67:
	.size	bcopy,.-bcopy
	.align 2
	.globl rotl64
	.type	rotl64, @function
rotl64:
.LFB68:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,8(1)
	stw 4,12(1)
	stw 5,16(1)
	lwz 8,8(1)
	lwz 9,12(1)
	lwz 10,16(1)
	addi 10,10,-32
	cmpwi 0,10,0
	blt 0,.L482
	slw 10,9,10
	li 6,0
	b .L483
.L482:
	srwi 7,9,1
	lwz 10,16(1)
	subfic 10,10,31
	srw 7,7,10
	lwz 10,16(1)
	slw 10,8,10
	or 10,7,10
	lwz 7,16(1)
	slw 6,9,7
.L483:
	lwz 7,16(1)
	neg 7,7
	rlwinm 7,7,0,26,31
	addi 7,7,-32
	cmpwi 0,7,0
	blt 0,.L484
	srw 9,8,7
	li 8,0
	b .L485
.L484:
	slwi 5,8,1
	lwz 7,16(1)
	neg 7,7
	rlwinm 7,7,0,26,31
	subfic 7,7,31
	slw 5,5,7
	lwz 7,16(1)
	neg 7,7
	rlwinm 7,7,0,26,31
	srw 9,9,7
	or 9,5,9
	lwz 7,16(1)
	neg 7,7
	rlwinm 7,7,0,26,31
	srw 8,8,7
.L485:
	or 10,10,8
	or 9,6,9
	mr 8,10
	mr 10,8
	mr 3,10
	mr 4,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE68:
	.size	rotl64,.-rotl64
	.align 2
	.globl rotr64
	.type	rotr64, @function
rotr64:
.LFB69:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,8(1)
	stw 4,12(1)
	stw 5,16(1)
	lwz 9,8(1)
	lwz 8,12(1)
	lwz 10,16(1)
	addi 10,10,-32
	cmpwi 0,10,0
	blt 0,.L489
	srw 10,9,10
	li 6,0
	b .L490
.L489:
	slwi 7,9,1
	lwz 10,16(1)
	subfic 10,10,31
	slw 7,7,10
	lwz 10,16(1)
	srw 10,8,10
	or 10,7,10
	lwz 7,16(1)
	srw 6,9,7
.L490:
	lwz 7,16(1)
	neg 7,7
	rlwinm 7,7,0,26,31
	addi 7,7,-32
	cmpwi 0,7,0
	blt 0,.L491
	slw 9,8,7
	li 8,0
	b .L492
.L491:
	srwi 5,8,1
	lwz 7,16(1)
	neg 7,7
	rlwinm 7,7,0,26,31
	subfic 7,7,31
	srw 5,5,7
	lwz 7,16(1)
	neg 7,7
	rlwinm 7,7,0,26,31
	slw 9,9,7
	or 9,5,9
	lwz 7,16(1)
	neg 7,7
	rlwinm 7,7,0,26,31
	slw 8,8,7
.L492:
	or 9,6,9
	or 10,10,8
	mr 8,10
	mr 10,9
	mr 9,8
	mr 3,10
	mr 4,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE69:
	.size	rotr64,.-rotr64
	.align 2
	.globl rotl32
	.type	rotl32, @function
rotl32:
.LFB70:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	stw 4,12(1)
	lwz 10,8(1)
	lwz 9,12(1)
	rotlw 9,10,9
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE70:
	.size	rotl32,.-rotl32
	.align 2
	.globl rotr32
	.type	rotr32, @function
rotr32:
.LFB71:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	stw 4,12(1)
	lwz 9,12(1)
	subfic 9,9,32
	lwz 10,8(1)
	rotlw 9,10,9
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE71:
	.size	rotr32,.-rotr32
	.align 2
	.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB72:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	stw 4,12(1)
	lwz 10,8(1)
	lwz 9,12(1)
	rotlw 9,10,9
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE72:
	.size	rotl_sz,.-rotl_sz
	.align 2
	.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB73:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	stw 4,12(1)
	lwz 9,12(1)
	subfic 9,9,32
	lwz 10,8(1)
	rotlw 9,10,9
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE73:
	.size	rotr_sz,.-rotr_sz
	.align 2
	.globl rotl16
	.type	rotl16, @function
rotl16:
.LFB74:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mr 9,3
	stw 4,12(1)
	sth 9,8(1)
	lhz 10,8(1)
	lwz 9,12(1)
	slw 9,10,9
	mr 8,9
	lhz 10,8(1)
	lwz 9,12(1)
	subfic 9,9,16
	srw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xffff
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE74:
	.size	rotl16,.-rotl16
	.align 2
	.globl rotr16
	.type	rotr16, @function
rotr16:
.LFB75:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mr 9,3
	stw 4,12(1)
	sth 9,8(1)
	lhz 10,8(1)
	lwz 9,12(1)
	srw 9,10,9
	mr 8,9
	lhz 10,8(1)
	lwz 9,12(1)
	subfic 9,9,16
	slw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xffff
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE75:
	.size	rotr16,.-rotr16
	.align 2
	.globl rotl8
	.type	rotl8, @function
rotl8:
.LFB76:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mr 9,3
	stw 4,12(1)
	stb 9,8(1)
	lbz 10,8(1)
	lwz 9,12(1)
	slw 9,10,9
	mr 8,9
	lbz 10,8(1)
	lwz 9,12(1)
	subfic 9,9,8
	srw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE76:
	.size	rotl8,.-rotl8
	.align 2
	.globl rotr8
	.type	rotr8, @function
rotr8:
.LFB77:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mr 9,3
	stw 4,12(1)
	stb 9,8(1)
	lbz 10,8(1)
	lwz 9,12(1)
	srw 9,10,9
	mr 8,9
	lbz 10,8(1)
	lwz 9,12(1)
	subfic 9,9,8
	slw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE77:
	.size	rotr8,.-rotr8
	.align 2
	.globl bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB78:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mr 9,3
	sth 9,24(1)
	li 9,255
	stw 9,8(1)
	lhz 10,24(1)
	lwz 9,8(1)
	slwi 9,9,8
	and 9,10,9
	srwi 9,9,8
	mr 10,9
	lwz 9,8(1)
	mr 8,9
	lhz 9,24(1)
	and 9,9,8
	slwi 9,9,8
	or 9,10,9
	rlwinm 9,9,0,0xffff
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE78:
	.size	bswap_16,.-bswap_16
	.align 2
	.globl bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB79:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	li 9,255
	stw 9,8(1)
	lwz 9,8(1)
	slwi 10,9,24
	lwz 9,24(1)
	and 9,10,9
	srwi 10,9,24
	lwz 9,8(1)
	slwi 8,9,16
	lwz 9,24(1)
	and 9,8,9
	srwi 9,9,8
	or 10,10,9
	lwz 9,8(1)
	slwi 8,9,8
	lwz 9,24(1)
	and 9,8,9
	slwi 9,9,8
	or 10,10,9
	lwz 8,24(1)
	lwz 9,8(1)
	and 9,8,9
	slwi 9,9,24
	or 9,10,9
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE79:
	.size	bswap_32,.-bswap_32
	.align 2
	.globl bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB80:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	stw 4,28(1)
	li 10,0
	li 11,255
	stw 10,8(1)
	stw 11,12(1)
	lwz 9,12(1)
	slwi 10,9,24
	lwz 9,24(1)
	and 9,10,9
	srwi 10,9,24
	li 7,0
	lwz 9,12(1)
	slwi 8,9,16
	lwz 9,24(1)
	and 9,8,9
	srwi 9,9,8
	li 8,0
	or 7,7,8
	or 8,10,9
	lwz 9,12(1)
	slwi 5,9,8
	li 6,0
	lwz 10,24(1)
	lwz 9,28(1)
	and 10,5,10
	and 9,6,9
	slwi 6,10,8
	srwi 9,9,24
	or 9,6,9
	srwi 10,10,24
	or 7,7,10
	or 8,8,9
	lwz 9,12(1)
	slwi 5,9,0
	li 6,0
	lwz 10,24(1)
	lwz 9,28(1)
	and 10,5,10
	and 9,6,9
	slwi 6,10,24
	srwi 9,9,8
	or 9,6,9
	srwi 10,10,8
	or 7,7,10
	or 8,8,9
	lwz 9,12(1)
	srwi 10,9,8
	lwz 9,8(1)
	slwi 9,9,24
	or 9,10,9
	lwz 10,12(1)
	slwi 6,10,24
	lwz 5,24(1)
	lwz 10,28(1)
	and 9,9,5
	and 10,6,10
	srwi 6,10,24
	slwi 9,9,8
	or 9,6,9
	slwi 10,10,8
	or 7,7,9
	or 8,8,10
	lwz 9,12(1)
	srwi 10,9,16
	lwz 9,8(1)
	slwi 9,9,16
	or 9,10,9
	lwz 10,12(1)
	slwi 6,10,16
	lwz 5,24(1)
	lwz 10,28(1)
	and 9,9,5
	and 10,6,10
	srwi 6,10,8
	slwi 9,9,24
	or 9,6,9
	slwi 10,10,24
	or 7,7,9
	or 10,8,10
	lwz 9,12(1)
	slwi 8,9,8
	lwz 9,28(1)
	and 9,8,9
	slwi 8,9,8
	li 9,0
	or 7,7,8
	or 10,10,9
	lwz 8,28(1)
	lwz 9,12(1)
	and 9,8,9
	slwi 8,9,24
	li 9,0
	or 8,7,8
	or 9,10,9
	mr 10,8
	mr 3,10
	mr 4,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE80:
	.size	bswap_64,.-bswap_64
	.align 2
	.globl ffs
	.type	ffs, @function
ffs:
.LFB81:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	li 9,0
	stw 9,8(1)
	b .L529
.L532:
	lwz 10,24(1)
	lwz 9,8(1)
	srw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L530
	lwz 9,8(1)
	addi 9,9,1
	b .L531
.L530:
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
.L529:
	lwz 9,8(1)
	cmplwi 0,9,31
	ble 0,.L532
	li 9,0
.L531:
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE81:
	.size	ffs,.-ffs
	.align 2
	.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB82:
	.cfi_startproc
	cmpwi 0,3,0
	bne 0,.L535
	li 9,0
	b .L540
.L535:
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 9,3
	li 31,1
	b .L537
.L538:
	srawi 9,9,1
	addi 31,31,1
.L537:
	rlwinm 10,9,0,31,31
	cmpwi 0,10,0
	beq 0,.L538
	mr 9,31
	mr 3,9
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	blr
.L540:
	mr 3,9
	blr
	.cfi_endproc
.LFE82:
	.size	libiberty_ffs,.-libiberty_ffs
	.align 2
	.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB83:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	.cfi_offset 65, 4
	stw 3,8(1)
	lis 4,0xff7f
	ori 4,4,0xffff
	lwz 3,8(1)
	bl __ltsf2
	mr 9,3
	cmpwi 0,3,0
	blt 0,.L543
	lis 4,0x7f7f
	ori 4,4,0xffff
	lwz 3,8(1)
	bl __gtsf2
	mr 9,3
	cmpwi 0,9,0
	ble 0,.L548
.L543:
	li 9,1
	b .L547
.L548:
	li 9,0
.L547:
	mr 3,9
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE83:
	.size	gl_isinff,.-gl_isinff
	.align 2
	.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB84:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	.cfi_offset 65, 4
	stw 3,8(1)
	stw 4,12(1)
	lis 5,0xffef
	ori 5,5,0xffff
	li 6,-1
	lwz 3,8(1)
	lwz 4,12(1)
	bl __ltdf2
	mr 9,3
	cmpwi 0,3,0
	blt 0,.L551
	lis 5,0x7fef
	ori 5,5,0xffff
	li 6,-1
	lwz 3,8(1)
	lwz 4,12(1)
	bl __gtdf2
	mr 9,3
	cmpwi 0,9,0
	ble 0,.L556
.L551:
	li 9,1
	b .L555
.L556:
	li 9,0
.L555:
	mr 3,9
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE84:
	.size	gl_isinfd,.-gl_isinfd
	.align 2
	.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB85:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	.cfi_offset 65, 4
	addi 9,1,16
	stw 3,0(9)
	stw 4,4(9)
	stw 5,8(9)
	stw 6,12(9)
	addi 6,1,16
	lis 7,0xffef
	ori 7,7,0xffff
	li 8,-1
	lis 9,0xfc8f
	ori 9,9,0xffff
	li 10,-2
	lwz 3,0(6)
	lwz 4,4(6)
	lwz 5,8(6)
	lwz 6,12(6)
	bl __gcc_qlt
	mr 9,3
	cmpwi 0,3,0
	blt 0,.L559
	addi 6,1,16
	lis 7,0x7fef
	ori 7,7,0xffff
	li 8,-1
	lis 9,0x7c8f
	ori 9,9,0xffff
	li 10,-2
	lwz 3,0(6)
	lwz 4,4(6)
	lwz 5,8(6)
	lwz 6,12(6)
	bl __gcc_qgt
	mr 9,3
	cmpwi 0,9,0
	ble 0,.L564
.L559:
	li 9,1
	b .L563
.L564:
	li 9,0
.L563:
	mr 3,9
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE85:
	.size	gl_isinfl,.-gl_isinfl
	.align 2
	.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB86:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	.cfi_offset 65, 4
	stw 3,8(1)
	stw 4,12(1)
	lwz 3,12(1)
	bl __floatsidf
	mr 11,4
	mr 10,3
	mr 3,10
	mr 4,11
	bl __gcc_dtoq
	mr 11,6
	mr 10,5
	mr 9,4
	mr 8,3
	lwz 7,8(1)
	stw 8,0(7)
	stw 9,4(7)
	stw 10,8(7)
	stw 11,12(7)
	nop
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE86:
	.size	_Qp_itoq,.-_Qp_itoq
	.align 2
	.globl ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB87:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	.cfi_offset 65, 4
	stw 3,24(1)
	stw 4,28(1)
	lwz 4,24(1)
	lwz 3,24(1)
	bl __unordsf2
	mr 9,3
	cmpwi 0,3,0
	bne 0,.L569
	lwz 9,24(1)
	mr 4,9
	mr 3,9
	bl __addsf3
	mr 9,3
	mr 4,9
	lwz 3,24(1)
	bl __nesf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L569
	lwz 9,28(1)
	cmpwi 0,9,0
	bge 0,.L571
	lis 9,0x3f00
	b .L572
.L571:
	lis 9,0x4000
.L572:
	stw 9,8(1)
.L575:
	lwz 9,28(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L573
	lwz 4,8(1)
	lwz 3,24(1)
	bl __mulsf3
	mr 9,3
	stw 9,24(1)
.L573:
	lwz 9,28(1)
	srawi 9,9,1
	addze 9,9
	stw 9,28(1)
	lwz 9,28(1)
	cmpwi 0,9,0
	beq 0,.L578
	lwz 4,8(1)
	lwz 3,8(1)
	bl __mulsf3
	mr 9,3
	stw 9,8(1)
	b .L575
.L578:
	nop
.L569:
	lwz 9,24(1)
	mr 3,9
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE87:
	.size	ldexpf,.-ldexpf
	.align 2
	.globl ldexp
	.type	ldexp, @function
ldexp:
.LFB88:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	.cfi_offset 65, 4
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	lwz 5,24(1)
	lwz 6,28(1)
	lwz 3,24(1)
	lwz 4,28(1)
	bl __unorddf2
	mr 9,3
	cmpwi 0,3,0
	bne 0,.L581
	lwz 10,24(1)
	lwz 11,28(1)
	mr 5,10
	mr 6,11
	mr 3,10
	mr 4,11
	bl __adddf3
	mr 11,4
	mr 10,3
	mr 5,10
	mr 6,11
	lwz 3,24(1)
	lwz 4,28(1)
	bl __nedf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L581
	lwz 9,32(1)
	cmpwi 0,9,0
	bge 0,.L583
	lis 10,0x3fe0
	li 11,0
	b .L584
.L583:
	lis 10,0x4000
	li 11,0
.L584:
	stw 10,8(1)
	stw 11,12(1)
.L587:
	lwz 9,32(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L585
	lwz 5,8(1)
	lwz 6,12(1)
	lwz 3,24(1)
	lwz 4,28(1)
	bl __muldf3
	mr 11,4
	mr 10,3
	stw 10,24(1)
	stw 11,28(1)
.L585:
	lwz 9,32(1)
	srawi 9,9,1
	addze 9,9
	stw 9,32(1)
	lwz 9,32(1)
	cmpwi 0,9,0
	beq 0,.L590
	lwz 5,8(1)
	lwz 6,12(1)
	lwz 3,8(1)
	lwz 4,12(1)
	bl __muldf3
	mr 11,4
	mr 10,3
	stw 10,8(1)
	stw 11,12(1)
	b .L587
.L590:
	nop
.L581:
	lwz 10,24(1)
	lwz 11,28(1)
	mr 3,10
	mr 4,11
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE88:
	.size	ldexp,.-ldexp
	.align 2
	.globl ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB89:
	.cfi_startproc
	stwu 1,-80(1)
	.cfi_def_cfa_offset 80
	mflr 0
	stw 0,84(1)
	.cfi_offset 65, 4
	addi 9,1,48
	stw 3,0(9)
	stw 4,4(9)
	stw 5,8(9)
	stw 6,12(9)
	stw 7,40(1)
	addi 9,1,48
	lwz 3,0(9)
	lwz 4,4(9)
	lwz 5,8(9)
	lwz 6,12(9)
	bl __gcc_qtod
	mr 11,4
	mr 10,3
	mr 6,4
	mr 5,3
	bl __unorddf2
	mr 9,3
	cmpwi 0,3,0
	bne 0,.L593
	stw 28,64(1)
	.cfi_offset 28, -16
	stw 29,68(1)
	.cfi_offset 29, -12
	stw 30,72(1)
	.cfi_offset 30, -8
	stw 31,76(1)
	.cfi_offset 31, -4
	addi 9,1,48
	lwz 28,0(9)
	lwz 29,4(9)
	lwz 30,8(9)
	lwz 31,12(9)
	mr 7,28
	mr 8,29
	mr 9,30
	mr 10,31
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,31
	bl __gcc_qadd
	mr 11,6
	mr 10,5
	mr 9,4
	mr 8,3
	addi 6,1,48
	mr 7,8
	mr 8,9
	mr 9,10
	mr 10,11
	lwz 3,0(6)
	lwz 4,4(6)
	lwz 5,8(6)
	lwz 6,12(6)
	bl __gcc_qne
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L604
	lwz 9,40(1)
	cmpwi 0,9,0
	bge 0,.L595
	lis 8,0x3fe0
	li 9,0
	li 10,0
	li 11,0
	b .L596
.L595:
	lis 8,0x4000
	li 9,0
	li 10,0
	li 11,0
.L596:
	addi 7,1,16
	stw 8,0(7)
	stw 9,4(7)
	stw 10,8(7)
	stw 11,12(7)
.L599:
	lwz 9,40(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L597
	addi 9,1,16
	addi 6,1,48
	lwz 10,12(9)
	lwz 7,0(9)
	lwz 8,4(9)
	lwz 9,8(9)
	lwz 3,0(6)
	lwz 4,4(6)
	lwz 5,8(6)
	lwz 6,12(6)
	bl __gcc_qmul
	mr 11,6
	mr 10,5
	mr 9,4
	mr 8,3
	addi 7,1,48
	stw 8,0(7)
	stw 9,4(7)
	stw 10,8(7)
	stw 11,12(7)
.L597:
	lwz 9,40(1)
	srawi 9,9,1
	addze 9,9
	stw 9,40(1)
	lwz 9,40(1)
	cmpwi 0,9,0
	beq 0,.L602
	addi 9,1,16
	addi 6,1,16
	lwz 10,12(9)
	lwz 7,0(9)
	lwz 8,4(9)
	lwz 9,8(9)
	lwz 3,0(6)
	lwz 4,4(6)
	lwz 5,8(6)
	lwz 6,12(6)
	bl __gcc_qmul
	mr 11,6
	mr 10,5
	mr 9,4
	mr 8,3
	addi 7,1,16
	stw 8,0(7)
	stw 9,4(7)
	stw 10,8(7)
	stw 11,12(7)
	b .L599
.L602:
	nop
	lwz 28,64(1)
	.cfi_remember_state
	.cfi_restore 28
	lwz 29,68(1)
	.cfi_restore 29
	lwz 30,72(1)
	.cfi_restore 30
	lwz 31,76(1)
	.cfi_restore 31
	b .L593
.L604:
	.cfi_restore_state
	lwz 28,64(1)
	.cfi_restore 28
	lwz 29,68(1)
	.cfi_restore 29
	lwz 30,72(1)
	.cfi_restore 30
	lwz 31,76(1)
	.cfi_restore 31
.L593:
	addi 9,1,48
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	mr 3,8
	mr 4,9
	mr 5,10
	mr 6,11
	lwz 0,84(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,80
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE89:
	.size	ldexpl,.-ldexpl
	.align 2
	.globl memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	lwz 9,28(1)
	stw 9,8(1)
	lwz 9,24(1)
	stw 9,12(1)
	b .L606
.L607:
	lwz 9,8(1)
	addi 10,9,1
	stw 10,8(1)
	lbz 8,0(9)
	lwz 9,12(1)
	addi 10,9,1
	stw 10,12(1)
	lbz 10,0(9)
	xor 10,8,10
	stb 10,0(9)
	lwz 9,32(1)
	addi 9,9,-1
	stw 9,32(1)
.L606:
	lwz 9,32(1)
	cmpwi 0,9,0
	bne 0,.L607
	lwz 9,24(1)
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE90:
	.size	memxor,.-memxor
	.align 2
	.globl strncat
	.type	strncat, @function
strncat:
.LFB91:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	.cfi_offset 65, 4
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	lwz 3,24(1)
	bl strlen
	mr 10,3
	lwz 9,24(1)
	add 9,9,3
	stw 9,8(1)
	b .L611
.L613:
	lwz 9,28(1)
	addi 9,9,1
	stw 9,28(1)
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
	lwz 9,32(1)
	addi 9,9,-1
	stw 9,32(1)
.L611:
	lwz 9,32(1)
	cmpwi 0,9,0
	beq 0,.L612
	lwz 9,28(1)
	lbz 10,0(9)
	lwz 9,8(1)
	stb 10,0(9)
	lwz 9,8(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L613
.L612:
	lwz 9,32(1)
	cmpwi 0,9,0
	bne 0,.L614
	lwz 9,8(1)
	li 10,0
	stb 10,0(9)
.L614:
	lwz 9,24(1)
	mr 3,9
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE91:
	.size	strncat,.-strncat
	.align 2
	.globl strnlen
	.type	strnlen, @function
strnlen:
.LFB92:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	stw 4,28(1)
	li 9,0
	stw 9,8(1)
	b .L618
.L623:
	nop
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
.L618:
	lwz 10,8(1)
	lwz 9,28(1)
	cmplw 0,10,9
	bge 0,.L619
	lwz 10,24(1)
	lwz 9,8(1)
	add 9,10,9
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L623
.L619:
	lwz 9,8(1)
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE92:
	.size	strnlen,.-strnlen
	.align 2
	.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	stw 4,28(1)
	b .L626
.L630:
	lwz 9,28(1)
	stw 9,8(1)
	b .L627
.L629:
	lwz 9,8(1)
	addi 10,9,1
	stw 10,8(1)
	lbz 10,0(9)
	lwz 9,24(1)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	bne 0,.L627
	lwz 9,24(1)
	b .L628
.L627:
	lwz 9,8(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L629
	lwz 9,24(1)
	addi 9,9,1
	stw 9,24(1)
.L626:
	lwz 9,24(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L630
	li 9,0
.L628:
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE93:
	.size	strpbrk,.-strpbrk
	.align 2
	.globl strrchr
	.type	strrchr, @function
strrchr:
.LFB94:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mr 9,3
	stw 4,24(1)
	li 10,0
	stw 10,8(1)
.L634:
	lbz 10,0(9)
	rlwinm 10,10,0,0xff
	lwz 8,24(1)
	cmpw 0,8,10
	bne 0,.L633
	stw 9,8(1)
.L633:
	mr 10,9
	addi 9,10,1
	lbz 10,0(10)
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	bne 0,.L634
	lwz 9,8(1)
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE94:
	.size	strrchr,.-strrchr
	.align 2
	.globl strstr
	.type	strstr, @function
strstr:
.LFB95:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	.cfi_offset 65, 4
	stw 3,24(1)
	stw 4,28(1)
	lwz 9,24(1)
	stw 9,8(1)
	lwz 3,28(1)
	bl strlen
	stw 3,12(1)
	lwz 9,12(1)
	cmpwi 0,9,0
	bne 0,.L640
	lwz 9,24(1)
	b .L639
.L642:
	lwz 5,12(1)
	lwz 4,28(1)
	lwz 3,8(1)
	bl strncmp
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L641
	lwz 9,8(1)
	b .L639
.L641:
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
.L640:
	lwz 9,28(1)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	mr 4,9
	lwz 3,8(1)
	bl strchr
	stw 3,8(1)
	lwz 9,8(1)
	cmpwi 0,9,0
	bne 0,.L642
	li 9,0
.L639:
	mr 3,9
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE95:
	.size	strstr,.-strstr
	.align 2
	.globl copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	stw 30,24(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	stw 3,8(1)
	stw 4,12(1)
	stw 5,16(1)
	stw 6,20(1)
	li 5,0
	li 6,0
	lwz 3,8(1)
	lwz 4,12(1)
	bl __ltdf2
	mr 9,3
	cmpwi 0,3,0
	bge 0,.L645
	li 5,0
	li 6,0
	lwz 3,16(1)
	lwz 4,20(1)
	bl __gtdf2
	mr 9,3
	cmpwi 0,9,0
	bgt 0,.L647
.L645:
	li 5,0
	li 6,0
	lwz 3,8(1)
	lwz 4,12(1)
	bl __gtdf2
	mr 9,3
	cmpwi 0,9,0
	ble 0,.L648
	li 5,0
	li 6,0
	lwz 3,16(1)
	lwz 4,20(1)
	bl __ltdf2
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L648
.L647:
	lwz 9,8(1)
	xoris 30,9,0x8000
	lwz 31,12(1)
	b .L651
.L648:
	lwz 30,8(1)
	lwz 31,12(1)
.L651:
	mr 10,30
	mr 11,31
	mr 3,10
	mr 4,11
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE96:
	.size	copysign,.-copysign
	.align 2
	.globl memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	stw 6,36(1)
	lwz 10,28(1)
	lwz 9,36(1)
	subf 9,9,10
	lwz 10,24(1)
	add 9,10,9
	stw 9,12(1)
	lwz 9,36(1)
	cmpwi 0,9,0
	bne 0,.L656
	lwz 9,24(1)
	b .L657
.L656:
	lwz 10,28(1)
	lwz 9,36(1)
	subfc 9,9,10
	subfe 9,9,9
	neg 9,9
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L658
	li 9,0
	b .L657
.L658:
	mflr 0
	.cfi_register 65, 0
	stw 0,52(1)
	.cfi_offset 65, 4
	lwz 9,24(1)
	stw 9,8(1)
	b .L659
.L661:
	lwz 9,8(1)
	lbz 10,0(9)
	lwz 9,32(1)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	bne 0,.L660
	lwz 9,8(1)
	addi 10,9,1
	lwz 9,32(1)
	addi 8,9,1
	lwz 9,36(1)
	addi 9,9,-1
	mr 5,9
	mr 4,8
	mr 3,10
	bl memcmp
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L660
	lwz 9,8(1)
	lwz 0,52(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	b .L657
.L660:
	.cfi_restore_state
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
.L659:
	lwz 10,8(1)
	lwz 9,12(1)
	cmplw 0,10,9
	ble 0,.L661
	li 9,0
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
.L657:
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE97:
	.size	memmem,.-memmem
	.align 2
	.globl mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB98:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	.cfi_offset 65, 4
	stw 3,8(1)
	stw 4,12(1)
	stw 5,16(1)
	lwz 5,16(1)
	lwz 4,12(1)
	lwz 3,8(1)
	bl memcpy
	mr 10,3
	lwz 9,16(1)
	add 9,10,9
	mr 3,9
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE98:
	.size	mempcpy,.-mempcpy
	.align 2
	.globl frexp
	.type	frexp, @function
frexp:
.LFB99:
	.cfi_startproc
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mflr 0
	stw 0,68(1)
	.cfi_offset 65, 4
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	li 9,0
	stw 9,12(1)
	li 9,0
	stw 9,8(1)
	li 5,0
	li 6,0
	lwz 3,24(1)
	lwz 4,28(1)
	bl __ltdf2
	mr 9,3
	cmpwi 0,3,0
	bge 0,.L667
	stw 28,48(1)
	.cfi_offset 28, -16
	stw 29,52(1)
	.cfi_offset 29, -12
	lwz 9,24(1)
	xoris 28,9,0x8000
	lwz 29,28(1)
	stw 28,24(1)
	stw 29,28(1)
	li 9,1
	stw 9,8(1)
	lwz 28,48(1)
	.cfi_restore 28
	lwz 29,52(1)
	.cfi_restore 29
.L667:
	lis 5,0x3ff0
	li 6,0
	lwz 3,24(1)
	lwz 4,28(1)
	bl __gedf2
	mr 9,3
	cmpwi 0,9,0
	blt 0,.L684
	b .L671
.L672:
	lwz 9,12(1)
	addi 9,9,1
	stw 9,12(1)
	lis 5,0x4000
	li 6,0
	lwz 3,24(1)
	lwz 4,28(1)
	bl __divdf3
	mr 11,4
	mr 10,3
	stw 10,24(1)
	stw 11,28(1)
.L671:
	lis 5,0x3ff0
	li 6,0
	lwz 3,24(1)
	lwz 4,28(1)
	bl __gedf2
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L672
	b .L673
.L684:
	lis 5,0x3fe0
	li 6,0
	lwz 3,24(1)
	lwz 4,28(1)
	bl __ltdf2
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L673
	li 5,0
	li 6,0
	lwz 3,24(1)
	lwz 4,28(1)
	bl __nedf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L673
	b .L676
.L677:
	lwz 9,12(1)
	addi 9,9,-1
	stw 9,12(1)
	lwz 10,24(1)
	lwz 11,28(1)
	mr 5,10
	mr 6,11
	mr 3,10
	mr 4,11
	bl __adddf3
	mr 11,4
	mr 10,3
	stw 10,24(1)
	stw 11,28(1)
.L676:
	lis 5,0x3fe0
	li 6,0
	lwz 3,24(1)
	lwz 4,28(1)
	bl __ltdf2
	mr 9,3
	cmpwi 0,9,0
	blt 0,.L677
.L673:
	lwz 9,32(1)
	lwz 10,12(1)
	stw 10,0(9)
	lwz 9,8(1)
	cmpwi 0,9,0
	beq 0,.L678
	stw 30,56(1)
	.cfi_offset 30, -8
	stw 31,60(1)
	.cfi_offset 31, -4
	lwz 9,24(1)
	xoris 30,9,0x8000
	lwz 31,28(1)
	stw 30,24(1)
	stw 31,28(1)
	lwz 30,56(1)
	.cfi_restore 30
	lwz 31,60(1)
	.cfi_restore 31
.L678:
	lwz 10,24(1)
	lwz 11,28(1)
	mr 3,10
	mr 4,11
	lwz 0,68(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,64
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE99:
	.size	frexp,.-frexp
	.align 2
	.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	stw 6,36(1)
	li 10,0
	li 11,0
	stw 10,8(1)
	stw 11,12(1)
	lwz 10,24(1)
	lwz 11,28(1)
	stw 10,16(1)
	stw 11,20(1)
	b .L687
.L690:
	lwz 9,20(1)
	li 8,0
	rlwinm 10,9,0,31,31
	mr 9,8
	or 9,9,10
	cmpwi 0,9,0
	beq 0,.L688
	lwz 8,8(1)
	lwz 9,12(1)
	lwz 10,32(1)
	lwz 7,36(1)
	addc 9,9,7
	adde 10,8,10
	stw 10,8(1)
	stw 9,12(1)
.L688:
	lwz 9,36(1)
	srwi 10,9,31
	lwz 9,32(1)
	slwi 9,9,1
	or 9,10,9
	lwz 10,36(1)
	slwi 10,10,1
	stw 9,32(1)
	stw 10,36(1)
	lwz 9,16(1)
	slwi 10,9,31
	lwz 9,20(1)
	srwi 9,9,1
	or 9,10,9
	lwz 10,16(1)
	srwi 10,10,1
	stw 10,16(1)
	stw 9,20(1)
.L687:
	lwz 9,16(1)
	lwz 10,20(1)
	or 9,9,10
	cmpwi 0,9,0
	bne 0,.L690
	lwz 10,8(1)
	lwz 9,12(1)
	mr 3,10
	mr 4,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE100:
	.size	__muldi3,.-__muldi3
	.align 2
	.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB101:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	li 9,1
	stw 9,8(1)
	li 9,0
	stw 9,12(1)
	b .L694
.L696:
	lwz 9,28(1)
	slwi 9,9,1
	stw 9,28(1)
	lwz 9,8(1)
	slwi 9,9,1
	stw 9,8(1)
.L694:
	lwz 10,28(1)
	lwz 9,24(1)
	cmplw 0,10,9
	bge 0,.L697
	lwz 9,8(1)
	cmpwi 0,9,0
	beq 0,.L697
	lwz 9,28(1)
	cmpwi 0,9,0
	bge 0,.L696
	b .L697
.L699:
	lwz 10,24(1)
	lwz 9,28(1)
	cmplw 0,10,9
	blt 0,.L698
	lwz 10,24(1)
	lwz 9,28(1)
	subf 9,9,10
	stw 9,24(1)
	lwz 10,12(1)
	lwz 9,8(1)
	or 9,10,9
	stw 9,12(1)
.L698:
	lwz 9,8(1)
	srwi 9,9,1
	stw 9,8(1)
	lwz 9,28(1)
	srwi 9,9,1
	stw 9,28(1)
.L697:
	lwz 9,8(1)
	cmpwi 0,9,0
	bne 0,.L699
	lwz 9,32(1)
	cmpwi 0,9,0
	beq 0,.L700
	lwz 9,24(1)
	b .L701
.L700:
	lwz 9,12(1)
.L701:
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE101:
	.size	udivmodsi4,.-udivmodsi4
	.align 2
	.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mr 9,3
	stb 3,24(1)
	lbz 9,24(1)
	cmpwi 0,9,0
	bne 0,.L704
	li 9,7
	b .L705
.L704:
	lbz 9,24(1)
	slwi 9,9,8
	cntlzw 9,9
	stw 9,8(1)
	lwz 9,8(1)
	addi 9,9,-1
.L705:
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE102:
	.size	__clrsbqi2,.-__clrsbqi2
	.align 2
	.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB103:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	stw 4,28(1)
	lwz 9,24(1)
	cmpwi 0,9,0
	bge 0,.L708
	lwz 10,24(1)
	lwz 9,28(1)
	not 10,10
	not 9,9
	stw 10,24(1)
	stw 9,28(1)
.L708:
	lwz 9,24(1)
	lwz 10,28(1)
	or 9,9,10
	cmpwi 0,9,0
	bne 0,.L710
	li 9,63
	b .L711
.L710:
	lwz 9,24(1)
	lwz 10,28(1)
	cmpwi 0,9,0
	beq 0,.L712
	cntlzw 9,9
	b .L713
.L712:
	cntlzw 9,10
	addi 9,9,32
.L713:
	stw 9,8(1)
	lwz 9,8(1)
	addi 9,9,-1
.L711:
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE103:
	.size	__clrsbdi2,.-__clrsbdi2
	.align 2
	.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB104:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	stw 4,28(1)
	li 9,0
	stw 9,8(1)
	b .L716
.L718:
	lwz 9,24(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L717
	lwz 10,8(1)
	lwz 9,28(1)
	add 9,10,9
	stw 9,8(1)
.L717:
	lwz 9,24(1)
	srwi 9,9,1
	stw 9,24(1)
	lwz 9,28(1)
	slwi 9,9,1
	stw 9,28(1)
.L716:
	lwz 9,24(1)
	cmpwi 0,9,0
	bne 0,.L718
	lwz 9,8(1)
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE104:
	.size	__mulsi3,.-__mulsi3
	.align 2
	.globl __cmovd
	.type	__cmovd, @function
__cmovd:
.LFB105:
	.cfi_startproc
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	stw 3,40(1)
	stw 4,44(1)
	stw 5,48(1)
	lwz 9,48(1)
	srwi 9,9,3
	stw 9,16(1)
	lwz 9,48(1)
	rlwinm 9,9,0,0,28
	stw 9,12(1)
	lwz 9,40(1)
	stw 9,20(1)
	lwz 9,44(1)
	stw 9,24(1)
	lwz 10,20(1)
	lwz 9,24(1)
	cmplw 0,10,9
	blt 0,.L722
	lwz 10,24(1)
	lwz 9,48(1)
	add 9,10,9
	lwz 10,20(1)
	cmplw 0,10,9
	ble 0,.L729
.L722:
	li 9,0
	stw 9,8(1)
	b .L724
.L725:
	lwz 9,8(1)
	slwi 9,9,3
	lwz 10,44(1)
	add 10,10,9
	lwz 9,8(1)
	slwi 9,9,3
	lwz 8,40(1)
	add 9,8,9
	lwz 11,4(10)
	lwz 10,0(10)
	stw 10,0(9)
	stw 11,4(9)
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
.L724:
	lwz 10,8(1)
	lwz 9,16(1)
	cmplw 0,10,9
	blt 0,.L725
	b .L726
.L727:
	lwz 10,24(1)
	lwz 9,12(1)
	add 10,10,9
	lwz 8,20(1)
	lwz 9,12(1)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,12(1)
	addi 9,9,1
	stw 9,12(1)
.L726:
	lwz 10,48(1)
	lwz 9,12(1)
	cmplw 0,10,9
	bgt 0,.L727
	b .L728
.L730:
	lwz 10,24(1)
	lwz 9,48(1)
	add 10,10,9
	lwz 8,20(1)
	lwz 9,48(1)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
.L729:
	lwz 9,48(1)
	addi 10,9,-1
	stw 10,48(1)
	cmpwi 0,9,0
	bne 0,.L730
	nop
.L728:
	nop
	addi 1,1,64
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE105:
	.size	__cmovd,.-__cmovd
	.align 2
	.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB106:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	lwz 9,32(1)
	srwi 9,9,1
	stw 9,12(1)
	lwz 9,24(1)
	stw 9,16(1)
	lwz 9,28(1)
	stw 9,20(1)
	lwz 10,16(1)
	lwz 9,20(1)
	cmplw 0,10,9
	blt 0,.L733
	lwz 10,20(1)
	lwz 9,32(1)
	add 9,10,9
	lwz 10,16(1)
	cmplw 0,10,9
	ble 0,.L739
.L733:
	li 9,0
	stw 9,8(1)
	b .L735
.L736:
	lwz 9,8(1)
	slwi 9,9,1
	lwz 10,28(1)
	add 10,10,9
	lwz 9,8(1)
	slwi 9,9,1
	lwz 8,24(1)
	add 9,8,9
	lhz 10,0(10)
	sth 10,0(9)
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
.L735:
	lwz 10,8(1)
	lwz 9,12(1)
	cmplw 0,10,9
	blt 0,.L736
	lwz 9,32(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L738
	lwz 9,32(1)
	addi 9,9,-1
	lwz 10,20(1)
	add 10,10,9
	lwz 9,32(1)
	addi 9,9,-1
	lwz 8,16(1)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
	b .L738
.L740:
	lwz 10,20(1)
	lwz 9,32(1)
	add 10,10,9
	lwz 8,16(1)
	lwz 9,32(1)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
.L739:
	lwz 9,32(1)
	addi 10,9,-1
	stw 10,32(1)
	cmpwi 0,9,0
	bne 0,.L740
	nop
.L738:
	nop
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE106:
	.size	__cmovh,.-__cmovh
	.align 2
	.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB107:
	.cfi_startproc
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	stw 3,40(1)
	stw 4,44(1)
	stw 5,48(1)
	lwz 9,48(1)
	srwi 9,9,2
	stw 9,16(1)
	lwz 9,48(1)
	rlwinm 9,9,0,0,29
	stw 9,12(1)
	lwz 9,40(1)
	stw 9,20(1)
	lwz 9,44(1)
	stw 9,24(1)
	lwz 10,20(1)
	lwz 9,24(1)
	cmplw 0,10,9
	blt 0,.L743
	lwz 10,24(1)
	lwz 9,48(1)
	add 9,10,9
	lwz 10,20(1)
	cmplw 0,10,9
	ble 0,.L750
.L743:
	li 9,0
	stw 9,8(1)
	b .L745
.L746:
	lwz 9,8(1)
	slwi 9,9,2
	lwz 10,44(1)
	add 10,10,9
	lwz 9,8(1)
	slwi 9,9,2
	lwz 8,40(1)
	add 9,8,9
	lwz 10,0(10)
	stw 10,0(9)
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
.L745:
	lwz 10,8(1)
	lwz 9,16(1)
	cmplw 0,10,9
	blt 0,.L746
	b .L747
.L748:
	lwz 10,24(1)
	lwz 9,12(1)
	add 10,10,9
	lwz 8,20(1)
	lwz 9,12(1)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,12(1)
	addi 9,9,1
	stw 9,12(1)
.L747:
	lwz 10,48(1)
	lwz 9,12(1)
	cmplw 0,10,9
	bgt 0,.L748
	b .L749
.L751:
	lwz 10,24(1)
	lwz 9,48(1)
	add 10,10,9
	lwz 8,20(1)
	lwz 9,48(1)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
.L750:
	lwz 9,48(1)
	addi 10,9,-1
	stw 10,48(1)
	cmpwi 0,9,0
	bne 0,.L751
	nop
.L749:
	nop
	addi 1,1,64
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE107:
	.size	__cmovw,.-__cmovw
	.align 2
	.globl __modi
	.type	__modi, @function
__modi:
.LFB108:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	stw 4,12(1)
	lwz 9,8(1)
	lwz 10,12(1)
	divw 8,9,10
	lwz 10,12(1)
	mullw 10,8,10
	subf 9,10,9
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE108:
	.size	__modi,.-__modi
	.align 2
	.globl __uitod
	.type	__uitod, @function
__uitod:
.LFB109:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	.cfi_offset 65, 4
	stw 3,8(1)
	lwz 3,8(1)
	bl __floatunsidf
	mr 11,4
	mr 10,3
	mr 3,10
	mr 4,11
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE109:
	.size	__uitod,.-__uitod
	.align 2
	.globl __uitof
	.type	__uitof, @function
__uitof:
.LFB110:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	.cfi_offset 65, 4
	stw 3,8(1)
	lwz 3,8(1)
	bl __floatunsisf
	mr 9,3
	mr 3,9
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE110:
	.size	__uitof,.-__uitof
	.align 2
	.globl __ulltod
	.type	__ulltod, @function
__ulltod:
.LFB111:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	.cfi_offset 65, 4
	stw 3,8(1)
	stw 4,12(1)
	lwz 3,8(1)
	lwz 4,12(1)
	bl __floatundidf
	mr 11,4
	mr 10,3
	mr 3,10
	mr 4,11
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE111:
	.size	__ulltod,.-__ulltod
	.align 2
	.globl __ulltof
	.type	__ulltof, @function
__ulltof:
.LFB112:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	.cfi_offset 65, 4
	stw 3,8(1)
	stw 4,12(1)
	lwz 3,8(1)
	lwz 4,12(1)
	bl __floatundisf
	mr 9,3
	mr 3,9
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE112:
	.size	__ulltof,.-__ulltof
	.align 2
	.globl __umodi
	.type	__umodi, @function
__umodi:
.LFB113:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	stw 4,12(1)
	lwz 9,8(1)
	lwz 10,12(1)
	divwu 8,9,10
	lwz 10,12(1)
	mullw 10,8,10
	subf 9,10,9
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE113:
	.size	__umodi,.-__umodi
	.align 2
	.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB114:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mr 9,3
	sth 3,24(1)
	li 9,0
	stw 9,8(1)
	b .L772
.L775:
	lhz 10,24(1)
	lwz 9,8(1)
	subfic 9,9,15
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	bne 0,.L777
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
.L772:
	lwz 9,8(1)
	cmpwi 0,9,15
	ble 0,.L775
	b .L774
.L777:
	nop
.L774:
	lwz 9,8(1)
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE114:
	.size	__clzhi2,.-__clzhi2
	.align 2
	.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB115:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mr 9,3
	sth 3,24(1)
	li 9,0
	stw 9,8(1)
	b .L780
.L783:
	lhz 10,24(1)
	lwz 9,8(1)
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	bne 0,.L785
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
.L780:
	lwz 9,8(1)
	cmpwi 0,9,15
	ble 0,.L783
	b .L782
.L785:
	nop
.L782:
	lwz 9,8(1)
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE115:
	.size	__ctzhi2,.-__ctzhi2
	.align 2
	.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB116:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	.cfi_offset 65, 4
	stw 3,8(1)
	lis 4,0x4700
	lwz 3,8(1)
	bl __gesf2
	mr 9,3
	cmpwi 0,3,0
	blt 0,.L792
	lis 4,0x4700
	lwz 3,8(1)
	bl __subsf3
	mr 9,3
	mr 3,9
	bl __fixsfsi
	mr 9,3
	addis 9,9,0x1
	addi 9,9,-32768
	b .L790
.L792:
	lwz 3,8(1)
	bl __fixsfsi
	mr 9,3
.L790:
	mr 3,9
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE116:
	.size	__fixunssfsi,.-__fixunssfsi
	.align 2
	.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB117:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mr 9,3
	sth 3,24(1)
	li 9,0
	stw 9,12(1)
	li 9,0
	stw 9,8(1)
	b .L795
.L797:
	lhz 10,24(1)
	lwz 9,8(1)
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L796
	lwz 9,12(1)
	addi 9,9,1
	stw 9,12(1)
.L796:
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
.L795:
	lwz 9,8(1)
	cmpwi 0,9,15
	ble 0,.L797
	lwz 9,12(1)
	rlwinm 9,9,0,31,31
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE117:
	.size	__parityhi2,.-__parityhi2
	.align 2
	.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB118:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mr 9,3
	sth 3,24(1)
	li 9,0
	stw 9,12(1)
	li 9,0
	stw 9,8(1)
	b .L801
.L803:
	lhz 10,24(1)
	lwz 9,8(1)
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L802
	lwz 9,12(1)
	addi 9,9,1
	stw 9,12(1)
.L802:
	lwz 9,8(1)
	addi 9,9,1
	stw 9,8(1)
.L801:
	lwz 9,8(1)
	cmpwi 0,9,15
	ble 0,.L803
	lwz 9,12(1)
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE118:
	.size	__popcounthi2,.-__popcounthi2
	.align 2
	.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB119:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	stw 4,28(1)
	li 9,0
	stw 9,8(1)
	b .L807
.L809:
	lwz 9,24(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L808
	lwz 10,8(1)
	lwz 9,28(1)
	add 9,10,9
	stw 9,8(1)
.L808:
	lwz 9,24(1)
	srwi 9,9,1
	stw 9,24(1)
	lwz 9,28(1)
	slwi 9,9,1
	stw 9,28(1)
.L807:
	lwz 9,24(1)
	cmpwi 0,9,0
	bne 0,.L809
	lwz 9,8(1)
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE119:
	.size	__mulsi3_iq2000,.-__mulsi3_iq2000
	.align 2
	.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	stw 4,28(1)
	li 9,0
	stw 9,8(1)
	lwz 9,24(1)
	cmpwi 0,9,0
	bne 0,.L815
	li 9,0
	b .L814
.L817:
	lwz 9,28(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L816
	lwz 10,8(1)
	lwz 9,24(1)
	add 9,10,9
	stw 9,8(1)
.L816:
	lwz 9,24(1)
	slwi 9,9,1
	stw 9,24(1)
	lwz 9,28(1)
	srwi 9,9,1
	stw 9,28(1)
.L815:
	lwz 9,28(1)
	cmpwi 0,9,0
	bne 0,.L817
	lwz 9,8(1)
.L814:
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32,.-__mulsi3_lm32
	.align 2
	.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB121:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	li 9,1
	stw 9,8(1)
	li 9,0
	stw 9,12(1)
	b .L820
.L822:
	lwz 9,28(1)
	slwi 9,9,1
	stw 9,28(1)
	lwz 9,8(1)
	slwi 9,9,1
	stw 9,8(1)
.L820:
	lwz 10,28(1)
	lwz 9,24(1)
	cmplw 0,10,9
	bge 0,.L823
	lwz 9,8(1)
	cmpwi 0,9,0
	beq 0,.L823
	lwz 9,28(1)
	cmpwi 0,9,0
	bge 0,.L822
	b .L823
.L825:
	lwz 10,24(1)
	lwz 9,28(1)
	cmplw 0,10,9
	blt 0,.L824
	lwz 10,24(1)
	lwz 9,28(1)
	subf 9,9,10
	stw 9,24(1)
	lwz 10,12(1)
	lwz 9,8(1)
	or 9,10,9
	stw 9,12(1)
.L824:
	lwz 9,8(1)
	srwi 9,9,1
	stw 9,8(1)
	lwz 9,28(1)
	srwi 9,9,1
	stw 9,28(1)
.L823:
	lwz 9,8(1)
	cmpwi 0,9,0
	bne 0,.L825
	lwz 9,32(1)
	cmpwi 0,9,0
	beq 0,.L826
	lwz 9,24(1)
	b .L827
.L826:
	lwz 9,12(1)
.L827:
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE121:
	.size	__udivmodsi4,.-__udivmodsi4
	.align 2
	.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	.cfi_offset 65, 4
	stw 3,8(1)
	stw 4,12(1)
	lwz 4,12(1)
	lwz 3,8(1)
	bl __ltsf2
	mr 9,3
	cmpwi 0,3,0
	bge 0,.L837
	li 9,-1
	b .L832
.L837:
	lwz 4,12(1)
	lwz 3,8(1)
	bl __gtsf2
	mr 9,3
	cmpwi 0,9,0
	ble 0,.L838
	li 9,1
	b .L832
.L838:
	li 9,0
.L832:
	mr 3,9
	lwz 0,20(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE122:
	.size	__mspabi_cmpf,.-__mspabi_cmpf
	.align 2
	.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB123:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	.cfi_offset 65, 4
	stw 3,8(1)
	stw 4,12(1)
	stw 5,16(1)
	stw 6,20(1)
	lwz 5,16(1)
	lwz 6,20(1)
	lwz 3,8(1)
	lwz 4,12(1)
	bl __ltdf2
	mr 9,3
	cmpwi 0,3,0
	bge 0,.L848
	li 9,-1
	b .L843
.L848:
	lwz 5,16(1)
	lwz 6,20(1)
	lwz 3,8(1)
	lwz 4,12(1)
	bl __gtdf2
	mr 9,3
	cmpwi 0,9,0
	ble 0,.L849
	li 9,1
	b .L843
.L849:
	li 9,0
.L843:
	mr 3,9
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE123:
	.size	__mspabi_cmpd,.-__mspabi_cmpd
	.align 2
	.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB124:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	stw 4,12(1)
	lwz 9,8(1)
	mr 10,9
	srawi 9,9,31
	mr 7,9
	lwz 8,12(1)
	mr 9,8
	srawi 8,8,31
	mullw 7,7,9
	mullw 8,8,10
	add 8,7,8
	mullw 7,10,9
	mulhwu 9,10,9
	add 9,8,9
	mr 10,9
	mr 9,7
	mr 3,10
	mr 4,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE124:
	.size	__mspabi_mpysll,.-__mspabi_mpysll
	.align 2
	.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB125:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	stw 4,12(1)
	lwz 9,8(1)
	mr 10,9
	li 7,0
	lwz 9,12(1)
	li 8,0
	mullw 7,7,9
	mullw 8,8,10
	add 8,7,8
	mullw 7,10,9
	mulhwu 9,10,9
	add 9,8,9
	mr 10,9
	mr 9,7
	mr 3,10
	mr 4,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE125:
	.size	__mspabi_mpyull,.-__mspabi_mpyull
	.align 2
	.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB126:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	stw 4,28(1)
	li 9,0
	stw 9,12(1)
	li 9,0
	stw 9,16(1)
	lwz 9,28(1)
	cmpwi 0,9,0
	bge 0,.L858
	lwz 9,28(1)
	neg 9,9
	stw 9,28(1)
	li 9,1
	stw 9,12(1)
.L858:
	li 9,0
	stb 9,8(1)
	b .L859
.L862:
	lwz 9,28(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L860
	lwz 10,16(1)
	lwz 9,24(1)
	add 9,10,9
	stw 9,16(1)
.L860:
	lwz 9,24(1)
	slwi 9,9,1
	stw 9,24(1)
	lwz 9,28(1)
	srawi 9,9,1
	stw 9,28(1)
	lbz 9,8(1)
	addi 9,9,1
	stb 9,8(1)
.L859:
	lwz 9,28(1)
	cmpwi 0,9,0
	beq 0,.L861
	lbz 9,8(1)
	cmplwi 0,9,31
	ble 0,.L862
.L861:
	lwz 9,12(1)
	cmpwi 0,9,0
	beq 0,.L863
	lwz 9,16(1)
	neg 9,9
	b .L865
.L863:
	lwz 9,16(1)
.L865:
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE126:
	.size	__mulhi3,.-__mulhi3
	.align 2
	.globl __divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	.cfi_offset 65, 4
	stw 3,24(1)
	stw 4,28(1)
	li 9,0
	stw 9,8(1)
	lwz 9,24(1)
	cmpwi 0,9,0
	bge 0,.L868
	lwz 9,24(1)
	neg 9,9
	stw 9,24(1)
	lwz 9,8(1)
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 9,9,0,0xff
	stw 9,8(1)
.L868:
	lwz 9,28(1)
	cmpwi 0,9,0
	bge 0,.L869
	lwz 9,28(1)
	neg 9,9
	stw 9,28(1)
	lwz 9,8(1)
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 9,9,0,0xff
	stw 9,8(1)
.L869:
	lwz 9,24(1)
	lwz 10,28(1)
	li 5,0
	mr 4,10
	mr 3,9
	bl __udivmodsi4
	mr 9,3
	stw 9,12(1)
	lwz 9,8(1)
	cmpwi 0,9,0
	beq 0,.L870
	lwz 9,12(1)
	neg 9,9
	stw 9,12(1)
.L870:
	lwz 9,12(1)
	mr 3,9
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE127:
	.size	__divsi3,.-__divsi3
	.align 2
	.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	.cfi_offset 65, 4
	stw 3,24(1)
	stw 4,28(1)
	li 9,0
	stw 9,8(1)
	lwz 9,24(1)
	cmpwi 0,9,0
	bge 0,.L874
	lwz 9,24(1)
	neg 9,9
	stw 9,24(1)
	li 9,1
	stw 9,8(1)
.L874:
	lwz 9,28(1)
	cmpwi 0,9,0
	bge 0,.L875
	lwz 9,28(1)
	neg 9,9
	stw 9,28(1)
.L875:
	lwz 9,24(1)
	lwz 10,28(1)
	li 5,1
	mr 4,10
	mr 3,9
	bl __udivmodsi4
	mr 9,3
	stw 9,12(1)
	lwz 9,8(1)
	cmpwi 0,9,0
	beq 0,.L876
	lwz 9,12(1)
	neg 9,9
	stw 9,12(1)
.L876:
	lwz 9,12(1)
	mr 3,9
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE128:
	.size	__modsi3,.-__modsi3
	.align 2
	.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mr 9,3
	mr 10,4
	stw 5,28(1)
	sth 3,24(1)
	mr 9,4
	sth 4,26(1)
	li 9,1
	sth 9,8(1)
	li 9,0
	sth 9,10(1)
	b .L880
.L882:
	lhz 9,26(1)
	slwi 9,9,1
	sth 9,26(1)
	lhz 9,8(1)
	slwi 9,9,1
	sth 9,8(1)
.L880:
	lhz 10,26(1)
	lhz 9,24(1)
	cmplw 0,10,9
	bge 0,.L883
	lhz 9,8(1)
	cmpwi 0,9,0
	beq 0,.L883
	lhz 9,26(1)
	extsh 9,9
	cmpwi 0,9,0
	bge 0,.L882
	b .L883
.L885:
	lhz 10,24(1)
	lhz 9,26(1)
	cmplw 0,10,9
	blt 0,.L884
	lhz 10,24(1)
	lhz 9,26(1)
	subf 9,9,10
	sth 9,24(1)
	lhz 10,10(1)
	lhz 9,8(1)
	or 9,10,9
	sth 9,10(1)
.L884:
	lhz 9,8(1)
	srwi 9,9,1
	sth 9,8(1)
	lhz 9,26(1)
	srwi 9,9,1
	sth 9,26(1)
.L883:
	lhz 9,8(1)
	cmpwi 0,9,0
	bne 0,.L885
	lwz 9,28(1)
	cmpwi 0,9,0
	beq 0,.L886
	lhz 9,24(1)
	b .L887
.L886:
	lhz 9,10(1)
.L887:
	rlwinm 9,9,0,0xffff
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4,.-__udivmodhi4
	.align 2
	.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB130:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	li 9,1
	stw 9,8(1)
	li 9,0
	stw 9,12(1)
	b .L890
.L892:
	lwz 9,28(1)
	slwi 9,9,1
	stw 9,28(1)
	lwz 9,8(1)
	slwi 9,9,1
	stw 9,8(1)
.L890:
	lwz 10,28(1)
	lwz 9,24(1)
	cmplw 0,10,9
	bge 0,.L893
	lwz 9,8(1)
	cmpwi 0,9,0
	beq 0,.L893
	lwz 9,28(1)
	cmpwi 0,9,0
	bge 0,.L892
	b .L893
.L895:
	lwz 10,24(1)
	lwz 9,28(1)
	cmplw 0,10,9
	blt 0,.L894
	lwz 10,24(1)
	lwz 9,28(1)
	subf 9,9,10
	stw 9,24(1)
	lwz 10,12(1)
	lwz 9,8(1)
	or 9,10,9
	stw 9,12(1)
.L894:
	lwz 9,8(1)
	srwi 9,9,1
	stw 9,8(1)
	lwz 9,28(1)
	srwi 9,9,1
	stw 9,28(1)
.L893:
	lwz 9,8(1)
	cmpwi 0,9,0
	bne 0,.L895
	lwz 9,32(1)
	cmpwi 0,9,0
	beq 0,.L896
	lwz 9,24(1)
	b .L897
.L896:
	lwz 9,12(1)
.L897:
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE130:
	.size	__udivmodsi4_libgcc,.-__udivmodsi4_libgcc
	.align 2
	.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	stw 3,40(1)
	stw 4,44(1)
	stw 5,48(1)
	li 9,32
	stw 9,8(1)
	lwz 10,40(1)
	lwz 11,44(1)
	stw 10,16(1)
	stw 11,20(1)
	lwz 10,48(1)
	lwz 9,8(1)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L900
	li 9,0
	stw 9,28(1)
	lwz 10,20(1)
	lwz 8,48(1)
	lwz 9,8(1)
	subf 9,9,8
	slw 9,10,9
	stw 9,24(1)
	b .L901
.L900:
	lwz 9,48(1)
	cmpwi 0,9,0
	bne 0,.L902
	lwz 10,40(1)
	lwz 9,44(1)
	b .L904
.L902:
	lwz 10,20(1)
	lwz 9,48(1)
	slw 9,10,9
	stw 9,28(1)
	lwz 9,16(1)
	mr 10,9
	lwz 9,48(1)
	slw 10,10,9
	lwz 8,20(1)
	lwz 7,8(1)
	lwz 9,48(1)
	subf 9,9,7
	srw 9,8,9
	or 9,10,9
	stw 9,24(1)
.L901:
	lwz 10,24(1)
	lwz 9,28(1)
.L904:
	mr 3,10
	mr 4,9
	addi 1,1,64
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE131:
	.size	__ashldi3,.-__ashldi3
	.align 2
	.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB132:
	.cfi_startproc
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	stw 3,40(1)
	stw 4,44(1)
	stw 5,48(1)
	li 9,32
	stw 9,8(1)
	lwz 10,40(1)
	lwz 11,44(1)
	stw 10,16(1)
	stw 11,20(1)
	lwz 10,48(1)
	lwz 9,8(1)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L907
	lwz 10,16(1)
	lwz 9,8(1)
	addi 9,9,-1
	sraw 9,10,9
	stw 9,24(1)
	lwz 10,16(1)
	lwz 8,48(1)
	lwz 9,8(1)
	subf 9,9,8
	sraw 9,10,9
	stw 9,28(1)
	b .L908
.L907:
	lwz 9,48(1)
	cmpwi 0,9,0
	bne 0,.L909
	lwz 10,40(1)
	lwz 9,44(1)
	b .L911
.L909:
	lwz 10,16(1)
	lwz 9,48(1)
	sraw 9,10,9
	stw 9,24(1)
	lwz 9,16(1)
	mr 8,9
	lwz 10,8(1)
	lwz 9,48(1)
	subf 9,9,10
	slw 10,8,9
	lwz 8,20(1)
	lwz 9,48(1)
	srw 9,8,9
	or 9,10,9
	stw 9,28(1)
.L908:
	lwz 10,24(1)
	lwz 9,28(1)
.L911:
	mr 3,10
	mr 4,9
	addi 1,1,64
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE132:
	.size	__ashrdi3,.-__ashrdi3
	.align 2
	.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	stw 4,12(1)
	lwz 9,8(1)
	srwi 10,9,24
	li 7,0
	lwz 9,8(1)
	srwi 9,9,8
	li 8,0
	rlwinm 9,9,0,16,23
	or 7,7,8
	or 10,10,9
	lwz 9,8(1)
	slwi 8,9,8
	lwz 9,12(1)
	srwi 9,9,24
	or 9,8,9
	li 8,0
	rlwinm 9,9,0,8,15
	or 7,7,8
	or 10,10,9
	lwz 9,8(1)
	slwi 8,9,24
	lwz 9,12(1)
	srwi 9,9,8
	or 9,8,9
	li 8,0
	rlwinm 9,9,0,0,7
	or 7,7,8
	or 10,10,9
	lwz 9,12(1)
	srwi 8,9,24
	lwz 9,8(1)
	slwi 9,9,8
	or 9,8,9
	rlwinm 8,9,0,24,31
	li 9,0
	or 7,7,8
	or 10,10,9
	lwz 9,12(1)
	srwi 8,9,8
	lwz 9,8(1)
	slwi 9,9,24
	or 9,8,9
	rlwinm 8,9,0,16,23
	li 9,0
	or 7,7,8
	or 10,10,9
	lwz 9,12(1)
	slwi 9,9,8
	rlwinm 8,9,0,8,15
	li 9,0
	or 7,7,8
	or 10,10,9
	lwz 9,12(1)
	slwi 8,9,24
	li 9,0
	or 8,7,8
	or 9,10,9
	mr 10,8
	mr 3,10
	mr 4,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE133:
	.size	__bswapdi2,.-__bswapdi2
	.align 2
	.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB134:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	lwz 9,8(1)
	srwi 10,9,24
	lwz 9,8(1)
	srwi 9,9,8
	rlwinm 9,9,0,16,23
	or 10,10,9
	lwz 9,8(1)
	slwi 9,9,8
	rlwinm 9,9,0,8,15
	or 10,10,9
	lwz 9,8(1)
	slwi 9,9,24
	or 9,10,9
	mr 3,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE134:
	.size	__bswapsi2,.-__bswapsi2
	.align 2
	.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB135:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	lwz 9,24(1)
	stw 9,8(1)
	lwz 10,8(1)
	lis 9,0x1
	cmplw 0,10,9
	bge 0,.L920
	li 9,16
	b .L921
.L920:
	li 9,0
.L921:
	stw 9,12(1)
	lwz 9,12(1)
	subfic 9,9,16
	lwz 10,8(1)
	srw 9,10,9
	stw 9,8(1)
	lwz 9,12(1)
	stw 9,16(1)
	lwz 9,8(1)
	rlwinm 9,9,0,16,23
	cmpwi 0,9,0
	bne 0,.L922
	li 9,8
	b .L923
.L922:
	li 9,0
.L923:
	stw 9,12(1)
	lwz 9,12(1)
	subfic 9,9,8
	lwz 10,8(1)
	srw 9,10,9
	stw 9,8(1)
	lwz 9,12(1)
	lwz 10,16(1)
	add 9,10,9
	stw 9,16(1)
	lwz 9,8(1)
	rlwinm 9,9,0,24,27
	cmpwi 0,9,0
	bne 0,.L924
	li 9,4
	b .L925
.L924:
	li 9,0
.L925:
	stw 9,12(1)
	lwz 9,12(1)
	subfic 9,9,4
	lwz 10,8(1)
	srw 9,10,9
	stw 9,8(1)
	lwz 9,12(1)
	lwz 10,16(1)
	add 9,10,9
	stw 9,16(1)
	lwz 9,8(1)
	rlwinm 9,9,0,28,29
	cmpwi 0,9,0
	bne 0,.L926
	li 9,2
	b .L927
.L926:
	li 9,0
.L927:
	stw 9,12(1)
	lwz 9,12(1)
	subfic 9,9,2
	lwz 10,8(1)
	srw 9,10,9
	stw 9,8(1)
	lwz 9,12(1)
	lwz 10,16(1)
	add 9,10,9
	stw 9,16(1)
	lwz 9,8(1)
	rlwinm 9,9,0,30,30
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 9,9,0,0xff
	mr 10,9
	lwz 9,8(1)
	subfic 9,9,2
	mullw 10,10,9
	lwz 9,16(1)
	add 9,10,9
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE135:
	.size	__clzsi2,.-__clzsi2
	.align 2
	.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB136:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	stw 6,36(1)
	lwz 10,24(1)
	lwz 11,28(1)
	stw 10,8(1)
	stw 11,12(1)
	lwz 10,32(1)
	lwz 11,36(1)
	stw 10,16(1)
	stw 11,20(1)
	lwz 10,8(1)
	lwz 9,16(1)
	cmpw 0,10,9
	bge 0,.L931
	li 9,0
	b .L936
.L931:
	lwz 10,8(1)
	lwz 9,16(1)
	cmpw 0,10,9
	ble 0,.L933
	li 9,2
	b .L936
.L933:
	lwz 10,12(1)
	lwz 9,20(1)
	cmplw 0,10,9
	bge 0,.L934
	li 9,0
	b .L936
.L934:
	lwz 10,12(1)
	lwz 9,20(1)
	cmplw 0,10,9
	ble 0,.L935
	li 9,2
	b .L936
.L935:
	li 9,1
.L936:
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE136:
	.size	__cmpdi2,.-__cmpdi2
	.align 2
	.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB137:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	.cfi_offset 65, 4
	stw 3,8(1)
	stw 4,12(1)
	stw 5,16(1)
	stw 6,20(1)
	lwz 5,16(1)
	lwz 6,20(1)
	lwz 3,8(1)
	lwz 4,12(1)
	bl __cmpdi2
	mr 9,3
	addi 9,9,-1
	mr 3,9
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE137:
	.size	__aeabi_lcmp,.-__aeabi_lcmp
	.align 2
	.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB138:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	lwz 9,24(1)
	stw 9,8(1)
	lwz 9,8(1)
	rlwinm 9,9,0,16,31
	cmpwi 0,9,0
	bne 0,.L942
	li 9,16
	b .L943
.L942:
	li 9,0
.L943:
	stw 9,12(1)
	lwz 10,8(1)
	lwz 9,12(1)
	srw 9,10,9
	stw 9,8(1)
	lwz 9,12(1)
	stw 9,16(1)
	lwz 9,8(1)
	rlwinm 9,9,0,24,31
	cmpwi 0,9,0
	bne 0,.L944
	li 9,8
	b .L945
.L944:
	li 9,0
.L945:
	stw 9,12(1)
	lwz 10,8(1)
	lwz 9,12(1)
	srw 9,10,9
	stw 9,8(1)
	lwz 9,12(1)
	lwz 10,16(1)
	add 9,10,9
	stw 9,16(1)
	lwz 9,8(1)
	rlwinm 9,9,0,28,31
	cmpwi 0,9,0
	bne 0,.L946
	li 9,4
	b .L947
.L946:
	li 9,0
.L947:
	stw 9,12(1)
	lwz 10,8(1)
	lwz 9,12(1)
	srw 9,10,9
	stw 9,8(1)
	lwz 9,12(1)
	lwz 10,16(1)
	add 9,10,9
	stw 9,16(1)
	lwz 9,8(1)
	rlwinm 9,9,0,30,31
	cmpwi 0,9,0
	bne 0,.L948
	li 9,2
	b .L949
.L948:
	li 9,0
.L949:
	stw 9,12(1)
	lwz 10,8(1)
	lwz 9,12(1)
	srw 9,10,9
	stw 9,8(1)
	lwz 9,8(1)
	rlwinm 9,9,0,30,31
	stw 9,8(1)
	lwz 9,12(1)
	lwz 10,16(1)
	add 9,10,9
	stw 9,16(1)
	lwz 9,8(1)
	not 9,9
	rlwinm 10,9,0,31,31
	lwz 9,8(1)
	srwi 9,9,1
	subfic 9,9,2
	neg 10,10
	and 10,10,9
	lwz 9,16(1)
	add 9,10,9
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE138:
	.size	__ctzsi2,.-__ctzsi2
	.align 2
	.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB139:
	.cfi_startproc
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	stw 3,40(1)
	stw 4,44(1)
	stw 5,48(1)
	li 9,32
	stw 9,8(1)
	lwz 10,40(1)
	lwz 11,44(1)
	stw 10,16(1)
	stw 11,20(1)
	lwz 10,48(1)
	lwz 9,8(1)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L953
	li 9,0
	stw 9,24(1)
	lwz 10,16(1)
	lwz 8,48(1)
	lwz 9,8(1)
	subf 9,9,8
	srw 9,10,9
	stw 9,28(1)
	b .L954
.L953:
	lwz 9,48(1)
	cmpwi 0,9,0
	bne 0,.L955
	lwz 10,40(1)
	lwz 9,44(1)
	b .L957
.L955:
	lwz 10,16(1)
	lwz 9,48(1)
	srw 9,10,9
	stw 9,24(1)
	lwz 10,16(1)
	lwz 8,8(1)
	lwz 9,48(1)
	subf 9,9,8
	slw 10,10,9
	lwz 8,20(1)
	lwz 9,48(1)
	srw 9,8,9
	or 9,10,9
	stw 9,28(1)
.L954:
	lwz 10,24(1)
	lwz 9,28(1)
.L957:
	mr 3,10
	mr 4,9
	addi 1,1,64
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE139:
	.size	__lshrdi3,.-__lshrdi3
	.align 2
	.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,40(1)
	stw 4,44(1)
	li 9,16
	stw 9,8(1)
	li 10,-1
	lwz 9,8(1)
	srw 9,10,9
	stw 9,12(1)
	lwz 10,40(1)
	lwz 9,12(1)
	and 10,10,9
	lwz 8,44(1)
	lwz 9,12(1)
	and 9,8,9
	mullw 9,10,9
	stw 9,28(1)
	lwz 10,28(1)
	lwz 9,8(1)
	srw 9,10,9
	stw 9,16(1)
	lwz 10,28(1)
	lwz 9,12(1)
	and 9,10,9
	stw 9,28(1)
	lwz 10,40(1)
	lwz 9,8(1)
	srw 10,10,9
	lwz 8,44(1)
	lwz 9,12(1)
	and 9,8,9
	mullw 9,10,9
	lwz 10,16(1)
	add 9,10,9
	stw 9,16(1)
	lwz 10,28(1)
	lwz 8,16(1)
	lwz 9,12(1)
	and 8,8,9
	lwz 9,8(1)
	slw 9,8,9
	add 9,10,9
	stw 9,28(1)
	lwz 10,16(1)
	lwz 9,8(1)
	srw 9,10,9
	stw 9,24(1)
	lwz 10,28(1)
	lwz 9,8(1)
	srw 9,10,9
	stw 9,16(1)
	lwz 10,28(1)
	lwz 9,12(1)
	and 9,10,9
	stw 9,28(1)
	lwz 10,44(1)
	lwz 9,8(1)
	srw 10,10,9
	lwz 8,40(1)
	lwz 9,12(1)
	and 9,8,9
	mullw 9,10,9
	lwz 10,16(1)
	add 9,10,9
	stw 9,16(1)
	lwz 10,28(1)
	lwz 8,16(1)
	lwz 9,12(1)
	and 8,8,9
	lwz 9,8(1)
	slw 9,8,9
	add 9,10,9
	stw 9,28(1)
	lwz 9,24(1)
	mr 8,9
	lwz 10,16(1)
	lwz 9,8(1)
	srw 9,10,9
	add 9,8,9
	stw 9,24(1)
	lwz 9,24(1)
	mr 7,9
	lwz 10,40(1)
	lwz 9,8(1)
	srw 10,10,9
	lwz 8,44(1)
	lwz 9,8(1)
	srw 9,8,9
	mullw 9,10,9
	add 9,7,9
	stw 9,24(1)
	lwz 10,24(1)
	lwz 9,28(1)
	mr 3,10
	mr 4,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE140:
	.size	__muldsi3,.-__muldsi3
	.align 2
	.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB141:
	.cfi_startproc
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mflr 0
	stw 0,68(1)
	.cfi_offset 65, 4
	stw 3,40(1)
	stw 4,44(1)
	stw 5,48(1)
	stw 6,52(1)
	lwz 10,40(1)
	lwz 11,44(1)
	stw 10,8(1)
	stw 11,12(1)
	lwz 10,48(1)
	lwz 11,52(1)
	stw 10,16(1)
	stw 11,20(1)
	lwz 9,12(1)
	lwz 10,20(1)
	mr 4,10
	mr 3,9
	bl __muldsi3
	mr 11,4
	mr 10,3
	stw 10,24(1)
	stw 11,28(1)
	lwz 9,24(1)
	mr 8,9
	lwz 9,8(1)
	mr 10,9
	lwz 9,20(1)
	mullw 10,10,9
	lwz 9,12(1)
	lwz 7,16(1)
	mullw 9,9,7
	add 9,10,9
	add 9,8,9
	stw 9,24(1)
	lwz 10,24(1)
	lwz 9,28(1)
	mr 3,10
	mr 4,9
	lwz 0,68(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,64
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE141:
	.size	__muldi3_compiler_rt,.-__muldi3_compiler_rt
	.align 2
	.globl __negdi2
	.type	__negdi2, @function
__negdi2:
.LFB142:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 3,8(1)
	stw 4,12(1)
	lwz 9,8(1)
	lwz 10,12(1)
	subfic 10,10,0
	subfze 9,9
	mr 8,9
	mr 9,10
	mr 10,8
	mr 3,10
	mr 4,9
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE142:
	.size	__negdi2,.-__negdi2
	.align 2
	.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB143:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	stw 4,28(1)
	lwz 10,24(1)
	lwz 11,28(1)
	stw 10,16(1)
	stw 11,20(1)
	lwz 9,16(1)
	mr 10,9
	lwz 9,20(1)
	xor 9,10,9
	stw 9,8(1)
	lwz 9,8(1)
	srwi 9,9,16
	lwz 10,8(1)
	xor 9,10,9
	stw 9,8(1)
	lwz 9,8(1)
	srwi 9,9,8
	lwz 10,8(1)
	xor 9,10,9
	stw 9,8(1)
	lwz 9,8(1)
	srwi 9,9,4
	lwz 10,8(1)
	xor 9,10,9
	stw 9,8(1)
	lwz 9,8(1)
	rlwinm 9,9,0,28,31
	li 10,27030
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE143:
	.size	__paritydi2,.-__paritydi2
	.align 2
	.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB144:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	lwz 9,24(1)
	stw 9,8(1)
	lwz 9,8(1)
	srwi 9,9,16
	lwz 10,8(1)
	xor 9,10,9
	stw 9,8(1)
	lwz 9,8(1)
	srwi 9,9,8
	lwz 10,8(1)
	xor 9,10,9
	stw 9,8(1)
	lwz 9,8(1)
	srwi 9,9,4
	lwz 10,8(1)
	xor 9,10,9
	stw 9,8(1)
	lwz 9,8(1)
	rlwinm 9,9,0,28,31
	li 10,27030
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE144:
	.size	__paritysi2,.-__paritysi2
	.align 2
	.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB145:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	stw 4,28(1)
	lwz 10,24(1)
	lwz 11,28(1)
	stw 10,8(1)
	stw 11,12(1)
	lwz 9,8(1)
	slwi 10,9,31
	lwz 9,12(1)
	srwi 9,9,1
	or 9,10,9
	lwz 10,8(1)
	srwi 7,10,1
	lis 10,0x5555
	ori 8,10,0x5555
	lis 10,0x5555
	ori 10,10,0x5555
	and 8,7,8
	and 9,9,10
	lwz 10,8(1)
	lwz 7,12(1)
	subfc 9,9,7
	subfe 10,8,10
	stw 10,8(1)
	stw 9,12(1)
	lwz 9,8(1)
	slwi 10,9,30
	lwz 9,12(1)
	srwi 9,9,2
	or 9,10,9
	lwz 10,8(1)
	srwi 7,10,2
	lis 10,0x3333
	ori 8,10,0x3333
	lis 10,0x3333
	ori 10,10,0x3333
	and 8,7,8
	and 9,9,10
	lwz 5,8(1)
	lwz 6,12(1)
	lis 10,0x3333
	ori 10,10,0x3333
	lis 7,0x3333
	ori 7,7,0x3333
	and 10,5,10
	and 7,6,7
	addc 9,9,7
	adde 10,8,10
	stw 10,8(1)
	stw 9,12(1)
	lwz 9,8(1)
	slwi 10,9,28
	lwz 9,12(1)
	srwi 9,9,4
	or 9,10,9
	lwz 10,8(1)
	srwi 7,10,4
	lwz 10,8(1)
	lwz 8,12(1)
	addc 8,9,8
	adde 7,7,10
	lis 9,0xf0f
	ori 10,9,0xf0f
	lis 9,0xf0f
	ori 9,9,0xf0f
	and 10,7,10
	and 9,8,9
	stw 10,8(1)
	stw 9,12(1)
	lwz 9,12(1)
	lwz 10,8(1)
	srwi 10,10,0
	add 9,9,10
	stw 9,16(1)
	lwz 9,16(1)
	srwi 9,9,16
	lwz 10,16(1)
	add 9,10,9
	stw 9,16(1)
	lwz 9,16(1)
	srwi 10,9,8
	lwz 9,16(1)
	add 9,10,9
	rlwinm 9,9,0,25,31
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE145:
	.size	__popcountdi2,.-__popcountdi2
	.align 2
	.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB146:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 3,24(1)
	lwz 9,24(1)
	stw 9,8(1)
	lwz 9,8(1)
	srwi 10,9,1
	lis 9,0x5555
	ori 9,9,0x5555
	and 9,10,9
	lwz 10,8(1)
	subf 9,9,10
	stw 9,8(1)
	lwz 9,8(1)
	srwi 10,9,2
	lis 9,0x3333
	ori 9,9,0x3333
	and 10,10,9
	lwz 8,8(1)
	lis 9,0x3333
	ori 9,9,0x3333
	and 9,8,9
	add 9,10,9
	stw 9,8(1)
	lwz 9,8(1)
	srwi 10,9,4
	lwz 9,8(1)
	add 10,10,9
	lis 9,0xf0f
	ori 9,9,0xf0f
	and 9,10,9
	stw 9,8(1)
	lwz 9,8(1)
	srwi 9,9,16
	lwz 10,8(1)
	add 9,10,9
	stw 9,8(1)
	lwz 9,8(1)
	srwi 10,9,8
	lwz 9,8(1)
	add 9,10,9
	rlwinm 9,9,0,26,31
	mr 3,9
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE146:
	.size	__popcountsi2,.-__popcountsi2
	.align 2
	.globl __powidf2
	.type	__powidf2, @function
__powidf2:
.LFB147:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	.cfi_offset 65, 4
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	lwz 9,32(1)
	srwi 9,9,31
	rlwinm 9,9,0,0xff
	stw 9,16(1)
	lis 10,0x3ff0
	li 11,0
	stw 10,8(1)
	stw 11,12(1)
.L984:
	lwz 9,32(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L981
	lwz 5,24(1)
	lwz 6,28(1)
	lwz 3,8(1)
	lwz 4,12(1)
	bl __muldf3
	mr 11,4
	mr 10,3
	stw 10,8(1)
	stw 11,12(1)
.L981:
	lwz 9,32(1)
	srawi 9,9,1
	addze 9,9
	stw 9,32(1)
	lwz 9,32(1)
	cmpwi 0,9,0
	beq 0,.L989
	lwz 5,24(1)
	lwz 6,28(1)
	lwz 3,24(1)
	lwz 4,28(1)
	bl __muldf3
	mr 11,4
	mr 10,3
	stw 10,24(1)
	stw 11,28(1)
	b .L984
.L989:
	nop
	lwz 9,16(1)
	cmpwi 0,9,0
	beq 0,.L985
	lwz 5,8(1)
	lwz 6,12(1)
	lis 3,0x3ff0
	li 4,0
	bl __divdf3
	mr 11,4
	mr 10,3
	b .L987
.L985:
	lwz 10,8(1)
	lwz 11,12(1)
.L987:
	mr 3,10
	mr 4,11
	lwz 0,52(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE147:
	.size	__powidf2,.-__powidf2
	.align 2
	.globl __powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	.cfi_offset 65, 4
	stw 3,24(1)
	stw 4,28(1)
	lwz 9,28(1)
	srwi 9,9,31
	rlwinm 9,9,0,0xff
	stw 9,12(1)
	lis 9,0x3f80
	stw 9,8(1)
.L995:
	lwz 9,28(1)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L992
	lwz 4,24(1)
	lwz 3,8(1)
	bl __mulsf3
	mr 9,3
	stw 9,8(1)
.L992:
	lwz 9,28(1)
	srawi 9,9,1
	addze 9,9
	stw 9,28(1)
	lwz 9,28(1)
	cmpwi 0,9,0
	beq 0,.L1000
	lwz 4,24(1)
	lwz 3,24(1)
	bl __mulsf3
	mr 9,3
	stw 9,24(1)
	b .L995
.L1000:
	nop
	lwz 9,12(1)
	cmpwi 0,9,0
	beq 0,.L996
	lwz 4,8(1)
	lis 3,0x3f80
	bl __divsf3
	mr 9,3
	b .L998
.L996:
	lwz 9,8(1)
.L998:
	mr 3,9
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE148:
	.size	__powisf2,.-__powisf2
	.align 2
	.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB149:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 3,24(1)
	stw 4,28(1)
	stw 5,32(1)
	stw 6,36(1)
	lwz 10,24(1)
	lwz 11,28(1)
	stw 10,8(1)
	stw 11,12(1)
	lwz 10,32(1)
	lwz 11,36(1)
	stw 10,16(1)
	stw 11,20(1)
	lwz 10,8(1)
	lwz 9,16(1)
	cmplw 0,10,9
	bge 0,.L1003
	li 9,0
	b .L1008
.L1003:
	lwz 10,8(1)
	lwz 9,16(1)
	cmplw 0,10,9
	ble 0,.L1005
	li 9,2
	b .L1008
.L1005:
	lwz 10,12(1)
	lwz 9,20(1)
	cmplw 0,10,9
	bge 0,.L1006
	li 9,0
	b .L1008
.L1006:
	lwz 10,12(1)
	lwz 9,20(1)
	cmplw 0,10,9
	ble 0,.L1007
	li 9,2
	b .L1008
.L1007:
	li 9,1
.L1008:
	mr 3,9
	addi 1,1,48
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE149:
	.size	__ucmpdi2,.-__ucmpdi2
	.align 2
	.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB150:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	.cfi_offset 65, 4
	stw 3,8(1)
	stw 4,12(1)
	stw 5,16(1)
	stw 6,20(1)
	lwz 10,8(1)
	lwz 11,12(1)
	lwz 8,16(1)
	lwz 9,20(1)
	mr 5,8
	mr 6,9
	mr 3,10
	mr 4,11
	bl __ucmpdi2
	mr 9,3
	addi 9,9,-1
	mr 3,9
	lwz 0,36(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,32
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp,.-__aeabi_ulcmp
	.lcomm	s.0,7,4
	.type	s.0, @object
	.globl __divsf3
	.globl __fixsfsi
	.globl __gesf2
	.globl __floatundisf
	.globl __floatundidf
	.globl __floatunsisf
	.globl __floatunsidf
	.globl __divdf3
	.globl __gedf2
	.globl __gcc_qmul
	.globl __gcc_qne
	.globl __gcc_qadd
	.globl __muldf3
	.globl __nedf2
	.globl __adddf3
	.globl __mulsf3
	.globl __nesf2
	.globl __addsf3
	.globl __gcc_dtoq
	.globl __floatsidf
	.globl __gcc_qgt
	.globl __moddi3
	.globl __divdi3
	.globl __gcc_qlt
	.globl __gcc_qtod
	.globl __ltsf2
	.globl __ltdf2
	.globl __subsf3
	.globl __gtsf2
	.globl __unordsf2
	.globl __subdf3
	.globl __gtdf2
	.globl __unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.gnu_attribute 4, 6
	.gnu_attribute 12, 2
	.section	.note.GNU-stack,"",@progbits
