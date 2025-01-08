	.text
	.file	"mini-libc.c"
	.globl	make_ti                         // -- Begin function make_ti
	.p2align	2
	.type	make_ti,@function
make_ti:                                // @make_ti
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr
	movk	x16, #:abs_g3:__llvm_gcov_ctr
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	movz	x16, #:abs_g0_nc:.L__profc_make_ti
	movk	x16, #:abs_g1_nc:.L__profc_make_ti
	movk	x16, #:abs_g2_nc:.L__profc_make_ti
	movk	x16, #:abs_g3:.L__profc_make_ti
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [sp]
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end0:
	.size	make_ti, .Lfunc_end0-make_ti
	.cfi_endproc
                                        // -- End function
	.globl	make_tu                         // -- Begin function make_tu
	.p2align	2
	.type	make_tu,@function
make_tu:                                // @make_tu
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.1
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.1
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.1
	movk	x16, #:abs_g3:__llvm_gcov_ctr.1
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	movz	x16, #:abs_g0_nc:.L__profc_make_tu
	movk	x16, #:abs_g1_nc:.L__profc_make_tu
	movk	x16, #:abs_g2_nc:.L__profc_make_tu
	movk	x16, #:abs_g3:.L__profc_make_tu
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [sp]
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end1:
	.size	make_tu, .Lfunc_end1-make_tu
	.cfi_endproc
                                        // -- End function
	.globl	memmove                         // -- Begin function memmove
	.p2align	2
	.type	memmove,@function
memmove:                                // @memmove
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc_memmove
	movk	x16, #:abs_g1_nc:.L__profc_memmove
	movk	x16, #:abs_g2_nc:.L__profc_memmove
	movk	x16, #:abs_g3:.L__profc_memmove
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x16, [sp, #16]
	subs	x8, x8, x16
	b.hs	.LBB2_6
	b	.LBB2_1
.LBB2_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.2
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.2
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.2
	movk	x16, #:abs_g3:__llvm_gcov_ctr.2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_memmove+8
	movk	x16, #:abs_g1_nc:.L__profc_memmove+8
	movk	x16, #:abs_g2_nc:.L__profc_memmove+8
	movk	x16, #:abs_g3:.L__profc_memmove+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp, #24]
	ldr	x8, [sp, #8]
	add	x8, x8, x16
	str	x8, [sp, #8]
	ldr	x16, [sp, #24]
	ldr	x8, [sp, #16]
	add	x8, x8, x16
	str	x8, [sp, #16]
	b	.LBB2_2
.LBB2_2:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	cbz	x8, .LBB2_5
	b	.LBB2_3
.LBB2_3:                                //   in Loop: Header=BB2_2 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_memmove+16
	movk	x16, #:abs_g1_nc:.L__profc_memmove+16
	movk	x16, #:abs_g2_nc:.L__profc_memmove+16
	movk	x16, #:abs_g3:.L__profc_memmove+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	subs	x16, x8, #1
	str	x16, [sp, #8]
	ldurb	w8, [x8, #-1]
	ldr	x16, [sp, #16]
	subs	x17, x16, #1
	str	x17, [sp, #16]
	sturb	w8, [x16, #-1]
	b	.LBB2_4
.LBB2_4:                                //   in Loop: Header=BB2_2 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.2+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.2+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.2+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.2+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB2_2
.LBB2_5:
	b	.LBB2_13
.LBB2_6:
	ldr	x8, [sp, #8]
	ldr	x16, [sp, #16]
	subs	x8, x8, x16
	b.eq	.LBB2_12
	b	.LBB2_7
.LBB2_7:
	movz	x16, #:abs_g0_nc:.L__profc_memmove+24
	movk	x16, #:abs_g1_nc:.L__profc_memmove+24
	movk	x16, #:abs_g2_nc:.L__profc_memmove+24
	movk	x16, #:abs_g3:.L__profc_memmove+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB2_8
.LBB2_8:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	cbz	x8, .LBB2_11
	b	.LBB2_9
.LBB2_9:                                //   in Loop: Header=BB2_8 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.2+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.2+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.2+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.2+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_memmove+32
	movk	x16, #:abs_g1_nc:.L__profc_memmove+32
	movk	x16, #:abs_g2_nc:.L__profc_memmove+32
	movk	x16, #:abs_g3:.L__profc_memmove+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	add	x16, x8, #1
	str	x16, [sp, #8]
	ldrb	w8, [x8]
	ldr	x16, [sp, #16]
	add	x17, x16, #1
	str	x17, [sp, #16]
	strb	w8, [x16]
	b	.LBB2_10
.LBB2_10:                               //   in Loop: Header=BB2_8 Depth=1
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB2_8
.LBB2_11:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.2+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.2+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.2+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.2+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB2_12
.LBB2_12:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.2+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.2+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.2+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.2+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB2_13
.LBB2_13:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end2:
	.size	memmove, .Lfunc_end2-memmove
	.cfi_endproc
                                        // -- End function
	.globl	memccpy                         // -- Begin function memccpy
	.p2align	2
	.type	memccpy,@function
memccpy:                                // @memccpy
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	str	x3, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc_memccpy
	movk	x16, #:abs_g1_nc:.L__profc_memccpy
	movk	x16, #:abs_g2_nc:.L__profc_memccpy
	movk	x16, #:abs_g3:.L__profc_memccpy
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #8]
	ldurb	w8, [x29, #-28]
	stur	w8, [x29, #-28]
	b	.LBB3_1
.LBB3_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	mov	w16, wzr
	str	w16, [sp, #4]                   // 4-byte Folded Spill
	cbz	x8, .LBB3_4
	b	.LBB3_2
.LBB3_2:                                //   in Loop: Header=BB3_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.3
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.3
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.3
	movk	x16, #:abs_g3:__llvm_gcov_ctr.3
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_memccpy+16
	movk	x16, #:abs_g1_nc:.L__profc_memccpy+16
	movk	x16, #:abs_g2_nc:.L__profc_memccpy+16
	movk	x16, #:abs_g3:.L__profc_memccpy+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	ldr	x16, [sp, #16]
	strb	w8, [x16]
	ldur	w16, [x29, #-28]
	subs	w8, w8, w16
	cset	w8, ne
	str	w8, [sp]                        // 4-byte Folded Spill
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.eq	.LBB3_4
	b	.LBB3_3
.LBB3_3:                                //   in Loop: Header=BB3_1 Depth=1
	ldr	w8, [sp]                        // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.3+8
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.3+8
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.3+8
	movk	x17, #:abs_g3:__llvm_gcov_ctr.3+8
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_memccpy+24
	movk	x17, #:abs_g1_nc:.L__profc_memccpy+24
	movk	x17, #:abs_g2_nc:.L__profc_memccpy+24
	movk	x17, #:abs_g3:.L__profc_memccpy+24
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB3_4
.LBB3_4:                                //   in Loop: Header=BB3_1 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB3_7
	b	.LBB3_5
.LBB3_5:                                //   in Loop: Header=BB3_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_memccpy+8
	movk	x16, #:abs_g1_nc:.L__profc_memccpy+8
	movk	x16, #:abs_g2_nc:.L__profc_memccpy+8
	movk	x16, #:abs_g3:.L__profc_memccpy+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB3_6
.LBB3_6:                                //   in Loop: Header=BB3_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.3+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.3+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.3+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.3+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	str	x8, [sp, #24]
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB3_1
.LBB3_7:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB3_9
	b	.LBB3_8
.LBB3_8:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.3+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.3+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.3+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.3+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_memccpy+32
	movk	x16, #:abs_g1_nc:.L__profc_memccpy+32
	movk	x16, #:abs_g2_nc:.L__profc_memccpy+32
	movk	x16, #:abs_g3:.L__profc_memccpy+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	stur	x8, [x29, #-8]
	b	.LBB3_10
.LBB3_9:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.3+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.3+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.3+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.3+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x8, xzr
	stur	x8, [x29, #-8]
	b	.LBB3_10
.LBB3_10:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end3:
	.size	memccpy, .Lfunc_end3-memccpy
	.cfi_endproc
                                        // -- End function
	.globl	memchr                          // -- Begin function memchr
	.p2align	2
	.type	memchr,@function
memchr:                                 // @memchr
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc_memchr
	movk	x16, #:abs_g1_nc:.L__profc_memchr
	movk	x16, #:abs_g2_nc:.L__profc_memchr
	movk	x16, #:abs_g3:.L__profc_memchr
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	ldurb	w8, [x29, #-12]
	stur	w8, [x29, #-12]
	b	.LBB4_1
.LBB4_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	mov	w16, wzr
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	cbz	x8, .LBB4_4
	b	.LBB4_2
.LBB4_2:                                //   in Loop: Header=BB4_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.4
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.4
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.4
	movk	x16, #:abs_g3:__llvm_gcov_ctr.4
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_memchr+16
	movk	x16, #:abs_g1_nc:.L__profc_memchr+16
	movk	x16, #:abs_g2_nc:.L__profc_memchr+16
	movk	x16, #:abs_g3:.L__profc_memchr+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	ldur	w16, [x29, #-12]
	subs	w8, w8, w16
	cset	w8, ne
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.eq	.LBB4_4
	b	.LBB4_3
.LBB4_3:                                //   in Loop: Header=BB4_1 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.4+8
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.4+8
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.4+8
	movk	x17, #:abs_g3:__llvm_gcov_ctr.4+8
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_memchr+24
	movk	x17, #:abs_g1_nc:.L__profc_memchr+24
	movk	x17, #:abs_g2_nc:.L__profc_memchr+24
	movk	x17, #:abs_g3:.L__profc_memchr+24
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB4_4
.LBB4_4:                                //   in Loop: Header=BB4_1 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB4_7
	b	.LBB4_5
.LBB4_5:                                //   in Loop: Header=BB4_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_memchr+8
	movk	x16, #:abs_g1_nc:.L__profc_memchr+8
	movk	x16, #:abs_g2_nc:.L__profc_memchr+8
	movk	x16, #:abs_g3:.L__profc_memchr+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB4_6
.LBB4_6:                                //   in Loop: Header=BB4_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.4+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.4+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.4+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.4+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB4_1
.LBB4_7:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB4_9
	b	.LBB4_8
.LBB4_8:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.4+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.4+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.4+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.4+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_memchr+32
	movk	x16, #:abs_g1_nc:.L__profc_memchr+32
	movk	x16, #:abs_g2_nc:.L__profc_memchr+32
	movk	x16, #:abs_g3:.L__profc_memchr+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x0, [sp, #16]
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB4_10
.LBB4_9:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.4+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.4+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.4+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.4+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x0, xzr
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB4_10
.LBB4_10:
	ldr	x0, [sp]                        // 8-byte Folded Reload
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end4:
	.size	memchr, .Lfunc_end4-memchr
	.cfi_endproc
                                        // -- End function
	.globl	memcmp                          // -- Begin function memcmp
	.p2align	2
	.type	memcmp,@function
memcmp:                                 // @memcmp
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	movz	x16, #:abs_g0_nc:.L__profc_memcmp
	movk	x16, #:abs_g1_nc:.L__profc_memcmp
	movk	x16, #:abs_g2_nc:.L__profc_memcmp
	movk	x16, #:abs_g3:.L__profc_memcmp
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #32]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]
	b	.LBB5_1
.LBB5_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-24]
	mov	w16, wzr
	str	w16, [sp, #20]                  // 4-byte Folded Spill
	cbz	x8, .LBB5_4
	b	.LBB5_2
.LBB5_2:                                //   in Loop: Header=BB5_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.5
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.5
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.5
	movk	x16, #:abs_g3:__llvm_gcov_ctr.5
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_memcmp+16
	movk	x16, #:abs_g1_nc:.L__profc_memcmp+16
	movk	x16, #:abs_g2_nc:.L__profc_memcmp+16
	movk	x16, #:abs_g3:.L__profc_memcmp+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #32]
	ldrb	w8, [x8]
	ldr	x16, [sp, #24]
	ldrb	w16, [x16]
	subs	w8, w8, w16
	cset	w8, eq
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b.ne	.LBB5_4
	b	.LBB5_3
.LBB5_3:                                //   in Loop: Header=BB5_1 Depth=1
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.5+8
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.5+8
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.5+8
	movk	x17, #:abs_g3:__llvm_gcov_ctr.5+8
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_memcmp+24
	movk	x17, #:abs_g1_nc:.L__profc_memcmp+24
	movk	x17, #:abs_g2_nc:.L__profc_memcmp+24
	movk	x17, #:abs_g3:.L__profc_memcmp+24
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB5_4
.LBB5_4:                                //   in Loop: Header=BB5_1 Depth=1
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB5_7
	b	.LBB5_5
.LBB5_5:                                //   in Loop: Header=BB5_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_memcmp+8
	movk	x16, #:abs_g1_nc:.L__profc_memcmp+8
	movk	x16, #:abs_g2_nc:.L__profc_memcmp+8
	movk	x16, #:abs_g3:.L__profc_memcmp+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB5_6
.LBB5_6:                                //   in Loop: Header=BB5_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.5+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.5+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.5+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.5+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-24]
	subs	x8, x8, #1
	stur	x8, [x29, #-24]
	ldr	x8, [sp, #32]
	add	x8, x8, #1
	str	x8, [sp, #32]
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB5_1
.LBB5_7:
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB5_9
	b	.LBB5_8
.LBB5_8:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.5+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.5+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.5+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.5+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_memcmp+32
	movk	x16, #:abs_g1_nc:.L__profc_memcmp+32
	movk	x16, #:abs_g2_nc:.L__profc_memcmp+32
	movk	x16, #:abs_g3:.L__profc_memcmp+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #32]
	ldrb	w8, [x8]
	ldr	x16, [sp, #24]
	ldrb	w16, [x16]
	subs	w0, w8, w16
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB5_10
.LBB5_9:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.5+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.5+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.5+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.5+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w0, wzr
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB5_10
.LBB5_10:
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end5:
	.size	memcmp, .Lfunc_end5-memcmp
	.cfi_endproc
                                        // -- End function
	.globl	memcpy                          // -- Begin function memcpy
	.p2align	2
	.type	memcpy,@function
memcpy:                                 // @memcpy
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.6
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.6
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.6
	movk	x16, #:abs_g3:__llvm_gcov_ctr.6
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc_memcpy
	movk	x16, #:abs_g1_nc:.L__profc_memcpy
	movk	x16, #:abs_g2_nc:.L__profc_memcpy
	movk	x16, #:abs_g3:.L__profc_memcpy
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	b	.LBB6_1
.LBB6_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	cbz	x8, .LBB6_4
	b	.LBB6_2
.LBB6_2:                                //   in Loop: Header=BB6_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_memcpy+8
	movk	x16, #:abs_g1_nc:.L__profc_memcpy+8
	movk	x16, #:abs_g2_nc:.L__profc_memcpy+8
	movk	x16, #:abs_g3:.L__profc_memcpy+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	add	x16, x8, #1
	str	x16, [sp, #8]
	ldrb	w8, [x8]
	ldr	x16, [sp, #16]
	add	x17, x16, #1
	str	x17, [sp, #16]
	strb	w8, [x16]
	b	.LBB6_3
.LBB6_3:                                //   in Loop: Header=BB6_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.6+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.6+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.6+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.6+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB6_1
.LBB6_4:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end6:
	.size	memcpy, .Lfunc_end6-memcpy
	.cfi_endproc
                                        // -- End function
	.globl	memrchr                         // -- Begin function memrchr
	.p2align	2
	.type	memrchr,@function
memrchr:                                // @memrchr
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	str	x2, [sp, #16]
	movz	x16, #:abs_g0_nc:.L__profc_memrchr
	movk	x16, #:abs_g1_nc:.L__profc_memrchr
	movk	x16, #:abs_g2_nc:.L__profc_memrchr
	movk	x16, #:abs_g3:.L__profc_memrchr
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	ldurb	w8, [x29, #-20]
	stur	w8, [x29, #-20]
	b	.LBB7_1
.LBB7_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	subs	x16, x8, #1
	str	x16, [sp, #16]
	cbz	x8, .LBB7_5
	b	.LBB7_2
.LBB7_2:                                //   in Loop: Header=BB7_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_memrchr+8
	movk	x16, #:abs_g1_nc:.L__profc_memrchr+8
	movk	x16, #:abs_g2_nc:.L__profc_memrchr+8
	movk	x16, #:abs_g3:.L__profc_memrchr+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	ldr	x16, [sp, #16]
	ldrb	w8, [x8, x16]
	ldur	w16, [x29, #-20]
	subs	w8, w8, w16
	b.ne	.LBB7_4
	b	.LBB7_3
.LBB7_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.7
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.7
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.7
	movk	x16, #:abs_g3:__llvm_gcov_ctr.7
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_memrchr+16
	movk	x16, #:abs_g1_nc:.L__profc_memrchr+16
	movk	x16, #:abs_g2_nc:.L__profc_memrchr+16
	movk	x16, #:abs_g3:.L__profc_memrchr+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	ldr	x16, [sp, #16]
	add	x8, x8, x16
	stur	x8, [x29, #-8]
	b	.LBB7_6
.LBB7_4:                                //   in Loop: Header=BB7_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.7+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.7+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.7+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.7+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB7_1
.LBB7_5:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.7+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.7+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.7+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.7+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x8, xzr
	stur	x8, [x29, #-8]
	b	.LBB7_6
.LBB7_6:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end7:
	.size	memrchr, .Lfunc_end7-memrchr
	.cfi_endproc
                                        // -- End function
	.globl	memset                          // -- Begin function memset
	.p2align	2
	.type	memset,@function
memset:                                 // @memset
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc_memset
	movk	x16, #:abs_g1_nc:.L__profc_memset
	movk	x16, #:abs_g2_nc:.L__profc_memset
	movk	x16, #:abs_g3:.L__profc_memset
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	b	.LBB8_1
.LBB8_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	cbz	x8, .LBB8_4
	b	.LBB8_2
.LBB8_2:                                //   in Loop: Header=BB8_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_memset+8
	movk	x16, #:abs_g1_nc:.L__profc_memset+8
	movk	x16, #:abs_g2_nc:.L__profc_memset+8
	movk	x16, #:abs_g3:.L__profc_memset+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-12]
	ldr	x16, [sp, #16]
	strb	w8, [x16]
	b	.LBB8_3
.LBB8_3:                                //   in Loop: Header=BB8_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.8+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.8+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.8+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.8+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	str	x8, [sp, #24]
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB8_1
.LBB8_4:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end8:
	.size	memset, .Lfunc_end8-memset
	.cfi_endproc
                                        // -- End function
	.globl	stpcpy                          // -- Begin function stpcpy
	.p2align	2
	.type	stpcpy,@function
stpcpy:                                 // @stpcpy
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.9
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.9
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.9
	movk	x16, #:abs_g3:__llvm_gcov_ctr.9
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	str	x1, [sp]
	movz	x16, #:abs_g0_nc:.L__profc_stpcpy
	movk	x16, #:abs_g1_nc:.L__profc_stpcpy
	movk	x16, #:abs_g2_nc:.L__profc_stpcpy
	movk	x16, #:abs_g3:.L__profc_stpcpy
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB9_1
.LBB9_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	ldrb	w8, [x8]
	ldr	x16, [sp, #8]
	strb	w8, [x16]
	cbz	w8, .LBB9_4
	b	.LBB9_2
.LBB9_2:                                //   in Loop: Header=BB9_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_stpcpy+8
	movk	x16, #:abs_g1_nc:.L__profc_stpcpy+8
	movk	x16, #:abs_g2_nc:.L__profc_stpcpy+8
	movk	x16, #:abs_g3:.L__profc_stpcpy+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB9_3
.LBB9_3:                                //   in Loop: Header=BB9_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.9+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.9+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.9+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.9+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp]
	add	x8, x8, #1
	str	x8, [sp]
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB9_1
.LBB9_4:
	ldr	x0, [sp, #8]
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end9:
	.size	stpcpy, .Lfunc_end9-stpcpy
	.cfi_endproc
                                        // -- End function
	.globl	strchrnul                       // -- Begin function strchrnul
	.p2align	2
	.type	strchrnul,@function
strchrnul:                              // @strchrnul
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.10
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.10
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.10
	movk	x16, #:abs_g3:__llvm_gcov_ctr.10
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	movz	x16, #:abs_g0_nc:.L__profc_strchrnul
	movk	x16, #:abs_g1_nc:.L__profc_strchrnul
	movk	x16, #:abs_g2_nc:.L__profc_strchrnul
	movk	x16, #:abs_g3:.L__profc_strchrnul
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurb	w8, [x29, #-12]
	stur	w8, [x29, #-12]
	b	.LBB10_1
.LBB10_1:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	mov	w16, wzr
	str	w16, [sp, #16]                  // 4-byte Folded Spill
	cbz	w8, .LBB10_4
	b	.LBB10_2
.LBB10_2:                               //   in Loop: Header=BB10_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.10+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.10+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.10+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.10+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_strchrnul+16
	movk	x16, #:abs_g1_nc:.L__profc_strchrnul+16
	movk	x16, #:abs_g2_nc:.L__profc_strchrnul+16
	movk	x16, #:abs_g3:.L__profc_strchrnul+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	ldur	w16, [x29, #-12]
	subs	w8, w8, w16
	cset	w8, ne
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b.eq	.LBB10_4
	b	.LBB10_3
.LBB10_3:                               //   in Loop: Header=BB10_1 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.10+16
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.10+16
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.10+16
	movk	x17, #:abs_g3:__llvm_gcov_ctr.10+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_strchrnul+24
	movk	x17, #:abs_g1_nc:.L__profc_strchrnul+24
	movk	x17, #:abs_g2_nc:.L__profc_strchrnul+24
	movk	x17, #:abs_g3:.L__profc_strchrnul+24
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB10_4
.LBB10_4:                               //   in Loop: Header=BB10_1 Depth=1
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB10_7
	b	.LBB10_5
.LBB10_5:                               //   in Loop: Header=BB10_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_strchrnul+8
	movk	x16, #:abs_g1_nc:.L__profc_strchrnul+8
	movk	x16, #:abs_g2_nc:.L__profc_strchrnul+8
	movk	x16, #:abs_g3:.L__profc_strchrnul+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB10_6
.LBB10_6:                               //   in Loop: Header=BB10_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.10+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.10+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.10+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.10+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	add	x8, x8, #1
	stur	x8, [x29, #-8]
	b	.LBB10_1
.LBB10_7:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end10:
	.size	strchrnul, .Lfunc_end10-strchrnul
	.cfi_endproc
                                        // -- End function
	.globl	strchr                          // -- Begin function strchr
	.p2align	2
	.type	strchr,@function
strchr:                                 // @strchr
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	movz	x16, #:abs_g0_nc:.L__profc_strchr
	movk	x16, #:abs_g1_nc:.L__profc_strchr
	movk	x16, #:abs_g2_nc:.L__profc_strchr
	movk	x16, #:abs_g3:.L__profc_strchr
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB11_2
.LBB11_1:                               //   in Loop: Header=BB11_2 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.11+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.11+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.11+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.11+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_strchr+8
	movk	x16, #:abs_g1_nc:.L__profc_strchr+8
	movk	x16, #:abs_g2_nc:.L__profc_strchr+8
	movk	x16, #:abs_g3:.L__profc_strchr+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB11_2
.LBB11_2:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	ldr	w16, [sp, #12]
	subs	w8, w8, w16
	b.ne	.LBB11_4
	b	.LBB11_3
.LBB11_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.11
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.11
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.11
	movk	x16, #:abs_g3:__llvm_gcov_ctr.11
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_strchr+16
	movk	x16, #:abs_g1_nc:.L__profc_strchr+16
	movk	x16, #:abs_g2_nc:.L__profc_strchr+16
	movk	x16, #:abs_g3:.L__profc_strchr+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB11_7
.LBB11_4:                               //   in Loop: Header=BB11_2 Depth=1
	b	.LBB11_5
.LBB11_5:                               //   in Loop: Header=BB11_2 Depth=1
	ldr	x8, [sp, #16]
	add	x16, x8, #1
	str	x16, [sp, #16]
	ldrb	w8, [x8]
	cbnz	w8, .LBB11_1
	b	.LBB11_6
.LBB11_6:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.11+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.11+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.11+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.11+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x8, xzr
	stur	x8, [x29, #-8]
	b	.LBB11_7
.LBB11_7:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end11:
	.size	strchr, .Lfunc_end11-strchr
	.cfi_endproc
                                        // -- End function
	.globl	strcmp                          // -- Begin function strcmp
	.p2align	2
	.type	strcmp,@function
strcmp:                                 // @strcmp
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.12
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.12
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.12
	movk	x16, #:abs_g3:__llvm_gcov_ctr.12
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	movz	x16, #:abs_g0_nc:.L__profc_strcmp
	movk	x16, #:abs_g1_nc:.L__profc_strcmp
	movk	x16, #:abs_g2_nc:.L__profc_strcmp
	movk	x16, #:abs_g3:.L__profc_strcmp
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB12_1
.LBB12_1:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w16, [x8]
	ldr	x8, [sp, #16]
	ldrb	w17, [x8]
	mov	w8, wzr
	subs	w16, w16, w17
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.ne	.LBB12_4
	b	.LBB12_2
.LBB12_2:                               //   in Loop: Header=BB12_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.12+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.12+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.12+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.12+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_strcmp+16
	movk	x16, #:abs_g1_nc:.L__profc_strcmp+16
	movk	x16, #:abs_g2_nc:.L__profc_strcmp+16
	movk	x16, #:abs_g3:.L__profc_strcmp+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	subs	w16, w8, #0
	cset	w16, ne
	str	w16, [sp, #8]                   // 4-byte Folded Spill
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	cbz	w8, .LBB12_4
	b	.LBB12_3
.LBB12_3:                               //   in Loop: Header=BB12_1 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.12+16
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.12+16
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.12+16
	movk	x17, #:abs_g3:__llvm_gcov_ctr.12+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_strcmp+24
	movk	x17, #:abs_g1_nc:.L__profc_strcmp+24
	movk	x17, #:abs_g2_nc:.L__profc_strcmp+24
	movk	x17, #:abs_g3:.L__profc_strcmp+24
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB12_4
.LBB12_4:                               //   in Loop: Header=BB12_1 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB12_7
	b	.LBB12_5
.LBB12_5:                               //   in Loop: Header=BB12_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_strcmp+8
	movk	x16, #:abs_g1_nc:.L__profc_strcmp+8
	movk	x16, #:abs_g2_nc:.L__profc_strcmp+8
	movk	x16, #:abs_g3:.L__profc_strcmp+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB12_6
.LBB12_6:                               //   in Loop: Header=BB12_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.12+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.12+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.12+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.12+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	add	x8, x8, #1
	stur	x8, [x29, #-8]
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB12_1
.LBB12_7:
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	ldr	x16, [sp, #16]
	ldrb	w16, [x16]
	subs	w0, w8, w16
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end12:
	.size	strcmp, .Lfunc_end12-strcmp
	.cfi_endproc
                                        // -- End function
	.globl	strlen                          // -- Begin function strlen
	.p2align	2
	.type	strlen,@function
strlen:                                 // @strlen
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.13
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.13
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.13
	movk	x16, #:abs_g3:__llvm_gcov_ctr.13
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_strlen
	movk	x16, #:abs_g1_nc:.L__profc_strlen
	movk	x16, #:abs_g2_nc:.L__profc_strlen
	movk	x16, #:abs_g3:.L__profc_strlen
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	b	.LBB13_1
.LBB13_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	cbz	w8, .LBB13_4
	b	.LBB13_2
.LBB13_2:                               //   in Loop: Header=BB13_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_strlen+8
	movk	x16, #:abs_g1_nc:.L__profc_strlen+8
	movk	x16, #:abs_g2_nc:.L__profc_strlen+8
	movk	x16, #:abs_g3:.L__profc_strlen+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB13_3
.LBB13_3:                               //   in Loop: Header=BB13_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.13+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.13+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.13+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.13+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB13_1
.LBB13_4:
	ldr	x8, [sp, #8]
	ldr	x16, [sp]
	subs	x0, x8, x16
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end13:
	.size	strlen, .Lfunc_end13-strlen
	.cfi_endproc
                                        // -- End function
	.globl	strncmp                         // -- Begin function strncmp
	.p2align	2
	.type	strncmp,@function
strncmp:                                // @strncmp
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	movz	x16, #:abs_g0_nc:.L__profc_strncmp
	movk	x16, #:abs_g1_nc:.L__profc_strncmp
	movk	x16, #:abs_g2_nc:.L__profc_strncmp
	movk	x16, #:abs_g3:.L__profc_strncmp
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #16]
	ldr	x8, [sp, #32]
	subs	x16, x8, #1
	str	x16, [sp, #32]
	cbnz	x8, .LBB14_2
	b	.LBB14_1
.LBB14_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.14+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.14+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.14+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.14+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_strncmp+8
	movk	x16, #:abs_g1_nc:.L__profc_strncmp+8
	movk	x16, #:abs_g2_nc:.L__profc_strncmp+8
	movk	x16, #:abs_g3:.L__profc_strncmp+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB14_14
.LBB14_2:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.14
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.14
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.14
	movk	x16, #:abs_g3:__llvm_gcov_ctr.14
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB14_3
.LBB14_3:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldrb	w8, [x8]
	mov	w16, wzr
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	cbz	w8, .LBB14_10
	b	.LBB14_4
.LBB14_4:                               //   in Loop: Header=BB14_3 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.14+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.14+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.14+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.14+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_strncmp+56
	movk	x16, #:abs_g1_nc:.L__profc_strncmp+56
	movk	x16, #:abs_g2_nc:.L__profc_strncmp+56
	movk	x16, #:abs_g3:.L__profc_strncmp+56
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	mov	w16, wzr
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	cbz	w8, .LBB14_10
	b	.LBB14_5
.LBB14_5:                               //   in Loop: Header=BB14_3 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.14+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.14+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.14+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.14+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_strncmp+64
	movk	x16, #:abs_g1_nc:.L__profc_strncmp+64
	movk	x16, #:abs_g2_nc:.L__profc_strncmp+64
	movk	x16, #:abs_g3:.L__profc_strncmp+64
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB14_6
.LBB14_6:                               //   in Loop: Header=BB14_3 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_strncmp+40
	movk	x16, #:abs_g1_nc:.L__profc_strncmp+40
	movk	x16, #:abs_g2_nc:.L__profc_strncmp+40
	movk	x16, #:abs_g3:.L__profc_strncmp+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #32]
	mov	w16, wzr
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	cbz	x8, .LBB14_10
	b	.LBB14_7
.LBB14_7:                               //   in Loop: Header=BB14_3 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.14+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.14+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.14+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.14+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_strncmp+48
	movk	x16, #:abs_g1_nc:.L__profc_strncmp+48
	movk	x16, #:abs_g2_nc:.L__profc_strncmp+48
	movk	x16, #:abs_g3:.L__profc_strncmp+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB14_8
.LBB14_8:                               //   in Loop: Header=BB14_3 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_strncmp+24
	movk	x16, #:abs_g1_nc:.L__profc_strncmp+24
	movk	x16, #:abs_g2_nc:.L__profc_strncmp+24
	movk	x16, #:abs_g3:.L__profc_strncmp+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	ldrb	w8, [x8]
	ldr	x16, [sp, #16]
	ldrb	w16, [x16]
	subs	w8, w8, w16
	cset	w8, eq
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.ne	.LBB14_10
	b	.LBB14_9
.LBB14_9:                               //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.14+40
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.14+40
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.14+40
	movk	x17, #:abs_g3:__llvm_gcov_ctr.14+40
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_strncmp+32
	movk	x17, #:abs_g1_nc:.L__profc_strncmp+32
	movk	x17, #:abs_g2_nc:.L__profc_strncmp+32
	movk	x17, #:abs_g3:.L__profc_strncmp+32
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB14_10
.LBB14_10:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB14_13
	b	.LBB14_11
.LBB14_11:                              //   in Loop: Header=BB14_3 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_strncmp+16
	movk	x16, #:abs_g1_nc:.L__profc_strncmp+16
	movk	x16, #:abs_g2_nc:.L__profc_strncmp+16
	movk	x16, #:abs_g3:.L__profc_strncmp+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB14_12
.LBB14_12:                              //   in Loop: Header=BB14_3 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.14+48
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.14+48
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.14+48
	movk	x16, #:abs_g3:__llvm_gcov_ctr.14+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	ldr	x8, [sp, #32]
	subs	x8, x8, #1
	str	x8, [sp, #32]
	b	.LBB14_3
.LBB14_13:
	ldr	x8, [sp, #24]
	ldrb	w8, [x8]
	ldr	x16, [sp, #16]
	ldrb	w16, [x16]
	subs	w8, w8, w16
	stur	w8, [x29, #-4]
	b	.LBB14_14
.LBB14_14:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end14:
	.size	strncmp, .Lfunc_end14-strncmp
	.cfi_endproc
                                        // -- End function
	.globl	swab                            // -- Begin function swab
	.p2align	2
	.type	swab,@function
swab:                                   // @swab
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.15
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.15
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.15
	movk	x16, #:abs_g3:__llvm_gcov_ctr.15
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc_swab
	movk	x16, #:abs_g1_nc:.L__profc_swab
	movk	x16, #:abs_g2_nc:.L__profc_swab
	movk	x16, #:abs_g3:.L__profc_swab
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	b	.LBB15_1
.LBB15_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	subs	x8, x8, #2
	b.lt	.LBB15_4
	b	.LBB15_2
.LBB15_2:                               //   in Loop: Header=BB15_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_swab+8
	movk	x16, #:abs_g1_nc:.L__profc_swab+8
	movk	x16, #:abs_g2_nc:.L__profc_swab+8
	movk	x16, #:abs_g3:.L__profc_swab+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	ldrb	w8, [x8, #1]
	ldr	x16, [sp, #8]
	strb	w8, [x16]
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	ldr	x16, [sp, #8]
	strb	w8, [x16, #1]
	ldr	x8, [sp, #8]
	add	x8, x8, #2
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	add	x8, x8, #2
	str	x8, [sp, #16]
	b	.LBB15_3
.LBB15_3:                               //   in Loop: Header=BB15_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.15+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.15+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.15+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.15+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #2
	str	x8, [sp, #24]
	b	.LBB15_1
.LBB15_4:
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end15:
	.size	swab, .Lfunc_end15-swab
	.cfi_endproc
                                        // -- End function
	.globl	isalpha                         // -- Begin function isalpha
	.p2align	2
	.type	isalpha,@function
isalpha:                                // @isalpha
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc_isalpha
	movk	x16, #:abs_g1_nc:.L__profc_isalpha
	movk	x16, #:abs_g2_nc:.L__profc_isalpha
	movk	x16, #:abs_g3:.L__profc_isalpha
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	orr	w8, w8, #0x20
	subs	w8, w8, #97
	subs	w8, w8, #26
	cset	w0, lo
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end16:
	.size	isalpha, .Lfunc_end16-isalpha
	.cfi_endproc
                                        // -- End function
	.globl	isascii                         // -- Begin function isascii
	.p2align	2
	.type	isascii,@function
isascii:                                // @isascii
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.17
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.17
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.17
	movk	x16, #:abs_g3:__llvm_gcov_ctr.17
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc_isascii
	movk	x16, #:abs_g1_nc:.L__profc_isascii
	movk	x16, #:abs_g2_nc:.L__profc_isascii
	movk	x16, #:abs_g3:.L__profc_isascii
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	ands	w8, w8, #0xffffff80
	cset	w0, eq
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end17:
	.size	isascii, .Lfunc_end17-isascii
	.cfi_endproc
                                        // -- End function
	.globl	isblank                         // -- Begin function isblank
	.p2align	2
	.type	isblank,@function
isblank:                                // @isblank
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.18
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.18
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.18
	movk	x16, #:abs_g3:__llvm_gcov_ctr.18
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc_isblank
	movk	x16, #:abs_g1_nc:.L__profc_isblank
	movk	x16, #:abs_g2_nc:.L__profc_isblank
	movk	x16, #:abs_g3:.L__profc_isblank
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w16, [x29, #-4]
	mov	w8, #1                          // =0x1
	subs	w16, w16, #32
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.eq	.LBB18_3
	b	.LBB18_1
.LBB18_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.18+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.18+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.18+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.18+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_isblank+8
	movk	x16, #:abs_g1_nc:.L__profc_isblank+8
	movk	x16, #:abs_g2_nc:.L__profc_isblank+8
	movk	x16, #:abs_g3:.L__profc_isblank+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #9
	cset	w8, eq
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.eq	.LBB18_3
	b	.LBB18_2
.LBB18_2:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.18+16
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.18+16
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.18+16
	movk	x17, #:abs_g3:__llvm_gcov_ctr.18+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_isblank+16
	movk	x17, #:abs_g1_nc:.L__profc_isblank+16
	movk	x17, #:abs_g2_nc:.L__profc_isblank+16
	movk	x17, #:abs_g3:.L__profc_isblank+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB18_3
.LBB18_3:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end18:
	.size	isblank, .Lfunc_end18-isblank
	.cfi_endproc
                                        // -- End function
	.globl	iscntrl                         // -- Begin function iscntrl
	.p2align	2
	.type	iscntrl,@function
iscntrl:                                // @iscntrl
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.19
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.19
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.19
	movk	x16, #:abs_g3:__llvm_gcov_ctr.19
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc_iscntrl
	movk	x16, #:abs_g1_nc:.L__profc_iscntrl
	movk	x16, #:abs_g2_nc:.L__profc_iscntrl
	movk	x16, #:abs_g3:.L__profc_iscntrl
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w16, [x29, #-4]
	mov	w8, #1                          // =0x1
	subs	w16, w16, #32
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.lo	.LBB19_3
	b	.LBB19_1
.LBB19_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.19+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.19+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.19+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.19+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_iscntrl+8
	movk	x16, #:abs_g1_nc:.L__profc_iscntrl+8
	movk	x16, #:abs_g2_nc:.L__profc_iscntrl+8
	movk	x16, #:abs_g3:.L__profc_iscntrl+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #127
	cset	w8, eq
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.eq	.LBB19_3
	b	.LBB19_2
.LBB19_2:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.19+16
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.19+16
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.19+16
	movk	x17, #:abs_g3:__llvm_gcov_ctr.19+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_iscntrl+16
	movk	x17, #:abs_g1_nc:.L__profc_iscntrl+16
	movk	x17, #:abs_g2_nc:.L__profc_iscntrl+16
	movk	x17, #:abs_g3:.L__profc_iscntrl+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB19_3
.LBB19_3:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end19:
	.size	iscntrl, .Lfunc_end19-iscntrl
	.cfi_endproc
                                        // -- End function
	.globl	isdigit                         // -- Begin function isdigit
	.p2align	2
	.type	isdigit,@function
isdigit:                                // @isdigit
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.20
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.20
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.20
	movk	x16, #:abs_g3:__llvm_gcov_ctr.20
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc_isdigit
	movk	x16, #:abs_g1_nc:.L__profc_isdigit
	movk	x16, #:abs_g2_nc:.L__profc_isdigit
	movk	x16, #:abs_g3:.L__profc_isdigit
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #48
	subs	w8, w8, #10
	cset	w0, lo
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end20:
	.size	isdigit, .Lfunc_end20-isdigit
	.cfi_endproc
                                        // -- End function
	.globl	isgraph                         // -- Begin function isgraph
	.p2align	2
	.type	isgraph,@function
isgraph:                                // @isgraph
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.21
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.21
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.21
	movk	x16, #:abs_g3:__llvm_gcov_ctr.21
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc_isgraph
	movk	x16, #:abs_g1_nc:.L__profc_isgraph
	movk	x16, #:abs_g2_nc:.L__profc_isgraph
	movk	x16, #:abs_g3:.L__profc_isgraph
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #33
	subs	w8, w8, #94
	cset	w0, lo
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end21:
	.size	isgraph, .Lfunc_end21-isgraph
	.cfi_endproc
                                        // -- End function
	.globl	islower                         // -- Begin function islower
	.p2align	2
	.type	islower,@function
islower:                                // @islower
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.22
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.22
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.22
	movk	x16, #:abs_g3:__llvm_gcov_ctr.22
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc_islower
	movk	x16, #:abs_g1_nc:.L__profc_islower
	movk	x16, #:abs_g2_nc:.L__profc_islower
	movk	x16, #:abs_g3:.L__profc_islower
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #97
	subs	w8, w8, #26
	cset	w0, lo
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end22:
	.size	islower, .Lfunc_end22-islower
	.cfi_endproc
                                        // -- End function
	.globl	isprint                         // -- Begin function isprint
	.p2align	2
	.type	isprint,@function
isprint:                                // @isprint
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.23
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.23
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.23
	movk	x16, #:abs_g3:__llvm_gcov_ctr.23
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc_isprint
	movk	x16, #:abs_g1_nc:.L__profc_isprint
	movk	x16, #:abs_g2_nc:.L__profc_isprint
	movk	x16, #:abs_g3:.L__profc_isprint
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #32
	subs	w8, w8, #95
	cset	w0, lo
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end23:
	.size	isprint, .Lfunc_end23-isprint
	.cfi_endproc
                                        // -- End function
	.globl	isspace                         // -- Begin function isspace
	.p2align	2
	.type	isspace,@function
isspace:                                // @isspace
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc_isspace
	movk	x16, #:abs_g1_nc:.L__profc_isspace
	movk	x16, #:abs_g2_nc:.L__profc_isspace
	movk	x16, #:abs_g3:.L__profc_isspace
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w16, [x29, #-4]
	mov	w8, #1                          // =0x1
	subs	w16, w16, #32
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.eq	.LBB24_3
	b	.LBB24_1
.LBB24_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.24+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.24+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.24+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.24+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_isspace+8
	movk	x16, #:abs_g1_nc:.L__profc_isspace+8
	movk	x16, #:abs_g2_nc:.L__profc_isspace+8
	movk	x16, #:abs_g3:.L__profc_isspace+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #9
	subs	w8, w8, #5
	cset	w8, lo
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.lo	.LBB24_3
	b	.LBB24_2
.LBB24_2:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.24+16
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.24+16
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.24+16
	movk	x17, #:abs_g3:__llvm_gcov_ctr.24+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_isspace+16
	movk	x17, #:abs_g1_nc:.L__profc_isspace+16
	movk	x17, #:abs_g2_nc:.L__profc_isspace+16
	movk	x17, #:abs_g3:.L__profc_isspace+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB24_3
.LBB24_3:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end24:
	.size	isspace, .Lfunc_end24-isspace
	.cfi_endproc
                                        // -- End function
	.globl	isupper                         // -- Begin function isupper
	.p2align	2
	.type	isupper,@function
isupper:                                // @isupper
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.25
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.25
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.25
	movk	x16, #:abs_g3:__llvm_gcov_ctr.25
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc_isupper
	movk	x16, #:abs_g1_nc:.L__profc_isupper
	movk	x16, #:abs_g2_nc:.L__profc_isupper
	movk	x16, #:abs_g3:.L__profc_isupper
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #65
	subs	w8, w8, #26
	cset	w0, lo
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end25:
	.size	isupper, .Lfunc_end25-isupper
	.cfi_endproc
                                        // -- End function
	.globl	iswcntrl                        // -- Begin function iswcntrl
	.p2align	2
	.type	iswcntrl,@function
iswcntrl:                               // @iswcntrl
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.26
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.26
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.26
	movk	x16, #:abs_g3:__llvm_gcov_ctr.26
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc_iswcntrl
	movk	x16, #:abs_g1_nc:.L__profc_iswcntrl
	movk	x16, #:abs_g2_nc:.L__profc_iswcntrl
	movk	x16, #:abs_g3:.L__profc_iswcntrl
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w16, [x29, #-4]
	mov	w8, #1                          // =0x1
	subs	w16, w16, #32
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.lo	.LBB26_7
	b	.LBB26_1
.LBB26_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.26+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.26+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.26+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.26+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_iswcntrl+40
	movk	x16, #:abs_g1_nc:.L__profc_iswcntrl+40
	movk	x16, #:abs_g2_nc:.L__profc_iswcntrl+40
	movk	x16, #:abs_g3:.L__profc_iswcntrl+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	subs	w16, w8, #127
	mov	w8, #1                          // =0x1
	subs	w16, w16, #33
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.lo	.LBB26_7
	b	.LBB26_2
.LBB26_2:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.26+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.26+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.26+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.26+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_iswcntrl+48
	movk	x16, #:abs_g1_nc:.L__profc_iswcntrl+48
	movk	x16, #:abs_g2_nc:.L__profc_iswcntrl+48
	movk	x16, #:abs_g3:.L__profc_iswcntrl+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB26_3
.LBB26_3:
	movz	x16, #:abs_g0_nc:.L__profc_iswcntrl+24
	movk	x16, #:abs_g1_nc:.L__profc_iswcntrl+24
	movk	x16, #:abs_g2_nc:.L__profc_iswcntrl+24
	movk	x16, #:abs_g3:.L__profc_iswcntrl+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	mov	w16, #-8232                     // =0xffffdfd8
	add	w16, w8, w16
	mov	w8, #1                          // =0x1
	subs	w16, w16, #2
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.lo	.LBB26_7
	b	.LBB26_4
.LBB26_4:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.26+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.26+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.26+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.26+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_iswcntrl+32
	movk	x16, #:abs_g1_nc:.L__profc_iswcntrl+32
	movk	x16, #:abs_g2_nc:.L__profc_iswcntrl+32
	movk	x16, #:abs_g3:.L__profc_iswcntrl+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB26_5
.LBB26_5:
	movz	x16, #:abs_g0_nc:.L__profc_iswcntrl+8
	movk	x16, #:abs_g1_nc:.L__profc_iswcntrl+8
	movk	x16, #:abs_g2_nc:.L__profc_iswcntrl+8
	movk	x16, #:abs_g3:.L__profc_iswcntrl+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	mov	w16, #-65529                    // =0xffff0007
	add	w8, w8, w16
	subs	w8, w8, #3
	cset	w8, lo
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.lo	.LBB26_7
	b	.LBB26_6
.LBB26_6:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.26+32
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.26+32
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.26+32
	movk	x17, #:abs_g3:__llvm_gcov_ctr.26+32
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_iswcntrl+16
	movk	x17, #:abs_g1_nc:.L__profc_iswcntrl+16
	movk	x17, #:abs_g2_nc:.L__profc_iswcntrl+16
	movk	x17, #:abs_g3:.L__profc_iswcntrl+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB26_7
.LBB26_7:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end26:
	.size	iswcntrl, .Lfunc_end26-iswcntrl
	.cfi_endproc
                                        // -- End function
	.globl	iswdigit                        // -- Begin function iswdigit
	.p2align	2
	.type	iswdigit,@function
iswdigit:                               // @iswdigit
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.27
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.27
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.27
	movk	x16, #:abs_g3:__llvm_gcov_ctr.27
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc_iswdigit
	movk	x16, #:abs_g1_nc:.L__profc_iswdigit
	movk	x16, #:abs_g2_nc:.L__profc_iswdigit
	movk	x16, #:abs_g3:.L__profc_iswdigit
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #48
	subs	w8, w8, #10
	cset	w0, lo
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end27:
	.size	iswdigit, .Lfunc_end27-iswdigit
	.cfi_endproc
                                        // -- End function
	.globl	iswprint                        // -- Begin function iswprint
	.p2align	2
	.type	iswprint,@function
iswprint:                               // @iswprint
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_iswprint
	movk	x16, #:abs_g1_nc:.L__profc_iswprint
	movk	x16, #:abs_g2_nc:.L__profc_iswprint
	movk	x16, #:abs_g3:.L__profc_iswprint
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #8]
	subs	w8, w8, #254
	b.hi	.LBB28_2
	b	.LBB28_1
.LBB28_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.28
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.28
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.28
	movk	x16, #:abs_g3:__llvm_gcov_ctr.28
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_iswprint+8
	movk	x16, #:abs_g1_nc:.L__profc_iswprint+8
	movk	x16, #:abs_g2_nc:.L__profc_iswprint+8
	movk	x16, #:abs_g3:.L__profc_iswprint+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	and	w8, w8, #0x7f
	subs	w8, w8, #32
	cset	w8, gt
	stur	w8, [x29, #-4]
	b	.LBB28_13
.LBB28_2:
	ldr	w8, [sp, #8]
	lsr	w8, w8, #3
	subs	w8, w8, #1029
	b.lo	.LBB28_7
	b	.LBB28_3
.LBB28_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.28+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.28+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.28+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.28+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_iswprint+40
	movk	x16, #:abs_g1_nc:.L__profc_iswprint+40
	movk	x16, #:abs_g2_nc:.L__profc_iswprint+40
	movk	x16, #:abs_g3:.L__profc_iswprint+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #8]
	mov	w16, #-8234                     // =0xffffdfd6
	add	w8, w8, w16
	mov	w16, #47062                     // =0xb7d6
	subs	w8, w8, w16
	b.lo	.LBB28_7
	b	.LBB28_4
.LBB28_4:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.28+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.28+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.28+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.28+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_iswprint+48
	movk	x16, #:abs_g1_nc:.L__profc_iswprint+48
	movk	x16, #:abs_g2_nc:.L__profc_iswprint+48
	movk	x16, #:abs_g3:.L__profc_iswprint+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB28_5
.LBB28_5:
	movz	x16, #:abs_g0_nc:.L__profc_iswprint+24
	movk	x16, #:abs_g1_nc:.L__profc_iswprint+24
	movk	x16, #:abs_g2_nc:.L__profc_iswprint+24
	movk	x16, #:abs_g3:.L__profc_iswprint+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #8]
	subs	w8, w8, #14, lsl #12            // =57344
	mov	w16, #8185                      // =0x1ff9
	subs	w8, w8, w16
	b.lo	.LBB28_7
	b	.LBB28_6
.LBB28_6:
	movz	x16, #:abs_g0_nc:.L__profc_iswprint+32
	movk	x16, #:abs_g1_nc:.L__profc_iswprint+32
	movk	x16, #:abs_g2_nc:.L__profc_iswprint+32
	movk	x16, #:abs_g3:.L__profc_iswprint+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB28_8
.LBB28_7:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.28+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.28+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.28+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.28+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_iswprint+16
	movk	x16, #:abs_g1_nc:.L__profc_iswprint+16
	movk	x16, #:abs_g2_nc:.L__profc_iswprint+16
	movk	x16, #:abs_g3:.L__profc_iswprint+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB28_13
.LBB28_8:
	ldr	w8, [sp, #8]
	mov	w16, #-65532                    // =0xffff0004
	add	w8, w8, w16
	mov	w16, #3                         // =0x3
	movk	w16, #16, lsl #16
	subs	w8, w8, w16
	b.hi	.LBB28_11
	b	.LBB28_9
.LBB28_9:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.28+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.28+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.28+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.28+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_iswprint+64
	movk	x16, #:abs_g1_nc:.L__profc_iswprint+64
	movk	x16, #:abs_g2_nc:.L__profc_iswprint+64
	movk	x16, #:abs_g3:.L__profc_iswprint+64
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w16, [sp, #8]
	mov	w8, #65534                      // =0xfffe
	bic	w8, w8, w16
	cbz	w8, .LBB28_11
	b	.LBB28_10
.LBB28_10:
	movz	x16, #:abs_g0_nc:.L__profc_iswprint+72
	movk	x16, #:abs_g1_nc:.L__profc_iswprint+72
	movk	x16, #:abs_g2_nc:.L__profc_iswprint+72
	movk	x16, #:abs_g3:.L__profc_iswprint+72
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB28_12
.LBB28_11:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.28+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.28+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.28+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.28+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_iswprint+56
	movk	x16, #:abs_g1_nc:.L__profc_iswprint+56
	movk	x16, #:abs_g2_nc:.L__profc_iswprint+56
	movk	x16, #:abs_g3:.L__profc_iswprint+56
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB28_13
.LBB28_12:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.28+48
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.28+48
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.28+48
	movk	x16, #:abs_g3:__llvm_gcov_ctr.28+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB28_13
.LBB28_13:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end28:
	.size	iswprint, .Lfunc_end28-iswprint
	.cfi_endproc
                                        // -- End function
	.globl	iswxdigit                       // -- Begin function iswxdigit
	.p2align	2
	.type	iswxdigit,@function
iswxdigit:                              // @iswxdigit
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.29
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.29
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.29
	movk	x16, #:abs_g3:__llvm_gcov_ctr.29
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc_iswxdigit
	movk	x16, #:abs_g1_nc:.L__profc_iswxdigit
	movk	x16, #:abs_g2_nc:.L__profc_iswxdigit
	movk	x16, #:abs_g3:.L__profc_iswxdigit
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	subs	w16, w8, #48
	mov	w8, #1                          // =0x1
	subs	w16, w16, #10
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.lo	.LBB29_3
	b	.LBB29_1
.LBB29_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.29+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.29+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.29+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.29+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_iswxdigit+8
	movk	x16, #:abs_g1_nc:.L__profc_iswxdigit+8
	movk	x16, #:abs_g2_nc:.L__profc_iswxdigit+8
	movk	x16, #:abs_g3:.L__profc_iswxdigit+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	orr	w8, w8, #0x20
	subs	w8, w8, #97
	subs	w8, w8, #6
	cset	w8, lo
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.lo	.LBB29_3
	b	.LBB29_2
.LBB29_2:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.29+16
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.29+16
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.29+16
	movk	x17, #:abs_g3:__llvm_gcov_ctr.29+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_iswxdigit+16
	movk	x17, #:abs_g1_nc:.L__profc_iswxdigit+16
	movk	x17, #:abs_g2_nc:.L__profc_iswxdigit+16
	movk	x17, #:abs_g3:.L__profc_iswxdigit+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB29_3
.LBB29_3:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end29:
	.size	iswxdigit, .Lfunc_end29-iswxdigit
	.cfi_endproc
                                        // -- End function
	.globl	toascii                         // -- Begin function toascii
	.p2align	2
	.type	toascii,@function
toascii:                                // @toascii
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.30
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.30
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.30
	movk	x16, #:abs_g3:__llvm_gcov_ctr.30
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc_toascii
	movk	x16, #:abs_g1_nc:.L__profc_toascii
	movk	x16, #:abs_g2_nc:.L__profc_toascii
	movk	x16, #:abs_g3:.L__profc_toascii
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	and	w0, w8, #0x7f
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end30:
	.size	toascii, .Lfunc_end30-toascii
	.cfi_endproc
                                        // -- End function
	.globl	fdim                            // -- Begin function fdim
	.p2align	2
	.type	fdim,@function
fdim:                                   // @fdim
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	d0, [sp, #16]
	str	d1, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_fdim
	movk	x16, #:abs_g1_nc:.L__profc_fdim
	movk	x16, #:abs_g2_nc:.L__profc_fdim
	movk	x16, #:abs_g3:.L__profc_fdim
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #16]
	fcmp	d0, d0
	b.vc	.LBB31_2
	b	.LBB31_1
.LBB31_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.31
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.31
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.31
	movk	x16, #:abs_g3:__llvm_gcov_ctr.31
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fdim+8
	movk	x16, #:abs_g1_nc:.L__profc_fdim+8
	movk	x16, #:abs_g2_nc:.L__profc_fdim+8
	movk	x16, #:abs_g3:.L__profc_fdim+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #16]
	stur	d0, [x29, #-8]
	b	.LBB31_8
.LBB31_2:
	ldr	d0, [sp, #8]
	fcmp	d0, d0
	b.vc	.LBB31_4
	b	.LBB31_3
.LBB31_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.31+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.31+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.31+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.31+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fdim+16
	movk	x16, #:abs_g1_nc:.L__profc_fdim+16
	movk	x16, #:abs_g2_nc:.L__profc_fdim+16
	movk	x16, #:abs_g3:.L__profc_fdim+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #8]
	stur	d0, [x29, #-8]
	b	.LBB31_8
.LBB31_4:
	ldr	d0, [sp, #16]
	ldr	d1, [sp, #8]
	fcmp	d0, d1
	b.le	.LBB31_6
	b	.LBB31_5
.LBB31_5:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.31+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.31+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.31+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.31+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fdim+24
	movk	x16, #:abs_g1_nc:.L__profc_fdim+24
	movk	x16, #:abs_g2_nc:.L__profc_fdim+24
	movk	x16, #:abs_g3:.L__profc_fdim+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #16]
	ldr	d1, [sp, #8]
	fsub	d0, d0, d1
	str	d0, [sp]                        // 8-byte Folded Spill
	b	.LBB31_7
.LBB31_6:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.31+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.31+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.31+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.31+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	fmov	d0, xzr
	str	d0, [sp]                        // 8-byte Folded Spill
	b	.LBB31_7
.LBB31_7:
	ldr	d0, [sp]                        // 8-byte Folded Reload
	stur	d0, [x29, #-8]
	b	.LBB31_8
.LBB31_8:
	ldur	d0, [x29, #-8]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end31:
	.size	fdim, .Lfunc_end31-fdim
	.cfi_endproc
                                        // -- End function
	.globl	fdimf                           // -- Begin function fdimf
	.p2align	2
	.type	fdimf,@function
fdimf:                                  // @fdimf
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	s0, [sp, #8]
	str	s1, [sp, #4]
	movz	x16, #:abs_g0_nc:.L__profc_fdimf
	movk	x16, #:abs_g1_nc:.L__profc_fdimf
	movk	x16, #:abs_g2_nc:.L__profc_fdimf
	movk	x16, #:abs_g3:.L__profc_fdimf
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	s0, [sp, #8]
	fcmp	s0, s0
	b.vc	.LBB32_2
	b	.LBB32_1
.LBB32_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fdimf+8
	movk	x16, #:abs_g1_nc:.L__profc_fdimf+8
	movk	x16, #:abs_g2_nc:.L__profc_fdimf+8
	movk	x16, #:abs_g3:.L__profc_fdimf+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	s0, [sp, #8]
	stur	s0, [x29, #-4]
	b	.LBB32_8
.LBB32_2:
	ldr	s0, [sp, #4]
	fcmp	s0, s0
	b.vc	.LBB32_4
	b	.LBB32_3
.LBB32_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.32+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.32+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.32+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.32+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fdimf+16
	movk	x16, #:abs_g1_nc:.L__profc_fdimf+16
	movk	x16, #:abs_g2_nc:.L__profc_fdimf+16
	movk	x16, #:abs_g3:.L__profc_fdimf+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	s0, [sp, #4]
	stur	s0, [x29, #-4]
	b	.LBB32_8
.LBB32_4:
	ldr	s0, [sp, #8]
	ldr	s1, [sp, #4]
	fcmp	s0, s1
	b.le	.LBB32_6
	b	.LBB32_5
.LBB32_5:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.32+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.32+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.32+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.32+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fdimf+24
	movk	x16, #:abs_g1_nc:.L__profc_fdimf+24
	movk	x16, #:abs_g2_nc:.L__profc_fdimf+24
	movk	x16, #:abs_g3:.L__profc_fdimf+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	s0, [sp, #8]
	ldr	s1, [sp, #4]
	fsub	s0, s0, s1
	str	s0, [sp]                        // 4-byte Folded Spill
	b	.LBB32_7
.LBB32_6:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.32+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.32+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.32+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.32+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	fmov	s0, wzr
	str	s0, [sp]                        // 4-byte Folded Spill
	b	.LBB32_7
.LBB32_7:
	ldr	s0, [sp]                        // 4-byte Folded Reload
	stur	s0, [x29, #-4]
	b	.LBB32_8
.LBB32_8:
	ldur	s0, [x29, #-4]
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end32:
	.size	fdimf, .Lfunc_end32-fdimf
	.cfi_endproc
                                        // -- End function
	.globl	fmax                            // -- Begin function fmax
	.p2align	2
	.type	fmax,@function
fmax:                                   // @fmax
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	d0, [x29, #-16]
	str	d1, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc_fmax
	movk	x16, #:abs_g1_nc:.L__profc_fmax
	movk	x16, #:abs_g2_nc:.L__profc_fmax
	movk	x16, #:abs_g3:.L__profc_fmax
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	d0, [x29, #-16]
	fcmp	d0, d0
	b.vc	.LBB33_2
	b	.LBB33_1
.LBB33_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.33
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.33
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.33
	movk	x16, #:abs_g3:__llvm_gcov_ctr.33
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fmax+8
	movk	x16, #:abs_g1_nc:.L__profc_fmax+8
	movk	x16, #:abs_g2_nc:.L__profc_fmax+8
	movk	x16, #:abs_g3:.L__profc_fmax+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #24]
	stur	d0, [x29, #-8]
	b	.LBB33_13
.LBB33_2:
	ldr	d0, [sp, #24]
	fcmp	d0, d0
	b.vc	.LBB33_4
	b	.LBB33_3
.LBB33_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.33+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.33+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.33+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.33+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fmax+16
	movk	x16, #:abs_g1_nc:.L__profc_fmax+16
	movk	x16, #:abs_g2_nc:.L__profc_fmax+16
	movk	x16, #:abs_g3:.L__profc_fmax+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	d0, [x29, #-16]
	stur	d0, [x29, #-8]
	b	.LBB33_13
.LBB33_4:
	ldur	x8, [x29, #-16]
	lsr	x8, x8, #63
                                        // kill: def $w8 killed $w8 killed $x8
	ldr	x16, [sp, #24]
	lsr	x16, x16, #63
                                        // kill: def $w16 killed $w16 killed $x16
	subs	w8, w8, w16
	b.eq	.LBB33_9
	b	.LBB33_5
.LBB33_5:
	movz	x16, #:abs_g0_nc:.L__profc_fmax+24
	movk	x16, #:abs_g1_nc:.L__profc_fmax+24
	movk	x16, #:abs_g2_nc:.L__profc_fmax+24
	movk	x16, #:abs_g3:.L__profc_fmax+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	tbz	x8, #63, .LBB33_7
	b	.LBB33_6
.LBB33_6:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.33+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.33+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.33+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.33+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fmax+32
	movk	x16, #:abs_g1_nc:.L__profc_fmax+32
	movk	x16, #:abs_g2_nc:.L__profc_fmax+32
	movk	x16, #:abs_g3:.L__profc_fmax+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #24]
	str	d0, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB33_8
.LBB33_7:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.33+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.33+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.33+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.33+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	d0, [x29, #-16]
	str	d0, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB33_8
.LBB33_8:
	ldr	d0, [sp, #16]                   // 8-byte Folded Reload
	stur	d0, [x29, #-8]
	b	.LBB33_13
.LBB33_9:
	ldur	d0, [x29, #-16]
	ldr	d1, [sp, #24]
	fcmp	d0, d1
	b.pl	.LBB33_11
	b	.LBB33_10
.LBB33_10:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.33+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.33+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.33+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.33+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fmax+40
	movk	x16, #:abs_g1_nc:.L__profc_fmax+40
	movk	x16, #:abs_g2_nc:.L__profc_fmax+40
	movk	x16, #:abs_g3:.L__profc_fmax+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #24]
	str	d0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB33_12
.LBB33_11:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.33+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.33+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.33+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.33+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	d0, [x29, #-16]
	str	d0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB33_12
.LBB33_12:
	ldr	d0, [sp, #8]                    // 8-byte Folded Reload
	stur	d0, [x29, #-8]
	b	.LBB33_13
.LBB33_13:
	ldur	d0, [x29, #-8]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end33:
	.size	fmax, .Lfunc_end33-fmax
	.cfi_endproc
                                        // -- End function
	.globl	fmaxf                           // -- Begin function fmaxf
	.p2align	2
	.type	fmaxf,@function
fmaxf:                                  // @fmaxf
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	s0, [x29, #-8]
	stur	s1, [x29, #-12]
	movz	x16, #:abs_g0_nc:.L__profc_fmaxf
	movk	x16, #:abs_g1_nc:.L__profc_fmaxf
	movk	x16, #:abs_g2_nc:.L__profc_fmaxf
	movk	x16, #:abs_g3:.L__profc_fmaxf
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s0, [x29, #-8]
	fcmp	s0, s0
	b.vc	.LBB34_2
	b	.LBB34_1
.LBB34_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.34
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.34
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.34
	movk	x16, #:abs_g3:__llvm_gcov_ctr.34
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fmaxf+8
	movk	x16, #:abs_g1_nc:.L__profc_fmaxf+8
	movk	x16, #:abs_g2_nc:.L__profc_fmaxf+8
	movk	x16, #:abs_g3:.L__profc_fmaxf+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s0, [x29, #-12]
	stur	s0, [x29, #-4]
	b	.LBB34_13
.LBB34_2:
	ldur	s0, [x29, #-12]
	fcmp	s0, s0
	b.vc	.LBB34_4
	b	.LBB34_3
.LBB34_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.34+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.34+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.34+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.34+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fmaxf+16
	movk	x16, #:abs_g1_nc:.L__profc_fmaxf+16
	movk	x16, #:abs_g2_nc:.L__profc_fmaxf+16
	movk	x16, #:abs_g3:.L__profc_fmaxf+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s0, [x29, #-8]
	stur	s0, [x29, #-4]
	b	.LBB34_13
.LBB34_4:
	ldur	w8, [x29, #-8]
	lsr	w8, w8, #31
	ldur	w16, [x29, #-12]
	subs	w8, w8, w16, lsr #31
	b.eq	.LBB34_9
	b	.LBB34_5
.LBB34_5:
	movz	x16, #:abs_g0_nc:.L__profc_fmaxf+24
	movk	x16, #:abs_g1_nc:.L__profc_fmaxf+24
	movk	x16, #:abs_g2_nc:.L__profc_fmaxf+24
	movk	x16, #:abs_g3:.L__profc_fmaxf+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-8]
	tbz	w8, #31, .LBB34_7
	b	.LBB34_6
.LBB34_6:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.34+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.34+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.34+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.34+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fmaxf+32
	movk	x16, #:abs_g1_nc:.L__profc_fmaxf+32
	movk	x16, #:abs_g2_nc:.L__profc_fmaxf+32
	movk	x16, #:abs_g3:.L__profc_fmaxf+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s0, [x29, #-12]
	str	s0, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB34_8
.LBB34_7:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.34+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.34+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.34+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.34+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s0, [x29, #-8]
	str	s0, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB34_8
.LBB34_8:
	ldr	s0, [sp, #16]                   // 4-byte Folded Reload
	stur	s0, [x29, #-4]
	b	.LBB34_13
.LBB34_9:
	ldur	s0, [x29, #-8]
	ldur	s1, [x29, #-12]
	fcmp	s0, s1
	b.pl	.LBB34_11
	b	.LBB34_10
.LBB34_10:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.34+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.34+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.34+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.34+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fmaxf+40
	movk	x16, #:abs_g1_nc:.L__profc_fmaxf+40
	movk	x16, #:abs_g2_nc:.L__profc_fmaxf+40
	movk	x16, #:abs_g3:.L__profc_fmaxf+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s0, [x29, #-12]
	str	s0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB34_12
.LBB34_11:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.34+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.34+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.34+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.34+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s0, [x29, #-8]
	str	s0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB34_12
.LBB34_12:
	ldr	s0, [sp, #12]                   // 4-byte Folded Reload
	stur	s0, [x29, #-4]
	b	.LBB34_13
.LBB34_13:
	ldur	s0, [x29, #-4]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end34:
	.size	fmaxf, .Lfunc_end34-fmaxf
	.cfi_endproc
                                        // -- End function
	.globl	fmaxl                           // -- Begin function fmaxl
	.p2align	2
	.type	fmaxl,@function
fmaxl:                                  // @fmaxl
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	q0, [x29, #-32]
	str	q1, [sp, #32]
	movz	x16, #:abs_g0_nc:.L__profc_fmaxl
	movk	x16, #:abs_g1_nc:.L__profc_fmaxl
	movk	x16, #:abs_g2_nc:.L__profc_fmaxl
	movk	x16, #:abs_g3:.L__profc_fmaxl
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	q1, [x29, #-32]
	str	q1, [sp, #-16]!
	ldr	q0, [sp], #16
	bl	__unordtf2
	cbz	w0, .LBB35_2
	b	.LBB35_1
.LBB35_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.35
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.35
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.35
	movk	x16, #:abs_g3:__llvm_gcov_ctr.35
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fmaxl+8
	movk	x16, #:abs_g1_nc:.L__profc_fmaxl+8
	movk	x16, #:abs_g2_nc:.L__profc_fmaxl+8
	movk	x16, #:abs_g3:.L__profc_fmaxl+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	q0, [sp, #32]
	stur	q0, [x29, #-16]
	b	.LBB35_13
.LBB35_2:
	ldr	q1, [sp, #32]
	str	q1, [sp, #-16]!
	ldr	q0, [sp], #16
	bl	__unordtf2
	cbz	w0, .LBB35_4
	b	.LBB35_3
.LBB35_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.35+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.35+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.35+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.35+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fmaxl+16
	movk	x16, #:abs_g1_nc:.L__profc_fmaxl+16
	movk	x16, #:abs_g2_nc:.L__profc_fmaxl+16
	movk	x16, #:abs_g3:.L__profc_fmaxl+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	q0, [x29, #-32]
	stur	q0, [x29, #-16]
	b	.LBB35_13
.LBB35_4:
	ldur	x8, [x29, #-24]
	lsr	x8, x8, #63
                                        // kill: def $w8 killed $w8 killed $x8
	ldr	x16, [sp, #40]
	lsr	x16, x16, #63
                                        // kill: def $w16 killed $w16 killed $x16
	subs	w8, w8, w16
	b.eq	.LBB35_9
	b	.LBB35_5
.LBB35_5:
	movz	x16, #:abs_g0_nc:.L__profc_fmaxl+24
	movk	x16, #:abs_g1_nc:.L__profc_fmaxl+24
	movk	x16, #:abs_g2_nc:.L__profc_fmaxl+24
	movk	x16, #:abs_g3:.L__profc_fmaxl+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-24]
	tbz	x8, #63, .LBB35_7
	b	.LBB35_6
.LBB35_6:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.35+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.35+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.35+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.35+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fmaxl+32
	movk	x16, #:abs_g1_nc:.L__profc_fmaxl+32
	movk	x16, #:abs_g2_nc:.L__profc_fmaxl+32
	movk	x16, #:abs_g3:.L__profc_fmaxl+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	q0, [sp, #32]
	str	q0, [sp, #16]                   // 16-byte Folded Spill
	b	.LBB35_8
.LBB35_7:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.35+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.35+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.35+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.35+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #16]                   // 16-byte Folded Spill
	b	.LBB35_8
.LBB35_8:
	ldr	q0, [sp, #16]                   // 16-byte Folded Reload
	stur	q0, [x29, #-16]
	b	.LBB35_13
.LBB35_9:
	ldur	q0, [x29, #-32]
	ldr	q1, [sp, #32]
	bl	__lttf2
	subs	w8, w0, #0
	b.ge	.LBB35_11
	b	.LBB35_10
.LBB35_10:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.35+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.35+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.35+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.35+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fmaxl+40
	movk	x16, #:abs_g1_nc:.L__profc_fmaxl+40
	movk	x16, #:abs_g2_nc:.L__profc_fmaxl+40
	movk	x16, #:abs_g3:.L__profc_fmaxl+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	q0, [sp, #32]
	str	q0, [sp]                        // 16-byte Folded Spill
	b	.LBB35_12
.LBB35_11:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.35+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.35+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.35+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.35+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	q0, [x29, #-32]
	str	q0, [sp]                        // 16-byte Folded Spill
	b	.LBB35_12
.LBB35_12:
	ldr	q0, [sp]                        // 16-byte Folded Reload
	stur	q0, [x29, #-16]
	b	.LBB35_13
.LBB35_13:
	ldur	q0, [x29, #-16]
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end35:
	.size	fmaxl, .Lfunc_end35-fmaxl
	.cfi_endproc
                                        // -- End function
	.globl	fmin                            // -- Begin function fmin
	.p2align	2
	.type	fmin,@function
fmin:                                   // @fmin
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	d0, [x29, #-16]
	str	d1, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc_fmin
	movk	x16, #:abs_g1_nc:.L__profc_fmin
	movk	x16, #:abs_g2_nc:.L__profc_fmin
	movk	x16, #:abs_g3:.L__profc_fmin
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	d0, [x29, #-16]
	fcmp	d0, d0
	b.vc	.LBB36_2
	b	.LBB36_1
.LBB36_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.36
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.36
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.36
	movk	x16, #:abs_g3:__llvm_gcov_ctr.36
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fmin+8
	movk	x16, #:abs_g1_nc:.L__profc_fmin+8
	movk	x16, #:abs_g2_nc:.L__profc_fmin+8
	movk	x16, #:abs_g3:.L__profc_fmin+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #24]
	stur	d0, [x29, #-8]
	b	.LBB36_13
.LBB36_2:
	ldr	d0, [sp, #24]
	fcmp	d0, d0
	b.vc	.LBB36_4
	b	.LBB36_3
.LBB36_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.36+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.36+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.36+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.36+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fmin+16
	movk	x16, #:abs_g1_nc:.L__profc_fmin+16
	movk	x16, #:abs_g2_nc:.L__profc_fmin+16
	movk	x16, #:abs_g3:.L__profc_fmin+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	d0, [x29, #-16]
	stur	d0, [x29, #-8]
	b	.LBB36_13
.LBB36_4:
	ldur	x8, [x29, #-16]
	lsr	x8, x8, #63
                                        // kill: def $w8 killed $w8 killed $x8
	ldr	x16, [sp, #24]
	lsr	x16, x16, #63
                                        // kill: def $w16 killed $w16 killed $x16
	subs	w8, w8, w16
	b.eq	.LBB36_9
	b	.LBB36_5
.LBB36_5:
	movz	x16, #:abs_g0_nc:.L__profc_fmin+24
	movk	x16, #:abs_g1_nc:.L__profc_fmin+24
	movk	x16, #:abs_g2_nc:.L__profc_fmin+24
	movk	x16, #:abs_g3:.L__profc_fmin+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	tbz	x8, #63, .LBB36_7
	b	.LBB36_6
.LBB36_6:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.36+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.36+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.36+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.36+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fmin+32
	movk	x16, #:abs_g1_nc:.L__profc_fmin+32
	movk	x16, #:abs_g2_nc:.L__profc_fmin+32
	movk	x16, #:abs_g3:.L__profc_fmin+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	d0, [x29, #-16]
	str	d0, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB36_8
.LBB36_7:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.36+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.36+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.36+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.36+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #24]
	str	d0, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB36_8
.LBB36_8:
	ldr	d0, [sp, #16]                   // 8-byte Folded Reload
	stur	d0, [x29, #-8]
	b	.LBB36_13
.LBB36_9:
	ldur	d0, [x29, #-16]
	ldr	d1, [sp, #24]
	fcmp	d0, d1
	b.pl	.LBB36_11
	b	.LBB36_10
.LBB36_10:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.36+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.36+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.36+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.36+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fmin+40
	movk	x16, #:abs_g1_nc:.L__profc_fmin+40
	movk	x16, #:abs_g2_nc:.L__profc_fmin+40
	movk	x16, #:abs_g3:.L__profc_fmin+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	d0, [x29, #-16]
	str	d0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB36_12
.LBB36_11:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.36+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.36+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.36+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.36+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #24]
	str	d0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB36_12
.LBB36_12:
	ldr	d0, [sp, #8]                    // 8-byte Folded Reload
	stur	d0, [x29, #-8]
	b	.LBB36_13
.LBB36_13:
	ldur	d0, [x29, #-8]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end36:
	.size	fmin, .Lfunc_end36-fmin
	.cfi_endproc
                                        // -- End function
	.globl	fminf                           // -- Begin function fminf
	.p2align	2
	.type	fminf,@function
fminf:                                  // @fminf
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	s0, [x29, #-8]
	stur	s1, [x29, #-12]
	movz	x16, #:abs_g0_nc:.L__profc_fminf
	movk	x16, #:abs_g1_nc:.L__profc_fminf
	movk	x16, #:abs_g2_nc:.L__profc_fminf
	movk	x16, #:abs_g3:.L__profc_fminf
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s0, [x29, #-8]
	fcmp	s0, s0
	b.vc	.LBB37_2
	b	.LBB37_1
.LBB37_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.37
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.37
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.37
	movk	x16, #:abs_g3:__llvm_gcov_ctr.37
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fminf+8
	movk	x16, #:abs_g1_nc:.L__profc_fminf+8
	movk	x16, #:abs_g2_nc:.L__profc_fminf+8
	movk	x16, #:abs_g3:.L__profc_fminf+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s0, [x29, #-12]
	stur	s0, [x29, #-4]
	b	.LBB37_13
.LBB37_2:
	ldur	s0, [x29, #-12]
	fcmp	s0, s0
	b.vc	.LBB37_4
	b	.LBB37_3
.LBB37_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.37+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.37+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.37+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.37+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fminf+16
	movk	x16, #:abs_g1_nc:.L__profc_fminf+16
	movk	x16, #:abs_g2_nc:.L__profc_fminf+16
	movk	x16, #:abs_g3:.L__profc_fminf+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s0, [x29, #-8]
	stur	s0, [x29, #-4]
	b	.LBB37_13
.LBB37_4:
	ldur	w8, [x29, #-8]
	lsr	w8, w8, #31
	ldur	w16, [x29, #-12]
	subs	w8, w8, w16, lsr #31
	b.eq	.LBB37_9
	b	.LBB37_5
.LBB37_5:
	movz	x16, #:abs_g0_nc:.L__profc_fminf+24
	movk	x16, #:abs_g1_nc:.L__profc_fminf+24
	movk	x16, #:abs_g2_nc:.L__profc_fminf+24
	movk	x16, #:abs_g3:.L__profc_fminf+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-8]
	tbz	w8, #31, .LBB37_7
	b	.LBB37_6
.LBB37_6:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.37+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.37+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.37+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.37+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fminf+32
	movk	x16, #:abs_g1_nc:.L__profc_fminf+32
	movk	x16, #:abs_g2_nc:.L__profc_fminf+32
	movk	x16, #:abs_g3:.L__profc_fminf+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s0, [x29, #-8]
	str	s0, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB37_8
.LBB37_7:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.37+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.37+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.37+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.37+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s0, [x29, #-12]
	str	s0, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB37_8
.LBB37_8:
	ldr	s0, [sp, #16]                   // 4-byte Folded Reload
	stur	s0, [x29, #-4]
	b	.LBB37_13
.LBB37_9:
	ldur	s0, [x29, #-8]
	ldur	s1, [x29, #-12]
	fcmp	s0, s1
	b.pl	.LBB37_11
	b	.LBB37_10
.LBB37_10:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.37+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.37+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.37+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.37+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fminf+40
	movk	x16, #:abs_g1_nc:.L__profc_fminf+40
	movk	x16, #:abs_g2_nc:.L__profc_fminf+40
	movk	x16, #:abs_g3:.L__profc_fminf+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s0, [x29, #-8]
	str	s0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB37_12
.LBB37_11:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.37+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.37+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.37+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.37+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s0, [x29, #-12]
	str	s0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB37_12
.LBB37_12:
	ldr	s0, [sp, #12]                   // 4-byte Folded Reload
	stur	s0, [x29, #-4]
	b	.LBB37_13
.LBB37_13:
	ldur	s0, [x29, #-4]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end37:
	.size	fminf, .Lfunc_end37-fminf
	.cfi_endproc
                                        // -- End function
	.globl	fminl                           // -- Begin function fminl
	.p2align	2
	.type	fminl,@function
fminl:                                  // @fminl
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	q0, [x29, #-32]
	str	q1, [sp, #32]
	movz	x16, #:abs_g0_nc:.L__profc_fminl
	movk	x16, #:abs_g1_nc:.L__profc_fminl
	movk	x16, #:abs_g2_nc:.L__profc_fminl
	movk	x16, #:abs_g3:.L__profc_fminl
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	q1, [x29, #-32]
	str	q1, [sp, #-16]!
	ldr	q0, [sp], #16
	bl	__unordtf2
	cbz	w0, .LBB38_2
	b	.LBB38_1
.LBB38_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.38
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.38
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.38
	movk	x16, #:abs_g3:__llvm_gcov_ctr.38
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fminl+8
	movk	x16, #:abs_g1_nc:.L__profc_fminl+8
	movk	x16, #:abs_g2_nc:.L__profc_fminl+8
	movk	x16, #:abs_g3:.L__profc_fminl+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	q0, [sp, #32]
	stur	q0, [x29, #-16]
	b	.LBB38_13
.LBB38_2:
	ldr	q1, [sp, #32]
	str	q1, [sp, #-16]!
	ldr	q0, [sp], #16
	bl	__unordtf2
	cbz	w0, .LBB38_4
	b	.LBB38_3
.LBB38_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.38+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.38+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.38+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.38+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fminl+16
	movk	x16, #:abs_g1_nc:.L__profc_fminl+16
	movk	x16, #:abs_g2_nc:.L__profc_fminl+16
	movk	x16, #:abs_g3:.L__profc_fminl+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	q0, [x29, #-32]
	stur	q0, [x29, #-16]
	b	.LBB38_13
.LBB38_4:
	ldur	x8, [x29, #-24]
	lsr	x8, x8, #63
                                        // kill: def $w8 killed $w8 killed $x8
	ldr	x16, [sp, #40]
	lsr	x16, x16, #63
                                        // kill: def $w16 killed $w16 killed $x16
	subs	w8, w8, w16
	b.eq	.LBB38_9
	b	.LBB38_5
.LBB38_5:
	movz	x16, #:abs_g0_nc:.L__profc_fminl+24
	movk	x16, #:abs_g1_nc:.L__profc_fminl+24
	movk	x16, #:abs_g2_nc:.L__profc_fminl+24
	movk	x16, #:abs_g3:.L__profc_fminl+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-24]
	tbz	x8, #63, .LBB38_7
	b	.LBB38_6
.LBB38_6:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.38+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.38+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.38+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.38+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fminl+32
	movk	x16, #:abs_g1_nc:.L__profc_fminl+32
	movk	x16, #:abs_g2_nc:.L__profc_fminl+32
	movk	x16, #:abs_g3:.L__profc_fminl+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #16]                   // 16-byte Folded Spill
	b	.LBB38_8
.LBB38_7:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.38+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.38+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.38+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.38+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	q0, [sp, #32]
	str	q0, [sp, #16]                   // 16-byte Folded Spill
	b	.LBB38_8
.LBB38_8:
	ldr	q0, [sp, #16]                   // 16-byte Folded Reload
	stur	q0, [x29, #-16]
	b	.LBB38_13
.LBB38_9:
	ldur	q0, [x29, #-32]
	ldr	q1, [sp, #32]
	bl	__lttf2
	subs	w8, w0, #0
	b.ge	.LBB38_11
	b	.LBB38_10
.LBB38_10:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.38+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.38+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.38+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.38+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_fminl+40
	movk	x16, #:abs_g1_nc:.L__profc_fminl+40
	movk	x16, #:abs_g2_nc:.L__profc_fminl+40
	movk	x16, #:abs_g3:.L__profc_fminl+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	q0, [x29, #-32]
	str	q0, [sp]                        // 16-byte Folded Spill
	b	.LBB38_12
.LBB38_11:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.38+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.38+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.38+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.38+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	q0, [sp, #32]
	str	q0, [sp]                        // 16-byte Folded Spill
	b	.LBB38_12
.LBB38_12:
	ldr	q0, [sp]                        // 16-byte Folded Reload
	stur	q0, [x29, #-16]
	b	.LBB38_13
.LBB38_13:
	ldur	q0, [x29, #-16]
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end38:
	.size	fminl, .Lfunc_end38-fminl
	.cfi_endproc
                                        // -- End function
	.globl	l64a                            // -- Begin function l64a
	.p2align	2
	.type	l64a,@function
l64a:                                   // @l64a
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.39
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.39
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.39
	movk	x16, #:abs_g3:__llvm_gcov_ctr.39
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	movz	x16, #:abs_g0_nc:.L__profc_l64a
	movk	x16, #:abs_g1_nc:.L__profc_l64a
	movk	x16, #:abs_g2_nc:.L__profc_l64a
	movk	x16, #:abs_g3:.L__profc_l64a
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	movz	x8, #:abs_g0_nc:l64a.s
	movk	x8, #:abs_g1_nc:l64a.s
	movk	x8, #:abs_g2_nc:l64a.s
	movk	x8, #:abs_g3:l64a.s
	str	x8, [sp, #16]
	b	.LBB39_1
.LBB39_1:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	cbz	w8, .LBB39_4
	b	.LBB39_2
.LBB39_2:                               //   in Loop: Header=BB39_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_l64a+8
	movk	x16, #:abs_g1_nc:.L__profc_l64a+8
	movk	x16, #:abs_g2_nc:.L__profc_l64a+8
	movk	x16, #:abs_g3:.L__profc_l64a+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #12]
	and	w16, w8, #0x3f
	movz	x8, #:abs_g0_nc:digits
	movk	x8, #:abs_g1_nc:digits
	movk	x8, #:abs_g2_nc:digits
	movk	x8, #:abs_g3:digits
	ldrb	w8, [x8, w16, uxtw]
	ldr	x16, [sp, #16]
	strb	w8, [x16]
	b	.LBB39_3
.LBB39_3:                               //   in Loop: Header=BB39_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.39+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.39+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.39+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.39+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	ldr	w8, [sp, #12]
	lsr	w8, w8, #6
	str	w8, [sp, #12]
	b	.LBB39_1
.LBB39_4:
	ldr	x16, [sp, #16]
	mov	w8, wzr
	strb	w8, [x16]
	movz	x0, #:abs_g0_nc:l64a.s
	movk	x0, #:abs_g1_nc:l64a.s
	movk	x0, #:abs_g2_nc:l64a.s
	movk	x0, #:abs_g3:l64a.s
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end39:
	.size	l64a, .Lfunc_end39-l64a
	.cfi_endproc
                                        // -- End function
	.globl	srand                           // -- Begin function srand
	.p2align	2
	.type	srand,@function
srand:                                  // @srand
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc_srand
	movk	x16, #:abs_g1_nc:.L__profc_srand
	movk	x16, #:abs_g2_nc:.L__profc_srand
	movk	x16, #:abs_g3:.L__profc_srand
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #1
	mov	w8, w8
                                        // kill: def $x8 killed $w8
	movz	x16, #:abs_g0_nc:seed
	movk	x16, #:abs_g1_nc:seed
	movk	x16, #:abs_g2_nc:seed
	movk	x16, #:abs_g3:seed
	str	x8, [x16]
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end40:
	.size	srand, .Lfunc_end40-srand
	.cfi_endproc
                                        // -- End function
	.globl	rand                            // -- Begin function rand
	.p2align	2
	.type	rand,@function
rand:                                   // @rand
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.41
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.41
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.41
	movk	x16, #:abs_g3:__llvm_gcov_ctr.41
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_rand
	movk	x16, #:abs_g1_nc:.L__profc_rand
	movk	x16, #:abs_g2_nc:.L__profc_rand
	movk	x16, #:abs_g3:.L__profc_rand
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x8, #:abs_g0_nc:seed
	movk	x8, #:abs_g1_nc:seed
	movk	x8, #:abs_g2_nc:seed
	movk	x8, #:abs_g3:seed
	ldr	x16, [x8]
	mov	x17, #32557                     // =0x7f2d
	movk	x17, #19605, lsl #16
	movk	x17, #62509, lsl #32
	movk	x17, #22609, lsl #48
	mul	x16, x16, x17
	add	x16, x16, #1
	str	x16, [x8]
	ldr	x8, [x8]
	lsr	x8, x8, #33
	mov	w0, w8
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end41:
	.size	rand, .Lfunc_end41-rand
	.cfi_endproc
                                        // -- End function
	.globl	insque                          // -- Begin function insque
	.p2align	2
	.type	insque,@function
insque:                                 // @insque
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	movz	x16, #:abs_g0_nc:.L__profc_insque
	movk	x16, #:abs_g1_nc:.L__profc_insque
	movk	x16, #:abs_g2_nc:.L__profc_insque
	movk	x16, #:abs_g3:.L__profc_insque
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB42_2
	b	.LBB42_1
.LBB42_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.42+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.42+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.42+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.42+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_insque+8
	movk	x16, #:abs_g1_nc:.L__profc_insque+8
	movk	x16, #:abs_g2_nc:.L__profc_insque+8
	movk	x16, #:abs_g3:.L__profc_insque+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp, #8]
	mov	x8, xzr
	str	x8, [x16, #8]
	ldr	x16, [sp, #8]
	str	x8, [x16]
	b	.LBB42_4
.LBB42_2:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.42
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.42
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.42
	movk	x16, #:abs_g3:__llvm_gcov_ctr.42
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp]
	ldr	x8, [x8]
	ldr	x16, [sp, #8]
	str	x8, [x16]
	ldr	x8, [sp]
	ldr	x16, [sp, #8]
	str	x8, [x16, #8]
	ldr	x8, [sp, #8]
	ldr	x16, [sp]
	str	x8, [x16]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	cbz	x8, .LBB42_4
	b	.LBB42_3
.LBB42_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.42+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.42+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.42+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.42+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_insque+16
	movk	x16, #:abs_g1_nc:.L__profc_insque+16
	movk	x16, #:abs_g2_nc:.L__profc_insque+16
	movk	x16, #:abs_g3:.L__profc_insque+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	ldr	x16, [x8]
	str	x8, [x16, #8]
	b	.LBB42_4
.LBB42_4:
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end42:
	.size	insque, .Lfunc_end42-insque
	.cfi_endproc
                                        // -- End function
	.globl	remque                          // -- Begin function remque
	.p2align	2
	.type	remque,@function
remque:                                 // @remque
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.43
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.43
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.43
	movk	x16, #:abs_g3:__llvm_gcov_ctr.43
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_remque
	movk	x16, #:abs_g1_nc:.L__profc_remque
	movk	x16, #:abs_g2_nc:.L__profc_remque
	movk	x16, #:abs_g3:.L__profc_remque
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	cbz	x8, .LBB43_2
	b	.LBB43_1
.LBB43_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.43+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.43+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.43+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.43+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_remque+8
	movk	x16, #:abs_g1_nc:.L__profc_remque+8
	movk	x16, #:abs_g2_nc:.L__profc_remque+8
	movk	x16, #:abs_g3:.L__profc_remque+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp]
	ldr	x8, [x16, #8]
	ldr	x16, [x16]
	str	x8, [x16, #8]
	b	.LBB43_2
.LBB43_2:
	ldr	x8, [sp]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB43_4
	b	.LBB43_3
.LBB43_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.43+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.43+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.43+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.43+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_remque+16
	movk	x16, #:abs_g1_nc:.L__profc_remque+16
	movk	x16, #:abs_g2_nc:.L__profc_remque+16
	movk	x16, #:abs_g3:.L__profc_remque+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp]
	ldr	x8, [x16]
	ldr	x16, [x16, #8]
	str	x8, [x16]
	b	.LBB43_4
.LBB43_4:
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end43:
	.size	remque, .Lfunc_end43-remque
	.cfi_endproc
                                        // -- End function
	.globl	lsearch                         // -- Begin function lsearch
	.p2align	2
	.type	lsearch,@function
lsearch:                                // @lsearch
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	str	x4, [sp, #48]
	movz	x16, #:abs_g0_nc:.L__profc_lsearch
	movk	x16, #:abs_g1_nc:.L__profc_lsearch
	movk	x16, #:abs_g2_nc:.L__profc_lsearch
	movk	x16, #:abs_g3:.L__profc_lsearch
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-40]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	str	x8, [sp, #40]
	ldur	x8, [x29, #-32]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	mov	x8, xzr
	str	x8, [sp, #24]
	b	.LBB44_1
.LBB44_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldr	x16, [sp, #32]
	subs	x8, x8, x16
	b.hs	.LBB44_6
	b	.LBB44_2
.LBB44_2:                               //   in Loop: Header=BB44_1 Depth=1
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	movz	x16, #:abs_g0_nc:.L__profc_lsearch+8
	movk	x16, #:abs_g1_nc:.L__profc_lsearch+8
	movk	x16, #:abs_g2_nc:.L__profc_lsearch+8
	movk	x16, #:abs_g3:.L__profc_lsearch+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #48]
	ldur	x0, [x29, #-16]
	ldr	x16, [sp, #40]
	ldr	x17, [sp, #24]
	mul	x17, x17, x1
	add	x1, x16, x17
	bl	__llvm_slsblr_thunk_x8
	cbnz	w0, .LBB44_4
	b	.LBB44_3
.LBB44_3:
	ldr	x17, [sp, #16]                  // 8-byte Folded Reload
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.44
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.44
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.44
	movk	x16, #:abs_g3:__llvm_gcov_ctr.44
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_lsearch+16
	movk	x16, #:abs_g1_nc:.L__profc_lsearch+16
	movk	x16, #:abs_g2_nc:.L__profc_lsearch+16
	movk	x16, #:abs_g3:.L__profc_lsearch+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #40]
	ldr	x16, [sp, #24]
	mul	x16, x16, x17
	add	x8, x8, x16
	stur	x8, [x29, #-8]
	b	.LBB44_7
.LBB44_4:                               //   in Loop: Header=BB44_1 Depth=1
	b	.LBB44_5
.LBB44_5:                               //   in Loop: Header=BB44_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.44+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.44+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.44+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.44+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB44_1
.LBB44_6:
	ldr	x17, [sp, #16]                  // 8-byte Folded Reload
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.44+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.44+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.44+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.44+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #32]
	add	x8, x8, #1
	ldur	x16, [x29, #-32]
	str	x8, [x16]
	ldr	x8, [sp, #40]
	ldr	x16, [sp, #32]
	mul	x16, x16, x17
	add	x0, x8, x16
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-40]
	bl	memcpy
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	stur	x8, [x29, #-8]
	b	.LBB44_7
.LBB44_7:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end44:
	.size	lsearch, .Lfunc_end44-lsearch
	.cfi_endproc
                                        // -- End function
	.globl	lfind                           // -- Begin function lfind
	.p2align	2
	.type	lfind,@function
lfind:                                  // @lfind
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	str	x3, [sp, #40]
	str	x4, [sp, #32]
	movz	x16, #:abs_g0_nc:.L__profc_lfind
	movk	x16, #:abs_g1_nc:.L__profc_lfind
	movk	x16, #:abs_g2_nc:.L__profc_lfind
	movk	x16, #:abs_g3:.L__profc_lfind
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #40]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-32]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	mov	x8, xzr
	str	x8, [sp, #8]
	b	.LBB46_1
.LBB46_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x16, [sp, #16]
	subs	x8, x8, x16
	b.hs	.LBB46_6
	b	.LBB46_2
.LBB46_2:                               //   in Loop: Header=BB46_1 Depth=1
	ldr	x1, [sp]                        // 8-byte Folded Reload
	movz	x16, #:abs_g0_nc:.L__profc_lfind+8
	movk	x16, #:abs_g1_nc:.L__profc_lfind+8
	movk	x16, #:abs_g2_nc:.L__profc_lfind+8
	movk	x16, #:abs_g3:.L__profc_lfind+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #32]
	ldur	x0, [x29, #-16]
	ldr	x16, [sp, #24]
	ldr	x17, [sp, #8]
	mul	x17, x17, x1
	add	x1, x16, x17
	bl	__llvm_slsblr_thunk_x8
	cbnz	w0, .LBB46_4
	b	.LBB46_3
.LBB46_3:
	ldr	x17, [sp]                       // 8-byte Folded Reload
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.45
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.45
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.45
	movk	x16, #:abs_g3:__llvm_gcov_ctr.45
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_lfind+16
	movk	x16, #:abs_g1_nc:.L__profc_lfind+16
	movk	x16, #:abs_g2_nc:.L__profc_lfind+16
	movk	x16, #:abs_g3:.L__profc_lfind+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	ldr	x16, [sp, #8]
	mul	x16, x16, x17
	add	x8, x8, x16
	stur	x8, [x29, #-8]
	b	.LBB46_7
.LBB46_4:                               //   in Loop: Header=BB46_1 Depth=1
	b	.LBB46_5
.LBB46_5:                               //   in Loop: Header=BB46_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.45+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.45+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.45+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.45+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB46_1
.LBB46_6:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.45+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.45+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.45+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.45+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x8, xzr
	stur	x8, [x29, #-8]
	b	.LBB46_7
.LBB46_7:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end45:
	.size	lfind, .Lfunc_end45-lfind
	.cfi_endproc
                                        // -- End function
	.globl	abs                             // -- Begin function abs
	.p2align	2
	.type	abs,@function
abs:                                    // @abs
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc_abs
	movk	x16, #:abs_g1_nc:.L__profc_abs
	movk	x16, #:abs_g2_nc:.L__profc_abs
	movk	x16, #:abs_g3:.L__profc_abs
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #1
	b.lt	.LBB47_2
	b	.LBB47_1
.LBB47_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.46
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.46
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.46
	movk	x16, #:abs_g3:__llvm_gcov_ctr.46
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_abs+8
	movk	x16, #:abs_g1_nc:.L__profc_abs+8
	movk	x16, #:abs_g2_nc:.L__profc_abs+8
	movk	x16, #:abs_g3:.L__profc_abs+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w0, [x29, #-4]
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB47_3
.LBB47_2:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.46+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.46+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.46+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.46+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w16, [x29, #-4]
	mov	w8, wzr
	subs	w0, w8, w16
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB47_3
.LBB47_3:
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end46:
	.size	abs, .Lfunc_end46-abs
	.cfi_endproc
                                        // -- End function
	.globl	atoi                            // -- Begin function atoi
	.p2align	2
	.type	atoi,@function
atoi:                                   // @atoi
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	movz	x16, #:abs_g0_nc:.L__profc_atoi
	movk	x16, #:abs_g1_nc:.L__profc_atoi
	movk	x16, #:abs_g2_nc:.L__profc_atoi
	movk	x16, #:abs_g3:.L__profc_atoi
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	stur	w8, [x29, #-12]
	str	w8, [sp, #16]
	b	.LBB48_1
.LBB48_1:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w0, [x8]
	bl	isspace
	cbz	w0, .LBB48_3
	b	.LBB48_2
.LBB48_2:                               //   in Loop: Header=BB48_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.47
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.47
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.47
	movk	x16, #:abs_g3:__llvm_gcov_ctr.47
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_atoi+8
	movk	x16, #:abs_g1_nc:.L__profc_atoi+8
	movk	x16, #:abs_g2_nc:.L__profc_atoi+8
	movk	x16, #:abs_g3:.L__profc_atoi+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	add	x8, x8, #1
	stur	x8, [x29, #-8]
	b	.LBB48_1
.LBB48_3:
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	mov	w16, w8
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	subs	w8, w8, #43
	b.eq	.LBB48_6
	b	.LBB48_4
.LBB48_4:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, #45
	b.ne	.LBB48_8
	b	.LBB48_5
.LBB48_5:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.47+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.47+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.47+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.47+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_atoi+24
	movk	x16, #:abs_g1_nc:.L__profc_atoi+24
	movk	x16, #:abs_g2_nc:.L__profc_atoi+24
	movk	x16, #:abs_g3:.L__profc_atoi+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #1                          // =0x1
	str	w8, [sp, #16]
	b	.LBB48_7
.LBB48_6:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.47+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.47+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.47+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.47+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_atoi+32
	movk	x16, #:abs_g1_nc:.L__profc_atoi+32
	movk	x16, #:abs_g2_nc:.L__profc_atoi+32
	movk	x16, #:abs_g3:.L__profc_atoi+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB48_7
.LBB48_7:
	ldur	x8, [x29, #-8]
	add	x8, x8, #1
	stur	x8, [x29, #-8]
	b	.LBB48_8
.LBB48_8:
	movz	x16, #:abs_g0_nc:.L__profc_atoi+16
	movk	x16, #:abs_g1_nc:.L__profc_atoi+16
	movk	x16, #:abs_g2_nc:.L__profc_atoi+16
	movk	x16, #:abs_g3:.L__profc_atoi+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB48_9
.LBB48_9:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w0, [x8]
	bl	isdigit
	cbz	w0, .LBB48_11
	b	.LBB48_10
.LBB48_10:                              //   in Loop: Header=BB48_9 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.47+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.47+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.47+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.47+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_atoi+40
	movk	x16, #:abs_g1_nc:.L__profc_atoi+40
	movk	x16, #:abs_g2_nc:.L__profc_atoi+40
	movk	x16, #:abs_g3:.L__profc_atoi+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-12]
	mov	w16, #10                        // =0xa
	mul	w8, w8, w16
	ldur	x16, [x29, #-8]
	add	x17, x16, #1
	stur	x17, [x29, #-8]
	ldrb	w16, [x16]
	subs	w8, w8, w16
	add	w8, w8, #48
	stur	w8, [x29, #-12]
	b	.LBB48_9
.LBB48_11:
	ldr	w8, [sp, #16]
	cbz	w8, .LBB48_13
	b	.LBB48_12
.LBB48_12:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.47+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.47+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.47+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.47+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_atoi+48
	movk	x16, #:abs_g1_nc:.L__profc_atoi+48
	movk	x16, #:abs_g2_nc:.L__profc_atoi+48
	movk	x16, #:abs_g3:.L__profc_atoi+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w0, [x29, #-12]
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB48_14
.LBB48_13:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.47+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.47+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.47+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.47+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w16, [x29, #-12]
	mov	w8, wzr
	subs	w0, w8, w16
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB48_14
.LBB48_14:
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end47:
	.size	atoi, .Lfunc_end47-atoi
	.cfi_endproc
                                        // -- End function
	.globl	atol                            // -- Begin function atol
	.p2align	2
	.type	atol,@function
atol:                                   // @atol
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	movz	x16, #:abs_g0_nc:.L__profc_atol
	movk	x16, #:abs_g1_nc:.L__profc_atol
	movk	x16, #:abs_g2_nc:.L__profc_atol
	movk	x16, #:abs_g3:.L__profc_atol
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x8, xzr
	str	x8, [sp, #16]
	mov	w8, wzr
	str	w8, [sp, #12]
	b	.LBB49_1
.LBB49_1:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w0, [x8]
	bl	isspace
	cbz	w0, .LBB49_3
	b	.LBB49_2
.LBB49_2:                               //   in Loop: Header=BB49_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.48
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.48
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.48
	movk	x16, #:abs_g3:__llvm_gcov_ctr.48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_atol+8
	movk	x16, #:abs_g1_nc:.L__profc_atol+8
	movk	x16, #:abs_g2_nc:.L__profc_atol+8
	movk	x16, #:abs_g3:.L__profc_atol+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	add	x8, x8, #1
	stur	x8, [x29, #-8]
	b	.LBB49_1
.LBB49_3:
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	mov	w16, w8
	str	w16, [sp, #8]                   // 4-byte Folded Spill
	subs	w8, w8, #43
	b.eq	.LBB49_6
	b	.LBB49_4
.LBB49_4:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	subs	w8, w8, #45
	b.ne	.LBB49_8
	b	.LBB49_5
.LBB49_5:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.48+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.48+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.48+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.48+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_atol+24
	movk	x16, #:abs_g1_nc:.L__profc_atol+24
	movk	x16, #:abs_g2_nc:.L__profc_atol+24
	movk	x16, #:abs_g3:.L__profc_atol+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #1                          // =0x1
	str	w8, [sp, #12]
	b	.LBB49_7
.LBB49_6:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.48+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.48+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.48+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.48+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_atol+32
	movk	x16, #:abs_g1_nc:.L__profc_atol+32
	movk	x16, #:abs_g2_nc:.L__profc_atol+32
	movk	x16, #:abs_g3:.L__profc_atol+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB49_7
.LBB49_7:
	ldur	x8, [x29, #-8]
	add	x8, x8, #1
	stur	x8, [x29, #-8]
	b	.LBB49_8
.LBB49_8:
	movz	x16, #:abs_g0_nc:.L__profc_atol+16
	movk	x16, #:abs_g1_nc:.L__profc_atol+16
	movk	x16, #:abs_g2_nc:.L__profc_atol+16
	movk	x16, #:abs_g3:.L__profc_atol+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB49_9
.LBB49_9:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w0, [x8]
	bl	isdigit
	cbz	w0, .LBB49_11
	b	.LBB49_10
.LBB49_10:                              //   in Loop: Header=BB49_9 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.48+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.48+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.48+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.48+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_atol+40
	movk	x16, #:abs_g1_nc:.L__profc_atol+40
	movk	x16, #:abs_g2_nc:.L__profc_atol+40
	movk	x16, #:abs_g3:.L__profc_atol+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	mov	w16, #10                        // =0xa
                                        // kill: def $x16 killed $w16
	mul	x8, x8, x16
	ldur	x16, [x29, #-8]
	add	x17, x16, #1
	stur	x17, [x29, #-8]
	ldrb	w16, [x16]
	subs	w16, w16, #48
	subs	x8, x8, w16, sxtw
	str	x8, [sp, #16]
	b	.LBB49_9
.LBB49_11:
	ldr	w8, [sp, #12]
	cbz	w8, .LBB49_13
	b	.LBB49_12
.LBB49_12:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.48+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.48+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.48+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.48+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_atol+48
	movk	x16, #:abs_g1_nc:.L__profc_atol+48
	movk	x16, #:abs_g2_nc:.L__profc_atol+48
	movk	x16, #:abs_g3:.L__profc_atol+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x0, [sp, #16]
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB49_14
.LBB49_13:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.48+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.48+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.48+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.48+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp, #16]
	mov	x8, xzr
	subs	x0, x8, x16
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB49_14
.LBB49_14:
	ldr	x0, [sp]                        // 8-byte Folded Reload
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end48:
	.size	atol, .Lfunc_end48-atol
	.cfi_endproc
                                        // -- End function
	.globl	atoll                           // -- Begin function atoll
	.p2align	2
	.type	atoll,@function
atoll:                                  // @atoll
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	movz	x16, #:abs_g0_nc:.L__profc_atoll
	movk	x16, #:abs_g1_nc:.L__profc_atoll
	movk	x16, #:abs_g2_nc:.L__profc_atoll
	movk	x16, #:abs_g3:.L__profc_atoll
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x8, xzr
	str	x8, [sp, #16]
	mov	w8, wzr
	str	w8, [sp, #12]
	b	.LBB50_1
.LBB50_1:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w0, [x8]
	bl	isspace
	cbz	w0, .LBB50_3
	b	.LBB50_2
.LBB50_2:                               //   in Loop: Header=BB50_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.49
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.49
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.49
	movk	x16, #:abs_g3:__llvm_gcov_ctr.49
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_atoll+8
	movk	x16, #:abs_g1_nc:.L__profc_atoll+8
	movk	x16, #:abs_g2_nc:.L__profc_atoll+8
	movk	x16, #:abs_g3:.L__profc_atoll+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	add	x8, x8, #1
	stur	x8, [x29, #-8]
	b	.LBB50_1
.LBB50_3:
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	mov	w16, w8
	str	w16, [sp, #8]                   // 4-byte Folded Spill
	subs	w8, w8, #43
	b.eq	.LBB50_6
	b	.LBB50_4
.LBB50_4:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	subs	w8, w8, #45
	b.ne	.LBB50_8
	b	.LBB50_5
.LBB50_5:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.49+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.49+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.49+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.49+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_atoll+24
	movk	x16, #:abs_g1_nc:.L__profc_atoll+24
	movk	x16, #:abs_g2_nc:.L__profc_atoll+24
	movk	x16, #:abs_g3:.L__profc_atoll+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #1                          // =0x1
	str	w8, [sp, #12]
	b	.LBB50_7
.LBB50_6:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.49+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.49+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.49+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.49+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_atoll+32
	movk	x16, #:abs_g1_nc:.L__profc_atoll+32
	movk	x16, #:abs_g2_nc:.L__profc_atoll+32
	movk	x16, #:abs_g3:.L__profc_atoll+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB50_7
.LBB50_7:
	ldur	x8, [x29, #-8]
	add	x8, x8, #1
	stur	x8, [x29, #-8]
	b	.LBB50_8
.LBB50_8:
	movz	x16, #:abs_g0_nc:.L__profc_atoll+16
	movk	x16, #:abs_g1_nc:.L__profc_atoll+16
	movk	x16, #:abs_g2_nc:.L__profc_atoll+16
	movk	x16, #:abs_g3:.L__profc_atoll+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB50_9
.LBB50_9:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w0, [x8]
	bl	isdigit
	cbz	w0, .LBB50_11
	b	.LBB50_10
.LBB50_10:                              //   in Loop: Header=BB50_9 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.49+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.49+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.49+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.49+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_atoll+40
	movk	x16, #:abs_g1_nc:.L__profc_atoll+40
	movk	x16, #:abs_g2_nc:.L__profc_atoll+40
	movk	x16, #:abs_g3:.L__profc_atoll+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	mov	w16, #10                        // =0xa
                                        // kill: def $x16 killed $w16
	mul	x8, x8, x16
	ldur	x16, [x29, #-8]
	add	x17, x16, #1
	stur	x17, [x29, #-8]
	ldrb	w16, [x16]
	subs	w16, w16, #48
	subs	x8, x8, w16, sxtw
	str	x8, [sp, #16]
	b	.LBB50_9
.LBB50_11:
	ldr	w8, [sp, #12]
	cbz	w8, .LBB50_13
	b	.LBB50_12
.LBB50_12:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.49+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.49+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.49+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.49+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_atoll+48
	movk	x16, #:abs_g1_nc:.L__profc_atoll+48
	movk	x16, #:abs_g2_nc:.L__profc_atoll+48
	movk	x16, #:abs_g3:.L__profc_atoll+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x0, [sp, #16]
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB50_14
.LBB50_13:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.49+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.49+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.49+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.49+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp, #16]
	mov	x8, xzr
	subs	x0, x8, x16
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB50_14
.LBB50_14:
	ldr	x0, [sp]                        // 8-byte Folded Reload
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end49:
	.size	atoll, .Lfunc_end49-atoll
	.cfi_endproc
                                        // -- End function
	.globl	bsearch                         // -- Begin function bsearch
	.p2align	2
	.type	bsearch,@function
bsearch:                                // @bsearch
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	str	x4, [sp, #16]
	movz	x16, #:abs_g0_nc:.L__profc_bsearch
	movk	x16, #:abs_g1_nc:.L__profc_bsearch
	movk	x16, #:abs_g2_nc:.L__profc_bsearch
	movk	x16, #:abs_g3:.L__profc_bsearch
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB51_1
.LBB51_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	cbz	x8, .LBB51_9
	b	.LBB51_2
.LBB51_2:                               //   in Loop: Header=BB51_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_bsearch+8
	movk	x16, #:abs_g1_nc:.L__profc_bsearch+8
	movk	x16, #:abs_g2_nc:.L__profc_bsearch+8
	movk	x16, #:abs_g3:.L__profc_bsearch+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-24]
	ldr	x16, [sp, #24]
	ldr	x17, [sp, #32]
	lsr	x17, x17, #1
	mul	x16, x16, x17
	add	x8, x8, x16
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #8]
	bl	__llvm_slsblr_thunk_x8
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	tbz	w8, #31, .LBB51_4
	b	.LBB51_3
.LBB51_3:                               //   in Loop: Header=BB51_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.50+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.50+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.50+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.50+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_bsearch+16
	movk	x16, #:abs_g1_nc:.L__profc_bsearch+16
	movk	x16, #:abs_g2_nc:.L__profc_bsearch+16
	movk	x16, #:abs_g3:.L__profc_bsearch+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #32]
	lsr	x8, x8, #1
	str	x8, [sp, #32]
	b	.LBB51_8
.LBB51_4:                               //   in Loop: Header=BB51_1 Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #1
	b.lt	.LBB51_6
	b	.LBB51_5
.LBB51_5:                               //   in Loop: Header=BB51_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_bsearch+24
	movk	x16, #:abs_g1_nc:.L__profc_bsearch+24
	movk	x16, #:abs_g2_nc:.L__profc_bsearch+24
	movk	x16, #:abs_g3:.L__profc_bsearch+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	ldr	x16, [sp, #24]
	add	x8, x8, x16
	stur	x8, [x29, #-24]
	ldr	x16, [sp, #32]
	mov	x8, #-1                         // =0xffffffffffffffff
	eor	x8, x8, x16, lsr #1
	add	x8, x8, x16
	str	x8, [sp, #32]
	b	.LBB51_7
.LBB51_6:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.50+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.50+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.50+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.50+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB51_10
.LBB51_7:                               //   in Loop: Header=BB51_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.50+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.50+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.50+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.50+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB51_8
.LBB51_8:                               //   in Loop: Header=BB51_1 Depth=1
	b	.LBB51_1
.LBB51_9:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.50
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.50
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.50
	movk	x16, #:abs_g3:__llvm_gcov_ctr.50
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x8, xzr
	stur	x8, [x29, #-8]
	b	.LBB51_10
.LBB51_10:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end50:
	.size	bsearch, .Lfunc_end50-bsearch
	.cfi_endproc
                                        // -- End function
	.globl	bsearch_r                       // -- Begin function bsearch_r
	.p2align	2
	.type	bsearch_r,@function
bsearch_r:                              // @bsearch_r
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	str	x3, [sp, #40]
	str	x4, [sp, #32]
	str	x5, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc_bsearch_r
	movk	x16, #:abs_g1_nc:.L__profc_bsearch_r
	movk	x16, #:abs_g2_nc:.L__profc_bsearch_r
	movk	x16, #:abs_g3:.L__profc_bsearch_r
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-32]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	b	.LBB52_1
.LBB52_1:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	cbz	w8, .LBB52_8
	b	.LBB52_2
.LBB52_2:                               //   in Loop: Header=BB52_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_bsearch_r+8
	movk	x16, #:abs_g1_nc:.L__profc_bsearch_r+8
	movk	x16, #:abs_g2_nc:.L__profc_bsearch_r+8
	movk	x16, #:abs_g3:.L__profc_bsearch_r+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	ldr	w17, [sp, #12]
                                        // implicit-def: $x16
	mov	w16, w17
	sbfx	x16, x16, #1, #31
	ldr	x17, [sp, #40]
	mul	x16, x16, x17
	add	x8, x8, x16
	str	x8, [sp]
	ldr	x8, [sp, #32]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp]
	ldr	x2, [sp, #24]
	bl	__llvm_slsblr_thunk_x8
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB52_4
	b	.LBB52_3
.LBB52_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.51
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.51
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.51
	movk	x16, #:abs_g3:__llvm_gcov_ctr.51
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_bsearch_r+16
	movk	x16, #:abs_g1_nc:.L__profc_bsearch_r+16
	movk	x16, #:abs_g2_nc:.L__profc_bsearch_r+16
	movk	x16, #:abs_g3:.L__profc_bsearch_r+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB52_9
.LBB52_4:                               //   in Loop: Header=BB52_1 Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #1
	b.lt	.LBB52_6
	b	.LBB52_5
.LBB52_5:                               //   in Loop: Header=BB52_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.51+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.51+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.51+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.51+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_bsearch_r+24
	movk	x16, #:abs_g1_nc:.L__profc_bsearch_r+24
	movk	x16, #:abs_g2_nc:.L__profc_bsearch_r+24
	movk	x16, #:abs_g3:.L__profc_bsearch_r+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp]
	ldr	x16, [sp, #40]
	add	x8, x8, x16
	str	x8, [sp, #16]
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB52_6
.LBB52_6:                               //   in Loop: Header=BB52_1 Depth=1
	b	.LBB52_7
.LBB52_7:                               //   in Loop: Header=BB52_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.51+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.51+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.51+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.51+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #12]
	asr	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB52_1
.LBB52_8:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.51+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.51+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.51+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.51+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x8, xzr
	stur	x8, [x29, #-8]
	b	.LBB52_9
.LBB52_9:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end51:
	.size	bsearch_r, .Lfunc_end51-bsearch_r
	.cfi_endproc
                                        // -- End function
	.globl	div                             // -- Begin function div
	.p2align	2
	.type	div,@function
div:                                    // @div
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.52
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.52
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.52
	movk	x16, #:abs_g3:__llvm_gcov_ctr.52
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	w0, [sp, #4]
	str	w1, [sp]
	movz	x16, #:abs_g0_nc:.L__profc_div
	movk	x16, #:abs_g1_nc:.L__profc_div
	movk	x16, #:abs_g2_nc:.L__profc_div
	movk	x16, #:abs_g3:.L__profc_div
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #4]
	ldr	w16, [sp]
	sdiv	w8, w8, w16
	str	w8, [sp, #8]
	ldr	w8, [sp, #4]
	ldr	w17, [sp]
	sdiv	w16, w8, w17
	mul	w16, w16, w17
	subs	w8, w8, w16
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	mov	w16, w8
	ldr	w8, [sp, #8]
                                        // kill: def $x8 killed $w8
	orr	x0, x8, x16, lsl #32
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end52:
	.size	div, .Lfunc_end52-div
	.cfi_endproc
                                        // -- End function
	.globl	imaxabs                         // -- Begin function imaxabs
	.p2align	2
	.type	imaxabs,@function
imaxabs:                                // @imaxabs
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_imaxabs
	movk	x16, #:abs_g1_nc:.L__profc_imaxabs
	movk	x16, #:abs_g2_nc:.L__profc_imaxabs
	movk	x16, #:abs_g3:.L__profc_imaxabs
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	subs	x8, x8, #1
	b.lt	.LBB54_2
	b	.LBB54_1
.LBB54_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.53
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.53
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.53
	movk	x16, #:abs_g3:__llvm_gcov_ctr.53
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_imaxabs+8
	movk	x16, #:abs_g1_nc:.L__profc_imaxabs+8
	movk	x16, #:abs_g2_nc:.L__profc_imaxabs+8
	movk	x16, #:abs_g3:.L__profc_imaxabs+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB54_3
.LBB54_2:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.53+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.53+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.53+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.53+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp, #8]
	mov	x8, xzr
	subs	x0, x8, x16
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB54_3
.LBB54_3:
	ldr	x0, [sp]                        // 8-byte Folded Reload
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end53:
	.size	imaxabs, .Lfunc_end53-imaxabs
	.cfi_endproc
                                        // -- End function
	.globl	imaxdiv                         // -- Begin function imaxdiv
	.p2align	2
	.type	imaxdiv,@function
imaxdiv:                                // @imaxdiv
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.54
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.54
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.54
	movk	x16, #:abs_g3:__llvm_gcov_ctr.54
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	str	x1, [sp]
	movz	x16, #:abs_g0_nc:.L__profc_imaxdiv
	movk	x16, #:abs_g1_nc:.L__profc_imaxdiv
	movk	x16, #:abs_g2_nc:.L__profc_imaxdiv
	movk	x16, #:abs_g3:.L__profc_imaxdiv
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	ldr	x16, [sp]
	sdiv	x8, x8, x16
	str	x8, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	x17, [sp]
	sdiv	x16, x8, x17
	mul	x16, x16, x17
	subs	x8, x8, x16
	str	x8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end54:
	.size	imaxdiv, .Lfunc_end54-imaxdiv
	.cfi_endproc
                                        // -- End function
	.globl	labs                            // -- Begin function labs
	.p2align	2
	.type	labs,@function
labs:                                   // @labs
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_labs
	movk	x16, #:abs_g1_nc:.L__profc_labs
	movk	x16, #:abs_g2_nc:.L__profc_labs
	movk	x16, #:abs_g3:.L__profc_labs
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	subs	x8, x8, #1
	b.lt	.LBB56_2
	b	.LBB56_1
.LBB56_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.55
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.55
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.55
	movk	x16, #:abs_g3:__llvm_gcov_ctr.55
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_labs+8
	movk	x16, #:abs_g1_nc:.L__profc_labs+8
	movk	x16, #:abs_g2_nc:.L__profc_labs+8
	movk	x16, #:abs_g3:.L__profc_labs+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB56_3
.LBB56_2:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.55+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.55+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.55+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.55+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp, #8]
	mov	x8, xzr
	subs	x0, x8, x16
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB56_3
.LBB56_3:
	ldr	x0, [sp]                        // 8-byte Folded Reload
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end55:
	.size	labs, .Lfunc_end55-labs
	.cfi_endproc
                                        // -- End function
	.globl	ldiv                            // -- Begin function ldiv
	.p2align	2
	.type	ldiv,@function
ldiv:                                   // @ldiv
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.56
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.56
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.56
	movk	x16, #:abs_g3:__llvm_gcov_ctr.56
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	str	x1, [sp]
	movz	x16, #:abs_g0_nc:.L__profc_ldiv
	movk	x16, #:abs_g1_nc:.L__profc_ldiv
	movk	x16, #:abs_g2_nc:.L__profc_ldiv
	movk	x16, #:abs_g3:.L__profc_ldiv
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	ldr	x16, [sp]
	sdiv	x8, x8, x16
	str	x8, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	x17, [sp]
	sdiv	x16, x8, x17
	mul	x16, x16, x17
	subs	x8, x8, x16
	str	x8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end56:
	.size	ldiv, .Lfunc_end56-ldiv
	.cfi_endproc
                                        // -- End function
	.globl	llabs                           // -- Begin function llabs
	.p2align	2
	.type	llabs,@function
llabs:                                  // @llabs
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_llabs
	movk	x16, #:abs_g1_nc:.L__profc_llabs
	movk	x16, #:abs_g2_nc:.L__profc_llabs
	movk	x16, #:abs_g3:.L__profc_llabs
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	subs	x8, x8, #1
	b.lt	.LBB58_2
	b	.LBB58_1
.LBB58_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.57
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.57
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.57
	movk	x16, #:abs_g3:__llvm_gcov_ctr.57
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_llabs+8
	movk	x16, #:abs_g1_nc:.L__profc_llabs+8
	movk	x16, #:abs_g2_nc:.L__profc_llabs+8
	movk	x16, #:abs_g3:.L__profc_llabs+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB58_3
.LBB58_2:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.57+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.57+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.57+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.57+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp, #8]
	mov	x8, xzr
	subs	x0, x8, x16
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB58_3
.LBB58_3:
	ldr	x0, [sp]                        // 8-byte Folded Reload
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end57:
	.size	llabs, .Lfunc_end57-llabs
	.cfi_endproc
                                        // -- End function
	.globl	lldiv                           // -- Begin function lldiv
	.p2align	2
	.type	lldiv,@function
lldiv:                                  // @lldiv
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.58
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.58
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.58
	movk	x16, #:abs_g3:__llvm_gcov_ctr.58
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	str	x1, [sp]
	movz	x16, #:abs_g0_nc:.L__profc_lldiv
	movk	x16, #:abs_g1_nc:.L__profc_lldiv
	movk	x16, #:abs_g2_nc:.L__profc_lldiv
	movk	x16, #:abs_g3:.L__profc_lldiv
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	ldr	x16, [sp]
	sdiv	x8, x8, x16
	str	x8, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	x17, [sp]
	sdiv	x16, x8, x17
	mul	x16, x16, x17
	subs	x8, x8, x16
	str	x8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end58:
	.size	lldiv, .Lfunc_end58-lldiv
	.cfi_endproc
                                        // -- End function
	.globl	wcschr                          // -- Begin function wcschr
	.p2align	2
	.type	wcschr,@function
wcschr:                                 // @wcschr
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	movz	x16, #:abs_g0_nc:.L__profc_wcschr
	movk	x16, #:abs_g1_nc:.L__profc_wcschr
	movk	x16, #:abs_g2_nc:.L__profc_wcschr
	movk	x16, #:abs_g3:.L__profc_wcschr
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB60_1
.LBB60_1:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	mov	w16, wzr
	str	w16, [sp, #16]                  // 4-byte Folded Spill
	cbz	w8, .LBB60_4
	b	.LBB60_2
.LBB60_2:                               //   in Loop: Header=BB60_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.59
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.59
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.59
	movk	x16, #:abs_g3:__llvm_gcov_ctr.59
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wcschr+16
	movk	x16, #:abs_g1_nc:.L__profc_wcschr+16
	movk	x16, #:abs_g2_nc:.L__profc_wcschr+16
	movk	x16, #:abs_g3:.L__profc_wcschr+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldur	w16, [x29, #-12]
	subs	w8, w8, w16
	cset	w8, ne
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b.eq	.LBB60_4
	b	.LBB60_3
.LBB60_3:                               //   in Loop: Header=BB60_1 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.59+8
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.59+8
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.59+8
	movk	x17, #:abs_g3:__llvm_gcov_ctr.59+8
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_wcschr+24
	movk	x17, #:abs_g1_nc:.L__profc_wcschr+24
	movk	x17, #:abs_g2_nc:.L__profc_wcschr+24
	movk	x17, #:abs_g3:.L__profc_wcschr+24
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB60_4
.LBB60_4:                               //   in Loop: Header=BB60_1 Depth=1
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB60_7
	b	.LBB60_5
.LBB60_5:                               //   in Loop: Header=BB60_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_wcschr+8
	movk	x16, #:abs_g1_nc:.L__profc_wcschr+8
	movk	x16, #:abs_g2_nc:.L__profc_wcschr+8
	movk	x16, #:abs_g3:.L__profc_wcschr+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB60_6
.LBB60_6:                               //   in Loop: Header=BB60_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.59+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.59+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.59+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.59+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	add	x8, x8, #4
	stur	x8, [x29, #-8]
	b	.LBB60_1
.LBB60_7:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	cbz	w8, .LBB60_9
	b	.LBB60_8
.LBB60_8:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.59+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.59+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.59+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.59+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wcschr+32
	movk	x16, #:abs_g1_nc:.L__profc_wcschr+32
	movk	x16, #:abs_g2_nc:.L__profc_wcschr+32
	movk	x16, #:abs_g3:.L__profc_wcschr+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB60_10
.LBB60_9:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.59+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.59+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.59+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.59+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x0, xzr
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB60_10
.LBB60_10:
	ldr	x0, [sp]                        // 8-byte Folded Reload
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end59:
	.size	wcschr, .Lfunc_end59-wcschr
	.cfi_endproc
                                        // -- End function
	.globl	wcscmp                          // -- Begin function wcscmp
	.p2align	2
	.type	wcscmp,@function
wcscmp:                                 // @wcscmp
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	movz	x16, #:abs_g0_nc:.L__profc_wcscmp
	movk	x16, #:abs_g1_nc:.L__profc_wcscmp
	movk	x16, #:abs_g2_nc:.L__profc_wcscmp
	movk	x16, #:abs_g3:.L__profc_wcscmp
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB61_1
.LBB61_1:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	w16, [x8]
	ldr	x8, [sp, #16]
	ldr	w17, [x8]
	mov	w8, wzr
	subs	w16, w16, w17
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.ne	.LBB61_6
	b	.LBB61_2
.LBB61_2:                               //   in Loop: Header=BB61_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.60
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.60
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.60
	movk	x16, #:abs_g3:__llvm_gcov_ctr.60
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wcscmp+32
	movk	x16, #:abs_g1_nc:.L__profc_wcscmp+32
	movk	x16, #:abs_g2_nc:.L__profc_wcscmp+32
	movk	x16, #:abs_g3:.L__profc_wcscmp+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	mov	w16, wzr
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	cbz	w8, .LBB61_6
	b	.LBB61_3
.LBB61_3:                               //   in Loop: Header=BB61_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.60+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.60+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.60+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.60+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wcscmp+40
	movk	x16, #:abs_g1_nc:.L__profc_wcscmp+40
	movk	x16, #:abs_g2_nc:.L__profc_wcscmp+40
	movk	x16, #:abs_g3:.L__profc_wcscmp+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB61_4
.LBB61_4:                               //   in Loop: Header=BB61_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_wcscmp+16
	movk	x16, #:abs_g1_nc:.L__profc_wcscmp+16
	movk	x16, #:abs_g2_nc:.L__profc_wcscmp+16
	movk	x16, #:abs_g3:.L__profc_wcscmp+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	subs	w16, w8, #0
	cset	w16, ne
	str	w16, [sp, #8]                   // 4-byte Folded Spill
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	cbz	w8, .LBB61_6
	b	.LBB61_5
.LBB61_5:                               //   in Loop: Header=BB61_1 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.60+16
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.60+16
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.60+16
	movk	x17, #:abs_g3:__llvm_gcov_ctr.60+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_wcscmp+24
	movk	x17, #:abs_g1_nc:.L__profc_wcscmp+24
	movk	x17, #:abs_g2_nc:.L__profc_wcscmp+24
	movk	x17, #:abs_g3:.L__profc_wcscmp+24
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB61_6
.LBB61_6:                               //   in Loop: Header=BB61_1 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB61_9
	b	.LBB61_7
.LBB61_7:                               //   in Loop: Header=BB61_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_wcscmp+8
	movk	x16, #:abs_g1_nc:.L__profc_wcscmp+8
	movk	x16, #:abs_g2_nc:.L__profc_wcscmp+8
	movk	x16, #:abs_g3:.L__profc_wcscmp+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB61_8
.LBB61_8:                               //   in Loop: Header=BB61_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.60+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.60+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.60+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.60+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	add	x8, x8, #4
	stur	x8, [x29, #-8]
	ldr	x8, [sp, #16]
	add	x8, x8, #4
	str	x8, [sp, #16]
	b	.LBB61_1
.LBB61_9:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldr	x16, [sp, #16]
	ldr	w16, [x16]
	subs	w8, w8, w16
	b.hs	.LBB61_11
	b	.LBB61_10
.LBB61_10:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.60+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.60+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.60+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.60+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wcscmp+48
	movk	x16, #:abs_g1_nc:.L__profc_wcscmp+48
	movk	x16, #:abs_g2_nc:.L__profc_wcscmp+48
	movk	x16, #:abs_g3:.L__profc_wcscmp+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w0, #-1                         // =0xffffffff
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB61_12
.LBB61_11:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.60+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.60+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.60+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.60+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldr	x16, [sp, #16]
	ldr	w16, [x16]
	subs	w8, w8, w16
	cset	w0, hi
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB61_12
.LBB61_12:
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end60:
	.size	wcscmp, .Lfunc_end60-wcscmp
	.cfi_endproc
                                        // -- End function
	.globl	wcscpy                          // -- Begin function wcscpy
	.p2align	2
	.type	wcscpy,@function
wcscpy:                                 // @wcscpy
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.61
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.61
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.61
	movk	x16, #:abs_g3:__llvm_gcov_ctr.61
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	movz	x16, #:abs_g0_nc:.L__profc_wcscpy
	movk	x16, #:abs_g1_nc:.L__profc_wcscpy
	movk	x16, #:abs_g2_nc:.L__profc_wcscpy
	movk	x16, #:abs_g3:.L__profc_wcscpy
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	b	.LBB62_1
.LBB62_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	add	x16, x8, #4
	str	x16, [sp, #16]
	ldr	w8, [x8]
	ldur	x16, [x29, #-8]
	add	x17, x16, #4
	stur	x17, [x29, #-8]
	str	w8, [x16]
	cbz	w8, .LBB62_3
	b	.LBB62_2
.LBB62_2:                               //   in Loop: Header=BB62_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.61+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.61+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.61+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.61+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wcscpy+8
	movk	x16, #:abs_g1_nc:.L__profc_wcscpy+8
	movk	x16, #:abs_g2_nc:.L__profc_wcscpy+8
	movk	x16, #:abs_g3:.L__profc_wcscpy+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB62_1
.LBB62_3:
	ldr	x0, [sp, #8]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end61:
	.size	wcscpy, .Lfunc_end61-wcscpy
	.cfi_endproc
                                        // -- End function
	.globl	wcslen                          // -- Begin function wcslen
	.p2align	2
	.type	wcslen,@function
wcslen:                                 // @wcslen
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.62
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.62
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.62
	movk	x16, #:abs_g3:__llvm_gcov_ctr.62
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_wcslen
	movk	x16, #:abs_g1_nc:.L__profc_wcslen
	movk	x16, #:abs_g2_nc:.L__profc_wcslen
	movk	x16, #:abs_g3:.L__profc_wcslen
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	b	.LBB63_1
.LBB63_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	cbz	w8, .LBB63_4
	b	.LBB63_2
.LBB63_2:                               //   in Loop: Header=BB63_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_wcslen+8
	movk	x16, #:abs_g1_nc:.L__profc_wcslen+8
	movk	x16, #:abs_g2_nc:.L__profc_wcslen+8
	movk	x16, #:abs_g3:.L__profc_wcslen+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB63_3
.LBB63_3:                               //   in Loop: Header=BB63_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.62+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.62+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.62+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.62+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	add	x8, x8, #4
	str	x8, [sp, #8]
	b	.LBB63_1
.LBB63_4:
	ldr	x8, [sp, #8]
	ldr	x16, [sp]
	subs	x8, x8, x16
	asr	x0, x8, #2
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end62:
	.size	wcslen, .Lfunc_end62-wcslen
	.cfi_endproc
                                        // -- End function
	.globl	wcsncmp                         // -- Begin function wcsncmp
	.p2align	2
	.type	wcsncmp,@function
wcsncmp:                                // @wcsncmp
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc_wcsncmp
	movk	x16, #:abs_g1_nc:.L__profc_wcsncmp
	movk	x16, #:abs_g2_nc:.L__profc_wcsncmp
	movk	x16, #:abs_g3:.L__profc_wcsncmp
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB64_1
.LBB64_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	mov	w16, wzr
	str	w16, [sp, #20]                  // 4-byte Folded Spill
	cbz	x8, .LBB64_8
	b	.LBB64_2
.LBB64_2:                               //   in Loop: Header=BB64_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.63
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.63
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.63
	movk	x16, #:abs_g3:__llvm_gcov_ctr.63
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wcsncmp+48
	movk	x16, #:abs_g1_nc:.L__profc_wcsncmp+48
	movk	x16, #:abs_g2_nc:.L__profc_wcsncmp+48
	movk	x16, #:abs_g3:.L__profc_wcsncmp+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	ldr	w16, [x8]
	ldur	x8, [x29, #-16]
	ldr	w17, [x8]
	mov	w8, wzr
	subs	w16, w16, w17
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b.ne	.LBB64_8
	b	.LBB64_3
.LBB64_3:                               //   in Loop: Header=BB64_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.63+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.63+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.63+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.63+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wcsncmp+56
	movk	x16, #:abs_g1_nc:.L__profc_wcsncmp+56
	movk	x16, #:abs_g2_nc:.L__profc_wcsncmp+56
	movk	x16, #:abs_g3:.L__profc_wcsncmp+56
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB64_4
.LBB64_4:                               //   in Loop: Header=BB64_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_wcsncmp+32
	movk	x16, #:abs_g1_nc:.L__profc_wcsncmp+32
	movk	x16, #:abs_g2_nc:.L__profc_wcsncmp+32
	movk	x16, #:abs_g3:.L__profc_wcsncmp+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	mov	w16, wzr
	str	w16, [sp, #20]                  // 4-byte Folded Spill
	cbz	w8, .LBB64_8
	b	.LBB64_5
.LBB64_5:                               //   in Loop: Header=BB64_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.63+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.63+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.63+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.63+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wcsncmp+40
	movk	x16, #:abs_g1_nc:.L__profc_wcsncmp+40
	movk	x16, #:abs_g2_nc:.L__profc_wcsncmp+40
	movk	x16, #:abs_g3:.L__profc_wcsncmp+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB64_6
.LBB64_6:                               //   in Loop: Header=BB64_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_wcsncmp+16
	movk	x16, #:abs_g1_nc:.L__profc_wcsncmp+16
	movk	x16, #:abs_g2_nc:.L__profc_wcsncmp+16
	movk	x16, #:abs_g3:.L__profc_wcsncmp+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	subs	w16, w8, #0
	cset	w16, ne
	str	w16, [sp, #16]                  // 4-byte Folded Spill
	str	w16, [sp, #20]                  // 4-byte Folded Spill
	cbz	w8, .LBB64_8
	b	.LBB64_7
.LBB64_7:                               //   in Loop: Header=BB64_1 Depth=1
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.63+24
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.63+24
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.63+24
	movk	x17, #:abs_g3:__llvm_gcov_ctr.63+24
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_wcsncmp+24
	movk	x17, #:abs_g1_nc:.L__profc_wcsncmp+24
	movk	x17, #:abs_g2_nc:.L__profc_wcsncmp+24
	movk	x17, #:abs_g3:.L__profc_wcsncmp+24
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB64_8
.LBB64_8:                               //   in Loop: Header=BB64_1 Depth=1
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB64_11
	b	.LBB64_9
.LBB64_9:                               //   in Loop: Header=BB64_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_wcsncmp+8
	movk	x16, #:abs_g1_nc:.L__profc_wcsncmp+8
	movk	x16, #:abs_g2_nc:.L__profc_wcsncmp+8
	movk	x16, #:abs_g3:.L__profc_wcsncmp+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB64_10
.LBB64_10:                              //   in Loop: Header=BB64_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.63+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.63+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.63+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.63+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	str	x8, [sp, #24]
	ldur	x8, [x29, #-8]
	add	x8, x8, #4
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-16]
	add	x8, x8, #4
	stur	x8, [x29, #-16]
	b	.LBB64_1
.LBB64_11:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB64_16
	b	.LBB64_12
.LBB64_12:
	movz	x16, #:abs_g0_nc:.L__profc_wcsncmp+64
	movk	x16, #:abs_g1_nc:.L__profc_wcsncmp+64
	movk	x16, #:abs_g2_nc:.L__profc_wcsncmp+64
	movk	x16, #:abs_g3:.L__profc_wcsncmp+64
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldur	x16, [x29, #-16]
	ldr	w16, [x16]
	subs	w8, w8, w16
	b.hs	.LBB64_14
	b	.LBB64_13
.LBB64_13:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.63+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.63+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.63+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.63+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wcsncmp+72
	movk	x16, #:abs_g1_nc:.L__profc_wcsncmp+72
	movk	x16, #:abs_g2_nc:.L__profc_wcsncmp+72
	movk	x16, #:abs_g3:.L__profc_wcsncmp+72
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w0, #-1                         // =0xffffffff
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB64_15
.LBB64_14:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.63+48
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.63+48
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.63+48
	movk	x16, #:abs_g3:__llvm_gcov_ctr.63+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldur	x16, [x29, #-16]
	ldr	w16, [x16]
	subs	w8, w8, w16
	cset	w0, hi
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB64_15
.LBB64_15:
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB64_17
.LBB64_16:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.63+56
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.63+56
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.63+56
	movk	x16, #:abs_g3:__llvm_gcov_ctr.63+56
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w0, wzr
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB64_17
.LBB64_17:
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end63:
	.size	wcsncmp, .Lfunc_end63-wcsncmp
	.cfi_endproc
                                        // -- End function
	.globl	wmemchr                         // -- Begin function wmemchr
	.p2align	2
	.type	wmemchr,@function
wmemchr:                                // @wmemchr
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc_wmemchr
	movk	x16, #:abs_g1_nc:.L__profc_wmemchr
	movk	x16, #:abs_g2_nc:.L__profc_wmemchr
	movk	x16, #:abs_g3:.L__profc_wmemchr
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB65_1
.LBB65_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	mov	w16, wzr
	str	w16, [sp, #20]                  // 4-byte Folded Spill
	cbz	x8, .LBB65_4
	b	.LBB65_2
.LBB65_2:                               //   in Loop: Header=BB65_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.64
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.64
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.64
	movk	x16, #:abs_g3:__llvm_gcov_ctr.64
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wmemchr+16
	movk	x16, #:abs_g1_nc:.L__profc_wmemchr+16
	movk	x16, #:abs_g2_nc:.L__profc_wmemchr+16
	movk	x16, #:abs_g3:.L__profc_wmemchr+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldur	w16, [x29, #-12]
	subs	w8, w8, w16
	cset	w8, ne
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b.eq	.LBB65_4
	b	.LBB65_3
.LBB65_3:                               //   in Loop: Header=BB65_1 Depth=1
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.64+8
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.64+8
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.64+8
	movk	x17, #:abs_g3:__llvm_gcov_ctr.64+8
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_wmemchr+24
	movk	x17, #:abs_g1_nc:.L__profc_wmemchr+24
	movk	x17, #:abs_g2_nc:.L__profc_wmemchr+24
	movk	x17, #:abs_g3:.L__profc_wmemchr+24
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB65_4
.LBB65_4:                               //   in Loop: Header=BB65_1 Depth=1
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB65_7
	b	.LBB65_5
.LBB65_5:                               //   in Loop: Header=BB65_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_wmemchr+8
	movk	x16, #:abs_g1_nc:.L__profc_wmemchr+8
	movk	x16, #:abs_g2_nc:.L__profc_wmemchr+8
	movk	x16, #:abs_g3:.L__profc_wmemchr+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB65_6
.LBB65_6:                               //   in Loop: Header=BB65_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.64+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.64+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.64+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.64+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	str	x8, [sp, #24]
	ldur	x8, [x29, #-8]
	add	x8, x8, #4
	stur	x8, [x29, #-8]
	b	.LBB65_1
.LBB65_7:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB65_9
	b	.LBB65_8
.LBB65_8:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.64+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.64+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.64+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.64+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wmemchr+32
	movk	x16, #:abs_g1_nc:.L__profc_wmemchr+32
	movk	x16, #:abs_g2_nc:.L__profc_wmemchr+32
	movk	x16, #:abs_g3:.L__profc_wmemchr+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB65_10
.LBB65_9:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.64+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.64+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.64+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.64+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x0, xzr
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB65_10
.LBB65_10:
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end64:
	.size	wmemchr, .Lfunc_end64-wmemchr
	.cfi_endproc
                                        // -- End function
	.globl	wmemcmp                         // -- Begin function wmemcmp
	.p2align	2
	.type	wmemcmp,@function
wmemcmp:                                // @wmemcmp
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc_wmemcmp
	movk	x16, #:abs_g1_nc:.L__profc_wmemcmp
	movk	x16, #:abs_g2_nc:.L__profc_wmemcmp
	movk	x16, #:abs_g3:.L__profc_wmemcmp
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB66_1
.LBB66_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	mov	w16, wzr
	str	w16, [sp, #20]                  // 4-byte Folded Spill
	cbz	x8, .LBB66_4
	b	.LBB66_2
.LBB66_2:                               //   in Loop: Header=BB66_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.65
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.65
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.65
	movk	x16, #:abs_g3:__llvm_gcov_ctr.65
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wmemcmp+16
	movk	x16, #:abs_g1_nc:.L__profc_wmemcmp+16
	movk	x16, #:abs_g2_nc:.L__profc_wmemcmp+16
	movk	x16, #:abs_g3:.L__profc_wmemcmp+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldur	x16, [x29, #-16]
	ldr	w16, [x16]
	subs	w8, w8, w16
	cset	w8, eq
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b.ne	.LBB66_4
	b	.LBB66_3
.LBB66_3:                               //   in Loop: Header=BB66_1 Depth=1
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.65+8
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.65+8
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.65+8
	movk	x17, #:abs_g3:__llvm_gcov_ctr.65+8
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_wmemcmp+24
	movk	x17, #:abs_g1_nc:.L__profc_wmemcmp+24
	movk	x17, #:abs_g2_nc:.L__profc_wmemcmp+24
	movk	x17, #:abs_g3:.L__profc_wmemcmp+24
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB66_4
.LBB66_4:                               //   in Loop: Header=BB66_1 Depth=1
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB66_7
	b	.LBB66_5
.LBB66_5:                               //   in Loop: Header=BB66_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_wmemcmp+8
	movk	x16, #:abs_g1_nc:.L__profc_wmemcmp+8
	movk	x16, #:abs_g2_nc:.L__profc_wmemcmp+8
	movk	x16, #:abs_g3:.L__profc_wmemcmp+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB66_6
.LBB66_6:                               //   in Loop: Header=BB66_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.65+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.65+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.65+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.65+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	str	x8, [sp, #24]
	ldur	x8, [x29, #-8]
	add	x8, x8, #4
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-16]
	add	x8, x8, #4
	stur	x8, [x29, #-16]
	b	.LBB66_1
.LBB66_7:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB66_12
	b	.LBB66_8
.LBB66_8:
	movz	x16, #:abs_g0_nc:.L__profc_wmemcmp+32
	movk	x16, #:abs_g1_nc:.L__profc_wmemcmp+32
	movk	x16, #:abs_g2_nc:.L__profc_wmemcmp+32
	movk	x16, #:abs_g3:.L__profc_wmemcmp+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldur	x16, [x29, #-16]
	ldr	w16, [x16]
	subs	w8, w8, w16
	b.hs	.LBB66_10
	b	.LBB66_9
.LBB66_9:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.65+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.65+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.65+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.65+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wmemcmp+40
	movk	x16, #:abs_g1_nc:.L__profc_wmemcmp+40
	movk	x16, #:abs_g2_nc:.L__profc_wmemcmp+40
	movk	x16, #:abs_g3:.L__profc_wmemcmp+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w0, #-1                         // =0xffffffff
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB66_11
.LBB66_10:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.65+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.65+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.65+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.65+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldur	x16, [x29, #-16]
	ldr	w16, [x16]
	subs	w8, w8, w16
	cset	w0, hi
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB66_11
.LBB66_11:
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB66_13
.LBB66_12:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.65+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.65+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.65+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.65+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w0, wzr
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB66_13
.LBB66_13:
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end65:
	.size	wmemcmp, .Lfunc_end65-wmemcmp
	.cfi_endproc
                                        // -- End function
	.globl	wmemcpy                         // -- Begin function wmemcpy
	.p2align	2
	.type	wmemcpy,@function
wmemcpy:                                // @wmemcpy
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.66
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.66
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.66
	movk	x16, #:abs_g3:__llvm_gcov_ctr.66
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_wmemcpy
	movk	x16, #:abs_g1_nc:.L__profc_wmemcpy
	movk	x16, #:abs_g2_nc:.L__profc_wmemcpy
	movk	x16, #:abs_g3:.L__profc_wmemcpy
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]
	b	.LBB67_1
.LBB67_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	subs	x16, x8, #1
	str	x16, [sp, #8]
	cbz	x8, .LBB67_3
	b	.LBB67_2
.LBB67_2:                               //   in Loop: Header=BB67_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.66+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.66+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.66+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.66+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wmemcpy+8
	movk	x16, #:abs_g1_nc:.L__profc_wmemcpy+8
	movk	x16, #:abs_g2_nc:.L__profc_wmemcpy+8
	movk	x16, #:abs_g3:.L__profc_wmemcpy+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	add	x16, x8, #4
	str	x16, [sp, #16]
	ldr	w8, [x8]
	ldur	x16, [x29, #-8]
	add	x17, x16, #4
	stur	x17, [x29, #-8]
	str	w8, [x16]
	b	.LBB67_1
.LBB67_3:
	ldr	x0, [sp]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end66:
	.size	wmemcpy, .Lfunc_end66-wmemcpy
	.cfi_endproc
                                        // -- End function
	.globl	wmemmove                        // -- Begin function wmemmove
	.p2align	2
	.type	wmemmove,@function
wmemmove:                               // @wmemmove
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	movz	x16, #:abs_g0_nc:.L__profc_wmemmove
	movk	x16, #:abs_g1_nc:.L__profc_wmemmove
	movk	x16, #:abs_g2_nc:.L__profc_wmemmove
	movk	x16, #:abs_g3:.L__profc_wmemmove
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	ldur	x8, [x29, #-16]
	ldr	x16, [sp, #24]
	subs	x8, x8, x16
	b.ne	.LBB68_2
	b	.LBB68_1
.LBB68_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.67
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.67
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.67
	movk	x16, #:abs_g3:__llvm_gcov_ctr.67
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wmemmove+8
	movk	x16, #:abs_g1_nc:.L__profc_wmemmove+8
	movk	x16, #:abs_g2_nc:.L__profc_wmemmove+8
	movk	x16, #:abs_g3:.L__profc_wmemmove+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB68_12
.LBB68_2:
	ldur	x8, [x29, #-16]
	ldr	x16, [sp, #24]
	subs	x8, x8, x16
	ldr	x16, [sp, #16]
	subs	x8, x8, x16, lsl #2
	b.hs	.LBB68_7
	b	.LBB68_3
.LBB68_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.67+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.67+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.67+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.67+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wmemmove+16
	movk	x16, #:abs_g1_nc:.L__profc_wmemmove+16
	movk	x16, #:abs_g2_nc:.L__profc_wmemmove+16
	movk	x16, #:abs_g3:.L__profc_wmemmove+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB68_4
.LBB68_4:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	subs	x16, x8, #1
	str	x16, [sp, #16]
	cbz	x8, .LBB68_6
	b	.LBB68_5
.LBB68_5:                               //   in Loop: Header=BB68_4 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.67+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.67+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.67+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.67+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wmemmove+24
	movk	x16, #:abs_g1_nc:.L__profc_wmemmove+24
	movk	x16, #:abs_g2_nc:.L__profc_wmemmove+24
	movk	x16, #:abs_g3:.L__profc_wmemmove+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	ldr	x17, [sp, #16]
	ldr	w8, [x8, x17, lsl #2]
	ldur	x16, [x29, #-16]
	str	w8, [x16, x17, lsl #2]
	b	.LBB68_4
.LBB68_6:
	b	.LBB68_11
.LBB68_7:
	b	.LBB68_8
.LBB68_8:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	subs	x16, x8, #1
	str	x16, [sp, #16]
	cbz	x8, .LBB68_10
	b	.LBB68_9
.LBB68_9:                               //   in Loop: Header=BB68_8 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.67+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.67+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.67+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.67+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wmemmove+32
	movk	x16, #:abs_g1_nc:.L__profc_wmemmove+32
	movk	x16, #:abs_g2_nc:.L__profc_wmemmove+32
	movk	x16, #:abs_g3:.L__profc_wmemmove+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	add	x16, x8, #4
	str	x16, [sp, #24]
	ldr	w8, [x8]
	ldur	x16, [x29, #-16]
	add	x17, x16, #4
	stur	x17, [x29, #-16]
	str	w8, [x16]
	b	.LBB68_8
.LBB68_10:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.67+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.67+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.67+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.67+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB68_11
.LBB68_11:
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB68_12
.LBB68_12:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end67:
	.size	wmemmove, .Lfunc_end67-wmemmove
	.cfi_endproc
                                        // -- End function
	.globl	wmemset                         // -- Begin function wmemset
	.p2align	2
	.type	wmemset,@function
wmemset:                                // @wmemset
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.68
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.68
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.68
	movk	x16, #:abs_g3:__llvm_gcov_ctr.68
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_wmemset
	movk	x16, #:abs_g1_nc:.L__profc_wmemset
	movk	x16, #:abs_g2_nc:.L__profc_wmemset
	movk	x16, #:abs_g3:.L__profc_wmemset
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]
	b	.LBB69_1
.LBB69_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	subs	x16, x8, #1
	str	x16, [sp, #8]
	cbz	x8, .LBB69_3
	b	.LBB69_2
.LBB69_2:                               //   in Loop: Header=BB69_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.68+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.68+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.68+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.68+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_wmemset+8
	movk	x16, #:abs_g1_nc:.L__profc_wmemset+8
	movk	x16, #:abs_g2_nc:.L__profc_wmemset+8
	movk	x16, #:abs_g3:.L__profc_wmemset+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-12]
	ldur	x16, [x29, #-8]
	add	x17, x16, #4
	stur	x17, [x29, #-8]
	str	w8, [x16]
	b	.LBB69_1
.LBB69_3:
	ldr	x0, [sp]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end68:
	.size	wmemset, .Lfunc_end68-wmemset
	.cfi_endproc
                                        // -- End function
	.globl	bcopy                           // -- Begin function bcopy
	.p2align	2
	.type	bcopy,@function
bcopy:                                  // @bcopy
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc_bcopy
	movk	x16, #:abs_g1_nc:.L__profc_bcopy
	movk	x16, #:abs_g2_nc:.L__profc_bcopy
	movk	x16, #:abs_g3:.L__profc_bcopy
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x16, [sp, #8]
	subs	x8, x8, x16
	b.hs	.LBB70_6
	b	.LBB70_1
.LBB70_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.69
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.69
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.69
	movk	x16, #:abs_g3:__llvm_gcov_ctr.69
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_bcopy+8
	movk	x16, #:abs_g1_nc:.L__profc_bcopy+8
	movk	x16, #:abs_g2_nc:.L__profc_bcopy+8
	movk	x16, #:abs_g3:.L__profc_bcopy+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp, #24]
	ldr	x8, [sp, #16]
	add	x8, x8, x16
	str	x8, [sp, #16]
	ldr	x16, [sp, #24]
	ldr	x8, [sp, #8]
	add	x8, x8, x16
	str	x8, [sp, #8]
	b	.LBB70_2
.LBB70_2:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	cbz	x8, .LBB70_5
	b	.LBB70_3
.LBB70_3:                               //   in Loop: Header=BB70_2 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_bcopy+16
	movk	x16, #:abs_g1_nc:.L__profc_bcopy+16
	movk	x16, #:abs_g2_nc:.L__profc_bcopy+16
	movk	x16, #:abs_g3:.L__profc_bcopy+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	subs	x16, x8, #1
	str	x16, [sp, #16]
	ldurb	w8, [x8, #-1]
	ldr	x16, [sp, #8]
	subs	x17, x16, #1
	str	x17, [sp, #8]
	sturb	w8, [x16, #-1]
	b	.LBB70_4
.LBB70_4:                               //   in Loop: Header=BB70_2 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.69+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.69+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.69+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.69+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB70_2
.LBB70_5:
	b	.LBB70_13
.LBB70_6:
	ldr	x8, [sp, #16]
	ldr	x16, [sp, #8]
	subs	x8, x8, x16
	b.eq	.LBB70_12
	b	.LBB70_7
.LBB70_7:
	movz	x16, #:abs_g0_nc:.L__profc_bcopy+24
	movk	x16, #:abs_g1_nc:.L__profc_bcopy+24
	movk	x16, #:abs_g2_nc:.L__profc_bcopy+24
	movk	x16, #:abs_g3:.L__profc_bcopy+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB70_8
.LBB70_8:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	cbz	x8, .LBB70_11
	b	.LBB70_9
.LBB70_9:                               //   in Loop: Header=BB70_8 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.69+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.69+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.69+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.69+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_bcopy+32
	movk	x16, #:abs_g1_nc:.L__profc_bcopy+32
	movk	x16, #:abs_g2_nc:.L__profc_bcopy+32
	movk	x16, #:abs_g3:.L__profc_bcopy+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	add	x16, x8, #1
	str	x16, [sp, #16]
	ldrb	w8, [x8]
	ldr	x16, [sp, #8]
	add	x17, x16, #1
	str	x17, [sp, #8]
	strb	w8, [x16]
	b	.LBB70_10
.LBB70_10:                              //   in Loop: Header=BB70_8 Depth=1
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB70_8
.LBB70_11:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.69+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.69+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.69+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.69+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB70_12
.LBB70_12:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.69+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.69+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.69+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.69+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB70_13
.LBB70_13:
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end69:
	.size	bcopy, .Lfunc_end69-bcopy
	.cfi_endproc
                                        // -- End function
	.globl	rotl64                          // -- Begin function rotl64
	.p2align	2
	.type	rotl64,@function
rotl64:                                 // @rotl64
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.70
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.70
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.70
	movk	x16, #:abs_g3:__llvm_gcov_ctr.70
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	movz	x16, #:abs_g0_nc:.L__profc_rotl64
	movk	x16, #:abs_g1_nc:.L__profc_rotl64
	movk	x16, #:abs_g2_nc:.L__profc_rotl64
	movk	x16, #:abs_g3:.L__profc_rotl64
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	ldr	w17, [sp, #4]
	mov	w16, wzr
	sub	w16, w16, w17
                                        // kill: def $x16 killed $w16
	ror	x0, x8, x16
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end70:
	.size	rotl64, .Lfunc_end70-rotl64
	.cfi_endproc
                                        // -- End function
	.globl	rotr64                          // -- Begin function rotr64
	.p2align	2
	.type	rotr64,@function
rotr64:                                 // @rotr64
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.71
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.71
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.71
	movk	x16, #:abs_g3:__llvm_gcov_ctr.71
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	movz	x16, #:abs_g0_nc:.L__profc_rotr64
	movk	x16, #:abs_g1_nc:.L__profc_rotr64
	movk	x16, #:abs_g2_nc:.L__profc_rotr64
	movk	x16, #:abs_g3:.L__profc_rotr64
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	ldr	w16, [sp, #4]
                                        // kill: def $x16 killed $w16
	ror	x0, x8, x16
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end71:
	.size	rotr64, .Lfunc_end71-rotr64
	.cfi_endproc
                                        // -- End function
	.globl	rotl32                          // -- Begin function rotl32
	.p2align	2
	.type	rotl32,@function
rotl32:                                 // @rotl32
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.72
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.72
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.72
	movk	x16, #:abs_g3:__llvm_gcov_ctr.72
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_rotl32
	movk	x16, #:abs_g1_nc:.L__profc_rotl32
	movk	x16, #:abs_g2_nc:.L__profc_rotl32
	movk	x16, #:abs_g3:.L__profc_rotl32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	ldr	w17, [sp, #8]
	mov	w16, wzr
	sub	w16, w16, w17
	ror	w0, w8, w16
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end72:
	.size	rotl32, .Lfunc_end72-rotl32
	.cfi_endproc
                                        // -- End function
	.globl	rotr32                          // -- Begin function rotr32
	.p2align	2
	.type	rotr32,@function
rotr32:                                 // @rotr32
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.73
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.73
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.73
	movk	x16, #:abs_g3:__llvm_gcov_ctr.73
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_rotr32
	movk	x16, #:abs_g1_nc:.L__profc_rotr32
	movk	x16, #:abs_g2_nc:.L__profc_rotr32
	movk	x16, #:abs_g3:.L__profc_rotr32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	ldr	w16, [sp, #8]
	mov	w0, w16
	mov	w16, w0
	ror	w0, w8, w16
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end73:
	.size	rotr32, .Lfunc_end73-rotr32
	.cfi_endproc
                                        // -- End function
	.globl	rotl_sz                         // -- Begin function rotl_sz
	.p2align	2
	.type	rotl_sz,@function
rotl_sz:                                // @rotl_sz
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.74
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.74
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.74
	movk	x16, #:abs_g3:__llvm_gcov_ctr.74
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	movz	x16, #:abs_g0_nc:.L__profc_rotl_sz
	movk	x16, #:abs_g1_nc:.L__profc_rotl_sz
	movk	x16, #:abs_g2_nc:.L__profc_rotl_sz
	movk	x16, #:abs_g3:.L__profc_rotl_sz
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp, #8]
	ldrsw	x0, [sp, #4]
	lsl	x8, x16, x0
	mov	x17, xzr
	sub	x17, x17, x0
	lsr	x16, x16, x17
	orr	x0, x8, x16
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end74:
	.size	rotl_sz, .Lfunc_end74-rotl_sz
	.cfi_endproc
                                        // -- End function
	.globl	rotr_sz                         // -- Begin function rotr_sz
	.p2align	2
	.type	rotr_sz,@function
rotr_sz:                                // @rotr_sz
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.75
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.75
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.75
	movk	x16, #:abs_g3:__llvm_gcov_ctr.75
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	movz	x16, #:abs_g0_nc:.L__profc_rotr_sz
	movk	x16, #:abs_g1_nc:.L__profc_rotr_sz
	movk	x16, #:abs_g2_nc:.L__profc_rotr_sz
	movk	x16, #:abs_g3:.L__profc_rotr_sz
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp, #8]
	ldrsw	x0, [sp, #4]
	lsr	x8, x16, x0
	mov	x17, xzr
	sub	x17, x17, x0
	lsl	x16, x16, x17
	orr	x0, x8, x16
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end75:
	.size	rotr_sz, .Lfunc_end75-rotr_sz
	.cfi_endproc
                                        // -- End function
	.globl	rotl16                          // -- Begin function rotl16
	.p2align	2
	.type	rotl16,@function
rotl16:                                 // @rotl16
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.76
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.76
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.76
	movk	x16, #:abs_g3:__llvm_gcov_ctr.76
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	sturh	w0, [x29, #-2]
	str	w1, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_rotl16
	movk	x16, #:abs_g1_nc:.L__profc_rotl16
	movk	x16, #:abs_g2_nc:.L__profc_rotl16
	movk	x16, #:abs_g3:.L__profc_rotl16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurh	w16, [x29, #-2]
	ldr	w8, [sp, #8]
	mov	w0, w8
                                        // kill: def $w0 killed $w0 killed $x0
	lsl	w8, w16, w0
	mov	w17, #16                        // =0x10
	subs	w17, w17, w0
	lsr	w16, w16, w17
	orr	w8, w8, w16
	and	w0, w8, #0xffff
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end76:
	.size	rotl16, .Lfunc_end76-rotl16
	.cfi_endproc
                                        // -- End function
	.globl	rotr16                          // -- Begin function rotr16
	.p2align	2
	.type	rotr16,@function
rotr16:                                 // @rotr16
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.77
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.77
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.77
	movk	x16, #:abs_g3:__llvm_gcov_ctr.77
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	sturh	w0, [x29, #-2]
	str	w1, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_rotr16
	movk	x16, #:abs_g1_nc:.L__profc_rotr16
	movk	x16, #:abs_g2_nc:.L__profc_rotr16
	movk	x16, #:abs_g3:.L__profc_rotr16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurh	w16, [x29, #-2]
	ldr	w8, [sp, #8]
	mov	w0, w8
                                        // kill: def $w0 killed $w0 killed $x0
	lsr	w8, w16, w0
	mov	w17, #16                        // =0x10
	subs	w17, w17, w0
	lsl	w16, w16, w17
	orr	w8, w8, w16
	and	w0, w8, #0xffff
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end77:
	.size	rotr16, .Lfunc_end77-rotr16
	.cfi_endproc
                                        // -- End function
	.globl	rotl8                           // -- Begin function rotl8
	.p2align	2
	.type	rotl8,@function
rotl8:                                  // @rotl8
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.78
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.78
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.78
	movk	x16, #:abs_g3:__llvm_gcov_ctr.78
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	sturb	w0, [x29, #-1]
	str	w1, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_rotl8
	movk	x16, #:abs_g1_nc:.L__profc_rotl8
	movk	x16, #:abs_g2_nc:.L__profc_rotl8
	movk	x16, #:abs_g3:.L__profc_rotl8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurb	w16, [x29, #-1]
	ldr	w8, [sp, #8]
	mov	w0, w8
                                        // kill: def $w0 killed $w0 killed $x0
	lsl	w8, w16, w0
	mov	w17, #8                         // =0x8
	subs	w17, w17, w0
	lsr	w16, w16, w17
	orr	w8, w8, w16
	and	w0, w8, #0xff
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end78:
	.size	rotl8, .Lfunc_end78-rotl8
	.cfi_endproc
                                        // -- End function
	.globl	rotr8                           // -- Begin function rotr8
	.p2align	2
	.type	rotr8,@function
rotr8:                                  // @rotr8
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.79
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.79
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.79
	movk	x16, #:abs_g3:__llvm_gcov_ctr.79
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	sturb	w0, [x29, #-1]
	str	w1, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_rotr8
	movk	x16, #:abs_g1_nc:.L__profc_rotr8
	movk	x16, #:abs_g2_nc:.L__profc_rotr8
	movk	x16, #:abs_g3:.L__profc_rotr8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurb	w16, [x29, #-1]
	ldr	w8, [sp, #8]
	mov	w0, w8
                                        // kill: def $w0 killed $w0 killed $x0
	lsr	w8, w16, w0
	mov	w17, #8                         // =0x8
	subs	w17, w17, w0
	lsl	w16, w16, w17
	orr	w8, w8, w16
	and	w0, w8, #0xff
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end79:
	.size	rotr8, .Lfunc_end79-rotr8
	.cfi_endproc
                                        // -- End function
	.globl	bswap_16                        // -- Begin function bswap_16
	.p2align	2
	.type	bswap_16,@function
bswap_16:                               // @bswap_16
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.80
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.80
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.80
	movk	x16, #:abs_g3:__llvm_gcov_ctr.80
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	sturh	w0, [x29, #-2]
	movz	x16, #:abs_g0_nc:.L__profc_bswap_16
	movk	x16, #:abs_g1_nc:.L__profc_bswap_16
	movk	x16, #:abs_g2_nc:.L__profc_bswap_16
	movk	x16, #:abs_g3:.L__profc_bswap_16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #255                        // =0xff
	sturh	w8, [x29, #-4]
	ldurh	w16, [x29, #-2]
	ldurh	w17, [x29, #-4]
	and	w8, w16, w17, lsl #8
	lsr	w8, w8, #8
	and	w16, w16, w17
	orr	w0, w8, w16, lsl #8
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end80:
	.size	bswap_16, .Lfunc_end80-bswap_16
	.cfi_endproc
                                        // -- End function
	.globl	bswap_32                        // -- Begin function bswap_32
	.p2align	2
	.type	bswap_32,@function
bswap_32:                               // @bswap_32
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.81
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.81
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.81
	movk	x16, #:abs_g3:__llvm_gcov_ctr.81
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc_bswap_32
	movk	x16, #:abs_g1_nc:.L__profc_bswap_32
	movk	x16, #:abs_g2_nc:.L__profc_bswap_32
	movk	x16, #:abs_g3:.L__profc_bswap_32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #255                        // =0xff
	str	w8, [sp, #8]
	ldur	w16, [x29, #-4]
	ldr	w17, [sp, #8]
	and	w1, w16, w17, lsl #24
	lsl	w0, w17, #16
	and	w8, w16, w0
	lsr	w8, w8, #8
	bfxil	w8, w1, #24, #8
	and	w0, w0, w16, lsl #8
	orr	w8, w8, w0
	and	w16, w16, w17
	orr	w0, w8, w16, lsl #24
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end81:
	.size	bswap_32, .Lfunc_end81-bswap_32
	.cfi_endproc
                                        // -- End function
	.globl	bswap_64                        // -- Begin function bswap_64
	.p2align	2
	.type	bswap_64,@function
bswap_64:                               // @bswap_64
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.82
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.82
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.82
	movk	x16, #:abs_g3:__llvm_gcov_ctr.82
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_bswap_64
	movk	x16, #:abs_g1_nc:.L__profc_bswap_64
	movk	x16, #:abs_g2_nc:.L__profc_bswap_64
	movk	x16, #:abs_g3:.L__profc_bswap_64
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #255                        // =0xff
                                        // kill: def $x8 killed $w8
	str	x8, [sp]
	ldr	x16, [sp, #8]
	ldr	x17, [sp]
	and	x0, x16, x17, lsl #56
	and	x8, x16, x17, lsl #48
	lsr	x8, x8, #40
	bfxil	x8, x0, #56, #8
	lsl	x0, x17, #40
	and	x1, x16, x0
	orr	x8, x8, x1, lsr #24
	lsl	x1, x17, #32
	and	x2, x16, x1
	orr	x8, x8, x2, lsr #8
	and	x1, x1, x16, lsl #8
	orr	x8, x8, x1
	and	x0, x0, x16, lsl #24
	orr	x8, x8, x0
                                        // kill: def $w17 killed $w17 killed $x17
                                        // kill: def $w16 killed $w16 killed $x16
	and	w1, w16, w17, lsl #8
                                        // implicit-def: $x0
	mov	w0, w1
	orr	x8, x8, x0, lsl #40
	and	w17, w16, w17
                                        // implicit-def: $x16
	mov	w16, w17
	orr	x0, x8, x16, lsl #56
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end82:
	.size	bswap_64, .Lfunc_end82-bswap_64
	.cfi_endproc
                                        // -- End function
	.globl	ffs                             // -- Begin function ffs
	.p2align	2
	.type	ffs,@function
ffs:                                    // @ffs
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_ffs
	movk	x16, #:abs_g1_nc:.L__profc_ffs
	movk	x16, #:abs_g2_nc:.L__profc_ffs
	movk	x16, #:abs_g3:.L__profc_ffs
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	str	w8, [sp, #4]
	b	.LBB84_1
.LBB84_1:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #31
	b.hi	.LBB84_6
	b	.LBB84_2
.LBB84_2:                               //   in Loop: Header=BB84_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_ffs+8
	movk	x16, #:abs_g1_nc:.L__profc_ffs+8
	movk	x16, #:abs_g2_nc:.L__profc_ffs+8
	movk	x16, #:abs_g3:.L__profc_ffs+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #8]
	ldr	w16, [sp, #4]
	mov	w0, w16
	mov	w16, w0
	lsr	w8, w8, w16
	tbz	w8, #0, .LBB84_4
	b	.LBB84_3
.LBB84_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.83
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.83
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.83
	movk	x16, #:abs_g3:__llvm_gcov_ctr.83
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_ffs+16
	movk	x16, #:abs_g1_nc:.L__profc_ffs+16
	movk	x16, #:abs_g2_nc:.L__profc_ffs+16
	movk	x16, #:abs_g3:.L__profc_ffs+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB84_7
.LBB84_4:                               //   in Loop: Header=BB84_1 Depth=1
	b	.LBB84_5
.LBB84_5:                               //   in Loop: Header=BB84_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.83+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.83+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.83+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.83+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB84_1
.LBB84_6:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.83+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.83+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.83+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.83+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB84_7
.LBB84_7:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end83:
	.size	ffs, .Lfunc_end83-ffs
	.cfi_endproc
                                        // -- End function
	.globl	libiberty_ffs                   // -- Begin function libiberty_ffs
	.p2align	2
	.type	libiberty_ffs,@function
libiberty_ffs:                          // @libiberty_ffs
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_libiberty_ffs
	movk	x16, #:abs_g1_nc:.L__profc_libiberty_ffs
	movk	x16, #:abs_g2_nc:.L__profc_libiberty_ffs
	movk	x16, #:abs_g3:.L__profc_libiberty_ffs
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB85_2
	b	.LBB85_1
.LBB85_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.84+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.84+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.84+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.84+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_libiberty_ffs+8
	movk	x16, #:abs_g1_nc:.L__profc_libiberty_ffs+8
	movk	x16, #:abs_g2_nc:.L__profc_libiberty_ffs+8
	movk	x16, #:abs_g3:.L__profc_libiberty_ffs+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB85_7
.LBB85_2:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.84
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.84
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.84
	movk	x16, #:abs_g3:__llvm_gcov_ctr.84
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #1                          // =0x1
	str	w8, [sp, #4]
	b	.LBB85_3
.LBB85_3:                               // =>This Inner Loop Header: Depth=1
	ldrb	w8, [sp, #8]
	tbnz	w8, #0, .LBB85_6
	b	.LBB85_4
.LBB85_4:                               //   in Loop: Header=BB85_3 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_libiberty_ffs+16
	movk	x16, #:abs_g1_nc:.L__profc_libiberty_ffs+16
	movk	x16, #:abs_g2_nc:.L__profc_libiberty_ffs+16
	movk	x16, #:abs_g3:.L__profc_libiberty_ffs+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #8]
	asr	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB85_5
.LBB85_5:                               //   in Loop: Header=BB85_3 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.84+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.84+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.84+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.84+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB85_3
.LBB85_6:
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	.LBB85_7
.LBB85_7:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end84:
	.size	libiberty_ffs, .Lfunc_end84-libiberty_ffs
	.cfi_endproc
                                        // -- End function
	.globl	gl_isinff                       // -- Begin function gl_isinff
	.p2align	2
	.type	gl_isinff,@function
gl_isinff:                              // @gl_isinff
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.85
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.85
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.85
	movk	x16, #:abs_g3:__llvm_gcov_ctr.85
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	s0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc_gl_isinff
	movk	x16, #:abs_g1_nc:.L__profc_gl_isinff
	movk	x16, #:abs_g2_nc:.L__profc_gl_isinff
	movk	x16, #:abs_g3:.L__profc_gl_isinff
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s0, [x29, #-4]
	mov	w8, #1                          // =0x1
	mov	w16, #-8388609                  // =0xff7fffff
	fmov	s1, w16
	fcmp	s0, s1
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.mi	.LBB86_3
	b	.LBB86_1
.LBB86_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.85+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.85+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.85+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.85+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_gl_isinff+8
	movk	x16, #:abs_g1_nc:.L__profc_gl_isinff+8
	movk	x16, #:abs_g2_nc:.L__profc_gl_isinff+8
	movk	x16, #:abs_g3:.L__profc_gl_isinff+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s0, [x29, #-4]
	mov	w8, #2139095039                 // =0x7f7fffff
	fmov	s1, w8
	fcmp	s0, s1
	cset	w8, gt
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.gt	.LBB86_3
	b	.LBB86_2
.LBB86_2:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.85+16
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.85+16
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.85+16
	movk	x17, #:abs_g3:__llvm_gcov_ctr.85+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_gl_isinff+16
	movk	x17, #:abs_g1_nc:.L__profc_gl_isinff+16
	movk	x17, #:abs_g2_nc:.L__profc_gl_isinff+16
	movk	x17, #:abs_g3:.L__profc_gl_isinff+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB86_3
.LBB86_3:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end85:
	.size	gl_isinff, .Lfunc_end85-gl_isinff
	.cfi_endproc
                                        // -- End function
	.globl	gl_isinfd                       // -- Begin function gl_isinfd
	.p2align	2
	.type	gl_isinfd,@function
gl_isinfd:                              // @gl_isinfd
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.86
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.86
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.86
	movk	x16, #:abs_g3:__llvm_gcov_ctr.86
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	d0, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_gl_isinfd
	movk	x16, #:abs_g1_nc:.L__profc_gl_isinfd
	movk	x16, #:abs_g2_nc:.L__profc_gl_isinfd
	movk	x16, #:abs_g3:.L__profc_gl_isinfd
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #8]
	mov	w8, #1                          // =0x1
	mov	x16, #-4503599627370497         // =0xffefffffffffffff
	fmov	d1, x16
	fcmp	d0, d1
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.mi	.LBB87_3
	b	.LBB87_1
.LBB87_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.86+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.86+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.86+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.86+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_gl_isinfd+8
	movk	x16, #:abs_g1_nc:.L__profc_gl_isinfd+8
	movk	x16, #:abs_g2_nc:.L__profc_gl_isinfd+8
	movk	x16, #:abs_g3:.L__profc_gl_isinfd+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #8]
	mov	x8, #9218868437227405311        // =0x7fefffffffffffff
	fmov	d1, x8
	fcmp	d0, d1
	cset	w8, gt
	str	w8, [sp]                        // 4-byte Folded Spill
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.gt	.LBB87_3
	b	.LBB87_2
.LBB87_2:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.86+16
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.86+16
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.86+16
	movk	x17, #:abs_g3:__llvm_gcov_ctr.86+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_gl_isinfd+16
	movk	x17, #:abs_g1_nc:.L__profc_gl_isinfd+16
	movk	x17, #:abs_g2_nc:.L__profc_gl_isinfd+16
	movk	x17, #:abs_g3:.L__profc_gl_isinfd+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB87_3
.LBB87_3:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end86:
	.size	gl_isinfd, .Lfunc_end86-gl_isinfd
	.cfi_endproc
                                        // -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          // -- Begin function gl_isinfl
.LCPI88_0:
	.xword	0xffffffffffffffff              // fp128 -1.18973149535723176508575932662800702E+4932
	.xword	0xfffeffffffffffff
.LCPI88_1:
	.xword	0xffffffffffffffff              // fp128 1.18973149535723176508575932662800702E+4932
	.xword	0x7ffeffffffffffff
	.text
	.globl	gl_isinfl
	.p2align	2
	.type	gl_isinfl,@function
gl_isinfl:                              // @gl_isinfl
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.87
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.87
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.87
	movk	x16, #:abs_g3:__llvm_gcov_ctr.87
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	q0, [x29, #-16]
	movz	x16, #:abs_g0_nc:.L__profc_gl_isinfl
	movk	x16, #:abs_g1_nc:.L__profc_gl_isinfl
	movk	x16, #:abs_g2_nc:.L__profc_gl_isinfl
	movk	x16, #:abs_g3:.L__profc_gl_isinfl
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	q0, [x29, #-16]
	mov	w0, #1                          // =0x1
	stur	w0, [x29, #-24]                 // 4-byte Folded Spill
	movz	x8, #:abs_g0_nc:.LCPI88_0
	movk	x8, #:abs_g1_nc:.LCPI88_0
	movk	x8, #:abs_g2_nc:.LCPI88_0
	movk	x8, #:abs_g3:.LCPI88_0
	ldr	q1, [x8]
	bl	__lttf2
	ldur	w8, [x29, #-24]                 // 4-byte Folded Reload
	stur	w8, [x29, #-20]                 // 4-byte Folded Spill
	tbnz	w0, #31, .LBB88_3
	b	.LBB88_1
.LBB88_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.87+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.87+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.87+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.87+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_gl_isinfl+8
	movk	x16, #:abs_g1_nc:.L__profc_gl_isinfl+8
	movk	x16, #:abs_g2_nc:.L__profc_gl_isinfl+8
	movk	x16, #:abs_g3:.L__profc_gl_isinfl+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	q0, [x29, #-16]
	str	q0, [sp]                        // 16-byte Folded Spill
	movz	x8, #:abs_g0_nc:.LCPI88_1
	movk	x8, #:abs_g1_nc:.LCPI88_1
	movk	x8, #:abs_g2_nc:.LCPI88_1
	movk	x8, #:abs_g3:.LCPI88_1
	ldr	q1, [x8]
	str	q1, [sp, #16]                   // 16-byte Folded Spill
	bl	__gttf2
	ldr	q0, [sp]                        // 16-byte Folded Reload
	ldr	q1, [sp, #16]                   // 16-byte Folded Reload
	subs	w8, w0, #0
	cset	w0, gt
	stur	w0, [x29, #-28]                 // 4-byte Folded Spill
	bl	__gttf2
	ldur	w8, [x29, #-28]                 // 4-byte Folded Reload
	subs	w16, w0, #0
	stur	w8, [x29, #-20]                 // 4-byte Folded Spill
	b.gt	.LBB88_3
	b	.LBB88_2
.LBB88_2:
	ldur	w8, [x29, #-28]                 // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.87+16
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.87+16
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.87+16
	movk	x17, #:abs_g3:__llvm_gcov_ctr.87+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_gl_isinfl+16
	movk	x17, #:abs_g1_nc:.L__profc_gl_isinfl+16
	movk	x17, #:abs_g2_nc:.L__profc_gl_isinfl+16
	movk	x17, #:abs_g3:.L__profc_gl_isinfl+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	stur	w8, [x29, #-20]                 // 4-byte Folded Spill
	b	.LBB88_3
.LBB88_3:
	ldur	w8, [x29, #-20]                 // 4-byte Folded Reload
	and	w0, w8, #0x1
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end87:
	.size	gl_isinfl, .Lfunc_end87-gl_isinfl
	.cfi_endproc
                                        // -- End function
	.globl	_Qp_itoq                        // -- Begin function _Qp_itoq
	.p2align	2
	.type	_Qp_itoq,@function
_Qp_itoq:                               // @_Qp_itoq
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.88
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.88
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.88
	movk	x16, #:abs_g3:__llvm_gcov_ctr.88
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	movz	x16, #:abs_g0_nc:.L__profc__Qp_itoq
	movk	x16, #:abs_g1_nc:.L__profc__Qp_itoq
	movk	x16, #:abs_g2_nc:.L__profc__Qp_itoq
	movk	x16, #:abs_g3:.L__profc__Qp_itoq
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #4]
	scvtf	d0, w8
	bl	__extenddftf2
	ldr	x8, [sp, #8]
	str	q0, [x8]
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end88:
	.size	_Qp_itoq, .Lfunc_end88-_Qp_itoq
	.cfi_endproc
                                        // -- End function
	.globl	ldexpf                          // -- Begin function ldexpf
	.p2align	2
	.type	ldexpf,@function
ldexpf:                                 // @ldexpf
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.89
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.89
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.89
	movk	x16, #:abs_g3:__llvm_gcov_ctr.89
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	s0, [x29, #-4]
	str	w0, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_ldexpf
	movk	x16, #:abs_g1_nc:.L__profc_ldexpf
	movk	x16, #:abs_g2_nc:.L__profc_ldexpf
	movk	x16, #:abs_g3:.L__profc_ldexpf
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s0, [x29, #-4]
	fcmp	s0, s0
	b.vs	.LBB90_10
	b	.LBB90_1
.LBB90_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.89+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.89+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.89+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.89+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_ldexpf+16
	movk	x16, #:abs_g1_nc:.L__profc_ldexpf+16
	movk	x16, #:abs_g2_nc:.L__profc_ldexpf+16
	movk	x16, #:abs_g3:.L__profc_ldexpf+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s1, [x29, #-4]
	fadd	s0, s1, s1
	fcmp	s0, s1
	b.eq	.LBB90_10
	b	.LBB90_2
.LBB90_2:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.89+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.89+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.89+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.89+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_ldexpf+24
	movk	x16, #:abs_g1_nc:.L__profc_ldexpf+24
	movk	x16, #:abs_g2_nc:.L__profc_ldexpf+24
	movk	x16, #:abs_g3:.L__profc_ldexpf+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB90_3
.LBB90_3:
	movz	x17, #:abs_g0_nc:.L__profc_ldexpf+8
	movk	x17, #:abs_g1_nc:.L__profc_ldexpf+8
	movk	x17, #:abs_g2_nc:.L__profc_ldexpf+8
	movk	x17, #:abs_g3:.L__profc_ldexpf+8
	ldr	x8, [x17]
	add	x8, x8, #1
	str	x8, [x17]
	ldr	w8, [sp, #8]
	lsr	w16, w8, #31
	mov	w16, w16
	mov	w0, w16
	ldr	x16, [x17, #24]
	add	x16, x16, x0
	str	x16, [x17, #24]
	subs	w8, w8, #0
	fmov	s1, #2.00000000
	fmov	s0, #0.50000000
	fcsel	s0, s0, s1, lt
	str	s0, [sp, #4]
	b	.LBB90_4
.LBB90_4:                               // =>This Inner Loop Header: Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_ldexpf+40
	movk	x16, #:abs_g1_nc:.L__profc_ldexpf+40
	movk	x16, #:abs_g2_nc:.L__profc_ldexpf+40
	movk	x16, #:abs_g3:.L__profc_ldexpf+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w16, [sp, #8]
	and	w8, w16, #0x1
	subs	w16, w16, #0
	cneg	w8, w8, lt
	cbz	w8, .LBB90_6
	b	.LBB90_5
.LBB90_5:                               //   in Loop: Header=BB90_4 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.89+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.89+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.89+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.89+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_ldexpf+48
	movk	x16, #:abs_g1_nc:.L__profc_ldexpf+48
	movk	x16, #:abs_g2_nc:.L__profc_ldexpf+48
	movk	x16, #:abs_g3:.L__profc_ldexpf+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	s1, [sp, #4]
	ldur	s0, [x29, #-4]
	fmul	s0, s0, s1
	stur	s0, [x29, #-4]
	b	.LBB90_6
.LBB90_6:                               //   in Loop: Header=BB90_4 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, w8, lsr #31
	asr	w8, w8, #1
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB90_8
	b	.LBB90_7
.LBB90_7:
	movz	x16, #:abs_g0_nc:.L__profc_ldexpf+56
	movk	x16, #:abs_g1_nc:.L__profc_ldexpf+56
	movk	x16, #:abs_g2_nc:.L__profc_ldexpf+56
	movk	x16, #:abs_g3:.L__profc_ldexpf+56
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB90_9
.LBB90_8:                               //   in Loop: Header=BB90_4 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.89+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.89+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.89+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.89+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	s0, [sp, #4]
	fmul	s0, s0, s0
	str	s0, [sp, #4]
	b	.LBB90_4
.LBB90_9:
	b	.LBB90_10
.LBB90_10:
	ldur	s0, [x29, #-4]
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end89:
	.size	ldexpf, .Lfunc_end89-ldexpf
	.cfi_endproc
                                        // -- End function
	.globl	ldexp                           // -- Begin function ldexp
	.p2align	2
	.type	ldexp,@function
ldexp:                                  // @ldexp
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.90
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.90
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.90
	movk	x16, #:abs_g3:__llvm_gcov_ctr.90
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	d0, [x29, #-8]
	stur	w0, [x29, #-12]
	movz	x16, #:abs_g0_nc:.L__profc_ldexp
	movk	x16, #:abs_g1_nc:.L__profc_ldexp
	movk	x16, #:abs_g2_nc:.L__profc_ldexp
	movk	x16, #:abs_g3:.L__profc_ldexp
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	d0, [x29, #-8]
	fcmp	d0, d0
	b.vs	.LBB91_10
	b	.LBB91_1
.LBB91_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.90+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.90+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.90+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.90+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_ldexp+16
	movk	x16, #:abs_g1_nc:.L__profc_ldexp+16
	movk	x16, #:abs_g2_nc:.L__profc_ldexp+16
	movk	x16, #:abs_g3:.L__profc_ldexp+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	d1, [x29, #-8]
	fadd	d0, d1, d1
	fcmp	d0, d1
	b.eq	.LBB91_10
	b	.LBB91_2
.LBB91_2:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.90+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.90+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.90+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.90+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_ldexp+24
	movk	x16, #:abs_g1_nc:.L__profc_ldexp+24
	movk	x16, #:abs_g2_nc:.L__profc_ldexp+24
	movk	x16, #:abs_g3:.L__profc_ldexp+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB91_3
.LBB91_3:
	movz	x17, #:abs_g0_nc:.L__profc_ldexp+8
	movk	x17, #:abs_g1_nc:.L__profc_ldexp+8
	movk	x17, #:abs_g2_nc:.L__profc_ldexp+8
	movk	x17, #:abs_g3:.L__profc_ldexp+8
	ldr	x8, [x17]
	add	x8, x8, #1
	str	x8, [x17]
	ldur	w8, [x29, #-12]
	lsr	w16, w8, #31
	mov	w16, w16
	mov	w0, w16
	ldr	x16, [x17, #24]
	add	x16, x16, x0
	str	x16, [x17, #24]
	subs	w8, w8, #0
	fmov	d1, #2.00000000
	fmov	d0, #0.50000000
	fcsel	d0, d0, d1, lt
	str	d0, [sp, #8]
	b	.LBB91_4
.LBB91_4:                               // =>This Inner Loop Header: Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_ldexp+40
	movk	x16, #:abs_g1_nc:.L__profc_ldexp+40
	movk	x16, #:abs_g2_nc:.L__profc_ldexp+40
	movk	x16, #:abs_g3:.L__profc_ldexp+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w16, [x29, #-12]
	and	w8, w16, #0x1
	subs	w16, w16, #0
	cneg	w8, w8, lt
	cbz	w8, .LBB91_6
	b	.LBB91_5
.LBB91_5:                               //   in Loop: Header=BB91_4 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.90+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.90+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.90+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.90+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_ldexp+48
	movk	x16, #:abs_g1_nc:.L__profc_ldexp+48
	movk	x16, #:abs_g2_nc:.L__profc_ldexp+48
	movk	x16, #:abs_g3:.L__profc_ldexp+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d1, [sp, #8]
	ldur	d0, [x29, #-8]
	fmul	d0, d0, d1
	stur	d0, [x29, #-8]
	b	.LBB91_6
.LBB91_6:                               //   in Loop: Header=BB91_4 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, w8, lsr #31
	asr	w8, w8, #1
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	cbnz	w8, .LBB91_8
	b	.LBB91_7
.LBB91_7:
	movz	x16, #:abs_g0_nc:.L__profc_ldexp+56
	movk	x16, #:abs_g1_nc:.L__profc_ldexp+56
	movk	x16, #:abs_g2_nc:.L__profc_ldexp+56
	movk	x16, #:abs_g3:.L__profc_ldexp+56
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB91_9
.LBB91_8:                               //   in Loop: Header=BB91_4 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.90+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.90+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.90+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.90+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #8]
	fmul	d0, d0, d0
	str	d0, [sp, #8]
	b	.LBB91_4
.LBB91_9:
	b	.LBB91_10
.LBB91_10:
	ldur	d0, [x29, #-8]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end90:
	.size	ldexp, .Lfunc_end90-ldexp
	.cfi_endproc
                                        // -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0                          // -- Begin function ldexpl
.LCPI92_0:
	.xword	0x0000000000000000              // fp128 2
	.xword	0x4000000000000000
	.xword	0x0000000000000000              // fp128 0.5
	.xword	0x3ffe000000000000
	.text
	.globl	ldexpl
	.p2align	2
	.type	ldexpl,@function
ldexpl:                                 // @ldexpl
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.91
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.91
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.91
	movk	x16, #:abs_g3:__llvm_gcov_ctr.91
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	q0, [x29, #-16]
	stur	w0, [x29, #-20]
	movz	x16, #:abs_g0_nc:.L__profc_ldexpl
	movk	x16, #:abs_g1_nc:.L__profc_ldexpl
	movk	x16, #:abs_g2_nc:.L__profc_ldexpl
	movk	x16, #:abs_g3:.L__profc_ldexpl
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	q1, [x29, #-16]
	str	q1, [sp, #-16]!
	ldr	q0, [sp], #16
	bl	__unordtf2
	cbnz	w0, .LBB92_10
	b	.LBB92_1
.LBB92_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.91+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.91+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.91+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.91+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_ldexpl+16
	movk	x16, #:abs_g1_nc:.L__profc_ldexpl+16
	movk	x16, #:abs_g2_nc:.L__profc_ldexpl+16
	movk	x16, #:abs_g3:.L__profc_ldexpl+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	q1, [x29, #-16]
	str	q1, [sp]                        // 16-byte Folded Spill
	str	q1, [sp, #-16]!
	ldr	q0, [sp], #16
	bl	__addtf3
	ldr	q1, [sp]                        // 16-byte Folded Reload
	bl	__eqtf2
	cbz	w0, .LBB92_10
	b	.LBB92_2
.LBB92_2:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.91+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.91+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.91+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.91+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_ldexpl+24
	movk	x16, #:abs_g1_nc:.L__profc_ldexpl+24
	movk	x16, #:abs_g2_nc:.L__profc_ldexpl+24
	movk	x16, #:abs_g3:.L__profc_ldexpl+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB92_3
.LBB92_3:
	movz	x17, #:abs_g0_nc:.L__profc_ldexpl+8
	movk	x17, #:abs_g1_nc:.L__profc_ldexpl+8
	movk	x17, #:abs_g2_nc:.L__profc_ldexpl+8
	movk	x17, #:abs_g3:.L__profc_ldexpl+8
	ldr	x8, [x17]
	add	x8, x8, #1
	str	x8, [x17]
	ldur	w8, [x29, #-20]
	lsr	w16, w8, #31
	mov	w8, w16
	mov	w0, w8
	ldr	x8, [x17, #24]
	add	x8, x8, x0
	str	x8, [x17, #24]
	movz	x8, #:abs_g0_nc:.LCPI92_0
	movk	x8, #:abs_g1_nc:.LCPI92_0
	movk	x8, #:abs_g2_nc:.LCPI92_0
	movk	x8, #:abs_g3:.LCPI92_0
	ldr	q0, [x8, w16, uxtw #4]
	str	q0, [sp, #16]
	b	.LBB92_4
.LBB92_4:                               // =>This Inner Loop Header: Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_ldexpl+40
	movk	x16, #:abs_g1_nc:.L__profc_ldexpl+40
	movk	x16, #:abs_g2_nc:.L__profc_ldexpl+40
	movk	x16, #:abs_g3:.L__profc_ldexpl+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w16, [x29, #-20]
	and	w8, w16, #0x1
	subs	w16, w16, #0
	cneg	w8, w8, lt
	cbz	w8, .LBB92_6
	b	.LBB92_5
.LBB92_5:                               //   in Loop: Header=BB92_4 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.91+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.91+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.91+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.91+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_ldexpl+48
	movk	x16, #:abs_g1_nc:.L__profc_ldexpl+48
	movk	x16, #:abs_g2_nc:.L__profc_ldexpl+48
	movk	x16, #:abs_g3:.L__profc_ldexpl+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	q1, [sp, #16]
	ldur	q0, [x29, #-16]
	bl	__multf3
	stur	q0, [x29, #-16]
	b	.LBB92_6
.LBB92_6:                               //   in Loop: Header=BB92_4 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, w8, lsr #31
	asr	w8, w8, #1
	stur	w8, [x29, #-20]
	ldur	w8, [x29, #-20]
	cbnz	w8, .LBB92_8
	b	.LBB92_7
.LBB92_7:
	movz	x16, #:abs_g0_nc:.L__profc_ldexpl+56
	movk	x16, #:abs_g1_nc:.L__profc_ldexpl+56
	movk	x16, #:abs_g2_nc:.L__profc_ldexpl+56
	movk	x16, #:abs_g3:.L__profc_ldexpl+56
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB92_9
.LBB92_8:                               //   in Loop: Header=BB92_4 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.91+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.91+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.91+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.91+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	q1, [sp, #16]
	str	q1, [sp, #-16]!
	ldr	q0, [sp], #16
	bl	__multf3
	str	q0, [sp, #16]
	b	.LBB92_4
.LBB92_9:
	b	.LBB92_10
.LBB92_10:
	ldur	q0, [x29, #-16]
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end91:
	.size	ldexpl, .Lfunc_end91-ldexpl
	.cfi_endproc
                                        // -- End function
	.globl	memxor                          // -- Begin function memxor
	.p2align	2
	.type	memxor,@function
memxor:                                 // @memxor
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.92
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.92
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.92
	movk	x16, #:abs_g3:__llvm_gcov_ctr.92
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc_memxor
	movk	x16, #:abs_g1_nc:.L__profc_memxor
	movk	x16, #:abs_g2_nc:.L__profc_memxor
	movk	x16, #:abs_g3:.L__profc_memxor
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	b	.LBB93_1
.LBB93_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	cbz	x8, .LBB93_4
	b	.LBB93_2
.LBB93_2:                               //   in Loop: Header=BB93_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_memxor+8
	movk	x16, #:abs_g1_nc:.L__profc_memxor+8
	movk	x16, #:abs_g2_nc:.L__profc_memxor+8
	movk	x16, #:abs_g3:.L__profc_memxor+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	add	x16, x8, #1
	str	x16, [sp, #16]
	ldrb	w17, [x8]
	ldr	x16, [sp, #8]
	add	x8, x16, #1
	str	x8, [sp, #8]
	ldrb	w8, [x16]
	eor	w8, w8, w17
	strb	w8, [x16]
	b	.LBB93_3
.LBB93_3:                               //   in Loop: Header=BB93_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.92+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.92+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.92+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.92+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB93_1
.LBB93_4:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end92:
	.size	memxor, .Lfunc_end92-memxor
	.cfi_endproc
                                        // -- End function
	.globl	strncat                         // -- Begin function strncat
	.p2align	2
	.type	strncat,@function
strncat:                                // @strncat
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc_strncat
	movk	x16, #:abs_g1_nc:.L__profc_strncat
	movk	x16, #:abs_g2_nc:.L__profc_strncat
	movk	x16, #:abs_g3:.L__profc_strncat
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	strlen
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	add	x8, x8, x0
	str	x8, [sp, #16]
	b	.LBB94_1
.LBB94_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	mov	w16, wzr
	str	w16, [sp, #4]                   // 4-byte Folded Spill
	cbz	x8, .LBB94_4
	b	.LBB94_2
.LBB94_2:                               //   in Loop: Header=BB94_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.93
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.93
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.93
	movk	x16, #:abs_g3:__llvm_gcov_ctr.93
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_strncat+16
	movk	x16, #:abs_g1_nc:.L__profc_strncat+16
	movk	x16, #:abs_g2_nc:.L__profc_strncat+16
	movk	x16, #:abs_g3:.L__profc_strncat+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8]
	ldr	x16, [sp, #16]
	strb	w8, [x16]
	subs	w16, w8, #0
	cset	w16, ne
	str	w16, [sp]                       // 4-byte Folded Spill
	str	w16, [sp, #4]                   // 4-byte Folded Spill
	cbz	w8, .LBB94_4
	b	.LBB94_3
.LBB94_3:                               //   in Loop: Header=BB94_1 Depth=1
	ldr	w8, [sp]                        // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.93+8
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.93+8
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.93+8
	movk	x17, #:abs_g3:__llvm_gcov_ctr.93+8
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_strncat+24
	movk	x17, #:abs_g1_nc:.L__profc_strncat+24
	movk	x17, #:abs_g2_nc:.L__profc_strncat+24
	movk	x17, #:abs_g3:.L__profc_strncat+24
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB94_4
.LBB94_4:                               //   in Loop: Header=BB94_1 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB94_7
	b	.LBB94_5
.LBB94_5:                               //   in Loop: Header=BB94_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_strncat+8
	movk	x16, #:abs_g1_nc:.L__profc_strncat+8
	movk	x16, #:abs_g2_nc:.L__profc_strncat+8
	movk	x16, #:abs_g3:.L__profc_strncat+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB94_6
.LBB94_6:                               //   in Loop: Header=BB94_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.93+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.93+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.93+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.93+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	add	x8, x8, #1
	stur	x8, [x29, #-16]
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB94_1
.LBB94_7:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.93+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.93+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.93+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.93+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB94_9
	b	.LBB94_8
.LBB94_8:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.93+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.93+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.93+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.93+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_strncat+32
	movk	x16, #:abs_g1_nc:.L__profc_strncat+32
	movk	x16, #:abs_g2_nc:.L__profc_strncat+32
	movk	x16, #:abs_g3:.L__profc_strncat+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp, #16]
	mov	w8, wzr
	strb	w8, [x16]
	b	.LBB94_9
.LBB94_9:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end93:
	.size	strncat, .Lfunc_end93-strncat
	.cfi_endproc
                                        // -- End function
	.globl	strnlen                         // -- Begin function strnlen
	.p2align	2
	.type	strnlen,@function
strnlen:                                // @strnlen
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.94
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.94
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.94
	movk	x16, #:abs_g3:__llvm_gcov_ctr.94
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	movz	x16, #:abs_g0_nc:.L__profc_strnlen
	movk	x16, #:abs_g1_nc:.L__profc_strnlen
	movk	x16, #:abs_g2_nc:.L__profc_strnlen
	movk	x16, #:abs_g3:.L__profc_strnlen
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x8, xzr
	str	x8, [sp, #8]
	b	.LBB95_1
.LBB95_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x16, [sp, #8]
	ldr	x17, [sp, #16]
	mov	w8, wzr
	subs	x16, x16, x17
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.hs	.LBB95_4
	b	.LBB95_2
.LBB95_2:                               //   in Loop: Header=BB95_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.94+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.94+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.94+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.94+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_strnlen+16
	movk	x16, #:abs_g1_nc:.L__profc_strnlen+16
	movk	x16, #:abs_g2_nc:.L__profc_strnlen+16
	movk	x16, #:abs_g3:.L__profc_strnlen+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	ldr	x16, [sp, #8]
	ldrb	w8, [x8, x16]
	subs	w16, w8, #0
	cset	w16, ne
	str	w16, [sp]                       // 4-byte Folded Spill
	str	w16, [sp, #4]                   // 4-byte Folded Spill
	cbz	w8, .LBB95_4
	b	.LBB95_3
.LBB95_3:                               //   in Loop: Header=BB95_1 Depth=1
	ldr	w8, [sp]                        // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.94+16
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.94+16
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.94+16
	movk	x17, #:abs_g3:__llvm_gcov_ctr.94+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_strnlen+24
	movk	x17, #:abs_g1_nc:.L__profc_strnlen+24
	movk	x17, #:abs_g2_nc:.L__profc_strnlen+24
	movk	x17, #:abs_g3:.L__profc_strnlen+24
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB95_4
.LBB95_4:                               //   in Loop: Header=BB95_1 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB95_7
	b	.LBB95_5
.LBB95_5:                               //   in Loop: Header=BB95_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_strnlen+8
	movk	x16, #:abs_g1_nc:.L__profc_strnlen+8
	movk	x16, #:abs_g2_nc:.L__profc_strnlen+8
	movk	x16, #:abs_g3:.L__profc_strnlen+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB95_6
.LBB95_6:                               //   in Loop: Header=BB95_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.94+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.94+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.94+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.94+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB95_1
.LBB95_7:
	ldr	x0, [sp, #8]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end94:
	.size	strnlen, .Lfunc_end94-strnlen
	.cfi_endproc
                                        // -- End function
	.globl	strpbrk                         // -- Begin function strpbrk
	.p2align	2
	.type	strpbrk,@function
strpbrk:                                // @strpbrk
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_strpbrk
	movk	x16, #:abs_g1_nc:.L__profc_strpbrk
	movk	x16, #:abs_g2_nc:.L__profc_strpbrk
	movk	x16, #:abs_g3:.L__profc_strpbrk
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB96_1
.LBB96_1:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB96_3 Depth 2
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	cbz	w8, .LBB96_8
	b	.LBB96_2
.LBB96_2:                               //   in Loop: Header=BB96_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_strpbrk+8
	movk	x16, #:abs_g1_nc:.L__profc_strpbrk+8
	movk	x16, #:abs_g2_nc:.L__profc_strpbrk+8
	movk	x16, #:abs_g3:.L__profc_strpbrk+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	b	.LBB96_3
.LBB96_3:                               //   Parent Loop BB96_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp]
	ldrb	w8, [x8]
	cbz	w8, .LBB96_7
	b	.LBB96_4
.LBB96_4:                               //   in Loop: Header=BB96_3 Depth=2
	movz	x16, #:abs_g0_nc:.L__profc_strpbrk+16
	movk	x16, #:abs_g1_nc:.L__profc_strpbrk+16
	movk	x16, #:abs_g2_nc:.L__profc_strpbrk+16
	movk	x16, #:abs_g3:.L__profc_strpbrk+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp]
	add	x16, x8, #1
	str	x16, [sp]
	ldrb	w8, [x8]
	ldr	x16, [sp, #16]
	ldrb	w16, [x16]
	subs	w8, w8, w16
	b.ne	.LBB96_6
	b	.LBB96_5
.LBB96_5:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.95+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.95+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.95+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.95+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_strpbrk+24
	movk	x16, #:abs_g1_nc:.L__profc_strpbrk+24
	movk	x16, #:abs_g2_nc:.L__profc_strpbrk+24
	movk	x16, #:abs_g3:.L__profc_strpbrk+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB96_9
.LBB96_6:                               //   in Loop: Header=BB96_3 Depth=2
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.95+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.95+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.95+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.95+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB96_3
.LBB96_7:                               //   in Loop: Header=BB96_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.95+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.95+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.95+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.95+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB96_1
.LBB96_8:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.95
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.95
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.95
	movk	x16, #:abs_g3:__llvm_gcov_ctr.95
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x8, xzr
	stur	x8, [x29, #-8]
	b	.LBB96_9
.LBB96_9:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end95:
	.size	strpbrk, .Lfunc_end95-strpbrk
	.cfi_endproc
                                        // -- End function
	.globl	strrchr                         // -- Begin function strrchr
	.p2align	2
	.type	strrchr,@function
strrchr:                                // @strrchr
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.96
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.96
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.96
	movk	x16, #:abs_g3:__llvm_gcov_ctr.96
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	movz	x16, #:abs_g0_nc:.L__profc_strrchr
	movk	x16, #:abs_g1_nc:.L__profc_strrchr
	movk	x16, #:abs_g2_nc:.L__profc_strrchr
	movk	x16, #:abs_g3:.L__profc_strrchr
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x8, xzr
	str	x8, [sp, #8]
	b	.LBB97_2
.LBB97_1:                               //   in Loop: Header=BB97_2 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.96+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.96+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.96+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.96+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_strrchr+8
	movk	x16, #:abs_g1_nc:.L__profc_strrchr+8
	movk	x16, #:abs_g2_nc:.L__profc_strrchr+8
	movk	x16, #:abs_g3:.L__profc_strrchr+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB97_2
.LBB97_2:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	ldur	w16, [x29, #-12]
	subs	w8, w8, w16
	b.ne	.LBB97_4
	b	.LBB97_3
.LBB97_3:                               //   in Loop: Header=BB97_2 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.96+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.96+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.96+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.96+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_strrchr+16
	movk	x16, #:abs_g1_nc:.L__profc_strrchr+16
	movk	x16, #:abs_g2_nc:.L__profc_strrchr+16
	movk	x16, #:abs_g3:.L__profc_strrchr+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	b	.LBB97_4
.LBB97_4:                               //   in Loop: Header=BB97_2 Depth=1
	b	.LBB97_5
.LBB97_5:                               //   in Loop: Header=BB97_2 Depth=1
	ldur	x8, [x29, #-8]
	add	x16, x8, #1
	stur	x16, [x29, #-8]
	ldrb	w8, [x8]
	cbnz	w8, .LBB97_1
	b	.LBB97_6
.LBB97_6:
	ldr	x0, [sp, #8]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end96:
	.size	strrchr, .Lfunc_end96-strrchr
	.cfi_endproc
                                        // -- End function
	.globl	strstr                          // -- Begin function strstr
	.p2align	2
	.type	strstr,@function
strstr:                                 // @strstr
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc_strstr
	movk	x16, #:abs_g1_nc:.L__profc_strstr
	movk	x16, #:abs_g2_nc:.L__profc_strstr
	movk	x16, #:abs_g3:.L__profc_strstr
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	bl	strlen
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB98_2
	b	.LBB98_1
.LBB98_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.97
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.97
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.97
	movk	x16, #:abs_g3:__llvm_gcov_ctr.97
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_strstr+8
	movk	x16, #:abs_g1_nc:.L__profc_strstr+8
	movk	x16, #:abs_g2_nc:.L__profc_strstr+8
	movk	x16, #:abs_g3:.L__profc_strstr+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB98_9
.LBB98_2:
	b	.LBB98_3
.LBB98_3:                               // =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #24]
	ldrb	w1, [x8]
	bl	strchr
	str	x0, [sp, #16]
	cbz	x0, .LBB98_8
	b	.LBB98_4
.LBB98_4:                               //   in Loop: Header=BB98_3 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_strstr+16
	movk	x16, #:abs_g1_nc:.L__profc_strstr+16
	movk	x16, #:abs_g2_nc:.L__profc_strstr+16
	movk	x16, #:abs_g3:.L__profc_strstr+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #8]
	bl	strncmp
	cbnz	w0, .LBB98_6
	b	.LBB98_5
.LBB98_5:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.97+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.97+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.97+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.97+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_strstr+24
	movk	x16, #:abs_g1_nc:.L__profc_strstr+24
	movk	x16, #:abs_g2_nc:.L__profc_strstr+24
	movk	x16, #:abs_g3:.L__profc_strstr+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB98_9
.LBB98_6:                               //   in Loop: Header=BB98_3 Depth=1
	b	.LBB98_7
.LBB98_7:                               //   in Loop: Header=BB98_3 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.97+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.97+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.97+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.97+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB98_3
.LBB98_8:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.97+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.97+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.97+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.97+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x8, xzr
	stur	x8, [x29, #-8]
	b	.LBB98_9
.LBB98_9:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end97:
	.size	strstr, .Lfunc_end97-strstr
	.cfi_endproc
                                        // -- End function
	.globl	copysign                        // -- Begin function copysign
	.p2align	2
	.type	copysign,@function
copysign:                               // @copysign
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	d0, [sp, #16]
	str	d1, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_copysign
	movk	x16, #:abs_g1_nc:.L__profc_copysign
	movk	x16, #:abs_g2_nc:.L__profc_copysign
	movk	x16, #:abs_g3:.L__profc_copysign
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #16]
	fcmp	d0, #0.0
	b.pl	.LBB99_3
	b	.LBB99_1
.LBB99_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.98
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.98
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.98
	movk	x16, #:abs_g3:__llvm_gcov_ctr.98
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_copysign+24
	movk	x16, #:abs_g1_nc:.L__profc_copysign+24
	movk	x16, #:abs_g2_nc:.L__profc_copysign+24
	movk	x16, #:abs_g3:.L__profc_copysign+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #8]
	fcmp	d0, #0.0
	b.le	.LBB99_3
	b	.LBB99_2
.LBB99_2:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.98+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.98+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.98+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.98+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_copysign+32
	movk	x16, #:abs_g1_nc:.L__profc_copysign+32
	movk	x16, #:abs_g2_nc:.L__profc_copysign+32
	movk	x16, #:abs_g3:.L__profc_copysign+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB99_6
.LBB99_3:
	movz	x16, #:abs_g0_nc:.L__profc_copysign+16
	movk	x16, #:abs_g1_nc:.L__profc_copysign+16
	movk	x16, #:abs_g2_nc:.L__profc_copysign+16
	movk	x16, #:abs_g3:.L__profc_copysign+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #16]
	fcmp	d0, #0.0
	b.le	.LBB99_7
	b	.LBB99_4
.LBB99_4:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.98+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.98+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.98+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.98+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_copysign+40
	movk	x16, #:abs_g1_nc:.L__profc_copysign+40
	movk	x16, #:abs_g2_nc:.L__profc_copysign+40
	movk	x16, #:abs_g3:.L__profc_copysign+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #8]
	fcmp	d0, #0.0
	b.pl	.LBB99_7
	b	.LBB99_5
.LBB99_5:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.98+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.98+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.98+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.98+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_copysign+48
	movk	x16, #:abs_g1_nc:.L__profc_copysign+48
	movk	x16, #:abs_g2_nc:.L__profc_copysign+48
	movk	x16, #:abs_g3:.L__profc_copysign+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB99_6
.LBB99_6:
	movz	x16, #:abs_g0_nc:.L__profc_copysign+8
	movk	x16, #:abs_g1_nc:.L__profc_copysign+8
	movk	x16, #:abs_g2_nc:.L__profc_copysign+8
	movk	x16, #:abs_g3:.L__profc_copysign+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #16]
	fneg	d0, d0
	stur	d0, [x29, #-8]
	b	.LBB99_8
.LBB99_7:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.98+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.98+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.98+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.98+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #16]
	stur	d0, [x29, #-8]
	b	.LBB99_8
.LBB99_8:
	ldur	d0, [x29, #-8]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end98:
	.size	copysign, .Lfunc_end98-copysign
	.cfi_endproc
                                        // -- End function
	.globl	memmem                          // -- Begin function memmem
	.p2align	2
	.type	memmem,@function
memmem:                                 // @memmem
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc_memmem
	movk	x16, #:abs_g1_nc:.L__profc_memmem
	movk	x16, #:abs_g2_nc:.L__profc_memmem
	movk	x16, #:abs_g3:.L__profc_memmem
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	ldur	x16, [x29, #-24]
	add	x8, x8, x16
	ldr	x16, [sp, #24]
	subs	x8, x8, x16
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB100_2
	b	.LBB100_1
.LBB100_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.99
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.99
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.99
	movk	x16, #:abs_g3:__llvm_gcov_ctr.99
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_memmem+8
	movk	x16, #:abs_g1_nc:.L__profc_memmem+8
	movk	x16, #:abs_g2_nc:.L__profc_memmem+8
	movk	x16, #:abs_g3:.L__profc_memmem+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB100_13
.LBB100_2:
	ldur	x8, [x29, #-24]
	ldr	x16, [sp, #24]
	subs	x8, x8, x16
	b.hs	.LBB100_4
	b	.LBB100_3
.LBB100_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.99+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.99+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.99+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.99+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_memmem+16
	movk	x16, #:abs_g1_nc:.L__profc_memmem+16
	movk	x16, #:abs_g2_nc:.L__profc_memmem+16
	movk	x16, #:abs_g3:.L__profc_memmem+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x8, xzr
	stur	x8, [x29, #-8]
	b	.LBB100_13
.LBB100_4:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	b	.LBB100_5
.LBB100_5:                              // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldr	x16, [sp, #8]
	subs	x8, x8, x16
	b.hi	.LBB100_12
	b	.LBB100_6
.LBB100_6:                              //   in Loop: Header=BB100_5 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_memmem+24
	movk	x16, #:abs_g1_nc:.L__profc_memmem+24
	movk	x16, #:abs_g2_nc:.L__profc_memmem+24
	movk	x16, #:abs_g3:.L__profc_memmem+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	ldr	x16, [sp, #32]
	ldrb	w16, [x16]
	subs	w8, w8, w16
	b.ne	.LBB100_10
	b	.LBB100_7
.LBB100_7:                              //   in Loop: Header=BB100_5 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.99+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.99+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.99+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.99+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_memmem+40
	movk	x16, #:abs_g1_nc:.L__profc_memmem+40
	movk	x16, #:abs_g2_nc:.L__profc_memmem+40
	movk	x16, #:abs_g3:.L__profc_memmem+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	add	x0, x8, #1
	ldr	x8, [sp, #32]
	add	x1, x8, #1
	ldr	x8, [sp, #24]
	subs	x2, x8, #1
	bl	memcmp
	cbnz	w0, .LBB100_10
	b	.LBB100_8
.LBB100_8:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.99+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.99+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.99+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.99+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_memmem+48
	movk	x16, #:abs_g1_nc:.L__profc_memmem+48
	movk	x16, #:abs_g2_nc:.L__profc_memmem+48
	movk	x16, #:abs_g3:.L__profc_memmem+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB100_9
.LBB100_9:
	movz	x16, #:abs_g0_nc:.L__profc_memmem+32
	movk	x16, #:abs_g1_nc:.L__profc_memmem+32
	movk	x16, #:abs_g2_nc:.L__profc_memmem+32
	movk	x16, #:abs_g3:.L__profc_memmem+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB100_13
.LBB100_10:                             //   in Loop: Header=BB100_5 Depth=1
	b	.LBB100_11
.LBB100_11:                             //   in Loop: Header=BB100_5 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.99+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.99+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.99+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.99+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB100_5
.LBB100_12:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.99+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.99+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.99+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.99+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x8, xzr
	stur	x8, [x29, #-8]
	b	.LBB100_13
.LBB100_13:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end99:
	.size	memmem, .Lfunc_end99-memmem
	.cfi_endproc
                                        // -- End function
	.globl	mempcpy                         // -- Begin function mempcpy
	.p2align	2
	.type	mempcpy,@function
mempcpy:                                // @mempcpy
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.100
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.100
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.100
	movk	x16, #:abs_g3:__llvm_gcov_ctr.100
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc_mempcpy
	movk	x16, #:abs_g1_nc:.L__profc_mempcpy
	movk	x16, #:abs_g2_nc:.L__profc_mempcpy
	movk	x16, #:abs_g3:.L__profc_mempcpy
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        // 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	memcpy
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x16, [sp, #8]
	add	x0, x8, x16
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end100:
	.size	mempcpy, .Lfunc_end100-mempcpy
	.cfi_endproc
                                        // -- End function
	.globl	frexp                           // -- Begin function frexp
	.p2align	2
	.type	frexp,@function
frexp:                                  // @frexp
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	d0, [x29, #-8]
	str	x0, [sp, #16]
	movz	x16, #:abs_g0_nc:.L__profc_frexp
	movk	x16, #:abs_g1_nc:.L__profc_frexp
	movk	x16, #:abs_g2_nc:.L__profc_frexp
	movk	x16, #:abs_g3:.L__profc_frexp
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	str	w8, [sp, #8]
	str	w8, [sp, #12]
	ldur	d0, [x29, #-8]
	fcmp	d0, #0.0
	b.pl	.LBB102_2
	b	.LBB102_1
.LBB102_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.101
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.101
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.101
	movk	x16, #:abs_g3:__llvm_gcov_ctr.101
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_frexp+8
	movk	x16, #:abs_g1_nc:.L__profc_frexp+8
	movk	x16, #:abs_g2_nc:.L__profc_frexp+8
	movk	x16, #:abs_g3:.L__profc_frexp+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	d0, [x29, #-8]
	fneg	d0, d0
	stur	d0, [x29, #-8]
	mov	w8, #1                          // =0x1
	str	w8, [sp, #12]
	b	.LBB102_2
.LBB102_2:
	ldur	d0, [x29, #-8]
	fmov	d1, #1.00000000
	fcmp	d0, d1
	b.lt	.LBB102_7
	b	.LBB102_3
.LBB102_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.101+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.101+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.101+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.101+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_frexp+16
	movk	x16, #:abs_g1_nc:.L__profc_frexp+16
	movk	x16, #:abs_g2_nc:.L__profc_frexp+16
	movk	x16, #:abs_g3:.L__profc_frexp+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB102_4
.LBB102_4:                              // =>This Inner Loop Header: Depth=1
	ldur	d0, [x29, #-8]
	fmov	d1, #1.00000000
	fcmp	d0, d1
	b.lt	.LBB102_6
	b	.LBB102_5
.LBB102_5:                              //   in Loop: Header=BB102_4 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.101+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.101+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.101+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.101+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_frexp+24
	movk	x16, #:abs_g1_nc:.L__profc_frexp+24
	movk	x16, #:abs_g2_nc:.L__profc_frexp+24
	movk	x16, #:abs_g3:.L__profc_frexp+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	ldur	d0, [x29, #-8]
	fmov	d1, #0.50000000
	fmul	d0, d0, d1
	stur	d0, [x29, #-8]
	b	.LBB102_4
.LBB102_6:
	b	.LBB102_15
.LBB102_7:
	ldur	d0, [x29, #-8]
	fmov	d1, #0.50000000
	fcmp	d0, d1
	b.pl	.LBB102_14
	b	.LBB102_8
.LBB102_8:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.101+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.101+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.101+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.101+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_frexp+40
	movk	x16, #:abs_g1_nc:.L__profc_frexp+40
	movk	x16, #:abs_g2_nc:.L__profc_frexp+40
	movk	x16, #:abs_g3:.L__profc_frexp+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	d0, [x29, #-8]
	fcmp	d0, #0.0
	b.eq	.LBB102_14
	b	.LBB102_9
.LBB102_9:
	movz	x16, #:abs_g0_nc:.L__profc_frexp+48
	movk	x16, #:abs_g1_nc:.L__profc_frexp+48
	movk	x16, #:abs_g2_nc:.L__profc_frexp+48
	movk	x16, #:abs_g3:.L__profc_frexp+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB102_10
.LBB102_10:
	movz	x16, #:abs_g0_nc:.L__profc_frexp+32
	movk	x16, #:abs_g1_nc:.L__profc_frexp+32
	movk	x16, #:abs_g2_nc:.L__profc_frexp+32
	movk	x16, #:abs_g3:.L__profc_frexp+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB102_11
.LBB102_11:                             // =>This Inner Loop Header: Depth=1
	ldur	d0, [x29, #-8]
	fmov	d1, #0.50000000
	fcmp	d0, d1
	b.pl	.LBB102_13
	b	.LBB102_12
.LBB102_12:                             //   in Loop: Header=BB102_11 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.101+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.101+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.101+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.101+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_frexp+56
	movk	x16, #:abs_g1_nc:.L__profc_frexp+56
	movk	x16, #:abs_g2_nc:.L__profc_frexp+56
	movk	x16, #:abs_g3:.L__profc_frexp+56
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #8]
	subs	w8, w8, #1
	str	w8, [sp, #8]
	ldur	d0, [x29, #-8]
	fadd	d0, d0, d0
	stur	d0, [x29, #-8]
	b	.LBB102_11
.LBB102_13:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.101+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.101+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.101+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.101+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB102_14
.LBB102_14:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.101+48
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.101+48
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.101+48
	movk	x16, #:abs_g3:__llvm_gcov_ctr.101+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB102_15
.LBB102_15:
	ldr	w8, [sp, #8]
	ldr	x16, [sp, #16]
	str	w8, [x16]
	ldr	w8, [sp, #12]
	cbz	w8, .LBB102_17
	b	.LBB102_16
.LBB102_16:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.101+56
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.101+56
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.101+56
	movk	x16, #:abs_g3:__llvm_gcov_ctr.101+56
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_frexp+64
	movk	x16, #:abs_g1_nc:.L__profc_frexp+64
	movk	x16, #:abs_g2_nc:.L__profc_frexp+64
	movk	x16, #:abs_g3:.L__profc_frexp+64
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	d0, [x29, #-8]
	fneg	d0, d0
	stur	d0, [x29, #-8]
	b	.LBB102_17
.LBB102_17:
	ldur	d0, [x29, #-8]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end101:
	.size	frexp, .Lfunc_end101-frexp
	.cfi_endproc
                                        // -- End function
	.globl	__muldi3                        // -- Begin function __muldi3
	.p2align	2
	.type	__muldi3,@function
__muldi3:                               // @__muldi3
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.102
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.102
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.102
	movk	x16, #:abs_g3:__llvm_gcov_ctr.102
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	movz	x16, #:abs_g0_nc:.L__profc___muldi3
	movk	x16, #:abs_g1_nc:.L__profc___muldi3
	movk	x16, #:abs_g2_nc:.L__profc___muldi3
	movk	x16, #:abs_g3:.L__profc___muldi3
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x8, xzr
	str	x8, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]
	b	.LBB103_1
.LBB103_1:                              // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	cbz	x8, .LBB103_5
	b	.LBB103_2
.LBB103_2:                              //   in Loop: Header=BB103_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___muldi3+8
	movk	x16, #:abs_g1_nc:.L__profc___muldi3+8
	movk	x16, #:abs_g2_nc:.L__profc___muldi3+8
	movk	x16, #:abs_g3:.L__profc___muldi3+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldrb	w8, [sp]
	tbz	w8, #0, .LBB103_4
	b	.LBB103_3
.LBB103_3:                              //   in Loop: Header=BB103_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.102+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.102+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.102+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.102+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___muldi3+16
	movk	x16, #:abs_g1_nc:.L__profc___muldi3+16
	movk	x16, #:abs_g2_nc:.L__profc___muldi3+16
	movk	x16, #:abs_g3:.L__profc___muldi3+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp, #16]
	ldr	x8, [sp, #8]
	add	x8, x8, x16
	str	x8, [sp, #8]
	b	.LBB103_4
.LBB103_4:                              //   in Loop: Header=BB103_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.102+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.102+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.102+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.102+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	lsl	x8, x8, #1
	str	x8, [sp, #16]
	ldr	x8, [sp]
	lsr	x8, x8, #1
	str	x8, [sp]
	b	.LBB103_1
.LBB103_5:
	ldr	x0, [sp, #8]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end102:
	.size	__muldi3, .Lfunc_end102-__muldi3
	.cfi_endproc
                                        // -- End function
	.globl	udivmodsi4                      // -- Begin function udivmodsi4
	.p2align	2
	.type	udivmodsi4,@function
udivmodsi4:                             // @udivmodsi4
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc_udivmodsi4
	movk	x16, #:abs_g1_nc:.L__profc_udivmodsi4
	movk	x16, #:abs_g2_nc:.L__profc_udivmodsi4
	movk	x16, #:abs_g3:.L__profc_udivmodsi4
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #1                          // =0x1
	str	w8, [sp, #20]
	mov	w8, wzr
	str	w8, [sp, #16]
	b	.LBB104_1
.LBB104_1:                              // =>This Inner Loop Header: Depth=1
	ldur	w16, [x29, #-12]
	ldur	w17, [x29, #-8]
	mov	w8, wzr
	subs	w16, w16, w17
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.hs	.LBB104_6
	b	.LBB104_2
.LBB104_2:                              //   in Loop: Header=BB104_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.103
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.103
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.103
	movk	x16, #:abs_g3:__llvm_gcov_ctr.103
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_udivmodsi4+32
	movk	x16, #:abs_g1_nc:.L__profc_udivmodsi4+32
	movk	x16, #:abs_g2_nc:.L__profc_udivmodsi4+32
	movk	x16, #:abs_g3:.L__profc_udivmodsi4+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #20]
	mov	w16, wzr
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	cbz	w8, .LBB104_6
	b	.LBB104_3
.LBB104_3:                              //   in Loop: Header=BB104_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.103+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.103+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.103+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.103+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_udivmodsi4+40
	movk	x16, #:abs_g1_nc:.L__profc_udivmodsi4+40
	movk	x16, #:abs_g2_nc:.L__profc_udivmodsi4+40
	movk	x16, #:abs_g3:.L__profc_udivmodsi4+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB104_4
.LBB104_4:                              //   in Loop: Header=BB104_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_udivmodsi4+16
	movk	x16, #:abs_g1_nc:.L__profc_udivmodsi4+16
	movk	x16, #:abs_g2_nc:.L__profc_udivmodsi4+16
	movk	x16, #:abs_g3:.L__profc_udivmodsi4+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-12]
                                        // kill: def $x8 killed $w8
	ands	x16, x8, #0x80000000
	cset	w16, eq
	str	w16, [sp, #8]                   // 4-byte Folded Spill
                                        // kill: def $w8 killed $w8 killed $x8
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	tbnz	w8, #31, .LBB104_6
	b	.LBB104_5
.LBB104_5:                              //   in Loop: Header=BB104_1 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.103+16
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.103+16
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.103+16
	movk	x17, #:abs_g3:__llvm_gcov_ctr.103+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc_udivmodsi4+24
	movk	x17, #:abs_g1_nc:.L__profc_udivmodsi4+24
	movk	x17, #:abs_g2_nc:.L__profc_udivmodsi4+24
	movk	x17, #:abs_g3:.L__profc_udivmodsi4+24
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB104_6
.LBB104_6:                              //   in Loop: Header=BB104_1 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB104_8
	b	.LBB104_7
.LBB104_7:                              //   in Loop: Header=BB104_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.103+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.103+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.103+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.103+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_udivmodsi4+8
	movk	x16, #:abs_g1_nc:.L__profc_udivmodsi4+8
	movk	x16, #:abs_g2_nc:.L__profc_udivmodsi4+8
	movk	x16, #:abs_g3:.L__profc_udivmodsi4+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-12]
	lsl	w8, w8, #1
	stur	w8, [x29, #-12]
	ldr	w8, [sp, #20]
	lsl	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB104_1
.LBB104_8:
	b	.LBB104_9
.LBB104_9:                              // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	cbz	w8, .LBB104_13
	b	.LBB104_10
.LBB104_10:                             //   in Loop: Header=BB104_9 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc_udivmodsi4+48
	movk	x16, #:abs_g1_nc:.L__profc_udivmodsi4+48
	movk	x16, #:abs_g2_nc:.L__profc_udivmodsi4+48
	movk	x16, #:abs_g3:.L__profc_udivmodsi4+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-8]
	ldur	w16, [x29, #-12]
	subs	w8, w8, w16
	b.lo	.LBB104_12
	b	.LBB104_11
.LBB104_11:                             //   in Loop: Header=BB104_9 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.103+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.103+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.103+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.103+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_udivmodsi4+56
	movk	x16, #:abs_g1_nc:.L__profc_udivmodsi4+56
	movk	x16, #:abs_g2_nc:.L__profc_udivmodsi4+56
	movk	x16, #:abs_g3:.L__profc_udivmodsi4+56
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w16, [x29, #-12]
	ldur	w8, [x29, #-8]
	subs	w8, w8, w16
	stur	w8, [x29, #-8]
	ldr	w16, [sp, #20]
	ldr	w8, [sp, #16]
	orr	w8, w8, w16
	str	w8, [sp, #16]
	b	.LBB104_12
.LBB104_12:                             //   in Loop: Header=BB104_9 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.103+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.103+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.103+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.103+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #20]
	lsr	w8, w8, #1
	str	w8, [sp, #20]
	ldur	w8, [x29, #-12]
	lsr	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB104_9
.LBB104_13:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB104_15
	b	.LBB104_14
.LBB104_14:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.103+48
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.103+48
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.103+48
	movk	x16, #:abs_g3:__llvm_gcov_ctr.103+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc_udivmodsi4+64
	movk	x16, #:abs_g1_nc:.L__profc_udivmodsi4+64
	movk	x16, #:abs_g2_nc:.L__profc_udivmodsi4+64
	movk	x16, #:abs_g3:.L__profc_udivmodsi4+64
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-4]
	b	.LBB104_16
.LBB104_15:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.103+56
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.103+56
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.103+56
	movk	x16, #:abs_g3:__llvm_gcov_ctr.103+56
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #16]
	stur	w8, [x29, #-4]
	b	.LBB104_16
.LBB104_16:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end103:
	.size	udivmodsi4, .Lfunc_end103-udivmodsi4
	.cfi_endproc
                                        // -- End function
	.globl	__clrsbqi2                      // -- Begin function __clrsbqi2
	.p2align	2
	.type	__clrsbqi2,@function
__clrsbqi2:                             // @__clrsbqi2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sturb	w0, [x29, #-5]
	movz	x16, #:abs_g0_nc:.L__profc___clrsbqi2
	movk	x16, #:abs_g1_nc:.L__profc___clrsbqi2
	movk	x16, #:abs_g2_nc:.L__profc___clrsbqi2
	movk	x16, #:abs_g3:.L__profc___clrsbqi2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurb	w8, [x29, #-5]
	tbz	w8, #31, .LBB105_2
	b	.LBB105_1
.LBB105_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.104
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.104
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.104
	movk	x16, #:abs_g3:__llvm_gcov_ctr.104
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___clrsbqi2+8
	movk	x16, #:abs_g1_nc:.L__profc___clrsbqi2+8
	movk	x16, #:abs_g2_nc:.L__profc___clrsbqi2+8
	movk	x16, #:abs_g3:.L__profc___clrsbqi2+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurb	w8, [x29, #-5]
	mvn	w8, w8
	sturb	w8, [x29, #-5]
	b	.LBB105_2
.LBB105_2:
	ldurb	w8, [x29, #-5]
	cbnz	w8, .LBB105_4
	b	.LBB105_3
.LBB105_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.104+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.104+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.104+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.104+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___clrsbqi2+16
	movk	x16, #:abs_g1_nc:.L__profc___clrsbqi2+16
	movk	x16, #:abs_g2_nc:.L__profc___clrsbqi2+16
	movk	x16, #:abs_g3:.L__profc___clrsbqi2+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #7                          // =0x7
	stur	w8, [x29, #-4]
	b	.LBB105_5
.LBB105_4:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.104+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.104+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.104+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.104+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurb	w8, [x29, #-5]
	lsl	w8, w8, #8
	clz	w8, w8
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	subs	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB105_5
.LBB105_5:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end104:
	.size	__clrsbqi2, .Lfunc_end104-__clrsbqi2
	.cfi_endproc
                                        // -- End function
	.globl	__clrsbdi2                      // -- Begin function __clrsbdi2
	.p2align	2
	.type	__clrsbdi2,@function
__clrsbdi2:                             // @__clrsbdi2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	movz	x16, #:abs_g0_nc:.L__profc___clrsbdi2
	movk	x16, #:abs_g1_nc:.L__profc___clrsbdi2
	movk	x16, #:abs_g2_nc:.L__profc___clrsbdi2
	movk	x16, #:abs_g3:.L__profc___clrsbdi2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	tbz	x8, #63, .LBB106_2
	b	.LBB106_1
.LBB106_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.105
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.105
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.105
	movk	x16, #:abs_g3:__llvm_gcov_ctr.105
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___clrsbdi2+8
	movk	x16, #:abs_g1_nc:.L__profc___clrsbdi2+8
	movk	x16, #:abs_g2_nc:.L__profc___clrsbdi2+8
	movk	x16, #:abs_g3:.L__profc___clrsbdi2+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	mvn	x8, x8
	str	x8, [sp, #16]
	b	.LBB106_2
.LBB106_2:
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB106_4
	b	.LBB106_3
.LBB106_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.105+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.105+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.105+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.105+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___clrsbdi2+16
	movk	x16, #:abs_g1_nc:.L__profc___clrsbdi2+16
	movk	x16, #:abs_g2_nc:.L__profc___clrsbdi2+16
	movk	x16, #:abs_g3:.L__profc___clrsbdi2+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #63                         // =0x3f
	stur	w8, [x29, #-4]
	b	.LBB106_5
.LBB106_4:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.105+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.105+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.105+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.105+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	clz	x8, x8
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB106_5
.LBB106_5:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end105:
	.size	__clrsbdi2, .Lfunc_end105-__clrsbdi2
	.cfi_endproc
                                        // -- End function
	.globl	__mulsi3                        // -- Begin function __mulsi3
	.p2align	2
	.type	__mulsi3,@function
__mulsi3:                               // @__mulsi3
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.106
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.106
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.106
	movk	x16, #:abs_g3:__llvm_gcov_ctr.106
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc___mulsi3
	movk	x16, #:abs_g1_nc:.L__profc___mulsi3
	movk	x16, #:abs_g2_nc:.L__profc___mulsi3
	movk	x16, #:abs_g3:.L__profc___mulsi3
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	str	w8, [sp, #4]
	b	.LBB107_1
.LBB107_1:                              // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	cbz	w8, .LBB107_5
	b	.LBB107_2
.LBB107_2:                              //   in Loop: Header=BB107_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___mulsi3+8
	movk	x16, #:abs_g1_nc:.L__profc___mulsi3+8
	movk	x16, #:abs_g2_nc:.L__profc___mulsi3+8
	movk	x16, #:abs_g3:.L__profc___mulsi3+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurb	w8, [x29, #-4]
	tbz	w8, #0, .LBB107_4
	b	.LBB107_3
.LBB107_3:                              //   in Loop: Header=BB107_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.106+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.106+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.106+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.106+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___mulsi3+16
	movk	x16, #:abs_g1_nc:.L__profc___mulsi3+16
	movk	x16, #:abs_g2_nc:.L__profc___mulsi3+16
	movk	x16, #:abs_g3:.L__profc___mulsi3+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w16, [sp, #8]
	ldr	w8, [sp, #4]
	add	w8, w8, w16
	str	w8, [sp, #4]
	b	.LBB107_4
.LBB107_4:                              //   in Loop: Header=BB107_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.106+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.106+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.106+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.106+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	lsr	w8, w8, #1
	stur	w8, [x29, #-4]
	ldr	w8, [sp, #8]
	lsl	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB107_1
.LBB107_5:
	ldr	w0, [sp, #4]
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end106:
	.size	__mulsi3, .Lfunc_end106-__mulsi3
	.cfi_endproc
                                        // -- End function
	.globl	__cmovd                         // -- Begin function __cmovd
	.p2align	2
	.type	__cmovd,@function
__cmovd:                                // @__cmovd
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	movz	x16, #:abs_g0_nc:.L__profc___cmovd
	movk	x16, #:abs_g1_nc:.L__profc___cmovd
	movk	x16, #:abs_g2_nc:.L__profc___cmovd
	movk	x16, #:abs_g3:.L__profc___cmovd
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-20]
	lsr	w8, w8, #3
	str	w8, [sp, #20]
	ldur	w8, [x29, #-20]
	and	w8, w8, #0xfffffff8
	str	w8, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	ldur	x8, [x29, #-16]
	str	x8, [sp]
	ldr	x8, [sp, #8]
	ldr	x16, [sp]
	subs	x8, x8, x16
	b.lo	.LBB108_3
	b	.LBB108_1
.LBB108_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.107
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.107
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.107
	movk	x16, #:abs_g3:__llvm_gcov_ctr.107
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___cmovd+16
	movk	x16, #:abs_g1_nc:.L__profc___cmovd+16
	movk	x16, #:abs_g2_nc:.L__profc___cmovd+16
	movk	x16, #:abs_g3:.L__profc___cmovd+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	ldr	x16, [sp]
	ldur	w17, [x29, #-20]
                                        // kill: def $x17 killed $w17
	add	x16, x16, x17
	subs	x8, x8, x16
	b.hi	.LBB108_3
	b	.LBB108_2
.LBB108_2:
	movz	x16, #:abs_g0_nc:.L__profc___cmovd+24
	movk	x16, #:abs_g1_nc:.L__profc___cmovd+24
	movk	x16, #:abs_g2_nc:.L__profc___cmovd+24
	movk	x16, #:abs_g3:.L__profc___cmovd+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB108_11
.LBB108_3:
	movz	x16, #:abs_g0_nc:.L__profc___cmovd+8
	movk	x16, #:abs_g1_nc:.L__profc___cmovd+8
	movk	x16, #:abs_g2_nc:.L__profc___cmovd+8
	movk	x16, #:abs_g3:.L__profc___cmovd+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	str	w8, [sp, #24]
	b	.LBB108_4
.LBB108_4:                              // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	ldr	w16, [sp, #20]
	subs	w8, w8, w16
	b.hs	.LBB108_7
	b	.LBB108_5
.LBB108_5:                              //   in Loop: Header=BB108_4 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___cmovd+32
	movk	x16, #:abs_g1_nc:.L__profc___cmovd+32
	movk	x16, #:abs_g2_nc:.L__profc___cmovd+32
	movk	x16, #:abs_g3:.L__profc___cmovd+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	ldr	w16, [sp, #24]
	mov	w17, w16
	ldr	x8, [x8, x17, lsl #3]
	ldur	x16, [x29, #-8]
	str	x8, [x16, x17, lsl #3]
	b	.LBB108_6
.LBB108_6:                              //   in Loop: Header=BB108_4 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.107+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.107+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.107+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.107+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB108_4
.LBB108_7:
	b	.LBB108_8
.LBB108_8:                              // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldr	w16, [sp, #16]
	subs	w8, w8, w16
	b.ls	.LBB108_10
	b	.LBB108_9
.LBB108_9:                              //   in Loop: Header=BB108_8 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.107+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.107+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.107+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.107+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___cmovd+40
	movk	x16, #:abs_g1_nc:.L__profc___cmovd+40
	movk	x16, #:abs_g2_nc:.L__profc___cmovd+40
	movk	x16, #:abs_g3:.L__profc___cmovd+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp]
	ldr	w16, [sp, #16]
	mov	w17, w16
	ldrb	w8, [x8, x17]
	ldr	x16, [sp, #8]
	strb	w8, [x16, x17]
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB108_8
.LBB108_10:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.107+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.107+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.107+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.107+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB108_15
.LBB108_11:
	b	.LBB108_12
.LBB108_12:                             // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	subs	w16, w8, #1
	stur	w16, [x29, #-20]
	cbz	w8, .LBB108_14
	b	.LBB108_13
.LBB108_13:                             //   in Loop: Header=BB108_12 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.107+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.107+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.107+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.107+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___cmovd+48
	movk	x16, #:abs_g1_nc:.L__profc___cmovd+48
	movk	x16, #:abs_g2_nc:.L__profc___cmovd+48
	movk	x16, #:abs_g3:.L__profc___cmovd+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp]
	ldur	w16, [x29, #-20]
	mov	w17, w16
	ldrb	w8, [x8, x17]
	ldr	x16, [sp, #8]
	strb	w8, [x16, x17]
	b	.LBB108_12
.LBB108_14:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.107+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.107+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.107+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.107+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB108_15
.LBB108_15:
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end107:
	.size	__cmovd, .Lfunc_end107-__cmovd
	.cfi_endproc
                                        // -- End function
	.globl	__cmovh                         // -- Begin function __cmovh
	.p2align	2
	.type	__cmovh,@function
__cmovh:                                // @__cmovh
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	movz	x16, #:abs_g0_nc:.L__profc___cmovh
	movk	x16, #:abs_g1_nc:.L__profc___cmovh
	movk	x16, #:abs_g2_nc:.L__profc___cmovh
	movk	x16, #:abs_g3:.L__profc___cmovh
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-20]
	lsr	w8, w8, #1
	str	w8, [sp, #20]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	ldur	x8, [x29, #-16]
	str	x8, [sp]
	ldr	x8, [sp, #8]
	ldr	x16, [sp]
	subs	x8, x8, x16
	b.lo	.LBB109_3
	b	.LBB109_1
.LBB109_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.108
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.108
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.108
	movk	x16, #:abs_g3:__llvm_gcov_ctr.108
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___cmovh+16
	movk	x16, #:abs_g1_nc:.L__profc___cmovh+16
	movk	x16, #:abs_g2_nc:.L__profc___cmovh+16
	movk	x16, #:abs_g3:.L__profc___cmovh+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	ldr	x16, [sp]
	ldur	w17, [x29, #-20]
                                        // kill: def $x17 killed $w17
	add	x16, x16, x17
	subs	x8, x8, x16
	b.hi	.LBB109_3
	b	.LBB109_2
.LBB109_2:
	movz	x16, #:abs_g0_nc:.L__profc___cmovh+24
	movk	x16, #:abs_g1_nc:.L__profc___cmovh+24
	movk	x16, #:abs_g2_nc:.L__profc___cmovh+24
	movk	x16, #:abs_g3:.L__profc___cmovh+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB109_10
.LBB109_3:
	movz	x16, #:abs_g0_nc:.L__profc___cmovh+8
	movk	x16, #:abs_g1_nc:.L__profc___cmovh+8
	movk	x16, #:abs_g2_nc:.L__profc___cmovh+8
	movk	x16, #:abs_g3:.L__profc___cmovh+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	str	w8, [sp, #24]
	b	.LBB109_4
.LBB109_4:                              // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	ldr	w16, [sp, #20]
	subs	w8, w8, w16
	b.hs	.LBB109_7
	b	.LBB109_5
.LBB109_5:                              //   in Loop: Header=BB109_4 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___cmovh+32
	movk	x16, #:abs_g1_nc:.L__profc___cmovh+32
	movk	x16, #:abs_g2_nc:.L__profc___cmovh+32
	movk	x16, #:abs_g3:.L__profc___cmovh+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	ldr	w16, [sp, #24]
	mov	w17, w16
	ldrh	w8, [x8, x17, lsl #1]
	ldur	x16, [x29, #-8]
	strh	w8, [x16, x17, lsl #1]
	b	.LBB109_6
.LBB109_6:                              //   in Loop: Header=BB109_4 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.108+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.108+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.108+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.108+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB109_4
.LBB109_7:
	ldurb	w8, [x29, #-20]
	tbz	w8, #0, .LBB109_9
	b	.LBB109_8
.LBB109_8:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.108+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.108+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.108+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.108+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___cmovh+40
	movk	x16, #:abs_g1_nc:.L__profc___cmovh+40
	movk	x16, #:abs_g2_nc:.L__profc___cmovh+40
	movk	x16, #:abs_g3:.L__profc___cmovh+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp]
	ldur	w16, [x29, #-20]
	subs	w16, w16, #1
	mov	w16, w16
	mov	w17, w16
	ldrb	w8, [x8, x17]
	ldr	x16, [sp, #8]
	strb	w8, [x16, x17]
	b	.LBB109_9
.LBB109_9:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.108+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.108+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.108+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.108+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB109_14
.LBB109_10:
	b	.LBB109_11
.LBB109_11:                             // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	subs	w16, w8, #1
	stur	w16, [x29, #-20]
	cbz	w8, .LBB109_13
	b	.LBB109_12
.LBB109_12:                             //   in Loop: Header=BB109_11 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.108+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.108+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.108+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.108+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___cmovh+48
	movk	x16, #:abs_g1_nc:.L__profc___cmovh+48
	movk	x16, #:abs_g2_nc:.L__profc___cmovh+48
	movk	x16, #:abs_g3:.L__profc___cmovh+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp]
	ldur	w16, [x29, #-20]
	mov	w17, w16
	ldrb	w8, [x8, x17]
	ldr	x16, [sp, #8]
	strb	w8, [x16, x17]
	b	.LBB109_11
.LBB109_13:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.108+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.108+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.108+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.108+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB109_14
.LBB109_14:
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end108:
	.size	__cmovh, .Lfunc_end108-__cmovh
	.cfi_endproc
                                        // -- End function
	.globl	__cmovw                         // -- Begin function __cmovw
	.p2align	2
	.type	__cmovw,@function
__cmovw:                                // @__cmovw
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	movz	x16, #:abs_g0_nc:.L__profc___cmovw
	movk	x16, #:abs_g1_nc:.L__profc___cmovw
	movk	x16, #:abs_g2_nc:.L__profc___cmovw
	movk	x16, #:abs_g3:.L__profc___cmovw
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-20]
	lsr	w8, w8, #2
	str	w8, [sp, #20]
	ldur	w8, [x29, #-20]
	and	w8, w8, #0xfffffffc
	str	w8, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	ldur	x8, [x29, #-16]
	str	x8, [sp]
	ldr	x8, [sp, #8]
	ldr	x16, [sp]
	subs	x8, x8, x16
	b.lo	.LBB110_3
	b	.LBB110_1
.LBB110_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.109
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.109
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.109
	movk	x16, #:abs_g3:__llvm_gcov_ctr.109
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___cmovw+16
	movk	x16, #:abs_g1_nc:.L__profc___cmovw+16
	movk	x16, #:abs_g2_nc:.L__profc___cmovw+16
	movk	x16, #:abs_g3:.L__profc___cmovw+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	ldr	x16, [sp]
	ldur	w17, [x29, #-20]
                                        // kill: def $x17 killed $w17
	add	x16, x16, x17
	subs	x8, x8, x16
	b.hi	.LBB110_3
	b	.LBB110_2
.LBB110_2:
	movz	x16, #:abs_g0_nc:.L__profc___cmovw+24
	movk	x16, #:abs_g1_nc:.L__profc___cmovw+24
	movk	x16, #:abs_g2_nc:.L__profc___cmovw+24
	movk	x16, #:abs_g3:.L__profc___cmovw+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB110_11
.LBB110_3:
	movz	x16, #:abs_g0_nc:.L__profc___cmovw+8
	movk	x16, #:abs_g1_nc:.L__profc___cmovw+8
	movk	x16, #:abs_g2_nc:.L__profc___cmovw+8
	movk	x16, #:abs_g3:.L__profc___cmovw+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	str	w8, [sp, #24]
	b	.LBB110_4
.LBB110_4:                              // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	ldr	w16, [sp, #20]
	subs	w8, w8, w16
	b.hs	.LBB110_7
	b	.LBB110_5
.LBB110_5:                              //   in Loop: Header=BB110_4 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___cmovw+32
	movk	x16, #:abs_g1_nc:.L__profc___cmovw+32
	movk	x16, #:abs_g2_nc:.L__profc___cmovw+32
	movk	x16, #:abs_g3:.L__profc___cmovw+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	ldr	w16, [sp, #24]
	mov	w17, w16
	ldr	w8, [x8, x17, lsl #2]
	ldur	x16, [x29, #-8]
	str	w8, [x16, x17, lsl #2]
	b	.LBB110_6
.LBB110_6:                              //   in Loop: Header=BB110_4 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.109+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.109+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.109+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.109+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB110_4
.LBB110_7:
	b	.LBB110_8
.LBB110_8:                              // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldr	w16, [sp, #16]
	subs	w8, w8, w16
	b.ls	.LBB110_10
	b	.LBB110_9
.LBB110_9:                              //   in Loop: Header=BB110_8 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.109+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.109+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.109+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.109+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___cmovw+40
	movk	x16, #:abs_g1_nc:.L__profc___cmovw+40
	movk	x16, #:abs_g2_nc:.L__profc___cmovw+40
	movk	x16, #:abs_g3:.L__profc___cmovw+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp]
	ldr	w16, [sp, #16]
	mov	w17, w16
	ldrb	w8, [x8, x17]
	ldr	x16, [sp, #8]
	strb	w8, [x16, x17]
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB110_8
.LBB110_10:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.109+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.109+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.109+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.109+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB110_15
.LBB110_11:
	b	.LBB110_12
.LBB110_12:                             // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	subs	w16, w8, #1
	stur	w16, [x29, #-20]
	cbz	w8, .LBB110_14
	b	.LBB110_13
.LBB110_13:                             //   in Loop: Header=BB110_12 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.109+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.109+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.109+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.109+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___cmovw+48
	movk	x16, #:abs_g1_nc:.L__profc___cmovw+48
	movk	x16, #:abs_g2_nc:.L__profc___cmovw+48
	movk	x16, #:abs_g3:.L__profc___cmovw+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp]
	ldur	w16, [x29, #-20]
	mov	w17, w16
	ldrb	w8, [x8, x17]
	ldr	x16, [sp, #8]
	strb	w8, [x16, x17]
	b	.LBB110_12
.LBB110_14:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.109+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.109+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.109+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.109+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB110_15
.LBB110_15:
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end109:
	.size	__cmovw, .Lfunc_end109-__cmovw
	.cfi_endproc
                                        // -- End function
	.globl	__modi                          // -- Begin function __modi
	.p2align	2
	.type	__modi,@function
__modi:                                 // @__modi
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.110
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.110
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.110
	movk	x16, #:abs_g3:__llvm_gcov_ctr.110
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc___modi
	movk	x16, #:abs_g1_nc:.L__profc___modi
	movk	x16, #:abs_g2_nc:.L__profc___modi
	movk	x16, #:abs_g3:.L__profc___modi
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	ldr	w17, [sp, #8]
	sdiv	w16, w8, w17
	mul	w16, w16, w17
	subs	w0, w8, w16
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end110:
	.size	__modi, .Lfunc_end110-__modi
	.cfi_endproc
                                        // -- End function
	.globl	__uitod                         // -- Begin function __uitod
	.p2align	2
	.type	__uitod,@function
__uitod:                                // @__uitod
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.111
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.111
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.111
	movk	x16, #:abs_g3:__llvm_gcov_ctr.111
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc___uitod
	movk	x16, #:abs_g1_nc:.L__profc___uitod
	movk	x16, #:abs_g2_nc:.L__profc___uitod
	movk	x16, #:abs_g3:.L__profc___uitod
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	ucvtf	d0, w8
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end111:
	.size	__uitod, .Lfunc_end111-__uitod
	.cfi_endproc
                                        // -- End function
	.globl	__uitof                         // -- Begin function __uitof
	.p2align	2
	.type	__uitof,@function
__uitof:                                // @__uitof
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.112
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.112
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.112
	movk	x16, #:abs_g3:__llvm_gcov_ctr.112
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc___uitof
	movk	x16, #:abs_g1_nc:.L__profc___uitof
	movk	x16, #:abs_g2_nc:.L__profc___uitof
	movk	x16, #:abs_g3:.L__profc___uitof
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	ucvtf	s0, w8
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end112:
	.size	__uitof, .Lfunc_end112-__uitof
	.cfi_endproc
                                        // -- End function
	.globl	__ulltod                        // -- Begin function __ulltod
	.p2align	2
	.type	__ulltod,@function
__ulltod:                               // @__ulltod
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.113
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.113
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.113
	movk	x16, #:abs_g3:__llvm_gcov_ctr.113
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc___ulltod
	movk	x16, #:abs_g1_nc:.L__profc___ulltod
	movk	x16, #:abs_g2_nc:.L__profc___ulltod
	movk	x16, #:abs_g3:.L__profc___ulltod
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	ucvtf	d0, x8
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end113:
	.size	__ulltod, .Lfunc_end113-__ulltod
	.cfi_endproc
                                        // -- End function
	.globl	__ulltof                        // -- Begin function __ulltof
	.p2align	2
	.type	__ulltof,@function
__ulltof:                               // @__ulltof
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.114
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.114
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.114
	movk	x16, #:abs_g3:__llvm_gcov_ctr.114
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc___ulltof
	movk	x16, #:abs_g1_nc:.L__profc___ulltof
	movk	x16, #:abs_g2_nc:.L__profc___ulltof
	movk	x16, #:abs_g3:.L__profc___ulltof
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	ucvtf	s0, x8
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end114:
	.size	__ulltof, .Lfunc_end114-__ulltof
	.cfi_endproc
                                        // -- End function
	.globl	__umodi                         // -- Begin function __umodi
	.p2align	2
	.type	__umodi,@function
__umodi:                                // @__umodi
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.115
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.115
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.115
	movk	x16, #:abs_g3:__llvm_gcov_ctr.115
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc___umodi
	movk	x16, #:abs_g1_nc:.L__profc___umodi
	movk	x16, #:abs_g2_nc:.L__profc___umodi
	movk	x16, #:abs_g3:.L__profc___umodi
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	ldr	w17, [sp, #8]
	udiv	w16, w8, w17
	mul	w16, w16, w17
	subs	w0, w8, w16
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end115:
	.size	__umodi, .Lfunc_end115-__umodi
	.cfi_endproc
                                        // -- End function
	.globl	__clzhi2                        // -- Begin function __clzhi2
	.p2align	2
	.type	__clzhi2,@function
__clzhi2:                               // @__clzhi2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.116
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.116
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.116
	movk	x16, #:abs_g3:__llvm_gcov_ctr.116
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	sturh	w0, [x29, #-2]
	movz	x16, #:abs_g0_nc:.L__profc___clzhi2
	movk	x16, #:abs_g1_nc:.L__profc___clzhi2
	movk	x16, #:abs_g2_nc:.L__profc___clzhi2
	movk	x16, #:abs_g3:.L__profc___clzhi2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	str	w8, [sp, #8]
	b	.LBB117_1
.LBB117_1:                              // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #15
	b.gt	.LBB117_6
	b	.LBB117_2
.LBB117_2:                              //   in Loop: Header=BB117_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___clzhi2+8
	movk	x16, #:abs_g1_nc:.L__profc___clzhi2+8
	movk	x16, #:abs_g2_nc:.L__profc___clzhi2+8
	movk	x16, #:abs_g3:.L__profc___clzhi2+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurh	w8, [x29, #-2]
	ldr	w17, [sp, #8]
	mov	w16, #15                        // =0xf
	subs	w16, w16, w17
	lsr	w8, w8, w16
	tbz	w8, #0, .LBB117_4
	b	.LBB117_3
.LBB117_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.116+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.116+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.116+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.116+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___clzhi2+16
	movk	x16, #:abs_g1_nc:.L__profc___clzhi2+16
	movk	x16, #:abs_g2_nc:.L__profc___clzhi2+16
	movk	x16, #:abs_g3:.L__profc___clzhi2+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB117_6
.LBB117_4:                              //   in Loop: Header=BB117_1 Depth=1
	b	.LBB117_5
.LBB117_5:                              //   in Loop: Header=BB117_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.116+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.116+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.116+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.116+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB117_1
.LBB117_6:
	ldr	w0, [sp, #8]
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end116:
	.size	__clzhi2, .Lfunc_end116-__clzhi2
	.cfi_endproc
                                        // -- End function
	.globl	__ctzhi2                        // -- Begin function __ctzhi2
	.p2align	2
	.type	__ctzhi2,@function
__ctzhi2:                               // @__ctzhi2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.117
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.117
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.117
	movk	x16, #:abs_g3:__llvm_gcov_ctr.117
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	sturh	w0, [x29, #-2]
	movz	x16, #:abs_g0_nc:.L__profc___ctzhi2
	movk	x16, #:abs_g1_nc:.L__profc___ctzhi2
	movk	x16, #:abs_g2_nc:.L__profc___ctzhi2
	movk	x16, #:abs_g3:.L__profc___ctzhi2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	str	w8, [sp, #8]
	b	.LBB118_1
.LBB118_1:                              // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #15
	b.gt	.LBB118_6
	b	.LBB118_2
.LBB118_2:                              //   in Loop: Header=BB118_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___ctzhi2+8
	movk	x16, #:abs_g1_nc:.L__profc___ctzhi2+8
	movk	x16, #:abs_g2_nc:.L__profc___ctzhi2+8
	movk	x16, #:abs_g3:.L__profc___ctzhi2+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurh	w8, [x29, #-2]
	ldr	w16, [sp, #8]
	mov	w0, w16
	mov	w16, w0
	lsr	w8, w8, w16
	tbz	w8, #0, .LBB118_4
	b	.LBB118_3
.LBB118_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.117+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.117+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.117+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.117+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___ctzhi2+16
	movk	x16, #:abs_g1_nc:.L__profc___ctzhi2+16
	movk	x16, #:abs_g2_nc:.L__profc___ctzhi2+16
	movk	x16, #:abs_g3:.L__profc___ctzhi2+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB118_6
.LBB118_4:                              //   in Loop: Header=BB118_1 Depth=1
	b	.LBB118_5
.LBB118_5:                              //   in Loop: Header=BB118_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.117+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.117+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.117+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.117+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB118_1
.LBB118_6:
	ldr	w0, [sp, #8]
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end117:
	.size	__ctzhi2, .Lfunc_end117-__ctzhi2
	.cfi_endproc
                                        // -- End function
	.globl	__fixunssfsi                    // -- Begin function __fixunssfsi
	.p2align	2
	.type	__fixunssfsi,@function
__fixunssfsi:                           // @__fixunssfsi
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	s0, [sp, #4]
	movz	x16, #:abs_g0_nc:.L__profc___fixunssfsi
	movk	x16, #:abs_g1_nc:.L__profc___fixunssfsi
	movk	x16, #:abs_g2_nc:.L__profc___fixunssfsi
	movk	x16, #:abs_g3:.L__profc___fixunssfsi
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	s0, [sp, #4]
	mov	w8, #1191182336                 // =0x47000000
	fmov	s1, w8
	fcmp	s0, s1
	b.lt	.LBB119_2
	b	.LBB119_1
.LBB119_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.118
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.118
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.118
	movk	x16, #:abs_g3:__llvm_gcov_ctr.118
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___fixunssfsi+8
	movk	x16, #:abs_g1_nc:.L__profc___fixunssfsi+8
	movk	x16, #:abs_g2_nc:.L__profc___fixunssfsi+8
	movk	x16, #:abs_g3:.L__profc___fixunssfsi+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	s0, [sp, #4]
	mov	w8, #-956301312                 // =0xc7000000
	fmov	s1, w8
	fadd	s0, s0, s1
	fcvtzs	x8, s0
	add	x8, x8, #8, lsl #12             // =32768
	str	x8, [sp, #8]
	b	.LBB119_3
.LBB119_2:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.118+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.118+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.118+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.118+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	s0, [sp, #4]
	fcvtzs	x8, s0
	str	x8, [sp, #8]
	b	.LBB119_3
.LBB119_3:
	ldr	x0, [sp, #8]
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end118:
	.size	__fixunssfsi, .Lfunc_end118-__fixunssfsi
	.cfi_endproc
                                        // -- End function
	.globl	__parityhi2                     // -- Begin function __parityhi2
	.p2align	2
	.type	__parityhi2,@function
__parityhi2:                            // @__parityhi2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.119
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.119
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.119
	movk	x16, #:abs_g3:__llvm_gcov_ctr.119
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	sturh	w0, [x29, #-2]
	movz	x16, #:abs_g0_nc:.L__profc___parityhi2
	movk	x16, #:abs_g1_nc:.L__profc___parityhi2
	movk	x16, #:abs_g2_nc:.L__profc___parityhi2
	movk	x16, #:abs_g3:.L__profc___parityhi2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	str	w8, [sp, #4]
	str	w8, [sp, #8]
	b	.LBB120_1
.LBB120_1:                              // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #15
	b.gt	.LBB120_6
	b	.LBB120_2
.LBB120_2:                              //   in Loop: Header=BB120_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___parityhi2+8
	movk	x16, #:abs_g1_nc:.L__profc___parityhi2+8
	movk	x16, #:abs_g2_nc:.L__profc___parityhi2+8
	movk	x16, #:abs_g3:.L__profc___parityhi2+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurh	w8, [x29, #-2]
	ldr	w16, [sp, #8]
	mov	w0, w16
	mov	w16, w0
	lsr	w8, w8, w16
	tbz	w8, #0, .LBB120_4
	b	.LBB120_3
.LBB120_3:                              //   in Loop: Header=BB120_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.119+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.119+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.119+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.119+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___parityhi2+16
	movk	x16, #:abs_g1_nc:.L__profc___parityhi2+16
	movk	x16, #:abs_g2_nc:.L__profc___parityhi2+16
	movk	x16, #:abs_g3:.L__profc___parityhi2+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB120_4
.LBB120_4:                              //   in Loop: Header=BB120_1 Depth=1
	b	.LBB120_5
.LBB120_5:                              //   in Loop: Header=BB120_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.119+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.119+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.119+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.119+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB120_1
.LBB120_6:
	ldr	w8, [sp, #4]
	and	w0, w8, #0x1
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end119:
	.size	__parityhi2, .Lfunc_end119-__parityhi2
	.cfi_endproc
                                        // -- End function
	.globl	__popcounthi2                   // -- Begin function __popcounthi2
	.p2align	2
	.type	__popcounthi2,@function
__popcounthi2:                          // @__popcounthi2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.120
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.120
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.120
	movk	x16, #:abs_g3:__llvm_gcov_ctr.120
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	sturh	w0, [x29, #-2]
	movz	x16, #:abs_g0_nc:.L__profc___popcounthi2
	movk	x16, #:abs_g1_nc:.L__profc___popcounthi2
	movk	x16, #:abs_g2_nc:.L__profc___popcounthi2
	movk	x16, #:abs_g3:.L__profc___popcounthi2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	str	w8, [sp, #4]
	str	w8, [sp, #8]
	b	.LBB121_1
.LBB121_1:                              // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #15
	b.gt	.LBB121_6
	b	.LBB121_2
.LBB121_2:                              //   in Loop: Header=BB121_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___popcounthi2+8
	movk	x16, #:abs_g1_nc:.L__profc___popcounthi2+8
	movk	x16, #:abs_g2_nc:.L__profc___popcounthi2+8
	movk	x16, #:abs_g3:.L__profc___popcounthi2+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurh	w8, [x29, #-2]
	ldr	w16, [sp, #8]
	mov	w0, w16
	mov	w16, w0
	lsr	w8, w8, w16
	tbz	w8, #0, .LBB121_4
	b	.LBB121_3
.LBB121_3:                              //   in Loop: Header=BB121_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.120+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.120+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.120+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.120+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___popcounthi2+16
	movk	x16, #:abs_g1_nc:.L__profc___popcounthi2+16
	movk	x16, #:abs_g2_nc:.L__profc___popcounthi2+16
	movk	x16, #:abs_g3:.L__profc___popcounthi2+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB121_4
.LBB121_4:                              //   in Loop: Header=BB121_1 Depth=1
	b	.LBB121_5
.LBB121_5:                              //   in Loop: Header=BB121_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.120+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.120+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.120+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.120+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB121_1
.LBB121_6:
	ldr	w0, [sp, #4]
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end120:
	.size	__popcounthi2, .Lfunc_end120-__popcounthi2
	.cfi_endproc
                                        // -- End function
	.globl	__mulsi3_iq2000                 // -- Begin function __mulsi3_iq2000
	.p2align	2
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        // @__mulsi3_iq2000
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.121
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.121
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.121
	movk	x16, #:abs_g3:__llvm_gcov_ctr.121
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc___mulsi3_iq2000
	movk	x16, #:abs_g1_nc:.L__profc___mulsi3_iq2000
	movk	x16, #:abs_g2_nc:.L__profc___mulsi3_iq2000
	movk	x16, #:abs_g3:.L__profc___mulsi3_iq2000
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	str	w8, [sp, #4]
	b	.LBB122_1
.LBB122_1:                              // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	cbz	w8, .LBB122_5
	b	.LBB122_2
.LBB122_2:                              //   in Loop: Header=BB122_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___mulsi3_iq2000+8
	movk	x16, #:abs_g1_nc:.L__profc___mulsi3_iq2000+8
	movk	x16, #:abs_g2_nc:.L__profc___mulsi3_iq2000+8
	movk	x16, #:abs_g3:.L__profc___mulsi3_iq2000+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurb	w8, [x29, #-4]
	tbz	w8, #0, .LBB122_4
	b	.LBB122_3
.LBB122_3:                              //   in Loop: Header=BB122_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.121+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.121+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.121+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.121+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___mulsi3_iq2000+16
	movk	x16, #:abs_g1_nc:.L__profc___mulsi3_iq2000+16
	movk	x16, #:abs_g2_nc:.L__profc___mulsi3_iq2000+16
	movk	x16, #:abs_g3:.L__profc___mulsi3_iq2000+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w16, [sp, #8]
	ldr	w8, [sp, #4]
	add	w8, w8, w16
	str	w8, [sp, #4]
	b	.LBB122_4
.LBB122_4:                              //   in Loop: Header=BB122_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.121+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.121+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.121+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.121+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	lsr	w8, w8, #1
	stur	w8, [x29, #-4]
	ldr	w8, [sp, #8]
	lsl	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB122_1
.LBB122_5:
	ldr	w0, [sp, #4]
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end121:
	.size	__mulsi3_iq2000, .Lfunc_end121-__mulsi3_iq2000
	.cfi_endproc
                                        // -- End function
	.globl	__mulsi3_lm32                   // -- Begin function __mulsi3_lm32
	.p2align	2
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          // @__mulsi3_lm32
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #8]
	str	w1, [sp, #4]
	movz	x16, #:abs_g0_nc:.L__profc___mulsi3_lm32
	movk	x16, #:abs_g1_nc:.L__profc___mulsi3_lm32
	movk	x16, #:abs_g2_nc:.L__profc___mulsi3_lm32
	movk	x16, #:abs_g3:.L__profc___mulsi3_lm32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	str	w8, [sp]
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB123_2
	b	.LBB123_1
.LBB123_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.122+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.122+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.122+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.122+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___mulsi3_lm32+8
	movk	x16, #:abs_g1_nc:.L__profc___mulsi3_lm32+8
	movk	x16, #:abs_g2_nc:.L__profc___mulsi3_lm32+8
	movk	x16, #:abs_g3:.L__profc___mulsi3_lm32+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB123_8
.LBB123_2:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.122
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.122
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.122
	movk	x16, #:abs_g3:__llvm_gcov_ctr.122
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB123_3
.LBB123_3:                              // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	cbz	w8, .LBB123_7
	b	.LBB123_4
.LBB123_4:                              //   in Loop: Header=BB123_3 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___mulsi3_lm32+16
	movk	x16, #:abs_g1_nc:.L__profc___mulsi3_lm32+16
	movk	x16, #:abs_g2_nc:.L__profc___mulsi3_lm32+16
	movk	x16, #:abs_g3:.L__profc___mulsi3_lm32+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldrb	w8, [sp, #4]
	tbz	w8, #0, .LBB123_6
	b	.LBB123_5
.LBB123_5:                              //   in Loop: Header=BB123_3 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.122+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.122+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.122+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.122+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___mulsi3_lm32+24
	movk	x16, #:abs_g1_nc:.L__profc___mulsi3_lm32+24
	movk	x16, #:abs_g2_nc:.L__profc___mulsi3_lm32+24
	movk	x16, #:abs_g3:.L__profc___mulsi3_lm32+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w16, [sp, #8]
	ldr	w8, [sp]
	add	w8, w8, w16
	str	w8, [sp]
	b	.LBB123_6
.LBB123_6:                              //   in Loop: Header=BB123_3 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.122+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.122+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.122+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.122+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #8]
	lsl	w8, w8, #1
	str	w8, [sp, #8]
	ldr	w8, [sp, #4]
	lsr	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB123_3
.LBB123_7:
	ldr	w8, [sp]
	stur	w8, [x29, #-4]
	b	.LBB123_8
.LBB123_8:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end122:
	.size	__mulsi3_lm32, .Lfunc_end122-__mulsi3_lm32
	.cfi_endproc
                                        // -- End function
	.globl	__udivmodsi4                    // -- Begin function __udivmodsi4
	.p2align	2
	.type	__udivmodsi4,@function
__udivmodsi4:                           // @__udivmodsi4
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	movz	x16, #:abs_g0_nc:.L__profc___udivmodsi4
	movk	x16, #:abs_g1_nc:.L__profc___udivmodsi4
	movk	x16, #:abs_g2_nc:.L__profc___udivmodsi4
	movk	x16, #:abs_g3:.L__profc___udivmodsi4
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #1                          // =0x1
	str	w8, [sp, #12]
	mov	w8, wzr
	str	w8, [sp, #8]
	b	.LBB124_1
.LBB124_1:                              // =>This Inner Loop Header: Depth=1
	ldur	w16, [x29, #-12]
	ldur	w17, [x29, #-8]
	mov	w8, wzr
	subs	w16, w16, w17
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.hs	.LBB124_6
	b	.LBB124_2
.LBB124_2:                              //   in Loop: Header=BB124_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.123
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.123
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.123
	movk	x16, #:abs_g3:__llvm_gcov_ctr.123
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___udivmodsi4+32
	movk	x16, #:abs_g1_nc:.L__profc___udivmodsi4+32
	movk	x16, #:abs_g2_nc:.L__profc___udivmodsi4+32
	movk	x16, #:abs_g3:.L__profc___udivmodsi4+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #12]
	mov	w16, wzr
	str	w16, [sp, #4]                   // 4-byte Folded Spill
	cbz	w8, .LBB124_6
	b	.LBB124_3
.LBB124_3:                              //   in Loop: Header=BB124_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.123+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.123+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.123+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.123+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___udivmodsi4+40
	movk	x16, #:abs_g1_nc:.L__profc___udivmodsi4+40
	movk	x16, #:abs_g2_nc:.L__profc___udivmodsi4+40
	movk	x16, #:abs_g3:.L__profc___udivmodsi4+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB124_4
.LBB124_4:                              //   in Loop: Header=BB124_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___udivmodsi4+16
	movk	x16, #:abs_g1_nc:.L__profc___udivmodsi4+16
	movk	x16, #:abs_g2_nc:.L__profc___udivmodsi4+16
	movk	x16, #:abs_g3:.L__profc___udivmodsi4+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-12]
                                        // kill: def $x8 killed $w8
	ands	x16, x8, #0x80000000
	cset	w16, eq
	str	w16, [sp]                       // 4-byte Folded Spill
                                        // kill: def $w8 killed $w8 killed $x8
	str	w16, [sp, #4]                   // 4-byte Folded Spill
	tbnz	w8, #31, .LBB124_6
	b	.LBB124_5
.LBB124_5:                              //   in Loop: Header=BB124_1 Depth=1
	ldr	w8, [sp]                        // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.123+16
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.123+16
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.123+16
	movk	x17, #:abs_g3:__llvm_gcov_ctr.123+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc___udivmodsi4+24
	movk	x17, #:abs_g1_nc:.L__profc___udivmodsi4+24
	movk	x17, #:abs_g2_nc:.L__profc___udivmodsi4+24
	movk	x17, #:abs_g3:.L__profc___udivmodsi4+24
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB124_6
.LBB124_6:                              //   in Loop: Header=BB124_1 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB124_8
	b	.LBB124_7
.LBB124_7:                              //   in Loop: Header=BB124_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.123+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.123+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.123+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.123+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___udivmodsi4+8
	movk	x16, #:abs_g1_nc:.L__profc___udivmodsi4+8
	movk	x16, #:abs_g2_nc:.L__profc___udivmodsi4+8
	movk	x16, #:abs_g3:.L__profc___udivmodsi4+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-12]
	lsl	w8, w8, #1
	stur	w8, [x29, #-12]
	ldr	w8, [sp, #12]
	lsl	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB124_1
.LBB124_8:
	b	.LBB124_9
.LBB124_9:                              // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	cbz	w8, .LBB124_13
	b	.LBB124_10
.LBB124_10:                             //   in Loop: Header=BB124_9 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___udivmodsi4+48
	movk	x16, #:abs_g1_nc:.L__profc___udivmodsi4+48
	movk	x16, #:abs_g2_nc:.L__profc___udivmodsi4+48
	movk	x16, #:abs_g3:.L__profc___udivmodsi4+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-8]
	ldur	w16, [x29, #-12]
	subs	w8, w8, w16
	b.lo	.LBB124_12
	b	.LBB124_11
.LBB124_11:                             //   in Loop: Header=BB124_9 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.123+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.123+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.123+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.123+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___udivmodsi4+56
	movk	x16, #:abs_g1_nc:.L__profc___udivmodsi4+56
	movk	x16, #:abs_g2_nc:.L__profc___udivmodsi4+56
	movk	x16, #:abs_g3:.L__profc___udivmodsi4+56
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w16, [x29, #-12]
	ldur	w8, [x29, #-8]
	subs	w8, w8, w16
	stur	w8, [x29, #-8]
	ldr	w16, [sp, #12]
	ldr	w8, [sp, #8]
	orr	w8, w8, w16
	str	w8, [sp, #8]
	b	.LBB124_12
.LBB124_12:                             //   in Loop: Header=BB124_9 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.123+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.123+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.123+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.123+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #12]
	lsr	w8, w8, #1
	str	w8, [sp, #12]
	ldur	w8, [x29, #-12]
	lsr	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB124_9
.LBB124_13:
	ldr	w8, [sp, #16]
	cbz	w8, .LBB124_15
	b	.LBB124_14
.LBB124_14:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.123+48
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.123+48
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.123+48
	movk	x16, #:abs_g3:__llvm_gcov_ctr.123+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___udivmodsi4+64
	movk	x16, #:abs_g1_nc:.L__profc___udivmodsi4+64
	movk	x16, #:abs_g2_nc:.L__profc___udivmodsi4+64
	movk	x16, #:abs_g3:.L__profc___udivmodsi4+64
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-4]
	b	.LBB124_16
.LBB124_15:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.123+56
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.123+56
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.123+56
	movk	x16, #:abs_g3:__llvm_gcov_ctr.123+56
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-4]
	b	.LBB124_16
.LBB124_16:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end123:
	.size	__udivmodsi4, .Lfunc_end123-__udivmodsi4
	.cfi_endproc
                                        // -- End function
	.globl	__mspabi_cmpf                   // -- Begin function __mspabi_cmpf
	.p2align	2
	.type	__mspabi_cmpf,@function
__mspabi_cmpf:                          // @__mspabi_cmpf
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	s0, [sp, #8]
	str	s1, [sp, #4]
	movz	x16, #:abs_g0_nc:.L__profc___mspabi_cmpf
	movk	x16, #:abs_g1_nc:.L__profc___mspabi_cmpf
	movk	x16, #:abs_g2_nc:.L__profc___mspabi_cmpf
	movk	x16, #:abs_g3:.L__profc___mspabi_cmpf
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	s0, [sp, #8]
	ldr	s1, [sp, #4]
	fcmp	s0, s1
	b.pl	.LBB125_2
	b	.LBB125_1
.LBB125_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.124
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.124
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.124
	movk	x16, #:abs_g3:__llvm_gcov_ctr.124
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___mspabi_cmpf+8
	movk	x16, #:abs_g1_nc:.L__profc___mspabi_cmpf+8
	movk	x16, #:abs_g2_nc:.L__profc___mspabi_cmpf+8
	movk	x16, #:abs_g3:.L__profc___mspabi_cmpf+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #-1                         // =0xffffffff
	stur	w8, [x29, #-4]
	b	.LBB125_5
.LBB125_2:
	ldr	s0, [sp, #8]
	ldr	s1, [sp, #4]
	fcmp	s0, s1
	b.le	.LBB125_4
	b	.LBB125_3
.LBB125_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.124+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.124+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.124+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.124+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___mspabi_cmpf+16
	movk	x16, #:abs_g1_nc:.L__profc___mspabi_cmpf+16
	movk	x16, #:abs_g2_nc:.L__profc___mspabi_cmpf+16
	movk	x16, #:abs_g3:.L__profc___mspabi_cmpf+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB125_5
.LBB125_4:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.124+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.124+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.124+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.124+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB125_5
.LBB125_5:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end124:
	.size	__mspabi_cmpf, .Lfunc_end124-__mspabi_cmpf
	.cfi_endproc
                                        // -- End function
	.globl	__mspabi_cmpd                   // -- Begin function __mspabi_cmpd
	.p2align	2
	.type	__mspabi_cmpd,@function
__mspabi_cmpd:                          // @__mspabi_cmpd
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	d0, [sp, #16]
	str	d1, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc___mspabi_cmpd
	movk	x16, #:abs_g1_nc:.L__profc___mspabi_cmpd
	movk	x16, #:abs_g2_nc:.L__profc___mspabi_cmpd
	movk	x16, #:abs_g3:.L__profc___mspabi_cmpd
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #16]
	ldr	d1, [sp, #8]
	fcmp	d0, d1
	b.pl	.LBB126_2
	b	.LBB126_1
.LBB126_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.125
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.125
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.125
	movk	x16, #:abs_g3:__llvm_gcov_ctr.125
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___mspabi_cmpd+8
	movk	x16, #:abs_g1_nc:.L__profc___mspabi_cmpd+8
	movk	x16, #:abs_g2_nc:.L__profc___mspabi_cmpd+8
	movk	x16, #:abs_g3:.L__profc___mspabi_cmpd+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #-1                         // =0xffffffff
	stur	w8, [x29, #-4]
	b	.LBB126_5
.LBB126_2:
	ldr	d0, [sp, #16]
	ldr	d1, [sp, #8]
	fcmp	d0, d1
	b.le	.LBB126_4
	b	.LBB126_3
.LBB126_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.125+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.125+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.125+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.125+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___mspabi_cmpd+16
	movk	x16, #:abs_g1_nc:.L__profc___mspabi_cmpd+16
	movk	x16, #:abs_g2_nc:.L__profc___mspabi_cmpd+16
	movk	x16, #:abs_g3:.L__profc___mspabi_cmpd+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB126_5
.LBB126_4:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.125+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.125+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.125+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.125+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB126_5
.LBB126_5:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end125:
	.size	__mspabi_cmpd, .Lfunc_end125-__mspabi_cmpd
	.cfi_endproc
                                        // -- End function
	.globl	__mspabi_mpysll                 // -- Begin function __mspabi_mpysll
	.p2align	2
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        // @__mspabi_mpysll
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.126
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.126
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.126
	movk	x16, #:abs_g3:__llvm_gcov_ctr.126
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	str	x1, [sp]
	movz	x16, #:abs_g0_nc:.L__profc___mspabi_mpysll
	movk	x16, #:abs_g1_nc:.L__profc___mspabi_mpysll
	movk	x16, #:abs_g2_nc:.L__profc___mspabi_mpysll
	movk	x16, #:abs_g3:.L__profc___mspabi_mpysll
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	ldr	x16, [sp]
	mul	x0, x8, x16
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end126:
	.size	__mspabi_mpysll, .Lfunc_end126-__mspabi_mpysll
	.cfi_endproc
                                        // -- End function
	.globl	__mspabi_mpyull                 // -- Begin function __mspabi_mpyull
	.p2align	2
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        // @__mspabi_mpyull
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.127
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.127
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.127
	movk	x16, #:abs_g3:__llvm_gcov_ctr.127
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	str	x1, [sp]
	movz	x16, #:abs_g0_nc:.L__profc___mspabi_mpyull
	movk	x16, #:abs_g1_nc:.L__profc___mspabi_mpyull
	movk	x16, #:abs_g2_nc:.L__profc___mspabi_mpyull
	movk	x16, #:abs_g3:.L__profc___mspabi_mpyull
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	ldr	x16, [sp]
	mul	x0, x8, x16
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end127:
	.size	__mspabi_mpyull, .Lfunc_end127-__mspabi_mpyull
	.cfi_endproc
                                        // -- End function
	.globl	__mulhi3                        // -- Begin function __mulhi3
	.p2align	2
	.type	__mulhi3,@function
__mulhi3:                               // @__mulhi3
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	movz	x16, #:abs_g0_nc:.L__profc___mulhi3
	movk	x16, #:abs_g1_nc:.L__profc___mulhi3
	movk	x16, #:abs_g2_nc:.L__profc___mulhi3
	movk	x16, #:abs_g3:.L__profc___mulhi3
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	str	w8, [sp, #16]
	str	w8, [sp, #12]
	ldur	w8, [x29, #-8]
	tbz	w8, #31, .LBB129_2
	b	.LBB129_1
.LBB129_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.128
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.128
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.128
	movk	x16, #:abs_g3:__llvm_gcov_ctr.128
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___mulhi3+8
	movk	x16, #:abs_g1_nc:.L__profc___mulhi3+8
	movk	x16, #:abs_g2_nc:.L__profc___mulhi3+8
	movk	x16, #:abs_g3:.L__profc___mulhi3+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w16, [x29, #-8]
	mov	w8, wzr
	subs	w8, w8, w16
	stur	w8, [x29, #-8]
	mov	w8, #1                          // =0x1
	str	w8, [sp, #16]
	b	.LBB129_2
.LBB129_2:
	mov	w8, wzr
	sturb	w8, [x29, #-9]
	b	.LBB129_3
.LBB129_3:                              // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-8]
	mov	w16, wzr
	str	w16, [sp, #8]                   // 4-byte Folded Spill
	cbz	w8, .LBB129_6
	b	.LBB129_4
.LBB129_4:                              //   in Loop: Header=BB129_3 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.128+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.128+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.128+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.128+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___mulhi3+24
	movk	x16, #:abs_g1_nc:.L__profc___mulhi3+24
	movk	x16, #:abs_g2_nc:.L__profc___mulhi3+24
	movk	x16, #:abs_g3:.L__profc___mulhi3+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurb	w16, [x29, #-9]
	subs	w8, w16, #32
	cset	w8, lo
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	subs	w16, w16, #31
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.hi	.LBB129_6
	b	.LBB129_5
.LBB129_5:                              //   in Loop: Header=BB129_3 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.128+16
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.128+16
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.128+16
	movk	x17, #:abs_g3:__llvm_gcov_ctr.128+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc___mulhi3+32
	movk	x17, #:abs_g1_nc:.L__profc___mulhi3+32
	movk	x17, #:abs_g2_nc:.L__profc___mulhi3+32
	movk	x17, #:abs_g3:.L__profc___mulhi3+32
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB129_6
.LBB129_6:                              //   in Loop: Header=BB129_3 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB129_11
	b	.LBB129_7
.LBB129_7:                              //   in Loop: Header=BB129_3 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___mulhi3+16
	movk	x16, #:abs_g1_nc:.L__profc___mulhi3+16
	movk	x16, #:abs_g2_nc:.L__profc___mulhi3+16
	movk	x16, #:abs_g3:.L__profc___mulhi3+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurb	w8, [x29, #-8]
	tbz	w8, #0, .LBB129_9
	b	.LBB129_8
.LBB129_8:                              //   in Loop: Header=BB129_3 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.128+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.128+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.128+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.128+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___mulhi3+40
	movk	x16, #:abs_g1_nc:.L__profc___mulhi3+40
	movk	x16, #:abs_g2_nc:.L__profc___mulhi3+40
	movk	x16, #:abs_g3:.L__profc___mulhi3+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w16, [x29, #-4]
	ldr	w8, [sp, #12]
	add	w8, w8, w16
	str	w8, [sp, #12]
	b	.LBB129_9
.LBB129_9:                              //   in Loop: Header=BB129_3 Depth=1
	ldur	w8, [x29, #-4]
	lsl	w8, w8, #1
	stur	w8, [x29, #-4]
	ldur	w8, [x29, #-8]
	asr	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB129_10
.LBB129_10:                             //   in Loop: Header=BB129_3 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.128+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.128+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.128+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.128+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurb	w8, [x29, #-9]
	add	w8, w8, #1
	sturb	w8, [x29, #-9]
	b	.LBB129_3
.LBB129_11:
	ldr	w8, [sp, #16]
	cbz	w8, .LBB129_13
	b	.LBB129_12
.LBB129_12:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.128+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.128+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.128+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.128+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___mulhi3+48
	movk	x16, #:abs_g1_nc:.L__profc___mulhi3+48
	movk	x16, #:abs_g2_nc:.L__profc___mulhi3+48
	movk	x16, #:abs_g3:.L__profc___mulhi3+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w16, [sp, #12]
	mov	w8, wzr
	subs	w0, w8, w16
	str	w0, [sp]                        // 4-byte Folded Spill
	b	.LBB129_14
.LBB129_13:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.128+48
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.128+48
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.128+48
	movk	x16, #:abs_g3:__llvm_gcov_ctr.128+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w0, [sp, #12]
	str	w0, [sp]                        // 4-byte Folded Spill
	b	.LBB129_14
.LBB129_14:
	ldr	w0, [sp]                        // 4-byte Folded Reload
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end128:
	.size	__mulhi3, .Lfunc_end128-__mulhi3
	.cfi_endproc
                                        // -- End function
	.globl	__divsi3                        // -- Begin function __divsi3
	.p2align	2
	.type	__divsi3,@function
__divsi3:                               // @__divsi3
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.129
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.129
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.129
	movk	x16, #:abs_g3:__llvm_gcov_ctr.129
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	movz	x16, #:abs_g0_nc:.L__profc___divsi3
	movk	x16, #:abs_g1_nc:.L__profc___divsi3
	movk	x16, #:abs_g2_nc:.L__profc___divsi3
	movk	x16, #:abs_g3:.L__profc___divsi3
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	str	w8, [sp, #12]
	ldur	x8, [x29, #-8]
	tbz	x8, #63, .LBB130_2
	b	.LBB130_1
.LBB130_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.129+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.129+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.129+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.129+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___divsi3+8
	movk	x16, #:abs_g1_nc:.L__profc___divsi3+8
	movk	x16, #:abs_g2_nc:.L__profc___divsi3+8
	movk	x16, #:abs_g3:.L__profc___divsi3+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x16, [x29, #-8]
	mov	x8, xzr
	subs	x8, x8, x16
	stur	x8, [x29, #-8]
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, eq
	str	w8, [sp, #12]
	b	.LBB130_2
.LBB130_2:
	ldr	x8, [sp, #16]
	tbz	x8, #63, .LBB130_4
	b	.LBB130_3
.LBB130_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.129+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.129+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.129+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.129+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___divsi3+16
	movk	x16, #:abs_g1_nc:.L__profc___divsi3+16
	movk	x16, #:abs_g2_nc:.L__profc___divsi3+16
	movk	x16, #:abs_g3:.L__profc___divsi3+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp, #16]
	mov	x8, xzr
	subs	x8, x8, x16
	str	x8, [sp, #16]
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, eq
	str	w8, [sp, #12]
	b	.LBB130_4
.LBB130_4:
	ldur	w0, [x29, #-8]
	ldr	w1, [sp, #16]
	mov	w2, wzr
	bl	__udivmodsi4
	mov	w8, w0
                                        // kill: def $x8 killed $w8
	str	x8, [sp]
	ldr	w8, [sp, #12]
	cbz	w8, .LBB130_6
	b	.LBB130_5
.LBB130_5:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.129+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.129+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.129+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.129+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___divsi3+24
	movk	x16, #:abs_g1_nc:.L__profc___divsi3+24
	movk	x16, #:abs_g2_nc:.L__profc___divsi3+24
	movk	x16, #:abs_g3:.L__profc___divsi3+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp]
	mov	x8, xzr
	subs	x8, x8, x16
	str	x8, [sp]
	b	.LBB130_6
.LBB130_6:
	ldr	x0, [sp]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end129:
	.size	__divsi3, .Lfunc_end129-__divsi3
	.cfi_endproc
                                        // -- End function
	.globl	__modsi3                        // -- Begin function __modsi3
	.p2align	2
	.type	__modsi3,@function
__modsi3:                               // @__modsi3
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.130
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.130
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.130
	movk	x16, #:abs_g3:__llvm_gcov_ctr.130
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	movz	x16, #:abs_g0_nc:.L__profc___modsi3
	movk	x16, #:abs_g1_nc:.L__profc___modsi3
	movk	x16, #:abs_g2_nc:.L__profc___modsi3
	movk	x16, #:abs_g3:.L__profc___modsi3
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	str	w8, [sp, #12]
	ldur	x8, [x29, #-8]
	tbz	x8, #63, .LBB131_2
	b	.LBB131_1
.LBB131_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.130+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.130+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.130+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.130+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___modsi3+8
	movk	x16, #:abs_g1_nc:.L__profc___modsi3+8
	movk	x16, #:abs_g2_nc:.L__profc___modsi3+8
	movk	x16, #:abs_g3:.L__profc___modsi3+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x16, [x29, #-8]
	mov	x8, xzr
	subs	x8, x8, x16
	stur	x8, [x29, #-8]
	mov	w8, #1                          // =0x1
	str	w8, [sp, #12]
	b	.LBB131_2
.LBB131_2:
	ldr	x8, [sp, #16]
	tbz	x8, #63, .LBB131_4
	b	.LBB131_3
.LBB131_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.130+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.130+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.130+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.130+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___modsi3+16
	movk	x16, #:abs_g1_nc:.L__profc___modsi3+16
	movk	x16, #:abs_g2_nc:.L__profc___modsi3+16
	movk	x16, #:abs_g3:.L__profc___modsi3+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp, #16]
	mov	x8, xzr
	subs	x8, x8, x16
	str	x8, [sp, #16]
	b	.LBB131_4
.LBB131_4:
	ldur	w0, [x29, #-8]
	ldr	w1, [sp, #16]
	mov	w2, #1                          // =0x1
	bl	__udivmodsi4
	mov	w8, w0
                                        // kill: def $x8 killed $w8
	str	x8, [sp]
	ldr	w8, [sp, #12]
	cbz	w8, .LBB131_6
	b	.LBB131_5
.LBB131_5:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.130+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.130+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.130+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.130+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___modsi3+24
	movk	x16, #:abs_g1_nc:.L__profc___modsi3+24
	movk	x16, #:abs_g2_nc:.L__profc___modsi3+24
	movk	x16, #:abs_g3:.L__profc___modsi3+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp]
	mov	x8, xzr
	subs	x8, x8, x16
	str	x8, [sp]
	b	.LBB131_6
.LBB131_6:
	ldr	x0, [sp]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end130:
	.size	__modsi3, .Lfunc_end130-__modsi3
	.cfi_endproc
                                        // -- End function
	.globl	__udivmodhi4                    // -- Begin function __udivmodhi4
	.p2align	2
	.type	__udivmodhi4,@function
__udivmodhi4:                           // @__udivmodhi4
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sturh	w0, [x29, #-4]
	sturh	w1, [x29, #-6]
	stur	w2, [x29, #-12]
	movz	x16, #:abs_g0_nc:.L__profc___udivmodhi4
	movk	x16, #:abs_g1_nc:.L__profc___udivmodhi4
	movk	x16, #:abs_g2_nc:.L__profc___udivmodhi4
	movk	x16, #:abs_g3:.L__profc___udivmodhi4
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #1                          // =0x1
	sturh	w8, [x29, #-14]
	mov	w8, wzr
	strh	w8, [sp, #16]
	b	.LBB132_1
.LBB132_1:                              // =>This Inner Loop Header: Depth=1
	ldurh	w16, [x29, #-6]
	ldurh	w17, [x29, #-4]
	mov	w8, wzr
	subs	w16, w16, w17
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.ge	.LBB132_6
	b	.LBB132_2
.LBB132_2:                              //   in Loop: Header=BB132_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.131
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.131
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.131
	movk	x16, #:abs_g3:__llvm_gcov_ctr.131
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___udivmodhi4+32
	movk	x16, #:abs_g1_nc:.L__profc___udivmodhi4+32
	movk	x16, #:abs_g2_nc:.L__profc___udivmodhi4+32
	movk	x16, #:abs_g3:.L__profc___udivmodhi4+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurh	w8, [x29, #-14]
	mov	w16, wzr
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	cbz	w8, .LBB132_6
	b	.LBB132_3
.LBB132_3:                              //   in Loop: Header=BB132_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.131+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.131+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.131+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.131+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___udivmodhi4+40
	movk	x16, #:abs_g1_nc:.L__profc___udivmodhi4+40
	movk	x16, #:abs_g2_nc:.L__profc___udivmodhi4+40
	movk	x16, #:abs_g3:.L__profc___udivmodhi4+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB132_4
.LBB132_4:                              //   in Loop: Header=BB132_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___udivmodhi4+16
	movk	x16, #:abs_g1_nc:.L__profc___udivmodhi4+16
	movk	x16, #:abs_g2_nc:.L__profc___udivmodhi4+16
	movk	x16, #:abs_g3:.L__profc___udivmodhi4+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurh	w8, [x29, #-6]
	ands	w16, w8, #0x8000
	cset	w16, eq
	str	w16, [sp, #8]                   // 4-byte Folded Spill
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	tbnz	w8, #15, .LBB132_6
	b	.LBB132_5
.LBB132_5:                              //   in Loop: Header=BB132_1 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.131+16
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.131+16
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.131+16
	movk	x17, #:abs_g3:__llvm_gcov_ctr.131+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc___udivmodhi4+24
	movk	x17, #:abs_g1_nc:.L__profc___udivmodhi4+24
	movk	x17, #:abs_g2_nc:.L__profc___udivmodhi4+24
	movk	x17, #:abs_g3:.L__profc___udivmodhi4+24
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB132_6
.LBB132_6:                              //   in Loop: Header=BB132_1 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB132_8
	b	.LBB132_7
.LBB132_7:                              //   in Loop: Header=BB132_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.131+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.131+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.131+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.131+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___udivmodhi4+8
	movk	x16, #:abs_g1_nc:.L__profc___udivmodhi4+8
	movk	x16, #:abs_g2_nc:.L__profc___udivmodhi4+8
	movk	x16, #:abs_g3:.L__profc___udivmodhi4+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurh	w8, [x29, #-6]
	lsl	w8, w8, #1
	sturh	w8, [x29, #-6]
	ldurh	w8, [x29, #-14]
	lsl	w8, w8, #1
	sturh	w8, [x29, #-14]
	b	.LBB132_1
.LBB132_8:
	b	.LBB132_9
.LBB132_9:                              // =>This Inner Loop Header: Depth=1
	ldurh	w8, [x29, #-14]
	cbz	w8, .LBB132_13
	b	.LBB132_10
.LBB132_10:                             //   in Loop: Header=BB132_9 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___udivmodhi4+48
	movk	x16, #:abs_g1_nc:.L__profc___udivmodhi4+48
	movk	x16, #:abs_g2_nc:.L__profc___udivmodhi4+48
	movk	x16, #:abs_g3:.L__profc___udivmodhi4+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurh	w8, [x29, #-4]
	ldurh	w16, [x29, #-6]
	subs	w8, w8, w16
	b.lt	.LBB132_12
	b	.LBB132_11
.LBB132_11:                             //   in Loop: Header=BB132_9 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.131+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.131+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.131+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.131+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___udivmodhi4+56
	movk	x16, #:abs_g1_nc:.L__profc___udivmodhi4+56
	movk	x16, #:abs_g2_nc:.L__profc___udivmodhi4+56
	movk	x16, #:abs_g3:.L__profc___udivmodhi4+56
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurh	w16, [x29, #-6]
	ldurh	w8, [x29, #-4]
	subs	w8, w8, w16
	sturh	w8, [x29, #-4]
	ldurh	w16, [x29, #-14]
	ldrh	w8, [sp, #16]
	orr	w8, w8, w16
	strh	w8, [sp, #16]
	b	.LBB132_12
.LBB132_12:                             //   in Loop: Header=BB132_9 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.131+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.131+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.131+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.131+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurh	w8, [x29, #-14]
	lsr	w8, w8, #1
	sturh	w8, [x29, #-14]
	ldurh	w8, [x29, #-6]
	lsr	w8, w8, #1
	sturh	w8, [x29, #-6]
	b	.LBB132_9
.LBB132_13:
	ldur	w8, [x29, #-12]
	cbz	w8, .LBB132_15
	b	.LBB132_14
.LBB132_14:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.131+48
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.131+48
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.131+48
	movk	x16, #:abs_g3:__llvm_gcov_ctr.131+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___udivmodhi4+64
	movk	x16, #:abs_g1_nc:.L__profc___udivmodhi4+64
	movk	x16, #:abs_g2_nc:.L__profc___udivmodhi4+64
	movk	x16, #:abs_g3:.L__profc___udivmodhi4+64
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurh	w8, [x29, #-4]
	sturh	w8, [x29, #-2]
	b	.LBB132_16
.LBB132_15:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.131+56
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.131+56
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.131+56
	movk	x16, #:abs_g3:__llvm_gcov_ctr.131+56
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldrh	w8, [sp, #16]
	sturh	w8, [x29, #-2]
	b	.LBB132_16
.LBB132_16:
	ldurh	w0, [x29, #-2]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end131:
	.size	__udivmodhi4, .Lfunc_end131-__udivmodhi4
	.cfi_endproc
                                        // -- End function
	.globl	__udivmodsi4_libgcc             // -- Begin function __udivmodsi4_libgcc
	.p2align	2
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    // @__udivmodsi4_libgcc
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	movz	x16, #:abs_g0_nc:.L__profc___udivmodsi4_libgcc
	movk	x16, #:abs_g1_nc:.L__profc___udivmodsi4_libgcc
	movk	x16, #:abs_g2_nc:.L__profc___udivmodsi4_libgcc
	movk	x16, #:abs_g3:.L__profc___udivmodsi4_libgcc
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #1                          // =0x1
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #24]
	mov	x8, xzr
	str	x8, [sp, #16]
	b	.LBB133_1
.LBB133_1:                              // =>This Inner Loop Header: Depth=1
	ldur	x16, [x29, #-24]
	ldur	x17, [x29, #-16]
	mov	w8, wzr
	subs	x16, x16, x17
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.hs	.LBB133_6
	b	.LBB133_2
.LBB133_2:                              //   in Loop: Header=BB133_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.132
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.132
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.132
	movk	x16, #:abs_g3:__llvm_gcov_ctr.132
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___udivmodsi4_libgcc+32
	movk	x16, #:abs_g1_nc:.L__profc___udivmodsi4_libgcc+32
	movk	x16, #:abs_g2_nc:.L__profc___udivmodsi4_libgcc+32
	movk	x16, #:abs_g3:.L__profc___udivmodsi4_libgcc+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	mov	w16, wzr
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	cbz	x8, .LBB133_6
	b	.LBB133_3
.LBB133_3:                              //   in Loop: Header=BB133_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.132+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.132+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.132+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.132+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___udivmodsi4_libgcc+40
	movk	x16, #:abs_g1_nc:.L__profc___udivmodsi4_libgcc+40
	movk	x16, #:abs_g2_nc:.L__profc___udivmodsi4_libgcc+40
	movk	x16, #:abs_g3:.L__profc___udivmodsi4_libgcc+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB133_4
.LBB133_4:                              //   in Loop: Header=BB133_1 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___udivmodsi4_libgcc+16
	movk	x16, #:abs_g1_nc:.L__profc___udivmodsi4_libgcc+16
	movk	x16, #:abs_g2_nc:.L__profc___udivmodsi4_libgcc+16
	movk	x16, #:abs_g3:.L__profc___udivmodsi4_libgcc+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-24]
	ands	x16, x8, #0x80000000
	cset	w16, eq
	str	w16, [sp, #8]                   // 4-byte Folded Spill
                                        // kill: def $w8 killed $w8 killed $x8
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	tbnz	w8, #31, .LBB133_6
	b	.LBB133_5
.LBB133_5:                              //   in Loop: Header=BB133_1 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	movz	x17, #:abs_g0_nc:__llvm_gcov_ctr.132+16
	movk	x17, #:abs_g1_nc:__llvm_gcov_ctr.132+16
	movk	x17, #:abs_g2_nc:__llvm_gcov_ctr.132+16
	movk	x17, #:abs_g3:__llvm_gcov_ctr.132+16
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	movz	x17, #:abs_g0_nc:.L__profc___udivmodsi4_libgcc+24
	movk	x17, #:abs_g1_nc:.L__profc___udivmodsi4_libgcc+24
	movk	x17, #:abs_g2_nc:.L__profc___udivmodsi4_libgcc+24
	movk	x17, #:abs_g3:.L__profc___udivmodsi4_libgcc+24
	ldr	x16, [x17]
	add	x16, x16, #1
	str	x16, [x17]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB133_6
.LBB133_6:                              //   in Loop: Header=BB133_1 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB133_8
	b	.LBB133_7
.LBB133_7:                              //   in Loop: Header=BB133_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.132+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.132+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.132+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.132+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___udivmodsi4_libgcc+8
	movk	x16, #:abs_g1_nc:.L__profc___udivmodsi4_libgcc+8
	movk	x16, #:abs_g2_nc:.L__profc___udivmodsi4_libgcc+8
	movk	x16, #:abs_g3:.L__profc___udivmodsi4_libgcc+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-24]
	lsl	x8, x8, #1
	stur	x8, [x29, #-24]
	ldr	x8, [sp, #24]
	lsl	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB133_1
.LBB133_8:
	b	.LBB133_9
.LBB133_9:                              // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	cbz	x8, .LBB133_13
	b	.LBB133_10
.LBB133_10:                             //   in Loop: Header=BB133_9 Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___udivmodsi4_libgcc+48
	movk	x16, #:abs_g1_nc:.L__profc___udivmodsi4_libgcc+48
	movk	x16, #:abs_g2_nc:.L__profc___udivmodsi4_libgcc+48
	movk	x16, #:abs_g3:.L__profc___udivmodsi4_libgcc+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	ldur	x16, [x29, #-24]
	subs	x8, x8, x16
	b.lo	.LBB133_12
	b	.LBB133_11
.LBB133_11:                             //   in Loop: Header=BB133_9 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.132+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.132+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.132+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.132+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___udivmodsi4_libgcc+56
	movk	x16, #:abs_g1_nc:.L__profc___udivmodsi4_libgcc+56
	movk	x16, #:abs_g2_nc:.L__profc___udivmodsi4_libgcc+56
	movk	x16, #:abs_g3:.L__profc___udivmodsi4_libgcc+56
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x16, [x29, #-24]
	ldur	x8, [x29, #-16]
	subs	x8, x8, x16
	stur	x8, [x29, #-16]
	ldr	x16, [sp, #24]
	ldr	x8, [sp, #16]
	orr	x8, x8, x16
	str	x8, [sp, #16]
	b	.LBB133_12
.LBB133_12:                             //   in Loop: Header=BB133_9 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.132+40
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.132+40
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.132+40
	movk	x16, #:abs_g3:__llvm_gcov_ctr.132+40
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	lsr	x8, x8, #1
	str	x8, [sp, #24]
	ldur	x8, [x29, #-24]
	lsr	x8, x8, #1
	stur	x8, [x29, #-24]
	b	.LBB133_9
.LBB133_13:
	ldur	w8, [x29, #-28]
	cbz	w8, .LBB133_15
	b	.LBB133_14
.LBB133_14:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.132+48
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.132+48
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.132+48
	movk	x16, #:abs_g3:__llvm_gcov_ctr.132+48
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___udivmodsi4_libgcc+64
	movk	x16, #:abs_g1_nc:.L__profc___udivmodsi4_libgcc+64
	movk	x16, #:abs_g2_nc:.L__profc___udivmodsi4_libgcc+64
	movk	x16, #:abs_g3:.L__profc___udivmodsi4_libgcc+64
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB133_16
.LBB133_15:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.132+56
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.132+56
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.132+56
	movk	x16, #:abs_g3:__llvm_gcov_ctr.132+56
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB133_16
.LBB133_16:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end132:
	.size	__udivmodsi4_libgcc, .Lfunc_end132-__udivmodsi4_libgcc
	.cfi_endproc
                                        // -- End function
	.globl	__ashldi3                       // -- Begin function __ashldi3
	.p2align	2
	.type	__ashldi3,@function
__ashldi3:                              // @__ashldi3
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	movz	x16, #:abs_g0_nc:.L__profc___ashldi3
	movk	x16, #:abs_g1_nc:.L__profc___ashldi3
	movk	x16, #:abs_g2_nc:.L__profc___ashldi3
	movk	x16, #:abs_g3:.L__profc___ashldi3
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #32                         // =0x20
	str	w8, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldurb	w8, [x29, #-20]
	tbz	w8, #5, .LBB134_2
	b	.LBB134_1
.LBB134_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.133
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.133
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.133
	movk	x16, #:abs_g3:__llvm_gcov_ctr.133
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___ashldi3+8
	movk	x16, #:abs_g1_nc:.L__profc___ashldi3+8
	movk	x16, #:abs_g2_nc:.L__profc___ashldi3+8
	movk	x16, #:abs_g3:.L__profc___ashldi3+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	str	w8, [sp, #8]
	ldr	w8, [sp, #16]
	ldur	w16, [x29, #-20]
	lsl	w8, w8, w16
	str	w8, [sp, #12]
	b	.LBB134_5
.LBB134_2:
	ldur	w8, [x29, #-20]
	cbnz	w8, .LBB134_4
	b	.LBB134_3
.LBB134_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.133+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.133+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.133+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.133+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___ashldi3+16
	movk	x16, #:abs_g1_nc:.L__profc___ashldi3+16
	movk	x16, #:abs_g2_nc:.L__profc___ashldi3+16
	movk	x16, #:abs_g3:.L__profc___ashldi3+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB134_6
.LBB134_4:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.133+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.133+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.133+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.133+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #16]
	ldur	w16, [x29, #-20]
	mov	w0, w16
	mov	w16, w0
	lsl	w8, w8, w16
	str	w8, [sp, #8]
	ldr	w8, [sp, #20]
	ldur	w16, [x29, #-20]
	mov	w0, w16
	mov	w17, w0
	ldr	w16, [sp, #16]
	lsl	w8, w8, w17
	mvn	w17, w17
                                        // implicit-def: $x0
	mov	w0, w17
	mov	w17, w0
	lsr	w16, w16, #1
	lsr	w16, w16, w17
	orr	w8, w8, w16
	str	w8, [sp, #12]
	b	.LBB134_5
.LBB134_5:
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB134_6
.LBB134_6:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end133:
	.size	__ashldi3, .Lfunc_end133-__ashldi3
	.cfi_endproc
                                        // -- End function
	.globl	__ashlti3                       // -- Begin function __ashlti3
	.p2align	2
	.type	__ashlti3,@function
__ashlti3:                              // @__ashlti3
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-24]
	stur	x0, [x29, #-32]
	stur	w2, [x29, #-36]
	movz	x16, #:abs_g0_nc:.L__profc___ashlti3
	movk	x16, #:abs_g1_nc:.L__profc___ashlti3
	movk	x16, #:abs_g2_nc:.L__profc___ashlti3
	movk	x16, #:abs_g3:.L__profc___ashlti3
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #64                         // =0x40
	str	w8, [sp, #40]
	ldur	x8, [x29, #-32]
	ldur	x16, [x29, #-24]
	str	x16, [sp, #24]
	str	x8, [sp, #16]
	ldurb	w8, [x29, #-36]
	tbz	w8, #6, .LBB135_2
	b	.LBB135_1
.LBB135_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.134
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.134
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.134
	movk	x16, #:abs_g3:__llvm_gcov_ctr.134
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___ashlti3+8
	movk	x16, #:abs_g1_nc:.L__profc___ashlti3+8
	movk	x16, #:abs_g2_nc:.L__profc___ashlti3+8
	movk	x16, #:abs_g3:.L__profc___ashlti3+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x8, xzr
	str	x8, [sp]
	ldr	x8, [sp, #16]
	ldur	w16, [x29, #-36]
                                        // kill: def $x16 killed $w16
	lsl	x8, x8, x16
	str	x8, [sp, #8]
	b	.LBB135_5
.LBB135_2:
	ldur	w8, [x29, #-36]
	cbnz	w8, .LBB135_4
	b	.LBB135_3
.LBB135_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.134+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.134+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.134+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.134+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___ashlti3+16
	movk	x16, #:abs_g1_nc:.L__profc___ashlti3+16
	movk	x16, #:abs_g2_nc:.L__profc___ashlti3+16
	movk	x16, #:abs_g3:.L__profc___ashlti3+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-32]
	ldur	x16, [x29, #-24]
	stur	x16, [x29, #-8]
	stur	x8, [x29, #-16]
	b	.LBB135_6
.LBB135_4:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.134+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.134+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.134+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.134+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	ldur	w16, [x29, #-36]
                                        // kill: def $x16 killed $w16
	lsl	x8, x8, x16
	str	x8, [sp]
	ldr	x8, [sp, #24]
	ldur	w16, [x29, #-36]
	mov	w17, w16
	ldr	x16, [sp, #16]
	lsl	x8, x8, x17
                                        // kill: def $w17 killed $w17 killed $x17
	mvn	w0, w17
                                        // implicit-def: $x17
	mov	w17, w0
	lsr	x16, x16, #1
	lsr	x16, x16, x17
	orr	x8, x8, x16
	str	x8, [sp, #8]
	b	.LBB135_5
.LBB135_5:
	ldr	x8, [sp]
	ldr	x16, [sp, #8]
	stur	x16, [x29, #-8]
	stur	x8, [x29, #-16]
	b	.LBB135_6
.LBB135_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end134:
	.size	__ashlti3, .Lfunc_end134-__ashlti3
	.cfi_endproc
                                        // -- End function
	.globl	__ashrdi3                       // -- Begin function __ashrdi3
	.p2align	2
	.type	__ashrdi3,@function
__ashrdi3:                              // @__ashrdi3
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	movz	x16, #:abs_g0_nc:.L__profc___ashrdi3
	movk	x16, #:abs_g1_nc:.L__profc___ashrdi3
	movk	x16, #:abs_g2_nc:.L__profc___ashrdi3
	movk	x16, #:abs_g3:.L__profc___ashrdi3
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #32                         // =0x20
	str	w8, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldurb	w8, [x29, #-20]
	tbz	w8, #5, .LBB136_2
	b	.LBB136_1
.LBB136_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.135
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.135
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.135
	movk	x16, #:abs_g3:__llvm_gcov_ctr.135
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___ashrdi3+8
	movk	x16, #:abs_g1_nc:.L__profc___ashrdi3+8
	movk	x16, #:abs_g2_nc:.L__profc___ashrdi3+8
	movk	x16, #:abs_g3:.L__profc___ashrdi3+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #20]
	asr	w8, w8, #31
	str	w8, [sp, #12]
	ldr	w8, [sp, #20]
	ldur	w16, [x29, #-20]
	asr	w8, w8, w16
	str	w8, [sp, #8]
	b	.LBB136_5
.LBB136_2:
	ldur	w8, [x29, #-20]
	cbnz	w8, .LBB136_4
	b	.LBB136_3
.LBB136_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.135+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.135+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.135+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.135+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___ashrdi3+16
	movk	x16, #:abs_g1_nc:.L__profc___ashrdi3+16
	movk	x16, #:abs_g2_nc:.L__profc___ashrdi3+16
	movk	x16, #:abs_g3:.L__profc___ashrdi3+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB136_6
.LBB136_4:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.135+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.135+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.135+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.135+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #20]
	ldur	w16, [x29, #-20]
	mov	w0, w16
	mov	w16, w0
	asr	w8, w8, w16
	str	w8, [sp, #12]
	ldr	w8, [sp, #20]
	ldr	w16, [sp, #16]
	ldur	w17, [x29, #-20]
	mov	w0, w17
	mov	w17, w0
	lsr	w16, w16, w17
	mvn	w17, w17
                                        // implicit-def: $x0
	mov	w0, w17
	mov	w17, w0
	lsl	w8, w8, #1
	lsl	w8, w8, w17
	orr	w8, w8, w16
	str	w8, [sp, #8]
	b	.LBB136_5
.LBB136_5:
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB136_6
.LBB136_6:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end135:
	.size	__ashrdi3, .Lfunc_end135-__ashrdi3
	.cfi_endproc
                                        // -- End function
	.globl	__ashrti3                       // -- Begin function __ashrti3
	.p2align	2
	.type	__ashrti3,@function
__ashrti3:                              // @__ashrti3
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-24]
	stur	x0, [x29, #-32]
	stur	w2, [x29, #-36]
	movz	x16, #:abs_g0_nc:.L__profc___ashrti3
	movk	x16, #:abs_g1_nc:.L__profc___ashrti3
	movk	x16, #:abs_g2_nc:.L__profc___ashrti3
	movk	x16, #:abs_g3:.L__profc___ashrti3
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #64                         // =0x40
	str	w8, [sp, #40]
	ldur	x8, [x29, #-32]
	ldur	x16, [x29, #-24]
	str	x16, [sp, #24]
	str	x8, [sp, #16]
	ldurb	w8, [x29, #-36]
	tbz	w8, #6, .LBB137_2
	b	.LBB137_1
.LBB137_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.136
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.136
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.136
	movk	x16, #:abs_g3:__llvm_gcov_ctr.136
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___ashrti3+8
	movk	x16, #:abs_g1_nc:.L__profc___ashrti3+8
	movk	x16, #:abs_g2_nc:.L__profc___ashrti3+8
	movk	x16, #:abs_g3:.L__profc___ashrti3+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	asr	x8, x8, #63
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	ldur	w16, [x29, #-36]
                                        // kill: def $x16 killed $w16
	asr	x8, x8, x16
	str	x8, [sp]
	b	.LBB137_5
.LBB137_2:
	ldur	w8, [x29, #-36]
	cbnz	w8, .LBB137_4
	b	.LBB137_3
.LBB137_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.136+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.136+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.136+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.136+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___ashrti3+16
	movk	x16, #:abs_g1_nc:.L__profc___ashrti3+16
	movk	x16, #:abs_g2_nc:.L__profc___ashrti3+16
	movk	x16, #:abs_g3:.L__profc___ashrti3+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-32]
	ldur	x16, [x29, #-24]
	stur	x16, [x29, #-8]
	stur	x8, [x29, #-16]
	b	.LBB137_6
.LBB137_4:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.136+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.136+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.136+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.136+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	ldur	w16, [x29, #-36]
                                        // kill: def $x16 killed $w16
	asr	x8, x8, x16
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	ldr	x16, [sp, #16]
	ldur	w17, [x29, #-36]
                                        // kill: def $x17 killed $w17
	lsr	x16, x16, x17
                                        // kill: def $w17 killed $w17 killed $x17
	mvn	w0, w17
                                        // implicit-def: $x17
	mov	w17, w0
	lsl	x8, x8, #1
	lsl	x8, x8, x17
	orr	x8, x8, x16
	str	x8, [sp]
	b	.LBB137_5
.LBB137_5:
	ldr	x8, [sp]
	ldr	x16, [sp, #8]
	stur	x16, [x29, #-8]
	stur	x8, [x29, #-16]
	b	.LBB137_6
.LBB137_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end136:
	.size	__ashrti3, .Lfunc_end136-__ashrti3
	.cfi_endproc
                                        // -- End function
	.globl	__bswapdi2                      // -- Begin function __bswapdi2
	.p2align	2
	.type	__bswapdi2,@function
__bswapdi2:                             // @__bswapdi2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.137
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.137
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.137
	movk	x16, #:abs_g3:__llvm_gcov_ctr.137
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc___bswapdi2
	movk	x16, #:abs_g1_nc:.L__profc___bswapdi2
	movk	x16, #:abs_g2_nc:.L__profc___bswapdi2
	movk	x16, #:abs_g3:.L__profc___bswapdi2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp, #8]
	and	x8, x16, #0xff000000000000
	lsr	x8, x8, #40
	bfxil	x8, x16, #56, #8
	and	x17, x16, #0xff0000000000
	orr	x8, x8, x17, lsr #24
	and	x17, x16, #0xff00000000
	orr	x8, x8, x17, lsr #8
	and	x17, x16, #0xff000000
	lsr	x17, x17, #24
	bfi	x8, x17, #32, #8
	and	x17, x16, #0xff0000
	lsr	x17, x17, #16
	bfi	x8, x17, #40, #8
	mov	w17, w16
	and	w0, w17, #0xff00
                                        // implicit-def: $x17
	mov	w17, w0
	lsr	x17, x17, #8
	bfi	x8, x17, #48, #8
	orr	x0, x8, x16, lsl #56
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end137:
	.size	__bswapdi2, .Lfunc_end137-__bswapdi2
	.cfi_endproc
                                        // -- End function
	.globl	__bswapsi2                      // -- Begin function __bswapsi2
	.p2align	2
	.type	__bswapsi2,@function
__bswapsi2:                             // @__bswapsi2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.138
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.138
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.138
	movk	x16, #:abs_g3:__llvm_gcov_ctr.138
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc___bswapsi2
	movk	x16, #:abs_g1_nc:.L__profc___bswapsi2
	movk	x16, #:abs_g2_nc:.L__profc___bswapsi2
	movk	x16, #:abs_g3:.L__profc___bswapsi2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w16, [x29, #-4]
	and	w8, w16, #0xff0000
	lsr	w8, w8, #8
	bfxil	w8, w16, #24, #8
	and	w17, w16, #0xff00
	lsr	w17, w17, #8
	bfi	w8, w17, #16, #8
	orr	w0, w8, w16, lsl #24
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end138:
	.size	__bswapsi2, .Lfunc_end138-__bswapsi2
	.cfi_endproc
                                        // -- End function
	.globl	__clzsi2                        // -- Begin function __clzsi2
	.p2align	2
	.type	__clzsi2,@function
__clzsi2:                               // @__clzsi2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.139
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.139
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.139
	movk	x16, #:abs_g3:__llvm_gcov_ctr.139
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc___clzsi2
	movk	x16, #:abs_g1_nc:.L__profc___clzsi2
	movk	x16, #:abs_g2_nc:.L__profc___clzsi2
	movk	x16, #:abs_g3:.L__profc___clzsi2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #8]
	ldrh	w8, [sp, #10]
	lsl	w8, w8, #16
	subs	w8, w8, #0
	cset	w8, eq
	lsl	w8, w8, #4
	str	w8, [sp, #4]
	ldr	w16, [sp, #4]
	mov	w8, #16                         // =0x10
	subs	w16, w8, w16
	ldr	w8, [sp, #8]
	lsr	w8, w8, w16
	str	w8, [sp, #8]
	ldr	w8, [sp, #4]
	str	w8, [sp]
	ldrb	w8, [sp, #9]
	lsl	w8, w8, #8
	subs	w8, w8, #0
	cset	w8, eq
	lsl	w8, w8, #3
	str	w8, [sp, #4]
	ldr	w16, [sp, #4]
	mov	w8, #8                          // =0x8
	subs	w16, w8, w16
	ldr	w8, [sp, #8]
	lsr	w8, w8, w16
	str	w8, [sp, #8]
	ldr	w16, [sp, #4]
	ldr	w8, [sp]
	add	w8, w8, w16
	str	w8, [sp]
	ldr	w8, [sp, #8]
	ands	w8, w8, #0xf0
	cset	w8, eq
	lsl	w8, w8, #2
	str	w8, [sp, #4]
	ldr	w16, [sp, #4]
	mov	w8, #4                          // =0x4
	subs	w16, w8, w16
	ldr	w8, [sp, #8]
	lsr	w8, w8, w16
	str	w8, [sp, #8]
	ldr	w16, [sp, #4]
	ldr	w8, [sp]
	add	w8, w8, w16
	str	w8, [sp]
	ldr	w8, [sp, #8]
	ands	w8, w8, #0xc
	cset	w8, eq
	lsl	w8, w8, #1
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	mov	w16, #2                         // =0x2
	subs	w17, w16, w8
	ldr	w8, [sp, #8]
	lsr	w8, w8, w17
	str	w8, [sp, #8]
	ldr	w17, [sp, #4]
	ldr	w8, [sp]
	add	w8, w8, w17
	str	w8, [sp]
	ldr	w8, [sp]
	ldr	w17, [sp, #8]
	subs	w16, w16, w17
	ands	w17, w17, #0x2
	cset	w0, eq
	mov	w17, wzr
	subs	w17, w17, w0
	and	w16, w16, w17
	add	w0, w8, w16
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end139:
	.size	__clzsi2, .Lfunc_end139-__clzsi2
	.cfi_endproc
                                        // -- End function
	.globl	__clzti2                        // -- Begin function __clzti2
	.p2align	2
	.type	__clzti2,@function
__clzti2:                               // @__clzti2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.140
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.140
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.140
	movk	x16, #:abs_g3:__llvm_gcov_ctr.140
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x1, [x29, #-8]
	stur	x0, [x29, #-16]
	movz	x16, #:abs_g0_nc:.L__profc___clzti2
	movk	x16, #:abs_g1_nc:.L__profc___clzti2
	movk	x16, #:abs_g2_nc:.L__profc___clzti2
	movk	x16, #:abs_g3:.L__profc___clzti2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	ldur	x16, [x29, #-8]
	str	x16, [sp, #24]
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w8, eq
	mov	w8, w8
	mov	w16, w8
	mov	x8, xzr
	subs	x8, x8, x16
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	ldr	x16, [sp, #8]
	bic	x8, x8, x16
	ldr	x17, [sp, #16]
	and	x17, x17, x16
	orr	x8, x8, x17
	clz	x8, x8
                                        // kill: def $w8 killed $w8 killed $x8
                                        // kill: def $w16 killed $w16 killed $x16
	and	w16, w16, #0x40
	add	w0, w8, w16
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end140:
	.size	__clzti2, .Lfunc_end140-__clzti2
	.cfi_endproc
                                        // -- End function
	.globl	__cmpdi2                        // -- Begin function __cmpdi2
	.p2align	2
	.type	__cmpdi2,@function
__cmpdi2:                               // @__cmpdi2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc___cmpdi2
	movk	x16, #:abs_g1_nc:.L__profc___cmpdi2
	movk	x16, #:abs_g2_nc:.L__profc___cmpdi2
	movk	x16, #:abs_g3:.L__profc___cmpdi2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	ldr	w8, [sp, #20]
	ldr	w16, [sp, #12]
	subs	w8, w8, w16
	b.ge	.LBB142_2
	b	.LBB142_1
.LBB142_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.141
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.141
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.141
	movk	x16, #:abs_g3:__llvm_gcov_ctr.141
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___cmpdi2+8
	movk	x16, #:abs_g1_nc:.L__profc___cmpdi2+8
	movk	x16, #:abs_g2_nc:.L__profc___cmpdi2+8
	movk	x16, #:abs_g3:.L__profc___cmpdi2+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB142_9
.LBB142_2:
	ldr	w8, [sp, #20]
	ldr	w16, [sp, #12]
	subs	w8, w8, w16
	b.le	.LBB142_4
	b	.LBB142_3
.LBB142_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.141+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.141+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.141+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.141+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___cmpdi2+16
	movk	x16, #:abs_g1_nc:.L__profc___cmpdi2+16
	movk	x16, #:abs_g2_nc:.L__profc___cmpdi2+16
	movk	x16, #:abs_g3:.L__profc___cmpdi2+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #2                          // =0x2
	stur	w8, [x29, #-4]
	b	.LBB142_9
.LBB142_4:
	ldr	w8, [sp, #16]
	ldr	w16, [sp, #8]
	subs	w8, w8, w16
	b.hs	.LBB142_6
	b	.LBB142_5
.LBB142_5:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.141+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.141+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.141+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.141+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___cmpdi2+24
	movk	x16, #:abs_g1_nc:.L__profc___cmpdi2+24
	movk	x16, #:abs_g2_nc:.L__profc___cmpdi2+24
	movk	x16, #:abs_g3:.L__profc___cmpdi2+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB142_9
.LBB142_6:
	ldr	w8, [sp, #16]
	ldr	w16, [sp, #8]
	subs	w8, w8, w16
	b.ls	.LBB142_8
	b	.LBB142_7
.LBB142_7:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.141+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.141+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.141+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.141+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___cmpdi2+32
	movk	x16, #:abs_g1_nc:.L__profc___cmpdi2+32
	movk	x16, #:abs_g2_nc:.L__profc___cmpdi2+32
	movk	x16, #:abs_g3:.L__profc___cmpdi2+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #2                          // =0x2
	stur	w8, [x29, #-4]
	b	.LBB142_9
.LBB142_8:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.141+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.141+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.141+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.141+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB142_9
.LBB142_9:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end141:
	.size	__cmpdi2, .Lfunc_end141-__cmpdi2
	.cfi_endproc
                                        // -- End function
	.globl	__aeabi_lcmp                    // -- Begin function __aeabi_lcmp
	.p2align	2
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           // @__aeabi_lcmp
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.142
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.142
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.142
	movk	x16, #:abs_g3:__llvm_gcov_ctr.142
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	str	x1, [sp]
	movz	x16, #:abs_g0_nc:.L__profc___aeabi_lcmp
	movk	x16, #:abs_g1_nc:.L__profc___aeabi_lcmp
	movk	x16, #:abs_g2_nc:.L__profc___aeabi_lcmp
	movk	x16, #:abs_g3:.L__profc___aeabi_lcmp
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__cmpdi2
	subs	w0, w0, #1
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end142:
	.size	__aeabi_lcmp, .Lfunc_end142-__aeabi_lcmp
	.cfi_endproc
                                        // -- End function
	.globl	__cmpti2                        // -- Begin function __cmpti2
	.p2align	2
	.type	__cmpti2,@function
__cmpti2:                               // @__cmpti2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-24]
	stur	x0, [x29, #-32]
	str	x3, [sp, #40]
	str	x2, [sp, #32]
	movz	x16, #:abs_g0_nc:.L__profc___cmpti2
	movk	x16, #:abs_g1_nc:.L__profc___cmpti2
	movk	x16, #:abs_g2_nc:.L__profc___cmpti2
	movk	x16, #:abs_g3:.L__profc___cmpti2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-32]
	ldur	x16, [x29, #-24]
	str	x16, [sp, #24]
	str	x8, [sp, #16]
	ldr	x8, [sp, #32]
	ldr	x16, [sp, #40]
	str	x16, [sp, #8]
	str	x8, [sp]
	ldr	x8, [sp, #24]
	ldr	x16, [sp, #8]
	subs	x8, x8, x16
	b.ge	.LBB144_2
	b	.LBB144_1
.LBB144_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.143
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.143
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.143
	movk	x16, #:abs_g3:__llvm_gcov_ctr.143
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___cmpti2+8
	movk	x16, #:abs_g1_nc:.L__profc___cmpti2+8
	movk	x16, #:abs_g2_nc:.L__profc___cmpti2+8
	movk	x16, #:abs_g3:.L__profc___cmpti2+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB144_9
.LBB144_2:
	ldr	x8, [sp, #24]
	ldr	x16, [sp, #8]
	subs	x8, x8, x16
	b.le	.LBB144_4
	b	.LBB144_3
.LBB144_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.143+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.143+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.143+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.143+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___cmpti2+16
	movk	x16, #:abs_g1_nc:.L__profc___cmpti2+16
	movk	x16, #:abs_g2_nc:.L__profc___cmpti2+16
	movk	x16, #:abs_g3:.L__profc___cmpti2+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #2                          // =0x2
	stur	w8, [x29, #-4]
	b	.LBB144_9
.LBB144_4:
	ldr	x8, [sp, #16]
	ldr	x16, [sp]
	subs	x8, x8, x16
	b.hs	.LBB144_6
	b	.LBB144_5
.LBB144_5:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.143+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.143+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.143+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.143+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___cmpti2+24
	movk	x16, #:abs_g1_nc:.L__profc___cmpti2+24
	movk	x16, #:abs_g2_nc:.L__profc___cmpti2+24
	movk	x16, #:abs_g3:.L__profc___cmpti2+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB144_9
.LBB144_6:
	ldr	x8, [sp, #16]
	ldr	x16, [sp]
	subs	x8, x8, x16
	b.ls	.LBB144_8
	b	.LBB144_7
.LBB144_7:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.143+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.143+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.143+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.143+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___cmpti2+32
	movk	x16, #:abs_g1_nc:.L__profc___cmpti2+32
	movk	x16, #:abs_g2_nc:.L__profc___cmpti2+32
	movk	x16, #:abs_g3:.L__profc___cmpti2+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #2                          // =0x2
	stur	w8, [x29, #-4]
	b	.LBB144_9
.LBB144_8:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.143+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.143+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.143+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.143+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB144_9
.LBB144_9:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end143:
	.size	__cmpti2, .Lfunc_end143-__cmpti2
	.cfi_endproc
                                        // -- End function
	.globl	__ctzsi2                        // -- Begin function __ctzsi2
	.p2align	2
	.type	__ctzsi2,@function
__ctzsi2:                               // @__ctzsi2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.144
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.144
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.144
	movk	x16, #:abs_g3:__llvm_gcov_ctr.144
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc___ctzsi2
	movk	x16, #:abs_g1_nc:.L__profc___ctzsi2
	movk	x16, #:abs_g2_nc:.L__profc___ctzsi2
	movk	x16, #:abs_g3:.L__profc___ctzsi2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #8]
	ldrh	w8, [sp, #8]
	subs	w8, w8, #0
	cset	w8, eq
	lsl	w8, w8, #4
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	mov	w0, w8
	ldr	w8, [sp, #8]
	mov	w16, w0
	lsr	w8, w8, w16
	str	w8, [sp, #8]
	ldr	w8, [sp, #4]
	str	w8, [sp]
	ldrb	w8, [sp, #8]
	subs	w8, w8, #0
	cset	w8, eq
	lsl	w8, w8, #3
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	mov	w0, w8
	ldr	w8, [sp, #8]
	mov	w16, w0
	lsr	w8, w8, w16
	str	w8, [sp, #8]
	ldr	w16, [sp, #4]
	ldr	w8, [sp]
	add	w8, w8, w16
	str	w8, [sp]
	ldr	w8, [sp, #8]
	ands	w8, w8, #0xf
	cset	w8, eq
	lsl	w8, w8, #2
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	mov	w0, w8
	ldr	w8, [sp, #8]
	mov	w16, w0
	lsr	w8, w8, w16
	str	w8, [sp, #8]
	ldr	w16, [sp, #4]
	ldr	w8, [sp]
	add	w8, w8, w16
	str	w8, [sp]
	ldr	w8, [sp, #8]
	ands	w8, w8, #0x3
	cset	w8, eq
	lsl	w8, w8, #1
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	mov	w0, w8
	ldr	w8, [sp, #8]
	mov	w16, w0
	lsr	w8, w8, w16
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	and	w8, w8, #0x3
	str	w8, [sp, #8]
	ldr	w16, [sp, #4]
	ldr	w8, [sp]
	add	w8, w8, w16
	str	w8, [sp]
	ldr	w8, [sp]
	ldr	w17, [sp, #8]
	mov	w16, #2                         // =0x2
	subs	w16, w16, w17, lsr #1
	and	w17, w17, #0x1
	subs	w17, w17, #1
	and	w16, w16, w17
	add	w0, w8, w16
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end144:
	.size	__ctzsi2, .Lfunc_end144-__ctzsi2
	.cfi_endproc
                                        // -- End function
	.globl	__ctzti2                        // -- Begin function __ctzti2
	.p2align	2
	.type	__ctzti2,@function
__ctzti2:                               // @__ctzti2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.145
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.145
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.145
	movk	x16, #:abs_g3:__llvm_gcov_ctr.145
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x1, [x29, #-8]
	stur	x0, [x29, #-16]
	movz	x16, #:abs_g0_nc:.L__profc___ctzti2
	movk	x16, #:abs_g1_nc:.L__profc___ctzti2
	movk	x16, #:abs_g2_nc:.L__profc___ctzti2
	movk	x16, #:abs_g3:.L__profc___ctzti2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	ldur	x16, [x29, #-8]
	str	x16, [sp, #24]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w8, eq
	mov	w8, w8
	mov	w16, w8
	mov	x8, xzr
	subs	x8, x8, x16
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	ldr	x16, [sp, #8]
	and	x8, x8, x16
	ldr	x17, [sp, #16]
	bic	x17, x17, x16
	orr	x8, x8, x17
	rbit	x8, x8
	clz	x8, x8
                                        // kill: def $w8 killed $w8 killed $x8
                                        // kill: def $w16 killed $w16 killed $x16
	and	w16, w16, #0x40
	add	w0, w8, w16
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end145:
	.size	__ctzti2, .Lfunc_end145-__ctzti2
	.cfi_endproc
                                        // -- End function
	.globl	__ffsti2                        // -- Begin function __ffsti2
	.p2align	2
	.type	__ffsti2,@function
__ffsti2:                               // @__ffsti2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x1, [sp, #24]
	str	x0, [sp, #16]
	movz	x16, #:abs_g0_nc:.L__profc___ffsti2
	movk	x16, #:abs_g1_nc:.L__profc___ffsti2
	movk	x16, #:abs_g2_nc:.L__profc___ffsti2
	movk	x16, #:abs_g3:.L__profc___ffsti2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #16]
	ldr	x16, [sp, #24]
	str	x16, [sp, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB147_4
	b	.LBB147_1
.LBB147_1:
	movz	x16, #:abs_g0_nc:.L__profc___ffsti2+8
	movk	x16, #:abs_g1_nc:.L__profc___ffsti2+8
	movk	x16, #:abs_g2_nc:.L__profc___ffsti2+8
	movk	x16, #:abs_g3:.L__profc___ffsti2+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB147_3
	b	.LBB147_2
.LBB147_2:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.146+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.146+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.146+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.146+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___ffsti2+16
	movk	x16, #:abs_g1_nc:.L__profc___ffsti2+16
	movk	x16, #:abs_g2_nc:.L__profc___ffsti2+16
	movk	x16, #:abs_g3:.L__profc___ffsti2+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB147_5
.LBB147_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.146+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.146+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.146+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.146+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #8]
	rbit	x8, x8
	clz	x8, x8
                                        // kill: def $w8 killed $w8 killed $x8
	add	w8, w8, #65
	stur	w8, [x29, #-4]
	b	.LBB147_5
.LBB147_4:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.146
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.146
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.146
	movk	x16, #:abs_g3:__llvm_gcov_ctr.146
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp]
	rbit	x8, x8
	clz	x8, x8
                                        // kill: def $w8 killed $w8 killed $x8
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB147_5
.LBB147_5:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end146:
	.size	__ffsti2, .Lfunc_end146-__ffsti2
	.cfi_endproc
                                        // -- End function
	.globl	__lshrdi3                       // -- Begin function __lshrdi3
	.p2align	2
	.type	__lshrdi3,@function
__lshrdi3:                              // @__lshrdi3
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	movz	x16, #:abs_g0_nc:.L__profc___lshrdi3
	movk	x16, #:abs_g1_nc:.L__profc___lshrdi3
	movk	x16, #:abs_g2_nc:.L__profc___lshrdi3
	movk	x16, #:abs_g3:.L__profc___lshrdi3
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #32                         // =0x20
	str	w8, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldurb	w8, [x29, #-20]
	tbz	w8, #5, .LBB148_2
	b	.LBB148_1
.LBB148_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.147
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.147
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.147
	movk	x16, #:abs_g3:__llvm_gcov_ctr.147
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___lshrdi3+8
	movk	x16, #:abs_g1_nc:.L__profc___lshrdi3+8
	movk	x16, #:abs_g2_nc:.L__profc___lshrdi3+8
	movk	x16, #:abs_g3:.L__profc___lshrdi3+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	str	w8, [sp, #12]
	ldr	w8, [sp, #20]
	ldur	w16, [x29, #-20]
	lsr	w8, w8, w16
	str	w8, [sp, #8]
	b	.LBB148_5
.LBB148_2:
	ldur	w8, [x29, #-20]
	cbnz	w8, .LBB148_4
	b	.LBB148_3
.LBB148_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.147+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.147+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.147+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.147+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___lshrdi3+16
	movk	x16, #:abs_g1_nc:.L__profc___lshrdi3+16
	movk	x16, #:abs_g2_nc:.L__profc___lshrdi3+16
	movk	x16, #:abs_g3:.L__profc___lshrdi3+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB148_6
.LBB148_4:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.147+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.147+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.147+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.147+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	w8, [sp, #20]
	ldur	w16, [x29, #-20]
	mov	w0, w16
	mov	w16, w0
	lsr	w8, w8, w16
	str	w8, [sp, #12]
	ldr	w8, [sp, #20]
	ldr	w16, [sp, #16]
	ldur	w17, [x29, #-20]
	mov	w0, w17
	mov	w17, w0
	lsr	w16, w16, w17
	mvn	w17, w17
                                        // implicit-def: $x0
	mov	w0, w17
	mov	w17, w0
	lsl	w8, w8, #1
	lsl	w8, w8, w17
	orr	w8, w8, w16
	str	w8, [sp, #8]
	b	.LBB148_5
.LBB148_5:
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB148_6
.LBB148_6:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end147:
	.size	__lshrdi3, .Lfunc_end147-__lshrdi3
	.cfi_endproc
                                        // -- End function
	.globl	__lshrti3                       // -- Begin function __lshrti3
	.p2align	2
	.type	__lshrti3,@function
__lshrti3:                              // @__lshrti3
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-24]
	stur	x0, [x29, #-32]
	stur	w2, [x29, #-36]
	movz	x16, #:abs_g0_nc:.L__profc___lshrti3
	movk	x16, #:abs_g1_nc:.L__profc___lshrti3
	movk	x16, #:abs_g2_nc:.L__profc___lshrti3
	movk	x16, #:abs_g3:.L__profc___lshrti3
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #64                         // =0x40
	str	w8, [sp, #40]
	ldur	x8, [x29, #-32]
	ldur	x16, [x29, #-24]
	str	x16, [sp, #24]
	str	x8, [sp, #16]
	ldurb	w8, [x29, #-36]
	tbz	w8, #6, .LBB149_2
	b	.LBB149_1
.LBB149_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.148
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.148
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.148
	movk	x16, #:abs_g3:__llvm_gcov_ctr.148
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___lshrti3+8
	movk	x16, #:abs_g1_nc:.L__profc___lshrti3+8
	movk	x16, #:abs_g2_nc:.L__profc___lshrti3+8
	movk	x16, #:abs_g3:.L__profc___lshrti3+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	x8, xzr
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	ldur	w16, [x29, #-36]
                                        // kill: def $x16 killed $w16
	lsr	x8, x8, x16
	str	x8, [sp]
	b	.LBB149_5
.LBB149_2:
	ldur	w8, [x29, #-36]
	cbnz	w8, .LBB149_4
	b	.LBB149_3
.LBB149_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.148+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.148+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.148+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.148+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___lshrti3+16
	movk	x16, #:abs_g1_nc:.L__profc___lshrti3+16
	movk	x16, #:abs_g2_nc:.L__profc___lshrti3+16
	movk	x16, #:abs_g3:.L__profc___lshrti3+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-32]
	ldur	x16, [x29, #-24]
	stur	x16, [x29, #-8]
	stur	x8, [x29, #-16]
	b	.LBB149_6
.LBB149_4:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.148+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.148+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.148+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.148+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x8, [sp, #24]
	ldur	w16, [x29, #-36]
                                        // kill: def $x16 killed $w16
	lsr	x8, x8, x16
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	ldr	x16, [sp, #16]
	ldur	w17, [x29, #-36]
                                        // kill: def $x17 killed $w17
	lsr	x16, x16, x17
                                        // kill: def $w17 killed $w17 killed $x17
	mvn	w0, w17
                                        // implicit-def: $x17
	mov	w17, w0
	lsl	x8, x8, #1
	lsl	x8, x8, x17
	orr	x8, x8, x16
	str	x8, [sp]
	b	.LBB149_5
.LBB149_5:
	ldr	x8, [sp]
	ldr	x16, [sp, #8]
	stur	x16, [x29, #-8]
	stur	x8, [x29, #-16]
	b	.LBB149_6
.LBB149_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end148:
	.size	__lshrti3, .Lfunc_end148-__lshrti3
	.cfi_endproc
                                        // -- End function
	.globl	__muldsi3                       // -- Begin function __muldsi3
	.p2align	2
	.type	__muldsi3,@function
__muldsi3:                              // @__muldsi3
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.149
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.149
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.149
	movk	x16, #:abs_g3:__llvm_gcov_ctr.149
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	movz	x16, #:abs_g0_nc:.L__profc___muldsi3
	movk	x16, #:abs_g1_nc:.L__profc___muldsi3
	movk	x16, #:abs_g2_nc:.L__profc___muldsi3
	movk	x16, #:abs_g3:.L__profc___muldsi3
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #16                         // =0x10
	str	w8, [sp, #12]
	mov	w8, #65535                      // =0xffff
	str	w8, [sp, #8]
	ldurh	w8, [x29, #-4]
	ldurh	w16, [x29, #-8]
	mul	w8, w8, w16
	str	w8, [sp, #16]
	ldrh	w8, [sp, #18]
	str	w8, [sp, #4]
	ldrh	w8, [sp, #16]
	str	w8, [sp, #16]
	ldurh	w8, [x29, #-2]
	ldurh	w16, [x29, #-8]
	mul	w16, w8, w16
	ldr	w8, [sp, #4]
	add	w8, w8, w16
	str	w8, [sp, #4]
	ldr	w16, [sp, #4]
	ldr	w8, [sp, #16]
	add	w8, w8, w16, lsl #16
	str	w8, [sp, #16]
	ldrh	w8, [sp, #6]
	str	w8, [sp, #20]
	ldrh	w8, [sp, #18]
	str	w8, [sp, #4]
	ldrh	w8, [sp, #16]
	str	w8, [sp, #16]
	ldurh	w8, [x29, #-6]
	ldurh	w16, [x29, #-4]
	mul	w16, w8, w16
	ldr	w8, [sp, #4]
	add	w8, w8, w16
	str	w8, [sp, #4]
	ldr	w16, [sp, #4]
	ldr	w8, [sp, #16]
	add	w8, w8, w16, lsl #16
	str	w8, [sp, #16]
	ldrh	w16, [sp, #6]
	ldr	w8, [sp, #20]
	add	w8, w8, w16
	str	w8, [sp, #20]
	ldurh	w8, [x29, #-2]
	ldurh	w16, [x29, #-6]
	mul	w16, w8, w16
	ldr	w8, [sp, #20]
	add	w8, w8, w16
	str	w8, [sp, #20]
	ldr	x0, [sp, #16]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end149:
	.size	__muldsi3, .Lfunc_end149-__muldsi3
	.cfi_endproc
                                        // -- End function
	.globl	__muldi3_compiler_rt            // -- Begin function __muldi3_compiler_rt
	.p2align	2
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   // @__muldi3_compiler_rt
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.150
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.150
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.150
	movk	x16, #:abs_g3:__llvm_gcov_ctr.150
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	movz	x16, #:abs_g0_nc:.L__profc___muldi3_compiler_rt
	movk	x16, #:abs_g1_nc:.L__profc___muldi3_compiler_rt
	movk	x16, #:abs_g2_nc:.L__profc___muldi3_compiler_rt
	movk	x16, #:abs_g3:.L__profc___muldi3_compiler_rt
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldr	w0, [sp, #24]
	ldr	w1, [sp, #16]
	bl	__muldsi3
	str	x0, [sp, #8]
	ldr	w8, [sp, #28]
	ldr	w16, [sp, #16]
	mul	w8, w8, w16
	ldr	w16, [sp, #24]
	ldr	w17, [sp, #20]
	mul	w16, w16, w17
	add	w16, w8, w16
	ldr	w8, [sp, #12]
	add	w8, w8, w16
	str	w8, [sp, #12]
	ldr	x0, [sp, #8]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end150:
	.size	__muldi3_compiler_rt, .Lfunc_end150-__muldi3_compiler_rt
	.cfi_endproc
                                        // -- End function
	.globl	__mulddi3                       // -- Begin function __mulddi3
	.p2align	2
	.type	__mulddi3,@function
__mulddi3:                              // @__mulddi3
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.151
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.151
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.151
	movk	x16, #:abs_g3:__llvm_gcov_ctr.151
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	movz	x16, #:abs_g0_nc:.L__profc___mulddi3
	movk	x16, #:abs_g1_nc:.L__profc___mulddi3
	movk	x16, #:abs_g2_nc:.L__profc___mulddi3
	movk	x16, #:abs_g3:.L__profc___mulddi3
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #32                         // =0x20
	str	w8, [sp, #28]
	mov	w8, #-1                         // =0xffffffff
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #16]
	ldur	w8, [x29, #-8]
	mov	w0, w8
	ldur	w8, [x29, #-16]
	mov	w1, w8
	mov	w16, w1
	mov	w8, w0
	umull	x8, w8, w16
	str	x8, [sp, #32]
	ldr	w8, [sp, #36]
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #8]
	ldr	w8, [sp, #32]
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #32]
	ldur	w8, [x29, #-4]
	mov	w0, w8
	ldur	w8, [x29, #-16]
	mov	w1, w8
	ldr	x17, [sp, #8]
	mov	w16, w1
	mov	w8, w0
	umaddl	x8, w8, w16, x17
	str	x8, [sp, #8]
	ldr	x16, [sp, #8]
	ldr	x8, [sp, #32]
	add	x8, x8, x16, lsl #32
	str	x8, [sp, #32]
	ldr	w8, [sp, #12]
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #40]
	ldr	w8, [sp, #36]
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #8]
	ldr	w8, [sp, #32]
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #32]
	ldur	w8, [x29, #-12]
	mov	w0, w8
	ldur	w8, [x29, #-8]
	mov	w1, w8
	ldr	x17, [sp, #8]
	mov	w16, w1
	mov	w8, w0
	umaddl	x8, w8, w16, x17
	str	x8, [sp, #8]
	ldr	x16, [sp, #8]
	ldr	x8, [sp, #32]
	add	x8, x8, x16, lsl #32
	str	x8, [sp, #32]
	ldr	w8, [sp, #12]
	mov	w16, w8
	ldr	x8, [sp, #40]
	add	x8, x8, x16
	str	x8, [sp, #40]
	ldur	w8, [x29, #-4]
	mov	w0, w8
	ldur	w8, [x29, #-12]
	mov	w1, w8
	ldr	x17, [sp, #40]
	mov	w16, w1
	mov	w8, w0
	umaddl	x8, w8, w16, x17
	str	x8, [sp, #40]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end151:
	.size	__mulddi3, .Lfunc_end151-__mulddi3
	.cfi_endproc
                                        // -- End function
	.globl	__multi3                        // -- Begin function __multi3
	.p2align	2
	.type	__multi3,@function
__multi3:                               // @__multi3
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.152
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.152
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.152
	movk	x16, #:abs_g3:__llvm_gcov_ctr.152
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x1, [x29, #-8]
	stur	x0, [x29, #-16]
	stur	x3, [x29, #-24]
	stur	x2, [x29, #-32]
	movz	x16, #:abs_g0_nc:.L__profc___multi3
	movk	x16, #:abs_g1_nc:.L__profc___multi3
	movk	x16, #:abs_g2_nc:.L__profc___multi3
	movk	x16, #:abs_g3:.L__profc___multi3
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	ldur	x16, [x29, #-8]
	str	x16, [sp, #40]
	str	x8, [sp, #32]
	ldur	x8, [x29, #-32]
	ldur	x16, [x29, #-24]
	str	x16, [sp, #24]
	str	x8, [sp, #16]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #16]
	bl	__mulddi3
	str	x1, [sp, #8]
	str	x0, [sp]
	ldr	x8, [sp, #40]
	ldr	x16, [sp, #16]
	mul	x8, x8, x16
	ldr	x16, [sp, #32]
	ldr	x17, [sp, #24]
	mul	x16, x16, x17
	add	x16, x8, x16
	ldr	x8, [sp, #8]
	add	x8, x8, x16
	str	x8, [sp, #8]
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end152:
	.size	__multi3, .Lfunc_end152-__multi3
	.cfi_endproc
                                        // -- End function
	.globl	__negdi2                        // -- Begin function __negdi2
	.p2align	2
	.type	__negdi2,@function
__negdi2:                               // @__negdi2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.153
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.153
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.153
	movk	x16, #:abs_g3:__llvm_gcov_ctr.153
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	movz	x16, #:abs_g0_nc:.L__profc___negdi2
	movk	x16, #:abs_g1_nc:.L__profc___negdi2
	movk	x16, #:abs_g2_nc:.L__profc___negdi2
	movk	x16, #:abs_g3:.L__profc___negdi2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp, #8]
	mov	x8, xzr
	subs	x0, x8, x16
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end153:
	.size	__negdi2, .Lfunc_end153-__negdi2
	.cfi_endproc
                                        // -- End function
	.globl	__negti2                        // -- Begin function __negti2
	.p2align	2
	.type	__negti2,@function
__negti2:                               // @__negti2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.154
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.154
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.154
	movk	x16, #:abs_g3:__llvm_gcov_ctr.154
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x1, [sp, #8]
	str	x0, [sp]
	movz	x16, #:abs_g0_nc:.L__profc___negti2
	movk	x16, #:abs_g1_nc:.L__profc___negti2
	movk	x16, #:abs_g2_nc:.L__profc___negti2
	movk	x16, #:abs_g3:.L__profc___negti2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x16, [sp, #8]
	ldr	x17, [sp]
	mov	x8, xzr
	subs	x0, x8, x17
	sbc	x1, x8, x16
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end154:
	.size	__negti2, .Lfunc_end154-__negti2
	.cfi_endproc
                                        // -- End function
	.globl	__paritydi2                     // -- Begin function __paritydi2
	.p2align	2
	.type	__paritydi2,@function
__paritydi2:                            // @__paritydi2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.155
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.155
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.155
	movk	x16, #:abs_g3:__llvm_gcov_ctr.155
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	movz	x16, #:abs_g0_nc:.L__profc___paritydi2
	movk	x16, #:abs_g1_nc:.L__profc___paritydi2
	movk	x16, #:abs_g2_nc:.L__profc___paritydi2
	movk	x16, #:abs_g3:.L__profc___paritydi2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	ldr	w8, [sp, #20]
	ldr	w16, [sp, #16]
	eor	w8, w8, w16
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	eor	w8, w8, w8, lsr #16
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	eor	w8, w8, w8, lsr #8
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	eor	w8, w8, w8, lsr #4
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	and	w16, w8, #0xf
	mov	w8, #27030                      // =0x6996
	lsr	w8, w8, w16
	and	w0, w8, #0x1
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end155:
	.size	__paritydi2, .Lfunc_end155-__paritydi2
	.cfi_endproc
                                        // -- End function
	.globl	__parityti2                     // -- Begin function __parityti2
	.p2align	2
	.type	__parityti2,@function
__parityti2:                            // @__parityti2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.156
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.156
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.156
	movk	x16, #:abs_g3:__llvm_gcov_ctr.156
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x1, [x29, #-8]
	stur	x0, [x29, #-16]
	movz	x16, #:abs_g0_nc:.L__profc___parityti2
	movk	x16, #:abs_g1_nc:.L__profc___parityti2
	movk	x16, #:abs_g2_nc:.L__profc___parityti2
	movk	x16, #:abs_g3:.L__profc___parityti2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	ldur	x16, [x29, #-8]
	str	x16, [sp, #24]
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x16, [sp, #16]
	eor	x8, x8, x16
	str	x8, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w16, [sp, #8]
	eor	w8, w8, w16
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	eor	w8, w8, w8, lsr #16
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	eor	w8, w8, w8, lsr #8
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	eor	w8, w8, w8, lsr #4
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	and	w16, w8, #0xf
	mov	w8, #27030                      // =0x6996
	lsr	w8, w8, w16
	and	w0, w8, #0x1
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end156:
	.size	__parityti2, .Lfunc_end156-__parityti2
	.cfi_endproc
                                        // -- End function
	.globl	__paritysi2                     // -- Begin function __paritysi2
	.p2align	2
	.type	__paritysi2,@function
__paritysi2:                            // @__paritysi2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.157
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.157
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.157
	movk	x16, #:abs_g3:__llvm_gcov_ctr.157
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc___paritysi2
	movk	x16, #:abs_g1_nc:.L__profc___paritysi2
	movk	x16, #:abs_g2_nc:.L__profc___paritysi2
	movk	x16, #:abs_g3:.L__profc___paritysi2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	eor	w8, w8, w8, lsr #16
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	eor	w8, w8, w8, lsr #8
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	eor	w8, w8, w8, lsr #4
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	and	w16, w8, #0xf
	mov	w8, #27030                      // =0x6996
	lsr	w8, w8, w16
	and	w0, w8, #0x1
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end157:
	.size	__paritysi2, .Lfunc_end157-__paritysi2
	.cfi_endproc
                                        // -- End function
	.globl	__popcountdi2                   // -- Begin function __popcountdi2
	.p2align	2
	.type	__popcountdi2,@function
__popcountdi2:                          // @__popcountdi2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.158
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.158
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.158
	movk	x16, #:abs_g3:__llvm_gcov_ctr.158
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x0, [x29, #-8]
	movz	x16, #:abs_g0_nc:.L__profc___popcountdi2
	movk	x16, #:abs_g1_nc:.L__profc___popcountdi2
	movk	x16, #:abs_g2_nc:.L__profc___popcountdi2
	movk	x16, #:abs_g3:.L__profc___popcountdi2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	lsr	x16, x8, #1
	and	x16, x16, #0x5555555555555555
	subs	x8, x8, x16
	str	x8, [sp, #16]
	ldr	x16, [sp, #16]
	lsr	x8, x16, #2
	and	x8, x8, #0x3333333333333333
	and	x16, x16, #0x3333333333333333
	add	x8, x8, x16
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	add	x8, x8, x8, lsr #4
	and	x8, x8, #0xf0f0f0f0f0f0f0f
	str	x8, [sp, #16]
	ldr	w16, [sp, #20]
	ldr	w8, [sp, #16]
	add	w8, w8, w16
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	add	w8, w8, w8, lsr #16
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	add	w8, w8, w8, lsr #8
	and	w0, w8, #0x7f
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end158:
	.size	__popcountdi2, .Lfunc_end158-__popcountdi2
	.cfi_endproc
                                        // -- End function
	.globl	__popcountsi2                   // -- Begin function __popcountsi2
	.p2align	2
	.type	__popcountsi2,@function
__popcountsi2:                          // @__popcountsi2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.159
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.159
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.159
	movk	x16, #:abs_g3:__llvm_gcov_ctr.159
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	w0, [x29, #-4]
	movz	x16, #:abs_g0_nc:.L__profc___popcountsi2
	movk	x16, #:abs_g1_nc:.L__profc___popcountsi2
	movk	x16, #:abs_g2_nc:.L__profc___popcountsi2
	movk	x16, #:abs_g3:.L__profc___popcountsi2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	lsr	w16, w8, #1
	and	w16, w16, #0x55555555
	subs	w8, w8, w16
	str	w8, [sp, #8]
	ldr	w16, [sp, #8]
	lsr	w8, w16, #2
	and	w8, w8, #0x33333333
	and	w16, w16, #0x33333333
	add	w8, w8, w16
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	add	w8, w8, w8, lsr #4
	and	w8, w8, #0xf0f0f0f
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	add	w8, w8, w8, lsr #16
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	add	w8, w8, w8, lsr #8
	and	w0, w8, #0x3f
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end159:
	.size	__popcountsi2, .Lfunc_end159-__popcountsi2
	.cfi_endproc
                                        // -- End function
	.globl	__popcountti2                   // -- Begin function __popcountti2
	.p2align	2
	.type	__popcountti2,@function
__popcountti2:                          // @__popcountti2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.160
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.160
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.160
	movk	x16, #:abs_g3:__llvm_gcov_ctr.160
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	stur	x1, [x29, #-8]
	stur	x0, [x29, #-16]
	movz	x16, #:abs_g0_nc:.L__profc___popcountti2
	movk	x16, #:abs_g1_nc:.L__profc___popcountti2
	movk	x16, #:abs_g2_nc:.L__profc___popcountti2
	movk	x16, #:abs_g3:.L__profc___popcountti2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	ldur	x16, [x29, #-8]
	str	x16, [sp, #24]
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x16, [sp, #16]
	lsr	x0, x16, #1
	lsr	x17, x8, #1
	and	x17, x17, #0x5555555555555555
	and	x0, x0, #0x5555555555555555
	subs	x16, x16, x0
	sbc	x8, x8, x17
	str	x16, [sp, #16]
	str	x8, [sp, #24]
	ldr	x17, [sp, #24]
	ldr	x0, [sp, #16]
	lsr	x8, x0, #2
	lsr	x16, x17, #2
	and	x16, x16, #0x3333333333333333
	and	x8, x8, #0x3333333333333333
	and	x17, x17, #0x3333333333333333
	and	x0, x0, #0x3333333333333333
	add	x8, x8, x0
	add	x16, x16, x17
	str	x16, [sp, #24]
	str	x8, [sp, #16]
	ldr	x16, [sp, #16]
	ldr	x8, [sp, #24]
	extr	x0, x8, x16, #4
	lsr	x17, x8, #4
	adds	x16, x16, x0
	adc	x8, x8, x17
	and	x8, x8, #0xf0f0f0f0f0f0f0f
	and	x16, x16, #0xf0f0f0f0f0f0f0f
	str	x16, [sp, #16]
	str	x8, [sp, #24]
	ldr	x16, [sp, #24]
	ldr	x8, [sp, #16]
	add	x8, x8, x16
	str	x8, [sp, #8]
	ldr	w16, [sp, #12]
	ldr	w8, [sp, #8]
	add	w8, w8, w16
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	add	w8, w8, w8, lsr #16
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	add	w8, w8, w8, lsr #8
	and	w0, w8, #0xff
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end160:
	.size	__popcountti2, .Lfunc_end160-__popcountti2
	.cfi_endproc
                                        // -- End function
	.globl	__powidf2                       // -- Begin function __powidf2
	.p2align	2
	.type	__powidf2,@function
__powidf2:                              // @__powidf2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	d0, [x29, #-8]
	stur	w0, [x29, #-12]
	movz	x16, #:abs_g0_nc:.L__profc___powidf2
	movk	x16, #:abs_g1_nc:.L__profc___powidf2
	movk	x16, #:abs_g2_nc:.L__profc___powidf2
	movk	x16, #:abs_g3:.L__profc___powidf2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-12]
	lsr	w8, w8, #31
	str	w8, [sp, #16]
	mov	x8, #4607182418800017408        // =0x3ff0000000000000
	str	x8, [sp, #8]
	b	.LBB162_1
.LBB162_1:                              // =>This Inner Loop Header: Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___powidf2+8
	movk	x16, #:abs_g1_nc:.L__profc___powidf2+8
	movk	x16, #:abs_g2_nc:.L__profc___powidf2+8
	movk	x16, #:abs_g3:.L__profc___powidf2+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurb	w8, [x29, #-12]
	tbz	w8, #0, .LBB162_3
	b	.LBB162_2
.LBB162_2:                              //   in Loop: Header=BB162_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.161
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.161
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.161
	movk	x16, #:abs_g3:__llvm_gcov_ctr.161
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___powidf2+16
	movk	x16, #:abs_g1_nc:.L__profc___powidf2+16
	movk	x16, #:abs_g2_nc:.L__profc___powidf2+16
	movk	x16, #:abs_g3:.L__profc___powidf2+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	d1, [x29, #-8]
	ldr	d0, [sp, #8]
	fmul	d0, d0, d1
	str	d0, [sp, #8]
	b	.LBB162_3
.LBB162_3:                              //   in Loop: Header=BB162_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, w8, lsr #31
	asr	w8, w8, #1
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	cbnz	w8, .LBB162_5
	b	.LBB162_4
.LBB162_4:
	movz	x16, #:abs_g0_nc:.L__profc___powidf2+24
	movk	x16, #:abs_g1_nc:.L__profc___powidf2+24
	movk	x16, #:abs_g2_nc:.L__profc___powidf2+24
	movk	x16, #:abs_g3:.L__profc___powidf2+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB162_6
.LBB162_5:                              //   in Loop: Header=BB162_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.161+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.161+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.161+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.161+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	d0, [x29, #-8]
	fmul	d0, d0, d0
	stur	d0, [x29, #-8]
	b	.LBB162_1
.LBB162_6:
	ldr	w8, [sp, #16]
	cbz	w8, .LBB162_8
	b	.LBB162_7
.LBB162_7:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.161+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.161+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.161+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.161+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___powidf2+32
	movk	x16, #:abs_g1_nc:.L__profc___powidf2+32
	movk	x16, #:abs_g2_nc:.L__profc___powidf2+32
	movk	x16, #:abs_g3:.L__profc___powidf2+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d1, [sp, #8]
	fmov	d0, #1.00000000
	fdiv	d0, d0, d1
	str	d0, [sp]                        // 8-byte Folded Spill
	b	.LBB162_9
.LBB162_8:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.161+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.161+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.161+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.161+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	d0, [sp, #8]
	str	d0, [sp]                        // 8-byte Folded Spill
	b	.LBB162_9
.LBB162_9:
	ldr	d0, [sp]                        // 8-byte Folded Reload
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end161:
	.size	__powidf2, .Lfunc_end161-__powidf2
	.cfi_endproc
                                        // -- End function
	.globl	__powisf2                       // -- Begin function __powisf2
	.p2align	2
	.type	__powisf2,@function
__powisf2:                              // @__powisf2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	s0, [x29, #-4]
	stur	w0, [x29, #-8]
	movz	x16, #:abs_g0_nc:.L__profc___powisf2
	movk	x16, #:abs_g1_nc:.L__profc___powisf2
	movk	x16, #:abs_g2_nc:.L__profc___powisf2
	movk	x16, #:abs_g3:.L__profc___powisf2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	w8, [x29, #-8]
	lsr	w8, w8, #31
	stur	w8, [x29, #-12]
	mov	w8, #1065353216                 // =0x3f800000
	str	w8, [sp, #16]
	b	.LBB163_1
.LBB163_1:                              // =>This Inner Loop Header: Depth=1
	movz	x16, #:abs_g0_nc:.L__profc___powisf2+8
	movk	x16, #:abs_g1_nc:.L__profc___powisf2+8
	movk	x16, #:abs_g2_nc:.L__profc___powisf2+8
	movk	x16, #:abs_g3:.L__profc___powisf2+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldurb	w8, [x29, #-8]
	tbz	w8, #0, .LBB163_3
	b	.LBB163_2
.LBB163_2:                              //   in Loop: Header=BB163_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.162
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.162
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.162
	movk	x16, #:abs_g3:__llvm_gcov_ctr.162
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___powisf2+16
	movk	x16, #:abs_g1_nc:.L__profc___powisf2+16
	movk	x16, #:abs_g2_nc:.L__profc___powisf2+16
	movk	x16, #:abs_g3:.L__profc___powisf2+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s1, [x29, #-4]
	ldr	s0, [sp, #16]
	fmul	s0, s0, s1
	str	s0, [sp, #16]
	b	.LBB163_3
.LBB163_3:                              //   in Loop: Header=BB163_1 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, w8, lsr #31
	asr	w8, w8, #1
	stur	w8, [x29, #-8]
	ldur	w8, [x29, #-8]
	cbnz	w8, .LBB163_5
	b	.LBB163_4
.LBB163_4:
	movz	x16, #:abs_g0_nc:.L__profc___powisf2+24
	movk	x16, #:abs_g1_nc:.L__profc___powisf2+24
	movk	x16, #:abs_g2_nc:.L__profc___powisf2+24
	movk	x16, #:abs_g3:.L__profc___powisf2+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	b	.LBB163_6
.LBB163_5:                              //   in Loop: Header=BB163_1 Depth=1
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.162+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.162+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.162+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.162+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	s0, [x29, #-4]
	fmul	s0, s0, s0
	stur	s0, [x29, #-4]
	b	.LBB163_1
.LBB163_6:
	ldur	w8, [x29, #-12]
	cbz	w8, .LBB163_8
	b	.LBB163_7
.LBB163_7:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.162+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.162+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.162+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.162+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___powisf2+32
	movk	x16, #:abs_g1_nc:.L__profc___powisf2+32
	movk	x16, #:abs_g2_nc:.L__profc___powisf2+32
	movk	x16, #:abs_g3:.L__profc___powisf2+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	s1, [sp, #16]
	fmov	s0, #1.00000000
	fdiv	s0, s0, s1
	str	s0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB163_9
.LBB163_8:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.162+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.162+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.162+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.162+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	s0, [sp, #16]
	str	s0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB163_9
.LBB163_9:
	ldr	s0, [sp, #12]                   // 4-byte Folded Reload
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x0, #0                          // =0x0
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end162:
	.size	__powisf2, .Lfunc_end162-__powisf2
	.cfi_endproc
                                        // -- End function
	.globl	__ucmpdi2                       // -- Begin function __ucmpdi2
	.p2align	2
	.type	__ucmpdi2,@function
__ucmpdi2:                              // @__ucmpdi2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	movz	x16, #:abs_g0_nc:.L__profc___ucmpdi2
	movk	x16, #:abs_g1_nc:.L__profc___ucmpdi2
	movk	x16, #:abs_g2_nc:.L__profc___ucmpdi2
	movk	x16, #:abs_g3:.L__profc___ucmpdi2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	ldr	w8, [sp, #20]
	ldr	w16, [sp, #12]
	subs	w8, w8, w16
	b.hs	.LBB164_2
	b	.LBB164_1
.LBB164_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.163
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.163
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.163
	movk	x16, #:abs_g3:__llvm_gcov_ctr.163
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___ucmpdi2+8
	movk	x16, #:abs_g1_nc:.L__profc___ucmpdi2+8
	movk	x16, #:abs_g2_nc:.L__profc___ucmpdi2+8
	movk	x16, #:abs_g3:.L__profc___ucmpdi2+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB164_9
.LBB164_2:
	ldr	w8, [sp, #20]
	ldr	w16, [sp, #12]
	subs	w8, w8, w16
	b.ls	.LBB164_4
	b	.LBB164_3
.LBB164_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.163+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.163+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.163+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.163+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___ucmpdi2+16
	movk	x16, #:abs_g1_nc:.L__profc___ucmpdi2+16
	movk	x16, #:abs_g2_nc:.L__profc___ucmpdi2+16
	movk	x16, #:abs_g3:.L__profc___ucmpdi2+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #2                          // =0x2
	stur	w8, [x29, #-4]
	b	.LBB164_9
.LBB164_4:
	ldr	w8, [sp, #16]
	ldr	w16, [sp, #8]
	subs	w8, w8, w16
	b.hs	.LBB164_6
	b	.LBB164_5
.LBB164_5:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.163+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.163+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.163+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.163+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___ucmpdi2+24
	movk	x16, #:abs_g1_nc:.L__profc___ucmpdi2+24
	movk	x16, #:abs_g2_nc:.L__profc___ucmpdi2+24
	movk	x16, #:abs_g3:.L__profc___ucmpdi2+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB164_9
.LBB164_6:
	ldr	w8, [sp, #16]
	ldr	w16, [sp, #8]
	subs	w8, w8, w16
	b.ls	.LBB164_8
	b	.LBB164_7
.LBB164_7:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.163+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.163+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.163+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.163+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___ucmpdi2+32
	movk	x16, #:abs_g1_nc:.L__profc___ucmpdi2+32
	movk	x16, #:abs_g2_nc:.L__profc___ucmpdi2+32
	movk	x16, #:abs_g3:.L__profc___ucmpdi2+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #2                          // =0x2
	stur	w8, [x29, #-4]
	b	.LBB164_9
.LBB164_8:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.163+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.163+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.163+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.163+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB164_9
.LBB164_9:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end163:
	.size	__ucmpdi2, .Lfunc_end163-__ucmpdi2
	.cfi_endproc
                                        // -- End function
	.globl	__aeabi_ulcmp                   // -- Begin function __aeabi_ulcmp
	.p2align	2
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          // @__aeabi_ulcmp
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.164
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.164
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.164
	movk	x16, #:abs_g3:__llvm_gcov_ctr.164
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	str	x0, [sp, #8]
	str	x1, [sp]
	movz	x16, #:abs_g0_nc:.L__profc___aeabi_ulcmp
	movk	x16, #:abs_g1_nc:.L__profc___aeabi_ulcmp
	movk	x16, #:abs_g2_nc:.L__profc___aeabi_ulcmp
	movk	x16, #:abs_g3:.L__profc___aeabi_ulcmp
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ucmpdi2
	subs	w0, w0, #1
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end164:
	.size	__aeabi_ulcmp, .Lfunc_end164-__aeabi_ulcmp
	.cfi_endproc
                                        // -- End function
	.globl	__ucmpti2                       // -- Begin function __ucmpti2
	.p2align	2
	.type	__ucmpti2,@function
__ucmpti2:                              // @__ucmpti2
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-24]
	stur	x0, [x29, #-32]
	str	x3, [sp, #40]
	str	x2, [sp, #32]
	movz	x16, #:abs_g0_nc:.L__profc___ucmpti2
	movk	x16, #:abs_g1_nc:.L__profc___ucmpti2
	movk	x16, #:abs_g2_nc:.L__profc___ucmpti2
	movk	x16, #:abs_g3:.L__profc___ucmpti2
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	ldur	x8, [x29, #-32]
	ldur	x16, [x29, #-24]
	str	x16, [sp, #24]
	str	x8, [sp, #16]
	ldr	x8, [sp, #32]
	ldr	x16, [sp, #40]
	str	x16, [sp, #8]
	str	x8, [sp]
	ldr	x8, [sp, #24]
	ldr	x16, [sp, #8]
	subs	x8, x8, x16
	b.hs	.LBB166_2
	b	.LBB166_1
.LBB166_1:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.165
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.165
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.165
	movk	x16, #:abs_g3:__llvm_gcov_ctr.165
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___ucmpti2+8
	movk	x16, #:abs_g1_nc:.L__profc___ucmpti2+8
	movk	x16, #:abs_g2_nc:.L__profc___ucmpti2+8
	movk	x16, #:abs_g3:.L__profc___ucmpti2+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB166_9
.LBB166_2:
	ldr	x8, [sp, #24]
	ldr	x16, [sp, #8]
	subs	x8, x8, x16
	b.ls	.LBB166_4
	b	.LBB166_3
.LBB166_3:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.165+8
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.165+8
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.165+8
	movk	x16, #:abs_g3:__llvm_gcov_ctr.165+8
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___ucmpti2+16
	movk	x16, #:abs_g1_nc:.L__profc___ucmpti2+16
	movk	x16, #:abs_g2_nc:.L__profc___ucmpti2+16
	movk	x16, #:abs_g3:.L__profc___ucmpti2+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #2                          // =0x2
	stur	w8, [x29, #-4]
	b	.LBB166_9
.LBB166_4:
	ldr	x8, [sp, #16]
	ldr	x16, [sp]
	subs	x8, x8, x16
	b.hs	.LBB166_6
	b	.LBB166_5
.LBB166_5:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.165+16
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.165+16
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.165+16
	movk	x16, #:abs_g3:__llvm_gcov_ctr.165+16
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___ucmpti2+24
	movk	x16, #:abs_g1_nc:.L__profc___ucmpti2+24
	movk	x16, #:abs_g2_nc:.L__profc___ucmpti2+24
	movk	x16, #:abs_g3:.L__profc___ucmpti2+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB166_9
.LBB166_6:
	ldr	x8, [sp, #16]
	ldr	x16, [sp]
	subs	x8, x8, x16
	b.ls	.LBB166_8
	b	.LBB166_7
.LBB166_7:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.165+24
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.165+24
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.165+24
	movk	x16, #:abs_g3:__llvm_gcov_ctr.165+24
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	movz	x16, #:abs_g0_nc:.L__profc___ucmpti2+32
	movk	x16, #:abs_g1_nc:.L__profc___ucmpti2+32
	movk	x16, #:abs_g2_nc:.L__profc___ucmpti2+32
	movk	x16, #:abs_g3:.L__profc___ucmpti2+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #2                          // =0x2
	stur	w8, [x29, #-4]
	b	.LBB166_9
.LBB166_8:
	movz	x16, #:abs_g0_nc:__llvm_gcov_ctr.165+32
	movk	x16, #:abs_g1_nc:__llvm_gcov_ctr.165+32
	movk	x16, #:abs_g2_nc:__llvm_gcov_ctr.165+32
	movk	x16, #:abs_g3:__llvm_gcov_ctr.165+32
	ldr	x8, [x16]
	add	x8, x8, #1
	str	x8, [x16]
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB166_9
.LBB166_9:
	ldur	w0, [x29, #-4]
	.cfi_def_cfa wsp, 96
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	mov	x1, #0                          // =0x0
	mov	x2, #0                          // =0x0
	mov	x3, #0                          // =0x0
	mov	x4, #0                          // =0x0
	mov	x5, #0                          // =0x0
	mov	x6, #0                          // =0x0
	mov	x7, #0                          // =0x0
	mov	x8, #0                          // =0x0
	mov	x16, #0                         // =0x0
	mov	x17, #0                         // =0x0
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v25.2d, #0000000000000000
	movi	v26.2d, #0000000000000000
	movi	v27.2d, #0000000000000000
	movi	v28.2d, #0000000000000000
	movi	v29.2d, #0000000000000000
	movi	v30.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ret
	dsb	sy
	isb
.Lfunc_end165:
	.size	__ucmpti2, .Lfunc_end165-__ucmpti2
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function __llvm_gcov_writeout
	.type	__llvm_gcov_writeout,@function
__llvm_gcov_writeout:                   // @__llvm_gcov_writeout
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, wzr
	stur	w8, [x29, #-4]                  // 4-byte Folded Spill
	b	.LBB167_1
.LBB167_1:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB167_3 Depth 2
	ldur	w8, [x29, #-4]                  // 4-byte Folded Reload
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	movz	x17, #:abs_g0_nc:__llvm_internal_gcov_emit_file_info
	movk	x17, #:abs_g1_nc:__llvm_internal_gcov_emit_file_info
	movk	x17, #:abs_g2_nc:__llvm_internal_gcov_emit_file_info
	movk	x17, #:abs_g3:__llvm_internal_gcov_emit_file_info
	mov	w16, #40                        // =0x28
	smaddl	x8, w8, w16, x17
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldr	x0, [x8]
	ldr	w1, [x8, #8]
	ldr	w2, [x8, #12]
	bl	llvm_gcda_start_file
	ldr	x16, [sp, #24]                  // 8-byte Folded Reload
	ldr	w8, [x16, #16]
	mov	w17, w8
	stur	w17, [x29, #-28]                // 4-byte Folded Spill
	ldr	x17, [x16, #24]
	stur	x17, [x29, #-24]                // 8-byte Folded Spill
	ldr	x16, [x16, #32]
	stur	x16, [x29, #-16]                // 8-byte Folded Spill
	subs	w8, w8, #1
	b.lt	.LBB167_5
	b	.LBB167_2
.LBB167_2:                              //   in Loop: Header=BB167_1 Depth=1
	mov	w8, wzr
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB167_3
.LBB167_3:                              //   Parent Loop BB167_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	ldur	x17, [x29, #-24]                // 8-byte Folded Reload
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	mov	w16, #12                        // =0xc
	smaddl	x8, w8, w16, x17
	ldr	w0, [x8]
	ldr	w1, [x8, #4]
	ldr	w2, [x8, #8]
	bl	llvm_gcda_emit_function
	ldur	x8, [x29, #-16]                 // 8-byte Folded Reload
	ldr	w16, [sp, #12]                  // 4-byte Folded Reload
	add	x8, x8, w16, sxtw #4
	ldr	w0, [x8]
	ldr	x1, [x8, #8]
	bl	llvm_gcda_emit_arcs
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	ldur	w17, [x29, #-28]                // 4-byte Folded Reload
	add	w16, w8, #1
	mov	w8, w16
	subs	w16, w16, w17
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b.lt	.LBB167_3
	b	.LBB167_4
.LBB167_4:                              //   in Loop: Header=BB167_1 Depth=1
	b	.LBB167_5
.LBB167_5:                              //   in Loop: Header=BB167_1 Depth=1
	bl	llvm_gcda_summary_info
	bl	llvm_gcda_end_file
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	add	w16, w8, #1
	mov	w8, w16
	subs	w16, w16, #1
	stur	w8, [x29, #-4]                  // 4-byte Folded Spill
	b.lt	.LBB167_1
	b	.LBB167_6
.LBB167_6:
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	dsb	sy
	isb
.Lfunc_end166:
	.size	__llvm_gcov_writeout, .Lfunc_end166-__llvm_gcov_writeout
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function __llvm_gcov_reset
	.type	__llvm_gcov_reset,@function
__llvm_gcov_reset:                      // @__llvm_gcov_reset
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr
	movk	x8, #:abs_g3:__llvm_gcov_ctr
	mov	w1, wzr
	stur	w1, [x29, #-12]                 // 4-byte Folded Spill
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.1
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.1
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.1
	movk	x8, #:abs_g3:__llvm_gcov_ctr.1
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.2
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.2
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.2
	movk	x0, #:abs_g3:__llvm_gcov_ctr.2
	mov	w8, #40                         // =0x28
	mov	w2, w8
	stur	x2, [x29, #-8]                  // 8-byte Folded Spill
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x2, [x29, #-8]                  // 8-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.3
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.3
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.3
	movk	x0, #:abs_g3:__llvm_gcov_ctr.3
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x2, [x29, #-8]                  // 8-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.4
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.4
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.4
	movk	x0, #:abs_g3:__llvm_gcov_ctr.4
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x2, [x29, #-8]                  // 8-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.5
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.5
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.5
	movk	x0, #:abs_g3:__llvm_gcov_ctr.5
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.6
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.6
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.6
	movk	x0, #:abs_g3:__llvm_gcov_ctr.6
	mov	w8, #16                         // =0x10
	mov	w2, w8
	str	x2, [sp, #8]                    // 8-byte Folded Spill
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.7
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.7
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.7
	movk	x0, #:abs_g3:__llvm_gcov_ctr.7
	mov	w8, #24                         // =0x18
	mov	w2, w8
	str	x2, [sp, #32]                   // 8-byte Folded Spill
	bl	memset
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.8
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.8
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.8
	movk	x0, #:abs_g3:__llvm_gcov_ctr.8
	bl	memset
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.9
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.9
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.9
	movk	x0, #:abs_g3:__llvm_gcov_ctr.9
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.10
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.10
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.10
	movk	x0, #:abs_g3:__llvm_gcov_ctr.10
	mov	w8, #32                         // =0x20
	mov	w2, w8
	stur	x2, [x29, #-24]                 // 8-byte Folded Spill
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.11
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.11
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.11
	movk	x0, #:abs_g3:__llvm_gcov_ctr.11
	bl	memset
	ldur	x2, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.12
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.12
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.12
	movk	x0, #:abs_g3:__llvm_gcov_ctr.12
	bl	memset
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.13
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.13
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.13
	movk	x0, #:abs_g3:__llvm_gcov_ctr.13
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.14
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.14
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.14
	movk	x0, #:abs_g3:__llvm_gcov_ctr.14
	mov	w8, #56                         // =0x38
	mov	w2, w8
	str	x2, [sp, #16]                   // 8-byte Folded Spill
	bl	memset
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.15
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.15
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.15
	movk	x0, #:abs_g3:__llvm_gcov_ctr.15
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.16
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.16
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.16
	movk	x8, #:abs_g3:__llvm_gcov_ctr.16
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.17
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.17
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.17
	movk	x8, #:abs_g3:__llvm_gcov_ctr.17
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.18
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.18
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.18
	movk	x0, #:abs_g3:__llvm_gcov_ctr.18
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.19
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.19
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.19
	movk	x0, #:abs_g3:__llvm_gcov_ctr.19
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.20
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.20
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.20
	movk	x8, #:abs_g3:__llvm_gcov_ctr.20
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.21
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.21
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.21
	movk	x8, #:abs_g3:__llvm_gcov_ctr.21
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.22
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.22
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.22
	movk	x8, #:abs_g3:__llvm_gcov_ctr.22
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.23
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.23
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.23
	movk	x8, #:abs_g3:__llvm_gcov_ctr.23
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.24
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.24
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.24
	movk	x0, #:abs_g3:__llvm_gcov_ctr.24
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x2, [x29, #-8]                  // 8-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.25
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.25
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.25
	movk	x8, #:abs_g3:__llvm_gcov_ctr.25
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.26
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.26
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.26
	movk	x0, #:abs_g3:__llvm_gcov_ctr.26
	bl	memset
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.27
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.27
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.27
	movk	x8, #:abs_g3:__llvm_gcov_ctr.27
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.28
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.28
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.28
	movk	x0, #:abs_g3:__llvm_gcov_ctr.28
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.29
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.29
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.29
	movk	x0, #:abs_g3:__llvm_gcov_ctr.29
	bl	memset
	ldur	x2, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.30
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.30
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.30
	movk	x8, #:abs_g3:__llvm_gcov_ctr.30
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.31
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.31
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.31
	movk	x0, #:abs_g3:__llvm_gcov_ctr.31
	bl	memset
	ldur	x2, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.32
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.32
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.32
	movk	x0, #:abs_g3:__llvm_gcov_ctr.32
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.33
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.33
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.33
	movk	x0, #:abs_g3:__llvm_gcov_ctr.33
	mov	w8, #48                         // =0x30
	mov	w2, w8
	str	x2, [sp]                        // 8-byte Folded Spill
	bl	memset
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.34
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.34
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.34
	movk	x0, #:abs_g3:__llvm_gcov_ctr.34
	bl	memset
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.35
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.35
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.35
	movk	x0, #:abs_g3:__llvm_gcov_ctr.35
	bl	memset
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.36
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.36
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.36
	movk	x0, #:abs_g3:__llvm_gcov_ctr.36
	bl	memset
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.37
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.37
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.37
	movk	x0, #:abs_g3:__llvm_gcov_ctr.37
	bl	memset
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.38
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.38
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.38
	movk	x0, #:abs_g3:__llvm_gcov_ctr.38
	bl	memset
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.39
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.39
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.39
	movk	x0, #:abs_g3:__llvm_gcov_ctr.39
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.40
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.40
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.40
	movk	x8, #:abs_g3:__llvm_gcov_ctr.40
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.41
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.41
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.41
	movk	x8, #:abs_g3:__llvm_gcov_ctr.41
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.42
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.42
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.42
	movk	x0, #:abs_g3:__llvm_gcov_ctr.42
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.43
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.43
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.43
	movk	x0, #:abs_g3:__llvm_gcov_ctr.43
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.44
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.44
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.44
	movk	x0, #:abs_g3:__llvm_gcov_ctr.44
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.45
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.45
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.45
	movk	x0, #:abs_g3:__llvm_gcov_ctr.45
	bl	memset
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.46
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.46
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.46
	movk	x0, #:abs_g3:__llvm_gcov_ctr.46
	bl	memset
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.47
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.47
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.47
	movk	x0, #:abs_g3:__llvm_gcov_ctr.47
	bl	memset
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.48
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.48
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.48
	movk	x0, #:abs_g3:__llvm_gcov_ctr.48
	bl	memset
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.49
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.49
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.49
	movk	x0, #:abs_g3:__llvm_gcov_ctr.49
	bl	memset
	ldur	x2, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.50
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.50
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.50
	movk	x0, #:abs_g3:__llvm_gcov_ctr.50
	bl	memset
	ldur	x2, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.51
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.51
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.51
	movk	x0, #:abs_g3:__llvm_gcov_ctr.51
	bl	memset
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.52
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.52
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.52
	movk	x8, #:abs_g3:__llvm_gcov_ctr.52
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.53
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.53
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.53
	movk	x0, #:abs_g3:__llvm_gcov_ctr.53
	bl	memset
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.54
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.54
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.54
	movk	x8, #:abs_g3:__llvm_gcov_ctr.54
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.55
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.55
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.55
	movk	x0, #:abs_g3:__llvm_gcov_ctr.55
	bl	memset
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.56
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.56
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.56
	movk	x8, #:abs_g3:__llvm_gcov_ctr.56
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.57
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.57
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.57
	movk	x0, #:abs_g3:__llvm_gcov_ctr.57
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x2, [x29, #-8]                  // 8-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.58
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.58
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.58
	movk	x8, #:abs_g3:__llvm_gcov_ctr.58
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.59
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.59
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.59
	movk	x0, #:abs_g3:__llvm_gcov_ctr.59
	bl	memset
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.60
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.60
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.60
	movk	x0, #:abs_g3:__llvm_gcov_ctr.60
	bl	memset
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.61
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.61
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.61
	movk	x0, #:abs_g3:__llvm_gcov_ctr.61
	bl	memset
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.62
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.62
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.62
	movk	x0, #:abs_g3:__llvm_gcov_ctr.62
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.63
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.63
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.63
	movk	x0, #:abs_g3:__llvm_gcov_ctr.63
	mov	w8, #64                         // =0x40
	mov	w2, w8
	str	x2, [sp, #24]                   // 8-byte Folded Spill
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x2, [x29, #-8]                  // 8-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.64
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.64
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.64
	movk	x0, #:abs_g3:__llvm_gcov_ctr.64
	bl	memset
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.65
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.65
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.65
	movk	x0, #:abs_g3:__llvm_gcov_ctr.65
	bl	memset
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.66
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.66
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.66
	movk	x0, #:abs_g3:__llvm_gcov_ctr.66
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x2, [x29, #-8]                  // 8-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.67
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.67
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.67
	movk	x0, #:abs_g3:__llvm_gcov_ctr.67
	bl	memset
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.68
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.68
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.68
	movk	x0, #:abs_g3:__llvm_gcov_ctr.68
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x2, [x29, #-8]                  // 8-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.69
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.69
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.69
	movk	x0, #:abs_g3:__llvm_gcov_ctr.69
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.70
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.70
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.70
	movk	x8, #:abs_g3:__llvm_gcov_ctr.70
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.71
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.71
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.71
	movk	x8, #:abs_g3:__llvm_gcov_ctr.71
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.72
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.72
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.72
	movk	x8, #:abs_g3:__llvm_gcov_ctr.72
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.73
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.73
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.73
	movk	x8, #:abs_g3:__llvm_gcov_ctr.73
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.74
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.74
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.74
	movk	x8, #:abs_g3:__llvm_gcov_ctr.74
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.75
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.75
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.75
	movk	x8, #:abs_g3:__llvm_gcov_ctr.75
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.76
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.76
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.76
	movk	x8, #:abs_g3:__llvm_gcov_ctr.76
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.77
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.77
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.77
	movk	x8, #:abs_g3:__llvm_gcov_ctr.77
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.78
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.78
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.78
	movk	x8, #:abs_g3:__llvm_gcov_ctr.78
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.79
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.79
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.79
	movk	x8, #:abs_g3:__llvm_gcov_ctr.79
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.80
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.80
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.80
	movk	x8, #:abs_g3:__llvm_gcov_ctr.80
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.81
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.81
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.81
	movk	x8, #:abs_g3:__llvm_gcov_ctr.81
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.82
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.82
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.82
	movk	x8, #:abs_g3:__llvm_gcov_ctr.82
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.83
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.83
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.83
	movk	x0, #:abs_g3:__llvm_gcov_ctr.83
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.84
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.84
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.84
	movk	x0, #:abs_g3:__llvm_gcov_ctr.84
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.85
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.85
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.85
	movk	x0, #:abs_g3:__llvm_gcov_ctr.85
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.86
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.86
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.86
	movk	x0, #:abs_g3:__llvm_gcov_ctr.86
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.87
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.87
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.87
	movk	x0, #:abs_g3:__llvm_gcov_ctr.87
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x2, [x29, #-8]                  // 8-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.88
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.88
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.88
	movk	x8, #:abs_g3:__llvm_gcov_ctr.88
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.89
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.89
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.89
	movk	x0, #:abs_g3:__llvm_gcov_ctr.89
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x2, [x29, #-8]                  // 8-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.90
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.90
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.90
	movk	x0, #:abs_g3:__llvm_gcov_ctr.90
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x2, [x29, #-8]                  // 8-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.91
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.91
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.91
	movk	x0, #:abs_g3:__llvm_gcov_ctr.91
	bl	memset
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.92
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.92
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.92
	movk	x0, #:abs_g3:__llvm_gcov_ctr.92
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x2, [x29, #-8]                  // 8-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.93
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.93
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.93
	movk	x0, #:abs_g3:__llvm_gcov_ctr.93
	bl	memset
	ldur	x2, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.94
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.94
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.94
	movk	x0, #:abs_g3:__llvm_gcov_ctr.94
	bl	memset
	ldur	x2, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.95
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.95
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.95
	movk	x0, #:abs_g3:__llvm_gcov_ctr.95
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.96
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.96
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.96
	movk	x0, #:abs_g3:__llvm_gcov_ctr.96
	bl	memset
	ldur	x2, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.97
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.97
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.97
	movk	x0, #:abs_g3:__llvm_gcov_ctr.97
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x2, [x29, #-8]                  // 8-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.98
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.98
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.98
	movk	x0, #:abs_g3:__llvm_gcov_ctr.98
	bl	memset
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.99
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.99
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.99
	movk	x0, #:abs_g3:__llvm_gcov_ctr.99
	bl	memset
	ldr	x2, [sp, #24]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.100
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.100
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.100
	movk	x8, #:abs_g3:__llvm_gcov_ctr.100
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.101
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.101
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.101
	movk	x0, #:abs_g3:__llvm_gcov_ctr.101
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.102
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.102
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.102
	movk	x0, #:abs_g3:__llvm_gcov_ctr.102
	bl	memset
	ldr	x2, [sp, #24]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.103
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.103
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.103
	movk	x0, #:abs_g3:__llvm_gcov_ctr.103
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.104
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.104
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.104
	movk	x0, #:abs_g3:__llvm_gcov_ctr.104
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.105
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.105
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.105
	movk	x0, #:abs_g3:__llvm_gcov_ctr.105
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.106
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.106
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.106
	movk	x0, #:abs_g3:__llvm_gcov_ctr.106
	bl	memset
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.107
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.107
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.107
	movk	x0, #:abs_g3:__llvm_gcov_ctr.107
	bl	memset
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.108
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.108
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.108
	movk	x0, #:abs_g3:__llvm_gcov_ctr.108
	bl	memset
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.109
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.109
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.109
	movk	x0, #:abs_g3:__llvm_gcov_ctr.109
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.110
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.110
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.110
	movk	x8, #:abs_g3:__llvm_gcov_ctr.110
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.111
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.111
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.111
	movk	x8, #:abs_g3:__llvm_gcov_ctr.111
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.112
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.112
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.112
	movk	x8, #:abs_g3:__llvm_gcov_ctr.112
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.113
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.113
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.113
	movk	x8, #:abs_g3:__llvm_gcov_ctr.113
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.114
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.114
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.114
	movk	x8, #:abs_g3:__llvm_gcov_ctr.114
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.115
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.115
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.115
	movk	x8, #:abs_g3:__llvm_gcov_ctr.115
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.116
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.116
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.116
	movk	x0, #:abs_g3:__llvm_gcov_ctr.116
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.117
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.117
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.117
	movk	x0, #:abs_g3:__llvm_gcov_ctr.117
	bl	memset
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.118
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.118
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.118
	movk	x0, #:abs_g3:__llvm_gcov_ctr.118
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.119
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.119
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.119
	movk	x0, #:abs_g3:__llvm_gcov_ctr.119
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.120
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.120
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.120
	movk	x0, #:abs_g3:__llvm_gcov_ctr.120
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.121
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.121
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.121
	movk	x0, #:abs_g3:__llvm_gcov_ctr.121
	bl	memset
	ldur	x2, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.122
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.122
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.122
	movk	x0, #:abs_g3:__llvm_gcov_ctr.122
	bl	memset
	ldr	x2, [sp, #24]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.123
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.123
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.123
	movk	x0, #:abs_g3:__llvm_gcov_ctr.123
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.124
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.124
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.124
	movk	x0, #:abs_g3:__llvm_gcov_ctr.124
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.125
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.125
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.125
	movk	x0, #:abs_g3:__llvm_gcov_ctr.125
	bl	memset
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.126
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.126
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.126
	movk	x8, #:abs_g3:__llvm_gcov_ctr.126
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.127
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.127
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.127
	movk	x8, #:abs_g3:__llvm_gcov_ctr.127
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.128
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.128
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.128
	movk	x0, #:abs_g3:__llvm_gcov_ctr.128
	bl	memset
	ldur	x2, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.129
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.129
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.129
	movk	x0, #:abs_g3:__llvm_gcov_ctr.129
	bl	memset
	ldur	x2, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.130
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.130
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.130
	movk	x0, #:abs_g3:__llvm_gcov_ctr.130
	bl	memset
	ldr	x2, [sp, #24]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.131
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.131
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.131
	movk	x0, #:abs_g3:__llvm_gcov_ctr.131
	bl	memset
	ldr	x2, [sp, #24]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.132
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.132
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.132
	movk	x0, #:abs_g3:__llvm_gcov_ctr.132
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.133
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.133
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.133
	movk	x0, #:abs_g3:__llvm_gcov_ctr.133
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.134
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.134
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.134
	movk	x0, #:abs_g3:__llvm_gcov_ctr.134
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.135
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.135
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.135
	movk	x0, #:abs_g3:__llvm_gcov_ctr.135
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.136
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.136
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.136
	movk	x0, #:abs_g3:__llvm_gcov_ctr.136
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x2, [x29, #-8]                  // 8-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.137
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.137
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.137
	movk	x8, #:abs_g3:__llvm_gcov_ctr.137
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.138
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.138
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.138
	movk	x8, #:abs_g3:__llvm_gcov_ctr.138
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.139
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.139
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.139
	movk	x8, #:abs_g3:__llvm_gcov_ctr.139
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.140
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.140
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.140
	movk	x8, #:abs_g3:__llvm_gcov_ctr.140
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.141
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.141
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.141
	movk	x0, #:abs_g3:__llvm_gcov_ctr.141
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x2, [x29, #-8]                  // 8-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.142
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.142
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.142
	movk	x8, #:abs_g3:__llvm_gcov_ctr.142
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.143
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.143
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.143
	movk	x0, #:abs_g3:__llvm_gcov_ctr.143
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.144
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.144
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.144
	movk	x8, #:abs_g3:__llvm_gcov_ctr.144
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.145
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.145
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.145
	movk	x8, #:abs_g3:__llvm_gcov_ctr.145
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.146
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.146
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.146
	movk	x0, #:abs_g3:__llvm_gcov_ctr.146
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.147
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.147
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.147
	movk	x0, #:abs_g3:__llvm_gcov_ctr.147
	bl	memset
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.148
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.148
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.148
	movk	x0, #:abs_g3:__llvm_gcov_ctr.148
	bl	memset
	ldur	x2, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.149
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.149
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.149
	movk	x8, #:abs_g3:__llvm_gcov_ctr.149
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.150
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.150
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.150
	movk	x8, #:abs_g3:__llvm_gcov_ctr.150
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.151
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.151
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.151
	movk	x8, #:abs_g3:__llvm_gcov_ctr.151
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.152
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.152
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.152
	movk	x8, #:abs_g3:__llvm_gcov_ctr.152
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.153
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.153
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.153
	movk	x8, #:abs_g3:__llvm_gcov_ctr.153
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.154
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.154
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.154
	movk	x8, #:abs_g3:__llvm_gcov_ctr.154
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.155
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.155
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.155
	movk	x8, #:abs_g3:__llvm_gcov_ctr.155
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.156
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.156
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.156
	movk	x8, #:abs_g3:__llvm_gcov_ctr.156
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.157
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.157
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.157
	movk	x8, #:abs_g3:__llvm_gcov_ctr.157
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.158
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.158
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.158
	movk	x8, #:abs_g3:__llvm_gcov_ctr.158
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.159
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.159
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.159
	movk	x8, #:abs_g3:__llvm_gcov_ctr.159
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.160
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.160
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.160
	movk	x8, #:abs_g3:__llvm_gcov_ctr.160
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.161
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.161
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.161
	movk	x0, #:abs_g3:__llvm_gcov_ctr.161
	bl	memset
	ldur	x2, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.162
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.162
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.162
	movk	x0, #:abs_g3:__llvm_gcov_ctr.162
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x2, [x29, #-8]                  // 8-byte Folded Reload
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.163
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.163
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.163
	movk	x0, #:abs_g3:__llvm_gcov_ctr.163
	bl	memset
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	ldur	x2, [x29, #-8]                  // 8-byte Folded Reload
	movz	x8, #:abs_g0_nc:__llvm_gcov_ctr.164
	movk	x8, #:abs_g1_nc:__llvm_gcov_ctr.164
	movk	x8, #:abs_g2_nc:__llvm_gcov_ctr.164
	movk	x8, #:abs_g3:__llvm_gcov_ctr.164
	strb	w1, [x8, #7]
	strb	w1, [x8, #6]
	strb	w1, [x8, #5]
	strb	w1, [x8, #4]
	strb	w1, [x8, #3]
	strb	w1, [x8, #2]
	strb	w1, [x8, #1]
	strb	w1, [x8]
	movz	x0, #:abs_g0_nc:__llvm_gcov_ctr.165
	movk	x0, #:abs_g1_nc:__llvm_gcov_ctr.165
	movk	x0, #:abs_g2_nc:__llvm_gcov_ctr.165
	movk	x0, #:abs_g3:__llvm_gcov_ctr.165
	bl	memset
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	dsb	sy
	isb
.Lfunc_end167:
	.size	__llvm_gcov_reset, .Lfunc_end167-__llvm_gcov_reset
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function __llvm_gcov_init
	.type	__llvm_gcov_init,@function
__llvm_gcov_init:                       // @__llvm_gcov_init
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	movz	x0, #:abs_g0_nc:__llvm_gcov_writeout
	movk	x0, #:abs_g1_nc:__llvm_gcov_writeout
	movk	x0, #:abs_g2_nc:__llvm_gcov_writeout
	movk	x0, #:abs_g3:__llvm_gcov_writeout
	movz	x1, #:abs_g0_nc:__llvm_gcov_reset
	movk	x1, #:abs_g1_nc:__llvm_gcov_reset
	movk	x1, #:abs_g2_nc:__llvm_gcov_reset
	movk	x1, #:abs_g3:__llvm_gcov_reset
	bl	llvm_gcov_init
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	dsb	sy
	isb
.Lfunc_end168:
	.size	__llvm_gcov_init, .Lfunc_end168-__llvm_gcov_init
	.cfi_endproc
                                        // -- End function
	.section	.text.__llvm_slsblr_thunk_x8,"axG",@progbits,__llvm_slsblr_thunk_x8,comdat
	.hidden	__llvm_slsblr_thunk_x8          // -- Begin function __llvm_slsblr_thunk_x8
	.weak	__llvm_slsblr_thunk_x8
	.p2align	2
	.type	__llvm_slsblr_thunk_x8,@function
__llvm_slsblr_thunk_x8:                 // @__llvm_slsblr_thunk_x8
// %bb.0:
	mov	x16, x8
	br	x16
	dsb	sy
	isb
.Lfunc_end169:
	.size	__llvm_slsblr_thunk_x8, .Lfunc_end169-__llvm_slsblr_thunk_x8
                                        // -- End function
	.type	l64a.s,@object                  // @l64a.s
	.local	l64a.s
	.comm	l64a.s,7,1
	.type	digits,@object                  // @digits
	.section	.rodata,"a",@progbits
digits:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	digits, 65

	.type	seed,@object                    // @seed
	.local	seed
	.comm	seed,8,8
	.type	__llvm_gcov_ctr,@object         // @__llvm_gcov_ctr
	.local	__llvm_gcov_ctr
	.comm	__llvm_gcov_ctr,8,8
	.type	__llvm_gcov_ctr.1,@object       // @__llvm_gcov_ctr.1
	.local	__llvm_gcov_ctr.1
	.comm	__llvm_gcov_ctr.1,8,8
	.type	__llvm_gcov_ctr.2,@object       // @__llvm_gcov_ctr.2
	.local	__llvm_gcov_ctr.2
	.comm	__llvm_gcov_ctr.2,40,16
	.type	__llvm_gcov_ctr.3,@object       // @__llvm_gcov_ctr.3
	.local	__llvm_gcov_ctr.3
	.comm	__llvm_gcov_ctr.3,40,16
	.type	__llvm_gcov_ctr.4,@object       // @__llvm_gcov_ctr.4
	.local	__llvm_gcov_ctr.4
	.comm	__llvm_gcov_ctr.4,40,16
	.type	__llvm_gcov_ctr.5,@object       // @__llvm_gcov_ctr.5
	.local	__llvm_gcov_ctr.5
	.comm	__llvm_gcov_ctr.5,40,16
	.type	__llvm_gcov_ctr.6,@object       // @__llvm_gcov_ctr.6
	.local	__llvm_gcov_ctr.6
	.comm	__llvm_gcov_ctr.6,16,8
	.type	__llvm_gcov_ctr.7,@object       // @__llvm_gcov_ctr.7
	.local	__llvm_gcov_ctr.7
	.comm	__llvm_gcov_ctr.7,24,16
	.type	__llvm_gcov_ctr.8,@object       // @__llvm_gcov_ctr.8
	.local	__llvm_gcov_ctr.8
	.comm	__llvm_gcov_ctr.8,16,8
	.type	__llvm_gcov_ctr.9,@object       // @__llvm_gcov_ctr.9
	.local	__llvm_gcov_ctr.9
	.comm	__llvm_gcov_ctr.9,16,8
	.type	__llvm_gcov_ctr.10,@object      // @__llvm_gcov_ctr.10
	.local	__llvm_gcov_ctr.10
	.comm	__llvm_gcov_ctr.10,32,16
	.type	__llvm_gcov_ctr.11,@object      // @__llvm_gcov_ctr.11
	.local	__llvm_gcov_ctr.11
	.comm	__llvm_gcov_ctr.11,24,16
	.type	__llvm_gcov_ctr.12,@object      // @__llvm_gcov_ctr.12
	.local	__llvm_gcov_ctr.12
	.comm	__llvm_gcov_ctr.12,32,16
	.type	__llvm_gcov_ctr.13,@object      // @__llvm_gcov_ctr.13
	.local	__llvm_gcov_ctr.13
	.comm	__llvm_gcov_ctr.13,16,8
	.type	__llvm_gcov_ctr.14,@object      // @__llvm_gcov_ctr.14
	.local	__llvm_gcov_ctr.14
	.comm	__llvm_gcov_ctr.14,56,16
	.type	__llvm_gcov_ctr.15,@object      // @__llvm_gcov_ctr.15
	.local	__llvm_gcov_ctr.15
	.comm	__llvm_gcov_ctr.15,16,8
	.type	__llvm_gcov_ctr.16,@object      // @__llvm_gcov_ctr.16
	.local	__llvm_gcov_ctr.16
	.comm	__llvm_gcov_ctr.16,8,8
	.type	__llvm_gcov_ctr.17,@object      // @__llvm_gcov_ctr.17
	.local	__llvm_gcov_ctr.17
	.comm	__llvm_gcov_ctr.17,8,8
	.type	__llvm_gcov_ctr.18,@object      // @__llvm_gcov_ctr.18
	.local	__llvm_gcov_ctr.18
	.comm	__llvm_gcov_ctr.18,24,16
	.type	__llvm_gcov_ctr.19,@object      // @__llvm_gcov_ctr.19
	.local	__llvm_gcov_ctr.19
	.comm	__llvm_gcov_ctr.19,24,16
	.type	__llvm_gcov_ctr.20,@object      // @__llvm_gcov_ctr.20
	.local	__llvm_gcov_ctr.20
	.comm	__llvm_gcov_ctr.20,8,8
	.type	__llvm_gcov_ctr.21,@object      // @__llvm_gcov_ctr.21
	.local	__llvm_gcov_ctr.21
	.comm	__llvm_gcov_ctr.21,8,8
	.type	__llvm_gcov_ctr.22,@object      // @__llvm_gcov_ctr.22
	.local	__llvm_gcov_ctr.22
	.comm	__llvm_gcov_ctr.22,8,8
	.type	__llvm_gcov_ctr.23,@object      // @__llvm_gcov_ctr.23
	.local	__llvm_gcov_ctr.23
	.comm	__llvm_gcov_ctr.23,8,8
	.type	__llvm_gcov_ctr.24,@object      // @__llvm_gcov_ctr.24
	.local	__llvm_gcov_ctr.24
	.comm	__llvm_gcov_ctr.24,24,16
	.type	__llvm_gcov_ctr.25,@object      // @__llvm_gcov_ctr.25
	.local	__llvm_gcov_ctr.25
	.comm	__llvm_gcov_ctr.25,8,8
	.type	__llvm_gcov_ctr.26,@object      // @__llvm_gcov_ctr.26
	.local	__llvm_gcov_ctr.26
	.comm	__llvm_gcov_ctr.26,40,16
	.type	__llvm_gcov_ctr.27,@object      // @__llvm_gcov_ctr.27
	.local	__llvm_gcov_ctr.27
	.comm	__llvm_gcov_ctr.27,8,8
	.type	__llvm_gcov_ctr.28,@object      // @__llvm_gcov_ctr.28
	.local	__llvm_gcov_ctr.28
	.comm	__llvm_gcov_ctr.28,56,16
	.type	__llvm_gcov_ctr.29,@object      // @__llvm_gcov_ctr.29
	.local	__llvm_gcov_ctr.29
	.comm	__llvm_gcov_ctr.29,24,16
	.type	__llvm_gcov_ctr.30,@object      // @__llvm_gcov_ctr.30
	.local	__llvm_gcov_ctr.30
	.comm	__llvm_gcov_ctr.30,8,8
	.type	__llvm_gcov_ctr.31,@object      // @__llvm_gcov_ctr.31
	.local	__llvm_gcov_ctr.31
	.comm	__llvm_gcov_ctr.31,32,16
	.type	__llvm_gcov_ctr.32,@object      // @__llvm_gcov_ctr.32
	.local	__llvm_gcov_ctr.32
	.comm	__llvm_gcov_ctr.32,32,16
	.type	__llvm_gcov_ctr.33,@object      // @__llvm_gcov_ctr.33
	.local	__llvm_gcov_ctr.33
	.comm	__llvm_gcov_ctr.33,48,16
	.type	__llvm_gcov_ctr.34,@object      // @__llvm_gcov_ctr.34
	.local	__llvm_gcov_ctr.34
	.comm	__llvm_gcov_ctr.34,48,16
	.type	__llvm_gcov_ctr.35,@object      // @__llvm_gcov_ctr.35
	.local	__llvm_gcov_ctr.35
	.comm	__llvm_gcov_ctr.35,48,16
	.type	__llvm_gcov_ctr.36,@object      // @__llvm_gcov_ctr.36
	.local	__llvm_gcov_ctr.36
	.comm	__llvm_gcov_ctr.36,48,16
	.type	__llvm_gcov_ctr.37,@object      // @__llvm_gcov_ctr.37
	.local	__llvm_gcov_ctr.37
	.comm	__llvm_gcov_ctr.37,48,16
	.type	__llvm_gcov_ctr.38,@object      // @__llvm_gcov_ctr.38
	.local	__llvm_gcov_ctr.38
	.comm	__llvm_gcov_ctr.38,48,16
	.type	__llvm_gcov_ctr.39,@object      // @__llvm_gcov_ctr.39
	.local	__llvm_gcov_ctr.39
	.comm	__llvm_gcov_ctr.39,16,8
	.type	__llvm_gcov_ctr.40,@object      // @__llvm_gcov_ctr.40
	.local	__llvm_gcov_ctr.40
	.comm	__llvm_gcov_ctr.40,8,8
	.type	__llvm_gcov_ctr.41,@object      // @__llvm_gcov_ctr.41
	.local	__llvm_gcov_ctr.41
	.comm	__llvm_gcov_ctr.41,8,8
	.type	__llvm_gcov_ctr.42,@object      // @__llvm_gcov_ctr.42
	.local	__llvm_gcov_ctr.42
	.comm	__llvm_gcov_ctr.42,24,16
	.type	__llvm_gcov_ctr.43,@object      // @__llvm_gcov_ctr.43
	.local	__llvm_gcov_ctr.43
	.comm	__llvm_gcov_ctr.43,24,16
	.type	__llvm_gcov_ctr.44,@object      // @__llvm_gcov_ctr.44
	.local	__llvm_gcov_ctr.44
	.comm	__llvm_gcov_ctr.44,24,16
	.type	__llvm_gcov_ctr.45,@object      // @__llvm_gcov_ctr.45
	.local	__llvm_gcov_ctr.45
	.comm	__llvm_gcov_ctr.45,24,16
	.type	__llvm_gcov_ctr.46,@object      // @__llvm_gcov_ctr.46
	.local	__llvm_gcov_ctr.46
	.comm	__llvm_gcov_ctr.46,16,8
	.type	__llvm_gcov_ctr.47,@object      // @__llvm_gcov_ctr.47
	.local	__llvm_gcov_ctr.47
	.comm	__llvm_gcov_ctr.47,48,16
	.type	__llvm_gcov_ctr.48,@object      // @__llvm_gcov_ctr.48
	.local	__llvm_gcov_ctr.48
	.comm	__llvm_gcov_ctr.48,48,16
	.type	__llvm_gcov_ctr.49,@object      // @__llvm_gcov_ctr.49
	.local	__llvm_gcov_ctr.49
	.comm	__llvm_gcov_ctr.49,48,16
	.type	__llvm_gcov_ctr.50,@object      // @__llvm_gcov_ctr.50
	.local	__llvm_gcov_ctr.50
	.comm	__llvm_gcov_ctr.50,32,16
	.type	__llvm_gcov_ctr.51,@object      // @__llvm_gcov_ctr.51
	.local	__llvm_gcov_ctr.51
	.comm	__llvm_gcov_ctr.51,32,16
	.type	__llvm_gcov_ctr.52,@object      // @__llvm_gcov_ctr.52
	.local	__llvm_gcov_ctr.52
	.comm	__llvm_gcov_ctr.52,8,8
	.type	__llvm_gcov_ctr.53,@object      // @__llvm_gcov_ctr.53
	.local	__llvm_gcov_ctr.53
	.comm	__llvm_gcov_ctr.53,16,8
	.type	__llvm_gcov_ctr.54,@object      // @__llvm_gcov_ctr.54
	.local	__llvm_gcov_ctr.54
	.comm	__llvm_gcov_ctr.54,8,8
	.type	__llvm_gcov_ctr.55,@object      // @__llvm_gcov_ctr.55
	.local	__llvm_gcov_ctr.55
	.comm	__llvm_gcov_ctr.55,16,8
	.type	__llvm_gcov_ctr.56,@object      // @__llvm_gcov_ctr.56
	.local	__llvm_gcov_ctr.56
	.comm	__llvm_gcov_ctr.56,8,8
	.type	__llvm_gcov_ctr.57,@object      // @__llvm_gcov_ctr.57
	.local	__llvm_gcov_ctr.57
	.comm	__llvm_gcov_ctr.57,16,8
	.type	__llvm_gcov_ctr.58,@object      // @__llvm_gcov_ctr.58
	.local	__llvm_gcov_ctr.58
	.comm	__llvm_gcov_ctr.58,8,8
	.type	__llvm_gcov_ctr.59,@object      // @__llvm_gcov_ctr.59
	.local	__llvm_gcov_ctr.59
	.comm	__llvm_gcov_ctr.59,40,16
	.type	__llvm_gcov_ctr.60,@object      // @__llvm_gcov_ctr.60
	.local	__llvm_gcov_ctr.60
	.comm	__llvm_gcov_ctr.60,48,16
	.type	__llvm_gcov_ctr.61,@object      // @__llvm_gcov_ctr.61
	.local	__llvm_gcov_ctr.61
	.comm	__llvm_gcov_ctr.61,16,8
	.type	__llvm_gcov_ctr.62,@object      // @__llvm_gcov_ctr.62
	.local	__llvm_gcov_ctr.62
	.comm	__llvm_gcov_ctr.62,16,8
	.type	__llvm_gcov_ctr.63,@object      // @__llvm_gcov_ctr.63
	.local	__llvm_gcov_ctr.63
	.comm	__llvm_gcov_ctr.63,64,16
	.type	__llvm_gcov_ctr.64,@object      // @__llvm_gcov_ctr.64
	.local	__llvm_gcov_ctr.64
	.comm	__llvm_gcov_ctr.64,40,16
	.type	__llvm_gcov_ctr.65,@object      // @__llvm_gcov_ctr.65
	.local	__llvm_gcov_ctr.65
	.comm	__llvm_gcov_ctr.65,48,16
	.type	__llvm_gcov_ctr.66,@object      // @__llvm_gcov_ctr.66
	.local	__llvm_gcov_ctr.66
	.comm	__llvm_gcov_ctr.66,16,8
	.type	__llvm_gcov_ctr.67,@object      // @__llvm_gcov_ctr.67
	.local	__llvm_gcov_ctr.67
	.comm	__llvm_gcov_ctr.67,40,16
	.type	__llvm_gcov_ctr.68,@object      // @__llvm_gcov_ctr.68
	.local	__llvm_gcov_ctr.68
	.comm	__llvm_gcov_ctr.68,16,8
	.type	__llvm_gcov_ctr.69,@object      // @__llvm_gcov_ctr.69
	.local	__llvm_gcov_ctr.69
	.comm	__llvm_gcov_ctr.69,40,16
	.type	__llvm_gcov_ctr.70,@object      // @__llvm_gcov_ctr.70
	.local	__llvm_gcov_ctr.70
	.comm	__llvm_gcov_ctr.70,8,8
	.type	__llvm_gcov_ctr.71,@object      // @__llvm_gcov_ctr.71
	.local	__llvm_gcov_ctr.71
	.comm	__llvm_gcov_ctr.71,8,8
	.type	__llvm_gcov_ctr.72,@object      // @__llvm_gcov_ctr.72
	.local	__llvm_gcov_ctr.72
	.comm	__llvm_gcov_ctr.72,8,8
	.type	__llvm_gcov_ctr.73,@object      // @__llvm_gcov_ctr.73
	.local	__llvm_gcov_ctr.73
	.comm	__llvm_gcov_ctr.73,8,8
	.type	__llvm_gcov_ctr.74,@object      // @__llvm_gcov_ctr.74
	.local	__llvm_gcov_ctr.74
	.comm	__llvm_gcov_ctr.74,8,8
	.type	__llvm_gcov_ctr.75,@object      // @__llvm_gcov_ctr.75
	.local	__llvm_gcov_ctr.75
	.comm	__llvm_gcov_ctr.75,8,8
	.type	__llvm_gcov_ctr.76,@object      // @__llvm_gcov_ctr.76
	.local	__llvm_gcov_ctr.76
	.comm	__llvm_gcov_ctr.76,8,8
	.type	__llvm_gcov_ctr.77,@object      // @__llvm_gcov_ctr.77
	.local	__llvm_gcov_ctr.77
	.comm	__llvm_gcov_ctr.77,8,8
	.type	__llvm_gcov_ctr.78,@object      // @__llvm_gcov_ctr.78
	.local	__llvm_gcov_ctr.78
	.comm	__llvm_gcov_ctr.78,8,8
	.type	__llvm_gcov_ctr.79,@object      // @__llvm_gcov_ctr.79
	.local	__llvm_gcov_ctr.79
	.comm	__llvm_gcov_ctr.79,8,8
	.type	__llvm_gcov_ctr.80,@object      // @__llvm_gcov_ctr.80
	.local	__llvm_gcov_ctr.80
	.comm	__llvm_gcov_ctr.80,8,8
	.type	__llvm_gcov_ctr.81,@object      // @__llvm_gcov_ctr.81
	.local	__llvm_gcov_ctr.81
	.comm	__llvm_gcov_ctr.81,8,8
	.type	__llvm_gcov_ctr.82,@object      // @__llvm_gcov_ctr.82
	.local	__llvm_gcov_ctr.82
	.comm	__llvm_gcov_ctr.82,8,8
	.type	__llvm_gcov_ctr.83,@object      // @__llvm_gcov_ctr.83
	.local	__llvm_gcov_ctr.83
	.comm	__llvm_gcov_ctr.83,24,16
	.type	__llvm_gcov_ctr.84,@object      // @__llvm_gcov_ctr.84
	.local	__llvm_gcov_ctr.84
	.comm	__llvm_gcov_ctr.84,24,16
	.type	__llvm_gcov_ctr.85,@object      // @__llvm_gcov_ctr.85
	.local	__llvm_gcov_ctr.85
	.comm	__llvm_gcov_ctr.85,24,16
	.type	__llvm_gcov_ctr.86,@object      // @__llvm_gcov_ctr.86
	.local	__llvm_gcov_ctr.86
	.comm	__llvm_gcov_ctr.86,24,16
	.type	__llvm_gcov_ctr.87,@object      // @__llvm_gcov_ctr.87
	.local	__llvm_gcov_ctr.87
	.comm	__llvm_gcov_ctr.87,24,16
	.type	__llvm_gcov_ctr.88,@object      // @__llvm_gcov_ctr.88
	.local	__llvm_gcov_ctr.88
	.comm	__llvm_gcov_ctr.88,8,8
	.type	__llvm_gcov_ctr.89,@object      // @__llvm_gcov_ctr.89
	.local	__llvm_gcov_ctr.89
	.comm	__llvm_gcov_ctr.89,40,16
	.type	__llvm_gcov_ctr.90,@object      // @__llvm_gcov_ctr.90
	.local	__llvm_gcov_ctr.90
	.comm	__llvm_gcov_ctr.90,40,16
	.type	__llvm_gcov_ctr.91,@object      // @__llvm_gcov_ctr.91
	.local	__llvm_gcov_ctr.91
	.comm	__llvm_gcov_ctr.91,40,16
	.type	__llvm_gcov_ctr.92,@object      // @__llvm_gcov_ctr.92
	.local	__llvm_gcov_ctr.92
	.comm	__llvm_gcov_ctr.92,16,8
	.type	__llvm_gcov_ctr.93,@object      // @__llvm_gcov_ctr.93
	.local	__llvm_gcov_ctr.93
	.comm	__llvm_gcov_ctr.93,40,16
	.type	__llvm_gcov_ctr.94,@object      // @__llvm_gcov_ctr.94
	.local	__llvm_gcov_ctr.94
	.comm	__llvm_gcov_ctr.94,32,16
	.type	__llvm_gcov_ctr.95,@object      // @__llvm_gcov_ctr.95
	.local	__llvm_gcov_ctr.95
	.comm	__llvm_gcov_ctr.95,32,16
	.type	__llvm_gcov_ctr.96,@object      // @__llvm_gcov_ctr.96
	.local	__llvm_gcov_ctr.96
	.comm	__llvm_gcov_ctr.96,24,16
	.type	__llvm_gcov_ctr.97,@object      // @__llvm_gcov_ctr.97
	.local	__llvm_gcov_ctr.97
	.comm	__llvm_gcov_ctr.97,32,16
	.type	__llvm_gcov_ctr.98,@object      // @__llvm_gcov_ctr.98
	.local	__llvm_gcov_ctr.98
	.comm	__llvm_gcov_ctr.98,40,16
	.type	__llvm_gcov_ctr.99,@object      // @__llvm_gcov_ctr.99
	.local	__llvm_gcov_ctr.99
	.comm	__llvm_gcov_ctr.99,48,16
	.type	__llvm_gcov_ctr.100,@object     // @__llvm_gcov_ctr.100
	.local	__llvm_gcov_ctr.100
	.comm	__llvm_gcov_ctr.100,8,8
	.type	__llvm_gcov_ctr.101,@object     // @__llvm_gcov_ctr.101
	.local	__llvm_gcov_ctr.101
	.comm	__llvm_gcov_ctr.101,64,16
	.type	__llvm_gcov_ctr.102,@object     // @__llvm_gcov_ctr.102
	.local	__llvm_gcov_ctr.102
	.comm	__llvm_gcov_ctr.102,24,16
	.type	__llvm_gcov_ctr.103,@object     // @__llvm_gcov_ctr.103
	.local	__llvm_gcov_ctr.103
	.comm	__llvm_gcov_ctr.103,64,16
	.type	__llvm_gcov_ctr.104,@object     // @__llvm_gcov_ctr.104
	.local	__llvm_gcov_ctr.104
	.comm	__llvm_gcov_ctr.104,24,16
	.type	__llvm_gcov_ctr.105,@object     // @__llvm_gcov_ctr.105
	.local	__llvm_gcov_ctr.105
	.comm	__llvm_gcov_ctr.105,24,16
	.type	__llvm_gcov_ctr.106,@object     // @__llvm_gcov_ctr.106
	.local	__llvm_gcov_ctr.106
	.comm	__llvm_gcov_ctr.106,24,16
	.type	__llvm_gcov_ctr.107,@object     // @__llvm_gcov_ctr.107
	.local	__llvm_gcov_ctr.107
	.comm	__llvm_gcov_ctr.107,48,16
	.type	__llvm_gcov_ctr.108,@object     // @__llvm_gcov_ctr.108
	.local	__llvm_gcov_ctr.108
	.comm	__llvm_gcov_ctr.108,48,16
	.type	__llvm_gcov_ctr.109,@object     // @__llvm_gcov_ctr.109
	.local	__llvm_gcov_ctr.109
	.comm	__llvm_gcov_ctr.109,48,16
	.type	__llvm_gcov_ctr.110,@object     // @__llvm_gcov_ctr.110
	.local	__llvm_gcov_ctr.110
	.comm	__llvm_gcov_ctr.110,8,8
	.type	__llvm_gcov_ctr.111,@object     // @__llvm_gcov_ctr.111
	.local	__llvm_gcov_ctr.111
	.comm	__llvm_gcov_ctr.111,8,8
	.type	__llvm_gcov_ctr.112,@object     // @__llvm_gcov_ctr.112
	.local	__llvm_gcov_ctr.112
	.comm	__llvm_gcov_ctr.112,8,8
	.type	__llvm_gcov_ctr.113,@object     // @__llvm_gcov_ctr.113
	.local	__llvm_gcov_ctr.113
	.comm	__llvm_gcov_ctr.113,8,8
	.type	__llvm_gcov_ctr.114,@object     // @__llvm_gcov_ctr.114
	.local	__llvm_gcov_ctr.114
	.comm	__llvm_gcov_ctr.114,8,8
	.type	__llvm_gcov_ctr.115,@object     // @__llvm_gcov_ctr.115
	.local	__llvm_gcov_ctr.115
	.comm	__llvm_gcov_ctr.115,8,8
	.type	__llvm_gcov_ctr.116,@object     // @__llvm_gcov_ctr.116
	.local	__llvm_gcov_ctr.116
	.comm	__llvm_gcov_ctr.116,24,16
	.type	__llvm_gcov_ctr.117,@object     // @__llvm_gcov_ctr.117
	.local	__llvm_gcov_ctr.117
	.comm	__llvm_gcov_ctr.117,24,16
	.type	__llvm_gcov_ctr.118,@object     // @__llvm_gcov_ctr.118
	.local	__llvm_gcov_ctr.118
	.comm	__llvm_gcov_ctr.118,16,8
	.type	__llvm_gcov_ctr.119,@object     // @__llvm_gcov_ctr.119
	.local	__llvm_gcov_ctr.119
	.comm	__llvm_gcov_ctr.119,24,16
	.type	__llvm_gcov_ctr.120,@object     // @__llvm_gcov_ctr.120
	.local	__llvm_gcov_ctr.120
	.comm	__llvm_gcov_ctr.120,24,16
	.type	__llvm_gcov_ctr.121,@object     // @__llvm_gcov_ctr.121
	.local	__llvm_gcov_ctr.121
	.comm	__llvm_gcov_ctr.121,24,16
	.type	__llvm_gcov_ctr.122,@object     // @__llvm_gcov_ctr.122
	.local	__llvm_gcov_ctr.122
	.comm	__llvm_gcov_ctr.122,32,16
	.type	__llvm_gcov_ctr.123,@object     // @__llvm_gcov_ctr.123
	.local	__llvm_gcov_ctr.123
	.comm	__llvm_gcov_ctr.123,64,16
	.type	__llvm_gcov_ctr.124,@object     // @__llvm_gcov_ctr.124
	.local	__llvm_gcov_ctr.124
	.comm	__llvm_gcov_ctr.124,24,16
	.type	__llvm_gcov_ctr.125,@object     // @__llvm_gcov_ctr.125
	.local	__llvm_gcov_ctr.125
	.comm	__llvm_gcov_ctr.125,24,16
	.type	__llvm_gcov_ctr.126,@object     // @__llvm_gcov_ctr.126
	.local	__llvm_gcov_ctr.126
	.comm	__llvm_gcov_ctr.126,8,8
	.type	__llvm_gcov_ctr.127,@object     // @__llvm_gcov_ctr.127
	.local	__llvm_gcov_ctr.127
	.comm	__llvm_gcov_ctr.127,8,8
	.type	__llvm_gcov_ctr.128,@object     // @__llvm_gcov_ctr.128
	.local	__llvm_gcov_ctr.128
	.comm	__llvm_gcov_ctr.128,56,16
	.type	__llvm_gcov_ctr.129,@object     // @__llvm_gcov_ctr.129
	.local	__llvm_gcov_ctr.129
	.comm	__llvm_gcov_ctr.129,32,16
	.type	__llvm_gcov_ctr.130,@object     // @__llvm_gcov_ctr.130
	.local	__llvm_gcov_ctr.130
	.comm	__llvm_gcov_ctr.130,32,16
	.type	__llvm_gcov_ctr.131,@object     // @__llvm_gcov_ctr.131
	.local	__llvm_gcov_ctr.131
	.comm	__llvm_gcov_ctr.131,64,16
	.type	__llvm_gcov_ctr.132,@object     // @__llvm_gcov_ctr.132
	.local	__llvm_gcov_ctr.132
	.comm	__llvm_gcov_ctr.132,64,16
	.type	__llvm_gcov_ctr.133,@object     // @__llvm_gcov_ctr.133
	.local	__llvm_gcov_ctr.133
	.comm	__llvm_gcov_ctr.133,24,16
	.type	__llvm_gcov_ctr.134,@object     // @__llvm_gcov_ctr.134
	.local	__llvm_gcov_ctr.134
	.comm	__llvm_gcov_ctr.134,24,16
	.type	__llvm_gcov_ctr.135,@object     // @__llvm_gcov_ctr.135
	.local	__llvm_gcov_ctr.135
	.comm	__llvm_gcov_ctr.135,24,16
	.type	__llvm_gcov_ctr.136,@object     // @__llvm_gcov_ctr.136
	.local	__llvm_gcov_ctr.136
	.comm	__llvm_gcov_ctr.136,24,16
	.type	__llvm_gcov_ctr.137,@object     // @__llvm_gcov_ctr.137
	.local	__llvm_gcov_ctr.137
	.comm	__llvm_gcov_ctr.137,8,8
	.type	__llvm_gcov_ctr.138,@object     // @__llvm_gcov_ctr.138
	.local	__llvm_gcov_ctr.138
	.comm	__llvm_gcov_ctr.138,8,8
	.type	__llvm_gcov_ctr.139,@object     // @__llvm_gcov_ctr.139
	.local	__llvm_gcov_ctr.139
	.comm	__llvm_gcov_ctr.139,8,8
	.type	__llvm_gcov_ctr.140,@object     // @__llvm_gcov_ctr.140
	.local	__llvm_gcov_ctr.140
	.comm	__llvm_gcov_ctr.140,8,8
	.type	__llvm_gcov_ctr.141,@object     // @__llvm_gcov_ctr.141
	.local	__llvm_gcov_ctr.141
	.comm	__llvm_gcov_ctr.141,40,16
	.type	__llvm_gcov_ctr.142,@object     // @__llvm_gcov_ctr.142
	.local	__llvm_gcov_ctr.142
	.comm	__llvm_gcov_ctr.142,8,8
	.type	__llvm_gcov_ctr.143,@object     // @__llvm_gcov_ctr.143
	.local	__llvm_gcov_ctr.143
	.comm	__llvm_gcov_ctr.143,40,16
	.type	__llvm_gcov_ctr.144,@object     // @__llvm_gcov_ctr.144
	.local	__llvm_gcov_ctr.144
	.comm	__llvm_gcov_ctr.144,8,8
	.type	__llvm_gcov_ctr.145,@object     // @__llvm_gcov_ctr.145
	.local	__llvm_gcov_ctr.145
	.comm	__llvm_gcov_ctr.145,8,8
	.type	__llvm_gcov_ctr.146,@object     // @__llvm_gcov_ctr.146
	.local	__llvm_gcov_ctr.146
	.comm	__llvm_gcov_ctr.146,24,16
	.type	__llvm_gcov_ctr.147,@object     // @__llvm_gcov_ctr.147
	.local	__llvm_gcov_ctr.147
	.comm	__llvm_gcov_ctr.147,24,16
	.type	__llvm_gcov_ctr.148,@object     // @__llvm_gcov_ctr.148
	.local	__llvm_gcov_ctr.148
	.comm	__llvm_gcov_ctr.148,24,16
	.type	__llvm_gcov_ctr.149,@object     // @__llvm_gcov_ctr.149
	.local	__llvm_gcov_ctr.149
	.comm	__llvm_gcov_ctr.149,8,8
	.type	__llvm_gcov_ctr.150,@object     // @__llvm_gcov_ctr.150
	.local	__llvm_gcov_ctr.150
	.comm	__llvm_gcov_ctr.150,8,8
	.type	__llvm_gcov_ctr.151,@object     // @__llvm_gcov_ctr.151
	.local	__llvm_gcov_ctr.151
	.comm	__llvm_gcov_ctr.151,8,8
	.type	__llvm_gcov_ctr.152,@object     // @__llvm_gcov_ctr.152
	.local	__llvm_gcov_ctr.152
	.comm	__llvm_gcov_ctr.152,8,8
	.type	__llvm_gcov_ctr.153,@object     // @__llvm_gcov_ctr.153
	.local	__llvm_gcov_ctr.153
	.comm	__llvm_gcov_ctr.153,8,8
	.type	__llvm_gcov_ctr.154,@object     // @__llvm_gcov_ctr.154
	.local	__llvm_gcov_ctr.154
	.comm	__llvm_gcov_ctr.154,8,8
	.type	__llvm_gcov_ctr.155,@object     // @__llvm_gcov_ctr.155
	.local	__llvm_gcov_ctr.155
	.comm	__llvm_gcov_ctr.155,8,8
	.type	__llvm_gcov_ctr.156,@object     // @__llvm_gcov_ctr.156
	.local	__llvm_gcov_ctr.156
	.comm	__llvm_gcov_ctr.156,8,8
	.type	__llvm_gcov_ctr.157,@object     // @__llvm_gcov_ctr.157
	.local	__llvm_gcov_ctr.157
	.comm	__llvm_gcov_ctr.157,8,8
	.type	__llvm_gcov_ctr.158,@object     // @__llvm_gcov_ctr.158
	.local	__llvm_gcov_ctr.158
	.comm	__llvm_gcov_ctr.158,8,8
	.type	__llvm_gcov_ctr.159,@object     // @__llvm_gcov_ctr.159
	.local	__llvm_gcov_ctr.159
	.comm	__llvm_gcov_ctr.159,8,8
	.type	__llvm_gcov_ctr.160,@object     // @__llvm_gcov_ctr.160
	.local	__llvm_gcov_ctr.160
	.comm	__llvm_gcov_ctr.160,8,8
	.type	__llvm_gcov_ctr.161,@object     // @__llvm_gcov_ctr.161
	.local	__llvm_gcov_ctr.161
	.comm	__llvm_gcov_ctr.161,32,16
	.type	__llvm_gcov_ctr.162,@object     // @__llvm_gcov_ctr.162
	.local	__llvm_gcov_ctr.162
	.comm	__llvm_gcov_ctr.162,32,16
	.type	__llvm_gcov_ctr.163,@object     // @__llvm_gcov_ctr.163
	.local	__llvm_gcov_ctr.163
	.comm	__llvm_gcov_ctr.163,40,16
	.type	__llvm_gcov_ctr.164,@object     // @__llvm_gcov_ctr.164
	.local	__llvm_gcov_ctr.164
	.comm	__llvm_gcov_ctr.164,8,8
	.type	__llvm_gcov_ctr.165,@object     // @__llvm_gcov_ctr.165
	.local	__llvm_gcov_ctr.165
	.comm	__llvm_gcov_ctr.165,40,16
	.type	.L__unnamed_1,@object           // @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_1:
	.asciz	"/home/gravier/tmp/some-libc-opt/clang-aarch64.gcda"
	.size	.L__unnamed_1, 51

	.type	__llvm_internal_gcov_emit_function_args.0,@object // @__llvm_internal_gcov_emit_function_args.0
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
__llvm_internal_gcov_emit_function_args.0:
	.word	0                               // 0x0
	.word	3759012176                      // 0xe00df950
	.word	2102079853                      // 0x7d4b316d
	.word	1                               // 0x1
	.word	3518812481                      // 0xd1bcd141
	.word	2102079853                      // 0x7d4b316d
	.word	2                               // 0x2
	.word	560687177                       // 0x216b6849
	.word	2102079853                      // 0x7d4b316d
	.word	3                               // 0x3
	.word	1589591758                      // 0x5ebf3ece
	.word	2102079853                      // 0x7d4b316d
	.word	4                               // 0x4
	.word	2176136383                      // 0x81b534bf
	.word	2102079853                      // 0x7d4b316d
	.word	5                               // 0x5
	.word	3586625172                      // 0xd5c78e94
	.word	2102079853                      // 0x7d4b316d
	.word	6                               // 0x6
	.word	2323119728                      // 0x8a77fe70
	.word	2102079853                      // 0x7d4b316d
	.word	7                               // 0x7
	.word	2314569740                      // 0x89f5880c
	.word	2102079853                      // 0x7d4b316d
	.word	8                               // 0x8
	.word	2833673551                      // 0xa8e66d4f
	.word	2102079853                      // 0x7d4b316d
	.word	9                               // 0x9
	.word	1458633189                      // 0x56f0f9e5
	.word	2102079853                      // 0x7d4b316d
	.word	10                              // 0xa
	.word	1190300833                      // 0x46f28ca1
	.word	2102079853                      // 0x7d4b316d
	.word	11                              // 0xb
	.word	758327989                       // 0x2d332ab5
	.word	2102079853                      // 0x7d4b316d
	.word	12                              // 0xc
	.word	1651479037                      // 0x626f91fd
	.word	2102079853                      // 0x7d4b316d
	.word	13                              // 0xd
	.word	4132343275                      // 0xf64e8deb
	.word	2102079853                      // 0x7d4b316d
	.word	14                              // 0xe
	.word	734262523                       // 0x2bc3f4fb
	.word	2102079853                      // 0x7d4b316d
	.word	15                              // 0xf
	.word	2463424677                      // 0x92d4e0a5
	.word	2102079853                      // 0x7d4b316d
	.word	16                              // 0x10
	.word	1419026334                      // 0x54949f9e
	.word	2102079853                      // 0x7d4b316d
	.word	17                              // 0x11
	.word	3154471370                      // 0xbc0569ca
	.word	2102079853                      // 0x7d4b316d
	.word	18                              // 0x12
	.word	2077973487                      // 0x7bdb5bef
	.word	2102079853                      // 0x7d4b316d
	.word	19                              // 0x13
	.word	1474691227                      // 0x57e6009b
	.word	2102079853                      // 0x7d4b316d
	.word	20                              // 0x14
	.word	3710986016                      // 0xdd312720
	.word	2102079853                      // 0x7d4b316d
	.word	21                              // 0x15
	.word	1305101473                      // 0x4dca44a1
	.word	2102079853                      // 0x7d4b316d
	.word	22                              // 0x16
	.word	3762036564                      // 0xe03c1f54
	.word	2102079853                      // 0x7d4b316d
	.word	23                              // 0x17
	.word	477914433                       // 0x1c7c6541
	.word	2102079853                      // 0x7d4b316d
	.word	24                              // 0x18
	.word	3923035234                      // 0xe9d4c462
	.word	2102079853                      // 0x7d4b316d
	.word	25                              // 0x19
	.word	951651702                       // 0x38b90d76
	.word	2102079853                      // 0x7d4b316d
	.word	26                              // 0x1a
	.word	4206925919                      // 0xfac0985f
	.word	2102079853                      // 0x7d4b316d
	.word	27                              // 0x1b
	.word	32773942                        // 0x1f41736
	.word	2102079853                      // 0x7d4b316d
	.word	28                              // 0x1c
	.word	2877267246                      // 0xab7f9d2e
	.word	2102079853                      // 0x7d4b316d
	.word	29                              // 0x1d
	.word	860405771                       // 0x3348c00b
	.word	2102079853                      // 0x7d4b316d
	.word	30                              // 0x1e
	.word	815674877                       // 0x309e35fd
	.word	2102079853                      // 0x7d4b316d
	.word	31                              // 0x1f
	.word	1778838753                      // 0x6a06ece1
	.word	2102079853                      // 0x7d4b316d
	.word	32                              // 0x20
	.word	2718307199                      // 0xa206137f
	.word	2102079853                      // 0x7d4b316d
	.word	33                              // 0x21
	.word	856224820                       // 0x3308f434
	.word	2102079853                      // 0x7d4b316d
	.word	34                              // 0x22
	.word	1111195143                      // 0x423b7e07
	.word	2102079853                      // 0x7d4b316d
	.word	35                              // 0x23
	.word	1178414519                      // 0x463d2db7
	.word	2102079853                      // 0x7d4b316d
	.word	36                              // 0x24
	.word	3477640633                      // 0xcf4895b9
	.word	2102079853                      // 0x7d4b316d
	.word	37                              // 0x25
	.word	4294770115                      // 0xfffcfdc3
	.word	2102079853                      // 0x7d4b316d
	.word	38                              // 0x26
	.word	3650660234                      // 0xd998a78a
	.word	2102079853                      // 0x7d4b316d
	.word	39                              // 0x27
	.word	289327647                       // 0x113eca1f
	.word	2102079853                      // 0x7d4b316d
	.word	40                              // 0x28
	.word	2093612798                      // 0x7cc9fefe
	.word	2102079853                      // 0x7d4b316d
	.word	41                              // 0x29
	.word	4177956716                      // 0xf9068f6c
	.word	2102079853                      // 0x7d4b316d
	.word	42                              // 0x2a
	.word	3434808461                      // 0xccbb048d
	.word	2102079853                      // 0x7d4b316d
	.word	43                              // 0x2b
	.word	3206497114                      // 0xbf1f435a
	.word	2102079853                      // 0x7d4b316d
	.word	44                              // 0x2c
	.word	1537257434                      // 0x5ba0afda
	.word	2102079853                      // 0x7d4b316d
	.word	45                              // 0x2d
	.word	3028077325                      // 0xb47ccb0d
	.word	2102079853                      // 0x7d4b316d
	.word	46                              // 0x2e
	.word	1369848209                      // 0x51a63991
	.word	2102079853                      // 0x7d4b316d
	.word	47                              // 0x2f
	.word	938831176                       // 0x37f56d48
	.word	2102079853                      // 0x7d4b316d
	.word	48                              // 0x30
	.word	1663146323                      // 0x63219953
	.word	2102079853                      // 0x7d4b316d
	.word	49                              // 0x31
	.word	4111410217                      // 0xf50f2429
	.word	2102079853                      // 0x7d4b316d
	.word	50                              // 0x32
	.word	1475378556                      // 0x57f07d7c
	.word	2102079853                      // 0x7d4b316d
	.word	51                              // 0x33
	.word	3356195547                      // 0xc80b7adb
	.word	2102079853                      // 0x7d4b316d
	.word	52                              // 0x34
	.word	514931786                       // 0x1eb13c4a
	.word	2102079853                      // 0x7d4b316d
	.word	53                              // 0x35
	.word	2854034444                      // 0xaa1d1c0c
	.word	2102079853                      // 0x7d4b316d
	.word	54                              // 0x36
	.word	2747937306                      // 0xa3ca321a
	.word	2102079853                      // 0x7d4b316d
	.word	55                              // 0x37
	.word	4192776208                      // 0xf9e8b010
	.word	2102079853                      // 0x7d4b316d
	.word	56                              // 0x38
	.word	984436227                       // 0x3aad4e03
	.word	2102079853                      // 0x7d4b316d
	.word	57                              // 0x39
	.word	1477657574                      // 0x581343e6
	.word	2102079853                      // 0x7d4b316d
	.word	58                              // 0x3a
	.word	1339127973                      // 0x4fd178a5
	.word	2102079853                      // 0x7d4b316d
	.word	59                              // 0x3b
	.word	2960567906                      // 0xb076ae62
	.word	2102079853                      // 0x7d4b316d
	.word	60                              // 0x3c
	.word	3390076872                      // 0xca1077c8
	.word	2102079853                      // 0x7d4b316d
	.word	61                              // 0x3d
	.word	1543282230                      // 0x5bfc9e36
	.word	2102079853                      // 0x7d4b316d
	.word	62                              // 0x3e
	.word	2934101789                      // 0xaee2d71d
	.word	2102079853                      // 0x7d4b316d
	.word	63                              // 0x3f
	.word	3737986119                      // 0xdecd2447
	.word	2102079853                      // 0x7d4b316d
	.word	64                              // 0x40
	.word	49556427                        // 0x2f42bcb
	.word	2102079853                      // 0x7d4b316d
	.word	65                              // 0x41
	.word	234051526                       // 0xdf357c6
	.word	2102079853                      // 0x7d4b316d
	.word	66                              // 0x42
	.word	2341800126                      // 0x8b9508be
	.word	2102079853                      // 0x7d4b316d
	.word	67                              // 0x43
	.word	3256799948                      // 0xc21ed2cc
	.word	2102079853                      // 0x7d4b316d
	.word	68                              // 0x44
	.word	777295480                       // 0x2e549678
	.word	2102079853                      // 0x7d4b316d
	.word	69                              // 0x45
	.word	14040531                        // 0xd63dd3
	.word	2102079853                      // 0x7d4b316d
	.word	70                              // 0x46
	.word	8047973                         // 0x7acd65
	.word	2102079853                      // 0x7d4b316d
	.word	71                              // 0x47
	.word	719459161                       // 0x2ae21359
	.word	2102079853                      // 0x7d4b316d
	.word	72                              // 0x48
	.word	243358501                       // 0xe815b25
	.word	2102079853                      // 0x7d4b316d
	.word	73                              // 0x49
	.word	3262173932                      // 0xc270d2ec
	.word	2102079853                      // 0x7d4b316d
	.word	74                              // 0x4a
	.word	398910553                       // 0x17c6e459
	.word	2102079853                      // 0x7d4b316d
	.word	75                              // 0x4b
	.word	3354219739                      // 0xc7ed54db
	.word	2102079853                      // 0x7d4b316d
	.word	76                              // 0x4c
	.word	2570308788                      // 0x9933ccb4
	.word	2102079853                      // 0x7d4b316d
	.word	77                              // 0x4d
	.word	982429111                       // 0x3a8eadb7
	.word	2102079853                      // 0x7d4b316d
	.word	78                              // 0x4e
	.word	211491241                       // 0xc9b19a9
	.word	2102079853                      // 0x7d4b316d
	.word	79                              // 0x4f
	.word	1075683319                      // 0x401d9ff7
	.word	2102079853                      // 0x7d4b316d
	.word	80                              // 0x50
	.word	1886352651                      // 0x706f750b
	.word	2102079853                      // 0x7d4b316d
	.word	81                              // 0x51
	.word	248637203                       // 0xed1e713
	.word	2102079853                      // 0x7d4b316d
	.word	82                              // 0x52
	.word	703327087                       // 0x29ebeb6f
	.word	2102079853                      // 0x7d4b316d
	.word	83                              // 0x53
	.word	3690160730                      // 0xdbf3625a
	.word	2102079853                      // 0x7d4b316d
	.word	84                              // 0x54
	.word	787048238                       // 0x2ee9672e
	.word	2102079853                      // 0x7d4b316d
	.word	85                              // 0x55
	.word	1937497967                      // 0x737bdf6f
	.word	2102079853                      // 0x7d4b316d
	.word	86                              // 0x56
	.word	4205062514                      // 0xfaa42972
	.word	2102079853                      // 0x7d4b316d
	.word	87                              // 0x57
	.word	694462539                       // 0x2964a84b
	.word	2102079853                      // 0x7d4b316d
	.word	88                              // 0x58
	.word	85970907                        // 0x51fcfdb
	.word	2102079853                      // 0x7d4b316d
	.word	89                              // 0x59
	.word	3681984728                      // 0xdb76a0d8
	.word	2102079853                      // 0x7d4b316d
	.word	90                              // 0x5a
	.word	3620297642                      // 0xd7c95baa
	.word	2102079853                      // 0x7d4b316d
	.word	91                              // 0x5b
	.word	3394804480                      // 0xca589b00
	.word	2102079853                      // 0x7d4b316d
	.word	92                              // 0x5c
	.word	2119330183                      // 0x7e526987
	.word	2102079853                      // 0x7d4b316d
	.word	93                              // 0x5d
	.word	1963040266                      // 0x75019e0a
	.word	2102079853                      // 0x7d4b316d
	.word	94                              // 0x5e
	.word	1603391838                      // 0x5f91d15e
	.word	2102079853                      // 0x7d4b316d
	.word	95                              // 0x5f
	.word	2340921237                      // 0x8b879f95
	.word	2102079853                      // 0x7d4b316d
	.word	96                              // 0x60
	.word	3028177438                      // 0xb47e521e
	.word	2102079853                      // 0x7d4b316d
	.word	97                              // 0x61
	.word	2265525308                      // 0x87092c3c
	.word	2102079853                      // 0x7d4b316d
	.word	98                              // 0x62
	.word	2598903994                      // 0x9ae820ba
	.word	2102079853                      // 0x7d4b316d
	.word	99                              // 0x63
	.word	139524705                       // 0x850fa61
	.word	2102079853                      // 0x7d4b316d
	.word	100                             // 0x64
	.word	1076410600                      // 0x4028b8e8
	.word	2102079853                      // 0x7d4b316d
	.word	101                             // 0x65
	.word	220237413                       // 0xd208e65
	.word	2102079853                      // 0x7d4b316d
	.word	102                             // 0x66
	.word	3913623866                      // 0xe945293a
	.word	2102079853                      // 0x7d4b316d
	.word	103                             // 0x67
	.word	3453026372                      // 0xcdd10044
	.word	2102079853                      // 0x7d4b316d
	.word	104                             // 0x68
	.word	2321387380                      // 0x8a5d8f74
	.word	2102079853                      // 0x7d4b316d
	.word	105                             // 0x69
	.word	3319939363                      // 0xc5e24123
	.word	2102079853                      // 0x7d4b316d
	.word	106                             // 0x6a
	.word	398991913                       // 0x17c82229
	.word	2102079853                      // 0x7d4b316d
	.word	107                             // 0x6b
	.word	333429647                       // 0x13dfbb8f
	.word	2102079853                      // 0x7d4b316d
	.word	108                             // 0x6c
	.word	3927133990                      // 0xea134f26
	.word	2102079853                      // 0x7d4b316d
	.word	109                             // 0x6d
	.word	1797971294                      // 0x6b2add5e
	.word	2102079853                      // 0x7d4b316d
	.word	110                             // 0x6e
	.word	1622314776                      // 0x60b28f18
	.word	2102079853                      // 0x7d4b316d
	.word	111                             // 0x6f
	.word	1092862330                      // 0x4123c17a
	.word	2102079853                      // 0x7d4b316d
	.word	112                             // 0x70
	.word	2568657322                      // 0x991a99aa
	.word	2102079853                      // 0x7d4b316d
	.word	113                             // 0x71
	.word	2168129897                      // 0x813b0969
	.word	2102079853                      // 0x7d4b316d
	.word	114                             // 0x72
	.word	2890303119                      // 0xac46868f
	.word	2102079853                      // 0x7d4b316d
	.word	115                             // 0x73
	.word	1713332582                      // 0x661f6166
	.word	2102079853                      // 0x7d4b316d
	.word	116                             // 0x74
	.word	2375727721                      // 0x8d9aba69
	.word	2102079853                      // 0x7d4b316d
	.word	117                             // 0x75
	.word	3586767156                      // 0xd5c9b934
	.word	2102079853                      // 0x7d4b316d
	.word	118                             // 0x76
	.word	2191348475                      // 0x829d52fb
	.word	2102079853                      // 0x7d4b316d
	.word	119                             // 0x77
	.word	3910023869                      // 0xe90e3abd
	.word	2102079853                      // 0x7d4b316d
	.word	120                             // 0x78
	.word	4189915105                      // 0xf9bd07e1
	.word	2102079853                      // 0x7d4b316d
	.word	121                             // 0x79
	.word	2527353334                      // 0x96a459f6
	.word	2102079853                      // 0x7d4b316d
	.word	122                             // 0x7a
	.word	3429265923                      // 0xcc667203
	.word	2102079853                      // 0x7d4b316d
	.word	123                             // 0x7b
	.word	1283962724                      // 0x4c87b764
	.word	2102079853                      // 0x7d4b316d
	.word	124                             // 0x7c
	.word	1970290990                      // 0x7570412e
	.word	2102079853                      // 0x7d4b316d
	.word	125                             // 0x7d
	.word	2615950861                      // 0x9bec3e0d
	.word	2102079853                      // 0x7d4b316d
	.word	126                             // 0x7e
	.word	3338450337                      // 0xc6fcb5a1
	.word	2102079853                      // 0x7d4b316d
	.word	127                             // 0x7f
	.word	3971836509                      // 0xecbd6a5d
	.word	2102079853                      // 0x7d4b316d
	.word	128                             // 0x80
	.word	4260339231                      // 0xfdef9e1f
	.word	2102079853                      // 0x7d4b316d
	.word	129                             // 0x81
	.word	4160738226                      // 0xf7ffd3b2
	.word	2102079853                      // 0x7d4b316d
	.word	130                             // 0x82
	.word	1309372079                      // 0x4e0b6eaf
	.word	2102079853                      // 0x7d4b316d
	.word	131                             // 0x83
	.word	3151575564                      // 0xbbd93a0c
	.word	2102079853                      // 0x7d4b316d
	.word	132                             // 0x84
	.word	3938977714                      // 0xeac807b2
	.word	2102079853                      // 0x7d4b316d
	.word	133                             // 0x85
	.word	3228738087                      // 0xc072a227
	.word	2102079853                      // 0x7d4b316d
	.word	134                             // 0x86
	.word	2262837051                      // 0x86e0273b
	.word	2102079853                      // 0x7d4b316d
	.word	135                             // 0x87
	.word	3135705803                      // 0xbae712cb
	.word	2102079853                      // 0x7d4b316d
	.word	136                             // 0x88
	.word	990447104                       // 0x3b090600
	.word	2102079853                      // 0x7d4b316d
	.word	137                             // 0x89
	.word	4061147315                      // 0xf21030b3
	.word	2102079853                      // 0x7d4b316d
	.word	138                             // 0x8a
	.word	2783543715                      // 0xa5e981a3
	.word	2102079853                      // 0x7d4b316d
	.word	139                             // 0x8b
	.word	2471046843                      // 0x93492ebb
	.word	2102079853                      // 0x7d4b316d
	.word	140                             // 0x8c
	.word	403058134                       // 0x18062dd6
	.word	2102079853                      // 0x7d4b316d
	.word	141                             // 0x8d
	.word	260073473                       // 0xf806801
	.word	2102079853                      // 0x7d4b316d
	.word	142                             // 0x8e
	.word	1259876295                      // 0x4b182fc7
	.word	2102079853                      // 0x7d4b316d
	.word	143                             // 0x8f
	.word	2975678116                      // 0xb15d3ea4
	.word	2102079853                      // 0x7d4b316d
	.word	144                             // 0x90
	.word	2579807359                      // 0x99c4bc7f
	.word	2102079853                      // 0x7d4b316d
	.word	145                             // 0x91
	.word	863102422                       // 0x3371e5d6
	.word	2102079853                      // 0x7d4b316d
	.word	146                             // 0x92
	.word	650832017                       // 0x26cae891
	.word	2102079853                      // 0x7d4b316d
	.word	147                             // 0x93
	.word	90061610                        // 0x55e3b2a
	.word	2102079853                      // 0x7d4b316d
	.word	148                             // 0x94
	.word	2446954539                      // 0x91d9902b
	.word	2102079853                      // 0x7d4b316d
	.word	149                             // 0x95
	.word	3598610789                      // 0xd67e7165
	.word	2102079853                      // 0x7d4b316d
	.word	150                             // 0x96
	.word	2351688191                      // 0x8c2be9ff
	.word	2102079853                      // 0x7d4b316d
	.word	151                             // 0x97
	.word	1743478091                      // 0x67eb5d4b
	.word	2102079853                      // 0x7d4b316d
	.word	152                             // 0x98
	.word	2798805217                      // 0xa6d260e1
	.word	2102079853                      // 0x7d4b316d
	.word	153                             // 0x99
	.word	1438161982                      // 0x55b89c3e
	.word	2102079853                      // 0x7d4b316d
	.word	154                             // 0x9a
	.word	273416875                       // 0x104c02ab
	.word	2102079853                      // 0x7d4b316d
	.word	155                             // 0x9b
	.word	2438880600                      // 0x915e5d58
	.word	2102079853                      // 0x7d4b316d
	.word	156                             // 0x9c
	.word	1284541841                      // 0x4c908d91
	.word	2102079853                      // 0x7d4b316d
	.word	157                             // 0x9d
	.word	3593193962                      // 0xd62bc9ea
	.word	2102079853                      // 0x7d4b316d
	.word	158                             // 0x9e
	.word	1755082314                      // 0x689c6e4a
	.word	2102079853                      // 0x7d4b316d
	.word	159                             // 0x9f
	.word	3432612426                      // 0xcc99824a
	.word	2102079853                      // 0x7d4b316d
	.word	160                             // 0xa0
	.word	1404964820                      // 0x53be0fd4
	.word	2102079853                      // 0x7d4b316d
	.word	161                             // 0xa1
	.word	3374828335                      // 0xc927cb2f
	.word	2102079853                      // 0x7d4b316d
	.word	162                             // 0xa2
	.word	3311814731                      // 0xc566484b
	.word	2102079853                      // 0x7d4b316d
	.word	163                             // 0xa3
	.word	413908966                       // 0x18abbfe6
	.word	2102079853                      // 0x7d4b316d
	.word	164                             // 0xa4
	.word	3027808697                      // 0xb478b1b9
	.word	2102079853                      // 0x7d4b316d
	.word	165                             // 0xa5
	.word	540762785                       // 0x203b62a1
	.word	2102079853                      // 0x7d4b316d
	.size	__llvm_internal_gcov_emit_function_args.0, 1992

	.type	__llvm_internal_gcov_emit_arcs_args.0,@object // @__llvm_internal_gcov_emit_arcs_args.0
	.p2align	4, 0x0
__llvm_internal_gcov_emit_arcs_args.0:
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.1
	.word	5                               // 0x5
	.zero	4
	.xword	__llvm_gcov_ctr.2
	.word	5                               // 0x5
	.zero	4
	.xword	__llvm_gcov_ctr.3
	.word	5                               // 0x5
	.zero	4
	.xword	__llvm_gcov_ctr.4
	.word	5                               // 0x5
	.zero	4
	.xword	__llvm_gcov_ctr.5
	.word	2                               // 0x2
	.zero	4
	.xword	__llvm_gcov_ctr.6
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.7
	.word	2                               // 0x2
	.zero	4
	.xword	__llvm_gcov_ctr.8
	.word	2                               // 0x2
	.zero	4
	.xword	__llvm_gcov_ctr.9
	.word	4                               // 0x4
	.zero	4
	.xword	__llvm_gcov_ctr.10
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.11
	.word	4                               // 0x4
	.zero	4
	.xword	__llvm_gcov_ctr.12
	.word	2                               // 0x2
	.zero	4
	.xword	__llvm_gcov_ctr.13
	.word	7                               // 0x7
	.zero	4
	.xword	__llvm_gcov_ctr.14
	.word	2                               // 0x2
	.zero	4
	.xword	__llvm_gcov_ctr.15
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.16
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.17
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.18
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.19
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.20
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.21
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.22
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.23
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.24
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.25
	.word	5                               // 0x5
	.zero	4
	.xword	__llvm_gcov_ctr.26
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.27
	.word	7                               // 0x7
	.zero	4
	.xword	__llvm_gcov_ctr.28
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.29
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.30
	.word	4                               // 0x4
	.zero	4
	.xword	__llvm_gcov_ctr.31
	.word	4                               // 0x4
	.zero	4
	.xword	__llvm_gcov_ctr.32
	.word	6                               // 0x6
	.zero	4
	.xword	__llvm_gcov_ctr.33
	.word	6                               // 0x6
	.zero	4
	.xword	__llvm_gcov_ctr.34
	.word	6                               // 0x6
	.zero	4
	.xword	__llvm_gcov_ctr.35
	.word	6                               // 0x6
	.zero	4
	.xword	__llvm_gcov_ctr.36
	.word	6                               // 0x6
	.zero	4
	.xword	__llvm_gcov_ctr.37
	.word	6                               // 0x6
	.zero	4
	.xword	__llvm_gcov_ctr.38
	.word	2                               // 0x2
	.zero	4
	.xword	__llvm_gcov_ctr.39
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.40
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.41
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.42
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.43
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.44
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.45
	.word	2                               // 0x2
	.zero	4
	.xword	__llvm_gcov_ctr.46
	.word	6                               // 0x6
	.zero	4
	.xword	__llvm_gcov_ctr.47
	.word	6                               // 0x6
	.zero	4
	.xword	__llvm_gcov_ctr.48
	.word	6                               // 0x6
	.zero	4
	.xword	__llvm_gcov_ctr.49
	.word	4                               // 0x4
	.zero	4
	.xword	__llvm_gcov_ctr.50
	.word	4                               // 0x4
	.zero	4
	.xword	__llvm_gcov_ctr.51
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.52
	.word	2                               // 0x2
	.zero	4
	.xword	__llvm_gcov_ctr.53
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.54
	.word	2                               // 0x2
	.zero	4
	.xword	__llvm_gcov_ctr.55
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.56
	.word	2                               // 0x2
	.zero	4
	.xword	__llvm_gcov_ctr.57
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.58
	.word	5                               // 0x5
	.zero	4
	.xword	__llvm_gcov_ctr.59
	.word	6                               // 0x6
	.zero	4
	.xword	__llvm_gcov_ctr.60
	.word	2                               // 0x2
	.zero	4
	.xword	__llvm_gcov_ctr.61
	.word	2                               // 0x2
	.zero	4
	.xword	__llvm_gcov_ctr.62
	.word	8                               // 0x8
	.zero	4
	.xword	__llvm_gcov_ctr.63
	.word	5                               // 0x5
	.zero	4
	.xword	__llvm_gcov_ctr.64
	.word	6                               // 0x6
	.zero	4
	.xword	__llvm_gcov_ctr.65
	.word	2                               // 0x2
	.zero	4
	.xword	__llvm_gcov_ctr.66
	.word	5                               // 0x5
	.zero	4
	.xword	__llvm_gcov_ctr.67
	.word	2                               // 0x2
	.zero	4
	.xword	__llvm_gcov_ctr.68
	.word	5                               // 0x5
	.zero	4
	.xword	__llvm_gcov_ctr.69
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.70
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.71
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.72
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.73
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.74
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.75
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.76
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.77
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.78
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.79
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.80
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.81
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.82
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.83
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.84
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.85
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.86
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.87
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.88
	.word	5                               // 0x5
	.zero	4
	.xword	__llvm_gcov_ctr.89
	.word	5                               // 0x5
	.zero	4
	.xword	__llvm_gcov_ctr.90
	.word	5                               // 0x5
	.zero	4
	.xword	__llvm_gcov_ctr.91
	.word	2                               // 0x2
	.zero	4
	.xword	__llvm_gcov_ctr.92
	.word	5                               // 0x5
	.zero	4
	.xword	__llvm_gcov_ctr.93
	.word	4                               // 0x4
	.zero	4
	.xword	__llvm_gcov_ctr.94
	.word	4                               // 0x4
	.zero	4
	.xword	__llvm_gcov_ctr.95
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.96
	.word	4                               // 0x4
	.zero	4
	.xword	__llvm_gcov_ctr.97
	.word	5                               // 0x5
	.zero	4
	.xword	__llvm_gcov_ctr.98
	.word	6                               // 0x6
	.zero	4
	.xword	__llvm_gcov_ctr.99
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.100
	.word	8                               // 0x8
	.zero	4
	.xword	__llvm_gcov_ctr.101
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.102
	.word	8                               // 0x8
	.zero	4
	.xword	__llvm_gcov_ctr.103
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.104
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.105
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.106
	.word	6                               // 0x6
	.zero	4
	.xword	__llvm_gcov_ctr.107
	.word	6                               // 0x6
	.zero	4
	.xword	__llvm_gcov_ctr.108
	.word	6                               // 0x6
	.zero	4
	.xword	__llvm_gcov_ctr.109
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.110
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.111
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.112
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.113
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.114
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.115
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.116
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.117
	.word	2                               // 0x2
	.zero	4
	.xword	__llvm_gcov_ctr.118
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.119
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.120
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.121
	.word	4                               // 0x4
	.zero	4
	.xword	__llvm_gcov_ctr.122
	.word	8                               // 0x8
	.zero	4
	.xword	__llvm_gcov_ctr.123
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.124
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.125
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.126
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.127
	.word	7                               // 0x7
	.zero	4
	.xword	__llvm_gcov_ctr.128
	.word	4                               // 0x4
	.zero	4
	.xword	__llvm_gcov_ctr.129
	.word	4                               // 0x4
	.zero	4
	.xword	__llvm_gcov_ctr.130
	.word	8                               // 0x8
	.zero	4
	.xword	__llvm_gcov_ctr.131
	.word	8                               // 0x8
	.zero	4
	.xword	__llvm_gcov_ctr.132
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.133
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.134
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.135
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.136
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.137
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.138
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.139
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.140
	.word	5                               // 0x5
	.zero	4
	.xword	__llvm_gcov_ctr.141
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.142
	.word	5                               // 0x5
	.zero	4
	.xword	__llvm_gcov_ctr.143
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.144
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.145
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.146
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.147
	.word	3                               // 0x3
	.zero	4
	.xword	__llvm_gcov_ctr.148
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.149
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.150
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.151
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.152
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.153
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.154
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.155
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.156
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.157
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.158
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.159
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.160
	.word	4                               // 0x4
	.zero	4
	.xword	__llvm_gcov_ctr.161
	.word	4                               // 0x4
	.zero	4
	.xword	__llvm_gcov_ctr.162
	.word	5                               // 0x5
	.zero	4
	.xword	__llvm_gcov_ctr.163
	.word	1                               // 0x1
	.zero	4
	.xword	__llvm_gcov_ctr.164
	.word	5                               // 0x5
	.zero	4
	.xword	__llvm_gcov_ctr.165
	.size	__llvm_internal_gcov_emit_arcs_args.0, 2656

	.type	__llvm_internal_gcov_emit_file_info,@object // @__llvm_internal_gcov_emit_file_info
	.p2align	4, 0x0
__llvm_internal_gcov_emit_file_info:
	.xword	.L__unnamed_1
	.word	875575338                       // 0x3430382a
	.word	2102079853                      // 0x7d4b316d
	.word	166                             // 0xa6
	.zero	4
	.xword	__llvm_internal_gcov_emit_function_args.0
	.xword	__llvm_internal_gcov_emit_arcs_args.0
	.size	__llvm_internal_gcov_emit_file_info, 40

	.section	.init_array.0,"aw",@init_array
	.p2align	3, 0x0
	.xword	__llvm_gcov_init
	.hidden	__llvm_profile_runtime
	.type	.L__profc_make_ti,@object       // @__profc_make_ti
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_make_ti
	.p2align	3, 0x0
.L__profc_make_ti:
	.zero	8
	.size	.L__profc_make_ti, 8

	.type	.L__profd_make_ti,@object       // @__profd_make_ti
	.section	__llvm_prf_data,"awG",@progbits,__profc_make_ti
	.p2align	3, 0x0
.L__profd_make_ti:
	.xword	-5001490222628474638            // 0xba9723243ca3f0f2
	.xword	24                              // 0x18
	.xword	.L__profc_make_ti-.L__profd_make_ti
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_make_ti, 64

	.type	.L__profc_make_tu,@object       // @__profc_make_tu
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_make_tu
	.p2align	3, 0x0
.L__profc_make_tu:
	.zero	8
	.size	.L__profc_make_tu, 8

	.type	.L__profd_make_tu,@object       // @__profd_make_tu
	.section	__llvm_prf_data,"awG",@progbits,__profc_make_tu
	.p2align	3, 0x0
.L__profd_make_tu:
	.xword	-8857068571906375875            // 0x85155f0f843e7f3d
	.xword	24                              // 0x18
	.xword	.L__profc_make_tu-.L__profd_make_tu
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_make_tu, 64

	.type	.L__profc_memmove,@object       // @__profc_memmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
.L__profc_memmove:
	.zero	40
	.size	.L__profc_memmove, 40

	.type	.L__profd_memmove,@object       // @__profd_memmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
.L__profd_memmove:
	.xword	-306081897096246147             // 0xfbc09422e3668c7d
	.xword	-4061701397412038936            // 0xc7a1f0194f8c36e8
	.xword	.L__profc_memmove-.L__profd_memmove
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	5                               // 0x5
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_memmove, 64

	.type	.L__profc_memccpy,@object       // @__profc_memccpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profc_memccpy:
	.zero	40
	.size	.L__profc_memccpy, 40

	.type	.L__profd_memccpy,@object       // @__profd_memccpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profd_memccpy:
	.xword	-1590863763861247346            // 0xe9ec1dd5e5026a8e
	.xword	1189690007454808                // 0x43a044a498458
	.xword	.L__profc_memccpy-.L__profd_memccpy
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	5                               // 0x5
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_memccpy, 64

	.type	.L__profc_memchr,@object        // @__profc_memchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
.L__profc_memchr:
	.zero	40
	.size	.L__profc_memchr, 40

	.type	.L__profd_memchr,@object        // @__profd_memchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
.L__profd_memchr:
	.xword	5708666158622859656             // 0x4f3941a01e026188
	.xword	4538308109                      // 0x10e81160d
	.xword	.L__profc_memchr-.L__profd_memchr
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	5                               // 0x5
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_memchr, 64

	.type	.L__profc_memcmp,@object        // @__profc_memcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profc_memcmp:
	.zero	40
	.size	.L__profc_memcmp, 40

	.type	.L__profd_memcmp,@object        // @__profd_memcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profd_memcmp:
	.xword	-4679550853048924350            // 0xbf0ee54adfa48742
	.xword	4538045965                      // 0x10e7d160d
	.xword	.L__profc_memcmp-.L__profd_memcmp
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	5                               // 0x5
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_memcmp, 64

	.type	.L__profc_memcpy,@object        // @__profc_memcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
.L__profc_memcpy:
	.zero	16
	.size	.L__profc_memcpy, 16

	.type	.L__profd_memcpy,@object        // @__profd_memcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
.L__profd_memcpy:
	.xword	3893303423671325810             // 0x3607cad612bdd472
	.xword	17496                           // 0x4458
	.xword	.L__profc_memcpy-.L__profd_memcpy
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	2                               // 0x2
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_memcpy, 64

	.type	.L__profc_memrchr,@object       // @__profc_memrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profc_memrchr:
	.zero	24
	.size	.L__profc_memrchr, 24

	.type	.L__profd_memrchr,@object       // @__profd_memrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profd_memrchr:
	.xword	-548334422562728352             // 0xf863ecbf75079660
	.xword	9516882138200                   // 0x8a7d2611458
	.xword	.L__profc_memrchr-.L__profd_memrchr
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_memrchr, 64

	.type	.L__profc_memset,@object        // @__profc_memset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
.L__profc_memset:
	.zero	16
	.size	.L__profc_memset, 16

	.type	.L__profd_memset,@object        // @__profd_memset
	.section	__llvm_prf_data,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
.L__profd_memset:
	.xword	-2741574704065975695            // 0xd9f3f85506f36a71
	.xword	17496                           // 0x4458
	.xword	.L__profc_memset-.L__profd_memset
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	2                               // 0x2
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_memset, 64

	.type	.L__profc_stpcpy,@object        // @__profc_stpcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profc_stpcpy:
	.zero	16
	.size	.L__profc_stpcpy, 16

	.type	.L__profd_stpcpy,@object        // @__profd_stpcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profd_stpcpy:
	.xword	4454833295779690053             // 0x3dd2bf47a087f645
	.xword	17496                           // 0x4458
	.xword	.L__profc_stpcpy-.L__profd_stpcpy
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	2                               // 0x2
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_stpcpy, 64

	.type	.L__profc_strchrnul,@object     // @__profc_strchrnul
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profc_strchrnul:
	.zero	32
	.size	.L__profc_strchrnul, 32

	.type	.L__profd_strchrnul,@object     // @__profd_strchrnul
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profd_strchrnul:
	.xword	5039208642683934005             // 0x45eedd8fc8411535
	.xword	70911064                        // 0x43a0458
	.xword	.L__profc_strchrnul-.L__profd_strchrnul
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	4                               // 0x4
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_strchrnul, 64

	.type	.L__profc_strchr,@object        // @__profc_strchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
.L__profc_strchr:
	.zero	24
	.size	.L__profc_strchr, 24

	.type	.L__profd_strchr,@object        // @__profd_strchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
.L__profd_strchr:
	.xword	-5671522429266412413            // 0xb14ab4664bea3c83
	.xword	13914928649304                  // 0xca7d2611458
	.xword	.L__profc_strchr-.L__profd_strchr
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_strchr, 64

	.type	.L__profc_strcmp,@object        // @__profc_strcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profc_strcmp:
	.zero	32
	.size	.L__profc_strcmp, 32

	.type	.L__profd_strcmp,@object        // @__profd_strcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profd_strcmp:
	.xword	1013198891307352868             // 0xe0f9b060331c324
	.xword	70906968                        // 0x439f458
	.xword	.L__profc_strcmp-.L__profd_strcmp
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	4                               // 0x4
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_strcmp, 64

	.type	.L__profc_strlen,@object        // @__profc_strlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
.L__profc_strlen:
	.zero	16
	.size	.L__profc_strlen, 16

	.type	.L__profd_strlen,@object        // @__profd_strlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
.L__profd_strlen:
	.xword	2965136410638013299             // 0x292647db02a7d373
	.xword	17496                           // 0x4458
	.xword	.L__profc_strlen-.L__profd_strlen
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	2                               // 0x2
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_strlen, 64

	.type	.L__profc_strncmp,@object       // @__profc_strncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profc_strncmp:
	.zero	72
	.size	.L__profc_strncmp, 72

	.type	.L__profd_strncmp,@object       // @__profd_strncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profd_strncmp:
	.xword	-6058495834680104774            // 0xabebe6233cb568ba
	.xword	7207353986825238351             // 0x6405aa43cb36b74f
	.xword	.L__profc_strncmp-.L__profd_strncmp
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	9                               // 0x9
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_strncmp, 64

	.type	.L__profc_swab,@object          // @__profc_swab
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
.L__profc_swab:
	.zero	16
	.size	.L__profc_swab, 16

	.type	.L__profd_swab,@object          // @__profd_swab
	.section	__llvm_prf_data,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
.L__profd_swab:
	.xword	-1619950660557759641            // 0xe984c77503cb9b67
	.xword	18193                           // 0x4711
	.xword	.L__profc_swab-.L__profd_swab
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	2                               // 0x2
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_swab, 64

	.type	.L__profc_isalpha,@object       // @__profc_isalpha
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profc_isalpha:
	.zero	8
	.size	.L__profc_isalpha, 8

	.type	.L__profd_isalpha,@object       // @__profd_isalpha
	.section	__llvm_prf_data,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profd_isalpha:
	.xword	-1429966999967671460            // 0xec27bc96fe655b5c
	.xword	1563                            // 0x61b
	.xword	.L__profc_isalpha-.L__profd_isalpha
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_isalpha, 64

	.type	.L__profc_isascii,@object       // @__profc_isascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
.L__profc_isascii:
	.zero	8
	.size	.L__profc_isascii, 8

	.type	.L__profd_isascii,@object       // @__profd_isascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
.L__profd_isascii:
	.xword	-4792250000779744687            // 0xbd7e8203c4a86a51
	.xword	1562                            // 0x61a
	.xword	.L__profc_isascii-.L__profd_isascii
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_isascii, 64

	.type	.L__profc_isblank,@object       // @__profc_isblank
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
.L__profc_isblank:
	.zero	24
	.size	.L__profc_isblank, 24

	.type	.L__profd_isblank,@object       // @__profd_isblank
	.section	__llvm_prf_data,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
.L__profd_isblank:
	.xword	2465200613623135234             // 0x223626e59b14fc02
	.xword	6354911                         // 0x60f7df
	.xword	.L__profc_isblank-.L__profd_isblank
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_isblank, 64

	.type	.L__profc_iscntrl,@object       // @__profc_iscntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profc_iscntrl:
	.zero	24
	.size	.L__profc_iscntrl, 24

	.type	.L__profd_iscntrl,@object       // @__profd_iscntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profd_iscntrl:
	.xword	8897732069425577183             // 0x7b7b182cc8b67cdf
	.xword	6354655                         // 0x60f6df
	.xword	.L__profc_iscntrl-.L__profd_iscntrl
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_iscntrl, 64

	.type	.L__profc_isdigit,@object       // @__profc_isdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profc_isdigit:
	.zero	8
	.size	.L__profc_isdigit, 8

	.type	.L__profd_isdigit,@object       // @__profd_isdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profd_isdigit:
	.xword	3483985654529092453             // 0x30599a7e6cc36b65
	.xword	1563                            // 0x61b
	.xword	.L__profc_isdigit-.L__profd_isdigit
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_isdigit, 64

	.type	.L__profc_isgraph,@object       // @__profc_isgraph
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profc_isgraph:
	.zero	8
	.size	.L__profc_isgraph, 8

	.type	.L__profd_isgraph,@object       // @__profd_isgraph
	.section	__llvm_prf_data,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profd_isgraph:
	.xword	-127227288456547236             // 0xfe3bff7489cfb45c
	.xword	1563                            // 0x61b
	.xword	.L__profc_isgraph-.L__profd_isgraph
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_isgraph, 64

	.type	.L__profc_islower,@object       // @__profc_islower
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
.L__profc_islower:
	.zero	8
	.size	.L__profc_islower, 8

	.type	.L__profd_islower,@object       // @__profd_islower
	.section	__llvm_prf_data,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
.L__profd_islower:
	.xword	7501983819047161697             // 0x681c66894508cf61
	.xword	1563                            // 0x61b
	.xword	.L__profc_islower-.L__profd_islower
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_islower, 64

	.type	.L__profc_isprint,@object       // @__profc_isprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
.L__profc_isprint:
	.zero	8
	.size	.L__profc_isprint, 8

	.type	.L__profd_isprint,@object       // @__profd_isprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
.L__profd_isprint:
	.xword	-7275761640889424986            // 0x9b074d56145f63a6
	.xword	1563                            // 0x61b
	.xword	.L__profc_isprint-.L__profd_isprint
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_isprint, 64

	.type	.L__profc_isspace,@object       // @__profc_isspace
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
.L__profc_isspace:
	.zero	24
	.size	.L__profc_isspace, 24

	.type	.L__profd_isspace,@object       // @__profd_isspace
	.section	__llvm_prf_data,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
.L__profd_isspace:
	.xword	9032360604355461395             // 0x7d59641d39d70113
	.xword	6354907                         // 0x60f7db
	.xword	.L__profc_isspace-.L__profd_isspace
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_isspace, 64

	.type	.L__profc_isupper,@object       // @__profc_isupper
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
.L__profc_isupper:
	.zero	8
	.size	.L__profc_isupper, 8

	.type	.L__profd_isupper,@object       // @__profd_isupper
	.section	__llvm_prf_data,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
.L__profd_isupper:
	.xword	4174714232255583053             // 0x39ef9079c45c934d
	.xword	1563                            // 0x61b
	.xword	.L__profc_isupper-.L__profd_isupper
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_isupper, 64

	.type	.L__profc_iswcntrl,@object      // @__profc_iswcntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profc_iswcntrl:
	.zero	56
	.size	.L__profc_iswcntrl, 56

	.type	.L__profd_iswcntrl,@object      // @__profd_iswcntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profd_iswcntrl:
	.xword	7000259844681188668             // 0x6125eb3d61a7453c
	.xword	106600273393371                 // 0x60f3cf6db6db
	.xword	.L__profc_iswcntrl-.L__profd_iswcntrl
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	7                               // 0x7
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_iswcntrl, 64

	.type	.L__profc_iswdigit,@object      // @__profc_iswdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profc_iswdigit:
	.zero	8
	.size	.L__profc_iswdigit, 8

	.type	.L__profd_iswdigit,@object      // @__profd_iswdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profd_iswdigit:
	.xword	8583753245428091608             // 0x771f9e1919590ad8
	.xword	1563                            // 0x61b
	.xword	.L__profc_iswdigit-.L__profd_iswdigit
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_iswdigit, 64

	.type	.L__profc_iswprint,@object      // @__profc_iswprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profc_iswprint:
	.zero	80
	.size	.L__profc_iswprint, 80

	.type	.L__profd_iswprint,@object      // @__profd_iswprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profd_iswprint:
	.xword	-719555261641779946             // 0xf603a04d49941516
	.xword	-2566119187471392224            // 0xdc635031e3742220
	.xword	.L__profc_iswprint-.L__profd_iswprint
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	10                              // 0xa
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_iswprint, 64

	.type	.L__profc_iswxdigit,@object     // @__profc_iswxdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profc_iswxdigit:
	.zero	24
	.size	.L__profc_iswxdigit, 24

	.type	.L__profd_iswxdigit,@object     // @__profd_iswxdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profd_iswxdigit:
	.xword	624771703830219826              // 0x8aba28df0840c32
	.xword	6354651                         // 0x60f6db
	.xword	.L__profc_iswxdigit-.L__profd_iswxdigit
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_iswxdigit, 64

	.type	.L__profc_toascii,@object       // @__profc_toascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
.L__profc_toascii:
	.zero	8
	.size	.L__profc_toascii, 8

	.type	.L__profd_toascii,@object       // @__profd_toascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
.L__profd_toascii:
	.xword	4548159975983457080             // 0x3f1e4f66a624a338
	.xword	24                              // 0x18
	.xword	.L__profc_toascii-.L__profd_toascii
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_toascii, 64

	.type	.L__profc_fdim,@object          // @__profc_fdim
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
.L__profc_fdim:
	.zero	32
	.size	.L__profc_fdim, 32

	.type	.L__profd_fdim,@object          // @__profd_fdim
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
.L__profd_fdim:
	.xword	-3545869933759497925            // 0xceca8a150286f93b
	.xword	7369846577040809592             // 0x6646f46a29a55e78
	.xword	.L__profc_fdim-.L__profd_fdim
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	4                               // 0x4
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_fdim, 64

	.type	.L__profc_fdimf,@object         // @__profc_fdimf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
.L__profc_fdimf:
	.zero	32
	.size	.L__profc_fdimf, 32

	.type	.L__profd_fdimf,@object         // @__profd_fdimf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
.L__profd_fdimf:
	.xword	-1547869627280940664            // 0xea84dcc6634da188
	.xword	7369846577040809592             // 0x6646f46a29a55e78
	.xword	.L__profc_fdimf-.L__profd_fdimf
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	4                               // 0x4
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_fdimf, 64

	.type	.L__profc_fmax,@object          // @__profc_fmax
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
.L__profc_fmax:
	.zero	48
	.size	.L__profc_fmax, 48

	.type	.L__profd_fmax,@object          // @__profd_fmax
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
.L__profd_fmax:
	.xword	-2423801789625842334            // 0xde5ced1d3b654562
	.xword	3977842549302548673             // 0x373422b91b9cd8c1
	.xword	.L__profc_fmax-.L__profd_fmax
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	6                               // 0x6
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_fmax, 64

	.type	.L__profc_fmaxf,@object         // @__profc_fmaxf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
.L__profc_fmaxf:
	.zero	48
	.size	.L__profc_fmaxf, 48

	.type	.L__profd_fmaxf,@object         // @__profd_fmaxf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
.L__profd_fmaxf:
	.xword	-5134209104457391460            // 0xb8bfa0058e3da29c
	.xword	3977842549302548673             // 0x373422b91b9cd8c1
	.xword	.L__profc_fmaxf-.L__profd_fmaxf
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	6                               // 0x6
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_fmaxf, 64

	.type	.L__profc_fmaxl,@object         // @__profc_fmaxl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
.L__profc_fmaxl:
	.zero	48
	.size	.L__profc_fmaxl, 48

	.type	.L__profd_fmaxl,@object         // @__profd_fmaxl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
.L__profd_fmaxl:
	.xword	-3138580006960380340            // 0xd471861cd1fbc64c
	.xword	3977842549302548673             // 0x373422b91b9cd8c1
	.xword	.L__profc_fmaxl-.L__profd_fmaxl
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	6                               // 0x6
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_fmaxl, 64

	.type	.L__profc_fmin,@object          // @__profc_fmin
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
.L__profc_fmin:
	.zero	48
	.size	.L__profc_fmin, 48

	.type	.L__profd_fmin,@object          // @__profd_fmin
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
.L__profd_fmin:
	.xword	965427315610335377              // 0xd65e3074b69b891
	.xword	3977842549302548673             // 0x373422b91b9cd8c1
	.xword	.L__profc_fmin-.L__profd_fmin
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	6                               // 0x6
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_fmin, 64

	.type	.L__profc_fminf,@object         // @__profc_fminf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
.L__profc_fminf:
	.zero	48
	.size	.L__profc_fminf, 48

	.type	.L__profd_fminf,@object         // @__profd_fminf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
.L__profd_fminf:
	.xword	7710199602704325723             // 0x6b0021b0328c9c5b
	.xword	3977842549302548673             // 0x373422b91b9cd8c1
	.xword	.L__profc_fminf-.L__profd_fminf
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	6                               // 0x6
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_fminf, 64

	.type	.L__profc_fminl,@object         // @__profc_fminl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
.L__profc_fminl:
	.zero	48
	.size	.L__profc_fminl, 48

	.type	.L__profd_fminl,@object         // @__profd_fminl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
.L__profd_fminl:
	.xword	2487418697363824514             // 0x2285162058091f82
	.xword	3977842549302548673             // 0x373422b91b9cd8c1
	.xword	.L__profc_fminl-.L__profd_fminl
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	6                               // 0x6
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_fminl, 64

	.type	.L__profc_l64a,@object          // @__profc_l64a
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
.L__profc_l64a:
	.zero	16
	.size	.L__profc_l64a, 16

	.type	.L__profd_l64a,@object          // @__profd_l64a
	.section	__llvm_prf_data,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
.L__profd_l64a:
	.xword	-6158745991357604691            // 0xaa87bd26bb44dcad
	.xword	17496                           // 0x4458
	.xword	.L__profc_l64a-.L__profd_l64a
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	2                               // 0x2
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_l64a, 64

	.type	.L__profc_srand,@object         // @__profc_srand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
.L__profc_srand:
	.zero	8
	.size	.L__profc_srand, 8

	.type	.L__profd_srand,@object         // @__profd_srand
	.section	__llvm_prf_data,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
.L__profd_srand:
	.xword	-2085616837322687880            // 0xe30e668959ceba78
	.xword	0                               // 0x0
	.xword	.L__profc_srand-.L__profd_srand
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_srand, 64

	.type	.L__profc_rand,@object          // @__profc_rand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
.L__profc_rand:
	.zero	8
	.size	.L__profc_rand, 8

	.type	.L__profd_rand,@object          // @__profd_rand
	.section	__llvm_prf_data,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
.L__profd_rand:
	.xword	7206085285791387956             // 0x6401286350c3d134
	.xword	24                              // 0x18
	.xword	.L__profc_rand-.L__profd_rand
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_rand, 64

	.type	.L__profc_insque,@object        // @__profc_insque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
.L__profc_insque:
	.zero	24
	.size	.L__profc_insque, 24

	.type	.L__profd_insque,@object        // @__profd_insque
	.section	__llvm_prf_data,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
.L__profd_insque:
	.xword	-5080349535175464041            // 0xb97ef903bd0bab97
	.xword	45786906010769                  // 0x29a49844a491
	.xword	.L__profc_insque-.L__profd_insque
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_insque, 64

	.type	.L__profc_remque,@object        // @__profc_remque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
.L__profc_remque:
	.zero	24
	.size	.L__profc_remque, 24

	.type	.L__profd_remque,@object        // @__profd_remque
	.section	__llvm_prf_data,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
.L__profd_remque:
	.xword	-7214219538753974334            // 0x9be1f18d54e30fc2
	.xword	11043906705                     // 0x29244a491
	.xword	.L__profc_remque-.L__profd_remque
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_remque, 64

	.type	.L__profc_lsearch,@object       // @__profc_lsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
.L__profc_lsearch:
	.zero	24
	.size	.L__profc_lsearch, 24

	.type	.L__profd_lsearch,@object       // @__profd_lsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
.L__profd_lsearch:
	.xword	-7032153342590886098            // 0x9e68c5caf8cb5f2e
	.xword	1245367951758424                // 0x46ca7d2611458
	.xword	.L__profc_lsearch-.L__profd_lsearch
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_lsearch, 64

	.type	.L__profc_lfind,@object         // @__profc_lfind
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
.L__profc_lfind:
	.zero	24
	.size	.L__profc_lfind, 24

	.type	.L__profd_lfind,@object         // @__profd_lfind
	.section	__llvm_prf_data,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
.L__profd_lfind:
	.xword	-6350214982902907667            // 0xa7df811e30b57ced
	.xword	1245367951758424                // 0x46ca7d2611458
	.xword	.L__profc_lfind-.L__profd_lfind
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_lfind, 64

	.type	.L__profc_abs,@object           // @__profc_abs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
.L__profc_abs:
	.zero	16
	.size	.L__profc_abs, 16

	.type	.L__profd_abs,@object           // @__profd_abs
	.section	__llvm_prf_data,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
.L__profd_abs:
	.xword	-238465663743841031             // 0xfcb0ccbe056bacf9
	.xword	99164                           // 0x1835c
	.xword	.L__profc_abs-.L__profd_abs
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	2                               // 0x2
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_abs, 64

	.type	.L__profc_atoi,@object          // @__profc_atoi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
.L__profc_atoi:
	.zero	56
	.size	.L__profc_atoi, 56

	.type	.L__profd_atoi,@object          // @__profd_atoi
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
.L__profd_atoi:
	.xword	-6544211519801369139            // 0xa52e4a4ba3385dcd
	.xword	638206505195021                 // 0x244720809160d
	.xword	.L__profc_atoi-.L__profd_atoi
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	7                               // 0x7
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_atoi, 64

	.type	.L__profc_atol,@object          // @__profc_atol
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
.L__profc_atol:
	.zero	56
	.size	.L__profc_atol, 56

	.type	.L__profd_atol,@object          // @__profd_atol
	.section	__llvm_prf_data,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
.L__profd_atol:
	.xword	8236175749196770609             // 0x724cc634ee8f6d31
	.xword	638206505195021                 // 0x244720809160d
	.xword	.L__profc_atol-.L__profd_atol
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	7                               // 0x7
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_atol, 64

	.type	.L__profc_atoll,@object         // @__profc_atoll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
.L__profc_atoll:
	.zero	56
	.size	.L__profc_atoll, 56

	.type	.L__profd_atoll,@object         // @__profd_atoll
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
.L__profd_atoll:
	.xword	3653807471789013357             // 0x32b4ee8971a6f96d
	.xword	638206505195021                 // 0x244720809160d
	.xword	.L__profc_atoll-.L__profd_atoll
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	7                               // 0x7
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_atoll, 64

	.type	.L__profc_bsearch,@object       // @__profc_bsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
.L__profc_bsearch:
	.zero	32
	.size	.L__profc_bsearch, 32

	.type	.L__profd_bsearch,@object       // @__profd_bsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
.L__profd_bsearch:
	.xword	8750110911118262334             // 0x796ea3837a79403e
	.xword	-852542619444921222             // 0xf42b29012c1abc7a
	.xword	.L__profc_bsearch-.L__profd_bsearch
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	4                               // 0x4
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_bsearch, 64

	.type	.L__profc_bsearch_r,@object     // @__profc_bsearch_r
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
.L__profc_bsearch_r:
	.zero	32
	.size	.L__profc_bsearch_r, 32

	.type	.L__profd_bsearch_r,@object     // @__profd_bsearch_r
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
.L__profd_bsearch_r:
	.xword	1417097008757763708             // 0x13aa8a38ab466e7c
	.xword	1259382983000112142             // 0x117a3a2689e4bc0e
	.xword	.L__profc_bsearch_r-.L__profd_bsearch_r
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	4                               // 0x4
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_bsearch_r, 64

	.type	.L__profc_div,@object           // @__profc_div
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_div
	.p2align	3, 0x0
.L__profc_div:
	.zero	8
	.size	.L__profc_div, 8

	.type	.L__profd_div,@object           // @__profd_div
	.section	__llvm_prf_data,"awG",@progbits,__profc_div
	.p2align	3, 0x0
.L__profd_div:
	.xword	5497092892325669176             // 0x4c4998dc58656938
	.xword	24                              // 0x18
	.xword	.L__profc_div-.L__profd_div
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_div, 64

	.type	.L__profc_imaxabs,@object       // @__profc_imaxabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profc_imaxabs:
	.zero	16
	.size	.L__profc_imaxabs, 16

	.type	.L__profd_imaxabs,@object       // @__profd_imaxabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profd_imaxabs:
	.xword	8946668544180752025             // 0x7c28f3a3b30e0e99
	.xword	99164                           // 0x1835c
	.xword	.L__profc_imaxabs-.L__profd_imaxabs
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	2                               // 0x2
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_imaxabs, 64

	.type	.L__profc_imaxdiv,@object       // @__profc_imaxdiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
.L__profc_imaxdiv:
	.zero	8
	.size	.L__profc_imaxdiv, 8

	.type	.L__profd_imaxdiv,@object       // @__profd_imaxdiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
.L__profd_imaxdiv:
	.xword	-3928426486442246988            // 0xc97b6cec9d5fbcb4
	.xword	24                              // 0x18
	.xword	.L__profc_imaxdiv-.L__profd_imaxdiv
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_imaxdiv, 64

	.type	.L__profc_labs,@object          // @__profc_labs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
.L__profc_labs:
	.zero	16
	.size	.L__profc_labs, 16

	.type	.L__profd_labs,@object          // @__profd_labs
	.section	__llvm_prf_data,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
.L__profd_labs:
	.xword	-7118441263952323418            // 0x9d363762b3a39ca6
	.xword	99164                           // 0x1835c
	.xword	.L__profc_labs-.L__profd_labs
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	2                               // 0x2
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_labs, 64

	.type	.L__profc_ldiv,@object          // @__profc_ldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
.L__profc_ldiv:
	.zero	8
	.size	.L__profc_ldiv, 8

	.type	.L__profd_ldiv,@object          // @__profd_ldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
.L__profd_ldiv:
	.xword	7149836041034155625             // 0x633951ff74204669
	.xword	24                              // 0x18
	.xword	.L__profc_ldiv-.L__profd_ldiv
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_ldiv, 64

	.type	.L__profc_llabs,@object         // @__profc_llabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
.L__profc_llabs:
	.zero	16
	.size	.L__profc_llabs, 16

	.type	.L__profd_llabs,@object         // @__profd_llabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
.L__profd_llabs:
	.xword	7684789126781046466             // 0x6aa5dafebb918ec2
	.xword	99164                           // 0x1835c
	.xword	.L__profc_llabs-.L__profd_llabs
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	2                               // 0x2
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_llabs, 64

	.type	.L__profc_lldiv,@object         // @__profc_lldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
.L__profc_lldiv:
	.zero	8
	.size	.L__profc_lldiv, 8

	.type	.L__profd_lldiv,@object         // @__profd_lldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
.L__profd_lldiv:
	.xword	-5329156747615108898            // 0xb60b082c520680de
	.xword	24                              // 0x18
	.xword	.L__profc_lldiv-.L__profd_lldiv
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_lldiv, 64

	.type	.L__profc_wcschr,@object        // @__profc_wcschr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profc_wcschr:
	.zero	40
	.size	.L__profc_wcschr, 40

	.type	.L__profd_wcschr,@object        // @__profd_wcschr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profd_wcschr:
	.xword	-2279810736707830048            // 0xe05c7c36c3687ee0
	.xword	4538308109                      // 0x10e81160d
	.xword	.L__profc_wcschr-.L__profd_wcschr
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	5                               // 0x5
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_wcschr, 64

	.type	.L__profc_wcscmp,@object        // @__profc_wcscmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profc_wcscmp:
	.zero	56
	.size	.L__profc_wcscmp, 56

	.type	.L__profd_wcscmp,@object        // @__profd_wcscmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profd_wcscmp:
	.xword	-3710185595167438704            // 0xcc82c5dbcd460890
	.xword	1188468208228060                // 0x438e7d160d6dc
	.xword	.L__profc_wcscmp-.L__profd_wcscmp
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	7                               // 0x7
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_wcscmp, 64

	.type	.L__profc_wcscpy,@object        // @__profc_wcscpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profc_wcscpy:
	.zero	16
	.size	.L__profc_wcscpy, 16

	.type	.L__profd_wcscpy,@object        // @__profd_wcscpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profd_wcscpy:
	.xword	-8381368184235816342            // 0x8baf660af6dd0a6a
	.xword	9304                            // 0x2458
	.xword	.L__profc_wcscpy-.L__profd_wcscpy
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	2                               // 0x2
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_wcscpy, 64

	.type	.L__profc_wcslen,@object        // @__profc_wcslen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
.L__profc_wcslen:
	.zero	16
	.size	.L__profc_wcslen, 16

	.type	.L__profd_wcslen,@object        // @__profd_wcslen
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
.L__profd_wcslen:
	.xword	3988408974905483574             // 0x3759acd4c838a136
	.xword	17496                           // 0x4458
	.xword	.L__profc_wcslen-.L__profd_wcslen
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	2                               // 0x2
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_wcslen, 64

	.type	.L__profc_wcsncmp,@object       // @__profc_wcsncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profc_wcsncmp:
	.zero	80
	.size	.L__profc_wcsncmp, 80

	.type	.L__profd_wcsncmp,@object       // @__profd_wcsncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profd_wcsncmp:
	.xword	-5425166749483878188            // 0xb4b5ef95c9c0b8d4
	.xword	6710790269995215964             // 0x5d218431fd366c5c
	.xword	.L__profc_wcsncmp-.L__profd_wcsncmp
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	10                              // 0xa
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_wcsncmp, 64

	.type	.L__profc_wmemchr,@object       // @__profc_wmemchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profc_wmemchr:
	.zero	40
	.size	.L__profc_wmemchr, 40

	.type	.L__profd_wmemchr,@object       // @__profd_wmemchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profd_wmemchr:
	.xword	-150916099757221660             // 0xfde7d69b5b1558e4
	.xword	4538308109                      // 0x10e81160d
	.xword	.L__profc_wmemchr-.L__profd_wmemchr
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	5                               // 0x5
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_wmemchr, 64

	.type	.L__profc_wmemcmp,@object       // @__profc_wmemcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profc_wmemcmp:
	.zero	48
	.size	.L__profc_wmemcmp, 48

	.type	.L__profd_wmemcmp,@object       // @__profd_wmemcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profd_wmemcmp:
	.xword	5386172057678365784             // 0x4abf86f3050dc458
	.xword	1189621521503964                // 0x439f45834d6dc
	.xword	.L__profc_wmemcmp-.L__profd_wmemcmp
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	6                               // 0x6
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_wmemcmp, 64

	.type	.L__profc_wmemcpy,@object       // @__profc_wmemcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
.L__profc_wmemcpy:
	.zero	16
	.size	.L__profc_wmemcpy, 16

	.type	.L__profd_wmemcpy,@object       // @__profd_wmemcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
.L__profd_wmemcpy:
	.xword	7326050423799855187             // 0x65ab5c0b9d30b853
	.xword	9304                            // 0x2458
	.xword	.L__profc_wmemcpy-.L__profd_wmemcpy
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	2                               // 0x2
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_wmemcpy, 64

	.type	.L__profc_wmemmove,@object      // @__profc_wmemmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profc_wmemmove:
	.zero	40
	.size	.L__profc_wmemmove, 40

	.type	.L__profd_wmemmove,@object      // @__profd_wmemmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profd_wmemmove:
	.xword	-4659407939446788683            // 0xbf56752a69a3adb5
	.xword	-1500206092990891740            // 0xeb2e3281c166b924
	.xword	.L__profc_wmemmove-.L__profd_wmemmove
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	5                               // 0x5
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_wmemmove, 64

	.type	.L__profc_wmemset,@object       // @__profc_wmemset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profc_wmemset:
	.zero	16
	.size	.L__profc_wmemset, 16

	.type	.L__profd_wmemset,@object       // @__profd_wmemset
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profd_wmemset:
	.xword	-8291142148468431281            // 0x8ceff224f245264f
	.xword	9304                            // 0x2458
	.xword	.L__profc_wmemset-.L__profd_wmemset
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	2                               // 0x2
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_wmemset, 64

	.type	.L__profc_bcopy,@object         // @__profc_bcopy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profc_bcopy:
	.zero	40
	.size	.L__profc_bcopy, 40

	.type	.L__profd_bcopy,@object         // @__profd_bcopy
	.section	__llvm_prf_data,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profd_bcopy:
	.xword	-8407331144368071880            // 0x8b5328de3edcdb38
	.xword	5234109875325077019             // 0x48a34b333a1d861b
	.xword	.L__profc_bcopy-.L__profd_bcopy
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	5                               // 0x5
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_bcopy, 64

	.type	.L__profc_rotl64,@object        // @__profc_rotl64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profc_rotl64:
	.zero	8
	.size	.L__profc_rotl64, 8

	.type	.L__profd_rotl64,@object        // @__profd_rotl64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profd_rotl64:
	.xword	4714666614722164144             // 0x416ddc4e84e875b0
	.xword	24                              // 0x18
	.xword	.L__profc_rotl64-.L__profd_rotl64
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_rotl64, 64

	.type	.L__profc_rotr64,@object        // @__profc_rotr64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profc_rotr64:
	.zero	8
	.size	.L__profc_rotr64, 8

	.type	.L__profd_rotr64,@object        // @__profd_rotr64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profd_rotr64:
	.xword	-8427642833712987187            // 0x8b0aff7e8aabc3cd
	.xword	24                              // 0x18
	.xword	.L__profc_rotr64-.L__profd_rotr64
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_rotr64, 64

	.type	.L__profc_rotl32,@object        // @__profc_rotl32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profc_rotl32:
	.zero	8
	.size	.L__profc_rotl32, 8

	.type	.L__profd_rotl32,@object        // @__profd_rotl32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profd_rotl32:
	.xword	6417704780586152324             // 0x5910447ed829f184
	.xword	24                              // 0x18
	.xword	.L__profc_rotl32-.L__profd_rotl32
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_rotl32, 64

	.type	.L__profc_rotr32,@object        // @__profc_rotr32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profc_rotr32:
	.zero	8
	.size	.L__profc_rotr32, 8

	.type	.L__profd_rotr32,@object        // @__profd_rotr32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profd_rotr32:
	.xword	-5668908084823466940            // 0xb153fe21cbc1dc44
	.xword	24                              // 0x18
	.xword	.L__profc_rotr32-.L__profd_rotr32
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_rotr32, 64

	.type	.L__profc_rotl_sz,@object       // @__profc_rotl_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profc_rotl_sz:
	.zero	8
	.size	.L__profc_rotl_sz, 8

	.type	.L__profd_rotl_sz,@object       // @__profd_rotl_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profd_rotl_sz:
	.xword	-3686623714176605670            // 0xccd67b43b7f8e21a
	.xword	24                              // 0x18
	.xword	.L__profc_rotl_sz-.L__profd_rotl_sz
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_rotl_sz, 64

	.type	.L__profc_rotr_sz,@object       // @__profc_rotr_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profc_rotr_sz:
	.zero	8
	.size	.L__profc_rotr_sz, 8

	.type	.L__profd_rotr_sz,@object       // @__profd_rotr_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profd_rotr_sz:
	.xword	3415499704483829380             // 0x2f664ae29835d684
	.xword	24                              // 0x18
	.xword	.L__profc_rotr_sz-.L__profd_rotr_sz
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_rotr_sz, 64

	.type	.L__profc_rotl16,@object        // @__profc_rotl16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profc_rotl16:
	.zero	8
	.size	.L__profc_rotl16, 8

	.type	.L__profd_rotl16,@object        // @__profd_rotl16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profd_rotl16:
	.xword	7327166975465201445             // 0x65af538b0e939f25
	.xword	24                              // 0x18
	.xword	.L__profc_rotl16-.L__profd_rotl16
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_rotl16, 64

	.type	.L__profc_rotr16,@object        // @__profc_rotr16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profc_rotr16:
	.zero	8
	.size	.L__profc_rotr16, 8

	.type	.L__profd_rotr16,@object        // @__profd_rotr16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profd_rotr16:
	.xword	5274763753728838268             // 0x4933b9afe71d0a7c
	.xword	24                              // 0x18
	.xword	.L__profc_rotr16-.L__profd_rotr16
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_rotr16, 64

	.type	.L__profc_rotl8,@object         // @__profc_rotl8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profc_rotl8:
	.zero	8
	.size	.L__profc_rotl8, 8

	.type	.L__profd_rotl8,@object         // @__profd_rotl8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profd_rotl8:
	.xword	4408423234350850624             // 0x3d2ddd93270fa240
	.xword	24                              // 0x18
	.xword	.L__profc_rotl8-.L__profd_rotl8
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_rotl8, 64

	.type	.L__profc_rotr8,@object         // @__profc_rotr8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profc_rotr8:
	.zero	8
	.size	.L__profc_rotr8, 8

	.type	.L__profd_rotr8,@object         // @__profd_rotr8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profd_rotr8:
	.xword	-6535801773217052896            // 0xa54c2aea59078720
	.xword	24                              // 0x18
	.xword	.L__profc_rotr8-.L__profd_rotr8
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_rotr8, 64

	.type	.L__profc_bswap_16,@object      // @__profc_bswap_16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profc_bswap_16:
	.zero	8
	.size	.L__profc_bswap_16, 8

	.type	.L__profd_bswap_16,@object      // @__profd_bswap_16
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profd_bswap_16:
	.xword	-8870828063230114195            // 0x84e47ce04b9a466d
	.xword	24                              // 0x18
	.xword	.L__profc_bswap_16-.L__profd_bswap_16
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_bswap_16, 64

	.type	.L__profc_bswap_32,@object      // @__profc_bswap_32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profc_bswap_32:
	.zero	8
	.size	.L__profc_bswap_32, 8

	.type	.L__profd_bswap_32,@object      // @__profd_bswap_32
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profd_bswap_32:
	.xword	7304833549461180700             // 0x655ffb691afd511c
	.xword	24                              // 0x18
	.xword	.L__profc_bswap_32-.L__profd_bswap_32
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_bswap_32, 64

	.type	.L__profc_bswap_64,@object      // @__profc_bswap_64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profc_bswap_64:
	.zero	8
	.size	.L__profc_bswap_64, 8

	.type	.L__profd_bswap_64,@object      // @__profd_bswap_64
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profd_bswap_64:
	.xword	2873856403134720854             // 0x27e1fd2c1c53ab56
	.xword	24                              // 0x18
	.xword	.L__profc_bswap_64-.L__profd_bswap_64
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_bswap_64, 64

	.type	.L__profc_ffs,@object           // @__profc_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
.L__profc_ffs:
	.zero	24
	.size	.L__profc_ffs, 24

	.type	.L__profd_ffs,@object           // @__profd_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
.L__profd_ffs:
	.xword	9222170723057548859             // 0x7ffbbb6955da3e3b
	.xword	19458657686616                  // 0x11b292611458
	.xword	.L__profc_ffs-.L__profd_ffs
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_ffs, 64

	.type	.L__profc_libiberty_ffs,@object // @__profc_libiberty_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profc_libiberty_ffs:
	.zero	24
	.size	.L__profc_libiberty_ffs, 24

	.type	.L__profd_libiberty_ffs,@object // @__profd_libiberty_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profd_libiberty_ffs:
	.xword	65216057573358521               // 0xe7b1a8a94fbbb9
	.xword	2952352215704664                // 0xa7d261111a458
	.xword	.L__profc_libiberty_ffs-.L__profd_libiberty_ffs
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_libiberty_ffs, 64

	.type	.L__profc_gl_isinff,@object     // @__profc_gl_isinff
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
.L__profc_gl_isinff:
	.zero	24
	.size	.L__profc_gl_isinff, 24

	.type	.L__profd_gl_isinff,@object     // @__profd_gl_isinff
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
.L__profd_gl_isinff:
	.xword	6535010584615638394             // 0x5ab10580b36ed57a
	.xword	6354652                         // 0x60f6dc
	.xword	.L__profc_gl_isinff-.L__profd_gl_isinff
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_gl_isinff, 64

	.type	.L__profc_gl_isinfd,@object     // @__profc_gl_isinfd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
.L__profc_gl_isinfd:
	.zero	24
	.size	.L__profc_gl_isinfd, 24

	.type	.L__profd_gl_isinfd,@object     // @__profd_gl_isinfd
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
.L__profd_gl_isinfd:
	.xword	-9165907066207032774            // 0x80cc28161a7caa3a
	.xword	6354652                         // 0x60f6dc
	.xword	.L__profc_gl_isinfd-.L__profd_gl_isinfd
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_gl_isinfd, 64

	.type	.L__profc_gl_isinfl,@object     // @__profc_gl_isinfl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
.L__profc_gl_isinfl:
	.zero	24
	.size	.L__profc_gl_isinfl, 24

	.type	.L__profd_gl_isinfl,@object     // @__profd_gl_isinfl
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
.L__profd_gl_isinfl:
	.xword	4731159788068304891             // 0x41a874c2af6c77fb
	.xword	6354652                         // 0x60f6dc
	.xword	.L__profc_gl_isinfl-.L__profd_gl_isinfl
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_gl_isinfl, 64

	.type	.L__profc__Qp_itoq,@object      // @__profc__Qp_itoq
	.section	__llvm_prf_cnts,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
.L__profc__Qp_itoq:
	.zero	8
	.size	.L__profc__Qp_itoq, 8

	.type	.L__profd__Qp_itoq,@object      // @__profd__Qp_itoq
	.section	__llvm_prf_data,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
.L__profd__Qp_itoq:
	.xword	-3858125999267273921            // 0xca752ed84af9a33f
	.xword	0                               // 0x0
	.xword	.L__profc__Qp_itoq-.L__profd__Qp_itoq
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd__Qp_itoq, 64

	.type	.L__profc_ldexpf,@object        // @__profc_ldexpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
.L__profc_ldexpf:
	.zero	64
	.size	.L__profc_ldexpf, 64

	.type	.L__profd_ldexpf,@object        // @__profd_ldexpf
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
.L__profd_ldexpf:
	.xword	-2560632889718296859            // 0xdc76cdf42028aee5
	.xword	-2048372819454505383            // 0xe392b7c600d94e59
	.xword	.L__profc_ldexpf-.L__profd_ldexpf
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	8                               // 0x8
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_ldexpf, 64

	.type	.L__profc_ldexp,@object         // @__profc_ldexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
.L__profc_ldexp:
	.zero	64
	.size	.L__profc_ldexp, 64

	.type	.L__profd_ldexp,@object         // @__profd_ldexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
.L__profd_ldexp:
	.xword	-240549059163932437             // 0xfca965e7b97ab8eb
	.xword	-2048372819454505383            // 0xe392b7c600d94e59
	.xword	.L__profc_ldexp-.L__profd_ldexp
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	8                               // 0x8
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_ldexp, 64

	.type	.L__profc_ldexpl,@object        // @__profc_ldexpl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
.L__profc_ldexpl:
	.zero	64
	.size	.L__profc_ldexpl, 64

	.type	.L__profd_ldexpl,@object        // @__profd_ldexpl
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
.L__profd_ldexpl:
	.xword	-5097262943286299417            // 0xb942e25c0aa874e7
	.xword	-2048372819454505383            // 0xe392b7c600d94e59
	.xword	.L__profc_ldexpl-.L__profd_ldexpl
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	8                               // 0x8
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_ldexpl, 64

	.type	.L__profc_memxor,@object        // @__profc_memxor
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
.L__profc_memxor:
	.zero	16
	.size	.L__profc_memxor, 16

	.type	.L__profd_memxor,@object        // @__profd_memxor
	.section	__llvm_prf_data,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
.L__profd_memxor:
	.xword	-8368025376422999318            // 0x8bdecd417eda4aea
	.xword	1164376                         // 0x11c458
	.xword	.L__profc_memxor-.L__profd_memxor
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	2                               // 0x2
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_memxor, 64

	.type	.L__profc_strncat,@object       // @__profc_strncat
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
.L__profc_strncat:
	.zero	40
	.size	.L__profc_strncat, 40

	.type	.L__profd_strncat,@object       // @__profd_strncat
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
.L__profd_strncat:
	.xword	-3582483947543505905            // 0xce4875d49d21540f
	.xword	76123606467028056               // 0x10e72044a7d2458
	.xword	.L__profc_strncat-.L__profd_strncat
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	5                               // 0x5
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_strncat, 64

	.type	.L__profc_strnlen,@object       // @__profc_strnlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profc_strnlen:
	.zero	32
	.size	.L__profc_strnlen, 32

	.type	.L__profd_strnlen,@object       // @__profd_strnlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profd_strnlen:
	.xword	517590790318988421              // 0x72eda14dbfa1c85
	.xword	4537021528                      // 0x10e6d7458
	.xword	.L__profc_strnlen-.L__profd_strnlen
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	4                               // 0x4
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_strnlen, 64

	.type	.L__profc_strpbrk,@object       // @__profc_strpbrk
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profc_strpbrk:
	.zero	32
	.size	.L__profc_strpbrk, 32

	.type	.L__profd_strpbrk,@object       // @__profd_strpbrk
	.section	__llvm_prf_data,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profd_strpbrk:
	.xword	-6867074718569872870            // 0xa0b33fed4193c21a
	.xword	-4444802448421279214            // 0xc250e3b905102a12
	.xword	.L__profc_strpbrk-.L__profd_strpbrk
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	4                               // 0x4
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_strpbrk, 64

	.type	.L__profc_strrchr,@object       // @__profc_strrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profc_strrchr:
	.zero	24
	.size	.L__profc_strrchr, 24

	.type	.L__profd_strrchr,@object       // @__profd_strrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profd_strrchr:
	.xword	5307837722043833871             // 0x49a93a493bd75e0f
	.xword	217420731480                    // 0x329f491458
	.xword	.L__profc_strrchr-.L__profd_strrchr
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_strrchr, 64

	.type	.L__profc_strstr,@object        // @__profc_strstr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
.L__profc_strstr:
	.zero	32
	.size	.L__profc_strstr, 32

	.type	.L__profd_strstr,@object        // @__profd_strstr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
.L__profd_strstr:
	.xword	3560562421867190603             // 0x3169a8a873ff994b
	.xword	-7798267876297541628            // 0x93c6fcaef9f1f804
	.xword	.L__profc_strstr-.L__profd_strstr
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	4                               // 0x4
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_strstr, 64

	.type	.L__profc_copysign,@object      // @__profc_copysign
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
.L__profc_copysign:
	.zero	56
	.size	.L__profc_copysign, 56

	.type	.L__profd_copysign,@object      // @__profd_copysign
	.section	__llvm_prf_data,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
.L__profd_copysign:
	.xword	-9076603418344796971            // 0x82096d47ea764cd5
	.xword	4200982705386070127             // 0x3a4ce3834618a06f
	.xword	.L__profc_copysign-.L__profd_copysign
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	7                               // 0x7
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_copysign, 64

	.type	.L__profc_memmem,@object        // @__profc_memmem
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
.L__profc_memmem:
	.zero	56
	.size	.L__profc_memmem, 56

	.type	.L__profd_memmem,@object        // @__profd_memmem
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
.L__profd_memmem:
	.xword	-7485463843177831536            // 0x981e4a4b585ae390
	.xword	5508063777036862020             // 0x4c7092d27e7a8244
	.xword	.L__profc_memmem-.L__profd_memmem
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	7                               // 0x7
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_memmem, 64

	.type	.L__profc_mempcpy,@object       // @__profc_mempcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
.L__profc_mempcpy:
	.zero	8
	.size	.L__profc_mempcpy, 8

	.type	.L__profd_mempcpy,@object       // @__profd_mempcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
.L__profd_mempcpy:
	.xword	-722907995699078206             // 0xf5f7b7020f111bc2
	.xword	24                              // 0x18
	.xword	.L__profc_mempcpy-.L__profd_mempcpy
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_mempcpy, 64

	.type	.L__profc_frexp,@object         // @__profc_frexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
.L__profc_frexp:
	.zero	72
	.size	.L__profc_frexp, 72

	.type	.L__profd_frexp,@object         // @__profd_frexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
.L__profd_frexp:
	.xword	-2997169543230593137            // 0xd667ea2e1c1ee78f
	.xword	-2373782428686282824            // 0xdf0ea1753c170fb8
	.xword	.L__profc_frexp-.L__profd_frexp
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	9                               // 0x9
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_frexp, 64

	.type	.L__profc___muldi3,@object      // @__profc___muldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profc___muldi3:
	.zero	24
	.size	.L__profc___muldi3, 24

	.type	.L__profd___muldi3,@object      // @__profd___muldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profd___muldi3:
	.xword	3987271357918321816             // 0x3755a22cafcf9c98
	.xword	2320045144                      // 0x8a491458
	.xword	.L__profc___muldi3-.L__profd___muldi3
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___muldi3, 64

	.type	.L__profc_udivmodsi4,@object    // @__profc_udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profc_udivmodsi4:
	.zero	72
	.size	.L__profc_udivmodsi4, 72

	.type	.L__profd_udivmodsi4,@object    // @__profd_udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profd_udivmodsi4:
	.xword	4670832108574850701             // 0x40d2210e3d17be8d
	.xword	842736872197088594              // 0xbb200b8626e6552
	.xword	.L__profc_udivmodsi4-.L__profd_udivmodsi4
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	9                               // 0x9
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd_udivmodsi4, 64

	.type	.L__profc___clrsbqi2,@object    // @__profc___clrsbqi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profc___clrsbqi2:
	.zero	24
	.size	.L__profc___clrsbqi2, 24

	.type	.L__profd___clrsbqi2,@object    // @__profd___clrsbqi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profd___clrsbqi2:
	.xword	-7858138078702729622            // 0x92f2490d36f4066a
	.xword	187824153796641880              // 0x29b49129f498458
	.xword	.L__profc___clrsbqi2-.L__profd___clrsbqi2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___clrsbqi2, 64

	.type	.L__profc___clrsbdi2,@object    // @__profc___clrsbdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profc___clrsbdi2:
	.zero	24
	.size	.L__profc___clrsbdi2, 24

	.type	.L__profd___clrsbdi2,@object    // @__profd___clrsbdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profd___clrsbdi2:
	.xword	-1533375985051215657            // 0xeab85aaa6fe858d7
	.xword	187824153796641880              // 0x29b49129f498458
	.xword	.L__profc___clrsbdi2-.L__profd___clrsbdi2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___clrsbdi2, 64

	.type	.L__profc___mulsi3,@object      // @__profc___mulsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profc___mulsi3:
	.zero	24
	.size	.L__profc___mulsi3, 24

	.type	.L__profd___mulsi3,@object      // @__profd___mulsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profd___mulsi3:
	.xword	5127670123023436031             // 0x472924cf303208ff
	.xword	2320045144                      // 0x8a491458
	.xword	.L__profc___mulsi3-.L__profd___mulsi3
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___mulsi3, 64

	.type	.L__profc___cmovd,@object       // @__profc___cmovd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profc___cmovd:
	.zero	56
	.size	.L__profc___cmovd, 56

	.type	.L__profd___cmovd,@object       // @__profd___cmovd
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profd___cmovd:
	.xword	1458405851566781960             // 0x143d4c6520fd3608
	.xword	-6411111704588201945            // 0xa70727df48abd027
	.xword	.L__profc___cmovd-.L__profd___cmovd
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	7                               // 0x7
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___cmovd, 64

	.type	.L__profc___cmovh,@object       // @__profc___cmovh
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profc___cmovh:
	.zero	56
	.size	.L__profc___cmovh, 56

	.type	.L__profd___cmovh,@object       // @__profd___cmovh
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profd___cmovh:
	.xword	-1240290101804783090            // 0xeec99ab9477e2a0e
	.xword	3130117398598530023             // 0x2b706930a0bc33e7
	.xword	.L__profc___cmovh-.L__profd___cmovh
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	7                               // 0x7
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___cmovh, 64

	.type	.L__profc___cmovw,@object       // @__profc___cmovw
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profc___cmovw:
	.zero	56
	.size	.L__profc___cmovw, 56

	.type	.L__profd___cmovw,@object       // @__profd___cmovw
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profd___cmovw:
	.xword	-6631700889337257300            // 0xa3f7772d6a6922ac
	.xword	-6411111704588201945            // 0xa70727df48abd027
	.xword	.L__profc___cmovw-.L__profd___cmovw
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	7                               // 0x7
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___cmovw, 64

	.type	.L__profc___modi,@object        // @__profc___modi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
.L__profc___modi:
	.zero	8
	.size	.L__profc___modi, 8

	.type	.L__profd___modi,@object        // @__profd___modi
	.section	__llvm_prf_data,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
.L__profd___modi:
	.xword	4130297501716739761             // 0x3951c3b1ce8276b1
	.xword	24                              // 0x18
	.xword	.L__profc___modi-.L__profd___modi
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___modi, 64

	.type	.L__profc___uitod,@object       // @__profc___uitod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
.L__profc___uitod:
	.zero	8
	.size	.L__profc___uitod, 8

	.type	.L__profd___uitod,@object       // @__profd___uitod
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
.L__profd___uitod:
	.xword	-3793169221884876252            // 0xcb5bf4b0949b6a24
	.xword	24                              // 0x18
	.xword	.L__profc___uitod-.L__profd___uitod
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___uitod, 64

	.type	.L__profc___uitof,@object       // @__profc___uitof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
.L__profc___uitof:
	.zero	8
	.size	.L__profc___uitof, 8

	.type	.L__profd___uitof,@object       // @__profd___uitof
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
.L__profd___uitof:
	.xword	2684105554667313846             // 0x253fdbc7ed991ab6
	.xword	24                              // 0x18
	.xword	.L__profc___uitof-.L__profd___uitof
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___uitof, 64

	.type	.L__profc___ulltod,@object      // @__profc___ulltod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
.L__profc___ulltod:
	.zero	8
	.size	.L__profc___ulltod, 8

	.type	.L__profd___ulltod,@object      // @__profd___ulltod
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
.L__profd___ulltod:
	.xword	3995277539005434566             // 0x377213c0fb840ac6
	.xword	24                              // 0x18
	.xword	.L__profc___ulltod-.L__profd___ulltod
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___ulltod, 64

	.type	.L__profc___ulltof,@object      // @__profc___ulltof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
.L__profc___ulltof:
	.zero	8
	.size	.L__profc___ulltof, 8

	.type	.L__profd___ulltof,@object      // @__profd___ulltof
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
.L__profd___ulltof:
	.xword	-1906554817873249395            // 0xe58a8e7e97dafb8d
	.xword	24                              // 0x18
	.xword	.L__profc___ulltof-.L__profd___ulltof
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___ulltof, 64

	.type	.L__profc___umodi,@object       // @__profc___umodi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
.L__profc___umodi:
	.zero	8
	.size	.L__profc___umodi, 8

	.type	.L__profd___umodi,@object       // @__profd___umodi
	.section	__llvm_prf_data,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
.L__profd___umodi:
	.xword	6154071623751134202             // 0x5567a7893fff6bfa
	.xword	24                              // 0x18
	.xword	.L__profc___umodi-.L__profd___umodi
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___umodi, 64

	.type	.L__profc___clzhi2,@object      // @__profc___clzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profc___clzhi2:
	.zero	24
	.size	.L__profc___clzhi2, 24

	.type	.L__profd___clzhi2,@object      // @__profd___clzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profd___clzhi2:
	.xword	-9221703320275173474            // 0x8005edb05af53f9e
	.xword	19458657162328                  // 0x11b292591458
	.xword	.L__profc___clzhi2-.L__profd___clzhi2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___clzhi2, 64

	.type	.L__profc___ctzhi2,@object      // @__profc___ctzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profc___ctzhi2:
	.zero	24
	.size	.L__profc___ctzhi2, 24

	.type	.L__profd___ctzhi2,@object      // @__profd___ctzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profd___ctzhi2:
	.xword	-1569202989881991136            // 0xea391231d79a6020
	.xword	19458657162328                  // 0x11b292591458
	.xword	.L__profc___ctzhi2-.L__profd___ctzhi2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___ctzhi2, 64

	.type	.L__profc___fixunssfsi,@object  // @__profc___fixunssfsi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
.L__profc___fixunssfsi:
	.zero	16
	.size	.L__profc___fixunssfsi, 16

	.type	.L__profd___fixunssfsi,@object  // @__profd___fixunssfsi
	.section	__llvm_prf_data,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
.L__profd___fixunssfsi:
	.xword	-7800469359816066749            // 0x93bf2a7226d83943
	.xword	11245552728                     // 0x29e498458
	.xword	.L__profc___fixunssfsi-.L__profd___fixunssfsi
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	2                               // 0x2
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___fixunssfsi, 64

	.type	.L__profc___parityhi2,@object   // @__profc___parityhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profc___parityhi2:
	.zero	24
	.size	.L__profc___parityhi2, 24

	.type	.L__profd___parityhi2,@object   // @__profd___parityhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profd___parityhi2:
	.xword	1203893203113466329             // 0x10b5167d5f15d9d9
	.xword	304041497688                    // 0x46ca491458
	.xword	.L__profc___parityhi2-.L__profd___parityhi2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___parityhi2, 64

	.type	.L__profc___popcounthi2,@object // @__profc___popcounthi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profc___popcounthi2:
	.zero	24
	.size	.L__profc___popcounthi2, 24

	.type	.L__profd___popcounthi2,@object // @__profd___popcounthi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profd___popcounthi2:
	.xword	3943219574947026310             // 0x36b9214fb4159586
	.xword	304041497688                    // 0x46ca491458
	.xword	.L__profc___popcounthi2-.L__profd___popcounthi2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___popcounthi2, 64

	.type	.L__profc___mulsi3_iq2000,@object // @__profc___mulsi3_iq2000
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profc___mulsi3_iq2000:
	.zero	24
	.size	.L__profc___mulsi3_iq2000, 24

	.type	.L__profd___mulsi3_iq2000,@object // @__profd___mulsi3_iq2000
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profd___mulsi3_iq2000:
	.xword	-3976353352410196972            // 0xc8d127b190281414
	.xword	171971253336                    // 0x280a491458
	.xword	.L__profc___mulsi3_iq2000-.L__profd___mulsi3_iq2000
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___mulsi3_iq2000, 64

	.type	.L__profc___mulsi3_lm32,@object // @__profc___mulsi3_lm32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profc___mulsi3_lm32:
	.zero	32
	.size	.L__profc___mulsi3_lm32, 32

	.type	.L__profd___mulsi3_lm32,@object // @__profd___mulsi3_lm32
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profd___mulsi3_lm32:
	.xword	2775651425054705869             // 0x26851843dab148cd
	.xword	-6210685127595396365            // 0xa9cf36c835dff2f3
	.xword	.L__profc___mulsi3_lm32-.L__profd___mulsi3_lm32
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	4                               // 0x4
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___mulsi3_lm32, 64

	.type	.L__profc___udivmodsi4,@object  // @__profc___udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profc___udivmodsi4:
	.zero	72
	.size	.L__profc___udivmodsi4, 72

	.type	.L__profd___udivmodsi4,@object  // @__profd___udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profd___udivmodsi4:
	.xword	-6720389007632434094            // 0xa2bc61cdbfa0fc52
	.xword	842736872197088594              // 0xbb200b8626e6552
	.xword	.L__profc___udivmodsi4-.L__profd___udivmodsi4
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	9                               // 0x9
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___udivmodsi4, 64

	.type	.L__profc___mspabi_cmpf,@object // @__profc___mspabi_cmpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
.L__profc___mspabi_cmpf:
	.zero	24
	.size	.L__profc___mspabi_cmpf, 24

	.type	.L__profd___mspabi_cmpf,@object // @__profd___mspabi_cmpf
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
.L__profd___mspabi_cmpf:
	.xword	6399771733438470391             // 0x58d08e7bef2f98f7
	.xword	1352614535537600836             // 0x12c573c0ecbfa944
	.xword	.L__profc___mspabi_cmpf-.L__profd___mspabi_cmpf
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___mspabi_cmpf, 64

	.type	.L__profc___mspabi_cmpd,@object // @__profc___mspabi_cmpd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
.L__profc___mspabi_cmpd:
	.zero	24
	.size	.L__profc___mspabi_cmpd, 24

	.type	.L__profd___mspabi_cmpd,@object // @__profd___mspabi_cmpd
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
.L__profd___mspabi_cmpd:
	.xword	-5775354270414500759            // 0xafd9d1e3e3e88c69
	.xword	1352614535537600836             // 0x12c573c0ecbfa944
	.xword	.L__profc___mspabi_cmpd-.L__profd___mspabi_cmpd
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___mspabi_cmpd, 64

	.type	.L__profc___mspabi_mpysll,@object // @__profc___mspabi_mpysll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profc___mspabi_mpysll:
	.zero	8
	.size	.L__profc___mspabi_mpysll, 8

	.type	.L__profd___mspabi_mpysll,@object // @__profd___mspabi_mpysll
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profd___mspabi_mpysll:
	.xword	-359228324547500507             // 0xfb03c3bdfa166625
	.xword	24                              // 0x18
	.xword	.L__profc___mspabi_mpysll-.L__profd___mspabi_mpysll
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___mspabi_mpysll, 64

	.type	.L__profc___mspabi_mpyull,@object // @__profc___mspabi_mpyull
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profc___mspabi_mpyull:
	.zero	8
	.size	.L__profc___mspabi_mpyull, 8

	.type	.L__profd___mspabi_mpyull,@object // @__profd___mspabi_mpyull
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profd___mspabi_mpyull:
	.xword	6629829186354316853             // 0x5c01e284c62a8635
	.xword	24                              // 0x18
	.xword	.L__profc___mspabi_mpyull-.L__profd___mspabi_mpyull
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___mspabi_mpyull, 64

	.type	.L__profc___mulhi3,@object      // @__profc___mulhi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profc___mulhi3:
	.zero	56
	.size	.L__profc___mulhi3, 56

	.type	.L__profd___mulhi3,@object      // @__profd___mulhi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profd___mulhi3:
	.xword	-4671748085078636676            // 0xbf2a9dde5cc6c77c
	.xword	-5374843387156864121            // 0xb568b86aa1286387
	.xword	.L__profc___mulhi3-.L__profd___mulhi3
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	7                               // 0x7
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___mulhi3, 64

	.type	.L__profc___divsi3,@object      // @__profc___divsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profc___divsi3:
	.zero	32
	.size	.L__profc___divsi3, 32

	.type	.L__profd___divsi3,@object      // @__profd___divsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profd___divsi3:
	.xword	5631431475223784324             // 0x4e26dd1711aaeb84
	.xword	510575534943447681              // 0x715edbe6f4f2a81
	.xword	.L__profc___divsi3-.L__profd___divsi3
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	4                               // 0x4
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___divsi3, 64

	.type	.L__profc___modsi3,@object      // @__profc___modsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profc___modsi3:
	.zero	32
	.size	.L__profc___modsi3, 32

	.type	.L__profd___modsi3,@object      // @__profd___modsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profd___modsi3:
	.xword	-8995696579390192574            // 0x8328dd9f4e404442
	.xword	2121116644152358499             // 0x1d6fb85985deb663
	.xword	.L__profc___modsi3-.L__profd___modsi3
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	4                               // 0x4
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___modsi3, 64

	.type	.L__profc___udivmodhi4,@object  // @__profc___udivmodhi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profc___udivmodhi4:
	.zero	72
	.size	.L__profc___udivmodhi4, 72

	.type	.L__profd___udivmodhi4,@object  // @__profd___udivmodhi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profd___udivmodhi4:
	.xword	2241631039268115874             // 0x1f1bdf8db510d5a2
	.xword	842736872197088594              // 0xbb200b8626e6552
	.xword	.L__profc___udivmodhi4-.L__profd___udivmodhi4
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	9                               // 0x9
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___udivmodhi4, 64

	.type	.L__profc___udivmodsi4_libgcc,@object // @__profc___udivmodsi4_libgcc
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profc___udivmodsi4_libgcc:
	.zero	72
	.size	.L__profc___udivmodsi4_libgcc, 72

	.type	.L__profd___udivmodsi4_libgcc,@object // @__profd___udivmodsi4_libgcc
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profd___udivmodsi4_libgcc:
	.xword	-1484205535638993157            // 0xeb670aedd291c6fb
	.xword	842736872197088594              // 0xbb200b8626e6552
	.xword	.L__profc___udivmodsi4_libgcc-.L__profd___udivmodsi4_libgcc
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	9                               // 0x9
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___udivmodsi4_libgcc, 64

	.type	.L__profc___ashldi3,@object     // @__profc___ashldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profc___ashldi3:
	.zero	24
	.size	.L__profc___ashldi3, 24

	.type	.L__profd___ashldi3,@object     // @__profd___ashldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profd___ashldi3:
	.xword	3719210884952086607             // 0x339d4a983a55d84f
	.xword	185294818348438616              // 0x2924ca7d2611458
	.xword	.L__profc___ashldi3-.L__profd___ashldi3
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___ashldi3, 64

	.type	.L__profc___ashlti3,@object     // @__profc___ashlti3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashlti3
	.p2align	3, 0x0
.L__profc___ashlti3:
	.zero	24
	.size	.L__profc___ashlti3, 24

	.type	.L__profd___ashlti3,@object     // @__profd___ashlti3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashlti3
	.p2align	3, 0x0
.L__profd___ashlti3:
	.xword	8422580559269035854             // 0x74e30464d7577f4e
	.xword	185294818348438616              // 0x2924ca7d2611458
	.xword	.L__profc___ashlti3-.L__profd___ashlti3
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___ashlti3, 64

	.type	.L__profc___ashrdi3,@object     // @__profc___ashrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profc___ashrdi3:
	.zero	24
	.size	.L__profc___ashrdi3, 24

	.type	.L__profd___ashrdi3,@object     // @__profd___ashrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profd___ashrdi3:
	.xword	-1855717345837424946            // 0xe63f2ae7edd45ece
	.xword	185294818348438616              // 0x2924ca7d2611458
	.xword	.L__profc___ashrdi3-.L__profd___ashrdi3
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___ashrdi3, 64

	.type	.L__profc___ashrti3,@object     // @__profc___ashrti3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashrti3
	.p2align	3, 0x0
.L__profc___ashrti3:
	.zero	24
	.size	.L__profc___ashrti3, 24

	.type	.L__profd___ashrti3,@object     // @__profd___ashrti3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashrti3
	.p2align	3, 0x0
.L__profd___ashrti3:
	.xword	-1576641649180751463            // 0xea1ea4c6027ec999
	.xword	185294818348438616              // 0x2924ca7d2611458
	.xword	.L__profc___ashrti3-.L__profd___ashrti3
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___ashrti3, 64

	.type	.L__profc___bswapdi2,@object    // @__profc___bswapdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profc___bswapdi2:
	.zero	8
	.size	.L__profc___bswapdi2, 8

	.type	.L__profd___bswapdi2,@object    // @__profd___bswapdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profd___bswapdi2:
	.xword	9149352740892555196             // 0x7ef907d7ada5b7bc
	.xword	24                              // 0x18
	.xword	.L__profc___bswapdi2-.L__profd___bswapdi2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___bswapdi2, 64

	.type	.L__profc___bswapsi2,@object    // @__profc___bswapsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profc___bswapsi2:
	.zero	8
	.size	.L__profc___bswapsi2, 8

	.type	.L__profd___bswapsi2,@object    // @__profd___bswapsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profd___bswapsi2:
	.xword	-3374945843358245974            // 0xd129c8a2fe735baa
	.xword	24                              // 0x18
	.xword	.L__profc___bswapsi2-.L__profd___bswapsi2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___bswapsi2, 64

	.type	.L__profc___clzsi2,@object      // @__profc___clzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profc___clzsi2:
	.zero	8
	.size	.L__profc___clzsi2, 8

	.type	.L__profd___clzsi2,@object      // @__profd___clzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profd___clzsi2:
	.xword	1382681549752930563             // 0x1330458b32829103
	.xword	33814345247                     // 0x7df7df61f
	.xword	.L__profc___clzsi2-.L__profd___clzsi2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___clzsi2, 64

	.type	.L__profc___clzti2,@object      // @__profc___clzti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzti2
	.p2align	3, 0x0
.L__profc___clzti2:
	.zero	8
	.size	.L__profc___clzti2, 8

	.type	.L__profd___clzti2,@object      // @__profd___clzti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzti2
	.p2align	3, 0x0
.L__profd___clzti2:
	.xword	-1806615119558762125            // 0xe6ed9d1ee0d9a173
	.xword	2008                            // 0x7d8
	.xword	.L__profc___clzti2-.L__profd___clzti2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___clzti2, 64

	.type	.L__profc___cmpdi2,@object      // @__profc___cmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profc___cmpdi2:
	.zero	40
	.size	.L__profc___cmpdi2, 40

	.type	.L__profd___cmpdi2,@object      // @__profd___cmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profd___cmpdi2:
	.xword	-5499644794300757496            // 0xb3ad5632ace08a08
	.xword	-7406659272189927428            // 0x993642a254c41ffc
	.xword	.L__profc___cmpdi2-.L__profd___cmpdi2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	5                               // 0x5
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___cmpdi2, 64

	.type	.L__profc___aeabi_lcmp,@object  // @__profc___aeabi_lcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profc___aeabi_lcmp:
	.zero	8
	.size	.L__profc___aeabi_lcmp, 8

	.type	.L__profd___aeabi_lcmp,@object  // @__profd___aeabi_lcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profd___aeabi_lcmp:
	.xword	7067747365298492588             // 0x6215aec83ed1d4ac
	.xword	24                              // 0x18
	.xword	.L__profc___aeabi_lcmp-.L__profd___aeabi_lcmp
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___aeabi_lcmp, 64

	.type	.L__profc___cmpti2,@object      // @__profc___cmpti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmpti2
	.p2align	3, 0x0
.L__profc___cmpti2:
	.zero	40
	.size	.L__profc___cmpti2, 40

	.type	.L__profd___cmpti2,@object      // @__profd___cmpti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmpti2
	.p2align	3, 0x0
.L__profd___cmpti2:
	.xword	-8389943187845644472            // 0x8b90ef1f5ac07f48
	.xword	-7406659272189927428            // 0x993642a254c41ffc
	.xword	.L__profc___cmpti2-.L__profd___cmpti2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	5                               // 0x5
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___cmpti2, 64

	.type	.L__profc___ctzsi2,@object      // @__profc___ctzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profc___ctzsi2:
	.zero	8
	.size	.L__profc___ctzsi2, 8

	.type	.L__profd___ctzsi2,@object      // @__profd___ctzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profd___ctzsi2:
	.xword	-5501728155980453225            // 0xb3a5ef643c052a97
	.xword	33814345247                     // 0x7df7df61f
	.xword	.L__profc___ctzsi2-.L__profd___ctzsi2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___ctzsi2, 64

	.type	.L__profc___ctzti2,@object      // @__profc___ctzti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzti2
	.p2align	3, 0x0
.L__profc___ctzti2:
	.zero	8
	.size	.L__profc___ctzti2, 8

	.type	.L__profd___ctzti2,@object      // @__profd___ctzti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzti2
	.p2align	3, 0x0
.L__profd___ctzti2:
	.xword	7226039699906943586             // 0x64480cd265d2da62
	.xword	2008                            // 0x7d8
	.xword	.L__profc___ctzti2-.L__profd___ctzti2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___ctzti2, 64

	.type	.L__profc___ffsti2,@object      // @__profc___ffsti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ffsti2
	.p2align	3, 0x0
.L__profc___ffsti2:
	.zero	24
	.size	.L__profc___ffsti2, 24

	.type	.L__profd___ffsti2,@object      // @__profd___ffsti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ffsti2
	.p2align	3, 0x0
.L__profd___ffsti2:
	.xword	7347651670313848928             // 0x65f81a43be5cd060
	.xword	-6109625065311516695            // 0xab36405f8f48c7e9
	.xword	.L__profc___ffsti2-.L__profd___ffsti2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___ffsti2, 64

	.type	.L__profc___lshrdi3,@object     // @__profc___lshrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profc___lshrdi3:
	.zero	24
	.size	.L__profc___lshrdi3, 24

	.type	.L__profd___lshrdi3,@object     // @__profd___lshrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profd___lshrdi3:
	.xword	10441766047587925               // 0x2518bb1c181e55
	.xword	185294818348438616              // 0x2924ca7d2611458
	.xword	.L__profc___lshrdi3-.L__profd___lshrdi3
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___lshrdi3, 64

	.type	.L__profc___lshrti3,@object     // @__profc___lshrti3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___lshrti3
	.p2align	3, 0x0
.L__profc___lshrti3:
	.zero	24
	.size	.L__profc___lshrti3, 24

	.type	.L__profd___lshrti3,@object     // @__profd___lshrti3
	.section	__llvm_prf_data,"awG",@progbits,__profc___lshrti3
	.p2align	3, 0x0
.L__profd___lshrti3:
	.xword	-8202552090810439010            // 0x8e2aae55179b2a9e
	.xword	185294818348438616              // 0x2924ca7d2611458
	.xword	.L__profc___lshrti3-.L__profd___lshrti3
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	3                               // 0x3
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___lshrti3, 64

	.type	.L__profc___muldsi3,@object     // @__profc___muldsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profc___muldsi3:
	.zero	8
	.size	.L__profc___muldsi3, 8

	.type	.L__profd___muldsi3,@object     // @__profd___muldsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profd___muldsi3:
	.xword	4756674255824047264             // 0x42031a08a2a34ca0
	.xword	24                              // 0x18
	.xword	.L__profc___muldsi3-.L__profd___muldsi3
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___muldsi3, 64

	.type	.L__profc___muldi3_compiler_rt,@object // @__profc___muldi3_compiler_rt
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profc___muldi3_compiler_rt:
	.zero	8
	.size	.L__profc___muldi3_compiler_rt, 8

	.type	.L__profd___muldi3_compiler_rt,@object // @__profd___muldi3_compiler_rt
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profd___muldi3_compiler_rt:
	.xword	-737717619142303851             // 0xf5c319bbe679df95
	.xword	24                              // 0x18
	.xword	.L__profc___muldi3_compiler_rt-.L__profd___muldi3_compiler_rt
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___muldi3_compiler_rt, 64

	.type	.L__profc___mulddi3,@object     // @__profc___mulddi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulddi3
	.p2align	3, 0x0
.L__profc___mulddi3:
	.zero	8
	.size	.L__profc___mulddi3, 8

	.type	.L__profd___mulddi3,@object     // @__profd___mulddi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulddi3
	.p2align	3, 0x0
.L__profd___mulddi3:
	.xword	373830907859946247              // 0x5301d3ae50dcb07
	.xword	24                              // 0x18
	.xword	.L__profc___mulddi3-.L__profd___mulddi3
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___mulddi3, 64

	.type	.L__profc___multi3,@object      // @__profc___multi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___multi3
	.p2align	3, 0x0
.L__profc___multi3:
	.zero	8
	.size	.L__profc___multi3, 8

	.type	.L__profd___multi3,@object      // @__profd___multi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___multi3
	.p2align	3, 0x0
.L__profd___multi3:
	.xword	8967568818272694478             // 0x7c733453f80370ce
	.xword	24                              // 0x18
	.xword	.L__profc___multi3-.L__profd___multi3
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___multi3, 64

	.type	.L__profc___negdi2,@object      // @__profc___negdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profc___negdi2:
	.zero	8
	.size	.L__profc___negdi2, 8

	.type	.L__profd___negdi2,@object      // @__profd___negdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profd___negdi2:
	.xword	-2796404983763388037            // 0xd9312c7bb6a6b97b
	.xword	24                              // 0x18
	.xword	.L__profc___negdi2-.L__profd___negdi2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___negdi2, 64

	.type	.L__profc___negti2,@object      // @__profc___negti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___negti2
	.p2align	3, 0x0
.L__profc___negti2:
	.zero	8
	.size	.L__profc___negti2, 8

	.type	.L__profd___negti2,@object      // @__profd___negti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___negti2
	.p2align	3, 0x0
.L__profd___negti2:
	.xword	8691511294418398176             // 0x789e7379011aabe0
	.xword	24                              // 0x18
	.xword	.L__profc___negti2-.L__profd___negti2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___negti2, 64

	.type	.L__profc___paritydi2,@object   // @__profc___paritydi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profc___paritydi2:
	.zero	8
	.size	.L__profc___paritydi2, 8

	.type	.L__profd___paritydi2,@object   // @__profd___paritydi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profd___paritydi2:
	.xword	-5102883611502574357            // 0xb92eea643e3a04eb
	.xword	24                              // 0x18
	.xword	.L__profc___paritydi2-.L__profd___paritydi2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___paritydi2, 64

	.type	.L__profc___parityti2,@object   // @__profc___parityti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___parityti2
	.p2align	3, 0x0
.L__profc___parityti2:
	.zero	8
	.size	.L__profc___parityti2, 8

	.type	.L__profd___parityti2,@object   // @__profd___parityti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___parityti2
	.p2align	3, 0x0
.L__profd___parityti2:
	.xword	-7527016531061130461            // 0x978aaa58479bbb23
	.xword	24                              // 0x18
	.xword	.L__profc___parityti2-.L__profd___parityti2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___parityti2, 64

	.type	.L__profc___paritysi2,@object   // @__profc___paritysi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profc___paritysi2:
	.zero	8
	.size	.L__profc___paritysi2, 8

	.type	.L__profd___paritysi2,@object   // @__profd___paritysi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profd___paritysi2:
	.xword	8495812714014201054             // 0x75e730a6911054de
	.xword	24                              // 0x18
	.xword	.L__profc___paritysi2-.L__profd___paritysi2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___paritysi2, 64

	.type	.L__profc___popcountdi2,@object // @__profc___popcountdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profc___popcountdi2:
	.zero	8
	.size	.L__profc___popcountdi2, 8

	.type	.L__profd___popcountdi2,@object // @__profd___popcountdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profd___popcountdi2:
	.xword	4342496508124198892             // 0x3c43a5910d1df7ec
	.xword	24                              // 0x18
	.xword	.L__profc___popcountdi2-.L__profd___popcountdi2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___popcountdi2, 64

	.type	.L__profc___popcountsi2,@object // @__profc___popcountsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profc___popcountsi2:
	.zero	8
	.size	.L__profc___popcountsi2, 8

	.type	.L__profd___popcountsi2,@object // @__profd___popcountsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profd___popcountsi2:
	.xword	-2149276146439341705            // 0xe22c3cbb6f433977
	.xword	24                              // 0x18
	.xword	.L__profc___popcountsi2-.L__profd___popcountsi2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___popcountsi2, 64

	.type	.L__profc___popcountti2,@object // @__profc___popcountti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountti2
	.p2align	3, 0x0
.L__profc___popcountti2:
	.zero	8
	.size	.L__profc___popcountti2, 8

	.type	.L__profd___popcountti2,@object // @__profd___popcountti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountti2
	.p2align	3, 0x0
.L__profd___popcountti2:
	.xword	-26294454666068629              // 0xffa295553210fd6b
	.xword	24                              // 0x18
	.xword	.L__profc___popcountti2-.L__profd___popcountti2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___popcountti2, 64

	.type	.L__profc___powidf2,@object     // @__profc___powidf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
.L__profc___powidf2:
	.zero	40
	.size	.L__profc___powidf2, 40

	.type	.L__profd___powidf2,@object     // @__profd___powidf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
.L__profd___powidf2:
	.xword	-1752541073601039051            // 0xe7adb92dcdba7535
	.xword	-4868838055443737378            // 0xbc6e6995b45f54de
	.xword	.L__profc___powidf2-.L__profd___powidf2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	5                               // 0x5
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___powidf2, 64

	.type	.L__profc___powisf2,@object     // @__profc___powisf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
.L__profc___powisf2:
	.zero	40
	.size	.L__profc___powisf2, 40

	.type	.L__profd___powisf2,@object     // @__profd___powisf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
.L__profd___powisf2:
	.xword	-3807360110918407144            // 0xcb298a26c0b76c18
	.xword	-4868838055443737378            // 0xbc6e6995b45f54de
	.xword	.L__profc___powisf2-.L__profd___powisf2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	5                               // 0x5
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___powisf2, 64

	.type	.L__profc___ucmpdi2,@object     // @__profc___ucmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profc___ucmpdi2:
	.zero	40
	.size	.L__profc___ucmpdi2, 40

	.type	.L__profd___ucmpdi2,@object     // @__profd___ucmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profd___ucmpdi2:
	.xword	-2044349310657886323            // 0xe3a10322256c078d
	.xword	-7406659272189927428            // 0x993642a254c41ffc
	.xword	.L__profc___ucmpdi2-.L__profd___ucmpdi2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	5                               // 0x5
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___ucmpdi2, 64

	.type	.L__profc___aeabi_ulcmp,@object // @__profc___aeabi_ulcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profc___aeabi_ulcmp:
	.zero	8
	.size	.L__profc___aeabi_ulcmp, 8

	.type	.L__profd___aeabi_ulcmp,@object // @__profd___aeabi_ulcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profd___aeabi_ulcmp:
	.xword	448670595368434735              // 0x639ff8782193c2f
	.xword	24                              // 0x18
	.xword	.L__profc___aeabi_ulcmp-.L__profd___aeabi_ulcmp
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	1                               // 0x1
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___aeabi_ulcmp, 64

	.type	.L__profc___ucmpti2,@object     // @__profc___ucmpti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ucmpti2
	.p2align	3, 0x0
.L__profc___ucmpti2:
	.zero	40
	.size	.L__profc___ucmpti2, 40

	.type	.L__profd___ucmpti2,@object     // @__profd___ucmpti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ucmpti2
	.p2align	3, 0x0
.L__profd___ucmpti2:
	.xword	2719998967855154749             // 0x25bf60a66c6f863d
	.xword	-7406659272189927428            // 0x993642a254c41ffc
	.xword	.L__profc___ucmpti2-.L__profd___ucmpti2
	.xword	0                               // 0x0
	.xword	0
	.xword	0
	.word	5                               // 0x5
	.zero	6
	.zero	2
	.word	0                               // 0x0
	.size	.L__profd___ucmpti2, 64

	.type	.L__llvm_prf_nm,@object         // @__llvm_prf_nm
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
