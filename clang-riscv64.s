	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_c2p0_zmmul1p0"
	.file	"mini-libc.c"
	.globl	make_ti                         # -- Begin function make_ti
	.p2align	1
	.type	make_ti,@function
make_ti:                                # @make_ti
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
.Lpcrel_hi0:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi0)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
.Lpcrel_hi1:
	auipc	a0, %pcrel_hi(.L__profc_make_ti)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -40(s0)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	make_ti, .Lfunc_end0-make_ti
                                        # -- End function
	.globl	make_tu                         # -- Begin function make_tu
	.p2align	1
	.type	make_tu,@function
make_tu:                                # @make_tu
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
.Lpcrel_hi2:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.1)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi2)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
.Lpcrel_hi3:
	auipc	a0, %pcrel_hi(.L__profc_make_tu)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi3)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -40(s0)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end1:
	.size	make_tu, .Lfunc_end1-make_tu
                                        # -- End function
	.globl	memmove                         # -- Begin function memmove
	.p2align	1
	.type	memmove,@function
memmove:                                # @memmove
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
.Lpcrel_hi4:
	auipc	a0, %pcrel_hi(.L__profc_memmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi4)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	ld	a0, -32(s0)
	sd	a0, -56(s0)
	ld	a0, -56(s0)
	ld	a1, -48(s0)
	bgeu	a0, a1, .LBB2_6
	j	.LBB2_1
.LBB2_1:
.Lpcrel_hi5:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi5)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi6:
	auipc	a0, %pcrel_hi(.L__profc_memmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi6)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a1, -40(s0)
	ld	a0, -56(s0)
	add	a0, a0, a1
	sd	a0, -56(s0)
	ld	a1, -40(s0)
	ld	a0, -48(s0)
	add	a0, a0, a1
	sd	a0, -48(s0)
	j	.LBB2_2
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	beqz	a0, .LBB2_5
	j	.LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_2 Depth=1
.Lpcrel_hi7:
	auipc	a0, %pcrel_hi(.L__profc_memmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi7)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -56(s0)
	addi	a1, a0, -1
	sd	a1, -56(s0)
	lbu	a0, -1(a0)
	ld	a1, -48(s0)
	addi	a2, a1, -1
	sd	a2, -48(s0)
	sb	a0, -1(a1)
	j	.LBB2_4
.LBB2_4:                                #   in Loop: Header=BB2_2 Depth=1
.Lpcrel_hi8:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi8)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	j	.LBB2_2
.LBB2_5:
	j	.LBB2_13
.LBB2_6:
	ld	a0, -56(s0)
	ld	a1, -48(s0)
	beq	a0, a1, .LBB2_12
	j	.LBB2_7
.LBB2_7:
.Lpcrel_hi9:
	auipc	a0, %pcrel_hi(.L__profc_memmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi9)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	j	.LBB2_8
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	beqz	a0, .LBB2_11
	j	.LBB2_9
.LBB2_9:                                #   in Loop: Header=BB2_8 Depth=1
.Lpcrel_hi10:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi10)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi11:
	auipc	a0, %pcrel_hi(.L__profc_memmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi11)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -56(s0)
	addi	a1, a0, 1
	sd	a1, -56(s0)
	lbu	a0, 0(a0)
	ld	a1, -48(s0)
	addi	a2, a1, 1
	sd	a2, -48(s0)
	sb	a0, 0(a1)
	j	.LBB2_10
.LBB2_10:                               #   in Loop: Header=BB2_8 Depth=1
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	j	.LBB2_8
.LBB2_11:
.Lpcrel_hi12:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi12)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	j	.LBB2_12
.LBB2_12:
.Lpcrel_hi13:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi13)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	j	.LBB2_13
.LBB2_13:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end2:
	.size	memmove, .Lfunc_end2-memmove
                                        # -- End function
	.globl	memccpy                         # -- Begin function memccpy
	.p2align	1
	.type	memccpy,@function
memccpy:                                # @memccpy
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 96
                                        # kill: def $x1 killed $x12
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sw	a2, -44(s0)
	sd	a3, -56(s0)
.Lpcrel_hi14:
	auipc	a0, %pcrel_hi(.L__profc_memccpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi14)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	sd	a0, -64(s0)
	ld	a0, -40(s0)
	sd	a0, -72(s0)
	lbu	a0, -44(s0)
	sw	a0, -44(s0)
	j	.LBB3_1
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -56(s0)
	li	a1, 0
	sd	a1, -80(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB3_4
	j	.LBB3_2
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
.Lpcrel_hi15:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi15)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi16:
	auipc	a0, %pcrel_hi(.L__profc_memccpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi16)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -72(s0)
	lbu	a0, 0(a0)
	ld	a1, -64(s0)
	sb	a0, 0(a1)
	lw	a1, -44(s0)
	xor	a2, a0, a1
	snez	a2, a2
	sd	a2, -88(s0)                     # 8-byte Folded Spill
	sd	a2, -80(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB3_4
	j	.LBB3_3
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	ld	a0, -88(s0)                     # 8-byte Folded Reload
.Lpcrel_hi17:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.3)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi17)
	ld	a1, 8(a2)
	addi	a1, a1, 1
	sd	a1, 8(a2)
.Lpcrel_hi18:
	auipc	a1, %pcrel_hi(.L__profc_memccpy)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi18)
	ld	a1, 24(a2)
	addi	a1, a1, 1
	sd	a1, 24(a2)
	sd	a0, -80(s0)                     # 8-byte Folded Spill
	j	.LBB3_4
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB3_7
	j	.LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
.Lpcrel_hi19:
	auipc	a0, %pcrel_hi(.L__profc_memccpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi19)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	j	.LBB3_6
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
.Lpcrel_hi20:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi20)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -56(s0)
	addi	a0, a0, -1
	sd	a0, -56(s0)
	ld	a0, -72(s0)
	addi	a0, a0, 1
	sd	a0, -72(s0)
	ld	a0, -64(s0)
	addi	a0, a0, 1
	sd	a0, -64(s0)
	j	.LBB3_1
.LBB3_7:
	ld	a0, -56(s0)
	beqz	a0, .LBB3_9
	j	.LBB3_8
.LBB3_8:
.Lpcrel_hi21:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi21)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi22:
	auipc	a0, %pcrel_hi(.L__profc_memccpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi22)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -64(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB3_10
.LBB3_9:
.Lpcrel_hi23:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi23)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB3_10
.LBB3_10:
	ld	a0, -24(s0)
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end3:
	.size	memccpy, .Lfunc_end3-memccpy
                                        # -- End function
	.globl	memchr                          # -- Begin function memchr
	.p2align	1
	.type	memchr,@function
memchr:                                 # @memchr
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
                                        # kill: def $x13 killed $x11
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	sd	a2, -40(s0)
.Lpcrel_hi24:
	auipc	a0, %pcrel_hi(.L__profc_memchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi24)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	lbu	a0, -28(s0)
	sw	a0, -28(s0)
	j	.LBB4_1
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	li	a1, 0
	sd	a1, -56(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB4_4
	j	.LBB4_2
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
.Lpcrel_hi25:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi25)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi26:
	auipc	a0, %pcrel_hi(.L__profc_memchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi26)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -48(s0)
	lbu	a0, 0(a0)
	lw	a1, -28(s0)
	xor	a2, a0, a1
	snez	a2, a2
	sd	a2, -64(s0)                     # 8-byte Folded Spill
	sd	a2, -56(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB4_4
	j	.LBB4_3
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	ld	a0, -64(s0)                     # 8-byte Folded Reload
.Lpcrel_hi27:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.4)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi27)
	ld	a1, 8(a2)
	addi	a1, a1, 1
	sd	a1, 8(a2)
.Lpcrel_hi28:
	auipc	a1, %pcrel_hi(.L__profc_memchr)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi28)
	ld	a1, 24(a2)
	addi	a1, a1, 1
	sd	a1, 24(a2)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB4_4
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB4_7
	j	.LBB4_5
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
.Lpcrel_hi29:
	auipc	a0, %pcrel_hi(.L__profc_memchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi29)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	j	.LBB4_6
.LBB4_6:                                #   in Loop: Header=BB4_1 Depth=1
.Lpcrel_hi30:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi30)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -48(s0)
	addi	a0, a0, 1
	sd	a0, -48(s0)
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	j	.LBB4_1
.LBB4_7:
	ld	a0, -40(s0)
	beqz	a0, .LBB4_9
	j	.LBB4_8
.LBB4_8:
.Lpcrel_hi31:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi31)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi32:
	auipc	a0, %pcrel_hi(.L__profc_memchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi32)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -48(s0)
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	j	.LBB4_10
.LBB4_9:
.Lpcrel_hi33:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi33)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	li	a0, 0
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	j	.LBB4_10
.LBB4_10:
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end4:
	.size	memchr, .Lfunc_end4-memchr
                                        # -- End function
	.globl	memcmp                          # -- Begin function memcmp
	.p2align	1
	.type	memcmp,@function
memcmp:                                 # @memcmp
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
.Lpcrel_hi34:
	auipc	a0, %pcrel_hi(.L__profc_memcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi34)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	ld	a0, -32(s0)
	sd	a0, -56(s0)
	j	.LBB5_1
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	li	a1, 0
	sd	a1, -64(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB5_4
	j	.LBB5_2
.LBB5_2:                                #   in Loop: Header=BB5_1 Depth=1
.Lpcrel_hi35:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.5)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi35)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi36:
	auipc	a0, %pcrel_hi(.L__profc_memcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi36)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -48(s0)
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	lbu	a1, 0(a1)
	xor	a2, a0, a1
	seqz	a2, a2
	sd	a2, -72(s0)                     # 8-byte Folded Spill
	sd	a2, -64(s0)                     # 8-byte Folded Spill
	bne	a0, a1, .LBB5_4
	j	.LBB5_3
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	ld	a0, -72(s0)                     # 8-byte Folded Reload
.Lpcrel_hi37:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.5)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi37)
	ld	a1, 8(a2)
	addi	a1, a1, 1
	sd	a1, 8(a2)
.Lpcrel_hi38:
	auipc	a1, %pcrel_hi(.L__profc_memcmp)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi38)
	ld	a1, 24(a2)
	addi	a1, a1, 1
	sd	a1, 24(a2)
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB5_4
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	ld	a0, -64(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB5_7
	j	.LBB5_5
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
.Lpcrel_hi39:
	auipc	a0, %pcrel_hi(.L__profc_memcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi39)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	j	.LBB5_6
.LBB5_6:                                #   in Loop: Header=BB5_1 Depth=1
.Lpcrel_hi40:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.5)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi40)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	ld	a0, -48(s0)
	addi	a0, a0, 1
	sd	a0, -48(s0)
	ld	a0, -56(s0)
	addi	a0, a0, 1
	sd	a0, -56(s0)
	j	.LBB5_1
.LBB5_7:
	ld	a0, -40(s0)
	beqz	a0, .LBB5_9
	j	.LBB5_8
.LBB5_8:
.Lpcrel_hi41:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.5)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi41)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi42:
	auipc	a0, %pcrel_hi(.L__profc_memcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi42)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -48(s0)
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	lbu	a1, 0(a1)
	sub	a0, a0, a1
	sd	a0, -80(s0)                     # 8-byte Folded Spill
	j	.LBB5_10
.LBB5_9:
.Lpcrel_hi43:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.5)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi43)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	li	a0, 0
	sd	a0, -80(s0)                     # 8-byte Folded Spill
	j	.LBB5_10
.LBB5_10:
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end5:
	.size	memcmp, .Lfunc_end5-memcmp
                                        # -- End function
	.globl	memcpy                          # -- Begin function memcpy
	.p2align	1
	.type	memcpy,@function
memcpy:                                 # @memcpy
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
.Lpcrel_hi44:
	auipc	a3, %pcrel_hi(__llvm_gcov_ctr.6)
	addi	ra, a3, %pcrel_lo(.Lpcrel_hi44)
	ld	a3, 0(ra)
	addi	a3, a3, 1
	sd	a3, 0(ra)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
.Lpcrel_hi45:
	auipc	a0, %pcrel_hi(.L__profc_memcpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi45)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	ld	a0, -32(s0)
	sd	a0, -56(s0)
	j	.LBB6_1
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	beqz	a0, .LBB6_4
	j	.LBB6_2
.LBB6_2:                                #   in Loop: Header=BB6_1 Depth=1
.Lpcrel_hi46:
	auipc	a0, %pcrel_hi(.L__profc_memcpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi46)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -56(s0)
	addi	a1, a0, 1
	sd	a1, -56(s0)
	lbu	a0, 0(a0)
	ld	a1, -48(s0)
	addi	a2, a1, 1
	sd	a2, -48(s0)
	sb	a0, 0(a1)
	j	.LBB6_3
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
.Lpcrel_hi47:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.6)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi47)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	j	.LBB6_1
.LBB6_4:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end6:
	.size	memcpy, .Lfunc_end6-memcpy
                                        # -- End function
	.globl	memrchr                         # -- Begin function memrchr
	.p2align	1
	.type	memrchr,@function
memrchr:                                # @memrchr
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x13 killed $x11
	sd	a0, -32(s0)
	sw	a1, -36(s0)
	sd	a2, -48(s0)
.Lpcrel_hi48:
	auipc	a0, %pcrel_hi(.L__profc_memrchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi48)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	sd	a0, -56(s0)
	lbu	a0, -36(s0)
	sw	a0, -36(s0)
	j	.LBB7_1
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -48(s0)
	addi	a1, a0, -1
	sd	a1, -48(s0)
	beqz	a0, .LBB7_5
	j	.LBB7_2
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
.Lpcrel_hi49:
	auipc	a0, %pcrel_hi(.L__profc_memrchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi49)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -56(s0)
	ld	a1, -48(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	lw	a1, -36(s0)
	bne	a0, a1, .LBB7_4
	j	.LBB7_3
.LBB7_3:
.Lpcrel_hi50:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.7)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi50)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi51:
	auipc	a0, %pcrel_hi(.L__profc_memrchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi51)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -56(s0)
	ld	a1, -48(s0)
	add	a0, a0, a1
	sd	a0, -24(s0)
	j	.LBB7_6
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
.Lpcrel_hi52:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.7)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi52)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	j	.LBB7_1
.LBB7_5:
.Lpcrel_hi53:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.7)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi53)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB7_6
.LBB7_6:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end7:
	.size	memrchr, .Lfunc_end7-memrchr
                                        # -- End function
	.globl	memset                          # -- Begin function memset
	.p2align	1
	.type	memset,@function
memset:                                 # @memset
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x13 killed $x11
.Lpcrel_hi54:
	auipc	a3, %pcrel_hi(__llvm_gcov_ctr.8)
	addi	ra, a3, %pcrel_lo(.Lpcrel_hi54)
	ld	a3, 0(ra)
	addi	a3, a3, 1
	sd	a3, 0(ra)
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	sd	a2, -40(s0)
.Lpcrel_hi55:
	auipc	a0, %pcrel_hi(.L__profc_memset)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi55)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	j	.LBB8_1
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	beqz	a0, .LBB8_4
	j	.LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
.Lpcrel_hi56:
	auipc	a0, %pcrel_hi(.L__profc_memset)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi56)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lbu	a0, -28(s0)
	ld	a1, -48(s0)
	sb	a0, 0(a1)
	j	.LBB8_3
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
.Lpcrel_hi57:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.8)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi57)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	ld	a0, -48(s0)
	addi	a0, a0, 1
	sd	a0, -48(s0)
	j	.LBB8_1
.LBB8_4:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end8:
	.size	memset, .Lfunc_end8-memset
                                        # -- End function
	.globl	stpcpy                          # -- Begin function stpcpy
	.p2align	1
	.type	stpcpy,@function
stpcpy:                                 # @stpcpy
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
.Lpcrel_hi58:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.9)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi58)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
.Lpcrel_hi59:
	auipc	a0, %pcrel_hi(.L__profc_stpcpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi59)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	j	.LBB9_1
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -32(s0)
	lbu	a0, 0(a0)
	ld	a1, -24(s0)
	sb	a0, 0(a1)
	beqz	a0, .LBB9_4
	j	.LBB9_2
.LBB9_2:                                #   in Loop: Header=BB9_1 Depth=1
.Lpcrel_hi60:
	auipc	a0, %pcrel_hi(.L__profc_stpcpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi60)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	j	.LBB9_3
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
.Lpcrel_hi61:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.9)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi61)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -32(s0)
	addi	a0, a0, 1
	sd	a0, -32(s0)
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB9_1
.LBB9_4:
	ld	a0, -24(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end9:
	.size	stpcpy, .Lfunc_end9-stpcpy
                                        # -- End function
	.globl	strchrnul                       # -- Begin function strchrnul
	.p2align	1
	.type	strchrnul,@function
strchrnul:                              # @strchrnul
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
.Lpcrel_hi62:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.10)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi62)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sw	a1, -28(s0)
.Lpcrel_hi63:
	auipc	a0, %pcrel_hi(.L__profc_strchrnul)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi63)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lbu	a0, -28(s0)
	sw	a0, -28(s0)
	j	.LBB10_1
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	li	a1, 0
	sd	a1, -40(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB10_4
	j	.LBB10_2
.LBB10_2:                               #   in Loop: Header=BB10_1 Depth=1
.Lpcrel_hi64:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.10)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi64)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi65:
	auipc	a0, %pcrel_hi(.L__profc_strchrnul)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi65)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	lw	a1, -28(s0)
	xor	a2, a0, a1
	snez	a2, a2
	sd	a2, -48(s0)                     # 8-byte Folded Spill
	sd	a2, -40(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB10_4
	j	.LBB10_3
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	ld	a0, -48(s0)                     # 8-byte Folded Reload
.Lpcrel_hi66:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.10)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi66)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
.Lpcrel_hi67:
	auipc	a1, %pcrel_hi(.L__profc_strchrnul)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi67)
	ld	a1, 24(a2)
	addi	a1, a1, 1
	sd	a1, 24(a2)
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB10_4
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB10_7
	j	.LBB10_5
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
.Lpcrel_hi68:
	auipc	a0, %pcrel_hi(.L__profc_strchrnul)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi68)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	j	.LBB10_6
.LBB10_6:                               #   in Loop: Header=BB10_1 Depth=1
.Lpcrel_hi69:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.10)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi69)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB10_1
.LBB10_7:
	ld	a0, -24(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end10:
	.size	strchrnul, .Lfunc_end10-strchrnul
                                        # -- End function
	.globl	strchr                          # -- Begin function strchr
	.p2align	1
	.type	strchr,@function
strchr:                                 # @strchr
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
	sd	a0, -32(s0)
	sw	a1, -36(s0)
.Lpcrel_hi70:
	auipc	a0, %pcrel_hi(.L__profc_strchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi70)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	j	.LBB11_2
.LBB11_1:                               #   in Loop: Header=BB11_2 Depth=1
.Lpcrel_hi71:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.11)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi71)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi72:
	auipc	a0, %pcrel_hi(.L__profc_strchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi72)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	j	.LBB11_2
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -32(s0)
	lbu	a0, 0(a0)
	lw	a1, -36(s0)
	bne	a0, a1, .LBB11_4
	j	.LBB11_3
.LBB11_3:
.Lpcrel_hi73:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.11)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi73)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi74:
	auipc	a0, %pcrel_hi(.L__profc_strchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi74)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB11_7
.LBB11_4:                               #   in Loop: Header=BB11_2 Depth=1
	j	.LBB11_5
.LBB11_5:                               #   in Loop: Header=BB11_2 Depth=1
	ld	a0, -32(s0)
	addi	a1, a0, 1
	sd	a1, -32(s0)
	lbu	a0, 0(a0)
	bnez	a0, .LBB11_1
	j	.LBB11_6
.LBB11_6:
.Lpcrel_hi75:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.11)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi75)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB11_7
.LBB11_7:
	ld	a0, -24(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end11:
	.size	strchr, .Lfunc_end11-strchr
                                        # -- End function
	.globl	strcmp                          # -- Begin function strcmp
	.p2align	1
	.type	strcmp,@function
strcmp:                                 # @strcmp
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
.Lpcrel_hi76:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.12)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi76)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
.Lpcrel_hi77:
	auipc	a0, %pcrel_hi(.L__profc_strcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi77)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	j	.LBB12_1
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	ld	a1, -32(s0)
	lbu	a1, 0(a1)
	li	a2, 0
	sd	a2, -40(s0)                     # 8-byte Folded Spill
	bne	a0, a1, .LBB12_4
	j	.LBB12_2
.LBB12_2:                               #   in Loop: Header=BB12_1 Depth=1
.Lpcrel_hi78:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.12)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi78)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi79:
	auipc	a0, %pcrel_hi(.L__profc_strcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi79)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	snez	a1, a0
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	sd	a1, -40(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB12_4
	j	.LBB12_3
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	ld	a0, -48(s0)                     # 8-byte Folded Reload
.Lpcrel_hi80:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.12)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi80)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
.Lpcrel_hi81:
	auipc	a1, %pcrel_hi(.L__profc_strcmp)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi81)
	ld	a1, 24(a2)
	addi	a1, a1, 1
	sd	a1, 24(a2)
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB12_4
.LBB12_4:                               #   in Loop: Header=BB12_1 Depth=1
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB12_7
	j	.LBB12_5
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
.Lpcrel_hi82:
	auipc	a0, %pcrel_hi(.L__profc_strcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi82)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	j	.LBB12_6
.LBB12_6:                               #   in Loop: Header=BB12_1 Depth=1
.Lpcrel_hi83:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.12)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi83)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	ld	a0, -32(s0)
	addi	a0, a0, 1
	sd	a0, -32(s0)
	j	.LBB12_1
.LBB12_7:
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	ld	a1, -32(s0)
	lbu	a1, 0(a1)
	sub	a0, a0, a1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end12:
	.size	strcmp, .Lfunc_end12-strcmp
                                        # -- End function
	.globl	strlen                          # -- Begin function strlen
	.p2align	1
	.type	strlen,@function
strlen:                                 # @strlen
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
.Lpcrel_hi84:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.13)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi84)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sd	a0, -24(s0)
.Lpcrel_hi85:
	auipc	a0, %pcrel_hi(.L__profc_strlen)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi85)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -32(s0)
	j	.LBB13_1
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	beqz	a0, .LBB13_4
	j	.LBB13_2
.LBB13_2:                               #   in Loop: Header=BB13_1 Depth=1
.Lpcrel_hi86:
	auipc	a0, %pcrel_hi(.L__profc_strlen)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi86)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	j	.LBB13_3
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
.Lpcrel_hi87:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.13)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi87)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB13_1
.LBB13_4:
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	sub	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end13:
	.size	strlen, .Lfunc_end13-strlen
                                        # -- End function
	.globl	strncmp                         # -- Begin function strncmp
	.p2align	1
	.type	strncmp,@function
strncmp:                                # @strncmp
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
.Lpcrel_hi88:
	auipc	a0, %pcrel_hi(.L__profc_strncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi88)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	sd	a0, -56(s0)
	ld	a0, -40(s0)
	sd	a0, -64(s0)
	ld	a0, -48(s0)
	addi	a1, a0, -1
	sd	a1, -48(s0)
	bnez	a0, .LBB14_2
	j	.LBB14_1
.LBB14_1:
.Lpcrel_hi89:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.14)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi89)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi90:
	auipc	a0, %pcrel_hi(.L__profc_strncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi90)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB14_14
.LBB14_2:
.Lpcrel_hi91:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.14)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi91)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	j	.LBB14_3
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -56(s0)
	lbu	a0, 0(a0)
	li	a1, 0
	sd	a1, -72(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB14_10
	j	.LBB14_4
.LBB14_4:                               #   in Loop: Header=BB14_3 Depth=1
.Lpcrel_hi92:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.14)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi92)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi93:
	auipc	a0, %pcrel_hi(.L__profc_strncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi93)
	ld	a0, 56(a1)
	addi	a0, a0, 1
	sd	a0, 56(a1)
	ld	a0, -64(s0)
	lbu	a0, 0(a0)
	li	a1, 0
	sd	a1, -72(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB14_10
	j	.LBB14_5
.LBB14_5:                               #   in Loop: Header=BB14_3 Depth=1
.Lpcrel_hi94:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.14)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi94)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi95:
	auipc	a0, %pcrel_hi(.L__profc_strncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi95)
	ld	a0, 64(a1)
	addi	a0, a0, 1
	sd	a0, 64(a1)
	j	.LBB14_6
.LBB14_6:                               #   in Loop: Header=BB14_3 Depth=1
.Lpcrel_hi96:
	auipc	a0, %pcrel_hi(.L__profc_strncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi96)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a0, -48(s0)
	li	a1, 0
	sd	a1, -72(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB14_10
	j	.LBB14_7
.LBB14_7:                               #   in Loop: Header=BB14_3 Depth=1
.Lpcrel_hi97:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.14)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi97)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi98:
	auipc	a0, %pcrel_hi(.L__profc_strncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi98)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	j	.LBB14_8
.LBB14_8:                               #   in Loop: Header=BB14_3 Depth=1
.Lpcrel_hi99:
	auipc	a0, %pcrel_hi(.L__profc_strncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi99)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -56(s0)
	lbu	a0, 0(a0)
	ld	a1, -64(s0)
	lbu	a1, 0(a1)
	xor	a2, a0, a1
	seqz	a2, a2
	sd	a2, -80(s0)                     # 8-byte Folded Spill
	sd	a2, -72(s0)                     # 8-byte Folded Spill
	bne	a0, a1, .LBB14_10
	j	.LBB14_9
.LBB14_9:                               #   in Loop: Header=BB14_3 Depth=1
	ld	a0, -80(s0)                     # 8-byte Folded Reload
.Lpcrel_hi100:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.14)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi100)
	ld	a1, 40(a2)
	addi	a1, a1, 1
	sd	a1, 40(a2)
.Lpcrel_hi101:
	auipc	a1, %pcrel_hi(.L__profc_strncmp)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi101)
	ld	a1, 32(a2)
	addi	a1, a1, 1
	sd	a1, 32(a2)
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	j	.LBB14_10
.LBB14_10:                              #   in Loop: Header=BB14_3 Depth=1
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB14_13
	j	.LBB14_11
.LBB14_11:                              #   in Loop: Header=BB14_3 Depth=1
.Lpcrel_hi102:
	auipc	a0, %pcrel_hi(.L__profc_strncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi102)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	j	.LBB14_12
.LBB14_12:                              #   in Loop: Header=BB14_3 Depth=1
.Lpcrel_hi103:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.14)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi103)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	ld	a0, -56(s0)
	addi	a0, a0, 1
	sd	a0, -56(s0)
	ld	a0, -64(s0)
	addi	a0, a0, 1
	sd	a0, -64(s0)
	ld	a0, -48(s0)
	addi	a0, a0, -1
	sd	a0, -48(s0)
	j	.LBB14_3
.LBB14_13:
	ld	a0, -56(s0)
	lbu	a0, 0(a0)
	ld	a1, -64(s0)
	lbu	a1, 0(a1)
	subw	a0, a0, a1
	sw	a0, -20(s0)
	j	.LBB14_14
.LBB14_14:
	lw	a0, -20(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end14:
	.size	strncmp, .Lfunc_end14-strncmp
                                        # -- End function
	.globl	swab                            # -- Begin function swab
	.p2align	1
	.type	swab,@function
swab:                                   # @swab
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
.Lpcrel_hi104:
	auipc	a3, %pcrel_hi(__llvm_gcov_ctr.15)
	addi	ra, a3, %pcrel_lo(.Lpcrel_hi104)
	ld	a3, 0(ra)
	addi	a3, a3, 1
	sd	a3, 0(ra)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
.Lpcrel_hi105:
	auipc	a0, %pcrel_hi(.L__profc_swab)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi105)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	ld	a0, -32(s0)
	sd	a0, -56(s0)
	j	.LBB15_1
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	li	a1, 2
	blt	a0, a1, .LBB15_4
	j	.LBB15_2
.LBB15_2:                               #   in Loop: Header=BB15_1 Depth=1
.Lpcrel_hi106:
	auipc	a0, %pcrel_hi(.L__profc_swab)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi106)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -48(s0)
	lbu	a0, 1(a0)
	ld	a1, -56(s0)
	sb	a0, 0(a1)
	ld	a0, -48(s0)
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	sb	a0, 1(a1)
	ld	a0, -56(s0)
	addi	a0, a0, 2
	sd	a0, -56(s0)
	ld	a0, -48(s0)
	addi	a0, a0, 2
	sd	a0, -48(s0)
	j	.LBB15_3
.LBB15_3:                               #   in Loop: Header=BB15_1 Depth=1
.Lpcrel_hi107:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.15)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi107)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -40(s0)
	addi	a0, a0, -2
	sd	a0, -40(s0)
	j	.LBB15_1
.LBB15_4:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end15:
	.size	swab, .Lfunc_end15-swab
                                        # -- End function
	.globl	isalpha                         # -- Begin function isalpha
	.p2align	1
	.type	isalpha,@function
isalpha:                                # @isalpha
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi108:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.16)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi108)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi109:
	auipc	a0, %pcrel_hi(.L__profc_isalpha)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi109)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	ori	a0, a0, 32
	addiw	a0, a0, -97
	sltiu	a0, a0, 26
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end16:
	.size	isalpha, .Lfunc_end16-isalpha
                                        # -- End function
	.globl	isascii                         # -- Begin function isascii
	.p2align	1
	.type	isascii,@function
isascii:                                # @isascii
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi110:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.17)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi110)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi111:
	auipc	a0, %pcrel_hi(.L__profc_isascii)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi111)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	andi	a0, a0, -128
	seqz	a0, a0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end17:
	.size	isascii, .Lfunc_end17-isascii
                                        # -- End function
	.globl	isblank                         # -- Begin function isblank
	.p2align	1
	.type	isblank,@function
isblank:                                # @isblank
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x11 killed $x10
.Lpcrel_hi112:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.18)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi112)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi113:
	auipc	a0, %pcrel_hi(.L__profc_isblank)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi113)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	li	a2, 1
	li	a1, 32
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB18_3
	j	.LBB18_1
.LBB18_1:
.Lpcrel_hi114:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.18)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi114)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi115:
	auipc	a0, %pcrel_hi(.L__profc_isblank)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi115)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -20(s0)
	addi	a1, a0, -9
	seqz	a2, a1
	sd	a2, -40(s0)                     # 8-byte Folded Spill
	li	a1, 9
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB18_3
	j	.LBB18_2
.LBB18_2:
	ld	a0, -40(s0)                     # 8-byte Folded Reload
.Lpcrel_hi116:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.18)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi116)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
.Lpcrel_hi117:
	auipc	a1, %pcrel_hi(.L__profc_isblank)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi117)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB18_3
.LBB18_3:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end18:
	.size	isblank, .Lfunc_end18-isblank
                                        # -- End function
	.globl	iscntrl                         # -- Begin function iscntrl
	.p2align	1
	.type	iscntrl,@function
iscntrl:                                # @iscntrl
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x11 killed $x10
.Lpcrel_hi118:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.19)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi118)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi119:
	auipc	a0, %pcrel_hi(.L__profc_iscntrl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi119)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	li	a2, 1
	li	a1, 32
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	bltu	a0, a1, .LBB19_3
	j	.LBB19_1
.LBB19_1:
.Lpcrel_hi120:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.19)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi120)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi121:
	auipc	a0, %pcrel_hi(.L__profc_iscntrl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi121)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -20(s0)
	addi	a1, a0, -127
	seqz	a2, a1
	sd	a2, -40(s0)                     # 8-byte Folded Spill
	li	a1, 127
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB19_3
	j	.LBB19_2
.LBB19_2:
	ld	a0, -40(s0)                     # 8-byte Folded Reload
.Lpcrel_hi122:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.19)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi122)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
.Lpcrel_hi123:
	auipc	a1, %pcrel_hi(.L__profc_iscntrl)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi123)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB19_3
.LBB19_3:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end19:
	.size	iscntrl, .Lfunc_end19-iscntrl
                                        # -- End function
	.globl	isdigit                         # -- Begin function isdigit
	.p2align	1
	.type	isdigit,@function
isdigit:                                # @isdigit
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi124:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.20)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi124)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi125:
	auipc	a0, %pcrel_hi(.L__profc_isdigit)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi125)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	addiw	a0, a0, -48
	sltiu	a0, a0, 10
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end20:
	.size	isdigit, .Lfunc_end20-isdigit
                                        # -- End function
	.globl	isgraph                         # -- Begin function isgraph
	.p2align	1
	.type	isgraph,@function
isgraph:                                # @isgraph
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi126:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.21)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi126)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi127:
	auipc	a0, %pcrel_hi(.L__profc_isgraph)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi127)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	addiw	a0, a0, -33
	sltiu	a0, a0, 94
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end21:
	.size	isgraph, .Lfunc_end21-isgraph
                                        # -- End function
	.globl	islower                         # -- Begin function islower
	.p2align	1
	.type	islower,@function
islower:                                # @islower
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi128:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.22)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi128)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi129:
	auipc	a0, %pcrel_hi(.L__profc_islower)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi129)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	addiw	a0, a0, -97
	sltiu	a0, a0, 26
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end22:
	.size	islower, .Lfunc_end22-islower
                                        # -- End function
	.globl	isprint                         # -- Begin function isprint
	.p2align	1
	.type	isprint,@function
isprint:                                # @isprint
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi130:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.23)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi130)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi131:
	auipc	a0, %pcrel_hi(.L__profc_isprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi131)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	addiw	a0, a0, -32
	sltiu	a0, a0, 95
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end23:
	.size	isprint, .Lfunc_end23-isprint
                                        # -- End function
	.globl	isspace                         # -- Begin function isspace
	.p2align	1
	.type	isspace,@function
isspace:                                # @isspace
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x11 killed $x10
.Lpcrel_hi132:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.24)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi132)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi133:
	auipc	a0, %pcrel_hi(.L__profc_isspace)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi133)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	li	a2, 1
	li	a1, 32
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB24_3
	j	.LBB24_1
.LBB24_1:
.Lpcrel_hi134:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.24)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi134)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi135:
	auipc	a0, %pcrel_hi(.L__profc_isspace)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi135)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -20(s0)
	addiw	a0, a0, -9
	sltiu	a2, a0, 5
	sd	a2, -40(s0)                     # 8-byte Folded Spill
	li	a1, 5
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	bltu	a0, a1, .LBB24_3
	j	.LBB24_2
.LBB24_2:
	ld	a0, -40(s0)                     # 8-byte Folded Reload
.Lpcrel_hi136:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.24)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi136)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
.Lpcrel_hi137:
	auipc	a1, %pcrel_hi(.L__profc_isspace)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi137)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB24_3
.LBB24_3:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end24:
	.size	isspace, .Lfunc_end24-isspace
                                        # -- End function
	.globl	isupper                         # -- Begin function isupper
	.p2align	1
	.type	isupper,@function
isupper:                                # @isupper
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi138:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.25)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi138)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi139:
	auipc	a0, %pcrel_hi(.L__profc_isupper)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi139)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	addiw	a0, a0, -65
	sltiu	a0, a0, 26
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end25:
	.size	isupper, .Lfunc_end25-isupper
                                        # -- End function
	.globl	iswcntrl                        # -- Begin function iswcntrl
	.p2align	1
	.type	iswcntrl,@function
iswcntrl:                               # @iswcntrl
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x11 killed $x10
.Lpcrel_hi140:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.26)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi140)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi141:
	auipc	a0, %pcrel_hi(.L__profc_iswcntrl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi141)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	li	a2, 1
	li	a1, 32
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	bltu	a0, a1, .LBB26_7
	j	.LBB26_1
.LBB26_1:
.Lpcrel_hi142:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.26)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi142)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi143:
	auipc	a0, %pcrel_hi(.L__profc_iswcntrl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi143)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	lw	a0, -20(s0)
	addiw	a0, a0, -127
	li	a2, 1
	li	a1, 33
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	bltu	a0, a1, .LBB26_7
	j	.LBB26_2
.LBB26_2:
.Lpcrel_hi144:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.26)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi144)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi145:
	auipc	a0, %pcrel_hi(.L__profc_iswcntrl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi145)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	j	.LBB26_3
.LBB26_3:
.Lpcrel_hi146:
	auipc	a0, %pcrel_hi(.L__profc_iswcntrl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi146)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	lw	a0, -20(s0)
	lui	a1, 1048574
	addiw	a1, a1, -40
	addw	a0, a0, a1
	li	a2, 1
	li	a1, 2
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	bltu	a0, a1, .LBB26_7
	j	.LBB26_4
.LBB26_4:
.Lpcrel_hi147:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.26)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi147)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi148:
	auipc	a0, %pcrel_hi(.L__profc_iswcntrl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi148)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	j	.LBB26_5
.LBB26_5:
.Lpcrel_hi149:
	auipc	a0, %pcrel_hi(.L__profc_iswcntrl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi149)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -20(s0)
	lui	a1, 1048560
	addiw	a1, a1, 7
	addw	a0, a0, a1
	sltiu	a2, a0, 3
	sd	a2, -40(s0)                     # 8-byte Folded Spill
	li	a1, 3
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	bltu	a0, a1, .LBB26_7
	j	.LBB26_6
.LBB26_6:
	ld	a0, -40(s0)                     # 8-byte Folded Reload
.Lpcrel_hi150:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.26)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi150)
	ld	a1, 32(a2)
	addi	a1, a1, 1
	sd	a1, 32(a2)
.Lpcrel_hi151:
	auipc	a1, %pcrel_hi(.L__profc_iswcntrl)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi151)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB26_7
.LBB26_7:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end26:
	.size	iswcntrl, .Lfunc_end26-iswcntrl
                                        # -- End function
	.globl	iswdigit                        # -- Begin function iswdigit
	.p2align	1
	.type	iswdigit,@function
iswdigit:                               # @iswdigit
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi152:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.27)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi152)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi153:
	auipc	a0, %pcrel_hi(.L__profc_iswdigit)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi153)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	addiw	a0, a0, -48
	sltiu	a0, a0, 10
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end27:
	.size	iswdigit, .Lfunc_end27-iswdigit
                                        # -- End function
	.globl	iswprint                        # -- Begin function iswprint
	.p2align	1
	.type	iswprint,@function
iswprint:                               # @iswprint
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -24(s0)
.Lpcrel_hi154:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi154)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a1, -24(s0)
	li	a0, 254
	bltu	a0, a1, .LBB28_2
	j	.LBB28_1
.LBB28_1:
.Lpcrel_hi155:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.28)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi155)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi156:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi156)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -24(s0)
	addiw	a0, a0, 1
	andi	a0, a0, 127
	sltiu	a0, a0, 33
	xori	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB28_13
.LBB28_2:
	lwu	a0, -24(s0)
	srli	a0, a0, 3
	li	a1, 1029
	bltu	a0, a1, .LBB28_7
	j	.LBB28_3
.LBB28_3:
.Lpcrel_hi157:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.28)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi157)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi158:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi158)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	lw	a0, -24(s0)
	lui	a1, 1048574
	addiw	a1, a1, -42
	addw	a0, a0, a1
	lui	a1, 11
	addiw	a1, a1, 2006
	bltu	a0, a1, .LBB28_7
	j	.LBB28_4
.LBB28_4:
.Lpcrel_hi159:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.28)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi159)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi160:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi160)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	j	.LBB28_5
.LBB28_5:
.Lpcrel_hi161:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi161)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	lw	a0, -24(s0)
	lui	a1, 1048562
	addw	a0, a0, a1
	lui	a1, 2
	addiw	a1, a1, -7
	bltu	a0, a1, .LBB28_7
	j	.LBB28_6
.LBB28_6:
.Lpcrel_hi162:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi162)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	j	.LBB28_8
.LBB28_7:
.Lpcrel_hi163:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.28)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi163)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi164:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi164)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB28_13
.LBB28_8:
	lw	a0, -24(s0)
	lui	a1, 1048560
	addiw	a1, a1, 4
	addw	a1, a1, a0
	lui	a0, 256
	addiw	a0, a0, 3
	bltu	a0, a1, .LBB28_11
	j	.LBB28_9
.LBB28_9:
.Lpcrel_hi165:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.28)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi165)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi166:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi166)
	ld	a0, 64(a1)
	addi	a0, a0, 1
	sd	a0, 64(a1)
	lwu	a0, -24(s0)
	lui	a1, 16
	addiw	a1, a1, -2
	and	a0, a0, a1
	beq	a0, a1, .LBB28_11
	j	.LBB28_10
.LBB28_10:
.Lpcrel_hi167:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi167)
	ld	a0, 72(a1)
	addi	a0, a0, 1
	sd	a0, 72(a1)
	j	.LBB28_12
.LBB28_11:
.Lpcrel_hi168:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.28)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi168)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
.Lpcrel_hi169:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi169)
	ld	a0, 56(a1)
	addi	a0, a0, 1
	sd	a0, 56(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB28_13
.LBB28_12:
.Lpcrel_hi170:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.28)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi170)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB28_13
.LBB28_13:
	lw	a0, -20(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end28:
	.size	iswprint, .Lfunc_end28-iswprint
                                        # -- End function
	.globl	iswxdigit                       # -- Begin function iswxdigit
	.p2align	1
	.type	iswxdigit,@function
iswxdigit:                              # @iswxdigit
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x11 killed $x10
.Lpcrel_hi171:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.29)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi171)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi172:
	auipc	a0, %pcrel_hi(.L__profc_iswxdigit)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi172)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	addiw	a0, a0, -48
	li	a2, 1
	li	a1, 10
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	bltu	a0, a1, .LBB29_3
	j	.LBB29_1
.LBB29_1:
.Lpcrel_hi173:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.29)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi173)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi174:
	auipc	a0, %pcrel_hi(.L__profc_iswxdigit)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi174)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -20(s0)
	ori	a0, a0, 32
	addiw	a0, a0, -97
	sltiu	a2, a0, 6
	sd	a2, -40(s0)                     # 8-byte Folded Spill
	li	a1, 6
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	bltu	a0, a1, .LBB29_3
	j	.LBB29_2
.LBB29_2:
	ld	a0, -40(s0)                     # 8-byte Folded Reload
.Lpcrel_hi175:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.29)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi175)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
.Lpcrel_hi176:
	auipc	a1, %pcrel_hi(.L__profc_iswxdigit)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi176)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB29_3
.LBB29_3:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end29:
	.size	iswxdigit, .Lfunc_end29-iswxdigit
                                        # -- End function
	.globl	toascii                         # -- Begin function toascii
	.p2align	1
	.type	toascii,@function
toascii:                                # @toascii
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi177:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.30)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi177)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi178:
	auipc	a0, %pcrel_hi(.L__profc_toascii)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi178)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lwu	a0, -20(s0)
	andi	a0, a0, 127
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end30:
	.size	toascii, .Lfunc_end30-toascii
                                        # -- End function
	.globl	fdim                            # -- Begin function fdim
	.p2align	1
	.type	fdim,@function
fdim:                                   # @fdim
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a0, -32(s0)
	sd	a1, -40(s0)
.Lpcrel_hi179:
	auipc	a0, %pcrel_hi(.L__profc_fdim)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi179)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	li	a1, 2047
	slli	a1, a1, 52
	addi	a1, a1, 1
	blt	a0, a1, .LBB31_2
	j	.LBB31_1
.LBB31_1:
.Lpcrel_hi180:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.31)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi180)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi181:
	auipc	a0, %pcrel_hi(.L__profc_fdim)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi181)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB31_8
.LBB31_2:
	ld	a0, -40(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	li	a1, 2047
	slli	a1, a1, 52
	addi	a1, a1, 1
	blt	a0, a1, .LBB31_4
	j	.LBB31_3
.LBB31_3:
.Lpcrel_hi182:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.31)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi182)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi183:
	auipc	a0, %pcrel_hi(.L__profc_fdim)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi183)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -40(s0)
	sd	a0, -24(s0)
	j	.LBB31_8
.LBB31_4:
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	call	__gtdf2
	mv	a1, a0
	li	a0, 0
	bge	a0, a1, .LBB31_6
	j	.LBB31_5
.LBB31_5:
.Lpcrel_hi184:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.31)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi184)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi185:
	auipc	a0, %pcrel_hi(.L__profc_fdim)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi185)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	call	__subdf3
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB31_7
.LBB31_6:
.Lpcrel_hi186:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.31)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi186)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	li	a0, 0
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB31_7
.LBB31_7:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	sd	a0, -24(s0)
	j	.LBB31_8
.LBB31_8:
	ld	a0, -24(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end31:
	.size	fdim, .Lfunc_end31-fdim
                                        # -- End function
	.globl	fdimf                           # -- Begin function fdimf
	.p2align	1
	.type	fdimf,@function
fdimf:                                  # @fdimf
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -24(s0)
	sw	a1, -28(s0)
.Lpcrel_hi187:
	auipc	a0, %pcrel_hi(.L__profc_fdimf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi187)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lwu	a0, -24(s0)
	slli	a0, a0, 33
	srli	a0, a0, 33
	lui	a1, 522240
	addiw	a1, a1, 1
	blt	a0, a1, .LBB32_2
	j	.LBB32_1
.LBB32_1:
.Lpcrel_hi188:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.32)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi188)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi189:
	auipc	a0, %pcrel_hi(.L__profc_fdimf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi189)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -24(s0)
	sw	a0, -20(s0)
	j	.LBB32_8
.LBB32_2:
	lwu	a0, -28(s0)
	slli	a0, a0, 33
	srli	a0, a0, 33
	lui	a1, 522240
	addiw	a1, a1, 1
	blt	a0, a1, .LBB32_4
	j	.LBB32_3
.LBB32_3:
.Lpcrel_hi190:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.32)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi190)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi191:
	auipc	a0, %pcrel_hi(.L__profc_fdimf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi191)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a0, -28(s0)
	sw	a0, -20(s0)
	j	.LBB32_8
.LBB32_4:
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	call	__gtsf2
	mv	a1, a0
	li	a0, 0
	bge	a0, a1, .LBB32_6
	j	.LBB32_5
.LBB32_5:
.Lpcrel_hi192:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.32)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi192)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi193:
	auipc	a0, %pcrel_hi(.L__profc_fdimf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi193)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	call	__subsf3
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB32_7
.LBB32_6:
.Lpcrel_hi194:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.32)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi194)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	li	a0, 0
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB32_7
.LBB32_7:
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	sw	a0, -20(s0)
	j	.LBB32_8
.LBB32_8:
	lw	a0, -20(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end32:
	.size	fdimf, .Lfunc_end32-fdimf
                                        # -- End function
	.globl	fmax                            # -- Begin function fmax
	.p2align	1
	.type	fmax,@function
fmax:                                   # @fmax
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a0, -32(s0)
	sd	a1, -40(s0)
.Lpcrel_hi195:
	auipc	a0, %pcrel_hi(.L__profc_fmax)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi195)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	li	a1, 2047
	slli	a1, a1, 52
	addi	a1, a1, 1
	blt	a0, a1, .LBB33_2
	j	.LBB33_1
.LBB33_1:
.Lpcrel_hi196:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.33)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi196)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi197:
	auipc	a0, %pcrel_hi(.L__profc_fmax)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi197)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -40(s0)
	sd	a0, -24(s0)
	j	.LBB33_13
.LBB33_2:
	ld	a0, -40(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	li	a1, 2047
	slli	a1, a1, 52
	addi	a1, a1, 1
	blt	a0, a1, .LBB33_4
	j	.LBB33_3
.LBB33_3:
.Lpcrel_hi198:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.33)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi198)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi199:
	auipc	a0, %pcrel_hi(.L__profc_fmax)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi199)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB33_13
.LBB33_4:
	ld	a0, -32(s0)
	srli	a0, a0, 63
	ld	a1, -40(s0)
	srli	a1, a1, 63
	beq	a0, a1, .LBB33_9
	j	.LBB33_5
.LBB33_5:
.Lpcrel_hi200:
	auipc	a0, %pcrel_hi(.L__profc_fmax)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi200)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -32(s0)
	bgez	a0, .LBB33_7
	j	.LBB33_6
.LBB33_6:
.Lpcrel_hi201:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.33)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi201)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi202:
	auipc	a0, %pcrel_hi(.L__profc_fmax)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi202)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -40(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB33_8
.LBB33_7:
.Lpcrel_hi203:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.33)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi203)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -32(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB33_8
.LBB33_8:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	sd	a0, -24(s0)
	j	.LBB33_13
.LBB33_9:
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	call	__ltdf2
	bgez	a0, .LBB33_11
	j	.LBB33_10
.LBB33_10:
.Lpcrel_hi204:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.33)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi204)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi205:
	auipc	a0, %pcrel_hi(.L__profc_fmax)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi205)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a0, -40(s0)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB33_12
.LBB33_11:
.Lpcrel_hi206:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.33)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi206)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a0, -32(s0)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB33_12
.LBB33_12:
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	sd	a0, -24(s0)
	j	.LBB33_13
.LBB33_13:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end33:
	.size	fmax, .Lfunc_end33-fmax
                                        # -- End function
	.globl	fmaxf                           # -- Begin function fmaxf
	.p2align	1
	.type	fmaxf,@function
fmaxf:                                  # @fmaxf
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -24(s0)
	sw	a1, -28(s0)
.Lpcrel_hi207:
	auipc	a0, %pcrel_hi(.L__profc_fmaxf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi207)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lwu	a0, -24(s0)
	slli	a0, a0, 33
	srli	a0, a0, 33
	lui	a1, 522240
	addiw	a1, a1, 1
	blt	a0, a1, .LBB34_2
	j	.LBB34_1
.LBB34_1:
.Lpcrel_hi208:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.34)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi208)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi209:
	auipc	a0, %pcrel_hi(.L__profc_fmaxf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi209)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -28(s0)
	sw	a0, -20(s0)
	j	.LBB34_13
.LBB34_2:
	lwu	a0, -28(s0)
	slli	a0, a0, 33
	srli	a0, a0, 33
	lui	a1, 522240
	addiw	a1, a1, 1
	blt	a0, a1, .LBB34_4
	j	.LBB34_3
.LBB34_3:
.Lpcrel_hi210:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.34)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi210)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi211:
	auipc	a0, %pcrel_hi(.L__profc_fmaxf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi211)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a0, -24(s0)
	sw	a0, -20(s0)
	j	.LBB34_13
.LBB34_4:
	lwu	a0, -24(s0)
	srli	a0, a0, 31
	lwu	a1, -28(s0)
	srli	a1, a1, 31
	beq	a0, a1, .LBB34_9
	j	.LBB34_5
.LBB34_5:
.Lpcrel_hi212:
	auipc	a0, %pcrel_hi(.L__profc_fmaxf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi212)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	lw	a0, -24(s0)
	bgez	a0, .LBB34_7
	j	.LBB34_6
.LBB34_6:
.Lpcrel_hi213:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.34)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi213)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi214:
	auipc	a0, %pcrel_hi(.L__profc_fmaxf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi214)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	lw	a0, -28(s0)
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB34_8
.LBB34_7:
.Lpcrel_hi215:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.34)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi215)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	lw	a0, -24(s0)
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB34_8
.LBB34_8:
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	sw	a0, -20(s0)
	j	.LBB34_13
.LBB34_9:
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	call	__ltsf2
	bgez	a0, .LBB34_11
	j	.LBB34_10
.LBB34_10:
.Lpcrel_hi216:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.34)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi216)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi217:
	auipc	a0, %pcrel_hi(.L__profc_fmaxf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi217)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	lw	a0, -28(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB34_12
.LBB34_11:
.Lpcrel_hi218:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.34)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi218)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	lw	a0, -24(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB34_12
.LBB34_12:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	sw	a0, -20(s0)
	j	.LBB34_13
.LBB34_13:
	lw	a0, -20(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end34:
	.size	fmaxf, .Lfunc_end34-fmaxf
                                        # -- End function
	.globl	fmaxl                           # -- Begin function fmaxl
	.p2align	1
	.type	fmaxl,@function
fmaxl:                                  # @fmaxl
# %bb.0:
	addi	sp, sp, -128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	addi	s0, sp, 128
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	sd	a3, -56(s0)
	sd	a2, -64(s0)
.Lpcrel_hi219:
	auipc	a0, %pcrel_hi(.L__profc_fmaxl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi219)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a2, -48(s0)
	ld	a0, -40(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 32767
	slli	a1, a1, 36
	slt	a3, a0, a1
	sd	a3, -80(s0)                     # 8-byte Folded Spill
	seqz	a2, a2
	sd	a2, -72(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB35_2
# %bb.1:
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	sd	a0, -72(s0)                     # 8-byte Folded Spill
.LBB35_2:
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	bnez	a0, .LBB35_4
	j	.LBB35_3
.LBB35_3:
.Lpcrel_hi220:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.35)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi220)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi221:
	auipc	a0, %pcrel_hi(.L__profc_fmaxl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi221)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -64(s0)
	ld	a1, -56(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB35_17
.LBB35_4:
	ld	a2, -64(s0)
	ld	a0, -56(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 32767
	slli	a1, a1, 36
	slt	a3, a0, a1
	sd	a3, -96(s0)                     # 8-byte Folded Spill
	seqz	a2, a2
	sd	a2, -88(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB35_6
# %bb.5:
	ld	a0, -96(s0)                     # 8-byte Folded Reload
	sd	a0, -88(s0)                     # 8-byte Folded Spill
.LBB35_6:
	ld	a0, -88(s0)                     # 8-byte Folded Reload
	bnez	a0, .LBB35_8
	j	.LBB35_7
.LBB35_7:
.Lpcrel_hi222:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.35)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi222)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi223:
	auipc	a0, %pcrel_hi(.L__profc_fmaxl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi223)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB35_17
.LBB35_8:
	ld	a0, -40(s0)
	srli	a0, a0, 63
	ld	a1, -56(s0)
	srli	a1, a1, 63
	beq	a0, a1, .LBB35_13
	j	.LBB35_9
.LBB35_9:
.Lpcrel_hi224:
	auipc	a0, %pcrel_hi(.L__profc_fmaxl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi224)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -40(s0)
	bgez	a0, .LBB35_11
	j	.LBB35_10
.LBB35_10:
.Lpcrel_hi225:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.35)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi225)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi226:
	auipc	a0, %pcrel_hi(.L__profc_fmaxl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi226)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -56(s0)
	ld	a1, -64(s0)
	sd	a1, -112(s0)                    # 8-byte Folded Spill
	sd	a0, -104(s0)                    # 8-byte Folded Spill
	j	.LBB35_12
.LBB35_11:
.Lpcrel_hi227:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.35)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi227)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	sd	a1, -112(s0)                    # 8-byte Folded Spill
	sd	a0, -104(s0)                    # 8-byte Folded Spill
	j	.LBB35_12
.LBB35_12:
	ld	a1, -112(s0)                    # 8-byte Folded Reload
	ld	a0, -104(s0)                    # 8-byte Folded Reload
	sd	a1, -32(s0)
	sd	a0, -24(s0)
	j	.LBB35_17
.LBB35_13:
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	ld	a2, -64(s0)
	ld	a3, -56(s0)
	call	__lttf2
	bgez	a0, .LBB35_15
	j	.LBB35_14
.LBB35_14:
.Lpcrel_hi228:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.35)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi228)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi229:
	auipc	a0, %pcrel_hi(.L__profc_fmaxl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi229)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a0, -56(s0)
	ld	a1, -64(s0)
	sd	a1, -128(s0)                    # 8-byte Folded Spill
	sd	a0, -120(s0)                    # 8-byte Folded Spill
	j	.LBB35_16
.LBB35_15:
.Lpcrel_hi230:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.35)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi230)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	sd	a1, -128(s0)                    # 8-byte Folded Spill
	sd	a0, -120(s0)                    # 8-byte Folded Spill
	j	.LBB35_16
.LBB35_16:
	ld	a1, -128(s0)                    # 8-byte Folded Reload
	ld	a0, -120(s0)                    # 8-byte Folded Reload
	sd	a1, -32(s0)
	sd	a0, -24(s0)
	j	.LBB35_17
.LBB35_17:
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end35:
	.size	fmaxl, .Lfunc_end35-fmaxl
                                        # -- End function
	.globl	fmin                            # -- Begin function fmin
	.p2align	1
	.type	fmin,@function
fmin:                                   # @fmin
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a0, -32(s0)
	sd	a1, -40(s0)
.Lpcrel_hi231:
	auipc	a0, %pcrel_hi(.L__profc_fmin)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi231)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	li	a1, 2047
	slli	a1, a1, 52
	addi	a1, a1, 1
	blt	a0, a1, .LBB36_2
	j	.LBB36_1
.LBB36_1:
.Lpcrel_hi232:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.36)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi232)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi233:
	auipc	a0, %pcrel_hi(.L__profc_fmin)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi233)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -40(s0)
	sd	a0, -24(s0)
	j	.LBB36_13
.LBB36_2:
	ld	a0, -40(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	li	a1, 2047
	slli	a1, a1, 52
	addi	a1, a1, 1
	blt	a0, a1, .LBB36_4
	j	.LBB36_3
.LBB36_3:
.Lpcrel_hi234:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.36)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi234)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi235:
	auipc	a0, %pcrel_hi(.L__profc_fmin)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi235)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB36_13
.LBB36_4:
	ld	a0, -32(s0)
	srli	a0, a0, 63
	ld	a1, -40(s0)
	srli	a1, a1, 63
	beq	a0, a1, .LBB36_9
	j	.LBB36_5
.LBB36_5:
.Lpcrel_hi236:
	auipc	a0, %pcrel_hi(.L__profc_fmin)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi236)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -32(s0)
	bgez	a0, .LBB36_7
	j	.LBB36_6
.LBB36_6:
.Lpcrel_hi237:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.36)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi237)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi238:
	auipc	a0, %pcrel_hi(.L__profc_fmin)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi238)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -32(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB36_8
.LBB36_7:
.Lpcrel_hi239:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.36)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi239)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -40(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB36_8
.LBB36_8:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	sd	a0, -24(s0)
	j	.LBB36_13
.LBB36_9:
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	call	__ltdf2
	bgez	a0, .LBB36_11
	j	.LBB36_10
.LBB36_10:
.Lpcrel_hi240:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.36)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi240)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi241:
	auipc	a0, %pcrel_hi(.L__profc_fmin)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi241)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a0, -32(s0)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB36_12
.LBB36_11:
.Lpcrel_hi242:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.36)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi242)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a0, -40(s0)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB36_12
.LBB36_12:
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	sd	a0, -24(s0)
	j	.LBB36_13
.LBB36_13:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end36:
	.size	fmin, .Lfunc_end36-fmin
                                        # -- End function
	.globl	fminf                           # -- Begin function fminf
	.p2align	1
	.type	fminf,@function
fminf:                                  # @fminf
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -24(s0)
	sw	a1, -28(s0)
.Lpcrel_hi243:
	auipc	a0, %pcrel_hi(.L__profc_fminf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi243)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lwu	a0, -24(s0)
	slli	a0, a0, 33
	srli	a0, a0, 33
	lui	a1, 522240
	addiw	a1, a1, 1
	blt	a0, a1, .LBB37_2
	j	.LBB37_1
.LBB37_1:
.Lpcrel_hi244:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.37)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi244)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi245:
	auipc	a0, %pcrel_hi(.L__profc_fminf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi245)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -28(s0)
	sw	a0, -20(s0)
	j	.LBB37_13
.LBB37_2:
	lwu	a0, -28(s0)
	slli	a0, a0, 33
	srli	a0, a0, 33
	lui	a1, 522240
	addiw	a1, a1, 1
	blt	a0, a1, .LBB37_4
	j	.LBB37_3
.LBB37_3:
.Lpcrel_hi246:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.37)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi246)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi247:
	auipc	a0, %pcrel_hi(.L__profc_fminf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi247)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a0, -24(s0)
	sw	a0, -20(s0)
	j	.LBB37_13
.LBB37_4:
	lwu	a0, -24(s0)
	srli	a0, a0, 31
	lwu	a1, -28(s0)
	srli	a1, a1, 31
	beq	a0, a1, .LBB37_9
	j	.LBB37_5
.LBB37_5:
.Lpcrel_hi248:
	auipc	a0, %pcrel_hi(.L__profc_fminf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi248)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	lw	a0, -24(s0)
	bgez	a0, .LBB37_7
	j	.LBB37_6
.LBB37_6:
.Lpcrel_hi249:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.37)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi249)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi250:
	auipc	a0, %pcrel_hi(.L__profc_fminf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi250)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	lw	a0, -24(s0)
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB37_8
.LBB37_7:
.Lpcrel_hi251:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.37)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi251)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	lw	a0, -28(s0)
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB37_8
.LBB37_8:
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	sw	a0, -20(s0)
	j	.LBB37_13
.LBB37_9:
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	call	__ltsf2
	bgez	a0, .LBB37_11
	j	.LBB37_10
.LBB37_10:
.Lpcrel_hi252:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.37)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi252)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi253:
	auipc	a0, %pcrel_hi(.L__profc_fminf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi253)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	lw	a0, -24(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB37_12
.LBB37_11:
.Lpcrel_hi254:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.37)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi254)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	lw	a0, -28(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB37_12
.LBB37_12:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	sw	a0, -20(s0)
	j	.LBB37_13
.LBB37_13:
	lw	a0, -20(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end37:
	.size	fminf, .Lfunc_end37-fminf
                                        # -- End function
	.globl	fminl                           # -- Begin function fminl
	.p2align	1
	.type	fminl,@function
fminl:                                  # @fminl
# %bb.0:
	addi	sp, sp, -128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	addi	s0, sp, 128
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	sd	a3, -56(s0)
	sd	a2, -64(s0)
.Lpcrel_hi255:
	auipc	a0, %pcrel_hi(.L__profc_fminl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi255)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a2, -48(s0)
	ld	a0, -40(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 32767
	slli	a1, a1, 36
	slt	a3, a0, a1
	sd	a3, -80(s0)                     # 8-byte Folded Spill
	seqz	a2, a2
	sd	a2, -72(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB38_2
# %bb.1:
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	sd	a0, -72(s0)                     # 8-byte Folded Spill
.LBB38_2:
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	bnez	a0, .LBB38_4
	j	.LBB38_3
.LBB38_3:
.Lpcrel_hi256:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.38)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi256)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi257:
	auipc	a0, %pcrel_hi(.L__profc_fminl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi257)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -64(s0)
	ld	a1, -56(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB38_17
.LBB38_4:
	ld	a2, -64(s0)
	ld	a0, -56(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 32767
	slli	a1, a1, 36
	slt	a3, a0, a1
	sd	a3, -96(s0)                     # 8-byte Folded Spill
	seqz	a2, a2
	sd	a2, -88(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB38_6
# %bb.5:
	ld	a0, -96(s0)                     # 8-byte Folded Reload
	sd	a0, -88(s0)                     # 8-byte Folded Spill
.LBB38_6:
	ld	a0, -88(s0)                     # 8-byte Folded Reload
	bnez	a0, .LBB38_8
	j	.LBB38_7
.LBB38_7:
.Lpcrel_hi258:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.38)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi258)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi259:
	auipc	a0, %pcrel_hi(.L__profc_fminl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi259)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB38_17
.LBB38_8:
	ld	a0, -40(s0)
	srli	a0, a0, 63
	ld	a1, -56(s0)
	srli	a1, a1, 63
	beq	a0, a1, .LBB38_13
	j	.LBB38_9
.LBB38_9:
.Lpcrel_hi260:
	auipc	a0, %pcrel_hi(.L__profc_fminl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi260)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -40(s0)
	bgez	a0, .LBB38_11
	j	.LBB38_10
.LBB38_10:
.Lpcrel_hi261:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.38)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi261)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi262:
	auipc	a0, %pcrel_hi(.L__profc_fminl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi262)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	sd	a1, -112(s0)                    # 8-byte Folded Spill
	sd	a0, -104(s0)                    # 8-byte Folded Spill
	j	.LBB38_12
.LBB38_11:
.Lpcrel_hi263:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.38)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi263)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -56(s0)
	ld	a1, -64(s0)
	sd	a1, -112(s0)                    # 8-byte Folded Spill
	sd	a0, -104(s0)                    # 8-byte Folded Spill
	j	.LBB38_12
.LBB38_12:
	ld	a1, -112(s0)                    # 8-byte Folded Reload
	ld	a0, -104(s0)                    # 8-byte Folded Reload
	sd	a1, -32(s0)
	sd	a0, -24(s0)
	j	.LBB38_17
.LBB38_13:
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	ld	a2, -64(s0)
	ld	a3, -56(s0)
	call	__lttf2
	bgez	a0, .LBB38_15
	j	.LBB38_14
.LBB38_14:
.Lpcrel_hi264:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.38)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi264)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi265:
	auipc	a0, %pcrel_hi(.L__profc_fminl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi265)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	sd	a1, -128(s0)                    # 8-byte Folded Spill
	sd	a0, -120(s0)                    # 8-byte Folded Spill
	j	.LBB38_16
.LBB38_15:
.Lpcrel_hi266:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.38)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi266)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a0, -56(s0)
	ld	a1, -64(s0)
	sd	a1, -128(s0)                    # 8-byte Folded Spill
	sd	a0, -120(s0)                    # 8-byte Folded Spill
	j	.LBB38_16
.LBB38_16:
	ld	a1, -128(s0)                    # 8-byte Folded Reload
	ld	a0, -120(s0)                    # 8-byte Folded Reload
	sd	a1, -32(s0)
	sd	a0, -24(s0)
	j	.LBB38_17
.LBB38_17:
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end38:
	.size	fminl, .Lfunc_end38-fminl
                                        # -- End function
	.globl	l64a                            # -- Begin function l64a
	.p2align	1
	.type	l64a,@function
l64a:                                   # @l64a
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
.Lpcrel_hi267:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.39)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi267)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sd	a0, -24(s0)
.Lpcrel_hi268:
	auipc	a0, %pcrel_hi(.L__profc_l64a)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi268)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sw	a0, -36(s0)
.Lpcrel_hi269:
	auipc	a0, %pcrel_hi(l64a.s)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi269)
	sd	a0, -32(s0)
	j	.LBB39_1
.LBB39_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	beqz	a0, .LBB39_4
	j	.LBB39_2
.LBB39_2:                               #   in Loop: Header=BB39_1 Depth=1
.Lpcrel_hi270:
	auipc	a0, %pcrel_hi(.L__profc_l64a)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi270)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lwu	a0, -36(s0)
	andi	a1, a0, 63
.Lpcrel_hi271:
	auipc	a0, %pcrel_hi(digits)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi271)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	ld	a1, -32(s0)
	sb	a0, 0(a1)
	j	.LBB39_3
.LBB39_3:                               #   in Loop: Header=BB39_1 Depth=1
.Lpcrel_hi272:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.39)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi272)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -32(s0)
	addi	a0, a0, 1
	sd	a0, -32(s0)
	lwu	a0, -36(s0)
	srli	a0, a0, 6
	sw	a0, -36(s0)
	j	.LBB39_1
.LBB39_4:
	ld	a1, -32(s0)
	li	a0, 0
	sb	a0, 0(a1)
.Lpcrel_hi273:
	auipc	a0, %pcrel_hi(l64a.s)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi273)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end39:
	.size	l64a, .Lfunc_end39-l64a
                                        # -- End function
	.globl	srand                           # -- Begin function srand
	.p2align	1
	.type	srand,@function
srand:                                  # @srand
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi274:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.40)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi274)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi275:
	auipc	a0, %pcrel_hi(.L__profc_srand)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi275)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	addiw	a0, a0, -1
	slli	a0, a0, 32
	srli	a0, a0, 32
.Lpcrel_hi276:
	auipc	a1, %pcrel_hi(seed)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi276)
	sd	a0, 0(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end40:
	.size	srand, .Lfunc_end40-srand
                                        # -- End function
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rand
.LCPI41_0:
	.quad	6364136223846793005             # 0x5851f42d4c957f2d
	.text
	.globl	rand
	.p2align	1
	.type	rand,@function
rand:                                   # @rand
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	addi	s0, sp, 16
.Lpcrel_hi277:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.41)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi277)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi278:
	auipc	a0, %pcrel_hi(.L__profc_rand)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi278)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi279:
	auipc	a0, %pcrel_hi(seed)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi279)
	ld	a1, 0(a0)
.Lpcrel_hi280:
	auipc	a2, %pcrel_hi(.LCPI41_0)
	addi	a2, a2, %pcrel_lo(.Lpcrel_hi280)
	ld	a2, 0(a2)
	mul	a1, a1, a2
	addi	a1, a1, 1
	sd	a1, 0(a0)
	ld	a0, 0(a0)
	srli	a0, a0, 33
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end41:
	.size	rand, .Lfunc_end41-rand
                                        # -- End function
	.globl	insque                          # -- Begin function insque
	.p2align	1
	.type	insque,@function
insque:                                 # @insque
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
	sd	a1, -32(s0)
.Lpcrel_hi281:
	auipc	a0, %pcrel_hi(.L__profc_insque)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi281)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -40(s0)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	ld	a0, -48(s0)
	bnez	a0, .LBB42_2
	j	.LBB42_1
.LBB42_1:
.Lpcrel_hi282:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.42)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi282)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi283:
	auipc	a0, %pcrel_hi(.L__profc_insque)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi283)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a1, -40(s0)
	li	a0, 0
	sd	a0, 8(a1)
	ld	a1, -40(s0)
	sd	a0, 0(a1)
	j	.LBB42_4
.LBB42_2:
.Lpcrel_hi284:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.42)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi284)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -48(s0)
	ld	a0, 0(a0)
	ld	a1, -40(s0)
	sd	a0, 0(a1)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a0, 8(a1)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	sd	a0, 0(a1)
	ld	a0, -40(s0)
	ld	a0, 0(a0)
	beqz	a0, .LBB42_4
	j	.LBB42_3
.LBB42_3:
.Lpcrel_hi285:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.42)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi285)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi286:
	auipc	a0, %pcrel_hi(.L__profc_insque)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi286)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -40(s0)
	ld	a1, 0(a0)
	sd	a0, 8(a1)
	j	.LBB42_4
.LBB42_4:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end42:
	.size	insque, .Lfunc_end42-insque
                                        # -- End function
	.globl	remque                          # -- Begin function remque
	.p2align	1
	.type	remque,@function
remque:                                 # @remque
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
.Lpcrel_hi287:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.43)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi287)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sd	a0, -24(s0)
.Lpcrel_hi288:
	auipc	a0, %pcrel_hi(.L__profc_remque)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi288)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -32(s0)
	ld	a0, -32(s0)
	ld	a0, 0(a0)
	beqz	a0, .LBB43_2
	j	.LBB43_1
.LBB43_1:
.Lpcrel_hi289:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.43)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi289)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi290:
	auipc	a0, %pcrel_hi(.L__profc_remque)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi290)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a1, -32(s0)
	ld	a0, 8(a1)
	ld	a1, 0(a1)
	sd	a0, 8(a1)
	j	.LBB43_2
.LBB43_2:
	ld	a0, -32(s0)
	ld	a0, 8(a0)
	beqz	a0, .LBB43_4
	j	.LBB43_3
.LBB43_3:
.Lpcrel_hi291:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.43)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi291)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi292:
	auipc	a0, %pcrel_hi(.L__profc_remque)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi292)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a1, -32(s0)
	ld	a0, 0(a1)
	ld	a1, 8(a1)
	sd	a0, 0(a1)
	j	.LBB43_4
.LBB43_4:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end43:
	.size	remque, .Lfunc_end43-remque
                                        # -- End function
	.globl	lsearch                         # -- Begin function lsearch
	.p2align	1
	.type	lsearch,@function
lsearch:                                # @lsearch
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 112
	mv	ra, a4
	sd	ra, -104(s0)                    # 8-byte Folded Spill
	mv	ra, a0
	ld	a0, -104(s0)                    # 8-byte Folded Reload
	sd	ra, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	sd	a3, -56(s0)
	sd	a0, -64(s0)
.Lpcrel_hi293:
	auipc	a0, %pcrel_hi(.L__profc_lsearch)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi293)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -56(s0)
	sd	a0, -96(s0)                     # 8-byte Folded Spill
	ld	a0, -40(s0)
	sd	a0, -72(s0)
	ld	a0, -48(s0)
	ld	a0, 0(a0)
	sd	a0, -80(s0)
	li	a0, 0
	sd	a0, -88(s0)
	j	.LBB44_1
.LBB44_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -88(s0)
	ld	a1, -80(s0)
	bgeu	a0, a1, .LBB44_6
	j	.LBB44_2
.LBB44_2:                               #   in Loop: Header=BB44_1 Depth=1
	ld	ra, -96(s0)                     # 8-byte Folded Reload
.Lpcrel_hi294:
	auipc	a0, %pcrel_hi(.L__profc_lsearch)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi294)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a2, -64(s0)
	ld	a0, -32(s0)
	ld	a1, -72(s0)
	ld	a3, -88(s0)
	mul	a3, a3, ra
	add	a1, a1, a3
	jalr	a2
	bnez	a0, .LBB44_4
	j	.LBB44_3
.LBB44_3:
	ld	a2, -96(s0)                     # 8-byte Folded Reload
.Lpcrel_hi295:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.44)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi295)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi296:
	auipc	a0, %pcrel_hi(.L__profc_lsearch)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi296)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -72(s0)
	ld	a1, -88(s0)
	mul	a1, a1, a2
	add	a0, a0, a1
	sd	a0, -24(s0)
	j	.LBB44_7
.LBB44_4:                               #   in Loop: Header=BB44_1 Depth=1
	j	.LBB44_5
.LBB44_5:                               #   in Loop: Header=BB44_1 Depth=1
.Lpcrel_hi297:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.44)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi297)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -88(s0)
	addi	a0, a0, 1
	sd	a0, -88(s0)
	j	.LBB44_1
.LBB44_6:
	ld	a2, -96(s0)                     # 8-byte Folded Reload
.Lpcrel_hi298:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.44)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi298)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -80(s0)
	addi	a0, a0, 1
	ld	a1, -48(s0)
	sd	a0, 0(a1)
	ld	a0, -72(s0)
	ld	a1, -80(s0)
	mul	a1, a1, a2
	add	a0, a0, a1
	sd	a0, -112(s0)                    # 8-byte Folded Spill
	ld	a1, -32(s0)
	ld	a2, -56(s0)
	call	memcpy
                                        # kill: def $x11 killed $x10
	ld	a0, -112(s0)                    # 8-byte Folded Reload
	sd	a0, -24(s0)
	j	.LBB44_7
.LBB44_7:
	ld	a0, -24(s0)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end44:
	.size	lsearch, .Lfunc_end44-lsearch
                                        # -- End function
	.globl	lfind                           # -- Begin function lfind
	.p2align	1
	.type	lfind,@function
lfind:                                  # @lfind
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 112
	mv	ra, a4
	sd	ra, -104(s0)                    # 8-byte Folded Spill
	mv	ra, a0
	ld	a0, -104(s0)                    # 8-byte Folded Reload
	sd	ra, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	sd	a3, -56(s0)
	sd	a0, -64(s0)
.Lpcrel_hi299:
	auipc	a0, %pcrel_hi(.L__profc_lfind)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi299)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -56(s0)
	sd	a0, -96(s0)                     # 8-byte Folded Spill
	ld	a0, -40(s0)
	sd	a0, -72(s0)
	ld	a0, -48(s0)
	ld	a0, 0(a0)
	sd	a0, -80(s0)
	li	a0, 0
	sd	a0, -88(s0)
	j	.LBB45_1
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -88(s0)
	ld	a1, -80(s0)
	bgeu	a0, a1, .LBB45_6
	j	.LBB45_2
.LBB45_2:                               #   in Loop: Header=BB45_1 Depth=1
	ld	ra, -96(s0)                     # 8-byte Folded Reload
.Lpcrel_hi300:
	auipc	a0, %pcrel_hi(.L__profc_lfind)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi300)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a2, -64(s0)
	ld	a0, -32(s0)
	ld	a1, -72(s0)
	ld	a3, -88(s0)
	mul	a3, a3, ra
	add	a1, a1, a3
	jalr	a2
	bnez	a0, .LBB45_4
	j	.LBB45_3
.LBB45_3:
	ld	a2, -96(s0)                     # 8-byte Folded Reload
.Lpcrel_hi301:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.45)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi301)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi302:
	auipc	a0, %pcrel_hi(.L__profc_lfind)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi302)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -72(s0)
	ld	a1, -88(s0)
	mul	a1, a1, a2
	add	a0, a0, a1
	sd	a0, -24(s0)
	j	.LBB45_7
.LBB45_4:                               #   in Loop: Header=BB45_1 Depth=1
	j	.LBB45_5
.LBB45_5:                               #   in Loop: Header=BB45_1 Depth=1
.Lpcrel_hi303:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.45)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi303)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -88(s0)
	addi	a0, a0, 1
	sd	a0, -88(s0)
	j	.LBB45_1
.LBB45_6:
.Lpcrel_hi304:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.45)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi304)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB45_7
.LBB45_7:
	ld	a0, -24(s0)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end45:
	.size	lfind, .Lfunc_end45-lfind
                                        # -- End function
	.globl	abs                             # -- Begin function abs
	.p2align	1
	.type	abs,@function
abs:                                    # @abs
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
.Lpcrel_hi305:
	auipc	a0, %pcrel_hi(.L__profc_abs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi305)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a1, -20(s0)
	li	a0, 0
	bge	a0, a1, .LBB46_2
	j	.LBB46_1
.LBB46_1:
.Lpcrel_hi306:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.46)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi306)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi307:
	auipc	a0, %pcrel_hi(.L__profc_abs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi307)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -20(s0)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB46_3
.LBB46_2:
.Lpcrel_hi308:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.46)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi308)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a1, -20(s0)
	li	a0, 0
	subw	a0, a0, a1
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB46_3
.LBB46_3:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end46:
	.size	abs, .Lfunc_end46-abs
                                        # -- End function
	.globl	atoi                            # -- Begin function atoi
	.p2align	1
	.type	atoi,@function
atoi:                                   # @atoi
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
.Lpcrel_hi309:
	auipc	a0, %pcrel_hi(.L__profc_atoi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi309)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 0
	sw	a0, -28(s0)
	sw	a0, -32(s0)
	j	.LBB47_1
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	call	isspace
	beqz	a0, .LBB47_3
	j	.LBB47_2
.LBB47_2:                               #   in Loop: Header=BB47_1 Depth=1
.Lpcrel_hi310:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.47)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi310)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi311:
	auipc	a0, %pcrel_hi(.L__profc_atoi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi311)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB47_1
.LBB47_3:
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	li	a1, 43
	beq	a0, a1, .LBB47_6
	j	.LBB47_4
.LBB47_4:
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	li	a1, 45
	bne	a0, a1, .LBB47_8
	j	.LBB47_5
.LBB47_5:
.Lpcrel_hi312:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.47)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi312)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi313:
	auipc	a0, %pcrel_hi(.L__profc_atoi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi313)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	li	a0, 1
	sw	a0, -32(s0)
	j	.LBB47_7
.LBB47_6:
.Lpcrel_hi314:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.47)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi314)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi315:
	auipc	a0, %pcrel_hi(.L__profc_atoi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi315)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	j	.LBB47_7
.LBB47_7:
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB47_8
.LBB47_8:
.Lpcrel_hi316:
	auipc	a0, %pcrel_hi(.L__profc_atoi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi316)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	j	.LBB47_9
.LBB47_9:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	call	isdigit
	beqz	a0, .LBB47_11
	j	.LBB47_10
.LBB47_10:                              #   in Loop: Header=BB47_9 Depth=1
.Lpcrel_hi317:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.47)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi317)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi318:
	auipc	a0, %pcrel_hi(.L__profc_atoi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi318)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	lw	a0, -28(s0)
	li	a1, 10
	mulw	a0, a0, a1
	ld	a1, -24(s0)
	addi	a2, a1, 1
	sd	a2, -24(s0)
	lbu	a1, 0(a1)
	subw	a0, a0, a1
	addiw	a0, a0, 48
	sw	a0, -28(s0)
	j	.LBB47_9
.LBB47_11:
	lw	a0, -32(s0)
	beqz	a0, .LBB47_13
	j	.LBB47_12
.LBB47_12:
.Lpcrel_hi319:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.47)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi319)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi320:
	auipc	a0, %pcrel_hi(.L__profc_atoi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi320)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	lw	a0, -28(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB47_14
.LBB47_13:
.Lpcrel_hi321:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.47)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi321)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	lw	a1, -28(s0)
	li	a0, 0
	subw	a0, a0, a1
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB47_14
.LBB47_14:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end47:
	.size	atoi, .Lfunc_end47-atoi
                                        # -- End function
	.globl	atol                            # -- Begin function atol
	.p2align	1
	.type	atol,@function
atol:                                   # @atol
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -24(s0)
.Lpcrel_hi322:
	auipc	a0, %pcrel_hi(.L__profc_atol)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi322)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 0
	sd	a0, -32(s0)
	sw	a0, -36(s0)
	j	.LBB48_1
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	call	isspace
	beqz	a0, .LBB48_3
	j	.LBB48_2
.LBB48_2:                               #   in Loop: Header=BB48_1 Depth=1
.Lpcrel_hi323:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.48)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi323)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi324:
	auipc	a0, %pcrel_hi(.L__profc_atol)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi324)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB48_1
.LBB48_3:
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	li	a1, 43
	beq	a0, a1, .LBB48_6
	j	.LBB48_4
.LBB48_4:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	li	a1, 45
	bne	a0, a1, .LBB48_8
	j	.LBB48_5
.LBB48_5:
.Lpcrel_hi325:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.48)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi325)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi326:
	auipc	a0, %pcrel_hi(.L__profc_atol)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi326)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	li	a0, 1
	sw	a0, -36(s0)
	j	.LBB48_7
.LBB48_6:
.Lpcrel_hi327:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.48)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi327)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi328:
	auipc	a0, %pcrel_hi(.L__profc_atol)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi328)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	j	.LBB48_7
.LBB48_7:
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB48_8
.LBB48_8:
.Lpcrel_hi329:
	auipc	a0, %pcrel_hi(.L__profc_atol)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi329)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	j	.LBB48_9
.LBB48_9:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	call	isdigit
	beqz	a0, .LBB48_11
	j	.LBB48_10
.LBB48_10:                              #   in Loop: Header=BB48_9 Depth=1
.Lpcrel_hi330:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.48)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi330)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi331:
	auipc	a0, %pcrel_hi(.L__profc_atol)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi331)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a0, -32(s0)
	li	a1, 10
	mul	a0, a0, a1
	ld	a1, -24(s0)
	addi	a2, a1, 1
	sd	a2, -24(s0)
	lbu	a1, 0(a1)
	sub	a0, a0, a1
	addi	a0, a0, 48
	sd	a0, -32(s0)
	j	.LBB48_9
.LBB48_11:
	lw	a0, -36(s0)
	beqz	a0, .LBB48_13
	j	.LBB48_12
.LBB48_12:
.Lpcrel_hi332:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.48)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi332)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi333:
	auipc	a0, %pcrel_hi(.L__profc_atol)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi333)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	ld	a0, -32(s0)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB48_14
.LBB48_13:
.Lpcrel_hi334:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.48)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi334)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a1, -32(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB48_14
.LBB48_14:
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end48:
	.size	atol, .Lfunc_end48-atol
                                        # -- End function
	.globl	atoll                           # -- Begin function atoll
	.p2align	1
	.type	atoll,@function
atoll:                                  # @atoll
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -24(s0)
.Lpcrel_hi335:
	auipc	a0, %pcrel_hi(.L__profc_atoll)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi335)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 0
	sd	a0, -32(s0)
	sw	a0, -36(s0)
	j	.LBB49_1
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	call	isspace
	beqz	a0, .LBB49_3
	j	.LBB49_2
.LBB49_2:                               #   in Loop: Header=BB49_1 Depth=1
.Lpcrel_hi336:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.49)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi336)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi337:
	auipc	a0, %pcrel_hi(.L__profc_atoll)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi337)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB49_1
.LBB49_3:
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	li	a1, 43
	beq	a0, a1, .LBB49_6
	j	.LBB49_4
.LBB49_4:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	li	a1, 45
	bne	a0, a1, .LBB49_8
	j	.LBB49_5
.LBB49_5:
.Lpcrel_hi338:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.49)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi338)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi339:
	auipc	a0, %pcrel_hi(.L__profc_atoll)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi339)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	li	a0, 1
	sw	a0, -36(s0)
	j	.LBB49_7
.LBB49_6:
.Lpcrel_hi340:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.49)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi340)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi341:
	auipc	a0, %pcrel_hi(.L__profc_atoll)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi341)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	j	.LBB49_7
.LBB49_7:
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB49_8
.LBB49_8:
.Lpcrel_hi342:
	auipc	a0, %pcrel_hi(.L__profc_atoll)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi342)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	j	.LBB49_9
.LBB49_9:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	call	isdigit
	beqz	a0, .LBB49_11
	j	.LBB49_10
.LBB49_10:                              #   in Loop: Header=BB49_9 Depth=1
.Lpcrel_hi343:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.49)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi343)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi344:
	auipc	a0, %pcrel_hi(.L__profc_atoll)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi344)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a0, -32(s0)
	li	a1, 10
	mul	a0, a0, a1
	ld	a1, -24(s0)
	addi	a2, a1, 1
	sd	a2, -24(s0)
	lbu	a1, 0(a1)
	sub	a0, a0, a1
	addi	a0, a0, 48
	sd	a0, -32(s0)
	j	.LBB49_9
.LBB49_11:
	lw	a0, -36(s0)
	beqz	a0, .LBB49_13
	j	.LBB49_12
.LBB49_12:
.Lpcrel_hi345:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.49)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi345)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi346:
	auipc	a0, %pcrel_hi(.L__profc_atoll)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi346)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	ld	a0, -32(s0)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB49_14
.LBB49_13:
.Lpcrel_hi347:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.49)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi347)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a1, -32(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB49_14
.LBB49_14:
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end49:
	.size	atoll, .Lfunc_end49-atoll
                                        # -- End function
	.globl	bsearch                         # -- Begin function bsearch
	.p2align	1
	.type	bsearch,@function
bsearch:                                # @bsearch
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 96
	mv	ra, a4
	sd	ra, -88(s0)                     # 8-byte Folded Spill
	mv	ra, a0
	ld	a0, -88(s0)                     # 8-byte Folded Reload
	sd	ra, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	sd	a3, -56(s0)
	sd	a0, -64(s0)
.Lpcrel_hi348:
	auipc	a0, %pcrel_hi(.L__profc_bsearch)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi348)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	j	.LBB50_1
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -48(s0)
	beqz	a0, .LBB50_9
	j	.LBB50_2
.LBB50_2:                               #   in Loop: Header=BB50_1 Depth=1
.Lpcrel_hi349:
	auipc	a0, %pcrel_hi(.L__profc_bsearch)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi349)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -40(s0)
	ld	a1, -56(s0)
	ld	a2, -48(s0)
	srli	a2, a2, 1
	mul	a1, a1, a2
	add	a0, a0, a1
	sd	a0, -72(s0)
	ld	a2, -64(s0)
	ld	a0, -32(s0)
	ld	a1, -72(s0)
	jalr	a2
	sw	a0, -76(s0)
	lw	a0, -76(s0)
	bgez	a0, .LBB50_4
	j	.LBB50_3
.LBB50_3:                               #   in Loop: Header=BB50_1 Depth=1
.Lpcrel_hi350:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.50)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi350)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi351:
	auipc	a0, %pcrel_hi(.L__profc_bsearch)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi351)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -48(s0)
	srli	a0, a0, 1
	sd	a0, -48(s0)
	j	.LBB50_8
.LBB50_4:                               #   in Loop: Header=BB50_1 Depth=1
	lw	a1, -76(s0)
	li	a0, 0
	bge	a0, a1, .LBB50_6
	j	.LBB50_5
.LBB50_5:                               #   in Loop: Header=BB50_1 Depth=1
.Lpcrel_hi352:
	auipc	a0, %pcrel_hi(.L__profc_bsearch)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi352)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -72(s0)
	ld	a1, -56(s0)
	add	a0, a0, a1
	sd	a0, -40(s0)
	ld	a1, -48(s0)
	srli	a0, a1, 1
	not	a0, a0
	add	a0, a0, a1
	sd	a0, -48(s0)
	j	.LBB50_7
.LBB50_6:
.Lpcrel_hi353:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.50)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi353)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -72(s0)
	sd	a0, -24(s0)
	j	.LBB50_10
.LBB50_7:                               #   in Loop: Header=BB50_1 Depth=1
.Lpcrel_hi354:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.50)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi354)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	j	.LBB50_8
.LBB50_8:                               #   in Loop: Header=BB50_1 Depth=1
	j	.LBB50_1
.LBB50_9:
.Lpcrel_hi355:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.50)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi355)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB50_10
.LBB50_10:
	ld	a0, -24(s0)
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end50:
	.size	bsearch, .Lfunc_end50-bsearch
                                        # -- End function
	.globl	bsearch_r                       # -- Begin function bsearch_r
	.p2align	1
	.type	bsearch_r,@function
bsearch_r:                              # @bsearch_r
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 112
	mv	ra, a5
	sd	ra, -104(s0)                    # 8-byte Folded Spill
	mv	ra, a4
	sd	ra, -112(s0)                    # 8-byte Folded Spill
	mv	ra, a1
	ld	a1, -112(s0)                    # 8-byte Folded Reload
	sd	a0, -32(s0)
	ld	a0, -104(s0)                    # 8-byte Folded Reload
	sd	ra, -40(s0)
	sd	a2, -48(s0)
	sd	a3, -56(s0)
	sd	a1, -64(s0)
	sd	a0, -72(s0)
.Lpcrel_hi356:
	auipc	a0, %pcrel_hi(.L__profc_bsearch_r)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi356)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -40(s0)
	sd	a0, -80(s0)
	ld	a0, -48(s0)
	sw	a0, -84(s0)
	j	.LBB51_1
.LBB51_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -84(s0)
	beqz	a0, .LBB51_8
	j	.LBB51_2
.LBB51_2:                               #   in Loop: Header=BB51_1 Depth=1
.Lpcrel_hi357:
	auipc	a0, %pcrel_hi(.L__profc_bsearch_r)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi357)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -80(s0)
	lw	a1, -84(s0)
	srai	a1, a1, 1
	ld	a2, -56(s0)
	mul	a1, a1, a2
	add	a0, a0, a1
	sd	a0, -96(s0)
	ld	a3, -64(s0)
	ld	a0, -32(s0)
	ld	a1, -96(s0)
	ld	a2, -72(s0)
	jalr	a3
	sw	a0, -88(s0)
	lw	a0, -88(s0)
	bnez	a0, .LBB51_4
	j	.LBB51_3
.LBB51_3:
.Lpcrel_hi358:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.51)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi358)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi359:
	auipc	a0, %pcrel_hi(.L__profc_bsearch_r)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi359)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -96(s0)
	sd	a0, -24(s0)
	j	.LBB51_9
.LBB51_4:                               #   in Loop: Header=BB51_1 Depth=1
	lw	a1, -88(s0)
	li	a0, 0
	bge	a0, a1, .LBB51_6
	j	.LBB51_5
.LBB51_5:                               #   in Loop: Header=BB51_1 Depth=1
.Lpcrel_hi360:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.51)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi360)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi361:
	auipc	a0, %pcrel_hi(.L__profc_bsearch_r)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi361)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -96(s0)
	ld	a1, -56(s0)
	add	a0, a0, a1
	sd	a0, -80(s0)
	lw	a0, -84(s0)
	addiw	a0, a0, -1
	sw	a0, -84(s0)
	j	.LBB51_6
.LBB51_6:                               #   in Loop: Header=BB51_1 Depth=1
	j	.LBB51_7
.LBB51_7:                               #   in Loop: Header=BB51_1 Depth=1
.Lpcrel_hi362:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.51)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi362)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a0, -84(s0)
	srli	a0, a0, 1
	sw	a0, -84(s0)
	j	.LBB51_1
.LBB51_8:
.Lpcrel_hi363:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.51)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi363)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB51_9
.LBB51_9:
	ld	a0, -24(s0)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end51:
	.size	bsearch_r, .Lfunc_end51-bsearch_r
                                        # -- End function
	.globl	div                             # -- Begin function div
	.p2align	1
	.type	div,@function
div:                                    # @div
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi364:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.52)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi364)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sw	a0, -28(s0)
	sw	a1, -32(s0)
.Lpcrel_hi365:
	auipc	a0, %pcrel_hi(.L__profc_div)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi365)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -28(s0)
	lw	a1, -32(s0)
	divw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -28(s0)
	lw	a1, -32(s0)
	remw	a0, a0, a1
	sw	a0, -20(s0)
	lwu	a0, -20(s0)
	slli	a0, a0, 32
	lwu	a1, -24(s0)
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end52:
	.size	div, .Lfunc_end52-div
                                        # -- End function
	.globl	imaxabs                         # -- Begin function imaxabs
	.p2align	1
	.type	imaxabs,@function
imaxabs:                                # @imaxabs
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
	sd	a0, -24(s0)
.Lpcrel_hi366:
	auipc	a0, %pcrel_hi(.L__profc_imaxabs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi366)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a1, -24(s0)
	li	a0, 0
	bge	a0, a1, .LBB53_2
	j	.LBB53_1
.LBB53_1:
.Lpcrel_hi367:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.53)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi367)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi368:
	auipc	a0, %pcrel_hi(.L__profc_imaxabs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi368)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -24(s0)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB53_3
.LBB53_2:
.Lpcrel_hi369:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.53)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi369)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a1, -24(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB53_3
.LBB53_3:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end53:
	.size	imaxabs, .Lfunc_end53-imaxabs
                                        # -- End function
	.globl	imaxdiv                         # -- Begin function imaxdiv
	.p2align	1
	.type	imaxdiv,@function
imaxdiv:                                # @imaxdiv
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
.Lpcrel_hi370:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.54)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi370)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -40(s0)
	sd	a1, -48(s0)
.Lpcrel_hi371:
	auipc	a0, %pcrel_hi(.L__profc_imaxdiv)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi371)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	div	a0, a0, a1
	sd	a0, -32(s0)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	rem	a0, a0, a1
	sd	a0, -24(s0)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end54:
	.size	imaxdiv, .Lfunc_end54-imaxdiv
                                        # -- End function
	.globl	labs                            # -- Begin function labs
	.p2align	1
	.type	labs,@function
labs:                                   # @labs
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
	sd	a0, -24(s0)
.Lpcrel_hi372:
	auipc	a0, %pcrel_hi(.L__profc_labs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi372)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a1, -24(s0)
	li	a0, 0
	bge	a0, a1, .LBB55_2
	j	.LBB55_1
.LBB55_1:
.Lpcrel_hi373:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.55)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi373)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi374:
	auipc	a0, %pcrel_hi(.L__profc_labs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi374)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -24(s0)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB55_3
.LBB55_2:
.Lpcrel_hi375:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.55)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi375)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a1, -24(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB55_3
.LBB55_3:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end55:
	.size	labs, .Lfunc_end55-labs
                                        # -- End function
	.globl	ldiv                            # -- Begin function ldiv
	.p2align	1
	.type	ldiv,@function
ldiv:                                   # @ldiv
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
.Lpcrel_hi376:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.56)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi376)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -40(s0)
	sd	a1, -48(s0)
.Lpcrel_hi377:
	auipc	a0, %pcrel_hi(.L__profc_ldiv)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi377)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	div	a0, a0, a1
	sd	a0, -32(s0)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	rem	a0, a0, a1
	sd	a0, -24(s0)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end56:
	.size	ldiv, .Lfunc_end56-ldiv
                                        # -- End function
	.globl	llabs                           # -- Begin function llabs
	.p2align	1
	.type	llabs,@function
llabs:                                  # @llabs
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
	sd	a0, -24(s0)
.Lpcrel_hi378:
	auipc	a0, %pcrel_hi(.L__profc_llabs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi378)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a1, -24(s0)
	li	a0, 0
	bge	a0, a1, .LBB57_2
	j	.LBB57_1
.LBB57_1:
.Lpcrel_hi379:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.57)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi379)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi380:
	auipc	a0, %pcrel_hi(.L__profc_llabs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi380)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -24(s0)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB57_3
.LBB57_2:
.Lpcrel_hi381:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.57)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi381)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a1, -24(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB57_3
.LBB57_3:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end57:
	.size	llabs, .Lfunc_end57-llabs
                                        # -- End function
	.globl	lldiv                           # -- Begin function lldiv
	.p2align	1
	.type	lldiv,@function
lldiv:                                  # @lldiv
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
.Lpcrel_hi382:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.58)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi382)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -40(s0)
	sd	a1, -48(s0)
.Lpcrel_hi383:
	auipc	a0, %pcrel_hi(.L__profc_lldiv)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi383)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	div	a0, a0, a1
	sd	a0, -32(s0)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	rem	a0, a0, a1
	sd	a0, -24(s0)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end58:
	.size	lldiv, .Lfunc_end58-lldiv
                                        # -- End function
	.globl	wcschr                          # -- Begin function wcschr
	.p2align	1
	.type	wcschr,@function
wcschr:                                 # @wcschr
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
	sd	a0, -24(s0)
	sw	a1, -28(s0)
.Lpcrel_hi384:
	auipc	a0, %pcrel_hi(.L__profc_wcschr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi384)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	j	.LBB59_1
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	li	a1, 0
	sd	a1, -40(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB59_4
	j	.LBB59_2
.LBB59_2:                               #   in Loop: Header=BB59_1 Depth=1
.Lpcrel_hi385:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.59)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi385)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi386:
	auipc	a0, %pcrel_hi(.L__profc_wcschr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi386)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	lw	a1, -28(s0)
	xor	a2, a0, a1
	snez	a2, a2
	sd	a2, -48(s0)                     # 8-byte Folded Spill
	sd	a2, -40(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB59_4
	j	.LBB59_3
.LBB59_3:                               #   in Loop: Header=BB59_1 Depth=1
	ld	a0, -48(s0)                     # 8-byte Folded Reload
.Lpcrel_hi387:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.59)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi387)
	ld	a1, 8(a2)
	addi	a1, a1, 1
	sd	a1, 8(a2)
.Lpcrel_hi388:
	auipc	a1, %pcrel_hi(.L__profc_wcschr)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi388)
	ld	a1, 24(a2)
	addi	a1, a1, 1
	sd	a1, 24(a2)
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB59_4
.LBB59_4:                               #   in Loop: Header=BB59_1 Depth=1
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB59_7
	j	.LBB59_5
.LBB59_5:                               #   in Loop: Header=BB59_1 Depth=1
.Lpcrel_hi389:
	auipc	a0, %pcrel_hi(.L__profc_wcschr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi389)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	j	.LBB59_6
.LBB59_6:                               #   in Loop: Header=BB59_1 Depth=1
.Lpcrel_hi390:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.59)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi390)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -24(s0)
	addi	a0, a0, 4
	sd	a0, -24(s0)
	j	.LBB59_1
.LBB59_7:
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	beqz	a0, .LBB59_9
	j	.LBB59_8
.LBB59_8:
.Lpcrel_hi391:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.59)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi391)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi392:
	auipc	a0, %pcrel_hi(.L__profc_wcschr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi392)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -24(s0)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB59_10
.LBB59_9:
.Lpcrel_hi393:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.59)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi393)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	li	a0, 0
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB59_10
.LBB59_10:
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end59:
	.size	wcschr, .Lfunc_end59-wcschr
                                        # -- End function
	.globl	wcscmp                          # -- Begin function wcscmp
	.p2align	1
	.type	wcscmp,@function
wcscmp:                                 # @wcscmp
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -24(s0)
	sd	a1, -32(s0)
.Lpcrel_hi394:
	auipc	a0, %pcrel_hi(.L__profc_wcscmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi394)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	j	.LBB60_1
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	ld	a1, -32(s0)
	lw	a1, 0(a1)
	li	a2, 0
	sd	a2, -40(s0)                     # 8-byte Folded Spill
	bne	a0, a1, .LBB60_6
	j	.LBB60_2
.LBB60_2:                               #   in Loop: Header=BB60_1 Depth=1
.Lpcrel_hi395:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.60)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi395)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi396:
	auipc	a0, %pcrel_hi(.L__profc_wcscmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi396)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	li	a1, 0
	sd	a1, -40(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB60_6
	j	.LBB60_3
.LBB60_3:                               #   in Loop: Header=BB60_1 Depth=1
.Lpcrel_hi397:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.60)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi397)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi398:
	auipc	a0, %pcrel_hi(.L__profc_wcscmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi398)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	j	.LBB60_4
.LBB60_4:                               #   in Loop: Header=BB60_1 Depth=1
.Lpcrel_hi399:
	auipc	a0, %pcrel_hi(.L__profc_wcscmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi399)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -32(s0)
	lw	a0, 0(a0)
	snez	a1, a0
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	sd	a1, -40(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB60_6
	j	.LBB60_5
.LBB60_5:                               #   in Loop: Header=BB60_1 Depth=1
	ld	a0, -48(s0)                     # 8-byte Folded Reload
.Lpcrel_hi400:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.60)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi400)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
.Lpcrel_hi401:
	auipc	a1, %pcrel_hi(.L__profc_wcscmp)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi401)
	ld	a1, 24(a2)
	addi	a1, a1, 1
	sd	a1, 24(a2)
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB60_6
.LBB60_6:                               #   in Loop: Header=BB60_1 Depth=1
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB60_9
	j	.LBB60_7
.LBB60_7:                               #   in Loop: Header=BB60_1 Depth=1
.Lpcrel_hi402:
	auipc	a0, %pcrel_hi(.L__profc_wcscmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi402)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	j	.LBB60_8
.LBB60_8:                               #   in Loop: Header=BB60_1 Depth=1
.Lpcrel_hi403:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.60)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi403)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -24(s0)
	addi	a0, a0, 4
	sd	a0, -24(s0)
	ld	a0, -32(s0)
	addi	a0, a0, 4
	sd	a0, -32(s0)
	j	.LBB60_1
.LBB60_9:
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	ld	a1, -32(s0)
	lw	a1, 0(a1)
	bge	a0, a1, .LBB60_11
	j	.LBB60_10
.LBB60_10:
.Lpcrel_hi404:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.60)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi404)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi405:
	auipc	a0, %pcrel_hi(.L__profc_wcscmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi405)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	li	a0, -1
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB60_12
.LBB60_11:
.Lpcrel_hi406:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.60)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi406)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a0, -24(s0)
	lw	a1, 0(a0)
	ld	a0, -32(s0)
	lw	a0, 0(a0)
	slt	a0, a0, a1
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB60_12
.LBB60_12:
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end60:
	.size	wcscmp, .Lfunc_end60-wcscmp
                                        # -- End function
	.globl	wcscpy                          # -- Begin function wcscpy
	.p2align	1
	.type	wcscpy,@function
wcscpy:                                 # @wcscpy
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
.Lpcrel_hi407:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.61)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi407)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
.Lpcrel_hi408:
	auipc	a0, %pcrel_hi(.L__profc_wcscpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi408)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -40(s0)
	j	.LBB61_1
.LBB61_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -32(s0)
	addi	a1, a0, 4
	sd	a1, -32(s0)
	lw	a0, 0(a0)
	ld	a1, -24(s0)
	addi	a2, a1, 4
	sd	a2, -24(s0)
	sw	a0, 0(a1)
	beqz	a0, .LBB61_3
	j	.LBB61_2
.LBB61_2:                               #   in Loop: Header=BB61_1 Depth=1
.Lpcrel_hi409:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.61)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi409)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi410:
	auipc	a0, %pcrel_hi(.L__profc_wcscpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi410)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	j	.LBB61_1
.LBB61_3:
	ld	a0, -40(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end61:
	.size	wcscpy, .Lfunc_end61-wcscpy
                                        # -- End function
	.globl	wcslen                          # -- Begin function wcslen
	.p2align	1
	.type	wcslen,@function
wcslen:                                 # @wcslen
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
.Lpcrel_hi411:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.62)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi411)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sd	a0, -24(s0)
.Lpcrel_hi412:
	auipc	a0, %pcrel_hi(.L__profc_wcslen)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi412)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -32(s0)
	j	.LBB62_1
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	beqz	a0, .LBB62_4
	j	.LBB62_2
.LBB62_2:                               #   in Loop: Header=BB62_1 Depth=1
.Lpcrel_hi413:
	auipc	a0, %pcrel_hi(.L__profc_wcslen)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi413)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	j	.LBB62_3
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
.Lpcrel_hi414:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.62)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi414)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -24(s0)
	addi	a0, a0, 4
	sd	a0, -24(s0)
	j	.LBB62_1
.LBB62_4:
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	sub	a0, a0, a1
	srai	a0, a0, 2
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end62:
	.size	wcslen, .Lfunc_end62-wcslen
                                        # -- End function
	.globl	wcsncmp                         # -- Begin function wcsncmp
	.p2align	1
	.type	wcsncmp,@function
wcsncmp:                                # @wcsncmp
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
.Lpcrel_hi415:
	auipc	a0, %pcrel_hi(.L__profc_wcsncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi415)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	j	.LBB63_1
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	li	a1, 0
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB63_8
	j	.LBB63_2
.LBB63_2:                               #   in Loop: Header=BB63_1 Depth=1
.Lpcrel_hi416:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.63)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi416)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi417:
	auipc	a0, %pcrel_hi(.L__profc_wcsncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi417)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	ld	a1, -32(s0)
	lw	a1, 0(a1)
	li	a2, 0
	sd	a2, -48(s0)                     # 8-byte Folded Spill
	bne	a0, a1, .LBB63_8
	j	.LBB63_3
.LBB63_3:                               #   in Loop: Header=BB63_1 Depth=1
.Lpcrel_hi418:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.63)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi418)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi419:
	auipc	a0, %pcrel_hi(.L__profc_wcsncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi419)
	ld	a0, 56(a1)
	addi	a0, a0, 1
	sd	a0, 56(a1)
	j	.LBB63_4
.LBB63_4:                               #   in Loop: Header=BB63_1 Depth=1
.Lpcrel_hi420:
	auipc	a0, %pcrel_hi(.L__profc_wcsncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi420)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	li	a1, 0
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB63_8
	j	.LBB63_5
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
.Lpcrel_hi421:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.63)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi421)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi422:
	auipc	a0, %pcrel_hi(.L__profc_wcsncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi422)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	j	.LBB63_6
.LBB63_6:                               #   in Loop: Header=BB63_1 Depth=1
.Lpcrel_hi423:
	auipc	a0, %pcrel_hi(.L__profc_wcsncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi423)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -32(s0)
	lw	a0, 0(a0)
	snez	a1, a0
	sd	a1, -56(s0)                     # 8-byte Folded Spill
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB63_8
	j	.LBB63_7
.LBB63_7:                               #   in Loop: Header=BB63_1 Depth=1
	ld	a0, -56(s0)                     # 8-byte Folded Reload
.Lpcrel_hi424:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.63)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi424)
	ld	a1, 24(a2)
	addi	a1, a1, 1
	sd	a1, 24(a2)
.Lpcrel_hi425:
	auipc	a1, %pcrel_hi(.L__profc_wcsncmp)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi425)
	ld	a1, 24(a2)
	addi	a1, a1, 1
	sd	a1, 24(a2)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB63_8
.LBB63_8:                               #   in Loop: Header=BB63_1 Depth=1
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB63_11
	j	.LBB63_9
.LBB63_9:                               #   in Loop: Header=BB63_1 Depth=1
.Lpcrel_hi426:
	auipc	a0, %pcrel_hi(.L__profc_wcsncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi426)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	j	.LBB63_10
.LBB63_10:                              #   in Loop: Header=BB63_1 Depth=1
.Lpcrel_hi427:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.63)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi427)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	ld	a0, -24(s0)
	addi	a0, a0, 4
	sd	a0, -24(s0)
	ld	a0, -32(s0)
	addi	a0, a0, 4
	sd	a0, -32(s0)
	j	.LBB63_1
.LBB63_11:
	ld	a0, -40(s0)
	beqz	a0, .LBB63_16
	j	.LBB63_12
.LBB63_12:
.Lpcrel_hi428:
	auipc	a0, %pcrel_hi(.L__profc_wcsncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi428)
	ld	a0, 64(a1)
	addi	a0, a0, 1
	sd	a0, 64(a1)
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	ld	a1, -32(s0)
	lw	a1, 0(a1)
	bge	a0, a1, .LBB63_14
	j	.LBB63_13
.LBB63_13:
.Lpcrel_hi429:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.63)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi429)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
.Lpcrel_hi430:
	auipc	a0, %pcrel_hi(.L__profc_wcsncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi430)
	ld	a0, 72(a1)
	addi	a0, a0, 1
	sd	a0, 72(a1)
	li	a0, -1
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB63_15
.LBB63_14:
.Lpcrel_hi431:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.63)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi431)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	ld	a0, -24(s0)
	lw	a1, 0(a0)
	ld	a0, -32(s0)
	lw	a0, 0(a0)
	slt	a0, a0, a1
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB63_15
.LBB63_15:
	ld	a0, -64(s0)                     # 8-byte Folded Reload
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	j	.LBB63_17
.LBB63_16:
.Lpcrel_hi432:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.63)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi432)
	ld	a0, 56(a1)
	addi	a0, a0, 1
	sd	a0, 56(a1)
	li	a0, 0
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	j	.LBB63_17
.LBB63_17:
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end63:
	.size	wcsncmp, .Lfunc_end63-wcsncmp
                                        # -- End function
	.globl	wmemchr                         # -- Begin function wmemchr
	.p2align	1
	.type	wmemchr,@function
wmemchr:                                # @wmemchr
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x13 killed $x11
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	sd	a2, -40(s0)
.Lpcrel_hi433:
	auipc	a0, %pcrel_hi(.L__profc_wmemchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi433)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	j	.LBB64_1
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	li	a1, 0
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB64_4
	j	.LBB64_2
.LBB64_2:                               #   in Loop: Header=BB64_1 Depth=1
.Lpcrel_hi434:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.64)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi434)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi435:
	auipc	a0, %pcrel_hi(.L__profc_wmemchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi435)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	lw	a1, -28(s0)
	xor	a2, a0, a1
	snez	a2, a2
	sd	a2, -56(s0)                     # 8-byte Folded Spill
	sd	a2, -48(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB64_4
	j	.LBB64_3
.LBB64_3:                               #   in Loop: Header=BB64_1 Depth=1
	ld	a0, -56(s0)                     # 8-byte Folded Reload
.Lpcrel_hi436:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.64)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi436)
	ld	a1, 8(a2)
	addi	a1, a1, 1
	sd	a1, 8(a2)
.Lpcrel_hi437:
	auipc	a1, %pcrel_hi(.L__profc_wmemchr)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi437)
	ld	a1, 24(a2)
	addi	a1, a1, 1
	sd	a1, 24(a2)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB64_4
.LBB64_4:                               #   in Loop: Header=BB64_1 Depth=1
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB64_7
	j	.LBB64_5
.LBB64_5:                               #   in Loop: Header=BB64_1 Depth=1
.Lpcrel_hi438:
	auipc	a0, %pcrel_hi(.L__profc_wmemchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi438)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	j	.LBB64_6
.LBB64_6:                               #   in Loop: Header=BB64_1 Depth=1
.Lpcrel_hi439:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.64)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi439)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	ld	a0, -24(s0)
	addi	a0, a0, 4
	sd	a0, -24(s0)
	j	.LBB64_1
.LBB64_7:
	ld	a0, -40(s0)
	beqz	a0, .LBB64_9
	j	.LBB64_8
.LBB64_8:
.Lpcrel_hi440:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.64)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi440)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi441:
	auipc	a0, %pcrel_hi(.L__profc_wmemchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi441)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -24(s0)
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB64_10
.LBB64_9:
.Lpcrel_hi442:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.64)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi442)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	li	a0, 0
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB64_10
.LBB64_10:
	ld	a0, -64(s0)                     # 8-byte Folded Reload
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end64:
	.size	wmemchr, .Lfunc_end64-wmemchr
                                        # -- End function
	.globl	wmemcmp                         # -- Begin function wmemcmp
	.p2align	1
	.type	wmemcmp,@function
wmemcmp:                                # @wmemcmp
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
.Lpcrel_hi443:
	auipc	a0, %pcrel_hi(.L__profc_wmemcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi443)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	j	.LBB65_1
.LBB65_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	li	a1, 0
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB65_4
	j	.LBB65_2
.LBB65_2:                               #   in Loop: Header=BB65_1 Depth=1
.Lpcrel_hi444:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.65)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi444)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi445:
	auipc	a0, %pcrel_hi(.L__profc_wmemcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi445)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	ld	a1, -32(s0)
	lw	a1, 0(a1)
	xor	a2, a0, a1
	seqz	a2, a2
	sd	a2, -56(s0)                     # 8-byte Folded Spill
	sd	a2, -48(s0)                     # 8-byte Folded Spill
	bne	a0, a1, .LBB65_4
	j	.LBB65_3
.LBB65_3:                               #   in Loop: Header=BB65_1 Depth=1
	ld	a0, -56(s0)                     # 8-byte Folded Reload
.Lpcrel_hi446:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.65)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi446)
	ld	a1, 8(a2)
	addi	a1, a1, 1
	sd	a1, 8(a2)
.Lpcrel_hi447:
	auipc	a1, %pcrel_hi(.L__profc_wmemcmp)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi447)
	ld	a1, 24(a2)
	addi	a1, a1, 1
	sd	a1, 24(a2)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB65_4
.LBB65_4:                               #   in Loop: Header=BB65_1 Depth=1
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB65_7
	j	.LBB65_5
.LBB65_5:                               #   in Loop: Header=BB65_1 Depth=1
.Lpcrel_hi448:
	auipc	a0, %pcrel_hi(.L__profc_wmemcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi448)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	j	.LBB65_6
.LBB65_6:                               #   in Loop: Header=BB65_1 Depth=1
.Lpcrel_hi449:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.65)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi449)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	ld	a0, -24(s0)
	addi	a0, a0, 4
	sd	a0, -24(s0)
	ld	a0, -32(s0)
	addi	a0, a0, 4
	sd	a0, -32(s0)
	j	.LBB65_1
.LBB65_7:
	ld	a0, -40(s0)
	beqz	a0, .LBB65_12
	j	.LBB65_8
.LBB65_8:
.Lpcrel_hi450:
	auipc	a0, %pcrel_hi(.L__profc_wmemcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi450)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	ld	a1, -32(s0)
	lw	a1, 0(a1)
	bge	a0, a1, .LBB65_10
	j	.LBB65_9
.LBB65_9:
.Lpcrel_hi451:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.65)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi451)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi452:
	auipc	a0, %pcrel_hi(.L__profc_wmemcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi452)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	li	a0, -1
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB65_11
.LBB65_10:
.Lpcrel_hi453:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.65)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi453)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -24(s0)
	lw	a1, 0(a0)
	ld	a0, -32(s0)
	lw	a0, 0(a0)
	slt	a0, a0, a1
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB65_11
.LBB65_11:
	ld	a0, -64(s0)                     # 8-byte Folded Reload
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	j	.LBB65_13
.LBB65_12:
.Lpcrel_hi454:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.65)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi454)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	li	a0, 0
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	j	.LBB65_13
.LBB65_13:
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end65:
	.size	wmemcmp, .Lfunc_end65-wmemcmp
                                        # -- End function
	.globl	wmemcpy                         # -- Begin function wmemcpy
	.p2align	1
	.type	wmemcpy,@function
wmemcpy:                                # @wmemcpy
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
.Lpcrel_hi455:
	auipc	a3, %pcrel_hi(__llvm_gcov_ctr.66)
	addi	ra, a3, %pcrel_lo(.Lpcrel_hi455)
	ld	a3, 0(ra)
	addi	a3, a3, 1
	sd	a3, 0(ra)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
.Lpcrel_hi456:
	auipc	a0, %pcrel_hi(.L__profc_wmemcpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi456)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	j	.LBB66_1
.LBB66_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	addi	a1, a0, -1
	sd	a1, -40(s0)
	beqz	a0, .LBB66_3
	j	.LBB66_2
.LBB66_2:                               #   in Loop: Header=BB66_1 Depth=1
.Lpcrel_hi457:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.66)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi457)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi458:
	auipc	a0, %pcrel_hi(.L__profc_wmemcpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi458)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -32(s0)
	addi	a1, a0, 4
	sd	a1, -32(s0)
	lw	a0, 0(a0)
	ld	a1, -24(s0)
	addi	a2, a1, 4
	sd	a2, -24(s0)
	sw	a0, 0(a1)
	j	.LBB66_1
.LBB66_3:
	ld	a0, -48(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end66:
	.size	wmemcpy, .Lfunc_end66-wmemcpy
                                        # -- End function
	.globl	wmemmove                        # -- Begin function wmemmove
	.p2align	1
	.type	wmemmove,@function
wmemmove:                               # @wmemmove
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
.Lpcrel_hi459:
	auipc	a0, %pcrel_hi(.L__profc_wmemmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi459)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	sd	a0, -56(s0)
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	bne	a0, a1, .LBB67_2
	j	.LBB67_1
.LBB67_1:
.Lpcrel_hi460:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.67)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi460)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi461:
	auipc	a0, %pcrel_hi(.L__profc_wmemmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi461)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB67_12
.LBB67_2:
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	sub	a0, a0, a1
	ld	a1, -48(s0)
	slli	a1, a1, 2
	bgeu	a0, a1, .LBB67_7
	j	.LBB67_3
.LBB67_3:
.Lpcrel_hi462:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.67)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi462)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi463:
	auipc	a0, %pcrel_hi(.L__profc_wmemmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi463)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	j	.LBB67_4
.LBB67_4:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -48(s0)
	addi	a1, a0, -1
	sd	a1, -48(s0)
	beqz	a0, .LBB67_6
	j	.LBB67_5
.LBB67_5:                               #   in Loop: Header=BB67_4 Depth=1
.Lpcrel_hi464:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.67)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi464)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi465:
	auipc	a0, %pcrel_hi(.L__profc_wmemmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi465)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	slli	a2, a1, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	ld	a1, -32(s0)
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB67_4
.LBB67_6:
	j	.LBB67_11
.LBB67_7:
	j	.LBB67_8
.LBB67_8:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -48(s0)
	addi	a1, a0, -1
	sd	a1, -48(s0)
	beqz	a0, .LBB67_10
	j	.LBB67_9
.LBB67_9:                               #   in Loop: Header=BB67_8 Depth=1
.Lpcrel_hi466:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.67)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi466)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi467:
	auipc	a0, %pcrel_hi(.L__profc_wmemmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi467)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -40(s0)
	addi	a1, a0, 4
	sd	a1, -40(s0)
	lw	a0, 0(a0)
	ld	a1, -32(s0)
	addi	a2, a1, 4
	sd	a2, -32(s0)
	sw	a0, 0(a1)
	j	.LBB67_8
.LBB67_10:
.Lpcrel_hi468:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.67)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi468)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	j	.LBB67_11
.LBB67_11:
	ld	a0, -56(s0)
	sd	a0, -24(s0)
	j	.LBB67_12
.LBB67_12:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end67:
	.size	wmemmove, .Lfunc_end67-wmemmove
                                        # -- End function
	.globl	wmemset                         # -- Begin function wmemset
	.p2align	1
	.type	wmemset,@function
wmemset:                                # @wmemset
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x13 killed $x11
.Lpcrel_hi469:
	auipc	a3, %pcrel_hi(__llvm_gcov_ctr.68)
	addi	ra, a3, %pcrel_lo(.Lpcrel_hi469)
	ld	a3, 0(ra)
	addi	a3, a3, 1
	sd	a3, 0(ra)
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	sd	a2, -40(s0)
.Lpcrel_hi470:
	auipc	a0, %pcrel_hi(.L__profc_wmemset)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi470)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	j	.LBB68_1
.LBB68_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	addi	a1, a0, -1
	sd	a1, -40(s0)
	beqz	a0, .LBB68_3
	j	.LBB68_2
.LBB68_2:                               #   in Loop: Header=BB68_1 Depth=1
.Lpcrel_hi471:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.68)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi471)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi472:
	auipc	a0, %pcrel_hi(.L__profc_wmemset)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi472)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -28(s0)
	ld	a1, -24(s0)
	addi	a2, a1, 4
	sd	a2, -24(s0)
	sw	a0, 0(a1)
	j	.LBB68_1
.LBB68_3:
	ld	a0, -48(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end68:
	.size	wmemset, .Lfunc_end68-wmemset
                                        # -- End function
	.globl	bcopy                           # -- Begin function bcopy
	.p2align	1
	.type	bcopy,@function
bcopy:                                  # @bcopy
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
.Lpcrel_hi473:
	auipc	a0, %pcrel_hi(.L__profc_bcopy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi473)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	ld	a0, -32(s0)
	sd	a0, -56(s0)
	ld	a0, -48(s0)
	ld	a1, -56(s0)
	bgeu	a0, a1, .LBB69_6
	j	.LBB69_1
.LBB69_1:
.Lpcrel_hi474:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.69)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi474)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi475:
	auipc	a0, %pcrel_hi(.L__profc_bcopy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi475)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a1, -40(s0)
	ld	a0, -48(s0)
	add	a0, a0, a1
	sd	a0, -48(s0)
	ld	a1, -40(s0)
	ld	a0, -56(s0)
	add	a0, a0, a1
	sd	a0, -56(s0)
	j	.LBB69_2
.LBB69_2:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	beqz	a0, .LBB69_5
	j	.LBB69_3
.LBB69_3:                               #   in Loop: Header=BB69_2 Depth=1
.Lpcrel_hi476:
	auipc	a0, %pcrel_hi(.L__profc_bcopy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi476)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -48(s0)
	addi	a1, a0, -1
	sd	a1, -48(s0)
	lbu	a0, -1(a0)
	ld	a1, -56(s0)
	addi	a2, a1, -1
	sd	a2, -56(s0)
	sb	a0, -1(a1)
	j	.LBB69_4
.LBB69_4:                               #   in Loop: Header=BB69_2 Depth=1
.Lpcrel_hi477:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.69)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi477)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	j	.LBB69_2
.LBB69_5:
	j	.LBB69_13
.LBB69_6:
	ld	a0, -48(s0)
	ld	a1, -56(s0)
	beq	a0, a1, .LBB69_12
	j	.LBB69_7
.LBB69_7:
.Lpcrel_hi478:
	auipc	a0, %pcrel_hi(.L__profc_bcopy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi478)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	j	.LBB69_8
.LBB69_8:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	beqz	a0, .LBB69_11
	j	.LBB69_9
.LBB69_9:                               #   in Loop: Header=BB69_8 Depth=1
.Lpcrel_hi479:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.69)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi479)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi480:
	auipc	a0, %pcrel_hi(.L__profc_bcopy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi480)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -48(s0)
	addi	a1, a0, 1
	sd	a1, -48(s0)
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	addi	a2, a1, 1
	sd	a2, -56(s0)
	sb	a0, 0(a1)
	j	.LBB69_10
.LBB69_10:                              #   in Loop: Header=BB69_8 Depth=1
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	j	.LBB69_8
.LBB69_11:
.Lpcrel_hi481:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.69)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi481)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	j	.LBB69_12
.LBB69_12:
.Lpcrel_hi482:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.69)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi482)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	j	.LBB69_13
.LBB69_13:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end69:
	.size	bcopy, .Lfunc_end69-bcopy
                                        # -- End function
	.globl	rotl64                          # -- Begin function rotl64
	.p2align	1
	.type	rotl64,@function
rotl64:                                 # @rotl64
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
.Lpcrel_hi483:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.70)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi483)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sw	a1, -28(s0)
.Lpcrel_hi484:
	auipc	a0, %pcrel_hi(.L__profc_rotl64)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi484)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a1, -24(s0)
	lwu	a2, -28(s0)
	sll	a0, a1, a2
	negw	a2, a2
	srl	a1, a1, a2
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end70:
	.size	rotl64, .Lfunc_end70-rotl64
                                        # -- End function
	.globl	rotr64                          # -- Begin function rotr64
	.p2align	1
	.type	rotr64,@function
rotr64:                                 # @rotr64
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
.Lpcrel_hi485:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.71)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi485)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sw	a1, -28(s0)
.Lpcrel_hi486:
	auipc	a0, %pcrel_hi(.L__profc_rotr64)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi486)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a1, -24(s0)
	lwu	a2, -28(s0)
	srl	a0, a1, a2
	negw	a2, a2
	sll	a1, a1, a2
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end71:
	.size	rotr64, .Lfunc_end71-rotr64
                                        # -- End function
	.globl	rotl32                          # -- Begin function rotl32
	.p2align	1
	.type	rotl32,@function
rotl32:                                 # @rotl32
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi487:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.72)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi487)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sw	a0, -20(s0)
	sw	a1, -24(s0)
.Lpcrel_hi488:
	auipc	a0, %pcrel_hi(.L__profc_rotl32)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi488)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a1, -20(s0)
	lwu	a2, -24(s0)
	sllw	a0, a1, a2
	negw	a2, a2
	srlw	a1, a1, a2
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end72:
	.size	rotl32, .Lfunc_end72-rotl32
                                        # -- End function
	.globl	rotr32                          # -- Begin function rotr32
	.p2align	1
	.type	rotr32,@function
rotr32:                                 # @rotr32
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi489:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.73)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi489)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sw	a0, -20(s0)
	sw	a1, -24(s0)
.Lpcrel_hi490:
	auipc	a0, %pcrel_hi(.L__profc_rotr32)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi490)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a1, -20(s0)
	lwu	a2, -24(s0)
	srlw	a0, a1, a2
	negw	a2, a2
	sllw	a1, a1, a2
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end73:
	.size	rotr32, .Lfunc_end73-rotr32
                                        # -- End function
	.globl	rotl_sz                         # -- Begin function rotl_sz
	.p2align	1
	.type	rotl_sz,@function
rotl_sz:                                # @rotl_sz
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
.Lpcrel_hi491:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.74)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi491)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sw	a1, -28(s0)
.Lpcrel_hi492:
	auipc	a0, %pcrel_hi(.L__profc_rotl_sz)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi492)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a1, -24(s0)
	lw	a2, -28(s0)
	sll	a0, a1, a2
	negw	a2, a2
	srl	a1, a1, a2
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end74:
	.size	rotl_sz, .Lfunc_end74-rotl_sz
                                        # -- End function
	.globl	rotr_sz                         # -- Begin function rotr_sz
	.p2align	1
	.type	rotr_sz,@function
rotr_sz:                                # @rotr_sz
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
.Lpcrel_hi493:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.75)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi493)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sw	a1, -28(s0)
.Lpcrel_hi494:
	auipc	a0, %pcrel_hi(.L__profc_rotr_sz)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi494)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a1, -24(s0)
	lw	a2, -28(s0)
	srl	a0, a1, a2
	negw	a2, a2
	sll	a1, a1, a2
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end75:
	.size	rotr_sz, .Lfunc_end75-rotr_sz
                                        # -- End function
	.globl	rotl16                          # -- Begin function rotl16
	.p2align	1
	.type	rotl16,@function
rotl16:                                 # @rotl16
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi495:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.76)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi495)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sh	a0, -18(s0)
	sw	a1, -24(s0)
.Lpcrel_hi496:
	auipc	a0, %pcrel_hi(.L__profc_rotl16)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi496)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lhu	a1, -18(s0)
	lwu	a3, -24(s0)
	sllw	a0, a1, a3
	li	a2, 16
	subw	a2, a2, a3
	srlw	a1, a1, a2
	or	a0, a0, a1
	slli	a0, a0, 48
	srli	a0, a0, 48
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end76:
	.size	rotl16, .Lfunc_end76-rotl16
                                        # -- End function
	.globl	rotr16                          # -- Begin function rotr16
	.p2align	1
	.type	rotr16,@function
rotr16:                                 # @rotr16
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi497:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.77)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi497)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sh	a0, -18(s0)
	sw	a1, -24(s0)
.Lpcrel_hi498:
	auipc	a0, %pcrel_hi(.L__profc_rotr16)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi498)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lhu	a1, -18(s0)
	lwu	a3, -24(s0)
	srlw	a0, a1, a3
	li	a2, 16
	subw	a2, a2, a3
	sllw	a1, a1, a2
	or	a0, a0, a1
	slli	a0, a0, 48
	srli	a0, a0, 48
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end77:
	.size	rotr16, .Lfunc_end77-rotr16
                                        # -- End function
	.globl	rotl8                           # -- Begin function rotl8
	.p2align	1
	.type	rotl8,@function
rotl8:                                  # @rotl8
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi499:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.78)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi499)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sb	a0, -17(s0)
	sw	a1, -24(s0)
.Lpcrel_hi500:
	auipc	a0, %pcrel_hi(.L__profc_rotl8)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi500)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lbu	a1, -17(s0)
	lwu	a3, -24(s0)
	sllw	a0, a1, a3
	li	a2, 8
	subw	a2, a2, a3
	srlw	a1, a1, a2
	or	a0, a0, a1
	andi	a0, a0, 255
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end78:
	.size	rotl8, .Lfunc_end78-rotl8
                                        # -- End function
	.globl	rotr8                           # -- Begin function rotr8
	.p2align	1
	.type	rotr8,@function
rotr8:                                  # @rotr8
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi501:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.79)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi501)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sb	a0, -17(s0)
	sw	a1, -24(s0)
.Lpcrel_hi502:
	auipc	a0, %pcrel_hi(.L__profc_rotr8)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi502)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lbu	a1, -17(s0)
	lwu	a3, -24(s0)
	srlw	a0, a1, a3
	li	a2, 8
	subw	a2, a2, a3
	sllw	a1, a1, a2
	or	a0, a0, a1
	andi	a0, a0, 255
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end79:
	.size	rotr8, .Lfunc_end79-rotr8
                                        # -- End function
	.globl	bswap_16                        # -- Begin function bswap_16
	.p2align	1
	.type	bswap_16,@function
bswap_16:                               # @bswap_16
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi503:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.80)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi503)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sh	a0, -18(s0)
.Lpcrel_hi504:
	auipc	a0, %pcrel_hi(.L__profc_bswap_16)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi504)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 255
	sh	a0, -20(s0)
	lhu	a1, -18(s0)
	lhu	a2, -20(s0)
	slliw	a0, a2, 8
	and	a0, a0, a1
	srli	a0, a0, 8
	and	a1, a1, a2
	slliw	a1, a1, 8
	or	a0, a0, a1
	slli	a0, a0, 48
	srli	a0, a0, 48
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end80:
	.size	bswap_16, .Lfunc_end80-bswap_16
                                        # -- End function
	.globl	bswap_32                        # -- Begin function bswap_32
	.p2align	1
	.type	bswap_32,@function
bswap_32:                               # @bswap_32
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi505:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.81)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi505)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi506:
	auipc	a0, %pcrel_hi(.L__profc_bswap_32)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi506)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 255
	sw	a0, -24(s0)
	lw	a1, -20(s0)
	lw	a2, -24(s0)
	slliw	a0, a2, 24
	and	a0, a0, a1
	srliw	a0, a0, 24
	slliw	a3, a2, 16
	and	ra, a1, a3
	srliw	ra, ra, 8
	or	a0, a0, ra
	slliw	ra, a1, 8
	and	a3, a3, ra
	sext.w	a3, a3
	or	a0, a0, a3
	and	a1, a1, a2
	slliw	a1, a1, 24
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end81:
	.size	bswap_32, .Lfunc_end81-bswap_32
                                        # -- End function
	.globl	bswap_64                        # -- Begin function bswap_64
	.p2align	1
	.type	bswap_64,@function
bswap_64:                               # @bswap_64
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
.Lpcrel_hi507:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.82)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi507)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sd	a0, -24(s0)
.Lpcrel_hi508:
	auipc	a0, %pcrel_hi(.L__profc_bswap_64)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi508)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 255
	sd	a0, -32(s0)
	ld	a1, -24(s0)
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	ld	a2, -32(s0)
	slli	a0, a2, 56
	and	a0, a0, a1
	srli	a0, a0, 56
	slli	a3, a2, 48
	and	ra, a1, a3
	srli	ra, ra, 40
	or	a0, a0, ra
	slli	ra, a2, 40
	and	a1, a1, ra
	srli	a1, a1, 24
	or	a0, a0, a1
	ld	a1, -48(s0)                     # 8-byte Folded Reload
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	slli	a0, a2, 32
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	and	a1, a1, a0
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	srli	a1, a1, 8
	or	a0, a0, a1
	ld	a1, -64(s0)                     # 8-byte Folded Reload
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	slli	a0, a0, 8
	and	a1, a1, a0
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	or	a0, a0, a1
	ld	a1, -48(s0)                     # 8-byte Folded Reload
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	slli	a0, a1, 24
	and	ra, ra, a0
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	or	a0, a0, ra
	slli	ra, a1, 40
	and	a3, a3, ra
	or	a0, a0, a3
	and	a1, a1, a2
	slli	a1, a1, 56
	or	a0, a0, a1
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end82:
	.size	bswap_64, .Lfunc_end82-bswap_64
                                        # -- End function
	.globl	ffs                             # -- Begin function ffs
	.p2align	1
	.type	ffs,@function
ffs:                                    # @ffs
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -24(s0)
.Lpcrel_hi509:
	auipc	a0, %pcrel_hi(.L__profc_ffs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi509)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 0
	sw	a0, -28(s0)
	j	.LBB83_1
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	lw	a1, -28(s0)
	li	a0, 31
	bltu	a0, a1, .LBB83_6
	j	.LBB83_2
.LBB83_2:                               #   in Loop: Header=BB83_1 Depth=1
.Lpcrel_hi510:
	auipc	a0, %pcrel_hi(.L__profc_ffs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi510)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -24(s0)
	lwu	a1, -28(s0)
	srlw	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB83_4
	j	.LBB83_3
.LBB83_3:
.Lpcrel_hi511:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.83)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi511)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi512:
	auipc	a0, %pcrel_hi(.L__profc_ffs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi512)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a0, -28(s0)
	addiw	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB83_7
.LBB83_4:                               #   in Loop: Header=BB83_1 Depth=1
	j	.LBB83_5
.LBB83_5:                               #   in Loop: Header=BB83_1 Depth=1
.Lpcrel_hi513:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.83)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi513)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -28(s0)
	addiw	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB83_1
.LBB83_6:
.Lpcrel_hi514:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.83)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi514)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB83_7
.LBB83_7:
	lw	a0, -20(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end83:
	.size	ffs, .Lfunc_end83-ffs
                                        # -- End function
	.globl	libiberty_ffs                   # -- Begin function libiberty_ffs
	.p2align	1
	.type	libiberty_ffs,@function
libiberty_ffs:                          # @libiberty_ffs
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -24(s0)
.Lpcrel_hi515:
	auipc	a0, %pcrel_hi(.L__profc_libiberty_ffs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi515)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -24(s0)
	bnez	a0, .LBB84_2
	j	.LBB84_1
.LBB84_1:
.Lpcrel_hi516:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.84)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi516)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi517:
	auipc	a0, %pcrel_hi(.L__profc_libiberty_ffs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi517)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB84_7
.LBB84_2:
.Lpcrel_hi518:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.84)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi518)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 1
	sw	a0, -28(s0)
	j	.LBB84_3
.LBB84_3:                               # =>This Inner Loop Header: Depth=1
	lbu	a0, -24(s0)
	andi	a0, a0, 1
	bnez	a0, .LBB84_6
	j	.LBB84_4
.LBB84_4:                               #   in Loop: Header=BB84_3 Depth=1
.Lpcrel_hi519:
	auipc	a0, %pcrel_hi(.L__profc_libiberty_ffs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi519)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a0, -24(s0)
	srli	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB84_5
.LBB84_5:                               #   in Loop: Header=BB84_3 Depth=1
.Lpcrel_hi520:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.84)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi520)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a0, -28(s0)
	addiw	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB84_3
.LBB84_6:
	lw	a0, -28(s0)
	sw	a0, -20(s0)
	j	.LBB84_7
.LBB84_7:
	lw	a0, -20(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end84:
	.size	libiberty_ffs, .Lfunc_end84-libiberty_ffs
                                        # -- End function
	.globl	gl_isinff                       # -- Begin function gl_isinff
	.p2align	1
	.type	gl_isinff,@function
gl_isinff:                              # @gl_isinff
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x11 killed $x10
.Lpcrel_hi521:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.85)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi521)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi522:
	auipc	a0, %pcrel_hi(.L__profc_gl_isinff)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi522)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	lui	a1, 1046528
	addiw	a1, a1, -1
	call	__ltsf2
	li	a1, 1
	sd	a1, -32(s0)                     # 8-byte Folded Spill
	bltz	a0, .LBB85_3
	j	.LBB85_1
.LBB85_1:
.Lpcrel_hi523:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.85)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi523)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi524:
	auipc	a0, %pcrel_hi(.L__profc_gl_isinff)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi524)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -20(s0)
	lui	a1, 522240
	addiw	a1, a1, -1
	call	__gtsf2
	mv	a1, a0
	li	a0, 0
	slt	a2, a0, a1
	sd	a2, -40(s0)                     # 8-byte Folded Spill
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	blt	a0, a1, .LBB85_3
	j	.LBB85_2
.LBB85_2:
	ld	a0, -40(s0)                     # 8-byte Folded Reload
.Lpcrel_hi525:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.85)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi525)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
.Lpcrel_hi526:
	auipc	a1, %pcrel_hi(.L__profc_gl_isinff)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi526)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB85_3
.LBB85_3:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end85:
	.size	gl_isinff, .Lfunc_end85-gl_isinff
                                        # -- End function
	.globl	gl_isinfd                       # -- Begin function gl_isinfd
	.p2align	1
	.type	gl_isinfd,@function
gl_isinfd:                              # @gl_isinfd
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x11 killed $x10
.Lpcrel_hi527:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.86)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi527)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sd	a0, -24(s0)
.Lpcrel_hi528:
	auipc	a0, %pcrel_hi(.L__profc_gl_isinfd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi528)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	li	a1, -1
	slli	a1, a1, 52
	addi	a1, a1, -1
	call	__ltdf2
	li	a1, 1
	sd	a1, -32(s0)                     # 8-byte Folded Spill
	bltz	a0, .LBB86_3
	j	.LBB86_1
.LBB86_1:
.Lpcrel_hi529:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.86)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi529)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi530:
	auipc	a0, %pcrel_hi(.L__profc_gl_isinfd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi530)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -24(s0)
	li	a1, 2047
	slli	a1, a1, 52
	addi	a1, a1, -1
	call	__gtdf2
	mv	a1, a0
	li	a0, 0
	slt	a2, a0, a1
	sd	a2, -40(s0)                     # 8-byte Folded Spill
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	blt	a0, a1, .LBB86_3
	j	.LBB86_2
.LBB86_2:
	ld	a0, -40(s0)                     # 8-byte Folded Reload
.Lpcrel_hi531:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.86)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi531)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
.Lpcrel_hi532:
	auipc	a1, %pcrel_hi(.L__profc_gl_isinfd)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi532)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB86_3
.LBB86_3:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end86:
	.size	gl_isinfd, .Lfunc_end86-gl_isinfd
                                        # -- End function
	.globl	gl_isinfl                       # -- Begin function gl_isinfl
	.p2align	1
	.type	gl_isinfl,@function
gl_isinfl:                              # @gl_isinfl
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi533:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.87)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi533)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
.Lpcrel_hi534:
	auipc	a0, %pcrel_hi(.L__profc_gl_isinfl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi534)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	li	a2, -1
	slli	a3, a2, 48
	addi	a3, a3, -1
	call	__lttf2
	li	a1, 1
	sd	a1, -40(s0)                     # 8-byte Folded Spill
	bltz	a0, .LBB87_3
	j	.LBB87_1
.LBB87_1:
.Lpcrel_hi535:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.87)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi535)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi536:
	auipc	a0, %pcrel_hi(.L__profc_gl_isinfl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi536)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	lui	a2, 32767
	slli	a2, a2, 36
	addi	a3, a2, -1
	li	a2, -1
	call	__gttf2
	mv	a1, a0
	li	a0, 0
	slt	a2, a0, a1
	sd	a2, -48(s0)                     # 8-byte Folded Spill
	sd	a2, -40(s0)                     # 8-byte Folded Spill
	blt	a0, a1, .LBB87_3
	j	.LBB87_2
.LBB87_2:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
.Lpcrel_hi537:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.87)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi537)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
.Lpcrel_hi538:
	auipc	a1, %pcrel_hi(.L__profc_gl_isinfl)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi538)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB87_3
.LBB87_3:
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end87:
	.size	gl_isinfl, .Lfunc_end87-gl_isinfl
                                        # -- End function
	.globl	_Qp_itoq                        # -- Begin function _Qp_itoq
	.p2align	1
	.type	_Qp_itoq,@function
_Qp_itoq:                               # @_Qp_itoq
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
.Lpcrel_hi539:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.88)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi539)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sw	a1, -28(s0)
.Lpcrel_hi540:
	auipc	a0, %pcrel_hi(.L__profc__Qp_itoq)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi540)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -28(s0)
	call	__floatsidf
	call	__extenddftf2
	mv	a2, a1
	ld	a1, -24(s0)
	sd	a2, 8(a1)
	sd	a0, 0(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end88:
	.size	_Qp_itoq, .Lfunc_end88-_Qp_itoq
                                        # -- End function
	.globl	ldexpf                          # -- Begin function ldexpf
	.p2align	1
	.type	ldexpf,@function
ldexpf:                                 # @ldexpf
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi541:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.89)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi541)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sw	a0, -20(s0)
	sw	a1, -24(s0)
.Lpcrel_hi542:
	auipc	a0, %pcrel_hi(.L__profc_ldexpf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi542)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lwu	a0, -20(s0)
	slli	a0, a0, 33
	srli	a1, a0, 33
	lui	a0, 522240
	blt	a0, a1, .LBB89_12
	j	.LBB89_1
.LBB89_1:
.Lpcrel_hi543:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.89)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi543)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi544:
	auipc	a0, %pcrel_hi(.L__profc_ldexpf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi544)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a1, -20(s0)
	sd	a1, -40(s0)                     # 8-byte Folded Spill
	mv	a0, a1
	call	__addsf3
	ld	a1, -40(s0)                     # 8-byte Folded Reload
	call	__eqsf2
	beqz	a0, .LBB89_12
	j	.LBB89_2
.LBB89_2:
.Lpcrel_hi545:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.89)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi545)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi546:
	auipc	a0, %pcrel_hi(.L__profc_ldexpf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi546)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	j	.LBB89_3
.LBB89_3:
.Lpcrel_hi547:
	auipc	a0, %pcrel_hi(.L__profc_ldexpf)
	addi	a2, a0, %pcrel_lo(.Lpcrel_hi547)
	ld	a0, 8(a2)
	addi	a0, a0, 1
	sd	a0, 8(a2)
	lw	a0, -24(s0)
	srliw	a3, a0, 31
	ld	a1, 32(a2)
	add	a1, a1, a3
	sd	a1, 32(a2)
	lui	a1, 262144
	sd	a1, -56(s0)                     # 8-byte Folded Spill
	lui	a1, 258048
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	bltz	a0, .LBB89_5
# %bb.4:
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	sd	a0, -48(s0)                     # 8-byte Folded Spill
.LBB89_5:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	sw	a0, -28(s0)
	j	.LBB89_6
.LBB89_6:                               # =>This Inner Loop Header: Depth=1
.Lpcrel_hi548:
	auipc	a0, %pcrel_hi(.L__profc_ldexpf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi548)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	lw	a0, -24(s0)
	srliw	a1, a0, 31
	addw	a1, a1, a0
	andi	a1, a1, -2
	subw	a0, a0, a1
	beqz	a0, .LBB89_8
	j	.LBB89_7
.LBB89_7:                               #   in Loop: Header=BB89_6 Depth=1
.Lpcrel_hi549:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.89)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi549)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi550:
	auipc	a0, %pcrel_hi(.L__profc_ldexpf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi550)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	lw	a1, -28(s0)
	lw	a0, -20(s0)
	call	__mulsf3
	sw	a0, -20(s0)
	j	.LBB89_8
.LBB89_8:                               #   in Loop: Header=BB89_6 Depth=1
	lw	a0, -24(s0)
	srliw	a1, a0, 31
	addw	a0, a0, a1
	sraiw	a0, a0, 1
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	bnez	a0, .LBB89_10
	j	.LBB89_9
.LBB89_9:
.Lpcrel_hi551:
	auipc	a0, %pcrel_hi(.L__profc_ldexpf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi551)
	ld	a0, 56(a1)
	addi	a0, a0, 1
	sd	a0, 56(a1)
	j	.LBB89_11
.LBB89_10:                              #   in Loop: Header=BB89_6 Depth=1
.Lpcrel_hi552:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.89)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi552)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	lw	a1, -28(s0)
	mv	a0, a1
	call	__mulsf3
	sw	a0, -28(s0)
	j	.LBB89_6
.LBB89_11:
	j	.LBB89_12
.LBB89_12:
	lw	a0, -20(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end89:
	.size	ldexpf, .Lfunc_end89-ldexpf
                                        # -- End function
	.globl	ldexp                           # -- Begin function ldexp
	.p2align	1
	.type	ldexp,@function
ldexp:                                  # @ldexp
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi553:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.90)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi553)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sw	a1, -28(s0)
.Lpcrel_hi554:
	auipc	a0, %pcrel_hi(.L__profc_ldexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi554)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	slli	a0, a0, 1
	srli	a1, a0, 1
	li	a0, 2047
	slli	a0, a0, 52
	blt	a0, a1, .LBB90_12
	j	.LBB90_1
.LBB90_1:
.Lpcrel_hi555:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.90)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi555)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi556:
	auipc	a0, %pcrel_hi(.L__profc_ldexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi556)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a1, -24(s0)
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	mv	a0, a1
	call	__adddf3
	ld	a1, -48(s0)                     # 8-byte Folded Reload
	call	__eqdf2
	beqz	a0, .LBB90_12
	j	.LBB90_2
.LBB90_2:
.Lpcrel_hi557:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.90)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi557)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi558:
	auipc	a0, %pcrel_hi(.L__profc_ldexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi558)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	j	.LBB90_3
.LBB90_3:
.Lpcrel_hi559:
	auipc	a0, %pcrel_hi(.L__profc_ldexp)
	addi	a2, a0, %pcrel_lo(.Lpcrel_hi559)
	ld	a0, 8(a2)
	addi	a0, a0, 1
	sd	a0, 8(a2)
	lw	a0, -28(s0)
	srliw	a3, a0, 31
	ld	a1, 32(a2)
	add	a1, a1, a3
	sd	a1, 32(a2)
	li	a1, 1
	slli	a1, a1, 62
	sd	a1, -64(s0)                     # 8-byte Folded Spill
	li	a1, 511
	slli	a1, a1, 53
	sd	a1, -56(s0)                     # 8-byte Folded Spill
	bltz	a0, .LBB90_5
# %bb.4:
	ld	a0, -64(s0)                     # 8-byte Folded Reload
	sd	a0, -56(s0)                     # 8-byte Folded Spill
.LBB90_5:
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	sd	a0, -40(s0)
	j	.LBB90_6
.LBB90_6:                               # =>This Inner Loop Header: Depth=1
.Lpcrel_hi560:
	auipc	a0, %pcrel_hi(.L__profc_ldexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi560)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	lw	a0, -28(s0)
	srliw	a1, a0, 31
	addw	a1, a1, a0
	andi	a1, a1, -2
	subw	a0, a0, a1
	beqz	a0, .LBB90_8
	j	.LBB90_7
.LBB90_7:                               #   in Loop: Header=BB90_6 Depth=1
.Lpcrel_hi561:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.90)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi561)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi562:
	auipc	a0, %pcrel_hi(.L__profc_ldexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi562)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	ld	a1, -40(s0)
	ld	a0, -24(s0)
	call	__muldf3
	sd	a0, -24(s0)
	j	.LBB90_8
.LBB90_8:                               #   in Loop: Header=BB90_6 Depth=1
	lw	a0, -28(s0)
	srliw	a1, a0, 31
	addw	a0, a0, a1
	sraiw	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	bnez	a0, .LBB90_10
	j	.LBB90_9
.LBB90_9:
.Lpcrel_hi563:
	auipc	a0, %pcrel_hi(.L__profc_ldexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi563)
	ld	a0, 56(a1)
	addi	a0, a0, 1
	sd	a0, 56(a1)
	j	.LBB90_11
.LBB90_10:                              #   in Loop: Header=BB90_6 Depth=1
.Lpcrel_hi564:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.90)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi564)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a1, -40(s0)
	mv	a0, a1
	call	__muldf3
	sd	a0, -40(s0)
	j	.LBB90_6
.LBB90_11:
	j	.LBB90_12
.LBB90_12:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end90:
	.size	ldexp, .Lfunc_end90-ldexp
                                        # -- End function
	.globl	ldexpl                          # -- Begin function ldexpl
	.p2align	1
	.type	ldexpl,@function
ldexpl:                                 # @ldexpl
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 112
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
                                        # kill: def $x13 killed $x12
.Lpcrel_hi565:
	auipc	a3, %pcrel_hi(__llvm_gcov_ctr.91)
	addi	ra, a3, %pcrel_lo(.Lpcrel_hi565)
	ld	a3, 0(ra)
	addi	a3, a3, 1
	sd	a3, 0(ra)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	sw	a2, -36(s0)
.Lpcrel_hi566:
	auipc	a0, %pcrel_hi(.L__profc_ldexpl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi566)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a2, -32(s0)
	ld	a0, -24(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 32767
	slli	a1, a1, 36
	slt	a3, a1, a0
	sd	a3, -80(s0)                     # 8-byte Folded Spill
	snez	a2, a2
	sd	a2, -72(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB91_2
# %bb.1:
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	sd	a0, -72(s0)                     # 8-byte Folded Spill
.LBB91_2:
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	bnez	a0, .LBB91_14
	j	.LBB91_3
.LBB91_3:
.Lpcrel_hi567:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.91)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi567)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi568:
	auipc	a0, %pcrel_hi(.L__profc_ldexpl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi568)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a2, -32(s0)
	sd	a2, -96(s0)                     # 8-byte Folded Spill
	ld	a3, -24(s0)
	sd	a3, -88(s0)                     # 8-byte Folded Spill
	mv	a0, a2
	mv	a1, a3
	call	__addtf3
	ld	a2, -96(s0)                     # 8-byte Folded Reload
	ld	a3, -88(s0)                     # 8-byte Folded Reload
	call	__eqtf2
	beqz	a0, .LBB91_14
	j	.LBB91_4
.LBB91_4:
.Lpcrel_hi569:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.91)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi569)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi570:
	auipc	a0, %pcrel_hi(.L__profc_ldexpl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi570)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	j	.LBB91_5
.LBB91_5:
.Lpcrel_hi571:
	auipc	a0, %pcrel_hi(.L__profc_ldexpl)
	addi	a2, a0, %pcrel_lo(.Lpcrel_hi571)
	ld	a0, 8(a2)
	addi	a0, a0, 1
	sd	a0, 8(a2)
	lw	a0, -36(s0)
	srliw	a3, a0, 31
	ld	a1, 32(a2)
	add	a1, a1, a3
	sd	a1, 32(a2)
	li	a1, 1
	slli	a1, a1, 62
	sd	a1, -112(s0)                    # 8-byte Folded Spill
	lui	a1, 8191
	slli	a1, a1, 37
	sd	a1, -104(s0)                    # 8-byte Folded Spill
	bltz	a0, .LBB91_7
# %bb.6:
	ld	a0, -112(s0)                    # 8-byte Folded Reload
	sd	a0, -104(s0)                    # 8-byte Folded Spill
.LBB91_7:
	ld	a0, -104(s0)                    # 8-byte Folded Reload
	sd	a0, -56(s0)
	li	a0, 0
	sd	a0, -64(s0)
	j	.LBB91_8
.LBB91_8:                               # =>This Inner Loop Header: Depth=1
.Lpcrel_hi572:
	auipc	a0, %pcrel_hi(.L__profc_ldexpl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi572)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	lw	a0, -36(s0)
	srliw	a1, a0, 31
	addw	a1, a1, a0
	andi	a1, a1, -2
	subw	a0, a0, a1
	beqz	a0, .LBB91_10
	j	.LBB91_9
.LBB91_9:                               #   in Loop: Header=BB91_8 Depth=1
.Lpcrel_hi573:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.91)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi573)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi574:
	auipc	a0, %pcrel_hi(.L__profc_ldexpl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi574)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	ld	a2, -64(s0)
	ld	a3, -56(s0)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	call	__multf3
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB91_10
.LBB91_10:                              #   in Loop: Header=BB91_8 Depth=1
	lw	a0, -36(s0)
	srliw	a1, a0, 31
	addw	a0, a0, a1
	sraiw	a0, a0, 1
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	bnez	a0, .LBB91_12
	j	.LBB91_11
.LBB91_11:
.Lpcrel_hi575:
	auipc	a0, %pcrel_hi(.L__profc_ldexpl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi575)
	ld	a0, 56(a1)
	addi	a0, a0, 1
	sd	a0, 56(a1)
	j	.LBB91_13
.LBB91_12:                              #   in Loop: Header=BB91_8 Depth=1
.Lpcrel_hi576:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.91)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi576)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a2, -64(s0)
	ld	a3, -56(s0)
	mv	a0, a2
	mv	a1, a3
	call	__multf3
	sd	a1, -56(s0)
	sd	a0, -64(s0)
	j	.LBB91_8
.LBB91_13:
	j	.LBB91_14
.LBB91_14:
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end91:
	.size	ldexpl, .Lfunc_end91-ldexpl
                                        # -- End function
	.globl	memxor                          # -- Begin function memxor
	.p2align	1
	.type	memxor,@function
memxor:                                 # @memxor
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
.Lpcrel_hi577:
	auipc	a3, %pcrel_hi(__llvm_gcov_ctr.92)
	addi	ra, a3, %pcrel_lo(.Lpcrel_hi577)
	ld	a3, 0(ra)
	addi	a3, a3, 1
	sd	a3, 0(ra)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
.Lpcrel_hi578:
	auipc	a0, %pcrel_hi(.L__profc_memxor)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi578)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	ld	a0, -24(s0)
	sd	a0, -56(s0)
	j	.LBB92_1
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	beqz	a0, .LBB92_4
	j	.LBB92_2
.LBB92_2:                               #   in Loop: Header=BB92_1 Depth=1
.Lpcrel_hi579:
	auipc	a0, %pcrel_hi(.L__profc_memxor)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi579)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -48(s0)
	addi	a1, a0, 1
	sd	a1, -48(s0)
	lbu	a2, 0(a0)
	ld	a1, -56(s0)
	addi	a0, a1, 1
	sd	a0, -56(s0)
	lbu	a0, 0(a1)
	xor	a0, a0, a2
	sb	a0, 0(a1)
	j	.LBB92_3
.LBB92_3:                               #   in Loop: Header=BB92_1 Depth=1
.Lpcrel_hi580:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.92)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi580)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	j	.LBB92_1
.LBB92_4:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end92:
	.size	memxor, .Lfunc_end92-memxor
                                        # -- End function
	.globl	strncat                         # -- Begin function strncat
	.p2align	1
	.type	strncat,@function
strncat:                                # @strncat
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
.Lpcrel_hi581:
	auipc	a0, %pcrel_hi(.L__profc_strncat)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi581)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	call	strlen
	mv	a1, a0
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	add	a0, a0, a1
	sd	a0, -48(s0)
	j	.LBB93_1
.LBB93_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	li	a1, 0
	sd	a1, -64(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB93_4
	j	.LBB93_2
.LBB93_2:                               #   in Loop: Header=BB93_1 Depth=1
.Lpcrel_hi582:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.93)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi582)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi583:
	auipc	a0, %pcrel_hi(.L__profc_strncat)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi583)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -32(s0)
	lbu	a0, 0(a0)
	ld	a1, -48(s0)
	sb	a0, 0(a1)
	snez	a1, a0
	sd	a1, -72(s0)                     # 8-byte Folded Spill
	sd	a1, -64(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB93_4
	j	.LBB93_3
.LBB93_3:                               #   in Loop: Header=BB93_1 Depth=1
	ld	a0, -72(s0)                     # 8-byte Folded Reload
.Lpcrel_hi584:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.93)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi584)
	ld	a1, 8(a2)
	addi	a1, a1, 1
	sd	a1, 8(a2)
.Lpcrel_hi585:
	auipc	a1, %pcrel_hi(.L__profc_strncat)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi585)
	ld	a1, 24(a2)
	addi	a1, a1, 1
	sd	a1, 24(a2)
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB93_4
.LBB93_4:                               #   in Loop: Header=BB93_1 Depth=1
	ld	a0, -64(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB93_7
	j	.LBB93_5
.LBB93_5:                               #   in Loop: Header=BB93_1 Depth=1
.Lpcrel_hi586:
	auipc	a0, %pcrel_hi(.L__profc_strncat)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi586)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	j	.LBB93_6
.LBB93_6:                               #   in Loop: Header=BB93_1 Depth=1
.Lpcrel_hi587:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.93)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi587)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -32(s0)
	addi	a0, a0, 1
	sd	a0, -32(s0)
	ld	a0, -48(s0)
	addi	a0, a0, 1
	sd	a0, -48(s0)
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	j	.LBB93_1
.LBB93_7:
.Lpcrel_hi588:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.93)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi588)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -40(s0)
	bnez	a0, .LBB93_9
	j	.LBB93_8
.LBB93_8:
.Lpcrel_hi589:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.93)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi589)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi590:
	auipc	a0, %pcrel_hi(.L__profc_strncat)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi590)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a1, -48(s0)
	li	a0, 0
	sb	a0, 0(a1)
	j	.LBB93_9
.LBB93_9:
	ld	a0, -24(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end93:
	.size	strncat, .Lfunc_end93-strncat
                                        # -- End function
	.globl	strnlen                         # -- Begin function strnlen
	.p2align	1
	.type	strnlen,@function
strnlen:                                # @strnlen
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
.Lpcrel_hi591:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.94)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi591)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
.Lpcrel_hi592:
	auipc	a0, %pcrel_hi(.L__profc_strnlen)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi592)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 0
	sd	a0, -40(s0)
	j	.LBB94_1
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	ld	a1, -32(s0)
	li	a2, 0
	sd	a2, -48(s0)                     # 8-byte Folded Spill
	bgeu	a0, a1, .LBB94_4
	j	.LBB94_2
.LBB94_2:                               #   in Loop: Header=BB94_1 Depth=1
.Lpcrel_hi593:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.94)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi593)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi594:
	auipc	a0, %pcrel_hi(.L__profc_strnlen)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi594)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -24(s0)
	ld	a1, -40(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	snez	a1, a0
	sd	a1, -56(s0)                     # 8-byte Folded Spill
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB94_4
	j	.LBB94_3
.LBB94_3:                               #   in Loop: Header=BB94_1 Depth=1
	ld	a0, -56(s0)                     # 8-byte Folded Reload
.Lpcrel_hi595:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.94)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi595)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
.Lpcrel_hi596:
	auipc	a1, %pcrel_hi(.L__profc_strnlen)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi596)
	ld	a1, 24(a2)
	addi	a1, a1, 1
	sd	a1, 24(a2)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB94_4
.LBB94_4:                               #   in Loop: Header=BB94_1 Depth=1
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB94_7
	j	.LBB94_5
.LBB94_5:                               #   in Loop: Header=BB94_1 Depth=1
.Lpcrel_hi597:
	auipc	a0, %pcrel_hi(.L__profc_strnlen)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi597)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	j	.LBB94_6
.LBB94_6:                               #   in Loop: Header=BB94_1 Depth=1
.Lpcrel_hi598:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.94)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi598)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -40(s0)
	addi	a0, a0, 1
	sd	a0, -40(s0)
	j	.LBB94_1
.LBB94_7:
	ld	a0, -40(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end94:
	.size	strnlen, .Lfunc_end94-strnlen
                                        # -- End function
	.globl	strpbrk                         # -- Begin function strpbrk
	.p2align	1
	.type	strpbrk,@function
strpbrk:                                # @strpbrk
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -32(s0)
	sd	a1, -40(s0)
.Lpcrel_hi599:
	auipc	a0, %pcrel_hi(.L__profc_strpbrk)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi599)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	j	.LBB95_1
.LBB95_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_3 Depth 2
	ld	a0, -32(s0)
	lbu	a0, 0(a0)
	beqz	a0, .LBB95_8
	j	.LBB95_2
.LBB95_2:                               #   in Loop: Header=BB95_1 Depth=1
.Lpcrel_hi600:
	auipc	a0, %pcrel_hi(.L__profc_strpbrk)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi600)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -40(s0)
	sd	a0, -48(s0)
	j	.LBB95_3
.LBB95_3:                               #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, -48(s0)
	lbu	a0, 0(a0)
	beqz	a0, .LBB95_7
	j	.LBB95_4
.LBB95_4:                               #   in Loop: Header=BB95_3 Depth=2
.Lpcrel_hi601:
	auipc	a0, %pcrel_hi(.L__profc_strpbrk)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi601)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -48(s0)
	addi	a1, a0, 1
	sd	a1, -48(s0)
	lbu	a0, 0(a0)
	ld	a1, -32(s0)
	lbu	a1, 0(a1)
	bne	a0, a1, .LBB95_6
	j	.LBB95_5
.LBB95_5:
.Lpcrel_hi602:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.95)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi602)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi603:
	auipc	a0, %pcrel_hi(.L__profc_strpbrk)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi603)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB95_9
.LBB95_6:                               #   in Loop: Header=BB95_3 Depth=2
.Lpcrel_hi604:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.95)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi604)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	j	.LBB95_3
.LBB95_7:                               #   in Loop: Header=BB95_1 Depth=1
.Lpcrel_hi605:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.95)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi605)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -32(s0)
	addi	a0, a0, 1
	sd	a0, -32(s0)
	j	.LBB95_1
.LBB95_8:
.Lpcrel_hi606:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.95)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi606)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB95_9
.LBB95_9:
	ld	a0, -24(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end95:
	.size	strpbrk, .Lfunc_end95-strpbrk
                                        # -- End function
	.globl	strrchr                         # -- Begin function strrchr
	.p2align	1
	.type	strrchr,@function
strrchr:                                # @strrchr
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
.Lpcrel_hi607:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.96)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi607)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sw	a1, -28(s0)
.Lpcrel_hi608:
	auipc	a0, %pcrel_hi(.L__profc_strrchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi608)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 0
	sd	a0, -40(s0)
	j	.LBB96_2
.LBB96_1:                               #   in Loop: Header=BB96_2 Depth=1
.Lpcrel_hi609:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.96)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi609)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi610:
	auipc	a0, %pcrel_hi(.L__profc_strrchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi610)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	j	.LBB96_2
.LBB96_2:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	lw	a1, -28(s0)
	bne	a0, a1, .LBB96_4
	j	.LBB96_3
.LBB96_3:                               #   in Loop: Header=BB96_2 Depth=1
.Lpcrel_hi611:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.96)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi611)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi612:
	auipc	a0, %pcrel_hi(.L__profc_strrchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi612)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -24(s0)
	sd	a0, -40(s0)
	j	.LBB96_4
.LBB96_4:                               #   in Loop: Header=BB96_2 Depth=1
	j	.LBB96_5
.LBB96_5:                               #   in Loop: Header=BB96_2 Depth=1
	ld	a0, -24(s0)
	addi	a1, a0, 1
	sd	a1, -24(s0)
	lbu	a0, 0(a0)
	bnez	a0, .LBB96_1
	j	.LBB96_6
.LBB96_6:
	ld	a0, -40(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end96:
	.size	strrchr, .Lfunc_end96-strrchr
                                        # -- End function
	.globl	strstr                          # -- Begin function strstr
	.p2align	1
	.type	strstr,@function
strstr:                                 # @strstr
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -32(s0)
	sd	a1, -40(s0)
.Lpcrel_hi613:
	auipc	a0, %pcrel_hi(.L__profc_strstr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi613)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	ld	a0, -40(s0)
	call	strlen
	sd	a0, -56(s0)
	ld	a0, -56(s0)
	bnez	a0, .LBB97_2
	j	.LBB97_1
.LBB97_1:
.Lpcrel_hi614:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.97)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi614)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi615:
	auipc	a0, %pcrel_hi(.L__profc_strstr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi615)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB97_9
.LBB97_2:
	j	.LBB97_3
.LBB97_3:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	lbu	a1, 0(a1)
	call	strchr
	sd	a0, -48(s0)
	beqz	a0, .LBB97_8
	j	.LBB97_4
.LBB97_4:                               #   in Loop: Header=BB97_3 Depth=1
.Lpcrel_hi616:
	auipc	a0, %pcrel_hi(.L__profc_strstr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi616)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	ld	a2, -56(s0)
	call	strncmp
	bnez	a0, .LBB97_6
	j	.LBB97_5
.LBB97_5:
.Lpcrel_hi617:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.97)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi617)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi618:
	auipc	a0, %pcrel_hi(.L__profc_strstr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi618)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -48(s0)
	sd	a0, -24(s0)
	j	.LBB97_9
.LBB97_6:                               #   in Loop: Header=BB97_3 Depth=1
	j	.LBB97_7
.LBB97_7:                               #   in Loop: Header=BB97_3 Depth=1
.Lpcrel_hi619:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.97)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi619)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -48(s0)
	addi	a0, a0, 1
	sd	a0, -48(s0)
	j	.LBB97_3
.LBB97_8:
.Lpcrel_hi620:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.97)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi620)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB97_9
.LBB97_9:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end97:
	.size	strstr, .Lfunc_end97-strstr
                                        # -- End function
	.globl	copysign                        # -- Begin function copysign
	.p2align	1
	.type	copysign,@function
copysign:                               # @copysign
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a0, -32(s0)
	sd	a1, -40(s0)
.Lpcrel_hi621:
	auipc	a0, %pcrel_hi(.L__profc_copysign)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi621)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	li	a1, 0
	call	__ltdf2
	bgez	a0, .LBB98_3
	j	.LBB98_1
.LBB98_1:
.Lpcrel_hi622:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.98)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi622)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi623:
	auipc	a0, %pcrel_hi(.L__profc_copysign)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi623)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -40(s0)
	li	a1, 0
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	call	__gtdf2
	mv	a1, a0
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB98_3
	j	.LBB98_2
.LBB98_2:
.Lpcrel_hi624:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.98)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi624)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi625:
	auipc	a0, %pcrel_hi(.L__profc_copysign)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi625)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	j	.LBB98_6
.LBB98_3:
.Lpcrel_hi626:
	auipc	a0, %pcrel_hi(.L__profc_copysign)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi626)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -32(s0)
	li	a1, 0
	sd	a1, -56(s0)                     # 8-byte Folded Spill
	call	__gtdf2
	mv	a1, a0
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB98_7
	j	.LBB98_4
.LBB98_4:
.Lpcrel_hi627:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.98)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi627)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi628:
	auipc	a0, %pcrel_hi(.L__profc_copysign)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi628)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a0, -40(s0)
	li	a1, 0
	call	__ltdf2
	bgez	a0, .LBB98_7
	j	.LBB98_5
.LBB98_5:
.Lpcrel_hi629:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.98)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi629)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi630:
	auipc	a0, %pcrel_hi(.L__profc_copysign)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi630)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	j	.LBB98_6
.LBB98_6:
.Lpcrel_hi631:
	auipc	a0, %pcrel_hi(.L__profc_copysign)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi631)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -32(s0)
	li	a1, -1
	slli	a1, a1, 63
	xor	a0, a0, a1
	sd	a0, -24(s0)
	j	.LBB98_8
.LBB98_7:
.Lpcrel_hi632:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.98)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi632)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB98_8
.LBB98_8:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end98:
	.size	copysign, .Lfunc_end98-copysign
                                        # -- End function
	.globl	memmem                          # -- Begin function memmem
	.p2align	1
	.type	memmem,@function
memmem:                                 # @memmem
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	sd	a3, -56(s0)
.Lpcrel_hi633:
	auipc	a0, %pcrel_hi(.L__profc_memmem)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi633)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	add	a0, a0, a1
	ld	a1, -56(s0)
	sub	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -56(s0)
	bnez	a0, .LBB99_2
	j	.LBB99_1
.LBB99_1:
.Lpcrel_hi634:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.99)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi634)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi635:
	auipc	a0, %pcrel_hi(.L__profc_memmem)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi635)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB99_13
.LBB99_2:
	ld	a0, -40(s0)
	ld	a1, -56(s0)
	bgeu	a0, a1, .LBB99_4
	j	.LBB99_3
.LBB99_3:
.Lpcrel_hi636:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.99)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi636)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi637:
	auipc	a0, %pcrel_hi(.L__profc_memmem)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi637)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB99_13
.LBB99_4:
	ld	a0, -32(s0)
	sd	a0, -64(s0)
	j	.LBB99_5
.LBB99_5:                               # =>This Inner Loop Header: Depth=1
	ld	a1, -64(s0)
	ld	a0, -72(s0)
	bltu	a0, a1, .LBB99_12
	j	.LBB99_6
.LBB99_6:                               #   in Loop: Header=BB99_5 Depth=1
.Lpcrel_hi638:
	auipc	a0, %pcrel_hi(.L__profc_memmem)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi638)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -64(s0)
	lbu	a0, 0(a0)
	ld	a1, -48(s0)
	lbu	a1, 0(a1)
	bne	a0, a1, .LBB99_10
	j	.LBB99_7
.LBB99_7:                               #   in Loop: Header=BB99_5 Depth=1
.Lpcrel_hi639:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.99)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi639)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi640:
	auipc	a0, %pcrel_hi(.L__profc_memmem)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi640)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a0, -64(s0)
	addi	a0, a0, 1
	ld	a1, -48(s0)
	addi	a1, a1, 1
	ld	a2, -56(s0)
	addi	a2, a2, -1
	call	memcmp
	bnez	a0, .LBB99_10
	j	.LBB99_8
.LBB99_8:
.Lpcrel_hi641:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.99)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi641)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi642:
	auipc	a0, %pcrel_hi(.L__profc_memmem)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi642)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	j	.LBB99_9
.LBB99_9:
.Lpcrel_hi643:
	auipc	a0, %pcrel_hi(.L__profc_memmem)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi643)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -64(s0)
	sd	a0, -24(s0)
	j	.LBB99_13
.LBB99_10:                              #   in Loop: Header=BB99_5 Depth=1
	j	.LBB99_11
.LBB99_11:                              #   in Loop: Header=BB99_5 Depth=1
.Lpcrel_hi644:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.99)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi644)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -64(s0)
	addi	a0, a0, 1
	sd	a0, -64(s0)
	j	.LBB99_5
.LBB99_12:
.Lpcrel_hi645:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.99)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi645)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB99_13
.LBB99_13:
	ld	a0, -24(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end99:
	.size	memmem, .Lfunc_end99-memmem
                                        # -- End function
	.globl	mempcpy                         # -- Begin function mempcpy
	.p2align	1
	.type	mempcpy,@function
mempcpy:                                # @mempcpy
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
.Lpcrel_hi646:
	auipc	a3, %pcrel_hi(__llvm_gcov_ctr.100)
	addi	ra, a3, %pcrel_lo(.Lpcrel_hi646)
	ld	a3, 0(ra)
	addi	a3, a3, 1
	sd	a3, 0(ra)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
.Lpcrel_hi647:
	auipc	a0, %pcrel_hi(.L__profc_mempcpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi647)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	ld	a1, -32(s0)
	ld	a2, -40(s0)
	call	memcpy
                                        # kill: def $x11 killed $x10
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -40(s0)
	add	a0, a0, a1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end100:
	.size	mempcpy, .Lfunc_end100-mempcpy
                                        # -- End function
	.globl	frexp                           # -- Begin function frexp
	.p2align	1
	.type	frexp,@function
frexp:                                  # @frexp
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x10
	sd	a0, -24(s0)
	sd	a1, -32(s0)
.Lpcrel_hi648:
	auipc	a0, %pcrel_hi(.L__profc_frexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi648)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a1, 0
	sw	a1, -40(s0)
	sw	a1, -36(s0)
	ld	a0, -24(s0)
	call	__ltdf2
	bgez	a0, .LBB101_2
	j	.LBB101_1
.LBB101_1:
.Lpcrel_hi649:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.101)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi649)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi650:
	auipc	a0, %pcrel_hi(.L__profc_frexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi650)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -24(s0)
	li	a1, -1
	slli	a1, a1, 63
	xor	a0, a0, a1
	sd	a0, -24(s0)
	li	a0, 1
	sw	a0, -36(s0)
	j	.LBB101_2
.LBB101_2:
	ld	a0, -24(s0)
	li	a1, 1023
	slli	a1, a1, 52
	call	__gedf2
	bltz	a0, .LBB101_7
	j	.LBB101_3
.LBB101_3:
.Lpcrel_hi651:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.101)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi651)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi652:
	auipc	a0, %pcrel_hi(.L__profc_frexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi652)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	j	.LBB101_4
.LBB101_4:                              # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	li	a1, 1023
	slli	a1, a1, 52
	call	__gedf2
	bltz	a0, .LBB101_6
	j	.LBB101_5
.LBB101_5:                              #   in Loop: Header=BB101_4 Depth=1
.Lpcrel_hi653:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.101)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi653)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi654:
	auipc	a0, %pcrel_hi(.L__profc_frexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi654)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	lw	a0, -40(s0)
	addiw	a0, a0, 1
	sw	a0, -40(s0)
	ld	a0, -24(s0)
	li	a1, 511
	slli	a1, a1, 53
	call	__muldf3
	sd	a0, -24(s0)
	j	.LBB101_4
.LBB101_6:
	j	.LBB101_15
.LBB101_7:
	ld	a0, -24(s0)
	li	a1, 511
	slli	a1, a1, 53
	call	__ltdf2
	bgez	a0, .LBB101_14
	j	.LBB101_8
.LBB101_8:
.Lpcrel_hi655:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.101)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi655)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi656:
	auipc	a0, %pcrel_hi(.L__profc_frexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi656)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a0, -24(s0)
	li	a1, 0
	call	__eqdf2
	beqz	a0, .LBB101_14
	j	.LBB101_9
.LBB101_9:
.Lpcrel_hi657:
	auipc	a0, %pcrel_hi(.L__profc_frexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi657)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	j	.LBB101_10
.LBB101_10:
.Lpcrel_hi658:
	auipc	a0, %pcrel_hi(.L__profc_frexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi658)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	j	.LBB101_11
.LBB101_11:                             # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	li	a1, 511
	slli	a1, a1, 53
	call	__ltdf2
	bgez	a0, .LBB101_13
	j	.LBB101_12
.LBB101_12:                             #   in Loop: Header=BB101_11 Depth=1
.Lpcrel_hi659:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.101)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi659)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi660:
	auipc	a0, %pcrel_hi(.L__profc_frexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi660)
	ld	a0, 56(a1)
	addi	a0, a0, 1
	sd	a0, 56(a1)
	lw	a0, -40(s0)
	addiw	a0, a0, -1
	sw	a0, -40(s0)
	ld	a1, -24(s0)
	mv	a0, a1
	call	__adddf3
	sd	a0, -24(s0)
	j	.LBB101_11
.LBB101_13:
.Lpcrel_hi661:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.101)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi661)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	j	.LBB101_14
.LBB101_14:
.Lpcrel_hi662:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.101)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi662)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	j	.LBB101_15
.LBB101_15:
	lw	a0, -40(s0)
	ld	a1, -32(s0)
	sw	a0, 0(a1)
	lw	a0, -36(s0)
	beqz	a0, .LBB101_17
	j	.LBB101_16
.LBB101_16:
.Lpcrel_hi663:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.101)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi663)
	ld	a0, 56(a1)
	addi	a0, a0, 1
	sd	a0, 56(a1)
.Lpcrel_hi664:
	auipc	a0, %pcrel_hi(.L__profc_frexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi664)
	ld	a0, 64(a1)
	addi	a0, a0, 1
	sd	a0, 64(a1)
	ld	a0, -24(s0)
	li	a1, -1
	slli	a1, a1, 63
	xor	a0, a0, a1
	sd	a0, -24(s0)
	j	.LBB101_17
.LBB101_17:
	ld	a0, -24(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end101:
	.size	frexp, .Lfunc_end101-frexp
                                        # -- End function
	.globl	__muldi3                        # -- Begin function __muldi3
	.p2align	1
	.type	__muldi3,@function
__muldi3:                               # @__muldi3
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
.Lpcrel_hi665:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.102)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi665)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
.Lpcrel_hi666:
	auipc	a0, %pcrel_hi(.L__profc___muldi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi666)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 0
	sd	a0, -40(s0)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	j	.LBB102_1
.LBB102_1:                              # =>This Inner Loop Header: Depth=1
	ld	a0, -48(s0)
	beqz	a0, .LBB102_5
	j	.LBB102_2
.LBB102_2:                              #   in Loop: Header=BB102_1 Depth=1
.Lpcrel_hi667:
	auipc	a0, %pcrel_hi(.L__profc___muldi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi667)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lbu	a0, -48(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB102_4
	j	.LBB102_3
.LBB102_3:                              #   in Loop: Header=BB102_1 Depth=1
.Lpcrel_hi668:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.102)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi668)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi669:
	auipc	a0, %pcrel_hi(.L__profc___muldi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi669)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a1, -32(s0)
	ld	a0, -40(s0)
	add	a0, a0, a1
	sd	a0, -40(s0)
	j	.LBB102_4
.LBB102_4:                              #   in Loop: Header=BB102_1 Depth=1
.Lpcrel_hi670:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.102)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi670)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -32(s0)
	slli	a0, a0, 1
	sd	a0, -32(s0)
	ld	a0, -48(s0)
	srli	a0, a0, 1
	sd	a0, -48(s0)
	j	.LBB102_1
.LBB102_5:
	ld	a0, -40(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end102:
	.size	__muldi3, .Lfunc_end102-__muldi3
                                        # -- End function
	.globl	udivmodsi4                      # -- Begin function udivmodsi4
	.p2align	1
	.type	udivmodsi4,@function
udivmodsi4:                             # @udivmodsi4
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sw	a0, -24(s0)
	sw	a1, -28(s0)
	sd	a2, -40(s0)
.Lpcrel_hi671:
	auipc	a0, %pcrel_hi(.L__profc_udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi671)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 1
	sw	a0, -44(s0)
	li	a0, 0
	sw	a0, -48(s0)
	j	.LBB103_1
.LBB103_1:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	lw	a1, -24(s0)
	li	a2, 0
	sd	a2, -56(s0)                     # 8-byte Folded Spill
	bgeu	a0, a1, .LBB103_6
	j	.LBB103_2
.LBB103_2:                              #   in Loop: Header=BB103_1 Depth=1
.Lpcrel_hi672:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.103)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi672)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi673:
	auipc	a0, %pcrel_hi(.L__profc_udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi673)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	lw	a0, -44(s0)
	li	a1, 0
	sd	a1, -56(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB103_6
	j	.LBB103_3
.LBB103_3:                              #   in Loop: Header=BB103_1 Depth=1
.Lpcrel_hi674:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.103)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi674)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi675:
	auipc	a0, %pcrel_hi(.L__profc_udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi675)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	j	.LBB103_4
.LBB103_4:                              #   in Loop: Header=BB103_1 Depth=1
.Lpcrel_hi676:
	auipc	a0, %pcrel_hi(.L__profc_udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi676)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lwu	a0, -28(s0)
	lui	a1, 524288
	and	a0, a0, a1
	seqz	a1, a0
	sd	a1, -64(s0)                     # 8-byte Folded Spill
	sd	a1, -56(s0)                     # 8-byte Folded Spill
	bnez	a0, .LBB103_6
	j	.LBB103_5
.LBB103_5:                              #   in Loop: Header=BB103_1 Depth=1
	ld	a0, -64(s0)                     # 8-byte Folded Reload
.Lpcrel_hi677:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.103)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi677)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
.Lpcrel_hi678:
	auipc	a1, %pcrel_hi(.L__profc_udivmodsi4)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi678)
	ld	a1, 24(a2)
	addi	a1, a1, 1
	sd	a1, 24(a2)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB103_6
.LBB103_6:                              #   in Loop: Header=BB103_1 Depth=1
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB103_8
	j	.LBB103_7
.LBB103_7:                              #   in Loop: Header=BB103_1 Depth=1
.Lpcrel_hi679:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.103)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi679)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi680:
	auipc	a0, %pcrel_hi(.L__profc_udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi680)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -28(s0)
	slliw	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -44(s0)
	slliw	a0, a0, 1
	sw	a0, -44(s0)
	j	.LBB103_1
.LBB103_8:
	j	.LBB103_9
.LBB103_9:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -44(s0)
	beqz	a0, .LBB103_13
	j	.LBB103_10
.LBB103_10:                             #   in Loop: Header=BB103_9 Depth=1
.Lpcrel_hi681:
	auipc	a0, %pcrel_hi(.L__profc_udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi681)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	bltu	a0, a1, .LBB103_12
	j	.LBB103_11
.LBB103_11:                             #   in Loop: Header=BB103_9 Depth=1
.Lpcrel_hi682:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.103)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi682)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi683:
	auipc	a0, %pcrel_hi(.L__profc_udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi683)
	ld	a0, 56(a1)
	addi	a0, a0, 1
	sd	a0, 56(a1)
	lw	a1, -28(s0)
	lw	a0, -24(s0)
	subw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a1, -44(s0)
	lw	a0, -48(s0)
	or	a0, a0, a1
	sw	a0, -48(s0)
	j	.LBB103_12
.LBB103_12:                             #   in Loop: Header=BB103_9 Depth=1
.Lpcrel_hi684:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.103)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi684)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	lwu	a0, -44(s0)
	srli	a0, a0, 1
	sw	a0, -44(s0)
	lwu	a0, -28(s0)
	srli	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB103_9
.LBB103_13:
	ld	a0, -40(s0)
	beqz	a0, .LBB103_15
	j	.LBB103_14
.LBB103_14:
.Lpcrel_hi685:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.103)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi685)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
.Lpcrel_hi686:
	auipc	a0, %pcrel_hi(.L__profc_udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi686)
	ld	a0, 64(a1)
	addi	a0, a0, 1
	sd	a0, 64(a1)
	lw	a0, -24(s0)
	sw	a0, -20(s0)
	j	.LBB103_16
.LBB103_15:
.Lpcrel_hi687:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.103)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi687)
	ld	a0, 56(a1)
	addi	a0, a0, 1
	sd	a0, 56(a1)
	lw	a0, -48(s0)
	sw	a0, -20(s0)
	j	.LBB103_16
.LBB103_16:
	lw	a0, -20(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end103:
	.size	udivmodsi4, .Lfunc_end103-udivmodsi4
                                        # -- End function
	.globl	__clrsbqi2                      # -- Begin function __clrsbqi2
	.p2align	1
	.type	__clrsbqi2,@function
__clrsbqi2:                             # @__clrsbqi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sb	a0, -21(s0)
.Lpcrel_hi688:
	auipc	a0, %pcrel_hi(.L__profc___clrsbqi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi688)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 1
	bnez	a0, .LBB104_2
	j	.LBB104_1
.LBB104_1:
.Lpcrel_hi689:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.104)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi689)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi690:
	auipc	a0, %pcrel_hi(.L__profc___clrsbqi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi690)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lbu	a0, -21(s0)
	not	a0, a0
	sb	a0, -21(s0)
	j	.LBB104_2
.LBB104_2:
	lbu	a0, -21(s0)
	bnez	a0, .LBB104_4
	j	.LBB104_3
.LBB104_3:
.Lpcrel_hi691:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.104)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi691)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi692:
	auipc	a0, %pcrel_hi(.L__profc___clrsbqi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi692)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	li	a0, 7
	sw	a0, -20(s0)
	j	.LBB104_5
.LBB104_4:
.Lpcrel_hi693:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.104)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi693)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lbu	a0, -21(s0)
	slli	a0, a0, 8
	srli	a1, a0, 1
	or	a0, a0, a1
	srli	a1, a0, 2
	or	a0, a0, a1
	srli	a1, a0, 4
	or	a0, a0, a1
	slli	a1, a0, 33
	srli	a1, a1, 41
	or	a0, a0, a1
	srliw	a1, a0, 16
	or	a0, a0, a1
	not	a0, a0
	srli	a1, a0, 1
	lui	a2, 349525
	addiw	a2, a2, 1365
	and	a1, a1, a2
	sub	a1, a0, a1
	lui	a0, 209715
	addiw	a2, a0, 819
	and	a0, a1, a2
	srli	a1, a1, 2
	and	a1, a1, a2
	add	a0, a0, a1
	srli	a1, a0, 4
	addw	a0, a0, a1
	lui	a1, 61681
	addiw	a1, a1, -241
	and	a0, a0, a1
	lui	a1, 4112
	addiw	a1, a1, 257
	mulw	a0, a0, a1
	srliw	a0, a0, 24
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	addiw	a0, a0, -1
	sw	a0, -20(s0)
	j	.LBB104_5
.LBB104_5:
	lw	a0, -20(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end104:
	.size	__clrsbqi2, .Lfunc_end104-__clrsbqi2
                                        # -- End function
	.globl	__clrsbdi2                      # -- Begin function __clrsbdi2
	.p2align	1
	.type	__clrsbdi2,@function
__clrsbdi2:                             # @__clrsbdi2
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -32(s0)
.Lpcrel_hi694:
	auipc	a0, %pcrel_hi(.L__profc___clrsbdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi694)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	bgez	a0, .LBB105_2
	j	.LBB105_1
.LBB105_1:
.Lpcrel_hi695:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.105)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi695)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi696:
	auipc	a0, %pcrel_hi(.L__profc___clrsbdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi696)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -32(s0)
	not	a0, a0
	sd	a0, -32(s0)
	j	.LBB105_2
.LBB105_2:
	ld	a0, -32(s0)
	bnez	a0, .LBB105_4
	j	.LBB105_3
.LBB105_3:
.Lpcrel_hi697:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.105)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi697)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi698:
	auipc	a0, %pcrel_hi(.L__profc___clrsbdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi698)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	li	a0, 63
	sw	a0, -20(s0)
	j	.LBB105_5
.LBB105_4:
.Lpcrel_hi699:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.105)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi699)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -32(s0)
	srli	a1, a0, 1
	or	a0, a0, a1
	srli	a1, a0, 2
	or	a0, a0, a1
	srli	a1, a0, 4
	or	a0, a0, a1
	srli	a1, a0, 8
	or	a0, a0, a1
	srli	a1, a0, 16
	or	a0, a0, a1
	srli	a1, a0, 32
	or	a0, a0, a1
	not	a0, a0
	srli	a1, a0, 1
	lui	a2, 349525
	addiw	a2, a2, 1365
	slli	a3, a2, 32
	add	a2, a2, a3
	and	a1, a1, a2
	sub	a1, a0, a1
	lui	a0, 209715
	addiw	a0, a0, 819
	slli	a2, a0, 32
	add	a2, a2, a0
	and	a0, a1, a2
	srli	a1, a1, 2
	and	a1, a1, a2
	add	a0, a0, a1
	srli	a1, a0, 4
	add	a0, a0, a1
	lui	a1, 61681
	addiw	a1, a1, -241
	slli	a2, a1, 32
	add	a1, a1, a2
	and	a0, a0, a1
	lui	a1, 4112
	addiw	a1, a1, 257
	slli	a2, a1, 32
	add	a1, a1, a2
	mul	a0, a0, a1
	srli	a0, a0, 56
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	addiw	a0, a0, -1
	sw	a0, -20(s0)
	j	.LBB105_5
.LBB105_5:
	lw	a0, -20(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end105:
	.size	__clrsbdi2, .Lfunc_end105-__clrsbdi2
                                        # -- End function
	.globl	__mulsi3                        # -- Begin function __mulsi3
	.p2align	1
	.type	__mulsi3,@function
__mulsi3:                               # @__mulsi3
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi700:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.106)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi700)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sw	a0, -20(s0)
	sw	a1, -24(s0)
.Lpcrel_hi701:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi701)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 0
	sw	a0, -28(s0)
	j	.LBB106_1
.LBB106_1:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	beqz	a0, .LBB106_5
	j	.LBB106_2
.LBB106_2:                              #   in Loop: Header=BB106_1 Depth=1
.Lpcrel_hi702:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi702)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lbu	a0, -20(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB106_4
	j	.LBB106_3
.LBB106_3:                              #   in Loop: Header=BB106_1 Depth=1
.Lpcrel_hi703:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.106)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi703)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi704:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi704)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a1, -24(s0)
	lw	a0, -28(s0)
	addw	a0, a0, a1
	sw	a0, -28(s0)
	j	.LBB106_4
.LBB106_4:                              #   in Loop: Header=BB106_1 Depth=1
.Lpcrel_hi705:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.106)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi705)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lwu	a0, -20(s0)
	srli	a0, a0, 1
	sw	a0, -20(s0)
	lw	a0, -24(s0)
	slliw	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB106_1
.LBB106_5:
	lw	a0, -28(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end106:
	.size	__mulsi3, .Lfunc_end106-__mulsi3
                                        # -- End function
	.globl	__cmovd                         # -- Begin function __cmovd
	.p2align	1
	.type	__cmovd,@function
__cmovd:                                # @__cmovd
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x13 killed $x12
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sw	a2, -36(s0)
.Lpcrel_hi706:
	auipc	a0, %pcrel_hi(.L__profc___cmovd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi706)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lwu	a0, -36(s0)
	srli	a0, a0, 3
	sw	a0, -44(s0)
	lwu	a0, -36(s0)
	andi	a0, a0, -8
	sw	a0, -48(s0)
	ld	a0, -24(s0)
	sd	a0, -56(s0)
	ld	a0, -32(s0)
	sd	a0, -64(s0)
	ld	a0, -56(s0)
	ld	a1, -64(s0)
	bltu	a0, a1, .LBB107_3
	j	.LBB107_1
.LBB107_1:
.Lpcrel_hi707:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.107)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi707)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi708:
	auipc	a0, %pcrel_hi(.L__profc___cmovd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi708)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a1, -56(s0)
	ld	a0, -64(s0)
	lwu	a2, -36(s0)
	add	a0, a0, a2
	bltu	a0, a1, .LBB107_3
	j	.LBB107_2
.LBB107_2:
.Lpcrel_hi709:
	auipc	a0, %pcrel_hi(.L__profc___cmovd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi709)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	j	.LBB107_11
.LBB107_3:
.Lpcrel_hi710:
	auipc	a0, %pcrel_hi(.L__profc___cmovd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi710)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	li	a0, 0
	sw	a0, -40(s0)
	j	.LBB107_4
.LBB107_4:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -40(s0)
	lw	a1, -44(s0)
	bgeu	a0, a1, .LBB107_7
	j	.LBB107_5
.LBB107_5:                              #   in Loop: Header=BB107_4 Depth=1
.Lpcrel_hi711:
	auipc	a0, %pcrel_hi(.L__profc___cmovd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi711)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -32(s0)
	lwu	a1, -40(s0)
	slli	a2, a1, 3
	add	a0, a0, a2
	ld	a0, 0(a0)
	ld	a1, -24(s0)
	add	a1, a1, a2
	sd	a0, 0(a1)
	j	.LBB107_6
.LBB107_6:                              #   in Loop: Header=BB107_4 Depth=1
.Lpcrel_hi712:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.107)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi712)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -40(s0)
	addiw	a0, a0, 1
	sw	a0, -40(s0)
	j	.LBB107_4
.LBB107_7:
	j	.LBB107_8
.LBB107_8:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -36(s0)
	lw	a0, -48(s0)
	bgeu	a0, a1, .LBB107_10
	j	.LBB107_9
.LBB107_9:                              #   in Loop: Header=BB107_8 Depth=1
.Lpcrel_hi713:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.107)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi713)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi714:
	auipc	a0, %pcrel_hi(.L__profc___cmovd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi714)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a0, -64(s0)
	lwu	a2, -48(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	lw	a0, -48(s0)
	addiw	a0, a0, 1
	sw	a0, -48(s0)
	j	.LBB107_8
.LBB107_10:
.Lpcrel_hi715:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.107)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi715)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	j	.LBB107_15
.LBB107_11:
	j	.LBB107_12
.LBB107_12:                             # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	addiw	a1, a0, -1
	sw	a1, -36(s0)
	beqz	a0, .LBB107_14
	j	.LBB107_13
.LBB107_13:                             #   in Loop: Header=BB107_12 Depth=1
.Lpcrel_hi716:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.107)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi716)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi717:
	auipc	a0, %pcrel_hi(.L__profc___cmovd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi717)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	ld	a0, -64(s0)
	lwu	a2, -36(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB107_12
.LBB107_14:
.Lpcrel_hi718:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.107)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi718)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	j	.LBB107_15
.LBB107_15:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end107:
	.size	__cmovd, .Lfunc_end107-__cmovd
                                        # -- End function
	.globl	__cmovh                         # -- Begin function __cmovh
	.p2align	1
	.type	__cmovh,@function
__cmovh:                                # @__cmovh
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x13 killed $x12
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sw	a2, -36(s0)
.Lpcrel_hi719:
	auipc	a0, %pcrel_hi(.L__profc___cmovh)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi719)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lwu	a0, -36(s0)
	srli	a0, a0, 1
	sw	a0, -44(s0)
	ld	a0, -24(s0)
	sd	a0, -56(s0)
	ld	a0, -32(s0)
	sd	a0, -64(s0)
	ld	a0, -56(s0)
	ld	a1, -64(s0)
	bltu	a0, a1, .LBB108_3
	j	.LBB108_1
.LBB108_1:
.Lpcrel_hi720:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.108)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi720)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi721:
	auipc	a0, %pcrel_hi(.L__profc___cmovh)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi721)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a1, -56(s0)
	ld	a0, -64(s0)
	lwu	a2, -36(s0)
	add	a0, a0, a2
	bltu	a0, a1, .LBB108_3
	j	.LBB108_2
.LBB108_2:
.Lpcrel_hi722:
	auipc	a0, %pcrel_hi(.L__profc___cmovh)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi722)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	j	.LBB108_10
.LBB108_3:
.Lpcrel_hi723:
	auipc	a0, %pcrel_hi(.L__profc___cmovh)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi723)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	li	a0, 0
	sw	a0, -40(s0)
	j	.LBB108_4
.LBB108_4:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -40(s0)
	lw	a1, -44(s0)
	bgeu	a0, a1, .LBB108_7
	j	.LBB108_5
.LBB108_5:                              #   in Loop: Header=BB108_4 Depth=1
.Lpcrel_hi724:
	auipc	a0, %pcrel_hi(.L__profc___cmovh)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi724)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -32(s0)
	lwu	a1, -40(s0)
	slli	a2, a1, 1
	add	a0, a0, a2
	lh	a0, 0(a0)
	ld	a1, -24(s0)
	add	a1, a1, a2
	sh	a0, 0(a1)
	j	.LBB108_6
.LBB108_6:                              #   in Loop: Header=BB108_4 Depth=1
.Lpcrel_hi725:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.108)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi725)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -40(s0)
	addiw	a0, a0, 1
	sw	a0, -40(s0)
	j	.LBB108_4
.LBB108_7:
	lbu	a0, -36(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB108_9
	j	.LBB108_8
.LBB108_8:
.Lpcrel_hi726:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.108)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi726)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi727:
	auipc	a0, %pcrel_hi(.L__profc___cmovh)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi727)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a0, -64(s0)
	lw	a1, -36(s0)
	addiw	a1, a1, -1
	slli	a1, a1, 32
	srli	a2, a1, 32
	add	a0, a0, a2
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB108_9
.LBB108_9:
.Lpcrel_hi728:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.108)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi728)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	j	.LBB108_14
.LBB108_10:
	j	.LBB108_11
.LBB108_11:                             # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	addiw	a1, a0, -1
	sw	a1, -36(s0)
	beqz	a0, .LBB108_13
	j	.LBB108_12
.LBB108_12:                             #   in Loop: Header=BB108_11 Depth=1
.Lpcrel_hi729:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.108)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi729)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi730:
	auipc	a0, %pcrel_hi(.L__profc___cmovh)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi730)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	ld	a0, -64(s0)
	lwu	a2, -36(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB108_11
.LBB108_13:
.Lpcrel_hi731:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.108)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi731)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	j	.LBB108_14
.LBB108_14:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end108:
	.size	__cmovh, .Lfunc_end108-__cmovh
                                        # -- End function
	.globl	__cmovw                         # -- Begin function __cmovw
	.p2align	1
	.type	__cmovw,@function
__cmovw:                                # @__cmovw
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x13 killed $x12
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sw	a2, -36(s0)
.Lpcrel_hi732:
	auipc	a0, %pcrel_hi(.L__profc___cmovw)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi732)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lwu	a0, -36(s0)
	srli	a0, a0, 2
	sw	a0, -44(s0)
	lwu	a0, -36(s0)
	andi	a0, a0, -4
	sw	a0, -48(s0)
	ld	a0, -24(s0)
	sd	a0, -56(s0)
	ld	a0, -32(s0)
	sd	a0, -64(s0)
	ld	a0, -56(s0)
	ld	a1, -64(s0)
	bltu	a0, a1, .LBB109_3
	j	.LBB109_1
.LBB109_1:
.Lpcrel_hi733:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.109)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi733)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi734:
	auipc	a0, %pcrel_hi(.L__profc___cmovw)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi734)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a1, -56(s0)
	ld	a0, -64(s0)
	lwu	a2, -36(s0)
	add	a0, a0, a2
	bltu	a0, a1, .LBB109_3
	j	.LBB109_2
.LBB109_2:
.Lpcrel_hi735:
	auipc	a0, %pcrel_hi(.L__profc___cmovw)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi735)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	j	.LBB109_11
.LBB109_3:
.Lpcrel_hi736:
	auipc	a0, %pcrel_hi(.L__profc___cmovw)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi736)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	li	a0, 0
	sw	a0, -40(s0)
	j	.LBB109_4
.LBB109_4:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -40(s0)
	lw	a1, -44(s0)
	bgeu	a0, a1, .LBB109_7
	j	.LBB109_5
.LBB109_5:                              #   in Loop: Header=BB109_4 Depth=1
.Lpcrel_hi737:
	auipc	a0, %pcrel_hi(.L__profc___cmovw)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi737)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -32(s0)
	lwu	a1, -40(s0)
	slli	a2, a1, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	ld	a1, -24(s0)
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB109_6
.LBB109_6:                              #   in Loop: Header=BB109_4 Depth=1
.Lpcrel_hi738:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.109)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi738)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -40(s0)
	addiw	a0, a0, 1
	sw	a0, -40(s0)
	j	.LBB109_4
.LBB109_7:
	j	.LBB109_8
.LBB109_8:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -36(s0)
	lw	a0, -48(s0)
	bgeu	a0, a1, .LBB109_10
	j	.LBB109_9
.LBB109_9:                              #   in Loop: Header=BB109_8 Depth=1
.Lpcrel_hi739:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.109)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi739)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi740:
	auipc	a0, %pcrel_hi(.L__profc___cmovw)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi740)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a0, -64(s0)
	lwu	a2, -48(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	lw	a0, -48(s0)
	addiw	a0, a0, 1
	sw	a0, -48(s0)
	j	.LBB109_8
.LBB109_10:
.Lpcrel_hi741:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.109)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi741)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	j	.LBB109_15
.LBB109_11:
	j	.LBB109_12
.LBB109_12:                             # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	addiw	a1, a0, -1
	sw	a1, -36(s0)
	beqz	a0, .LBB109_14
	j	.LBB109_13
.LBB109_13:                             #   in Loop: Header=BB109_12 Depth=1
.Lpcrel_hi742:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.109)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi742)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi743:
	auipc	a0, %pcrel_hi(.L__profc___cmovw)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi743)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	ld	a0, -64(s0)
	lwu	a2, -36(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB109_12
.LBB109_14:
.Lpcrel_hi744:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.109)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi744)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	j	.LBB109_15
.LBB109_15:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end109:
	.size	__cmovw, .Lfunc_end109-__cmovw
                                        # -- End function
	.globl	__modi                          # -- Begin function __modi
	.p2align	1
	.type	__modi,@function
__modi:                                 # @__modi
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi745:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.110)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi745)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sw	a0, -20(s0)
	sw	a1, -24(s0)
.Lpcrel_hi746:
	auipc	a0, %pcrel_hi(.L__profc___modi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi746)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	remw	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end110:
	.size	__modi, .Lfunc_end110-__modi
                                        # -- End function
	.globl	__uitod                         # -- Begin function __uitod
	.p2align	1
	.type	__uitod,@function
__uitod:                                # @__uitod
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi747:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.111)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi747)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi748:
	auipc	a0, %pcrel_hi(.L__profc___uitod)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi748)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	call	__floatunsidf
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end111:
	.size	__uitod, .Lfunc_end111-__uitod
                                        # -- End function
	.globl	__uitof                         # -- Begin function __uitof
	.p2align	1
	.type	__uitof,@function
__uitof:                                # @__uitof
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi749:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.112)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi749)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi750:
	auipc	a0, %pcrel_hi(.L__profc___uitof)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi750)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	call	__floatunsisf
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end112:
	.size	__uitof, .Lfunc_end112-__uitof
                                        # -- End function
	.globl	__ulltod                        # -- Begin function __ulltod
	.p2align	1
	.type	__ulltod,@function
__ulltod:                               # @__ulltod
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
.Lpcrel_hi751:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.113)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi751)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sd	a0, -24(s0)
.Lpcrel_hi752:
	auipc	a0, %pcrel_hi(.L__profc___ulltod)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi752)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	call	__floatundidf
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end113:
	.size	__ulltod, .Lfunc_end113-__ulltod
                                        # -- End function
	.globl	__ulltof                        # -- Begin function __ulltof
	.p2align	1
	.type	__ulltof,@function
__ulltof:                               # @__ulltof
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
.Lpcrel_hi753:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.114)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi753)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sd	a0, -24(s0)
.Lpcrel_hi754:
	auipc	a0, %pcrel_hi(.L__profc___ulltof)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi754)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	call	__floatundisf
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end114:
	.size	__ulltof, .Lfunc_end114-__ulltof
                                        # -- End function
	.globl	__umodi                         # -- Begin function __umodi
	.p2align	1
	.type	__umodi,@function
__umodi:                                # @__umodi
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi755:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.115)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi755)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sw	a0, -20(s0)
	sw	a1, -24(s0)
.Lpcrel_hi756:
	auipc	a0, %pcrel_hi(.L__profc___umodi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi756)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	remuw	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end115:
	.size	__umodi, .Lfunc_end115-__umodi
                                        # -- End function
	.globl	__clzhi2                        # -- Begin function __clzhi2
	.p2align	1
	.type	__clzhi2,@function
__clzhi2:                               # @__clzhi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi757:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.116)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi757)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sh	a0, -18(s0)
.Lpcrel_hi758:
	auipc	a0, %pcrel_hi(.L__profc___clzhi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi758)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 0
	sw	a0, -24(s0)
	j	.LBB116_1
.LBB116_1:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -24(s0)
	li	a0, 15
	blt	a0, a1, .LBB116_6
	j	.LBB116_2
.LBB116_2:                              #   in Loop: Header=BB116_1 Depth=1
.Lpcrel_hi759:
	auipc	a0, %pcrel_hi(.L__profc___clzhi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi759)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lhu	a0, -18(s0)
	lw	a2, -24(s0)
	li	a1, 15
	subw	a1, a1, a2
	srlw	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB116_4
	j	.LBB116_3
.LBB116_3:
.Lpcrel_hi760:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.116)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi760)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi761:
	auipc	a0, %pcrel_hi(.L__profc___clzhi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi761)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	j	.LBB116_6
.LBB116_4:                              #   in Loop: Header=BB116_1 Depth=1
	j	.LBB116_5
.LBB116_5:                              #   in Loop: Header=BB116_1 Depth=1
.Lpcrel_hi762:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.116)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi762)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a0, -24(s0)
	addiw	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB116_1
.LBB116_6:
	lw	a0, -24(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end116:
	.size	__clzhi2, .Lfunc_end116-__clzhi2
                                        # -- End function
	.globl	__ctzhi2                        # -- Begin function __ctzhi2
	.p2align	1
	.type	__ctzhi2,@function
__ctzhi2:                               # @__ctzhi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi763:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.117)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi763)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sh	a0, -18(s0)
.Lpcrel_hi764:
	auipc	a0, %pcrel_hi(.L__profc___ctzhi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi764)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 0
	sw	a0, -24(s0)
	j	.LBB117_1
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -24(s0)
	li	a0, 15
	blt	a0, a1, .LBB117_6
	j	.LBB117_2
.LBB117_2:                              #   in Loop: Header=BB117_1 Depth=1
.Lpcrel_hi765:
	auipc	a0, %pcrel_hi(.L__profc___ctzhi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi765)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lhu	a0, -18(s0)
	lwu	a1, -24(s0)
	srlw	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB117_4
	j	.LBB117_3
.LBB117_3:
.Lpcrel_hi766:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.117)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi766)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi767:
	auipc	a0, %pcrel_hi(.L__profc___ctzhi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi767)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	j	.LBB117_6
.LBB117_4:                              #   in Loop: Header=BB117_1 Depth=1
	j	.LBB117_5
.LBB117_5:                              #   in Loop: Header=BB117_1 Depth=1
.Lpcrel_hi768:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.117)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi768)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a0, -24(s0)
	addiw	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB117_1
.LBB117_6:
	lw	a0, -24(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end117:
	.size	__ctzhi2, .Lfunc_end117-__ctzhi2
                                        # -- End function
	.globl	__fixunssfsi                    # -- Begin function __fixunssfsi
	.p2align	1
	.type	__fixunssfsi,@function
__fixunssfsi:                           # @__fixunssfsi
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -28(s0)
.Lpcrel_hi769:
	auipc	a0, %pcrel_hi(.L__profc___fixunssfsi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi769)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -28(s0)
	lui	a1, 290816
	call	__gesf2
	bltz	a0, .LBB118_2
	j	.LBB118_1
.LBB118_1:
.Lpcrel_hi770:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.118)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi770)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi771:
	auipc	a0, %pcrel_hi(.L__profc___fixunssfsi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi771)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -28(s0)
	lui	a1, 815104
	call	__addsf3
	call	__fixsfdi
	lui	a1, 8
	add	a0, a0, a1
	sd	a0, -24(s0)
	j	.LBB118_3
.LBB118_2:
.Lpcrel_hi772:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.118)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi772)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -28(s0)
	call	__fixsfdi
	sd	a0, -24(s0)
	j	.LBB118_3
.LBB118_3:
	ld	a0, -24(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end118:
	.size	__fixunssfsi, .Lfunc_end118-__fixunssfsi
                                        # -- End function
	.globl	__parityhi2                     # -- Begin function __parityhi2
	.p2align	1
	.type	__parityhi2,@function
__parityhi2:                            # @__parityhi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi773:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.119)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi773)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sh	a0, -18(s0)
.Lpcrel_hi774:
	auipc	a0, %pcrel_hi(.L__profc___parityhi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi774)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 0
	sw	a0, -28(s0)
	sw	a0, -24(s0)
	j	.LBB119_1
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -24(s0)
	li	a0, 15
	blt	a0, a1, .LBB119_6
	j	.LBB119_2
.LBB119_2:                              #   in Loop: Header=BB119_1 Depth=1
.Lpcrel_hi775:
	auipc	a0, %pcrel_hi(.L__profc___parityhi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi775)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lhu	a0, -18(s0)
	lwu	a1, -24(s0)
	srlw	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB119_4
	j	.LBB119_3
.LBB119_3:                              #   in Loop: Header=BB119_1 Depth=1
.Lpcrel_hi776:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.119)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi776)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi777:
	auipc	a0, %pcrel_hi(.L__profc___parityhi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi777)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a0, -28(s0)
	addiw	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB119_4
.LBB119_4:                              #   in Loop: Header=BB119_1 Depth=1
	j	.LBB119_5
.LBB119_5:                              #   in Loop: Header=BB119_1 Depth=1
.Lpcrel_hi778:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.119)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi778)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a0, -24(s0)
	addiw	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB119_1
.LBB119_6:
	lwu	a0, -28(s0)
	andi	a0, a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end119:
	.size	__parityhi2, .Lfunc_end119-__parityhi2
                                        # -- End function
	.globl	__popcounthi2                   # -- Begin function __popcounthi2
	.p2align	1
	.type	__popcounthi2,@function
__popcounthi2:                          # @__popcounthi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi779:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.120)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi779)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sh	a0, -18(s0)
.Lpcrel_hi780:
	auipc	a0, %pcrel_hi(.L__profc___popcounthi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi780)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 0
	sw	a0, -28(s0)
	sw	a0, -24(s0)
	j	.LBB120_1
.LBB120_1:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -24(s0)
	li	a0, 15
	blt	a0, a1, .LBB120_6
	j	.LBB120_2
.LBB120_2:                              #   in Loop: Header=BB120_1 Depth=1
.Lpcrel_hi781:
	auipc	a0, %pcrel_hi(.L__profc___popcounthi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi781)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lhu	a0, -18(s0)
	lwu	a1, -24(s0)
	srlw	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB120_4
	j	.LBB120_3
.LBB120_3:                              #   in Loop: Header=BB120_1 Depth=1
.Lpcrel_hi782:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.120)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi782)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi783:
	auipc	a0, %pcrel_hi(.L__profc___popcounthi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi783)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a0, -28(s0)
	addiw	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB120_4
.LBB120_4:                              #   in Loop: Header=BB120_1 Depth=1
	j	.LBB120_5
.LBB120_5:                              #   in Loop: Header=BB120_1 Depth=1
.Lpcrel_hi784:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.120)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi784)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a0, -24(s0)
	addiw	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB120_1
.LBB120_6:
	lw	a0, -28(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end120:
	.size	__popcounthi2, .Lfunc_end120-__popcounthi2
                                        # -- End function
	.globl	__mulsi3_iq2000                 # -- Begin function __mulsi3_iq2000
	.p2align	1
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        # @__mulsi3_iq2000
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi785:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.121)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi785)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sw	a0, -20(s0)
	sw	a1, -24(s0)
.Lpcrel_hi786:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3_iq2000)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi786)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 0
	sw	a0, -28(s0)
	j	.LBB121_1
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	beqz	a0, .LBB121_5
	j	.LBB121_2
.LBB121_2:                              #   in Loop: Header=BB121_1 Depth=1
.Lpcrel_hi787:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3_iq2000)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi787)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lbu	a0, -20(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB121_4
	j	.LBB121_3
.LBB121_3:                              #   in Loop: Header=BB121_1 Depth=1
.Lpcrel_hi788:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.121)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi788)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi789:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3_iq2000)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi789)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a1, -24(s0)
	lw	a0, -28(s0)
	addw	a0, a0, a1
	sw	a0, -28(s0)
	j	.LBB121_4
.LBB121_4:                              #   in Loop: Header=BB121_1 Depth=1
.Lpcrel_hi790:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.121)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi790)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lwu	a0, -20(s0)
	srli	a0, a0, 1
	sw	a0, -20(s0)
	lw	a0, -24(s0)
	slliw	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB121_1
.LBB121_5:
	lw	a0, -28(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end121:
	.size	__mulsi3_iq2000, .Lfunc_end121-__mulsi3_iq2000
                                        # -- End function
	.globl	__mulsi3_lm32                   # -- Begin function __mulsi3_lm32
	.p2align	1
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          # @__mulsi3_lm32
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -24(s0)
	sw	a1, -28(s0)
.Lpcrel_hi791:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3_lm32)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi791)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 0
	sw	a0, -32(s0)
	lw	a0, -24(s0)
	bnez	a0, .LBB122_2
	j	.LBB122_1
.LBB122_1:
.Lpcrel_hi792:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.122)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi792)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi793:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3_lm32)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi793)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB122_8
.LBB122_2:
.Lpcrel_hi794:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.122)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi794)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	j	.LBB122_3
.LBB122_3:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	beqz	a0, .LBB122_7
	j	.LBB122_4
.LBB122_4:                              #   in Loop: Header=BB122_3 Depth=1
.Lpcrel_hi795:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3_lm32)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi795)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lbu	a0, -28(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB122_6
	j	.LBB122_5
.LBB122_5:                              #   in Loop: Header=BB122_3 Depth=1
.Lpcrel_hi796:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.122)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi796)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi797:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3_lm32)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi797)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	lw	a1, -24(s0)
	lw	a0, -32(s0)
	addw	a0, a0, a1
	sw	a0, -32(s0)
	j	.LBB122_6
.LBB122_6:                              #   in Loop: Header=BB122_3 Depth=1
.Lpcrel_hi798:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.122)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi798)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	lw	a0, -24(s0)
	slliw	a0, a0, 1
	sw	a0, -24(s0)
	lwu	a0, -28(s0)
	srli	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB122_3
.LBB122_7:
	lw	a0, -32(s0)
	sw	a0, -20(s0)
	j	.LBB122_8
.LBB122_8:
	lw	a0, -20(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end122:
	.size	__mulsi3_lm32, .Lfunc_end122-__mulsi3_lm32
                                        # -- End function
	.globl	__udivmodsi4                    # -- Begin function __udivmodsi4
	.p2align	1
	.type	__udivmodsi4,@function
__udivmodsi4:                           # @__udivmodsi4
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x13 killed $x12
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sw	a0, -24(s0)
	sw	a1, -28(s0)
	sw	a2, -32(s0)
.Lpcrel_hi799:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi799)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 1
	sw	a0, -36(s0)
	li	a0, 0
	sw	a0, -40(s0)
	j	.LBB123_1
.LBB123_1:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	lw	a1, -24(s0)
	li	a2, 0
	sd	a2, -48(s0)                     # 8-byte Folded Spill
	bgeu	a0, a1, .LBB123_6
	j	.LBB123_2
.LBB123_2:                              #   in Loop: Header=BB123_1 Depth=1
.Lpcrel_hi800:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.123)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi800)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi801:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi801)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	lw	a0, -36(s0)
	li	a1, 0
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB123_6
	j	.LBB123_3
.LBB123_3:                              #   in Loop: Header=BB123_1 Depth=1
.Lpcrel_hi802:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.123)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi802)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi803:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi803)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	j	.LBB123_4
.LBB123_4:                              #   in Loop: Header=BB123_1 Depth=1
.Lpcrel_hi804:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi804)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lwu	a0, -28(s0)
	lui	a1, 524288
	and	a0, a0, a1
	seqz	a1, a0
	sd	a1, -56(s0)                     # 8-byte Folded Spill
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	bnez	a0, .LBB123_6
	j	.LBB123_5
.LBB123_5:                              #   in Loop: Header=BB123_1 Depth=1
	ld	a0, -56(s0)                     # 8-byte Folded Reload
.Lpcrel_hi805:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.123)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi805)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
.Lpcrel_hi806:
	auipc	a1, %pcrel_hi(.L__profc___udivmodsi4)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi806)
	ld	a1, 24(a2)
	addi	a1, a1, 1
	sd	a1, 24(a2)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB123_6
.LBB123_6:                              #   in Loop: Header=BB123_1 Depth=1
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB123_8
	j	.LBB123_7
.LBB123_7:                              #   in Loop: Header=BB123_1 Depth=1
.Lpcrel_hi807:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.123)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi807)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi808:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi808)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -28(s0)
	slliw	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -36(s0)
	slliw	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB123_1
.LBB123_8:
	j	.LBB123_9
.LBB123_9:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	beqz	a0, .LBB123_13
	j	.LBB123_10
.LBB123_10:                             #   in Loop: Header=BB123_9 Depth=1
.Lpcrel_hi809:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi809)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	bltu	a0, a1, .LBB123_12
	j	.LBB123_11
.LBB123_11:                             #   in Loop: Header=BB123_9 Depth=1
.Lpcrel_hi810:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.123)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi810)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi811:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi811)
	ld	a0, 56(a1)
	addi	a0, a0, 1
	sd	a0, 56(a1)
	lw	a1, -28(s0)
	lw	a0, -24(s0)
	subw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a1, -36(s0)
	lw	a0, -40(s0)
	or	a0, a0, a1
	sw	a0, -40(s0)
	j	.LBB123_12
.LBB123_12:                             #   in Loop: Header=BB123_9 Depth=1
.Lpcrel_hi812:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.123)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi812)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	lwu	a0, -36(s0)
	srli	a0, a0, 1
	sw	a0, -36(s0)
	lwu	a0, -28(s0)
	srli	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB123_9
.LBB123_13:
	lw	a0, -32(s0)
	beqz	a0, .LBB123_15
	j	.LBB123_14
.LBB123_14:
.Lpcrel_hi813:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.123)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi813)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
.Lpcrel_hi814:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi814)
	ld	a0, 64(a1)
	addi	a0, a0, 1
	sd	a0, 64(a1)
	lw	a0, -24(s0)
	sw	a0, -20(s0)
	j	.LBB123_16
.LBB123_15:
.Lpcrel_hi815:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.123)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi815)
	ld	a0, 56(a1)
	addi	a0, a0, 1
	sd	a0, 56(a1)
	lw	a0, -40(s0)
	sw	a0, -20(s0)
	j	.LBB123_16
.LBB123_16:
	lw	a0, -20(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end123:
	.size	__udivmodsi4, .Lfunc_end123-__udivmodsi4
                                        # -- End function
	.globl	__mspabi_cmpf                   # -- Begin function __mspabi_cmpf
	.p2align	1
	.type	__mspabi_cmpf,@function
__mspabi_cmpf:                          # @__mspabi_cmpf
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -24(s0)
	sw	a1, -28(s0)
.Lpcrel_hi816:
	auipc	a0, %pcrel_hi(.L__profc___mspabi_cmpf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi816)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	call	__ltsf2
	bgez	a0, .LBB124_2
	j	.LBB124_1
.LBB124_1:
.Lpcrel_hi817:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.124)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi817)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi818:
	auipc	a0, %pcrel_hi(.L__profc___mspabi_cmpf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi818)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	li	a0, -1
	sw	a0, -20(s0)
	j	.LBB124_5
.LBB124_2:
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	call	__gtsf2
	mv	a1, a0
	li	a0, 0
	bge	a0, a1, .LBB124_4
	j	.LBB124_3
.LBB124_3:
.Lpcrel_hi819:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.124)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi819)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi820:
	auipc	a0, %pcrel_hi(.L__profc___mspabi_cmpf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi820)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB124_5
.LBB124_4:
.Lpcrel_hi821:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.124)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi821)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB124_5
.LBB124_5:
	lw	a0, -20(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end124:
	.size	__mspabi_cmpf, .Lfunc_end124-__mspabi_cmpf
                                        # -- End function
	.globl	__mspabi_cmpd                   # -- Begin function __mspabi_cmpd
	.p2align	1
	.type	__mspabi_cmpd,@function
__mspabi_cmpd:                          # @__mspabi_cmpd
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a0, -32(s0)
	sd	a1, -40(s0)
.Lpcrel_hi822:
	auipc	a0, %pcrel_hi(.L__profc___mspabi_cmpd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi822)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	call	__ltdf2
	bgez	a0, .LBB125_2
	j	.LBB125_1
.LBB125_1:
.Lpcrel_hi823:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.125)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi823)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi824:
	auipc	a0, %pcrel_hi(.L__profc___mspabi_cmpd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi824)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	li	a0, -1
	sw	a0, -20(s0)
	j	.LBB125_5
.LBB125_2:
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	call	__gtdf2
	mv	a1, a0
	li	a0, 0
	bge	a0, a1, .LBB125_4
	j	.LBB125_3
.LBB125_3:
.Lpcrel_hi825:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.125)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi825)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi826:
	auipc	a0, %pcrel_hi(.L__profc___mspabi_cmpd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi826)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB125_5
.LBB125_4:
.Lpcrel_hi827:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.125)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi827)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB125_5
.LBB125_5:
	lw	a0, -20(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end125:
	.size	__mspabi_cmpd, .Lfunc_end125-__mspabi_cmpd
                                        # -- End function
	.globl	__mspabi_mpysll                 # -- Begin function __mspabi_mpysll
	.p2align	1
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        # @__mspabi_mpysll
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
.Lpcrel_hi828:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.126)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi828)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
.Lpcrel_hi829:
	auipc	a0, %pcrel_hi(.L__profc___mspabi_mpysll)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi829)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	mul	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end126:
	.size	__mspabi_mpysll, .Lfunc_end126-__mspabi_mpysll
                                        # -- End function
	.globl	__mspabi_mpyull                 # -- Begin function __mspabi_mpyull
	.p2align	1
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        # @__mspabi_mpyull
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
.Lpcrel_hi830:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.127)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi830)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
.Lpcrel_hi831:
	auipc	a0, %pcrel_hi(.L__profc___mspabi_mpyull)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi831)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	mul	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end127:
	.size	__mspabi_mpyull, .Lfunc_end127-__mspabi_mpyull
                                        # -- End function
	.globl	__mulhi3                        # -- Begin function __mulhi3
	.p2align	1
	.type	__mulhi3,@function
__mulhi3:                               # @__mulhi3
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -20(s0)
	sw	a1, -24(s0)
.Lpcrel_hi832:
	auipc	a0, %pcrel_hi(.L__profc___mulhi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi832)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 0
	sw	a0, -32(s0)
	sw	a0, -36(s0)
	lw	a0, -24(s0)
	bgez	a0, .LBB128_2
	j	.LBB128_1
.LBB128_1:
.Lpcrel_hi833:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.128)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi833)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi834:
	auipc	a0, %pcrel_hi(.L__profc___mulhi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi834)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a1, -24(s0)
	li	a0, 0
	subw	a0, a0, a1
	sw	a0, -24(s0)
	li	a0, 1
	sw	a0, -32(s0)
	j	.LBB128_2
.LBB128_2:
	li	a0, 0
	sb	a0, -25(s0)
	j	.LBB128_3
.LBB128_3:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	li	a1, 0
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB128_6
	j	.LBB128_4
.LBB128_4:                              #   in Loop: Header=BB128_3 Depth=1
.Lpcrel_hi835:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.128)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi835)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi836:
	auipc	a0, %pcrel_hi(.L__profc___mulhi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi836)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	lbu	a1, -25(s0)
	sltiu	a2, a1, 32
	sd	a2, -56(s0)                     # 8-byte Folded Spill
	li	a0, 31
	sd	a2, -48(s0)                     # 8-byte Folded Spill
	bltu	a0, a1, .LBB128_6
	j	.LBB128_5
.LBB128_5:                              #   in Loop: Header=BB128_3 Depth=1
	ld	a0, -56(s0)                     # 8-byte Folded Reload
.Lpcrel_hi837:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.128)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi837)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
.Lpcrel_hi838:
	auipc	a1, %pcrel_hi(.L__profc___mulhi3)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi838)
	ld	a1, 32(a2)
	addi	a1, a1, 1
	sd	a1, 32(a2)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB128_6
.LBB128_6:                              #   in Loop: Header=BB128_3 Depth=1
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB128_11
	j	.LBB128_7
.LBB128_7:                              #   in Loop: Header=BB128_3 Depth=1
.Lpcrel_hi839:
	auipc	a0, %pcrel_hi(.L__profc___mulhi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi839)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lbu	a0, -24(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB128_9
	j	.LBB128_8
.LBB128_8:                              #   in Loop: Header=BB128_3 Depth=1
.Lpcrel_hi840:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.128)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi840)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi841:
	auipc	a0, %pcrel_hi(.L__profc___mulhi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi841)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	lw	a1, -20(s0)
	lw	a0, -36(s0)
	addw	a0, a0, a1
	sw	a0, -36(s0)
	j	.LBB128_9
.LBB128_9:                              #   in Loop: Header=BB128_3 Depth=1
	lw	a0, -20(s0)
	slliw	a0, a0, 1
	sw	a0, -20(s0)
	lw	a0, -24(s0)
	srli	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB128_10
.LBB128_10:                             #   in Loop: Header=BB128_3 Depth=1
.Lpcrel_hi842:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.128)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi842)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	lbu	a0, -25(s0)
	addiw	a0, a0, 1
	sb	a0, -25(s0)
	j	.LBB128_3
.LBB128_11:
	lw	a0, -32(s0)
	beqz	a0, .LBB128_13
	j	.LBB128_12
.LBB128_12:
.Lpcrel_hi843:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.128)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi843)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
.Lpcrel_hi844:
	auipc	a0, %pcrel_hi(.L__profc___mulhi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi844)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	lw	a1, -36(s0)
	li	a0, 0
	subw	a0, a0, a1
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB128_14
.LBB128_13:
.Lpcrel_hi845:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.128)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi845)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	lw	a0, -36(s0)
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB128_14
.LBB128_14:
	ld	a0, -64(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end128:
	.size	__mulhi3, .Lfunc_end128-__mulhi3
                                        # -- End function
	.globl	__divsi3                        # -- Begin function __divsi3
	.p2align	1
	.type	__divsi3,@function
__divsi3:                               # @__divsi3
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
.Lpcrel_hi846:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.129)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi846)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
.Lpcrel_hi847:
	auipc	a0, %pcrel_hi(.L__profc___divsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi847)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 0
	sw	a0, -36(s0)
	ld	a0, -24(s0)
	bgez	a0, .LBB129_2
	j	.LBB129_1
.LBB129_1:
.Lpcrel_hi848:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.129)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi848)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi849:
	auipc	a0, %pcrel_hi(.L__profc___divsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi849)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a1, -24(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -24(s0)
	lw	a0, -36(s0)
	seqz	a0, a0
	sw	a0, -36(s0)
	j	.LBB129_2
.LBB129_2:
	ld	a0, -32(s0)
	bgez	a0, .LBB129_4
	j	.LBB129_3
.LBB129_3:
.Lpcrel_hi850:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.129)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi850)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi851:
	auipc	a0, %pcrel_hi(.L__profc___divsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi851)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a1, -32(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -32(s0)
	lw	a0, -36(s0)
	seqz	a0, a0
	sw	a0, -36(s0)
	j	.LBB129_4
.LBB129_4:
	lw	a0, -24(s0)
	lw	a1, -32(s0)
	li	a2, 0
	call	__udivmodsi4
	slli	a0, a0, 32
	srli	a0, a0, 32
	sd	a0, -48(s0)
	lw	a0, -36(s0)
	beqz	a0, .LBB129_6
	j	.LBB129_5
.LBB129_5:
.Lpcrel_hi852:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.129)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi852)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi853:
	auipc	a0, %pcrel_hi(.L__profc___divsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi853)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a1, -48(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -48(s0)
	j	.LBB129_6
.LBB129_6:
	ld	a0, -48(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end129:
	.size	__divsi3, .Lfunc_end129-__divsi3
                                        # -- End function
	.globl	__modsi3                        # -- Begin function __modsi3
	.p2align	1
	.type	__modsi3,@function
__modsi3:                               # @__modsi3
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
.Lpcrel_hi854:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.130)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi854)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
.Lpcrel_hi855:
	auipc	a0, %pcrel_hi(.L__profc___modsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi855)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 0
	sw	a0, -36(s0)
	ld	a0, -24(s0)
	bgez	a0, .LBB130_2
	j	.LBB130_1
.LBB130_1:
.Lpcrel_hi856:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.130)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi856)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi857:
	auipc	a0, %pcrel_hi(.L__profc___modsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi857)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a1, -24(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -24(s0)
	li	a0, 1
	sw	a0, -36(s0)
	j	.LBB130_2
.LBB130_2:
	ld	a0, -32(s0)
	bgez	a0, .LBB130_4
	j	.LBB130_3
.LBB130_3:
.Lpcrel_hi858:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.130)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi858)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi859:
	auipc	a0, %pcrel_hi(.L__profc___modsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi859)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a1, -32(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -32(s0)
	j	.LBB130_4
.LBB130_4:
	lw	a0, -24(s0)
	lw	a1, -32(s0)
	li	a2, 1
	call	__udivmodsi4
	slli	a0, a0, 32
	srli	a0, a0, 32
	sd	a0, -48(s0)
	lw	a0, -36(s0)
	beqz	a0, .LBB130_6
	j	.LBB130_5
.LBB130_5:
.Lpcrel_hi860:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.130)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi860)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi861:
	auipc	a0, %pcrel_hi(.L__profc___modsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi861)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a1, -48(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -48(s0)
	j	.LBB130_6
.LBB130_6:
	ld	a0, -48(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end130:
	.size	__modsi3, .Lfunc_end130-__modsi3
                                        # -- End function
	.globl	__udivmodhi4                    # -- Begin function __udivmodhi4
	.p2align	1
	.type	__udivmodhi4,@function
__udivmodhi4:                           # @__udivmodhi4
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x13 killed $x12
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sh	a0, -20(s0)
	sh	a1, -22(s0)
	sw	a2, -28(s0)
.Lpcrel_hi862:
	auipc	a0, %pcrel_hi(.L__profc___udivmodhi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi862)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 1
	sh	a0, -30(s0)
	li	a0, 0
	sh	a0, -32(s0)
	j	.LBB131_1
.LBB131_1:                              # =>This Inner Loop Header: Depth=1
	lhu	a0, -22(s0)
	lhu	a1, -20(s0)
	li	a2, 0
	sd	a2, -40(s0)                     # 8-byte Folded Spill
	bge	a0, a1, .LBB131_6
	j	.LBB131_2
.LBB131_2:                              #   in Loop: Header=BB131_1 Depth=1
.Lpcrel_hi863:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.131)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi863)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi864:
	auipc	a0, %pcrel_hi(.L__profc___udivmodhi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi864)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	lhu	a0, -30(s0)
	li	a1, 0
	sd	a1, -40(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB131_6
	j	.LBB131_3
.LBB131_3:                              #   in Loop: Header=BB131_1 Depth=1
.Lpcrel_hi865:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.131)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi865)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi866:
	auipc	a0, %pcrel_hi(.L__profc___udivmodhi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi866)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	j	.LBB131_4
.LBB131_4:                              #   in Loop: Header=BB131_1 Depth=1
.Lpcrel_hi867:
	auipc	a0, %pcrel_hi(.L__profc___udivmodhi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi867)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lhu	a0, -22(s0)
	lui	a1, 8
	and	a0, a0, a1
	seqz	a1, a0
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	sd	a1, -40(s0)                     # 8-byte Folded Spill
	bnez	a0, .LBB131_6
	j	.LBB131_5
.LBB131_5:                              #   in Loop: Header=BB131_1 Depth=1
	ld	a0, -48(s0)                     # 8-byte Folded Reload
.Lpcrel_hi868:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.131)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi868)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
.Lpcrel_hi869:
	auipc	a1, %pcrel_hi(.L__profc___udivmodhi4)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi869)
	ld	a1, 24(a2)
	addi	a1, a1, 1
	sd	a1, 24(a2)
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB131_6
.LBB131_6:                              #   in Loop: Header=BB131_1 Depth=1
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB131_8
	j	.LBB131_7
.LBB131_7:                              #   in Loop: Header=BB131_1 Depth=1
.Lpcrel_hi870:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.131)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi870)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi871:
	auipc	a0, %pcrel_hi(.L__profc___udivmodhi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi871)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lh	a0, -22(s0)
	slliw	a0, a0, 1
	sh	a0, -22(s0)
	lh	a0, -30(s0)
	slliw	a0, a0, 1
	sh	a0, -30(s0)
	j	.LBB131_1
.LBB131_8:
	j	.LBB131_9
.LBB131_9:                              # =>This Inner Loop Header: Depth=1
	lhu	a0, -30(s0)
	beqz	a0, .LBB131_13
	j	.LBB131_10
.LBB131_10:                             #   in Loop: Header=BB131_9 Depth=1
.Lpcrel_hi872:
	auipc	a0, %pcrel_hi(.L__profc___udivmodhi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi872)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	lhu	a0, -20(s0)
	lhu	a1, -22(s0)
	blt	a0, a1, .LBB131_12
	j	.LBB131_11
.LBB131_11:                             #   in Loop: Header=BB131_9 Depth=1
.Lpcrel_hi873:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.131)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi873)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi874:
	auipc	a0, %pcrel_hi(.L__profc___udivmodhi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi874)
	ld	a0, 56(a1)
	addi	a0, a0, 1
	sd	a0, 56(a1)
	lh	a1, -22(s0)
	lh	a0, -20(s0)
	subw	a0, a0, a1
	sh	a0, -20(s0)
	lh	a1, -30(s0)
	lh	a0, -32(s0)
	or	a0, a0, a1
	sh	a0, -32(s0)
	j	.LBB131_12
.LBB131_12:                             #   in Loop: Header=BB131_9 Depth=1
.Lpcrel_hi875:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.131)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi875)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	lhu	a0, -30(s0)
	srli	a0, a0, 1
	sh	a0, -30(s0)
	lhu	a0, -22(s0)
	srli	a0, a0, 1
	sh	a0, -22(s0)
	j	.LBB131_9
.LBB131_13:
	lw	a0, -28(s0)
	beqz	a0, .LBB131_15
	j	.LBB131_14
.LBB131_14:
.Lpcrel_hi876:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.131)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi876)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
.Lpcrel_hi877:
	auipc	a0, %pcrel_hi(.L__profc___udivmodhi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi877)
	ld	a0, 64(a1)
	addi	a0, a0, 1
	sd	a0, 64(a1)
	lh	a0, -20(s0)
	sh	a0, -18(s0)
	j	.LBB131_16
.LBB131_15:
.Lpcrel_hi878:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.131)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi878)
	ld	a0, 56(a1)
	addi	a0, a0, 1
	sd	a0, 56(a1)
	lh	a0, -32(s0)
	sh	a0, -18(s0)
	j	.LBB131_16
.LBB131_16:
	lhu	a0, -18(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end131:
	.size	__udivmodhi4, .Lfunc_end131-__udivmodhi4
                                        # -- End function
	.globl	__udivmodsi4_libgcc             # -- Begin function __udivmodsi4_libgcc
	.p2align	1
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    # @__udivmodsi4_libgcc
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
                                        # kill: def $x13 killed $x12
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sw	a2, -44(s0)
.Lpcrel_hi879:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4_libgcc)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi879)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 1
	sd	a0, -56(s0)
	li	a0, 0
	sd	a0, -64(s0)
	j	.LBB132_1
.LBB132_1:                              # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	ld	a1, -32(s0)
	li	a2, 0
	sd	a2, -72(s0)                     # 8-byte Folded Spill
	bgeu	a0, a1, .LBB132_6
	j	.LBB132_2
.LBB132_2:                              #   in Loop: Header=BB132_1 Depth=1
.Lpcrel_hi880:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.132)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi880)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi881:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4_libgcc)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi881)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a0, -56(s0)
	li	a1, 0
	sd	a1, -72(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB132_6
	j	.LBB132_3
.LBB132_3:                              #   in Loop: Header=BB132_1 Depth=1
.Lpcrel_hi882:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.132)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi882)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi883:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4_libgcc)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi883)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	j	.LBB132_4
.LBB132_4:                              #   in Loop: Header=BB132_1 Depth=1
.Lpcrel_hi884:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4_libgcc)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi884)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -40(s0)
	srliw	a0, a0, 31
	slli	a0, a0, 31
	seqz	a1, a0
	sd	a1, -80(s0)                     # 8-byte Folded Spill
	sd	a1, -72(s0)                     # 8-byte Folded Spill
	bnez	a0, .LBB132_6
	j	.LBB132_5
.LBB132_5:                              #   in Loop: Header=BB132_1 Depth=1
	ld	a0, -80(s0)                     # 8-byte Folded Reload
.Lpcrel_hi885:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.132)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi885)
	ld	a1, 16(a2)
	addi	a1, a1, 1
	sd	a1, 16(a2)
.Lpcrel_hi886:
	auipc	a1, %pcrel_hi(.L__profc___udivmodsi4_libgcc)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi886)
	ld	a1, 24(a2)
	addi	a1, a1, 1
	sd	a1, 24(a2)
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	j	.LBB132_6
.LBB132_6:                              #   in Loop: Header=BB132_1 Depth=1
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB132_8
	j	.LBB132_7
.LBB132_7:                              #   in Loop: Header=BB132_1 Depth=1
.Lpcrel_hi887:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.132)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi887)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi888:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4_libgcc)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi888)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -40(s0)
	slli	a0, a0, 1
	sd	a0, -40(s0)
	ld	a0, -56(s0)
	slli	a0, a0, 1
	sd	a0, -56(s0)
	j	.LBB132_1
.LBB132_8:
	j	.LBB132_9
.LBB132_9:                              # =>This Inner Loop Header: Depth=1
	ld	a0, -56(s0)
	beqz	a0, .LBB132_13
	j	.LBB132_10
.LBB132_10:                             #   in Loop: Header=BB132_9 Depth=1
.Lpcrel_hi889:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4_libgcc)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi889)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	bltu	a0, a1, .LBB132_12
	j	.LBB132_11
.LBB132_11:                             #   in Loop: Header=BB132_9 Depth=1
.Lpcrel_hi890:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.132)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi890)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
.Lpcrel_hi891:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4_libgcc)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi891)
	ld	a0, 56(a1)
	addi	a0, a0, 1
	sd	a0, 56(a1)
	ld	a1, -40(s0)
	ld	a0, -32(s0)
	sub	a0, a0, a1
	sd	a0, -32(s0)
	ld	a1, -56(s0)
	ld	a0, -64(s0)
	or	a0, a0, a1
	sd	a0, -64(s0)
	j	.LBB132_12
.LBB132_12:                             #   in Loop: Header=BB132_9 Depth=1
.Lpcrel_hi892:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.132)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi892)
	ld	a0, 40(a1)
	addi	a0, a0, 1
	sd	a0, 40(a1)
	ld	a0, -56(s0)
	srli	a0, a0, 1
	sd	a0, -56(s0)
	ld	a0, -40(s0)
	srli	a0, a0, 1
	sd	a0, -40(s0)
	j	.LBB132_9
.LBB132_13:
	lw	a0, -44(s0)
	beqz	a0, .LBB132_15
	j	.LBB132_14
.LBB132_14:
.Lpcrel_hi893:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.132)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi893)
	ld	a0, 48(a1)
	addi	a0, a0, 1
	sd	a0, 48(a1)
.Lpcrel_hi894:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4_libgcc)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi894)
	ld	a0, 64(a1)
	addi	a0, a0, 1
	sd	a0, 64(a1)
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB132_16
.LBB132_15:
.Lpcrel_hi895:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.132)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi895)
	ld	a0, 56(a1)
	addi	a0, a0, 1
	sd	a0, 56(a1)
	ld	a0, -64(s0)
	sd	a0, -24(s0)
	j	.LBB132_16
.LBB132_16:
	ld	a0, -24(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end132:
	.size	__udivmodsi4_libgcc, .Lfunc_end132-__udivmodsi4_libgcc
                                        # -- End function
	.globl	__ashldi3                       # -- Begin function __ashldi3
	.p2align	1
	.type	__ashldi3,@function
__ashldi3:                              # @__ashldi3
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
	sd	a0, -32(s0)
	sw	a1, -36(s0)
.Lpcrel_hi896:
	auipc	a0, %pcrel_hi(.L__profc___ashldi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi896)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 32
	sw	a0, -40(s0)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	lbu	a0, -36(s0)
	andi	a0, a0, 32
	beqz	a0, .LBB133_2
	j	.LBB133_1
.LBB133_1:
.Lpcrel_hi897:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.133)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi897)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi898:
	auipc	a0, %pcrel_hi(.L__profc___ashldi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi898)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	li	a0, 0
	sw	a0, -56(s0)
	lw	a0, -48(s0)
	lw	a1, -36(s0)
	sllw	a0, a0, a1
	sw	a0, -52(s0)
	j	.LBB133_5
.LBB133_2:
	lw	a0, -36(s0)
	bnez	a0, .LBB133_4
	j	.LBB133_3
.LBB133_3:
.Lpcrel_hi899:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.133)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi899)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi900:
	auipc	a0, %pcrel_hi(.L__profc___ashldi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi900)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB133_6
.LBB133_4:
.Lpcrel_hi901:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.133)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi901)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a0, -48(s0)
	lwu	a1, -36(s0)
	sllw	a0, a0, a1
	sw	a0, -56(s0)
	lw	a0, -44(s0)
	lwu	a2, -36(s0)
	sllw	a0, a0, a2
	lw	a1, -48(s0)
	negw	a2, a2
	srlw	a1, a1, a2
	or	a0, a0, a1
	sw	a0, -52(s0)
	j	.LBB133_5
.LBB133_5:
	ld	a0, -56(s0)
	sd	a0, -24(s0)
	j	.LBB133_6
.LBB133_6:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end133:
	.size	__ashldi3, .Lfunc_end133-__ashldi3
                                        # -- End function
	.globl	__ashlti3                       # -- Begin function __ashlti3
	.p2align	1
	.type	__ashlti3,@function
__ashlti3:                              # @__ashlti3
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 96
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
                                        # kill: def $x13 killed $x12
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	sw	a2, -52(s0)
.Lpcrel_hi902:
	auipc	a0, %pcrel_hi(.L__profc___ashlti3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi902)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 64
	sw	a0, -56(s0)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -72(s0)
	sd	a0, -80(s0)
	lbu	a0, -52(s0)
	andi	a0, a0, 64
	beqz	a0, .LBB134_2
	j	.LBB134_1
.LBB134_1:
.Lpcrel_hi903:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.134)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi903)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi904:
	auipc	a0, %pcrel_hi(.L__profc___ashlti3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi904)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	li	a0, 0
	sd	a0, -96(s0)
	ld	a0, -80(s0)
	lw	a1, -52(s0)
	sll	a0, a0, a1
	sd	a0, -88(s0)
	j	.LBB134_5
.LBB134_2:
	lw	a0, -52(s0)
	bnez	a0, .LBB134_4
	j	.LBB134_3
.LBB134_3:
.Lpcrel_hi905:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.134)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi905)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi906:
	auipc	a0, %pcrel_hi(.L__profc___ashlti3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi906)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB134_6
.LBB134_4:
.Lpcrel_hi907:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.134)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi907)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -80(s0)
	lwu	a1, -52(s0)
	sll	a0, a0, a1
	sd	a0, -96(s0)
	ld	a0, -72(s0)
	lwu	a2, -52(s0)
	sll	a0, a0, a2
	ld	a1, -80(s0)
	negw	a2, a2
	srl	a1, a1, a2
	or	a0, a0, a1
	sd	a0, -88(s0)
	j	.LBB134_5
.LBB134_5:
	ld	a0, -96(s0)
	ld	a1, -88(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB134_6
.LBB134_6:
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end134:
	.size	__ashlti3, .Lfunc_end134-__ashlti3
                                        # -- End function
	.globl	__ashrdi3                       # -- Begin function __ashrdi3
	.p2align	1
	.type	__ashrdi3,@function
__ashrdi3:                              # @__ashrdi3
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
	sd	a0, -32(s0)
	sw	a1, -36(s0)
.Lpcrel_hi908:
	auipc	a0, %pcrel_hi(.L__profc___ashrdi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi908)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 32
	sw	a0, -40(s0)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	lbu	a0, -36(s0)
	andi	a0, a0, 32
	beqz	a0, .LBB135_2
	j	.LBB135_1
.LBB135_1:
.Lpcrel_hi909:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.135)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi909)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi910:
	auipc	a0, %pcrel_hi(.L__profc___ashrdi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi910)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a0, -44(s0)
	srli	a0, a0, 31
	sw	a0, -52(s0)
	lw	a0, -44(s0)
	lw	a1, -36(s0)
	sraw	a0, a0, a1
	sw	a0, -56(s0)
	j	.LBB135_5
.LBB135_2:
	lw	a0, -36(s0)
	bnez	a0, .LBB135_4
	j	.LBB135_3
.LBB135_3:
.Lpcrel_hi911:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.135)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi911)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi912:
	auipc	a0, %pcrel_hi(.L__profc___ashrdi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi912)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB135_6
.LBB135_4:
.Lpcrel_hi913:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.135)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi913)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a0, -44(s0)
	lwu	a1, -36(s0)
	sraw	a0, a0, a1
	sw	a0, -52(s0)
	lw	a0, -44(s0)
	lwu	a2, -36(s0)
	negw	a1, a2
	sllw	a0, a0, a1
	lw	a1, -48(s0)
	srlw	a1, a1, a2
	or	a0, a0, a1
	sw	a0, -56(s0)
	j	.LBB135_5
.LBB135_5:
	ld	a0, -56(s0)
	sd	a0, -24(s0)
	j	.LBB135_6
.LBB135_6:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end135:
	.size	__ashrdi3, .Lfunc_end135-__ashrdi3
                                        # -- End function
	.globl	__ashrti3                       # -- Begin function __ashrti3
	.p2align	1
	.type	__ashrti3,@function
__ashrti3:                              # @__ashrti3
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 96
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
                                        # kill: def $x13 killed $x12
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	sw	a2, -52(s0)
.Lpcrel_hi914:
	auipc	a0, %pcrel_hi(.L__profc___ashrti3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi914)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 64
	sw	a0, -56(s0)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -72(s0)
	sd	a0, -80(s0)
	lbu	a0, -52(s0)
	andi	a0, a0, 64
	beqz	a0, .LBB136_2
	j	.LBB136_1
.LBB136_1:
.Lpcrel_hi915:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.136)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi915)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi916:
	auipc	a0, %pcrel_hi(.L__profc___ashrti3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi916)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -72(s0)
	srai	a0, a0, 63
	sd	a0, -88(s0)
	ld	a0, -72(s0)
	lw	a1, -52(s0)
	sra	a0, a0, a1
	sd	a0, -96(s0)
	j	.LBB136_5
.LBB136_2:
	lw	a0, -52(s0)
	bnez	a0, .LBB136_4
	j	.LBB136_3
.LBB136_3:
.Lpcrel_hi917:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.136)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi917)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi918:
	auipc	a0, %pcrel_hi(.L__profc___ashrti3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi918)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB136_6
.LBB136_4:
.Lpcrel_hi919:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.136)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi919)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -72(s0)
	lwu	a1, -52(s0)
	sra	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -72(s0)
	lwu	a2, -52(s0)
	negw	a1, a2
	sll	a0, a0, a1
	ld	a1, -80(s0)
	srl	a1, a1, a2
	or	a0, a0, a1
	sd	a0, -96(s0)
	j	.LBB136_5
.LBB136_5:
	ld	a0, -96(s0)
	ld	a1, -88(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB136_6
.LBB136_6:
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end136:
	.size	__ashrti3, .Lfunc_end136-__ashrti3
                                        # -- End function
	.globl	__bswapdi2                      # -- Begin function __bswapdi2
	.p2align	1
	.type	__bswapdi2,@function
__bswapdi2:                             # @__bswapdi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
.Lpcrel_hi920:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.137)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi920)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sd	a0, -24(s0)
.Lpcrel_hi921:
	auipc	a0, %pcrel_hi(.L__profc___bswapdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi921)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a1, -24(s0)
	srli	a0, a1, 56
	li	a2, 255
	slli	a3, a2, 48
	and	a3, a3, a1
	srli	a3, a3, 40
	or	a0, a0, a3
	slli	a3, a2, 40
	and	a3, a3, a1
	srli	a3, a3, 24
	or	a0, a0, a3
	slli	a2, a2, 32
	and	a2, a2, a1
	srli	a2, a2, 8
	or	a0, a0, a2
	srliw	a2, a1, 24
	slli	a2, a2, 32
	or	a0, a0, a2
	lui	a2, 4080
	and	a2, a2, a1
	slli	a2, a2, 24
	or	a0, a0, a2
	lui	a2, 16
	addiw	a2, a2, -256
	and	a2, a2, a1
	slli	a2, a2, 40
	or	a0, a0, a2
	slli	a1, a1, 56
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end137:
	.size	__bswapdi2, .Lfunc_end137-__bswapdi2
                                        # -- End function
	.globl	__bswapsi2                      # -- Begin function __bswapsi2
	.p2align	1
	.type	__bswapsi2,@function
__bswapsi2:                             # @__bswapsi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi922:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.138)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi922)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi923:
	auipc	a0, %pcrel_hi(.L__profc___bswapsi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi923)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a1, -20(s0)
	srliw	a0, a1, 24
	lui	a2, 4080
	and	a2, a2, a1
	srli	a2, a2, 8
	or	a0, a0, a2
	lui	a2, 16
	addiw	a2, a2, -256
	and	a2, a2, a1
	slli	a2, a2, 8
	or	a0, a0, a2
	slliw	a1, a1, 24
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end138:
	.size	__bswapsi2, .Lfunc_end138-__bswapsi2
                                        # -- End function
	.globl	__clzsi2                        # -- Begin function __clzsi2
	.p2align	1
	.type	__clzsi2,@function
__clzsi2:                               # @__clzsi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi924:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.139)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi924)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi925:
	auipc	a0, %pcrel_hi(.L__profc___clzsi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi925)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	sw	a0, -24(s0)
	lhu	a0, -22(s0)
	slliw	a0, a0, 16
	seqz	a0, a0
	slliw	a0, a0, 4
	sw	a0, -28(s0)
	lw	a1, -28(s0)
	li	a0, 16
	subw	a1, a0, a1
	lw	a0, -24(s0)
	srlw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -28(s0)
	sw	a0, -32(s0)
	lbu	a0, -23(s0)
	slli	a0, a0, 8
	seqz	a0, a0
	slliw	a0, a0, 3
	sw	a0, -28(s0)
	lw	a1, -28(s0)
	li	a0, 8
	subw	a1, a0, a1
	lw	a0, -24(s0)
	srlw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a1, -28(s0)
	lw	a0, -32(s0)
	addw	a0, a0, a1
	sw	a0, -32(s0)
	lwu	a0, -24(s0)
	andi	a0, a0, 240
	seqz	a0, a0
	slliw	a0, a0, 2
	sw	a0, -28(s0)
	lw	a1, -28(s0)
	li	a0, 4
	subw	a1, a0, a1
	lw	a0, -24(s0)
	srlw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a1, -28(s0)
	lw	a0, -32(s0)
	addw	a0, a0, a1
	sw	a0, -32(s0)
	lwu	a0, -24(s0)
	andi	a0, a0, 12
	seqz	a0, a0
	slliw	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	li	a1, 2
	subw	a2, a1, a0
	lw	a0, -24(s0)
	srlw	a0, a0, a2
	sw	a0, -24(s0)
	lw	a2, -28(s0)
	lw	a0, -32(s0)
	addw	a0, a0, a2
	sw	a0, -32(s0)
	lw	a0, -32(s0)
	lw	a2, -24(s0)
	subw	a1, a1, a2
	slli	a2, a2, 62
	srli	a2, a2, 63
	addiw	a2, a2, -1
	and	a1, a1, a2
	addw	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end139:
	.size	__clzsi2, .Lfunc_end139-__clzsi2
                                        # -- End function
	.globl	__clzti2                        # -- Begin function __clzti2
	.p2align	1
	.type	__clzti2,@function
__clzti2:                               # @__clzti2
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi926:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.140)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi926)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
.Lpcrel_hi927:
	auipc	a0, %pcrel_hi(.L__profc___clzti2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi927)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	ld	a0, -40(s0)
	snez	a0, a0
	addi	a0, a0, -1
	sd	a0, -56(s0)
	ld	a0, -40(s0)
	ld	a1, -56(s0)
	not	a2, a1
	and	a0, a0, a2
	ld	a2, -48(s0)
	and	a2, a2, a1
	or	a0, a0, a2
	srli	a2, a0, 1
	or	a0, a0, a2
	srli	a2, a0, 2
	or	a0, a0, a2
	srli	a2, a0, 4
	or	a0, a0, a2
	srli	a2, a0, 8
	or	a0, a0, a2
	srli	a2, a0, 16
	or	a0, a0, a2
	srli	a2, a0, 32
	or	a0, a0, a2
	not	a0, a0
	srli	a2, a0, 1
	lui	a3, 349525
	addiw	a3, a3, 1365
	slli	ra, a3, 32
	add	a3, a3, ra
	and	a2, a2, a3
	sub	a2, a0, a2
	lui	a0, 209715
	addiw	a0, a0, 819
	slli	a3, a0, 32
	add	a3, a3, a0
	and	a0, a2, a3
	srli	a2, a2, 2
	and	a2, a2, a3
	add	a0, a0, a2
	srli	a2, a0, 4
	add	a0, a0, a2
	lui	a2, 61681
	addiw	a2, a2, -241
	slli	a3, a2, 32
	add	a2, a2, a3
	and	a0, a0, a2
	lui	a2, 4112
	addiw	a2, a2, 257
	slli	a3, a2, 32
	add	a2, a2, a3
	mul	a0, a0, a2
	srli	a0, a0, 56
	andi	a1, a1, 64
	add	a0, a0, a1
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end140:
	.size	__clzti2, .Lfunc_end140-__clzti2
                                        # -- End function
	.globl	__cmpdi2                        # -- Begin function __cmpdi2
	.p2align	1
	.type	__cmpdi2,@function
__cmpdi2:                               # @__cmpdi2
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -32(s0)
	sd	a1, -40(s0)
.Lpcrel_hi928:
	auipc	a0, %pcrel_hi(.L__profc___cmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi928)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	ld	a0, -40(s0)
	sd	a0, -56(s0)
	lw	a0, -44(s0)
	lw	a1, -52(s0)
	bge	a0, a1, .LBB141_2
	j	.LBB141_1
.LBB141_1:
.Lpcrel_hi929:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.141)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi929)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi930:
	auipc	a0, %pcrel_hi(.L__profc___cmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi930)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB141_9
.LBB141_2:
	lw	a1, -44(s0)
	lw	a0, -52(s0)
	bge	a0, a1, .LBB141_4
	j	.LBB141_3
.LBB141_3:
.Lpcrel_hi931:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.141)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi931)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi932:
	auipc	a0, %pcrel_hi(.L__profc___cmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi932)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	li	a0, 2
	sw	a0, -20(s0)
	j	.LBB141_9
.LBB141_4:
	lw	a0, -48(s0)
	lw	a1, -56(s0)
	bgeu	a0, a1, .LBB141_6
	j	.LBB141_5
.LBB141_5:
.Lpcrel_hi933:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.141)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi933)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi934:
	auipc	a0, %pcrel_hi(.L__profc___cmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi934)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB141_9
.LBB141_6:
	lw	a1, -48(s0)
	lw	a0, -56(s0)
	bgeu	a0, a1, .LBB141_8
	j	.LBB141_7
.LBB141_7:
.Lpcrel_hi935:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.141)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi935)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi936:
	auipc	a0, %pcrel_hi(.L__profc___cmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi936)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	li	a0, 2
	sw	a0, -20(s0)
	j	.LBB141_9
.LBB141_8:
.Lpcrel_hi937:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.141)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi937)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB141_9
.LBB141_9:
	lw	a0, -20(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end141:
	.size	__cmpdi2, .Lfunc_end141-__cmpdi2
                                        # -- End function
	.globl	__aeabi_lcmp                    # -- Begin function __aeabi_lcmp
	.p2align	1
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           # @__aeabi_lcmp
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
.Lpcrel_hi938:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.142)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi938)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
.Lpcrel_hi939:
	auipc	a0, %pcrel_hi(.L__profc___aeabi_lcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi939)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	call	__cmpdi2
	addiw	a0, a0, -1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end142:
	.size	__aeabi_lcmp, .Lfunc_end142-__aeabi_lcmp
                                        # -- End function
	.globl	__cmpti2                        # -- Begin function __cmpti2
	.p2align	1
	.type	__cmpti2,@function
__cmpti2:                               # @__cmpti2
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 96
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	sd	a3, -56(s0)
	sd	a2, -64(s0)
.Lpcrel_hi940:
	auipc	a0, %pcrel_hi(.L__profc___cmpti2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi940)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -72(s0)
	sd	a0, -80(s0)
	ld	a0, -64(s0)
	ld	a1, -56(s0)
	sd	a1, -88(s0)
	sd	a0, -96(s0)
	ld	a0, -72(s0)
	ld	a1, -88(s0)
	bge	a0, a1, .LBB143_2
	j	.LBB143_1
.LBB143_1:
.Lpcrel_hi941:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.143)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi941)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi942:
	auipc	a0, %pcrel_hi(.L__profc___cmpti2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi942)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB143_9
.LBB143_2:
	ld	a1, -72(s0)
	ld	a0, -88(s0)
	bge	a0, a1, .LBB143_4
	j	.LBB143_3
.LBB143_3:
.Lpcrel_hi943:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.143)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi943)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi944:
	auipc	a0, %pcrel_hi(.L__profc___cmpti2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi944)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	li	a0, 2
	sw	a0, -20(s0)
	j	.LBB143_9
.LBB143_4:
	ld	a0, -80(s0)
	ld	a1, -96(s0)
	bgeu	a0, a1, .LBB143_6
	j	.LBB143_5
.LBB143_5:
.Lpcrel_hi945:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.143)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi945)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi946:
	auipc	a0, %pcrel_hi(.L__profc___cmpti2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi946)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB143_9
.LBB143_6:
	ld	a1, -80(s0)
	ld	a0, -96(s0)
	bgeu	a0, a1, .LBB143_8
	j	.LBB143_7
.LBB143_7:
.Lpcrel_hi947:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.143)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi947)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi948:
	auipc	a0, %pcrel_hi(.L__profc___cmpti2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi948)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	li	a0, 2
	sw	a0, -20(s0)
	j	.LBB143_9
.LBB143_8:
.Lpcrel_hi949:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.143)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi949)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB143_9
.LBB143_9:
	lw	a0, -20(s0)
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end143:
	.size	__cmpti2, .Lfunc_end143-__cmpti2
                                        # -- End function
	.globl	__ctzsi2                        # -- Begin function __ctzsi2
	.p2align	1
	.type	__ctzsi2,@function
__ctzsi2:                               # @__ctzsi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi950:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.144)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi950)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi951:
	auipc	a0, %pcrel_hi(.L__profc___ctzsi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi951)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	sw	a0, -24(s0)
	lhu	a0, -24(s0)
	seqz	a0, a0
	slliw	a0, a0, 4
	sw	a0, -28(s0)
	lwu	a1, -28(s0)
	lw	a0, -24(s0)
	srlw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -28(s0)
	sw	a0, -32(s0)
	lbu	a0, -24(s0)
	seqz	a0, a0
	slliw	a0, a0, 3
	sw	a0, -28(s0)
	lwu	a1, -28(s0)
	lw	a0, -24(s0)
	srlw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a1, -28(s0)
	lw	a0, -32(s0)
	addw	a0, a0, a1
	sw	a0, -32(s0)
	lwu	a0, -24(s0)
	andi	a0, a0, 15
	seqz	a0, a0
	slliw	a0, a0, 2
	sw	a0, -28(s0)
	lwu	a1, -28(s0)
	lw	a0, -24(s0)
	srlw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a1, -28(s0)
	lw	a0, -32(s0)
	addw	a0, a0, a1
	sw	a0, -32(s0)
	lwu	a0, -24(s0)
	andi	a0, a0, 3
	seqz	a0, a0
	slliw	a0, a0, 1
	sw	a0, -28(s0)
	lwu	a1, -28(s0)
	lw	a0, -24(s0)
	srlw	a0, a0, a1
	sw	a0, -24(s0)
	lwu	a0, -24(s0)
	andi	a0, a0, 3
	sw	a0, -24(s0)
	lw	a1, -28(s0)
	lw	a0, -32(s0)
	addw	a0, a0, a1
	sw	a0, -32(s0)
	lw	a0, -32(s0)
	lw	a2, -24(s0)
	srliw	a3, a2, 1
	li	a1, 2
	subw	a1, a1, a3
	andi	a2, a2, 1
	addiw	a2, a2, -1
	and	a1, a1, a2
	addw	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end144:
	.size	__ctzsi2, .Lfunc_end144-__ctzsi2
                                        # -- End function
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function __ctzti2
.LCPI145_0:
	.quad	151050438420815295              # 0x218a392cd3d5dbf
	.section	.rodata,"a",@progbits
.LCPI145_1:
	.ascii	"\000\001\002\007\003\r\b\023\004\031\016\034\t\"\024(\005\021\032&\017.\0350\n\037#6\0252)9?\006\f\022\030\033!'\020%-/\036518>\013\027 $,47=\026+3<*;:"
	.text
	.globl	__ctzti2
	.p2align	1
	.type	__ctzti2,@function
__ctzti2:                               # @__ctzti2
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi952:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.145)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi952)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
.Lpcrel_hi953:
	auipc	a0, %pcrel_hi(.L__profc___ctzti2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi953)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	ld	a0, -48(s0)
	snez	a0, a0
	addi	a0, a0, -1
	sd	a0, -56(s0)
	ld	a0, -40(s0)
	ld	a1, -56(s0)
	and	a0, a0, a1
	ld	a2, -48(s0)
	not	a3, a1
	and	a2, a2, a3
	or	a0, a0, a2
	li	a2, 0
	sub	a2, a2, a0
	and	a0, a0, a2
.Lpcrel_hi954:
	auipc	a2, %pcrel_hi(.LCPI145_0)
	addi	a2, a2, %pcrel_lo(.Lpcrel_hi954)
	ld	a2, 0(a2)
	mul	a0, a0, a2
	srli	a2, a0, 58
.Lpcrel_hi955:
	auipc	a0, %pcrel_hi(.LCPI145_1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi955)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	andi	a1, a1, 64
	add	a0, a0, a1
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end145:
	.size	__ctzti2, .Lfunc_end145-__ctzti2
                                        # -- End function
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function __ffsti2
.LCPI146_0:
	.quad	151050438420815295              # 0x218a392cd3d5dbf
	.section	.rodata,"a",@progbits
.LCPI146_1:
	.ascii	"\000\001\002\007\003\r\b\023\004\031\016\034\t\"\024(\005\021\032&\017.\0350\n\037#6\0252)9?\006\f\022\030\033!'\020%-/\036518>\013\027 $,47=\026+3<*;:"
	.text
	.globl	__ffsti2
	.p2align	1
	.type	__ffsti2,@function
__ffsti2:                               # @__ffsti2
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a1, -40(s0)
	sd	a0, -48(s0)
.Lpcrel_hi956:
	auipc	a0, %pcrel_hi(.L__profc___ffsti2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi956)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -56(s0)
	sd	a0, -64(s0)
	ld	a0, -64(s0)
	bnez	a0, .LBB146_4
	j	.LBB146_1
.LBB146_1:
.Lpcrel_hi957:
	auipc	a0, %pcrel_hi(.L__profc___ffsti2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi957)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a0, -56(s0)
	bnez	a0, .LBB146_3
	j	.LBB146_2
.LBB146_2:
.Lpcrel_hi958:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.146)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi958)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi959:
	auipc	a0, %pcrel_hi(.L__profc___ffsti2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi959)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB146_5
.LBB146_3:
.Lpcrel_hi960:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.146)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi960)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -56(s0)
	li	a1, 0
	sub	a1, a1, a0
	and	a0, a0, a1
.Lpcrel_hi961:
	auipc	a1, %pcrel_hi(.LCPI146_0)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi961)
	ld	a1, 0(a1)
	mul	a0, a0, a1
	srli	a1, a0, 58
.Lpcrel_hi962:
	auipc	a0, %pcrel_hi(.LCPI146_1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi962)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	addiw	a0, a0, 65
	sw	a0, -20(s0)
	j	.LBB146_5
.LBB146_4:
.Lpcrel_hi963:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.146)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi963)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -64(s0)
	li	a1, 0
	sub	a1, a1, a0
	and	a0, a0, a1
.Lpcrel_hi964:
	auipc	a1, %pcrel_hi(.LCPI146_0)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi964)
	ld	a1, 0(a1)
	mul	a0, a0, a1
	srli	a1, a0, 58
.Lpcrel_hi965:
	auipc	a0, %pcrel_hi(.LCPI146_1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi965)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	addiw	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB146_5
.LBB146_5:
	lw	a0, -20(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end146:
	.size	__ffsti2, .Lfunc_end146-__ffsti2
                                        # -- End function
	.globl	__lshrdi3                       # -- Begin function __lshrdi3
	.p2align	1
	.type	__lshrdi3,@function
__lshrdi3:                              # @__lshrdi3
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
	sd	a0, -32(s0)
	sw	a1, -36(s0)
.Lpcrel_hi966:
	auipc	a0, %pcrel_hi(.L__profc___lshrdi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi966)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 32
	sw	a0, -40(s0)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	lbu	a0, -36(s0)
	andi	a0, a0, 32
	beqz	a0, .LBB147_2
	j	.LBB147_1
.LBB147_1:
.Lpcrel_hi967:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.147)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi967)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi968:
	auipc	a0, %pcrel_hi(.L__profc___lshrdi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi968)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	li	a0, 0
	sw	a0, -52(s0)
	lw	a0, -44(s0)
	lw	a1, -36(s0)
	srlw	a0, a0, a1
	sw	a0, -56(s0)
	j	.LBB147_5
.LBB147_2:
	lw	a0, -36(s0)
	bnez	a0, .LBB147_4
	j	.LBB147_3
.LBB147_3:
.Lpcrel_hi969:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.147)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi969)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi970:
	auipc	a0, %pcrel_hi(.L__profc___lshrdi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi970)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB147_6
.LBB147_4:
.Lpcrel_hi971:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.147)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi971)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a0, -44(s0)
	lwu	a1, -36(s0)
	srlw	a0, a0, a1
	sw	a0, -52(s0)
	lw	a0, -44(s0)
	lwu	a2, -36(s0)
	negw	a1, a2
	sllw	a0, a0, a1
	lw	a1, -48(s0)
	srlw	a1, a1, a2
	or	a0, a0, a1
	sw	a0, -56(s0)
	j	.LBB147_5
.LBB147_5:
	ld	a0, -56(s0)
	sd	a0, -24(s0)
	j	.LBB147_6
.LBB147_6:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end147:
	.size	__lshrdi3, .Lfunc_end147-__lshrdi3
                                        # -- End function
	.globl	__lshrti3                       # -- Begin function __lshrti3
	.p2align	1
	.type	__lshrti3,@function
__lshrti3:                              # @__lshrti3
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 96
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
                                        # kill: def $x13 killed $x12
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	sw	a2, -52(s0)
.Lpcrel_hi972:
	auipc	a0, %pcrel_hi(.L__profc___lshrti3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi972)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 64
	sw	a0, -56(s0)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -72(s0)
	sd	a0, -80(s0)
	lbu	a0, -52(s0)
	andi	a0, a0, 64
	beqz	a0, .LBB148_2
	j	.LBB148_1
.LBB148_1:
.Lpcrel_hi973:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.148)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi973)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi974:
	auipc	a0, %pcrel_hi(.L__profc___lshrti3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi974)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	li	a0, 0
	sd	a0, -88(s0)
	ld	a0, -72(s0)
	lw	a1, -52(s0)
	srl	a0, a0, a1
	sd	a0, -96(s0)
	j	.LBB148_5
.LBB148_2:
	lw	a0, -52(s0)
	bnez	a0, .LBB148_4
	j	.LBB148_3
.LBB148_3:
.Lpcrel_hi975:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.148)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi975)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi976:
	auipc	a0, %pcrel_hi(.L__profc___lshrti3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi976)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB148_6
.LBB148_4:
.Lpcrel_hi977:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.148)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi977)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a0, -72(s0)
	lwu	a1, -52(s0)
	srl	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -72(s0)
	lwu	a2, -52(s0)
	negw	a1, a2
	sll	a0, a0, a1
	ld	a1, -80(s0)
	srl	a1, a1, a2
	or	a0, a0, a1
	sd	a0, -96(s0)
	j	.LBB148_5
.LBB148_5:
	ld	a0, -96(s0)
	ld	a1, -88(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB148_6
.LBB148_6:
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end148:
	.size	__lshrti3, .Lfunc_end148-__lshrti3
                                        # -- End function
	.globl	__muldsi3                       # -- Begin function __muldsi3
	.p2align	1
	.type	__muldsi3,@function
__muldsi3:                              # @__muldsi3
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi978:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.149)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi978)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sw	a0, -20(s0)
	sw	a1, -24(s0)
.Lpcrel_hi979:
	auipc	a0, %pcrel_hi(.L__profc___muldsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi979)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 16
	sw	a0, -36(s0)
	lui	a0, 16
	addiw	a0, a0, -1
	sw	a0, -40(s0)
	lhu	a0, -20(s0)
	lhu	a1, -24(s0)
	mulw	a0, a0, a1
	sw	a0, -32(s0)
	lhu	a0, -30(s0)
	sw	a0, -44(s0)
	lhu	a0, -32(s0)
	sw	a0, -32(s0)
	lhu	a0, -18(s0)
	lhu	a1, -24(s0)
	mulw	a1, a0, a1
	lw	a0, -44(s0)
	addw	a0, a0, a1
	sw	a0, -44(s0)
	lw	a0, -44(s0)
	slliw	a1, a0, 16
	lw	a0, -32(s0)
	addw	a0, a0, a1
	sw	a0, -32(s0)
	lhu	a0, -42(s0)
	sw	a0, -28(s0)
	lhu	a0, -30(s0)
	sw	a0, -44(s0)
	lhu	a0, -32(s0)
	sw	a0, -32(s0)
	lhu	a0, -22(s0)
	lhu	a1, -20(s0)
	mulw	a1, a0, a1
	lw	a0, -44(s0)
	addw	a0, a0, a1
	sw	a0, -44(s0)
	lw	a0, -44(s0)
	slliw	a1, a0, 16
	lw	a0, -32(s0)
	addw	a0, a0, a1
	sw	a0, -32(s0)
	lhu	a1, -42(s0)
	lw	a0, -28(s0)
	addw	a0, a0, a1
	sw	a0, -28(s0)
	lhu	a0, -18(s0)
	lhu	a1, -22(s0)
	mulw	a1, a0, a1
	lw	a0, -28(s0)
	addw	a0, a0, a1
	sw	a0, -28(s0)
	ld	a0, -32(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end149:
	.size	__muldsi3, .Lfunc_end149-__muldsi3
                                        # -- End function
	.globl	__muldi3_compiler_rt            # -- Begin function __muldi3_compiler_rt
	.p2align	1
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   # @__muldi3_compiler_rt
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
.Lpcrel_hi980:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.150)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi980)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
.Lpcrel_hi981:
	auipc	a0, %pcrel_hi(.L__profc___muldi3_compiler_rt)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi981)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -40(s0)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	lw	a0, -40(s0)
	lw	a1, -48(s0)
	call	__muldsi3
	sd	a0, -56(s0)
	lw	a0, -36(s0)
	lw	a1, -48(s0)
	mulw	a0, a0, a1
	lw	a1, -40(s0)
	lw	a2, -44(s0)
	mulw	a1, a1, a2
	addw	a1, a1, a0
	lw	a0, -52(s0)
	addw	a0, a0, a1
	sw	a0, -52(s0)
	ld	a0, -56(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end150:
	.size	__muldi3_compiler_rt, .Lfunc_end150-__muldi3_compiler_rt
                                        # -- End function
	.globl	__mulddi3                       # -- Begin function __mulddi3
	.p2align	1
	.type	__mulddi3,@function
__mulddi3:                              # @__mulddi3
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
.Lpcrel_hi982:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.151)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi982)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
.Lpcrel_hi983:
	auipc	a0, %pcrel_hi(.L__profc___mulddi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi983)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	li	a0, 32
	sw	a0, -52(s0)
	li	a0, -1
	srli	a0, a0, 32
	sd	a0, -64(s0)
	lwu	a0, -24(s0)
	lwu	a1, -32(s0)
	mul	a0, a0, a1
	sd	a0, -48(s0)
	lwu	a0, -44(s0)
	sd	a0, -72(s0)
	lwu	a0, -48(s0)
	sd	a0, -48(s0)
	lwu	a0, -20(s0)
	lwu	a1, -32(s0)
	mul	a1, a0, a1
	ld	a0, -72(s0)
	add	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -72(s0)
	slli	a1, a0, 32
	ld	a0, -48(s0)
	add	a0, a0, a1
	sd	a0, -48(s0)
	lwu	a0, -68(s0)
	sd	a0, -40(s0)
	lwu	a0, -44(s0)
	sd	a0, -72(s0)
	lwu	a0, -48(s0)
	sd	a0, -48(s0)
	lwu	a0, -28(s0)
	lwu	a1, -24(s0)
	mul	a1, a0, a1
	ld	a0, -72(s0)
	add	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -72(s0)
	slli	a1, a0, 32
	ld	a0, -48(s0)
	add	a0, a0, a1
	sd	a0, -48(s0)
	lwu	a1, -68(s0)
	ld	a0, -40(s0)
	add	a0, a0, a1
	sd	a0, -40(s0)
	lwu	a0, -20(s0)
	lwu	a1, -28(s0)
	mul	a1, a0, a1
	ld	a0, -40(s0)
	add	a0, a0, a1
	sd	a0, -40(s0)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end151:
	.size	__mulddi3, .Lfunc_end151-__mulddi3
                                        # -- End function
	.globl	__multi3                        # -- Begin function __multi3
	.p2align	1
	.type	__multi3,@function
__multi3:                               # @__multi3
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 112
	sd	a0, -104(s0)                    # 8-byte Folded Spill
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
.Lpcrel_hi984:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.152)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi984)
	ld	ra, 0(a0)
	addi	ra, ra, 1
	sd	ra, 0(a0)
	ld	a0, -104(s0)                    # 8-byte Folded Reload
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	sd	a3, -40(s0)
	sd	a2, -48(s0)
.Lpcrel_hi985:
	auipc	a0, %pcrel_hi(.L__profc___multi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi985)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	sd	a1, -56(s0)
	sd	a0, -64(s0)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -72(s0)
	sd	a0, -80(s0)
	ld	a0, -64(s0)
	ld	a1, -80(s0)
	call	__mulddi3
	sd	a1, -88(s0)
	sd	a0, -96(s0)
	ld	a0, -56(s0)
	ld	a1, -80(s0)
	mul	a0, a0, a1
	ld	a1, -64(s0)
	ld	a2, -72(s0)
	mul	a1, a1, a2
	add	a1, a1, a0
	ld	a0, -88(s0)
	add	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -96(s0)
	ld	a1, -88(s0)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end152:
	.size	__multi3, .Lfunc_end152-__multi3
                                        # -- End function
	.globl	__negdi2                        # -- Begin function __negdi2
	.p2align	1
	.type	__negdi2,@function
__negdi2:                               # @__negdi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
.Lpcrel_hi986:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.153)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi986)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sd	a0, -24(s0)
.Lpcrel_hi987:
	auipc	a0, %pcrel_hi(.L__profc___negdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi987)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a1, -24(s0)
	li	a0, 0
	sub	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end153:
	.size	__negdi2, .Lfunc_end153-__negdi2
                                        # -- End function
	.globl	__negti2                        # -- Begin function __negti2
	.p2align	1
	.type	__negti2,@function
__negti2:                               # @__negti2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi988:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.154)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi988)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
.Lpcrel_hi989:
	auipc	a0, %pcrel_hi(.L__profc___negti2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi989)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a2, -24(s0)
	ld	a3, -32(s0)
	li	a1, 0
	sub	a0, a1, a3
	snez	a3, a3
	add	a2, a2, a3
	sub	a1, a1, a2
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end154:
	.size	__negti2, .Lfunc_end154-__negti2
                                        # -- End function
	.globl	__paritydi2                     # -- Begin function __paritydi2
	.p2align	1
	.type	__paritydi2,@function
__paritydi2:                            # @__paritydi2
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
.Lpcrel_hi990:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.155)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi990)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sd	a0, -24(s0)
.Lpcrel_hi991:
	auipc	a0, %pcrel_hi(.L__profc___paritydi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi991)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -32(s0)
	lw	a0, -28(s0)
	lw	a1, -32(s0)
	xor	a0, a0, a1
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	srliw	a1, a0, 16
	xor	a0, a0, a1
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	srliw	a1, a0, 8
	xor	a0, a0, a1
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	srliw	a1, a0, 4
	xor	a0, a0, a1
	sw	a0, -36(s0)
	lwu	a0, -36(s0)
	andi	a1, a0, 15
	lui	a0, 7
	addiw	a0, a0, -1642
	srlw	a0, a0, a1
	andi	a0, a0, 1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end155:
	.size	__paritydi2, .Lfunc_end155-__paritydi2
                                        # -- End function
	.globl	__parityti2                     # -- Begin function __parityti2
	.p2align	1
	.type	__parityti2,@function
__parityti2:                            # @__parityti2
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi992:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.156)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi992)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
.Lpcrel_hi993:
	auipc	a0, %pcrel_hi(.L__profc___parityti2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi993)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	xor	a0, a0, a1
	sd	a0, -56(s0)
	lw	a0, -52(s0)
	lw	a1, -56(s0)
	xor	a0, a0, a1
	sw	a0, -60(s0)
	lw	a0, -60(s0)
	srliw	a1, a0, 16
	xor	a0, a0, a1
	sw	a0, -60(s0)
	lw	a0, -60(s0)
	srliw	a1, a0, 8
	xor	a0, a0, a1
	sw	a0, -60(s0)
	lw	a0, -60(s0)
	srliw	a1, a0, 4
	xor	a0, a0, a1
	sw	a0, -60(s0)
	lwu	a0, -60(s0)
	andi	a1, a0, 15
	lui	a0, 7
	addiw	a0, a0, -1642
	srlw	a0, a0, a1
	andi	a0, a0, 1
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end156:
	.size	__parityti2, .Lfunc_end156-__parityti2
                                        # -- End function
	.globl	__paritysi2                     # -- Begin function __paritysi2
	.p2align	1
	.type	__paritysi2,@function
__paritysi2:                            # @__paritysi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi994:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.157)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi994)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi995:
	auipc	a0, %pcrel_hi(.L__profc___paritysi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi995)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	srliw	a1, a0, 16
	xor	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	srliw	a1, a0, 8
	xor	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	srliw	a1, a0, 4
	xor	a0, a0, a1
	sw	a0, -24(s0)
	lwu	a0, -24(s0)
	andi	a1, a0, 15
	lui	a0, 7
	addiw	a0, a0, -1642
	srlw	a0, a0, a1
	andi	a0, a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end157:
	.size	__paritysi2, .Lfunc_end157-__paritysi2
                                        # -- End function
	.globl	__popcountdi2                   # -- Begin function __popcountdi2
	.p2align	1
	.type	__popcountdi2,@function
__popcountdi2:                          # @__popcountdi2
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
.Lpcrel_hi996:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.158)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi996)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sd	a0, -24(s0)
.Lpcrel_hi997:
	auipc	a0, %pcrel_hi(.L__profc___popcountdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi997)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	sd	a0, -32(s0)
	ld	a0, -32(s0)
	srli	a1, a0, 1
	lui	a2, 349525
	addiw	a2, a2, 1365
	slli	a3, a2, 32
	add	a2, a2, a3
	and	a1, a1, a2
	sub	a0, a0, a1
	sd	a0, -32(s0)
	ld	a1, -32(s0)
	srli	a0, a1, 2
	lui	a2, 209715
	addiw	a2, a2, 819
	slli	a3, a2, 32
	add	a2, a2, a3
	and	a0, a0, a2
	and	a1, a1, a2
	add	a0, a0, a1
	sd	a0, -32(s0)
	ld	a0, -32(s0)
	srli	a1, a0, 4
	add	a0, a0, a1
	lui	a1, 61681
	addiw	a1, a1, -241
	slli	a2, a1, 32
	add	a1, a1, a2
	and	a0, a0, a1
	sd	a0, -32(s0)
	ld	a0, -32(s0)
	srli	a1, a0, 32
	addw	a0, a0, a1
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	srliw	a1, a0, 16
	addw	a0, a0, a1
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	srli	a1, a0, 8
	addw	a0, a0, a1
	andi	a0, a0, 127
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end158:
	.size	__popcountdi2, .Lfunc_end158-__popcountdi2
                                        # -- End function
	.globl	__popcountsi2                   # -- Begin function __popcountsi2
	.p2align	1
	.type	__popcountsi2,@function
__popcountsi2:                          # @__popcountsi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
.Lpcrel_hi998:
	auipc	a1, %pcrel_hi(__llvm_gcov_ctr.159)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi998)
	ld	a1, 0(a2)
	addi	a1, a1, 1
	sd	a1, 0(a2)
	sw	a0, -20(s0)
.Lpcrel_hi999:
	auipc	a0, %pcrel_hi(.L__profc___popcountsi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi999)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lw	a0, -20(s0)
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	srli	a1, a0, 1
	lui	a2, 349525
	addiw	a2, a2, 1365
	and	a1, a1, a2
	subw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a1, -24(s0)
	srli	a0, a1, 2
	lui	a2, 209715
	addiw	a2, a2, 819
	and	a0, a0, a2
	and	a1, a1, a2
	addw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	srli	a1, a0, 4
	addw	a0, a0, a1
	lui	a1, 61681
	addiw	a1, a1, -241
	and	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	srliw	a1, a0, 16
	addw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	srli	a1, a0, 8
	addw	a0, a0, a1
	andi	a0, a0, 63
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end159:
	.size	__popcountsi2, .Lfunc_end159-__popcountsi2
                                        # -- End function
	.globl	__popcountti2                   # -- Begin function __popcountti2
	.p2align	1
	.type	__popcountti2,@function
__popcountti2:                          # @__popcountti2
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
.Lpcrel_hi1000:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.160)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi1000)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
.Lpcrel_hi1001:
	auipc	a0, %pcrel_hi(.L__profc___popcountti2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1001)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	ld	a0, -40(s0)
	sd	a0, -80(s0)                     # 8-byte Folded Spill
	ld	a1, -48(s0)
	srli	a2, a1, 1
	srli	ra, a0, 1
	lui	a0, 349525
	addiw	a3, a0, 1365
	slli	a0, a3, 32
	add	a3, a3, a0
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	and	ra, ra, a3
	and	a2, a2, a3
	sltu	a3, a1, a2
	sub	a0, a0, ra
	sub	a0, a0, a3
	sub	a1, a1, a2
	sd	a1, -48(s0)
	sd	a0, -40(s0)
	ld	a1, -48(s0)
	ld	a3, -40(s0)
	srli	a0, a3, 2
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	srli	a2, a1, 2
	lui	a0, 209715
	addiw	ra, a0, 819
	slli	a0, ra, 32
	add	ra, ra, a0
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	and	a2, a2, ra
	and	a0, a0, ra
	and	a1, a1, ra
	and	a3, a3, ra
	add	a0, a0, a3
	add	a1, a1, a2
	sltu	a2, a1, a2
	add	a0, a0, a2
	sd	a1, -48(s0)
	sd	a0, -40(s0)
	ld	a2, -48(s0)
	ld	a0, -40(s0)
	slli	a3, a0, 60
	srli	a1, a2, 4
	or	a1, a1, a3
	srli	a3, a0, 4
	add	a0, a0, a3
	add	a1, a1, a2
	sltu	a2, a1, a2
	add	a0, a0, a2
	lui	a2, 61681
	addiw	a2, a2, -241
	slli	a3, a2, 32
	add	a2, a2, a3
	and	a0, a0, a2
	and	a1, a1, a2
	sd	a1, -48(s0)
	sd	a0, -40(s0)
	ld	a1, -40(s0)
	ld	a0, -48(s0)
	add	a0, a0, a1
	sd	a0, -56(s0)
	ld	a0, -56(s0)
	srli	a1, a0, 32
	addw	a0, a0, a1
	sw	a0, -60(s0)
	lw	a0, -60(s0)
	srliw	a1, a0, 16
	addw	a0, a0, a1
	sw	a0, -60(s0)
	lw	a0, -60(s0)
	srli	a1, a0, 8
	addw	a0, a0, a1
	andi	a0, a0, 255
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end160:
	.size	__popcountti2, .Lfunc_end160-__popcountti2
                                        # -- End function
	.globl	__powidf2                       # -- Begin function __powidf2
	.p2align	1
	.type	__powidf2,@function
__powidf2:                              # @__powidf2
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a0, -24(s0)
	sw	a1, -28(s0)
.Lpcrel_hi1002:
	auipc	a0, %pcrel_hi(.L__profc___powidf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1002)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lwu	a0, -28(s0)
	srli	a0, a0, 31
	sw	a0, -32(s0)
	li	a0, 1023
	slli	a0, a0, 52
	sd	a0, -40(s0)
	j	.LBB161_1
.LBB161_1:                              # =>This Inner Loop Header: Depth=1
.Lpcrel_hi1003:
	auipc	a0, %pcrel_hi(.L__profc___powidf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1003)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lbu	a0, -28(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB161_3
	j	.LBB161_2
.LBB161_2:                              #   in Loop: Header=BB161_1 Depth=1
.Lpcrel_hi1004:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.161)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1004)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi1005:
	auipc	a0, %pcrel_hi(.L__profc___powidf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1005)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	ld	a1, -24(s0)
	ld	a0, -40(s0)
	call	__muldf3
	sd	a0, -40(s0)
	j	.LBB161_3
.LBB161_3:                              #   in Loop: Header=BB161_1 Depth=1
	lw	a0, -28(s0)
	srliw	a1, a0, 31
	addw	a0, a0, a1
	sraiw	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	bnez	a0, .LBB161_5
	j	.LBB161_4
.LBB161_4:
.Lpcrel_hi1006:
	auipc	a0, %pcrel_hi(.L__profc___powidf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1006)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	j	.LBB161_6
.LBB161_5:                              #   in Loop: Header=BB161_1 Depth=1
.Lpcrel_hi1007:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.161)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1007)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	ld	a1, -24(s0)
	mv	a0, a1
	call	__muldf3
	sd	a0, -24(s0)
	j	.LBB161_1
.LBB161_6:
	lw	a0, -32(s0)
	beqz	a0, .LBB161_8
	j	.LBB161_7
.LBB161_7:
.Lpcrel_hi1008:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.161)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1008)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi1009:
	auipc	a0, %pcrel_hi(.L__profc___powidf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1009)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	ld	a1, -40(s0)
	li	a0, 1023
	slli	a0, a0, 52
	call	__divdf3
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB161_9
.LBB161_8:
.Lpcrel_hi1010:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.161)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1010)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	ld	a0, -40(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB161_9
.LBB161_9:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end161:
	.size	__powidf2, .Lfunc_end161-__powidf2
                                        # -- End function
	.globl	__powisf2                       # -- Begin function __powisf2
	.p2align	1
	.type	__powisf2,@function
__powisf2:                              # @__powisf2
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -20(s0)
	sw	a1, -24(s0)
.Lpcrel_hi1011:
	auipc	a0, %pcrel_hi(.L__profc___powisf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1011)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	lwu	a0, -24(s0)
	srli	a0, a0, 31
	sw	a0, -28(s0)
	lui	a0, 260096
	sw	a0, -32(s0)
	j	.LBB162_1
.LBB162_1:                              # =>This Inner Loop Header: Depth=1
.Lpcrel_hi1012:
	auipc	a0, %pcrel_hi(.L__profc___powisf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1012)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lbu	a0, -24(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB162_3
	j	.LBB162_2
.LBB162_2:                              #   in Loop: Header=BB162_1 Depth=1
.Lpcrel_hi1013:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.162)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1013)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi1014:
	auipc	a0, %pcrel_hi(.L__profc___powisf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1014)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	lw	a1, -20(s0)
	lw	a0, -32(s0)
	call	__mulsf3
	sw	a0, -32(s0)
	j	.LBB162_3
.LBB162_3:                              #   in Loop: Header=BB162_1 Depth=1
	lw	a0, -24(s0)
	srliw	a1, a0, 31
	addw	a0, a0, a1
	sraiw	a0, a0, 1
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	bnez	a0, .LBB162_5
	j	.LBB162_4
.LBB162_4:
.Lpcrel_hi1015:
	auipc	a0, %pcrel_hi(.L__profc___powisf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1015)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	j	.LBB162_6
.LBB162_5:                              #   in Loop: Header=BB162_1 Depth=1
.Lpcrel_hi1016:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.162)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1016)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	lw	a1, -20(s0)
	mv	a0, a1
	call	__mulsf3
	sw	a0, -20(s0)
	j	.LBB162_1
.LBB162_6:
	lw	a0, -28(s0)
	beqz	a0, .LBB162_8
	j	.LBB162_7
.LBB162_7:
.Lpcrel_hi1017:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.162)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1017)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi1018:
	auipc	a0, %pcrel_hi(.L__profc___powisf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1018)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	lw	a1, -32(s0)
	lui	a0, 260096
	call	__divsf3
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB162_9
.LBB162_8:
.Lpcrel_hi1019:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.162)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1019)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	lw	a0, -32(s0)
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB162_9
.LBB162_9:
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end162:
	.size	__powisf2, .Lfunc_end162-__powisf2
                                        # -- End function
	.globl	__ucmpdi2                       # -- Begin function __ucmpdi2
	.p2align	1
	.type	__ucmpdi2,@function
__ucmpdi2:                              # @__ucmpdi2
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -32(s0)
	sd	a1, -40(s0)
.Lpcrel_hi1020:
	auipc	a0, %pcrel_hi(.L__profc___ucmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1020)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	ld	a0, -40(s0)
	sd	a0, -56(s0)
	lw	a0, -44(s0)
	lw	a1, -52(s0)
	bgeu	a0, a1, .LBB163_2
	j	.LBB163_1
.LBB163_1:
.Lpcrel_hi1021:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.163)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1021)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi1022:
	auipc	a0, %pcrel_hi(.L__profc___ucmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1022)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB163_9
.LBB163_2:
	lw	a1, -44(s0)
	lw	a0, -52(s0)
	bgeu	a0, a1, .LBB163_4
	j	.LBB163_3
.LBB163_3:
.Lpcrel_hi1023:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.163)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1023)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi1024:
	auipc	a0, %pcrel_hi(.L__profc___ucmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1024)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	li	a0, 2
	sw	a0, -20(s0)
	j	.LBB163_9
.LBB163_4:
	lw	a0, -48(s0)
	lw	a1, -56(s0)
	bgeu	a0, a1, .LBB163_6
	j	.LBB163_5
.LBB163_5:
.Lpcrel_hi1025:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.163)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1025)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi1026:
	auipc	a0, %pcrel_hi(.L__profc___ucmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1026)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB163_9
.LBB163_6:
	lw	a1, -48(s0)
	lw	a0, -56(s0)
	bgeu	a0, a1, .LBB163_8
	j	.LBB163_7
.LBB163_7:
.Lpcrel_hi1027:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.163)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1027)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi1028:
	auipc	a0, %pcrel_hi(.L__profc___ucmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1028)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	li	a0, 2
	sw	a0, -20(s0)
	j	.LBB163_9
.LBB163_8:
.Lpcrel_hi1029:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.163)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1029)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB163_9
.LBB163_9:
	lw	a0, -20(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end163:
	.size	__ucmpdi2, .Lfunc_end163-__ucmpdi2
                                        # -- End function
	.globl	__aeabi_ulcmp                   # -- Begin function __aeabi_ulcmp
	.p2align	1
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          # @__aeabi_ulcmp
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
.Lpcrel_hi1030:
	auipc	a2, %pcrel_hi(__llvm_gcov_ctr.164)
	addi	a3, a2, %pcrel_lo(.Lpcrel_hi1030)
	ld	a2, 0(a3)
	addi	a2, a2, 1
	sd	a2, 0(a3)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
.Lpcrel_hi1031:
	auipc	a0, %pcrel_hi(.L__profc___aeabi_ulcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1031)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	call	__ucmpdi2
	addiw	a0, a0, -1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end164:
	.size	__aeabi_ulcmp, .Lfunc_end164-__aeabi_ulcmp
                                        # -- End function
	.globl	__ucmpti2                       # -- Begin function __ucmpti2
	.p2align	1
	.type	__ucmpti2,@function
__ucmpti2:                              # @__ucmpti2
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 96
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	sd	a3, -56(s0)
	sd	a2, -64(s0)
.Lpcrel_hi1032:
	auipc	a0, %pcrel_hi(.L__profc___ucmpti2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1032)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -72(s0)
	sd	a0, -80(s0)
	ld	a0, -64(s0)
	ld	a1, -56(s0)
	sd	a1, -88(s0)
	sd	a0, -96(s0)
	ld	a0, -72(s0)
	ld	a1, -88(s0)
	bgeu	a0, a1, .LBB165_2
	j	.LBB165_1
.LBB165_1:
.Lpcrel_hi1033:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.165)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1033)
	ld	a0, 0(a1)
	addi	a0, a0, 1
	sd	a0, 0(a1)
.Lpcrel_hi1034:
	auipc	a0, %pcrel_hi(.L__profc___ucmpti2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1034)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB165_9
.LBB165_2:
	ld	a1, -72(s0)
	ld	a0, -88(s0)
	bgeu	a0, a1, .LBB165_4
	j	.LBB165_3
.LBB165_3:
.Lpcrel_hi1035:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.165)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1035)
	ld	a0, 8(a1)
	addi	a0, a0, 1
	sd	a0, 8(a1)
.Lpcrel_hi1036:
	auipc	a0, %pcrel_hi(.L__profc___ucmpti2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1036)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
	li	a0, 2
	sw	a0, -20(s0)
	j	.LBB165_9
.LBB165_4:
	ld	a0, -80(s0)
	ld	a1, -96(s0)
	bgeu	a0, a1, .LBB165_6
	j	.LBB165_5
.LBB165_5:
.Lpcrel_hi1037:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.165)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1037)
	ld	a0, 16(a1)
	addi	a0, a0, 1
	sd	a0, 16(a1)
.Lpcrel_hi1038:
	auipc	a0, %pcrel_hi(.L__profc___ucmpti2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1038)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB165_9
.LBB165_6:
	ld	a1, -80(s0)
	ld	a0, -96(s0)
	bgeu	a0, a1, .LBB165_8
	j	.LBB165_7
.LBB165_7:
.Lpcrel_hi1039:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.165)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1039)
	ld	a0, 24(a1)
	addi	a0, a0, 1
	sd	a0, 24(a1)
.Lpcrel_hi1040:
	auipc	a0, %pcrel_hi(.L__profc___ucmpti2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1040)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	li	a0, 2
	sw	a0, -20(s0)
	j	.LBB165_9
.LBB165_8:
.Lpcrel_hi1041:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.165)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1041)
	ld	a0, 32(a1)
	addi	a0, a0, 1
	sd	a0, 32(a1)
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB165_9
.LBB165_9:
	lw	a0, -20(s0)
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end165:
	.size	__ucmpti2, .Lfunc_end165-__ucmpti2
                                        # -- End function
	.p2align	1                               # -- Begin function __llvm_gcov_writeout
	.type	__llvm_gcov_writeout,@function
__llvm_gcov_writeout:                   # @__llvm_gcov_writeout
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 96
	li	a0, 0
	sd	a0, -24(s0)                     # 8-byte Folded Spill
	j	.LBB166_1
.LBB166_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB166_3 Depth 2
	ld	a0, -24(s0)                     # 8-byte Folded Reload
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	sext.w	a0, a0
	li	a1, 40
	mul	a1, a0, a1
.Lpcrel_hi1042:
	auipc	a0, %pcrel_hi(__llvm_internal_gcov_emit_file_info)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1042)
	add	a2, a0, a1
	sd	a2, -56(s0)                     # 8-byte Folded Spill
	ld	a0, 0(a2)
	lw	a1, 8(a2)
	lw	a2, 12(a2)
	call	llvm_gcda_start_file
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	lw	a1, 16(a0)
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	ld	a2, 24(a0)
	sd	a2, -40(s0)                     # 8-byte Folded Spill
	ld	a0, 32(a0)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	li	a0, 0
	bge	a0, a1, .LBB166_5
	j	.LBB166_2
.LBB166_2:                              #   in Loop: Header=BB166_1 Depth=1
	li	a0, 0
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	j	.LBB166_3
.LBB166_3:                              #   Parent Loop BB166_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a1, -72(s0)                     # 8-byte Folded Reload
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	sd	a1, -80(s0)                     # 8-byte Folded Spill
	sext.w	a1, a1
	slli	a2, a1, 2
	slli	a1, a1, 4
	sd	a1, -88(s0)                     # 8-byte Folded Spill
	sub	a1, a1, a2
	add	a2, a0, a1
	lw	a0, 0(a2)
	lw	a1, 4(a2)
	lw	a2, 8(a2)
	call	llvm_gcda_emit_function
	ld	a1, -88(s0)                     # 8-byte Folded Reload
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	add	a1, a1, a0
	lw	a0, 0(a1)
	ld	a1, 8(a1)
	call	llvm_gcda_emit_arcs
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	ld	a1, -48(s0)                     # 8-byte Folded Reload
	addiw	a0, a0, 1
	sext.w	a1, a1
	mv	a2, a0
	sd	a2, -72(s0)                     # 8-byte Folded Spill
	blt	a0, a1, .LBB166_3
	j	.LBB166_4
.LBB166_4:                              #   in Loop: Header=BB166_1 Depth=1
	j	.LBB166_5
.LBB166_5:                              #   in Loop: Header=BB166_1 Depth=1
	call	llvm_gcda_summary_info
	call	llvm_gcda_end_file
	ld	a0, -64(s0)                     # 8-byte Folded Reload
	addiw	a1, a0, 1
	li	a0, 0
	mv	a2, a1
	sd	a2, -24(s0)                     # 8-byte Folded Spill
	bge	a0, a1, .LBB166_1
	j	.LBB166_6
.LBB166_6:
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end166:
	.size	__llvm_gcov_writeout, .Lfunc_end166-__llvm_gcov_writeout
                                        # -- End function
	.p2align	1                               # -- Begin function __llvm_gcov_reset
	.type	__llvm_gcov_reset,@function
__llvm_gcov_reset:                      # @__llvm_gcov_reset
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
.Lpcrel_hi1043:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1043)
	li	a1, 0
	sd	a1, -32(s0)                     # 8-byte Folded Spill
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1044:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1044)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1045:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.2)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1045)
	li	a2, 40
	sd	a2, -24(s0)                     # 8-byte Folded Spill
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
	ld	a2, -24(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1046:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.3)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1046)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
	ld	a2, -24(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1047:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.4)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1047)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
	ld	a2, -24(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1048:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.5)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1048)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1049:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.6)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1049)
	li	a2, 16
	sd	a2, -72(s0)                     # 8-byte Folded Spill
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1050:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.7)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1050)
	li	a2, 24
	sd	a2, -48(s0)                     # 8-byte Folded Spill
	call	memset
	ld	a2, -72(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1051:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.8)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1051)
	call	memset
	ld	a2, -72(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1052:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.9)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1052)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1053:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.10)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1053)
	li	a2, 32
	sd	a2, -40(s0)                     # 8-byte Folded Spill
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1054:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.11)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1054)
	call	memset
	ld	a2, -40(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1055:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.12)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1055)
	call	memset
	ld	a2, -72(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1056:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.13)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1056)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1057:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.14)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1057)
	li	a2, 56
	sd	a2, -64(s0)                     # 8-byte Folded Spill
	call	memset
	ld	a2, -72(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1058:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.15)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1058)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1059:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.16)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1059)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1060:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.17)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1060)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1061:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.18)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1061)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1062:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.19)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1062)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1063:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.20)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1063)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1064:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.21)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1064)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1065:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.22)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1065)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1066:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.23)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1066)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1067:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.24)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1067)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
	ld	a2, -24(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1068:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.25)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1068)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1069:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.26)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1069)
	call	memset
	ld	a2, -64(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1070:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.27)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1070)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1071:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.28)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1071)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1072:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.29)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1072)
	call	memset
	ld	a2, -40(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1073:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.30)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1073)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1074:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.31)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1074)
	call	memset
	ld	a2, -40(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1075:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.32)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1075)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1076:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.33)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1076)
	li	a2, 48
	sd	a2, -80(s0)                     # 8-byte Folded Spill
	call	memset
	ld	a2, -80(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1077:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.34)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1077)
	call	memset
	ld	a2, -80(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1078:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.35)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1078)
	call	memset
	ld	a2, -80(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1079:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.36)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1079)
	call	memset
	ld	a2, -80(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1080:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.37)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1080)
	call	memset
	ld	a2, -80(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1081:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.38)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1081)
	call	memset
	ld	a2, -72(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1082:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.39)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1082)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1083:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.40)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1083)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1084:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.41)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1084)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1085:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.42)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1085)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1086:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.43)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1086)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1087:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.44)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1087)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1088:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.45)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1088)
	call	memset
	ld	a2, -72(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1089:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.46)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1089)
	call	memset
	ld	a2, -80(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1090:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.47)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1090)
	call	memset
	ld	a2, -80(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1091:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.48)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1091)
	call	memset
	ld	a2, -80(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1092:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.49)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1092)
	call	memset
	ld	a2, -40(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1093:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.50)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1093)
	call	memset
	ld	a2, -40(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1094:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.51)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1094)
	call	memset
	ld	a2, -72(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1095:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.52)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1095)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1096:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.53)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1096)
	call	memset
	ld	a2, -72(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1097:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.54)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1097)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1098:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.55)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1098)
	call	memset
	ld	a2, -72(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1099:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.56)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1099)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1100:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.57)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1100)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
	ld	a2, -24(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1101:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.58)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1101)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1102:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.59)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1102)
	call	memset
	ld	a2, -80(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1103:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.60)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1103)
	call	memset
	ld	a2, -72(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1104:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.61)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1104)
	call	memset
	ld	a2, -72(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1105:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.62)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1105)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1106:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.63)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1106)
	li	a2, 64
	sd	a2, -56(s0)                     # 8-byte Folded Spill
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
	ld	a2, -24(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1107:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.64)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1107)
	call	memset
	ld	a2, -80(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1108:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.65)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1108)
	call	memset
	ld	a2, -72(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1109:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.66)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1109)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
	ld	a2, -24(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1110:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.67)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1110)
	call	memset
	ld	a2, -72(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1111:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.68)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1111)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
	ld	a2, -24(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1112:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.69)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1112)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1113:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.70)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1113)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1114:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.71)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1114)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1115:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.72)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1115)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1116:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.73)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1116)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1117:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.74)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1117)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1118:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.75)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1118)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1119:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.76)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1119)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1120:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.77)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1120)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1121:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.78)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1121)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1122:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.79)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1122)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1123:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.80)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1123)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1124:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.81)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1124)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1125:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.82)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1125)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1126:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.83)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1126)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1127:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.84)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1127)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1128:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.85)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1128)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1129:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.86)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1129)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1130:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.87)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1130)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
	ld	a2, -24(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1131:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.88)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1131)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1132:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.89)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1132)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
	ld	a2, -24(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1133:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.90)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1133)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
	ld	a2, -24(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1134:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.91)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1134)
	call	memset
	ld	a2, -72(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1135:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.92)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1135)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
	ld	a2, -24(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1136:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.93)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1136)
	call	memset
	ld	a2, -40(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1137:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.94)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1137)
	call	memset
	ld	a2, -40(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1138:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.95)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1138)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1139:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.96)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1139)
	call	memset
	ld	a2, -40(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1140:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.97)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1140)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
	ld	a2, -24(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1141:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.98)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1141)
	call	memset
	ld	a2, -80(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1142:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.99)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1142)
	call	memset
	ld	a2, -56(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1143:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.100)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1143)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1144:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.101)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1144)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1145:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.102)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1145)
	call	memset
	ld	a2, -56(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1146:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.103)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1146)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1147:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.104)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1147)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1148:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.105)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1148)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1149:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.106)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1149)
	call	memset
	ld	a2, -80(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1150:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.107)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1150)
	call	memset
	ld	a2, -80(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1151:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.108)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1151)
	call	memset
	ld	a2, -80(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1152:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.109)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1152)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1153:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.110)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1153)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1154:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.111)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1154)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1155:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.112)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1155)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1156:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.113)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1156)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1157:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.114)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1157)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1158:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.115)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1158)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1159:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.116)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1159)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1160:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.117)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1160)
	call	memset
	ld	a2, -72(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1161:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.118)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1161)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1162:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.119)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1162)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1163:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.120)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1163)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1164:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.121)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1164)
	call	memset
	ld	a2, -40(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1165:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.122)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1165)
	call	memset
	ld	a2, -56(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1166:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.123)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1166)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1167:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.124)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1167)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1168:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.125)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1168)
	call	memset
	ld	a2, -64(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1169:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.126)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1169)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1170:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.127)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1170)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1171:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.128)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1171)
	call	memset
	ld	a2, -40(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1172:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.129)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1172)
	call	memset
	ld	a2, -40(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1173:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.130)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1173)
	call	memset
	ld	a2, -56(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1174:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.131)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1174)
	call	memset
	ld	a2, -56(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1175:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.132)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1175)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1176:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.133)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1176)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1177:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.134)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1177)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1178:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.135)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1178)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1179:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.136)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1179)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
	ld	a2, -24(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1180:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.137)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1180)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1181:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.138)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1181)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1182:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.139)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1182)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1183:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.140)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1183)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1184:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.141)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1184)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
	ld	a2, -24(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1185:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.142)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1185)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1186:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.143)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1186)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1187:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.144)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1187)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1188:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.145)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1188)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1189:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.146)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1189)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1190:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.147)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1190)
	call	memset
	ld	a2, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1191:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.148)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1191)
	call	memset
	ld	a2, -40(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1192:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.149)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1192)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1193:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.150)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1193)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1194:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.151)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1194)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1195:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.152)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1195)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1196:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.153)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1196)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1197:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.154)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1197)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1198:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.155)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1198)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1199:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.156)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1199)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1200:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.157)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1200)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1201:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.158)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1201)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1202:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.159)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1202)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1203:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.160)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1203)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1204:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.161)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1204)
	call	memset
	ld	a2, -40(s0)                     # 8-byte Folded Reload
	ld	a1, -32(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1205:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.162)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1205)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
	ld	a2, -24(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1206:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.163)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1206)
	call	memset
	ld	a1, -32(s0)                     # 8-byte Folded Reload
	ld	a2, -24(s0)                     # 8-byte Folded Reload
.Lpcrel_hi1207:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.164)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1207)
	sb	a1, 7(a0)
	sb	a1, 6(a0)
	sb	a1, 5(a0)
	sb	a1, 4(a0)
	sb	a1, 3(a0)
	sb	a1, 2(a0)
	sb	a1, 1(a0)
	sb	a1, 0(a0)
.Lpcrel_hi1208:
	auipc	a0, %pcrel_hi(__llvm_gcov_ctr.165)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1208)
	call	memset
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end167:
	.size	__llvm_gcov_reset, .Lfunc_end167-__llvm_gcov_reset
                                        # -- End function
	.p2align	1                               # -- Begin function __llvm_gcov_init
	.type	__llvm_gcov_init,@function
__llvm_gcov_init:                       # @__llvm_gcov_init
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	addi	s0, sp, 16
.Lpcrel_hi1209:
	auipc	a0, %pcrel_hi(__llvm_gcov_writeout)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1209)
.Lpcrel_hi1210:
	auipc	a1, %pcrel_hi(__llvm_gcov_reset)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi1210)
	call	llvm_gcov_init
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end168:
	.size	__llvm_gcov_init, .Lfunc_end168-__llvm_gcov_init
                                        # -- End function
	.type	l64a.s,@object                  # @l64a.s
	.section	.sbss,"aw",@nobits
l64a.s:
	.zero	7
	.size	l64a.s, 7

	.type	digits,@object                  # @digits
	.section	.rodata,"a",@progbits
digits:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	digits, 65

	.type	seed,@object                    # @seed
	.section	.sbss,"aw",@nobits
	.p2align	3, 0x0
seed:
	.quad	0                               # 0x0
	.size	seed, 8

	.type	__llvm_gcov_ctr,@object         # @__llvm_gcov_ctr
	.p2align	3, 0x0
__llvm_gcov_ctr:
	.zero	8
	.size	__llvm_gcov_ctr, 8

	.type	__llvm_gcov_ctr.1,@object       # @__llvm_gcov_ctr.1
	.p2align	3, 0x0
__llvm_gcov_ctr.1:
	.zero	8
	.size	__llvm_gcov_ctr.1, 8

	.type	__llvm_gcov_ctr.2,@object       # @__llvm_gcov_ctr.2
	.local	__llvm_gcov_ctr.2
	.comm	__llvm_gcov_ctr.2,40,16
	.type	__llvm_gcov_ctr.3,@object       # @__llvm_gcov_ctr.3
	.local	__llvm_gcov_ctr.3
	.comm	__llvm_gcov_ctr.3,40,16
	.type	__llvm_gcov_ctr.4,@object       # @__llvm_gcov_ctr.4
	.local	__llvm_gcov_ctr.4
	.comm	__llvm_gcov_ctr.4,40,16
	.type	__llvm_gcov_ctr.5,@object       # @__llvm_gcov_ctr.5
	.local	__llvm_gcov_ctr.5
	.comm	__llvm_gcov_ctr.5,40,16
	.type	__llvm_gcov_ctr.6,@object       # @__llvm_gcov_ctr.6
	.local	__llvm_gcov_ctr.6
	.comm	__llvm_gcov_ctr.6,16,8
	.type	__llvm_gcov_ctr.7,@object       # @__llvm_gcov_ctr.7
	.local	__llvm_gcov_ctr.7
	.comm	__llvm_gcov_ctr.7,24,16
	.type	__llvm_gcov_ctr.8,@object       # @__llvm_gcov_ctr.8
	.local	__llvm_gcov_ctr.8
	.comm	__llvm_gcov_ctr.8,16,8
	.type	__llvm_gcov_ctr.9,@object       # @__llvm_gcov_ctr.9
	.local	__llvm_gcov_ctr.9
	.comm	__llvm_gcov_ctr.9,16,8
	.type	__llvm_gcov_ctr.10,@object      # @__llvm_gcov_ctr.10
	.local	__llvm_gcov_ctr.10
	.comm	__llvm_gcov_ctr.10,32,16
	.type	__llvm_gcov_ctr.11,@object      # @__llvm_gcov_ctr.11
	.local	__llvm_gcov_ctr.11
	.comm	__llvm_gcov_ctr.11,24,16
	.type	__llvm_gcov_ctr.12,@object      # @__llvm_gcov_ctr.12
	.local	__llvm_gcov_ctr.12
	.comm	__llvm_gcov_ctr.12,32,16
	.type	__llvm_gcov_ctr.13,@object      # @__llvm_gcov_ctr.13
	.local	__llvm_gcov_ctr.13
	.comm	__llvm_gcov_ctr.13,16,8
	.type	__llvm_gcov_ctr.14,@object      # @__llvm_gcov_ctr.14
	.local	__llvm_gcov_ctr.14
	.comm	__llvm_gcov_ctr.14,56,16
	.type	__llvm_gcov_ctr.15,@object      # @__llvm_gcov_ctr.15
	.local	__llvm_gcov_ctr.15
	.comm	__llvm_gcov_ctr.15,16,8
	.type	__llvm_gcov_ctr.16,@object      # @__llvm_gcov_ctr.16
	.p2align	3, 0x0
__llvm_gcov_ctr.16:
	.zero	8
	.size	__llvm_gcov_ctr.16, 8

	.type	__llvm_gcov_ctr.17,@object      # @__llvm_gcov_ctr.17
	.p2align	3, 0x0
__llvm_gcov_ctr.17:
	.zero	8
	.size	__llvm_gcov_ctr.17, 8

	.type	__llvm_gcov_ctr.18,@object      # @__llvm_gcov_ctr.18
	.local	__llvm_gcov_ctr.18
	.comm	__llvm_gcov_ctr.18,24,16
	.type	__llvm_gcov_ctr.19,@object      # @__llvm_gcov_ctr.19
	.local	__llvm_gcov_ctr.19
	.comm	__llvm_gcov_ctr.19,24,16
	.type	__llvm_gcov_ctr.20,@object      # @__llvm_gcov_ctr.20
	.p2align	3, 0x0
__llvm_gcov_ctr.20:
	.zero	8
	.size	__llvm_gcov_ctr.20, 8

	.type	__llvm_gcov_ctr.21,@object      # @__llvm_gcov_ctr.21
	.p2align	3, 0x0
__llvm_gcov_ctr.21:
	.zero	8
	.size	__llvm_gcov_ctr.21, 8

	.type	__llvm_gcov_ctr.22,@object      # @__llvm_gcov_ctr.22
	.p2align	3, 0x0
__llvm_gcov_ctr.22:
	.zero	8
	.size	__llvm_gcov_ctr.22, 8

	.type	__llvm_gcov_ctr.23,@object      # @__llvm_gcov_ctr.23
	.p2align	3, 0x0
__llvm_gcov_ctr.23:
	.zero	8
	.size	__llvm_gcov_ctr.23, 8

	.type	__llvm_gcov_ctr.24,@object      # @__llvm_gcov_ctr.24
	.local	__llvm_gcov_ctr.24
	.comm	__llvm_gcov_ctr.24,24,16
	.type	__llvm_gcov_ctr.25,@object      # @__llvm_gcov_ctr.25
	.p2align	3, 0x0
__llvm_gcov_ctr.25:
	.zero	8
	.size	__llvm_gcov_ctr.25, 8

	.type	__llvm_gcov_ctr.26,@object      # @__llvm_gcov_ctr.26
	.local	__llvm_gcov_ctr.26
	.comm	__llvm_gcov_ctr.26,40,16
	.type	__llvm_gcov_ctr.27,@object      # @__llvm_gcov_ctr.27
	.p2align	3, 0x0
__llvm_gcov_ctr.27:
	.zero	8
	.size	__llvm_gcov_ctr.27, 8

	.type	__llvm_gcov_ctr.28,@object      # @__llvm_gcov_ctr.28
	.local	__llvm_gcov_ctr.28
	.comm	__llvm_gcov_ctr.28,56,16
	.type	__llvm_gcov_ctr.29,@object      # @__llvm_gcov_ctr.29
	.local	__llvm_gcov_ctr.29
	.comm	__llvm_gcov_ctr.29,24,16
	.type	__llvm_gcov_ctr.30,@object      # @__llvm_gcov_ctr.30
	.p2align	3, 0x0
__llvm_gcov_ctr.30:
	.zero	8
	.size	__llvm_gcov_ctr.30, 8

	.type	__llvm_gcov_ctr.31,@object      # @__llvm_gcov_ctr.31
	.local	__llvm_gcov_ctr.31
	.comm	__llvm_gcov_ctr.31,32,16
	.type	__llvm_gcov_ctr.32,@object      # @__llvm_gcov_ctr.32
	.local	__llvm_gcov_ctr.32
	.comm	__llvm_gcov_ctr.32,32,16
	.type	__llvm_gcov_ctr.33,@object      # @__llvm_gcov_ctr.33
	.local	__llvm_gcov_ctr.33
	.comm	__llvm_gcov_ctr.33,48,16
	.type	__llvm_gcov_ctr.34,@object      # @__llvm_gcov_ctr.34
	.local	__llvm_gcov_ctr.34
	.comm	__llvm_gcov_ctr.34,48,16
	.type	__llvm_gcov_ctr.35,@object      # @__llvm_gcov_ctr.35
	.local	__llvm_gcov_ctr.35
	.comm	__llvm_gcov_ctr.35,48,16
	.type	__llvm_gcov_ctr.36,@object      # @__llvm_gcov_ctr.36
	.local	__llvm_gcov_ctr.36
	.comm	__llvm_gcov_ctr.36,48,16
	.type	__llvm_gcov_ctr.37,@object      # @__llvm_gcov_ctr.37
	.local	__llvm_gcov_ctr.37
	.comm	__llvm_gcov_ctr.37,48,16
	.type	__llvm_gcov_ctr.38,@object      # @__llvm_gcov_ctr.38
	.local	__llvm_gcov_ctr.38
	.comm	__llvm_gcov_ctr.38,48,16
	.type	__llvm_gcov_ctr.39,@object      # @__llvm_gcov_ctr.39
	.local	__llvm_gcov_ctr.39
	.comm	__llvm_gcov_ctr.39,16,8
	.type	__llvm_gcov_ctr.40,@object      # @__llvm_gcov_ctr.40
	.p2align	3, 0x0
__llvm_gcov_ctr.40:
	.zero	8
	.size	__llvm_gcov_ctr.40, 8

	.type	__llvm_gcov_ctr.41,@object      # @__llvm_gcov_ctr.41
	.p2align	3, 0x0
__llvm_gcov_ctr.41:
	.zero	8
	.size	__llvm_gcov_ctr.41, 8

	.type	__llvm_gcov_ctr.42,@object      # @__llvm_gcov_ctr.42
	.local	__llvm_gcov_ctr.42
	.comm	__llvm_gcov_ctr.42,24,16
	.type	__llvm_gcov_ctr.43,@object      # @__llvm_gcov_ctr.43
	.local	__llvm_gcov_ctr.43
	.comm	__llvm_gcov_ctr.43,24,16
	.type	__llvm_gcov_ctr.44,@object      # @__llvm_gcov_ctr.44
	.local	__llvm_gcov_ctr.44
	.comm	__llvm_gcov_ctr.44,24,16
	.type	__llvm_gcov_ctr.45,@object      # @__llvm_gcov_ctr.45
	.local	__llvm_gcov_ctr.45
	.comm	__llvm_gcov_ctr.45,24,16
	.type	__llvm_gcov_ctr.46,@object      # @__llvm_gcov_ctr.46
	.local	__llvm_gcov_ctr.46
	.comm	__llvm_gcov_ctr.46,16,8
	.type	__llvm_gcov_ctr.47,@object      # @__llvm_gcov_ctr.47
	.local	__llvm_gcov_ctr.47
	.comm	__llvm_gcov_ctr.47,48,16
	.type	__llvm_gcov_ctr.48,@object      # @__llvm_gcov_ctr.48
	.local	__llvm_gcov_ctr.48
	.comm	__llvm_gcov_ctr.48,48,16
	.type	__llvm_gcov_ctr.49,@object      # @__llvm_gcov_ctr.49
	.local	__llvm_gcov_ctr.49
	.comm	__llvm_gcov_ctr.49,48,16
	.type	__llvm_gcov_ctr.50,@object      # @__llvm_gcov_ctr.50
	.local	__llvm_gcov_ctr.50
	.comm	__llvm_gcov_ctr.50,32,16
	.type	__llvm_gcov_ctr.51,@object      # @__llvm_gcov_ctr.51
	.local	__llvm_gcov_ctr.51
	.comm	__llvm_gcov_ctr.51,32,16
	.type	__llvm_gcov_ctr.52,@object      # @__llvm_gcov_ctr.52
	.p2align	3, 0x0
__llvm_gcov_ctr.52:
	.zero	8
	.size	__llvm_gcov_ctr.52, 8

	.type	__llvm_gcov_ctr.53,@object      # @__llvm_gcov_ctr.53
	.local	__llvm_gcov_ctr.53
	.comm	__llvm_gcov_ctr.53,16,8
	.type	__llvm_gcov_ctr.54,@object      # @__llvm_gcov_ctr.54
	.p2align	3, 0x0
__llvm_gcov_ctr.54:
	.zero	8
	.size	__llvm_gcov_ctr.54, 8

	.type	__llvm_gcov_ctr.55,@object      # @__llvm_gcov_ctr.55
	.local	__llvm_gcov_ctr.55
	.comm	__llvm_gcov_ctr.55,16,8
	.type	__llvm_gcov_ctr.56,@object      # @__llvm_gcov_ctr.56
	.p2align	3, 0x0
__llvm_gcov_ctr.56:
	.zero	8
	.size	__llvm_gcov_ctr.56, 8

	.type	__llvm_gcov_ctr.57,@object      # @__llvm_gcov_ctr.57
	.local	__llvm_gcov_ctr.57
	.comm	__llvm_gcov_ctr.57,16,8
	.type	__llvm_gcov_ctr.58,@object      # @__llvm_gcov_ctr.58
	.p2align	3, 0x0
__llvm_gcov_ctr.58:
	.zero	8
	.size	__llvm_gcov_ctr.58, 8

	.type	__llvm_gcov_ctr.59,@object      # @__llvm_gcov_ctr.59
	.local	__llvm_gcov_ctr.59
	.comm	__llvm_gcov_ctr.59,40,16
	.type	__llvm_gcov_ctr.60,@object      # @__llvm_gcov_ctr.60
	.local	__llvm_gcov_ctr.60
	.comm	__llvm_gcov_ctr.60,48,16
	.type	__llvm_gcov_ctr.61,@object      # @__llvm_gcov_ctr.61
	.local	__llvm_gcov_ctr.61
	.comm	__llvm_gcov_ctr.61,16,8
	.type	__llvm_gcov_ctr.62,@object      # @__llvm_gcov_ctr.62
	.local	__llvm_gcov_ctr.62
	.comm	__llvm_gcov_ctr.62,16,8
	.type	__llvm_gcov_ctr.63,@object      # @__llvm_gcov_ctr.63
	.local	__llvm_gcov_ctr.63
	.comm	__llvm_gcov_ctr.63,64,16
	.type	__llvm_gcov_ctr.64,@object      # @__llvm_gcov_ctr.64
	.local	__llvm_gcov_ctr.64
	.comm	__llvm_gcov_ctr.64,40,16
	.type	__llvm_gcov_ctr.65,@object      # @__llvm_gcov_ctr.65
	.local	__llvm_gcov_ctr.65
	.comm	__llvm_gcov_ctr.65,48,16
	.type	__llvm_gcov_ctr.66,@object      # @__llvm_gcov_ctr.66
	.local	__llvm_gcov_ctr.66
	.comm	__llvm_gcov_ctr.66,16,8
	.type	__llvm_gcov_ctr.67,@object      # @__llvm_gcov_ctr.67
	.local	__llvm_gcov_ctr.67
	.comm	__llvm_gcov_ctr.67,40,16
	.type	__llvm_gcov_ctr.68,@object      # @__llvm_gcov_ctr.68
	.local	__llvm_gcov_ctr.68
	.comm	__llvm_gcov_ctr.68,16,8
	.type	__llvm_gcov_ctr.69,@object      # @__llvm_gcov_ctr.69
	.local	__llvm_gcov_ctr.69
	.comm	__llvm_gcov_ctr.69,40,16
	.type	__llvm_gcov_ctr.70,@object      # @__llvm_gcov_ctr.70
	.p2align	3, 0x0
__llvm_gcov_ctr.70:
	.zero	8
	.size	__llvm_gcov_ctr.70, 8

	.type	__llvm_gcov_ctr.71,@object      # @__llvm_gcov_ctr.71
	.p2align	3, 0x0
__llvm_gcov_ctr.71:
	.zero	8
	.size	__llvm_gcov_ctr.71, 8

	.type	__llvm_gcov_ctr.72,@object      # @__llvm_gcov_ctr.72
	.p2align	3, 0x0
__llvm_gcov_ctr.72:
	.zero	8
	.size	__llvm_gcov_ctr.72, 8

	.type	__llvm_gcov_ctr.73,@object      # @__llvm_gcov_ctr.73
	.p2align	3, 0x0
__llvm_gcov_ctr.73:
	.zero	8
	.size	__llvm_gcov_ctr.73, 8

	.type	__llvm_gcov_ctr.74,@object      # @__llvm_gcov_ctr.74
	.p2align	3, 0x0
__llvm_gcov_ctr.74:
	.zero	8
	.size	__llvm_gcov_ctr.74, 8

	.type	__llvm_gcov_ctr.75,@object      # @__llvm_gcov_ctr.75
	.p2align	3, 0x0
__llvm_gcov_ctr.75:
	.zero	8
	.size	__llvm_gcov_ctr.75, 8

	.type	__llvm_gcov_ctr.76,@object      # @__llvm_gcov_ctr.76
	.p2align	3, 0x0
__llvm_gcov_ctr.76:
	.zero	8
	.size	__llvm_gcov_ctr.76, 8

	.type	__llvm_gcov_ctr.77,@object      # @__llvm_gcov_ctr.77
	.p2align	3, 0x0
__llvm_gcov_ctr.77:
	.zero	8
	.size	__llvm_gcov_ctr.77, 8

	.type	__llvm_gcov_ctr.78,@object      # @__llvm_gcov_ctr.78
	.p2align	3, 0x0
__llvm_gcov_ctr.78:
	.zero	8
	.size	__llvm_gcov_ctr.78, 8

	.type	__llvm_gcov_ctr.79,@object      # @__llvm_gcov_ctr.79
	.p2align	3, 0x0
__llvm_gcov_ctr.79:
	.zero	8
	.size	__llvm_gcov_ctr.79, 8

	.type	__llvm_gcov_ctr.80,@object      # @__llvm_gcov_ctr.80
	.p2align	3, 0x0
__llvm_gcov_ctr.80:
	.zero	8
	.size	__llvm_gcov_ctr.80, 8

	.type	__llvm_gcov_ctr.81,@object      # @__llvm_gcov_ctr.81
	.p2align	3, 0x0
__llvm_gcov_ctr.81:
	.zero	8
	.size	__llvm_gcov_ctr.81, 8

	.type	__llvm_gcov_ctr.82,@object      # @__llvm_gcov_ctr.82
	.p2align	3, 0x0
__llvm_gcov_ctr.82:
	.zero	8
	.size	__llvm_gcov_ctr.82, 8

	.type	__llvm_gcov_ctr.83,@object      # @__llvm_gcov_ctr.83
	.local	__llvm_gcov_ctr.83
	.comm	__llvm_gcov_ctr.83,24,16
	.type	__llvm_gcov_ctr.84,@object      # @__llvm_gcov_ctr.84
	.local	__llvm_gcov_ctr.84
	.comm	__llvm_gcov_ctr.84,24,16
	.type	__llvm_gcov_ctr.85,@object      # @__llvm_gcov_ctr.85
	.local	__llvm_gcov_ctr.85
	.comm	__llvm_gcov_ctr.85,24,16
	.type	__llvm_gcov_ctr.86,@object      # @__llvm_gcov_ctr.86
	.local	__llvm_gcov_ctr.86
	.comm	__llvm_gcov_ctr.86,24,16
	.type	__llvm_gcov_ctr.87,@object      # @__llvm_gcov_ctr.87
	.local	__llvm_gcov_ctr.87
	.comm	__llvm_gcov_ctr.87,24,16
	.type	__llvm_gcov_ctr.88,@object      # @__llvm_gcov_ctr.88
	.p2align	3, 0x0
__llvm_gcov_ctr.88:
	.zero	8
	.size	__llvm_gcov_ctr.88, 8

	.type	__llvm_gcov_ctr.89,@object      # @__llvm_gcov_ctr.89
	.local	__llvm_gcov_ctr.89
	.comm	__llvm_gcov_ctr.89,40,16
	.type	__llvm_gcov_ctr.90,@object      # @__llvm_gcov_ctr.90
	.local	__llvm_gcov_ctr.90
	.comm	__llvm_gcov_ctr.90,40,16
	.type	__llvm_gcov_ctr.91,@object      # @__llvm_gcov_ctr.91
	.local	__llvm_gcov_ctr.91
	.comm	__llvm_gcov_ctr.91,40,16
	.type	__llvm_gcov_ctr.92,@object      # @__llvm_gcov_ctr.92
	.local	__llvm_gcov_ctr.92
	.comm	__llvm_gcov_ctr.92,16,8
	.type	__llvm_gcov_ctr.93,@object      # @__llvm_gcov_ctr.93
	.local	__llvm_gcov_ctr.93
	.comm	__llvm_gcov_ctr.93,40,16
	.type	__llvm_gcov_ctr.94,@object      # @__llvm_gcov_ctr.94
	.local	__llvm_gcov_ctr.94
	.comm	__llvm_gcov_ctr.94,32,16
	.type	__llvm_gcov_ctr.95,@object      # @__llvm_gcov_ctr.95
	.local	__llvm_gcov_ctr.95
	.comm	__llvm_gcov_ctr.95,32,16
	.type	__llvm_gcov_ctr.96,@object      # @__llvm_gcov_ctr.96
	.local	__llvm_gcov_ctr.96
	.comm	__llvm_gcov_ctr.96,24,16
	.type	__llvm_gcov_ctr.97,@object      # @__llvm_gcov_ctr.97
	.local	__llvm_gcov_ctr.97
	.comm	__llvm_gcov_ctr.97,32,16
	.type	__llvm_gcov_ctr.98,@object      # @__llvm_gcov_ctr.98
	.local	__llvm_gcov_ctr.98
	.comm	__llvm_gcov_ctr.98,40,16
	.type	__llvm_gcov_ctr.99,@object      # @__llvm_gcov_ctr.99
	.local	__llvm_gcov_ctr.99
	.comm	__llvm_gcov_ctr.99,48,16
	.type	__llvm_gcov_ctr.100,@object     # @__llvm_gcov_ctr.100
	.p2align	3, 0x0
__llvm_gcov_ctr.100:
	.zero	8
	.size	__llvm_gcov_ctr.100, 8

	.type	__llvm_gcov_ctr.101,@object     # @__llvm_gcov_ctr.101
	.local	__llvm_gcov_ctr.101
	.comm	__llvm_gcov_ctr.101,64,16
	.type	__llvm_gcov_ctr.102,@object     # @__llvm_gcov_ctr.102
	.local	__llvm_gcov_ctr.102
	.comm	__llvm_gcov_ctr.102,24,16
	.type	__llvm_gcov_ctr.103,@object     # @__llvm_gcov_ctr.103
	.local	__llvm_gcov_ctr.103
	.comm	__llvm_gcov_ctr.103,64,16
	.type	__llvm_gcov_ctr.104,@object     # @__llvm_gcov_ctr.104
	.local	__llvm_gcov_ctr.104
	.comm	__llvm_gcov_ctr.104,24,16
	.type	__llvm_gcov_ctr.105,@object     # @__llvm_gcov_ctr.105
	.local	__llvm_gcov_ctr.105
	.comm	__llvm_gcov_ctr.105,24,16
	.type	__llvm_gcov_ctr.106,@object     # @__llvm_gcov_ctr.106
	.local	__llvm_gcov_ctr.106
	.comm	__llvm_gcov_ctr.106,24,16
	.type	__llvm_gcov_ctr.107,@object     # @__llvm_gcov_ctr.107
	.local	__llvm_gcov_ctr.107
	.comm	__llvm_gcov_ctr.107,48,16
	.type	__llvm_gcov_ctr.108,@object     # @__llvm_gcov_ctr.108
	.local	__llvm_gcov_ctr.108
	.comm	__llvm_gcov_ctr.108,48,16
	.type	__llvm_gcov_ctr.109,@object     # @__llvm_gcov_ctr.109
	.local	__llvm_gcov_ctr.109
	.comm	__llvm_gcov_ctr.109,48,16
	.type	__llvm_gcov_ctr.110,@object     # @__llvm_gcov_ctr.110
	.p2align	3, 0x0
__llvm_gcov_ctr.110:
	.zero	8
	.size	__llvm_gcov_ctr.110, 8

	.type	__llvm_gcov_ctr.111,@object     # @__llvm_gcov_ctr.111
	.p2align	3, 0x0
__llvm_gcov_ctr.111:
	.zero	8
	.size	__llvm_gcov_ctr.111, 8

	.type	__llvm_gcov_ctr.112,@object     # @__llvm_gcov_ctr.112
	.p2align	3, 0x0
__llvm_gcov_ctr.112:
	.zero	8
	.size	__llvm_gcov_ctr.112, 8

	.type	__llvm_gcov_ctr.113,@object     # @__llvm_gcov_ctr.113
	.p2align	3, 0x0
__llvm_gcov_ctr.113:
	.zero	8
	.size	__llvm_gcov_ctr.113, 8

	.type	__llvm_gcov_ctr.114,@object     # @__llvm_gcov_ctr.114
	.p2align	3, 0x0
__llvm_gcov_ctr.114:
	.zero	8
	.size	__llvm_gcov_ctr.114, 8

	.type	__llvm_gcov_ctr.115,@object     # @__llvm_gcov_ctr.115
	.p2align	3, 0x0
__llvm_gcov_ctr.115:
	.zero	8
	.size	__llvm_gcov_ctr.115, 8

	.type	__llvm_gcov_ctr.116,@object     # @__llvm_gcov_ctr.116
	.local	__llvm_gcov_ctr.116
	.comm	__llvm_gcov_ctr.116,24,16
	.type	__llvm_gcov_ctr.117,@object     # @__llvm_gcov_ctr.117
	.local	__llvm_gcov_ctr.117
	.comm	__llvm_gcov_ctr.117,24,16
	.type	__llvm_gcov_ctr.118,@object     # @__llvm_gcov_ctr.118
	.local	__llvm_gcov_ctr.118
	.comm	__llvm_gcov_ctr.118,16,8
	.type	__llvm_gcov_ctr.119,@object     # @__llvm_gcov_ctr.119
	.local	__llvm_gcov_ctr.119
	.comm	__llvm_gcov_ctr.119,24,16
	.type	__llvm_gcov_ctr.120,@object     # @__llvm_gcov_ctr.120
	.local	__llvm_gcov_ctr.120
	.comm	__llvm_gcov_ctr.120,24,16
	.type	__llvm_gcov_ctr.121,@object     # @__llvm_gcov_ctr.121
	.local	__llvm_gcov_ctr.121
	.comm	__llvm_gcov_ctr.121,24,16
	.type	__llvm_gcov_ctr.122,@object     # @__llvm_gcov_ctr.122
	.local	__llvm_gcov_ctr.122
	.comm	__llvm_gcov_ctr.122,32,16
	.type	__llvm_gcov_ctr.123,@object     # @__llvm_gcov_ctr.123
	.local	__llvm_gcov_ctr.123
	.comm	__llvm_gcov_ctr.123,64,16
	.type	__llvm_gcov_ctr.124,@object     # @__llvm_gcov_ctr.124
	.local	__llvm_gcov_ctr.124
	.comm	__llvm_gcov_ctr.124,24,16
	.type	__llvm_gcov_ctr.125,@object     # @__llvm_gcov_ctr.125
	.local	__llvm_gcov_ctr.125
	.comm	__llvm_gcov_ctr.125,24,16
	.type	__llvm_gcov_ctr.126,@object     # @__llvm_gcov_ctr.126
	.p2align	3, 0x0
__llvm_gcov_ctr.126:
	.zero	8
	.size	__llvm_gcov_ctr.126, 8

	.type	__llvm_gcov_ctr.127,@object     # @__llvm_gcov_ctr.127
	.p2align	3, 0x0
__llvm_gcov_ctr.127:
	.zero	8
	.size	__llvm_gcov_ctr.127, 8

	.type	__llvm_gcov_ctr.128,@object     # @__llvm_gcov_ctr.128
	.local	__llvm_gcov_ctr.128
	.comm	__llvm_gcov_ctr.128,56,16
	.type	__llvm_gcov_ctr.129,@object     # @__llvm_gcov_ctr.129
	.local	__llvm_gcov_ctr.129
	.comm	__llvm_gcov_ctr.129,32,16
	.type	__llvm_gcov_ctr.130,@object     # @__llvm_gcov_ctr.130
	.local	__llvm_gcov_ctr.130
	.comm	__llvm_gcov_ctr.130,32,16
	.type	__llvm_gcov_ctr.131,@object     # @__llvm_gcov_ctr.131
	.local	__llvm_gcov_ctr.131
	.comm	__llvm_gcov_ctr.131,64,16
	.type	__llvm_gcov_ctr.132,@object     # @__llvm_gcov_ctr.132
	.local	__llvm_gcov_ctr.132
	.comm	__llvm_gcov_ctr.132,64,16
	.type	__llvm_gcov_ctr.133,@object     # @__llvm_gcov_ctr.133
	.local	__llvm_gcov_ctr.133
	.comm	__llvm_gcov_ctr.133,24,16
	.type	__llvm_gcov_ctr.134,@object     # @__llvm_gcov_ctr.134
	.local	__llvm_gcov_ctr.134
	.comm	__llvm_gcov_ctr.134,24,16
	.type	__llvm_gcov_ctr.135,@object     # @__llvm_gcov_ctr.135
	.local	__llvm_gcov_ctr.135
	.comm	__llvm_gcov_ctr.135,24,16
	.type	__llvm_gcov_ctr.136,@object     # @__llvm_gcov_ctr.136
	.local	__llvm_gcov_ctr.136
	.comm	__llvm_gcov_ctr.136,24,16
	.type	__llvm_gcov_ctr.137,@object     # @__llvm_gcov_ctr.137
	.p2align	3, 0x0
__llvm_gcov_ctr.137:
	.zero	8
	.size	__llvm_gcov_ctr.137, 8

	.type	__llvm_gcov_ctr.138,@object     # @__llvm_gcov_ctr.138
	.p2align	3, 0x0
__llvm_gcov_ctr.138:
	.zero	8
	.size	__llvm_gcov_ctr.138, 8

	.type	__llvm_gcov_ctr.139,@object     # @__llvm_gcov_ctr.139
	.p2align	3, 0x0
__llvm_gcov_ctr.139:
	.zero	8
	.size	__llvm_gcov_ctr.139, 8

	.type	__llvm_gcov_ctr.140,@object     # @__llvm_gcov_ctr.140
	.p2align	3, 0x0
__llvm_gcov_ctr.140:
	.zero	8
	.size	__llvm_gcov_ctr.140, 8

	.type	__llvm_gcov_ctr.141,@object     # @__llvm_gcov_ctr.141
	.local	__llvm_gcov_ctr.141
	.comm	__llvm_gcov_ctr.141,40,16
	.type	__llvm_gcov_ctr.142,@object     # @__llvm_gcov_ctr.142
	.p2align	3, 0x0
__llvm_gcov_ctr.142:
	.zero	8
	.size	__llvm_gcov_ctr.142, 8

	.type	__llvm_gcov_ctr.143,@object     # @__llvm_gcov_ctr.143
	.local	__llvm_gcov_ctr.143
	.comm	__llvm_gcov_ctr.143,40,16
	.type	__llvm_gcov_ctr.144,@object     # @__llvm_gcov_ctr.144
	.p2align	3, 0x0
__llvm_gcov_ctr.144:
	.zero	8
	.size	__llvm_gcov_ctr.144, 8

	.type	__llvm_gcov_ctr.145,@object     # @__llvm_gcov_ctr.145
	.p2align	3, 0x0
__llvm_gcov_ctr.145:
	.zero	8
	.size	__llvm_gcov_ctr.145, 8

	.type	__llvm_gcov_ctr.146,@object     # @__llvm_gcov_ctr.146
	.local	__llvm_gcov_ctr.146
	.comm	__llvm_gcov_ctr.146,24,16
	.type	__llvm_gcov_ctr.147,@object     # @__llvm_gcov_ctr.147
	.local	__llvm_gcov_ctr.147
	.comm	__llvm_gcov_ctr.147,24,16
	.type	__llvm_gcov_ctr.148,@object     # @__llvm_gcov_ctr.148
	.local	__llvm_gcov_ctr.148
	.comm	__llvm_gcov_ctr.148,24,16
	.type	__llvm_gcov_ctr.149,@object     # @__llvm_gcov_ctr.149
	.p2align	3, 0x0
__llvm_gcov_ctr.149:
	.zero	8
	.size	__llvm_gcov_ctr.149, 8

	.type	__llvm_gcov_ctr.150,@object     # @__llvm_gcov_ctr.150
	.p2align	3, 0x0
__llvm_gcov_ctr.150:
	.zero	8
	.size	__llvm_gcov_ctr.150, 8

	.type	__llvm_gcov_ctr.151,@object     # @__llvm_gcov_ctr.151
	.p2align	3, 0x0
__llvm_gcov_ctr.151:
	.zero	8
	.size	__llvm_gcov_ctr.151, 8

	.type	__llvm_gcov_ctr.152,@object     # @__llvm_gcov_ctr.152
	.p2align	3, 0x0
__llvm_gcov_ctr.152:
	.zero	8
	.size	__llvm_gcov_ctr.152, 8

	.type	__llvm_gcov_ctr.153,@object     # @__llvm_gcov_ctr.153
	.p2align	3, 0x0
__llvm_gcov_ctr.153:
	.zero	8
	.size	__llvm_gcov_ctr.153, 8

	.type	__llvm_gcov_ctr.154,@object     # @__llvm_gcov_ctr.154
	.p2align	3, 0x0
__llvm_gcov_ctr.154:
	.zero	8
	.size	__llvm_gcov_ctr.154, 8

	.type	__llvm_gcov_ctr.155,@object     # @__llvm_gcov_ctr.155
	.p2align	3, 0x0
__llvm_gcov_ctr.155:
	.zero	8
	.size	__llvm_gcov_ctr.155, 8

	.type	__llvm_gcov_ctr.156,@object     # @__llvm_gcov_ctr.156
	.p2align	3, 0x0
__llvm_gcov_ctr.156:
	.zero	8
	.size	__llvm_gcov_ctr.156, 8

	.type	__llvm_gcov_ctr.157,@object     # @__llvm_gcov_ctr.157
	.p2align	3, 0x0
__llvm_gcov_ctr.157:
	.zero	8
	.size	__llvm_gcov_ctr.157, 8

	.type	__llvm_gcov_ctr.158,@object     # @__llvm_gcov_ctr.158
	.p2align	3, 0x0
__llvm_gcov_ctr.158:
	.zero	8
	.size	__llvm_gcov_ctr.158, 8

	.type	__llvm_gcov_ctr.159,@object     # @__llvm_gcov_ctr.159
	.p2align	3, 0x0
__llvm_gcov_ctr.159:
	.zero	8
	.size	__llvm_gcov_ctr.159, 8

	.type	__llvm_gcov_ctr.160,@object     # @__llvm_gcov_ctr.160
	.p2align	3, 0x0
__llvm_gcov_ctr.160:
	.zero	8
	.size	__llvm_gcov_ctr.160, 8

	.type	__llvm_gcov_ctr.161,@object     # @__llvm_gcov_ctr.161
	.local	__llvm_gcov_ctr.161
	.comm	__llvm_gcov_ctr.161,32,16
	.type	__llvm_gcov_ctr.162,@object     # @__llvm_gcov_ctr.162
	.local	__llvm_gcov_ctr.162
	.comm	__llvm_gcov_ctr.162,32,16
	.type	__llvm_gcov_ctr.163,@object     # @__llvm_gcov_ctr.163
	.local	__llvm_gcov_ctr.163
	.comm	__llvm_gcov_ctr.163,40,16
	.type	__llvm_gcov_ctr.164,@object     # @__llvm_gcov_ctr.164
	.p2align	3, 0x0
__llvm_gcov_ctr.164:
	.zero	8
	.size	__llvm_gcov_ctr.164, 8

	.type	__llvm_gcov_ctr.165,@object     # @__llvm_gcov_ctr.165
	.local	__llvm_gcov_ctr.165
	.comm	__llvm_gcov_ctr.165,40,16
	.type	.L__unnamed_1,@object           # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_1:
	.asciz	"/home/gravier/tmp/some-libc-opt/clang-riscv64.gcda"
	.size	.L__unnamed_1, 51

	.type	__llvm_internal_gcov_emit_function_args.0,@object # @__llvm_internal_gcov_emit_function_args.0
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
__llvm_internal_gcov_emit_function_args.0:
	.word	0                               # 0x0
	.word	3759012176                      # 0xe00df950
	.word	2102079853                      # 0x7d4b316d
	.word	1                               # 0x1
	.word	3518812481                      # 0xd1bcd141
	.word	2102079853                      # 0x7d4b316d
	.word	2                               # 0x2
	.word	560687177                       # 0x216b6849
	.word	2102079853                      # 0x7d4b316d
	.word	3                               # 0x3
	.word	1589591758                      # 0x5ebf3ece
	.word	2102079853                      # 0x7d4b316d
	.word	4                               # 0x4
	.word	2176136383                      # 0x81b534bf
	.word	2102079853                      # 0x7d4b316d
	.word	5                               # 0x5
	.word	3586625172                      # 0xd5c78e94
	.word	2102079853                      # 0x7d4b316d
	.word	6                               # 0x6
	.word	2323119728                      # 0x8a77fe70
	.word	2102079853                      # 0x7d4b316d
	.word	7                               # 0x7
	.word	2314569740                      # 0x89f5880c
	.word	2102079853                      # 0x7d4b316d
	.word	8                               # 0x8
	.word	2833673551                      # 0xa8e66d4f
	.word	2102079853                      # 0x7d4b316d
	.word	9                               # 0x9
	.word	1458633189                      # 0x56f0f9e5
	.word	2102079853                      # 0x7d4b316d
	.word	10                              # 0xa
	.word	1190300833                      # 0x46f28ca1
	.word	2102079853                      # 0x7d4b316d
	.word	11                              # 0xb
	.word	758327989                       # 0x2d332ab5
	.word	2102079853                      # 0x7d4b316d
	.word	12                              # 0xc
	.word	1651479037                      # 0x626f91fd
	.word	2102079853                      # 0x7d4b316d
	.word	13                              # 0xd
	.word	4132343275                      # 0xf64e8deb
	.word	2102079853                      # 0x7d4b316d
	.word	14                              # 0xe
	.word	734262523                       # 0x2bc3f4fb
	.word	2102079853                      # 0x7d4b316d
	.word	15                              # 0xf
	.word	2463424677                      # 0x92d4e0a5
	.word	2102079853                      # 0x7d4b316d
	.word	16                              # 0x10
	.word	1419026334                      # 0x54949f9e
	.word	2102079853                      # 0x7d4b316d
	.word	17                              # 0x11
	.word	3154471370                      # 0xbc0569ca
	.word	2102079853                      # 0x7d4b316d
	.word	18                              # 0x12
	.word	2077973487                      # 0x7bdb5bef
	.word	2102079853                      # 0x7d4b316d
	.word	19                              # 0x13
	.word	1474691227                      # 0x57e6009b
	.word	2102079853                      # 0x7d4b316d
	.word	20                              # 0x14
	.word	3710986016                      # 0xdd312720
	.word	2102079853                      # 0x7d4b316d
	.word	21                              # 0x15
	.word	1305101473                      # 0x4dca44a1
	.word	2102079853                      # 0x7d4b316d
	.word	22                              # 0x16
	.word	3762036564                      # 0xe03c1f54
	.word	2102079853                      # 0x7d4b316d
	.word	23                              # 0x17
	.word	477914433                       # 0x1c7c6541
	.word	2102079853                      # 0x7d4b316d
	.word	24                              # 0x18
	.word	3923035234                      # 0xe9d4c462
	.word	2102079853                      # 0x7d4b316d
	.word	25                              # 0x19
	.word	951651702                       # 0x38b90d76
	.word	2102079853                      # 0x7d4b316d
	.word	26                              # 0x1a
	.word	4206925919                      # 0xfac0985f
	.word	2102079853                      # 0x7d4b316d
	.word	27                              # 0x1b
	.word	32773942                        # 0x1f41736
	.word	2102079853                      # 0x7d4b316d
	.word	28                              # 0x1c
	.word	2877267246                      # 0xab7f9d2e
	.word	2102079853                      # 0x7d4b316d
	.word	29                              # 0x1d
	.word	860405771                       # 0x3348c00b
	.word	2102079853                      # 0x7d4b316d
	.word	30                              # 0x1e
	.word	815674877                       # 0x309e35fd
	.word	2102079853                      # 0x7d4b316d
	.word	31                              # 0x1f
	.word	1778838753                      # 0x6a06ece1
	.word	2102079853                      # 0x7d4b316d
	.word	32                              # 0x20
	.word	2718307199                      # 0xa206137f
	.word	2102079853                      # 0x7d4b316d
	.word	33                              # 0x21
	.word	856224820                       # 0x3308f434
	.word	2102079853                      # 0x7d4b316d
	.word	34                              # 0x22
	.word	1111195143                      # 0x423b7e07
	.word	2102079853                      # 0x7d4b316d
	.word	35                              # 0x23
	.word	1178414519                      # 0x463d2db7
	.word	2102079853                      # 0x7d4b316d
	.word	36                              # 0x24
	.word	3477640633                      # 0xcf4895b9
	.word	2102079853                      # 0x7d4b316d
	.word	37                              # 0x25
	.word	4294770115                      # 0xfffcfdc3
	.word	2102079853                      # 0x7d4b316d
	.word	38                              # 0x26
	.word	3650660234                      # 0xd998a78a
	.word	2102079853                      # 0x7d4b316d
	.word	39                              # 0x27
	.word	289327647                       # 0x113eca1f
	.word	2102079853                      # 0x7d4b316d
	.word	40                              # 0x28
	.word	2093612798                      # 0x7cc9fefe
	.word	2102079853                      # 0x7d4b316d
	.word	41                              # 0x29
	.word	4177956716                      # 0xf9068f6c
	.word	2102079853                      # 0x7d4b316d
	.word	42                              # 0x2a
	.word	3434808461                      # 0xccbb048d
	.word	2102079853                      # 0x7d4b316d
	.word	43                              # 0x2b
	.word	3206497114                      # 0xbf1f435a
	.word	2102079853                      # 0x7d4b316d
	.word	44                              # 0x2c
	.word	1537257434                      # 0x5ba0afda
	.word	2102079853                      # 0x7d4b316d
	.word	45                              # 0x2d
	.word	3028077325                      # 0xb47ccb0d
	.word	2102079853                      # 0x7d4b316d
	.word	46                              # 0x2e
	.word	1369848209                      # 0x51a63991
	.word	2102079853                      # 0x7d4b316d
	.word	47                              # 0x2f
	.word	938831176                       # 0x37f56d48
	.word	2102079853                      # 0x7d4b316d
	.word	48                              # 0x30
	.word	1663146323                      # 0x63219953
	.word	2102079853                      # 0x7d4b316d
	.word	49                              # 0x31
	.word	4111410217                      # 0xf50f2429
	.word	2102079853                      # 0x7d4b316d
	.word	50                              # 0x32
	.word	1475378556                      # 0x57f07d7c
	.word	2102079853                      # 0x7d4b316d
	.word	51                              # 0x33
	.word	3356195547                      # 0xc80b7adb
	.word	2102079853                      # 0x7d4b316d
	.word	52                              # 0x34
	.word	514931786                       # 0x1eb13c4a
	.word	2102079853                      # 0x7d4b316d
	.word	53                              # 0x35
	.word	2854034444                      # 0xaa1d1c0c
	.word	2102079853                      # 0x7d4b316d
	.word	54                              # 0x36
	.word	2747937306                      # 0xa3ca321a
	.word	2102079853                      # 0x7d4b316d
	.word	55                              # 0x37
	.word	4192776208                      # 0xf9e8b010
	.word	2102079853                      # 0x7d4b316d
	.word	56                              # 0x38
	.word	984436227                       # 0x3aad4e03
	.word	2102079853                      # 0x7d4b316d
	.word	57                              # 0x39
	.word	1477657574                      # 0x581343e6
	.word	2102079853                      # 0x7d4b316d
	.word	58                              # 0x3a
	.word	1339127973                      # 0x4fd178a5
	.word	2102079853                      # 0x7d4b316d
	.word	59                              # 0x3b
	.word	2960567906                      # 0xb076ae62
	.word	2102079853                      # 0x7d4b316d
	.word	60                              # 0x3c
	.word	3390076872                      # 0xca1077c8
	.word	2102079853                      # 0x7d4b316d
	.word	61                              # 0x3d
	.word	1543282230                      # 0x5bfc9e36
	.word	2102079853                      # 0x7d4b316d
	.word	62                              # 0x3e
	.word	2934101789                      # 0xaee2d71d
	.word	2102079853                      # 0x7d4b316d
	.word	63                              # 0x3f
	.word	3737986119                      # 0xdecd2447
	.word	2102079853                      # 0x7d4b316d
	.word	64                              # 0x40
	.word	49556427                        # 0x2f42bcb
	.word	2102079853                      # 0x7d4b316d
	.word	65                              # 0x41
	.word	234051526                       # 0xdf357c6
	.word	2102079853                      # 0x7d4b316d
	.word	66                              # 0x42
	.word	2341800126                      # 0x8b9508be
	.word	2102079853                      # 0x7d4b316d
	.word	67                              # 0x43
	.word	3256799948                      # 0xc21ed2cc
	.word	2102079853                      # 0x7d4b316d
	.word	68                              # 0x44
	.word	777295480                       # 0x2e549678
	.word	2102079853                      # 0x7d4b316d
	.word	69                              # 0x45
	.word	14040531                        # 0xd63dd3
	.word	2102079853                      # 0x7d4b316d
	.word	70                              # 0x46
	.word	8047973                         # 0x7acd65
	.word	2102079853                      # 0x7d4b316d
	.word	71                              # 0x47
	.word	719459161                       # 0x2ae21359
	.word	2102079853                      # 0x7d4b316d
	.word	72                              # 0x48
	.word	243358501                       # 0xe815b25
	.word	2102079853                      # 0x7d4b316d
	.word	73                              # 0x49
	.word	3262173932                      # 0xc270d2ec
	.word	2102079853                      # 0x7d4b316d
	.word	74                              # 0x4a
	.word	398910553                       # 0x17c6e459
	.word	2102079853                      # 0x7d4b316d
	.word	75                              # 0x4b
	.word	3354219739                      # 0xc7ed54db
	.word	2102079853                      # 0x7d4b316d
	.word	76                              # 0x4c
	.word	2570308788                      # 0x9933ccb4
	.word	2102079853                      # 0x7d4b316d
	.word	77                              # 0x4d
	.word	982429111                       # 0x3a8eadb7
	.word	2102079853                      # 0x7d4b316d
	.word	78                              # 0x4e
	.word	211491241                       # 0xc9b19a9
	.word	2102079853                      # 0x7d4b316d
	.word	79                              # 0x4f
	.word	1075683319                      # 0x401d9ff7
	.word	2102079853                      # 0x7d4b316d
	.word	80                              # 0x50
	.word	1886352651                      # 0x706f750b
	.word	2102079853                      # 0x7d4b316d
	.word	81                              # 0x51
	.word	248637203                       # 0xed1e713
	.word	2102079853                      # 0x7d4b316d
	.word	82                              # 0x52
	.word	703327087                       # 0x29ebeb6f
	.word	2102079853                      # 0x7d4b316d
	.word	83                              # 0x53
	.word	3690160730                      # 0xdbf3625a
	.word	2102079853                      # 0x7d4b316d
	.word	84                              # 0x54
	.word	787048238                       # 0x2ee9672e
	.word	2102079853                      # 0x7d4b316d
	.word	85                              # 0x55
	.word	1937497967                      # 0x737bdf6f
	.word	2102079853                      # 0x7d4b316d
	.word	86                              # 0x56
	.word	4205062514                      # 0xfaa42972
	.word	2102079853                      # 0x7d4b316d
	.word	87                              # 0x57
	.word	694462539                       # 0x2964a84b
	.word	2102079853                      # 0x7d4b316d
	.word	88                              # 0x58
	.word	85970907                        # 0x51fcfdb
	.word	2102079853                      # 0x7d4b316d
	.word	89                              # 0x59
	.word	3681984728                      # 0xdb76a0d8
	.word	2102079853                      # 0x7d4b316d
	.word	90                              # 0x5a
	.word	3620297642                      # 0xd7c95baa
	.word	2102079853                      # 0x7d4b316d
	.word	91                              # 0x5b
	.word	3394804480                      # 0xca589b00
	.word	2102079853                      # 0x7d4b316d
	.word	92                              # 0x5c
	.word	2119330183                      # 0x7e526987
	.word	2102079853                      # 0x7d4b316d
	.word	93                              # 0x5d
	.word	1963040266                      # 0x75019e0a
	.word	2102079853                      # 0x7d4b316d
	.word	94                              # 0x5e
	.word	1603391838                      # 0x5f91d15e
	.word	2102079853                      # 0x7d4b316d
	.word	95                              # 0x5f
	.word	2340921237                      # 0x8b879f95
	.word	2102079853                      # 0x7d4b316d
	.word	96                              # 0x60
	.word	3028177438                      # 0xb47e521e
	.word	2102079853                      # 0x7d4b316d
	.word	97                              # 0x61
	.word	2265525308                      # 0x87092c3c
	.word	2102079853                      # 0x7d4b316d
	.word	98                              # 0x62
	.word	2598903994                      # 0x9ae820ba
	.word	2102079853                      # 0x7d4b316d
	.word	99                              # 0x63
	.word	139524705                       # 0x850fa61
	.word	2102079853                      # 0x7d4b316d
	.word	100                             # 0x64
	.word	1076410600                      # 0x4028b8e8
	.word	2102079853                      # 0x7d4b316d
	.word	101                             # 0x65
	.word	220237413                       # 0xd208e65
	.word	2102079853                      # 0x7d4b316d
	.word	102                             # 0x66
	.word	3913623866                      # 0xe945293a
	.word	2102079853                      # 0x7d4b316d
	.word	103                             # 0x67
	.word	3453026372                      # 0xcdd10044
	.word	2102079853                      # 0x7d4b316d
	.word	104                             # 0x68
	.word	2321387380                      # 0x8a5d8f74
	.word	2102079853                      # 0x7d4b316d
	.word	105                             # 0x69
	.word	3319939363                      # 0xc5e24123
	.word	2102079853                      # 0x7d4b316d
	.word	106                             # 0x6a
	.word	398991913                       # 0x17c82229
	.word	2102079853                      # 0x7d4b316d
	.word	107                             # 0x6b
	.word	333429647                       # 0x13dfbb8f
	.word	2102079853                      # 0x7d4b316d
	.word	108                             # 0x6c
	.word	3927133990                      # 0xea134f26
	.word	2102079853                      # 0x7d4b316d
	.word	109                             # 0x6d
	.word	1797971294                      # 0x6b2add5e
	.word	2102079853                      # 0x7d4b316d
	.word	110                             # 0x6e
	.word	1622314776                      # 0x60b28f18
	.word	2102079853                      # 0x7d4b316d
	.word	111                             # 0x6f
	.word	1092862330                      # 0x4123c17a
	.word	2102079853                      # 0x7d4b316d
	.word	112                             # 0x70
	.word	2568657322                      # 0x991a99aa
	.word	2102079853                      # 0x7d4b316d
	.word	113                             # 0x71
	.word	2168129897                      # 0x813b0969
	.word	2102079853                      # 0x7d4b316d
	.word	114                             # 0x72
	.word	2890303119                      # 0xac46868f
	.word	2102079853                      # 0x7d4b316d
	.word	115                             # 0x73
	.word	1713332582                      # 0x661f6166
	.word	2102079853                      # 0x7d4b316d
	.word	116                             # 0x74
	.word	2375727721                      # 0x8d9aba69
	.word	2102079853                      # 0x7d4b316d
	.word	117                             # 0x75
	.word	3586767156                      # 0xd5c9b934
	.word	2102079853                      # 0x7d4b316d
	.word	118                             # 0x76
	.word	2191348475                      # 0x829d52fb
	.word	2102079853                      # 0x7d4b316d
	.word	119                             # 0x77
	.word	3910023869                      # 0xe90e3abd
	.word	2102079853                      # 0x7d4b316d
	.word	120                             # 0x78
	.word	4189915105                      # 0xf9bd07e1
	.word	2102079853                      # 0x7d4b316d
	.word	121                             # 0x79
	.word	2527353334                      # 0x96a459f6
	.word	2102079853                      # 0x7d4b316d
	.word	122                             # 0x7a
	.word	3429265923                      # 0xcc667203
	.word	2102079853                      # 0x7d4b316d
	.word	123                             # 0x7b
	.word	1283962724                      # 0x4c87b764
	.word	2102079853                      # 0x7d4b316d
	.word	124                             # 0x7c
	.word	1970290990                      # 0x7570412e
	.word	2102079853                      # 0x7d4b316d
	.word	125                             # 0x7d
	.word	2615950861                      # 0x9bec3e0d
	.word	2102079853                      # 0x7d4b316d
	.word	126                             # 0x7e
	.word	3338450337                      # 0xc6fcb5a1
	.word	2102079853                      # 0x7d4b316d
	.word	127                             # 0x7f
	.word	3971836509                      # 0xecbd6a5d
	.word	2102079853                      # 0x7d4b316d
	.word	128                             # 0x80
	.word	4260339231                      # 0xfdef9e1f
	.word	2102079853                      # 0x7d4b316d
	.word	129                             # 0x81
	.word	4160738226                      # 0xf7ffd3b2
	.word	2102079853                      # 0x7d4b316d
	.word	130                             # 0x82
	.word	1309372079                      # 0x4e0b6eaf
	.word	2102079853                      # 0x7d4b316d
	.word	131                             # 0x83
	.word	3151575564                      # 0xbbd93a0c
	.word	2102079853                      # 0x7d4b316d
	.word	132                             # 0x84
	.word	3938977714                      # 0xeac807b2
	.word	2102079853                      # 0x7d4b316d
	.word	133                             # 0x85
	.word	3228738087                      # 0xc072a227
	.word	2102079853                      # 0x7d4b316d
	.word	134                             # 0x86
	.word	2262837051                      # 0x86e0273b
	.word	2102079853                      # 0x7d4b316d
	.word	135                             # 0x87
	.word	3135705803                      # 0xbae712cb
	.word	2102079853                      # 0x7d4b316d
	.word	136                             # 0x88
	.word	990447104                       # 0x3b090600
	.word	2102079853                      # 0x7d4b316d
	.word	137                             # 0x89
	.word	4061147315                      # 0xf21030b3
	.word	2102079853                      # 0x7d4b316d
	.word	138                             # 0x8a
	.word	2783543715                      # 0xa5e981a3
	.word	2102079853                      # 0x7d4b316d
	.word	139                             # 0x8b
	.word	2471046843                      # 0x93492ebb
	.word	2102079853                      # 0x7d4b316d
	.word	140                             # 0x8c
	.word	403058134                       # 0x18062dd6
	.word	2102079853                      # 0x7d4b316d
	.word	141                             # 0x8d
	.word	260073473                       # 0xf806801
	.word	2102079853                      # 0x7d4b316d
	.word	142                             # 0x8e
	.word	1259876295                      # 0x4b182fc7
	.word	2102079853                      # 0x7d4b316d
	.word	143                             # 0x8f
	.word	2975678116                      # 0xb15d3ea4
	.word	2102079853                      # 0x7d4b316d
	.word	144                             # 0x90
	.word	2579807359                      # 0x99c4bc7f
	.word	2102079853                      # 0x7d4b316d
	.word	145                             # 0x91
	.word	863102422                       # 0x3371e5d6
	.word	2102079853                      # 0x7d4b316d
	.word	146                             # 0x92
	.word	650832017                       # 0x26cae891
	.word	2102079853                      # 0x7d4b316d
	.word	147                             # 0x93
	.word	90061610                        # 0x55e3b2a
	.word	2102079853                      # 0x7d4b316d
	.word	148                             # 0x94
	.word	2446954539                      # 0x91d9902b
	.word	2102079853                      # 0x7d4b316d
	.word	149                             # 0x95
	.word	3598610789                      # 0xd67e7165
	.word	2102079853                      # 0x7d4b316d
	.word	150                             # 0x96
	.word	2351688191                      # 0x8c2be9ff
	.word	2102079853                      # 0x7d4b316d
	.word	151                             # 0x97
	.word	1743478091                      # 0x67eb5d4b
	.word	2102079853                      # 0x7d4b316d
	.word	152                             # 0x98
	.word	2798805217                      # 0xa6d260e1
	.word	2102079853                      # 0x7d4b316d
	.word	153                             # 0x99
	.word	1438161982                      # 0x55b89c3e
	.word	2102079853                      # 0x7d4b316d
	.word	154                             # 0x9a
	.word	273416875                       # 0x104c02ab
	.word	2102079853                      # 0x7d4b316d
	.word	155                             # 0x9b
	.word	2438880600                      # 0x915e5d58
	.word	2102079853                      # 0x7d4b316d
	.word	156                             # 0x9c
	.word	1284541841                      # 0x4c908d91
	.word	2102079853                      # 0x7d4b316d
	.word	157                             # 0x9d
	.word	3593193962                      # 0xd62bc9ea
	.word	2102079853                      # 0x7d4b316d
	.word	158                             # 0x9e
	.word	1755082314                      # 0x689c6e4a
	.word	2102079853                      # 0x7d4b316d
	.word	159                             # 0x9f
	.word	3432612426                      # 0xcc99824a
	.word	2102079853                      # 0x7d4b316d
	.word	160                             # 0xa0
	.word	1404964820                      # 0x53be0fd4
	.word	2102079853                      # 0x7d4b316d
	.word	161                             # 0xa1
	.word	3374828335                      # 0xc927cb2f
	.word	2102079853                      # 0x7d4b316d
	.word	162                             # 0xa2
	.word	3311814731                      # 0xc566484b
	.word	2102079853                      # 0x7d4b316d
	.word	163                             # 0xa3
	.word	413908966                       # 0x18abbfe6
	.word	2102079853                      # 0x7d4b316d
	.word	164                             # 0xa4
	.word	3027808697                      # 0xb478b1b9
	.word	2102079853                      # 0x7d4b316d
	.word	165                             # 0xa5
	.word	540762785                       # 0x203b62a1
	.word	2102079853                      # 0x7d4b316d
	.size	__llvm_internal_gcov_emit_function_args.0, 1992

	.type	__llvm_internal_gcov_emit_arcs_args.0,@object # @__llvm_internal_gcov_emit_arcs_args.0
	.p2align	4, 0x0
__llvm_internal_gcov_emit_arcs_args.0:
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.1
	.word	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.2
	.word	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.3
	.word	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.4
	.word	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.5
	.word	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.6
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.7
	.word	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.8
	.word	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.9
	.word	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.10
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.11
	.word	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.12
	.word	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.13
	.word	7                               # 0x7
	.zero	4
	.quad	__llvm_gcov_ctr.14
	.word	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.15
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.16
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.17
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.18
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.19
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.20
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.21
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.22
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.23
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.24
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.25
	.word	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.26
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.27
	.word	7                               # 0x7
	.zero	4
	.quad	__llvm_gcov_ctr.28
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.29
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.30
	.word	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.31
	.word	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.32
	.word	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.33
	.word	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.34
	.word	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.35
	.word	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.36
	.word	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.37
	.word	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.38
	.word	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.39
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.40
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.41
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.42
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.43
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.44
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.45
	.word	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.46
	.word	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.47
	.word	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.48
	.word	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.49
	.word	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.50
	.word	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.51
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.52
	.word	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.53
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.54
	.word	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.55
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.56
	.word	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.57
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.58
	.word	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.59
	.word	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.60
	.word	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.61
	.word	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.62
	.word	8                               # 0x8
	.zero	4
	.quad	__llvm_gcov_ctr.63
	.word	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.64
	.word	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.65
	.word	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.66
	.word	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.67
	.word	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.68
	.word	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.69
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.70
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.71
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.72
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.73
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.74
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.75
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.76
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.77
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.78
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.79
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.80
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.81
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.82
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.83
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.84
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.85
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.86
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.87
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.88
	.word	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.89
	.word	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.90
	.word	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.91
	.word	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.92
	.word	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.93
	.word	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.94
	.word	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.95
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.96
	.word	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.97
	.word	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.98
	.word	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.99
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.100
	.word	8                               # 0x8
	.zero	4
	.quad	__llvm_gcov_ctr.101
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.102
	.word	8                               # 0x8
	.zero	4
	.quad	__llvm_gcov_ctr.103
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.104
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.105
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.106
	.word	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.107
	.word	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.108
	.word	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.109
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.110
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.111
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.112
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.113
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.114
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.115
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.116
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.117
	.word	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.118
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.119
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.120
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.121
	.word	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.122
	.word	8                               # 0x8
	.zero	4
	.quad	__llvm_gcov_ctr.123
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.124
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.125
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.126
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.127
	.word	7                               # 0x7
	.zero	4
	.quad	__llvm_gcov_ctr.128
	.word	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.129
	.word	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.130
	.word	8                               # 0x8
	.zero	4
	.quad	__llvm_gcov_ctr.131
	.word	8                               # 0x8
	.zero	4
	.quad	__llvm_gcov_ctr.132
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.133
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.134
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.135
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.136
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.137
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.138
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.139
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.140
	.word	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.141
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.142
	.word	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.143
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.144
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.145
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.146
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.147
	.word	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.148
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.149
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.150
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.151
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.152
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.153
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.154
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.155
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.156
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.157
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.158
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.159
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.160
	.word	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.161
	.word	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.162
	.word	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.163
	.word	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.164
	.word	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.165
	.size	__llvm_internal_gcov_emit_arcs_args.0, 2656

	.type	__llvm_internal_gcov_emit_file_info,@object # @__llvm_internal_gcov_emit_file_info
	.p2align	4, 0x0
__llvm_internal_gcov_emit_file_info:
	.quad	.L__unnamed_1
	.word	875575338                       # 0x3430382a
	.word	2102079853                      # 0x7d4b316d
	.word	166                             # 0xa6
	.zero	4
	.quad	__llvm_internal_gcov_emit_function_args.0
	.quad	__llvm_internal_gcov_emit_arcs_args.0
	.size	__llvm_internal_gcov_emit_file_info, 40

	.section	.init_array.0,"aw",@init_array
	.p2align	3, 0x0
	.quad	__llvm_gcov_init
	.hidden	__llvm_profile_runtime
	.type	.L__profc_make_ti,@object       # @__profc_make_ti
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_make_ti
	.p2align	3, 0x0
.L__profc_make_ti:
	.zero	8
	.size	.L__profc_make_ti, 8

	.type	.L__profd_make_ti,@object       # @__profd_make_ti
	.section	__llvm_prf_data,"awG",@progbits,__profc_make_ti
	.p2align	3, 0x0
.L__profd_make_ti:
	.quad	-5001490222628474638            # 0xba9723243ca3f0f2
	.quad	24                              # 0x18
	.quad	.L__profc_make_ti-.L__profd_make_ti
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_make_ti, 64

	.type	.L__profc_make_tu,@object       # @__profc_make_tu
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_make_tu
	.p2align	3, 0x0
.L__profc_make_tu:
	.zero	8
	.size	.L__profc_make_tu, 8

	.type	.L__profd_make_tu,@object       # @__profd_make_tu
	.section	__llvm_prf_data,"awG",@progbits,__profc_make_tu
	.p2align	3, 0x0
.L__profd_make_tu:
	.quad	-8857068571906375875            # 0x85155f0f843e7f3d
	.quad	24                              # 0x18
	.quad	.L__profc_make_tu-.L__profd_make_tu
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_make_tu, 64

	.type	.L__profc_memmove,@object       # @__profc_memmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
.L__profc_memmove:
	.zero	40
	.size	.L__profc_memmove, 40

	.type	.L__profd_memmove,@object       # @__profd_memmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
.L__profd_memmove:
	.quad	-306081897096246147             # 0xfbc09422e3668c7d
	.quad	-4061701397412038936            # 0xc7a1f0194f8c36e8
	.quad	.L__profc_memmove-.L__profd_memmove
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_memmove, 64

	.type	.L__profc_memccpy,@object       # @__profc_memccpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profc_memccpy:
	.zero	40
	.size	.L__profc_memccpy, 40

	.type	.L__profd_memccpy,@object       # @__profd_memccpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profd_memccpy:
	.quad	-1590863763861247346            # 0xe9ec1dd5e5026a8e
	.quad	1189690007454808                # 0x43a044a498458
	.quad	.L__profc_memccpy-.L__profd_memccpy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_memccpy, 64

	.type	.L__profc_memchr,@object        # @__profc_memchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
.L__profc_memchr:
	.zero	40
	.size	.L__profc_memchr, 40

	.type	.L__profd_memchr,@object        # @__profd_memchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
.L__profd_memchr:
	.quad	5708666158622859656             # 0x4f3941a01e026188
	.quad	4538308109                      # 0x10e81160d
	.quad	.L__profc_memchr-.L__profd_memchr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_memchr, 64

	.type	.L__profc_memcmp,@object        # @__profc_memcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profc_memcmp:
	.zero	40
	.size	.L__profc_memcmp, 40

	.type	.L__profd_memcmp,@object        # @__profd_memcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profd_memcmp:
	.quad	-4679550853048924350            # 0xbf0ee54adfa48742
	.quad	4538045965                      # 0x10e7d160d
	.quad	.L__profc_memcmp-.L__profd_memcmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_memcmp, 64

	.type	.L__profc_memcpy,@object        # @__profc_memcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
.L__profc_memcpy:
	.zero	16
	.size	.L__profc_memcpy, 16

	.type	.L__profd_memcpy,@object        # @__profd_memcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
.L__profd_memcpy:
	.quad	3893303423671325810             # 0x3607cad612bdd472
	.quad	17496                           # 0x4458
	.quad	.L__profc_memcpy-.L__profd_memcpy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_memcpy, 64

	.type	.L__profc_memrchr,@object       # @__profc_memrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profc_memrchr:
	.zero	24
	.size	.L__profc_memrchr, 24

	.type	.L__profd_memrchr,@object       # @__profd_memrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profd_memrchr:
	.quad	-548334422562728352             # 0xf863ecbf75079660
	.quad	9516882138200                   # 0x8a7d2611458
	.quad	.L__profc_memrchr-.L__profd_memrchr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_memrchr, 64

	.type	.L__profc_memset,@object        # @__profc_memset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
.L__profc_memset:
	.zero	16
	.size	.L__profc_memset, 16

	.type	.L__profd_memset,@object        # @__profd_memset
	.section	__llvm_prf_data,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
.L__profd_memset:
	.quad	-2741574704065975695            # 0xd9f3f85506f36a71
	.quad	17496                           # 0x4458
	.quad	.L__profc_memset-.L__profd_memset
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_memset, 64

	.type	.L__profc_stpcpy,@object        # @__profc_stpcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profc_stpcpy:
	.zero	16
	.size	.L__profc_stpcpy, 16

	.type	.L__profd_stpcpy,@object        # @__profd_stpcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profd_stpcpy:
	.quad	4454833295779690053             # 0x3dd2bf47a087f645
	.quad	17496                           # 0x4458
	.quad	.L__profc_stpcpy-.L__profd_stpcpy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_stpcpy, 64

	.type	.L__profc_strchrnul,@object     # @__profc_strchrnul
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profc_strchrnul:
	.zero	32
	.size	.L__profc_strchrnul, 32

	.type	.L__profd_strchrnul,@object     # @__profd_strchrnul
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profd_strchrnul:
	.quad	5039208642683934005             # 0x45eedd8fc8411535
	.quad	70911064                        # 0x43a0458
	.quad	.L__profc_strchrnul-.L__profd_strchrnul
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_strchrnul, 64

	.type	.L__profc_strchr,@object        # @__profc_strchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
.L__profc_strchr:
	.zero	24
	.size	.L__profc_strchr, 24

	.type	.L__profd_strchr,@object        # @__profd_strchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
.L__profd_strchr:
	.quad	-5671522429266412413            # 0xb14ab4664bea3c83
	.quad	13914928649304                  # 0xca7d2611458
	.quad	.L__profc_strchr-.L__profd_strchr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_strchr, 64

	.type	.L__profc_strcmp,@object        # @__profc_strcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profc_strcmp:
	.zero	32
	.size	.L__profc_strcmp, 32

	.type	.L__profd_strcmp,@object        # @__profd_strcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profd_strcmp:
	.quad	1013198891307352868             # 0xe0f9b060331c324
	.quad	70906968                        # 0x439f458
	.quad	.L__profc_strcmp-.L__profd_strcmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_strcmp, 64

	.type	.L__profc_strlen,@object        # @__profc_strlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
.L__profc_strlen:
	.zero	16
	.size	.L__profc_strlen, 16

	.type	.L__profd_strlen,@object        # @__profd_strlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
.L__profd_strlen:
	.quad	2965136410638013299             # 0x292647db02a7d373
	.quad	17496                           # 0x4458
	.quad	.L__profc_strlen-.L__profd_strlen
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_strlen, 64

	.type	.L__profc_strncmp,@object       # @__profc_strncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profc_strncmp:
	.zero	72
	.size	.L__profc_strncmp, 72

	.type	.L__profd_strncmp,@object       # @__profd_strncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profd_strncmp:
	.quad	-6058495834680104774            # 0xabebe6233cb568ba
	.quad	7207353986825238351             # 0x6405aa43cb36b74f
	.quad	.L__profc_strncmp-.L__profd_strncmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	9                               # 0x9
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_strncmp, 64

	.type	.L__profc_swab,@object          # @__profc_swab
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
.L__profc_swab:
	.zero	16
	.size	.L__profc_swab, 16

	.type	.L__profd_swab,@object          # @__profd_swab
	.section	__llvm_prf_data,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
.L__profd_swab:
	.quad	-1619950660557759641            # 0xe984c77503cb9b67
	.quad	18193                           # 0x4711
	.quad	.L__profc_swab-.L__profd_swab
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_swab, 64

	.type	.L__profc_isalpha,@object       # @__profc_isalpha
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profc_isalpha:
	.zero	8
	.size	.L__profc_isalpha, 8

	.type	.L__profd_isalpha,@object       # @__profd_isalpha
	.section	__llvm_prf_data,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profd_isalpha:
	.quad	-1429966999967671460            # 0xec27bc96fe655b5c
	.quad	1563                            # 0x61b
	.quad	.L__profc_isalpha-.L__profd_isalpha
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_isalpha, 64

	.type	.L__profc_isascii,@object       # @__profc_isascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
.L__profc_isascii:
	.zero	8
	.size	.L__profc_isascii, 8

	.type	.L__profd_isascii,@object       # @__profd_isascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
.L__profd_isascii:
	.quad	-4792250000779744687            # 0xbd7e8203c4a86a51
	.quad	1562                            # 0x61a
	.quad	.L__profc_isascii-.L__profd_isascii
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_isascii, 64

	.type	.L__profc_isblank,@object       # @__profc_isblank
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
.L__profc_isblank:
	.zero	24
	.size	.L__profc_isblank, 24

	.type	.L__profd_isblank,@object       # @__profd_isblank
	.section	__llvm_prf_data,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
.L__profd_isblank:
	.quad	2465200613623135234             # 0x223626e59b14fc02
	.quad	6354911                         # 0x60f7df
	.quad	.L__profc_isblank-.L__profd_isblank
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_isblank, 64

	.type	.L__profc_iscntrl,@object       # @__profc_iscntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profc_iscntrl:
	.zero	24
	.size	.L__profc_iscntrl, 24

	.type	.L__profd_iscntrl,@object       # @__profd_iscntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profd_iscntrl:
	.quad	8897732069425577183             # 0x7b7b182cc8b67cdf
	.quad	6354655                         # 0x60f6df
	.quad	.L__profc_iscntrl-.L__profd_iscntrl
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_iscntrl, 64

	.type	.L__profc_isdigit,@object       # @__profc_isdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profc_isdigit:
	.zero	8
	.size	.L__profc_isdigit, 8

	.type	.L__profd_isdigit,@object       # @__profd_isdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profd_isdigit:
	.quad	3483985654529092453             # 0x30599a7e6cc36b65
	.quad	1563                            # 0x61b
	.quad	.L__profc_isdigit-.L__profd_isdigit
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_isdigit, 64

	.type	.L__profc_isgraph,@object       # @__profc_isgraph
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profc_isgraph:
	.zero	8
	.size	.L__profc_isgraph, 8

	.type	.L__profd_isgraph,@object       # @__profd_isgraph
	.section	__llvm_prf_data,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profd_isgraph:
	.quad	-127227288456547236             # 0xfe3bff7489cfb45c
	.quad	1563                            # 0x61b
	.quad	.L__profc_isgraph-.L__profd_isgraph
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_isgraph, 64

	.type	.L__profc_islower,@object       # @__profc_islower
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
.L__profc_islower:
	.zero	8
	.size	.L__profc_islower, 8

	.type	.L__profd_islower,@object       # @__profd_islower
	.section	__llvm_prf_data,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
.L__profd_islower:
	.quad	7501983819047161697             # 0x681c66894508cf61
	.quad	1563                            # 0x61b
	.quad	.L__profc_islower-.L__profd_islower
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_islower, 64

	.type	.L__profc_isprint,@object       # @__profc_isprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
.L__profc_isprint:
	.zero	8
	.size	.L__profc_isprint, 8

	.type	.L__profd_isprint,@object       # @__profd_isprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
.L__profd_isprint:
	.quad	-7275761640889424986            # 0x9b074d56145f63a6
	.quad	1563                            # 0x61b
	.quad	.L__profc_isprint-.L__profd_isprint
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_isprint, 64

	.type	.L__profc_isspace,@object       # @__profc_isspace
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
.L__profc_isspace:
	.zero	24
	.size	.L__profc_isspace, 24

	.type	.L__profd_isspace,@object       # @__profd_isspace
	.section	__llvm_prf_data,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
.L__profd_isspace:
	.quad	9032360604355461395             # 0x7d59641d39d70113
	.quad	6354907                         # 0x60f7db
	.quad	.L__profc_isspace-.L__profd_isspace
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_isspace, 64

	.type	.L__profc_isupper,@object       # @__profc_isupper
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
.L__profc_isupper:
	.zero	8
	.size	.L__profc_isupper, 8

	.type	.L__profd_isupper,@object       # @__profd_isupper
	.section	__llvm_prf_data,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
.L__profd_isupper:
	.quad	4174714232255583053             # 0x39ef9079c45c934d
	.quad	1563                            # 0x61b
	.quad	.L__profc_isupper-.L__profd_isupper
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_isupper, 64

	.type	.L__profc_iswcntrl,@object      # @__profc_iswcntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profc_iswcntrl:
	.zero	56
	.size	.L__profc_iswcntrl, 56

	.type	.L__profd_iswcntrl,@object      # @__profd_iswcntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profd_iswcntrl:
	.quad	7000259844681188668             # 0x6125eb3d61a7453c
	.quad	106600273393371                 # 0x60f3cf6db6db
	.quad	.L__profc_iswcntrl-.L__profd_iswcntrl
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_iswcntrl, 64

	.type	.L__profc_iswdigit,@object      # @__profc_iswdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profc_iswdigit:
	.zero	8
	.size	.L__profc_iswdigit, 8

	.type	.L__profd_iswdigit,@object      # @__profd_iswdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profd_iswdigit:
	.quad	8583753245428091608             # 0x771f9e1919590ad8
	.quad	1563                            # 0x61b
	.quad	.L__profc_iswdigit-.L__profd_iswdigit
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_iswdigit, 64

	.type	.L__profc_iswprint,@object      # @__profc_iswprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profc_iswprint:
	.zero	80
	.size	.L__profc_iswprint, 80

	.type	.L__profd_iswprint,@object      # @__profd_iswprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profd_iswprint:
	.quad	-719555261641779946             # 0xf603a04d49941516
	.quad	-2566119187471392224            # 0xdc635031e3742220
	.quad	.L__profc_iswprint-.L__profd_iswprint
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	10                              # 0xa
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_iswprint, 64

	.type	.L__profc_iswxdigit,@object     # @__profc_iswxdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profc_iswxdigit:
	.zero	24
	.size	.L__profc_iswxdigit, 24

	.type	.L__profd_iswxdigit,@object     # @__profd_iswxdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profd_iswxdigit:
	.quad	624771703830219826              # 0x8aba28df0840c32
	.quad	6354651                         # 0x60f6db
	.quad	.L__profc_iswxdigit-.L__profd_iswxdigit
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_iswxdigit, 64

	.type	.L__profc_toascii,@object       # @__profc_toascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
.L__profc_toascii:
	.zero	8
	.size	.L__profc_toascii, 8

	.type	.L__profd_toascii,@object       # @__profd_toascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
.L__profd_toascii:
	.quad	4548159975983457080             # 0x3f1e4f66a624a338
	.quad	24                              # 0x18
	.quad	.L__profc_toascii-.L__profd_toascii
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_toascii, 64

	.type	.L__profc_fdim,@object          # @__profc_fdim
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
.L__profc_fdim:
	.zero	32
	.size	.L__profc_fdim, 32

	.type	.L__profd_fdim,@object          # @__profd_fdim
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
.L__profd_fdim:
	.quad	-3545869933759497925            # 0xceca8a150286f93b
	.quad	7369846577040809592             # 0x6646f46a29a55e78
	.quad	.L__profc_fdim-.L__profd_fdim
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_fdim, 64

	.type	.L__profc_fdimf,@object         # @__profc_fdimf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
.L__profc_fdimf:
	.zero	32
	.size	.L__profc_fdimf, 32

	.type	.L__profd_fdimf,@object         # @__profd_fdimf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
.L__profd_fdimf:
	.quad	-1547869627280940664            # 0xea84dcc6634da188
	.quad	7369846577040809592             # 0x6646f46a29a55e78
	.quad	.L__profc_fdimf-.L__profd_fdimf
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_fdimf, 64

	.type	.L__profc_fmax,@object          # @__profc_fmax
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
.L__profc_fmax:
	.zero	48
	.size	.L__profc_fmax, 48

	.type	.L__profd_fmax,@object          # @__profd_fmax
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
.L__profd_fmax:
	.quad	-2423801789625842334            # 0xde5ced1d3b654562
	.quad	3977842549302548673             # 0x373422b91b9cd8c1
	.quad	.L__profc_fmax-.L__profd_fmax
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	6                               # 0x6
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_fmax, 64

	.type	.L__profc_fmaxf,@object         # @__profc_fmaxf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
.L__profc_fmaxf:
	.zero	48
	.size	.L__profc_fmaxf, 48

	.type	.L__profd_fmaxf,@object         # @__profd_fmaxf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
.L__profd_fmaxf:
	.quad	-5134209104457391460            # 0xb8bfa0058e3da29c
	.quad	3977842549302548673             # 0x373422b91b9cd8c1
	.quad	.L__profc_fmaxf-.L__profd_fmaxf
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	6                               # 0x6
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_fmaxf, 64

	.type	.L__profc_fmaxl,@object         # @__profc_fmaxl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
.L__profc_fmaxl:
	.zero	48
	.size	.L__profc_fmaxl, 48

	.type	.L__profd_fmaxl,@object         # @__profd_fmaxl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
.L__profd_fmaxl:
	.quad	-3138580006960380340            # 0xd471861cd1fbc64c
	.quad	3977842549302548673             # 0x373422b91b9cd8c1
	.quad	.L__profc_fmaxl-.L__profd_fmaxl
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	6                               # 0x6
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_fmaxl, 64

	.type	.L__profc_fmin,@object          # @__profc_fmin
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
.L__profc_fmin:
	.zero	48
	.size	.L__profc_fmin, 48

	.type	.L__profd_fmin,@object          # @__profd_fmin
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
.L__profd_fmin:
	.quad	965427315610335377              # 0xd65e3074b69b891
	.quad	3977842549302548673             # 0x373422b91b9cd8c1
	.quad	.L__profc_fmin-.L__profd_fmin
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	6                               # 0x6
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_fmin, 64

	.type	.L__profc_fminf,@object         # @__profc_fminf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
.L__profc_fminf:
	.zero	48
	.size	.L__profc_fminf, 48

	.type	.L__profd_fminf,@object         # @__profd_fminf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
.L__profd_fminf:
	.quad	7710199602704325723             # 0x6b0021b0328c9c5b
	.quad	3977842549302548673             # 0x373422b91b9cd8c1
	.quad	.L__profc_fminf-.L__profd_fminf
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	6                               # 0x6
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_fminf, 64

	.type	.L__profc_fminl,@object         # @__profc_fminl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
.L__profc_fminl:
	.zero	48
	.size	.L__profc_fminl, 48

	.type	.L__profd_fminl,@object         # @__profd_fminl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
.L__profd_fminl:
	.quad	2487418697363824514             # 0x2285162058091f82
	.quad	3977842549302548673             # 0x373422b91b9cd8c1
	.quad	.L__profc_fminl-.L__profd_fminl
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	6                               # 0x6
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_fminl, 64

	.type	.L__profc_l64a,@object          # @__profc_l64a
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
.L__profc_l64a:
	.zero	16
	.size	.L__profc_l64a, 16

	.type	.L__profd_l64a,@object          # @__profd_l64a
	.section	__llvm_prf_data,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
.L__profd_l64a:
	.quad	-6158745991357604691            # 0xaa87bd26bb44dcad
	.quad	17496                           # 0x4458
	.quad	.L__profc_l64a-.L__profd_l64a
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_l64a, 64

	.type	.L__profc_srand,@object         # @__profc_srand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
.L__profc_srand:
	.zero	8
	.size	.L__profc_srand, 8

	.type	.L__profd_srand,@object         # @__profd_srand
	.section	__llvm_prf_data,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
.L__profd_srand:
	.quad	-2085616837322687880            # 0xe30e668959ceba78
	.quad	0                               # 0x0
	.quad	.L__profc_srand-.L__profd_srand
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_srand, 64

	.type	.L__profc_rand,@object          # @__profc_rand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
.L__profc_rand:
	.zero	8
	.size	.L__profc_rand, 8

	.type	.L__profd_rand,@object          # @__profd_rand
	.section	__llvm_prf_data,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
.L__profd_rand:
	.quad	7206085285791387956             # 0x6401286350c3d134
	.quad	24                              # 0x18
	.quad	.L__profc_rand-.L__profd_rand
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_rand, 64

	.type	.L__profc_insque,@object        # @__profc_insque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
.L__profc_insque:
	.zero	24
	.size	.L__profc_insque, 24

	.type	.L__profd_insque,@object        # @__profd_insque
	.section	__llvm_prf_data,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
.L__profd_insque:
	.quad	-5080349535175464041            # 0xb97ef903bd0bab97
	.quad	45786906010769                  # 0x29a49844a491
	.quad	.L__profc_insque-.L__profd_insque
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_insque, 64

	.type	.L__profc_remque,@object        # @__profc_remque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
.L__profc_remque:
	.zero	24
	.size	.L__profc_remque, 24

	.type	.L__profd_remque,@object        # @__profd_remque
	.section	__llvm_prf_data,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
.L__profd_remque:
	.quad	-7214219538753974334            # 0x9be1f18d54e30fc2
	.quad	11043906705                     # 0x29244a491
	.quad	.L__profc_remque-.L__profd_remque
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_remque, 64

	.type	.L__profc_lsearch,@object       # @__profc_lsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
.L__profc_lsearch:
	.zero	24
	.size	.L__profc_lsearch, 24

	.type	.L__profd_lsearch,@object       # @__profd_lsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
.L__profd_lsearch:
	.quad	-7032153342590886098            # 0x9e68c5caf8cb5f2e
	.quad	1245367951758424                # 0x46ca7d2611458
	.quad	.L__profc_lsearch-.L__profd_lsearch
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_lsearch, 64

	.type	.L__profc_lfind,@object         # @__profc_lfind
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
.L__profc_lfind:
	.zero	24
	.size	.L__profc_lfind, 24

	.type	.L__profd_lfind,@object         # @__profd_lfind
	.section	__llvm_prf_data,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
.L__profd_lfind:
	.quad	-6350214982902907667            # 0xa7df811e30b57ced
	.quad	1245367951758424                # 0x46ca7d2611458
	.quad	.L__profc_lfind-.L__profd_lfind
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_lfind, 64

	.type	.L__profc_abs,@object           # @__profc_abs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
.L__profc_abs:
	.zero	16
	.size	.L__profc_abs, 16

	.type	.L__profd_abs,@object           # @__profd_abs
	.section	__llvm_prf_data,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
.L__profd_abs:
	.quad	-238465663743841031             # 0xfcb0ccbe056bacf9
	.quad	99164                           # 0x1835c
	.quad	.L__profc_abs-.L__profd_abs
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_abs, 64

	.type	.L__profc_atoi,@object          # @__profc_atoi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
.L__profc_atoi:
	.zero	56
	.size	.L__profc_atoi, 56

	.type	.L__profd_atoi,@object          # @__profd_atoi
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
.L__profd_atoi:
	.quad	-6544211519801369139            # 0xa52e4a4ba3385dcd
	.quad	638206505195021                 # 0x244720809160d
	.quad	.L__profc_atoi-.L__profd_atoi
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_atoi, 64

	.type	.L__profc_atol,@object          # @__profc_atol
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
.L__profc_atol:
	.zero	56
	.size	.L__profc_atol, 56

	.type	.L__profd_atol,@object          # @__profd_atol
	.section	__llvm_prf_data,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
.L__profd_atol:
	.quad	8236175749196770609             # 0x724cc634ee8f6d31
	.quad	638206505195021                 # 0x244720809160d
	.quad	.L__profc_atol-.L__profd_atol
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_atol, 64

	.type	.L__profc_atoll,@object         # @__profc_atoll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
.L__profc_atoll:
	.zero	56
	.size	.L__profc_atoll, 56

	.type	.L__profd_atoll,@object         # @__profd_atoll
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
.L__profd_atoll:
	.quad	3653807471789013357             # 0x32b4ee8971a6f96d
	.quad	638206505195021                 # 0x244720809160d
	.quad	.L__profc_atoll-.L__profd_atoll
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_atoll, 64

	.type	.L__profc_bsearch,@object       # @__profc_bsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
.L__profc_bsearch:
	.zero	32
	.size	.L__profc_bsearch, 32

	.type	.L__profd_bsearch,@object       # @__profd_bsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
.L__profd_bsearch:
	.quad	8750110911118262334             # 0x796ea3837a79403e
	.quad	-852542619444921222             # 0xf42b29012c1abc7a
	.quad	.L__profc_bsearch-.L__profd_bsearch
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_bsearch, 64

	.type	.L__profc_bsearch_r,@object     # @__profc_bsearch_r
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
.L__profc_bsearch_r:
	.zero	32
	.size	.L__profc_bsearch_r, 32

	.type	.L__profd_bsearch_r,@object     # @__profd_bsearch_r
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
.L__profd_bsearch_r:
	.quad	1417097008757763708             # 0x13aa8a38ab466e7c
	.quad	1259382983000112142             # 0x117a3a2689e4bc0e
	.quad	.L__profc_bsearch_r-.L__profd_bsearch_r
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_bsearch_r, 64

	.type	.L__profc_div,@object           # @__profc_div
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_div
	.p2align	3, 0x0
.L__profc_div:
	.zero	8
	.size	.L__profc_div, 8

	.type	.L__profd_div,@object           # @__profd_div
	.section	__llvm_prf_data,"awG",@progbits,__profc_div
	.p2align	3, 0x0
.L__profd_div:
	.quad	5497092892325669176             # 0x4c4998dc58656938
	.quad	24                              # 0x18
	.quad	.L__profc_div-.L__profd_div
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_div, 64

	.type	.L__profc_imaxabs,@object       # @__profc_imaxabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profc_imaxabs:
	.zero	16
	.size	.L__profc_imaxabs, 16

	.type	.L__profd_imaxabs,@object       # @__profd_imaxabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profd_imaxabs:
	.quad	8946668544180752025             # 0x7c28f3a3b30e0e99
	.quad	99164                           # 0x1835c
	.quad	.L__profc_imaxabs-.L__profd_imaxabs
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_imaxabs, 64

	.type	.L__profc_imaxdiv,@object       # @__profc_imaxdiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
.L__profc_imaxdiv:
	.zero	8
	.size	.L__profc_imaxdiv, 8

	.type	.L__profd_imaxdiv,@object       # @__profd_imaxdiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
.L__profd_imaxdiv:
	.quad	-3928426486442246988            # 0xc97b6cec9d5fbcb4
	.quad	24                              # 0x18
	.quad	.L__profc_imaxdiv-.L__profd_imaxdiv
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_imaxdiv, 64

	.type	.L__profc_labs,@object          # @__profc_labs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
.L__profc_labs:
	.zero	16
	.size	.L__profc_labs, 16

	.type	.L__profd_labs,@object          # @__profd_labs
	.section	__llvm_prf_data,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
.L__profd_labs:
	.quad	-7118441263952323418            # 0x9d363762b3a39ca6
	.quad	99164                           # 0x1835c
	.quad	.L__profc_labs-.L__profd_labs
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_labs, 64

	.type	.L__profc_ldiv,@object          # @__profc_ldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
.L__profc_ldiv:
	.zero	8
	.size	.L__profc_ldiv, 8

	.type	.L__profd_ldiv,@object          # @__profd_ldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
.L__profd_ldiv:
	.quad	7149836041034155625             # 0x633951ff74204669
	.quad	24                              # 0x18
	.quad	.L__profc_ldiv-.L__profd_ldiv
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_ldiv, 64

	.type	.L__profc_llabs,@object         # @__profc_llabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
.L__profc_llabs:
	.zero	16
	.size	.L__profc_llabs, 16

	.type	.L__profd_llabs,@object         # @__profd_llabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
.L__profd_llabs:
	.quad	7684789126781046466             # 0x6aa5dafebb918ec2
	.quad	99164                           # 0x1835c
	.quad	.L__profc_llabs-.L__profd_llabs
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_llabs, 64

	.type	.L__profc_lldiv,@object         # @__profc_lldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
.L__profc_lldiv:
	.zero	8
	.size	.L__profc_lldiv, 8

	.type	.L__profd_lldiv,@object         # @__profd_lldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
.L__profd_lldiv:
	.quad	-5329156747615108898            # 0xb60b082c520680de
	.quad	24                              # 0x18
	.quad	.L__profc_lldiv-.L__profd_lldiv
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_lldiv, 64

	.type	.L__profc_wcschr,@object        # @__profc_wcschr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profc_wcschr:
	.zero	40
	.size	.L__profc_wcschr, 40

	.type	.L__profd_wcschr,@object        # @__profd_wcschr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profd_wcschr:
	.quad	-2279810736707830048            # 0xe05c7c36c3687ee0
	.quad	4538308109                      # 0x10e81160d
	.quad	.L__profc_wcschr-.L__profd_wcschr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_wcschr, 64

	.type	.L__profc_wcscmp,@object        # @__profc_wcscmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profc_wcscmp:
	.zero	56
	.size	.L__profc_wcscmp, 56

	.type	.L__profd_wcscmp,@object        # @__profd_wcscmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profd_wcscmp:
	.quad	-3710185595167438704            # 0xcc82c5dbcd460890
	.quad	1188468208228060                # 0x438e7d160d6dc
	.quad	.L__profc_wcscmp-.L__profd_wcscmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_wcscmp, 64

	.type	.L__profc_wcscpy,@object        # @__profc_wcscpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profc_wcscpy:
	.zero	16
	.size	.L__profc_wcscpy, 16

	.type	.L__profd_wcscpy,@object        # @__profd_wcscpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profd_wcscpy:
	.quad	-8381368184235816342            # 0x8baf660af6dd0a6a
	.quad	9304                            # 0x2458
	.quad	.L__profc_wcscpy-.L__profd_wcscpy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_wcscpy, 64

	.type	.L__profc_wcslen,@object        # @__profc_wcslen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
.L__profc_wcslen:
	.zero	16
	.size	.L__profc_wcslen, 16

	.type	.L__profd_wcslen,@object        # @__profd_wcslen
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
.L__profd_wcslen:
	.quad	3988408974905483574             # 0x3759acd4c838a136
	.quad	17496                           # 0x4458
	.quad	.L__profc_wcslen-.L__profd_wcslen
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_wcslen, 64

	.type	.L__profc_wcsncmp,@object       # @__profc_wcsncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profc_wcsncmp:
	.zero	80
	.size	.L__profc_wcsncmp, 80

	.type	.L__profd_wcsncmp,@object       # @__profd_wcsncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profd_wcsncmp:
	.quad	-5425166749483878188            # 0xb4b5ef95c9c0b8d4
	.quad	6710790269995215964             # 0x5d218431fd366c5c
	.quad	.L__profc_wcsncmp-.L__profd_wcsncmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	10                              # 0xa
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_wcsncmp, 64

	.type	.L__profc_wmemchr,@object       # @__profc_wmemchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profc_wmemchr:
	.zero	40
	.size	.L__profc_wmemchr, 40

	.type	.L__profd_wmemchr,@object       # @__profd_wmemchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profd_wmemchr:
	.quad	-150916099757221660             # 0xfde7d69b5b1558e4
	.quad	4538308109                      # 0x10e81160d
	.quad	.L__profc_wmemchr-.L__profd_wmemchr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_wmemchr, 64

	.type	.L__profc_wmemcmp,@object       # @__profc_wmemcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profc_wmemcmp:
	.zero	48
	.size	.L__profc_wmemcmp, 48

	.type	.L__profd_wmemcmp,@object       # @__profd_wmemcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profd_wmemcmp:
	.quad	5386172057678365784             # 0x4abf86f3050dc458
	.quad	1189621521503964                # 0x439f45834d6dc
	.quad	.L__profc_wmemcmp-.L__profd_wmemcmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	6                               # 0x6
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_wmemcmp, 64

	.type	.L__profc_wmemcpy,@object       # @__profc_wmemcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
.L__profc_wmemcpy:
	.zero	16
	.size	.L__profc_wmemcpy, 16

	.type	.L__profd_wmemcpy,@object       # @__profd_wmemcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
.L__profd_wmemcpy:
	.quad	7326050423799855187             # 0x65ab5c0b9d30b853
	.quad	9304                            # 0x2458
	.quad	.L__profc_wmemcpy-.L__profd_wmemcpy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_wmemcpy, 64

	.type	.L__profc_wmemmove,@object      # @__profc_wmemmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profc_wmemmove:
	.zero	40
	.size	.L__profc_wmemmove, 40

	.type	.L__profd_wmemmove,@object      # @__profd_wmemmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profd_wmemmove:
	.quad	-4659407939446788683            # 0xbf56752a69a3adb5
	.quad	-1500206092990891740            # 0xeb2e3281c166b924
	.quad	.L__profc_wmemmove-.L__profd_wmemmove
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_wmemmove, 64

	.type	.L__profc_wmemset,@object       # @__profc_wmemset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profc_wmemset:
	.zero	16
	.size	.L__profc_wmemset, 16

	.type	.L__profd_wmemset,@object       # @__profd_wmemset
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profd_wmemset:
	.quad	-8291142148468431281            # 0x8ceff224f245264f
	.quad	9304                            # 0x2458
	.quad	.L__profc_wmemset-.L__profd_wmemset
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_wmemset, 64

	.type	.L__profc_bcopy,@object         # @__profc_bcopy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profc_bcopy:
	.zero	40
	.size	.L__profc_bcopy, 40

	.type	.L__profd_bcopy,@object         # @__profd_bcopy
	.section	__llvm_prf_data,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profd_bcopy:
	.quad	-8407331144368071880            # 0x8b5328de3edcdb38
	.quad	5234109875325077019             # 0x48a34b333a1d861b
	.quad	.L__profc_bcopy-.L__profd_bcopy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_bcopy, 64

	.type	.L__profc_rotl64,@object        # @__profc_rotl64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profc_rotl64:
	.zero	8
	.size	.L__profc_rotl64, 8

	.type	.L__profd_rotl64,@object        # @__profd_rotl64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profd_rotl64:
	.quad	4714666614722164144             # 0x416ddc4e84e875b0
	.quad	24                              # 0x18
	.quad	.L__profc_rotl64-.L__profd_rotl64
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_rotl64, 64

	.type	.L__profc_rotr64,@object        # @__profc_rotr64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profc_rotr64:
	.zero	8
	.size	.L__profc_rotr64, 8

	.type	.L__profd_rotr64,@object        # @__profd_rotr64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profd_rotr64:
	.quad	-8427642833712987187            # 0x8b0aff7e8aabc3cd
	.quad	24                              # 0x18
	.quad	.L__profc_rotr64-.L__profd_rotr64
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_rotr64, 64

	.type	.L__profc_rotl32,@object        # @__profc_rotl32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profc_rotl32:
	.zero	8
	.size	.L__profc_rotl32, 8

	.type	.L__profd_rotl32,@object        # @__profd_rotl32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profd_rotl32:
	.quad	6417704780586152324             # 0x5910447ed829f184
	.quad	24                              # 0x18
	.quad	.L__profc_rotl32-.L__profd_rotl32
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_rotl32, 64

	.type	.L__profc_rotr32,@object        # @__profc_rotr32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profc_rotr32:
	.zero	8
	.size	.L__profc_rotr32, 8

	.type	.L__profd_rotr32,@object        # @__profd_rotr32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profd_rotr32:
	.quad	-5668908084823466940            # 0xb153fe21cbc1dc44
	.quad	24                              # 0x18
	.quad	.L__profc_rotr32-.L__profd_rotr32
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_rotr32, 64

	.type	.L__profc_rotl_sz,@object       # @__profc_rotl_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profc_rotl_sz:
	.zero	8
	.size	.L__profc_rotl_sz, 8

	.type	.L__profd_rotl_sz,@object       # @__profd_rotl_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profd_rotl_sz:
	.quad	-3686623714176605670            # 0xccd67b43b7f8e21a
	.quad	24                              # 0x18
	.quad	.L__profc_rotl_sz-.L__profd_rotl_sz
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_rotl_sz, 64

	.type	.L__profc_rotr_sz,@object       # @__profc_rotr_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profc_rotr_sz:
	.zero	8
	.size	.L__profc_rotr_sz, 8

	.type	.L__profd_rotr_sz,@object       # @__profd_rotr_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profd_rotr_sz:
	.quad	3415499704483829380             # 0x2f664ae29835d684
	.quad	24                              # 0x18
	.quad	.L__profc_rotr_sz-.L__profd_rotr_sz
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_rotr_sz, 64

	.type	.L__profc_rotl16,@object        # @__profc_rotl16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profc_rotl16:
	.zero	8
	.size	.L__profc_rotl16, 8

	.type	.L__profd_rotl16,@object        # @__profd_rotl16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profd_rotl16:
	.quad	7327166975465201445             # 0x65af538b0e939f25
	.quad	24                              # 0x18
	.quad	.L__profc_rotl16-.L__profd_rotl16
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_rotl16, 64

	.type	.L__profc_rotr16,@object        # @__profc_rotr16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profc_rotr16:
	.zero	8
	.size	.L__profc_rotr16, 8

	.type	.L__profd_rotr16,@object        # @__profd_rotr16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profd_rotr16:
	.quad	5274763753728838268             # 0x4933b9afe71d0a7c
	.quad	24                              # 0x18
	.quad	.L__profc_rotr16-.L__profd_rotr16
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_rotr16, 64

	.type	.L__profc_rotl8,@object         # @__profc_rotl8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profc_rotl8:
	.zero	8
	.size	.L__profc_rotl8, 8

	.type	.L__profd_rotl8,@object         # @__profd_rotl8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profd_rotl8:
	.quad	4408423234350850624             # 0x3d2ddd93270fa240
	.quad	24                              # 0x18
	.quad	.L__profc_rotl8-.L__profd_rotl8
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_rotl8, 64

	.type	.L__profc_rotr8,@object         # @__profc_rotr8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profc_rotr8:
	.zero	8
	.size	.L__profc_rotr8, 8

	.type	.L__profd_rotr8,@object         # @__profd_rotr8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profd_rotr8:
	.quad	-6535801773217052896            # 0xa54c2aea59078720
	.quad	24                              # 0x18
	.quad	.L__profc_rotr8-.L__profd_rotr8
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_rotr8, 64

	.type	.L__profc_bswap_16,@object      # @__profc_bswap_16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profc_bswap_16:
	.zero	8
	.size	.L__profc_bswap_16, 8

	.type	.L__profd_bswap_16,@object      # @__profd_bswap_16
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profd_bswap_16:
	.quad	-8870828063230114195            # 0x84e47ce04b9a466d
	.quad	24                              # 0x18
	.quad	.L__profc_bswap_16-.L__profd_bswap_16
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_bswap_16, 64

	.type	.L__profc_bswap_32,@object      # @__profc_bswap_32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profc_bswap_32:
	.zero	8
	.size	.L__profc_bswap_32, 8

	.type	.L__profd_bswap_32,@object      # @__profd_bswap_32
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profd_bswap_32:
	.quad	7304833549461180700             # 0x655ffb691afd511c
	.quad	24                              # 0x18
	.quad	.L__profc_bswap_32-.L__profd_bswap_32
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_bswap_32, 64

	.type	.L__profc_bswap_64,@object      # @__profc_bswap_64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profc_bswap_64:
	.zero	8
	.size	.L__profc_bswap_64, 8

	.type	.L__profd_bswap_64,@object      # @__profd_bswap_64
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profd_bswap_64:
	.quad	2873856403134720854             # 0x27e1fd2c1c53ab56
	.quad	24                              # 0x18
	.quad	.L__profc_bswap_64-.L__profd_bswap_64
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_bswap_64, 64

	.type	.L__profc_ffs,@object           # @__profc_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
.L__profc_ffs:
	.zero	24
	.size	.L__profc_ffs, 24

	.type	.L__profd_ffs,@object           # @__profd_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
.L__profd_ffs:
	.quad	9222170723057548859             # 0x7ffbbb6955da3e3b
	.quad	19458657686616                  # 0x11b292611458
	.quad	.L__profc_ffs-.L__profd_ffs
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_ffs, 64

	.type	.L__profc_libiberty_ffs,@object # @__profc_libiberty_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profc_libiberty_ffs:
	.zero	24
	.size	.L__profc_libiberty_ffs, 24

	.type	.L__profd_libiberty_ffs,@object # @__profd_libiberty_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profd_libiberty_ffs:
	.quad	65216057573358521               # 0xe7b1a8a94fbbb9
	.quad	2952352215704664                # 0xa7d261111a458
	.quad	.L__profc_libiberty_ffs-.L__profd_libiberty_ffs
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_libiberty_ffs, 64

	.type	.L__profc_gl_isinff,@object     # @__profc_gl_isinff
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
.L__profc_gl_isinff:
	.zero	24
	.size	.L__profc_gl_isinff, 24

	.type	.L__profd_gl_isinff,@object     # @__profd_gl_isinff
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
.L__profd_gl_isinff:
	.quad	6535010584615638394             # 0x5ab10580b36ed57a
	.quad	6354652                         # 0x60f6dc
	.quad	.L__profc_gl_isinff-.L__profd_gl_isinff
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_gl_isinff, 64

	.type	.L__profc_gl_isinfd,@object     # @__profc_gl_isinfd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
.L__profc_gl_isinfd:
	.zero	24
	.size	.L__profc_gl_isinfd, 24

	.type	.L__profd_gl_isinfd,@object     # @__profd_gl_isinfd
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
.L__profd_gl_isinfd:
	.quad	-9165907066207032774            # 0x80cc28161a7caa3a
	.quad	6354652                         # 0x60f6dc
	.quad	.L__profc_gl_isinfd-.L__profd_gl_isinfd
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_gl_isinfd, 64

	.type	.L__profc_gl_isinfl,@object     # @__profc_gl_isinfl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
.L__profc_gl_isinfl:
	.zero	24
	.size	.L__profc_gl_isinfl, 24

	.type	.L__profd_gl_isinfl,@object     # @__profd_gl_isinfl
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
.L__profd_gl_isinfl:
	.quad	4731159788068304891             # 0x41a874c2af6c77fb
	.quad	6354652                         # 0x60f6dc
	.quad	.L__profc_gl_isinfl-.L__profd_gl_isinfl
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_gl_isinfl, 64

	.type	.L__profc__Qp_itoq,@object      # @__profc__Qp_itoq
	.section	__llvm_prf_cnts,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
.L__profc__Qp_itoq:
	.zero	8
	.size	.L__profc__Qp_itoq, 8

	.type	.L__profd__Qp_itoq,@object      # @__profd__Qp_itoq
	.section	__llvm_prf_data,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
.L__profd__Qp_itoq:
	.quad	-3858125999267273921            # 0xca752ed84af9a33f
	.quad	0                               # 0x0
	.quad	.L__profc__Qp_itoq-.L__profd__Qp_itoq
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd__Qp_itoq, 64

	.type	.L__profc_ldexpf,@object        # @__profc_ldexpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
.L__profc_ldexpf:
	.zero	64
	.size	.L__profc_ldexpf, 64

	.type	.L__profd_ldexpf,@object        # @__profd_ldexpf
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
.L__profd_ldexpf:
	.quad	-2560632889718296859            # 0xdc76cdf42028aee5
	.quad	-2048372819454505383            # 0xe392b7c600d94e59
	.quad	.L__profc_ldexpf-.L__profd_ldexpf
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	8                               # 0x8
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_ldexpf, 64

	.type	.L__profc_ldexp,@object         # @__profc_ldexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
.L__profc_ldexp:
	.zero	64
	.size	.L__profc_ldexp, 64

	.type	.L__profd_ldexp,@object         # @__profd_ldexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
.L__profd_ldexp:
	.quad	-240549059163932437             # 0xfca965e7b97ab8eb
	.quad	-2048372819454505383            # 0xe392b7c600d94e59
	.quad	.L__profc_ldexp-.L__profd_ldexp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	8                               # 0x8
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_ldexp, 64

	.type	.L__profc_ldexpl,@object        # @__profc_ldexpl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
.L__profc_ldexpl:
	.zero	64
	.size	.L__profc_ldexpl, 64

	.type	.L__profd_ldexpl,@object        # @__profd_ldexpl
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
.L__profd_ldexpl:
	.quad	-5097262943286299417            # 0xb942e25c0aa874e7
	.quad	-2048372819454505383            # 0xe392b7c600d94e59
	.quad	.L__profc_ldexpl-.L__profd_ldexpl
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	8                               # 0x8
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_ldexpl, 64

	.type	.L__profc_memxor,@object        # @__profc_memxor
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
.L__profc_memxor:
	.zero	16
	.size	.L__profc_memxor, 16

	.type	.L__profd_memxor,@object        # @__profd_memxor
	.section	__llvm_prf_data,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
.L__profd_memxor:
	.quad	-8368025376422999318            # 0x8bdecd417eda4aea
	.quad	1164376                         # 0x11c458
	.quad	.L__profc_memxor-.L__profd_memxor
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_memxor, 64

	.type	.L__profc_strncat,@object       # @__profc_strncat
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
.L__profc_strncat:
	.zero	40
	.size	.L__profc_strncat, 40

	.type	.L__profd_strncat,@object       # @__profd_strncat
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
.L__profd_strncat:
	.quad	-3582483947543505905            # 0xce4875d49d21540f
	.quad	76123606467028056               # 0x10e72044a7d2458
	.quad	.L__profc_strncat-.L__profd_strncat
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_strncat, 64

	.type	.L__profc_strnlen,@object       # @__profc_strnlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profc_strnlen:
	.zero	32
	.size	.L__profc_strnlen, 32

	.type	.L__profd_strnlen,@object       # @__profd_strnlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profd_strnlen:
	.quad	517590790318988421              # 0x72eda14dbfa1c85
	.quad	4537021528                      # 0x10e6d7458
	.quad	.L__profc_strnlen-.L__profd_strnlen
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_strnlen, 64

	.type	.L__profc_strpbrk,@object       # @__profc_strpbrk
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profc_strpbrk:
	.zero	32
	.size	.L__profc_strpbrk, 32

	.type	.L__profd_strpbrk,@object       # @__profd_strpbrk
	.section	__llvm_prf_data,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profd_strpbrk:
	.quad	-6867074718569872870            # 0xa0b33fed4193c21a
	.quad	-4444802448421279214            # 0xc250e3b905102a12
	.quad	.L__profc_strpbrk-.L__profd_strpbrk
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_strpbrk, 64

	.type	.L__profc_strrchr,@object       # @__profc_strrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profc_strrchr:
	.zero	24
	.size	.L__profc_strrchr, 24

	.type	.L__profd_strrchr,@object       # @__profd_strrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profd_strrchr:
	.quad	5307837722043833871             # 0x49a93a493bd75e0f
	.quad	217420731480                    # 0x329f491458
	.quad	.L__profc_strrchr-.L__profd_strrchr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_strrchr, 64

	.type	.L__profc_strstr,@object        # @__profc_strstr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
.L__profc_strstr:
	.zero	32
	.size	.L__profc_strstr, 32

	.type	.L__profd_strstr,@object        # @__profd_strstr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
.L__profd_strstr:
	.quad	3560562421867190603             # 0x3169a8a873ff994b
	.quad	-7798267876297541628            # 0x93c6fcaef9f1f804
	.quad	.L__profc_strstr-.L__profd_strstr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_strstr, 64

	.type	.L__profc_copysign,@object      # @__profc_copysign
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
.L__profc_copysign:
	.zero	56
	.size	.L__profc_copysign, 56

	.type	.L__profd_copysign,@object      # @__profd_copysign
	.section	__llvm_prf_data,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
.L__profd_copysign:
	.quad	-9076603418344796971            # 0x82096d47ea764cd5
	.quad	4200982705386070127             # 0x3a4ce3834618a06f
	.quad	.L__profc_copysign-.L__profd_copysign
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_copysign, 64

	.type	.L__profc_memmem,@object        # @__profc_memmem
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
.L__profc_memmem:
	.zero	56
	.size	.L__profc_memmem, 56

	.type	.L__profd_memmem,@object        # @__profd_memmem
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
.L__profd_memmem:
	.quad	-7485463843177831536            # 0x981e4a4b585ae390
	.quad	5508063777036862020             # 0x4c7092d27e7a8244
	.quad	.L__profc_memmem-.L__profd_memmem
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_memmem, 64

	.type	.L__profc_mempcpy,@object       # @__profc_mempcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
.L__profc_mempcpy:
	.zero	8
	.size	.L__profc_mempcpy, 8

	.type	.L__profd_mempcpy,@object       # @__profd_mempcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
.L__profd_mempcpy:
	.quad	-722907995699078206             # 0xf5f7b7020f111bc2
	.quad	24                              # 0x18
	.quad	.L__profc_mempcpy-.L__profd_mempcpy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_mempcpy, 64

	.type	.L__profc_frexp,@object         # @__profc_frexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
.L__profc_frexp:
	.zero	72
	.size	.L__profc_frexp, 72

	.type	.L__profd_frexp,@object         # @__profd_frexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
.L__profd_frexp:
	.quad	-2997169543230593137            # 0xd667ea2e1c1ee78f
	.quad	-2373782428686282824            # 0xdf0ea1753c170fb8
	.quad	.L__profc_frexp-.L__profd_frexp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	9                               # 0x9
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_frexp, 64

	.type	.L__profc___muldi3,@object      # @__profc___muldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profc___muldi3:
	.zero	24
	.size	.L__profc___muldi3, 24

	.type	.L__profd___muldi3,@object      # @__profd___muldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profd___muldi3:
	.quad	3987271357918321816             # 0x3755a22cafcf9c98
	.quad	2320045144                      # 0x8a491458
	.quad	.L__profc___muldi3-.L__profd___muldi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___muldi3, 64

	.type	.L__profc_udivmodsi4,@object    # @__profc_udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profc_udivmodsi4:
	.zero	72
	.size	.L__profc_udivmodsi4, 72

	.type	.L__profd_udivmodsi4,@object    # @__profd_udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profd_udivmodsi4:
	.quad	4670832108574850701             # 0x40d2210e3d17be8d
	.quad	842736872197088594              # 0xbb200b8626e6552
	.quad	.L__profc_udivmodsi4-.L__profd_udivmodsi4
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	9                               # 0x9
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd_udivmodsi4, 64

	.type	.L__profc___clrsbqi2,@object    # @__profc___clrsbqi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profc___clrsbqi2:
	.zero	24
	.size	.L__profc___clrsbqi2, 24

	.type	.L__profd___clrsbqi2,@object    # @__profd___clrsbqi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profd___clrsbqi2:
	.quad	-7858138078702729622            # 0x92f2490d36f4066a
	.quad	187824153796641880              # 0x29b49129f498458
	.quad	.L__profc___clrsbqi2-.L__profd___clrsbqi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___clrsbqi2, 64

	.type	.L__profc___clrsbdi2,@object    # @__profc___clrsbdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profc___clrsbdi2:
	.zero	24
	.size	.L__profc___clrsbdi2, 24

	.type	.L__profd___clrsbdi2,@object    # @__profd___clrsbdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profd___clrsbdi2:
	.quad	-1533375985051215657            # 0xeab85aaa6fe858d7
	.quad	187824153796641880              # 0x29b49129f498458
	.quad	.L__profc___clrsbdi2-.L__profd___clrsbdi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___clrsbdi2, 64

	.type	.L__profc___mulsi3,@object      # @__profc___mulsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profc___mulsi3:
	.zero	24
	.size	.L__profc___mulsi3, 24

	.type	.L__profd___mulsi3,@object      # @__profd___mulsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profd___mulsi3:
	.quad	5127670123023436031             # 0x472924cf303208ff
	.quad	2320045144                      # 0x8a491458
	.quad	.L__profc___mulsi3-.L__profd___mulsi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___mulsi3, 64

	.type	.L__profc___cmovd,@object       # @__profc___cmovd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profc___cmovd:
	.zero	56
	.size	.L__profc___cmovd, 56

	.type	.L__profd___cmovd,@object       # @__profd___cmovd
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profd___cmovd:
	.quad	1458405851566781960             # 0x143d4c6520fd3608
	.quad	-6411111704588201945            # 0xa70727df48abd027
	.quad	.L__profc___cmovd-.L__profd___cmovd
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___cmovd, 64

	.type	.L__profc___cmovh,@object       # @__profc___cmovh
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profc___cmovh:
	.zero	56
	.size	.L__profc___cmovh, 56

	.type	.L__profd___cmovh,@object       # @__profd___cmovh
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profd___cmovh:
	.quad	-1240290101804783090            # 0xeec99ab9477e2a0e
	.quad	3130117398598530023             # 0x2b706930a0bc33e7
	.quad	.L__profc___cmovh-.L__profd___cmovh
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___cmovh, 64

	.type	.L__profc___cmovw,@object       # @__profc___cmovw
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profc___cmovw:
	.zero	56
	.size	.L__profc___cmovw, 56

	.type	.L__profd___cmovw,@object       # @__profd___cmovw
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profd___cmovw:
	.quad	-6631700889337257300            # 0xa3f7772d6a6922ac
	.quad	-6411111704588201945            # 0xa70727df48abd027
	.quad	.L__profc___cmovw-.L__profd___cmovw
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___cmovw, 64

	.type	.L__profc___modi,@object        # @__profc___modi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
.L__profc___modi:
	.zero	8
	.size	.L__profc___modi, 8

	.type	.L__profd___modi,@object        # @__profd___modi
	.section	__llvm_prf_data,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
.L__profd___modi:
	.quad	4130297501716739761             # 0x3951c3b1ce8276b1
	.quad	24                              # 0x18
	.quad	.L__profc___modi-.L__profd___modi
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___modi, 64

	.type	.L__profc___uitod,@object       # @__profc___uitod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
.L__profc___uitod:
	.zero	8
	.size	.L__profc___uitod, 8

	.type	.L__profd___uitod,@object       # @__profd___uitod
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
.L__profd___uitod:
	.quad	-3793169221884876252            # 0xcb5bf4b0949b6a24
	.quad	24                              # 0x18
	.quad	.L__profc___uitod-.L__profd___uitod
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___uitod, 64

	.type	.L__profc___uitof,@object       # @__profc___uitof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
.L__profc___uitof:
	.zero	8
	.size	.L__profc___uitof, 8

	.type	.L__profd___uitof,@object       # @__profd___uitof
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
.L__profd___uitof:
	.quad	2684105554667313846             # 0x253fdbc7ed991ab6
	.quad	24                              # 0x18
	.quad	.L__profc___uitof-.L__profd___uitof
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___uitof, 64

	.type	.L__profc___ulltod,@object      # @__profc___ulltod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
.L__profc___ulltod:
	.zero	8
	.size	.L__profc___ulltod, 8

	.type	.L__profd___ulltod,@object      # @__profd___ulltod
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
.L__profd___ulltod:
	.quad	3995277539005434566             # 0x377213c0fb840ac6
	.quad	24                              # 0x18
	.quad	.L__profc___ulltod-.L__profd___ulltod
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___ulltod, 64

	.type	.L__profc___ulltof,@object      # @__profc___ulltof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
.L__profc___ulltof:
	.zero	8
	.size	.L__profc___ulltof, 8

	.type	.L__profd___ulltof,@object      # @__profd___ulltof
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
.L__profd___ulltof:
	.quad	-1906554817873249395            # 0xe58a8e7e97dafb8d
	.quad	24                              # 0x18
	.quad	.L__profc___ulltof-.L__profd___ulltof
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___ulltof, 64

	.type	.L__profc___umodi,@object       # @__profc___umodi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
.L__profc___umodi:
	.zero	8
	.size	.L__profc___umodi, 8

	.type	.L__profd___umodi,@object       # @__profd___umodi
	.section	__llvm_prf_data,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
.L__profd___umodi:
	.quad	6154071623751134202             # 0x5567a7893fff6bfa
	.quad	24                              # 0x18
	.quad	.L__profc___umodi-.L__profd___umodi
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___umodi, 64

	.type	.L__profc___clzhi2,@object      # @__profc___clzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profc___clzhi2:
	.zero	24
	.size	.L__profc___clzhi2, 24

	.type	.L__profd___clzhi2,@object      # @__profd___clzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profd___clzhi2:
	.quad	-9221703320275173474            # 0x8005edb05af53f9e
	.quad	19458657162328                  # 0x11b292591458
	.quad	.L__profc___clzhi2-.L__profd___clzhi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___clzhi2, 64

	.type	.L__profc___ctzhi2,@object      # @__profc___ctzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profc___ctzhi2:
	.zero	24
	.size	.L__profc___ctzhi2, 24

	.type	.L__profd___ctzhi2,@object      # @__profd___ctzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profd___ctzhi2:
	.quad	-1569202989881991136            # 0xea391231d79a6020
	.quad	19458657162328                  # 0x11b292591458
	.quad	.L__profc___ctzhi2-.L__profd___ctzhi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___ctzhi2, 64

	.type	.L__profc___fixunssfsi,@object  # @__profc___fixunssfsi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
.L__profc___fixunssfsi:
	.zero	16
	.size	.L__profc___fixunssfsi, 16

	.type	.L__profd___fixunssfsi,@object  # @__profd___fixunssfsi
	.section	__llvm_prf_data,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
.L__profd___fixunssfsi:
	.quad	-7800469359816066749            # 0x93bf2a7226d83943
	.quad	11245552728                     # 0x29e498458
	.quad	.L__profc___fixunssfsi-.L__profd___fixunssfsi
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___fixunssfsi, 64

	.type	.L__profc___parityhi2,@object   # @__profc___parityhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profc___parityhi2:
	.zero	24
	.size	.L__profc___parityhi2, 24

	.type	.L__profd___parityhi2,@object   # @__profd___parityhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profd___parityhi2:
	.quad	1203893203113466329             # 0x10b5167d5f15d9d9
	.quad	304041497688                    # 0x46ca491458
	.quad	.L__profc___parityhi2-.L__profd___parityhi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___parityhi2, 64

	.type	.L__profc___popcounthi2,@object # @__profc___popcounthi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profc___popcounthi2:
	.zero	24
	.size	.L__profc___popcounthi2, 24

	.type	.L__profd___popcounthi2,@object # @__profd___popcounthi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profd___popcounthi2:
	.quad	3943219574947026310             # 0x36b9214fb4159586
	.quad	304041497688                    # 0x46ca491458
	.quad	.L__profc___popcounthi2-.L__profd___popcounthi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___popcounthi2, 64

	.type	.L__profc___mulsi3_iq2000,@object # @__profc___mulsi3_iq2000
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profc___mulsi3_iq2000:
	.zero	24
	.size	.L__profc___mulsi3_iq2000, 24

	.type	.L__profd___mulsi3_iq2000,@object # @__profd___mulsi3_iq2000
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profd___mulsi3_iq2000:
	.quad	-3976353352410196972            # 0xc8d127b190281414
	.quad	171971253336                    # 0x280a491458
	.quad	.L__profc___mulsi3_iq2000-.L__profd___mulsi3_iq2000
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___mulsi3_iq2000, 64

	.type	.L__profc___mulsi3_lm32,@object # @__profc___mulsi3_lm32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profc___mulsi3_lm32:
	.zero	32
	.size	.L__profc___mulsi3_lm32, 32

	.type	.L__profd___mulsi3_lm32,@object # @__profd___mulsi3_lm32
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profd___mulsi3_lm32:
	.quad	2775651425054705869             # 0x26851843dab148cd
	.quad	-6210685127595396365            # 0xa9cf36c835dff2f3
	.quad	.L__profc___mulsi3_lm32-.L__profd___mulsi3_lm32
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___mulsi3_lm32, 64

	.type	.L__profc___udivmodsi4,@object  # @__profc___udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profc___udivmodsi4:
	.zero	72
	.size	.L__profc___udivmodsi4, 72

	.type	.L__profd___udivmodsi4,@object  # @__profd___udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profd___udivmodsi4:
	.quad	-6720389007632434094            # 0xa2bc61cdbfa0fc52
	.quad	842736872197088594              # 0xbb200b8626e6552
	.quad	.L__profc___udivmodsi4-.L__profd___udivmodsi4
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	9                               # 0x9
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___udivmodsi4, 64

	.type	.L__profc___mspabi_cmpf,@object # @__profc___mspabi_cmpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
.L__profc___mspabi_cmpf:
	.zero	24
	.size	.L__profc___mspabi_cmpf, 24

	.type	.L__profd___mspabi_cmpf,@object # @__profd___mspabi_cmpf
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
.L__profd___mspabi_cmpf:
	.quad	6399771733438470391             # 0x58d08e7bef2f98f7
	.quad	1352614535537600836             # 0x12c573c0ecbfa944
	.quad	.L__profc___mspabi_cmpf-.L__profd___mspabi_cmpf
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___mspabi_cmpf, 64

	.type	.L__profc___mspabi_cmpd,@object # @__profc___mspabi_cmpd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
.L__profc___mspabi_cmpd:
	.zero	24
	.size	.L__profc___mspabi_cmpd, 24

	.type	.L__profd___mspabi_cmpd,@object # @__profd___mspabi_cmpd
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
.L__profd___mspabi_cmpd:
	.quad	-5775354270414500759            # 0xafd9d1e3e3e88c69
	.quad	1352614535537600836             # 0x12c573c0ecbfa944
	.quad	.L__profc___mspabi_cmpd-.L__profd___mspabi_cmpd
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___mspabi_cmpd, 64

	.type	.L__profc___mspabi_mpysll,@object # @__profc___mspabi_mpysll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profc___mspabi_mpysll:
	.zero	8
	.size	.L__profc___mspabi_mpysll, 8

	.type	.L__profd___mspabi_mpysll,@object # @__profd___mspabi_mpysll
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profd___mspabi_mpysll:
	.quad	-359228324547500507             # 0xfb03c3bdfa166625
	.quad	24                              # 0x18
	.quad	.L__profc___mspabi_mpysll-.L__profd___mspabi_mpysll
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___mspabi_mpysll, 64

	.type	.L__profc___mspabi_mpyull,@object # @__profc___mspabi_mpyull
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profc___mspabi_mpyull:
	.zero	8
	.size	.L__profc___mspabi_mpyull, 8

	.type	.L__profd___mspabi_mpyull,@object # @__profd___mspabi_mpyull
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profd___mspabi_mpyull:
	.quad	6629829186354316853             # 0x5c01e284c62a8635
	.quad	24                              # 0x18
	.quad	.L__profc___mspabi_mpyull-.L__profd___mspabi_mpyull
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___mspabi_mpyull, 64

	.type	.L__profc___mulhi3,@object      # @__profc___mulhi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profc___mulhi3:
	.zero	56
	.size	.L__profc___mulhi3, 56

	.type	.L__profd___mulhi3,@object      # @__profd___mulhi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profd___mulhi3:
	.quad	-4671748085078636676            # 0xbf2a9dde5cc6c77c
	.quad	-5374843387156864121            # 0xb568b86aa1286387
	.quad	.L__profc___mulhi3-.L__profd___mulhi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___mulhi3, 64

	.type	.L__profc___divsi3,@object      # @__profc___divsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profc___divsi3:
	.zero	32
	.size	.L__profc___divsi3, 32

	.type	.L__profd___divsi3,@object      # @__profd___divsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profd___divsi3:
	.quad	5631431475223784324             # 0x4e26dd1711aaeb84
	.quad	510575534943447681              # 0x715edbe6f4f2a81
	.quad	.L__profc___divsi3-.L__profd___divsi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___divsi3, 64

	.type	.L__profc___modsi3,@object      # @__profc___modsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profc___modsi3:
	.zero	32
	.size	.L__profc___modsi3, 32

	.type	.L__profd___modsi3,@object      # @__profd___modsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profd___modsi3:
	.quad	-8995696579390192574            # 0x8328dd9f4e404442
	.quad	2121116644152358499             # 0x1d6fb85985deb663
	.quad	.L__profc___modsi3-.L__profd___modsi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___modsi3, 64

	.type	.L__profc___udivmodhi4,@object  # @__profc___udivmodhi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profc___udivmodhi4:
	.zero	72
	.size	.L__profc___udivmodhi4, 72

	.type	.L__profd___udivmodhi4,@object  # @__profd___udivmodhi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profd___udivmodhi4:
	.quad	2241631039268115874             # 0x1f1bdf8db510d5a2
	.quad	842736872197088594              # 0xbb200b8626e6552
	.quad	.L__profc___udivmodhi4-.L__profd___udivmodhi4
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	9                               # 0x9
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___udivmodhi4, 64

	.type	.L__profc___udivmodsi4_libgcc,@object # @__profc___udivmodsi4_libgcc
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profc___udivmodsi4_libgcc:
	.zero	72
	.size	.L__profc___udivmodsi4_libgcc, 72

	.type	.L__profd___udivmodsi4_libgcc,@object # @__profd___udivmodsi4_libgcc
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profd___udivmodsi4_libgcc:
	.quad	-1484205535638993157            # 0xeb670aedd291c6fb
	.quad	842736872197088594              # 0xbb200b8626e6552
	.quad	.L__profc___udivmodsi4_libgcc-.L__profd___udivmodsi4_libgcc
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	9                               # 0x9
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___udivmodsi4_libgcc, 64

	.type	.L__profc___ashldi3,@object     # @__profc___ashldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profc___ashldi3:
	.zero	24
	.size	.L__profc___ashldi3, 24

	.type	.L__profd___ashldi3,@object     # @__profd___ashldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profd___ashldi3:
	.quad	3719210884952086607             # 0x339d4a983a55d84f
	.quad	185294818348438616              # 0x2924ca7d2611458
	.quad	.L__profc___ashldi3-.L__profd___ashldi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___ashldi3, 64

	.type	.L__profc___ashlti3,@object     # @__profc___ashlti3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashlti3
	.p2align	3, 0x0
.L__profc___ashlti3:
	.zero	24
	.size	.L__profc___ashlti3, 24

	.type	.L__profd___ashlti3,@object     # @__profd___ashlti3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashlti3
	.p2align	3, 0x0
.L__profd___ashlti3:
	.quad	8422580559269035854             # 0x74e30464d7577f4e
	.quad	185294818348438616              # 0x2924ca7d2611458
	.quad	.L__profc___ashlti3-.L__profd___ashlti3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___ashlti3, 64

	.type	.L__profc___ashrdi3,@object     # @__profc___ashrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profc___ashrdi3:
	.zero	24
	.size	.L__profc___ashrdi3, 24

	.type	.L__profd___ashrdi3,@object     # @__profd___ashrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profd___ashrdi3:
	.quad	-1855717345837424946            # 0xe63f2ae7edd45ece
	.quad	185294818348438616              # 0x2924ca7d2611458
	.quad	.L__profc___ashrdi3-.L__profd___ashrdi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___ashrdi3, 64

	.type	.L__profc___ashrti3,@object     # @__profc___ashrti3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashrti3
	.p2align	3, 0x0
.L__profc___ashrti3:
	.zero	24
	.size	.L__profc___ashrti3, 24

	.type	.L__profd___ashrti3,@object     # @__profd___ashrti3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashrti3
	.p2align	3, 0x0
.L__profd___ashrti3:
	.quad	-1576641649180751463            # 0xea1ea4c6027ec999
	.quad	185294818348438616              # 0x2924ca7d2611458
	.quad	.L__profc___ashrti3-.L__profd___ashrti3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___ashrti3, 64

	.type	.L__profc___bswapdi2,@object    # @__profc___bswapdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profc___bswapdi2:
	.zero	8
	.size	.L__profc___bswapdi2, 8

	.type	.L__profd___bswapdi2,@object    # @__profd___bswapdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profd___bswapdi2:
	.quad	9149352740892555196             # 0x7ef907d7ada5b7bc
	.quad	24                              # 0x18
	.quad	.L__profc___bswapdi2-.L__profd___bswapdi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___bswapdi2, 64

	.type	.L__profc___bswapsi2,@object    # @__profc___bswapsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profc___bswapsi2:
	.zero	8
	.size	.L__profc___bswapsi2, 8

	.type	.L__profd___bswapsi2,@object    # @__profd___bswapsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profd___bswapsi2:
	.quad	-3374945843358245974            # 0xd129c8a2fe735baa
	.quad	24                              # 0x18
	.quad	.L__profc___bswapsi2-.L__profd___bswapsi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___bswapsi2, 64

	.type	.L__profc___clzsi2,@object      # @__profc___clzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profc___clzsi2:
	.zero	8
	.size	.L__profc___clzsi2, 8

	.type	.L__profd___clzsi2,@object      # @__profd___clzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profd___clzsi2:
	.quad	1382681549752930563             # 0x1330458b32829103
	.quad	33814345247                     # 0x7df7df61f
	.quad	.L__profc___clzsi2-.L__profd___clzsi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___clzsi2, 64

	.type	.L__profc___clzti2,@object      # @__profc___clzti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzti2
	.p2align	3, 0x0
.L__profc___clzti2:
	.zero	8
	.size	.L__profc___clzti2, 8

	.type	.L__profd___clzti2,@object      # @__profd___clzti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzti2
	.p2align	3, 0x0
.L__profd___clzti2:
	.quad	-1806615119558762125            # 0xe6ed9d1ee0d9a173
	.quad	2008                            # 0x7d8
	.quad	.L__profc___clzti2-.L__profd___clzti2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___clzti2, 64

	.type	.L__profc___cmpdi2,@object      # @__profc___cmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profc___cmpdi2:
	.zero	40
	.size	.L__profc___cmpdi2, 40

	.type	.L__profd___cmpdi2,@object      # @__profd___cmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profd___cmpdi2:
	.quad	-5499644794300757496            # 0xb3ad5632ace08a08
	.quad	-7406659272189927428            # 0x993642a254c41ffc
	.quad	.L__profc___cmpdi2-.L__profd___cmpdi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___cmpdi2, 64

	.type	.L__profc___aeabi_lcmp,@object  # @__profc___aeabi_lcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profc___aeabi_lcmp:
	.zero	8
	.size	.L__profc___aeabi_lcmp, 8

	.type	.L__profd___aeabi_lcmp,@object  # @__profd___aeabi_lcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profd___aeabi_lcmp:
	.quad	7067747365298492588             # 0x6215aec83ed1d4ac
	.quad	24                              # 0x18
	.quad	.L__profc___aeabi_lcmp-.L__profd___aeabi_lcmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___aeabi_lcmp, 64

	.type	.L__profc___cmpti2,@object      # @__profc___cmpti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmpti2
	.p2align	3, 0x0
.L__profc___cmpti2:
	.zero	40
	.size	.L__profc___cmpti2, 40

	.type	.L__profd___cmpti2,@object      # @__profd___cmpti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmpti2
	.p2align	3, 0x0
.L__profd___cmpti2:
	.quad	-8389943187845644472            # 0x8b90ef1f5ac07f48
	.quad	-7406659272189927428            # 0x993642a254c41ffc
	.quad	.L__profc___cmpti2-.L__profd___cmpti2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___cmpti2, 64

	.type	.L__profc___ctzsi2,@object      # @__profc___ctzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profc___ctzsi2:
	.zero	8
	.size	.L__profc___ctzsi2, 8

	.type	.L__profd___ctzsi2,@object      # @__profd___ctzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profd___ctzsi2:
	.quad	-5501728155980453225            # 0xb3a5ef643c052a97
	.quad	33814345247                     # 0x7df7df61f
	.quad	.L__profc___ctzsi2-.L__profd___ctzsi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___ctzsi2, 64

	.type	.L__profc___ctzti2,@object      # @__profc___ctzti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzti2
	.p2align	3, 0x0
.L__profc___ctzti2:
	.zero	8
	.size	.L__profc___ctzti2, 8

	.type	.L__profd___ctzti2,@object      # @__profd___ctzti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzti2
	.p2align	3, 0x0
.L__profd___ctzti2:
	.quad	7226039699906943586             # 0x64480cd265d2da62
	.quad	2008                            # 0x7d8
	.quad	.L__profc___ctzti2-.L__profd___ctzti2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___ctzti2, 64

	.type	.L__profc___ffsti2,@object      # @__profc___ffsti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ffsti2
	.p2align	3, 0x0
.L__profc___ffsti2:
	.zero	24
	.size	.L__profc___ffsti2, 24

	.type	.L__profd___ffsti2,@object      # @__profd___ffsti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ffsti2
	.p2align	3, 0x0
.L__profd___ffsti2:
	.quad	7347651670313848928             # 0x65f81a43be5cd060
	.quad	-6109625065311516695            # 0xab36405f8f48c7e9
	.quad	.L__profc___ffsti2-.L__profd___ffsti2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___ffsti2, 64

	.type	.L__profc___lshrdi3,@object     # @__profc___lshrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profc___lshrdi3:
	.zero	24
	.size	.L__profc___lshrdi3, 24

	.type	.L__profd___lshrdi3,@object     # @__profd___lshrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profd___lshrdi3:
	.quad	10441766047587925               # 0x2518bb1c181e55
	.quad	185294818348438616              # 0x2924ca7d2611458
	.quad	.L__profc___lshrdi3-.L__profd___lshrdi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___lshrdi3, 64

	.type	.L__profc___lshrti3,@object     # @__profc___lshrti3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___lshrti3
	.p2align	3, 0x0
.L__profc___lshrti3:
	.zero	24
	.size	.L__profc___lshrti3, 24

	.type	.L__profd___lshrti3,@object     # @__profd___lshrti3
	.section	__llvm_prf_data,"awG",@progbits,__profc___lshrti3
	.p2align	3, 0x0
.L__profd___lshrti3:
	.quad	-8202552090810439010            # 0x8e2aae55179b2a9e
	.quad	185294818348438616              # 0x2924ca7d2611458
	.quad	.L__profc___lshrti3-.L__profd___lshrti3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___lshrti3, 64

	.type	.L__profc___muldsi3,@object     # @__profc___muldsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profc___muldsi3:
	.zero	8
	.size	.L__profc___muldsi3, 8

	.type	.L__profd___muldsi3,@object     # @__profd___muldsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profd___muldsi3:
	.quad	4756674255824047264             # 0x42031a08a2a34ca0
	.quad	24                              # 0x18
	.quad	.L__profc___muldsi3-.L__profd___muldsi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___muldsi3, 64

	.type	.L__profc___muldi3_compiler_rt,@object # @__profc___muldi3_compiler_rt
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profc___muldi3_compiler_rt:
	.zero	8
	.size	.L__profc___muldi3_compiler_rt, 8

	.type	.L__profd___muldi3_compiler_rt,@object # @__profd___muldi3_compiler_rt
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profd___muldi3_compiler_rt:
	.quad	-737717619142303851             # 0xf5c319bbe679df95
	.quad	24                              # 0x18
	.quad	.L__profc___muldi3_compiler_rt-.L__profd___muldi3_compiler_rt
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___muldi3_compiler_rt, 64

	.type	.L__profc___mulddi3,@object     # @__profc___mulddi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulddi3
	.p2align	3, 0x0
.L__profc___mulddi3:
	.zero	8
	.size	.L__profc___mulddi3, 8

	.type	.L__profd___mulddi3,@object     # @__profd___mulddi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulddi3
	.p2align	3, 0x0
.L__profd___mulddi3:
	.quad	373830907859946247              # 0x5301d3ae50dcb07
	.quad	24                              # 0x18
	.quad	.L__profc___mulddi3-.L__profd___mulddi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___mulddi3, 64

	.type	.L__profc___multi3,@object      # @__profc___multi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___multi3
	.p2align	3, 0x0
.L__profc___multi3:
	.zero	8
	.size	.L__profc___multi3, 8

	.type	.L__profd___multi3,@object      # @__profd___multi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___multi3
	.p2align	3, 0x0
.L__profd___multi3:
	.quad	8967568818272694478             # 0x7c733453f80370ce
	.quad	24                              # 0x18
	.quad	.L__profc___multi3-.L__profd___multi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___multi3, 64

	.type	.L__profc___negdi2,@object      # @__profc___negdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profc___negdi2:
	.zero	8
	.size	.L__profc___negdi2, 8

	.type	.L__profd___negdi2,@object      # @__profd___negdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profd___negdi2:
	.quad	-2796404983763388037            # 0xd9312c7bb6a6b97b
	.quad	24                              # 0x18
	.quad	.L__profc___negdi2-.L__profd___negdi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___negdi2, 64

	.type	.L__profc___negti2,@object      # @__profc___negti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___negti2
	.p2align	3, 0x0
.L__profc___negti2:
	.zero	8
	.size	.L__profc___negti2, 8

	.type	.L__profd___negti2,@object      # @__profd___negti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___negti2
	.p2align	3, 0x0
.L__profd___negti2:
	.quad	8691511294418398176             # 0x789e7379011aabe0
	.quad	24                              # 0x18
	.quad	.L__profc___negti2-.L__profd___negti2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___negti2, 64

	.type	.L__profc___paritydi2,@object   # @__profc___paritydi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profc___paritydi2:
	.zero	8
	.size	.L__profc___paritydi2, 8

	.type	.L__profd___paritydi2,@object   # @__profd___paritydi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profd___paritydi2:
	.quad	-5102883611502574357            # 0xb92eea643e3a04eb
	.quad	24                              # 0x18
	.quad	.L__profc___paritydi2-.L__profd___paritydi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___paritydi2, 64

	.type	.L__profc___parityti2,@object   # @__profc___parityti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___parityti2
	.p2align	3, 0x0
.L__profc___parityti2:
	.zero	8
	.size	.L__profc___parityti2, 8

	.type	.L__profd___parityti2,@object   # @__profd___parityti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___parityti2
	.p2align	3, 0x0
.L__profd___parityti2:
	.quad	-7527016531061130461            # 0x978aaa58479bbb23
	.quad	24                              # 0x18
	.quad	.L__profc___parityti2-.L__profd___parityti2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___parityti2, 64

	.type	.L__profc___paritysi2,@object   # @__profc___paritysi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profc___paritysi2:
	.zero	8
	.size	.L__profc___paritysi2, 8

	.type	.L__profd___paritysi2,@object   # @__profd___paritysi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profd___paritysi2:
	.quad	8495812714014201054             # 0x75e730a6911054de
	.quad	24                              # 0x18
	.quad	.L__profc___paritysi2-.L__profd___paritysi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___paritysi2, 64

	.type	.L__profc___popcountdi2,@object # @__profc___popcountdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profc___popcountdi2:
	.zero	8
	.size	.L__profc___popcountdi2, 8

	.type	.L__profd___popcountdi2,@object # @__profd___popcountdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profd___popcountdi2:
	.quad	4342496508124198892             # 0x3c43a5910d1df7ec
	.quad	24                              # 0x18
	.quad	.L__profc___popcountdi2-.L__profd___popcountdi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___popcountdi2, 64

	.type	.L__profc___popcountsi2,@object # @__profc___popcountsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profc___popcountsi2:
	.zero	8
	.size	.L__profc___popcountsi2, 8

	.type	.L__profd___popcountsi2,@object # @__profd___popcountsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profd___popcountsi2:
	.quad	-2149276146439341705            # 0xe22c3cbb6f433977
	.quad	24                              # 0x18
	.quad	.L__profc___popcountsi2-.L__profd___popcountsi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___popcountsi2, 64

	.type	.L__profc___popcountti2,@object # @__profc___popcountti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountti2
	.p2align	3, 0x0
.L__profc___popcountti2:
	.zero	8
	.size	.L__profc___popcountti2, 8

	.type	.L__profd___popcountti2,@object # @__profd___popcountti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountti2
	.p2align	3, 0x0
.L__profd___popcountti2:
	.quad	-26294454666068629              # 0xffa295553210fd6b
	.quad	24                              # 0x18
	.quad	.L__profc___popcountti2-.L__profd___popcountti2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___popcountti2, 64

	.type	.L__profc___powidf2,@object     # @__profc___powidf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
.L__profc___powidf2:
	.zero	40
	.size	.L__profc___powidf2, 40

	.type	.L__profd___powidf2,@object     # @__profd___powidf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
.L__profd___powidf2:
	.quad	-1752541073601039051            # 0xe7adb92dcdba7535
	.quad	-4868838055443737378            # 0xbc6e6995b45f54de
	.quad	.L__profc___powidf2-.L__profd___powidf2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___powidf2, 64

	.type	.L__profc___powisf2,@object     # @__profc___powisf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
.L__profc___powisf2:
	.zero	40
	.size	.L__profc___powisf2, 40

	.type	.L__profd___powisf2,@object     # @__profd___powisf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
.L__profd___powisf2:
	.quad	-3807360110918407144            # 0xcb298a26c0b76c18
	.quad	-4868838055443737378            # 0xbc6e6995b45f54de
	.quad	.L__profc___powisf2-.L__profd___powisf2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___powisf2, 64

	.type	.L__profc___ucmpdi2,@object     # @__profc___ucmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profc___ucmpdi2:
	.zero	40
	.size	.L__profc___ucmpdi2, 40

	.type	.L__profd___ucmpdi2,@object     # @__profd___ucmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profd___ucmpdi2:
	.quad	-2044349310657886323            # 0xe3a10322256c078d
	.quad	-7406659272189927428            # 0x993642a254c41ffc
	.quad	.L__profc___ucmpdi2-.L__profd___ucmpdi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___ucmpdi2, 64

	.type	.L__profc___aeabi_ulcmp,@object # @__profc___aeabi_ulcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profc___aeabi_ulcmp:
	.zero	8
	.size	.L__profc___aeabi_ulcmp, 8

	.type	.L__profd___aeabi_ulcmp,@object # @__profd___aeabi_ulcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profd___aeabi_ulcmp:
	.quad	448670595368434735              # 0x639ff8782193c2f
	.quad	24                              # 0x18
	.quad	.L__profc___aeabi_ulcmp-.L__profd___aeabi_ulcmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___aeabi_ulcmp, 64

	.type	.L__profc___ucmpti2,@object     # @__profc___ucmpti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ucmpti2
	.p2align	3, 0x0
.L__profc___ucmpti2:
	.zero	40
	.size	.L__profc___ucmpti2, 40

	.type	.L__profd___ucmpti2,@object     # @__profd___ucmpti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ucmpti2
	.p2align	3, 0x0
.L__profd___ucmpti2:
	.quad	2719998967855154749             # 0x25bf60a66c6f863d
	.quad	-7406659272189927428            # 0x993642a254c41ffc
	.quad	.L__profc___ucmpti2-.L__profd___ucmpti2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
	.size	.L__profd___ucmpti2, 64

	.type	.L__llvm_prf_nm,@object         # @__llvm_prf_nm
	.section	__llvm_prf_names,"aR",@progbits,unique,1
.L__llvm_prf_nm:
	.ascii	"\247\013\315\004x\332]\223\013n\343 \020\206\305\215\272MU\365\032{\002\013\033\210G\035\f\001\\\222\236~\347\201\363X)\342\373\347\347\345\031&\321~\373\251\201\211\302\335D\037c\372\361\314e\3117\341Z\0041\013\324,\303\255\276\231\3322\273\265\261\271\3558\224\2006\021\320o\214M\302ng\003\325b^-\263.\000\304\031\355\366M\\6ZNtp\206F<\027\233W\"\246\356\0131\027\330\330\257\331.\236\270\347,~?6\366cg?\226\366\253Z-\351e\301A\224!\230\020\355U\006\225H#l2\004\031\321\340\347\2075\265\330\315\031\031`\253\227\335\233\342#\003\253\267\224\253\301\0004g\347jlK\300\003\312\200f\036+\006\247b\034\374\030\240\313x5\223c\344\000E\251\024\335\227\312udP\341\030Tf\002\227\223 \345\354\343\205\372x\242>\336\250\037/\331\307+\315K\"\273\244F\0311\212\002O\357\022)p\252\277\022\016\342\237O\t\025\370%\301\027%\323m\236\310TA{U\320\221!\320\327\303\f\263/\3556qt\306\t*\0254\334\225\273+4\323\337<AK\027\312\336_sP\350\210\334`\327T\264ul\023\216V\312s\371f\036\215F?\303\tV8o\322\304>2\2441C\341#\247)\356T\325\223\331\251\2641\271\n\037\344-X\352|\201\367C:\221\264\262\322J\362\250\204np\035\354\274 9 \354\364\345n00\021\207\301B\234\261r\301\337UoiC\004\270\356[\255\241\362t\266\005\332M'r\312K\332\267\266>}\312\004\227\367\267\267\267G\214\361\304\263/\271D\372O\314@\337\230\303K\344\036Q\244\nQS>\307\273\306;\256\2221\035\250\251\313\261\247\307\035\253\334\361\270p\242W>/\013y\266\256RXU\355P\345\356\025\365\244G\264\300\"\353(\373\357]4\025q\254\262\236\277\021\271\255\305mG\005\353!\324\241.S\201\367[\361~+\277z\275+*\335\222b\006\364e*m\230\356\230\326\035\233?\353\375$\364\\}\036\367\244\237\375\372\362l\356%z\235\033\273R\007\027\016UE\355\377%\275\217\254wM\373\037[\370\006\333"
	.size	.L__llvm_prf_nm, 593

	.ident	"clang version 19.1.5 (Fedora 19.1.5-1.fc41)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym memcmp
	.addrsig_sym strchr
	.addrsig_sym strlen
	.addrsig_sym strncmp
	.addrsig_sym isdigit
	.addrsig_sym isspace
	.addrsig_sym __udivmodsi4
	.addrsig_sym __cmpdi2
	.addrsig_sym __muldsi3
	.addrsig_sym __mulddi3
	.addrsig_sym __ucmpdi2
	.addrsig_sym llvm_gcda_start_file
	.addrsig_sym llvm_gcda_emit_function
	.addrsig_sym llvm_gcda_emit_arcs
	.addrsig_sym llvm_gcda_summary_info
	.addrsig_sym llvm_gcda_end_file
	.addrsig_sym llvm_gcov_init
	.addrsig_sym l64a.s
	.addrsig_sym digits
	.addrsig_sym seed
	.addrsig_sym __llvm_gcov_ctr
	.addrsig_sym __llvm_gcov_ctr.1
	.addrsig_sym __llvm_gcov_ctr.2
	.addrsig_sym __llvm_gcov_ctr.3
	.addrsig_sym __llvm_gcov_ctr.4
	.addrsig_sym __llvm_gcov_ctr.5
	.addrsig_sym __llvm_gcov_ctr.6
	.addrsig_sym __llvm_gcov_ctr.7
	.addrsig_sym __llvm_gcov_ctr.8
	.addrsig_sym __llvm_gcov_ctr.9
	.addrsig_sym __llvm_gcov_ctr.10
	.addrsig_sym __llvm_gcov_ctr.11
	.addrsig_sym __llvm_gcov_ctr.12
	.addrsig_sym __llvm_gcov_ctr.13
	.addrsig_sym __llvm_gcov_ctr.14
	.addrsig_sym __llvm_gcov_ctr.15
	.addrsig_sym __llvm_gcov_ctr.16
	.addrsig_sym __llvm_gcov_ctr.17
	.addrsig_sym __llvm_gcov_ctr.18
	.addrsig_sym __llvm_gcov_ctr.19
	.addrsig_sym __llvm_gcov_ctr.20
	.addrsig_sym __llvm_gcov_ctr.21
	.addrsig_sym __llvm_gcov_ctr.22
	.addrsig_sym __llvm_gcov_ctr.23
	.addrsig_sym __llvm_gcov_ctr.24
	.addrsig_sym __llvm_gcov_ctr.25
	.addrsig_sym __llvm_gcov_ctr.26
	.addrsig_sym __llvm_gcov_ctr.27
	.addrsig_sym __llvm_gcov_ctr.28
	.addrsig_sym __llvm_gcov_ctr.29
	.addrsig_sym __llvm_gcov_ctr.30
	.addrsig_sym __llvm_gcov_ctr.31
	.addrsig_sym __llvm_gcov_ctr.32
	.addrsig_sym __llvm_gcov_ctr.33
	.addrsig_sym __llvm_gcov_ctr.34
	.addrsig_sym __llvm_gcov_ctr.35
	.addrsig_sym __llvm_gcov_ctr.36
	.addrsig_sym __llvm_gcov_ctr.37
	.addrsig_sym __llvm_gcov_ctr.38
	.addrsig_sym __llvm_gcov_ctr.39
	.addrsig_sym __llvm_gcov_ctr.40
	.addrsig_sym __llvm_gcov_ctr.41
	.addrsig_sym __llvm_gcov_ctr.42
	.addrsig_sym __llvm_gcov_ctr.43
	.addrsig_sym __llvm_gcov_ctr.44
	.addrsig_sym __llvm_gcov_ctr.45
	.addrsig_sym __llvm_gcov_ctr.46
	.addrsig_sym __llvm_gcov_ctr.47
	.addrsig_sym __llvm_gcov_ctr.48
	.addrsig_sym __llvm_gcov_ctr.49
	.addrsig_sym __llvm_gcov_ctr.50
	.addrsig_sym __llvm_gcov_ctr.51
	.addrsig_sym __llvm_gcov_ctr.52
	.addrsig_sym __llvm_gcov_ctr.53
	.addrsig_sym __llvm_gcov_ctr.54
	.addrsig_sym __llvm_gcov_ctr.55
	.addrsig_sym __llvm_gcov_ctr.56
	.addrsig_sym __llvm_gcov_ctr.57
	.addrsig_sym __llvm_gcov_ctr.58
	.addrsig_sym __llvm_gcov_ctr.59
	.addrsig_sym __llvm_gcov_ctr.60
	.addrsig_sym __llvm_gcov_ctr.61
	.addrsig_sym __llvm_gcov_ctr.62
	.addrsig_sym __llvm_gcov_ctr.63
	.addrsig_sym __llvm_gcov_ctr.64
	.addrsig_sym __llvm_gcov_ctr.65
	.addrsig_sym __llvm_gcov_ctr.66
	.addrsig_sym __llvm_gcov_ctr.67
	.addrsig_sym __llvm_gcov_ctr.68
	.addrsig_sym __llvm_gcov_ctr.69
	.addrsig_sym __llvm_gcov_ctr.70
	.addrsig_sym __llvm_gcov_ctr.71
	.addrsig_sym __llvm_gcov_ctr.72
	.addrsig_sym __llvm_gcov_ctr.73
	.addrsig_sym __llvm_gcov_ctr.74
	.addrsig_sym __llvm_gcov_ctr.75
	.addrsig_sym __llvm_gcov_ctr.76
	.addrsig_sym __llvm_gcov_ctr.77
	.addrsig_sym __llvm_gcov_ctr.78
	.addrsig_sym __llvm_gcov_ctr.79
	.addrsig_sym __llvm_gcov_ctr.80
	.addrsig_sym __llvm_gcov_ctr.81
	.addrsig_sym __llvm_gcov_ctr.82
	.addrsig_sym __llvm_gcov_ctr.83
	.addrsig_sym __llvm_gcov_ctr.84
	.addrsig_sym __llvm_gcov_ctr.85
	.addrsig_sym __llvm_gcov_ctr.86
	.addrsig_sym __llvm_gcov_ctr.87
	.addrsig_sym __llvm_gcov_ctr.88
	.addrsig_sym __llvm_gcov_ctr.89
	.addrsig_sym __llvm_gcov_ctr.90
	.addrsig_sym __llvm_gcov_ctr.91
	.addrsig_sym __llvm_gcov_ctr.92
	.addrsig_sym __llvm_gcov_ctr.93
	.addrsig_sym __llvm_gcov_ctr.94
	.addrsig_sym __llvm_gcov_ctr.95
	.addrsig_sym __llvm_gcov_ctr.96
	.addrsig_sym __llvm_gcov_ctr.97
	.addrsig_sym __llvm_gcov_ctr.98
	.addrsig_sym __llvm_gcov_ctr.99
	.addrsig_sym __llvm_gcov_ctr.100
	.addrsig_sym __llvm_gcov_ctr.101
	.addrsig_sym __llvm_gcov_ctr.102
	.addrsig_sym __llvm_gcov_ctr.103
	.addrsig_sym __llvm_gcov_ctr.104
	.addrsig_sym __llvm_gcov_ctr.105
	.addrsig_sym __llvm_gcov_ctr.106
	.addrsig_sym __llvm_gcov_ctr.107
	.addrsig_sym __llvm_gcov_ctr.108
	.addrsig_sym __llvm_gcov_ctr.109
	.addrsig_sym __llvm_gcov_ctr.110
	.addrsig_sym __llvm_gcov_ctr.111
	.addrsig_sym __llvm_gcov_ctr.112
	.addrsig_sym __llvm_gcov_ctr.113
	.addrsig_sym __llvm_gcov_ctr.114
	.addrsig_sym __llvm_gcov_ctr.115
	.addrsig_sym __llvm_gcov_ctr.116
	.addrsig_sym __llvm_gcov_ctr.117
	.addrsig_sym __llvm_gcov_ctr.118
	.addrsig_sym __llvm_gcov_ctr.119
	.addrsig_sym __llvm_gcov_ctr.120
	.addrsig_sym __llvm_gcov_ctr.121
	.addrsig_sym __llvm_gcov_ctr.122
	.addrsig_sym __llvm_gcov_ctr.123
	.addrsig_sym __llvm_gcov_ctr.124
	.addrsig_sym __llvm_gcov_ctr.125
	.addrsig_sym __llvm_gcov_ctr.126
	.addrsig_sym __llvm_gcov_ctr.127
	.addrsig_sym __llvm_gcov_ctr.128
	.addrsig_sym __llvm_gcov_ctr.129
	.addrsig_sym __llvm_gcov_ctr.130
	.addrsig_sym __llvm_gcov_ctr.131
	.addrsig_sym __llvm_gcov_ctr.132
	.addrsig_sym __llvm_gcov_ctr.133
	.addrsig_sym __llvm_gcov_ctr.134
	.addrsig_sym __llvm_gcov_ctr.135
	.addrsig_sym __llvm_gcov_ctr.136
	.addrsig_sym __llvm_gcov_ctr.137
	.addrsig_sym __llvm_gcov_ctr.138
	.addrsig_sym __llvm_gcov_ctr.139
	.addrsig_sym __llvm_gcov_ctr.140
	.addrsig_sym __llvm_gcov_ctr.141
	.addrsig_sym __llvm_gcov_ctr.142
	.addrsig_sym __llvm_gcov_ctr.143
	.addrsig_sym __llvm_gcov_ctr.144
	.addrsig_sym __llvm_gcov_ctr.145
	.addrsig_sym __llvm_gcov_ctr.146
	.addrsig_sym __llvm_gcov_ctr.147
	.addrsig_sym __llvm_gcov_ctr.148
	.addrsig_sym __llvm_gcov_ctr.149
	.addrsig_sym __llvm_gcov_ctr.150
	.addrsig_sym __llvm_gcov_ctr.151
	.addrsig_sym __llvm_gcov_ctr.152
	.addrsig_sym __llvm_gcov_ctr.153
	.addrsig_sym __llvm_gcov_ctr.154
	.addrsig_sym __llvm_gcov_ctr.155
	.addrsig_sym __llvm_gcov_ctr.156
	.addrsig_sym __llvm_gcov_ctr.157
	.addrsig_sym __llvm_gcov_ctr.158
	.addrsig_sym __llvm_gcov_ctr.159
	.addrsig_sym __llvm_gcov_ctr.160
	.addrsig_sym __llvm_gcov_ctr.161
	.addrsig_sym __llvm_gcov_ctr.162
	.addrsig_sym __llvm_gcov_ctr.163
	.addrsig_sym __llvm_gcov_ctr.164
	.addrsig_sym __llvm_gcov_ctr.165
	.addrsig_sym __llvm_profile_runtime
	.addrsig_sym .L__profc_make_ti
	.addrsig_sym .L__profd_make_ti
	.addrsig_sym .L__profc_make_tu
	.addrsig_sym .L__profd_make_tu
	.addrsig_sym .L__profc_memmove
	.addrsig_sym .L__profd_memmove
	.addrsig_sym .L__profc_memccpy
	.addrsig_sym .L__profd_memccpy
	.addrsig_sym .L__profc_memchr
	.addrsig_sym .L__profd_memchr
	.addrsig_sym .L__profc_memcmp
	.addrsig_sym .L__profd_memcmp
	.addrsig_sym .L__profc_memcpy
	.addrsig_sym .L__profd_memcpy
	.addrsig_sym .L__profc_memrchr
	.addrsig_sym .L__profd_memrchr
	.addrsig_sym .L__profc_memset
	.addrsig_sym .L__profd_memset
	.addrsig_sym .L__profc_stpcpy
	.addrsig_sym .L__profd_stpcpy
	.addrsig_sym .L__profc_strchrnul
	.addrsig_sym .L__profd_strchrnul
	.addrsig_sym .L__profc_strchr
	.addrsig_sym .L__profd_strchr
	.addrsig_sym .L__profc_strcmp
	.addrsig_sym .L__profd_strcmp
	.addrsig_sym .L__profc_strlen
	.addrsig_sym .L__profd_strlen
	.addrsig_sym .L__profc_strncmp
	.addrsig_sym .L__profd_strncmp
	.addrsig_sym .L__profc_swab
	.addrsig_sym .L__profd_swab
	.addrsig_sym .L__profc_isalpha
	.addrsig_sym .L__profd_isalpha
	.addrsig_sym .L__profc_isascii
	.addrsig_sym .L__profd_isascii
	.addrsig_sym .L__profc_isblank
	.addrsig_sym .L__profd_isblank
	.addrsig_sym .L__profc_iscntrl
	.addrsig_sym .L__profd_iscntrl
	.addrsig_sym .L__profc_isdigit
	.addrsig_sym .L__profd_isdigit
	.addrsig_sym .L__profc_isgraph
	.addrsig_sym .L__profd_isgraph
	.addrsig_sym .L__profc_islower
	.addrsig_sym .L__profd_islower
	.addrsig_sym .L__profc_isprint
	.addrsig_sym .L__profd_isprint
	.addrsig_sym .L__profc_isspace
	.addrsig_sym .L__profd_isspace
	.addrsig_sym .L__profc_isupper
	.addrsig_sym .L__profd_isupper
	.addrsig_sym .L__profc_iswcntrl
	.addrsig_sym .L__profd_iswcntrl
	.addrsig_sym .L__profc_iswdigit
	.addrsig_sym .L__profd_iswdigit
	.addrsig_sym .L__profc_iswprint
	.addrsig_sym .L__profd_iswprint
	.addrsig_sym .L__profc_iswxdigit
	.addrsig_sym .L__profd_iswxdigit
	.addrsig_sym .L__profc_toascii
	.addrsig_sym .L__profd_toascii
	.addrsig_sym .L__profc_fdim
	.addrsig_sym .L__profd_fdim
	.addrsig_sym .L__profc_fdimf
	.addrsig_sym .L__profd_fdimf
	.addrsig_sym .L__profc_fmax
	.addrsig_sym .L__profd_fmax
	.addrsig_sym .L__profc_fmaxf
	.addrsig_sym .L__profd_fmaxf
	.addrsig_sym .L__profc_fmaxl
	.addrsig_sym .L__profd_fmaxl
	.addrsig_sym .L__profc_fmin
	.addrsig_sym .L__profd_fmin
	.addrsig_sym .L__profc_fminf
	.addrsig_sym .L__profd_fminf
	.addrsig_sym .L__profc_fminl
	.addrsig_sym .L__profd_fminl
	.addrsig_sym .L__profc_l64a
	.addrsig_sym .L__profd_l64a
	.addrsig_sym .L__profc_srand
	.addrsig_sym .L__profd_srand
	.addrsig_sym .L__profc_rand
	.addrsig_sym .L__profd_rand
	.addrsig_sym .L__profc_insque
	.addrsig_sym .L__profd_insque
	.addrsig_sym .L__profc_remque
	.addrsig_sym .L__profd_remque
	.addrsig_sym .L__profc_lsearch
	.addrsig_sym .L__profd_lsearch
	.addrsig_sym .L__profc_lfind
	.addrsig_sym .L__profd_lfind
	.addrsig_sym .L__profc_abs
	.addrsig_sym .L__profd_abs
	.addrsig_sym .L__profc_atoi
	.addrsig_sym .L__profd_atoi
	.addrsig_sym .L__profc_atol
	.addrsig_sym .L__profd_atol
	.addrsig_sym .L__profc_atoll
	.addrsig_sym .L__profd_atoll
	.addrsig_sym .L__profc_bsearch
	.addrsig_sym .L__profd_bsearch
	.addrsig_sym .L__profc_bsearch_r
	.addrsig_sym .L__profd_bsearch_r
	.addrsig_sym .L__profc_div
	.addrsig_sym .L__profd_div
	.addrsig_sym .L__profc_imaxabs
	.addrsig_sym .L__profd_imaxabs
	.addrsig_sym .L__profc_imaxdiv
	.addrsig_sym .L__profd_imaxdiv
	.addrsig_sym .L__profc_labs
	.addrsig_sym .L__profd_labs
	.addrsig_sym .L__profc_ldiv
	.addrsig_sym .L__profd_ldiv
	.addrsig_sym .L__profc_llabs
	.addrsig_sym .L__profd_llabs
	.addrsig_sym .L__profc_lldiv
	.addrsig_sym .L__profd_lldiv
	.addrsig_sym .L__profc_wcschr
	.addrsig_sym .L__profd_wcschr
	.addrsig_sym .L__profc_wcscmp
	.addrsig_sym .L__profd_wcscmp
	.addrsig_sym .L__profc_wcscpy
	.addrsig_sym .L__profd_wcscpy
	.addrsig_sym .L__profc_wcslen
	.addrsig_sym .L__profd_wcslen
	.addrsig_sym .L__profc_wcsncmp
	.addrsig_sym .L__profd_wcsncmp
	.addrsig_sym .L__profc_wmemchr
	.addrsig_sym .L__profd_wmemchr
	.addrsig_sym .L__profc_wmemcmp
	.addrsig_sym .L__profd_wmemcmp
	.addrsig_sym .L__profc_wmemcpy
	.addrsig_sym .L__profd_wmemcpy
	.addrsig_sym .L__profc_wmemmove
	.addrsig_sym .L__profd_wmemmove
	.addrsig_sym .L__profc_wmemset
	.addrsig_sym .L__profd_wmemset
	.addrsig_sym .L__profc_bcopy
	.addrsig_sym .L__profd_bcopy
	.addrsig_sym .L__profc_rotl64
	.addrsig_sym .L__profd_rotl64
	.addrsig_sym .L__profc_rotr64
	.addrsig_sym .L__profd_rotr64
	.addrsig_sym .L__profc_rotl32
	.addrsig_sym .L__profd_rotl32
	.addrsig_sym .L__profc_rotr32
	.addrsig_sym .L__profd_rotr32
	.addrsig_sym .L__profc_rotl_sz
	.addrsig_sym .L__profd_rotl_sz
	.addrsig_sym .L__profc_rotr_sz
	.addrsig_sym .L__profd_rotr_sz
	.addrsig_sym .L__profc_rotl16
	.addrsig_sym .L__profd_rotl16
	.addrsig_sym .L__profc_rotr16
	.addrsig_sym .L__profd_rotr16
	.addrsig_sym .L__profc_rotl8
	.addrsig_sym .L__profd_rotl8
	.addrsig_sym .L__profc_rotr8
	.addrsig_sym .L__profd_rotr8
	.addrsig_sym .L__profc_bswap_16
	.addrsig_sym .L__profd_bswap_16
	.addrsig_sym .L__profc_bswap_32
	.addrsig_sym .L__profd_bswap_32
	.addrsig_sym .L__profc_bswap_64
	.addrsig_sym .L__profd_bswap_64
	.addrsig_sym .L__profc_ffs
	.addrsig_sym .L__profd_ffs
	.addrsig_sym .L__profc_libiberty_ffs
	.addrsig_sym .L__profd_libiberty_ffs
	.addrsig_sym .L__profc_gl_isinff
	.addrsig_sym .L__profd_gl_isinff
	.addrsig_sym .L__profc_gl_isinfd
	.addrsig_sym .L__profd_gl_isinfd
	.addrsig_sym .L__profc_gl_isinfl
	.addrsig_sym .L__profd_gl_isinfl
	.addrsig_sym .L__profc__Qp_itoq
	.addrsig_sym .L__profd__Qp_itoq
	.addrsig_sym .L__profc_ldexpf
	.addrsig_sym .L__profd_ldexpf
	.addrsig_sym .L__profc_ldexp
	.addrsig_sym .L__profd_ldexp
	.addrsig_sym .L__profc_ldexpl
	.addrsig_sym .L__profd_ldexpl
	.addrsig_sym .L__profc_memxor
	.addrsig_sym .L__profd_memxor
	.addrsig_sym .L__profc_strncat
	.addrsig_sym .L__profd_strncat
	.addrsig_sym .L__profc_strnlen
	.addrsig_sym .L__profd_strnlen
	.addrsig_sym .L__profc_strpbrk
	.addrsig_sym .L__profd_strpbrk
	.addrsig_sym .L__profc_strrchr
	.addrsig_sym .L__profd_strrchr
	.addrsig_sym .L__profc_strstr
	.addrsig_sym .L__profd_strstr
	.addrsig_sym .L__profc_copysign
	.addrsig_sym .L__profd_copysign
	.addrsig_sym .L__profc_memmem
	.addrsig_sym .L__profd_memmem
	.addrsig_sym .L__profc_mempcpy
	.addrsig_sym .L__profd_mempcpy
	.addrsig_sym .L__profc_frexp
	.addrsig_sym .L__profd_frexp
	.addrsig_sym .L__profc___muldi3
	.addrsig_sym .L__profd___muldi3
	.addrsig_sym .L__profc_udivmodsi4
	.addrsig_sym .L__profd_udivmodsi4
	.addrsig_sym .L__profc___clrsbqi2
	.addrsig_sym .L__profd___clrsbqi2
	.addrsig_sym .L__profc___clrsbdi2
	.addrsig_sym .L__profd___clrsbdi2
	.addrsig_sym .L__profc___mulsi3
	.addrsig_sym .L__profd___mulsi3
	.addrsig_sym .L__profc___cmovd
	.addrsig_sym .L__profd___cmovd
	.addrsig_sym .L__profc___cmovh
	.addrsig_sym .L__profd___cmovh
	.addrsig_sym .L__profc___cmovw
	.addrsig_sym .L__profd___cmovw
	.addrsig_sym .L__profc___modi
	.addrsig_sym .L__profd___modi
	.addrsig_sym .L__profc___uitod
	.addrsig_sym .L__profd___uitod
	.addrsig_sym .L__profc___uitof
	.addrsig_sym .L__profd___uitof
	.addrsig_sym .L__profc___ulltod
	.addrsig_sym .L__profd___ulltod
	.addrsig_sym .L__profc___ulltof
	.addrsig_sym .L__profd___ulltof
	.addrsig_sym .L__profc___umodi
	.addrsig_sym .L__profd___umodi
	.addrsig_sym .L__profc___clzhi2
	.addrsig_sym .L__profd___clzhi2
	.addrsig_sym .L__profc___ctzhi2
	.addrsig_sym .L__profd___ctzhi2
	.addrsig_sym .L__profc___fixunssfsi
	.addrsig_sym .L__profd___fixunssfsi
	.addrsig_sym .L__profc___parityhi2
	.addrsig_sym .L__profd___parityhi2
	.addrsig_sym .L__profc___popcounthi2
	.addrsig_sym .L__profd___popcounthi2
	.addrsig_sym .L__profc___mulsi3_iq2000
	.addrsig_sym .L__profd___mulsi3_iq2000
	.addrsig_sym .L__profc___mulsi3_lm32
	.addrsig_sym .L__profd___mulsi3_lm32
	.addrsig_sym .L__profc___udivmodsi4
	.addrsig_sym .L__profd___udivmodsi4
	.addrsig_sym .L__profc___mspabi_cmpf
	.addrsig_sym .L__profd___mspabi_cmpf
	.addrsig_sym .L__profc___mspabi_cmpd
	.addrsig_sym .L__profd___mspabi_cmpd
	.addrsig_sym .L__profc___mspabi_mpysll
	.addrsig_sym .L__profd___mspabi_mpysll
	.addrsig_sym .L__profc___mspabi_mpyull
	.addrsig_sym .L__profd___mspabi_mpyull
	.addrsig_sym .L__profc___mulhi3
	.addrsig_sym .L__profd___mulhi3
	.addrsig_sym .L__profc___divsi3
	.addrsig_sym .L__profd___divsi3
	.addrsig_sym .L__profc___modsi3
	.addrsig_sym .L__profd___modsi3
	.addrsig_sym .L__profc___udivmodhi4
	.addrsig_sym .L__profd___udivmodhi4
	.addrsig_sym .L__profc___udivmodsi4_libgcc
	.addrsig_sym .L__profd___udivmodsi4_libgcc
	.addrsig_sym .L__profc___ashldi3
	.addrsig_sym .L__profd___ashldi3
	.addrsig_sym .L__profc___ashlti3
	.addrsig_sym .L__profd___ashlti3
	.addrsig_sym .L__profc___ashrdi3
	.addrsig_sym .L__profd___ashrdi3
	.addrsig_sym .L__profc___ashrti3
	.addrsig_sym .L__profd___ashrti3
	.addrsig_sym .L__profc___bswapdi2
	.addrsig_sym .L__profd___bswapdi2
	.addrsig_sym .L__profc___bswapsi2
	.addrsig_sym .L__profd___bswapsi2
	.addrsig_sym .L__profc___clzsi2
	.addrsig_sym .L__profd___clzsi2
	.addrsig_sym .L__profc___clzti2
	.addrsig_sym .L__profd___clzti2
	.addrsig_sym .L__profc___cmpdi2
	.addrsig_sym .L__profd___cmpdi2
	.addrsig_sym .L__profc___aeabi_lcmp
	.addrsig_sym .L__profd___aeabi_lcmp
	.addrsig_sym .L__profc___cmpti2
	.addrsig_sym .L__profd___cmpti2
	.addrsig_sym .L__profc___ctzsi2
	.addrsig_sym .L__profd___ctzsi2
	.addrsig_sym .L__profc___ctzti2
	.addrsig_sym .L__profd___ctzti2
	.addrsig_sym .L__profc___ffsti2
	.addrsig_sym .L__profd___ffsti2
	.addrsig_sym .L__profc___lshrdi3
	.addrsig_sym .L__profd___lshrdi3
	.addrsig_sym .L__profc___lshrti3
	.addrsig_sym .L__profd___lshrti3
	.addrsig_sym .L__profc___muldsi3
	.addrsig_sym .L__profd___muldsi3
	.addrsig_sym .L__profc___muldi3_compiler_rt
	.addrsig_sym .L__profd___muldi3_compiler_rt
	.addrsig_sym .L__profc___mulddi3
	.addrsig_sym .L__profd___mulddi3
	.addrsig_sym .L__profc___multi3
	.addrsig_sym .L__profd___multi3
	.addrsig_sym .L__profc___negdi2
	.addrsig_sym .L__profd___negdi2
	.addrsig_sym .L__profc___negti2
	.addrsig_sym .L__profd___negti2
	.addrsig_sym .L__profc___paritydi2
	.addrsig_sym .L__profd___paritydi2
	.addrsig_sym .L__profc___parityti2
	.addrsig_sym .L__profd___parityti2
	.addrsig_sym .L__profc___paritysi2
	.addrsig_sym .L__profd___paritysi2
	.addrsig_sym .L__profc___popcountdi2
	.addrsig_sym .L__profd___popcountdi2
	.addrsig_sym .L__profc___popcountsi2
	.addrsig_sym .L__profd___popcountsi2
	.addrsig_sym .L__profc___popcountti2
	.addrsig_sym .L__profd___popcountti2
	.addrsig_sym .L__profc___powidf2
	.addrsig_sym .L__profd___powidf2
	.addrsig_sym .L__profc___powisf2
	.addrsig_sym .L__profd___powisf2
	.addrsig_sym .L__profc___ucmpdi2
	.addrsig_sym .L__profd___ucmpdi2
	.addrsig_sym .L__profc___aeabi_ulcmp
	.addrsig_sym .L__profd___aeabi_ulcmp
	.addrsig_sym .L__profc___ucmpti2
	.addrsig_sym .L__profd___ucmpti2
	.addrsig_sym .L__llvm_prf_nm
