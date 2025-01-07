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
	st %s0, 24(, %s11)
	st %s1, 16(, %s11)
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
	st %s0, 24(, %s11)
	st %s1, 16(, %s11)
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
	br.l .LBB2_8
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB2_11
	br.l .LBB2_9
.LBB2_9:                                #   in Loop: Header=BB2_8 Depth=1
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
	br.l .LBB2_12
.LBB2_12:
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
	brge.l.t %s11, %s8, .LBB3_11
# %bb.10:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB3_11:
	st %s2, 16(, %s11)                      # 8-byte Folded Spill
	or %s2, 0, %s0
	ld %s0, 16(, %s11)                      # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s2, 64(, %s11)
	st %s1, 56(, %s11)
	stl %s0, 52(, %s11)
	st %s3, 40(, %s11)
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
	breq.l 0, %s0, .LBB3_3
	br.l .LBB3_2
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
	ld %s0, 24(, %s11)
	ld1b.zx %s0, (, %s0)
	ld %s1, 32(, %s11)
	st1b %s0, (, %s1)
	ldl.sx %s1, 52(, %s11)
	cmps.w.sx %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.ne %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB3_3
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	ldl.sx %s1, 12(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB3_6
	br.l .LBB3_4
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	br.l .LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
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
.LBB3_6:
	ld %s0, 40(, %s11)
	breq.l 0, %s0, .LBB3_8
	br.l .LBB3_7
.LBB3_7:
	ld %s0, 32(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 72(, %s11)
	br.l .LBB3_9
.LBB3_8:
	or %s0, 0, (0)1
	st %s0, 72(, %s11)
	br.l .LBB3_9
.LBB3_9:
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
	brge.l.t %s11, %s8, .LBB4_11
# %bb.10:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB4_11:
	st %s1, 24(, %s11)                      # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 24(, %s11)                      # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s1, 56(, %s11)
	stl %s0, 52(, %s11)
	st %s2, 40(, %s11)
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
	breq.l 0, %s0, .LBB4_3
	br.l .LBB4_2
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	ld %s0, 32(, %s11)
	ld1b.zx %s0, (, %s0)
	ldl.sx %s1, 52(, %s11)
	cmps.w.sx %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.ne %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 20(, %s11)                     # 4-byte Folded Spill
	br.l .LBB4_3
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	ldl.sx %s1, 20(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB4_6
	br.l .LBB4_4
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	br.l .LBB4_5
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	ld %s0, 32(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 32(, %s11)
	ld %s0, 40(, %s11)
	lea %s0, -1(, %s0)
	st %s0, 40(, %s11)
	br.l .LBB4_1
.LBB4_6:
	ld %s0, 40(, %s11)
	breq.l 0, %s0, .LBB4_8
	br.l .LBB4_7
.LBB4_7:
	ld %s0, 32(, %s11)
	st %s0, 8(, %s11)                       # 8-byte Folded Spill
	br.l .LBB4_9
.LBB4_8:
	or %s0, 0, (0)1
	st %s0, 8(, %s11)                       # 8-byte Folded Spill
	br.l .LBB4_9
.LBB4_9:
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
	adds.l %s11, -48, %s11
	brge.l.t %s11, %s8, .LBB5_11
# %bb.10:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB5_11:
	st %s0, 40(, %s11)
	st %s1, 32(, %s11)
	st %s2, 24(, %s11)
	ld %s0, 40(, %s11)
	st %s0, 16(, %s11)
	ld %s0, 32(, %s11)
	st %s0, 8(, %s11)
	br.l .LBB5_1
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	breq.l 0, %s0, .LBB5_3
	br.l .LBB5_2
.LBB5_2:                                #   in Loop: Header=BB5_1 Depth=1
	ld %s0, 16(, %s11)
	ld1b.zx %s0, (, %s0)
	ld %s1, 8(, %s11)
	ld1b.zx %s1, (, %s1)
	cmps.w.sx %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.eq %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB5_3
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	ldl.sx %s1, 4(, %s11)                   # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB5_6
	br.l .LBB5_4
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	br.l .LBB5_5
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
	ld %s0, 24(, %s11)
	lea %s0, -1(, %s0)
	st %s0, 24(, %s11)
	ld %s0, 16(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 16(, %s11)
	ld %s0, 8(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 8(, %s11)
	br.l .LBB5_1
.LBB5_6:
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB5_8
	br.l .LBB5_7
.LBB5_7:
	ld %s0, 16(, %s11)
	ld1b.zx %s0, (, %s0)
	ld %s1, 8(, %s11)
	ld1b.zx %s1, (, %s1)
	subs.w.sx %s0, %s0, %s1
	stl %s0, (, %s11)                       # 4-byte Folded Spill
	br.l .LBB5_9
.LBB5_8:
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, (, %s11)                       # 4-byte Folded Spill
	br.l .LBB5_9
.LBB5_9:
	ldl.sx %s0, (, %s11)                    # 4-byte Folded Reload
	adds.w.sx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	adds.l %s11, 48, %s11
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
	st %s0, 40(, %s11)
	st %s1, 32(, %s11)
	st %s2, 24(, %s11)
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
	ld %s0, 8(, %s11)
	ld %s1, 16(, %s11)
	ld1b.zx %s0, (%s1, %s0)
	ldl.sx %s1, 28(, %s11)
	brne.w %s0, %s1, .LBB7_4
	br.l .LBB7_3
.LBB7_3:
	ld %s0, 8(, %s11)
	ld %s1, 16(, %s11)
	adds.l %s0, %s0, %s1
	st %s0, 40(, %s11)
	br.l .LBB7_6
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	br.l .LBB7_1
.LBB7_5:
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
	st %s1, 40(, %s11)
	stl %s0, 36(, %s11)
	st %s2, 24(, %s11)
	ld %s0, 40(, %s11)
	st %s0, 16(, %s11)
	br.l .LBB8_1
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB8_4
	br.l .LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
	ldl.sx %s1, 36(, %s11)
	ld %s0, 16(, %s11)
	st1b %s1, (, %s0)
	br.l .LBB8_3
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
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
	st %s0, 8(, %s11)
	st %s1, (, %s11)
	br.l .LBB9_1
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	ld %s0, (, %s11)
	ld1b.zx %s0, (, %s0)
	ld %s1, 8(, %s11)
	st1b %s0, (, %s1)
	breq.w 0, %s0, .LBB9_4
	br.l .LBB9_2
.LBB9_2:                                #   in Loop: Header=BB9_1 Depth=1
	br.l .LBB9_3
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
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
	brge.l.t %s11, %s8, .LBB10_8
# %bb.7:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB10_8:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s1, 24(, %s11)
	stl %s0, 20(, %s11)
	ld1b.zx %s0, 20(, %s11)
	stl %s0, 20(, %s11)
	br.l .LBB10_1
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	ld1b.sx %s0, (, %s0)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	breq.w 0, %s0, .LBB10_3
	br.l .LBB10_2
.LBB10_2:                               #   in Loop: Header=BB10_1 Depth=1
	ld %s0, 24(, %s11)
	ld1b.zx %s0, (, %s0)
	ldl.sx %s1, 20(, %s11)
	cmps.w.sx %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.ne %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB10_3
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	ldl.sx %s1, 4(, %s11)                   # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB10_6
	br.l .LBB10_4
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	br.l .LBB10_5
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	ld %s0, 24(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 24(, %s11)
	br.l .LBB10_1
.LBB10_6:
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
	brge.l.t %s11, %s8, .LBB11_8
# %bb.7:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB11_8:
	st %s1, (, %s11)                        # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s1, 16(, %s11)
	stl %s0, 12(, %s11)
	br.l .LBB11_1
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 16(, %s11)
	ld1b.sx %s0, (, %s0)
	ldl.sx %s1, 12(, %s11)
	brne.w %s0, %s1, .LBB11_3
	br.l .LBB11_2
.LBB11_2:
	ld %s0, 16(, %s11)
	st %s0, 24(, %s11)
	br.l .LBB11_6
.LBB11_3:                               #   in Loop: Header=BB11_1 Depth=1
	br.l .LBB11_4
.LBB11_4:                               #   in Loop: Header=BB11_1 Depth=1
	ld %s0, 16(, %s11)
	lea %s1, 1(, %s0)
	st %s1, 16(, %s11)
	ld1b.zx %s0, (, %s0)
	brne.w 0, %s0, .LBB11_1
	br.l .LBB11_5
.LBB11_5:
	or %s0, 0, (0)1
	st %s0, 24(, %s11)
	br.l .LBB11_6
.LBB11_6:
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
	brge.l.t %s11, %s8, .LBB12_8
# %bb.7:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB12_8:
	st %s0, 24(, %s11)
	st %s1, 16(, %s11)
	br.l .LBB12_1
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	ld1b.sx %s0, (, %s0)
	ld %s1, 16(, %s11)
	ld1b.sx %s1, (, %s1)
	or %s2, 0, (0)1
                                        # kill: def $sw2 killed $sw2 killed $sx2
	stl %s2, 12(, %s11)                     # 4-byte Folded Spill
	brne.w %s0, %s1, .LBB12_3
	br.l .LBB12_2
.LBB12_2:                               #   in Loop: Header=BB12_1 Depth=1
	ld %s0, 24(, %s11)
	ld1b.sx %s1, (, %s0)
	or %s0, 0, (0)1
	or %s2, 0, %s0
	cmps.w.sx %s1, %s1, %s2
	cmov.w.ne %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB12_3
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	ldl.sx %s1, 12(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB12_6
	br.l .LBB12_4
.LBB12_4:                               #   in Loop: Header=BB12_1 Depth=1
	br.l .LBB12_5
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
	ld %s0, 24(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 24(, %s11)
	ld %s0, 16(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 16(, %s11)
	br.l .LBB12_1
.LBB12_6:
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
	st %s0, 8(, %s11)
	ld %s0, 8(, %s11)
	st %s0, (, %s11)
	br.l .LBB13_1
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 8(, %s11)
	ld1b.zx %s0, (, %s0)
	breq.w 0, %s0, .LBB13_4
	br.l .LBB13_2
.LBB13_2:                               #   in Loop: Header=BB13_1 Depth=1
	br.l .LBB13_3
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
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
	brge.l.t %s11, %s8, .LBB14_13
# %bb.12:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB14_13:
	st %s0, 48(, %s11)
	st %s1, 40(, %s11)
	st %s2, 32(, %s11)
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
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 60(, %s11)
	br.l .LBB14_11
.LBB14_2:
	br.l .LBB14_3
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	ld1b.zx %s0, (, %s0)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	breq.w 0, %s0, .LBB14_7
	br.l .LBB14_4
.LBB14_4:                               #   in Loop: Header=BB14_3 Depth=1
	ld %s0, 16(, %s11)
	ld1b.zx %s0, (, %s0)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	breq.w 0, %s0, .LBB14_7
	br.l .LBB14_5
.LBB14_5:                               #   in Loop: Header=BB14_3 Depth=1
	ld %s0, 32(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	breq.l 0, %s0, .LBB14_7
	br.l .LBB14_6
.LBB14_6:                               #   in Loop: Header=BB14_3 Depth=1
	ld %s0, 24(, %s11)
	ld1b.zx %s0, (, %s0)
	ld %s1, 16(, %s11)
	ld1b.zx %s1, (, %s1)
	cmps.w.sx %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.eq %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB14_7
.LBB14_7:                               #   in Loop: Header=BB14_3 Depth=1
	ldl.sx %s1, 12(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB14_10
	br.l .LBB14_8
.LBB14_8:                               #   in Loop: Header=BB14_3 Depth=1
	br.l .LBB14_9
.LBB14_9:                               #   in Loop: Header=BB14_3 Depth=1
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
.LBB14_10:
	ld %s0, 24(, %s11)
	ld1b.zx %s0, (, %s0)
	ld %s1, 16(, %s11)
	ld1b.zx %s1, (, %s1)
	subs.w.sx %s0, %s0, %s1
	stl %s0, 60(, %s11)
	br.l .LBB14_11
.LBB14_11:
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
	st %s0, 40(, %s11)
	st %s1, 32(, %s11)
	st %s2, 24(, %s11)
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
	stl %s0, 12(, %s11)
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
	stl %s0, 12(, %s11)
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
	brge.l.t %s11, %s8, .LBB18_4
# %bb.3:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB18_4:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	ldl.sx %s0, 12(, %s11)
	or %s1, 1, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	breq.w 32, %s0, .LBB18_2
	br.l .LBB18_1
.LBB18_1:
	ldl.sx %s0, 12(, %s11)
	or %s1, 9, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmps.w.sx %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.eq %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB18_2
.LBB18_2:
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
	brge.l.t %s11, %s8, .LBB19_4
# %bb.3:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB19_4:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	ldl.sx %s0, 12(, %s11)
	or %s1, 1, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s0, 32, %s0
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	brlt.w 0, %s0, .LBB19_2
	br.l .LBB19_1
.LBB19_1:
	ldl.sx %s0, 12(, %s11)
	lea %s1, 127
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmps.w.sx %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.eq %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB19_2
.LBB19_2:
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
	stl %s0, 12(, %s11)
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
	stl %s0, 12(, %s11)
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
	stl %s0, 12(, %s11)
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
	stl %s0, 12(, %s11)
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
	brge.l.t %s11, %s8, .LBB24_4
# %bb.3:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB24_4:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	ldl.sx %s0, 12(, %s11)
	or %s1, 1, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	breq.w 32, %s0, .LBB24_2
	br.l .LBB24_1
.LBB24_1:
	ldl.sx %s0, 12(, %s11)
	adds.w.sx %s0, -9, %s0
	or %s1, 5, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.lt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB24_2
.LBB24_2:
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
	stl %s0, 12(, %s11)
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
	brge.l.t %s11, %s8, .LBB26_6
# %bb.5:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB26_6:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	ldl.sx %s0, 12(, %s11)
	or %s1, 1, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s0, 32, %s0
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	brlt.w 0, %s0, .LBB26_4
	br.l .LBB26_1
.LBB26_1:
	ldl.sx %s0, 12(, %s11)
	lea %s1, -127
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	or %s1, 1, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s0, 33, %s0
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	brlt.w 0, %s0, .LBB26_4
	br.l .LBB26_2
.LBB26_2:
	ldl.sx %s0, 12(, %s11)
	lea %s1, -8232
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	or %s1, 1, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s0, 2, %s0
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	brlt.w 0, %s0, .LBB26_4
	br.l .LBB26_3
.LBB26_3:
	ldl.sx %s0, 12(, %s11)
	lea %s1, -65529
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s0, %s0, %s1
	or %s1, 3, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.lt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB26_4
.LBB26_4:
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
	stl %s0, 12(, %s11)
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
	brge.l.t %s11, %s8, .LBB28_12
# %bb.11:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB28_12:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	ldl.sx %s1, 8(, %s11)
	lea %s0, 254
                                        # kill: def $sw0 killed $sw0 killed $sx0
	cmpu.w %s0, %s0, %s1
	brgt.w 0, %s0, .LBB28_2
	br.l .LBB28_1
.LBB28_1:
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
	br.l .LBB28_10
.LBB28_2:
	ldl.sx %s1, 8(, %s11)
	lea %s0, 8232
                                        # kill: def $sw0 killed $sw0 killed $sx0
	cmpu.w %s0, %s0, %s1
	brlt.w 0, %s0, .LBB28_5
	br.l .LBB28_3
.LBB28_3:
	ldl.sx %s0, 8(, %s11)
	lea %s1, -8234
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s1, %s0, %s1
	lea %s0, 47062
                                        # kill: def $sw0 killed $sw0 killed $sx0
	cmpu.w %s0, %s0, %s1
	brlt.w 0, %s0, .LBB28_5
	br.l .LBB28_4
.LBB28_4:
	ldl.sx %s0, 8(, %s11)
	lea %s1, -57344
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s1, %s0, %s1
	lea %s0, 8184
                                        # kill: def $sw0 killed $sw0 killed $sx0
	cmpu.w %s0, %s0, %s1
	brgt.w 0, %s0, .LBB28_6
	br.l .LBB28_5
.LBB28_5:
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	br.l .LBB28_10
.LBB28_6:
	ldl.sx %s0, 8(, %s11)
	lea %s1, -65532
                                        # kill: def $sw1 killed $sw1 killed $sx1
	adds.w.sx %s1, %s0, %s1
	lea %s0, 1048579
                                        # kill: def $sw0 killed $sw0 killed $sx0
	cmpu.w %s0, %s0, %s1
	brgt.w 0, %s0, .LBB28_8
	br.l .LBB28_7
.LBB28_7:
	ldl.zx %s1, 8(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s1, 65534
	and %s0, %s0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	brne.w %s0, %s1, .LBB28_9
	br.l .LBB28_8
.LBB28_8:
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	br.l .LBB28_10
.LBB28_9:
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	br.l .LBB28_10
.LBB28_10:
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
	brge.l.t %s11, %s8, .LBB29_4
# %bb.3:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB29_4:
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	ldl.sx %s0, 12(, %s11)
	adds.w.sx %s0, -48, %s0
	or %s1, 1, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	cmpu.w %s0, 10, %s0
	stl %s1, 8(, %s11)                      # 4-byte Folded Spill
	brlt.w 0, %s0, .LBB29_2
	br.l .LBB29_1
.LBB29_1:
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
	cmpu.w %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.lt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB29_2
.LBB29_2:
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
	stl %s0, 12(, %s11)
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
	ld %s0, 16(, %s11)
	brnum.d %s0, %s0, .LBB31_2
	br.l .LBB31_1
.LBB31_1:
	ld %s0, 16(, %s11)
	st %s0, 24(, %s11)
	br.l .LBB31_8
.LBB31_2:
	ld %s0, 8(, %s11)
	brnum.d %s0, %s0, .LBB31_4
	br.l .LBB31_3
.LBB31_3:
	ld %s0, 8(, %s11)
	st %s0, 24(, %s11)
	br.l .LBB31_8
.LBB31_4:
	ld %s0, 16(, %s11)
	ld %s1, 8(, %s11)
	brlenan.d %s0, %s1, .LBB31_6
	br.l .LBB31_5
.LBB31_5:
	ld %s0, 16(, %s11)
	ld %s1, 8(, %s11)
	fsub.d %s0, %s0, %s1
	st %s0, (, %s11)                        # 8-byte Folded Spill
	br.l .LBB31_7
.LBB31_6:
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
	ldu %s0, 24(, %s11)
	brnum.s %s0, %s0, .LBB32_2
	br.l .LBB32_1
.LBB32_1:
	ldu %s0, 24(, %s11)
	stu %s0, 28(, %s11)
	br.l .LBB32_8
.LBB32_2:
	ldu %s0, 20(, %s11)
	brnum.s %s0, %s0, .LBB32_4
	br.l .LBB32_3
.LBB32_3:
	ldu %s0, 20(, %s11)
	stu %s0, 28(, %s11)
	br.l .LBB32_8
.LBB32_4:
	ldu %s0, 24(, %s11)
	ldu %s1, 20(, %s11)
	brlenan.s %s0, %s1, .LBB32_6
	br.l .LBB32_5
.LBB32_5:
	ldu %s0, 24(, %s11)
	ldu %s1, 20(, %s11)
	fsub.s %s0, %s0, %s1
	stu %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB32_7
.LBB32_6:
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
	ld %s0, 32(, %s11)
	brnum.d %s0, %s0, .LBB33_2
	br.l .LBB33_1
.LBB33_1:
	ld %s0, 24(, %s11)
	st %s0, 40(, %s11)
	br.l .LBB33_13
.LBB33_2:
	ld %s0, 24(, %s11)
	brnum.d %s0, %s0, .LBB33_4
	br.l .LBB33_3
.LBB33_3:
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
	ld %s0, 32(, %s11)
	brlt.l -1, %s0, .LBB33_7
	br.l .LBB33_6
.LBB33_6:
	ld %s0, 24(, %s11)
	st %s0, 16(, %s11)                      # 8-byte Folded Spill
	br.l .LBB33_8
.LBB33_7:
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
	ld %s0, 24(, %s11)
	st %s0, 8(, %s11)                       # 8-byte Folded Spill
	br.l .LBB33_12
.LBB33_11:
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
	ldu %s0, 24(, %s11)
	brnum.s %s0, %s0, .LBB34_2
	br.l .LBB34_1
.LBB34_1:
	ldu %s0, 20(, %s11)
	stu %s0, 28(, %s11)
	br.l .LBB34_13
.LBB34_2:
	ldu %s0, 20(, %s11)
	brnum.s %s0, %s0, .LBB34_4
	br.l .LBB34_3
.LBB34_3:
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
	ldl.sx %s0, 24(, %s11)
	brlt.w -1, %s0, .LBB34_7
	br.l .LBB34_6
.LBB34_6:
	ldu %s0, 20(, %s11)
	stu %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB34_8
.LBB34_7:
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
	ldu %s0, 20(, %s11)
	stu %s0, (, %s11)                       # 4-byte Folded Spill
	br.l .LBB34_12
.LBB34_11:
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
	ld %s1, 48(, %s11)
	ld %s0, 56(, %s11)
	fcmp.q %s0, %s0, %s0
	brnum.d 0, %s0, .LBB35_2
	br.l .LBB35_1
.LBB35_1:
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
	ld %s0, 56(, %s11)
	brlt.l -1, %s0, .LBB35_7
	br.l .LBB35_6
.LBB35_6:
	ld %s1, 32(, %s11)
	ld %s0, 40(, %s11)
	st %s1, 16(, %s11)
	st %s0, 24(, %s11)                      # 16-byte Folded Spill
	br.l .LBB35_8
.LBB35_7:
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
	ld %s1, 32(, %s11)
	ld %s0, 40(, %s11)
	st %s1, (, %s11)
	st %s0, 8(, %s11)                       # 16-byte Folded Spill
	br.l .LBB35_12
.LBB35_11:
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
	ld %s0, 32(, %s11)
	brnum.d %s0, %s0, .LBB36_2
	br.l .LBB36_1
.LBB36_1:
	ld %s0, 24(, %s11)
	st %s0, 40(, %s11)
	br.l .LBB36_13
.LBB36_2:
	ld %s0, 24(, %s11)
	brnum.d %s0, %s0, .LBB36_4
	br.l .LBB36_3
.LBB36_3:
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
	ld %s0, 32(, %s11)
	brlt.l -1, %s0, .LBB36_7
	br.l .LBB36_6
.LBB36_6:
	ld %s0, 32(, %s11)
	st %s0, 16(, %s11)                      # 8-byte Folded Spill
	br.l .LBB36_8
.LBB36_7:
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
	ld %s0, 32(, %s11)
	st %s0, 8(, %s11)                       # 8-byte Folded Spill
	br.l .LBB36_12
.LBB36_11:
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
	ldu %s0, 24(, %s11)
	brnum.s %s0, %s0, .LBB37_2
	br.l .LBB37_1
.LBB37_1:
	ldu %s0, 20(, %s11)
	stu %s0, 28(, %s11)
	br.l .LBB37_13
.LBB37_2:
	ldu %s0, 20(, %s11)
	brnum.s %s0, %s0, .LBB37_4
	br.l .LBB37_3
.LBB37_3:
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
	ldl.sx %s0, 24(, %s11)
	brlt.w -1, %s0, .LBB37_7
	br.l .LBB37_6
.LBB37_6:
	ldu %s0, 24(, %s11)
	stu %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB37_8
.LBB37_7:
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
	ldu %s0, 24(, %s11)
	stu %s0, (, %s11)                       # 4-byte Folded Spill
	br.l .LBB37_12
.LBB37_11:
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
	ld %s1, 48(, %s11)
	ld %s0, 56(, %s11)
	fcmp.q %s0, %s0, %s0
	brnum.d 0, %s0, .LBB38_2
	br.l .LBB38_1
.LBB38_1:
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
	ld %s0, 56(, %s11)
	brlt.l -1, %s0, .LBB38_7
	br.l .LBB38_6
.LBB38_6:
	ld %s1, 48(, %s11)
	ld %s0, 56(, %s11)
	st %s1, 16(, %s11)
	st %s0, 24(, %s11)                      # 16-byte Folded Spill
	br.l .LBB38_8
.LBB38_7:
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
	ld %s1, 48(, %s11)
	ld %s0, 56(, %s11)
	st %s1, (, %s11)
	st %s0, 8(, %s11)                       # 16-byte Folded Spill
	br.l .LBB38_12
.LBB38_11:
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
	st %s0, 24(, %s11)
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
	stl %s0, 12(, %s11)
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
	ld %s0, 24(, %s11)
	st %s0, 8(, %s11)
	ld %s0, 16(, %s11)
	st %s0, (, %s11)
	ld %s0, (, %s11)
	brne.l 0, %s0, .LBB42_2
	br.l .LBB42_1
.LBB42_1:
	ld %s0, 8(, %s11)
	or %s1, 0, (0)1
	st %s1, 8(, %s0)
	ld %s0, 8(, %s11)
	st %s1, (, %s0)
	br.l .LBB42_4
.LBB42_2:
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
	st %s0, 8(, %s11)
	ld %s0, 8(, %s11)
	st %s0, (, %s11)
	ld %s0, (, %s11)
	ld %s0, (, %s0)
	breq.l 0, %s0, .LBB43_2
	br.l .LBB43_1
.LBB43_1:
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
	ld %s0, -56(, %s9)
	ld %s1, -72(, %s9)
	muls.l %s1, %s1, %s2
	adds.l %s0, %s0, %s1
	st %s0, -8(, %s9)
	br.l .LBB44_7
.LBB44_4:                               #   in Loop: Header=BB44_1 Depth=1
	br.l .LBB44_5
.LBB44_5:                               #   in Loop: Header=BB44_1 Depth=1
	ld %s0, -72(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -72(, %s9)
	br.l .LBB44_1
.LBB44_6:
	ld %s2, -80(, %s9)                      # 8-byte Folded Reload
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
	ld %s0, -56(, %s9)
	ld %s1, -72(, %s9)
	muls.l %s1, %s1, %s2
	adds.l %s0, %s0, %s1
	st %s0, -8(, %s9)
	br.l .LBB45_7
.LBB45_4:                               #   in Loop: Header=BB45_1 Depth=1
	br.l .LBB45_5
.LBB45_5:                               #   in Loop: Header=BB45_1 Depth=1
	ld %s0, -72(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -72(, %s9)
	br.l .LBB45_1
.LBB45_6:
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
	ldl.sx %s0, 12(, %s11)
	brgt.w 1, %s0, .LBB46_2
	br.l .LBB46_1
.LBB46_1:
	ldl.sx %s0, 12(, %s11)
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB46_3
.LBB46_2:
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
	brge.l.t %s11, %s8, .LBB47_15
# %bb.14:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB47_15:
	st %s0, -8(, %s9)
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
	ld %s0, -8(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -8(, %s9)
	br.l .LBB47_1
.LBB47_3:
	ld %s0, -8(, %s9)
	ld1b.sx %s0, (, %s0)
	stl %s0, -20(, %s9)                     # 4-byte Folded Spill
	breq.w 43, %s0, .LBB47_5
	br.l .LBB47_13
.LBB47_13:
	ldl.sx %s0, -20(, %s9)                  # 4-byte Folded Reload
	brne.w 45, %s0, .LBB47_6
	br.l .LBB47_4
.LBB47_4:
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -16(, %s9)
	br.l .LBB47_5
.LBB47_5:
	ld %s0, -8(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -8(, %s9)
	br.l .LBB47_6
.LBB47_6:
	br.l .LBB47_7
.LBB47_7:                               # =>This Inner Loop Header: Depth=1
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
	breq.w 0, %s0, .LBB47_9
	br.l .LBB47_8
.LBB47_8:                               #   in Loop: Header=BB47_7 Depth=1
	ldl.sx %s0, -12(, %s9)
	muls.w.sx %s0, 10, %s0
	ld %s1, -8(, %s9)
	lea %s2, 1(, %s1)
	st %s2, -8(, %s9)
	ld1b.sx %s1, (, %s1)
	subs.w.sx %s0, %s0, %s1
	adds.w.sx %s0, 48, %s0
	stl %s0, -12(, %s9)
	br.l .LBB47_7
.LBB47_9:
	ldl.sx %s0, -16(, %s9)
	breq.w 0, %s0, .LBB47_11
	br.l .LBB47_10
.LBB47_10:
	ldl.sx %s0, -12(, %s9)
	stl %s0, -24(, %s9)                     # 4-byte Folded Spill
	br.l .LBB47_12
.LBB47_11:
	ldl.sx %s0, -12(, %s9)
	subs.w.sx %s0, 0, %s0
	stl %s0, -24(, %s9)                     # 4-byte Folded Spill
	br.l .LBB47_12
.LBB47_12:
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
	brge.l.t %s11, %s8, .LBB48_15
# %bb.14:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB48_15:
	st %s0, -8(, %s9)
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
	ld %s0, -8(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -8(, %s9)
	br.l .LBB48_1
.LBB48_3:
	ld %s0, -8(, %s9)
	ld1b.sx %s0, (, %s0)
	stl %s0, -24(, %s9)                     # 4-byte Folded Spill
	breq.w 43, %s0, .LBB48_5
	br.l .LBB48_13
.LBB48_13:
	ldl.sx %s0, -24(, %s9)                  # 4-byte Folded Reload
	brne.w 45, %s0, .LBB48_6
	br.l .LBB48_4
.LBB48_4:
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -20(, %s9)
	br.l .LBB48_5
.LBB48_5:
	ld %s0, -8(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -8(, %s9)
	br.l .LBB48_6
.LBB48_6:
	br.l .LBB48_7
.LBB48_7:                               # =>This Inner Loop Header: Depth=1
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
	breq.w 0, %s0, .LBB48_9
	br.l .LBB48_8
.LBB48_8:                               #   in Loop: Header=BB48_7 Depth=1
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
	br.l .LBB48_7
.LBB48_9:
	ldl.sx %s0, -20(, %s9)
	breq.w 0, %s0, .LBB48_11
	br.l .LBB48_10
.LBB48_10:
	ld %s0, -16(, %s9)
	st %s0, -32(, %s9)                      # 8-byte Folded Spill
	br.l .LBB48_12
.LBB48_11:
	ld %s0, -16(, %s9)
	subs.l %s0, 0, %s0
	st %s0, -32(, %s9)                      # 8-byte Folded Spill
	br.l .LBB48_12
.LBB48_12:
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
	brge.l.t %s11, %s8, .LBB49_15
# %bb.14:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB49_15:
	st %s0, -8(, %s9)
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
	ld %s0, -8(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -8(, %s9)
	br.l .LBB49_1
.LBB49_3:
	ld %s0, -8(, %s9)
	ld1b.sx %s0, (, %s0)
	stl %s0, -24(, %s9)                     # 4-byte Folded Spill
	breq.w 43, %s0, .LBB49_5
	br.l .LBB49_13
.LBB49_13:
	ldl.sx %s0, -24(, %s9)                  # 4-byte Folded Reload
	brne.w 45, %s0, .LBB49_6
	br.l .LBB49_4
.LBB49_4:
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -20(, %s9)
	br.l .LBB49_5
.LBB49_5:
	ld %s0, -8(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -8(, %s9)
	br.l .LBB49_6
.LBB49_6:
	br.l .LBB49_7
.LBB49_7:                               # =>This Inner Loop Header: Depth=1
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
	breq.w 0, %s0, .LBB49_9
	br.l .LBB49_8
.LBB49_8:                               #   in Loop: Header=BB49_7 Depth=1
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
	br.l .LBB49_7
.LBB49_9:
	ldl.sx %s0, -20(, %s9)
	breq.w 0, %s0, .LBB49_11
	br.l .LBB49_10
.LBB49_10:
	ld %s0, -16(, %s9)
	st %s0, -32(, %s9)                      # 8-byte Folded Spill
	br.l .LBB49_12
.LBB49_11:
	ld %s0, -16(, %s9)
	subs.l %s0, 0, %s0
	st %s0, -32(, %s9)                      # 8-byte Folded Spill
	br.l .LBB49_12
.LBB49_12:
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
	br.l .LBB50_1
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, -32(, %s9)
	breq.l 0, %s0, .LBB50_9
	br.l .LBB50_2
.LBB50_2:                               #   in Loop: Header=BB50_1 Depth=1
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
	ld %s0, -32(, %s9)
	srl %s0, %s0, 1
	st %s0, -32(, %s9)
	br.l .LBB50_8
.LBB50_4:                               #   in Loop: Header=BB50_1 Depth=1
	ldl.sx %s0, -60(, %s9)
	brgt.w 1, %s0, .LBB50_6
	br.l .LBB50_5
.LBB50_5:                               #   in Loop: Header=BB50_1 Depth=1
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
	ld %s0, -56(, %s9)
	st %s0, -8(, %s9)
	br.l .LBB50_10
.LBB50_7:                               #   in Loop: Header=BB50_1 Depth=1
	br.l .LBB50_8
.LBB50_8:                               #   in Loop: Header=BB50_1 Depth=1
	br.l .LBB50_1
.LBB50_9:
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
	ld %s0, -80(, %s9)
	st %s0, -8(, %s9)
	br.l .LBB51_9
.LBB51_4:                               #   in Loop: Header=BB51_1 Depth=1
	ldl.sx %s0, -72(, %s9)
	brgt.w 1, %s0, .LBB51_6
	br.l .LBB51_5
.LBB51_5:                               #   in Loop: Header=BB51_1 Depth=1
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
	ldl.sx %s0, -68(, %s9)
	sra.w.sx %s0, %s0, 1
	stl %s0, -68(, %s9)
	br.l .LBB51_1
.LBB51_8:
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
	stl %s2, 12(, %s11)
	stl %s1, 8(, %s11)
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
	ld %s0, 8(, %s11)
	brgt.l 1, %s0, .LBB53_2
	br.l .LBB53_1
.LBB53_1:
	ld %s0, 8(, %s11)
	st %s0, (, %s11)                        # 8-byte Folded Spill
	br.l .LBB53_3
.LBB53_2:
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
	st %s1, 8(, %s11)
	st %s2, (, %s11)
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
	ld %s0, 8(, %s11)
	brgt.l 1, %s0, .LBB55_2
	br.l .LBB55_1
.LBB55_1:
	ld %s0, 8(, %s11)
	st %s0, (, %s11)                        # 8-byte Folded Spill
	br.l .LBB55_3
.LBB55_2:
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
	st %s1, 8(, %s11)
	st %s2, (, %s11)
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
	ld %s0, 8(, %s11)
	brgt.l 1, %s0, .LBB57_2
	br.l .LBB57_1
.LBB57_1:
	ld %s0, 8(, %s11)
	st %s0, (, %s11)                        # 8-byte Folded Spill
	br.l .LBB57_3
.LBB57_2:
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
	st %s1, 8(, %s11)
	st %s2, (, %s11)
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
	brge.l.t %s11, %s8, .LBB59_11
# %bb.10:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB59_11:
	st %s1, 24(, %s11)                      # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 24(, %s11)                      # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s1, 40(, %s11)
	stl %s0, 36(, %s11)
	br.l .LBB59_1
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 40(, %s11)
	ldl.sx %s0, (, %s0)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 20(, %s11)                     # 4-byte Folded Spill
	breq.w 0, %s0, .LBB59_3
	br.l .LBB59_2
.LBB59_2:                               #   in Loop: Header=BB59_1 Depth=1
	ld %s0, 40(, %s11)
	ldl.sx %s0, (, %s0)
	ldl.sx %s1, 36(, %s11)
	cmps.w.sx %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.ne %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 20(, %s11)                     # 4-byte Folded Spill
	br.l .LBB59_3
.LBB59_3:                               #   in Loop: Header=BB59_1 Depth=1
	ldl.sx %s1, 20(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB59_6
	br.l .LBB59_4
.LBB59_4:                               #   in Loop: Header=BB59_1 Depth=1
	br.l .LBB59_5
.LBB59_5:                               #   in Loop: Header=BB59_1 Depth=1
	ld %s0, 40(, %s11)
	lea %s0, 4(, %s0)
	st %s0, 40(, %s11)
	br.l .LBB59_1
.LBB59_6:
	ld %s0, 40(, %s11)
	ldl.sx %s0, (, %s0)
	breq.w 0, %s0, .LBB59_8
	br.l .LBB59_7
.LBB59_7:
	ld %s0, 40(, %s11)
	st %s0, 8(, %s11)                       # 8-byte Folded Spill
	br.l .LBB59_9
.LBB59_8:
	or %s0, 0, (0)1
	st %s0, 8(, %s11)                       # 8-byte Folded Spill
	br.l .LBB59_9
.LBB59_9:
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
	brge.l.t %s11, %s8, .LBB60_12
# %bb.11:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB60_12:
	st %s0, 24(, %s11)
	st %s1, 16(, %s11)
	br.l .LBB60_1
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	ldl.sx %s0, (, %s0)
	ld %s1, 16(, %s11)
	ldl.sx %s1, (, %s1)
	or %s2, 0, (0)1
                                        # kill: def $sw2 killed $sw2 killed $sx2
	stl %s2, 12(, %s11)                     # 4-byte Folded Spill
	brne.w %s0, %s1, .LBB60_4
	br.l .LBB60_2
.LBB60_2:                               #   in Loop: Header=BB60_1 Depth=1
	ld %s0, 24(, %s11)
	ldl.sx %s0, (, %s0)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	breq.w 0, %s0, .LBB60_4
	br.l .LBB60_3
.LBB60_3:                               #   in Loop: Header=BB60_1 Depth=1
	ld %s0, 16(, %s11)
	ldl.sx %s1, (, %s0)
	or %s0, 0, (0)1
	or %s2, 0, %s0
	cmps.w.sx %s1, %s1, %s2
	cmov.w.ne %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB60_4
.LBB60_4:                               #   in Loop: Header=BB60_1 Depth=1
	ldl.sx %s1, 12(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB60_7
	br.l .LBB60_5
.LBB60_5:                               #   in Loop: Header=BB60_1 Depth=1
	br.l .LBB60_6
.LBB60_6:                               #   in Loop: Header=BB60_1 Depth=1
	ld %s0, 24(, %s11)
	lea %s0, 4(, %s0)
	st %s0, 24(, %s11)
	ld %s0, 16(, %s11)
	lea %s0, 4(, %s0)
	st %s0, 16(, %s11)
	br.l .LBB60_1
.LBB60_7:
	ld %s0, 24(, %s11)
	ldl.sx %s1, (, %s0)
	ld %s0, 16(, %s11)
	ldl.sx %s0, (, %s0)
	cmpu.w %s0, %s0, %s1
	brge.w 0, %s0, .LBB60_9
	br.l .LBB60_8
.LBB60_8:
	or %s0, -1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB60_10
.LBB60_9:
	ld %s0, 24(, %s11)
	ldl.sx %s0, (, %s0)
	ld %s1, 16(, %s11)
	ldl.sx %s1, (, %s1)
	cmpu.w %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.gt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB60_10
.LBB60_10:
	ldl.sx %s0, 8(, %s11)                   # 4-byte Folded Reload
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
	st %s0, 24(, %s11)
	st %s1, 16(, %s11)
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
	st %s0, 8(, %s11)
	ld %s0, 8(, %s11)
	st %s0, (, %s11)
	br.l .LBB62_1
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 8(, %s11)
	ldl.sx %s0, (, %s0)
	breq.w 0, %s0, .LBB62_4
	br.l .LBB62_2
.LBB62_2:                               #   in Loop: Header=BB62_1 Depth=1
	br.l .LBB62_3
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
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
	brge.l.t %s11, %s8, .LBB63_16
# %bb.15:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB63_16:
	st %s0, 40(, %s11)
	st %s1, 32(, %s11)
	st %s2, 24(, %s11)
	br.l .LBB63_1
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 20(, %s11)                     # 4-byte Folded Spill
	breq.l 0, %s0, .LBB63_5
	br.l .LBB63_2
.LBB63_2:                               #   in Loop: Header=BB63_1 Depth=1
	ld %s0, 40(, %s11)
	ldl.sx %s0, (, %s0)
	ld %s1, 32(, %s11)
	ldl.sx %s1, (, %s1)
	or %s2, 0, (0)1
                                        # kill: def $sw2 killed $sw2 killed $sx2
	stl %s2, 20(, %s11)                     # 4-byte Folded Spill
	brne.w %s0, %s1, .LBB63_5
	br.l .LBB63_3
.LBB63_3:                               #   in Loop: Header=BB63_1 Depth=1
	ld %s0, 40(, %s11)
	ldl.sx %s0, (, %s0)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 20(, %s11)                     # 4-byte Folded Spill
	breq.w 0, %s0, .LBB63_5
	br.l .LBB63_4
.LBB63_4:                               #   in Loop: Header=BB63_1 Depth=1
	ld %s0, 32(, %s11)
	ldl.sx %s1, (, %s0)
	or %s0, 0, (0)1
	or %s2, 0, %s0
	cmps.w.sx %s1, %s1, %s2
	cmov.w.ne %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 20(, %s11)                     # 4-byte Folded Spill
	br.l .LBB63_5
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
	ldl.sx %s1, 20(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB63_8
	br.l .LBB63_6
.LBB63_6:                               #   in Loop: Header=BB63_1 Depth=1
	br.l .LBB63_7
.LBB63_7:                               #   in Loop: Header=BB63_1 Depth=1
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
.LBB63_8:
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB63_13
	br.l .LBB63_9
.LBB63_9:
	ld %s0, 40(, %s11)
	ldl.sx %s1, (, %s0)
	ld %s0, 32(, %s11)
	ldl.sx %s0, (, %s0)
	cmpu.w %s0, %s0, %s1
	brge.w 0, %s0, .LBB63_11
	br.l .LBB63_10
.LBB63_10:
	or %s0, -1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 16(, %s11)                     # 4-byte Folded Spill
	br.l .LBB63_12
.LBB63_11:
	ld %s0, 40(, %s11)
	ldl.sx %s0, (, %s0)
	ld %s1, 32(, %s11)
	ldl.sx %s1, (, %s1)
	cmpu.w %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.gt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 16(, %s11)                     # 4-byte Folded Spill
	br.l .LBB63_12
.LBB63_12:
	ldl.sx %s0, 16(, %s11)                  # 4-byte Folded Reload
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB63_14
.LBB63_13:
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB63_14
.LBB63_14:
	ldl.sx %s0, 12(, %s11)                  # 4-byte Folded Reload
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
	brge.l.t %s11, %s8, .LBB64_11
# %bb.10:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB64_11:
	st %s1, 16(, %s11)                      # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 16(, %s11)                      # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s1, 40(, %s11)
	stl %s0, 36(, %s11)
	st %s2, 24(, %s11)
	br.l .LBB64_1
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	breq.l 0, %s0, .LBB64_3
	br.l .LBB64_2
.LBB64_2:                               #   in Loop: Header=BB64_1 Depth=1
	ld %s0, 40(, %s11)
	ldl.sx %s0, (, %s0)
	ldl.sx %s1, 36(, %s11)
	cmps.w.sx %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.ne %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB64_3
.LBB64_3:                               #   in Loop: Header=BB64_1 Depth=1
	ldl.sx %s1, 12(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB64_6
	br.l .LBB64_4
.LBB64_4:                               #   in Loop: Header=BB64_1 Depth=1
	br.l .LBB64_5
.LBB64_5:                               #   in Loop: Header=BB64_1 Depth=1
	ld %s0, 24(, %s11)
	lea %s0, -1(, %s0)
	st %s0, 24(, %s11)
	ld %s0, 40(, %s11)
	lea %s0, 4(, %s0)
	st %s0, 40(, %s11)
	br.l .LBB64_1
.LBB64_6:
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB64_8
	br.l .LBB64_7
.LBB64_7:
	ld %s0, 40(, %s11)
	st %s0, (, %s11)                        # 8-byte Folded Spill
	br.l .LBB64_9
.LBB64_8:
	or %s0, 0, (0)1
	st %s0, (, %s11)                        # 8-byte Folded Spill
	br.l .LBB64_9
.LBB64_9:
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
	brge.l.t %s11, %s8, .LBB65_14
# %bb.13:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB65_14:
	st %s0, 40(, %s11)
	st %s1, 32(, %s11)
	st %s2, 24(, %s11)
	br.l .LBB65_1
.LBB65_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 20(, %s11)                     # 4-byte Folded Spill
	breq.l 0, %s0, .LBB65_3
	br.l .LBB65_2
.LBB65_2:                               #   in Loop: Header=BB65_1 Depth=1
	ld %s0, 40(, %s11)
	ldl.sx %s0, (, %s0)
	ld %s1, 32(, %s11)
	ldl.sx %s1, (, %s1)
	cmps.w.sx %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.eq %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 20(, %s11)                     # 4-byte Folded Spill
	br.l .LBB65_3
.LBB65_3:                               #   in Loop: Header=BB65_1 Depth=1
	ldl.sx %s1, 20(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB65_6
	br.l .LBB65_4
.LBB65_4:                               #   in Loop: Header=BB65_1 Depth=1
	br.l .LBB65_5
.LBB65_5:                               #   in Loop: Header=BB65_1 Depth=1
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
.LBB65_6:
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB65_11
	br.l .LBB65_7
.LBB65_7:
	ld %s0, 40(, %s11)
	ldl.sx %s1, (, %s0)
	ld %s0, 32(, %s11)
	ldl.sx %s0, (, %s0)
	cmpu.w %s0, %s0, %s1
	brge.w 0, %s0, .LBB65_9
	br.l .LBB65_8
.LBB65_8:
	or %s0, -1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 16(, %s11)                     # 4-byte Folded Spill
	br.l .LBB65_10
.LBB65_9:
	ld %s0, 40(, %s11)
	ldl.sx %s0, (, %s0)
	ld %s1, 32(, %s11)
	ldl.sx %s1, (, %s1)
	cmpu.w %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.w.gt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 16(, %s11)                     # 4-byte Folded Spill
	br.l .LBB65_10
.LBB65_10:
	ldl.sx %s0, 16(, %s11)                  # 4-byte Folded Reload
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB65_12
.LBB65_11:
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB65_12
.LBB65_12:
	ldl.sx %s0, 12(, %s11)                  # 4-byte Folded Reload
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
	st %s0, 24(, %s11)
	st %s1, 16(, %s11)
	st %s2, 8(, %s11)
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
	ld %s0, 32(, %s11)
	st %s0, 8(, %s11)
	ld %s0, 32(, %s11)
	ld %s1, 24(, %s11)
	brne.l %s0, %s1, .LBB67_2
	br.l .LBB67_1
.LBB67_1:
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
	br.l .LBB67_4
.LBB67_4:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 16(, %s11)
	lea %s1, -1(, %s0)
	st %s1, 16(, %s11)
	breq.l 0, %s0, .LBB67_6
	br.l .LBB67_5
.LBB67_5:                               #   in Loop: Header=BB67_4 Depth=1
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
	st %s1, 40(, %s11)
	stl %s0, 36(, %s11)
	st %s2, 24(, %s11)
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
	br.l .LBB69_8
.LBB69_8:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB69_11
	br.l .LBB69_9
.LBB69_9:                               #   in Loop: Header=BB69_8 Depth=1
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
	br.l .LBB69_12
.LBB69_12:
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
	st %s1, 24(, %s11)
	stl %s0, 20(, %s11)
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
	st %s1, 24(, %s11)
	stl %s0, 20(, %s11)
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
	stl %s1, 12(, %s11)
	stl %s0, 8(, %s11)
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
	stl %s1, 12(, %s11)
	stl %s0, 8(, %s11)
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
	st %s1, 24(, %s11)
	stl %s0, 20(, %s11)
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
	st %s1, 24(, %s11)
	stl %s0, 20(, %s11)
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
	st2b %s1, 14(, %s11)
	stl %s0, 8(, %s11)
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
	st2b %s1, 14(, %s11)
	stl %s0, 8(, %s11)
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
	st1b %s1, 15(, %s11)
	stl %s0, 8(, %s11)
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
	st1b %s1, 15(, %s11)
	stl %s0, 8(, %s11)
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
	st2b %s0, 14(, %s11)
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
	stl %s0, 12(, %s11)
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
	st %s0, 8(, %s11)
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
	ldl.sx %s0, 4(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 12(, %s11)
	br.l .LBB83_7
.LBB83_4:                               #   in Loop: Header=BB83_1 Depth=1
	br.l .LBB83_5
.LBB83_5:                               #   in Loop: Header=BB83_1 Depth=1
	ldl.sx %s0, 4(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 4(, %s11)
	br.l .LBB83_1
.LBB83_6:
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
	ldl.sx %s0, 8(, %s11)
	brne.w 0, %s0, .LBB84_2
	br.l .LBB84_1
.LBB84_1:
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	br.l .LBB84_7
.LBB84_2:
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
	ldl.sx %s0, 8(, %s11)
	sra.w.sx %s0, %s0, 1
	stl %s0, 8(, %s11)
	br.l .LBB84_5
.LBB84_5:                               #   in Loop: Header=BB84_3 Depth=1
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
	brge.l.t %s11, %s8, .LBB85_4
# %bb.3:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB85_4:
                                        # kill: def $sf0 killed $sf0 killed $sx0
	stu %s0, 12(, %s11)
	ldu %s0, 12(, %s11)
	or %s1, 1, (0)1
	or %s2, 0, %s1
	lea.sl %s1, -8388609
                                        # kill: def $sf1 killed $sf1 killed $sx1
	stl %s2, 8(, %s11)                      # 4-byte Folded Spill
	brlt.s %s0, %s1, .LBB85_2
	br.l .LBB85_1
.LBB85_1:
	ldu %s0, 12(, %s11)
	lea.sl %s1, 2139095039
                                        # kill: def $sf1 killed $sf1 killed $sx1
	fcmp.s %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.s.gt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB85_2
.LBB85_2:
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
	brge.l.t %s11, %s8, .LBB86_4
# %bb.3:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB86_4:
	st %s0, 8(, %s11)
	ld %s0, 8(, %s11)
	or %s1, 1, (0)1
	or %s2, 0, %s1
	lea %s1, -1
	and %s1, %s1, (32)0
	lea.sl %s1, -1048577(, %s1)
	stl %s2, 4(, %s11)                      # 4-byte Folded Spill
	brlt.d %s0, %s1, .LBB86_2
	br.l .LBB86_1
.LBB86_1:
	ld %s0, 8(, %s11)
	lea %s1, -1
	and %s1, %s1, (32)0
	lea.sl %s1, 2146435071(, %s1)
	fcmp.d %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.d.gt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB86_2
.LBB86_2:
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
	brge.l.t %s11, %s8, .LBB87_4
# %bb.3:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB87_4:
	st %s1, 16(, %s11)
	st %s0, 24(, %s11)
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
	brlt.d 0, %s0, .LBB87_2
	br.l .LBB87_1
.LBB87_1:
	ld %s1, 16(, %s11)
	ld %s0, 24(, %s11)
	lea %s2, .LCPI87_1@lo
	and %s2, %s2, (32)0
	lea.sl %s4, .LCPI87_1@hi(, %s2)
	ld %s5, 8(, %s4)
                                        # implicit-def: $q1
	or %s2, 0, %s5
	ld %s4, (, %s4)
	or %s3, 0, %s4
	fcmp.q %s1, %s0, %s2
	or %s0, 0, (0)1
	cmov.d.gt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB87_2
.LBB87_2:
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
	st %s1, 24(, %s11)
	stl %s0, 20(, %s11)
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
	brge.l.t %s11, %s8, .LBB89_11
# %bb.10:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB89_11:
	st %s1, 8(, %s11)                       # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
                                        # kill: def $sf1 killed $sf1 killed $sx1
	stu %s1, 28(, %s11)
	stl %s0, 24(, %s11)
	ldu %s0, 28(, %s11)
	brnan.s %s0, %s0, .LBB89_9
	br.l .LBB89_1
.LBB89_1:
	ldu %s1, 28(, %s11)
	fadd.s %s0, %s1, %s1
	breq.s %s0, %s1, .LBB89_9
	br.l .LBB89_2
.LBB89_2:
	ldl.sx %s1, 24(, %s11)
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
	br.l .LBB89_3
.LBB89_3:                               # =>This Inner Loop Header: Depth=1
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
	breq.w 0, %s0, .LBB89_5
	br.l .LBB89_4
.LBB89_4:                               #   in Loop: Header=BB89_3 Depth=1
	ldu %s1, 20(, %s11)
	ldu %s0, 28(, %s11)
	fmul.s %s0, %s0, %s1
	stu %s0, 28(, %s11)
	br.l .LBB89_5
.LBB89_5:                               #   in Loop: Header=BB89_3 Depth=1
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
	brne.w 0, %s0, .LBB89_7
	br.l .LBB89_6
.LBB89_6:
	br.l .LBB89_8
.LBB89_7:                               #   in Loop: Header=BB89_3 Depth=1
	ldu %s0, 20(, %s11)
	fmul.s %s0, %s0, %s0
	stu %s0, 20(, %s11)
	br.l .LBB89_3
.LBB89_8:
	br.l .LBB89_9
.LBB89_9:
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
	brge.l.t %s11, %s8, .LBB90_11
# %bb.10:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB90_11:
	st %s1, (, %s11)                        # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s1, 24(, %s11)
	stl %s0, 20(, %s11)
	ld %s0, 24(, %s11)
	brnan.d %s0, %s0, .LBB90_9
	br.l .LBB90_1
.LBB90_1:
	ld %s1, 24(, %s11)
	fadd.d %s0, %s1, %s1
	breq.d %s0, %s1, .LBB90_9
	br.l .LBB90_2
.LBB90_2:
	ldl.sx %s1, 20(, %s11)
	lea.sl %s0, 1073741824
	lea.sl %s2, 1071644672
	cmov.w.lt %s0, %s2, %s1
	st %s0, 8(, %s11)
	br.l .LBB90_3
.LBB90_3:                               # =>This Inner Loop Header: Depth=1
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
	breq.w 0, %s0, .LBB90_5
	br.l .LBB90_4
.LBB90_4:                               #   in Loop: Header=BB90_3 Depth=1
	ld %s1, 8(, %s11)
	ld %s0, 24(, %s11)
	fmul.d %s0, %s0, %s1
	st %s0, 24(, %s11)
	br.l .LBB90_5
.LBB90_5:                               #   in Loop: Header=BB90_3 Depth=1
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
	brne.w 0, %s0, .LBB90_7
	br.l .LBB90_6
.LBB90_6:
	br.l .LBB90_8
.LBB90_7:                               #   in Loop: Header=BB90_3 Depth=1
	ld %s0, 8(, %s11)
	fmul.d %s0, %s0, %s0
	st %s0, 8(, %s11)
	br.l .LBB90_3
.LBB90_8:
	br.l .LBB90_9
.LBB90_9:
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
	brge.l.t %s11, %s8, .LBB91_11
# %bb.10:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB91_11:
	st %s2, 8(, %s11)                       # 8-byte Folded Spill
	or %s2, 0, %s0
	or %s3, 0, %s1
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s3, 48(, %s11)
	st %s2, 56(, %s11)
	stl %s0, 44(, %s11)
	ld %s1, 48(, %s11)
	ld %s0, 56(, %s11)
	fcmp.q %s0, %s0, %s0
	brnan.d 0, %s0, .LBB91_9
	br.l .LBB91_1
.LBB91_1:
	ld %s1, 48(, %s11)
	ld %s0, 56(, %s11)
	fadd.q %s2, %s0, %s0
	fcmp.q %s0, %s0, %s2
	breq.d 0, %s0, .LBB91_9
	br.l .LBB91_2
.LBB91_2:
	ldl.sx %s1, 44(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, %s0, (32)0
	srl %s0, %s0, 31
                                        # kill: def $sw0 killed $sw0 killed $sx0
	adds.w.zx %s1, %s0, (0)1
                                        # implicit-def: $sx0
	or %s0, 0, %s1
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
	br.l .LBB91_3
.LBB91_3:                               # =>This Inner Loop Header: Depth=1
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
	breq.w 0, %s0, .LBB91_5
	br.l .LBB91_4
.LBB91_4:                               #   in Loop: Header=BB91_3 Depth=1
	ld %s3, 16(, %s11)
	ld %s2, 24(, %s11)
	ld %s1, 48(, %s11)
	ld %s0, 56(, %s11)
	fmul.q %s0, %s0, %s2
	st %s1, 48(, %s11)
	st %s0, 56(, %s11)
	br.l .LBB91_5
.LBB91_5:                               #   in Loop: Header=BB91_3 Depth=1
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
	brne.w 0, %s0, .LBB91_7
	br.l .LBB91_6
.LBB91_6:
	br.l .LBB91_8
.LBB91_7:                               #   in Loop: Header=BB91_3 Depth=1
	ld %s1, 16(, %s11)
	ld %s0, 24(, %s11)
	fmul.q %s0, %s0, %s0
	st %s1, 16(, %s11)
	st %s0, 24(, %s11)
	br.l .LBB91_3
.LBB91_8:
	br.l .LBB91_9
.LBB91_9:
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
	st %s0, 40(, %s11)
	st %s1, 32(, %s11)
	st %s2, 24(, %s11)
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
	brge.l.t %s11, %s8, .LBB93_10
# %bb.9:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB93_10:
	st %s0, -8(, %s9)
	st %s1, -16(, %s9)
	st %s2, -24(, %s9)
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
	breq.l 0, %s0, .LBB93_3
	br.l .LBB93_2
.LBB93_2:                               #   in Loop: Header=BB93_1 Depth=1
	ld %s0, -16(, %s9)
	ld1b.zx %s1, (, %s0)
	ld %s0, -32(, %s9)
	st1b %s1, (, %s0)
	or %s0, 0, (0)1
	or %s2, 0, %s0
	cmps.w.sx %s1, %s1, %s2
	cmov.w.ne %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -44(, %s9)                     # 4-byte Folded Spill
	br.l .LBB93_3
.LBB93_3:                               #   in Loop: Header=BB93_1 Depth=1
	ldl.sx %s1, -44(, %s9)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB93_6
	br.l .LBB93_4
.LBB93_4:                               #   in Loop: Header=BB93_1 Depth=1
	br.l .LBB93_5
.LBB93_5:                               #   in Loop: Header=BB93_1 Depth=1
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
.LBB93_6:
	ld %s0, -24(, %s9)
	brne.l 0, %s0, .LBB93_8
	br.l .LBB93_7
.LBB93_7:
	ld %s0, -32(, %s9)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	st1b %s1, (, %s0)
	br.l .LBB93_8
.LBB93_8:
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
	brge.l.t %s11, %s8, .LBB94_8
# %bb.7:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB94_8:
	st %s0, 24(, %s11)
	st %s1, 16(, %s11)
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
	brge.l 0, %s0, .LBB94_3
	br.l .LBB94_2
.LBB94_2:                               #   in Loop: Header=BB94_1 Depth=1
	ld %s0, 24(, %s11)
	ld %s1, 8(, %s11)
	ld1b.sx %s1, (%s1, %s0)
	or %s0, 0, (0)1
	or %s2, 0, %s0
	cmps.w.sx %s1, %s1, %s2
	cmov.w.ne %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB94_3
.LBB94_3:                               #   in Loop: Header=BB94_1 Depth=1
	ldl.sx %s1, 4(, %s11)                   # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB94_6
	br.l .LBB94_4
.LBB94_4:                               #   in Loop: Header=BB94_1 Depth=1
	br.l .LBB94_5
.LBB94_5:                               #   in Loop: Header=BB94_1 Depth=1
	ld %s0, 8(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 8(, %s11)
	br.l .LBB94_1
.LBB94_6:
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
	br.l .LBB95_1
.LBB95_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_3 Depth 2
	ld %s0, 16(, %s11)
	ld1b.sx %s0, (, %s0)
	breq.w 0, %s0, .LBB95_8
	br.l .LBB95_2
.LBB95_2:                               #   in Loop: Header=BB95_1 Depth=1
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
	ld %s0, (, %s11)
	lea %s1, 1(, %s0)
	st %s1, (, %s11)
	ld1b.sx %s0, (, %s0)
	ld %s1, 16(, %s11)
	ld1b.sx %s1, (, %s1)
	brne.w %s0, %s1, .LBB95_6
	br.l .LBB95_5
.LBB95_5:
	ld %s0, 16(, %s11)
	st %s0, 24(, %s11)
	br.l .LBB95_9
.LBB95_6:                               #   in Loop: Header=BB95_3 Depth=2
	br.l .LBB95_3
.LBB95_7:                               #   in Loop: Header=BB95_1 Depth=1
	ld %s0, 16(, %s11)
	lea %s0, 1(, %s0)
	st %s0, 16(, %s11)
	br.l .LBB95_1
.LBB95_8:
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
	brge.l.t %s11, %s8, .LBB96_7
# %bb.6:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB96_7:
	st %s1, (, %s11)                        # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, (, %s11)                        # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s1, 24(, %s11)
	stl %s0, 20(, %s11)
	or %s0, 0, (0)1
	st %s0, 8(, %s11)
	br.l .LBB96_1
.LBB96_1:                               # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	ld1b.sx %s0, (, %s0)
	ldl.sx %s1, 20(, %s11)
	brne.w %s0, %s1, .LBB96_3
	br.l .LBB96_2
.LBB96_2:                               #   in Loop: Header=BB96_1 Depth=1
	ld %s0, 24(, %s11)
	st %s0, 8(, %s11)
	br.l .LBB96_3
.LBB96_3:                               #   in Loop: Header=BB96_1 Depth=1
	br.l .LBB96_4
.LBB96_4:                               #   in Loop: Header=BB96_1 Depth=1
	ld %s0, 24(, %s11)
	lea %s1, 1(, %s0)
	st %s1, 24(, %s11)
	ld1b.zx %s0, (, %s0)
	brne.w 0, %s0, .LBB96_1
	br.l .LBB96_5
.LBB96_5:
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
	ld %s0, -32(, %s9)
	st %s0, -8(, %s9)
	br.l .LBB97_9
.LBB97_6:                               #   in Loop: Header=BB97_3 Depth=1
	br.l .LBB97_7
.LBB97_7:                               #   in Loop: Header=BB97_3 Depth=1
	ld %s0, -32(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -32(, %s9)
	br.l .LBB97_3
.LBB97_8:
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
	brge.l.t %s11, %s8, .LBB98_8
# %bb.7:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB98_8:
	st %s0, 16(, %s11)
	st %s1, 8(, %s11)
	ld %s0, 16(, %s11)
	brlenan.d 0, %s0, .LBB98_2
	br.l .LBB98_1
.LBB98_1:
	ld %s0, 8(, %s11)
	brlt.d 0, %s0, .LBB98_4
	br.l .LBB98_2
.LBB98_2:
	ld %s0, 16(, %s11)
	brgenan.d 0, %s0, .LBB98_5
	br.l .LBB98_3
.LBB98_3:
	ld %s0, 8(, %s11)
	brlenan.d 0, %s0, .LBB98_5
	br.l .LBB98_4
.LBB98_4:
	ld %s0, 16(, %s11)
	xor %s0, %s0, (1)1
	st %s0, 24(, %s11)
	br.l .LBB98_6
.LBB98_5:
	ld %s0, 16(, %s11)
	st %s0, 24(, %s11)
	br.l .LBB98_6
.LBB98_6:
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
	brge.l.t %s11, %s8, .LBB99_14
# %bb.13:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB99_14:
	st %s0, -16(, %s9)
	st %s1, -24(, %s9)
	st %s2, -32(, %s9)
	st %s3, -40(, %s9)
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
	ld %s0, -16(, %s9)
	st %s0, -8(, %s9)
	br.l .LBB99_12
.LBB99_2:
	ld %s1, -24(, %s9)
	ld %s0, -40(, %s9)
	cmpu.l %s0, %s0, %s1
	brge.l 0, %s0, .LBB99_4
	br.l .LBB99_3
.LBB99_3:
	or %s0, 0, (0)1
	st %s0, -8(, %s9)
	br.l .LBB99_12
.LBB99_4:
	ld %s0, -16(, %s9)
	st %s0, -48(, %s9)
	br.l .LBB99_5
.LBB99_5:                               # =>This Inner Loop Header: Depth=1
	ld %s1, -48(, %s9)
	ld %s0, -56(, %s9)
	cmpu.l %s0, %s0, %s1
	brgt.l 0, %s0, .LBB99_11
	br.l .LBB99_6
.LBB99_6:                               #   in Loop: Header=BB99_5 Depth=1
	ld %s0, -48(, %s9)
	ld1b.sx %s0, (, %s0)
	ld %s1, -32(, %s9)
	ld1b.sx %s1, (, %s1)
	brne.w %s0, %s1, .LBB99_9
	br.l .LBB99_7
.LBB99_7:                               #   in Loop: Header=BB99_5 Depth=1
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
	brne.w 0, %s0, .LBB99_9
	br.l .LBB99_8
.LBB99_8:
	ld %s0, -48(, %s9)
	st %s0, -8(, %s9)
	br.l .LBB99_12
.LBB99_9:                               #   in Loop: Header=BB99_5 Depth=1
	br.l .LBB99_10
.LBB99_10:                              #   in Loop: Header=BB99_5 Depth=1
	ld %s0, -48(, %s9)
	lea %s0, 1(, %s0)
	st %s0, -48(, %s9)
	br.l .LBB99_5
.LBB99_11:
	or %s0, 0, (0)1
	st %s0, -8(, %s9)
	br.l .LBB99_12
.LBB99_12:
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
	st %s0, -8(, %s9)
	st %s1, -16(, %s9)
	st %s2, -24(, %s9)
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
	brge.l.t %s11, %s8, .LBB101_18
# %bb.17:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB101_18:
	st %s0, 24(, %s11)
	st %s1, 16(, %s11)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	stl %s0, 12(, %s11)
	ld %s0, 24(, %s11)
	brlenan.d 0, %s0, .LBB101_2
	br.l .LBB101_1
.LBB101_1:
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
	br.l .LBB101_4
.LBB101_4:                              # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	lea.sl %s1, 1072693248
	brltnan.d %s0, %s1, .LBB101_6
	br.l .LBB101_5
.LBB101_5:                              #   in Loop: Header=BB101_4 Depth=1
	ldl.sx %s0, 8(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 8(, %s11)
	ld %s0, 24(, %s11)
	lea.sl %s1, 1071644672
	fmul.d %s0, %s0, %s1
	st %s0, 24(, %s11)
	br.l .LBB101_4
.LBB101_6:
	br.l .LBB101_14
.LBB101_7:
	ld %s0, 24(, %s11)
	lea.sl %s1, 1071644672
	brgenan.d %s0, %s1, .LBB101_13
	br.l .LBB101_8
.LBB101_8:
	ld %s0, 24(, %s11)
	breq.d 0, %s0, .LBB101_13
	br.l .LBB101_9
.LBB101_9:
	br.l .LBB101_10
.LBB101_10:                             # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	lea.sl %s1, 1071644672
	brgenan.d %s0, %s1, .LBB101_12
	br.l .LBB101_11
.LBB101_11:                             #   in Loop: Header=BB101_10 Depth=1
	ldl.sx %s0, 8(, %s11)
	adds.w.sx %s0, -1, %s0
	stl %s0, 8(, %s11)
	ld %s0, 24(, %s11)
	fadd.d %s0, %s0, %s0
	st %s0, 24(, %s11)
	br.l .LBB101_10
.LBB101_12:
	br.l .LBB101_13
.LBB101_13:
	br.l .LBB101_14
.LBB101_14:
	ldl.sx %s1, 8(, %s11)
	ld %s0, 16(, %s11)
	stl %s1, (, %s0)
	ldl.sx %s0, 12(, %s11)
	breq.w 0, %s0, .LBB101_16
	br.l .LBB101_15
.LBB101_15:
	ld %s0, 24(, %s11)
	xor %s0, %s0, (1)1
	st %s0, 24(, %s11)
	br.l .LBB101_16
.LBB101_16:
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
	st %s0, 24(, %s11)
	st %s1, 16(, %s11)
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
	ld1b.zx %s1, (, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB102_4
	br.l .LBB102_3
.LBB102_3:                              #   in Loop: Header=BB102_1 Depth=1
	ld %s1, 16(, %s11)
	ld %s0, 8(, %s11)
	adds.l %s0, %s0, %s1
	st %s0, 8(, %s11)
	br.l .LBB102_4
.LBB102_4:                              #   in Loop: Header=BB102_1 Depth=1
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
	brge.l.t %s11, %s8, .LBB103_16
# %bb.15:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB103_16:
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
	brge.w 0, %s0, .LBB103_4
	br.l .LBB103_2
.LBB103_2:                              #   in Loop: Header=BB103_1 Depth=1
	ldl.sx %s0, 20(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	breq.w 0, %s0, .LBB103_4
	br.l .LBB103_3
.LBB103_3:                              #   in Loop: Header=BB103_1 Depth=1
	ldl.zx %s1, 36(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s1, -2147483648
	and %s1, %s1, (32)0
	and %s1, %s0, %s1
	or %s0, 0, (0)1
	cmps.l %s1, %s1, %s0
	cmov.l.eq %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB103_4
.LBB103_4:                              #   in Loop: Header=BB103_1 Depth=1
	ldl.sx %s1, 4(, %s11)                   # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB103_6
	br.l .LBB103_5
.LBB103_5:                              #   in Loop: Header=BB103_1 Depth=1
	ldl.sx %s0, 36(, %s11)
	sla.w.sx %s0, %s0, 1
	stl %s0, 36(, %s11)
	ldl.sx %s0, 20(, %s11)
	sla.w.sx %s0, %s0, 1
	stl %s0, 20(, %s11)
	br.l .LBB103_1
.LBB103_6:
	br.l .LBB103_7
.LBB103_7:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 20(, %s11)
	breq.w 0, %s0, .LBB103_11
	br.l .LBB103_8
.LBB103_8:                              #   in Loop: Header=BB103_7 Depth=1
	ldl.sx %s1, 40(, %s11)
	ldl.sx %s0, 36(, %s11)
	cmpu.w %s0, %s0, %s1
	brlt.w 0, %s0, .LBB103_10
	br.l .LBB103_9
.LBB103_9:                              #   in Loop: Header=BB103_7 Depth=1
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
	br.l .LBB103_10
.LBB103_10:                             #   in Loop: Header=BB103_7 Depth=1
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
	br.l .LBB103_7
.LBB103_11:
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB103_13
	br.l .LBB103_12
.LBB103_12:
	ldl.sx %s0, 40(, %s11)
	stl %s0, 44(, %s11)
	br.l .LBB103_14
.LBB103_13:
	ldl.sx %s0, 16(, %s11)
	stl %s0, 44(, %s11)
	br.l .LBB103_14
.LBB103_14:
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
	ld1b.sx %s0, 11(, %s11)
	brlt.w -1, %s0, .LBB104_2
	br.l .LBB104_1
.LBB104_1:
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
	or %s0, 7, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)
	br.l .LBB104_5
.LBB104_4:
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
	ld %s0, 16(, %s11)
	brlt.l -1, %s0, .LBB105_2
	br.l .LBB105_1
.LBB105_1:
	ld %s0, 16(, %s11)
	xor %s0, -1, %s0
	st %s0, 16(, %s11)
	br.l .LBB105_2
.LBB105_2:
	ld %s0, 16(, %s11)
	brne.l 0, %s0, .LBB105_4
	br.l .LBB105_3
.LBB105_3:
	or %s0, 63, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 28(, %s11)
	br.l .LBB105_5
.LBB105_4:
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
	stl %s1, 28(, %s11)
	stl %s0, 24(, %s11)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 20(, %s11)
	br.l .LBB106_1
.LBB106_1:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 28(, %s11)
	breq.w 0, %s0, .LBB106_5
	br.l .LBB106_2
.LBB106_2:                              #   in Loop: Header=BB106_1 Depth=1
	ld1b.zx %s1, 28(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB106_4
	br.l .LBB106_3
.LBB106_3:                              #   in Loop: Header=BB106_1 Depth=1
	ldl.sx %s1, 24(, %s11)
	ldl.sx %s0, 20(, %s11)
	adds.w.sx %s0, %s0, %s1
	stl %s0, 20(, %s11)
	br.l .LBB106_4
.LBB106_4:                              #   in Loop: Header=BB106_1 Depth=1
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
	brge.l.t %s11, %s8, .LBB107_16
# %bb.15:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB107_16:
	st %s2, 8(, %s11)                       # 8-byte Folded Spill
	or %s2, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s2, 56(, %s11)
	st %s1, 48(, %s11)
	stl %s0, 44(, %s11)
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
	brlt.l 0, %s0, .LBB107_2
	br.l .LBB107_1
.LBB107_1:
	ld %s1, 24(, %s11)
	ld %s0, 16(, %s11)
	ldl.zx %s3, 44(, %s11)
                                        # implicit-def: $sx2
	or %s2, 0, %s3
	adds.l %s0, %s0, %s2
	cmpu.l %s0, %s0, %s1
	brle.l 0, %s0, .LBB107_10
	br.l .LBB107_2
.LBB107_2:
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 40(, %s11)
	br.l .LBB107_3
.LBB107_3:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s1, 40(, %s11)
	ldl.sx %s0, 36(, %s11)
	cmpu.w %s0, %s0, %s1
	brge.w 0, %s0, .LBB107_6
	br.l .LBB107_4
.LBB107_4:                              #   in Loop: Header=BB107_3 Depth=1
	ld %s0, 48(, %s11)
	ldl.zx %s2, 40(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	sll %s1, %s1, 3
	ld %s2, (%s1, %s0)
	ld %s0, 56(, %s11)
	st %s2, (%s1, %s0)
	br.l .LBB107_5
.LBB107_5:                              #   in Loop: Header=BB107_3 Depth=1
	ldl.sx %s0, 40(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 40(, %s11)
	br.l .LBB107_3
.LBB107_6:
	br.l .LBB107_7
.LBB107_7:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s1, 44(, %s11)
	ldl.sx %s0, 32(, %s11)
	cmpu.w %s0, %s0, %s1
	brle.w 0, %s0, .LBB107_9
	br.l .LBB107_8
.LBB107_8:                              #   in Loop: Header=BB107_7 Depth=1
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
	br.l .LBB107_7
.LBB107_9:
	br.l .LBB107_14
.LBB107_10:
	br.l .LBB107_11
.LBB107_11:                             # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 44(, %s11)
	adds.w.sx %s1, -1, %s0
	stl %s1, 44(, %s11)
	breq.w 0, %s0, .LBB107_13
	br.l .LBB107_12
.LBB107_12:                             #   in Loop: Header=BB107_11 Depth=1
	ld %s0, 16(, %s11)
	ldl.zx %s2, 44(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	ld1b.zx %s2, (%s1, %s0)
	ld %s0, 24(, %s11)
	st1b %s2, (%s1, %s0)
	br.l .LBB107_11
.LBB107_13:
	br.l .LBB107_14
.LBB107_14:
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
	brge.l.t %s11, %s8, .LBB108_15
# %bb.14:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB108_15:
	st %s2, 8(, %s11)                       # 8-byte Folded Spill
	or %s2, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s2, 56(, %s11)
	st %s1, 48(, %s11)
	stl %s0, 44(, %s11)
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
	brlt.l 0, %s0, .LBB108_2
	br.l .LBB108_1
.LBB108_1:
	ld %s1, 24(, %s11)
	ld %s0, 16(, %s11)
	ldl.zx %s3, 44(, %s11)
                                        # implicit-def: $sx2
	or %s2, 0, %s3
	adds.l %s0, %s0, %s2
	cmpu.l %s0, %s0, %s1
	brle.l 0, %s0, .LBB108_9
	br.l .LBB108_2
.LBB108_2:
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 40(, %s11)
	br.l .LBB108_3
.LBB108_3:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s1, 40(, %s11)
	ldl.sx %s0, 36(, %s11)
	cmpu.w %s0, %s0, %s1
	brge.w 0, %s0, .LBB108_6
	br.l .LBB108_4
.LBB108_4:                              #   in Loop: Header=BB108_3 Depth=1
	ld %s0, 48(, %s11)
	ldl.zx %s2, 40(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	sll %s1, %s1, 1
	ld2b.zx %s2, (%s1, %s0)
	ld %s0, 56(, %s11)
	st2b %s2, (%s1, %s0)
	br.l .LBB108_5
.LBB108_5:                              #   in Loop: Header=BB108_3 Depth=1
	ldl.sx %s0, 40(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 40(, %s11)
	br.l .LBB108_3
.LBB108_6:
	ld1b.zx %s1, 44(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB108_8
	br.l .LBB108_7
.LBB108_7:
	ld %s0, 16(, %s11)
	ldl.sx %s1, 44(, %s11)
	adds.w.sx %s1, -1, %s1
	adds.w.zx %s2, %s1, (0)1
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	ld1b.zx %s2, (%s1, %s0)
	ld %s0, 24(, %s11)
	st1b %s2, (%s1, %s0)
	br.l .LBB108_8
.LBB108_8:
	br.l .LBB108_13
.LBB108_9:
	br.l .LBB108_10
.LBB108_10:                             # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 44(, %s11)
	adds.w.sx %s1, -1, %s0
	stl %s1, 44(, %s11)
	breq.w 0, %s0, .LBB108_12
	br.l .LBB108_11
.LBB108_11:                             #   in Loop: Header=BB108_10 Depth=1
	ld %s0, 16(, %s11)
	ldl.zx %s2, 44(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	ld1b.zx %s2, (%s1, %s0)
	ld %s0, 24(, %s11)
	st1b %s2, (%s1, %s0)
	br.l .LBB108_10
.LBB108_12:
	br.l .LBB108_13
.LBB108_13:
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
	brge.l.t %s11, %s8, .LBB109_16
# %bb.15:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB109_16:
	st %s2, 8(, %s11)                       # 8-byte Folded Spill
	or %s2, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s2, 56(, %s11)
	st %s1, 48(, %s11)
	stl %s0, 44(, %s11)
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
	brlt.l 0, %s0, .LBB109_2
	br.l .LBB109_1
.LBB109_1:
	ld %s1, 24(, %s11)
	ld %s0, 16(, %s11)
	ldl.zx %s3, 44(, %s11)
                                        # implicit-def: $sx2
	or %s2, 0, %s3
	adds.l %s0, %s0, %s2
	cmpu.l %s0, %s0, %s1
	brle.l 0, %s0, .LBB109_10
	br.l .LBB109_2
.LBB109_2:
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 40(, %s11)
	br.l .LBB109_3
.LBB109_3:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s1, 40(, %s11)
	ldl.sx %s0, 36(, %s11)
	cmpu.w %s0, %s0, %s1
	brge.w 0, %s0, .LBB109_6
	br.l .LBB109_4
.LBB109_4:                              #   in Loop: Header=BB109_3 Depth=1
	ld %s0, 48(, %s11)
	ldl.zx %s2, 40(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	sll %s1, %s1, 2
	ldl.sx %s2, (%s1, %s0)
	ld %s0, 56(, %s11)
	stl %s2, (%s1, %s0)
	br.l .LBB109_5
.LBB109_5:                              #   in Loop: Header=BB109_3 Depth=1
	ldl.sx %s0, 40(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 40(, %s11)
	br.l .LBB109_3
.LBB109_6:
	br.l .LBB109_7
.LBB109_7:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s1, 44(, %s11)
	ldl.sx %s0, 32(, %s11)
	cmpu.w %s0, %s0, %s1
	brle.w 0, %s0, .LBB109_9
	br.l .LBB109_8
.LBB109_8:                              #   in Loop: Header=BB109_7 Depth=1
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
	br.l .LBB109_7
.LBB109_9:
	br.l .LBB109_14
.LBB109_10:
	br.l .LBB109_11
.LBB109_11:                             # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 44(, %s11)
	adds.w.sx %s1, -1, %s0
	stl %s1, 44(, %s11)
	breq.w 0, %s0, .LBB109_13
	br.l .LBB109_12
.LBB109_12:                             #   in Loop: Header=BB109_11 Depth=1
	ld %s0, 16(, %s11)
	ldl.zx %s2, 44(, %s11)
                                        # implicit-def: $sx1
	or %s1, 0, %s2
	ld1b.zx %s2, (%s1, %s0)
	ld %s0, 24(, %s11)
	st1b %s2, (%s1, %s0)
	br.l .LBB109_11
.LBB109_13:
	br.l .LBB109_14
.LBB109_14:
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
	stl %s1, 12(, %s11)
	stl %s0, 8(, %s11)
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
	stl %s0, 12(, %s11)
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
	stl %s0, 12(, %s11)
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
	st %s0, 8(, %s11)
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
	st %s0, 8(, %s11)
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
	stl %s1, 12(, %s11)
	stl %s0, 8(, %s11)
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
	st2b %s0, 14(, %s11)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	br.l .LBB116_1
.LBB116_1:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 8(, %s11)
	brlt.w 15, %s0, .LBB116_6
	br.l .LBB116_2
.LBB116_2:                              #   in Loop: Header=BB116_1 Depth=1
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
	br.l .LBB116_6
.LBB116_4:                              #   in Loop: Header=BB116_1 Depth=1
	br.l .LBB116_5
.LBB116_5:                              #   in Loop: Header=BB116_1 Depth=1
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
	st2b %s0, 14(, %s11)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 8(, %s11)
	br.l .LBB117_1
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 8(, %s11)
	brlt.w 15, %s0, .LBB117_6
	br.l .LBB117_2
.LBB117_2:                              #   in Loop: Header=BB117_1 Depth=1
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
	br.l .LBB117_6
.LBB117_4:                              #   in Loop: Header=BB117_1 Depth=1
	br.l .LBB117_5
.LBB117_5:                              #   in Loop: Header=BB117_1 Depth=1
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
	ldu %s0, 4(, %s11)
	lea.sl %s1, 1191182336
                                        # kill: def $sf1 killed $sf1 killed $sx1
	brltnan.s %s0, %s1, .LBB118_2
	br.l .LBB118_1
.LBB118_1:
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
	st2b %s0, 14(, %s11)
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
	ldl.sx %s0, 4(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 4(, %s11)
	br.l .LBB119_4
.LBB119_4:                              #   in Loop: Header=BB119_1 Depth=1
	br.l .LBB119_5
.LBB119_5:                              #   in Loop: Header=BB119_1 Depth=1
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
	st2b %s0, 14(, %s11)
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
	ldl.sx %s0, 4(, %s11)
	adds.w.sx %s0, 1, %s0
	stl %s0, 4(, %s11)
	br.l .LBB120_4
.LBB120_4:                              #   in Loop: Header=BB120_1 Depth=1
	br.l .LBB120_5
.LBB120_5:                              #   in Loop: Header=BB120_1 Depth=1
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
	stl %s1, 28(, %s11)
	stl %s0, 24(, %s11)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 20(, %s11)
	br.l .LBB121_1
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 28(, %s11)
	breq.w 0, %s0, .LBB121_5
	br.l .LBB121_2
.LBB121_2:                              #   in Loop: Header=BB121_1 Depth=1
	ld1b.zx %s1, 28(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB121_4
	br.l .LBB121_3
.LBB121_3:                              #   in Loop: Header=BB121_1 Depth=1
	ldl.sx %s1, 24(, %s11)
	ldl.sx %s0, 20(, %s11)
	adds.w.sx %s0, %s0, %s1
	stl %s0, 20(, %s11)
	br.l .LBB121_4
.LBB121_4:                              #   in Loop: Header=BB121_1 Depth=1
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
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 16(, %s11)
	ldl.sx %s0, 24(, %s11)
	brne.w 0, %s0, .LBB122_2
	br.l .LBB122_1
.LBB122_1:
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 28(, %s11)
	br.l .LBB122_8
.LBB122_2:
	br.l .LBB122_3
.LBB122_3:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 20(, %s11)
	breq.w 0, %s0, .LBB122_7
	br.l .LBB122_4
.LBB122_4:                              #   in Loop: Header=BB122_3 Depth=1
	ld1b.zx %s1, 20(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB122_6
	br.l .LBB122_5
.LBB122_5:                              #   in Loop: Header=BB122_3 Depth=1
	ldl.sx %s1, 24(, %s11)
	ldl.sx %s0, 16(, %s11)
	adds.w.sx %s0, %s0, %s1
	stl %s0, 16(, %s11)
	br.l .LBB122_6
.LBB122_6:                              #   in Loop: Header=BB122_3 Depth=1
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
	brge.l.t %s11, %s8, .LBB123_16
# %bb.15:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB123_16:
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
	brge.w 0, %s0, .LBB123_4
	br.l .LBB123_2
.LBB123_2:                              #   in Loop: Header=BB123_1 Depth=1
	ldl.sx %s0, 28(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 12(, %s11)                     # 4-byte Folded Spill
	breq.w 0, %s0, .LBB123_4
	br.l .LBB123_3
.LBB123_3:                              #   in Loop: Header=BB123_1 Depth=1
	ldl.zx %s1, 36(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s1, -2147483648
	and %s1, %s1, (32)0
	and %s1, %s0, %s1
	or %s0, 0, (0)1
	cmps.l %s1, %s1, %s0
	cmov.l.eq %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB123_4
.LBB123_4:                              #   in Loop: Header=BB123_1 Depth=1
	ldl.sx %s1, 12(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB123_6
	br.l .LBB123_5
.LBB123_5:                              #   in Loop: Header=BB123_1 Depth=1
	ldl.sx %s0, 36(, %s11)
	sla.w.sx %s0, %s0, 1
	stl %s0, 36(, %s11)
	ldl.sx %s0, 28(, %s11)
	sla.w.sx %s0, %s0, 1
	stl %s0, 28(, %s11)
	br.l .LBB123_1
.LBB123_6:
	br.l .LBB123_7
.LBB123_7:                              # =>This Inner Loop Header: Depth=1
	ldl.sx %s0, 28(, %s11)
	breq.w 0, %s0, .LBB123_11
	br.l .LBB123_8
.LBB123_8:                              #   in Loop: Header=BB123_7 Depth=1
	ldl.sx %s1, 40(, %s11)
	ldl.sx %s0, 36(, %s11)
	cmpu.w %s0, %s0, %s1
	brlt.w 0, %s0, .LBB123_10
	br.l .LBB123_9
.LBB123_9:                              #   in Loop: Header=BB123_7 Depth=1
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
	br.l .LBB123_10
.LBB123_10:                             #   in Loop: Header=BB123_7 Depth=1
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
	br.l .LBB123_7
.LBB123_11:
	ldl.sx %s0, 32(, %s11)
	breq.w 0, %s0, .LBB123_13
	br.l .LBB123_12
.LBB123_12:
	ldl.sx %s0, 40(, %s11)
	stl %s0, 44(, %s11)
	br.l .LBB123_14
.LBB123_13:
	ldl.sx %s0, 24(, %s11)
	stl %s0, 44(, %s11)
	br.l .LBB123_14
.LBB123_14:
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
	ldu %s0, 24(, %s11)
	ldu %s1, 20(, %s11)
	brgenan.s %s0, %s1, .LBB124_2
	br.l .LBB124_1
.LBB124_1:
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
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 28(, %s11)
	br.l .LBB124_5
.LBB124_4:
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
	ld %s0, 16(, %s11)
	ld %s1, 8(, %s11)
	brgenan.d %s0, %s1, .LBB125_2
	br.l .LBB125_1
.LBB125_1:
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
	or %s0, 1, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 28(, %s11)
	br.l .LBB125_5
.LBB125_4:
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
	st %s0, 8(, %s11)
	st %s1, (, %s11)
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
	st %s0, 8(, %s11)
	st %s1, (, %s11)
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
	brge.l.t %s11, %s8, .LBB128_15
# %bb.14:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB128_15:
	st %s1, 16(, %s11)                      # 8-byte Folded Spill
	or %s1, 0, %s0
	ld %s0, 16(, %s11)                      # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	and %s1, %s1, (32)0
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 44(, %s11)
	stl %s0, 40(, %s11)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 32(, %s11)
	stl %s0, 28(, %s11)
	ldl.sx %s0, 40(, %s11)
	brlt.w -1, %s0, .LBB128_2
	br.l .LBB128_1
.LBB128_1:
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
	breq.w 0, %s0, .LBB128_5
	br.l .LBB128_4
.LBB128_4:                              #   in Loop: Header=BB128_3 Depth=1
	ld1b.sx %s1, 39(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	or %s1, 32, (0)1
	cmpu.l %s1, %s0, %s1
	or %s0, 0, (0)1
	cmov.l.lt %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 12(, %s11)                     # 4-byte Folded Spill
	br.l .LBB128_5
.LBB128_5:                              #   in Loop: Header=BB128_3 Depth=1
	ldl.sx %s1, 12(, %s11)                  # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB128_10
	br.l .LBB128_6
.LBB128_6:                              #   in Loop: Header=BB128_3 Depth=1
	ld1b.zx %s1, 40(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB128_8
	br.l .LBB128_7
.LBB128_7:                              #   in Loop: Header=BB128_3 Depth=1
	ldl.sx %s1, 44(, %s11)
	ldl.sx %s0, 28(, %s11)
	adds.w.sx %s0, %s0, %s1
	stl %s0, 28(, %s11)
	br.l .LBB128_8
.LBB128_8:                              #   in Loop: Header=BB128_3 Depth=1
	ldl.sx %s0, 44(, %s11)
	sla.w.sx %s0, %s0, 1
	stl %s0, 44(, %s11)
	ldl.sx %s0, 40(, %s11)
	sra.w.sx %s0, %s0, 1
	stl %s0, 40(, %s11)
	br.l .LBB128_9
.LBB128_9:                              #   in Loop: Header=BB128_3 Depth=1
	ld1b.zx %s0, 39(, %s11)
	adds.w.sx %s0, 1, %s0
	st1b %s0, 39(, %s11)
	br.l .LBB128_3
.LBB128_10:
	ldl.sx %s0, 32(, %s11)
	breq.w 0, %s0, .LBB128_12
	br.l .LBB128_11
.LBB128_11:
	ldl.sx %s0, 28(, %s11)
	subs.w.sx %s0, 0, %s0
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB128_13
.LBB128_12:
	ldl.sx %s0, 28(, %s11)
	stl %s0, 8(, %s11)                      # 4-byte Folded Spill
	br.l .LBB128_13
.LBB128_13:
	ldl.sx %s0, 8(, %s11)                   # 4-byte Folded Reload
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
	st %s0, -8(, %s9)
	st %s1, -16(, %s9)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -20(, %s9)
	ld %s0, -8(, %s9)
	brlt.l -1, %s0, .LBB129_2
	br.l .LBB129_1
.LBB129_1:
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
	st %s0, -8(, %s9)
	st %s1, -16(, %s9)
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, -20(, %s9)
	ld %s0, -8(, %s9)
	brlt.l -1, %s0, .LBB130_2
	br.l .LBB130_1
.LBB130_1:
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
	brge.l.t %s11, %s8, .LBB131_16
# %bb.15:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB131_16:
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
	brge.w %s0, %s1, .LBB131_4
	br.l .LBB131_2
.LBB131_2:                              #   in Loop: Header=BB131_1 Depth=1
	ld2b.zx %s0, 18(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	breq.w 0, %s0, .LBB131_4
	br.l .LBB131_3
.LBB131_3:                              #   in Loop: Header=BB131_1 Depth=1
	ld2b.zx %s1, 26(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s1, 32768
	and %s0, %s0, %s1
	or %s1, 0, %s0
	or %s0, 0, (0)1
	or %s2, 0, %s0
	cmps.w.sx %s1, %s1, %s2
	cmov.w.eq %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB131_4
.LBB131_4:                              #   in Loop: Header=BB131_1 Depth=1
	ldl.sx %s1, 4(, %s11)                   # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB131_6
	br.l .LBB131_5
.LBB131_5:                              #   in Loop: Header=BB131_1 Depth=1
	ld2b.zx %s0, 26(, %s11)
	sla.w.sx %s0, %s0, 1
	st2b %s0, 26(, %s11)
	ld2b.zx %s0, 18(, %s11)
	sla.w.sx %s0, %s0, 1
	st2b %s0, 18(, %s11)
	br.l .LBB131_1
.LBB131_6:
	br.l .LBB131_7
.LBB131_7:                              # =>This Inner Loop Header: Depth=1
	ld2b.zx %s0, 18(, %s11)
	breq.w 0, %s0, .LBB131_11
	br.l .LBB131_8
.LBB131_8:                              #   in Loop: Header=BB131_7 Depth=1
	ld2b.zx %s0, 28(, %s11)
	ld2b.zx %s1, 26(, %s11)
	brlt.w %s0, %s1, .LBB131_10
	br.l .LBB131_9
.LBB131_9:                              #   in Loop: Header=BB131_7 Depth=1
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
	br.l .LBB131_10
.LBB131_10:                             #   in Loop: Header=BB131_7 Depth=1
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
	br.l .LBB131_7
.LBB131_11:
	ldl.sx %s0, 20(, %s11)
	breq.w 0, %s0, .LBB131_13
	br.l .LBB131_12
.LBB131_12:
	ld2b.zx %s0, 28(, %s11)
	st2b %s0, 30(, %s11)
	br.l .LBB131_14
.LBB131_13:
	ld2b.zx %s0, 16(, %s11)
	st2b %s0, 30(, %s11)
	br.l .LBB131_14
.LBB131_14:
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
	brge.l.t %s11, %s8, .LBB132_16
# %bb.15:
	ld %s61, 24(, %s14)
	or %s62, 0, %s0
	lea %s63, 315
	shm.l %s63, (%s61)
	shm.l %s8, 8(%s61)
	shm.l %s11, 16(%s61)
	monc
	or %s0, 0, %s62
.LBB132_16:
	st %s2, 8(, %s11)                       # 8-byte Folded Spill
	or %s2, 0, %s0
	ld %s0, 8(, %s11)                       # 8-byte Folded Reload
	and %s0, %s0, (32)0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	st %s2, 48(, %s11)
	st %s1, 40(, %s11)
	stl %s0, 36(, %s11)
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
	brge.l 0, %s0, .LBB132_4
	br.l .LBB132_2
.LBB132_2:                              #   in Loop: Header=BB132_1 Depth=1
	ld %s0, 24(, %s11)
	or %s1, 0, (0)1
                                        # kill: def $sw1 killed $sw1 killed $sx1
	stl %s1, 4(, %s11)                      # 4-byte Folded Spill
	breq.l 0, %s0, .LBB132_4
	br.l .LBB132_3
.LBB132_3:                              #   in Loop: Header=BB132_1 Depth=1
	ld1b.zx %s1, 43(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	lea %s1, 128
	and %s0, %s0, %s1
	or %s1, 0, %s0
	or %s0, 0, (0)1
	or %s2, 0, %s0
	cmps.w.sx %s1, %s1, %s2
	cmov.w.eq %s0, (63)0, %s1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB132_4
.LBB132_4:                              #   in Loop: Header=BB132_1 Depth=1
	ldl.sx %s1, 4(, %s11)                   # 4-byte Folded Reload
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB132_6
	br.l .LBB132_5
.LBB132_5:                              #   in Loop: Header=BB132_1 Depth=1
	ld %s0, 40(, %s11)
	sll %s0, %s0, 1
	st %s0, 40(, %s11)
	ld %s0, 24(, %s11)
	sll %s0, %s0, 1
	st %s0, 24(, %s11)
	br.l .LBB132_1
.LBB132_6:
	br.l .LBB132_7
.LBB132_7:                              # =>This Inner Loop Header: Depth=1
	ld %s0, 24(, %s11)
	breq.l 0, %s0, .LBB132_11
	br.l .LBB132_8
.LBB132_8:                              #   in Loop: Header=BB132_7 Depth=1
	ld %s1, 48(, %s11)
	ld %s0, 40(, %s11)
	cmpu.l %s0, %s0, %s1
	brlt.l 0, %s0, .LBB132_10
	br.l .LBB132_9
.LBB132_9:                              #   in Loop: Header=BB132_7 Depth=1
	ld %s1, 40(, %s11)
	ld %s0, 48(, %s11)
	subs.l %s0, %s0, %s1
	st %s0, 48(, %s11)
	ld %s1, 24(, %s11)
	ld %s0, 16(, %s11)
	or %s0, %s0, %s1
	st %s0, 16(, %s11)
	br.l .LBB132_10
.LBB132_10:                             #   in Loop: Header=BB132_7 Depth=1
	ld %s0, 24(, %s11)
	srl %s0, %s0, 1
	st %s0, 24(, %s11)
	ld %s0, 40(, %s11)
	srl %s0, %s0, 1
	st %s0, 40(, %s11)
	br.l .LBB132_7
.LBB132_11:
	ldl.sx %s0, 36(, %s11)
	breq.w 0, %s0, .LBB132_13
	br.l .LBB132_12
.LBB132_12:
	ld %s0, 48(, %s11)
	st %s0, 56(, %s11)
	br.l .LBB132_14
.LBB132_13:
	ld %s0, 16(, %s11)
	st %s0, 56(, %s11)
	br.l .LBB132_14
.LBB132_14:
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
	ld %s0, 32(, %s11)
	st %s0, 40(, %s11)
	br.l .LBB133_6
.LBB133_4:
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
	ld %s0, 64(, %s11)
	ld %s1, 72(, %s11)
	st %s1, 88(, %s11)
	st %s0, 80(, %s11)
	br.l .LBB134_6
.LBB134_4:
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
	ld %s0, 32(, %s11)
	st %s0, 40(, %s11)
	br.l .LBB135_6
.LBB135_4:
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
	ld %s0, 64(, %s11)
	ld %s1, 72(, %s11)
	st %s1, 88(, %s11)
	st %s0, 80(, %s11)
	br.l .LBB136_6
.LBB136_4:
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
	st %s0, 8(, %s11)
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
	stl %s0, 12(, %s11)
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
	stl %s0, 12(, %s11)
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
	st %s1, 40(, %s11)
	st %s0, 32(, %s11)
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
	ld %s0, 32(, %s11)
	st %s0, 16(, %s11)
	ld %s0, 24(, %s11)
	st %s0, 8(, %s11)
	ldl.sx %s0, 20(, %s11)
	ldl.sx %s1, 12(, %s11)
	brge.w %s0, %s1, .LBB141_2
	br.l .LBB141_1
.LBB141_1:
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
	or %s0, 2, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 44(, %s11)
	br.l .LBB141_9
.LBB141_8:
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
	st %s0, -8(, %s9)
	st %s1, -16(, %s9)
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
	or %s0, 2, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 76(, %s11)
	br.l .LBB143_9
.LBB143_8:
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
	stl %s0, 12(, %s11)
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
	st %s1, 40(, %s11)
	st %s0, 32(, %s11)
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
	ld %s0, 16(, %s11)
	ld %s1, 24(, %s11)
	st %s1, 8(, %s11)
	st %s0, (, %s11)
	ld %s0, (, %s11)
	brne.l 0, %s0, .LBB146_4
	br.l .LBB146_1
.LBB146_1:
	ld %s0, 8(, %s11)
	brne.l 0, %s0, .LBB146_3
	br.l .LBB146_2
.LBB146_2:
	or %s0, 0, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 44(, %s11)
	br.l .LBB146_5
.LBB146_3:
	ld %s0, 8(, %s11)
	lea %s1, -1(, %s0)
	nnd %s0, %s0, %s1
	pcnt %s0, %s0
	lea %s0, 65(, %s0)
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 44(, %s11)
	br.l .LBB146_5
.LBB146_4:
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
	ld %s0, 32(, %s11)
	st %s0, 40(, %s11)
	br.l .LBB147_6
.LBB147_4:
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
	ld %s0, 64(, %s11)
	ld %s1, 72(, %s11)
	st %s1, 88(, %s11)
	st %s0, 80(, %s11)
	br.l .LBB148_6
.LBB148_4:
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
	stl %s1, 44(, %s11)
	stl %s0, 40(, %s11)
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
	st %s0, -8(, %s9)
	st %s1, -16(, %s9)
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
	st %s0, 56(, %s11)
	st %s1, 48(, %s11)
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
	st %s1, -8(, %s9)
	st %s0, -16(, %s9)
	st %s3, -24(, %s9)
	st %s2, -32(, %s9)
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
	st %s0, 8(, %s11)
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
	st %s1, 8(, %s11)
	st %s0, (, %s11)
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
	st %s0, 24(, %s11)
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
	st %s1, 40(, %s11)
	st %s0, 32(, %s11)
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
	stl %s0, 12(, %s11)
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
	st %s0, 24(, %s11)
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
	stl %s0, 12(, %s11)
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
	st %s1, 40(, %s11)
	st %s0, 32(, %s11)
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
	ld1b.zx %s1, 36(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB161_3
	br.l .LBB161_2
.LBB161_2:                              #   in Loop: Header=BB161_1 Depth=1
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
	br.l .LBB161_6
.LBB161_5:                              #   in Loop: Header=BB161_1 Depth=1
	ld %s0, 40(, %s11)
	fmul.d %s0, %s0, %s0
	st %s0, 40(, %s11)
	br.l .LBB161_1
.LBB161_6:
	ldl.sx %s0, 32(, %s11)
	breq.w 0, %s0, .LBB161_8
	br.l .LBB161_7
.LBB161_7:
	ld %s1, 24(, %s11)
	lea.sl %s0, 1072693248
	fdiv.d %s0, %s0, %s1
	st %s0, 8(, %s11)                       # 8-byte Folded Spill
	br.l .LBB161_9
.LBB161_8:
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
	ld1b.zx %s1, 24(, %s11)
                                        # implicit-def: $sx0
	or %s0, 0, %s1
	and %s0, 1, %s0
                                        # kill: def $sw0 killed $sw0 killed $sx0
	breq.w 0, %s0, .LBB162_3
	br.l .LBB162_2
.LBB162_2:                              #   in Loop: Header=BB162_1 Depth=1
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
	br.l .LBB162_6
.LBB162_5:                              #   in Loop: Header=BB162_1 Depth=1
	ldu %s0, 28(, %s11)
	fmul.s %s0, %s0, %s0
	stu %s0, 28(, %s11)
	br.l .LBB162_1
.LBB162_6:
	ldl.sx %s0, 20(, %s11)
	breq.w 0, %s0, .LBB162_8
	br.l .LBB162_7
.LBB162_7:
	ldu %s1, 16(, %s11)
	lea.sl %s0, 1065353216
                                        # kill: def $sf0 killed $sf0 killed $sx0
	fdiv.s %s0, %s0, %s1
	stu %s0, 4(, %s11)                      # 4-byte Folded Spill
	br.l .LBB162_9
.LBB162_8:
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
	or %s0, 2, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 44(, %s11)
	br.l .LBB163_9
.LBB163_8:
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
	st %s0, -8(, %s9)
	st %s1, -16(, %s9)
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
	or %s0, 2, (0)1
                                        # kill: def $sw0 killed $sw0 killed $sx0
	stl %s0, 76(, %s11)
	br.l .LBB165_9
.LBB165_8:
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
	.ident	"clang version 19.1.5 (Fedora 19.1.5-1.fc41)"
	.section	".note.GNU-stack","",@progbits
