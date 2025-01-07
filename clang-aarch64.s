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
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
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
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
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
	b	.LBB2_8
.LBB2_8:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	cbz	x8, .LBB2_11
	b	.LBB2_9
.LBB2_9:                                //   in Loop: Header=BB2_8 Depth=1
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
	b	.LBB2_12
.LBB2_12:
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
	cbz	x8, .LBB3_3
	b	.LBB3_2
.LBB3_2:                                //   in Loop: Header=BB3_1 Depth=1
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	ldr	x16, [sp, #16]
	strb	w8, [x16]
	ldur	w16, [x29, #-28]
	subs	w8, w8, w16
	cset	w8, ne
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB3_3
.LBB3_3:                                //   in Loop: Header=BB3_1 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB3_6
	b	.LBB3_4
.LBB3_4:                                //   in Loop: Header=BB3_1 Depth=1
	b	.LBB3_5
.LBB3_5:                                //   in Loop: Header=BB3_1 Depth=1
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
.LBB3_6:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB3_8
	b	.LBB3_7
.LBB3_7:
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	stur	x8, [x29, #-8]
	b	.LBB3_9
.LBB3_8:
	mov	x8, xzr
	stur	x8, [x29, #-8]
	b	.LBB3_9
.LBB3_9:
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
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	ldurb	w8, [x29, #-12]
	stur	w8, [x29, #-12]
	b	.LBB4_1
.LBB4_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	mov	w16, wzr
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	cbz	x8, .LBB4_3
	b	.LBB4_2
.LBB4_2:                                //   in Loop: Header=BB4_1 Depth=1
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	ldur	w16, [x29, #-12]
	subs	w8, w8, w16
	cset	w8, ne
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB4_3
.LBB4_3:                                //   in Loop: Header=BB4_1 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB4_6
	b	.LBB4_4
.LBB4_4:                                //   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_5
.LBB4_5:                                //   in Loop: Header=BB4_1 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB4_1
.LBB4_6:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB4_8
	b	.LBB4_7
.LBB4_7:
	ldr	x0, [sp, #16]
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB4_9
.LBB4_8:
	mov	x0, xzr
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB4_9
.LBB4_9:
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
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	b	.LBB5_1
.LBB5_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	mov	w16, wzr
	str	w16, [sp, #4]                   // 4-byte Folded Spill
	cbz	x8, .LBB5_3
	b	.LBB5_2
.LBB5_2:                                //   in Loop: Header=BB5_1 Depth=1
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	ldr	x16, [sp, #8]
	ldrb	w16, [x16]
	subs	w8, w8, w16
	cset	w8, eq
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB5_3
.LBB5_3:                                //   in Loop: Header=BB5_1 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB5_6
	b	.LBB5_4
.LBB5_4:                                //   in Loop: Header=BB5_1 Depth=1
	b	.LBB5_5
.LBB5_5:                                //   in Loop: Header=BB5_1 Depth=1
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	str	x8, [sp, #24]
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB5_1
.LBB5_6:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB5_8
	b	.LBB5_7
.LBB5_7:
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	ldr	x16, [sp, #8]
	ldrb	w16, [x16]
	subs	w0, w8, w16
	str	w0, [sp]                        // 4-byte Folded Spill
	b	.LBB5_9
.LBB5_8:
	mov	w0, wzr
	str	w0, [sp]                        // 4-byte Folded Spill
	b	.LBB5_9
.LBB5_9:
	ldr	w0, [sp]                        // 4-byte Folded Reload
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
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
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
	ldr	x8, [sp, #8]
	ldr	x16, [sp, #16]
	ldrb	w8, [x8, x16]
	ldur	w16, [x29, #-20]
	subs	w8, w8, w16
	b.ne	.LBB7_4
	b	.LBB7_3
.LBB7_3:
	ldr	x8, [sp, #8]
	ldr	x16, [sp, #16]
	add	x8, x8, x16
	stur	x8, [x29, #-8]
	b	.LBB7_6
.LBB7_4:                                //   in Loop: Header=BB7_1 Depth=1
	b	.LBB7_1
.LBB7_5:
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
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	b	.LBB8_1
.LBB8_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	cbz	x8, .LBB8_4
	b	.LBB8_2
.LBB8_2:                                //   in Loop: Header=BB8_1 Depth=1
	ldur	w8, [x29, #-12]
	ldr	x16, [sp, #16]
	strb	w8, [x16]
	b	.LBB8_3
.LBB8_3:                                //   in Loop: Header=BB8_1 Depth=1
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
	str	x0, [sp, #8]
	str	x1, [sp]
	b	.LBB9_1
.LBB9_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	ldrb	w8, [x8]
	ldr	x16, [sp, #8]
	strb	w8, [x16]
	cbz	w8, .LBB9_4
	b	.LBB9_2
.LBB9_2:                                //   in Loop: Header=BB9_1 Depth=1
	b	.LBB9_3
.LBB9_3:                                //   in Loop: Header=BB9_1 Depth=1
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
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldrb	w8, [sp, #4]
	str	w8, [sp, #4]
	b	.LBB10_1
.LBB10_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	mov	w16, wzr
	str	w16, [sp]                       // 4-byte Folded Spill
	cbz	w8, .LBB10_3
	b	.LBB10_2
.LBB10_2:                               //   in Loop: Header=BB10_1 Depth=1
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	ldr	w16, [sp, #4]
	subs	w8, w8, w16
	cset	w8, ne
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB10_3
.LBB10_3:                               //   in Loop: Header=BB10_1 Depth=1
	ldr	w8, [sp]                        // 4-byte Folded Reload
	tbz	w8, #0, .LBB10_6
	b	.LBB10_4
.LBB10_4:                               //   in Loop: Header=BB10_1 Depth=1
	b	.LBB10_5
.LBB10_5:                               //   in Loop: Header=BB10_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB10_1
.LBB10_6:
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
	b	.LBB11_1
.LBB11_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	ldr	w16, [sp, #12]
	subs	w8, w8, w16
	b.ne	.LBB11_3
	b	.LBB11_2
.LBB11_2:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB11_6
.LBB11_3:                               //   in Loop: Header=BB11_1 Depth=1
	b	.LBB11_4
.LBB11_4:                               //   in Loop: Header=BB11_1 Depth=1
	ldr	x8, [sp, #16]
	add	x16, x8, #1
	str	x16, [sp, #16]
	ldrb	w8, [x8]
	cbnz	w8, .LBB11_1
	b	.LBB11_5
.LBB11_5:
	mov	x8, xzr
	stur	x8, [x29, #-8]
	b	.LBB11_6
.LBB11_6:
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
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	b	.LBB12_1
.LBB12_1:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w16, [x8]
	ldr	x8, [sp, #16]
	ldrb	w17, [x8]
	mov	w8, wzr
	subs	w16, w16, w17
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.ne	.LBB12_3
	b	.LBB12_2
.LBB12_2:                               //   in Loop: Header=BB12_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	subs	w8, w8, #0
	cset	w8, ne
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB12_3
.LBB12_3:                               //   in Loop: Header=BB12_1 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB12_6
	b	.LBB12_4
.LBB12_4:                               //   in Loop: Header=BB12_1 Depth=1
	b	.LBB12_5
.LBB12_5:                               //   in Loop: Header=BB12_1 Depth=1
	ldur	x8, [x29, #-8]
	add	x8, x8, #1
	stur	x8, [x29, #-8]
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB12_1
.LBB12_6:
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
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	b	.LBB13_1
.LBB13_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	cbz	w8, .LBB13_4
	b	.LBB13_2
.LBB13_2:                               //   in Loop: Header=BB13_1 Depth=1
	b	.LBB13_3
.LBB13_3:                               //   in Loop: Header=BB13_1 Depth=1
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
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB14_11
.LBB14_2:
	b	.LBB14_3
.LBB14_3:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldrb	w8, [x8]
	mov	w16, wzr
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	cbz	w8, .LBB14_7
	b	.LBB14_4
.LBB14_4:                               //   in Loop: Header=BB14_3 Depth=1
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	mov	w16, wzr
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	cbz	w8, .LBB14_7
	b	.LBB14_5
.LBB14_5:                               //   in Loop: Header=BB14_3 Depth=1
	ldr	x8, [sp, #32]
	mov	w16, wzr
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	cbz	x8, .LBB14_7
	b	.LBB14_6
.LBB14_6:                               //   in Loop: Header=BB14_3 Depth=1
	ldr	x8, [sp, #24]
	ldrb	w8, [x8]
	ldr	x16, [sp, #16]
	ldrb	w16, [x16]
	subs	w8, w8, w16
	cset	w8, eq
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB14_7
.LBB14_7:                               //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB14_10
	b	.LBB14_8
.LBB14_8:                               //   in Loop: Header=BB14_3 Depth=1
	b	.LBB14_9
.LBB14_9:                               //   in Loop: Header=BB14_3 Depth=1
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
.LBB14_10:
	ldr	x8, [sp, #24]
	ldrb	w8, [x8]
	ldr	x16, [sp, #16]
	ldrb	w16, [x16]
	subs	w8, w8, w16
	stur	w8, [x29, #-4]
	b	.LBB14_11
.LBB14_11:
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
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
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
	stur	w0, [x29, #-4]
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
	stur	w0, [x29, #-4]
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
	stur	w0, [x29, #-4]
	ldur	w16, [x29, #-4]
	mov	w8, #1                          // =0x1
	subs	w16, w16, #32
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.eq	.LBB18_2
	b	.LBB18_1
.LBB18_1:
	ldur	w8, [x29, #-4]
	subs	w8, w8, #9
	cset	w8, eq
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB18_2
.LBB18_2:
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
	stur	w0, [x29, #-4]
	ldur	w16, [x29, #-4]
	mov	w8, #1                          // =0x1
	subs	w16, w16, #32
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.lo	.LBB19_2
	b	.LBB19_1
.LBB19_1:
	ldur	w8, [x29, #-4]
	subs	w8, w8, #127
	cset	w8, eq
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB19_2
.LBB19_2:
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
	stur	w0, [x29, #-4]
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
	stur	w0, [x29, #-4]
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
	stur	w0, [x29, #-4]
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
	stur	w0, [x29, #-4]
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
	stur	w0, [x29, #-4]
	ldur	w16, [x29, #-4]
	mov	w8, #1                          // =0x1
	subs	w16, w16, #32
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.eq	.LBB24_2
	b	.LBB24_1
.LBB24_1:
	ldur	w8, [x29, #-4]
	subs	w8, w8, #9
	subs	w8, w8, #5
	cset	w8, lo
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB24_2
.LBB24_2:
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
	stur	w0, [x29, #-4]
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
	stur	w0, [x29, #-4]
	ldur	w16, [x29, #-4]
	mov	w8, #1                          // =0x1
	subs	w16, w16, #32
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.lo	.LBB26_4
	b	.LBB26_1
.LBB26_1:
	ldur	w8, [x29, #-4]
	subs	w16, w8, #127
	mov	w8, #1                          // =0x1
	subs	w16, w16, #33
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.lo	.LBB26_4
	b	.LBB26_2
.LBB26_2:
	ldur	w8, [x29, #-4]
	mov	w16, #-8232                     // =0xffffdfd8
	add	w16, w8, w16
	mov	w8, #1                          // =0x1
	subs	w16, w16, #2
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.lo	.LBB26_4
	b	.LBB26_3
.LBB26_3:
	ldur	w8, [x29, #-4]
	mov	w16, #-65529                    // =0xffff0007
	add	w8, w8, w16
	subs	w8, w8, #3
	cset	w8, lo
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB26_4
.LBB26_4:
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
	stur	w0, [x29, #-4]
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
	ldr	w8, [sp, #8]
	subs	w8, w8, #254
	b.hi	.LBB28_2
	b	.LBB28_1
.LBB28_1:
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	and	w8, w8, #0x7f
	subs	w8, w8, #32
	cset	w8, gt
	stur	w8, [x29, #-4]
	b	.LBB28_10
.LBB28_2:
	ldr	w8, [sp, #8]
	lsr	w8, w8, #3
	subs	w8, w8, #1029
	b.lo	.LBB28_5
	b	.LBB28_3
.LBB28_3:
	ldr	w8, [sp, #8]
	mov	w16, #-8234                     // =0xffffdfd6
	add	w8, w8, w16
	mov	w16, #47062                     // =0xb7d6
	subs	w8, w8, w16
	b.lo	.LBB28_5
	b	.LBB28_4
.LBB28_4:
	ldr	w8, [sp, #8]
	subs	w8, w8, #14, lsl #12            // =57344
	mov	w16, #8184                      // =0x1ff8
	subs	w8, w8, w16
	b.hi	.LBB28_6
	b	.LBB28_5
.LBB28_5:
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB28_10
.LBB28_6:
	ldr	w8, [sp, #8]
	mov	w16, #-65532                    // =0xffff0004
	add	w8, w8, w16
	mov	w16, #3                         // =0x3
	movk	w16, #16, lsl #16
	subs	w8, w8, w16
	b.hi	.LBB28_8
	b	.LBB28_7
.LBB28_7:
	ldr	w16, [sp, #8]
	mov	w8, #65534                      // =0xfffe
	bic	w8, w8, w16
	cbnz	w8, .LBB28_9
	b	.LBB28_8
.LBB28_8:
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB28_10
.LBB28_9:
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB28_10
.LBB28_10:
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
	stur	w0, [x29, #-4]
	ldur	w8, [x29, #-4]
	subs	w16, w8, #48
	mov	w8, #1                          // =0x1
	subs	w16, w16, #10
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.lo	.LBB29_2
	b	.LBB29_1
.LBB29_1:
	ldur	w8, [x29, #-4]
	orr	w8, w8, #0x20
	subs	w8, w8, #97
	subs	w8, w8, #6
	cset	w8, lo
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB29_2
.LBB29_2:
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
	stur	w0, [x29, #-4]
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
	ldr	d0, [sp, #16]
	fcmp	d0, d0
	b.vc	.LBB31_2
	b	.LBB31_1
.LBB31_1:
	ldr	d0, [sp, #16]
	stur	d0, [x29, #-8]
	b	.LBB31_8
.LBB31_2:
	ldr	d0, [sp, #8]
	fcmp	d0, d0
	b.vc	.LBB31_4
	b	.LBB31_3
.LBB31_3:
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
	ldr	d0, [sp, #16]
	ldr	d1, [sp, #8]
	fsub	d0, d0, d1
	str	d0, [sp]                        // 8-byte Folded Spill
	b	.LBB31_7
.LBB31_6:
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
	ldr	s0, [sp, #8]
	fcmp	s0, s0
	b.vc	.LBB32_2
	b	.LBB32_1
.LBB32_1:
	ldr	s0, [sp, #8]
	stur	s0, [x29, #-4]
	b	.LBB32_8
.LBB32_2:
	ldr	s0, [sp, #4]
	fcmp	s0, s0
	b.vc	.LBB32_4
	b	.LBB32_3
.LBB32_3:
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
	ldr	s0, [sp, #8]
	ldr	s1, [sp, #4]
	fsub	s0, s0, s1
	str	s0, [sp]                        // 4-byte Folded Spill
	b	.LBB32_7
.LBB32_6:
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
	ldur	d0, [x29, #-16]
	fcmp	d0, d0
	b.vc	.LBB33_2
	b	.LBB33_1
.LBB33_1:
	ldr	d0, [sp, #24]
	stur	d0, [x29, #-8]
	b	.LBB33_13
.LBB33_2:
	ldr	d0, [sp, #24]
	fcmp	d0, d0
	b.vc	.LBB33_4
	b	.LBB33_3
.LBB33_3:
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
	ldur	x8, [x29, #-16]
	tbz	x8, #63, .LBB33_7
	b	.LBB33_6
.LBB33_6:
	ldr	d0, [sp, #24]
	str	d0, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB33_8
.LBB33_7:
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
	ldr	d0, [sp, #24]
	str	d0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB33_12
.LBB33_11:
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
	ldur	s0, [x29, #-8]
	fcmp	s0, s0
	b.vc	.LBB34_2
	b	.LBB34_1
.LBB34_1:
	ldur	s0, [x29, #-12]
	stur	s0, [x29, #-4]
	b	.LBB34_13
.LBB34_2:
	ldur	s0, [x29, #-12]
	fcmp	s0, s0
	b.vc	.LBB34_4
	b	.LBB34_3
.LBB34_3:
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
	ldur	w8, [x29, #-8]
	tbz	w8, #31, .LBB34_7
	b	.LBB34_6
.LBB34_6:
	ldur	s0, [x29, #-12]
	str	s0, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB34_8
.LBB34_7:
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
	ldur	s0, [x29, #-12]
	str	s0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB34_12
.LBB34_11:
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
	ldur	q1, [x29, #-32]
	str	q1, [sp, #-16]!
	ldr	q0, [sp], #16
	bl	__unordtf2
	cbz	w0, .LBB35_2
	b	.LBB35_1
.LBB35_1:
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
	ldur	x8, [x29, #-24]
	tbz	x8, #63, .LBB35_7
	b	.LBB35_6
.LBB35_6:
	ldr	q0, [sp, #32]
	str	q0, [sp, #16]                   // 16-byte Folded Spill
	b	.LBB35_8
.LBB35_7:
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
	ldr	q0, [sp, #32]
	str	q0, [sp]                        // 16-byte Folded Spill
	b	.LBB35_12
.LBB35_11:
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
	ldur	d0, [x29, #-16]
	fcmp	d0, d0
	b.vc	.LBB36_2
	b	.LBB36_1
.LBB36_1:
	ldr	d0, [sp, #24]
	stur	d0, [x29, #-8]
	b	.LBB36_13
.LBB36_2:
	ldr	d0, [sp, #24]
	fcmp	d0, d0
	b.vc	.LBB36_4
	b	.LBB36_3
.LBB36_3:
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
	ldur	x8, [x29, #-16]
	tbz	x8, #63, .LBB36_7
	b	.LBB36_6
.LBB36_6:
	ldur	d0, [x29, #-16]
	str	d0, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB36_8
.LBB36_7:
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
	ldur	d0, [x29, #-16]
	str	d0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB36_12
.LBB36_11:
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
	ldur	s0, [x29, #-8]
	fcmp	s0, s0
	b.vc	.LBB37_2
	b	.LBB37_1
.LBB37_1:
	ldur	s0, [x29, #-12]
	stur	s0, [x29, #-4]
	b	.LBB37_13
.LBB37_2:
	ldur	s0, [x29, #-12]
	fcmp	s0, s0
	b.vc	.LBB37_4
	b	.LBB37_3
.LBB37_3:
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
	ldur	w8, [x29, #-8]
	tbz	w8, #31, .LBB37_7
	b	.LBB37_6
.LBB37_6:
	ldur	s0, [x29, #-8]
	str	s0, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB37_8
.LBB37_7:
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
	ldur	s0, [x29, #-8]
	str	s0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB37_12
.LBB37_11:
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
	ldur	q1, [x29, #-32]
	str	q1, [sp, #-16]!
	ldr	q0, [sp], #16
	bl	__unordtf2
	cbz	w0, .LBB38_2
	b	.LBB38_1
.LBB38_1:
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
	ldur	x8, [x29, #-24]
	tbz	x8, #63, .LBB38_7
	b	.LBB38_6
.LBB38_6:
	ldur	q0, [x29, #-32]
	str	q0, [sp, #16]                   // 16-byte Folded Spill
	b	.LBB38_8
.LBB38_7:
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
	ldur	q0, [x29, #-32]
	str	q0, [sp]                        // 16-byte Folded Spill
	b	.LBB38_12
.LBB38_11:
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
	stur	x0, [x29, #-8]
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
	stur	w0, [x29, #-4]
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
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB42_2
	b	.LBB42_1
.LBB42_1:
	ldr	x16, [sp, #8]
	mov	x8, xzr
	str	x8, [x16, #8]
	ldr	x16, [sp, #8]
	str	x8, [x16]
	b	.LBB42_4
.LBB42_2:
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
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	cbz	x8, .LBB43_2
	b	.LBB43_1
.LBB43_1:
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
	ldr	x8, [sp, #40]
	ldr	x16, [sp, #24]
	mul	x16, x16, x17
	add	x8, x8, x16
	stur	x8, [x29, #-8]
	b	.LBB44_7
.LBB44_4:                               //   in Loop: Header=BB44_1 Depth=1
	b	.LBB44_5
.LBB44_5:                               //   in Loop: Header=BB44_1 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB44_1
.LBB44_6:
	ldr	x17, [sp, #16]                  // 8-byte Folded Reload
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
	ldr	x8, [sp, #24]
	ldr	x16, [sp, #8]
	mul	x16, x16, x17
	add	x8, x8, x16
	stur	x8, [x29, #-8]
	b	.LBB46_7
.LBB46_4:                               //   in Loop: Header=BB46_1 Depth=1
	b	.LBB46_5
.LBB46_5:                               //   in Loop: Header=BB46_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB46_1
.LBB46_6:
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
	ldur	w8, [x29, #-4]
	subs	w8, w8, #1
	b.lt	.LBB47_2
	b	.LBB47_1
.LBB47_1:
	ldur	w0, [x29, #-4]
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB47_3
.LBB47_2:
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
	b.ne	.LBB48_7
	b	.LBB48_5
.LBB48_5:
	mov	w8, #1                          // =0x1
	str	w8, [sp, #16]
	b	.LBB48_6
.LBB48_6:
	ldur	x8, [x29, #-8]
	add	x8, x8, #1
	stur	x8, [x29, #-8]
	b	.LBB48_7
.LBB48_7:
	b	.LBB48_8
.LBB48_8:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w0, [x8]
	bl	isdigit
	cbz	w0, .LBB48_10
	b	.LBB48_9
.LBB48_9:                               //   in Loop: Header=BB48_8 Depth=1
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
	b	.LBB48_8
.LBB48_10:
	ldr	w8, [sp, #16]
	cbz	w8, .LBB48_12
	b	.LBB48_11
.LBB48_11:
	ldur	w0, [x29, #-12]
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB48_13
.LBB48_12:
	ldur	w16, [x29, #-12]
	mov	w8, wzr
	subs	w0, w8, w16
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB48_13
.LBB48_13:
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
	b.ne	.LBB49_7
	b	.LBB49_5
.LBB49_5:
	mov	w8, #1                          // =0x1
	str	w8, [sp, #12]
	b	.LBB49_6
.LBB49_6:
	ldur	x8, [x29, #-8]
	add	x8, x8, #1
	stur	x8, [x29, #-8]
	b	.LBB49_7
.LBB49_7:
	b	.LBB49_8
.LBB49_8:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w0, [x8]
	bl	isdigit
	cbz	w0, .LBB49_10
	b	.LBB49_9
.LBB49_9:                               //   in Loop: Header=BB49_8 Depth=1
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
	b	.LBB49_8
.LBB49_10:
	ldr	w8, [sp, #12]
	cbz	w8, .LBB49_12
	b	.LBB49_11
.LBB49_11:
	ldr	x0, [sp, #16]
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB49_13
.LBB49_12:
	ldr	x16, [sp, #16]
	mov	x8, xzr
	subs	x0, x8, x16
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB49_13
.LBB49_13:
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
	b.ne	.LBB50_7
	b	.LBB50_5
.LBB50_5:
	mov	w8, #1                          // =0x1
	str	w8, [sp, #12]
	b	.LBB50_6
.LBB50_6:
	ldur	x8, [x29, #-8]
	add	x8, x8, #1
	stur	x8, [x29, #-8]
	b	.LBB50_7
.LBB50_7:
	b	.LBB50_8
.LBB50_8:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w0, [x8]
	bl	isdigit
	cbz	w0, .LBB50_10
	b	.LBB50_9
.LBB50_9:                               //   in Loop: Header=BB50_8 Depth=1
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
	b	.LBB50_8
.LBB50_10:
	ldr	w8, [sp, #12]
	cbz	w8, .LBB50_12
	b	.LBB50_11
.LBB50_11:
	ldr	x0, [sp, #16]
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB50_13
.LBB50_12:
	ldr	x16, [sp, #16]
	mov	x8, xzr
	subs	x0, x8, x16
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB50_13
.LBB50_13:
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
	b	.LBB51_1
.LBB51_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	cbz	x8, .LBB51_9
	b	.LBB51_2
.LBB51_2:                               //   in Loop: Header=BB51_1 Depth=1
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
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB51_10
.LBB51_7:                               //   in Loop: Header=BB51_1 Depth=1
	b	.LBB51_8
.LBB51_8:                               //   in Loop: Header=BB51_1 Depth=1
	b	.LBB51_1
.LBB51_9:
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
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB52_9
.LBB52_4:                               //   in Loop: Header=BB52_1 Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #1
	b.lt	.LBB52_6
	b	.LBB52_5
.LBB52_5:                               //   in Loop: Header=BB52_1 Depth=1
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
	ldr	w8, [sp, #12]
	asr	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB52_1
.LBB52_8:
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
	str	w0, [sp, #4]
	str	w1, [sp]
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
	ldr	x8, [sp, #8]
	subs	x8, x8, #1
	b.lt	.LBB54_2
	b	.LBB54_1
.LBB54_1:
	ldr	x0, [sp, #8]
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB54_3
.LBB54_2:
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
	str	x0, [sp, #8]
	str	x1, [sp]
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
	ldr	x8, [sp, #8]
	subs	x8, x8, #1
	b.lt	.LBB56_2
	b	.LBB56_1
.LBB56_1:
	ldr	x0, [sp, #8]
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB56_3
.LBB56_2:
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
	str	x0, [sp, #8]
	str	x1, [sp]
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
	ldr	x8, [sp, #8]
	subs	x8, x8, #1
	b.lt	.LBB58_2
	b	.LBB58_1
.LBB58_1:
	ldr	x0, [sp, #8]
	str	x0, [sp]                        // 8-byte Folded Spill
	b	.LBB58_3
.LBB58_2:
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
	str	x0, [sp, #8]
	str	x1, [sp]
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
	b	.LBB60_1
.LBB60_1:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	mov	w16, wzr
	str	w16, [sp, #16]                  // 4-byte Folded Spill
	cbz	w8, .LBB60_3
	b	.LBB60_2
.LBB60_2:                               //   in Loop: Header=BB60_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldur	w16, [x29, #-12]
	subs	w8, w8, w16
	cset	w8, ne
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB60_3
.LBB60_3:                               //   in Loop: Header=BB60_1 Depth=1
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB60_6
	b	.LBB60_4
.LBB60_4:                               //   in Loop: Header=BB60_1 Depth=1
	b	.LBB60_5
.LBB60_5:                               //   in Loop: Header=BB60_1 Depth=1
	ldur	x8, [x29, #-8]
	add	x8, x8, #4
	stur	x8, [x29, #-8]
	b	.LBB60_1
.LBB60_6:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	cbz	w8, .LBB60_8
	b	.LBB60_7
.LBB60_7:
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB60_9
.LBB60_8:
	mov	x0, xzr
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB60_9
.LBB60_9:
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
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
	b	.LBB61_1
.LBB61_1:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	w16, [x8]
	ldr	x8, [sp, #16]
	ldr	w17, [x8]
	mov	w8, wzr
	subs	w16, w16, w17
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.ne	.LBB61_4
	b	.LBB61_2
.LBB61_2:                               //   in Loop: Header=BB61_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	mov	w16, wzr
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	cbz	w8, .LBB61_4
	b	.LBB61_3
.LBB61_3:                               //   in Loop: Header=BB61_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, ne
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB61_4
.LBB61_4:                               //   in Loop: Header=BB61_1 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB61_7
	b	.LBB61_5
.LBB61_5:                               //   in Loop: Header=BB61_1 Depth=1
	b	.LBB61_6
.LBB61_6:                               //   in Loop: Header=BB61_1 Depth=1
	ldur	x8, [x29, #-8]
	add	x8, x8, #4
	stur	x8, [x29, #-8]
	ldr	x8, [sp, #16]
	add	x8, x8, #4
	str	x8, [sp, #16]
	b	.LBB61_1
.LBB61_7:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldr	x16, [sp, #16]
	ldr	w16, [x16]
	subs	w8, w8, w16
	b.hs	.LBB61_9
	b	.LBB61_8
.LBB61_8:
	mov	w0, #-1                         // =0xffffffff
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB61_10
.LBB61_9:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldr	x16, [sp, #16]
	ldr	w16, [x16]
	subs	w8, w8, w16
	cset	w0, hi
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB61_10
.LBB61_10:
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
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
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
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	b	.LBB63_1
.LBB63_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	cbz	w8, .LBB63_4
	b	.LBB63_2
.LBB63_2:                               //   in Loop: Header=BB63_1 Depth=1
	b	.LBB63_3
.LBB63_3:                               //   in Loop: Header=BB63_1 Depth=1
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
	b	.LBB64_1
.LBB64_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	mov	w16, wzr
	str	w16, [sp, #20]                  // 4-byte Folded Spill
	cbz	x8, .LBB64_5
	b	.LBB64_2
.LBB64_2:                               //   in Loop: Header=BB64_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w16, [x8]
	ldur	x8, [x29, #-16]
	ldr	w17, [x8]
	mov	w8, wzr
	subs	w16, w16, w17
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b.ne	.LBB64_5
	b	.LBB64_3
.LBB64_3:                               //   in Loop: Header=BB64_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	mov	w16, wzr
	str	w16, [sp, #20]                  // 4-byte Folded Spill
	cbz	w8, .LBB64_5
	b	.LBB64_4
.LBB64_4:                               //   in Loop: Header=BB64_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, ne
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB64_5
.LBB64_5:                               //   in Loop: Header=BB64_1 Depth=1
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB64_8
	b	.LBB64_6
.LBB64_6:                               //   in Loop: Header=BB64_1 Depth=1
	b	.LBB64_7
.LBB64_7:                               //   in Loop: Header=BB64_1 Depth=1
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
.LBB64_8:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB64_13
	b	.LBB64_9
.LBB64_9:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldur	x16, [x29, #-16]
	ldr	w16, [x16]
	subs	w8, w8, w16
	b.hs	.LBB64_11
	b	.LBB64_10
.LBB64_10:
	mov	w0, #-1                         // =0xffffffff
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB64_12
.LBB64_11:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldur	x16, [x29, #-16]
	ldr	w16, [x16]
	subs	w8, w8, w16
	cset	w0, hi
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB64_12
.LBB64_12:
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB64_14
.LBB64_13:
	mov	w0, wzr
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB64_14
.LBB64_14:
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
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
	b	.LBB65_1
.LBB65_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	mov	w16, wzr
	str	w16, [sp, #20]                  // 4-byte Folded Spill
	cbz	x8, .LBB65_3
	b	.LBB65_2
.LBB65_2:                               //   in Loop: Header=BB65_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldur	w16, [x29, #-12]
	subs	w8, w8, w16
	cset	w8, ne
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB65_3
.LBB65_3:                               //   in Loop: Header=BB65_1 Depth=1
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB65_6
	b	.LBB65_4
.LBB65_4:                               //   in Loop: Header=BB65_1 Depth=1
	b	.LBB65_5
.LBB65_5:                               //   in Loop: Header=BB65_1 Depth=1
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	str	x8, [sp, #24]
	ldur	x8, [x29, #-8]
	add	x8, x8, #4
	stur	x8, [x29, #-8]
	b	.LBB65_1
.LBB65_6:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB65_8
	b	.LBB65_7
.LBB65_7:
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB65_9
.LBB65_8:
	mov	x0, xzr
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB65_9
.LBB65_9:
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
	b	.LBB66_1
.LBB66_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	mov	w16, wzr
	str	w16, [sp, #20]                  // 4-byte Folded Spill
	cbz	x8, .LBB66_3
	b	.LBB66_2
.LBB66_2:                               //   in Loop: Header=BB66_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldur	x16, [x29, #-16]
	ldr	w16, [x16]
	subs	w8, w8, w16
	cset	w8, eq
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB66_3
.LBB66_3:                               //   in Loop: Header=BB66_1 Depth=1
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB66_6
	b	.LBB66_4
.LBB66_4:                               //   in Loop: Header=BB66_1 Depth=1
	b	.LBB66_5
.LBB66_5:                               //   in Loop: Header=BB66_1 Depth=1
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
.LBB66_6:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB66_11
	b	.LBB66_7
.LBB66_7:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldur	x16, [x29, #-16]
	ldr	w16, [x16]
	subs	w8, w8, w16
	b.hs	.LBB66_9
	b	.LBB66_8
.LBB66_8:
	mov	w0, #-1                         // =0xffffffff
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB66_10
.LBB66_9:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldur	x16, [x29, #-16]
	ldr	w16, [x16]
	subs	w8, w8, w16
	cset	w0, hi
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB66_10
.LBB66_10:
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB66_12
.LBB66_11:
	mov	w0, wzr
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB66_12
.LBB66_12:
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
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
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
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
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	ldur	x8, [x29, #-16]
	ldr	x16, [sp, #24]
	subs	x8, x8, x16
	b.ne	.LBB68_2
	b	.LBB68_1
.LBB68_1:
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
	b	.LBB68_4
.LBB68_4:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	subs	x16, x8, #1
	str	x16, [sp, #16]
	cbz	x8, .LBB68_6
	b	.LBB68_5
.LBB68_5:                               //   in Loop: Header=BB68_4 Depth=1
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
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #8]
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
	b	.LBB70_8
.LBB70_8:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	cbz	x8, .LBB70_11
	b	.LBB70_9
.LBB70_9:                               //   in Loop: Header=BB70_8 Depth=1
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
	b	.LBB70_12
.LBB70_12:
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
	str	x0, [sp, #8]
	str	w1, [sp, #4]
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
	str	x0, [sp, #8]
	str	w1, [sp, #4]
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
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
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
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
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
	str	x0, [sp, #8]
	str	w1, [sp, #4]
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
	str	x0, [sp, #8]
	str	w1, [sp, #4]
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
	sturh	w0, [x29, #-2]
	str	w1, [sp, #8]
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
	sturh	w0, [x29, #-2]
	str	w1, [sp, #8]
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
	sturb	w0, [x29, #-1]
	str	w1, [sp, #8]
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
	sturb	w0, [x29, #-1]
	str	w1, [sp, #8]
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
	sturh	w0, [x29, #-2]
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
	stur	w0, [x29, #-4]
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
	str	x0, [sp, #8]
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
	mov	w8, wzr
	str	w8, [sp, #4]
	b	.LBB84_1
.LBB84_1:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #31
	b.hi	.LBB84_6
	b	.LBB84_2
.LBB84_2:                               //   in Loop: Header=BB84_1 Depth=1
	ldr	w8, [sp, #8]
	ldr	w16, [sp, #4]
	mov	w0, w16
	mov	w16, w0
	lsr	w8, w8, w16
	tbz	w8, #0, .LBB84_4
	b	.LBB84_3
.LBB84_3:
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB84_7
.LBB84_4:                               //   in Loop: Header=BB84_1 Depth=1
	b	.LBB84_5
.LBB84_5:                               //   in Loop: Header=BB84_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB84_1
.LBB84_6:
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
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB85_2
	b	.LBB85_1
.LBB85_1:
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB85_7
.LBB85_2:
	mov	w8, #1                          // =0x1
	str	w8, [sp, #4]
	b	.LBB85_3
.LBB85_3:                               // =>This Inner Loop Header: Depth=1
	ldrb	w8, [sp, #8]
	tbnz	w8, #0, .LBB85_6
	b	.LBB85_4
.LBB85_4:                               //   in Loop: Header=BB85_3 Depth=1
	ldr	w8, [sp, #8]
	asr	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB85_5
.LBB85_5:                               //   in Loop: Header=BB85_3 Depth=1
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
	stur	s0, [x29, #-4]
	ldur	s0, [x29, #-4]
	mov	w8, #1                          // =0x1
	mov	w16, #-8388609                  // =0xff7fffff
	fmov	s1, w16
	fcmp	s0, s1
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.mi	.LBB86_2
	b	.LBB86_1
.LBB86_1:
	ldur	s0, [x29, #-4]
	mov	w8, #2139095039                 // =0x7f7fffff
	fmov	s1, w8
	fcmp	s0, s1
	cset	w8, gt
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB86_2
.LBB86_2:
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
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	mov	w8, #1                          // =0x1
	mov	x16, #-4503599627370497         // =0xffefffffffffffff
	fmov	d1, x16
	fcmp	d0, d1
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.mi	.LBB87_2
	b	.LBB87_1
.LBB87_1:
	ldr	d0, [sp, #8]
	mov	x8, #9218868437227405311        // =0x7fefffffffffffff
	fmov	d1, x8
	fcmp	d0, d1
	cset	w8, gt
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB87_2
.LBB87_2:
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	q0, [sp, #16]
	ldr	q0, [sp, #16]
	mov	w0, #1                          // =0x1
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	movz	x8, #:abs_g0_nc:.LCPI88_0
	movk	x8, #:abs_g1_nc:.LCPI88_0
	movk	x8, #:abs_g2_nc:.LCPI88_0
	movk	x8, #:abs_g3:.LCPI88_0
	ldr	q1, [x8]
	bl	__lttf2
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	tbnz	w0, #31, .LBB88_2
	b	.LBB88_1
.LBB88_1:
	ldr	q0, [sp, #16]
	movz	x8, #:abs_g0_nc:.LCPI88_1
	movk	x8, #:abs_g1_nc:.LCPI88_1
	movk	x8, #:abs_g2_nc:.LCPI88_1
	movk	x8, #:abs_g3:.LCPI88_1
	ldr	q1, [x8]
	bl	__gttf2
	subs	w8, w0, #0
	cset	w8, gt
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB88_2
.LBB88_2:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
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
	str	x0, [sp, #8]
	str	w1, [sp, #4]
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
	stur	s0, [x29, #-4]
	str	w0, [sp, #8]
	ldur	s0, [x29, #-4]
	fcmp	s0, s0
	b.vs	.LBB90_9
	b	.LBB90_1
.LBB90_1:
	ldur	s1, [x29, #-4]
	fadd	s0, s1, s1
	fcmp	s0, s1
	b.eq	.LBB90_9
	b	.LBB90_2
.LBB90_2:
	ldr	w8, [sp, #8]
	subs	w8, w8, #0
	fmov	s1, #2.00000000
	fmov	s0, #0.50000000
	fcsel	s0, s0, s1, lt
	str	s0, [sp, #4]
	b	.LBB90_3
.LBB90_3:                               // =>This Inner Loop Header: Depth=1
	ldr	w16, [sp, #8]
	and	w8, w16, #0x1
	subs	w16, w16, #0
	cneg	w8, w8, lt
	cbz	w8, .LBB90_5
	b	.LBB90_4
.LBB90_4:                               //   in Loop: Header=BB90_3 Depth=1
	ldr	s1, [sp, #4]
	ldur	s0, [x29, #-4]
	fmul	s0, s0, s1
	stur	s0, [x29, #-4]
	b	.LBB90_5
.LBB90_5:                               //   in Loop: Header=BB90_3 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, w8, lsr #31
	asr	w8, w8, #1
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB90_7
	b	.LBB90_6
.LBB90_6:
	b	.LBB90_8
.LBB90_7:                               //   in Loop: Header=BB90_3 Depth=1
	ldr	s0, [sp, #4]
	fmul	s0, s0, s0
	str	s0, [sp, #4]
	b	.LBB90_3
.LBB90_8:
	b	.LBB90_9
.LBB90_9:
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
	stur	d0, [x29, #-8]
	stur	w0, [x29, #-12]
	ldur	d0, [x29, #-8]
	fcmp	d0, d0
	b.vs	.LBB91_9
	b	.LBB91_1
.LBB91_1:
	ldur	d1, [x29, #-8]
	fadd	d0, d1, d1
	fcmp	d0, d1
	b.eq	.LBB91_9
	b	.LBB91_2
.LBB91_2:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	fmov	d1, #2.00000000
	fmov	d0, #0.50000000
	fcsel	d0, d0, d1, lt
	str	d0, [sp, #8]
	b	.LBB91_3
.LBB91_3:                               // =>This Inner Loop Header: Depth=1
	ldur	w16, [x29, #-12]
	and	w8, w16, #0x1
	subs	w16, w16, #0
	cneg	w8, w8, lt
	cbz	w8, .LBB91_5
	b	.LBB91_4
.LBB91_4:                               //   in Loop: Header=BB91_3 Depth=1
	ldr	d1, [sp, #8]
	ldur	d0, [x29, #-8]
	fmul	d0, d0, d1
	stur	d0, [x29, #-8]
	b	.LBB91_5
.LBB91_5:                               //   in Loop: Header=BB91_3 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, w8, lsr #31
	asr	w8, w8, #1
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	cbnz	w8, .LBB91_7
	b	.LBB91_6
.LBB91_6:
	b	.LBB91_8
.LBB91_7:                               //   in Loop: Header=BB91_3 Depth=1
	ldr	d0, [sp, #8]
	fmul	d0, d0, d0
	str	d0, [sp, #8]
	b	.LBB91_3
.LBB91_8:
	b	.LBB91_9
.LBB91_9:
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
	stur	q0, [x29, #-16]
	stur	w0, [x29, #-20]
	ldur	q1, [x29, #-16]
	str	q1, [sp, #-16]!
	ldr	q0, [sp], #16
	bl	__unordtf2
	cbnz	w0, .LBB92_9
	b	.LBB92_1
.LBB92_1:
	ldur	q1, [x29, #-16]
	str	q1, [sp]                        // 16-byte Folded Spill
	str	q1, [sp, #-16]!
	ldr	q0, [sp], #16
	bl	__addtf3
	ldr	q1, [sp]                        // 16-byte Folded Reload
	bl	__eqtf2
	cbz	w0, .LBB92_9
	b	.LBB92_2
.LBB92_2:
	ldur	w8, [x29, #-20]
	lsr	w16, w8, #31
	movz	x8, #:abs_g0_nc:.LCPI92_0
	movk	x8, #:abs_g1_nc:.LCPI92_0
	movk	x8, #:abs_g2_nc:.LCPI92_0
	movk	x8, #:abs_g3:.LCPI92_0
	ldr	q0, [x8, w16, uxtw #4]
	str	q0, [sp, #16]
	b	.LBB92_3
.LBB92_3:                               // =>This Inner Loop Header: Depth=1
	ldur	w16, [x29, #-20]
	and	w8, w16, #0x1
	subs	w16, w16, #0
	cneg	w8, w8, lt
	cbz	w8, .LBB92_5
	b	.LBB92_4
.LBB92_4:                               //   in Loop: Header=BB92_3 Depth=1
	ldr	q1, [sp, #16]
	ldur	q0, [x29, #-16]
	bl	__multf3
	stur	q0, [x29, #-16]
	b	.LBB92_5
.LBB92_5:                               //   in Loop: Header=BB92_3 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, w8, lsr #31
	asr	w8, w8, #1
	stur	w8, [x29, #-20]
	ldur	w8, [x29, #-20]
	cbnz	w8, .LBB92_7
	b	.LBB92_6
.LBB92_6:
	b	.LBB92_8
.LBB92_7:                               //   in Loop: Header=BB92_3 Depth=1
	ldr	q1, [sp, #16]
	str	q1, [sp, #-16]!
	ldr	q0, [sp], #16
	bl	__multf3
	str	q0, [sp, #16]
	b	.LBB92_3
.LBB92_8:
	b	.LBB92_9
.LBB92_9:
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
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
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
	cbz	x8, .LBB94_3
	b	.LBB94_2
.LBB94_2:                               //   in Loop: Header=BB94_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8]
	ldr	x16, [sp, #16]
	strb	w8, [x16]
	subs	w8, w8, #0
	cset	w8, ne
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB94_3
.LBB94_3:                               //   in Loop: Header=BB94_1 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB94_6
	b	.LBB94_4
.LBB94_4:                               //   in Loop: Header=BB94_1 Depth=1
	b	.LBB94_5
.LBB94_5:                               //   in Loop: Header=BB94_1 Depth=1
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
.LBB94_6:
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB94_8
	b	.LBB94_7
.LBB94_7:
	ldr	x16, [sp, #16]
	mov	w8, wzr
	strb	w8, [x16]
	b	.LBB94_8
.LBB94_8:
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
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	mov	x8, xzr
	str	x8, [sp, #8]
	b	.LBB95_1
.LBB95_1:                               // =>This Inner Loop Header: Depth=1
	ldr	x16, [sp, #8]
	ldr	x17, [sp, #16]
	mov	w8, wzr
	subs	x16, x16, x17
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.hs	.LBB95_3
	b	.LBB95_2
.LBB95_2:                               //   in Loop: Header=BB95_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x16, [sp, #8]
	ldrb	w8, [x8, x16]
	subs	w8, w8, #0
	cset	w8, ne
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB95_3
.LBB95_3:                               //   in Loop: Header=BB95_1 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB95_6
	b	.LBB95_4
.LBB95_4:                               //   in Loop: Header=BB95_1 Depth=1
	b	.LBB95_5
.LBB95_5:                               //   in Loop: Header=BB95_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB95_1
.LBB95_6:
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
	b	.LBB96_1
.LBB96_1:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB96_3 Depth 2
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	cbz	w8, .LBB96_8
	b	.LBB96_2
.LBB96_2:                               //   in Loop: Header=BB96_1 Depth=1
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
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB96_9
.LBB96_6:                               //   in Loop: Header=BB96_3 Depth=2
	b	.LBB96_3
.LBB96_7:                               //   in Loop: Header=BB96_1 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB96_1
.LBB96_8:
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
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	mov	x8, xzr
	str	x8, [sp, #8]
	b	.LBB97_1
.LBB97_1:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	ldur	w16, [x29, #-12]
	subs	w8, w8, w16
	b.ne	.LBB97_3
	b	.LBB97_2
.LBB97_2:                               //   in Loop: Header=BB97_1 Depth=1
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	b	.LBB97_3
.LBB97_3:                               //   in Loop: Header=BB97_1 Depth=1
	b	.LBB97_4
.LBB97_4:                               //   in Loop: Header=BB97_1 Depth=1
	ldur	x8, [x29, #-8]
	add	x16, x8, #1
	stur	x16, [x29, #-8]
	ldrb	w8, [x8]
	cbnz	w8, .LBB97_1
	b	.LBB97_5
.LBB97_5:
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
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	bl	strlen
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB98_2
	b	.LBB98_1
.LBB98_1:
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
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #8]
	bl	strncmp
	cbnz	w0, .LBB98_6
	b	.LBB98_5
.LBB98_5:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB98_9
.LBB98_6:                               //   in Loop: Header=BB98_3 Depth=1
	b	.LBB98_7
.LBB98_7:                               //   in Loop: Header=BB98_3 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB98_3
.LBB98_8:
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
	ldr	d0, [sp, #16]
	fcmp	d0, #0.0
	b.pl	.LBB99_2
	b	.LBB99_1
.LBB99_1:
	ldr	d0, [sp, #8]
	fcmp	d0, #0.0
	b.gt	.LBB99_4
	b	.LBB99_2
.LBB99_2:
	ldr	d0, [sp, #16]
	fcmp	d0, #0.0
	b.le	.LBB99_5
	b	.LBB99_3
.LBB99_3:
	ldr	d0, [sp, #8]
	fcmp	d0, #0.0
	b.pl	.LBB99_5
	b	.LBB99_4
.LBB99_4:
	ldr	d0, [sp, #16]
	fneg	d0, d0
	stur	d0, [x29, #-8]
	b	.LBB99_6
.LBB99_5:
	ldr	d0, [sp, #16]
	stur	d0, [x29, #-8]
	b	.LBB99_6
.LBB99_6:
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
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB100_12
.LBB100_2:
	ldur	x8, [x29, #-24]
	ldr	x16, [sp, #24]
	subs	x8, x8, x16
	b.hs	.LBB100_4
	b	.LBB100_3
.LBB100_3:
	mov	x8, xzr
	stur	x8, [x29, #-8]
	b	.LBB100_12
.LBB100_4:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	b	.LBB100_5
.LBB100_5:                              // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldr	x16, [sp, #8]
	subs	x8, x8, x16
	b.hi	.LBB100_11
	b	.LBB100_6
.LBB100_6:                              //   in Loop: Header=BB100_5 Depth=1
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	ldr	x16, [sp, #32]
	ldrb	w16, [x16]
	subs	w8, w8, w16
	b.ne	.LBB100_9
	b	.LBB100_7
.LBB100_7:                              //   in Loop: Header=BB100_5 Depth=1
	ldr	x8, [sp, #16]
	add	x0, x8, #1
	ldr	x8, [sp, #32]
	add	x1, x8, #1
	ldr	x8, [sp, #24]
	subs	x2, x8, #1
	bl	memcmp
	cbnz	w0, .LBB100_9
	b	.LBB100_8
.LBB100_8:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB100_12
.LBB100_9:                              //   in Loop: Header=BB100_5 Depth=1
	b	.LBB100_10
.LBB100_10:                             //   in Loop: Header=BB100_5 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB100_5
.LBB100_11:
	mov	x8, xzr
	stur	x8, [x29, #-8]
	b	.LBB100_12
.LBB100_12:
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
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
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
	mov	w8, wzr
	str	w8, [sp, #8]
	str	w8, [sp, #12]
	ldur	d0, [x29, #-8]
	fcmp	d0, #0.0
	b.pl	.LBB102_2
	b	.LBB102_1
.LBB102_1:
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
	b	.LBB102_4
.LBB102_4:                              // =>This Inner Loop Header: Depth=1
	ldur	d0, [x29, #-8]
	fmov	d1, #1.00000000
	fcmp	d0, d1
	b.lt	.LBB102_6
	b	.LBB102_5
.LBB102_5:                              //   in Loop: Header=BB102_4 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	ldur	d0, [x29, #-8]
	fmov	d1, #0.50000000
	fmul	d0, d0, d1
	stur	d0, [x29, #-8]
	b	.LBB102_4
.LBB102_6:
	b	.LBB102_14
.LBB102_7:
	ldur	d0, [x29, #-8]
	fmov	d1, #0.50000000
	fcmp	d0, d1
	b.pl	.LBB102_13
	b	.LBB102_8
.LBB102_8:
	ldur	d0, [x29, #-8]
	fcmp	d0, #0.0
	b.eq	.LBB102_13
	b	.LBB102_9
.LBB102_9:
	b	.LBB102_10
.LBB102_10:                             // =>This Inner Loop Header: Depth=1
	ldur	d0, [x29, #-8]
	fmov	d1, #0.50000000
	fcmp	d0, d1
	b.pl	.LBB102_12
	b	.LBB102_11
.LBB102_11:                             //   in Loop: Header=BB102_10 Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #1
	str	w8, [sp, #8]
	ldur	d0, [x29, #-8]
	fadd	d0, d0, d0
	stur	d0, [x29, #-8]
	b	.LBB102_10
.LBB102_12:
	b	.LBB102_13
.LBB102_13:
	b	.LBB102_14
.LBB102_14:
	ldr	w8, [sp, #8]
	ldr	x16, [sp, #16]
	str	w8, [x16]
	ldr	w8, [sp, #12]
	cbz	w8, .LBB102_16
	b	.LBB102_15
.LBB102_15:
	ldur	d0, [x29, #-8]
	fneg	d0, d0
	stur	d0, [x29, #-8]
	b	.LBB102_16
.LBB102_16:
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
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
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
	ldrb	w8, [sp]
	tbz	w8, #0, .LBB103_4
	b	.LBB103_3
.LBB103_3:                              //   in Loop: Header=BB103_1 Depth=1
	ldr	x16, [sp, #16]
	ldr	x8, [sp, #8]
	add	x8, x8, x16
	str	x8, [sp, #8]
	b	.LBB103_4
.LBB103_4:                              //   in Loop: Header=BB103_1 Depth=1
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
	b.hs	.LBB104_4
	b	.LBB104_2
.LBB104_2:                              //   in Loop: Header=BB104_1 Depth=1
	ldr	w8, [sp, #20]
	mov	w16, wzr
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	cbz	w8, .LBB104_4
	b	.LBB104_3
.LBB104_3:                              //   in Loop: Header=BB104_1 Depth=1
	ldur	w8, [x29, #-12]
	mvn	w8, w8
	lsr	w8, w8, #31
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB104_4
.LBB104_4:                              //   in Loop: Header=BB104_1 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB104_6
	b	.LBB104_5
.LBB104_5:                              //   in Loop: Header=BB104_1 Depth=1
	ldur	w8, [x29, #-12]
	lsl	w8, w8, #1
	stur	w8, [x29, #-12]
	ldr	w8, [sp, #20]
	lsl	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB104_1
.LBB104_6:
	b	.LBB104_7
.LBB104_7:                              // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	cbz	w8, .LBB104_11
	b	.LBB104_8
.LBB104_8:                              //   in Loop: Header=BB104_7 Depth=1
	ldur	w8, [x29, #-8]
	ldur	w16, [x29, #-12]
	subs	w8, w8, w16
	b.lo	.LBB104_10
	b	.LBB104_9
.LBB104_9:                              //   in Loop: Header=BB104_7 Depth=1
	ldur	w16, [x29, #-12]
	ldur	w8, [x29, #-8]
	subs	w8, w8, w16
	stur	w8, [x29, #-8]
	ldr	w16, [sp, #20]
	ldr	w8, [sp, #16]
	orr	w8, w8, w16
	str	w8, [sp, #16]
	b	.LBB104_10
.LBB104_10:                             //   in Loop: Header=BB104_7 Depth=1
	ldr	w8, [sp, #20]
	lsr	w8, w8, #1
	str	w8, [sp, #20]
	ldur	w8, [x29, #-12]
	lsr	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB104_7
.LBB104_11:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB104_13
	b	.LBB104_12
.LBB104_12:
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-4]
	b	.LBB104_14
.LBB104_13:
	ldr	w8, [sp, #16]
	stur	w8, [x29, #-4]
	b	.LBB104_14
.LBB104_14:
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
	ldurb	w8, [x29, #-5]
	tbz	w8, #31, .LBB105_2
	b	.LBB105_1
.LBB105_1:
	ldurb	w8, [x29, #-5]
	mvn	w8, w8
	sturb	w8, [x29, #-5]
	b	.LBB105_2
.LBB105_2:
	ldurb	w8, [x29, #-5]
	cbnz	w8, .LBB105_4
	b	.LBB105_3
.LBB105_3:
	mov	w8, #7                          // =0x7
	stur	w8, [x29, #-4]
	b	.LBB105_5
.LBB105_4:
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
	ldr	x8, [sp, #16]
	tbz	x8, #63, .LBB106_2
	b	.LBB106_1
.LBB106_1:
	ldr	x8, [sp, #16]
	mvn	x8, x8
	str	x8, [sp, #16]
	b	.LBB106_2
.LBB106_2:
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB106_4
	b	.LBB106_3
.LBB106_3:
	mov	w8, #63                         // =0x3f
	stur	w8, [x29, #-4]
	b	.LBB106_5
.LBB106_4:
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
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	mov	w8, wzr
	str	w8, [sp, #4]
	b	.LBB107_1
.LBB107_1:                              // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	cbz	w8, .LBB107_5
	b	.LBB107_2
.LBB107_2:                              //   in Loop: Header=BB107_1 Depth=1
	ldurb	w8, [x29, #-4]
	tbz	w8, #0, .LBB107_4
	b	.LBB107_3
.LBB107_3:                              //   in Loop: Header=BB107_1 Depth=1
	ldr	w16, [sp, #8]
	ldr	w8, [sp, #4]
	add	w8, w8, w16
	str	w8, [sp, #4]
	b	.LBB107_4
.LBB107_4:                              //   in Loop: Header=BB107_1 Depth=1
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
	b.lo	.LBB108_2
	b	.LBB108_1
.LBB108_1:
	ldr	x8, [sp, #8]
	ldr	x16, [sp]
	ldur	w17, [x29, #-20]
                                        // kill: def $x17 killed $w17
	add	x16, x16, x17
	subs	x8, x8, x16
	b.ls	.LBB108_10
	b	.LBB108_2
.LBB108_2:
	mov	w8, wzr
	str	w8, [sp, #24]
	b	.LBB108_3
.LBB108_3:                              // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	ldr	w16, [sp, #20]
	subs	w8, w8, w16
	b.hs	.LBB108_6
	b	.LBB108_4
.LBB108_4:                              //   in Loop: Header=BB108_3 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w16, [sp, #24]
	mov	w17, w16
	ldr	x8, [x8, x17, lsl #3]
	ldur	x16, [x29, #-8]
	str	x8, [x16, x17, lsl #3]
	b	.LBB108_5
.LBB108_5:                              //   in Loop: Header=BB108_3 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB108_3
.LBB108_6:
	b	.LBB108_7
.LBB108_7:                              // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldr	w16, [sp, #16]
	subs	w8, w8, w16
	b.ls	.LBB108_9
	b	.LBB108_8
.LBB108_8:                              //   in Loop: Header=BB108_7 Depth=1
	ldr	x8, [sp]
	ldr	w16, [sp, #16]
	mov	w17, w16
	ldrb	w8, [x8, x17]
	ldr	x16, [sp, #8]
	strb	w8, [x16, x17]
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB108_7
.LBB108_9:
	b	.LBB108_14
.LBB108_10:
	b	.LBB108_11
.LBB108_11:                             // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	subs	w16, w8, #1
	stur	w16, [x29, #-20]
	cbz	w8, .LBB108_13
	b	.LBB108_12
.LBB108_12:                             //   in Loop: Header=BB108_11 Depth=1
	ldr	x8, [sp]
	ldur	w16, [x29, #-20]
	mov	w17, w16
	ldrb	w8, [x8, x17]
	ldr	x16, [sp, #8]
	strb	w8, [x16, x17]
	b	.LBB108_11
.LBB108_13:
	b	.LBB108_14
.LBB108_14:
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
	b.lo	.LBB109_2
	b	.LBB109_1
.LBB109_1:
	ldr	x8, [sp, #8]
	ldr	x16, [sp]
	ldur	w17, [x29, #-20]
                                        // kill: def $x17 killed $w17
	add	x16, x16, x17
	subs	x8, x8, x16
	b.ls	.LBB109_9
	b	.LBB109_2
.LBB109_2:
	mov	w8, wzr
	str	w8, [sp, #24]
	b	.LBB109_3
.LBB109_3:                              // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	ldr	w16, [sp, #20]
	subs	w8, w8, w16
	b.hs	.LBB109_6
	b	.LBB109_4
.LBB109_4:                              //   in Loop: Header=BB109_3 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w16, [sp, #24]
	mov	w17, w16
	ldrh	w8, [x8, x17, lsl #1]
	ldur	x16, [x29, #-8]
	strh	w8, [x16, x17, lsl #1]
	b	.LBB109_5
.LBB109_5:                              //   in Loop: Header=BB109_3 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB109_3
.LBB109_6:
	ldurb	w8, [x29, #-20]
	tbz	w8, #0, .LBB109_8
	b	.LBB109_7
.LBB109_7:
	ldr	x8, [sp]
	ldur	w16, [x29, #-20]
	subs	w16, w16, #1
	mov	w16, w16
	mov	w17, w16
	ldrb	w8, [x8, x17]
	ldr	x16, [sp, #8]
	strb	w8, [x16, x17]
	b	.LBB109_8
.LBB109_8:
	b	.LBB109_13
.LBB109_9:
	b	.LBB109_10
.LBB109_10:                             // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	subs	w16, w8, #1
	stur	w16, [x29, #-20]
	cbz	w8, .LBB109_12
	b	.LBB109_11
.LBB109_11:                             //   in Loop: Header=BB109_10 Depth=1
	ldr	x8, [sp]
	ldur	w16, [x29, #-20]
	mov	w17, w16
	ldrb	w8, [x8, x17]
	ldr	x16, [sp, #8]
	strb	w8, [x16, x17]
	b	.LBB109_10
.LBB109_12:
	b	.LBB109_13
.LBB109_13:
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
	b.lo	.LBB110_2
	b	.LBB110_1
.LBB110_1:
	ldr	x8, [sp, #8]
	ldr	x16, [sp]
	ldur	w17, [x29, #-20]
                                        // kill: def $x17 killed $w17
	add	x16, x16, x17
	subs	x8, x8, x16
	b.ls	.LBB110_10
	b	.LBB110_2
.LBB110_2:
	mov	w8, wzr
	str	w8, [sp, #24]
	b	.LBB110_3
.LBB110_3:                              // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	ldr	w16, [sp, #20]
	subs	w8, w8, w16
	b.hs	.LBB110_6
	b	.LBB110_4
.LBB110_4:                              //   in Loop: Header=BB110_3 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w16, [sp, #24]
	mov	w17, w16
	ldr	w8, [x8, x17, lsl #2]
	ldur	x16, [x29, #-8]
	str	w8, [x16, x17, lsl #2]
	b	.LBB110_5
.LBB110_5:                              //   in Loop: Header=BB110_3 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB110_3
.LBB110_6:
	b	.LBB110_7
.LBB110_7:                              // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldr	w16, [sp, #16]
	subs	w8, w8, w16
	b.ls	.LBB110_9
	b	.LBB110_8
.LBB110_8:                              //   in Loop: Header=BB110_7 Depth=1
	ldr	x8, [sp]
	ldr	w16, [sp, #16]
	mov	w17, w16
	ldrb	w8, [x8, x17]
	ldr	x16, [sp, #8]
	strb	w8, [x16, x17]
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB110_7
.LBB110_9:
	b	.LBB110_14
.LBB110_10:
	b	.LBB110_11
.LBB110_11:                             // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	subs	w16, w8, #1
	stur	w16, [x29, #-20]
	cbz	w8, .LBB110_13
	b	.LBB110_12
.LBB110_12:                             //   in Loop: Header=BB110_11 Depth=1
	ldr	x8, [sp]
	ldur	w16, [x29, #-20]
	mov	w17, w16
	ldrb	w8, [x8, x17]
	ldr	x16, [sp, #8]
	strb	w8, [x16, x17]
	b	.LBB110_11
.LBB110_13:
	b	.LBB110_14
.LBB110_14:
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
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
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
	stur	w0, [x29, #-4]
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
	stur	w0, [x29, #-4]
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
	str	x0, [sp, #8]
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
	str	x0, [sp, #8]
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
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
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
	sturh	w0, [x29, #-2]
	mov	w8, wzr
	str	w8, [sp, #8]
	b	.LBB117_1
.LBB117_1:                              // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #15
	b.gt	.LBB117_6
	b	.LBB117_2
.LBB117_2:                              //   in Loop: Header=BB117_1 Depth=1
	ldurh	w8, [x29, #-2]
	ldr	w17, [sp, #8]
	mov	w16, #15                        // =0xf
	subs	w16, w16, w17
	lsr	w8, w8, w16
	tbz	w8, #0, .LBB117_4
	b	.LBB117_3
.LBB117_3:
	b	.LBB117_6
.LBB117_4:                              //   in Loop: Header=BB117_1 Depth=1
	b	.LBB117_5
.LBB117_5:                              //   in Loop: Header=BB117_1 Depth=1
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
	sturh	w0, [x29, #-2]
	mov	w8, wzr
	str	w8, [sp, #8]
	b	.LBB118_1
.LBB118_1:                              // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #15
	b.gt	.LBB118_6
	b	.LBB118_2
.LBB118_2:                              //   in Loop: Header=BB118_1 Depth=1
	ldurh	w8, [x29, #-2]
	ldr	w16, [sp, #8]
	mov	w0, w16
	mov	w16, w0
	lsr	w8, w8, w16
	tbz	w8, #0, .LBB118_4
	b	.LBB118_3
.LBB118_3:
	b	.LBB118_6
.LBB118_4:                              //   in Loop: Header=BB118_1 Depth=1
	b	.LBB118_5
.LBB118_5:                              //   in Loop: Header=BB118_1 Depth=1
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
	ldr	s0, [sp, #4]
	mov	w8, #1191182336                 // =0x47000000
	fmov	s1, w8
	fcmp	s0, s1
	b.lt	.LBB119_2
	b	.LBB119_1
.LBB119_1:
	ldr	s0, [sp, #4]
	mov	w8, #-956301312                 // =0xc7000000
	fmov	s1, w8
	fadd	s0, s0, s1
	fcvtzs	x8, s0
	add	x8, x8, #8, lsl #12             // =32768
	str	x8, [sp, #8]
	b	.LBB119_3
.LBB119_2:
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
	sturh	w0, [x29, #-2]
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
	ldurh	w8, [x29, #-2]
	ldr	w16, [sp, #8]
	mov	w0, w16
	mov	w16, w0
	lsr	w8, w8, w16
	tbz	w8, #0, .LBB120_4
	b	.LBB120_3
.LBB120_3:                              //   in Loop: Header=BB120_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB120_4
.LBB120_4:                              //   in Loop: Header=BB120_1 Depth=1
	b	.LBB120_5
.LBB120_5:                              //   in Loop: Header=BB120_1 Depth=1
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
	sturh	w0, [x29, #-2]
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
	ldurh	w8, [x29, #-2]
	ldr	w16, [sp, #8]
	mov	w0, w16
	mov	w16, w0
	lsr	w8, w8, w16
	tbz	w8, #0, .LBB121_4
	b	.LBB121_3
.LBB121_3:                              //   in Loop: Header=BB121_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB121_4
.LBB121_4:                              //   in Loop: Header=BB121_1 Depth=1
	b	.LBB121_5
.LBB121_5:                              //   in Loop: Header=BB121_1 Depth=1
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
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	mov	w8, wzr
	str	w8, [sp, #4]
	b	.LBB122_1
.LBB122_1:                              // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	cbz	w8, .LBB122_5
	b	.LBB122_2
.LBB122_2:                              //   in Loop: Header=BB122_1 Depth=1
	ldurb	w8, [x29, #-4]
	tbz	w8, #0, .LBB122_4
	b	.LBB122_3
.LBB122_3:                              //   in Loop: Header=BB122_1 Depth=1
	ldr	w16, [sp, #8]
	ldr	w8, [sp, #4]
	add	w8, w8, w16
	str	w8, [sp, #4]
	b	.LBB122_4
.LBB122_4:                              //   in Loop: Header=BB122_1 Depth=1
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
	mov	w8, wzr
	str	w8, [sp]
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB123_2
	b	.LBB123_1
.LBB123_1:
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB123_8
.LBB123_2:
	b	.LBB123_3
.LBB123_3:                              // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	cbz	w8, .LBB123_7
	b	.LBB123_4
.LBB123_4:                              //   in Loop: Header=BB123_3 Depth=1
	ldrb	w8, [sp, #4]
	tbz	w8, #0, .LBB123_6
	b	.LBB123_5
.LBB123_5:                              //   in Loop: Header=BB123_3 Depth=1
	ldr	w16, [sp, #8]
	ldr	w8, [sp]
	add	w8, w8, w16
	str	w8, [sp]
	b	.LBB123_6
.LBB123_6:                              //   in Loop: Header=BB123_3 Depth=1
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
	b.hs	.LBB124_4
	b	.LBB124_2
.LBB124_2:                              //   in Loop: Header=BB124_1 Depth=1
	ldr	w8, [sp, #12]
	mov	w16, wzr
	str	w16, [sp, #4]                   // 4-byte Folded Spill
	cbz	w8, .LBB124_4
	b	.LBB124_3
.LBB124_3:                              //   in Loop: Header=BB124_1 Depth=1
	ldur	w8, [x29, #-12]
	mvn	w8, w8
	lsr	w8, w8, #31
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB124_4
.LBB124_4:                              //   in Loop: Header=BB124_1 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB124_6
	b	.LBB124_5
.LBB124_5:                              //   in Loop: Header=BB124_1 Depth=1
	ldur	w8, [x29, #-12]
	lsl	w8, w8, #1
	stur	w8, [x29, #-12]
	ldr	w8, [sp, #12]
	lsl	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB124_1
.LBB124_6:
	b	.LBB124_7
.LBB124_7:                              // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	cbz	w8, .LBB124_11
	b	.LBB124_8
.LBB124_8:                              //   in Loop: Header=BB124_7 Depth=1
	ldur	w8, [x29, #-8]
	ldur	w16, [x29, #-12]
	subs	w8, w8, w16
	b.lo	.LBB124_10
	b	.LBB124_9
.LBB124_9:                              //   in Loop: Header=BB124_7 Depth=1
	ldur	w16, [x29, #-12]
	ldur	w8, [x29, #-8]
	subs	w8, w8, w16
	stur	w8, [x29, #-8]
	ldr	w16, [sp, #12]
	ldr	w8, [sp, #8]
	orr	w8, w8, w16
	str	w8, [sp, #8]
	b	.LBB124_10
.LBB124_10:                             //   in Loop: Header=BB124_7 Depth=1
	ldr	w8, [sp, #12]
	lsr	w8, w8, #1
	str	w8, [sp, #12]
	ldur	w8, [x29, #-12]
	lsr	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB124_7
.LBB124_11:
	ldr	w8, [sp, #16]
	cbz	w8, .LBB124_13
	b	.LBB124_12
.LBB124_12:
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-4]
	b	.LBB124_14
.LBB124_13:
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-4]
	b	.LBB124_14
.LBB124_14:
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
	ldr	s0, [sp, #8]
	ldr	s1, [sp, #4]
	fcmp	s0, s1
	b.pl	.LBB125_2
	b	.LBB125_1
.LBB125_1:
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
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB125_5
.LBB125_4:
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
	ldr	d0, [sp, #16]
	ldr	d1, [sp, #8]
	fcmp	d0, d1
	b.pl	.LBB126_2
	b	.LBB126_1
.LBB126_1:
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
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-4]
	b	.LBB126_5
.LBB126_4:
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
	str	x0, [sp, #8]
	str	x1, [sp]
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
	str	x0, [sp, #8]
	str	x1, [sp]
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
	mov	w8, wzr
	str	w8, [sp, #16]
	str	w8, [sp, #12]
	ldur	w8, [x29, #-8]
	tbz	w8, #31, .LBB129_2
	b	.LBB129_1
.LBB129_1:
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
	cbz	w8, .LBB129_5
	b	.LBB129_4
.LBB129_4:                              //   in Loop: Header=BB129_3 Depth=1
	ldurb	w8, [x29, #-9]
	subs	w8, w8, #32
	cset	w8, lo
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB129_5
.LBB129_5:                              //   in Loop: Header=BB129_3 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB129_10
	b	.LBB129_6
.LBB129_6:                              //   in Loop: Header=BB129_3 Depth=1
	ldurb	w8, [x29, #-8]
	tbz	w8, #0, .LBB129_8
	b	.LBB129_7
.LBB129_7:                              //   in Loop: Header=BB129_3 Depth=1
	ldur	w16, [x29, #-4]
	ldr	w8, [sp, #12]
	add	w8, w8, w16
	str	w8, [sp, #12]
	b	.LBB129_8
.LBB129_8:                              //   in Loop: Header=BB129_3 Depth=1
	ldur	w8, [x29, #-4]
	lsl	w8, w8, #1
	stur	w8, [x29, #-4]
	ldur	w8, [x29, #-8]
	asr	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB129_9
.LBB129_9:                              //   in Loop: Header=BB129_3 Depth=1
	ldurb	w8, [x29, #-9]
	add	w8, w8, #1
	sturb	w8, [x29, #-9]
	b	.LBB129_3
.LBB129_10:
	ldr	w8, [sp, #16]
	cbz	w8, .LBB129_12
	b	.LBB129_11
.LBB129_11:
	ldr	w16, [sp, #12]
	mov	w8, wzr
	subs	w0, w8, w16
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB129_13
.LBB129_12:
	ldr	w0, [sp, #12]
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB129_13
.LBB129_13:
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
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	mov	w8, wzr
	str	w8, [sp, #12]
	ldur	x8, [x29, #-8]
	tbz	x8, #63, .LBB130_2
	b	.LBB130_1
.LBB130_1:
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
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	mov	w8, wzr
	str	w8, [sp, #12]
	ldur	x8, [x29, #-8]
	tbz	x8, #63, .LBB131_2
	b	.LBB131_1
.LBB131_1:
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
	b.ge	.LBB132_4
	b	.LBB132_2
.LBB132_2:                              //   in Loop: Header=BB132_1 Depth=1
	ldurh	w8, [x29, #-14]
	mov	w16, wzr
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	cbz	w8, .LBB132_4
	b	.LBB132_3
.LBB132_3:                              //   in Loop: Header=BB132_1 Depth=1
	ldurh	w8, [x29, #-6]
	ands	w8, w8, #0x8000
	cset	w8, eq
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB132_4
.LBB132_4:                              //   in Loop: Header=BB132_1 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB132_6
	b	.LBB132_5
.LBB132_5:                              //   in Loop: Header=BB132_1 Depth=1
	ldurh	w8, [x29, #-6]
	lsl	w8, w8, #1
	sturh	w8, [x29, #-6]
	ldurh	w8, [x29, #-14]
	lsl	w8, w8, #1
	sturh	w8, [x29, #-14]
	b	.LBB132_1
.LBB132_6:
	b	.LBB132_7
.LBB132_7:                              // =>This Inner Loop Header: Depth=1
	ldurh	w8, [x29, #-14]
	cbz	w8, .LBB132_11
	b	.LBB132_8
.LBB132_8:                              //   in Loop: Header=BB132_7 Depth=1
	ldurh	w8, [x29, #-4]
	ldurh	w16, [x29, #-6]
	subs	w8, w8, w16
	b.lt	.LBB132_10
	b	.LBB132_9
.LBB132_9:                              //   in Loop: Header=BB132_7 Depth=1
	ldurh	w16, [x29, #-6]
	ldurh	w8, [x29, #-4]
	subs	w8, w8, w16
	sturh	w8, [x29, #-4]
	ldurh	w16, [x29, #-14]
	ldrh	w8, [sp, #16]
	orr	w8, w8, w16
	strh	w8, [sp, #16]
	b	.LBB132_10
.LBB132_10:                             //   in Loop: Header=BB132_7 Depth=1
	ldurh	w8, [x29, #-14]
	lsr	w8, w8, #1
	sturh	w8, [x29, #-14]
	ldurh	w8, [x29, #-6]
	lsr	w8, w8, #1
	sturh	w8, [x29, #-6]
	b	.LBB132_7
.LBB132_11:
	ldur	w8, [x29, #-12]
	cbz	w8, .LBB132_13
	b	.LBB132_12
.LBB132_12:
	ldurh	w8, [x29, #-4]
	sturh	w8, [x29, #-2]
	b	.LBB132_14
.LBB132_13:
	ldrh	w8, [sp, #16]
	sturh	w8, [x29, #-2]
	b	.LBB132_14
.LBB132_14:
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
	b.hs	.LBB133_4
	b	.LBB133_2
.LBB133_2:                              //   in Loop: Header=BB133_1 Depth=1
	ldr	x8, [sp, #24]
	mov	w16, wzr
	str	w16, [sp, #12]                  // 4-byte Folded Spill
	cbz	x8, .LBB133_4
	b	.LBB133_3
.LBB133_3:                              //   in Loop: Header=BB133_1 Depth=1
	ldurb	w8, [x29, #-21]
	ands	w8, w8, #0x80
	cset	w8, eq
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB133_4
.LBB133_4:                              //   in Loop: Header=BB133_1 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB133_6
	b	.LBB133_5
.LBB133_5:                              //   in Loop: Header=BB133_1 Depth=1
	ldur	x8, [x29, #-24]
	lsl	x8, x8, #1
	stur	x8, [x29, #-24]
	ldr	x8, [sp, #24]
	lsl	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB133_1
.LBB133_6:
	b	.LBB133_7
.LBB133_7:                              // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	cbz	x8, .LBB133_11
	b	.LBB133_8
.LBB133_8:                              //   in Loop: Header=BB133_7 Depth=1
	ldur	x8, [x29, #-16]
	ldur	x16, [x29, #-24]
	subs	x8, x8, x16
	b.lo	.LBB133_10
	b	.LBB133_9
.LBB133_9:                              //   in Loop: Header=BB133_7 Depth=1
	ldur	x16, [x29, #-24]
	ldur	x8, [x29, #-16]
	subs	x8, x8, x16
	stur	x8, [x29, #-16]
	ldr	x16, [sp, #24]
	ldr	x8, [sp, #16]
	orr	x8, x8, x16
	str	x8, [sp, #16]
	b	.LBB133_10
.LBB133_10:                             //   in Loop: Header=BB133_7 Depth=1
	ldr	x8, [sp, #24]
	lsr	x8, x8, #1
	str	x8, [sp, #24]
	ldur	x8, [x29, #-24]
	lsr	x8, x8, #1
	stur	x8, [x29, #-24]
	b	.LBB133_7
.LBB133_11:
	ldur	w8, [x29, #-28]
	cbz	w8, .LBB133_13
	b	.LBB133_12
.LBB133_12:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB133_14
.LBB133_13:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB133_14
.LBB133_14:
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
	mov	w8, #32                         // =0x20
	str	w8, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldurb	w8, [x29, #-20]
	tbz	w8, #5, .LBB134_2
	b	.LBB134_1
.LBB134_1:
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
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB134_6
.LBB134_4:
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
	ldur	x8, [x29, #-32]
	ldur	x16, [x29, #-24]
	stur	x16, [x29, #-8]
	stur	x8, [x29, #-16]
	b	.LBB135_6
.LBB135_4:
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
	mov	w8, #32                         // =0x20
	str	w8, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldurb	w8, [x29, #-20]
	tbz	w8, #5, .LBB136_2
	b	.LBB136_1
.LBB136_1:
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
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB136_6
.LBB136_4:
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
	ldur	x8, [x29, #-32]
	ldur	x16, [x29, #-24]
	stur	x16, [x29, #-8]
	stur	x8, [x29, #-16]
	b	.LBB137_6
.LBB137_4:
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
	str	x0, [sp, #8]
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
	stur	w0, [x29, #-4]
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
	stur	w0, [x29, #-4]
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
	stur	x1, [x29, #-8]
	stur	x0, [x29, #-16]
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
	mov	w8, #2                          // =0x2
	stur	w8, [x29, #-4]
	b	.LBB142_9
.LBB142_8:
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
	str	x0, [sp, #8]
	str	x1, [sp]
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
	mov	w8, #2                          // =0x2
	stur	w8, [x29, #-4]
	b	.LBB144_9
.LBB144_8:
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
	stur	w0, [x29, #-4]
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
	stur	x1, [x29, #-8]
	stur	x0, [x29, #-16]
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
	ldr	x8, [sp, #16]
	ldr	x16, [sp, #24]
	str	x16, [sp, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB147_4
	b	.LBB147_1
.LBB147_1:
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB147_3
	b	.LBB147_2
.LBB147_2:
	mov	w8, wzr
	stur	w8, [x29, #-4]
	b	.LBB147_5
.LBB147_3:
	ldr	x8, [sp, #8]
	rbit	x8, x8
	clz	x8, x8
                                        // kill: def $w8 killed $w8 killed $x8
	add	w8, w8, #65
	stur	w8, [x29, #-4]
	b	.LBB147_5
.LBB147_4:
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
	mov	w8, #32                         // =0x20
	str	w8, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldurb	w8, [x29, #-20]
	tbz	w8, #5, .LBB148_2
	b	.LBB148_1
.LBB148_1:
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
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB148_6
.LBB148_4:
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
	ldur	x8, [x29, #-32]
	ldur	x16, [x29, #-24]
	stur	x16, [x29, #-8]
	stur	x8, [x29, #-16]
	b	.LBB149_6
.LBB149_4:
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
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
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
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
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
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
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
	stur	x1, [x29, #-8]
	stur	x0, [x29, #-16]
	stur	x3, [x29, #-24]
	stur	x2, [x29, #-32]
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
	str	x0, [sp, #8]
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
	str	x1, [sp, #8]
	str	x0, [sp]
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
	stur	x0, [x29, #-8]
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
	stur	x1, [x29, #-8]
	stur	x0, [x29, #-16]
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
	stur	w0, [x29, #-4]
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
	stur	x0, [x29, #-8]
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
	stur	w0, [x29, #-4]
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
	stur	x1, [x29, #-8]
	stur	x0, [x29, #-16]
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
	ldur	w8, [x29, #-12]
	lsr	w8, w8, #31
	str	w8, [sp, #16]
	mov	x8, #4607182418800017408        // =0x3ff0000000000000
	str	x8, [sp, #8]
	b	.LBB162_1
.LBB162_1:                              // =>This Inner Loop Header: Depth=1
	ldurb	w8, [x29, #-12]
	tbz	w8, #0, .LBB162_3
	b	.LBB162_2
.LBB162_2:                              //   in Loop: Header=BB162_1 Depth=1
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
	b	.LBB162_6
.LBB162_5:                              //   in Loop: Header=BB162_1 Depth=1
	ldur	d0, [x29, #-8]
	fmul	d0, d0, d0
	stur	d0, [x29, #-8]
	b	.LBB162_1
.LBB162_6:
	ldr	w8, [sp, #16]
	cbz	w8, .LBB162_8
	b	.LBB162_7
.LBB162_7:
	ldr	d1, [sp, #8]
	fmov	d0, #1.00000000
	fdiv	d0, d0, d1
	str	d0, [sp]                        // 8-byte Folded Spill
	b	.LBB162_9
.LBB162_8:
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
	ldur	w8, [x29, #-8]
	lsr	w8, w8, #31
	stur	w8, [x29, #-12]
	mov	w8, #1065353216                 // =0x3f800000
	str	w8, [sp, #16]
	b	.LBB163_1
.LBB163_1:                              // =>This Inner Loop Header: Depth=1
	ldurb	w8, [x29, #-8]
	tbz	w8, #0, .LBB163_3
	b	.LBB163_2
.LBB163_2:                              //   in Loop: Header=BB163_1 Depth=1
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
	b	.LBB163_6
.LBB163_5:                              //   in Loop: Header=BB163_1 Depth=1
	ldur	s0, [x29, #-4]
	fmul	s0, s0, s0
	stur	s0, [x29, #-4]
	b	.LBB163_1
.LBB163_6:
	ldur	w8, [x29, #-12]
	cbz	w8, .LBB163_8
	b	.LBB163_7
.LBB163_7:
	ldr	s1, [sp, #16]
	fmov	s0, #1.00000000
	fdiv	s0, s0, s1
	str	s0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB163_9
.LBB163_8:
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
	mov	w8, #2                          // =0x2
	stur	w8, [x29, #-4]
	b	.LBB164_9
.LBB164_8:
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
	str	x0, [sp, #8]
	str	x1, [sp]
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
	mov	w8, #2                          // =0x2
	stur	w8, [x29, #-4]
	b	.LBB166_9
.LBB166_8:
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
.Lfunc_end166:
	.size	__llvm_slsblr_thunk_x8, .Lfunc_end166-__llvm_slsblr_thunk_x8
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
	.addrsig_sym l64a.s
	.addrsig_sym digits
	.addrsig_sym seed
