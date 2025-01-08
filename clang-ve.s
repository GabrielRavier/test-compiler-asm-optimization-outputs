	.text
	.file	"mini-libc.c"
	.globl	make_ti                         # -- Begin function make_ti
	.p2align	4
	.type	make_ti,@function
make_ti:                                # @make_ti
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB0_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB0_2:
	lea %s2, __llvm_gcov_ctr@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s0, 24(, %s11)
	st %s1, 16(, %s11)
	lea %s0, .L__profc_make_ti@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_make_ti@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 24(, %s11)
	st %s0, 8(, %s11)
	ld %s0, 16(, %s11)
	st %s0, (, %s11)
	ld %s0, (, %s11)
	ld %s1, 8(, %s11)
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end0:
	.size	make_ti, .Lfunc_end0-make_ti
                                        # -- End function
	.globl	make_tu                         # -- Begin function make_tu
	.p2align	4
	.type	make_tu,@function
make_tu:                                # @make_tu
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB1_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB1_2:
	lea %s2, __llvm_gcov_ctr.1@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.1@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s0, 24(, %s11)
	st %s1, 16(, %s11)
	lea %s0, .L__profc_make_tu@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_make_tu@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 24(, %s11)
	st %s0, 8(, %s11)
	ld %s0, 16(, %s11)
	st %s0, (, %s11)
	ld %s0, (, %s11)
	ld %s1, 8(, %s11)
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end1:
	.size	make_tu, .Lfunc_end1-make_tu
                                        # -- End function
	.globl	memmove                         # -- Begin function memmove
	.p2align	4
	.type	memmove,@function
memmove:                                # @memmove
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB2_15
# %bb.14:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB2_15:
	st %s0, 40(, %s11)
	st %s1, 32(, %s11)
	st %s2, 24(, %s11)
	lea %s0, .L__profc_memmove@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memmove@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 40(, %s11)
	st %s0, 16(, %s11)
	ld %s0, 32(, %s11)
	st %s0, 8(, %s11)
	ld %s1, 8(, %s11)
	ld %s0, 16(, %s11)
	cmpu.l %s0, %s0, %s1
	brge.l 0, %s0, .LBB2_6
	br.l .LBB2_1
.LBB2_1:
	lea %s0, __llvm_gcov_ctr.2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_memmove@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memmove@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s1, 24(, %s11)
	ld %s0, 8(, %s11)
	adds.l %s0, %s0, %s1
	st %s0, 8(, %s11)
	ld %s1, 24(, %s11)
	ld %s0, 16(, %s11)
	adds.l %s0, %s0, %s1
	st %s0, 16(, %s11)
	br.l .LBB2_2
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB2_5
	br.l .LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_2 Depth=1
	lea %s0, .L__profc_memmove@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memmove@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 8(, %s11)
	lea %s1, -1(, %s0)
	st %s1, 8(, %s11)
	ld1b.zx %s1, -1(, %s0)
	ld %s0, 16(, %s11)
	lea %s2, -1(, %s0)
	st %s2, 16(, %s11)
	st1b %s1, -1(, %s0)
	br.l .LBB2_4
.LBB2_4:                                #   in Loop: Header=BB2_2 Depth=1
	lea %s0, __llvm_gcov_ctr.2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.2@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 24(, %s11)
	lea %s0, -1(, %s0)
	st %s0, 24(, %s11)
	br.l .LBB2_2
.LBB2_5:
	br.l .LBB2_13
.LBB2_6:
	ld %s0, 8(, %s11)
	ld %s1, 16(, %s11)
	breq.l %s0, %s1, .LBB2_12
	br.l .LBB2_7
.LBB2_7:
	lea %s0, .L__profc_memmove@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memmove@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	br.l .LBB2_8
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB2_11
	br.l .LBB2_9
.LBB2_9:                                #   in Loop: Header=BB2_8 Depth=1
	lea %s0, __llvm_gcov_ctr.2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.2@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_memmove@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memmove@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 8(, %s11)
	lea %s1, 1(, %s0)
	st %s1, 8(, %s11)
	ld1b.zx %s1, (, %s0)
	ld %s0, 16(, %s11)
	lea %s2, 1(, %s0)
	st %s2, 16(, %s11)
	st1b %s1, (, %s0)
	br.l .LBB2_10
.LBB2_10:                               #   in Loop: Header=BB2_8 Depth=1
	ld %s0, 24(, %s11)
	lea %s0, -1(, %s0)
	st %s0, 24(, %s11)
	br.l .LBB2_8
.LBB2_11:
	lea %s0, __llvm_gcov_ctr.2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.2@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	br.l .LBB2_12
.LBB2_12:
	lea %s0, __llvm_gcov_ctr.2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.2@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	br.l .LBB2_13
.LBB2_13:
	ld %s0, 40(, %s11)
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end2:
	.size	memmove, .Lfunc_end2-memmove
                                        # -- End function
	.globl	memccpy                         # -- Begin function memccpy
	.p2align	4
	.type	memccpy,@function
memccpy:                                # @memccpy
# %bb.0:
	lea %s11, -80(, %s11)
	brge.l.t %s11, %s8, .LBB3_12
# %bb.11:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB3_12:
	st %s2, 16(, %s11)                      # 8-byte Folded Spill
	or %s2, 0, %s0
	ld %s0, 16(, %s11)                      # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s2, 64(, %s11)
	st %s1, 56(, %s11)
	stl %s0, 52(, %s11)
	st %s3, 40(, %s11)
	lea %s0, .L__profc_memccpy@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memccpy@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 64(, %s11)
	st %s0, 32(, %s11)
	ld %s0, 56(, %s11)
	st %s0, 24(, %s11)
	ld1b.zx %s0, 52(, %s11)
	stl %s0, 52(, %s11)
	br.l .LBB3_1
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	ld %s0, 40(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	breq.l 0, %s0, .LBB3_4
	br.l .LBB3_2
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
	lea %s0, __llvm_gcov_ctr.3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.3@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_memccpy@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memccpy@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 24(, %s11)
	ld1b.zx %s0, (, %s0)
	ld %s1, 32(, %s11)
	st1b %s0, (, %s1)
	ldl.sx %s1, 52(, %s11)
	cmps.w.sx %s3, %s0, %s1
	or %s2, 0, (0)1
	cmov.w.ne %s2, (63)0, %s3
                                        # kill: def $sw2 killed $sw2 killed $sx2
	stl %s2, 8(, %s11)                      # 4-byte Folded Spill
	stl %s2, 12(, %s11)                     # 4-byte Folded Spill
	breq.w %s0, %s1, .LBB3_4
	br.l .LBB3_3
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	ldl.sx %s0, 8(, %s11)                   # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.3@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.3@hi(, %s1)
	ld %s2, 8(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 8(, %s1)
	lea %s1, .L__profc_memccpy@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_memccpy@hi(, %s1)
	ld %s2, 24(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 24(, %s1)
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB3_4
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	ldl.sx %s1, 12(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB3_7
	br.l .LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
	lea %s0, .L__profc_memccpy@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memccpy@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	br.l .LBB3_6
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	lea %s0, __llvm_gcov_ctr.3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.3@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 40(, %s11)
	lea %s0, -1(, %s0)
	st %s0, 40(, %s11)
	ld %s0, 24(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 24(, %s11)
	ld %s0, 32(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 32(, %s11)
	br.l .LBB3_1
.LBB3_7:
	ld %s0, 40(, %s11)
	breq.l 0, %s0, .LBB3_9
	br.l .LBB3_8
.LBB3_8:
	lea %s0, __llvm_gcov_ctr.3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.3@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_memccpy@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memccpy@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 32(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 72(, %s11)
	br.l .LBB3_10
.LBB3_9:
	lea %s0, __llvm_gcov_ctr.3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.3@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	or %s0, 0, (0)1
	st %s0, 72(, %s11)
	br.l .LBB3_10
.LBB3_10:
	ld %s0, 72(, %s11)
	lea %s11, 80(, %s11)
	b.l.t (, %s10)
.Lfunc_end3:
	.size	memccpy, .Lfunc_end3-memccpy
                                        # -- End function
	.globl	memchr                          # -- Begin function memchr
	.p2align	4
	.type	memchr,@function
memchr:                                 # @memchr
# %bb.0:
	adds.l %s11, -64, %s11
	brge.l.t %s11, %s8, .LBB4_12
# %bb.11:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB4_12:
	st %s1, 24(, %s11)                      # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 24(, %s11)                      # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s1, 56(, %s11)
	stl %s0, 52(, %s11)
	st %s2, 40(, %s11)
	lea %s0, .L__profc_memchr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memchr@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 56(, %s11)
	st %s0, 32(, %s11)
	ld1b.zx %s0, 52(, %s11)
	stl %s0, 52(, %s11)
	br.l .LBB4_1
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	ld %s0, 40(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 20(, %s11)                     # 4-byte Folded Spill
	breq.l 0, %s0, .LBB4_4
	br.l .LBB4_2
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	lea %s0, __llvm_gcov_ctr.4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.4@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_memchr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memchr@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 32(, %s11)
	ld1b.zx %s0, (, %s0)
	ldl.sx %s1, 52(, %s11)
	cmps.w.sx %s3, %s0, %s1
	or %s2, 0, (0)1
	cmov.w.ne %s2, (63)0, %s3
                                        # kill: def $sw2 killed $sw2 killed $sx2
	stl %s2, 16(, %s11)                     # 4-byte Folded Spill
	stl %s2, 20(, %s11)                     # 4-byte Folded Spill
	breq.w %s0, %s1, .LBB4_4
	br.l .LBB4_3
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	ldl.sx %s0, 16(, %s11)                  # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.4@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.4@hi(, %s1)
	ld %s2, 8(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 8(, %s1)
	lea %s1, .L__profc_memchr@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_memchr@hi(, %s1)
	ld %s2, 24(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 24(, %s1)
	stl %s0, 20(, %s11)                     # 4-byte Folded Spill
	br.l .LBB4_4
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	ldl.sx %s1, 20(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB4_7
	br.l .LBB4_5
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	lea %s0, .L__profc_memchr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memchr@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	br.l .LBB4_6
.LBB4_6:                                #   in Loop: Header=BB4_1 Depth=1
	lea %s0, __llvm_gcov_ctr.4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.4@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 32(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 32(, %s11)
	ld %s0, 40(, %s11)
	lea %s0, -1(, %s0)
	st %s0, 40(, %s11)
	br.l .LBB4_1
.LBB4_7:
	ld %s0, 40(, %s11)
	breq.l 0, %s0, .LBB4_9
	br.l .LBB4_8
.LBB4_8:
	lea %s0, __llvm_gcov_ctr.4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.4@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_memchr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memchr@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 32(, %s11)
	st %s0, 8(, %s11)                       # 8-byte Folded Spill
	br.l .LBB4_10
.LBB4_9:
	lea %s0, __llvm_gcov_ctr.4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.4@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	or %s0, 0, (0)1
	st %s0, 8(, %s11)                       # 8-byte Folded Spill
	br.l .LBB4_10
.LBB4_10:
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	lea %s11, 64(, %s11)
	b.l.t (, %s10)
.Lfunc_end4:
	.size	memchr, .Lfunc_end4-memchr
                                        # -- End function
	.globl	memcmp                          # -- Begin function memcmp
	.p2align	4
	.type	memcmp,@function
memcmp:                                 # @memcmp
# %bb.0:
	adds.l %s11, -64, %s11
	brge.l.t %s11, %s8, .LBB5_12
# %bb.11:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB5_12:
	st %s0, 56(, %s11)
	st %s1, 48(, %s11)
	st %s2, 40(, %s11)
	lea %s0, .L__profc_memcmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memcmp@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 56(, %s11)
	st %s0, 32(, %s11)
	ld %s0, 48(, %s11)
	st %s0, 24(, %s11)
	br.l .LBB5_1
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	ld %s0, 40(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 20(, %s11)                     # 4-byte Folded Spill
	breq.l 0, %s0, .LBB5_4
	br.l .LBB5_2
.LBB5_2:                                #   in Loop: Header=BB5_1 Depth=1
	lea %s0, __llvm_gcov_ctr.5@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.5@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_memcmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memcmp@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 32(, %s11)
	ld1b.zx %s0, (, %s0)
	ld %s1, 24(, %s11)
	ld1b.zx %s1, (, %s1)
	cmps.w.sx %s3, %s0, %s1
	or %s2, 0, (0)1
	cmov.w.eq %s2, (63)0, %s3
                                        # kill: def $sw2 killed $sw2 killed $sx2
	stl %s2, 16(, %s11)                     # 4-byte Folded Spill
	stl %s2, 20(, %s11)                     # 4-byte Folded Spill
	brne.w %s0, %s1, .LBB5_4
	br.l .LBB5_3
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	ldl.sx %s0, 16(, %s11)                  # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.5@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.5@hi(, %s1)
	ld %s2, 8(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 8(, %s1)
	lea %s1, .L__profc_memcmp@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_memcmp@hi(, %s1)
	ld %s2, 24(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 24(, %s1)
	stl %s0, 20(, %s11)                     # 4-byte Folded Spill
	br.l .LBB5_4
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	ldl.sx %s1, 20(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB5_7
	br.l .LBB5_5
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
	lea %s0, .L__profc_memcmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memcmp@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	br.l .LBB5_6
.LBB5_6:                                #   in Loop: Header=BB5_1 Depth=1
	lea %s0, __llvm_gcov_ctr.5@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.5@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 40(, %s11)
	lea %s0, -1(, %s0)
	st %s0, 40(, %s11)
	ld %s0, 32(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 32(, %s11)
	ld %s0, 24(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 24(, %s11)
	br.l .LBB5_1
.LBB5_7:
	ld %s0, 40(, %s11)
	breq.l 0, %s0, .LBB5_9
	br.l .LBB5_8
.LBB5_8:
	lea %s0, __llvm_gcov_ctr.5@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.5@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_memcmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memcmp@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 32(, %s11)
	ld1b.zx %s0, (, %s0)
	ld %s1, 24(, %s11)
	ld1b.zx %s1, (, %s1)
	subs.w.sx %s0, %s0, %s1
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB5_10
.LBB5_9:
	lea %s0, __llvm_gcov_ctr.5@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.5@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB5_10
.LBB5_10:
	ldl.sx %s0, 12(, %s11)                  # 4-byte Folded Reload
	adds.w.sx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s11, 64(, %s11)
	b.l.t (, %s10)
.Lfunc_end5:
	.size	memcmp, .Lfunc_end5-memcmp
                                        # -- End function
	.globl	memcpy                          # -- Begin function memcpy
	.p2align	4
	.type	memcpy,@function
memcpy:                                 # @memcpy
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB6_6
# %bb.5:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB6_6:
	lea %s3, __llvm_gcov_ctr.6@lo
	and %s3, %s3, (32)0
	lea.sl %s3, __llvm_gcov_ctr.6@hi(, %s3)
	ld %s4, (, %s3)
	lea %s4, 1(, %s4)
	st %s4, (, %s3)
	st %s0, 40(, %s11)
	st %s1, 32(, %s11)
	st %s2, 24(, %s11)
	lea %s0, .L__profc_memcpy@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memcpy@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 40(, %s11)
	st %s0, 16(, %s11)
	ld %s0, 32(, %s11)
	st %s0, 8(, %s11)
	br.l .LBB6_1
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB6_4
	br.l .LBB6_2
.LBB6_2:                                #   in Loop: Header=BB6_1 Depth=1
	lea %s0, .L__profc_memcpy@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memcpy@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 8(, %s11)
	lea %s1, 1(, %s0)
	st %s1, 8(, %s11)
	ld1b.zx %s1, (, %s0)
	ld %s0, 16(, %s11)
	lea %s2, 1(, %s0)
	st %s2, 16(, %s11)
	st1b %s1, (, %s0)
	br.l .LBB6_3
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
	lea %s0, __llvm_gcov_ctr.6@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.6@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 24(, %s11)
	lea %s0, -1(, %s0)
	st %s0, 24(, %s11)
	br.l .LBB6_1
.LBB6_4:
	ld %s0, 40(, %s11)
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end6:
	.size	memcpy, .Lfunc_end6-memcpy
                                        # -- End function
	.globl	memrchr                         # -- Begin function memrchr
	.p2align	4
	.type	memrchr,@function
memrchr:                                # @memrchr
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB7_8
# %bb.7:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB7_8:
	st %s1, (, %s11)                        # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s1, 32(, %s11)
	stl %s0, 28(, %s11)
	st %s2, 16(, %s11)
	lea %s0, .L__profc_memrchr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memrchr@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 32(, %s11)
	st %s0, 8(, %s11)
	ld1b.zx %s0, 28(, %s11)
	stl %s0, 28(, %s11)
	br.l .LBB7_1
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	ld %s0, 16(, %s11)
	lea %s1, -1(, %s0)
	st %s1, 16(, %s11)
	breq.l 0, %s0, .LBB7_5
	br.l .LBB7_2
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
	lea %s0, .L__profc_memrchr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memrchr@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 8(, %s11)
	ld %s1, 16(, %s11)
	ld1b.zx %s0, (%s1, %s0)
	ldl.sx %s1, 28(, %s11)
	brne.w %s0, %s1, .LBB7_4
	br.l .LBB7_3
.LBB7_3:
	lea %s0, __llvm_gcov_ctr.7@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.7@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_memrchr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memrchr@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 8(, %s11)
	ld %s1, 16(, %s11)
	adds.l %s0, %s0, %s1
	st %s0, 40(, %s11)
	br.l .LBB7_6
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	lea %s0, __llvm_gcov_ctr.7@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.7@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	br.l .LBB7_1
.LBB7_5:
	lea %s0, __llvm_gcov_ctr.7@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.7@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	or %s0, 0, (0)1
	st %s0, 40(, %s11)
	br.l .LBB7_6
.LBB7_6:
	ld %s0, 40(, %s11)
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end7:
	.size	memrchr, .Lfunc_end7-memrchr
                                        # -- End function
	.globl	memset                          # -- Begin function memset
	.p2align	4
	.type	memset,@function
memset:                                 # @memset
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB8_6
# %bb.5:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB8_6:
	st %s1, (, %s11)                        # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s3, __llvm_gcov_ctr.8@lo
	and %s3, %s3, (32)0
	lea.sl %s3, __llvm_gcov_ctr.8@hi(, %s3)
	ld %s4, (, %s3)
	lea %s4, 1(, %s4)
	st %s4, (, %s3)
	st %s1, 40(, %s11)
	stl %s0, 36(, %s11)
	st %s2, 24(, %s11)
	lea %s0, .L__profc_memset@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memset@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 40(, %s11)
	st %s0, 16(, %s11)
	br.l .LBB8_1
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB8_4
	br.l .LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
	lea %s0, .L__profc_memset@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memset@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s1, 36(, %s11)
	ld %s0, 16(, %s11)
	st1b %s1, (, %s0)
	br.l .LBB8_3
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	lea %s0, __llvm_gcov_ctr.8@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.8@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 24(, %s11)
	lea %s0, -1(, %s0)
	st %s0, 24(, %s11)
	ld %s0, 16(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 16(, %s11)
	br.l .LBB8_1
.LBB8_4:
	ld %s0, 40(, %s11)
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end8:
	.size	memset, .Lfunc_end8-memset
                                        # -- End function
	.globl	stpcpy                          # -- Begin function stpcpy
	.p2align	4
	.type	stpcpy,@function
stpcpy:                                 # @stpcpy
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB9_6
# %bb.5:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB9_6:
	lea %s2, __llvm_gcov_ctr.9@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.9@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s0, 8(, %s11)
	st %s1, (, %s11)
	lea %s0, .L__profc_stpcpy@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_stpcpy@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	br.l .LBB9_1
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	ld %s0, (, %s11)
	ld1b.zx %s0, (, %s0)
	ld %s1, 8(, %s11)
	st1b %s0, (, %s1)
	breq.w 0, %s0, .LBB9_4
	br.l .LBB9_2
.LBB9_2:                                #   in Loop: Header=BB9_1 Depth=1
	lea %s0, .L__profc_stpcpy@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_stpcpy@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	br.l .LBB9_3
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
	lea %s0, __llvm_gcov_ctr.9@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.9@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, (, %s11)
	lea %s0, 1(, %s0)
	st %s0, (, %s11)
	ld %s0, 8(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 8(, %s11)
	br.l .LBB9_1
.LBB9_4:
	ld %s0, 8(, %s11)
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end9:
	.size	stpcpy, .Lfunc_end9-stpcpy
                                        # -- End function
	.globl	strchrnul                       # -- Begin function strchrnul
	.p2align	4
	.type	strchrnul,@function
strchrnul:                              # @strchrnul
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB10_9
# %bb.8:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB10_9:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s2, __llvm_gcov_ctr.10@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.10@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s1, 24(, %s11)
	stl %s0, 20(, %s11)
	lea %s0, .L__profc_strchrnul@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strchrnul@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld1b.zx %s0, 20(, %s11)
	stl %s0, 20(, %s11)
	br.l .LBB10_1
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	ld1b.sx %s0, (, %s0)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	breq.w 0, %s0, .LBB10_4
	br.l .LBB10_2
.LBB10_2:                               #   in Loop: Header=BB10_1 Depth=1
	lea %s0, __llvm_gcov_ctr.10@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.10@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_strchrnul@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strchrnul@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 24(, %s11)
	ld1b.zx %s0, (, %s0)
	ldl.sx %s1, 20(, %s11)
	cmps.w.sx %s3, %s0, %s1
	or %s2, 0, (0)1
	cmov.w.ne %s2, (63)0, %s3
                                        # kill: def $sw2 killed $sw2 killed $sx2
	stl %s2, (, %s11)                       # 4-byte Folded Spill
	stl %s2, 4(, %s11)                      # 4-byte Folded Spill
	breq.w %s0, %s1, .LBB10_4
	br.l .LBB10_3
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	ldl.sx %s0, (, %s11)                    # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.10@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.10@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	lea %s1, .L__profc_strchrnul@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_strchrnul@hi(, %s1)
	ld %s2, 24(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 24(, %s1)
	stl %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB10_4
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	ldl.sx %s1, 4(, %s11)                   # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB10_7
	br.l .LBB10_5
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	lea %s0, .L__profc_strchrnul@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strchrnul@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	br.l .LBB10_6
.LBB10_6:                               #   in Loop: Header=BB10_1 Depth=1
	lea %s0, __llvm_gcov_ctr.10@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.10@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, 24(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 24(, %s11)
	br.l .LBB10_1
.LBB10_7:
	ld %s0, 24(, %s11)
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end10:
	.size	strchrnul, .Lfunc_end10-strchrnul
                                        # -- End function
	.globl	strchr                          # -- Begin function strchr
	.p2align	4
	.type	strchr,@function
strchr:                                 # @strchr
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB11_9
# %bb.8:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB11_9:
	st %s1, (, %s11)                        # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s1, 16(, %s11)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc_strchr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strchr@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	br.l .LBB11_2
.LBB11_1:                               #   in Loop: Header=BB11_2 Depth=1
	lea %s0, __llvm_gcov_ctr.11@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.11@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_strchr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strchr@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	br.l .LBB11_2
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 16(, %s11)
	ld1b.sx %s0, (, %s0)
	ldl.sx %s1, 12(, %s11)
	brne.w %s0, %s1, .LBB11_4
	br.l .LBB11_3
.LBB11_3:
	lea %s0, __llvm_gcov_ctr.11@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.11@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_strchr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strchr@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 16(, %s11)
	st %s0, 24(, %s11)
	br.l .LBB11_7
.LBB11_4:                               #   in Loop: Header=BB11_2 Depth=1
	br.l .LBB11_5
.LBB11_5:                               #   in Loop: Header=BB11_2 Depth=1
	ld %s0, 16(, %s11)
	lea %s1, 1(, %s0)
	st %s1, 16(, %s11)
	ld1b.zx %s0, (, %s0)
	brne.w 0, %s0, .LBB11_1
	br.l .LBB11_6
.LBB11_6:
	lea %s0, __llvm_gcov_ctr.11@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.11@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	or %s0, 0, (0)1
	st %s0, 24(, %s11)
	br.l .LBB11_7
.LBB11_7:
	ld %s0, 24(, %s11)
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end11:
	.size	strchr, .Lfunc_end11-strchr
                                        # -- End function
	.globl	strcmp                          # -- Begin function strcmp
	.p2align	4
	.type	strcmp,@function
strcmp:                                 # @strcmp
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB12_9
# %bb.8:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB12_9:
	lea %s2, __llvm_gcov_ctr.12@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.12@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s0, 24(, %s11)
	st %s1, 16(, %s11)
	lea %s0, .L__profc_strcmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strcmp@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	br.l .LBB12_1
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	ld1b.sx %s0, (, %s0)
	ld %s1, 16(, %s11)
	ld1b.sx %s1, (, %s1)
	or %s2, 0, (0)1
                                        # kill: def $sw2 killed $sw2 killed $sx2
	stl %s2, 12(, %s11)                     # 4-byte Folded Spill
	brne.w %s0, %s1, .LBB12_4
	br.l .LBB12_2
.LBB12_2:                               #   in Loop: Header=BB12_1 Depth=1
	lea %s0, __llvm_gcov_ctr.12@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.12@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_strcmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strcmp@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 24(, %s11)
	ld1b.sx %s0, (, %s0)
	or %s1, 0, (0)1
	or %s2, 0, %s1
	cmps.w.sx %s2, %s0, %s2
	cmov.w.ne %s1, (63)0, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	breq.w 0, %s0, .LBB12_4
	br.l .LBB12_3
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	ldl.sx %s0, 8(, %s11)                   # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.12@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.12@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	lea %s1, .L__profc_strcmp@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_strcmp@hi(, %s1)
	ld %s2, 24(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 24(, %s1)
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB12_4
.LBB12_4:                               #   in Loop: Header=BB12_1 Depth=1
	ldl.sx %s1, 12(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB12_7
	br.l .LBB12_5
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
	lea %s0, .L__profc_strcmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strcmp@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	br.l .LBB12_6
.LBB12_6:                               #   in Loop: Header=BB12_1 Depth=1
	lea %s0, __llvm_gcov_ctr.12@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.12@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, 24(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 24(, %s11)
	ld %s0, 16(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 16(, %s11)
	br.l .LBB12_1
.LBB12_7:
	ld %s0, 24(, %s11)
	ld1b.zx %s0, (, %s0)
	ld %s1, 16(, %s11)
	ld1b.zx %s1, (, %s1)
	subs.w.sx %s0, %s0, %s1
	adds.w.sx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end12:
	.size	strcmp, .Lfunc_end12-strcmp
                                        # -- End function
	.globl	strlen                          # -- Begin function strlen
	.p2align	4
	.type	strlen,@function
strlen:                                 # @strlen
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB13_6
# %bb.5:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB13_6:
	lea %s1, __llvm_gcov_ctr.13@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.13@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	st %s0, 8(, %s11)
	lea %s0, .L__profc_strlen@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strlen@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 8(, %s11)
	st %s0, (, %s11)
	br.l .LBB13_1
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 8(, %s11)
	ld1b.zx %s0, (, %s0)
	breq.w 0, %s0, .LBB13_4
	br.l .LBB13_2
.LBB13_2:                               #   in Loop: Header=BB13_1 Depth=1
	lea %s0, .L__profc_strlen@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strlen@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	br.l .LBB13_3
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
	lea %s0, __llvm_gcov_ctr.13@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.13@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 8(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 8(, %s11)
	br.l .LBB13_1
.LBB13_4:
	ld %s0, 8(, %s11)
	ld %s1, (, %s11)
	subs.l %s0, %s0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end13:
	.size	strlen, .Lfunc_end13-strlen
                                        # -- End function
	.globl	strncmp                         # -- Begin function strncmp
	.p2align	4
	.type	strncmp,@function
strncmp:                                # @strncmp
# %bb.0:
	adds.l %s11, -64, %s11
	brge.l.t %s11, %s8, .LBB14_16
# %bb.15:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB14_16:
	st %s0, 48(, %s11)
	st %s1, 40(, %s11)
	st %s2, 32(, %s11)
	lea %s0, .L__profc_strncmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strncmp@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 48(, %s11)
	st %s0, 24(, %s11)
	ld %s0, 40(, %s11)
	st %s0, 16(, %s11)
	ld %s0, 32(, %s11)
	lea %s1, -1(, %s0)
	st %s1, 32(, %s11)
	brne.l 0, %s0, .LBB14_2
	br.l .LBB14_1
.LBB14_1:
	lea %s0, __llvm_gcov_ctr.14@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.14@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_strncmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strncmp@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 60(, %s11)
	br.l .LBB14_14
.LBB14_2:
	lea %s0, __llvm_gcov_ctr.14@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.14@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	br.l .LBB14_3
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	ld1b.zx %s0, (, %s0)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	breq.w 0, %s0, .LBB14_10
	br.l .LBB14_4
.LBB14_4:                               #   in Loop: Header=BB14_3 Depth=1
	lea %s0, __llvm_gcov_ctr.14@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.14@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_strncmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strncmp@hi(, %s0)
	ld %s1, 56(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 56(, %s0)
	ld %s0, 16(, %s11)
	ld1b.zx %s0, (, %s0)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	breq.w 0, %s0, .LBB14_10
	br.l .LBB14_5
.LBB14_5:                               #   in Loop: Header=BB14_3 Depth=1
	lea %s0, __llvm_gcov_ctr.14@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.14@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_strncmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strncmp@hi(, %s0)
	ld %s1, 64(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 64(, %s0)
	br.l .LBB14_6
.LBB14_6:                               #   in Loop: Header=BB14_3 Depth=1
	lea %s0, .L__profc_strncmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strncmp@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s0, 32(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	breq.l 0, %s0, .LBB14_10
	br.l .LBB14_7
.LBB14_7:                               #   in Loop: Header=BB14_3 Depth=1
	lea %s0, __llvm_gcov_ctr.14@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.14@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc_strncmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strncmp@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	br.l .LBB14_8
.LBB14_8:                               #   in Loop: Header=BB14_3 Depth=1
	lea %s0, .L__profc_strncmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strncmp@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, 24(, %s11)
	ld1b.zx %s0, (, %s0)
	ld %s1, 16(, %s11)
	ld1b.zx %s1, (, %s1)
	cmps.w.sx %s3, %s0, %s1
	or %s2, 0, (0)1
	cmov.w.eq %s2, (63)0, %s3
                                        # kill: def $sw2 killed $sw2 killed $sx2
	stl %s2, 8(, %s11)                      # 4-byte Folded Spill
	stl %s2, 12(, %s11)                     # 4-byte Folded Spill
	brne.w %s0, %s1, .LBB14_10
	br.l .LBB14_9
.LBB14_9:                               #   in Loop: Header=BB14_3 Depth=1
	ldl.sx %s0, 8(, %s11)                   # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.14@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.14@hi(, %s1)
	ld %s2, 40(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 40(, %s1)
	lea %s1, .L__profc_strncmp@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_strncmp@hi(, %s1)
	ld %s2, 32(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 32(, %s1)
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB14_10
.LBB14_10:                              #   in Loop: Header=BB14_3 Depth=1
	ldl.sx %s1, 12(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB14_13
	br.l .LBB14_11
.LBB14_11:                              #   in Loop: Header=BB14_3 Depth=1
	lea %s0, .L__profc_strncmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strncmp@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	br.l .LBB14_12
.LBB14_12:                              #   in Loop: Header=BB14_3 Depth=1
	lea %s0, __llvm_gcov_ctr.14@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.14@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	ld %s0, 24(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 24(, %s11)
	ld %s0, 16(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 16(, %s11)
	ld %s0, 32(, %s11)
	lea %s0, -1(, %s0)
	st %s0, 32(, %s11)
	br.l .LBB14_3
.LBB14_13:
	ld %s0, 24(, %s11)
	ld1b.zx %s0, (, %s0)
	ld %s1, 16(, %s11)
	ld1b.zx %s1, (, %s1)
	subs.w.sx %s0, %s0, %s1
	stl %s0, 60(, %s11)
	br.l .LBB14_14
.LBB14_14:
	ldl.sx %s1, 60(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s11, 64(, %s11)
	b.l.t (, %s10)
.Lfunc_end14:
	.size	strncmp, .Lfunc_end14-strncmp
                                        # -- End function
	.globl	swab                            # -- Begin function swab
	.p2align	4
	.type	swab,@function
swab:                                   # @swab
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB15_6
# %bb.5:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB15_6:
	lea %s3, __llvm_gcov_ctr.15@lo
	and %s3, %s3, (32)0
	lea.sl %s3, __llvm_gcov_ctr.15@hi(, %s3)
	ld %s4, (, %s3)
	lea %s4, 1(, %s4)
	st %s4, (, %s3)
	st %s0, 40(, %s11)
	st %s1, 32(, %s11)
	st %s2, 24(, %s11)
	lea %s0, .L__profc_swab@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_swab@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 40(, %s11)
	st %s0, 16(, %s11)
	ld %s0, 32(, %s11)
	st %s0, 8(, %s11)
	br.l .LBB15_1
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	brgt.l 2, %s0, .LBB15_4
	br.l .LBB15_2
.LBB15_2:                               #   in Loop: Header=BB15_1 Depth=1
	lea %s0, .L__profc_swab@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_swab@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 16(, %s11)
	ld1b.zx %s1, 1(, %s0)
	ld %s0, 8(, %s11)
	st1b %s1, (, %s0)
	ld %s0, 16(, %s11)
	ld1b.zx %s1, (, %s0)
	ld %s0, 8(, %s11)
	st1b %s1, 1(, %s0)
	ld %s0, 8(, %s11)
	lea %s0, 2(, %s0)
	st %s0, 8(, %s11)
	ld %s0, 16(, %s11)
	lea %s0, 2(, %s0)
	st %s0, 16(, %s11)
	br.l .LBB15_3
.LBB15_3:                               #   in Loop: Header=BB15_1 Depth=1
	lea %s0, __llvm_gcov_ctr.15@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.15@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 24(, %s11)
	lea %s0, -2(, %s0)
	st %s0, 24(, %s11)
	br.l .LBB15_1
.LBB15_4:
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end15:
	.size	swab, .Lfunc_end15-swab
                                        # -- End function
	.globl	isalpha                         # -- Begin function isalpha
	.p2align	4
	.type	isalpha,@function
isalpha:                                # @isalpha
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB16_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB16_2:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.16@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.16@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc_isalpha@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_isalpha@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s1, 12(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	or %s0, 32, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, -97
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	or %s1, 26, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.lt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	adds.w.zx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end16:
	.size	isalpha, .Lfunc_end16-isalpha
                                        # -- End function
	.globl	isascii                         # -- Begin function isascii
	.p2align	4
	.type	isascii,@function
isascii:                                # @isascii
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB17_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB17_2:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.17@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.17@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc_isascii@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_isascii@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.zx %s1, 12(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s1, -128
	and %s1, %s1, (32)0
	and %s0, %s0, %s1
	or %s1, 0, %s0
	or %s0, 0, (0)1
	or %s2, 0, %s0
	cmps.w.sx %s1, %s1, %s2
	cmov.w.eq %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	adds.w.zx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end17:
	.size	isascii, .Lfunc_end17-isascii
                                        # -- End function
	.globl	isblank                         # -- Begin function isblank
	.p2align	4
	.type	isblank,@function
isblank:                                # @isblank
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB18_5
# %bb.4:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB18_5:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.18@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.18@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc_isblank@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_isblank@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	or %s1, 1, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	breq.w 32, %s0, .LBB18_3
	br.l .LBB18_1
.LBB18_1:
	lea %s0, __llvm_gcov_ctr.18@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.18@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_isblank@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_isblank@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s0, 12(, %s11)
	or %s1, 9, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmps.w.sx %s2, %s0, %s1
	or %s1, 0, (0)1
	cmov.w.eq %s1, (63)0, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	breq.w 9, %s0, .LBB18_3
	br.l .LBB18_2
.LBB18_2:
	ldl.sx %s0, 4(, %s11)                   # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.18@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.18@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	lea %s1, .L__profc_isblank@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_isblank@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB18_3
.LBB18_3:
	ldl.sx %s1, 8(, %s11)                   # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end18:
	.size	isblank, .Lfunc_end18-isblank
                                        # -- End function
	.globl	iscntrl                         # -- Begin function iscntrl
	.p2align	4
	.type	iscntrl,@function
iscntrl:                                # @iscntrl
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB19_5
# %bb.4:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB19_5:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.19@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.19@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc_iscntrl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iscntrl@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	or %s1, 1, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s0, 32, %s0
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	brlt.w 0, %s0, .LBB19_3
	br.l .LBB19_1
.LBB19_1:
	lea %s0, __llvm_gcov_ctr.19@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.19@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_iscntrl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iscntrl@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s0, 12(, %s11)
	lea %s1, 127
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmps.w.sx %s3, %s0, %s1
	or %s2, 0, (0)1
	cmov.w.eq %s2, (63)0, %s3
                                        # kill: def $sw2 killed $sw2 killed $sx2
	stl %s2, 4(, %s11)                      # 4-byte Folded Spill
	stl %s2, 8(, %s11)                      # 4-byte Folded Spill
	breq.w %s0, %s1, .LBB19_3
	br.l .LBB19_2
.LBB19_2:
	ldl.sx %s0, 4(, %s11)                   # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.19@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.19@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	lea %s1, .L__profc_iscntrl@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_iscntrl@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB19_3
.LBB19_3:
	ldl.sx %s1, 8(, %s11)                   # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end19:
	.size	iscntrl, .Lfunc_end19-iscntrl
                                        # -- End function
	.globl	isdigit                         # -- Begin function isdigit
	.p2align	4
	.type	isdigit,@function
isdigit:                                # @isdigit
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB20_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB20_2:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.20@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.20@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc_isdigit@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_isdigit@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	adds.w.sx %s0, -48, %s0
	or %s1, 10, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.lt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	adds.w.zx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end20:
	.size	isdigit, .Lfunc_end20-isdigit
                                        # -- End function
	.globl	isgraph                         # -- Begin function isgraph
	.p2align	4
	.type	isgraph,@function
isgraph:                                # @isgraph
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB21_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB21_2:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.21@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.21@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc_isgraph@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_isgraph@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	adds.w.sx %s0, -33, %s0
	lea %s1, 94
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.lt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	adds.w.zx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end21:
	.size	isgraph, .Lfunc_end21-isgraph
                                        # -- End function
	.globl	islower                         # -- Begin function islower
	.p2align	4
	.type	islower,@function
islower:                                # @islower
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB22_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB22_2:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.22@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.22@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc_islower@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_islower@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	lea %s1, -97
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	or %s1, 26, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.lt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	adds.w.zx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end22:
	.size	islower, .Lfunc_end22-islower
                                        # -- End function
	.globl	isprint                         # -- Begin function isprint
	.p2align	4
	.type	isprint,@function
isprint:                                # @isprint
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB23_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB23_2:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.23@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.23@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc_isprint@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_isprint@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	adds.w.sx %s0, -32, %s0
	lea %s1, 95
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.lt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	adds.w.zx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end23:
	.size	isprint, .Lfunc_end23-isprint
                                        # -- End function
	.globl	isspace                         # -- Begin function isspace
	.p2align	4
	.type	isspace,@function
isspace:                                # @isspace
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB24_5
# %bb.4:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB24_5:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.24@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.24@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc_isspace@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_isspace@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	or %s1, 1, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	breq.w 32, %s0, .LBB24_3
	br.l .LBB24_1
.LBB24_1:
	lea %s0, __llvm_gcov_ctr.24@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.24@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_isspace@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_isspace@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s0, 12(, %s11)
	adds.w.sx %s0, -9, %s0
	or %s1, 5, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s2, %s0, %s1
	or %s1, 0, (0)1
	cmov.w.lt %s1, (63)0, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	cmpu.w %s0, 5, %s0
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	brlt.w 0, %s0, .LBB24_3
	br.l .LBB24_2
.LBB24_2:
	ldl.sx %s0, 4(, %s11)                   # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.24@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.24@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	lea %s1, .L__profc_isspace@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_isspace@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB24_3
.LBB24_3:
	ldl.sx %s1, 8(, %s11)                   # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end24:
	.size	isspace, .Lfunc_end24-isspace
                                        # -- End function
	.globl	isupper                         # -- Begin function isupper
	.p2align	4
	.type	isupper,@function
isupper:                                # @isupper
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB25_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB25_2:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.25@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.25@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc_isupper@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_isupper@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	lea %s1, -65
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	or %s1, 26, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.lt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	adds.w.zx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end25:
	.size	isupper, .Lfunc_end25-isupper
                                        # -- End function
	.globl	iswcntrl                        # -- Begin function iswcntrl
	.p2align	4
	.type	iswcntrl,@function
iswcntrl:                               # @iswcntrl
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB26_9
# %bb.8:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB26_9:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.26@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.26@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc_iswcntrl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iswcntrl@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	or %s1, 1, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s0, 32, %s0
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	brlt.w 0, %s0, .LBB26_7
	br.l .LBB26_1
.LBB26_1:
	lea %s0, __llvm_gcov_ctr.26@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.26@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_iswcntrl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iswcntrl@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ldl.sx %s0, 12(, %s11)
	lea %s1, -127
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	or %s1, 1, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s0, 33, %s0
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	brlt.w 0, %s0, .LBB26_7
	br.l .LBB26_2
.LBB26_2:
	lea %s0, __llvm_gcov_ctr.26@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.26@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_iswcntrl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iswcntrl@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	br.l .LBB26_3
.LBB26_3:
	lea %s0, .L__profc_iswcntrl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iswcntrl@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ldl.sx %s0, 12(, %s11)
	lea %s1, -8232
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	or %s1, 1, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s0, 2, %s0
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	brlt.w 0, %s0, .LBB26_7
	br.l .LBB26_4
.LBB26_4:
	lea %s0, __llvm_gcov_ctr.26@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.26@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_iswcntrl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iswcntrl@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	br.l .LBB26_5
.LBB26_5:
	lea %s0, .L__profc_iswcntrl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iswcntrl@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s0, 12(, %s11)
	lea %s1, -65529
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	or %s1, 3, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s2, %s0, %s1
	or %s1, 0, (0)1
	cmov.w.lt %s1, (63)0, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	cmpu.w %s0, 3, %s0
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	brlt.w 0, %s0, .LBB26_7
	br.l .LBB26_6
.LBB26_6:
	ldl.sx %s0, 4(, %s11)                   # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.26@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.26@hi(, %s1)
	ld %s2, 32(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 32(, %s1)
	lea %s1, .L__profc_iswcntrl@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_iswcntrl@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB26_7
.LBB26_7:
	ldl.sx %s1, 8(, %s11)                   # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end26:
	.size	iswcntrl, .Lfunc_end26-iswcntrl
                                        # -- End function
	.globl	iswdigit                        # -- Begin function iswdigit
	.p2align	4
	.type	iswdigit,@function
iswdigit:                               # @iswdigit
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB27_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB27_2:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.27@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.27@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc_iswdigit@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iswdigit@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	adds.w.sx %s0, -48, %s0
	or %s1, 10, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.lt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	adds.w.zx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end27:
	.size	iswdigit, .Lfunc_end27-iswdigit
                                        # -- End function
	.globl	iswprint                        # -- Begin function iswprint
	.p2align	4
	.type	iswprint,@function
iswprint:                               # @iswprint
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB28_15
# %bb.14:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB28_15:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	lea %s0, .L__profc_iswprint@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iswprint@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s1, 8(, %s11)
	lea %s0, 254
                                        # kill: def $sw0 killed $sw0 killed $sx0
	cmpu.w %s0, %s0, %s1
	brgt.w 0, %s0, .LBB28_2
	br.l .LBB28_1
.LBB28_1:
	lea %s0, __llvm_gcov_ctr.28@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.28@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_iswprint@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iswprint@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s0, 8(, %s11)
	adds.w.sx %s1, 1, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (57)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	or %s1, 32, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.gt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	br.l .LBB28_13
.LBB28_2:
	ldl.sx %s1, 8(, %s11)
	lea %s0, 8232
                                        # kill: def $sw0 killed $sw0 killed $sx0
	cmpu.w %s0, %s0, %s1
	brlt.w 0, %s0, .LBB28_7
	br.l .LBB28_3
.LBB28_3:
	lea %s0, __llvm_gcov_ctr.28@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.28@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_iswprint@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iswprint@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ldl.sx %s0, 8(, %s11)
	lea %s1, -8234
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s1, %s0, %s1
	lea %s0, 47062
                                        # kill: def $sw0 killed $sw0 killed $sx0
	cmpu.w %s0, %s0, %s1
	brlt.w 0, %s0, .LBB28_7
	br.l .LBB28_4
.LBB28_4:
	lea %s0, __llvm_gcov_ctr.28@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.28@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_iswprint@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iswprint@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	br.l .LBB28_5
.LBB28_5:
	lea %s0, .L__profc_iswprint@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iswprint@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ldl.sx %s0, 8(, %s11)
	lea %s1, -57344
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s1, %s0, %s1
	lea %s0, 8185
                                        # kill: def $sw0 killed $sw0 killed $sx0
	cmpu.w %s0, %s0, %s1
	brlt.w 0, %s0, .LBB28_7
	br.l .LBB28_6
.LBB28_6:
	lea %s0, .L__profc_iswprint@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iswprint@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	br.l .LBB28_8
.LBB28_7:
	lea %s0, __llvm_gcov_ctr.28@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.28@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_iswprint@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iswprint@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	br.l .LBB28_13
.LBB28_8:
	ldl.sx %s0, 8(, %s11)
	lea %s1, -65532
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s1, %s0, %s1
	lea %s0, 1048579
                                        # kill: def $sw0 killed $sw0 killed $sx0
	cmpu.w %s0, %s0, %s1
	brgt.w 0, %s0, .LBB28_11
	br.l .LBB28_9
.LBB28_9:
	lea %s0, __llvm_gcov_ctr.28@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.28@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc_iswprint@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iswprint@hi(, %s0)
	ld %s1, 64(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 64(, %s0)
	ldl.zx %s1, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s1, 65534
	and %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	breq.w %s0, %s1, .LBB28_11
	br.l .LBB28_10
.LBB28_10:
	lea %s0, .L__profc_iswprint@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iswprint@hi(, %s0)
	ld %s1, 72(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 72(, %s0)
	br.l .LBB28_12
.LBB28_11:
	lea %s0, __llvm_gcov_ctr.28@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.28@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	lea %s0, .L__profc_iswprint@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iswprint@hi(, %s0)
	ld %s1, 56(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 56(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	br.l .LBB28_13
.LBB28_12:
	lea %s0, __llvm_gcov_ctr.28@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.28@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	br.l .LBB28_13
.LBB28_13:
	ldl.sx %s1, 12(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end28:
	.size	iswprint, .Lfunc_end28-iswprint
                                        # -- End function
	.globl	iswxdigit                       # -- Begin function iswxdigit
	.p2align	4
	.type	iswxdigit,@function
iswxdigit:                              # @iswxdigit
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB29_5
# %bb.4:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB29_5:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.29@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.29@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc_iswxdigit@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iswxdigit@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	adds.w.sx %s0, -48, %s0
	or %s1, 1, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s0, 10, %s0
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	brlt.w 0, %s0, .LBB29_3
	br.l .LBB29_1
.LBB29_1:
	lea %s0, __llvm_gcov_ctr.29@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.29@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_iswxdigit@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_iswxdigit@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s1, 12(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	or %s0, 32, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, -97
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	or %s1, 6, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s2, %s0, %s1
	or %s1, 0, (0)1
	cmov.w.lt %s1, (63)0, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	cmpu.w %s0, 6, %s0
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	brlt.w 0, %s0, .LBB29_3
	br.l .LBB29_2
.LBB29_2:
	ldl.sx %s0, 4(, %s11)                   # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.29@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.29@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	lea %s1, .L__profc_iswxdigit@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_iswxdigit@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB29_3
.LBB29_3:
	ldl.sx %s1, 8(, %s11)                   # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end29:
	.size	iswxdigit, .Lfunc_end29-iswxdigit
                                        # -- End function
	.globl	toascii                         # -- Begin function toascii
	.p2align	4
	.type	toascii,@function
toascii:                                # @toascii
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB30_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB30_2:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.30@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.30@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc_toascii@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_toascii@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.zx %s1, 12(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (57)0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end30:
	.size	toascii, .Lfunc_end30-toascii
                                        # -- End function
	.globl	fdim                            # -- Begin function fdim
	.p2align	4
	.type	fdim,@function
fdim:                                   # @fdim
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB31_10
# %bb.9:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB31_10:
	st %s0, 16(, %s11)
	st %s1, 8(, %s11)
	lea %s0, .L__profc_fdim@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fdim@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 16(, %s11)
	brnum.d %s0, %s0, .LBB31_2
	br.l .LBB31_1
.LBB31_1:
	lea %s0, __llvm_gcov_ctr.31@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.31@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_fdim@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fdim@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 16(, %s11)
	st %s0, 24(, %s11)
	br.l .LBB31_8
.LBB31_2:
	ld %s0, 8(, %s11)
	brnum.d %s0, %s0, .LBB31_4
	br.l .LBB31_3
.LBB31_3:
	lea %s0, __llvm_gcov_ctr.31@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.31@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_fdim@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fdim@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 8(, %s11)
	st %s0, 24(, %s11)
	br.l .LBB31_8
.LBB31_4:
	ld %s0, 16(, %s11)
	ld %s1, 8(, %s11)
	brlenan.d %s0, %s1, .LBB31_6
	br.l .LBB31_5
.LBB31_5:
	lea %s0, __llvm_gcov_ctr.31@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.31@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_fdim@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fdim@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, 16(, %s11)
	ld %s1, 8(, %s11)
	fsub.d %s0, %s0, %s1
	st %s0, (, %s11)                        # 8-byte Folded Spill
	br.l .LBB31_7
.LBB31_6:
	lea %s0, __llvm_gcov_ctr.31@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.31@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea.sl %s0, 0
	st %s0, (, %s11)                        # 8-byte Folded Spill
	br.l .LBB31_7
.LBB31_7:
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	st %s0, 24(, %s11)
	br.l .LBB31_8
.LBB31_8:
	ld %s0, 24(, %s11)
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end31:
	.size	fdim, .Lfunc_end31-fdim
                                        # -- End function
	.globl	fdimf                           # -- Begin function fdimf
	.p2align	4
	.type	fdimf,@function
fdimf:                                  # @fdimf
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB32_10
# %bb.9:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB32_10:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
                                        # kill: def $sf0 killed $sf0 killed $sx0
                                        # kill: def $sf1 killed $sf1 killed $sx1
	stu %s1, 24(, %s11)
	stu %s0, 20(, %s11)
	lea %s0, .L__profc_fdimf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fdimf@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldu %s0, 24(, %s11)
	brnum.s %s0, %s0, .LBB32_2
	br.l .LBB32_1
.LBB32_1:
	lea %s0, __llvm_gcov_ctr.32@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.32@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_fdimf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fdimf@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldu %s0, 24(, %s11)
	stu %s0, 28(, %s11)
	br.l .LBB32_8
.LBB32_2:
	ldu %s0, 20(, %s11)
	brnum.s %s0, %s0, .LBB32_4
	br.l .LBB32_3
.LBB32_3:
	lea %s0, __llvm_gcov_ctr.32@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.32@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_fdimf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fdimf@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldu %s0, 20(, %s11)
	stu %s0, 28(, %s11)
	br.l .LBB32_8
.LBB32_4:
	ldu %s0, 24(, %s11)
	ldu %s1, 20(, %s11)
	brlenan.s %s0, %s1, .LBB32_6
	br.l .LBB32_5
.LBB32_5:
	lea %s0, __llvm_gcov_ctr.32@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.32@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_fdimf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fdimf@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ldu %s0, 24(, %s11)
	ldu %s1, 20(, %s11)
	fsub.s %s0, %s0, %s1
	stu %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB32_7
.LBB32_6:
	lea %s0, __llvm_gcov_ctr.32@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.32@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea.sl %s0, 0
                                        # kill: def $sf0 killed $sf0 killed $sx0
	stu %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB32_7
.LBB32_7:
	ldu %s0, 4(, %s11)                      # 4-byte Folded Reload
	stu %s0, 28(, %s11)
	br.l .LBB32_8
.LBB32_8:
	ldu %s1, 28(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end32:
	.size	fdimf, .Lfunc_end32-fdimf
                                        # -- End function
	.globl	fmax                            # -- Begin function fmax
	.p2align	4
	.type	fmax,@function
fmax:                                   # @fmax
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB33_15
# %bb.14:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB33_15:
	st %s0, 32(, %s11)
	st %s1, 24(, %s11)
	lea %s0, .L__profc_fmax@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmax@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 32(, %s11)
	brnum.d %s0, %s0, .LBB33_2
	br.l .LBB33_1
.LBB33_1:
	lea %s0, __llvm_gcov_ctr.33@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.33@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_fmax@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmax@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 24(, %s11)
	st %s0, 40(, %s11)
	br.l .LBB33_13
.LBB33_2:
	ld %s0, 24(, %s11)
	brnum.d %s0, %s0, .LBB33_4
	br.l .LBB33_3
.LBB33_3:
	lea %s0, __llvm_gcov_ctr.33@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.33@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_fmax@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmax@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 32(, %s11)
	st %s0, 40(, %s11)
	br.l .LBB33_13
.LBB33_4:
	ld %s0, 32(, %s11)
	srl %s0, %s0, 63
                                        # kill: def $sw0 killed $sw0 killed $sx0
	ld %s1, 24(, %s11)
	srl %s1, %s1, 63
                                        # kill: def $sw1 killed $sw1 killed $sx1
	breq.w %s0, %s1, .LBB33_9
	br.l .LBB33_5
.LBB33_5:
	lea %s0, .L__profc_fmax@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmax@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, 32(, %s11)
	brlt.l -1, %s0, .LBB33_7
	br.l .LBB33_6
.LBB33_6:
	lea %s0, __llvm_gcov_ctr.33@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.33@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_fmax@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmax@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 24(, %s11)
	st %s0, 16(, %s11)                      # 8-byte Folded Spill
	br.l .LBB33_8
.LBB33_7:
	lea %s0, __llvm_gcov_ctr.33@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.33@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, 32(, %s11)
	st %s0, 16(, %s11)                      # 8-byte Folded Spill
	br.l .LBB33_8
.LBB33_8:
	ld %s0, 16(, %s11)                      # 8-byte Folded Reload
	st %s0, 40(, %s11)
	br.l .LBB33_13
.LBB33_9:
	ld %s0, 32(, %s11)
	ld %s1, 24(, %s11)
	brgenan.d %s0, %s1, .LBB33_11
	br.l .LBB33_10
.LBB33_10:
	lea %s0, __llvm_gcov_ctr.33@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.33@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc_fmax@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmax@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s0, 24(, %s11)
	st %s0, 8(, %s11)                       # 8-byte Folded Spill
	br.l .LBB33_12
.LBB33_11:
	lea %s0, __llvm_gcov_ctr.33@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.33@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s0, 32(, %s11)
	st %s0, 8(, %s11)                       # 8-byte Folded Spill
	br.l .LBB33_12
.LBB33_12:
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	st %s0, 40(, %s11)
	br.l .LBB33_13
.LBB33_13:
	ld %s0, 40(, %s11)
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end33:
	.size	fmax, .Lfunc_end33-fmax
                                        # -- End function
	.globl	fmaxf                           # -- Begin function fmaxf
	.p2align	4
	.type	fmaxf,@function
fmaxf:                                  # @fmaxf
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB34_15
# %bb.14:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB34_15:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
                                        # kill: def $sf0 killed $sf0 killed $sx0
                                        # kill: def $sf1 killed $sf1 killed $sx1
	stu %s1, 24(, %s11)
	stu %s0, 20(, %s11)
	lea %s0, .L__profc_fmaxf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmaxf@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldu %s0, 24(, %s11)
	brnum.s %s0, %s0, .LBB34_2
	br.l .LBB34_1
.LBB34_1:
	lea %s0, __llvm_gcov_ctr.34@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.34@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_fmaxf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmaxf@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldu %s0, 20(, %s11)
	stu %s0, 28(, %s11)
	br.l .LBB34_13
.LBB34_2:
	ldu %s0, 20(, %s11)
	brnum.s %s0, %s0, .LBB34_4
	br.l .LBB34_3
.LBB34_3:
	lea %s0, __llvm_gcov_ctr.34@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.34@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_fmaxf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmaxf@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldu %s0, 24(, %s11)
	stu %s0, 28(, %s11)
	br.l .LBB34_13
.LBB34_4:
	ldl.sx %s1, 24(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (32)0
	srl %s0, %s0, 31
                                        # kill: def $sw0 killed $sw0 killed $sx0
	ldl.sx %s2, 20(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	and %s1, %s1, (32)0
	srl %s1, %s1, 31
                                        # kill: def $sw1 killed $sw1 killed $sx1
	breq.w %s0, %s1, .LBB34_9
	br.l .LBB34_5
.LBB34_5:
	lea %s0, .L__profc_fmaxf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmaxf@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ldl.sx %s0, 24(, %s11)
	brlt.w -1, %s0, .LBB34_7
	br.l .LBB34_6
.LBB34_6:
	lea %s0, __llvm_gcov_ctr.34@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.34@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_fmaxf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmaxf@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ldu %s0, 20(, %s11)
	stu %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB34_8
.LBB34_7:
	lea %s0, __llvm_gcov_ctr.34@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.34@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ldu %s0, 24(, %s11)
	stu %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB34_8
.LBB34_8:
	ldu %s0, 4(, %s11)                      # 4-byte Folded Reload
	stu %s0, 28(, %s11)
	br.l .LBB34_13
.LBB34_9:
	ldu %s0, 24(, %s11)
	ldu %s1, 20(, %s11)
	brgenan.s %s0, %s1, .LBB34_11
	br.l .LBB34_10
.LBB34_10:
	lea %s0, __llvm_gcov_ctr.34@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.34@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc_fmaxf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmaxf@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ldu %s0, 20(, %s11)
	stu %s0, (, %s11)                       # 4-byte Folded Spill
	br.l .LBB34_12
.LBB34_11:
	lea %s0, __llvm_gcov_ctr.34@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.34@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ldu %s0, 24(, %s11)
	stu %s0, (, %s11)                       # 4-byte Folded Spill
	br.l .LBB34_12
.LBB34_12:
	ldu %s0, (, %s11)                       # 4-byte Folded Reload
	stu %s0, 28(, %s11)
	br.l .LBB34_13
.LBB34_13:
	ldu %s1, 28(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end34:
	.size	fmaxf, .Lfunc_end34-fmaxf
                                        # -- End function
	.globl	fmaxl                           # -- Begin function fmaxl
	.p2align	4
	.type	fmaxl,@function
fmaxl:                                  # @fmaxl
# %bb.0:
	lea %s11, -80(, %s11)
	brge.l.t %s11, %s8, .LBB35_15
# %bb.14:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB35_15:
	st %s1, 48(, %s11)
	st %s0, 56(, %s11)
	st %s3, 32(, %s11)
	st %s2, 40(, %s11)
	lea %s0, .L__profc_fmaxl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmaxl@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s1, 48(, %s11)
	ld %s0, 56(, %s11)
	fcmp.q %s0, %s0, %s0
	brnum.d 0, %s0, .LBB35_2
	br.l .LBB35_1
.LBB35_1:
	lea %s0, __llvm_gcov_ctr.35@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.35@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_fmaxl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmaxl@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s1, 32(, %s11)
	ld %s0, 40(, %s11)
	st %s1, 64(, %s11)
	st %s0, 72(, %s11)
	br.l .LBB35_13
.LBB35_2:
	ld %s1, 32(, %s11)
	ld %s0, 40(, %s11)
	fcmp.q %s0, %s0, %s0
	brnum.d 0, %s0, .LBB35_4
	br.l .LBB35_3
.LBB35_3:
	lea %s0, __llvm_gcov_ctr.35@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.35@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_fmaxl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmaxl@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s1, 48(, %s11)
	ld %s0, 56(, %s11)
	st %s1, 64(, %s11)
	st %s0, 72(, %s11)
	br.l .LBB35_13
.LBB35_4:
	ld %s0, 56(, %s11)
	srl %s0, %s0, 63
                                        # kill: def $sw0 killed $sw0 killed $sx0
	ld %s1, 40(, %s11)
	srl %s1, %s1, 63
                                        # kill: def $sw1 killed $sw1 killed $sx1
	breq.w %s0, %s1, .LBB35_9
	br.l .LBB35_5
.LBB35_5:
	lea %s0, .L__profc_fmaxl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmaxl@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, 56(, %s11)
	brlt.l -1, %s0, .LBB35_7
	br.l .LBB35_6
.LBB35_6:
	lea %s0, __llvm_gcov_ctr.35@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.35@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_fmaxl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmaxl@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s1, 32(, %s11)
	ld %s0, 40(, %s11)
	st %s1, 16(, %s11)
	st %s0, 24(, %s11)                      # 16-byte Folded Spill
	br.l .LBB35_8
.LBB35_7:
	lea %s0, __llvm_gcov_ctr.35@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.35@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s1, 48(, %s11)
	ld %s0, 56(, %s11)
	st %s1, 16(, %s11)
	st %s0, 24(, %s11)                      # 16-byte Folded Spill
	br.l .LBB35_8
.LBB35_8:
	ld %s1, 16(, %s11)
	ld %s0, 24(, %s11)                      # 16-byte Folded Reload
	st %s1, 64(, %s11)
	st %s0, 72(, %s11)
	br.l .LBB35_13
.LBB35_9:
	ld %s3, 48(, %s11)
	ld %s2, 56(, %s11)
	ld %s1, 32(, %s11)
	ld %s0, 40(, %s11)
	fcmp.q %s0, %s0, %s2
	brgenan.d 0, %s0, .LBB35_11
	br.l .LBB35_10
.LBB35_10:
	lea %s0, __llvm_gcov_ctr.35@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.35@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc_fmaxl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmaxl@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s1, 32(, %s11)
	ld %s0, 40(, %s11)
	st %s1, (, %s11)
	st %s0, 8(, %s11)                       # 16-byte Folded Spill
	br.l .LBB35_12
.LBB35_11:
	lea %s0, __llvm_gcov_ctr.35@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.35@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s1, 48(, %s11)
	ld %s0, 56(, %s11)
	st %s1, (, %s11)
	st %s0, 8(, %s11)                       # 16-byte Folded Spill
	br.l .LBB35_12
.LBB35_12:
	ld %s1, (, %s11)
	ld %s0, 8(, %s11)                       # 16-byte Folded Reload
	st %s1, 64(, %s11)
	st %s0, 72(, %s11)
	br.l .LBB35_13
.LBB35_13:
	ld %s1, 64(, %s11)
	ld %s0, 72(, %s11)
	lea %s11, 80(, %s11)
	b.l.t (, %s10)
.Lfunc_end35:
	.size	fmaxl, .Lfunc_end35-fmaxl
                                        # -- End function
	.globl	fmin                            # -- Begin function fmin
	.p2align	4
	.type	fmin,@function
fmin:                                   # @fmin
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB36_15
# %bb.14:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB36_15:
	st %s0, 32(, %s11)
	st %s1, 24(, %s11)
	lea %s0, .L__profc_fmin@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmin@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 32(, %s11)
	brnum.d %s0, %s0, .LBB36_2
	br.l .LBB36_1
.LBB36_1:
	lea %s0, __llvm_gcov_ctr.36@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.36@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_fmin@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmin@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 24(, %s11)
	st %s0, 40(, %s11)
	br.l .LBB36_13
.LBB36_2:
	ld %s0, 24(, %s11)
	brnum.d %s0, %s0, .LBB36_4
	br.l .LBB36_3
.LBB36_3:
	lea %s0, __llvm_gcov_ctr.36@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.36@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_fmin@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmin@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 32(, %s11)
	st %s0, 40(, %s11)
	br.l .LBB36_13
.LBB36_4:
	ld %s0, 32(, %s11)
	srl %s0, %s0, 63
                                        # kill: def $sw0 killed $sw0 killed $sx0
	ld %s1, 24(, %s11)
	srl %s1, %s1, 63
                                        # kill: def $sw1 killed $sw1 killed $sx1
	breq.w %s0, %s1, .LBB36_9
	br.l .LBB36_5
.LBB36_5:
	lea %s0, .L__profc_fmin@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmin@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, 32(, %s11)
	brlt.l -1, %s0, .LBB36_7
	br.l .LBB36_6
.LBB36_6:
	lea %s0, __llvm_gcov_ctr.36@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.36@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_fmin@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmin@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 32(, %s11)
	st %s0, 16(, %s11)                      # 8-byte Folded Spill
	br.l .LBB36_8
.LBB36_7:
	lea %s0, __llvm_gcov_ctr.36@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.36@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, 24(, %s11)
	st %s0, 16(, %s11)                      # 8-byte Folded Spill
	br.l .LBB36_8
.LBB36_8:
	ld %s0, 16(, %s11)                      # 8-byte Folded Reload
	st %s0, 40(, %s11)
	br.l .LBB36_13
.LBB36_9:
	ld %s0, 32(, %s11)
	ld %s1, 24(, %s11)
	brgenan.d %s0, %s1, .LBB36_11
	br.l .LBB36_10
.LBB36_10:
	lea %s0, __llvm_gcov_ctr.36@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.36@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc_fmin@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fmin@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s0, 32(, %s11)
	st %s0, 8(, %s11)                       # 8-byte Folded Spill
	br.l .LBB36_12
.LBB36_11:
	lea %s0, __llvm_gcov_ctr.36@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.36@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s0, 24(, %s11)
	st %s0, 8(, %s11)                       # 8-byte Folded Spill
	br.l .LBB36_12
.LBB36_12:
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	st %s0, 40(, %s11)
	br.l .LBB36_13
.LBB36_13:
	ld %s0, 40(, %s11)
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end36:
	.size	fmin, .Lfunc_end36-fmin
                                        # -- End function
	.globl	fminf                           # -- Begin function fminf
	.p2align	4
	.type	fminf,@function
fminf:                                  # @fminf
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB37_15
# %bb.14:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB37_15:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
                                        # kill: def $sf0 killed $sf0 killed $sx0
                                        # kill: def $sf1 killed $sf1 killed $sx1
	stu %s1, 24(, %s11)
	stu %s0, 20(, %s11)
	lea %s0, .L__profc_fminf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fminf@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldu %s0, 24(, %s11)
	brnum.s %s0, %s0, .LBB37_2
	br.l .LBB37_1
.LBB37_1:
	lea %s0, __llvm_gcov_ctr.37@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.37@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_fminf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fminf@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldu %s0, 20(, %s11)
	stu %s0, 28(, %s11)
	br.l .LBB37_13
.LBB37_2:
	ldu %s0, 20(, %s11)
	brnum.s %s0, %s0, .LBB37_4
	br.l .LBB37_3
.LBB37_3:
	lea %s0, __llvm_gcov_ctr.37@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.37@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_fminf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fminf@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldu %s0, 24(, %s11)
	stu %s0, 28(, %s11)
	br.l .LBB37_13
.LBB37_4:
	ldl.sx %s1, 24(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (32)0
	srl %s0, %s0, 31
                                        # kill: def $sw0 killed $sw0 killed $sx0
	ldl.sx %s2, 20(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	and %s1, %s1, (32)0
	srl %s1, %s1, 31
                                        # kill: def $sw1 killed $sw1 killed $sx1
	breq.w %s0, %s1, .LBB37_9
	br.l .LBB37_5
.LBB37_5:
	lea %s0, .L__profc_fminf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fminf@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ldl.sx %s0, 24(, %s11)
	brlt.w -1, %s0, .LBB37_7
	br.l .LBB37_6
.LBB37_6:
	lea %s0, __llvm_gcov_ctr.37@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.37@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_fminf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fminf@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ldu %s0, 24(, %s11)
	stu %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB37_8
.LBB37_7:
	lea %s0, __llvm_gcov_ctr.37@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.37@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ldu %s0, 20(, %s11)
	stu %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB37_8
.LBB37_8:
	ldu %s0, 4(, %s11)                      # 4-byte Folded Reload
	stu %s0, 28(, %s11)
	br.l .LBB37_13
.LBB37_9:
	ldu %s0, 24(, %s11)
	ldu %s1, 20(, %s11)
	brgenan.s %s0, %s1, .LBB37_11
	br.l .LBB37_10
.LBB37_10:
	lea %s0, __llvm_gcov_ctr.37@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.37@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc_fminf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fminf@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ldu %s0, 24(, %s11)
	stu %s0, (, %s11)                       # 4-byte Folded Spill
	br.l .LBB37_12
.LBB37_11:
	lea %s0, __llvm_gcov_ctr.37@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.37@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ldu %s0, 20(, %s11)
	stu %s0, (, %s11)                       # 4-byte Folded Spill
	br.l .LBB37_12
.LBB37_12:
	ldu %s0, (, %s11)                       # 4-byte Folded Reload
	stu %s0, 28(, %s11)
	br.l .LBB37_13
.LBB37_13:
	ldu %s1, 28(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end37:
	.size	fminf, .Lfunc_end37-fminf
                                        # -- End function
	.globl	fminl                           # -- Begin function fminl
	.p2align	4
	.type	fminl,@function
fminl:                                  # @fminl
# %bb.0:
	lea %s11, -80(, %s11)
	brge.l.t %s11, %s8, .LBB38_15
# %bb.14:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB38_15:
	st %s1, 48(, %s11)
	st %s0, 56(, %s11)
	st %s3, 32(, %s11)
	st %s2, 40(, %s11)
	lea %s0, .L__profc_fminl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fminl@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s1, 48(, %s11)
	ld %s0, 56(, %s11)
	fcmp.q %s0, %s0, %s0
	brnum.d 0, %s0, .LBB38_2
	br.l .LBB38_1
.LBB38_1:
	lea %s0, __llvm_gcov_ctr.38@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.38@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_fminl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fminl@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s1, 32(, %s11)
	ld %s0, 40(, %s11)
	st %s1, 64(, %s11)
	st %s0, 72(, %s11)
	br.l .LBB38_13
.LBB38_2:
	ld %s1, 32(, %s11)
	ld %s0, 40(, %s11)
	fcmp.q %s0, %s0, %s0
	brnum.d 0, %s0, .LBB38_4
	br.l .LBB38_3
.LBB38_3:
	lea %s0, __llvm_gcov_ctr.38@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.38@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_fminl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fminl@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s1, 48(, %s11)
	ld %s0, 56(, %s11)
	st %s1, 64(, %s11)
	st %s0, 72(, %s11)
	br.l .LBB38_13
.LBB38_4:
	ld %s0, 56(, %s11)
	srl %s0, %s0, 63
                                        # kill: def $sw0 killed $sw0 killed $sx0
	ld %s1, 40(, %s11)
	srl %s1, %s1, 63
                                        # kill: def $sw1 killed $sw1 killed $sx1
	breq.w %s0, %s1, .LBB38_9
	br.l .LBB38_5
.LBB38_5:
	lea %s0, .L__profc_fminl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fminl@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, 56(, %s11)
	brlt.l -1, %s0, .LBB38_7
	br.l .LBB38_6
.LBB38_6:
	lea %s0, __llvm_gcov_ctr.38@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.38@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_fminl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fminl@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s1, 48(, %s11)
	ld %s0, 56(, %s11)
	st %s1, 16(, %s11)
	st %s0, 24(, %s11)                      # 16-byte Folded Spill
	br.l .LBB38_8
.LBB38_7:
	lea %s0, __llvm_gcov_ctr.38@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.38@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s1, 32(, %s11)
	ld %s0, 40(, %s11)
	st %s1, 16(, %s11)
	st %s0, 24(, %s11)                      # 16-byte Folded Spill
	br.l .LBB38_8
.LBB38_8:
	ld %s1, 16(, %s11)
	ld %s0, 24(, %s11)                      # 16-byte Folded Reload
	st %s1, 64(, %s11)
	st %s0, 72(, %s11)
	br.l .LBB38_13
.LBB38_9:
	ld %s3, 48(, %s11)
	ld %s2, 56(, %s11)
	ld %s1, 32(, %s11)
	ld %s0, 40(, %s11)
	fcmp.q %s0, %s0, %s2
	brgenan.d 0, %s0, .LBB38_11
	br.l .LBB38_10
.LBB38_10:
	lea %s0, __llvm_gcov_ctr.38@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.38@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc_fminl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_fminl@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s1, 48(, %s11)
	ld %s0, 56(, %s11)
	st %s1, (, %s11)
	st %s0, 8(, %s11)                       # 16-byte Folded Spill
	br.l .LBB38_12
.LBB38_11:
	lea %s0, __llvm_gcov_ctr.38@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.38@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s1, 32(, %s11)
	ld %s0, 40(, %s11)
	st %s1, (, %s11)
	st %s0, 8(, %s11)                       # 16-byte Folded Spill
	br.l .LBB38_12
.LBB38_12:
	ld %s1, (, %s11)
	ld %s0, 8(, %s11)                       # 16-byte Folded Reload
	st %s1, 64(, %s11)
	st %s0, 72(, %s11)
	br.l .LBB38_13
.LBB38_13:
	ld %s1, 64(, %s11)
	ld %s0, 72(, %s11)
	lea %s11, 80(, %s11)
	b.l.t (, %s10)
.Lfunc_end38:
	.size	fminl, .Lfunc_end38-fminl
                                        # -- End function
	.globl	l64a                            # -- Begin function l64a
	.p2align	4
	.type	l64a,@function
l64a:                                   # @l64a
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB39_6
# %bb.5:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB39_6:
	lea %s1, __llvm_gcov_ctr.39@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.39@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	st %s0, 24(, %s11)
	lea %s0, .L__profc_l64a@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_l64a@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 24(, %s11)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	lea %s0, l64a.s@lo
	and %s0, %s0, (32)0
	lea.sl %s0, l64a.s@hi(, %s0)
	st %s0, 16(, %s11)
	br.l .LBB39_1
.LBB39_1:                               # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 12(, %s11)
	breq.w 0, %s0, .LBB39_4
	br.l .LBB39_2
.LBB39_2:                               #   in Loop: Header=BB39_1 Depth=1
	lea %s0, .L__profc_l64a@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_l64a@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.zx %s1, 12(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s1, 63, %s0
	lea %s0, digits@lo
	and %s0, %s0, (32)0
	lea.sl %s0, digits@hi(, %s0)
	ld1b.zx %s1, (%s1, %s0)
	ld %s0, 16(, %s11)
	st1b %s1, (, %s0)
	br.l .LBB39_3
.LBB39_3:                               #   in Loop: Header=BB39_1 Depth=1
	lea %s0, __llvm_gcov_ctr.39@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.39@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 16(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 16(, %s11)
	ldl.sx %s1, 12(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (32)0
	srl %s0, %s0, 6
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	br.l .LBB39_1
.LBB39_4:
	ld %s0, 16(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	st1b %s1, (, %s0)
	lea %s0, l64a.s@lo
	and %s0, %s0, (32)0
	lea.sl %s0, l64a.s@hi(, %s0)
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end39:
	.size	l64a, .Lfunc_end39-l64a
                                        # -- End function
	.globl	srand                           # -- Begin function srand
	.p2align	4
	.type	srand,@function
srand:                                  # @srand
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB40_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB40_2:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.40@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.40@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc_srand@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_srand@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	adds.w.sx %s0, -1, %s0
	adds.w.zx %s0, %s0, (0)1
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	lea %s0, seed@lo
	and %s0, %s0, (32)0
	lea.sl %s0, seed@hi(, %s0)
	st %s1, (, %s0)
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end40:
	.size	srand, .Lfunc_end40-srand
                                        # -- End function
	.globl	rand                            # -- Begin function rand
	.p2align	4
	.type	rand,@function
rand:                                   # @rand
# %bb.0:
	lea %s0, __llvm_gcov_ctr.41@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.41@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_rand@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_rand@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, seed@lo
	and %s0, %s0, (32)0
	lea.sl %s0, seed@hi(, %s0)
	ld %s1, (, %s0)
	lea %s2, 1284865837
	lea.sl %s2, 1481765933(, %s2)
	muls.l %s1, %s1, %s2
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, (, %s0)
	srl %s0, %s0, 33
	b.l.t (, %s10)
.Lfunc_end41:
	.size	rand, .Lfunc_end41-rand
                                        # -- End function
	.globl	insque                          # -- Begin function insque
	.p2align	4
	.type	insque,@function
insque:                                 # @insque
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB42_6
# %bb.5:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB42_6:
	st %s0, 24(, %s11)
	st %s1, 16(, %s11)
	lea %s0, .L__profc_insque@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_insque@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 24(, %s11)
	st %s0, 8(, %s11)
	ld %s0, 16(, %s11)
	st %s0, (, %s11)
	ld %s0, (, %s11)
	brne.l 0, %s0, .LBB42_2
	br.l .LBB42_1
.LBB42_1:
	lea %s0, __llvm_gcov_ctr.42@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.42@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_insque@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_insque@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 8(, %s11)
	or %s1, 0, (0)1
	st %s1, 8(, %s0)
	ld %s0, 8(, %s11)
	st %s1, (, %s0)
	br.l .LBB42_4
.LBB42_2:
	lea %s0, __llvm_gcov_ctr.42@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.42@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, (, %s11)
	ld %s1, (, %s0)
	ld %s0, 8(, %s11)
	st %s1, (, %s0)
	ld %s1, (, %s11)
	ld %s0, 8(, %s11)
	st %s1, 8(, %s0)
	ld %s1, 8(, %s11)
	ld %s0, (, %s11)
	st %s1, (, %s0)
	ld %s0, 8(, %s11)
	ld %s0, (, %s0)
	breq.l 0, %s0, .LBB42_4
	br.l .LBB42_3
.LBB42_3:
	lea %s0, __llvm_gcov_ctr.42@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.42@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_insque@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_insque@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s1, 8(, %s11)
	ld %s0, (, %s1)
	st %s1, 8(, %s0)
	br.l .LBB42_4
.LBB42_4:
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end42:
	.size	insque, .Lfunc_end42-insque
                                        # -- End function
	.globl	remque                          # -- Begin function remque
	.p2align	4
	.type	remque,@function
remque:                                 # @remque
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB43_6
# %bb.5:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB43_6:
	lea %s1, __llvm_gcov_ctr.43@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.43@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	st %s0, 8(, %s11)
	lea %s0, .L__profc_remque@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_remque@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 8(, %s11)
	st %s0, (, %s11)
	ld %s0, (, %s11)
	ld %s0, (, %s0)
	breq.l 0, %s0, .LBB43_2
	br.l .LBB43_1
.LBB43_1:
	lea %s0, __llvm_gcov_ctr.43@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.43@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_remque@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_remque@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, (, %s11)
	ld %s1, 8(, %s0)
	ld %s0, (, %s0)
	st %s1, 8(, %s0)
	br.l .LBB43_2
.LBB43_2:
	ld %s0, (, %s11)
	ld %s0, 8(, %s0)
	breq.l 0, %s0, .LBB43_4
	br.l .LBB43_3
.LBB43_3:
	lea %s0, __llvm_gcov_ctr.43@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.43@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_remque@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_remque@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, (, %s11)
	ld %s1, (, %s0)
	ld %s0, 8(, %s0)
	st %s1, (, %s0)
	br.l .LBB43_4
.LBB43_4:
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end43:
	.size	remque, .Lfunc_end43-remque
                                        # -- End function
	.globl	lsearch                         # -- Begin function lsearch
	.p2align	4
	.type	lsearch,@function
lsearch:                                # @lsearch
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -336(, %s11)
	brge.l.t %s11, %s8, .LBB44_9
# %bb.8:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB44_9:
	st %s0, -16(, %s9)
	st %s1, -24(, %s9)
	st %s2, -32(, %s9)
	st %s3, -40(, %s9)
	st %s4, -48(, %s9)
	lea %s0, .L__profc_lsearch@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_lsearch@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, -40(, %s9)
	st %s0, -80(, %s9)                      # 8-byte Folded Spill
	ld %s0, -24(, %s9)
	st %s0, -56(, %s9)
	ld %s0, -32(, %s9)
	ld %s0, (, %s0)
	st %s0, -64(, %s9)
	or %s0, 0, (0)1
	st %s0, -72(, %s9)
	br.l .LBB44_1
.LBB44_1:                               # =>This Inner Loop Header: Depth=1
	ld %s1, -72(, %s9)
	ld %s0, -64(, %s9)
	cmpu.l %s0, %s0, %s1
	brge.l 0, %s0, .LBB44_6
	br.l .LBB44_2
.LBB44_2:                               #   in Loop: Header=BB44_1 Depth=1
	ld %s4, -80(, %s9)                      # 8-byte Folded Reload
	lea %s0, .L__profc_lsearch@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_lsearch@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s2, -48(, %s9)
	ld %s0, -16(, %s9)
	ld %s1, -56(, %s9)
	ld %s3, -72(, %s9)
	muls.l %s3, %s3, %s4
	adds.l %s1, %s1, %s3
	or %s12, 0, %s2
	bsic %s10, (, %s12)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	brne.w 0, %s0, .LBB44_4
	br.l .LBB44_3
.LBB44_3:
	ld %s2, -80(, %s9)                      # 8-byte Folded Reload
	lea %s0, __llvm_gcov_ctr.44@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.44@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_lsearch@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_lsearch@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, -56(, %s9)
	ld %s1, -72(, %s9)
	muls.l %s1, %s1, %s2
	adds.l %s0, %s0, %s1
	st %s0, -8(, %s9)
	br.l .LBB44_7
.LBB44_4:                               #   in Loop: Header=BB44_1 Depth=1
	br.l .LBB44_5
.LBB44_5:                               #   in Loop: Header=BB44_1 Depth=1
	lea %s0, __llvm_gcov_ctr.44@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.44@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, -72(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -72(, %s9)
	br.l .LBB44_1
.LBB44_6:
	ld %s2, -80(, %s9)                      # 8-byte Folded Reload
	lea %s0, __llvm_gcov_ctr.44@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.44@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, -64(, %s9)
	lea %s1, 1(, %s0)
	ld %s0, -32(, %s9)
	st %s1, (, %s0)
	ld %s0, -56(, %s9)
	ld %s1, -64(, %s9)
	muls.l %s1, %s1, %s2
	adds.l %s0, %s0, %s1
	st %s0, -88(, %s9)                      # 8-byte Folded Spill
	ld %s1, -16(, %s9)
	ld %s2, -40(, %s9)
	lea %s3, memcpy@lo
	and %s3, %s3, (32)0
	lea.sl %s3, memcpy@hi(, %s3)
	or %s12, 0, %s3
	bsic %s10, (, %s12)
                                        # kill: def $sx1 killed $sx0
	ld %s0, -88(, %s9)                      # 8-byte Folded Reload
	st %s0, -8(, %s9)
	br.l .LBB44_7
.LBB44_7:
	ld %s0, -8(, %s9)
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end44:
	.size	lsearch, .Lfunc_end44-lsearch
                                        # -- End function
	.globl	lfind                           # -- Begin function lfind
	.p2align	4
	.type	lfind,@function
lfind:                                  # @lfind
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -320(, %s11)
	brge.l.t %s11, %s8, .LBB45_9
# %bb.8:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB45_9:
	st %s0, -16(, %s9)
	st %s1, -24(, %s9)
	st %s2, -32(, %s9)
	st %s3, -40(, %s9)
	st %s4, -48(, %s9)
	lea %s0, .L__profc_lfind@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_lfind@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, -40(, %s9)
	st %s0, -80(, %s9)                      # 8-byte Folded Spill
	ld %s0, -24(, %s9)
	st %s0, -56(, %s9)
	ld %s0, -32(, %s9)
	ld %s0, (, %s0)
	st %s0, -64(, %s9)
	or %s0, 0, (0)1
	st %s0, -72(, %s9)
	br.l .LBB45_1
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	ld %s1, -72(, %s9)
	ld %s0, -64(, %s9)
	cmpu.l %s0, %s0, %s1
	brge.l 0, %s0, .LBB45_6
	br.l .LBB45_2
.LBB45_2:                               #   in Loop: Header=BB45_1 Depth=1
	ld %s4, -80(, %s9)                      # 8-byte Folded Reload
	lea %s0, .L__profc_lfind@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_lfind@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s2, -48(, %s9)
	ld %s0, -16(, %s9)
	ld %s1, -56(, %s9)
	ld %s3, -72(, %s9)
	muls.l %s3, %s3, %s4
	adds.l %s1, %s1, %s3
	or %s12, 0, %s2
	bsic %s10, (, %s12)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	brne.w 0, %s0, .LBB45_4
	br.l .LBB45_3
.LBB45_3:
	ld %s2, -80(, %s9)                      # 8-byte Folded Reload
	lea %s0, __llvm_gcov_ctr.45@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.45@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_lfind@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_lfind@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, -56(, %s9)
	ld %s1, -72(, %s9)
	muls.l %s1, %s1, %s2
	adds.l %s0, %s0, %s1
	st %s0, -8(, %s9)
	br.l .LBB45_7
.LBB45_4:                               #   in Loop: Header=BB45_1 Depth=1
	br.l .LBB45_5
.LBB45_5:                               #   in Loop: Header=BB45_1 Depth=1
	lea %s0, __llvm_gcov_ctr.45@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.45@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, -72(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -72(, %s9)
	br.l .LBB45_1
.LBB45_6:
	lea %s0, __llvm_gcov_ctr.45@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.45@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	or %s0, 0, (0)1
	st %s0, -8(, %s9)
	br.l .LBB45_7
.LBB45_7:
	ld %s0, -8(, %s9)
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end45:
	.size	lfind, .Lfunc_end45-lfind
                                        # -- End function
	.globl	abs                             # -- Begin function abs
	.p2align	4
	.type	abs,@function
abs:                                    # @abs
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB46_5
# %bb.4:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB46_5:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	lea %s0, .L__profc_abs@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_abs@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	brgt.w 1, %s0, .LBB46_2
	br.l .LBB46_1
.LBB46_1:
	lea %s0, __llvm_gcov_ctr.46@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.46@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_abs@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_abs@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s0, 12(, %s11)
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB46_3
.LBB46_2:
	lea %s0, __llvm_gcov_ctr.46@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.46@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s0, 12(, %s11)
	subs.w.sx %s0, 0, %s0
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB46_3
.LBB46_3:
	ldl.sx %s0, 8(, %s11)                   # 4-byte Folded Reload
	adds.w.sx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end46:
	.size	abs, .Lfunc_end46-abs
                                        # -- End function
	.globl	atoi                            # -- Begin function atoi
	.p2align	4
	.type	atoi,@function
atoi:                                   # @atoi
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -272(, %s11)
	brge.l.t %s11, %s8, .LBB47_16
# %bb.15:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB47_16:
	st %s0, -8(, %s9)
	lea %s0, .L__profc_atoi@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atoi@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -12(, %s9)
	stl %s0, -16(, %s9)
	br.l .LBB47_1
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, -8(, %s9)
	ld1b.sx %s1, (, %s0)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s1, isspace@lo
	and %s1, %s1, (32)0
	lea.sl %s1, isspace@hi(, %s1)
	or %s12, 0, %s1
	bsic %s10, (, %s12)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB47_3
	br.l .LBB47_2
.LBB47_2:                               #   in Loop: Header=BB47_1 Depth=1
	lea %s0, __llvm_gcov_ctr.47@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.47@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_atoi@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atoi@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, -8(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -8(, %s9)
	br.l .LBB47_1
.LBB47_3:
	ld %s0, -8(, %s9)
	ld1b.sx %s0, (, %s0)
	stl %s0, -20(, %s9)                     # 4-byte Folded Spill
	breq.w 43, %s0, .LBB47_5
	br.l .LBB47_14
.LBB47_14:
	ldl.sx %s0, -20(, %s9)                  # 4-byte Folded Reload
	brne.w 45, %s0, .LBB47_7
	br.l .LBB47_4
.LBB47_4:
	lea %s0, __llvm_gcov_ctr.47@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.47@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_atoi@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atoi@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -16(, %s9)
	br.l .LBB47_6
.LBB47_5:
	lea %s0, __llvm_gcov_ctr.47@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.47@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_atoi@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atoi@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	br.l .LBB47_6
.LBB47_6:
	ld %s0, -8(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -8(, %s9)
	br.l .LBB47_7
.LBB47_7:
	lea %s0, .L__profc_atoi@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atoi@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	br.l .LBB47_8
.LBB47_8:                               # =>This Inner Loop Header: Depth=1
	ld %s0, -8(, %s9)
	ld1b.sx %s1, (, %s0)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s1, isdigit@lo
	and %s1, %s1, (32)0
	lea.sl %s1, isdigit@hi(, %s1)
	or %s12, 0, %s1
	bsic %s10, (, %s12)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB47_10
	br.l .LBB47_9
.LBB47_9:                               #   in Loop: Header=BB47_8 Depth=1
	lea %s0, __llvm_gcov_ctr.47@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.47@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_atoi@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atoi@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ldl.sx %s0, -12(, %s9)
	muls.w.sx %s0, 10, %s0
	ld %s1, -8(, %s9)
	lea %s2, 1(, %s1)
	st %s2, -8(, %s9)
	ld1b.sx %s1, (, %s1)
	subs.w.sx %s0, %s0, %s1
	adds.w.sx %s0, 48, %s0
	stl %s0, -12(, %s9)
	br.l .LBB47_8
.LBB47_10:
	ldl.sx %s0, -16(, %s9)
	breq.w 0, %s0, .LBB47_12
	br.l .LBB47_11
.LBB47_11:
	lea %s0, __llvm_gcov_ctr.47@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.47@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc_atoi@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atoi@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	ldl.sx %s0, -12(, %s9)
	stl %s0, -24(, %s9)                     # 4-byte Folded Spill
	br.l .LBB47_13
.LBB47_12:
	lea %s0, __llvm_gcov_ctr.47@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.47@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ldl.sx %s0, -12(, %s9)
	subs.w.sx %s0, 0, %s0
	stl %s0, -24(, %s9)                     # 4-byte Folded Spill
	br.l .LBB47_13
.LBB47_13:
	ldl.sx %s0, -24(, %s9)                  # 4-byte Folded Reload
	adds.w.sx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end47:
	.size	atoi, .Lfunc_end47-atoi
                                        # -- End function
	.globl	atol                            # -- Begin function atol
	.p2align	4
	.type	atol,@function
atol:                                   # @atol
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -272(, %s11)
	brge.l.t %s11, %s8, .LBB48_16
# %bb.15:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB48_16:
	st %s0, -8(, %s9)
	lea %s0, .L__profc_atol@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atol@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
	st %s0, -16(, %s9)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -20(, %s9)
	br.l .LBB48_1
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, -8(, %s9)
	ld1b.sx %s1, (, %s0)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s1, isspace@lo
	and %s1, %s1, (32)0
	lea.sl %s1, isspace@hi(, %s1)
	or %s12, 0, %s1
	bsic %s10, (, %s12)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB48_3
	br.l .LBB48_2
.LBB48_2:                               #   in Loop: Header=BB48_1 Depth=1
	lea %s0, __llvm_gcov_ctr.48@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.48@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_atol@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atol@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, -8(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -8(, %s9)
	br.l .LBB48_1
.LBB48_3:
	ld %s0, -8(, %s9)
	ld1b.sx %s0, (, %s0)
	stl %s0, -24(, %s9)                     # 4-byte Folded Spill
	breq.w 43, %s0, .LBB48_5
	br.l .LBB48_14
.LBB48_14:
	ldl.sx %s0, -24(, %s9)                  # 4-byte Folded Reload
	brne.w 45, %s0, .LBB48_7
	br.l .LBB48_4
.LBB48_4:
	lea %s0, __llvm_gcov_ctr.48@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.48@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_atol@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atol@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -20(, %s9)
	br.l .LBB48_6
.LBB48_5:
	lea %s0, __llvm_gcov_ctr.48@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.48@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_atol@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atol@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	br.l .LBB48_6
.LBB48_6:
	ld %s0, -8(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -8(, %s9)
	br.l .LBB48_7
.LBB48_7:
	lea %s0, .L__profc_atol@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atol@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	br.l .LBB48_8
.LBB48_8:                               # =>This Inner Loop Header: Depth=1
	ld %s0, -8(, %s9)
	ld1b.sx %s1, (, %s0)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s1, isdigit@lo
	and %s1, %s1, (32)0
	lea.sl %s1, isdigit@hi(, %s1)
	or %s12, 0, %s1
	bsic %s10, (, %s12)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB48_10
	br.l .LBB48_9
.LBB48_9:                               #   in Loop: Header=BB48_8 Depth=1
	lea %s0, __llvm_gcov_ctr.48@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.48@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_atol@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atol@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s0, -16(, %s9)
	muls.l %s0, 10, %s0
	ld %s1, -8(, %s9)
	lea %s2, 1(, %s1)
	st %s2, -8(, %s9)
	ld1b.sx %s1, (, %s1)
	adds.w.sx %s1, -48, %s1
	adds.w.sx %s2, %s1, (0)1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	subs.l %s0, %s0, %s1
	st %s0, -16(, %s9)
	br.l .LBB48_8
.LBB48_10:
	ldl.sx %s0, -20(, %s9)
	breq.w 0, %s0, .LBB48_12
	br.l .LBB48_11
.LBB48_11:
	lea %s0, __llvm_gcov_ctr.48@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.48@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc_atol@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atol@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	ld %s0, -16(, %s9)
	st %s0, -32(, %s9)                      # 8-byte Folded Spill
	br.l .LBB48_13
.LBB48_12:
	lea %s0, __llvm_gcov_ctr.48@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.48@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s0, -16(, %s9)
	subs.l %s0, 0, %s0
	st %s0, -32(, %s9)                      # 8-byte Folded Spill
	br.l .LBB48_13
.LBB48_13:
	ld %s0, -32(, %s9)                      # 8-byte Folded Reload
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end48:
	.size	atol, .Lfunc_end48-atol
                                        # -- End function
	.globl	atoll                           # -- Begin function atoll
	.p2align	4
	.type	atoll,@function
atoll:                                  # @atoll
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -272(, %s11)
	brge.l.t %s11, %s8, .LBB49_16
# %bb.15:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB49_16:
	st %s0, -8(, %s9)
	lea %s0, .L__profc_atoll@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atoll@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
	st %s0, -16(, %s9)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -20(, %s9)
	br.l .LBB49_1
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, -8(, %s9)
	ld1b.sx %s1, (, %s0)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s1, isspace@lo
	and %s1, %s1, (32)0
	lea.sl %s1, isspace@hi(, %s1)
	or %s12, 0, %s1
	bsic %s10, (, %s12)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB49_3
	br.l .LBB49_2
.LBB49_2:                               #   in Loop: Header=BB49_1 Depth=1
	lea %s0, __llvm_gcov_ctr.49@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.49@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_atoll@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atoll@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, -8(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -8(, %s9)
	br.l .LBB49_1
.LBB49_3:
	ld %s0, -8(, %s9)
	ld1b.sx %s0, (, %s0)
	stl %s0, -24(, %s9)                     # 4-byte Folded Spill
	breq.w 43, %s0, .LBB49_5
	br.l .LBB49_14
.LBB49_14:
	ldl.sx %s0, -24(, %s9)                  # 4-byte Folded Reload
	brne.w 45, %s0, .LBB49_7
	br.l .LBB49_4
.LBB49_4:
	lea %s0, __llvm_gcov_ctr.49@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.49@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_atoll@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atoll@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -20(, %s9)
	br.l .LBB49_6
.LBB49_5:
	lea %s0, __llvm_gcov_ctr.49@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.49@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_atoll@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atoll@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	br.l .LBB49_6
.LBB49_6:
	ld %s0, -8(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -8(, %s9)
	br.l .LBB49_7
.LBB49_7:
	lea %s0, .L__profc_atoll@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atoll@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	br.l .LBB49_8
.LBB49_8:                               # =>This Inner Loop Header: Depth=1
	ld %s0, -8(, %s9)
	ld1b.sx %s1, (, %s0)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s1, isdigit@lo
	and %s1, %s1, (32)0
	lea.sl %s1, isdigit@hi(, %s1)
	or %s12, 0, %s1
	bsic %s10, (, %s12)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB49_10
	br.l .LBB49_9
.LBB49_9:                               #   in Loop: Header=BB49_8 Depth=1
	lea %s0, __llvm_gcov_ctr.49@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.49@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_atoll@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atoll@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s0, -16(, %s9)
	muls.l %s0, 10, %s0
	ld %s1, -8(, %s9)
	lea %s2, 1(, %s1)
	st %s2, -8(, %s9)
	ld1b.sx %s1, (, %s1)
	adds.w.sx %s1, -48, %s1
	adds.w.sx %s2, %s1, (0)1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	subs.l %s0, %s0, %s1
	st %s0, -16(, %s9)
	br.l .LBB49_8
.LBB49_10:
	ldl.sx %s0, -20(, %s9)
	breq.w 0, %s0, .LBB49_12
	br.l .LBB49_11
.LBB49_11:
	lea %s0, __llvm_gcov_ctr.49@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.49@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc_atoll@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_atoll@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	ld %s0, -16(, %s9)
	st %s0, -32(, %s9)                      # 8-byte Folded Spill
	br.l .LBB49_13
.LBB49_12:
	lea %s0, __llvm_gcov_ctr.49@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.49@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s0, -16(, %s9)
	subs.l %s0, 0, %s0
	st %s0, -32(, %s9)                      # 8-byte Folded Spill
	br.l .LBB49_13
.LBB49_13:
	ld %s0, -32(, %s9)                      # 8-byte Folded Reload
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end49:
	.size	atoll, .Lfunc_end49-atoll
                                        # -- End function
	.globl	bsearch                         # -- Begin function bsearch
	.p2align	4
	.type	bsearch,@function
bsearch:                                # @bsearch
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -304(, %s11)
	brge.l.t %s11, %s8, .LBB50_12
# %bb.11:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB50_12:
	st %s0, -16(, %s9)
	st %s1, -24(, %s9)
	st %s2, -32(, %s9)
	st %s3, -40(, %s9)
	st %s4, -48(, %s9)
	lea %s0, .L__profc_bsearch@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_bsearch@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	br.l .LBB50_1
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, -32(, %s9)
	breq.l 0, %s0, .LBB50_9
	br.l .LBB50_2
.LBB50_2:                               #   in Loop: Header=BB50_1 Depth=1
	lea %s0, .L__profc_bsearch@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_bsearch@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, -24(, %s9)
	ld %s1, -40(, %s9)
	ld %s2, -32(, %s9)
	srl %s2, %s2, 1
	muls.l %s1, %s1, %s2
	adds.l %s0, %s0, %s1
	st %s0, -56(, %s9)
	ld %s2, -48(, %s9)
	ld %s0, -16(, %s9)
	ld %s1, -56(, %s9)
	or %s12, 0, %s2
	bsic %s10, (, %s12)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -60(, %s9)
	ldl.sx %s0, -60(, %s9)
	brlt.w -1, %s0, .LBB50_4
	br.l .LBB50_3
.LBB50_3:                               #   in Loop: Header=BB50_1 Depth=1
	lea %s0, __llvm_gcov_ctr.50@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.50@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_bsearch@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_bsearch@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, -32(, %s9)
	srl %s0, %s0, 1
	st %s0, -32(, %s9)
	br.l .LBB50_8
.LBB50_4:                               #   in Loop: Header=BB50_1 Depth=1
	ldl.sx %s0, -60(, %s9)
	brgt.w 1, %s0, .LBB50_6
	br.l .LBB50_5
.LBB50_5:                               #   in Loop: Header=BB50_1 Depth=1
	lea %s0, .L__profc_bsearch@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_bsearch@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, -56(, %s9)
	ld %s1, -40(, %s9)
	adds.l %s0, %s0, %s1
	st %s0, -24(, %s9)
	ld %s1, -32(, %s9)
	srl %s0, %s1, 1
	xor %s0, -1, %s0
	adds.l %s0, %s0, %s1
	st %s0, -32(, %s9)
	br.l .LBB50_7
.LBB50_6:
	lea %s0, __llvm_gcov_ctr.50@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.50@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, -56(, %s9)
	st %s0, -8(, %s9)
	br.l .LBB50_10
.LBB50_7:                               #   in Loop: Header=BB50_1 Depth=1
	lea %s0, __llvm_gcov_ctr.50@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.50@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	br.l .LBB50_8
.LBB50_8:                               #   in Loop: Header=BB50_1 Depth=1
	br.l .LBB50_1
.LBB50_9:
	lea %s0, __llvm_gcov_ctr.50@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.50@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
	st %s0, -8(, %s9)
	br.l .LBB50_10
.LBB50_10:
	ld %s0, -8(, %s9)
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end50:
	.size	bsearch, .Lfunc_end50-bsearch
                                        # -- End function
	.globl	bsearch_r                       # -- Begin function bsearch_r
	.p2align	4
	.type	bsearch_r,@function
bsearch_r:                              # @bsearch_r
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -320(, %s11)
	brge.l.t %s11, %s8, .LBB51_11
# %bb.10:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB51_11:
	st %s0, -16(, %s9)
	st %s1, -24(, %s9)
	st %s2, -32(, %s9)
	st %s3, -40(, %s9)
	st %s4, -48(, %s9)
	st %s5, -56(, %s9)
	lea %s0, .L__profc_bsearch_r@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_bsearch_r@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, -24(, %s9)
	st %s0, -64(, %s9)
	ld %s0, -32(, %s9)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -68(, %s9)
	br.l .LBB51_1
.LBB51_1:                               # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, -68(, %s9)
	breq.w 0, %s0, .LBB51_8
	br.l .LBB51_2
.LBB51_2:                               #   in Loop: Header=BB51_1 Depth=1
	lea %s0, .L__profc_bsearch_r@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_bsearch_r@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, -64(, %s9)
	ldl.sx %s1, -68(, %s9)
	sra.w.sx %s1, %s1, 1
	adds.w.sx %s2, %s1, (0)1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	ld %s2, -40(, %s9)
	muls.l %s1, %s1, %s2
	adds.l %s0, %s0, %s1
	st %s0, -80(, %s9)
	ld %s3, -48(, %s9)
	ld %s0, -16(, %s9)
	ld %s1, -80(, %s9)
	ld %s2, -56(, %s9)
	or %s12, 0, %s3
	bsic %s10, (, %s12)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -72(, %s9)
	ldl.sx %s0, -72(, %s9)
	brne.w 0, %s0, .LBB51_4
	br.l .LBB51_3
.LBB51_3:
	lea %s0, __llvm_gcov_ctr.51@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.51@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_bsearch_r@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_bsearch_r@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, -80(, %s9)
	st %s0, -8(, %s9)
	br.l .LBB51_9
.LBB51_4:                               #   in Loop: Header=BB51_1 Depth=1
	ldl.sx %s0, -72(, %s9)
	brgt.w 1, %s0, .LBB51_6
	br.l .LBB51_5
.LBB51_5:                               #   in Loop: Header=BB51_1 Depth=1
	lea %s0, __llvm_gcov_ctr.51@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.51@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_bsearch_r@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_bsearch_r@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, -80(, %s9)
	ld %s1, -40(, %s9)
	adds.l %s0, %s0, %s1
	st %s0, -64(, %s9)
	ldl.sx %s0, -68(, %s9)
	adds.w.sx %s0, -1, %s0
	stl %s0, -68(, %s9)
	br.l .LBB51_6
.LBB51_6:                               #   in Loop: Header=BB51_1 Depth=1
	br.l .LBB51_7
.LBB51_7:                               #   in Loop: Header=BB51_1 Depth=1
	lea %s0, __llvm_gcov_ctr.51@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.51@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldl.sx %s0, -68(, %s9)
	sra.w.sx %s0, %s0, 1
	stl %s0, -68(, %s9)
	br.l .LBB51_1
.LBB51_8:
	lea %s0, __llvm_gcov_ctr.51@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.51@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	or %s0, 0, (0)1
	st %s0, -8(, %s9)
	br.l .LBB51_9
.LBB51_9:
	ld %s0, -8(, %s9)
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end51:
	.size	bsearch_r, .Lfunc_end51-bsearch_r
                                        # -- End function
	.globl	div                             # -- Begin function div
	.p2align	4
	.type	div,@function
div:                                    # @div
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB52_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB52_2:
	st %s2, (, %s11)                        # 8-byte Folded Spill
	or %s2, 0, %s1
	ld %s1, (, %s11)                        # 8-byte Folded Reload
	and %s1, %s1, (32)0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	and %s2, %s2, (32)0
                                        # kill: def $sw2 killed $sw2 killed $sx2
	lea %s3, __llvm_gcov_ctr.52@lo
	and %s3, %s3, (32)0
	lea.sl %s3, __llvm_gcov_ctr.52@hi(, %s3)
	ld %s4, (, %s3)
	lea %s4, 1(, %s4)
	st %s4, (, %s3)
	stl %s2, 12(, %s11)
	stl %s1, 8(, %s11)
	lea %s1, .L__profc_div@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_div@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	ldl.sx %s1, 12(, %s11)
	ldl.sx %s2, 8(, %s11)
	divs.w.sx %s1, %s1, %s2
	stl %s1, (, %s0)
	ldl.sx %s1, 12(, %s11)
	ldl.sx %s3, 8(, %s11)
	divs.w.sx %s2, %s1, %s3
	muls.w.sx %s2, %s2, %s3
	subs.w.sx %s1, %s1, %s2
	stl %s1, 4(, %s0)
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end52:
	.size	div, .Lfunc_end52-div
                                        # -- End function
	.globl	imaxabs                         # -- Begin function imaxabs
	.p2align	4
	.type	imaxabs,@function
imaxabs:                                # @imaxabs
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB53_5
# %bb.4:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB53_5:
	st %s0, 8(, %s11)
	lea %s0, .L__profc_imaxabs@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_imaxabs@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 8(, %s11)
	brgt.l 1, %s0, .LBB53_2
	br.l .LBB53_1
.LBB53_1:
	lea %s0, __llvm_gcov_ctr.53@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.53@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_imaxabs@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_imaxabs@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 8(, %s11)
	st %s0, (, %s11)                        # 8-byte Folded Spill
	br.l .LBB53_3
.LBB53_2:
	lea %s0, __llvm_gcov_ctr.53@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.53@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 8(, %s11)
	subs.l %s0, 0, %s0
	st %s0, (, %s11)                        # 8-byte Folded Spill
	br.l .LBB53_3
.LBB53_3:
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end53:
	.size	imaxabs, .Lfunc_end53-imaxabs
                                        # -- End function
	.globl	imaxdiv                         # -- Begin function imaxdiv
	.p2align	4
	.type	imaxdiv,@function
imaxdiv:                                # @imaxdiv
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB54_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB54_2:
	lea %s3, __llvm_gcov_ctr.54@lo
	and %s3, %s3, (32)0
	lea.sl %s3, __llvm_gcov_ctr.54@hi(, %s3)
	ld %s4, (, %s3)
	lea %s4, 1(, %s4)
	st %s4, (, %s3)
	st %s1, 8(, %s11)
	st %s2, (, %s11)
	lea %s1, .L__profc_imaxdiv@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_imaxdiv@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	ld %s1, 8(, %s11)
	ld %s2, (, %s11)
	divs.l %s1, %s1, %s2
	st %s1, (, %s0)
	ld %s1, 8(, %s11)
	ld %s3, (, %s11)
	divs.l %s2, %s1, %s3
	muls.l %s2, %s2, %s3
	subs.l %s1, %s1, %s2
	st %s1, 8(, %s0)
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end54:
	.size	imaxdiv, .Lfunc_end54-imaxdiv
                                        # -- End function
	.globl	labs                            # -- Begin function labs
	.p2align	4
	.type	labs,@function
labs:                                   # @labs
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB55_5
# %bb.4:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB55_5:
	st %s0, 8(, %s11)
	lea %s0, .L__profc_labs@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_labs@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 8(, %s11)
	brgt.l 1, %s0, .LBB55_2
	br.l .LBB55_1
.LBB55_1:
	lea %s0, __llvm_gcov_ctr.55@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.55@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_labs@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_labs@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 8(, %s11)
	st %s0, (, %s11)                        # 8-byte Folded Spill
	br.l .LBB55_3
.LBB55_2:
	lea %s0, __llvm_gcov_ctr.55@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.55@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 8(, %s11)
	subs.l %s0, 0, %s0
	st %s0, (, %s11)                        # 8-byte Folded Spill
	br.l .LBB55_3
.LBB55_3:
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end55:
	.size	labs, .Lfunc_end55-labs
                                        # -- End function
	.globl	ldiv                            # -- Begin function ldiv
	.p2align	4
	.type	ldiv,@function
ldiv:                                   # @ldiv
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB56_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB56_2:
	lea %s3, __llvm_gcov_ctr.56@lo
	and %s3, %s3, (32)0
	lea.sl %s3, __llvm_gcov_ctr.56@hi(, %s3)
	ld %s4, (, %s3)
	lea %s4, 1(, %s4)
	st %s4, (, %s3)
	st %s1, 8(, %s11)
	st %s2, (, %s11)
	lea %s1, .L__profc_ldiv@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_ldiv@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	ld %s1, 8(, %s11)
	ld %s2, (, %s11)
	divs.l %s1, %s1, %s2
	st %s1, (, %s0)
	ld %s1, 8(, %s11)
	ld %s3, (, %s11)
	divs.l %s2, %s1, %s3
	muls.l %s2, %s2, %s3
	subs.l %s1, %s1, %s2
	st %s1, 8(, %s0)
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end56:
	.size	ldiv, .Lfunc_end56-ldiv
                                        # -- End function
	.globl	llabs                           # -- Begin function llabs
	.p2align	4
	.type	llabs,@function
llabs:                                  # @llabs
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB57_5
# %bb.4:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB57_5:
	st %s0, 8(, %s11)
	lea %s0, .L__profc_llabs@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_llabs@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 8(, %s11)
	brgt.l 1, %s0, .LBB57_2
	br.l .LBB57_1
.LBB57_1:
	lea %s0, __llvm_gcov_ctr.57@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.57@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_llabs@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_llabs@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 8(, %s11)
	st %s0, (, %s11)                        # 8-byte Folded Spill
	br.l .LBB57_3
.LBB57_2:
	lea %s0, __llvm_gcov_ctr.57@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.57@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 8(, %s11)
	subs.l %s0, 0, %s0
	st %s0, (, %s11)                        # 8-byte Folded Spill
	br.l .LBB57_3
.LBB57_3:
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end57:
	.size	llabs, .Lfunc_end57-llabs
                                        # -- End function
	.globl	lldiv                           # -- Begin function lldiv
	.p2align	4
	.type	lldiv,@function
lldiv:                                  # @lldiv
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB58_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB58_2:
	lea %s3, __llvm_gcov_ctr.58@lo
	and %s3, %s3, (32)0
	lea.sl %s3, __llvm_gcov_ctr.58@hi(, %s3)
	ld %s4, (, %s3)
	lea %s4, 1(, %s4)
	st %s4, (, %s3)
	st %s1, 8(, %s11)
	st %s2, (, %s11)
	lea %s1, .L__profc_lldiv@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_lldiv@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	ld %s1, 8(, %s11)
	ld %s2, (, %s11)
	divs.l %s1, %s1, %s2
	st %s1, (, %s0)
	ld %s1, 8(, %s11)
	ld %s3, (, %s11)
	divs.l %s2, %s1, %s3
	muls.l %s2, %s2, %s3
	subs.l %s1, %s1, %s2
	st %s1, 8(, %s0)
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end58:
	.size	lldiv, .Lfunc_end58-lldiv
                                        # -- End function
	.globl	wcschr                          # -- Begin function wcschr
	.p2align	4
	.type	wcschr,@function
wcschr:                                 # @wcschr
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB59_12
# %bb.11:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB59_12:
	st %s1, 24(, %s11)                      # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 24(, %s11)                      # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s1, 40(, %s11)
	stl %s0, 36(, %s11)
	lea %s0, .L__profc_wcschr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcschr@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	br.l .LBB59_1
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 40(, %s11)
	ldl.sx %s0, (, %s0)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 20(, %s11)                     # 4-byte Folded Spill
	breq.w 0, %s0, .LBB59_4
	br.l .LBB59_2
.LBB59_2:                               #   in Loop: Header=BB59_1 Depth=1
	lea %s0, __llvm_gcov_ctr.59@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.59@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_wcschr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcschr@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 40(, %s11)
	ldl.sx %s0, (, %s0)
	ldl.sx %s1, 36(, %s11)
	cmps.w.sx %s3, %s0, %s1
	or %s2, 0, (0)1
	cmov.w.ne %s2, (63)0, %s3
                                        # kill: def $sw2 killed $sw2 killed $sx2
	stl %s2, 16(, %s11)                     # 4-byte Folded Spill
	stl %s2, 20(, %s11)                     # 4-byte Folded Spill
	breq.w %s0, %s1, .LBB59_4
	br.l .LBB59_3
.LBB59_3:                               #   in Loop: Header=BB59_1 Depth=1
	ldl.sx %s0, 16(, %s11)                  # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.59@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.59@hi(, %s1)
	ld %s2, 8(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 8(, %s1)
	lea %s1, .L__profc_wcschr@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_wcschr@hi(, %s1)
	ld %s2, 24(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 24(, %s1)
	stl %s0, 20(, %s11)                     # 4-byte Folded Spill
	br.l .LBB59_4
.LBB59_4:                               #   in Loop: Header=BB59_1 Depth=1
	ldl.sx %s1, 20(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB59_7
	br.l .LBB59_5
.LBB59_5:                               #   in Loop: Header=BB59_1 Depth=1
	lea %s0, .L__profc_wcschr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcschr@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	br.l .LBB59_6
.LBB59_6:                               #   in Loop: Header=BB59_1 Depth=1
	lea %s0, __llvm_gcov_ctr.59@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.59@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 40(, %s11)
	lea %s0, 4(, %s0)
	st %s0, 40(, %s11)
	br.l .LBB59_1
.LBB59_7:
	ld %s0, 40(, %s11)
	ldl.sx %s0, (, %s0)
	breq.w 0, %s0, .LBB59_9
	br.l .LBB59_8
.LBB59_8:
	lea %s0, __llvm_gcov_ctr.59@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.59@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_wcschr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcschr@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 40(, %s11)
	st %s0, 8(, %s11)                       # 8-byte Folded Spill
	br.l .LBB59_10
.LBB59_9:
	lea %s0, __llvm_gcov_ctr.59@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.59@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	or %s0, 0, (0)1
	st %s0, 8(, %s11)                       # 8-byte Folded Spill
	br.l .LBB59_10
.LBB59_10:
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end59:
	.size	wcschr, .Lfunc_end59-wcschr
                                        # -- End function
	.globl	wcscmp                          # -- Begin function wcscmp
	.p2align	4
	.type	wcscmp,@function
wcscmp:                                 # @wcscmp
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB60_14
# %bb.13:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB60_14:
	st %s0, 24(, %s11)
	st %s1, 16(, %s11)
	lea %s0, .L__profc_wcscmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcscmp@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	br.l .LBB60_1
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	ldl.sx %s0, (, %s0)
	ld %s1, 16(, %s11)
	ldl.sx %s1, (, %s1)
	or %s2, 0, (0)1
                                        # kill: def $sw2 killed $sw2 killed $sx2
	stl %s2, 12(, %s11)                     # 4-byte Folded Spill
	brne.w %s0, %s1, .LBB60_6
	br.l .LBB60_2
.LBB60_2:                               #   in Loop: Header=BB60_1 Depth=1
	lea %s0, __llvm_gcov_ctr.60@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.60@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_wcscmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcscmp@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 24(, %s11)
	ldl.sx %s0, (, %s0)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	breq.w 0, %s0, .LBB60_6
	br.l .LBB60_3
.LBB60_3:                               #   in Loop: Header=BB60_1 Depth=1
	lea %s0, __llvm_gcov_ctr.60@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.60@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_wcscmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcscmp@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	br.l .LBB60_4
.LBB60_4:                               #   in Loop: Header=BB60_1 Depth=1
	lea %s0, .L__profc_wcscmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcscmp@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 16(, %s11)
	ldl.sx %s0, (, %s0)
	or %s1, 0, (0)1
	or %s2, 0, %s1
	cmps.w.sx %s2, %s0, %s2
	cmov.w.ne %s1, (63)0, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	breq.w 0, %s0, .LBB60_6
	br.l .LBB60_5
.LBB60_5:                               #   in Loop: Header=BB60_1 Depth=1
	ldl.sx %s0, 8(, %s11)                   # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.60@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.60@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	lea %s1, .L__profc_wcscmp@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_wcscmp@hi(, %s1)
	ld %s2, 24(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 24(, %s1)
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB60_6
.LBB60_6:                               #   in Loop: Header=BB60_1 Depth=1
	ldl.sx %s1, 12(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB60_9
	br.l .LBB60_7
.LBB60_7:                               #   in Loop: Header=BB60_1 Depth=1
	lea %s0, .L__profc_wcscmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcscmp@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	br.l .LBB60_8
.LBB60_8:                               #   in Loop: Header=BB60_1 Depth=1
	lea %s0, __llvm_gcov_ctr.60@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.60@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, 24(, %s11)
	lea %s0, 4(, %s0)
	st %s0, 24(, %s11)
	ld %s0, 16(, %s11)
	lea %s0, 4(, %s0)
	st %s0, 16(, %s11)
	br.l .LBB60_1
.LBB60_9:
	ld %s0, 24(, %s11)
	ldl.sx %s1, (, %s0)
	ld %s0, 16(, %s11)
	ldl.sx %s0, (, %s0)
	cmpu.w %s0, %s0, %s1
	brge.w 0, %s0, .LBB60_11
	br.l .LBB60_10
.LBB60_10:
	lea %s0, __llvm_gcov_ctr.60@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.60@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc_wcscmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcscmp@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	or %s0, -1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB60_12
.LBB60_11:
	lea %s0, __llvm_gcov_ctr.60@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.60@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s0, 24(, %s11)
	ldl.sx %s0, (, %s0)
	ld %s1, 16(, %s11)
	ldl.sx %s1, (, %s1)
	cmpu.w %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.gt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB60_12
.LBB60_12:
	ldl.sx %s0, 4(, %s11)                   # 4-byte Folded Reload
	adds.w.sx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end60:
	.size	wcscmp, .Lfunc_end60-wcscmp
                                        # -- End function
	.globl	wcscpy                          # -- Begin function wcscpy
	.p2align	4
	.type	wcscpy,@function
wcscpy:                                 # @wcscpy
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB61_5
# %bb.4:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB61_5:
	lea %s2, __llvm_gcov_ctr.61@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.61@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s0, 24(, %s11)
	st %s1, 16(, %s11)
	lea %s0, .L__profc_wcscpy@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcscpy@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 24(, %s11)
	st %s0, 8(, %s11)
	br.l .LBB61_1
.LBB61_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 16(, %s11)
	lea %s1, 4(, %s0)
	st %s1, 16(, %s11)
	ldl.sx %s0, (, %s0)
	ld %s1, 24(, %s11)
	lea %s2, 4(, %s1)
	st %s2, 24(, %s11)
	stl %s0, (, %s1)
	breq.w 0, %s0, .LBB61_3
	br.l .LBB61_2
.LBB61_2:                               #   in Loop: Header=BB61_1 Depth=1
	lea %s0, __llvm_gcov_ctr.61@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.61@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_wcscpy@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcscpy@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	br.l .LBB61_1
.LBB61_3:
	ld %s0, 8(, %s11)
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end61:
	.size	wcscpy, .Lfunc_end61-wcscpy
                                        # -- End function
	.globl	wcslen                          # -- Begin function wcslen
	.p2align	4
	.type	wcslen,@function
wcslen:                                 # @wcslen
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB62_6
# %bb.5:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB62_6:
	lea %s1, __llvm_gcov_ctr.62@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.62@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	st %s0, 8(, %s11)
	lea %s0, .L__profc_wcslen@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcslen@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 8(, %s11)
	st %s0, (, %s11)
	br.l .LBB62_1
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 8(, %s11)
	ldl.sx %s0, (, %s0)
	breq.w 0, %s0, .LBB62_4
	br.l .LBB62_2
.LBB62_2:                               #   in Loop: Header=BB62_1 Depth=1
	lea %s0, .L__profc_wcslen@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcslen@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	br.l .LBB62_3
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
	lea %s0, __llvm_gcov_ctr.62@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.62@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 8(, %s11)
	lea %s0, 4(, %s0)
	st %s0, 8(, %s11)
	br.l .LBB62_1
.LBB62_4:
	ld %s0, 8(, %s11)
	ld %s1, (, %s11)
	subs.l %s0, %s0, %s1
	sra.l %s0, %s0, 2
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end62:
	.size	wcslen, .Lfunc_end62-wcslen
                                        # -- End function
	.globl	wcsncmp                         # -- Begin function wcsncmp
	.p2align	4
	.type	wcsncmp,@function
wcsncmp:                                # @wcsncmp
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB63_19
# %bb.18:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB63_19:
	st %s0, 40(, %s11)
	st %s1, 32(, %s11)
	st %s2, 24(, %s11)
	lea %s0, .L__profc_wcsncmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcsncmp@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	br.l .LBB63_1
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 20(, %s11)                     # 4-byte Folded Spill
	breq.l 0, %s0, .LBB63_8
	br.l .LBB63_2
.LBB63_2:                               #   in Loop: Header=BB63_1 Depth=1
	lea %s0, __llvm_gcov_ctr.63@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.63@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_wcsncmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcsncmp@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	ld %s0, 40(, %s11)
	ldl.sx %s0, (, %s0)
	ld %s1, 32(, %s11)
	ldl.sx %s1, (, %s1)
	or %s2, 0, (0)1
                                        # kill: def $sw2 killed $sw2 killed $sx2
	stl %s2, 20(, %s11)                     # 4-byte Folded Spill
	brne.w %s0, %s1, .LBB63_8
	br.l .LBB63_3
.LBB63_3:                               #   in Loop: Header=BB63_1 Depth=1
	lea %s0, __llvm_gcov_ctr.63@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.63@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_wcsncmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcsncmp@hi(, %s0)
	ld %s1, 56(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 56(, %s0)
	br.l .LBB63_4
.LBB63_4:                               #   in Loop: Header=BB63_1 Depth=1
	lea %s0, .L__profc_wcsncmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcsncmp@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 40(, %s11)
	ldl.sx %s0, (, %s0)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 20(, %s11)                     # 4-byte Folded Spill
	breq.w 0, %s0, .LBB63_8
	br.l .LBB63_5
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
	lea %s0, __llvm_gcov_ctr.63@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.63@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_wcsncmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcsncmp@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	br.l .LBB63_6
.LBB63_6:                               #   in Loop: Header=BB63_1 Depth=1
	lea %s0, .L__profc_wcsncmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcsncmp@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 32(, %s11)
	ldl.sx %s0, (, %s0)
	or %s1, 0, (0)1
	or %s2, 0, %s1
	cmps.w.sx %s2, %s0, %s2
	cmov.w.ne %s1, (63)0, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 16(, %s11)                     # 4-byte Folded Spill
	stl %s1, 20(, %s11)                     # 4-byte Folded Spill
	breq.w 0, %s0, .LBB63_8
	br.l .LBB63_7
.LBB63_7:                               #   in Loop: Header=BB63_1 Depth=1
	ldl.sx %s0, 16(, %s11)                  # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.63@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.63@hi(, %s1)
	ld %s2, 24(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 24(, %s1)
	lea %s1, .L__profc_wcsncmp@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_wcsncmp@hi(, %s1)
	ld %s2, 24(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 24(, %s1)
	stl %s0, 20(, %s11)                     # 4-byte Folded Spill
	br.l .LBB63_8
.LBB63_8:                               #   in Loop: Header=BB63_1 Depth=1
	ldl.sx %s1, 20(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB63_11
	br.l .LBB63_9
.LBB63_9:                               #   in Loop: Header=BB63_1 Depth=1
	lea %s0, .L__profc_wcsncmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcsncmp@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	br.l .LBB63_10
.LBB63_10:                              #   in Loop: Header=BB63_1 Depth=1
	lea %s0, __llvm_gcov_ctr.63@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.63@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 24(, %s11)
	lea %s0, -1(, %s0)
	st %s0, 24(, %s11)
	ld %s0, 40(, %s11)
	lea %s0, 4(, %s0)
	st %s0, 40(, %s11)
	ld %s0, 32(, %s11)
	lea %s0, 4(, %s0)
	st %s0, 32(, %s11)
	br.l .LBB63_1
.LBB63_11:
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB63_16
	br.l .LBB63_12
.LBB63_12:
	lea %s0, .L__profc_wcsncmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcsncmp@hi(, %s0)
	ld %s1, 64(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 64(, %s0)
	ld %s0, 40(, %s11)
	ldl.sx %s1, (, %s0)
	ld %s0, 32(, %s11)
	ldl.sx %s0, (, %s0)
	cmpu.w %s0, %s0, %s1
	brge.w 0, %s0, .LBB63_14
	br.l .LBB63_13
.LBB63_13:
	lea %s0, __llvm_gcov_ctr.63@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.63@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	lea %s0, .L__profc_wcsncmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wcsncmp@hi(, %s0)
	ld %s1, 72(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 72(, %s0)
	or %s0, -1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB63_15
.LBB63_14:
	lea %s0, __llvm_gcov_ctr.63@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.63@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	ld %s0, 40(, %s11)
	ldl.sx %s0, (, %s0)
	ld %s1, 32(, %s11)
	ldl.sx %s1, (, %s1)
	cmpu.w %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.gt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB63_15
.LBB63_15:
	ldl.sx %s0, 12(, %s11)                  # 4-byte Folded Reload
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB63_17
.LBB63_16:
	lea %s0, __llvm_gcov_ctr.63@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.63@hi(, %s0)
	ld %s1, 56(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 56(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB63_17
.LBB63_17:
	ldl.sx %s0, 8(, %s11)                   # 4-byte Folded Reload
	adds.w.sx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end63:
	.size	wcsncmp, .Lfunc_end63-wcsncmp
                                        # -- End function
	.globl	wmemchr                         # -- Begin function wmemchr
	.p2align	4
	.type	wmemchr,@function
wmemchr:                                # @wmemchr
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB64_12
# %bb.11:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB64_12:
	st %s1, 16(, %s11)                      # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 16(, %s11)                      # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s1, 40(, %s11)
	stl %s0, 36(, %s11)
	st %s2, 24(, %s11)
	lea %s0, .L__profc_wmemchr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wmemchr@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	br.l .LBB64_1
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	breq.l 0, %s0, .LBB64_4
	br.l .LBB64_2
.LBB64_2:                               #   in Loop: Header=BB64_1 Depth=1
	lea %s0, __llvm_gcov_ctr.64@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.64@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_wmemchr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wmemchr@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 40(, %s11)
	ldl.sx %s0, (, %s0)
	ldl.sx %s1, 36(, %s11)
	cmps.w.sx %s3, %s0, %s1
	or %s2, 0, (0)1
	cmov.w.ne %s2, (63)0, %s3
                                        # kill: def $sw2 killed $sw2 killed $sx2
	stl %s2, 8(, %s11)                      # 4-byte Folded Spill
	stl %s2, 12(, %s11)                     # 4-byte Folded Spill
	breq.w %s0, %s1, .LBB64_4
	br.l .LBB64_3
.LBB64_3:                               #   in Loop: Header=BB64_1 Depth=1
	ldl.sx %s0, 8(, %s11)                   # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.64@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.64@hi(, %s1)
	ld %s2, 8(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 8(, %s1)
	lea %s1, .L__profc_wmemchr@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_wmemchr@hi(, %s1)
	ld %s2, 24(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 24(, %s1)
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB64_4
.LBB64_4:                               #   in Loop: Header=BB64_1 Depth=1
	ldl.sx %s1, 12(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB64_7
	br.l .LBB64_5
.LBB64_5:                               #   in Loop: Header=BB64_1 Depth=1
	lea %s0, .L__profc_wmemchr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wmemchr@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	br.l .LBB64_6
.LBB64_6:                               #   in Loop: Header=BB64_1 Depth=1
	lea %s0, __llvm_gcov_ctr.64@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.64@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 24(, %s11)
	lea %s0, -1(, %s0)
	st %s0, 24(, %s11)
	ld %s0, 40(, %s11)
	lea %s0, 4(, %s0)
	st %s0, 40(, %s11)
	br.l .LBB64_1
.LBB64_7:
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB64_9
	br.l .LBB64_8
.LBB64_8:
	lea %s0, __llvm_gcov_ctr.64@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.64@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_wmemchr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wmemchr@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 40(, %s11)
	st %s0, (, %s11)                        # 8-byte Folded Spill
	br.l .LBB64_10
.LBB64_9:
	lea %s0, __llvm_gcov_ctr.64@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.64@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	or %s0, 0, (0)1
	st %s0, (, %s11)                        # 8-byte Folded Spill
	br.l .LBB64_10
.LBB64_10:
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end64:
	.size	wmemchr, .Lfunc_end64-wmemchr
                                        # -- End function
	.globl	wmemcmp                         # -- Begin function wmemcmp
	.p2align	4
	.type	wmemcmp,@function
wmemcmp:                                # @wmemcmp
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB65_15
# %bb.14:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB65_15:
	st %s0, 40(, %s11)
	st %s1, 32(, %s11)
	st %s2, 24(, %s11)
	lea %s0, .L__profc_wmemcmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wmemcmp@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	br.l .LBB65_1
.LBB65_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 20(, %s11)                     # 4-byte Folded Spill
	breq.l 0, %s0, .LBB65_4
	br.l .LBB65_2
.LBB65_2:                               #   in Loop: Header=BB65_1 Depth=1
	lea %s0, __llvm_gcov_ctr.65@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.65@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_wmemcmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wmemcmp@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 40(, %s11)
	ldl.sx %s0, (, %s0)
	ld %s1, 32(, %s11)
	ldl.sx %s1, (, %s1)
	cmps.w.sx %s3, %s0, %s1
	or %s2, 0, (0)1
	cmov.w.eq %s2, (63)0, %s3
                                        # kill: def $sw2 killed $sw2 killed $sx2
	stl %s2, 16(, %s11)                     # 4-byte Folded Spill
	stl %s2, 20(, %s11)                     # 4-byte Folded Spill
	brne.w %s0, %s1, .LBB65_4
	br.l .LBB65_3
.LBB65_3:                               #   in Loop: Header=BB65_1 Depth=1
	ldl.sx %s0, 16(, %s11)                  # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.65@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.65@hi(, %s1)
	ld %s2, 8(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 8(, %s1)
	lea %s1, .L__profc_wmemcmp@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_wmemcmp@hi(, %s1)
	ld %s2, 24(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 24(, %s1)
	stl %s0, 20(, %s11)                     # 4-byte Folded Spill
	br.l .LBB65_4
.LBB65_4:                               #   in Loop: Header=BB65_1 Depth=1
	ldl.sx %s1, 20(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB65_7
	br.l .LBB65_5
.LBB65_5:                               #   in Loop: Header=BB65_1 Depth=1
	lea %s0, .L__profc_wmemcmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wmemcmp@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	br.l .LBB65_6
.LBB65_6:                               #   in Loop: Header=BB65_1 Depth=1
	lea %s0, __llvm_gcov_ctr.65@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.65@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 24(, %s11)
	lea %s0, -1(, %s0)
	st %s0, 24(, %s11)
	ld %s0, 40(, %s11)
	lea %s0, 4(, %s0)
	st %s0, 40(, %s11)
	ld %s0, 32(, %s11)
	lea %s0, 4(, %s0)
	st %s0, 32(, %s11)
	br.l .LBB65_1
.LBB65_7:
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB65_12
	br.l .LBB65_8
.LBB65_8:
	lea %s0, .L__profc_wmemcmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wmemcmp@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 40(, %s11)
	ldl.sx %s1, (, %s0)
	ld %s0, 32(, %s11)
	ldl.sx %s0, (, %s0)
	cmpu.w %s0, %s0, %s1
	brge.w 0, %s0, .LBB65_10
	br.l .LBB65_9
.LBB65_9:
	lea %s0, __llvm_gcov_ctr.65@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.65@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_wmemcmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wmemcmp@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	or %s0, -1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB65_11
.LBB65_10:
	lea %s0, __llvm_gcov_ctr.65@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.65@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 40(, %s11)
	ldl.sx %s0, (, %s0)
	ld %s1, 32(, %s11)
	ldl.sx %s1, (, %s1)
	cmpu.w %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.gt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB65_11
.LBB65_11:
	ldl.sx %s0, 12(, %s11)                  # 4-byte Folded Reload
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB65_13
.LBB65_12:
	lea %s0, __llvm_gcov_ctr.65@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.65@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB65_13
.LBB65_13:
	ldl.sx %s0, 8(, %s11)                   # 4-byte Folded Reload
	adds.w.sx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end65:
	.size	wmemcmp, .Lfunc_end65-wmemcmp
                                        # -- End function
	.globl	wmemcpy                         # -- Begin function wmemcpy
	.p2align	4
	.type	wmemcpy,@function
wmemcpy:                                # @wmemcpy
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB66_5
# %bb.4:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB66_5:
	lea %s3, __llvm_gcov_ctr.66@lo
	and %s3, %s3, (32)0
	lea.sl %s3, __llvm_gcov_ctr.66@hi(, %s3)
	ld %s4, (, %s3)
	lea %s4, 1(, %s4)
	st %s4, (, %s3)
	st %s0, 24(, %s11)
	st %s1, 16(, %s11)
	st %s2, 8(, %s11)
	lea %s0, .L__profc_wmemcpy@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wmemcpy@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 24(, %s11)
	st %s0, (, %s11)
	br.l .LBB66_1
.LBB66_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 8(, %s11)
	lea %s1, -1(, %s0)
	st %s1, 8(, %s11)
	breq.l 0, %s0, .LBB66_3
	br.l .LBB66_2
.LBB66_2:                               #   in Loop: Header=BB66_1 Depth=1
	lea %s0, __llvm_gcov_ctr.66@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.66@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_wmemcpy@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wmemcpy@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 16(, %s11)
	lea %s1, 4(, %s0)
	st %s1, 16(, %s11)
	ldl.sx %s1, (, %s0)
	ld %s0, 24(, %s11)
	lea %s2, 4(, %s0)
	st %s2, 24(, %s11)
	stl %s1, (, %s0)
	br.l .LBB66_1
.LBB66_3:
	ld %s0, (, %s11)
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end66:
	.size	wmemcpy, .Lfunc_end66-wmemcpy
                                        # -- End function
	.globl	wmemmove                        # -- Begin function wmemmove
	.p2align	4
	.type	wmemmove,@function
wmemmove:                               # @wmemmove
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB67_14
# %bb.13:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB67_14:
	st %s0, 32(, %s11)
	st %s1, 24(, %s11)
	st %s2, 16(, %s11)
	lea %s0, .L__profc_wmemmove@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wmemmove@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 32(, %s11)
	st %s0, 8(, %s11)
	ld %s0, 32(, %s11)
	ld %s1, 24(, %s11)
	brne.l %s0, %s1, .LBB67_2
	br.l .LBB67_1
.LBB67_1:
	lea %s0, __llvm_gcov_ctr.67@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.67@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_wmemmove@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wmemmove@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 32(, %s11)
	st %s0, 40(, %s11)
	br.l .LBB67_12
.LBB67_2:
	ld %s0, 32(, %s11)
	ld %s1, 24(, %s11)
	subs.l %s1, %s0, %s1
	ld %s0, 16(, %s11)
	sll %s0, %s0, 2
	cmpu.l %s0, %s0, %s1
	brge.l 0, %s0, .LBB67_7
	br.l .LBB67_3
.LBB67_3:
	lea %s0, __llvm_gcov_ctr.67@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.67@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_wmemmove@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wmemmove@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	br.l .LBB67_4
.LBB67_4:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 16(, %s11)
	lea %s1, -1(, %s0)
	st %s1, 16(, %s11)
	breq.l 0, %s0, .LBB67_6
	br.l .LBB67_5
.LBB67_5:                               #   in Loop: Header=BB67_4 Depth=1
	lea %s0, __llvm_gcov_ctr.67@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.67@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_wmemmove@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wmemmove@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, 24(, %s11)
	ld %s1, 16(, %s11)
	sll %s1, %s1, 2
	ldl.sx %s2, (%s1, %s0)
	ld %s0, 32(, %s11)
	stl %s2, (%s1, %s0)
	br.l .LBB67_4
.LBB67_6:
	br.l .LBB67_11
.LBB67_7:
	br.l .LBB67_8
.LBB67_8:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 16(, %s11)
	lea %s1, -1(, %s0)
	st %s1, 16(, %s11)
	breq.l 0, %s0, .LBB67_10
	br.l .LBB67_9
.LBB67_9:                               #   in Loop: Header=BB67_8 Depth=1
	lea %s0, __llvm_gcov_ctr.67@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.67@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_wmemmove@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wmemmove@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 24(, %s11)
	lea %s1, 4(, %s0)
	st %s1, 24(, %s11)
	ldl.sx %s1, (, %s0)
	ld %s0, 32(, %s11)
	lea %s2, 4(, %s0)
	st %s2, 32(, %s11)
	stl %s1, (, %s0)
	br.l .LBB67_8
.LBB67_10:
	lea %s0, __llvm_gcov_ctr.67@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.67@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	br.l .LBB67_11
.LBB67_11:
	ld %s0, 8(, %s11)
	st %s0, 40(, %s11)
	br.l .LBB67_12
.LBB67_12:
	ld %s0, 40(, %s11)
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end67:
	.size	wmemmove, .Lfunc_end67-wmemmove
                                        # -- End function
	.globl	wmemset                         # -- Begin function wmemset
	.p2align	4
	.type	wmemset,@function
wmemset:                                # @wmemset
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB68_5
# %bb.4:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB68_5:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s3, __llvm_gcov_ctr.68@lo
	and %s3, %s3, (32)0
	lea.sl %s3, __llvm_gcov_ctr.68@hi(, %s3)
	ld %s4, (, %s3)
	lea %s4, 1(, %s4)
	st %s4, (, %s3)
	st %s1, 40(, %s11)
	stl %s0, 36(, %s11)
	st %s2, 24(, %s11)
	lea %s0, .L__profc_wmemset@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wmemset@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 40(, %s11)
	st %s0, 16(, %s11)
	br.l .LBB68_1
.LBB68_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	lea %s1, -1(, %s0)
	st %s1, 24(, %s11)
	breq.l 0, %s0, .LBB68_3
	br.l .LBB68_2
.LBB68_2:                               #   in Loop: Header=BB68_1 Depth=1
	lea %s0, __llvm_gcov_ctr.68@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.68@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_wmemset@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_wmemset@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s1, 36(, %s11)
	ld %s0, 40(, %s11)
	lea %s2, 4(, %s0)
	st %s2, 40(, %s11)
	stl %s1, (, %s0)
	br.l .LBB68_1
.LBB68_3:
	ld %s0, 16(, %s11)
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end68:
	.size	wmemset, .Lfunc_end68-wmemset
                                        # -- End function
	.globl	bcopy                           # -- Begin function bcopy
	.p2align	4
	.type	bcopy,@function
bcopy:                                  # @bcopy
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB69_15
# %bb.14:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB69_15:
	st %s0, 40(, %s11)
	st %s1, 32(, %s11)
	st %s2, 24(, %s11)
	lea %s0, .L__profc_bcopy@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_bcopy@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 40(, %s11)
	st %s0, 16(, %s11)
	ld %s0, 32(, %s11)
	st %s0, 8(, %s11)
	ld %s1, 16(, %s11)
	ld %s0, 8(, %s11)
	cmpu.l %s0, %s0, %s1
	brge.l 0, %s0, .LBB69_6
	br.l .LBB69_1
.LBB69_1:
	lea %s0, __llvm_gcov_ctr.69@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.69@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_bcopy@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_bcopy@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s1, 24(, %s11)
	ld %s0, 16(, %s11)
	adds.l %s0, %s0, %s1
	st %s0, 16(, %s11)
	ld %s1, 24(, %s11)
	ld %s0, 8(, %s11)
	adds.l %s0, %s0, %s1
	st %s0, 8(, %s11)
	br.l .LBB69_2
.LBB69_2:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB69_5
	br.l .LBB69_3
.LBB69_3:                               #   in Loop: Header=BB69_2 Depth=1
	lea %s0, .L__profc_bcopy@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_bcopy@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 16(, %s11)
	lea %s1, -1(, %s0)
	st %s1, 16(, %s11)
	ld1b.zx %s1, -1(, %s0)
	ld %s0, 8(, %s11)
	lea %s2, -1(, %s0)
	st %s2, 8(, %s11)
	st1b %s1, -1(, %s0)
	br.l .LBB69_4
.LBB69_4:                               #   in Loop: Header=BB69_2 Depth=1
	lea %s0, __llvm_gcov_ctr.69@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.69@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 24(, %s11)
	lea %s0, -1(, %s0)
	st %s0, 24(, %s11)
	br.l .LBB69_2
.LBB69_5:
	br.l .LBB69_13
.LBB69_6:
	ld %s0, 16(, %s11)
	ld %s1, 8(, %s11)
	breq.l %s0, %s1, .LBB69_12
	br.l .LBB69_7
.LBB69_7:
	lea %s0, .L__profc_bcopy@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_bcopy@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	br.l .LBB69_8
.LBB69_8:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB69_11
	br.l .LBB69_9
.LBB69_9:                               #   in Loop: Header=BB69_8 Depth=1
	lea %s0, __llvm_gcov_ctr.69@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.69@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_bcopy@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_bcopy@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 16(, %s11)
	lea %s1, 1(, %s0)
	st %s1, 16(, %s11)
	ld1b.zx %s1, (, %s0)
	ld %s0, 8(, %s11)
	lea %s2, 1(, %s0)
	st %s2, 8(, %s11)
	st1b %s1, (, %s0)
	br.l .LBB69_10
.LBB69_10:                              #   in Loop: Header=BB69_8 Depth=1
	ld %s0, 24(, %s11)
	lea %s0, -1(, %s0)
	st %s0, 24(, %s11)
	br.l .LBB69_8
.LBB69_11:
	lea %s0, __llvm_gcov_ctr.69@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.69@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	br.l .LBB69_12
.LBB69_12:
	lea %s0, __llvm_gcov_ctr.69@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.69@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	br.l .LBB69_13
.LBB69_13:
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end69:
	.size	bcopy, .Lfunc_end69-bcopy
                                        # -- End function
	.globl	rotl64                          # -- Begin function rotl64
	.p2align	4
	.type	rotl64,@function
rotl64:                                 # @rotl64
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB70_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB70_2:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s2, __llvm_gcov_ctr.70@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.70@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s1, 24(, %s11)
	stl %s0, 20(, %s11)
	lea %s0, .L__profc_rotl64@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_rotl64@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s1, 24(, %s11)
	ldl.sx %s3, 20(, %s11)
	sll %s0, %s1, %s3
	lea %s2, 64
                                        # kill: def $sw2 killed $sw2 killed $sx2
	subs.w.sx %s2, %s2, %s3
	srl %s1, %s1, %s2
	or %s0, %s0, %s1
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end70:
	.size	rotl64, .Lfunc_end70-rotl64
                                        # -- End function
	.globl	rotr64                          # -- Begin function rotr64
	.p2align	4
	.type	rotr64,@function
rotr64:                                 # @rotr64
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB71_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB71_2:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s2, __llvm_gcov_ctr.71@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.71@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s1, 24(, %s11)
	stl %s0, 20(, %s11)
	lea %s0, .L__profc_rotr64@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_rotr64@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s1, 24(, %s11)
	ldl.sx %s3, 20(, %s11)
	srl %s0, %s1, %s3
	lea %s2, 64
                                        # kill: def $sw2 killed $sw2 killed $sx2
	subs.w.sx %s2, %s2, %s3
	sll %s1, %s1, %s2
	or %s0, %s0, %s1
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end71:
	.size	rotr64, .Lfunc_end71-rotr64
                                        # -- End function
	.globl	rotl32                          # -- Begin function rotl32
	.p2align	4
	.type	rotl32,@function
rotl32:                                 # @rotl32
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB72_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB72_2:
	st %s1, (, %s11)                        # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	and %s1, %s1, (32)0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	lea %s2, __llvm_gcov_ctr.72@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.72@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	stl %s1, 12(, %s11)
	stl %s0, 8(, %s11)
	lea %s0, .L__profc_rotl32@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_rotl32@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s3, 12(, %s11)
	ldl.sx %s0, 8(, %s11)
	sla.w.sx %s1, %s3, %s0
	subs.w.sx %s2, 32, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s3
	and %s0, %s0, (32)0
	srl %s0, %s0, %s2
	or %s2, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	or %s0, %s0, %s1
	and %s0, %s0, (32)0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end72:
	.size	rotl32, .Lfunc_end72-rotl32
                                        # -- End function
	.globl	rotr32                          # -- Begin function rotr32
	.p2align	4
	.type	rotr32,@function
rotr32:                                 # @rotr32
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB73_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB73_2:
	st %s1, (, %s11)                        # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	and %s1, %s1, (32)0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	lea %s2, __llvm_gcov_ctr.73@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.73@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	stl %s1, 12(, %s11)
	stl %s0, 8(, %s11)
	lea %s0, .L__profc_rotr32@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_rotr32@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	ldl.sx %s1, 8(, %s11)
                                        # implicit-def: $sx2
	or %s2, 0, %s0
	and %s2, %s2, (32)0
	srl %s2, %s2, %s1
                                        # kill: def $sw2 killed $sw2 killed $sx2
	subs.w.sx %s1, 32, %s1
	sla.w.sx %s0, %s0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	or %s0, %s0, %s1
	and %s0, %s0, (32)0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end73:
	.size	rotr32, .Lfunc_end73-rotr32
                                        # -- End function
	.globl	rotl_sz                         # -- Begin function rotl_sz
	.p2align	4
	.type	rotl_sz,@function
rotl_sz:                                # @rotl_sz
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB74_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB74_2:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s2, __llvm_gcov_ctr.74@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.74@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s1, 24(, %s11)
	stl %s0, 20(, %s11)
	lea %s0, .L__profc_rotl_sz@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_rotl_sz@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s1, 24(, %s11)
	ldl.sx %s3, 20(, %s11)
	sll %s0, %s1, %s3
	lea %s2, 64
                                        # kill: def $sw2 killed $sw2 killed $sx2
	subs.w.sx %s2, %s2, %s3
	srl %s1, %s1, %s2
	or %s0, %s0, %s1
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end74:
	.size	rotl_sz, .Lfunc_end74-rotl_sz
                                        # -- End function
	.globl	rotr_sz                         # -- Begin function rotr_sz
	.p2align	4
	.type	rotr_sz,@function
rotr_sz:                                # @rotr_sz
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB75_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB75_2:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s2, __llvm_gcov_ctr.75@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.75@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s1, 24(, %s11)
	stl %s0, 20(, %s11)
	lea %s0, .L__profc_rotr_sz@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_rotr_sz@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s1, 24(, %s11)
	ldl.sx %s3, 20(, %s11)
	srl %s0, %s1, %s3
	lea %s2, 64
                                        # kill: def $sw2 killed $sw2 killed $sx2
	subs.w.sx %s2, %s2, %s3
	sll %s1, %s1, %s2
	or %s0, %s0, %s1
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end75:
	.size	rotr_sz, .Lfunc_end75-rotr_sz
                                        # -- End function
	.globl	rotl16                          # -- Begin function rotl16
	.p2align	4
	.type	rotl16,@function
rotl16:                                 # @rotl16
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB76_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB76_2:
	st %s1, (, %s11)                        # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	and %s1, %s1, (32)0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	lea %s2, __llvm_gcov_ctr.76@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.76@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st2b %s1, 14(, %s11)
	stl %s0, 8(, %s11)
	lea %s0, .L__profc_rotl16@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_rotl16@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld2b.zx %s3, 14(, %s11)
	ldl.sx %s0, 8(, %s11)
	sla.w.sx %s1, %s3, %s0
	subs.w.sx %s2, 16, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s3
	and %s0, %s0, (32)0
	srl %s0, %s0, %s2
	or %s2, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	or %s0, %s0, %s1
	and %s0, %s0, (48)0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end76:
	.size	rotl16, .Lfunc_end76-rotl16
                                        # -- End function
	.globl	rotr16                          # -- Begin function rotr16
	.p2align	4
	.type	rotr16,@function
rotr16:                                 # @rotr16
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB77_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB77_2:
	st %s1, (, %s11)                        # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	and %s1, %s1, (32)0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	lea %s2, __llvm_gcov_ctr.77@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.77@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st2b %s1, 14(, %s11)
	stl %s0, 8(, %s11)
	lea %s0, .L__profc_rotr16@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_rotr16@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld2b.zx %s0, 14(, %s11)
	ldl.sx %s1, 8(, %s11)
                                        # implicit-def: $sx2
	or %s2, 0, %s0
	and %s2, %s2, (32)0
	srl %s2, %s2, %s1
                                        # kill: def $sw2 killed $sw2 killed $sx2
	subs.w.sx %s1, 16, %s1
	sla.w.sx %s0, %s0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	or %s0, %s0, %s1
	and %s0, %s0, (48)0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end77:
	.size	rotr16, .Lfunc_end77-rotr16
                                        # -- End function
	.globl	rotl8                           # -- Begin function rotl8
	.p2align	4
	.type	rotl8,@function
rotl8:                                  # @rotl8
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB78_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB78_2:
	st %s1, (, %s11)                        # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	and %s1, %s1, (32)0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	lea %s2, __llvm_gcov_ctr.78@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.78@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st1b %s1, 15(, %s11)
	stl %s0, 8(, %s11)
	lea %s0, .L__profc_rotl8@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_rotl8@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld1b.zx %s3, 15(, %s11)
	ldl.sx %s0, 8(, %s11)
	sla.w.sx %s1, %s3, %s0
	subs.w.sx %s2, 8, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s3
	and %s0, %s0, (32)0
	srl %s0, %s0, %s2
	or %s2, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	or %s0, %s0, %s1
	and %s0, %s0, (56)0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end78:
	.size	rotl8, .Lfunc_end78-rotl8
                                        # -- End function
	.globl	rotr8                           # -- Begin function rotr8
	.p2align	4
	.type	rotr8,@function
rotr8:                                  # @rotr8
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB79_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB79_2:
	st %s1, (, %s11)                        # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	and %s1, %s1, (32)0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	lea %s2, __llvm_gcov_ctr.79@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.79@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st1b %s1, 15(, %s11)
	stl %s0, 8(, %s11)
	lea %s0, .L__profc_rotr8@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_rotr8@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld1b.zx %s0, 15(, %s11)
	ldl.sx %s1, 8(, %s11)
                                        # implicit-def: $sx2
	or %s2, 0, %s0
	and %s2, %s2, (32)0
	srl %s2, %s2, %s1
                                        # kill: def $sw2 killed $sw2 killed $sx2
	subs.w.sx %s1, 8, %s1
	sla.w.sx %s0, %s0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	or %s0, %s0, %s1
	and %s0, %s0, (56)0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end79:
	.size	rotr8, .Lfunc_end79-rotr8
                                        # -- End function
	.globl	bswap_16                        # -- Begin function bswap_16
	.p2align	4
	.type	bswap_16,@function
bswap_16:                               # @bswap_16
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB80_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB80_2:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.80@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.80@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	st2b %s0, 14(, %s11)
	lea %s0, .L__profc_bswap_16@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_bswap_16@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, 255
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st2b %s0, 12(, %s11)
	ld2b.zx %s3, 12(, %s11)
	sla.w.sx %s2, %s3, 8
	ld2b.zx %s1, 14(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	and %s1, %s0, %s1
	or %s2, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	and %s1, %s1, (32)0
	srl %s1, %s1, 8
	or %s2, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s3
	and %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	sla.w.sx %s0, %s0, 8
                                        # implicit-def: $sx1
	or %s1, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	or %s0, %s0, %s1
	and %s0, %s0, (48)0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end80:
	.size	bswap_16, .Lfunc_end80-bswap_16
                                        # -- End function
	.globl	bswap_32                        # -- Begin function bswap_32
	.p2align	4
	.type	bswap_32,@function
bswap_32:                               # @bswap_32
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB81_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB81_2:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.81@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.81@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc_bswap_32@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_bswap_32@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, 255
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	ldl.sx %s4, 12(, %s11)
	ldl.sx %s3, 8(, %s11)
	sla.w.sx %s2, %s3, 24
                                        # implicit-def: $sx1
	or %s1, 0, %s4
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	and %s0, %s1, %s0
	or %s2, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	and %s0, %s0, (32)0
	srl %s0, %s0, 24
	or %s6, 0, %s0
	sla.w.sx %s0, %s3, 16
                                        # implicit-def: $sx2
	or %s2, 0, %s0
	and %s0, %s1, %s2
	or %s5, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s5
	and %s0, %s0, (32)0
	srl %s0, %s0, 8
                                        # kill: def $sw0 killed $sw0 killed $sx0
                                        # implicit-def: $sx5
	or %s5, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s6
	or %s0, %s0, %s5
	sla.w.sx %s5, %s4, 8
                                        # implicit-def: $sx4
	or %s4, 0, %s5
	and %s2, %s2, %s4
	or %s0, %s0, %s2
                                        # implicit-def: $sx2
	or %s2, 0, %s3
	and %s1, %s1, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	sla.w.sx %s2, %s1, 24
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	or %s0, %s0, %s1
	and %s0, %s0, (32)0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end81:
	.size	bswap_32, .Lfunc_end81-bswap_32
                                        # -- End function
	.globl	bswap_64                        # -- Begin function bswap_64
	.p2align	4
	.type	bswap_64,@function
bswap_64:                               # @bswap_64
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB82_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB82_2:
	lea %s1, __llvm_gcov_ctr.82@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.82@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	st %s0, 8(, %s11)
	lea %s0, .L__profc_bswap_64@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_bswap_64@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, 255
	st %s0, (, %s11)
	ld %s1, 8(, %s11)
	ld %s2, (, %s11)
	sll %s0, %s2, 56
	and %s0, %s1, %s0
	srl %s0, %s0, 56
	sll %s3, %s2, 48
	and %s4, %s1, %s3
	srl %s4, %s4, 40
	or %s0, %s0, %s4
	sll %s4, %s2, 40
	and %s5, %s1, %s4
	srl %s5, %s5, 24
	or %s0, %s0, %s5
	sll %s5, %s2, 32
	and %s6, %s1, %s5
	srl %s6, %s6, 8
	or %s0, %s0, %s6
	sll %s6, %s1, 8
	and %s5, %s5, %s6
	or %s0, %s0, %s5
	sll %s5, %s1, 24
	and %s4, %s4, %s5
	or %s0, %s0, %s4
	sll %s4, %s1, 40
	and %s3, %s3, %s4
	or %s0, %s0, %s3
	and %s1, %s1, %s2
	sll %s1, %s1, 56
	or %s0, %s0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end82:
	.size	bswap_64, .Lfunc_end82-bswap_64
                                        # -- End function
	.globl	ffs                             # -- Begin function ffs
	.p2align	4
	.type	ffs,@function
ffs:                                    # @ffs
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB83_9
# %bb.8:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB83_9:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	lea %s0, .L__profc_ffs@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ffs@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 4(, %s11)
	br.l .LBB83_1
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 4(, %s11)
	cmpu.w %s0, 31, %s0
	brgt.w 0, %s0, .LBB83_6
	br.l .LBB83_2
.LBB83_2:                               #   in Loop: Header=BB83_1 Depth=1
	lea %s0, .L__profc_ffs@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ffs@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s2, 8(, %s11)
	ldl.sx %s1, 4(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	and %s0, %s0, (32)0
	srl %s0, %s0, %s1
	or %s1, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB83_4
	br.l .LBB83_3
.LBB83_3:
	lea %s0, __llvm_gcov_ctr.83@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.83@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_ffs@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ffs@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldl.sx %s0, 4(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 12(, %s11)
	br.l .LBB83_7
.LBB83_4:                               #   in Loop: Header=BB83_1 Depth=1
	br.l .LBB83_5
.LBB83_5:                               #   in Loop: Header=BB83_1 Depth=1
	lea %s0, __llvm_gcov_ctr.83@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.83@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s0, 4(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 4(, %s11)
	br.l .LBB83_1
.LBB83_6:
	lea %s0, __llvm_gcov_ctr.83@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.83@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	br.l .LBB83_7
.LBB83_7:
	ldl.sx %s1, 12(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end83:
	.size	ffs, .Lfunc_end83-ffs
                                        # -- End function
	.globl	libiberty_ffs                   # -- Begin function libiberty_ffs
	.p2align	4
	.type	libiberty_ffs,@function
libiberty_ffs:                          # @libiberty_ffs
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB84_9
# %bb.8:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB84_9:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	lea %s0, .L__profc_libiberty_ffs@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_libiberty_ffs@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 8(, %s11)
	brne.w 0, %s0, .LBB84_2
	br.l .LBB84_1
.LBB84_1:
	lea %s0, __llvm_gcov_ctr.84@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.84@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_libiberty_ffs@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_libiberty_ffs@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	br.l .LBB84_7
.LBB84_2:
	lea %s0, __llvm_gcov_ctr.84@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.84@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 4(, %s11)
	br.l .LBB84_3
.LBB84_3:                               # =>This Inner Loop Header: Depth=1
	ld1b.zx %s1, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	brne.w 0, %s0, .LBB84_6
	br.l .LBB84_4
.LBB84_4:                               #   in Loop: Header=BB84_3 Depth=1
	lea %s0, .L__profc_libiberty_ffs@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_libiberty_ffs@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldl.sx %s0, 8(, %s11)
	sra.w.sx %s0, %s0, 1
	stl %s0, 8(, %s11)
	br.l .LBB84_5
.LBB84_5:                               #   in Loop: Header=BB84_3 Depth=1
	lea %s0, __llvm_gcov_ctr.84@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.84@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldl.sx %s0, 4(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 4(, %s11)
	br.l .LBB84_3
.LBB84_6:
	ldl.sx %s0, 4(, %s11)
	stl %s0, 12(, %s11)
	br.l .LBB84_7
.LBB84_7:
	ldl.sx %s1, 12(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end84:
	.size	libiberty_ffs, .Lfunc_end84-libiberty_ffs
                                        # -- End function
	.globl	gl_isinff                       # -- Begin function gl_isinff
	.p2align	4
	.type	gl_isinff,@function
gl_isinff:                              # @gl_isinff
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB85_5
# %bb.4:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB85_5:
                                        # kill: def $sf0 killed $sf0 killed $sx0
	lea %s1, __llvm_gcov_ctr.85@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.85@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stu %s0, 12(, %s11)
	lea %s0, .L__profc_gl_isinff@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_gl_isinff@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldu %s0, 12(, %s11)
	or %s1, 1, (0)1
	or %s2, 0, %s1
	lea.sl %s1, -8388609
                                        # kill: def $sf1 killed $sf1 killed $sx1
	stl %s2, 8(, %s11)                      # 4-byte Folded Spill
	brlt.s %s0, %s1, .LBB85_3
	br.l .LBB85_1
.LBB85_1:
	lea %s0, __llvm_gcov_ctr.85@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.85@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_gl_isinff@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_gl_isinff@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldu %s0, 12(, %s11)
	lea.sl %s1, 2139095039
                                        # kill: def $sf1 killed $sf1 killed $sx1
	fcmp.s %s3, %s0, %s1
	or %s2, 0, (0)1
	cmov.s.gt %s2, (63)0, %s3
                                        # kill: def $sw2 killed $sw2 killed $sx2
	stl %s2, 4(, %s11)                      # 4-byte Folded Spill
	stl %s2, 8(, %s11)                      # 4-byte Folded Spill
	brgt.s %s0, %s1, .LBB85_3
	br.l .LBB85_2
.LBB85_2:
	ldl.sx %s0, 4(, %s11)                   # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.85@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.85@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	lea %s1, .L__profc_gl_isinff@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_gl_isinff@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB85_3
.LBB85_3:
	ldl.sx %s1, 8(, %s11)                   # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end85:
	.size	gl_isinff, .Lfunc_end85-gl_isinff
                                        # -- End function
	.globl	gl_isinfd                       # -- Begin function gl_isinfd
	.p2align	4
	.type	gl_isinfd,@function
gl_isinfd:                              # @gl_isinfd
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB86_5
# %bb.4:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB86_5:
	lea %s1, __llvm_gcov_ctr.86@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.86@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	st %s0, 8(, %s11)
	lea %s0, .L__profc_gl_isinfd@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_gl_isinfd@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 8(, %s11)
	or %s1, 1, (0)1
	or %s2, 0, %s1
	lea %s1, -1
	and %s1, %s1, (32)0
	lea.sl %s1, -1048577(, %s1)
	stl %s2, 4(, %s11)                      # 4-byte Folded Spill
	brlt.d %s0, %s1, .LBB86_3
	br.l .LBB86_1
.LBB86_1:
	lea %s0, __llvm_gcov_ctr.86@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.86@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_gl_isinfd@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_gl_isinfd@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 8(, %s11)
	lea %s1, -1
	and %s1, %s1, (32)0
	lea.sl %s1, 2146435071(, %s1)
	fcmp.d %s3, %s0, %s1
	or %s2, 0, (0)1
	cmov.d.gt %s2, (63)0, %s3
                                        # kill: def $sw2 killed $sw2 killed $sx2
	stl %s2, (, %s11)                       # 4-byte Folded Spill
	stl %s2, 4(, %s11)                      # 4-byte Folded Spill
	brgt.d %s0, %s1, .LBB86_3
	br.l .LBB86_2
.LBB86_2:
	ldl.sx %s0, (, %s11)                    # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.86@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.86@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	lea %s1, .L__profc_gl_isinfd@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_gl_isinfd@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	stl %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB86_3
.LBB86_3:
	ldl.sx %s1, 4(, %s11)                   # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end86:
	.size	gl_isinfd, .Lfunc_end86-gl_isinfd
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function gl_isinfl
.LCPI87_0:
	.8byte	0xffffffffffffffff              # fp128 -1.18973149535723176508575932662800702E+4932
	.8byte	0xfffeffffffffffff
.LCPI87_1:
	.8byte	0xffffffffffffffff              # fp128 1.18973149535723176508575932662800702E+4932
	.8byte	0x7ffeffffffffffff
	.text
	.globl	gl_isinfl
	.p2align	4
	.type	gl_isinfl,@function
gl_isinfl:                              # @gl_isinfl
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB87_5
# %bb.4:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB87_5:
	lea %s2, __llvm_gcov_ctr.87@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.87@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s1, 16(, %s11)
	st %s0, 24(, %s11)
	lea %s0, .L__profc_gl_isinfl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_gl_isinfl@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s5, 16(, %s11)
	ld %s4, 24(, %s11)
	or %s0, 1, (0)1
	or %s1, 0, %s0
	lea %s0, .LCPI87_0@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .LCPI87_0@hi(, %s0)
	ld %s6, 8(, %s0)
                                        # implicit-def: $q1
	or %s2, 0, %s6
	ld %s0, (, %s0)
	or %s3, 0, %s0
	fcmp.q %s0, %s2, %s4
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	brlt.d 0, %s0, .LBB87_3
	br.l .LBB87_1
.LBB87_1:
	lea %s0, __llvm_gcov_ctr.87@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.87@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_gl_isinfl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_gl_isinfl@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s5, 16(, %s11)
	ld %s4, 24(, %s11)
	lea %s0, .LCPI87_1@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .LCPI87_1@hi(, %s0)
	ld %s1, 8(, %s0)
                                        # implicit-def: $q1
	or %s2, 0, %s1
	ld %s0, (, %s0)
	or %s3, 0, %s0
	fcmp.q %s1, %s4, %s2
	or %s0, 0, (0)1
	cmov.d.gt %s0, (63)0, %s1
	or %s1, 0, %s0
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	fcmp.q %s0, %s2, %s4
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	brgt.d 0, %s0, .LBB87_3
	br.l .LBB87_2
.LBB87_2:
	ldl.sx %s0, 8(, %s11)                   # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.87@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.87@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	lea %s1, .L__profc_gl_isinfl@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_gl_isinfl@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB87_3
.LBB87_3:
	ldl.sx %s1, 12(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end87:
	.size	gl_isinfl, .Lfunc_end87-gl_isinfl
                                        # -- End function
	.globl	_Qp_itoq                        # -- Begin function _Qp_itoq
	.p2align	4
	.type	_Qp_itoq,@function
_Qp_itoq:                               # @_Qp_itoq
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB88_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB88_2:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s2, __llvm_gcov_ctr.88@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.88@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s1, 24(, %s11)
	stl %s0, 20(, %s11)
	lea %s0, .L__profc__Qp_itoq@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc__Qp_itoq@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 20(, %s11)
	cvt.d.w %s0, %s0
	cvt.q.d %s2, %s0
	ld %s0, 24(, %s11)
	or %s1, 0, %s2
	st %s1, 8(, %s0)
	or %s1, 0, %s3
	st %s1, (, %s0)
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end88:
	.size	_Qp_itoq, .Lfunc_end88-_Qp_itoq
                                        # -- End function
	.globl	ldexpf                          # -- Begin function ldexpf
	.p2align	4
	.type	ldexpf,@function
ldexpf:                                 # @ldexpf
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB89_12
# %bb.11:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB89_12:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
                                        # kill: def $sf1 killed $sf1 killed $sx1
	lea %s2, __llvm_gcov_ctr.89@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.89@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	stu %s1, 28(, %s11)
	stl %s0, 24(, %s11)
	lea %s0, .L__profc_ldexpf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexpf@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldu %s0, 28(, %s11)
	brnan.s %s0, %s0, .LBB89_10
	br.l .LBB89_1
.LBB89_1:
	lea %s0, __llvm_gcov_ctr.89@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.89@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_ldexpf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexpf@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldu %s1, 28(, %s11)
	fadd.s %s0, %s1, %s1
	breq.s %s0, %s1, .LBB89_10
	br.l .LBB89_2
.LBB89_2:
	lea %s0, __llvm_gcov_ctr.89@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.89@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_ldexpf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexpf@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	br.l .LBB89_3
.LBB89_3:
	lea %s0, .L__profc_ldexpf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexpf@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s1, 24(, %s11)
                                        # implicit-def: $sx2
	or %s2, 0, %s1
	and %s2, %s2, (32)0
	srl %s2, %s2, 31
                                        # kill: def $sw2 killed $sw2 killed $sx2
	adds.w.zx %s2, %s2, (0)1
                                        # implicit-def: $sx3
	or %s3, 0, %s2
	ld %s2, 32(, %s0)
	adds.l %s2, %s2, %s3
	st %s2, 32(, %s0)
	lea.sl %s0, 1073741824
	or %s2, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	lea.sl %s2, 1056964608
	or %s3, 0, %s2
                                        # implicit-def: $sx2
	or %s2, 0, %s3
	cmov.w.lt %s0, %s2, %s1
                                        # kill: def $sf0 killed $sf0 killed $sx0
	stu %s0, 20(, %s11)
	br.l .LBB89_4
.LBB89_4:                               # =>This Inner Loop Header: Depth=1
	lea %s0, .L__profc_ldexpf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexpf@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ldl.sx %s0, 24(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	and %s1, %s1, (32)0
	srl %s1, %s1, 31
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s2, %s0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	lea %s2, -2
	and %s2, %s2, (32)0
	and %s1, %s1, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	subs.w.sx %s0, %s0, %s1
	breq.w 0, %s0, .LBB89_6
	br.l .LBB89_5
.LBB89_5:                               #   in Loop: Header=BB89_4 Depth=1
	lea %s0, __llvm_gcov_ctr.89@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.89@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_ldexpf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexpf@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	ldu %s1, 20(, %s11)
	ldu %s0, 28(, %s11)
	fmul.s %s0, %s0, %s1
	stu %s0, 28(, %s11)
	br.l .LBB89_6
.LBB89_6:                               #   in Loop: Header=BB89_4 Depth=1
	ldl.sx %s0, 24(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	and %s1, %s1, (32)0
	srl %s1, %s1, 31
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	sra.w.sx %s0, %s0, 1
	stl %s0, 24(, %s11)
	ldl.sx %s0, 24(, %s11)
	brne.w 0, %s0, .LBB89_8
	br.l .LBB89_7
.LBB89_7:
	lea %s0, .L__profc_ldexpf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexpf@hi(, %s0)
	ld %s1, 56(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 56(, %s0)
	br.l .LBB89_9
.LBB89_8:                               #   in Loop: Header=BB89_4 Depth=1
	lea %s0, __llvm_gcov_ctr.89@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.89@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ldu %s0, 20(, %s11)
	fmul.s %s0, %s0, %s0
	stu %s0, 20(, %s11)
	br.l .LBB89_4
.LBB89_9:
	br.l .LBB89_10
.LBB89_10:
	ldu %s1, 28(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end89:
	.size	ldexpf, .Lfunc_end89-ldexpf
                                        # -- End function
	.globl	ldexp                           # -- Begin function ldexp
	.p2align	4
	.type	ldexp,@function
ldexp:                                  # @ldexp
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB90_12
# %bb.11:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB90_12:
	st %s1, (, %s11)                        # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s2, __llvm_gcov_ctr.90@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.90@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s1, 24(, %s11)
	stl %s0, 20(, %s11)
	lea %s0, .L__profc_ldexp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexp@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 24(, %s11)
	brnan.d %s0, %s0, .LBB90_10
	br.l .LBB90_1
.LBB90_1:
	lea %s0, __llvm_gcov_ctr.90@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.90@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_ldexp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexp@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s1, 24(, %s11)
	fadd.d %s0, %s1, %s1
	breq.d %s0, %s1, .LBB90_10
	br.l .LBB90_2
.LBB90_2:
	lea %s0, __llvm_gcov_ctr.90@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.90@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_ldexp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexp@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	br.l .LBB90_3
.LBB90_3:
	lea %s0, .L__profc_ldexp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexp@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s1, 20(, %s11)
                                        # implicit-def: $sx2
	or %s2, 0, %s1
	and %s2, %s2, (32)0
	srl %s2, %s2, 31
                                        # kill: def $sw2 killed $sw2 killed $sx2
	adds.w.zx %s2, %s2, (0)1
                                        # implicit-def: $sx3
	or %s3, 0, %s2
	ld %s2, 32(, %s0)
	adds.l %s2, %s2, %s3
	st %s2, 32(, %s0)
	lea.sl %s0, 1073741824
	lea.sl %s2, 1071644672
	cmov.w.lt %s0, %s2, %s1
	st %s0, 8(, %s11)
	br.l .LBB90_4
.LBB90_4:                               # =>This Inner Loop Header: Depth=1
	lea %s0, .L__profc_ldexp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexp@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ldl.sx %s0, 20(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	and %s1, %s1, (32)0
	srl %s1, %s1, 31
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s2, %s0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	lea %s2, -2
	and %s2, %s2, (32)0
	and %s1, %s1, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	subs.w.sx %s0, %s0, %s1
	breq.w 0, %s0, .LBB90_6
	br.l .LBB90_5
.LBB90_5:                               #   in Loop: Header=BB90_4 Depth=1
	lea %s0, __llvm_gcov_ctr.90@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.90@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_ldexp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexp@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	ld %s1, 8(, %s11)
	ld %s0, 24(, %s11)
	fmul.d %s0, %s0, %s1
	st %s0, 24(, %s11)
	br.l .LBB90_6
.LBB90_6:                               #   in Loop: Header=BB90_4 Depth=1
	ldl.sx %s0, 20(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	and %s1, %s1, (32)0
	srl %s1, %s1, 31
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	sra.w.sx %s0, %s0, 1
	stl %s0, 20(, %s11)
	ldl.sx %s0, 20(, %s11)
	brne.w 0, %s0, .LBB90_8
	br.l .LBB90_7
.LBB90_7:
	lea %s0, .L__profc_ldexp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexp@hi(, %s0)
	ld %s1, 56(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 56(, %s0)
	br.l .LBB90_9
.LBB90_8:                               #   in Loop: Header=BB90_4 Depth=1
	lea %s0, __llvm_gcov_ctr.90@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.90@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 8(, %s11)
	fmul.d %s0, %s0, %s0
	st %s0, 8(, %s11)
	br.l .LBB90_4
.LBB90_9:
	br.l .LBB90_10
.LBB90_10:
	ld %s0, 24(, %s11)
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end90:
	.size	ldexp, .Lfunc_end90-ldexp
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0                          # -- Begin function ldexpl
.LCPI91_0:
	.8byte	0x0000000000000000              # fp128 2
	.8byte	0x4000000000000000
	.8byte	0x0000000000000000              # fp128 0.5
	.8byte	0x3ffe000000000000
	.text
	.globl	ldexpl
	.p2align	4
	.type	ldexpl,@function
ldexpl:                                 # @ldexpl
# %bb.0:
	adds.l %s11, -64, %s11
	brge.l.t %s11, %s8, .LBB91_12
# %bb.11:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB91_12:
	st %s2, 8(, %s11)                       # 8-byte Folded Spill
	or %s2, 0, %s0
	or %s3, 0, %s1
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.91@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.91@hi(, %s1)
	ld %s4, (, %s1)
	lea %s4, 1(, %s4)
	st %s4, (, %s1)
	st %s3, 48(, %s11)
	st %s2, 56(, %s11)
	stl %s0, 44(, %s11)
	lea %s0, .L__profc_ldexpl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexpl@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s1, 48(, %s11)
	ld %s0, 56(, %s11)
	fcmp.q %s0, %s0, %s0
	brnan.d 0, %s0, .LBB91_10
	br.l .LBB91_1
.LBB91_1:
	lea %s0, __llvm_gcov_ctr.91@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.91@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_ldexpl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexpl@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s1, 48(, %s11)
	ld %s0, 56(, %s11)
	fadd.q %s2, %s0, %s0
	fcmp.q %s0, %s0, %s2
	breq.d 0, %s0, .LBB91_10
	br.l .LBB91_2
.LBB91_2:
	lea %s0, __llvm_gcov_ctr.91@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.91@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_ldexpl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexpl@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	br.l .LBB91_3
.LBB91_3:
	lea %s0, .L__profc_ldexpl@lo
	and %s0, %s0, (32)0
	lea.sl %s1, .L__profc_ldexpl@hi(, %s0)
	ld %s0, 8(, %s1)
	lea %s0, 1(, %s0)
	st %s0, 8(, %s1)
	ldl.sx %s2, 44(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	and %s0, %s0, (32)0
	srl %s0, %s0, 31
                                        # kill: def $sw0 killed $sw0 killed $sx0
	adds.w.zx %s2, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	ld %s2, 32(, %s1)
	adds.l %s2, %s2, %s0
	st %s2, 32(, %s1)
	sll %s1, %s0, 4
	lea %s0, .LCPI91_0@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .LCPI91_0@hi(, %s0)
	ld %s2, (%s1, %s0)
	ld %s3, 8(%s1, %s0)
                                        # implicit-def: $q0
	or %s0, 0, %s3
	or %s1, 0, %s2
	st %s1, 16(, %s11)
	st %s0, 24(, %s11)
	br.l .LBB91_4
.LBB91_4:                               # =>This Inner Loop Header: Depth=1
	lea %s0, .L__profc_ldexpl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexpl@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ldl.sx %s0, 44(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	and %s1, %s1, (32)0
	srl %s1, %s1, 31
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s2, %s0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	lea %s2, -2
	and %s2, %s2, (32)0
	and %s1, %s1, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	subs.w.sx %s0, %s0, %s1
	breq.w 0, %s0, .LBB91_6
	br.l .LBB91_5
.LBB91_5:                               #   in Loop: Header=BB91_4 Depth=1
	lea %s0, __llvm_gcov_ctr.91@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.91@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_ldexpl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexpl@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	ld %s3, 16(, %s11)
	ld %s2, 24(, %s11)
	ld %s1, 48(, %s11)
	ld %s0, 56(, %s11)
	fmul.q %s0, %s0, %s2
	st %s1, 48(, %s11)
	st %s0, 56(, %s11)
	br.l .LBB91_6
.LBB91_6:                               #   in Loop: Header=BB91_4 Depth=1
	ldl.sx %s0, 44(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	and %s1, %s1, (32)0
	srl %s1, %s1, 31
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	sra.w.sx %s0, %s0, 1
	stl %s0, 44(, %s11)
	ldl.sx %s0, 44(, %s11)
	brne.w 0, %s0, .LBB91_8
	br.l .LBB91_7
.LBB91_7:
	lea %s0, .L__profc_ldexpl@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_ldexpl@hi(, %s0)
	ld %s1, 56(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 56(, %s0)
	br.l .LBB91_9
.LBB91_8:                               #   in Loop: Header=BB91_4 Depth=1
	lea %s0, __llvm_gcov_ctr.91@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.91@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s1, 16(, %s11)
	ld %s0, 24(, %s11)
	fmul.q %s0, %s0, %s0
	st %s1, 16(, %s11)
	st %s0, 24(, %s11)
	br.l .LBB91_4
.LBB91_9:
	br.l .LBB91_10
.LBB91_10:
	ld %s1, 48(, %s11)
	ld %s0, 56(, %s11)
	lea %s11, 64(, %s11)
	b.l.t (, %s10)
.Lfunc_end91:
	.size	ldexpl, .Lfunc_end91-ldexpl
                                        # -- End function
	.globl	memxor                          # -- Begin function memxor
	.p2align	4
	.type	memxor,@function
memxor:                                 # @memxor
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB92_6
# %bb.5:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB92_6:
	lea %s3, __llvm_gcov_ctr.92@lo
	and %s3, %s3, (32)0
	lea.sl %s3, __llvm_gcov_ctr.92@hi(, %s3)
	ld %s4, (, %s3)
	lea %s4, 1(, %s4)
	st %s4, (, %s3)
	st %s0, 40(, %s11)
	st %s1, 32(, %s11)
	st %s2, 24(, %s11)
	lea %s0, .L__profc_memxor@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memxor@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 32(, %s11)
	st %s0, 16(, %s11)
	ld %s0, 40(, %s11)
	st %s0, 8(, %s11)
	br.l .LBB92_1
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB92_4
	br.l .LBB92_2
.LBB92_2:                               #   in Loop: Header=BB92_1 Depth=1
	lea %s0, .L__profc_memxor@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memxor@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s2, 16(, %s11)
	lea %s0, 1(, %s2)
	st %s0, 16(, %s11)
	ld %s0, 8(, %s11)
	lea %s1, 1(, %s0)
	ld1b.zx %s3, (, %s2)
                                        # implicit-def: $sx2
	or %s2, 0, %s3
	st %s1, 8(, %s11)
	ld1b.zx %s3, (, %s0)
                                        # implicit-def: $sx1
	or %s1, 0, %s3
	xor %s1, %s1, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	st1b %s1, (, %s0)
	br.l .LBB92_3
.LBB92_3:                               #   in Loop: Header=BB92_1 Depth=1
	lea %s0, __llvm_gcov_ctr.92@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.92@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 24(, %s11)
	lea %s0, -1(, %s0)
	st %s0, 24(, %s11)
	br.l .LBB92_1
.LBB92_4:
	ld %s0, 40(, %s11)
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end92:
	.size	memxor, .Lfunc_end92-memxor
                                        # -- End function
	.globl	strncat                         # -- Begin function strncat
	.p2align	4
	.type	strncat,@function
strncat:                                # @strncat
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -288(, %s11)
	brge.l.t %s11, %s8, .LBB93_11
# %bb.10:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB93_11:
	st %s0, -8(, %s9)
	st %s1, -16(, %s9)
	st %s2, -24(, %s9)
	lea %s0, .L__profc_strncat@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strncat@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, -8(, %s9)
	st %s0, -40(, %s9)                      # 8-byte Folded Spill
	lea %s1, strlen@lo
	and %s1, %s1, (32)0
	lea.sl %s1, strlen@hi(, %s1)
	or %s12, 0, %s1
	bsic %s10, (, %s12)
	or %s1, 0, %s0
	ld %s0, -40(, %s9)                      # 8-byte Folded Reload
	adds.l %s0, %s0, %s1
	st %s0, -32(, %s9)
	br.l .LBB93_1
.LBB93_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, -24(, %s9)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, -44(, %s9)                     # 4-byte Folded Spill
	breq.l 0, %s0, .LBB93_4
	br.l .LBB93_2
.LBB93_2:                               #   in Loop: Header=BB93_1 Depth=1
	lea %s0, __llvm_gcov_ctr.93@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.93@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_strncat@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strncat@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, -16(, %s9)
	ld1b.zx %s0, (, %s0)
	ld %s1, -32(, %s9)
	st1b %s0, (, %s1)
	or %s1, 0, (0)1
	or %s2, 0, %s1
	cmps.w.sx %s2, %s0, %s2
	cmov.w.ne %s1, (63)0, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, -48(, %s9)                     # 4-byte Folded Spill
	stl %s1, -44(, %s9)                     # 4-byte Folded Spill
	breq.w 0, %s0, .LBB93_4
	br.l .LBB93_3
.LBB93_3:                               #   in Loop: Header=BB93_1 Depth=1
	ldl.sx %s0, -48(, %s9)                  # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.93@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.93@hi(, %s1)
	ld %s2, 8(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 8(, %s1)
	lea %s1, .L__profc_strncat@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_strncat@hi(, %s1)
	ld %s2, 24(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 24(, %s1)
	stl %s0, -44(, %s9)                     # 4-byte Folded Spill
	br.l .LBB93_4
.LBB93_4:                               #   in Loop: Header=BB93_1 Depth=1
	ldl.sx %s1, -44(, %s9)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB93_7
	br.l .LBB93_5
.LBB93_5:                               #   in Loop: Header=BB93_1 Depth=1
	lea %s0, .L__profc_strncat@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strncat@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	br.l .LBB93_6
.LBB93_6:                               #   in Loop: Header=BB93_1 Depth=1
	lea %s0, __llvm_gcov_ctr.93@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.93@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, -16(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -16(, %s9)
	ld %s0, -32(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -32(, %s9)
	ld %s0, -24(, %s9)
	lea %s0, -1(, %s0)
	st %s0, -24(, %s9)
	br.l .LBB93_1
.LBB93_7:
	lea %s0, __llvm_gcov_ctr.93@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.93@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, -24(, %s9)
	brne.l 0, %s0, .LBB93_9
	br.l .LBB93_8
.LBB93_8:
	lea %s0, __llvm_gcov_ctr.93@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.93@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc_strncat@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strncat@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, -32(, %s9)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	st1b %s1, (, %s0)
	br.l .LBB93_9
.LBB93_9:
	ld %s0, -8(, %s9)
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end93:
	.size	strncat, .Lfunc_end93-strncat
                                        # -- End function
	.globl	strnlen                         # -- Begin function strnlen
	.p2align	4
	.type	strnlen,@function
strnlen:                                # @strnlen
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB94_9
# %bb.8:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB94_9:
	lea %s2, __llvm_gcov_ctr.94@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.94@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s0, 24(, %s11)
	st %s1, 16(, %s11)
	lea %s0, .L__profc_strnlen@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strnlen@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
	st %s0, 8(, %s11)
	br.l .LBB94_1
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	ld %s2, 8(, %s11)
	ld %s0, 16(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.l %s0, %s0, %s2
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	brge.l 0, %s0, .LBB94_4
	br.l .LBB94_2
.LBB94_2:                               #   in Loop: Header=BB94_1 Depth=1
	lea %s0, __llvm_gcov_ctr.94@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.94@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_strnlen@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strnlen@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 24(, %s11)
	ld %s1, 8(, %s11)
	ld1b.sx %s0, (%s1, %s0)
	or %s1, 0, (0)1
	or %s2, 0, %s1
	cmps.w.sx %s2, %s0, %s2
	cmov.w.ne %s1, (63)0, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, (, %s11)                       # 4-byte Folded Spill
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	breq.w 0, %s0, .LBB94_4
	br.l .LBB94_3
.LBB94_3:                               #   in Loop: Header=BB94_1 Depth=1
	ldl.sx %s0, (, %s11)                    # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.94@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.94@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	lea %s1, .L__profc_strnlen@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_strnlen@hi(, %s1)
	ld %s2, 24(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 24(, %s1)
	stl %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB94_4
.LBB94_4:                               #   in Loop: Header=BB94_1 Depth=1
	ldl.sx %s1, 4(, %s11)                   # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB94_7
	br.l .LBB94_5
.LBB94_5:                               #   in Loop: Header=BB94_1 Depth=1
	lea %s0, .L__profc_strnlen@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strnlen@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	br.l .LBB94_6
.LBB94_6:                               #   in Loop: Header=BB94_1 Depth=1
	lea %s0, __llvm_gcov_ctr.94@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.94@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, 8(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 8(, %s11)
	br.l .LBB94_1
.LBB94_7:
	ld %s0, 8(, %s11)
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end94:
	.size	strnlen, .Lfunc_end94-strnlen
                                        # -- End function
	.globl	strpbrk                         # -- Begin function strpbrk
	.p2align	4
	.type	strpbrk,@function
strpbrk:                                # @strpbrk
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB95_11
# %bb.10:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB95_11:
	st %s0, 16(, %s11)
	st %s1, 8(, %s11)
	lea %s0, .L__profc_strpbrk@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strpbrk@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	br.l .LBB95_1
.LBB95_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_3 Depth 2
	ld %s0, 16(, %s11)
	ld1b.sx %s0, (, %s0)
	breq.w 0, %s0, .LBB95_8
	br.l .LBB95_2
.LBB95_2:                               #   in Loop: Header=BB95_1 Depth=1
	lea %s0, .L__profc_strpbrk@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strpbrk@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 8(, %s11)
	st %s0, (, %s11)
	br.l .LBB95_3
.LBB95_3:                               #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld %s0, (, %s11)
	ld1b.sx %s0, (, %s0)
	breq.w 0, %s0, .LBB95_7
	br.l .LBB95_4
.LBB95_4:                               #   in Loop: Header=BB95_3 Depth=2
	lea %s0, .L__profc_strpbrk@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strpbrk@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, (, %s11)
	lea %s1, 1(, %s0)
	st %s1, (, %s11)
	ld1b.sx %s0, (, %s0)
	ld %s1, 16(, %s11)
	ld1b.sx %s1, (, %s1)
	brne.w %s0, %s1, .LBB95_6
	br.l .LBB95_5
.LBB95_5:
	lea %s0, __llvm_gcov_ctr.95@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.95@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_strpbrk@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strpbrk@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, 16(, %s11)
	st %s0, 24(, %s11)
	br.l .LBB95_9
.LBB95_6:                               #   in Loop: Header=BB95_3 Depth=2
	lea %s0, __llvm_gcov_ctr.95@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.95@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	br.l .LBB95_3
.LBB95_7:                               #   in Loop: Header=BB95_1 Depth=1
	lea %s0, __llvm_gcov_ctr.95@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.95@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, 16(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 16(, %s11)
	br.l .LBB95_1
.LBB95_8:
	lea %s0, __llvm_gcov_ctr.95@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.95@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
	st %s0, 24(, %s11)
	br.l .LBB95_9
.LBB95_9:
	ld %s0, 24(, %s11)
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end95:
	.size	strpbrk, .Lfunc_end95-strpbrk
                                        # -- End function
	.globl	strrchr                         # -- Begin function strrchr
	.p2align	4
	.type	strrchr,@function
strrchr:                                # @strrchr
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB96_8
# %bb.7:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB96_8:
	st %s1, (, %s11)                        # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s2, __llvm_gcov_ctr.96@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.96@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s1, 24(, %s11)
	stl %s0, 20(, %s11)
	lea %s0, .L__profc_strrchr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strrchr@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
	st %s0, 8(, %s11)
	br.l .LBB96_2
.LBB96_1:                               #   in Loop: Header=BB96_2 Depth=1
	lea %s0, __llvm_gcov_ctr.96@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.96@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_strrchr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strrchr@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	br.l .LBB96_2
.LBB96_2:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	ld1b.sx %s0, (, %s0)
	ldl.sx %s1, 20(, %s11)
	brne.w %s0, %s1, .LBB96_4
	br.l .LBB96_3
.LBB96_3:                               #   in Loop: Header=BB96_2 Depth=1
	lea %s0, __llvm_gcov_ctr.96@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.96@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_strrchr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strrchr@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 24(, %s11)
	st %s0, 8(, %s11)
	br.l .LBB96_4
.LBB96_4:                               #   in Loop: Header=BB96_2 Depth=1
	br.l .LBB96_5
.LBB96_5:                               #   in Loop: Header=BB96_2 Depth=1
	ld %s0, 24(, %s11)
	lea %s1, 1(, %s0)
	st %s1, 24(, %s11)
	ld1b.zx %s0, (, %s0)
	brne.w 0, %s0, .LBB96_1
	br.l .LBB96_6
.LBB96_6:
	ld %s0, 8(, %s11)
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end96:
	.size	strrchr, .Lfunc_end96-strrchr
                                        # -- End function
	.globl	strstr                          # -- Begin function strstr
	.p2align	4
	.type	strstr,@function
strstr:                                 # @strstr
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -288(, %s11)
	brge.l.t %s11, %s8, .LBB97_11
# %bb.10:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB97_11:
	st %s0, -16(, %s9)
	st %s1, -24(, %s9)
	lea %s0, .L__profc_strstr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strstr@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, -16(, %s9)
	st %s0, -32(, %s9)
	ld %s0, -24(, %s9)
	lea %s1, strlen@lo
	and %s1, %s1, (32)0
	lea.sl %s1, strlen@hi(, %s1)
	or %s12, 0, %s1
	bsic %s10, (, %s12)
	st %s0, -40(, %s9)
	ld %s0, -40(, %s9)
	brne.l 0, %s0, .LBB97_2
	br.l .LBB97_1
.LBB97_1:
	lea %s0, __llvm_gcov_ctr.97@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.97@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_strstr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strstr@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, -16(, %s9)
	st %s0, -8(, %s9)
	br.l .LBB97_9
.LBB97_2:
	br.l .LBB97_3
.LBB97_3:                               # =>This Inner Loop Header: Depth=1
	ld %s0, -32(, %s9)
	ld %s1, -24(, %s9)
	ld1b.sx %s2, (, %s1)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	lea %s2, strchr@lo
	and %s2, %s2, (32)0
	lea.sl %s2, strchr@hi(, %s2)
	or %s12, 0, %s2
	bsic %s10, (, %s12)
	st %s0, -32(, %s9)
	breq.l 0, %s0, .LBB97_8
	br.l .LBB97_4
.LBB97_4:                               #   in Loop: Header=BB97_3 Depth=1
	lea %s0, .L__profc_strstr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strstr@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, -32(, %s9)
	ld %s1, -24(, %s9)
	ld %s2, -40(, %s9)
	lea %s3, strncmp@lo
	and %s3, %s3, (32)0
	lea.sl %s3, strncmp@hi(, %s3)
	or %s12, 0, %s3
	bsic %s10, (, %s12)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	brne.w 0, %s0, .LBB97_6
	br.l .LBB97_5
.LBB97_5:
	lea %s0, __llvm_gcov_ctr.97@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.97@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_strstr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_strstr@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, -32(, %s9)
	st %s0, -8(, %s9)
	br.l .LBB97_9
.LBB97_6:                               #   in Loop: Header=BB97_3 Depth=1
	br.l .LBB97_7
.LBB97_7:                               #   in Loop: Header=BB97_3 Depth=1
	lea %s0, __llvm_gcov_ctr.97@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.97@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, -32(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -32(, %s9)
	br.l .LBB97_3
.LBB97_8:
	lea %s0, __llvm_gcov_ctr.97@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.97@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	or %s0, 0, (0)1
	st %s0, -8(, %s9)
	br.l .LBB97_9
.LBB97_9:
	ld %s0, -8(, %s9)
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end97:
	.size	strstr, .Lfunc_end97-strstr
                                        # -- End function
	.globl	copysign                        # -- Begin function copysign
	.p2align	4
	.type	copysign,@function
copysign:                               # @copysign
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB98_10
# %bb.9:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB98_10:
	st %s0, 16(, %s11)
	st %s1, 8(, %s11)
	lea %s0, .L__profc_copysign@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_copysign@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 16(, %s11)
	brlenan.d 0, %s0, .LBB98_3
	br.l .LBB98_1
.LBB98_1:
	lea %s0, __llvm_gcov_ctr.98@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.98@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_copysign@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_copysign@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, 8(, %s11)
	brgenan.d 0, %s0, .LBB98_3
	br.l .LBB98_2
.LBB98_2:
	lea %s0, __llvm_gcov_ctr.98@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.98@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_copysign@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_copysign@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	br.l .LBB98_6
.LBB98_3:
	lea %s0, .L__profc_copysign@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_copysign@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 16(, %s11)
	brgenan.d 0, %s0, .LBB98_7
	br.l .LBB98_4
.LBB98_4:
	lea %s0, __llvm_gcov_ctr.98@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.98@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_copysign@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_copysign@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s0, 8(, %s11)
	brlenan.d 0, %s0, .LBB98_7
	br.l .LBB98_5
.LBB98_5:
	lea %s0, __llvm_gcov_ctr.98@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.98@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_copysign@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_copysign@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	br.l .LBB98_6
.LBB98_6:
	lea %s0, .L__profc_copysign@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_copysign@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 16(, %s11)
	xor %s0, %s0, (1)1
	st %s0, 24(, %s11)
	br.l .LBB98_8
.LBB98_7:
	lea %s0, __llvm_gcov_ctr.98@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.98@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 16(, %s11)
	st %s0, 24(, %s11)
	br.l .LBB98_8
.LBB98_8:
	ld %s0, 24(, %s11)
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end98:
	.size	copysign, .Lfunc_end98-copysign
                                        # -- End function
	.globl	memmem                          # -- Begin function memmem
	.p2align	4
	.type	memmem,@function
memmem:                                 # @memmem
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -304(, %s11)
	brge.l.t %s11, %s8, .LBB99_15
# %bb.14:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB99_15:
	st %s0, -16(, %s9)
	st %s1, -24(, %s9)
	st %s2, -32(, %s9)
	st %s3, -40(, %s9)
	lea %s0, .L__profc_memmem@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memmem@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, -16(, %s9)
	ld %s1, -24(, %s9)
	adds.l %s0, %s0, %s1
	ld %s1, -40(, %s9)
	subs.l %s0, %s0, %s1
	st %s0, -56(, %s9)
	ld %s0, -40(, %s9)
	brne.l 0, %s0, .LBB99_2
	br.l .LBB99_1
.LBB99_1:
	lea %s0, __llvm_gcov_ctr.99@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.99@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_memmem@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memmem@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, -16(, %s9)
	st %s0, -8(, %s9)
	br.l .LBB99_13
.LBB99_2:
	ld %s1, -24(, %s9)
	ld %s0, -40(, %s9)
	cmpu.l %s0, %s0, %s1
	brge.l 0, %s0, .LBB99_4
	br.l .LBB99_3
.LBB99_3:
	lea %s0, __llvm_gcov_ctr.99@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.99@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_memmem@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memmem@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	or %s0, 0, (0)1
	st %s0, -8(, %s9)
	br.l .LBB99_13
.LBB99_4:
	ld %s0, -16(, %s9)
	st %s0, -48(, %s9)
	br.l .LBB99_5
.LBB99_5:                               # =>This Inner Loop Header: Depth=1
	ld %s1, -48(, %s9)
	ld %s0, -56(, %s9)
	cmpu.l %s0, %s0, %s1
	brgt.l 0, %s0, .LBB99_12
	br.l .LBB99_6
.LBB99_6:                               #   in Loop: Header=BB99_5 Depth=1
	lea %s0, .L__profc_memmem@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memmem@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, -48(, %s9)
	ld1b.sx %s0, (, %s0)
	ld %s1, -32(, %s9)
	ld1b.sx %s1, (, %s1)
	brne.w %s0, %s1, .LBB99_10
	br.l .LBB99_7
.LBB99_7:                               #   in Loop: Header=BB99_5 Depth=1
	lea %s0, __llvm_gcov_ctr.99@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.99@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_memmem@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memmem@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s0, -48(, %s9)
	lea %s0, 1(, %s0)
	ld %s1, -32(, %s9)
	lea %s1, 1(, %s1)
	ld %s2, -40(, %s9)
	lea %s2, -1(, %s2)
	lea %s3, memcmp@lo
	and %s3, %s3, (32)0
	lea.sl %s3, memcmp@hi(, %s3)
	or %s12, 0, %s3
	bsic %s10, (, %s12)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	brne.w 0, %s0, .LBB99_10
	br.l .LBB99_8
.LBB99_8:
	lea %s0, __llvm_gcov_ctr.99@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.99@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_memmem@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memmem@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	br.l .LBB99_9
.LBB99_9:
	lea %s0, .L__profc_memmem@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_memmem@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, -48(, %s9)
	st %s0, -8(, %s9)
	br.l .LBB99_13
.LBB99_10:                              #   in Loop: Header=BB99_5 Depth=1
	br.l .LBB99_11
.LBB99_11:                              #   in Loop: Header=BB99_5 Depth=1
	lea %s0, __llvm_gcov_ctr.99@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.99@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, -48(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -48(, %s9)
	br.l .LBB99_5
.LBB99_12:
	lea %s0, __llvm_gcov_ctr.99@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.99@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	or %s0, 0, (0)1
	st %s0, -8(, %s9)
	br.l .LBB99_13
.LBB99_13:
	ld %s0, -8(, %s9)
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end99:
	.size	memmem, .Lfunc_end99-memmem
                                        # -- End function
	.globl	mempcpy                         # -- Begin function mempcpy
	.p2align	4
	.type	mempcpy,@function
mempcpy:                                # @mempcpy
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -272(, %s11)
	brge.l.t %s11, %s8, .LBB100_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB100_2:
	lea %s3, __llvm_gcov_ctr.100@lo
	and %s3, %s3, (32)0
	lea.sl %s3, __llvm_gcov_ctr.100@hi(, %s3)
	ld %s4, (, %s3)
	lea %s4, 1(, %s4)
	st %s4, (, %s3)
	st %s0, -8(, %s9)
	st %s1, -16(, %s9)
	st %s2, -24(, %s9)
	lea %s0, .L__profc_mempcpy@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_mempcpy@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, -8(, %s9)
	st %s0, -32(, %s9)                      # 8-byte Folded Spill
	ld %s1, -16(, %s9)
	ld %s2, -24(, %s9)
	lea %s3, memcpy@lo
	and %s3, %s3, (32)0
	lea.sl %s3, memcpy@hi(, %s3)
	or %s12, 0, %s3
	bsic %s10, (, %s12)
                                        # kill: def $sx1 killed $sx0
	ld %s0, -32(, %s9)                      # 8-byte Folded Reload
	ld %s1, -24(, %s9)
	adds.l %s0, %s0, %s1
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end100:
	.size	mempcpy, .Lfunc_end100-mempcpy
                                        # -- End function
	.globl	frexp                           # -- Begin function frexp
	.p2align	4
	.type	frexp,@function
frexp:                                  # @frexp
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB101_19
# %bb.18:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB101_19:
	st %s0, 24(, %s11)
	st %s1, 16(, %s11)
	lea %s0, .L__profc_frexp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_frexp@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	stl %s0, 12(, %s11)
	ld %s0, 24(, %s11)
	brlenan.d 0, %s0, .LBB101_2
	br.l .LBB101_1
.LBB101_1:
	lea %s0, __llvm_gcov_ctr.101@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.101@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_frexp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_frexp@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 24(, %s11)
	xor %s0, %s0, (1)1
	st %s0, 24(, %s11)
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	br.l .LBB101_2
.LBB101_2:
	ld %s0, 24(, %s11)
	lea.sl %s1, 1072693248
	brltnan.d %s0, %s1, .LBB101_7
	br.l .LBB101_3
.LBB101_3:
	lea %s0, __llvm_gcov_ctr.101@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.101@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_frexp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_frexp@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	br.l .LBB101_4
.LBB101_4:                              # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	lea.sl %s1, 1072693248
	brltnan.d %s0, %s1, .LBB101_6
	br.l .LBB101_5
.LBB101_5:                              #   in Loop: Header=BB101_4 Depth=1
	lea %s0, __llvm_gcov_ctr.101@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.101@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc_frexp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_frexp@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ldl.sx %s0, 8(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 8(, %s11)
	ld %s0, 24(, %s11)
	lea.sl %s1, 1071644672
	fmul.d %s0, %s0, %s1
	st %s0, 24(, %s11)
	br.l .LBB101_4
.LBB101_6:
	br.l .LBB101_15
.LBB101_7:
	ld %s0, 24(, %s11)
	lea.sl %s1, 1071644672
	brgenan.d %s0, %s1, .LBB101_14
	br.l .LBB101_8
.LBB101_8:
	lea %s0, __llvm_gcov_ctr.101@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.101@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_frexp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_frexp@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s0, 24(, %s11)
	breq.d 0, %s0, .LBB101_14
	br.l .LBB101_9
.LBB101_9:
	lea %s0, .L__profc_frexp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_frexp@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	br.l .LBB101_10
.LBB101_10:
	lea %s0, .L__profc_frexp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_frexp@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	br.l .LBB101_11
.LBB101_11:                             # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	lea.sl %s1, 1071644672
	brgenan.d %s0, %s1, .LBB101_13
	br.l .LBB101_12
.LBB101_12:                             #   in Loop: Header=BB101_11 Depth=1
	lea %s0, __llvm_gcov_ctr.101@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.101@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc_frexp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_frexp@hi(, %s0)
	ld %s1, 56(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 56(, %s0)
	ldl.sx %s0, 8(, %s11)
	adds.w.sx %s0, -1, %s0
	stl %s0, 8(, %s11)
	ld %s0, 24(, %s11)
	fadd.d %s0, %s0, %s0
	st %s0, 24(, %s11)
	br.l .LBB101_11
.LBB101_13:
	lea %s0, __llvm_gcov_ctr.101@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.101@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	br.l .LBB101_14
.LBB101_14:
	lea %s0, __llvm_gcov_ctr.101@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.101@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	br.l .LBB101_15
.LBB101_15:
	ldl.sx %s1, 8(, %s11)
	ld %s0, 16(, %s11)
	stl %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	breq.w 0, %s0, .LBB101_17
	br.l .LBB101_16
.LBB101_16:
	lea %s0, __llvm_gcov_ctr.101@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.101@hi(, %s0)
	ld %s1, 56(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 56(, %s0)
	lea %s0, .L__profc_frexp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_frexp@hi(, %s0)
	ld %s1, 64(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 64(, %s0)
	ld %s0, 24(, %s11)
	xor %s0, %s0, (1)1
	st %s0, 24(, %s11)
	br.l .LBB101_17
.LBB101_17:
	ld %s0, 24(, %s11)
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end101:
	.size	frexp, .Lfunc_end101-frexp
                                        # -- End function
	.globl	__muldi3                        # -- Begin function __muldi3
	.p2align	4
	.type	__muldi3,@function
__muldi3:                               # @__muldi3
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB102_7
# %bb.6:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB102_7:
	lea %s2, __llvm_gcov_ctr.102@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.102@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s0, 24(, %s11)
	st %s1, 16(, %s11)
	lea %s0, .L__profc___muldi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___muldi3@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
	st %s0, 8(, %s11)
	ld %s0, 24(, %s11)
	st %s0, (, %s11)
	br.l .LBB102_1
.LBB102_1:                              # =>This Inner Loop Header: Depth=1
	ld %s0, (, %s11)
	breq.l 0, %s0, .LBB102_5
	br.l .LBB102_2
.LBB102_2:                              #   in Loop: Header=BB102_1 Depth=1
	lea %s0, .L__profc___muldi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___muldi3@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld1b.zx %s1, (, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB102_4
	br.l .LBB102_3
.LBB102_3:                              #   in Loop: Header=BB102_1 Depth=1
	lea %s0, __llvm_gcov_ctr.102@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.102@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___muldi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___muldi3@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s1, 16(, %s11)
	ld %s0, 8(, %s11)
	adds.l %s0, %s0, %s1
	st %s0, 8(, %s11)
	br.l .LBB102_4
.LBB102_4:                              #   in Loop: Header=BB102_1 Depth=1
	lea %s0, __llvm_gcov_ctr.102@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.102@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 16(, %s11)
	sll %s0, %s0, 1
	st %s0, 16(, %s11)
	ld %s0, (, %s11)
	srl %s0, %s0, 1
	st %s0, (, %s11)
	br.l .LBB102_1
.LBB102_5:
	ld %s0, 8(, %s11)
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end102:
	.size	__muldi3, .Lfunc_end102-__muldi3
                                        # -- End function
	.globl	udivmodsi4                      # -- Begin function udivmodsi4
	.p2align	4
	.type	udivmodsi4,@function
udivmodsi4:                             # @udivmodsi4
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB103_18
# %bb.17:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB103_18:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	and %s1, %s1, (32)0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 40(, %s11)
	stl %s0, 36(, %s11)
	st %s2, 24(, %s11)
	lea %s0, .L__profc_udivmodsi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_udivmodsi4@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 20(, %s11)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 16(, %s11)
	br.l .LBB103_1
.LBB103_1:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s2, 36(, %s11)
	ldl.sx %s0, 40(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s0, %s0, %s2
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	brge.w 0, %s0, .LBB103_6
	br.l .LBB103_2
.LBB103_2:                              #   in Loop: Header=BB103_1 Depth=1
	lea %s0, __llvm_gcov_ctr.103@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.103@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc_udivmodsi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_udivmodsi4@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ldl.sx %s0, 20(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	breq.w 0, %s0, .LBB103_6
	br.l .LBB103_3
.LBB103_3:                              #   in Loop: Header=BB103_1 Depth=1
	lea %s0, __llvm_gcov_ctr.103@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.103@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc_udivmodsi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_udivmodsi4@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	br.l .LBB103_4
.LBB103_4:                              #   in Loop: Header=BB103_1 Depth=1
	lea %s0, .L__profc_udivmodsi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_udivmodsi4@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldl.zx %s1, 36(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s1, -2147483648
	and %s1, %s1, (32)0
	and %s0, %s0, %s1
	or %s1, 0, (0)1
	cmps.l %s2, %s0, %s1
	cmov.l.eq %s1, (63)0, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, (, %s11)                       # 4-byte Folded Spill
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	brne.l 0, %s0, .LBB103_6
	br.l .LBB103_5
.LBB103_5:                              #   in Loop: Header=BB103_1 Depth=1
	ldl.sx %s0, (, %s11)                    # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.103@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.103@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	lea %s1, .L__profc_udivmodsi4@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc_udivmodsi4@hi(, %s1)
	ld %s2, 24(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 24(, %s1)
	stl %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB103_6
.LBB103_6:                              #   in Loop: Header=BB103_1 Depth=1
	ldl.sx %s1, 4(, %s11)                   # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB103_8
	br.l .LBB103_7
.LBB103_7:                              #   in Loop: Header=BB103_1 Depth=1
	lea %s0, __llvm_gcov_ctr.103@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.103@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc_udivmodsi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_udivmodsi4@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s0, 36(, %s11)
	sla.w.sx %s0, %s0, 1
	stl %s0, 36(, %s11)
	ldl.sx %s0, 20(, %s11)
	sla.w.sx %s0, %s0, 1
	stl %s0, 20(, %s11)
	br.l .LBB103_1
.LBB103_8:
	br.l .LBB103_9
.LBB103_9:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 20(, %s11)
	breq.w 0, %s0, .LBB103_13
	br.l .LBB103_10
.LBB103_10:                             #   in Loop: Header=BB103_9 Depth=1
	lea %s0, .L__profc_udivmodsi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_udivmodsi4@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	ldl.sx %s1, 40(, %s11)
	ldl.sx %s0, 36(, %s11)
	cmpu.w %s0, %s0, %s1
	brlt.w 0, %s0, .LBB103_12
	br.l .LBB103_11
.LBB103_11:                             #   in Loop: Header=BB103_9 Depth=1
	lea %s0, __llvm_gcov_ctr.103@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.103@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc_udivmodsi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_udivmodsi4@hi(, %s0)
	ld %s1, 56(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 56(, %s0)
	ldl.sx %s1, 36(, %s11)
	ldl.sx %s0, 40(, %s11)
	subs.w.sx %s0, %s0, %s1
	stl %s0, 40(, %s11)
	ldl.sx %s0, 20(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	ldl.sx %s2, 16(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	or %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 16(, %s11)
	br.l .LBB103_12
.LBB103_12:                             #   in Loop: Header=BB103_9 Depth=1
	lea %s0, __llvm_gcov_ctr.103@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.103@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ldl.sx %s1, 20(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (32)0
	srl %s0, %s0, 1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 20(, %s11)
	ldl.sx %s1, 36(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (32)0
	srl %s0, %s0, 1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 36(, %s11)
	br.l .LBB103_9
.LBB103_13:
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB103_15
	br.l .LBB103_14
.LBB103_14:
	lea %s0, __llvm_gcov_ctr.103@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.103@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	lea %s0, .L__profc_udivmodsi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc_udivmodsi4@hi(, %s0)
	ld %s1, 64(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 64(, %s0)
	ldl.sx %s0, 40(, %s11)
	stl %s0, 44(, %s11)
	br.l .LBB103_16
.LBB103_15:
	lea %s0, __llvm_gcov_ctr.103@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.103@hi(, %s0)
	ld %s1, 56(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 56(, %s0)
	ldl.sx %s0, 16(, %s11)
	stl %s0, 44(, %s11)
	br.l .LBB103_16
.LBB103_16:
	ldl.zx %s1, 44(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end103:
	.size	udivmodsi4, .Lfunc_end103-udivmodsi4
                                        # -- End function
	.globl	__clrsbqi2                      # -- Begin function __clrsbqi2
	.p2align	4
	.type	__clrsbqi2,@function
__clrsbqi2:                             # @__clrsbqi2
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB104_7
# %bb.6:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB104_7:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st1b %s0, 11(, %s11)
	lea %s0, .L__profc___clrsbqi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___clrsbqi2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld1b.sx %s0, 11(, %s11)
	brlt.w -1, %s0, .LBB104_2
	br.l .LBB104_1
.LBB104_1:
	lea %s0, __llvm_gcov_ctr.104@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.104@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___clrsbqi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___clrsbqi2@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld1b.zx %s1, 11(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	xor %s0, -1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st1b %s0, 11(, %s11)
	br.l .LBB104_2
.LBB104_2:
	ld1b.sx %s0, 11(, %s11)
	brne.w 0, %s0, .LBB104_4
	br.l .LBB104_3
.LBB104_3:
	lea %s0, __llvm_gcov_ctr.104@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.104@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___clrsbqi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___clrsbqi2@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	or %s0, 7, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	br.l .LBB104_5
.LBB104_4:
	lea %s0, __llvm_gcov_ctr.104@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.104@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld1b.sx %s1, 11(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	sll %s0, %s0, 40
	ldz %s0, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 4(, %s11)
	ldl.sx %s0, 4(, %s11)
	adds.w.sx %s0, -1, %s0
	stl %s0, 12(, %s11)
	br.l .LBB104_5
.LBB104_5:
	ldl.sx %s1, 12(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end104:
	.size	__clrsbqi2, .Lfunc_end104-__clrsbqi2
                                        # -- End function
	.globl	__clrsbdi2                      # -- Begin function __clrsbdi2
	.p2align	4
	.type	__clrsbdi2,@function
__clrsbdi2:                             # @__clrsbdi2
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB105_7
# %bb.6:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB105_7:
	st %s0, 16(, %s11)
	lea %s0, .L__profc___clrsbdi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___clrsbdi2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 16(, %s11)
	brlt.l -1, %s0, .LBB105_2
	br.l .LBB105_1
.LBB105_1:
	lea %s0, __llvm_gcov_ctr.105@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.105@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___clrsbdi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___clrsbdi2@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 16(, %s11)
	xor %s0, -1, %s0
	st %s0, 16(, %s11)
	br.l .LBB105_2
.LBB105_2:
	ld %s0, 16(, %s11)
	brne.l 0, %s0, .LBB105_4
	br.l .LBB105_3
.LBB105_3:
	lea %s0, __llvm_gcov_ctr.105@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.105@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___clrsbdi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___clrsbdi2@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	or %s0, 63, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 28(, %s11)
	br.l .LBB105_5
.LBB105_4:
	lea %s0, __llvm_gcov_ctr.105@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.105@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 16(, %s11)
	ldz %s0, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	ldl.sx %s0, 12(, %s11)
	adds.w.sx %s0, -1, %s0
	stl %s0, 28(, %s11)
	br.l .LBB105_5
.LBB105_5:
	ldl.sx %s1, 28(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end105:
	.size	__clrsbdi2, .Lfunc_end105-__clrsbdi2
                                        # -- End function
	.globl	__mulsi3                        # -- Begin function __mulsi3
	.p2align	4
	.type	__mulsi3,@function
__mulsi3:                               # @__mulsi3
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB106_7
# %bb.6:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB106_7:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	and %s1, %s1, (32)0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	lea %s2, __llvm_gcov_ctr.106@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.106@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	stl %s1, 28(, %s11)
	stl %s0, 24(, %s11)
	lea %s0, .L__profc___mulsi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mulsi3@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 20(, %s11)
	br.l .LBB106_1
.LBB106_1:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 28(, %s11)
	breq.w 0, %s0, .LBB106_5
	br.l .LBB106_2
.LBB106_2:                              #   in Loop: Header=BB106_1 Depth=1
	lea %s0, .L__profc___mulsi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mulsi3@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld1b.zx %s1, 28(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB106_4
	br.l .LBB106_3
.LBB106_3:                              #   in Loop: Header=BB106_1 Depth=1
	lea %s0, __llvm_gcov_ctr.106@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.106@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___mulsi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mulsi3@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldl.sx %s1, 24(, %s11)
	ldl.sx %s0, 20(, %s11)
	adds.w.sx %s0, %s0, %s1
	stl %s0, 20(, %s11)
	br.l .LBB106_4
.LBB106_4:                              #   in Loop: Header=BB106_1 Depth=1
	lea %s0, __llvm_gcov_ctr.106@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.106@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldl.sx %s1, 28(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (32)0
	srl %s0, %s0, 1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 28(, %s11)
	ldl.sx %s0, 24(, %s11)
	sla.w.sx %s0, %s0, 1
	stl %s0, 24(, %s11)
	br.l .LBB106_1
.LBB106_5:
	ldl.zx %s1, 20(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end106:
	.size	__mulsi3, .Lfunc_end106-__mulsi3
                                        # -- End function
	.globl	__cmovd                         # -- Begin function __cmovd
	.p2align	4
	.type	__cmovd,@function
__cmovd:                                # @__cmovd
# %bb.0:
	adds.l %s11, -64, %s11
	brge.l.t %s11, %s8, .LBB107_17
# %bb.16:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB107_17:
	st %s2, 8(, %s11)                       # 8-byte Folded Spill
	or %s2, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s2, 56(, %s11)
	st %s1, 48(, %s11)
	stl %s0, 44(, %s11)
	lea %s0, .L__profc___cmovd@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovd@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s1, 44(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (32)0
	srl %s0, %s0, 3
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 36(, %s11)
	ldl.zx %s1, 44(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s1, -8
	and %s1, %s1, (32)0
	and %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 32(, %s11)
	ld %s0, 56(, %s11)
	st %s0, 24(, %s11)
	ld %s0, 48(, %s11)
	st %s0, 16(, %s11)
	ld %s1, 24(, %s11)
	ld %s0, 16(, %s11)
	cmpu.l %s0, %s0, %s1
	brlt.l 0, %s0, .LBB107_3
	br.l .LBB107_1
.LBB107_1:
	lea %s0, __llvm_gcov_ctr.107@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.107@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___cmovd@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovd@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s1, 24(, %s11)
	ld %s0, 16(, %s11)
	ldl.zx %s3, 44(, %s11)
                                        # implicit-def: $sx2
	or %s2, 0, %s3
	adds.l %s0, %s0, %s2
	cmpu.l %s0, %s0, %s1
	brgt.l 0, %s0, .LBB107_3
	br.l .LBB107_2
.LBB107_2:
	lea %s0, .L__profc___cmovd@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovd@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	br.l .LBB107_11
.LBB107_3:
	lea %s0, .L__profc___cmovd@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovd@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 40(, %s11)
	br.l .LBB107_4
.LBB107_4:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s1, 40(, %s11)
	ldl.sx %s0, 36(, %s11)
	cmpu.w %s0, %s0, %s1
	brge.w 0, %s0, .LBB107_7
	br.l .LBB107_5
.LBB107_5:                              #   in Loop: Header=BB107_4 Depth=1
	lea %s0, .L__profc___cmovd@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovd@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 48(, %s11)
	ldl.zx %s2, 40(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	sll %s1, %s1, 3
	ld %s2, (%s1, %s0)
	ld %s0, 56(, %s11)
	st %s2, (%s1, %s0)
	br.l .LBB107_6
.LBB107_6:                              #   in Loop: Header=BB107_4 Depth=1
	lea %s0, __llvm_gcov_ctr.107@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.107@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s0, 40(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 40(, %s11)
	br.l .LBB107_4
.LBB107_7:
	br.l .LBB107_8
.LBB107_8:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s1, 44(, %s11)
	ldl.sx %s0, 32(, %s11)
	cmpu.w %s0, %s0, %s1
	brle.w 0, %s0, .LBB107_10
	br.l .LBB107_9
.LBB107_9:                              #   in Loop: Header=BB107_8 Depth=1
	lea %s0, __llvm_gcov_ctr.107@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.107@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc___cmovd@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovd@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s0, 16(, %s11)
	ldl.zx %s2, 32(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	ld1b.zx %s2, (%s1, %s0)
	ld %s0, 24(, %s11)
	st1b %s2, (%s1, %s0)
	ldl.sx %s0, 32(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 32(, %s11)
	br.l .LBB107_8
.LBB107_10:
	lea %s0, __llvm_gcov_ctr.107@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.107@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	br.l .LBB107_15
.LBB107_11:
	br.l .LBB107_12
.LBB107_12:                             # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 44(, %s11)
	adds.w.sx %s1, -1, %s0
	stl %s1, 44(, %s11)
	breq.w 0, %s0, .LBB107_14
	br.l .LBB107_13
.LBB107_13:                             #   in Loop: Header=BB107_12 Depth=1
	lea %s0, __llvm_gcov_ctr.107@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.107@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc___cmovd@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovd@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	ld %s0, 16(, %s11)
	ldl.zx %s2, 44(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	ld1b.zx %s2, (%s1, %s0)
	ld %s0, 24(, %s11)
	st1b %s2, (%s1, %s0)
	br.l .LBB107_12
.LBB107_14:
	lea %s0, __llvm_gcov_ctr.107@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.107@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	br.l .LBB107_15
.LBB107_15:
	lea %s11, 64(, %s11)
	b.l.t (, %s10)
.Lfunc_end107:
	.size	__cmovd, .Lfunc_end107-__cmovd
                                        # -- End function
	.globl	__cmovh                         # -- Begin function __cmovh
	.p2align	4
	.type	__cmovh,@function
__cmovh:                                # @__cmovh
# %bb.0:
	adds.l %s11, -64, %s11
	brge.l.t %s11, %s8, .LBB108_16
# %bb.15:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB108_16:
	st %s2, 8(, %s11)                       # 8-byte Folded Spill
	or %s2, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s2, 56(, %s11)
	st %s1, 48(, %s11)
	stl %s0, 44(, %s11)
	lea %s0, .L__profc___cmovh@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovh@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s1, 44(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (32)0
	srl %s0, %s0, 1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 36(, %s11)
	ld %s0, 56(, %s11)
	st %s0, 24(, %s11)
	ld %s0, 48(, %s11)
	st %s0, 16(, %s11)
	ld %s1, 24(, %s11)
	ld %s0, 16(, %s11)
	cmpu.l %s0, %s0, %s1
	brlt.l 0, %s0, .LBB108_3
	br.l .LBB108_1
.LBB108_1:
	lea %s0, __llvm_gcov_ctr.108@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.108@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___cmovh@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovh@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s1, 24(, %s11)
	ld %s0, 16(, %s11)
	ldl.zx %s3, 44(, %s11)
                                        # implicit-def: $sx2
	or %s2, 0, %s3
	adds.l %s0, %s0, %s2
	cmpu.l %s0, %s0, %s1
	brgt.l 0, %s0, .LBB108_3
	br.l .LBB108_2
.LBB108_2:
	lea %s0, .L__profc___cmovh@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovh@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	br.l .LBB108_10
.LBB108_3:
	lea %s0, .L__profc___cmovh@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovh@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 40(, %s11)
	br.l .LBB108_4
.LBB108_4:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s1, 40(, %s11)
	ldl.sx %s0, 36(, %s11)
	cmpu.w %s0, %s0, %s1
	brge.w 0, %s0, .LBB108_7
	br.l .LBB108_5
.LBB108_5:                              #   in Loop: Header=BB108_4 Depth=1
	lea %s0, .L__profc___cmovh@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovh@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 48(, %s11)
	ldl.zx %s2, 40(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	sll %s1, %s1, 1
	ld2b.zx %s2, (%s1, %s0)
	ld %s0, 56(, %s11)
	st2b %s2, (%s1, %s0)
	br.l .LBB108_6
.LBB108_6:                              #   in Loop: Header=BB108_4 Depth=1
	lea %s0, __llvm_gcov_ctr.108@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.108@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s0, 40(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 40(, %s11)
	br.l .LBB108_4
.LBB108_7:
	ld1b.zx %s1, 44(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB108_9
	br.l .LBB108_8
.LBB108_8:
	lea %s0, __llvm_gcov_ctr.108@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.108@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc___cmovh@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovh@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s0, 16(, %s11)
	ldl.sx %s1, 44(, %s11)
	adds.w.sx %s1, -1, %s1
	adds.w.zx %s2, %s1, (0)1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	ld1b.zx %s2, (%s1, %s0)
	ld %s0, 24(, %s11)
	st1b %s2, (%s1, %s0)
	br.l .LBB108_9
.LBB108_9:
	lea %s0, __llvm_gcov_ctr.108@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.108@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	br.l .LBB108_14
.LBB108_10:
	br.l .LBB108_11
.LBB108_11:                             # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 44(, %s11)
	adds.w.sx %s1, -1, %s0
	stl %s1, 44(, %s11)
	breq.w 0, %s0, .LBB108_13
	br.l .LBB108_12
.LBB108_12:                             #   in Loop: Header=BB108_11 Depth=1
	lea %s0, __llvm_gcov_ctr.108@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.108@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc___cmovh@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovh@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	ld %s0, 16(, %s11)
	ldl.zx %s2, 44(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	ld1b.zx %s2, (%s1, %s0)
	ld %s0, 24(, %s11)
	st1b %s2, (%s1, %s0)
	br.l .LBB108_11
.LBB108_13:
	lea %s0, __llvm_gcov_ctr.108@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.108@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	br.l .LBB108_14
.LBB108_14:
	lea %s11, 64(, %s11)
	b.l.t (, %s10)
.Lfunc_end108:
	.size	__cmovh, .Lfunc_end108-__cmovh
                                        # -- End function
	.globl	__cmovw                         # -- Begin function __cmovw
	.p2align	4
	.type	__cmovw,@function
__cmovw:                                # @__cmovw
# %bb.0:
	adds.l %s11, -64, %s11
	brge.l.t %s11, %s8, .LBB109_17
# %bb.16:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB109_17:
	st %s2, 8(, %s11)                       # 8-byte Folded Spill
	or %s2, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s2, 56(, %s11)
	st %s1, 48(, %s11)
	stl %s0, 44(, %s11)
	lea %s0, .L__profc___cmovw@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovw@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s1, 44(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (32)0
	srl %s0, %s0, 2
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 36(, %s11)
	ldl.zx %s1, 44(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s1, -4
	and %s1, %s1, (32)0
	and %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 32(, %s11)
	ld %s0, 56(, %s11)
	st %s0, 24(, %s11)
	ld %s0, 48(, %s11)
	st %s0, 16(, %s11)
	ld %s1, 24(, %s11)
	ld %s0, 16(, %s11)
	cmpu.l %s0, %s0, %s1
	brlt.l 0, %s0, .LBB109_3
	br.l .LBB109_1
.LBB109_1:
	lea %s0, __llvm_gcov_ctr.109@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.109@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___cmovw@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovw@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s1, 24(, %s11)
	ld %s0, 16(, %s11)
	ldl.zx %s3, 44(, %s11)
                                        # implicit-def: $sx2
	or %s2, 0, %s3
	adds.l %s0, %s0, %s2
	cmpu.l %s0, %s0, %s1
	brgt.l 0, %s0, .LBB109_3
	br.l .LBB109_2
.LBB109_2:
	lea %s0, .L__profc___cmovw@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovw@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	br.l .LBB109_11
.LBB109_3:
	lea %s0, .L__profc___cmovw@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovw@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 40(, %s11)
	br.l .LBB109_4
.LBB109_4:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s1, 40(, %s11)
	ldl.sx %s0, 36(, %s11)
	cmpu.w %s0, %s0, %s1
	brge.w 0, %s0, .LBB109_7
	br.l .LBB109_5
.LBB109_5:                              #   in Loop: Header=BB109_4 Depth=1
	lea %s0, .L__profc___cmovw@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovw@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 48(, %s11)
	ldl.zx %s2, 40(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	sll %s1, %s1, 2
	ldl.sx %s2, (%s1, %s0)
	ld %s0, 56(, %s11)
	stl %s2, (%s1, %s0)
	br.l .LBB109_6
.LBB109_6:                              #   in Loop: Header=BB109_4 Depth=1
	lea %s0, __llvm_gcov_ctr.109@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.109@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s0, 40(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 40(, %s11)
	br.l .LBB109_4
.LBB109_7:
	br.l .LBB109_8
.LBB109_8:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s1, 44(, %s11)
	ldl.sx %s0, 32(, %s11)
	cmpu.w %s0, %s0, %s1
	brle.w 0, %s0, .LBB109_10
	br.l .LBB109_9
.LBB109_9:                              #   in Loop: Header=BB109_8 Depth=1
	lea %s0, __llvm_gcov_ctr.109@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.109@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc___cmovw@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovw@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s0, 16(, %s11)
	ldl.zx %s2, 32(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	ld1b.zx %s2, (%s1, %s0)
	ld %s0, 24(, %s11)
	st1b %s2, (%s1, %s0)
	ldl.sx %s0, 32(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 32(, %s11)
	br.l .LBB109_8
.LBB109_10:
	lea %s0, __llvm_gcov_ctr.109@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.109@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	br.l .LBB109_15
.LBB109_11:
	br.l .LBB109_12
.LBB109_12:                             # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 44(, %s11)
	adds.w.sx %s1, -1, %s0
	stl %s1, 44(, %s11)
	breq.w 0, %s0, .LBB109_14
	br.l .LBB109_13
.LBB109_13:                             #   in Loop: Header=BB109_12 Depth=1
	lea %s0, __llvm_gcov_ctr.109@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.109@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc___cmovw@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmovw@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	ld %s0, 16(, %s11)
	ldl.zx %s2, 44(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	ld1b.zx %s2, (%s1, %s0)
	ld %s0, 24(, %s11)
	st1b %s2, (%s1, %s0)
	br.l .LBB109_12
.LBB109_14:
	lea %s0, __llvm_gcov_ctr.109@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.109@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	br.l .LBB109_15
.LBB109_15:
	lea %s11, 64(, %s11)
	b.l.t (, %s10)
.Lfunc_end109:
	.size	__cmovw, .Lfunc_end109-__cmovw
                                        # -- End function
	.globl	__modi                          # -- Begin function __modi
	.p2align	4
	.type	__modi,@function
__modi:                                 # @__modi
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB110_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB110_2:
	st %s1, (, %s11)                        # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	and %s1, %s1, (32)0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	lea %s2, __llvm_gcov_ctr.110@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.110@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	stl %s1, 12(, %s11)
	stl %s0, 8(, %s11)
	lea %s0, .L__profc___modi@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___modi@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	ldl.sx %s2, 8(, %s11)
	divs.w.sx %s1, %s0, %s2
	muls.w.sx %s1, %s1, %s2
	subs.w.sx %s0, %s0, %s1
	adds.w.sx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end110:
	.size	__modi, .Lfunc_end110-__modi
                                        # -- End function
	.globl	__uitod                         # -- Begin function __uitod
	.p2align	4
	.type	__uitod,@function
__uitod:                                # @__uitod
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB111_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB111_2:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.111@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.111@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc___uitod@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___uitod@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.zx %s1, 12(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	cvt.d.l %s0, %s0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end111:
	.size	__uitod, .Lfunc_end111-__uitod
                                        # -- End function
	.globl	__uitof                         # -- Begin function __uitof
	.p2align	4
	.type	__uitof,@function
__uitof:                                # @__uitof
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB112_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB112_2:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.112@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.112@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc___uitof@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___uitof@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.zx %s1, 12(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	cvt.d.l %s0, %s0
	cvt.s.d %s1, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end112:
	.size	__uitof, .Lfunc_end112-__uitof
                                        # -- End function
	.globl	__ulltod                        # -- Begin function __ulltod
	.p2align	4
	.type	__ulltod,@function
__ulltod:                               # @__ulltod
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB113_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB113_2:
	lea %s1, __llvm_gcov_ctr.113@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.113@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	st %s0, 8(, %s11)
	lea %s0, .L__profc___ulltod@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ulltod@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 8(, %s11)
	srl %s1, %s0, 32
	lea.sl %s2, 1160773632
	or %s1, %s1, %s2
	lea %s2, 1048576
	lea.sl %s2, -986710016(, %s2)
	fadd.d %s1, %s1, %s2
	and %s0, %s0, (32)0
	lea.sl %s2, 1127219200
	or %s0, %s0, %s2
	fadd.d %s0, %s0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end113:
	.size	__ulltod, .Lfunc_end113-__ulltod
                                        # -- End function
	.globl	__ulltof                        # -- Begin function __ulltof
	.p2align	4
	.type	__ulltof,@function
__ulltof:                               # @__ulltof
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB114_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB114_2:
	lea %s1, __llvm_gcov_ctr.114@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.114@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	st %s0, 8(, %s11)
	lea %s0, .L__profc___ulltof@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ulltof@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s1, 8(, %s11)
	cvt.d.l %s0, %s1
	cvt.s.d %s2, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	srl %s3, %s1, 1
	and %s2, 1, %s1
	or %s2, %s2, %s3
	cvt.d.l %s2, %s2
	cvt.s.d %s2, %s2
	fadd.s %s3, %s2, %s2
                                        # implicit-def: $sx2
	or %s2, 0, %s3
	cmov.l.lt %s0, %s2, %s1
	or %s1, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end114:
	.size	__ulltof, .Lfunc_end114-__ulltof
                                        # -- End function
	.globl	__umodi                         # -- Begin function __umodi
	.p2align	4
	.type	__umodi,@function
__umodi:                                # @__umodi
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB115_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB115_2:
	st %s1, (, %s11)                        # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	and %s1, %s1, (32)0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	lea %s2, __llvm_gcov_ctr.115@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.115@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	stl %s1, 12(, %s11)
	stl %s0, 8(, %s11)
	lea %s0, .L__profc___umodi@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___umodi@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	ldl.sx %s2, 8(, %s11)
	divu.w %s1, %s0, %s2
	muls.w.sx %s1, %s1, %s2
	subs.w.sx %s0, %s0, %s1
	adds.w.zx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end115:
	.size	__umodi, .Lfunc_end115-__umodi
                                        # -- End function
	.globl	__clzhi2                        # -- Begin function __clzhi2
	.p2align	4
	.type	__clzhi2,@function
__clzhi2:                               # @__clzhi2
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB116_8
# %bb.7:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB116_8:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.116@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.116@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	st2b %s0, 14(, %s11)
	lea %s0, .L__profc___clzhi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___clzhi2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	br.l .LBB116_1
.LBB116_1:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 8(, %s11)
	brlt.w 15, %s0, .LBB116_6
	br.l .LBB116_2
.LBB116_2:                              #   in Loop: Header=BB116_1 Depth=1
	lea %s0, .L__profc___clzhi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___clzhi2@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld2b.zx %s2, 14(, %s11)
	ldl.sx %s0, 8(, %s11)
	subs.w.sx %s1, 15, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	and %s0, %s0, (32)0
	srl %s0, %s0, %s1
	or %s1, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB116_4
	br.l .LBB116_3
.LBB116_3:
	lea %s0, __llvm_gcov_ctr.116@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.116@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___clzhi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___clzhi2@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	br.l .LBB116_6
.LBB116_4:                              #   in Loop: Header=BB116_1 Depth=1
	br.l .LBB116_5
.LBB116_5:                              #   in Loop: Header=BB116_1 Depth=1
	lea %s0, __llvm_gcov_ctr.116@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.116@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldl.sx %s0, 8(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 8(, %s11)
	br.l .LBB116_1
.LBB116_6:
	ldl.sx %s1, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end116:
	.size	__clzhi2, .Lfunc_end116-__clzhi2
                                        # -- End function
	.globl	__ctzhi2                        # -- Begin function __ctzhi2
	.p2align	4
	.type	__ctzhi2,@function
__ctzhi2:                               # @__ctzhi2
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB117_8
# %bb.7:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB117_8:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.117@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.117@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	st2b %s0, 14(, %s11)
	lea %s0, .L__profc___ctzhi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ctzhi2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	br.l .LBB117_1
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 8(, %s11)
	brlt.w 15, %s0, .LBB117_6
	br.l .LBB117_2
.LBB117_2:                              #   in Loop: Header=BB117_1 Depth=1
	lea %s0, .L__profc___ctzhi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ctzhi2@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld2b.zx %s2, 14(, %s11)
	ldl.sx %s1, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	and %s0, %s0, (32)0
	srl %s0, %s0, %s1
	or %s1, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB117_4
	br.l .LBB117_3
.LBB117_3:
	lea %s0, __llvm_gcov_ctr.117@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.117@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___ctzhi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ctzhi2@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	br.l .LBB117_6
.LBB117_4:                              #   in Loop: Header=BB117_1 Depth=1
	br.l .LBB117_5
.LBB117_5:                              #   in Loop: Header=BB117_1 Depth=1
	lea %s0, __llvm_gcov_ctr.117@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.117@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldl.sx %s0, 8(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 8(, %s11)
	br.l .LBB117_1
.LBB117_6:
	ldl.sx %s1, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end117:
	.size	__ctzhi2, .Lfunc_end117-__ctzhi2
                                        # -- End function
	.globl	__fixunssfsi                    # -- Begin function __fixunssfsi
	.p2align	4
	.type	__fixunssfsi,@function
__fixunssfsi:                           # @__fixunssfsi
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB118_5
# %bb.4:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB118_5:
                                        # kill: def $sf0 killed $sf0 killed $sx0
	stu %s0, 4(, %s11)
	lea %s0, .L__profc___fixunssfsi@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___fixunssfsi@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldu %s0, 4(, %s11)
	lea.sl %s1, 1191182336
                                        # kill: def $sf1 killed $sf1 killed $sx1
	brltnan.s %s0, %s1, .LBB118_2
	br.l .LBB118_1
.LBB118_1:
	lea %s0, __llvm_gcov_ctr.118@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.118@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___fixunssfsi@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___fixunssfsi@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldu %s0, 4(, %s11)
	lea.sl %s1, -956301312
                                        # kill: def $sf1 killed $sf1 killed $sx1
	fadd.s %s0, %s0, %s1
	cvt.d.s %s0, %s0
	cvt.l.d.rz %s0, %s0
	lea %s0, 32768(, %s0)
	st %s0, 8(, %s11)
	br.l .LBB118_3
.LBB118_2:
	lea %s0, __llvm_gcov_ctr.118@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.118@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldu %s0, 4(, %s11)
	cvt.d.s %s0, %s0
	cvt.l.d.rz %s0, %s0
	st %s0, 8(, %s11)
	br.l .LBB118_3
.LBB118_3:
	ld %s0, 8(, %s11)
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end118:
	.size	__fixunssfsi, .Lfunc_end118-__fixunssfsi
                                        # -- End function
	.globl	__parityhi2                     # -- Begin function __parityhi2
	.p2align	4
	.type	__parityhi2,@function
__parityhi2:                            # @__parityhi2
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB119_8
# %bb.7:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB119_8:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.119@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.119@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	st2b %s0, 14(, %s11)
	lea %s0, .L__profc___parityhi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___parityhi2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 4(, %s11)
	stl %s0, 8(, %s11)
	br.l .LBB119_1
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 8(, %s11)
	brlt.w 15, %s0, .LBB119_6
	br.l .LBB119_2
.LBB119_2:                              #   in Loop: Header=BB119_1 Depth=1
	lea %s0, .L__profc___parityhi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___parityhi2@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld2b.zx %s2, 14(, %s11)
	ldl.sx %s1, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	and %s0, %s0, (32)0
	srl %s0, %s0, %s1
	or %s1, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB119_4
	br.l .LBB119_3
.LBB119_3:                              #   in Loop: Header=BB119_1 Depth=1
	lea %s0, __llvm_gcov_ctr.119@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.119@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___parityhi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___parityhi2@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldl.sx %s0, 4(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 4(, %s11)
	br.l .LBB119_4
.LBB119_4:                              #   in Loop: Header=BB119_1 Depth=1
	br.l .LBB119_5
.LBB119_5:                              #   in Loop: Header=BB119_1 Depth=1
	lea %s0, __llvm_gcov_ctr.119@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.119@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldl.sx %s0, 8(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 8(, %s11)
	br.l .LBB119_1
.LBB119_6:
	ldl.zx %s1, 4(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end119:
	.size	__parityhi2, .Lfunc_end119-__parityhi2
                                        # -- End function
	.globl	__popcounthi2                   # -- Begin function __popcounthi2
	.p2align	4
	.type	__popcounthi2,@function
__popcounthi2:                          # @__popcounthi2
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB120_8
# %bb.7:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB120_8:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.120@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.120@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	st2b %s0, 14(, %s11)
	lea %s0, .L__profc___popcounthi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___popcounthi2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 4(, %s11)
	stl %s0, 8(, %s11)
	br.l .LBB120_1
.LBB120_1:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 8(, %s11)
	brlt.w 15, %s0, .LBB120_6
	br.l .LBB120_2
.LBB120_2:                              #   in Loop: Header=BB120_1 Depth=1
	lea %s0, .L__profc___popcounthi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___popcounthi2@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld2b.zx %s2, 14(, %s11)
	ldl.sx %s1, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	and %s0, %s0, (32)0
	srl %s0, %s0, %s1
	or %s1, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB120_4
	br.l .LBB120_3
.LBB120_3:                              #   in Loop: Header=BB120_1 Depth=1
	lea %s0, __llvm_gcov_ctr.120@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.120@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___popcounthi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___popcounthi2@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldl.sx %s0, 4(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 4(, %s11)
	br.l .LBB120_4
.LBB120_4:                              #   in Loop: Header=BB120_1 Depth=1
	br.l .LBB120_5
.LBB120_5:                              #   in Loop: Header=BB120_1 Depth=1
	lea %s0, __llvm_gcov_ctr.120@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.120@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldl.sx %s0, 8(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 8(, %s11)
	br.l .LBB120_1
.LBB120_6:
	ldl.sx %s1, 4(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end120:
	.size	__popcounthi2, .Lfunc_end120-__popcounthi2
                                        # -- End function
	.globl	__mulsi3_iq2000                 # -- Begin function __mulsi3_iq2000
	.p2align	4
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        # @__mulsi3_iq2000
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB121_7
# %bb.6:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB121_7:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	and %s1, %s1, (32)0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	lea %s2, __llvm_gcov_ctr.121@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.121@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	stl %s1, 28(, %s11)
	stl %s0, 24(, %s11)
	lea %s0, .L__profc___mulsi3_iq2000@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mulsi3_iq2000@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 20(, %s11)
	br.l .LBB121_1
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 28(, %s11)
	breq.w 0, %s0, .LBB121_5
	br.l .LBB121_2
.LBB121_2:                              #   in Loop: Header=BB121_1 Depth=1
	lea %s0, .L__profc___mulsi3_iq2000@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mulsi3_iq2000@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld1b.zx %s1, 28(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB121_4
	br.l .LBB121_3
.LBB121_3:                              #   in Loop: Header=BB121_1 Depth=1
	lea %s0, __llvm_gcov_ctr.121@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.121@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___mulsi3_iq2000@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mulsi3_iq2000@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldl.sx %s1, 24(, %s11)
	ldl.sx %s0, 20(, %s11)
	adds.w.sx %s0, %s0, %s1
	stl %s0, 20(, %s11)
	br.l .LBB121_4
.LBB121_4:                              #   in Loop: Header=BB121_1 Depth=1
	lea %s0, __llvm_gcov_ctr.121@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.121@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldl.sx %s1, 28(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (32)0
	srl %s0, %s0, 1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 28(, %s11)
	ldl.sx %s0, 24(, %s11)
	sla.w.sx %s0, %s0, 1
	stl %s0, 24(, %s11)
	br.l .LBB121_1
.LBB121_5:
	ldl.zx %s1, 20(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end121:
	.size	__mulsi3_iq2000, .Lfunc_end121-__mulsi3_iq2000
                                        # -- End function
	.globl	__mulsi3_lm32                   # -- Begin function __mulsi3_lm32
	.p2align	4
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          # @__mulsi3_lm32
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB122_10
# %bb.9:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB122_10:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	and %s1, %s1, (32)0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 24(, %s11)
	stl %s0, 20(, %s11)
	lea %s0, .L__profc___mulsi3_lm32@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mulsi3_lm32@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 16(, %s11)
	ldl.sx %s0, 24(, %s11)
	brne.w 0, %s0, .LBB122_2
	br.l .LBB122_1
.LBB122_1:
	lea %s0, __llvm_gcov_ctr.122@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.122@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___mulsi3_lm32@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mulsi3_lm32@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 28(, %s11)
	br.l .LBB122_8
.LBB122_2:
	lea %s0, __llvm_gcov_ctr.122@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.122@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	br.l .LBB122_3
.LBB122_3:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 20(, %s11)
	breq.w 0, %s0, .LBB122_7
	br.l .LBB122_4
.LBB122_4:                              #   in Loop: Header=BB122_3 Depth=1
	lea %s0, .L__profc___mulsi3_lm32@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mulsi3_lm32@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld1b.zx %s1, 20(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB122_6
	br.l .LBB122_5
.LBB122_5:                              #   in Loop: Header=BB122_3 Depth=1
	lea %s0, __llvm_gcov_ctr.122@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.122@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc___mulsi3_lm32@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mulsi3_lm32@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ldl.sx %s1, 24(, %s11)
	ldl.sx %s0, 16(, %s11)
	adds.w.sx %s0, %s0, %s1
	stl %s0, 16(, %s11)
	br.l .LBB122_6
.LBB122_6:                              #   in Loop: Header=BB122_3 Depth=1
	lea %s0, __llvm_gcov_ctr.122@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.122@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ldl.sx %s0, 24(, %s11)
	sla.w.sx %s0, %s0, 1
	stl %s0, 24(, %s11)
	ldl.sx %s1, 20(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (32)0
	srl %s0, %s0, 1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 20(, %s11)
	br.l .LBB122_3
.LBB122_7:
	ldl.sx %s0, 16(, %s11)
	stl %s0, 28(, %s11)
	br.l .LBB122_8
.LBB122_8:
	ldl.zx %s1, 28(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end122:
	.size	__mulsi3_lm32, .Lfunc_end122-__mulsi3_lm32
                                        # -- End function
	.globl	__udivmodsi4                    # -- Begin function __udivmodsi4
	.p2align	4
	.type	__udivmodsi4,@function
__udivmodsi4:                           # @__udivmodsi4
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB123_18
# %bb.17:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB123_18:
	st %s2, 16(, %s11)                      # 8-byte Folded Spill
	or %s2, 0, %s0
	ld %s0, 16(, %s11)                      # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	and %s1, %s1, (32)0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	and %s2, %s2, (32)0
                                        # kill: def $sw2 killed $sw2 killed $sx2
	stl %s2, 40(, %s11)
	stl %s1, 36(, %s11)
	stl %s0, 32(, %s11)
	lea %s0, .L__profc___udivmodsi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodsi4@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 28(, %s11)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 24(, %s11)
	br.l .LBB123_1
.LBB123_1:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s2, 36(, %s11)
	ldl.sx %s0, 40(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s0, %s0, %s2
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	brge.w 0, %s0, .LBB123_6
	br.l .LBB123_2
.LBB123_2:                              #   in Loop: Header=BB123_1 Depth=1
	lea %s0, __llvm_gcov_ctr.123@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.123@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___udivmodsi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodsi4@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ldl.sx %s0, 28(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	breq.w 0, %s0, .LBB123_6
	br.l .LBB123_3
.LBB123_3:                              #   in Loop: Header=BB123_1 Depth=1
	lea %s0, __llvm_gcov_ctr.123@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.123@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___udivmodsi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodsi4@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	br.l .LBB123_4
.LBB123_4:                              #   in Loop: Header=BB123_1 Depth=1
	lea %s0, .L__profc___udivmodsi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodsi4@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldl.zx %s1, 36(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s1, -2147483648
	and %s1, %s1, (32)0
	and %s0, %s0, %s1
	or %s1, 0, (0)1
	cmps.l %s2, %s0, %s1
	cmov.l.eq %s1, (63)0, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	brne.l 0, %s0, .LBB123_6
	br.l .LBB123_5
.LBB123_5:                              #   in Loop: Header=BB123_1 Depth=1
	ldl.sx %s0, 8(, %s11)                   # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.123@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.123@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	lea %s1, .L__profc___udivmodsi4@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc___udivmodsi4@hi(, %s1)
	ld %s2, 24(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 24(, %s1)
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB123_6
.LBB123_6:                              #   in Loop: Header=BB123_1 Depth=1
	ldl.sx %s1, 12(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB123_8
	br.l .LBB123_7
.LBB123_7:                              #   in Loop: Header=BB123_1 Depth=1
	lea %s0, __llvm_gcov_ctr.123@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.123@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc___udivmodsi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodsi4@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s0, 36(, %s11)
	sla.w.sx %s0, %s0, 1
	stl %s0, 36(, %s11)
	ldl.sx %s0, 28(, %s11)
	sla.w.sx %s0, %s0, 1
	stl %s0, 28(, %s11)
	br.l .LBB123_1
.LBB123_8:
	br.l .LBB123_9
.LBB123_9:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 28(, %s11)
	breq.w 0, %s0, .LBB123_13
	br.l .LBB123_10
.LBB123_10:                             #   in Loop: Header=BB123_9 Depth=1
	lea %s0, .L__profc___udivmodsi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodsi4@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	ldl.sx %s1, 40(, %s11)
	ldl.sx %s0, 36(, %s11)
	cmpu.w %s0, %s0, %s1
	brlt.w 0, %s0, .LBB123_12
	br.l .LBB123_11
.LBB123_11:                             #   in Loop: Header=BB123_9 Depth=1
	lea %s0, __llvm_gcov_ctr.123@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.123@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc___udivmodsi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodsi4@hi(, %s0)
	ld %s1, 56(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 56(, %s0)
	ldl.sx %s1, 36(, %s11)
	ldl.sx %s0, 40(, %s11)
	subs.w.sx %s0, %s0, %s1
	stl %s0, 40(, %s11)
	ldl.sx %s0, 28(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	ldl.sx %s2, 24(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	or %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 24(, %s11)
	br.l .LBB123_12
.LBB123_12:                             #   in Loop: Header=BB123_9 Depth=1
	lea %s0, __llvm_gcov_ctr.123@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.123@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ldl.sx %s1, 28(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (32)0
	srl %s0, %s0, 1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 28(, %s11)
	ldl.sx %s1, 36(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (32)0
	srl %s0, %s0, 1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 36(, %s11)
	br.l .LBB123_9
.LBB123_13:
	ldl.sx %s0, 32(, %s11)
	breq.w 0, %s0, .LBB123_15
	br.l .LBB123_14
.LBB123_14:
	lea %s0, __llvm_gcov_ctr.123@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.123@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	lea %s0, .L__profc___udivmodsi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodsi4@hi(, %s0)
	ld %s1, 64(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 64(, %s0)
	ldl.sx %s0, 40(, %s11)
	stl %s0, 44(, %s11)
	br.l .LBB123_16
.LBB123_15:
	lea %s0, __llvm_gcov_ctr.123@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.123@hi(, %s0)
	ld %s1, 56(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 56(, %s0)
	ldl.sx %s0, 24(, %s11)
	stl %s0, 44(, %s11)
	br.l .LBB123_16
.LBB123_16:
	ldl.zx %s1, 44(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end123:
	.size	__udivmodsi4, .Lfunc_end123-__udivmodsi4
                                        # -- End function
	.globl	__mspabi_cmpf                   # -- Begin function __mspabi_cmpf
	.p2align	4
	.type	__mspabi_cmpf,@function
__mspabi_cmpf:                          # @__mspabi_cmpf
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB124_7
# %bb.6:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB124_7:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
                                        # kill: def $sf0 killed $sf0 killed $sx0
                                        # kill: def $sf1 killed $sf1 killed $sx1
	stu %s1, 24(, %s11)
	stu %s0, 20(, %s11)
	lea %s0, .L__profc___mspabi_cmpf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mspabi_cmpf@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldu %s0, 24(, %s11)
	ldu %s1, 20(, %s11)
	brgenan.s %s0, %s1, .LBB124_2
	br.l .LBB124_1
.LBB124_1:
	lea %s0, __llvm_gcov_ctr.124@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.124@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___mspabi_cmpf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mspabi_cmpf@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	or %s0, -1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 28(, %s11)
	br.l .LBB124_5
.LBB124_2:
	ldu %s0, 24(, %s11)
	ldu %s1, 20(, %s11)
	brlenan.s %s0, %s1, .LBB124_4
	br.l .LBB124_3
.LBB124_3:
	lea %s0, __llvm_gcov_ctr.124@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.124@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___mspabi_cmpf@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mspabi_cmpf@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 28(, %s11)
	br.l .LBB124_5
.LBB124_4:
	lea %s0, __llvm_gcov_ctr.124@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.124@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 28(, %s11)
	br.l .LBB124_5
.LBB124_5:
	ldl.sx %s1, 28(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end124:
	.size	__mspabi_cmpf, .Lfunc_end124-__mspabi_cmpf
                                        # -- End function
	.globl	__mspabi_cmpd                   # -- Begin function __mspabi_cmpd
	.p2align	4
	.type	__mspabi_cmpd,@function
__mspabi_cmpd:                          # @__mspabi_cmpd
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB125_7
# %bb.6:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB125_7:
	st %s0, 16(, %s11)
	st %s1, 8(, %s11)
	lea %s0, .L__profc___mspabi_cmpd@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mspabi_cmpd@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 16(, %s11)
	ld %s1, 8(, %s11)
	brgenan.d %s0, %s1, .LBB125_2
	br.l .LBB125_1
.LBB125_1:
	lea %s0, __llvm_gcov_ctr.125@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.125@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___mspabi_cmpd@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mspabi_cmpd@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	or %s0, -1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 28(, %s11)
	br.l .LBB125_5
.LBB125_2:
	ld %s0, 16(, %s11)
	ld %s1, 8(, %s11)
	brlenan.d %s0, %s1, .LBB125_4
	br.l .LBB125_3
.LBB125_3:
	lea %s0, __llvm_gcov_ctr.125@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.125@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___mspabi_cmpd@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mspabi_cmpd@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 28(, %s11)
	br.l .LBB125_5
.LBB125_4:
	lea %s0, __llvm_gcov_ctr.125@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.125@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 28(, %s11)
	br.l .LBB125_5
.LBB125_5:
	ldl.sx %s1, 28(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end125:
	.size	__mspabi_cmpd, .Lfunc_end125-__mspabi_cmpd
                                        # -- End function
	.globl	__mspabi_mpysll                 # -- Begin function __mspabi_mpysll
	.p2align	4
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        # @__mspabi_mpysll
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB126_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB126_2:
	lea %s2, __llvm_gcov_ctr.126@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.126@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s0, 8(, %s11)
	st %s1, (, %s11)
	lea %s0, .L__profc___mspabi_mpysll@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mspabi_mpysll@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 8(, %s11)
	ld %s1, (, %s11)
	muls.l %s0, %s0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end126:
	.size	__mspabi_mpysll, .Lfunc_end126-__mspabi_mpysll
                                        # -- End function
	.globl	__mspabi_mpyull                 # -- Begin function __mspabi_mpyull
	.p2align	4
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        # @__mspabi_mpyull
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB127_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB127_2:
	lea %s2, __llvm_gcov_ctr.127@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.127@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s0, 8(, %s11)
	st %s1, (, %s11)
	lea %s0, .L__profc___mspabi_mpyull@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mspabi_mpyull@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 8(, %s11)
	ld %s1, (, %s11)
	muls.l %s0, %s0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end127:
	.size	__mspabi_mpyull, .Lfunc_end127-__mspabi_mpyull
                                        # -- End function
	.globl	__mulhi3                        # -- Begin function __mulhi3
	.p2align	4
	.type	__mulhi3,@function
__mulhi3:                               # @__mulhi3
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB128_16
# %bb.15:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB128_16:
	st %s1, 16(, %s11)                      # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 16(, %s11)                      # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	and %s1, %s1, (32)0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 44(, %s11)
	stl %s0, 40(, %s11)
	lea %s0, .L__profc___mulhi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mulhi3@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 32(, %s11)
	stl %s0, 28(, %s11)
	ldl.sx %s0, 40(, %s11)
	brlt.w -1, %s0, .LBB128_2
	br.l .LBB128_1
.LBB128_1:
	lea %s0, __llvm_gcov_ctr.128@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.128@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___mulhi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mulhi3@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s0, 40(, %s11)
	subs.w.sx %s0, 0, %s0
	stl %s0, 40(, %s11)
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 32(, %s11)
	br.l .LBB128_2
.LBB128_2:
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st1b %s0, 39(, %s11)
	br.l .LBB128_3
.LBB128_3:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 40(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	breq.w 0, %s0, .LBB128_6
	br.l .LBB128_4
.LBB128_4:                              #   in Loop: Header=BB128_3 Depth=1
	lea %s0, __llvm_gcov_ctr.128@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.128@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___mulhi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mulhi3@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld1b.sx %s1, 39(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	or %s1, 32, (0)1
	cmpu.l %s2, %s0, %s1
	or %s1, 0, (0)1
	cmov.l.lt %s1, (63)0, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	cmpu.l %s0, 31, %s0
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	brgt.l 0, %s0, .LBB128_6
	br.l .LBB128_5
.LBB128_5:                              #   in Loop: Header=BB128_3 Depth=1
	ldl.sx %s0, 8(, %s11)                   # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.128@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.128@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	lea %s1, .L__profc___mulhi3@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc___mulhi3@hi(, %s1)
	ld %s2, 32(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 32(, %s1)
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB128_6
.LBB128_6:                              #   in Loop: Header=BB128_3 Depth=1
	ldl.sx %s1, 12(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB128_11
	br.l .LBB128_7
.LBB128_7:                              #   in Loop: Header=BB128_3 Depth=1
	lea %s0, .L__profc___mulhi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mulhi3@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld1b.zx %s1, 40(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB128_9
	br.l .LBB128_8
.LBB128_8:                              #   in Loop: Header=BB128_3 Depth=1
	lea %s0, __llvm_gcov_ctr.128@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.128@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc___mulhi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mulhi3@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ldl.sx %s1, 44(, %s11)
	ldl.sx %s0, 28(, %s11)
	adds.w.sx %s0, %s0, %s1
	stl %s0, 28(, %s11)
	br.l .LBB128_9
.LBB128_9:                              #   in Loop: Header=BB128_3 Depth=1
	ldl.sx %s0, 44(, %s11)
	sla.w.sx %s0, %s0, 1
	stl %s0, 44(, %s11)
	ldl.sx %s0, 40(, %s11)
	sra.w.sx %s0, %s0, 1
	stl %s0, 40(, %s11)
	br.l .LBB128_10
.LBB128_10:                             #   in Loop: Header=BB128_3 Depth=1
	lea %s0, __llvm_gcov_ctr.128@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.128@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld1b.zx %s0, 39(, %s11)
	adds.w.sx %s0, 1, %s0
	st1b %s0, 39(, %s11)
	br.l .LBB128_3
.LBB128_11:
	ldl.sx %s0, 32(, %s11)
	breq.w 0, %s0, .LBB128_13
	br.l .LBB128_12
.LBB128_12:
	lea %s0, __llvm_gcov_ctr.128@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.128@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	lea %s0, .L__profc___mulhi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mulhi3@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	ldl.sx %s0, 28(, %s11)
	subs.w.sx %s0, 0, %s0
	stl %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB128_14
.LBB128_13:
	lea %s0, __llvm_gcov_ctr.128@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.128@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	ldl.sx %s0, 28(, %s11)
	stl %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB128_14
.LBB128_14:
	ldl.sx %s0, 4(, %s11)                   # 4-byte Folded Reload
	adds.w.sx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end128:
	.size	__mulhi3, .Lfunc_end128-__mulhi3
                                        # -- End function
	.globl	__divsi3                        # -- Begin function __divsi3
	.p2align	4
	.type	__divsi3,@function
__divsi3:                               # @__divsi3
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -272(, %s11)
	brge.l.t %s11, %s8, .LBB129_8
# %bb.7:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB129_8:
	lea %s2, __llvm_gcov_ctr.129@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.129@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s0, -8(, %s9)
	st %s1, -16(, %s9)
	lea %s0, .L__profc___divsi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___divsi3@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -20(, %s9)
	ld %s0, -8(, %s9)
	brlt.l -1, %s0, .LBB129_2
	br.l .LBB129_1
.LBB129_1:
	lea %s0, __llvm_gcov_ctr.129@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.129@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___divsi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___divsi3@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, -8(, %s9)
	subs.l %s0, 0, %s0
	st %s0, -8(, %s9)
	ldl.sx %s1, -20(, %s9)
	or %s0, 0, (0)1
	or %s2, 0, %s0
	cmps.w.sx %s1, %s1, %s2
	cmov.w.eq %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -20(, %s9)
	br.l .LBB129_2
.LBB129_2:
	ld %s0, -16(, %s9)
	brlt.l -1, %s0, .LBB129_4
	br.l .LBB129_3
.LBB129_3:
	lea %s0, __llvm_gcov_ctr.129@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.129@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc___divsi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___divsi3@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, -16(, %s9)
	subs.l %s0, 0, %s0
	st %s0, -16(, %s9)
	ldl.sx %s1, -20(, %s9)
	or %s0, 0, (0)1
	or %s2, 0, %s0
	cmps.w.sx %s1, %s1, %s2
	cmov.w.eq %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -20(, %s9)
	br.l .LBB129_4
.LBB129_4:
	ldl.zx %s1, -8(, %s9)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	ldl.zx %s2, -16(, %s9)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	lea %s2, __udivmodsi4@lo
	and %s2, %s2, (32)0
	lea.sl %s3, __udivmodsi4@hi(, %s2)
	or %s2, 0, (0)1
	or %s12, 0, %s3
	bsic %s10, (, %s12)
	st %s0, -32(, %s9)
	ldl.sx %s0, -20(, %s9)
	breq.w 0, %s0, .LBB129_6
	br.l .LBB129_5
.LBB129_5:
	lea %s0, __llvm_gcov_ctr.129@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.129@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc___divsi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___divsi3@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, -32(, %s9)
	subs.l %s0, 0, %s0
	st %s0, -32(, %s9)
	br.l .LBB129_6
.LBB129_6:
	ld %s0, -32(, %s9)
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end129:
	.size	__divsi3, .Lfunc_end129-__divsi3
                                        # -- End function
	.globl	__modsi3                        # -- Begin function __modsi3
	.p2align	4
	.type	__modsi3,@function
__modsi3:                               # @__modsi3
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -272(, %s11)
	brge.l.t %s11, %s8, .LBB130_8
# %bb.7:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB130_8:
	lea %s2, __llvm_gcov_ctr.130@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.130@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s0, -8(, %s9)
	st %s1, -16(, %s9)
	lea %s0, .L__profc___modsi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___modsi3@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -20(, %s9)
	ld %s0, -8(, %s9)
	brlt.l -1, %s0, .LBB130_2
	br.l .LBB130_1
.LBB130_1:
	lea %s0, __llvm_gcov_ctr.130@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.130@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___modsi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___modsi3@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, -8(, %s9)
	subs.l %s0, 0, %s0
	st %s0, -8(, %s9)
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -20(, %s9)
	br.l .LBB130_2
.LBB130_2:
	ld %s0, -16(, %s9)
	brlt.l -1, %s0, .LBB130_4
	br.l .LBB130_3
.LBB130_3:
	lea %s0, __llvm_gcov_ctr.130@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.130@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc___modsi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___modsi3@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, -16(, %s9)
	subs.l %s0, 0, %s0
	st %s0, -16(, %s9)
	br.l .LBB130_4
.LBB130_4:
	ldl.zx %s1, -8(, %s9)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	ldl.zx %s2, -16(, %s9)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	lea %s2, __udivmodsi4@lo
	and %s2, %s2, (32)0
	lea.sl %s3, __udivmodsi4@hi(, %s2)
	or %s2, 1, (0)1
	or %s12, 0, %s3
	bsic %s10, (, %s12)
	st %s0, -32(, %s9)
	ldl.sx %s0, -20(, %s9)
	breq.w 0, %s0, .LBB130_6
	br.l .LBB130_5
.LBB130_5:
	lea %s0, __llvm_gcov_ctr.130@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.130@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc___modsi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___modsi3@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, -32(, %s9)
	subs.l %s0, 0, %s0
	st %s0, -32(, %s9)
	br.l .LBB130_6
.LBB130_6:
	ld %s0, -32(, %s9)
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end130:
	.size	__modsi3, .Lfunc_end130-__modsi3
                                        # -- End function
	.globl	__udivmodhi4                    # -- Begin function __udivmodhi4
	.p2align	4
	.type	__udivmodhi4,@function
__udivmodhi4:                           # @__udivmodhi4
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB131_18
# %bb.17:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB131_18:
	st %s2, 8(, %s11)                       # 8-byte Folded Spill
	or %s2, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	and %s1, %s1, (32)0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	and %s2, %s2, (32)0
                                        # kill: def $sw2 killed $sw2 killed $sx2
	st2b %s2, 28(, %s11)
	st2b %s1, 26(, %s11)
	stl %s0, 20(, %s11)
	lea %s0, .L__profc___udivmodhi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodhi4@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st2b %s0, 18(, %s11)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st2b %s0, 16(, %s11)
	br.l .LBB131_1
.LBB131_1:                              # =>This Inner Loop Header: Depth=1
	ld2b.zx %s0, 26(, %s11)
	ld2b.zx %s1, 28(, %s11)
	or %s2, 0, (0)1
                                        # kill: def $sw2 killed $sw2 killed $sx2
	stl %s2, 4(, %s11)                      # 4-byte Folded Spill
	brge.w %s0, %s1, .LBB131_6
	br.l .LBB131_2
.LBB131_2:                              #   in Loop: Header=BB131_1 Depth=1
	lea %s0, __llvm_gcov_ctr.131@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.131@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___udivmodhi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodhi4@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld2b.zx %s0, 18(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	breq.w 0, %s0, .LBB131_6
	br.l .LBB131_3
.LBB131_3:                              #   in Loop: Header=BB131_1 Depth=1
	lea %s0, __llvm_gcov_ctr.131@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.131@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___udivmodhi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodhi4@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	br.l .LBB131_4
.LBB131_4:                              #   in Loop: Header=BB131_1 Depth=1
	lea %s0, .L__profc___udivmodhi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodhi4@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld2b.zx %s1, 26(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s1, 32768
	and %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	or %s1, 0, (0)1
	or %s2, 0, %s1
	cmps.w.sx %s2, %s0, %s2
	cmov.w.eq %s1, (63)0, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, (, %s11)                       # 4-byte Folded Spill
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	brne.w 0, %s0, .LBB131_6
	br.l .LBB131_5
.LBB131_5:                              #   in Loop: Header=BB131_1 Depth=1
	ldl.sx %s0, (, %s11)                    # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.131@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.131@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	lea %s1, .L__profc___udivmodhi4@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc___udivmodhi4@hi(, %s1)
	ld %s2, 24(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 24(, %s1)
	stl %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB131_6
.LBB131_6:                              #   in Loop: Header=BB131_1 Depth=1
	ldl.sx %s1, 4(, %s11)                   # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB131_8
	br.l .LBB131_7
.LBB131_7:                              #   in Loop: Header=BB131_1 Depth=1
	lea %s0, __llvm_gcov_ctr.131@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.131@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc___udivmodhi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodhi4@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld2b.zx %s0, 26(, %s11)
	sla.w.sx %s0, %s0, 1
	st2b %s0, 26(, %s11)
	ld2b.zx %s0, 18(, %s11)
	sla.w.sx %s0, %s0, 1
	st2b %s0, 18(, %s11)
	br.l .LBB131_1
.LBB131_8:
	br.l .LBB131_9
.LBB131_9:                              # =>This Inner Loop Header: Depth=1
	ld2b.zx %s0, 18(, %s11)
	breq.w 0, %s0, .LBB131_13
	br.l .LBB131_10
.LBB131_10:                             #   in Loop: Header=BB131_9 Depth=1
	lea %s0, .L__profc___udivmodhi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodhi4@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	ld2b.zx %s0, 28(, %s11)
	ld2b.zx %s1, 26(, %s11)
	brlt.w %s0, %s1, .LBB131_12
	br.l .LBB131_11
.LBB131_11:                             #   in Loop: Header=BB131_9 Depth=1
	lea %s0, __llvm_gcov_ctr.131@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.131@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc___udivmodhi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodhi4@hi(, %s0)
	ld %s1, 56(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 56(, %s0)
	ld2b.zx %s1, 26(, %s11)
	ld2b.zx %s0, 28(, %s11)
	subs.w.sx %s0, %s0, %s1
	st2b %s0, 28(, %s11)
	ld2b.zx %s0, 18(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	ld2b.zx %s2, 16(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	or %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st2b %s0, 16(, %s11)
	br.l .LBB131_12
.LBB131_12:                             #   in Loop: Header=BB131_9 Depth=1
	lea %s0, __llvm_gcov_ctr.131@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.131@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld2b.zx %s1, 18(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (32)0
	srl %s0, %s0, 1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st2b %s0, 18(, %s11)
	ld2b.zx %s1, 26(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (32)0
	srl %s0, %s0, 1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st2b %s0, 26(, %s11)
	br.l .LBB131_9
.LBB131_13:
	ldl.sx %s0, 20(, %s11)
	breq.w 0, %s0, .LBB131_15
	br.l .LBB131_14
.LBB131_14:
	lea %s0, __llvm_gcov_ctr.131@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.131@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	lea %s0, .L__profc___udivmodhi4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodhi4@hi(, %s0)
	ld %s1, 64(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 64(, %s0)
	ld2b.zx %s0, 28(, %s11)
	st2b %s0, 30(, %s11)
	br.l .LBB131_16
.LBB131_15:
	lea %s0, __llvm_gcov_ctr.131@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.131@hi(, %s0)
	ld %s1, 56(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 56(, %s0)
	ld2b.zx %s0, 16(, %s11)
	st2b %s0, 30(, %s11)
	br.l .LBB131_16
.LBB131_16:
	ld2b.zx %s1, 30(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end131:
	.size	__udivmodhi4, .Lfunc_end131-__udivmodhi4
                                        # -- End function
	.globl	__udivmodsi4_libgcc             # -- Begin function __udivmodsi4_libgcc
	.p2align	4
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    # @__udivmodsi4_libgcc
# %bb.0:
	adds.l %s11, -64, %s11
	brge.l.t %s11, %s8, .LBB132_18
# %bb.17:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB132_18:
	st %s2, 8(, %s11)                       # 8-byte Folded Spill
	or %s2, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s2, 48(, %s11)
	st %s1, 40(, %s11)
	stl %s0, 36(, %s11)
	lea %s0, .L__profc___udivmodsi4_libgcc@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodsi4_libgcc@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 1, (0)1
	st %s0, 24(, %s11)
	or %s0, 0, (0)1
	st %s0, 16(, %s11)
	br.l .LBB132_1
.LBB132_1:                              # =>This Inner Loop Header: Depth=1
	ld %s2, 40(, %s11)
	ld %s0, 48(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.l %s0, %s0, %s2
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	brge.l 0, %s0, .LBB132_6
	br.l .LBB132_2
.LBB132_2:                              #   in Loop: Header=BB132_1 Depth=1
	lea %s0, __llvm_gcov_ctr.132@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.132@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___udivmodsi4_libgcc@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodsi4_libgcc@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s0, 24(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	breq.l 0, %s0, .LBB132_6
	br.l .LBB132_3
.LBB132_3:                              #   in Loop: Header=BB132_1 Depth=1
	lea %s0, __llvm_gcov_ctr.132@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.132@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___udivmodsi4_libgcc@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodsi4_libgcc@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	br.l .LBB132_4
.LBB132_4:                              #   in Loop: Header=BB132_1 Depth=1
	lea %s0, .L__profc___udivmodsi4_libgcc@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodsi4_libgcc@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 40(, %s11)
	lea %s1, -2147483648
	and %s1, %s1, (32)0
	and %s0, %s0, %s1
	or %s1, 0, (0)1
	cmps.l %s2, %s0, %s1
	cmov.l.eq %s1, (63)0, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, (, %s11)                       # 4-byte Folded Spill
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	brne.l 0, %s0, .LBB132_6
	br.l .LBB132_5
.LBB132_5:                              #   in Loop: Header=BB132_1 Depth=1
	ldl.sx %s0, (, %s11)                    # 4-byte Folded Reload
	lea %s1, __llvm_gcov_ctr.132@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.132@hi(, %s1)
	ld %s2, 16(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 16(, %s1)
	lea %s1, .L__profc___udivmodsi4_libgcc@lo
	and %s1, %s1, (32)0
	lea.sl %s1, .L__profc___udivmodsi4_libgcc@hi(, %s1)
	ld %s2, 24(, %s1)
	lea %s2, 1(, %s2)
	st %s2, 24(, %s1)
	stl %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB132_6
.LBB132_6:                              #   in Loop: Header=BB132_1 Depth=1
	ldl.sx %s1, 4(, %s11)                   # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB132_8
	br.l .LBB132_7
.LBB132_7:                              #   in Loop: Header=BB132_1 Depth=1
	lea %s0, __llvm_gcov_ctr.132@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.132@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc___udivmodsi4_libgcc@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodsi4_libgcc@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 40(, %s11)
	sll %s0, %s0, 1
	st %s0, 40(, %s11)
	ld %s0, 24(, %s11)
	sll %s0, %s0, 1
	st %s0, 24(, %s11)
	br.l .LBB132_1
.LBB132_8:
	br.l .LBB132_9
.LBB132_9:                              # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB132_13
	br.l .LBB132_10
.LBB132_10:                             #   in Loop: Header=BB132_9 Depth=1
	lea %s0, .L__profc___udivmodsi4_libgcc@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodsi4_libgcc@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	ld %s1, 48(, %s11)
	ld %s0, 40(, %s11)
	cmpu.l %s0, %s0, %s1
	brlt.l 0, %s0, .LBB132_12
	br.l .LBB132_11
.LBB132_11:                             #   in Loop: Header=BB132_9 Depth=1
	lea %s0, __llvm_gcov_ctr.132@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.132@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	lea %s0, .L__profc___udivmodsi4_libgcc@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodsi4_libgcc@hi(, %s0)
	ld %s1, 56(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 56(, %s0)
	ld %s1, 40(, %s11)
	ld %s0, 48(, %s11)
	subs.l %s0, %s0, %s1
	st %s0, 48(, %s11)
	ld %s1, 24(, %s11)
	ld %s0, 16(, %s11)
	or %s0, %s0, %s1
	st %s0, 16(, %s11)
	br.l .LBB132_12
.LBB132_12:                             #   in Loop: Header=BB132_9 Depth=1
	lea %s0, __llvm_gcov_ctr.132@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.132@hi(, %s0)
	ld %s1, 40(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 40(, %s0)
	ld %s0, 24(, %s11)
	srl %s0, %s0, 1
	st %s0, 24(, %s11)
	ld %s0, 40(, %s11)
	srl %s0, %s0, 1
	st %s0, 40(, %s11)
	br.l .LBB132_9
.LBB132_13:
	ldl.sx %s0, 36(, %s11)
	breq.w 0, %s0, .LBB132_15
	br.l .LBB132_14
.LBB132_14:
	lea %s0, __llvm_gcov_ctr.132@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.132@hi(, %s0)
	ld %s1, 48(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 48(, %s0)
	lea %s0, .L__profc___udivmodsi4_libgcc@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___udivmodsi4_libgcc@hi(, %s0)
	ld %s1, 64(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 64(, %s0)
	ld %s0, 48(, %s11)
	st %s0, 56(, %s11)
	br.l .LBB132_16
.LBB132_15:
	lea %s0, __llvm_gcov_ctr.132@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.132@hi(, %s0)
	ld %s1, 56(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 56(, %s0)
	ld %s0, 16(, %s11)
	st %s0, 56(, %s11)
	br.l .LBB132_16
.LBB132_16:
	ld %s0, 56(, %s11)
	lea %s11, 64(, %s11)
	b.l.t (, %s10)
.Lfunc_end132:
	.size	__udivmodsi4_libgcc, .Lfunc_end132-__udivmodsi4_libgcc
                                        # -- End function
	.globl	__ashldi3                       # -- Begin function __ashldi3
	.p2align	4
	.type	__ashldi3,@function
__ashldi3:                              # @__ashldi3
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB133_8
# %bb.7:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB133_8:
	st %s1, (, %s11)                        # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s1, 32(, %s11)
	stl %s0, 28(, %s11)
	lea %s0, .L__profc___ashldi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ashldi3@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 32, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 24(, %s11)
	ld %s0, 32(, %s11)
	st %s0, 16(, %s11)
	ld1b.zx %s1, 28(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 32, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB133_2
	br.l .LBB133_1
.LBB133_1:
	lea %s0, __llvm_gcov_ctr.133@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.133@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___ashldi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ashldi3@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	ldl.sx %s0, 16(, %s11)
	ldl.sx %s1, 28(, %s11)
	adds.w.sx %s1, -32, %s1
	sla.w.sx %s0, %s0, %s1
	stl %s0, 12(, %s11)
	br.l .LBB133_5
.LBB133_2:
	ldl.sx %s0, 28(, %s11)
	brne.w 0, %s0, .LBB133_4
	br.l .LBB133_3
.LBB133_3:
	lea %s0, __llvm_gcov_ctr.133@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.133@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___ashldi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ashldi3@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 32(, %s11)
	st %s0, 40(, %s11)
	br.l .LBB133_6
.LBB133_4:
	lea %s0, __llvm_gcov_ctr.133@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.133@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldl.sx %s0, 16(, %s11)
	ldl.sx %s1, 28(, %s11)
	sla.w.sx %s0, %s0, %s1
	stl %s0, 8(, %s11)
	ldl.sx %s1, 20(, %s11)
	ldl.sx %s0, 28(, %s11)
	sla.w.sx %s1, %s1, %s0
	ldl.sx %s3, 16(, %s11)
	subs.w.sx %s2, 32, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s3
	and %s0, %s0, (32)0
	srl %s0, %s0, %s2
	or %s2, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	or %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	br.l .LBB133_5
.LBB133_5:
	ld %s0, 8(, %s11)
	st %s0, 40(, %s11)
	br.l .LBB133_6
.LBB133_6:
	ld %s0, 40(, %s11)
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end133:
	.size	__ashldi3, .Lfunc_end133-__ashldi3
                                        # -- End function
	.globl	__ashlti3                       # -- Begin function __ashlti3
	.p2align	4
	.type	__ashlti3,@function
__ashlti3:                              # @__ashlti3
# %bb.0:
	lea %s11, -96(, %s11)
	brge.l.t %s11, %s8, .LBB134_8
# %bb.7:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB134_8:
	st %s2, 8(, %s11)                       # 8-byte Folded Spill
	or %s2, 0, %s1
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
                                        # kill: def $sx3 killed $sx2
                                        # kill: def $sx3 killed $sx1
	st %s2, 72(, %s11)
	st %s1, 64(, %s11)
	stl %s0, 60(, %s11)
	lea %s0, .L__profc___ashlti3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ashlti3@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s1, 64
	or %s0, 0, %s1
	stl %s0, 56(, %s11)
	ld %s0, 64(, %s11)
	ld %s2, 72(, %s11)
	st %s2, 40(, %s11)
	st %s0, 32(, %s11)
	ld1b.zx %s2, 60(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	and %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB134_2
	br.l .LBB134_1
.LBB134_1:
	lea %s0, __llvm_gcov_ctr.134@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.134@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___ashlti3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ashlti3@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	or %s0, 0, (0)1
	st %s0, 16(, %s11)
	ld %s0, 32(, %s11)
	ldl.sx %s1, 60(, %s11)
	adds.w.sx %s1, -64, %s1
	sll %s0, %s0, %s1
	st %s0, 24(, %s11)
	br.l .LBB134_5
.LBB134_2:
	ldl.sx %s0, 60(, %s11)
	brne.w 0, %s0, .LBB134_4
	br.l .LBB134_3
.LBB134_3:
	lea %s0, __llvm_gcov_ctr.134@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.134@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___ashlti3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ashlti3@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 64(, %s11)
	ld %s1, 72(, %s11)
	st %s1, 88(, %s11)
	st %s0, 80(, %s11)
	br.l .LBB134_6
.LBB134_4:
	lea %s0, __llvm_gcov_ctr.134@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.134@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 32(, %s11)
	ldl.sx %s1, 60(, %s11)
	sll %s0, %s0, %s1
	st %s0, 16(, %s11)
	ld %s0, 40(, %s11)
	ldl.sx %s3, 60(, %s11)
	sll %s0, %s0, %s3
	ld %s1, 32(, %s11)
	lea %s2, 64
                                        # kill: def $sw2 killed $sw2 killed $sx2
	subs.w.sx %s2, %s2, %s3
	srl %s1, %s1, %s2
	or %s0, %s0, %s1
	st %s0, 24(, %s11)
	br.l .LBB134_5
.LBB134_5:
	ld %s0, 16(, %s11)
	ld %s1, 24(, %s11)
	st %s1, 88(, %s11)
	st %s0, 80(, %s11)
	br.l .LBB134_6
.LBB134_6:
	ld %s0, 80(, %s11)
	ld %s1, 88(, %s11)
	lea %s11, 96(, %s11)
	b.l.t (, %s10)
.Lfunc_end134:
	.size	__ashlti3, .Lfunc_end134-__ashlti3
                                        # -- End function
	.globl	__ashrdi3                       # -- Begin function __ashrdi3
	.p2align	4
	.type	__ashrdi3,@function
__ashrdi3:                              # @__ashrdi3
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB135_8
# %bb.7:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB135_8:
	st %s1, (, %s11)                        # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s1, 32(, %s11)
	stl %s0, 28(, %s11)
	lea %s0, .L__profc___ashrdi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ashrdi3@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 32, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 24(, %s11)
	ld %s0, 32(, %s11)
	st %s0, 16(, %s11)
	ld1b.zx %s1, 28(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 32, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB135_2
	br.l .LBB135_1
.LBB135_1:
	lea %s0, __llvm_gcov_ctr.135@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.135@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___ashrdi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ashrdi3@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldl.sx %s0, 20(, %s11)
	sra.w.sx %s0, %s0, 31
	stl %s0, 12(, %s11)
	ldl.sx %s0, 20(, %s11)
	ldl.sx %s1, 28(, %s11)
	adds.w.sx %s1, -32, %s1
	sra.w.sx %s0, %s0, %s1
	stl %s0, 8(, %s11)
	br.l .LBB135_5
.LBB135_2:
	ldl.sx %s0, 28(, %s11)
	brne.w 0, %s0, .LBB135_4
	br.l .LBB135_3
.LBB135_3:
	lea %s0, __llvm_gcov_ctr.135@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.135@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___ashrdi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ashrdi3@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 32(, %s11)
	st %s0, 40(, %s11)
	br.l .LBB135_6
.LBB135_4:
	lea %s0, __llvm_gcov_ctr.135@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.135@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldl.sx %s0, 20(, %s11)
	ldl.sx %s1, 28(, %s11)
	sra.w.sx %s0, %s0, %s1
	stl %s0, 12(, %s11)
	ldl.sx %s0, 20(, %s11)
	ldl.sx %s2, 28(, %s11)
	subs.w.sx %s1, 32, %s2
	sla.w.sx %s1, %s0, %s1
	ldl.sx %s3, 16(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s3
	and %s0, %s0, (32)0
	srl %s0, %s0, %s2
	or %s2, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	or %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	br.l .LBB135_5
.LBB135_5:
	ld %s0, 8(, %s11)
	st %s0, 40(, %s11)
	br.l .LBB135_6
.LBB135_6:
	ld %s0, 40(, %s11)
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end135:
	.size	__ashrdi3, .Lfunc_end135-__ashrdi3
                                        # -- End function
	.globl	__ashrti3                       # -- Begin function __ashrti3
	.p2align	4
	.type	__ashrti3,@function
__ashrti3:                              # @__ashrti3
# %bb.0:
	lea %s11, -96(, %s11)
	brge.l.t %s11, %s8, .LBB136_8
# %bb.7:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB136_8:
	st %s2, 8(, %s11)                       # 8-byte Folded Spill
	or %s2, 0, %s1
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
                                        # kill: def $sx3 killed $sx2
                                        # kill: def $sx3 killed $sx1
	st %s2, 72(, %s11)
	st %s1, 64(, %s11)
	stl %s0, 60(, %s11)
	lea %s0, .L__profc___ashrti3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ashrti3@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s1, 64
	or %s0, 0, %s1
	stl %s0, 56(, %s11)
	ld %s0, 64(, %s11)
	ld %s2, 72(, %s11)
	st %s2, 40(, %s11)
	st %s0, 32(, %s11)
	ld1b.zx %s2, 60(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	and %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB136_2
	br.l .LBB136_1
.LBB136_1:
	lea %s0, __llvm_gcov_ctr.136@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.136@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___ashrti3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ashrti3@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 40(, %s11)
	sra.l %s0, %s0, 63
	st %s0, 24(, %s11)
	ld %s0, 40(, %s11)
	ldl.sx %s1, 60(, %s11)
	adds.w.sx %s1, -64, %s1
	sra.l %s0, %s0, %s1
	st %s0, 16(, %s11)
	br.l .LBB136_5
.LBB136_2:
	ldl.sx %s0, 60(, %s11)
	brne.w 0, %s0, .LBB136_4
	br.l .LBB136_3
.LBB136_3:
	lea %s0, __llvm_gcov_ctr.136@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.136@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___ashrti3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ashrti3@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 64(, %s11)
	ld %s1, 72(, %s11)
	st %s1, 88(, %s11)
	st %s0, 80(, %s11)
	br.l .LBB136_6
.LBB136_4:
	lea %s0, __llvm_gcov_ctr.136@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.136@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 40(, %s11)
	ldl.sx %s1, 60(, %s11)
	sra.l %s0, %s0, %s1
	st %s0, 24(, %s11)
	ld %s0, 40(, %s11)
	ldl.sx %s2, 60(, %s11)
	lea %s1, 64
                                        # kill: def $sw1 killed $sw1 killed $sx1
	subs.w.sx %s1, %s1, %s2
	sll %s0, %s0, %s1
	ld %s1, 32(, %s11)
	srl %s1, %s1, %s2
	or %s0, %s0, %s1
	st %s0, 16(, %s11)
	br.l .LBB136_5
.LBB136_5:
	ld %s0, 16(, %s11)
	ld %s1, 24(, %s11)
	st %s1, 88(, %s11)
	st %s0, 80(, %s11)
	br.l .LBB136_6
.LBB136_6:
	ld %s0, 80(, %s11)
	ld %s1, 88(, %s11)
	lea %s11, 96(, %s11)
	b.l.t (, %s10)
.Lfunc_end136:
	.size	__ashrti3, .Lfunc_end136-__ashrti3
                                        # -- End function
	.globl	__bswapdi2                      # -- Begin function __bswapdi2
	.p2align	4
	.type	__bswapdi2,@function
__bswapdi2:                             # @__bswapdi2
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB137_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB137_2:
	lea %s1, __llvm_gcov_ctr.137@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.137@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	st %s0, 8(, %s11)
	lea %s0, .L__profc___bswapdi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___bswapdi2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s1, 8(, %s11)
	srl %s0, %s1, 56
	lea.sl %s2, 16711680
	and %s2, %s1, %s2
	srl %s2, %s2, 40
	or %s0, %s0, %s2
	lea.sl %s2, 65280
	and %s2, %s1, %s2
	srl %s2, %s2, 24
	or %s0, %s0, %s2
	lea.sl %s2, 255
	and %s2, %s1, %s2
	srl %s2, %s2, 8
	or %s0, %s0, %s2
	lea %s2, -16777216
	and %s2, %s2, (32)0
	and %s2, %s1, %s2
	sll %s2, %s2, 8
	or %s0, %s0, %s2
	lea %s2, 16711680
	and %s2, %s1, %s2
	sll %s2, %s2, 24
	or %s0, %s0, %s2
	lea %s2, 65280
	and %s2, %s1, %s2
	sll %s2, %s2, 40
	or %s0, %s0, %s2
	sll %s1, %s1, 56
	or %s0, %s0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end137:
	.size	__bswapdi2, .Lfunc_end137-__bswapdi2
                                        # -- End function
	.globl	__bswapsi2                      # -- Begin function __bswapsi2
	.p2align	4
	.type	__bswapsi2,@function
__bswapsi2:                             # @__bswapsi2
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB138_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB138_2:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.138@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.138@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc___bswapsi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___bswapsi2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s1, 12(, %s11)
                                        # implicit-def: $sx2
	or %s2, 0, %s1
	and %s0, %s2, (32)0
	srl %s0, %s0, 24
	or %s3, 0, %s0
	lea %s0, 16711680
	and %s0, %s2, %s0
	or %s4, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s4
	and %s0, %s0, (32)0
	srl %s0, %s0, 8
	or %s4, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s3
                                        # implicit-def: $sx3
	or %s3, 0, %s4
	or %s0, %s0, %s3
	lea %s3, 65280
	and %s2, %s2, %s3
                                        # kill: def $sw2 killed $sw2 killed $sx2
	sla.w.sx %s3, %s2, 8
                                        # implicit-def: $sx2
	or %s2, 0, %s3
	or %s0, %s0, %s2
	sla.w.sx %s2, %s1, 24
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	or %s0, %s0, %s1
	and %s0, %s0, (32)0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end138:
	.size	__bswapsi2, .Lfunc_end138-__bswapsi2
                                        # -- End function
	.globl	__clzsi2                        # -- Begin function __clzsi2
	.p2align	4
	.type	__clzsi2,@function
__clzsi2:                               # @__clzsi2
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB139_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB139_2:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.139@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.139@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc___clzsi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___clzsi2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	stl %s0, 8(, %s11)
	ld2b.zx %s0, 10(, %s11)
	sla.w.sx %s0, %s0, 16
	or %s1, 0, (0)1
	or %s4, 0, %s1
	cmps.w.sx %s2, %s0, %s4
	or %s0, 0, %s1
	cmov.w.eq %s0, (63)0, %s2
                                        # kill: def $sw0 killed $sw0 killed $sx0
	sla.w.sx %s0, %s0, 4
	stl %s0, 4(, %s11)
	ldl.sx %s0, 4(, %s11)
	subs.w.sx %s2, 16, %s0
	ldl.sx %s3, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s3
	and %s0, %s0, (32)0
	srl %s0, %s0, %s2
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	ldl.sx %s0, 4(, %s11)
	stl %s0, (, %s11)
	ld1b.zx %s0, 9(, %s11)
	sla.w.sx %s0, %s0, 8
	cmps.w.sx %s2, %s0, %s4
	or %s0, 0, %s1
	cmov.w.eq %s0, (63)0, %s2
                                        # kill: def $sw0 killed $sw0 killed $sx0
	sla.w.sx %s0, %s0, 3
	stl %s0, 4(, %s11)
	ldl.sx %s0, 4(, %s11)
	subs.w.sx %s2, 8, %s0
	ldl.sx %s3, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s3
	and %s0, %s0, (32)0
	srl %s0, %s0, %s2
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	ldl.sx %s2, 4(, %s11)
	ldl.sx %s0, (, %s11)
	adds.w.sx %s0, %s0, %s2
	stl %s0, (, %s11)
	ldl.zx %s2, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	lea %s2, 240
	and %s0, %s0, %s2
                                        # kill: def $sw0 killed $sw0 killed $sx0
	cmps.w.sx %s2, %s0, %s4
	or %s0, 0, %s1
	cmov.w.eq %s0, (63)0, %s2
                                        # kill: def $sw0 killed $sw0 killed $sx0
	sla.w.sx %s0, %s0, 2
	stl %s0, 4(, %s11)
	ldl.sx %s0, 4(, %s11)
	subs.w.sx %s2, 4, %s0
	ldl.sx %s3, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s3
	and %s0, %s0, (32)0
	srl %s0, %s0, %s2
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	ldl.sx %s2, 4(, %s11)
	ldl.sx %s0, (, %s11)
	adds.w.sx %s0, %s0, %s2
	stl %s0, (, %s11)
	ldl.zx %s2, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	and %s0, 12, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	cmps.w.sx %s2, %s0, %s4
	or %s0, 0, %s1
	cmov.w.eq %s0, (63)0, %s2
                                        # kill: def $sw0 killed $sw0 killed $sx0
	sla.w.sx %s0, %s0, 1
	stl %s0, 4(, %s11)
	ldl.sx %s0, 4(, %s11)
	subs.w.sx %s2, 2, %s0
	ldl.sx %s3, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s3
	and %s0, %s0, (32)0
	srl %s0, %s0, %s2
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	ldl.sx %s2, 4(, %s11)
	ldl.sx %s0, (, %s11)
	adds.w.sx %s0, %s0, %s2
	stl %s0, (, %s11)
	ldl.sx %s0, (, %s11)
	ldl.sx %s5, 8(, %s11)
	subs.w.sx %s2, 2, %s5
                                        # implicit-def: $sx3
	or %s3, 0, %s5
	and %s3, 2, %s3
                                        # kill: def $sw3 killed $sw3 killed $sx3
	cmps.w.sx %s3, %s3, %s4
	cmov.w.eq %s1, (63)0, %s3
                                        # kill: def $sw1 killed $sw1 killed $sx1
	subs.w.sx %s3, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
                                        # implicit-def: $sx2
	or %s2, 0, %s3
	and %s1, %s1, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	adds.w.sx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end139:
	.size	__clzsi2, .Lfunc_end139-__clzsi2
                                        # -- End function
	.globl	__clzti2                        # -- Begin function __clzti2
	.p2align	4
	.type	__clzti2,@function
__clzti2:                               # @__clzti2
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB140_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB140_2:
                                        # kill: def $sx2 killed $sx1
                                        # kill: def $sx2 killed $sx0
	lea %s2, __llvm_gcov_ctr.140@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.140@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s1, 40(, %s11)
	st %s0, 32(, %s11)
	lea %s0, .L__profc___clzti2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___clzti2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 32(, %s11)
	ld %s1, 40(, %s11)
	st %s1, 24(, %s11)
	st %s0, 16(, %s11)
	ld %s1, 24(, %s11)
	or %s0, 0, (0)1
	cmps.l %s1, %s1, %s0
	cmov.l.eq %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	adds.w.zx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	subs.l %s0, 0, %s0
	st %s0, 8(, %s11)
	ld %s0, 24(, %s11)
	ld %s1, 8(, %s11)
	nnd %s0, %s1, %s0
	ld %s2, 16(, %s11)
	and %s2, %s2, %s1
	or %s0, %s0, %s2
	ldz %s0, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s2, 64
	and %s1, %s1, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	adds.w.zx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end140:
	.size	__clzti2, .Lfunc_end140-__clzti2
                                        # -- End function
	.globl	__cmpdi2                        # -- Begin function __cmpdi2
	.p2align	4
	.type	__cmpdi2,@function
__cmpdi2:                               # @__cmpdi2
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB141_11
# %bb.10:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB141_11:
	st %s0, 32(, %s11)
	st %s1, 24(, %s11)
	lea %s0, .L__profc___cmpdi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmpdi2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 32(, %s11)
	st %s0, 16(, %s11)
	ld %s0, 24(, %s11)
	st %s0, 8(, %s11)
	ldl.sx %s0, 20(, %s11)
	ldl.sx %s1, 12(, %s11)
	brge.w %s0, %s1, .LBB141_2
	br.l .LBB141_1
.LBB141_1:
	lea %s0, __llvm_gcov_ctr.141@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.141@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___cmpdi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmpdi2@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 44(, %s11)
	br.l .LBB141_9
.LBB141_2:
	ldl.sx %s0, 20(, %s11)
	ldl.sx %s1, 12(, %s11)
	brle.w %s0, %s1, .LBB141_4
	br.l .LBB141_3
.LBB141_3:
	lea %s0, __llvm_gcov_ctr.141@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.141@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___cmpdi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmpdi2@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	or %s0, 2, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 44(, %s11)
	br.l .LBB141_9
.LBB141_4:
	ldl.sx %s1, 16(, %s11)
	ldl.sx %s0, 8(, %s11)
	cmpu.w %s0, %s0, %s1
	brge.w 0, %s0, .LBB141_6
	br.l .LBB141_5
.LBB141_5:
	lea %s0, __llvm_gcov_ctr.141@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.141@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc___cmpdi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmpdi2@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 44(, %s11)
	br.l .LBB141_9
.LBB141_6:
	ldl.sx %s1, 16(, %s11)
	ldl.sx %s0, 8(, %s11)
	cmpu.w %s0, %s0, %s1
	brle.w 0, %s0, .LBB141_8
	br.l .LBB141_7
.LBB141_7:
	lea %s0, __llvm_gcov_ctr.141@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.141@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc___cmpdi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmpdi2@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	or %s0, 2, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 44(, %s11)
	br.l .LBB141_9
.LBB141_8:
	lea %s0, __llvm_gcov_ctr.141@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.141@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 44(, %s11)
	br.l .LBB141_9
.LBB141_9:
	ldl.sx %s1, 44(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end141:
	.size	__cmpdi2, .Lfunc_end141-__cmpdi2
                                        # -- End function
	.globl	__aeabi_lcmp                    # -- Begin function __aeabi_lcmp
	.p2align	4
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           # @__aeabi_lcmp
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -256(, %s11)
	brge.l.t %s11, %s8, .LBB142_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB142_2:
	lea %s2, __llvm_gcov_ctr.142@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.142@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s0, -8(, %s9)
	st %s1, -16(, %s9)
	lea %s0, .L__profc___aeabi_lcmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___aeabi_lcmp@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, -8(, %s9)
	ld %s1, -16(, %s9)
	lea %s2, __cmpdi2@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __cmpdi2@hi(, %s2)
	or %s12, 0, %s2
	bsic %s10, (, %s12)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	adds.w.sx %s0, -1, %s0
	adds.w.sx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end142:
	.size	__aeabi_lcmp, .Lfunc_end142-__aeabi_lcmp
                                        # -- End function
	.globl	__cmpti2                        # -- Begin function __cmpti2
	.p2align	4
	.type	__cmpti2,@function
__cmpti2:                               # @__cmpti2
# %bb.0:
	lea %s11, -80(, %s11)
	brge.l.t %s11, %s8, .LBB143_11
# %bb.10:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB143_11:
                                        # kill: def $sx4 killed $sx3
                                        # kill: def $sx4 killed $sx2
                                        # kill: def $sx4 killed $sx1
                                        # kill: def $sx4 killed $sx0
	st %s1, 56(, %s11)
	st %s0, 48(, %s11)
	st %s3, 40(, %s11)
	st %s2, 32(, %s11)
	lea %s0, .L__profc___cmpti2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmpti2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 48(, %s11)
	ld %s1, 56(, %s11)
	st %s1, 24(, %s11)
	st %s0, 16(, %s11)
	ld %s0, 32(, %s11)
	ld %s1, 40(, %s11)
	st %s1, 8(, %s11)
	st %s0, (, %s11)
	ld %s0, 24(, %s11)
	ld %s1, 8(, %s11)
	brge.l %s0, %s1, .LBB143_2
	br.l .LBB143_1
.LBB143_1:
	lea %s0, __llvm_gcov_ctr.143@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.143@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___cmpti2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmpti2@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 76(, %s11)
	br.l .LBB143_9
.LBB143_2:
	ld %s0, 24(, %s11)
	ld %s1, 8(, %s11)
	brle.l %s0, %s1, .LBB143_4
	br.l .LBB143_3
.LBB143_3:
	lea %s0, __llvm_gcov_ctr.143@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.143@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___cmpti2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmpti2@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	or %s0, 2, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 76(, %s11)
	br.l .LBB143_9
.LBB143_4:
	ld %s1, 16(, %s11)
	ld %s0, (, %s11)
	cmpu.l %s0, %s0, %s1
	brge.l 0, %s0, .LBB143_6
	br.l .LBB143_5
.LBB143_5:
	lea %s0, __llvm_gcov_ctr.143@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.143@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc___cmpti2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmpti2@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 76(, %s11)
	br.l .LBB143_9
.LBB143_6:
	ld %s1, 16(, %s11)
	ld %s0, (, %s11)
	cmpu.l %s0, %s0, %s1
	brle.l 0, %s0, .LBB143_8
	br.l .LBB143_7
.LBB143_7:
	lea %s0, __llvm_gcov_ctr.143@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.143@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc___cmpti2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___cmpti2@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	or %s0, 2, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 76(, %s11)
	br.l .LBB143_9
.LBB143_8:
	lea %s0, __llvm_gcov_ctr.143@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.143@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 76(, %s11)
	br.l .LBB143_9
.LBB143_9:
	ldl.sx %s1, 76(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s11, 80(, %s11)
	b.l.t (, %s10)
.Lfunc_end143:
	.size	__cmpti2, .Lfunc_end143-__cmpti2
                                        # -- End function
	.globl	__ctzsi2                        # -- Begin function __ctzsi2
	.p2align	4
	.type	__ctzsi2,@function
__ctzsi2:                               # @__ctzsi2
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB144_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB144_2:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.144@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.144@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc___ctzsi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ctzsi2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	stl %s0, 8(, %s11)
	ld2b.zx %s1, 8(, %s11)
	or %s0, 0, (0)1
	or %s2, 0, %s0
	cmps.w.sx %s3, %s1, %s2
	or %s1, 0, %s0
	cmov.w.eq %s1, (63)0, %s3
                                        # kill: def $sw1 killed $sw1 killed $sx1
	sla.w.sx %s1, %s1, 4
	stl %s1, 4(, %s11)
	ldl.sx %s3, 4(, %s11)
	ldl.sx %s4, 8(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s4
	and %s1, %s1, (32)0
	srl %s1, %s1, %s3
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 8(, %s11)
	ldl.sx %s1, 4(, %s11)
	stl %s1, (, %s11)
	ld1b.zx %s1, 8(, %s11)
	cmps.w.sx %s3, %s1, %s2
	or %s1, 0, %s0
	cmov.w.eq %s1, (63)0, %s3
                                        # kill: def $sw1 killed $sw1 killed $sx1
	sla.w.sx %s1, %s1, 3
	stl %s1, 4(, %s11)
	ldl.sx %s3, 4(, %s11)
	ldl.sx %s4, 8(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s4
	and %s1, %s1, (32)0
	srl %s1, %s1, %s3
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 8(, %s11)
	ldl.sx %s3, 4(, %s11)
	ldl.sx %s1, (, %s11)
	adds.w.sx %s1, %s1, %s3
	stl %s1, (, %s11)
	ldl.zx %s3, 8(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s3
	and %s1, 15, %s1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmps.w.sx %s3, %s1, %s2
	or %s1, 0, %s0
	cmov.w.eq %s1, (63)0, %s3
                                        # kill: def $sw1 killed $sw1 killed $sx1
	sla.w.sx %s1, %s1, 2
	stl %s1, 4(, %s11)
	ldl.sx %s3, 4(, %s11)
	ldl.sx %s4, 8(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s4
	and %s1, %s1, (32)0
	srl %s1, %s1, %s3
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 8(, %s11)
	ldl.sx %s3, 4(, %s11)
	ldl.sx %s1, (, %s11)
	adds.w.sx %s1, %s1, %s3
	stl %s1, (, %s11)
	ldl.zx %s3, 8(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s3
	and %s1, 3, %s1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmps.w.sx %s1, %s1, %s2
	cmov.w.eq %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	sla.w.sx %s0, %s0, 1
	stl %s0, 4(, %s11)
	ldl.sx %s1, 4(, %s11)
	ldl.sx %s2, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	and %s0, %s0, (32)0
	srl %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	ldl.zx %s1, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 3, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	ldl.sx %s1, 4(, %s11)
	ldl.sx %s0, (, %s11)
	adds.w.sx %s0, %s0, %s1
	stl %s0, (, %s11)
	ldl.sx %s0, (, %s11)
	ldl.sx %s2, 8(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	and %s2, %s1, (32)0
	srl %s2, %s2, 1
                                        # kill: def $sw2 killed $sw2 killed $sx2
	subs.w.sx %s3, 2, %s2
	and %s1, 1, %s1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s1, -1, %s1
                                        # implicit-def: $sx2
	or %s2, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s3
	and %s1, %s1, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	adds.w.sx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end144:
	.size	__ctzsi2, .Lfunc_end144-__ctzsi2
                                        # -- End function
	.globl	__ctzti2                        # -- Begin function __ctzti2
	.p2align	4
	.type	__ctzti2,@function
__ctzti2:                               # @__ctzti2
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB145_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB145_2:
                                        # kill: def $sx2 killed $sx1
                                        # kill: def $sx2 killed $sx0
	lea %s2, __llvm_gcov_ctr.145@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.145@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s1, 40(, %s11)
	st %s0, 32(, %s11)
	lea %s0, .L__profc___ctzti2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ctzti2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 32(, %s11)
	ld %s1, 40(, %s11)
	st %s1, 24(, %s11)
	st %s0, 16(, %s11)
	ld %s1, 16(, %s11)
	or %s0, 0, (0)1
	cmps.l %s1, %s1, %s0
	cmov.l.eq %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	adds.w.zx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	subs.l %s0, 0, %s0
	st %s0, 8(, %s11)
	ld %s0, 24(, %s11)
	ld %s1, 8(, %s11)
	and %s0, %s0, %s1
	ld %s2, 16(, %s11)
	nnd %s2, %s1, %s2
	or %s0, %s0, %s2
	lea %s2, -1(, %s0)
	nnd %s0, %s0, %s2
	pcnt %s0, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s2, 64
	and %s1, %s1, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	adds.w.zx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end145:
	.size	__ctzti2, .Lfunc_end145-__ctzti2
                                        # -- End function
	.globl	__ffsti2                        # -- Begin function __ffsti2
	.p2align	4
	.type	__ffsti2,@function
__ffsti2:                               # @__ffsti2
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB146_7
# %bb.6:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB146_7:
                                        # kill: def $sx2 killed $sx1
                                        # kill: def $sx2 killed $sx0
	st %s1, 24(, %s11)
	st %s0, 16(, %s11)
	lea %s0, .L__profc___ffsti2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ffsti2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 16(, %s11)
	ld %s1, 24(, %s11)
	st %s1, 8(, %s11)
	st %s0, (, %s11)
	ld %s0, (, %s11)
	brne.l 0, %s0, .LBB146_4
	br.l .LBB146_1
.LBB146_1:
	lea %s0, .L__profc___ffsti2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ffsti2@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 8(, %s11)
	brne.l 0, %s0, .LBB146_3
	br.l .LBB146_2
.LBB146_2:
	lea %s0, __llvm_gcov_ctr.146@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.146@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___ffsti2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ffsti2@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 44(, %s11)
	br.l .LBB146_5
.LBB146_3:
	lea %s0, __llvm_gcov_ctr.146@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.146@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 8(, %s11)
	lea %s1, -1(, %s0)
	nnd %s0, %s0, %s1
	pcnt %s0, %s0
	lea %s0, 65(, %s0)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 44(, %s11)
	br.l .LBB146_5
.LBB146_4:
	lea %s0, __llvm_gcov_ctr.146@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.146@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, (, %s11)
	lea %s1, -1(, %s0)
	nnd %s0, %s0, %s1
	pcnt %s0, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	adds.w.sx %s0, 1, %s0
	stl %s0, 44(, %s11)
	br.l .LBB146_5
.LBB146_5:
	ldl.sx %s1, 44(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end146:
	.size	__ffsti2, .Lfunc_end146-__ffsti2
                                        # -- End function
	.globl	__lshrdi3                       # -- Begin function __lshrdi3
	.p2align	4
	.type	__lshrdi3,@function
__lshrdi3:                              # @__lshrdi3
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB147_8
# %bb.7:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB147_8:
	st %s1, (, %s11)                        # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s1, 32(, %s11)
	stl %s0, 28(, %s11)
	lea %s0, .L__profc___lshrdi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___lshrdi3@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 32, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 24(, %s11)
	ld %s0, 32(, %s11)
	st %s0, 16(, %s11)
	ld1b.zx %s1, 28(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 32, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB147_2
	br.l .LBB147_1
.LBB147_1:
	lea %s0, __llvm_gcov_ctr.147@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.147@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___lshrdi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___lshrdi3@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	ldl.sx %s2, 20(, %s11)
	ldl.sx %s0, 28(, %s11)
	adds.w.sx %s1, -32, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	and %s0, %s0, (32)0
	srl %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	br.l .LBB147_5
.LBB147_2:
	ldl.sx %s0, 28(, %s11)
	brne.w 0, %s0, .LBB147_4
	br.l .LBB147_3
.LBB147_3:
	lea %s0, __llvm_gcov_ctr.147@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.147@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___lshrdi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___lshrdi3@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 32(, %s11)
	st %s0, 40(, %s11)
	br.l .LBB147_6
.LBB147_4:
	lea %s0, __llvm_gcov_ctr.147@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.147@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldl.sx %s2, 20(, %s11)
	ldl.sx %s1, 28(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	and %s0, %s0, (32)0
	srl %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	ldl.sx %s0, 20(, %s11)
	ldl.sx %s2, 28(, %s11)
	subs.w.sx %s1, 32, %s2
	sla.w.sx %s1, %s0, %s1
	ldl.sx %s3, 16(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s3
	and %s0, %s0, (32)0
	srl %s0, %s0, %s2
	or %s2, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	or %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	br.l .LBB147_5
.LBB147_5:
	ld %s0, 8(, %s11)
	st %s0, 40(, %s11)
	br.l .LBB147_6
.LBB147_6:
	ld %s0, 40(, %s11)
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end147:
	.size	__lshrdi3, .Lfunc_end147-__lshrdi3
                                        # -- End function
	.globl	__lshrti3                       # -- Begin function __lshrti3
	.p2align	4
	.type	__lshrti3,@function
__lshrti3:                              # @__lshrti3
# %bb.0:
	lea %s11, -96(, %s11)
	brge.l.t %s11, %s8, .LBB148_8
# %bb.7:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB148_8:
	st %s2, 8(, %s11)                       # 8-byte Folded Spill
	or %s2, 0, %s1
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
                                        # kill: def $sx3 killed $sx2
                                        # kill: def $sx3 killed $sx1
	st %s2, 72(, %s11)
	st %s1, 64(, %s11)
	stl %s0, 60(, %s11)
	lea %s0, .L__profc___lshrti3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___lshrti3@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s1, 64
	or %s0, 0, %s1
	stl %s0, 56(, %s11)
	ld %s0, 64(, %s11)
	ld %s2, 72(, %s11)
	st %s2, 40(, %s11)
	st %s0, 32(, %s11)
	ld1b.zx %s2, 60(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	and %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB148_2
	br.l .LBB148_1
.LBB148_1:
	lea %s0, __llvm_gcov_ctr.148@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.148@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___lshrti3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___lshrti3@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	or %s0, 0, (0)1
	st %s0, 24(, %s11)
	ld %s0, 40(, %s11)
	ldl.sx %s1, 60(, %s11)
	adds.w.sx %s1, -64, %s1
	srl %s0, %s0, %s1
	st %s0, 16(, %s11)
	br.l .LBB148_5
.LBB148_2:
	ldl.sx %s0, 60(, %s11)
	brne.w 0, %s0, .LBB148_4
	br.l .LBB148_3
.LBB148_3:
	lea %s0, __llvm_gcov_ctr.148@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.148@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___lshrti3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___lshrti3@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 64(, %s11)
	ld %s1, 72(, %s11)
	st %s1, 88(, %s11)
	st %s0, 80(, %s11)
	br.l .LBB148_6
.LBB148_4:
	lea %s0, __llvm_gcov_ctr.148@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.148@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s0, 40(, %s11)
	ldl.sx %s1, 60(, %s11)
	srl %s0, %s0, %s1
	st %s0, 24(, %s11)
	ld %s0, 40(, %s11)
	ldl.sx %s2, 60(, %s11)
	lea %s1, 64
                                        # kill: def $sw1 killed $sw1 killed $sx1
	subs.w.sx %s1, %s1, %s2
	sll %s0, %s0, %s1
	ld %s1, 32(, %s11)
	srl %s1, %s1, %s2
	or %s0, %s0, %s1
	st %s0, 16(, %s11)
	br.l .LBB148_5
.LBB148_5:
	ld %s0, 16(, %s11)
	ld %s1, 24(, %s11)
	st %s1, 88(, %s11)
	st %s0, 80(, %s11)
	br.l .LBB148_6
.LBB148_6:
	ld %s0, 80(, %s11)
	ld %s1, 88(, %s11)
	lea %s11, 96(, %s11)
	b.l.t (, %s10)
.Lfunc_end148:
	.size	__lshrti3, .Lfunc_end148-__lshrti3
                                        # -- End function
	.globl	__muldsi3                       # -- Begin function __muldsi3
	.p2align	4
	.type	__muldsi3,@function
__muldsi3:                              # @__muldsi3
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB149_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB149_2:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	and %s1, %s1, (32)0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	lea %s2, __llvm_gcov_ctr.149@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.149@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	stl %s1, 44(, %s11)
	stl %s0, 40(, %s11)
	lea %s0, .L__profc___muldsi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___muldsi3@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 16, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 28(, %s11)
	lea %s0, 65535
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 24(, %s11)
	ld2b.zx %s0, 44(, %s11)
	ld2b.zx %s1, 40(, %s11)
	muls.w.sx %s0, %s0, %s1
	stl %s0, 32(, %s11)
	ld2b.zx %s0, 34(, %s11)
	stl %s0, 20(, %s11)
	ld2b.zx %s0, 32(, %s11)
	stl %s0, 32(, %s11)
	ld2b.zx %s0, 46(, %s11)
	ld2b.zx %s1, 40(, %s11)
	muls.w.sx %s1, %s0, %s1
	ldl.sx %s0, 20(, %s11)
	adds.w.sx %s0, %s0, %s1
	stl %s0, 20(, %s11)
	ldl.sx %s0, 20(, %s11)
	sla.w.sx %s1, %s0, 16
	ldl.sx %s0, 32(, %s11)
	adds.w.sx %s0, %s0, %s1
	stl %s0, 32(, %s11)
	ld2b.zx %s0, 22(, %s11)
	stl %s0, 36(, %s11)
	ld2b.zx %s0, 34(, %s11)
	stl %s0, 20(, %s11)
	ld2b.zx %s0, 32(, %s11)
	stl %s0, 32(, %s11)
	ld2b.zx %s0, 42(, %s11)
	ld2b.zx %s1, 44(, %s11)
	muls.w.sx %s1, %s0, %s1
	ldl.sx %s0, 20(, %s11)
	adds.w.sx %s0, %s0, %s1
	stl %s0, 20(, %s11)
	ldl.sx %s0, 20(, %s11)
	sla.w.sx %s1, %s0, 16
	ldl.sx %s0, 32(, %s11)
	adds.w.sx %s0, %s0, %s1
	stl %s0, 32(, %s11)
	ld2b.zx %s1, 22(, %s11)
	ldl.sx %s0, 36(, %s11)
	adds.w.sx %s0, %s0, %s1
	stl %s0, 36(, %s11)
	ld2b.zx %s0, 46(, %s11)
	ld2b.zx %s1, 42(, %s11)
	muls.w.sx %s1, %s0, %s1
	ldl.sx %s0, 36(, %s11)
	adds.w.sx %s0, %s0, %s1
	stl %s0, 36(, %s11)
	ld %s0, 32(, %s11)
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end149:
	.size	__muldsi3, .Lfunc_end149-__muldsi3
                                        # -- End function
	.globl	__muldi3_compiler_rt            # -- Begin function __muldi3_compiler_rt
	.p2align	4
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   # @__muldi3_compiler_rt
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -288(, %s11)
	brge.l.t %s11, %s8, .LBB150_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB150_2:
	lea %s2, __llvm_gcov_ctr.150@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.150@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s0, -8(, %s9)
	st %s1, -16(, %s9)
	lea %s0, .L__profc___muldi3_compiler_rt@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___muldi3_compiler_rt@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, -8(, %s9)
	st %s0, -24(, %s9)
	ld %s0, -16(, %s9)
	st %s0, -32(, %s9)
	ldl.zx %s1, -24(, %s9)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	ldl.zx %s2, -32(, %s9)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	lea %s2, __muldsi3@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __muldsi3@hi(, %s2)
	or %s12, 0, %s2
	bsic %s10, (, %s12)
	st %s0, -40(, %s9)
	ldl.sx %s0, -20(, %s9)
	ldl.sx %s1, -32(, %s9)
	muls.w.sx %s0, %s0, %s1
	ldl.sx %s1, -24(, %s9)
	ldl.sx %s2, -28(, %s9)
	muls.w.sx %s1, %s1, %s2
	adds.w.sx %s1, %s0, %s1
	ldl.sx %s0, -36(, %s9)
	adds.w.sx %s0, %s0, %s1
	stl %s0, -36(, %s9)
	ld %s0, -40(, %s9)
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end150:
	.size	__muldi3_compiler_rt, .Lfunc_end150-__muldi3_compiler_rt
                                        # -- End function
	.globl	__mulddi3                       # -- Begin function __mulddi3
	.p2align	4
	.type	__mulddi3,@function
__mulddi3:                              # @__mulddi3
# %bb.0:
	adds.l %s11, -64, %s11
	brge.l.t %s11, %s8, .LBB151_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB151_2:
	lea %s2, __llvm_gcov_ctr.151@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.151@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s0, 56(, %s11)
	st %s1, 48(, %s11)
	lea %s0, .L__profc___mulddi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___mulddi3@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	or %s0, 32, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 28(, %s11)
	lea %s0, -1
	and %s0, %s0, (32)0
	st %s0, 16(, %s11)
	ldl.zx %s1, 56(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	ldl.zx %s2, 48(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	muls.l %s0, %s0, %s1
	st %s0, 32(, %s11)
	ldl.zx %s1, 36(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	st %s0, 8(, %s11)
	ldl.zx %s1, 32(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	st %s0, 32(, %s11)
	ldl.zx %s1, 60(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	ldl.zx %s2, 48(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	muls.l %s1, %s0, %s1
	ld %s0, 8(, %s11)
	adds.l %s0, %s0, %s1
	st %s0, 8(, %s11)
	ld %s0, 8(, %s11)
	sll %s1, %s0, 32
	ld %s0, 32(, %s11)
	adds.l %s0, %s0, %s1
	st %s0, 32(, %s11)
	ldl.zx %s1, 12(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	st %s0, 40(, %s11)
	ldl.zx %s1, 36(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	st %s0, 8(, %s11)
	ldl.zx %s1, 32(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	st %s0, 32(, %s11)
	ldl.zx %s1, 52(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	ldl.zx %s2, 56(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	muls.l %s1, %s0, %s1
	ld %s0, 8(, %s11)
	adds.l %s0, %s0, %s1
	st %s0, 8(, %s11)
	ld %s0, 8(, %s11)
	sll %s1, %s0, 32
	ld %s0, 32(, %s11)
	adds.l %s0, %s0, %s1
	st %s0, 32(, %s11)
	ldl.zx %s0, 12(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	ld %s0, 40(, %s11)
	adds.l %s0, %s0, %s1
	st %s0, 40(, %s11)
	ldl.zx %s1, 60(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	ldl.zx %s2, 52(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	muls.l %s1, %s0, %s1
	ld %s0, 40(, %s11)
	adds.l %s0, %s0, %s1
	st %s0, 40(, %s11)
	ld %s0, 32(, %s11)
	ld %s1, 40(, %s11)
	lea %s11, 64(, %s11)
	b.l.t (, %s10)
.Lfunc_end151:
	.size	__mulddi3, .Lfunc_end151-__mulddi3
                                        # -- End function
	.globl	__multi3                        # -- Begin function __multi3
	.p2align	4
	.type	__multi3,@function
__multi3:                               # @__multi3
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -320(, %s11)
	brge.l.t %s11, %s8, .LBB152_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB152_2:
                                        # kill: def $sx4 killed $sx3
                                        # kill: def $sx4 killed $sx2
                                        # kill: def $sx4 killed $sx1
                                        # kill: def $sx4 killed $sx0
	lea %s4, __llvm_gcov_ctr.152@lo
	and %s4, %s4, (32)0
	lea.sl %s4, __llvm_gcov_ctr.152@hi(, %s4)
	ld %s5, (, %s4)
	lea %s5, 1(, %s5)
	st %s5, (, %s4)
	st %s1, -8(, %s9)
	st %s0, -16(, %s9)
	st %s3, -24(, %s9)
	st %s2, -32(, %s9)
	lea %s0, .L__profc___multi3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___multi3@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, -16(, %s9)
	ld %s1, -8(, %s9)
	st %s1, -40(, %s9)
	st %s0, -48(, %s9)
	ld %s0, -32(, %s9)
	ld %s1, -24(, %s9)
	st %s1, -56(, %s9)
	st %s0, -64(, %s9)
	ld %s0, -48(, %s9)
	ld %s1, -64(, %s9)
	lea %s2, __mulddi3@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __mulddi3@hi(, %s2)
	or %s12, 0, %s2
	bsic %s10, (, %s12)
	st %s1, -72(, %s9)
	st %s0, -80(, %s9)
	ld %s0, -40(, %s9)
	ld %s1, -64(, %s9)
	muls.l %s0, %s0, %s1
	ld %s1, -48(, %s9)
	ld %s2, -56(, %s9)
	muls.l %s1, %s1, %s2
	adds.l %s1, %s0, %s1
	ld %s0, -72(, %s9)
	adds.l %s0, %s0, %s1
	st %s0, -72(, %s9)
	ld %s0, -80(, %s9)
	ld %s1, -72(, %s9)
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end152:
	.size	__multi3, .Lfunc_end152-__multi3
                                        # -- End function
	.globl	__negdi2                        # -- Begin function __negdi2
	.p2align	4
	.type	__negdi2,@function
__negdi2:                               # @__negdi2
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB153_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB153_2:
	lea %s1, __llvm_gcov_ctr.153@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.153@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	st %s0, 8(, %s11)
	lea %s0, .L__profc___negdi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___negdi2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 8(, %s11)
	subs.l %s0, 0, %s0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end153:
	.size	__negdi2, .Lfunc_end153-__negdi2
                                        # -- End function
	.globl	__negti2                        # -- Begin function __negti2
	.p2align	4
	.type	__negti2,@function
__negti2:                               # @__negti2
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB154_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB154_2:
                                        # kill: def $sx2 killed $sx1
                                        # kill: def $sx2 killed $sx0
	lea %s2, __llvm_gcov_ctr.154@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.154@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s1, 8(, %s11)
	st %s0, (, %s11)
	lea %s0, .L__profc___negti2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___negti2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s1, 8(, %s11)
	ld %s0, (, %s11)
	or %s2, 0, (0)1
	cmps.l %s3, %s0, %s2
	cmov.l.ne %s2, (63)0, %s3
                                        # kill: def $sw2 killed $sw2 killed $sx2
	adds.w.zx %s3, %s2, (0)1
                                        # implicit-def: $sx2
	or %s2, 0, %s3
	adds.l %s1, %s1, %s2
	subs.l %s1, 0, %s1
	subs.l %s0, 0, %s0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end154:
	.size	__negti2, .Lfunc_end154-__negti2
                                        # -- End function
	.globl	__paritydi2                     # -- Begin function __paritydi2
	.p2align	4
	.type	__paritydi2,@function
__paritydi2:                            # @__paritydi2
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB155_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB155_2:
	lea %s1, __llvm_gcov_ctr.155@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.155@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	st %s0, 24(, %s11)
	lea %s0, .L__profc___paritydi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___paritydi2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 24(, %s11)
	st %s0, 16(, %s11)
	ldl.sx %s0, 16(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	ldl.sx %s2, 20(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	xor %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	ldl.sx %s1, 12(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s1, %s0, (32)0
	srl %s1, %s1, 16
	or %s2, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	xor %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	ldl.sx %s1, 12(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s1, %s0, (32)0
	srl %s1, %s1, 8
	or %s2, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	xor %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	ldl.sx %s1, 12(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s1, %s0, (32)0
	srl %s1, %s1, 4
	or %s2, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	xor %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	ldl.zx %s1, 12(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 15, %s0
	or %s1, 0, %s0
	lea %s0, 27030
	or %s2, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	and %s0, %s0, (32)0
	srl %s0, %s0, %s1
	or %s1, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end155:
	.size	__paritydi2, .Lfunc_end155-__paritydi2
                                        # -- End function
	.globl	__parityti2                     # -- Begin function __parityti2
	.p2align	4
	.type	__parityti2,@function
__parityti2:                            # @__parityti2
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB156_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB156_2:
                                        # kill: def $sx2 killed $sx1
                                        # kill: def $sx2 killed $sx0
	lea %s2, __llvm_gcov_ctr.156@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.156@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s1, 40(, %s11)
	st %s0, 32(, %s11)
	lea %s0, .L__profc___parityti2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___parityti2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 32(, %s11)
	ld %s1, 40(, %s11)
	st %s1, 24(, %s11)
	st %s0, 16(, %s11)
	ld %s0, 24(, %s11)
	ld %s1, 16(, %s11)
	xor %s0, %s0, %s1
	st %s0, 8(, %s11)
	ldl.sx %s0, 8(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	ldl.sx %s2, 12(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	xor %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 4(, %s11)
	ldl.sx %s1, 4(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s1, %s0, (32)0
	srl %s1, %s1, 16
	or %s2, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	xor %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 4(, %s11)
	ldl.sx %s1, 4(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s1, %s0, (32)0
	srl %s1, %s1, 8
	or %s2, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	xor %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 4(, %s11)
	ldl.sx %s1, 4(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s1, %s0, (32)0
	srl %s1, %s1, 4
	or %s2, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	xor %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 4(, %s11)
	ldl.zx %s1, 4(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 15, %s0
	or %s1, 0, %s0
	lea %s0, 27030
	or %s2, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	and %s0, %s0, (32)0
	srl %s0, %s0, %s1
	or %s1, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end156:
	.size	__parityti2, .Lfunc_end156-__parityti2
                                        # -- End function
	.globl	__paritysi2                     # -- Begin function __paritysi2
	.p2align	4
	.type	__paritysi2,@function
__paritysi2:                            # @__paritysi2
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB157_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB157_2:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.157@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.157@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc___paritysi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___paritysi2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	stl %s0, 8(, %s11)
	ldl.sx %s1, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s1, %s0, (32)0
	srl %s1, %s1, 16
	or %s2, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	xor %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	ldl.sx %s1, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s1, %s0, (32)0
	srl %s1, %s1, 8
	or %s2, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	xor %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	ldl.sx %s1, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s1, %s0, (32)0
	srl %s1, %s1, 4
	or %s2, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	xor %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	ldl.zx %s1, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 15, %s0
	or %s1, 0, %s0
	lea %s0, 27030
	or %s2, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	and %s0, %s0, (32)0
	srl %s0, %s0, %s1
	or %s1, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end157:
	.size	__paritysi2, .Lfunc_end157-__paritysi2
                                        # -- End function
	.globl	__popcountdi2                   # -- Begin function __popcountdi2
	.p2align	4
	.type	__popcountdi2,@function
__popcountdi2:                          # @__popcountdi2
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB158_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB158_2:
	lea %s1, __llvm_gcov_ctr.158@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.158@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	st %s0, 24(, %s11)
	lea %s0, .L__profc___popcountdi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___popcountdi2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 24(, %s11)
	st %s0, 16(, %s11)
	ld %s0, 16(, %s11)
	srl %s1, %s0, 1
	lea %s2, 1431655765
	lea.sl %s2, 1431655765(, %s2)
	and %s1, %s1, %s2
	subs.l %s0, %s0, %s1
	st %s0, 16(, %s11)
	ld %s1, 16(, %s11)
	srl %s0, %s1, 2
	lea %s2, 858993459
	lea.sl %s2, 858993459(, %s2)
	and %s0, %s0, %s2
	and %s1, %s1, %s2
	adds.l %s0, %s0, %s1
	st %s0, 16(, %s11)
	ld %s0, 16(, %s11)
	srl %s1, %s0, 4
	adds.l %s0, %s0, %s1
	lea %s1, 252645135
	lea.sl %s1, 252645135(, %s1)
	and %s0, %s0, %s1
	st %s0, 16(, %s11)
	ld %s0, 16(, %s11)
	srl %s1, %s0, 32
	adds.l %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	ldl.sx %s0, 12(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	and %s1, %s1, (32)0
	srl %s1, %s1, 16
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	stl %s0, 12(, %s11)
	ldl.sx %s0, 12(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	and %s1, %s1, (32)0
	srl %s1, %s1, 8
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s1, %s0, %s1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (57)0
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end158:
	.size	__popcountdi2, .Lfunc_end158-__popcountdi2
                                        # -- End function
	.globl	__popcountsi2                   # -- Begin function __popcountsi2
	.p2align	4
	.type	__popcountsi2,@function
__popcountsi2:                          # @__popcountsi2
# %bb.0:
	adds.l %s11, -16, %s11
	brge.l.t %s11, %s8, .LBB159_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB159_2:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	lea %s1, __llvm_gcov_ctr.159@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_ctr.159@hi(, %s1)
	ld %s2, (, %s1)
	lea %s2, 1(, %s2)
	st %s2, (, %s1)
	stl %s0, 12(, %s11)
	lea %s0, .L__profc___popcountsi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___popcountsi2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	stl %s0, 8(, %s11)
	ldl.sx %s0, 8(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	and %s1, %s1, (32)0
	srl %s1, %s1, 1
	or %s2, 0, %s1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	lea %s2, 1431655765
	and %s1, %s1, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	subs.w.sx %s0, %s0, %s1
	stl %s0, 8(, %s11)
	ldl.sx %s0, 8(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	and %s0, %s1, (32)0
	srl %s0, %s0, 2
	or %s2, 0, %s0
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	lea %s2, 858993459
	and %s0, %s0, %s2
                                        # kill: def $sw0 killed $sw0 killed $sx0
	and %s1, %s1, %s2
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	stl %s0, 8(, %s11)
	ldl.sx %s0, 8(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	and %s1, %s1, (32)0
	srl %s1, %s1, 4
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s1, %s0, %s1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s1, 252645135
	and %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	ldl.sx %s0, 8(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	and %s1, %s1, (32)0
	srl %s1, %s1, 16
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	stl %s0, 8(, %s11)
	ldl.sx %s0, 8(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	and %s1, %s1, (32)0
	srl %s1, %s1, 8
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s1, %s0, %s1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 63, %s0
	adds.l %s11, 16, %s11
	b.l.t (, %s10)
.Lfunc_end159:
	.size	__popcountsi2, .Lfunc_end159-__popcountsi2
                                        # -- End function
	.globl	__popcountti2                   # -- Begin function __popcountti2
	.p2align	4
	.type	__popcountti2,@function
__popcountti2:                          # @__popcountti2
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB160_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB160_2:
                                        # kill: def $sx2 killed $sx1
                                        # kill: def $sx2 killed $sx0
	lea %s2, __llvm_gcov_ctr.160@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.160@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s1, 40(, %s11)
	st %s0, 32(, %s11)
	lea %s0, .L__profc___popcountti2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___popcountti2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 32(, %s11)
	ld %s1, 40(, %s11)
	st %s1, 24(, %s11)
	st %s0, 16(, %s11)
	ld %s1, 16(, %s11)
	ld %s0, 24(, %s11)
	srl %s2, %s0, 1
	srl %s3, %s1, 1
	lea %s4, 1431655765
	lea.sl %s4, 1431655765(, %s4)
	and %s3, %s3, %s4
	and %s2, %s2, %s4
	subs.l %s0, %s0, %s2
	cmpu.l %s5, %s1, %s3
	or %s2, 0, (0)1
	or %s4, 0, %s2
	cmov.l.lt %s4, (63)0, %s5
                                        # kill: def $sw4 killed $sw4 killed $sx4
	adds.w.zx %s5, %s4, (0)1
                                        # implicit-def: $sx4
	or %s4, 0, %s5
	subs.l %s0, %s0, %s4
	subs.l %s1, %s1, %s3
	st %s1, 16(, %s11)
	st %s0, 24(, %s11)
	ld %s1, 16(, %s11)
	ld %s4, 24(, %s11)
	srl %s0, %s4, 2
	srl %s3, %s1, 2
	lea %s5, 858993459
	lea.sl %s5, 858993459(, %s5)
	and %s3, %s3, %s5
	and %s0, %s0, %s5
	and %s1, %s1, %s5
	and %s4, %s4, %s5
	adds.l %s0, %s0, %s4
	adds.l %s1, %s3, %s1
	cmpu.l %s4, %s1, %s3
	or %s3, 0, %s2
	cmov.l.lt %s3, (63)0, %s4
                                        # kill: def $sw3 killed $sw3 killed $sx3
	adds.w.zx %s4, %s3, (0)1
                                        # implicit-def: $sx3
	or %s3, 0, %s4
	adds.l %s0, %s0, %s3
	st %s1, 16(, %s11)
	st %s0, 24(, %s11)
	ld %s3, 16(, %s11)
	ld %s0, 24(, %s11)
	sll %s4, %s0, 60
	srl %s1, %s3, 4
	or %s1, %s1, %s4
	srl %s4, %s0, 4
	adds.l %s0, %s0, %s4
	adds.l %s1, %s3, %s1
	cmpu.l %s3, %s1, %s3
	cmov.l.lt %s2, (63)0, %s3
                                        # kill: def $sw2 killed $sw2 killed $sx2
	adds.w.zx %s3, %s2, (0)1
                                        # implicit-def: $sx2
	or %s2, 0, %s3
	adds.l %s0, %s0, %s2
	lea %s2, 252645135
	lea.sl %s2, 252645135(, %s2)
	and %s0, %s0, %s2
	and %s1, %s1, %s2
	st %s1, 16(, %s11)
	st %s0, 24(, %s11)
	ld %s1, 24(, %s11)
	ld %s0, 16(, %s11)
	adds.l %s0, %s0, %s1
	st %s0, 8(, %s11)
	ld %s0, 8(, %s11)
	srl %s1, %s0, 32
	adds.l %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 4(, %s11)
	ldl.sx %s0, 4(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	and %s1, %s1, (32)0
	srl %s1, %s1, 16
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	stl %s0, 4(, %s11)
	ldl.sx %s0, 4(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	and %s1, %s1, (32)0
	srl %s1, %s1, 8
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s1, %s0, %s1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (56)0
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end160:
	.size	__popcountti2, .Lfunc_end160-__popcountti2
                                        # -- End function
	.globl	__powidf2                       # -- Begin function __powidf2
	.p2align	4
	.type	__powidf2,@function
__powidf2:                              # @__powidf2
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB161_11
# %bb.10:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB161_11:
	st %s1, 16(, %s11)                      # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 16(, %s11)                      # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s1, 40(, %s11)
	stl %s0, 36(, %s11)
	lea %s0, .L__profc___powidf2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___powidf2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s1, 36(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (32)0
	srl %s0, %s0, 31
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 32(, %s11)
	lea.sl %s0, 1072693248
	st %s0, 24(, %s11)
	br.l .LBB161_1
.LBB161_1:                              # =>This Inner Loop Header: Depth=1
	lea %s0, .L__profc___powidf2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___powidf2@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld1b.zx %s1, 36(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB161_3
	br.l .LBB161_2
.LBB161_2:                              #   in Loop: Header=BB161_1 Depth=1
	lea %s0, __llvm_gcov_ctr.161@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.161@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___powidf2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___powidf2@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ld %s1, 40(, %s11)
	ld %s0, 24(, %s11)
	fmul.d %s0, %s0, %s1
	st %s0, 24(, %s11)
	br.l .LBB161_3
.LBB161_3:                              #   in Loop: Header=BB161_1 Depth=1
	ldl.sx %s0, 36(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	and %s1, %s1, (32)0
	srl %s1, %s1, 31
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	sra.w.sx %s0, %s0, 1
	stl %s0, 36(, %s11)
	ldl.sx %s0, 36(, %s11)
	brne.w 0, %s0, .LBB161_5
	br.l .LBB161_4
.LBB161_4:
	lea %s0, .L__profc___powidf2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___powidf2@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	br.l .LBB161_6
.LBB161_5:                              #   in Loop: Header=BB161_1 Depth=1
	lea %s0, __llvm_gcov_ctr.161@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.161@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld %s0, 40(, %s11)
	fmul.d %s0, %s0, %s0
	st %s0, 40(, %s11)
	br.l .LBB161_1
.LBB161_6:
	ldl.sx %s0, 32(, %s11)
	breq.w 0, %s0, .LBB161_8
	br.l .LBB161_7
.LBB161_7:
	lea %s0, __llvm_gcov_ctr.161@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.161@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc___powidf2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___powidf2@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ld %s1, 24(, %s11)
	lea.sl %s0, 1072693248
	fdiv.d %s0, %s0, %s1
	st %s0, 8(, %s11)                       # 8-byte Folded Spill
	br.l .LBB161_9
.LBB161_8:
	lea %s0, __llvm_gcov_ctr.161@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.161@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ld %s0, 24(, %s11)
	st %s0, 8(, %s11)                       # 8-byte Folded Spill
	br.l .LBB161_9
.LBB161_9:
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end161:
	.size	__powidf2, .Lfunc_end161-__powidf2
                                        # -- End function
	.globl	__powisf2                       # -- Begin function __powisf2
	.p2align	4
	.type	__powisf2,@function
__powisf2:                              # @__powisf2
# %bb.0:
	adds.l %s11, -32, %s11
	brge.l.t %s11, %s8, .LBB162_11
# %bb.10:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB162_11:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
                                        # kill: def $sf1 killed $sf1 killed $sx1
	stu %s1, 28(, %s11)
	stl %s0, 24(, %s11)
	lea %s0, .L__profc___powisf2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___powisf2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ldl.sx %s1, 24(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (32)0
	srl %s0, %s0, 31
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 20(, %s11)
	lea %s0, 1065353216
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 16(, %s11)
	br.l .LBB162_1
.LBB162_1:                              # =>This Inner Loop Header: Depth=1
	lea %s0, .L__profc___powisf2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___powisf2@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ld1b.zx %s1, 24(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB162_3
	br.l .LBB162_2
.LBB162_2:                              #   in Loop: Header=BB162_1 Depth=1
	lea %s0, __llvm_gcov_ctr.162@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.162@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___powisf2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___powisf2@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	ldu %s1, 28(, %s11)
	ldu %s0, 16(, %s11)
	fmul.s %s0, %s0, %s1
	stu %s0, 16(, %s11)
	br.l .LBB162_3
.LBB162_3:                              #   in Loop: Header=BB162_1 Depth=1
	ldl.sx %s0, 24(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s0
	and %s1, %s1, (32)0
	srl %s1, %s1, 31
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	sra.w.sx %s0, %s0, 1
	stl %s0, 24(, %s11)
	ldl.sx %s0, 24(, %s11)
	brne.w 0, %s0, .LBB162_5
	br.l .LBB162_4
.LBB162_4:
	lea %s0, .L__profc___powisf2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___powisf2@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	br.l .LBB162_6
.LBB162_5:                              #   in Loop: Header=BB162_1 Depth=1
	lea %s0, __llvm_gcov_ctr.162@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.162@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	ldu %s0, 28(, %s11)
	fmul.s %s0, %s0, %s0
	stu %s0, 28(, %s11)
	br.l .LBB162_1
.LBB162_6:
	ldl.sx %s0, 20(, %s11)
	breq.w 0, %s0, .LBB162_8
	br.l .LBB162_7
.LBB162_7:
	lea %s0, __llvm_gcov_ctr.162@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.162@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc___powisf2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___powisf2@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	ldu %s1, 16(, %s11)
	lea.sl %s0, 1065353216
                                        # kill: def $sf0 killed $sf0 killed $sx0
	fdiv.s %s0, %s0, %s1
	stu %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB162_9
.LBB162_8:
	lea %s0, __llvm_gcov_ctr.162@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.162@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	ldu %s0, 16(, %s11)
	stu %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB162_9
.LBB162_9:
	ldu %s1, 4(, %s11)                      # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 32, %s11
	b.l.t (, %s10)
.Lfunc_end162:
	.size	__powisf2, .Lfunc_end162-__powisf2
                                        # -- End function
	.globl	__ucmpdi2                       # -- Begin function __ucmpdi2
	.p2align	4
	.type	__ucmpdi2,@function
__ucmpdi2:                              # @__ucmpdi2
# %bb.0:
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB163_11
# %bb.10:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB163_11:
	st %s0, 32(, %s11)
	st %s1, 24(, %s11)
	lea %s0, .L__profc___ucmpdi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ucmpdi2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 32(, %s11)
	st %s0, 16(, %s11)
	ld %s0, 24(, %s11)
	st %s0, 8(, %s11)
	ldl.sx %s1, 20(, %s11)
	ldl.sx %s0, 12(, %s11)
	cmpu.w %s0, %s0, %s1
	brge.w 0, %s0, .LBB163_2
	br.l .LBB163_1
.LBB163_1:
	lea %s0, __llvm_gcov_ctr.163@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.163@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___ucmpdi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ucmpdi2@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 44(, %s11)
	br.l .LBB163_9
.LBB163_2:
	ldl.sx %s1, 20(, %s11)
	ldl.sx %s0, 12(, %s11)
	cmpu.w %s0, %s0, %s1
	brle.w 0, %s0, .LBB163_4
	br.l .LBB163_3
.LBB163_3:
	lea %s0, __llvm_gcov_ctr.163@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.163@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___ucmpdi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ucmpdi2@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	or %s0, 2, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 44(, %s11)
	br.l .LBB163_9
.LBB163_4:
	ldl.sx %s1, 16(, %s11)
	ldl.sx %s0, 8(, %s11)
	cmpu.w %s0, %s0, %s1
	brge.w 0, %s0, .LBB163_6
	br.l .LBB163_5
.LBB163_5:
	lea %s0, __llvm_gcov_ctr.163@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.163@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc___ucmpdi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ucmpdi2@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 44(, %s11)
	br.l .LBB163_9
.LBB163_6:
	ldl.sx %s1, 16(, %s11)
	ldl.sx %s0, 8(, %s11)
	cmpu.w %s0, %s0, %s1
	brle.w 0, %s0, .LBB163_8
	br.l .LBB163_7
.LBB163_7:
	lea %s0, __llvm_gcov_ctr.163@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.163@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc___ucmpdi2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ucmpdi2@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	or %s0, 2, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 44(, %s11)
	br.l .LBB163_9
.LBB163_8:
	lea %s0, __llvm_gcov_ctr.163@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.163@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 44(, %s11)
	br.l .LBB163_9
.LBB163_9:
	ldl.sx %s1, 44(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 48, %s11
	b.l.t (, %s10)
.Lfunc_end163:
	.size	__ucmpdi2, .Lfunc_end163-__ucmpdi2
                                        # -- End function
	.globl	__aeabi_ulcmp                   # -- Begin function __aeabi_ulcmp
	.p2align	4
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          # @__aeabi_ulcmp
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -256(, %s11)
	brge.l.t %s11, %s8, .LBB164_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB164_2:
	lea %s2, __llvm_gcov_ctr.164@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __llvm_gcov_ctr.164@hi(, %s2)
	ld %s3, (, %s2)
	lea %s3, 1(, %s3)
	st %s3, (, %s2)
	st %s0, -8(, %s9)
	st %s1, -16(, %s9)
	lea %s0, .L__profc___aeabi_ulcmp@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___aeabi_ulcmp@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, -8(, %s9)
	ld %s1, -16(, %s9)
	lea %s2, __ucmpdi2@lo
	and %s2, %s2, (32)0
	lea.sl %s2, __ucmpdi2@hi(, %s2)
	or %s12, 0, %s2
	bsic %s10, (, %s12)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	adds.w.sx %s0, -1, %s0
	adds.w.sx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end164:
	.size	__aeabi_ulcmp, .Lfunc_end164-__aeabi_ulcmp
                                        # -- End function
	.globl	__ucmpti2                       # -- Begin function __ucmpti2
	.p2align	4
	.type	__ucmpti2,@function
__ucmpti2:                              # @__ucmpti2
# %bb.0:
	lea %s11, -80(, %s11)
	brge.l.t %s11, %s8, .LBB165_11
# %bb.10:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB165_11:
                                        # kill: def $sx4 killed $sx3
                                        # kill: def $sx4 killed $sx2
                                        # kill: def $sx4 killed $sx1
                                        # kill: def $sx4 killed $sx0
	st %s1, 56(, %s11)
	st %s0, 48(, %s11)
	st %s3, 40(, %s11)
	st %s2, 32(, %s11)
	lea %s0, .L__profc___ucmpti2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ucmpti2@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	ld %s0, 48(, %s11)
	ld %s1, 56(, %s11)
	st %s1, 24(, %s11)
	st %s0, 16(, %s11)
	ld %s0, 32(, %s11)
	ld %s1, 40(, %s11)
	st %s1, 8(, %s11)
	st %s0, (, %s11)
	ld %s1, 24(, %s11)
	ld %s0, 8(, %s11)
	cmpu.l %s0, %s0, %s1
	brge.l 0, %s0, .LBB165_2
	br.l .LBB165_1
.LBB165_1:
	lea %s0, __llvm_gcov_ctr.165@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.165@hi(, %s0)
	ld %s1, (, %s0)
	lea %s1, 1(, %s1)
	st %s1, (, %s0)
	lea %s0, .L__profc___ucmpti2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ucmpti2@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 76(, %s11)
	br.l .LBB165_9
.LBB165_2:
	ld %s1, 24(, %s11)
	ld %s0, 8(, %s11)
	cmpu.l %s0, %s0, %s1
	brle.l 0, %s0, .LBB165_4
	br.l .LBB165_3
.LBB165_3:
	lea %s0, __llvm_gcov_ctr.165@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.165@hi(, %s0)
	ld %s1, 8(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 8(, %s0)
	lea %s0, .L__profc___ucmpti2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ucmpti2@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	or %s0, 2, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 76(, %s11)
	br.l .LBB165_9
.LBB165_4:
	ld %s1, 16(, %s11)
	ld %s0, (, %s11)
	cmpu.l %s0, %s0, %s1
	brge.l 0, %s0, .LBB165_6
	br.l .LBB165_5
.LBB165_5:
	lea %s0, __llvm_gcov_ctr.165@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.165@hi(, %s0)
	ld %s1, 16(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 16(, %s0)
	lea %s0, .L__profc___ucmpti2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ucmpti2@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 76(, %s11)
	br.l .LBB165_9
.LBB165_6:
	ld %s1, 16(, %s11)
	ld %s0, (, %s11)
	cmpu.l %s0, %s0, %s1
	brle.l 0, %s0, .LBB165_8
	br.l .LBB165_7
.LBB165_7:
	lea %s0, __llvm_gcov_ctr.165@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.165@hi(, %s0)
	ld %s1, 24(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 24(, %s0)
	lea %s0, .L__profc___ucmpti2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, .L__profc___ucmpti2@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	or %s0, 2, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 76(, %s11)
	br.l .LBB165_9
.LBB165_8:
	lea %s0, __llvm_gcov_ctr.165@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.165@hi(, %s0)
	ld %s1, 32(, %s0)
	lea %s1, 1(, %s1)
	st %s1, 32(, %s0)
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 76(, %s11)
	br.l .LBB165_9
.LBB165_9:
	ldl.sx %s1, 76(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s11, 80(, %s11)
	b.l.t (, %s10)
.Lfunc_end165:
	.size	__ucmpti2, .Lfunc_end165-__ucmpti2
                                        # -- End function
	.p2align	4                               # -- Begin function __llvm_gcov_writeout
	.type	__llvm_gcov_writeout,@function
__llvm_gcov_writeout:                   # @__llvm_gcov_writeout
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -304(, %s11)
	brge.l.t %s11, %s8, .LBB166_6
# %bb.5:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB166_6:
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -4(, %s9)                      # 4-byte Folded Spill
.LBB166_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB166_2 Depth 2
	ldl.sx %s0, -4(, %s9)                   # 4-byte Folded Reload
	stl %s0, -52(, %s9)                     # 4-byte Folded Spill
	adds.w.sx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	muls.l %s3, 40, %s0
	st %s3, -48(, %s9)                      # 8-byte Folded Spill
	lea %s0, __llvm_internal_gcov_emit_file_info@lo
	and %s0, %s0, (32)0
	lea.sl %s2, __llvm_internal_gcov_emit_file_info@hi(, %s0)
	st %s2, -40(, %s9)                      # 8-byte Folded Spill
	ld %s0, (%s3, %s2)
	ldl.sx %s4, 8(%s3, %s2)
                                        # implicit-def: $sx1
	or %s1, 0, %s4
	ldl.sx %s3, 12(%s3, %s2)
                                        # implicit-def: $sx2
	or %s2, 0, %s3
	lea %s3, llvm_gcda_start_file@lo
	and %s3, %s3, (32)0
	lea.sl %s3, llvm_gcda_start_file@hi(, %s3)
	or %s12, 0, %s3
	bsic %s10, (, %s12)
	ld %s2, -48(, %s9)                      # 8-byte Folded Reload
	ld %s1, -40(, %s9)                      # 8-byte Folded Reload
	ldl.sx %s0, 16(%s2, %s1)
	stl %s0, -28(, %s9)                     # 4-byte Folded Spill
	ld %s3, 24(%s2, %s1)
	st %s3, -24(, %s9)                      # 8-byte Folded Spill
	ld %s1, 32(%s2, %s1)
	st %s1, -16(, %s9)                      # 8-byte Folded Spill
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, -8(, %s9)                      # 4-byte Folded Spill
	brgt.w 1, %s0, .LBB166_3
	br.l .LBB166_2
.LBB166_2:                              #   Parent Loop BB166_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldl.sx %s1, -8(, %s9)                   # 4-byte Folded Reload
	ld %s0, -24(, %s9)                      # 8-byte Folded Reload
	stl %s1, -56(, %s9)                     # 4-byte Folded Spill
	adds.w.sx %s2, %s1, (0)1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	st %s1, -64(, %s9)                      # 8-byte Folded Spill
	muls.l %s3, 12, %s1
	ldl.sx %s1, 8(%s3, %s0)
                                        # implicit-def: $sx2
	or %s2, 0, %s1
	ldl.sx %s4, 4(%s3, %s0)
                                        # implicit-def: $sx1
	or %s1, 0, %s4
	ldl.sx %s3, (%s3, %s0)
                                        # implicit-def: $sx0
	or %s0, 0, %s3
	lea %s3, llvm_gcda_emit_function@lo
	and %s3, %s3, (32)0
	lea.sl %s3, llvm_gcda_emit_function@hi(, %s3)
	or %s12, 0, %s3
	bsic %s10, (, %s12)
	ld %s1, -64(, %s9)                      # 8-byte Folded Reload
	ld %s0, -16(, %s9)                      # 8-byte Folded Reload
	sll %s2, %s1, 4
	ld %s1, 8(%s2, %s0)
	ldl.sx %s2, (%s2, %s0)
                                        # implicit-def: $sx0
	or %s0, 0, %s2
	lea %s2, llvm_gcda_emit_arcs@lo
	and %s2, %s2, (32)0
	lea.sl %s2, llvm_gcda_emit_arcs@hi(, %s2)
	or %s12, 0, %s2
	bsic %s10, (, %s12)
	ldl.sx %s0, -56(, %s9)                  # 4-byte Folded Reload
	ldl.sx %s1, -28(, %s9)                  # 4-byte Folded Reload
	adds.w.sx %s0, 1, %s0
	or %s2, 0, %s0
	stl %s2, -8(, %s9)                      # 4-byte Folded Spill
	brlt.w %s0, %s1, .LBB166_2
	br.l .LBB166_3
.LBB166_3:                              #   in Loop: Header=BB166_1 Depth=1
	lea %s0, llvm_gcda_summary_info@lo
	and %s0, %s0, (32)0
	lea.sl %s0, llvm_gcda_summary_info@hi(, %s0)
	or %s12, 0, %s0
	bsic %s10, (, %s12)
	lea %s0, llvm_gcda_end_file@lo
	and %s0, %s0, (32)0
	lea.sl %s0, llvm_gcda_end_file@hi(, %s0)
	or %s12, 0, %s0
	bsic %s10, (, %s12)
	ldl.sx %s0, -52(, %s9)                  # 4-byte Folded Reload
	adds.w.sx %s0, 1, %s0
	or %s1, 0, %s0
	stl %s1, -4(, %s9)                      # 4-byte Folded Spill
	brgt.w 1, %s0, .LBB166_1
	br.l .LBB166_4
.LBB166_4:
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end166:
	.size	__llvm_gcov_writeout, .Lfunc_end166-__llvm_gcov_writeout
                                        # -- End function
	.p2align	4                               # -- Begin function __llvm_gcov_reset
	.type	__llvm_gcov_reset,@function
__llvm_gcov_reset:                      # @__llvm_gcov_reset
# %bb.0:
	lea %s0, __llvm_gcov_ctr@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr@hi(, %s0)
	or %s1, 0, (0)1
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.1@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.1@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.2@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.2@hi(, %s0)
	st %s1, (, %s0)
	st %s1, 8(, %s0)
	st %s1, 16(, %s0)
	st %s1, 24(, %s0)
	st %s1, 32(, %s0)
	lea %s0, __llvm_gcov_ctr.3@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.3@hi(, %s0)
	st %s1, (, %s0)
	st %s1, 8(, %s0)
	st %s1, 16(, %s0)
	st %s1, 24(, %s0)
	st %s1, 32(, %s0)
	lea %s0, __llvm_gcov_ctr.4@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.4@hi(, %s0)
	st %s1, (, %s0)
	st %s1, 8(, %s0)
	st %s1, 16(, %s0)
	st %s1, 24(, %s0)
	st %s1, 32(, %s0)
	lea %s0, __llvm_gcov_ctr.5@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.5@hi(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.6@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.6@hi(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.7@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.7@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.8@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.8@hi(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.9@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.9@hi(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.10@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.10@hi(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.11@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.11@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.12@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.12@hi(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.13@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.13@hi(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.14@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.14@hi(, %s0)
	st %s1, 48(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.15@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.15@hi(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.16@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.16@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.17@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.17@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.18@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.18@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.19@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.19@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.20@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.20@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.21@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.21@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.22@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.22@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.23@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.23@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.24@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.24@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.25@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.25@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.26@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.26@hi(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.27@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.27@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.28@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.28@hi(, %s0)
	st %s1, 48(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.29@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.29@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.30@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.30@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.31@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.31@hi(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.32@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.32@hi(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.33@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.33@hi(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.34@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.34@hi(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.35@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.35@hi(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.36@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.36@hi(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.37@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.37@hi(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.38@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.38@hi(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.39@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.39@hi(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.40@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.40@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.41@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.41@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.42@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.42@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.43@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.43@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.44@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.44@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.45@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.45@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.46@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.46@hi(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.47@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.47@hi(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.48@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.48@hi(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.49@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.49@hi(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.50@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.50@hi(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.51@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.51@hi(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.52@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.52@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.53@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.53@hi(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.54@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.54@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.55@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.55@hi(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.56@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.56@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.57@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.57@hi(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.58@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.58@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.59@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.59@hi(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.60@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.60@hi(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.61@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.61@hi(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.62@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.62@hi(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.63@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.63@hi(, %s0)
	st %s1, 56(, %s0)
	st %s1, 48(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.64@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.64@hi(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.65@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.65@hi(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.66@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.66@hi(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.67@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.67@hi(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.68@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.68@hi(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.69@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.69@hi(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.70@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.70@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.71@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.71@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.72@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.72@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.73@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.73@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.74@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.74@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.75@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.75@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.76@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.76@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.77@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.77@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.78@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.78@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.79@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.79@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.80@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.80@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.81@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.81@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.82@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.82@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.83@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.83@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.84@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.84@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.85@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.85@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.86@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.86@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.87@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.87@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.88@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.88@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.89@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.89@hi(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.90@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.90@hi(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.91@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.91@hi(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.92@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.92@hi(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.93@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.93@hi(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.94@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.94@hi(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.95@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.95@hi(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.96@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.96@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.97@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.97@hi(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.98@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.98@hi(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.99@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.99@hi(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.100@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.100@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.101@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.101@hi(, %s0)
	st %s1, 56(, %s0)
	st %s1, 48(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.102@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.102@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.103@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.103@hi(, %s0)
	st %s1, 56(, %s0)
	st %s1, 48(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.104@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.104@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.105@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.105@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.106@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.106@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.107@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.107@hi(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.108@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.108@hi(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.109@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.109@hi(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.110@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.110@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.111@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.111@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.112@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.112@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.113@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.113@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.114@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.114@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.115@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.115@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.116@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.116@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.117@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.117@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.118@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.118@hi(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.119@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.119@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.120@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.120@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.121@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.121@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.122@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.122@hi(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.123@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.123@hi(, %s0)
	st %s1, 56(, %s0)
	st %s1, 48(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.124@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.124@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.125@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.125@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.126@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.126@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.127@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.127@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.128@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.128@hi(, %s0)
	st %s1, 48(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.129@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.129@hi(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.130@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.130@hi(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.131@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.131@hi(, %s0)
	st %s1, 56(, %s0)
	st %s1, 48(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.132@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.132@hi(, %s0)
	st %s1, 56(, %s0)
	st %s1, 48(, %s0)
	st %s1, 40(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.133@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.133@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.134@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.134@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.135@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.135@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.136@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.136@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.137@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.137@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.138@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.138@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.139@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.139@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.140@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.140@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.141@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.141@hi(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.142@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.142@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.143@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.143@hi(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.144@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.144@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.145@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.145@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.146@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.146@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.147@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.147@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.148@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.148@hi(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.149@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.149@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.150@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.150@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.151@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.151@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.152@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.152@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.153@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.153@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.154@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.154@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.155@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.155@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.156@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.156@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.157@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.157@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.158@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.158@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.159@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.159@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.160@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.160@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.161@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.161@hi(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.162@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.162@hi(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.163@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.163@hi(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.164@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.164@hi(, %s0)
	st %s1, (, %s0)
	lea %s0, __llvm_gcov_ctr.165@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_ctr.165@hi(, %s0)
	st %s1, 32(, %s0)
	st %s1, 24(, %s0)
	st %s1, 16(, %s0)
	st %s1, 8(, %s0)
	st %s1, (, %s0)
	b.l.t (, %s10)
.Lfunc_end167:
	.size	__llvm_gcov_reset, .Lfunc_end167-__llvm_gcov_reset
                                        # -- End function
	.p2align	4                               # -- Begin function __llvm_gcov_init
	.type	__llvm_gcov_init,@function
__llvm_gcov_init:                       # @__llvm_gcov_init
# %bb.0:
	st %s9, (, %s11)
	st %s10, 8(, %s11)
	or %s9, 0, %s11
	lea %s11, -240(, %s11)
	brge.l.t %s11, %s8, .LBB168_2
# %bb.1:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB168_2:
	lea %s0, llvm_gcov_init@lo
	and %s0, %s0, (32)0
	lea.sl %s2, llvm_gcov_init@hi(, %s0)
	lea %s0, __llvm_gcov_writeout@lo
	and %s0, %s0, (32)0
	lea.sl %s0, __llvm_gcov_writeout@hi(, %s0)
	lea %s1, __llvm_gcov_reset@lo
	and %s1, %s1, (32)0
	lea.sl %s1, __llvm_gcov_reset@hi(, %s1)
	or %s12, 0, %s2
	bsic %s10, (, %s12)
	or %s11, 0, %s9
	ld %s10, 8(, %s11)
	ld %s9, (, %s11)
	b.l.t (, %s10)
.Lfunc_end168:
	.size	__llvm_gcov_init, .Lfunc_end168-__llvm_gcov_init
                                        # -- End function
	.type	l64a.s,@object                  # @l64a.s
	.local	l64a.s
	.comm	l64a.s,7,1
	.type	digits,@object                  # @digits
	.section	.rodata,"a",@progbits
digits:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	digits, 65

	.type	seed,@object                    # @seed
	.local	seed
	.comm	seed,8,8
	.type	__llvm_gcov_ctr,@object         # @__llvm_gcov_ctr
	.local	__llvm_gcov_ctr
	.comm	__llvm_gcov_ctr,8,8
	.type	__llvm_gcov_ctr.1,@object       # @__llvm_gcov_ctr.1
	.local	__llvm_gcov_ctr.1
	.comm	__llvm_gcov_ctr.1,8,8
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
	.local	__llvm_gcov_ctr.16
	.comm	__llvm_gcov_ctr.16,8,8
	.type	__llvm_gcov_ctr.17,@object      # @__llvm_gcov_ctr.17
	.local	__llvm_gcov_ctr.17
	.comm	__llvm_gcov_ctr.17,8,8
	.type	__llvm_gcov_ctr.18,@object      # @__llvm_gcov_ctr.18
	.local	__llvm_gcov_ctr.18
	.comm	__llvm_gcov_ctr.18,24,16
	.type	__llvm_gcov_ctr.19,@object      # @__llvm_gcov_ctr.19
	.local	__llvm_gcov_ctr.19
	.comm	__llvm_gcov_ctr.19,24,16
	.type	__llvm_gcov_ctr.20,@object      # @__llvm_gcov_ctr.20
	.local	__llvm_gcov_ctr.20
	.comm	__llvm_gcov_ctr.20,8,8
	.type	__llvm_gcov_ctr.21,@object      # @__llvm_gcov_ctr.21
	.local	__llvm_gcov_ctr.21
	.comm	__llvm_gcov_ctr.21,8,8
	.type	__llvm_gcov_ctr.22,@object      # @__llvm_gcov_ctr.22
	.local	__llvm_gcov_ctr.22
	.comm	__llvm_gcov_ctr.22,8,8
	.type	__llvm_gcov_ctr.23,@object      # @__llvm_gcov_ctr.23
	.local	__llvm_gcov_ctr.23
	.comm	__llvm_gcov_ctr.23,8,8
	.type	__llvm_gcov_ctr.24,@object      # @__llvm_gcov_ctr.24
	.local	__llvm_gcov_ctr.24
	.comm	__llvm_gcov_ctr.24,24,16
	.type	__llvm_gcov_ctr.25,@object      # @__llvm_gcov_ctr.25
	.local	__llvm_gcov_ctr.25
	.comm	__llvm_gcov_ctr.25,8,8
	.type	__llvm_gcov_ctr.26,@object      # @__llvm_gcov_ctr.26
	.local	__llvm_gcov_ctr.26
	.comm	__llvm_gcov_ctr.26,40,16
	.type	__llvm_gcov_ctr.27,@object      # @__llvm_gcov_ctr.27
	.local	__llvm_gcov_ctr.27
	.comm	__llvm_gcov_ctr.27,8,8
	.type	__llvm_gcov_ctr.28,@object      # @__llvm_gcov_ctr.28
	.local	__llvm_gcov_ctr.28
	.comm	__llvm_gcov_ctr.28,56,16
	.type	__llvm_gcov_ctr.29,@object      # @__llvm_gcov_ctr.29
	.local	__llvm_gcov_ctr.29
	.comm	__llvm_gcov_ctr.29,24,16
	.type	__llvm_gcov_ctr.30,@object      # @__llvm_gcov_ctr.30
	.local	__llvm_gcov_ctr.30
	.comm	__llvm_gcov_ctr.30,8,8
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
	.local	__llvm_gcov_ctr.40
	.comm	__llvm_gcov_ctr.40,8,8
	.type	__llvm_gcov_ctr.41,@object      # @__llvm_gcov_ctr.41
	.local	__llvm_gcov_ctr.41
	.comm	__llvm_gcov_ctr.41,8,8
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
	.local	__llvm_gcov_ctr.52
	.comm	__llvm_gcov_ctr.52,8,8
	.type	__llvm_gcov_ctr.53,@object      # @__llvm_gcov_ctr.53
	.local	__llvm_gcov_ctr.53
	.comm	__llvm_gcov_ctr.53,16,8
	.type	__llvm_gcov_ctr.54,@object      # @__llvm_gcov_ctr.54
	.local	__llvm_gcov_ctr.54
	.comm	__llvm_gcov_ctr.54,8,8
	.type	__llvm_gcov_ctr.55,@object      # @__llvm_gcov_ctr.55
	.local	__llvm_gcov_ctr.55
	.comm	__llvm_gcov_ctr.55,16,8
	.type	__llvm_gcov_ctr.56,@object      # @__llvm_gcov_ctr.56
	.local	__llvm_gcov_ctr.56
	.comm	__llvm_gcov_ctr.56,8,8
	.type	__llvm_gcov_ctr.57,@object      # @__llvm_gcov_ctr.57
	.local	__llvm_gcov_ctr.57
	.comm	__llvm_gcov_ctr.57,16,8
	.type	__llvm_gcov_ctr.58,@object      # @__llvm_gcov_ctr.58
	.local	__llvm_gcov_ctr.58
	.comm	__llvm_gcov_ctr.58,8,8
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
	.local	__llvm_gcov_ctr.70
	.comm	__llvm_gcov_ctr.70,8,8
	.type	__llvm_gcov_ctr.71,@object      # @__llvm_gcov_ctr.71
	.local	__llvm_gcov_ctr.71
	.comm	__llvm_gcov_ctr.71,8,8
	.type	__llvm_gcov_ctr.72,@object      # @__llvm_gcov_ctr.72
	.local	__llvm_gcov_ctr.72
	.comm	__llvm_gcov_ctr.72,8,8
	.type	__llvm_gcov_ctr.73,@object      # @__llvm_gcov_ctr.73
	.local	__llvm_gcov_ctr.73
	.comm	__llvm_gcov_ctr.73,8,8
	.type	__llvm_gcov_ctr.74,@object      # @__llvm_gcov_ctr.74
	.local	__llvm_gcov_ctr.74
	.comm	__llvm_gcov_ctr.74,8,8
	.type	__llvm_gcov_ctr.75,@object      # @__llvm_gcov_ctr.75
	.local	__llvm_gcov_ctr.75
	.comm	__llvm_gcov_ctr.75,8,8
	.type	__llvm_gcov_ctr.76,@object      # @__llvm_gcov_ctr.76
	.local	__llvm_gcov_ctr.76
	.comm	__llvm_gcov_ctr.76,8,8
	.type	__llvm_gcov_ctr.77,@object      # @__llvm_gcov_ctr.77
	.local	__llvm_gcov_ctr.77
	.comm	__llvm_gcov_ctr.77,8,8
	.type	__llvm_gcov_ctr.78,@object      # @__llvm_gcov_ctr.78
	.local	__llvm_gcov_ctr.78
	.comm	__llvm_gcov_ctr.78,8,8
	.type	__llvm_gcov_ctr.79,@object      # @__llvm_gcov_ctr.79
	.local	__llvm_gcov_ctr.79
	.comm	__llvm_gcov_ctr.79,8,8
	.type	__llvm_gcov_ctr.80,@object      # @__llvm_gcov_ctr.80
	.local	__llvm_gcov_ctr.80
	.comm	__llvm_gcov_ctr.80,8,8
	.type	__llvm_gcov_ctr.81,@object      # @__llvm_gcov_ctr.81
	.local	__llvm_gcov_ctr.81
	.comm	__llvm_gcov_ctr.81,8,8
	.type	__llvm_gcov_ctr.82,@object      # @__llvm_gcov_ctr.82
	.local	__llvm_gcov_ctr.82
	.comm	__llvm_gcov_ctr.82,8,8
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
	.local	__llvm_gcov_ctr.88
	.comm	__llvm_gcov_ctr.88,8,8
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
	.local	__llvm_gcov_ctr.100
	.comm	__llvm_gcov_ctr.100,8,8
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
	.local	__llvm_gcov_ctr.110
	.comm	__llvm_gcov_ctr.110,8,8
	.type	__llvm_gcov_ctr.111,@object     # @__llvm_gcov_ctr.111
	.local	__llvm_gcov_ctr.111
	.comm	__llvm_gcov_ctr.111,8,8
	.type	__llvm_gcov_ctr.112,@object     # @__llvm_gcov_ctr.112
	.local	__llvm_gcov_ctr.112
	.comm	__llvm_gcov_ctr.112,8,8
	.type	__llvm_gcov_ctr.113,@object     # @__llvm_gcov_ctr.113
	.local	__llvm_gcov_ctr.113
	.comm	__llvm_gcov_ctr.113,8,8
	.type	__llvm_gcov_ctr.114,@object     # @__llvm_gcov_ctr.114
	.local	__llvm_gcov_ctr.114
	.comm	__llvm_gcov_ctr.114,8,8
	.type	__llvm_gcov_ctr.115,@object     # @__llvm_gcov_ctr.115
	.local	__llvm_gcov_ctr.115
	.comm	__llvm_gcov_ctr.115,8,8
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
	.local	__llvm_gcov_ctr.126
	.comm	__llvm_gcov_ctr.126,8,8
	.type	__llvm_gcov_ctr.127,@object     # @__llvm_gcov_ctr.127
	.local	__llvm_gcov_ctr.127
	.comm	__llvm_gcov_ctr.127,8,8
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
	.local	__llvm_gcov_ctr.137
	.comm	__llvm_gcov_ctr.137,8,8
	.type	__llvm_gcov_ctr.138,@object     # @__llvm_gcov_ctr.138
	.local	__llvm_gcov_ctr.138
	.comm	__llvm_gcov_ctr.138,8,8
	.type	__llvm_gcov_ctr.139,@object     # @__llvm_gcov_ctr.139
	.local	__llvm_gcov_ctr.139
	.comm	__llvm_gcov_ctr.139,8,8
	.type	__llvm_gcov_ctr.140,@object     # @__llvm_gcov_ctr.140
	.local	__llvm_gcov_ctr.140
	.comm	__llvm_gcov_ctr.140,8,8
	.type	__llvm_gcov_ctr.141,@object     # @__llvm_gcov_ctr.141
	.local	__llvm_gcov_ctr.141
	.comm	__llvm_gcov_ctr.141,40,16
	.type	__llvm_gcov_ctr.142,@object     # @__llvm_gcov_ctr.142
	.local	__llvm_gcov_ctr.142
	.comm	__llvm_gcov_ctr.142,8,8
	.type	__llvm_gcov_ctr.143,@object     # @__llvm_gcov_ctr.143
	.local	__llvm_gcov_ctr.143
	.comm	__llvm_gcov_ctr.143,40,16
	.type	__llvm_gcov_ctr.144,@object     # @__llvm_gcov_ctr.144
	.local	__llvm_gcov_ctr.144
	.comm	__llvm_gcov_ctr.144,8,8
	.type	__llvm_gcov_ctr.145,@object     # @__llvm_gcov_ctr.145
	.local	__llvm_gcov_ctr.145
	.comm	__llvm_gcov_ctr.145,8,8
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
	.local	__llvm_gcov_ctr.149
	.comm	__llvm_gcov_ctr.149,8,8
	.type	__llvm_gcov_ctr.150,@object     # @__llvm_gcov_ctr.150
	.local	__llvm_gcov_ctr.150
	.comm	__llvm_gcov_ctr.150,8,8
	.type	__llvm_gcov_ctr.151,@object     # @__llvm_gcov_ctr.151
	.local	__llvm_gcov_ctr.151
	.comm	__llvm_gcov_ctr.151,8,8
	.type	__llvm_gcov_ctr.152,@object     # @__llvm_gcov_ctr.152
	.local	__llvm_gcov_ctr.152
	.comm	__llvm_gcov_ctr.152,8,8
	.type	__llvm_gcov_ctr.153,@object     # @__llvm_gcov_ctr.153
	.local	__llvm_gcov_ctr.153
	.comm	__llvm_gcov_ctr.153,8,8
	.type	__llvm_gcov_ctr.154,@object     # @__llvm_gcov_ctr.154
	.local	__llvm_gcov_ctr.154
	.comm	__llvm_gcov_ctr.154,8,8
	.type	__llvm_gcov_ctr.155,@object     # @__llvm_gcov_ctr.155
	.local	__llvm_gcov_ctr.155
	.comm	__llvm_gcov_ctr.155,8,8
	.type	__llvm_gcov_ctr.156,@object     # @__llvm_gcov_ctr.156
	.local	__llvm_gcov_ctr.156
	.comm	__llvm_gcov_ctr.156,8,8
	.type	__llvm_gcov_ctr.157,@object     # @__llvm_gcov_ctr.157
	.local	__llvm_gcov_ctr.157
	.comm	__llvm_gcov_ctr.157,8,8
	.type	__llvm_gcov_ctr.158,@object     # @__llvm_gcov_ctr.158
	.local	__llvm_gcov_ctr.158
	.comm	__llvm_gcov_ctr.158,8,8
	.type	__llvm_gcov_ctr.159,@object     # @__llvm_gcov_ctr.159
	.local	__llvm_gcov_ctr.159
	.comm	__llvm_gcov_ctr.159,8,8
	.type	__llvm_gcov_ctr.160,@object     # @__llvm_gcov_ctr.160
	.local	__llvm_gcov_ctr.160
	.comm	__llvm_gcov_ctr.160,8,8
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
	.local	__llvm_gcov_ctr.164
	.comm	__llvm_gcov_ctr.164,8,8
	.type	__llvm_gcov_ctr.165,@object     # @__llvm_gcov_ctr.165
	.local	__llvm_gcov_ctr.165
	.comm	__llvm_gcov_ctr.165,40,16
	.type	.L__unnamed_1,@object           # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_1:
	.asciz	"/home/gravier/tmp/some-libc-opt/clang-ve.gcda"
	.size	.L__unnamed_1, 46

	.type	__llvm_internal_gcov_emit_function_args.0,@object # @__llvm_internal_gcov_emit_function_args.0
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
__llvm_internal_gcov_emit_function_args.0:
	.4byte	0                               # 0x0
	.4byte	3759012176                      # 0xe00df950
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	1                               # 0x1
	.4byte	3518812481                      # 0xd1bcd141
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	2                               # 0x2
	.4byte	560687177                       # 0x216b6849
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	3                               # 0x3
	.4byte	1589591758                      # 0x5ebf3ece
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	4                               # 0x4
	.4byte	2176136383                      # 0x81b534bf
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	5                               # 0x5
	.4byte	3586625172                      # 0xd5c78e94
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	6                               # 0x6
	.4byte	2323119728                      # 0x8a77fe70
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	7                               # 0x7
	.4byte	2314569740                      # 0x89f5880c
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	8                               # 0x8
	.4byte	2833673551                      # 0xa8e66d4f
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	9                               # 0x9
	.4byte	1458633189                      # 0x56f0f9e5
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	10                              # 0xa
	.4byte	1190300833                      # 0x46f28ca1
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	11                              # 0xb
	.4byte	758327989                       # 0x2d332ab5
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	12                              # 0xc
	.4byte	1651479037                      # 0x626f91fd
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	13                              # 0xd
	.4byte	4132343275                      # 0xf64e8deb
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	14                              # 0xe
	.4byte	734262523                       # 0x2bc3f4fb
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	15                              # 0xf
	.4byte	2463424677                      # 0x92d4e0a5
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	16                              # 0x10
	.4byte	1419026334                      # 0x54949f9e
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	17                              # 0x11
	.4byte	3154471370                      # 0xbc0569ca
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	18                              # 0x12
	.4byte	2077973487                      # 0x7bdb5bef
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	19                              # 0x13
	.4byte	1474691227                      # 0x57e6009b
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	20                              # 0x14
	.4byte	3710986016                      # 0xdd312720
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	21                              # 0x15
	.4byte	1305101473                      # 0x4dca44a1
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	22                              # 0x16
	.4byte	3762036564                      # 0xe03c1f54
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	23                              # 0x17
	.4byte	477914433                       # 0x1c7c6541
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	24                              # 0x18
	.4byte	3923035234                      # 0xe9d4c462
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	25                              # 0x19
	.4byte	951651702                       # 0x38b90d76
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	26                              # 0x1a
	.4byte	4206925919                      # 0xfac0985f
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	27                              # 0x1b
	.4byte	32773942                        # 0x1f41736
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	28                              # 0x1c
	.4byte	2877267246                      # 0xab7f9d2e
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	29                              # 0x1d
	.4byte	860405771                       # 0x3348c00b
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	30                              # 0x1e
	.4byte	815674877                       # 0x309e35fd
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	31                              # 0x1f
	.4byte	1778838753                      # 0x6a06ece1
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	32                              # 0x20
	.4byte	2718307199                      # 0xa206137f
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	33                              # 0x21
	.4byte	856224820                       # 0x3308f434
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	34                              # 0x22
	.4byte	1111195143                      # 0x423b7e07
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	35                              # 0x23
	.4byte	1178414519                      # 0x463d2db7
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	36                              # 0x24
	.4byte	3477640633                      # 0xcf4895b9
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	37                              # 0x25
	.4byte	4294770115                      # 0xfffcfdc3
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	38                              # 0x26
	.4byte	3650660234                      # 0xd998a78a
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	39                              # 0x27
	.4byte	289327647                       # 0x113eca1f
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	40                              # 0x28
	.4byte	2093612798                      # 0x7cc9fefe
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	41                              # 0x29
	.4byte	4177956716                      # 0xf9068f6c
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	42                              # 0x2a
	.4byte	3434808461                      # 0xccbb048d
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	43                              # 0x2b
	.4byte	3206497114                      # 0xbf1f435a
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	44                              # 0x2c
	.4byte	1537257434                      # 0x5ba0afda
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	45                              # 0x2d
	.4byte	3028077325                      # 0xb47ccb0d
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	46                              # 0x2e
	.4byte	1369848209                      # 0x51a63991
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	47                              # 0x2f
	.4byte	938831176                       # 0x37f56d48
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	48                              # 0x30
	.4byte	1663146323                      # 0x63219953
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	49                              # 0x31
	.4byte	4111410217                      # 0xf50f2429
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	50                              # 0x32
	.4byte	1475378556                      # 0x57f07d7c
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	51                              # 0x33
	.4byte	3356195547                      # 0xc80b7adb
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	52                              # 0x34
	.4byte	514931786                       # 0x1eb13c4a
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	53                              # 0x35
	.4byte	2854034444                      # 0xaa1d1c0c
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	54                              # 0x36
	.4byte	2747937306                      # 0xa3ca321a
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	55                              # 0x37
	.4byte	4192776208                      # 0xf9e8b010
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	56                              # 0x38
	.4byte	984436227                       # 0x3aad4e03
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	57                              # 0x39
	.4byte	1477657574                      # 0x581343e6
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	58                              # 0x3a
	.4byte	1339127973                      # 0x4fd178a5
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	59                              # 0x3b
	.4byte	2960567906                      # 0xb076ae62
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	60                              # 0x3c
	.4byte	3390076872                      # 0xca1077c8
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	61                              # 0x3d
	.4byte	1543282230                      # 0x5bfc9e36
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	62                              # 0x3e
	.4byte	2934101789                      # 0xaee2d71d
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	63                              # 0x3f
	.4byte	3737986119                      # 0xdecd2447
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	64                              # 0x40
	.4byte	49556427                        # 0x2f42bcb
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	65                              # 0x41
	.4byte	234051526                       # 0xdf357c6
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	66                              # 0x42
	.4byte	2341800126                      # 0x8b9508be
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	67                              # 0x43
	.4byte	3256799948                      # 0xc21ed2cc
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	68                              # 0x44
	.4byte	777295480                       # 0x2e549678
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	69                              # 0x45
	.4byte	14040531                        # 0xd63dd3
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	70                              # 0x46
	.4byte	8047973                         # 0x7acd65
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	71                              # 0x47
	.4byte	719459161                       # 0x2ae21359
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	72                              # 0x48
	.4byte	243358501                       # 0xe815b25
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	73                              # 0x49
	.4byte	3262173932                      # 0xc270d2ec
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	74                              # 0x4a
	.4byte	398910553                       # 0x17c6e459
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	75                              # 0x4b
	.4byte	3354219739                      # 0xc7ed54db
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	76                              # 0x4c
	.4byte	2570308788                      # 0x9933ccb4
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	77                              # 0x4d
	.4byte	982429111                       # 0x3a8eadb7
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	78                              # 0x4e
	.4byte	211491241                       # 0xc9b19a9
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	79                              # 0x4f
	.4byte	1075683319                      # 0x401d9ff7
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	80                              # 0x50
	.4byte	1886352651                      # 0x706f750b
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	81                              # 0x51
	.4byte	248637203                       # 0xed1e713
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	82                              # 0x52
	.4byte	703327087                       # 0x29ebeb6f
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	83                              # 0x53
	.4byte	3690160730                      # 0xdbf3625a
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	84                              # 0x54
	.4byte	787048238                       # 0x2ee9672e
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	85                              # 0x55
	.4byte	1937497967                      # 0x737bdf6f
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	86                              # 0x56
	.4byte	4205062514                      # 0xfaa42972
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	87                              # 0x57
	.4byte	694462539                       # 0x2964a84b
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	88                              # 0x58
	.4byte	85970907                        # 0x51fcfdb
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	89                              # 0x59
	.4byte	3681984728                      # 0xdb76a0d8
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	90                              # 0x5a
	.4byte	3620297642                      # 0xd7c95baa
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	91                              # 0x5b
	.4byte	3394804480                      # 0xca589b00
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	92                              # 0x5c
	.4byte	2119330183                      # 0x7e526987
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	93                              # 0x5d
	.4byte	1963040266                      # 0x75019e0a
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	94                              # 0x5e
	.4byte	1603391838                      # 0x5f91d15e
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	95                              # 0x5f
	.4byte	2340921237                      # 0x8b879f95
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	96                              # 0x60
	.4byte	3028177438                      # 0xb47e521e
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	97                              # 0x61
	.4byte	2265525308                      # 0x87092c3c
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	98                              # 0x62
	.4byte	2598903994                      # 0x9ae820ba
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	99                              # 0x63
	.4byte	139524705                       # 0x850fa61
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	100                             # 0x64
	.4byte	1076410600                      # 0x4028b8e8
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	101                             # 0x65
	.4byte	220237413                       # 0xd208e65
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	102                             # 0x66
	.4byte	3913623866                      # 0xe945293a
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	103                             # 0x67
	.4byte	3453026372                      # 0xcdd10044
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	104                             # 0x68
	.4byte	2321387380                      # 0x8a5d8f74
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	105                             # 0x69
	.4byte	3319939363                      # 0xc5e24123
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	106                             # 0x6a
	.4byte	398991913                       # 0x17c82229
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	107                             # 0x6b
	.4byte	333429647                       # 0x13dfbb8f
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	108                             # 0x6c
	.4byte	3927133990                      # 0xea134f26
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	109                             # 0x6d
	.4byte	1797971294                      # 0x6b2add5e
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	110                             # 0x6e
	.4byte	1622314776                      # 0x60b28f18
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	111                             # 0x6f
	.4byte	1092862330                      # 0x4123c17a
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	112                             # 0x70
	.4byte	2568657322                      # 0x991a99aa
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	113                             # 0x71
	.4byte	2168129897                      # 0x813b0969
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	114                             # 0x72
	.4byte	2890303119                      # 0xac46868f
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	115                             # 0x73
	.4byte	1713332582                      # 0x661f6166
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	116                             # 0x74
	.4byte	2375727721                      # 0x8d9aba69
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	117                             # 0x75
	.4byte	3586767156                      # 0xd5c9b934
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	118                             # 0x76
	.4byte	2191348475                      # 0x829d52fb
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	119                             # 0x77
	.4byte	3910023869                      # 0xe90e3abd
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	120                             # 0x78
	.4byte	4189915105                      # 0xf9bd07e1
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	121                             # 0x79
	.4byte	2527353334                      # 0x96a459f6
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	122                             # 0x7a
	.4byte	3429265923                      # 0xcc667203
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	123                             # 0x7b
	.4byte	1283962724                      # 0x4c87b764
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	124                             # 0x7c
	.4byte	1970290990                      # 0x7570412e
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	125                             # 0x7d
	.4byte	2615950861                      # 0x9bec3e0d
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	126                             # 0x7e
	.4byte	3338450337                      # 0xc6fcb5a1
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	127                             # 0x7f
	.4byte	3971836509                      # 0xecbd6a5d
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	128                             # 0x80
	.4byte	4260339231                      # 0xfdef9e1f
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	129                             # 0x81
	.4byte	4160738226                      # 0xf7ffd3b2
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	130                             # 0x82
	.4byte	1309372079                      # 0x4e0b6eaf
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	131                             # 0x83
	.4byte	3151575564                      # 0xbbd93a0c
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	132                             # 0x84
	.4byte	3938977714                      # 0xeac807b2
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	133                             # 0x85
	.4byte	3228738087                      # 0xc072a227
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	134                             # 0x86
	.4byte	2262837051                      # 0x86e0273b
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	135                             # 0x87
	.4byte	3135705803                      # 0xbae712cb
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	136                             # 0x88
	.4byte	990447104                       # 0x3b090600
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	137                             # 0x89
	.4byte	4061147315                      # 0xf21030b3
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	138                             # 0x8a
	.4byte	2783543715                      # 0xa5e981a3
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	139                             # 0x8b
	.4byte	2471046843                      # 0x93492ebb
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	140                             # 0x8c
	.4byte	403058134                       # 0x18062dd6
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	141                             # 0x8d
	.4byte	260073473                       # 0xf806801
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	142                             # 0x8e
	.4byte	1259876295                      # 0x4b182fc7
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	143                             # 0x8f
	.4byte	2975678116                      # 0xb15d3ea4
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	144                             # 0x90
	.4byte	2579807359                      # 0x99c4bc7f
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	145                             # 0x91
	.4byte	863102422                       # 0x3371e5d6
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	146                             # 0x92
	.4byte	650832017                       # 0x26cae891
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	147                             # 0x93
	.4byte	90061610                        # 0x55e3b2a
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	148                             # 0x94
	.4byte	2446954539                      # 0x91d9902b
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	149                             # 0x95
	.4byte	3598610789                      # 0xd67e7165
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	150                             # 0x96
	.4byte	2351688191                      # 0x8c2be9ff
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	151                             # 0x97
	.4byte	1743478091                      # 0x67eb5d4b
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	152                             # 0x98
	.4byte	2798805217                      # 0xa6d260e1
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	153                             # 0x99
	.4byte	1438161982                      # 0x55b89c3e
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	154                             # 0x9a
	.4byte	273416875                       # 0x104c02ab
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	155                             # 0x9b
	.4byte	2438880600                      # 0x915e5d58
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	156                             # 0x9c
	.4byte	1284541841                      # 0x4c908d91
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	157                             # 0x9d
	.4byte	3593193962                      # 0xd62bc9ea
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	158                             # 0x9e
	.4byte	1755082314                      # 0x689c6e4a
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	159                             # 0x9f
	.4byte	3432612426                      # 0xcc99824a
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	160                             # 0xa0
	.4byte	1404964820                      # 0x53be0fd4
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	161                             # 0xa1
	.4byte	3374828335                      # 0xc927cb2f
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	162                             # 0xa2
	.4byte	3311814731                      # 0xc566484b
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	163                             # 0xa3
	.4byte	413908966                       # 0x18abbfe6
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	164                             # 0xa4
	.4byte	3027808697                      # 0xb478b1b9
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	165                             # 0xa5
	.4byte	540762785                       # 0x203b62a1
	.4byte	2102079853                      # 0x7d4b316d
	.size	__llvm_internal_gcov_emit_function_args.0, 1992

	.type	__llvm_internal_gcov_emit_arcs_args.0,@object # @__llvm_internal_gcov_emit_arcs_args.0
	.p2align	4, 0x0
__llvm_internal_gcov_emit_arcs_args.0:
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.1
	.4byte	5                               # 0x5
	.zero	4
	.8byte	__llvm_gcov_ctr.2
	.4byte	5                               # 0x5
	.zero	4
	.8byte	__llvm_gcov_ctr.3
	.4byte	5                               # 0x5
	.zero	4
	.8byte	__llvm_gcov_ctr.4
	.4byte	5                               # 0x5
	.zero	4
	.8byte	__llvm_gcov_ctr.5
	.4byte	2                               # 0x2
	.zero	4
	.8byte	__llvm_gcov_ctr.6
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.7
	.4byte	2                               # 0x2
	.zero	4
	.8byte	__llvm_gcov_ctr.8
	.4byte	2                               # 0x2
	.zero	4
	.8byte	__llvm_gcov_ctr.9
	.4byte	4                               # 0x4
	.zero	4
	.8byte	__llvm_gcov_ctr.10
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.11
	.4byte	4                               # 0x4
	.zero	4
	.8byte	__llvm_gcov_ctr.12
	.4byte	2                               # 0x2
	.zero	4
	.8byte	__llvm_gcov_ctr.13
	.4byte	7                               # 0x7
	.zero	4
	.8byte	__llvm_gcov_ctr.14
	.4byte	2                               # 0x2
	.zero	4
	.8byte	__llvm_gcov_ctr.15
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.16
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.17
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.18
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.19
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.20
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.21
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.22
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.23
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.24
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.25
	.4byte	5                               # 0x5
	.zero	4
	.8byte	__llvm_gcov_ctr.26
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.27
	.4byte	7                               # 0x7
	.zero	4
	.8byte	__llvm_gcov_ctr.28
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.29
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.30
	.4byte	4                               # 0x4
	.zero	4
	.8byte	__llvm_gcov_ctr.31
	.4byte	4                               # 0x4
	.zero	4
	.8byte	__llvm_gcov_ctr.32
	.4byte	6                               # 0x6
	.zero	4
	.8byte	__llvm_gcov_ctr.33
	.4byte	6                               # 0x6
	.zero	4
	.8byte	__llvm_gcov_ctr.34
	.4byte	6                               # 0x6
	.zero	4
	.8byte	__llvm_gcov_ctr.35
	.4byte	6                               # 0x6
	.zero	4
	.8byte	__llvm_gcov_ctr.36
	.4byte	6                               # 0x6
	.zero	4
	.8byte	__llvm_gcov_ctr.37
	.4byte	6                               # 0x6
	.zero	4
	.8byte	__llvm_gcov_ctr.38
	.4byte	2                               # 0x2
	.zero	4
	.8byte	__llvm_gcov_ctr.39
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.40
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.41
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.42
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.43
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.44
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.45
	.4byte	2                               # 0x2
	.zero	4
	.8byte	__llvm_gcov_ctr.46
	.4byte	6                               # 0x6
	.zero	4
	.8byte	__llvm_gcov_ctr.47
	.4byte	6                               # 0x6
	.zero	4
	.8byte	__llvm_gcov_ctr.48
	.4byte	6                               # 0x6
	.zero	4
	.8byte	__llvm_gcov_ctr.49
	.4byte	4                               # 0x4
	.zero	4
	.8byte	__llvm_gcov_ctr.50
	.4byte	4                               # 0x4
	.zero	4
	.8byte	__llvm_gcov_ctr.51
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.52
	.4byte	2                               # 0x2
	.zero	4
	.8byte	__llvm_gcov_ctr.53
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.54
	.4byte	2                               # 0x2
	.zero	4
	.8byte	__llvm_gcov_ctr.55
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.56
	.4byte	2                               # 0x2
	.zero	4
	.8byte	__llvm_gcov_ctr.57
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.58
	.4byte	5                               # 0x5
	.zero	4
	.8byte	__llvm_gcov_ctr.59
	.4byte	6                               # 0x6
	.zero	4
	.8byte	__llvm_gcov_ctr.60
	.4byte	2                               # 0x2
	.zero	4
	.8byte	__llvm_gcov_ctr.61
	.4byte	2                               # 0x2
	.zero	4
	.8byte	__llvm_gcov_ctr.62
	.4byte	8                               # 0x8
	.zero	4
	.8byte	__llvm_gcov_ctr.63
	.4byte	5                               # 0x5
	.zero	4
	.8byte	__llvm_gcov_ctr.64
	.4byte	6                               # 0x6
	.zero	4
	.8byte	__llvm_gcov_ctr.65
	.4byte	2                               # 0x2
	.zero	4
	.8byte	__llvm_gcov_ctr.66
	.4byte	5                               # 0x5
	.zero	4
	.8byte	__llvm_gcov_ctr.67
	.4byte	2                               # 0x2
	.zero	4
	.8byte	__llvm_gcov_ctr.68
	.4byte	5                               # 0x5
	.zero	4
	.8byte	__llvm_gcov_ctr.69
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.70
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.71
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.72
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.73
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.74
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.75
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.76
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.77
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.78
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.79
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.80
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.81
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.82
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.83
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.84
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.85
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.86
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.87
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.88
	.4byte	5                               # 0x5
	.zero	4
	.8byte	__llvm_gcov_ctr.89
	.4byte	5                               # 0x5
	.zero	4
	.8byte	__llvm_gcov_ctr.90
	.4byte	5                               # 0x5
	.zero	4
	.8byte	__llvm_gcov_ctr.91
	.4byte	2                               # 0x2
	.zero	4
	.8byte	__llvm_gcov_ctr.92
	.4byte	5                               # 0x5
	.zero	4
	.8byte	__llvm_gcov_ctr.93
	.4byte	4                               # 0x4
	.zero	4
	.8byte	__llvm_gcov_ctr.94
	.4byte	4                               # 0x4
	.zero	4
	.8byte	__llvm_gcov_ctr.95
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.96
	.4byte	4                               # 0x4
	.zero	4
	.8byte	__llvm_gcov_ctr.97
	.4byte	5                               # 0x5
	.zero	4
	.8byte	__llvm_gcov_ctr.98
	.4byte	6                               # 0x6
	.zero	4
	.8byte	__llvm_gcov_ctr.99
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.100
	.4byte	8                               # 0x8
	.zero	4
	.8byte	__llvm_gcov_ctr.101
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.102
	.4byte	8                               # 0x8
	.zero	4
	.8byte	__llvm_gcov_ctr.103
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.104
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.105
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.106
	.4byte	6                               # 0x6
	.zero	4
	.8byte	__llvm_gcov_ctr.107
	.4byte	6                               # 0x6
	.zero	4
	.8byte	__llvm_gcov_ctr.108
	.4byte	6                               # 0x6
	.zero	4
	.8byte	__llvm_gcov_ctr.109
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.110
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.111
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.112
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.113
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.114
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.115
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.116
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.117
	.4byte	2                               # 0x2
	.zero	4
	.8byte	__llvm_gcov_ctr.118
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.119
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.120
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.121
	.4byte	4                               # 0x4
	.zero	4
	.8byte	__llvm_gcov_ctr.122
	.4byte	8                               # 0x8
	.zero	4
	.8byte	__llvm_gcov_ctr.123
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.124
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.125
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.126
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.127
	.4byte	7                               # 0x7
	.zero	4
	.8byte	__llvm_gcov_ctr.128
	.4byte	4                               # 0x4
	.zero	4
	.8byte	__llvm_gcov_ctr.129
	.4byte	4                               # 0x4
	.zero	4
	.8byte	__llvm_gcov_ctr.130
	.4byte	8                               # 0x8
	.zero	4
	.8byte	__llvm_gcov_ctr.131
	.4byte	8                               # 0x8
	.zero	4
	.8byte	__llvm_gcov_ctr.132
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.133
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.134
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.135
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.136
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.137
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.138
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.139
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.140
	.4byte	5                               # 0x5
	.zero	4
	.8byte	__llvm_gcov_ctr.141
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.142
	.4byte	5                               # 0x5
	.zero	4
	.8byte	__llvm_gcov_ctr.143
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.144
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.145
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.146
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.147
	.4byte	3                               # 0x3
	.zero	4
	.8byte	__llvm_gcov_ctr.148
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.149
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.150
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.151
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.152
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.153
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.154
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.155
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.156
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.157
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.158
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.159
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.160
	.4byte	4                               # 0x4
	.zero	4
	.8byte	__llvm_gcov_ctr.161
	.4byte	4                               # 0x4
	.zero	4
	.8byte	__llvm_gcov_ctr.162
	.4byte	5                               # 0x5
	.zero	4
	.8byte	__llvm_gcov_ctr.163
	.4byte	1                               # 0x1
	.zero	4
	.8byte	__llvm_gcov_ctr.164
	.4byte	5                               # 0x5
	.zero	4
	.8byte	__llvm_gcov_ctr.165
	.size	__llvm_internal_gcov_emit_arcs_args.0, 2656

	.type	__llvm_internal_gcov_emit_file_info,@object # @__llvm_internal_gcov_emit_file_info
	.p2align	4, 0x0
__llvm_internal_gcov_emit_file_info:
	.8byte	.L__unnamed_1
	.4byte	875575338                       # 0x3430382a
	.4byte	2102079853                      # 0x7d4b316d
	.4byte	166                             # 0xa6
	.zero	4
	.8byte	__llvm_internal_gcov_emit_function_args.0
	.8byte	__llvm_internal_gcov_emit_arcs_args.0
	.size	__llvm_internal_gcov_emit_file_info, 40

	.section	.init_array.0,"aw",@init_array
	.p2align	3, 0x0
	.8byte	__llvm_gcov_init
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
	.8byte	-5001490222628474638            # 0xba9723243ca3f0f2
	.8byte	24                              # 0x18
	.8byte	.L__profc_make_ti-.L__profd_make_ti
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-8857068571906375875            # 0x85155f0f843e7f3d
	.8byte	24                              # 0x18
	.8byte	.L__profc_make_tu-.L__profd_make_tu
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-306081897096246147             # 0xfbc09422e3668c7d
	.8byte	-4061701397412038936            # 0xc7a1f0194f8c36e8
	.8byte	.L__profc_memmove-.L__profd_memmove
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-1590863763861247346            # 0xe9ec1dd5e5026a8e
	.8byte	1189690007454808                # 0x43a044a498458
	.8byte	.L__profc_memccpy-.L__profd_memccpy
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	5708666158622859656             # 0x4f3941a01e026188
	.8byte	4538308109                      # 0x10e81160d
	.8byte	.L__profc_memchr-.L__profd_memchr
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-4679550853048924350            # 0xbf0ee54adfa48742
	.8byte	4538045965                      # 0x10e7d160d
	.8byte	.L__profc_memcmp-.L__profd_memcmp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	3893303423671325810             # 0x3607cad612bdd472
	.8byte	17496                           # 0x4458
	.8byte	.L__profc_memcpy-.L__profd_memcpy
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-548334422562728352             # 0xf863ecbf75079660
	.8byte	9516882138200                   # 0x8a7d2611458
	.8byte	.L__profc_memrchr-.L__profd_memrchr
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-2741574704065975695            # 0xd9f3f85506f36a71
	.8byte	17496                           # 0x4458
	.8byte	.L__profc_memset-.L__profd_memset
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	4454833295779690053             # 0x3dd2bf47a087f645
	.8byte	17496                           # 0x4458
	.8byte	.L__profc_stpcpy-.L__profd_stpcpy
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	5039208642683934005             # 0x45eedd8fc8411535
	.8byte	70911064                        # 0x43a0458
	.8byte	.L__profc_strchrnul-.L__profd_strchrnul
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-5671522429266412413            # 0xb14ab4664bea3c83
	.8byte	13914928649304                  # 0xca7d2611458
	.8byte	.L__profc_strchr-.L__profd_strchr
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	1013198891307352868             # 0xe0f9b060331c324
	.8byte	70906968                        # 0x439f458
	.8byte	.L__profc_strcmp-.L__profd_strcmp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	2965136410638013299             # 0x292647db02a7d373
	.8byte	17496                           # 0x4458
	.8byte	.L__profc_strlen-.L__profd_strlen
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-6058495834680104774            # 0xabebe6233cb568ba
	.8byte	7207353986825238351             # 0x6405aa43cb36b74f
	.8byte	.L__profc_strncmp-.L__profd_strncmp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	9                               # 0x9
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-1619950660557759641            # 0xe984c77503cb9b67
	.8byte	18193                           # 0x4711
	.8byte	.L__profc_swab-.L__profd_swab
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-1429966999967671460            # 0xec27bc96fe655b5c
	.8byte	1563                            # 0x61b
	.8byte	.L__profc_isalpha-.L__profd_isalpha
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-4792250000779744687            # 0xbd7e8203c4a86a51
	.8byte	1562                            # 0x61a
	.8byte	.L__profc_isascii-.L__profd_isascii
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	2465200613623135234             # 0x223626e59b14fc02
	.8byte	6354911                         # 0x60f7df
	.8byte	.L__profc_isblank-.L__profd_isblank
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	8897732069425577183             # 0x7b7b182cc8b67cdf
	.8byte	6354655                         # 0x60f6df
	.8byte	.L__profc_iscntrl-.L__profd_iscntrl
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	3483985654529092453             # 0x30599a7e6cc36b65
	.8byte	1563                            # 0x61b
	.8byte	.L__profc_isdigit-.L__profd_isdigit
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-127227288456547236             # 0xfe3bff7489cfb45c
	.8byte	1563                            # 0x61b
	.8byte	.L__profc_isgraph-.L__profd_isgraph
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	7501983819047161697             # 0x681c66894508cf61
	.8byte	1563                            # 0x61b
	.8byte	.L__profc_islower-.L__profd_islower
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-7275761640889424986            # 0x9b074d56145f63a6
	.8byte	1563                            # 0x61b
	.8byte	.L__profc_isprint-.L__profd_isprint
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	9032360604355461395             # 0x7d59641d39d70113
	.8byte	6354907                         # 0x60f7db
	.8byte	.L__profc_isspace-.L__profd_isspace
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	4174714232255583053             # 0x39ef9079c45c934d
	.8byte	1563                            # 0x61b
	.8byte	.L__profc_isupper-.L__profd_isupper
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	7000259844681188668             # 0x6125eb3d61a7453c
	.8byte	106600273393371                 # 0x60f3cf6db6db
	.8byte	.L__profc_iswcntrl-.L__profd_iswcntrl
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	8583753245428091608             # 0x771f9e1919590ad8
	.8byte	1563                            # 0x61b
	.8byte	.L__profc_iswdigit-.L__profd_iswdigit
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-719555261641779946             # 0xf603a04d49941516
	.8byte	-2566119187471392224            # 0xdc635031e3742220
	.8byte	.L__profc_iswprint-.L__profd_iswprint
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	10                              # 0xa
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	624771703830219826              # 0x8aba28df0840c32
	.8byte	6354651                         # 0x60f6db
	.8byte	.L__profc_iswxdigit-.L__profd_iswxdigit
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	4548159975983457080             # 0x3f1e4f66a624a338
	.8byte	24                              # 0x18
	.8byte	.L__profc_toascii-.L__profd_toascii
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-3545869933759497925            # 0xceca8a150286f93b
	.8byte	7369846577040809592             # 0x6646f46a29a55e78
	.8byte	.L__profc_fdim-.L__profd_fdim
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-1547869627280940664            # 0xea84dcc6634da188
	.8byte	7369846577040809592             # 0x6646f46a29a55e78
	.8byte	.L__profc_fdimf-.L__profd_fdimf
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-2423801789625842334            # 0xde5ced1d3b654562
	.8byte	3977842549302548673             # 0x373422b91b9cd8c1
	.8byte	.L__profc_fmax-.L__profd_fmax
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	6                               # 0x6
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-5134209104457391460            # 0xb8bfa0058e3da29c
	.8byte	3977842549302548673             # 0x373422b91b9cd8c1
	.8byte	.L__profc_fmaxf-.L__profd_fmaxf
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	6                               # 0x6
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-3138580006960380340            # 0xd471861cd1fbc64c
	.8byte	3977842549302548673             # 0x373422b91b9cd8c1
	.8byte	.L__profc_fmaxl-.L__profd_fmaxl
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	6                               # 0x6
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	965427315610335377              # 0xd65e3074b69b891
	.8byte	3977842549302548673             # 0x373422b91b9cd8c1
	.8byte	.L__profc_fmin-.L__profd_fmin
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	6                               # 0x6
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	7710199602704325723             # 0x6b0021b0328c9c5b
	.8byte	3977842549302548673             # 0x373422b91b9cd8c1
	.8byte	.L__profc_fminf-.L__profd_fminf
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	6                               # 0x6
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	2487418697363824514             # 0x2285162058091f82
	.8byte	3977842549302548673             # 0x373422b91b9cd8c1
	.8byte	.L__profc_fminl-.L__profd_fminl
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	6                               # 0x6
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-6158745991357604691            # 0xaa87bd26bb44dcad
	.8byte	17496                           # 0x4458
	.8byte	.L__profc_l64a-.L__profd_l64a
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-2085616837322687880            # 0xe30e668959ceba78
	.8byte	0                               # 0x0
	.8byte	.L__profc_srand-.L__profd_srand
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	7206085285791387956             # 0x6401286350c3d134
	.8byte	24                              # 0x18
	.8byte	.L__profc_rand-.L__profd_rand
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-5080349535175464041            # 0xb97ef903bd0bab97
	.8byte	45786906010769                  # 0x29a49844a491
	.8byte	.L__profc_insque-.L__profd_insque
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-7214219538753974334            # 0x9be1f18d54e30fc2
	.8byte	11043906705                     # 0x29244a491
	.8byte	.L__profc_remque-.L__profd_remque
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-7032153342590886098            # 0x9e68c5caf8cb5f2e
	.8byte	1245367951758424                # 0x46ca7d2611458
	.8byte	.L__profc_lsearch-.L__profd_lsearch
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-6350214982902907667            # 0xa7df811e30b57ced
	.8byte	1245367951758424                # 0x46ca7d2611458
	.8byte	.L__profc_lfind-.L__profd_lfind
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-238465663743841031             # 0xfcb0ccbe056bacf9
	.8byte	99164                           # 0x1835c
	.8byte	.L__profc_abs-.L__profd_abs
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-6544211519801369139            # 0xa52e4a4ba3385dcd
	.8byte	638206505195021                 # 0x244720809160d
	.8byte	.L__profc_atoi-.L__profd_atoi
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	8236175749196770609             # 0x724cc634ee8f6d31
	.8byte	638206505195021                 # 0x244720809160d
	.8byte	.L__profc_atol-.L__profd_atol
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	3653807471789013357             # 0x32b4ee8971a6f96d
	.8byte	638206505195021                 # 0x244720809160d
	.8byte	.L__profc_atoll-.L__profd_atoll
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	8750110911118262334             # 0x796ea3837a79403e
	.8byte	-852542619444921222             # 0xf42b29012c1abc7a
	.8byte	.L__profc_bsearch-.L__profd_bsearch
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	1417097008757763708             # 0x13aa8a38ab466e7c
	.8byte	1259382983000112142             # 0x117a3a2689e4bc0e
	.8byte	.L__profc_bsearch_r-.L__profd_bsearch_r
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	5497092892325669176             # 0x4c4998dc58656938
	.8byte	24                              # 0x18
	.8byte	.L__profc_div-.L__profd_div
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	8946668544180752025             # 0x7c28f3a3b30e0e99
	.8byte	99164                           # 0x1835c
	.8byte	.L__profc_imaxabs-.L__profd_imaxabs
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-3928426486442246988            # 0xc97b6cec9d5fbcb4
	.8byte	24                              # 0x18
	.8byte	.L__profc_imaxdiv-.L__profd_imaxdiv
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-7118441263952323418            # 0x9d363762b3a39ca6
	.8byte	99164                           # 0x1835c
	.8byte	.L__profc_labs-.L__profd_labs
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	7149836041034155625             # 0x633951ff74204669
	.8byte	24                              # 0x18
	.8byte	.L__profc_ldiv-.L__profd_ldiv
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	7684789126781046466             # 0x6aa5dafebb918ec2
	.8byte	99164                           # 0x1835c
	.8byte	.L__profc_llabs-.L__profd_llabs
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-5329156747615108898            # 0xb60b082c520680de
	.8byte	24                              # 0x18
	.8byte	.L__profc_lldiv-.L__profd_lldiv
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-2279810736707830048            # 0xe05c7c36c3687ee0
	.8byte	4538308109                      # 0x10e81160d
	.8byte	.L__profc_wcschr-.L__profd_wcschr
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-3710185595167438704            # 0xcc82c5dbcd460890
	.8byte	1188468208228060                # 0x438e7d160d6dc
	.8byte	.L__profc_wcscmp-.L__profd_wcscmp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-8381368184235816342            # 0x8baf660af6dd0a6a
	.8byte	9304                            # 0x2458
	.8byte	.L__profc_wcscpy-.L__profd_wcscpy
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	3988408974905483574             # 0x3759acd4c838a136
	.8byte	17496                           # 0x4458
	.8byte	.L__profc_wcslen-.L__profd_wcslen
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-5425166749483878188            # 0xb4b5ef95c9c0b8d4
	.8byte	6710790269995215964             # 0x5d218431fd366c5c
	.8byte	.L__profc_wcsncmp-.L__profd_wcsncmp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	10                              # 0xa
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-150916099757221660             # 0xfde7d69b5b1558e4
	.8byte	4538308109                      # 0x10e81160d
	.8byte	.L__profc_wmemchr-.L__profd_wmemchr
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	5386172057678365784             # 0x4abf86f3050dc458
	.8byte	1189621521503964                # 0x439f45834d6dc
	.8byte	.L__profc_wmemcmp-.L__profd_wmemcmp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	6                               # 0x6
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	7326050423799855187             # 0x65ab5c0b9d30b853
	.8byte	9304                            # 0x2458
	.8byte	.L__profc_wmemcpy-.L__profd_wmemcpy
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-4659407939446788683            # 0xbf56752a69a3adb5
	.8byte	-1500206092990891740            # 0xeb2e3281c166b924
	.8byte	.L__profc_wmemmove-.L__profd_wmemmove
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-8291142148468431281            # 0x8ceff224f245264f
	.8byte	9304                            # 0x2458
	.8byte	.L__profc_wmemset-.L__profd_wmemset
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-8407331144368071880            # 0x8b5328de3edcdb38
	.8byte	5234109875325077019             # 0x48a34b333a1d861b
	.8byte	.L__profc_bcopy-.L__profd_bcopy
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	4714666614722164144             # 0x416ddc4e84e875b0
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotl64-.L__profd_rotl64
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-8427642833712987187            # 0x8b0aff7e8aabc3cd
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotr64-.L__profd_rotr64
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	6417704780586152324             # 0x5910447ed829f184
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotl32-.L__profd_rotl32
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-5668908084823466940            # 0xb153fe21cbc1dc44
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotr32-.L__profd_rotr32
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-3686623714176605670            # 0xccd67b43b7f8e21a
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotl_sz-.L__profd_rotl_sz
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	3415499704483829380             # 0x2f664ae29835d684
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotr_sz-.L__profd_rotr_sz
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	7327166975465201445             # 0x65af538b0e939f25
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotl16-.L__profd_rotl16
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	5274763753728838268             # 0x4933b9afe71d0a7c
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotr16-.L__profd_rotr16
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	4408423234350850624             # 0x3d2ddd93270fa240
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotl8-.L__profd_rotl8
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-6535801773217052896            # 0xa54c2aea59078720
	.8byte	24                              # 0x18
	.8byte	.L__profc_rotr8-.L__profd_rotr8
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-8870828063230114195            # 0x84e47ce04b9a466d
	.8byte	24                              # 0x18
	.8byte	.L__profc_bswap_16-.L__profd_bswap_16
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	7304833549461180700             # 0x655ffb691afd511c
	.8byte	24                              # 0x18
	.8byte	.L__profc_bswap_32-.L__profd_bswap_32
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	2873856403134720854             # 0x27e1fd2c1c53ab56
	.8byte	24                              # 0x18
	.8byte	.L__profc_bswap_64-.L__profd_bswap_64
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	9222170723057548859             # 0x7ffbbb6955da3e3b
	.8byte	19458657686616                  # 0x11b292611458
	.8byte	.L__profc_ffs-.L__profd_ffs
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	65216057573358521               # 0xe7b1a8a94fbbb9
	.8byte	2952352215704664                # 0xa7d261111a458
	.8byte	.L__profc_libiberty_ffs-.L__profd_libiberty_ffs
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	6535010584615638394             # 0x5ab10580b36ed57a
	.8byte	6354652                         # 0x60f6dc
	.8byte	.L__profc_gl_isinff-.L__profd_gl_isinff
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-9165907066207032774            # 0x80cc28161a7caa3a
	.8byte	6354652                         # 0x60f6dc
	.8byte	.L__profc_gl_isinfd-.L__profd_gl_isinfd
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	4731159788068304891             # 0x41a874c2af6c77fb
	.8byte	6354652                         # 0x60f6dc
	.8byte	.L__profc_gl_isinfl-.L__profd_gl_isinfl
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-3858125999267273921            # 0xca752ed84af9a33f
	.8byte	0                               # 0x0
	.8byte	.L__profc__Qp_itoq-.L__profd__Qp_itoq
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-2560632889718296859            # 0xdc76cdf42028aee5
	.8byte	-2048372819454505383            # 0xe392b7c600d94e59
	.8byte	.L__profc_ldexpf-.L__profd_ldexpf
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	8                               # 0x8
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-240549059163932437             # 0xfca965e7b97ab8eb
	.8byte	-2048372819454505383            # 0xe392b7c600d94e59
	.8byte	.L__profc_ldexp-.L__profd_ldexp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	8                               # 0x8
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-5097262943286299417            # 0xb942e25c0aa874e7
	.8byte	-2048372819454505383            # 0xe392b7c600d94e59
	.8byte	.L__profc_ldexpl-.L__profd_ldexpl
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	8                               # 0x8
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-8368025376422999318            # 0x8bdecd417eda4aea
	.8byte	1164376                         # 0x11c458
	.8byte	.L__profc_memxor-.L__profd_memxor
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-3582483947543505905            # 0xce4875d49d21540f
	.8byte	76123606467028056               # 0x10e72044a7d2458
	.8byte	.L__profc_strncat-.L__profd_strncat
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	517590790318988421              # 0x72eda14dbfa1c85
	.8byte	4537021528                      # 0x10e6d7458
	.8byte	.L__profc_strnlen-.L__profd_strnlen
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-6867074718569872870            # 0xa0b33fed4193c21a
	.8byte	-4444802448421279214            # 0xc250e3b905102a12
	.8byte	.L__profc_strpbrk-.L__profd_strpbrk
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	5307837722043833871             # 0x49a93a493bd75e0f
	.8byte	217420731480                    # 0x329f491458
	.8byte	.L__profc_strrchr-.L__profd_strrchr
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	3560562421867190603             # 0x3169a8a873ff994b
	.8byte	-7798267876297541628            # 0x93c6fcaef9f1f804
	.8byte	.L__profc_strstr-.L__profd_strstr
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-9076603418344796971            # 0x82096d47ea764cd5
	.8byte	4200982705386070127             # 0x3a4ce3834618a06f
	.8byte	.L__profc_copysign-.L__profd_copysign
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-7485463843177831536            # 0x981e4a4b585ae390
	.8byte	5508063777036862020             # 0x4c7092d27e7a8244
	.8byte	.L__profc_memmem-.L__profd_memmem
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-722907995699078206             # 0xf5f7b7020f111bc2
	.8byte	24                              # 0x18
	.8byte	.L__profc_mempcpy-.L__profd_mempcpy
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-2997169543230593137            # 0xd667ea2e1c1ee78f
	.8byte	-2373782428686282824            # 0xdf0ea1753c170fb8
	.8byte	.L__profc_frexp-.L__profd_frexp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	9                               # 0x9
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	3987271357918321816             # 0x3755a22cafcf9c98
	.8byte	2320045144                      # 0x8a491458
	.8byte	.L__profc___muldi3-.L__profd___muldi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	4670832108574850701             # 0x40d2210e3d17be8d
	.8byte	842736872197088594              # 0xbb200b8626e6552
	.8byte	.L__profc_udivmodsi4-.L__profd_udivmodsi4
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	9                               # 0x9
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-7858138078702729622            # 0x92f2490d36f4066a
	.8byte	187824153796641880              # 0x29b49129f498458
	.8byte	.L__profc___clrsbqi2-.L__profd___clrsbqi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-1533375985051215657            # 0xeab85aaa6fe858d7
	.8byte	187824153796641880              # 0x29b49129f498458
	.8byte	.L__profc___clrsbdi2-.L__profd___clrsbdi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	5127670123023436031             # 0x472924cf303208ff
	.8byte	2320045144                      # 0x8a491458
	.8byte	.L__profc___mulsi3-.L__profd___mulsi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	1458405851566781960             # 0x143d4c6520fd3608
	.8byte	-6411111704588201945            # 0xa70727df48abd027
	.8byte	.L__profc___cmovd-.L__profd___cmovd
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-1240290101804783090            # 0xeec99ab9477e2a0e
	.8byte	3130117398598530023             # 0x2b706930a0bc33e7
	.8byte	.L__profc___cmovh-.L__profd___cmovh
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-6631700889337257300            # 0xa3f7772d6a6922ac
	.8byte	-6411111704588201945            # 0xa70727df48abd027
	.8byte	.L__profc___cmovw-.L__profd___cmovw
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	4130297501716739761             # 0x3951c3b1ce8276b1
	.8byte	24                              # 0x18
	.8byte	.L__profc___modi-.L__profd___modi
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-3793169221884876252            # 0xcb5bf4b0949b6a24
	.8byte	24                              # 0x18
	.8byte	.L__profc___uitod-.L__profd___uitod
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	2684105554667313846             # 0x253fdbc7ed991ab6
	.8byte	24                              # 0x18
	.8byte	.L__profc___uitof-.L__profd___uitof
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	3995277539005434566             # 0x377213c0fb840ac6
	.8byte	24                              # 0x18
	.8byte	.L__profc___ulltod-.L__profd___ulltod
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-1906554817873249395            # 0xe58a8e7e97dafb8d
	.8byte	24                              # 0x18
	.8byte	.L__profc___ulltof-.L__profd___ulltof
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	6154071623751134202             # 0x5567a7893fff6bfa
	.8byte	24                              # 0x18
	.8byte	.L__profc___umodi-.L__profd___umodi
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-9221703320275173474            # 0x8005edb05af53f9e
	.8byte	19458657162328                  # 0x11b292591458
	.8byte	.L__profc___clzhi2-.L__profd___clzhi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-1569202989881991136            # 0xea391231d79a6020
	.8byte	19458657162328                  # 0x11b292591458
	.8byte	.L__profc___ctzhi2-.L__profd___ctzhi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-7800469359816066749            # 0x93bf2a7226d83943
	.8byte	11245552728                     # 0x29e498458
	.8byte	.L__profc___fixunssfsi-.L__profd___fixunssfsi
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	2                               # 0x2
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	1203893203113466329             # 0x10b5167d5f15d9d9
	.8byte	304041497688                    # 0x46ca491458
	.8byte	.L__profc___parityhi2-.L__profd___parityhi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	3943219574947026310             # 0x36b9214fb4159586
	.8byte	304041497688                    # 0x46ca491458
	.8byte	.L__profc___popcounthi2-.L__profd___popcounthi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-3976353352410196972            # 0xc8d127b190281414
	.8byte	171971253336                    # 0x280a491458
	.8byte	.L__profc___mulsi3_iq2000-.L__profd___mulsi3_iq2000
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	2775651425054705869             # 0x26851843dab148cd
	.8byte	-6210685127595396365            # 0xa9cf36c835dff2f3
	.8byte	.L__profc___mulsi3_lm32-.L__profd___mulsi3_lm32
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-6720389007632434094            # 0xa2bc61cdbfa0fc52
	.8byte	842736872197088594              # 0xbb200b8626e6552
	.8byte	.L__profc___udivmodsi4-.L__profd___udivmodsi4
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	9                               # 0x9
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	6399771733438470391             # 0x58d08e7bef2f98f7
	.8byte	1352614535537600836             # 0x12c573c0ecbfa944
	.8byte	.L__profc___mspabi_cmpf-.L__profd___mspabi_cmpf
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-5775354270414500759            # 0xafd9d1e3e3e88c69
	.8byte	1352614535537600836             # 0x12c573c0ecbfa944
	.8byte	.L__profc___mspabi_cmpd-.L__profd___mspabi_cmpd
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-359228324547500507             # 0xfb03c3bdfa166625
	.8byte	24                              # 0x18
	.8byte	.L__profc___mspabi_mpysll-.L__profd___mspabi_mpysll
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	6629829186354316853             # 0x5c01e284c62a8635
	.8byte	24                              # 0x18
	.8byte	.L__profc___mspabi_mpyull-.L__profd___mspabi_mpyull
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-4671748085078636676            # 0xbf2a9dde5cc6c77c
	.8byte	-5374843387156864121            # 0xb568b86aa1286387
	.8byte	.L__profc___mulhi3-.L__profd___mulhi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	7                               # 0x7
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	5631431475223784324             # 0x4e26dd1711aaeb84
	.8byte	510575534943447681              # 0x715edbe6f4f2a81
	.8byte	.L__profc___divsi3-.L__profd___divsi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-8995696579390192574            # 0x8328dd9f4e404442
	.8byte	2121116644152358499             # 0x1d6fb85985deb663
	.8byte	.L__profc___modsi3-.L__profd___modsi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	4                               # 0x4
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	2241631039268115874             # 0x1f1bdf8db510d5a2
	.8byte	842736872197088594              # 0xbb200b8626e6552
	.8byte	.L__profc___udivmodhi4-.L__profd___udivmodhi4
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	9                               # 0x9
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-1484205535638993157            # 0xeb670aedd291c6fb
	.8byte	842736872197088594              # 0xbb200b8626e6552
	.8byte	.L__profc___udivmodsi4_libgcc-.L__profd___udivmodsi4_libgcc
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	9                               # 0x9
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	3719210884952086607             # 0x339d4a983a55d84f
	.8byte	185294818348438616              # 0x2924ca7d2611458
	.8byte	.L__profc___ashldi3-.L__profd___ashldi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	8422580559269035854             # 0x74e30464d7577f4e
	.8byte	185294818348438616              # 0x2924ca7d2611458
	.8byte	.L__profc___ashlti3-.L__profd___ashlti3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-1855717345837424946            # 0xe63f2ae7edd45ece
	.8byte	185294818348438616              # 0x2924ca7d2611458
	.8byte	.L__profc___ashrdi3-.L__profd___ashrdi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-1576641649180751463            # 0xea1ea4c6027ec999
	.8byte	185294818348438616              # 0x2924ca7d2611458
	.8byte	.L__profc___ashrti3-.L__profd___ashrti3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	9149352740892555196             # 0x7ef907d7ada5b7bc
	.8byte	24                              # 0x18
	.8byte	.L__profc___bswapdi2-.L__profd___bswapdi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-3374945843358245974            # 0xd129c8a2fe735baa
	.8byte	24                              # 0x18
	.8byte	.L__profc___bswapsi2-.L__profd___bswapsi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	1382681549752930563             # 0x1330458b32829103
	.8byte	33814345247                     # 0x7df7df61f
	.8byte	.L__profc___clzsi2-.L__profd___clzsi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-1806615119558762125            # 0xe6ed9d1ee0d9a173
	.8byte	2008                            # 0x7d8
	.8byte	.L__profc___clzti2-.L__profd___clzti2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-5499644794300757496            # 0xb3ad5632ace08a08
	.8byte	-7406659272189927428            # 0x993642a254c41ffc
	.8byte	.L__profc___cmpdi2-.L__profd___cmpdi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	7067747365298492588             # 0x6215aec83ed1d4ac
	.8byte	24                              # 0x18
	.8byte	.L__profc___aeabi_lcmp-.L__profd___aeabi_lcmp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-8389943187845644472            # 0x8b90ef1f5ac07f48
	.8byte	-7406659272189927428            # 0x993642a254c41ffc
	.8byte	.L__profc___cmpti2-.L__profd___cmpti2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-5501728155980453225            # 0xb3a5ef643c052a97
	.8byte	33814345247                     # 0x7df7df61f
	.8byte	.L__profc___ctzsi2-.L__profd___ctzsi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	7226039699906943586             # 0x64480cd265d2da62
	.8byte	2008                            # 0x7d8
	.8byte	.L__profc___ctzti2-.L__profd___ctzti2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	7347651670313848928             # 0x65f81a43be5cd060
	.8byte	-6109625065311516695            # 0xab36405f8f48c7e9
	.8byte	.L__profc___ffsti2-.L__profd___ffsti2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	10441766047587925               # 0x2518bb1c181e55
	.8byte	185294818348438616              # 0x2924ca7d2611458
	.8byte	.L__profc___lshrdi3-.L__profd___lshrdi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-8202552090810439010            # 0x8e2aae55179b2a9e
	.8byte	185294818348438616              # 0x2924ca7d2611458
	.8byte	.L__profc___lshrti3-.L__profd___lshrti3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	3                               # 0x3
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	4756674255824047264             # 0x42031a08a2a34ca0
	.8byte	24                              # 0x18
	.8byte	.L__profc___muldsi3-.L__profd___muldsi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-737717619142303851             # 0xf5c319bbe679df95
	.8byte	24                              # 0x18
	.8byte	.L__profc___muldi3_compiler_rt-.L__profd___muldi3_compiler_rt
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	373830907859946247              # 0x5301d3ae50dcb07
	.8byte	24                              # 0x18
	.8byte	.L__profc___mulddi3-.L__profd___mulddi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	8967568818272694478             # 0x7c733453f80370ce
	.8byte	24                              # 0x18
	.8byte	.L__profc___multi3-.L__profd___multi3
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-2796404983763388037            # 0xd9312c7bb6a6b97b
	.8byte	24                              # 0x18
	.8byte	.L__profc___negdi2-.L__profd___negdi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	8691511294418398176             # 0x789e7379011aabe0
	.8byte	24                              # 0x18
	.8byte	.L__profc___negti2-.L__profd___negti2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-5102883611502574357            # 0xb92eea643e3a04eb
	.8byte	24                              # 0x18
	.8byte	.L__profc___paritydi2-.L__profd___paritydi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-7527016531061130461            # 0x978aaa58479bbb23
	.8byte	24                              # 0x18
	.8byte	.L__profc___parityti2-.L__profd___parityti2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	8495812714014201054             # 0x75e730a6911054de
	.8byte	24                              # 0x18
	.8byte	.L__profc___paritysi2-.L__profd___paritysi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	4342496508124198892             # 0x3c43a5910d1df7ec
	.8byte	24                              # 0x18
	.8byte	.L__profc___popcountdi2-.L__profd___popcountdi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-2149276146439341705            # 0xe22c3cbb6f433977
	.8byte	24                              # 0x18
	.8byte	.L__profc___popcountsi2-.L__profd___popcountsi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-26294454666068629              # 0xffa295553210fd6b
	.8byte	24                              # 0x18
	.8byte	.L__profc___popcountti2-.L__profd___popcountti2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-1752541073601039051            # 0xe7adb92dcdba7535
	.8byte	-4868838055443737378            # 0xbc6e6995b45f54de
	.8byte	.L__profc___powidf2-.L__profd___powidf2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-3807360110918407144            # 0xcb298a26c0b76c18
	.8byte	-4868838055443737378            # 0xbc6e6995b45f54de
	.8byte	.L__profc___powisf2-.L__profd___powisf2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	-2044349310657886323            # 0xe3a10322256c078d
	.8byte	-7406659272189927428            # 0x993642a254c41ffc
	.8byte	.L__profc___ucmpdi2-.L__profd___ucmpdi2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	448670595368434735              # 0x639ff8782193c2f
	.8byte	24                              # 0x18
	.8byte	.L__profc___aeabi_ulcmp-.L__profd___aeabi_ulcmp
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	1                               # 0x1
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
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
	.8byte	2719998967855154749             # 0x25bf60a66c6f863d
	.8byte	-7406659272189927428            # 0x993642a254c41ffc
	.8byte	.L__profc___ucmpti2-.L__profd___ucmpti2
	.8byte	0                               # 0x0
	.8byte	0
	.8byte	0
	.4byte	5                               # 0x5
	.zero	6
	.zero	2
	.4byte	0                               # 0x0
	.size	.L__profd___ucmpti2, 64

	.type	.L__llvm_prf_nm,@object         # @__llvm_prf_nm
	.section	__llvm_prf_names,"aR",@progbits,unique,1
.L__llvm_prf_nm:
	.ascii	"\247\013\315\004x\332]\223\013n\343 \020\206\305\215\272MU\365\032{\002\013\033\210G\035\f\001\\\222\236~\347\201\363X)\342\373\347\347\345\031&\321~\373\251\201\211\302\335D\037c\372\361\314e\3117\341Z\0041\013\324,\303\255\276\231\3322\273\265\261\271\3558\224\2006\021\320o\214M\302ng\003\325b^-\263.\000\304\031\355\366M\\6ZNtp\206F<\027\233W\"\246\356\0131\027\330\330\257\331.\236\270\347,~?6\366cg?\226\366\253Z-\351e\301A\224!\230\020\355U\006\225H#l2\004\031\321\340\347\2075\265\330\315\031\031`\253\227\335\233\342#\003\253\267\224\253\301\0004g\347jlK\300\003\312\200f\036+\006\247b\034\374\030\240\313x5\223c\344\000E\251\024\335\227\312udP\341\030Tf\002\227\223 \345\354\343\205\372x\242>\336\250\037/\331\307+\315K\"\273\244F\0311\212\002O\357\022)p\252\277\022\016\342\237O\t\025\370%\301\027%\323m\236\310TA{U\320\221!\320\327\303\f\263/\3556qt\306\t*\0254\334\225\273+4\323\337<AK\027\312\336_sP\350\210\334`\327T\264ul\023\216V\312s\371f\036\215F?\303\tV8o\322\304>2\2441C\341#\247)\356T\325\223\331\251\2641\271\n\037\344-X\352|\201\367C:\221\264\262\322J\362\250\204np\035\354\274 9 \354\364\345n00\021\207\301B\234\261r\301\337UoiC\004\270\356[\255\241\362t\266\005\332M'r\312K\332\267\266>}\312\004\227\367\267\267\267G\214\361\304\263/\271D\372O\314@\337\230\303K\344\036Q\244\nQS>\307\273\306;\256\2221\035\250\251\313\261\247\307\035\253\334\361\270p\242W>/\013y\266\256RXU\355P\345\356\025\365\244G\264\300\"\353(\373\357]4\025q\254\262\236\277\021\271\255\305mG\005\353!\324\241.S\201\367[\361~+\277z\275+*\335\222b\006\364e*m\230\356\230\326\035\233?\353\375$\364\\}\036\367\244\237\375\372\362l\356%z\235\033\273R\007\027\016UE\355\377%\275\217\254wM\373\037[\370\006\333"
	.size	.L__llvm_prf_nm, 593

	.ident	"clang version 19.1.5 (Fedora 19.1.5-1.fc41)"
	.section	".note.GNU-stack","",@progbits
