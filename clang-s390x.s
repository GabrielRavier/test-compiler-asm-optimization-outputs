	.text
	.file	"mini-libc.c"
	.globl	make_ti                         # -- Begin function make_ti
	.p2align	4
	.type	make_ti,@function
make_ti:                                # @make_ti
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r3, 184(%r11)
	stg	%r4, 176(%r11)
	lg	%r0, 184(%r11)
	stg	%r0, 160(%r11)
	lg	%r0, 176(%r11)
	stg	%r0, 168(%r11)
	lg	%r0, 160(%r11)
	lg	%r1, 168(%r11)
	stg	%r1, 8(%r2)
	stg	%r0, 0(%r2)
	lmg	%r11, %r15, 280(%r11)
	br	%r14
.Lfunc_end0:
	.size	make_ti, .Lfunc_end0-make_ti
	.cfi_endproc
                                        # -- End function
	.globl	make_tu                         # -- Begin function make_tu
	.p2align	4
	.type	make_tu,@function
make_tu:                                # @make_tu
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r3, 184(%r11)
	stg	%r4, 176(%r11)
	lg	%r0, 184(%r11)
	stg	%r0, 160(%r11)
	lg	%r0, 176(%r11)
	stg	%r0, 168(%r11)
	lg	%r0, 160(%r11)
	lg	%r1, 168(%r11)
	stg	%r1, 8(%r2)
	stg	%r0, 0(%r2)
	lmg	%r11, %r15, 280(%r11)
	br	%r14
.Lfunc_end1:
	.size	make_tu, .Lfunc_end1-make_tu
	.cfi_endproc
                                        # -- End function
	.globl	memmove                         # -- Begin function memmove
	.p2align	4
	.type	memmove,@function
memmove:                                # @memmove
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 192(%r11)
	stg	%r3, 184(%r11)
	stg	%r4, 176(%r11)
	lg	%r0, 192(%r11)
	stg	%r0, 168(%r11)
	lg	%r0, 184(%r11)
	stg	%r0, 160(%r11)
	lg	%r0, 160(%r11)
	lg	%r1, 168(%r11)
	clgr	%r0, %r1
	jhe	.LBB2_6
	j	.LBB2_1
.LBB2_1:
	lg	%r2, 176(%r11)
	lg	%r1, 160(%r11)
	la	%r0, 0(%r2,%r1)
	stg	%r0, 160(%r11)
	lg	%r2, 176(%r11)
	lg	%r1, 168(%r11)
	la	%r0, 0(%r2,%r1)
	stg	%r0, 168(%r11)
	j	.LBB2_2
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB2_5
	j	.LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_2 Depth=1
	lg	%r1, 160(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 160(%r11)
	lb	%r0, -1(%r1)
	lg	%r1, 168(%r11)
	lay	%r2, -1(%r1)
	stg	%r2, 168(%r11)
	stcy	%r0, -1(%r1)
	j	.LBB2_4
.LBB2_4:                                #   in Loop: Header=BB2_2 Depth=1
	lg	%r1, 176(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 176(%r11)
	j	.LBB2_2
.LBB2_5:
	j	.LBB2_13
.LBB2_6:
	lg	%r0, 160(%r11)
	lg	%r1, 168(%r11)
	cgr	%r0, %r1
	je	.LBB2_12
	j	.LBB2_7
.LBB2_7:
	j	.LBB2_8
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB2_11
	j	.LBB2_9
.LBB2_9:                                #   in Loop: Header=BB2_8 Depth=1
	lg	%r1, 160(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 160(%r11)
	lb	%r0, 0(%r1)
	lg	%r1, 168(%r11)
	la	%r2, 1(%r1)
	stg	%r2, 168(%r11)
	stc	%r0, 0(%r1)
	j	.LBB2_10
.LBB2_10:                               #   in Loop: Header=BB2_8 Depth=1
	lg	%r1, 176(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 176(%r11)
	j	.LBB2_8
.LBB2_11:
	j	.LBB2_12
.LBB2_12:
	j	.LBB2_13
.LBB2_13:
	lg	%r2, 192(%r11)
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end2:
	.size	memmove, .Lfunc_end2-memmove
	.cfi_endproc
                                        # -- End function
	.globl	memccpy                         # -- Begin function memccpy
	.p2align	4
	.type	memccpy,@function
memccpy:                                # @memccpy
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -224
	.cfi_def_cfa_offset 384
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r4
	stg	%r2, 208(%r11)
	stg	%r3, 200(%r11)
	st	%r0, 196(%r11)
	stg	%r5, 184(%r11)
	lg	%r0, 208(%r11)
	stg	%r0, 176(%r11)
	lg	%r0, 200(%r11)
	stg	%r0, 168(%r11)
	llc	%r0, 199(%r11)
	st	%r0, 196(%r11)
	j	.LBB3_1
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	lg	%r1, 184(%r11)
	lhi	%r0, 0
	cghi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB3_3
	j	.LBB3_2
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
	lg	%r1, 168(%r11)
	llc	%r0, 0(%r1)
	lg	%r1, 176(%r11)
	stc	%r0, 0(%r1)
	l	%r1, 196(%r11)
	cr	%r0, %r1
	ipm	%r0
	afi	%r0, 1879048192
	srl	%r0, 31
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB3_3
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB3_6
	j	.LBB3_4
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	j	.LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
	lg	%r1, 184(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 184(%r11)
	lg	%r1, 168(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 168(%r11)
	lg	%r1, 176(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 176(%r11)
	j	.LBB3_1
.LBB3_6:
	lg	%r0, 184(%r11)
	cghi	%r0, 0
	je	.LBB3_8
	j	.LBB3_7
.LBB3_7:
	lg	%r1, 176(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 216(%r11)
	j	.LBB3_9
.LBB3_8:
	mvghi	216(%r11), 0
	j	.LBB3_9
.LBB3_9:
	lg	%r2, 216(%r11)
	lmg	%r11, %r15, 312(%r11)
	br	%r14
.Lfunc_end3:
	.size	memccpy, .Lfunc_end3-memccpy
	.cfi_endproc
                                        # -- End function
	.globl	memchr                          # -- Begin function memchr
	.p2align	4
	.type	memchr,@function
memchr:                                 # @memchr
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -208
	.cfi_def_cfa_offset 368
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	stg	%r2, 200(%r11)
	st	%r0, 196(%r11)
	stg	%r4, 184(%r11)
	lg	%r0, 200(%r11)
	stg	%r0, 176(%r11)
	llc	%r0, 199(%r11)
	st	%r0, 196(%r11)
	j	.LBB4_1
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	lg	%r1, 184(%r11)
	lhi	%r0, 0
	cghi	%r1, 0
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	je	.LBB4_3
	j	.LBB4_2
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	lg	%r1, 176(%r11)
	llc	%r0, 0(%r1)
	l	%r1, 196(%r11)
	cr	%r0, %r1
	ipm	%r0
	afi	%r0, 1879048192
	srl	%r0, 31
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	j	.LBB4_3
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	l	%r0, 172(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB4_6
	j	.LBB4_4
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	j	.LBB4_5
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	lg	%r1, 176(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 176(%r11)
	lg	%r1, 184(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 184(%r11)
	j	.LBB4_1
.LBB4_6:
	lg	%r0, 184(%r11)
	cghi	%r0, 0
	je	.LBB4_8
	j	.LBB4_7
.LBB4_7:
	lg	%r0, 176(%r11)
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB4_9
.LBB4_8:
	lghi	%r0, 0
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB4_9
.LBB4_9:
	lg	%r2, 160(%r11)                  # 8-byte Folded Reload
	lmg	%r11, %r15, 296(%r11)
	br	%r14
.Lfunc_end4:
	.size	memchr, .Lfunc_end4-memchr
	.cfi_endproc
                                        # -- End function
	.globl	memcmp                          # -- Begin function memcmp
	.p2align	4
	.type	memcmp,@function
memcmp:                                 # @memcmp
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -208
	.cfi_def_cfa_offset 368
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 200(%r11)
	stg	%r3, 192(%r11)
	stg	%r4, 184(%r11)
	lg	%r0, 200(%r11)
	stg	%r0, 176(%r11)
	lg	%r0, 192(%r11)
	stg	%r0, 168(%r11)
	j	.LBB5_1
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	lg	%r1, 184(%r11)
	lhi	%r0, 0
	cghi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB5_3
	j	.LBB5_2
.LBB5_2:                                #   in Loop: Header=BB5_1 Depth=1
	lg	%r1, 176(%r11)
	llc	%r0, 0(%r1)
	lg	%r1, 168(%r11)
	llc	%r1, 0(%r1)
	cr	%r0, %r1
	ipm	%r0
	afi	%r0, -268435456
	srl	%r0, 31
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB5_3
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB5_6
	j	.LBB5_4
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	j	.LBB5_5
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
	lg	%r1, 184(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 184(%r11)
	lg	%r1, 176(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 176(%r11)
	lg	%r1, 168(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 168(%r11)
	j	.LBB5_1
.LBB5_6:
	lg	%r0, 184(%r11)
	cghi	%r0, 0
	je	.LBB5_8
	j	.LBB5_7
.LBB5_7:
	lg	%r1, 176(%r11)
	llc	%r0, 0(%r1)
	lg	%r1, 168(%r11)
	llc	%r1, 0(%r1)
	sr	%r0, %r1
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB5_9
.LBB5_8:
	lhi	%r0, 0
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB5_9
.LBB5_9:
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
	lgfr	%r2, %r0
	lmg	%r11, %r15, 296(%r11)
	br	%r14
.Lfunc_end5:
	.size	memcmp, .Lfunc_end5-memcmp
	.cfi_endproc
                                        # -- End function
	.globl	memcpy                          # -- Begin function memcpy
	.p2align	4
	.type	memcpy,@function
memcpy:                                 # @memcpy
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 192(%r11)
	stg	%r3, 184(%r11)
	stg	%r4, 176(%r11)
	lg	%r0, 192(%r11)
	stg	%r0, 168(%r11)
	lg	%r0, 184(%r11)
	stg	%r0, 160(%r11)
	j	.LBB6_1
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB6_4
	j	.LBB6_2
.LBB6_2:                                #   in Loop: Header=BB6_1 Depth=1
	lg	%r1, 160(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 160(%r11)
	lb	%r0, 0(%r1)
	lg	%r1, 168(%r11)
	la	%r2, 1(%r1)
	stg	%r2, 168(%r11)
	stc	%r0, 0(%r1)
	j	.LBB6_3
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
	lg	%r1, 176(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 176(%r11)
	j	.LBB6_1
.LBB6_4:
	lg	%r2, 192(%r11)
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end6:
	.size	memcpy, .Lfunc_end6-memcpy
	.cfi_endproc
                                        # -- End function
	.globl	memrchr                         # -- Begin function memrchr
	.p2align	4
	.type	memrchr,@function
memrchr:                                # @memrchr
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	stg	%r2, 184(%r11)
	st	%r0, 180(%r11)
	stg	%r4, 168(%r11)
	lg	%r0, 184(%r11)
	stg	%r0, 160(%r11)
	llc	%r0, 183(%r11)
	st	%r0, 180(%r11)
	j	.LBB7_1
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	lg	%r1, 168(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 168(%r11)
	cghi	%r1, 0
	je	.LBB7_5
	j	.LBB7_2
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
	lg	%r1, 160(%r11)
	lg	%r2, 168(%r11)
	llc	%r0, 0(%r2,%r1)
	l	%r1, 180(%r11)
	cr	%r0, %r1
	jlh	.LBB7_4
	j	.LBB7_3
.LBB7_3:
	lg	%r1, 160(%r11)
	lg	%r2, 168(%r11)
	la	%r0, 0(%r2,%r1)
	stg	%r0, 192(%r11)
	j	.LBB7_6
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	j	.LBB7_1
.LBB7_5:
	mvghi	192(%r11), 0
	j	.LBB7_6
.LBB7_6:
	lg	%r2, 192(%r11)
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end7:
	.size	memrchr, .Lfunc_end7-memrchr
	.cfi_endproc
                                        # -- End function
	.globl	memset                          # -- Begin function memset
	.p2align	4
	.type	memset,@function
memset:                                 # @memset
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	stg	%r2, 192(%r11)
	st	%r0, 188(%r11)
	stg	%r4, 176(%r11)
	lg	%r0, 192(%r11)
	stg	%r0, 168(%r11)
	j	.LBB8_1
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB8_4
	j	.LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
	l	%r0, 188(%r11)
	lg	%r1, 168(%r11)
	stc	%r0, 0(%r1)
	j	.LBB8_3
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	lg	%r1, 176(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 176(%r11)
	lg	%r1, 168(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 168(%r11)
	j	.LBB8_1
.LBB8_4:
	lg	%r2, 192(%r11)
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end8:
	.size	memset, .Lfunc_end8-memset
	.cfi_endproc
                                        # -- End function
	.globl	stpcpy                          # -- Begin function stpcpy
	.p2align	4
	.type	stpcpy,@function
stpcpy:                                 # @stpcpy
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 168(%r11)
	stg	%r3, 160(%r11)
	j	.LBB9_1
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	lg	%r1, 160(%r11)
	llc	%r0, 0(%r1)
	lg	%r1, 168(%r11)
	stc	%r0, 0(%r1)
	chi	%r0, 0
	je	.LBB9_4
	j	.LBB9_2
.LBB9_2:                                #   in Loop: Header=BB9_1 Depth=1
	j	.LBB9_3
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
	lg	%r1, 160(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 160(%r11)
	lg	%r1, 168(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 168(%r11)
	j	.LBB9_1
.LBB9_4:
	lg	%r2, 168(%r11)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end9:
	.size	stpcpy, .Lfunc_end9-stpcpy
	.cfi_endproc
                                        # -- End function
	.globl	strchrnul                       # -- Begin function strchrnul
	.p2align	4
	.type	strchrnul,@function
strchrnul:                              # @strchrnul
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	stg	%r2, 168(%r11)
	st	%r0, 164(%r11)
	llc	%r0, 167(%r11)
	st	%r0, 164(%r11)
	j	.LBB10_1
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 168(%r11)
	llc	%r1, 0(%r1)
	lhi	%r0, 0
	chi	%r1, 0
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	je	.LBB10_3
	j	.LBB10_2
.LBB10_2:                               #   in Loop: Header=BB10_1 Depth=1
	lg	%r1, 168(%r11)
	llc	%r0, 0(%r1)
	l	%r1, 164(%r11)
	cr	%r0, %r1
	ipm	%r0
	afi	%r0, 1879048192
	srl	%r0, 31
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB10_3
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB10_6
	j	.LBB10_4
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	j	.LBB10_5
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	lg	%r1, 168(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 168(%r11)
	j	.LBB10_1
.LBB10_6:
	lg	%r2, 168(%r11)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end10:
	.size	strchrnul, .Lfunc_end10-strchrnul
	.cfi_endproc
                                        # -- End function
	.globl	strchr                          # -- Begin function strchr
	.p2align	4
	.type	strchr,@function
strchr:                                 # @strchr
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -184
	.cfi_def_cfa_offset 344
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	stg	%r2, 168(%r11)
	st	%r0, 164(%r11)
	j	.LBB11_1
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 168(%r11)
	llc	%r0, 0(%r1)
	l	%r1, 164(%r11)
	cr	%r0, %r1
	jlh	.LBB11_3
	j	.LBB11_2
.LBB11_2:
	lg	%r0, 168(%r11)
	stg	%r0, 176(%r11)
	j	.LBB11_6
.LBB11_3:                               #   in Loop: Header=BB11_1 Depth=1
	j	.LBB11_4
.LBB11_4:                               #   in Loop: Header=BB11_1 Depth=1
	lg	%r1, 168(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 168(%r11)
	llc	%r0, 0(%r1)
	chi	%r0, 0
	jlh	.LBB11_1
	j	.LBB11_5
.LBB11_5:
	mvghi	176(%r11), 0
	j	.LBB11_6
.LBB11_6:
	lg	%r2, 176(%r11)
	lmg	%r11, %r15, 272(%r11)
	br	%r14
.Lfunc_end11:
	.size	strchr, .Lfunc_end11-strchr
	.cfi_endproc
                                        # -- End function
	.globl	strcmp                          # -- Begin function strcmp
	.p2align	4
	.type	strcmp,@function
strcmp:                                 # @strcmp
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -184
	.cfi_def_cfa_offset 344
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 176(%r11)
	stg	%r3, 168(%r11)
	j	.LBB12_1
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 176(%r11)
	llc	%r1, 0(%r1)
	lg	%r2, 168(%r11)
	llc	%r2, 0(%r2)
	lhi	%r0, 0
	cr	%r1, %r2
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jlh	.LBB12_3
	j	.LBB12_2
.LBB12_2:                               #   in Loop: Header=BB12_1 Depth=1
	lg	%r1, 176(%r11)
	llc	%r0, 0(%r1)
	chi	%r0, 0
	ipm	%r0
	afi	%r0, 1879048192
	srl	%r0, 31
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB12_3
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB12_6
	j	.LBB12_4
.LBB12_4:                               #   in Loop: Header=BB12_1 Depth=1
	j	.LBB12_5
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
	lg	%r1, 176(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 176(%r11)
	lg	%r1, 168(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 168(%r11)
	j	.LBB12_1
.LBB12_6:
	lg	%r1, 176(%r11)
	llc	%r0, 0(%r1)
	lg	%r1, 168(%r11)
	llc	%r1, 0(%r1)
	sr	%r0, %r1
	lgfr	%r2, %r0
	lmg	%r11, %r15, 272(%r11)
	br	%r14
.Lfunc_end12:
	.size	strcmp, .Lfunc_end12-strcmp
	.cfi_endproc
                                        # -- End function
	.globl	strlen                          # -- Begin function strlen
	.p2align	4
	.type	strlen,@function
strlen:                                 # @strlen
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 168(%r11)
	lg	%r0, 168(%r11)
	stg	%r0, 160(%r11)
	j	.LBB13_1
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 168(%r11)
	llc	%r0, 0(%r1)
	chi	%r0, 0
	je	.LBB13_4
	j	.LBB13_2
.LBB13_2:                               #   in Loop: Header=BB13_1 Depth=1
	j	.LBB13_3
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
	lg	%r1, 168(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 168(%r11)
	j	.LBB13_1
.LBB13_4:
	lg	%r2, 168(%r11)
	lg	%r0, 160(%r11)
	sgr	%r2, %r0
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end13:
	.size	strlen, .Lfunc_end13-strlen
	.cfi_endproc
                                        # -- End function
	.globl	strncmp                         # -- Begin function strncmp
	.p2align	4
	.type	strncmp,@function
strncmp:                                # @strncmp
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -216
	.cfi_def_cfa_offset 376
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 200(%r11)
	stg	%r3, 192(%r11)
	stg	%r4, 184(%r11)
	lg	%r0, 200(%r11)
	stg	%r0, 176(%r11)
	lg	%r0, 192(%r11)
	stg	%r0, 168(%r11)
	lg	%r1, 184(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 184(%r11)
	cghi	%r1, 0
	jlh	.LBB14_2
	j	.LBB14_1
.LBB14_1:
	mvhi	212(%r11), 0
	j	.LBB14_11
.LBB14_2:
	j	.LBB14_3
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 176(%r11)
	llc	%r1, 0(%r1)
	lhi	%r0, 0
	chi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB14_7
	j	.LBB14_4
.LBB14_4:                               #   in Loop: Header=BB14_3 Depth=1
	lg	%r1, 168(%r11)
	llc	%r1, 0(%r1)
	lhi	%r0, 0
	chi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB14_7
	j	.LBB14_5
.LBB14_5:                               #   in Loop: Header=BB14_3 Depth=1
	lg	%r1, 184(%r11)
	lhi	%r0, 0
	cghi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB14_7
	j	.LBB14_6
.LBB14_6:                               #   in Loop: Header=BB14_3 Depth=1
	lg	%r1, 176(%r11)
	llc	%r0, 0(%r1)
	lg	%r1, 168(%r11)
	llc	%r1, 0(%r1)
	cr	%r0, %r1
	ipm	%r0
	afi	%r0, -268435456
	srl	%r0, 31
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB14_7
.LBB14_7:                               #   in Loop: Header=BB14_3 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB14_10
	j	.LBB14_8
.LBB14_8:                               #   in Loop: Header=BB14_3 Depth=1
	j	.LBB14_9
.LBB14_9:                               #   in Loop: Header=BB14_3 Depth=1
	lg	%r1, 176(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 176(%r11)
	lg	%r1, 168(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 168(%r11)
	lg	%r1, 184(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 184(%r11)
	j	.LBB14_3
.LBB14_10:
	lg	%r1, 176(%r11)
	llc	%r0, 0(%r1)
	lg	%r1, 168(%r11)
	llc	%r1, 0(%r1)
	sr	%r0, %r1
	st	%r0, 212(%r11)
	j	.LBB14_11
.LBB14_11:
	lgf	%r2, 212(%r11)
	lmg	%r11, %r15, 304(%r11)
	br	%r14
.Lfunc_end14:
	.size	strncmp, .Lfunc_end14-strncmp
	.cfi_endproc
                                        # -- End function
	.globl	swab                            # -- Begin function swab
	.p2align	4
	.type	swab,@function
swab:                                   # @swab
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 192(%r11)
	stg	%r3, 184(%r11)
	stg	%r4, 176(%r11)
	lg	%r0, 192(%r11)
	stg	%r0, 168(%r11)
	lg	%r0, 184(%r11)
	stg	%r0, 160(%r11)
	j	.LBB15_1
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r0, 176(%r11)
	cghi	%r0, 2
	jl	.LBB15_4
	j	.LBB15_2
.LBB15_2:                               #   in Loop: Header=BB15_1 Depth=1
	lg	%r1, 168(%r11)
	lb	%r0, 1(%r1)
	lg	%r1, 160(%r11)
	stc	%r0, 0(%r1)
	lg	%r1, 168(%r11)
	lb	%r0, 0(%r1)
	lg	%r1, 160(%r11)
	stc	%r0, 1(%r1)
	lg	%r1, 160(%r11)
	la	%r0, 2(%r1)
	stg	%r0, 160(%r11)
	lg	%r1, 168(%r11)
	la	%r0, 2(%r1)
	stg	%r0, 168(%r11)
	j	.LBB15_3
.LBB15_3:                               #   in Loop: Header=BB15_1 Depth=1
	lg	%r1, 176(%r11)
	lay	%r0, -2(%r1)
	stg	%r0, 176(%r11)
	j	.LBB15_1
.LBB15_4:
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end15:
	.size	swab, .Lfunc_end15-swab
	.cfi_endproc
                                        # -- End function
	.globl	isalpha                         # -- Begin function isalpha
	.p2align	4
	.type	isalpha,@function
isalpha:                                # @isalpha
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	oill	%r0, 32
	ahi	%r0, -97
	clfi	%r0, 26
	ipm	%r1
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 36
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end16:
	.size	isalpha, .Lfunc_end16-isalpha
	.cfi_endproc
                                        # -- End function
	.globl	isascii                         # -- Begin function isascii
	.p2align	4
	.type	isascii,@function
isascii:                                # @isascii
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	nill	%r0, 65408
	chi	%r0, 0
	ipm	%r1
	afi	%r1, -268435456
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 33
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end17:
	.size	isascii, .Lfunc_end17-isascii
	.cfi_endproc
                                        # -- End function
	.globl	isblank                         # -- Begin function isblank
	.p2align	4
	.type	isblank,@function
isblank:                                # @isblank
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	l	%r1, 164(%r11)
	lhi	%r0, 1
	chi	%r1, 32
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	je	.LBB18_2
	j	.LBB18_1
.LBB18_1:
	l	%r0, 164(%r11)
	chi	%r0, 9
	ipm	%r0
	afi	%r0, -268435456
	srl	%r0, 31
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB18_2
.LBB18_2:
	l	%r1, 160(%r11)                  # 4-byte Folded Reload
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end18:
	.size	isblank, .Lfunc_end18-isblank
	.cfi_endproc
                                        # -- End function
	.globl	iscntrl                         # -- Begin function iscntrl
	.p2align	4
	.type	iscntrl,@function
iscntrl:                                # @iscntrl
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	l	%r1, 164(%r11)
	lhi	%r0, 1
	clfi	%r1, 32
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	jl	.LBB19_2
	j	.LBB19_1
.LBB19_1:
	l	%r0, 164(%r11)
	chi	%r0, 127
	ipm	%r0
	afi	%r0, -268435456
	srl	%r0, 31
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB19_2
.LBB19_2:
	l	%r1, 160(%r11)                  # 4-byte Folded Reload
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end19:
	.size	iscntrl, .Lfunc_end19-iscntrl
	.cfi_endproc
                                        # -- End function
	.globl	isdigit                         # -- Begin function isdigit
	.p2align	4
	.type	isdigit,@function
isdigit:                                # @isdigit
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	ahi	%r0, -48
	clfi	%r0, 10
	ipm	%r1
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 36
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end20:
	.size	isdigit, .Lfunc_end20-isdigit
	.cfi_endproc
                                        # -- End function
	.globl	isgraph                         # -- Begin function isgraph
	.p2align	4
	.type	isgraph,@function
isgraph:                                # @isgraph
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	ahi	%r0, -33
	clfi	%r0, 94
	ipm	%r1
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 36
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end21:
	.size	isgraph, .Lfunc_end21-isgraph
	.cfi_endproc
                                        # -- End function
	.globl	islower                         # -- Begin function islower
	.p2align	4
	.type	islower,@function
islower:                                # @islower
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	ahi	%r0, -97
	clfi	%r0, 26
	ipm	%r1
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 36
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end22:
	.size	islower, .Lfunc_end22-islower
	.cfi_endproc
                                        # -- End function
	.globl	isprint                         # -- Begin function isprint
	.p2align	4
	.type	isprint,@function
isprint:                                # @isprint
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	ahi	%r0, -32
	clfi	%r0, 95
	ipm	%r1
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 36
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end23:
	.size	isprint, .Lfunc_end23-isprint
	.cfi_endproc
                                        # -- End function
	.globl	isspace                         # -- Begin function isspace
	.p2align	4
	.type	isspace,@function
isspace:                                # @isspace
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	l	%r1, 164(%r11)
	lhi	%r0, 1
	chi	%r1, 32
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	je	.LBB24_2
	j	.LBB24_1
.LBB24_1:
	l	%r0, 164(%r11)
	ahi	%r0, -9
	clfi	%r0, 5
	ipm	%r0
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 63, 191, 36
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB24_2
.LBB24_2:
	l	%r1, 160(%r11)                  # 4-byte Folded Reload
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end24:
	.size	isspace, .Lfunc_end24-isspace
	.cfi_endproc
                                        # -- End function
	.globl	isupper                         # -- Begin function isupper
	.p2align	4
	.type	isupper,@function
isupper:                                # @isupper
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	ahi	%r0, -65
	clfi	%r0, 26
	ipm	%r1
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 36
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end25:
	.size	isupper, .Lfunc_end25-isupper
	.cfi_endproc
                                        # -- End function
	.globl	iswcntrl                        # -- Begin function iswcntrl
	.p2align	4
	.type	iswcntrl,@function
iswcntrl:                               # @iswcntrl
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	l	%r1, 164(%r11)
	lhi	%r0, 1
	clfi	%r1, 32
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	jl	.LBB26_4
	j	.LBB26_1
.LBB26_1:
	l	%r1, 164(%r11)
	ahi	%r1, -127
	lhi	%r0, 1
	clfi	%r1, 33
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	jl	.LBB26_4
	j	.LBB26_2
.LBB26_2:
	l	%r1, 164(%r11)
	ahi	%r1, -8232
	lhi	%r0, 1
	clfi	%r1, 2
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	jl	.LBB26_4
	j	.LBB26_3
.LBB26_3:
	l	%r0, 164(%r11)
	afi	%r0, -65529
	clfi	%r0, 3
	ipm	%r0
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 63, 191, 36
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB26_4
.LBB26_4:
	l	%r1, 160(%r11)                  # 4-byte Folded Reload
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end26:
	.size	iswcntrl, .Lfunc_end26-iswcntrl
	.cfi_endproc
                                        # -- End function
	.globl	iswdigit                        # -- Begin function iswdigit
	.p2align	4
	.type	iswdigit,@function
iswdigit:                               # @iswdigit
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	ahi	%r0, -48
	clfi	%r0, 10
	ipm	%r1
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 36
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end27:
	.size	iswdigit, .Lfunc_end27-iswdigit
	.cfi_endproc
                                        # -- End function
	.globl	iswprint                        # -- Begin function iswprint
	.p2align	4
	.type	iswprint,@function
iswprint:                               # @iswprint
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 160(%r11)
	l	%r0, 160(%r11)
	clfi	%r0, 254
	jh	.LBB28_2
	j	.LBB28_1
.LBB28_1:
	l	%r0, 160(%r11)
	ahi	%r0, 1
	nilf	%r0, 127
	chi	%r0, 32
	ipm	%r0
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 63, 191, 35
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	j	.LBB28_10
.LBB28_2:
	l	%r0, 160(%r11)
	clfi	%r0, 8232
	jl	.LBB28_5
	j	.LBB28_3
.LBB28_3:
	l	%r0, 160(%r11)
	ahi	%r0, -8234
	clfi	%r0, 47062
	jl	.LBB28_5
	j	.LBB28_4
.LBB28_4:
	l	%r0, 160(%r11)
	afi	%r0, -57344
	clfi	%r0, 8184
	jh	.LBB28_6
	j	.LBB28_5
.LBB28_5:
	mvhi	164(%r11), 1
	j	.LBB28_10
.LBB28_6:
	l	%r0, 160(%r11)
	afi	%r0, -65532
	clfi	%r0, 1048579
	jh	.LBB28_8
	j	.LBB28_7
.LBB28_7:
	l	%r0, 160(%r11)
	tmll	%r0, 65534
	jno	.LBB28_9
	j	.LBB28_8
.LBB28_8:
	mvhi	164(%r11), 0
	j	.LBB28_10
.LBB28_9:
	mvhi	164(%r11), 1
	j	.LBB28_10
.LBB28_10:
	lgf	%r2, 164(%r11)
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end28:
	.size	iswprint, .Lfunc_end28-iswprint
	.cfi_endproc
                                        # -- End function
	.globl	iswxdigit                       # -- Begin function iswxdigit
	.p2align	4
	.type	iswxdigit,@function
iswxdigit:                              # @iswxdigit
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	l	%r1, 164(%r11)
	ahi	%r1, -48
	lhi	%r0, 1
	clfi	%r1, 10
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	jl	.LBB29_2
	j	.LBB29_1
.LBB29_1:
	l	%r0, 164(%r11)
	oill	%r0, 32
	ahi	%r0, -97
	clfi	%r0, 6
	ipm	%r0
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 63, 191, 36
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB29_2
.LBB29_2:
	l	%r1, 160(%r11)                  # 4-byte Folded Reload
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end29:
	.size	iswxdigit, .Lfunc_end29-iswxdigit
	.cfi_endproc
                                        # -- End function
	.globl	toascii                         # -- Begin function toascii
	.p2align	4
	.type	toascii,@function
toascii:                                # @toascii
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	llgf	%r0, 164(%r11)
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 57, 191, 0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end30:
	.size	toascii, .Lfunc_end30-toascii
	.cfi_endproc
                                        # -- End function
	.globl	fdim                            # -- Begin function fdim
	.p2align	4
	.type	fdim,@function
fdim:                                   # @fdim
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
                                        # kill: def $r0d killed $r3d
                                        # kill: def $r0d killed $r2d
	stg	%r2, 176(%r11)
	stg	%r3, 168(%r11)
	lg	%r0, 176(%r11)
	nihh	%r0, 32767
	llihh	%r1, 32752
	oill	%r1, 1
	cgr	%r0, %r1
	jl	.LBB31_2
	j	.LBB31_1
.LBB31_1:
	lg	%r0, 176(%r11)
	stg	%r0, 184(%r11)
	j	.LBB31_8
.LBB31_2:
	lg	%r0, 168(%r11)
	nihh	%r0, 32767
	llihh	%r1, 32752
	oill	%r1, 1
	cgr	%r0, %r1
	jl	.LBB31_4
	j	.LBB31_3
.LBB31_3:
	lg	%r0, 168(%r11)
	stg	%r0, 184(%r11)
	j	.LBB31_8
.LBB31_4:
	lg	%r2, 176(%r11)
	lg	%r3, 168(%r11)
	brasl	%r14, __gtdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jle	.LBB31_6
	j	.LBB31_5
.LBB31_5:
	lg	%r2, 176(%r11)
	lg	%r3, 168(%r11)
	brasl	%r14, __subdf3@PLT
	stg	%r2, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB31_7
.LBB31_6:
	lghi	%r0, 0
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB31_7
.LBB31_7:
	lg	%r0, 160(%r11)                  # 8-byte Folded Reload
	stg	%r0, 184(%r11)
	j	.LBB31_8
.LBB31_8:
	lg	%r2, 184(%r11)
	lmg	%r11, %r15, 280(%r11)
	br	%r14
.Lfunc_end31:
	.size	fdim, .Lfunc_end31-fdim
	.cfi_endproc
                                        # -- End function
	.globl	fdimf                           # -- Begin function fdimf
	.p2align	4
	.type	fdimf,@function
fdimf:                                  # @fdimf
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
                                        # kill: def $r0l killed $r3l
                                        # kill: def $r0l killed $r2l
	st	%r2, 168(%r11)
	st	%r3, 164(%r11)
	l	%r0, 168(%r11)
	nilh	%r0, 32767
	cfi	%r0, 2139095041
	jl	.LBB32_2
	j	.LBB32_1
.LBB32_1:
	l	%r0, 168(%r11)
	st	%r0, 172(%r11)
	j	.LBB32_8
.LBB32_2:
	l	%r0, 164(%r11)
	nilh	%r0, 32767
	cfi	%r0, 2139095041
	jl	.LBB32_4
	j	.LBB32_3
.LBB32_3:
	l	%r0, 164(%r11)
	st	%r0, 172(%r11)
	j	.LBB32_8
.LBB32_4:
	llgf	%r2, 168(%r11)
	llgf	%r3, 164(%r11)
	brasl	%r14, __gtsf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jle	.LBB32_6
	j	.LBB32_5
.LBB32_5:
	llgf	%r2, 168(%r11)
	llgf	%r3, 164(%r11)
	brasl	%r14, __subsf3@PLT
	lr	%r0, %r2
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB32_7
.LBB32_6:
	lhi	%r0, 0
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB32_7
.LBB32_7:
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
	st	%r0, 172(%r11)
	j	.LBB32_8
.LBB32_8:
	l	%r2, 172(%r11)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end32:
	.size	fdimf, .Lfunc_end32-fdimf
	.cfi_endproc
                                        # -- End function
	.globl	fmax                            # -- Begin function fmax
	.p2align	4
	.type	fmax,@function
fmax:                                   # @fmax
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
                                        # kill: def $r0d killed $r3d
                                        # kill: def $r0d killed $r2d
	stg	%r2, 184(%r11)
	stg	%r3, 176(%r11)
	lg	%r0, 184(%r11)
	nihh	%r0, 32767
	llihh	%r1, 32752
	oill	%r1, 1
	cgr	%r0, %r1
	jl	.LBB33_2
	j	.LBB33_1
.LBB33_1:
	lg	%r0, 176(%r11)
	stg	%r0, 192(%r11)
	j	.LBB33_13
.LBB33_2:
	lg	%r0, 176(%r11)
	nihh	%r0, 32767
	llihh	%r1, 32752
	oill	%r1, 1
	cgr	%r0, %r1
	jl	.LBB33_4
	j	.LBB33_3
.LBB33_3:
	lg	%r0, 184(%r11)
	stg	%r0, 192(%r11)
	j	.LBB33_13
.LBB33_4:
	lg	%r0, 184(%r11)
	srlg	%r0, %r0, 63
                                        # kill: def $r0l killed $r0l killed $r0d
	lg	%r1, 176(%r11)
	srlg	%r1, %r1, 63
                                        # kill: def $r1l killed $r1l killed $r1d
	cr	%r0, %r1
	je	.LBB33_9
	j	.LBB33_5
.LBB33_5:
	lg	%r0, 184(%r11)
	cghi	%r0, 0
	jhe	.LBB33_7
	j	.LBB33_6
.LBB33_6:
	lg	%r0, 176(%r11)
	stg	%r0, 168(%r11)                  # 8-byte Folded Spill
	j	.LBB33_8
.LBB33_7:
	lg	%r0, 184(%r11)
	stg	%r0, 168(%r11)                  # 8-byte Folded Spill
	j	.LBB33_8
.LBB33_8:
	lg	%r0, 168(%r11)                  # 8-byte Folded Reload
	stg	%r0, 192(%r11)
	j	.LBB33_13
.LBB33_9:
	lg	%r2, 184(%r11)
	lg	%r3, 176(%r11)
	brasl	%r14, __ltdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jhe	.LBB33_11
	j	.LBB33_10
.LBB33_10:
	lg	%r0, 176(%r11)
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB33_12
.LBB33_11:
	lg	%r0, 184(%r11)
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB33_12
.LBB33_12:
	lg	%r0, 160(%r11)                  # 8-byte Folded Reload
	stg	%r0, 192(%r11)
	j	.LBB33_13
.LBB33_13:
	lg	%r2, 192(%r11)
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end33:
	.size	fmax, .Lfunc_end33-fmax
	.cfi_endproc
                                        # -- End function
	.globl	fmaxf                           # -- Begin function fmaxf
	.p2align	4
	.type	fmaxf,@function
fmaxf:                                  # @fmaxf
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -184
	.cfi_def_cfa_offset 344
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
                                        # kill: def $r0l killed $r3l
                                        # kill: def $r0l killed $r2l
	st	%r2, 176(%r11)
	st	%r3, 172(%r11)
	l	%r0, 176(%r11)
	nilh	%r0, 32767
	cfi	%r0, 2139095041
	jl	.LBB34_2
	j	.LBB34_1
.LBB34_1:
	l	%r0, 172(%r11)
	st	%r0, 180(%r11)
	j	.LBB34_13
.LBB34_2:
	l	%r0, 172(%r11)
	nilh	%r0, 32767
	cfi	%r0, 2139095041
	jl	.LBB34_4
	j	.LBB34_3
.LBB34_3:
	l	%r0, 176(%r11)
	st	%r0, 180(%r11)
	j	.LBB34_13
.LBB34_4:
	l	%r0, 176(%r11)
	srl	%r0, 31
	l	%r1, 172(%r11)
	srl	%r1, 31
	cr	%r0, %r1
	je	.LBB34_9
	j	.LBB34_5
.LBB34_5:
	l	%r0, 176(%r11)
	chi	%r0, 0
	jhe	.LBB34_7
	j	.LBB34_6
.LBB34_6:
	l	%r0, 172(%r11)
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	j	.LBB34_8
.LBB34_7:
	l	%r0, 176(%r11)
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	j	.LBB34_8
.LBB34_8:
	l	%r0, 168(%r11)                  # 4-byte Folded Reload
	st	%r0, 180(%r11)
	j	.LBB34_13
.LBB34_9:
	llgf	%r2, 176(%r11)
	llgf	%r3, 172(%r11)
	brasl	%r14, __ltsf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jhe	.LBB34_11
	j	.LBB34_10
.LBB34_10:
	l	%r0, 172(%r11)
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB34_12
.LBB34_11:
	l	%r0, 176(%r11)
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB34_12
.LBB34_12:
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	st	%r0, 180(%r11)
	j	.LBB34_13
.LBB34_13:
	l	%r2, 180(%r11)
	lmg	%r11, %r15, 272(%r11)
	br	%r14
.Lfunc_end34:
	.size	fmaxf, .Lfunc_end34-fmaxf
	.cfi_endproc
                                        # -- End function
	.globl	fmaxl                           # -- Begin function fmaxl
	.p2align	4
	.type	fmaxl,@function
fmaxl:                                  # @fmaxl
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -280
	.cfi_def_cfa_offset 440
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 200(%r11)                  # 8-byte Folded Spill
	lg	%r2, 0(%r3)
	lg	%r3, 8(%r3)
	lg	%r0, 0(%r4)
	lg	%r1, 8(%r4)
	stg	%r3, 272(%r11)
	stg	%r2, 264(%r11)
	stg	%r1, 256(%r11)
	stg	%r0, 248(%r11)
	lg	%r0, 272(%r11)
	lg	%r2, 264(%r11)
	nihh	%r2, 32767
	llihh	%r3, 32767
	cgr	%r2, %r3
	ipm	%r1
                                        # implicit-def: $r4d
	lr	%r4, %r1
                                        # implicit-def: $r1d
	risbg	%r1, %r4, 63, 191, 36
	cghi	%r0, 0
	ipm	%r0
	afi	%r0, -268435456
	cgr	%r2, %r3
                                        # kill: def $r1l killed $r1l killed $r1d
	st	%r1, 208(%r11)                  # 4-byte Folded Spill
	srl	%r0, 31
	st	%r0, 212(%r11)                  # 4-byte Folded Spill
	je	.LBB35_2
# %bb.1:
	l	%r0, 208(%r11)                  # 4-byte Folded Reload
	st	%r0, 212(%r11)                  # 4-byte Folded Spill
.LBB35_2:
	l	%r0, 212(%r11)                  # 4-byte Folded Reload
	chi	%r0, 0
	jlh	.LBB35_4
	j	.LBB35_3
.LBB35_3:
	lg	%r1, 200(%r11)                  # 8-byte Folded Reload
	lg	%r0, 248(%r11)
	lg	%r2, 256(%r11)
	stg	%r2, 8(%r1)
	stg	%r0, 0(%r1)
	j	.LBB35_17
.LBB35_4:
	lg	%r0, 256(%r11)
	lg	%r2, 248(%r11)
	nihh	%r2, 32767
	llihh	%r3, 32767
	cgr	%r2, %r3
	ipm	%r1
                                        # implicit-def: $r4d
	lr	%r4, %r1
                                        # implicit-def: $r1d
	risbg	%r1, %r4, 63, 191, 36
	cghi	%r0, 0
	ipm	%r0
	afi	%r0, -268435456
	cgr	%r2, %r3
                                        # kill: def $r1l killed $r1l killed $r1d
	st	%r1, 192(%r11)                  # 4-byte Folded Spill
	srl	%r0, 31
	st	%r0, 196(%r11)                  # 4-byte Folded Spill
	je	.LBB35_6
# %bb.5:
	l	%r0, 192(%r11)                  # 4-byte Folded Reload
	st	%r0, 196(%r11)                  # 4-byte Folded Spill
.LBB35_6:
	l	%r0, 196(%r11)                  # 4-byte Folded Reload
	chi	%r0, 0
	jlh	.LBB35_8
	j	.LBB35_7
.LBB35_7:
	lg	%r1, 200(%r11)                  # 8-byte Folded Reload
	lg	%r0, 264(%r11)
	lg	%r2, 272(%r11)
	stg	%r2, 8(%r1)
	stg	%r0, 0(%r1)
	j	.LBB35_17
.LBB35_8:
	lg	%r0, 264(%r11)
	srlg	%r0, %r0, 63
                                        # kill: def $r0l killed $r0l killed $r0d
	lg	%r1, 248(%r11)
	srlg	%r1, %r1, 63
                                        # kill: def $r1l killed $r1l killed $r1d
	cr	%r0, %r1
	je	.LBB35_13
	j	.LBB35_9
.LBB35_9:
	lg	%r0, 264(%r11)
	cghi	%r0, 0
	jhe	.LBB35_11
	j	.LBB35_10
.LBB35_10:
	lg	%r0, 256(%r11)
	lg	%r1, 248(%r11)
	stg	%r1, 176(%r11)                  # 8-byte Folded Spill
	stg	%r0, 184(%r11)                  # 8-byte Folded Spill
	j	.LBB35_12
.LBB35_11:
	lg	%r0, 272(%r11)
	lg	%r1, 264(%r11)
	stg	%r1, 176(%r11)                  # 8-byte Folded Spill
	stg	%r0, 184(%r11)                  # 8-byte Folded Spill
	j	.LBB35_12
.LBB35_12:
	lg	%r1, 200(%r11)                  # 8-byte Folded Reload
	lg	%r2, 176(%r11)                  # 8-byte Folded Reload
	lg	%r0, 184(%r11)                  # 8-byte Folded Reload
	stg	%r2, 0(%r1)
	stg	%r0, 8(%r1)
	j	.LBB35_17
.LBB35_13:
	lg	%r0, 264(%r11)
	lg	%r1, 272(%r11)
	lg	%r2, 248(%r11)
	lg	%r3, 256(%r11)
	stg	%r3, 224(%r11)
	stg	%r2, 216(%r11)
	stg	%r1, 240(%r11)
	stg	%r0, 232(%r11)
	la	%r2, 232(%r11)
	la	%r3, 216(%r11)
	brasl	%r14, __lttf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jhe	.LBB35_15
	j	.LBB35_14
.LBB35_14:
	lg	%r0, 256(%r11)
	lg	%r1, 248(%r11)
	stg	%r1, 160(%r11)                  # 8-byte Folded Spill
	stg	%r0, 168(%r11)                  # 8-byte Folded Spill
	j	.LBB35_16
.LBB35_15:
	lg	%r0, 272(%r11)
	lg	%r1, 264(%r11)
	stg	%r1, 160(%r11)                  # 8-byte Folded Spill
	stg	%r0, 168(%r11)                  # 8-byte Folded Spill
	j	.LBB35_16
.LBB35_16:
	lg	%r1, 200(%r11)                  # 8-byte Folded Reload
	lg	%r2, 160(%r11)                  # 8-byte Folded Reload
	lg	%r0, 168(%r11)                  # 8-byte Folded Reload
	stg	%r2, 0(%r1)
	stg	%r0, 8(%r1)
	j	.LBB35_17
.LBB35_17:
	lmg	%r11, %r15, 368(%r11)
	br	%r14
.Lfunc_end35:
	.size	fmaxl, .Lfunc_end35-fmaxl
	.cfi_endproc
                                        # -- End function
	.globl	fmin                            # -- Begin function fmin
	.p2align	4
	.type	fmin,@function
fmin:                                   # @fmin
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
                                        # kill: def $r0d killed $r3d
                                        # kill: def $r0d killed $r2d
	stg	%r2, 184(%r11)
	stg	%r3, 176(%r11)
	lg	%r0, 184(%r11)
	nihh	%r0, 32767
	llihh	%r1, 32752
	oill	%r1, 1
	cgr	%r0, %r1
	jl	.LBB36_2
	j	.LBB36_1
.LBB36_1:
	lg	%r0, 176(%r11)
	stg	%r0, 192(%r11)
	j	.LBB36_13
.LBB36_2:
	lg	%r0, 176(%r11)
	nihh	%r0, 32767
	llihh	%r1, 32752
	oill	%r1, 1
	cgr	%r0, %r1
	jl	.LBB36_4
	j	.LBB36_3
.LBB36_3:
	lg	%r0, 184(%r11)
	stg	%r0, 192(%r11)
	j	.LBB36_13
.LBB36_4:
	lg	%r0, 184(%r11)
	srlg	%r0, %r0, 63
                                        # kill: def $r0l killed $r0l killed $r0d
	lg	%r1, 176(%r11)
	srlg	%r1, %r1, 63
                                        # kill: def $r1l killed $r1l killed $r1d
	cr	%r0, %r1
	je	.LBB36_9
	j	.LBB36_5
.LBB36_5:
	lg	%r0, 184(%r11)
	cghi	%r0, 0
	jhe	.LBB36_7
	j	.LBB36_6
.LBB36_6:
	lg	%r0, 184(%r11)
	stg	%r0, 168(%r11)                  # 8-byte Folded Spill
	j	.LBB36_8
.LBB36_7:
	lg	%r0, 176(%r11)
	stg	%r0, 168(%r11)                  # 8-byte Folded Spill
	j	.LBB36_8
.LBB36_8:
	lg	%r0, 168(%r11)                  # 8-byte Folded Reload
	stg	%r0, 192(%r11)
	j	.LBB36_13
.LBB36_9:
	lg	%r2, 184(%r11)
	lg	%r3, 176(%r11)
	brasl	%r14, __ltdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jhe	.LBB36_11
	j	.LBB36_10
.LBB36_10:
	lg	%r0, 184(%r11)
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB36_12
.LBB36_11:
	lg	%r0, 176(%r11)
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB36_12
.LBB36_12:
	lg	%r0, 160(%r11)                  # 8-byte Folded Reload
	stg	%r0, 192(%r11)
	j	.LBB36_13
.LBB36_13:
	lg	%r2, 192(%r11)
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end36:
	.size	fmin, .Lfunc_end36-fmin
	.cfi_endproc
                                        # -- End function
	.globl	fminf                           # -- Begin function fminf
	.p2align	4
	.type	fminf,@function
fminf:                                  # @fminf
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -184
	.cfi_def_cfa_offset 344
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
                                        # kill: def $r0l killed $r3l
                                        # kill: def $r0l killed $r2l
	st	%r2, 176(%r11)
	st	%r3, 172(%r11)
	l	%r0, 176(%r11)
	nilh	%r0, 32767
	cfi	%r0, 2139095041
	jl	.LBB37_2
	j	.LBB37_1
.LBB37_1:
	l	%r0, 172(%r11)
	st	%r0, 180(%r11)
	j	.LBB37_13
.LBB37_2:
	l	%r0, 172(%r11)
	nilh	%r0, 32767
	cfi	%r0, 2139095041
	jl	.LBB37_4
	j	.LBB37_3
.LBB37_3:
	l	%r0, 176(%r11)
	st	%r0, 180(%r11)
	j	.LBB37_13
.LBB37_4:
	l	%r0, 176(%r11)
	srl	%r0, 31
	l	%r1, 172(%r11)
	srl	%r1, 31
	cr	%r0, %r1
	je	.LBB37_9
	j	.LBB37_5
.LBB37_5:
	l	%r0, 176(%r11)
	chi	%r0, 0
	jhe	.LBB37_7
	j	.LBB37_6
.LBB37_6:
	l	%r0, 176(%r11)
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	j	.LBB37_8
.LBB37_7:
	l	%r0, 172(%r11)
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	j	.LBB37_8
.LBB37_8:
	l	%r0, 168(%r11)                  # 4-byte Folded Reload
	st	%r0, 180(%r11)
	j	.LBB37_13
.LBB37_9:
	llgf	%r2, 176(%r11)
	llgf	%r3, 172(%r11)
	brasl	%r14, __ltsf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jhe	.LBB37_11
	j	.LBB37_10
.LBB37_10:
	l	%r0, 176(%r11)
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB37_12
.LBB37_11:
	l	%r0, 172(%r11)
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB37_12
.LBB37_12:
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	st	%r0, 180(%r11)
	j	.LBB37_13
.LBB37_13:
	l	%r2, 180(%r11)
	lmg	%r11, %r15, 272(%r11)
	br	%r14
.Lfunc_end37:
	.size	fminf, .Lfunc_end37-fminf
	.cfi_endproc
                                        # -- End function
	.globl	fminl                           # -- Begin function fminl
	.p2align	4
	.type	fminl,@function
fminl:                                  # @fminl
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -280
	.cfi_def_cfa_offset 440
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 200(%r11)                  # 8-byte Folded Spill
	lg	%r2, 0(%r3)
	lg	%r3, 8(%r3)
	lg	%r0, 0(%r4)
	lg	%r1, 8(%r4)
	stg	%r3, 272(%r11)
	stg	%r2, 264(%r11)
	stg	%r1, 256(%r11)
	stg	%r0, 248(%r11)
	lg	%r0, 272(%r11)
	lg	%r2, 264(%r11)
	nihh	%r2, 32767
	llihh	%r3, 32767
	cgr	%r2, %r3
	ipm	%r1
                                        # implicit-def: $r4d
	lr	%r4, %r1
                                        # implicit-def: $r1d
	risbg	%r1, %r4, 63, 191, 36
	cghi	%r0, 0
	ipm	%r0
	afi	%r0, -268435456
	cgr	%r2, %r3
                                        # kill: def $r1l killed $r1l killed $r1d
	st	%r1, 208(%r11)                  # 4-byte Folded Spill
	srl	%r0, 31
	st	%r0, 212(%r11)                  # 4-byte Folded Spill
	je	.LBB38_2
# %bb.1:
	l	%r0, 208(%r11)                  # 4-byte Folded Reload
	st	%r0, 212(%r11)                  # 4-byte Folded Spill
.LBB38_2:
	l	%r0, 212(%r11)                  # 4-byte Folded Reload
	chi	%r0, 0
	jlh	.LBB38_4
	j	.LBB38_3
.LBB38_3:
	lg	%r1, 200(%r11)                  # 8-byte Folded Reload
	lg	%r0, 248(%r11)
	lg	%r2, 256(%r11)
	stg	%r2, 8(%r1)
	stg	%r0, 0(%r1)
	j	.LBB38_17
.LBB38_4:
	lg	%r0, 256(%r11)
	lg	%r2, 248(%r11)
	nihh	%r2, 32767
	llihh	%r3, 32767
	cgr	%r2, %r3
	ipm	%r1
                                        # implicit-def: $r4d
	lr	%r4, %r1
                                        # implicit-def: $r1d
	risbg	%r1, %r4, 63, 191, 36
	cghi	%r0, 0
	ipm	%r0
	afi	%r0, -268435456
	cgr	%r2, %r3
                                        # kill: def $r1l killed $r1l killed $r1d
	st	%r1, 192(%r11)                  # 4-byte Folded Spill
	srl	%r0, 31
	st	%r0, 196(%r11)                  # 4-byte Folded Spill
	je	.LBB38_6
# %bb.5:
	l	%r0, 192(%r11)                  # 4-byte Folded Reload
	st	%r0, 196(%r11)                  # 4-byte Folded Spill
.LBB38_6:
	l	%r0, 196(%r11)                  # 4-byte Folded Reload
	chi	%r0, 0
	jlh	.LBB38_8
	j	.LBB38_7
.LBB38_7:
	lg	%r1, 200(%r11)                  # 8-byte Folded Reload
	lg	%r0, 264(%r11)
	lg	%r2, 272(%r11)
	stg	%r2, 8(%r1)
	stg	%r0, 0(%r1)
	j	.LBB38_17
.LBB38_8:
	lg	%r0, 264(%r11)
	srlg	%r0, %r0, 63
                                        # kill: def $r0l killed $r0l killed $r0d
	lg	%r1, 248(%r11)
	srlg	%r1, %r1, 63
                                        # kill: def $r1l killed $r1l killed $r1d
	cr	%r0, %r1
	je	.LBB38_13
	j	.LBB38_9
.LBB38_9:
	lg	%r0, 264(%r11)
	cghi	%r0, 0
	jhe	.LBB38_11
	j	.LBB38_10
.LBB38_10:
	lg	%r0, 272(%r11)
	lg	%r1, 264(%r11)
	stg	%r1, 176(%r11)                  # 8-byte Folded Spill
	stg	%r0, 184(%r11)                  # 8-byte Folded Spill
	j	.LBB38_12
.LBB38_11:
	lg	%r0, 256(%r11)
	lg	%r1, 248(%r11)
	stg	%r1, 176(%r11)                  # 8-byte Folded Spill
	stg	%r0, 184(%r11)                  # 8-byte Folded Spill
	j	.LBB38_12
.LBB38_12:
	lg	%r1, 200(%r11)                  # 8-byte Folded Reload
	lg	%r2, 176(%r11)                  # 8-byte Folded Reload
	lg	%r0, 184(%r11)                  # 8-byte Folded Reload
	stg	%r2, 0(%r1)
	stg	%r0, 8(%r1)
	j	.LBB38_17
.LBB38_13:
	lg	%r0, 264(%r11)
	lg	%r1, 272(%r11)
	lg	%r2, 248(%r11)
	lg	%r3, 256(%r11)
	stg	%r3, 224(%r11)
	stg	%r2, 216(%r11)
	stg	%r1, 240(%r11)
	stg	%r0, 232(%r11)
	la	%r2, 232(%r11)
	la	%r3, 216(%r11)
	brasl	%r14, __lttf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jhe	.LBB38_15
	j	.LBB38_14
.LBB38_14:
	lg	%r0, 272(%r11)
	lg	%r1, 264(%r11)
	stg	%r1, 160(%r11)                  # 8-byte Folded Spill
	stg	%r0, 168(%r11)                  # 8-byte Folded Spill
	j	.LBB38_16
.LBB38_15:
	lg	%r0, 256(%r11)
	lg	%r1, 248(%r11)
	stg	%r1, 160(%r11)                  # 8-byte Folded Spill
	stg	%r0, 168(%r11)                  # 8-byte Folded Spill
	j	.LBB38_16
.LBB38_16:
	lg	%r1, 200(%r11)                  # 8-byte Folded Reload
	lg	%r2, 160(%r11)                  # 8-byte Folded Reload
	lg	%r0, 168(%r11)                  # 8-byte Folded Reload
	stg	%r2, 0(%r1)
	stg	%r0, 8(%r1)
	j	.LBB38_17
.LBB38_17:
	lmg	%r11, %r15, 368(%r11)
	br	%r14
.Lfunc_end38:
	.size	fminl, .Lfunc_end38-fminl
	.cfi_endproc
                                        # -- End function
	.globl	l64a                            # -- Begin function l64a
	.p2align	4
	.type	l64a,@function
l64a:                                   # @l64a
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -184
	.cfi_def_cfa_offset 344
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 176(%r11)
	lg	%r0, 176(%r11)
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	larl	%r0, l64a.s
	stg	%r0, 168(%r11)
	j	.LBB39_1
.LBB39_1:                               # =>This Inner Loop Header: Depth=1
	l	%r0, 164(%r11)
	chi	%r0, 0
	je	.LBB39_4
	j	.LBB39_2
.LBB39_2:                               #   in Loop: Header=BB39_1 Depth=1
	llgf	%r0, 164(%r11)
                                        # implicit-def: $r1d
	risbg	%r1, %r0, 58, 191, 0
	larl	%r2, digits
	lb	%r0, 0(%r2,%r1)
	lg	%r1, 168(%r11)
	stc	%r0, 0(%r1)
	j	.LBB39_3
.LBB39_3:                               #   in Loop: Header=BB39_1 Depth=1
	lg	%r1, 168(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 168(%r11)
	l	%r0, 164(%r11)
	srl	%r0, 6
	st	%r0, 164(%r11)
	j	.LBB39_1
.LBB39_4:
	lg	%r1, 168(%r11)
	mvi	0(%r1), 0
	larl	%r2, l64a.s
	lmg	%r11, %r15, 272(%r11)
	br	%r14
.Lfunc_end39:
	.size	l64a, .Lfunc_end39-l64a
	.cfi_endproc
                                        # -- End function
	.globl	srand                           # -- Begin function srand
	.p2align	4
	.type	srand,@function
srand:                                  # @srand
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	ahi	%r0, -1
	llgfr	%r0, %r0
	stgrl	%r0, seed
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end40:
	.size	srand, .Lfunc_end40-srand
	.cfi_endproc
                                        # -- End function
	.globl	rand                            # -- Begin function rand
	.p2align	4
	.type	rand,@function
rand:                                   # @rand
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lgrl	%r1, seed
	llihf	%r0, 1481765933
	oilf	%r0, 1284865837
	msgr	%r1, %r0
	la	%r0, 1(%r1)
	stgrl	%r0, seed
	lgrl	%r0, seed
	srlg	%r2, %r0, 33
	lmg	%r11, %r15, 88(%r11)
	br	%r14
.Lfunc_end41:
	.size	rand, .Lfunc_end41-rand
	.cfi_endproc
                                        # -- End function
	.globl	insque                          # -- Begin function insque
	.p2align	4
	.type	insque,@function
insque:                                 # @insque
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 184(%r11)
	stg	%r3, 176(%r11)
	lg	%r0, 184(%r11)
	stg	%r0, 168(%r11)
	lg	%r0, 176(%r11)
	stg	%r0, 160(%r11)
	lg	%r0, 160(%r11)
	cghi	%r0, 0
	jlh	.LBB42_2
	j	.LBB42_1
.LBB42_1:
	lg	%r1, 168(%r11)
	mvghi	8(%r1), 0
	lg	%r1, 168(%r11)
	mvghi	0(%r1), 0
	j	.LBB42_4
.LBB42_2:
	lg	%r1, 160(%r11)
	lg	%r0, 0(%r1)
	lg	%r1, 168(%r11)
	stg	%r0, 0(%r1)
	lg	%r0, 160(%r11)
	lg	%r1, 168(%r11)
	stg	%r0, 8(%r1)
	lg	%r0, 168(%r11)
	lg	%r1, 160(%r11)
	stg	%r0, 0(%r1)
	lg	%r1, 168(%r11)
	lg	%r0, 0(%r1)
	cghi	%r0, 0
	je	.LBB42_4
	j	.LBB42_3
.LBB42_3:
	lg	%r1, 168(%r11)
	lg	%r2, 0(%r1)
	stg	%r1, 8(%r2)
	j	.LBB42_4
.LBB42_4:
	lmg	%r11, %r15, 280(%r11)
	br	%r14
.Lfunc_end42:
	.size	insque, .Lfunc_end42-insque
	.cfi_endproc
                                        # -- End function
	.globl	remque                          # -- Begin function remque
	.p2align	4
	.type	remque,@function
remque:                                 # @remque
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 168(%r11)
	lg	%r0, 168(%r11)
	stg	%r0, 160(%r11)
	lg	%r1, 160(%r11)
	lg	%r0, 0(%r1)
	cghi	%r0, 0
	je	.LBB43_2
	j	.LBB43_1
.LBB43_1:
	lg	%r1, 160(%r11)
	lg	%r0, 8(%r1)
	lg	%r1, 0(%r1)
	stg	%r0, 8(%r1)
	j	.LBB43_2
.LBB43_2:
	lg	%r1, 160(%r11)
	lg	%r0, 8(%r1)
	cghi	%r0, 0
	je	.LBB43_4
	j	.LBB43_3
.LBB43_3:
	lg	%r1, 160(%r11)
	lg	%r0, 0(%r1)
	lg	%r1, 8(%r1)
	stg	%r0, 0(%r1)
	j	.LBB43_4
.LBB43_4:
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end43:
	.size	remque, .Lfunc_end43-remque
	.cfi_endproc
                                        # -- End function
	.globl	lsearch                         # -- Begin function lsearch
	.p2align	4
	.type	lsearch,@function
lsearch:                                # @lsearch
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -304
	.cfi_def_cfa_offset 464
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 288(%r11)
	stg	%r3, 280(%r11)
	stg	%r4, 272(%r11)
	stg	%r5, 264(%r11)
	stg	%r6, 256(%r11)
	lg	%r0, 264(%r11)
	stg	%r0, 224(%r11)                  # 8-byte Folded Spill
	lg	%r0, 280(%r11)
	stg	%r0, 248(%r11)
	lg	%r1, 272(%r11)
	lg	%r0, 0(%r1)
	stg	%r0, 240(%r11)
	mvghi	232(%r11), 0
	j	.LBB44_1
.LBB44_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r0, 232(%r11)
	lg	%r1, 240(%r11)
	clgr	%r0, %r1
	jhe	.LBB44_6
	j	.LBB44_2
.LBB44_2:                               #   in Loop: Header=BB44_1 Depth=1
	lg	%r4, 224(%r11)                  # 8-byte Folded Reload
	lg	%r1, 256(%r11)
	lg	%r2, 288(%r11)
	lg	%r3, 248(%r11)
	lg	%r0, 232(%r11)
	msgr	%r0, %r4
	agr	%r3, %r0
	basr	%r14, %r1
	lr	%r0, %r2
	chi	%r0, 0
	jlh	.LBB44_4
	j	.LBB44_3
.LBB44_3:
	lg	%r2, 224(%r11)                  # 8-byte Folded Reload
	lg	%r0, 248(%r11)
	lg	%r1, 232(%r11)
	msgr	%r1, %r2
	agr	%r0, %r1
	stg	%r0, 296(%r11)
	j	.LBB44_11
.LBB44_4:                               #   in Loop: Header=BB44_1 Depth=1
	j	.LBB44_5
.LBB44_5:                               #   in Loop: Header=BB44_1 Depth=1
	lg	%r1, 232(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 232(%r11)
	j	.LBB44_1
.LBB44_6:
	lg	%r1, 224(%r11)                  # 8-byte Folded Reload
	lg	%r2, 240(%r11)
	la	%r0, 1(%r2)
	lg	%r2, 272(%r11)
	stg	%r0, 0(%r2)
	lg	%r2, 248(%r11)
	lg	%r0, 240(%r11)
	msgr	%r0, %r1
	agr	%r2, %r0
	stg	%r2, 184(%r11)                  # 8-byte Folded Spill
	lg	%r3, 288(%r11)
	lg	%r1, 264(%r11)
	lay	%r1, -1(%r1)
	stg	%r1, 192(%r11)                  # 8-byte Folded Spill
	srlg	%r0, %r1, 8
	stg	%r0, 200(%r11)                  # 8-byte Folded Spill
	stg	%r3, 208(%r11)                  # 8-byte Folded Spill
	stg	%r2, 216(%r11)                  # 8-byte Folded Spill
	cghi	%r1, -1
	je	.LBB44_10
# %bb.7:
	lg	%r0, 200(%r11)                  # 8-byte Folded Reload
	lg	%r1, 208(%r11)                  # 8-byte Folded Reload
	lg	%r2, 216(%r11)                  # 8-byte Folded Reload
	cghi	%r0, 0
	stg	%r2, 160(%r11)                  # 8-byte Folded Spill
	stg	%r1, 168(%r11)                  # 8-byte Folded Spill
	stg	%r0, 176(%r11)                  # 8-byte Folded Spill
	je	.LBB44_9
.LBB44_8:                               # =>This Inner Loop Header: Depth=1
	lg	%r0, 176(%r11)                  # 8-byte Folded Reload
	lg	%r1, 168(%r11)                  # 8-byte Folded Reload
	lg	%r2, 160(%r11)                  # 8-byte Folded Reload
	pfd	2, 768(%r2)
	mvc	0(256,%r2), 0(%r1)
	la	%r2, 256(%r2)
	la	%r1, 256(%r1)
	aghi	%r0, -1
	cghi	%r0, 0
	stg	%r2, 160(%r11)                  # 8-byte Folded Spill
	stg	%r1, 168(%r11)                  # 8-byte Folded Spill
	stg	%r0, 176(%r11)                  # 8-byte Folded Spill
	jlh	.LBB44_8
.LBB44_9:
	lg	%r1, 192(%r11)                  # 8-byte Folded Reload
	lg	%r2, 160(%r11)                  # 8-byte Folded Reload
	lg	%r3, 168(%r11)                  # 8-byte Folded Reload
	exrl	%r1, .Ltmp0
.LBB44_10:
	lg	%r1, 184(%r11)                  # 8-byte Folded Reload
	stg	%r1, 296(%r11)
	j	.LBB44_11
.LBB44_11:
	lg	%r2, 296(%r11)
	lmg	%r11, %r15, 392(%r11)
	br	%r14
.Lfunc_end44:
	.size	lsearch, .Lfunc_end44-lsearch
	.cfi_endproc
                                        # -- End function
	.globl	lfind                           # -- Begin function lfind
	.p2align	4
	.type	lfind,@function
lfind:                                  # @lfind
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -240
	.cfi_def_cfa_offset 400
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 224(%r11)
	stg	%r3, 216(%r11)
	stg	%r4, 208(%r11)
	stg	%r5, 200(%r11)
	stg	%r6, 192(%r11)
	lg	%r0, 200(%r11)
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	lg	%r0, 216(%r11)
	stg	%r0, 184(%r11)
	lg	%r1, 208(%r11)
	lg	%r0, 0(%r1)
	stg	%r0, 176(%r11)
	mvghi	168(%r11), 0
	j	.LBB45_1
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r0, 168(%r11)
	lg	%r1, 176(%r11)
	clgr	%r0, %r1
	jhe	.LBB45_6
	j	.LBB45_2
.LBB45_2:                               #   in Loop: Header=BB45_1 Depth=1
	lg	%r4, 160(%r11)                  # 8-byte Folded Reload
	lg	%r1, 192(%r11)
	lg	%r2, 224(%r11)
	lg	%r3, 184(%r11)
	lg	%r0, 168(%r11)
	msgr	%r0, %r4
	agr	%r3, %r0
	basr	%r14, %r1
	lr	%r0, %r2
	chi	%r0, 0
	jlh	.LBB45_4
	j	.LBB45_3
.LBB45_3:
	lg	%r2, 160(%r11)                  # 8-byte Folded Reload
	lg	%r0, 184(%r11)
	lg	%r1, 168(%r11)
	msgr	%r1, %r2
	agr	%r0, %r1
	stg	%r0, 232(%r11)
	j	.LBB45_7
.LBB45_4:                               #   in Loop: Header=BB45_1 Depth=1
	j	.LBB45_5
.LBB45_5:                               #   in Loop: Header=BB45_1 Depth=1
	lg	%r1, 168(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 168(%r11)
	j	.LBB45_1
.LBB45_6:
	mvghi	232(%r11), 0
	j	.LBB45_7
.LBB45_7:
	lg	%r2, 232(%r11)
	lmg	%r11, %r15, 328(%r11)
	br	%r14
.Lfunc_end45:
	.size	lfind, .Lfunc_end45-lfind
	.cfi_endproc
                                        # -- End function
	.globl	abs                             # -- Begin function abs
	.p2align	4
	.type	abs,@function
abs:                                    # @abs
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	chi	%r0, 0
	jle	.LBB46_2
	j	.LBB46_1
.LBB46_1:
	l	%r0, 164(%r11)
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB46_3
.LBB46_2:
	l	%r0, 164(%r11)
	lcr	%r0, %r0
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB46_3
.LBB46_3:
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
	lgfr	%r2, %r0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end46:
	.size	abs, .Lfunc_end46-abs
	.cfi_endproc
                                        # -- End function
	.globl	atoi                            # -- Begin function atoi
	.p2align	4
	.type	atoi,@function
atoi:                                   # @atoi
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -184
	.cfi_def_cfa_offset 344
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 176(%r11)
	mvhi	172(%r11), 0
	mvhi	168(%r11), 0
	j	.LBB47_1
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 176(%r11)
	llgc	%r2, 0(%r1)
	brasl	%r14, isspace@PLT
	lr	%r0, %r2
	chi	%r0, 0
	je	.LBB47_3
	j	.LBB47_2
.LBB47_2:                               #   in Loop: Header=BB47_1 Depth=1
	lg	%r1, 176(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 176(%r11)
	j	.LBB47_1
.LBB47_3:
	lg	%r1, 176(%r11)
	llc	%r0, 0(%r1)
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	chi	%r0, 43
	je	.LBB47_6
	j	.LBB47_4
.LBB47_4:
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	chi	%r0, 45
	jlh	.LBB47_7
	j	.LBB47_5
.LBB47_5:
	mvhi	168(%r11), 1
	j	.LBB47_6
.LBB47_6:
	lg	%r1, 176(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 176(%r11)
	j	.LBB47_7
.LBB47_7:
	j	.LBB47_8
.LBB47_8:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 176(%r11)
	llgc	%r2, 0(%r1)
	brasl	%r14, isdigit@PLT
	lr	%r0, %r2
	chi	%r0, 0
	je	.LBB47_10
	j	.LBB47_9
.LBB47_9:                               #   in Loop: Header=BB47_8 Depth=1
	l	%r0, 172(%r11)
	mhi	%r0, 10
	lg	%r1, 176(%r11)
	la	%r2, 1(%r1)
	stg	%r2, 176(%r11)
	llc	%r1, 0(%r1)
	sr	%r0, %r1
	ahi	%r0, 48
	st	%r0, 172(%r11)
	j	.LBB47_8
.LBB47_10:
	l	%r0, 168(%r11)
	chi	%r0, 0
	je	.LBB47_12
	j	.LBB47_11
.LBB47_11:
	l	%r0, 172(%r11)
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB47_13
.LBB47_12:
	l	%r0, 172(%r11)
	lcr	%r0, %r0
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB47_13
.LBB47_13:
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
	lgfr	%r2, %r0
	lmg	%r11, %r15, 272(%r11)
	br	%r14
.Lfunc_end47:
	.size	atoi, .Lfunc_end47-atoi
	.cfi_endproc
                                        # -- End function
	.globl	atol                            # -- Begin function atol
	.p2align	4
	.type	atol,@function
atol:                                   # @atol
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 184(%r11)
	mvghi	176(%r11), 0
	mvhi	172(%r11), 0
	j	.LBB48_1
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 184(%r11)
	llgc	%r2, 0(%r1)
	brasl	%r14, isspace@PLT
	lr	%r0, %r2
	chi	%r0, 0
	je	.LBB48_3
	j	.LBB48_2
.LBB48_2:                               #   in Loop: Header=BB48_1 Depth=1
	lg	%r1, 184(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 184(%r11)
	j	.LBB48_1
.LBB48_3:
	lg	%r1, 184(%r11)
	llc	%r0, 0(%r1)
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	chi	%r0, 43
	je	.LBB48_6
	j	.LBB48_4
.LBB48_4:
	l	%r0, 168(%r11)                  # 4-byte Folded Reload
	chi	%r0, 45
	jlh	.LBB48_7
	j	.LBB48_5
.LBB48_5:
	mvhi	172(%r11), 1
	j	.LBB48_6
.LBB48_6:
	lg	%r1, 184(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 184(%r11)
	j	.LBB48_7
.LBB48_7:
	j	.LBB48_8
.LBB48_8:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 184(%r11)
	llgc	%r2, 0(%r1)
	brasl	%r14, isdigit@PLT
	lr	%r0, %r2
	chi	%r0, 0
	je	.LBB48_10
	j	.LBB48_9
.LBB48_9:                               #   in Loop: Header=BB48_8 Depth=1
	lg	%r0, 176(%r11)
	mghi	%r0, 10
	lg	%r1, 184(%r11)
	la	%r2, 1(%r1)
	stg	%r2, 184(%r11)
	llc	%r1, 0(%r1)
	ahi	%r1, -48
	sgfr	%r0, %r1
	stg	%r0, 176(%r11)
	j	.LBB48_8
.LBB48_10:
	l	%r0, 172(%r11)
	chi	%r0, 0
	je	.LBB48_12
	j	.LBB48_11
.LBB48_11:
	lg	%r0, 176(%r11)
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB48_13
.LBB48_12:
	lg	%r0, 176(%r11)
	lcgr	%r0, %r0
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB48_13
.LBB48_13:
	lg	%r2, 160(%r11)                  # 8-byte Folded Reload
	lmg	%r11, %r15, 280(%r11)
	br	%r14
.Lfunc_end48:
	.size	atol, .Lfunc_end48-atol
	.cfi_endproc
                                        # -- End function
	.globl	atoll                           # -- Begin function atoll
	.p2align	4
	.type	atoll,@function
atoll:                                  # @atoll
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 184(%r11)
	mvghi	176(%r11), 0
	mvhi	172(%r11), 0
	j	.LBB49_1
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 184(%r11)
	llgc	%r2, 0(%r1)
	brasl	%r14, isspace@PLT
	lr	%r0, %r2
	chi	%r0, 0
	je	.LBB49_3
	j	.LBB49_2
.LBB49_2:                               #   in Loop: Header=BB49_1 Depth=1
	lg	%r1, 184(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 184(%r11)
	j	.LBB49_1
.LBB49_3:
	lg	%r1, 184(%r11)
	llc	%r0, 0(%r1)
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	chi	%r0, 43
	je	.LBB49_6
	j	.LBB49_4
.LBB49_4:
	l	%r0, 168(%r11)                  # 4-byte Folded Reload
	chi	%r0, 45
	jlh	.LBB49_7
	j	.LBB49_5
.LBB49_5:
	mvhi	172(%r11), 1
	j	.LBB49_6
.LBB49_6:
	lg	%r1, 184(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 184(%r11)
	j	.LBB49_7
.LBB49_7:
	j	.LBB49_8
.LBB49_8:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 184(%r11)
	llgc	%r2, 0(%r1)
	brasl	%r14, isdigit@PLT
	lr	%r0, %r2
	chi	%r0, 0
	je	.LBB49_10
	j	.LBB49_9
.LBB49_9:                               #   in Loop: Header=BB49_8 Depth=1
	lg	%r0, 176(%r11)
	mghi	%r0, 10
	lg	%r1, 184(%r11)
	la	%r2, 1(%r1)
	stg	%r2, 184(%r11)
	llc	%r1, 0(%r1)
	ahi	%r1, -48
	sgfr	%r0, %r1
	stg	%r0, 176(%r11)
	j	.LBB49_8
.LBB49_10:
	l	%r0, 172(%r11)
	chi	%r0, 0
	je	.LBB49_12
	j	.LBB49_11
.LBB49_11:
	lg	%r0, 176(%r11)
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB49_13
.LBB49_12:
	lg	%r0, 176(%r11)
	lcgr	%r0, %r0
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB49_13
.LBB49_13:
	lg	%r2, 160(%r11)                  # 8-byte Folded Reload
	lmg	%r11, %r15, 280(%r11)
	br	%r14
.Lfunc_end49:
	.size	atoll, .Lfunc_end49-atoll
	.cfi_endproc
                                        # -- End function
	.globl	bsearch                         # -- Begin function bsearch
	.p2align	4
	.type	bsearch,@function
bsearch:                                # @bsearch
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -224
	.cfi_def_cfa_offset 384
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 208(%r11)
	stg	%r3, 200(%r11)
	stg	%r4, 192(%r11)
	stg	%r5, 184(%r11)
	stg	%r6, 176(%r11)
	j	.LBB50_1
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r0, 192(%r11)
	cghi	%r0, 0
	je	.LBB50_9
	j	.LBB50_2
.LBB50_2:                               #   in Loop: Header=BB50_1 Depth=1
	lg	%r0, 200(%r11)
	lg	%r1, 184(%r11)
	lg	%r2, 192(%r11)
	srlg	%r2, %r2, 1
	msgr	%r1, %r2
	agr	%r0, %r1
	stg	%r0, 168(%r11)
	lg	%r1, 176(%r11)
	lg	%r2, 208(%r11)
	lg	%r3, 168(%r11)
	basr	%r14, %r1
	lr	%r0, %r2
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	chi	%r0, 0
	jhe	.LBB50_4
	j	.LBB50_3
.LBB50_3:                               #   in Loop: Header=BB50_1 Depth=1
	lg	%r0, 192(%r11)
	srlg	%r0, %r0, 1
	stg	%r0, 192(%r11)
	j	.LBB50_8
.LBB50_4:                               #   in Loop: Header=BB50_1 Depth=1
	l	%r0, 164(%r11)
	chi	%r0, 0
	jle	.LBB50_6
	j	.LBB50_5
.LBB50_5:                               #   in Loop: Header=BB50_1 Depth=1
	lg	%r1, 168(%r11)
	lg	%r2, 184(%r11)
	la	%r0, 0(%r2,%r1)
	stg	%r0, 200(%r11)
	lg	%r1, 192(%r11)
	srlg	%r0, %r1, 1
	lcgr	%r0, %r0
	aghi	%r0, -1
	agr	%r0, %r1
	stg	%r0, 192(%r11)
	j	.LBB50_7
.LBB50_6:
	lg	%r0, 168(%r11)
	stg	%r0, 216(%r11)
	j	.LBB50_10
.LBB50_7:                               #   in Loop: Header=BB50_1 Depth=1
	j	.LBB50_8
.LBB50_8:                               #   in Loop: Header=BB50_1 Depth=1
	j	.LBB50_1
.LBB50_9:
	mvghi	216(%r11), 0
	j	.LBB50_10
.LBB50_10:
	lg	%r2, 216(%r11)
	lmg	%r11, %r15, 312(%r11)
	br	%r14
.Lfunc_end50:
	.size	bsearch, .Lfunc_end50-bsearch
	.cfi_endproc
                                        # -- End function
	.globl	bsearch_r                       # -- Begin function bsearch_r
	.p2align	4
	.type	bsearch_r,@function
bsearch_r:                              # @bsearch_r
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -232
	.cfi_def_cfa_offset 392
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lg	%r0, 392(%r11)
	stg	%r2, 216(%r11)
	stg	%r3, 208(%r11)
	stg	%r4, 200(%r11)
	stg	%r5, 192(%r11)
	stg	%r6, 184(%r11)
	lg	%r0, 208(%r11)
	stg	%r0, 176(%r11)
	lg	%r0, 200(%r11)
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 172(%r11)
	j	.LBB51_1
.LBB51_1:                               # =>This Inner Loop Header: Depth=1
	l	%r0, 172(%r11)
	chi	%r0, 0
	je	.LBB51_8
	j	.LBB51_2
.LBB51_2:                               #   in Loop: Header=BB51_1 Depth=1
	lg	%r0, 176(%r11)
	l	%r2, 172(%r11)
	sra	%r2, 1
	lg	%r1, 192(%r11)
	msgfr	%r1, %r2
	agr	%r0, %r1
	stg	%r0, 160(%r11)
	lg	%r1, 184(%r11)
	lg	%r2, 216(%r11)
	lg	%r3, 160(%r11)
	lg	%r4, 392(%r11)
	basr	%r14, %r1
	lr	%r0, %r2
	st	%r0, 168(%r11)
	l	%r0, 168(%r11)
	chi	%r0, 0
	jlh	.LBB51_4
	j	.LBB51_3
.LBB51_3:
	lg	%r0, 160(%r11)
	stg	%r0, 224(%r11)
	j	.LBB51_9
.LBB51_4:                               #   in Loop: Header=BB51_1 Depth=1
	l	%r0, 168(%r11)
	chi	%r0, 0
	jle	.LBB51_6
	j	.LBB51_5
.LBB51_5:                               #   in Loop: Header=BB51_1 Depth=1
	lg	%r1, 160(%r11)
	lg	%r2, 192(%r11)
	la	%r0, 0(%r2,%r1)
	stg	%r0, 176(%r11)
	l	%r0, 172(%r11)
	ahi	%r0, -1
	st	%r0, 172(%r11)
	j	.LBB51_6
.LBB51_6:                               #   in Loop: Header=BB51_1 Depth=1
	j	.LBB51_7
.LBB51_7:                               #   in Loop: Header=BB51_1 Depth=1
	l	%r0, 172(%r11)
	sra	%r0, 1
	st	%r0, 172(%r11)
	j	.LBB51_1
.LBB51_8:
	mvghi	224(%r11), 0
	j	.LBB51_9
.LBB51_9:
	lg	%r2, 224(%r11)
	lmg	%r11, %r15, 320(%r11)
	br	%r14
.Lfunc_end51:
	.size	bsearch_r, .Lfunc_end51-bsearch_r
	.cfi_endproc
                                        # -- End function
	.globl	div                             # -- Begin function div
	.p2align	4
	.type	div,@function
div:                                    # @div
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r4
	lr	%r1, %r3
	st	%r1, 164(%r11)
	st	%r0, 160(%r11)
	lgf	%r4, 164(%r11)
	l	%r3, 160(%r11)
                                        # implicit-def: $r0q
	lgr	%r1, %r4
	dsgfr	%r0, %r3
	lr	%r0, %r1
	st	%r0, 0(%r2)
	lgf	%r4, 164(%r11)
	l	%r3, 160(%r11)
                                        # implicit-def: $r0q
	lgr	%r1, %r4
	dsgfr	%r0, %r3
                                        # kill: def $r0l killed $r0l killed $r0q
	st	%r0, 4(%r2)
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end52:
	.size	div, .Lfunc_end52-div
	.cfi_endproc
                                        # -- End function
	.globl	imaxabs                         # -- Begin function imaxabs
	.p2align	4
	.type	imaxabs,@function
imaxabs:                                # @imaxabs
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 168(%r11)
	lg	%r0, 168(%r11)
	cghi	%r0, 0
	jle	.LBB53_2
	j	.LBB53_1
.LBB53_1:
	lg	%r0, 168(%r11)
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB53_3
.LBB53_2:
	lg	%r0, 168(%r11)
	lcgr	%r0, %r0
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB53_3
.LBB53_3:
	lg	%r2, 160(%r11)                  # 8-byte Folded Reload
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end53:
	.size	imaxabs, .Lfunc_end53-imaxabs
	.cfi_endproc
                                        # -- End function
	.globl	imaxdiv                         # -- Begin function imaxdiv
	.p2align	4
	.type	imaxdiv,@function
imaxdiv:                                # @imaxdiv
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r3, 168(%r11)
	stg	%r4, 160(%r11)
	lg	%r4, 168(%r11)
	lg	%r3, 160(%r11)
                                        # implicit-def: $r0q
	lgr	%r1, %r4
	dsgr	%r0, %r3
	lgr	%r0, %r1
	stg	%r0, 0(%r2)
	lg	%r4, 168(%r11)
	lg	%r3, 160(%r11)
                                        # implicit-def: $r0q
	lgr	%r1, %r4
	dsgr	%r0, %r3
                                        # kill: def $r0d killed $r0d killed $r0q
	stg	%r0, 8(%r2)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end54:
	.size	imaxdiv, .Lfunc_end54-imaxdiv
	.cfi_endproc
                                        # -- End function
	.globl	labs                            # -- Begin function labs
	.p2align	4
	.type	labs,@function
labs:                                   # @labs
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 168(%r11)
	lg	%r0, 168(%r11)
	cghi	%r0, 0
	jle	.LBB55_2
	j	.LBB55_1
.LBB55_1:
	lg	%r0, 168(%r11)
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB55_3
.LBB55_2:
	lg	%r0, 168(%r11)
	lcgr	%r0, %r0
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB55_3
.LBB55_3:
	lg	%r2, 160(%r11)                  # 8-byte Folded Reload
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end55:
	.size	labs, .Lfunc_end55-labs
	.cfi_endproc
                                        # -- End function
	.globl	ldiv                            # -- Begin function ldiv
	.p2align	4
	.type	ldiv,@function
ldiv:                                   # @ldiv
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r3, 168(%r11)
	stg	%r4, 160(%r11)
	lg	%r4, 168(%r11)
	lg	%r3, 160(%r11)
                                        # implicit-def: $r0q
	lgr	%r1, %r4
	dsgr	%r0, %r3
	lgr	%r0, %r1
	stg	%r0, 0(%r2)
	lg	%r4, 168(%r11)
	lg	%r3, 160(%r11)
                                        # implicit-def: $r0q
	lgr	%r1, %r4
	dsgr	%r0, %r3
                                        # kill: def $r0d killed $r0d killed $r0q
	stg	%r0, 8(%r2)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end56:
	.size	ldiv, .Lfunc_end56-ldiv
	.cfi_endproc
                                        # -- End function
	.globl	llabs                           # -- Begin function llabs
	.p2align	4
	.type	llabs,@function
llabs:                                  # @llabs
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 168(%r11)
	lg	%r0, 168(%r11)
	cghi	%r0, 0
	jle	.LBB57_2
	j	.LBB57_1
.LBB57_1:
	lg	%r0, 168(%r11)
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB57_3
.LBB57_2:
	lg	%r0, 168(%r11)
	lcgr	%r0, %r0
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB57_3
.LBB57_3:
	lg	%r2, 160(%r11)                  # 8-byte Folded Reload
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end57:
	.size	llabs, .Lfunc_end57-llabs
	.cfi_endproc
                                        # -- End function
	.globl	lldiv                           # -- Begin function lldiv
	.p2align	4
	.type	lldiv,@function
lldiv:                                  # @lldiv
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r3, 168(%r11)
	stg	%r4, 160(%r11)
	lg	%r4, 168(%r11)
	lg	%r3, 160(%r11)
                                        # implicit-def: $r0q
	lgr	%r1, %r4
	dsgr	%r0, %r3
	lgr	%r0, %r1
	stg	%r0, 0(%r2)
	lg	%r4, 168(%r11)
	lg	%r3, 160(%r11)
                                        # implicit-def: $r0q
	lgr	%r1, %r4
	dsgr	%r0, %r3
                                        # kill: def $r0d killed $r0d killed $r0q
	stg	%r0, 8(%r2)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end58:
	.size	lldiv, .Lfunc_end58-lldiv
	.cfi_endproc
                                        # -- End function
	.globl	wcschr                          # -- Begin function wcschr
	.p2align	4
	.type	wcschr,@function
wcschr:                                 # @wcschr
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -184
	.cfi_def_cfa_offset 344
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	stg	%r2, 176(%r11)
	st	%r0, 172(%r11)
	j	.LBB59_1
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 176(%r11)
	l	%r1, 0(%r1)
	lhi	%r0, 0
	chi	%r1, 0
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	je	.LBB59_3
	j	.LBB59_2
.LBB59_2:                               #   in Loop: Header=BB59_1 Depth=1
	lg	%r1, 176(%r11)
	l	%r0, 0(%r1)
	l	%r1, 172(%r11)
	cr	%r0, %r1
	ipm	%r0
	afi	%r0, 1879048192
	srl	%r0, 31
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	j	.LBB59_3
.LBB59_3:                               #   in Loop: Header=BB59_1 Depth=1
	l	%r0, 168(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB59_6
	j	.LBB59_4
.LBB59_4:                               #   in Loop: Header=BB59_1 Depth=1
	j	.LBB59_5
.LBB59_5:                               #   in Loop: Header=BB59_1 Depth=1
	lg	%r1, 176(%r11)
	la	%r0, 4(%r1)
	stg	%r0, 176(%r11)
	j	.LBB59_1
.LBB59_6:
	lg	%r1, 176(%r11)
	l	%r0, 0(%r1)
	chi	%r0, 0
	je	.LBB59_8
	j	.LBB59_7
.LBB59_7:
	lg	%r0, 176(%r11)
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB59_9
.LBB59_8:
	lghi	%r0, 0
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB59_9
.LBB59_9:
	lg	%r2, 160(%r11)                  # 8-byte Folded Reload
	lmg	%r11, %r15, 272(%r11)
	br	%r14
.Lfunc_end59:
	.size	wcschr, .Lfunc_end59-wcschr
	.cfi_endproc
                                        # -- End function
	.globl	wcscmp                          # -- Begin function wcscmp
	.p2align	4
	.type	wcscmp,@function
wcscmp:                                 # @wcscmp
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -184
	.cfi_def_cfa_offset 344
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 176(%r11)
	stg	%r3, 168(%r11)
	j	.LBB60_1
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 176(%r11)
	l	%r1, 0(%r1)
	lg	%r2, 168(%r11)
	l	%r2, 0(%r2)
	lhi	%r0, 0
	cr	%r1, %r2
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jlh	.LBB60_4
	j	.LBB60_2
.LBB60_2:                               #   in Loop: Header=BB60_1 Depth=1
	lg	%r1, 176(%r11)
	l	%r1, 0(%r1)
	lhi	%r0, 0
	chi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB60_4
	j	.LBB60_3
.LBB60_3:                               #   in Loop: Header=BB60_1 Depth=1
	lg	%r1, 168(%r11)
	l	%r0, 0(%r1)
	chi	%r0, 0
	ipm	%r0
	afi	%r0, 1879048192
	srl	%r0, 31
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB60_4
.LBB60_4:                               #   in Loop: Header=BB60_1 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB60_7
	j	.LBB60_5
.LBB60_5:                               #   in Loop: Header=BB60_1 Depth=1
	j	.LBB60_6
.LBB60_6:                               #   in Loop: Header=BB60_1 Depth=1
	lg	%r1, 176(%r11)
	la	%r0, 4(%r1)
	stg	%r0, 176(%r11)
	lg	%r1, 168(%r11)
	la	%r0, 4(%r1)
	stg	%r0, 168(%r11)
	j	.LBB60_1
.LBB60_7:
	lg	%r1, 176(%r11)
	l	%r0, 0(%r1)
	lg	%r1, 168(%r11)
	l	%r1, 0(%r1)
	cr	%r0, %r1
	jhe	.LBB60_9
	j	.LBB60_8
.LBB60_8:
	lhi	%r0, -1
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB60_10
.LBB60_9:
	lg	%r1, 176(%r11)
	l	%r0, 0(%r1)
	lg	%r1, 168(%r11)
	l	%r1, 0(%r1)
	cr	%r0, %r1
	ipm	%r0
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 63, 191, 35
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB60_10
.LBB60_10:
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
	lgfr	%r2, %r0
	lmg	%r11, %r15, 272(%r11)
	br	%r14
.Lfunc_end60:
	.size	wcscmp, .Lfunc_end60-wcscmp
	.cfi_endproc
                                        # -- End function
	.globl	wcscpy                          # -- Begin function wcscpy
	.p2align	4
	.type	wcscpy,@function
wcscpy:                                 # @wcscpy
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -184
	.cfi_def_cfa_offset 344
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 176(%r11)
	stg	%r3, 168(%r11)
	lg	%r0, 176(%r11)
	stg	%r0, 160(%r11)
	j	.LBB61_1
.LBB61_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 168(%r11)
	la	%r0, 4(%r1)
	stg	%r0, 168(%r11)
	l	%r0, 0(%r1)
	lg	%r1, 176(%r11)
	la	%r2, 4(%r1)
	stg	%r2, 176(%r11)
	st	%r0, 0(%r1)
	chi	%r0, 0
	je	.LBB61_3
	j	.LBB61_2
.LBB61_2:                               #   in Loop: Header=BB61_1 Depth=1
	j	.LBB61_1
.LBB61_3:
	lg	%r2, 160(%r11)
	lmg	%r11, %r15, 272(%r11)
	br	%r14
.Lfunc_end61:
	.size	wcscpy, .Lfunc_end61-wcscpy
	.cfi_endproc
                                        # -- End function
	.globl	wcslen                          # -- Begin function wcslen
	.p2align	4
	.type	wcslen,@function
wcslen:                                 # @wcslen
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 168(%r11)
	lg	%r0, 168(%r11)
	stg	%r0, 160(%r11)
	j	.LBB62_1
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 168(%r11)
	l	%r0, 0(%r1)
	chi	%r0, 0
	je	.LBB62_4
	j	.LBB62_2
.LBB62_2:                               #   in Loop: Header=BB62_1 Depth=1
	j	.LBB62_3
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
	lg	%r1, 168(%r11)
	la	%r0, 4(%r1)
	stg	%r0, 168(%r11)
	j	.LBB62_1
.LBB62_4:
	lg	%r0, 168(%r11)
	lg	%r1, 160(%r11)
	sgr	%r0, %r1
	srag	%r2, %r0, 2
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end62:
	.size	wcslen, .Lfunc_end62-wcslen
	.cfi_endproc
                                        # -- End function
	.globl	wcsncmp                         # -- Begin function wcsncmp
	.p2align	4
	.type	wcsncmp,@function
wcsncmp:                                # @wcsncmp
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 192(%r11)
	stg	%r3, 184(%r11)
	stg	%r4, 176(%r11)
	j	.LBB63_1
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 176(%r11)
	lhi	%r0, 0
	cghi	%r1, 0
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	je	.LBB63_5
	j	.LBB63_2
.LBB63_2:                               #   in Loop: Header=BB63_1 Depth=1
	lg	%r1, 192(%r11)
	l	%r1, 0(%r1)
	lg	%r2, 184(%r11)
	l	%r2, 0(%r2)
	lhi	%r0, 0
	cr	%r1, %r2
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	jlh	.LBB63_5
	j	.LBB63_3
.LBB63_3:                               #   in Loop: Header=BB63_1 Depth=1
	lg	%r1, 192(%r11)
	l	%r1, 0(%r1)
	lhi	%r0, 0
	chi	%r1, 0
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	je	.LBB63_5
	j	.LBB63_4
.LBB63_4:                               #   in Loop: Header=BB63_1 Depth=1
	lg	%r1, 184(%r11)
	l	%r0, 0(%r1)
	chi	%r0, 0
	ipm	%r0
	afi	%r0, 1879048192
	srl	%r0, 31
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	j	.LBB63_5
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
	l	%r0, 172(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB63_8
	j	.LBB63_6
.LBB63_6:                               #   in Loop: Header=BB63_1 Depth=1
	j	.LBB63_7
.LBB63_7:                               #   in Loop: Header=BB63_1 Depth=1
	lg	%r1, 176(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 176(%r11)
	lg	%r1, 192(%r11)
	la	%r0, 4(%r1)
	stg	%r0, 192(%r11)
	lg	%r1, 184(%r11)
	la	%r0, 4(%r1)
	stg	%r0, 184(%r11)
	j	.LBB63_1
.LBB63_8:
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB63_13
	j	.LBB63_9
.LBB63_9:
	lg	%r1, 192(%r11)
	l	%r0, 0(%r1)
	lg	%r1, 184(%r11)
	l	%r1, 0(%r1)
	cr	%r0, %r1
	jhe	.LBB63_11
	j	.LBB63_10
.LBB63_10:
	lhi	%r0, -1
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	j	.LBB63_12
.LBB63_11:
	lg	%r1, 192(%r11)
	l	%r0, 0(%r1)
	lg	%r1, 184(%r11)
	l	%r1, 0(%r1)
	cr	%r0, %r1
	ipm	%r0
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 63, 191, 35
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	j	.LBB63_12
.LBB63_12:
	l	%r0, 168(%r11)                  # 4-byte Folded Reload
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB63_14
.LBB63_13:
	lhi	%r0, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB63_14
.LBB63_14:
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	lgfr	%r2, %r0
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end63:
	.size	wcsncmp, .Lfunc_end63-wcsncmp
	.cfi_endproc
                                        # -- End function
	.globl	wmemchr                         # -- Begin function wmemchr
	.p2align	4
	.type	wmemchr,@function
wmemchr:                                # @wmemchr
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	stg	%r2, 192(%r11)
	st	%r0, 188(%r11)
	stg	%r4, 176(%r11)
	j	.LBB64_1
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 176(%r11)
	lhi	%r0, 0
	cghi	%r1, 0
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	je	.LBB64_3
	j	.LBB64_2
.LBB64_2:                               #   in Loop: Header=BB64_1 Depth=1
	lg	%r1, 192(%r11)
	l	%r0, 0(%r1)
	l	%r1, 188(%r11)
	cr	%r0, %r1
	ipm	%r0
	afi	%r0, 1879048192
	srl	%r0, 31
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	j	.LBB64_3
.LBB64_3:                               #   in Loop: Header=BB64_1 Depth=1
	l	%r0, 172(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB64_6
	j	.LBB64_4
.LBB64_4:                               #   in Loop: Header=BB64_1 Depth=1
	j	.LBB64_5
.LBB64_5:                               #   in Loop: Header=BB64_1 Depth=1
	lg	%r1, 176(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 176(%r11)
	lg	%r1, 192(%r11)
	la	%r0, 4(%r1)
	stg	%r0, 192(%r11)
	j	.LBB64_1
.LBB64_6:
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB64_8
	j	.LBB64_7
.LBB64_7:
	lg	%r0, 192(%r11)
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB64_9
.LBB64_8:
	lghi	%r0, 0
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB64_9
.LBB64_9:
	lg	%r2, 160(%r11)                  # 8-byte Folded Reload
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end64:
	.size	wmemchr, .Lfunc_end64-wmemchr
	.cfi_endproc
                                        # -- End function
	.globl	wmemcmp                         # -- Begin function wmemcmp
	.p2align	4
	.type	wmemcmp,@function
wmemcmp:                                # @wmemcmp
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 192(%r11)
	stg	%r3, 184(%r11)
	stg	%r4, 176(%r11)
	j	.LBB65_1
.LBB65_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 176(%r11)
	lhi	%r0, 0
	cghi	%r1, 0
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	je	.LBB65_3
	j	.LBB65_2
.LBB65_2:                               #   in Loop: Header=BB65_1 Depth=1
	lg	%r1, 192(%r11)
	l	%r0, 0(%r1)
	lg	%r1, 184(%r11)
	l	%r1, 0(%r1)
	cr	%r0, %r1
	ipm	%r0
	afi	%r0, -268435456
	srl	%r0, 31
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	j	.LBB65_3
.LBB65_3:                               #   in Loop: Header=BB65_1 Depth=1
	l	%r0, 172(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB65_6
	j	.LBB65_4
.LBB65_4:                               #   in Loop: Header=BB65_1 Depth=1
	j	.LBB65_5
.LBB65_5:                               #   in Loop: Header=BB65_1 Depth=1
	lg	%r1, 176(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 176(%r11)
	lg	%r1, 192(%r11)
	la	%r0, 4(%r1)
	stg	%r0, 192(%r11)
	lg	%r1, 184(%r11)
	la	%r0, 4(%r1)
	stg	%r0, 184(%r11)
	j	.LBB65_1
.LBB65_6:
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB65_11
	j	.LBB65_7
.LBB65_7:
	lg	%r1, 192(%r11)
	l	%r0, 0(%r1)
	lg	%r1, 184(%r11)
	l	%r1, 0(%r1)
	cr	%r0, %r1
	jhe	.LBB65_9
	j	.LBB65_8
.LBB65_8:
	lhi	%r0, -1
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	j	.LBB65_10
.LBB65_9:
	lg	%r1, 192(%r11)
	l	%r0, 0(%r1)
	lg	%r1, 184(%r11)
	l	%r1, 0(%r1)
	cr	%r0, %r1
	ipm	%r0
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 63, 191, 35
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	j	.LBB65_10
.LBB65_10:
	l	%r0, 168(%r11)                  # 4-byte Folded Reload
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB65_12
.LBB65_11:
	lhi	%r0, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB65_12
.LBB65_12:
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	lgfr	%r2, %r0
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end65:
	.size	wmemcmp, .Lfunc_end65-wmemcmp
	.cfi_endproc
                                        # -- End function
	.globl	wmemcpy                         # -- Begin function wmemcpy
	.p2align	4
	.type	wmemcpy,@function
wmemcpy:                                # @wmemcpy
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 184(%r11)
	stg	%r3, 176(%r11)
	stg	%r4, 168(%r11)
	lg	%r0, 184(%r11)
	stg	%r0, 160(%r11)
	j	.LBB66_1
.LBB66_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 168(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 168(%r11)
	cghi	%r1, 0
	je	.LBB66_3
	j	.LBB66_2
.LBB66_2:                               #   in Loop: Header=BB66_1 Depth=1
	lg	%r1, 176(%r11)
	la	%r0, 4(%r1)
	stg	%r0, 176(%r11)
	l	%r0, 0(%r1)
	lg	%r1, 184(%r11)
	la	%r2, 4(%r1)
	stg	%r2, 184(%r11)
	st	%r0, 0(%r1)
	j	.LBB66_1
.LBB66_3:
	lg	%r2, 160(%r11)
	lmg	%r11, %r15, 280(%r11)
	br	%r14
.Lfunc_end66:
	.size	wmemcpy, .Lfunc_end66-wmemcpy
	.cfi_endproc
                                        # -- End function
	.globl	wmemmove                        # -- Begin function wmemmove
	.p2align	4
	.type	wmemmove,@function
wmemmove:                               # @wmemmove
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 184(%r11)
	stg	%r3, 176(%r11)
	stg	%r4, 168(%r11)
	lg	%r0, 184(%r11)
	stg	%r0, 160(%r11)
	lg	%r0, 184(%r11)
	lg	%r1, 176(%r11)
	cgr	%r0, %r1
	jlh	.LBB67_2
	j	.LBB67_1
.LBB67_1:
	lg	%r0, 184(%r11)
	stg	%r0, 192(%r11)
	j	.LBB67_12
.LBB67_2:
	lg	%r0, 184(%r11)
	lg	%r1, 176(%r11)
	sgr	%r0, %r1
	lg	%r1, 168(%r11)
	sllg	%r1, %r1, 2
	clgr	%r0, %r1
	jhe	.LBB67_7
	j	.LBB67_3
.LBB67_3:
	j	.LBB67_4
.LBB67_4:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 168(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 168(%r11)
	cghi	%r1, 0
	je	.LBB67_6
	j	.LBB67_5
.LBB67_5:                               #   in Loop: Header=BB67_4 Depth=1
	lg	%r1, 176(%r11)
	lg	%r0, 168(%r11)
	sllg	%r2, %r0, 2
	l	%r0, 0(%r2,%r1)
	lg	%r1, 184(%r11)
	st	%r0, 0(%r2,%r1)
	j	.LBB67_4
.LBB67_6:
	j	.LBB67_11
.LBB67_7:
	j	.LBB67_8
.LBB67_8:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 168(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 168(%r11)
	cghi	%r1, 0
	je	.LBB67_10
	j	.LBB67_9
.LBB67_9:                               #   in Loop: Header=BB67_8 Depth=1
	lg	%r1, 176(%r11)
	la	%r0, 4(%r1)
	stg	%r0, 176(%r11)
	l	%r0, 0(%r1)
	lg	%r1, 184(%r11)
	la	%r2, 4(%r1)
	stg	%r2, 184(%r11)
	st	%r0, 0(%r1)
	j	.LBB67_8
.LBB67_10:
	j	.LBB67_11
.LBB67_11:
	lg	%r0, 160(%r11)
	stg	%r0, 192(%r11)
	j	.LBB67_12
.LBB67_12:
	lg	%r2, 192(%r11)
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end67:
	.size	wmemmove, .Lfunc_end67-wmemmove
	.cfi_endproc
                                        # -- End function
	.globl	wmemset                         # -- Begin function wmemset
	.p2align	4
	.type	wmemset,@function
wmemset:                                # @wmemset
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	stg	%r2, 184(%r11)
	st	%r0, 180(%r11)
	stg	%r4, 168(%r11)
	lg	%r0, 184(%r11)
	stg	%r0, 160(%r11)
	j	.LBB68_1
.LBB68_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 168(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 168(%r11)
	cghi	%r1, 0
	je	.LBB68_3
	j	.LBB68_2
.LBB68_2:                               #   in Loop: Header=BB68_1 Depth=1
	l	%r0, 180(%r11)
	lg	%r1, 184(%r11)
	la	%r2, 4(%r1)
	stg	%r2, 184(%r11)
	st	%r0, 0(%r1)
	j	.LBB68_1
.LBB68_3:
	lg	%r2, 160(%r11)
	lmg	%r11, %r15, 280(%r11)
	br	%r14
.Lfunc_end68:
	.size	wmemset, .Lfunc_end68-wmemset
	.cfi_endproc
                                        # -- End function
	.globl	bcopy                           # -- Begin function bcopy
	.p2align	4
	.type	bcopy,@function
bcopy:                                  # @bcopy
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 192(%r11)
	stg	%r3, 184(%r11)
	stg	%r4, 176(%r11)
	lg	%r0, 192(%r11)
	stg	%r0, 168(%r11)
	lg	%r0, 184(%r11)
	stg	%r0, 160(%r11)
	lg	%r0, 168(%r11)
	lg	%r1, 160(%r11)
	clgr	%r0, %r1
	jhe	.LBB69_6
	j	.LBB69_1
.LBB69_1:
	lg	%r2, 176(%r11)
	lg	%r1, 168(%r11)
	la	%r0, 0(%r2,%r1)
	stg	%r0, 168(%r11)
	lg	%r2, 176(%r11)
	lg	%r1, 160(%r11)
	la	%r0, 0(%r2,%r1)
	stg	%r0, 160(%r11)
	j	.LBB69_2
.LBB69_2:                               # =>This Inner Loop Header: Depth=1
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB69_5
	j	.LBB69_3
.LBB69_3:                               #   in Loop: Header=BB69_2 Depth=1
	lg	%r1, 168(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 168(%r11)
	lb	%r0, -1(%r1)
	lg	%r1, 160(%r11)
	lay	%r2, -1(%r1)
	stg	%r2, 160(%r11)
	stcy	%r0, -1(%r1)
	j	.LBB69_4
.LBB69_4:                               #   in Loop: Header=BB69_2 Depth=1
	lg	%r1, 176(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 176(%r11)
	j	.LBB69_2
.LBB69_5:
	j	.LBB69_13
.LBB69_6:
	lg	%r0, 168(%r11)
	lg	%r1, 160(%r11)
	cgr	%r0, %r1
	je	.LBB69_12
	j	.LBB69_7
.LBB69_7:
	j	.LBB69_8
.LBB69_8:                               # =>This Inner Loop Header: Depth=1
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB69_11
	j	.LBB69_9
.LBB69_9:                               #   in Loop: Header=BB69_8 Depth=1
	lg	%r1, 168(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 168(%r11)
	lb	%r0, 0(%r1)
	lg	%r1, 160(%r11)
	la	%r2, 1(%r1)
	stg	%r2, 160(%r11)
	stc	%r0, 0(%r1)
	j	.LBB69_10
.LBB69_10:                              #   in Loop: Header=BB69_8 Depth=1
	lg	%r1, 176(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 176(%r11)
	j	.LBB69_8
.LBB69_11:
	j	.LBB69_12
.LBB69_12:
	j	.LBB69_13
.LBB69_13:
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end69:
	.size	bcopy, .Lfunc_end69-bcopy
	.cfi_endproc
                                        # -- End function
	.globl	rotl64                          # -- Begin function rotl64
	.p2align	4
	.type	rotl64,@function
rotl64:                                 # @rotl64
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	stg	%r2, 168(%r11)
	st	%r0, 164(%r11)
	lg	%r0, 168(%r11)
	l	%r1, 164(%r11)
	rllg	%r2, %r0, 0(%r1)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end70:
	.size	rotl64, .Lfunc_end70-rotl64
	.cfi_endproc
                                        # -- End function
	.globl	rotr64                          # -- Begin function rotr64
	.p2align	4
	.type	rotr64,@function
rotr64:                                 # @rotr64
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	stg	%r2, 168(%r11)
	st	%r0, 164(%r11)
	lg	%r0, 168(%r11)
	l	%r1, 164(%r11)
	lcr	%r1, %r1
	rllg	%r2, %r0, 0(%r1)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end71:
	.size	rotr64, .Lfunc_end71-rotr64
	.cfi_endproc
                                        # -- End function
	.globl	rotl32                          # -- Begin function rotl32
	.p2align	4
	.type	rotl32,@function
rotl32:                                 # @rotl32
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	lr	%r1, %r2
	st	%r1, 164(%r11)
	st	%r0, 160(%r11)
	l	%r0, 164(%r11)
	l	%r1, 160(%r11)
	rll	%r0, %r0, 0(%r1)
	llgfr	%r2, %r0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end72:
	.size	rotl32, .Lfunc_end72-rotl32
	.cfi_endproc
                                        # -- End function
	.globl	rotr32                          # -- Begin function rotr32
	.p2align	4
	.type	rotr32,@function
rotr32:                                 # @rotr32
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	lr	%r1, %r2
	st	%r1, 164(%r11)
	st	%r0, 160(%r11)
	l	%r0, 164(%r11)
	l	%r2, 160(%r11)
	lhi	%r1, 32
	sr	%r1, %r2
	rll	%r0, %r0, 0(%r1)
	llgfr	%r2, %r0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end73:
	.size	rotr32, .Lfunc_end73-rotr32
	.cfi_endproc
                                        # -- End function
	.globl	rotl_sz                         # -- Begin function rotl_sz
	.p2align	4
	.type	rotl_sz,@function
rotl_sz:                                # @rotl_sz
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	stg	%r2, 168(%r11)
	st	%r0, 164(%r11)
	lg	%r0, 168(%r11)
	l	%r1, 164(%r11)
	rllg	%r2, %r0, 0(%r1)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end74:
	.size	rotl_sz, .Lfunc_end74-rotl_sz
	.cfi_endproc
                                        # -- End function
	.globl	rotr_sz                         # -- Begin function rotr_sz
	.p2align	4
	.type	rotr_sz,@function
rotr_sz:                                # @rotr_sz
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	stg	%r2, 168(%r11)
	st	%r0, 164(%r11)
	lg	%r0, 168(%r11)
	l	%r1, 164(%r11)
	lcr	%r1, %r1
	rllg	%r2, %r0, 0(%r1)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end75:
	.size	rotr_sz, .Lfunc_end75-rotr_sz
	.cfi_endproc
                                        # -- End function
	.globl	rotl16                          # -- Begin function rotl16
	.p2align	4
	.type	rotl16,@function
rotl16:                                 # @rotl16
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	lr	%r1, %r2
	sth	%r1, 166(%r11)
	st	%r0, 160(%r11)
	llh	%r0, 166(%r11)
	l	%r3, 160(%r11)
	lr	%r1, %r0
	sll	%r1, 0(%r3)
	lhi	%r2, 16
	sr	%r2, %r3
	srl	%r0, 0(%r2)
	or	%r1, %r0
                                        # implicit-def: $r0d
	lr	%r0, %r1
	llghr	%r2, %r0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end76:
	.size	rotl16, .Lfunc_end76-rotl16
	.cfi_endproc
                                        # -- End function
	.globl	rotr16                          # -- Begin function rotr16
	.p2align	4
	.type	rotr16,@function
rotr16:                                 # @rotr16
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	lr	%r1, %r2
	sth	%r1, 166(%r11)
	st	%r0, 160(%r11)
	llh	%r0, 166(%r11)
	l	%r3, 160(%r11)
	lr	%r1, %r0
	srl	%r1, 0(%r3)
	lhi	%r2, 16
	sr	%r2, %r3
	sll	%r0, 0(%r2)
	or	%r1, %r0
                                        # implicit-def: $r0d
	lr	%r0, %r1
	llghr	%r2, %r0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end77:
	.size	rotr16, .Lfunc_end77-rotr16
	.cfi_endproc
                                        # -- End function
	.globl	rotl8                           # -- Begin function rotl8
	.p2align	4
	.type	rotl8,@function
rotl8:                                  # @rotl8
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	lr	%r1, %r2
	stc	%r1, 167(%r11)
	st	%r0, 160(%r11)
	llc	%r0, 167(%r11)
	l	%r3, 160(%r11)
	lr	%r1, %r0
	sll	%r1, 0(%r3)
	lhi	%r2, 8
	sr	%r2, %r3
	srl	%r0, 0(%r2)
	or	%r1, %r0
                                        # implicit-def: $r0d
	lr	%r0, %r1
	llgcr	%r2, %r0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end78:
	.size	rotl8, .Lfunc_end78-rotl8
	.cfi_endproc
                                        # -- End function
	.globl	rotr8                           # -- Begin function rotr8
	.p2align	4
	.type	rotr8,@function
rotr8:                                  # @rotr8
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	lr	%r1, %r2
	stc	%r1, 167(%r11)
	st	%r0, 160(%r11)
	llc	%r0, 167(%r11)
	l	%r3, 160(%r11)
	lr	%r1, %r0
	srl	%r1, 0(%r3)
	lhi	%r2, 8
	sr	%r2, %r3
	sll	%r0, 0(%r2)
	or	%r1, %r0
                                        # implicit-def: $r0d
	lr	%r0, %r1
	llgcr	%r2, %r0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end79:
	.size	rotr8, .Lfunc_end79-rotr8
	.cfi_endproc
                                        # -- End function
	.globl	bswap_16                        # -- Begin function bswap_16
	.p2align	4
	.type	bswap_16,@function
bswap_16:                               # @bswap_16
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	sth	%r0, 166(%r11)
	mvhhi	164(%r11), 255
	llh	%r0, 166(%r11)
	llh	%r1, 164(%r11)
	lr	%r3, %r1
	sll	%r3, 8
	lr	%r2, %r0
	nr	%r2, %r3
	srl	%r2, 8
	nr	%r0, %r1
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	lr	%r0, %r2
	rosbg	%r0, %r1, 32, 55, 8
	lr	%r1, %r0
                                        # implicit-def: $r0d
	lr	%r0, %r1
	llghr	%r2, %r0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end80:
	.size	bswap_16, .Lfunc_end80-bswap_16
	.cfi_endproc
                                        # -- End function
	.globl	bswap_32                        # -- Begin function bswap_32
	.p2align	4
	.type	bswap_32,@function
bswap_32:                               # @bswap_32
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	mvhi	160(%r11), 255
	l	%r2, 164(%r11)
	l	%r0, 160(%r11)
	lr	%r1, %r0
	sll	%r1, 24
	lr	%r5, %r2
	nr	%r5, %r1
	srl	%r5, 24
	lr	%r3, %r0
	sll	%r3, 16
	lr	%r1, %r2
	nr	%r1, %r3
                                        # implicit-def: $r4d
	lr	%r4, %r1
                                        # implicit-def: $r1d
	lr	%r1, %r5
	rosbg	%r1, %r4, 40, 63, 56
                                        # kill: def $r1l killed $r1l killed $r1d
	lr	%r4, %r2
	sll	%r4, 8
	nr	%r3, %r4
	or	%r1, %r3
	nr	%r2, %r0
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r1d
	lr	%r1, %r2
	rosbg	%r0, %r1, 32, 39, 24
                                        # kill: def $r0l killed $r0l killed $r0d
	llgfr	%r2, %r0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end81:
	.size	bswap_32, .Lfunc_end81-bswap_32
	.cfi_endproc
                                        # -- End function
	.globl	bswap_64                        # -- Begin function bswap_64
	.p2align	4
	.type	bswap_64,@function
bswap_64:                               # @bswap_64
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 168(%r11)
	mvghi	160(%r11), 255
	lg	%r0, 168(%r11)
	lg	%r1, 160(%r11)
	sllg	%r3, %r1, 56
	lgr	%r2, %r0
	ngr	%r2, %r3
	srlg	%r2, %r2, 56
	sllg	%r3, %r1, 48
	lgr	%r4, %r0
	ngr	%r4, %r3
	rosbg	%r2, %r4, 40, 63, 24
	sllg	%r4, %r1, 40
	lgr	%r5, %r0
	ngr	%r5, %r4
	rosbg	%r2, %r5, 24, 63, 40
	sllg	%r5, %r1, 32
	lgr	%r14, %r0
	ngr	%r14, %r5
	rosbg	%r2, %r14, 8, 63, 56
	sllg	%r14, %r0, 8
	ngr	%r5, %r14
	ogr	%r2, %r5
	sllg	%r5, %r0, 24
	ngr	%r4, %r5
	ogr	%r2, %r4
	sllg	%r4, %r0, 40
	ngr	%r3, %r4
	ogr	%r2, %r3
	ngr	%r0, %r1
	rosbg	%r2, %r0, 0, 7, 56
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end82:
	.size	bswap_64, .Lfunc_end82-bswap_64
	.cfi_endproc
                                        # -- End function
	.globl	ffs                             # -- Begin function ffs
	.p2align	4
	.type	ffs,@function
ffs:                                    # @ffs
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 168(%r11)
	mvhi	164(%r11), 0
	j	.LBB83_1
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	l	%r0, 164(%r11)
	clfi	%r0, 31
	jh	.LBB83_6
	j	.LBB83_2
.LBB83_2:                               #   in Loop: Header=BB83_1 Depth=1
	l	%r0, 168(%r11)
	l	%r1, 164(%r11)
	srl	%r0, 0(%r1)
	tmll	%r0, 1
	je	.LBB83_4
	j	.LBB83_3
.LBB83_3:
	l	%r0, 164(%r11)
	ahi	%r0, 1
	st	%r0, 172(%r11)
	j	.LBB83_7
.LBB83_4:                               #   in Loop: Header=BB83_1 Depth=1
	j	.LBB83_5
.LBB83_5:                               #   in Loop: Header=BB83_1 Depth=1
	l	%r0, 164(%r11)
	ahi	%r0, 1
	st	%r0, 164(%r11)
	j	.LBB83_1
.LBB83_6:
	mvhi	172(%r11), 0
	j	.LBB83_7
.LBB83_7:
	lgf	%r2, 172(%r11)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end83:
	.size	ffs, .Lfunc_end83-ffs
	.cfi_endproc
                                        # -- End function
	.globl	libiberty_ffs                   # -- Begin function libiberty_ffs
	.p2align	4
	.type	libiberty_ffs,@function
libiberty_ffs:                          # @libiberty_ffs
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 168(%r11)
	l	%r0, 168(%r11)
	chi	%r0, 0
	jlh	.LBB84_2
	j	.LBB84_1
.LBB84_1:
	mvhi	172(%r11), 0
	j	.LBB84_7
.LBB84_2:
	mvhi	164(%r11), 1
	j	.LBB84_3
.LBB84_3:                               # =>This Inner Loop Header: Depth=1
	llc	%r0, 171(%r11)
	tmll	%r0, 1
	jne	.LBB84_6
	j	.LBB84_4
.LBB84_4:                               #   in Loop: Header=BB84_3 Depth=1
	l	%r0, 168(%r11)
	sra	%r0, 1
	st	%r0, 168(%r11)
	j	.LBB84_5
.LBB84_5:                               #   in Loop: Header=BB84_3 Depth=1
	l	%r0, 164(%r11)
	ahi	%r0, 1
	st	%r0, 164(%r11)
	j	.LBB84_3
.LBB84_6:
	l	%r0, 164(%r11)
	st	%r0, 172(%r11)
	j	.LBB84_7
.LBB84_7:
	lgf	%r2, 172(%r11)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end84:
	.size	libiberty_ffs, .Lfunc_end84-libiberty_ffs
	.cfi_endproc
                                        # -- End function
	.globl	gl_isinff                       # -- Begin function gl_isinff
	.p2align	4
	.type	gl_isinff,@function
gl_isinff:                              # @gl_isinff
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
                                        # kill: def $r0l killed $r2l
	st	%r2, 164(%r11)
	llgf	%r2, 164(%r11)
	llilf	%r3, 4286578687
	brasl	%r14, __ltsf2@PLT
	lr	%r1, %r2
	lhi	%r0, 1
	chi	%r1, 0
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	jl	.LBB85_2
	j	.LBB85_1
.LBB85_1:
	llgf	%r2, 164(%r11)
	lgfi	%r3, 2139095039
	brasl	%r14, __gtsf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	ipm	%r0
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 63, 191, 35
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB85_2
.LBB85_2:
	l	%r1, 160(%r11)                  # 4-byte Folded Reload
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end85:
	.size	gl_isinff, .Lfunc_end85-gl_isinff
	.cfi_endproc
                                        # -- End function
	.globl	gl_isinfd                       # -- Begin function gl_isinfd
	.p2align	4
	.type	gl_isinfd,@function
gl_isinfd:                              # @gl_isinfd
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
                                        # kill: def $r0d killed $r2d
	stg	%r2, 168(%r11)
	lg	%r2, 168(%r11)
	llihf	%r3, 4293918719
	oilf	%r3, 4294967295
	brasl	%r14, __ltdf2@PLT
	lr	%r1, %r2
	lhi	%r0, 1
	chi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jl	.LBB86_2
	j	.LBB86_1
.LBB86_1:
	lg	%r2, 168(%r11)
	llihf	%r3, 2146435071
	oilf	%r3, 4294967295
	brasl	%r14, __gtdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	ipm	%r0
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 63, 191, 35
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB86_2
.LBB86_2:
	l	%r1, 164(%r11)                  # 4-byte Folded Reload
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 0
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end86:
	.size	gl_isinfd, .Lfunc_end86-gl_isinfd
	.cfi_endproc
                                        # -- End function
	.globl	gl_isinfl                       # -- Begin function gl_isinfl
	.p2align	4
	.type	gl_isinfl,@function
gl_isinfl:                              # @gl_isinfl
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -248
	.cfi_def_cfa_offset 408
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lg	%r0, 0(%r2)
	lg	%r1, 8(%r2)
	stg	%r1, 240(%r11)
	stg	%r0, 232(%r11)
	lg	%r0, 232(%r11)
	lg	%r1, 240(%r11)
	llihf	%r2, 4294901759
	oilf	%r2, 4294967295
	stg	%r2, 200(%r11)
	stg	%r1, 224(%r11)
	stg	%r0, 216(%r11)
	mvghi	208(%r11), -1
	la	%r2, 216(%r11)
	la	%r3, 200(%r11)
	brasl	%r14, __lttf2@PLT
	lr	%r1, %r2
	lhi	%r0, 1
	chi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jl	.LBB87_2
	j	.LBB87_1
.LBB87_1:
	lg	%r0, 232(%r11)
	lg	%r1, 240(%r11)
	stg	%r1, 192(%r11)
	stg	%r0, 184(%r11)
	llihf	%r0, 2147418111
	oilf	%r0, 4294967295
	stg	%r0, 168(%r11)
	mvghi	176(%r11), -1
	la	%r2, 184(%r11)
	la	%r3, 168(%r11)
	brasl	%r14, __gttf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	ipm	%r0
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 63, 191, 35
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB87_2
.LBB87_2:
	l	%r1, 164(%r11)                  # 4-byte Folded Reload
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 0
	lmg	%r11, %r15, 336(%r11)
	br	%r14
.Lfunc_end87:
	.size	gl_isinfl, .Lfunc_end87-gl_isinfl
	.cfi_endproc
                                        # -- End function
	.globl	_Qp_itoq                        # -- Begin function _Qp_itoq
	.p2align	4
	.type	_Qp_itoq,@function
_Qp_itoq:                               # @_Qp_itoq
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	stg	%r2, 184(%r11)
	st	%r0, 180(%r11)
	lgf	%r2, 180(%r11)
	brasl	%r14, __floatsidf@PLT
	lgr	%r3, %r2
	la	%r2, 160(%r11)
	brasl	%r14, __extenddftf2@PLT
	lg	%r0, 160(%r11)
	lg	%r2, 168(%r11)
	lg	%r1, 184(%r11)
	stg	%r2, 8(%r1)
	stg	%r0, 0(%r1)
	lmg	%r11, %r15, 280(%r11)
	br	%r14
.Lfunc_end88:
	.size	_Qp_itoq, .Lfunc_end88-_Qp_itoq
	.cfi_endproc
                                        # -- End function
	.globl	ldexpf                          # -- Begin function ldexpf
	.p2align	4
	.type	ldexpf,@function
ldexpf:                                 # @ldexpf
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
                                        # kill: def $r1l killed $r2l
	st	%r2, 188(%r11)
	st	%r0, 184(%r11)
	l	%r0, 188(%r11)
	nilh	%r0, 32767
	cfi	%r0, 2139095040
	jh	.LBB89_11
	j	.LBB89_1
.LBB89_1:
	llgf	%r3, 188(%r11)
	stg	%r3, 168(%r11)                  # 8-byte Folded Spill
	lgr	%r2, %r3
	brasl	%r14, __addsf3@PLT
	lg	%r3, 168(%r11)                  # 8-byte Folded Reload
	brasl	%r14, __eqsf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	je	.LBB89_11
	j	.LBB89_2
.LBB89_2:
	l	%r0, 184(%r11)
	chi	%r0, 0
	iilf	%r0, 1073741824
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	iilf	%r0, 1056964608
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jl	.LBB89_4
# %bb.3:
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
.LBB89_4:
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	st	%r0, 180(%r11)
	j	.LBB89_5
.LBB89_5:                               # =>This Inner Loop Header: Depth=1
	l	%r0, 184(%r11)
	lr	%r2, %r0
	srl	%r2, 31
	lr	%r1, %r0
	ar	%r1, %r2
	nill	%r1, 65534
	sr	%r0, %r1
	chi	%r0, 0
	je	.LBB89_7
	j	.LBB89_6
.LBB89_6:                               #   in Loop: Header=BB89_5 Depth=1
	llgf	%r3, 180(%r11)
	llgf	%r2, 188(%r11)
	brasl	%r14, __mulsf3@PLT
	lr	%r0, %r2
	st	%r0, 188(%r11)
	j	.LBB89_7
.LBB89_7:                               #   in Loop: Header=BB89_5 Depth=1
	l	%r0, 184(%r11)
	lr	%r1, %r0
	srl	%r1, 31
	ar	%r0, %r1
	sra	%r0, 1
	st	%r0, 184(%r11)
	l	%r0, 184(%r11)
	chi	%r0, 0
	jlh	.LBB89_9
	j	.LBB89_8
.LBB89_8:
	j	.LBB89_10
.LBB89_9:                               #   in Loop: Header=BB89_5 Depth=1
	llgf	%r3, 180(%r11)
	lgr	%r2, %r3
	brasl	%r14, __mulsf3@PLT
	lr	%r0, %r2
	st	%r0, 180(%r11)
	j	.LBB89_5
.LBB89_10:
	j	.LBB89_11
.LBB89_11:
	l	%r2, 188(%r11)
	lmg	%r11, %r15, 280(%r11)
	br	%r14
.Lfunc_end89:
	.size	ldexpf, .Lfunc_end89-ldexpf
	.cfi_endproc
                                        # -- End function
	.globl	ldexp                           # -- Begin function ldexp
	.p2align	4
	.type	ldexp,@function
ldexp:                                  # @ldexp
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -208
	.cfi_def_cfa_offset 368
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
                                        # kill: def $r1d killed $r2d
	stg	%r2, 200(%r11)
	st	%r0, 196(%r11)
	lg	%r0, 200(%r11)
	nihh	%r0, 32767
	llihh	%r1, 32752
	cgr	%r0, %r1
	jh	.LBB90_11
	j	.LBB90_1
.LBB90_1:
	lg	%r3, 200(%r11)
	stg	%r3, 176(%r11)                  # 8-byte Folded Spill
	lgr	%r2, %r3
	brasl	%r14, __adddf3@PLT
	lg	%r3, 176(%r11)                  # 8-byte Folded Reload
	brasl	%r14, __eqdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	je	.LBB90_11
	j	.LBB90_2
.LBB90_2:
	l	%r0, 196(%r11)
	chi	%r0, 0
	llihh	%r0, 16384
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	llihh	%r0, 16352
	stg	%r0, 168(%r11)                  # 8-byte Folded Spill
	jl	.LBB90_4
# %bb.3:
	lg	%r0, 160(%r11)                  # 8-byte Folded Reload
	stg	%r0, 168(%r11)                  # 8-byte Folded Spill
.LBB90_4:
	lg	%r0, 168(%r11)                  # 8-byte Folded Reload
	stg	%r0, 184(%r11)
	j	.LBB90_5
.LBB90_5:                               # =>This Inner Loop Header: Depth=1
	l	%r0, 196(%r11)
	lr	%r2, %r0
	srl	%r2, 31
	lr	%r1, %r0
	ar	%r1, %r2
	nill	%r1, 65534
	sr	%r0, %r1
	chi	%r0, 0
	je	.LBB90_7
	j	.LBB90_6
.LBB90_6:                               #   in Loop: Header=BB90_5 Depth=1
	lg	%r3, 184(%r11)
	lg	%r2, 200(%r11)
	brasl	%r14, __muldf3@PLT
	stg	%r2, 200(%r11)
	j	.LBB90_7
.LBB90_7:                               #   in Loop: Header=BB90_5 Depth=1
	l	%r0, 196(%r11)
	lr	%r1, %r0
	srl	%r1, 31
	ar	%r0, %r1
	sra	%r0, 1
	st	%r0, 196(%r11)
	l	%r0, 196(%r11)
	chi	%r0, 0
	jlh	.LBB90_9
	j	.LBB90_8
.LBB90_8:
	j	.LBB90_10
.LBB90_9:                               #   in Loop: Header=BB90_5 Depth=1
	lg	%r3, 184(%r11)
	lgr	%r2, %r3
	brasl	%r14, __muldf3@PLT
	stg	%r2, 184(%r11)
	j	.LBB90_5
.LBB90_10:
	j	.LBB90_11
.LBB90_11:
	lg	%r2, 200(%r11)
	lmg	%r11, %r15, 296(%r11)
	br	%r14
.Lfunc_end90:
	.size	ldexp, .Lfunc_end90-ldexp
	.cfi_endproc
                                        # -- End function
	.globl	ldexpl                          # -- Begin function ldexpl
	.p2align	4
	.type	ldexpl,@function
ldexpl:                                 # @ldexpl
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -424
	.cfi_def_cfa_offset 584
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 192(%r11)                  # 8-byte Folded Spill
	lr	%r0, %r4
	lg	%r1, 0(%r3)
	lg	%r2, 8(%r3)
	stg	%r2, 416(%r11)
	stg	%r1, 408(%r11)
	st	%r0, 404(%r11)
	lg	%r0, 416(%r11)
	lg	%r2, 408(%r11)
	nihh	%r2, 32767
	llihh	%r3, 32767
	cgr	%r2, %r3
	ipm	%r1
                                        # implicit-def: $r4d
	lr	%r4, %r1
                                        # implicit-def: $r1d
	risbg	%r1, %r4, 63, 191, 35
	cghi	%r0, 0
	ipm	%r0
	afi	%r0, 1879048192
	cgr	%r2, %r3
                                        # kill: def $r1l killed $r1l killed $r1d
	st	%r1, 200(%r11)                  # 4-byte Folded Spill
	srl	%r0, 31
	st	%r0, 204(%r11)                  # 4-byte Folded Spill
	je	.LBB91_2
# %bb.1:
	l	%r0, 200(%r11)                  # 4-byte Folded Reload
	st	%r0, 204(%r11)                  # 4-byte Folded Spill
.LBB91_2:
	l	%r0, 204(%r11)                  # 4-byte Folded Reload
	chi	%r0, 0
	jlh	.LBB91_13
	j	.LBB91_3
.LBB91_3:
	lg	%r0, 408(%r11)
	stg	%r0, 184(%r11)                  # 8-byte Folded Spill
	lg	%r1, 416(%r11)
	stg	%r1, 176(%r11)                  # 8-byte Folded Spill
	stg	%r1, 344(%r11)
	stg	%r0, 336(%r11)
	stg	%r1, 360(%r11)
	stg	%r0, 352(%r11)
	la	%r2, 368(%r11)
	la	%r3, 352(%r11)
	la	%r4, 336(%r11)
	brasl	%r14, __addtf3@PLT
	lg	%r3, 176(%r11)                  # 8-byte Folded Reload
	lg	%r2, 184(%r11)                  # 8-byte Folded Reload
	lg	%r0, 368(%r11)
	lg	%r1, 376(%r11)
	stg	%r3, 312(%r11)
	stg	%r2, 304(%r11)
	stg	%r1, 328(%r11)
	stg	%r0, 320(%r11)
	la	%r2, 320(%r11)
	la	%r3, 304(%r11)
	brasl	%r14, __eqtf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	je	.LBB91_13
	j	.LBB91_4
.LBB91_4:
	l	%r0, 404(%r11)
	chi	%r0, 0
	llihh	%r0, 16384
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	llihh	%r0, 16382
	stg	%r0, 168(%r11)                  # 8-byte Folded Spill
	jl	.LBB91_6
# %bb.5:
	lg	%r0, 160(%r11)                  # 8-byte Folded Reload
	stg	%r0, 168(%r11)                  # 8-byte Folded Spill
.LBB91_6:
	lg	%r0, 168(%r11)                  # 8-byte Folded Reload
	stg	%r0, 384(%r11)
	mvghi	392(%r11), 0
	j	.LBB91_7
.LBB91_7:                               # =>This Inner Loop Header: Depth=1
	l	%r0, 404(%r11)
	lr	%r2, %r0
	srl	%r2, 31
	lr	%r1, %r0
	ar	%r1, %r2
	nill	%r1, 65534
	sr	%r0, %r1
	chi	%r0, 0
	je	.LBB91_9
	j	.LBB91_8
.LBB91_8:                               #   in Loop: Header=BB91_7 Depth=1
	lg	%r2, 384(%r11)
	lg	%r3, 392(%r11)
	lg	%r0, 408(%r11)
	lg	%r1, 416(%r11)
	stg	%r3, 264(%r11)
	stg	%r2, 256(%r11)
	stg	%r1, 280(%r11)
	stg	%r0, 272(%r11)
	la	%r2, 288(%r11)
	la	%r3, 272(%r11)
	la	%r4, 256(%r11)
	brasl	%r14, __multf3@PLT
	lg	%r0, 288(%r11)
	lg	%r1, 296(%r11)
	stg	%r1, 416(%r11)
	stg	%r0, 408(%r11)
	j	.LBB91_9
.LBB91_9:                               #   in Loop: Header=BB91_7 Depth=1
	l	%r0, 404(%r11)
	lr	%r1, %r0
	srl	%r1, 31
	ar	%r0, %r1
	sra	%r0, 1
	st	%r0, 404(%r11)
	l	%r0, 404(%r11)
	chi	%r0, 0
	jlh	.LBB91_11
	j	.LBB91_10
.LBB91_10:
	j	.LBB91_12
.LBB91_11:                              #   in Loop: Header=BB91_7 Depth=1
	lg	%r0, 384(%r11)
	lg	%r1, 392(%r11)
	stg	%r1, 216(%r11)
	stg	%r0, 208(%r11)
	stg	%r1, 232(%r11)
	stg	%r0, 224(%r11)
	la	%r2, 240(%r11)
	la	%r3, 224(%r11)
	la	%r4, 208(%r11)
	brasl	%r14, __multf3@PLT
	lg	%r0, 240(%r11)
	lg	%r1, 248(%r11)
	stg	%r1, 392(%r11)
	stg	%r0, 384(%r11)
	j	.LBB91_7
.LBB91_12:
	j	.LBB91_13
.LBB91_13:
	lg	%r1, 192(%r11)                  # 8-byte Folded Reload
	lg	%r0, 408(%r11)
	lg	%r2, 416(%r11)
	stg	%r2, 8(%r1)
	stg	%r0, 0(%r1)
	lmg	%r11, %r15, 512(%r11)
	br	%r14
.Lfunc_end91:
	.size	ldexpl, .Lfunc_end91-ldexpl
	.cfi_endproc
                                        # -- End function
	.globl	memxor                          # -- Begin function memxor
	.p2align	4
	.type	memxor,@function
memxor:                                 # @memxor
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 192(%r11)
	stg	%r3, 184(%r11)
	stg	%r4, 176(%r11)
	lg	%r0, 184(%r11)
	stg	%r0, 168(%r11)
	lg	%r0, 192(%r11)
	stg	%r0, 160(%r11)
	j	.LBB92_1
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB92_4
	j	.LBB92_2
.LBB92_2:                               #   in Loop: Header=BB92_1 Depth=1
	lg	%r1, 168(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 168(%r11)
	lb	%r2, 0(%r1)
	lg	%r1, 160(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 160(%r11)
	lb	%r0, 0(%r1)
	xr	%r0, %r2
	stc	%r0, 0(%r1)
	j	.LBB92_3
.LBB92_3:                               #   in Loop: Header=BB92_1 Depth=1
	lg	%r1, 176(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 176(%r11)
	j	.LBB92_1
.LBB92_4:
	lg	%r2, 192(%r11)
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end92:
	.size	memxor, .Lfunc_end92-memxor
	.cfi_endproc
                                        # -- End function
	.globl	strncat                         # -- Begin function strncat
	.p2align	4
	.type	strncat,@function
strncat:                                # @strncat
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -232
	.cfi_def_cfa_offset 392
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 224(%r11)
	stg	%r3, 216(%r11)
	stg	%r4, 208(%r11)
	lg	%r0, 224(%r11)
	lhi	%r1, 0
	st	%r1, 180(%r11)                  # 4-byte Folded Spill
	lghi	%r1, 0
	stg	%r1, 184(%r11)                  # 8-byte Folded Spill
	stg	%r0, 192(%r11)                  # 8-byte Folded Spill
.LBB93_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r2, 192(%r11)                  # 8-byte Folded Reload
	lg	%r1, 184(%r11)                  # 8-byte Folded Reload
	l	%r0, 180(%r11)                  # 4-byte Folded Reload
	srst	%r1, %r2
	lgr	%r0, %r2
	stg	%r1, 168(%r11)                  # 8-byte Folded Spill
	stg	%r1, 184(%r11)                  # 8-byte Folded Spill
	stg	%r0, 192(%r11)                  # 8-byte Folded Spill
	jo	.LBB93_1
# %bb.2:
	lg	%r0, 168(%r11)                  # 8-byte Folded Reload
	stg	%r0, 200(%r11)
	j	.LBB93_3
.LBB93_3:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 208(%r11)
	lhi	%r0, 0
	cghi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB93_5
	j	.LBB93_4
.LBB93_4:                               #   in Loop: Header=BB93_3 Depth=1
	lg	%r1, 216(%r11)
	llc	%r0, 0(%r1)
	lg	%r1, 200(%r11)
	stc	%r0, 0(%r1)
	chi	%r0, 0
	ipm	%r0
	afi	%r0, 1879048192
	srl	%r0, 31
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB93_5
.LBB93_5:                               #   in Loop: Header=BB93_3 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB93_8
	j	.LBB93_6
.LBB93_6:                               #   in Loop: Header=BB93_3 Depth=1
	j	.LBB93_7
.LBB93_7:                               #   in Loop: Header=BB93_3 Depth=1
	lg	%r1, 216(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 216(%r11)
	lg	%r1, 200(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 200(%r11)
	lg	%r1, 208(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 208(%r11)
	j	.LBB93_3
.LBB93_8:
	lg	%r0, 208(%r11)
	cghi	%r0, 0
	jlh	.LBB93_10
	j	.LBB93_9
.LBB93_9:
	lg	%r1, 200(%r11)
	mvi	0(%r1), 0
	j	.LBB93_10
.LBB93_10:
	lg	%r2, 224(%r11)
	lmg	%r11, %r15, 320(%r11)
	br	%r14
.Lfunc_end93:
	.size	strncat, .Lfunc_end93-strncat
	.cfi_endproc
                                        # -- End function
	.globl	strnlen                         # -- Begin function strnlen
	.p2align	4
	.type	strnlen,@function
strnlen:                                # @strnlen
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 184(%r11)
	stg	%r3, 176(%r11)
	mvghi	168(%r11), 0
	j	.LBB94_1
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 168(%r11)
	lg	%r2, 176(%r11)
	lhi	%r0, 0
	clgr	%r1, %r2
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jhe	.LBB94_3
	j	.LBB94_2
.LBB94_2:                               #   in Loop: Header=BB94_1 Depth=1
	lg	%r1, 184(%r11)
	lg	%r2, 168(%r11)
	llc	%r0, 0(%r2,%r1)
	chi	%r0, 0
	ipm	%r0
	afi	%r0, 1879048192
	srl	%r0, 31
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB94_3
.LBB94_3:                               #   in Loop: Header=BB94_1 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB94_6
	j	.LBB94_4
.LBB94_4:                               #   in Loop: Header=BB94_1 Depth=1
	j	.LBB94_5
.LBB94_5:                               #   in Loop: Header=BB94_1 Depth=1
	lg	%r1, 168(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 168(%r11)
	j	.LBB94_1
.LBB94_6:
	lg	%r2, 168(%r11)
	lmg	%r11, %r15, 280(%r11)
	br	%r14
.Lfunc_end94:
	.size	strnlen, .Lfunc_end94-strnlen
	.cfi_endproc
                                        # -- End function
	.globl	strpbrk                         # -- Begin function strpbrk
	.p2align	4
	.type	strpbrk,@function
strpbrk:                                # @strpbrk
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 176(%r11)
	stg	%r3, 168(%r11)
	j	.LBB95_1
.LBB95_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_3 Depth 2
	lg	%r1, 176(%r11)
	llc	%r0, 0(%r1)
	chi	%r0, 0
	je	.LBB95_8
	j	.LBB95_2
.LBB95_2:                               #   in Loop: Header=BB95_1 Depth=1
	lg	%r0, 168(%r11)
	stg	%r0, 160(%r11)
	j	.LBB95_3
.LBB95_3:                               #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lg	%r1, 160(%r11)
	llc	%r0, 0(%r1)
	chi	%r0, 0
	je	.LBB95_7
	j	.LBB95_4
.LBB95_4:                               #   in Loop: Header=BB95_3 Depth=2
	lg	%r1, 160(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 160(%r11)
	llc	%r0, 0(%r1)
	lg	%r1, 176(%r11)
	llc	%r1, 0(%r1)
	cr	%r0, %r1
	jlh	.LBB95_6
	j	.LBB95_5
.LBB95_5:
	lg	%r0, 176(%r11)
	stg	%r0, 184(%r11)
	j	.LBB95_9
.LBB95_6:                               #   in Loop: Header=BB95_3 Depth=2
	j	.LBB95_3
.LBB95_7:                               #   in Loop: Header=BB95_1 Depth=1
	lg	%r1, 176(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 176(%r11)
	j	.LBB95_1
.LBB95_8:
	mvghi	184(%r11), 0
	j	.LBB95_9
.LBB95_9:
	lg	%r2, 184(%r11)
	lmg	%r11, %r15, 280(%r11)
	br	%r14
.Lfunc_end95:
	.size	strpbrk, .Lfunc_end95-strpbrk
	.cfi_endproc
                                        # -- End function
	.globl	strrchr                         # -- Begin function strrchr
	.p2align	4
	.type	strrchr,@function
strrchr:                                # @strrchr
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -184
	.cfi_def_cfa_offset 344
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	stg	%r2, 176(%r11)
	st	%r0, 172(%r11)
	mvghi	160(%r11), 0
	j	.LBB96_1
.LBB96_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 176(%r11)
	llc	%r0, 0(%r1)
	l	%r1, 172(%r11)
	cr	%r0, %r1
	jlh	.LBB96_3
	j	.LBB96_2
.LBB96_2:                               #   in Loop: Header=BB96_1 Depth=1
	lg	%r0, 176(%r11)
	stg	%r0, 160(%r11)
	j	.LBB96_3
.LBB96_3:                               #   in Loop: Header=BB96_1 Depth=1
	j	.LBB96_4
.LBB96_4:                               #   in Loop: Header=BB96_1 Depth=1
	lg	%r1, 176(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 176(%r11)
	llc	%r0, 0(%r1)
	chi	%r0, 0
	jlh	.LBB96_1
	j	.LBB96_5
.LBB96_5:
	lg	%r2, 160(%r11)
	lmg	%r11, %r15, 272(%r11)
	br	%r14
.Lfunc_end96:
	.size	strrchr, .Lfunc_end96-strrchr
	.cfi_endproc
                                        # -- End function
	.globl	strstr                          # -- Begin function strstr
	.p2align	4
	.type	strstr,@function
strstr:                                 # @strstr
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -240
	.cfi_def_cfa_offset 400
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 224(%r11)
	stg	%r3, 216(%r11)
	lg	%r0, 224(%r11)
	stg	%r0, 208(%r11)
	lg	%r0, 216(%r11)
	stg	%r0, 168(%r11)                  # 8-byte Folded Spill
	lhi	%r1, 0
	st	%r1, 180(%r11)                  # 4-byte Folded Spill
	lghi	%r1, 0
	stg	%r1, 184(%r11)                  # 8-byte Folded Spill
	stg	%r0, 192(%r11)                  # 8-byte Folded Spill
.LBB97_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r2, 192(%r11)                  # 8-byte Folded Reload
	lg	%r1, 184(%r11)                  # 8-byte Folded Reload
	l	%r0, 180(%r11)                  # 4-byte Folded Reload
	srst	%r1, %r2
	lgr	%r0, %r2
	stg	%r1, 160(%r11)                  # 8-byte Folded Spill
	stg	%r1, 184(%r11)                  # 8-byte Folded Spill
	stg	%r0, 192(%r11)                  # 8-byte Folded Spill
	jo	.LBB97_1
# %bb.2:
	lg	%r1, 168(%r11)                  # 8-byte Folded Reload
	lg	%r0, 160(%r11)                  # 8-byte Folded Reload
	sgr	%r0, %r1
	stg	%r0, 200(%r11)
	lg	%r0, 200(%r11)
	cghi	%r0, 0
	jlh	.LBB97_4
	j	.LBB97_3
.LBB97_3:
	lg	%r0, 224(%r11)
	stg	%r0, 232(%r11)
	j	.LBB97_11
.LBB97_4:
	j	.LBB97_5
.LBB97_5:                               # =>This Inner Loop Header: Depth=1
	lg	%r2, 208(%r11)
	lg	%r1, 216(%r11)
	llgc	%r3, 0(%r1)
	brasl	%r14, strchr@PLT
	stg	%r2, 208(%r11)
	cghi	%r2, 0
	je	.LBB97_10
	j	.LBB97_6
.LBB97_6:                               #   in Loop: Header=BB97_5 Depth=1
	lg	%r2, 208(%r11)
	lg	%r3, 216(%r11)
	lg	%r4, 200(%r11)
	brasl	%r14, strncmp@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jlh	.LBB97_8
	j	.LBB97_7
.LBB97_7:
	lg	%r0, 208(%r11)
	stg	%r0, 232(%r11)
	j	.LBB97_11
.LBB97_8:                               #   in Loop: Header=BB97_5 Depth=1
	j	.LBB97_9
.LBB97_9:                               #   in Loop: Header=BB97_5 Depth=1
	lg	%r1, 208(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 208(%r11)
	j	.LBB97_5
.LBB97_10:
	mvghi	232(%r11), 0
	j	.LBB97_11
.LBB97_11:
	lg	%r2, 232(%r11)
	lmg	%r11, %r15, 328(%r11)
	br	%r14
.Lfunc_end97:
	.size	strstr, .Lfunc_end97-strstr
	.cfi_endproc
                                        # -- End function
	.globl	copysign                        # -- Begin function copysign
	.p2align	4
	.type	copysign,@function
copysign:                               # @copysign
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -184
	.cfi_def_cfa_offset 344
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
                                        # kill: def $r0d killed $r3d
                                        # kill: def $r0d killed $r2d
	stg	%r2, 168(%r11)
	stg	%r3, 160(%r11)
	lg	%r2, 168(%r11)
	lghi	%r3, 0
	brasl	%r14, __ltdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jhe	.LBB98_2
	j	.LBB98_1
.LBB98_1:
	lg	%r2, 160(%r11)
	lghi	%r3, 0
	brasl	%r14, __gtdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jh	.LBB98_4
	j	.LBB98_2
.LBB98_2:
	lg	%r2, 168(%r11)
	lghi	%r3, 0
	brasl	%r14, __gtdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jle	.LBB98_5
	j	.LBB98_3
.LBB98_3:
	lg	%r2, 160(%r11)
	lghi	%r3, 0
	brasl	%r14, __ltdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jhe	.LBB98_5
	j	.LBB98_4
.LBB98_4:
	lg	%r0, 168(%r11)
	xihf	%r0, 2147483648
	stg	%r0, 176(%r11)
	j	.LBB98_6
.LBB98_5:
	lg	%r0, 168(%r11)
	stg	%r0, 176(%r11)
	j	.LBB98_6
.LBB98_6:
	lg	%r2, 176(%r11)
	lmg	%r11, %r15, 272(%r11)
	br	%r14
.Lfunc_end98:
	.size	copysign, .Lfunc_end98-copysign
	.cfi_endproc
                                        # -- End function
	.globl	memmem                          # -- Begin function memmem
	.p2align	4
	.type	memmem,@function
memmem:                                 # @memmem
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -296
	.cfi_def_cfa_offset 456
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 280(%r11)
	stg	%r3, 272(%r11)
	stg	%r4, 264(%r11)
	stg	%r5, 256(%r11)
	lg	%r1, 280(%r11)
	lg	%r2, 272(%r11)
	la	%r0, 0(%r2,%r1)
	lg	%r1, 256(%r11)
	sgr	%r0, %r1
	stg	%r0, 240(%r11)
	lg	%r0, 256(%r11)
	cghi	%r0, 0
	jlh	.LBB99_2
	j	.LBB99_1
.LBB99_1:
	lg	%r0, 280(%r11)
	stg	%r0, 288(%r11)
	j	.LBB99_18
.LBB99_2:
	lg	%r0, 272(%r11)
	lg	%r1, 256(%r11)
	clgr	%r0, %r1
	jhe	.LBB99_4
	j	.LBB99_3
.LBB99_3:
	mvghi	288(%r11), 0
	j	.LBB99_18
.LBB99_4:
	lg	%r0, 280(%r11)
	stg	%r0, 248(%r11)
	j	.LBB99_5
.LBB99_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB99_9 Depth 2
	lg	%r0, 248(%r11)
	lg	%r1, 240(%r11)
	clgr	%r0, %r1
	jh	.LBB99_17
	j	.LBB99_6
.LBB99_6:                               #   in Loop: Header=BB99_5 Depth=1
	lg	%r1, 248(%r11)
	llc	%r0, 0(%r1)
	lg	%r1, 264(%r11)
	llc	%r1, 0(%r1)
	cr	%r0, %r1
	jlh	.LBB99_15
	j	.LBB99_7
.LBB99_7:                               #   in Loop: Header=BB99_5 Depth=1
	lg	%r3, 248(%r11)
	lg	%r2, 264(%r11)
	lg	%r1, 256(%r11)
	aghi	%r1, -2
	stg	%r1, 208(%r11)                  # 8-byte Folded Spill
	srlg	%r0, %r1, 8
	stg	%r0, 216(%r11)                  # 8-byte Folded Spill
	stg	%r3, 224(%r11)                  # 8-byte Folded Spill
	stg	%r2, 232(%r11)                  # 8-byte Folded Spill
	cghi	%r1, -1
	je	.LBB99_12
# %bb.8:                                #   in Loop: Header=BB99_5 Depth=1
	lg	%r0, 216(%r11)                  # 8-byte Folded Reload
	lg	%r1, 224(%r11)                  # 8-byte Folded Reload
	lg	%r2, 232(%r11)                  # 8-byte Folded Reload
	cghi	%r0, 0
	stg	%r2, 184(%r11)                  # 8-byte Folded Spill
	stg	%r1, 192(%r11)                  # 8-byte Folded Spill
	stg	%r0, 200(%r11)                  # 8-byte Folded Spill
	je	.LBB99_11
.LBB99_9:                               #   Parent Loop BB99_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lg	%r1, 184(%r11)                  # 8-byte Folded Reload
	lg	%r2, 192(%r11)                  # 8-byte Folded Reload
	lg	%r0, 200(%r11)                  # 8-byte Folded Reload
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	stg	%r2, 168(%r11)                  # 8-byte Folded Spill
	stg	%r1, 176(%r11)                  # 8-byte Folded Spill
	clc	1(256,%r1), 1(%r2)
	jlh	.LBB99_13
# %bb.10:                               #   in Loop: Header=BB99_9 Depth=2
	lg	%r0, 160(%r11)                  # 8-byte Folded Reload
	lg	%r1, 168(%r11)                  # 8-byte Folded Reload
	lg	%r2, 176(%r11)                  # 8-byte Folded Reload
	la	%r2, 256(%r2)
	la	%r1, 256(%r1)
	aghi	%r0, -1
	cghi	%r0, 0
	stg	%r2, 184(%r11)                  # 8-byte Folded Spill
	stg	%r1, 192(%r11)                  # 8-byte Folded Spill
	stg	%r0, 200(%r11)                  # 8-byte Folded Spill
	jlh	.LBB99_9
.LBB99_11:                              #   in Loop: Header=BB99_5 Depth=1
	lg	%r1, 208(%r11)                  # 8-byte Folded Reload
	lg	%r2, 184(%r11)                  # 8-byte Folded Reload
	lg	%r3, 192(%r11)                  # 8-byte Folded Reload
	exrl	%r1, .Ltmp1
.LBB99_12:                              #   in Loop: Header=BB99_5 Depth=1
.LBB99_13:                              #   in Loop: Header=BB99_5 Depth=1
	jlh	.LBB99_15
	j	.LBB99_14
.LBB99_14:
	lg	%r0, 248(%r11)
	stg	%r0, 288(%r11)
	j	.LBB99_18
.LBB99_15:                              #   in Loop: Header=BB99_5 Depth=1
	j	.LBB99_16
.LBB99_16:                              #   in Loop: Header=BB99_5 Depth=1
	lg	%r1, 248(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 248(%r11)
	j	.LBB99_5
.LBB99_17:
	mvghi	288(%r11), 0
	j	.LBB99_18
.LBB99_18:
	lg	%r2, 288(%r11)
	lmg	%r11, %r15, 384(%r11)
	br	%r14
.Lfunc_end99:
	.size	memmem, .Lfunc_end99-memmem
	.cfi_endproc
                                        # -- End function
	.globl	mempcpy                         # -- Begin function mempcpy
	.p2align	4
	.type	mempcpy,@function
mempcpy:                                # @mempcpy
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -248
	.cfi_def_cfa_offset 408
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 240(%r11)
	stg	%r3, 232(%r11)
	stg	%r4, 224(%r11)
	lg	%r2, 240(%r11)
	stg	%r2, 184(%r11)                  # 8-byte Folded Spill
	lg	%r3, 232(%r11)
	lg	%r1, 224(%r11)
	lay	%r1, -1(%r1)
	stg	%r1, 192(%r11)                  # 8-byte Folded Spill
	srlg	%r0, %r1, 8
	stg	%r0, 200(%r11)                  # 8-byte Folded Spill
	stg	%r3, 208(%r11)                  # 8-byte Folded Spill
	stg	%r2, 216(%r11)                  # 8-byte Folded Spill
	cghi	%r1, -1
	je	.LBB100_4
# %bb.1:
	lg	%r0, 200(%r11)                  # 8-byte Folded Reload
	lg	%r1, 208(%r11)                  # 8-byte Folded Reload
	lg	%r2, 216(%r11)                  # 8-byte Folded Reload
	cghi	%r0, 0
	stg	%r2, 160(%r11)                  # 8-byte Folded Spill
	stg	%r1, 168(%r11)                  # 8-byte Folded Spill
	stg	%r0, 176(%r11)                  # 8-byte Folded Spill
	je	.LBB100_3
.LBB100_2:                              # =>This Inner Loop Header: Depth=1
	lg	%r0, 176(%r11)                  # 8-byte Folded Reload
	lg	%r1, 168(%r11)                  # 8-byte Folded Reload
	lg	%r2, 160(%r11)                  # 8-byte Folded Reload
	pfd	2, 768(%r2)
	mvc	0(256,%r2), 0(%r1)
	la	%r2, 256(%r2)
	la	%r1, 256(%r1)
	aghi	%r0, -1
	cghi	%r0, 0
	stg	%r2, 160(%r11)                  # 8-byte Folded Spill
	stg	%r1, 168(%r11)                  # 8-byte Folded Spill
	stg	%r0, 176(%r11)                  # 8-byte Folded Spill
	jlh	.LBB100_2
.LBB100_3:
	lg	%r1, 192(%r11)                  # 8-byte Folded Reload
	lg	%r2, 160(%r11)                  # 8-byte Folded Reload
	lg	%r3, 168(%r11)                  # 8-byte Folded Reload
	exrl	%r1, .Ltmp0
.LBB100_4:
	lg	%r2, 184(%r11)                  # 8-byte Folded Reload
	lg	%r0, 224(%r11)
	agr	%r2, %r0
	lmg	%r11, %r15, 336(%r11)
	br	%r14
.Lfunc_end100:
	.size	mempcpy, .Lfunc_end100-mempcpy
	.cfi_endproc
                                        # -- End function
	.globl	frexp                           # -- Begin function frexp
	.p2align	4
	.type	frexp,@function
frexp:                                  # @frexp
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -184
	.cfi_def_cfa_offset 344
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
                                        # kill: def $r0d killed $r2d
	stg	%r2, 176(%r11)
	stg	%r3, 168(%r11)
	mvhi	160(%r11), 0
	mvhi	164(%r11), 0
	lg	%r2, 176(%r11)
	lghi	%r3, 0
	brasl	%r14, __ltdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jhe	.LBB101_2
	j	.LBB101_1
.LBB101_1:
	lg	%r0, 176(%r11)
	xihf	%r0, 2147483648
	stg	%r0, 176(%r11)
	mvhi	164(%r11), 1
	j	.LBB101_2
.LBB101_2:
	lg	%r2, 176(%r11)
	llihh	%r3, 16368
	brasl	%r14, __gedf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jl	.LBB101_7
	j	.LBB101_3
.LBB101_3:
	j	.LBB101_4
.LBB101_4:                              # =>This Inner Loop Header: Depth=1
	lg	%r2, 176(%r11)
	llihh	%r3, 16368
	brasl	%r14, __gedf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jl	.LBB101_6
	j	.LBB101_5
.LBB101_5:                              #   in Loop: Header=BB101_4 Depth=1
	l	%r0, 160(%r11)
	ahi	%r0, 1
	st	%r0, 160(%r11)
	lg	%r2, 176(%r11)
	llihh	%r3, 16352
	brasl	%r14, __muldf3@PLT
	stg	%r2, 176(%r11)
	j	.LBB101_4
.LBB101_6:
	j	.LBB101_14
.LBB101_7:
	lg	%r2, 176(%r11)
	llihh	%r3, 16352
	brasl	%r14, __ltdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jhe	.LBB101_13
	j	.LBB101_8
.LBB101_8:
	lg	%r2, 176(%r11)
	lghi	%r3, 0
	brasl	%r14, __eqdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	je	.LBB101_13
	j	.LBB101_9
.LBB101_9:
	j	.LBB101_10
.LBB101_10:                             # =>This Inner Loop Header: Depth=1
	lg	%r2, 176(%r11)
	llihh	%r3, 16352
	brasl	%r14, __ltdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jhe	.LBB101_12
	j	.LBB101_11
.LBB101_11:                             #   in Loop: Header=BB101_10 Depth=1
	l	%r0, 160(%r11)
	ahi	%r0, -1
	st	%r0, 160(%r11)
	lg	%r3, 176(%r11)
	lgr	%r2, %r3
	brasl	%r14, __adddf3@PLT
	stg	%r2, 176(%r11)
	j	.LBB101_10
.LBB101_12:
	j	.LBB101_13
.LBB101_13:
	j	.LBB101_14
.LBB101_14:
	l	%r0, 160(%r11)
	lg	%r1, 168(%r11)
	st	%r0, 0(%r1)
	l	%r0, 164(%r11)
	chi	%r0, 0
	je	.LBB101_16
	j	.LBB101_15
.LBB101_15:
	lg	%r0, 176(%r11)
	xihf	%r0, 2147483648
	stg	%r0, 176(%r11)
	j	.LBB101_16
.LBB101_16:
	lg	%r2, 176(%r11)
	lmg	%r11, %r15, 272(%r11)
	br	%r14
.Lfunc_end101:
	.size	frexp, .Lfunc_end101-frexp
	.cfi_endproc
                                        # -- End function
	.globl	__muldi3                        # -- Begin function __muldi3
	.p2align	4
	.type	__muldi3,@function
__muldi3:                               # @__muldi3
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 184(%r11)
	stg	%r3, 176(%r11)
	mvghi	168(%r11), 0
	lg	%r0, 184(%r11)
	stg	%r0, 160(%r11)
	j	.LBB102_1
.LBB102_1:                              # =>This Inner Loop Header: Depth=1
	lg	%r0, 160(%r11)
	cghi	%r0, 0
	je	.LBB102_5
	j	.LBB102_2
.LBB102_2:                              #   in Loop: Header=BB102_1 Depth=1
	llc	%r0, 167(%r11)
	tmll	%r0, 1
	je	.LBB102_4
	j	.LBB102_3
.LBB102_3:                              #   in Loop: Header=BB102_1 Depth=1
	lg	%r2, 176(%r11)
	lg	%r1, 168(%r11)
	la	%r0, 0(%r2,%r1)
	stg	%r0, 168(%r11)
	j	.LBB102_4
.LBB102_4:                              #   in Loop: Header=BB102_1 Depth=1
	lg	%r0, 176(%r11)
	sllg	%r0, %r0, 1
	stg	%r0, 176(%r11)
	lg	%r0, 160(%r11)
	srlg	%r0, %r0, 1
	stg	%r0, 160(%r11)
	j	.LBB102_1
.LBB102_5:
	lg	%r2, 168(%r11)
	lmg	%r11, %r15, 280(%r11)
	br	%r14
.Lfunc_end102:
	.size	__muldi3, .Lfunc_end102-__muldi3
	.cfi_endproc
                                        # -- End function
	.globl	udivmodsi4                      # -- Begin function udivmodsi4
	.p2align	4
	.type	udivmodsi4,@function
udivmodsi4:                             # @udivmodsi4
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	lr	%r1, %r2
	st	%r1, 192(%r11)
	st	%r0, 188(%r11)
	stg	%r4, 176(%r11)
	mvhi	172(%r11), 1
	mvhi	168(%r11), 0
	j	.LBB103_1
.LBB103_1:                              # =>This Inner Loop Header: Depth=1
	l	%r1, 188(%r11)
	l	%r2, 192(%r11)
	lhi	%r0, 0
	clr	%r1, %r2
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jhe	.LBB103_4
	j	.LBB103_2
.LBB103_2:                              #   in Loop: Header=BB103_1 Depth=1
	l	%r1, 172(%r11)
	lhi	%r0, 0
	chi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB103_4
	j	.LBB103_3
.LBB103_3:                              #   in Loop: Header=BB103_1 Depth=1
	l	%r0, 188(%r11)
	chi	%r0, 0
	ipm	%r0
	xilf	%r0, 4294967295
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 63, 191, 36
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB103_4
.LBB103_4:                              #   in Loop: Header=BB103_1 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB103_6
	j	.LBB103_5
.LBB103_5:                              #   in Loop: Header=BB103_1 Depth=1
	l	%r0, 188(%r11)
	sll	%r0, 1
	st	%r0, 188(%r11)
	l	%r0, 172(%r11)
	sll	%r0, 1
	st	%r0, 172(%r11)
	j	.LBB103_1
.LBB103_6:
	j	.LBB103_7
.LBB103_7:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 172(%r11)
	chi	%r0, 0
	je	.LBB103_11
	j	.LBB103_8
.LBB103_8:                              #   in Loop: Header=BB103_7 Depth=1
	l	%r0, 192(%r11)
	l	%r1, 188(%r11)
	clr	%r0, %r1
	jl	.LBB103_10
	j	.LBB103_9
.LBB103_9:                              #   in Loop: Header=BB103_7 Depth=1
	l	%r1, 188(%r11)
	l	%r0, 192(%r11)
	sr	%r0, %r1
	st	%r0, 192(%r11)
	l	%r1, 172(%r11)
	l	%r0, 168(%r11)
	or	%r0, %r1
	st	%r0, 168(%r11)
	j	.LBB103_10
.LBB103_10:                             #   in Loop: Header=BB103_7 Depth=1
	l	%r0, 172(%r11)
	srl	%r0, 1
	st	%r0, 172(%r11)
	l	%r0, 188(%r11)
	srl	%r0, 1
	st	%r0, 188(%r11)
	j	.LBB103_7
.LBB103_11:
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB103_13
	j	.LBB103_12
.LBB103_12:
	l	%r0, 192(%r11)
	st	%r0, 196(%r11)
	j	.LBB103_14
.LBB103_13:
	l	%r0, 168(%r11)
	st	%r0, 196(%r11)
	j	.LBB103_14
.LBB103_14:
	llgf	%r2, 196(%r11)
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end103:
	.size	udivmodsi4, .Lfunc_end103-udivmodsi4
	.cfi_endproc
                                        # -- End function
	.globl	__clrsbqi2                      # -- Begin function __clrsbqi2
	.p2align	4
	.type	__clrsbqi2,@function
__clrsbqi2:                             # @__clrsbqi2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	stc	%r0, 171(%r11)
	llc	%r0, 171(%r11)
	chi	%r0, 0
	jhe	.LBB104_2
	j	.LBB104_1
.LBB104_1:
	lb	%r0, 171(%r11)
	xilf	%r0, 4294967295
	stc	%r0, 171(%r11)
	j	.LBB104_2
.LBB104_2:
	llc	%r0, 171(%r11)
	chi	%r0, 0
	jlh	.LBB104_4
	j	.LBB104_3
.LBB104_3:
	mvhi	172(%r11), 7
	j	.LBB104_5
.LBB104_4:
	llgc	%r0, 171(%r11)
	sllg	%r0, %r0, 40
	flogr	%r0, %r0
                                        # kill: def $r0d killed $r0d killed $r0q
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	ahi	%r0, -1
	st	%r0, 172(%r11)
	j	.LBB104_5
.LBB104_5:
	lgf	%r2, 172(%r11)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end104:
	.size	__clrsbqi2, .Lfunc_end104-__clrsbqi2
	.cfi_endproc
                                        # -- End function
	.globl	__clrsbdi2                      # -- Begin function __clrsbdi2
	.p2align	4
	.type	__clrsbdi2,@function
__clrsbdi2:                             # @__clrsbdi2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -184
	.cfi_def_cfa_offset 344
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 168(%r11)
	lg	%r0, 168(%r11)
	cghi	%r0, 0
	jhe	.LBB105_2
	j	.LBB105_1
.LBB105_1:
	lg	%r0, 168(%r11)
	lcgr	%r0, %r0
	aghi	%r0, -1
	stg	%r0, 168(%r11)
	j	.LBB105_2
.LBB105_2:
	lg	%r0, 168(%r11)
	cghi	%r0, 0
	jlh	.LBB105_4
	j	.LBB105_3
.LBB105_3:
	mvhi	180(%r11), 63
	j	.LBB105_5
.LBB105_4:
	lg	%r0, 168(%r11)
	flogr	%r0, %r0
                                        # kill: def $r0d killed $r0d killed $r0q
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	ahi	%r0, -1
	st	%r0, 180(%r11)
	j	.LBB105_5
.LBB105_5:
	lgf	%r2, 180(%r11)
	lmg	%r11, %r15, 272(%r11)
	br	%r14
.Lfunc_end105:
	.size	__clrsbdi2, .Lfunc_end105-__clrsbdi2
	.cfi_endproc
                                        # -- End function
	.globl	__mulsi3                        # -- Begin function __mulsi3
	.p2align	4
	.type	__mulsi3,@function
__mulsi3:                               # @__mulsi3
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	lr	%r1, %r2
	st	%r1, 172(%r11)
	st	%r0, 168(%r11)
	mvhi	164(%r11), 0
	j	.LBB106_1
.LBB106_1:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 172(%r11)
	chi	%r0, 0
	je	.LBB106_5
	j	.LBB106_2
.LBB106_2:                              #   in Loop: Header=BB106_1 Depth=1
	llc	%r0, 175(%r11)
	tmll	%r0, 1
	je	.LBB106_4
	j	.LBB106_3
.LBB106_3:                              #   in Loop: Header=BB106_1 Depth=1
	l	%r1, 168(%r11)
	l	%r0, 164(%r11)
	ar	%r0, %r1
	st	%r0, 164(%r11)
	j	.LBB106_4
.LBB106_4:                              #   in Loop: Header=BB106_1 Depth=1
	l	%r0, 172(%r11)
	srl	%r0, 1
	st	%r0, 172(%r11)
	l	%r0, 168(%r11)
	sll	%r0, 1
	st	%r0, 168(%r11)
	j	.LBB106_1
.LBB106_5:
	llgf	%r2, 164(%r11)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end106:
	.size	__mulsi3, .Lfunc_end106-__mulsi3
	.cfi_endproc
                                        # -- End function
	.globl	__cmovd                         # -- Begin function __cmovd
	.p2align	4
	.type	__cmovd,@function
__cmovd:                                # @__cmovd
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -208
	.cfi_def_cfa_offset 368
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r4
	stg	%r2, 200(%r11)
	stg	%r3, 192(%r11)
	st	%r0, 188(%r11)
	l	%r0, 188(%r11)
	srl	%r0, 3
	st	%r0, 180(%r11)
	l	%r0, 188(%r11)
	nill	%r0, 65528
	st	%r0, 176(%r11)
	lg	%r0, 200(%r11)
	stg	%r0, 168(%r11)
	lg	%r0, 192(%r11)
	stg	%r0, 160(%r11)
	lg	%r0, 168(%r11)
	lg	%r1, 160(%r11)
	clgr	%r0, %r1
	jl	.LBB107_2
	j	.LBB107_1
.LBB107_1:
	lg	%r1, 168(%r11)
	lg	%r0, 160(%r11)
	llgf	%r2, 188(%r11)
	agr	%r0, %r2
	clgr	%r0, %r1
	jhe	.LBB107_10
	j	.LBB107_2
.LBB107_2:
	mvhi	184(%r11), 0
	j	.LBB107_3
.LBB107_3:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 184(%r11)
	l	%r1, 180(%r11)
	clr	%r0, %r1
	jhe	.LBB107_6
	j	.LBB107_4
.LBB107_4:                              #   in Loop: Header=BB107_3 Depth=1
	lg	%r1, 192(%r11)
	llgf	%r0, 184(%r11)
	sllg	%r2, %r0, 3
	lg	%r0, 0(%r2,%r1)
	lg	%r1, 200(%r11)
	stg	%r0, 0(%r2,%r1)
	j	.LBB107_5
.LBB107_5:                              #   in Loop: Header=BB107_3 Depth=1
	l	%r0, 184(%r11)
	ahi	%r0, 1
	st	%r0, 184(%r11)
	j	.LBB107_3
.LBB107_6:
	j	.LBB107_7
.LBB107_7:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 188(%r11)
	l	%r1, 176(%r11)
	clr	%r0, %r1
	jle	.LBB107_9
	j	.LBB107_8
.LBB107_8:                              #   in Loop: Header=BB107_7 Depth=1
	lg	%r1, 160(%r11)
	llgf	%r2, 176(%r11)
	lb	%r0, 0(%r2,%r1)
	lg	%r1, 168(%r11)
	stc	%r0, 0(%r2,%r1)
	l	%r0, 176(%r11)
	ahi	%r0, 1
	st	%r0, 176(%r11)
	j	.LBB107_7
.LBB107_9:
	j	.LBB107_14
.LBB107_10:
	j	.LBB107_11
.LBB107_11:                             # =>This Inner Loop Header: Depth=1
	l	%r0, 188(%r11)
	lr	%r1, %r0
	ahi	%r1, -1
	st	%r1, 188(%r11)
	chi	%r0, 0
	je	.LBB107_13
	j	.LBB107_12
.LBB107_12:                             #   in Loop: Header=BB107_11 Depth=1
	lg	%r1, 160(%r11)
	llgf	%r2, 188(%r11)
	lb	%r0, 0(%r2,%r1)
	lg	%r1, 168(%r11)
	stc	%r0, 0(%r2,%r1)
	j	.LBB107_11
.LBB107_13:
	j	.LBB107_14
.LBB107_14:
	lmg	%r11, %r15, 296(%r11)
	br	%r14
.Lfunc_end107:
	.size	__cmovd, .Lfunc_end107-__cmovd
	.cfi_endproc
                                        # -- End function
	.globl	__cmovh                         # -- Begin function __cmovh
	.p2align	4
	.type	__cmovh,@function
__cmovh:                                # @__cmovh
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -208
	.cfi_def_cfa_offset 368
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r4
	stg	%r2, 200(%r11)
	stg	%r3, 192(%r11)
	st	%r0, 188(%r11)
	l	%r0, 188(%r11)
	srl	%r0, 1
	st	%r0, 180(%r11)
	lg	%r0, 200(%r11)
	stg	%r0, 168(%r11)
	lg	%r0, 192(%r11)
	stg	%r0, 160(%r11)
	lg	%r0, 168(%r11)
	lg	%r1, 160(%r11)
	clgr	%r0, %r1
	jl	.LBB108_2
	j	.LBB108_1
.LBB108_1:
	lg	%r1, 168(%r11)
	lg	%r0, 160(%r11)
	llgf	%r2, 188(%r11)
	agr	%r0, %r2
	clgr	%r0, %r1
	jhe	.LBB108_9
	j	.LBB108_2
.LBB108_2:
	mvhi	184(%r11), 0
	j	.LBB108_3
.LBB108_3:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 184(%r11)
	l	%r1, 180(%r11)
	clr	%r0, %r1
	jhe	.LBB108_6
	j	.LBB108_4
.LBB108_4:                              #   in Loop: Header=BB108_3 Depth=1
	lg	%r1, 192(%r11)
	llgf	%r0, 184(%r11)
	sllg	%r2, %r0, 1
	lh	%r0, 0(%r2,%r1)
	lg	%r1, 200(%r11)
	sth	%r0, 0(%r2,%r1)
	j	.LBB108_5
.LBB108_5:                              #   in Loop: Header=BB108_3 Depth=1
	l	%r0, 184(%r11)
	ahi	%r0, 1
	st	%r0, 184(%r11)
	j	.LBB108_3
.LBB108_6:
	llc	%r0, 191(%r11)
	tmll	%r0, 1
	je	.LBB108_8
	j	.LBB108_7
.LBB108_7:
	lg	%r1, 160(%r11)
	l	%r0, 188(%r11)
	ahi	%r0, -1
	llgfr	%r2, %r0
	lb	%r0, 0(%r2,%r1)
	lg	%r1, 168(%r11)
	stc	%r0, 0(%r2,%r1)
	j	.LBB108_8
.LBB108_8:
	j	.LBB108_13
.LBB108_9:
	j	.LBB108_10
.LBB108_10:                             # =>This Inner Loop Header: Depth=1
	l	%r0, 188(%r11)
	lr	%r1, %r0
	ahi	%r1, -1
	st	%r1, 188(%r11)
	chi	%r0, 0
	je	.LBB108_12
	j	.LBB108_11
.LBB108_11:                             #   in Loop: Header=BB108_10 Depth=1
	lg	%r1, 160(%r11)
	llgf	%r2, 188(%r11)
	lb	%r0, 0(%r2,%r1)
	lg	%r1, 168(%r11)
	stc	%r0, 0(%r2,%r1)
	j	.LBB108_10
.LBB108_12:
	j	.LBB108_13
.LBB108_13:
	lmg	%r11, %r15, 296(%r11)
	br	%r14
.Lfunc_end108:
	.size	__cmovh, .Lfunc_end108-__cmovh
	.cfi_endproc
                                        # -- End function
	.globl	__cmovw                         # -- Begin function __cmovw
	.p2align	4
	.type	__cmovw,@function
__cmovw:                                # @__cmovw
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -208
	.cfi_def_cfa_offset 368
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r4
	stg	%r2, 200(%r11)
	stg	%r3, 192(%r11)
	st	%r0, 188(%r11)
	l	%r0, 188(%r11)
	srl	%r0, 2
	st	%r0, 180(%r11)
	l	%r0, 188(%r11)
	nill	%r0, 65532
	st	%r0, 176(%r11)
	lg	%r0, 200(%r11)
	stg	%r0, 168(%r11)
	lg	%r0, 192(%r11)
	stg	%r0, 160(%r11)
	lg	%r0, 168(%r11)
	lg	%r1, 160(%r11)
	clgr	%r0, %r1
	jl	.LBB109_2
	j	.LBB109_1
.LBB109_1:
	lg	%r1, 168(%r11)
	lg	%r0, 160(%r11)
	llgf	%r2, 188(%r11)
	agr	%r0, %r2
	clgr	%r0, %r1
	jhe	.LBB109_10
	j	.LBB109_2
.LBB109_2:
	mvhi	184(%r11), 0
	j	.LBB109_3
.LBB109_3:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 184(%r11)
	l	%r1, 180(%r11)
	clr	%r0, %r1
	jhe	.LBB109_6
	j	.LBB109_4
.LBB109_4:                              #   in Loop: Header=BB109_3 Depth=1
	lg	%r1, 192(%r11)
	llgf	%r0, 184(%r11)
	sllg	%r2, %r0, 2
	l	%r0, 0(%r2,%r1)
	lg	%r1, 200(%r11)
	st	%r0, 0(%r2,%r1)
	j	.LBB109_5
.LBB109_5:                              #   in Loop: Header=BB109_3 Depth=1
	l	%r0, 184(%r11)
	ahi	%r0, 1
	st	%r0, 184(%r11)
	j	.LBB109_3
.LBB109_6:
	j	.LBB109_7
.LBB109_7:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 188(%r11)
	l	%r1, 176(%r11)
	clr	%r0, %r1
	jle	.LBB109_9
	j	.LBB109_8
.LBB109_8:                              #   in Loop: Header=BB109_7 Depth=1
	lg	%r1, 160(%r11)
	llgf	%r2, 176(%r11)
	lb	%r0, 0(%r2,%r1)
	lg	%r1, 168(%r11)
	stc	%r0, 0(%r2,%r1)
	l	%r0, 176(%r11)
	ahi	%r0, 1
	st	%r0, 176(%r11)
	j	.LBB109_7
.LBB109_9:
	j	.LBB109_14
.LBB109_10:
	j	.LBB109_11
.LBB109_11:                             # =>This Inner Loop Header: Depth=1
	l	%r0, 188(%r11)
	lr	%r1, %r0
	ahi	%r1, -1
	st	%r1, 188(%r11)
	chi	%r0, 0
	je	.LBB109_13
	j	.LBB109_12
.LBB109_12:                             #   in Loop: Header=BB109_11 Depth=1
	lg	%r1, 160(%r11)
	llgf	%r2, 188(%r11)
	lb	%r0, 0(%r2,%r1)
	lg	%r1, 168(%r11)
	stc	%r0, 0(%r2,%r1)
	j	.LBB109_11
.LBB109_13:
	j	.LBB109_14
.LBB109_14:
	lmg	%r11, %r15, 296(%r11)
	br	%r14
.Lfunc_end109:
	.size	__cmovw, .Lfunc_end109-__cmovw
	.cfi_endproc
                                        # -- End function
	.globl	__modi                          # -- Begin function __modi
	.p2align	4
	.type	__modi,@function
__modi:                                 # @__modi
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	lr	%r1, %r2
	st	%r1, 164(%r11)
	st	%r0, 160(%r11)
	lgf	%r3, 164(%r11)
	l	%r2, 160(%r11)
                                        # implicit-def: $r0q
	lgr	%r1, %r3
	dsgfr	%r0, %r2
                                        # kill: def $r0l killed $r0l killed $r0q
	lgfr	%r2, %r0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end110:
	.size	__modi, .Lfunc_end110-__modi
	.cfi_endproc
                                        # -- End function
	.globl	__uitod                         # -- Begin function __uitod
	.p2align	4
	.type	__uitod,@function
__uitod:                                # @__uitod
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	llgf	%r2, 164(%r11)
	brasl	%r14, __floatunsidf@PLT
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end111:
	.size	__uitod, .Lfunc_end111-__uitod
	.cfi_endproc
                                        # -- End function
	.globl	__uitof                         # -- Begin function __uitof
	.p2align	4
	.type	__uitof,@function
__uitof:                                # @__uitof
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	llgf	%r2, 164(%r11)
	brasl	%r14, __floatunsisf@PLT
                                        # kill: def $r2l killed $r2l killed $r2d
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end112:
	.size	__uitof, .Lfunc_end112-__uitof
	.cfi_endproc
                                        # -- End function
	.globl	__ulltod                        # -- Begin function __ulltod
	.p2align	4
	.type	__ulltod,@function
__ulltod:                               # @__ulltod
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 160(%r11)
	lg	%r2, 160(%r11)
	brasl	%r14, __floatundidf@PLT
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end113:
	.size	__ulltod, .Lfunc_end113-__ulltod
	.cfi_endproc
                                        # -- End function
	.globl	__ulltof                        # -- Begin function __ulltof
	.p2align	4
	.type	__ulltof,@function
__ulltof:                               # @__ulltof
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 160(%r11)
	lg	%r2, 160(%r11)
	brasl	%r14, __floatundisf@PLT
                                        # kill: def $r2l killed $r2l killed $r2d
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end114:
	.size	__ulltof, .Lfunc_end114-__ulltof
	.cfi_endproc
                                        # -- End function
	.globl	__umodi                         # -- Begin function __umodi
	.p2align	4
	.type	__umodi,@function
__umodi:                                # @__umodi
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	lr	%r1, %r2
	st	%r1, 164(%r11)
	st	%r0, 160(%r11)
	l	%r0, 164(%r11)
	l	%r2, 160(%r11)
                                        # implicit-def: $r3d
	lr	%r3, %r0
                                        # implicit-def: $r0q
	llill	%r4, 0
	lgr	%r0, %r4
	lgr	%r1, %r3
	dlr	%r0, %r2
                                        # kill: def $r0l killed $r0l killed $r0q
	llgfr	%r2, %r0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end115:
	.size	__umodi, .Lfunc_end115-__umodi
	.cfi_endproc
                                        # -- End function
	.globl	__clzhi2                        # -- Begin function __clzhi2
	.p2align	4
	.type	__clzhi2,@function
__clzhi2:                               # @__clzhi2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	sth	%r0, 166(%r11)
	mvhi	160(%r11), 0
	j	.LBB116_1
.LBB116_1:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 160(%r11)
	chi	%r0, 15
	jh	.LBB116_6
	j	.LBB116_2
.LBB116_2:                              #   in Loop: Header=BB116_1 Depth=1
	llh	%r0, 166(%r11)
	l	%r2, 160(%r11)
	lhi	%r1, 15
	sr	%r1, %r2
	srl	%r0, 0(%r1)
	tmll	%r0, 1
	je	.LBB116_4
	j	.LBB116_3
.LBB116_3:
	j	.LBB116_6
.LBB116_4:                              #   in Loop: Header=BB116_1 Depth=1
	j	.LBB116_5
.LBB116_5:                              #   in Loop: Header=BB116_1 Depth=1
	l	%r0, 160(%r11)
	ahi	%r0, 1
	st	%r0, 160(%r11)
	j	.LBB116_1
.LBB116_6:
	lgf	%r2, 160(%r11)
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end116:
	.size	__clzhi2, .Lfunc_end116-__clzhi2
	.cfi_endproc
                                        # -- End function
	.globl	__ctzhi2                        # -- Begin function __ctzhi2
	.p2align	4
	.type	__ctzhi2,@function
__ctzhi2:                               # @__ctzhi2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	sth	%r0, 166(%r11)
	mvhi	160(%r11), 0
	j	.LBB117_1
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 160(%r11)
	chi	%r0, 15
	jh	.LBB117_6
	j	.LBB117_2
.LBB117_2:                              #   in Loop: Header=BB117_1 Depth=1
	llh	%r0, 166(%r11)
	l	%r1, 160(%r11)
	srl	%r0, 0(%r1)
	tmll	%r0, 1
	je	.LBB117_4
	j	.LBB117_3
.LBB117_3:
	j	.LBB117_6
.LBB117_4:                              #   in Loop: Header=BB117_1 Depth=1
	j	.LBB117_5
.LBB117_5:                              #   in Loop: Header=BB117_1 Depth=1
	l	%r0, 160(%r11)
	ahi	%r0, 1
	st	%r0, 160(%r11)
	j	.LBB117_1
.LBB117_6:
	lgf	%r2, 160(%r11)
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end117:
	.size	__ctzhi2, .Lfunc_end117-__ctzhi2
	.cfi_endproc
                                        # -- End function
	.globl	__fixunssfsi                    # -- Begin function __fixunssfsi
	.p2align	4
	.type	__fixunssfsi,@function
__fixunssfsi:                           # @__fixunssfsi
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
                                        # kill: def $r0l killed $r2l
	st	%r2, 164(%r11)
	llgf	%r2, 164(%r11)
	llilh	%r3, 18176
	brasl	%r14, __gesf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jl	.LBB118_2
	j	.LBB118_1
.LBB118_1:
	llgf	%r2, 164(%r11)
	llilh	%r3, 50944
	brasl	%r14, __addsf3@PLT
	brasl	%r14, __fixsfdi@PLT
	lay	%r0, 32768(%r2)
	stg	%r0, 168(%r11)
	j	.LBB118_3
.LBB118_2:
	llgf	%r2, 164(%r11)
	brasl	%r14, __fixsfdi@PLT
	stg	%r2, 168(%r11)
	j	.LBB118_3
.LBB118_3:
	lg	%r2, 168(%r11)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end118:
	.size	__fixunssfsi, .Lfunc_end118-__fixunssfsi
	.cfi_endproc
                                        # -- End function
	.globl	__parityhi2                     # -- Begin function __parityhi2
	.p2align	4
	.type	__parityhi2,@function
__parityhi2:                            # @__parityhi2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	sth	%r0, 174(%r11)
	mvhi	164(%r11), 0
	mvhi	168(%r11), 0
	j	.LBB119_1
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 168(%r11)
	chi	%r0, 15
	jh	.LBB119_6
	j	.LBB119_2
.LBB119_2:                              #   in Loop: Header=BB119_1 Depth=1
	llh	%r0, 174(%r11)
	l	%r1, 168(%r11)
	srl	%r0, 0(%r1)
	tmll	%r0, 1
	je	.LBB119_4
	j	.LBB119_3
.LBB119_3:                              #   in Loop: Header=BB119_1 Depth=1
	l	%r0, 164(%r11)
	ahi	%r0, 1
	st	%r0, 164(%r11)
	j	.LBB119_4
.LBB119_4:                              #   in Loop: Header=BB119_1 Depth=1
	j	.LBB119_5
.LBB119_5:                              #   in Loop: Header=BB119_1 Depth=1
	l	%r0, 168(%r11)
	ahi	%r0, 1
	st	%r0, 168(%r11)
	j	.LBB119_1
.LBB119_6:
	llgf	%r0, 164(%r11)
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 0
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end119:
	.size	__parityhi2, .Lfunc_end119-__parityhi2
	.cfi_endproc
                                        # -- End function
	.globl	__popcounthi2                   # -- Begin function __popcounthi2
	.p2align	4
	.type	__popcounthi2,@function
__popcounthi2:                          # @__popcounthi2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	sth	%r0, 174(%r11)
	mvhi	164(%r11), 0
	mvhi	168(%r11), 0
	j	.LBB120_1
.LBB120_1:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 168(%r11)
	chi	%r0, 15
	jh	.LBB120_6
	j	.LBB120_2
.LBB120_2:                              #   in Loop: Header=BB120_1 Depth=1
	llh	%r0, 174(%r11)
	l	%r1, 168(%r11)
	srl	%r0, 0(%r1)
	tmll	%r0, 1
	je	.LBB120_4
	j	.LBB120_3
.LBB120_3:                              #   in Loop: Header=BB120_1 Depth=1
	l	%r0, 164(%r11)
	ahi	%r0, 1
	st	%r0, 164(%r11)
	j	.LBB120_4
.LBB120_4:                              #   in Loop: Header=BB120_1 Depth=1
	j	.LBB120_5
.LBB120_5:                              #   in Loop: Header=BB120_1 Depth=1
	l	%r0, 168(%r11)
	ahi	%r0, 1
	st	%r0, 168(%r11)
	j	.LBB120_1
.LBB120_6:
	lgf	%r2, 164(%r11)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end120:
	.size	__popcounthi2, .Lfunc_end120-__popcounthi2
	.cfi_endproc
                                        # -- End function
	.globl	__mulsi3_iq2000                 # -- Begin function __mulsi3_iq2000
	.p2align	4
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        # @__mulsi3_iq2000
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	lr	%r1, %r2
	st	%r1, 172(%r11)
	st	%r0, 168(%r11)
	mvhi	164(%r11), 0
	j	.LBB121_1
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 172(%r11)
	chi	%r0, 0
	je	.LBB121_5
	j	.LBB121_2
.LBB121_2:                              #   in Loop: Header=BB121_1 Depth=1
	llc	%r0, 175(%r11)
	tmll	%r0, 1
	je	.LBB121_4
	j	.LBB121_3
.LBB121_3:                              #   in Loop: Header=BB121_1 Depth=1
	l	%r1, 168(%r11)
	l	%r0, 164(%r11)
	ar	%r0, %r1
	st	%r0, 164(%r11)
	j	.LBB121_4
.LBB121_4:                              #   in Loop: Header=BB121_1 Depth=1
	l	%r0, 172(%r11)
	srl	%r0, 1
	st	%r0, 172(%r11)
	l	%r0, 168(%r11)
	sll	%r0, 1
	st	%r0, 168(%r11)
	j	.LBB121_1
.LBB121_5:
	llgf	%r2, 164(%r11)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end121:
	.size	__mulsi3_iq2000, .Lfunc_end121-__mulsi3_iq2000
	.cfi_endproc
                                        # -- End function
	.globl	__mulsi3_lm32                   # -- Begin function __mulsi3_lm32
	.p2align	4
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          # @__mulsi3_lm32
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	lr	%r1, %r2
	st	%r1, 168(%r11)
	st	%r0, 164(%r11)
	mvhi	160(%r11), 0
	l	%r0, 168(%r11)
	chi	%r0, 0
	jlh	.LBB122_2
	j	.LBB122_1
.LBB122_1:
	mvhi	172(%r11), 0
	j	.LBB122_8
.LBB122_2:
	j	.LBB122_3
.LBB122_3:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 164(%r11)
	chi	%r0, 0
	je	.LBB122_7
	j	.LBB122_4
.LBB122_4:                              #   in Loop: Header=BB122_3 Depth=1
	llc	%r0, 167(%r11)
	tmll	%r0, 1
	je	.LBB122_6
	j	.LBB122_5
.LBB122_5:                              #   in Loop: Header=BB122_3 Depth=1
	l	%r1, 168(%r11)
	l	%r0, 160(%r11)
	ar	%r0, %r1
	st	%r0, 160(%r11)
	j	.LBB122_6
.LBB122_6:                              #   in Loop: Header=BB122_3 Depth=1
	l	%r0, 168(%r11)
	sll	%r0, 1
	st	%r0, 168(%r11)
	l	%r0, 164(%r11)
	srl	%r0, 1
	st	%r0, 164(%r11)
	j	.LBB122_3
.LBB122_7:
	l	%r0, 160(%r11)
	st	%r0, 172(%r11)
	j	.LBB122_8
.LBB122_8:
	llgf	%r2, 172(%r11)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end122:
	.size	__mulsi3_lm32, .Lfunc_end122-__mulsi3_lm32
	.cfi_endproc
                                        # -- End function
	.globl	__udivmodsi4                    # -- Begin function __udivmodsi4
	.p2align	4
	.type	__udivmodsi4,@function
__udivmodsi4:                           # @__udivmodsi4
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r4
	lr	%r1, %r3
                                        # kill: def $r2l killed $r2l killed $r2d
	st	%r2, 184(%r11)
	st	%r1, 180(%r11)
	st	%r0, 176(%r11)
	mvhi	172(%r11), 1
	mvhi	168(%r11), 0
	j	.LBB123_1
.LBB123_1:                              # =>This Inner Loop Header: Depth=1
	l	%r1, 180(%r11)
	l	%r2, 184(%r11)
	lhi	%r0, 0
	clr	%r1, %r2
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jhe	.LBB123_4
	j	.LBB123_2
.LBB123_2:                              #   in Loop: Header=BB123_1 Depth=1
	l	%r1, 172(%r11)
	lhi	%r0, 0
	chi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB123_4
	j	.LBB123_3
.LBB123_3:                              #   in Loop: Header=BB123_1 Depth=1
	l	%r0, 180(%r11)
	chi	%r0, 0
	ipm	%r0
	xilf	%r0, 4294967295
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 63, 191, 36
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB123_4
.LBB123_4:                              #   in Loop: Header=BB123_1 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB123_6
	j	.LBB123_5
.LBB123_5:                              #   in Loop: Header=BB123_1 Depth=1
	l	%r0, 180(%r11)
	sll	%r0, 1
	st	%r0, 180(%r11)
	l	%r0, 172(%r11)
	sll	%r0, 1
	st	%r0, 172(%r11)
	j	.LBB123_1
.LBB123_6:
	j	.LBB123_7
.LBB123_7:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 172(%r11)
	chi	%r0, 0
	je	.LBB123_11
	j	.LBB123_8
.LBB123_8:                              #   in Loop: Header=BB123_7 Depth=1
	l	%r0, 184(%r11)
	l	%r1, 180(%r11)
	clr	%r0, %r1
	jl	.LBB123_10
	j	.LBB123_9
.LBB123_9:                              #   in Loop: Header=BB123_7 Depth=1
	l	%r1, 180(%r11)
	l	%r0, 184(%r11)
	sr	%r0, %r1
	st	%r0, 184(%r11)
	l	%r1, 172(%r11)
	l	%r0, 168(%r11)
	or	%r0, %r1
	st	%r0, 168(%r11)
	j	.LBB123_10
.LBB123_10:                             #   in Loop: Header=BB123_7 Depth=1
	l	%r0, 172(%r11)
	srl	%r0, 1
	st	%r0, 172(%r11)
	l	%r0, 180(%r11)
	srl	%r0, 1
	st	%r0, 180(%r11)
	j	.LBB123_7
.LBB123_11:
	l	%r0, 176(%r11)
	chi	%r0, 0
	je	.LBB123_13
	j	.LBB123_12
.LBB123_12:
	l	%r0, 184(%r11)
	st	%r0, 188(%r11)
	j	.LBB123_14
.LBB123_13:
	l	%r0, 168(%r11)
	st	%r0, 188(%r11)
	j	.LBB123_14
.LBB123_14:
	llgf	%r2, 188(%r11)
	lmg	%r11, %r15, 280(%r11)
	br	%r14
.Lfunc_end123:
	.size	__udivmodsi4, .Lfunc_end123-__udivmodsi4
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_cmpf                   # -- Begin function __mspabi_cmpf
	.p2align	4
	.type	__mspabi_cmpf,@function
__mspabi_cmpf:                          # @__mspabi_cmpf
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
                                        # kill: def $r0l killed $r3l
                                        # kill: def $r0l killed $r2l
	st	%r2, 168(%r11)
	st	%r3, 164(%r11)
	llgf	%r2, 168(%r11)
	llgf	%r3, 164(%r11)
	brasl	%r14, __ltsf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jhe	.LBB124_2
	j	.LBB124_1
.LBB124_1:
	mvhi	172(%r11), -1
	j	.LBB124_5
.LBB124_2:
	llgf	%r2, 168(%r11)
	llgf	%r3, 164(%r11)
	brasl	%r14, __gtsf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jle	.LBB124_4
	j	.LBB124_3
.LBB124_3:
	mvhi	172(%r11), 1
	j	.LBB124_5
.LBB124_4:
	mvhi	172(%r11), 0
	j	.LBB124_5
.LBB124_5:
	lgf	%r2, 172(%r11)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end124:
	.size	__mspabi_cmpf, .Lfunc_end124-__mspabi_cmpf
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_cmpd                   # -- Begin function __mspabi_cmpd
	.p2align	4
	.type	__mspabi_cmpd,@function
__mspabi_cmpd:                          # @__mspabi_cmpd
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -184
	.cfi_def_cfa_offset 344
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
                                        # kill: def $r0d killed $r3d
                                        # kill: def $r0d killed $r2d
	stg	%r2, 168(%r11)
	stg	%r3, 160(%r11)
	lg	%r2, 168(%r11)
	lg	%r3, 160(%r11)
	brasl	%r14, __ltdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jhe	.LBB125_2
	j	.LBB125_1
.LBB125_1:
	mvhi	180(%r11), -1
	j	.LBB125_5
.LBB125_2:
	lg	%r2, 168(%r11)
	lg	%r3, 160(%r11)
	brasl	%r14, __gtdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jle	.LBB125_4
	j	.LBB125_3
.LBB125_3:
	mvhi	180(%r11), 1
	j	.LBB125_5
.LBB125_4:
	mvhi	180(%r11), 0
	j	.LBB125_5
.LBB125_5:
	lgf	%r2, 180(%r11)
	lmg	%r11, %r15, 272(%r11)
	br	%r14
.Lfunc_end125:
	.size	__mspabi_cmpd, .Lfunc_end125-__mspabi_cmpd
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_mpysll                 # -- Begin function __mspabi_mpysll
	.p2align	4
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        # @__mspabi_mpysll
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 168(%r11)
	stg	%r3, 160(%r11)
	lg	%r2, 168(%r11)
	lg	%r0, 160(%r11)
	msgr	%r2, %r0
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end126:
	.size	__mspabi_mpysll, .Lfunc_end126-__mspabi_mpysll
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_mpyull                 # -- Begin function __mspabi_mpyull
	.p2align	4
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        # @__mspabi_mpyull
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 168(%r11)
	stg	%r3, 160(%r11)
	lg	%r2, 168(%r11)
	lg	%r0, 160(%r11)
	msgr	%r2, %r0
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end127:
	.size	__mspabi_mpyull, .Lfunc_end127-__mspabi_mpyull
	.cfi_endproc
                                        # -- End function
	.globl	__mulhi3                        # -- Begin function __mulhi3
	.p2align	4
	.type	__mulhi3,@function
__mulhi3:                               # @__mulhi3
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	lr	%r1, %r2
	st	%r1, 188(%r11)
	st	%r0, 184(%r11)
	mvhi	176(%r11), 0
	mvhi	172(%r11), 0
	l	%r0, 184(%r11)
	chi	%r0, 0
	jhe	.LBB128_2
	j	.LBB128_1
.LBB128_1:
	l	%r0, 184(%r11)
	lcr	%r0, %r0
	st	%r0, 184(%r11)
	mvhi	176(%r11), 1
	j	.LBB128_2
.LBB128_2:
	mvi	183(%r11), 0
	j	.LBB128_3
.LBB128_3:                              # =>This Inner Loop Header: Depth=1
	l	%r1, 184(%r11)
	lhi	%r0, 0
	chi	%r1, 0
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	je	.LBB128_5
	j	.LBB128_4
.LBB128_4:                              #   in Loop: Header=BB128_3 Depth=1
	llc	%r0, 183(%r11)
	chi	%r0, 32
	ipm	%r0
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 63, 191, 36
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	j	.LBB128_5
.LBB128_5:                              #   in Loop: Header=BB128_3 Depth=1
	l	%r0, 168(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB128_10
	j	.LBB128_6
.LBB128_6:                              #   in Loop: Header=BB128_3 Depth=1
	llc	%r0, 187(%r11)
	tmll	%r0, 1
	je	.LBB128_8
	j	.LBB128_7
.LBB128_7:                              #   in Loop: Header=BB128_3 Depth=1
	l	%r1, 188(%r11)
	l	%r0, 172(%r11)
	ar	%r0, %r1
	st	%r0, 172(%r11)
	j	.LBB128_8
.LBB128_8:                              #   in Loop: Header=BB128_3 Depth=1
	l	%r0, 188(%r11)
	sll	%r0, 1
	st	%r0, 188(%r11)
	l	%r0, 184(%r11)
	sra	%r0, 1
	st	%r0, 184(%r11)
	j	.LBB128_9
.LBB128_9:                              #   in Loop: Header=BB128_3 Depth=1
	lb	%r0, 183(%r11)
	ahi	%r0, 1
	stc	%r0, 183(%r11)
	j	.LBB128_3
.LBB128_10:
	l	%r0, 176(%r11)
	chi	%r0, 0
	je	.LBB128_12
	j	.LBB128_11
.LBB128_11:
	l	%r0, 172(%r11)
	lcr	%r0, %r0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB128_13
.LBB128_12:
	l	%r0, 172(%r11)
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB128_13
.LBB128_13:
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	lgfr	%r2, %r0
	lmg	%r11, %r15, 280(%r11)
	br	%r14
.Lfunc_end128:
	.size	__mulhi3, .Lfunc_end128-__mulhi3
	.cfi_endproc
                                        # -- End function
	.globl	__divsi3                        # -- Begin function __divsi3
	.p2align	4
	.type	__divsi3,@function
__divsi3:                               # @__divsi3
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 184(%r11)
	stg	%r3, 176(%r11)
	mvhi	172(%r11), 0
	lg	%r0, 184(%r11)
	cghi	%r0, 0
	jhe	.LBB129_2
	j	.LBB129_1
.LBB129_1:
	lg	%r0, 184(%r11)
	lcgr	%r0, %r0
	stg	%r0, 184(%r11)
	l	%r0, 172(%r11)
	chi	%r0, 0
	ipm	%r0
	afi	%r0, -268435456
	srl	%r0, 31
	st	%r0, 172(%r11)
	j	.LBB129_2
.LBB129_2:
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	jhe	.LBB129_4
	j	.LBB129_3
.LBB129_3:
	lg	%r0, 176(%r11)
	lcgr	%r0, %r0
	stg	%r0, 176(%r11)
	l	%r0, 172(%r11)
	chi	%r0, 0
	ipm	%r0
	afi	%r0, -268435456
	srl	%r0, 31
	st	%r0, 172(%r11)
	j	.LBB129_4
.LBB129_4:
	llgf	%r2, 188(%r11)
	llgf	%r3, 180(%r11)
	lghi	%r4, 0
	brasl	%r14, __udivmodsi4@PLT
	stg	%r2, 160(%r11)
	l	%r0, 172(%r11)
	chi	%r0, 0
	je	.LBB129_6
	j	.LBB129_5
.LBB129_5:
	lg	%r0, 160(%r11)
	lcgr	%r0, %r0
	stg	%r0, 160(%r11)
	j	.LBB129_6
.LBB129_6:
	lg	%r2, 160(%r11)
	lmg	%r11, %r15, 280(%r11)
	br	%r14
.Lfunc_end129:
	.size	__divsi3, .Lfunc_end129-__divsi3
	.cfi_endproc
                                        # -- End function
	.globl	__modsi3                        # -- Begin function __modsi3
	.p2align	4
	.type	__modsi3,@function
__modsi3:                               # @__modsi3
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 184(%r11)
	stg	%r3, 176(%r11)
	mvhi	172(%r11), 0
	lg	%r0, 184(%r11)
	cghi	%r0, 0
	jhe	.LBB130_2
	j	.LBB130_1
.LBB130_1:
	lg	%r0, 184(%r11)
	lcgr	%r0, %r0
	stg	%r0, 184(%r11)
	mvhi	172(%r11), 1
	j	.LBB130_2
.LBB130_2:
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	jhe	.LBB130_4
	j	.LBB130_3
.LBB130_3:
	lg	%r0, 176(%r11)
	lcgr	%r0, %r0
	stg	%r0, 176(%r11)
	j	.LBB130_4
.LBB130_4:
	llgf	%r2, 188(%r11)
	llgf	%r3, 180(%r11)
	lghi	%r4, 1
	brasl	%r14, __udivmodsi4@PLT
	stg	%r2, 160(%r11)
	l	%r0, 172(%r11)
	chi	%r0, 0
	je	.LBB130_6
	j	.LBB130_5
.LBB130_5:
	lg	%r0, 160(%r11)
	lcgr	%r0, %r0
	stg	%r0, 160(%r11)
	j	.LBB130_6
.LBB130_6:
	lg	%r2, 160(%r11)
	lmg	%r11, %r15, 280(%r11)
	br	%r14
.Lfunc_end130:
	.size	__modsi3, .Lfunc_end130-__modsi3
	.cfi_endproc
                                        # -- End function
	.globl	__udivmodhi4                    # -- Begin function __udivmodhi4
	.p2align	4
	.type	__udivmodhi4,@function
__udivmodhi4:                           # @__udivmodhi4
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -184
	.cfi_def_cfa_offset 344
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r4
	lr	%r1, %r3
                                        # kill: def $r2l killed $r2l killed $r2d
	sth	%r2, 180(%r11)
	sth	%r1, 178(%r11)
	st	%r0, 172(%r11)
	mvhhi	170(%r11), 1
	mvhhi	168(%r11), 0
	j	.LBB131_1
.LBB131_1:                              # =>This Inner Loop Header: Depth=1
	llh	%r1, 178(%r11)
	llh	%r2, 180(%r11)
	lhi	%r0, 0
	cr	%r1, %r2
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jhe	.LBB131_4
	j	.LBB131_2
.LBB131_2:                              #   in Loop: Header=BB131_1 Depth=1
	llh	%r1, 170(%r11)
	lhi	%r0, 0
	chi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB131_4
	j	.LBB131_3
.LBB131_3:                              #   in Loop: Header=BB131_1 Depth=1
	llh	%r0, 178(%r11)
	tmll	%r0, 32768
	ipm	%r0
	afi	%r0, -268435456
	srl	%r0, 31
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB131_4
.LBB131_4:                              #   in Loop: Header=BB131_1 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB131_6
	j	.LBB131_5
.LBB131_5:                              #   in Loop: Header=BB131_1 Depth=1
	lh	%r0, 178(%r11)
	sll	%r0, 1
	sth	%r0, 178(%r11)
	lh	%r0, 170(%r11)
	sll	%r0, 1
	sth	%r0, 170(%r11)
	j	.LBB131_1
.LBB131_6:
	j	.LBB131_7
.LBB131_7:                              # =>This Inner Loop Header: Depth=1
	llh	%r0, 170(%r11)
	chi	%r0, 0
	je	.LBB131_11
	j	.LBB131_8
.LBB131_8:                              #   in Loop: Header=BB131_7 Depth=1
	llh	%r0, 180(%r11)
	llh	%r1, 178(%r11)
	cr	%r0, %r1
	jl	.LBB131_10
	j	.LBB131_9
.LBB131_9:                              #   in Loop: Header=BB131_7 Depth=1
	lh	%r1, 178(%r11)
	lh	%r0, 180(%r11)
	sr	%r0, %r1
	sth	%r0, 180(%r11)
	lh	%r1, 170(%r11)
	lh	%r0, 168(%r11)
	or	%r0, %r1
	sth	%r0, 168(%r11)
	j	.LBB131_10
.LBB131_10:                             #   in Loop: Header=BB131_7 Depth=1
	llh	%r0, 170(%r11)
	srl	%r0, 1
	sth	%r0, 170(%r11)
	llh	%r0, 178(%r11)
	srl	%r0, 1
	sth	%r0, 178(%r11)
	j	.LBB131_7
.LBB131_11:
	l	%r0, 172(%r11)
	chi	%r0, 0
	je	.LBB131_13
	j	.LBB131_12
.LBB131_12:
	lh	%r0, 180(%r11)
	sth	%r0, 182(%r11)
	j	.LBB131_14
.LBB131_13:
	lh	%r0, 168(%r11)
	sth	%r0, 182(%r11)
	j	.LBB131_14
.LBB131_14:
	llgh	%r2, 182(%r11)
	lmg	%r11, %r15, 272(%r11)
	br	%r14
.Lfunc_end131:
	.size	__udivmodhi4, .Lfunc_end131-__udivmodhi4
	.cfi_endproc
                                        # -- End function
	.globl	__udivmodsi4_libgcc             # -- Begin function __udivmodsi4_libgcc
	.p2align	4
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    # @__udivmodsi4_libgcc
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -216
	.cfi_def_cfa_offset 376
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r4
	stg	%r2, 200(%r11)
	stg	%r3, 192(%r11)
	st	%r0, 188(%r11)
	mvghi	176(%r11), 1
	mvghi	168(%r11), 0
	j	.LBB132_1
.LBB132_1:                              # =>This Inner Loop Header: Depth=1
	lg	%r1, 192(%r11)
	lg	%r2, 200(%r11)
	lhi	%r0, 0
	clgr	%r1, %r2
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jhe	.LBB132_4
	j	.LBB132_2
.LBB132_2:                              #   in Loop: Header=BB132_1 Depth=1
	lg	%r1, 176(%r11)
	lhi	%r0, 0
	cghi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB132_4
	j	.LBB132_3
.LBB132_3:                              #   in Loop: Header=BB132_1 Depth=1
	llc	%r0, 196(%r11)
	tmll	%r0, 128
	ipm	%r0
	afi	%r0, -268435456
	srl	%r0, 31
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB132_4
.LBB132_4:                              #   in Loop: Header=BB132_1 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB132_6
	j	.LBB132_5
.LBB132_5:                              #   in Loop: Header=BB132_1 Depth=1
	lg	%r0, 192(%r11)
	sllg	%r0, %r0, 1
	stg	%r0, 192(%r11)
	lg	%r0, 176(%r11)
	sllg	%r0, %r0, 1
	stg	%r0, 176(%r11)
	j	.LBB132_1
.LBB132_6:
	j	.LBB132_7
.LBB132_7:                              # =>This Inner Loop Header: Depth=1
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB132_11
	j	.LBB132_8
.LBB132_8:                              #   in Loop: Header=BB132_7 Depth=1
	lg	%r0, 200(%r11)
	lg	%r1, 192(%r11)
	clgr	%r0, %r1
	jl	.LBB132_10
	j	.LBB132_9
.LBB132_9:                              #   in Loop: Header=BB132_7 Depth=1
	lg	%r1, 192(%r11)
	lg	%r0, 200(%r11)
	sgr	%r0, %r1
	stg	%r0, 200(%r11)
	lg	%r1, 176(%r11)
	lg	%r0, 168(%r11)
	ogr	%r0, %r1
	stg	%r0, 168(%r11)
	j	.LBB132_10
.LBB132_10:                             #   in Loop: Header=BB132_7 Depth=1
	lg	%r0, 176(%r11)
	srlg	%r0, %r0, 1
	stg	%r0, 176(%r11)
	lg	%r0, 192(%r11)
	srlg	%r0, %r0, 1
	stg	%r0, 192(%r11)
	j	.LBB132_7
.LBB132_11:
	l	%r0, 188(%r11)
	chi	%r0, 0
	je	.LBB132_13
	j	.LBB132_12
.LBB132_12:
	lg	%r0, 200(%r11)
	stg	%r0, 208(%r11)
	j	.LBB132_14
.LBB132_13:
	lg	%r0, 168(%r11)
	stg	%r0, 208(%r11)
	j	.LBB132_14
.LBB132_14:
	lg	%r2, 208(%r11)
	lmg	%r11, %r15, 304(%r11)
	br	%r14
.Lfunc_end132:
	.size	__udivmodsi4_libgcc, .Lfunc_end132-__udivmodsi4_libgcc
	.cfi_endproc
                                        # -- End function
	.globl	__ashldi3                       # -- Begin function __ashldi3
	.p2align	4
	.type	__ashldi3,@function
__ashldi3:                              # @__ashldi3
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	stg	%r2, 184(%r11)
	st	%r0, 180(%r11)
	mvhi	176(%r11), 32
	lg	%r0, 184(%r11)
	stg	%r0, 168(%r11)
	llc	%r0, 183(%r11)
	tmll	%r0, 32
	je	.LBB133_2
	j	.LBB133_1
.LBB133_1:
	mvhi	164(%r11), 0
	l	%r0, 172(%r11)
	l	%r1, 180(%r11)
	ahi	%r1, -32
	sll	%r0, 0(%r1)
	st	%r0, 160(%r11)
	j	.LBB133_5
.LBB133_2:
	l	%r0, 180(%r11)
	chi	%r0, 0
	jlh	.LBB133_4
	j	.LBB133_3
.LBB133_3:
	lg	%r0, 184(%r11)
	stg	%r0, 192(%r11)
	j	.LBB133_6
.LBB133_4:
	l	%r0, 172(%r11)
	l	%r1, 180(%r11)
	sll	%r0, 0(%r1)
	st	%r0, 164(%r11)
	l	%r0, 168(%r11)
	l	%r3, 180(%r11)
	sll	%r0, 0(%r3)
	l	%r1, 172(%r11)
	lhi	%r2, 32
	sr	%r2, %r3
	srl	%r1, 0(%r2)
	or	%r0, %r1
	st	%r0, 160(%r11)
	j	.LBB133_5
.LBB133_5:
	lg	%r0, 160(%r11)
	stg	%r0, 192(%r11)
	j	.LBB133_6
.LBB133_6:
	lg	%r2, 192(%r11)
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end133:
	.size	__ashldi3, .Lfunc_end133-__ashldi3
	.cfi_endproc
                                        # -- End function
	.globl	__ashlti3                       # -- Begin function __ashlti3
	.p2align	4
	.type	__ashlti3,@function
__ashlti3:                              # @__ashlti3
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -224
	.cfi_def_cfa_offset 384
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 160(%r11)                  # 8-byte Folded Spill
	lr	%r0, %r4
	lg	%r1, 0(%r3)
	lg	%r2, 8(%r3)
	stg	%r2, 216(%r11)
	stg	%r1, 208(%r11)
	st	%r0, 204(%r11)
	mvhi	200(%r11), 64
	lg	%r0, 208(%r11)
	lg	%r1, 216(%r11)
	stg	%r1, 192(%r11)
	stg	%r0, 184(%r11)
	llc	%r0, 207(%r11)
	tmll	%r0, 64
	je	.LBB134_2
	j	.LBB134_1
.LBB134_1:
	mvghi	176(%r11), 0
	lg	%r0, 192(%r11)
	l	%r1, 204(%r11)
	sllg	%r0, %r0, -64(%r1)
	stg	%r0, 168(%r11)
	j	.LBB134_5
.LBB134_2:
	l	%r0, 204(%r11)
	chi	%r0, 0
	jlh	.LBB134_4
	j	.LBB134_3
.LBB134_3:
	lg	%r1, 160(%r11)                  # 8-byte Folded Reload
	lg	%r0, 208(%r11)
	lg	%r2, 216(%r11)
	stg	%r2, 8(%r1)
	stg	%r0, 0(%r1)
	j	.LBB134_6
.LBB134_4:
	lg	%r0, 192(%r11)
	l	%r1, 204(%r11)
	sllg	%r0, %r0, 0(%r1)
	stg	%r0, 176(%r11)
	lg	%r0, 184(%r11)
	l	%r2, 204(%r11)
	sllg	%r0, %r0, 0(%r2)
	lg	%r1, 192(%r11)
	lcr	%r2, %r2
	srlg	%r1, %r1, 0(%r2)
	ogr	%r0, %r1
	stg	%r0, 168(%r11)
	j	.LBB134_5
.LBB134_5:
	lg	%r1, 160(%r11)                  # 8-byte Folded Reload
	lg	%r0, 168(%r11)
	lg	%r2, 176(%r11)
	stg	%r2, 8(%r1)
	stg	%r0, 0(%r1)
	j	.LBB134_6
.LBB134_6:
	lmg	%r11, %r15, 312(%r11)
	br	%r14
.Lfunc_end134:
	.size	__ashlti3, .Lfunc_end134-__ashlti3
	.cfi_endproc
                                        # -- End function
	.globl	__ashrdi3                       # -- Begin function __ashrdi3
	.p2align	4
	.type	__ashrdi3,@function
__ashrdi3:                              # @__ashrdi3
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	stg	%r2, 184(%r11)
	st	%r0, 180(%r11)
	mvhi	176(%r11), 32
	lg	%r0, 184(%r11)
	stg	%r0, 168(%r11)
	llc	%r0, 183(%r11)
	tmll	%r0, 32
	je	.LBB135_2
	j	.LBB135_1
.LBB135_1:
	l	%r0, 168(%r11)
	sra	%r0, 31
	st	%r0, 160(%r11)
	l	%r0, 168(%r11)
	l	%r1, 180(%r11)
	ahi	%r1, -32
	sra	%r0, 0(%r1)
	st	%r0, 164(%r11)
	j	.LBB135_5
.LBB135_2:
	l	%r0, 180(%r11)
	chi	%r0, 0
	jlh	.LBB135_4
	j	.LBB135_3
.LBB135_3:
	lg	%r0, 184(%r11)
	stg	%r0, 192(%r11)
	j	.LBB135_6
.LBB135_4:
	l	%r0, 168(%r11)
	l	%r1, 180(%r11)
	sra	%r0, 0(%r1)
	st	%r0, 160(%r11)
	l	%r0, 168(%r11)
	l	%r2, 180(%r11)
	lhi	%r1, 32
	sr	%r1, %r2
	sll	%r0, 0(%r1)
	l	%r1, 172(%r11)
	srl	%r1, 0(%r2)
	or	%r0, %r1
	st	%r0, 164(%r11)
	j	.LBB135_5
.LBB135_5:
	lg	%r0, 160(%r11)
	stg	%r0, 192(%r11)
	j	.LBB135_6
.LBB135_6:
	lg	%r2, 192(%r11)
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end135:
	.size	__ashrdi3, .Lfunc_end135-__ashrdi3
	.cfi_endproc
                                        # -- End function
	.globl	__ashrti3                       # -- Begin function __ashrti3
	.p2align	4
	.type	__ashrti3,@function
__ashrti3:                              # @__ashrti3
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -224
	.cfi_def_cfa_offset 384
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 160(%r11)                  # 8-byte Folded Spill
	lr	%r0, %r4
	lg	%r1, 0(%r3)
	lg	%r2, 8(%r3)
	stg	%r2, 216(%r11)
	stg	%r1, 208(%r11)
	st	%r0, 204(%r11)
	mvhi	200(%r11), 64
	lg	%r0, 208(%r11)
	lg	%r1, 216(%r11)
	stg	%r1, 192(%r11)
	stg	%r0, 184(%r11)
	llc	%r0, 207(%r11)
	tmll	%r0, 64
	je	.LBB136_2
	j	.LBB136_1
.LBB136_1:
	lg	%r0, 184(%r11)
	srag	%r0, %r0, 63
	stg	%r0, 168(%r11)
	lg	%r0, 184(%r11)
	l	%r1, 204(%r11)
	srag	%r0, %r0, -64(%r1)
	stg	%r0, 176(%r11)
	j	.LBB136_5
.LBB136_2:
	l	%r0, 204(%r11)
	chi	%r0, 0
	jlh	.LBB136_4
	j	.LBB136_3
.LBB136_3:
	lg	%r1, 160(%r11)                  # 8-byte Folded Reload
	lg	%r0, 208(%r11)
	lg	%r2, 216(%r11)
	stg	%r2, 8(%r1)
	stg	%r0, 0(%r1)
	j	.LBB136_6
.LBB136_4:
	lg	%r0, 184(%r11)
	l	%r1, 204(%r11)
	srag	%r0, %r0, 0(%r1)
	stg	%r0, 168(%r11)
	lg	%r0, 184(%r11)
	l	%r2, 204(%r11)
	lcr	%r1, %r2
	sllg	%r0, %r0, 0(%r1)
	lg	%r1, 192(%r11)
	srlg	%r1, %r1, 0(%r2)
	ogr	%r0, %r1
	stg	%r0, 176(%r11)
	j	.LBB136_5
.LBB136_5:
	lg	%r1, 160(%r11)                  # 8-byte Folded Reload
	lg	%r0, 168(%r11)
	lg	%r2, 176(%r11)
	stg	%r2, 8(%r1)
	stg	%r0, 0(%r1)
	j	.LBB136_6
.LBB136_6:
	lmg	%r11, %r15, 312(%r11)
	br	%r14
.Lfunc_end136:
	.size	__ashrti3, .Lfunc_end136-__ashrti3
	.cfi_endproc
                                        # -- End function
	.globl	__bswapdi2                      # -- Begin function __bswapdi2
	.p2align	4
	.type	__bswapdi2,@function
__bswapdi2:                             # @__bswapdi2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 160(%r11)
	lg	%r0, 160(%r11)
	srlg	%r1, %r0, 56
	rosbg	%r1, %r0, 48, 55, 24
	rosbg	%r1, %r0, 40, 47, 40
	rosbg	%r1, %r0, 32, 39, 56
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 24, 159, 8
                                        # kill: def $r1l killed $r1l killed $r1d
	lr	%r2, %r1
	rosbg	%r2, %r0, 16, 23, 24
	rosbg	%r2, %r0, 8, 15, 40
	rosbg	%r2, %r0, 0, 7, 56
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end137:
	.size	__bswapdi2, .Lfunc_end137-__bswapdi2
	.cfi_endproc
                                        # -- End function
	.globl	__bswapsi2                      # -- Begin function __bswapsi2
	.p2align	4
	.type	__bswapsi2,@function
__bswapsi2:                             # @__bswapsi2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	lr	%r2, %r0
	srl	%r2, 24
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	lr	%r0, %r2
	rosbg	%r0, %r1, 48, 55, 56
	lr	%r2, %r0
                                        # implicit-def: $r0d
	lr	%r0, %r2
	rosbg	%r0, %r1, 40, 47, 8
	lr	%r2, %r0
                                        # implicit-def: $r0d
	lr	%r0, %r2
	rosbg	%r0, %r1, 32, 39, 24
                                        # kill: def $r0l killed $r0l killed $r0d
	llgfr	%r2, %r0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end138:
	.size	__bswapsi2, .Lfunc_end138-__bswapsi2
	.cfi_endproc
                                        # -- End function
	.globl	__clzsi2                        # -- Begin function __clzsi2
	.p2align	4
	.type	__clzsi2,@function
__clzsi2:                               # @__clzsi2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 172(%r11)
	l	%r0, 172(%r11)
	st	%r0, 168(%r11)
	llh	%r0, 168(%r11)
	sll	%r0, 16
	chi	%r0, 0
	ipm	%r0
	afi	%r0, -268435456
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 59, 187, 37
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	lhi	%r1, 16
	sr	%r1, %r0
	l	%r0, 168(%r11)
	srl	%r0, 0(%r1)
	st	%r0, 168(%r11)
	l	%r0, 164(%r11)
	st	%r0, 160(%r11)
	llc	%r0, 170(%r11)
	sll	%r0, 8
	chi	%r0, 0
	ipm	%r0
	afi	%r0, -268435456
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 60, 188, 36
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	lhi	%r1, 8
	sr	%r1, %r0
	l	%r0, 168(%r11)
	srl	%r0, 0(%r1)
	st	%r0, 168(%r11)
	l	%r1, 164(%r11)
	l	%r0, 160(%r11)
	ar	%r0, %r1
	st	%r0, 160(%r11)
	l	%r0, 168(%r11)
	tmll	%r0, 240
	ipm	%r0
	afi	%r0, -268435456
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 61, 189, 35
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	lhi	%r1, 4
	sr	%r1, %r0
	l	%r0, 168(%r11)
	srl	%r0, 0(%r1)
	st	%r0, 168(%r11)
	l	%r1, 164(%r11)
	l	%r0, 160(%r11)
	ar	%r0, %r1
	st	%r0, 160(%r11)
	l	%r0, 168(%r11)
	tmll	%r0, 12
	ipm	%r0
	afi	%r0, -268435456
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 62, 190, 34
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	lhi	%r1, 2
	lr	%r2, %r1
	sr	%r2, %r0
	l	%r0, 168(%r11)
	srl	%r0, 0(%r2)
	st	%r0, 168(%r11)
	l	%r2, 164(%r11)
	l	%r0, 160(%r11)
	ar	%r0, %r2
	st	%r0, 160(%r11)
	l	%r0, 160(%r11)
	l	%r2, 168(%r11)
	sr	%r1, %r2
	tmll	%r2, 2
	ipm	%r2
	afi	%r2, -268435456
	srl	%r2, 31
	lcr	%r2, %r2
	nr	%r1, %r2
	ar	%r0, %r1
	lgfr	%r2, %r0
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end139:
	.size	__clzsi2, .Lfunc_end139-__clzsi2
	.cfi_endproc
                                        # -- End function
	.globl	__clzti2                        # -- Begin function __clzti2
	.p2align	4
	.type	__clzti2,@function
__clzti2:                               # @__clzti2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lg	%r0, 0(%r2)
	lg	%r1, 8(%r2)
	stg	%r1, 192(%r11)
	stg	%r0, 184(%r11)
	lg	%r0, 184(%r11)
	lg	%r1, 192(%r11)
	stg	%r1, 176(%r11)
	stg	%r0, 168(%r11)
	lg	%r0, 168(%r11)
	cghi	%r0, 0
	ipm	%r0
	afi	%r0, -268435456
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 63, 191, 33
	lcgr	%r0, %r0
	stg	%r0, 160(%r11)
	lg	%r0, 168(%r11)
	lg	%r1, 160(%r11)
	lgr	%r2, %r0
	ngr	%r2, %r1
	xgr	%r0, %r2
	lg	%r2, 176(%r11)
	ngr	%r2, %r1
	ogr	%r0, %r2
	flogr	%r2, %r0
	lgr	%r0, %r2
                                        # kill: def $r0l killed $r0l killed $r0d
                                        # kill: def $r1l killed $r1l killed $r1d
	nilf	%r1, 64
	ar	%r0, %r1
	llgfr	%r2, %r0
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end140:
	.size	__clzti2, .Lfunc_end140-__clzti2
	.cfi_endproc
                                        # -- End function
	.globl	__cmpdi2                        # -- Begin function __cmpdi2
	.p2align	4
	.type	__cmpdi2,@function
__cmpdi2:                               # @__cmpdi2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 184(%r11)
	stg	%r3, 176(%r11)
	lg	%r0, 184(%r11)
	stg	%r0, 168(%r11)
	lg	%r0, 176(%r11)
	stg	%r0, 160(%r11)
	l	%r0, 168(%r11)
	l	%r1, 160(%r11)
	cr	%r0, %r1
	jhe	.LBB141_2
	j	.LBB141_1
.LBB141_1:
	mvhi	196(%r11), 0
	j	.LBB141_9
.LBB141_2:
	l	%r0, 168(%r11)
	l	%r1, 160(%r11)
	cr	%r0, %r1
	jle	.LBB141_4
	j	.LBB141_3
.LBB141_3:
	mvhi	196(%r11), 2
	j	.LBB141_9
.LBB141_4:
	l	%r0, 172(%r11)
	l	%r1, 164(%r11)
	clr	%r0, %r1
	jhe	.LBB141_6
	j	.LBB141_5
.LBB141_5:
	mvhi	196(%r11), 0
	j	.LBB141_9
.LBB141_6:
	l	%r0, 172(%r11)
	l	%r1, 164(%r11)
	clr	%r0, %r1
	jle	.LBB141_8
	j	.LBB141_7
.LBB141_7:
	mvhi	196(%r11), 2
	j	.LBB141_9
.LBB141_8:
	mvhi	196(%r11), 1
	j	.LBB141_9
.LBB141_9:
	lgf	%r2, 196(%r11)
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end141:
	.size	__cmpdi2, .Lfunc_end141-__cmpdi2
	.cfi_endproc
                                        # -- End function
	.globl	__aeabi_lcmp                    # -- Begin function __aeabi_lcmp
	.p2align	4
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           # @__aeabi_lcmp
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 168(%r11)
	stg	%r3, 160(%r11)
	lg	%r2, 168(%r11)
	lg	%r3, 160(%r11)
	brasl	%r14, __cmpdi2@PLT
	lr	%r0, %r2
	ahi	%r0, -1
	lgfr	%r2, %r0
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end142:
	.size	__aeabi_lcmp, .Lfunc_end142-__aeabi_lcmp
	.cfi_endproc
                                        # -- End function
	.globl	__cmpti2                        # -- Begin function __cmpti2
	.p2align	4
	.type	__cmpti2,@function
__cmpti2:                               # @__cmpti2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -232
	.cfi_def_cfa_offset 392
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lgr	%r1, %r3
	lgr	%r3, %r2
	lg	%r2, 0(%r3)
	lg	%r3, 8(%r3)
	lg	%r0, 0(%r1)
	lg	%r1, 8(%r1)
	stg	%r3, 216(%r11)
	stg	%r2, 208(%r11)
	stg	%r1, 200(%r11)
	stg	%r0, 192(%r11)
	lg	%r0, 208(%r11)
	lg	%r1, 216(%r11)
	stg	%r1, 184(%r11)
	stg	%r0, 176(%r11)
	lg	%r0, 192(%r11)
	lg	%r1, 200(%r11)
	stg	%r1, 168(%r11)
	stg	%r0, 160(%r11)
	lg	%r0, 176(%r11)
	lg	%r1, 160(%r11)
	cgr	%r0, %r1
	jhe	.LBB143_2
	j	.LBB143_1
.LBB143_1:
	mvhi	228(%r11), 0
	j	.LBB143_9
.LBB143_2:
	lg	%r0, 176(%r11)
	lg	%r1, 160(%r11)
	cgr	%r0, %r1
	jle	.LBB143_4
	j	.LBB143_3
.LBB143_3:
	mvhi	228(%r11), 2
	j	.LBB143_9
.LBB143_4:
	lg	%r0, 184(%r11)
	lg	%r1, 168(%r11)
	clgr	%r0, %r1
	jhe	.LBB143_6
	j	.LBB143_5
.LBB143_5:
	mvhi	228(%r11), 0
	j	.LBB143_9
.LBB143_6:
	lg	%r0, 184(%r11)
	lg	%r1, 168(%r11)
	clgr	%r0, %r1
	jle	.LBB143_8
	j	.LBB143_7
.LBB143_7:
	mvhi	228(%r11), 2
	j	.LBB143_9
.LBB143_8:
	mvhi	228(%r11), 1
	j	.LBB143_9
.LBB143_9:
	lgf	%r2, 228(%r11)
	lmg	%r11, %r15, 320(%r11)
	br	%r14
.Lfunc_end143:
	.size	__cmpti2, .Lfunc_end143-__cmpti2
	.cfi_endproc
                                        # -- End function
	.globl	__ctzsi2                        # -- Begin function __ctzsi2
	.p2align	4
	.type	__ctzsi2,@function
__ctzsi2:                               # @__ctzsi2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 172(%r11)
	l	%r0, 172(%r11)
	st	%r0, 168(%r11)
	llh	%r0, 170(%r11)
	chi	%r0, 0
	ipm	%r0
	afi	%r0, -268435456
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 59, 187, 37
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	l	%r1, 164(%r11)
	l	%r0, 168(%r11)
	srl	%r0, 0(%r1)
	st	%r0, 168(%r11)
	l	%r0, 164(%r11)
	st	%r0, 160(%r11)
	llc	%r0, 171(%r11)
	chi	%r0, 0
	ipm	%r0
	afi	%r0, -268435456
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 60, 188, 36
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	l	%r1, 164(%r11)
	l	%r0, 168(%r11)
	srl	%r0, 0(%r1)
	st	%r0, 168(%r11)
	l	%r1, 164(%r11)
	l	%r0, 160(%r11)
	ar	%r0, %r1
	st	%r0, 160(%r11)
	l	%r0, 168(%r11)
	tmll	%r0, 15
	ipm	%r0
	afi	%r0, -268435456
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 61, 189, 35
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	l	%r1, 164(%r11)
	l	%r0, 168(%r11)
	srl	%r0, 0(%r1)
	st	%r0, 168(%r11)
	l	%r1, 164(%r11)
	l	%r0, 160(%r11)
	ar	%r0, %r1
	st	%r0, 160(%r11)
	l	%r0, 168(%r11)
	tmll	%r0, 3
	ipm	%r0
	afi	%r0, -268435456
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 62, 190, 34
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	l	%r1, 164(%r11)
	l	%r0, 168(%r11)
	srl	%r0, 0(%r1)
	st	%r0, 168(%r11)
	l	%r0, 168(%r11)
	nilf	%r0, 3
	st	%r0, 168(%r11)
	l	%r1, 164(%r11)
	l	%r0, 160(%r11)
	ar	%r0, %r1
	st	%r0, 160(%r11)
	l	%r0, 160(%r11)
	l	%r2, 168(%r11)
	lr	%r3, %r2
	srl	%r3, 1
	lhi	%r1, 2
	sr	%r1, %r3
	nilf	%r2, 1
	ahi	%r2, -1
	nr	%r1, %r2
	ar	%r0, %r1
	lgfr	%r2, %r0
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end144:
	.size	__ctzsi2, .Lfunc_end144-__ctzsi2
	.cfi_endproc
                                        # -- End function
	.globl	__ctzti2                        # -- Begin function __ctzti2
	.p2align	4
	.type	__ctzti2,@function
__ctzti2:                               # @__ctzti2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lg	%r0, 0(%r2)
	lg	%r1, 8(%r2)
	stg	%r1, 192(%r11)
	stg	%r0, 184(%r11)
	lg	%r0, 184(%r11)
	lg	%r1, 192(%r11)
	stg	%r1, 176(%r11)
	stg	%r0, 168(%r11)
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	ipm	%r0
	afi	%r0, -268435456
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 63, 191, 33
	lcgr	%r0, %r0
	stg	%r0, 160(%r11)
	lg	%r3, 168(%r11)
	lg	%r1, 160(%r11)
	ngr	%r3, %r1
	lg	%r0, 176(%r11)
	lgr	%r2, %r0
	ngr	%r2, %r1
	xgr	%r0, %r2
	ogr	%r3, %r0
	lay	%r0, -1(%r3)
	lgr	%r2, %r0
	ngr	%r2, %r3
	xgr	%r0, %r2
	flogr	%r2, %r0
                                        # kill: def $r2d killed $r2d killed $r2q
	lghi	%r0, 64
	sgr	%r0, %r2
                                        # kill: def $r0l killed $r0l killed $r0d
                                        # kill: def $r1l killed $r1l killed $r1d
	nilf	%r1, 64
	ar	%r0, %r1
	llgfr	%r2, %r0
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end145:
	.size	__ctzti2, .Lfunc_end145-__ctzti2
	.cfi_endproc
                                        # -- End function
	.globl	__ffsti2                        # -- Begin function __ffsti2
	.p2align	4
	.type	__ffsti2,@function
__ffsti2:                               # @__ffsti2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lg	%r0, 0(%r2)
	lg	%r1, 8(%r2)
	stg	%r1, 184(%r11)
	stg	%r0, 176(%r11)
	lg	%r0, 176(%r11)
	lg	%r1, 184(%r11)
	stg	%r1, 168(%r11)
	stg	%r0, 160(%r11)
	lg	%r0, 168(%r11)
	cghi	%r0, 0
	jlh	.LBB146_4
	j	.LBB146_1
.LBB146_1:
	lg	%r0, 160(%r11)
	cghi	%r0, 0
	jlh	.LBB146_3
	j	.LBB146_2
.LBB146_2:
	mvhi	196(%r11), 0
	j	.LBB146_5
.LBB146_3:
	lg	%r2, 160(%r11)
	lay	%r0, -1(%r2)
	lgr	%r1, %r0
	ngr	%r1, %r2
	xgr	%r0, %r1
	flogr	%r0, %r0
	lgr	%r1, %r0
	lghi	%r0, 129
	sgr	%r0, %r1
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 196(%r11)
	j	.LBB146_5
.LBB146_4:
	lg	%r2, 168(%r11)
	lay	%r0, -1(%r2)
	lgr	%r1, %r0
	ngr	%r1, %r2
	xgr	%r0, %r1
	flogr	%r0, %r0
	lgr	%r1, %r0
	lghi	%r0, 64
	sgr	%r0, %r1
                                        # kill: def $r0l killed $r0l killed $r0d
	ahi	%r0, 1
	st	%r0, 196(%r11)
	j	.LBB146_5
.LBB146_5:
	lgf	%r2, 196(%r11)
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end146:
	.size	__ffsti2, .Lfunc_end146-__ffsti2
	.cfi_endproc
                                        # -- End function
	.globl	__lshrdi3                       # -- Begin function __lshrdi3
	.p2align	4
	.type	__lshrdi3,@function
__lshrdi3:                              # @__lshrdi3
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	stg	%r2, 184(%r11)
	st	%r0, 180(%r11)
	mvhi	176(%r11), 32
	lg	%r0, 184(%r11)
	stg	%r0, 168(%r11)
	llc	%r0, 183(%r11)
	tmll	%r0, 32
	je	.LBB147_2
	j	.LBB147_1
.LBB147_1:
	mvhi	160(%r11), 0
	l	%r0, 168(%r11)
	l	%r1, 180(%r11)
	ahi	%r1, -32
	srl	%r0, 0(%r1)
	st	%r0, 164(%r11)
	j	.LBB147_5
.LBB147_2:
	l	%r0, 180(%r11)
	chi	%r0, 0
	jlh	.LBB147_4
	j	.LBB147_3
.LBB147_3:
	lg	%r0, 184(%r11)
	stg	%r0, 192(%r11)
	j	.LBB147_6
.LBB147_4:
	l	%r0, 168(%r11)
	l	%r1, 180(%r11)
	srl	%r0, 0(%r1)
	st	%r0, 160(%r11)
	l	%r0, 168(%r11)
	l	%r2, 180(%r11)
	lhi	%r1, 32
	sr	%r1, %r2
	sll	%r0, 0(%r1)
	l	%r1, 172(%r11)
	srl	%r1, 0(%r2)
	or	%r0, %r1
	st	%r0, 164(%r11)
	j	.LBB147_5
.LBB147_5:
	lg	%r0, 160(%r11)
	stg	%r0, 192(%r11)
	j	.LBB147_6
.LBB147_6:
	lg	%r2, 192(%r11)
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end147:
	.size	__lshrdi3, .Lfunc_end147-__lshrdi3
	.cfi_endproc
                                        # -- End function
	.globl	__lshrti3                       # -- Begin function __lshrti3
	.p2align	4
	.type	__lshrti3,@function
__lshrti3:                              # @__lshrti3
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -224
	.cfi_def_cfa_offset 384
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 160(%r11)                  # 8-byte Folded Spill
	lr	%r0, %r4
	lg	%r1, 0(%r3)
	lg	%r2, 8(%r3)
	stg	%r2, 216(%r11)
	stg	%r1, 208(%r11)
	st	%r0, 204(%r11)
	mvhi	200(%r11), 64
	lg	%r0, 208(%r11)
	lg	%r1, 216(%r11)
	stg	%r1, 192(%r11)
	stg	%r0, 184(%r11)
	llc	%r0, 207(%r11)
	tmll	%r0, 64
	je	.LBB148_2
	j	.LBB148_1
.LBB148_1:
	mvghi	168(%r11), 0
	lg	%r0, 184(%r11)
	l	%r1, 204(%r11)
	srlg	%r0, %r0, -64(%r1)
	stg	%r0, 176(%r11)
	j	.LBB148_5
.LBB148_2:
	l	%r0, 204(%r11)
	chi	%r0, 0
	jlh	.LBB148_4
	j	.LBB148_3
.LBB148_3:
	lg	%r1, 160(%r11)                  # 8-byte Folded Reload
	lg	%r0, 208(%r11)
	lg	%r2, 216(%r11)
	stg	%r2, 8(%r1)
	stg	%r0, 0(%r1)
	j	.LBB148_6
.LBB148_4:
	lg	%r0, 184(%r11)
	l	%r1, 204(%r11)
	srlg	%r0, %r0, 0(%r1)
	stg	%r0, 168(%r11)
	lg	%r0, 184(%r11)
	l	%r2, 204(%r11)
	lcr	%r1, %r2
	sllg	%r0, %r0, 0(%r1)
	lg	%r1, 192(%r11)
	srlg	%r1, %r1, 0(%r2)
	ogr	%r0, %r1
	stg	%r0, 176(%r11)
	j	.LBB148_5
.LBB148_5:
	lg	%r1, 160(%r11)                  # 8-byte Folded Reload
	lg	%r0, 168(%r11)
	lg	%r2, 176(%r11)
	stg	%r2, 8(%r1)
	stg	%r0, 0(%r1)
	j	.LBB148_6
.LBB148_6:
	lmg	%r11, %r15, 312(%r11)
	br	%r14
.Lfunc_end148:
	.size	__lshrti3, .Lfunc_end148-__lshrti3
	.cfi_endproc
                                        # -- End function
	.globl	__muldsi3                       # -- Begin function __muldsi3
	.p2align	4
	.type	__muldsi3,@function
__muldsi3:                              # @__muldsi3
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	lr	%r1, %r2
	st	%r1, 188(%r11)
	st	%r0, 184(%r11)
	mvhi	172(%r11), 16
	iilf	%r0, 65535
	st	%r0, 168(%r11)
	llh	%r0, 190(%r11)
	llh	%r1, 186(%r11)
	msr	%r0, %r1
	st	%r0, 180(%r11)
	llh	%r0, 180(%r11)
	st	%r0, 164(%r11)
	llh	%r0, 182(%r11)
	st	%r0, 180(%r11)
	llh	%r1, 188(%r11)
	llh	%r0, 186(%r11)
	msr	%r1, %r0
	l	%r0, 164(%r11)
	ar	%r0, %r1
	st	%r0, 164(%r11)
	l	%r1, 164(%r11)
	sll	%r1, 16
	l	%r0, 180(%r11)
	ar	%r0, %r1
	st	%r0, 180(%r11)
	llh	%r0, 164(%r11)
	st	%r0, 176(%r11)
	llh	%r0, 180(%r11)
	st	%r0, 164(%r11)
	llh	%r0, 182(%r11)
	st	%r0, 180(%r11)
	llh	%r1, 184(%r11)
	llh	%r0, 190(%r11)
	msr	%r1, %r0
	l	%r0, 164(%r11)
	ar	%r0, %r1
	st	%r0, 164(%r11)
	l	%r1, 164(%r11)
	sll	%r1, 16
	l	%r0, 180(%r11)
	ar	%r0, %r1
	st	%r0, 180(%r11)
	llh	%r1, 164(%r11)
	l	%r0, 176(%r11)
	ar	%r0, %r1
	st	%r0, 176(%r11)
	llh	%r1, 188(%r11)
	llh	%r0, 184(%r11)
	msr	%r1, %r0
	l	%r0, 176(%r11)
	ar	%r0, %r1
	st	%r0, 176(%r11)
	lg	%r2, 176(%r11)
	lmg	%r11, %r15, 280(%r11)
	br	%r14
.Lfunc_end149:
	.size	__muldsi3, .Lfunc_end149-__muldsi3
	.cfi_endproc
                                        # -- End function
	.globl	__muldi3_compiler_rt            # -- Begin function __muldi3_compiler_rt
	.p2align	4
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   # @__muldi3_compiler_rt
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 192(%r11)
	stg	%r3, 184(%r11)
	lg	%r0, 192(%r11)
	stg	%r0, 176(%r11)
	lg	%r0, 184(%r11)
	stg	%r0, 168(%r11)
	llgf	%r2, 180(%r11)
	llgf	%r3, 172(%r11)
	brasl	%r14, __muldsi3@PLT
	stg	%r2, 160(%r11)
	l	%r1, 176(%r11)
	l	%r0, 172(%r11)
	msr	%r1, %r0
	l	%r0, 180(%r11)
	l	%r2, 168(%r11)
	msr	%r0, %r2
	ar	%r1, %r0
	l	%r0, 160(%r11)
	ar	%r0, %r1
	st	%r0, 160(%r11)
	lg	%r2, 160(%r11)
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end150:
	.size	__muldi3_compiler_rt, .Lfunc_end150-__muldi3_compiler_rt
	.cfi_endproc
                                        # -- End function
	.globl	__mulddi3                       # -- Begin function __mulddi3
	.p2align	4
	.type	__mulddi3,@function
__mulddi3:                              # @__mulddi3
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -216
	.cfi_def_cfa_offset 376
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r3, 208(%r11)
	stg	%r4, 200(%r11)
	mvhi	180(%r11), 32
	llilf	%r0, 4294967295
	stg	%r0, 168(%r11)
	llgf	%r0, 212(%r11)
	llgf	%r1, 204(%r11)
	msgr	%r0, %r1
	stg	%r0, 192(%r11)
	llgf	%r0, 192(%r11)
	stg	%r0, 160(%r11)
	llgf	%r0, 196(%r11)
	stg	%r0, 192(%r11)
	llgf	%r1, 208(%r11)
	llgf	%r0, 204(%r11)
	msgr	%r1, %r0
	lg	%r0, 160(%r11)
	agr	%r0, %r1
	stg	%r0, 160(%r11)
	lg	%r0, 160(%r11)
	sllg	%r1, %r0, 32
	lg	%r0, 192(%r11)
	agr	%r0, %r1
	stg	%r0, 192(%r11)
	llgf	%r0, 160(%r11)
	stg	%r0, 184(%r11)
	llgf	%r0, 192(%r11)
	stg	%r0, 160(%r11)
	llgf	%r0, 196(%r11)
	stg	%r0, 192(%r11)
	llgf	%r1, 200(%r11)
	llgf	%r0, 212(%r11)
	msgr	%r1, %r0
	lg	%r0, 160(%r11)
	agr	%r0, %r1
	stg	%r0, 160(%r11)
	lg	%r0, 160(%r11)
	sllg	%r1, %r0, 32
	lg	%r0, 192(%r11)
	agr	%r0, %r1
	stg	%r0, 192(%r11)
	llgf	%r3, 160(%r11)
	lg	%r1, 184(%r11)
	la	%r0, 0(%r3,%r1)
	stg	%r0, 184(%r11)
	llgf	%r1, 208(%r11)
	llgf	%r0, 200(%r11)
	msgr	%r1, %r0
	lg	%r0, 184(%r11)
	agr	%r0, %r1
	stg	%r0, 184(%r11)
	lg	%r0, 184(%r11)
	lg	%r1, 192(%r11)
	stg	%r1, 8(%r2)
	stg	%r0, 0(%r2)
	lmg	%r11, %r15, 304(%r11)
	br	%r14
.Lfunc_end151:
	.size	__mulddi3, .Lfunc_end151-__mulddi3
	.cfi_endproc
                                        # -- End function
	.globl	__multi3                        # -- Begin function __multi3
	.p2align	4
	.type	__multi3,@function
__multi3:                               # @__multi3
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -264
	.cfi_def_cfa_offset 424
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 160(%r11)                  # 8-byte Folded Spill
	lg	%r2, 0(%r3)
	lg	%r3, 8(%r3)
	lg	%r0, 0(%r4)
	lg	%r1, 8(%r4)
	stg	%r3, 256(%r11)
	stg	%r2, 248(%r11)
	stg	%r1, 240(%r11)
	stg	%r0, 232(%r11)
	lg	%r0, 248(%r11)
	lg	%r1, 256(%r11)
	stg	%r1, 224(%r11)
	stg	%r0, 216(%r11)
	lg	%r0, 232(%r11)
	lg	%r1, 240(%r11)
	stg	%r1, 208(%r11)
	stg	%r0, 200(%r11)
	lg	%r3, 224(%r11)
	lg	%r4, 208(%r11)
	la	%r2, 168(%r11)
	brasl	%r14, __mulddi3@PLT
	lg	%r2, 160(%r11)                  # 8-byte Folded Reload
	lg	%r0, 168(%r11)
	lg	%r1, 176(%r11)
	stg	%r1, 192(%r11)
	stg	%r0, 184(%r11)
	lg	%r1, 216(%r11)
	lg	%r0, 208(%r11)
	msgr	%r1, %r0
	lg	%r0, 224(%r11)
	lg	%r3, 200(%r11)
	msgr	%r0, %r3
	agr	%r1, %r0
	lg	%r0, 184(%r11)
	agr	%r0, %r1
	stg	%r0, 184(%r11)
	lg	%r0, 184(%r11)
	lg	%r1, 192(%r11)
	stg	%r1, 8(%r2)
	stg	%r0, 0(%r2)
	lmg	%r11, %r15, 352(%r11)
	br	%r14
.Lfunc_end152:
	.size	__multi3, .Lfunc_end152-__multi3
	.cfi_endproc
                                        # -- End function
	.globl	__negdi2                        # -- Begin function __negdi2
	.p2align	4
	.type	__negdi2,@function
__negdi2:                               # @__negdi2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 160(%r11)
	lg	%r0, 160(%r11)
	lcgr	%r2, %r0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end153:
	.size	__negdi2, .Lfunc_end153-__negdi2
	.cfi_endproc
                                        # -- End function
	.globl	__negti2                        # -- Begin function __negti2
	.p2align	4
	.type	__negti2,@function
__negti2:                               # @__negti2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lg	%r0, 0(%r3)
	lg	%r1, 8(%r3)
	stg	%r1, 168(%r11)
	stg	%r0, 160(%r11)
	lg	%r3, 160(%r11)
	lg	%r4, 168(%r11)
	lghi	%r0, 0
	lgr	%r1, %r0
	slgr	%r1, %r4
	slbgr	%r0, %r3
	stg	%r1, 8(%r2)
	stg	%r0, 0(%r2)
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end154:
	.size	__negti2, .Lfunc_end154-__negti2
	.cfi_endproc
                                        # -- End function
	.globl	__paritydi2                     # -- Begin function __paritydi2
	.p2align	4
	.type	__paritydi2,@function
__paritydi2:                            # @__paritydi2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -184
	.cfi_def_cfa_offset 344
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 176(%r11)
	lg	%r0, 176(%r11)
	stg	%r0, 168(%r11)
	l	%r0, 168(%r11)
	l	%r1, 172(%r11)
	xr	%r0, %r1
	st	%r0, 164(%r11)
	l	%r1, 164(%r11)
                                        # implicit-def: $r0d
	lr	%r0, %r1
	rxsbg	%r0, %r0, 48, 63, 48
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	l	%r1, 164(%r11)
                                        # implicit-def: $r0d
	lr	%r0, %r1
	rxsbg	%r0, %r0, 40, 63, 56
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	l	%r1, 164(%r11)
                                        # implicit-def: $r0d
	lr	%r0, %r1
	rxsbg	%r0, %r0, 36, 63, 60
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	l	%r2, 164(%r11)
	nill	%r2, 15
	lhi	%r1, 27030
	srl	%r1, 0(%r2)
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 0
	lmg	%r11, %r15, 272(%r11)
	br	%r14
.Lfunc_end155:
	.size	__paritydi2, .Lfunc_end155-__paritydi2
	.cfi_endproc
                                        # -- End function
	.globl	__parityti2                     # -- Begin function __parityti2
	.p2align	4
	.type	__parityti2,@function
__parityti2:                            # @__parityti2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -208
	.cfi_def_cfa_offset 368
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lg	%r0, 0(%r2)
	lg	%r1, 8(%r2)
	stg	%r1, 200(%r11)
	stg	%r0, 192(%r11)
	lg	%r0, 192(%r11)
	lg	%r1, 200(%r11)
	stg	%r1, 184(%r11)
	stg	%r0, 176(%r11)
	lg	%r0, 176(%r11)
	lg	%r1, 184(%r11)
	xgr	%r0, %r1
	stg	%r0, 168(%r11)
	l	%r0, 168(%r11)
	l	%r1, 172(%r11)
	xr	%r0, %r1
	st	%r0, 164(%r11)
	l	%r1, 164(%r11)
                                        # implicit-def: $r0d
	lr	%r0, %r1
	rxsbg	%r0, %r0, 48, 63, 48
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	l	%r1, 164(%r11)
                                        # implicit-def: $r0d
	lr	%r0, %r1
	rxsbg	%r0, %r0, 40, 63, 56
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	l	%r1, 164(%r11)
                                        # implicit-def: $r0d
	lr	%r0, %r1
	rxsbg	%r0, %r0, 36, 63, 60
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	l	%r2, 164(%r11)
	nill	%r2, 15
	lhi	%r1, 27030
	srl	%r1, 0(%r2)
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 0
	lmg	%r11, %r15, 296(%r11)
	br	%r14
.Lfunc_end156:
	.size	__parityti2, .Lfunc_end156-__parityti2
	.cfi_endproc
                                        # -- End function
	.globl	__paritysi2                     # -- Begin function __paritysi2
	.p2align	4
	.type	__paritysi2,@function
__paritysi2:                            # @__paritysi2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	st	%r0, 160(%r11)
	l	%r1, 160(%r11)
                                        # implicit-def: $r0d
	lr	%r0, %r1
	rxsbg	%r0, %r0, 48, 63, 48
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 160(%r11)
	l	%r1, 160(%r11)
                                        # implicit-def: $r0d
	lr	%r0, %r1
	rxsbg	%r0, %r0, 40, 63, 56
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 160(%r11)
	l	%r1, 160(%r11)
                                        # implicit-def: $r0d
	lr	%r0, %r1
	rxsbg	%r0, %r0, 36, 63, 60
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 160(%r11)
	l	%r2, 160(%r11)
	nill	%r2, 15
	lhi	%r1, 27030
	srl	%r1, 0(%r2)
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end157:
	.size	__paritysi2, .Lfunc_end157-__paritysi2
	.cfi_endproc
                                        # -- End function
	.globl	__popcountdi2                   # -- Begin function __popcountdi2
	.p2align	4
	.type	__popcountdi2,@function
__popcountdi2:                          # @__popcountdi2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -184
	.cfi_def_cfa_offset 344
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 176(%r11)
	lg	%r0, 176(%r11)
	stg	%r0, 168(%r11)
	lg	%r0, 168(%r11)
	srlg	%r1, %r0, 1
	llihf	%r2, 1431655765
	oilf	%r2, 1431655765
	ngr	%r1, %r2
	sgr	%r0, %r1
	stg	%r0, 168(%r11)
	lg	%r1, 168(%r11)
	srlg	%r0, %r1, 2
	llihf	%r2, 858993459
	oilf	%r2, 858993459
	ngr	%r0, %r2
	ngr	%r1, %r2
	agr	%r0, %r1
	stg	%r0, 168(%r11)
	lg	%r0, 168(%r11)
	srlg	%r1, %r0, 4
	agr	%r0, %r1
	llihf	%r1, 252645135
	oilf	%r1, 252645135
	ngr	%r0, %r1
	stg	%r0, 168(%r11)
	lg	%r0, 168(%r11)
	srlg	%r1, %r0, 32
	agr	%r0, %r1
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	lr	%r1, %r0
	srl	%r1, 16
	ar	%r0, %r1
	st	%r0, 164(%r11)
	l	%r1, 164(%r11)
	lr	%r0, %r1
	srl	%r0, 8
	ar	%r1, %r0
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 57, 191, 0
	lmg	%r11, %r15, 272(%r11)
	br	%r14
.Lfunc_end158:
	.size	__popcountdi2, .Lfunc_end158-__popcountdi2
	.cfi_endproc
                                        # -- End function
	.globl	__popcountsi2                   # -- Begin function __popcountsi2
	.p2align	4
	.type	__popcountsi2,@function
__popcountsi2:                          # @__popcountsi2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -168
	.cfi_def_cfa_offset 328
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	st	%r0, 160(%r11)
	l	%r0, 160(%r11)
	lr	%r1, %r0
	srl	%r1, 1
	nilf	%r1, 1431655765
	sr	%r0, %r1
	st	%r0, 160(%r11)
	l	%r1, 160(%r11)
	lr	%r0, %r1
	srl	%r0, 2
	nilf	%r0, 858993459
	nilf	%r1, 858993459
	ar	%r0, %r1
	st	%r0, 160(%r11)
	l	%r0, 160(%r11)
	lr	%r1, %r0
	srl	%r1, 4
	ar	%r0, %r1
	nilf	%r0, 252645135
	st	%r0, 160(%r11)
	l	%r0, 160(%r11)
	lr	%r1, %r0
	srl	%r1, 16
	ar	%r0, %r1
	st	%r0, 160(%r11)
	l	%r1, 160(%r11)
	lr	%r0, %r1
	srl	%r0, 8
	ar	%r1, %r0
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 58, 191, 0
	lmg	%r11, %r15, 256(%r11)
	br	%r14
.Lfunc_end159:
	.size	__popcountsi2, .Lfunc_end159-__popcountsi2
	.cfi_endproc
                                        # -- End function
	.globl	__popcountti2                   # -- Begin function __popcountti2
	.p2align	4
	.type	__popcountti2,@function
__popcountti2:                          # @__popcountti2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -208
	.cfi_def_cfa_offset 368
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lg	%r0, 0(%r2)
	lg	%r1, 8(%r2)
	stg	%r1, 200(%r11)
	stg	%r0, 192(%r11)
	lg	%r0, 192(%r11)
	lg	%r1, 200(%r11)
	stg	%r1, 184(%r11)
	stg	%r0, 176(%r11)
	lg	%r0, 176(%r11)
	lg	%r1, 184(%r11)
	srlg	%r3, %r1, 1
	srlg	%r2, %r0, 1
	llihf	%r4, 1431655765
	oilf	%r4, 1431655765
	ngr	%r2, %r4
	ngr	%r3, %r4
	slgr	%r1, %r3
	slbgr	%r0, %r2
	stg	%r1, 184(%r11)
	stg	%r0, 176(%r11)
	lg	%r2, 184(%r11)
	lg	%r3, 176(%r11)
	srlg	%r0, %r3, 2
	srlg	%r1, %r2, 2
	llihf	%r4, 858993459
	oilf	%r4, 858993459
	ngr	%r1, %r4
	ngr	%r0, %r4
	ngr	%r2, %r4
	ngr	%r3, %r4
	agr	%r0, %r3
	agr	%r1, %r2
	stg	%r1, 184(%r11)
	stg	%r0, 176(%r11)
	lg	%r0, 176(%r11)
	lg	%r1, 184(%r11)
	srlg	%r3, %r1, 4
	rosbg	%r3, %r0, 0, 3, 60
	srlg	%r2, %r0, 4
	algr	%r1, %r3
	alcgr	%r0, %r2
	llihf	%r2, 252645135
	oilf	%r2, 252645135
	ngr	%r0, %r2
	ngr	%r1, %r2
	stg	%r1, 184(%r11)
	stg	%r0, 176(%r11)
	lg	%r2, 176(%r11)
	lg	%r1, 184(%r11)
	la	%r0, 0(%r2,%r1)
	stg	%r0, 168(%r11)
	lg	%r0, 168(%r11)
	srlg	%r1, %r0, 32
	agr	%r0, %r1
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)
	l	%r0, 164(%r11)
	lr	%r1, %r0
	srl	%r1, 16
	ar	%r0, %r1
	st	%r0, 164(%r11)
	l	%r1, 164(%r11)
	lr	%r0, %r1
	srl	%r0, 8
	ar	%r1, %r0
                                        # implicit-def: $r0d
	lr	%r0, %r1
	llgcr	%r2, %r0
	lmg	%r11, %r15, 296(%r11)
	br	%r14
.Lfunc_end160:
	.size	__popcountti2, .Lfunc_end160-__popcountti2
	.cfi_endproc
                                        # -- End function
	.globl	__powidf2                       # -- Begin function __powidf2
	.p2align	4
	.type	__powidf2,@function
__powidf2:                              # @__powidf2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
                                        # kill: def $r1d killed $r2d
	stg	%r2, 184(%r11)
	st	%r0, 180(%r11)
	l	%r0, 180(%r11)
	srl	%r0, 31
	st	%r0, 176(%r11)
	llihh	%r0, 16368
	stg	%r0, 168(%r11)
	j	.LBB161_1
.LBB161_1:                              # =>This Inner Loop Header: Depth=1
	llc	%r0, 183(%r11)
	tmll	%r0, 1
	je	.LBB161_3
	j	.LBB161_2
.LBB161_2:                              #   in Loop: Header=BB161_1 Depth=1
	lg	%r3, 184(%r11)
	lg	%r2, 168(%r11)
	brasl	%r14, __muldf3@PLT
	stg	%r2, 168(%r11)
	j	.LBB161_3
.LBB161_3:                              #   in Loop: Header=BB161_1 Depth=1
	l	%r0, 180(%r11)
	lr	%r1, %r0
	srl	%r1, 31
	ar	%r0, %r1
	sra	%r0, 1
	st	%r0, 180(%r11)
	l	%r0, 180(%r11)
	chi	%r0, 0
	jlh	.LBB161_5
	j	.LBB161_4
.LBB161_4:
	j	.LBB161_6
.LBB161_5:                              #   in Loop: Header=BB161_1 Depth=1
	lg	%r3, 184(%r11)
	lgr	%r2, %r3
	brasl	%r14, __muldf3@PLT
	stg	%r2, 184(%r11)
	j	.LBB161_1
.LBB161_6:
	l	%r0, 176(%r11)
	chi	%r0, 0
	je	.LBB161_8
	j	.LBB161_7
.LBB161_7:
	lg	%r3, 168(%r11)
	llihh	%r2, 16368
	brasl	%r14, __divdf3@PLT
	stg	%r2, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB161_9
.LBB161_8:
	lg	%r0, 168(%r11)
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB161_9
.LBB161_9:
	lg	%r2, 160(%r11)                  # 8-byte Folded Reload
	lmg	%r11, %r15, 280(%r11)
	br	%r14
.Lfunc_end161:
	.size	__powidf2, .Lfunc_end161-__powidf2
	.cfi_endproc
                                        # -- End function
	.globl	__powisf2                       # -- Begin function __powisf2
	.p2align	4
	.type	__powisf2,@function
__powisf2:                              # @__powisf2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -184
	.cfi_def_cfa_offset 344
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
                                        # kill: def $r1l killed $r2l
	st	%r2, 180(%r11)
	st	%r0, 176(%r11)
	l	%r0, 176(%r11)
	srl	%r0, 31
	st	%r0, 172(%r11)
	iilf	%r0, 1065353216
	st	%r0, 168(%r11)
	j	.LBB162_1
.LBB162_1:                              # =>This Inner Loop Header: Depth=1
	llc	%r0, 179(%r11)
	tmll	%r0, 1
	je	.LBB162_3
	j	.LBB162_2
.LBB162_2:                              #   in Loop: Header=BB162_1 Depth=1
	llgf	%r3, 180(%r11)
	llgf	%r2, 168(%r11)
	brasl	%r14, __mulsf3@PLT
	lr	%r0, %r2
	st	%r0, 168(%r11)
	j	.LBB162_3
.LBB162_3:                              #   in Loop: Header=BB162_1 Depth=1
	l	%r0, 176(%r11)
	lr	%r1, %r0
	srl	%r1, 31
	ar	%r0, %r1
	sra	%r0, 1
	st	%r0, 176(%r11)
	l	%r0, 176(%r11)
	chi	%r0, 0
	jlh	.LBB162_5
	j	.LBB162_4
.LBB162_4:
	j	.LBB162_6
.LBB162_5:                              #   in Loop: Header=BB162_1 Depth=1
	llgf	%r3, 180(%r11)
	lgr	%r2, %r3
	brasl	%r14, __mulsf3@PLT
	lr	%r0, %r2
	st	%r0, 180(%r11)
	j	.LBB162_1
.LBB162_6:
	l	%r0, 172(%r11)
	chi	%r0, 0
	je	.LBB162_8
	j	.LBB162_7
.LBB162_7:
	llgf	%r3, 168(%r11)
	llilh	%r2, 16256
	brasl	%r14, __divsf3@PLT
	lr	%r0, %r2
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB162_9
.LBB162_8:
	l	%r0, 168(%r11)
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB162_9
.LBB162_9:
	l	%r2, 164(%r11)                  # 4-byte Folded Reload
	lmg	%r11, %r15, 272(%r11)
	br	%r14
.Lfunc_end162:
	.size	__powisf2, .Lfunc_end162-__powisf2
	.cfi_endproc
                                        # -- End function
	.globl	__ucmpdi2                       # -- Begin function __ucmpdi2
	.p2align	4
	.type	__ucmpdi2,@function
__ucmpdi2:                              # @__ucmpdi2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -200
	.cfi_def_cfa_offset 360
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 184(%r11)
	stg	%r3, 176(%r11)
	lg	%r0, 184(%r11)
	stg	%r0, 168(%r11)
	lg	%r0, 176(%r11)
	stg	%r0, 160(%r11)
	l	%r0, 168(%r11)
	l	%r1, 160(%r11)
	clr	%r0, %r1
	jhe	.LBB163_2
	j	.LBB163_1
.LBB163_1:
	mvhi	196(%r11), 0
	j	.LBB163_9
.LBB163_2:
	l	%r0, 168(%r11)
	l	%r1, 160(%r11)
	clr	%r0, %r1
	jle	.LBB163_4
	j	.LBB163_3
.LBB163_3:
	mvhi	196(%r11), 2
	j	.LBB163_9
.LBB163_4:
	l	%r0, 172(%r11)
	l	%r1, 164(%r11)
	clr	%r0, %r1
	jhe	.LBB163_6
	j	.LBB163_5
.LBB163_5:
	mvhi	196(%r11), 0
	j	.LBB163_9
.LBB163_6:
	l	%r0, 172(%r11)
	l	%r1, 164(%r11)
	clr	%r0, %r1
	jle	.LBB163_8
	j	.LBB163_7
.LBB163_7:
	mvhi	196(%r11), 2
	j	.LBB163_9
.LBB163_8:
	mvhi	196(%r11), 1
	j	.LBB163_9
.LBB163_9:
	lgf	%r2, 196(%r11)
	lmg	%r11, %r15, 288(%r11)
	br	%r14
.Lfunc_end163:
	.size	__ucmpdi2, .Lfunc_end163-__ucmpdi2
	.cfi_endproc
                                        # -- End function
	.globl	__aeabi_ulcmp                   # -- Begin function __aeabi_ulcmp
	.p2align	4
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          # @__aeabi_ulcmp
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r14, -48
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 168(%r11)
	stg	%r3, 160(%r11)
	lg	%r2, 168(%r11)
	lg	%r3, 160(%r11)
	brasl	%r14, __ucmpdi2@PLT
	lr	%r0, %r2
	ahi	%r0, -1
	lgfr	%r2, %r0
	lmg	%r11, %r15, 264(%r11)
	br	%r14
.Lfunc_end164:
	.size	__aeabi_ulcmp, .Lfunc_end164-__aeabi_ulcmp
	.cfi_endproc
                                        # -- End function
	.globl	__ucmpti2                       # -- Begin function __ucmpti2
	.p2align	4
	.type	__ucmpti2,@function
__ucmpti2:                              # @__ucmpti2
	.cfi_startproc
# %bb.0:
	stmg	%r11, %r15, 88(%r15)
	.cfi_offset %r11, -72
	.cfi_offset %r15, -40
	lgr	%r1, %r15
	aghi	%r15, -232
	.cfi_def_cfa_offset 392
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lgr	%r1, %r3
	lgr	%r3, %r2
	lg	%r2, 0(%r3)
	lg	%r3, 8(%r3)
	lg	%r0, 0(%r1)
	lg	%r1, 8(%r1)
	stg	%r3, 216(%r11)
	stg	%r2, 208(%r11)
	stg	%r1, 200(%r11)
	stg	%r0, 192(%r11)
	lg	%r0, 208(%r11)
	lg	%r1, 216(%r11)
	stg	%r1, 184(%r11)
	stg	%r0, 176(%r11)
	lg	%r0, 192(%r11)
	lg	%r1, 200(%r11)
	stg	%r1, 168(%r11)
	stg	%r0, 160(%r11)
	lg	%r0, 176(%r11)
	lg	%r1, 160(%r11)
	clgr	%r0, %r1
	jhe	.LBB165_2
	j	.LBB165_1
.LBB165_1:
	mvhi	228(%r11), 0
	j	.LBB165_9
.LBB165_2:
	lg	%r0, 176(%r11)
	lg	%r1, 160(%r11)
	clgr	%r0, %r1
	jle	.LBB165_4
	j	.LBB165_3
.LBB165_3:
	mvhi	228(%r11), 2
	j	.LBB165_9
.LBB165_4:
	lg	%r0, 184(%r11)
	lg	%r1, 168(%r11)
	clgr	%r0, %r1
	jhe	.LBB165_6
	j	.LBB165_5
.LBB165_5:
	mvhi	228(%r11), 0
	j	.LBB165_9
.LBB165_6:
	lg	%r0, 184(%r11)
	lg	%r1, 168(%r11)
	clgr	%r0, %r1
	jle	.LBB165_8
	j	.LBB165_7
.LBB165_7:
	mvhi	228(%r11), 2
	j	.LBB165_9
.LBB165_8:
	mvhi	228(%r11), 1
	j	.LBB165_9
.LBB165_9:
	lgf	%r2, 228(%r11)
	lmg	%r11, %r15, 320(%r11)
	br	%r14
.Lfunc_end165:
	.size	__ucmpti2, .Lfunc_end165-__ucmpti2
	.cfi_endproc
                                        # -- End function
	.type	l64a.s,@object                  # @l64a.s
	.local	l64a.s
	.comm	l64a.s,7,2
	.type	digits,@object                  # @digits
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
digits:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	digits, 65

	.type	seed,@object                    # @seed
	.local	seed
	.comm	seed,8,8
	.text
.Ltmp1:
	clc	1(1,%r2), 1(%r3)
.Ltmp0:
	mvc	0(1,%r2), 0(%r3)
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
