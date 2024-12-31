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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	lwz 9,24(31)
	stw 9,8(31)
	lwz 9,28(31)
	stw 9,12(31)
	lwz 10,12(31)
	lwz 9,8(31)
	cmplw 0,10,9
	bge 0,.L2
	lwz 10,12(31)
	lwz 9,32(31)
	add 9,10,9
	stw 9,12(31)
	lwz 10,8(31)
	lwz 9,32(31)
	add 9,10,9
	stw 9,8(31)
	b .L3
.L4:
	lwz 9,12(31)
	addi 9,9,-1
	stw 9,12(31)
	lwz 9,8(31)
	addi 9,9,-1
	stw 9,8(31)
	lwz 9,12(31)
	lbz 10,0(9)
	lwz 9,8(31)
	stb 10,0(9)
	lwz 9,32(31)
	addi 9,9,-1
	stw 9,32(31)
.L3:
	lwz 9,32(31)
	cmpwi 0,9,0
	bne 0,.L4
	b .L5
.L2:
	lwz 10,12(31)
	lwz 9,8(31)
	cmpw 0,10,9
	beq 0,.L5
	b .L6
.L7:
	lwz 10,12(31)
	addi 9,10,1
	stw 9,12(31)
	lwz 9,8(31)
	addi 8,9,1
	stw 8,8(31)
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,32(31)
	addi 9,9,-1
	stw 9,32(31)
.L6:
	lwz 9,32(31)
	cmpwi 0,9,0
	bne 0,.L7
.L5:
	lwz 9,24(31)
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	stw 6,36(31)
	lwz 9,24(31)
	stw 9,8(31)
	lwz 9,28(31)
	stw 9,12(31)
	lwz 9,32(31)
	rlwinm 9,9,0,0xff
	stw 9,32(31)
	b .L10
.L12:
	lwz 9,36(31)
	addi 9,9,-1
	stw 9,36(31)
	lwz 9,12(31)
	addi 9,9,1
	stw 9,12(31)
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
.L10:
	lwz 9,36(31)
	cmpwi 0,9,0
	beq 0,.L11
	lwz 9,12(31)
	lbz 10,0(9)
	lwz 9,8(31)
	stb 10,0(9)
	lwz 9,8(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,32(31)
	cmpw 0,10,9
	bne 0,.L12
.L11:
	lwz 9,36(31)
	cmpwi 0,9,0
	beq 0,.L13
	lwz 9,8(31)
	addi 9,9,1
	b .L14
.L13:
	li 9,0
.L14:
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	lwz 9,24(31)
	stw 9,8(31)
	lwz 9,28(31)
	rlwinm 9,9,0,0xff
	stw 9,28(31)
	b .L16
.L18:
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
	lwz 9,32(31)
	addi 9,9,-1
	stw 9,32(31)
.L16:
	lwz 9,32(31)
	cmpwi 0,9,0
	beq 0,.L17
	lwz 9,8(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,28(31)
	cmpw 0,10,9
	bne 0,.L18
.L17:
	lwz 9,32(31)
	cmpwi 0,9,0
	beq 0,.L19
	lwz 9,8(31)
	b .L21
.L19:
	li 9,0
.L21:
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	lwz 9,24(31)
	stw 9,8(31)
	lwz 9,28(31)
	stw 9,12(31)
	b .L23
.L25:
	lwz 9,32(31)
	addi 9,9,-1
	stw 9,32(31)
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
	lwz 9,12(31)
	addi 9,9,1
	stw 9,12(31)
.L23:
	lwz 9,32(31)
	cmpwi 0,9,0
	beq 0,.L24
	lwz 9,8(31)
	lbz 10,0(9)
	lwz 9,12(31)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	beq 0,.L25
.L24:
	lwz 9,32(31)
	cmpwi 0,9,0
	beq 0,.L26
	lwz 9,8(31)
	lbz 9,0(9)
	rlwinm 10,9,0,0xff
	lwz 9,12(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	subf 9,9,10
	b .L28
.L26:
	li 9,0
.L28:
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	lwz 9,24(31)
	stw 9,8(31)
	lwz 9,28(31)
	stw 9,12(31)
	b .L30
.L31:
	lwz 10,12(31)
	addi 9,10,1
	stw 9,12(31)
	lwz 9,8(31)
	addi 8,9,1
	stw 8,8(31)
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,32(31)
	addi 9,9,-1
	stw 9,32(31)
.L30:
	lwz 9,32(31)
	cmpwi 0,9,0
	bne 0,.L31
	lwz 9,24(31)
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	lwz 9,24(31)
	stw 9,8(31)
	lwz 9,28(31)
	rlwinm 9,9,0,0xff
	stw 9,28(31)
	b .L34
.L36:
	lwz 10,8(31)
	lwz 9,32(31)
	add 9,10,9
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,28(31)
	cmpw 0,10,9
	bne 0,.L34
	lwz 10,8(31)
	lwz 9,32(31)
	add 9,10,9
	b .L35
.L34:
	lwz 9,32(31)
	addi 10,9,-1
	stw 10,32(31)
	cmpwi 0,9,0
	bne 0,.L36
	li 9,0
.L35:
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	lwz 9,24(31)
	stw 9,8(31)
	b .L38
.L39:
	lwz 9,28(31)
	mr 10,9
	lwz 9,8(31)
	stb 10,0(9)
	lwz 9,32(31)
	addi 9,9,-1
	stw 9,32(31)
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
.L38:
	lwz 9,32(31)
	cmpwi 0,9,0
	bne 0,.L39
	lwz 9,24(31)
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	b .L42
.L43:
	lwz 9,12(31)
	addi 9,9,1
	stw 9,12(31)
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
.L42:
	lwz 9,12(31)
	lbz 10,0(9)
	lwz 9,8(31)
	stb 10,0(9)
	lwz 9,8(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L43
	lwz 9,8(31)
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 9,12(31)
	rlwinm 9,9,0,0xff
	stw 9,12(31)
	b .L46
.L48:
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
.L46:
	lwz 9,8(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L47
	lwz 9,8(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	lwz 10,12(31)
	cmpw 0,10,9
	bne 0,.L48
.L47:
	lwz 9,8(31)
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 4,8(31)
.L53:
	lbz 10,0(9)
	rlwinm 10,10,0,0xff
	lwz 8,8(31)
	cmpw 0,8,10
	bne 0,.L51
	b .L52
.L51:
	mr 10,9
	addi 9,10,1
	lbz 10,0(10)
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	bne 0,.L53
	li 9,0
.L52:
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	b .L55
.L57:
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
	lwz 9,12(31)
	addi 9,9,1
	stw 9,12(31)
.L55:
	lwz 9,8(31)
	lbz 10,0(9)
	lwz 9,12(31)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	bne 0,.L56
	lwz 9,8(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L57
.L56:
	lwz 9,8(31)
	lbz 9,0(9)
	rlwinm 10,9,0,0xff
	lwz 9,12(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	subf 9,9,10
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	lwz 9,24(31)
	stw 9,8(31)
	b .L60
.L61:
	lwz 9,24(31)
	addi 9,9,1
	stw 9,24(31)
.L60:
	lwz 9,24(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L61
	lwz 10,24(31)
	lwz 9,8(31)
	subf 9,9,10
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	lwz 9,24(31)
	stw 9,8(31)
	lwz 9,28(31)
	stw 9,12(31)
	lwz 9,32(31)
	addi 10,9,-1
	stw 10,32(31)
	cmpwi 0,9,0
	bne 0,.L66
	li 9,0
	b .L65
.L68:
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
	lwz 9,12(31)
	addi 9,9,1
	stw 9,12(31)
	lwz 9,32(31)
	addi 9,9,-1
	stw 9,32(31)
.L66:
	lwz 9,8(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L67
	lwz 9,12(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L67
	lwz 9,32(31)
	cmpwi 0,9,0
	beq 0,.L67
	lwz 9,8(31)
	lbz 10,0(9)
	lwz 9,12(31)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	beq 0,.L68
.L67:
	lwz 9,8(31)
	lbz 9,0(9)
	rlwinm 10,9,0,0xff
	lwz 9,12(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	subf 9,9,10
.L65:
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	lwz 9,24(31)
	stw 9,8(31)
	lwz 9,28(31)
	stw 9,12(31)
	b .L70
.L71:
	lwz 9,8(31)
	addi 9,9,1
	lbz 10,0(9)
	lwz 9,12(31)
	stb 10,0(9)
	lwz 9,12(31)
	addi 9,9,1
	lwz 10,8(31)
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,12(31)
	addi 9,9,2
	stw 9,12(31)
	lwz 9,8(31)
	addi 9,9,2
	stw 9,8(31)
	lwz 9,32(31)
	addi 9,9,-2
	stw 9,32(31)
.L70:
	lwz 9,32(31)
	cmpwi 0,9,1
	bgt 0,.L71
	nop
	nop
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 9,8(31)
	ori 9,9,0x20
	addi 9,9,-97
	subfic 9,9,25
	subfe 9,9,9
	addi 9,9,1
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 9,8(31)
	subfic 9,9,127
	subfe 9,9,9
	addi 9,9,1
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 9,8(31)
	cmpwi 0,9,32
	beq 0,.L77
	lwz 9,8(31)
	cmpwi 0,9,9
	bne 0,.L78
.L77:
	li 9,1
	b .L80
.L78:
	li 9,0
.L80:
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 9,8(31)
	cmplwi 0,9,31
	ble 0,.L82
	lwz 9,8(31)
	cmpwi 0,9,127
	bne 0,.L83
.L82:
	li 9,1
	b .L85
.L83:
	li 9,0
.L85:
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 9,8(31)
	addi 9,9,-48
	subfic 9,9,9
	subfe 9,9,9
	addi 9,9,1
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 9,8(31)
	addi 9,9,-33
	subfic 9,9,93
	subfe 9,9,9
	addi 9,9,1
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 9,8(31)
	addi 9,9,-97
	subfic 9,9,25
	subfe 9,9,9
	addi 9,9,1
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 9,8(31)
	addi 9,9,-32
	subfic 9,9,94
	subfe 9,9,9
	addi 9,9,1
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 9,8(31)
	cmpwi 0,9,32
	beq 0,.L95
	lwz 9,8(31)
	addi 9,9,-9
	cmplwi 0,9,4
	bgt 0,.L96
.L95:
	li 9,1
	b .L98
.L96:
	li 9,0
.L98:
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 9,8(31)
	addi 9,9,-65
	subfic 9,9,25
	subfe 9,9,9
	addi 9,9,1
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 9,8(31)
	cmplwi 0,9,31
	ble 0,.L102
	lwz 9,8(31)
	addi 9,9,-127
	cmplwi 0,9,32
	ble 0,.L102
	lwz 9,8(31)
	addi 9,9,-8232
	cmplwi 0,9,1
	ble 0,.L102
	lwz 9,8(31)
	addis 9,9,0xffff
	addi 9,9,7
	cmplwi 0,9,2
	bgt 0,.L103
.L102:
	li 9,1
	b .L105
.L103:
	li 9,0
.L105:
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 9,8(31)
	addi 9,9,-48
	subfic 9,9,9
	subfe 9,9,9
	addi 9,9,1
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 9,8(31)
	cmplwi 0,9,254
	bgt 0,.L109
	lwz 9,8(31)
	addi 9,9,1
	rlwinm 9,9,0,25,31
	subfic 9,9,32
	subfe 9,9,9
	neg 9,9
	rlwinm 9,9,0,0xff
	b .L110
.L109:
	lwz 9,8(31)
	cmplwi 0,9,8231
	ble 0,.L111
	lwz 9,8(31)
	addi 10,9,-8234
	li 9,0
	ori 9,9,0xb7d5
	cmplw 0,10,9
	ble 0,.L111
	lwz 9,8(31)
	addis 9,9,0xffff
	addi 9,9,8192
	cmplwi 0,9,8184
	bgt 0,.L112
.L111:
	li 9,1
	b .L110
.L112:
	lwz 9,8(31)
	addis 9,9,0xffff
	addi 10,9,4
	lis 9,0x10
	ori 9,9,0x3
	cmplw 0,10,9
	bgt 0,.L113
	lwz 9,8(31)
	rlwinm 10,9,0,16,30
	li 9,0
	ori 9,9,0xfffe
	cmpw 0,10,9
	bne 0,.L114
.L113:
	li 9,0
	b .L110
.L114:
	li 9,1
.L110:
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 9,8(31)
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L116
	lwz 9,8(31)
	ori 9,9,0x20
	addi 9,9,-97
	cmplwi 0,9,5
	bgt 0,.L117
.L116:
	li 9,1
	b .L119
.L117:
	li 9,0
.L119:
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 9,8(31)
	rlwinm 9,9,0,25,31
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	stw 5,16(31)
	stw 6,20(31)
	lwz 5,8(31)
	lwz 6,12(31)
	lwz 3,8(31)
	lwz 4,12(31)
	bl __unorddf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L134
	lwz 10,8(31)
	lwz 11,12(31)
	b .L125
.L134:
	lwz 5,16(31)
	lwz 6,20(31)
	lwz 3,16(31)
	lwz 4,20(31)
	bl __unorddf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L135
	lwz 10,16(31)
	lwz 11,20(31)
	b .L125
.L135:
	lwz 5,16(31)
	lwz 6,20(31)
	lwz 3,8(31)
	lwz 4,12(31)
	bl __gtdf2
	mr 9,3
	cmpwi 0,9,0
	ble 0,.L136
	lwz 5,16(31)
	lwz 6,20(31)
	lwz 3,8(31)
	lwz 4,12(31)
	bl __subdf3
	mr 11,4
	mr 10,3
	b .L125
.L136:
	li 10,0
	li 11,0
.L125:
	mr 3,10
	mr 4,11
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 4,8(31)
	lwz 3,8(31)
	bl __unordsf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L149
	lwz 9,8(31)
	b .L140
.L149:
	lwz 4,12(31)
	lwz 3,12(31)
	bl __unordsf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L150
	lwz 9,12(31)
	b .L140
.L150:
	lwz 4,12(31)
	lwz 3,8(31)
	bl __gtsf2
	mr 9,3
	cmpwi 0,9,0
	ble 0,.L151
	lwz 4,12(31)
	lwz 3,8(31)
	bl __subsf3
	mr 9,3
	b .L140
.L151:
	li 9,0
.L140:
	mr 3,9
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	stw 5,16(31)
	stw 6,20(31)
	lwz 5,8(31)
	lwz 6,12(31)
	lwz 3,8(31)
	lwz 4,12(31)
	bl __unorddf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L167
	lwz 10,16(31)
	lwz 11,20(31)
	b .L155
.L167:
	lwz 5,16(31)
	lwz 6,20(31)
	lwz 3,16(31)
	lwz 4,20(31)
	bl __unorddf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L168
	lwz 10,8(31)
	lwz 11,12(31)
	b .L155
.L168:
	lwz 9,8(31)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,16(31)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L158
	lwz 9,8(31)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L159
	lwz 10,16(31)
	lwz 11,20(31)
	b .L155
.L159:
	lwz 10,8(31)
	lwz 11,12(31)
	b .L155
.L158:
	lwz 5,16(31)
	lwz 6,20(31)
	lwz 3,8(31)
	lwz 4,12(31)
	bl __ltdf2
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L169
	lwz 10,16(31)
	lwz 11,20(31)
	b .L155
.L169:
	lwz 10,8(31)
	lwz 11,12(31)
.L155:
	mr 3,10
	mr 4,11
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 4,8(31)
	lwz 3,8(31)
	bl __unordsf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L185
	lwz 9,12(31)
	b .L173
.L185:
	lwz 4,12(31)
	lwz 3,12(31)
	bl __unordsf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L186
	lwz 9,8(31)
	b .L173
.L186:
	lwz 9,8(31)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,12(31)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L176
	lwz 9,8(31)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L177
	lwz 9,12(31)
	b .L173
.L177:
	lwz 9,8(31)
	b .L173
.L176:
	lwz 4,12(31)
	lwz 3,8(31)
	bl __ltsf2
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L187
	lwz 9,12(31)
	b .L173
.L187:
	lwz 9,8(31)
.L173:
	mr 3,9
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mflr 0
	stw 0,68(1)
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 11,31,16
	stw 3,0(11)
	stw 4,4(11)
	stw 5,8(11)
	stw 6,12(11)
	addi 6,31,32
	stw 7,0(6)
	stw 8,4(6)
	stw 9,8(6)
	stw 10,12(6)
	addi 9,31,16
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
	beq 0,.L203
	addi 9,31,32
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L191
.L203:
	addi 9,31,32
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
	beq 0,.L204
	addi 9,31,16
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L191
.L204:
	lwz 9,16(31)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,32(31)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L194
	lwz 9,16(31)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L195
	addi 9,31,32
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L191
.L195:
	addi 9,31,16
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L191
.L194:
	addi 9,31,32
	addi 6,31,16
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
	bge 0,.L205
	addi 9,31,32
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L191
.L205:
	addi 9,31,16
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
.L191:
	mr 3,8
	mr 4,9
	mr 5,10
	mr 6,11
	addi 11,31,64
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	stw 5,16(31)
	stw 6,20(31)
	lwz 5,8(31)
	lwz 6,12(31)
	lwz 3,8(31)
	lwz 4,12(31)
	bl __unorddf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L221
	lwz 10,16(31)
	lwz 11,20(31)
	b .L209
.L221:
	lwz 5,16(31)
	lwz 6,20(31)
	lwz 3,16(31)
	lwz 4,20(31)
	bl __unorddf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L222
	lwz 10,8(31)
	lwz 11,12(31)
	b .L209
.L222:
	lwz 9,8(31)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,16(31)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L212
	lwz 9,8(31)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L213
	lwz 10,8(31)
	lwz 11,12(31)
	b .L209
.L213:
	lwz 10,16(31)
	lwz 11,20(31)
	b .L209
.L212:
	lwz 5,16(31)
	lwz 6,20(31)
	lwz 3,8(31)
	lwz 4,12(31)
	bl __ltdf2
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L223
	lwz 10,8(31)
	lwz 11,12(31)
	b .L209
.L223:
	lwz 10,16(31)
	lwz 11,20(31)
.L209:
	mr 3,10
	mr 4,11
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 4,8(31)
	lwz 3,8(31)
	bl __unordsf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L239
	lwz 9,12(31)
	b .L227
.L239:
	lwz 4,12(31)
	lwz 3,12(31)
	bl __unordsf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L240
	lwz 9,8(31)
	b .L227
.L240:
	lwz 9,8(31)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,12(31)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L230
	lwz 9,8(31)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L231
	lwz 9,8(31)
	b .L227
.L231:
	lwz 9,12(31)
	b .L227
.L230:
	lwz 4,12(31)
	lwz 3,8(31)
	bl __ltsf2
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L241
	lwz 9,8(31)
	b .L227
.L241:
	lwz 9,12(31)
.L227:
	mr 3,9
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mflr 0
	stw 0,68(1)
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 11,31,16
	stw 3,0(11)
	stw 4,4(11)
	stw 5,8(11)
	stw 6,12(11)
	addi 6,31,32
	stw 7,0(6)
	stw 8,4(6)
	stw 9,8(6)
	stw 10,12(6)
	addi 9,31,16
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
	beq 0,.L257
	addi 9,31,32
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L245
.L257:
	addi 9,31,32
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
	beq 0,.L258
	addi 9,31,16
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L245
.L258:
	lwz 9,16(31)
	rlwinm 9,9,0,0,0
	mr 10,9
	lwz 9,32(31)
	rlwinm 9,9,0,0,0
	cmpw 0,10,9
	beq 0,.L248
	lwz 9,16(31)
	rlwinm 9,9,0,0,0
	cmpwi 0,9,0
	beq 0,.L249
	addi 9,31,16
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L245
.L249:
	addi 9,31,32
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L245
.L248:
	addi 9,31,32
	addi 6,31,16
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
	bge 0,.L259
	addi 9,31,16
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	b .L245
.L259:
	addi 9,31,32
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
.L245:
	mr 3,8
	mr 4,9
	mr 5,10
	mr 6,11
	addi 11,31,64
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	lwz 9,24(31)
	stw 9,12(31)
	lis 9,s.0@ha
	la 9,s.0@l(9)
	stw 9,8(31)
	b .L261
.L262:
	lwz 9,12(31)
	rlwinm 9,9,0,26,31
	lis 10,digits@ha
	la 10,digits@l(10)
	lbzx 10,10,9
	lwz 9,8(31)
	stb 10,0(9)
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
	lwz 9,12(31)
	srwi 9,9,6
	stw 9,12(31)
.L261:
	lwz 9,12(31)
	cmpwi 0,9,0
	bne 0,.L262
	lwz 9,8(31)
	li 10,0
	stb 10,0(9)
	lis 9,s.0@ha
	la 9,s.0@l(9)
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 9,8(31)
	addi 9,9,-1
	mr 11,9
	li 10,0
	lis 9,seed@ha
	la 9,seed@l(9)
	stw 10,0(9)
	stw 11,4(9)
	nop
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	lis 10,seed@ha
	la 10,seed@l(10)
	lwz 11,4(10)
	lwz 10,0(10)
	lis 3,0x4c95
	ori 3,3,0x7f2d
	mullw 0,10,3
	lis 3,0x5851
	ori 3,3,0xf42d
	mullw 3,11,3
	add 0,0,3
	lis 3,0x4c95
	ori 3,3,0x7f2d
	mullw 30,11,3
	mulhwu 10,11,3
	mr 9,30
	mr 8,10
	add 10,0,8
	mr 8,10
	addic 7,9,1
	addze 6,8
	lis 9,seed@ha
	la 9,seed@l(9)
	stw 6,0(9)
	stw 7,4(9)
	lis 9,seed@ha
	la 9,seed@l(9)
	lwz 10,0(9)
	lwz 11,4(9)
	srwi 5,10,1
	li 4,0
	mr 9,5
	mr 3,9
	addi 11,31,16
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	lwz 9,24(31)
	stw 9,8(31)
	lwz 9,28(31)
	stw 9,12(31)
	lwz 9,12(31)
	cmpwi 0,9,0
	bne 0,.L268
	lwz 9,8(31)
	li 10,0
	stw 10,4(9)
	lwz 9,8(31)
	lwz 10,4(9)
	lwz 9,8(31)
	stw 10,0(9)
	b .L267
.L268:
	lwz 9,12(31)
	lwz 10,0(9)
	lwz 9,8(31)
	stw 10,0(9)
	lwz 9,8(31)
	lwz 10,12(31)
	stw 10,4(9)
	lwz 9,12(31)
	lwz 10,8(31)
	stw 10,0(9)
	lwz 9,8(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L267
	lwz 9,8(31)
	lwz 9,0(9)
	lwz 10,8(31)
	stw 10,4(9)
.L267:
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	lwz 9,24(31)
	stw 9,8(31)
	lwz 9,8(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L271
	lwz 9,8(31)
	lwz 9,0(9)
	lwz 10,8(31)
	lwz 10,4(10)
	stw 10,4(9)
.L271:
	lwz 9,8(31)
	lwz 9,4(9)
	cmpwi 0,9,0
	beq 0,.L273
	lwz 9,8(31)
	lwz 9,4(9)
	lwz 10,8(31)
	lwz 10,0(10)
	stw 10,0(9)
.L273:
	nop
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 30,56(1)
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	stw 6,36(31)
	stw 7,40(31)
	lwz 30,36(31)
	mr 7,30
	addi 7,7,-1
	stw 7,12(31)
	mr 11,30
	li 10,0
	srwi 7,11,29
	slwi 8,10,3
	or 8,7,8
	slwi 9,11,3
	lwz 9,28(31)
	stw 9,16(31)
	lwz 9,32(31)
	lwz 9,0(9)
	stw 9,20(31)
	li 9,0
	stw 9,8(31)
	b .L275
.L278:
	lwz 9,8(31)
	mullw 9,30,9
	lwz 10,16(31)
	add 10,10,9
	lwz 9,40(31)
	mr 4,10
	lwz 3,24(31)
	mtctr 9
	bctrl
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L276
	lwz 9,8(31)
	mullw 9,30,9
	lwz 10,16(31)
	add 9,10,9
	b .L277
.L276:
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
.L275:
	lwz 10,8(31)
	lwz 9,20(31)
	cmplw 0,10,9
	blt 0,.L278
	lwz 9,20(31)
	addi 10,9,1
	lwz 9,32(31)
	stw 10,0(9)
	lwz 9,20(31)
	mullw 9,30,9
	lwz 10,16(31)
	add 9,10,9
	lwz 5,36(31)
	lwz 4,24(31)
	mr 3,9
	bl memcpy
	mr 9,3
.L277:
	mr 3,9
	addi 11,31,64
	lwz 0,4(11)
	mtlr 0
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_register 1
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
	stw 30,56(1)
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	stw 6,36(31)
	stw 7,40(31)
	lwz 30,36(31)
	mr 7,30
	addi 7,7,-1
	stw 7,12(31)
	mr 11,30
	li 10,0
	srwi 7,11,29
	slwi 8,10,3
	or 8,7,8
	slwi 9,11,3
	lwz 9,28(31)
	stw 9,16(31)
	lwz 9,32(31)
	lwz 9,0(9)
	stw 9,20(31)
	li 9,0
	stw 9,8(31)
	b .L280
.L283:
	lwz 9,8(31)
	mullw 9,30,9
	lwz 10,16(31)
	add 10,10,9
	lwz 9,40(31)
	mr 4,10
	lwz 3,24(31)
	mtctr 9
	bctrl
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L281
	lwz 9,8(31)
	mullw 9,30,9
	lwz 10,16(31)
	add 9,10,9
	b .L282
.L281:
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
.L280:
	lwz 10,8(31)
	lwz 9,20(31)
	cmplw 0,10,9
	blt 0,.L283
	li 9,0
.L282:
	mr 3,9
	addi 11,31,64
	lwz 0,4(11)
	mtlr 0
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 9,8(31)
	srawi 10,9,31
	lwz 9,8(31)
	xor 9,10,9
	subf 9,10,9
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	li 9,0
	stw 9,8(31)
	li 9,0
	stw 9,12(31)
	b .L287
.L288:
	lwz 9,24(31)
	addi 9,9,1
	stw 9,24(31)
.L287:
	lwz 9,24(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	mr 3,9
	bl isspace
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L288
	lwz 9,24(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,43
	beq 0,.L289
	cmpwi 0,9,45
	bne 0,.L291
	li 9,1
	stw 9,12(31)
.L289:
	lwz 9,24(31)
	addi 9,9,1
	stw 9,24(31)
	b .L291
.L292:
	lwz 10,8(31)
	mr 9,10
	slwi 9,9,2
	add 9,9,10
	slwi 9,9,1
	mr 8,9
	lwz 9,24(31)
	addi 10,9,1
	stw 10,24(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	subf 9,9,8
	stw 9,8(31)
.L291:
	lwz 9,24(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L292
	lwz 9,12(31)
	cmpwi 0,9,0
	bne 0,.L293
	lwz 9,8(31)
	neg 9,9
	b .L295
.L293:
	lwz 9,8(31)
.L295:
	mr 3,9
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	li 9,0
	stw 9,8(31)
	li 9,0
	stw 9,12(31)
	b .L297
.L298:
	lwz 9,24(31)
	addi 9,9,1
	stw 9,24(31)
.L297:
	lwz 9,24(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	mr 3,9
	bl isspace
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L298
	lwz 9,24(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,43
	beq 0,.L299
	cmpwi 0,9,45
	bne 0,.L301
	li 9,1
	stw 9,12(31)
.L299:
	lwz 9,24(31)
	addi 9,9,1
	stw 9,24(31)
	b .L301
.L302:
	lwz 10,8(31)
	mr 9,10
	slwi 9,9,2
	add 9,9,10
	slwi 9,9,1
	mr 8,9
	lwz 9,24(31)
	addi 10,9,1
	stw 10,24(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	subf 9,9,8
	stw 9,8(31)
.L301:
	lwz 9,24(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L302
	lwz 9,12(31)
	cmpwi 0,9,0
	bne 0,.L303
	lwz 9,8(31)
	neg 9,9
	b .L305
.L303:
	lwz 9,8(31)
.L305:
	mr 3,9
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-96(1)
	.cfi_def_cfa_offset 96
	mflr 0
	stw 0,100(1)
	stw 18,40(1)
	stw 19,44(1)
	stw 20,48(1)
	stw 21,52(1)
	stw 22,56(1)
	stw 23,60(1)
	stw 24,64(1)
	stw 25,68(1)
	stw 26,72(1)
	stw 27,76(1)
	stw 28,80(1)
	stw 29,84(1)
	stw 31,92(1)
	.cfi_offset 65, 4
	.cfi_offset 18, -56
	.cfi_offset 19, -52
	.cfi_offset 20, -48
	.cfi_offset 21, -44
	.cfi_offset 22, -40
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	li 10,0
	li 11,0
	stw 10,8(31)
	stw 11,12(31)
	li 9,0
	stw 9,16(31)
	b .L307
.L308:
	lwz 9,24(31)
	addi 9,9,1
	stw 9,24(31)
.L307:
	lwz 9,24(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	mr 3,9
	bl isspace
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L308
	lwz 9,24(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,43
	beq 0,.L309
	cmpwi 0,9,45
	bne 0,.L311
	li 9,1
	stw 9,16(31)
.L309:
	lwz 9,24(31)
	addi 9,9,1
	stw 9,24(31)
	b .L311
.L312:
	lwz 8,8(31)
	lwz 9,12(31)
	mr 11,9
	mr 10,8
	srwi 7,11,30
	slwi 24,10,2
	or 24,7,24
	slwi 25,11,2
	mr 10,24
	mr 11,25
	addc 29,11,9
	adde 28,10,8
	srwi 9,29,31
	slwi 22,28,1
	or 22,9,22
	slwi 23,29,1
	mr 29,23
	mr 28,22
	mr 10,28
	mr 11,29
	lwz 9,24(31)
	addi 8,9,1
	stw 8,24(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	mr 19,9
	srawi 9,9,31
	mr 18,9
	subfc 21,19,11
	subfe 20,18,10
	stw 20,8(31)
	stw 21,12(31)
.L311:
	lwz 9,24(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	addi 9,9,-48
	cmplwi 0,9,9
	ble 0,.L312
	lwz 9,16(31)
	cmpwi 0,9,0
	bne 0,.L313
	lwz 10,8(31)
	lwz 11,12(31)
	subfic 27,11,0
	subfze 26,10
	b .L315
.L313:
	lwz 26,8(31)
	lwz 27,12(31)
.L315:
	mr 10,26
	mr 11,27
	mr 3,10
	mr 4,11
	addi 11,31,96
	lwz 0,4(11)
	mtlr 0
	lwz 18,-56(11)
	lwz 19,-52(11)
	lwz 20,-48(11)
	lwz 21,-44(11)
	lwz 22,-40(11)
	lwz 23,-36(11)
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_def_cfa_register 1
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
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mflr 0
	stw 0,68(1)
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	stw 6,36(31)
	stw 7,40(31)
	b .L317
.L321:
	lwz 9,32(31)
	srwi 10,9,1
	lwz 9,36(31)
	mullw 9,10,9
	lwz 10,28(31)
	add 9,10,9
	stw 9,8(31)
	lwz 9,40(31)
	lwz 4,8(31)
	lwz 3,24(31)
	mtctr 9
	bctrl
	stw 3,12(31)
	lwz 9,12(31)
	cmpwi 0,9,0
	bge 0,.L318
	lwz 9,32(31)
	srwi 9,9,1
	stw 9,32(31)
	b .L317
.L318:
	lwz 9,12(31)
	cmpwi 0,9,0
	ble 0,.L319
	lwz 10,8(31)
	lwz 9,36(31)
	add 9,10,9
	stw 9,28(31)
	lwz 9,32(31)
	srwi 9,9,1
	lwz 10,32(31)
	subf 9,9,10
	addi 9,9,-1
	stw 9,32(31)
	b .L317
.L319:
	lwz 9,8(31)
	b .L320
.L317:
	lwz 9,32(31)
	cmpwi 0,9,0
	bne 0,.L321
	li 9,0
.L320:
	mr 3,9
	addi 11,31,64
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mflr 0
	stw 0,68(1)
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	stw 6,36(31)
	stw 7,40(31)
	stw 8,44(31)
	lwz 9,28(31)
	stw 9,8(31)
	lwz 9,32(31)
	stw 9,12(31)
	b .L323
.L327:
	lwz 9,12(31)
	srawi 9,9,1
	mr 10,9
	lwz 9,36(31)
	mullw 9,10,9
	lwz 10,8(31)
	add 9,10,9
	stw 9,16(31)
	lwz 9,40(31)
	lwz 5,44(31)
	lwz 4,16(31)
	lwz 3,24(31)
	mtctr 9
	bctrl
	stw 3,20(31)
	lwz 9,20(31)
	cmpwi 0,9,0
	bne 0,.L324
	lwz 9,16(31)
	b .L325
.L324:
	lwz 9,20(31)
	cmpwi 0,9,0
	ble 0,.L326
	lwz 10,16(31)
	lwz 9,36(31)
	add 9,10,9
	stw 9,8(31)
	lwz 9,12(31)
	addi 9,9,-1
	stw 9,12(31)
.L326:
	lwz 9,12(31)
	srawi 9,9,1
	stw 9,12(31)
.L323:
	lwz 9,12(31)
	cmpwi 0,9,0
	bne 0,.L327
	li 9,0
.L325:
	mr 3,9
	addi 11,31,64
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	stw 5,16(31)
	lwz 10,12(31)
	lwz 9,16(31)
	divw 8,10,9
	lwz 9,12(31)
	lwz 10,16(31)
	divw 7,9,10
	lwz 10,16(31)
	mullw 10,7,10
	subf 10,10,9
	lwz 9,8(31)
	stw 8,0(9)
	lwz 9,8(31)
	stw 10,4(9)
	lwz 3,8(31)
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 28,16(1)
	stw 29,20(1)
	stw 31,28(1)
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 7,8(31)
	srawi 11,7,31
	lwz 7,8(31)
	srawi 10,7,31
	lwz 6,8(31)
	lwz 7,12(31)
	xor 8,10,6
	xor 9,11,7
	subfc 29,11,9
	subfe 28,10,8
	mr 8,28
	mr 9,29
	mr 11,9
	mr 10,8
	mr 3,10
	mr 4,11
	addi 11,31,32
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_register 1
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
	stw 28,48(1)
	stw 29,52(1)
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 5,32(31)
	stw 6,36(31)
	stw 7,40(31)
	stw 8,44(31)
	lwz 5,40(31)
	lwz 6,44(31)
	lwz 3,32(31)
	lwz 4,36(31)
	bl __divdi3
	mr 11,4
	mr 10,3
	mr 29,11
	mr 28,10
	lwz 10,32(31)
	lwz 11,36(31)
	lwz 5,40(31)
	lwz 6,44(31)
	mr 3,10
	mr 4,11
	bl __moddi3
	mr 11,4
	mr 10,3
	lwz 9,24(31)
	stw 28,0(9)
	stw 29,4(9)
	lwz 9,24(31)
	stw 10,8(9)
	stw 11,12(9)
	lwz 3,24(31)
	addi 11,31,64
	lwz 0,4(11)
	mtlr 0
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 9,8(31)
	srawi 10,9,31
	lwz 9,8(31)
	xor 9,10,9
	subf 9,10,9
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	stw 5,16(31)
	lwz 10,12(31)
	lwz 9,16(31)
	divw 8,10,9
	lwz 9,12(31)
	lwz 10,16(31)
	divw 7,9,10
	lwz 10,16(31)
	mullw 10,7,10
	subf 10,10,9
	lwz 9,8(31)
	stw 8,0(9)
	lwz 9,8(31)
	stw 10,4(9)
	lwz 3,8(31)
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 28,16(1)
	stw 29,20(1)
	stw 31,28(1)
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 7,8(31)
	srawi 11,7,31
	lwz 7,8(31)
	srawi 10,7,31
	lwz 6,8(31)
	lwz 7,12(31)
	xor 8,10,6
	xor 9,11,7
	subfc 29,11,9
	subfe 28,10,8
	mr 8,28
	mr 9,29
	mr 11,9
	mr 10,8
	mr 3,10
	mr 4,11
	addi 11,31,32
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_register 1
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
	stw 28,48(1)
	stw 29,52(1)
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 5,32(31)
	stw 6,36(31)
	stw 7,40(31)
	stw 8,44(31)
	lwz 5,40(31)
	lwz 6,44(31)
	lwz 3,32(31)
	lwz 4,36(31)
	bl __divdi3
	mr 11,4
	mr 10,3
	mr 29,11
	mr 28,10
	lwz 10,32(31)
	lwz 11,36(31)
	lwz 5,40(31)
	lwz 6,44(31)
	mr 3,10
	mr 4,11
	bl __moddi3
	mr 11,4
	mr 10,3
	lwz 9,24(31)
	stw 28,0(9)
	stw 29,4(9)
	lwz 9,24(31)
	stw 10,8(9)
	stw 11,12(9)
	lwz 3,24(31)
	addi 11,31,64
	lwz 0,4(11)
	mtlr 0
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	b .L343
.L345:
	lwz 9,8(31)
	addi 9,9,4
	stw 9,8(31)
.L343:
	lwz 9,8(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L344
	lwz 9,8(31)
	lwz 9,0(9)
	lwz 10,12(31)
	cmpw 0,10,9
	bne 0,.L345
.L344:
	lwz 9,8(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L346
	lwz 9,8(31)
	b .L348
.L346:
	li 9,0
.L348:
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	b .L350
.L352:
	lwz 9,8(31)
	addi 9,9,4
	stw 9,8(31)
	lwz 9,12(31)
	addi 9,9,4
	stw 9,12(31)
.L350:
	lwz 9,8(31)
	lwz 10,0(9)
	lwz 9,12(31)
	lwz 9,0(9)
	cmpw 0,10,9
	bne 0,.L351
	lwz 9,8(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L351
	lwz 9,12(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L352
.L351:
	lwz 9,8(31)
	lwz 10,0(9)
	lwz 9,12(31)
	lwz 9,0(9)
	cmpw 0,10,9
	blt 0,.L353
	lwz 9,8(31)
	lwz 9,0(9)
	lwz 10,12(31)
	lwz 10,0(10)
	srwi 7,9,31
	srawi 8,10,31
	subfc 9,9,10
	adde 9,7,8
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	b .L355
.L353:
	li 9,-1
.L355:
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	lwz 9,24(31)
	stw 9,8(31)
	nop
.L357:
	lwz 10,28(31)
	addi 9,10,4
	stw 9,28(31)
	lwz 9,24(31)
	addi 8,9,4
	stw 8,24(31)
	lwz 10,0(10)
	stw 10,0(9)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L357
	lwz 9,8(31)
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	lwz 9,24(31)
	stw 9,8(31)
	b .L360
.L361:
	lwz 9,24(31)
	addi 9,9,4
	stw 9,24(31)
.L360:
	lwz 9,24(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L361
	lwz 10,24(31)
	lwz 9,8(31)
	subf 9,9,10
	srawi 9,9,2
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	stw 5,16(31)
	b .L364
.L366:
	lwz 9,16(31)
	addi 9,9,-1
	stw 9,16(31)
	lwz 9,8(31)
	addi 9,9,4
	stw 9,8(31)
	lwz 9,12(31)
	addi 9,9,4
	stw 9,12(31)
.L364:
	lwz 9,16(31)
	cmpwi 0,9,0
	beq 0,.L365
	lwz 9,8(31)
	lwz 10,0(9)
	lwz 9,12(31)
	lwz 9,0(9)
	cmpw 0,10,9
	bne 0,.L365
	lwz 9,8(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	beq 0,.L365
	lwz 9,12(31)
	lwz 9,0(9)
	cmpwi 0,9,0
	bne 0,.L366
.L365:
	lwz 9,16(31)
	cmpwi 0,9,0
	beq 0,.L367
	lwz 9,8(31)
	lwz 10,0(9)
	lwz 9,12(31)
	lwz 9,0(9)
	cmpw 0,10,9
	blt 0,.L368
	lwz 9,8(31)
	lwz 9,0(9)
	lwz 10,12(31)
	lwz 10,0(10)
	srwi 7,9,31
	srawi 8,10,31
	subfc 9,9,10
	adde 9,7,8
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	b .L371
.L368:
	li 9,-1
	b .L371
.L367:
	li 9,0
.L371:
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	stw 5,16(31)
	b .L373
.L375:
	lwz 9,16(31)
	addi 9,9,-1
	stw 9,16(31)
	lwz 9,8(31)
	addi 9,9,4
	stw 9,8(31)
.L373:
	lwz 9,16(31)
	cmpwi 0,9,0
	beq 0,.L374
	lwz 9,8(31)
	lwz 9,0(9)
	lwz 10,12(31)
	cmpw 0,10,9
	bne 0,.L375
.L374:
	lwz 9,16(31)
	cmpwi 0,9,0
	beq 0,.L376
	lwz 9,8(31)
	b .L378
.L376:
	li 9,0
.L378:
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	stw 5,16(31)
	b .L380
.L382:
	lwz 9,16(31)
	addi 9,9,-1
	stw 9,16(31)
	lwz 9,8(31)
	addi 9,9,4
	stw 9,8(31)
	lwz 9,12(31)
	addi 9,9,4
	stw 9,12(31)
.L380:
	lwz 9,16(31)
	cmpwi 0,9,0
	beq 0,.L381
	lwz 9,8(31)
	lwz 10,0(9)
	lwz 9,12(31)
	lwz 9,0(9)
	cmpw 0,10,9
	beq 0,.L382
.L381:
	lwz 9,16(31)
	cmpwi 0,9,0
	beq 0,.L383
	lwz 9,8(31)
	lwz 10,0(9)
	lwz 9,12(31)
	lwz 9,0(9)
	cmpw 0,10,9
	blt 0,.L384
	lwz 9,8(31)
	lwz 9,0(9)
	lwz 10,12(31)
	lwz 10,0(10)
	srwi 7,9,31
	srawi 8,10,31
	subfc 9,9,10
	adde 9,7,8
	xori 9,9,0x1
	rlwinm 9,9,0,0xff
	b .L387
.L384:
	li 9,-1
	b .L387
.L383:
	li 9,0
.L387:
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	lwz 9,24(31)
	stw 9,8(31)
	b .L389
.L390:
	lwz 10,28(31)
	addi 9,10,4
	stw 9,28(31)
	lwz 9,24(31)
	addi 8,9,4
	stw 8,24(31)
	lwz 10,0(10)
	stw 10,0(9)
.L389:
	lwz 9,32(31)
	addi 10,9,-1
	stw 10,32(31)
	cmpwi 0,9,0
	bne 0,.L390
	lwz 9,8(31)
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	lwz 9,24(31)
	stw 9,8(31)
	lwz 10,24(31)
	lwz 9,28(31)
	cmpw 0,10,9
	bne 0,.L393
	lwz 9,24(31)
	b .L394
.L393:
	lwz 10,24(31)
	lwz 9,28(31)
	subf 10,9,10
	lwz 9,32(31)
	slwi 9,9,2
	cmplw 0,10,9
	bge 0,.L399
	b .L396
.L397:
	lwz 9,32(31)
	slwi 9,9,2
	lwz 10,28(31)
	add 10,10,9
	lwz 9,32(31)
	slwi 9,9,2
	lwz 8,24(31)
	add 9,8,9
	lwz 10,0(10)
	stw 10,0(9)
.L396:
	lwz 9,32(31)
	addi 10,9,-1
	stw 10,32(31)
	cmpwi 0,9,0
	bne 0,.L397
	b .L398
.L400:
	lwz 10,28(31)
	addi 9,10,4
	stw 9,28(31)
	lwz 9,24(31)
	addi 8,9,4
	stw 8,24(31)
	lwz 10,0(10)
	stw 10,0(9)
.L399:
	lwz 9,32(31)
	addi 10,9,-1
	stw 10,32(31)
	cmpwi 0,9,0
	bne 0,.L400
.L398:
	lwz 9,8(31)
.L394:
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	lwz 9,24(31)
	stw 9,8(31)
	b .L402
.L403:
	lwz 9,24(31)
	addi 10,9,4
	stw 10,24(31)
	lwz 10,28(31)
	stw 10,0(9)
.L402:
	lwz 9,32(31)
	addi 10,9,-1
	stw 10,32(31)
	cmpwi 0,9,0
	bne 0,.L403
	lwz 9,8(31)
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	lwz 9,24(31)
	stw 9,8(31)
	lwz 9,28(31)
	stw 9,12(31)
	lwz 10,8(31)
	lwz 9,12(31)
	cmplw 0,10,9
	bge 0,.L406
	lwz 10,8(31)
	lwz 9,32(31)
	add 9,10,9
	stw 9,8(31)
	lwz 10,12(31)
	lwz 9,32(31)
	add 9,10,9
	stw 9,12(31)
	b .L407
.L408:
	lwz 9,8(31)
	addi 9,9,-1
	stw 9,8(31)
	lwz 9,12(31)
	addi 9,9,-1
	stw 9,12(31)
	lwz 9,8(31)
	lbz 10,0(9)
	lwz 9,12(31)
	stb 10,0(9)
	lwz 9,32(31)
	addi 9,9,-1
	stw 9,32(31)
.L407:
	lwz 9,32(31)
	cmpwi 0,9,0
	bne 0,.L408
	b .L412
.L406:
	lwz 10,8(31)
	lwz 9,12(31)
	cmpw 0,10,9
	beq 0,.L412
	b .L410
.L411:
	lwz 10,8(31)
	addi 9,10,1
	stw 9,8(31)
	lwz 9,12(31)
	addi 8,9,1
	stw 8,12(31)
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,32(31)
	addi 9,9,-1
	stw 9,32(31)
.L410:
	lwz 9,32(31)
	cmpwi 0,9,0
	bne 0,.L411
.L412:
	nop
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 28,32(1)
	stw 29,36(1)
	stw 31,44(1)
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	stw 5,16(31)
	lwz 10,8(31)
	lwz 11,12(31)
	lwz 5,16(31)
	addi 5,5,-32
	cmpwi 0,5,0
	blt 0,.L414
	slw 6,11,5
	li 7,0
	b .L415
.L414:
	srwi 4,11,1
	lwz 5,16(31)
	subfic 5,5,31
	srw 5,4,5
	lwz 4,16(31)
	slw 6,10,4
	or 6,5,6
	lwz 5,16(31)
	slw 7,11,5
.L415:
	lwz 5,16(31)
	neg 5,5
	rlwinm 5,5,0,26,31
	addi 5,5,-32
	cmpwi 0,5,0
	blt 0,.L416
	srw 9,10,5
	li 8,0
	b .L417
.L416:
	slwi 4,10,1
	lwz 5,16(31)
	neg 5,5
	rlwinm 5,5,0,26,31
	subfic 5,5,31
	slw 4,4,5
	lwz 5,16(31)
	neg 5,5
	rlwinm 5,5,0,26,31
	srw 9,11,5
	or 9,4,9
	lwz 5,16(31)
	neg 5,5
	rlwinm 5,5,0,26,31
	srw 8,10,5
.L417:
	or 28,6,8
	or 29,7,9
	mr 8,28
	mr 9,29
	mr 11,9
	mr 10,8
	mr 3,10
	mr 4,11
	addi 11,31,48
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 28,32(1)
	stw 29,36(1)
	stw 31,44(1)
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	stw 5,16(31)
	lwz 10,8(31)
	lwz 11,12(31)
	lwz 5,16(31)
	addi 5,5,-32
	cmpwi 0,5,0
	blt 0,.L420
	srw 7,10,5
	li 6,0
	b .L421
.L420:
	slwi 4,10,1
	lwz 5,16(31)
	subfic 5,5,31
	slw 5,4,5
	lwz 4,16(31)
	srw 7,11,4
	or 7,5,7
	lwz 5,16(31)
	srw 6,10,5
.L421:
	lwz 5,16(31)
	neg 5,5
	rlwinm 5,5,0,26,31
	addi 5,5,-32
	cmpwi 0,5,0
	blt 0,.L422
	slw 8,11,5
	li 9,0
	b .L423
.L422:
	srwi 4,11,1
	lwz 5,16(31)
	neg 5,5
	rlwinm 5,5,0,26,31
	subfic 5,5,31
	srw 4,4,5
	lwz 5,16(31)
	neg 5,5
	rlwinm 5,5,0,26,31
	slw 8,10,5
	or 8,4,8
	lwz 5,16(31)
	neg 5,5
	rlwinm 5,5,0,26,31
	slw 9,11,5
.L423:
	or 28,6,8
	or 29,7,9
	mr 8,28
	mr 9,29
	mr 11,9
	mr 10,8
	mr 3,10
	mr 4,11
	addi 11,31,48
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 10,8(31)
	lwz 9,12(31)
	rotlw 9,10,9
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 9,12(31)
	subfic 9,9,32
	lwz 10,8(31)
	rotlw 9,10,9
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 10,8(31)
	lwz 9,12(31)
	rotlw 9,10,9
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 9,12(31)
	subfic 9,9,32
	lwz 10,8(31)
	rotlw 9,10,9
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 4,12(31)
	sth 9,8(31)
	lhz 10,8(31)
	lwz 9,12(31)
	slw 9,10,9
	mr 8,9
	lhz 10,8(31)
	lwz 9,12(31)
	subfic 9,9,16
	srw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xffff
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 4,12(31)
	sth 9,8(31)
	lhz 10,8(31)
	lwz 9,12(31)
	srw 9,10,9
	mr 8,9
	lhz 10,8(31)
	lwz 9,12(31)
	subfic 9,9,16
	slw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xffff
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 4,12(31)
	stb 9,8(31)
	lbz 10,8(31)
	lwz 9,12(31)
	slw 9,10,9
	mr 8,9
	lbz 10,8(31)
	lwz 9,12(31)
	subfic 9,9,8
	srw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 4,12(31)
	stb 9,8(31)
	lbz 10,8(31)
	lwz 9,12(31)
	srw 9,10,9
	mr 8,9
	lbz 10,8(31)
	lwz 9,12(31)
	subfic 9,9,8
	slw 9,10,9
	or 9,8,9
	rlwinm 9,9,0,0xff
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	sth 9,24(31)
	li 9,255
	stw 9,8(31)
	lhz 10,24(31)
	lwz 9,8(31)
	slwi 9,9,8
	and 9,10,9
	srwi 9,9,8
	mr 10,9
	lwz 9,8(31)
	mr 8,9
	lhz 9,24(31)
	and 9,9,8
	slwi 9,9,8
	or 9,10,9
	rlwinm 9,9,0,0xffff
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	li 9,255
	stw 9,8(31)
	lwz 9,8(31)
	slwi 10,9,24
	lwz 9,24(31)
	and 9,10,9
	srwi 10,9,24
	lwz 9,8(31)
	slwi 8,9,16
	lwz 9,24(31)
	and 9,8,9
	srwi 9,9,8
	or 10,10,9
	lwz 9,8(31)
	slwi 8,9,8
	lwz 9,24(31)
	and 9,8,9
	slwi 9,9,8
	or 10,10,9
	lwz 8,24(31)
	lwz 9,8(31)
	and 9,8,9
	slwi 9,9,24
	or 9,10,9
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-272(1)
	.cfi_def_cfa_offset 272
	stw 14,200(1)
	stw 15,204(1)
	stw 16,208(1)
	stw 17,212(1)
	stw 18,216(1)
	stw 19,220(1)
	stw 20,224(1)
	stw 21,228(1)
	stw 22,232(1)
	stw 23,236(1)
	stw 24,240(1)
	stw 25,244(1)
	stw 26,248(1)
	stw 27,252(1)
	stw 28,256(1)
	stw 29,260(1)
	stw 31,268(1)
	.cfi_offset 14, -72
	.cfi_offset 15, -68
	.cfi_offset 16, -64
	.cfi_offset 17, -60
	.cfi_offset 18, -56
	.cfi_offset 19, -52
	.cfi_offset 20, -48
	.cfi_offset 21, -44
	.cfi_offset 22, -40
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	li 10,0
	li 11,255
	stw 10,8(31)
	stw 11,12(31)
	lwz 9,12(31)
	slwi 6,9,24
	li 7,0
	lwz 10,24(31)
	lwz 11,28(31)
	and 26,6,10
	and 27,7,11
	srwi 17,26,24
	li 16,0
	lwz 9,12(31)
	slwi 28,9,16
	li 29,0
	lwz 10,24(31)
	lwz 11,28(31)
	and 9,28,10
	stw 9,72(31)
	and 9,29,11
	stw 9,76(31)
	lwz 9,72(31)
	srwi 25,9,8
	li 24,0
	or 9,16,24
	stw 9,80(31)
	or 9,17,25
	stw 9,84(31)
	lwz 9,12(31)
	slwi 18,9,8
	li 19,0
	lwz 10,24(31)
	lwz 11,28(31)
	and 20,18,10
	and 21,19,11
	slwi 9,20,8
	srwi 23,21,24
	or 23,9,23
	srwi 22,20,24
	lwz 9,80(31)
	lwz 10,84(31)
	mr 8,9
	or 8,8,22
	stw 8,88(31)
	mr 9,10
	or 9,9,23
	stw 9,92(31)
	lwz 9,12(31)
	slwi 9,9,0
	stw 9,96(31)
	li 6,0
	stw 6,100(31)
	lwz 10,24(31)
	lwz 11,28(31)
	lwz 8,96(31)
	lwz 9,100(31)
	mr 7,8
	and 7,7,10
	stw 7,104(31)
	and 9,9,11
	stw 9,108(31)
	lwz 10,104(31)
	lwz 11,108(31)
	mr 9,10
	slwi 9,9,24
	mr 8,11
	srwi 15,8,8
	or 15,9,15
	mr 9,10
	srwi 14,9,8
	lwz 9,88(31)
	lwz 10,92(31)
	mr 8,9
	or 8,8,14
	stw 8,112(31)
	mr 9,10
	or 9,9,15
	stw 9,116(31)
	lwz 9,12(31)
	srwi 10,9,8
	lwz 9,8(31)
	slwi 9,9,24
	stw 9,32(31)
	lwz 9,32(31)
	or 9,10,9
	stw 9,32(31)
	lwz 9,12(31)
	slwi 9,9,24
	stw 9,36(31)
	lwz 10,24(31)
	lwz 11,28(31)
	lwz 8,32(31)
	lwz 9,36(31)
	mr 7,8
	and 7,7,10
	stw 7,120(31)
	and 9,9,11
	stw 9,124(31)
	lwz 10,120(31)
	lwz 11,124(31)
	mr 9,11
	srwi 9,9,24
	mr 8,10
	slwi 8,8,8
	stw 8,40(31)
	lwz 8,40(31)
	or 9,9,8
	stw 9,40(31)
	mr 9,11
	slwi 9,9,8
	stw 9,44(31)
	lwz 7,112(31)
	lwz 8,116(31)
	mr 5,7
	lwz 9,40(31)
	lwz 10,44(31)
	mr 4,9
	or 5,5,4
	stw 5,128(31)
	mr 9,10
	or 9,8,9
	stw 9,132(31)
	lwz 9,12(31)
	srwi 9,9,16
	lwz 10,8(31)
	slwi 10,10,16
	stw 10,48(31)
	lwz 10,48(31)
	or 9,9,10
	stw 9,48(31)
	lwz 9,12(31)
	slwi 9,9,16
	stw 9,52(31)
	lwz 10,24(31)
	lwz 11,28(31)
	lwz 8,48(31)
	lwz 9,52(31)
	mr 7,8
	and 7,7,10
	stw 7,136(31)
	and 9,9,11
	stw 9,140(31)
	lwz 10,136(31)
	lwz 11,140(31)
	mr 9,11
	srwi 9,9,8
	mr 8,10
	slwi 8,8,24
	stw 8,56(31)
	lwz 8,56(31)
	or 9,9,8
	stw 9,56(31)
	mr 9,11
	slwi 9,9,24
	stw 9,60(31)
	lwz 7,128(31)
	lwz 8,132(31)
	mr 5,7
	lwz 9,56(31)
	lwz 10,60(31)
	mr 4,9
	or 5,5,4
	stw 5,144(31)
	mr 9,10
	or 9,8,9
	stw 9,148(31)
	lwz 9,12(31)
	srwi 9,9,24
	lwz 10,8(31)
	slwi 10,10,8
	stw 10,64(31)
	lwz 10,64(31)
	or 9,9,10
	stw 9,64(31)
	lwz 9,12(31)
	slwi 9,9,8
	stw 9,68(31)
	lwz 10,24(31)
	lwz 11,28(31)
	lwz 8,64(31)
	lwz 9,68(31)
	mr 7,8
	and 7,7,10
	stw 7,152(31)
	and 9,9,11
	stw 9,156(31)
	lwz 9,156(31)
	slwi 9,9,8
	stw 9,160(31)
	stw 6,164(31)
	lwz 7,144(31)
	lwz 8,148(31)
	mr 5,7
	lwz 9,160(31)
	lwz 10,164(31)
	mr 4,9
	or 5,5,4
	stw 5,168(31)
	mr 9,10
	or 9,8,9
	stw 9,172(31)
	lwz 8,24(31)
	lwz 9,28(31)
	lwz 10,8(31)
	lwz 11,12(31)
	and 7,8,10
	stw 7,176(31)
	and 9,9,11
	stw 9,180(31)
	lwz 9,180(31)
	slwi 9,9,24
	stw 9,184(31)
	stw 6,188(31)
	lwz 7,168(31)
	lwz 8,172(31)
	mr 6,7
	lwz 9,184(31)
	lwz 10,188(31)
	mr 5,9
	or 6,6,5
	stw 6,192(31)
	mr 9,10
	or 9,8,9
	stw 9,196(31)
	lwz 10,192(31)
	lwz 11,196(31)
	mr 3,10
	mr 4,11
	addi 11,31,272
	lwz 14,-72(11)
	lwz 15,-68(11)
	lwz 16,-64(11)
	lwz 17,-60(11)
	lwz 18,-56(11)
	lwz 19,-52(11)
	lwz 20,-48(11)
	lwz 21,-44(11)
	lwz 22,-40(11)
	lwz 23,-36(11)
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	li 9,0
	stw 9,8(31)
	b .L448
.L451:
	lwz 10,24(31)
	lwz 9,8(31)
	srw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L449
	lwz 9,8(31)
	addi 9,9,1
	b .L450
.L449:
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
.L448:
	lwz 9,8(31)
	cmplwi 0,9,31
	ble 0,.L451
	li 9,0
.L450:
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	stw 30,8(1)
	stw 31,12(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L453
	li 9,0
	b .L454
.L453:
	li 30,1
	b .L455
.L456:
	srawi 9,9,1
	addi 30,30,1
.L455:
	rlwinm 10,9,0,31,31
	cmpwi 0,10,0
	beq 0,.L456
	mr 9,30
.L454:
	mr 3,9
	addi 11,31,16
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lis 4,0xff7f
	ori 4,4,0xffff
	lwz 3,8(31)
	bl __ltsf2
	mr 9,3
	cmpwi 0,9,0
	blt 0,.L458
	lis 4,0x7f7f
	ori 4,4,0xffff
	lwz 3,8(31)
	bl __gtsf2
	mr 9,3
	cmpwi 0,9,0
	ble 0,.L463
.L458:
	li 9,1
	b .L462
.L463:
	li 9,0
.L462:
	mr 3,9
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lis 5,0xffef
	ori 5,5,0xffff
	li 6,-1
	lwz 3,8(31)
	lwz 4,12(31)
	bl __ltdf2
	mr 9,3
	cmpwi 0,9,0
	blt 0,.L465
	lis 5,0x7fef
	ori 5,5,0xffff
	li 6,-1
	lwz 3,8(31)
	lwz 4,12(31)
	bl __gtdf2
	mr 9,3
	cmpwi 0,9,0
	ble 0,.L470
.L465:
	li 9,1
	b .L469
.L470:
	li 9,0
.L469:
	mr 3,9
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,31,16
	stw 3,0(9)
	stw 4,4(9)
	stw 5,8(9)
	stw 6,12(9)
	addi 6,31,16
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
	cmpwi 0,9,0
	blt 0,.L472
	addi 6,31,16
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
	ble 0,.L477
.L472:
	li 9,1
	b .L476
.L477:
	li 9,0
.L476:
	mr 3,9
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 3,12(31)
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
	lwz 7,8(31)
	stw 8,0(7)
	stw 9,4(7)
	stw 10,8(7)
	stw 11,12(7)
	nop
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	lwz 4,24(31)
	lwz 3,24(31)
	bl __unordsf2
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L480
	lwz 9,24(31)
	mr 4,9
	mr 3,9
	bl __addsf3
	mr 9,3
	mr 4,9
	lwz 3,24(31)
	bl __nesf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L480
	lwz 9,28(31)
	cmpwi 0,9,0
	bge 0,.L482
	lis 9,0x3f00
	b .L483
.L482:
	lis 9,0x4000
.L483:
	stw 9,8(31)
.L486:
	lwz 9,28(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L484
	lwz 4,8(31)
	lwz 3,24(31)
	bl __mulsf3
	mr 9,3
	stw 9,24(31)
.L484:
	lwz 9,28(31)
	srawi 9,9,1
	addze 9,9
	stw 9,28(31)
	lwz 9,28(31)
	cmpwi 0,9,0
	beq 0,.L489
	lwz 4,8(31)
	lwz 3,8(31)
	bl __mulsf3
	mr 9,3
	stw 9,8(31)
	b .L486
.L489:
	nop
.L480:
	lwz 9,24(31)
	mr 3,9
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	lwz 5,24(31)
	lwz 6,28(31)
	lwz 3,24(31)
	lwz 4,28(31)
	bl __unorddf2
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L491
	lwz 10,24(31)
	lwz 11,28(31)
	mr 5,10
	mr 6,11
	mr 3,10
	mr 4,11
	bl __adddf3
	mr 11,4
	mr 10,3
	mr 5,10
	mr 6,11
	lwz 3,24(31)
	lwz 4,28(31)
	bl __nedf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L491
	lwz 9,32(31)
	cmpwi 0,9,0
	bge 0,.L493
	lis 10,0x3fe0
	li 11,0
	b .L494
.L493:
	lis 10,0x4000
	li 11,0
.L494:
	stw 10,8(31)
	stw 11,12(31)
.L497:
	lwz 9,32(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L495
	lwz 5,8(31)
	lwz 6,12(31)
	lwz 3,24(31)
	lwz 4,28(31)
	bl __muldf3
	mr 11,4
	mr 10,3
	stw 10,24(31)
	stw 11,28(31)
.L495:
	lwz 9,32(31)
	srawi 9,9,1
	addze 9,9
	stw 9,32(31)
	lwz 9,32(31)
	cmpwi 0,9,0
	beq 0,.L500
	lwz 5,8(31)
	lwz 6,12(31)
	lwz 3,8(31)
	lwz 4,12(31)
	bl __muldf3
	mr 11,4
	mr 10,3
	stw 10,8(31)
	stw 11,12(31)
	b .L497
.L500:
	nop
.L491:
	lwz 10,24(31)
	lwz 11,28(31)
	mr 3,10
	mr 4,11
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-96(1)
	.cfi_def_cfa_offset 96
	mflr 0
	stw 0,100(1)
	stw 24,64(1)
	stw 25,68(1)
	stw 26,72(1)
	stw 27,76(1)
	stw 31,92(1)
	.cfi_offset 65, 4
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	addi 9,31,48
	stw 3,0(9)
	stw 4,4(9)
	stw 5,8(9)
	stw 6,12(9)
	stw 7,40(31)
	addi 9,31,48
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
	bne 0,.L502
	addi 9,31,48
	lwz 24,0(9)
	lwz 25,4(9)
	lwz 26,8(9)
	lwz 27,12(9)
	mr 7,24
	mr 8,25
	mr 9,26
	mr 10,27
	mr 3,24
	mr 4,25
	mr 5,26
	mr 6,27
	bl __gcc_qadd
	mr 11,6
	mr 10,5
	mr 9,4
	mr 8,3
	addi 6,31,48
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
	beq 0,.L502
	lwz 9,40(31)
	cmpwi 0,9,0
	bge 0,.L504
	lis 8,0x3fe0
	li 9,0
	li 10,0
	li 11,0
	b .L505
.L504:
	lis 8,0x4000
	li 9,0
	li 10,0
	li 11,0
.L505:
	addi 7,31,16
	stw 8,0(7)
	stw 9,4(7)
	stw 10,8(7)
	stw 11,12(7)
.L508:
	lwz 9,40(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L506
	addi 9,31,16
	addi 6,31,48
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
	addi 7,31,48
	stw 8,0(7)
	stw 9,4(7)
	stw 10,8(7)
	stw 11,12(7)
.L506:
	lwz 9,40(31)
	srawi 9,9,1
	addze 9,9
	stw 9,40(31)
	lwz 9,40(31)
	cmpwi 0,9,0
	beq 0,.L511
	addi 9,31,16
	addi 6,31,16
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
	addi 7,31,16
	stw 8,0(7)
	stw 9,4(7)
	stw 10,8(7)
	stw 11,12(7)
	b .L508
.L511:
	nop
.L502:
	addi 9,31,48
	lwz 10,8(9)
	lwz 11,12(9)
	lwz 8,0(9)
	lwz 9,4(9)
	mr 3,8
	mr 4,9
	mr 5,10
	mr 6,11
	addi 11,31,96
	lwz 0,4(11)
	mtlr 0
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	lwz 9,28(31)
	stw 9,8(31)
	lwz 9,24(31)
	stw 9,12(31)
	b .L513
.L514:
	lwz 9,8(31)
	addi 10,9,1
	stw 10,8(31)
	lbz 8,0(9)
	lwz 9,12(31)
	addi 10,9,1
	stw 10,12(31)
	lbz 10,0(9)
	xor 10,8,10
	stb 10,0(9)
	lwz 9,32(31)
	addi 9,9,-1
	stw 9,32(31)
.L513:
	lwz 9,32(31)
	cmpwi 0,9,0
	bne 0,.L514
	lwz 9,24(31)
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	lwz 3,24(31)
	bl strlen
	mr 10,3
	lwz 9,24(31)
	add 9,9,10
	stw 9,8(31)
	b .L517
.L519:
	lwz 9,28(31)
	addi 9,9,1
	stw 9,28(31)
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
	lwz 9,32(31)
	addi 9,9,-1
	stw 9,32(31)
.L517:
	lwz 9,32(31)
	cmpwi 0,9,0
	beq 0,.L518
	lwz 9,28(31)
	lbz 10,0(9)
	lwz 9,8(31)
	stb 10,0(9)
	lwz 9,8(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L519
.L518:
	lwz 9,32(31)
	cmpwi 0,9,0
	bne 0,.L520
	lwz 9,8(31)
	li 10,0
	stb 10,0(9)
.L520:
	lwz 9,24(31)
	mr 3,9
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	li 9,0
	stw 9,8(31)
	b .L523
.L528:
	nop
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
.L523:
	lwz 10,8(31)
	lwz 9,28(31)
	cmplw 0,10,9
	bge 0,.L524
	lwz 10,24(31)
	lwz 9,8(31)
	add 9,10,9
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L528
.L524:
	lwz 9,8(31)
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	b .L530
.L534:
	lwz 9,28(31)
	stw 9,8(31)
	b .L531
.L533:
	lwz 9,8(31)
	addi 10,9,1
	stw 10,8(31)
	lbz 10,0(9)
	lwz 9,24(31)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	bne 0,.L531
	lwz 9,24(31)
	b .L532
.L531:
	lwz 9,8(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L533
	lwz 9,24(31)
	addi 9,9,1
	stw 9,24(31)
.L530:
	lwz 9,24(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	bne 0,.L534
	li 9,0
.L532:
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stw 4,24(31)
	li 10,0
	stw 10,8(31)
.L537:
	lbz 10,0(9)
	rlwinm 10,10,0,0xff
	lwz 8,24(31)
	cmpw 0,8,10
	bne 0,.L536
	stw 9,8(31)
.L536:
	mr 10,9
	addi 9,10,1
	lbz 10,0(10)
	rlwinm 10,10,0,0xff
	cmpwi 0,10,0
	bne 0,.L537
	lwz 9,8(31)
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	lwz 9,24(31)
	stw 9,8(31)
	lwz 3,28(31)
	bl strlen
	stw 3,12(31)
	lwz 9,12(31)
	cmpwi 0,9,0
	bne 0,.L542
	lwz 9,24(31)
	b .L541
.L544:
	lwz 5,12(31)
	lwz 4,28(31)
	lwz 3,8(31)
	bl strncmp
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L543
	lwz 9,8(31)
	b .L541
.L543:
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
.L542:
	lwz 9,28(31)
	lbz 9,0(9)
	rlwinm 9,9,0,0xff
	mr 4,9
	lwz 3,8(31)
	bl strchr
	stw 3,8(31)
	lwz 9,8(31)
	cmpwi 0,9,0
	bne 0,.L544
	li 9,0
.L541:
	mr 3,9
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	stw 5,16(31)
	stw 6,20(31)
	li 5,0
	li 6,0
	lwz 3,8(31)
	lwz 4,12(31)
	bl __ltdf2
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L546
	li 5,0
	li 6,0
	lwz 3,16(31)
	lwz 4,20(31)
	bl __gtdf2
	mr 9,3
	cmpwi 0,9,0
	bgt 0,.L548
.L546:
	li 5,0
	li 6,0
	lwz 3,8(31)
	lwz 4,12(31)
	bl __gtdf2
	mr 9,3
	cmpwi 0,9,0
	ble 0,.L549
	li 5,0
	li 6,0
	lwz 3,16(31)
	lwz 4,20(31)
	bl __ltdf2
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L549
.L548:
	lwz 9,8(31)
	xoris 28,9,0x8000
	lwz 29,12(31)
	b .L552
.L549:
	lwz 28,8(31)
	lwz 29,12(31)
.L552:
	mr 10,28
	mr 11,29
	mr 3,10
	mr 4,11
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_register 1
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
	mflr 0
	stw 0,52(1)
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	stw 6,36(31)
	lwz 10,28(31)
	lwz 9,36(31)
	subf 9,9,10
	lwz 10,24(31)
	add 9,10,9
	stw 9,12(31)
	lwz 9,36(31)
	cmpwi 0,9,0
	bne 0,.L556
	lwz 9,24(31)
	b .L557
.L556:
	lwz 10,28(31)
	lwz 9,36(31)
	subfc 9,9,10
	subfe 9,9,9
	neg 9,9
	rlwinm 9,9,0,0xff
	cmpwi 0,9,0
	beq 0,.L558
	li 9,0
	b .L557
.L558:
	lwz 9,24(31)
	stw 9,8(31)
	b .L559
.L561:
	lwz 9,8(31)
	lbz 10,0(9)
	lwz 9,32(31)
	lbz 9,0(9)
	rlwinm 10,10,0,0xff
	rlwinm 9,9,0,0xff
	cmpw 0,10,9
	bne 0,.L560
	lwz 9,8(31)
	addi 10,9,1
	lwz 9,32(31)
	addi 8,9,1
	lwz 9,36(31)
	addi 9,9,-1
	mr 5,9
	mr 4,8
	mr 3,10
	bl memcmp
	mr 9,3
	cmpwi 0,9,0
	bne 0,.L560
	lwz 9,8(31)
	b .L557
.L560:
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
.L559:
	lwz 10,8(31)
	lwz 9,12(31)
	cmplw 0,10,9
	ble 0,.L561
	li 9,0
.L557:
	mr 3,9
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	stw 5,16(31)
	lwz 5,16(31)
	lwz 4,12(31)
	lwz 3,8(31)
	bl memcpy
	mr 10,3
	lwz 9,16(31)
	add 9,10,9
	mr 3,9
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 26,40(1)
	stw 27,44(1)
	stw 28,48(1)
	stw 29,52(1)
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	li 9,0
	stw 9,12(31)
	li 9,0
	stw 9,8(31)
	li 5,0
	li 6,0
	lwz 3,24(31)
	lwz 4,28(31)
	bl __ltdf2
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L565
	lwz 9,24(31)
	xoris 26,9,0x8000
	lwz 27,28(31)
	stw 26,24(31)
	stw 27,28(31)
	li 9,1
	stw 9,8(31)
.L565:
	lis 5,0x3ff0
	li 6,0
	lwz 3,24(31)
	lwz 4,28(31)
	bl __gedf2
	mr 9,3
	cmpwi 0,9,0
	blt 0,.L582
	b .L569
.L570:
	lwz 9,12(31)
	addi 9,9,1
	stw 9,12(31)
	lis 5,0x4000
	li 6,0
	lwz 3,24(31)
	lwz 4,28(31)
	bl __divdf3
	mr 11,4
	mr 10,3
	stw 10,24(31)
	stw 11,28(31)
.L569:
	lis 5,0x3ff0
	li 6,0
	lwz 3,24(31)
	lwz 4,28(31)
	bl __gedf2
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L570
	b .L571
.L582:
	lis 5,0x3fe0
	li 6,0
	lwz 3,24(31)
	lwz 4,28(31)
	bl __ltdf2
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L571
	li 5,0
	li 6,0
	lwz 3,24(31)
	lwz 4,28(31)
	bl __nedf2
	mr 9,3
	cmpwi 0,9,0
	beq 0,.L571
	b .L574
.L575:
	lwz 9,12(31)
	addi 9,9,-1
	stw 9,12(31)
	lwz 10,24(31)
	lwz 11,28(31)
	mr 5,10
	mr 6,11
	mr 3,10
	mr 4,11
	bl __adddf3
	mr 11,4
	mr 10,3
	stw 10,24(31)
	stw 11,28(31)
.L574:
	lis 5,0x3fe0
	li 6,0
	lwz 3,24(31)
	lwz 4,28(31)
	bl __ltdf2
	mr 9,3
	cmpwi 0,9,0
	blt 0,.L575
.L571:
	lwz 9,32(31)
	lwz 10,12(31)
	stw 10,0(9)
	lwz 9,8(31)
	cmpwi 0,9,0
	beq 0,.L576
	lwz 9,24(31)
	xoris 28,9,0x8000
	lwz 29,28(31)
	stw 28,24(31)
	stw 29,28(31)
.L576:
	lwz 10,24(31)
	lwz 11,28(31)
	mr 3,10
	mr 4,11
	addi 11,31,64
	lwz 0,4(11)
	mtlr 0
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_def_cfa_register 1
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
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	stw 26,40(1)
	stw 27,44(1)
	stw 28,48(1)
	stw 29,52(1)
	stw 31,60(1)
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	stw 6,36(31)
	li 6,0
	li 7,0
	stw 6,8(31)
	stw 7,12(31)
	lwz 6,24(31)
	lwz 7,28(31)
	stw 6,16(31)
	stw 7,20(31)
	b .L584
.L587:
	lwz 6,16(31)
	lwz 7,20(31)
	li 28,0
	rlwinm 29,7,0,31,31
	mr 7,28
	or 7,7,29
	cmpwi 0,7,0
	beq 0,.L585
	lwz 4,8(31)
	lwz 5,12(31)
	lwz 6,32(31)
	lwz 7,36(31)
	addc 27,5,7
	adde 26,4,6
	stw 26,8(31)
	stw 27,12(31)
.L585:
	lwz 7,36(31)
	srwi 7,7,31
	lwz 6,32(31)
	slwi 10,6,1
	or 10,7,10
	lwz 7,36(31)
	slwi 11,7,1
	stw 10,32(31)
	stw 11,36(31)
	lwz 7,16(31)
	slwi 7,7,31
	lwz 6,20(31)
	srwi 9,6,1
	or 9,7,9
	lwz 7,16(31)
	srwi 8,7,1
	stw 8,16(31)
	stw 9,20(31)
.L584:
	lwz 7,16(31)
	lwz 6,20(31)
	or 7,7,6
	cmpwi 0,7,0
	bne 0,.L587
	lwz 10,8(31)
	lwz 11,12(31)
	mr 3,10
	mr 4,11
	addi 11,31,64
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	li 9,1
	stw 9,8(31)
	li 9,0
	stw 9,12(31)
	b .L590
.L592:
	lwz 9,28(31)
	slwi 9,9,1
	stw 9,28(31)
	lwz 9,8(31)
	slwi 9,9,1
	stw 9,8(31)
.L590:
	lwz 10,28(31)
	lwz 9,24(31)
	cmplw 0,10,9
	bge 0,.L593
	lwz 9,8(31)
	cmpwi 0,9,0
	beq 0,.L593
	lwz 9,28(31)
	cmpwi 0,9,0
	bge 0,.L592
	b .L593
.L595:
	lwz 10,24(31)
	lwz 9,28(31)
	cmplw 0,10,9
	blt 0,.L594
	lwz 10,24(31)
	lwz 9,28(31)
	subf 9,9,10
	stw 9,24(31)
	lwz 10,12(31)
	lwz 9,8(31)
	or 9,10,9
	stw 9,12(31)
.L594:
	lwz 9,8(31)
	srwi 9,9,1
	stw 9,8(31)
	lwz 9,28(31)
	srwi 9,9,1
	stw 9,28(31)
.L593:
	lwz 9,8(31)
	cmpwi 0,9,0
	bne 0,.L595
	lwz 9,32(31)
	cmpwi 0,9,0
	beq 0,.L596
	lwz 9,24(31)
	b .L597
.L596:
	lwz 9,12(31)
.L597:
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	stb 9,24(31)
	lbz 9,24(31)
	cmpwi 0,9,0
	bne 0,.L599
	li 9,7
	b .L600
.L599:
	lbz 9,24(31)
	slwi 9,9,8
	cntlzw 9,9
	stw 9,8(31)
	lwz 9,8(31)
	addi 9,9,-1
.L600:
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	lwz 9,24(31)
	cmpwi 0,9,0
	bge 0,.L602
	lwz 8,24(31)
	lwz 9,28(31)
	not 10,8
	not 11,9
	stw 10,24(31)
	stw 11,28(31)
.L602:
	lwz 9,24(31)
	lwz 10,28(31)
	or 9,9,10
	cmpwi 0,9,0
	bne 0,.L604
	li 9,63
	b .L605
.L604:
	lwz 10,24(31)
	lwz 11,28(31)
	cmpwi 0,10,0
	beq 0,.L606
	cntlzw 9,10
	b .L607
.L606:
	cntlzw 9,11
	addi 9,9,32
.L607:
	stw 9,8(31)
	lwz 9,8(31)
	addi 9,9,-1
.L605:
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	li 9,0
	stw 9,8(31)
	b .L609
.L611:
	lwz 9,24(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L610
	lwz 10,8(31)
	lwz 9,28(31)
	add 9,10,9
	stw 9,8(31)
.L610:
	lwz 9,24(31)
	srwi 9,9,1
	stw 9,24(31)
	lwz 9,28(31)
	slwi 9,9,1
	stw 9,28(31)
.L609:
	lwz 9,24(31)
	cmpwi 0,9,0
	bne 0,.L611
	lwz 9,8(31)
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,60(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,40(31)
	stw 4,44(31)
	stw 5,48(31)
	lwz 9,48(31)
	srwi 9,9,3
	stw 9,16(31)
	lwz 9,48(31)
	rlwinm 9,9,0,0,28
	stw 9,12(31)
	lwz 9,40(31)
	stw 9,20(31)
	lwz 9,44(31)
	stw 9,24(31)
	lwz 10,20(31)
	lwz 9,24(31)
	cmplw 0,10,9
	blt 0,.L614
	lwz 10,24(31)
	lwz 9,48(31)
	add 9,10,9
	lwz 10,20(31)
	cmplw 0,10,9
	ble 0,.L621
.L614:
	li 9,0
	stw 9,8(31)
	b .L616
.L617:
	lwz 9,8(31)
	slwi 9,9,3
	lwz 10,44(31)
	add 10,10,9
	lwz 9,8(31)
	slwi 9,9,3
	lwz 8,40(31)
	add 9,8,9
	lwz 11,4(10)
	lwz 10,0(10)
	stw 10,0(9)
	stw 11,4(9)
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
.L616:
	lwz 10,8(31)
	lwz 9,16(31)
	cmplw 0,10,9
	blt 0,.L617
	b .L618
.L619:
	lwz 10,24(31)
	lwz 9,12(31)
	add 10,10,9
	lwz 8,20(31)
	lwz 9,12(31)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,12(31)
	addi 9,9,1
	stw 9,12(31)
.L618:
	lwz 10,48(31)
	lwz 9,12(31)
	cmplw 0,10,9
	bgt 0,.L619
	b .L620
.L622:
	lwz 10,24(31)
	lwz 9,48(31)
	add 10,10,9
	lwz 8,20(31)
	lwz 9,48(31)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
.L621:
	lwz 9,48(31)
	addi 10,9,-1
	stw 10,48(31)
	cmpwi 0,9,0
	bne 0,.L622
	nop
.L620:
	nop
	addi 11,31,64
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	lwz 9,32(31)
	srwi 9,9,1
	stw 9,12(31)
	lwz 9,24(31)
	stw 9,16(31)
	lwz 9,28(31)
	stw 9,20(31)
	lwz 10,16(31)
	lwz 9,20(31)
	cmplw 0,10,9
	blt 0,.L624
	lwz 10,20(31)
	lwz 9,32(31)
	add 9,10,9
	lwz 10,16(31)
	cmplw 0,10,9
	ble 0,.L630
.L624:
	li 9,0
	stw 9,8(31)
	b .L626
.L627:
	lwz 9,8(31)
	slwi 9,9,1
	lwz 10,28(31)
	add 10,10,9
	lwz 9,8(31)
	slwi 9,9,1
	lwz 8,24(31)
	add 9,8,9
	lhz 10,0(10)
	sth 10,0(9)
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
.L626:
	lwz 10,8(31)
	lwz 9,12(31)
	cmplw 0,10,9
	blt 0,.L627
	lwz 9,32(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L629
	lwz 9,32(31)
	addi 9,9,-1
	lwz 10,20(31)
	add 10,10,9
	lwz 9,32(31)
	addi 9,9,-1
	lwz 8,16(31)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
	b .L629
.L631:
	lwz 10,20(31)
	lwz 9,32(31)
	add 10,10,9
	lwz 8,16(31)
	lwz 9,32(31)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
.L630:
	lwz 9,32(31)
	addi 10,9,-1
	stw 10,32(31)
	cmpwi 0,9,0
	bne 0,.L631
	nop
.L629:
	nop
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,60(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,40(31)
	stw 4,44(31)
	stw 5,48(31)
	lwz 9,48(31)
	srwi 9,9,2
	stw 9,16(31)
	lwz 9,48(31)
	rlwinm 9,9,0,0,29
	stw 9,12(31)
	lwz 9,40(31)
	stw 9,20(31)
	lwz 9,44(31)
	stw 9,24(31)
	lwz 10,20(31)
	lwz 9,24(31)
	cmplw 0,10,9
	blt 0,.L633
	lwz 10,24(31)
	lwz 9,48(31)
	add 9,10,9
	lwz 10,20(31)
	cmplw 0,10,9
	ble 0,.L640
.L633:
	li 9,0
	stw 9,8(31)
	b .L635
.L636:
	lwz 9,8(31)
	slwi 9,9,2
	lwz 10,44(31)
	add 10,10,9
	lwz 9,8(31)
	slwi 9,9,2
	lwz 8,40(31)
	add 9,8,9
	lwz 10,0(10)
	stw 10,0(9)
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
.L635:
	lwz 10,8(31)
	lwz 9,16(31)
	cmplw 0,10,9
	blt 0,.L636
	b .L637
.L638:
	lwz 10,24(31)
	lwz 9,12(31)
	add 10,10,9
	lwz 8,20(31)
	lwz 9,12(31)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
	lwz 9,12(31)
	addi 9,9,1
	stw 9,12(31)
.L637:
	lwz 10,48(31)
	lwz 9,12(31)
	cmplw 0,10,9
	bgt 0,.L638
	b .L639
.L641:
	lwz 10,24(31)
	lwz 9,48(31)
	add 10,10,9
	lwz 8,20(31)
	lwz 9,48(31)
	add 9,8,9
	lbz 10,0(10)
	stb 10,0(9)
.L640:
	lwz 9,48(31)
	addi 10,9,-1
	stw 10,48(31)
	cmpwi 0,9,0
	bne 0,.L641
	nop
.L639:
	nop
	addi 11,31,64
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 9,8(31)
	lwz 10,12(31)
	divw 8,9,10
	lwz 10,12(31)
	mullw 10,8,10
	subf 9,10,9
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 3,8(31)
	bl __floatunsidf
	mr 11,4
	mr 10,3
	mr 3,10
	mr 4,11
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 3,8(31)
	bl __floatunsisf
	mr 9,3
	mr 3,9
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 3,8(31)
	lwz 4,12(31)
	bl __floatundidf
	mr 11,4
	mr 10,3
	mr 3,10
	mr 4,11
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 3,8(31)
	lwz 4,12(31)
	bl __floatundisf
	mr 9,3
	mr 3,9
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 9,8(31)
	lwz 10,12(31)
	divwu 8,9,10
	lwz 10,12(31)
	mullw 10,8,10
	subf 9,10,9
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	sth 9,24(31)
	li 9,0
	stw 9,8(31)
	b .L655
.L658:
	lhz 10,24(31)
	lwz 9,8(31)
	subfic 9,9,15
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	bne 0,.L660
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
.L655:
	lwz 9,8(31)
	cmpwi 0,9,15
	ble 0,.L658
	b .L657
.L660:
	nop
.L657:
	lwz 9,8(31)
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	sth 9,24(31)
	li 9,0
	stw 9,8(31)
	b .L662
.L665:
	lhz 10,24(31)
	lwz 9,8(31)
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	bne 0,.L667
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
.L662:
	lwz 9,8(31)
	cmpwi 0,9,15
	ble 0,.L665
	b .L664
.L667:
	nop
.L664:
	lwz 9,8(31)
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lis 4,0x4700
	lwz 3,8(31)
	bl __gesf2
	mr 9,3
	cmpwi 0,9,0
	blt 0,.L673
	lis 4,0x4700
	lwz 3,8(31)
	bl __subsf3
	mr 9,3
	mr 3,9
	bl __fixsfsi
	mr 9,3
	addis 9,9,0x1
	addi 9,9,-32768
	b .L671
.L673:
	lwz 3,8(31)
	bl __fixsfsi
	mr 9,3
.L671:
	mr 3,9
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	sth 9,24(31)
	li 9,0
	stw 9,12(31)
	li 9,0
	stw 9,8(31)
	b .L675
.L677:
	lhz 10,24(31)
	lwz 9,8(31)
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L676
	lwz 9,12(31)
	addi 9,9,1
	stw 9,12(31)
.L676:
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
.L675:
	lwz 9,8(31)
	cmpwi 0,9,15
	ble 0,.L677
	lwz 9,12(31)
	rlwinm 9,9,0,31,31
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	sth 9,24(31)
	li 9,0
	stw 9,12(31)
	li 9,0
	stw 9,8(31)
	b .L680
.L682:
	lhz 10,24(31)
	lwz 9,8(31)
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L681
	lwz 9,12(31)
	addi 9,9,1
	stw 9,12(31)
.L681:
	lwz 9,8(31)
	addi 9,9,1
	stw 9,8(31)
.L680:
	lwz 9,8(31)
	cmpwi 0,9,15
	ble 0,.L682
	lwz 9,12(31)
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	li 9,0
	stw 9,8(31)
	b .L685
.L687:
	lwz 9,24(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L686
	lwz 10,8(31)
	lwz 9,28(31)
	add 9,10,9
	stw 9,8(31)
.L686:
	lwz 9,24(31)
	srwi 9,9,1
	stw 9,24(31)
	lwz 9,28(31)
	slwi 9,9,1
	stw 9,28(31)
.L685:
	lwz 9,24(31)
	cmpwi 0,9,0
	bne 0,.L687
	lwz 9,8(31)
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	li 9,0
	stw 9,8(31)
	lwz 9,24(31)
	cmpwi 0,9,0
	bne 0,.L692
	li 9,0
	b .L691
.L694:
	lwz 9,28(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L693
	lwz 10,8(31)
	lwz 9,24(31)
	add 9,10,9
	stw 9,8(31)
.L693:
	lwz 9,24(31)
	slwi 9,9,1
	stw 9,24(31)
	lwz 9,28(31)
	srwi 9,9,1
	stw 9,28(31)
.L692:
	lwz 9,28(31)
	cmpwi 0,9,0
	bne 0,.L694
	lwz 9,8(31)
.L691:
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	li 9,1
	stw 9,8(31)
	li 9,0
	stw 9,12(31)
	b .L696
.L698:
	lwz 9,28(31)
	slwi 9,9,1
	stw 9,28(31)
	lwz 9,8(31)
	slwi 9,9,1
	stw 9,8(31)
.L696:
	lwz 10,28(31)
	lwz 9,24(31)
	cmplw 0,10,9
	bge 0,.L699
	lwz 9,8(31)
	cmpwi 0,9,0
	beq 0,.L699
	lwz 9,28(31)
	cmpwi 0,9,0
	bge 0,.L698
	b .L699
.L701:
	lwz 10,24(31)
	lwz 9,28(31)
	cmplw 0,10,9
	blt 0,.L700
	lwz 10,24(31)
	lwz 9,28(31)
	subf 9,9,10
	stw 9,24(31)
	lwz 10,12(31)
	lwz 9,8(31)
	or 9,10,9
	stw 9,12(31)
.L700:
	lwz 9,8(31)
	srwi 9,9,1
	stw 9,8(31)
	lwz 9,28(31)
	srwi 9,9,1
	stw 9,28(31)
.L699:
	lwz 9,8(31)
	cmpwi 0,9,0
	bne 0,.L701
	lwz 9,32(31)
	cmpwi 0,9,0
	beq 0,.L702
	lwz 9,24(31)
	b .L703
.L702:
	lwz 9,12(31)
.L703:
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stw 0,36(1)
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 4,12(31)
	lwz 3,8(31)
	bl __ltsf2
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L712
	li 9,-1
	b .L707
.L712:
	lwz 4,12(31)
	lwz 3,8(31)
	bl __gtsf2
	mr 9,3
	cmpwi 0,9,0
	ble 0,.L713
	li 9,1
	b .L707
.L713:
	li 9,0
.L707:
	mr 3,9
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	stw 5,16(31)
	stw 6,20(31)
	lwz 5,16(31)
	lwz 6,20(31)
	lwz 3,8(31)
	lwz 4,12(31)
	bl __ltdf2
	mr 9,3
	cmpwi 0,9,0
	bge 0,.L722
	li 9,-1
	b .L717
.L722:
	lwz 5,16(31)
	lwz 6,20(31)
	lwz 3,8(31)
	lwz 4,12(31)
	bl __gtdf2
	mr 9,3
	cmpwi 0,9,0
	ble 0,.L723
	li 9,1
	b .L717
.L723:
	li 9,0
.L717:
	mr 3,9
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 5,8(31)
	mr 9,5
	srawi 5,5,31
	mr 8,5
	lwz 5,12(31)
	mr 11,5
	srawi 5,5,31
	mr 10,5
	mullw 4,8,11
	mullw 5,10,9
	add 5,4,5
	mullw 4,9,11
	mulhwu 9,9,11
	mr 7,4
	mr 6,9
	add 9,5,6
	mr 6,9
	mr 11,7
	mr 10,6
	mr 3,10
	mr 4,11
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 5,8(31)
	mr 9,5
	li 8,0
	lwz 5,12(31)
	mr 11,5
	li 10,0
	mullw 4,8,11
	mullw 5,10,9
	add 5,4,5
	mullw 4,9,11
	mulhwu 9,9,11
	mr 7,4
	mr 6,9
	add 9,5,6
	mr 6,9
	mr 11,7
	mr 10,6
	mr 3,10
	mr 4,11
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	li 9,0
	stw 9,12(31)
	li 9,0
	stw 9,16(31)
	lwz 9,28(31)
	cmpwi 0,9,0
	bge 0,.L729
	lwz 9,28(31)
	neg 9,9
	stw 9,28(31)
	li 9,1
	stw 9,12(31)
.L729:
	li 9,0
	stb 9,8(31)
	b .L730
.L733:
	lwz 9,28(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L731
	lwz 10,16(31)
	lwz 9,24(31)
	add 9,10,9
	stw 9,16(31)
.L731:
	lwz 9,24(31)
	slwi 9,9,1
	stw 9,24(31)
	lwz 9,28(31)
	srawi 9,9,1
	stw 9,28(31)
	lbz 9,8(31)
	addi 9,9,1
	stb 9,8(31)
.L730:
	lwz 9,28(31)
	cmpwi 0,9,0
	beq 0,.L732
	lbz 9,8(31)
	cmplwi 0,9,31
	ble 0,.L733
.L732:
	lwz 9,12(31)
	cmpwi 0,9,0
	beq 0,.L734
	lwz 9,16(31)
	neg 9,9
	b .L736
.L734:
	lwz 9,16(31)
.L736:
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	li 9,0
	stw 9,8(31)
	lwz 9,24(31)
	cmpwi 0,9,0
	bge 0,.L738
	lwz 9,24(31)
	neg 9,9
	stw 9,24(31)
	lwz 9,8(31)
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 9,9,0,0xff
	stw 9,8(31)
.L738:
	lwz 9,28(31)
	cmpwi 0,9,0
	bge 0,.L739
	lwz 9,28(31)
	neg 9,9
	stw 9,28(31)
	lwz 9,8(31)
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 9,9,0,0xff
	stw 9,8(31)
.L739:
	lwz 9,24(31)
	lwz 10,28(31)
	li 5,0
	mr 4,10
	mr 3,9
	bl __udivmodsi4
	mr 9,3
	stw 9,12(31)
	lwz 9,8(31)
	cmpwi 0,9,0
	beq 0,.L740
	lwz 9,12(31)
	neg 9,9
	stw 9,12(31)
.L740:
	lwz 9,12(31)
	mr 3,9
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	li 9,0
	stw 9,8(31)
	lwz 9,24(31)
	cmpwi 0,9,0
	bge 0,.L743
	lwz 9,24(31)
	neg 9,9
	stw 9,24(31)
	li 9,1
	stw 9,8(31)
.L743:
	lwz 9,28(31)
	cmpwi 0,9,0
	bge 0,.L744
	lwz 9,28(31)
	neg 9,9
	stw 9,28(31)
.L744:
	lwz 9,24(31)
	lwz 10,28(31)
	li 5,1
	mr 4,10
	mr 3,9
	bl __udivmodsi4
	mr 9,3
	stw 9,12(31)
	lwz 9,8(31)
	cmpwi 0,9,0
	beq 0,.L745
	lwz 9,12(31)
	neg 9,9
	stw 9,12(31)
.L745:
	lwz 9,12(31)
	mr 3,9
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	mr 9,3
	mr 10,4
	stw 5,28(31)
	sth 9,24(31)
	mr 9,10
	sth 9,26(31)
	li 9,1
	sth 9,8(31)
	li 9,0
	sth 9,10(31)
	b .L748
.L750:
	lhz 9,26(31)
	slwi 9,9,1
	sth 9,26(31)
	lhz 9,8(31)
	slwi 9,9,1
	sth 9,8(31)
.L748:
	lhz 10,26(31)
	lhz 9,24(31)
	cmplw 0,10,9
	bge 0,.L751
	lhz 9,8(31)
	cmpwi 0,9,0
	beq 0,.L751
	lhz 9,26(31)
	extsh 9,9
	cmpwi 0,9,0
	bge 0,.L750
	b .L751
.L753:
	lhz 10,24(31)
	lhz 9,26(31)
	cmplw 0,10,9
	blt 0,.L752
	lhz 10,24(31)
	lhz 9,26(31)
	subf 9,9,10
	sth 9,24(31)
	lhz 10,10(31)
	lhz 9,8(31)
	or 9,10,9
	sth 9,10(31)
.L752:
	lhz 9,8(31)
	srwi 9,9,1
	sth 9,8(31)
	lhz 9,26(31)
	srwi 9,9,1
	sth 9,26(31)
.L751:
	lhz 9,8(31)
	cmpwi 0,9,0
	bne 0,.L753
	lwz 9,28(31)
	cmpwi 0,9,0
	beq 0,.L754
	lhz 9,24(31)
	b .L755
.L754:
	lhz 9,10(31)
.L755:
	rlwinm 9,9,0,0xffff
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	li 9,1
	stw 9,8(31)
	li 9,0
	stw 9,12(31)
	b .L757
.L759:
	lwz 9,28(31)
	slwi 9,9,1
	stw 9,28(31)
	lwz 9,8(31)
	slwi 9,9,1
	stw 9,8(31)
.L757:
	lwz 10,28(31)
	lwz 9,24(31)
	cmplw 0,10,9
	bge 0,.L760
	lwz 9,8(31)
	cmpwi 0,9,0
	beq 0,.L760
	lwz 9,28(31)
	cmpwi 0,9,0
	bge 0,.L759
	b .L760
.L762:
	lwz 10,24(31)
	lwz 9,28(31)
	cmplw 0,10,9
	blt 0,.L761
	lwz 10,24(31)
	lwz 9,28(31)
	subf 9,9,10
	stw 9,24(31)
	lwz 10,12(31)
	lwz 9,8(31)
	or 9,10,9
	stw 9,12(31)
.L761:
	lwz 9,8(31)
	srwi 9,9,1
	stw 9,8(31)
	lwz 9,28(31)
	srwi 9,9,1
	stw 9,28(31)
.L760:
	lwz 9,8(31)
	cmpwi 0,9,0
	bne 0,.L762
	lwz 9,32(31)
	cmpwi 0,9,0
	beq 0,.L763
	lwz 9,24(31)
	b .L764
.L763:
	lwz 9,12(31)
.L764:
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,60(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,40(31)
	stw 4,44(31)
	stw 5,48(31)
	li 9,32
	stw 9,8(31)
	lwz 10,40(31)
	lwz 11,44(31)
	stw 10,16(31)
	stw 11,20(31)
	lwz 10,48(31)
	lwz 9,8(31)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L766
	li 9,0
	stw 9,28(31)
	lwz 10,20(31)
	lwz 8,48(31)
	lwz 9,8(31)
	subf 9,9,8
	slw 9,10,9
	stw 9,24(31)
	b .L767
.L766:
	lwz 9,48(31)
	cmpwi 0,9,0
	bne 0,.L768
	lwz 10,40(31)
	lwz 11,44(31)
	b .L770
.L768:
	lwz 10,20(31)
	lwz 9,48(31)
	slw 9,10,9
	stw 9,28(31)
	lwz 9,16(31)
	mr 10,9
	lwz 9,48(31)
	slw 10,10,9
	lwz 8,20(31)
	lwz 7,8(31)
	lwz 9,48(31)
	subf 9,9,7
	srw 9,8,9
	or 9,10,9
	stw 9,24(31)
.L767:
	lwz 10,24(31)
	lwz 11,28(31)
.L770:
	mr 3,10
	mr 4,11
	addi 11,31,64
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,60(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,40(31)
	stw 4,44(31)
	stw 5,48(31)
	li 9,32
	stw 9,8(31)
	lwz 10,40(31)
	lwz 11,44(31)
	stw 10,16(31)
	stw 11,20(31)
	lwz 10,48(31)
	lwz 9,8(31)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L772
	lwz 10,16(31)
	lwz 9,8(31)
	addi 9,9,-1
	sraw 9,10,9
	stw 9,24(31)
	lwz 10,16(31)
	lwz 8,48(31)
	lwz 9,8(31)
	subf 9,9,8
	sraw 9,10,9
	stw 9,28(31)
	b .L773
.L772:
	lwz 9,48(31)
	cmpwi 0,9,0
	bne 0,.L774
	lwz 10,40(31)
	lwz 11,44(31)
	b .L776
.L774:
	lwz 10,16(31)
	lwz 9,48(31)
	sraw 9,10,9
	stw 9,24(31)
	lwz 9,16(31)
	mr 8,9
	lwz 10,8(31)
	lwz 9,48(31)
	subf 9,9,10
	slw 10,8,9
	lwz 8,20(31)
	lwz 9,48(31)
	srw 9,8,9
	or 9,10,9
	stw 9,28(31)
.L773:
	lwz 10,24(31)
	lwz 11,28(31)
.L776:
	mr 3,10
	mr 4,11
	addi 11,31,64
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-176(1)
	.cfi_def_cfa_offset 176
	stw 14,104(1)
	stw 15,108(1)
	stw 16,112(1)
	stw 17,116(1)
	stw 18,120(1)
	stw 19,124(1)
	stw 20,128(1)
	stw 21,132(1)
	stw 22,136(1)
	stw 23,140(1)
	stw 24,144(1)
	stw 25,148(1)
	stw 26,152(1)
	stw 27,156(1)
	stw 28,160(1)
	stw 29,164(1)
	stw 31,172(1)
	.cfi_offset 14, -72
	.cfi_offset 15, -68
	.cfi_offset 16, -64
	.cfi_offset 17, -60
	.cfi_offset 18, -56
	.cfi_offset 19, -52
	.cfi_offset 20, -48
	.cfi_offset 21, -44
	.cfi_offset 22, -40
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 9,8(31)
	srwi 7,9,24
	li 6,0
	lwz 9,8(31)
	srwi 27,9,8
	li 26,0
	li 10,0
	rlwinm 11,27,0,16,23
	or 9,6,10
	stw 9,16(31)
	or 9,7,11
	stw 9,20(31)
	lwz 9,8(31)
	slwi 10,9,8
	lwz 9,12(31)
	srwi 29,9,24
	or 29,10,29
	lwz 9,8(31)
	srwi 28,9,24
	li 24,0
	rlwinm 25,29,0,8,15
	lwz 9,16(31)
	lwz 10,20(31)
	mr 8,9
	or 8,8,24
	stw 8,24(31)
	mr 9,10
	or 9,9,25
	stw 9,28(31)
	lwz 9,8(31)
	slwi 10,9,24
	lwz 9,12(31)
	srwi 19,9,8
	or 19,10,19
	lwz 9,8(31)
	srwi 18,9,8
	li 6,0
	stw 6,32(31)
	rlwinm 9,19,0,0,7
	stw 9,36(31)
	lwz 7,24(31)
	lwz 8,28(31)
	mr 5,7
	lwz 9,32(31)
	lwz 10,36(31)
	mr 4,9
	or 5,5,4
	stw 5,40(31)
	mr 9,10
	or 9,8,9
	stw 9,44(31)
	lwz 9,12(31)
	srwi 9,9,24
	lwz 10,8(31)
	slwi 20,10,8
	or 20,9,20
	lwz 9,12(31)
	slwi 21,9,8
	rlwinm 9,20,0,24,31
	stw 9,48(31)
	stw 6,52(31)
	lwz 7,40(31)
	lwz 8,44(31)
	mr 5,7
	lwz 9,48(31)
	lwz 10,52(31)
	mr 4,9
	or 5,5,4
	stw 5,56(31)
	mr 9,10
	or 9,8,9
	stw 9,60(31)
	lwz 9,12(31)
	srwi 9,9,8
	lwz 10,8(31)
	slwi 22,10,24
	or 22,9,22
	lwz 9,12(31)
	slwi 23,9,24
	rlwinm 9,22,0,16,23
	stw 9,64(31)
	stw 6,68(31)
	lwz 7,56(31)
	lwz 8,60(31)
	mr 5,7
	lwz 9,64(31)
	lwz 10,68(31)
	mr 4,9
	or 5,5,4
	stw 5,72(31)
	mr 9,10
	or 9,8,9
	stw 9,76(31)
	lwz 9,12(31)
	slwi 9,9,8
	stw 9,80(31)
	stw 6,84(31)
	lwz 9,80(31)
	rlwinm 9,9,0,8,15
	stw 9,88(31)
	stw 6,92(31)
	lwz 7,72(31)
	lwz 8,76(31)
	mr 6,7
	lwz 9,88(31)
	lwz 10,92(31)
	mr 5,9
	or 14,6,5
	mr 9,10
	or 15,8,9
	lwz 9,12(31)
	slwi 16,9,24
	li 17,0
	or 9,14,16
	stw 9,96(31)
	or 9,15,17
	stw 9,100(31)
	lwz 10,96(31)
	lwz 11,100(31)
	mr 3,10
	mr 4,11
	addi 11,31,176
	lwz 14,-72(11)
	lwz 15,-68(11)
	lwz 16,-64(11)
	lwz 17,-60(11)
	lwz 18,-56(11)
	lwz 19,-52(11)
	lwz 20,-48(11)
	lwz 21,-44(11)
	lwz 22,-40(11)
	lwz 23,-36(11)
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	lwz 9,8(31)
	srwi 10,9,24
	lwz 9,8(31)
	srwi 9,9,8
	rlwinm 9,9,0,16,23
	or 10,10,9
	lwz 9,8(31)
	slwi 9,9,8
	rlwinm 9,9,0,8,15
	or 10,10,9
	lwz 9,8(31)
	slwi 9,9,24
	or 9,10,9
	mr 3,9
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	lwz 9,24(31)
	stw 9,8(31)
	lwz 10,8(31)
	lis 9,0x1
	cmplw 0,10,9
	bge 0,.L782
	li 9,16
	b .L783
.L782:
	li 9,0
.L783:
	stw 9,12(31)
	lwz 9,12(31)
	subfic 9,9,16
	lwz 10,8(31)
	srw 9,10,9
	stw 9,8(31)
	lwz 9,12(31)
	stw 9,16(31)
	lwz 9,8(31)
	rlwinm 9,9,0,16,23
	cmpwi 0,9,0
	bne 0,.L784
	li 9,8
	b .L785
.L784:
	li 9,0
.L785:
	stw 9,12(31)
	lwz 9,12(31)
	subfic 9,9,8
	lwz 10,8(31)
	srw 9,10,9
	stw 9,8(31)
	lwz 9,12(31)
	lwz 10,16(31)
	add 9,10,9
	stw 9,16(31)
	lwz 9,8(31)
	rlwinm 9,9,0,24,27
	cmpwi 0,9,0
	bne 0,.L786
	li 9,4
	b .L787
.L786:
	li 9,0
.L787:
	stw 9,12(31)
	lwz 9,12(31)
	subfic 9,9,4
	lwz 10,8(31)
	srw 9,10,9
	stw 9,8(31)
	lwz 9,12(31)
	lwz 10,16(31)
	add 9,10,9
	stw 9,16(31)
	lwz 9,8(31)
	rlwinm 9,9,0,28,29
	cmpwi 0,9,0
	bne 0,.L788
	li 9,2
	b .L789
.L788:
	li 9,0
.L789:
	stw 9,12(31)
	lwz 9,12(31)
	subfic 9,9,2
	lwz 10,8(31)
	srw 9,10,9
	stw 9,8(31)
	lwz 9,12(31)
	lwz 10,16(31)
	add 9,10,9
	stw 9,16(31)
	lwz 9,8(31)
	rlwinm 9,9,0,30,30
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 9,9,0,0xff
	mr 10,9
	lwz 9,8(31)
	subfic 9,9,2
	mullw 10,10,9
	lwz 9,16(31)
	add 9,10,9
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	stw 6,36(31)
	lwz 10,24(31)
	lwz 11,28(31)
	stw 10,8(31)
	stw 11,12(31)
	lwz 10,32(31)
	lwz 11,36(31)
	stw 10,16(31)
	stw 11,20(31)
	lwz 10,8(31)
	lwz 9,16(31)
	cmpw 0,10,9
	bge 0,.L792
	li 9,0
	b .L797
.L792:
	lwz 10,8(31)
	lwz 9,16(31)
	cmpw 0,10,9
	ble 0,.L794
	li 9,2
	b .L797
.L794:
	lwz 10,12(31)
	lwz 9,20(31)
	cmplw 0,10,9
	bge 0,.L795
	li 9,0
	b .L797
.L795:
	lwz 10,12(31)
	lwz 9,20(31)
	cmplw 0,10,9
	ble 0,.L796
	li 9,2
	b .L797
.L796:
	li 9,1
.L797:
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	stw 5,16(31)
	stw 6,20(31)
	lwz 5,16(31)
	lwz 6,20(31)
	lwz 3,8(31)
	lwz 4,12(31)
	bl __cmpdi2
	mr 9,3
	addi 9,9,-1
	mr 3,9
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	lwz 9,24(31)
	stw 9,8(31)
	lwz 9,8(31)
	rlwinm 9,9,0,16,31
	cmpwi 0,9,0
	bne 0,.L801
	li 9,16
	b .L802
.L801:
	li 9,0
.L802:
	stw 9,12(31)
	lwz 10,8(31)
	lwz 9,12(31)
	srw 9,10,9
	stw 9,8(31)
	lwz 9,12(31)
	stw 9,16(31)
	lwz 9,8(31)
	rlwinm 9,9,0,24,31
	cmpwi 0,9,0
	bne 0,.L803
	li 9,8
	b .L804
.L803:
	li 9,0
.L804:
	stw 9,12(31)
	lwz 10,8(31)
	lwz 9,12(31)
	srw 9,10,9
	stw 9,8(31)
	lwz 9,12(31)
	lwz 10,16(31)
	add 9,10,9
	stw 9,16(31)
	lwz 9,8(31)
	rlwinm 9,9,0,28,31
	cmpwi 0,9,0
	bne 0,.L805
	li 9,4
	b .L806
.L805:
	li 9,0
.L806:
	stw 9,12(31)
	lwz 10,8(31)
	lwz 9,12(31)
	srw 9,10,9
	stw 9,8(31)
	lwz 9,12(31)
	lwz 10,16(31)
	add 9,10,9
	stw 9,16(31)
	lwz 9,8(31)
	rlwinm 9,9,0,30,31
	cmpwi 0,9,0
	bne 0,.L807
	li 9,2
	b .L808
.L807:
	li 9,0
.L808:
	stw 9,12(31)
	lwz 10,8(31)
	lwz 9,12(31)
	srw 9,10,9
	stw 9,8(31)
	lwz 9,8(31)
	rlwinm 9,9,0,30,31
	stw 9,8(31)
	lwz 9,12(31)
	lwz 10,16(31)
	add 9,10,9
	stw 9,16(31)
	lwz 9,8(31)
	not 9,9
	rlwinm 10,9,0,31,31
	lwz 9,8(31)
	srwi 9,9,1
	subfic 9,9,2
	neg 10,10
	and 10,10,9
	lwz 9,16(31)
	add 9,10,9
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,60(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,40(31)
	stw 4,44(31)
	stw 5,48(31)
	li 9,32
	stw 9,8(31)
	lwz 10,40(31)
	lwz 11,44(31)
	stw 10,16(31)
	stw 11,20(31)
	lwz 10,48(31)
	lwz 9,8(31)
	and 9,10,9
	cmpwi 0,9,0
	beq 0,.L811
	li 9,0
	stw 9,24(31)
	lwz 10,16(31)
	lwz 8,48(31)
	lwz 9,8(31)
	subf 9,9,8
	srw 9,10,9
	stw 9,28(31)
	b .L812
.L811:
	lwz 9,48(31)
	cmpwi 0,9,0
	bne 0,.L813
	lwz 10,40(31)
	lwz 11,44(31)
	b .L815
.L813:
	lwz 10,16(31)
	lwz 9,48(31)
	srw 9,10,9
	stw 9,24(31)
	lwz 10,16(31)
	lwz 8,8(31)
	lwz 9,48(31)
	subf 9,9,8
	slw 10,10,9
	lwz 8,20(31)
	lwz 9,48(31)
	srw 9,8,9
	or 9,10,9
	stw 9,28(31)
.L812:
	lwz 10,24(31)
	lwz 11,28(31)
.L815:
	mr 3,10
	mr 4,11
	addi 11,31,64
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	stw 31,60(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,40(31)
	stw 4,44(31)
	li 9,16
	stw 9,8(31)
	li 10,-1
	lwz 9,8(31)
	srw 9,10,9
	stw 9,12(31)
	lwz 10,40(31)
	lwz 9,12(31)
	and 10,10,9
	lwz 8,44(31)
	lwz 9,12(31)
	and 9,8,9
	mullw 9,10,9
	stw 9,28(31)
	lwz 10,28(31)
	lwz 9,8(31)
	srw 9,10,9
	stw 9,16(31)
	lwz 10,28(31)
	lwz 9,12(31)
	and 9,10,9
	stw 9,28(31)
	lwz 10,40(31)
	lwz 9,8(31)
	srw 10,10,9
	lwz 8,44(31)
	lwz 9,12(31)
	and 9,8,9
	mullw 9,10,9
	lwz 10,16(31)
	add 9,10,9
	stw 9,16(31)
	lwz 10,28(31)
	lwz 8,16(31)
	lwz 9,12(31)
	and 8,8,9
	lwz 9,8(31)
	slw 9,8,9
	add 9,10,9
	stw 9,28(31)
	lwz 10,16(31)
	lwz 9,8(31)
	srw 9,10,9
	stw 9,24(31)
	lwz 10,28(31)
	lwz 9,8(31)
	srw 9,10,9
	stw 9,16(31)
	lwz 10,28(31)
	lwz 9,12(31)
	and 9,10,9
	stw 9,28(31)
	lwz 10,44(31)
	lwz 9,8(31)
	srw 10,10,9
	lwz 8,40(31)
	lwz 9,12(31)
	and 9,8,9
	mullw 9,10,9
	lwz 10,16(31)
	add 9,10,9
	stw 9,16(31)
	lwz 10,28(31)
	lwz 8,16(31)
	lwz 9,12(31)
	and 8,8,9
	lwz 9,8(31)
	slw 9,8,9
	add 9,10,9
	stw 9,28(31)
	lwz 9,24(31)
	mr 8,9
	lwz 10,16(31)
	lwz 9,8(31)
	srw 9,10,9
	add 9,8,9
	stw 9,24(31)
	lwz 9,24(31)
	mr 7,9
	lwz 10,40(31)
	lwz 9,8(31)
	srw 10,10,9
	lwz 8,44(31)
	lwz 9,8(31)
	srw 9,8,9
	mullw 9,10,9
	add 9,7,9
	stw 9,24(31)
	lwz 10,24(31)
	lwz 11,28(31)
	mr 3,10
	mr 4,11
	addi 11,31,64
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,60(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,40(31)
	stw 4,44(31)
	stw 5,48(31)
	stw 6,52(31)
	lwz 10,40(31)
	lwz 11,44(31)
	stw 10,8(31)
	stw 11,12(31)
	lwz 10,48(31)
	lwz 11,52(31)
	stw 10,16(31)
	stw 11,20(31)
	lwz 9,12(31)
	lwz 10,20(31)
	mr 4,10
	mr 3,9
	bl __muldsi3
	mr 11,4
	mr 10,3
	stw 10,24(31)
	stw 11,28(31)
	lwz 9,24(31)
	mr 8,9
	lwz 9,8(31)
	mr 10,9
	lwz 9,20(31)
	mullw 10,10,9
	lwz 9,12(31)
	lwz 7,16(31)
	mullw 9,9,7
	add 9,10,9
	add 9,8,9
	stw 9,24(31)
	lwz 10,24(31)
	lwz 11,28(31)
	mr 3,10
	mr 4,11
	addi 11,31,64
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	lwz 10,8(31)
	lwz 11,12(31)
	subfic 9,11,0
	subfze 8,10
	mr 11,9
	mr 10,8
	mr 3,10
	mr 4,11
	addi 11,31,32
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	lwz 10,24(31)
	lwz 11,28(31)
	stw 10,16(31)
	stw 11,20(31)
	lwz 9,16(31)
	mr 10,9
	lwz 9,20(31)
	xor 9,10,9
	stw 9,8(31)
	lwz 9,8(31)
	srwi 9,9,16
	lwz 10,8(31)
	xor 9,10,9
	stw 9,8(31)
	lwz 9,8(31)
	srwi 9,9,8
	lwz 10,8(31)
	xor 9,10,9
	stw 9,8(31)
	lwz 9,8(31)
	srwi 9,9,4
	lwz 10,8(31)
	xor 9,10,9
	stw 9,8(31)
	lwz 9,8(31)
	rlwinm 9,9,0,28,31
	li 10,27030
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	lwz 9,24(31)
	stw 9,8(31)
	lwz 9,8(31)
	srwi 9,9,16
	lwz 10,8(31)
	xor 9,10,9
	stw 9,8(31)
	lwz 9,8(31)
	srwi 9,9,8
	lwz 10,8(31)
	xor 9,10,9
	stw 9,8(31)
	lwz 9,8(31)
	srwi 9,9,4
	lwz 10,8(31)
	xor 9,10,9
	stw 9,8(31)
	lwz 9,8(31)
	rlwinm 9,9,0,28,31
	li 10,27030
	sraw 9,10,9
	rlwinm 9,9,0,31,31
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-112(1)
	.cfi_def_cfa_offset 112
	stw 14,40(1)
	stw 15,44(1)
	stw 16,48(1)
	stw 17,52(1)
	stw 18,56(1)
	stw 19,60(1)
	stw 20,64(1)
	stw 21,68(1)
	stw 22,72(1)
	stw 23,76(1)
	stw 24,80(1)
	stw 25,84(1)
	stw 26,88(1)
	stw 27,92(1)
	stw 28,96(1)
	stw 29,100(1)
	stw 31,108(1)
	.cfi_offset 14, -72
	.cfi_offset 15, -68
	.cfi_offset 16, -64
	.cfi_offset 17, -60
	.cfi_offset 18, -56
	.cfi_offset 19, -52
	.cfi_offset 20, -48
	.cfi_offset 21, -44
	.cfi_offset 22, -40
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	lwz 4,24(31)
	lwz 5,28(31)
	stw 4,8(31)
	stw 5,12(31)
	lwz 5,8(31)
	slwi 5,5,31
	lwz 4,12(31)
	srwi 7,4,1
	or 7,5,7
	lwz 5,8(31)
	srwi 6,5,1
	lis 5,0x5555
	ori 4,5,0x5555
	lis 5,0x5555
	ori 5,5,0x5555
	and 22,6,4
	and 23,7,5
	lwz 6,8(31)
	lwz 7,12(31)
	subfc 17,23,7
	subfe 16,22,6
	stw 16,8(31)
	stw 17,12(31)
	lwz 7,8(31)
	slwi 7,7,30
	lwz 6,12(31)
	srwi 9,6,2
	or 9,7,9
	lwz 7,8(31)
	srwi 8,7,2
	lis 7,0x3333
	ori 6,7,0x3333
	lis 7,0x3333
	ori 7,7,0x3333
	and 24,8,6
	and 25,9,7
	lwz 8,8(31)
	lwz 9,12(31)
	lis 7,0x3333
	ori 6,7,0x3333
	lis 7,0x3333
	ori 7,7,0x3333
	and 26,8,6
	and 27,9,7
	addc 19,25,27
	adde 18,24,26
	stw 18,8(31)
	stw 19,12(31)
	lwz 9,8(31)
	slwi 9,9,28
	lwz 8,12(31)
	srwi 11,8,4
	or 11,9,11
	lwz 9,8(31)
	srwi 10,9,4
	lwz 8,8(31)
	lwz 9,12(31)
	addc 29,11,9
	adde 28,10,8
	lis 9,0xf0f
	ori 10,9,0xf0f
	lis 9,0xf0f
	ori 9,9,0xf0f
	and 20,28,10
	and 21,29,9
	stw 20,8(31)
	stw 21,12(31)
	lwz 9,12(31)
	lwz 10,8(31)
	srwi 15,10,0
	li 14,0
	mr 10,15
	add 9,9,10
	stw 9,16(31)
	lwz 9,16(31)
	srwi 9,9,16
	lwz 10,16(31)
	add 9,10,9
	stw 9,16(31)
	lwz 9,16(31)
	srwi 10,9,8
	lwz 9,16(31)
	add 9,10,9
	rlwinm 9,9,0,25,31
	mr 3,9
	addi 11,31,112
	lwz 14,-72(11)
	lwz 15,-68(11)
	lwz 16,-64(11)
	lwz 17,-60(11)
	lwz 18,-56(11)
	lwz 19,-52(11)
	lwz 20,-48(11)
	lwz 21,-44(11)
	lwz 22,-40(11)
	lwz 23,-36(11)
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	lwz 9,24(31)
	stw 9,8(31)
	lwz 9,8(31)
	srwi 10,9,1
	lis 9,0x5555
	ori 9,9,0x5555
	and 9,10,9
	lwz 10,8(31)
	subf 9,9,10
	stw 9,8(31)
	lwz 9,8(31)
	srwi 10,9,2
	lis 9,0x3333
	ori 9,9,0x3333
	and 10,10,9
	lwz 8,8(31)
	lis 9,0x3333
	ori 9,9,0x3333
	and 9,8,9
	add 9,10,9
	stw 9,8(31)
	lwz 9,8(31)
	srwi 10,9,4
	lwz 9,8(31)
	add 10,10,9
	lis 9,0xf0f
	ori 9,9,0xf0f
	and 9,10,9
	stw 9,8(31)
	lwz 9,8(31)
	srwi 9,9,16
	lwz 10,8(31)
	add 9,10,9
	stw 9,8(31)
	lwz 9,8(31)
	srwi 10,9,8
	lwz 9,8(31)
	add 9,10,9
	rlwinm 9,9,0,26,31
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	lwz 9,32(31)
	srwi 9,9,31
	rlwinm 9,9,0,0xff
	stw 9,16(31)
	lis 10,0x3ff0
	li 11,0
	stw 10,8(31)
	stw 11,12(31)
.L834:
	lwz 9,32(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L831
	lwz 5,24(31)
	lwz 6,28(31)
	lwz 3,8(31)
	lwz 4,12(31)
	bl __muldf3
	mr 11,4
	mr 10,3
	stw 10,8(31)
	stw 11,12(31)
.L831:
	lwz 9,32(31)
	srawi 9,9,1
	addze 9,9
	stw 9,32(31)
	lwz 9,32(31)
	cmpwi 0,9,0
	beq 0,.L839
	lwz 5,24(31)
	lwz 6,28(31)
	lwz 3,24(31)
	lwz 4,28(31)
	bl __muldf3
	mr 11,4
	mr 10,3
	stw 10,24(31)
	stw 11,28(31)
	b .L834
.L839:
	nop
	lwz 9,16(31)
	cmpwi 0,9,0
	beq 0,.L835
	lwz 5,8(31)
	lwz 6,12(31)
	lis 3,0x3ff0
	li 4,0
	bl __divdf3
	mr 11,4
	mr 10,3
	b .L837
.L835:
	lwz 10,8(31)
	lwz 11,12(31)
.L837:
	mr 3,10
	mr 4,11
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stw 0,52(1)
	stw 31,44(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	lwz 9,28(31)
	srwi 9,9,31
	rlwinm 9,9,0,0xff
	stw 9,12(31)
	lis 9,0x3f80
	stw 9,8(31)
.L844:
	lwz 9,28(31)
	rlwinm 9,9,0,31,31
	cmpwi 0,9,0
	beq 0,.L841
	lwz 4,24(31)
	lwz 3,8(31)
	bl __mulsf3
	mr 9,3
	stw 9,8(31)
.L841:
	lwz 9,28(31)
	srawi 9,9,1
	addze 9,9
	stw 9,28(31)
	lwz 9,28(31)
	cmpwi 0,9,0
	beq 0,.L849
	lwz 4,24(31)
	lwz 3,24(31)
	bl __mulsf3
	mr 9,3
	stw 9,24(31)
	b .L844
.L849:
	nop
	lwz 9,12(31)
	cmpwi 0,9,0
	beq 0,.L845
	lwz 4,8(31)
	lis 3,0x3f80
	bl __divsf3
	mr 9,3
	b .L847
.L845:
	lwz 9,8(31)
.L847:
	mr 3,9
	addi 11,31,48
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,44(1)
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,24(31)
	stw 4,28(31)
	stw 5,32(31)
	stw 6,36(31)
	lwz 10,24(31)
	lwz 11,28(31)
	stw 10,8(31)
	stw 11,12(31)
	lwz 10,32(31)
	lwz 11,36(31)
	stw 10,16(31)
	stw 11,20(31)
	lwz 10,8(31)
	lwz 9,16(31)
	cmplw 0,10,9
	bge 0,.L851
	li 9,0
	b .L856
.L851:
	lwz 10,8(31)
	lwz 9,16(31)
	cmplw 0,10,9
	ble 0,.L853
	li 9,2
	b .L856
.L853:
	lwz 10,12(31)
	lwz 9,20(31)
	cmplw 0,10,9
	bge 0,.L854
	li 9,0
	b .L856
.L854:
	lwz 10,12(31)
	lwz 9,20(31)
	cmplw 0,10,9
	ble 0,.L855
	li 9,2
	b .L856
.L855:
	li 9,1
.L856:
	mr 3,9
	addi 11,31,48
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
	stw 31,28(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,1
	.cfi_def_cfa_register 31
	stw 3,8(31)
	stw 4,12(31)
	stw 5,16(31)
	stw 6,20(31)
	lwz 10,8(31)
	lwz 11,12(31)
	lwz 8,16(31)
	lwz 9,20(31)
	mr 5,8
	mr 6,9
	mr 3,10
	mr 4,11
	bl __ucmpdi2
	mr 9,3
	addi 9,9,-1
	mr 3,9
	addi 11,31,32
	lwz 0,4(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 31
	.cfi_def_cfa_register 1
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
