	.text
	.file	"mini-libc.c"
	.globl	make_ti                         ! -- Begin function make_ti
	.p2align	2
	.type	make_ti,@function
make_ti:                                ! @make_ti
! %bb.0:
	save %sp, -160, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	ldx [%fp+2039], %i0
	stx %i0, [%fp+2015]
	ldx [%fp+2031], %i1
	add %fp, 2015, %i0
	or %i0, 8, %i0
	stx %i1, [%i0]
	ldx [%i0], %i1
	ldx [%fp+2015], %i0
	ret
	restore
.Lfunc_end0:
	.size	make_ti, .Lfunc_end0-make_ti
                                        ! -- End function
	.globl	make_tu                         ! -- Begin function make_tu
	.p2align	2
	.type	make_tu,@function
make_tu:                                ! @make_tu
! %bb.0:
	save %sp, -160, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	ldx [%fp+2039], %i0
	stx %i0, [%fp+2015]
	ldx [%fp+2031], %i1
	add %fp, 2015, %i0
	or %i0, 8, %i0
	stx %i1, [%i0]
	ldx [%i0], %i1
	ldx [%fp+2015], %i0
	ret
	restore
.Lfunc_end1:
	.size	make_tu, .Lfunc_end1-make_tu
                                        ! -- End function
	.globl	memmove                         ! -- Begin function memmove
	.p2align	2
	.type	memmove,@function
memmove:                                ! @memmove
! %bb.0:
	save %sp, -176, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	stx %i2, [%fp+2023]
	ldx [%fp+2039], %i0
	stx %i0, [%fp+2015]
	ldx [%fp+2031], %i0
	stx %i0, [%fp+2007]
	ldx [%fp+2007], %i0
	ldx [%fp+2015], %i1
	cmp	%i0, %i1
	bcc %xcc, .LBB2_6
	nop
	ba .LBB2_1
	nop
.LBB2_1:
	ldx [%fp+2023], %i1
	ldx [%fp+2007], %i0
	add %i0, %i1, %i0
	stx %i0, [%fp+2007]
	ldx [%fp+2023], %i1
	ldx [%fp+2015], %i0
	add %i0, %i1, %i0
	ba .LBB2_2
	stx %i0, [%fp+2015]
.LBB2_2:                                ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	brz %i0, .LBB2_5
	nop
	ba .LBB2_3
	nop
.LBB2_3:                                !   in Loop: Header=BB2_2 Depth=1
	ldx [%fp+2007], %i0
	add %i0, -1, %i1
	stx %i1, [%fp+2007]
	ldub [%i0+-1], %i1
	ldx [%fp+2015], %i0
	add %i0, -1, %i2
	stx %i2, [%fp+2015]
	ba .LBB2_4
	stb %i1, [%i0+-1]
.LBB2_4:                                !   in Loop: Header=BB2_2 Depth=1
	ldx [%fp+2023], %i0
	add %i0, -1, %i0
	ba .LBB2_2
	stx %i0, [%fp+2023]
.LBB2_5:
	ba .LBB2_13
	nop
.LBB2_6:
	ldx [%fp+2007], %i0
	ldx [%fp+2015], %i1
	cmp	%i0, %i1
	be %xcc, .LBB2_12
	nop
	ba .LBB2_7
	nop
.LBB2_7:
	ba .LBB2_8
	nop
.LBB2_8:                                ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	brz %i0, .LBB2_11
	nop
	ba .LBB2_9
	nop
.LBB2_9:                                !   in Loop: Header=BB2_8 Depth=1
	ldx [%fp+2007], %i0
	add %i0, 1, %i1
	stx %i1, [%fp+2007]
	ldub [%i0], %i1
	ldx [%fp+2015], %i0
	add %i0, 1, %i2
	stx %i2, [%fp+2015]
	ba .LBB2_10
	stb %i1, [%i0]
.LBB2_10:                               !   in Loop: Header=BB2_8 Depth=1
	ldx [%fp+2023], %i0
	add %i0, -1, %i0
	ba .LBB2_8
	stx %i0, [%fp+2023]
.LBB2_11:
	ba .LBB2_12
	nop
.LBB2_12:
	ba .LBB2_13
	nop
.LBB2_13:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end2:
	.size	memmove, .Lfunc_end2-memmove
                                        ! -- End function
	.globl	memccpy                         ! -- Begin function memccpy
	.p2align	2
	.type	memccpy,@function
memccpy:                                ! @memccpy
! %bb.0:
	save %sp, -192, %sp
                                        ! kill: def $i4 killed $i2
	stx %i0, [%fp+2031]
	stx %i1, [%fp+2023]
	st %i2, [%fp+2019]
	stx %i3, [%fp+2007]
	ldx [%fp+2031], %i0
	stx %i0, [%fp+1999]
	ldx [%fp+2023], %i0
	stx %i0, [%fp+1991]
	add %fp, 2019, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	ba .LBB3_1
	st %i0, [%fp+2019]
.LBB3_1:                                ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2007], %i0
	mov	%g0, %i1
	brz %i0, .LBB3_3
	st %i1, [%fp+1987]
	ba .LBB3_2
	nop
.LBB3_2:                                !   in Loop: Header=BB3_1 Depth=1
	ldx [%fp+1991], %i0
	ldub [%i0], %i1
	ldx [%fp+1999], %i0
	stb %i1, [%i0]
	ld [%fp+2019], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	movne	%icc, 1, %i0
	ba .LBB3_3
	st %i0, [%fp+1987]
.LBB3_3:                                !   in Loop: Header=BB3_1 Depth=1
	ld [%fp+1987], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB3_6
	nop
	ba .LBB3_4
	nop
.LBB3_4:                                !   in Loop: Header=BB3_1 Depth=1
	ba .LBB3_5
	nop
.LBB3_5:                                !   in Loop: Header=BB3_1 Depth=1
	ldx [%fp+2007], %i0
	add %i0, -1, %i0
	stx %i0, [%fp+2007]
	ldx [%fp+1991], %i0
	add %i0, 1, %i0
	stx %i0, [%fp+1991]
	ldx [%fp+1999], %i0
	add %i0, 1, %i0
	ba .LBB3_1
	stx %i0, [%fp+1999]
.LBB3_6:
	ldx [%fp+2007], %i0
	brz %i0, .LBB3_8
	nop
	ba .LBB3_7
	nop
.LBB3_7:
	ldx [%fp+1999], %i0
	add %i0, 1, %i0
	ba .LBB3_9
	stx %i0, [%fp+2039]
.LBB3_8:
	ba .LBB3_9
	stx %g0, [%fp+2039]
.LBB3_9:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end3:
	.size	memccpy, .Lfunc_end3-memccpy
                                        ! -- End function
	.globl	memchr                          ! -- Begin function memchr
	.p2align	2
	.type	memchr,@function
memchr:                                 ! @memchr
! %bb.0:
	save %sp, -176, %sp
                                        ! kill: def $i3 killed $i1
	stx %i0, [%fp+2039]
	st %i1, [%fp+2035]
	stx %i2, [%fp+2023]
	ldx [%fp+2039], %i0
	stx %i0, [%fp+2015]
	add %fp, 2035, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	ba .LBB4_1
	st %i0, [%fp+2035]
.LBB4_1:                                ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	mov	%g0, %i1
	brz %i0, .LBB4_3
	st %i1, [%fp+2011]
	ba .LBB4_2
	nop
.LBB4_2:                                !   in Loop: Header=BB4_1 Depth=1
	ldx [%fp+2015], %i0
	ldub [%i0], %i1
	ld [%fp+2035], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	movne	%icc, 1, %i0
	ba .LBB4_3
	st %i0, [%fp+2011]
.LBB4_3:                                !   in Loop: Header=BB4_1 Depth=1
	ld [%fp+2011], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB4_6
	nop
	ba .LBB4_4
	nop
.LBB4_4:                                !   in Loop: Header=BB4_1 Depth=1
	ba .LBB4_5
	nop
.LBB4_5:                                !   in Loop: Header=BB4_1 Depth=1
	ldx [%fp+2015], %i0
	add %i0, 1, %i0
	stx %i0, [%fp+2015]
	ldx [%fp+2023], %i0
	add %i0, -1, %i0
	ba .LBB4_1
	stx %i0, [%fp+2023]
.LBB4_6:
	ldx [%fp+2023], %i0
	brz %i0, .LBB4_8
	nop
	ba .LBB4_7
	nop
.LBB4_7:
	ldx [%fp+2015], %i0
	ba .LBB4_9
	stx %i0, [%fp+1999]
.LBB4_8:
	mov	%g0, %i0
	ba .LBB4_9
	stx %i0, [%fp+1999]
.LBB4_9:
	ldx [%fp+1999], %i0                     ! 8-byte Folded Reload
	ret
	restore
.Lfunc_end4:
	.size	memchr, .Lfunc_end4-memchr
                                        ! -- End function
	.globl	memcmp                          ! -- Begin function memcmp
	.p2align	2
	.type	memcmp,@function
memcmp:                                 ! @memcmp
! %bb.0:
	save %sp, -176, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	stx %i2, [%fp+2023]
	ldx [%fp+2039], %i0
	stx %i0, [%fp+2015]
	ldx [%fp+2031], %i0
	ba .LBB5_1
	stx %i0, [%fp+2007]
.LBB5_1:                                ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	mov	%g0, %i1
	brz %i0, .LBB5_3
	st %i1, [%fp+2003]
	ba .LBB5_2
	nop
.LBB5_2:                                !   in Loop: Header=BB5_1 Depth=1
	ldx [%fp+2015], %i0
	ldub [%i0], %i1
	ldx [%fp+2007], %i0
	ldub [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	move	%icc, 1, %i0
	ba .LBB5_3
	st %i0, [%fp+2003]
.LBB5_3:                                !   in Loop: Header=BB5_1 Depth=1
	ld [%fp+2003], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB5_6
	nop
	ba .LBB5_4
	nop
.LBB5_4:                                !   in Loop: Header=BB5_1 Depth=1
	ba .LBB5_5
	nop
.LBB5_5:                                !   in Loop: Header=BB5_1 Depth=1
	ldx [%fp+2023], %i0
	add %i0, -1, %i0
	stx %i0, [%fp+2023]
	ldx [%fp+2015], %i0
	add %i0, 1, %i0
	stx %i0, [%fp+2015]
	ldx [%fp+2007], %i0
	add %i0, 1, %i0
	ba .LBB5_1
	stx %i0, [%fp+2007]
.LBB5_6:
	ldx [%fp+2023], %i0
	brz %i0, .LBB5_8
	nop
	ba .LBB5_7
	nop
.LBB5_7:
	ldx [%fp+2015], %i0
	ldub [%i0], %i0
	ldx [%fp+2007], %i1
	ldub [%i1], %i1
	sub %i0, %i1, %i0
	ba .LBB5_9
	st %i0, [%fp+1999]
.LBB5_8:
	mov	%g0, %i0
	ba .LBB5_9
	st %i0, [%fp+1999]
.LBB5_9:
	ld [%fp+1999], %i0                      ! 4-byte Folded Reload
	sra %i0, 0, %i0
	ret
	restore
.Lfunc_end5:
	.size	memcmp, .Lfunc_end5-memcmp
                                        ! -- End function
	.globl	memcpy                          ! -- Begin function memcpy
	.p2align	2
	.type	memcpy,@function
memcpy:                                 ! @memcpy
! %bb.0:
	save %sp, -176, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	stx %i2, [%fp+2023]
	ldx [%fp+2039], %i0
	stx %i0, [%fp+2015]
	ldx [%fp+2031], %i0
	ba .LBB6_1
	stx %i0, [%fp+2007]
.LBB6_1:                                ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	brz %i0, .LBB6_4
	nop
	ba .LBB6_2
	nop
.LBB6_2:                                !   in Loop: Header=BB6_1 Depth=1
	ldx [%fp+2007], %i0
	add %i0, 1, %i1
	stx %i1, [%fp+2007]
	ldub [%i0], %i1
	ldx [%fp+2015], %i0
	add %i0, 1, %i2
	stx %i2, [%fp+2015]
	ba .LBB6_3
	stb %i1, [%i0]
.LBB6_3:                                !   in Loop: Header=BB6_1 Depth=1
	ldx [%fp+2023], %i0
	add %i0, -1, %i0
	ba .LBB6_1
	stx %i0, [%fp+2023]
.LBB6_4:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end6:
	.size	memcpy, .Lfunc_end6-memcpy
                                        ! -- End function
	.globl	memrchr                         ! -- Begin function memrchr
	.p2align	2
	.type	memrchr,@function
memrchr:                                ! @memrchr
! %bb.0:
	save %sp, -176, %sp
                                        ! kill: def $i3 killed $i1
	stx %i0, [%fp+2031]
	st %i1, [%fp+2027]
	stx %i2, [%fp+2015]
	ldx [%fp+2031], %i0
	stx %i0, [%fp+2007]
	add %fp, 2027, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	ba .LBB7_1
	st %i0, [%fp+2027]
.LBB7_1:                                ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2015], %i0
	add %i0, -1, %i1
	brz %i0, .LBB7_5
	stx %i1, [%fp+2015]
	ba .LBB7_2
	nop
.LBB7_2:                                !   in Loop: Header=BB7_1 Depth=1
	ldx [%fp+2007], %i0
	ldx [%fp+2015], %i1
	ldub [%i0+%i1], %i0
	ld [%fp+2027], %i1
	cmp	%i0, %i1
	bne %icc, .LBB7_4
	nop
	ba .LBB7_3
	nop
.LBB7_3:
	ldx [%fp+2007], %i0
	ldx [%fp+2015], %i1
	add %i0, %i1, %i0
	ba .LBB7_6
	stx %i0, [%fp+2039]
.LBB7_4:                                !   in Loop: Header=BB7_1 Depth=1
	ba .LBB7_1
	nop
.LBB7_5:
	ba .LBB7_6
	stx %g0, [%fp+2039]
.LBB7_6:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end7:
	.size	memrchr, .Lfunc_end7-memrchr
                                        ! -- End function
	.globl	memset                          ! -- Begin function memset
	.p2align	2
	.type	memset,@function
memset:                                 ! @memset
! %bb.0:
	save %sp, -176, %sp
                                        ! kill: def $i3 killed $i1
	stx %i0, [%fp+2039]
	st %i1, [%fp+2035]
	stx %i2, [%fp+2023]
	ldx [%fp+2039], %i0
	ba .LBB8_1
	stx %i0, [%fp+2015]
.LBB8_1:                                ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	brz %i0, .LBB8_4
	nop
	ba .LBB8_2
	nop
.LBB8_2:                                !   in Loop: Header=BB8_1 Depth=1
	ld [%fp+2035], %i1
	ldx [%fp+2015], %i0
	ba .LBB8_3
	stb %i1, [%i0]
.LBB8_3:                                !   in Loop: Header=BB8_1 Depth=1
	ldx [%fp+2023], %i0
	add %i0, -1, %i0
	stx %i0, [%fp+2023]
	ldx [%fp+2015], %i0
	add %i0, 1, %i0
	ba .LBB8_1
	stx %i0, [%fp+2015]
.LBB8_4:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end8:
	.size	memset, .Lfunc_end8-memset
                                        ! -- End function
	.globl	stpcpy                          ! -- Begin function stpcpy
	.p2align	2
	.type	stpcpy,@function
stpcpy:                                 ! @stpcpy
! %bb.0:
	save %sp, -144, %sp
	stx %i0, [%fp+2039]
	ba .LBB9_1
	stx %i1, [%fp+2031]
.LBB9_1:                                ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2031], %i0
	ldub [%i0], %i0
	ldx [%fp+2039], %i1
	stb %i0, [%i1]
	cmp	%i0, 0
	be %icc, .LBB9_4
	nop
	ba .LBB9_2
	nop
.LBB9_2:                                !   in Loop: Header=BB9_1 Depth=1
	ba .LBB9_3
	nop
.LBB9_3:                                !   in Loop: Header=BB9_1 Depth=1
	ldx [%fp+2031], %i0
	add %i0, 1, %i0
	stx %i0, [%fp+2031]
	ldx [%fp+2039], %i0
	add %i0, 1, %i0
	ba .LBB9_1
	stx %i0, [%fp+2039]
.LBB9_4:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end9:
	.size	stpcpy, .Lfunc_end9-stpcpy
                                        ! -- End function
	.globl	strchrnul                       ! -- Begin function strchrnul
	.p2align	2
	.type	strchrnul,@function
strchrnul:                              ! @strchrnul
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i2 killed $i1
	stx %i0, [%fp+2039]
	st %i1, [%fp+2035]
	add %fp, 2035, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	ba .LBB10_1
	st %i0, [%fp+2035]
.LBB10_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	ldsb [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be %icc, .LBB10_3
	st %i0, [%fp+2031]
	ba .LBB10_2
	nop
.LBB10_2:                               !   in Loop: Header=BB10_1 Depth=1
	ldx [%fp+2039], %i0
	ldub [%i0], %i1
	ld [%fp+2035], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	movne	%icc, 1, %i0
	ba .LBB10_3
	st %i0, [%fp+2031]
.LBB10_3:                               !   in Loop: Header=BB10_1 Depth=1
	ld [%fp+2031], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB10_6
	nop
	ba .LBB10_4
	nop
.LBB10_4:                               !   in Loop: Header=BB10_1 Depth=1
	ba .LBB10_5
	nop
.LBB10_5:                               !   in Loop: Header=BB10_1 Depth=1
	ldx [%fp+2039], %i0
	add %i0, 1, %i0
	ba .LBB10_1
	stx %i0, [%fp+2039]
.LBB10_6:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end10:
	.size	strchrnul, .Lfunc_end10-strchrnul
                                        ! -- End function
	.globl	strchr                          ! -- Begin function strchr
	.p2align	2
	.type	strchr,@function
strchr:                                 ! @strchr
! %bb.0:
	save %sp, -160, %sp
                                        ! kill: def $i2 killed $i1
	stx %i0, [%fp+2031]
	ba .LBB11_1
	st %i1, [%fp+2027]
.LBB11_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2031], %i0
	ldsb [%i0], %i0
	ld [%fp+2027], %i1
	cmp	%i0, %i1
	bne %icc, .LBB11_3
	nop
	ba .LBB11_2
	nop
.LBB11_2:
	ldx [%fp+2031], %i0
	ba .LBB11_6
	stx %i0, [%fp+2039]
.LBB11_3:                               !   in Loop: Header=BB11_1 Depth=1
	ba .LBB11_4
	nop
.LBB11_4:                               !   in Loop: Header=BB11_1 Depth=1
	ldx [%fp+2031], %i0
	add %i0, 1, %i1
	stx %i1, [%fp+2031]
	ldub [%i0], %i0
	cmp	%i0, 0
	bne %icc, .LBB11_1
	nop
	ba .LBB11_5
	nop
.LBB11_5:
	ba .LBB11_6
	stx %g0, [%fp+2039]
.LBB11_6:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end11:
	.size	strchr, .Lfunc_end11-strchr
                                        ! -- End function
	.globl	strcmp                          ! -- Begin function strcmp
	.p2align	2
	.type	strcmp,@function
strcmp:                                 ! @strcmp
! %bb.0:
	save %sp, -160, %sp
	stx %i0, [%fp+2039]
	ba .LBB12_1
	stx %i1, [%fp+2031]
.LBB12_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	ldsb [%i0], %i1
	ldx [%fp+2031], %i0
	ldsb [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bne %icc, .LBB12_3
	st %i0, [%fp+2027]
	ba .LBB12_2
	nop
.LBB12_2:                               !   in Loop: Header=BB12_1 Depth=1
	ldx [%fp+2039], %i0
	ldsb [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	movne	%icc, 1, %i0
	ba .LBB12_3
	st %i0, [%fp+2027]
.LBB12_3:                               !   in Loop: Header=BB12_1 Depth=1
	ld [%fp+2027], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB12_6
	nop
	ba .LBB12_4
	nop
.LBB12_4:                               !   in Loop: Header=BB12_1 Depth=1
	ba .LBB12_5
	nop
.LBB12_5:                               !   in Loop: Header=BB12_1 Depth=1
	ldx [%fp+2039], %i0
	add %i0, 1, %i0
	stx %i0, [%fp+2039]
	ldx [%fp+2031], %i0
	add %i0, 1, %i0
	ba .LBB12_1
	stx %i0, [%fp+2031]
.LBB12_6:
	ldx [%fp+2039], %i0
	ldub [%i0], %i0
	ldx [%fp+2031], %i1
	ldub [%i1], %i1
	sub %i0, %i1, %i0
	sra %i0, 0, %i0
	ret
	restore
.Lfunc_end12:
	.size	strcmp, .Lfunc_end12-strcmp
                                        ! -- End function
	.globl	strlen                          ! -- Begin function strlen
	.p2align	2
	.type	strlen,@function
strlen:                                 ! @strlen
! %bb.0:
	save %sp, -144, %sp
	stx %i0, [%fp+2039]
	ldx [%fp+2039], %i0
	ba .LBB13_1
	stx %i0, [%fp+2031]
.LBB13_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	ldub [%i0], %i0
	cmp	%i0, 0
	be %icc, .LBB13_4
	nop
	ba .LBB13_2
	nop
.LBB13_2:                               !   in Loop: Header=BB13_1 Depth=1
	ba .LBB13_3
	nop
.LBB13_3:                               !   in Loop: Header=BB13_1 Depth=1
	ldx [%fp+2039], %i0
	add %i0, 1, %i0
	ba .LBB13_1
	stx %i0, [%fp+2039]
.LBB13_4:
	ldx [%fp+2039], %i0
	ldx [%fp+2031], %i1
	sub %i0, %i1, %i0
	ret
	restore
.Lfunc_end13:
	.size	strlen, .Lfunc_end13-strlen
                                        ! -- End function
	.globl	strncmp                         ! -- Begin function strncmp
	.p2align	2
	.type	strncmp,@function
strncmp:                                ! @strncmp
! %bb.0:
	save %sp, -192, %sp
	stx %i0, [%fp+2031]
	stx %i1, [%fp+2023]
	stx %i2, [%fp+2015]
	ldx [%fp+2031], %i0
	stx %i0, [%fp+2007]
	ldx [%fp+2023], %i0
	stx %i0, [%fp+1999]
	ldx [%fp+2015], %i0
	add %i0, -1, %i1
	brnz %i0, .LBB14_2
	stx %i1, [%fp+2015]
	ba .LBB14_1
	nop
.LBB14_1:
	ba .LBB14_11
	st %g0, [%fp+2043]
.LBB14_2:
	ba .LBB14_3
	nop
.LBB14_3:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2007], %i0
	ldub [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be %icc, .LBB14_7
	st %i0, [%fp+1995]
	ba .LBB14_4
	nop
.LBB14_4:                               !   in Loop: Header=BB14_3 Depth=1
	ldx [%fp+1999], %i0
	ldub [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be %icc, .LBB14_7
	st %i0, [%fp+1995]
	ba .LBB14_5
	nop
.LBB14_5:                               !   in Loop: Header=BB14_3 Depth=1
	ldx [%fp+2015], %i0
	mov	%g0, %i1
	brz %i0, .LBB14_7
	st %i1, [%fp+1995]
	ba .LBB14_6
	nop
.LBB14_6:                               !   in Loop: Header=BB14_3 Depth=1
	ldx [%fp+2007], %i0
	ldub [%i0], %i1
	ldx [%fp+1999], %i0
	ldub [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	move	%icc, 1, %i0
	ba .LBB14_7
	st %i0, [%fp+1995]
.LBB14_7:                               !   in Loop: Header=BB14_3 Depth=1
	ld [%fp+1995], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB14_10
	nop
	ba .LBB14_8
	nop
.LBB14_8:                               !   in Loop: Header=BB14_3 Depth=1
	ba .LBB14_9
	nop
.LBB14_9:                               !   in Loop: Header=BB14_3 Depth=1
	ldx [%fp+2007], %i0
	add %i0, 1, %i0
	stx %i0, [%fp+2007]
	ldx [%fp+1999], %i0
	add %i0, 1, %i0
	stx %i0, [%fp+1999]
	ldx [%fp+2015], %i0
	add %i0, -1, %i0
	ba .LBB14_3
	stx %i0, [%fp+2015]
.LBB14_10:
	ldx [%fp+2007], %i0
	ldub [%i0], %i0
	ldx [%fp+1999], %i1
	ldub [%i1], %i1
	sub %i0, %i1, %i0
	ba .LBB14_11
	st %i0, [%fp+2043]
.LBB14_11:
	ldsw [%fp+2043], %i0
	ret
	restore
.Lfunc_end14:
	.size	strncmp, .Lfunc_end14-strncmp
                                        ! -- End function
	.globl	swab                            ! -- Begin function swab
	.p2align	2
	.type	swab,@function
swab:                                   ! @swab
! %bb.0:
	save %sp, -176, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	stx %i2, [%fp+2023]
	ldx [%fp+2039], %i0
	stx %i0, [%fp+2015]
	ldx [%fp+2031], %i0
	ba .LBB15_1
	stx %i0, [%fp+2007]
.LBB15_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	cmp	%i0, 2
	bl %xcc, .LBB15_4
	nop
	ba .LBB15_2
	nop
.LBB15_2:                               !   in Loop: Header=BB15_1 Depth=1
	ldx [%fp+2015], %i0
	ldub [%i0+1], %i1
	ldx [%fp+2007], %i0
	stb %i1, [%i0]
	ldx [%fp+2015], %i0
	ldub [%i0], %i1
	ldx [%fp+2007], %i0
	stb %i1, [%i0+1]
	ldx [%fp+2007], %i0
	add %i0, 2, %i0
	stx %i0, [%fp+2007]
	ldx [%fp+2015], %i0
	add %i0, 2, %i0
	ba .LBB15_3
	stx %i0, [%fp+2015]
.LBB15_3:                               !   in Loop: Header=BB15_1 Depth=1
	ldx [%fp+2023], %i0
	add %i0, -2, %i0
	ba .LBB15_1
	stx %i0, [%fp+2023]
.LBB15_4:
	ret
	restore
.Lfunc_end15:
	.size	swab, .Lfunc_end15-swab
                                        ! -- End function
	.globl	isalpha                         ! -- Begin function isalpha
	.p2align	2
	.type	isalpha,@function
isalpha:                                ! @isalpha
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i0
	or %i0, 32, %i0
	add %i0, -97, %i1
	mov	%g0, %i0
	cmp	%i1, 26
	movcs	%icc, 1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end16:
	.size	isalpha, .Lfunc_end16-isalpha
                                        ! -- End function
	.globl	isascii                         ! -- Begin function isascii
	.p2align	2
	.type	isascii,@function
isascii:                                ! @isascii
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i0
	and %i0, -128, %i1
	mov	%g0, %i0
	cmp	%i1, 0
	move	%icc, 1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end17:
	.size	isascii, .Lfunc_end17-isascii
                                        ! -- End function
	.globl	isblank                         ! -- Begin function isblank
	.p2align	2
	.type	isblank,@function
isblank:                                ! @isblank
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i1
	mov	1, %i0
	cmp	%i1, 32
	be %icc, .LBB18_2
	st %i0, [%fp+2039]
	ba .LBB18_1
	nop
.LBB18_1:
	ld [%fp+2043], %i1
	mov	%g0, %i0
	cmp	%i1, 9
	move	%icc, 1, %i0
	ba .LBB18_2
	st %i0, [%fp+2039]
.LBB18_2:
	ld [%fp+2039], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end18:
	.size	isblank, .Lfunc_end18-isblank
                                        ! -- End function
	.globl	iscntrl                         ! -- Begin function iscntrl
	.p2align	2
	.type	iscntrl,@function
iscntrl:                                ! @iscntrl
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i1
	mov	1, %i0
	cmp	%i1, 32
	bcs %icc, .LBB19_2
	st %i0, [%fp+2039]
	ba .LBB19_1
	nop
.LBB19_1:
	ld [%fp+2043], %i1
	mov	%g0, %i0
	cmp	%i1, 127
	move	%icc, 1, %i0
	ba .LBB19_2
	st %i0, [%fp+2039]
.LBB19_2:
	ld [%fp+2039], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end19:
	.size	iscntrl, .Lfunc_end19-iscntrl
                                        ! -- End function
	.globl	isdigit                         ! -- Begin function isdigit
	.p2align	2
	.type	isdigit,@function
isdigit:                                ! @isdigit
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i0
	add %i0, -48, %i1
	mov	%g0, %i0
	cmp	%i1, 10
	movcs	%icc, 1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end20:
	.size	isdigit, .Lfunc_end20-isdigit
                                        ! -- End function
	.globl	isgraph                         ! -- Begin function isgraph
	.p2align	2
	.type	isgraph,@function
isgraph:                                ! @isgraph
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i0
	add %i0, -33, %i1
	mov	%g0, %i0
	cmp	%i1, 94
	movcs	%icc, 1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end21:
	.size	isgraph, .Lfunc_end21-isgraph
                                        ! -- End function
	.globl	islower                         ! -- Begin function islower
	.p2align	2
	.type	islower,@function
islower:                                ! @islower
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i0
	add %i0, -97, %i1
	mov	%g0, %i0
	cmp	%i1, 26
	movcs	%icc, 1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end22:
	.size	islower, .Lfunc_end22-islower
                                        ! -- End function
	.globl	isprint                         ! -- Begin function isprint
	.p2align	2
	.type	isprint,@function
isprint:                                ! @isprint
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i0
	add %i0, -32, %i1
	mov	%g0, %i0
	cmp	%i1, 95
	movcs	%icc, 1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end23:
	.size	isprint, .Lfunc_end23-isprint
                                        ! -- End function
	.globl	isspace                         ! -- Begin function isspace
	.p2align	2
	.type	isspace,@function
isspace:                                ! @isspace
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i1
	mov	1, %i0
	cmp	%i1, 32
	be %icc, .LBB24_2
	st %i0, [%fp+2039]
	ba .LBB24_1
	nop
.LBB24_1:
	ld [%fp+2043], %i0
	add %i0, -9, %i1
	mov	%g0, %i0
	cmp	%i1, 5
	movcs	%icc, 1, %i0
	ba .LBB24_2
	st %i0, [%fp+2039]
.LBB24_2:
	ld [%fp+2039], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end24:
	.size	isspace, .Lfunc_end24-isspace
                                        ! -- End function
	.globl	isupper                         ! -- Begin function isupper
	.p2align	2
	.type	isupper,@function
isupper:                                ! @isupper
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i0
	add %i0, -65, %i1
	mov	%g0, %i0
	cmp	%i1, 26
	movcs	%icc, 1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end25:
	.size	isupper, .Lfunc_end25-isupper
                                        ! -- End function
	.globl	iswcntrl                        ! -- Begin function iswcntrl
	.p2align	2
	.type	iswcntrl,@function
iswcntrl:                               ! @iswcntrl
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i1
	mov	1, %i0
	cmp	%i1, 32
	bcs %icc, .LBB26_4
	st %i0, [%fp+2039]
	ba .LBB26_1
	nop
.LBB26_1:
	ld [%fp+2043], %i0
	add %i0, -127, %i1
	mov	1, %i0
	cmp	%i1, 33
	bcs %icc, .LBB26_4
	st %i0, [%fp+2039]
	ba .LBB26_2
	nop
.LBB26_2:
	ld [%fp+2043], %i0
	sethi 4194295, %i1
	or %i1, 984, %i1
	add %i0, %i1, %i1
	mov	1, %i0
	cmp	%i1, 2
	bcs %icc, .LBB26_4
	st %i0, [%fp+2039]
	ba .LBB26_3
	nop
.LBB26_3:
	ld [%fp+2043], %i0
	sethi 4194240, %i1
	or %i1, 7, %i1
	add %i0, %i1, %i1
	mov	%g0, %i0
	cmp	%i1, 3
	movcs	%icc, 1, %i0
	ba .LBB26_4
	st %i0, [%fp+2039]
.LBB26_4:
	ld [%fp+2039], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end26:
	.size	iswcntrl, .Lfunc_end26-iswcntrl
                                        ! -- End function
	.globl	iswdigit                        ! -- Begin function iswdigit
	.p2align	2
	.type	iswdigit,@function
iswdigit:                               ! @iswdigit
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i0
	add %i0, -48, %i1
	mov	%g0, %i0
	cmp	%i1, 10
	movcs	%icc, 1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end27:
	.size	iswdigit, .Lfunc_end27-iswdigit
                                        ! -- End function
	.globl	iswprint                        ! -- Begin function iswprint
	.p2align	2
	.type	iswprint,@function
iswprint:                               ! @iswprint
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2039]
	ld [%fp+2039], %i0
	cmp	%i0, 254
	bgu %icc, .LBB28_2
	nop
	ba .LBB28_1
	nop
.LBB28_1:
	ld [%fp+2039], %i0
	add %i0, 1, %i0
	and %i0, 127, %i1
	mov	%g0, %i0
	cmp	%i1, 32
	movg	%icc, 1, %i0
	ba .LBB28_10
	st %i0, [%fp+2043]
.LBB28_2:
	ld [%fp+2039], %i0
	sethi 8, %i1
	or %i1, 40, %i1
	cmp	%i0, %i1
	bcs %icc, .LBB28_5
	nop
	ba .LBB28_3
	nop
.LBB28_3:
	ld [%fp+2039], %i0
	sethi 4194295, %i1
	or %i1, 982, %i1
	add %i0, %i1, %i0
	sethi 45, %i1
	or %i1, 982, %i1
	cmp	%i0, %i1
	bcs %icc, .LBB28_5
	nop
	ba .LBB28_4
	nop
.LBB28_4:
	ld [%fp+2039], %i0
	sethi 4194248, %i1
	add %i0, %i1, %i0
	sethi 7, %i1
	or %i1, 1016, %i1
	cmp	%i0, %i1
	bgu %icc, .LBB28_6
	nop
	ba .LBB28_5
	nop
.LBB28_5:
	mov	1, %i0
	ba .LBB28_10
	st %i0, [%fp+2043]
.LBB28_6:
	ld [%fp+2039], %i0
	sethi 4194240, %i1
	or %i1, 4, %i1
	add %i0, %i1, %i0
	sethi 1024, %i1
	or %i1, 3, %i1
	cmp	%i0, %i1
	bgu %icc, .LBB28_8
	nop
	ba .LBB28_7
	nop
.LBB28_7:
	ld [%fp+2039], %i0
	sethi 63, %i1
	or %i1, 1022, %i1
	and %i0, %i1, %i0
	cmp	%i0, %i1
	bne %icc, .LBB28_9
	nop
	ba .LBB28_8
	nop
.LBB28_8:
	ba .LBB28_10
	st %g0, [%fp+2043]
.LBB28_9:
	mov	1, %i0
	ba .LBB28_10
	st %i0, [%fp+2043]
.LBB28_10:
	ldsw [%fp+2043], %i0
	ret
	restore
.Lfunc_end28:
	.size	iswprint, .Lfunc_end28-iswprint
                                        ! -- End function
	.globl	iswxdigit                       ! -- Begin function iswxdigit
	.p2align	2
	.type	iswxdigit,@function
iswxdigit:                              ! @iswxdigit
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i0
	add %i0, -48, %i1
	mov	1, %i0
	cmp	%i1, 10
	bcs %icc, .LBB29_2
	st %i0, [%fp+2039]
	ba .LBB29_1
	nop
.LBB29_1:
	ld [%fp+2043], %i0
	or %i0, 32, %i0
	add %i0, -97, %i1
	mov	%g0, %i0
	cmp	%i1, 6
	movcs	%icc, 1, %i0
	ba .LBB29_2
	st %i0, [%fp+2039]
.LBB29_2:
	ld [%fp+2039], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end29:
	.size	iswxdigit, .Lfunc_end29-iswxdigit
                                        ! -- End function
	.globl	toascii                         ! -- Begin function toascii
	.p2align	2
	.type	toascii,@function
toascii:                                ! @toascii
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i0
	and %i0, 127, %i0
	ret
	restore
.Lfunc_end30:
	.size	toascii, .Lfunc_end30-toascii
                                        ! -- End function
	.globl	fdim                            ! -- Begin function fdim
	.p2align	2
	.type	fdim,@function
fdim:                                   ! @fdim
! %bb.0:
	save %sp, -208, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	stx %i0, [%fp+2031]
	stx %i1, [%fp+2023]
	ldx [%fp+2031], %i0
	sethi 4194303, %i1
	or %i1, 1023, %i2
	sethi 2097151, %i1
	or %i1, 1023, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	and %i0, %i1, %i0
	sethi 0, %i1
	or %i1, 1, %i2
	sethi 2096128, %i1
	or %i1, 0, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	cmp	%i0, %i1
	bl %xcc, .LBB31_2
	nop
	ba .LBB31_1
	nop
.LBB31_1:
	ldx [%fp+2031], %i0
	ba .LBB31_8
	stx %i0, [%fp+2039]
.LBB31_2:
	ldx [%fp+2023], %i0
	sethi 4194303, %i1
	or %i1, 1023, %i2
	sethi 2097151, %i1
	or %i1, 1023, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	and %i0, %i1, %i0
	sethi 0, %i1
	or %i1, 1, %i2
	sethi 2096128, %i1
	or %i1, 0, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	cmp	%i0, %i1
	bl %xcc, .LBB31_4
	nop
	ba .LBB31_3
	nop
.LBB31_3:
	ldx [%fp+2023], %i0
	ba .LBB31_8
	stx %i0, [%fp+2039]
.LBB31_4:
	ldx [%fp+2031], %o0
	call __gtdf2
	ldx [%fp+2023], %o1
	cmp	%o0, 1
	bl %icc, .LBB31_6
	nop
	ba .LBB31_5
	nop
.LBB31_5:
	ldx [%fp+2031], %o0
	call __subdf3
	ldx [%fp+2023], %o1
	mov	%o0, %i0
	ba .LBB31_7
	stx %i0, [%fp+2015]
.LBB31_6:
	mov	%g0, %i0
	ba .LBB31_7
	stx %i0, [%fp+2015]
.LBB31_7:
	ldx [%fp+2015], %i0                     ! 8-byte Folded Reload
	ba .LBB31_8
	stx %i0, [%fp+2039]
.LBB31_8:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end31:
	.size	fdim, .Lfunc_end31-fdim
                                        ! -- End function
	.globl	fdimf                           ! -- Begin function fdimf
	.p2align	2
	.type	fdimf,@function
fdimf:                                  ! @fdimf
! %bb.0:
	save %sp, -192, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+2039]
	st %i1, [%fp+2035]
	ld [%fp+2039], %i0
	sethi 2097152, %i1
	andn %i0, %i1, %i0
	sethi 2088960, %i1
	or %i1, 1, %i1
	cmp	%i0, %i1
	bl %icc, .LBB32_2
	nop
	ba .LBB32_1
	nop
.LBB32_1:
	ld [%fp+2039], %i0
	ba .LBB32_8
	st %i0, [%fp+2043]
.LBB32_2:
	ld [%fp+2035], %i0
	sethi 2097152, %i1
	andn %i0, %i1, %i0
	sethi 2088960, %i1
	or %i1, 1, %i1
	cmp	%i0, %i1
	bl %icc, .LBB32_4
	nop
	ba .LBB32_3
	nop
.LBB32_3:
	ld [%fp+2035], %i0
	ba .LBB32_8
	st %i0, [%fp+2043]
.LBB32_4:
	ld [%fp+2039], %o0
	call __gtsf2
	ld [%fp+2035], %o1
	cmp	%o0, 1
	bl %icc, .LBB32_6
	nop
	ba .LBB32_5
	nop
.LBB32_5:
	ld [%fp+2039], %o0
	call __subsf3
	ld [%fp+2035], %o1
	mov	%o0, %i0
	ba .LBB32_7
	st %i0, [%fp+2031]
.LBB32_6:
	mov	%g0, %i0
	ba .LBB32_7
	st %i0, [%fp+2031]
.LBB32_7:
	ld [%fp+2031], %i0                      ! 4-byte Folded Reload
	ba .LBB32_8
	st %i0, [%fp+2043]
.LBB32_8:
	ld [%fp+2043], %i0
	ret
	restore
.Lfunc_end32:
	.size	fdimf, .Lfunc_end32-fdimf
                                        ! -- End function
	.globl	fmax                            ! -- Begin function fmax
	.p2align	2
	.type	fmax,@function
fmax:                                   ! @fmax
! %bb.0:
	save %sp, -224, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	stx %i0, [%fp+2031]
	stx %i1, [%fp+2023]
	ldx [%fp+2031], %i0
	sethi 4194303, %i1
	or %i1, 1023, %i2
	sethi 2097151, %i1
	or %i1, 1023, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	and %i0, %i1, %i0
	sethi 0, %i1
	or %i1, 1, %i2
	sethi 2096128, %i1
	or %i1, 0, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	cmp	%i0, %i1
	bl %xcc, .LBB33_2
	nop
	ba .LBB33_1
	nop
.LBB33_1:
	ldx [%fp+2023], %i0
	ba .LBB33_13
	stx %i0, [%fp+2039]
.LBB33_2:
	ldx [%fp+2023], %i0
	sethi 4194303, %i1
	or %i1, 1023, %i2
	sethi 2097151, %i1
	or %i1, 1023, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	and %i0, %i1, %i0
	sethi 0, %i1
	or %i1, 1, %i2
	sethi 2096128, %i1
	or %i1, 0, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	cmp	%i0, %i1
	bl %xcc, .LBB33_4
	nop
	ba .LBB33_3
	nop
.LBB33_3:
	ldx [%fp+2031], %i0
	ba .LBB33_13
	stx %i0, [%fp+2039]
.LBB33_4:
	ldx [%fp+2031], %i0
	srlx %i0, 63, %i0
	ldx [%fp+2023], %i1
	srlx %i1, 63, %i1
	cmp	%i0, %i1
	be %icc, .LBB33_9
	nop
	ba .LBB33_5
	nop
.LBB33_5:
	ldx [%fp+2031], %i0
	cmp	%i0, -1
	bg %xcc, .LBB33_7
	nop
	ba .LBB33_6
	nop
.LBB33_6:
	ldx [%fp+2023], %i0
	ba .LBB33_8
	stx %i0, [%fp+2015]
.LBB33_7:
	ldx [%fp+2031], %i0
	ba .LBB33_8
	stx %i0, [%fp+2015]
.LBB33_8:
	ldx [%fp+2015], %i0                     ! 8-byte Folded Reload
	ba .LBB33_13
	stx %i0, [%fp+2039]
.LBB33_9:
	ldx [%fp+2031], %o0
	call __ltdf2
	ldx [%fp+2023], %o1
	cmp	%o0, -1
	bg %icc, .LBB33_11
	nop
	ba .LBB33_10
	nop
.LBB33_10:
	ldx [%fp+2023], %i0
	ba .LBB33_12
	stx %i0, [%fp+2007]
.LBB33_11:
	ldx [%fp+2031], %i0
	ba .LBB33_12
	stx %i0, [%fp+2007]
.LBB33_12:
	ldx [%fp+2007], %i0                     ! 8-byte Folded Reload
	ba .LBB33_13
	stx %i0, [%fp+2039]
.LBB33_13:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end33:
	.size	fmax, .Lfunc_end33-fmax
                                        ! -- End function
	.globl	fmaxf                           ! -- Begin function fmaxf
	.p2align	2
	.type	fmaxf,@function
fmaxf:                                  ! @fmaxf
! %bb.0:
	save %sp, -208, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+2039]
	st %i1, [%fp+2035]
	ld [%fp+2039], %i0
	sethi 2097152, %i1
	andn %i0, %i1, %i0
	sethi 2088960, %i1
	or %i1, 1, %i1
	cmp	%i0, %i1
	bl %icc, .LBB34_2
	nop
	ba .LBB34_1
	nop
.LBB34_1:
	ld [%fp+2035], %i0
	ba .LBB34_13
	st %i0, [%fp+2043]
.LBB34_2:
	ld [%fp+2035], %i0
	sethi 2097152, %i1
	andn %i0, %i1, %i0
	sethi 2088960, %i1
	or %i1, 1, %i1
	cmp	%i0, %i1
	bl %icc, .LBB34_4
	nop
	ba .LBB34_3
	nop
.LBB34_3:
	ld [%fp+2039], %i0
	ba .LBB34_13
	st %i0, [%fp+2043]
.LBB34_4:
	ld [%fp+2039], %i0
	srl %i0, 31, %i0
	ld [%fp+2035], %i1
	srl %i1, 31, %i1
	cmp	%i0, %i1
	be %icc, .LBB34_9
	nop
	ba .LBB34_5
	nop
.LBB34_5:
	ld [%fp+2039], %i0
	cmp	%i0, -1
	bg %icc, .LBB34_7
	nop
	ba .LBB34_6
	nop
.LBB34_6:
	ld [%fp+2035], %i0
	ba .LBB34_8
	st %i0, [%fp+2031]
.LBB34_7:
	ld [%fp+2039], %i0
	ba .LBB34_8
	st %i0, [%fp+2031]
.LBB34_8:
	ld [%fp+2031], %i0                      ! 4-byte Folded Reload
	ba .LBB34_13
	st %i0, [%fp+2043]
.LBB34_9:
	ld [%fp+2039], %o0
	call __ltsf2
	ld [%fp+2035], %o1
	cmp	%o0, -1
	bg %icc, .LBB34_11
	nop
	ba .LBB34_10
	nop
.LBB34_10:
	ld [%fp+2035], %i0
	ba .LBB34_12
	st %i0, [%fp+2027]
.LBB34_11:
	ld [%fp+2039], %i0
	ba .LBB34_12
	st %i0, [%fp+2027]
.LBB34_12:
	ld [%fp+2027], %i0                      ! 4-byte Folded Reload
	ba .LBB34_13
	st %i0, [%fp+2043]
.LBB34_13:
	ld [%fp+2043], %i0
	ret
	restore
.Lfunc_end34:
	.size	fmaxf, .Lfunc_end34-fmaxf
                                        ! -- End function
	.globl	fmaxl                           ! -- Begin function fmaxl
	.p2align	2
	.type	fmaxl,@function
fmaxl:                                  ! @fmaxl
! %bb.0:
	save %sp, -256, %sp
	mov	%i1, %i4
	mov	%i0, %i1
                                        ! kill: def $i0 killed $i3
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i0 killed $i4
                                        ! kill: def $i0 killed $i1
	add %fp, 2015, %i0
	or %i0, 8, %i0
	stx %i4, [%i0]
	stx %i1, [%fp+2015]
	add %fp, 1999, %i1
	or %i1, 8, %i1
	stx %i3, [%i1]
	stx %i2, [%fp+1999]
	ldx [%i0], %i4
	ldx [%fp+2015], %i0
	sethi 4194303, %i1
	or %i1, 1023, %i2
	sethi 2097151, %i1
	or %i1, 1023, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	and %i0, %i1, %i2
	sethi 0, %i0
	or %i0, 0, %i1
	sethi 2097088, %i0
	or %i0, 0, %i0
	sllx %i0, 32, %i0
	or %i0, %i1, %i3
	mov	%g0, %i1
	cmp	%i2, %i3
	mov	%i1, %i0
	movl	%xcc, 1, %i0
	movrz %i4, 1, %i1
	cmp	%i2, %i3
	move	%xcc, %i1, %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	bne %icc, .LBB35_2
	nop
	ba .LBB35_1
	nop
.LBB35_1:
	add %fp, 1999, %i0
	or %i0, 8, %i0
	ldx [%i0], %i2
	ldx [%fp+1999], %i0
	add %fp, 2031, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	ba .LBB35_13
	stx %i0, [%fp+2031]
.LBB35_2:
	add %fp, 1999, %i0
	or %i0, 8, %i0
	ldx [%i0], %i4
	ldx [%fp+1999], %i0
	sethi 4194303, %i1
	or %i1, 1023, %i2
	sethi 2097151, %i1
	or %i1, 1023, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	and %i0, %i1, %i2
	sethi 0, %i0
	or %i0, 0, %i1
	sethi 2097088, %i0
	or %i0, 0, %i0
	sllx %i0, 32, %i0
	or %i0, %i1, %i3
	mov	%g0, %i1
	cmp	%i2, %i3
	mov	%i1, %i0
	movl	%xcc, 1, %i0
	movrz %i4, 1, %i1
	cmp	%i2, %i3
	move	%xcc, %i1, %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	bne %icc, .LBB35_4
	nop
	ba .LBB35_3
	nop
.LBB35_3:
	add %fp, 2015, %i0
	or %i0, 8, %i0
	ldx [%i0], %i2
	ldx [%fp+2015], %i0
	add %fp, 2031, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	ba .LBB35_13
	stx %i0, [%fp+2031]
.LBB35_4:
	ldx [%fp+2015], %i0
	srlx %i0, 63, %i0
	ldx [%fp+1999], %i1
	srlx %i1, 63, %i1
	cmp	%i0, %i1
	be %icc, .LBB35_9
	nop
	ba .LBB35_5
	nop
.LBB35_5:
	ldx [%fp+2015], %i0
	cmp	%i0, -1
	bg %xcc, .LBB35_7
	nop
	ba .LBB35_6
	nop
.LBB35_6:
	add %fp, 1999, %i0
	or %i0, 8, %i0
	ldx [%i0], %i0
	ldx [%fp+1999], %i1
	stx %i1, [%fp+1983]                     ! 8-byte Folded Spill
	ba .LBB35_8
	stx %i0, [%fp+1991]
.LBB35_7:
	add %fp, 2015, %i0
	or %i0, 8, %i0
	ldx [%i0], %i0
	ldx [%fp+2015], %i1
	stx %i1, [%fp+1983]                     ! 8-byte Folded Spill
	ba .LBB35_8
	stx %i0, [%fp+1991]
.LBB35_8:
	ldx [%fp+1983], %i0                     ! 8-byte Folded Reload
	ldx [%fp+1991], %i2                     ! 8-byte Folded Reload
	add %fp, 2031, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	ba .LBB35_13
	stx %i0, [%fp+2031]
.LBB35_9:
	add %fp, 2015, %i0
	or %i0, 8, %i0
	ldx [%i0], %o1
	ldx [%fp+2015], %o0
	add %fp, 1999, %i0
	or %i0, 8, %i0
	ldx [%i0], %o3
	call __lttf2
	ldx [%fp+1999], %o2
	cmp	%o0, -1
	bg %icc, .LBB35_11
	nop
	ba .LBB35_10
	nop
.LBB35_10:
	add %fp, 1999, %i0
	or %i0, 8, %i0
	ldx [%i0], %i0
	ldx [%fp+1999], %i1
	stx %i1, [%fp+1967]                     ! 8-byte Folded Spill
	ba .LBB35_12
	stx %i0, [%fp+1975]
.LBB35_11:
	add %fp, 2015, %i0
	or %i0, 8, %i0
	ldx [%i0], %i0
	ldx [%fp+2015], %i1
	stx %i1, [%fp+1967]                     ! 8-byte Folded Spill
	ba .LBB35_12
	stx %i0, [%fp+1975]
.LBB35_12:
	ldx [%fp+1967], %i0                     ! 8-byte Folded Reload
	ldx [%fp+1975], %i2                     ! 8-byte Folded Reload
	add %fp, 2031, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	ba .LBB35_13
	stx %i0, [%fp+2031]
.LBB35_13:
	add %fp, 2031, %i0
	or %i0, 8, %i0
	ldx [%i0], %i1
	ldx [%fp+2031], %i0
	ret
	restore
.Lfunc_end35:
	.size	fmaxl, .Lfunc_end35-fmaxl
                                        ! -- End function
	.globl	fmin                            ! -- Begin function fmin
	.p2align	2
	.type	fmin,@function
fmin:                                   ! @fmin
! %bb.0:
	save %sp, -224, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	stx %i0, [%fp+2031]
	stx %i1, [%fp+2023]
	ldx [%fp+2031], %i0
	sethi 4194303, %i1
	or %i1, 1023, %i2
	sethi 2097151, %i1
	or %i1, 1023, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	and %i0, %i1, %i0
	sethi 0, %i1
	or %i1, 1, %i2
	sethi 2096128, %i1
	or %i1, 0, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	cmp	%i0, %i1
	bl %xcc, .LBB36_2
	nop
	ba .LBB36_1
	nop
.LBB36_1:
	ldx [%fp+2023], %i0
	ba .LBB36_13
	stx %i0, [%fp+2039]
.LBB36_2:
	ldx [%fp+2023], %i0
	sethi 4194303, %i1
	or %i1, 1023, %i2
	sethi 2097151, %i1
	or %i1, 1023, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	and %i0, %i1, %i0
	sethi 0, %i1
	or %i1, 1, %i2
	sethi 2096128, %i1
	or %i1, 0, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	cmp	%i0, %i1
	bl %xcc, .LBB36_4
	nop
	ba .LBB36_3
	nop
.LBB36_3:
	ldx [%fp+2031], %i0
	ba .LBB36_13
	stx %i0, [%fp+2039]
.LBB36_4:
	ldx [%fp+2031], %i0
	srlx %i0, 63, %i0
	ldx [%fp+2023], %i1
	srlx %i1, 63, %i1
	cmp	%i0, %i1
	be %icc, .LBB36_9
	nop
	ba .LBB36_5
	nop
.LBB36_5:
	ldx [%fp+2031], %i0
	cmp	%i0, -1
	bg %xcc, .LBB36_7
	nop
	ba .LBB36_6
	nop
.LBB36_6:
	ldx [%fp+2031], %i0
	ba .LBB36_8
	stx %i0, [%fp+2015]
.LBB36_7:
	ldx [%fp+2023], %i0
	ba .LBB36_8
	stx %i0, [%fp+2015]
.LBB36_8:
	ldx [%fp+2015], %i0                     ! 8-byte Folded Reload
	ba .LBB36_13
	stx %i0, [%fp+2039]
.LBB36_9:
	ldx [%fp+2031], %o0
	call __ltdf2
	ldx [%fp+2023], %o1
	cmp	%o0, -1
	bg %icc, .LBB36_11
	nop
	ba .LBB36_10
	nop
.LBB36_10:
	ldx [%fp+2031], %i0
	ba .LBB36_12
	stx %i0, [%fp+2007]
.LBB36_11:
	ldx [%fp+2023], %i0
	ba .LBB36_12
	stx %i0, [%fp+2007]
.LBB36_12:
	ldx [%fp+2007], %i0                     ! 8-byte Folded Reload
	ba .LBB36_13
	stx %i0, [%fp+2039]
.LBB36_13:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end36:
	.size	fmin, .Lfunc_end36-fmin
                                        ! -- End function
	.globl	fminf                           ! -- Begin function fminf
	.p2align	2
	.type	fminf,@function
fminf:                                  ! @fminf
! %bb.0:
	save %sp, -208, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+2039]
	st %i1, [%fp+2035]
	ld [%fp+2039], %i0
	sethi 2097152, %i1
	andn %i0, %i1, %i0
	sethi 2088960, %i1
	or %i1, 1, %i1
	cmp	%i0, %i1
	bl %icc, .LBB37_2
	nop
	ba .LBB37_1
	nop
.LBB37_1:
	ld [%fp+2035], %i0
	ba .LBB37_13
	st %i0, [%fp+2043]
.LBB37_2:
	ld [%fp+2035], %i0
	sethi 2097152, %i1
	andn %i0, %i1, %i0
	sethi 2088960, %i1
	or %i1, 1, %i1
	cmp	%i0, %i1
	bl %icc, .LBB37_4
	nop
	ba .LBB37_3
	nop
.LBB37_3:
	ld [%fp+2039], %i0
	ba .LBB37_13
	st %i0, [%fp+2043]
.LBB37_4:
	ld [%fp+2039], %i0
	srl %i0, 31, %i0
	ld [%fp+2035], %i1
	srl %i1, 31, %i1
	cmp	%i0, %i1
	be %icc, .LBB37_9
	nop
	ba .LBB37_5
	nop
.LBB37_5:
	ld [%fp+2039], %i0
	cmp	%i0, -1
	bg %icc, .LBB37_7
	nop
	ba .LBB37_6
	nop
.LBB37_6:
	ld [%fp+2039], %i0
	ba .LBB37_8
	st %i0, [%fp+2031]
.LBB37_7:
	ld [%fp+2035], %i0
	ba .LBB37_8
	st %i0, [%fp+2031]
.LBB37_8:
	ld [%fp+2031], %i0                      ! 4-byte Folded Reload
	ba .LBB37_13
	st %i0, [%fp+2043]
.LBB37_9:
	ld [%fp+2039], %o0
	call __ltsf2
	ld [%fp+2035], %o1
	cmp	%o0, -1
	bg %icc, .LBB37_11
	nop
	ba .LBB37_10
	nop
.LBB37_10:
	ld [%fp+2039], %i0
	ba .LBB37_12
	st %i0, [%fp+2027]
.LBB37_11:
	ld [%fp+2035], %i0
	ba .LBB37_12
	st %i0, [%fp+2027]
.LBB37_12:
	ld [%fp+2027], %i0                      ! 4-byte Folded Reload
	ba .LBB37_13
	st %i0, [%fp+2043]
.LBB37_13:
	ld [%fp+2043], %i0
	ret
	restore
.Lfunc_end37:
	.size	fminf, .Lfunc_end37-fminf
                                        ! -- End function
	.globl	fminl                           ! -- Begin function fminl
	.p2align	2
	.type	fminl,@function
fminl:                                  ! @fminl
! %bb.0:
	save %sp, -256, %sp
	mov	%i1, %i4
	mov	%i0, %i1
                                        ! kill: def $i0 killed $i3
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i0 killed $i4
                                        ! kill: def $i0 killed $i1
	add %fp, 2015, %i0
	or %i0, 8, %i0
	stx %i4, [%i0]
	stx %i1, [%fp+2015]
	add %fp, 1999, %i1
	or %i1, 8, %i1
	stx %i3, [%i1]
	stx %i2, [%fp+1999]
	ldx [%i0], %i4
	ldx [%fp+2015], %i0
	sethi 4194303, %i1
	or %i1, 1023, %i2
	sethi 2097151, %i1
	or %i1, 1023, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	and %i0, %i1, %i2
	sethi 0, %i0
	or %i0, 0, %i1
	sethi 2097088, %i0
	or %i0, 0, %i0
	sllx %i0, 32, %i0
	or %i0, %i1, %i3
	mov	%g0, %i1
	cmp	%i2, %i3
	mov	%i1, %i0
	movl	%xcc, 1, %i0
	movrz %i4, 1, %i1
	cmp	%i2, %i3
	move	%xcc, %i1, %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	bne %icc, .LBB38_2
	nop
	ba .LBB38_1
	nop
.LBB38_1:
	add %fp, 1999, %i0
	or %i0, 8, %i0
	ldx [%i0], %i2
	ldx [%fp+1999], %i0
	add %fp, 2031, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	ba .LBB38_13
	stx %i0, [%fp+2031]
.LBB38_2:
	add %fp, 1999, %i0
	or %i0, 8, %i0
	ldx [%i0], %i4
	ldx [%fp+1999], %i0
	sethi 4194303, %i1
	or %i1, 1023, %i2
	sethi 2097151, %i1
	or %i1, 1023, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	and %i0, %i1, %i2
	sethi 0, %i0
	or %i0, 0, %i1
	sethi 2097088, %i0
	or %i0, 0, %i0
	sllx %i0, 32, %i0
	or %i0, %i1, %i3
	mov	%g0, %i1
	cmp	%i2, %i3
	mov	%i1, %i0
	movl	%xcc, 1, %i0
	movrz %i4, 1, %i1
	cmp	%i2, %i3
	move	%xcc, %i1, %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	bne %icc, .LBB38_4
	nop
	ba .LBB38_3
	nop
.LBB38_3:
	add %fp, 2015, %i0
	or %i0, 8, %i0
	ldx [%i0], %i2
	ldx [%fp+2015], %i0
	add %fp, 2031, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	ba .LBB38_13
	stx %i0, [%fp+2031]
.LBB38_4:
	ldx [%fp+2015], %i0
	srlx %i0, 63, %i0
	ldx [%fp+1999], %i1
	srlx %i1, 63, %i1
	cmp	%i0, %i1
	be %icc, .LBB38_9
	nop
	ba .LBB38_5
	nop
.LBB38_5:
	ldx [%fp+2015], %i0
	cmp	%i0, -1
	bg %xcc, .LBB38_7
	nop
	ba .LBB38_6
	nop
.LBB38_6:
	add %fp, 2015, %i0
	or %i0, 8, %i0
	ldx [%i0], %i0
	ldx [%fp+2015], %i1
	stx %i1, [%fp+1983]                     ! 8-byte Folded Spill
	ba .LBB38_8
	stx %i0, [%fp+1991]
.LBB38_7:
	add %fp, 1999, %i0
	or %i0, 8, %i0
	ldx [%i0], %i0
	ldx [%fp+1999], %i1
	stx %i1, [%fp+1983]                     ! 8-byte Folded Spill
	ba .LBB38_8
	stx %i0, [%fp+1991]
.LBB38_8:
	ldx [%fp+1983], %i0                     ! 8-byte Folded Reload
	ldx [%fp+1991], %i2                     ! 8-byte Folded Reload
	add %fp, 2031, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	ba .LBB38_13
	stx %i0, [%fp+2031]
.LBB38_9:
	add %fp, 2015, %i0
	or %i0, 8, %i0
	ldx [%i0], %o1
	ldx [%fp+2015], %o0
	add %fp, 1999, %i0
	or %i0, 8, %i0
	ldx [%i0], %o3
	call __lttf2
	ldx [%fp+1999], %o2
	cmp	%o0, -1
	bg %icc, .LBB38_11
	nop
	ba .LBB38_10
	nop
.LBB38_10:
	add %fp, 2015, %i0
	or %i0, 8, %i0
	ldx [%i0], %i0
	ldx [%fp+2015], %i1
	stx %i1, [%fp+1967]                     ! 8-byte Folded Spill
	ba .LBB38_12
	stx %i0, [%fp+1975]
.LBB38_11:
	add %fp, 1999, %i0
	or %i0, 8, %i0
	ldx [%i0], %i0
	ldx [%fp+1999], %i1
	stx %i1, [%fp+1967]                     ! 8-byte Folded Spill
	ba .LBB38_12
	stx %i0, [%fp+1975]
.LBB38_12:
	ldx [%fp+1967], %i0                     ! 8-byte Folded Reload
	ldx [%fp+1975], %i2                     ! 8-byte Folded Reload
	add %fp, 2031, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	ba .LBB38_13
	stx %i0, [%fp+2031]
.LBB38_13:
	add %fp, 2031, %i0
	or %i0, 8, %i0
	ldx [%i0], %i1
	ldx [%fp+2031], %i0
	ret
	restore
.Lfunc_end38:
	.size	fminl, .Lfunc_end38-fminl
                                        ! -- End function
	.globl	l64a                            ! -- Begin function l64a
	.p2align	2
	.type	l64a,@function
l64a:                                   ! @l64a
! %bb.0:
	save %sp, -160, %sp
	stx %i0, [%fp+2039]
	ldx [%fp+2039], %i0
	st %i0, [%fp+2027]
	sethi %hi(l64a.s), %i0
	add %i0, %lo(l64a.s), %i1
	sethi %hh(l64a.s), %i0
	add %i0, %hm(l64a.s), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ba .LBB39_1
	stx %i0, [%fp+2031]
.LBB39_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+2027], %i0
	cmp	%i0, 0
	be %icc, .LBB39_4
	nop
	ba .LBB39_2
	nop
.LBB39_2:                               !   in Loop: Header=BB39_1 Depth=1
	ld [%fp+2027], %i0
	and %i0, 63, %i1
	sethi %hi(digits), %i0
	add %i0, %lo(digits), %i2
	sethi %hh(digits), %i0
	add %i0, %hm(digits), %i0
	sllx %i0, 32, %i0
	add %i0, %i2, %i0
	ldub [%i0+%i1], %i1
	ldx [%fp+2031], %i0
	ba .LBB39_3
	stb %i1, [%i0]
.LBB39_3:                               !   in Loop: Header=BB39_1 Depth=1
	ldx [%fp+2031], %i0
	add %i0, 1, %i0
	stx %i0, [%fp+2031]
	ld [%fp+2027], %i0
	srl %i0, 6, %i0
	ba .LBB39_1
	st %i0, [%fp+2027]
.LBB39_4:
	ldx [%fp+2031], %i0
	mov	%g0, %i1
	stb %i1, [%i0]
	sethi %hi(l64a.s), %i0
	add %i0, %lo(l64a.s), %i1
	sethi %hh(l64a.s), %i0
	add %i0, %hm(l64a.s), %i0
	sllx %i0, 32, %i0
	ret
	restore %i0, %i1, %o0
.Lfunc_end39:
	.size	l64a, .Lfunc_end39-l64a
                                        ! -- End function
	.globl	srand                           ! -- Begin function srand
	.p2align	2
	.type	srand,@function
srand:                                  ! @srand
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i0
	add %i0, -1, %i0
	srl %i0, 0, %i2
	sethi %hi(seed), %i0
	add %i0, %lo(seed), %i1
	sethi %hh(seed), %i0
	add %i0, %hm(seed), %i0
	sllx %i0, 32, %i0
	stx %i2, [%i0+%i1]
	ret
	restore
.Lfunc_end40:
	.size	srand, .Lfunc_end40-srand
                                        ! -- End function
	.globl	rand                            ! -- Begin function rand
	.p2align	2
	.type	rand,@function
rand:                                   ! @rand
! %bb.0:
	save %sp, -128, %sp
	sethi %hi(seed), %i0
	add %i0, %lo(seed), %i1
	sethi %hh(seed), %i0
	add %i0, %hm(seed), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	sethi 1254751, %i3
	or %i3, 813, %i4
	sethi 1447037, %i3
	or %i3, 45, %i3
	sllx %i3, 32, %i3
	or %i3, %i4, %i3
	mulx %i2, %i3, %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ldx [%i0+%i1], %i0
	srlx %i0, 33, %i0
	ret
	restore
.Lfunc_end41:
	.size	rand, .Lfunc_end41-rand
                                        ! -- End function
	.globl	insque                          ! -- Begin function insque
	.p2align	2
	.type	insque,@function
insque:                                 ! @insque
! %bb.0:
	save %sp, -160, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	ldx [%fp+2039], %i0
	stx %i0, [%fp+2023]
	ldx [%fp+2031], %i0
	stx %i0, [%fp+2015]
	ldx [%fp+2015], %i0
	brnz %i0, .LBB42_2
	nop
	ba .LBB42_1
	nop
.LBB42_1:
	ldx [%fp+2023], %i0
	stx %g0, [%i0+8]
	ldx [%fp+2023], %i0
	ba .LBB42_4
	stx %g0, [%i0]
.LBB42_2:
	ldx [%fp+2015], %i0
	ldx [%i0], %i1
	ldx [%fp+2023], %i0
	stx %i1, [%i0]
	ldx [%fp+2015], %i1
	ldx [%fp+2023], %i0
	stx %i1, [%i0+8]
	ldx [%fp+2023], %i1
	ldx [%fp+2015], %i0
	stx %i1, [%i0]
	ldx [%fp+2023], %i0
	ldx [%i0], %i0
	brz %i0, .LBB42_4
	nop
	ba .LBB42_3
	nop
.LBB42_3:
	ldx [%fp+2023], %i1
	ldx [%i1], %i0
	ba .LBB42_4
	stx %i1, [%i0+8]
.LBB42_4:
	ret
	restore
.Lfunc_end42:
	.size	insque, .Lfunc_end42-insque
                                        ! -- End function
	.globl	remque                          ! -- Begin function remque
	.p2align	2
	.type	remque,@function
remque:                                 ! @remque
! %bb.0:
	save %sp, -144, %sp
	stx %i0, [%fp+2039]
	ldx [%fp+2039], %i0
	stx %i0, [%fp+2031]
	ldx [%fp+2031], %i0
	ldx [%i0], %i0
	brz %i0, .LBB43_2
	nop
	ba .LBB43_1
	nop
.LBB43_1:
	ldx [%fp+2031], %i0
	ldx [%i0+8], %i1
	ldx [%i0], %i0
	ba .LBB43_2
	stx %i1, [%i0+8]
.LBB43_2:
	ldx [%fp+2031], %i0
	ldx [%i0+8], %i0
	brz %i0, .LBB43_4
	nop
	ba .LBB43_3
	nop
.LBB43_3:
	ldx [%fp+2031], %i0
	ldx [%i0], %i1
	ldx [%i0+8], %i0
	ba .LBB43_4
	stx %i1, [%i0]
.LBB43_4:
	ret
	restore
.Lfunc_end43:
	.size	remque, .Lfunc_end43-remque
                                        ! -- End function
	.globl	lsearch                         ! -- Begin function lsearch
	.p2align	2
	.type	lsearch,@function
lsearch:                                ! @lsearch
! %bb.0:
	save %sp, -256, %sp
	stx %i0, [%fp+2031]
	stx %i1, [%fp+2023]
	stx %i2, [%fp+2015]
	stx %i3, [%fp+2007]
	stx %i4, [%fp+1999]
	ldx [%fp+2007], %i0
	stx %i0, [%fp+1967]                     ! 8-byte Folded Spill
	ldx [%fp+2023], %i0
	stx %i0, [%fp+1991]
	ldx [%fp+2015], %i0
	ldx [%i0], %i0
	stx %i0, [%fp+1983]
	ba .LBB44_1
	stx %g0, [%fp+1975]
.LBB44_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+1975], %i0
	ldx [%fp+1983], %i1
	cmp	%i0, %i1
	bcc %xcc, .LBB44_6
	nop
	ba .LBB44_2
	nop
.LBB44_2:                               !   in Loop: Header=BB44_1 Depth=1
	ldx [%fp+1967], %i3                     ! 8-byte Folded Reload
	ldx [%fp+1999], %i0
	ldx [%fp+2031], %o0
	ldx [%fp+1991], %i1
	ldx [%fp+1975], %i2
	mulx %i2, %i3, %i2
	call %i0
	add %i1, %i2, %o1
	cmp	%o0, 0
	bne %icc, .LBB44_4
	nop
	ba .LBB44_3
	nop
.LBB44_3:
	ldx [%fp+1967], %i2                     ! 8-byte Folded Reload
	ldx [%fp+1991], %i0
	ldx [%fp+1975], %i1
	mulx %i1, %i2, %i1
	add %i0, %i1, %i0
	ba .LBB44_7
	stx %i0, [%fp+2039]
.LBB44_4:                               !   in Loop: Header=BB44_1 Depth=1
	ba .LBB44_5
	nop
.LBB44_5:                               !   in Loop: Header=BB44_1 Depth=1
	ldx [%fp+1975], %i0
	add %i0, 1, %i0
	ba .LBB44_1
	stx %i0, [%fp+1975]
.LBB44_6:
	ldx [%fp+1967], %i2                     ! 8-byte Folded Reload
	ldx [%fp+1983], %i0
	add %i0, 1, %i1
	ldx [%fp+2015], %i0
	stx %i1, [%i0]
	ldx [%fp+1991], %i0
	ldx [%fp+1983], %i1
	mulx %i1, %i2, %i1
	add %i0, %i1, %i0
	ldx [%fp+2031], %o1
	ldx [%fp+2007], %o2
	call memcpy
	mov	%i0, %o0
	ba .LBB44_7
	stx %i0, [%fp+2039]
.LBB44_7:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end44:
	.size	lsearch, .Lfunc_end44-lsearch
                                        ! -- End function
	.globl	lfind                           ! -- Begin function lfind
	.p2align	2
	.type	lfind,@function
lfind:                                  ! @lfind
! %bb.0:
	save %sp, -256, %sp
	stx %i0, [%fp+2031]
	stx %i1, [%fp+2023]
	stx %i2, [%fp+2015]
	stx %i3, [%fp+2007]
	stx %i4, [%fp+1999]
	ldx [%fp+2007], %i0
	stx %i0, [%fp+1967]                     ! 8-byte Folded Spill
	ldx [%fp+2023], %i0
	stx %i0, [%fp+1991]
	ldx [%fp+2015], %i0
	ldx [%i0], %i0
	stx %i0, [%fp+1983]
	ba .LBB45_1
	stx %g0, [%fp+1975]
.LBB45_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+1975], %i0
	ldx [%fp+1983], %i1
	cmp	%i0, %i1
	bcc %xcc, .LBB45_6
	nop
	ba .LBB45_2
	nop
.LBB45_2:                               !   in Loop: Header=BB45_1 Depth=1
	ldx [%fp+1967], %i3                     ! 8-byte Folded Reload
	ldx [%fp+1999], %i0
	ldx [%fp+2031], %o0
	ldx [%fp+1991], %i1
	ldx [%fp+1975], %i2
	mulx %i2, %i3, %i2
	call %i0
	add %i1, %i2, %o1
	cmp	%o0, 0
	bne %icc, .LBB45_4
	nop
	ba .LBB45_3
	nop
.LBB45_3:
	ldx [%fp+1967], %i2                     ! 8-byte Folded Reload
	ldx [%fp+1991], %i0
	ldx [%fp+1975], %i1
	mulx %i1, %i2, %i1
	add %i0, %i1, %i0
	ba .LBB45_7
	stx %i0, [%fp+2039]
.LBB45_4:                               !   in Loop: Header=BB45_1 Depth=1
	ba .LBB45_5
	nop
.LBB45_5:                               !   in Loop: Header=BB45_1 Depth=1
	ldx [%fp+1975], %i0
	add %i0, 1, %i0
	ba .LBB45_1
	stx %i0, [%fp+1975]
.LBB45_6:
	ba .LBB45_7
	stx %g0, [%fp+2039]
.LBB45_7:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end45:
	.size	lfind, .Lfunc_end45-lfind
                                        ! -- End function
	.globl	abs                             ! -- Begin function abs
	.p2align	2
	.type	abs,@function
abs:                                    ! @abs
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i0
	cmp	%i0, 1
	bl %icc, .LBB46_2
	nop
	ba .LBB46_1
	nop
.LBB46_1:
	ld [%fp+2043], %i0
	ba .LBB46_3
	st %i0, [%fp+2039]
.LBB46_2:
	ld [%fp+2043], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB46_3
	st %i0, [%fp+2039]
.LBB46_3:
	ld [%fp+2039], %i0                      ! 4-byte Folded Reload
	sra %i0, 0, %i0
	ret
	restore
.Lfunc_end46:
	.size	abs, .Lfunc_end46-abs
                                        ! -- End function
	.globl	atoi                            ! -- Begin function atoi
	.p2align	2
	.type	atoi,@function
atoi:                                   ! @atoi
! %bb.0:
	save %sp, -208, %sp
	stx %i0, [%fp+2039]
	st %g0, [%fp+2035]
	ba .LBB47_1
	st %g0, [%fp+2031]
.LBB47_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	call isspace
	ldsb [%i0], %o0
	cmp	%o0, 0
	be %icc, .LBB47_3
	nop
	ba .LBB47_2
	nop
.LBB47_2:                               !   in Loop: Header=BB47_1 Depth=1
	ldx [%fp+2039], %i0
	add %i0, 1, %i0
	ba .LBB47_1
	stx %i0, [%fp+2039]
.LBB47_3:
	ldx [%fp+2039], %i0
	ldsb [%i0], %i0
	cmp	%i0, 43
	be %icc, .LBB47_6
	st %i0, [%fp+2027]
	ba .LBB47_4
	nop
.LBB47_4:
	ld [%fp+2027], %i0                      ! 4-byte Folded Reload
	cmp	%i0, 45
	bne %icc, .LBB47_7
	nop
	ba .LBB47_5
	nop
.LBB47_5:
	mov	1, %i0
	ba .LBB47_6
	st %i0, [%fp+2031]
.LBB47_6:
	ldx [%fp+2039], %i0
	add %i0, 1, %i0
	ba .LBB47_7
	stx %i0, [%fp+2039]
.LBB47_7:
	ba .LBB47_8
	nop
.LBB47_8:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	call isdigit
	ldsb [%i0], %o0
	cmp	%o0, 0
	be %icc, .LBB47_10
	nop
	ba .LBB47_9
	nop
.LBB47_9:                               !   in Loop: Header=BB47_8 Depth=1
	ldsw [%fp+2035], %i0
	mulx %i0, 10, %i0
	ldx [%fp+2039], %i1
	add %i1, 1, %i2
	stx %i2, [%fp+2039]
	ldsb [%i1], %i1
	sub %i0, %i1, %i0
	add %i0, 48, %i0
	ba .LBB47_8
	st %i0, [%fp+2035]
.LBB47_10:
	ld [%fp+2031], %i0
	cmp	%i0, 0
	be %icc, .LBB47_12
	nop
	ba .LBB47_11
	nop
.LBB47_11:
	ld [%fp+2035], %i0
	ba .LBB47_13
	st %i0, [%fp+2023]
.LBB47_12:
	ld [%fp+2035], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB47_13
	st %i0, [%fp+2023]
.LBB47_13:
	ld [%fp+2023], %i0                      ! 4-byte Folded Reload
	sra %i0, 0, %i0
	ret
	restore
.Lfunc_end47:
	.size	atoi, .Lfunc_end47-atoi
                                        ! -- End function
	.globl	atol                            ! -- Begin function atol
	.p2align	2
	.type	atol,@function
atol:                                   ! @atol
! %bb.0:
	save %sp, -208, %sp
	stx %i0, [%fp+2039]
	stx %g0, [%fp+2031]
	ba .LBB48_1
	st %g0, [%fp+2027]
.LBB48_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	call isspace
	ldsb [%i0], %o0
	cmp	%o0, 0
	be %icc, .LBB48_3
	nop
	ba .LBB48_2
	nop
.LBB48_2:                               !   in Loop: Header=BB48_1 Depth=1
	ldx [%fp+2039], %i0
	add %i0, 1, %i0
	ba .LBB48_1
	stx %i0, [%fp+2039]
.LBB48_3:
	ldx [%fp+2039], %i0
	ldsb [%i0], %i0
	cmp	%i0, 43
	be %icc, .LBB48_6
	st %i0, [%fp+2023]
	ba .LBB48_4
	nop
.LBB48_4:
	ld [%fp+2023], %i0                      ! 4-byte Folded Reload
	cmp	%i0, 45
	bne %icc, .LBB48_7
	nop
	ba .LBB48_5
	nop
.LBB48_5:
	mov	1, %i0
	ba .LBB48_6
	st %i0, [%fp+2027]
.LBB48_6:
	ldx [%fp+2039], %i0
	add %i0, 1, %i0
	ba .LBB48_7
	stx %i0, [%fp+2039]
.LBB48_7:
	ba .LBB48_8
	nop
.LBB48_8:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	call isdigit
	ldsb [%i0], %o0
	cmp	%o0, 0
	be %icc, .LBB48_10
	nop
	ba .LBB48_9
	nop
.LBB48_9:                               !   in Loop: Header=BB48_8 Depth=1
	ldx [%fp+2031], %i0
	mulx %i0, 10, %i0
	ldx [%fp+2039], %i1
	add %i1, 1, %i2
	stx %i2, [%fp+2039]
	ldsb [%i1], %i1
	add %i1, -48, %i1
	sra %i1, 0, %i1
	sub %i0, %i1, %i0
	ba .LBB48_8
	stx %i0, [%fp+2031]
.LBB48_10:
	ld [%fp+2027], %i0
	cmp	%i0, 0
	be %icc, .LBB48_12
	nop
	ba .LBB48_11
	nop
.LBB48_11:
	ldx [%fp+2031], %i0
	ba .LBB48_13
	stx %i0, [%fp+2015]
.LBB48_12:
	ldx [%fp+2031], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB48_13
	stx %i0, [%fp+2015]
.LBB48_13:
	ldx [%fp+2015], %i0                     ! 8-byte Folded Reload
	ret
	restore
.Lfunc_end48:
	.size	atol, .Lfunc_end48-atol
                                        ! -- End function
	.globl	atoll                           ! -- Begin function atoll
	.p2align	2
	.type	atoll,@function
atoll:                                  ! @atoll
! %bb.0:
	save %sp, -208, %sp
	stx %i0, [%fp+2039]
	stx %g0, [%fp+2031]
	ba .LBB49_1
	st %g0, [%fp+2027]
.LBB49_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	call isspace
	ldsb [%i0], %o0
	cmp	%o0, 0
	be %icc, .LBB49_3
	nop
	ba .LBB49_2
	nop
.LBB49_2:                               !   in Loop: Header=BB49_1 Depth=1
	ldx [%fp+2039], %i0
	add %i0, 1, %i0
	ba .LBB49_1
	stx %i0, [%fp+2039]
.LBB49_3:
	ldx [%fp+2039], %i0
	ldsb [%i0], %i0
	cmp	%i0, 43
	be %icc, .LBB49_6
	st %i0, [%fp+2023]
	ba .LBB49_4
	nop
.LBB49_4:
	ld [%fp+2023], %i0                      ! 4-byte Folded Reload
	cmp	%i0, 45
	bne %icc, .LBB49_7
	nop
	ba .LBB49_5
	nop
.LBB49_5:
	mov	1, %i0
	ba .LBB49_6
	st %i0, [%fp+2027]
.LBB49_6:
	ldx [%fp+2039], %i0
	add %i0, 1, %i0
	ba .LBB49_7
	stx %i0, [%fp+2039]
.LBB49_7:
	ba .LBB49_8
	nop
.LBB49_8:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	call isdigit
	ldsb [%i0], %o0
	cmp	%o0, 0
	be %icc, .LBB49_10
	nop
	ba .LBB49_9
	nop
.LBB49_9:                               !   in Loop: Header=BB49_8 Depth=1
	ldx [%fp+2031], %i0
	mulx %i0, 10, %i0
	ldx [%fp+2039], %i1
	add %i1, 1, %i2
	stx %i2, [%fp+2039]
	ldsb [%i1], %i1
	add %i1, -48, %i1
	sra %i1, 0, %i1
	sub %i0, %i1, %i0
	ba .LBB49_8
	stx %i0, [%fp+2031]
.LBB49_10:
	ld [%fp+2027], %i0
	cmp	%i0, 0
	be %icc, .LBB49_12
	nop
	ba .LBB49_11
	nop
.LBB49_11:
	ldx [%fp+2031], %i0
	ba .LBB49_13
	stx %i0, [%fp+2015]
.LBB49_12:
	ldx [%fp+2031], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB49_13
	stx %i0, [%fp+2015]
.LBB49_13:
	ldx [%fp+2015], %i0                     ! 8-byte Folded Reload
	ret
	restore
.Lfunc_end49:
	.size	atoll, .Lfunc_end49-atoll
                                        ! -- End function
	.globl	bsearch                         ! -- Begin function bsearch
	.p2align	2
	.type	bsearch,@function
bsearch:                                ! @bsearch
! %bb.0:
	save %sp, -240, %sp
	stx %i0, [%fp+2031]
	stx %i1, [%fp+2023]
	stx %i2, [%fp+2015]
	stx %i3, [%fp+2007]
	ba .LBB50_1
	stx %i4, [%fp+1999]
.LBB50_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2015], %i0
	brz %i0, .LBB50_9
	nop
	ba .LBB50_2
	nop
.LBB50_2:                               !   in Loop: Header=BB50_1 Depth=1
	ldx [%fp+2023], %i0
	ldx [%fp+2007], %i1
	ldx [%fp+2015], %i2
	srlx %i2, 1, %i2
	mulx %i1, %i2, %i1
	add %i0, %i1, %i0
	stx %i0, [%fp+1991]
	ldx [%fp+1999], %i0
	ldx [%fp+2031], %o0
	call %i0
	ldx [%fp+1991], %o1
	st %o0, [%fp+1987]
	ld [%fp+1987], %i0
	cmp	%i0, -1
	bg %icc, .LBB50_4
	nop
	ba .LBB50_3
	nop
.LBB50_3:                               !   in Loop: Header=BB50_1 Depth=1
	ldx [%fp+2015], %i0
	srlx %i0, 1, %i0
	ba .LBB50_8
	stx %i0, [%fp+2015]
.LBB50_4:                               !   in Loop: Header=BB50_1 Depth=1
	ld [%fp+1987], %i0
	cmp	%i0, 1
	bl %icc, .LBB50_6
	nop
	ba .LBB50_5
	nop
.LBB50_5:                               !   in Loop: Header=BB50_1 Depth=1
	ldx [%fp+1991], %i0
	ldx [%fp+2007], %i1
	add %i0, %i1, %i0
	stx %i0, [%fp+2023]
	ldx [%fp+2015], %i1
	srlx %i1, 1, %i0
	xor %i0, -1, %i0
	add %i0, %i1, %i0
	ba .LBB50_7
	stx %i0, [%fp+2015]
.LBB50_6:
	ldx [%fp+1991], %i0
	ba .LBB50_10
	stx %i0, [%fp+2039]
.LBB50_7:                               !   in Loop: Header=BB50_1 Depth=1
	ba .LBB50_8
	nop
.LBB50_8:                               !   in Loop: Header=BB50_1 Depth=1
	ba .LBB50_1
	nop
.LBB50_9:
	ba .LBB50_10
	stx %g0, [%fp+2039]
.LBB50_10:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end50:
	.size	bsearch, .Lfunc_end50-bsearch
                                        ! -- End function
	.globl	bsearch_r                       ! -- Begin function bsearch_r
	.p2align	2
	.type	bsearch_r,@function
bsearch_r:                              ! @bsearch_r
! %bb.0:
	save %sp, -256, %sp
	stx %i0, [%fp+2031]
	stx %i1, [%fp+2023]
	stx %i2, [%fp+2015]
	stx %i3, [%fp+2007]
	stx %i4, [%fp+1999]
	stx %i5, [%fp+1991]
	ldx [%fp+2023], %i0
	stx %i0, [%fp+1983]
	ldx [%fp+2015], %i0
	ba .LBB51_1
	st %i0, [%fp+1979]
.LBB51_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+1979], %i0
	cmp	%i0, 0
	be %icc, .LBB51_8
	nop
	ba .LBB51_2
	nop
.LBB51_2:                               !   in Loop: Header=BB51_1 Depth=1
	ldx [%fp+1983], %i0
	ld [%fp+1979], %i1
	sra %i1, 1, %i1
	sra %i1, 0, %i1
	ldx [%fp+2007], %i2
	mulx %i1, %i2, %i1
	add %i0, %i1, %i0
	stx %i0, [%fp+1967]
	ldx [%fp+1999], %i0
	ldx [%fp+2031], %o0
	ldx [%fp+1967], %o1
	call %i0
	ldx [%fp+1991], %o2
	st %o0, [%fp+1975]
	ld [%fp+1975], %i0
	cmp	%i0, 0
	bne %icc, .LBB51_4
	nop
	ba .LBB51_3
	nop
.LBB51_3:
	ldx [%fp+1967], %i0
	ba .LBB51_9
	stx %i0, [%fp+2039]
.LBB51_4:                               !   in Loop: Header=BB51_1 Depth=1
	ld [%fp+1975], %i0
	cmp	%i0, 1
	bl %icc, .LBB51_6
	nop
	ba .LBB51_5
	nop
.LBB51_5:                               !   in Loop: Header=BB51_1 Depth=1
	ldx [%fp+1967], %i0
	ldx [%fp+2007], %i1
	add %i0, %i1, %i0
	stx %i0, [%fp+1983]
	ld [%fp+1979], %i0
	add %i0, -1, %i0
	ba .LBB51_6
	st %i0, [%fp+1979]
.LBB51_6:                               !   in Loop: Header=BB51_1 Depth=1
	ba .LBB51_7
	nop
.LBB51_7:                               !   in Loop: Header=BB51_1 Depth=1
	ld [%fp+1979], %i0
	sra %i0, 1, %i0
	ba .LBB51_1
	st %i0, [%fp+1979]
.LBB51_8:
	ba .LBB51_9
	stx %g0, [%fp+2039]
.LBB51_9:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end51:
	.size	bsearch_r, .Lfunc_end51-bsearch_r
                                        ! -- End function
	.globl	div                             ! -- Begin function div
	.p2align	2
	.type	div,@function
div:                                    ! @div
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+2035]
	st %i1, [%fp+2031]
	ld [%fp+2035], %i0
	ld [%fp+2031], %i1
	sra %i0, 31, %i2
	wr %g0, %i2, %y
	sdiv %i0, %i1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2035], %i0
	ld [%fp+2031], %i2
	sra %i0, 31, %i1
	wr %g0, %i1, %y
	sdiv %i0, %i2, %i1
	mulx %i1, %i2, %i1
	sub %i0, %i1, %i0
	st %i0, [%fp+2043]
	ld [%fp+2039], %i0
	sllx %i0, 32, %i0
	ld [%fp+2043], %i1
	or %i0, %i1, %i0
	ret
	restore
.Lfunc_end52:
	.size	div, .Lfunc_end52-div
                                        ! -- End function
	.globl	imaxabs                         ! -- Begin function imaxabs
	.p2align	2
	.type	imaxabs,@function
imaxabs:                                ! @imaxabs
! %bb.0:
	save %sp, -144, %sp
	stx %i0, [%fp+2039]
	ldx [%fp+2039], %i0
	cmp	%i0, 1
	bl %xcc, .LBB53_2
	nop
	ba .LBB53_1
	nop
.LBB53_1:
	ldx [%fp+2039], %i0
	ba .LBB53_3
	stx %i0, [%fp+2031]
.LBB53_2:
	ldx [%fp+2039], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB53_3
	stx %i0, [%fp+2031]
.LBB53_3:
	ldx [%fp+2031], %i0                     ! 8-byte Folded Reload
	ret
	restore
.Lfunc_end53:
	.size	imaxabs, .Lfunc_end53-imaxabs
                                        ! -- End function
	.globl	imaxdiv                         ! -- Begin function imaxdiv
	.p2align	2
	.type	imaxdiv,@function
imaxdiv:                                ! @imaxdiv
! %bb.0:
	save %sp, -160, %sp
	stx %i0, [%fp+2023]
	stx %i1, [%fp+2015]
	ldx [%fp+2023], %i0
	ldx [%fp+2015], %i1
	sdivx %i0, %i1, %i0
	stx %i0, [%fp+2031]
	ldx [%fp+2023], %i0
	ldx [%fp+2015], %i2
	sdivx %i0, %i2, %i1
	mulx %i1, %i2, %i1
	sub %i0, %i1, %i0
	stx %i0, [%fp+2039]
	ldx [%fp+2031], %i0
	ldx [%fp+2039], %i1
	ret
	restore
.Lfunc_end54:
	.size	imaxdiv, .Lfunc_end54-imaxdiv
                                        ! -- End function
	.globl	labs                            ! -- Begin function labs
	.p2align	2
	.type	labs,@function
labs:                                   ! @labs
! %bb.0:
	save %sp, -144, %sp
	stx %i0, [%fp+2039]
	ldx [%fp+2039], %i0
	cmp	%i0, 1
	bl %xcc, .LBB55_2
	nop
	ba .LBB55_1
	nop
.LBB55_1:
	ldx [%fp+2039], %i0
	ba .LBB55_3
	stx %i0, [%fp+2031]
.LBB55_2:
	ldx [%fp+2039], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB55_3
	stx %i0, [%fp+2031]
.LBB55_3:
	ldx [%fp+2031], %i0                     ! 8-byte Folded Reload
	ret
	restore
.Lfunc_end55:
	.size	labs, .Lfunc_end55-labs
                                        ! -- End function
	.globl	ldiv                            ! -- Begin function ldiv
	.p2align	2
	.type	ldiv,@function
ldiv:                                   ! @ldiv
! %bb.0:
	save %sp, -160, %sp
	stx %i0, [%fp+2023]
	stx %i1, [%fp+2015]
	ldx [%fp+2023], %i0
	ldx [%fp+2015], %i1
	sdivx %i0, %i1, %i0
	stx %i0, [%fp+2031]
	ldx [%fp+2023], %i0
	ldx [%fp+2015], %i2
	sdivx %i0, %i2, %i1
	mulx %i1, %i2, %i1
	sub %i0, %i1, %i0
	stx %i0, [%fp+2039]
	ldx [%fp+2031], %i0
	ldx [%fp+2039], %i1
	ret
	restore
.Lfunc_end56:
	.size	ldiv, .Lfunc_end56-ldiv
                                        ! -- End function
	.globl	llabs                           ! -- Begin function llabs
	.p2align	2
	.type	llabs,@function
llabs:                                  ! @llabs
! %bb.0:
	save %sp, -144, %sp
	stx %i0, [%fp+2039]
	ldx [%fp+2039], %i0
	cmp	%i0, 1
	bl %xcc, .LBB57_2
	nop
	ba .LBB57_1
	nop
.LBB57_1:
	ldx [%fp+2039], %i0
	ba .LBB57_3
	stx %i0, [%fp+2031]
.LBB57_2:
	ldx [%fp+2039], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB57_3
	stx %i0, [%fp+2031]
.LBB57_3:
	ldx [%fp+2031], %i0                     ! 8-byte Folded Reload
	ret
	restore
.Lfunc_end57:
	.size	llabs, .Lfunc_end57-llabs
                                        ! -- End function
	.globl	lldiv                           ! -- Begin function lldiv
	.p2align	2
	.type	lldiv,@function
lldiv:                                  ! @lldiv
! %bb.0:
	save %sp, -160, %sp
	stx %i0, [%fp+2023]
	stx %i1, [%fp+2015]
	ldx [%fp+2023], %i0
	ldx [%fp+2015], %i1
	sdivx %i0, %i1, %i0
	stx %i0, [%fp+2031]
	ldx [%fp+2023], %i0
	ldx [%fp+2015], %i2
	sdivx %i0, %i2, %i1
	mulx %i1, %i2, %i1
	sub %i0, %i1, %i0
	stx %i0, [%fp+2039]
	ldx [%fp+2031], %i0
	ldx [%fp+2039], %i1
	ret
	restore
.Lfunc_end58:
	.size	lldiv, .Lfunc_end58-lldiv
                                        ! -- End function
	.globl	wcschr                          ! -- Begin function wcschr
	.p2align	2
	.type	wcschr,@function
wcschr:                                 ! @wcschr
! %bb.0:
	save %sp, -160, %sp
                                        ! kill: def $i2 killed $i1
	stx %i0, [%fp+2039]
	ba .LBB59_1
	st %i1, [%fp+2035]
.LBB59_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be %icc, .LBB59_3
	st %i0, [%fp+2031]
	ba .LBB59_2
	nop
.LBB59_2:                               !   in Loop: Header=BB59_1 Depth=1
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	ld [%fp+2035], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	movne	%icc, 1, %i0
	ba .LBB59_3
	st %i0, [%fp+2031]
.LBB59_3:                               !   in Loop: Header=BB59_1 Depth=1
	ld [%fp+2031], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB59_6
	nop
	ba .LBB59_4
	nop
.LBB59_4:                               !   in Loop: Header=BB59_1 Depth=1
	ba .LBB59_5
	nop
.LBB59_5:                               !   in Loop: Header=BB59_1 Depth=1
	ldx [%fp+2039], %i0
	add %i0, 4, %i0
	ba .LBB59_1
	stx %i0, [%fp+2039]
.LBB59_6:
	ldx [%fp+2039], %i0
	ld [%i0], %i0
	cmp	%i0, 0
	be %icc, .LBB59_8
	nop
	ba .LBB59_7
	nop
.LBB59_7:
	ldx [%fp+2039], %i0
	ba .LBB59_9
	stx %i0, [%fp+2023]
.LBB59_8:
	mov	%g0, %i0
	ba .LBB59_9
	stx %i0, [%fp+2023]
.LBB59_9:
	ldx [%fp+2023], %i0                     ! 8-byte Folded Reload
	ret
	restore
.Lfunc_end59:
	.size	wcschr, .Lfunc_end59-wcschr
                                        ! -- End function
	.globl	wcscmp                          ! -- Begin function wcscmp
	.p2align	2
	.type	wcscmp,@function
wcscmp:                                 ! @wcscmp
! %bb.0:
	save %sp, -160, %sp
	stx %i0, [%fp+2039]
	ba .LBB60_1
	stx %i1, [%fp+2031]
.LBB60_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	ldx [%fp+2031], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bne %icc, .LBB60_4
	st %i0, [%fp+2027]
	ba .LBB60_2
	nop
.LBB60_2:                               !   in Loop: Header=BB60_1 Depth=1
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be %icc, .LBB60_4
	st %i0, [%fp+2027]
	ba .LBB60_3
	nop
.LBB60_3:                               !   in Loop: Header=BB60_1 Depth=1
	ldx [%fp+2031], %i0
	ld [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	movne	%icc, 1, %i0
	ba .LBB60_4
	st %i0, [%fp+2027]
.LBB60_4:                               !   in Loop: Header=BB60_1 Depth=1
	ld [%fp+2027], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB60_7
	nop
	ba .LBB60_5
	nop
.LBB60_5:                               !   in Loop: Header=BB60_1 Depth=1
	ba .LBB60_6
	nop
.LBB60_6:                               !   in Loop: Header=BB60_1 Depth=1
	ldx [%fp+2039], %i0
	add %i0, 4, %i0
	stx %i0, [%fp+2039]
	ldx [%fp+2031], %i0
	add %i0, 4, %i0
	ba .LBB60_1
	stx %i0, [%fp+2031]
.LBB60_7:
	ldx [%fp+2039], %i0
	ld [%i0], %i0
	ldx [%fp+2031], %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	bge %icc, .LBB60_9
	nop
	ba .LBB60_8
	nop
.LBB60_8:
	mov	-1, %i0
	ba .LBB60_10
	st %i0, [%fp+2023]
.LBB60_9:
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	ldx [%fp+2031], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	movg	%icc, 1, %i0
	ba .LBB60_10
	st %i0, [%fp+2023]
.LBB60_10:
	ld [%fp+2023], %i0                      ! 4-byte Folded Reload
	sra %i0, 0, %i0
	ret
	restore
.Lfunc_end60:
	.size	wcscmp, .Lfunc_end60-wcscmp
                                        ! -- End function
	.globl	wcscpy                          ! -- Begin function wcscpy
	.p2align	2
	.type	wcscpy,@function
wcscpy:                                 ! @wcscpy
! %bb.0:
	save %sp, -160, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	ldx [%fp+2039], %i0
	ba .LBB61_1
	stx %i0, [%fp+2023]
.LBB61_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2031], %i0
	add %i0, 4, %i1
	stx %i1, [%fp+2031]
	ld [%i0], %i0
	ldx [%fp+2039], %i1
	add %i1, 4, %i2
	stx %i2, [%fp+2039]
	st %i0, [%i1]
	cmp	%i0, 0
	be %icc, .LBB61_3
	nop
	ba .LBB61_2
	nop
.LBB61_2:                               !   in Loop: Header=BB61_1 Depth=1
	ba .LBB61_1
	nop
.LBB61_3:
	ldx [%fp+2023], %i0
	ret
	restore
.Lfunc_end61:
	.size	wcscpy, .Lfunc_end61-wcscpy
                                        ! -- End function
	.globl	wcslen                          ! -- Begin function wcslen
	.p2align	2
	.type	wcslen,@function
wcslen:                                 ! @wcslen
! %bb.0:
	save %sp, -144, %sp
	stx %i0, [%fp+2039]
	ldx [%fp+2039], %i0
	ba .LBB62_1
	stx %i0, [%fp+2031]
.LBB62_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	ld [%i0], %i0
	cmp	%i0, 0
	be %icc, .LBB62_4
	nop
	ba .LBB62_2
	nop
.LBB62_2:                               !   in Loop: Header=BB62_1 Depth=1
	ba .LBB62_3
	nop
.LBB62_3:                               !   in Loop: Header=BB62_1 Depth=1
	ldx [%fp+2039], %i0
	add %i0, 4, %i0
	ba .LBB62_1
	stx %i0, [%fp+2039]
.LBB62_4:
	ldx [%fp+2039], %i0
	ldx [%fp+2031], %i1
	sub %i0, %i1, %i0
	srax %i0, 2, %i0
	ret
	restore
.Lfunc_end62:
	.size	wcslen, .Lfunc_end62-wcslen
                                        ! -- End function
	.globl	wcsncmp                         ! -- Begin function wcsncmp
	.p2align	2
	.type	wcsncmp,@function
wcsncmp:                                ! @wcsncmp
! %bb.0:
	save %sp, -176, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	ba .LBB63_1
	stx %i2, [%fp+2023]
.LBB63_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	mov	%g0, %i1
	brz %i0, .LBB63_5
	st %i1, [%fp+2019]
	ba .LBB63_2
	nop
.LBB63_2:                               !   in Loop: Header=BB63_1 Depth=1
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	ldx [%fp+2031], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bne %icc, .LBB63_5
	st %i0, [%fp+2019]
	ba .LBB63_3
	nop
.LBB63_3:                               !   in Loop: Header=BB63_1 Depth=1
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be %icc, .LBB63_5
	st %i0, [%fp+2019]
	ba .LBB63_4
	nop
.LBB63_4:                               !   in Loop: Header=BB63_1 Depth=1
	ldx [%fp+2031], %i0
	ld [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	movne	%icc, 1, %i0
	ba .LBB63_5
	st %i0, [%fp+2019]
.LBB63_5:                               !   in Loop: Header=BB63_1 Depth=1
	ld [%fp+2019], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB63_8
	nop
	ba .LBB63_6
	nop
.LBB63_6:                               !   in Loop: Header=BB63_1 Depth=1
	ba .LBB63_7
	nop
.LBB63_7:                               !   in Loop: Header=BB63_1 Depth=1
	ldx [%fp+2023], %i0
	add %i0, -1, %i0
	stx %i0, [%fp+2023]
	ldx [%fp+2039], %i0
	add %i0, 4, %i0
	stx %i0, [%fp+2039]
	ldx [%fp+2031], %i0
	add %i0, 4, %i0
	ba .LBB63_1
	stx %i0, [%fp+2031]
.LBB63_8:
	ldx [%fp+2023], %i0
	brz %i0, .LBB63_13
	nop
	ba .LBB63_9
	nop
.LBB63_9:
	ldx [%fp+2039], %i0
	ld [%i0], %i0
	ldx [%fp+2031], %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	bge %icc, .LBB63_11
	nop
	ba .LBB63_10
	nop
.LBB63_10:
	mov	-1, %i0
	ba .LBB63_12
	st %i0, [%fp+2015]
.LBB63_11:
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	ldx [%fp+2031], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	movg	%icc, 1, %i0
	ba .LBB63_12
	st %i0, [%fp+2015]
.LBB63_12:
	ld [%fp+2015], %i0                      ! 4-byte Folded Reload
	ba .LBB63_14
	st %i0, [%fp+2011]
.LBB63_13:
	mov	%g0, %i0
	ba .LBB63_14
	st %i0, [%fp+2011]
.LBB63_14:
	ld [%fp+2011], %i0                      ! 4-byte Folded Reload
	sra %i0, 0, %i0
	ret
	restore
.Lfunc_end63:
	.size	wcsncmp, .Lfunc_end63-wcsncmp
                                        ! -- End function
	.globl	wmemchr                         ! -- Begin function wmemchr
	.p2align	2
	.type	wmemchr,@function
wmemchr:                                ! @wmemchr
! %bb.0:
	save %sp, -176, %sp
                                        ! kill: def $i3 killed $i1
	stx %i0, [%fp+2039]
	st %i1, [%fp+2035]
	ba .LBB64_1
	stx %i2, [%fp+2023]
.LBB64_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	mov	%g0, %i1
	brz %i0, .LBB64_3
	st %i1, [%fp+2019]
	ba .LBB64_2
	nop
.LBB64_2:                               !   in Loop: Header=BB64_1 Depth=1
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	ld [%fp+2035], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	movne	%icc, 1, %i0
	ba .LBB64_3
	st %i0, [%fp+2019]
.LBB64_3:                               !   in Loop: Header=BB64_1 Depth=1
	ld [%fp+2019], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB64_6
	nop
	ba .LBB64_4
	nop
.LBB64_4:                               !   in Loop: Header=BB64_1 Depth=1
	ba .LBB64_5
	nop
.LBB64_5:                               !   in Loop: Header=BB64_1 Depth=1
	ldx [%fp+2023], %i0
	add %i0, -1, %i0
	stx %i0, [%fp+2023]
	ldx [%fp+2039], %i0
	add %i0, 4, %i0
	ba .LBB64_1
	stx %i0, [%fp+2039]
.LBB64_6:
	ldx [%fp+2023], %i0
	brz %i0, .LBB64_8
	nop
	ba .LBB64_7
	nop
.LBB64_7:
	ldx [%fp+2039], %i0
	ba .LBB64_9
	stx %i0, [%fp+2007]
.LBB64_8:
	mov	%g0, %i0
	ba .LBB64_9
	stx %i0, [%fp+2007]
.LBB64_9:
	ldx [%fp+2007], %i0                     ! 8-byte Folded Reload
	ret
	restore
.Lfunc_end64:
	.size	wmemchr, .Lfunc_end64-wmemchr
                                        ! -- End function
	.globl	wmemcmp                         ! -- Begin function wmemcmp
	.p2align	2
	.type	wmemcmp,@function
wmemcmp:                                ! @wmemcmp
! %bb.0:
	save %sp, -176, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	ba .LBB65_1
	stx %i2, [%fp+2023]
.LBB65_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	mov	%g0, %i1
	brz %i0, .LBB65_3
	st %i1, [%fp+2019]
	ba .LBB65_2
	nop
.LBB65_2:                               !   in Loop: Header=BB65_1 Depth=1
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	ldx [%fp+2031], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	move	%icc, 1, %i0
	ba .LBB65_3
	st %i0, [%fp+2019]
.LBB65_3:                               !   in Loop: Header=BB65_1 Depth=1
	ld [%fp+2019], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB65_6
	nop
	ba .LBB65_4
	nop
.LBB65_4:                               !   in Loop: Header=BB65_1 Depth=1
	ba .LBB65_5
	nop
.LBB65_5:                               !   in Loop: Header=BB65_1 Depth=1
	ldx [%fp+2023], %i0
	add %i0, -1, %i0
	stx %i0, [%fp+2023]
	ldx [%fp+2039], %i0
	add %i0, 4, %i0
	stx %i0, [%fp+2039]
	ldx [%fp+2031], %i0
	add %i0, 4, %i0
	ba .LBB65_1
	stx %i0, [%fp+2031]
.LBB65_6:
	ldx [%fp+2023], %i0
	brz %i0, .LBB65_11
	nop
	ba .LBB65_7
	nop
.LBB65_7:
	ldx [%fp+2039], %i0
	ld [%i0], %i0
	ldx [%fp+2031], %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	bge %icc, .LBB65_9
	nop
	ba .LBB65_8
	nop
.LBB65_8:
	mov	-1, %i0
	ba .LBB65_10
	st %i0, [%fp+2015]
.LBB65_9:
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	ldx [%fp+2031], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	movg	%icc, 1, %i0
	ba .LBB65_10
	st %i0, [%fp+2015]
.LBB65_10:
	ld [%fp+2015], %i0                      ! 4-byte Folded Reload
	ba .LBB65_12
	st %i0, [%fp+2011]
.LBB65_11:
	mov	%g0, %i0
	ba .LBB65_12
	st %i0, [%fp+2011]
.LBB65_12:
	ld [%fp+2011], %i0                      ! 4-byte Folded Reload
	sra %i0, 0, %i0
	ret
	restore
.Lfunc_end65:
	.size	wmemcmp, .Lfunc_end65-wmemcmp
                                        ! -- End function
	.globl	wmemcpy                         ! -- Begin function wmemcpy
	.p2align	2
	.type	wmemcpy,@function
wmemcpy:                                ! @wmemcpy
! %bb.0:
	save %sp, -160, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	stx %i2, [%fp+2023]
	ldx [%fp+2039], %i0
	ba .LBB66_1
	stx %i0, [%fp+2015]
.LBB66_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	add %i0, -1, %i1
	brz %i0, .LBB66_3
	stx %i1, [%fp+2023]
	ba .LBB66_2
	nop
.LBB66_2:                               !   in Loop: Header=BB66_1 Depth=1
	ldx [%fp+2031], %i0
	add %i0, 4, %i1
	stx %i1, [%fp+2031]
	ld [%i0], %i1
	ldx [%fp+2039], %i0
	add %i0, 4, %i2
	stx %i2, [%fp+2039]
	ba .LBB66_1
	st %i1, [%i0]
.LBB66_3:
	ldx [%fp+2015], %i0
	ret
	restore
.Lfunc_end66:
	.size	wmemcpy, .Lfunc_end66-wmemcpy
                                        ! -- End function
	.globl	wmemmove                        ! -- Begin function wmemmove
	.p2align	2
	.type	wmemmove,@function
wmemmove:                               ! @wmemmove
! %bb.0:
	save %sp, -176, %sp
	stx %i0, [%fp+2031]
	stx %i1, [%fp+2023]
	stx %i2, [%fp+2015]
	ldx [%fp+2031], %i0
	stx %i0, [%fp+2007]
	ldx [%fp+2031], %i0
	ldx [%fp+2023], %i1
	cmp	%i0, %i1
	bne %xcc, .LBB67_2
	nop
	ba .LBB67_1
	nop
.LBB67_1:
	ldx [%fp+2031], %i0
	ba .LBB67_12
	stx %i0, [%fp+2039]
.LBB67_2:
	ldx [%fp+2031], %i0
	ldx [%fp+2023], %i1
	sub %i0, %i1, %i0
	ldx [%fp+2015], %i1
	sllx %i1, 2, %i1
	cmp	%i0, %i1
	bcc %xcc, .LBB67_7
	nop
	ba .LBB67_3
	nop
.LBB67_3:
	ba .LBB67_4
	nop
.LBB67_4:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2015], %i0
	add %i0, -1, %i1
	brz %i0, .LBB67_6
	stx %i1, [%fp+2015]
	ba .LBB67_5
	nop
.LBB67_5:                               !   in Loop: Header=BB67_4 Depth=1
	ldx [%fp+2023], %i0
	ldx [%fp+2015], %i1
	sllx %i1, 2, %i1
	ld [%i0+%i1], %i2
	ldx [%fp+2031], %i0
	ba .LBB67_4
	st %i2, [%i0+%i1]
.LBB67_6:
	ba .LBB67_11
	nop
.LBB67_7:
	ba .LBB67_8
	nop
.LBB67_8:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2015], %i0
	add %i0, -1, %i1
	brz %i0, .LBB67_10
	stx %i1, [%fp+2015]
	ba .LBB67_9
	nop
.LBB67_9:                               !   in Loop: Header=BB67_8 Depth=1
	ldx [%fp+2023], %i0
	add %i0, 4, %i1
	stx %i1, [%fp+2023]
	ld [%i0], %i1
	ldx [%fp+2031], %i0
	add %i0, 4, %i2
	stx %i2, [%fp+2031]
	ba .LBB67_8
	st %i1, [%i0]
.LBB67_10:
	ba .LBB67_11
	nop
.LBB67_11:
	ldx [%fp+2007], %i0
	ba .LBB67_12
	stx %i0, [%fp+2039]
.LBB67_12:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end67:
	.size	wmemmove, .Lfunc_end67-wmemmove
                                        ! -- End function
	.globl	wmemset                         ! -- Begin function wmemset
	.p2align	2
	.type	wmemset,@function
wmemset:                                ! @wmemset
! %bb.0:
	save %sp, -160, %sp
                                        ! kill: def $i3 killed $i1
	stx %i0, [%fp+2039]
	st %i1, [%fp+2035]
	stx %i2, [%fp+2023]
	ldx [%fp+2039], %i0
	ba .LBB68_1
	stx %i0, [%fp+2015]
.LBB68_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	add %i0, -1, %i1
	brz %i0, .LBB68_3
	stx %i1, [%fp+2023]
	ba .LBB68_2
	nop
.LBB68_2:                               !   in Loop: Header=BB68_1 Depth=1
	ld [%fp+2035], %i1
	ldx [%fp+2039], %i0
	add %i0, 4, %i2
	stx %i2, [%fp+2039]
	ba .LBB68_1
	st %i1, [%i0]
.LBB68_3:
	ldx [%fp+2015], %i0
	ret
	restore
.Lfunc_end68:
	.size	wmemset, .Lfunc_end68-wmemset
                                        ! -- End function
	.globl	bcopy                           ! -- Begin function bcopy
	.p2align	2
	.type	bcopy,@function
bcopy:                                  ! @bcopy
! %bb.0:
	save %sp, -176, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	stx %i2, [%fp+2023]
	ldx [%fp+2039], %i0
	stx %i0, [%fp+2015]
	ldx [%fp+2031], %i0
	stx %i0, [%fp+2007]
	ldx [%fp+2015], %i0
	ldx [%fp+2007], %i1
	cmp	%i0, %i1
	bcc %xcc, .LBB69_6
	nop
	ba .LBB69_1
	nop
.LBB69_1:
	ldx [%fp+2023], %i1
	ldx [%fp+2015], %i0
	add %i0, %i1, %i0
	stx %i0, [%fp+2015]
	ldx [%fp+2023], %i1
	ldx [%fp+2007], %i0
	add %i0, %i1, %i0
	ba .LBB69_2
	stx %i0, [%fp+2007]
.LBB69_2:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	brz %i0, .LBB69_5
	nop
	ba .LBB69_3
	nop
.LBB69_3:                               !   in Loop: Header=BB69_2 Depth=1
	ldx [%fp+2015], %i0
	add %i0, -1, %i1
	stx %i1, [%fp+2015]
	ldub [%i0+-1], %i1
	ldx [%fp+2007], %i0
	add %i0, -1, %i2
	stx %i2, [%fp+2007]
	ba .LBB69_4
	stb %i1, [%i0+-1]
.LBB69_4:                               !   in Loop: Header=BB69_2 Depth=1
	ldx [%fp+2023], %i0
	add %i0, -1, %i0
	ba .LBB69_2
	stx %i0, [%fp+2023]
.LBB69_5:
	ba .LBB69_13
	nop
.LBB69_6:
	ldx [%fp+2015], %i0
	ldx [%fp+2007], %i1
	cmp	%i0, %i1
	be %xcc, .LBB69_12
	nop
	ba .LBB69_7
	nop
.LBB69_7:
	ba .LBB69_8
	nop
.LBB69_8:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	brz %i0, .LBB69_11
	nop
	ba .LBB69_9
	nop
.LBB69_9:                               !   in Loop: Header=BB69_8 Depth=1
	ldx [%fp+2015], %i0
	add %i0, 1, %i1
	stx %i1, [%fp+2015]
	ldub [%i0], %i1
	ldx [%fp+2007], %i0
	add %i0, 1, %i2
	stx %i2, [%fp+2007]
	ba .LBB69_10
	stb %i1, [%i0]
.LBB69_10:                              !   in Loop: Header=BB69_8 Depth=1
	ldx [%fp+2023], %i0
	add %i0, -1, %i0
	ba .LBB69_8
	stx %i0, [%fp+2023]
.LBB69_11:
	ba .LBB69_12
	nop
.LBB69_12:
	ba .LBB69_13
	nop
.LBB69_13:
	ret
	restore
.Lfunc_end69:
	.size	bcopy, .Lfunc_end69-bcopy
                                        ! -- End function
	.globl	rotl64                          ! -- Begin function rotl64
	.p2align	2
	.type	rotl64,@function
rotl64:                                 ! @rotl64
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i2 killed $i1
	stx %i0, [%fp+2039]
	st %i1, [%fp+2035]
	ldx [%fp+2039], %i1
	ld [%fp+2035], %i3
	sllx %i1, %i3, %i0
	mov	64, %i2
	sub %i2, %i3, %i2
	srlx %i1, %i2, %i1
	or %i0, %i1, %i0
	ret
	restore
.Lfunc_end70:
	.size	rotl64, .Lfunc_end70-rotl64
                                        ! -- End function
	.globl	rotr64                          ! -- Begin function rotr64
	.p2align	2
	.type	rotr64,@function
rotr64:                                 ! @rotr64
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i2 killed $i1
	stx %i0, [%fp+2039]
	st %i1, [%fp+2035]
	ldx [%fp+2039], %i1
	ld [%fp+2035], %i3
	srlx %i1, %i3, %i0
	mov	64, %i2
	sub %i2, %i3, %i2
	sllx %i1, %i2, %i1
	or %i0, %i1, %i0
	ret
	restore
.Lfunc_end71:
	.size	rotr64, .Lfunc_end71-rotr64
                                        ! -- End function
	.globl	rotl32                          ! -- Begin function rotl32
	.p2align	2
	.type	rotl32,@function
rotl32:                                 ! @rotl32
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+2043]
	st %i1, [%fp+2039]
	ld [%fp+2043], %i1
	ld [%fp+2039], %i3
	sll %i1, %i3, %i0
	mov	32, %i2
	sub %i2, %i3, %i2
	srl %i1, %i2, %i1
	or %i0, %i1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end72:
	.size	rotl32, .Lfunc_end72-rotl32
                                        ! -- End function
	.globl	rotr32                          ! -- Begin function rotr32
	.p2align	2
	.type	rotr32,@function
rotr32:                                 ! @rotr32
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+2043]
	st %i1, [%fp+2039]
	ld [%fp+2043], %i1
	ld [%fp+2039], %i3
	srl %i1, %i3, %i0
	mov	32, %i2
	sub %i2, %i3, %i2
	sll %i1, %i2, %i1
	or %i0, %i1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end73:
	.size	rotr32, .Lfunc_end73-rotr32
                                        ! -- End function
	.globl	rotl_sz                         ! -- Begin function rotl_sz
	.p2align	2
	.type	rotl_sz,@function
rotl_sz:                                ! @rotl_sz
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i2 killed $i1
	stx %i0, [%fp+2039]
	st %i1, [%fp+2035]
	ldx [%fp+2039], %i1
	ld [%fp+2035], %i3
	sllx %i1, %i3, %i0
	mov	64, %i2
	sub %i2, %i3, %i2
	srlx %i1, %i2, %i1
	or %i0, %i1, %i0
	ret
	restore
.Lfunc_end74:
	.size	rotl_sz, .Lfunc_end74-rotl_sz
                                        ! -- End function
	.globl	rotr_sz                         ! -- Begin function rotr_sz
	.p2align	2
	.type	rotr_sz,@function
rotr_sz:                                ! @rotr_sz
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i2 killed $i1
	stx %i0, [%fp+2039]
	st %i1, [%fp+2035]
	ldx [%fp+2039], %i1
	ld [%fp+2035], %i3
	srlx %i1, %i3, %i0
	mov	64, %i2
	sub %i2, %i3, %i2
	sllx %i1, %i2, %i1
	or %i0, %i1, %i0
	ret
	restore
.Lfunc_end75:
	.size	rotr_sz, .Lfunc_end75-rotr_sz
                                        ! -- End function
	.globl	rotl16                          ! -- Begin function rotl16
	.p2align	2
	.type	rotl16,@function
rotl16:                                 ! @rotl16
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	sth %i0, [%fp+2045]
	st %i1, [%fp+2039]
	lduh [%fp+2045], %i1
	ld [%fp+2039], %i3
	sll %i1, %i3, %i0
	mov	16, %i2
	sub %i2, %i3, %i2
	srl %i1, %i2, %i1
	or %i0, %i1, %i0
	sethi 4194240, %i1
	andn %i0, %i1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end76:
	.size	rotl16, .Lfunc_end76-rotl16
                                        ! -- End function
	.globl	rotr16                          ! -- Begin function rotr16
	.p2align	2
	.type	rotr16,@function
rotr16:                                 ! @rotr16
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	sth %i0, [%fp+2045]
	st %i1, [%fp+2039]
	lduh [%fp+2045], %i1
	ld [%fp+2039], %i3
	srl %i1, %i3, %i0
	mov	16, %i2
	sub %i2, %i3, %i2
	sll %i1, %i2, %i1
	or %i0, %i1, %i0
	sethi 4194240, %i1
	andn %i0, %i1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end77:
	.size	rotr16, .Lfunc_end77-rotr16
                                        ! -- End function
	.globl	rotl8                           ! -- Begin function rotl8
	.p2align	2
	.type	rotl8,@function
rotl8:                                  ! @rotl8
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	stb %i0, [%fp+2046]
	st %i1, [%fp+2039]
	ldub [%fp+2046], %i1
	ld [%fp+2039], %i3
	sll %i1, %i3, %i0
	mov	8, %i2
	sub %i2, %i3, %i2
	srl %i1, %i2, %i1
	or %i0, %i1, %i0
	and %i0, 255, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end78:
	.size	rotl8, .Lfunc_end78-rotl8
                                        ! -- End function
	.globl	rotr8                           ! -- Begin function rotr8
	.p2align	2
	.type	rotr8,@function
rotr8:                                  ! @rotr8
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	stb %i0, [%fp+2046]
	st %i1, [%fp+2039]
	ldub [%fp+2046], %i1
	ld [%fp+2039], %i3
	srl %i1, %i3, %i0
	mov	8, %i2
	sub %i2, %i3, %i2
	sll %i1, %i2, %i1
	or %i0, %i1, %i0
	and %i0, 255, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end79:
	.size	rotr8, .Lfunc_end79-rotr8
                                        ! -- End function
	.globl	bswap_16                        ! -- Begin function bswap_16
	.p2align	2
	.type	bswap_16,@function
bswap_16:                               ! @bswap_16
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	sth %i0, [%fp+2045]
	mov	255, %i0
	sth %i0, [%fp+2043]
	lduh [%fp+2045], %i1
	lduh [%fp+2043], %i2
	sll %i2, 8, %i0
	and %i1, %i0, %i0
	srl %i0, 8, %i0
	and %i1, %i2, %i1
	sll %i1, 8, %i1
	or %i0, %i1, %i0
	sethi 63, %i1
	or %i1, 1023, %i1
	and %i0, %i1, %i0
	ret
	restore
.Lfunc_end80:
	.size	bswap_16, .Lfunc_end80-bswap_16
                                        ! -- End function
	.globl	bswap_32                        ! -- Begin function bswap_32
	.p2align	2
	.type	bswap_32,@function
bswap_32:                               ! @bswap_32
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	mov	255, %i0
	st %i0, [%fp+2039]
	ld [%fp+2043], %i1
	ld [%fp+2039], %i2
	sll %i2, 24, %i0
	and %i1, %i0, %i0
	srl %i0, 24, %i0
	sll %i2, 16, %i3
	and %i1, %i3, %i4
	srl %i4, 8, %i4
	or %i0, %i4, %i0
	sll %i1, 8, %i4
	and %i3, %i4, %i3
	or %i0, %i3, %i0
	and %i1, %i2, %i1
	sll %i1, 24, %i1
	or %i0, %i1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end81:
	.size	bswap_32, .Lfunc_end81-bswap_32
                                        ! -- End function
	.globl	bswap_64                        ! -- Begin function bswap_64
	.p2align	2
	.type	bswap_64,@function
bswap_64:                               ! @bswap_64
	.register %g2, #scratch
! %bb.0:
	save %sp, -144, %sp
	stx %i0, [%fp+2039]
	mov	255, %i0
	stx %i0, [%fp+2031]
	ldx [%fp+2039], %i1
	ldx [%fp+2031], %i2
	sllx %i2, 56, %i0
	and %i1, %i0, %i0
	srlx %i0, 56, %i0
	sllx %i2, 48, %i3
	and %i1, %i3, %i4
	srlx %i4, 40, %i4
	or %i0, %i4, %i0
	sllx %i2, 40, %i4
	and %i1, %i4, %i5
	srlx %i5, 24, %i5
	or %i0, %i5, %i0
	sllx %i2, 32, %i5
	and %i1, %i5, %g2
	srlx %g2, 8, %g2
	or %i0, %g2, %i0
	sllx %i1, 8, %g2
	and %i5, %g2, %i5
	or %i0, %i5, %i0
	sllx %i1, 24, %i5
	and %i4, %i5, %i4
	or %i0, %i4, %i0
	sllx %i1, 40, %i4
	and %i3, %i4, %i3
	or %i0, %i3, %i0
	and %i1, %i2, %i1
	sllx %i1, 56, %i1
	or %i0, %i1, %i0
	ret
	restore
.Lfunc_end82:
	.size	bswap_64, .Lfunc_end82-bswap_64
                                        ! -- End function
	.globl	ffs                             ! -- Begin function ffs
	.p2align	2
	.type	ffs,@function
ffs:                                    ! @ffs
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2039]
	ba .LBB83_1
	st %g0, [%fp+2035]
.LBB83_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+2035], %i0
	cmp	%i0, 31
	bgu %icc, .LBB83_6
	nop
	ba .LBB83_2
	nop
.LBB83_2:                               !   in Loop: Header=BB83_1 Depth=1
	ld [%fp+2039], %i0
	ld [%fp+2035], %i1
	srl %i0, %i1, %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB83_4
	nop
	ba .LBB83_3
	nop
.LBB83_3:
	ld [%fp+2035], %i0
	add %i0, 1, %i0
	ba .LBB83_7
	st %i0, [%fp+2043]
.LBB83_4:                               !   in Loop: Header=BB83_1 Depth=1
	ba .LBB83_5
	nop
.LBB83_5:                               !   in Loop: Header=BB83_1 Depth=1
	ld [%fp+2035], %i0
	add %i0, 1, %i0
	ba .LBB83_1
	st %i0, [%fp+2035]
.LBB83_6:
	ba .LBB83_7
	st %g0, [%fp+2043]
.LBB83_7:
	ldsw [%fp+2043], %i0
	ret
	restore
.Lfunc_end83:
	.size	ffs, .Lfunc_end83-ffs
                                        ! -- End function
	.globl	libiberty_ffs                   ! -- Begin function libiberty_ffs
	.p2align	2
	.type	libiberty_ffs,@function
libiberty_ffs:                          ! @libiberty_ffs
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2039]
	ld [%fp+2039], %i0
	cmp	%i0, 0
	bne %icc, .LBB84_2
	nop
	ba .LBB84_1
	nop
.LBB84_1:
	ba .LBB84_7
	st %g0, [%fp+2043]
.LBB84_2:
	mov	1, %i0
	ba .LBB84_3
	st %i0, [%fp+2035]
.LBB84_3:                               ! =>This Inner Loop Header: Depth=1
	add %fp, 2039, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	bne %icc, .LBB84_6
	nop
	ba .LBB84_4
	nop
.LBB84_4:                               !   in Loop: Header=BB84_3 Depth=1
	ld [%fp+2039], %i0
	sra %i0, 1, %i0
	ba .LBB84_5
	st %i0, [%fp+2039]
.LBB84_5:                               !   in Loop: Header=BB84_3 Depth=1
	ld [%fp+2035], %i0
	add %i0, 1, %i0
	ba .LBB84_3
	st %i0, [%fp+2035]
.LBB84_6:
	ld [%fp+2035], %i0
	ba .LBB84_7
	st %i0, [%fp+2043]
.LBB84_7:
	ldsw [%fp+2043], %i0
	ret
	restore
.Lfunc_end84:
	.size	libiberty_ffs, .Lfunc_end84-libiberty_ffs
                                        ! -- End function
	.globl	gl_isinff                       ! -- Begin function gl_isinff
	.p2align	2
	.type	gl_isinff,@function
gl_isinff:                              ! @gl_isinff
! %bb.0:
	save %sp, -192, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %o0
	sethi 4186111, %i0
	call __ltsf2
	or %i0, 1023, %o1
	mov	1, %i0
	cmp	%o0, 0
	bl %icc, .LBB85_2
	st %i0, [%fp+2039]
	ba .LBB85_1
	nop
.LBB85_1:
	ld [%fp+2043], %o0
	sethi 2088959, %i0
	call __gtsf2
	or %i0, 1023, %o1
	mov	%g0, %i0
	cmp	%o0, 0
	movg	%icc, 1, %i0
	ba .LBB85_2
	st %i0, [%fp+2039]
.LBB85_2:
	ld [%fp+2039], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end85:
	.size	gl_isinff, .Lfunc_end85-gl_isinff
                                        ! -- End function
	.globl	gl_isinfd                       ! -- Begin function gl_isinfd
	.p2align	2
	.type	gl_isinfd,@function
gl_isinfd:                              ! @gl_isinfd
! %bb.0:
	save %sp, -192, %sp
                                        ! kill: def $i1 killed $i0
	stx %i0, [%fp+2039]
	ldx [%fp+2039], %o0
	sethi 4194303, %i0
	or %i0, 1023, %i1
	sethi 4193279, %i0
	or %i0, 1023, %i0
	sllx %i0, 32, %i0
	call __ltdf2
	or %i0, %i1, %o1
	mov	1, %i0
	cmp	%o0, 0
	bl %icc, .LBB86_2
	st %i0, [%fp+2035]
	ba .LBB86_1
	nop
.LBB86_1:
	ldx [%fp+2039], %o0
	sethi 4194303, %i0
	or %i0, 1023, %i1
	sethi 2096127, %i0
	or %i0, 1023, %i0
	sllx %i0, 32, %i0
	call __gtdf2
	or %i0, %i1, %o1
	mov	%g0, %i0
	cmp	%o0, 0
	movg	%icc, 1, %i0
	ba .LBB86_2
	st %i0, [%fp+2035]
.LBB86_2:
	ld [%fp+2035], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end86:
	.size	gl_isinfd, .Lfunc_end86-gl_isinfd
                                        ! -- End function
	.globl	gl_isinfl                       ! -- Begin function gl_isinfl
	.p2align	2
	.type	gl_isinfl,@function
gl_isinfl:                              ! @gl_isinfl
! %bb.0:
	save %sp, -208, %sp
	mov	%i1, %i2
	mov	%i0, %i1
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i0 killed $i1
	add %fp, 2031, %i0
	or %i0, 8, %i0
	stx %i2, [%i0]
	stx %i1, [%fp+2031]
	ldx [%i0], %o1
	ldx [%fp+2031], %o0
	sethi 4194303, %i0
	or %i0, 1023, %i1
	sethi 4194239, %i0
	or %i0, 1023, %i0
	sllx %i0, 32, %i0
	or %i0, %i1, %o2
	call __lttf2
	mov	-1, %o3
	mov	1, %i0
	cmp	%o0, 0
	bl %icc, .LBB87_2
	st %i0, [%fp+2027]
	ba .LBB87_1
	nop
.LBB87_1:
	add %fp, 2031, %i0
	or %i0, 8, %i0
	ldx [%i0], %o1
	ldx [%fp+2031], %o0
	sethi 4194303, %i0
	or %i0, 1023, %i1
	sethi 2097087, %i0
	or %i0, 1023, %i0
	sllx %i0, 32, %i0
	or %i0, %i1, %o2
	call __gttf2
	mov	-1, %o3
	mov	%g0, %i0
	cmp	%o0, 0
	movg	%icc, 1, %i0
	ba .LBB87_2
	st %i0, [%fp+2027]
.LBB87_2:
	ld [%fp+2027], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end87:
	.size	gl_isinfl, .Lfunc_end87-gl_isinfl
                                        ! -- End function
	.globl	_Qp_itoq                        ! -- Begin function _Qp_itoq
	.p2align	2
	.type	_Qp_itoq,@function
_Qp_itoq:                               ! @_Qp_itoq
! %bb.0:
	save %sp, -192, %sp
                                        ! kill: def $i2 killed $i1
	stx %i0, [%fp+2039]
	st %i1, [%fp+2035]
	call __floatsidf
	ldsw [%fp+2035], %o0
	call __extenddftf2
	nop
	ldx [%fp+2039], %i0
	stx %o1, [%i0+8]
	stx %o0, [%i0]
	ret
	restore
.Lfunc_end88:
	.size	_Qp_itoq, .Lfunc_end88-_Qp_itoq
                                        ! -- End function
	.globl	ldexpf                          ! -- Begin function ldexpf
	.p2align	2
	.type	ldexpf,@function
ldexpf:                                 ! @ldexpf
! %bb.0:
	save %sp, -208, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+2043]
	st %i1, [%fp+2039]
	ld [%fp+2043], %i0
	sethi 2097152, %i1
	andn %i0, %i1, %i0
	sethi 2088960, %i1
	cmp	%i0, %i1
	bg %icc, .LBB89_9
	nop
	ba .LBB89_1
	nop
.LBB89_1:
	ld [%fp+2043], %o1
	stx %o1, [%fp+2023]                     ! 8-byte Folded Spill
	call __addsf3
	mov	%o1, %o0
	call __eqsf2
	ldx [%fp+2023], %o1
	cmp	%o0, 0
	be %icc, .LBB89_9
	nop
	ba .LBB89_2
	nop
.LBB89_2:
	ld [%fp+2039], %i2
	sethi 1048576, %i0
	sethi 1032192, %i1
	cmp	%i2, 0
	movl	%icc, %i1, %i0
	ba .LBB89_3
	st %i0, [%fp+2035]
.LBB89_3:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+2039], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i1
	and %i1, -2, %i1
	sub %i0, %i1, %i0
	cmp	%i0, 0
	be %icc, .LBB89_5
	nop
	ba .LBB89_4
	nop
.LBB89_4:                               !   in Loop: Header=BB89_3 Depth=1
	ld [%fp+2035], %o1
	call __mulsf3
	ld [%fp+2043], %o0
	ba .LBB89_5
	st %o0, [%fp+2043]
.LBB89_5:                               !   in Loop: Header=BB89_3 Depth=1
	ld [%fp+2039], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i0
	sra %i0, 1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2039], %i0
	cmp	%i0, 0
	bne %icc, .LBB89_7
	nop
	ba .LBB89_6
	nop
.LBB89_6:
	ba .LBB89_8
	nop
.LBB89_7:                               !   in Loop: Header=BB89_3 Depth=1
	ld [%fp+2035], %o1
	call __mulsf3
	mov	%o1, %o0
	ba .LBB89_3
	st %o0, [%fp+2035]
.LBB89_8:
	ba .LBB89_9
	nop
.LBB89_9:
	ld [%fp+2043], %i0
	ret
	restore
.Lfunc_end89:
	.size	ldexpf, .Lfunc_end89-ldexpf
                                        ! -- End function
	.globl	ldexp                           ! -- Begin function ldexp
	.p2align	2
	.type	ldexp,@function
ldexp:                                  ! @ldexp
! %bb.0:
	save %sp, -208, %sp
                                        ! kill: def $i2 killed $i0
                                        ! kill: def $i2 killed $i1
	stx %i0, [%fp+2039]
	st %i1, [%fp+2035]
	ldx [%fp+2039], %i0
	sethi 4194303, %i1
	or %i1, 1023, %i2
	sethi 2097151, %i1
	or %i1, 1023, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	and %i0, %i1, %i0
	sethi 0, %i1
	or %i1, 0, %i2
	sethi 2096128, %i1
	or %i1, 0, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	cmp	%i0, %i1
	bg %xcc, .LBB90_9
	nop
	ba .LBB90_1
	nop
.LBB90_1:
	ldx [%fp+2039], %o1
	stx %o1, [%fp+2015]                     ! 8-byte Folded Spill
	call __adddf3
	mov	%o1, %o0
	call __eqdf2
	ldx [%fp+2015], %o1
	cmp	%o0, 0
	be %icc, .LBB90_9
	nop
	ba .LBB90_2
	nop
.LBB90_2:
	ld [%fp+2035], %i2
	sethi 0, %i0
	or %i0, 0, %i3
	sethi 1048576, %i0
	or %i0, 0, %i0
	sllx %i0, 32, %i0
	or %i0, %i3, %i0
	sethi 1046528, %i1
	or %i1, 0, %i1
	sllx %i1, 32, %i1
	or %i1, %i3, %i1
	cmp	%i2, 0
	movl	%icc, %i1, %i0
	ba .LBB90_3
	stx %i0, [%fp+2023]
.LBB90_3:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+2035], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i1
	and %i1, -2, %i1
	sub %i0, %i1, %i0
	cmp	%i0, 0
	be %icc, .LBB90_5
	nop
	ba .LBB90_4
	nop
.LBB90_4:                               !   in Loop: Header=BB90_3 Depth=1
	ldx [%fp+2023], %o1
	call __muldf3
	ldx [%fp+2039], %o0
	ba .LBB90_5
	stx %o0, [%fp+2039]
.LBB90_5:                               !   in Loop: Header=BB90_3 Depth=1
	ld [%fp+2035], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i0
	sra %i0, 1, %i0
	st %i0, [%fp+2035]
	ld [%fp+2035], %i0
	cmp	%i0, 0
	bne %icc, .LBB90_7
	nop
	ba .LBB90_6
	nop
.LBB90_6:
	ba .LBB90_8
	nop
.LBB90_7:                               !   in Loop: Header=BB90_3 Depth=1
	ldx [%fp+2023], %o1
	call __muldf3
	mov	%o1, %o0
	ba .LBB90_3
	stx %o0, [%fp+2023]
.LBB90_8:
	ba .LBB90_9
	nop
.LBB90_9:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end90:
	.size	ldexp, .Lfunc_end90-ldexp
                                        ! -- End function
	.globl	ldexpl                          ! -- Begin function ldexpl
	.p2align	2
	.type	ldexpl,@function
ldexpl:                                 ! @ldexpl
! %bb.0:
	save %sp, -240, %sp
	mov	%i1, %i3
	mov	%i0, %i1
                                        ! kill: def $i0 killed $i3
                                        ! kill: def $i0 killed $i1
                                        ! kill: def $i0 killed $i2
	add %fp, 2031, %i0
	or %i0, 8, %i0
	stx %i3, [%i0]
	stx %i1, [%fp+2031]
	st %i2, [%fp+2027]
	ldx [%i0], %i4
	ldx [%fp+2031], %i0
	sethi 4194303, %i1
	or %i1, 1023, %i2
	sethi 2097151, %i1
	or %i1, 1023, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	and %i0, %i1, %i2
	sethi 0, %i0
	or %i0, 0, %i1
	sethi 2097088, %i0
	or %i0, 0, %i0
	sllx %i0, 32, %i0
	or %i0, %i1, %i3
	mov	%g0, %i1
	cmp	%i2, %i3
	mov	%i1, %i0
	movg	%xcc, 1, %i0
	movrnz %i4, 1, %i1
	cmp	%i2, %i3
	move	%xcc, %i1, %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	bne %icc, .LBB91_9
	nop
	ba .LBB91_1
	nop
.LBB91_1:
	add %fp, 2031, %i0
	or %i0, 8, %i0
	ldx [%i0], %o3
	stx %o3, [%fp+1991]                     ! 8-byte Folded Spill
	ldx [%fp+2031], %o2
	stx %o2, [%fp+1983]                     ! 8-byte Folded Spill
	mov	%o2, %o0
	call __addtf3
	mov	%o3, %o1
	ldx [%fp+1983], %o2                     ! 8-byte Folded Reload
	call __eqtf2
	ldx [%fp+1991], %o3
	cmp	%o0, 0
	be %icc, .LBB91_9
	nop
	ba .LBB91_2
	nop
.LBB91_2:
	ld [%fp+2027], %i2
	sethi 0, %i0
	or %i0, 0, %i3
	sethi 1048576, %i0
	or %i0, 0, %i0
	sllx %i0, 32, %i0
	or %i0, %i3, %i0
	sethi 1048448, %i1
	or %i1, 0, %i1
	sllx %i1, 32, %i1
	or %i1, %i3, %i1
	cmp	%i2, 0
	movl	%icc, %i1, %i0
	add %fp, 1999, %i1
	or %i1, 8, %i1
	stx %g0, [%i1]
	ba .LBB91_3
	stx %i0, [%fp+1999]
.LBB91_3:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+2027], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i1
	and %i1, -2, %i1
	sub %i0, %i1, %i0
	cmp	%i0, 0
	be %icc, .LBB91_5
	nop
	ba .LBB91_4
	nop
.LBB91_4:                               !   in Loop: Header=BB91_3 Depth=1
	add %fp, 1999, %i0
	or %i0, 8, %i0
	ldx [%i0], %o3
	ldx [%fp+1999], %o2
	add %fp, 2031, %i0
	or %i0, 8, %i0
	ldx [%i0], %o1
	call __multf3
	ldx [%fp+2031], %o0
	stx %o1, [%i0]
	ba .LBB91_5
	stx %o0, [%fp+2031]
.LBB91_5:                               !   in Loop: Header=BB91_3 Depth=1
	ld [%fp+2027], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i0
	sra %i0, 1, %i0
	st %i0, [%fp+2027]
	ld [%fp+2027], %i0
	cmp	%i0, 0
	bne %icc, .LBB91_7
	nop
	ba .LBB91_6
	nop
.LBB91_6:
	ba .LBB91_8
	nop
.LBB91_7:                               !   in Loop: Header=BB91_3 Depth=1
	add %fp, 1999, %i0
	or %i0, 8, %i0
	ldx [%i0], %o3
	ldx [%fp+1999], %o2
	mov	%o2, %o0
	call __multf3
	mov	%o3, %o1
	stx %o1, [%i0]
	ba .LBB91_3
	stx %o0, [%fp+1999]
.LBB91_8:
	ba .LBB91_9
	nop
.LBB91_9:
	add %fp, 2031, %i0
	or %i0, 8, %i0
	ldx [%i0], %i1
	ldx [%fp+2031], %i0
	ret
	restore
.Lfunc_end91:
	.size	ldexpl, .Lfunc_end91-ldexpl
                                        ! -- End function
	.globl	memxor                          ! -- Begin function memxor
	.p2align	2
	.type	memxor,@function
memxor:                                 ! @memxor
! %bb.0:
	save %sp, -176, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	stx %i2, [%fp+2023]
	ldx [%fp+2031], %i0
	stx %i0, [%fp+2015]
	ldx [%fp+2039], %i0
	ba .LBB92_1
	stx %i0, [%fp+2007]
.LBB92_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	brz %i0, .LBB92_4
	nop
	ba .LBB92_2
	nop
.LBB92_2:                               !   in Loop: Header=BB92_1 Depth=1
	ldx [%fp+2015], %i0
	add %i0, 1, %i1
	stx %i1, [%fp+2015]
	ldub [%i0], %i2
	ldx [%fp+2007], %i0
	add %i0, 1, %i1
	stx %i1, [%fp+2007]
	ldub [%i0], %i1
	xor %i1, %i2, %i1
	ba .LBB92_3
	stb %i1, [%i0]
.LBB92_3:                               !   in Loop: Header=BB92_1 Depth=1
	ldx [%fp+2023], %i0
	add %i0, -1, %i0
	ba .LBB92_1
	stx %i0, [%fp+2023]
.LBB92_4:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end92:
	.size	memxor, .Lfunc_end92-memxor
                                        ! -- End function
	.globl	strncat                         ! -- Begin function strncat
	.p2align	2
	.type	strncat,@function
strncat:                                ! @strncat
! %bb.0:
	save %sp, -224, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	stx %i2, [%fp+2023]
	ldx [%fp+2039], %i0
	call strlen
	mov	%i0, %o0
	add %i0, %o0, %i0
	ba .LBB93_1
	stx %i0, [%fp+2015]
.LBB93_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	mov	%g0, %i1
	brz %i0, .LBB93_3
	st %i1, [%fp+2011]
	ba .LBB93_2
	nop
.LBB93_2:                               !   in Loop: Header=BB93_1 Depth=1
	ldx [%fp+2031], %i0
	ldub [%i0], %i1
	ldx [%fp+2015], %i0
	stb %i1, [%i0]
	mov	%g0, %i0
	cmp	%i1, 0
	movne	%icc, 1, %i0
	ba .LBB93_3
	st %i0, [%fp+2011]
.LBB93_3:                               !   in Loop: Header=BB93_1 Depth=1
	ld [%fp+2011], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB93_6
	nop
	ba .LBB93_4
	nop
.LBB93_4:                               !   in Loop: Header=BB93_1 Depth=1
	ba .LBB93_5
	nop
.LBB93_5:                               !   in Loop: Header=BB93_1 Depth=1
	ldx [%fp+2031], %i0
	add %i0, 1, %i0
	stx %i0, [%fp+2031]
	ldx [%fp+2015], %i0
	add %i0, 1, %i0
	stx %i0, [%fp+2015]
	ldx [%fp+2023], %i0
	add %i0, -1, %i0
	ba .LBB93_1
	stx %i0, [%fp+2023]
.LBB93_6:
	ldx [%fp+2023], %i0
	brnz %i0, .LBB93_8
	nop
	ba .LBB93_7
	nop
.LBB93_7:
	ldx [%fp+2015], %i0
	mov	%g0, %i1
	ba .LBB93_8
	stb %i1, [%i0]
.LBB93_8:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end93:
	.size	strncat, .Lfunc_end93-strncat
                                        ! -- End function
	.globl	strnlen                         ! -- Begin function strnlen
	.p2align	2
	.type	strnlen,@function
strnlen:                                ! @strnlen
! %bb.0:
	save %sp, -160, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	ba .LBB94_1
	stx %g0, [%fp+2023]
.LBB94_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i1
	ldx [%fp+2031], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bcc %xcc, .LBB94_3
	st %i0, [%fp+2019]
	ba .LBB94_2
	nop
.LBB94_2:                               !   in Loop: Header=BB94_1 Depth=1
	ldx [%fp+2039], %i0
	ldx [%fp+2023], %i1
	ldsb [%i0+%i1], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	movne	%icc, 1, %i0
	ba .LBB94_3
	st %i0, [%fp+2019]
.LBB94_3:                               !   in Loop: Header=BB94_1 Depth=1
	ld [%fp+2019], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB94_6
	nop
	ba .LBB94_4
	nop
.LBB94_4:                               !   in Loop: Header=BB94_1 Depth=1
	ba .LBB94_5
	nop
.LBB94_5:                               !   in Loop: Header=BB94_1 Depth=1
	ldx [%fp+2023], %i0
	add %i0, 1, %i0
	ba .LBB94_1
	stx %i0, [%fp+2023]
.LBB94_6:
	ldx [%fp+2023], %i0
	ret
	restore
.Lfunc_end94:
	.size	strnlen, .Lfunc_end94-strnlen
                                        ! -- End function
	.globl	strpbrk                         ! -- Begin function strpbrk
	.p2align	2
	.type	strpbrk,@function
strpbrk:                                ! @strpbrk
! %bb.0:
	save %sp, -160, %sp
	stx %i0, [%fp+2031]
	ba .LBB95_1
	stx %i1, [%fp+2023]
.LBB95_1:                               ! =>This Loop Header: Depth=1
                                        !     Child Loop BB95_3 Depth 2
	ldx [%fp+2031], %i0
	ldsb [%i0], %i0
	cmp	%i0, 0
	be %icc, .LBB95_8
	nop
	ba .LBB95_2
	nop
.LBB95_2:                               !   in Loop: Header=BB95_1 Depth=1
	ldx [%fp+2023], %i0
	ba .LBB95_3
	stx %i0, [%fp+2015]
.LBB95_3:                               !   Parent Loop BB95_1 Depth=1
                                        ! =>  This Inner Loop Header: Depth=2
	ldx [%fp+2015], %i0
	ldsb [%i0], %i0
	cmp	%i0, 0
	be %icc, .LBB95_7
	nop
	ba .LBB95_4
	nop
.LBB95_4:                               !   in Loop: Header=BB95_3 Depth=2
	ldx [%fp+2015], %i0
	add %i0, 1, %i1
	stx %i1, [%fp+2015]
	ldsb [%i0], %i0
	ldx [%fp+2031], %i1
	ldsb [%i1], %i1
	cmp	%i0, %i1
	bne %icc, .LBB95_6
	nop
	ba .LBB95_5
	nop
.LBB95_5:
	ldx [%fp+2031], %i0
	ba .LBB95_9
	stx %i0, [%fp+2039]
.LBB95_6:                               !   in Loop: Header=BB95_3 Depth=2
	ba .LBB95_3
	nop
.LBB95_7:                               !   in Loop: Header=BB95_1 Depth=1
	ldx [%fp+2031], %i0
	add %i0, 1, %i0
	ba .LBB95_1
	stx %i0, [%fp+2031]
.LBB95_8:
	ba .LBB95_9
	stx %g0, [%fp+2039]
.LBB95_9:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end95:
	.size	strpbrk, .Lfunc_end95-strpbrk
                                        ! -- End function
	.globl	strrchr                         ! -- Begin function strrchr
	.p2align	2
	.type	strrchr,@function
strrchr:                                ! @strrchr
! %bb.0:
	save %sp, -160, %sp
                                        ! kill: def $i2 killed $i1
	stx %i0, [%fp+2039]
	st %i1, [%fp+2035]
	ba .LBB96_1
	stx %g0, [%fp+2023]
.LBB96_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	ldsb [%i0], %i0
	ld [%fp+2035], %i1
	cmp	%i0, %i1
	bne %icc, .LBB96_3
	nop
	ba .LBB96_2
	nop
.LBB96_2:                               !   in Loop: Header=BB96_1 Depth=1
	ldx [%fp+2039], %i0
	ba .LBB96_3
	stx %i0, [%fp+2023]
.LBB96_3:                               !   in Loop: Header=BB96_1 Depth=1
	ba .LBB96_4
	nop
.LBB96_4:                               !   in Loop: Header=BB96_1 Depth=1
	ldx [%fp+2039], %i0
	add %i0, 1, %i1
	stx %i1, [%fp+2039]
	ldub [%i0], %i0
	cmp	%i0, 0
	bne %icc, .LBB96_1
	nop
	ba .LBB96_5
	nop
.LBB96_5:
	ldx [%fp+2023], %i0
	ret
	restore
.Lfunc_end96:
	.size	strrchr, .Lfunc_end96-strrchr
                                        ! -- End function
	.globl	strstr                          ! -- Begin function strstr
	.p2align	2
	.type	strstr,@function
strstr:                                 ! @strstr
! %bb.0:
	save %sp, -224, %sp
	stx %i0, [%fp+2031]
	stx %i1, [%fp+2023]
	ldx [%fp+2031], %i0
	stx %i0, [%fp+2015]
	call strlen
	ldx [%fp+2023], %o0
	stx %o0, [%fp+2007]
	ldx [%fp+2007], %i0
	brnz %i0, .LBB97_2
	nop
	ba .LBB97_1
	nop
.LBB97_1:
	ldx [%fp+2031], %i0
	ba .LBB97_9
	stx %i0, [%fp+2039]
.LBB97_2:
	ba .LBB97_3
	nop
.LBB97_3:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2015], %o0
	ldx [%fp+2023], %i0
	call strchr
	ldsb [%i0], %o1
	brz %o0, .LBB97_8
	stx %o0, [%fp+2015]
	ba .LBB97_4
	nop
.LBB97_4:                               !   in Loop: Header=BB97_3 Depth=1
	ldx [%fp+2015], %o0
	ldx [%fp+2023], %o1
	call strncmp
	ldx [%fp+2007], %o2
	cmp	%o0, 0
	bne %icc, .LBB97_6
	nop
	ba .LBB97_5
	nop
.LBB97_5:
	ldx [%fp+2015], %i0
	ba .LBB97_9
	stx %i0, [%fp+2039]
.LBB97_6:                               !   in Loop: Header=BB97_3 Depth=1
	ba .LBB97_7
	nop
.LBB97_7:                               !   in Loop: Header=BB97_3 Depth=1
	ldx [%fp+2015], %i0
	add %i0, 1, %i0
	ba .LBB97_3
	stx %i0, [%fp+2015]
.LBB97_8:
	ba .LBB97_9
	stx %g0, [%fp+2039]
.LBB97_9:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end97:
	.size	strstr, .Lfunc_end97-strstr
                                        ! -- End function
	.globl	copysign                        ! -- Begin function copysign
	.p2align	2
	.type	copysign,@function
copysign:                               ! @copysign
! %bb.0:
	save %sp, -208, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	stx %i0, [%fp+2031]
	stx %i1, [%fp+2023]
	ldx [%fp+2031], %o0
	call __ltdf2
	mov	%g0, %o1
	cmp	%o0, -1
	bg %icc, .LBB98_2
	nop
	ba .LBB98_1
	nop
.LBB98_1:
	ldx [%fp+2023], %o0
	call __gtdf2
	mov	%g0, %o1
	cmp	%o0, 0
	bg %icc, .LBB98_4
	nop
	ba .LBB98_2
	nop
.LBB98_2:
	ldx [%fp+2031], %o0
	call __gtdf2
	mov	%g0, %o1
	cmp	%o0, 1
	bl %icc, .LBB98_5
	nop
	ba .LBB98_3
	nop
.LBB98_3:
	ldx [%fp+2023], %o0
	call __ltdf2
	mov	%g0, %o1
	cmp	%o0, -1
	bg %icc, .LBB98_5
	nop
	ba .LBB98_4
	nop
.LBB98_4:
	ldx [%fp+2031], %i0
	sethi 0, %i1
	or %i1, 0, %i2
	sethi 2097152, %i1
	or %i1, 0, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	xor %i0, %i1, %i0
	ba .LBB98_6
	stx %i0, [%fp+2039]
.LBB98_5:
	ldx [%fp+2031], %i0
	ba .LBB98_6
	stx %i0, [%fp+2039]
.LBB98_6:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end98:
	.size	copysign, .Lfunc_end98-copysign
                                        ! -- End function
	.globl	memmem                          ! -- Begin function memmem
	.p2align	2
	.type	memmem,@function
memmem:                                 ! @memmem
! %bb.0:
	save %sp, -240, %sp
	stx %i0, [%fp+2031]
	stx %i1, [%fp+2023]
	stx %i2, [%fp+2015]
	stx %i3, [%fp+2007]
	ldx [%fp+2031], %i0
	ldx [%fp+2023], %i1
	add %i0, %i1, %i0
	ldx [%fp+2007], %i1
	sub %i0, %i1, %i0
	stx %i0, [%fp+1991]
	ldx [%fp+2007], %i0
	brnz %i0, .LBB99_2
	nop
	ba .LBB99_1
	nop
.LBB99_1:
	ldx [%fp+2031], %i0
	ba .LBB99_12
	stx %i0, [%fp+2039]
.LBB99_2:
	ldx [%fp+2023], %i0
	ldx [%fp+2007], %i1
	cmp	%i0, %i1
	bcc %xcc, .LBB99_4
	nop
	ba .LBB99_3
	nop
.LBB99_3:
	ba .LBB99_12
	stx %g0, [%fp+2039]
.LBB99_4:
	ldx [%fp+2031], %i0
	ba .LBB99_5
	stx %i0, [%fp+1999]
.LBB99_5:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+1999], %i0
	ldx [%fp+1991], %i1
	cmp	%i0, %i1
	bgu %xcc, .LBB99_11
	nop
	ba .LBB99_6
	nop
.LBB99_6:                               !   in Loop: Header=BB99_5 Depth=1
	ldx [%fp+1999], %i0
	ldsb [%i0], %i0
	ldx [%fp+2015], %i1
	ldsb [%i1], %i1
	cmp	%i0, %i1
	bne %icc, .LBB99_9
	nop
	ba .LBB99_7
	nop
.LBB99_7:                               !   in Loop: Header=BB99_5 Depth=1
	ldx [%fp+1999], %i0
	add %i0, 1, %o0
	ldx [%fp+2015], %i0
	add %i0, 1, %o1
	ldx [%fp+2007], %i0
	call memcmp
	add %i0, -1, %o2
	cmp	%o0, 0
	bne %icc, .LBB99_9
	nop
	ba .LBB99_8
	nop
.LBB99_8:
	ldx [%fp+1999], %i0
	ba .LBB99_12
	stx %i0, [%fp+2039]
.LBB99_9:                               !   in Loop: Header=BB99_5 Depth=1
	ba .LBB99_10
	nop
.LBB99_10:                              !   in Loop: Header=BB99_5 Depth=1
	ldx [%fp+1999], %i0
	add %i0, 1, %i0
	ba .LBB99_5
	stx %i0, [%fp+1999]
.LBB99_11:
	ba .LBB99_12
	stx %g0, [%fp+2039]
.LBB99_12:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end99:
	.size	memmem, .Lfunc_end99-memmem
                                        ! -- End function
	.globl	mempcpy                         ! -- Begin function mempcpy
	.p2align	2
	.type	mempcpy,@function
mempcpy:                                ! @mempcpy
! %bb.0:
	save %sp, -208, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	stx %i2, [%fp+2023]
	ldx [%fp+2039], %i0
	ldx [%fp+2031], %o1
	ldx [%fp+2023], %o2
	call memcpy
	mov	%i0, %o0
	ldx [%fp+2023], %i1
	ret
	restore %i0, %i1, %o0
.Lfunc_end100:
	.size	mempcpy, .Lfunc_end100-mempcpy
                                        ! -- End function
	.globl	frexp                           ! -- Begin function frexp
	.p2align	2
	.type	frexp,@function
frexp:                                  ! @frexp
! %bb.0:
	save %sp, -208, %sp
                                        ! kill: def $i2 killed $i0
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	st %g0, [%fp+2023]
	st %g0, [%fp+2027]
	ldx [%fp+2039], %o0
	call __ltdf2
	mov	%g0, %o1
	cmp	%o0, -1
	bg %icc, .LBB101_2
	nop
	ba .LBB101_1
	nop
.LBB101_1:
	ldx [%fp+2039], %i0
	sethi 0, %i1
	or %i1, 0, %i2
	sethi 2097152, %i1
	or %i1, 0, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	xor %i0, %i1, %i0
	stx %i0, [%fp+2039]
	mov	1, %i0
	ba .LBB101_2
	st %i0, [%fp+2027]
.LBB101_2:
	ldx [%fp+2039], %o0
	sethi 0, %i0
	or %i0, 0, %i1
	sethi 1047552, %i0
	or %i0, 0, %i0
	sllx %i0, 32, %i0
	call __gedf2
	or %i0, %i1, %o1
	cmp	%o0, 0
	bl %icc, .LBB101_7
	nop
	ba .LBB101_3
	nop
.LBB101_3:
	ba .LBB101_4
	nop
.LBB101_4:                              ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %o0
	sethi 0, %i0
	or %i0, 0, %i1
	sethi 1047552, %i0
	or %i0, 0, %i0
	sllx %i0, 32, %i0
	call __gedf2
	or %i0, %i1, %o1
	cmp	%o0, 0
	bl %icc, .LBB101_6
	nop
	ba .LBB101_5
	nop
.LBB101_5:                              !   in Loop: Header=BB101_4 Depth=1
	ld [%fp+2023], %i0
	add %i0, 1, %i0
	st %i0, [%fp+2023]
	ldx [%fp+2039], %o0
	sethi 0, %i0
	or %i0, 0, %i1
	sethi 1046528, %i0
	or %i0, 0, %i0
	sllx %i0, 32, %i0
	call __muldf3
	or %i0, %i1, %o1
	ba .LBB101_4
	stx %o0, [%fp+2039]
.LBB101_6:
	ba .LBB101_14
	nop
.LBB101_7:
	ldx [%fp+2039], %o0
	sethi 0, %i0
	or %i0, 0, %i1
	sethi 1046528, %i0
	or %i0, 0, %i0
	sllx %i0, 32, %i0
	call __ltdf2
	or %i0, %i1, %o1
	cmp	%o0, -1
	bg %icc, .LBB101_13
	nop
	ba .LBB101_8
	nop
.LBB101_8:
	ldx [%fp+2039], %o0
	call __eqdf2
	mov	%g0, %o1
	cmp	%o0, 0
	be %icc, .LBB101_13
	nop
	ba .LBB101_9
	nop
.LBB101_9:
	ba .LBB101_10
	nop
.LBB101_10:                             ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %o0
	sethi 0, %i0
	or %i0, 0, %i1
	sethi 1046528, %i0
	or %i0, 0, %i0
	sllx %i0, 32, %i0
	call __ltdf2
	or %i0, %i1, %o1
	cmp	%o0, -1
	bg %icc, .LBB101_12
	nop
	ba .LBB101_11
	nop
.LBB101_11:                             !   in Loop: Header=BB101_10 Depth=1
	ld [%fp+2023], %i0
	add %i0, -1, %i0
	st %i0, [%fp+2023]
	ldx [%fp+2039], %o1
	call __adddf3
	mov	%o1, %o0
	ba .LBB101_10
	stx %o0, [%fp+2039]
.LBB101_12:
	ba .LBB101_13
	nop
.LBB101_13:
	ba .LBB101_14
	nop
.LBB101_14:
	ld [%fp+2023], %i1
	ldx [%fp+2031], %i0
	st %i1, [%i0]
	ld [%fp+2027], %i0
	cmp	%i0, 0
	be %icc, .LBB101_16
	nop
	ba .LBB101_15
	nop
.LBB101_15:
	ldx [%fp+2039], %i0
	sethi 0, %i1
	or %i1, 0, %i2
	sethi 2097152, %i1
	or %i1, 0, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	xor %i0, %i1, %i0
	ba .LBB101_16
	stx %i0, [%fp+2039]
.LBB101_16:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end101:
	.size	frexp, .Lfunc_end101-frexp
                                        ! -- End function
	.globl	__muldi3                        ! -- Begin function __muldi3
	.p2align	2
	.type	__muldi3,@function
__muldi3:                               ! @__muldi3
! %bb.0:
	save %sp, -160, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	stx %g0, [%fp+2023]
	ldx [%fp+2039], %i0
	ba .LBB102_1
	stx %i0, [%fp+2015]
.LBB102_1:                              ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2015], %i0
	brz %i0, .LBB102_5
	nop
	ba .LBB102_2
	nop
.LBB102_2:                              !   in Loop: Header=BB102_1 Depth=1
	add %fp, 2015, %i0
	or %i0, 7, %i0
	ldub [%i0], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB102_4
	nop
	ba .LBB102_3
	nop
.LBB102_3:                              !   in Loop: Header=BB102_1 Depth=1
	ldx [%fp+2031], %i1
	ldx [%fp+2023], %i0
	add %i0, %i1, %i0
	ba .LBB102_4
	stx %i0, [%fp+2023]
.LBB102_4:                              !   in Loop: Header=BB102_1 Depth=1
	ldx [%fp+2031], %i0
	sllx %i0, 1, %i0
	stx %i0, [%fp+2031]
	ldx [%fp+2015], %i0
	srlx %i0, 1, %i0
	ba .LBB102_1
	stx %i0, [%fp+2015]
.LBB102_5:
	ldx [%fp+2023], %i0
	ret
	restore
.Lfunc_end102:
	.size	__muldi3, .Lfunc_end102-__muldi3
                                        ! -- End function
	.globl	udivmodsi4                      ! -- Begin function udivmodsi4
	.p2align	2
	.type	udivmodsi4,@function
udivmodsi4:                             ! @udivmodsi4
! %bb.0:
	save %sp, -176, %sp
                                        ! kill: def $i3 killed $i1
                                        ! kill: def $i3 killed $i0
	st %i0, [%fp+2039]
	st %i1, [%fp+2035]
	stx %i2, [%fp+2023]
	mov	1, %i0
	st %i0, [%fp+2019]
	ba .LBB103_1
	st %g0, [%fp+2015]
.LBB103_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2035], %i1
	ld [%fp+2039], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bcc %icc, .LBB103_4
	st %i0, [%fp+2011]
	ba .LBB103_2
	nop
.LBB103_2:                              !   in Loop: Header=BB103_1 Depth=1
	ld [%fp+2019], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be %icc, .LBB103_4
	st %i0, [%fp+2011]
	ba .LBB103_3
	nop
.LBB103_3:                              !   in Loop: Header=BB103_1 Depth=1
	ld [%fp+2035], %i0
	sethi 2097152, %i1
	and %i0, %i1, %i1
	mov	%g0, %i0
	movrz %i1, 1, %i0
	ba .LBB103_4
	st %i0, [%fp+2011]
.LBB103_4:                              !   in Loop: Header=BB103_1 Depth=1
	ld [%fp+2011], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB103_6
	nop
	ba .LBB103_5
	nop
.LBB103_5:                              !   in Loop: Header=BB103_1 Depth=1
	ld [%fp+2035], %i0
	sll %i0, 1, %i0
	st %i0, [%fp+2035]
	ld [%fp+2019], %i0
	sll %i0, 1, %i0
	ba .LBB103_1
	st %i0, [%fp+2019]
.LBB103_6:
	ba .LBB103_7
	nop
.LBB103_7:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2019], %i0
	cmp	%i0, 0
	be %icc, .LBB103_11
	nop
	ba .LBB103_8
	nop
.LBB103_8:                              !   in Loop: Header=BB103_7 Depth=1
	ld [%fp+2039], %i0
	ld [%fp+2035], %i1
	cmp	%i0, %i1
	bcs %icc, .LBB103_10
	nop
	ba .LBB103_9
	nop
.LBB103_9:                              !   in Loop: Header=BB103_7 Depth=1
	ld [%fp+2035], %i1
	ld [%fp+2039], %i0
	sub %i0, %i1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2019], %i1
	ld [%fp+2015], %i0
	or %i0, %i1, %i0
	ba .LBB103_10
	st %i0, [%fp+2015]
.LBB103_10:                             !   in Loop: Header=BB103_7 Depth=1
	ld [%fp+2019], %i0
	srl %i0, 1, %i0
	st %i0, [%fp+2019]
	ld [%fp+2035], %i0
	srl %i0, 1, %i0
	ba .LBB103_7
	st %i0, [%fp+2035]
.LBB103_11:
	ldx [%fp+2023], %i0
	brz %i0, .LBB103_13
	nop
	ba .LBB103_12
	nop
.LBB103_12:
	ld [%fp+2039], %i0
	ba .LBB103_14
	st %i0, [%fp+2043]
.LBB103_13:
	ld [%fp+2015], %i0
	ba .LBB103_14
	st %i0, [%fp+2043]
.LBB103_14:
	ld [%fp+2043], %i0
	ret
	restore
.Lfunc_end103:
	.size	udivmodsi4, .Lfunc_end103-udivmodsi4
                                        ! -- End function
	.globl	__clrsbqi2                      ! -- Begin function __clrsbqi2
	.p2align	2
	.type	__clrsbqi2,@function
__clrsbqi2:                             ! @__clrsbqi2
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	stb %i0, [%fp+2042]
	ldsb [%fp+2042], %i0
	cmp	%i0, -1
	bg %icc, .LBB104_2
	nop
	ba .LBB104_1
	nop
.LBB104_1:
	ldub [%fp+2042], %i0
	xor %i0, -1, %i0
	ba .LBB104_2
	stb %i0, [%fp+2042]
.LBB104_2:
	ldsb [%fp+2042], %i0
	cmp	%i0, 0
	bne %icc, .LBB104_4
	nop
	ba .LBB104_3
	nop
.LBB104_3:
	mov	7, %i0
	ba .LBB104_5
	st %i0, [%fp+2043]
.LBB104_4:
	ldsb [%fp+2042], %i0
	sll %i0, 8, %i0
	srl %i0, 1, %i1
	or %i0, %i1, %i0
	srl %i0, 2, %i1
	or %i0, %i1, %i0
	srl %i0, 4, %i1
	or %i0, %i1, %i0
	srl %i0, 8, %i1
	or %i0, %i1, %i0
	srl %i0, 16, %i1
	or %i0, %i1, %i0
	xor %i0, -1, %i0
	srl %i0, 1, %i1
	sethi 1398101, %i2
	or %i2, 341, %i2
	and %i1, %i2, %i1
	sub %i0, %i1, %i1
	sethi 838860, %i0
	or %i0, 819, %i2
	and %i1, %i2, %i0
	srl %i1, 2, %i1
	and %i1, %i2, %i1
	add %i0, %i1, %i0
	srl %i0, 4, %i1
	add %i0, %i1, %i0
	sethi 246723, %i1
	or %i1, 783, %i1
	and %i0, %i1, %i0
	sll %i0, 8, %i1
	add %i0, %i1, %i0
	sll %i0, 16, %i1
	add %i0, %i1, %i0
	srl %i0, 24, %i0
	st %i0, [%fp+2035]
	ld [%fp+2035], %i0
	add %i0, -1, %i0
	ba .LBB104_5
	st %i0, [%fp+2043]
.LBB104_5:
	ldsw [%fp+2043], %i0
	ret
	restore
.Lfunc_end104:
	.size	__clrsbqi2, .Lfunc_end104-__clrsbqi2
                                        ! -- End function
	.globl	__clrsbdi2                      ! -- Begin function __clrsbdi2
	.p2align	2
	.type	__clrsbdi2,@function
__clrsbdi2:                             ! @__clrsbdi2
! %bb.0:
	save %sp, -160, %sp
	stx %i0, [%fp+2031]
	ldx [%fp+2031], %i0
	cmp	%i0, -1
	bg %xcc, .LBB105_2
	nop
	ba .LBB105_1
	nop
.LBB105_1:
	ldx [%fp+2031], %i0
	xor %i0, -1, %i0
	ba .LBB105_2
	stx %i0, [%fp+2031]
.LBB105_2:
	ldx [%fp+2031], %i0
	brnz %i0, .LBB105_4
	nop
	ba .LBB105_3
	nop
.LBB105_3:
	mov	63, %i0
	ba .LBB105_5
	st %i0, [%fp+2043]
.LBB105_4:
	ldx [%fp+2031], %i0
	srlx %i0, 1, %i1
	or %i0, %i1, %i0
	srlx %i0, 2, %i1
	or %i0, %i1, %i0
	srlx %i0, 4, %i1
	or %i0, %i1, %i0
	srlx %i0, 8, %i1
	or %i0, %i1, %i0
	srlx %i0, 16, %i1
	or %i0, %i1, %i0
	srlx %i0, 32, %i1
	or %i0, %i1, %i0
	xor %i0, -1, %i0
	srlx %i0, 1, %i1
	sethi 1398101, %i2
	or %i2, 341, %i3
	or %i2, 341, %i2
	sllx %i2, 32, %i2
	or %i2, %i3, %i2
	and %i1, %i2, %i1
	sub %i0, %i1, %i1
	sethi 838860, %i0
	or %i0, 819, %i2
	or %i0, 819, %i0
	sllx %i0, 32, %i0
	or %i0, %i2, %i2
	and %i1, %i2, %i0
	srlx %i1, 2, %i1
	and %i1, %i2, %i1
	add %i0, %i1, %i0
	srlx %i0, 4, %i1
	add %i0, %i1, %i0
	sethi 246723, %i1
	or %i1, 783, %i2
	or %i1, 783, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	and %i0, %i1, %i0
	sethi 16448, %i1
	or %i1, 257, %i2
	or %i1, 257, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	mulx %i0, %i1, %i0
	srlx %i0, 56, %i0
	st %i0, [%fp+2027]
	ld [%fp+2027], %i0
	add %i0, -1, %i0
	ba .LBB105_5
	st %i0, [%fp+2043]
.LBB105_5:
	ldsw [%fp+2043], %i0
	ret
	restore
.Lfunc_end105:
	.size	__clrsbdi2, .Lfunc_end105-__clrsbdi2
                                        ! -- End function
	.globl	__mulsi3                        ! -- Begin function __mulsi3
	.p2align	2
	.type	__mulsi3,@function
__mulsi3:                               ! @__mulsi3
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+2043]
	st %i1, [%fp+2039]
	ba .LBB106_1
	st %g0, [%fp+2035]
.LBB106_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2043], %i0
	cmp	%i0, 0
	be %icc, .LBB106_5
	nop
	ba .LBB106_2
	nop
.LBB106_2:                              !   in Loop: Header=BB106_1 Depth=1
	add %fp, 2043, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB106_4
	nop
	ba .LBB106_3
	nop
.LBB106_3:                              !   in Loop: Header=BB106_1 Depth=1
	ld [%fp+2039], %i1
	ld [%fp+2035], %i0
	add %i0, %i1, %i0
	ba .LBB106_4
	st %i0, [%fp+2035]
.LBB106_4:                              !   in Loop: Header=BB106_1 Depth=1
	ld [%fp+2043], %i0
	srl %i0, 1, %i0
	st %i0, [%fp+2043]
	ld [%fp+2039], %i0
	sll %i0, 1, %i0
	ba .LBB106_1
	st %i0, [%fp+2039]
.LBB106_5:
	ld [%fp+2035], %i0
	ret
	restore
.Lfunc_end106:
	.size	__mulsi3, .Lfunc_end106-__mulsi3
                                        ! -- End function
	.globl	__cmovd                         ! -- Begin function __cmovd
	.p2align	2
	.type	__cmovd,@function
__cmovd:                                ! @__cmovd
! %bb.0:
	save %sp, -176, %sp
                                        ! kill: def $i3 killed $i2
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	st %i2, [%fp+2027]
	ld [%fp+2027], %i0
	srl %i0, 3, %i0
	st %i0, [%fp+2019]
	ld [%fp+2027], %i0
	and %i0, -8, %i0
	st %i0, [%fp+2015]
	ldx [%fp+2039], %i0
	stx %i0, [%fp+2007]
	ldx [%fp+2031], %i0
	stx %i0, [%fp+1999]
	ldx [%fp+2007], %i0
	ldx [%fp+1999], %i1
	cmp	%i0, %i1
	bcs %xcc, .LBB107_2
	nop
	ba .LBB107_1
	nop
.LBB107_1:
	ldx [%fp+2007], %i0
	ldx [%fp+1999], %i1
	ld [%fp+2027], %i2
	add %i1, %i2, %i1
	cmp	%i0, %i1
	bleu %xcc, .LBB107_10
	nop
	ba .LBB107_2
	nop
.LBB107_2:
	ba .LBB107_3
	st %g0, [%fp+2023]
.LBB107_3:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2023], %i0
	ld [%fp+2019], %i1
	cmp	%i0, %i1
	bcc %icc, .LBB107_6
	nop
	ba .LBB107_4
	nop
.LBB107_4:                              !   in Loop: Header=BB107_3 Depth=1
	ldx [%fp+2031], %i0
	ld [%fp+2023], %i1
	sllx %i1, 3, %i1
	ldx [%i0+%i1], %i2
	ldx [%fp+2039], %i0
	ba .LBB107_5
	stx %i2, [%i0+%i1]
.LBB107_5:                              !   in Loop: Header=BB107_3 Depth=1
	ld [%fp+2023], %i0
	add %i0, 1, %i0
	ba .LBB107_3
	st %i0, [%fp+2023]
.LBB107_6:
	ba .LBB107_7
	nop
.LBB107_7:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2027], %i0
	ld [%fp+2015], %i1
	cmp	%i0, %i1
	bleu %icc, .LBB107_9
	nop
	ba .LBB107_8
	nop
.LBB107_8:                              !   in Loop: Header=BB107_7 Depth=1
	ldx [%fp+1999], %i0
	ld [%fp+2015], %i1
	ldub [%i0+%i1], %i2
	ldx [%fp+2007], %i0
	stb %i2, [%i0+%i1]
	ld [%fp+2015], %i0
	add %i0, 1, %i0
	ba .LBB107_7
	st %i0, [%fp+2015]
.LBB107_9:
	ba .LBB107_14
	nop
.LBB107_10:
	ba .LBB107_11
	nop
.LBB107_11:                             ! =>This Inner Loop Header: Depth=1
	ld [%fp+2027], %i0
	add %i0, -1, %i1
	cmp	%i0, 0
	be %icc, .LBB107_13
	st %i1, [%fp+2027]
	ba .LBB107_12
	nop
.LBB107_12:                             !   in Loop: Header=BB107_11 Depth=1
	ldx [%fp+1999], %i0
	ld [%fp+2027], %i1
	ldub [%i0+%i1], %i2
	ldx [%fp+2007], %i0
	ba .LBB107_11
	stb %i2, [%i0+%i1]
.LBB107_13:
	ba .LBB107_14
	nop
.LBB107_14:
	ret
	restore
.Lfunc_end107:
	.size	__cmovd, .Lfunc_end107-__cmovd
                                        ! -- End function
	.globl	__cmovh                         ! -- Begin function __cmovh
	.p2align	2
	.type	__cmovh,@function
__cmovh:                                ! @__cmovh
! %bb.0:
	save %sp, -176, %sp
                                        ! kill: def $i3 killed $i2
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	st %i2, [%fp+2027]
	ld [%fp+2027], %i0
	srl %i0, 1, %i0
	st %i0, [%fp+2019]
	ldx [%fp+2039], %i0
	stx %i0, [%fp+2007]
	ldx [%fp+2031], %i0
	stx %i0, [%fp+1999]
	ldx [%fp+2007], %i0
	ldx [%fp+1999], %i1
	cmp	%i0, %i1
	bcs %xcc, .LBB108_2
	nop
	ba .LBB108_1
	nop
.LBB108_1:
	ldx [%fp+2007], %i0
	ldx [%fp+1999], %i1
	ld [%fp+2027], %i2
	add %i1, %i2, %i1
	cmp	%i0, %i1
	bleu %xcc, .LBB108_9
	nop
	ba .LBB108_2
	nop
.LBB108_2:
	ba .LBB108_3
	st %g0, [%fp+2023]
.LBB108_3:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2023], %i0
	ld [%fp+2019], %i1
	cmp	%i0, %i1
	bcc %icc, .LBB108_6
	nop
	ba .LBB108_4
	nop
.LBB108_4:                              !   in Loop: Header=BB108_3 Depth=1
	ldx [%fp+2031], %i0
	ld [%fp+2023], %i1
	sllx %i1, 1, %i1
	lduh [%i0+%i1], %i2
	ldx [%fp+2039], %i0
	ba .LBB108_5
	sth %i2, [%i0+%i1]
.LBB108_5:                              !   in Loop: Header=BB108_3 Depth=1
	ld [%fp+2023], %i0
	add %i0, 1, %i0
	ba .LBB108_3
	st %i0, [%fp+2023]
.LBB108_6:
	add %fp, 2027, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB108_8
	nop
	ba .LBB108_7
	nop
.LBB108_7:
	ldx [%fp+1999], %i0
	ld [%fp+2027], %i1
	add %i1, -1, %i1
	srl %i1, 0, %i1
	ldub [%i0+%i1], %i2
	ldx [%fp+2007], %i0
	ba .LBB108_8
	stb %i2, [%i0+%i1]
.LBB108_8:
	ba .LBB108_13
	nop
.LBB108_9:
	ba .LBB108_10
	nop
.LBB108_10:                             ! =>This Inner Loop Header: Depth=1
	ld [%fp+2027], %i0
	add %i0, -1, %i1
	cmp	%i0, 0
	be %icc, .LBB108_12
	st %i1, [%fp+2027]
	ba .LBB108_11
	nop
.LBB108_11:                             !   in Loop: Header=BB108_10 Depth=1
	ldx [%fp+1999], %i0
	ld [%fp+2027], %i1
	ldub [%i0+%i1], %i2
	ldx [%fp+2007], %i0
	ba .LBB108_10
	stb %i2, [%i0+%i1]
.LBB108_12:
	ba .LBB108_13
	nop
.LBB108_13:
	ret
	restore
.Lfunc_end108:
	.size	__cmovh, .Lfunc_end108-__cmovh
                                        ! -- End function
	.globl	__cmovw                         ! -- Begin function __cmovw
	.p2align	2
	.type	__cmovw,@function
__cmovw:                                ! @__cmovw
! %bb.0:
	save %sp, -176, %sp
                                        ! kill: def $i3 killed $i2
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	st %i2, [%fp+2027]
	ld [%fp+2027], %i0
	srl %i0, 2, %i0
	st %i0, [%fp+2019]
	ld [%fp+2027], %i0
	and %i0, -4, %i0
	st %i0, [%fp+2015]
	ldx [%fp+2039], %i0
	stx %i0, [%fp+2007]
	ldx [%fp+2031], %i0
	stx %i0, [%fp+1999]
	ldx [%fp+2007], %i0
	ldx [%fp+1999], %i1
	cmp	%i0, %i1
	bcs %xcc, .LBB109_2
	nop
	ba .LBB109_1
	nop
.LBB109_1:
	ldx [%fp+2007], %i0
	ldx [%fp+1999], %i1
	ld [%fp+2027], %i2
	add %i1, %i2, %i1
	cmp	%i0, %i1
	bleu %xcc, .LBB109_10
	nop
	ba .LBB109_2
	nop
.LBB109_2:
	ba .LBB109_3
	st %g0, [%fp+2023]
.LBB109_3:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2023], %i0
	ld [%fp+2019], %i1
	cmp	%i0, %i1
	bcc %icc, .LBB109_6
	nop
	ba .LBB109_4
	nop
.LBB109_4:                              !   in Loop: Header=BB109_3 Depth=1
	ldx [%fp+2031], %i0
	ld [%fp+2023], %i1
	sllx %i1, 2, %i1
	ld [%i0+%i1], %i2
	ldx [%fp+2039], %i0
	ba .LBB109_5
	st %i2, [%i0+%i1]
.LBB109_5:                              !   in Loop: Header=BB109_3 Depth=1
	ld [%fp+2023], %i0
	add %i0, 1, %i0
	ba .LBB109_3
	st %i0, [%fp+2023]
.LBB109_6:
	ba .LBB109_7
	nop
.LBB109_7:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2027], %i0
	ld [%fp+2015], %i1
	cmp	%i0, %i1
	bleu %icc, .LBB109_9
	nop
	ba .LBB109_8
	nop
.LBB109_8:                              !   in Loop: Header=BB109_7 Depth=1
	ldx [%fp+1999], %i0
	ld [%fp+2015], %i1
	ldub [%i0+%i1], %i2
	ldx [%fp+2007], %i0
	stb %i2, [%i0+%i1]
	ld [%fp+2015], %i0
	add %i0, 1, %i0
	ba .LBB109_7
	st %i0, [%fp+2015]
.LBB109_9:
	ba .LBB109_14
	nop
.LBB109_10:
	ba .LBB109_11
	nop
.LBB109_11:                             ! =>This Inner Loop Header: Depth=1
	ld [%fp+2027], %i0
	add %i0, -1, %i1
	cmp	%i0, 0
	be %icc, .LBB109_13
	st %i1, [%fp+2027]
	ba .LBB109_12
	nop
.LBB109_12:                             !   in Loop: Header=BB109_11 Depth=1
	ldx [%fp+1999], %i0
	ld [%fp+2027], %i1
	ldub [%i0+%i1], %i2
	ldx [%fp+2007], %i0
	ba .LBB109_11
	stb %i2, [%i0+%i1]
.LBB109_13:
	ba .LBB109_14
	nop
.LBB109_14:
	ret
	restore
.Lfunc_end109:
	.size	__cmovw, .Lfunc_end109-__cmovw
                                        ! -- End function
	.globl	__modi                          ! -- Begin function __modi
	.p2align	2
	.type	__modi,@function
__modi:                                 ! @__modi
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+2043]
	st %i1, [%fp+2039]
	ld [%fp+2043], %i0
	ld [%fp+2039], %i2
	sra %i0, 31, %i1
	wr %g0, %i1, %y
	sdiv %i0, %i2, %i1
	mulx %i1, %i2, %i1
	sub %i0, %i1, %i0
	sra %i0, 0, %i0
	ret
	restore
.Lfunc_end110:
	.size	__modi, .Lfunc_end110-__modi
                                        ! -- End function
	.globl	__uitod                         ! -- Begin function __uitod
	.p2align	2
	.type	__uitod,@function
__uitod:                                ! @__uitod
! %bb.0:
	save %sp, -192, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	call __floatunsidf
	ld [%fp+2043], %o0
	ret
	restore %g0, %o0, %o0
.Lfunc_end111:
	.size	__uitod, .Lfunc_end111-__uitod
                                        ! -- End function
	.globl	__uitof                         ! -- Begin function __uitof
	.p2align	2
	.type	__uitof,@function
__uitof:                                ! @__uitof
! %bb.0:
	save %sp, -192, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	call __floatunsisf
	ld [%fp+2043], %o0
	ret
	restore %g0, %o0, %o0
.Lfunc_end112:
	.size	__uitof, .Lfunc_end112-__uitof
                                        ! -- End function
	.globl	__ulltod                        ! -- Begin function __ulltod
	.p2align	2
	.type	__ulltod,@function
__ulltod:                               ! @__ulltod
! %bb.0:
	save %sp, -192, %sp
	stx %i0, [%fp+2039]
	call __floatundidf
	ldx [%fp+2039], %o0
	ret
	restore %g0, %o0, %o0
.Lfunc_end113:
	.size	__ulltod, .Lfunc_end113-__ulltod
                                        ! -- End function
	.globl	__ulltof                        ! -- Begin function __ulltof
	.p2align	2
	.type	__ulltof,@function
__ulltof:                               ! @__ulltof
! %bb.0:
	save %sp, -192, %sp
	stx %i0, [%fp+2039]
	call __floatundisf
	ldx [%fp+2039], %o0
	ret
	restore %g0, %o0, %o0
.Lfunc_end114:
	.size	__ulltof, .Lfunc_end114-__ulltof
                                        ! -- End function
	.globl	__umodi                         ! -- Begin function __umodi
	.p2align	2
	.type	__umodi,@function
__umodi:                                ! @__umodi
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+2043]
	st %i1, [%fp+2039]
	ld [%fp+2043], %i0
	ld [%fp+2039], %i2
	wr %g0, %g0, %y
	udiv %i0, %i2, %i1
	mulx %i1, %i2, %i1
	sub %i0, %i1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end115:
	.size	__umodi, .Lfunc_end115-__umodi
                                        ! -- End function
	.globl	__clzhi2                        ! -- Begin function __clzhi2
	.p2align	2
	.type	__clzhi2,@function
__clzhi2:                               ! @__clzhi2
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	sth %i0, [%fp+2045]
	ba .LBB116_1
	st %g0, [%fp+2039]
.LBB116_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2039], %i0
	cmp	%i0, 15
	bg %icc, .LBB116_6
	nop
	ba .LBB116_2
	nop
.LBB116_2:                              !   in Loop: Header=BB116_1 Depth=1
	lduh [%fp+2045], %i0
	ld [%fp+2039], %i2
	mov	15, %i1
	sub %i1, %i2, %i1
	srl %i0, %i1, %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB116_4
	nop
	ba .LBB116_3
	nop
.LBB116_3:
	ba .LBB116_6
	nop
.LBB116_4:                              !   in Loop: Header=BB116_1 Depth=1
	ba .LBB116_5
	nop
.LBB116_5:                              !   in Loop: Header=BB116_1 Depth=1
	ld [%fp+2039], %i0
	add %i0, 1, %i0
	ba .LBB116_1
	st %i0, [%fp+2039]
.LBB116_6:
	ldsw [%fp+2039], %i0
	ret
	restore
.Lfunc_end116:
	.size	__clzhi2, .Lfunc_end116-__clzhi2
                                        ! -- End function
	.globl	__ctzhi2                        ! -- Begin function __ctzhi2
	.p2align	2
	.type	__ctzhi2,@function
__ctzhi2:                               ! @__ctzhi2
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	sth %i0, [%fp+2045]
	ba .LBB117_1
	st %g0, [%fp+2039]
.LBB117_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2039], %i0
	cmp	%i0, 15
	bg %icc, .LBB117_6
	nop
	ba .LBB117_2
	nop
.LBB117_2:                              !   in Loop: Header=BB117_1 Depth=1
	lduh [%fp+2045], %i0
	ld [%fp+2039], %i1
	srl %i0, %i1, %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB117_4
	nop
	ba .LBB117_3
	nop
.LBB117_3:
	ba .LBB117_6
	nop
.LBB117_4:                              !   in Loop: Header=BB117_1 Depth=1
	ba .LBB117_5
	nop
.LBB117_5:                              !   in Loop: Header=BB117_1 Depth=1
	ld [%fp+2039], %i0
	add %i0, 1, %i0
	ba .LBB117_1
	st %i0, [%fp+2039]
.LBB117_6:
	ldsw [%fp+2039], %i0
	ret
	restore
.Lfunc_end117:
	.size	__ctzhi2, .Lfunc_end117-__ctzhi2
                                        ! -- End function
	.globl	__fixunssfsi                    ! -- Begin function __fixunssfsi
	.p2align	2
	.type	__fixunssfsi,@function
__fixunssfsi:                           ! @__fixunssfsi
! %bb.0:
	save %sp, -192, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2035]
	ld [%fp+2035], %o0
	call __gesf2
	sethi 1163264, %o1
	cmp	%o0, 0
	bl %icc, .LBB118_2
	nop
	ba .LBB118_1
	nop
.LBB118_1:
	ld [%fp+2035], %o0
	call __addsf3
	sethi 3260416, %o1
	call __fixsfdi
	nop
	sethi 32, %i0
	add %o0, %i0, %i0
	ba .LBB118_3
	stx %i0, [%fp+2039]
.LBB118_2:
	call __fixsfdi
	ld [%fp+2035], %o0
	ba .LBB118_3
	stx %o0, [%fp+2039]
.LBB118_3:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end118:
	.size	__fixunssfsi, .Lfunc_end118-__fixunssfsi
                                        ! -- End function
	.globl	__parityhi2                     ! -- Begin function __parityhi2
	.p2align	2
	.type	__parityhi2,@function
__parityhi2:                            ! @__parityhi2
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	sth %i0, [%fp+2045]
	st %g0, [%fp+2035]
	ba .LBB119_1
	st %g0, [%fp+2039]
.LBB119_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2039], %i0
	cmp	%i0, 15
	bg %icc, .LBB119_6
	nop
	ba .LBB119_2
	nop
.LBB119_2:                              !   in Loop: Header=BB119_1 Depth=1
	lduh [%fp+2045], %i0
	ld [%fp+2039], %i1
	srl %i0, %i1, %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB119_4
	nop
	ba .LBB119_3
	nop
.LBB119_3:                              !   in Loop: Header=BB119_1 Depth=1
	ld [%fp+2035], %i0
	add %i0, 1, %i0
	ba .LBB119_4
	st %i0, [%fp+2035]
.LBB119_4:                              !   in Loop: Header=BB119_1 Depth=1
	ba .LBB119_5
	nop
.LBB119_5:                              !   in Loop: Header=BB119_1 Depth=1
	ld [%fp+2039], %i0
	add %i0, 1, %i0
	ba .LBB119_1
	st %i0, [%fp+2039]
.LBB119_6:
	ld [%fp+2035], %i0
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end119:
	.size	__parityhi2, .Lfunc_end119-__parityhi2
                                        ! -- End function
	.globl	__popcounthi2                   ! -- Begin function __popcounthi2
	.p2align	2
	.type	__popcounthi2,@function
__popcounthi2:                          ! @__popcounthi2
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	sth %i0, [%fp+2045]
	st %g0, [%fp+2035]
	ba .LBB120_1
	st %g0, [%fp+2039]
.LBB120_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2039], %i0
	cmp	%i0, 15
	bg %icc, .LBB120_6
	nop
	ba .LBB120_2
	nop
.LBB120_2:                              !   in Loop: Header=BB120_1 Depth=1
	lduh [%fp+2045], %i0
	ld [%fp+2039], %i1
	srl %i0, %i1, %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB120_4
	nop
	ba .LBB120_3
	nop
.LBB120_3:                              !   in Loop: Header=BB120_1 Depth=1
	ld [%fp+2035], %i0
	add %i0, 1, %i0
	ba .LBB120_4
	st %i0, [%fp+2035]
.LBB120_4:                              !   in Loop: Header=BB120_1 Depth=1
	ba .LBB120_5
	nop
.LBB120_5:                              !   in Loop: Header=BB120_1 Depth=1
	ld [%fp+2039], %i0
	add %i0, 1, %i0
	ba .LBB120_1
	st %i0, [%fp+2039]
.LBB120_6:
	ldsw [%fp+2035], %i0
	ret
	restore
.Lfunc_end120:
	.size	__popcounthi2, .Lfunc_end120-__popcounthi2
                                        ! -- End function
	.globl	__mulsi3_iq2000                 ! -- Begin function __mulsi3_iq2000
	.p2align	2
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        ! @__mulsi3_iq2000
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+2043]
	st %i1, [%fp+2039]
	ba .LBB121_1
	st %g0, [%fp+2035]
.LBB121_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2043], %i0
	cmp	%i0, 0
	be %icc, .LBB121_5
	nop
	ba .LBB121_2
	nop
.LBB121_2:                              !   in Loop: Header=BB121_1 Depth=1
	add %fp, 2043, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB121_4
	nop
	ba .LBB121_3
	nop
.LBB121_3:                              !   in Loop: Header=BB121_1 Depth=1
	ld [%fp+2039], %i1
	ld [%fp+2035], %i0
	add %i0, %i1, %i0
	ba .LBB121_4
	st %i0, [%fp+2035]
.LBB121_4:                              !   in Loop: Header=BB121_1 Depth=1
	ld [%fp+2043], %i0
	srl %i0, 1, %i0
	st %i0, [%fp+2043]
	ld [%fp+2039], %i0
	sll %i0, 1, %i0
	ba .LBB121_1
	st %i0, [%fp+2039]
.LBB121_5:
	ld [%fp+2035], %i0
	ret
	restore
.Lfunc_end121:
	.size	__mulsi3_iq2000, .Lfunc_end121-__mulsi3_iq2000
                                        ! -- End function
	.globl	__mulsi3_lm32                   ! -- Begin function __mulsi3_lm32
	.p2align	2
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          ! @__mulsi3_lm32
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+2039]
	st %i1, [%fp+2035]
	st %g0, [%fp+2031]
	ld [%fp+2039], %i0
	cmp	%i0, 0
	bne %icc, .LBB122_2
	nop
	ba .LBB122_1
	nop
.LBB122_1:
	ba .LBB122_8
	st %g0, [%fp+2043]
.LBB122_2:
	ba .LBB122_3
	nop
.LBB122_3:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2035], %i0
	cmp	%i0, 0
	be %icc, .LBB122_7
	nop
	ba .LBB122_4
	nop
.LBB122_4:                              !   in Loop: Header=BB122_3 Depth=1
	add %fp, 2035, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB122_6
	nop
	ba .LBB122_5
	nop
.LBB122_5:                              !   in Loop: Header=BB122_3 Depth=1
	ld [%fp+2039], %i1
	ld [%fp+2031], %i0
	add %i0, %i1, %i0
	ba .LBB122_6
	st %i0, [%fp+2031]
.LBB122_6:                              !   in Loop: Header=BB122_3 Depth=1
	ld [%fp+2039], %i0
	sll %i0, 1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2035], %i0
	srl %i0, 1, %i0
	ba .LBB122_3
	st %i0, [%fp+2035]
.LBB122_7:
	ld [%fp+2031], %i0
	ba .LBB122_8
	st %i0, [%fp+2043]
.LBB122_8:
	ld [%fp+2043], %i0
	ret
	restore
.Lfunc_end122:
	.size	__mulsi3_lm32, .Lfunc_end122-__mulsi3_lm32
                                        ! -- End function
	.globl	__udivmodsi4                    ! -- Begin function __udivmodsi4
	.p2align	2
	.type	__udivmodsi4,@function
__udivmodsi4:                           ! @__udivmodsi4
! %bb.0:
	save %sp, -160, %sp
                                        ! kill: def $i3 killed $i2
                                        ! kill: def $i3 killed $i1
                                        ! kill: def $i3 killed $i0
	st %i0, [%fp+2039]
	st %i1, [%fp+2035]
	st %i2, [%fp+2031]
	mov	1, %i0
	st %i0, [%fp+2027]
	ba .LBB123_1
	st %g0, [%fp+2023]
.LBB123_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2035], %i1
	ld [%fp+2039], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bcc %icc, .LBB123_4
	st %i0, [%fp+2019]
	ba .LBB123_2
	nop
.LBB123_2:                              !   in Loop: Header=BB123_1 Depth=1
	ld [%fp+2027], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be %icc, .LBB123_4
	st %i0, [%fp+2019]
	ba .LBB123_3
	nop
.LBB123_3:                              !   in Loop: Header=BB123_1 Depth=1
	ld [%fp+2035], %i0
	sethi 2097152, %i1
	and %i0, %i1, %i1
	mov	%g0, %i0
	movrz %i1, 1, %i0
	ba .LBB123_4
	st %i0, [%fp+2019]
.LBB123_4:                              !   in Loop: Header=BB123_1 Depth=1
	ld [%fp+2019], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB123_6
	nop
	ba .LBB123_5
	nop
.LBB123_5:                              !   in Loop: Header=BB123_1 Depth=1
	ld [%fp+2035], %i0
	sll %i0, 1, %i0
	st %i0, [%fp+2035]
	ld [%fp+2027], %i0
	sll %i0, 1, %i0
	ba .LBB123_1
	st %i0, [%fp+2027]
.LBB123_6:
	ba .LBB123_7
	nop
.LBB123_7:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2027], %i0
	cmp	%i0, 0
	be %icc, .LBB123_11
	nop
	ba .LBB123_8
	nop
.LBB123_8:                              !   in Loop: Header=BB123_7 Depth=1
	ld [%fp+2039], %i0
	ld [%fp+2035], %i1
	cmp	%i0, %i1
	bcs %icc, .LBB123_10
	nop
	ba .LBB123_9
	nop
.LBB123_9:                              !   in Loop: Header=BB123_7 Depth=1
	ld [%fp+2035], %i1
	ld [%fp+2039], %i0
	sub %i0, %i1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2027], %i1
	ld [%fp+2023], %i0
	or %i0, %i1, %i0
	ba .LBB123_10
	st %i0, [%fp+2023]
.LBB123_10:                             !   in Loop: Header=BB123_7 Depth=1
	ld [%fp+2027], %i0
	srl %i0, 1, %i0
	st %i0, [%fp+2027]
	ld [%fp+2035], %i0
	srl %i0, 1, %i0
	ba .LBB123_7
	st %i0, [%fp+2035]
.LBB123_11:
	ld [%fp+2031], %i0
	cmp	%i0, 0
	be %icc, .LBB123_13
	nop
	ba .LBB123_12
	nop
.LBB123_12:
	ld [%fp+2039], %i0
	ba .LBB123_14
	st %i0, [%fp+2043]
.LBB123_13:
	ld [%fp+2023], %i0
	ba .LBB123_14
	st %i0, [%fp+2043]
.LBB123_14:
	ld [%fp+2043], %i0
	ret
	restore
.Lfunc_end123:
	.size	__udivmodsi4, .Lfunc_end123-__udivmodsi4
                                        ! -- End function
	.globl	__mspabi_cmpf                   ! -- Begin function __mspabi_cmpf
	.p2align	2
	.type	__mspabi_cmpf,@function
__mspabi_cmpf:                          ! @__mspabi_cmpf
! %bb.0:
	save %sp, -192, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+2039]
	st %i1, [%fp+2035]
	ld [%fp+2039], %o0
	call __ltsf2
	ld [%fp+2035], %o1
	cmp	%o0, -1
	bg %icc, .LBB124_2
	nop
	ba .LBB124_1
	nop
.LBB124_1:
	mov	-1, %i0
	ba .LBB124_5
	st %i0, [%fp+2043]
.LBB124_2:
	ld [%fp+2039], %o0
	call __gtsf2
	ld [%fp+2035], %o1
	cmp	%o0, 1
	bl %icc, .LBB124_4
	nop
	ba .LBB124_3
	nop
.LBB124_3:
	mov	1, %i0
	ba .LBB124_5
	st %i0, [%fp+2043]
.LBB124_4:
	ba .LBB124_5
	st %g0, [%fp+2043]
.LBB124_5:
	ldsw [%fp+2043], %i0
	ret
	restore
.Lfunc_end124:
	.size	__mspabi_cmpf, .Lfunc_end124-__mspabi_cmpf
                                        ! -- End function
	.globl	__mspabi_cmpd                   ! -- Begin function __mspabi_cmpd
	.p2align	2
	.type	__mspabi_cmpd,@function
__mspabi_cmpd:                          ! @__mspabi_cmpd
! %bb.0:
	save %sp, -208, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	stx %i0, [%fp+2031]
	stx %i1, [%fp+2023]
	ldx [%fp+2031], %o0
	call __ltdf2
	ldx [%fp+2023], %o1
	cmp	%o0, -1
	bg %icc, .LBB125_2
	nop
	ba .LBB125_1
	nop
.LBB125_1:
	mov	-1, %i0
	ba .LBB125_5
	st %i0, [%fp+2043]
.LBB125_2:
	ldx [%fp+2031], %o0
	call __gtdf2
	ldx [%fp+2023], %o1
	cmp	%o0, 1
	bl %icc, .LBB125_4
	nop
	ba .LBB125_3
	nop
.LBB125_3:
	mov	1, %i0
	ba .LBB125_5
	st %i0, [%fp+2043]
.LBB125_4:
	ba .LBB125_5
	st %g0, [%fp+2043]
.LBB125_5:
	ldsw [%fp+2043], %i0
	ret
	restore
.Lfunc_end125:
	.size	__mspabi_cmpd, .Lfunc_end125-__mspabi_cmpd
                                        ! -- End function
	.globl	__mspabi_mpysll                 ! -- Begin function __mspabi_mpysll
	.p2align	2
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        ! @__mspabi_mpysll
! %bb.0:
	save %sp, -144, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	ldx [%fp+2039], %i0
	ldx [%fp+2031], %i1
	mulx %i0, %i1, %i0
	ret
	restore
.Lfunc_end126:
	.size	__mspabi_mpysll, .Lfunc_end126-__mspabi_mpysll
                                        ! -- End function
	.globl	__mspabi_mpyull                 ! -- Begin function __mspabi_mpyull
	.p2align	2
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        ! @__mspabi_mpyull
! %bb.0:
	save %sp, -144, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	ldx [%fp+2039], %i0
	ldx [%fp+2031], %i1
	mulx %i0, %i1, %i0
	ret
	restore
.Lfunc_end127:
	.size	__mspabi_mpyull, .Lfunc_end127-__mspabi_mpyull
                                        ! -- End function
	.globl	__mulhi3                        ! -- Begin function __mulhi3
	.p2align	2
	.type	__mulhi3,@function
__mulhi3:                               ! @__mulhi3
! %bb.0:
	save %sp, -160, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+2043]
	st %i1, [%fp+2039]
	st %g0, [%fp+2031]
	st %g0, [%fp+2027]
	ld [%fp+2039], %i0
	cmp	%i0, -1
	bg %icc, .LBB128_2
	nop
	ba .LBB128_1
	nop
.LBB128_1:
	ld [%fp+2039], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	st %i0, [%fp+2039]
	mov	1, %i0
	ba .LBB128_2
	st %i0, [%fp+2031]
.LBB128_2:
	mov	%g0, %i0
	ba .LBB128_3
	stb %i0, [%fp+2038]
.LBB128_3:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2039], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be %icc, .LBB128_5
	st %i0, [%fp+2023]
	ba .LBB128_4
	nop
.LBB128_4:                              !   in Loop: Header=BB128_3 Depth=1
	ldsb [%fp+2038], %i1
	mov	%g0, %i0
	cmp	%i1, 32
	movcs	%xcc, 1, %i0
	ba .LBB128_5
	st %i0, [%fp+2023]
.LBB128_5:                              !   in Loop: Header=BB128_3 Depth=1
	ld [%fp+2023], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB128_10
	nop
	ba .LBB128_6
	nop
.LBB128_6:                              !   in Loop: Header=BB128_3 Depth=1
	add %fp, 2039, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB128_8
	nop
	ba .LBB128_7
	nop
.LBB128_7:                              !   in Loop: Header=BB128_3 Depth=1
	ld [%fp+2043], %i1
	ld [%fp+2027], %i0
	add %i0, %i1, %i0
	ba .LBB128_8
	st %i0, [%fp+2027]
.LBB128_8:                              !   in Loop: Header=BB128_3 Depth=1
	ld [%fp+2043], %i0
	sll %i0, 1, %i0
	st %i0, [%fp+2043]
	ld [%fp+2039], %i0
	sra %i0, 1, %i0
	ba .LBB128_9
	st %i0, [%fp+2039]
.LBB128_9:                              !   in Loop: Header=BB128_3 Depth=1
	ldub [%fp+2038], %i0
	add %i0, 1, %i0
	ba .LBB128_3
	stb %i0, [%fp+2038]
.LBB128_10:
	ld [%fp+2031], %i0
	cmp	%i0, 0
	be %icc, .LBB128_12
	nop
	ba .LBB128_11
	nop
.LBB128_11:
	ld [%fp+2027], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB128_13
	st %i0, [%fp+2019]
.LBB128_12:
	ld [%fp+2027], %i0
	ba .LBB128_13
	st %i0, [%fp+2019]
.LBB128_13:
	ld [%fp+2019], %i0                      ! 4-byte Folded Reload
	sra %i0, 0, %i0
	ret
	restore
.Lfunc_end128:
	.size	__mulhi3, .Lfunc_end128-__mulhi3
                                        ! -- End function
	.globl	__divsi3                        ! -- Begin function __divsi3
	.p2align	2
	.type	__divsi3,@function
__divsi3:                               ! @__divsi3
! %bb.0:
	save %sp, -208, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	st %g0, [%fp+2027]
	ldx [%fp+2039], %i0
	cmp	%i0, -1
	bg %xcc, .LBB129_2
	nop
	ba .LBB129_1
	nop
.LBB129_1:
	ldx [%fp+2039], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	stx %i0, [%fp+2039]
	ld [%fp+2027], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	move	%icc, 1, %i0
	ba .LBB129_2
	st %i0, [%fp+2027]
.LBB129_2:
	ldx [%fp+2031], %i0
	cmp	%i0, -1
	bg %xcc, .LBB129_4
	nop
	ba .LBB129_3
	nop
.LBB129_3:
	ldx [%fp+2031], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	stx %i0, [%fp+2031]
	ld [%fp+2027], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	move	%icc, 1, %i0
	ba .LBB129_4
	st %i0, [%fp+2027]
.LBB129_4:
	add %fp, 2039, %i0
	or %i0, 4, %i0
	ld [%i0], %o0
	add %fp, 2031, %i0
	or %i0, 4, %i0
	ld [%i0], %o1
	call __udivmodsi4
	mov	%g0, %o2
	stx %o0, [%fp+2015]
	ld [%fp+2027], %i0
	cmp	%i0, 0
	be %icc, .LBB129_6
	nop
	ba .LBB129_5
	nop
.LBB129_5:
	ldx [%fp+2015], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB129_6
	stx %i0, [%fp+2015]
.LBB129_6:
	ldx [%fp+2015], %i0
	ret
	restore
.Lfunc_end129:
	.size	__divsi3, .Lfunc_end129-__divsi3
                                        ! -- End function
	.globl	__modsi3                        ! -- Begin function __modsi3
	.p2align	2
	.type	__modsi3,@function
__modsi3:                               ! @__modsi3
! %bb.0:
	save %sp, -208, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	st %g0, [%fp+2027]
	ldx [%fp+2039], %i0
	cmp	%i0, -1
	bg %xcc, .LBB130_2
	nop
	ba .LBB130_1
	nop
.LBB130_1:
	ldx [%fp+2039], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	stx %i0, [%fp+2039]
	mov	1, %i0
	ba .LBB130_2
	st %i0, [%fp+2027]
.LBB130_2:
	ldx [%fp+2031], %i0
	cmp	%i0, -1
	bg %xcc, .LBB130_4
	nop
	ba .LBB130_3
	nop
.LBB130_3:
	ldx [%fp+2031], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB130_4
	stx %i0, [%fp+2031]
.LBB130_4:
	add %fp, 2039, %i0
	or %i0, 4, %i0
	ld [%i0], %o0
	add %fp, 2031, %i0
	or %i0, 4, %i0
	ld [%i0], %o1
	call __udivmodsi4
	mov	1, %o2
	stx %o0, [%fp+2015]
	ld [%fp+2027], %i0
	cmp	%i0, 0
	be %icc, .LBB130_6
	nop
	ba .LBB130_5
	nop
.LBB130_5:
	ldx [%fp+2015], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB130_6
	stx %i0, [%fp+2015]
.LBB130_6:
	ldx [%fp+2015], %i0
	ret
	restore
.Lfunc_end130:
	.size	__modsi3, .Lfunc_end130-__modsi3
                                        ! -- End function
	.globl	__udivmodhi4                    ! -- Begin function __udivmodhi4
	.p2align	2
	.type	__udivmodhi4,@function
__udivmodhi4:                           ! @__udivmodhi4
! %bb.0:
	save %sp, -160, %sp
                                        ! kill: def $i3 killed $i2
                                        ! kill: def $i3 killed $i1
                                        ! kill: def $i3 killed $i0
	sth %i0, [%fp+2043]
	sth %i1, [%fp+2041]
	st %i2, [%fp+2035]
	mov	1, %i0
	sth %i0, [%fp+2033]
	mov	%g0, %i0
	ba .LBB131_1
	sth %i0, [%fp+2031]
.LBB131_1:                              ! =>This Inner Loop Header: Depth=1
	lduh [%fp+2041], %i1
	lduh [%fp+2043], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bge %icc, .LBB131_4
	st %i0, [%fp+2027]
	ba .LBB131_2
	nop
.LBB131_2:                              !   in Loop: Header=BB131_1 Depth=1
	lduh [%fp+2033], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be %icc, .LBB131_4
	st %i0, [%fp+2027]
	ba .LBB131_3
	nop
.LBB131_3:                              !   in Loop: Header=BB131_1 Depth=1
	lduh [%fp+2041], %i0
	sethi 32, %i1
	and %i0, %i1, %i1
	mov	%g0, %i0
	cmp	%i1, 0
	move	%icc, 1, %i0
	ba .LBB131_4
	st %i0, [%fp+2027]
.LBB131_4:                              !   in Loop: Header=BB131_1 Depth=1
	ld [%fp+2027], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB131_6
	nop
	ba .LBB131_5
	nop
.LBB131_5:                              !   in Loop: Header=BB131_1 Depth=1
	lduh [%fp+2041], %i0
	sll %i0, 1, %i0
	sth %i0, [%fp+2041]
	lduh [%fp+2033], %i0
	sll %i0, 1, %i0
	ba .LBB131_1
	sth %i0, [%fp+2033]
.LBB131_6:
	ba .LBB131_7
	nop
.LBB131_7:                              ! =>This Inner Loop Header: Depth=1
	lduh [%fp+2033], %i0
	cmp	%i0, 0
	be %icc, .LBB131_11
	nop
	ba .LBB131_8
	nop
.LBB131_8:                              !   in Loop: Header=BB131_7 Depth=1
	lduh [%fp+2043], %i0
	lduh [%fp+2041], %i1
	cmp	%i0, %i1
	bl %icc, .LBB131_10
	nop
	ba .LBB131_9
	nop
.LBB131_9:                              !   in Loop: Header=BB131_7 Depth=1
	lduh [%fp+2041], %i1
	lduh [%fp+2043], %i0
	sub %i0, %i1, %i0
	sth %i0, [%fp+2043]
	lduh [%fp+2033], %i1
	lduh [%fp+2031], %i0
	or %i0, %i1, %i0
	ba .LBB131_10
	sth %i0, [%fp+2031]
.LBB131_10:                             !   in Loop: Header=BB131_7 Depth=1
	lduh [%fp+2033], %i0
	srl %i0, 1, %i0
	sth %i0, [%fp+2033]
	lduh [%fp+2041], %i0
	srl %i0, 1, %i0
	ba .LBB131_7
	sth %i0, [%fp+2041]
.LBB131_11:
	ld [%fp+2035], %i0
	cmp	%i0, 0
	be %icc, .LBB131_13
	nop
	ba .LBB131_12
	nop
.LBB131_12:
	lduh [%fp+2043], %i0
	ba .LBB131_14
	sth %i0, [%fp+2045]
.LBB131_13:
	lduh [%fp+2031], %i0
	ba .LBB131_14
	sth %i0, [%fp+2045]
.LBB131_14:
	lduh [%fp+2045], %i0
	ret
	restore
.Lfunc_end131:
	.size	__udivmodhi4, .Lfunc_end131-__udivmodhi4
                                        ! -- End function
	.globl	__udivmodsi4_libgcc             ! -- Begin function __udivmodsi4_libgcc
	.p2align	2
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    ! @__udivmodsi4_libgcc
! %bb.0:
	save %sp, -192, %sp
                                        ! kill: def $i3 killed $i2
	stx %i0, [%fp+2031]
	stx %i1, [%fp+2023]
	st %i2, [%fp+2019]
	mov	1, %i0
	stx %i0, [%fp+2007]
	ba .LBB132_1
	stx %g0, [%fp+1999]
.LBB132_1:                              ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i1
	ldx [%fp+2031], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bcc %xcc, .LBB132_4
	st %i0, [%fp+1995]
	ba .LBB132_2
	nop
.LBB132_2:                              !   in Loop: Header=BB132_1 Depth=1
	ldx [%fp+2007], %i0
	mov	%g0, %i1
	brz %i0, .LBB132_4
	st %i1, [%fp+1995]
	ba .LBB132_3
	nop
.LBB132_3:                              !   in Loop: Header=BB132_1 Depth=1
	add %fp, 2023, %i0
	or %i0, 4, %i0
	ldub [%i0], %i0
	and %i0, 128, %i1
	mov	%g0, %i0
	cmp	%i1, 0
	move	%icc, 1, %i0
	ba .LBB132_4
	st %i0, [%fp+1995]
.LBB132_4:                              !   in Loop: Header=BB132_1 Depth=1
	ld [%fp+1995], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB132_6
	nop
	ba .LBB132_5
	nop
.LBB132_5:                              !   in Loop: Header=BB132_1 Depth=1
	ldx [%fp+2023], %i0
	sllx %i0, 1, %i0
	stx %i0, [%fp+2023]
	ldx [%fp+2007], %i0
	sllx %i0, 1, %i0
	ba .LBB132_1
	stx %i0, [%fp+2007]
.LBB132_6:
	ba .LBB132_7
	nop
.LBB132_7:                              ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2007], %i0
	brz %i0, .LBB132_11
	nop
	ba .LBB132_8
	nop
.LBB132_8:                              !   in Loop: Header=BB132_7 Depth=1
	ldx [%fp+2031], %i0
	ldx [%fp+2023], %i1
	cmp	%i0, %i1
	bcs %xcc, .LBB132_10
	nop
	ba .LBB132_9
	nop
.LBB132_9:                              !   in Loop: Header=BB132_7 Depth=1
	ldx [%fp+2023], %i1
	ldx [%fp+2031], %i0
	sub %i0, %i1, %i0
	stx %i0, [%fp+2031]
	ldx [%fp+2007], %i1
	ldx [%fp+1999], %i0
	or %i0, %i1, %i0
	ba .LBB132_10
	stx %i0, [%fp+1999]
.LBB132_10:                             !   in Loop: Header=BB132_7 Depth=1
	ldx [%fp+2007], %i0
	srlx %i0, 1, %i0
	stx %i0, [%fp+2007]
	ldx [%fp+2023], %i0
	srlx %i0, 1, %i0
	ba .LBB132_7
	stx %i0, [%fp+2023]
.LBB132_11:
	ld [%fp+2019], %i0
	cmp	%i0, 0
	be %icc, .LBB132_13
	nop
	ba .LBB132_12
	nop
.LBB132_12:
	ldx [%fp+2031], %i0
	ba .LBB132_14
	stx %i0, [%fp+2039]
.LBB132_13:
	ldx [%fp+1999], %i0
	ba .LBB132_14
	stx %i0, [%fp+2039]
.LBB132_14:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end132:
	.size	__udivmodsi4_libgcc, .Lfunc_end132-__udivmodsi4_libgcc
                                        ! -- End function
	.globl	__ashldi3                       ! -- Begin function __ashldi3
	.p2align	2
	.type	__ashldi3,@function
__ashldi3:                              ! @__ashldi3
! %bb.0:
	save %sp, -176, %sp
                                        ! kill: def $i2 killed $i1
	stx %i0, [%fp+2031]
	st %i1, [%fp+2027]
	mov	32, %i0
	st %i0, [%fp+2023]
	ldx [%fp+2031], %i0
	stx %i0, [%fp+2015]
	add %fp, 2027, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	and %i0, 32, %i0
	cmp	%i0, 0
	be %icc, .LBB133_2
	nop
	ba .LBB133_1
	nop
.LBB133_1:
	add %fp, 2007, %i0
	or %i0, 4, %i0
	st %g0, [%i0]
	add %fp, 2015, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	ld [%fp+2027], %i1
	add %i1, -32, %i1
	sll %i0, %i1, %i0
	ba .LBB133_5
	st %i0, [%fp+2007]
.LBB133_2:
	ld [%fp+2027], %i0
	cmp	%i0, 0
	bne %icc, .LBB133_4
	nop
	ba .LBB133_3
	nop
.LBB133_3:
	ldx [%fp+2031], %i0
	ba .LBB133_6
	stx %i0, [%fp+2039]
.LBB133_4:
	add %fp, 2015, %i0
	or %i0, 4, %i1
	ld [%i1], %i0
	ld [%fp+2027], %i2
	sll %i0, %i2, %i2
	add %fp, 2007, %i0
	or %i0, 4, %i0
	st %i2, [%i0]
	ld [%fp+2015], %i0
	ld [%fp+2027], %i3
	sll %i0, %i3, %i0
	ld [%i1], %i1
	mov	32, %i2
	sub %i2, %i3, %i2
	srl %i1, %i2, %i1
	or %i0, %i1, %i0
	ba .LBB133_5
	st %i0, [%fp+2007]
.LBB133_5:
	ldx [%fp+2007], %i0
	ba .LBB133_6
	stx %i0, [%fp+2039]
.LBB133_6:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end133:
	.size	__ashldi3, .Lfunc_end133-__ashldi3
                                        ! -- End function
	.globl	__ashlti3                       ! -- Begin function __ashlti3
	.p2align	2
	.type	__ashlti3,@function
__ashlti3:                              ! @__ashlti3
! %bb.0:
	save %sp, -208, %sp
	mov	%i1, %i3
	mov	%i0, %i1
                                        ! kill: def $i0 killed $i3
                                        ! kill: def $i0 killed $i1
                                        ! kill: def $i0 killed $i2
	add %fp, 2015, %i0
	or %i0, 8, %i0
	stx %i3, [%i0]
	stx %i1, [%fp+2015]
	st %i2, [%fp+2011]
	mov	64, %i1
	st %i1, [%fp+2007]
	ldx [%i0], %i2
	ldx [%fp+2015], %i0
	add %fp, 1983, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	stx %i0, [%fp+1983]
	add %fp, 2011, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	and %i0, 64, %i0
	cmp	%i0, 0
	be %icc, .LBB134_2
	nop
	ba .LBB134_1
	nop
.LBB134_1:
	add %fp, 1967, %i0
	or %i0, 8, %i0
	stx %g0, [%i0]
	add %fp, 1983, %i0
	or %i0, 8, %i0
	ldx [%i0], %i0
	ld [%fp+2011], %i1
	add %i1, -64, %i1
	sllx %i0, %i1, %i0
	ba .LBB134_5
	stx %i0, [%fp+1967]
.LBB134_2:
	ld [%fp+2011], %i0
	cmp	%i0, 0
	bne %icc, .LBB134_4
	nop
	ba .LBB134_3
	nop
.LBB134_3:
	add %fp, 2015, %i0
	or %i0, 8, %i0
	ldx [%i0], %i2
	ldx [%fp+2015], %i0
	add %fp, 2031, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	ba .LBB134_6
	stx %i0, [%fp+2031]
.LBB134_4:
	add %fp, 1983, %i0
	or %i0, 8, %i1
	ldx [%i1], %i0
	ld [%fp+2011], %i2
	sllx %i0, %i2, %i2
	add %fp, 1967, %i0
	or %i0, 8, %i0
	stx %i2, [%i0]
	ldx [%fp+1983], %i0
	ld [%fp+2011], %i3
	sllx %i0, %i3, %i0
	ldx [%i1], %i1
	mov	64, %i2
	sub %i2, %i3, %i2
	srlx %i1, %i2, %i1
	or %i0, %i1, %i0
	ba .LBB134_5
	stx %i0, [%fp+1967]
.LBB134_5:
	add %fp, 1967, %i0
	or %i0, 8, %i0
	ldx [%i0], %i2
	ldx [%fp+1967], %i0
	add %fp, 2031, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	ba .LBB134_6
	stx %i0, [%fp+2031]
.LBB134_6:
	add %fp, 2031, %i0
	or %i0, 8, %i0
	ldx [%i0], %i1
	ldx [%fp+2031], %i0
	ret
	restore
.Lfunc_end134:
	.size	__ashlti3, .Lfunc_end134-__ashlti3
                                        ! -- End function
	.globl	__ashrdi3                       ! -- Begin function __ashrdi3
	.p2align	2
	.type	__ashrdi3,@function
__ashrdi3:                              ! @__ashrdi3
! %bb.0:
	save %sp, -176, %sp
                                        ! kill: def $i2 killed $i1
	stx %i0, [%fp+2031]
	st %i1, [%fp+2027]
	mov	32, %i0
	st %i0, [%fp+2023]
	ldx [%fp+2031], %i0
	stx %i0, [%fp+2015]
	add %fp, 2027, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	and %i0, 32, %i0
	cmp	%i0, 0
	be %icc, .LBB135_2
	nop
	ba .LBB135_1
	nop
.LBB135_1:
	ld [%fp+2015], %i0
	sra %i0, 31, %i0
	st %i0, [%fp+2007]
	ld [%fp+2015], %i0
	ld [%fp+2027], %i1
	add %i1, -32, %i1
	sra %i0, %i1, %i1
	add %fp, 2007, %i0
	or %i0, 4, %i0
	ba .LBB135_5
	st %i1, [%i0]
.LBB135_2:
	ld [%fp+2027], %i0
	cmp	%i0, 0
	bne %icc, .LBB135_4
	nop
	ba .LBB135_3
	nop
.LBB135_3:
	ldx [%fp+2031], %i0
	ba .LBB135_6
	stx %i0, [%fp+2039]
.LBB135_4:
	ld [%fp+2015], %i0
	ld [%fp+2027], %i1
	sra %i0, %i1, %i0
	st %i0, [%fp+2007]
	ld [%fp+2015], %i0
	ld [%fp+2027], %i2
	mov	32, %i1
	sub %i1, %i2, %i1
	sll %i0, %i1, %i0
	add %fp, 2015, %i1
	or %i1, 4, %i1
	ld [%i1], %i1
	srl %i1, %i2, %i1
	or %i0, %i1, %i1
	add %fp, 2007, %i0
	or %i0, 4, %i0
	ba .LBB135_5
	st %i1, [%i0]
.LBB135_5:
	ldx [%fp+2007], %i0
	ba .LBB135_6
	stx %i0, [%fp+2039]
.LBB135_6:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end135:
	.size	__ashrdi3, .Lfunc_end135-__ashrdi3
                                        ! -- End function
	.globl	__ashrti3                       ! -- Begin function __ashrti3
	.p2align	2
	.type	__ashrti3,@function
__ashrti3:                              ! @__ashrti3
! %bb.0:
	save %sp, -208, %sp
	mov	%i1, %i3
	mov	%i0, %i1
                                        ! kill: def $i0 killed $i3
                                        ! kill: def $i0 killed $i1
                                        ! kill: def $i0 killed $i2
	add %fp, 2015, %i0
	or %i0, 8, %i0
	stx %i3, [%i0]
	stx %i1, [%fp+2015]
	st %i2, [%fp+2011]
	mov	64, %i1
	st %i1, [%fp+2007]
	ldx [%i0], %i2
	ldx [%fp+2015], %i0
	add %fp, 1983, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	stx %i0, [%fp+1983]
	add %fp, 2011, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	and %i0, 64, %i0
	cmp	%i0, 0
	be %icc, .LBB136_2
	nop
	ba .LBB136_1
	nop
.LBB136_1:
	ldx [%fp+1983], %i0
	srax %i0, 63, %i0
	stx %i0, [%fp+1967]
	ldx [%fp+1983], %i0
	ld [%fp+2011], %i1
	add %i1, -64, %i1
	srax %i0, %i1, %i1
	add %fp, 1967, %i0
	or %i0, 8, %i0
	ba .LBB136_5
	stx %i1, [%i0]
.LBB136_2:
	ld [%fp+2011], %i0
	cmp	%i0, 0
	bne %icc, .LBB136_4
	nop
	ba .LBB136_3
	nop
.LBB136_3:
	add %fp, 2015, %i0
	or %i0, 8, %i0
	ldx [%i0], %i2
	ldx [%fp+2015], %i0
	add %fp, 2031, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	ba .LBB136_6
	stx %i0, [%fp+2031]
.LBB136_4:
	ldx [%fp+1983], %i0
	ld [%fp+2011], %i1
	srax %i0, %i1, %i0
	stx %i0, [%fp+1967]
	ldx [%fp+1983], %i0
	ld [%fp+2011], %i2
	mov	64, %i1
	sub %i1, %i2, %i1
	sllx %i0, %i1, %i0
	add %fp, 1983, %i1
	or %i1, 8, %i1
	ldx [%i1], %i1
	srlx %i1, %i2, %i1
	or %i0, %i1, %i1
	add %fp, 1967, %i0
	or %i0, 8, %i0
	ba .LBB136_5
	stx %i1, [%i0]
.LBB136_5:
	add %fp, 1967, %i0
	or %i0, 8, %i0
	ldx [%i0], %i2
	ldx [%fp+1967], %i0
	add %fp, 2031, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	ba .LBB136_6
	stx %i0, [%fp+2031]
.LBB136_6:
	add %fp, 2031, %i0
	or %i0, 8, %i0
	ldx [%i0], %i1
	ldx [%fp+2031], %i0
	ret
	restore
.Lfunc_end136:
	.size	__ashrti3, .Lfunc_end136-__ashrti3
                                        ! -- End function
	.globl	__bswapdi2                      ! -- Begin function __bswapdi2
	.p2align	2
	.type	__bswapdi2,@function
__bswapdi2:                             ! @__bswapdi2
! %bb.0:
	save %sp, -144, %sp
	stx %i0, [%fp+2039]
	ldx [%fp+2039], %i1
	srlx %i1, 56, %i0
	sethi 0, %i3
	or %i3, 0, %i4
	sethi 16320, %i2
	or %i2, 0, %i2
	sllx %i2, 32, %i2
	or %i2, %i4, %i2
	and %i1, %i2, %i2
	srlx %i2, 40, %i2
	or %i0, %i2, %i0
	sethi 63, %i2
	or %i2, 768, %i2
	sllx %i2, 32, %i5
	or %i5, %i4, %i5
	and %i1, %i5, %i5
	srlx %i5, 24, %i5
	or %i0, %i5, %i0
	or %i3, 255, %i3
	sllx %i3, 32, %i3
	or %i3, %i4, %i3
	and %i1, %i3, %i3
	srlx %i3, 8, %i3
	or %i0, %i3, %i0
	sethi 4177920, %i3
	and %i1, %i3, %i3
	sllx %i3, 8, %i3
	or %i0, %i3, %i0
	sethi 16320, %i3
	and %i1, %i3, %i3
	sllx %i3, 24, %i3
	or %i0, %i3, %i0
	and %i1, %i2, %i2
	sllx %i2, 40, %i2
	or %i0, %i2, %i0
	sllx %i1, 56, %i1
	or %i0, %i1, %i0
	ret
	restore
.Lfunc_end137:
	.size	__bswapdi2, .Lfunc_end137-__bswapdi2
                                        ! -- End function
	.globl	__bswapsi2                      ! -- Begin function __bswapsi2
	.p2align	2
	.type	__bswapsi2,@function
__bswapsi2:                             ! @__bswapsi2
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i1
	srl %i1, 24, %i0
	sethi 16320, %i2
	and %i1, %i2, %i2
	srl %i2, 8, %i2
	or %i0, %i2, %i0
	sethi 63, %i2
	or %i2, 768, %i2
	and %i1, %i2, %i2
	sll %i2, 8, %i2
	or %i0, %i2, %i0
	sll %i1, 24, %i1
	or %i0, %i1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end138:
	.size	__bswapsi2, .Lfunc_end138-__bswapsi2
                                        ! -- End function
	.globl	__clzsi2                        ! -- Begin function __clzsi2
	.p2align	2
	.type	__clzsi2,@function
__clzsi2:                               ! @__clzsi2
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i0
	st %i0, [%fp+2039]
	lduh [%fp+2039], %i0
	sll %i0, 16, %i0
	mov	%g0, %i2
	cmp	%i0, 0
	mov	%i2, %i0
	move	%icc, 1, %i0
	sll %i0, 4, %i0
	st %i0, [%fp+2035]
	ld [%fp+2035], %i1
	mov	16, %i0
	sub %i0, %i1, %i1
	ld [%fp+2039], %i0
	srl %i0, %i1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2035], %i0
	st %i0, [%fp+2031]
	add %fp, 2039, %i0
	or %i0, 2, %i0
	ldub [%i0], %i0
	sll %i0, 8, %i0
	cmp	%i0, 0
	mov	%i2, %i0
	move	%icc, 1, %i0
	sll %i0, 3, %i0
	st %i0, [%fp+2035]
	ld [%fp+2035], %i1
	mov	8, %i0
	sub %i0, %i1, %i1
	ld [%fp+2039], %i0
	srl %i0, %i1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2035], %i1
	ld [%fp+2031], %i0
	add %i0, %i1, %i0
	st %i0, [%fp+2031]
	ld [%fp+2039], %i0
	and %i0, 240, %i0
	cmp	%i0, 0
	mov	%i2, %i0
	move	%icc, 1, %i0
	sll %i0, 2, %i0
	st %i0, [%fp+2035]
	ld [%fp+2035], %i1
	mov	4, %i0
	sub %i0, %i1, %i1
	ld [%fp+2039], %i0
	srl %i0, %i1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2035], %i1
	ld [%fp+2031], %i0
	add %i0, %i1, %i0
	st %i0, [%fp+2031]
	ld [%fp+2039], %i0
	and %i0, 12, %i0
	cmp	%i0, 0
	mov	%i2, %i0
	move	%icc, 1, %i0
	sll %i0, 1, %i0
	st %i0, [%fp+2035]
	ld [%fp+2035], %i0
	mov	2, %i1
	sub %i1, %i0, %i3
	ld [%fp+2039], %i0
	srl %i0, %i3, %i0
	st %i0, [%fp+2039]
	ld [%fp+2035], %i3
	ld [%fp+2031], %i0
	add %i0, %i3, %i0
	st %i0, [%fp+2031]
	ld [%fp+2031], %i0
	ld [%fp+2039], %i3
	sub %i1, %i3, %i1
	and %i3, 2, %i3
	cmp	%i3, 0
	mov	%i2, %i3
	move	%icc, 1, %i3
	sub %i2, %i3, %i2
	and %i1, %i2, %i1
	add %i0, %i1, %i0
	sra %i0, 0, %i0
	ret
	restore
.Lfunc_end139:
	.size	__clzsi2, .Lfunc_end139-__clzsi2
                                        ! -- End function
	.globl	__clzti2                        ! -- Begin function __clzti2
	.p2align	2
	.type	__clzti2,@function
__clzti2:                               ! @__clzti2
! %bb.0:
	save %sp, -176, %sp
	mov	%i1, %i2
	mov	%i0, %i1
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i0 killed $i1
	add %fp, 2031, %i0
	or %i0, 8, %i0
	stx %i2, [%i0]
	stx %i1, [%fp+2031]
	ldx [%i0], %i1
	ldx [%fp+2031], %i0
	add %fp, 2015, %i2
	or %i2, 8, %i2
	stx %i1, [%i2]
	stx %i0, [%fp+2015]
	ldx [%fp+2015], %i1
	mov	%g0, %i0
	movrz %i1, 1, %i0
	srl %i0, 0, %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	stx %i0, [%fp+2007]
	ldx [%fp+2015], %i0
	ldx [%fp+2007], %i1
	andn %i0, %i1, %i0
	ldx [%i2], %i2
	and %i2, %i1, %i2
	or %i0, %i2, %i0
	srlx %i0, 1, %i2
	or %i0, %i2, %i0
	srlx %i0, 2, %i2
	or %i0, %i2, %i0
	srlx %i0, 4, %i2
	or %i0, %i2, %i0
	srlx %i0, 8, %i2
	or %i0, %i2, %i0
	srlx %i0, 16, %i2
	or %i0, %i2, %i0
	srlx %i0, 32, %i2
	or %i0, %i2, %i0
	xor %i0, -1, %i0
	srlx %i0, 1, %i2
	sethi 1398101, %i3
	or %i3, 341, %i4
	or %i3, 341, %i3
	sllx %i3, 32, %i3
	or %i3, %i4, %i3
	and %i2, %i3, %i2
	sub %i0, %i2, %i2
	sethi 838860, %i0
	or %i0, 819, %i3
	or %i0, 819, %i0
	sllx %i0, 32, %i0
	or %i0, %i3, %i3
	and %i2, %i3, %i0
	srlx %i2, 2, %i2
	and %i2, %i3, %i2
	add %i0, %i2, %i0
	srlx %i0, 4, %i2
	add %i0, %i2, %i0
	sethi 246723, %i2
	or %i2, 783, %i3
	or %i2, 783, %i2
	sllx %i2, 32, %i2
	or %i2, %i3, %i2
	and %i0, %i2, %i0
	sethi 16448, %i2
	or %i2, 257, %i3
	or %i2, 257, %i2
	sllx %i2, 32, %i2
	or %i2, %i3, %i2
	mulx %i0, %i2, %i0
	srlx %i0, 56, %i0
	and %i1, 64, %i1
	add %i0, %i1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end140:
	.size	__clzti2, .Lfunc_end140-__clzti2
                                        ! -- End function
	.globl	__cmpdi2                        ! -- Begin function __cmpdi2
	.p2align	2
	.type	__cmpdi2,@function
__cmpdi2:                               ! @__cmpdi2
! %bb.0:
	save %sp, -176, %sp
	stx %i0, [%fp+2031]
	stx %i1, [%fp+2023]
	ldx [%fp+2031], %i0
	stx %i0, [%fp+2015]
	ldx [%fp+2023], %i0
	stx %i0, [%fp+2007]
	ld [%fp+2015], %i0
	ld [%fp+2007], %i1
	cmp	%i0, %i1
	bge %icc, .LBB141_2
	nop
	ba .LBB141_1
	nop
.LBB141_1:
	ba .LBB141_9
	st %g0, [%fp+2043]
.LBB141_2:
	ld [%fp+2015], %i0
	ld [%fp+2007], %i1
	cmp	%i0, %i1
	ble %icc, .LBB141_4
	nop
	ba .LBB141_3
	nop
.LBB141_3:
	mov	2, %i0
	ba .LBB141_9
	st %i0, [%fp+2043]
.LBB141_4:
	add %fp, 2015, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	add %fp, 2007, %i1
	or %i1, 4, %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	bcc %icc, .LBB141_6
	nop
	ba .LBB141_5
	nop
.LBB141_5:
	ba .LBB141_9
	st %g0, [%fp+2043]
.LBB141_6:
	add %fp, 2015, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	add %fp, 2007, %i1
	or %i1, 4, %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	bleu %icc, .LBB141_8
	nop
	ba .LBB141_7
	nop
.LBB141_7:
	mov	2, %i0
	ba .LBB141_9
	st %i0, [%fp+2043]
.LBB141_8:
	mov	1, %i0
	ba .LBB141_9
	st %i0, [%fp+2043]
.LBB141_9:
	ldsw [%fp+2043], %i0
	ret
	restore
.Lfunc_end141:
	.size	__cmpdi2, .Lfunc_end141-__cmpdi2
                                        ! -- End function
	.globl	__aeabi_lcmp                    ! -- Begin function __aeabi_lcmp
	.p2align	2
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           ! @__aeabi_lcmp
! %bb.0:
	save %sp, -192, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	ldx [%fp+2039], %o0
	call __cmpdi2
	ldx [%fp+2031], %o1
	add %o0, -1, %i0
	sra %i0, 0, %i0
	ret
	restore
.Lfunc_end142:
	.size	__aeabi_lcmp, .Lfunc_end142-__aeabi_lcmp
                                        ! -- End function
	.globl	__cmpti2                        ! -- Begin function __cmpti2
	.p2align	2
	.type	__cmpti2,@function
__cmpti2:                               ! @__cmpti2
! %bb.0:
	save %sp, -208, %sp
	mov	%i1, %i4
                                        ! kill: def $i1 killed $i3
                                        ! kill: def $i1 killed $i2
                                        ! kill: def $i1 killed $i4
                                        ! kill: def $i1 killed $i0
	add %fp, 2015, %i1
	or %i1, 8, %i1
	stx %i4, [%i1]
	stx %i0, [%fp+2015]
	add %fp, 1999, %i0
	or %i0, 8, %i0
	stx %i3, [%i0]
	stx %i2, [%fp+1999]
	ldx [%i1], %i3
	ldx [%fp+2015], %i1
	add %fp, 1983, %i2
	or %i2, 8, %i2
	stx %i3, [%i2]
	stx %i1, [%fp+1983]
	ldx [%i0], %i2
	ldx [%fp+1999], %i0
	add %fp, 1967, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	stx %i0, [%fp+1967]
	ldx [%fp+1983], %i0
	ldx [%fp+1967], %i1
	cmp	%i0, %i1
	bge %xcc, .LBB143_2
	nop
	ba .LBB143_1
	nop
.LBB143_1:
	ba .LBB143_9
	st %g0, [%fp+2043]
.LBB143_2:
	ldx [%fp+1983], %i0
	ldx [%fp+1967], %i1
	cmp	%i0, %i1
	ble %xcc, .LBB143_4
	nop
	ba .LBB143_3
	nop
.LBB143_3:
	mov	2, %i0
	ba .LBB143_9
	st %i0, [%fp+2043]
.LBB143_4:
	add %fp, 1983, %i0
	or %i0, 8, %i0
	ldx [%i0], %i0
	add %fp, 1967, %i1
	or %i1, 8, %i1
	ldx [%i1], %i1
	cmp	%i0, %i1
	bcc %xcc, .LBB143_6
	nop
	ba .LBB143_5
	nop
.LBB143_5:
	ba .LBB143_9
	st %g0, [%fp+2043]
.LBB143_6:
	add %fp, 1983, %i0
	or %i0, 8, %i0
	ldx [%i0], %i0
	add %fp, 1967, %i1
	or %i1, 8, %i1
	ldx [%i1], %i1
	cmp	%i0, %i1
	bleu %xcc, .LBB143_8
	nop
	ba .LBB143_7
	nop
.LBB143_7:
	mov	2, %i0
	ba .LBB143_9
	st %i0, [%fp+2043]
.LBB143_8:
	mov	1, %i0
	ba .LBB143_9
	st %i0, [%fp+2043]
.LBB143_9:
	ldsw [%fp+2043], %i0
	ret
	restore
.Lfunc_end143:
	.size	__cmpti2, .Lfunc_end143-__cmpti2
                                        ! -- End function
	.globl	__ctzsi2                        ! -- Begin function __ctzsi2
	.p2align	2
	.type	__ctzsi2,@function
__ctzsi2:                               ! @__ctzsi2
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i0
	st %i0, [%fp+2039]
	add %fp, 2039, %i1
	or %i1, 2, %i0
	lduh [%i0], %i2
	mov	%g0, %i0
	cmp	%i2, 0
	mov	%i0, %i2
	move	%icc, 1, %i2
	sll %i2, 4, %i2
	st %i2, [%fp+2035]
	ld [%fp+2035], %i3
	ld [%fp+2039], %i2
	srl %i2, %i3, %i2
	st %i2, [%fp+2039]
	ld [%fp+2035], %i2
	st %i2, [%fp+2031]
	or %i1, 3, %i1
	ldub [%i1], %i1
	cmp	%i1, 0
	mov	%i0, %i1
	move	%icc, 1, %i1
	sll %i1, 3, %i1
	st %i1, [%fp+2035]
	ld [%fp+2035], %i2
	ld [%fp+2039], %i1
	srl %i1, %i2, %i1
	st %i1, [%fp+2039]
	ld [%fp+2035], %i2
	ld [%fp+2031], %i1
	add %i1, %i2, %i1
	st %i1, [%fp+2031]
	ld [%fp+2039], %i1
	and %i1, 15, %i1
	cmp	%i1, 0
	mov	%i0, %i1
	move	%icc, 1, %i1
	sll %i1, 2, %i1
	st %i1, [%fp+2035]
	ld [%fp+2035], %i2
	ld [%fp+2039], %i1
	srl %i1, %i2, %i1
	st %i1, [%fp+2039]
	ld [%fp+2035], %i2
	ld [%fp+2031], %i1
	add %i1, %i2, %i1
	st %i1, [%fp+2031]
	ld [%fp+2039], %i1
	and %i1, 3, %i1
	cmp	%i1, 0
	move	%icc, 1, %i0
	sll %i0, 1, %i0
	st %i0, [%fp+2035]
	ld [%fp+2035], %i1
	ld [%fp+2039], %i0
	srl %i0, %i1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2039], %i0
	and %i0, 3, %i0
	st %i0, [%fp+2039]
	ld [%fp+2035], %i1
	ld [%fp+2031], %i0
	add %i0, %i1, %i0
	st %i0, [%fp+2031]
	ld [%fp+2031], %i0
	ld [%fp+2039], %i2
	srl %i2, 1, %i3
	mov	2, %i1
	sub %i1, %i3, %i1
	and %i2, 1, %i2
	add %i2, -1, %i2
	and %i1, %i2, %i1
	add %i0, %i1, %i0
	sra %i0, 0, %i0
	ret
	restore
.Lfunc_end144:
	.size	__ctzsi2, .Lfunc_end144-__ctzsi2
                                        ! -- End function
	.section	.rodata,"a",@progbits
.LCPI145_0:                             ! -- Begin function __ctzti2
	.ascii	"\000\001\002\007\003\r\b\023\004\031\016\034\t\"\024(\005\021\032&\017.\0350\n\037#6\0252)9?\006\f\022\030\033!'\020%-/\036518>\013\027 $,47=\026+3<*;:"
	.text
	.globl	__ctzti2
	.p2align	2
	.type	__ctzti2,@function
__ctzti2:                               ! @__ctzti2
! %bb.0:
	save %sp, -176, %sp
	mov	%i1, %i2
	mov	%i0, %i1
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i0 killed $i1
	add %fp, 2031, %i0
	or %i0, 8, %i0
	stx %i2, [%i0]
	stx %i1, [%fp+2031]
	ldx [%i0], %i1
	ldx [%fp+2031], %i0
	add %fp, 2015, %i2
	or %i2, 8, %i3
	stx %i1, [%i3]
	stx %i0, [%fp+2015]
	ldx [%i3], %i1
	mov	%g0, %i0
	movrz %i1, 1, %i0
	srl %i0, 0, %i0
	mov	%g0, %i2
	sub %i2, %i0, %i0
	stx %i0, [%fp+2007]
	ldx [%fp+2015], %i0
	ldx [%fp+2007], %i1
	and %i0, %i1, %i0
	ldx [%i3], %i3
	andn %i3, %i1, %i3
	or %i0, %i3, %i0
	sub %i2, %i0, %i2
	and %i0, %i2, %i0
	sethi 3362647, %i2
	or %i2, 447, %i3
	sethi 34344, %i2
	or %i2, 914, %i2
	sllx %i2, 32, %i2
	or %i2, %i3, %i2
	mulx %i0, %i2, %i0
	srlx %i0, 58, %i2
	sethi %hi(.LCPI145_0), %i0
	add %i0, %lo(.LCPI145_0), %i3
	sethi %hh(.LCPI145_0), %i0
	add %i0, %hm(.LCPI145_0), %i0
	sllx %i0, 32, %i0
	add %i0, %i3, %i0
	ldub [%i0+%i2], %i0
	and %i1, 64, %i1
	add %i0, %i1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end145:
	.size	__ctzti2, .Lfunc_end145-__ctzti2
                                        ! -- End function
	.section	.rodata,"a",@progbits
.LCPI146_0:                             ! -- Begin function __ffsti2
	.ascii	"\000\001\002\007\003\r\b\023\004\031\016\034\t\"\024(\005\021\032&\017.\0350\n\037#6\0252)9?\006\f\022\030\033!'\020%-/\036518>\013\027 $,47=\026+3<*;:"
	.text
	.globl	__ffsti2
	.p2align	2
	.type	__ffsti2,@function
__ffsti2:                               ! @__ffsti2
! %bb.0:
	save %sp, -176, %sp
	mov	%i1, %i2
	mov	%i0, %i1
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i0 killed $i1
	add %fp, 2015, %i0
	or %i0, 8, %i0
	stx %i2, [%i0]
	stx %i1, [%fp+2015]
	ldx [%i0], %i2
	ldx [%fp+2015], %i1
	add %fp, 1999, %i0
	or %i0, 8, %i0
	stx %i2, [%i0]
	stx %i1, [%fp+1999]
	ldx [%i0], %i0
	brnz %i0, .LBB146_4
	nop
	ba .LBB146_1
	nop
.LBB146_1:
	ldx [%fp+1999], %i0
	brnz %i0, .LBB146_3
	nop
	ba .LBB146_2
	nop
.LBB146_2:
	ba .LBB146_5
	st %g0, [%fp+2043]
.LBB146_3:
	ldx [%fp+1999], %i0
	mov	%g0, %i1
	sub %i1, %i0, %i1
	and %i0, %i1, %i0
	sethi 3362647, %i1
	or %i1, 447, %i2
	sethi 34344, %i1
	or %i1, 914, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	mulx %i0, %i1, %i0
	srlx %i0, 58, %i1
	sethi %hi(.LCPI146_0), %i0
	add %i0, %lo(.LCPI146_0), %i2
	sethi %hh(.LCPI146_0), %i0
	add %i0, %hm(.LCPI146_0), %i0
	sllx %i0, 32, %i0
	add %i0, %i2, %i0
	ldub [%i0+%i1], %i0
	add %i0, 65, %i0
	ba .LBB146_5
	st %i0, [%fp+2043]
.LBB146_4:
	add %fp, 1999, %i0
	or %i0, 8, %i0
	ldx [%i0], %i0
	mov	%g0, %i1
	sub %i1, %i0, %i1
	and %i0, %i1, %i0
	sethi 3362647, %i1
	or %i1, 447, %i2
	sethi 34344, %i1
	or %i1, 914, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	mulx %i0, %i1, %i0
	srlx %i0, 58, %i1
	sethi %hi(.LCPI146_0), %i0
	add %i0, %lo(.LCPI146_0), %i2
	sethi %hh(.LCPI146_0), %i0
	add %i0, %hm(.LCPI146_0), %i0
	sllx %i0, 32, %i0
	add %i0, %i2, %i0
	ldub [%i0+%i1], %i0
	add %i0, 1, %i0
	ba .LBB146_5
	st %i0, [%fp+2043]
.LBB146_5:
	ldsw [%fp+2043], %i0
	ret
	restore
.Lfunc_end146:
	.size	__ffsti2, .Lfunc_end146-__ffsti2
                                        ! -- End function
	.globl	__lshrdi3                       ! -- Begin function __lshrdi3
	.p2align	2
	.type	__lshrdi3,@function
__lshrdi3:                              ! @__lshrdi3
! %bb.0:
	save %sp, -176, %sp
                                        ! kill: def $i2 killed $i1
	stx %i0, [%fp+2031]
	st %i1, [%fp+2027]
	mov	32, %i0
	st %i0, [%fp+2023]
	ldx [%fp+2031], %i0
	stx %i0, [%fp+2015]
	add %fp, 2027, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	and %i0, 32, %i0
	cmp	%i0, 0
	be %icc, .LBB147_2
	nop
	ba .LBB147_1
	nop
.LBB147_1:
	st %g0, [%fp+2007]
	ld [%fp+2015], %i0
	ld [%fp+2027], %i1
	add %i1, -32, %i1
	srl %i0, %i1, %i1
	add %fp, 2007, %i0
	or %i0, 4, %i0
	ba .LBB147_5
	st %i1, [%i0]
.LBB147_2:
	ld [%fp+2027], %i0
	cmp	%i0, 0
	bne %icc, .LBB147_4
	nop
	ba .LBB147_3
	nop
.LBB147_3:
	ldx [%fp+2031], %i0
	ba .LBB147_6
	stx %i0, [%fp+2039]
.LBB147_4:
	ld [%fp+2015], %i0
	ld [%fp+2027], %i1
	srl %i0, %i1, %i0
	st %i0, [%fp+2007]
	ld [%fp+2015], %i0
	ld [%fp+2027], %i2
	mov	32, %i1
	sub %i1, %i2, %i1
	sll %i0, %i1, %i0
	add %fp, 2015, %i1
	or %i1, 4, %i1
	ld [%i1], %i1
	srl %i1, %i2, %i1
	or %i0, %i1, %i1
	add %fp, 2007, %i0
	or %i0, 4, %i0
	ba .LBB147_5
	st %i1, [%i0]
.LBB147_5:
	ldx [%fp+2007], %i0
	ba .LBB147_6
	stx %i0, [%fp+2039]
.LBB147_6:
	ldx [%fp+2039], %i0
	ret
	restore
.Lfunc_end147:
	.size	__lshrdi3, .Lfunc_end147-__lshrdi3
                                        ! -- End function
	.globl	__lshrti3                       ! -- Begin function __lshrti3
	.p2align	2
	.type	__lshrti3,@function
__lshrti3:                              ! @__lshrti3
! %bb.0:
	save %sp, -208, %sp
	mov	%i1, %i3
	mov	%i0, %i1
                                        ! kill: def $i0 killed $i3
                                        ! kill: def $i0 killed $i1
                                        ! kill: def $i0 killed $i2
	add %fp, 2015, %i0
	or %i0, 8, %i0
	stx %i3, [%i0]
	stx %i1, [%fp+2015]
	st %i2, [%fp+2011]
	mov	64, %i1
	st %i1, [%fp+2007]
	ldx [%i0], %i2
	ldx [%fp+2015], %i0
	add %fp, 1983, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	stx %i0, [%fp+1983]
	add %fp, 2011, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	and %i0, 64, %i0
	cmp	%i0, 0
	be %icc, .LBB148_2
	nop
	ba .LBB148_1
	nop
.LBB148_1:
	stx %g0, [%fp+1967]
	ldx [%fp+1983], %i0
	ld [%fp+2011], %i1
	add %i1, -64, %i1
	srlx %i0, %i1, %i1
	add %fp, 1967, %i0
	or %i0, 8, %i0
	ba .LBB148_5
	stx %i1, [%i0]
.LBB148_2:
	ld [%fp+2011], %i0
	cmp	%i0, 0
	bne %icc, .LBB148_4
	nop
	ba .LBB148_3
	nop
.LBB148_3:
	add %fp, 2015, %i0
	or %i0, 8, %i0
	ldx [%i0], %i2
	ldx [%fp+2015], %i0
	add %fp, 2031, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	ba .LBB148_6
	stx %i0, [%fp+2031]
.LBB148_4:
	ldx [%fp+1983], %i0
	ld [%fp+2011], %i1
	srlx %i0, %i1, %i0
	stx %i0, [%fp+1967]
	ldx [%fp+1983], %i0
	ld [%fp+2011], %i2
	mov	64, %i1
	sub %i1, %i2, %i1
	sllx %i0, %i1, %i0
	add %fp, 1983, %i1
	or %i1, 8, %i1
	ldx [%i1], %i1
	srlx %i1, %i2, %i1
	or %i0, %i1, %i1
	add %fp, 1967, %i0
	or %i0, 8, %i0
	ba .LBB148_5
	stx %i1, [%i0]
.LBB148_5:
	add %fp, 1967, %i0
	or %i0, 8, %i0
	ldx [%i0], %i2
	ldx [%fp+1967], %i0
	add %fp, 2031, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	ba .LBB148_6
	stx %i0, [%fp+2031]
.LBB148_6:
	add %fp, 2031, %i0
	or %i0, 8, %i0
	ldx [%i0], %i1
	ldx [%fp+2031], %i0
	ret
	restore
.Lfunc_end148:
	.size	__lshrti3, .Lfunc_end148-__lshrti3
                                        ! -- End function
	.globl	__muldsi3                       ! -- Begin function __muldsi3
	.p2align	2
	.type	__muldsi3,@function
__muldsi3:                              ! @__muldsi3
! %bb.0:
	save %sp, -160, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+2043]
	st %i1, [%fp+2039]
	mov	16, %i0
	st %i0, [%fp+2027]
	sethi 63, %i0
	or %i0, 1023, %i0
	st %i0, [%fp+2023]
	add %fp, 2043, %i0
	or %i0, 2, %i2
	lduh [%i2], %i0
	add %fp, 2039, %i1
	or %i1, 2, %i4
	lduh [%i4], %i1
	mulx %i0, %i1, %i3
	add %fp, 2031, %i1
	or %i1, 4, %i0
	st %i3, [%i0]
	lduh [%i0], %i3
	st %i3, [%fp+2019]
	or %i1, 6, %i1
	lduh [%i1], %i3
	st %i3, [%i0]
	lduh [%fp+2043], %i3
	lduh [%i4], %i4
	mulx %i3, %i4, %i4
	ld [%fp+2019], %i3
	add %i3, %i4, %i3
	st %i3, [%fp+2019]
	ld [%fp+2019], %i3
	sll %i3, 16, %i4
	ld [%i0], %i3
	add %i3, %i4, %i3
	st %i3, [%i0]
	lduh [%fp+2019], %i3
	st %i3, [%fp+2031]
	lduh [%i0], %i3
	st %i3, [%fp+2019]
	lduh [%i1], %i1
	st %i1, [%i0]
	lduh [%fp+2039], %i1
	lduh [%i2], %i2
	mulx %i1, %i2, %i2
	ld [%fp+2019], %i1
	add %i1, %i2, %i1
	st %i1, [%fp+2019]
	ld [%fp+2019], %i1
	sll %i1, 16, %i2
	ld [%i0], %i1
	add %i1, %i2, %i1
	st %i1, [%i0]
	lduh [%fp+2019], %i1
	ld [%fp+2031], %i0
	add %i0, %i1, %i0
	st %i0, [%fp+2031]
	lduh [%fp+2043], %i0
	lduh [%fp+2039], %i1
	mulx %i0, %i1, %i1
	ld [%fp+2031], %i0
	add %i0, %i1, %i0
	st %i0, [%fp+2031]
	ldx [%fp+2031], %i0
	ret
	restore
.Lfunc_end149:
	.size	__muldsi3, .Lfunc_end149-__muldsi3
                                        ! -- End function
	.globl	__muldi3_compiler_rt            ! -- Begin function __muldi3_compiler_rt
	.p2align	2
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   ! @__muldi3_compiler_rt
! %bb.0:
	save %sp, -224, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	ldx [%fp+2039], %i0
	stx %i0, [%fp+2023]
	ldx [%fp+2031], %i0
	stx %i0, [%fp+2015]
	add %fp, 2023, %i0
	or %i0, 4, %i1
	ld [%i1], %o0
	add %fp, 2015, %i0
	or %i0, 4, %i2
	call __muldsi3
	ld [%i2], %o1
	stx %o0, [%fp+2007]
	ldsw [%fp+2023], %i0
	ldsw [%i2], %i2
	mulx %i0, %i2, %i0
	ldsw [%i1], %i1
	ldsw [%fp+2015], %i2
	mulx %i1, %i2, %i1
	add %i0, %i1, %i1
	ld [%fp+2007], %i0
	add %i0, %i1, %i0
	st %i0, [%fp+2007]
	ldx [%fp+2007], %i0
	ret
	restore
.Lfunc_end150:
	.size	__muldi3_compiler_rt, .Lfunc_end150-__muldi3_compiler_rt
                                        ! -- End function
	.globl	__mulddi3                       ! -- Begin function __mulddi3
	.p2align	2
	.type	__mulddi3,@function
__mulddi3:                              ! @__mulddi3
! %bb.0:
	save %sp, -192, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	mov	32, %i0
	st %i0, [%fp+2011]
	sethi 4194303, %i0
	or %i0, 1023, %i0
	stx %i0, [%fp+1999]
	add %fp, 2039, %i0
	or %i0, 4, %i2
	ld [%i2], %i0
	add %fp, 2031, %i1
	or %i1, 4, %i4
	ld [%i4], %i1
	mulx %i0, %i1, %i3
	add %fp, 2015, %i1
	or %i1, 8, %i0
	stx %i3, [%i0]
	ld [%i0], %i3
	stx %i3, [%fp+1991]
	or %i1, 12, %i1
	ld [%i1], %i3
	stx %i3, [%i0]
	ld [%fp+2039], %i3
	ld [%i4], %i4
	mulx %i3, %i4, %i4
	ldx [%fp+1991], %i3
	add %i3, %i4, %i3
	stx %i3, [%fp+1991]
	ldx [%fp+1991], %i3
	sllx %i3, 32, %i4
	ldx [%i0], %i3
	add %i3, %i4, %i3
	stx %i3, [%i0]
	ld [%fp+1991], %i3
	stx %i3, [%fp+2015]
	ld [%i0], %i3
	stx %i3, [%fp+1991]
	ld [%i1], %i1
	stx %i1, [%i0]
	ld [%fp+2031], %i1
	ld [%i2], %i2
	mulx %i1, %i2, %i2
	ldx [%fp+1991], %i1
	add %i1, %i2, %i1
	stx %i1, [%fp+1991]
	ldx [%fp+1991], %i1
	sllx %i1, 32, %i2
	ldx [%i0], %i1
	add %i1, %i2, %i1
	stx %i1, [%i0]
	ld [%fp+1991], %i2
	ldx [%fp+2015], %i1
	add %i1, %i2, %i1
	stx %i1, [%fp+2015]
	ld [%fp+2039], %i1
	ld [%fp+2031], %i2
	mulx %i1, %i2, %i2
	ldx [%fp+2015], %i1
	add %i1, %i2, %i1
	stx %i1, [%fp+2015]
	ldx [%i0], %i1
	ldx [%fp+2015], %i0
	ret
	restore
.Lfunc_end151:
	.size	__mulddi3, .Lfunc_end151-__mulddi3
                                        ! -- End function
	.globl	__multi3                        ! -- Begin function __multi3
	.p2align	2
	.type	__multi3,@function
__multi3:                               ! @__multi3
! %bb.0:
	save %sp, -256, %sp
	mov	%i1, %i4
                                        ! kill: def $i1 killed $i3
                                        ! kill: def $i1 killed $i2
                                        ! kill: def $i1 killed $i4
                                        ! kill: def $i1 killed $i0
	add %fp, 2031, %i1
	or %i1, 8, %i1
	stx %i4, [%i1]
	stx %i0, [%fp+2031]
	add %fp, 2015, %i0
	or %i0, 8, %i0
	stx %i3, [%i0]
	stx %i2, [%fp+2015]
	ldx [%i1], %i3
	ldx [%fp+2031], %i1
	add %fp, 1999, %i2
	or %i2, 8, %i2
	stx %i3, [%i2]
	stx %i1, [%fp+1999]
	ldx [%i0], %i1
	ldx [%fp+2015], %i0
	add %fp, 1983, %i3
	or %i3, 8, %i3
	stx %i1, [%i3]
	stx %i0, [%fp+1983]
	ldx [%i2], %o0
	call __mulddi3
	ldx [%i3], %o1
	add %fp, 1967, %i0
	or %i0, 8, %i0
	stx %o1, [%i0]
	stx %o0, [%fp+1967]
	ldx [%fp+1999], %i1
	ldx [%i3], %i3
	mulx %i1, %i3, %i1
	ldx [%i2], %i2
	ldx [%fp+1983], %i3
	mulx %i2, %i3, %i2
	add %i1, %i2, %i2
	ldx [%fp+1967], %i1
	add %i1, %i2, %i1
	stx %i1, [%fp+1967]
	ldx [%i0], %i1
	ldx [%fp+1967], %i0
	ret
	restore
.Lfunc_end152:
	.size	__multi3, .Lfunc_end152-__multi3
                                        ! -- End function
	.globl	__negdi2                        ! -- Begin function __negdi2
	.p2align	2
	.type	__negdi2,@function
__negdi2:                               ! @__negdi2
! %bb.0:
	save %sp, -144, %sp
	stx %i0, [%fp+2039]
	ldx [%fp+2039], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ret
	restore
.Lfunc_end153:
	.size	__negdi2, .Lfunc_end153-__negdi2
                                        ! -- End function
	.globl	__negti2                        ! -- Begin function __negti2
	.p2align	2
	.type	__negti2,@function
__negti2:                               ! @__negti2
! %bb.0:
	save %sp, -144, %sp
	mov	%i1, %i2
	mov	%i0, %i1
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i0 killed $i1
	add %fp, 2031, %i0
	or %i0, 8, %i0
	stx %i2, [%i0]
	stx %i1, [%fp+2031]
	ldx [%i0], %i1
	ldx [%fp+2031], %i0
	mov	%i1, %i2
	mov	%i0, %i3
	srlx %i1, 32, %i1
	srlx %i0, 32, %i4
	mov	%g0, %i0
	subcc %i0, %i2, %i2
	subxcc %i0, %i1, %i1
	subxcc %i0, %i3, %i3
	subxcc %i0, %i4, %i0
	srl %i3, 0, %i3
	sllx %i0, 32, %i0
	or %i0, %i3, %i0
	srl %i2, 0, %i2
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	ret
	restore
.Lfunc_end154:
	.size	__negti2, .Lfunc_end154-__negti2
                                        ! -- End function
	.globl	__paritydi2                     ! -- Begin function __paritydi2
	.p2align	2
	.type	__paritydi2,@function
__paritydi2:                            ! @__paritydi2
! %bb.0:
	save %sp, -160, %sp
	stx %i0, [%fp+2039]
	ldx [%fp+2039], %i0
	stx %i0, [%fp+2031]
	ld [%fp+2031], %i0
	add %fp, 2031, %i1
	or %i1, 4, %i1
	ld [%i1], %i1
	xor %i0, %i1, %i0
	st %i0, [%fp+2027]
	ld [%fp+2027], %i0
	srl %i0, 16, %i1
	xor %i0, %i1, %i0
	st %i0, [%fp+2027]
	ld [%fp+2027], %i0
	srl %i0, 8, %i1
	xor %i0, %i1, %i0
	st %i0, [%fp+2027]
	ld [%fp+2027], %i0
	srl %i0, 4, %i1
	xor %i0, %i1, %i0
	st %i0, [%fp+2027]
	ld [%fp+2027], %i0
	and %i0, 15, %i1
	sethi 26, %i0
	or %i0, 406, %i0
	srl %i0, %i1, %i0
	and %i0, 1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end155:
	.size	__paritydi2, .Lfunc_end155-__paritydi2
                                        ! -- End function
	.globl	__parityti2                     ! -- Begin function __parityti2
	.p2align	2
	.type	__parityti2,@function
__parityti2:                            ! @__parityti2
! %bb.0:
	save %sp, -176, %sp
	mov	%i1, %i2
	mov	%i0, %i1
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i0 killed $i1
	add %fp, 2031, %i0
	or %i0, 8, %i0
	stx %i2, [%i0]
	stx %i1, [%fp+2031]
	ldx [%i0], %i2
	ldx [%fp+2031], %i0
	add %fp, 2015, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	stx %i0, [%fp+2015]
	ldx [%fp+2015], %i0
	ldx [%i1], %i1
	xor %i0, %i1, %i0
	stx %i0, [%fp+2007]
	ld [%fp+2007], %i0
	add %fp, 2007, %i1
	or %i1, 4, %i1
	ld [%i1], %i1
	xor %i0, %i1, %i0
	st %i0, [%fp+2003]
	ld [%fp+2003], %i0
	srl %i0, 16, %i1
	xor %i0, %i1, %i0
	st %i0, [%fp+2003]
	ld [%fp+2003], %i0
	srl %i0, 8, %i1
	xor %i0, %i1, %i0
	st %i0, [%fp+2003]
	ld [%fp+2003], %i0
	srl %i0, 4, %i1
	xor %i0, %i1, %i0
	st %i0, [%fp+2003]
	ld [%fp+2003], %i0
	and %i0, 15, %i1
	sethi 26, %i0
	or %i0, 406, %i0
	srl %i0, %i1, %i0
	and %i0, 1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end156:
	.size	__parityti2, .Lfunc_end156-__parityti2
                                        ! -- End function
	.globl	__paritysi2                     ! -- Begin function __paritysi2
	.p2align	2
	.type	__paritysi2,@function
__paritysi2:                            ! @__paritysi2
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i0
	st %i0, [%fp+2039]
	ld [%fp+2039], %i0
	srl %i0, 16, %i1
	xor %i0, %i1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2039], %i0
	srl %i0, 8, %i1
	xor %i0, %i1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2039], %i0
	srl %i0, 4, %i1
	xor %i0, %i1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2039], %i0
	and %i0, 15, %i1
	sethi 26, %i0
	or %i0, 406, %i0
	srl %i0, %i1, %i0
	and %i0, 1, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end157:
	.size	__paritysi2, .Lfunc_end157-__paritysi2
                                        ! -- End function
	.globl	__popcountdi2                   ! -- Begin function __popcountdi2
	.p2align	2
	.type	__popcountdi2,@function
__popcountdi2:                          ! @__popcountdi2
! %bb.0:
	save %sp, -160, %sp
	stx %i0, [%fp+2039]
	ldx [%fp+2039], %i0
	stx %i0, [%fp+2031]
	ldx [%fp+2031], %i0
	srlx %i0, 1, %i1
	sethi 1398101, %i2
	or %i2, 341, %i3
	or %i2, 341, %i2
	sllx %i2, 32, %i2
	or %i2, %i3, %i2
	and %i1, %i2, %i1
	sub %i0, %i1, %i0
	stx %i0, [%fp+2031]
	ldx [%fp+2031], %i1
	srlx %i1, 2, %i0
	sethi 838860, %i2
	or %i2, 819, %i3
	or %i2, 819, %i2
	sllx %i2, 32, %i2
	or %i2, %i3, %i2
	and %i0, %i2, %i0
	and %i1, %i2, %i1
	add %i0, %i1, %i0
	stx %i0, [%fp+2031]
	ldx [%fp+2031], %i0
	srlx %i0, 4, %i1
	add %i0, %i1, %i0
	sethi 246723, %i1
	or %i1, 783, %i2
	or %i1, 783, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	and %i0, %i1, %i0
	stx %i0, [%fp+2031]
	ldx [%fp+2031], %i0
	srlx %i0, 32, %i1
	add %i0, %i1, %i0
	st %i0, [%fp+2027]
	ld [%fp+2027], %i0
	srl %i0, 16, %i1
	add %i0, %i1, %i0
	st %i0, [%fp+2027]
	ld [%fp+2027], %i0
	srl %i0, 8, %i1
	add %i0, %i1, %i0
	and %i0, 127, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end158:
	.size	__popcountdi2, .Lfunc_end158-__popcountdi2
                                        ! -- End function
	.globl	__popcountsi2                   ! -- Begin function __popcountsi2
	.p2align	2
	.type	__popcountsi2,@function
__popcountsi2:                          ! @__popcountsi2
! %bb.0:
	save %sp, -144, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+2043]
	ld [%fp+2043], %i0
	st %i0, [%fp+2039]
	ld [%fp+2039], %i0
	srl %i0, 1, %i1
	sethi 1398101, %i2
	or %i2, 341, %i2
	and %i1, %i2, %i1
	sub %i0, %i1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2039], %i1
	srl %i1, 2, %i0
	sethi 838860, %i2
	or %i2, 819, %i2
	and %i0, %i2, %i0
	and %i1, %i2, %i1
	add %i0, %i1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2039], %i0
	srl %i0, 4, %i1
	add %i0, %i1, %i0
	sethi 246723, %i1
	or %i1, 783, %i1
	and %i0, %i1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2039], %i0
	srl %i0, 16, %i1
	add %i0, %i1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2039], %i0
	srl %i0, 8, %i1
	add %i0, %i1, %i0
	and %i0, 63, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end159:
	.size	__popcountsi2, .Lfunc_end159-__popcountsi2
                                        ! -- End function
	.globl	__popcountti2                   ! -- Begin function __popcountti2
	.p2align	2
	.type	__popcountti2,@function
__popcountti2:                          ! @__popcountti2
	.register %g2, #scratch
	.register %g3, #scratch
! %bb.0:
	save %sp, -176, %sp
	mov	%i1, %i2
	mov	%i0, %i1
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i0 killed $i1
	add %fp, 2031, %i0
	or %i0, 8, %i0
	stx %i2, [%i0]
	stx %i1, [%fp+2031]
	ldx [%i0], %i2
	ldx [%fp+2031], %i1
	add %fp, 2015, %i0
	or %i0, 8, %i0
	stx %i2, [%i0]
	stx %i1, [%fp+2015]
	ldx [%i0], %i2
	ldx [%fp+2015], %i1
	srlx %i2, 1, %i4
	srlx %i1, 1, %i3
	sethi 1398101, %i5
	or %i5, 341, %g2
	or %i5, 341, %i5
	sllx %i5, 32, %i5
	or %i5, %g2, %i5
	and %i3, %i5, %i3
	and %i4, %i5, %i4
	mov	%i4, %g4
	mov	%i3, %g2
	srlx %i4, 32, %g3
	srlx %i3, 32, %i5
	mov	%i2, %i3
	mov	%i1, %i4
	srlx %i2, 32, %i2
	srlx %i1, 32, %i1
	subcc %i3, %g4, %i3
	subxcc %i2, %g3, %i2
	subxcc %i4, %g2, %i4
	subxcc %i1, %i5, %i1
	srl %i4, 0, %i4
	sllx %i1, 32, %i1
	or %i1, %i4, %i1
	srl %i3, 0, %i3
	sllx %i2, 32, %i2
	or %i2, %i3, %i2
	stx %i2, [%i0]
	stx %i1, [%fp+2015]
	ldx [%i0], %i3
	ldx [%fp+2015], %i4
	srlx %i4, 2, %i1
	srlx %i3, 2, %i2
	sethi 838860, %i5
	or %i5, 819, %g2
	or %i5, 819, %i5
	sllx %i5, 32, %i5
	or %i5, %g2, %i5
	and %i2, %i5, %i2
	and %i1, %i5, %i1
	and %i3, %i5, %i3
	and %i4, %i5, %i4
	add %i1, %i4, %i1
	add %i2, %i3, %i2
	stx %i2, [%i0]
	stx %i1, [%fp+2015]
	ldx [%i0], %i2
	ldx [%fp+2015], %i1
	sllx %i1, 60, %i3
	srlx %i2, 4, %g4
	or %g4, %i3, %i3
	srlx %i1, 4, %g2
	srlx %i3, 32, %g3
	mov	%i2, %i4
	mov	%i1, %i3
	srlx %i2, 32, %i2
	srlx %i1, 36, %i5
	srlx %i1, 32, %i1
	addcc %i4, %g4, %i4
	addxcc %i2, %g3, %i2
	addxcc %i3, %g2, %i3
	addxcc %i1, %i5, %i1
	srl %i4, 0, %i4
	sllx %i2, 32, %i2
	or %i2, %i4, %i2
	srl %i3, 0, %i3
	sllx %i1, 32, %i1
	or %i1, %i3, %i1
	sethi 246723, %i3
	or %i3, 783, %i4
	or %i3, 783, %i3
	sllx %i3, 32, %i3
	or %i3, %i4, %i3
	and %i1, %i3, %i1
	and %i2, %i3, %i2
	stx %i2, [%i0]
	stx %i1, [%fp+2015]
	ldx [%i0], %i0
	ldx [%fp+2015], %i1
	add %i0, %i1, %i0
	stx %i0, [%fp+2007]
	ldx [%fp+2007], %i0
	srlx %i0, 32, %i1
	add %i0, %i1, %i0
	st %i0, [%fp+2003]
	ld [%fp+2003], %i0
	srl %i0, 16, %i1
	add %i0, %i1, %i0
	st %i0, [%fp+2003]
	ld [%fp+2003], %i0
	srl %i0, 8, %i1
	add %i0, %i1, %i0
	and %i0, 255, %i0
	srl %i0, 0, %i0
	ret
	restore
.Lfunc_end160:
	.size	__popcountti2, .Lfunc_end160-__popcountti2
                                        ! -- End function
	.globl	__powidf2                       ! -- Begin function __powidf2
	.p2align	2
	.type	__powidf2,@function
__powidf2:                              ! @__powidf2
! %bb.0:
	save %sp, -208, %sp
                                        ! kill: def $i2 killed $i0
                                        ! kill: def $i2 killed $i1
	stx %i0, [%fp+2039]
	st %i1, [%fp+2035]
	ld [%fp+2035], %i0
	srl %i0, 31, %i0
	st %i0, [%fp+2031]
	sethi 0, %i0
	or %i0, 0, %i1
	sethi 1047552, %i0
	or %i0, 0, %i0
	sllx %i0, 32, %i0
	or %i0, %i1, %i0
	ba .LBB161_1
	stx %i0, [%fp+2023]
.LBB161_1:                              ! =>This Inner Loop Header: Depth=1
	add %fp, 2035, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB161_3
	nop
	ba .LBB161_2
	nop
.LBB161_2:                              !   in Loop: Header=BB161_1 Depth=1
	ldx [%fp+2039], %o1
	call __muldf3
	ldx [%fp+2023], %o0
	ba .LBB161_3
	stx %o0, [%fp+2023]
.LBB161_3:                              !   in Loop: Header=BB161_1 Depth=1
	ld [%fp+2035], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i0
	sra %i0, 1, %i0
	st %i0, [%fp+2035]
	ld [%fp+2035], %i0
	cmp	%i0, 0
	bne %icc, .LBB161_5
	nop
	ba .LBB161_4
	nop
.LBB161_4:
	ba .LBB161_6
	nop
.LBB161_5:                              !   in Loop: Header=BB161_1 Depth=1
	ldx [%fp+2039], %o1
	call __muldf3
	mov	%o1, %o0
	ba .LBB161_1
	stx %o0, [%fp+2039]
.LBB161_6:
	ld [%fp+2031], %i0
	cmp	%i0, 0
	be %icc, .LBB161_8
	nop
	ba .LBB161_7
	nop
.LBB161_7:
	ldx [%fp+2023], %o1
	sethi 0, %i0
	or %i0, 0, %i1
	sethi 1047552, %i0
	or %i0, 0, %i0
	sllx %i0, 32, %i0
	call __divdf3
	or %i0, %i1, %o0
	ba .LBB161_9
	stx %o0, [%fp+2015]
.LBB161_8:
	ldx [%fp+2023], %i0
	ba .LBB161_9
	stx %i0, [%fp+2015]
.LBB161_9:
	ldx [%fp+2015], %i0                     ! 8-byte Folded Reload
	ret
	restore
.Lfunc_end161:
	.size	__powidf2, .Lfunc_end161-__powidf2
                                        ! -- End function
	.globl	__powisf2                       ! -- Begin function __powisf2
	.p2align	2
	.type	__powisf2,@function
__powisf2:                              ! @__powisf2
! %bb.0:
	save %sp, -208, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+2043]
	st %i1, [%fp+2039]
	ld [%fp+2039], %i0
	srl %i0, 31, %i0
	st %i0, [%fp+2035]
	sethi 1040384, %i0
	ba .LBB162_1
	st %i0, [%fp+2031]
.LBB162_1:                              ! =>This Inner Loop Header: Depth=1
	add %fp, 2039, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB162_3
	nop
	ba .LBB162_2
	nop
.LBB162_2:                              !   in Loop: Header=BB162_1 Depth=1
	ld [%fp+2043], %o1
	call __mulsf3
	ld [%fp+2031], %o0
	ba .LBB162_3
	st %o0, [%fp+2031]
.LBB162_3:                              !   in Loop: Header=BB162_1 Depth=1
	ld [%fp+2039], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i0
	sra %i0, 1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2039], %i0
	cmp	%i0, 0
	bne %icc, .LBB162_5
	nop
	ba .LBB162_4
	nop
.LBB162_4:
	ba .LBB162_6
	nop
.LBB162_5:                              !   in Loop: Header=BB162_1 Depth=1
	ld [%fp+2043], %o1
	call __mulsf3
	mov	%o1, %o0
	ba .LBB162_1
	st %o0, [%fp+2043]
.LBB162_6:
	ld [%fp+2035], %i0
	cmp	%i0, 0
	be %icc, .LBB162_8
	nop
	ba .LBB162_7
	nop
.LBB162_7:
	ld [%fp+2031], %o1
	call __divsf3
	sethi 1040384, %o0
	ba .LBB162_9
	st %o0, [%fp+2027]
.LBB162_8:
	ld [%fp+2031], %i0
	ba .LBB162_9
	st %i0, [%fp+2027]
.LBB162_9:
	ld [%fp+2027], %i0                      ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end162:
	.size	__powisf2, .Lfunc_end162-__powisf2
                                        ! -- End function
	.globl	__ucmpdi2                       ! -- Begin function __ucmpdi2
	.p2align	2
	.type	__ucmpdi2,@function
__ucmpdi2:                              ! @__ucmpdi2
! %bb.0:
	save %sp, -176, %sp
	stx %i0, [%fp+2031]
	stx %i1, [%fp+2023]
	ldx [%fp+2031], %i0
	stx %i0, [%fp+2015]
	ldx [%fp+2023], %i0
	stx %i0, [%fp+2007]
	ld [%fp+2015], %i0
	ld [%fp+2007], %i1
	cmp	%i0, %i1
	bcc %icc, .LBB163_2
	nop
	ba .LBB163_1
	nop
.LBB163_1:
	ba .LBB163_9
	st %g0, [%fp+2043]
.LBB163_2:
	ld [%fp+2015], %i0
	ld [%fp+2007], %i1
	cmp	%i0, %i1
	bleu %icc, .LBB163_4
	nop
	ba .LBB163_3
	nop
.LBB163_3:
	mov	2, %i0
	ba .LBB163_9
	st %i0, [%fp+2043]
.LBB163_4:
	add %fp, 2015, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	add %fp, 2007, %i1
	or %i1, 4, %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	bcc %icc, .LBB163_6
	nop
	ba .LBB163_5
	nop
.LBB163_5:
	ba .LBB163_9
	st %g0, [%fp+2043]
.LBB163_6:
	add %fp, 2015, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	add %fp, 2007, %i1
	or %i1, 4, %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	bleu %icc, .LBB163_8
	nop
	ba .LBB163_7
	nop
.LBB163_7:
	mov	2, %i0
	ba .LBB163_9
	st %i0, [%fp+2043]
.LBB163_8:
	mov	1, %i0
	ba .LBB163_9
	st %i0, [%fp+2043]
.LBB163_9:
	ldsw [%fp+2043], %i0
	ret
	restore
.Lfunc_end163:
	.size	__ucmpdi2, .Lfunc_end163-__ucmpdi2
                                        ! -- End function
	.globl	__aeabi_ulcmp                   ! -- Begin function __aeabi_ulcmp
	.p2align	2
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          ! @__aeabi_ulcmp
! %bb.0:
	save %sp, -192, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	ldx [%fp+2039], %o0
	call __ucmpdi2
	ldx [%fp+2031], %o1
	add %o0, -1, %i0
	sra %i0, 0, %i0
	ret
	restore
.Lfunc_end164:
	.size	__aeabi_ulcmp, .Lfunc_end164-__aeabi_ulcmp
                                        ! -- End function
	.globl	__ucmpti2                       ! -- Begin function __ucmpti2
	.p2align	2
	.type	__ucmpti2,@function
__ucmpti2:                              ! @__ucmpti2
! %bb.0:
	save %sp, -208, %sp
	mov	%i1, %i4
                                        ! kill: def $i1 killed $i3
                                        ! kill: def $i1 killed $i2
                                        ! kill: def $i1 killed $i4
                                        ! kill: def $i1 killed $i0
	add %fp, 2015, %i1
	or %i1, 8, %i1
	stx %i4, [%i1]
	stx %i0, [%fp+2015]
	add %fp, 1999, %i0
	or %i0, 8, %i0
	stx %i3, [%i0]
	stx %i2, [%fp+1999]
	ldx [%i1], %i3
	ldx [%fp+2015], %i1
	add %fp, 1983, %i2
	or %i2, 8, %i2
	stx %i3, [%i2]
	stx %i1, [%fp+1983]
	ldx [%i0], %i2
	ldx [%fp+1999], %i0
	add %fp, 1967, %i1
	or %i1, 8, %i1
	stx %i2, [%i1]
	stx %i0, [%fp+1967]
	ldx [%fp+1983], %i0
	ldx [%fp+1967], %i1
	cmp	%i0, %i1
	bcc %xcc, .LBB165_2
	nop
	ba .LBB165_1
	nop
.LBB165_1:
	ba .LBB165_9
	st %g0, [%fp+2043]
.LBB165_2:
	ldx [%fp+1983], %i0
	ldx [%fp+1967], %i1
	cmp	%i0, %i1
	bleu %xcc, .LBB165_4
	nop
	ba .LBB165_3
	nop
.LBB165_3:
	mov	2, %i0
	ba .LBB165_9
	st %i0, [%fp+2043]
.LBB165_4:
	add %fp, 1983, %i0
	or %i0, 8, %i0
	ldx [%i0], %i0
	add %fp, 1967, %i1
	or %i1, 8, %i1
	ldx [%i1], %i1
	cmp	%i0, %i1
	bcc %xcc, .LBB165_6
	nop
	ba .LBB165_5
	nop
.LBB165_5:
	ba .LBB165_9
	st %g0, [%fp+2043]
.LBB165_6:
	add %fp, 1983, %i0
	or %i0, 8, %i0
	ldx [%i0], %i0
	add %fp, 1967, %i1
	or %i1, 8, %i1
	ldx [%i1], %i1
	cmp	%i0, %i1
	bleu %xcc, .LBB165_8
	nop
	ba .LBB165_7
	nop
.LBB165_7:
	mov	2, %i0
	ba .LBB165_9
	st %i0, [%fp+2043]
.LBB165_8:
	mov	1, %i0
	ba .LBB165_9
	st %i0, [%fp+2043]
.LBB165_9:
	ldsw [%fp+2043], %i0
	ret
	restore
.Lfunc_end165:
	.size	__ucmpti2, .Lfunc_end165-__ucmpti2
                                        ! -- End function
	.type	l64a.s,@object                  ! @l64a.s
	.local	l64a.s
	.comm	l64a.s,7,1
	.type	digits,@object                  ! @digits
	.section	.rodata,"a",@progbits
digits:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	digits, 65

	.type	seed,@object                    ! @seed
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
