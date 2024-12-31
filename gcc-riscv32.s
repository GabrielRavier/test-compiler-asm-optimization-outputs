	.file	"mini-libc.c"
	.option nopic
	.attribute arch, "rv32e2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 4
	.text
	.align	2
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,28
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a5,-20(s0)
	sw	a5,-12(s0)
	lw	a5,-24(s0)
	sw	a5,-16(s0)
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	bgeu	a4,a5,.L2
	lw	a4,-16(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-16(s0)
	lw	a4,-12(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-12(s0)
	j	.L3
.L4:
	lw	a5,-16(s0)
	addi	a5,a5,-1
	sw	a5,-16(s0)
	lw	a5,-12(s0)
	addi	a5,a5,-1
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	lbu	a4,0(a5)
	lw	a5,-12(s0)
	sb	a4,0(a5)
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
.L3:
	lw	a5,-28(s0)
	bne	a5,zero,.L4
	j	.L5
.L2:
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	beq	a4,a5,.L5
	j	.L6
.L7:
	lw	a4,-16(s0)
	addi	a5,a4,1
	sw	a5,-16(s0)
	lw	a5,-12(s0)
	addi	a3,a5,1
	sw	a3,-12(s0)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
.L6:
	lw	a5,-28(s0)
	bne	a5,zero,.L7
.L5:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,24(sp)
	.cfi_restore 1
	lw	s0,20(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 28
	addi	sp,sp,28
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	memmove, .-memmove
	.align	2
	.globl	memccpy
	.type	memccpy, @function
memccpy:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a5,-20(s0)
	sw	a5,-12(s0)
	lw	a5,-24(s0)
	sw	a5,-16(s0)
	lw	a5,-28(s0)
	andi	a5,a5,0xff
	sw	a5,-28(s0)
	j	.L10
.L12:
	lw	a5,-32(s0)
	addi	a5,a5,-1
	sw	a5,-32(s0)
	lw	a5,-16(s0)
	addi	a5,a5,1
	sw	a5,-16(s0)
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L10:
	lw	a5,-32(s0)
	beq	a5,zero,.L11
	lw	a5,-16(s0)
	lbu	a4,0(a5)
	lw	a5,-12(s0)
	sb	a4,0(a5)
	lw	a5,-12(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	lw	a5,-28(s0)
	bne	a5,a4,.L12
.L11:
	lw	a5,-32(s0)
	beq	a5,zero,.L13
	lw	a5,-12(s0)
	addi	a5,a5,1
	j	.L14
.L13:
	li	a5,0
.L14:
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.type	memchr, @function
memchr:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-20(s0)
	sw	a2,-24(s0)
	lw	a5,-16(s0)
	sw	a5,-12(s0)
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	sw	a5,-20(s0)
	j	.L16
.L18:
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L16:
	lw	a5,-24(s0)
	beq	a5,zero,.L17
	lw	a5,-12(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	lw	a5,-20(s0)
	bne	a5,a4,.L18
.L17:
	lw	a5,-24(s0)
	beq	a5,zero,.L19
	lw	a5,-12(s0)
	j	.L21
.L19:
	li	a5,0
.L21:
	mv	a0,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,28
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a5,-20(s0)
	sw	a5,-12(s0)
	lw	a5,-24(s0)
	sw	a5,-16(s0)
	j	.L23
.L25:
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	addi	a5,a5,1
	sw	a5,-16(s0)
.L23:
	lw	a5,-28(s0)
	beq	a5,zero,.L24
	lw	a5,-12(s0)
	lbu	a4,0(a5)
	lw	a5,-16(s0)
	lbu	a5,0(a5)
	beq	a4,a5,.L25
.L24:
	lw	a5,-28(s0)
	beq	a5,zero,.L26
	lw	a5,-12(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	lw	a5,-16(s0)
	lbu	a5,0(a5)
	sub	a5,a4,a5
	j	.L28
.L26:
	li	a5,0
.L28:
	mv	a0,a5
	lw	ra,24(sp)
	.cfi_restore 1
	lw	s0,20(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 28
	addi	sp,sp,28
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,28
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a5,-20(s0)
	sw	a5,-12(s0)
	lw	a5,-24(s0)
	sw	a5,-16(s0)
	j	.L30
.L31:
	lw	a4,-16(s0)
	addi	a5,a4,1
	sw	a5,-16(s0)
	lw	a5,-12(s0)
	addi	a3,a5,1
	sw	a3,-12(s0)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
.L30:
	lw	a5,-28(s0)
	bne	a5,zero,.L31
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,24(sp)
	.cfi_restore 1
	lw	s0,20(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 28
	addi	sp,sp,28
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	memcpy, .-memcpy
	.align	2
	.globl	memrchr
	.type	memrchr, @function
memrchr:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-20(s0)
	sw	a2,-24(s0)
	lw	a5,-16(s0)
	sw	a5,-12(s0)
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	sw	a5,-20(s0)
	j	.L34
.L36:
	lw	a4,-12(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	lw	a5,-20(s0)
	bne	a5,a4,.L34
	lw	a4,-12(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	j	.L35
.L34:
	lw	a5,-24(s0)
	addi	a4,a5,-1
	sw	a4,-24(s0)
	bne	a5,zero,.L36
	li	a5,0
.L35:
	mv	a0,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	memrchr, .-memrchr
	.align	2
	.globl	memset
	.type	memset, @function
memset:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-20(s0)
	sw	a2,-24(s0)
	lw	a5,-16(s0)
	sw	a5,-12(s0)
	j	.L38
.L39:
	lw	a5,-20(s0)
	andi	a4,a5,0xff
	lw	a5,-12(s0)
	sb	a4,0(a5)
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L38:
	lw	a5,-24(s0)
	bne	a5,zero,.L39
	lw	a5,-16(s0)
	mv	a0,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	memset, .-memset
	.align	2
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	j	.L42
.L43:
	lw	a5,-16(s0)
	addi	a5,a5,1
	sw	a5,-16(s0)
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L42:
	lw	a5,-16(s0)
	lbu	a4,0(a5)
	lw	a5,-12(s0)
	sb	a4,0(a5)
	lw	a5,-12(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L43
	lw	a5,-12(s0)
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	stpcpy, .-stpcpy
	.align	2
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	lw	a5,-16(s0)
	andi	a5,a5,0xff
	sw	a5,-16(s0)
	j	.L46
.L48:
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L46:
	lw	a5,-12(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L47
	lw	a5,-12(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	lw	a5,-16(s0)
	bne	a5,a4,.L48
.L47:
	lw	a5,-12(s0)
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	strchrnul, .-strchrnul
	.align	2
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB9:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-12(s0)
.L53:
	lbu	a4,0(a5)
	mv	a3,a4
	lw	a4,-12(s0)
	bne	a4,a3,.L51
	j	.L52
.L51:
	mv	a4,a5
	addi	a5,a4,1
	lbu	a4,0(a4)
	bne	a4,zero,.L53
	li	a5,0
.L52:
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	strchr, .-strchr
	.align	2
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB10:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	j	.L55
.L57:
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	addi	a5,a5,1
	sw	a5,-16(s0)
.L55:
	lw	a5,-12(s0)
	lbu	a4,0(a5)
	lw	a5,-16(s0)
	lbu	a5,0(a5)
	bne	a4,a5,.L56
	lw	a5,-12(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L57
.L56:
	lw	a5,-12(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	lw	a5,-16(s0)
	lbu	a5,0(a5)
	sub	a5,a4,a5
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	strcmp, .-strcmp
	.align	2
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB11:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	lw	a5,-16(s0)
	sw	a5,-12(s0)
	j	.L60
.L61:
	lw	a5,-16(s0)
	addi	a5,a5,1
	sw	a5,-16(s0)
.L60:
	lw	a5,-16(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L61
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	sub	a5,a4,a5
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB12:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,28
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a5,-20(s0)
	sw	a5,-12(s0)
	lw	a5,-24(s0)
	sw	a5,-16(s0)
	lw	a5,-28(s0)
	addi	a4,a5,-1
	sw	a4,-28(s0)
	bne	a5,zero,.L66
	li	a5,0
	j	.L65
.L68:
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	addi	a5,a5,1
	sw	a5,-16(s0)
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
.L66:
	lw	a5,-12(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L67
	lw	a5,-16(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L67
	lw	a5,-28(s0)
	beq	a5,zero,.L67
	lw	a5,-12(s0)
	lbu	a4,0(a5)
	lw	a5,-16(s0)
	lbu	a5,0(a5)
	beq	a4,a5,.L68
.L67:
	lw	a5,-12(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	lw	a5,-16(s0)
	lbu	a5,0(a5)
	sub	a5,a4,a5
.L65:
	mv	a0,a5
	lw	ra,24(sp)
	.cfi_restore 1
	lw	s0,20(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 28
	addi	sp,sp,28
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.type	swab, @function
swab:
.LFB13:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,28
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a5,-20(s0)
	sw	a5,-12(s0)
	lw	a5,-24(s0)
	sw	a5,-16(s0)
	j	.L70
.L71:
	lw	a5,-12(s0)
	addi	a5,a5,1
	lbu	a4,0(a5)
	lw	a5,-16(s0)
	sb	a4,0(a5)
	lw	a5,-16(s0)
	addi	a5,a5,1
	lw	a4,-12(s0)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-16(s0)
	addi	a5,a5,2
	sw	a5,-16(s0)
	lw	a5,-12(s0)
	addi	a5,a5,2
	sw	a5,-12(s0)
	lw	a5,-28(s0)
	addi	a5,a5,-2
	sw	a5,-28(s0)
.L70:
	lw	a4,-28(s0)
	li	a5,1
	bgt	a4,a5,.L71
	nop
	nop
	lw	ra,24(sp)
	.cfi_restore 1
	lw	s0,20(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 28
	addi	sp,sp,28
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	swab, .-swab
	.align	2
	.globl	isalpha
	.type	isalpha, @function
isalpha:
.LFB14:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a5,-12(s0)
	ori	a5,a5,32
	addi	a5,a5,-97
	sltiu	a5,a5,26
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	isalpha, .-isalpha
	.align	2
	.globl	isascii
	.type	isascii, @function
isascii:
.LFB15:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a5,-12(s0)
	sltiu	a5,a5,128
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	isascii, .-isascii
	.align	2
	.globl	isblank
	.type	isblank, @function
isblank:
.LFB16:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a4,-12(s0)
	li	a5,32
	beq	a4,a5,.L77
	lw	a4,-12(s0)
	li	a5,9
	bne	a4,a5,.L78
.L77:
	li	a5,1
	j	.L80
.L78:
	li	a5,0
.L80:
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB17:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a4,-12(s0)
	li	a5,31
	bleu	a4,a5,.L82
	lw	a4,-12(s0)
	li	a5,127
	bne	a4,a5,.L83
.L82:
	li	a5,1
	j	.L85
.L83:
	li	a5,0
.L85:
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	iscntrl, .-iscntrl
	.align	2
	.globl	isdigit
	.type	isdigit, @function
isdigit:
.LFB18:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a5,-12(s0)
	addi	a5,a5,-48
	sltiu	a5,a5,10
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	isdigit, .-isdigit
	.align	2
	.globl	isgraph
	.type	isgraph, @function
isgraph:
.LFB19:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a5,-12(s0)
	addi	a5,a5,-33
	sltiu	a5,a5,94
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	isgraph, .-isgraph
	.align	2
	.globl	islower
	.type	islower, @function
islower:
.LFB20:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a5,-12(s0)
	addi	a5,a5,-97
	sltiu	a5,a5,26
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	islower, .-islower
	.align	2
	.globl	isprint
	.type	isprint, @function
isprint:
.LFB21:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a5,-12(s0)
	addi	a5,a5,-32
	sltiu	a5,a5,95
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	isprint, .-isprint
	.align	2
	.globl	isspace
	.type	isspace, @function
isspace:
.LFB22:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a4,-12(s0)
	li	a5,32
	beq	a4,a5,.L95
	lw	a5,-12(s0)
	addi	a4,a5,-9
	li	a5,4
	bgtu	a4,a5,.L96
.L95:
	li	a5,1
	j	.L98
.L96:
	li	a5,0
.L98:
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	isspace, .-isspace
	.align	2
	.globl	isupper
	.type	isupper, @function
isupper:
.LFB23:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a5,-12(s0)
	addi	a5,a5,-65
	sltiu	a5,a5,26
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	isupper, .-isupper
	.align	2
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB24:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a4,-12(s0)
	li	a5,31
	bleu	a4,a5,.L102
	lw	a5,-12(s0)
	addi	a4,a5,-127
	li	a5,32
	bleu	a4,a5,.L102
	lw	a4,-12(s0)
	li	a5,-8192
	addi	a5,a5,-40
	add	a4,a4,a5
	li	a5,1
	bleu	a4,a5,.L102
	lw	a4,-12(s0)
	li	a5,-65536
	addi	a5,a5,7
	add	a4,a4,a5
	li	a5,2
	bgtu	a4,a5,.L103
.L102:
	li	a5,1
	j	.L105
.L103:
	li	a5,0
.L105:
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	iswcntrl, .-iswcntrl
	.align	2
	.globl	iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB25:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a5,-12(s0)
	addi	a5,a5,-48
	sltiu	a5,a5,10
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	iswdigit, .-iswdigit
	.align	2
	.globl	iswprint
	.type	iswprint, @function
iswprint:
.LFB26:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a4,-12(s0)
	li	a5,254
	bgtu	a4,a5,.L109
	lw	a5,-12(s0)
	addi	a5,a5,1
	andi	a5,a5,127
	sltiu	a5,a5,33
	seqz	a5,a5
	andi	a5,a5,0xff
	j	.L110
.L109:
	lw	a4,-12(s0)
	li	a5,8192
	addi	a5,a5,39
	bleu	a4,a5,.L111
	lw	a4,-12(s0)
	li	a5,-8192
	addi	a5,a5,-42
	add	a4,a4,a5
	li	a5,45056
	addi	a5,a5,2005
	bleu	a4,a5,.L111
	lw	a4,-12(s0)
	li	a5,-57344
	add	a4,a4,a5
	li	a5,8192
	addi	a5,a5,-8
	bgtu	a4,a5,.L112
.L111:
	li	a5,1
	j	.L110
.L112:
	lw	a4,-12(s0)
	li	a5,-65536
	addi	a5,a5,4
	add	a4,a4,a5
	li	a5,1048576
	addi	a5,a5,3
	bgtu	a4,a5,.L113
	lw	a4,-12(s0)
	li	a5,65536
	addi	a5,a5,-2
	and	a4,a4,a5
	li	a5,65536
	addi	a5,a5,-2
	bne	a4,a5,.L114
.L113:
	li	a5,0
	j	.L110
.L114:
	li	a5,1
.L110:
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB27:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a5,-12(s0)
	addi	a4,a5,-48
	li	a5,9
	bleu	a4,a5,.L116
	lw	a5,-12(s0)
	ori	a5,a5,32
	addi	a4,a5,-97
	li	a5,5
	bgtu	a4,a5,.L117
.L116:
	li	a5,1
	j	.L119
.L117:
	li	a5,0
.L119:
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	iswxdigit, .-iswxdigit
	.align	2
	.globl	toascii
	.type	toascii, @function
toascii:
.LFB28:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a5,-12(s0)
	andi	a5,a5,127
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	toascii, .-toascii
	.align	2
	.globl	fdim
	.type	fdim, @function
fdim:
.LFB29:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-12(s0)
	sw	a2,-24(s0)
	sw	a3,-20(s0)
	lw	a2,-16(s0)
	lw	a3,-12(s0)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__unorddf2
	mv	a5,a0
	beq	a5,zero,.L134
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	j	.L125
.L134:
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__unorddf2
	mv	a5,a0
	beq	a5,zero,.L135
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	j	.L125
.L135:
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__gtdf2
	mv	a5,a0
	ble	a5,zero,.L136
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__subdf3
	mv	a4,a0
	mv	a5,a1
	j	.L125
.L136:
	li	a4,0
	li	a5,0
.L125:
	mv	a0,a4
	mv	a1,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	.type	fdimf, @function
fdimf:
.LFB30:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	lw	a1,-12(s0)
	lw	a0,-12(s0)
	call	__unordsf2
	mv	a5,a0
	beq	a5,zero,.L149
	lw	a5,-12(s0)
	j	.L140
.L149:
	lw	a1,-16(s0)
	lw	a0,-16(s0)
	call	__unordsf2
	mv	a5,a0
	beq	a5,zero,.L150
	lw	a5,-16(s0)
	j	.L140
.L150:
	lw	a1,-16(s0)
	lw	a0,-12(s0)
	call	__gtsf2
	mv	a5,a0
	ble	a5,zero,.L151
	lw	a1,-16(s0)
	lw	a0,-12(s0)
	call	__subsf3
	mv	a5,a0
	j	.L140
.L151:
	mv	a5,zero
.L140:
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.type	fmax, @function
fmax:
.LFB31:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-12(s0)
	sw	a2,-24(s0)
	sw	a3,-20(s0)
	lw	a2,-16(s0)
	lw	a3,-12(s0)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__unorddf2
	mv	a5,a0
	beq	a5,zero,.L167
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	j	.L155
.L167:
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__unorddf2
	mv	a5,a0
	beq	a5,zero,.L168
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	j	.L155
.L168:
	lw	a4,-12(s0)
	li	a5,-2147483648
	and	a5,a4,a5
	mv	a3,a5
	lw	a4,-20(s0)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a3,a5,.L158
	lw	a4,-12(s0)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a5,zero,.L159
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	j	.L155
.L159:
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	j	.L155
.L158:
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__ltdf2
	mv	a5,a0
	bge	a5,zero,.L169
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	j	.L155
.L169:
	lw	a4,-16(s0)
	lw	a5,-12(s0)
.L155:
	mv	a0,a4
	mv	a1,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB32:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	lw	a1,-12(s0)
	lw	a0,-12(s0)
	call	__unordsf2
	mv	a5,a0
	beq	a5,zero,.L185
	lw	a5,-16(s0)
	j	.L173
.L185:
	lw	a1,-16(s0)
	lw	a0,-16(s0)
	call	__unordsf2
	mv	a5,a0
	beq	a5,zero,.L186
	lw	a5,-12(s0)
	j	.L173
.L186:
	lw	a4,-12(s0)
	li	a5,-2147483648
	and	a5,a4,a5
	mv	a3,a5
	lw	a4,-16(s0)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a3,a5,.L176
	lw	a4,-12(s0)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a5,zero,.L177
	lw	a5,-16(s0)
	j	.L173
.L177:
	lw	a5,-12(s0)
	j	.L173
.L176:
	lw	a1,-16(s0)
	lw	a0,-12(s0)
	call	__ltsf2
	mv	a5,a0
	bge	a5,zero,.L187
	lw	a5,-16(s0)
	j	.L173
.L187:
	lw	a5,-12(s0)
.L173:
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB33:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	mv	s1,a1
	lw	a5,0(s1)
	sw	a5,-32(s0)
	lw	a5,4(s1)
	sw	a5,-28(s0)
	lw	a5,8(s1)
	sw	a5,-24(s0)
	lw	a5,12(s1)
	sw	a5,-20(s0)
	mv	s1,a2
	lw	a5,0(s1)
	sw	a5,-48(s0)
	lw	a5,4(s1)
	sw	a5,-44(s0)
	lw	a5,8(s1)
	sw	a5,-40(s0)
	lw	a5,12(s1)
	sw	a5,-36(s0)
	lw	t0,-32(s0)
	lw	t1,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	addi	t2,s0,-64
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	addi	s1,s0,-80
	sw	t0,-64(s0)
	sw	t1,-60(s0)
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	a2,-80(s0)
	sw	a3,-76(s0)
	sw	a4,-72(s0)
	sw	a5,-68(s0)
	mv	a1,s1
	mv	a0,t2
	call	__unordtf2
	mv	a5,a0
	beq	a5,zero,.L203
	lw	a5,-16(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	lw	a4,-36(s0)
	sw	a4,12(a5)
	j	.L191
.L203:
	lw	t0,-48(s0)
	lw	t1,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	addi	t2,s0,-64
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	addi	s1,s0,-80
	sw	t0,-64(s0)
	sw	t1,-60(s0)
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	a2,-80(s0)
	sw	a3,-76(s0)
	sw	a4,-72(s0)
	sw	a5,-68(s0)
	mv	a1,s1
	mv	a0,t2
	call	__unordtf2
	mv	a5,a0
	beq	a5,zero,.L204
	lw	a5,-16(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
	lw	a4,-28(s0)
	sw	a4,4(a5)
	lw	a4,-24(s0)
	sw	a4,8(a5)
	lw	a4,-20(s0)
	sw	a4,12(a5)
	j	.L191
.L204:
	lw	a4,-20(s0)
	li	a5,-2147483648
	and	a5,a4,a5
	mv	a3,a5
	lw	a4,-36(s0)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a3,a5,.L194
	lw	a4,-20(s0)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a5,zero,.L195
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	j	.L196
.L195:
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
.L196:
	lw	a1,-16(s0)
	sw	a2,0(a1)
	sw	a3,4(a1)
	sw	a4,8(a1)
	sw	a5,12(a1)
	j	.L191
.L194:
	lw	t0,-32(s0)
	lw	t1,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	addi	t2,s0,-64
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	addi	s1,s0,-80
	sw	t0,-64(s0)
	sw	t1,-60(s0)
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	a2,-80(s0)
	sw	a3,-76(s0)
	sw	a4,-72(s0)
	sw	a5,-68(s0)
	mv	a1,s1
	mv	a0,t2
	call	__lttf2
	mv	a5,a0
	bge	a5,zero,.L205
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	j	.L199
.L205:
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
.L199:
	lw	a1,-16(s0)
	sw	a2,0(a1)
	sw	a3,4(a1)
	sw	a4,8(a1)
	sw	a5,12(a1)
.L191:
	lw	a0,-16(s0)
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB34:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-12(s0)
	sw	a2,-24(s0)
	sw	a3,-20(s0)
	lw	a2,-16(s0)
	lw	a3,-12(s0)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__unorddf2
	mv	a5,a0
	beq	a5,zero,.L221
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	j	.L209
.L221:
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__unorddf2
	mv	a5,a0
	beq	a5,zero,.L222
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	j	.L209
.L222:
	lw	a4,-12(s0)
	li	a5,-2147483648
	and	a5,a4,a5
	mv	a3,a5
	lw	a4,-20(s0)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a3,a5,.L212
	lw	a4,-12(s0)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a5,zero,.L213
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	j	.L209
.L213:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	j	.L209
.L212:
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__ltdf2
	mv	a5,a0
	bge	a5,zero,.L223
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	j	.L209
.L223:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
.L209:
	mv	a0,a4
	mv	a1,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE34:
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB35:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	lw	a1,-12(s0)
	lw	a0,-12(s0)
	call	__unordsf2
	mv	a5,a0
	beq	a5,zero,.L239
	lw	a5,-16(s0)
	j	.L227
.L239:
	lw	a1,-16(s0)
	lw	a0,-16(s0)
	call	__unordsf2
	mv	a5,a0
	beq	a5,zero,.L240
	lw	a5,-12(s0)
	j	.L227
.L240:
	lw	a4,-12(s0)
	li	a5,-2147483648
	and	a5,a4,a5
	mv	a3,a5
	lw	a4,-16(s0)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a3,a5,.L230
	lw	a4,-12(s0)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a5,zero,.L231
	lw	a5,-12(s0)
	j	.L227
.L231:
	lw	a5,-16(s0)
	j	.L227
.L230:
	lw	a1,-16(s0)
	lw	a0,-12(s0)
	call	__ltsf2
	mv	a5,a0
	bge	a5,zero,.L241
	lw	a5,-12(s0)
	j	.L227
.L241:
	lw	a5,-16(s0)
.L227:
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.type	fminl, @function
fminl:
.LFB36:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	mv	s1,a1
	lw	a5,0(s1)
	sw	a5,-32(s0)
	lw	a5,4(s1)
	sw	a5,-28(s0)
	lw	a5,8(s1)
	sw	a5,-24(s0)
	lw	a5,12(s1)
	sw	a5,-20(s0)
	mv	s1,a2
	lw	a5,0(s1)
	sw	a5,-48(s0)
	lw	a5,4(s1)
	sw	a5,-44(s0)
	lw	a5,8(s1)
	sw	a5,-40(s0)
	lw	a5,12(s1)
	sw	a5,-36(s0)
	lw	t0,-32(s0)
	lw	t1,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	addi	t2,s0,-64
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	addi	s1,s0,-80
	sw	t0,-64(s0)
	sw	t1,-60(s0)
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	a2,-80(s0)
	sw	a3,-76(s0)
	sw	a4,-72(s0)
	sw	a5,-68(s0)
	mv	a1,s1
	mv	a0,t2
	call	__unordtf2
	mv	a5,a0
	beq	a5,zero,.L257
	lw	a5,-16(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	lw	a4,-36(s0)
	sw	a4,12(a5)
	j	.L245
.L257:
	lw	t0,-48(s0)
	lw	t1,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	addi	t2,s0,-64
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	addi	s1,s0,-80
	sw	t0,-64(s0)
	sw	t1,-60(s0)
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	a2,-80(s0)
	sw	a3,-76(s0)
	sw	a4,-72(s0)
	sw	a5,-68(s0)
	mv	a1,s1
	mv	a0,t2
	call	__unordtf2
	mv	a5,a0
	beq	a5,zero,.L258
	lw	a5,-16(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
	lw	a4,-28(s0)
	sw	a4,4(a5)
	lw	a4,-24(s0)
	sw	a4,8(a5)
	lw	a4,-20(s0)
	sw	a4,12(a5)
	j	.L245
.L258:
	lw	a4,-20(s0)
	li	a5,-2147483648
	and	a5,a4,a5
	mv	a3,a5
	lw	a4,-36(s0)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a3,a5,.L248
	lw	a4,-20(s0)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a5,zero,.L249
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	j	.L250
.L249:
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
.L250:
	lw	a1,-16(s0)
	sw	a2,0(a1)
	sw	a3,4(a1)
	sw	a4,8(a1)
	sw	a5,12(a1)
	j	.L245
.L248:
	lw	t0,-32(s0)
	lw	t1,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	addi	t2,s0,-64
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	addi	s1,s0,-80
	sw	t0,-64(s0)
	sw	t1,-60(s0)
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	a2,-80(s0)
	sw	a3,-76(s0)
	sw	a4,-72(s0)
	sw	a5,-68(s0)
	mv	a1,s1
	mv	a0,t2
	call	__lttf2
	mv	a5,a0
	bge	a5,zero,.L259
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	j	.L253
.L259:
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
.L253:
	lw	a1,-16(s0)
	sw	a2,0(a1)
	sw	a3,4(a1)
	sw	a4,8(a1)
	sw	a5,12(a1)
.L245:
	lw	a0,-16(s0)
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE36:
	.size	fminl, .-fminl
	.section	.rodata
	.align	2
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.align	2
	.globl	l64a
	.type	l64a, @function
l64a:
.LFB37:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	sw	a5,-16(s0)
	lui	a5,%hi(s.0)
	addi	a5,a5,%lo(s.0)
	sw	a5,-12(s0)
	j	.L261
.L262:
	lw	a5,-16(s0)
	andi	a5,a5,63
	lui	a4,%hi(digits)
	addi	a4,a4,%lo(digits)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-12(s0)
	sb	a4,0(a5)
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	srli	a5,a5,6
	sw	a5,-16(s0)
.L261:
	lw	a5,-16(s0)
	bne	a5,zero,.L262
	lw	a5,-12(s0)
	sb	zero,0(a5)
	lui	a5,%hi(s.0)
	addi	a5,a5,%lo(s.0)
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE37:
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	2
	.globl	srand
	.type	srand, @function
srand:
.LFB38:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a3,-12(s0)
	addi	a3,a3,-1
	mv	a4,a3
	li	a5,0
	lui	a3,%hi(seed)
	sw	a4,%lo(seed)(a3)
	sw	a5,%lo(seed+4)(a3)
	nop
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE38:
	.size	srand, .-srand
	.align	2
	.globl	rand
	.type	rand, @function
rand:
.LFB39:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lui	a5,%hi(seed)
	lw	a4,%lo(seed)(a5)
	lw	a5,%lo(seed+4)(a5)
	lui	a3,%hi(.LC0)
	lw	a2,%lo(.LC0)(a3)
	lw	a3,%lo(.LC0+4)(a3)
	mv	a0,a4
	mv	a1,a5
	call	__muldi3
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	li	a0,1
	li	a1,0
	add	a4,a2,a0
	mv	t1,a4
	sltu	t1,t1,a2
	add	a5,a3,a1
	add	a3,t1,a5
	mv	a5,a3
	lui	a3,%hi(seed)
	sw	a4,%lo(seed)(a3)
	sw	a5,%lo(seed+4)(a3)
	lui	a5,%hi(seed)
	lw	a4,%lo(seed)(a5)
	lw	a5,%lo(seed+4)(a5)
	srli	a5,a5,1
	sw	a5,-16(s0)
	sw	zero,-12(s0)
	lw	a5,-16(s0)
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE39:
	.size	rand, .-rand
	.align	2
	.globl	insque
	.type	insque, @function
insque:
.LFB40:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	sw	a5,-12(s0)
	lw	a5,-24(s0)
	sw	a5,-16(s0)
	lw	a5,-16(s0)
	bne	a5,zero,.L268
	lw	a5,-12(s0)
	sw	zero,4(a5)
	lw	a5,-12(s0)
	lw	a4,4(a5)
	lw	a5,-12(s0)
	sw	a4,0(a5)
	j	.L267
.L268:
	lw	a5,-16(s0)
	lw	a4,0(a5)
	lw	a5,-12(s0)
	sw	a4,0(a5)
	lw	a5,-12(s0)
	lw	a4,-16(s0)
	sw	a4,4(a5)
	lw	a5,-16(s0)
	lw	a4,-12(s0)
	sw	a4,0(a5)
	lw	a5,-12(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L267
	lw	a5,-12(s0)
	lw	a5,0(a5)
	lw	a4,-12(s0)
	sw	a4,4(a5)
.L267:
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
.LFB41:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	lw	a5,-16(s0)
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L271
	lw	a5,-12(s0)
	lw	a5,0(a5)
	lw	a4,-12(s0)
	lw	a4,4(a4)
	sw	a4,4(a5)
.L271:
	lw	a5,-12(s0)
	lw	a5,4(a5)
	beq	a5,zero,.L273
	lw	a5,-12(s0)
	lw	a5,4(a5)
	lw	a4,-12(s0)
	lw	a4,0(a4)
	sw	a4,0(a5)
.L273:
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE41:
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.type	lsearch, @function
lsearch:
.LFB42:
	.cfi_startproc
	addi	sp,sp,-56
	.cfi_def_cfa_offset 56
	sw	ra,52(sp)
	sw	s0,48(sp)
	sw	s1,44(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,56
	.cfi_def_cfa 8, 0
	sw	a0,-32(s0)
	sw	a1,-36(s0)
	sw	a2,-40(s0)
	sw	a3,-44(s0)
	sw	a4,-48(s0)
	lw	s1,-44(s0)
	mv	a5,s1
	addi	a5,a5,-1
	sw	a5,-20(s0)
	sw	s1,-56(s0)
	sw	zero,-52(s0)
	lw	a2,-56(s0)
	lw	a3,-52(s0)
	mv	a5,a2
	srli	a5,a5,29
	mv	a4,a3
	slli	t2,a4,3
	or	t2,a5,t2
	mv	a5,a2
	slli	t1,a5,3
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	sw	zero,-16(s0)
	j	.L275
.L278:
	lw	a1,-16(s0)
	mv	a0,s1
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,-24(s0)
	add	a4,a5,a4
	lw	a5,-48(s0)
	mv	a1,a4
	lw	a0,-32(s0)
	jalr	a5
	mv	a5,a0
	bne	a5,zero,.L276
	lw	a1,-16(s0)
	mv	a0,s1
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,-24(s0)
	add	a5,a5,a4
	j	.L277
.L276:
	lw	a5,-16(s0)
	addi	a5,a5,1
	sw	a5,-16(s0)
.L275:
	lw	a4,-16(s0)
	lw	a5,-28(s0)
	bltu	a4,a5,.L278
	lw	a5,-28(s0)
	addi	a4,a5,1
	lw	a5,-40(s0)
	sw	a4,0(a5)
	lw	a1,-28(s0)
	mv	a0,s1
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,-24(s0)
	add	a5,a5,a4
	lw	a2,-44(s0)
	lw	a1,-32(s0)
	mv	a0,a5
	call	memcpy
	mv	a5,a0
.L277:
	mv	a0,a5
	lw	ra,52(sp)
	.cfi_restore 1
	lw	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 56
	lw	s1,44(sp)
	.cfi_restore 9
	addi	sp,sp,56
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE42:
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.type	lfind, @function
lfind:
.LFB43:
	.cfi_startproc
	addi	sp,sp,-56
	.cfi_def_cfa_offset 56
	sw	ra,52(sp)
	sw	s0,48(sp)
	sw	s1,44(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,56
	.cfi_def_cfa 8, 0
	sw	a0,-32(s0)
	sw	a1,-36(s0)
	sw	a2,-40(s0)
	sw	a3,-44(s0)
	sw	a4,-48(s0)
	lw	s1,-44(s0)
	mv	a5,s1
	addi	a5,a5,-1
	sw	a5,-20(s0)
	sw	s1,-56(s0)
	sw	zero,-52(s0)
	lw	a2,-56(s0)
	lw	a3,-52(s0)
	mv	a5,a2
	srli	a5,a5,29
	mv	a4,a3
	slli	t2,a4,3
	or	t2,a5,t2
	mv	a5,a2
	slli	t1,a5,3
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	sw	zero,-16(s0)
	j	.L280
.L283:
	lw	a1,-16(s0)
	mv	a0,s1
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,-24(s0)
	add	a4,a5,a4
	lw	a5,-48(s0)
	mv	a1,a4
	lw	a0,-32(s0)
	jalr	a5
	mv	a5,a0
	bne	a5,zero,.L281
	lw	a1,-16(s0)
	mv	a0,s1
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,-24(s0)
	add	a5,a5,a4
	j	.L282
.L281:
	lw	a5,-16(s0)
	addi	a5,a5,1
	sw	a5,-16(s0)
.L280:
	lw	a4,-16(s0)
	lw	a5,-28(s0)
	bltu	a4,a5,.L283
	li	a5,0
.L282:
	mv	a0,a5
	lw	ra,52(sp)
	.cfi_restore 1
	lw	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 56
	lw	s1,44(sp)
	.cfi_restore 9
	addi	sp,sp,56
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE43:
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.type	abs, @function
abs:
.LFB44:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a5,-12(s0)
	srai	a4,a5,31
	lw	a5,-12(s0)
	xor	a5,a4,a5
	sub	a5,a5,a4
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE44:
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
.LFB45:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	zero,-12(s0)
	sw	zero,-16(s0)
	j	.L287
.L288:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L287:
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	isspace
	mv	a5,a0
	bne	a5,zero,.L288
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	li	a4,43
	beq	a5,a4,.L289
	li	a4,45
	bne	a5,a4,.L291
	li	a5,1
	sw	a5,-16(s0)
.L289:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	j	.L291
.L292:
	lw	a4,-12(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a3,a5
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	lbu	a5,0(a5)
	addi	a5,a5,-48
	sub	a5,a3,a5
	sw	a5,-12(s0)
.L291:
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	addi	a4,a5,-48
	li	a5,9
	bleu	a4,a5,.L292
	lw	a5,-16(s0)
	bne	a5,zero,.L293
	lw	a5,-12(s0)
	neg	a5,a5
	j	.L295
.L293:
	lw	a5,-12(s0)
.L295:
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE45:
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
.LFB46:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	zero,-12(s0)
	sw	zero,-16(s0)
	j	.L297
.L298:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L297:
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	isspace
	mv	a5,a0
	bne	a5,zero,.L298
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	li	a4,43
	beq	a5,a4,.L299
	li	a4,45
	bne	a5,a4,.L301
	li	a5,1
	sw	a5,-16(s0)
.L299:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	j	.L301
.L302:
	lw	a4,-12(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a3,a5
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	lbu	a5,0(a5)
	addi	a5,a5,-48
	sub	a5,a3,a5
	sw	a5,-12(s0)
.L301:
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	addi	a4,a5,-48
	li	a5,9
	bleu	a4,a5,.L302
	lw	a5,-16(s0)
	bne	a5,zero,.L303
	lw	a5,-12(s0)
	neg	a5,a5
	j	.L305
.L303:
	lw	a5,-12(s0)
.L305:
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE46:
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
	addi	sp,sp,-60
	.cfi_def_cfa_offset 60
	sw	ra,56(sp)
	sw	s0,52(sp)
	sw	s1,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,60
	.cfi_def_cfa 8, 0
	sw	a0,-32(s0)
	addi	a5,s0,-12
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	addi	a5,a5,-16
	addi	a5,a5,7
	srli	a5,a5,3
	slli	s1,a5,3
	li	a4,0
	li	a5,0
	sw	a4,0(s1)
	sw	a5,4(s1)
	sw	zero,-16(s0)
	j	.L307
.L308:
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L307:
	lw	a5,-32(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	isspace
	mv	a5,a0
	bne	a5,zero,.L308
	lw	a5,-32(s0)
	lbu	a5,0(a5)
	li	a4,43
	beq	a5,a4,.L309
	li	a4,45
	bne	a5,a4,.L311
	li	a5,1
	sw	a5,-16(s0)
.L309:
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
	j	.L311
.L312:
	lw	t1,0(s1)
	lw	t2,4(s1)
	mv	a4,t1
	mv	a5,t2
	srli	a3,a4,30
	slli	a2,a5,2
	sw	a2,-36(s0)
	lw	a2,-36(s0)
	or	a3,a3,a2
	sw	a3,-36(s0)
	slli	a5,a4,2
	sw	a5,-40(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	add	a0,a4,t1
	mv	a3,a0
	sltu	a3,a3,a4
	add	a1,a5,t2
	add	a5,a3,a1
	mv	a1,a5
	mv	a4,a0
	mv	a5,a1
	srli	a3,a4,31
	slli	a2,a5,1
	sw	a2,-44(s0)
	lw	a2,-44(s0)
	or	a3,a3,a2
	sw	a3,-44(s0)
	slli	a5,a4,1
	sw	a5,-48(s0)
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	mv	a2,a4
	mv	a3,a5
	lw	a5,-32(s0)
	addi	a4,a5,1
	sw	a4,-32(s0)
	lbu	a5,0(a5)
	addi	a5,a5,-48
	sw	a5,-56(s0)
	srai	a5,a5,31
	sw	a5,-52(s0)
	lw	t1,-56(s0)
	lw	t2,-52(s0)
	mv	a1,t1
	sub	a4,a2,a1
	mv	a1,a4
	sgtu	a1,a1,a2
	mv	a0,t2
	sub	a5,a3,a0
	sub	a3,a5,a1
	mv	a5,a3
	sw	a4,0(s1)
	sw	a5,4(s1)
.L311:
	lw	a5,-32(s0)
	lbu	a5,0(a5)
	addi	a4,a5,-48
	li	a5,9
	bleu	a4,a5,.L312
	lw	a5,-16(s0)
	bne	a5,zero,.L313
	li	a4,0
	li	a5,0
	lw	a0,0(s1)
	lw	a1,4(s1)
	sub	a2,a4,a0
	mv	t1,a2
	sgtu	t1,t1,a4
	sub	a3,a5,a1
	sub	a5,a3,t1
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	j	.L315
.L313:
	lw	a4,0(s1)
	lw	a5,4(s1)
.L315:
	mv	a0,a4
	mv	a1,a5
	lw	ra,56(sp)
	.cfi_restore 1
	lw	s0,52(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 60
	lw	s1,48(sp)
	.cfi_restore 9
	addi	sp,sp,60
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE47:
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.type	bsearch, @function
bsearch:
.LFB48:
	.cfi_startproc
	addi	sp,sp,-36
	.cfi_def_cfa_offset 36
	sw	ra,32(sp)
	sw	s0,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,36
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	j	.L317
.L322:
	lw	a5,-28(s0)
	srli	a5,a5,1
	lw	a1,-32(s0)
	mv	a0,a5
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-12(s0)
	lw	a5,-36(s0)
	lw	a1,-12(s0)
	lw	a0,-20(s0)
	jalr	a5
	sw	a0,-16(s0)
	lw	a5,-16(s0)
	bge	a5,zero,.L318
	lw	a5,-28(s0)
	srli	a5,a5,1
	sw	a5,-28(s0)
	j	.L317
.L318:
	lw	a5,-16(s0)
	ble	a5,zero,.L320
	lw	a4,-12(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	srli	a5,a5,1
	lw	a4,-28(s0)
	sub	a5,a4,a5
	addi	a5,a5,-1
	sw	a5,-28(s0)
	j	.L317
.L320:
	lw	a5,-12(s0)
	j	.L321
.L317:
	lw	a5,-28(s0)
	bne	a5,zero,.L322
	li	a5,0
.L321:
	mv	a0,a5
	lw	ra,32(sp)
	.cfi_restore 1
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 36
	addi	sp,sp,36
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE48:
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB49:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-28(s0)
	sw	a1,-32(s0)
	sw	a2,-36(s0)
	sw	a3,-40(s0)
	sw	a4,-44(s0)
	sw	a5,-48(s0)
	lw	a5,-32(s0)
	sw	a5,-12(s0)
	lw	a5,-36(s0)
	sw	a5,-16(s0)
	j	.L324
.L328:
	lw	a5,-16(s0)
	srai	a5,a5,1
	lw	a1,-40(s0)
	mv	a0,a5
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,-12(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a5,-44(s0)
	lw	a2,-48(s0)
	lw	a1,-20(s0)
	lw	a0,-28(s0)
	jalr	a5
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	bne	a5,zero,.L325
	lw	a5,-20(s0)
	j	.L326
.L325:
	lw	a5,-24(s0)
	ble	a5,zero,.L327
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	addi	a5,a5,-1
	sw	a5,-16(s0)
.L327:
	lw	a5,-16(s0)
	srai	a5,a5,1
	sw	a5,-16(s0)
.L324:
	lw	a5,-16(s0)
	bne	a5,zero,.L328
	li	a5,0
.L326:
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE49:
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	addi	sp,sp,-44
	.cfi_def_cfa_offset 44
	sw	ra,40(sp)
	sw	s0,36(sp)
	sw	s1,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,44
	.cfi_def_cfa 8, 0
	sw	a0,-32(s0)
	sw	a1,-36(s0)
	lw	a1,-36(s0)
	lw	a0,-32(s0)
	call	__divsi3
	mv	a5,a0
	mv	s1,a5
	lw	a5,-32(s0)
	lw	a1,-36(s0)
	mv	a0,a5
	call	__modsi3
	mv	a5,a0
	sw	s1,-20(s0)
	sw	a5,-16(s0)
	lw	a4,-20(s0)
	lw	a5,-16(s0)
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	lw	a4,-44(s0)
	lw	a5,-40(s0)
	mv	a0,a4
	mv	a1,a5
	lw	ra,40(sp)
	.cfi_restore 1
	lw	s0,36(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 44
	lw	s1,32(sp)
	.cfi_restore 9
	addi	sp,sp,44
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE50:
	.size	div, .-div
	.align	2
	.globl	imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB51:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-12(s0)
	lw	a1,-12(s0)
	srai	a4,a1,31
	lw	a1,-12(s0)
	srai	a5,a1,31
	lw	a1,-16(s0)
	xor	a2,a1,a4
	lw	a1,-12(s0)
	xor	a3,a1,a5
	sub	a0,a2,a4
	mv	t1,a0
	sgtu	t1,t1,a2
	sub	a1,a3,a5
	sub	a5,a1,t1
	mv	a1,a5
	mv	a2,a0
	mv	a3,a1
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE51:
	.size	imaxabs, .-imaxabs
	.align	2
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB52:
	.cfi_startproc
	addi	sp,sp,-56
	.cfi_def_cfa_offset 56
	sw	ra,52(sp)
	sw	s0,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,56
	.cfi_def_cfa 8, 0
	sw	a0,-32(s0)
	sw	a1,-40(s0)
	sw	a2,-36(s0)
	sw	a3,-48(s0)
	sw	a4,-44(s0)
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	__divdi3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-56(s0)
	sw	a5,-52(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	mv	a0,a4
	mv	a1,a5
	call	__moddi3
	mv	a4,a0
	mv	a5,a1
	lw	a3,-32(s0)
	lw	a1,-56(s0)
	lw	a2,-52(s0)
	sw	a1,0(a3)
	sw	a2,4(a3)
	lw	a3,-32(s0)
	sw	a4,8(a3)
	sw	a5,12(a3)
	lw	a0,-32(s0)
	lw	ra,52(sp)
	.cfi_restore 1
	lw	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 56
	addi	sp,sp,56
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE52:
	.size	imaxdiv, .-imaxdiv
	.align	2
	.globl	labs
	.type	labs, @function
labs:
.LFB53:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a5,-12(s0)
	srai	a4,a5,31
	lw	a5,-12(s0)
	xor	a5,a4,a5
	sub	a5,a5,a4
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE53:
	.size	labs, .-labs
	.align	2
	.globl	ldiv
	.type	ldiv, @function
ldiv:
.LFB54:
	.cfi_startproc
	addi	sp,sp,-44
	.cfi_def_cfa_offset 44
	sw	ra,40(sp)
	sw	s0,36(sp)
	sw	s1,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,44
	.cfi_def_cfa 8, 0
	sw	a0,-32(s0)
	sw	a1,-36(s0)
	lw	a1,-36(s0)
	lw	a0,-32(s0)
	call	__divsi3
	mv	a5,a0
	mv	s1,a5
	lw	a5,-32(s0)
	lw	a1,-36(s0)
	mv	a0,a5
	call	__modsi3
	mv	a5,a0
	sw	s1,-20(s0)
	sw	a5,-16(s0)
	lw	a4,-20(s0)
	lw	a5,-16(s0)
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	lw	a4,-44(s0)
	lw	a5,-40(s0)
	mv	a0,a4
	mv	a1,a5
	lw	ra,40(sp)
	.cfi_restore 1
	lw	s0,36(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 44
	lw	s1,32(sp)
	.cfi_restore 9
	addi	sp,sp,44
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE54:
	.size	ldiv, .-ldiv
	.align	2
	.globl	llabs
	.type	llabs, @function
llabs:
.LFB55:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-12(s0)
	lw	a1,-12(s0)
	srai	a4,a1,31
	lw	a1,-12(s0)
	srai	a5,a1,31
	lw	a1,-16(s0)
	xor	a2,a1,a4
	lw	a1,-12(s0)
	xor	a3,a1,a5
	sub	a0,a2,a4
	mv	t1,a0
	sgtu	t1,t1,a2
	sub	a1,a3,a5
	sub	a5,a1,t1
	mv	a1,a5
	mv	a2,a0
	mv	a3,a1
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE55:
	.size	llabs, .-llabs
	.align	2
	.globl	lldiv
	.type	lldiv, @function
lldiv:
.LFB56:
	.cfi_startproc
	addi	sp,sp,-56
	.cfi_def_cfa_offset 56
	sw	ra,52(sp)
	sw	s0,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,56
	.cfi_def_cfa 8, 0
	sw	a0,-32(s0)
	sw	a1,-40(s0)
	sw	a2,-36(s0)
	sw	a3,-48(s0)
	sw	a4,-44(s0)
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	__divdi3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-56(s0)
	sw	a5,-52(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	mv	a0,a4
	mv	a1,a5
	call	__moddi3
	mv	a4,a0
	mv	a5,a1
	lw	a3,-32(s0)
	lw	a1,-56(s0)
	lw	a2,-52(s0)
	sw	a1,0(a3)
	sw	a2,4(a3)
	lw	a3,-32(s0)
	sw	a4,8(a3)
	sw	a5,12(a3)
	lw	a0,-32(s0)
	lw	ra,52(sp)
	.cfi_restore 1
	lw	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 56
	addi	sp,sp,56
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE56:
	.size	lldiv, .-lldiv
	.align	2
	.globl	wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	j	.L344
.L346:
	lw	a5,-12(s0)
	addi	a5,a5,4
	sw	a5,-12(s0)
.L344:
	lw	a5,-12(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L345
	lw	a5,-12(s0)
	lw	a5,0(a5)
	lw	a4,-16(s0)
	bne	a4,a5,.L346
.L345:
	lw	a5,-12(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L347
	lw	a5,-12(s0)
	j	.L349
.L347:
	li	a5,0
.L349:
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE57:
	.size	wcschr, .-wcschr
	.align	2
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB58:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	j	.L351
.L353:
	lw	a5,-12(s0)
	addi	a5,a5,4
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	addi	a5,a5,4
	sw	a5,-16(s0)
.L351:
	lw	a5,-12(s0)
	lw	a4,0(a5)
	lw	a5,-16(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L352
	lw	a5,-12(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L352
	lw	a5,-16(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L353
.L352:
	lw	a5,-12(s0)
	lw	a4,0(a5)
	lw	a5,-16(s0)
	lw	a5,0(a5)
	blt	a4,a5,.L354
	lw	a5,-12(s0)
	lw	a4,0(a5)
	lw	a5,-16(s0)
	lw	a5,0(a5)
	sgt	a5,a4,a5
	andi	a5,a5,0xff
	j	.L356
.L354:
	li	a5,-1
.L356:
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE58:
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB59:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-20(s0)
	lw	a5,-16(s0)
	sw	a5,-12(s0)
	nop
.L358:
	lw	a4,-20(s0)
	addi	a5,a4,4
	sw	a5,-20(s0)
	lw	a5,-16(s0)
	addi	a3,a5,4
	sw	a3,-16(s0)
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,0(a5)
	bne	a5,zero,.L358
	lw	a5,-12(s0)
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE59:
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
.LFB60:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	lw	a5,-16(s0)
	sw	a5,-12(s0)
	j	.L361
.L362:
	lw	a5,-16(s0)
	addi	a5,a5,4
	sw	a5,-16(s0)
.L361:
	lw	a5,-16(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L362
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	sub	a5,a4,a5
	srai	a5,a5,2
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE60:
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	sw	a2,-20(s0)
	j	.L365
.L367:
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	lw	a5,-12(s0)
	addi	a5,a5,4
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	addi	a5,a5,4
	sw	a5,-16(s0)
.L365:
	lw	a5,-20(s0)
	beq	a5,zero,.L366
	lw	a5,-12(s0)
	lw	a4,0(a5)
	lw	a5,-16(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L366
	lw	a5,-12(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L366
	lw	a5,-16(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L367
.L366:
	lw	a5,-20(s0)
	beq	a5,zero,.L368
	lw	a5,-12(s0)
	lw	a4,0(a5)
	lw	a5,-16(s0)
	lw	a5,0(a5)
	blt	a4,a5,.L369
	lw	a5,-12(s0)
	lw	a4,0(a5)
	lw	a5,-16(s0)
	lw	a5,0(a5)
	sgt	a5,a4,a5
	andi	a5,a5,0xff
	j	.L372
.L369:
	li	a5,-1
	j	.L372
.L368:
	li	a5,0
.L372:
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE61:
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB62:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	sw	a2,-20(s0)
	j	.L374
.L376:
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	lw	a5,-12(s0)
	addi	a5,a5,4
	sw	a5,-12(s0)
.L374:
	lw	a5,-20(s0)
	beq	a5,zero,.L375
	lw	a5,-12(s0)
	lw	a5,0(a5)
	lw	a4,-16(s0)
	bne	a4,a5,.L376
.L375:
	lw	a5,-20(s0)
	beq	a5,zero,.L377
	lw	a5,-12(s0)
	j	.L379
.L377:
	li	a5,0
.L379:
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE62:
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB63:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	sw	a2,-20(s0)
	j	.L381
.L383:
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	lw	a5,-12(s0)
	addi	a5,a5,4
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	addi	a5,a5,4
	sw	a5,-16(s0)
.L381:
	lw	a5,-20(s0)
	beq	a5,zero,.L382
	lw	a5,-12(s0)
	lw	a4,0(a5)
	lw	a5,-16(s0)
	lw	a5,0(a5)
	beq	a4,a5,.L383
.L382:
	lw	a5,-20(s0)
	beq	a5,zero,.L384
	lw	a5,-12(s0)
	lw	a4,0(a5)
	lw	a5,-16(s0)
	lw	a5,0(a5)
	blt	a4,a5,.L385
	lw	a5,-12(s0)
	lw	a4,0(a5)
	lw	a5,-16(s0)
	lw	a5,0(a5)
	sgt	a5,a4,a5
	andi	a5,a5,0xff
	j	.L388
.L385:
	li	a5,-1
	j	.L388
.L384:
	li	a5,0
.L388:
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE63:
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB64:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-20(s0)
	sw	a2,-24(s0)
	lw	a5,-16(s0)
	sw	a5,-12(s0)
	j	.L390
.L391:
	lw	a4,-20(s0)
	addi	a5,a4,4
	sw	a5,-20(s0)
	lw	a5,-16(s0)
	addi	a3,a5,4
	sw	a3,-16(s0)
	lw	a4,0(a4)
	sw	a4,0(a5)
.L390:
	lw	a5,-24(s0)
	addi	a4,a5,-1
	sw	a4,-24(s0)
	bne	a5,zero,.L391
	lw	a5,-12(s0)
	mv	a0,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE64:
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB65:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-20(s0)
	sw	a2,-24(s0)
	lw	a5,-16(s0)
	sw	a5,-12(s0)
	lw	a4,-16(s0)
	lw	a5,-20(s0)
	bne	a4,a5,.L394
	lw	a5,-16(s0)
	j	.L395
.L394:
	lw	a4,-16(s0)
	lw	a5,-20(s0)
	sub	a4,a4,a5
	lw	a5,-24(s0)
	slli	a5,a5,2
	bgeu	a4,a5,.L400
	j	.L397
.L398:
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a3,-16(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
.L397:
	lw	a5,-24(s0)
	addi	a4,a5,-1
	sw	a4,-24(s0)
	bne	a5,zero,.L398
	j	.L399
.L401:
	lw	a4,-20(s0)
	addi	a5,a4,4
	sw	a5,-20(s0)
	lw	a5,-16(s0)
	addi	a3,a5,4
	sw	a3,-16(s0)
	lw	a4,0(a4)
	sw	a4,0(a5)
.L400:
	lw	a5,-24(s0)
	addi	a4,a5,-1
	sw	a4,-24(s0)
	bne	a5,zero,.L401
.L399:
	lw	a5,-12(s0)
.L395:
	mv	a0,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE65:
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB66:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-20(s0)
	sw	a2,-24(s0)
	lw	a5,-16(s0)
	sw	a5,-12(s0)
	j	.L403
.L404:
	lw	a5,-16(s0)
	addi	a4,a5,4
	sw	a4,-16(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L403:
	lw	a5,-24(s0)
	addi	a4,a5,-1
	sw	a4,-24(s0)
	bne	a5,zero,.L404
	lw	a5,-12(s0)
	mv	a0,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE66:
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB67:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,28
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a5,-20(s0)
	sw	a5,-12(s0)
	lw	a5,-24(s0)
	sw	a5,-16(s0)
	lw	a4,-12(s0)
	lw	a5,-16(s0)
	bgeu	a4,a5,.L407
	lw	a4,-12(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-12(s0)
	lw	a4,-16(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-16(s0)
	j	.L408
.L409:
	lw	a5,-12(s0)
	addi	a5,a5,-1
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	addi	a5,a5,-1
	sw	a5,-16(s0)
	lw	a5,-12(s0)
	lbu	a4,0(a5)
	lw	a5,-16(s0)
	sb	a4,0(a5)
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
.L408:
	lw	a5,-28(s0)
	bne	a5,zero,.L409
	j	.L413
.L407:
	lw	a4,-12(s0)
	lw	a5,-16(s0)
	beq	a4,a5,.L413
	j	.L411
.L412:
	lw	a4,-12(s0)
	addi	a5,a4,1
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	addi	a3,a5,1
	sw	a3,-16(s0)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
.L411:
	lw	a5,-28(s0)
	bne	a5,zero,.L412
.L413:
	nop
	lw	ra,24(sp)
	.cfi_restore 1
	lw	s0,20(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 28
	addi	sp,sp,28
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE67:
	.size	bcopy, .-bcopy
	.align	2
	.globl	rotl64
	.type	rotl64, @function
rotl64:
.LFB68:
	.cfi_startproc
	addi	sp,sp,-36
	.cfi_def_cfa_offset 36
	sw	ra,32(sp)
	sw	s0,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,36
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-12(s0)
	sw	a2,-20(s0)
	lw	a2,-16(s0)
	lw	a3,-12(s0)
	lw	a5,-20(s0)
	addi	a5,a5,-32
	blt	a5,zero,.L415
	sll	a5,a2,a5
	sw	a5,-24(s0)
	sw	zero,-28(s0)
	j	.L416
.L415:
	srli	a4,a2,1
	li	a1,31
	lw	a5,-20(s0)
	sub	a5,a1,a5
	srl	a5,a4,a5
	lw	a4,-20(s0)
	sll	a4,a3,a4
	sw	a4,-24(s0)
	lw	a4,-24(s0)
	or	a5,a5,a4
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	sll	a5,a2,a5
	sw	a5,-28(s0)
.L416:
	lw	a5,-20(s0)
	neg	a5,a5
	andi	a5,a5,63
	addi	a5,a5,-32
	blt	a5,zero,.L417
	srl	t1,a3,a5
	li	t2,0
	j	.L418
.L417:
	slli	a4,a3,1
	li	a1,31
	lw	a5,-20(s0)
	neg	a5,a5
	andi	a5,a5,63
	sub	a5,a1,a5
	sll	a5,a4,a5
	lw	a4,-20(s0)
	neg	a4,a4
	andi	a4,a4,63
	srl	t1,a2,a4
	or	t1,a5,t1
	lw	a5,-20(s0)
	neg	a5,a5
	andi	a5,a5,63
	srl	t2,a3,a5
.L418:
	lw	a3,-28(s0)
	lw	a4,-24(s0)
	mv	a5,a3
	or	a5,t1,a5
	sw	a5,-36(s0)
	mv	a5,a4
	or	a5,t2,a5
	sw	a5,-32(s0)
	lw	t1,-36(s0)
	lw	t2,-32(s0)
	mv	a4,t1
	mv	a5,t2
	mv	a0,a4
	mv	a1,a5
	lw	ra,32(sp)
	.cfi_restore 1
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 36
	addi	sp,sp,36
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE68:
	.size	rotl64, .-rotl64
	.align	2
	.globl	rotr64
	.type	rotr64, @function
rotr64:
.LFB69:
	.cfi_startproc
	addi	sp,sp,-36
	.cfi_def_cfa_offset 36
	sw	ra,32(sp)
	sw	s0,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,36
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-12(s0)
	sw	a2,-20(s0)
	lw	a2,-16(s0)
	lw	a3,-12(s0)
	lw	a5,-20(s0)
	addi	a5,a5,-32
	blt	a5,zero,.L421
	srl	a5,a3,a5
	sw	a5,-28(s0)
	sw	zero,-24(s0)
	j	.L422
.L421:
	slli	a4,a3,1
	li	a1,31
	lw	a5,-20(s0)
	sub	a5,a1,a5
	sll	a5,a4,a5
	lw	a4,-20(s0)
	srl	a4,a2,a4
	sw	a4,-28(s0)
	lw	a4,-28(s0)
	or	a5,a5,a4
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	srl	a5,a3,a5
	sw	a5,-24(s0)
.L422:
	lw	a5,-20(s0)
	neg	a5,a5
	andi	a5,a5,63
	addi	a5,a5,-32
	blt	a5,zero,.L423
	sll	t2,a2,a5
	li	t1,0
	j	.L424
.L423:
	srli	a4,a2,1
	li	a1,31
	lw	a5,-20(s0)
	neg	a5,a5
	andi	a5,a5,63
	sub	a5,a1,a5
	srl	a5,a4,a5
	lw	a4,-20(s0)
	neg	a4,a4
	andi	a4,a4,63
	sll	t2,a3,a4
	or	t2,a5,t2
	lw	a5,-20(s0)
	neg	a5,a5
	andi	a5,a5,63
	sll	t1,a2,a5
.L424:
	lw	a3,-28(s0)
	lw	a4,-24(s0)
	mv	a5,a3
	or	a5,t1,a5
	sw	a5,-36(s0)
	mv	a5,a4
	or	a5,t2,a5
	sw	a5,-32(s0)
	lw	t1,-36(s0)
	lw	t2,-32(s0)
	mv	a4,t1
	mv	a5,t2
	mv	a0,a4
	mv	a1,a5
	lw	ra,32(sp)
	.cfi_restore 1
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 36
	addi	sp,sp,36
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE69:
	.size	rotr64, .-rotr64
	.align	2
	.globl	rotl32
	.type	rotl32, @function
rotl32:
.LFB70:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	lw	a5,-12(s0)
	lw	a4,-16(s0)
	sll	a4,a5,a4
	lw	a3,-16(s0)
	neg	a3,a3
	andi	a3,a3,31
	srl	a5,a5,a3
	or	a5,a5,a4
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE70:
	.size	rotl32, .-rotl32
	.align	2
	.globl	rotr32
	.type	rotr32, @function
rotr32:
.LFB71:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	lw	a5,-12(s0)
	lw	a4,-16(s0)
	srl	a4,a5,a4
	lw	a3,-16(s0)
	neg	a3,a3
	andi	a3,a3,31
	sll	a5,a5,a3
	or	a5,a5,a4
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE71:
	.size	rotr32, .-rotr32
	.align	2
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB72:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	lw	a5,-12(s0)
	lw	a4,-16(s0)
	sll	a4,a5,a4
	lw	a3,-16(s0)
	neg	a3,a3
	andi	a3,a3,31
	srl	a5,a5,a3
	or	a5,a5,a4
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE72:
	.size	rotl_sz, .-rotl_sz
	.align	2
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB73:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	lw	a5,-12(s0)
	lw	a4,-16(s0)
	srl	a4,a5,a4
	lw	a3,-16(s0)
	neg	a3,a3
	andi	a3,a3,31
	sll	a5,a5,a3
	or	a5,a5,a4
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE73:
	.size	rotr_sz, .-rotr_sz
	.align	2
	.globl	rotl16
	.type	rotl16, @function
rotl16:
.LFB74:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-16(s0)
	sh	a5,-10(s0)
	lhu	a4,-10(s0)
	lw	a5,-16(s0)
	sll	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lhu	a3,-10(s0)
	li	a2,16
	lw	a5,-16(s0)
	sub	a5,a2,a5
	srl	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE74:
	.size	rotl16, .-rotl16
	.align	2
	.globl	rotr16
	.type	rotr16, @function
rotr16:
.LFB75:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-16(s0)
	sh	a5,-10(s0)
	lhu	a4,-10(s0)
	lw	a5,-16(s0)
	srl	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lhu	a3,-10(s0)
	li	a2,16
	lw	a5,-16(s0)
	sub	a5,a2,a5
	sll	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE75:
	.size	rotr16, .-rotr16
	.align	2
	.globl	rotl8
	.type	rotl8, @function
rotl8:
.LFB76:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-16(s0)
	sb	a5,-9(s0)
	lbu	a4,-9(s0)
	lw	a5,-16(s0)
	sll	a5,a4,a5
	andi	a4,a5,0xff
	lbu	a3,-9(s0)
	li	a2,8
	lw	a5,-16(s0)
	sub	a5,a2,a5
	srl	a5,a3,a5
	andi	a5,a5,0xff
	or	a5,a4,a5
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE76:
	.size	rotl8, .-rotl8
	.align	2
	.globl	rotr8
	.type	rotr8, @function
rotr8:
.LFB77:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-16(s0)
	sb	a5,-9(s0)
	lbu	a4,-9(s0)
	lw	a5,-16(s0)
	srl	a5,a4,a5
	andi	a4,a5,0xff
	lbu	a3,-9(s0)
	li	a2,8
	lw	a5,-16(s0)
	sub	a5,a2,a5
	sll	a5,a3,a5
	andi	a5,a5,0xff
	or	a5,a4,a5
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE77:
	.size	rotr8, .-rotr8
	.align	2
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB78:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sh	a5,-14(s0)
	li	a5,255
	sw	a5,-12(s0)
	lhu	a4,-14(s0)
	lw	a5,-12(s0)
	slli	a5,a5,8
	and	a5,a4,a5
	srli	a5,a5,8
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,-12(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a3,-14(s0)
	and	a5,a5,a3
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE78:
	.size	bswap_16, .-bswap_16
	.align	2
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB79:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	li	a5,255
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	slli	a4,a5,24
	lw	a5,-16(s0)
	and	a5,a4,a5
	srli	a4,a5,24
	lw	a5,-12(s0)
	slli	a3,a5,16
	lw	a5,-16(s0)
	and	a5,a3,a5
	srli	a5,a5,8
	or	a4,a4,a5
	lw	a5,-12(s0)
	slli	a3,a5,8
	lw	a5,-16(s0)
	and	a5,a3,a5
	slli	a5,a5,8
	or	a4,a4,a5
	lw	a3,-16(s0)
	lw	a5,-12(s0)
	and	a5,a3,a5
	slli	a5,a5,24
	or	a5,a4,a5
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE79:
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB80:
	.cfi_startproc
	addi	sp,sp,-256
	.cfi_def_cfa_offset 256
	sw	ra,252(sp)
	sw	s0,248(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,256
	.cfi_def_cfa 8, 0
	sw	a0,-28(s0)
	sw	a1,-24(s0)
	addi	a5,s0,-8
	sw	a5,-256(s0)
	lw	a5,-256(s0)
	addi	a5,a5,-12
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a1,a5,3
	li	a4,255
	li	a5,0
	sw	a4,0(a1)
	sw	a5,4(a1)
	lw	a5,0(a1)
	slli	a3,a5,24
	li	a2,0
	lw	a5,-28(s0)
	and	a5,a5,a2
	sw	a5,-92(s0)
	lw	a5,-24(s0)
	and	a5,a5,a3
	sw	a5,-88(s0)
	lw	a5,-88(s0)
	srli	a5,a5,24
	sw	a5,-84(s0)
	sw	zero,-80(s0)
	lw	a5,0(a1)
	slli	a5,a5,16
	sw	a5,-96(s0)
	sw	zero,-100(s0)
	lw	a5,-28(s0)
	lw	a2,-100(s0)
	lw	a3,-96(s0)
	mv	a4,a2
	and	a5,a5,a4
	sw	a5,-108(s0)
	lw	a5,-24(s0)
	mv	a4,a3
	and	a5,a5,a4
	sw	a5,-104(s0)
	lw	a5,-104(s0)
	srli	a5,a5,8
	sw	a5,-116(s0)
	sw	zero,-112(s0)
	lw	a5,-84(s0)
	lw	a2,-116(s0)
	lw	a3,-112(s0)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,-124(s0)
	lw	a5,-80(s0)
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,-120(s0)
	lw	a5,0(a1)
	slli	a5,a5,8
	sw	a5,-128(s0)
	sw	zero,-132(s0)
	lw	a5,-28(s0)
	lw	a2,-132(s0)
	lw	a3,-128(s0)
	mv	a4,a2
	and	a5,a5,a4
	sw	a5,-140(s0)
	lw	a5,-24(s0)
	mv	a4,a3
	and	a5,a5,a4
	sw	a5,-136(s0)
	lw	a2,-140(s0)
	lw	a3,-136(s0)
	mv	a5,a3
	slli	a5,a5,8
	mv	a4,a2
	srli	t1,a4,24
	or	t1,a5,t1
	mv	a5,a3
	srli	t2,a5,24
	lw	a3,-124(s0)
	lw	a4,-120(s0)
	mv	a5,a3
	or	a5,a5,t1
	sw	a5,-148(s0)
	mv	a5,a4
	or	a5,a5,t2
	sw	a5,-144(s0)
	lw	a5,0(a1)
	slli	a5,a5,0
	sw	a5,-152(s0)
	sw	zero,-156(s0)
	lw	a5,-28(s0)
	lw	a2,-156(s0)
	lw	a3,-152(s0)
	mv	a4,a2
	and	a5,a5,a4
	sw	a5,-164(s0)
	lw	a5,-24(s0)
	mv	a4,a3
	and	a5,a5,a4
	sw	a5,-160(s0)
	lw	a2,-164(s0)
	lw	a3,-160(s0)
	mv	a5,a3
	slli	a5,a5,24
	mv	a4,a2
	srli	a4,a4,8
	sw	a4,-36(s0)
	lw	a4,-36(s0)
	or	a5,a5,a4
	sw	a5,-36(s0)
	mv	a5,a3
	srli	a5,a5,8
	sw	a5,-32(s0)
	lw	t1,-148(s0)
	lw	t2,-144(s0)
	mv	a5,t1
	lw	a2,-36(s0)
	lw	a3,-32(s0)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,-172(s0)
	mv	a5,t2
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,-168(s0)
	lw	a5,0(a1)
	srli	a4,a5,8
	lw	a5,4(a1)
	slli	a5,a5,24
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	or	a5,a4,a5
	sw	a5,-40(s0)
	lw	a5,0(a1)
	slli	a5,a5,24
	sw	a5,-44(s0)
	lw	a5,-28(s0)
	lw	a2,-44(s0)
	lw	a3,-40(s0)
	mv	a4,a2
	and	a5,a5,a4
	sw	a5,-180(s0)
	lw	a5,-24(s0)
	mv	a4,a3
	and	a5,a5,a4
	sw	a5,-176(s0)
	lw	a2,-180(s0)
	lw	a3,-176(s0)
	mv	a5,a2
	srli	a5,a5,24
	mv	a4,a3
	slli	a4,a4,8
	sw	a4,-48(s0)
	lw	a4,-48(s0)
	or	a5,a5,a4
	sw	a5,-48(s0)
	mv	a5,a2
	slli	a5,a5,8
	sw	a5,-52(s0)
	lw	t1,-172(s0)
	lw	t2,-168(s0)
	mv	a5,t1
	lw	a2,-52(s0)
	lw	a3,-48(s0)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,-188(s0)
	mv	a5,t2
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,-184(s0)
	lw	a5,0(a1)
	srli	a4,a5,16
	lw	a5,4(a1)
	slli	a5,a5,16
	sw	a5,-56(s0)
	lw	a5,-56(s0)
	or	a5,a4,a5
	sw	a5,-56(s0)
	lw	a5,0(a1)
	slli	a5,a5,16
	sw	a5,-60(s0)
	lw	a5,-28(s0)
	lw	a2,-60(s0)
	lw	a3,-56(s0)
	mv	a4,a2
	and	a5,a5,a4
	sw	a5,-196(s0)
	lw	a5,-24(s0)
	mv	a4,a3
	and	a5,a5,a4
	sw	a5,-192(s0)
	lw	a2,-196(s0)
	lw	a3,-192(s0)
	mv	a5,a2
	srli	a5,a5,8
	mv	a4,a3
	slli	a4,a4,24
	sw	a4,-64(s0)
	lw	a4,-64(s0)
	or	a5,a5,a4
	sw	a5,-64(s0)
	mv	a5,a2
	slli	a5,a5,24
	sw	a5,-68(s0)
	lw	t1,-188(s0)
	lw	t2,-184(s0)
	mv	a5,t1
	lw	a2,-68(s0)
	lw	a3,-64(s0)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,-204(s0)
	mv	a5,t2
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,-200(s0)
	lw	a5,0(a1)
	srli	a4,a5,24
	lw	a5,4(a1)
	slli	a5,a5,8
	sw	a5,-72(s0)
	lw	a5,-72(s0)
	or	a5,a4,a5
	sw	a5,-72(s0)
	lw	a5,0(a1)
	slli	a5,a5,8
	sw	a5,-76(s0)
	lw	a5,-28(s0)
	lw	a2,-76(s0)
	lw	a3,-72(s0)
	mv	a4,a2
	and	a5,a5,a4
	sw	a5,-212(s0)
	lw	a5,-24(s0)
	mv	a4,a3
	and	a5,a5,a4
	sw	a5,-208(s0)
	lw	a5,-212(s0)
	slli	a5,a5,8
	sw	a5,-216(s0)
	sw	zero,-220(s0)
	lw	t1,-204(s0)
	lw	t2,-200(s0)
	mv	a5,t1
	lw	a2,-220(s0)
	lw	a3,-216(s0)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,-228(s0)
	mv	a5,t2
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,-224(s0)
	lw	a4,-28(s0)
	lw	a5,0(a1)
	and	a5,a4,a5
	sw	a5,-236(s0)
	lw	a4,-24(s0)
	lw	a5,4(a1)
	and	a5,a4,a5
	sw	a5,-232(s0)
	lw	a5,-236(s0)
	slli	a5,a5,24
	sw	a5,-240(s0)
	sw	zero,-244(s0)
	lw	a0,-228(s0)
	lw	a1,-224(s0)
	mv	a5,a0
	lw	a2,-244(s0)
	lw	a3,-240(s0)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,-252(s0)
	mv	a5,a1
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,-248(s0)
	lw	a4,-252(s0)
	lw	a5,-248(s0)
	mv	a0,a4
	mv	a1,a5
	lw	ra,252(sp)
	.cfi_restore 1
	lw	s0,248(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 256
	addi	sp,sp,256
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE80:
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.type	ffs, @function
ffs:
.LFB81:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	zero,-12(s0)
	j	.L449
.L452:
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	srl	a5,a4,a5
	andi	a5,a5,1
	beq	a5,zero,.L450
	lw	a5,-12(s0)
	addi	a5,a5,1
	j	.L451
.L450:
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L449:
	lw	a4,-12(s0)
	li	a5,31
	bleu	a4,a5,.L452
	li	a5,0
.L451:
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE81:
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB82:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	mv	a5,a0
	bne	a5,zero,.L454
	li	a5,0
	j	.L455
.L454:
	li	s1,1
	j	.L456
.L457:
	srai	a5,a5,1
	addi	s1,s1,1
.L456:
	andi	a4,a5,1
	beq	a4,zero,.L457
	mv	a5,s1
.L455:
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE82:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB83:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lui	a5,%hi(.LC1)
	lw	a1,%lo(.LC1)(a5)
	lw	a0,-12(s0)
	call	__ltsf2
	mv	a5,a0
	blt	a5,zero,.L459
	lui	a5,%hi(.LC2)
	lw	a1,%lo(.LC2)(a5)
	lw	a0,-12(s0)
	call	__gtsf2
	mv	a5,a0
	ble	a5,zero,.L464
.L459:
	li	a5,1
	j	.L463
.L464:
	li	a5,0
.L463:
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE83:
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB84:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-12(s0)
	lui	a5,%hi(.LC3)
	lw	a2,%lo(.LC3)(a5)
	lw	a3,%lo(.LC3+4)(a5)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__ltdf2
	mv	a5,a0
	blt	a5,zero,.L466
	lui	a5,%hi(.LC4)
	lw	a2,%lo(.LC4)(a5)
	lw	a3,%lo(.LC4+4)(a5)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__gtdf2
	mv	a5,a0
	ble	a5,zero,.L471
.L466:
	li	a5,1
	j	.L470
.L471:
	li	a5,0
.L470:
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE84:
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.globl	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB85:
	.cfi_startproc
	addi	sp,sp,-60
	.cfi_def_cfa_offset 60
	sw	ra,56(sp)
	sw	s0,52(sp)
	sw	s1,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,60
	.cfi_def_cfa 8, 0
	mv	s1,a0
	lw	a5,0(s1)
	sw	a5,-28(s0)
	lw	a5,4(s1)
	sw	a5,-24(s0)
	lw	a5,8(s1)
	sw	a5,-20(s0)
	lw	a5,12(s1)
	sw	a5,-16(s0)
	lw	t0,-28(s0)
	lw	t1,-24(s0)
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	addi	t2,s0,-44
	lui	a5,%hi(.LC5)
	lw	a2,%lo(.LC5)(a5)
	lw	a3,%lo(.LC5+4)(a5)
	lw	a4,%lo(.LC5+8)(a5)
	lw	a5,%lo(.LC5+12)(a5)
	addi	s1,s0,-60
	sw	t0,-44(s0)
	sw	t1,-40(s0)
	sw	a0,-36(s0)
	sw	a1,-32(s0)
	sw	a2,-60(s0)
	sw	a3,-56(s0)
	sw	a4,-52(s0)
	sw	a5,-48(s0)
	mv	a1,s1
	mv	a0,t2
	call	__lttf2
	mv	a5,a0
	blt	a5,zero,.L473
	lw	t0,-28(s0)
	lw	t1,-24(s0)
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	addi	t2,s0,-44
	lui	a5,%hi(.LC6)
	lw	a2,%lo(.LC6)(a5)
	lw	a3,%lo(.LC6+4)(a5)
	lw	a4,%lo(.LC6+8)(a5)
	lw	a5,%lo(.LC6+12)(a5)
	addi	s1,s0,-60
	sw	t0,-44(s0)
	sw	t1,-40(s0)
	sw	a0,-36(s0)
	sw	a1,-32(s0)
	sw	a2,-60(s0)
	sw	a3,-56(s0)
	sw	a4,-52(s0)
	sw	a5,-48(s0)
	mv	a1,s1
	mv	a0,t2
	call	__gttf2
	mv	a5,a0
	ble	a5,zero,.L478
.L473:
	li	a5,1
	j	.L477
.L478:
	li	a5,0
.L477:
	mv	a0,a5
	lw	ra,56(sp)
	.cfi_restore 1
	lw	s0,52(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 60
	lw	s1,48(sp)
	.cfi_restore 9
	addi	sp,sp,60
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE85:
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB86:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	lw	a0,-16(s0)
	call	__floatsidf
	mv	a4,a0
	mv	a5,a1
	addi	a3,s0,-32
	mv	a1,a4
	mv	a2,a5
	mv	a0,a3
	call	__extenddftf2
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	lw	a1,-12(s0)
	sw	a2,0(a1)
	sw	a3,4(a1)
	sw	a4,8(a1)
	sw	a5,12(a1)
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE86:
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB87:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-20(s0)
	lw	a1,-16(s0)
	lw	a0,-16(s0)
	call	__unordsf2
	mv	a5,a0
	bne	a5,zero,.L481
	lw	a5,-16(s0)
	mv	a1,a5
	mv	a0,a5
	call	__addsf3
	mv	a5,a0
	mv	a1,a5
	lw	a0,-16(s0)
	call	__nesf2
	mv	a5,a0
	beq	a5,zero,.L481
	lw	a5,-20(s0)
	bge	a5,zero,.L483
	lui	a5,%hi(.LC7)
	lw	a5,%lo(.LC7)(a5)
	j	.L484
.L483:
	lui	a5,%hi(.LC8)
	lw	a5,%lo(.LC8)(a5)
.L484:
	sw	a5,-12(s0)
.L487:
	lw	a5,-20(s0)
	andi	a5,a5,1
	beq	a5,zero,.L485
	lw	a1,-12(s0)
	lw	a0,-16(s0)
	call	__mulsf3
	mv	a5,a0
	sw	a5,-16(s0)
.L485:
	lw	a5,-20(s0)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beq	a5,zero,.L490
	lw	a1,-12(s0)
	lw	a0,-12(s0)
	call	__mulsf3
	mv	a5,a0
	sw	a5,-12(s0)
	j	.L487
.L490:
	nop
.L481:
	lw	a5,-16(s0)
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE87:
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB88:
	.cfi_startproc
	addi	sp,sp,-40
	.cfi_def_cfa_offset 40
	sw	ra,36(sp)
	sw	s0,32(sp)
	sw	s1,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,40
	.cfi_def_cfa 8, 0
	sw	a0,-32(s0)
	sw	a1,-28(s0)
	sw	a2,-36(s0)
	addi	a5,s0,-12
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	addi	a5,a5,-12
	addi	a5,a5,7
	srli	a5,a5,3
	slli	s1,a5,3
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	__unorddf2
	mv	a5,a0
	bne	a5,zero,.L492
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a4
	mv	a1,a5
	call	__adddf3
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	__nedf2
	mv	a5,a0
	beq	a5,zero,.L492
	lw	a5,-36(s0)
	bge	a5,zero,.L494
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	j	.L495
.L494:
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	lw	a5,%lo(.LC10+4)(a5)
.L495:
	sw	a4,0(s1)
	sw	a5,4(s1)
.L498:
	lw	a5,-36(s0)
	andi	a5,a5,1
	beq	a5,zero,.L496
	lw	a2,0(s1)
	lw	a3,4(s1)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
.L496:
	lw	a5,-36(s0)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	beq	a5,zero,.L501
	lw	a2,0(s1)
	lw	a3,4(s1)
	lw	a0,0(s1)
	lw	a1,4(s1)
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	j	.L498
.L501:
	nop
.L492:
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	mv	a0,a4
	mv	a1,a5
	lw	ra,36(sp)
	.cfi_restore 1
	lw	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 40
	lw	s1,28(sp)
	.cfi_restore 9
	addi	sp,sp,40
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE88:
	.size	ldexp, .-ldexp
	.align	2
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB89:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	sw	s1,116(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	a0,-44(s0)
	mv	s1,a1
	lw	a5,0(s1)
	sw	a5,-60(s0)
	lw	a5,4(s1)
	sw	a5,-56(s0)
	lw	a5,8(s1)
	sw	a5,-52(s0)
	lw	a5,12(s1)
	sw	a5,-48(s0)
	sw	a2,-64(s0)
	addi	a5,s0,-12
	sw	a5,-128(s0)
	lw	a5,-128(s0)
	addi	a5,a5,-28
	addi	a5,a5,15
	srli	a5,a5,4
	slli	s1,a5,4
	lw	t0,-60(s0)
	lw	t1,-56(s0)
	lw	a0,-52(s0)
	lw	a5,-48(s0)
	sw	a5,-128(s0)
	addi	t2,s0,-80
	lw	a2,-60(s0)
	lw	a3,-56(s0)
	lw	a4,-52(s0)
	lw	a5,-48(s0)
	addi	a1,s0,-96
	sw	t0,-80(s0)
	sw	t1,-76(s0)
	sw	a0,-72(s0)
	lw	a0,-128(s0)
	sw	a0,-68(s0)
	sw	a2,-96(s0)
	sw	a3,-92(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
	mv	a0,t2
	call	__unordtf2
	mv	a5,a0
	bne	a5,zero,.L503
	lw	a2,-60(s0)
	lw	a3,-56(s0)
	lw	a4,-52(s0)
	lw	a5,-48(s0)
	addi	a0,s0,-80
	addi	a1,s0,-96
	addi	t1,s0,-112
	sw	a2,-96(s0)
	sw	a3,-92(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
	sw	a2,-112(s0)
	sw	a3,-108(s0)
	sw	a4,-104(s0)
	sw	a5,-100(s0)
	mv	a2,t1
	call	__addtf3
	lw	a2,-80(s0)
	lw	a3,-76(s0)
	lw	a4,-72(s0)
	lw	a5,-68(s0)
	sw	a2,-128(s0)
	sw	a3,-124(s0)
	sw	a4,-120(s0)
	sw	a5,-116(s0)
	lw	a2,-60(s0)
	lw	a3,-56(s0)
	lw	a4,-52(s0)
	lw	a5,-48(s0)
	addi	a0,s0,-80
	addi	a1,s0,-96
	sw	a2,-80(s0)
	sw	a3,-76(s0)
	sw	a4,-72(s0)
	sw	a5,-68(s0)
	lw	a5,-128(s0)
	sw	a5,-96(s0)
	lw	a5,-124(s0)
	sw	a5,-92(s0)
	lw	a5,-120(s0)
	sw	a5,-88(s0)
	lw	a5,-116(s0)
	sw	a5,-84(s0)
	call	__netf2
	mv	a5,a0
	beq	a5,zero,.L503
	lw	a5,-64(s0)
	bge	a5,zero,.L505
	lui	a1,%hi(.LC11)
	lw	a2,%lo(.LC11)(a1)
	lw	a3,%lo(.LC11+4)(a1)
	lw	a4,%lo(.LC11+8)(a1)
	lw	a5,%lo(.LC11+12)(a1)
	j	.L506
.L505:
	lui	a1,%hi(.LC12)
	lw	a2,%lo(.LC12)(a1)
	lw	a3,%lo(.LC12+4)(a1)
	lw	a4,%lo(.LC12+8)(a1)
	lw	a5,%lo(.LC12+12)(a1)
.L506:
	sw	a2,0(s1)
	sw	a3,4(s1)
	sw	a4,8(s1)
	sw	a5,12(s1)
.L509:
	lw	a5,-64(s0)
	andi	a5,a5,1
	beq	a5,zero,.L507
	addi	a0,s0,-80
	lw	a2,-60(s0)
	lw	a3,-56(s0)
	lw	a4,-52(s0)
	lw	a5,-48(s0)
	addi	a1,s0,-96
	addi	t1,s0,-112
	sw	a2,-96(s0)
	sw	a3,-92(s0)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
	lw	a5,0(s1)
	sw	a5,-112(s0)
	lw	a5,4(s1)
	sw	a5,-108(s0)
	lw	a5,8(s1)
	sw	a5,-104(s0)
	lw	a5,12(s1)
	sw	a5,-100(s0)
	mv	a2,t1
	call	__multf3
	lw	a2,-80(s0)
	lw	a3,-76(s0)
	lw	a4,-72(s0)
	lw	a5,-68(s0)
	sw	a2,-60(s0)
	sw	a3,-56(s0)
	sw	a4,-52(s0)
	sw	a5,-48(s0)
.L507:
	lw	a5,-64(s0)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,-64(s0)
	lw	a5,-64(s0)
	beq	a5,zero,.L512
	addi	a4,s0,-80
	lw	a5,0(s1)
	addi	a3,s0,-96
	addi	a2,s0,-112
	sw	a5,-96(s0)
	lw	a5,4(s1)
	sw	a5,-92(s0)
	lw	a5,8(s1)
	sw	a5,-88(s0)
	lw	a5,12(s1)
	sw	a5,-84(s0)
	lw	a5,0(s1)
	sw	a5,-112(s0)
	lw	a5,4(s1)
	sw	a5,-108(s0)
	lw	a5,8(s1)
	sw	a5,-104(s0)
	lw	a5,12(s1)
	sw	a5,-100(s0)
	mv	a1,a3
	mv	a0,a4
	call	__multf3
	lw	a2,-80(s0)
	lw	a3,-76(s0)
	lw	a4,-72(s0)
	lw	a5,-68(s0)
	sw	a2,0(s1)
	sw	a3,4(s1)
	sw	a4,8(s1)
	sw	a5,12(s1)
	j	.L509
.L512:
	nop
.L503:
	lw	a5,-44(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	lw	a4,-48(s0)
	sw	a4,12(a5)
	lw	a0,-44(s0)
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	lw	s1,116(sp)
	.cfi_restore 9
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE89:
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,28
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a5,-24(s0)
	sw	a5,-12(s0)
	lw	a5,-20(s0)
	sw	a5,-16(s0)
	j	.L514
.L515:
	lw	a5,-12(s0)
	addi	a4,a5,1
	sw	a4,-12(s0)
	lbu	a3,0(a5)
	lw	a5,-16(s0)
	addi	a4,a5,1
	sw	a4,-16(s0)
	lbu	a4,0(a5)
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
.L514:
	lw	a5,-28(s0)
	bne	a5,zero,.L515
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,24(sp)
	.cfi_restore 1
	lw	s0,20(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 28
	addi	sp,sp,28
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE90:
	.size	memxor, .-memxor
	.align	2
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB91:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-20(s0)
	sw	a2,-24(s0)
	lw	a0,-16(s0)
	call	strlen
	mv	a4,a0
	lw	a5,-16(s0)
	add	a5,a5,a4
	sw	a5,-12(s0)
	j	.L518
.L520:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L518:
	lw	a5,-24(s0)
	beq	a5,zero,.L519
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	lw	a5,-12(s0)
	sb	a4,0(a5)
	lw	a5,-12(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L520
.L519:
	lw	a5,-24(s0)
	bne	a5,zero,.L521
	lw	a5,-12(s0)
	sb	zero,0(a5)
.L521:
	lw	a5,-16(s0)
	mv	a0,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE91:
	.size	strncat, .-strncat
	.align	2
	.globl	strnlen
	.type	strnlen, @function
strnlen:
.LFB92:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-20(s0)
	sw	zero,-12(s0)
	j	.L524
.L529:
	nop
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L524:
	lw	a4,-12(s0)
	lw	a5,-20(s0)
	bgeu	a4,a5,.L525
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L529
.L525:
	lw	a5,-12(s0)
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-20(s0)
	j	.L531
.L535:
	lw	a5,-20(s0)
	sw	a5,-12(s0)
	j	.L532
.L534:
	lw	a5,-12(s0)
	addi	a4,a5,1
	sw	a4,-12(s0)
	lbu	a4,0(a5)
	lw	a5,-16(s0)
	lbu	a5,0(a5)
	bne	a4,a5,.L532
	lw	a5,-16(s0)
	j	.L533
.L532:
	lw	a5,-12(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L534
	lw	a5,-16(s0)
	addi	a5,a5,1
	sw	a5,-16(s0)
.L531:
	lw	a5,-16(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L535
	li	a5,0
.L533:
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE93:
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.type	strrchr, @function
strrchr:
.LFB94:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-16(s0)
	sw	zero,-12(s0)
.L538:
	lbu	a4,0(a5)
	mv	a3,a4
	lw	a4,-16(s0)
	bne	a4,a3,.L537
	sw	a5,-12(s0)
.L537:
	mv	a4,a5
	addi	a5,a4,1
	lbu	a4,0(a4)
	bne	a4,zero,.L538
	lw	a5,-12(s0)
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE94:
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.type	strstr, @function
strstr:
.LFB95:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	sw	a5,-12(s0)
	lw	a0,-24(s0)
	call	strlen
	sw	a0,-16(s0)
	lw	a5,-16(s0)
	bne	a5,zero,.L543
	lw	a5,-20(s0)
	j	.L542
.L545:
	lw	a2,-16(s0)
	lw	a1,-24(s0)
	lw	a0,-12(s0)
	call	strncmp
	mv	a5,a0
	bne	a5,zero,.L544
	lw	a5,-12(s0)
	j	.L542
.L544:
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L543:
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	mv	a1,a5
	lw	a0,-12(s0)
	call	strchr
	sw	a0,-12(s0)
	lw	a5,-12(s0)
	bne	a5,zero,.L545
	li	a5,0
.L542:
	mv	a0,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE95:
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-12(s0)
	sw	a2,-24(s0)
	sw	a3,-20(s0)
	li	a2,0
	li	a3,0
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__ltdf2
	mv	a5,a0
	bge	a5,zero,.L547
	li	a2,0
	li	a3,0
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__gtdf2
	mv	a5,a0
	bgt	a5,zero,.L549
.L547:
	li	a2,0
	li	a3,0
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__gtdf2
	mv	a5,a0
	ble	a5,zero,.L550
	li	a2,0
	li	a3,0
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__ltdf2
	mv	a5,a0
	bge	a5,zero,.L550
.L549:
	lw	a5,-16(s0)
	sw	a5,-32(s0)
	lw	a4,-12(s0)
	li	a5,-2147483648
	xor	a5,a4,a5
	sw	a5,-28(s0)
	j	.L553
.L550:
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	sw	a4,-32(s0)
	sw	a5,-28(s0)
.L553:
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	mv	a0,a4
	mv	a1,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE96:
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	sub	a5,a4,a5
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-16(s0)
	lw	a5,-32(s0)
	bne	a5,zero,.L557
	lw	a5,-20(s0)
	j	.L558
.L557:
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	beq	a5,zero,.L559
	li	a5,0
	j	.L558
.L559:
	lw	a5,-20(s0)
	sw	a5,-12(s0)
	j	.L560
.L562:
	lw	a5,-12(s0)
	lbu	a4,0(a5)
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	bne	a4,a5,.L561
	lw	a5,-12(s0)
	addi	a4,a5,1
	lw	a5,-28(s0)
	addi	a3,a5,1
	lw	a5,-32(s0)
	addi	a5,a5,-1
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	bne	a5,zero,.L561
	lw	a5,-12(s0)
	j	.L558
.L561:
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L560:
	lw	a4,-12(s0)
	lw	a5,-16(s0)
	bleu	a4,a5,.L562
	li	a5,0
.L558:
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE97:
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB98:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	sw	a2,-20(s0)
	lw	a2,-20(s0)
	lw	a1,-16(s0)
	lw	a0,-12(s0)
	call	memcpy
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a4,a5
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE98:
	.size	mempcpy, .-mempcpy
	.align	2
	.globl	frexp
	.type	frexp, @function
frexp:
.LFB99:
	.cfi_startproc
	addi	sp,sp,-44
	.cfi_def_cfa_offset 44
	sw	ra,40(sp)
	sw	s0,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,44
	.cfi_def_cfa 8, 0
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	sw	zero,-16(s0)
	sw	zero,-12(s0)
	li	a2,0
	li	a3,0
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__ltdf2
	mv	a5,a0
	bge	a5,zero,.L566
	lw	a5,-24(s0)
	sw	a5,-36(s0)
	lw	a4,-20(s0)
	li	a5,-2147483648
	xor	a5,a4,a5
	sw	a5,-32(s0)
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	li	a5,1
	sw	a5,-12(s0)
.L566:
	lui	a5,%hi(.LC13)
	lw	a2,%lo(.LC13)(a5)
	lw	a3,%lo(.LC13+4)(a5)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__gedf2
	mv	a5,a0
	blt	a5,zero,.L583
	j	.L570
.L571:
	lw	a5,-16(s0)
	addi	a5,a5,1
	sw	a5,-16(s0)
	lui	a5,%hi(.LC10)
	lw	a2,%lo(.LC10)(a5)
	lw	a3,%lo(.LC10+4)(a5)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
.L570:
	lui	a5,%hi(.LC13)
	lw	a2,%lo(.LC13)(a5)
	lw	a3,%lo(.LC13+4)(a5)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__gedf2
	mv	a5,a0
	bge	a5,zero,.L571
	j	.L572
.L583:
	lui	a5,%hi(.LC9)
	lw	a2,%lo(.LC9)(a5)
	lw	a3,%lo(.LC9+4)(a5)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__ltdf2
	mv	a5,a0
	bge	a5,zero,.L572
	li	a2,0
	li	a3,0
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__nedf2
	mv	a5,a0
	beq	a5,zero,.L572
	j	.L575
.L576:
	lw	a5,-16(s0)
	addi	a5,a5,-1
	sw	a5,-16(s0)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a4
	mv	a1,a5
	call	__adddf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
.L575:
	lui	a5,%hi(.LC9)
	lw	a2,%lo(.LC9)(a5)
	lw	a3,%lo(.LC9+4)(a5)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__ltdf2
	mv	a5,a0
	blt	a5,zero,.L576
.L572:
	lw	a5,-28(s0)
	lw	a4,-16(s0)
	sw	a4,0(a5)
	lw	a5,-12(s0)
	beq	a5,zero,.L577
	lw	a5,-24(s0)
	sw	a5,-44(s0)
	lw	a4,-20(s0)
	li	a5,-2147483648
	xor	a5,a4,a5
	sw	a5,-40(s0)
	lw	a4,-44(s0)
	lw	a5,-40(s0)
	sw	a4,-24(s0)
	sw	a5,-20(s0)
.L577:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	mv	a0,a4
	mv	a1,a5
	lw	ra,40(sp)
	.cfi_restore 1
	lw	s0,36(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 44
	addi	sp,sp,44
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	addi	sp,sp,-68
	.cfi_def_cfa_offset 68
	sw	ra,64(sp)
	sw	s0,60(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,68
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-32(s0)
	sw	a2,-44(s0)
	sw	a3,-40(s0)
	addi	a5,s0,-8
	sw	a5,-68(s0)
	lw	a5,-68(s0)
	addi	a5,a5,-20
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a3,a5,3
	li	a4,0
	li	a5,0
	sw	a4,8(a3)
	sw	a5,12(a3)
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	j	.L585
.L588:
	lw	a5,0(a3)
	andi	a5,a5,1
	sw	a5,-60(s0)
	lw	a5,4(a3)
	andi	a5,a5,0
	sw	a5,-56(s0)
	lw	a1,-60(s0)
	lw	a2,-56(s0)
	mv	a5,a1
	mv	a4,a2
	or	a5,a5,a4
	beq	a5,zero,.L586
	lw	a4,8(a3)
	lw	a5,12(a3)
	lw	a1,-44(s0)
	lw	a2,-40(s0)
	sw	a1,-68(s0)
	sw	a2,-64(s0)
	lw	a2,-68(s0)
	add	a0,a4,a2
	mv	a2,a0
	sltu	a2,a2,a4
	lw	t0,-64(s0)
	add	a1,a5,t0
	add	a5,a2,a1
	mv	a1,a5
	sw	a0,8(a3)
	sw	a1,12(a3)
.L586:
	lw	a5,-44(s0)
	srli	a5,a5,31
	lw	a4,-40(s0)
	slli	t2,a4,1
	or	t2,a5,t2
	lw	a5,-44(s0)
	slli	t1,a5,1
	sw	t1,-44(s0)
	sw	t2,-40(s0)
	lw	a5,4(a3)
	slli	a5,a5,31
	lw	a4,0(a3)
	srli	a4,a4,1
	sw	a4,-52(s0)
	lw	a4,-52(s0)
	or	a5,a5,a4
	sw	a5,-52(s0)
	lw	a5,4(a3)
	srli	a5,a5,1
	sw	a5,-48(s0)
	lw	a4,-52(s0)
	lw	a5,-48(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
.L585:
	lw	a5,0(a3)
	lw	a4,4(a3)
	or	a5,a5,a4
	bne	a5,zero,.L588
	lw	a4,8(a3)
	lw	a5,12(a3)
	mv	a0,a4
	mv	a1,a5
	lw	ra,64(sp)
	.cfi_restore 1
	lw	s0,60(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 68
	addi	sp,sp,68
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE100:
	.size	__muldi3, .-__muldi3
	.align	2
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB101:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,28
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	li	a5,1
	sw	a5,-12(s0)
	sw	zero,-16(s0)
	j	.L591
.L593:
	lw	a5,-24(s0)
	slli	a5,a5,1
	sw	a5,-24(s0)
	lw	a5,-12(s0)
	slli	a5,a5,1
	sw	a5,-12(s0)
.L591:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bgeu	a4,a5,.L594
	lw	a5,-12(s0)
	beq	a5,zero,.L594
	lw	a5,-24(s0)
	bge	a5,zero,.L593
	j	.L594
.L596:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L595
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	or	a5,a4,a5
	sw	a5,-16(s0)
.L595:
	lw	a5,-12(s0)
	srli	a5,a5,1
	sw	a5,-12(s0)
	lw	a5,-24(s0)
	srli	a5,a5,1
	sw	a5,-24(s0)
.L594:
	lw	a5,-12(s0)
	bne	a5,zero,.L596
	lw	a5,-28(s0)
	beq	a5,zero,.L597
	lw	a5,-20(s0)
	j	.L598
.L597:
	lw	a5,-16(s0)
.L598:
	mv	a0,a5
	lw	ra,24(sp)
	.cfi_restore 1
	lw	s0,20(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 28
	addi	sp,sp,28
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-13(s0)
	lbu	a5,-13(s0)
	bne	a5,zero,.L600
	li	a5,7
	j	.L601
.L600:
	lbu	a5,-13(s0)
	slli	a5,a5,8
	mv	a0,a5
	call	__clzsi2
	mv	a5,a0
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	addi	a5,a5,-1
.L601:
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE102:
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB103:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-16(s0)
	lw	a3,-16(s0)
	bge	a3,zero,.L603
	lw	a3,-20(s0)
	not	a4,a3
	lw	a3,-16(s0)
	not	a5,a3
	sw	a4,-20(s0)
	sw	a5,-16(s0)
.L603:
	lw	a5,-20(s0)
	lw	a4,-16(s0)
	or	a5,a5,a4
	bne	a5,zero,.L605
	li	a5,63
	j	.L606
.L605:
	lw	a4,-20(s0)
	lw	a5,-16(s0)
	mv	a0,a4
	mv	a1,a5
	call	__clzdi2
	mv	a5,a0
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	addi	a5,a5,-1
.L606:
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE103:
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB104:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-20(s0)
	sw	zero,-12(s0)
	j	.L608
.L610:
	lw	a5,-16(s0)
	andi	a5,a5,1
	beq	a5,zero,.L609
	lw	a4,-12(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-12(s0)
.L609:
	lw	a5,-16(s0)
	srli	a5,a5,1
	sw	a5,-16(s0)
	lw	a5,-20(s0)
	slli	a5,a5,1
	sw	a5,-20(s0)
.L608:
	lw	a5,-16(s0)
	bne	a5,zero,.L610
	lw	a5,-12(s0)
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE104:
	.size	__mulsi3, .-__mulsi3
	.align	2
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
.LFB105:
	.cfi_startproc
	addi	sp,sp,-40
	.cfi_def_cfa_offset 40
	sw	ra,36(sp)
	sw	s0,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,40
	.cfi_def_cfa 8, 0
	sw	a0,-32(s0)
	sw	a1,-36(s0)
	sw	a2,-40(s0)
	lw	a5,-40(s0)
	srli	a5,a5,3
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	andi	a5,a5,-8
	sw	a5,-16(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	bltu	a4,a5,.L613
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	lw	a4,-24(s0)
	bleu	a4,a5,.L620
.L613:
	sw	zero,-12(s0)
	j	.L615
.L616:
	lw	a5,-12(s0)
	slli	a5,a5,3
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,-12(s0)
	slli	a4,a4,3
	lw	a3,-32(s0)
	add	a3,a3,a4
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,0(a3)
	sw	a5,4(a3)
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L615:
	lw	a4,-12(s0)
	lw	a5,-20(s0)
	bltu	a4,a5,.L616
	j	.L617
.L618:
	lw	a4,-28(s0)
	lw	a5,-16(s0)
	add	a4,a4,a5
	lw	a3,-24(s0)
	lw	a5,-16(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-16(s0)
	addi	a5,a5,1
	sw	a5,-16(s0)
.L617:
	lw	a4,-40(s0)
	lw	a5,-16(s0)
	bgtu	a4,a5,.L618
	j	.L619
.L621:
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	add	a4,a4,a5
	lw	a3,-24(s0)
	lw	a5,-40(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L620:
	lw	a5,-40(s0)
	addi	a4,a5,-1
	sw	a4,-40(s0)
	bne	a5,zero,.L621
	nop
.L619:
	nop
	lw	ra,36(sp)
	.cfi_restore 1
	lw	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 40
	addi	sp,sp,40
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE105:
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB106:
	.cfi_startproc
	addi	sp,sp,-36
	.cfi_def_cfa_offset 36
	sw	ra,32(sp)
	sw	s0,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,36
	.cfi_def_cfa 8, 0
	sw	a0,-28(s0)
	sw	a1,-32(s0)
	sw	a2,-36(s0)
	lw	a5,-36(s0)
	srli	a5,a5,1
	sw	a5,-16(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L623
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	bleu	a4,a5,.L629
.L623:
	sw	zero,-12(s0)
	j	.L625
.L626:
	lw	a5,-12(s0)
	slli	a5,a5,1
	lw	a4,-32(s0)
	add	a4,a4,a5
	lw	a5,-12(s0)
	slli	a5,a5,1
	lw	a3,-28(s0)
	add	a5,a3,a5
	lh	a4,0(a4)
	sh	a4,0(a5)
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L625:
	lw	a4,-12(s0)
	lw	a5,-16(s0)
	bltu	a4,a5,.L626
	lw	a5,-36(s0)
	andi	a5,a5,1
	beq	a5,zero,.L628
	lw	a5,-36(s0)
	addi	a5,a5,-1
	lw	a4,-24(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	addi	a5,a5,-1
	lw	a3,-20(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	j	.L628
.L630:
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	add	a4,a4,a5
	lw	a3,-20(s0)
	lw	a5,-36(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L629:
	lw	a5,-36(s0)
	addi	a4,a5,-1
	sw	a4,-36(s0)
	bne	a5,zero,.L630
	nop
.L628:
	nop
	lw	ra,32(sp)
	.cfi_restore 1
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 36
	addi	sp,sp,36
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE106:
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB107:
	.cfi_startproc
	addi	sp,sp,-40
	.cfi_def_cfa_offset 40
	sw	ra,36(sp)
	sw	s0,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,40
	.cfi_def_cfa 8, 0
	sw	a0,-32(s0)
	sw	a1,-36(s0)
	sw	a2,-40(s0)
	lw	a5,-40(s0)
	srli	a5,a5,2
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	andi	a5,a5,-4
	sw	a5,-16(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	bltu	a4,a5,.L632
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	lw	a4,-24(s0)
	bleu	a4,a5,.L639
.L632:
	sw	zero,-12(s0)
	j	.L634
.L635:
	lw	a5,-12(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a4,a4,a5
	lw	a5,-12(s0)
	slli	a5,a5,2
	lw	a3,-32(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L634:
	lw	a4,-12(s0)
	lw	a5,-20(s0)
	bltu	a4,a5,.L635
	j	.L636
.L637:
	lw	a4,-28(s0)
	lw	a5,-16(s0)
	add	a4,a4,a5
	lw	a3,-24(s0)
	lw	a5,-16(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-16(s0)
	addi	a5,a5,1
	sw	a5,-16(s0)
.L636:
	lw	a4,-40(s0)
	lw	a5,-16(s0)
	bgtu	a4,a5,.L637
	j	.L638
.L640:
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	add	a4,a4,a5
	lw	a3,-24(s0)
	lw	a5,-40(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L639:
	lw	a5,-40(s0)
	addi	a4,a5,-1
	sw	a4,-40(s0)
	bne	a5,zero,.L640
	nop
.L638:
	nop
	lw	ra,36(sp)
	.cfi_restore 1
	lw	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 40
	addi	sp,sp,40
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE107:
	.size	__cmovw, .-__cmovw
	.align	2
	.globl	__modi
	.type	__modi, @function
__modi:
.LFB108:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	lw	a5,-12(s0)
	lw	a1,-16(s0)
	mv	a0,a5
	call	__modsi3
	mv	a5,a0
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE108:
	.size	__modi, .-__modi
	.align	2
	.globl	__uitod
	.type	__uitod, @function
__uitod:
.LFB109:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a0,-12(s0)
	call	__floatunsidf
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE109:
	.size	__uitod, .-__uitod
	.align	2
	.globl	__uitof
	.type	__uitof, @function
__uitof:
.LFB110:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a0,-12(s0)
	call	__floatunsisf
	mv	a5,a0
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE110:
	.size	__uitof, .-__uitof
	.align	2
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
.LFB111:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-12(s0)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__floatundidf
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE111:
	.size	__ulltod, .-__ulltod
	.align	2
	.globl	__ulltof
	.type	__ulltof, @function
__ulltof:
.LFB112:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-12(s0)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__floatundisf
	mv	a5,a0
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE112:
	.size	__ulltof, .-__ulltof
	.align	2
	.globl	__umodi
	.type	__umodi, @function
__umodi:
.LFB113:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	lw	a5,-12(s0)
	lw	a1,-16(s0)
	mv	a0,a5
	call	__umodsi3
	mv	a5,a0
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE113:
	.size	__umodi, .-__umodi
	.align	2
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB114:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sh	a5,-14(s0)
	sw	zero,-12(s0)
	j	.L654
.L657:
	lhu	a4,-14(s0)
	li	a3,15
	lw	a5,-12(s0)
	sub	a5,a3,a5
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L659
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L654:
	lw	a4,-12(s0)
	li	a5,15
	ble	a4,a5,.L657
	j	.L656
.L659:
	nop
.L656:
	lw	a5,-12(s0)
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE114:
	.size	__clzhi2, .-__clzhi2
	.align	2
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB115:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sh	a5,-14(s0)
	sw	zero,-12(s0)
	j	.L661
.L664:
	lhu	a4,-14(s0)
	lw	a5,-12(s0)
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L666
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L661:
	lw	a4,-12(s0)
	li	a5,15
	ble	a4,a5,.L664
	j	.L663
.L666:
	nop
.L663:
	lw	a5,-12(s0)
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE115:
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB116:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lui	a5,%hi(.LC14)
	lw	a1,%lo(.LC14)(a5)
	lw	a0,-12(s0)
	call	__gesf2
	mv	a5,a0
	blt	a5,zero,.L672
	lui	a5,%hi(.LC14)
	lw	a1,%lo(.LC14)(a5)
	lw	a0,-12(s0)
	call	__subsf3
	mv	a5,a0
	mv	a0,a5
	call	__fixsfsi
	mv	a4,a0
	li	a5,32768
	add	a5,a4,a5
	j	.L670
.L672:
	lw	a0,-12(s0)
	call	__fixsfsi
	mv	a5,a0
.L670:
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE116:
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB117:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sh	a5,-18(s0)
	sw	zero,-16(s0)
	sw	zero,-12(s0)
	j	.L674
.L676:
	lhu	a4,-18(s0)
	lw	a5,-12(s0)
	sra	a5,a4,a5
	andi	a5,a5,1
	beq	a5,zero,.L675
	lw	a5,-16(s0)
	addi	a5,a5,1
	sw	a5,-16(s0)
.L675:
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L674:
	lw	a4,-12(s0)
	li	a5,15
	ble	a4,a5,.L676
	lw	a5,-16(s0)
	andi	a5,a5,1
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE117:
	.size	__parityhi2, .-__parityhi2
	.align	2
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB118:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sh	a5,-18(s0)
	sw	zero,-16(s0)
	sw	zero,-12(s0)
	j	.L679
.L681:
	lhu	a4,-18(s0)
	lw	a5,-12(s0)
	sra	a5,a4,a5
	andi	a5,a5,1
	beq	a5,zero,.L680
	lw	a5,-16(s0)
	addi	a5,a5,1
	sw	a5,-16(s0)
.L680:
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L679:
	lw	a4,-12(s0)
	li	a5,15
	ble	a4,a5,.L681
	lw	a5,-16(s0)
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE118:
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB119:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-20(s0)
	sw	zero,-12(s0)
	j	.L684
.L686:
	lw	a5,-16(s0)
	andi	a5,a5,1
	beq	a5,zero,.L685
	lw	a4,-12(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-12(s0)
.L685:
	lw	a5,-16(s0)
	srli	a5,a5,1
	sw	a5,-16(s0)
	lw	a5,-20(s0)
	slli	a5,a5,1
	sw	a5,-20(s0)
.L684:
	lw	a5,-16(s0)
	bne	a5,zero,.L686
	lw	a5,-12(s0)
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE119:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-20(s0)
	sw	zero,-12(s0)
	lw	a5,-16(s0)
	bne	a5,zero,.L691
	li	a5,0
	j	.L690
.L693:
	lw	a5,-20(s0)
	andi	a5,a5,1
	beq	a5,zero,.L692
	lw	a4,-12(s0)
	lw	a5,-16(s0)
	add	a5,a4,a5
	sw	a5,-12(s0)
.L692:
	lw	a5,-16(s0)
	slli	a5,a5,1
	sw	a5,-16(s0)
	lw	a5,-20(s0)
	srli	a5,a5,1
	sw	a5,-20(s0)
.L691:
	lw	a5,-20(s0)
	bne	a5,zero,.L693
	lw	a5,-12(s0)
.L690:
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB121:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,28
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	li	a5,1
	sw	a5,-12(s0)
	sw	zero,-16(s0)
	j	.L695
.L697:
	lw	a5,-24(s0)
	slli	a5,a5,1
	sw	a5,-24(s0)
	lw	a5,-12(s0)
	slli	a5,a5,1
	sw	a5,-12(s0)
.L695:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bgeu	a4,a5,.L698
	lw	a5,-12(s0)
	beq	a5,zero,.L698
	lw	a5,-24(s0)
	bge	a5,zero,.L697
	j	.L698
.L700:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L699
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	or	a5,a4,a5
	sw	a5,-16(s0)
.L699:
	lw	a5,-12(s0)
	srli	a5,a5,1
	sw	a5,-12(s0)
	lw	a5,-24(s0)
	srli	a5,a5,1
	sw	a5,-24(s0)
.L698:
	lw	a5,-12(s0)
	bne	a5,zero,.L700
	lw	a5,-28(s0)
	beq	a5,zero,.L701
	lw	a5,-20(s0)
	j	.L702
.L701:
	lw	a5,-16(s0)
.L702:
	mv	a0,a5
	lw	ra,24(sp)
	.cfi_restore 1
	lw	s0,20(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 28
	addi	sp,sp,28
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE121:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	lw	a1,-16(s0)
	lw	a0,-12(s0)
	call	__ltsf2
	mv	a5,a0
	bge	a5,zero,.L711
	li	a5,-1
	j	.L706
.L711:
	lw	a1,-16(s0)
	lw	a0,-12(s0)
	call	__gtsf2
	mv	a5,a0
	ble	a5,zero,.L712
	li	a5,1
	j	.L706
.L712:
	li	a5,0
.L706:
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE122:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB123:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-12(s0)
	sw	a2,-24(s0)
	sw	a3,-20(s0)
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__ltdf2
	mv	a5,a0
	bge	a5,zero,.L721
	li	a5,-1
	j	.L716
.L721:
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__gtdf2
	mv	a5,a0
	ble	a5,zero,.L722
	li	a5,1
	j	.L716
.L722:
	li	a5,0
.L716:
	mv	a0,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE123:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB124:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	lw	a5,-12(s0)
	mv	t1,a5
	srai	a5,a5,31
	mv	t2,a5
	lw	a5,-16(s0)
	mv	a2,a5
	srai	a5,a5,31
	mv	a3,a5
	mv	a0,t1
	mv	a1,t2
	call	__muldi3
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE124:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB125:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	sw	a1,-16(s0)
	lw	a1,-12(s0)
	mv	a4,a1
	li	a5,0
	lw	a1,-16(s0)
	mv	a2,a1
	li	a3,0
	mv	a0,a4
	mv	a1,a5
	call	__muldi3
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE125:
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB126:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,28
	.cfi_def_cfa 8, 0
	sw	a0,-24(s0)
	sw	a1,-28(s0)
	sw	zero,-16(s0)
	sw	zero,-20(s0)
	lw	a5,-28(s0)
	bge	a5,zero,.L728
	lw	a5,-28(s0)
	neg	a5,a5
	sw	a5,-28(s0)
	li	a5,1
	sw	a5,-16(s0)
.L728:
	sb	zero,-9(s0)
	j	.L729
.L732:
	lw	a5,-28(s0)
	andi	a5,a5,1
	beq	a5,zero,.L730
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L730:
	lw	a5,-24(s0)
	slli	a5,a5,1
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	srai	a5,a5,1
	sw	a5,-28(s0)
	lbu	a5,-9(s0)
	addi	a5,a5,1
	sb	a5,-9(s0)
.L729:
	lw	a5,-28(s0)
	beq	a5,zero,.L731
	lbu	a4,-9(s0)
	li	a5,31
	bleu	a4,a5,.L732
.L731:
	lw	a5,-16(s0)
	beq	a5,zero,.L733
	lw	a5,-20(s0)
	neg	a5,a5
	j	.L735
.L733:
	lw	a5,-20(s0)
.L735:
	mv	a0,a5
	lw	ra,24(sp)
	.cfi_restore 1
	lw	s0,20(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 28
	addi	sp,sp,28
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE126:
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	zero,-12(s0)
	lw	a5,-20(s0)
	bge	a5,zero,.L737
	lw	a5,-20(s0)
	neg	a5,a5
	sw	a5,-20(s0)
	lw	a5,-12(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-12(s0)
.L737:
	lw	a5,-24(s0)
	bge	a5,zero,.L738
	lw	a5,-24(s0)
	neg	a5,a5
	sw	a5,-24(s0)
	lw	a5,-12(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-12(s0)
.L738:
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	__udivmodsi4
	mv	a5,a0
	sw	a5,-16(s0)
	lw	a5,-12(s0)
	beq	a5,zero,.L739
	lw	a5,-16(s0)
	neg	a5,a5
	sw	a5,-16(s0)
.L739:
	lw	a5,-16(s0)
	mv	a0,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	zero,-12(s0)
	lw	a5,-20(s0)
	bge	a5,zero,.L742
	lw	a5,-20(s0)
	neg	a5,a5
	sw	a5,-20(s0)
	li	a5,1
	sw	a5,-12(s0)
.L742:
	lw	a5,-24(s0)
	bge	a5,zero,.L743
	lw	a5,-24(s0)
	neg	a5,a5
	sw	a5,-24(s0)
.L743:
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	__udivmodsi4
	mv	a5,a0
	sw	a5,-16(s0)
	lw	a5,-12(s0)
	beq	a5,zero,.L744
	lw	a5,-16(s0)
	neg	a5,a5
	sw	a5,-16(s0)
.L744:
	lw	a5,-16(s0)
	mv	a0,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a2,-20(s0)
	sh	a5,-14(s0)
	mv	a5,a4
	sh	a5,-16(s0)
	li	a5,1
	sh	a5,-10(s0)
	sh	zero,-12(s0)
	j	.L747
.L749:
	lhu	a5,-16(s0)
	slli	a5,a5,1
	sh	a5,-16(s0)
	lhu	a5,-10(s0)
	slli	a5,a5,1
	sh	a5,-10(s0)
.L747:
	lhu	a4,-16(s0)
	lhu	a5,-14(s0)
	bgeu	a4,a5,.L750
	lhu	a5,-10(s0)
	beq	a5,zero,.L750
	lh	a5,-16(s0)
	bge	a5,zero,.L749
	j	.L750
.L752:
	lhu	a4,-14(s0)
	lhu	a5,-16(s0)
	bltu	a4,a5,.L751
	lhu	a5,-14(s0)
	mv	a4,a5
	lhu	a5,-16(s0)
	sub	a5,a4,a5
	sh	a5,-14(s0)
	lhu	a5,-12(s0)
	mv	a4,a5
	lhu	a5,-10(s0)
	or	a5,a4,a5
	sh	a5,-12(s0)
.L751:
	lhu	a5,-10(s0)
	srli	a5,a5,1
	sh	a5,-10(s0)
	lhu	a5,-16(s0)
	srli	a5,a5,1
	sh	a5,-16(s0)
.L750:
	lhu	a5,-10(s0)
	bne	a5,zero,.L752
	lw	a5,-20(s0)
	beq	a5,zero,.L753
	lhu	a5,-14(s0)
	j	.L754
.L753:
	lhu	a5,-12(s0)
.L754:
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB130:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,28
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	li	a5,1
	sw	a5,-12(s0)
	sw	zero,-16(s0)
	j	.L756
.L758:
	lw	a5,-24(s0)
	slli	a5,a5,1
	sw	a5,-24(s0)
	lw	a5,-12(s0)
	slli	a5,a5,1
	sw	a5,-12(s0)
.L756:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bgeu	a4,a5,.L759
	lw	a5,-12(s0)
	beq	a5,zero,.L759
	lw	a5,-24(s0)
	bge	a5,zero,.L758
	j	.L759
.L761:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L760
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	or	a5,a4,a5
	sw	a5,-16(s0)
.L760:
	lw	a5,-12(s0)
	srli	a5,a5,1
	sw	a5,-12(s0)
	lw	a5,-24(s0)
	srli	a5,a5,1
	sw	a5,-24(s0)
.L759:
	lw	a5,-12(s0)
	bne	a5,zero,.L761
	lw	a5,-28(s0)
	beq	a5,zero,.L762
	lw	a5,-20(s0)
	j	.L763
.L762:
	lw	a5,-16(s0)
.L763:
	mv	a0,a5
	lw	ra,24(sp)
	.cfi_restore 1
	lw	s0,20(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 28
	addi	sp,sp,28
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE130:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	addi	a5,s0,-8
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	addi	a5,a5,-24
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a5,a5,3
	li	a4,32
	sw	a4,-12(s0)
	lw	a2,-40(s0)
	lw	a3,-36(s0)
	sw	a2,8(a5)
	sw	a3,12(a5)
	lw	a3,-44(s0)
	lw	a4,-12(s0)
	and	a4,a3,a4
	beq	a4,zero,.L765
	sw	zero,0(a5)
	lw	a3,8(a5)
	lw	a2,-44(s0)
	lw	a4,-12(s0)
	sub	a4,a2,a4
	sll	a4,a3,a4
	sw	a4,4(a5)
	j	.L766
.L765:
	lw	a4,-44(s0)
	bne	a4,zero,.L767
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	j	.L769
.L767:
	lw	a3,8(a5)
	lw	a4,-44(s0)
	sll	a4,a3,a4
	sw	a4,0(a5)
	lw	a4,12(a5)
	mv	a3,a4
	lw	a4,-44(s0)
	sll	a3,a3,a4
	lw	a2,8(a5)
	lw	a1,-12(s0)
	lw	a4,-44(s0)
	sub	a4,a1,a4
	srl	a4,a2,a4
	or	a4,a3,a4
	sw	a4,4(a5)
.L766:
	lw	a4,0(a5)
	lw	a5,4(a5)
.L769:
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE131:
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB132:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	addi	a5,s0,-8
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	addi	a5,a5,-24
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a5,a5,3
	li	a4,32
	sw	a4,-12(s0)
	lw	a2,-40(s0)
	lw	a3,-36(s0)
	sw	a2,8(a5)
	sw	a3,12(a5)
	lw	a3,-44(s0)
	lw	a4,-12(s0)
	and	a4,a3,a4
	beq	a4,zero,.L771
	lw	a3,12(a5)
	lw	a4,-12(s0)
	addi	a4,a4,-1
	sra	a4,a3,a4
	sw	a4,4(a5)
	lw	a3,12(a5)
	lw	a2,-44(s0)
	lw	a4,-12(s0)
	sub	a4,a2,a4
	sra	a4,a3,a4
	sw	a4,0(a5)
	j	.L772
.L771:
	lw	a4,-44(s0)
	bne	a4,zero,.L773
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	j	.L775
.L773:
	lw	a3,12(a5)
	lw	a4,-44(s0)
	sra	a4,a3,a4
	sw	a4,4(a5)
	lw	a4,12(a5)
	mv	a2,a4
	lw	a3,-12(s0)
	lw	a4,-44(s0)
	sub	a4,a3,a4
	sll	a3,a2,a4
	lw	a2,8(a5)
	lw	a4,-44(s0)
	srl	a4,a2,a4
	or	a4,a3,a4
	sw	a4,0(a5)
.L772:
	lw	a4,0(a5)
	lw	a5,4(a5)
.L775:
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	addi	sp,sp,-168
	.cfi_def_cfa_offset 168
	sw	ra,164(sp)
	sw	s0,160(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,168
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-12(s0)
	lw	a5,-12(s0)
	srli	a5,a5,24
	sw	a5,-56(s0)
	sw	zero,-52(s0)
	lw	a5,-12(s0)
	srli	t1,a5,8
	li	t2,0
	li	a5,65536
	addi	a5,a5,-256
	and	a2,t1,a5
	andi	a3,t2,0
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	mv	a5,a0
	or	a5,a5,a2
	sw	a5,-64(s0)
	mv	a5,a1
	or	a5,a5,a3
	sw	a5,-60(s0)
	lw	a5,-12(s0)
	slli	a4,a5,8
	lw	a5,-16(s0)
	srli	a5,a5,24
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-12(s0)
	srli	a5,a5,24
	sw	a5,-20(s0)
	li	a5,16711680
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	mv	a4,a2
	and	a5,a4,a5
	sw	a5,-72(s0)
	mv	a5,a3
	andi	a5,a5,0
	sw	a5,-68(s0)
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	mv	a5,a0
	lw	a2,-72(s0)
	lw	a3,-68(s0)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,-80(s0)
	mv	a5,a1
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,-76(s0)
	lw	a5,-12(s0)
	slli	a4,a5,24
	lw	a5,-16(s0)
	srli	a5,a5,8
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-12(s0)
	srli	a5,a5,8
	sw	a5,-28(s0)
	li	a5,-16777216
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	mv	a4,a2
	and	a5,a4,a5
	sw	a5,-88(s0)
	mv	a5,a3
	andi	a5,a5,0
	sw	a5,-84(s0)
	lw	a0,-80(s0)
	lw	a1,-76(s0)
	mv	a5,a0
	lw	a2,-88(s0)
	lw	a3,-84(s0)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,-96(s0)
	mv	a5,a1
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,-92(s0)
	lw	a5,-16(s0)
	srli	a4,a5,24
	lw	a5,-12(s0)
	slli	a5,a5,8
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-16(s0)
	slli	a5,a5,8
	sw	a5,-40(s0)
	lw	a3,-40(s0)
	lw	a4,-36(s0)
	mv	a5,a3
	andi	a5,a5,0
	sw	a5,-104(s0)
	mv	a5,a4
	andi	a5,a5,255
	sw	a5,-100(s0)
	lw	a0,-96(s0)
	lw	a1,-92(s0)
	mv	a5,a0
	lw	a2,-104(s0)
	lw	a3,-100(s0)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,-112(s0)
	mv	a5,a1
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,-108(s0)
	lw	a5,-16(s0)
	srli	a4,a5,8
	lw	a5,-12(s0)
	slli	a5,a5,24
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	or	a5,a4,a5
	sw	a5,-44(s0)
	lw	a5,-16(s0)
	slli	a5,a5,24
	sw	a5,-48(s0)
	lw	a3,-48(s0)
	lw	a4,-44(s0)
	mv	a5,a3
	andi	a5,a5,0
	sw	a5,-120(s0)
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a4,a5
	sw	a5,-116(s0)
	lw	a0,-112(s0)
	lw	a1,-108(s0)
	mv	a5,a0
	lw	a2,-120(s0)
	lw	a3,-116(s0)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,-128(s0)
	mv	a5,a1
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,-124(s0)
	lw	a5,-16(s0)
	slli	a5,a5,8
	sw	a5,-132(s0)
	sw	zero,-136(s0)
	lw	a3,-136(s0)
	lw	a4,-132(s0)
	mv	a5,a3
	andi	a5,a5,0
	sw	a5,-144(s0)
	li	a5,16711680
	and	a5,a4,a5
	sw	a5,-140(s0)
	lw	a0,-128(s0)
	lw	a1,-124(s0)
	mv	a5,a0
	lw	a2,-144(s0)
	lw	a3,-140(s0)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,-152(s0)
	mv	a5,a1
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,-148(s0)
	lw	a5,-16(s0)
	slli	a5,a5,24
	sw	a5,-156(s0)
	sw	zero,-160(s0)
	lw	a0,-152(s0)
	lw	a1,-148(s0)
	mv	a5,a0
	lw	a2,-160(s0)
	lw	a3,-156(s0)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,-168(s0)
	mv	a5,a1
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,-164(s0)
	lw	a4,-168(s0)
	lw	a5,-164(s0)
	mv	a0,a4
	mv	a1,a5
	lw	ra,164(sp)
	.cfi_restore 1
	lw	s0,160(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 168
	addi	sp,sp,168
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE133:
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB134:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	sw	a0,-12(s0)
	lw	a5,-12(s0)
	srli	a4,a5,24
	lw	a5,-12(s0)
	srli	a3,a5,8
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a3,a5
	or	a4,a4,a5
	lw	a5,-12(s0)
	slli	a3,a5,8
	li	a5,16711680
	and	a5,a3,a5
	or	a4,a4,a5
	lw	a5,-12(s0)
	slli	a5,a5,24
	or	a5,a4,a5
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE134:
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB135:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	sw	a5,-12(s0)
	lw	a4,-12(s0)
	li	a5,65536
	bgeu	a4,a5,.L781
	li	a5,16
	j	.L782
.L781:
	li	a5,0
.L782:
	sw	a5,-16(s0)
	li	a4,16
	lw	a5,-16(s0)
	sub	a5,a4,a5
	lw	a4,-12(s0)
	srl	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	sw	a5,-20(s0)
	lw	a4,-12(s0)
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a4,a5
	bne	a5,zero,.L783
	li	a5,8
	j	.L784
.L783:
	li	a5,0
.L784:
	sw	a5,-16(s0)
	li	a4,8
	lw	a5,-16(s0)
	sub	a5,a4,a5
	lw	a4,-12(s0)
	srl	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-12(s0)
	andi	a5,a5,240
	bne	a5,zero,.L785
	li	a5,4
	j	.L786
.L785:
	li	a5,0
.L786:
	sw	a5,-16(s0)
	li	a4,4
	lw	a5,-16(s0)
	sub	a5,a4,a5
	lw	a4,-12(s0)
	srl	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-12(s0)
	andi	a5,a5,12
	bne	a5,zero,.L787
	li	a5,2
	j	.L788
.L787:
	li	a5,0
.L788:
	sw	a5,-16(s0)
	li	a4,2
	lw	a5,-16(s0)
	sub	a5,a4,a5
	lw	a4,-12(s0)
	srl	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-12(s0)
	andi	a5,a5,2
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a3,a5
	li	a4,2
	lw	a5,-12(s0)
	sub	a5,a4,a5
	mv	a1,a5
	mv	a0,a3
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,-20(s0)
	add	a5,a4,a5
	mv	a0,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE135:
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB136:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-32(s0)
	sw	a2,-44(s0)
	sw	a3,-40(s0)
	addi	a5,s0,-8
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	addi	a5,a5,-20
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a5,a5,3
	lw	a2,-36(s0)
	lw	a3,-32(s0)
	sw	a2,8(a5)
	sw	a3,12(a5)
	lw	a2,-44(s0)
	lw	a3,-40(s0)
	sw	a2,0(a5)
	sw	a3,4(a5)
	lw	a3,12(a5)
	lw	a4,4(a5)
	bge	a3,a4,.L791
	li	a5,0
	j	.L796
.L791:
	lw	a3,12(a5)
	lw	a4,4(a5)
	ble	a3,a4,.L793
	li	a5,2
	j	.L796
.L793:
	lw	a3,8(a5)
	lw	a4,0(a5)
	bgeu	a3,a4,.L794
	li	a5,0
	j	.L796
.L794:
	lw	a4,8(a5)
	lw	a5,0(a5)
	bleu	a4,a5,.L795
	li	a5,2
	j	.L796
.L795:
	li	a5,1
.L796:
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE136:
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB137:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-12(s0)
	sw	a2,-24(s0)
	sw	a3,-20(s0)
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__cmpdi2
	mv	a5,a0
	addi	a5,a5,-1
	mv	a0,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE137:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB138:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	bne	a5,zero,.L800
	li	a5,16
	j	.L801
.L800:
	li	a5,0
.L801:
	sw	a5,-16(s0)
	lw	a5,-16(s0)
	lw	a4,-12(s0)
	srl	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	sw	a5,-20(s0)
	lw	a5,-12(s0)
	andi	a5,a5,255
	bne	a5,zero,.L802
	li	a5,8
	j	.L803
.L802:
	li	a5,0
.L803:
	sw	a5,-16(s0)
	lw	a5,-16(s0)
	lw	a4,-12(s0)
	srl	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-12(s0)
	andi	a5,a5,15
	bne	a5,zero,.L804
	li	a5,4
	j	.L805
.L804:
	li	a5,0
.L805:
	sw	a5,-16(s0)
	lw	a5,-16(s0)
	lw	a4,-12(s0)
	srl	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-12(s0)
	andi	a5,a5,3
	bne	a5,zero,.L806
	li	a5,2
	j	.L807
.L806:
	li	a5,0
.L807:
	sw	a5,-16(s0)
	lw	a5,-16(s0)
	lw	a4,-12(s0)
	srl	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	andi	a5,a5,3
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-12(s0)
	not	a5,a5
	andi	a4,a5,1
	lw	a5,-12(s0)
	srli	a5,a5,1
	li	a3,2
	sub	a5,a3,a5
	neg	a4,a4
	and	a4,a4,a5
	lw	a5,-20(s0)
	add	a5,a4,a5
	mv	a0,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE138:
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB139:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	addi	a5,s0,-8
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	addi	a5,a5,-24
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a5,a5,3
	li	a4,32
	sw	a4,-12(s0)
	lw	a2,-40(s0)
	lw	a3,-36(s0)
	sw	a2,8(a5)
	sw	a3,12(a5)
	lw	a3,-44(s0)
	lw	a4,-12(s0)
	and	a4,a3,a4
	beq	a4,zero,.L810
	sw	zero,4(a5)
	lw	a3,12(a5)
	lw	a2,-44(s0)
	lw	a4,-12(s0)
	sub	a4,a2,a4
	srl	a4,a3,a4
	sw	a4,0(a5)
	j	.L811
.L810:
	lw	a4,-44(s0)
	bne	a4,zero,.L812
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	j	.L814
.L812:
	lw	a3,12(a5)
	lw	a4,-44(s0)
	srl	a4,a3,a4
	sw	a4,4(a5)
	lw	a3,12(a5)
	lw	a2,-12(s0)
	lw	a4,-44(s0)
	sub	a4,a2,a4
	sll	a3,a3,a4
	lw	a2,8(a5)
	lw	a4,-44(s0)
	srl	a4,a2,a4
	or	a4,a3,a4
	sw	a4,0(a5)
.L811:
	lw	a4,0(a5)
	lw	a5,4(a5)
.L814:
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE139:
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-40(s0)
	sw	a1,-44(s0)
	addi	a5,s0,-12
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	addi	a5,a5,-24
	addi	a5,a5,7
	srli	a5,a5,3
	slli	s1,a5,3
	li	a5,16
	sw	a5,-16(s0)
	lw	a5,-16(s0)
	li	a4,-1
	srl	a5,a4,a5
	sw	a5,-20(s0)
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	and	a3,a4,a5
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	and	a5,a4,a5
	mv	a1,a5
	mv	a0,a3
	call	__mulsi3
	mv	a5,a0
	sw	a5,0(s1)
	lw	a4,0(s1)
	lw	a5,-16(s0)
	srl	a5,a4,a5
	sw	a5,-24(s0)
	lw	a4,0(s1)
	lw	a5,-20(s0)
	and	a5,a4,a5
	sw	a5,0(s1)
	lw	a5,-16(s0)
	lw	a4,-40(s0)
	srl	a3,a4,a5
	lw	a4,-44(s0)
	lw	a5,-20(s0)
	and	a5,a4,a5
	mv	a1,a5
	mv	a0,a3
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
	lw	a4,0(s1)
	lw	a3,-24(s0)
	lw	a5,-20(s0)
	and	a3,a3,a5
	lw	a5,-16(s0)
	sll	a5,a3,a5
	add	a5,a4,a5
	sw	a5,0(s1)
	lw	a5,-16(s0)
	lw	a4,-24(s0)
	srl	a5,a4,a5
	sw	a5,4(s1)
	lw	a4,0(s1)
	lw	a5,-16(s0)
	srl	a5,a4,a5
	sw	a5,-24(s0)
	lw	a4,0(s1)
	lw	a5,-20(s0)
	and	a5,a4,a5
	sw	a5,0(s1)
	lw	a5,-16(s0)
	lw	a4,-44(s0)
	srl	a3,a4,a5
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	and	a5,a4,a5
	mv	a1,a5
	mv	a0,a3
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
	lw	a4,0(s1)
	lw	a3,-24(s0)
	lw	a5,-20(s0)
	and	a3,a3,a5
	lw	a5,-16(s0)
	sll	a5,a3,a5
	add	a5,a4,a5
	sw	a5,0(s1)
	lw	a5,4(s1)
	mv	a3,a5
	lw	a5,-16(s0)
	lw	a4,-24(s0)
	srl	a5,a4,a5
	add	a5,a3,a5
	sw	a5,4(s1)
	lw	a5,4(s1)
	sw	a5,-48(s0)
	lw	a5,-16(s0)
	lw	a4,-40(s0)
	srl	a3,a4,a5
	lw	a5,-16(s0)
	lw	a4,-44(s0)
	srl	a5,a4,a5
	mv	a1,a5
	mv	a0,a3
	call	__mulsi3
	mv	a5,a0
	lw	a4,-48(s0)
	add	a5,a4,a5
	sw	a5,4(s1)
	lw	a4,0(s1)
	lw	a5,4(s1)
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE140:
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB141:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-48(s0)
	sw	a1,-44(s0)
	sw	a2,-56(s0)
	sw	a3,-52(s0)
	addi	a5,s0,-12
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	addi	a5,a5,-28
	addi	a5,a5,7
	srli	a5,a5,3
	slli	s1,a5,3
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	sw	a4,16(s1)
	sw	a5,20(s1)
	lw	a4,-56(s0)
	lw	a5,-52(s0)
	sw	a4,8(s1)
	sw	a5,12(s1)
	lw	a5,16(s1)
	lw	a4,8(s1)
	mv	a1,a4
	mv	a0,a5
	call	__muldsi3
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	lw	a5,4(s1)
	sw	a5,-60(s0)
	lw	a5,20(s1)
	mv	a4,a5
	lw	a5,8(s1)
	mv	a1,a5
	mv	a0,a4
	call	__mulsi3
	mv	a5,a0
	sw	a5,-64(s0)
	lw	a5,16(s1)
	lw	a4,12(s1)
	mv	a1,a4
	mv	a0,a5
	call	__mulsi3
	mv	a5,a0
	lw	a4,-64(s0)
	add	a5,a4,a5
	lw	a4,-60(s0)
	add	a5,a4,a5
	sw	a5,4(s1)
	lw	a4,0(s1)
	lw	a5,4(s1)
	mv	a0,a4
	mv	a1,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE141:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.globl	__negdi2
	.type	__negdi2, @function
__negdi2:
.LFB142:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-12(s0)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	li	a4,0
	li	a5,0
	sub	a2,a4,a0
	mv	t1,a2
	sgtu	t1,t1,a4
	sub	a3,a5,a1
	sub	a5,a3,t1
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE142:
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB143:
	.cfi_startproc
	addi	sp,sp,-36
	.cfi_def_cfa_offset 36
	sw	ra,32(sp)
	sw	s0,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,36
	.cfi_def_cfa 8, 0
	sw	a0,-32(s0)
	sw	a1,-28(s0)
	addi	a5,s0,-8
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	addi	a5,a5,-16
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a5,a5,3
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	sw	a2,0(a5)
	sw	a3,4(a5)
	lw	a4,4(a5)
	lw	a5,0(a5)
	xor	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	srli	a5,a5,16
	lw	a4,-12(s0)
	xor	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	srli	a5,a5,8
	lw	a4,-12(s0)
	xor	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	srli	a5,a5,4
	lw	a4,-12(s0)
	xor	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	andi	a5,a5,15
	li	a4,28672
	addi	a4,a4,-1642
	sra	a5,a4,a5
	andi	a5,a5,1
	mv	a0,a5
	lw	ra,32(sp)
	.cfi_restore 1
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 36
	addi	sp,sp,36
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE143:
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB144:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	lw	a5,-16(s0)
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	srli	a5,a5,16
	lw	a4,-12(s0)
	xor	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	srli	a5,a5,8
	lw	a4,-12(s0)
	xor	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	srli	a5,a5,4
	lw	a4,-12(s0)
	xor	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	andi	a5,a5,15
	li	a4,28672
	addi	a4,a4,-1642
	sra	a5,a4,a5
	andi	a5,a5,1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE144:
	.size	__paritysi2, .-__paritysi2
	.align	2
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB145:
	.cfi_startproc
	addi	sp,sp,-84
	.cfi_def_cfa_offset 84
	sw	ra,80(sp)
	sw	s0,76(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,84
	.cfi_def_cfa 8, 0
	sw	a0,-32(s0)
	sw	a1,-28(s0)
	addi	a5,s0,-8
	sw	a5,-84(s0)
	lw	a5,-84(s0)
	addi	a5,a5,-16
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a0,a5,3
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	sw	a4,0(a0)
	sw	a5,4(a0)
	lw	a5,4(a0)
	slli	a4,a5,31
	lw	a5,0(a0)
	srli	a2,a5,1
	or	a2,a4,a2
	lw	a5,4(a0)
	srli	a3,a5,1
	li	a5,1431654400
	addi	a5,a5,1365
	and	a5,a2,a5
	sw	a5,-64(s0)
	li	a5,1431654400
	addi	a5,a5,1365
	and	a5,a3,a5
	sw	a5,-60(s0)
	lw	a4,0(a0)
	lw	a5,4(a0)
	lw	a1,-64(s0)
	lw	a2,-60(s0)
	mv	a3,a1
	sub	t1,a4,a3
	mv	a3,t1
	sgtu	a3,a3,a4
	sub	t2,a5,a2
	sub	a5,t2,a3
	mv	t2,a5
	sw	t1,0(a0)
	sw	t2,4(a0)
	lw	a5,4(a0)
	slli	a4,a5,30
	lw	a5,0(a0)
	srli	a5,a5,2
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	or	a5,a4,a5
	sw	a5,-48(s0)
	lw	a5,4(a0)
	srli	a5,a5,2
	sw	a5,-44(s0)
	li	a5,858992640
	addi	a5,a5,819
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	mv	a4,a2
	and	a5,a4,a5
	sw	a5,-72(s0)
	li	a5,858992640
	addi	a5,a5,819
	mv	a4,a3
	and	a5,a4,a5
	sw	a5,-68(s0)
	lw	a4,0(a0)
	li	a5,858992640
	addi	a5,a5,819
	and	a5,a4,a5
	sw	a5,-56(s0)
	lw	a4,4(a0)
	li	a5,858992640
	addi	a5,a5,819
	and	a5,a4,a5
	sw	a5,-52(s0)
	lw	t1,-72(s0)
	lw	t2,-68(s0)
	mv	a3,t1
	lw	a2,-56(s0)
	add	a4,a3,a2
	mv	a3,a4
	mv	a2,t1
	sltu	a3,a3,a2
	mv	a2,t2
	lw	a1,-52(s0)
	add	a5,a2,a1
	add	a3,a3,a5
	mv	a5,a3
	sw	a4,0(a0)
	sw	a5,4(a0)
	lw	a5,4(a0)
	slli	a5,a5,28
	lw	a4,0(a0)
	srli	a4,a4,4
	sw	a4,-40(s0)
	lw	a4,-40(s0)
	or	a5,a5,a4
	sw	a5,-40(s0)
	lw	a5,4(a0)
	srli	a5,a5,4
	sw	a5,-36(s0)
	lw	a2,0(a0)
	lw	a3,4(a0)
	lw	t1,-40(s0)
	lw	t2,-36(s0)
	mv	a1,t1
	add	a4,a1,a2
	mv	a1,a4
	sw	t1,-40(s0)
	sw	t2,-36(s0)
	lw	t1,-40(s0)
	sltu	a1,a1,t1
	lw	t1,-36(s0)
	add	a5,t1,a3
	add	a3,a1,a5
	mv	a5,a3
	li	a3,252645376
	addi	a3,a3,-241
	and	a3,a4,a3
	sw	a3,0(a0)
	li	a3,252645376
	addi	a3,a3,-241
	and	a5,a5,a3
	sw	a5,4(a0)
	lw	a5,0(a0)
	lw	a4,4(a0)
	srli	a4,a4,0
	sw	a4,-80(s0)
	sw	zero,-76(s0)
	lw	a4,-80(s0)
	add	a5,a5,a4
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	srli	a5,a5,16
	lw	a4,-12(s0)
	add	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	srli	a4,a5,8
	lw	a5,-12(s0)
	add	a5,a4,a5
	andi	a5,a5,127
	mv	a0,a5
	lw	ra,80(sp)
	.cfi_restore 1
	lw	s0,76(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 84
	addi	sp,sp,84
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE145:
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB146:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	lw	a5,-16(s0)
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	srli	a4,a5,1
	li	a5,1431654400
	addi	a5,a5,1365
	and	a5,a4,a5
	lw	a4,-12(s0)
	sub	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	srli	a4,a5,2
	li	a5,858992640
	addi	a5,a5,819
	and	a4,a4,a5
	lw	a3,-12(s0)
	li	a5,858992640
	addi	a5,a5,819
	and	a5,a3,a5
	add	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	srli	a4,a5,4
	lw	a5,-12(s0)
	add	a4,a4,a5
	li	a5,252645376
	addi	a5,a5,-241
	and	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	srli	a5,a5,16
	lw	a4,-12(s0)
	add	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	srli	a4,a5,8
	lw	a5,-12(s0)
	add	a5,a4,a5
	andi	a5,a5,63
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE146:
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
.LFB147:
	.cfi_startproc
	addi	sp,sp,-44
	.cfi_def_cfa_offset 44
	sw	ra,40(sp)
	sw	s0,36(sp)
	sw	s1,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,44
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-32(s0)
	sw	a2,-40(s0)
	addi	a5,s0,-12
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	addi	a5,a5,-16
	addi	a5,a5,7
	srli	a5,a5,3
	slli	s1,a5,3
	lw	a5,-40(s0)
	srli	a5,a5,31
	andi	a5,a5,0xff
	sw	a5,-16(s0)
	lui	a5,%hi(.LC13)
	lw	a4,%lo(.LC13)(a5)
	lw	a5,%lo(.LC13+4)(a5)
	sw	a4,0(s1)
	sw	a5,4(s1)
.L833:
	lw	a5,-40(s0)
	andi	a5,a5,1
	beq	a5,zero,.L830
	lw	a2,-36(s0)
	lw	a3,-32(s0)
	lw	a0,0(s1)
	lw	a1,4(s1)
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
.L830:
	lw	a5,-40(s0)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	beq	a5,zero,.L838
	lw	a2,-36(s0)
	lw	a3,-32(s0)
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	j	.L833
.L838:
	nop
	lw	a5,-16(s0)
	beq	a5,zero,.L834
	lui	a5,%hi(.LC13)
	lw	a2,0(s1)
	lw	a3,4(s1)
	lw	a0,%lo(.LC13)(a5)
	lw	a1,%lo(.LC13+4)(a5)
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	j	.L836
.L834:
	lw	a4,0(s1)
	lw	a5,4(s1)
.L836:
	mv	a0,a4
	mv	a1,a5
	lw	ra,40(sp)
	.cfi_restore 1
	lw	s0,36(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 44
	lw	s1,32(sp)
	.cfi_restore 9
	addi	sp,sp,44
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE147:
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	srli	a5,a5,31
	andi	a5,a5,0xff
	sw	a5,-16(s0)
	lui	a5,%hi(.LC15)
	lw	a5,%lo(.LC15)(a5)
	sw	a5,-12(s0)
.L843:
	lw	a5,-24(s0)
	andi	a5,a5,1
	beq	a5,zero,.L840
	lw	a1,-20(s0)
	lw	a0,-12(s0)
	call	__mulsf3
	mv	a5,a0
	sw	a5,-12(s0)
.L840:
	lw	a5,-24(s0)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	beq	a5,zero,.L848
	lw	a1,-20(s0)
	lw	a0,-20(s0)
	call	__mulsf3
	mv	a5,a0
	sw	a5,-20(s0)
	j	.L843
.L848:
	nop
	lw	a5,-16(s0)
	beq	a5,zero,.L844
	lui	a5,%hi(.LC15)
	lw	a1,-12(s0)
	lw	a0,%lo(.LC15)(a5)
	call	__divsf3
	mv	a5,a0
	j	.L846
.L844:
	lw	a5,-12(s0)
.L846:
	mv	a0,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE148:
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB149:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-32(s0)
	sw	a2,-44(s0)
	sw	a3,-40(s0)
	addi	a5,s0,-8
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	addi	a5,a5,-20
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a5,a5,3
	lw	a2,-36(s0)
	lw	a3,-32(s0)
	sw	a2,8(a5)
	sw	a3,12(a5)
	lw	a2,-44(s0)
	lw	a3,-40(s0)
	sw	a2,0(a5)
	sw	a3,4(a5)
	lw	a3,12(a5)
	lw	a4,4(a5)
	bgeu	a3,a4,.L850
	li	a5,0
	j	.L855
.L850:
	lw	a3,12(a5)
	lw	a4,4(a5)
	bleu	a3,a4,.L852
	li	a5,2
	j	.L855
.L852:
	lw	a3,8(a5)
	lw	a4,0(a5)
	bgeu	a3,a4,.L853
	li	a5,0
	j	.L855
.L853:
	lw	a4,8(a5)
	lw	a5,0(a5)
	bleu	a4,a5,.L854
	li	a5,2
	j	.L855
.L854:
	li	a5,1
.L855:
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE149:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB150:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-12(s0)
	sw	a2,-24(s0)
	sw	a3,-20(s0)
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	mv	a0,a4
	mv	a1,a5
	call	__ucmpdi2
	mv	a5,a0
	addi	a5,a5,-1
	mv	a0,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC0:
	.word	1284865837
	.word	1481765933
	.section	.srodata.cst4,"aM",@progbits,4
	.align	2
.LC1:
	.word	-8388609
	.align	2
.LC2:
	.word	2139095039
	.section	.srodata.cst8
	.align	3
.LC3:
	.word	-1
	.word	-1048577
	.align	3
.LC4:
	.word	-1
	.word	2146435071
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC5:
	.word	-1
	.word	-1
	.word	-1
	.word	-65537
	.align	4
.LC6:
	.word	-1
	.word	-1
	.word	-1
	.word	2147418111
	.section	.srodata.cst4
	.align	2
.LC7:
	.word	1056964608
	.align	2
.LC8:
	.word	1073741824
	.section	.srodata.cst8
	.align	3
.LC9:
	.word	0
	.word	1071644672
	.align	3
.LC10:
	.word	0
	.word	1073741824
	.section	.rodata.cst16
	.align	4
.LC11:
	.word	0
	.word	0
	.word	0
	.word	1073610752
	.align	4
.LC12:
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.section	.srodata.cst8
	.align	3
.LC13:
	.word	0
	.word	1072693248
	.section	.srodata.cst4
	.align	2
.LC14:
	.word	1191182336
	.align	2
.LC15:
	.word	1065353216
	.globl	__divsf3
	.globl	__fixsfsi
	.globl	__gesf2
	.globl	__umodsi3
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__floatunsisf
	.globl	__floatunsidf
	.globl	__clzdi2
	.globl	__clzsi2
	.globl	__divdf3
	.globl	__gedf2
	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__muldf3
	.globl	__nedf2
	.globl	__adddf3
	.globl	__mulsf3
	.globl	__nesf2
	.globl	__addsf3
	.globl	__extenddftf2
	.globl	__floatsidf
	.globl	__gttf2
	.globl	__moddi3
	.globl	__divdi3
	.globl	__modsi3
	.globl	__divsi3
	.globl	__mulsi3
	.globl	__muldi3
	.globl	__lttf2
	.globl	__unordtf2
	.globl	__ltsf2
	.globl	__ltdf2
	.globl	__subsf3
	.globl	__gtsf2
	.globl	__unordsf2
	.globl	__subdf3
	.globl	__gtdf2
	.globl	__unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
