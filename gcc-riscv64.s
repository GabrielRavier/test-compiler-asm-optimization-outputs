	.file	"mini-libc.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	make_ti
	.type	make_ti, @function
make_ti:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a5,-48(s0)
	sd	a5,-32(s0)
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	make_ti, .-make_ti
	.align	1
	.globl	make_tu
	.type	make_tu, @function
make_tu:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a5,-48(s0)
	sd	a5,-32(s0)
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	make_tu, .-make_tu
	.align	1
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a5,-48(s0)
	sd	a5,-32(s0)
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	bgeu	a4,a5,.L6
	ld	a4,-32(s0)
	ld	a5,-56(s0)
	add	a5,a4,a5
	sd	a5,-32(s0)
	ld	a4,-24(s0)
	ld	a5,-56(s0)
	add	a5,a4,a5
	sd	a5,-24(s0)
	j	.L7
.L8:
	ld	a5,-32(s0)
	addi	a5,a5,-1
	sd	a5,-32(s0)
	ld	a5,-24(s0)
	addi	a5,a5,-1
	sd	a5,-24(s0)
	ld	a5,-32(s0)
	lbu	a4,0(a5)
	ld	a5,-24(s0)
	sb	a4,0(a5)
	ld	a5,-56(s0)
	addi	a5,a5,-1
	sd	a5,-56(s0)
.L7:
	ld	a5,-56(s0)
	bne	a5,zero,.L8
	j	.L9
.L6:
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	beq	a4,a5,.L9
	j	.L10
.L11:
	ld	a4,-32(s0)
	addi	a5,a4,1
	sd	a5,-32(s0)
	ld	a5,-24(s0)
	addi	a3,a5,1
	sd	a3,-24(s0)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	ld	a5,-56(s0)
	addi	a5,a5,-1
	sd	a5,-56(s0)
.L10:
	ld	a5,-56(s0)
	bne	a5,zero,.L11
.L9:
	ld	a5,-40(s0)
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	memmove, .-memmove
	.align	1
	.globl	memccpy
	.type	memccpy, @function
memccpy:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	sd	a3,-64(s0)
	sw	a5,-52(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a5,-48(s0)
	sd	a5,-32(s0)
	lw	a5,-52(s0)
	andi	a5,a5,0xff
	sw	a5,-52(s0)
	j	.L14
.L16:
	ld	a5,-64(s0)
	addi	a5,a5,-1
	sd	a5,-64(s0)
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L14:
	ld	a5,-64(s0)
	beq	a5,zero,.L15
	ld	a5,-32(s0)
	lbu	a4,0(a5)
	ld	a5,-24(s0)
	sb	a4,0(a5)
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	lw	a4,-52(s0)
	sext.w	a4,a4
	bne	a4,a5,.L16
.L15:
	ld	a5,-64(s0)
	beq	a5,zero,.L17
	ld	a5,-24(s0)
	addi	a5,a5,1
	j	.L18
.L17:
	li	a5,0
.L18:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	memccpy, .-memccpy
	.align	1
	.globl	memchr
	.type	memchr, @function
memchr:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sd	a2,-56(s0)
	sw	a5,-44(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	lw	a5,-44(s0)
	andi	a5,a5,0xff
	sw	a5,-44(s0)
	j	.L20
.L22:
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
	ld	a5,-56(s0)
	addi	a5,a5,-1
	sd	a5,-56(s0)
.L20:
	ld	a5,-56(s0)
	beq	a5,zero,.L21
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	lw	a4,-44(s0)
	sext.w	a4,a4
	bne	a4,a5,.L22
.L21:
	ld	a5,-56(s0)
	beq	a5,zero,.L23
	ld	a5,-24(s0)
	j	.L25
.L23:
	li	a5,0
.L25:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	memchr, .-memchr
	.align	1
	.globl	memcmp
	.type	memcmp, @function
memcmp:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a5,-48(s0)
	sd	a5,-32(s0)
	j	.L27
.L29:
	ld	a5,-56(s0)
	addi	a5,a5,-1
	sd	a5,-56(s0)
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
.L27:
	ld	a5,-56(s0)
	beq	a5,zero,.L28
	ld	a5,-24(s0)
	lbu	a4,0(a5)
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	beq	a4,a5,.L29
.L28:
	ld	a5,-56(s0)
	beq	a5,zero,.L30
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	sext.w	a4,a5
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	subw	a5,a4,a5
	sext.w	a5,a5
	j	.L31
.L30:
	li	a5,0
.L31:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	memcmp, .-memcmp
	.align	1
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a5,-48(s0)
	sd	a5,-32(s0)
	j	.L34
.L35:
	ld	a4,-32(s0)
	addi	a5,a4,1
	sd	a5,-32(s0)
	ld	a5,-24(s0)
	addi	a3,a5,1
	sd	a3,-24(s0)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	ld	a5,-56(s0)
	addi	a5,a5,-1
	sd	a5,-56(s0)
.L34:
	ld	a5,-56(s0)
	bne	a5,zero,.L35
	ld	a5,-40(s0)
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	memcpy, .-memcpy
	.align	1
	.globl	memrchr
	.type	memrchr, @function
memrchr:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sd	a2,-56(s0)
	sw	a5,-44(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	lw	a5,-44(s0)
	andi	a5,a5,0xff
	sw	a5,-44(s0)
	j	.L38
.L40:
	ld	a4,-24(s0)
	ld	a5,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	lw	a4,-44(s0)
	sext.w	a4,a4
	bne	a4,a5,.L38
	ld	a4,-24(s0)
	ld	a5,-56(s0)
	add	a5,a4,a5
	j	.L39
.L38:
	ld	a5,-56(s0)
	addi	a4,a5,-1
	sd	a4,-56(s0)
	bne	a5,zero,.L40
	li	a5,0
.L39:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	memrchr, .-memrchr
	.align	1
	.globl	memset
	.type	memset, @function
memset:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sd	a2,-56(s0)
	sw	a5,-44(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	j	.L42
.L43:
	lw	a5,-44(s0)
	andi	a4,a5,0xff
	ld	a5,-24(s0)
	sb	a4,0(a5)
	ld	a5,-56(s0)
	addi	a5,a5,-1
	sd	a5,-56(s0)
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L42:
	ld	a5,-56(s0)
	bne	a5,zero,.L43
	ld	a5,-40(s0)
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	memset, .-memset
	.align	1
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB9:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	j	.L46
.L47:
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L46:
	ld	a5,-32(s0)
	lbu	a4,0(a5)
	ld	a5,-24(s0)
	sb	a4,0(a5)
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L47
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	stpcpy, .-stpcpy
	.align	1
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB10:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	andi	a5,a5,0xff
	sw	a5,-28(s0)
	j	.L50
.L52:
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L50:
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L51
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	lw	a4,-28(s0)
	sext.w	a4,a4
	bne	a4,a5,.L52
.L51:
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	strchrnul, .-strchrnul
	.align	1
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB11:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a4,-20(s0)
.L57:
	lbu	a4,0(a5)
	sext.w	a4,a4
	lw	a3,-20(s0)
	sext.w	a3,a3
	bne	a3,a4,.L55
	j	.L56
.L55:
	mv	a4,a5
	addi	a5,a4,1
	lbu	a4,0(a4)
	bne	a4,zero,.L57
	li	a5,0
.L56:
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	strchr, .-strchr
	.align	1
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	j	.L59
.L61:
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
.L59:
	ld	a5,-24(s0)
	lbu	a4,0(a5)
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	bne	a4,a5,.L60
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L61
.L60:
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	sext.w	a4,a5
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	strcmp, .-strcmp
	.align	1
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB13:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	j	.L64
.L65:
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L64:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L65
	ld	a4,-40(s0)
	ld	a5,-24(s0)
	sub	a5,a4,a5
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.align	1
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB14:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a5,-48(s0)
	sd	a5,-32(s0)
	ld	a5,-56(s0)
	addi	a4,a5,-1
	sd	a4,-56(s0)
	bne	a5,zero,.L70
	li	a5,0
	j	.L69
.L72:
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
	ld	a5,-56(s0)
	addi	a5,a5,-1
	sd	a5,-56(s0)
.L70:
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L71
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L71
	ld	a5,-56(s0)
	beq	a5,zero,.L71
	ld	a5,-24(s0)
	lbu	a4,0(a5)
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	beq	a4,a5,.L72
.L71:
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	sext.w	a4,a5
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	subw	a5,a4,a5
	sext.w	a5,a5
.L69:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.align	1
	.globl	swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a5,-48(s0)
	sd	a5,-32(s0)
	j	.L74
.L75:
	ld	a5,-24(s0)
	addi	a5,a5,1
	lbu	a4,0(a5)
	ld	a5,-32(s0)
	sb	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,1
	ld	a4,-24(s0)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,2
	sd	a5,-32(s0)
	ld	a5,-24(s0)
	addi	a5,a5,2
	sd	a5,-24(s0)
	ld	a5,-56(s0)
	addi	a5,a5,-2
	sd	a5,-56(s0)
.L74:
	ld	a4,-56(s0)
	li	a5,1
	bgt	a4,a5,.L75
	nop
	nop
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	swab, .-swab
	.align	1
	.globl	isalpha
	.type	isalpha, @function
isalpha:
.LFB16:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	ori	a5,a5,32
	sext.w	a5,a5
	addiw	a5,a5,-97
	sext.w	a4,a5
	li	a5,25
	sgtu	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	isalpha, .-isalpha
	.align	1
	.globl	isascii
	.type	isascii, @function
isascii:
.LFB17:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	li	a5,127
	sgtu	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	isascii, .-isascii
	.align	1
	.globl	isblank
	.type	isblank, @function
isblank:
.LFB18:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,32
	beq	a4,a5,.L81
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,9
	bne	a4,a5,.L82
.L81:
	li	a5,1
	j	.L83
.L82:
	li	a5,0
.L83:
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	isblank, .-isblank
	.align	1
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB19:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	li	a5,31
	bleu	a4,a5,.L86
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,127
	bne	a4,a5,.L87
.L86:
	li	a5,1
	j	.L88
.L87:
	li	a5,0
.L88:
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	iscntrl, .-iscntrl
	.align	1
	.globl	isdigit
	.type	isdigit, @function
isdigit:
.LFB20:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,-48
	sext.w	a4,a5
	li	a5,9
	sgtu	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	isdigit, .-isdigit
	.align	1
	.globl	isgraph
	.type	isgraph, @function
isgraph:
.LFB21:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,-33
	sext.w	a4,a5
	li	a5,93
	sgtu	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	isgraph, .-isgraph
	.align	1
	.globl	islower
	.type	islower, @function
islower:
.LFB22:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,-97
	sext.w	a4,a5
	li	a5,25
	sgtu	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	islower, .-islower
	.align	1
	.globl	isprint
	.type	isprint, @function
isprint:
.LFB23:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,-32
	sext.w	a4,a5
	li	a5,94
	sgtu	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	isprint, .-isprint
	.align	1
	.globl	isspace
	.type	isspace, @function
isspace:
.LFB24:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,32
	beq	a4,a5,.L99
	lw	a5,-20(s0)
	addiw	a5,a5,-9
	sext.w	a4,a5
	li	a5,4
	bgtu	a4,a5,.L100
.L99:
	li	a5,1
	j	.L101
.L100:
	li	a5,0
.L101:
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	isspace, .-isspace
	.align	1
	.globl	isupper
	.type	isupper, @function
isupper:
.LFB25:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,-65
	sext.w	a4,a5
	li	a5,25
	sgtu	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	isupper, .-isupper
	.align	1
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB26:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,31
	bleu	a4,a5,.L106
	lw	a5,-20(s0)
	addiw	a5,a5,-127
	sext.w	a4,a5
	li	a5,32
	bleu	a4,a5,.L106
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,-8192
	addiw	a5,a5,-40
	addw	a5,a4,a5
	sext.w	a4,a5
	li	a5,1
	bleu	a4,a5,.L106
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,-65536
	addiw	a5,a5,7
	addw	a5,a4,a5
	sext.w	a4,a5
	li	a5,2
	bgtu	a4,a5,.L107
.L106:
	li	a5,1
	j	.L108
.L107:
	li	a5,0
.L108:
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	iswcntrl, .-iswcntrl
	.align	1
	.globl	iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB27:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,-48
	sext.w	a4,a5
	li	a5,9
	sgtu	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	iswdigit, .-iswdigit
	.align	1
	.globl	iswprint
	.type	iswprint, @function
iswprint:
.LFB28:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,254
	bgtu	a4,a5,.L113
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	andi	a5,a5,127
	sext.w	a4,a5
	li	a5,32
	sgtu	a5,a4,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L114
.L113:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,8192
	addi	a5,a5,39
	bleu	a4,a5,.L115
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,-8192
	addiw	a5,a5,-42
	addw	a5,a4,a5
	sext.w	a4,a5
	li	a5,45056
	addi	a5,a5,2005
	bleu	a4,a5,.L115
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,-57344
	addw	a5,a4,a5
	sext.w	a4,a5
	li	a5,8192
	addi	a5,a5,-8
	bgtu	a4,a5,.L116
.L115:
	li	a5,1
	j	.L114
.L116:
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,-65536
	addiw	a5,a5,4
	addw	a5,a4,a5
	sext.w	a4,a5
	li	a5,1048576
	addi	a5,a5,3
	bgtu	a4,a5,.L117
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,65536
	addi	a5,a5,-2
	and	a5,a4,a5
	sext.w	a4,a5
	li	a5,65536
	addi	a5,a5,-2
	bne	a4,a5,.L118
.L117:
	li	a5,0
	j	.L114
.L118:
	li	a5,1
.L114:
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	iswprint, .-iswprint
	.align	1
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,-48
	sext.w	a4,a5
	li	a5,9
	bleu	a4,a5,.L120
	lw	a5,-20(s0)
	ori	a5,a5,32
	sext.w	a5,a5
	addiw	a5,a5,-97
	sext.w	a4,a5
	li	a5,5
	bgtu	a4,a5,.L121
.L120:
	li	a5,1
	j	.L122
.L121:
	li	a5,0
.L122:
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	iswxdigit, .-iswxdigit
	.align	1
	.globl	toascii
	.type	toascii, @function
toascii:
.LFB30:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	andi	a5,a5,127
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	toascii, .-toascii
	.align	1
	.globl	fdim
	.type	fdim, @function
fdim:
.LFB31:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	fsd	fa0,-24(s0)
	fsd	fa1,-32(s0)
	fld	fa4,-24(s0)
	fld	fa5,-24(s0)
	feq.d	a4,fa4,fa4
	feq.d	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L127
	fld	fa5,-24(s0)
	j	.L128
.L127:
	fld	fa4,-32(s0)
	fld	fa5,-32(s0)
	feq.d	a4,fa4,fa4
	feq.d	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L129
	fld	fa5,-32(s0)
	j	.L128
.L129:
	fld	fa4,-24(s0)
	fld	fa5,-32(s0)
	fgt.d	a5,fa4,fa5
	bne	a5,zero,.L133
	j	.L134
.L133:
	fld	fa4,-24(s0)
	fld	fa5,-32(s0)
	fsub.d	fa5,fa4,fa5
	j	.L128
.L134:
	fmv.d.x	fa5,zero
.L128:
	fmv.d	fa0,fa5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	fdim, .-fdim
	.align	1
	.globl	fdimf
	.type	fdimf, @function
fdimf:
.LFB32:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	fsw	fa0,-20(s0)
	fsw	fa1,-24(s0)
	flw	fa4,-20(s0)
	flw	fa5,-20(s0)
	feq.s	a4,fa4,fa4
	feq.s	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L136
	flw	fa5,-20(s0)
	j	.L137
.L136:
	flw	fa4,-24(s0)
	flw	fa5,-24(s0)
	feq.s	a4,fa4,fa4
	feq.s	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L138
	flw	fa5,-24(s0)
	j	.L137
.L138:
	flw	fa4,-20(s0)
	flw	fa5,-24(s0)
	fgt.s	a5,fa4,fa5
	bne	a5,zero,.L142
	j	.L143
.L142:
	flw	fa4,-20(s0)
	flw	fa5,-24(s0)
	fsub.s	fa5,fa4,fa5
	j	.L137
.L143:
	fmv.s.x	fa5,zero
.L137:
	fmv.s	fa0,fa5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	fdimf, .-fdimf
	.align	1
	.globl	fmax
	.type	fmax, @function
fmax:
.LFB33:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	fsd	fa0,-24(s0)
	fsd	fa1,-32(s0)
	fld	fa4,-24(s0)
	fld	fa5,-24(s0)
	feq.d	a4,fa4,fa4
	feq.d	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L145
	fld	fa5,-32(s0)
	j	.L146
.L145:
	fld	fa4,-32(s0)
	fld	fa5,-32(s0)
	feq.d	a4,fa4,fa4
	feq.d	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L147
	fld	fa5,-24(s0)
	j	.L146
.L147:
	ld	a5,-24(s0)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a4,a5
	ld	a5,-32(s0)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a4,a5,.L148
	ld	a5,-24(s0)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L149
	fld	fa5,-32(s0)
	j	.L146
.L149:
	fld	fa5,-24(s0)
	j	.L146
.L148:
	fld	fa4,-24(s0)
	fld	fa5,-32(s0)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L154
	j	.L155
.L154:
	fld	fa5,-32(s0)
	j	.L146
.L155:
	fld	fa5,-24(s0)
.L146:
	fmv.d	fa0,fa5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	fmax, .-fmax
	.align	1
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB34:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	fsw	fa0,-20(s0)
	fsw	fa1,-24(s0)
	flw	fa4,-20(s0)
	flw	fa5,-20(s0)
	feq.s	a4,fa4,fa4
	feq.s	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L157
	flw	fa5,-24(s0)
	j	.L158
.L157:
	flw	fa4,-24(s0)
	flw	fa5,-24(s0)
	feq.s	a4,fa4,fa4
	feq.s	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L159
	flw	fa5,-20(s0)
	j	.L158
.L159:
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,-2147483648
	and	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-24(s0)
	mv	a3,a5
	li	a5,-2147483648
	and	a5,a3,a5
	sext.w	a5,a5
	beq	a4,a5,.L160
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,-2147483648
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L161
	flw	fa5,-24(s0)
	j	.L158
.L161:
	flw	fa5,-20(s0)
	j	.L158
.L160:
	flw	fa4,-20(s0)
	flw	fa5,-24(s0)
	flt.s	a5,fa4,fa5
	bne	a5,zero,.L166
	j	.L167
.L166:
	flw	fa5,-24(s0)
	j	.L158
.L167:
	flw	fa5,-20(s0)
.L158:
	fmv.s	fa0,fa5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE34:
	.size	fmaxf, .-fmaxf
	.align	1
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB35:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-32(s0)
	sd	a1,-24(s0)
	sd	a2,-48(s0)
	sd	a3,-40(s0)
	ld	a2,-32(s0)
	ld	a3,-24(s0)
	ld	a0,-32(s0)
	ld	a1,-24(s0)
	call	__unordtf2
	mv	a5,a0
	beq	a5,zero,.L183
	ld	a4,-48(s0)
	ld	a5,-40(s0)
	j	.L171
.L183:
	ld	a2,-48(s0)
	ld	a3,-40(s0)
	ld	a0,-48(s0)
	ld	a1,-40(s0)
	call	__unordtf2
	mv	a5,a0
	beq	a5,zero,.L184
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	j	.L171
.L184:
	ld	a5,-24(s0)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a4,a5
	ld	a5,-40(s0)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a4,a5,.L174
	ld	a5,-24(s0)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L175
	ld	a4,-48(s0)
	ld	a5,-40(s0)
	j	.L171
.L175:
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	j	.L171
.L174:
	ld	a2,-48(s0)
	ld	a3,-40(s0)
	ld	a0,-32(s0)
	ld	a1,-24(s0)
	call	__lttf2
	mv	a5,a0
	bge	a5,zero,.L185
	ld	a4,-48(s0)
	ld	a5,-40(s0)
	j	.L171
.L185:
	ld	a4,-32(s0)
	ld	a5,-24(s0)
.L171:
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	fmaxl, .-fmaxl
	.align	1
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	fsd	fa0,-24(s0)
	fsd	fa1,-32(s0)
	fld	fa4,-24(s0)
	fld	fa5,-24(s0)
	feq.d	a4,fa4,fa4
	feq.d	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L187
	fld	fa5,-32(s0)
	j	.L188
.L187:
	fld	fa4,-32(s0)
	fld	fa5,-32(s0)
	feq.d	a4,fa4,fa4
	feq.d	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L189
	fld	fa5,-24(s0)
	j	.L188
.L189:
	ld	a5,-24(s0)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a4,a5
	ld	a5,-32(s0)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a4,a5,.L190
	ld	a5,-24(s0)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L191
	fld	fa5,-24(s0)
	j	.L188
.L191:
	fld	fa5,-32(s0)
	j	.L188
.L190:
	fld	fa4,-24(s0)
	fld	fa5,-32(s0)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L196
	j	.L197
.L196:
	fld	fa5,-24(s0)
	j	.L188
.L197:
	fld	fa5,-32(s0)
.L188:
	fmv.d	fa0,fa5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE36:
	.size	fmin, .-fmin
	.align	1
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB37:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	fsw	fa0,-20(s0)
	fsw	fa1,-24(s0)
	flw	fa4,-20(s0)
	flw	fa5,-20(s0)
	feq.s	a4,fa4,fa4
	feq.s	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L199
	flw	fa5,-24(s0)
	j	.L200
.L199:
	flw	fa4,-24(s0)
	flw	fa5,-24(s0)
	feq.s	a4,fa4,fa4
	feq.s	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L201
	flw	fa5,-20(s0)
	j	.L200
.L201:
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,-2147483648
	and	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-24(s0)
	mv	a3,a5
	li	a5,-2147483648
	and	a5,a3,a5
	sext.w	a5,a5
	beq	a4,a5,.L202
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,-2147483648
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L203
	flw	fa5,-20(s0)
	j	.L200
.L203:
	flw	fa5,-24(s0)
	j	.L200
.L202:
	flw	fa4,-20(s0)
	flw	fa5,-24(s0)
	flt.s	a5,fa4,fa5
	bne	a5,zero,.L208
	j	.L209
.L208:
	flw	fa5,-20(s0)
	j	.L200
.L209:
	flw	fa5,-24(s0)
.L200:
	fmv.s	fa0,fa5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE37:
	.size	fminf, .-fminf
	.align	1
	.globl	fminl
	.type	fminl, @function
fminl:
.LFB38:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-32(s0)
	sd	a1,-24(s0)
	sd	a2,-48(s0)
	sd	a3,-40(s0)
	ld	a2,-32(s0)
	ld	a3,-24(s0)
	ld	a0,-32(s0)
	ld	a1,-24(s0)
	call	__unordtf2
	mv	a5,a0
	beq	a5,zero,.L225
	ld	a4,-48(s0)
	ld	a5,-40(s0)
	j	.L213
.L225:
	ld	a2,-48(s0)
	ld	a3,-40(s0)
	ld	a0,-48(s0)
	ld	a1,-40(s0)
	call	__unordtf2
	mv	a5,a0
	beq	a5,zero,.L226
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	j	.L213
.L226:
	ld	a5,-24(s0)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a4,a5
	ld	a5,-40(s0)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a4,a5,.L216
	ld	a5,-24(s0)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L217
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	j	.L213
.L217:
	ld	a4,-48(s0)
	ld	a5,-40(s0)
	j	.L213
.L216:
	ld	a2,-48(s0)
	ld	a3,-40(s0)
	ld	a0,-32(s0)
	ld	a1,-24(s0)
	call	__lttf2
	mv	a5,a0
	bge	a5,zero,.L227
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	j	.L213
.L227:
	ld	a4,-48(s0)
	ld	a5,-40(s0)
.L213:
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE38:
	.size	fminl, .-fminl
	.section	.rodata
	.align	3
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.align	1
	.globl	l64a
	.type	l64a, @function
l64a:
.LFB39:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	ld	a5,-40(s0)
	sw	a5,-28(s0)
	lui	a5,%hi(s.0)
	addi	a5,a5,%lo(s.0)
	sd	a5,-24(s0)
	j	.L229
.L230:
	lw	a5,-28(s0)
	andi	a5,a5,63
	sext.w	a3,a5
	lui	a5,%hi(digits)
	addi	a4,a5,%lo(digits)
	slli	a5,a3,32
	srli	a5,a5,32
	add	a5,a4,a5
	lbu	a4,0(a5)
	ld	a5,-24(s0)
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
	lw	a5,-28(s0)
	srliw	a5,a5,6
	sw	a5,-28(s0)
.L229:
	lw	a5,-28(s0)
	sext.w	a5,a5
	bne	a5,zero,.L230
	ld	a5,-24(s0)
	sb	zero,0(a5)
	lui	a5,%hi(s.0)
	addi	a5,a5,%lo(s.0)
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE39:
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	1
	.globl	srand
	.type	srand, @function
srand:
.LFB40:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a4,a5,32
	srli	a4,a4,32
	lui	a5,%hi(seed)
	sd	a4,%lo(seed)(a5)
	nop
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	srand, .-srand
	.align	1
	.globl	rand
	.type	rand, @function
rand:
.LFB41:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lui	a5,%hi(seed)
	ld	a4,%lo(seed)(a5)
	lui	a5,%hi(.LC0)
	ld	a5,%lo(.LC0)(a5)
	mul	a5,a4,a5
	addi	a4,a5,1
	lui	a5,%hi(seed)
	sd	a4,%lo(seed)(a5)
	lui	a5,%hi(seed)
	ld	a5,%lo(seed)(a5)
	srli	a5,a5,33
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE41:
	.size	rand, .-rand
	.align	1
	.globl	insque
	.type	insque, @function
insque:
.LFB42:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a5,-48(s0)
	sd	a5,-32(s0)
	ld	a5,-32(s0)
	bne	a5,zero,.L236
	ld	a5,-24(s0)
	sd	zero,8(a5)
	ld	a5,-24(s0)
	ld	a4,8(a5)
	ld	a5,-24(s0)
	sd	a4,0(a5)
	j	.L235
.L236:
	ld	a5,-32(s0)
	ld	a4,0(a5)
	ld	a5,-24(s0)
	sd	a4,0(a5)
	ld	a5,-24(s0)
	ld	a4,-32(s0)
	sd	a4,8(a5)
	ld	a5,-32(s0)
	ld	a4,-24(s0)
	sd	a4,0(a5)
	ld	a5,-24(s0)
	ld	a5,0(a5)
	beq	a5,zero,.L235
	ld	a5,-24(s0)
	ld	a5,0(a5)
	ld	a4,-24(s0)
	sd	a4,8(a5)
.L235:
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE42:
	.size	insque, .-insque
	.align	1
	.globl	remque
	.type	remque, @function
remque:
.LFB43:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	ld	a5,0(a5)
	beq	a5,zero,.L239
	ld	a5,-24(s0)
	ld	a5,0(a5)
	ld	a4,-24(s0)
	ld	a4,8(a4)
	sd	a4,8(a5)
.L239:
	ld	a5,-24(s0)
	ld	a5,8(a5)
	beq	a5,zero,.L241
	ld	a5,-24(s0)
	ld	a5,8(a5)
	ld	a4,-24(s0)
	ld	a4,0(a4)
	sd	a4,0(a5)
.L241:
	nop
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE43:
	.size	remque, .-remque
	.align	1
	.globl	lsearch
	.type	lsearch, @function
lsearch:
.LFB44:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	s1,88(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	sd	a2,-88(s0)
	sd	a3,-96(s0)
	sd	a4,-104(s0)
	ld	s1,-96(s0)
	mv	a5,s1
	addi	a5,a5,-1
	sd	a5,-48(s0)
	mv	t1,s1
	li	t2,0
	srli	a5,t1,61
	slli	a7,t2,3
	or	a7,a5,a7
	slli	a6,t1,3
	ld	a5,-80(s0)
	sd	a5,-56(s0)
	ld	a5,-88(s0)
	ld	a5,0(a5)
	sd	a5,-64(s0)
	sd	zero,-40(s0)
	j	.L243
.L246:
	ld	a5,-40(s0)
	mul	a5,s1,a5
	ld	a4,-56(s0)
	add	a4,a4,a5
	ld	a5,-104(s0)
	mv	a1,a4
	ld	a0,-72(s0)
	jalr	a5
	mv	a5,a0
	bne	a5,zero,.L244
	ld	a5,-40(s0)
	mul	a5,s1,a5
	ld	a4,-56(s0)
	add	a5,a4,a5
	j	.L245
.L244:
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L243:
	ld	a4,-40(s0)
	ld	a5,-64(s0)
	bltu	a4,a5,.L246
	ld	a5,-64(s0)
	addi	a4,a5,1
	ld	a5,-88(s0)
	sd	a4,0(a5)
	ld	a5,-64(s0)
	mul	a5,s1,a5
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a2,-96(s0)
	ld	a1,-72(s0)
	mv	a0,a5
	call	memcpy
	mv	a5,a0
.L245:
	mv	a0,a5
	ld	ra,104(sp)
	.cfi_restore 1
	ld	s0,96(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	ld	s1,88(sp)
	.cfi_restore 9
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE44:
	.size	lsearch, .-lsearch
	.align	1
	.globl	lfind
	.type	lfind, @function
lfind:
.LFB45:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	s1,88(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	sd	a2,-88(s0)
	sd	a3,-96(s0)
	sd	a4,-104(s0)
	ld	s1,-96(s0)
	mv	a5,s1
	addi	a5,a5,-1
	sd	a5,-48(s0)
	mv	t1,s1
	li	t2,0
	srli	a5,t1,61
	slli	a7,t2,3
	or	a7,a5,a7
	slli	a6,t1,3
	ld	a5,-80(s0)
	sd	a5,-56(s0)
	ld	a5,-88(s0)
	ld	a5,0(a5)
	sd	a5,-64(s0)
	sd	zero,-40(s0)
	j	.L248
.L251:
	ld	a5,-40(s0)
	mul	a5,s1,a5
	ld	a4,-56(s0)
	add	a4,a4,a5
	ld	a5,-104(s0)
	mv	a1,a4
	ld	a0,-72(s0)
	jalr	a5
	mv	a5,a0
	bne	a5,zero,.L249
	ld	a5,-40(s0)
	mul	a5,s1,a5
	ld	a4,-56(s0)
	add	a5,a4,a5
	j	.L250
.L249:
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L248:
	ld	a4,-40(s0)
	ld	a5,-64(s0)
	bltu	a4,a5,.L251
	li	a5,0
.L250:
	mv	a0,a5
	ld	ra,104(sp)
	.cfi_restore 1
	ld	s0,96(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	ld	s1,88(sp)
	.cfi_restore 9
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE45:
	.size	lfind, .-lfind
	.align	1
	.globl	abs
	.type	abs, @function
abs:
.LFB46:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sraiw	a5,a5,31
	lw	a4,-20(s0)
	xor	a4,a5,a4
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE46:
	.size	abs, .-abs
	.align	1
	.globl	atoi
	.type	atoi, @function
atoi:
.LFB47:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sw	zero,-20(s0)
	sw	zero,-24(s0)
	j	.L255
.L256:
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L255:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a0,a5
	call	isspace
	mv	a5,a0
	bne	a5,zero,.L256
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	li	a4,43
	beq	a5,a4,.L257
	li	a4,45
	bne	a5,a4,.L259
	li	a5,1
	sw	a5,-24(s0)
.L257:
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
	j	.L259
.L260:
	lw	a5,-20(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,2
	addw	a5,a5,a4
	slliw	a5,a5,1
	sext.w	a4,a5
	ld	a5,-40(s0)
	addi	a3,a5,1
	sd	a3,-40(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	subw	a5,a4,a5
	sw	a5,-20(s0)
.L259:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a4,a5
	li	a5,9
	bleu	a4,a5,.L260
	lw	a5,-24(s0)
	sext.w	a5,a5
	bne	a5,zero,.L261
	lw	a5,-20(s0)
	negw	a5,a5
	sext.w	a5,a5
	j	.L262
.L261:
	lw	a5,-20(s0)
.L262:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.align	1
	.globl	atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	zero,-24(s0)
	sw	zero,-28(s0)
	j	.L265
.L266:
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L265:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a0,a5
	call	isspace
	mv	a5,a0
	bne	a5,zero,.L266
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	li	a4,43
	beq	a5,a4,.L267
	li	a4,45
	bne	a5,a4,.L269
	li	a5,1
	sw	a5,-28(s0)
.L267:
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
	j	.L269
.L270:
	ld	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a3,a5
	ld	a5,-40(s0)
	addi	a4,a5,1
	sd	a4,-40(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	sub	a5,a3,a5
	sd	a5,-24(s0)
.L269:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a4,a5
	li	a5,9
	bleu	a4,a5,.L270
	lw	a5,-28(s0)
	sext.w	a5,a5
	bne	a5,zero,.L271
	ld	a5,-24(s0)
	neg	a5,a5
	j	.L273
.L271:
	ld	a5,-24(s0)
.L273:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.align	1
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB49:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	zero,-24(s0)
	sw	zero,-28(s0)
	j	.L275
.L276:
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L275:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a0,a5
	call	isspace
	mv	a5,a0
	bne	a5,zero,.L276
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	li	a4,43
	beq	a5,a4,.L277
	li	a4,45
	bne	a5,a4,.L279
	li	a5,1
	sw	a5,-28(s0)
.L277:
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
	j	.L279
.L280:
	ld	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a3,a5
	ld	a5,-40(s0)
	addi	a4,a5,1
	sd	a4,-40(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	sub	a5,a3,a5
	sd	a5,-24(s0)
.L279:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a4,a5
	li	a5,9
	bleu	a4,a5,.L280
	lw	a5,-28(s0)
	sext.w	a5,a5
	bne	a5,zero,.L281
	ld	a5,-24(s0)
	neg	a5,a5
	j	.L283
.L281:
	ld	a5,-24(s0)
.L283:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE49:
	.size	atoll, .-atoll
	.align	1
	.globl	bsearch
	.type	bsearch, @function
bsearch:
.LFB50:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	sd	a3,-64(s0)
	sd	a4,-72(s0)
	j	.L285
.L290:
	ld	a5,-56(s0)
	srli	a4,a5,1
	ld	a5,-64(s0)
	mul	a5,a4,a5
	ld	a4,-48(s0)
	add	a5,a4,a5
	sd	a5,-24(s0)
	ld	a5,-72(s0)
	ld	a1,-24(s0)
	ld	a0,-40(s0)
	jalr	a5
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	sext.w	a5,a5
	bge	a5,zero,.L286
	ld	a5,-56(s0)
	srli	a5,a5,1
	sd	a5,-56(s0)
	j	.L285
.L286:
	lw	a5,-28(s0)
	sext.w	a5,a5
	ble	a5,zero,.L288
	ld	a4,-24(s0)
	ld	a5,-64(s0)
	add	a5,a4,a5
	sd	a5,-48(s0)
	ld	a5,-56(s0)
	srli	a5,a5,1
	ld	a4,-56(s0)
	sub	a5,a4,a5
	addi	a5,a5,-1
	sd	a5,-56(s0)
	j	.L285
.L288:
	ld	a5,-24(s0)
	j	.L289
.L285:
	ld	a5,-56(s0)
	bne	a5,zero,.L290
	li	a5,0
.L289:
	mv	a0,a5
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE50:
	.size	bsearch, .-bsearch
	.align	1
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB51:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	sd	a3,-80(s0)
	sd	a4,-88(s0)
	sd	a5,-96(s0)
	ld	a5,-64(s0)
	sd	a5,-24(s0)
	ld	a5,-72(s0)
	sw	a5,-28(s0)
	j	.L292
.L296:
	lw	a5,-28(s0)
	sraiw	a5,a5,1
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-80(s0)
	mul	a5,a4,a5
	ld	a4,-24(s0)
	add	a5,a4,a5
	sd	a5,-40(s0)
	ld	a5,-88(s0)
	ld	a2,-96(s0)
	ld	a1,-40(s0)
	ld	a0,-56(s0)
	jalr	a5
	mv	a5,a0
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sext.w	a5,a5
	bne	a5,zero,.L293
	ld	a5,-40(s0)
	j	.L294
.L293:
	lw	a5,-44(s0)
	sext.w	a5,a5
	ble	a5,zero,.L295
	ld	a4,-40(s0)
	ld	a5,-80(s0)
	add	a5,a4,a5
	sd	a5,-24(s0)
	lw	a5,-28(s0)
	addiw	a5,a5,-1
	sw	a5,-28(s0)
.L295:
	lw	a5,-28(s0)
	sraiw	a5,a5,1
	sw	a5,-28(s0)
.L292:
	lw	a5,-28(s0)
	sext.w	a5,a5
	bne	a5,zero,.L296
	li	a5,0
.L294:
	mv	a0,a5
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE51:
	.size	bsearch_r, .-bsearch_r
	.align	1
	.globl	div
	.type	div, @function
div:
.LFB52:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	divw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-36(s0)
	mv	a3,a5
	lw	a5,-40(s0)
	remw	a5,a3,a5
	sext.w	a5,a5
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	li	a5,0
	lwu	a4,-24(s0)
	slli	a4,a4,32
	srli	a4,a4,32
	li	a3,-1
	slli	a3,a3,32
	and	a5,a5,a3
	or	a5,a5,a4
	lwu	a4,-20(s0)
	slli	a4,a4,32
	slli	a5,a5,32
	srli	a5,a5,32
	or	a5,a5,a4
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE52:
	.size	div, .-div
	.align	1
	.globl	imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB53:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	srai	a4,a5,63
	ld	a5,-24(s0)
	xor	a5,a4,a5
	sub	a5,a5,a4
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE53:
	.size	imaxabs, .-imaxabs
	.align	1
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB54:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	ld	a4,-56(s0)
	ld	a5,-64(s0)
	div	a4,a4,a5
	ld	a1,-56(s0)
	ld	a5,-64(s0)
	rem	a5,a1,a5
	sd	a4,-32(s0)
	sd	a5,-24(s0)
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE54:
	.size	imaxdiv, .-imaxdiv
	.align	1
	.globl	labs
	.type	labs, @function
labs:
.LFB55:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	srai	a4,a5,63
	ld	a5,-24(s0)
	xor	a5,a4,a5
	sub	a5,a5,a4
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE55:
	.size	labs, .-labs
	.align	1
	.globl	ldiv
	.type	ldiv, @function
ldiv:
.LFB56:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	ld	a4,-56(s0)
	ld	a5,-64(s0)
	div	a4,a4,a5
	ld	a1,-56(s0)
	ld	a5,-64(s0)
	rem	a5,a1,a5
	sd	a4,-32(s0)
	sd	a5,-24(s0)
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE56:
	.size	ldiv, .-ldiv
	.align	1
	.globl	llabs
	.type	llabs, @function
llabs:
.LFB57:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	srai	a4,a5,63
	ld	a5,-24(s0)
	xor	a5,a4,a5
	sub	a5,a5,a4
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE57:
	.size	llabs, .-llabs
	.align	1
	.globl	lldiv
	.type	lldiv, @function
lldiv:
.LFB58:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	ld	a4,-56(s0)
	ld	a5,-64(s0)
	div	a4,a4,a5
	ld	a1,-56(s0)
	ld	a5,-64(s0)
	rem	a5,a1,a5
	sd	a4,-32(s0)
	sd	a5,-24(s0)
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE58:
	.size	lldiv, .-lldiv
	.align	1
	.globl	wcschr
	.type	wcschr, @function
wcschr:
.LFB59:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	sw	a5,-28(s0)
	j	.L312
.L314:
	ld	a5,-24(s0)
	addi	a5,a5,4
	sd	a5,-24(s0)
.L312:
	ld	a5,-24(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L313
	ld	a5,-24(s0)
	lw	a5,0(a5)
	lw	a4,-28(s0)
	sext.w	a4,a4
	bne	a4,a5,.L314
.L313:
	ld	a5,-24(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L315
	ld	a5,-24(s0)
	j	.L317
.L315:
	li	a5,0
.L317:
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE59:
	.size	wcschr, .-wcschr
	.align	1
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	j	.L319
.L321:
	ld	a5,-24(s0)
	addi	a5,a5,4
	sd	a5,-24(s0)
	ld	a5,-32(s0)
	addi	a5,a5,4
	sd	a5,-32(s0)
.L319:
	ld	a5,-24(s0)
	lw	a4,0(a5)
	ld	a5,-32(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L320
	ld	a5,-24(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L320
	ld	a5,-32(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L321
.L320:
	ld	a5,-24(s0)
	lw	a4,0(a5)
	ld	a5,-32(s0)
	lw	a5,0(a5)
	blt	a4,a5,.L322
	ld	a5,-24(s0)
	lw	a4,0(a5)
	ld	a5,-32(s0)
	lw	a5,0(a5)
	sgt	a5,a4,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L323
.L322:
	li	a5,-1
.L323:
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE60:
	.size	wcscmp, .-wcscmp
	.align	1
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB61:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	nop
.L326:
	ld	a4,-48(s0)
	addi	a5,a4,4
	sd	a5,-48(s0)
	ld	a5,-40(s0)
	addi	a3,a5,4
	sd	a3,-40(s0)
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,0(a5)
	bne	a5,zero,.L326
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE61:
	.size	wcscpy, .-wcscpy
	.align	1
	.globl	wcslen
	.type	wcslen, @function
wcslen:
.LFB62:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	j	.L329
.L330:
	ld	a5,-40(s0)
	addi	a5,a5,4
	sd	a5,-40(s0)
.L329:
	ld	a5,-40(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L330
	ld	a4,-40(s0)
	ld	a5,-24(s0)
	sub	a5,a4,a5
	srai	a5,a5,2
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.align	1
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	j	.L333
.L335:
	ld	a5,-40(s0)
	addi	a5,a5,-1
	sd	a5,-40(s0)
	ld	a5,-24(s0)
	addi	a5,a5,4
	sd	a5,-24(s0)
	ld	a5,-32(s0)
	addi	a5,a5,4
	sd	a5,-32(s0)
.L333:
	ld	a5,-40(s0)
	beq	a5,zero,.L334
	ld	a5,-24(s0)
	lw	a4,0(a5)
	ld	a5,-32(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L334
	ld	a5,-24(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L334
	ld	a5,-32(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L335
.L334:
	ld	a5,-40(s0)
	beq	a5,zero,.L336
	ld	a5,-24(s0)
	lw	a4,0(a5)
	ld	a5,-32(s0)
	lw	a5,0(a5)
	blt	a4,a5,.L337
	ld	a5,-24(s0)
	lw	a4,0(a5)
	ld	a5,-32(s0)
	lw	a5,0(a5)
	sgt	a5,a4,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L339
.L337:
	li	a5,-1
	j	.L339
.L336:
	li	a5,0
.L339:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.align	1
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	sd	a2,-40(s0)
	sw	a5,-28(s0)
	j	.L342
.L344:
	ld	a5,-40(s0)
	addi	a5,a5,-1
	sd	a5,-40(s0)
	ld	a5,-24(s0)
	addi	a5,a5,4
	sd	a5,-24(s0)
.L342:
	ld	a5,-40(s0)
	beq	a5,zero,.L343
	ld	a5,-24(s0)
	lw	a5,0(a5)
	lw	a4,-28(s0)
	sext.w	a4,a4
	bne	a4,a5,.L344
.L343:
	ld	a5,-40(s0)
	beq	a5,zero,.L345
	ld	a5,-24(s0)
	j	.L347
.L345:
	li	a5,0
.L347:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE64:
	.size	wmemchr, .-wmemchr
	.align	1
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	j	.L349
.L351:
	ld	a5,-40(s0)
	addi	a5,a5,-1
	sd	a5,-40(s0)
	ld	a5,-24(s0)
	addi	a5,a5,4
	sd	a5,-24(s0)
	ld	a5,-32(s0)
	addi	a5,a5,4
	sd	a5,-32(s0)
.L349:
	ld	a5,-40(s0)
	beq	a5,zero,.L350
	ld	a5,-24(s0)
	lw	a4,0(a5)
	ld	a5,-32(s0)
	lw	a5,0(a5)
	beq	a4,a5,.L351
.L350:
	ld	a5,-40(s0)
	beq	a5,zero,.L352
	ld	a5,-24(s0)
	lw	a4,0(a5)
	ld	a5,-32(s0)
	lw	a5,0(a5)
	blt	a4,a5,.L353
	ld	a5,-24(s0)
	lw	a4,0(a5)
	ld	a5,-32(s0)
	lw	a5,0(a5)
	sgt	a5,a4,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L355
.L353:
	li	a5,-1
	j	.L355
.L352:
	li	a5,0
.L355:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.align	1
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	j	.L358
.L359:
	ld	a4,-48(s0)
	addi	a5,a4,4
	sd	a5,-48(s0)
	ld	a5,-40(s0)
	addi	a3,a5,4
	sd	a3,-40(s0)
	lw	a4,0(a4)
	sw	a4,0(a5)
.L358:
	ld	a5,-56(s0)
	addi	a4,a5,-1
	sd	a4,-56(s0)
	bne	a5,zero,.L359
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE66:
	.size	wmemcpy, .-wmemcpy
	.align	1
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a4,-40(s0)
	ld	a5,-48(s0)
	bne	a4,a5,.L362
	ld	a5,-40(s0)
	j	.L363
.L362:
	ld	a4,-40(s0)
	ld	a5,-48(s0)
	sub	a4,a4,a5
	ld	a5,-56(s0)
	slli	a5,a5,2
	bgeu	a4,a5,.L368
	j	.L365
.L366:
	ld	a5,-56(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a4,a4,a5
	ld	a5,-56(s0)
	slli	a5,a5,2
	ld	a3,-40(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
.L365:
	ld	a5,-56(s0)
	addi	a4,a5,-1
	sd	a4,-56(s0)
	bne	a5,zero,.L366
	j	.L367
.L369:
	ld	a4,-48(s0)
	addi	a5,a4,4
	sd	a5,-48(s0)
	ld	a5,-40(s0)
	addi	a3,a5,4
	sd	a3,-40(s0)
	lw	a4,0(a4)
	sw	a4,0(a5)
.L368:
	ld	a5,-56(s0)
	addi	a4,a5,-1
	sd	a4,-56(s0)
	bne	a5,zero,.L369
.L367:
	ld	a5,-24(s0)
.L363:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.align	1
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sd	a2,-56(s0)
	sw	a5,-44(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	j	.L371
.L372:
	ld	a5,-40(s0)
	addi	a4,a5,4
	sd	a4,-40(s0)
	lw	a4,-44(s0)
	sw	a4,0(a5)
.L371:
	ld	a5,-56(s0)
	addi	a4,a5,-1
	sd	a4,-56(s0)
	bne	a5,zero,.L372
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.align	1
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a5,-48(s0)
	sd	a5,-32(s0)
	ld	a4,-24(s0)
	ld	a5,-32(s0)
	bgeu	a4,a5,.L375
	ld	a4,-24(s0)
	ld	a5,-56(s0)
	add	a5,a4,a5
	sd	a5,-24(s0)
	ld	a4,-32(s0)
	ld	a5,-56(s0)
	add	a5,a4,a5
	sd	a5,-32(s0)
	j	.L376
.L377:
	ld	a5,-24(s0)
	addi	a5,a5,-1
	sd	a5,-24(s0)
	ld	a5,-32(s0)
	addi	a5,a5,-1
	sd	a5,-32(s0)
	ld	a5,-24(s0)
	lbu	a4,0(a5)
	ld	a5,-32(s0)
	sb	a4,0(a5)
	ld	a5,-56(s0)
	addi	a5,a5,-1
	sd	a5,-56(s0)
.L376:
	ld	a5,-56(s0)
	bne	a5,zero,.L377
	j	.L381
.L375:
	ld	a4,-24(s0)
	ld	a5,-32(s0)
	beq	a4,a5,.L381
	j	.L379
.L380:
	ld	a4,-24(s0)
	addi	a5,a4,1
	sd	a5,-24(s0)
	ld	a5,-32(s0)
	addi	a3,a5,1
	sd	a3,-32(s0)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	ld	a5,-56(s0)
	addi	a5,a5,-1
	sd	a5,-56(s0)
.L379:
	ld	a5,-56(s0)
	bne	a5,zero,.L380
.L381:
	nop
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE69:
	.size	bcopy, .-bcopy
	.align	1
	.globl	rotl64
	.type	rotl64, @function
rotl64:
.LFB70:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	sw	a5,-28(s0)
	ld	a5,-24(s0)
	lw	a4,-28(s0)
	sll	a4,a5,a4
	lw	a3,-28(s0)
	negw	a3,a3
	andi	a3,a3,63
	srl	a5,a5,a3
	or	a5,a5,a4
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE70:
	.size	rotl64, .-rotl64
	.align	1
	.globl	rotr64
	.type	rotr64, @function
rotr64:
.LFB71:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	sw	a5,-28(s0)
	ld	a5,-24(s0)
	lw	a4,-28(s0)
	srl	a4,a5,a4
	lw	a3,-28(s0)
	negw	a3,a3
	andi	a3,a3,63
	sll	a5,a5,a3
	or	a5,a5,a4
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE71:
	.size	rotr64, .-rotr64
	.align	1
	.globl	rotl32
	.type	rotl32, @function
rotl32:
.LFB72:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sllw	a4,a5,a4
	lw	a3,-24(s0)
	negw	a3,a3
	andi	a3,a3,31
	srlw	a5,a5,a3
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE72:
	.size	rotl32, .-rotl32
	.align	1
	.globl	rotr32
	.type	rotr32, @function
rotr32:
.LFB73:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	srlw	a4,a5,a4
	lw	a3,-24(s0)
	negw	a3,a3
	andi	a3,a3,31
	sllw	a5,a5,a3
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE73:
	.size	rotr32, .-rotr32
	.align	1
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB74:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	mv	a4,a5
	ld	a5,-24(s0)
	sll	a4,a5,a4
	lw	a5,-28(s0)
	li	a3,64
	subw	a5,a3,a5
	sext.w	a5,a5
	mv	a3,a5
	ld	a5,-24(s0)
	srl	a5,a5,a3
	or	a5,a4,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE74:
	.size	rotl_sz, .-rotl_sz
	.align	1
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB75:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	mv	a4,a5
	ld	a5,-24(s0)
	srl	a4,a5,a4
	lw	a5,-28(s0)
	li	a3,64
	subw	a5,a3,a5
	sext.w	a5,a5
	mv	a3,a5
	ld	a5,-24(s0)
	sll	a5,a5,a3
	or	a5,a4,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE75:
	.size	rotr_sz, .-rotr_sz
	.align	1
	.globl	rotl16
	.type	rotl16, @function
rotl16:
.LFB76:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sh	a5,-18(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lhu	a5,-18(s0)
	sext.w	a5,a5
	lw	a4,-24(s0)
	sllw	a5,a5,a4
	sext.w	a5,a5
	slli	a4,a5,48
	srli	a4,a4,48
	lhu	a5,-18(s0)
	sext.w	a5,a5
	li	a3,16
	lw	a2,-24(s0)
	subw	a3,a3,a2
	sext.w	a3,a3
	srlw	a5,a5,a3
	sext.w	a5,a5
	slli	a5,a5,48
	srli	a5,a5,48
	or	a5,a4,a5
	slli	a5,a5,48
	srli	a5,a5,48
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE76:
	.size	rotl16, .-rotl16
	.align	1
	.globl	rotr16
	.type	rotr16, @function
rotr16:
.LFB77:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sh	a5,-18(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lhu	a5,-18(s0)
	sext.w	a5,a5
	lw	a4,-24(s0)
	srlw	a5,a5,a4
	sext.w	a5,a5
	slli	a4,a5,48
	srli	a4,a4,48
	lhu	a5,-18(s0)
	sext.w	a5,a5
	li	a3,16
	lw	a2,-24(s0)
	subw	a3,a3,a2
	sext.w	a3,a3
	sllw	a5,a5,a3
	sext.w	a5,a5
	slli	a5,a5,48
	srli	a5,a5,48
	or	a5,a4,a5
	slli	a5,a5,48
	srli	a5,a5,48
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE77:
	.size	rotr16, .-rotr16
	.align	1
	.globl	rotl8
	.type	rotl8, @function
rotl8:
.LFB78:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sb	a5,-17(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lbu	a5,-17(s0)
	sext.w	a5,a5
	lw	a4,-24(s0)
	sllw	a5,a5,a4
	sext.w	a5,a5
	andi	a4,a5,0xff
	lbu	a5,-17(s0)
	sext.w	a5,a5
	li	a3,8
	lw	a2,-24(s0)
	subw	a3,a3,a2
	sext.w	a3,a3
	srlw	a5,a5,a3
	sext.w	a5,a5
	andi	a5,a5,0xff
	or	a5,a4,a5
	andi	a5,a5,0xff
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE78:
	.size	rotl8, .-rotl8
	.align	1
	.globl	rotr8
	.type	rotr8, @function
rotr8:
.LFB79:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sb	a5,-17(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lbu	a5,-17(s0)
	sext.w	a5,a5
	lw	a4,-24(s0)
	srlw	a5,a5,a4
	sext.w	a5,a5
	andi	a4,a5,0xff
	lbu	a5,-17(s0)
	sext.w	a5,a5
	li	a3,8
	lw	a2,-24(s0)
	subw	a3,a3,a2
	sext.w	a3,a3
	sllw	a5,a5,a3
	sext.w	a5,a5
	andi	a5,a5,0xff
	or	a5,a4,a5
	andi	a5,a5,0xff
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE79:
	.size	rotr8, .-rotr8
	.align	1
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB80:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sh	a5,-34(s0)
	li	a5,255
	sd	a5,-24(s0)
	lhu	a4,-34(s0)
	ld	a5,-24(s0)
	slli	a5,a5,8
	and	a5,a4,a5
	srli	a5,a5,8
	slli	a4,a5,48
	srli	a4,a4,48
	ld	a5,-24(s0)
	slli	a5,a5,48
	srli	a5,a5,48
	lhu	a3,-34(s0)
	and	a5,a5,a3
	slli	a5,a5,48
	srli	a5,a5,48
	slliw	a5,a5,8
	slli	a5,a5,48
	srli	a5,a5,48
	or	a5,a4,a5
	slli	a5,a5,48
	srli	a5,a5,48
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE80:
	.size	bswap_16, .-bswap_16
	.align	1
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB81:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-36(s0)
	li	a5,255
	sd	a5,-24(s0)
	lwu	a4,-36(s0)
	ld	a5,-24(s0)
	slli	a5,a5,24
	and	a5,a4,a5
	srli	a5,a5,24
	sext.w	a3,a5
	lwu	a4,-36(s0)
	ld	a5,-24(s0)
	slli	a5,a5,16
	and	a5,a4,a5
	srli	a5,a5,8
	sext.w	a5,a5
	mv	a4,a3
	or	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-24(s0)
	sext.w	a5,a5
	slliw	a5,a5,8
	sext.w	a5,a5
	lw	a3,-36(s0)
	and	a5,a3,a5
	sext.w	a5,a5
	slliw	a5,a5,8
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-24(s0)
	sext.w	a5,a5
	lw	a3,-36(s0)
	and	a5,a3,a5
	sext.w	a5,a5
	slliw	a5,a5,24
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE81:
	.size	bswap_32, .-bswap_32
	.align	1
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB82:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	li	a5,255
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	slli	a4,a5,56
	ld	a5,-40(s0)
	and	a5,a4,a5
	srli	a4,a5,56
	ld	a5,-24(s0)
	slli	a3,a5,48
	ld	a5,-40(s0)
	and	a5,a3,a5
	srli	a5,a5,40
	or	a4,a4,a5
	ld	a5,-24(s0)
	slli	a3,a5,40
	ld	a5,-40(s0)
	and	a5,a3,a5
	srli	a5,a5,24
	or	a4,a4,a5
	ld	a5,-24(s0)
	slli	a3,a5,32
	ld	a5,-40(s0)
	and	a5,a3,a5
	srli	a5,a5,8
	or	a4,a4,a5
	ld	a5,-24(s0)
	slli	a3,a5,24
	ld	a5,-40(s0)
	and	a5,a3,a5
	slli	a5,a5,8
	or	a4,a4,a5
	ld	a5,-24(s0)
	slli	a3,a5,16
	ld	a5,-40(s0)
	and	a5,a3,a5
	slli	a5,a5,24
	or	a4,a4,a5
	ld	a5,-24(s0)
	slli	a3,a5,8
	ld	a5,-40(s0)
	and	a5,a3,a5
	slli	a5,a5,40
	or	a4,a4,a5
	ld	a3,-40(s0)
	ld	a5,-24(s0)
	and	a5,a3,a5
	slli	a5,a5,56
	or	a5,a4,a5
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE82:
	.size	bswap_64, .-bswap_64
	.align	1
	.globl	ffs
	.type	ffs, @function
ffs:
.LFB83:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-36(s0)
	sw	zero,-20(s0)
	j	.L409
.L412:
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	srlw	a5,a5,a4
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L410
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	j	.L411
.L410:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L409:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,31
	bleu	a4,a5,.L412
	li	a5,0
.L411:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE83:
	.size	ffs, .-ffs
	.align	1
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	bne	a5,zero,.L414
	li	a5,0
	j	.L415
.L414:
	li	s1,1
	j	.L416
.L417:
	sraiw	a5,a5,1
	sext.w	a5,a5
	addiw	a4,s1,1
	sext.w	s1,a4
.L416:
	andi	a4,a5,1
	sext.w	a4,a4
	beq	a4,zero,.L417
	mv	a5,s1
.L415:
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	ld	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	1
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB85:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	fsw	fa0,-20(s0)
	flw	fa4,-20(s0)
	lui	a5,%hi(.LC1)
	flw	fa5,%lo(.LC1)(a5)
	flt.s	a5,fa4,fa5
	bne	a5,zero,.L419
	flw	fa4,-20(s0)
	lui	a5,%hi(.LC2)
	flw	fa5,%lo(.LC2)(a5)
	fgt.s	a5,fa4,fa5
	bne	a5,zero,.L419
	j	.L424
.L419:
	li	a5,1
	j	.L422
.L424:
	li	a5,0
.L422:
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE85:
	.size	gl_isinff, .-gl_isinff
	.align	1
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB86:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	fsd	fa0,-24(s0)
	fld	fa4,-24(s0)
	lui	a5,%hi(.LC3)
	fld	fa5,%lo(.LC3)(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L428
	fld	fa4,-24(s0)
	lui	a5,%hi(.LC4)
	fld	fa5,%lo(.LC4)(a5)
	fgt.d	a5,fa4,fa5
	bne	a5,zero,.L428
	j	.L433
.L428:
	li	a5,1
	j	.L431
.L433:
	li	a5,0
.L431:
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE86:
	.size	gl_isinfd, .-gl_isinfd
	.align	1
	.globl	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB87:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-32(s0)
	sd	a1,-24(s0)
	lui	a5,%hi(.LC5)
	ld	a2,%lo(.LC5)(a5)
	ld	a3,%lo(.LC5+8)(a5)
	ld	a0,-32(s0)
	ld	a1,-24(s0)
	call	__lttf2
	mv	a5,a0
	blt	a5,zero,.L437
	lui	a5,%hi(.LC6)
	ld	a2,%lo(.LC6)(a5)
	ld	a3,%lo(.LC6+8)(a5)
	ld	a0,-32(s0)
	ld	a1,-24(s0)
	call	__gttf2
	mv	a5,a0
	ble	a5,zero,.L442
.L437:
	li	a5,1
	j	.L440
.L442:
	li	a5,0
.L440:
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE87:
	.size	gl_isinfl, .-gl_isinfl
	.align	1
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB88:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	fcvt.d.w	fa5,a5
	fmv.d	fa0,fa5
	call	__extenddftf2
	mv	a4,a0
	mv	a5,a1
	ld	a3,-24(s0)
	sd	a4,0(a3)
	sd	a5,8(a3)
	nop
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE88:
	.size	_Qp_itoq, .-_Qp_itoq
	.align	1
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB89:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	fsw	fa0,-36(s0)
	mv	a5,a0
	sw	a5,-40(s0)
	flw	fa4,-36(s0)
	flw	fa5,-36(s0)
	feq.s	a4,fa4,fa4
	feq.s	a5,fa5,fa5
	and	a5,a4,a5
	beq	a5,zero,.L445
	flw	fa5,-36(s0)
	fadd.s	fa5,fa5,fa5
	flw	fa4,-36(s0)
	feq.s	a5,fa4,fa5
	bne	a5,zero,.L445
	lw	a5,-40(s0)
	sext.w	a5,a5
	bge	a5,zero,.L446
	lui	a5,%hi(.LC7)
	flw	fa5,%lo(.LC7)(a5)
	j	.L447
.L446:
	lui	a5,%hi(.LC8)
	flw	fa5,%lo(.LC8)(a5)
.L447:
	fsw	fa5,-20(s0)
.L450:
	lw	a5,-40(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L448
	flw	fa4,-36(s0)
	flw	fa5,-20(s0)
	fmul.s	fa5,fa4,fa5
	fsw	fa5,-36(s0)
.L448:
	lw	a5,-40(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	sext.w	a5,a5
	beq	a5,zero,.L452
	flw	fa5,-20(s0)
	fmul.s	fa5,fa5,fa5
	fsw	fa5,-20(s0)
	j	.L450
.L452:
	nop
.L445:
	flw	fa5,-36(s0)
	fmv.s	fa0,fa5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.align	1
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB90:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	fsd	fa0,-40(s0)
	mv	a5,a0
	sw	a5,-44(s0)
	fld	fa4,-40(s0)
	fld	fa5,-40(s0)
	feq.d	a4,fa4,fa4
	feq.d	a5,fa5,fa5
	and	a5,a4,a5
	beq	a5,zero,.L455
	fld	fa5,-40(s0)
	fadd.d	fa5,fa5,fa5
	fld	fa4,-40(s0)
	feq.d	a5,fa4,fa5
	bne	a5,zero,.L455
	lw	a5,-44(s0)
	sext.w	a5,a5
	bge	a5,zero,.L456
	lui	a5,%hi(.LC9)
	fld	fa5,%lo(.LC9)(a5)
	j	.L457
.L456:
	lui	a5,%hi(.LC10)
	fld	fa5,%lo(.LC10)(a5)
.L457:
	fsd	fa5,-24(s0)
.L460:
	lw	a5,-44(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L458
	fld	fa4,-40(s0)
	fld	fa5,-24(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
.L458:
	lw	a5,-44(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sext.w	a5,a5
	beq	a5,zero,.L462
	fld	fa5,-24(s0)
	fmul.d	fa5,fa5,fa5
	fsd	fa5,-24(s0)
	j	.L460
.L462:
	nop
.L455:
	fld	fa5,-40(s0)
	fmv.d	fa0,fa5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE90:
	.size	ldexp, .-ldexp
	.align	1
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB91:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-48(s0)
	sd	a1,-40(s0)
	mv	a5,a2
	sw	a5,-52(s0)
	ld	a2,-48(s0)
	ld	a3,-40(s0)
	ld	a0,-48(s0)
	ld	a1,-40(s0)
	call	__unordtf2
	mv	a5,a0
	bne	a5,zero,.L465
	ld	a4,-48(s0)
	ld	a5,-40(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a4
	mv	a1,a5
	call	__addtf3
	mv	a2,a0
	mv	a3,a1
	mv	a4,a2
	mv	a5,a3
	mv	a2,a4
	mv	a3,a5
	ld	a0,-48(s0)
	ld	a1,-40(s0)
	call	__netf2
	mv	a5,a0
	beq	a5,zero,.L465
	lw	a5,-52(s0)
	sext.w	a5,a5
	bge	a5,zero,.L467
	lui	a3,%hi(.LC11)
	ld	a4,%lo(.LC11)(a3)
	ld	a5,%lo(.LC11+8)(a3)
	j	.L468
.L467:
	lui	a3,%hi(.LC12)
	ld	a4,%lo(.LC12)(a3)
	ld	a5,%lo(.LC12+8)(a3)
.L468:
	sd	a4,-32(s0)
	sd	a5,-24(s0)
.L471:
	lw	a5,-52(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L469
	ld	a2,-32(s0)
	ld	a3,-24(s0)
	ld	a0,-48(s0)
	ld	a1,-40(s0)
	call	__multf3
	mv	a4,a0
	mv	a5,a1
	sd	a4,-48(s0)
	sd	a5,-40(s0)
.L469:
	lw	a5,-52(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,-52(s0)
	lw	a5,-52(s0)
	sext.w	a5,a5
	beq	a5,zero,.L474
	ld	a2,-32(s0)
	ld	a3,-24(s0)
	ld	a0,-32(s0)
	ld	a1,-24(s0)
	call	__multf3
	mv	a4,a0
	mv	a5,a1
	sd	a4,-32(s0)
	sd	a5,-24(s0)
	j	.L471
.L474:
	nop
.L465:
	ld	a4,-48(s0)
	ld	a5,-40(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.align	1
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-48(s0)
	sd	a5,-24(s0)
	ld	a5,-40(s0)
	sd	a5,-32(s0)
	j	.L476
.L477:
	ld	a5,-24(s0)
	addi	a4,a5,1
	sd	a4,-24(s0)
	lbu	a3,0(a5)
	ld	a5,-32(s0)
	addi	a4,a5,1
	sd	a4,-32(s0)
	lbu	a4,0(a5)
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-56(s0)
	addi	a5,a5,-1
	sd	a5,-56(s0)
.L476:
	ld	a5,-56(s0)
	bne	a5,zero,.L477
	ld	a5,-40(s0)
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE92:
	.size	memxor, .-memxor
	.align	1
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB93:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a0,-40(s0)
	call	strlen
	mv	a4,a0
	ld	a5,-40(s0)
	add	a5,a5,a4
	sd	a5,-24(s0)
	j	.L480
.L482:
	ld	a5,-48(s0)
	addi	a5,a5,1
	sd	a5,-48(s0)
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
	ld	a5,-56(s0)
	addi	a5,a5,-1
	sd	a5,-56(s0)
.L480:
	ld	a5,-56(s0)
	beq	a5,zero,.L481
	ld	a5,-48(s0)
	lbu	a4,0(a5)
	ld	a5,-24(s0)
	sb	a4,0(a5)
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L482
.L481:
	ld	a5,-56(s0)
	bne	a5,zero,.L483
	ld	a5,-24(s0)
	sb	zero,0(a5)
.L483:
	ld	a5,-40(s0)
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE93:
	.size	strncat, .-strncat
	.align	1
	.globl	strnlen
	.type	strnlen, @function
strnlen:
.LFB94:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	zero,-24(s0)
	j	.L486
.L491:
	nop
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L486:
	ld	a4,-24(s0)
	ld	a5,-48(s0)
	bgeu	a4,a5,.L487
	ld	a4,-40(s0)
	ld	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L491
.L487:
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.align	1
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	j	.L493
.L497:
	ld	a5,-48(s0)
	sd	a5,-24(s0)
	j	.L494
.L496:
	ld	a5,-24(s0)
	addi	a4,a5,1
	sd	a4,-24(s0)
	lbu	a4,0(a5)
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	bne	a4,a5,.L494
	ld	a5,-40(s0)
	j	.L495
.L494:
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L496
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L493:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L497
	li	a5,0
.L495:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE95:
	.size	strpbrk, .-strpbrk
	.align	1
	.globl	strrchr
	.type	strrchr, @function
strrchr:
.LFB96:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a4,-36(s0)
	sd	zero,-24(s0)
.L500:
	lbu	a4,0(a5)
	sext.w	a4,a4
	lw	a3,-36(s0)
	sext.w	a3,a3
	bne	a3,a4,.L499
	sd	a5,-24(s0)
.L499:
	mv	a4,a5
	addi	a5,a4,1
	lbu	a4,0(a4)
	bne	a4,zero,.L500
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE96:
	.size	strrchr, .-strrchr
	.align	1
	.globl	strstr
	.type	strstr, @function
strstr:
.LFB97:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a0,-48(s0)
	call	strlen
	sd	a0,-32(s0)
	ld	a5,-32(s0)
	bne	a5,zero,.L505
	ld	a5,-40(s0)
	j	.L504
.L507:
	ld	a2,-32(s0)
	ld	a1,-48(s0)
	ld	a0,-24(s0)
	call	strncmp
	mv	a5,a0
	bne	a5,zero,.L506
	ld	a5,-24(s0)
	j	.L504
.L506:
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L505:
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	ld	a0,-24(s0)
	call	strchr
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	bne	a5,zero,.L507
	li	a5,0
.L504:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE97:
	.size	strstr, .-strstr
	.align	1
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	fsd	fa0,-24(s0)
	fsd	fa1,-32(s0)
	fld	fa5,-24(s0)
	fmv.d.x	fa4,zero
	flt.d	a5,fa5,fa4
	bne	a5,zero,.L516
	j	.L509
.L516:
	fld	fa5,-32(s0)
	fmv.d.x	fa4,zero
	fgt.d	a5,fa5,fa4
	bne	a5,zero,.L511
.L509:
	fld	fa5,-24(s0)
	fmv.d.x	fa4,zero
	fgt.d	a5,fa5,fa4
	bne	a5,zero,.L517
	j	.L512
.L517:
	fld	fa5,-32(s0)
	fmv.d.x	fa4,zero
	flt.d	a5,fa5,fa4
	bne	a5,zero,.L511
	j	.L512
.L511:
	fld	fa5,-24(s0)
	fneg.d	fa5,fa5
	j	.L515
.L512:
	fld	fa5,-24(s0)
.L515:
	fmv.d	fa0,fa5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE98:
	.size	copysign, .-copysign
	.align	1
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB99:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	sd	a3,-64(s0)
	ld	a4,-48(s0)
	ld	a5,-64(s0)
	sub	a5,a4,a5
	ld	a4,-40(s0)
	add	a5,a4,a5
	sd	a5,-32(s0)
	ld	a5,-64(s0)
	bne	a5,zero,.L521
	ld	a5,-40(s0)
	j	.L522
.L521:
	ld	a4,-48(s0)
	ld	a5,-64(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	beq	a5,zero,.L523
	li	a5,0
	j	.L522
.L523:
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	j	.L524
.L526:
	ld	a5,-24(s0)
	lbu	a4,0(a5)
	ld	a5,-56(s0)
	lbu	a5,0(a5)
	bne	a4,a5,.L525
	ld	a5,-24(s0)
	addi	a4,a5,1
	ld	a5,-56(s0)
	addi	a3,a5,1
	ld	a5,-64(s0)
	addi	a5,a5,-1
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	bne	a5,zero,.L525
	ld	a5,-24(s0)
	j	.L522
.L525:
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L524:
	ld	a4,-24(s0)
	ld	a5,-32(s0)
	bleu	a4,a5,.L526
	li	a5,0
.L522:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE99:
	.size	memmem, .-memmem
	.align	1
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB100:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	ld	a2,-40(s0)
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	memcpy
	mv	a4,a0
	ld	a5,-40(s0)
	add	a5,a4,a5
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE100:
	.size	mempcpy, .-mempcpy
	.align	1
	.globl	frexp
	.type	frexp, @function
frexp:
.LFB101:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	fsd	fa0,-40(s0)
	sd	a0,-48(s0)
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	fld	fa5,-40(s0)
	fmv.d.x	fa4,zero
	flt.d	a5,fa5,fa4
	bne	a5,zero,.L542
	j	.L530
.L542:
	fld	fa5,-40(s0)
	fneg.d	fa5,fa5
	fsd	fa5,-40(s0)
	li	a5,1
	sw	a5,-20(s0)
.L530:
	fld	fa4,-40(s0)
	lui	a5,%hi(.LC13)
	fld	fa5,%lo(.LC13)(a5)
	fge.d	a5,fa4,fa5
	bne	a5,zero,.L534
	j	.L545
.L535:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
	fld	fa4,-40(s0)
	lui	a5,%hi(.LC10)
	fld	fa5,%lo(.LC10)(a5)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
.L534:
	fld	fa4,-40(s0)
	lui	a5,%hi(.LC13)
	fld	fa5,%lo(.LC13)(a5)
	fge.d	a5,fa4,fa5
	bne	a5,zero,.L535
	j	.L536
.L545:
	fld	fa4,-40(s0)
	lui	a5,%hi(.LC9)
	fld	fa5,%lo(.LC9)(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L544
	j	.L536
.L544:
	fld	fa5,-40(s0)
	fmv.d.x	fa4,zero
	feq.d	a5,fa5,fa4
	bne	a5,zero,.L536
	j	.L538
.L539:
	lw	a5,-24(s0)
	addiw	a5,a5,-1
	sw	a5,-24(s0)
	fld	fa5,-40(s0)
	fadd.d	fa5,fa5,fa5
	fsd	fa5,-40(s0)
.L538:
	fld	fa4,-40(s0)
	lui	a5,%hi(.LC9)
	fld	fa5,%lo(.LC9)(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L539
.L536:
	ld	a5,-48(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	sext.w	a5,a5
	beq	a5,zero,.L540
	fld	fa5,-40(s0)
	fneg.d	fa5,fa5
	fsd	fa5,-40(s0)
.L540:
	fld	fa5,-40(s0)
	fmv.d	fa0,fa5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.align	1
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	zero,-24(s0)
	ld	a5,-40(s0)
	sd	a5,-32(s0)
	j	.L548
.L550:
	ld	a5,-32(s0)
	andi	a5,a5,1
	beq	a5,zero,.L549
	ld	a4,-24(s0)
	ld	a5,-48(s0)
	add	a5,a4,a5
	sd	a5,-24(s0)
.L549:
	ld	a5,-48(s0)
	slli	a5,a5,1
	sd	a5,-48(s0)
	ld	a5,-32(s0)
	srli	a5,a5,1
	sd	a5,-32(s0)
.L548:
	ld	a5,-32(s0)
	bne	a5,zero,.L550
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE102:
	.size	__muldi3, .-__muldi3
	.align	1
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB103:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sd	a2,-48(s0)
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	li	a5,1
	sw	a5,-20(s0)
	sw	zero,-24(s0)
	j	.L553
.L555:
	lw	a5,-40(s0)
	slliw	a5,a5,1
	sw	a5,-40(s0)
	lw	a5,-20(s0)
	slliw	a5,a5,1
	sw	a5,-20(s0)
.L553:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bgeu	a4,a5,.L556
	lw	a5,-20(s0)
	sext.w	a5,a5
	beq	a5,zero,.L556
	lw	a5,-40(s0)
	bge	a5,zero,.L555
	j	.L556
.L558:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L557
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	subw	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
.L557:
	lw	a5,-20(s0)
	srliw	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	srliw	a5,a5,1
	sw	a5,-40(s0)
.L556:
	lw	a5,-20(s0)
	sext.w	a5,a5
	bne	a5,zero,.L558
	ld	a5,-48(s0)
	beq	a5,zero,.L559
	lw	a5,-36(s0)
	j	.L560
.L559:
	lw	a5,-24(s0)
.L560:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.align	1
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-33(s0)
	lbu	a5,-33(s0)
	andi	a5,a5,0xff
	bne	a5,zero,.L562
	li	a5,7
	j	.L563
.L562:
	lbu	a5,-33(s0)
	sext.w	a5,a5
	slliw	a5,a5,8
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	mv	a0,a5
	call	__clzdi2
	mv	a5,a0
	slli	a5,a5,32
	srli	a5,a5,32
	addi	a5,a5,-32
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
.L563:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2, .-__clrsbqi2
	.align	1
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	ld	a5,-40(s0)
	bge	a5,zero,.L565
	ld	a5,-40(s0)
	not	a5,a5
	sd	a5,-40(s0)
.L565:
	ld	a5,-40(s0)
	bne	a5,zero,.L566
	li	a5,63
	j	.L567
.L566:
	ld	a5,-40(s0)
	mv	a0,a5
	call	__clzdi2
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
.L567:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2, .-__clrsbdi2
	.align	1
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	sw	zero,-20(s0)
	j	.L569
.L571:
	lw	a5,-36(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L570
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	addw	a5,a4,a5
	sw	a5,-20(s0)
.L570:
	lw	a5,-36(s0)
	srliw	a5,a5,1
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	slliw	a5,a5,1
	sw	a5,-40(s0)
.L569:
	lw	a5,-36(s0)
	sext.w	a5,a5
	bne	a5,zero,.L571
	lw	a5,-20(s0)
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE106:
	.size	__mulsi3, .-__mulsi3
	.align	1
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	mv	a5,a2
	sw	a5,-68(s0)
	lw	a5,-68(s0)
	srliw	a5,a5,3
	sw	a5,-28(s0)
	lw	a5,-68(s0)
	andi	a5,a5,-8
	sw	a5,-24(s0)
	ld	a5,-56(s0)
	sd	a5,-40(s0)
	ld	a5,-64(s0)
	sd	a5,-48(s0)
	ld	a4,-40(s0)
	ld	a5,-48(s0)
	bltu	a4,a5,.L574
	lwu	a5,-68(s0)
	ld	a4,-48(s0)
	add	a5,a4,a5
	ld	a4,-40(s0)
	bleu	a4,a5,.L581
.L574:
	sw	zero,-20(s0)
	j	.L576
.L577:
	lwu	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-64(s0)
	add	a4,a4,a5
	lwu	a5,-20(s0)
	slli	a5,a5,3
	ld	a3,-56(s0)
	add	a5,a3,a5
	ld	a4,0(a4)
	sd	a4,0(a5)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L576:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L577
	j	.L578
.L579:
	lwu	a5,-24(s0)
	ld	a4,-48(s0)
	add	a4,a4,a5
	lwu	a5,-24(s0)
	ld	a3,-40(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L578:
	lw	a5,-68(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bgtu	a4,a5,.L579
	j	.L580
.L582:
	lwu	a5,-68(s0)
	ld	a4,-48(s0)
	add	a4,a4,a5
	lwu	a5,-68(s0)
	ld	a3,-40(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L581:
	lw	a5,-68(s0)
	addiw	a4,a5,-1
	sw	a4,-68(s0)
	bne	a5,zero,.L582
	nop
.L580:
	nop
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.align	1
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	mv	a5,a2
	sw	a5,-68(s0)
	lw	a5,-68(s0)
	srliw	a5,a5,1
	sw	a5,-24(s0)
	ld	a5,-56(s0)
	sd	a5,-32(s0)
	ld	a5,-64(s0)
	sd	a5,-40(s0)
	ld	a4,-32(s0)
	ld	a5,-40(s0)
	bltu	a4,a5,.L584
	lwu	a5,-68(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a4,-32(s0)
	bleu	a4,a5,.L590
.L584:
	sw	zero,-20(s0)
	j	.L586
.L587:
	lwu	a5,-20(s0)
	slli	a5,a5,1
	ld	a4,-64(s0)
	add	a4,a4,a5
	lwu	a5,-20(s0)
	slli	a5,a5,1
	ld	a3,-56(s0)
	add	a5,a3,a5
	lh	a4,0(a4)
	sh	a4,0(a5)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L586:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L587
	lw	a5,-68(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L589
	lw	a5,-68(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-68(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	ld	a3,-32(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	j	.L589
.L591:
	lwu	a5,-68(s0)
	ld	a4,-40(s0)
	add	a4,a4,a5
	lwu	a5,-68(s0)
	ld	a3,-32(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L590:
	lw	a5,-68(s0)
	addiw	a4,a5,-1
	sw	a4,-68(s0)
	bne	a5,zero,.L591
	nop
.L589:
	nop
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.align	1
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	mv	a5,a2
	sw	a5,-68(s0)
	lw	a5,-68(s0)
	srliw	a5,a5,2
	sw	a5,-28(s0)
	lw	a5,-68(s0)
	andi	a5,a5,-4
	sw	a5,-24(s0)
	ld	a5,-56(s0)
	sd	a5,-40(s0)
	ld	a5,-64(s0)
	sd	a5,-48(s0)
	ld	a4,-40(s0)
	ld	a5,-48(s0)
	bltu	a4,a5,.L593
	lwu	a5,-68(s0)
	ld	a4,-48(s0)
	add	a5,a4,a5
	ld	a4,-40(s0)
	bleu	a4,a5,.L600
.L593:
	sw	zero,-20(s0)
	j	.L595
.L596:
	lwu	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-64(s0)
	add	a4,a4,a5
	lwu	a5,-20(s0)
	slli	a5,a5,2
	ld	a3,-56(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L595:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L596
	j	.L597
.L598:
	lwu	a5,-24(s0)
	ld	a4,-48(s0)
	add	a4,a4,a5
	lwu	a5,-24(s0)
	ld	a3,-40(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L597:
	lw	a5,-68(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bgtu	a4,a5,.L598
	j	.L599
.L601:
	lwu	a5,-68(s0)
	ld	a4,-48(s0)
	add	a4,a4,a5
	lwu	a5,-68(s0)
	ld	a3,-40(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L600:
	lw	a5,-68(s0)
	addiw	a4,a5,-1
	sw	a4,-68(s0)
	bne	a5,zero,.L601
	nop
.L599:
	nop
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE109:
	.size	__cmovw, .-__cmovw
	.align	1
	.globl	__modi
	.type	__modi, @function
__modi:
.LFB110:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE110:
	.size	__modi, .-__modi
	.align	1
	.globl	__uitod
	.type	__uitod, @function
__uitod:
.LFB111:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	fcvt.d.wu	fa5,a5
	fmv.d	fa0,fa5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE111:
	.size	__uitod, .-__uitod
	.align	1
	.globl	__uitof
	.type	__uitof, @function
__uitof:
.LFB112:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	fcvt.s.wu	fa5,a5
	fmv.s	fa0,fa5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE112:
	.size	__uitof, .-__uitof
	.align	1
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
.LFB113:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	fcvt.d.lu	fa5,a5
	fmv.d	fa0,fa5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE113:
	.size	__ulltod, .-__ulltod
	.align	1
	.globl	__ulltof
	.type	__ulltof, @function
__ulltof:
.LFB114:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	fcvt.s.lu	fa5,a5
	fmv.s	fa0,fa5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE114:
	.size	__ulltof, .-__ulltof
	.align	1
	.globl	__umodi
	.type	__umodi, @function
__umodi:
.LFB115:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	remuw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE115:
	.size	__umodi, .-__umodi
	.align	1
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB116:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sh	a5,-34(s0)
	sw	zero,-20(s0)
	j	.L615
.L618:
	lhu	a5,-34(s0)
	sext.w	a4,a5
	li	a5,15
	lw	a3,-20(s0)
	subw	a5,a5,a3
	sext.w	a5,a5
	sraw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L620
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L615:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L618
	j	.L617
.L620:
	nop
.L617:
	lw	a5,-20(s0)
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE116:
	.size	__clzhi2, .-__clzhi2
	.align	1
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sh	a5,-34(s0)
	sw	zero,-20(s0)
	j	.L622
.L625:
	lhu	a5,-34(s0)
	sext.w	a5,a5
	lw	a4,-20(s0)
	sraw	a5,a5,a4
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L627
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L622:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L625
	j	.L624
.L627:
	nop
.L624:
	lw	a5,-20(s0)
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.align	1
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	fsw	fa0,-20(s0)
	flw	fa4,-20(s0)
	lui	a5,%hi(.LC14)
	flw	fa5,%lo(.LC14)(a5)
	fge.s	a5,fa4,fa5
	bne	a5,zero,.L632
	j	.L633
.L632:
	flw	fa4,-20(s0)
	lui	a5,%hi(.LC14)
	flw	fa5,%lo(.LC14)(a5)
	fsub.s	fa5,fa4,fa5
	fcvt.l.s a4,fa5,rtz
	li	a5,32768
	add	a5,a4,a5
	j	.L631
.L633:
	flw	fa5,-20(s0)
	fcvt.l.s a5,fa5,rtz
.L631:
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE118:
	.size	__fixunssfsi, .-__fixunssfsi
	.align	1
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB119:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sh	a5,-34(s0)
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	j	.L635
.L637:
	lhu	a5,-34(s0)
	sext.w	a5,a5
	lw	a4,-20(s0)
	sraw	a5,a5,a4
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L636
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L636:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L635:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L637
	lw	a5,-24(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE119:
	.size	__parityhi2, .-__parityhi2
	.align	1
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB120:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sh	a5,-34(s0)
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	j	.L640
.L642:
	lhu	a5,-34(s0)
	sext.w	a5,a5
	lw	a4,-20(s0)
	sraw	a5,a5,a4
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L641
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L641:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L640:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L642
	lw	a5,-24(s0)
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE120:
	.size	__popcounthi2, .-__popcounthi2
	.align	1
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB121:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	sw	zero,-20(s0)
	j	.L645
.L647:
	lw	a5,-36(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L646
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	addw	a5,a4,a5
	sw	a5,-20(s0)
.L646:
	lw	a5,-36(s0)
	srliw	a5,a5,1
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	slliw	a5,a5,1
	sw	a5,-40(s0)
.L645:
	lw	a5,-36(s0)
	sext.w	a5,a5
	bne	a5,zero,.L647
	lw	a5,-20(s0)
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	1
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	sw	zero,-20(s0)
	lw	a5,-36(s0)
	sext.w	a5,a5
	bne	a5,zero,.L652
	li	a5,0
	j	.L651
.L654:
	lw	a5,-40(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L653
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	addw	a5,a4,a5
	sw	a5,-20(s0)
.L653:
	lw	a5,-36(s0)
	slliw	a5,a5,1
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	srliw	a5,a5,1
	sw	a5,-40(s0)
.L652:
	lw	a5,-40(s0)
	sext.w	a5,a5
	bne	a5,zero,.L654
	lw	a5,-20(s0)
.L651:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	1
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a3,a1
	mv	a4,a2
	sw	a5,-36(s0)
	mv	a5,a3
	sw	a5,-40(s0)
	mv	a5,a4
	sw	a5,-44(s0)
	li	a5,1
	sw	a5,-20(s0)
	sw	zero,-24(s0)
	j	.L656
.L658:
	lw	a5,-40(s0)
	slliw	a5,a5,1
	sw	a5,-40(s0)
	lw	a5,-20(s0)
	slliw	a5,a5,1
	sw	a5,-20(s0)
.L656:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bgeu	a4,a5,.L659
	lw	a5,-20(s0)
	sext.w	a5,a5
	beq	a5,zero,.L659
	lw	a5,-40(s0)
	bge	a5,zero,.L658
	j	.L659
.L661:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L660
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	subw	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	or	a5,a4,a5
	sw	a5,-24(s0)
.L660:
	lw	a5,-20(s0)
	srliw	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	srliw	a5,a5,1
	sw	a5,-40(s0)
.L659:
	lw	a5,-20(s0)
	sext.w	a5,a5
	bne	a5,zero,.L661
	lw	a5,-44(s0)
	sext.w	a5,a5
	beq	a5,zero,.L662
	lw	a5,-36(s0)
	j	.L663
.L662:
	lw	a5,-24(s0)
.L663:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	1
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	fsw	fa0,-20(s0)
	fsw	fa1,-24(s0)
	flw	fa4,-20(s0)
	flw	fa5,-24(s0)
	flt.s	a5,fa4,fa5
	bne	a5,zero,.L670
	j	.L672
.L670:
	li	a5,-1
	j	.L667
.L672:
	flw	fa4,-20(s0)
	flw	fa5,-24(s0)
	fgt.s	a5,fa4,fa5
	bne	a5,zero,.L671
	j	.L673
.L671:
	li	a5,1
	j	.L667
.L673:
	li	a5,0
.L667:
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	1
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	fsd	fa0,-24(s0)
	fsd	fa1,-32(s0)
	fld	fa4,-24(s0)
	fld	fa5,-32(s0)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L680
	j	.L682
.L680:
	li	a5,-1
	j	.L677
.L682:
	fld	fa4,-24(s0)
	fld	fa5,-32(s0)
	fgt.d	a5,fa4,fa5
	bne	a5,zero,.L681
	j	.L683
.L681:
	li	a5,1
	j	.L677
.L683:
	li	a5,0
.L677:
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	1
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB126:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	ld	a4,-24(s0)
	ld	a5,-32(s0)
	mul	a5,a4,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE126:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	1
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB127:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	ld	a4,-24(s0)
	ld	a5,-32(s0)
	mul	a5,a4,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE127:
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	1
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB128:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	sw	zero,-24(s0)
	sw	zero,-28(s0)
	lw	a5,-40(s0)
	sext.w	a5,a5
	bge	a5,zero,.L689
	lw	a5,-40(s0)
	negw	a5,a5
	sw	a5,-40(s0)
	li	a5,1
	sw	a5,-24(s0)
.L689:
	sb	zero,-17(s0)
	j	.L690
.L693:
	lw	a5,-40(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L691
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	addw	a5,a4,a5
	sw	a5,-28(s0)
.L691:
	lw	a5,-36(s0)
	slliw	a5,a5,1
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sraiw	a5,a5,1
	sw	a5,-40(s0)
	lbu	a5,-17(s0)
	addiw	a5,a5,1
	sb	a5,-17(s0)
.L690:
	lw	a5,-40(s0)
	sext.w	a5,a5
	beq	a5,zero,.L692
	lbu	a5,-17(s0)
	andi	a4,a5,0xff
	li	a5,31
	bleu	a4,a5,.L693
.L692:
	lw	a5,-24(s0)
	sext.w	a5,a5
	beq	a5,zero,.L694
	lw	a5,-28(s0)
	negw	a5,a5
	sext.w	a5,a5
	j	.L695
.L694:
	lw	a5,-28(s0)
.L695:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.align	1
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sw	zero,-20(s0)
	ld	a5,-40(s0)
	bge	a5,zero,.L698
	ld	a5,-40(s0)
	neg	a5,a5
	sd	a5,-40(s0)
	lw	a5,-20(s0)
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-20(s0)
.L698:
	ld	a5,-48(s0)
	bge	a5,zero,.L699
	ld	a5,-48(s0)
	neg	a5,a5
	sd	a5,-48(s0)
	lw	a5,-20(s0)
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-20(s0)
.L699:
	ld	a5,-40(s0)
	sext.w	a5,a5
	ld	a4,-48(s0)
	sext.w	a4,a4
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	__udivmodsi4
	mv	a5,a0
	slli	a5,a5,32
	srli	a5,a5,32
	sd	a5,-32(s0)
	lw	a5,-20(s0)
	sext.w	a5,a5
	beq	a5,zero,.L700
	ld	a5,-32(s0)
	neg	a5,a5
	sd	a5,-32(s0)
.L700:
	ld	a5,-32(s0)
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.align	1
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sw	zero,-20(s0)
	ld	a5,-40(s0)
	bge	a5,zero,.L703
	ld	a5,-40(s0)
	neg	a5,a5
	sd	a5,-40(s0)
	li	a5,1
	sw	a5,-20(s0)
.L703:
	ld	a5,-48(s0)
	bge	a5,zero,.L704
	ld	a5,-48(s0)
	neg	a5,a5
	sd	a5,-48(s0)
.L704:
	ld	a5,-40(s0)
	sext.w	a5,a5
	ld	a4,-48(s0)
	sext.w	a4,a4
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	__udivmodsi4
	mv	a5,a0
	slli	a5,a5,32
	srli	a5,a5,32
	sd	a5,-32(s0)
	lw	a5,-20(s0)
	sext.w	a5,a5
	beq	a5,zero,.L705
	ld	a5,-32(s0)
	neg	a5,a5
	sd	a5,-32(s0)
.L705:
	ld	a5,-32(s0)
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.align	1
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a3,a1
	mv	a4,a2
	sh	a5,-34(s0)
	mv	a5,a3
	sh	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	li	a5,1
	sh	a5,-18(s0)
	sh	zero,-20(s0)
	j	.L708
.L710:
	lhu	a5,-36(s0)
	slliw	a5,a5,1
	sh	a5,-36(s0)
	lhu	a5,-18(s0)
	slliw	a5,a5,1
	sh	a5,-18(s0)
.L708:
	lhu	a4,-36(s0)
	lhu	a5,-34(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bgeu	a4,a5,.L711
	lhu	a5,-18(s0)
	sext.w	a5,a5
	beq	a5,zero,.L711
	lh	a5,-36(s0)
	bge	a5,zero,.L710
	j	.L711
.L713:
	lhu	a4,-34(s0)
	lhu	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L712
	lhu	a5,-34(s0)
	mv	a4,a5
	lhu	a5,-36(s0)
	subw	a5,a4,a5
	sh	a5,-34(s0)
	lhu	a5,-20(s0)
	mv	a4,a5
	lhu	a5,-18(s0)
	or	a5,a4,a5
	sh	a5,-20(s0)
.L712:
	lhu	a5,-18(s0)
	srliw	a5,a5,1
	sh	a5,-18(s0)
	lhu	a5,-36(s0)
	srliw	a5,a5,1
	sh	a5,-36(s0)
.L711:
	lhu	a5,-18(s0)
	sext.w	a5,a5
	bne	a5,zero,.L713
	lw	a5,-40(s0)
	sext.w	a5,a5
	beq	a5,zero,.L714
	lhu	a5,-34(s0)
	j	.L715
.L714:
	lhu	a5,-20(s0)
.L715:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	1
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	sw	a5,-52(s0)
	li	a5,1
	sd	a5,-24(s0)
	sd	zero,-32(s0)
	j	.L717
.L719:
	ld	a5,-48(s0)
	slli	a5,a5,1
	sd	a5,-48(s0)
	ld	a5,-24(s0)
	slli	a5,a5,1
	sd	a5,-24(s0)
.L717:
	ld	a4,-48(s0)
	ld	a5,-40(s0)
	bgeu	a4,a5,.L720
	ld	a5,-24(s0)
	beq	a5,zero,.L720
	ld	a4,-48(s0)
	li	a5,1
	slli	a5,a5,31
	and	a5,a4,a5
	beq	a5,zero,.L719
	j	.L720
.L722:
	ld	a4,-40(s0)
	ld	a5,-48(s0)
	bltu	a4,a5,.L721
	ld	a4,-40(s0)
	ld	a5,-48(s0)
	sub	a5,a4,a5
	sd	a5,-40(s0)
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	or	a5,a4,a5
	sd	a5,-32(s0)
.L721:
	ld	a5,-24(s0)
	srli	a5,a5,1
	sd	a5,-24(s0)
	ld	a5,-48(s0)
	srli	a5,a5,1
	sd	a5,-48(s0)
.L720:
	ld	a5,-24(s0)
	bne	a5,zero,.L722
	lw	a5,-52(s0)
	sext.w	a5,a5
	beq	a5,zero,.L723
	ld	a5,-40(s0)
	j	.L724
.L723:
	ld	a5,-32(s0)
.L724:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	1
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	mv	a5,a1
	sw	a5,-60(s0)
	li	a5,32
	sw	a5,-20(s0)
	ld	a5,-56(s0)
	sd	a5,-32(s0)
	lw	a5,-60(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L726
	sw	zero,-40(s0)
	lw	a5,-32(s0)
	lw	a4,-60(s0)
	mv	a3,a4
	lw	a4,-20(s0)
	subw	a4,a3,a4
	sext.w	a4,a4
	sllw	a5,a5,a4
	sext.w	a5,a5
	sw	a5,-36(s0)
	j	.L727
.L726:
	lw	a5,-60(s0)
	sext.w	a5,a5
	bne	a5,zero,.L728
	ld	a5,-56(s0)
	j	.L730
.L728:
	lw	a5,-32(s0)
	lw	a4,-60(s0)
	sllw	a5,a5,a4
	sext.w	a5,a5
	sw	a5,-40(s0)
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sllw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-32(s0)
	lw	a3,-20(s0)
	mv	a2,a3
	lw	a3,-60(s0)
	subw	a3,a2,a3
	sext.w	a3,a3
	srlw	a5,a5,a3
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-36(s0)
.L727:
	ld	a5,-40(s0)
.L730:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.align	1
	.globl	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-80(s0)
	sd	a1,-72(s0)
	mv	a5,a2
	sw	a5,-84(s0)
	li	a5,64
	sw	a5,-20(s0)
	ld	a5,-80(s0)
	sd	a5,-48(s0)
	ld	a5,-72(s0)
	sd	a5,-40(s0)
	lw	a5,-84(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L732
	sd	zero,-64(s0)
	ld	a5,-48(s0)
	lw	a4,-84(s0)
	mv	a3,a4
	lw	a4,-20(s0)
	subw	a4,a3,a4
	sext.w	a4,a4
	sll	a5,a5,a4
	sd	a5,-56(s0)
	j	.L733
.L732:
	lw	a5,-84(s0)
	sext.w	a5,a5
	bne	a5,zero,.L734
	ld	a4,-80(s0)
	ld	a5,-72(s0)
	j	.L736
.L734:
	ld	a5,-48(s0)
	lw	a4,-84(s0)
	sll	a5,a5,a4
	sd	a5,-64(s0)
	ld	a5,-40(s0)
	mv	a4,a5
	lw	a5,-84(s0)
	sll	a4,a4,a5
	ld	a5,-48(s0)
	lw	a3,-20(s0)
	mv	a2,a3
	lw	a3,-84(s0)
	subw	a3,a2,a3
	sext.w	a3,a3
	srl	a5,a5,a3
	or	a5,a4,a5
	sd	a5,-56(s0)
.L733:
	ld	a4,-64(s0)
	ld	a5,-56(s0)
.L736:
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE134:
	.size	__ashlti3, .-__ashlti3
	.align	1
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	mv	a5,a1
	sw	a5,-60(s0)
	li	a5,32
	sw	a5,-20(s0)
	ld	a5,-56(s0)
	sd	a5,-32(s0)
	lw	a5,-60(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L738
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	sraw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-36(s0)
	lw	a4,-28(s0)
	lw	a5,-60(s0)
	mv	a3,a5
	lw	a5,-20(s0)
	subw	a5,a3,a5
	sext.w	a5,a5
	sraw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-40(s0)
	j	.L739
.L738:
	lw	a5,-60(s0)
	sext.w	a5,a5
	bne	a5,zero,.L740
	ld	a5,-56(s0)
	j	.L742
.L740:
	lw	a5,-28(s0)
	lw	a4,-60(s0)
	sraw	a5,a5,a4
	sext.w	a5,a5
	sw	a5,-36(s0)
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	mv	a3,a5
	lw	a5,-60(s0)
	subw	a5,a3,a5
	sext.w	a5,a5
	sllw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-32(s0)
	lw	a3,-60(s0)
	srlw	a5,a5,a3
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-40(s0)
.L739:
	ld	a5,-40(s0)
.L742:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.align	1
	.globl	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-80(s0)
	sd	a1,-72(s0)
	mv	a5,a2
	sw	a5,-84(s0)
	li	a5,64
	sw	a5,-20(s0)
	ld	a5,-80(s0)
	sd	a5,-48(s0)
	ld	a5,-72(s0)
	sd	a5,-40(s0)
	lw	a5,-84(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L744
	ld	a4,-40(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	sra	a5,a4,a5
	sd	a5,-56(s0)
	ld	a4,-40(s0)
	lw	a5,-84(s0)
	mv	a3,a5
	lw	a5,-20(s0)
	subw	a5,a3,a5
	sext.w	a5,a5
	sra	a5,a4,a5
	sd	a5,-64(s0)
	j	.L745
.L744:
	lw	a5,-84(s0)
	sext.w	a5,a5
	bne	a5,zero,.L746
	ld	a4,-80(s0)
	ld	a5,-72(s0)
	j	.L748
.L746:
	ld	a5,-40(s0)
	lw	a4,-84(s0)
	sra	a5,a5,a4
	sd	a5,-56(s0)
	ld	a5,-40(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	mv	a3,a5
	lw	a5,-84(s0)
	subw	a5,a3,a5
	sext.w	a5,a5
	sll	a4,a4,a5
	ld	a5,-48(s0)
	lw	a3,-84(s0)
	srl	a5,a5,a3
	or	a5,a4,a5
	sd	a5,-64(s0)
.L745:
	ld	a4,-64(s0)
	ld	a5,-56(s0)
.L748:
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE136:
	.size	__ashrti3, .-__ashrti3
	.align	1
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	srli	a4,a5,56
	ld	a5,-24(s0)
	srli	a3,a5,40
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a3,a5
	or	a4,a4,a5
	ld	a5,-24(s0)
	srli	a3,a5,24
	li	a5,16711680
	and	a5,a3,a5
	or	a4,a4,a5
	ld	a5,-24(s0)
	srli	a3,a5,8
	li	a5,255
	slli	a5,a5,24
	and	a5,a3,a5
	or	a4,a4,a5
	ld	a5,-24(s0)
	slli	a3,a5,8
	li	a5,255
	slli	a5,a5,32
	and	a5,a3,a5
	or	a4,a4,a5
	ld	a5,-24(s0)
	slli	a3,a5,24
	li	a5,255
	slli	a5,a5,40
	and	a5,a3,a5
	or	a4,a4,a5
	ld	a5,-24(s0)
	slli	a3,a5,40
	li	a5,255
	slli	a5,a5,48
	and	a5,a3,a5
	or	a4,a4,a5
	ld	a5,-24(s0)
	slli	a5,a5,56
	or	a5,a4,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE137:
	.size	__bswapdi2, .-__bswapdi2
	.align	1
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB138:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a5,a5,24
	sext.w	a4,a5
	lw	a5,-20(s0)
	srliw	a5,a5,8
	sext.w	a5,a5
	mv	a3,a5
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a3,a5
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-20(s0)
	slliw	a5,a5,8
	sext.w	a5,a5
	mv	a3,a5
	li	a5,16711680
	and	a5,a3,a5
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-20(s0)
	slliw	a5,a5,24
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE138:
	.size	__bswapsi2, .-__bswapsi2
	.align	1
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB139:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,65536
	bgeu	a4,a5,.L754
	li	a5,16
	j	.L755
.L754:
	li	a5,0
.L755:
	sw	a5,-24(s0)
	li	a5,16
	lw	a4,-24(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,-20(s0)
	srlw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L756
	li	a5,8
	j	.L757
.L756:
	li	a5,0
.L757:
	sw	a5,-24(s0)
	li	a5,8
	lw	a4,-24(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,-20(s0)
	srlw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	andi	a5,a5,240
	sext.w	a5,a5
	bne	a5,zero,.L758
	li	a5,4
	j	.L759
.L758:
	li	a5,0
.L759:
	sw	a5,-24(s0)
	li	a5,4
	lw	a4,-24(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,-20(s0)
	srlw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	andi	a5,a5,12
	sext.w	a5,a5
	bne	a5,zero,.L760
	li	a5,2
	j	.L761
.L760:
	li	a5,0
.L761:
	sw	a5,-24(s0)
	li	a5,2
	lw	a4,-24(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,-20(s0)
	srlw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	andi	a5,a5,2
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a4,a5
	li	a5,2
	lw	a3,-20(s0)
	subw	a5,a5,a3
	sext.w	a5,a5
	mulw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE139:
	.size	__clzsi2, .-__clzsi2
	.align	1
	.globl	__clzti2
	.type	__clzti2, @function
__clzti2:
.LFB140:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-64(s0)
	sd	a1,-56(s0)
	ld	a5,-64(s0)
	sd	a5,-48(s0)
	ld	a5,-56(s0)
	sd	a5,-40(s0)
	ld	a5,-40(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	negw	a5,a5
	sext.w	a5,a5
	sd	a5,-24(s0)
	ld	a4,-40(s0)
	ld	a5,-24(s0)
	not	a5,a5
	and	a5,a4,a5
	mv	a3,a5
	ld	a4,-48(s0)
	ld	a5,-24(s0)
	and	a5,a4,a5
	or	a5,a3,a5
	mv	a0,a5
	call	__clzdi2
	mv	a5,a0
	sext.w	a4,a5
	ld	a5,-24(s0)
	sext.w	a5,a5
	andi	a5,a5,64
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE140:
	.size	__clzti2, .-__clzti2
	.align	1
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB141:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a5,-48(s0)
	sd	a5,-32(s0)
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	bge	a4,a5,.L766
	li	a5,0
	j	.L771
.L766:
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	ble	a4,a5,.L768
	li	a5,2
	j	.L771
.L768:
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	bgeu	a4,a5,.L769
	li	a5,0
	j	.L771
.L769:
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	bleu	a4,a5,.L770
	li	a5,2
	j	.L771
.L770:
	li	a5,1
.L771:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE141:
	.size	__cmpdi2, .-__cmpdi2
	.align	1
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB142:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	__cmpdi2
	mv	a5,a0
	addiw	a5,a5,-1
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	1
	.globl	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
.LFB143:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-64(s0)
	sd	a1,-56(s0)
	sd	a2,-80(s0)
	sd	a3,-72(s0)
	ld	a5,-64(s0)
	sd	a5,-32(s0)
	ld	a5,-56(s0)
	sd	a5,-24(s0)
	ld	a5,-80(s0)
	sd	a5,-48(s0)
	ld	a5,-72(s0)
	sd	a5,-40(s0)
	ld	a4,-24(s0)
	ld	a5,-40(s0)
	bge	a4,a5,.L775
	li	a5,0
	j	.L780
.L775:
	ld	a4,-24(s0)
	ld	a5,-40(s0)
	ble	a4,a5,.L777
	li	a5,2
	j	.L780
.L777:
	ld	a4,-32(s0)
	ld	a5,-48(s0)
	bgeu	a4,a5,.L778
	li	a5,0
	j	.L780
.L778:
	ld	a4,-32(s0)
	ld	a5,-48(s0)
	bleu	a4,a5,.L779
	li	a5,2
	j	.L780
.L779:
	li	a5,1
.L780:
	mv	a0,a5
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE143:
	.size	__cmpti2, .-__cmpti2
	.align	1
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB144:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a5,a5
	bne	a5,zero,.L782
	li	a5,16
	j	.L783
.L782:
	li	a5,0
.L783:
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	srlw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	andi	a5,a5,255
	sext.w	a5,a5
	bne	a5,zero,.L784
	li	a5,8
	j	.L785
.L784:
	li	a5,0
.L785:
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	srlw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	andi	a5,a5,15
	sext.w	a5,a5
	bne	a5,zero,.L786
	li	a5,4
	j	.L787
.L786:
	li	a5,0
.L787:
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	srlw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	andi	a5,a5,3
	sext.w	a5,a5
	bne	a5,zero,.L788
	li	a5,2
	j	.L789
.L788:
	li	a5,0
.L789:
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	srlw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	andi	a5,a5,3
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	not	a5,a5
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a4,a5
	lw	a5,-20(s0)
	srliw	a5,a5,1
	sext.w	a5,a5
	li	a3,2
	subw	a5,a3,a5
	sext.w	a5,a5
	negw	a4,a4
	and	a5,a5,a4
	sext.w	a5,a5
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE144:
	.size	__ctzsi2, .-__ctzsi2
	.align	1
	.globl	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-64(s0)
	sd	a1,-56(s0)
	ld	a5,-64(s0)
	sd	a5,-48(s0)
	ld	a5,-56(s0)
	sd	a5,-40(s0)
	ld	a5,-48(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	negw	a5,a5
	sext.w	a5,a5
	sd	a5,-24(s0)
	ld	a4,-40(s0)
	ld	a5,-24(s0)
	and	a5,a4,a5
	mv	a3,a5
	ld	a4,-48(s0)
	ld	a5,-24(s0)
	not	a5,a5
	and	a5,a4,a5
	or	a5,a3,a5
	mv	a0,a5
	call	__ctzdi2
	mv	a5,a0
	sext.w	a4,a5
	ld	a5,-24(s0)
	sext.w	a5,a5
	andi	a5,a5,64
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE145:
	.size	__ctzti2, .-__ctzti2
	.align	1
	.globl	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
.LFB146:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-48(s0)
	sd	a1,-40(s0)
	ld	a5,-48(s0)
	sd	a5,-32(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a5,-32(s0)
	bne	a5,zero,.L794
	ld	a5,-24(s0)
	bne	a5,zero,.L795
	li	a5,0
	j	.L797
.L795:
	ld	a5,-24(s0)
	mv	a0,a5
	call	__ctzdi2
	mv	a5,a0
	sext.w	a5,a5
	addiw	a5,a5,65
	sext.w	a5,a5
	j	.L797
.L794:
	ld	a5,-32(s0)
	mv	a0,a5
	call	__ctzdi2
	mv	a5,a0
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
.L797:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE146:
	.size	__ffsti2, .-__ffsti2
	.align	1
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB147:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	mv	a5,a1
	sw	a5,-60(s0)
	li	a5,32
	sw	a5,-20(s0)
	ld	a5,-56(s0)
	sd	a5,-32(s0)
	lw	a5,-60(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L799
	sw	zero,-36(s0)
	lw	a5,-28(s0)
	lw	a4,-60(s0)
	mv	a3,a4
	lw	a4,-20(s0)
	subw	a4,a3,a4
	sext.w	a4,a4
	srlw	a5,a5,a4
	sext.w	a5,a5
	sw	a5,-40(s0)
	j	.L800
.L799:
	lw	a5,-60(s0)
	sext.w	a5,a5
	bne	a5,zero,.L801
	ld	a5,-56(s0)
	j	.L803
.L801:
	lw	a5,-28(s0)
	lw	a4,-60(s0)
	srlw	a5,a5,a4
	sext.w	a5,a5
	sw	a5,-36(s0)
	lw	a5,-28(s0)
	lw	a4,-20(s0)
	mv	a3,a4
	lw	a4,-60(s0)
	subw	a4,a3,a4
	sext.w	a4,a4
	sllw	a5,a5,a4
	sext.w	a4,a5
	lw	a5,-32(s0)
	lw	a3,-60(s0)
	srlw	a5,a5,a3
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-40(s0)
.L800:
	ld	a5,-40(s0)
.L803:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.align	1
	.globl	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-80(s0)
	sd	a1,-72(s0)
	mv	a5,a2
	sw	a5,-84(s0)
	li	a5,64
	sw	a5,-20(s0)
	ld	a4,-80(s0)
	ld	a5,-72(s0)
	sd	a4,-48(s0)
	sd	a5,-40(s0)
	lw	a5,-84(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L805
	sd	zero,-56(s0)
	ld	a5,-40(s0)
	lw	a4,-84(s0)
	mv	a3,a4
	lw	a4,-20(s0)
	subw	a4,a3,a4
	sext.w	a4,a4
	srl	a5,a5,a4
	sd	a5,-64(s0)
	j	.L806
.L805:
	lw	a5,-84(s0)
	sext.w	a5,a5
	bne	a5,zero,.L807
	ld	a4,-80(s0)
	ld	a5,-72(s0)
	j	.L809
.L807:
	ld	a5,-40(s0)
	lw	a4,-84(s0)
	srl	a5,a5,a4
	sd	a5,-56(s0)
	ld	a5,-40(s0)
	lw	a4,-20(s0)
	mv	a3,a4
	lw	a4,-84(s0)
	subw	a4,a3,a4
	sext.w	a4,a4
	sll	a4,a5,a4
	ld	a5,-48(s0)
	lw	a3,-84(s0)
	srl	a5,a5,a3
	or	a5,a4,a5
	sd	a5,-64(s0)
.L806:
	ld	a2,-64(s0)
	ld	a3,-56(s0)
	mv	a4,a2
	mv	a5,a3
.L809:
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.align	1
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-52(s0)
	mv	a5,a4
	sw	a5,-56(s0)
	li	a5,16
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,-1
	srlw	a5,a5,a4
	sw	a5,-24(s0)
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	and	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-56(s0)
	mv	a3,a5
	lw	a5,-24(s0)
	and	a5,a3,a5
	sext.w	a5,a5
	mulw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	srlw	a5,a5,a4
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	lw	a4,-24(s0)
	and	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-40(s0)
	lw	a5,-20(s0)
	lw	a4,-52(s0)
	srlw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-56(s0)
	mv	a3,a5
	lw	a5,-24(s0)
	and	a5,a3,a5
	sext.w	a5,a5
	mulw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sw	a5,-28(s0)
	lw	a4,-40(s0)
	lw	a5,-28(s0)
	mv	a3,a5
	lw	a5,-24(s0)
	and	a5,a3,a5
	sext.w	a5,a5
	lw	a3,-20(s0)
	sllw	a5,a5,a3
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-40(s0)
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	srlw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	srlw	a5,a5,a4
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	lw	a4,-24(s0)
	and	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-40(s0)
	lw	a5,-20(s0)
	lw	a4,-56(s0)
	srlw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-52(s0)
	mv	a3,a5
	lw	a5,-24(s0)
	and	a5,a3,a5
	sext.w	a5,a5
	mulw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sw	a5,-28(s0)
	lw	a4,-40(s0)
	lw	a5,-28(s0)
	mv	a3,a5
	lw	a5,-24(s0)
	and	a5,a3,a5
	sext.w	a5,a5
	lw	a3,-20(s0)
	sllw	a5,a5,a3
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	lw	a3,-28(s0)
	srlw	a5,a3,a5
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	mv	a3,a5
	lw	a5,-20(s0)
	lw	a4,-52(s0)
	srlw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-20(s0)
	lw	a2,-56(s0)
	srlw	a5,a2,a5
	sext.w	a5,a5
	mulw	a5,a4,a5
	sext.w	a5,a5
	addw	a5,a3,a5
	sext.w	a5,a5
	sw	a5,-36(s0)
	ld	a5,-40(s0)
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE149:
	.size	__muldsi3, .-__muldsi3
	.align	1
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB150:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	ld	a5,-56(s0)
	sd	a5,-24(s0)
	ld	a5,-64(s0)
	sd	a5,-32(s0)
	lw	a5,-24(s0)
	lw	a4,-32(s0)
	mv	a1,a4
	mv	a0,a5
	call	__muldsi3
	mv	a5,a0
	sd	a5,-40(s0)
	lw	a5,-36(s0)
	mv	a3,a5
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-32(s0)
	mulw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-24(s0)
	lw	a2,-28(s0)
	mulw	a5,a5,a2
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	addw	a5,a3,a5
	sext.w	a5,a5
	sw	a5,-36(s0)
	ld	a5,-40(s0)
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	1
	.globl	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	li	a5,32
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,-1
	srl	a5,a5,a4
	sd	a5,-32(s0)
	ld	a4,-72(s0)
	ld	a5,-32(s0)
	and	a4,a4,a5
	ld	a3,-80(s0)
	ld	a5,-32(s0)
	and	a5,a3,a5
	mul	a5,a4,a5
	sd	a5,-64(s0)
	ld	a5,-64(s0)
	lw	a4,-20(s0)
	srl	a5,a5,a4
	sd	a5,-40(s0)
	ld	a4,-64(s0)
	ld	a5,-32(s0)
	and	a5,a4,a5
	sd	a5,-64(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	ld	a5,-72(s0)
	srl	a4,a5,a4
	ld	a3,-80(s0)
	ld	a5,-32(s0)
	and	a5,a3,a5
	mul	a5,a4,a5
	ld	a4,-40(s0)
	add	a5,a4,a5
	sd	a5,-40(s0)
	ld	a4,-64(s0)
	ld	a3,-40(s0)
	ld	a5,-32(s0)
	and	a5,a3,a5
	lw	a3,-20(s0)
	sll	a5,a5,a3
	add	a5,a4,a5
	sd	a5,-64(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	ld	a5,-40(s0)
	srl	a5,a5,a4
	sd	a5,-56(s0)
	ld	a5,-64(s0)
	lw	a4,-20(s0)
	srl	a5,a5,a4
	sd	a5,-40(s0)
	ld	a4,-64(s0)
	ld	a5,-32(s0)
	and	a5,a4,a5
	sd	a5,-64(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	ld	a5,-80(s0)
	srl	a4,a5,a4
	ld	a3,-72(s0)
	ld	a5,-32(s0)
	and	a5,a3,a5
	mul	a5,a4,a5
	ld	a4,-40(s0)
	add	a5,a4,a5
	sd	a5,-40(s0)
	ld	a4,-64(s0)
	ld	a3,-40(s0)
	ld	a5,-32(s0)
	and	a5,a3,a5
	lw	a3,-20(s0)
	sll	a5,a5,a3
	add	a5,a4,a5
	sd	a5,-64(s0)
	ld	a5,-56(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	mv	a3,a5
	ld	a5,-40(s0)
	srl	a5,a5,a3
	add	a5,a4,a5
	sd	a5,-56(s0)
	ld	a5,-56(s0)
	mv	a3,a5
	lw	a5,-20(s0)
	mv	a4,a5
	ld	a5,-72(s0)
	srl	a4,a5,a4
	lw	a5,-20(s0)
	mv	a2,a5
	ld	a5,-80(s0)
	srl	a5,a5,a2
	mul	a5,a4,a5
	add	a5,a3,a5
	sd	a5,-56(s0)
	ld	a4,-64(s0)
	ld	a5,-56(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE151:
	.size	__mulddi3, .-__mulddi3
	.align	1
	.globl	__multi3
	.type	__multi3, @function
__multi3:
.LFB152:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-80(s0)
	sd	a1,-72(s0)
	sd	a2,-96(s0)
	sd	a3,-88(s0)
	ld	a5,-80(s0)
	sd	a5,-32(s0)
	ld	a5,-72(s0)
	sd	a5,-24(s0)
	ld	a5,-96(s0)
	sd	a5,-48(s0)
	ld	a5,-88(s0)
	sd	a5,-40(s0)
	ld	a5,-32(s0)
	ld	a4,-48(s0)
	mv	a1,a4
	mv	a0,a5
	call	__mulddi3
	mv	a4,a0
	mv	a5,a1
	sd	a4,-64(s0)
	sd	a5,-56(s0)
	ld	a5,-56(s0)
	mv	a3,a5
	ld	a5,-24(s0)
	mv	a4,a5
	ld	a5,-48(s0)
	mul	a4,a4,a5
	ld	a5,-32(s0)
	ld	a2,-40(s0)
	mul	a5,a5,a2
	add	a5,a4,a5
	add	a5,a3,a5
	sd	a5,-56(s0)
	ld	a4,-64(s0)
	ld	a5,-56(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE152:
	.size	__multi3, .-__multi3
	.align	1
	.globl	__negdi2
	.type	__negdi2, @function
__negdi2:
.LFB153:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	neg	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE153:
	.size	__negdi2, .-__negdi2
	.align	1
	.globl	__negti2
	.type	__negti2, @function
__negti2:
.LFB154:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-32(s0)
	sd	a1,-24(s0)
	ld	a2,-32(s0)
	ld	a3,-24(s0)
	li	a0,0
	li	a1,0
	sub	a4,a0,a2
	mv	a6,a4
	sgtu	a6,a6,a0
	slli	a6,a6,32
	srli	a6,a6,32
	sub	a5,a1,a3
	sub	a3,a5,a6
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	mv	a2,a0
	mv	a3,a1
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE154:
	.size	__negti2, .-__negti2
	.align	1
	.globl	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB155:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	ld	a5,-40(s0)
	sd	a5,-32(s0)
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-32(s0)
	xor	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a5,a5,16
	sext.w	a5,a5
	lw	a4,-20(s0)
	xor	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a5,a5,8
	sext.w	a5,a5
	lw	a4,-20(s0)
	xor	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a5,a5,4
	sext.w	a5,a5
	lw	a4,-20(s0)
	xor	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	andi	a5,a5,15
	sext.w	a5,a5
	li	a4,28672
	addiw	a4,a4,-1642
	sraw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE155:
	.size	__paritydi2, .-__paritydi2
	.align	1
	.globl	__parityti2
	.type	__parityti2, @function
__parityti2:
.LFB156:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-80(s0)
	sd	a1,-72(s0)
	ld	a5,-80(s0)
	sd	a5,-48(s0)
	ld	a5,-72(s0)
	sd	a5,-40(s0)
	ld	a5,-40(s0)
	mv	a4,a5
	ld	a5,-48(s0)
	xor	a5,a4,a5
	sd	a5,-56(s0)
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-56(s0)
	xor	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a5,a5,16
	sext.w	a5,a5
	lw	a4,-20(s0)
	xor	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a5,a5,8
	sext.w	a5,a5
	lw	a4,-20(s0)
	xor	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a5,a5,4
	sext.w	a5,a5
	lw	a4,-20(s0)
	xor	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	andi	a5,a5,15
	sext.w	a5,a5
	li	a4,28672
	addiw	a4,a4,-1642
	sraw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE156:
	.size	__parityti2, .-__parityti2
	.align	1
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB157:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a5,a5,16
	sext.w	a5,a5
	lw	a4,-20(s0)
	xor	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a5,a5,8
	sext.w	a5,a5
	lw	a4,-20(s0)
	xor	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a5,a5,4
	sext.w	a5,a5
	lw	a4,-20(s0)
	xor	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	andi	a5,a5,15
	sext.w	a5,a5
	li	a4,28672
	addiw	a4,a4,-1642
	sraw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE157:
	.size	__paritysi2, .-__paritysi2
	.align	1
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB158:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	srli	a4,a5,1
	lui	a5,%hi(.LC15)
	ld	a5,%lo(.LC15)(a5)
	and	a5,a4,a5
	ld	a4,-24(s0)
	sub	a5,a4,a5
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	srli	a4,a5,2
	lui	a5,%hi(.LC16)
	ld	a5,%lo(.LC16)(a5)
	and	a4,a4,a5
	ld	a3,-24(s0)
	lui	a5,%hi(.LC16)
	ld	a5,%lo(.LC16)(a5)
	and	a5,a3,a5
	add	a5,a4,a5
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	srli	a4,a5,4
	ld	a5,-24(s0)
	add	a4,a4,a5
	lui	a5,%hi(.LC17)
	ld	a5,%lo(.LC17)(a5)
	and	a5,a4,a5
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	sext.w	a4,a5
	ld	a5,-24(s0)
	srli	a5,a5,32
	sext.w	a5,a5
	addw	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	srliw	a5,a5,16
	sext.w	a5,a5
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	srliw	a5,a5,8
	sext.w	a5,a5
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,127
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE158:
	.size	__popcountdi2, .-__popcountdi2
	.align	1
	.globl	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB159:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a5,a5,1
	sext.w	a5,a5
	mv	a4,a5
	li	a5,1431654400
	addi	a5,a5,1365
	and	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-20(s0)
	subw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a5,a5,2
	sext.w	a5,a5
	mv	a4,a5
	li	a5,858992640
	addi	a5,a5,819
	and	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-20(s0)
	mv	a3,a5
	li	a5,858992640
	addi	a5,a5,819
	and	a5,a3,a5
	sext.w	a5,a5
	addw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a5,a5,4
	sext.w	a5,a5
	lw	a4,-20(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,252645376
	addi	a5,a5,-241
	and	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a5,a5,16
	sext.w	a5,a5
	lw	a4,-20(s0)
	addw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a5,a5,8
	sext.w	a5,a5
	lw	a4,-20(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,63
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE159:
	.size	__popcountsi2, .-__popcountsi2
	.align	1
	.globl	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
.LFB160:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s2,56(sp)
	sd	s3,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 18, -24
	.cfi_offset 19, -32
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-80(s0)
	sd	a1,-72(s0)
	ld	a1,-80(s0)
	sd	a1,-48(s0)
	ld	a1,-72(s0)
	sd	a1,-40(s0)
	ld	a1,-40(s0)
	slli	a1,a1,63
	ld	a0,-48(s0)
	srli	a4,a0,1
	or	a4,a1,a4
	ld	a1,-40(s0)
	srli	a5,a1,1
	lui	a1,%hi(.LC15)
	ld	a1,%lo(.LC15)(a1)
	and	t5,a4,a1
	lui	a1,%hi(.LC15)
	ld	a1,%lo(.LC15)(a1)
	and	t6,a5,a1
	ld	a0,-48(s0)
	ld	a1,-40(s0)
	sub	a4,a0,t5
	mv	t0,a4
	sgtu	t0,t0,a0
	slli	t0,t0,32
	srli	t0,t0,32
	sub	a5,a1,t6
	sub	a1,a5,t0
	mv	a5,a1
	sd	a4,-48(s0)
	sd	a5,-40(s0)
	ld	a5,-40(s0)
	slli	a5,a5,62
	ld	a4,-48(s0)
	srli	a6,a4,2
	or	a6,a5,a6
	ld	a5,-40(s0)
	srli	a7,a5,2
	lui	a5,%hi(.LC16)
	ld	a5,%lo(.LC16)(a5)
	and	t1,a6,a5
	lui	a5,%hi(.LC16)
	ld	a5,%lo(.LC16)(a5)
	and	t2,a7,a5
	ld	a4,-48(s0)
	lui	a5,%hi(.LC16)
	ld	a5,%lo(.LC16)(a5)
	and	t3,a4,a5
	ld	a4,-40(s0)
	lui	a5,%hi(.LC16)
	ld	a5,%lo(.LC16)(a5)
	and	t4,a4,a5
	add	a4,t1,t3
	mv	a1,a4
	sltu	a1,a1,t1
	slli	a1,a1,32
	srli	a1,a1,32
	add	a5,t2,t4
	add	a1,a1,a5
	mv	a5,a1
	sd	a4,-48(s0)
	sd	a5,-40(s0)
	ld	a5,-40(s0)
	slli	a5,a5,60
	ld	a4,-48(s0)
	srli	a2,a4,4
	or	a2,a5,a2
	ld	a5,-40(s0)
	srli	a3,a5,4
	ld	a0,-48(s0)
	ld	a1,-40(s0)
	add	a4,a2,a0
	mv	a6,a4
	sltu	a6,a6,a2
	slli	a6,a6,32
	srli	a6,a6,32
	add	a5,a3,a1
	add	a3,a6,a5
	mv	a5,a3
	mv	a2,a4
	mv	a3,a5
	lui	a5,%hi(.LC17)
	ld	a5,%lo(.LC17)(a5)
	and	a5,a2,a5
	sd	a5,-48(s0)
	lui	a5,%hi(.LC17)
	ld	a5,%lo(.LC17)(a5)
	and	a5,a3,a5
	sd	a5,-40(s0)
	ld	a5,-48(s0)
	ld	a4,-40(s0)
	srli	s2,a4,0
	li	s3,0
	mv	a4,s2
	add	a5,a5,a4
	sd	a5,-56(s0)
	ld	a5,-56(s0)
	sext.w	a4,a5
	ld	a5,-56(s0)
	srli	a5,a5,32
	sext.w	a5,a5
	addw	a5,a4,a5
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	srliw	a5,a5,16
	sext.w	a5,a5
	lw	a4,-60(s0)
	addw	a5,a4,a5
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	srliw	a5,a5,8
	sext.w	a5,a5
	lw	a4,-60(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,255
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	ld	s2,56(sp)
	.cfi_restore 18
	ld	s3,48(sp)
	.cfi_restore 19
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE160:
	.size	__popcountti2, .-__popcountti2
	.align	1
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	fsd	fa0,-40(s0)
	mv	a5,a0
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	srliw	a5,a5,31
	andi	a5,a5,0xff
	sw	a5,-28(s0)
	lui	a5,%hi(.LC13)
	fld	fa5,%lo(.LC13)(a5)
	fsd	fa5,-24(s0)
.L838:
	lw	a5,-44(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L835
	fld	fa4,-24(s0)
	fld	fa5,-40(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
.L835:
	lw	a5,-44(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sext.w	a5,a5
	beq	a5,zero,.L843
	fld	fa5,-40(s0)
	fmul.d	fa5,fa5,fa5
	fsd	fa5,-40(s0)
	j	.L838
.L843:
	nop
	lw	a5,-28(s0)
	sext.w	a5,a5
	beq	a5,zero,.L839
	lui	a5,%hi(.LC13)
	fld	fa4,%lo(.LC13)(a5)
	fld	fa5,-24(s0)
	fdiv.d	fa5,fa4,fa5
	j	.L841
.L839:
	fld	fa5,-24(s0)
.L841:
	fmv.d	fa0,fa5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE161:
	.size	__powidf2, .-__powidf2
	.align	1
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB162:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	fsw	fa0,-36(s0)
	mv	a5,a0
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	srliw	a5,a5,31
	andi	a5,a5,0xff
	sw	a5,-24(s0)
	lui	a5,%hi(.LC18)
	flw	fa5,%lo(.LC18)(a5)
	fsw	fa5,-20(s0)
.L848:
	lw	a5,-40(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L845
	flw	fa4,-20(s0)
	flw	fa5,-36(s0)
	fmul.s	fa5,fa4,fa5
	fsw	fa5,-20(s0)
.L845:
	lw	a5,-40(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	sext.w	a5,a5
	beq	a5,zero,.L853
	flw	fa5,-36(s0)
	fmul.s	fa5,fa5,fa5
	fsw	fa5,-36(s0)
	j	.L848
.L853:
	nop
	lw	a5,-24(s0)
	sext.w	a5,a5
	beq	a5,zero,.L849
	lui	a5,%hi(.LC18)
	flw	fa4,%lo(.LC18)(a5)
	flw	fa5,-20(s0)
	fdiv.s	fa5,fa4,fa5
	j	.L851
.L849:
	flw	fa5,-20(s0)
.L851:
	fmv.s	fa0,fa5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE162:
	.size	__powisf2, .-__powisf2
	.align	1
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB163:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a5,-48(s0)
	sd	a5,-32(s0)
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	bgeu	a4,a5,.L855
	li	a5,0
	j	.L860
.L855:
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	bleu	a4,a5,.L857
	li	a5,2
	j	.L860
.L857:
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	bgeu	a4,a5,.L858
	li	a5,0
	j	.L860
.L858:
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	bleu	a4,a5,.L859
	li	a5,2
	j	.L860
.L859:
	li	a5,1
.L860:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	1
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	ld	a5,-24(s0)
	ld	a4,-32(s0)
	mv	a1,a4
	mv	a0,a5
	call	__ucmpdi2
	mv	a5,a0
	addiw	a5,a5,-1
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	1
	.globl	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
.LFB165:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-64(s0)
	sd	a1,-56(s0)
	sd	a2,-80(s0)
	sd	a3,-72(s0)
	ld	a5,-64(s0)
	sd	a5,-32(s0)
	ld	a5,-56(s0)
	sd	a5,-24(s0)
	ld	a5,-80(s0)
	sd	a5,-48(s0)
	ld	a5,-72(s0)
	sd	a5,-40(s0)
	ld	a4,-24(s0)
	ld	a5,-40(s0)
	bgeu	a4,a5,.L864
	li	a5,0
	j	.L869
.L864:
	ld	a4,-24(s0)
	ld	a5,-40(s0)
	bleu	a4,a5,.L866
	li	a5,2
	j	.L869
.L866:
	ld	a4,-32(s0)
	ld	a5,-48(s0)
	bgeu	a4,a5,.L867
	li	a5,0
	j	.L869
.L867:
	ld	a4,-32(s0)
	ld	a5,-48(s0)
	bleu	a4,a5,.L868
	li	a5,2
	j	.L869
.L868:
	li	a5,1
.L869:
	mv	a0,a5
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
	.section	.rodata
	.align	3
.LC0:
	.dword	6364136223846793005
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
	.align	3
.LC15:
	.dword	6148914691236517205
	.align	3
.LC16:
	.dword	3689348814741910323
	.align	3
.LC17:
	.dword	1085102592571150095
	.align	2
.LC18:
	.word	1065353216
	.globl	__ctzdi2
	.globl	__clzdi2
	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__extenddftf2
	.globl	__gttf2
	.globl	__lttf2
	.globl	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
