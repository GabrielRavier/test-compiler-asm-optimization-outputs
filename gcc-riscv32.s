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
.L321:
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
	ble	a5,zero,.L319
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
.L319:
	lw	a5,-12(s0)
	j	.L320
.L317:
	lw	a5,-28(s0)
	bne	a5,zero,.L321
	li	a5,0
.L320:
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
	j	.L323
.L327:
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
	bne	a5,zero,.L324
	lw	a5,-20(s0)
	j	.L325
.L324:
	lw	a5,-24(s0)
	ble	a5,zero,.L326
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	addi	a5,a5,-1
	sw	a5,-16(s0)
.L326:
	lw	a5,-16(s0)
	srai	a5,a5,1
	sw	a5,-16(s0)
.L323:
	lw	a5,-16(s0)
	bne	a5,zero,.L327
	li	a5,0
.L325:
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
	j	.L343
.L345:
	lw	a5,-12(s0)
	addi	a5,a5,4
	sw	a5,-12(s0)
.L343:
	lw	a5,-12(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L344
	lw	a5,-12(s0)
	lw	a5,0(a5)
	lw	a4,-16(s0)
	bne	a4,a5,.L345
.L344:
	lw	a5,-12(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L346
	lw	a5,-12(s0)
	j	.L348
.L346:
	li	a5,0
.L348:
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
	j	.L350
.L352:
	lw	a5,-12(s0)
	addi	a5,a5,4
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	addi	a5,a5,4
	sw	a5,-16(s0)
.L350:
	lw	a5,-12(s0)
	lw	a4,0(a5)
	lw	a5,-16(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L351
	lw	a5,-12(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L351
	lw	a5,-16(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L352
.L351:
	lw	a5,-12(s0)
	lw	a4,0(a5)
	lw	a5,-16(s0)
	lw	a5,0(a5)
	blt	a4,a5,.L353
	lw	a5,-12(s0)
	lw	a4,0(a5)
	lw	a5,-16(s0)
	lw	a5,0(a5)
	sgt	a5,a4,a5
	andi	a5,a5,0xff
	j	.L355
.L353:
	li	a5,-1
.L355:
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
.L357:
	lw	a4,-20(s0)
	addi	a5,a4,4
	sw	a5,-20(s0)
	lw	a5,-16(s0)
	addi	a3,a5,4
	sw	a3,-16(s0)
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,0(a5)
	bne	a5,zero,.L357
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
	j	.L360
.L361:
	lw	a5,-16(s0)
	addi	a5,a5,4
	sw	a5,-16(s0)
.L360:
	lw	a5,-16(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L361
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
	j	.L364
.L366:
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	lw	a5,-12(s0)
	addi	a5,a5,4
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	addi	a5,a5,4
	sw	a5,-16(s0)
.L364:
	lw	a5,-20(s0)
	beq	a5,zero,.L365
	lw	a5,-12(s0)
	lw	a4,0(a5)
	lw	a5,-16(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L365
	lw	a5,-12(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L365
	lw	a5,-16(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L366
.L365:
	lw	a5,-20(s0)
	beq	a5,zero,.L367
	lw	a5,-12(s0)
	lw	a4,0(a5)
	lw	a5,-16(s0)
	lw	a5,0(a5)
	blt	a4,a5,.L368
	lw	a5,-12(s0)
	lw	a4,0(a5)
	lw	a5,-16(s0)
	lw	a5,0(a5)
	sgt	a5,a4,a5
	andi	a5,a5,0xff
	j	.L371
.L368:
	li	a5,-1
	j	.L371
.L367:
	li	a5,0
.L371:
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
	j	.L373
.L375:
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	lw	a5,-12(s0)
	addi	a5,a5,4
	sw	a5,-12(s0)
.L373:
	lw	a5,-20(s0)
	beq	a5,zero,.L374
	lw	a5,-12(s0)
	lw	a5,0(a5)
	lw	a4,-16(s0)
	bne	a4,a5,.L375
.L374:
	lw	a5,-20(s0)
	beq	a5,zero,.L376
	lw	a5,-12(s0)
	j	.L378
.L376:
	li	a5,0
.L378:
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
	j	.L380
.L382:
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	lw	a5,-12(s0)
	addi	a5,a5,4
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	addi	a5,a5,4
	sw	a5,-16(s0)
.L380:
	lw	a5,-20(s0)
	beq	a5,zero,.L381
	lw	a5,-12(s0)
	lw	a4,0(a5)
	lw	a5,-16(s0)
	lw	a5,0(a5)
	beq	a4,a5,.L382
.L381:
	lw	a5,-20(s0)
	beq	a5,zero,.L383
	lw	a5,-12(s0)
	lw	a4,0(a5)
	lw	a5,-16(s0)
	lw	a5,0(a5)
	blt	a4,a5,.L384
	lw	a5,-12(s0)
	lw	a4,0(a5)
	lw	a5,-16(s0)
	lw	a5,0(a5)
	sgt	a5,a4,a5
	andi	a5,a5,0xff
	j	.L387
.L384:
	li	a5,-1
	j	.L387
.L383:
	li	a5,0
.L387:
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
	j	.L389
.L390:
	lw	a4,-20(s0)
	addi	a5,a4,4
	sw	a5,-20(s0)
	lw	a5,-16(s0)
	addi	a3,a5,4
	sw	a3,-16(s0)
	lw	a4,0(a4)
	sw	a4,0(a5)
.L389:
	lw	a5,-24(s0)
	addi	a4,a5,-1
	sw	a4,-24(s0)
	bne	a5,zero,.L390
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
	bne	a4,a5,.L393
	lw	a5,-16(s0)
	j	.L394
.L393:
	lw	a4,-16(s0)
	lw	a5,-20(s0)
	sub	a4,a4,a5
	lw	a5,-24(s0)
	slli	a5,a5,2
	bgeu	a4,a5,.L399
	j	.L396
.L397:
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
.L396:
	lw	a5,-24(s0)
	addi	a4,a5,-1
	sw	a4,-24(s0)
	bne	a5,zero,.L397
	j	.L398
.L400:
	lw	a4,-20(s0)
	addi	a5,a4,4
	sw	a5,-20(s0)
	lw	a5,-16(s0)
	addi	a3,a5,4
	sw	a3,-16(s0)
	lw	a4,0(a4)
	sw	a4,0(a5)
.L399:
	lw	a5,-24(s0)
	addi	a4,a5,-1
	sw	a4,-24(s0)
	bne	a5,zero,.L400
.L398:
	lw	a5,-12(s0)
.L394:
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
	j	.L402
.L403:
	lw	a5,-16(s0)
	addi	a4,a5,4
	sw	a4,-16(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L402:
	lw	a5,-24(s0)
	addi	a4,a5,-1
	sw	a4,-24(s0)
	bne	a5,zero,.L403
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
	bgeu	a4,a5,.L406
	lw	a4,-12(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-12(s0)
	lw	a4,-16(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-16(s0)
	j	.L407
.L408:
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
.L407:
	lw	a5,-28(s0)
	bne	a5,zero,.L408
	j	.L412
.L406:
	lw	a4,-12(s0)
	lw	a5,-16(s0)
	beq	a4,a5,.L412
	j	.L410
.L411:
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
.L410:
	lw	a5,-28(s0)
	bne	a5,zero,.L411
.L412:
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
	blt	a5,zero,.L414
	sll	a5,a2,a5
	sw	a5,-24(s0)
	sw	zero,-28(s0)
	j	.L415
.L414:
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
.L415:
	lw	a5,-20(s0)
	neg	a5,a5
	andi	a5,a5,63
	addi	a5,a5,-32
	blt	a5,zero,.L416
	srl	t1,a3,a5
	li	t2,0
	j	.L417
.L416:
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
.L417:
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
	blt	a5,zero,.L420
	srl	a5,a3,a5
	sw	a5,-28(s0)
	sw	zero,-24(s0)
	j	.L421
.L420:
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
.L421:
	lw	a5,-20(s0)
	neg	a5,a5
	andi	a5,a5,63
	addi	a5,a5,-32
	blt	a5,zero,.L422
	sll	t2,a2,a5
	li	t1,0
	j	.L423
.L422:
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
.L423:
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
	j	.L448
.L451:
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	srl	a5,a4,a5
	andi	a5,a5,1
	beq	a5,zero,.L449
	lw	a5,-12(s0)
	addi	a5,a5,1
	j	.L450
.L449:
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L448:
	lw	a4,-12(s0)
	li	a5,31
	bleu	a4,a5,.L451
	li	a5,0
.L450:
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
	bne	a5,zero,.L453
	li	a5,0
	j	.L454
.L453:
	li	s1,1
	j	.L455
.L456:
	srai	a5,a5,1
	addi	s1,s1,1
.L455:
	andi	a4,a5,1
	beq	a4,zero,.L456
	mv	a5,s1
.L454:
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
	blt	a5,zero,.L458
	lui	a5,%hi(.LC2)
	lw	a1,%lo(.LC2)(a5)
	lw	a0,-12(s0)
	call	__gtsf2
	mv	a5,a0
	ble	a5,zero,.L463
.L458:
	li	a5,1
	j	.L462
.L463:
	li	a5,0
.L462:
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
	blt	a5,zero,.L465
	lui	a5,%hi(.LC4)
	lw	a2,%lo(.LC4)(a5)
	lw	a3,%lo(.LC4+4)(a5)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__gtdf2
	mv	a5,a0
	ble	a5,zero,.L470
.L465:
	li	a5,1
	j	.L469
.L470:
	li	a5,0
.L469:
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
	blt	a5,zero,.L472
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
	ble	a5,zero,.L477
.L472:
	li	a5,1
	j	.L476
.L477:
	li	a5,0
.L476:
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
	bne	a5,zero,.L480
	lw	a5,-16(s0)
	mv	a1,a5
	mv	a0,a5
	call	__addsf3
	mv	a5,a0
	mv	a1,a5
	lw	a0,-16(s0)
	call	__nesf2
	mv	a5,a0
	beq	a5,zero,.L480
	lw	a5,-20(s0)
	bge	a5,zero,.L482
	lui	a5,%hi(.LC7)
	lw	a5,%lo(.LC7)(a5)
	j	.L483
.L482:
	lui	a5,%hi(.LC8)
	lw	a5,%lo(.LC8)(a5)
.L483:
	sw	a5,-12(s0)
.L486:
	lw	a5,-20(s0)
	andi	a5,a5,1
	beq	a5,zero,.L484
	lw	a1,-12(s0)
	lw	a0,-16(s0)
	call	__mulsf3
	mv	a5,a0
	sw	a5,-16(s0)
.L484:
	lw	a5,-20(s0)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beq	a5,zero,.L489
	lw	a1,-12(s0)
	lw	a0,-12(s0)
	call	__mulsf3
	mv	a5,a0
	sw	a5,-12(s0)
	j	.L486
.L489:
	nop
.L480:
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
	bne	a5,zero,.L491
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
	beq	a5,zero,.L491
	lw	a5,-36(s0)
	bge	a5,zero,.L493
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	j	.L494
.L493:
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	lw	a5,%lo(.LC10+4)(a5)
.L494:
	sw	a4,0(s1)
	sw	a5,4(s1)
.L497:
	lw	a5,-36(s0)
	andi	a5,a5,1
	beq	a5,zero,.L495
	lw	a2,0(s1)
	lw	a3,4(s1)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
.L495:
	lw	a5,-36(s0)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	beq	a5,zero,.L500
	lw	a2,0(s1)
	lw	a3,4(s1)
	lw	a0,0(s1)
	lw	a1,4(s1)
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	j	.L497
.L500:
	nop
.L491:
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
	bne	a5,zero,.L502
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
	beq	a5,zero,.L502
	lw	a5,-64(s0)
	bge	a5,zero,.L504
	lui	a1,%hi(.LC11)
	lw	a2,%lo(.LC11)(a1)
	lw	a3,%lo(.LC11+4)(a1)
	lw	a4,%lo(.LC11+8)(a1)
	lw	a5,%lo(.LC11+12)(a1)
	j	.L505
.L504:
	lui	a1,%hi(.LC12)
	lw	a2,%lo(.LC12)(a1)
	lw	a3,%lo(.LC12+4)(a1)
	lw	a4,%lo(.LC12+8)(a1)
	lw	a5,%lo(.LC12+12)(a1)
.L505:
	sw	a2,0(s1)
	sw	a3,4(s1)
	sw	a4,8(s1)
	sw	a5,12(s1)
.L508:
	lw	a5,-64(s0)
	andi	a5,a5,1
	beq	a5,zero,.L506
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
.L506:
	lw	a5,-64(s0)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,-64(s0)
	lw	a5,-64(s0)
	beq	a5,zero,.L511
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
	j	.L508
.L511:
	nop
.L502:
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
	j	.L513
.L514:
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
.L513:
	lw	a5,-28(s0)
	bne	a5,zero,.L514
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
	j	.L517
.L519:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L517:
	lw	a5,-24(s0)
	beq	a5,zero,.L518
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	lw	a5,-12(s0)
	sb	a4,0(a5)
	lw	a5,-12(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L519
.L518:
	lw	a5,-24(s0)
	bne	a5,zero,.L520
	lw	a5,-12(s0)
	sb	zero,0(a5)
.L520:
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
	j	.L523
.L528:
	nop
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L523:
	lw	a4,-12(s0)
	lw	a5,-20(s0)
	bgeu	a4,a5,.L524
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L528
.L524:
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
	j	.L530
.L534:
	lw	a5,-20(s0)
	sw	a5,-12(s0)
	j	.L531
.L533:
	lw	a5,-12(s0)
	addi	a4,a5,1
	sw	a4,-12(s0)
	lbu	a4,0(a5)
	lw	a5,-16(s0)
	lbu	a5,0(a5)
	bne	a4,a5,.L531
	lw	a5,-16(s0)
	j	.L532
.L531:
	lw	a5,-12(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L533
	lw	a5,-16(s0)
	addi	a5,a5,1
	sw	a5,-16(s0)
.L530:
	lw	a5,-16(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L534
	li	a5,0
.L532:
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
.L537:
	lbu	a4,0(a5)
	mv	a3,a4
	lw	a4,-16(s0)
	bne	a4,a3,.L536
	sw	a5,-12(s0)
.L536:
	mv	a4,a5
	addi	a5,a4,1
	lbu	a4,0(a4)
	bne	a4,zero,.L537
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
	bne	a5,zero,.L542
	lw	a5,-20(s0)
	j	.L541
.L544:
	lw	a2,-16(s0)
	lw	a1,-24(s0)
	lw	a0,-12(s0)
	call	strncmp
	mv	a5,a0
	bne	a5,zero,.L543
	lw	a5,-12(s0)
	j	.L541
.L543:
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L542:
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	mv	a1,a5
	lw	a0,-12(s0)
	call	strchr
	sw	a0,-12(s0)
	lw	a5,-12(s0)
	bne	a5,zero,.L544
	li	a5,0
.L541:
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
	bge	a5,zero,.L546
	li	a2,0
	li	a3,0
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__gtdf2
	mv	a5,a0
	bgt	a5,zero,.L548
.L546:
	li	a2,0
	li	a3,0
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__gtdf2
	mv	a5,a0
	ble	a5,zero,.L549
	li	a2,0
	li	a3,0
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__ltdf2
	mv	a5,a0
	bge	a5,zero,.L549
.L548:
	lw	a5,-16(s0)
	sw	a5,-32(s0)
	lw	a4,-12(s0)
	li	a5,-2147483648
	xor	a5,a4,a5
	sw	a5,-28(s0)
	j	.L552
.L549:
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	sw	a4,-32(s0)
	sw	a5,-28(s0)
.L552:
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
	bne	a5,zero,.L556
	lw	a5,-20(s0)
	j	.L557
.L556:
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	beq	a5,zero,.L558
	li	a5,0
	j	.L557
.L558:
	lw	a5,-20(s0)
	sw	a5,-12(s0)
	j	.L559
.L561:
	lw	a5,-12(s0)
	lbu	a4,0(a5)
	lw	a5,-28(s0)
	lbu	a5,0(a5)
	bne	a4,a5,.L560
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
	bne	a5,zero,.L560
	lw	a5,-12(s0)
	j	.L557
.L560:
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L559:
	lw	a4,-12(s0)
	lw	a5,-16(s0)
	bleu	a4,a5,.L561
	li	a5,0
.L557:
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
	bge	a5,zero,.L565
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
.L565:
	lui	a5,%hi(.LC13)
	lw	a2,%lo(.LC13)(a5)
	lw	a3,%lo(.LC13+4)(a5)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__gedf2
	mv	a5,a0
	blt	a5,zero,.L582
	j	.L569
.L570:
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
.L569:
	lui	a5,%hi(.LC13)
	lw	a2,%lo(.LC13)(a5)
	lw	a3,%lo(.LC13+4)(a5)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__gedf2
	mv	a5,a0
	bge	a5,zero,.L570
	j	.L571
.L582:
	lui	a5,%hi(.LC9)
	lw	a2,%lo(.LC9)(a5)
	lw	a3,%lo(.LC9+4)(a5)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__ltdf2
	mv	a5,a0
	bge	a5,zero,.L571
	li	a2,0
	li	a3,0
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__nedf2
	mv	a5,a0
	beq	a5,zero,.L571
	j	.L574
.L575:
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
.L574:
	lui	a5,%hi(.LC9)
	lw	a2,%lo(.LC9)(a5)
	lw	a3,%lo(.LC9+4)(a5)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__ltdf2
	mv	a5,a0
	blt	a5,zero,.L575
.L571:
	lw	a5,-28(s0)
	lw	a4,-16(s0)
	sw	a4,0(a5)
	lw	a5,-12(s0)
	beq	a5,zero,.L576
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
.L576:
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
	j	.L584
.L587:
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
	beq	a5,zero,.L585
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
.L585:
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
.L584:
	lw	a5,0(a3)
	lw	a4,4(a3)
	or	a5,a5,a4
	bne	a5,zero,.L587
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
	j	.L590
.L592:
	lw	a5,-24(s0)
	slli	a5,a5,1
	sw	a5,-24(s0)
	lw	a5,-12(s0)
	slli	a5,a5,1
	sw	a5,-12(s0)
.L590:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bgeu	a4,a5,.L593
	lw	a5,-12(s0)
	beq	a5,zero,.L593
	lw	a5,-24(s0)
	bge	a5,zero,.L592
	j	.L593
.L595:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L594
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	or	a5,a4,a5
	sw	a5,-16(s0)
.L594:
	lw	a5,-12(s0)
	srli	a5,a5,1
	sw	a5,-12(s0)
	lw	a5,-24(s0)
	srli	a5,a5,1
	sw	a5,-24(s0)
.L593:
	lw	a5,-12(s0)
	bne	a5,zero,.L595
	lw	a5,-28(s0)
	beq	a5,zero,.L596
	lw	a5,-20(s0)
	j	.L597
.L596:
	lw	a5,-16(s0)
.L597:
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
	bne	a5,zero,.L599
	li	a5,7
	j	.L600
.L599:
	lbu	a5,-13(s0)
	slli	a5,a5,8
	mv	a0,a5
	call	__clzsi2
	mv	a5,a0
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	addi	a5,a5,-1
.L600:
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
	bge	a3,zero,.L602
	lw	a3,-20(s0)
	not	a4,a3
	lw	a3,-16(s0)
	not	a5,a3
	sw	a4,-20(s0)
	sw	a5,-16(s0)
.L602:
	lw	a5,-20(s0)
	lw	a4,-16(s0)
	or	a5,a5,a4
	bne	a5,zero,.L604
	li	a5,63
	j	.L605
.L604:
	lw	a4,-20(s0)
	lw	a5,-16(s0)
	mv	a0,a4
	mv	a1,a5
	call	__clzdi2
	mv	a5,a0
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	addi	a5,a5,-1
.L605:
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
	j	.L607
.L609:
	lw	a5,-16(s0)
	andi	a5,a5,1
	beq	a5,zero,.L608
	lw	a4,-12(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-12(s0)
.L608:
	lw	a5,-16(s0)
	srli	a5,a5,1
	sw	a5,-16(s0)
	lw	a5,-20(s0)
	slli	a5,a5,1
	sw	a5,-20(s0)
.L607:
	lw	a5,-16(s0)
	bne	a5,zero,.L609
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
	bltu	a4,a5,.L612
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	lw	a4,-24(s0)
	bleu	a4,a5,.L619
.L612:
	sw	zero,-12(s0)
	j	.L614
.L615:
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
.L614:
	lw	a4,-12(s0)
	lw	a5,-20(s0)
	bltu	a4,a5,.L615
	j	.L616
.L617:
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
.L616:
	lw	a4,-40(s0)
	lw	a5,-16(s0)
	bgtu	a4,a5,.L617
	j	.L618
.L620:
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	add	a4,a4,a5
	lw	a3,-24(s0)
	lw	a5,-40(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L619:
	lw	a5,-40(s0)
	addi	a4,a5,-1
	sw	a4,-40(s0)
	bne	a5,zero,.L620
	nop
.L618:
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
	bltu	a4,a5,.L622
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	bleu	a4,a5,.L628
.L622:
	sw	zero,-12(s0)
	j	.L624
.L625:
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
.L624:
	lw	a4,-12(s0)
	lw	a5,-16(s0)
	bltu	a4,a5,.L625
	lw	a5,-36(s0)
	andi	a5,a5,1
	beq	a5,zero,.L627
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
	j	.L627
.L629:
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	add	a4,a4,a5
	lw	a3,-20(s0)
	lw	a5,-36(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L628:
	lw	a5,-36(s0)
	addi	a4,a5,-1
	sw	a4,-36(s0)
	bne	a5,zero,.L629
	nop
.L627:
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
	bltu	a4,a5,.L631
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	lw	a4,-24(s0)
	bleu	a4,a5,.L638
.L631:
	sw	zero,-12(s0)
	j	.L633
.L634:
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
.L633:
	lw	a4,-12(s0)
	lw	a5,-20(s0)
	bltu	a4,a5,.L634
	j	.L635
.L636:
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
.L635:
	lw	a4,-40(s0)
	lw	a5,-16(s0)
	bgtu	a4,a5,.L636
	j	.L637
.L639:
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	add	a4,a4,a5
	lw	a3,-24(s0)
	lw	a5,-40(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L638:
	lw	a5,-40(s0)
	addi	a4,a5,-1
	sw	a4,-40(s0)
	bne	a5,zero,.L639
	nop
.L637:
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
	j	.L653
.L656:
	lhu	a4,-14(s0)
	li	a3,15
	lw	a5,-12(s0)
	sub	a5,a3,a5
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L658
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L653:
	lw	a4,-12(s0)
	li	a5,15
	ble	a4,a5,.L656
	j	.L655
.L658:
	nop
.L655:
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
	j	.L660
.L663:
	lhu	a4,-14(s0)
	lw	a5,-12(s0)
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L665
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L660:
	lw	a4,-12(s0)
	li	a5,15
	ble	a4,a5,.L663
	j	.L662
.L665:
	nop
.L662:
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
	blt	a5,zero,.L671
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
	j	.L669
.L671:
	lw	a0,-12(s0)
	call	__fixsfsi
	mv	a5,a0
.L669:
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
	j	.L673
.L675:
	lhu	a4,-18(s0)
	lw	a5,-12(s0)
	sra	a5,a4,a5
	andi	a5,a5,1
	beq	a5,zero,.L674
	lw	a5,-16(s0)
	addi	a5,a5,1
	sw	a5,-16(s0)
.L674:
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L673:
	lw	a4,-12(s0)
	li	a5,15
	ble	a4,a5,.L675
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
	j	.L678
.L680:
	lhu	a4,-18(s0)
	lw	a5,-12(s0)
	sra	a5,a4,a5
	andi	a5,a5,1
	beq	a5,zero,.L679
	lw	a5,-16(s0)
	addi	a5,a5,1
	sw	a5,-16(s0)
.L679:
	lw	a5,-12(s0)
	addi	a5,a5,1
	sw	a5,-12(s0)
.L678:
	lw	a4,-12(s0)
	li	a5,15
	ble	a4,a5,.L680
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
	j	.L683
.L685:
	lw	a5,-16(s0)
	andi	a5,a5,1
	beq	a5,zero,.L684
	lw	a4,-12(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-12(s0)
.L684:
	lw	a5,-16(s0)
	srli	a5,a5,1
	sw	a5,-16(s0)
	lw	a5,-20(s0)
	slli	a5,a5,1
	sw	a5,-20(s0)
.L683:
	lw	a5,-16(s0)
	bne	a5,zero,.L685
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
	bne	a5,zero,.L690
	li	a5,0
	j	.L689
.L692:
	lw	a5,-20(s0)
	andi	a5,a5,1
	beq	a5,zero,.L691
	lw	a4,-12(s0)
	lw	a5,-16(s0)
	add	a5,a4,a5
	sw	a5,-12(s0)
.L691:
	lw	a5,-16(s0)
	slli	a5,a5,1
	sw	a5,-16(s0)
	lw	a5,-20(s0)
	srli	a5,a5,1
	sw	a5,-20(s0)
.L690:
	lw	a5,-20(s0)
	bne	a5,zero,.L692
	lw	a5,-12(s0)
.L689:
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
	j	.L694
.L696:
	lw	a5,-24(s0)
	slli	a5,a5,1
	sw	a5,-24(s0)
	lw	a5,-12(s0)
	slli	a5,a5,1
	sw	a5,-12(s0)
.L694:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bgeu	a4,a5,.L697
	lw	a5,-12(s0)
	beq	a5,zero,.L697
	lw	a5,-24(s0)
	bge	a5,zero,.L696
	j	.L697
.L699:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L698
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	or	a5,a4,a5
	sw	a5,-16(s0)
.L698:
	lw	a5,-12(s0)
	srli	a5,a5,1
	sw	a5,-12(s0)
	lw	a5,-24(s0)
	srli	a5,a5,1
	sw	a5,-24(s0)
.L697:
	lw	a5,-12(s0)
	bne	a5,zero,.L699
	lw	a5,-28(s0)
	beq	a5,zero,.L700
	lw	a5,-20(s0)
	j	.L701
.L700:
	lw	a5,-16(s0)
.L701:
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
	bge	a5,zero,.L710
	li	a5,-1
	j	.L705
.L710:
	lw	a1,-16(s0)
	lw	a0,-12(s0)
	call	__gtsf2
	mv	a5,a0
	ble	a5,zero,.L711
	li	a5,1
	j	.L705
.L711:
	li	a5,0
.L705:
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
	bge	a5,zero,.L720
	li	a5,-1
	j	.L715
.L720:
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__gtdf2
	mv	a5,a0
	ble	a5,zero,.L721
	li	a5,1
	j	.L715
.L721:
	li	a5,0
.L715:
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
	bge	a5,zero,.L727
	lw	a5,-28(s0)
	neg	a5,a5
	sw	a5,-28(s0)
	li	a5,1
	sw	a5,-16(s0)
.L727:
	sb	zero,-9(s0)
	j	.L728
.L731:
	lw	a5,-28(s0)
	andi	a5,a5,1
	beq	a5,zero,.L729
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L729:
	lw	a5,-24(s0)
	slli	a5,a5,1
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	srai	a5,a5,1
	sw	a5,-28(s0)
	lbu	a5,-9(s0)
	addi	a5,a5,1
	sb	a5,-9(s0)
.L728:
	lw	a5,-28(s0)
	beq	a5,zero,.L730
	lbu	a4,-9(s0)
	li	a5,31
	bleu	a4,a5,.L731
.L730:
	lw	a5,-16(s0)
	beq	a5,zero,.L732
	lw	a5,-20(s0)
	neg	a5,a5
	j	.L734
.L732:
	lw	a5,-20(s0)
.L734:
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
	bge	a5,zero,.L736
	lw	a5,-20(s0)
	neg	a5,a5
	sw	a5,-20(s0)
	lw	a5,-12(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-12(s0)
.L736:
	lw	a5,-24(s0)
	bge	a5,zero,.L737
	lw	a5,-24(s0)
	neg	a5,a5
	sw	a5,-24(s0)
	lw	a5,-12(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-12(s0)
.L737:
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	__udivmodsi4
	mv	a5,a0
	sw	a5,-16(s0)
	lw	a5,-12(s0)
	beq	a5,zero,.L738
	lw	a5,-16(s0)
	neg	a5,a5
	sw	a5,-16(s0)
.L738:
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
	bge	a5,zero,.L741
	lw	a5,-20(s0)
	neg	a5,a5
	sw	a5,-20(s0)
	li	a5,1
	sw	a5,-12(s0)
.L741:
	lw	a5,-24(s0)
	bge	a5,zero,.L742
	lw	a5,-24(s0)
	neg	a5,a5
	sw	a5,-24(s0)
.L742:
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	__udivmodsi4
	mv	a5,a0
	sw	a5,-16(s0)
	lw	a5,-12(s0)
	beq	a5,zero,.L743
	lw	a5,-16(s0)
	neg	a5,a5
	sw	a5,-16(s0)
.L743:
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
	j	.L746
.L748:
	lhu	a5,-16(s0)
	slli	a5,a5,1
	sh	a5,-16(s0)
	lhu	a5,-10(s0)
	slli	a5,a5,1
	sh	a5,-10(s0)
.L746:
	lhu	a4,-16(s0)
	lhu	a5,-14(s0)
	bgeu	a4,a5,.L749
	lhu	a5,-10(s0)
	beq	a5,zero,.L749
	lh	a5,-16(s0)
	bge	a5,zero,.L748
	j	.L749
.L751:
	lhu	a4,-14(s0)
	lhu	a5,-16(s0)
	bltu	a4,a5,.L750
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
.L750:
	lhu	a5,-10(s0)
	srli	a5,a5,1
	sh	a5,-10(s0)
	lhu	a5,-16(s0)
	srli	a5,a5,1
	sh	a5,-16(s0)
.L749:
	lhu	a5,-10(s0)
	bne	a5,zero,.L751
	lw	a5,-20(s0)
	beq	a5,zero,.L752
	lhu	a5,-14(s0)
	j	.L753
.L752:
	lhu	a5,-12(s0)
.L753:
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
	j	.L755
.L757:
	lw	a5,-24(s0)
	slli	a5,a5,1
	sw	a5,-24(s0)
	lw	a5,-12(s0)
	slli	a5,a5,1
	sw	a5,-12(s0)
.L755:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bgeu	a4,a5,.L758
	lw	a5,-12(s0)
	beq	a5,zero,.L758
	lw	a5,-24(s0)
	bge	a5,zero,.L757
	j	.L758
.L760:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L759
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	or	a5,a4,a5
	sw	a5,-16(s0)
.L759:
	lw	a5,-12(s0)
	srli	a5,a5,1
	sw	a5,-12(s0)
	lw	a5,-24(s0)
	srli	a5,a5,1
	sw	a5,-24(s0)
.L758:
	lw	a5,-12(s0)
	bne	a5,zero,.L760
	lw	a5,-28(s0)
	beq	a5,zero,.L761
	lw	a5,-20(s0)
	j	.L762
.L761:
	lw	a5,-16(s0)
.L762:
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
	beq	a4,zero,.L764
	sw	zero,0(a5)
	lw	a3,8(a5)
	lw	a2,-44(s0)
	lw	a4,-12(s0)
	sub	a4,a2,a4
	sll	a4,a3,a4
	sw	a4,4(a5)
	j	.L765
.L764:
	lw	a4,-44(s0)
	bne	a4,zero,.L766
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	j	.L768
.L766:
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
.L765:
	lw	a4,0(a5)
	lw	a5,4(a5)
.L768:
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
	beq	a4,zero,.L770
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
	j	.L771
.L770:
	lw	a4,-44(s0)
	bne	a4,zero,.L772
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	j	.L774
.L772:
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
.L771:
	lw	a4,0(a5)
	lw	a5,4(a5)
.L774:
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
	bgeu	a4,a5,.L780
	li	a5,16
	j	.L781
.L780:
	li	a5,0
.L781:
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
	bne	a5,zero,.L782
	li	a5,8
	j	.L783
.L782:
	li	a5,0
.L783:
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
	bne	a5,zero,.L784
	li	a5,4
	j	.L785
.L784:
	li	a5,0
.L785:
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
	bne	a5,zero,.L786
	li	a5,2
	j	.L787
.L786:
	li	a5,0
.L787:
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
	bge	a3,a4,.L790
	li	a5,0
	j	.L795
.L790:
	lw	a3,12(a5)
	lw	a4,4(a5)
	ble	a3,a4,.L792
	li	a5,2
	j	.L795
.L792:
	lw	a3,8(a5)
	lw	a4,0(a5)
	bgeu	a3,a4,.L793
	li	a5,0
	j	.L795
.L793:
	lw	a4,8(a5)
	lw	a5,0(a5)
	bleu	a4,a5,.L794
	li	a5,2
	j	.L795
.L794:
	li	a5,1
.L795:
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
	bne	a5,zero,.L799
	li	a5,16
	j	.L800
.L799:
	li	a5,0
.L800:
	sw	a5,-16(s0)
	lw	a5,-16(s0)
	lw	a4,-12(s0)
	srl	a5,a4,a5
	sw	a5,-12(s0)
	lw	a5,-16(s0)
	sw	a5,-20(s0)
	lw	a5,-12(s0)
	andi	a5,a5,255
	bne	a5,zero,.L801
	li	a5,8
	j	.L802
.L801:
	li	a5,0
.L802:
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
	bne	a5,zero,.L803
	li	a5,4
	j	.L804
.L803:
	li	a5,0
.L804:
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
	bne	a5,zero,.L805
	li	a5,2
	j	.L806
.L805:
	li	a5,0
.L806:
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
	beq	a4,zero,.L809
	sw	zero,4(a5)
	lw	a3,12(a5)
	lw	a2,-44(s0)
	lw	a4,-12(s0)
	sub	a4,a2,a4
	srl	a4,a3,a4
	sw	a4,0(a5)
	j	.L810
.L809:
	lw	a4,-44(s0)
	bne	a4,zero,.L811
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	j	.L813
.L811:
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
.L810:
	lw	a4,0(a5)
	lw	a5,4(a5)
.L813:
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
.L832:
	lw	a5,-40(s0)
	andi	a5,a5,1
	beq	a5,zero,.L829
	lw	a2,-36(s0)
	lw	a3,-32(s0)
	lw	a0,0(s1)
	lw	a1,4(s1)
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
.L829:
	lw	a5,-40(s0)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	beq	a5,zero,.L837
	lw	a2,-36(s0)
	lw	a3,-32(s0)
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	j	.L832
.L837:
	nop
	lw	a5,-16(s0)
	beq	a5,zero,.L833
	lui	a5,%hi(.LC13)
	lw	a2,0(s1)
	lw	a3,4(s1)
	lw	a0,%lo(.LC13)(a5)
	lw	a1,%lo(.LC13+4)(a5)
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	j	.L835
.L833:
	lw	a4,0(s1)
	lw	a5,4(s1)
.L835:
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
.L842:
	lw	a5,-24(s0)
	andi	a5,a5,1
	beq	a5,zero,.L839
	lw	a1,-20(s0)
	lw	a0,-12(s0)
	call	__mulsf3
	mv	a5,a0
	sw	a5,-12(s0)
.L839:
	lw	a5,-24(s0)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	beq	a5,zero,.L847
	lw	a1,-20(s0)
	lw	a0,-20(s0)
	call	__mulsf3
	mv	a5,a0
	sw	a5,-20(s0)
	j	.L842
.L847:
	nop
	lw	a5,-16(s0)
	beq	a5,zero,.L843
	lui	a5,%hi(.LC15)
	lw	a1,-12(s0)
	lw	a0,%lo(.LC15)(a5)
	call	__divsf3
	mv	a5,a0
	j	.L845
.L843:
	lw	a5,-12(s0)
.L845:
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
	bgeu	a3,a4,.L849
	li	a5,0
	j	.L854
.L849:
	lw	a3,12(a5)
	lw	a4,4(a5)
	bleu	a3,a4,.L851
	li	a5,2
	j	.L854
.L851:
	lw	a3,8(a5)
	lw	a4,0(a5)
	bgeu	a3,a4,.L852
	li	a5,0
	j	.L854
.L852:
	lw	a4,8(a5)
	lw	a5,0(a5)
	bleu	a4,a5,.L853
	li	a5,2
	j	.L854
.L853:
	li	a5,1
.L854:
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
	.section	.rodata
	.align	3
.LC0:
	.word	1284865837
	.word	1481765933
	.align	2
.LC1:
	.word	-8388609
	.align	2
.LC2:
	.word	2139095039
	.align	3
.LC3:
	.word	-1
	.word	-1048577
	.align	3
.LC4:
	.word	-1
	.word	2146435071
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
	.align	2
.LC7:
	.word	1056964608
	.align	2
.LC8:
	.word	1073741824
	.align	3
.LC9:
	.word	0
	.word	1071644672
	.align	3
.LC10:
	.word	0
	.word	1073741824
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
	.align	3
.LC13:
	.word	0
	.word	1072693248
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
