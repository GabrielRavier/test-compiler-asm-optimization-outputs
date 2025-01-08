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
	lgrl	%r1, .L__profc_make_ti
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_make_ti
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
	lgrl	%r1, .L__profc_make_tu
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_make_tu
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
	lgrl	%r1, .L__profc_memmove
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memmove
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
	lgrl	%r1, .L__profc_memmove+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memmove+8
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
	lgrl	%r1, .L__profc_memmove+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memmove+16
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
	lgrl	%r1, .L__profc_memmove+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memmove+24
	j	.LBB2_8
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB2_11
	j	.LBB2_9
.LBB2_9:                                #   in Loop: Header=BB2_8 Depth=1
	lgrl	%r1, .L__profc_memmove+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memmove+32
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
	lgrl	%r1, .L__profc_memccpy
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memccpy
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
	je	.LBB3_4
	j	.LBB3_2
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
	lgrl	%r1, .L__profc_memccpy+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memccpy+16
	lg	%r1, 168(%r11)
	llc	%r1, 0(%r1)
	lg	%r2, 176(%r11)
	stc	%r1, 0(%r2)
	l	%r2, 196(%r11)
	cr	%r1, %r2
	ipm	%r0
	afi	%r0, 1879048192
	cr	%r1, %r2
	srl	%r0, 31
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB3_4
	j	.LBB3_3
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_memccpy+24
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_memccpy+24
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB3_4
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB3_7
	j	.LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
	lgrl	%r1, .L__profc_memccpy+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memccpy+8
	j	.LBB3_6
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
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
.LBB3_7:
	lg	%r0, 184(%r11)
	cghi	%r0, 0
	je	.LBB3_9
	j	.LBB3_8
.LBB3_8:
	lgrl	%r1, .L__profc_memccpy+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memccpy+32
	lg	%r1, 176(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 216(%r11)
	j	.LBB3_10
.LBB3_9:
	mvghi	216(%r11), 0
	j	.LBB3_10
.LBB3_10:
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
	lgrl	%r1, .L__profc_memchr
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memchr
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
	je	.LBB4_4
	j	.LBB4_2
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	lgrl	%r1, .L__profc_memchr+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memchr+16
	lg	%r1, 176(%r11)
	llc	%r1, 0(%r1)
	l	%r2, 196(%r11)
	cr	%r1, %r2
	ipm	%r0
	afi	%r0, 1879048192
	cr	%r1, %r2
	srl	%r0, 31
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	je	.LBB4_4
	j	.LBB4_3
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	l	%r0, 168(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_memchr+24
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_memchr+24
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	j	.LBB4_4
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	l	%r0, 172(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB4_7
	j	.LBB4_5
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	lgrl	%r1, .L__profc_memchr+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memchr+8
	j	.LBB4_6
.LBB4_6:                                #   in Loop: Header=BB4_1 Depth=1
	lg	%r1, 176(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 176(%r11)
	lg	%r1, 184(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 184(%r11)
	j	.LBB4_1
.LBB4_7:
	lg	%r0, 184(%r11)
	cghi	%r0, 0
	je	.LBB4_9
	j	.LBB4_8
.LBB4_8:
	lgrl	%r1, .L__profc_memchr+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memchr+32
	lg	%r0, 176(%r11)
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB4_10
.LBB4_9:
	lghi	%r0, 0
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB4_10
.LBB4_10:
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
	aghi	%r15, -216
	.cfi_def_cfa_offset 376
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 208(%r11)
	stg	%r3, 200(%r11)
	stg	%r4, 192(%r11)
	lgrl	%r1, .L__profc_memcmp
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memcmp
	lg	%r0, 208(%r11)
	stg	%r0, 184(%r11)
	lg	%r0, 200(%r11)
	stg	%r0, 176(%r11)
	j	.LBB5_1
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	lg	%r1, 192(%r11)
	lhi	%r0, 0
	cghi	%r1, 0
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	je	.LBB5_4
	j	.LBB5_2
.LBB5_2:                                #   in Loop: Header=BB5_1 Depth=1
	lgrl	%r1, .L__profc_memcmp+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memcmp+16
	lg	%r1, 184(%r11)
	llc	%r1, 0(%r1)
	lg	%r2, 176(%r11)
	llc	%r2, 0(%r2)
	cr	%r1, %r2
	ipm	%r0
	afi	%r0, -268435456
	cr	%r1, %r2
	srl	%r0, 31
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	jlh	.LBB5_4
	j	.LBB5_3
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	l	%r0, 168(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_memcmp+24
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_memcmp+24
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	j	.LBB5_4
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	l	%r0, 172(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB5_7
	j	.LBB5_5
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
	lgrl	%r1, .L__profc_memcmp+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memcmp+8
	j	.LBB5_6
.LBB5_6:                                #   in Loop: Header=BB5_1 Depth=1
	lg	%r1, 192(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 192(%r11)
	lg	%r1, 184(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 184(%r11)
	lg	%r1, 176(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 176(%r11)
	j	.LBB5_1
.LBB5_7:
	lg	%r0, 192(%r11)
	cghi	%r0, 0
	je	.LBB5_9
	j	.LBB5_8
.LBB5_8:
	lgrl	%r1, .L__profc_memcmp+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memcmp+32
	lg	%r1, 184(%r11)
	llc	%r0, 0(%r1)
	lg	%r1, 176(%r11)
	llc	%r1, 0(%r1)
	sr	%r0, %r1
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB5_10
.LBB5_9:
	lhi	%r0, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB5_10
.LBB5_10:
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	lgfr	%r2, %r0
	lmg	%r11, %r15, 304(%r11)
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
	lgrl	%r1, .L__profc_memcpy
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memcpy
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
	lgrl	%r1, .L__profc_memcpy+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memcpy+8
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
	lgrl	%r1, .L__profc_memrchr
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memrchr
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
	lgrl	%r1, .L__profc_memrchr+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memrchr+8
	lg	%r1, 160(%r11)
	lg	%r2, 168(%r11)
	llc	%r0, 0(%r2,%r1)
	l	%r1, 180(%r11)
	cr	%r0, %r1
	jlh	.LBB7_4
	j	.LBB7_3
.LBB7_3:
	lgrl	%r1, .L__profc_memrchr+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memrchr+16
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
	lgrl	%r1, .L__profc_memset
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memset
	lg	%r0, 192(%r11)
	stg	%r0, 168(%r11)
	j	.LBB8_1
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB8_4
	j	.LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
	lgrl	%r1, .L__profc_memset+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memset+8
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
	lgrl	%r1, .L__profc_stpcpy
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_stpcpy
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
	lgrl	%r1, .L__profc_stpcpy+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_stpcpy+8
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
	aghi	%r15, -184
	.cfi_def_cfa_offset 344
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	stg	%r2, 176(%r11)
	st	%r0, 172(%r11)
	lgrl	%r1, .L__profc_strchrnul
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strchrnul
	llc	%r0, 175(%r11)
	st	%r0, 172(%r11)
	j	.LBB10_1
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 176(%r11)
	llc	%r1, 0(%r1)
	lhi	%r0, 0
	chi	%r1, 0
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	je	.LBB10_4
	j	.LBB10_2
.LBB10_2:                               #   in Loop: Header=BB10_1 Depth=1
	lgrl	%r1, .L__profc_strchrnul+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strchrnul+16
	lg	%r1, 176(%r11)
	llc	%r1, 0(%r1)
	l	%r2, 172(%r11)
	cr	%r1, %r2
	ipm	%r0
	afi	%r0, 1879048192
	cr	%r1, %r2
	srl	%r0, 31
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	je	.LBB10_4
	j	.LBB10_3
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_strchrnul+24
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_strchrnul+24
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	j	.LBB10_4
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	l	%r0, 168(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB10_7
	j	.LBB10_5
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	lgrl	%r1, .L__profc_strchrnul+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strchrnul+8
	j	.LBB10_6
.LBB10_6:                               #   in Loop: Header=BB10_1 Depth=1
	lg	%r1, 176(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 176(%r11)
	j	.LBB10_1
.LBB10_7:
	lg	%r2, 176(%r11)
	lmg	%r11, %r15, 272(%r11)
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
	lgrl	%r1, .L__profc_strchr
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strchr
	j	.LBB11_2
.LBB11_1:                               #   in Loop: Header=BB11_2 Depth=1
	lgrl	%r1, .L__profc_strchr+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strchr+8
	j	.LBB11_2
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 168(%r11)
	llc	%r0, 0(%r1)
	l	%r1, 164(%r11)
	cr	%r0, %r1
	jlh	.LBB11_4
	j	.LBB11_3
.LBB11_3:
	lgrl	%r1, .L__profc_strchr+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strchr+16
	lg	%r0, 168(%r11)
	stg	%r0, 176(%r11)
	j	.LBB11_7
.LBB11_4:                               #   in Loop: Header=BB11_2 Depth=1
	j	.LBB11_5
.LBB11_5:                               #   in Loop: Header=BB11_2 Depth=1
	lg	%r1, 168(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 168(%r11)
	llc	%r0, 0(%r1)
	chi	%r0, 0
	jlh	.LBB11_1
	j	.LBB11_6
.LBB11_6:
	mvghi	176(%r11), 0
	j	.LBB11_7
.LBB11_7:
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
	lgrl	%r1, .L__profc_strcmp
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strcmp
	j	.LBB12_1
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 176(%r11)
	llc	%r1, 0(%r1)
	lg	%r2, 168(%r11)
	llc	%r2, 0(%r2)
	lhi	%r0, 0
	cr	%r1, %r2
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jlh	.LBB12_4
	j	.LBB12_2
.LBB12_2:                               #   in Loop: Header=BB12_1 Depth=1
	lgrl	%r1, .L__profc_strcmp+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strcmp+16
	lg	%r1, 176(%r11)
	llc	%r1, 0(%r1)
	chi	%r1, 0
	ipm	%r0
	afi	%r0, 1879048192
	chi	%r1, 0
	srl	%r0, 31
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB12_4
	j	.LBB12_3
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_strcmp+24
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_strcmp+24
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB12_4
.LBB12_4:                               #   in Loop: Header=BB12_1 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB12_7
	j	.LBB12_5
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
	lgrl	%r1, .L__profc_strcmp+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strcmp+8
	j	.LBB12_6
.LBB12_6:                               #   in Loop: Header=BB12_1 Depth=1
	lg	%r1, 176(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 176(%r11)
	lg	%r1, 168(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 168(%r11)
	j	.LBB12_1
.LBB12_7:
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
	lgrl	%r1, .L__profc_strlen
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strlen
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
	lgrl	%r1, .L__profc_strlen+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strlen+8
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
	lgrl	%r1, .L__profc_strncmp
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strncmp
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
	lgrl	%r1, .L__profc_strncmp+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strncmp+8
	mvhi	212(%r11), 0
	j	.LBB14_14
.LBB14_2:
	j	.LBB14_3
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 176(%r11)
	llc	%r1, 0(%r1)
	lhi	%r0, 0
	chi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB14_10
	j	.LBB14_4
.LBB14_4:                               #   in Loop: Header=BB14_3 Depth=1
	lgrl	%r1, .L__profc_strncmp+56
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strncmp+56
	lg	%r1, 168(%r11)
	llc	%r1, 0(%r1)
	lhi	%r0, 0
	chi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB14_10
	j	.LBB14_5
.LBB14_5:                               #   in Loop: Header=BB14_3 Depth=1
	lgrl	%r1, .L__profc_strncmp+64
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strncmp+64
	j	.LBB14_6
.LBB14_6:                               #   in Loop: Header=BB14_3 Depth=1
	lgrl	%r1, .L__profc_strncmp+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strncmp+40
	lg	%r1, 184(%r11)
	lhi	%r0, 0
	cghi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB14_10
	j	.LBB14_7
.LBB14_7:                               #   in Loop: Header=BB14_3 Depth=1
	lgrl	%r1, .L__profc_strncmp+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strncmp+48
	j	.LBB14_8
.LBB14_8:                               #   in Loop: Header=BB14_3 Depth=1
	lgrl	%r1, .L__profc_strncmp+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strncmp+24
	lg	%r1, 176(%r11)
	llc	%r1, 0(%r1)
	lg	%r2, 168(%r11)
	llc	%r2, 0(%r2)
	cr	%r1, %r2
	ipm	%r0
	afi	%r0, -268435456
	cr	%r1, %r2
	srl	%r0, 31
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jlh	.LBB14_10
	j	.LBB14_9
.LBB14_9:                               #   in Loop: Header=BB14_3 Depth=1
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_strncmp+32
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_strncmp+32
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB14_10
.LBB14_10:                              #   in Loop: Header=BB14_3 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB14_13
	j	.LBB14_11
.LBB14_11:                              #   in Loop: Header=BB14_3 Depth=1
	lgrl	%r1, .L__profc_strncmp+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strncmp+16
	j	.LBB14_12
.LBB14_12:                              #   in Loop: Header=BB14_3 Depth=1
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
.LBB14_13:
	lg	%r1, 176(%r11)
	llc	%r0, 0(%r1)
	lg	%r1, 168(%r11)
	llc	%r1, 0(%r1)
	sr	%r0, %r1
	st	%r0, 212(%r11)
	j	.LBB14_14
.LBB14_14:
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
	lgrl	%r1, .L__profc_swab
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_swab
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
	lgrl	%r1, .L__profc_swab+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_swab+8
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
	lgrl	%r1, .L__profc_isalpha
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_isalpha
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
	lgrl	%r1, .L__profc_isascii
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_isascii
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
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 172(%r11)
	lgrl	%r1, .L__profc_isblank
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_isblank
	l	%r1, 172(%r11)
	lhi	%r0, 1
	chi	%r1, 32
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	je	.LBB18_3
	j	.LBB18_1
.LBB18_1:
	lgrl	%r1, .L__profc_isblank+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_isblank+8
	l	%r1, 172(%r11)
	chi	%r1, 9
	ipm	%r0
	afi	%r0, -268435456
	chi	%r1, 9
	srl	%r0, 31
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	je	.LBB18_3
	j	.LBB18_2
.LBB18_2:
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_isblank+16
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_isblank+16
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	j	.LBB18_3
.LBB18_3:
	l	%r1, 168(%r11)                  # 4-byte Folded Reload
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 0
	lmg	%r11, %r15, 264(%r11)
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
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 172(%r11)
	lgrl	%r1, .L__profc_iscntrl
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iscntrl
	l	%r1, 172(%r11)
	lhi	%r0, 1
	clfi	%r1, 32
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	jl	.LBB19_3
	j	.LBB19_1
.LBB19_1:
	lgrl	%r1, .L__profc_iscntrl+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iscntrl+8
	l	%r1, 172(%r11)
	chi	%r1, 127
	ipm	%r0
	afi	%r0, -268435456
	chi	%r1, 127
	srl	%r0, 31
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	je	.LBB19_3
	j	.LBB19_2
.LBB19_2:
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_iscntrl+16
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_iscntrl+16
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	j	.LBB19_3
.LBB19_3:
	l	%r1, 168(%r11)                  # 4-byte Folded Reload
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 0
	lmg	%r11, %r15, 264(%r11)
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
	lgrl	%r1, .L__profc_isdigit
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_isdigit
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
	lgrl	%r1, .L__profc_isgraph
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_isgraph
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
	lgrl	%r1, .L__profc_islower
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_islower
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
	lgrl	%r1, .L__profc_isprint
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_isprint
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
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 172(%r11)
	lgrl	%r1, .L__profc_isspace
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_isspace
	l	%r1, 172(%r11)
	lhi	%r0, 1
	chi	%r1, 32
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	je	.LBB24_3
	j	.LBB24_1
.LBB24_1:
	lgrl	%r1, .L__profc_isspace+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_isspace+8
	l	%r1, 172(%r11)
	ahi	%r1, -9
	clfi	%r1, 5
	ipm	%r0
                                        # implicit-def: $r2d
	lr	%r2, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r2, 63, 191, 36
	clfi	%r1, 5
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	jl	.LBB24_3
	j	.LBB24_2
.LBB24_2:
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_isspace+16
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_isspace+16
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	j	.LBB24_3
.LBB24_3:
	l	%r1, 168(%r11)                  # 4-byte Folded Reload
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 0
	lmg	%r11, %r15, 264(%r11)
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
	lgrl	%r1, .L__profc_isupper
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_isupper
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
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 172(%r11)
	lgrl	%r1, .L__profc_iswcntrl
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iswcntrl
	l	%r1, 172(%r11)
	lhi	%r0, 1
	clfi	%r1, 32
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	jl	.LBB26_7
	j	.LBB26_1
.LBB26_1:
	lgrl	%r1, .L__profc_iswcntrl+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iswcntrl+40
	l	%r1, 172(%r11)
	ahi	%r1, -127
	lhi	%r0, 1
	clfi	%r1, 33
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	jl	.LBB26_7
	j	.LBB26_2
.LBB26_2:
	lgrl	%r1, .L__profc_iswcntrl+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iswcntrl+48
	j	.LBB26_3
.LBB26_3:
	lgrl	%r1, .L__profc_iswcntrl+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iswcntrl+24
	l	%r1, 172(%r11)
	ahi	%r1, -8232
	lhi	%r0, 1
	clfi	%r1, 2
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	jl	.LBB26_7
	j	.LBB26_4
.LBB26_4:
	lgrl	%r1, .L__profc_iswcntrl+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iswcntrl+32
	j	.LBB26_5
.LBB26_5:
	lgrl	%r1, .L__profc_iswcntrl+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iswcntrl+8
	l	%r1, 172(%r11)
	afi	%r1, -65529
	clfi	%r1, 3
	ipm	%r0
                                        # implicit-def: $r2d
	lr	%r2, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r2, 63, 191, 36
	clfi	%r1, 3
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	jl	.LBB26_7
	j	.LBB26_6
.LBB26_6:
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_iswcntrl+16
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_iswcntrl+16
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	j	.LBB26_7
.LBB26_7:
	l	%r1, 168(%r11)                  # 4-byte Folded Reload
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 0
	lmg	%r11, %r15, 264(%r11)
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
	lgrl	%r1, .L__profc_iswdigit
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iswdigit
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
	lgrl	%r1, .L__profc_iswprint
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iswprint
	l	%r0, 160(%r11)
	clfi	%r0, 254
	jh	.LBB28_2
	j	.LBB28_1
.LBB28_1:
	lgrl	%r1, .L__profc_iswprint+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iswprint+8
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
	j	.LBB28_13
.LBB28_2:
	l	%r0, 160(%r11)
	clfi	%r0, 8232
	jl	.LBB28_7
	j	.LBB28_3
.LBB28_3:
	lgrl	%r1, .L__profc_iswprint+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iswprint+40
	l	%r0, 160(%r11)
	ahi	%r0, -8234
	clfi	%r0, 47062
	jl	.LBB28_7
	j	.LBB28_4
.LBB28_4:
	lgrl	%r1, .L__profc_iswprint+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iswprint+48
	j	.LBB28_5
.LBB28_5:
	lgrl	%r1, .L__profc_iswprint+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iswprint+24
	l	%r0, 160(%r11)
	afi	%r0, -57344
	clfi	%r0, 8185
	jl	.LBB28_7
	j	.LBB28_6
.LBB28_6:
	lgrl	%r1, .L__profc_iswprint+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iswprint+32
	j	.LBB28_8
.LBB28_7:
	lgrl	%r1, .L__profc_iswprint+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iswprint+16
	mvhi	164(%r11), 1
	j	.LBB28_13
.LBB28_8:
	l	%r0, 160(%r11)
	afi	%r0, -65532
	clfi	%r0, 1048579
	jh	.LBB28_11
	j	.LBB28_9
.LBB28_9:
	lgrl	%r1, .L__profc_iswprint+64
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iswprint+64
	l	%r0, 160(%r11)
	tmll	%r0, 65534
	jo	.LBB28_11
	j	.LBB28_10
.LBB28_10:
	lgrl	%r1, .L__profc_iswprint+72
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iswprint+72
	j	.LBB28_12
.LBB28_11:
	lgrl	%r1, .L__profc_iswprint+56
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iswprint+56
	mvhi	164(%r11), 0
	j	.LBB28_13
.LBB28_12:
	mvhi	164(%r11), 1
	j	.LBB28_13
.LBB28_13:
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
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r2
	st	%r0, 172(%r11)
	lgrl	%r1, .L__profc_iswxdigit
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iswxdigit
	l	%r1, 172(%r11)
	ahi	%r1, -48
	lhi	%r0, 1
	clfi	%r1, 10
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	jl	.LBB29_3
	j	.LBB29_1
.LBB29_1:
	lgrl	%r1, .L__profc_iswxdigit+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_iswxdigit+8
	l	%r1, 172(%r11)
	oill	%r1, 32
	ahi	%r1, -97
	clfi	%r1, 6
	ipm	%r0
                                        # implicit-def: $r2d
	lr	%r2, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r2, 63, 191, 36
	clfi	%r1, 6
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	jl	.LBB29_3
	j	.LBB29_2
.LBB29_2:
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_iswxdigit+16
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_iswxdigit+16
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	j	.LBB29_3
.LBB29_3:
	l	%r1, 168(%r11)                  # 4-byte Folded Reload
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 0
	lmg	%r11, %r15, 264(%r11)
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
	lgrl	%r1, .L__profc_toascii
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_toascii
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
	lgrl	%r1, .L__profc_fdim
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fdim
	lg	%r0, 176(%r11)
	nihh	%r0, 32767
	llihh	%r1, 32752
	oill	%r1, 1
	cgr	%r0, %r1
	jl	.LBB31_2
	j	.LBB31_1
.LBB31_1:
	lgrl	%r1, .L__profc_fdim+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fdim+8
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
	lgrl	%r1, .L__profc_fdim+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fdim+16
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
	lgrl	%r1, .L__profc_fdim+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fdim+24
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
	lgrl	%r1, .L__profc_fdimf
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fdimf
	l	%r0, 168(%r11)
	nilh	%r0, 32767
	cfi	%r0, 2139095041
	jl	.LBB32_2
	j	.LBB32_1
.LBB32_1:
	lgrl	%r1, .L__profc_fdimf+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fdimf+8
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
	lgrl	%r1, .L__profc_fdimf+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fdimf+16
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
	lgrl	%r1, .L__profc_fdimf+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fdimf+24
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
	lgrl	%r1, .L__profc_fmax
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmax
	lg	%r0, 184(%r11)
	nihh	%r0, 32767
	llihh	%r1, 32752
	oill	%r1, 1
	cgr	%r0, %r1
	jl	.LBB33_2
	j	.LBB33_1
.LBB33_1:
	lgrl	%r1, .L__profc_fmax+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmax+8
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
	lgrl	%r1, .L__profc_fmax+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmax+16
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
	lgrl	%r1, .L__profc_fmax+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmax+24
	lg	%r0, 184(%r11)
	cghi	%r0, 0
	jhe	.LBB33_7
	j	.LBB33_6
.LBB33_6:
	lgrl	%r1, .L__profc_fmax+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmax+32
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
	lgrl	%r1, .L__profc_fmax+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmax+40
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
	lgrl	%r1, .L__profc_fmaxf
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmaxf
	l	%r0, 176(%r11)
	nilh	%r0, 32767
	cfi	%r0, 2139095041
	jl	.LBB34_2
	j	.LBB34_1
.LBB34_1:
	lgrl	%r1, .L__profc_fmaxf+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmaxf+8
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
	lgrl	%r1, .L__profc_fmaxf+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmaxf+16
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
	lgrl	%r1, .L__profc_fmaxf+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmaxf+24
	l	%r0, 176(%r11)
	chi	%r0, 0
	jhe	.LBB34_7
	j	.LBB34_6
.LBB34_6:
	lgrl	%r1, .L__profc_fmaxf+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmaxf+32
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
	lgrl	%r1, .L__profc_fmaxf+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmaxf+40
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
	lgrl	%r1, .L__profc_fmaxl
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmaxl
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
	lgrl	%r2, .L__profc_fmaxl+8
	la	%r0, 1(%r2)
	stgrl	%r0, .L__profc_fmaxl+8
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
	lgrl	%r2, .L__profc_fmaxl+16
	la	%r0, 1(%r2)
	stgrl	%r0, .L__profc_fmaxl+16
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
	lgrl	%r1, .L__profc_fmaxl+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmaxl+24
	lg	%r0, 264(%r11)
	cghi	%r0, 0
	jhe	.LBB35_11
	j	.LBB35_10
.LBB35_10:
	lgrl	%r1, .L__profc_fmaxl+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmaxl+32
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
	lgrl	%r1, .L__profc_fmaxl+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmaxl+40
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
	lgrl	%r1, .L__profc_fmin
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmin
	lg	%r0, 184(%r11)
	nihh	%r0, 32767
	llihh	%r1, 32752
	oill	%r1, 1
	cgr	%r0, %r1
	jl	.LBB36_2
	j	.LBB36_1
.LBB36_1:
	lgrl	%r1, .L__profc_fmin+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmin+8
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
	lgrl	%r1, .L__profc_fmin+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmin+16
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
	lgrl	%r1, .L__profc_fmin+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmin+24
	lg	%r0, 184(%r11)
	cghi	%r0, 0
	jhe	.LBB36_7
	j	.LBB36_6
.LBB36_6:
	lgrl	%r1, .L__profc_fmin+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmin+32
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
	lgrl	%r1, .L__profc_fmin+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fmin+40
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
	lgrl	%r1, .L__profc_fminf
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fminf
	l	%r0, 176(%r11)
	nilh	%r0, 32767
	cfi	%r0, 2139095041
	jl	.LBB37_2
	j	.LBB37_1
.LBB37_1:
	lgrl	%r1, .L__profc_fminf+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fminf+8
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
	lgrl	%r1, .L__profc_fminf+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fminf+16
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
	lgrl	%r1, .L__profc_fminf+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fminf+24
	l	%r0, 176(%r11)
	chi	%r0, 0
	jhe	.LBB37_7
	j	.LBB37_6
.LBB37_6:
	lgrl	%r1, .L__profc_fminf+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fminf+32
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
	lgrl	%r1, .L__profc_fminf+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fminf+40
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
	lgrl	%r1, .L__profc_fminl
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fminl
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
	lgrl	%r2, .L__profc_fminl+8
	la	%r0, 1(%r2)
	stgrl	%r0, .L__profc_fminl+8
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
	lgrl	%r2, .L__profc_fminl+16
	la	%r0, 1(%r2)
	stgrl	%r0, .L__profc_fminl+16
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
	lgrl	%r1, .L__profc_fminl+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fminl+24
	lg	%r0, 264(%r11)
	cghi	%r0, 0
	jhe	.LBB38_11
	j	.LBB38_10
.LBB38_10:
	lgrl	%r1, .L__profc_fminl+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fminl+32
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
	lgrl	%r1, .L__profc_fminl+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_fminl+40
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
	lgrl	%r1, .L__profc_l64a
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_l64a
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
	lgrl	%r1, .L__profc_l64a+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_l64a+8
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
	lgrl	%r1, .L__profc_srand
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_srand
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
	lgrl	%r1, .L__profc_rand
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_rand
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
	lgrl	%r1, .L__profc_insque
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_insque
	lg	%r0, 184(%r11)
	stg	%r0, 168(%r11)
	lg	%r0, 176(%r11)
	stg	%r0, 160(%r11)
	lg	%r0, 160(%r11)
	cghi	%r0, 0
	jlh	.LBB42_2
	j	.LBB42_1
.LBB42_1:
	lgrl	%r1, .L__profc_insque+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_insque+8
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
	lgrl	%r1, .L__profc_insque+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_insque+16
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
	lgrl	%r1, .L__profc_remque
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_remque
	lg	%r0, 168(%r11)
	stg	%r0, 160(%r11)
	lg	%r1, 160(%r11)
	lg	%r0, 0(%r1)
	cghi	%r0, 0
	je	.LBB43_2
	j	.LBB43_1
.LBB43_1:
	lgrl	%r1, .L__profc_remque+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_remque+8
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
	lgrl	%r1, .L__profc_remque+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_remque+16
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
	lgrl	%r1, .L__profc_lsearch
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_lsearch
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
	lgrl	%r1, .L__profc_lsearch+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_lsearch+8
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
	lgrl	%r1, .L__profc_lsearch+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_lsearch+16
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
	lgrl	%r1, .L__profc_lfind
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_lfind
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
	lgrl	%r1, .L__profc_lfind+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_lfind+8
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
	lgrl	%r1, .L__profc_lfind+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_lfind+16
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
	lgrl	%r1, .L__profc_abs
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_abs
	l	%r0, 164(%r11)
	chi	%r0, 0
	jle	.LBB46_2
	j	.LBB46_1
.LBB46_1:
	lgrl	%r1, .L__profc_abs+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_abs+8
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
	lgrl	%r1, .L__profc_atoi
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atoi
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
	lgrl	%r1, .L__profc_atoi+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atoi+8
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
	jlh	.LBB47_8
	j	.LBB47_5
.LBB47_5:
	lgrl	%r1, .L__profc_atoi+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atoi+24
	mvhi	168(%r11), 1
	j	.LBB47_7
.LBB47_6:
	lgrl	%r1, .L__profc_atoi+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atoi+32
	j	.LBB47_7
.LBB47_7:
	lg	%r1, 176(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 176(%r11)
	j	.LBB47_8
.LBB47_8:
	lgrl	%r1, .L__profc_atoi+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atoi+16
	j	.LBB47_9
.LBB47_9:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 176(%r11)
	llgc	%r2, 0(%r1)
	brasl	%r14, isdigit@PLT
	lr	%r0, %r2
	chi	%r0, 0
	je	.LBB47_11
	j	.LBB47_10
.LBB47_10:                              #   in Loop: Header=BB47_9 Depth=1
	lgrl	%r1, .L__profc_atoi+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atoi+40
	l	%r0, 172(%r11)
	mhi	%r0, 10
	lg	%r1, 176(%r11)
	la	%r2, 1(%r1)
	stg	%r2, 176(%r11)
	llc	%r1, 0(%r1)
	sr	%r0, %r1
	ahi	%r0, 48
	st	%r0, 172(%r11)
	j	.LBB47_9
.LBB47_11:
	l	%r0, 168(%r11)
	chi	%r0, 0
	je	.LBB47_13
	j	.LBB47_12
.LBB47_12:
	lgrl	%r1, .L__profc_atoi+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atoi+48
	l	%r0, 172(%r11)
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB47_14
.LBB47_13:
	l	%r0, 172(%r11)
	lcr	%r0, %r0
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB47_14
.LBB47_14:
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
	lgrl	%r1, .L__profc_atol
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atol
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
	lgrl	%r1, .L__profc_atol+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atol+8
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
	jlh	.LBB48_8
	j	.LBB48_5
.LBB48_5:
	lgrl	%r1, .L__profc_atol+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atol+24
	mvhi	172(%r11), 1
	j	.LBB48_7
.LBB48_6:
	lgrl	%r1, .L__profc_atol+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atol+32
	j	.LBB48_7
.LBB48_7:
	lg	%r1, 184(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 184(%r11)
	j	.LBB48_8
.LBB48_8:
	lgrl	%r1, .L__profc_atol+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atol+16
	j	.LBB48_9
.LBB48_9:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 184(%r11)
	llgc	%r2, 0(%r1)
	brasl	%r14, isdigit@PLT
	lr	%r0, %r2
	chi	%r0, 0
	je	.LBB48_11
	j	.LBB48_10
.LBB48_10:                              #   in Loop: Header=BB48_9 Depth=1
	lgrl	%r1, .L__profc_atol+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atol+40
	lg	%r0, 176(%r11)
	mghi	%r0, 10
	lg	%r1, 184(%r11)
	la	%r2, 1(%r1)
	stg	%r2, 184(%r11)
	llc	%r1, 0(%r1)
	ahi	%r1, -48
	sgfr	%r0, %r1
	stg	%r0, 176(%r11)
	j	.LBB48_9
.LBB48_11:
	l	%r0, 172(%r11)
	chi	%r0, 0
	je	.LBB48_13
	j	.LBB48_12
.LBB48_12:
	lgrl	%r1, .L__profc_atol+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atol+48
	lg	%r0, 176(%r11)
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB48_14
.LBB48_13:
	lg	%r0, 176(%r11)
	lcgr	%r0, %r0
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB48_14
.LBB48_14:
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
	lgrl	%r1, .L__profc_atoll
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atoll
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
	lgrl	%r1, .L__profc_atoll+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atoll+8
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
	jlh	.LBB49_8
	j	.LBB49_5
.LBB49_5:
	lgrl	%r1, .L__profc_atoll+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atoll+24
	mvhi	172(%r11), 1
	j	.LBB49_7
.LBB49_6:
	lgrl	%r1, .L__profc_atoll+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atoll+32
	j	.LBB49_7
.LBB49_7:
	lg	%r1, 184(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 184(%r11)
	j	.LBB49_8
.LBB49_8:
	lgrl	%r1, .L__profc_atoll+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atoll+16
	j	.LBB49_9
.LBB49_9:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 184(%r11)
	llgc	%r2, 0(%r1)
	brasl	%r14, isdigit@PLT
	lr	%r0, %r2
	chi	%r0, 0
	je	.LBB49_11
	j	.LBB49_10
.LBB49_10:                              #   in Loop: Header=BB49_9 Depth=1
	lgrl	%r1, .L__profc_atoll+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atoll+40
	lg	%r0, 176(%r11)
	mghi	%r0, 10
	lg	%r1, 184(%r11)
	la	%r2, 1(%r1)
	stg	%r2, 184(%r11)
	llc	%r1, 0(%r1)
	ahi	%r1, -48
	sgfr	%r0, %r1
	stg	%r0, 176(%r11)
	j	.LBB49_9
.LBB49_11:
	l	%r0, 172(%r11)
	chi	%r0, 0
	je	.LBB49_13
	j	.LBB49_12
.LBB49_12:
	lgrl	%r1, .L__profc_atoll+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_atoll+48
	lg	%r0, 176(%r11)
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB49_14
.LBB49_13:
	lg	%r0, 176(%r11)
	lcgr	%r0, %r0
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB49_14
.LBB49_14:
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
	lgrl	%r1, .L__profc_bsearch
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_bsearch
	j	.LBB50_1
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r0, 192(%r11)
	cghi	%r0, 0
	je	.LBB50_9
	j	.LBB50_2
.LBB50_2:                               #   in Loop: Header=BB50_1 Depth=1
	lgrl	%r1, .L__profc_bsearch+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_bsearch+8
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
	lgrl	%r1, .L__profc_bsearch+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_bsearch+16
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
	lgrl	%r1, .L__profc_bsearch+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_bsearch+24
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
	lgrl	%r1, .L__profc_bsearch_r
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_bsearch_r
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
	lgrl	%r1, .L__profc_bsearch_r+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_bsearch_r+8
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
	lgrl	%r1, .L__profc_bsearch_r+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_bsearch_r+16
	lg	%r0, 160(%r11)
	stg	%r0, 224(%r11)
	j	.LBB51_9
.LBB51_4:                               #   in Loop: Header=BB51_1 Depth=1
	l	%r0, 168(%r11)
	chi	%r0, 0
	jle	.LBB51_6
	j	.LBB51_5
.LBB51_5:                               #   in Loop: Header=BB51_1 Depth=1
	lgrl	%r1, .L__profc_bsearch_r+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_bsearch_r+24
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
	lgrl	%r1, .L__profc_div
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_div
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
	lgrl	%r1, .L__profc_imaxabs
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_imaxabs
	lg	%r0, 168(%r11)
	cghi	%r0, 0
	jle	.LBB53_2
	j	.LBB53_1
.LBB53_1:
	lgrl	%r1, .L__profc_imaxabs+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_imaxabs+8
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
	lgrl	%r1, .L__profc_imaxdiv
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_imaxdiv
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
	lgrl	%r1, .L__profc_labs
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_labs
	lg	%r0, 168(%r11)
	cghi	%r0, 0
	jle	.LBB55_2
	j	.LBB55_1
.LBB55_1:
	lgrl	%r1, .L__profc_labs+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_labs+8
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
	lgrl	%r1, .L__profc_ldiv
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldiv
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
	lgrl	%r1, .L__profc_llabs
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_llabs
	lg	%r0, 168(%r11)
	cghi	%r0, 0
	jle	.LBB57_2
	j	.LBB57_1
.LBB57_1:
	lgrl	%r1, .L__profc_llabs+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_llabs+8
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
	lgrl	%r1, .L__profc_lldiv
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_lldiv
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
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	lr	%r0, %r3
	stg	%r2, 184(%r11)
	st	%r0, 180(%r11)
	lgrl	%r1, .L__profc_wcschr
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcschr
	j	.LBB59_1
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 184(%r11)
	l	%r1, 0(%r1)
	lhi	%r0, 0
	chi	%r1, 0
	st	%r0, 176(%r11)                  # 4-byte Folded Spill
	je	.LBB59_4
	j	.LBB59_2
.LBB59_2:                               #   in Loop: Header=BB59_1 Depth=1
	lgrl	%r1, .L__profc_wcschr+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcschr+16
	lg	%r1, 184(%r11)
	l	%r1, 0(%r1)
	l	%r2, 180(%r11)
	cr	%r1, %r2
	ipm	%r0
	afi	%r0, 1879048192
	cr	%r1, %r2
	srl	%r0, 31
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	st	%r0, 176(%r11)                  # 4-byte Folded Spill
	je	.LBB59_4
	j	.LBB59_3
.LBB59_3:                               #   in Loop: Header=BB59_1 Depth=1
	l	%r0, 172(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_wcschr+24
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_wcschr+24
	st	%r0, 176(%r11)                  # 4-byte Folded Spill
	j	.LBB59_4
.LBB59_4:                               #   in Loop: Header=BB59_1 Depth=1
	l	%r0, 176(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB59_7
	j	.LBB59_5
.LBB59_5:                               #   in Loop: Header=BB59_1 Depth=1
	lgrl	%r1, .L__profc_wcschr+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcschr+8
	j	.LBB59_6
.LBB59_6:                               #   in Loop: Header=BB59_1 Depth=1
	lg	%r1, 184(%r11)
	la	%r0, 4(%r1)
	stg	%r0, 184(%r11)
	j	.LBB59_1
.LBB59_7:
	lg	%r1, 184(%r11)
	l	%r0, 0(%r1)
	chi	%r0, 0
	je	.LBB59_9
	j	.LBB59_8
.LBB59_8:
	lgrl	%r1, .L__profc_wcschr+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcschr+32
	lg	%r0, 184(%r11)
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB59_10
.LBB59_9:
	lghi	%r0, 0
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB59_10
.LBB59_10:
	lg	%r2, 160(%r11)                  # 8-byte Folded Reload
	lmg	%r11, %r15, 280(%r11)
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
	aghi	%r15, -192
	.cfi_def_cfa_offset 352
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
	stg	%r2, 184(%r11)
	stg	%r3, 176(%r11)
	lgrl	%r1, .L__profc_wcscmp
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcscmp
	j	.LBB60_1
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 184(%r11)
	l	%r1, 0(%r1)
	lg	%r2, 176(%r11)
	l	%r2, 0(%r2)
	lhi	%r0, 0
	cr	%r1, %r2
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	jlh	.LBB60_6
	j	.LBB60_2
.LBB60_2:                               #   in Loop: Header=BB60_1 Depth=1
	lgrl	%r1, .L__profc_wcscmp+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcscmp+32
	lg	%r1, 184(%r11)
	l	%r1, 0(%r1)
	lhi	%r0, 0
	chi	%r1, 0
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	je	.LBB60_6
	j	.LBB60_3
.LBB60_3:                               #   in Loop: Header=BB60_1 Depth=1
	lgrl	%r1, .L__profc_wcscmp+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcscmp+40
	j	.LBB60_4
.LBB60_4:                               #   in Loop: Header=BB60_1 Depth=1
	lgrl	%r1, .L__profc_wcscmp+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcscmp+16
	lg	%r1, 176(%r11)
	l	%r1, 0(%r1)
	chi	%r1, 0
	ipm	%r0
	afi	%r0, 1879048192
	chi	%r1, 0
	srl	%r0, 31
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	je	.LBB60_6
	j	.LBB60_5
.LBB60_5:                               #   in Loop: Header=BB60_1 Depth=1
	l	%r0, 168(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_wcscmp+24
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_wcscmp+24
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	j	.LBB60_6
.LBB60_6:                               #   in Loop: Header=BB60_1 Depth=1
	l	%r0, 172(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB60_9
	j	.LBB60_7
.LBB60_7:                               #   in Loop: Header=BB60_1 Depth=1
	lgrl	%r1, .L__profc_wcscmp+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcscmp+8
	j	.LBB60_8
.LBB60_8:                               #   in Loop: Header=BB60_1 Depth=1
	lg	%r1, 184(%r11)
	la	%r0, 4(%r1)
	stg	%r0, 184(%r11)
	lg	%r1, 176(%r11)
	la	%r0, 4(%r1)
	stg	%r0, 176(%r11)
	j	.LBB60_1
.LBB60_9:
	lg	%r1, 184(%r11)
	l	%r0, 0(%r1)
	lg	%r1, 176(%r11)
	l	%r1, 0(%r1)
	cr	%r0, %r1
	jhe	.LBB60_11
	j	.LBB60_10
.LBB60_10:
	lgrl	%r1, .L__profc_wcscmp+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcscmp+48
	lhi	%r0, -1
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB60_12
.LBB60_11:
	lg	%r1, 184(%r11)
	l	%r0, 0(%r1)
	lg	%r1, 176(%r11)
	l	%r1, 0(%r1)
	cr	%r0, %r1
	ipm	%r0
                                        # implicit-def: $r1d
	lr	%r1, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r1, 63, 191, 35
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB60_12
.LBB60_12:
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	lgfr	%r2, %r0
	lmg	%r11, %r15, 280(%r11)
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
	lgrl	%r1, .L__profc_wcscpy
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcscpy
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
	lgrl	%r1, .L__profc_wcscpy+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcscpy+8
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
	lgrl	%r1, .L__profc_wcslen
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcslen
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
	lgrl	%r1, .L__profc_wcslen+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcslen+8
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
	lgrl	%r1, .L__profc_wcsncmp
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcsncmp
	j	.LBB63_1
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 176(%r11)
	lhi	%r0, 0
	cghi	%r1, 0
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	je	.LBB63_8
	j	.LBB63_2
.LBB63_2:                               #   in Loop: Header=BB63_1 Depth=1
	lgrl	%r1, .L__profc_wcsncmp+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcsncmp+48
	lg	%r1, 192(%r11)
	l	%r1, 0(%r1)
	lg	%r2, 184(%r11)
	l	%r2, 0(%r2)
	lhi	%r0, 0
	cr	%r1, %r2
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	jlh	.LBB63_8
	j	.LBB63_3
.LBB63_3:                               #   in Loop: Header=BB63_1 Depth=1
	lgrl	%r1, .L__profc_wcsncmp+56
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcsncmp+56
	j	.LBB63_4
.LBB63_4:                               #   in Loop: Header=BB63_1 Depth=1
	lgrl	%r1, .L__profc_wcsncmp+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcsncmp+32
	lg	%r1, 192(%r11)
	l	%r1, 0(%r1)
	lhi	%r0, 0
	chi	%r1, 0
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	je	.LBB63_8
	j	.LBB63_5
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
	lgrl	%r1, .L__profc_wcsncmp+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcsncmp+40
	j	.LBB63_6
.LBB63_6:                               #   in Loop: Header=BB63_1 Depth=1
	lgrl	%r1, .L__profc_wcsncmp+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcsncmp+16
	lg	%r1, 184(%r11)
	l	%r1, 0(%r1)
	chi	%r1, 0
	ipm	%r0
	afi	%r0, 1879048192
	chi	%r1, 0
	srl	%r0, 31
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	je	.LBB63_8
	j	.LBB63_7
.LBB63_7:                               #   in Loop: Header=BB63_1 Depth=1
	l	%r0, 168(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_wcsncmp+24
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_wcsncmp+24
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	j	.LBB63_8
.LBB63_8:                               #   in Loop: Header=BB63_1 Depth=1
	l	%r0, 172(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB63_11
	j	.LBB63_9
.LBB63_9:                               #   in Loop: Header=BB63_1 Depth=1
	lgrl	%r1, .L__profc_wcsncmp+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcsncmp+8
	j	.LBB63_10
.LBB63_10:                              #   in Loop: Header=BB63_1 Depth=1
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
.LBB63_11:
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB63_16
	j	.LBB63_12
.LBB63_12:
	lgrl	%r1, .L__profc_wcsncmp+64
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcsncmp+64
	lg	%r1, 192(%r11)
	l	%r0, 0(%r1)
	lg	%r1, 184(%r11)
	l	%r1, 0(%r1)
	cr	%r0, %r1
	jhe	.LBB63_14
	j	.LBB63_13
.LBB63_13:
	lgrl	%r1, .L__profc_wcsncmp+72
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wcsncmp+72
	lhi	%r0, -1
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB63_15
.LBB63_14:
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
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB63_15
.LBB63_15:
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB63_17
.LBB63_16:
	lhi	%r0, 0
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB63_17
.LBB63_17:
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
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
	lgrl	%r1, .L__profc_wmemchr
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wmemchr
	j	.LBB64_1
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 176(%r11)
	lhi	%r0, 0
	cghi	%r1, 0
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	je	.LBB64_4
	j	.LBB64_2
.LBB64_2:                               #   in Loop: Header=BB64_1 Depth=1
	lgrl	%r1, .L__profc_wmemchr+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wmemchr+16
	lg	%r1, 192(%r11)
	l	%r1, 0(%r1)
	l	%r2, 188(%r11)
	cr	%r1, %r2
	ipm	%r0
	afi	%r0, 1879048192
	cr	%r1, %r2
	srl	%r0, 31
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	je	.LBB64_4
	j	.LBB64_3
.LBB64_3:                               #   in Loop: Header=BB64_1 Depth=1
	l	%r0, 168(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_wmemchr+24
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_wmemchr+24
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	j	.LBB64_4
.LBB64_4:                               #   in Loop: Header=BB64_1 Depth=1
	l	%r0, 172(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB64_7
	j	.LBB64_5
.LBB64_5:                               #   in Loop: Header=BB64_1 Depth=1
	lgrl	%r1, .L__profc_wmemchr+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wmemchr+8
	j	.LBB64_6
.LBB64_6:                               #   in Loop: Header=BB64_1 Depth=1
	lg	%r1, 176(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 176(%r11)
	lg	%r1, 192(%r11)
	la	%r0, 4(%r1)
	stg	%r0, 192(%r11)
	j	.LBB64_1
.LBB64_7:
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB64_9
	j	.LBB64_8
.LBB64_8:
	lgrl	%r1, .L__profc_wmemchr+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wmemchr+32
	lg	%r0, 192(%r11)
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB64_10
.LBB64_9:
	lghi	%r0, 0
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	j	.LBB64_10
.LBB64_10:
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
	lgrl	%r1, .L__profc_wmemcmp
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wmemcmp
	j	.LBB65_1
.LBB65_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 176(%r11)
	lhi	%r0, 0
	cghi	%r1, 0
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	je	.LBB65_4
	j	.LBB65_2
.LBB65_2:                               #   in Loop: Header=BB65_1 Depth=1
	lgrl	%r1, .L__profc_wmemcmp+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wmemcmp+16
	lg	%r1, 192(%r11)
	l	%r1, 0(%r1)
	lg	%r2, 184(%r11)
	l	%r2, 0(%r2)
	cr	%r1, %r2
	ipm	%r0
	afi	%r0, -268435456
	cr	%r1, %r2
	srl	%r0, 31
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	jlh	.LBB65_4
	j	.LBB65_3
.LBB65_3:                               #   in Loop: Header=BB65_1 Depth=1
	l	%r0, 168(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_wmemcmp+24
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_wmemcmp+24
	st	%r0, 172(%r11)                  # 4-byte Folded Spill
	j	.LBB65_4
.LBB65_4:                               #   in Loop: Header=BB65_1 Depth=1
	l	%r0, 172(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB65_7
	j	.LBB65_5
.LBB65_5:                               #   in Loop: Header=BB65_1 Depth=1
	lgrl	%r1, .L__profc_wmemcmp+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wmemcmp+8
	j	.LBB65_6
.LBB65_6:                               #   in Loop: Header=BB65_1 Depth=1
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
.LBB65_7:
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB65_12
	j	.LBB65_8
.LBB65_8:
	lgrl	%r1, .L__profc_wmemcmp+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wmemcmp+32
	lg	%r1, 192(%r11)
	l	%r0, 0(%r1)
	lg	%r1, 184(%r11)
	l	%r1, 0(%r1)
	cr	%r0, %r1
	jhe	.LBB65_10
	j	.LBB65_9
.LBB65_9:
	lgrl	%r1, .L__profc_wmemcmp+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wmemcmp+40
	lhi	%r0, -1
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB65_11
.LBB65_10:
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
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB65_11
.LBB65_11:
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB65_13
.LBB65_12:
	lhi	%r0, 0
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB65_13
.LBB65_13:
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
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
	lgrl	%r1, .L__profc_wmemcpy
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wmemcpy
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
	lgrl	%r1, .L__profc_wmemcpy+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wmemcpy+8
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
	lgrl	%r1, .L__profc_wmemmove
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wmemmove
	lg	%r0, 184(%r11)
	stg	%r0, 160(%r11)
	lg	%r0, 184(%r11)
	lg	%r1, 176(%r11)
	cgr	%r0, %r1
	jlh	.LBB67_2
	j	.LBB67_1
.LBB67_1:
	lgrl	%r1, .L__profc_wmemmove+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wmemmove+8
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
	lgrl	%r1, .L__profc_wmemmove+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wmemmove+16
	j	.LBB67_4
.LBB67_4:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 168(%r11)
	lay	%r0, -1(%r1)
	stg	%r0, 168(%r11)
	cghi	%r1, 0
	je	.LBB67_6
	j	.LBB67_5
.LBB67_5:                               #   in Loop: Header=BB67_4 Depth=1
	lgrl	%r1, .L__profc_wmemmove+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wmemmove+24
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
	lgrl	%r1, .L__profc_wmemmove+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wmemmove+32
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
	lgrl	%r1, .L__profc_wmemset
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wmemset
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
	lgrl	%r1, .L__profc_wmemset+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_wmemset+8
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
	lgrl	%r1, .L__profc_bcopy
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_bcopy
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
	lgrl	%r1, .L__profc_bcopy+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_bcopy+8
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
	lgrl	%r1, .L__profc_bcopy+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_bcopy+16
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
	lgrl	%r1, .L__profc_bcopy+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_bcopy+24
	j	.LBB69_8
.LBB69_8:                               # =>This Inner Loop Header: Depth=1
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB69_11
	j	.LBB69_9
.LBB69_9:                               #   in Loop: Header=BB69_8 Depth=1
	lgrl	%r1, .L__profc_bcopy+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_bcopy+32
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
	lgrl	%r1, .L__profc_rotl64
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_rotl64
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
	lgrl	%r1, .L__profc_rotr64
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_rotr64
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
	lgrl	%r1, .L__profc_rotl32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_rotl32
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
	lgrl	%r1, .L__profc_rotr32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_rotr32
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
	lgrl	%r1, .L__profc_rotl_sz
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_rotl_sz
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
	lgrl	%r1, .L__profc_rotr_sz
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_rotr_sz
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
	lgrl	%r1, .L__profc_rotl16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_rotl16
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
	lgrl	%r1, .L__profc_rotr16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_rotr16
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
	lgrl	%r1, .L__profc_rotl8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_rotl8
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
	lgrl	%r1, .L__profc_rotr8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_rotr8
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
	lgrl	%r1, .L__profc_bswap_16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_bswap_16
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
	lgrl	%r1, .L__profc_bswap_32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_bswap_32
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
	lgrl	%r1, .L__profc_bswap_64
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_bswap_64
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
	lgrl	%r1, .L__profc_ffs
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ffs
	mvhi	164(%r11), 0
	j	.LBB83_1
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	l	%r0, 164(%r11)
	clfi	%r0, 31
	jh	.LBB83_6
	j	.LBB83_2
.LBB83_2:                               #   in Loop: Header=BB83_1 Depth=1
	lgrl	%r1, .L__profc_ffs+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ffs+8
	l	%r0, 168(%r11)
	l	%r1, 164(%r11)
	srl	%r0, 0(%r1)
	tmll	%r0, 1
	je	.LBB83_4
	j	.LBB83_3
.LBB83_3:
	lgrl	%r1, .L__profc_ffs+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ffs+16
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
	lgrl	%r1, .L__profc_libiberty_ffs
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_libiberty_ffs
	l	%r0, 168(%r11)
	chi	%r0, 0
	jlh	.LBB84_2
	j	.LBB84_1
.LBB84_1:
	lgrl	%r1, .L__profc_libiberty_ffs+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_libiberty_ffs+8
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
	lgrl	%r1, .L__profc_libiberty_ffs+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_libiberty_ffs+16
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
	aghi	%r15, -176
	.cfi_def_cfa_offset 336
	stg	%r1, 0(%r15)
	lgr	%r11, %r15
	.cfi_def_cfa_register %r11
                                        # kill: def $r0l killed $r2l
	st	%r2, 172(%r11)
	lgrl	%r1, .L__profc_gl_isinff
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_gl_isinff
	llgf	%r2, 172(%r11)
	llilf	%r3, 4286578687
	brasl	%r14, __ltsf2@PLT
	lr	%r1, %r2
	lhi	%r0, 1
	chi	%r1, 0
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	jl	.LBB85_3
	j	.LBB85_1
.LBB85_1:
	lgrl	%r1, .L__profc_gl_isinff+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_gl_isinff+8
	llgf	%r2, 172(%r11)
	lgfi	%r3, 2139095039
	brasl	%r14, __gtsf2@PLT
	lr	%r1, %r2
	chi	%r1, 0
	ipm	%r0
                                        # implicit-def: $r2d
	lr	%r2, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r2, 63, 191, 35
	chi	%r1, 0
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	jh	.LBB85_3
	j	.LBB85_2
.LBB85_2:
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_gl_isinff+16
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_gl_isinff+16
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	j	.LBB85_3
.LBB85_3:
	l	%r1, 168(%r11)                  # 4-byte Folded Reload
                                        # implicit-def: $r0d
	lr	%r0, %r1
                                        # implicit-def: $r2d
	risbg	%r2, %r0, 63, 191, 0
	lmg	%r11, %r15, 264(%r11)
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
	lgrl	%r1, .L__profc_gl_isinfd
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_gl_isinfd
	lg	%r2, 168(%r11)
	llihf	%r3, 4293918719
	oilf	%r3, 4294967295
	brasl	%r14, __ltdf2@PLT
	lr	%r1, %r2
	lhi	%r0, 1
	chi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jl	.LBB86_3
	j	.LBB86_1
.LBB86_1:
	lgrl	%r1, .L__profc_gl_isinfd+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_gl_isinfd+8
	lg	%r2, 168(%r11)
	llihf	%r3, 2146435071
	oilf	%r3, 4294967295
	brasl	%r14, __gtdf2@PLT
	lr	%r1, %r2
	chi	%r1, 0
	ipm	%r0
                                        # implicit-def: $r2d
	lr	%r2, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r2, 63, 191, 35
	chi	%r1, 0
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jh	.LBB86_3
	j	.LBB86_2
.LBB86_2:
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_gl_isinfd+16
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_gl_isinfd+16
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB86_3
.LBB86_3:
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
	lgrl	%r1, .L__profc_gl_isinfl
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_gl_isinfl
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
	jl	.LBB87_3
	j	.LBB87_1
.LBB87_1:
	lgrl	%r1, .L__profc_gl_isinfl+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_gl_isinfl+8
	lg	%r0, 232(%r11)
	lg	%r1, 240(%r11)
	llihf	%r2, 2147418111
	oilf	%r2, 4294967295
	stg	%r2, 168(%r11)
	stg	%r1, 192(%r11)
	stg	%r0, 184(%r11)
	mvghi	176(%r11), -1
	la	%r2, 184(%r11)
	la	%r3, 168(%r11)
	brasl	%r14, __gttf2@PLT
	lr	%r1, %r2
	chi	%r1, 0
	ipm	%r0
                                        # implicit-def: $r2d
	lr	%r2, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r2, 63, 191, 35
	chi	%r1, 0
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jh	.LBB87_3
	j	.LBB87_2
.LBB87_2:
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_gl_isinfl+16
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_gl_isinfl+16
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB87_3
.LBB87_3:
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
	lgrl	%r1, .L__profc__Qp_itoq
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc__Qp_itoq
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
	lgrl	%r1, .L__profc_ldexpf
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexpf
	l	%r0, 188(%r11)
	nilh	%r0, 32767
	cfi	%r0, 2139095040
	jh	.LBB89_12
	j	.LBB89_1
.LBB89_1:
	lgrl	%r1, .L__profc_ldexpf+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexpf+16
	llgf	%r3, 188(%r11)
	stg	%r3, 168(%r11)                  # 8-byte Folded Spill
	lgr	%r2, %r3
	brasl	%r14, __addsf3@PLT
	lg	%r3, 168(%r11)                  # 8-byte Folded Reload
	brasl	%r14, __eqsf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	je	.LBB89_12
	j	.LBB89_2
.LBB89_2:
	lgrl	%r1, .L__profc_ldexpf+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexpf+24
	j	.LBB89_3
.LBB89_3:
	lgrl	%r1, .L__profc_ldexpf+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexpf+8
	l	%r0, 184(%r11)
	lr	%r2, %r0
	srl	%r2, 31
	lgrl	%r1, .L__profc_ldexpf+32
	algfr	%r1, %r2
	stgrl	%r1, .L__profc_ldexpf+32
	chi	%r0, 0
	iilf	%r0, 1073741824
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	iilf	%r0, 1056964608
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jl	.LBB89_5
# %bb.4:
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
.LBB89_5:
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	st	%r0, 180(%r11)
	j	.LBB89_6
.LBB89_6:                               # =>This Inner Loop Header: Depth=1
	lgrl	%r1, .L__profc_ldexpf+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexpf+40
	l	%r0, 184(%r11)
	lr	%r2, %r0
	srl	%r2, 31
	lr	%r1, %r0
	ar	%r1, %r2
	nill	%r1, 65534
	sr	%r0, %r1
	chi	%r0, 0
	je	.LBB89_8
	j	.LBB89_7
.LBB89_7:                               #   in Loop: Header=BB89_6 Depth=1
	lgrl	%r1, .L__profc_ldexpf+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexpf+48
	llgf	%r3, 180(%r11)
	llgf	%r2, 188(%r11)
	brasl	%r14, __mulsf3@PLT
	lr	%r0, %r2
	st	%r0, 188(%r11)
	j	.LBB89_8
.LBB89_8:                               #   in Loop: Header=BB89_6 Depth=1
	l	%r0, 184(%r11)
	lr	%r1, %r0
	srl	%r1, 31
	ar	%r0, %r1
	sra	%r0, 1
	st	%r0, 184(%r11)
	l	%r0, 184(%r11)
	chi	%r0, 0
	jlh	.LBB89_10
	j	.LBB89_9
.LBB89_9:
	lgrl	%r1, .L__profc_ldexpf+56
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexpf+56
	j	.LBB89_11
.LBB89_10:                              #   in Loop: Header=BB89_6 Depth=1
	llgf	%r3, 180(%r11)
	lgr	%r2, %r3
	brasl	%r14, __mulsf3@PLT
	lr	%r0, %r2
	st	%r0, 180(%r11)
	j	.LBB89_6
.LBB89_11:
	j	.LBB89_12
.LBB89_12:
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
	lgrl	%r1, .L__profc_ldexp
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexp
	lg	%r0, 200(%r11)
	nihh	%r0, 32767
	llihh	%r1, 32752
	cgr	%r0, %r1
	jh	.LBB90_12
	j	.LBB90_1
.LBB90_1:
	lgrl	%r1, .L__profc_ldexp+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexp+16
	lg	%r3, 200(%r11)
	stg	%r3, 176(%r11)                  # 8-byte Folded Spill
	lgr	%r2, %r3
	brasl	%r14, __adddf3@PLT
	lg	%r3, 176(%r11)                  # 8-byte Folded Reload
	brasl	%r14, __eqdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	je	.LBB90_12
	j	.LBB90_2
.LBB90_2:
	lgrl	%r1, .L__profc_ldexp+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexp+24
	j	.LBB90_3
.LBB90_3:
	lgrl	%r1, .L__profc_ldexp+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexp+8
	l	%r0, 196(%r11)
	lr	%r2, %r0
	srl	%r2, 31
	lgrl	%r1, .L__profc_ldexp+32
	algfr	%r1, %r2
	stgrl	%r1, .L__profc_ldexp+32
	chi	%r0, 0
	llihh	%r0, 16384
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	llihh	%r0, 16352
	stg	%r0, 168(%r11)                  # 8-byte Folded Spill
	jl	.LBB90_5
# %bb.4:
	lg	%r0, 160(%r11)                  # 8-byte Folded Reload
	stg	%r0, 168(%r11)                  # 8-byte Folded Spill
.LBB90_5:
	lg	%r0, 168(%r11)                  # 8-byte Folded Reload
	stg	%r0, 184(%r11)
	j	.LBB90_6
.LBB90_6:                               # =>This Inner Loop Header: Depth=1
	lgrl	%r1, .L__profc_ldexp+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexp+40
	l	%r0, 196(%r11)
	lr	%r2, %r0
	srl	%r2, 31
	lr	%r1, %r0
	ar	%r1, %r2
	nill	%r1, 65534
	sr	%r0, %r1
	chi	%r0, 0
	je	.LBB90_8
	j	.LBB90_7
.LBB90_7:                               #   in Loop: Header=BB90_6 Depth=1
	lgrl	%r1, .L__profc_ldexp+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexp+48
	lg	%r3, 184(%r11)
	lg	%r2, 200(%r11)
	brasl	%r14, __muldf3@PLT
	stg	%r2, 200(%r11)
	j	.LBB90_8
.LBB90_8:                               #   in Loop: Header=BB90_6 Depth=1
	l	%r0, 196(%r11)
	lr	%r1, %r0
	srl	%r1, 31
	ar	%r0, %r1
	sra	%r0, 1
	st	%r0, 196(%r11)
	l	%r0, 196(%r11)
	chi	%r0, 0
	jlh	.LBB90_10
	j	.LBB90_9
.LBB90_9:
	lgrl	%r1, .L__profc_ldexp+56
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexp+56
	j	.LBB90_11
.LBB90_10:                              #   in Loop: Header=BB90_6 Depth=1
	lg	%r3, 184(%r11)
	lgr	%r2, %r3
	brasl	%r14, __muldf3@PLT
	stg	%r2, 184(%r11)
	j	.LBB90_6
.LBB90_11:
	j	.LBB90_12
.LBB90_12:
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
	lgrl	%r1, .L__profc_ldexpl
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexpl
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
	jlh	.LBB91_14
	j	.LBB91_3
.LBB91_3:
	lgrl	%r1, .L__profc_ldexpl+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexpl+16
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
	je	.LBB91_14
	j	.LBB91_4
.LBB91_4:
	lgrl	%r1, .L__profc_ldexpl+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexpl+24
	j	.LBB91_5
.LBB91_5:
	lgrl	%r1, .L__profc_ldexpl+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexpl+8
	l	%r0, 404(%r11)
	lr	%r2, %r0
	srl	%r2, 31
	lgrl	%r1, .L__profc_ldexpl+32
	algfr	%r1, %r2
	stgrl	%r1, .L__profc_ldexpl+32
	chi	%r0, 0
	llihh	%r0, 16384
	stg	%r0, 160(%r11)                  # 8-byte Folded Spill
	llihh	%r0, 16382
	stg	%r0, 168(%r11)                  # 8-byte Folded Spill
	jl	.LBB91_7
# %bb.6:
	lg	%r0, 160(%r11)                  # 8-byte Folded Reload
	stg	%r0, 168(%r11)                  # 8-byte Folded Spill
.LBB91_7:
	lg	%r0, 168(%r11)                  # 8-byte Folded Reload
	stg	%r0, 384(%r11)
	mvghi	392(%r11), 0
	j	.LBB91_8
.LBB91_8:                               # =>This Inner Loop Header: Depth=1
	lgrl	%r1, .L__profc_ldexpl+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexpl+40
	l	%r0, 404(%r11)
	lr	%r2, %r0
	srl	%r2, 31
	lr	%r1, %r0
	ar	%r1, %r2
	nill	%r1, 65534
	sr	%r0, %r1
	chi	%r0, 0
	je	.LBB91_10
	j	.LBB91_9
.LBB91_9:                               #   in Loop: Header=BB91_8 Depth=1
	lgrl	%r1, .L__profc_ldexpl+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexpl+48
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
	j	.LBB91_10
.LBB91_10:                              #   in Loop: Header=BB91_8 Depth=1
	l	%r0, 404(%r11)
	lr	%r1, %r0
	srl	%r1, 31
	ar	%r0, %r1
	sra	%r0, 1
	st	%r0, 404(%r11)
	l	%r0, 404(%r11)
	chi	%r0, 0
	jlh	.LBB91_12
	j	.LBB91_11
.LBB91_11:
	lgrl	%r1, .L__profc_ldexpl+56
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_ldexpl+56
	j	.LBB91_13
.LBB91_12:                              #   in Loop: Header=BB91_8 Depth=1
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
	j	.LBB91_8
.LBB91_13:
	j	.LBB91_14
.LBB91_14:
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
	lgrl	%r1, .L__profc_memxor
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memxor
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
	lgrl	%r1, .L__profc_memxor+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memxor+8
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
	lgrl	%r1, .L__profc_strncat
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strncat
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
	je	.LBB93_6
	j	.LBB93_4
.LBB93_4:                               #   in Loop: Header=BB93_3 Depth=1
	lgrl	%r1, .L__profc_strncat+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strncat+16
	lg	%r1, 216(%r11)
	llc	%r1, 0(%r1)
	chi	%r1, 0
	ipm	%r0
	afi	%r0, 1879048192
	chi	%r1, 0
	lg	%r2, 200(%r11)
	stc	%r1, 0(%r2)
	srl	%r0, 31
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB93_6
	j	.LBB93_5
.LBB93_5:                               #   in Loop: Header=BB93_3 Depth=1
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_strncat+24
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_strncat+24
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB93_6
.LBB93_6:                               #   in Loop: Header=BB93_3 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB93_9
	j	.LBB93_7
.LBB93_7:                               #   in Loop: Header=BB93_3 Depth=1
	lgrl	%r1, .L__profc_strncat+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strncat+8
	j	.LBB93_8
.LBB93_8:                               #   in Loop: Header=BB93_3 Depth=1
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
.LBB93_9:
	lg	%r0, 208(%r11)
	cghi	%r0, 0
	jlh	.LBB93_11
	j	.LBB93_10
.LBB93_10:
	lgrl	%r1, .L__profc_strncat+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strncat+32
	lg	%r1, 200(%r11)
	mvi	0(%r1), 0
	j	.LBB93_11
.LBB93_11:
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
	lgrl	%r1, .L__profc_strnlen
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strnlen
	mvghi	168(%r11), 0
	j	.LBB94_1
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 168(%r11)
	lg	%r2, 176(%r11)
	lhi	%r0, 0
	clgr	%r1, %r2
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jhe	.LBB94_4
	j	.LBB94_2
.LBB94_2:                               #   in Loop: Header=BB94_1 Depth=1
	lgrl	%r1, .L__profc_strnlen+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strnlen+16
	lg	%r1, 184(%r11)
	lg	%r2, 168(%r11)
	llc	%r1, 0(%r2,%r1)
	chi	%r1, 0
	ipm	%r0
	afi	%r0, 1879048192
	chi	%r1, 0
	srl	%r0, 31
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB94_4
	j	.LBB94_3
.LBB94_3:                               #   in Loop: Header=BB94_1 Depth=1
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_strnlen+24
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_strnlen+24
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB94_4
.LBB94_4:                               #   in Loop: Header=BB94_1 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB94_7
	j	.LBB94_5
.LBB94_5:                               #   in Loop: Header=BB94_1 Depth=1
	lgrl	%r1, .L__profc_strnlen+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strnlen+8
	j	.LBB94_6
.LBB94_6:                               #   in Loop: Header=BB94_1 Depth=1
	lg	%r1, 168(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 168(%r11)
	j	.LBB94_1
.LBB94_7:
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
	lgrl	%r1, .L__profc_strpbrk
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strpbrk
	j	.LBB95_1
.LBB95_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_3 Depth 2
	lg	%r1, 176(%r11)
	llc	%r0, 0(%r1)
	chi	%r0, 0
	je	.LBB95_8
	j	.LBB95_2
.LBB95_2:                               #   in Loop: Header=BB95_1 Depth=1
	lgrl	%r1, .L__profc_strpbrk+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strpbrk+8
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
	lgrl	%r1, .L__profc_strpbrk+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strpbrk+16
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
	lgrl	%r1, .L__profc_strpbrk+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strpbrk+24
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
	lgrl	%r1, .L__profc_strrchr
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strrchr
	mvghi	160(%r11), 0
	j	.LBB96_2
.LBB96_1:                               #   in Loop: Header=BB96_2 Depth=1
	lgrl	%r1, .L__profc_strrchr+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strrchr+8
	j	.LBB96_2
.LBB96_2:                               # =>This Inner Loop Header: Depth=1
	lg	%r1, 176(%r11)
	llc	%r0, 0(%r1)
	l	%r1, 172(%r11)
	cr	%r0, %r1
	jlh	.LBB96_4
	j	.LBB96_3
.LBB96_3:                               #   in Loop: Header=BB96_2 Depth=1
	lgrl	%r1, .L__profc_strrchr+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strrchr+16
	lg	%r0, 176(%r11)
	stg	%r0, 160(%r11)
	j	.LBB96_4
.LBB96_4:                               #   in Loop: Header=BB96_2 Depth=1
	j	.LBB96_5
.LBB96_5:                               #   in Loop: Header=BB96_2 Depth=1
	lg	%r1, 176(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 176(%r11)
	llc	%r0, 0(%r1)
	chi	%r0, 0
	jlh	.LBB96_1
	j	.LBB96_6
.LBB96_6:
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
	lgrl	%r1, .L__profc_strstr
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strstr
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
	lgrl	%r1, .L__profc_strstr+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strstr+8
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
	lgrl	%r1, .L__profc_strstr+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strstr+16
	lg	%r2, 208(%r11)
	lg	%r3, 216(%r11)
	lg	%r4, 200(%r11)
	brasl	%r14, strncmp@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jlh	.LBB97_8
	j	.LBB97_7
.LBB97_7:
	lgrl	%r1, .L__profc_strstr+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_strstr+24
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
	lgrl	%r1, .L__profc_copysign
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_copysign
	lg	%r2, 168(%r11)
	lghi	%r3, 0
	brasl	%r14, __ltdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jhe	.LBB98_3
	j	.LBB98_1
.LBB98_1:
	lgrl	%r1, .L__profc_copysign+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_copysign+24
	lg	%r2, 160(%r11)
	lghi	%r3, 0
	brasl	%r14, __gtdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jle	.LBB98_3
	j	.LBB98_2
.LBB98_2:
	lgrl	%r1, .L__profc_copysign+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_copysign+32
	j	.LBB98_6
.LBB98_3:
	lgrl	%r1, .L__profc_copysign+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_copysign+16
	lg	%r2, 168(%r11)
	lghi	%r3, 0
	brasl	%r14, __gtdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jle	.LBB98_7
	j	.LBB98_4
.LBB98_4:
	lgrl	%r1, .L__profc_copysign+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_copysign+40
	lg	%r2, 160(%r11)
	lghi	%r3, 0
	brasl	%r14, __ltdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jhe	.LBB98_7
	j	.LBB98_5
.LBB98_5:
	lgrl	%r1, .L__profc_copysign+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_copysign+48
	j	.LBB98_6
.LBB98_6:
	lgrl	%r1, .L__profc_copysign+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_copysign+8
	lg	%r0, 168(%r11)
	xihf	%r0, 2147483648
	stg	%r0, 176(%r11)
	j	.LBB98_8
.LBB98_7:
	lg	%r0, 168(%r11)
	stg	%r0, 176(%r11)
	j	.LBB98_8
.LBB98_8:
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
	lgrl	%r1, .L__profc_memmem
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memmem
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
	lgrl	%r1, .L__profc_memmem+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memmem+8
	lg	%r0, 280(%r11)
	stg	%r0, 288(%r11)
	j	.LBB99_19
.LBB99_2:
	lg	%r0, 272(%r11)
	lg	%r1, 256(%r11)
	clgr	%r0, %r1
	jhe	.LBB99_4
	j	.LBB99_3
.LBB99_3:
	lgrl	%r1, .L__profc_memmem+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memmem+16
	mvghi	288(%r11), 0
	j	.LBB99_19
.LBB99_4:
	lg	%r0, 280(%r11)
	stg	%r0, 248(%r11)
	j	.LBB99_5
.LBB99_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB99_9 Depth 2
	lg	%r0, 248(%r11)
	lg	%r1, 240(%r11)
	clgr	%r0, %r1
	jh	.LBB99_18
	j	.LBB99_6
.LBB99_6:                               #   in Loop: Header=BB99_5 Depth=1
	lgrl	%r1, .L__profc_memmem+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memmem+24
	lg	%r1, 248(%r11)
	llc	%r0, 0(%r1)
	lg	%r1, 264(%r11)
	llc	%r1, 0(%r1)
	cr	%r0, %r1
	jlh	.LBB99_16
	j	.LBB99_7
.LBB99_7:                               #   in Loop: Header=BB99_5 Depth=1
	lgrl	%r1, .L__profc_memmem+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memmem+40
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
	jlh	.LBB99_16
	j	.LBB99_14
.LBB99_14:
	lgrl	%r1, .L__profc_memmem+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memmem+48
	j	.LBB99_15
.LBB99_15:
	lgrl	%r1, .L__profc_memmem+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_memmem+32
	lg	%r0, 248(%r11)
	stg	%r0, 288(%r11)
	j	.LBB99_19
.LBB99_16:                              #   in Loop: Header=BB99_5 Depth=1
	j	.LBB99_17
.LBB99_17:                              #   in Loop: Header=BB99_5 Depth=1
	lg	%r1, 248(%r11)
	la	%r0, 1(%r1)
	stg	%r0, 248(%r11)
	j	.LBB99_5
.LBB99_18:
	mvghi	288(%r11), 0
	j	.LBB99_19
.LBB99_19:
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
	lgrl	%r1, .L__profc_mempcpy
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_mempcpy
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
	lgrl	%r1, .L__profc_frexp
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_frexp
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
	lgrl	%r1, .L__profc_frexp+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_frexp+8
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
	lgrl	%r1, .L__profc_frexp+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_frexp+16
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
	lgrl	%r1, .L__profc_frexp+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_frexp+24
	l	%r0, 160(%r11)
	ahi	%r0, 1
	st	%r0, 160(%r11)
	lg	%r2, 176(%r11)
	llihh	%r3, 16352
	brasl	%r14, __muldf3@PLT
	stg	%r2, 176(%r11)
	j	.LBB101_4
.LBB101_6:
	j	.LBB101_15
.LBB101_7:
	lg	%r2, 176(%r11)
	llihh	%r3, 16352
	brasl	%r14, __ltdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jhe	.LBB101_14
	j	.LBB101_8
.LBB101_8:
	lgrl	%r1, .L__profc_frexp+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_frexp+40
	lg	%r2, 176(%r11)
	lghi	%r3, 0
	brasl	%r14, __eqdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	je	.LBB101_14
	j	.LBB101_9
.LBB101_9:
	lgrl	%r1, .L__profc_frexp+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_frexp+48
	j	.LBB101_10
.LBB101_10:
	lgrl	%r1, .L__profc_frexp+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_frexp+32
	j	.LBB101_11
.LBB101_11:                             # =>This Inner Loop Header: Depth=1
	lg	%r2, 176(%r11)
	llihh	%r3, 16352
	brasl	%r14, __ltdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jhe	.LBB101_13
	j	.LBB101_12
.LBB101_12:                             #   in Loop: Header=BB101_11 Depth=1
	lgrl	%r1, .L__profc_frexp+56
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_frexp+56
	l	%r0, 160(%r11)
	ahi	%r0, -1
	st	%r0, 160(%r11)
	lg	%r3, 176(%r11)
	lgr	%r2, %r3
	brasl	%r14, __adddf3@PLT
	stg	%r2, 176(%r11)
	j	.LBB101_11
.LBB101_13:
	j	.LBB101_14
.LBB101_14:
	j	.LBB101_15
.LBB101_15:
	l	%r0, 160(%r11)
	lg	%r1, 168(%r11)
	st	%r0, 0(%r1)
	l	%r0, 164(%r11)
	chi	%r0, 0
	je	.LBB101_17
	j	.LBB101_16
.LBB101_16:
	lgrl	%r1, .L__profc_frexp+64
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_frexp+64
	lg	%r0, 176(%r11)
	xihf	%r0, 2147483648
	stg	%r0, 176(%r11)
	j	.LBB101_17
.LBB101_17:
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
	lgrl	%r1, .L__profc___muldi3
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___muldi3
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
	lgrl	%r1, .L__profc___muldi3+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___muldi3+8
	llc	%r0, 167(%r11)
	tmll	%r0, 1
	je	.LBB102_4
	j	.LBB102_3
.LBB102_3:                              #   in Loop: Header=BB102_1 Depth=1
	lgrl	%r1, .L__profc___muldi3+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___muldi3+16
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
	lgrl	%r1, .L__profc_udivmodsi4
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_udivmodsi4
	mvhi	172(%r11), 1
	mvhi	168(%r11), 0
	j	.LBB103_1
.LBB103_1:                              # =>This Inner Loop Header: Depth=1
	l	%r1, 188(%r11)
	l	%r2, 192(%r11)
	lhi	%r0, 0
	clr	%r1, %r2
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jhe	.LBB103_6
	j	.LBB103_2
.LBB103_2:                              #   in Loop: Header=BB103_1 Depth=1
	lgrl	%r1, .L__profc_udivmodsi4+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_udivmodsi4+32
	l	%r1, 172(%r11)
	lhi	%r0, 0
	chi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB103_6
	j	.LBB103_3
.LBB103_3:                              #   in Loop: Header=BB103_1 Depth=1
	lgrl	%r1, .L__profc_udivmodsi4+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_udivmodsi4+40
	j	.LBB103_4
.LBB103_4:                              #   in Loop: Header=BB103_1 Depth=1
	lgrl	%r1, .L__profc_udivmodsi4+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_udivmodsi4+16
	llgf	%r1, 188(%r11)
	tmlh	%r1, 32768
	ipm	%r0
	afi	%r0, -268435456
	tmlh	%r1, 32768
	srl	%r0, 31
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jne	.LBB103_6
	j	.LBB103_5
.LBB103_5:                              #   in Loop: Header=BB103_1 Depth=1
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc_udivmodsi4+24
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc_udivmodsi4+24
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB103_6
.LBB103_6:                              #   in Loop: Header=BB103_1 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB103_8
	j	.LBB103_7
.LBB103_7:                              #   in Loop: Header=BB103_1 Depth=1
	lgrl	%r1, .L__profc_udivmodsi4+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_udivmodsi4+8
	l	%r0, 188(%r11)
	sll	%r0, 1
	st	%r0, 188(%r11)
	l	%r0, 172(%r11)
	sll	%r0, 1
	st	%r0, 172(%r11)
	j	.LBB103_1
.LBB103_8:
	j	.LBB103_9
.LBB103_9:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 172(%r11)
	chi	%r0, 0
	je	.LBB103_13
	j	.LBB103_10
.LBB103_10:                             #   in Loop: Header=BB103_9 Depth=1
	lgrl	%r1, .L__profc_udivmodsi4+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_udivmodsi4+48
	l	%r0, 192(%r11)
	l	%r1, 188(%r11)
	clr	%r0, %r1
	jl	.LBB103_12
	j	.LBB103_11
.LBB103_11:                             #   in Loop: Header=BB103_9 Depth=1
	lgrl	%r1, .L__profc_udivmodsi4+56
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_udivmodsi4+56
	l	%r1, 188(%r11)
	l	%r0, 192(%r11)
	sr	%r0, %r1
	st	%r0, 192(%r11)
	l	%r1, 172(%r11)
	l	%r0, 168(%r11)
	or	%r0, %r1
	st	%r0, 168(%r11)
	j	.LBB103_12
.LBB103_12:                             #   in Loop: Header=BB103_9 Depth=1
	l	%r0, 172(%r11)
	srl	%r0, 1
	st	%r0, 172(%r11)
	l	%r0, 188(%r11)
	srl	%r0, 1
	st	%r0, 188(%r11)
	j	.LBB103_9
.LBB103_13:
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB103_15
	j	.LBB103_14
.LBB103_14:
	lgrl	%r1, .L__profc_udivmodsi4+64
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc_udivmodsi4+64
	l	%r0, 192(%r11)
	st	%r0, 196(%r11)
	j	.LBB103_16
.LBB103_15:
	l	%r0, 168(%r11)
	st	%r0, 196(%r11)
	j	.LBB103_16
.LBB103_16:
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
	lgrl	%r1, .L__profc___clrsbqi2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___clrsbqi2
	llc	%r0, 171(%r11)
	chi	%r0, 0
	jhe	.LBB104_2
	j	.LBB104_1
.LBB104_1:
	lgrl	%r1, .L__profc___clrsbqi2+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___clrsbqi2+8
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
	lgrl	%r1, .L__profc___clrsbqi2+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___clrsbqi2+16
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
	lgrl	%r1, .L__profc___clrsbdi2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___clrsbdi2
	lg	%r0, 168(%r11)
	cghi	%r0, 0
	jhe	.LBB105_2
	j	.LBB105_1
.LBB105_1:
	lgrl	%r1, .L__profc___clrsbdi2+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___clrsbdi2+8
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
	lgrl	%r1, .L__profc___clrsbdi2+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___clrsbdi2+16
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
	lgrl	%r1, .L__profc___mulsi3
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mulsi3
	mvhi	164(%r11), 0
	j	.LBB106_1
.LBB106_1:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 172(%r11)
	chi	%r0, 0
	je	.LBB106_5
	j	.LBB106_2
.LBB106_2:                              #   in Loop: Header=BB106_1 Depth=1
	lgrl	%r1, .L__profc___mulsi3+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mulsi3+8
	llc	%r0, 175(%r11)
	tmll	%r0, 1
	je	.LBB106_4
	j	.LBB106_3
.LBB106_3:                              #   in Loop: Header=BB106_1 Depth=1
	lgrl	%r1, .L__profc___mulsi3+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mulsi3+16
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
	lgrl	%r1, .L__profc___cmovd
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovd
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
	jl	.LBB107_3
	j	.LBB107_1
.LBB107_1:
	lgrl	%r1, .L__profc___cmovd+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovd+16
	lg	%r1, 168(%r11)
	lg	%r0, 160(%r11)
	llgf	%r2, 188(%r11)
	agr	%r0, %r2
	clgr	%r0, %r1
	jl	.LBB107_3
	j	.LBB107_2
.LBB107_2:
	lgrl	%r1, .L__profc___cmovd+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovd+24
	j	.LBB107_11
.LBB107_3:
	lgrl	%r1, .L__profc___cmovd+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovd+8
	mvhi	184(%r11), 0
	j	.LBB107_4
.LBB107_4:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 184(%r11)
	l	%r1, 180(%r11)
	clr	%r0, %r1
	jhe	.LBB107_7
	j	.LBB107_5
.LBB107_5:                              #   in Loop: Header=BB107_4 Depth=1
	lgrl	%r1, .L__profc___cmovd+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovd+32
	lg	%r1, 192(%r11)
	llgf	%r0, 184(%r11)
	sllg	%r2, %r0, 3
	lg	%r0, 0(%r2,%r1)
	lg	%r1, 200(%r11)
	stg	%r0, 0(%r2,%r1)
	j	.LBB107_6
.LBB107_6:                              #   in Loop: Header=BB107_4 Depth=1
	l	%r0, 184(%r11)
	ahi	%r0, 1
	st	%r0, 184(%r11)
	j	.LBB107_4
.LBB107_7:
	j	.LBB107_8
.LBB107_8:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 188(%r11)
	l	%r1, 176(%r11)
	clr	%r0, %r1
	jle	.LBB107_10
	j	.LBB107_9
.LBB107_9:                              #   in Loop: Header=BB107_8 Depth=1
	lgrl	%r1, .L__profc___cmovd+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovd+40
	lg	%r1, 160(%r11)
	llgf	%r2, 176(%r11)
	lb	%r0, 0(%r2,%r1)
	lg	%r1, 168(%r11)
	stc	%r0, 0(%r2,%r1)
	l	%r0, 176(%r11)
	ahi	%r0, 1
	st	%r0, 176(%r11)
	j	.LBB107_8
.LBB107_10:
	j	.LBB107_15
.LBB107_11:
	j	.LBB107_12
.LBB107_12:                             # =>This Inner Loop Header: Depth=1
	l	%r0, 188(%r11)
	lr	%r1, %r0
	ahi	%r1, -1
	st	%r1, 188(%r11)
	chi	%r0, 0
	je	.LBB107_14
	j	.LBB107_13
.LBB107_13:                             #   in Loop: Header=BB107_12 Depth=1
	lgrl	%r1, .L__profc___cmovd+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovd+48
	lg	%r1, 160(%r11)
	llgf	%r2, 188(%r11)
	lb	%r0, 0(%r2,%r1)
	lg	%r1, 168(%r11)
	stc	%r0, 0(%r2,%r1)
	j	.LBB107_12
.LBB107_14:
	j	.LBB107_15
.LBB107_15:
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
	lgrl	%r1, .L__profc___cmovh
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovh
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
	jl	.LBB108_3
	j	.LBB108_1
.LBB108_1:
	lgrl	%r1, .L__profc___cmovh+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovh+16
	lg	%r1, 168(%r11)
	lg	%r0, 160(%r11)
	llgf	%r2, 188(%r11)
	agr	%r0, %r2
	clgr	%r0, %r1
	jl	.LBB108_3
	j	.LBB108_2
.LBB108_2:
	lgrl	%r1, .L__profc___cmovh+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovh+24
	j	.LBB108_10
.LBB108_3:
	lgrl	%r1, .L__profc___cmovh+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovh+8
	mvhi	184(%r11), 0
	j	.LBB108_4
.LBB108_4:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 184(%r11)
	l	%r1, 180(%r11)
	clr	%r0, %r1
	jhe	.LBB108_7
	j	.LBB108_5
.LBB108_5:                              #   in Loop: Header=BB108_4 Depth=1
	lgrl	%r1, .L__profc___cmovh+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovh+32
	lg	%r1, 192(%r11)
	llgf	%r0, 184(%r11)
	sllg	%r2, %r0, 1
	lh	%r0, 0(%r2,%r1)
	lg	%r1, 200(%r11)
	sth	%r0, 0(%r2,%r1)
	j	.LBB108_6
.LBB108_6:                              #   in Loop: Header=BB108_4 Depth=1
	l	%r0, 184(%r11)
	ahi	%r0, 1
	st	%r0, 184(%r11)
	j	.LBB108_4
.LBB108_7:
	llc	%r0, 191(%r11)
	tmll	%r0, 1
	je	.LBB108_9
	j	.LBB108_8
.LBB108_8:
	lgrl	%r1, .L__profc___cmovh+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovh+40
	lg	%r1, 160(%r11)
	l	%r0, 188(%r11)
	ahi	%r0, -1
	llgfr	%r2, %r0
	lb	%r0, 0(%r2,%r1)
	lg	%r1, 168(%r11)
	stc	%r0, 0(%r2,%r1)
	j	.LBB108_9
.LBB108_9:
	j	.LBB108_14
.LBB108_10:
	j	.LBB108_11
.LBB108_11:                             # =>This Inner Loop Header: Depth=1
	l	%r0, 188(%r11)
	lr	%r1, %r0
	ahi	%r1, -1
	st	%r1, 188(%r11)
	chi	%r0, 0
	je	.LBB108_13
	j	.LBB108_12
.LBB108_12:                             #   in Loop: Header=BB108_11 Depth=1
	lgrl	%r1, .L__profc___cmovh+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovh+48
	lg	%r1, 160(%r11)
	llgf	%r2, 188(%r11)
	lb	%r0, 0(%r2,%r1)
	lg	%r1, 168(%r11)
	stc	%r0, 0(%r2,%r1)
	j	.LBB108_11
.LBB108_13:
	j	.LBB108_14
.LBB108_14:
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
	lgrl	%r1, .L__profc___cmovw
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovw
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
	jl	.LBB109_3
	j	.LBB109_1
.LBB109_1:
	lgrl	%r1, .L__profc___cmovw+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovw+16
	lg	%r1, 168(%r11)
	lg	%r0, 160(%r11)
	llgf	%r2, 188(%r11)
	agr	%r0, %r2
	clgr	%r0, %r1
	jl	.LBB109_3
	j	.LBB109_2
.LBB109_2:
	lgrl	%r1, .L__profc___cmovw+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovw+24
	j	.LBB109_11
.LBB109_3:
	lgrl	%r1, .L__profc___cmovw+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovw+8
	mvhi	184(%r11), 0
	j	.LBB109_4
.LBB109_4:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 184(%r11)
	l	%r1, 180(%r11)
	clr	%r0, %r1
	jhe	.LBB109_7
	j	.LBB109_5
.LBB109_5:                              #   in Loop: Header=BB109_4 Depth=1
	lgrl	%r1, .L__profc___cmovw+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovw+32
	lg	%r1, 192(%r11)
	llgf	%r0, 184(%r11)
	sllg	%r2, %r0, 2
	l	%r0, 0(%r2,%r1)
	lg	%r1, 200(%r11)
	st	%r0, 0(%r2,%r1)
	j	.LBB109_6
.LBB109_6:                              #   in Loop: Header=BB109_4 Depth=1
	l	%r0, 184(%r11)
	ahi	%r0, 1
	st	%r0, 184(%r11)
	j	.LBB109_4
.LBB109_7:
	j	.LBB109_8
.LBB109_8:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 188(%r11)
	l	%r1, 176(%r11)
	clr	%r0, %r1
	jle	.LBB109_10
	j	.LBB109_9
.LBB109_9:                              #   in Loop: Header=BB109_8 Depth=1
	lgrl	%r1, .L__profc___cmovw+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovw+40
	lg	%r1, 160(%r11)
	llgf	%r2, 176(%r11)
	lb	%r0, 0(%r2,%r1)
	lg	%r1, 168(%r11)
	stc	%r0, 0(%r2,%r1)
	l	%r0, 176(%r11)
	ahi	%r0, 1
	st	%r0, 176(%r11)
	j	.LBB109_8
.LBB109_10:
	j	.LBB109_15
.LBB109_11:
	j	.LBB109_12
.LBB109_12:                             # =>This Inner Loop Header: Depth=1
	l	%r0, 188(%r11)
	lr	%r1, %r0
	ahi	%r1, -1
	st	%r1, 188(%r11)
	chi	%r0, 0
	je	.LBB109_14
	j	.LBB109_13
.LBB109_13:                             #   in Loop: Header=BB109_12 Depth=1
	lgrl	%r1, .L__profc___cmovw+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmovw+48
	lg	%r1, 160(%r11)
	llgf	%r2, 188(%r11)
	lb	%r0, 0(%r2,%r1)
	lg	%r1, 168(%r11)
	stc	%r0, 0(%r2,%r1)
	j	.LBB109_12
.LBB109_14:
	j	.LBB109_15
.LBB109_15:
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
	lgrl	%r1, .L__profc___modi
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___modi
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
	lgrl	%r1, .L__profc___uitod
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___uitod
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
	lgrl	%r1, .L__profc___uitof
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___uitof
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
	lgrl	%r1, .L__profc___ulltod
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ulltod
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
	lgrl	%r1, .L__profc___ulltof
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ulltof
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
	lgrl	%r1, .L__profc___umodi
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___umodi
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
	lgrl	%r1, .L__profc___clzhi2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___clzhi2
	mvhi	160(%r11), 0
	j	.LBB116_1
.LBB116_1:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 160(%r11)
	chi	%r0, 15
	jh	.LBB116_6
	j	.LBB116_2
.LBB116_2:                              #   in Loop: Header=BB116_1 Depth=1
	lgrl	%r1, .L__profc___clzhi2+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___clzhi2+8
	llh	%r0, 166(%r11)
	l	%r2, 160(%r11)
	lhi	%r1, 15
	sr	%r1, %r2
	srl	%r0, 0(%r1)
	tmll	%r0, 1
	je	.LBB116_4
	j	.LBB116_3
.LBB116_3:
	lgrl	%r1, .L__profc___clzhi2+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___clzhi2+16
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
	lgrl	%r1, .L__profc___ctzhi2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ctzhi2
	mvhi	160(%r11), 0
	j	.LBB117_1
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 160(%r11)
	chi	%r0, 15
	jh	.LBB117_6
	j	.LBB117_2
.LBB117_2:                              #   in Loop: Header=BB117_1 Depth=1
	lgrl	%r1, .L__profc___ctzhi2+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ctzhi2+8
	llh	%r0, 166(%r11)
	l	%r1, 160(%r11)
	srl	%r0, 0(%r1)
	tmll	%r0, 1
	je	.LBB117_4
	j	.LBB117_3
.LBB117_3:
	lgrl	%r1, .L__profc___ctzhi2+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ctzhi2+16
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
	lgrl	%r1, .L__profc___fixunssfsi
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___fixunssfsi
	llgf	%r2, 164(%r11)
	llilh	%r3, 18176
	brasl	%r14, __gesf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jl	.LBB118_2
	j	.LBB118_1
.LBB118_1:
	lgrl	%r1, .L__profc___fixunssfsi+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___fixunssfsi+8
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
	lgrl	%r1, .L__profc___parityhi2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___parityhi2
	mvhi	164(%r11), 0
	mvhi	168(%r11), 0
	j	.LBB119_1
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 168(%r11)
	chi	%r0, 15
	jh	.LBB119_6
	j	.LBB119_2
.LBB119_2:                              #   in Loop: Header=BB119_1 Depth=1
	lgrl	%r1, .L__profc___parityhi2+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___parityhi2+8
	llh	%r0, 174(%r11)
	l	%r1, 168(%r11)
	srl	%r0, 0(%r1)
	tmll	%r0, 1
	je	.LBB119_4
	j	.LBB119_3
.LBB119_3:                              #   in Loop: Header=BB119_1 Depth=1
	lgrl	%r1, .L__profc___parityhi2+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___parityhi2+16
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
	lgrl	%r1, .L__profc___popcounthi2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___popcounthi2
	mvhi	164(%r11), 0
	mvhi	168(%r11), 0
	j	.LBB120_1
.LBB120_1:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 168(%r11)
	chi	%r0, 15
	jh	.LBB120_6
	j	.LBB120_2
.LBB120_2:                              #   in Loop: Header=BB120_1 Depth=1
	lgrl	%r1, .L__profc___popcounthi2+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___popcounthi2+8
	llh	%r0, 174(%r11)
	l	%r1, 168(%r11)
	srl	%r0, 0(%r1)
	tmll	%r0, 1
	je	.LBB120_4
	j	.LBB120_3
.LBB120_3:                              #   in Loop: Header=BB120_1 Depth=1
	lgrl	%r1, .L__profc___popcounthi2+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___popcounthi2+16
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
	lgrl	%r1, .L__profc___mulsi3_iq2000
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mulsi3_iq2000
	mvhi	164(%r11), 0
	j	.LBB121_1
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 172(%r11)
	chi	%r0, 0
	je	.LBB121_5
	j	.LBB121_2
.LBB121_2:                              #   in Loop: Header=BB121_1 Depth=1
	lgrl	%r1, .L__profc___mulsi3_iq2000+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mulsi3_iq2000+8
	llc	%r0, 175(%r11)
	tmll	%r0, 1
	je	.LBB121_4
	j	.LBB121_3
.LBB121_3:                              #   in Loop: Header=BB121_1 Depth=1
	lgrl	%r1, .L__profc___mulsi3_iq2000+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mulsi3_iq2000+16
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
	lgrl	%r1, .L__profc___mulsi3_lm32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mulsi3_lm32
	mvhi	160(%r11), 0
	l	%r0, 168(%r11)
	chi	%r0, 0
	jlh	.LBB122_2
	j	.LBB122_1
.LBB122_1:
	lgrl	%r1, .L__profc___mulsi3_lm32+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mulsi3_lm32+8
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
	lgrl	%r1, .L__profc___mulsi3_lm32+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mulsi3_lm32+16
	llc	%r0, 167(%r11)
	tmll	%r0, 1
	je	.LBB122_6
	j	.LBB122_5
.LBB122_5:                              #   in Loop: Header=BB122_3 Depth=1
	lgrl	%r1, .L__profc___mulsi3_lm32+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mulsi3_lm32+24
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
	lgrl	%r1, .L__profc___udivmodsi4
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodsi4
	mvhi	172(%r11), 1
	mvhi	168(%r11), 0
	j	.LBB123_1
.LBB123_1:                              # =>This Inner Loop Header: Depth=1
	l	%r1, 180(%r11)
	l	%r2, 184(%r11)
	lhi	%r0, 0
	clr	%r1, %r2
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jhe	.LBB123_6
	j	.LBB123_2
.LBB123_2:                              #   in Loop: Header=BB123_1 Depth=1
	lgrl	%r1, .L__profc___udivmodsi4+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodsi4+32
	l	%r1, 172(%r11)
	lhi	%r0, 0
	chi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB123_6
	j	.LBB123_3
.LBB123_3:                              #   in Loop: Header=BB123_1 Depth=1
	lgrl	%r1, .L__profc___udivmodsi4+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodsi4+40
	j	.LBB123_4
.LBB123_4:                              #   in Loop: Header=BB123_1 Depth=1
	lgrl	%r1, .L__profc___udivmodsi4+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodsi4+16
	llgf	%r1, 180(%r11)
	tmlh	%r1, 32768
	ipm	%r0
	afi	%r0, -268435456
	tmlh	%r1, 32768
	srl	%r0, 31
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jne	.LBB123_6
	j	.LBB123_5
.LBB123_5:                              #   in Loop: Header=BB123_1 Depth=1
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc___udivmodsi4+24
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc___udivmodsi4+24
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB123_6
.LBB123_6:                              #   in Loop: Header=BB123_1 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB123_8
	j	.LBB123_7
.LBB123_7:                              #   in Loop: Header=BB123_1 Depth=1
	lgrl	%r1, .L__profc___udivmodsi4+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodsi4+8
	l	%r0, 180(%r11)
	sll	%r0, 1
	st	%r0, 180(%r11)
	l	%r0, 172(%r11)
	sll	%r0, 1
	st	%r0, 172(%r11)
	j	.LBB123_1
.LBB123_8:
	j	.LBB123_9
.LBB123_9:                              # =>This Inner Loop Header: Depth=1
	l	%r0, 172(%r11)
	chi	%r0, 0
	je	.LBB123_13
	j	.LBB123_10
.LBB123_10:                             #   in Loop: Header=BB123_9 Depth=1
	lgrl	%r1, .L__profc___udivmodsi4+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodsi4+48
	l	%r0, 184(%r11)
	l	%r1, 180(%r11)
	clr	%r0, %r1
	jl	.LBB123_12
	j	.LBB123_11
.LBB123_11:                             #   in Loop: Header=BB123_9 Depth=1
	lgrl	%r1, .L__profc___udivmodsi4+56
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodsi4+56
	l	%r1, 180(%r11)
	l	%r0, 184(%r11)
	sr	%r0, %r1
	st	%r0, 184(%r11)
	l	%r1, 172(%r11)
	l	%r0, 168(%r11)
	or	%r0, %r1
	st	%r0, 168(%r11)
	j	.LBB123_12
.LBB123_12:                             #   in Loop: Header=BB123_9 Depth=1
	l	%r0, 172(%r11)
	srl	%r0, 1
	st	%r0, 172(%r11)
	l	%r0, 180(%r11)
	srl	%r0, 1
	st	%r0, 180(%r11)
	j	.LBB123_9
.LBB123_13:
	l	%r0, 176(%r11)
	chi	%r0, 0
	je	.LBB123_15
	j	.LBB123_14
.LBB123_14:
	lgrl	%r1, .L__profc___udivmodsi4+64
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodsi4+64
	l	%r0, 184(%r11)
	st	%r0, 188(%r11)
	j	.LBB123_16
.LBB123_15:
	l	%r0, 168(%r11)
	st	%r0, 188(%r11)
	j	.LBB123_16
.LBB123_16:
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
	lgrl	%r1, .L__profc___mspabi_cmpf
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mspabi_cmpf
	llgf	%r2, 168(%r11)
	llgf	%r3, 164(%r11)
	brasl	%r14, __ltsf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jhe	.LBB124_2
	j	.LBB124_1
.LBB124_1:
	lgrl	%r1, .L__profc___mspabi_cmpf+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mspabi_cmpf+8
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
	lgrl	%r1, .L__profc___mspabi_cmpf+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mspabi_cmpf+16
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
	lgrl	%r1, .L__profc___mspabi_cmpd
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mspabi_cmpd
	lg	%r2, 168(%r11)
	lg	%r3, 160(%r11)
	brasl	%r14, __ltdf2@PLT
	lr	%r0, %r2
	chi	%r0, 0
	jhe	.LBB125_2
	j	.LBB125_1
.LBB125_1:
	lgrl	%r1, .L__profc___mspabi_cmpd+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mspabi_cmpd+8
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
	lgrl	%r1, .L__profc___mspabi_cmpd+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mspabi_cmpd+16
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
	lgrl	%r1, .L__profc___mspabi_mpysll
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mspabi_mpysll
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
	lgrl	%r1, .L__profc___mspabi_mpyull
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mspabi_mpyull
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
	lgrl	%r1, .L__profc___mulhi3
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mulhi3
	mvhi	176(%r11), 0
	mvhi	172(%r11), 0
	l	%r0, 184(%r11)
	chi	%r0, 0
	jhe	.LBB128_2
	j	.LBB128_1
.LBB128_1:
	lgrl	%r1, .L__profc___mulhi3+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mulhi3+8
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
	je	.LBB128_6
	j	.LBB128_4
.LBB128_4:                              #   in Loop: Header=BB128_3 Depth=1
	lgrl	%r1, .L__profc___mulhi3+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mulhi3+24
	llc	%r1, 183(%r11)
	chi	%r1, 32
	ipm	%r0
                                        # implicit-def: $r2d
	lr	%r2, %r0
                                        # implicit-def: $r0d
	risbg	%r0, %r2, 63, 191, 36
                                        # kill: def $r0l killed $r0l killed $r0d
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	chi	%r1, 31
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	jh	.LBB128_6
	j	.LBB128_5
.LBB128_5:                              #   in Loop: Header=BB128_3 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc___mulhi3+32
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc___mulhi3+32
	st	%r0, 168(%r11)                  # 4-byte Folded Spill
	j	.LBB128_6
.LBB128_6:                              #   in Loop: Header=BB128_3 Depth=1
	l	%r0, 168(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB128_11
	j	.LBB128_7
.LBB128_7:                              #   in Loop: Header=BB128_3 Depth=1
	lgrl	%r1, .L__profc___mulhi3+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mulhi3+16
	llc	%r0, 187(%r11)
	tmll	%r0, 1
	je	.LBB128_9
	j	.LBB128_8
.LBB128_8:                              #   in Loop: Header=BB128_3 Depth=1
	lgrl	%r1, .L__profc___mulhi3+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mulhi3+40
	l	%r1, 188(%r11)
	l	%r0, 172(%r11)
	ar	%r0, %r1
	st	%r0, 172(%r11)
	j	.LBB128_9
.LBB128_9:                              #   in Loop: Header=BB128_3 Depth=1
	l	%r0, 188(%r11)
	sll	%r0, 1
	st	%r0, 188(%r11)
	l	%r0, 184(%r11)
	sra	%r0, 1
	st	%r0, 184(%r11)
	j	.LBB128_10
.LBB128_10:                             #   in Loop: Header=BB128_3 Depth=1
	lb	%r0, 183(%r11)
	ahi	%r0, 1
	stc	%r0, 183(%r11)
	j	.LBB128_3
.LBB128_11:
	l	%r0, 176(%r11)
	chi	%r0, 0
	je	.LBB128_13
	j	.LBB128_12
.LBB128_12:
	lgrl	%r1, .L__profc___mulhi3+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mulhi3+48
	l	%r0, 172(%r11)
	lcr	%r0, %r0
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB128_14
.LBB128_13:
	l	%r0, 172(%r11)
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	j	.LBB128_14
.LBB128_14:
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
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
	lgrl	%r1, .L__profc___divsi3
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___divsi3
	mvhi	172(%r11), 0
	lg	%r0, 184(%r11)
	cghi	%r0, 0
	jhe	.LBB129_2
	j	.LBB129_1
.LBB129_1:
	lgrl	%r1, .L__profc___divsi3+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___divsi3+8
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
	lgrl	%r1, .L__profc___divsi3+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___divsi3+16
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
	lgrl	%r1, .L__profc___divsi3+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___divsi3+24
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
	lgrl	%r1, .L__profc___modsi3
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___modsi3
	mvhi	172(%r11), 0
	lg	%r0, 184(%r11)
	cghi	%r0, 0
	jhe	.LBB130_2
	j	.LBB130_1
.LBB130_1:
	lgrl	%r1, .L__profc___modsi3+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___modsi3+8
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
	lgrl	%r1, .L__profc___modsi3+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___modsi3+16
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
	lgrl	%r1, .L__profc___modsi3+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___modsi3+24
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
	lgrl	%r1, .L__profc___udivmodhi4
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodhi4
	mvhhi	170(%r11), 1
	mvhhi	168(%r11), 0
	j	.LBB131_1
.LBB131_1:                              # =>This Inner Loop Header: Depth=1
	llh	%r1, 178(%r11)
	llh	%r2, 180(%r11)
	lhi	%r0, 0
	cr	%r1, %r2
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jhe	.LBB131_6
	j	.LBB131_2
.LBB131_2:                              #   in Loop: Header=BB131_1 Depth=1
	lgrl	%r1, .L__profc___udivmodhi4+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodhi4+32
	llh	%r1, 170(%r11)
	lhi	%r0, 0
	chi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB131_6
	j	.LBB131_3
.LBB131_3:                              #   in Loop: Header=BB131_1 Depth=1
	lgrl	%r1, .L__profc___udivmodhi4+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodhi4+40
	j	.LBB131_4
.LBB131_4:                              #   in Loop: Header=BB131_1 Depth=1
	lgrl	%r1, .L__profc___udivmodhi4+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodhi4+16
	llh	%r1, 178(%r11)
	tmll	%r1, 32768
	ipm	%r0
	afi	%r0, -268435456
	tmll	%r1, 32768
	srl	%r0, 31
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jne	.LBB131_6
	j	.LBB131_5
.LBB131_5:                              #   in Loop: Header=BB131_1 Depth=1
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc___udivmodhi4+24
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc___udivmodhi4+24
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB131_6
.LBB131_6:                              #   in Loop: Header=BB131_1 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB131_8
	j	.LBB131_7
.LBB131_7:                              #   in Loop: Header=BB131_1 Depth=1
	lgrl	%r1, .L__profc___udivmodhi4+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodhi4+8
	lh	%r0, 178(%r11)
	sll	%r0, 1
	sth	%r0, 178(%r11)
	lh	%r0, 170(%r11)
	sll	%r0, 1
	sth	%r0, 170(%r11)
	j	.LBB131_1
.LBB131_8:
	j	.LBB131_9
.LBB131_9:                              # =>This Inner Loop Header: Depth=1
	llh	%r0, 170(%r11)
	chi	%r0, 0
	je	.LBB131_13
	j	.LBB131_10
.LBB131_10:                             #   in Loop: Header=BB131_9 Depth=1
	lgrl	%r1, .L__profc___udivmodhi4+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodhi4+48
	llh	%r0, 180(%r11)
	llh	%r1, 178(%r11)
	cr	%r0, %r1
	jl	.LBB131_12
	j	.LBB131_11
.LBB131_11:                             #   in Loop: Header=BB131_9 Depth=1
	lgrl	%r1, .L__profc___udivmodhi4+56
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodhi4+56
	lh	%r1, 178(%r11)
	lh	%r0, 180(%r11)
	sr	%r0, %r1
	sth	%r0, 180(%r11)
	lh	%r1, 170(%r11)
	lh	%r0, 168(%r11)
	or	%r0, %r1
	sth	%r0, 168(%r11)
	j	.LBB131_12
.LBB131_12:                             #   in Loop: Header=BB131_9 Depth=1
	llh	%r0, 170(%r11)
	srl	%r0, 1
	sth	%r0, 170(%r11)
	llh	%r0, 178(%r11)
	srl	%r0, 1
	sth	%r0, 178(%r11)
	j	.LBB131_9
.LBB131_13:
	l	%r0, 172(%r11)
	chi	%r0, 0
	je	.LBB131_15
	j	.LBB131_14
.LBB131_14:
	lgrl	%r1, .L__profc___udivmodhi4+64
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodhi4+64
	lh	%r0, 180(%r11)
	sth	%r0, 182(%r11)
	j	.LBB131_16
.LBB131_15:
	lh	%r0, 168(%r11)
	sth	%r0, 182(%r11)
	j	.LBB131_16
.LBB131_16:
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
	lgrl	%r1, .L__profc___udivmodsi4_libgcc
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodsi4_libgcc
	mvghi	176(%r11), 1
	mvghi	168(%r11), 0
	j	.LBB132_1
.LBB132_1:                              # =>This Inner Loop Header: Depth=1
	lg	%r1, 192(%r11)
	lg	%r2, 200(%r11)
	lhi	%r0, 0
	clgr	%r1, %r2
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jhe	.LBB132_6
	j	.LBB132_2
.LBB132_2:                              #   in Loop: Header=BB132_1 Depth=1
	lgrl	%r1, .L__profc___udivmodsi4_libgcc+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodsi4_libgcc+32
	lg	%r1, 176(%r11)
	lhi	%r0, 0
	cghi	%r1, 0
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	je	.LBB132_6
	j	.LBB132_3
.LBB132_3:                              #   in Loop: Header=BB132_1 Depth=1
	lgrl	%r1, .L__profc___udivmodsi4_libgcc+40
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodsi4_libgcc+40
	j	.LBB132_4
.LBB132_4:                              #   in Loop: Header=BB132_1 Depth=1
	lgrl	%r1, .L__profc___udivmodsi4_libgcc+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodsi4_libgcc+16
	lg	%r1, 192(%r11)
	tmlh	%r1, 32768
	ipm	%r0
	afi	%r0, -268435456
	tmlh	%r1, 32768
	srl	%r0, 31
	st	%r0, 160(%r11)                  # 4-byte Folded Spill
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	jne	.LBB132_6
	j	.LBB132_5
.LBB132_5:                              #   in Loop: Header=BB132_1 Depth=1
	l	%r0, 160(%r11)                  # 4-byte Folded Reload
	lgrl	%r1, .L__profc___udivmodsi4_libgcc+24
	la	%r1, 1(%r1)
	stgrl	%r1, .L__profc___udivmodsi4_libgcc+24
	st	%r0, 164(%r11)                  # 4-byte Folded Spill
	j	.LBB132_6
.LBB132_6:                              #   in Loop: Header=BB132_1 Depth=1
	l	%r0, 164(%r11)                  # 4-byte Folded Reload
	tmll	%r0, 1
	je	.LBB132_8
	j	.LBB132_7
.LBB132_7:                              #   in Loop: Header=BB132_1 Depth=1
	lgrl	%r1, .L__profc___udivmodsi4_libgcc+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodsi4_libgcc+8
	lg	%r0, 192(%r11)
	sllg	%r0, %r0, 1
	stg	%r0, 192(%r11)
	lg	%r0, 176(%r11)
	sllg	%r0, %r0, 1
	stg	%r0, 176(%r11)
	j	.LBB132_1
.LBB132_8:
	j	.LBB132_9
.LBB132_9:                              # =>This Inner Loop Header: Depth=1
	lg	%r0, 176(%r11)
	cghi	%r0, 0
	je	.LBB132_13
	j	.LBB132_10
.LBB132_10:                             #   in Loop: Header=BB132_9 Depth=1
	lgrl	%r1, .L__profc___udivmodsi4_libgcc+48
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodsi4_libgcc+48
	lg	%r0, 200(%r11)
	lg	%r1, 192(%r11)
	clgr	%r0, %r1
	jl	.LBB132_12
	j	.LBB132_11
.LBB132_11:                             #   in Loop: Header=BB132_9 Depth=1
	lgrl	%r1, .L__profc___udivmodsi4_libgcc+56
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodsi4_libgcc+56
	lg	%r1, 192(%r11)
	lg	%r0, 200(%r11)
	sgr	%r0, %r1
	stg	%r0, 200(%r11)
	lg	%r1, 176(%r11)
	lg	%r0, 168(%r11)
	ogr	%r0, %r1
	stg	%r0, 168(%r11)
	j	.LBB132_12
.LBB132_12:                             #   in Loop: Header=BB132_9 Depth=1
	lg	%r0, 176(%r11)
	srlg	%r0, %r0, 1
	stg	%r0, 176(%r11)
	lg	%r0, 192(%r11)
	srlg	%r0, %r0, 1
	stg	%r0, 192(%r11)
	j	.LBB132_9
.LBB132_13:
	l	%r0, 188(%r11)
	chi	%r0, 0
	je	.LBB132_15
	j	.LBB132_14
.LBB132_14:
	lgrl	%r1, .L__profc___udivmodsi4_libgcc+64
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___udivmodsi4_libgcc+64
	lg	%r0, 200(%r11)
	stg	%r0, 208(%r11)
	j	.LBB132_16
.LBB132_15:
	lg	%r0, 168(%r11)
	stg	%r0, 208(%r11)
	j	.LBB132_16
.LBB132_16:
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
	lgrl	%r1, .L__profc___ashldi3
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ashldi3
	mvhi	176(%r11), 32
	lg	%r0, 184(%r11)
	stg	%r0, 168(%r11)
	llc	%r0, 183(%r11)
	tmll	%r0, 32
	je	.LBB133_2
	j	.LBB133_1
.LBB133_1:
	lgrl	%r1, .L__profc___ashldi3+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ashldi3+8
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
	lgrl	%r1, .L__profc___ashldi3+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ashldi3+16
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
	lgrl	%r1, .L__profc___ashlti3
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ashlti3
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
	lgrl	%r1, .L__profc___ashlti3+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ashlti3+8
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
	lgrl	%r2, .L__profc___ashlti3+16
	la	%r0, 1(%r2)
	stgrl	%r0, .L__profc___ashlti3+16
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
	lgrl	%r1, .L__profc___ashrdi3
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ashrdi3
	mvhi	176(%r11), 32
	lg	%r0, 184(%r11)
	stg	%r0, 168(%r11)
	llc	%r0, 183(%r11)
	tmll	%r0, 32
	je	.LBB135_2
	j	.LBB135_1
.LBB135_1:
	lgrl	%r1, .L__profc___ashrdi3+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ashrdi3+8
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
	lgrl	%r1, .L__profc___ashrdi3+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ashrdi3+16
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
	lgrl	%r1, .L__profc___ashrti3
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ashrti3
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
	lgrl	%r1, .L__profc___ashrti3+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ashrti3+8
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
	lgrl	%r2, .L__profc___ashrti3+16
	la	%r0, 1(%r2)
	stgrl	%r0, .L__profc___ashrti3+16
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
	lgrl	%r1, .L__profc___bswapdi2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___bswapdi2
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
	lgrl	%r1, .L__profc___bswapsi2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___bswapsi2
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
	lgrl	%r1, .L__profc___clzsi2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___clzsi2
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
	lgrl	%r1, .L__profc___clzti2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___clzti2
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
	lgrl	%r1, .L__profc___cmpdi2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmpdi2
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
	lgrl	%r1, .L__profc___cmpdi2+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmpdi2+8
	mvhi	196(%r11), 0
	j	.LBB141_9
.LBB141_2:
	l	%r0, 168(%r11)
	l	%r1, 160(%r11)
	cr	%r0, %r1
	jle	.LBB141_4
	j	.LBB141_3
.LBB141_3:
	lgrl	%r1, .L__profc___cmpdi2+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmpdi2+16
	mvhi	196(%r11), 2
	j	.LBB141_9
.LBB141_4:
	l	%r0, 172(%r11)
	l	%r1, 164(%r11)
	clr	%r0, %r1
	jhe	.LBB141_6
	j	.LBB141_5
.LBB141_5:
	lgrl	%r1, .L__profc___cmpdi2+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmpdi2+24
	mvhi	196(%r11), 0
	j	.LBB141_9
.LBB141_6:
	l	%r0, 172(%r11)
	l	%r1, 164(%r11)
	clr	%r0, %r1
	jle	.LBB141_8
	j	.LBB141_7
.LBB141_7:
	lgrl	%r1, .L__profc___cmpdi2+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmpdi2+32
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
	lgrl	%r1, .L__profc___aeabi_lcmp
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___aeabi_lcmp
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
	lgrl	%r1, .L__profc___cmpti2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmpti2
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
	lgrl	%r1, .L__profc___cmpti2+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmpti2+8
	mvhi	228(%r11), 0
	j	.LBB143_9
.LBB143_2:
	lg	%r0, 176(%r11)
	lg	%r1, 160(%r11)
	cgr	%r0, %r1
	jle	.LBB143_4
	j	.LBB143_3
.LBB143_3:
	lgrl	%r1, .L__profc___cmpti2+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmpti2+16
	mvhi	228(%r11), 2
	j	.LBB143_9
.LBB143_4:
	lg	%r0, 184(%r11)
	lg	%r1, 168(%r11)
	clgr	%r0, %r1
	jhe	.LBB143_6
	j	.LBB143_5
.LBB143_5:
	lgrl	%r1, .L__profc___cmpti2+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmpti2+24
	mvhi	228(%r11), 0
	j	.LBB143_9
.LBB143_6:
	lg	%r0, 184(%r11)
	lg	%r1, 168(%r11)
	clgr	%r0, %r1
	jle	.LBB143_8
	j	.LBB143_7
.LBB143_7:
	lgrl	%r1, .L__profc___cmpti2+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___cmpti2+32
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
	lgrl	%r1, .L__profc___ctzsi2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ctzsi2
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
	lgrl	%r1, .L__profc___ctzti2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ctzti2
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
	lgrl	%r1, .L__profc___ffsti2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ffsti2
	lg	%r0, 176(%r11)
	lg	%r1, 184(%r11)
	stg	%r1, 168(%r11)
	stg	%r0, 160(%r11)
	lg	%r0, 168(%r11)
	cghi	%r0, 0
	jlh	.LBB146_4
	j	.LBB146_1
.LBB146_1:
	lgrl	%r1, .L__profc___ffsti2+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ffsti2+8
	lg	%r0, 160(%r11)
	cghi	%r0, 0
	jlh	.LBB146_3
	j	.LBB146_2
.LBB146_2:
	lgrl	%r1, .L__profc___ffsti2+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ffsti2+16
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
	lgrl	%r1, .L__profc___lshrdi3
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___lshrdi3
	mvhi	176(%r11), 32
	lg	%r0, 184(%r11)
	stg	%r0, 168(%r11)
	llc	%r0, 183(%r11)
	tmll	%r0, 32
	je	.LBB147_2
	j	.LBB147_1
.LBB147_1:
	lgrl	%r1, .L__profc___lshrdi3+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___lshrdi3+8
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
	lgrl	%r1, .L__profc___lshrdi3+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___lshrdi3+16
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
	lgrl	%r1, .L__profc___lshrti3
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___lshrti3
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
	lgrl	%r1, .L__profc___lshrti3+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___lshrti3+8
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
	lgrl	%r2, .L__profc___lshrti3+16
	la	%r0, 1(%r2)
	stgrl	%r0, .L__profc___lshrti3+16
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
	lgrl	%r1, .L__profc___muldsi3
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___muldsi3
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
	lgrl	%r1, .L__profc___muldi3_compiler_rt
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___muldi3_compiler_rt
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
	lgrl	%r1, .L__profc___mulddi3
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___mulddi3
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
	lgrl	%r1, .L__profc___multi3
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___multi3
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
	lgrl	%r1, .L__profc___negdi2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___negdi2
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
	lgrl	%r1, .L__profc___negti2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___negti2
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
	lgrl	%r1, .L__profc___paritydi2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___paritydi2
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
	lgrl	%r1, .L__profc___parityti2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___parityti2
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
	lgrl	%r1, .L__profc___paritysi2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___paritysi2
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
	lgrl	%r1, .L__profc___popcountdi2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___popcountdi2
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
	lgrl	%r1, .L__profc___popcountsi2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___popcountsi2
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
	lgrl	%r1, .L__profc___popcountti2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___popcountti2
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
	lgrl	%r1, .L__profc___powidf2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___powidf2
	l	%r0, 180(%r11)
	srl	%r0, 31
	st	%r0, 176(%r11)
	llihh	%r0, 16368
	stg	%r0, 168(%r11)
	j	.LBB161_1
.LBB161_1:                              # =>This Inner Loop Header: Depth=1
	lgrl	%r1, .L__profc___powidf2+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___powidf2+8
	llc	%r0, 183(%r11)
	tmll	%r0, 1
	je	.LBB161_3
	j	.LBB161_2
.LBB161_2:                              #   in Loop: Header=BB161_1 Depth=1
	lgrl	%r1, .L__profc___powidf2+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___powidf2+16
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
	lgrl	%r1, .L__profc___powidf2+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___powidf2+24
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
	lgrl	%r1, .L__profc___powidf2+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___powidf2+32
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
	lgrl	%r1, .L__profc___powisf2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___powisf2
	l	%r0, 176(%r11)
	srl	%r0, 31
	st	%r0, 172(%r11)
	iilf	%r0, 1065353216
	st	%r0, 168(%r11)
	j	.LBB162_1
.LBB162_1:                              # =>This Inner Loop Header: Depth=1
	lgrl	%r1, .L__profc___powisf2+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___powisf2+8
	llc	%r0, 179(%r11)
	tmll	%r0, 1
	je	.LBB162_3
	j	.LBB162_2
.LBB162_2:                              #   in Loop: Header=BB162_1 Depth=1
	lgrl	%r1, .L__profc___powisf2+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___powisf2+16
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
	lgrl	%r1, .L__profc___powisf2+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___powisf2+24
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
	lgrl	%r1, .L__profc___powisf2+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___powisf2+32
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
	lgrl	%r1, .L__profc___ucmpdi2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ucmpdi2
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
	lgrl	%r1, .L__profc___ucmpdi2+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ucmpdi2+8
	mvhi	196(%r11), 0
	j	.LBB163_9
.LBB163_2:
	l	%r0, 168(%r11)
	l	%r1, 160(%r11)
	clr	%r0, %r1
	jle	.LBB163_4
	j	.LBB163_3
.LBB163_3:
	lgrl	%r1, .L__profc___ucmpdi2+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ucmpdi2+16
	mvhi	196(%r11), 2
	j	.LBB163_9
.LBB163_4:
	l	%r0, 172(%r11)
	l	%r1, 164(%r11)
	clr	%r0, %r1
	jhe	.LBB163_6
	j	.LBB163_5
.LBB163_5:
	lgrl	%r1, .L__profc___ucmpdi2+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ucmpdi2+24
	mvhi	196(%r11), 0
	j	.LBB163_9
.LBB163_6:
	l	%r0, 172(%r11)
	l	%r1, 164(%r11)
	clr	%r0, %r1
	jle	.LBB163_8
	j	.LBB163_7
.LBB163_7:
	lgrl	%r1, .L__profc___ucmpdi2+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ucmpdi2+32
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
	lgrl	%r1, .L__profc___aeabi_ulcmp
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___aeabi_ulcmp
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
	lgrl	%r1, .L__profc___ucmpti2
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ucmpti2
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
	lgrl	%r1, .L__profc___ucmpti2+8
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ucmpti2+8
	mvhi	228(%r11), 0
	j	.LBB165_9
.LBB165_2:
	lg	%r0, 176(%r11)
	lg	%r1, 160(%r11)
	clgr	%r0, %r1
	jle	.LBB165_4
	j	.LBB165_3
.LBB165_3:
	lgrl	%r1, .L__profc___ucmpti2+16
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ucmpti2+16
	mvhi	228(%r11), 2
	j	.LBB165_9
.LBB165_4:
	lg	%r0, 184(%r11)
	lg	%r1, 168(%r11)
	clgr	%r0, %r1
	jhe	.LBB165_6
	j	.LBB165_5
.LBB165_5:
	lgrl	%r1, .L__profc___ucmpti2+24
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ucmpti2+24
	mvhi	228(%r11), 0
	j	.LBB165_9
.LBB165_6:
	lg	%r0, 184(%r11)
	lg	%r1, 168(%r11)
	clgr	%r0, %r1
	jle	.LBB165_8
	j	.LBB165_7
.LBB165_7:
	lgrl	%r1, .L__profc___ucmpti2+32
	la	%r0, 1(%r1)
	stgrl	%r0, .L__profc___ucmpti2+32
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
	.hidden	__llvm_profile_runtime
	.type	.L__profc_make_ti,@object       # @__profc_make_ti
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_make_ti
	.p2align	3, 0x0
.L__profc_make_ti:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_make_ti, 64

	.type	.L__profc_make_tu,@object       # @__profc_make_tu
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_make_tu
	.p2align	3, 0x0
.L__profc_make_tu:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_make_tu, 64

	.type	.L__profc_memmove,@object       # @__profc_memmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
.L__profc_memmove:
	.space	40
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
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memmove, 64

	.type	.L__profc_memccpy,@object       # @__profc_memccpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profc_memccpy:
	.space	40
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
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memccpy, 64

	.type	.L__profc_memchr,@object        # @__profc_memchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
.L__profc_memchr:
	.space	40
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
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memchr, 64

	.type	.L__profc_memcmp,@object        # @__profc_memcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profc_memcmp:
	.space	40
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
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memcmp, 64

	.type	.L__profc_memcpy,@object        # @__profc_memcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
.L__profc_memcpy:
	.space	16
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
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memcpy, 64

	.type	.L__profc_memrchr,@object       # @__profc_memrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profc_memrchr:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memrchr, 64

	.type	.L__profc_memset,@object        # @__profc_memset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
.L__profc_memset:
	.space	16
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
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memset, 64

	.type	.L__profc_stpcpy,@object        # @__profc_stpcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profc_stpcpy:
	.space	16
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
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_stpcpy, 64

	.type	.L__profc_strchrnul,@object     # @__profc_strchrnul
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profc_strchrnul:
	.space	32
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
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strchrnul, 64

	.type	.L__profc_strchr,@object        # @__profc_strchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
.L__profc_strchr:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strchr, 64

	.type	.L__profc_strcmp,@object        # @__profc_strcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profc_strcmp:
	.space	32
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
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strcmp, 64

	.type	.L__profc_strlen,@object        # @__profc_strlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
.L__profc_strlen:
	.space	16
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
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strlen, 64

	.type	.L__profc_strncmp,@object       # @__profc_strncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profc_strncmp:
	.space	72
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
	.long	9                               # 0x9
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strncmp, 64

	.type	.L__profc_swab,@object          # @__profc_swab
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
.L__profc_swab:
	.space	16
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
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_swab, 64

	.type	.L__profc_isalpha,@object       # @__profc_isalpha
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profc_isalpha:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isalpha, 64

	.type	.L__profc_isascii,@object       # @__profc_isascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
.L__profc_isascii:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isascii, 64

	.type	.L__profc_isblank,@object       # @__profc_isblank
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
.L__profc_isblank:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isblank, 64

	.type	.L__profc_iscntrl,@object       # @__profc_iscntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profc_iscntrl:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_iscntrl, 64

	.type	.L__profc_isdigit,@object       # @__profc_isdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profc_isdigit:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isdigit, 64

	.type	.L__profc_isgraph,@object       # @__profc_isgraph
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profc_isgraph:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isgraph, 64

	.type	.L__profc_islower,@object       # @__profc_islower
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
.L__profc_islower:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_islower, 64

	.type	.L__profc_isprint,@object       # @__profc_isprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
.L__profc_isprint:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isprint, 64

	.type	.L__profc_isspace,@object       # @__profc_isspace
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
.L__profc_isspace:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isspace, 64

	.type	.L__profc_isupper,@object       # @__profc_isupper
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
.L__profc_isupper:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isupper, 64

	.type	.L__profc_iswcntrl,@object      # @__profc_iswcntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profc_iswcntrl:
	.space	56
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
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_iswcntrl, 64

	.type	.L__profc_iswdigit,@object      # @__profc_iswdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profc_iswdigit:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_iswdigit, 64

	.type	.L__profc_iswprint,@object      # @__profc_iswprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profc_iswprint:
	.space	80
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
	.long	10                              # 0xa
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_iswprint, 64

	.type	.L__profc_iswxdigit,@object     # @__profc_iswxdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profc_iswxdigit:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_iswxdigit, 64

	.type	.L__profc_toascii,@object       # @__profc_toascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
.L__profc_toascii:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_toascii, 64

	.type	.L__profc_fdim,@object          # @__profc_fdim
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
.L__profc_fdim:
	.space	32
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
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fdim, 64

	.type	.L__profc_fdimf,@object         # @__profc_fdimf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
.L__profc_fdimf:
	.space	32
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
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fdimf, 64

	.type	.L__profc_fmax,@object          # @__profc_fmax
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
.L__profc_fmax:
	.space	48
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
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fmax, 64

	.type	.L__profc_fmaxf,@object         # @__profc_fmaxf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
.L__profc_fmaxf:
	.space	48
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
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fmaxf, 64

	.type	.L__profc_fmaxl,@object         # @__profc_fmaxl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
.L__profc_fmaxl:
	.space	48
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
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fmaxl, 64

	.type	.L__profc_fmin,@object          # @__profc_fmin
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
.L__profc_fmin:
	.space	48
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
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fmin, 64

	.type	.L__profc_fminf,@object         # @__profc_fminf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
.L__profc_fminf:
	.space	48
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
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fminf, 64

	.type	.L__profc_fminl,@object         # @__profc_fminl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
.L__profc_fminl:
	.space	48
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
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fminl, 64

	.type	.L__profc_l64a,@object          # @__profc_l64a
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
.L__profc_l64a:
	.space	16
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
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_l64a, 64

	.type	.L__profc_srand,@object         # @__profc_srand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
.L__profc_srand:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_srand, 64

	.type	.L__profc_rand,@object          # @__profc_rand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
.L__profc_rand:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rand, 64

	.type	.L__profc_insque,@object        # @__profc_insque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
.L__profc_insque:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_insque, 64

	.type	.L__profc_remque,@object        # @__profc_remque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
.L__profc_remque:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_remque, 64

	.type	.L__profc_lsearch,@object       # @__profc_lsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
.L__profc_lsearch:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_lsearch, 64

	.type	.L__profc_lfind,@object         # @__profc_lfind
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
.L__profc_lfind:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_lfind, 64

	.type	.L__profc_abs,@object           # @__profc_abs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
.L__profc_abs:
	.space	16
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
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_abs, 64

	.type	.L__profc_atoi,@object          # @__profc_atoi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
.L__profc_atoi:
	.space	56
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
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_atoi, 64

	.type	.L__profc_atol,@object          # @__profc_atol
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
.L__profc_atol:
	.space	56
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
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_atol, 64

	.type	.L__profc_atoll,@object         # @__profc_atoll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
.L__profc_atoll:
	.space	56
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
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_atoll, 64

	.type	.L__profc_bsearch,@object       # @__profc_bsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
.L__profc_bsearch:
	.space	32
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
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_bsearch, 64

	.type	.L__profc_bsearch_r,@object     # @__profc_bsearch_r
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
.L__profc_bsearch_r:
	.space	32
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
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_bsearch_r, 64

	.type	.L__profc_div,@object           # @__profc_div
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_div
	.p2align	3, 0x0
.L__profc_div:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_div, 64

	.type	.L__profc_imaxabs,@object       # @__profc_imaxabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profc_imaxabs:
	.space	16
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
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_imaxabs, 64

	.type	.L__profc_imaxdiv,@object       # @__profc_imaxdiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
.L__profc_imaxdiv:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_imaxdiv, 64

	.type	.L__profc_labs,@object          # @__profc_labs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
.L__profc_labs:
	.space	16
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
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_labs, 64

	.type	.L__profc_ldiv,@object          # @__profc_ldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
.L__profc_ldiv:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_ldiv, 64

	.type	.L__profc_llabs,@object         # @__profc_llabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
.L__profc_llabs:
	.space	16
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
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_llabs, 64

	.type	.L__profc_lldiv,@object         # @__profc_lldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
.L__profc_lldiv:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_lldiv, 64

	.type	.L__profc_wcschr,@object        # @__profc_wcschr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profc_wcschr:
	.space	40
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
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wcschr, 64

	.type	.L__profc_wcscmp,@object        # @__profc_wcscmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profc_wcscmp:
	.space	56
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
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wcscmp, 64

	.type	.L__profc_wcscpy,@object        # @__profc_wcscpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profc_wcscpy:
	.space	16
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
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wcscpy, 64

	.type	.L__profc_wcslen,@object        # @__profc_wcslen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
.L__profc_wcslen:
	.space	16
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
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wcslen, 64

	.type	.L__profc_wcsncmp,@object       # @__profc_wcsncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profc_wcsncmp:
	.space	80
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
	.long	10                              # 0xa
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wcsncmp, 64

	.type	.L__profc_wmemchr,@object       # @__profc_wmemchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profc_wmemchr:
	.space	40
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
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wmemchr, 64

	.type	.L__profc_wmemcmp,@object       # @__profc_wmemcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profc_wmemcmp:
	.space	48
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
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wmemcmp, 64

	.type	.L__profc_wmemcpy,@object       # @__profc_wmemcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
.L__profc_wmemcpy:
	.space	16
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
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wmemcpy, 64

	.type	.L__profc_wmemmove,@object      # @__profc_wmemmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profc_wmemmove:
	.space	40
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
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wmemmove, 64

	.type	.L__profc_wmemset,@object       # @__profc_wmemset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profc_wmemset:
	.space	16
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
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wmemset, 64

	.type	.L__profc_bcopy,@object         # @__profc_bcopy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profc_bcopy:
	.space	40
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
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_bcopy, 64

	.type	.L__profc_rotl64,@object        # @__profc_rotl64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profc_rotl64:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotl64, 64

	.type	.L__profc_rotr64,@object        # @__profc_rotr64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profc_rotr64:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotr64, 64

	.type	.L__profc_rotl32,@object        # @__profc_rotl32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profc_rotl32:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotl32, 64

	.type	.L__profc_rotr32,@object        # @__profc_rotr32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profc_rotr32:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotr32, 64

	.type	.L__profc_rotl_sz,@object       # @__profc_rotl_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profc_rotl_sz:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotl_sz, 64

	.type	.L__profc_rotr_sz,@object       # @__profc_rotr_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profc_rotr_sz:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotr_sz, 64

	.type	.L__profc_rotl16,@object        # @__profc_rotl16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profc_rotl16:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotl16, 64

	.type	.L__profc_rotr16,@object        # @__profc_rotr16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profc_rotr16:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotr16, 64

	.type	.L__profc_rotl8,@object         # @__profc_rotl8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profc_rotl8:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotl8, 64

	.type	.L__profc_rotr8,@object         # @__profc_rotr8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profc_rotr8:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotr8, 64

	.type	.L__profc_bswap_16,@object      # @__profc_bswap_16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profc_bswap_16:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_bswap_16, 64

	.type	.L__profc_bswap_32,@object      # @__profc_bswap_32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profc_bswap_32:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_bswap_32, 64

	.type	.L__profc_bswap_64,@object      # @__profc_bswap_64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profc_bswap_64:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_bswap_64, 64

	.type	.L__profc_ffs,@object           # @__profc_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
.L__profc_ffs:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_ffs, 64

	.type	.L__profc_libiberty_ffs,@object # @__profc_libiberty_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profc_libiberty_ffs:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_libiberty_ffs, 64

	.type	.L__profc_gl_isinff,@object     # @__profc_gl_isinff
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
.L__profc_gl_isinff:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_gl_isinff, 64

	.type	.L__profc_gl_isinfd,@object     # @__profc_gl_isinfd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
.L__profc_gl_isinfd:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_gl_isinfd, 64

	.type	.L__profc_gl_isinfl,@object     # @__profc_gl_isinfl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
.L__profc_gl_isinfl:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_gl_isinfl, 64

	.type	.L__profc__Qp_itoq,@object      # @__profc__Qp_itoq
	.section	__llvm_prf_cnts,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
.L__profc__Qp_itoq:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd__Qp_itoq, 64

	.type	.L__profc_ldexpf,@object        # @__profc_ldexpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
.L__profc_ldexpf:
	.space	64
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
	.long	8                               # 0x8
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_ldexpf, 64

	.type	.L__profc_ldexp,@object         # @__profc_ldexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
.L__profc_ldexp:
	.space	64
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
	.long	8                               # 0x8
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_ldexp, 64

	.type	.L__profc_ldexpl,@object        # @__profc_ldexpl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
.L__profc_ldexpl:
	.space	64
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
	.long	8                               # 0x8
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_ldexpl, 64

	.type	.L__profc_memxor,@object        # @__profc_memxor
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
.L__profc_memxor:
	.space	16
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
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memxor, 64

	.type	.L__profc_strncat,@object       # @__profc_strncat
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
.L__profc_strncat:
	.space	40
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
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strncat, 64

	.type	.L__profc_strnlen,@object       # @__profc_strnlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profc_strnlen:
	.space	32
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
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strnlen, 64

	.type	.L__profc_strpbrk,@object       # @__profc_strpbrk
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profc_strpbrk:
	.space	32
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
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strpbrk, 64

	.type	.L__profc_strrchr,@object       # @__profc_strrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profc_strrchr:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strrchr, 64

	.type	.L__profc_strstr,@object        # @__profc_strstr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
.L__profc_strstr:
	.space	32
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
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strstr, 64

	.type	.L__profc_copysign,@object      # @__profc_copysign
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
.L__profc_copysign:
	.space	56
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
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_copysign, 64

	.type	.L__profc_memmem,@object        # @__profc_memmem
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
.L__profc_memmem:
	.space	56
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
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memmem, 64

	.type	.L__profc_mempcpy,@object       # @__profc_mempcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
.L__profc_mempcpy:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_mempcpy, 64

	.type	.L__profc_frexp,@object         # @__profc_frexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
.L__profc_frexp:
	.space	72
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
	.long	9                               # 0x9
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_frexp, 64

	.type	.L__profc___muldi3,@object      # @__profc___muldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profc___muldi3:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___muldi3, 64

	.type	.L__profc_udivmodsi4,@object    # @__profc_udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profc_udivmodsi4:
	.space	72
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
	.long	9                               # 0x9
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_udivmodsi4, 64

	.type	.L__profc___clrsbqi2,@object    # @__profc___clrsbqi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profc___clrsbqi2:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___clrsbqi2, 64

	.type	.L__profc___clrsbdi2,@object    # @__profc___clrsbdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profc___clrsbdi2:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___clrsbdi2, 64

	.type	.L__profc___mulsi3,@object      # @__profc___mulsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profc___mulsi3:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mulsi3, 64

	.type	.L__profc___cmovd,@object       # @__profc___cmovd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profc___cmovd:
	.space	56
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
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___cmovd, 64

	.type	.L__profc___cmovh,@object       # @__profc___cmovh
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profc___cmovh:
	.space	56
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
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___cmovh, 64

	.type	.L__profc___cmovw,@object       # @__profc___cmovw
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profc___cmovw:
	.space	56
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
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___cmovw, 64

	.type	.L__profc___modi,@object        # @__profc___modi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
.L__profc___modi:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___modi, 64

	.type	.L__profc___uitod,@object       # @__profc___uitod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
.L__profc___uitod:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___uitod, 64

	.type	.L__profc___uitof,@object       # @__profc___uitof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
.L__profc___uitof:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___uitof, 64

	.type	.L__profc___ulltod,@object      # @__profc___ulltod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
.L__profc___ulltod:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ulltod, 64

	.type	.L__profc___ulltof,@object      # @__profc___ulltof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
.L__profc___ulltof:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ulltof, 64

	.type	.L__profc___umodi,@object       # @__profc___umodi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
.L__profc___umodi:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___umodi, 64

	.type	.L__profc___clzhi2,@object      # @__profc___clzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profc___clzhi2:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___clzhi2, 64

	.type	.L__profc___ctzhi2,@object      # @__profc___ctzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profc___ctzhi2:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ctzhi2, 64

	.type	.L__profc___fixunssfsi,@object  # @__profc___fixunssfsi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
.L__profc___fixunssfsi:
	.space	16
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
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___fixunssfsi, 64

	.type	.L__profc___parityhi2,@object   # @__profc___parityhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profc___parityhi2:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___parityhi2, 64

	.type	.L__profc___popcounthi2,@object # @__profc___popcounthi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profc___popcounthi2:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___popcounthi2, 64

	.type	.L__profc___mulsi3_iq2000,@object # @__profc___mulsi3_iq2000
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profc___mulsi3_iq2000:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mulsi3_iq2000, 64

	.type	.L__profc___mulsi3_lm32,@object # @__profc___mulsi3_lm32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profc___mulsi3_lm32:
	.space	32
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
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mulsi3_lm32, 64

	.type	.L__profc___udivmodsi4,@object  # @__profc___udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profc___udivmodsi4:
	.space	72
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
	.long	9                               # 0x9
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___udivmodsi4, 64

	.type	.L__profc___mspabi_cmpf,@object # @__profc___mspabi_cmpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
.L__profc___mspabi_cmpf:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_cmpf, 64

	.type	.L__profc___mspabi_cmpd,@object # @__profc___mspabi_cmpd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
.L__profc___mspabi_cmpd:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_cmpd, 64

	.type	.L__profc___mspabi_mpysll,@object # @__profc___mspabi_mpysll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profc___mspabi_mpysll:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_mpysll, 64

	.type	.L__profc___mspabi_mpyull,@object # @__profc___mspabi_mpyull
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profc___mspabi_mpyull:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_mpyull, 64

	.type	.L__profc___mulhi3,@object      # @__profc___mulhi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profc___mulhi3:
	.space	56
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
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mulhi3, 64

	.type	.L__profc___divsi3,@object      # @__profc___divsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profc___divsi3:
	.space	32
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
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___divsi3, 64

	.type	.L__profc___modsi3,@object      # @__profc___modsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profc___modsi3:
	.space	32
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
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___modsi3, 64

	.type	.L__profc___udivmodhi4,@object  # @__profc___udivmodhi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profc___udivmodhi4:
	.space	72
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
	.long	9                               # 0x9
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___udivmodhi4, 64

	.type	.L__profc___udivmodsi4_libgcc,@object # @__profc___udivmodsi4_libgcc
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profc___udivmodsi4_libgcc:
	.space	72
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
	.long	9                               # 0x9
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___udivmodsi4_libgcc, 64

	.type	.L__profc___ashldi3,@object     # @__profc___ashldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profc___ashldi3:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ashldi3, 64

	.type	.L__profc___ashlti3,@object     # @__profc___ashlti3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashlti3
	.p2align	3, 0x0
.L__profc___ashlti3:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ashlti3, 64

	.type	.L__profc___ashrdi3,@object     # @__profc___ashrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profc___ashrdi3:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ashrdi3, 64

	.type	.L__profc___ashrti3,@object     # @__profc___ashrti3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashrti3
	.p2align	3, 0x0
.L__profc___ashrti3:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ashrti3, 64

	.type	.L__profc___bswapdi2,@object    # @__profc___bswapdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profc___bswapdi2:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___bswapdi2, 64

	.type	.L__profc___bswapsi2,@object    # @__profc___bswapsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profc___bswapsi2:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___bswapsi2, 64

	.type	.L__profc___clzsi2,@object      # @__profc___clzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profc___clzsi2:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___clzsi2, 64

	.type	.L__profc___clzti2,@object      # @__profc___clzti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzti2
	.p2align	3, 0x0
.L__profc___clzti2:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___clzti2, 64

	.type	.L__profc___cmpdi2,@object      # @__profc___cmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profc___cmpdi2:
	.space	40
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
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___cmpdi2, 64

	.type	.L__profc___aeabi_lcmp,@object  # @__profc___aeabi_lcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profc___aeabi_lcmp:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___aeabi_lcmp, 64

	.type	.L__profc___cmpti2,@object      # @__profc___cmpti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmpti2
	.p2align	3, 0x0
.L__profc___cmpti2:
	.space	40
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
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___cmpti2, 64

	.type	.L__profc___ctzsi2,@object      # @__profc___ctzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profc___ctzsi2:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ctzsi2, 64

	.type	.L__profc___ctzti2,@object      # @__profc___ctzti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzti2
	.p2align	3, 0x0
.L__profc___ctzti2:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ctzti2, 64

	.type	.L__profc___ffsti2,@object      # @__profc___ffsti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ffsti2
	.p2align	3, 0x0
.L__profc___ffsti2:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ffsti2, 64

	.type	.L__profc___lshrdi3,@object     # @__profc___lshrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profc___lshrdi3:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___lshrdi3, 64

	.type	.L__profc___lshrti3,@object     # @__profc___lshrti3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___lshrti3
	.p2align	3, 0x0
.L__profc___lshrti3:
	.space	24
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
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___lshrti3, 64

	.type	.L__profc___muldsi3,@object     # @__profc___muldsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profc___muldsi3:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___muldsi3, 64

	.type	.L__profc___muldi3_compiler_rt,@object # @__profc___muldi3_compiler_rt
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profc___muldi3_compiler_rt:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___muldi3_compiler_rt, 64

	.type	.L__profc___mulddi3,@object     # @__profc___mulddi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulddi3
	.p2align	3, 0x0
.L__profc___mulddi3:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mulddi3, 64

	.type	.L__profc___multi3,@object      # @__profc___multi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___multi3
	.p2align	3, 0x0
.L__profc___multi3:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___multi3, 64

	.type	.L__profc___negdi2,@object      # @__profc___negdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profc___negdi2:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___negdi2, 64

	.type	.L__profc___negti2,@object      # @__profc___negti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___negti2
	.p2align	3, 0x0
.L__profc___negti2:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___negti2, 64

	.type	.L__profc___paritydi2,@object   # @__profc___paritydi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profc___paritydi2:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___paritydi2, 64

	.type	.L__profc___parityti2,@object   # @__profc___parityti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___parityti2
	.p2align	3, 0x0
.L__profc___parityti2:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___parityti2, 64

	.type	.L__profc___paritysi2,@object   # @__profc___paritysi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profc___paritysi2:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___paritysi2, 64

	.type	.L__profc___popcountdi2,@object # @__profc___popcountdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profc___popcountdi2:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___popcountdi2, 64

	.type	.L__profc___popcountsi2,@object # @__profc___popcountsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profc___popcountsi2:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___popcountsi2, 64

	.type	.L__profc___popcountti2,@object # @__profc___popcountti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountti2
	.p2align	3, 0x0
.L__profc___popcountti2:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___popcountti2, 64

	.type	.L__profc___powidf2,@object     # @__profc___powidf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
.L__profc___powidf2:
	.space	40
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
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___powidf2, 64

	.type	.L__profc___powisf2,@object     # @__profc___powisf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
.L__profc___powisf2:
	.space	40
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
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___powisf2, 64

	.type	.L__profc___ucmpdi2,@object     # @__profc___ucmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profc___ucmpdi2:
	.space	40
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
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ucmpdi2, 64

	.type	.L__profc___aeabi_ulcmp,@object # @__profc___aeabi_ulcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profc___aeabi_ulcmp:
	.space	8
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
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___aeabi_ulcmp, 64

	.type	.L__profc___ucmpti2,@object     # @__profc___ucmpti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ucmpti2
	.p2align	3, 0x0
.L__profc___ucmpti2:
	.space	40
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
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ucmpti2, 64

	.type	.L__llvm_prf_nm,@object         # @__llvm_prf_nm
	.section	__llvm_prf_names,"aR",@progbits,unique,1
.L__llvm_prf_nm:
	.ascii	"\247\013\315\004x\332]\223\013n\343 \020\206\305\215\272MU\365\032{\002\013\033\210G\035\f\001\\\222\236~\347\201\363X)\342\373\347\347\345\031&\321~\373\251\201\211\302\335D\037c\372\361\314e\3117\341Z\0041\013\324,\303\255\276\231\3322\273\265\261\271\3558\224\2006\021\320o\214M\302ng\003\325b^-\263.\000\304\031\355\366M\\6ZNtp\206F<\027\233W\"\246\356\0131\027\330\330\257\331.\236\270\347,~?6\366cg?\226\366\253Z-\351e\301A\224!\230\020\355U\006\225H#l2\004\031\321\340\347\2075\265\330\315\031\031`\253\227\335\233\342#\003\253\267\224\253\301\0004g\347jlK\300\003\312\200f\036+\006\247b\034\374\030\240\313x5\223c\344\000E\251\024\335\227\312udP\341\030Tf\002\227\223 \345\354\343\205\372x\242>\336\250\037/\331\307+\315K\"\273\244F\0311\212\002O\357\022)p\252\277\022\016\342\237O\t\025\370%\301\027%\323m\236\310TA{U\320\221!\320\327\303\f\263/\3556qt\306\t*\0254\334\225\273+4\323\337<AK\027\312\336_sP\350\210\334`\327T\264ul\023\216V\312s\371f\036\215F?\303\tV8o\322\304>2\2441C\341#\247)\356T\325\223\331\251\2641\271\n\037\344-X\352|\201\367C:\221\264\262\322J\362\250\204np\035\354\274 9 \354\364\345n00\021\207\301B\234\261r\301\337UoiC\004\270\356[\255\241\362t\266\005\332M'r\312K\332\267\266>}\312\004\227\367\267\267\267G\214\361\304\263/\271D\372O\314@\337\230\303K\344\036Q\244\nQS>\307\273\306;\256\2221\035\250\251\313\261\247\307\035\253\334\361\270p\242W>/\013y\266\256RXU\355P\345\356\025\365\244G\264\300\"\353(\373\357]4\025q\254\262\236\277\021\271\255\305mG\005\353!\324\241.S\201\367[\361~+\277z\275+*\335\222b\006\364e*m\230\356\230\326\035\233?\353\375$\364\\}\036\367\244\237\375\372\362l\356%z\235\033\273R\007\027\016UE\355\377%\275\217\254wM\373\037[\370\006\333"
	.size	.L__llvm_prf_nm, 593

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
