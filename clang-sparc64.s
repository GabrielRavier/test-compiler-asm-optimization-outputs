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
	sethi %hi(.L__profc_make_ti), %i0
	add %i0, %lo(.L__profc_make_ti), %i1
	sethi %hh(.L__profc_make_ti), %i0
	add %i0, %hm(.L__profc_make_ti), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_make_tu), %i0
	add %i0, %lo(.L__profc_make_tu), %i1
	sethi %hh(.L__profc_make_tu), %i0
	add %i0, %hm(.L__profc_make_tu), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_memmove), %i0
	add %i0, %lo(.L__profc_memmove), %i1
	sethi %hh(.L__profc_memmove), %i0
	add %i0, %hm(.L__profc_memmove), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_memmove), %i0
	add %i0, %lo(.L__profc_memmove), %i1
	sethi %hh(.L__profc_memmove), %i0
	add %i0, %hm(.L__profc_memmove), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_memmove), %i0
	add %i0, %lo(.L__profc_memmove), %i1
	sethi %hh(.L__profc_memmove), %i0
	add %i0, %hm(.L__profc_memmove), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_memmove), %i0
	add %i0, %lo(.L__profc_memmove), %i1
	sethi %hh(.L__profc_memmove), %i0
	add %i0, %hm(.L__profc_memmove), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	ba .LBB2_8
	stx %i1, [%i0+24]
.LBB2_8:                                ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	brz %i0, .LBB2_11
	nop
	ba .LBB2_9
	nop
.LBB2_9:                                !   in Loop: Header=BB2_8 Depth=1
	sethi %hi(.L__profc_memmove), %i0
	add %i0, %lo(.L__profc_memmove), %i1
	sethi %hh(.L__profc_memmove), %i0
	add %i0, %hm(.L__profc_memmove), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
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
	sethi %hi(.L__profc_memccpy), %i0
	add %i0, %lo(.L__profc_memccpy), %i1
	sethi %hh(.L__profc_memccpy), %i0
	add %i0, %hm(.L__profc_memccpy), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	brz %i0, .LBB3_4
	st %i1, [%fp+1987]
	ba .LBB3_2
	nop
.LBB3_2:                                !   in Loop: Header=BB3_1 Depth=1
	sethi %hi(.L__profc_memccpy), %i0
	add %i0, %lo(.L__profc_memccpy), %i1
	sethi %hh(.L__profc_memccpy), %i0
	add %i0, %hm(.L__profc_memccpy), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+1991], %i0
	ldub [%i0], %i1
	ldx [%fp+1999], %i0
	stb %i1, [%i0]
	ld [%fp+2019], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	movne	%icc, 1, %i0
	st %i0, [%fp+1983]                      ! 4-byte Folded Spill
	cmp	%i1, %i2
	be %icc, .LBB3_4
	st %i0, [%fp+1987]
	ba .LBB3_3
	nop
.LBB3_3:                                !   in Loop: Header=BB3_1 Depth=1
	ld [%fp+1983], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_memccpy), %i1
	add %i1, %lo(.L__profc_memccpy), %i2
	sethi %hh(.L__profc_memccpy), %i1
	add %i1, %hm(.L__profc_memccpy), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+24], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+24]
	ba .LBB3_4
	st %i0, [%fp+1987]
.LBB3_4:                                !   in Loop: Header=BB3_1 Depth=1
	ld [%fp+1987], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB3_7
	nop
	ba .LBB3_5
	nop
.LBB3_5:                                !   in Loop: Header=BB3_1 Depth=1
	sethi %hi(.L__profc_memccpy), %i0
	add %i0, %lo(.L__profc_memccpy), %i1
	sethi %hh(.L__profc_memccpy), %i0
	add %i0, %hm(.L__profc_memccpy), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	ba .LBB3_6
	stx %i1, [%i0+8]
.LBB3_6:                                !   in Loop: Header=BB3_1 Depth=1
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
.LBB3_7:
	ldx [%fp+2007], %i0
	brz %i0, .LBB3_9
	nop
	ba .LBB3_8
	nop
.LBB3_8:
	sethi %hi(.L__profc_memccpy), %i0
	add %i0, %lo(.L__profc_memccpy), %i1
	sethi %hh(.L__profc_memccpy), %i0
	add %i0, %hm(.L__profc_memccpy), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
	ldx [%fp+1999], %i0
	add %i0, 1, %i0
	ba .LBB3_10
	stx %i0, [%fp+2039]
.LBB3_9:
	ba .LBB3_10
	stx %g0, [%fp+2039]
.LBB3_10:
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
	sethi %hi(.L__profc_memchr), %i0
	add %i0, %lo(.L__profc_memchr), %i1
	sethi %hh(.L__profc_memchr), %i0
	add %i0, %hm(.L__profc_memchr), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	brz %i0, .LBB4_4
	st %i1, [%fp+2011]
	ba .LBB4_2
	nop
.LBB4_2:                                !   in Loop: Header=BB4_1 Depth=1
	sethi %hi(.L__profc_memchr), %i0
	add %i0, %lo(.L__profc_memchr), %i1
	sethi %hh(.L__profc_memchr), %i0
	add %i0, %hm(.L__profc_memchr), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+2015], %i0
	ldub [%i0], %i1
	ld [%fp+2035], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	movne	%icc, 1, %i0
	st %i0, [%fp+2007]                      ! 4-byte Folded Spill
	cmp	%i1, %i2
	be %icc, .LBB4_4
	st %i0, [%fp+2011]
	ba .LBB4_3
	nop
.LBB4_3:                                !   in Loop: Header=BB4_1 Depth=1
	ld [%fp+2007], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_memchr), %i1
	add %i1, %lo(.L__profc_memchr), %i2
	sethi %hh(.L__profc_memchr), %i1
	add %i1, %hm(.L__profc_memchr), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+24], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+24]
	ba .LBB4_4
	st %i0, [%fp+2011]
.LBB4_4:                                !   in Loop: Header=BB4_1 Depth=1
	ld [%fp+2011], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB4_7
	nop
	ba .LBB4_5
	nop
.LBB4_5:                                !   in Loop: Header=BB4_1 Depth=1
	sethi %hi(.L__profc_memchr), %i0
	add %i0, %lo(.L__profc_memchr), %i1
	sethi %hh(.L__profc_memchr), %i0
	add %i0, %hm(.L__profc_memchr), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	ba .LBB4_6
	stx %i1, [%i0+8]
.LBB4_6:                                !   in Loop: Header=BB4_1 Depth=1
	ldx [%fp+2015], %i0
	add %i0, 1, %i0
	stx %i0, [%fp+2015]
	ldx [%fp+2023], %i0
	add %i0, -1, %i0
	ba .LBB4_1
	stx %i0, [%fp+2023]
.LBB4_7:
	ldx [%fp+2023], %i0
	brz %i0, .LBB4_9
	nop
	ba .LBB4_8
	nop
.LBB4_8:
	sethi %hi(.L__profc_memchr), %i0
	add %i0, %lo(.L__profc_memchr), %i1
	sethi %hh(.L__profc_memchr), %i0
	add %i0, %hm(.L__profc_memchr), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
	ldx [%fp+2015], %i0
	ba .LBB4_10
	stx %i0, [%fp+1999]
.LBB4_9:
	mov	%g0, %i0
	ba .LBB4_10
	stx %i0, [%fp+1999]
.LBB4_10:
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
	save %sp, -192, %sp
	stx %i0, [%fp+2039]
	stx %i1, [%fp+2031]
	stx %i2, [%fp+2023]
	sethi %hi(.L__profc_memcmp), %i0
	add %i0, %lo(.L__profc_memcmp), %i1
	sethi %hh(.L__profc_memcmp), %i0
	add %i0, %hm(.L__profc_memcmp), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ldx [%fp+2039], %i0
	stx %i0, [%fp+2015]
	ldx [%fp+2031], %i0
	ba .LBB5_1
	stx %i0, [%fp+2007]
.LBB5_1:                                ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	mov	%g0, %i1
	brz %i0, .LBB5_4
	st %i1, [%fp+2003]
	ba .LBB5_2
	nop
.LBB5_2:                                !   in Loop: Header=BB5_1 Depth=1
	sethi %hi(.L__profc_memcmp), %i0
	add %i0, %lo(.L__profc_memcmp), %i1
	sethi %hh(.L__profc_memcmp), %i0
	add %i0, %hm(.L__profc_memcmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+2015], %i0
	ldub [%i0], %i1
	ldx [%fp+2007], %i0
	ldub [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	move	%icc, 1, %i0
	st %i0, [%fp+1999]                      ! 4-byte Folded Spill
	cmp	%i1, %i2
	bne %icc, .LBB5_4
	st %i0, [%fp+2003]
	ba .LBB5_3
	nop
.LBB5_3:                                !   in Loop: Header=BB5_1 Depth=1
	ld [%fp+1999], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_memcmp), %i1
	add %i1, %lo(.L__profc_memcmp), %i2
	sethi %hh(.L__profc_memcmp), %i1
	add %i1, %hm(.L__profc_memcmp), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+24], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+24]
	ba .LBB5_4
	st %i0, [%fp+2003]
.LBB5_4:                                !   in Loop: Header=BB5_1 Depth=1
	ld [%fp+2003], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB5_7
	nop
	ba .LBB5_5
	nop
.LBB5_5:                                !   in Loop: Header=BB5_1 Depth=1
	sethi %hi(.L__profc_memcmp), %i0
	add %i0, %lo(.L__profc_memcmp), %i1
	sethi %hh(.L__profc_memcmp), %i0
	add %i0, %hm(.L__profc_memcmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	ba .LBB5_6
	stx %i1, [%i0+8]
.LBB5_6:                                !   in Loop: Header=BB5_1 Depth=1
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
.LBB5_7:
	ldx [%fp+2023], %i0
	brz %i0, .LBB5_9
	nop
	ba .LBB5_8
	nop
.LBB5_8:
	sethi %hi(.L__profc_memcmp), %i0
	add %i0, %lo(.L__profc_memcmp), %i1
	sethi %hh(.L__profc_memcmp), %i0
	add %i0, %hm(.L__profc_memcmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
	ldx [%fp+2015], %i0
	ldub [%i0], %i0
	ldx [%fp+2007], %i1
	ldub [%i1], %i1
	sub %i0, %i1, %i0
	ba .LBB5_10
	st %i0, [%fp+1995]
.LBB5_9:
	mov	%g0, %i0
	ba .LBB5_10
	st %i0, [%fp+1995]
.LBB5_10:
	ld [%fp+1995], %i0                      ! 4-byte Folded Reload
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
	sethi %hi(.L__profc_memcpy), %i0
	add %i0, %lo(.L__profc_memcpy), %i1
	sethi %hh(.L__profc_memcpy), %i0
	add %i0, %hm(.L__profc_memcpy), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_memcpy), %i0
	add %i0, %lo(.L__profc_memcpy), %i1
	sethi %hh(.L__profc_memcpy), %i0
	add %i0, %hm(.L__profc_memcpy), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_memrchr), %i0
	add %i0, %lo(.L__profc_memrchr), %i1
	sethi %hh(.L__profc_memrchr), %i0
	add %i0, %hm(.L__profc_memrchr), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_memrchr), %i0
	add %i0, %lo(.L__profc_memrchr), %i1
	sethi %hh(.L__profc_memrchr), %i0
	add %i0, %hm(.L__profc_memrchr), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_memrchr), %i0
	add %i0, %lo(.L__profc_memrchr), %i1
	sethi %hh(.L__profc_memrchr), %i0
	add %i0, %hm(.L__profc_memrchr), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_memset), %i0
	add %i0, %lo(.L__profc_memset), %i1
	sethi %hh(.L__profc_memset), %i0
	add %i0, %hm(.L__profc_memset), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_memset), %i0
	add %i0, %lo(.L__profc_memset), %i1
	sethi %hh(.L__profc_memset), %i0
	add %i0, %hm(.L__profc_memset), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	stx %i1, [%fp+2031]
	sethi %hi(.L__profc_stpcpy), %i0
	add %i0, %lo(.L__profc_stpcpy), %i1
	sethi %hh(.L__profc_stpcpy), %i0
	add %i0, %hm(.L__profc_stpcpy), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	ba .LBB9_1
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_stpcpy), %i0
	add %i0, %lo(.L__profc_stpcpy), %i1
	sethi %hh(.L__profc_stpcpy), %i0
	add %i0, %hm(.L__profc_stpcpy), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	ba .LBB9_3
	stx %i1, [%i0+8]
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
	save %sp, -160, %sp
                                        ! kill: def $i2 killed $i1
	stx %i0, [%fp+2039]
	st %i1, [%fp+2035]
	sethi %hi(.L__profc_strchrnul), %i0
	add %i0, %lo(.L__profc_strchrnul), %i1
	sethi %hh(.L__profc_strchrnul), %i0
	add %i0, %hm(.L__profc_strchrnul), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	be %icc, .LBB10_4
	st %i0, [%fp+2031]
	ba .LBB10_2
	nop
.LBB10_2:                               !   in Loop: Header=BB10_1 Depth=1
	sethi %hi(.L__profc_strchrnul), %i0
	add %i0, %lo(.L__profc_strchrnul), %i1
	sethi %hh(.L__profc_strchrnul), %i0
	add %i0, %hm(.L__profc_strchrnul), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+2039], %i0
	ldub [%i0], %i1
	ld [%fp+2035], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	movne	%icc, 1, %i0
	st %i0, [%fp+2027]                      ! 4-byte Folded Spill
	cmp	%i1, %i2
	be %icc, .LBB10_4
	st %i0, [%fp+2031]
	ba .LBB10_3
	nop
.LBB10_3:                               !   in Loop: Header=BB10_1 Depth=1
	ld [%fp+2027], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_strchrnul), %i1
	add %i1, %lo(.L__profc_strchrnul), %i2
	sethi %hh(.L__profc_strchrnul), %i1
	add %i1, %hm(.L__profc_strchrnul), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+24], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+24]
	ba .LBB10_4
	st %i0, [%fp+2031]
.LBB10_4:                               !   in Loop: Header=BB10_1 Depth=1
	ld [%fp+2031], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB10_7
	nop
	ba .LBB10_5
	nop
.LBB10_5:                               !   in Loop: Header=BB10_1 Depth=1
	sethi %hi(.L__profc_strchrnul), %i0
	add %i0, %lo(.L__profc_strchrnul), %i1
	sethi %hh(.L__profc_strchrnul), %i0
	add %i0, %hm(.L__profc_strchrnul), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	ba .LBB10_6
	stx %i1, [%i0+8]
.LBB10_6:                               !   in Loop: Header=BB10_1 Depth=1
	ldx [%fp+2039], %i0
	add %i0, 1, %i0
	ba .LBB10_1
	stx %i0, [%fp+2039]
.LBB10_7:
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
	st %i1, [%fp+2027]
	sethi %hi(.L__profc_strchr), %i0
	add %i0, %lo(.L__profc_strchr), %i1
	sethi %hh(.L__profc_strchr), %i0
	add %i0, %hm(.L__profc_strchr), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	ba .LBB11_2
	stx %i2, [%i0+%i1]
.LBB11_1:                               !   in Loop: Header=BB11_2 Depth=1
	sethi %hi(.L__profc_strchr), %i0
	add %i0, %lo(.L__profc_strchr), %i1
	sethi %hh(.L__profc_strchr), %i0
	add %i0, %hm(.L__profc_strchr), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	ba .LBB11_2
	stx %i1, [%i0+8]
.LBB11_2:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2031], %i0
	ldsb [%i0], %i0
	ld [%fp+2027], %i1
	cmp	%i0, %i1
	bne %icc, .LBB11_4
	nop
	ba .LBB11_3
	nop
.LBB11_3:
	sethi %hi(.L__profc_strchr), %i0
	add %i0, %lo(.L__profc_strchr), %i1
	sethi %hh(.L__profc_strchr), %i0
	add %i0, %hm(.L__profc_strchr), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+2031], %i0
	ba .LBB11_7
	stx %i0, [%fp+2039]
.LBB11_4:                               !   in Loop: Header=BB11_2 Depth=1
	ba .LBB11_5
	nop
.LBB11_5:                               !   in Loop: Header=BB11_2 Depth=1
	ldx [%fp+2031], %i0
	add %i0, 1, %i1
	stx %i1, [%fp+2031]
	ldub [%i0], %i0
	cmp	%i0, 0
	bne %icc, .LBB11_1
	nop
	ba .LBB11_6
	nop
.LBB11_6:
	ba .LBB11_7
	stx %g0, [%fp+2039]
.LBB11_7:
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
	stx %i1, [%fp+2031]
	sethi %hi(.L__profc_strcmp), %i0
	add %i0, %lo(.L__profc_strcmp), %i1
	sethi %hh(.L__profc_strcmp), %i0
	add %i0, %hm(.L__profc_strcmp), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	ba .LBB12_1
	stx %i2, [%i0+%i1]
.LBB12_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	ldsb [%i0], %i1
	ldx [%fp+2031], %i0
	ldsb [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bne %icc, .LBB12_4
	st %i0, [%fp+2027]
	ba .LBB12_2
	nop
.LBB12_2:                               !   in Loop: Header=BB12_1 Depth=1
	sethi %hi(.L__profc_strcmp), %i0
	add %i0, %lo(.L__profc_strcmp), %i1
	sethi %hh(.L__profc_strcmp), %i0
	add %i0, %hm(.L__profc_strcmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+2039], %i0
	ldsb [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	movne	%icc, 1, %i0
	st %i0, [%fp+2023]                      ! 4-byte Folded Spill
	cmp	%i1, 0
	be %icc, .LBB12_4
	st %i0, [%fp+2027]
	ba .LBB12_3
	nop
.LBB12_3:                               !   in Loop: Header=BB12_1 Depth=1
	ld [%fp+2023], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_strcmp), %i1
	add %i1, %lo(.L__profc_strcmp), %i2
	sethi %hh(.L__profc_strcmp), %i1
	add %i1, %hm(.L__profc_strcmp), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+24], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+24]
	ba .LBB12_4
	st %i0, [%fp+2027]
.LBB12_4:                               !   in Loop: Header=BB12_1 Depth=1
	ld [%fp+2027], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB12_7
	nop
	ba .LBB12_5
	nop
.LBB12_5:                               !   in Loop: Header=BB12_1 Depth=1
	sethi %hi(.L__profc_strcmp), %i0
	add %i0, %lo(.L__profc_strcmp), %i1
	sethi %hh(.L__profc_strcmp), %i0
	add %i0, %hm(.L__profc_strcmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	ba .LBB12_6
	stx %i1, [%i0+8]
.LBB12_6:                               !   in Loop: Header=BB12_1 Depth=1
	ldx [%fp+2039], %i0
	add %i0, 1, %i0
	stx %i0, [%fp+2039]
	ldx [%fp+2031], %i0
	add %i0, 1, %i0
	ba .LBB12_1
	stx %i0, [%fp+2031]
.LBB12_7:
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
	sethi %hi(.L__profc_strlen), %i0
	add %i0, %lo(.L__profc_strlen), %i1
	sethi %hh(.L__profc_strlen), %i0
	add %i0, %hm(.L__profc_strlen), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_strlen), %i0
	add %i0, %lo(.L__profc_strlen), %i1
	sethi %hh(.L__profc_strlen), %i0
	add %i0, %hm(.L__profc_strlen), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	ba .LBB13_3
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_strncmp), %i0
	add %i0, %lo(.L__profc_strncmp), %i1
	sethi %hh(.L__profc_strncmp), %i0
	add %i0, %hm(.L__profc_strncmp), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_strncmp), %i0
	add %i0, %lo(.L__profc_strncmp), %i1
	sethi %hh(.L__profc_strncmp), %i0
	add %i0, %hm(.L__profc_strncmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ba .LBB14_14
	st %g0, [%fp+2043]
.LBB14_2:
	ba .LBB14_3
	nop
.LBB14_3:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2007], %i0
	ldub [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be %icc, .LBB14_10
	st %i0, [%fp+1995]
	ba .LBB14_4
	nop
.LBB14_4:                               !   in Loop: Header=BB14_3 Depth=1
	sethi %hi(.L__profc_strncmp), %i0
	add %i0, %lo(.L__profc_strncmp), %i1
	sethi %hh(.L__profc_strncmp), %i0
	add %i0, %hm(.L__profc_strncmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+56], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+56]
	ldx [%fp+1999], %i0
	ldub [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be %icc, .LBB14_10
	st %i0, [%fp+1995]
	ba .LBB14_5
	nop
.LBB14_5:                               !   in Loop: Header=BB14_3 Depth=1
	sethi %hi(.L__profc_strncmp), %i0
	add %i0, %lo(.L__profc_strncmp), %i1
	sethi %hh(.L__profc_strncmp), %i0
	add %i0, %hm(.L__profc_strncmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+64], %i1
	add %i1, 1, %i1
	ba .LBB14_6
	stx %i1, [%i0+64]
.LBB14_6:                               !   in Loop: Header=BB14_3 Depth=1
	sethi %hi(.L__profc_strncmp), %i0
	add %i0, %lo(.L__profc_strncmp), %i1
	sethi %hh(.L__profc_strncmp), %i0
	add %i0, %hm(.L__profc_strncmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
	ldx [%fp+2015], %i0
	mov	%g0, %i1
	brz %i0, .LBB14_10
	st %i1, [%fp+1995]
	ba .LBB14_7
	nop
.LBB14_7:                               !   in Loop: Header=BB14_3 Depth=1
	sethi %hi(.L__profc_strncmp), %i0
	add %i0, %lo(.L__profc_strncmp), %i1
	sethi %hh(.L__profc_strncmp), %i0
	add %i0, %hm(.L__profc_strncmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	ba .LBB14_8
	stx %i1, [%i0+48]
.LBB14_8:                               !   in Loop: Header=BB14_3 Depth=1
	sethi %hi(.L__profc_strncmp), %i0
	add %i0, %lo(.L__profc_strncmp), %i1
	sethi %hh(.L__profc_strncmp), %i0
	add %i0, %hm(.L__profc_strncmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
	ldx [%fp+2007], %i0
	ldub [%i0], %i1
	ldx [%fp+1999], %i0
	ldub [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	move	%icc, 1, %i0
	st %i0, [%fp+1991]                      ! 4-byte Folded Spill
	cmp	%i1, %i2
	bne %icc, .LBB14_10
	st %i0, [%fp+1995]
	ba .LBB14_9
	nop
.LBB14_9:                               !   in Loop: Header=BB14_3 Depth=1
	ld [%fp+1991], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_strncmp), %i1
	add %i1, %lo(.L__profc_strncmp), %i2
	sethi %hh(.L__profc_strncmp), %i1
	add %i1, %hm(.L__profc_strncmp), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+32], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+32]
	ba .LBB14_10
	st %i0, [%fp+1995]
.LBB14_10:                              !   in Loop: Header=BB14_3 Depth=1
	ld [%fp+1995], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB14_13
	nop
	ba .LBB14_11
	nop
.LBB14_11:                              !   in Loop: Header=BB14_3 Depth=1
	sethi %hi(.L__profc_strncmp), %i0
	add %i0, %lo(.L__profc_strncmp), %i1
	sethi %hh(.L__profc_strncmp), %i0
	add %i0, %hm(.L__profc_strncmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	ba .LBB14_12
	stx %i1, [%i0+16]
.LBB14_12:                              !   in Loop: Header=BB14_3 Depth=1
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
.LBB14_13:
	ldx [%fp+2007], %i0
	ldub [%i0], %i0
	ldx [%fp+1999], %i1
	ldub [%i1], %i1
	sub %i0, %i1, %i0
	ba .LBB14_14
	st %i0, [%fp+2043]
.LBB14_14:
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
	sethi %hi(.L__profc_swab), %i0
	add %i0, %lo(.L__profc_swab), %i1
	sethi %hh(.L__profc_swab), %i0
	add %i0, %hm(.L__profc_swab), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_swab), %i0
	add %i0, %lo(.L__profc_swab), %i1
	sethi %hh(.L__profc_swab), %i0
	add %i0, %hm(.L__profc_swab), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_isalpha), %i0
	add %i0, %lo(.L__profc_isalpha), %i1
	sethi %hh(.L__profc_isalpha), %i0
	add %i0, %hm(.L__profc_isalpha), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_isascii), %i0
	add %i0, %lo(.L__profc_isascii), %i1
	sethi %hh(.L__profc_isascii), %i0
	add %i0, %hm(.L__profc_isascii), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_isblank), %i0
	add %i0, %lo(.L__profc_isblank), %i1
	sethi %hh(.L__profc_isblank), %i0
	add %i0, %hm(.L__profc_isblank), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ld [%fp+2043], %i1
	mov	1, %i0
	cmp	%i1, 32
	be %icc, .LBB18_3
	st %i0, [%fp+2039]
	ba .LBB18_1
	nop
.LBB18_1:
	sethi %hi(.L__profc_isblank), %i0
	add %i0, %lo(.L__profc_isblank), %i1
	sethi %hh(.L__profc_isblank), %i0
	add %i0, %hm(.L__profc_isblank), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ld [%fp+2043], %i1
	mov	%g0, %i0
	cmp	%i1, 9
	move	%icc, 1, %i0
	st %i0, [%fp+2035]                      ! 4-byte Folded Spill
	cmp	%i1, 9
	be %icc, .LBB18_3
	st %i0, [%fp+2039]
	ba .LBB18_2
	nop
.LBB18_2:
	ld [%fp+2035], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_isblank), %i1
	add %i1, %lo(.L__profc_isblank), %i2
	sethi %hh(.L__profc_isblank), %i1
	add %i1, %hm(.L__profc_isblank), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+16], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+16]
	ba .LBB18_3
	st %i0, [%fp+2039]
.LBB18_3:
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
	sethi %hi(.L__profc_iscntrl), %i0
	add %i0, %lo(.L__profc_iscntrl), %i1
	sethi %hh(.L__profc_iscntrl), %i0
	add %i0, %hm(.L__profc_iscntrl), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ld [%fp+2043], %i1
	mov	1, %i0
	cmp	%i1, 32
	bcs %icc, .LBB19_3
	st %i0, [%fp+2039]
	ba .LBB19_1
	nop
.LBB19_1:
	sethi %hi(.L__profc_iscntrl), %i0
	add %i0, %lo(.L__profc_iscntrl), %i1
	sethi %hh(.L__profc_iscntrl), %i0
	add %i0, %hm(.L__profc_iscntrl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ld [%fp+2043], %i1
	mov	%g0, %i0
	cmp	%i1, 127
	move	%icc, 1, %i0
	st %i0, [%fp+2035]                      ! 4-byte Folded Spill
	cmp	%i1, 127
	be %icc, .LBB19_3
	st %i0, [%fp+2039]
	ba .LBB19_2
	nop
.LBB19_2:
	ld [%fp+2035], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_iscntrl), %i1
	add %i1, %lo(.L__profc_iscntrl), %i2
	sethi %hh(.L__profc_iscntrl), %i1
	add %i1, %hm(.L__profc_iscntrl), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+16], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+16]
	ba .LBB19_3
	st %i0, [%fp+2039]
.LBB19_3:
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
	sethi %hi(.L__profc_isdigit), %i0
	add %i0, %lo(.L__profc_isdigit), %i1
	sethi %hh(.L__profc_isdigit), %i0
	add %i0, %hm(.L__profc_isdigit), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_isgraph), %i0
	add %i0, %lo(.L__profc_isgraph), %i1
	sethi %hh(.L__profc_isgraph), %i0
	add %i0, %hm(.L__profc_isgraph), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_islower), %i0
	add %i0, %lo(.L__profc_islower), %i1
	sethi %hh(.L__profc_islower), %i0
	add %i0, %hm(.L__profc_islower), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_isprint), %i0
	add %i0, %lo(.L__profc_isprint), %i1
	sethi %hh(.L__profc_isprint), %i0
	add %i0, %hm(.L__profc_isprint), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_isspace), %i0
	add %i0, %lo(.L__profc_isspace), %i1
	sethi %hh(.L__profc_isspace), %i0
	add %i0, %hm(.L__profc_isspace), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ld [%fp+2043], %i1
	mov	1, %i0
	cmp	%i1, 32
	be %icc, .LBB24_3
	st %i0, [%fp+2039]
	ba .LBB24_1
	nop
.LBB24_1:
	sethi %hi(.L__profc_isspace), %i0
	add %i0, %lo(.L__profc_isspace), %i1
	sethi %hh(.L__profc_isspace), %i0
	add %i0, %hm(.L__profc_isspace), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ld [%fp+2043], %i0
	add %i0, -9, %i1
	mov	%g0, %i0
	cmp	%i1, 5
	movcs	%icc, 1, %i0
	st %i0, [%fp+2035]                      ! 4-byte Folded Spill
	cmp	%i1, 5
	bcs %icc, .LBB24_3
	st %i0, [%fp+2039]
	ba .LBB24_2
	nop
.LBB24_2:
	ld [%fp+2035], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_isspace), %i1
	add %i1, %lo(.L__profc_isspace), %i2
	sethi %hh(.L__profc_isspace), %i1
	add %i1, %hm(.L__profc_isspace), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+16], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+16]
	ba .LBB24_3
	st %i0, [%fp+2039]
.LBB24_3:
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
	sethi %hi(.L__profc_isupper), %i0
	add %i0, %lo(.L__profc_isupper), %i1
	sethi %hh(.L__profc_isupper), %i0
	add %i0, %hm(.L__profc_isupper), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_iswcntrl), %i0
	add %i0, %lo(.L__profc_iswcntrl), %i1
	sethi %hh(.L__profc_iswcntrl), %i0
	add %i0, %hm(.L__profc_iswcntrl), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ld [%fp+2043], %i1
	mov	1, %i0
	cmp	%i1, 32
	bcs %icc, .LBB26_7
	st %i0, [%fp+2039]
	ba .LBB26_1
	nop
.LBB26_1:
	sethi %hi(.L__profc_iswcntrl), %i0
	add %i0, %lo(.L__profc_iswcntrl), %i1
	sethi %hh(.L__profc_iswcntrl), %i0
	add %i0, %hm(.L__profc_iswcntrl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
	ld [%fp+2043], %i0
	add %i0, -127, %i1
	mov	1, %i0
	cmp	%i1, 33
	bcs %icc, .LBB26_7
	st %i0, [%fp+2039]
	ba .LBB26_2
	nop
.LBB26_2:
	sethi %hi(.L__profc_iswcntrl), %i0
	add %i0, %lo(.L__profc_iswcntrl), %i1
	sethi %hh(.L__profc_iswcntrl), %i0
	add %i0, %hm(.L__profc_iswcntrl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	ba .LBB26_3
	stx %i1, [%i0+48]
.LBB26_3:
	sethi %hi(.L__profc_iswcntrl), %i0
	add %i0, %lo(.L__profc_iswcntrl), %i1
	sethi %hh(.L__profc_iswcntrl), %i0
	add %i0, %hm(.L__profc_iswcntrl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
	ld [%fp+2043], %i0
	sethi 4194295, %i1
	or %i1, 984, %i1
	add %i0, %i1, %i1
	mov	1, %i0
	cmp	%i1, 2
	bcs %icc, .LBB26_7
	st %i0, [%fp+2039]
	ba .LBB26_4
	nop
.LBB26_4:
	sethi %hi(.L__profc_iswcntrl), %i0
	add %i0, %lo(.L__profc_iswcntrl), %i1
	sethi %hh(.L__profc_iswcntrl), %i0
	add %i0, %hm(.L__profc_iswcntrl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	ba .LBB26_5
	stx %i1, [%i0+32]
.LBB26_5:
	sethi %hi(.L__profc_iswcntrl), %i0
	add %i0, %lo(.L__profc_iswcntrl), %i1
	sethi %hh(.L__profc_iswcntrl), %i0
	add %i0, %hm(.L__profc_iswcntrl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ld [%fp+2043], %i0
	sethi 4194240, %i1
	or %i1, 7, %i1
	add %i0, %i1, %i1
	mov	%g0, %i0
	cmp	%i1, 3
	movcs	%icc, 1, %i0
	st %i0, [%fp+2035]                      ! 4-byte Folded Spill
	cmp	%i1, 3
	bcs %icc, .LBB26_7
	st %i0, [%fp+2039]
	ba .LBB26_6
	nop
.LBB26_6:
	ld [%fp+2035], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_iswcntrl), %i1
	add %i1, %lo(.L__profc_iswcntrl), %i2
	sethi %hh(.L__profc_iswcntrl), %i1
	add %i1, %hm(.L__profc_iswcntrl), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+16], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+16]
	ba .LBB26_7
	st %i0, [%fp+2039]
.LBB26_7:
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
	sethi %hi(.L__profc_iswdigit), %i0
	add %i0, %lo(.L__profc_iswdigit), %i1
	sethi %hh(.L__profc_iswdigit), %i0
	add %i0, %hm(.L__profc_iswdigit), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_iswprint), %i0
	add %i0, %lo(.L__profc_iswprint), %i1
	sethi %hh(.L__profc_iswprint), %i0
	add %i0, %hm(.L__profc_iswprint), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ld [%fp+2039], %i0
	cmp	%i0, 254
	bgu %icc, .LBB28_2
	nop
	ba .LBB28_1
	nop
.LBB28_1:
	sethi %hi(.L__profc_iswprint), %i0
	add %i0, %lo(.L__profc_iswprint), %i1
	sethi %hh(.L__profc_iswprint), %i0
	add %i0, %hm(.L__profc_iswprint), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ld [%fp+2039], %i0
	add %i0, 1, %i0
	and %i0, 127, %i1
	mov	%g0, %i0
	cmp	%i1, 32
	movg	%icc, 1, %i0
	ba .LBB28_13
	st %i0, [%fp+2043]
.LBB28_2:
	ld [%fp+2039], %i0
	sethi 8, %i1
	or %i1, 40, %i1
	cmp	%i0, %i1
	bcs %icc, .LBB28_7
	nop
	ba .LBB28_3
	nop
.LBB28_3:
	sethi %hi(.L__profc_iswprint), %i0
	add %i0, %lo(.L__profc_iswprint), %i1
	sethi %hh(.L__profc_iswprint), %i0
	add %i0, %hm(.L__profc_iswprint), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
	ld [%fp+2039], %i0
	sethi 4194295, %i1
	or %i1, 982, %i1
	add %i0, %i1, %i0
	sethi 45, %i1
	or %i1, 982, %i1
	cmp	%i0, %i1
	bcs %icc, .LBB28_7
	nop
	ba .LBB28_4
	nop
.LBB28_4:
	sethi %hi(.L__profc_iswprint), %i0
	add %i0, %lo(.L__profc_iswprint), %i1
	sethi %hh(.L__profc_iswprint), %i0
	add %i0, %hm(.L__profc_iswprint), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	ba .LBB28_5
	stx %i1, [%i0+48]
.LBB28_5:
	sethi %hi(.L__profc_iswprint), %i0
	add %i0, %lo(.L__profc_iswprint), %i1
	sethi %hh(.L__profc_iswprint), %i0
	add %i0, %hm(.L__profc_iswprint), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
	ld [%fp+2039], %i0
	sethi 4194248, %i1
	add %i0, %i1, %i0
	sethi 7, %i1
	or %i1, 1017, %i1
	cmp	%i0, %i1
	bcs %icc, .LBB28_7
	nop
	ba .LBB28_6
	nop
.LBB28_6:
	sethi %hi(.L__profc_iswprint), %i0
	add %i0, %lo(.L__profc_iswprint), %i1
	sethi %hh(.L__profc_iswprint), %i0
	add %i0, %hm(.L__profc_iswprint), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	ba .LBB28_8
	stx %i1, [%i0+32]
.LBB28_7:
	sethi %hi(.L__profc_iswprint), %i0
	add %i0, %lo(.L__profc_iswprint), %i1
	sethi %hh(.L__profc_iswprint), %i0
	add %i0, %hm(.L__profc_iswprint), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	mov	1, %i0
	ba .LBB28_13
	st %i0, [%fp+2043]
.LBB28_8:
	ld [%fp+2039], %i0
	sethi 4194240, %i1
	or %i1, 4, %i1
	add %i0, %i1, %i0
	sethi 1024, %i1
	or %i1, 3, %i1
	cmp	%i0, %i1
	bgu %icc, .LBB28_11
	nop
	ba .LBB28_9
	nop
.LBB28_9:
	sethi %hi(.L__profc_iswprint), %i0
	add %i0, %lo(.L__profc_iswprint), %i1
	sethi %hh(.L__profc_iswprint), %i0
	add %i0, %hm(.L__profc_iswprint), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+64], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+64]
	ld [%fp+2039], %i0
	sethi 63, %i1
	or %i1, 1022, %i1
	and %i0, %i1, %i0
	cmp	%i0, %i1
	be %icc, .LBB28_11
	nop
	ba .LBB28_10
	nop
.LBB28_10:
	sethi %hi(.L__profc_iswprint), %i0
	add %i0, %lo(.L__profc_iswprint), %i1
	sethi %hh(.L__profc_iswprint), %i0
	add %i0, %hm(.L__profc_iswprint), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+72], %i1
	add %i1, 1, %i1
	ba .LBB28_12
	stx %i1, [%i0+72]
.LBB28_11:
	sethi %hi(.L__profc_iswprint), %i0
	add %i0, %lo(.L__profc_iswprint), %i1
	sethi %hh(.L__profc_iswprint), %i0
	add %i0, %hm(.L__profc_iswprint), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+56], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+56]
	ba .LBB28_13
	st %g0, [%fp+2043]
.LBB28_12:
	mov	1, %i0
	ba .LBB28_13
	st %i0, [%fp+2043]
.LBB28_13:
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
	sethi %hi(.L__profc_iswxdigit), %i0
	add %i0, %lo(.L__profc_iswxdigit), %i1
	sethi %hh(.L__profc_iswxdigit), %i0
	add %i0, %hm(.L__profc_iswxdigit), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ld [%fp+2043], %i0
	add %i0, -48, %i1
	mov	1, %i0
	cmp	%i1, 10
	bcs %icc, .LBB29_3
	st %i0, [%fp+2039]
	ba .LBB29_1
	nop
.LBB29_1:
	sethi %hi(.L__profc_iswxdigit), %i0
	add %i0, %lo(.L__profc_iswxdigit), %i1
	sethi %hh(.L__profc_iswxdigit), %i0
	add %i0, %hm(.L__profc_iswxdigit), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ld [%fp+2043], %i0
	or %i0, 32, %i0
	add %i0, -97, %i1
	mov	%g0, %i0
	cmp	%i1, 6
	movcs	%icc, 1, %i0
	st %i0, [%fp+2035]                      ! 4-byte Folded Spill
	cmp	%i1, 6
	bcs %icc, .LBB29_3
	st %i0, [%fp+2039]
	ba .LBB29_2
	nop
.LBB29_2:
	ld [%fp+2035], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_iswxdigit), %i1
	add %i1, %lo(.L__profc_iswxdigit), %i2
	sethi %hh(.L__profc_iswxdigit), %i1
	add %i1, %hm(.L__profc_iswxdigit), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+16], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+16]
	ba .LBB29_3
	st %i0, [%fp+2039]
.LBB29_3:
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
	sethi %hi(.L__profc_toascii), %i0
	add %i0, %lo(.L__profc_toascii), %i1
	sethi %hh(.L__profc_toascii), %i0
	add %i0, %hm(.L__profc_toascii), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_fdim), %i0
	add %i0, %lo(.L__profc_fdim), %i1
	sethi %hh(.L__profc_fdim), %i0
	add %i0, %hm(.L__profc_fdim), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_fdim), %i0
	add %i0, %lo(.L__profc_fdim), %i1
	sethi %hh(.L__profc_fdim), %i0
	add %i0, %hm(.L__profc_fdim), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_fdim), %i0
	add %i0, %lo(.L__profc_fdim), %i1
	sethi %hh(.L__profc_fdim), %i0
	add %i0, %hm(.L__profc_fdim), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_fdim), %i0
	add %i0, %lo(.L__profc_fdim), %i1
	sethi %hh(.L__profc_fdim), %i0
	add %i0, %hm(.L__profc_fdim), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
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
	sethi %hi(.L__profc_fdimf), %i0
	add %i0, %lo(.L__profc_fdimf), %i1
	sethi %hh(.L__profc_fdimf), %i0
	add %i0, %hm(.L__profc_fdimf), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_fdimf), %i0
	add %i0, %lo(.L__profc_fdimf), %i1
	sethi %hh(.L__profc_fdimf), %i0
	add %i0, %hm(.L__profc_fdimf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_fdimf), %i0
	add %i0, %lo(.L__profc_fdimf), %i1
	sethi %hh(.L__profc_fdimf), %i0
	add %i0, %hm(.L__profc_fdimf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_fdimf), %i0
	add %i0, %lo(.L__profc_fdimf), %i1
	sethi %hh(.L__profc_fdimf), %i0
	add %i0, %hm(.L__profc_fdimf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
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
	sethi %hi(.L__profc_fmax), %i0
	add %i0, %lo(.L__profc_fmax), %i1
	sethi %hh(.L__profc_fmax), %i0
	add %i0, %hm(.L__profc_fmax), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_fmax), %i0
	add %i0, %lo(.L__profc_fmax), %i1
	sethi %hh(.L__profc_fmax), %i0
	add %i0, %hm(.L__profc_fmax), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_fmax), %i0
	add %i0, %lo(.L__profc_fmax), %i1
	sethi %hh(.L__profc_fmax), %i0
	add %i0, %hm(.L__profc_fmax), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_fmax), %i0
	add %i0, %lo(.L__profc_fmax), %i1
	sethi %hh(.L__profc_fmax), %i0
	add %i0, %hm(.L__profc_fmax), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
	ldx [%fp+2031], %i0
	cmp	%i0, -1
	bg %xcc, .LBB33_7
	nop
	ba .LBB33_6
	nop
.LBB33_6:
	sethi %hi(.L__profc_fmax), %i0
	add %i0, %lo(.L__profc_fmax), %i1
	sethi %hh(.L__profc_fmax), %i0
	add %i0, %hm(.L__profc_fmax), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
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
	sethi %hi(.L__profc_fmax), %i0
	add %i0, %lo(.L__profc_fmax), %i1
	sethi %hh(.L__profc_fmax), %i0
	add %i0, %hm(.L__profc_fmax), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
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
	sethi %hi(.L__profc_fmaxf), %i0
	add %i0, %lo(.L__profc_fmaxf), %i1
	sethi %hh(.L__profc_fmaxf), %i0
	add %i0, %hm(.L__profc_fmaxf), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_fmaxf), %i0
	add %i0, %lo(.L__profc_fmaxf), %i1
	sethi %hh(.L__profc_fmaxf), %i0
	add %i0, %hm(.L__profc_fmaxf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_fmaxf), %i0
	add %i0, %lo(.L__profc_fmaxf), %i1
	sethi %hh(.L__profc_fmaxf), %i0
	add %i0, %hm(.L__profc_fmaxf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_fmaxf), %i0
	add %i0, %lo(.L__profc_fmaxf), %i1
	sethi %hh(.L__profc_fmaxf), %i0
	add %i0, %hm(.L__profc_fmaxf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
	ld [%fp+2039], %i0
	cmp	%i0, -1
	bg %icc, .LBB34_7
	nop
	ba .LBB34_6
	nop
.LBB34_6:
	sethi %hi(.L__profc_fmaxf), %i0
	add %i0, %lo(.L__profc_fmaxf), %i1
	sethi %hh(.L__profc_fmaxf), %i0
	add %i0, %hm(.L__profc_fmaxf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
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
	sethi %hi(.L__profc_fmaxf), %i0
	add %i0, %lo(.L__profc_fmaxf), %i1
	sethi %hh(.L__profc_fmaxf), %i0
	add %i0, %hm(.L__profc_fmaxf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
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
	sethi %hi(.L__profc_fmaxl), %i1
	add %i1, %lo(.L__profc_fmaxl), %i2
	sethi %hh(.L__profc_fmaxl), %i1
	add %i1, %hm(.L__profc_fmaxl), %i1
	sllx %i1, 32, %i1
	ldx [%i1+%i2], %i3
	add %i3, 1, %i3
	stx %i3, [%i1+%i2]
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
	sethi %hi(.L__profc_fmaxl), %i0
	add %i0, %lo(.L__profc_fmaxl), %i1
	sethi %hh(.L__profc_fmaxl), %i0
	add %i0, %hm(.L__profc_fmaxl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_fmaxl), %i0
	add %i0, %lo(.L__profc_fmaxl), %i1
	sethi %hh(.L__profc_fmaxl), %i0
	add %i0, %hm(.L__profc_fmaxl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_fmaxl), %i0
	add %i0, %lo(.L__profc_fmaxl), %i1
	sethi %hh(.L__profc_fmaxl), %i0
	add %i0, %hm(.L__profc_fmaxl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
	ldx [%fp+2015], %i0
	cmp	%i0, -1
	bg %xcc, .LBB35_7
	nop
	ba .LBB35_6
	nop
.LBB35_6:
	sethi %hi(.L__profc_fmaxl), %i0
	add %i0, %lo(.L__profc_fmaxl), %i1
	sethi %hh(.L__profc_fmaxl), %i0
	add %i0, %hm(.L__profc_fmaxl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
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
	sethi %hi(.L__profc_fmaxl), %i0
	add %i0, %lo(.L__profc_fmaxl), %i1
	sethi %hh(.L__profc_fmaxl), %i0
	add %i0, %hm(.L__profc_fmaxl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
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
	sethi %hi(.L__profc_fmin), %i0
	add %i0, %lo(.L__profc_fmin), %i1
	sethi %hh(.L__profc_fmin), %i0
	add %i0, %hm(.L__profc_fmin), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_fmin), %i0
	add %i0, %lo(.L__profc_fmin), %i1
	sethi %hh(.L__profc_fmin), %i0
	add %i0, %hm(.L__profc_fmin), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_fmin), %i0
	add %i0, %lo(.L__profc_fmin), %i1
	sethi %hh(.L__profc_fmin), %i0
	add %i0, %hm(.L__profc_fmin), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_fmin), %i0
	add %i0, %lo(.L__profc_fmin), %i1
	sethi %hh(.L__profc_fmin), %i0
	add %i0, %hm(.L__profc_fmin), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
	ldx [%fp+2031], %i0
	cmp	%i0, -1
	bg %xcc, .LBB36_7
	nop
	ba .LBB36_6
	nop
.LBB36_6:
	sethi %hi(.L__profc_fmin), %i0
	add %i0, %lo(.L__profc_fmin), %i1
	sethi %hh(.L__profc_fmin), %i0
	add %i0, %hm(.L__profc_fmin), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
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
	sethi %hi(.L__profc_fmin), %i0
	add %i0, %lo(.L__profc_fmin), %i1
	sethi %hh(.L__profc_fmin), %i0
	add %i0, %hm(.L__profc_fmin), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
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
	sethi %hi(.L__profc_fminf), %i0
	add %i0, %lo(.L__profc_fminf), %i1
	sethi %hh(.L__profc_fminf), %i0
	add %i0, %hm(.L__profc_fminf), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_fminf), %i0
	add %i0, %lo(.L__profc_fminf), %i1
	sethi %hh(.L__profc_fminf), %i0
	add %i0, %hm(.L__profc_fminf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_fminf), %i0
	add %i0, %lo(.L__profc_fminf), %i1
	sethi %hh(.L__profc_fminf), %i0
	add %i0, %hm(.L__profc_fminf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_fminf), %i0
	add %i0, %lo(.L__profc_fminf), %i1
	sethi %hh(.L__profc_fminf), %i0
	add %i0, %hm(.L__profc_fminf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
	ld [%fp+2039], %i0
	cmp	%i0, -1
	bg %icc, .LBB37_7
	nop
	ba .LBB37_6
	nop
.LBB37_6:
	sethi %hi(.L__profc_fminf), %i0
	add %i0, %lo(.L__profc_fminf), %i1
	sethi %hh(.L__profc_fminf), %i0
	add %i0, %hm(.L__profc_fminf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
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
	sethi %hi(.L__profc_fminf), %i0
	add %i0, %lo(.L__profc_fminf), %i1
	sethi %hh(.L__profc_fminf), %i0
	add %i0, %hm(.L__profc_fminf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
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
	sethi %hi(.L__profc_fminl), %i1
	add %i1, %lo(.L__profc_fminl), %i2
	sethi %hh(.L__profc_fminl), %i1
	add %i1, %hm(.L__profc_fminl), %i1
	sllx %i1, 32, %i1
	ldx [%i1+%i2], %i3
	add %i3, 1, %i3
	stx %i3, [%i1+%i2]
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
	sethi %hi(.L__profc_fminl), %i0
	add %i0, %lo(.L__profc_fminl), %i1
	sethi %hh(.L__profc_fminl), %i0
	add %i0, %hm(.L__profc_fminl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_fminl), %i0
	add %i0, %lo(.L__profc_fminl), %i1
	sethi %hh(.L__profc_fminl), %i0
	add %i0, %hm(.L__profc_fminl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_fminl), %i0
	add %i0, %lo(.L__profc_fminl), %i1
	sethi %hh(.L__profc_fminl), %i0
	add %i0, %hm(.L__profc_fminl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
	ldx [%fp+2015], %i0
	cmp	%i0, -1
	bg %xcc, .LBB38_7
	nop
	ba .LBB38_6
	nop
.LBB38_6:
	sethi %hi(.L__profc_fminl), %i0
	add %i0, %lo(.L__profc_fminl), %i1
	sethi %hh(.L__profc_fminl), %i0
	add %i0, %hm(.L__profc_fminl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
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
	sethi %hi(.L__profc_fminl), %i0
	add %i0, %lo(.L__profc_fminl), %i1
	sethi %hh(.L__profc_fminl), %i0
	add %i0, %hm(.L__profc_fminl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
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
	sethi %hi(.L__profc_l64a), %i0
	add %i0, %lo(.L__profc_l64a), %i1
	sethi %hh(.L__profc_l64a), %i0
	add %i0, %hm(.L__profc_l64a), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_l64a), %i0
	add %i0, %lo(.L__profc_l64a), %i1
	sethi %hh(.L__profc_l64a), %i0
	add %i0, %hm(.L__profc_l64a), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_srand), %i0
	add %i0, %lo(.L__profc_srand), %i1
	sethi %hh(.L__profc_srand), %i0
	add %i0, %hm(.L__profc_srand), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_rand), %i0
	add %i0, %lo(.L__profc_rand), %i1
	sethi %hh(.L__profc_rand), %i0
	add %i0, %hm(.L__profc_rand), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_insque), %i0
	add %i0, %lo(.L__profc_insque), %i1
	sethi %hh(.L__profc_insque), %i0
	add %i0, %hm(.L__profc_insque), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_insque), %i0
	add %i0, %lo(.L__profc_insque), %i1
	sethi %hh(.L__profc_insque), %i0
	add %i0, %hm(.L__profc_insque), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_insque), %i0
	add %i0, %lo(.L__profc_insque), %i1
	sethi %hh(.L__profc_insque), %i0
	add %i0, %hm(.L__profc_insque), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_remque), %i0
	add %i0, %lo(.L__profc_remque), %i1
	sethi %hh(.L__profc_remque), %i0
	add %i0, %hm(.L__profc_remque), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ldx [%fp+2039], %i0
	stx %i0, [%fp+2031]
	ldx [%fp+2031], %i0
	ldx [%i0], %i0
	brz %i0, .LBB43_2
	nop
	ba .LBB43_1
	nop
.LBB43_1:
	sethi %hi(.L__profc_remque), %i0
	add %i0, %lo(.L__profc_remque), %i1
	sethi %hh(.L__profc_remque), %i0
	add %i0, %hm(.L__profc_remque), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_remque), %i0
	add %i0, %lo(.L__profc_remque), %i1
	sethi %hh(.L__profc_remque), %i0
	add %i0, %hm(.L__profc_remque), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_lsearch), %i0
	add %i0, %lo(.L__profc_lsearch), %i1
	sethi %hh(.L__profc_lsearch), %i0
	add %i0, %hm(.L__profc_lsearch), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_lsearch), %i0
	add %i0, %lo(.L__profc_lsearch), %i1
	sethi %hh(.L__profc_lsearch), %i0
	add %i0, %hm(.L__profc_lsearch), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_lsearch), %i0
	add %i0, %lo(.L__profc_lsearch), %i1
	sethi %hh(.L__profc_lsearch), %i0
	add %i0, %hm(.L__profc_lsearch), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_lfind), %i0
	add %i0, %lo(.L__profc_lfind), %i1
	sethi %hh(.L__profc_lfind), %i0
	add %i0, %hm(.L__profc_lfind), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_lfind), %i0
	add %i0, %lo(.L__profc_lfind), %i1
	sethi %hh(.L__profc_lfind), %i0
	add %i0, %hm(.L__profc_lfind), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_lfind), %i0
	add %i0, %lo(.L__profc_lfind), %i1
	sethi %hh(.L__profc_lfind), %i0
	add %i0, %hm(.L__profc_lfind), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_abs), %i0
	add %i0, %lo(.L__profc_abs), %i1
	sethi %hh(.L__profc_abs), %i0
	add %i0, %hm(.L__profc_abs), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ld [%fp+2043], %i0
	cmp	%i0, 1
	bl %icc, .LBB46_2
	nop
	ba .LBB46_1
	nop
.LBB46_1:
	sethi %hi(.L__profc_abs), %i0
	add %i0, %lo(.L__profc_abs), %i1
	sethi %hh(.L__profc_abs), %i0
	add %i0, %hm(.L__profc_abs), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_atoi), %i0
	add %i0, %lo(.L__profc_atoi), %i1
	sethi %hh(.L__profc_atoi), %i0
	add %i0, %hm(.L__profc_atoi), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_atoi), %i0
	add %i0, %lo(.L__profc_atoi), %i1
	sethi %hh(.L__profc_atoi), %i0
	add %i0, %hm(.L__profc_atoi), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	bne %icc, .LBB47_8
	nop
	ba .LBB47_5
	nop
.LBB47_5:
	sethi %hi(.L__profc_atoi), %i0
	add %i0, %lo(.L__profc_atoi), %i1
	sethi %hh(.L__profc_atoi), %i0
	add %i0, %hm(.L__profc_atoi), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
	mov	1, %i0
	ba .LBB47_7
	st %i0, [%fp+2031]
.LBB47_6:
	sethi %hi(.L__profc_atoi), %i0
	add %i0, %lo(.L__profc_atoi), %i1
	sethi %hh(.L__profc_atoi), %i0
	add %i0, %hm(.L__profc_atoi), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	ba .LBB47_7
	stx %i1, [%i0+32]
.LBB47_7:
	ldx [%fp+2039], %i0
	add %i0, 1, %i0
	ba .LBB47_8
	stx %i0, [%fp+2039]
.LBB47_8:
	sethi %hi(.L__profc_atoi), %i0
	add %i0, %lo(.L__profc_atoi), %i1
	sethi %hh(.L__profc_atoi), %i0
	add %i0, %hm(.L__profc_atoi), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	ba .LBB47_9
	stx %i1, [%i0+16]
.LBB47_9:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	call isdigit
	ldsb [%i0], %o0
	cmp	%o0, 0
	be %icc, .LBB47_11
	nop
	ba .LBB47_10
	nop
.LBB47_10:                              !   in Loop: Header=BB47_9 Depth=1
	sethi %hi(.L__profc_atoi), %i0
	add %i0, %lo(.L__profc_atoi), %i1
	sethi %hh(.L__profc_atoi), %i0
	add %i0, %hm(.L__profc_atoi), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
	ldsw [%fp+2035], %i0
	mulx %i0, 10, %i0
	ldx [%fp+2039], %i1
	add %i1, 1, %i2
	stx %i2, [%fp+2039]
	ldsb [%i1], %i1
	sub %i0, %i1, %i0
	add %i0, 48, %i0
	ba .LBB47_9
	st %i0, [%fp+2035]
.LBB47_11:
	ld [%fp+2031], %i0
	cmp	%i0, 0
	be %icc, .LBB47_13
	nop
	ba .LBB47_12
	nop
.LBB47_12:
	sethi %hi(.L__profc_atoi), %i0
	add %i0, %lo(.L__profc_atoi), %i1
	sethi %hh(.L__profc_atoi), %i0
	add %i0, %hm(.L__profc_atoi), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+48]
	ld [%fp+2035], %i0
	ba .LBB47_14
	st %i0, [%fp+2023]
.LBB47_13:
	ld [%fp+2035], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB47_14
	st %i0, [%fp+2023]
.LBB47_14:
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
	sethi %hi(.L__profc_atol), %i0
	add %i0, %lo(.L__profc_atol), %i1
	sethi %hh(.L__profc_atol), %i0
	add %i0, %hm(.L__profc_atol), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_atol), %i0
	add %i0, %lo(.L__profc_atol), %i1
	sethi %hh(.L__profc_atol), %i0
	add %i0, %hm(.L__profc_atol), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	bne %icc, .LBB48_8
	nop
	ba .LBB48_5
	nop
.LBB48_5:
	sethi %hi(.L__profc_atol), %i0
	add %i0, %lo(.L__profc_atol), %i1
	sethi %hh(.L__profc_atol), %i0
	add %i0, %hm(.L__profc_atol), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
	mov	1, %i0
	ba .LBB48_7
	st %i0, [%fp+2027]
.LBB48_6:
	sethi %hi(.L__profc_atol), %i0
	add %i0, %lo(.L__profc_atol), %i1
	sethi %hh(.L__profc_atol), %i0
	add %i0, %hm(.L__profc_atol), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	ba .LBB48_7
	stx %i1, [%i0+32]
.LBB48_7:
	ldx [%fp+2039], %i0
	add %i0, 1, %i0
	ba .LBB48_8
	stx %i0, [%fp+2039]
.LBB48_8:
	sethi %hi(.L__profc_atol), %i0
	add %i0, %lo(.L__profc_atol), %i1
	sethi %hh(.L__profc_atol), %i0
	add %i0, %hm(.L__profc_atol), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	ba .LBB48_9
	stx %i1, [%i0+16]
.LBB48_9:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	call isdigit
	ldsb [%i0], %o0
	cmp	%o0, 0
	be %icc, .LBB48_11
	nop
	ba .LBB48_10
	nop
.LBB48_10:                              !   in Loop: Header=BB48_9 Depth=1
	sethi %hi(.L__profc_atol), %i0
	add %i0, %lo(.L__profc_atol), %i1
	sethi %hh(.L__profc_atol), %i0
	add %i0, %hm(.L__profc_atol), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
	ldx [%fp+2031], %i0
	mulx %i0, 10, %i0
	ldx [%fp+2039], %i1
	add %i1, 1, %i2
	stx %i2, [%fp+2039]
	ldsb [%i1], %i1
	add %i1, -48, %i1
	sra %i1, 0, %i1
	sub %i0, %i1, %i0
	ba .LBB48_9
	stx %i0, [%fp+2031]
.LBB48_11:
	ld [%fp+2027], %i0
	cmp	%i0, 0
	be %icc, .LBB48_13
	nop
	ba .LBB48_12
	nop
.LBB48_12:
	sethi %hi(.L__profc_atol), %i0
	add %i0, %lo(.L__profc_atol), %i1
	sethi %hh(.L__profc_atol), %i0
	add %i0, %hm(.L__profc_atol), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+48]
	ldx [%fp+2031], %i0
	ba .LBB48_14
	stx %i0, [%fp+2015]
.LBB48_13:
	ldx [%fp+2031], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB48_14
	stx %i0, [%fp+2015]
.LBB48_14:
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
	sethi %hi(.L__profc_atoll), %i0
	add %i0, %lo(.L__profc_atoll), %i1
	sethi %hh(.L__profc_atoll), %i0
	add %i0, %hm(.L__profc_atoll), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_atoll), %i0
	add %i0, %lo(.L__profc_atoll), %i1
	sethi %hh(.L__profc_atoll), %i0
	add %i0, %hm(.L__profc_atoll), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	bne %icc, .LBB49_8
	nop
	ba .LBB49_5
	nop
.LBB49_5:
	sethi %hi(.L__profc_atoll), %i0
	add %i0, %lo(.L__profc_atoll), %i1
	sethi %hh(.L__profc_atoll), %i0
	add %i0, %hm(.L__profc_atoll), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
	mov	1, %i0
	ba .LBB49_7
	st %i0, [%fp+2027]
.LBB49_6:
	sethi %hi(.L__profc_atoll), %i0
	add %i0, %lo(.L__profc_atoll), %i1
	sethi %hh(.L__profc_atoll), %i0
	add %i0, %hm(.L__profc_atoll), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	ba .LBB49_7
	stx %i1, [%i0+32]
.LBB49_7:
	ldx [%fp+2039], %i0
	add %i0, 1, %i0
	ba .LBB49_8
	stx %i0, [%fp+2039]
.LBB49_8:
	sethi %hi(.L__profc_atoll), %i0
	add %i0, %lo(.L__profc_atoll), %i1
	sethi %hh(.L__profc_atoll), %i0
	add %i0, %hm(.L__profc_atoll), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	ba .LBB49_9
	stx %i1, [%i0+16]
.LBB49_9:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	call isdigit
	ldsb [%i0], %o0
	cmp	%o0, 0
	be %icc, .LBB49_11
	nop
	ba .LBB49_10
	nop
.LBB49_10:                              !   in Loop: Header=BB49_9 Depth=1
	sethi %hi(.L__profc_atoll), %i0
	add %i0, %lo(.L__profc_atoll), %i1
	sethi %hh(.L__profc_atoll), %i0
	add %i0, %hm(.L__profc_atoll), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
	ldx [%fp+2031], %i0
	mulx %i0, 10, %i0
	ldx [%fp+2039], %i1
	add %i1, 1, %i2
	stx %i2, [%fp+2039]
	ldsb [%i1], %i1
	add %i1, -48, %i1
	sra %i1, 0, %i1
	sub %i0, %i1, %i0
	ba .LBB49_9
	stx %i0, [%fp+2031]
.LBB49_11:
	ld [%fp+2027], %i0
	cmp	%i0, 0
	be %icc, .LBB49_13
	nop
	ba .LBB49_12
	nop
.LBB49_12:
	sethi %hi(.L__profc_atoll), %i0
	add %i0, %lo(.L__profc_atoll), %i1
	sethi %hh(.L__profc_atoll), %i0
	add %i0, %hm(.L__profc_atoll), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+48]
	ldx [%fp+2031], %i0
	ba .LBB49_14
	stx %i0, [%fp+2015]
.LBB49_13:
	ldx [%fp+2031], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB49_14
	stx %i0, [%fp+2015]
.LBB49_14:
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
	stx %i4, [%fp+1999]
	sethi %hi(.L__profc_bsearch), %i0
	add %i0, %lo(.L__profc_bsearch), %i1
	sethi %hh(.L__profc_bsearch), %i0
	add %i0, %hm(.L__profc_bsearch), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	ba .LBB50_1
	stx %i2, [%i0+%i1]
.LBB50_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2015], %i0
	brz %i0, .LBB50_9
	nop
	ba .LBB50_2
	nop
.LBB50_2:                               !   in Loop: Header=BB50_1 Depth=1
	sethi %hi(.L__profc_bsearch), %i0
	add %i0, %lo(.L__profc_bsearch), %i1
	sethi %hh(.L__profc_bsearch), %i0
	add %i0, %hm(.L__profc_bsearch), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_bsearch), %i0
	add %i0, %lo(.L__profc_bsearch), %i1
	sethi %hh(.L__profc_bsearch), %i0
	add %i0, %hm(.L__profc_bsearch), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_bsearch), %i0
	add %i0, %lo(.L__profc_bsearch), %i1
	sethi %hh(.L__profc_bsearch), %i0
	add %i0, %hm(.L__profc_bsearch), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
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
	sethi %hi(.L__profc_bsearch_r), %i0
	add %i0, %lo(.L__profc_bsearch_r), %i1
	sethi %hh(.L__profc_bsearch_r), %i0
	add %i0, %hm(.L__profc_bsearch_r), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_bsearch_r), %i0
	add %i0, %lo(.L__profc_bsearch_r), %i1
	sethi %hh(.L__profc_bsearch_r), %i0
	add %i0, %hm(.L__profc_bsearch_r), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_bsearch_r), %i0
	add %i0, %lo(.L__profc_bsearch_r), %i1
	sethi %hh(.L__profc_bsearch_r), %i0
	add %i0, %hm(.L__profc_bsearch_r), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_bsearch_r), %i0
	add %i0, %lo(.L__profc_bsearch_r), %i1
	sethi %hh(.L__profc_bsearch_r), %i0
	add %i0, %hm(.L__profc_bsearch_r), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
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
	sethi %hi(.L__profc_div), %i0
	add %i0, %lo(.L__profc_div), %i1
	sethi %hh(.L__profc_div), %i0
	add %i0, %hm(.L__profc_div), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_imaxabs), %i0
	add %i0, %lo(.L__profc_imaxabs), %i1
	sethi %hh(.L__profc_imaxabs), %i0
	add %i0, %hm(.L__profc_imaxabs), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ldx [%fp+2039], %i0
	cmp	%i0, 1
	bl %xcc, .LBB53_2
	nop
	ba .LBB53_1
	nop
.LBB53_1:
	sethi %hi(.L__profc_imaxabs), %i0
	add %i0, %lo(.L__profc_imaxabs), %i1
	sethi %hh(.L__profc_imaxabs), %i0
	add %i0, %hm(.L__profc_imaxabs), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_imaxdiv), %i0
	add %i0, %lo(.L__profc_imaxdiv), %i1
	sethi %hh(.L__profc_imaxdiv), %i0
	add %i0, %hm(.L__profc_imaxdiv), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_labs), %i0
	add %i0, %lo(.L__profc_labs), %i1
	sethi %hh(.L__profc_labs), %i0
	add %i0, %hm(.L__profc_labs), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ldx [%fp+2039], %i0
	cmp	%i0, 1
	bl %xcc, .LBB55_2
	nop
	ba .LBB55_1
	nop
.LBB55_1:
	sethi %hi(.L__profc_labs), %i0
	add %i0, %lo(.L__profc_labs), %i1
	sethi %hh(.L__profc_labs), %i0
	add %i0, %hm(.L__profc_labs), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_ldiv), %i0
	add %i0, %lo(.L__profc_ldiv), %i1
	sethi %hh(.L__profc_ldiv), %i0
	add %i0, %hm(.L__profc_ldiv), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_llabs), %i0
	add %i0, %lo(.L__profc_llabs), %i1
	sethi %hh(.L__profc_llabs), %i0
	add %i0, %hm(.L__profc_llabs), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ldx [%fp+2039], %i0
	cmp	%i0, 1
	bl %xcc, .LBB57_2
	nop
	ba .LBB57_1
	nop
.LBB57_1:
	sethi %hi(.L__profc_llabs), %i0
	add %i0, %lo(.L__profc_llabs), %i1
	sethi %hh(.L__profc_llabs), %i0
	add %i0, %hm(.L__profc_llabs), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_lldiv), %i0
	add %i0, %lo(.L__profc_lldiv), %i1
	sethi %hh(.L__profc_lldiv), %i0
	add %i0, %hm(.L__profc_lldiv), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	st %i1, [%fp+2035]
	sethi %hi(.L__profc_wcschr), %i0
	add %i0, %lo(.L__profc_wcschr), %i1
	sethi %hh(.L__profc_wcschr), %i0
	add %i0, %hm(.L__profc_wcschr), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	ba .LBB59_1
	stx %i2, [%i0+%i1]
.LBB59_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be %icc, .LBB59_4
	st %i0, [%fp+2031]
	ba .LBB59_2
	nop
.LBB59_2:                               !   in Loop: Header=BB59_1 Depth=1
	sethi %hi(.L__profc_wcschr), %i0
	add %i0, %lo(.L__profc_wcschr), %i1
	sethi %hh(.L__profc_wcschr), %i0
	add %i0, %hm(.L__profc_wcschr), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	ld [%fp+2035], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	movne	%icc, 1, %i0
	st %i0, [%fp+2027]                      ! 4-byte Folded Spill
	cmp	%i1, %i2
	be %icc, .LBB59_4
	st %i0, [%fp+2031]
	ba .LBB59_3
	nop
.LBB59_3:                               !   in Loop: Header=BB59_1 Depth=1
	ld [%fp+2027], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_wcschr), %i1
	add %i1, %lo(.L__profc_wcschr), %i2
	sethi %hh(.L__profc_wcschr), %i1
	add %i1, %hm(.L__profc_wcschr), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+24], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+24]
	ba .LBB59_4
	st %i0, [%fp+2031]
.LBB59_4:                               !   in Loop: Header=BB59_1 Depth=1
	ld [%fp+2031], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB59_7
	nop
	ba .LBB59_5
	nop
.LBB59_5:                               !   in Loop: Header=BB59_1 Depth=1
	sethi %hi(.L__profc_wcschr), %i0
	add %i0, %lo(.L__profc_wcschr), %i1
	sethi %hh(.L__profc_wcschr), %i0
	add %i0, %hm(.L__profc_wcschr), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	ba .LBB59_6
	stx %i1, [%i0+8]
.LBB59_6:                               !   in Loop: Header=BB59_1 Depth=1
	ldx [%fp+2039], %i0
	add %i0, 4, %i0
	ba .LBB59_1
	stx %i0, [%fp+2039]
.LBB59_7:
	ldx [%fp+2039], %i0
	ld [%i0], %i0
	cmp	%i0, 0
	be %icc, .LBB59_9
	nop
	ba .LBB59_8
	nop
.LBB59_8:
	sethi %hi(.L__profc_wcschr), %i0
	add %i0, %lo(.L__profc_wcschr), %i1
	sethi %hh(.L__profc_wcschr), %i0
	add %i0, %hm(.L__profc_wcschr), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
	ldx [%fp+2039], %i0
	ba .LBB59_10
	stx %i0, [%fp+2015]
.LBB59_9:
	mov	%g0, %i0
	ba .LBB59_10
	stx %i0, [%fp+2015]
.LBB59_10:
	ldx [%fp+2015], %i0                     ! 8-byte Folded Reload
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
	stx %i1, [%fp+2031]
	sethi %hi(.L__profc_wcscmp), %i0
	add %i0, %lo(.L__profc_wcscmp), %i1
	sethi %hh(.L__profc_wcscmp), %i0
	add %i0, %hm(.L__profc_wcscmp), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	ba .LBB60_1
	stx %i2, [%i0+%i1]
.LBB60_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	ldx [%fp+2031], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bne %icc, .LBB60_6
	st %i0, [%fp+2027]
	ba .LBB60_2
	nop
.LBB60_2:                               !   in Loop: Header=BB60_1 Depth=1
	sethi %hi(.L__profc_wcscmp), %i0
	add %i0, %lo(.L__profc_wcscmp), %i1
	sethi %hh(.L__profc_wcscmp), %i0
	add %i0, %hm(.L__profc_wcscmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be %icc, .LBB60_6
	st %i0, [%fp+2027]
	ba .LBB60_3
	nop
.LBB60_3:                               !   in Loop: Header=BB60_1 Depth=1
	sethi %hi(.L__profc_wcscmp), %i0
	add %i0, %lo(.L__profc_wcscmp), %i1
	sethi %hh(.L__profc_wcscmp), %i0
	add %i0, %hm(.L__profc_wcscmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	ba .LBB60_4
	stx %i1, [%i0+40]
.LBB60_4:                               !   in Loop: Header=BB60_1 Depth=1
	sethi %hi(.L__profc_wcscmp), %i0
	add %i0, %lo(.L__profc_wcscmp), %i1
	sethi %hh(.L__profc_wcscmp), %i0
	add %i0, %hm(.L__profc_wcscmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+2031], %i0
	ld [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	movne	%icc, 1, %i0
	st %i0, [%fp+2023]                      ! 4-byte Folded Spill
	cmp	%i1, 0
	be %icc, .LBB60_6
	st %i0, [%fp+2027]
	ba .LBB60_5
	nop
.LBB60_5:                               !   in Loop: Header=BB60_1 Depth=1
	ld [%fp+2023], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_wcscmp), %i1
	add %i1, %lo(.L__profc_wcscmp), %i2
	sethi %hh(.L__profc_wcscmp), %i1
	add %i1, %hm(.L__profc_wcscmp), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+24], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+24]
	ba .LBB60_6
	st %i0, [%fp+2027]
.LBB60_6:                               !   in Loop: Header=BB60_1 Depth=1
	ld [%fp+2027], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB60_9
	nop
	ba .LBB60_7
	nop
.LBB60_7:                               !   in Loop: Header=BB60_1 Depth=1
	sethi %hi(.L__profc_wcscmp), %i0
	add %i0, %lo(.L__profc_wcscmp), %i1
	sethi %hh(.L__profc_wcscmp), %i0
	add %i0, %hm(.L__profc_wcscmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	ba .LBB60_8
	stx %i1, [%i0+8]
.LBB60_8:                               !   in Loop: Header=BB60_1 Depth=1
	ldx [%fp+2039], %i0
	add %i0, 4, %i0
	stx %i0, [%fp+2039]
	ldx [%fp+2031], %i0
	add %i0, 4, %i0
	ba .LBB60_1
	stx %i0, [%fp+2031]
.LBB60_9:
	ldx [%fp+2039], %i0
	ld [%i0], %i0
	ldx [%fp+2031], %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	bge %icc, .LBB60_11
	nop
	ba .LBB60_10
	nop
.LBB60_10:
	sethi %hi(.L__profc_wcscmp), %i0
	add %i0, %lo(.L__profc_wcscmp), %i1
	sethi %hh(.L__profc_wcscmp), %i0
	add %i0, %hm(.L__profc_wcscmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+48]
	mov	-1, %i0
	ba .LBB60_12
	st %i0, [%fp+2019]
.LBB60_11:
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	ldx [%fp+2031], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	movg	%icc, 1, %i0
	ba .LBB60_12
	st %i0, [%fp+2019]
.LBB60_12:
	ld [%fp+2019], %i0                      ! 4-byte Folded Reload
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
	sethi %hi(.L__profc_wcscpy), %i0
	add %i0, %lo(.L__profc_wcscpy), %i1
	sethi %hh(.L__profc_wcscpy), %i0
	add %i0, %hm(.L__profc_wcscpy), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_wcscpy), %i0
	add %i0, %lo(.L__profc_wcscpy), %i1
	sethi %hh(.L__profc_wcscpy), %i0
	add %i0, %hm(.L__profc_wcscpy), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	ba .LBB61_1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_wcslen), %i0
	add %i0, %lo(.L__profc_wcslen), %i1
	sethi %hh(.L__profc_wcslen), %i0
	add %i0, %hm(.L__profc_wcslen), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_wcslen), %i0
	add %i0, %lo(.L__profc_wcslen), %i1
	sethi %hh(.L__profc_wcslen), %i0
	add %i0, %hm(.L__profc_wcslen), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	ba .LBB62_3
	stx %i1, [%i0+8]
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
	stx %i2, [%fp+2023]
	sethi %hi(.L__profc_wcsncmp), %i0
	add %i0, %lo(.L__profc_wcsncmp), %i1
	sethi %hh(.L__profc_wcsncmp), %i0
	add %i0, %hm(.L__profc_wcsncmp), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	ba .LBB63_1
	stx %i2, [%i0+%i1]
.LBB63_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	mov	%g0, %i1
	brz %i0, .LBB63_8
	st %i1, [%fp+2019]
	ba .LBB63_2
	nop
.LBB63_2:                               !   in Loop: Header=BB63_1 Depth=1
	sethi %hi(.L__profc_wcsncmp), %i0
	add %i0, %lo(.L__profc_wcsncmp), %i1
	sethi %hh(.L__profc_wcsncmp), %i0
	add %i0, %hm(.L__profc_wcsncmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+48]
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	ldx [%fp+2031], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bne %icc, .LBB63_8
	st %i0, [%fp+2019]
	ba .LBB63_3
	nop
.LBB63_3:                               !   in Loop: Header=BB63_1 Depth=1
	sethi %hi(.L__profc_wcsncmp), %i0
	add %i0, %lo(.L__profc_wcsncmp), %i1
	sethi %hh(.L__profc_wcsncmp), %i0
	add %i0, %hm(.L__profc_wcsncmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+56], %i1
	add %i1, 1, %i1
	ba .LBB63_4
	stx %i1, [%i0+56]
.LBB63_4:                               !   in Loop: Header=BB63_1 Depth=1
	sethi %hi(.L__profc_wcsncmp), %i0
	add %i0, %lo(.L__profc_wcsncmp), %i1
	sethi %hh(.L__profc_wcsncmp), %i0
	add %i0, %hm(.L__profc_wcsncmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be %icc, .LBB63_8
	st %i0, [%fp+2019]
	ba .LBB63_5
	nop
.LBB63_5:                               !   in Loop: Header=BB63_1 Depth=1
	sethi %hi(.L__profc_wcsncmp), %i0
	add %i0, %lo(.L__profc_wcsncmp), %i1
	sethi %hh(.L__profc_wcsncmp), %i0
	add %i0, %hm(.L__profc_wcsncmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	ba .LBB63_6
	stx %i1, [%i0+40]
.LBB63_6:                               !   in Loop: Header=BB63_1 Depth=1
	sethi %hi(.L__profc_wcsncmp), %i0
	add %i0, %lo(.L__profc_wcsncmp), %i1
	sethi %hh(.L__profc_wcsncmp), %i0
	add %i0, %hm(.L__profc_wcsncmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+2031], %i0
	ld [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	movne	%icc, 1, %i0
	st %i0, [%fp+2015]                      ! 4-byte Folded Spill
	cmp	%i1, 0
	be %icc, .LBB63_8
	st %i0, [%fp+2019]
	ba .LBB63_7
	nop
.LBB63_7:                               !   in Loop: Header=BB63_1 Depth=1
	ld [%fp+2015], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_wcsncmp), %i1
	add %i1, %lo(.L__profc_wcsncmp), %i2
	sethi %hh(.L__profc_wcsncmp), %i1
	add %i1, %hm(.L__profc_wcsncmp), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+24], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+24]
	ba .LBB63_8
	st %i0, [%fp+2019]
.LBB63_8:                               !   in Loop: Header=BB63_1 Depth=1
	ld [%fp+2019], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB63_11
	nop
	ba .LBB63_9
	nop
.LBB63_9:                               !   in Loop: Header=BB63_1 Depth=1
	sethi %hi(.L__profc_wcsncmp), %i0
	add %i0, %lo(.L__profc_wcsncmp), %i1
	sethi %hh(.L__profc_wcsncmp), %i0
	add %i0, %hm(.L__profc_wcsncmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	ba .LBB63_10
	stx %i1, [%i0+8]
.LBB63_10:                              !   in Loop: Header=BB63_1 Depth=1
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
.LBB63_11:
	ldx [%fp+2023], %i0
	brz %i0, .LBB63_16
	nop
	ba .LBB63_12
	nop
.LBB63_12:
	sethi %hi(.L__profc_wcsncmp), %i0
	add %i0, %lo(.L__profc_wcsncmp), %i1
	sethi %hh(.L__profc_wcsncmp), %i0
	add %i0, %hm(.L__profc_wcsncmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+64], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+64]
	ldx [%fp+2039], %i0
	ld [%i0], %i0
	ldx [%fp+2031], %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	bge %icc, .LBB63_14
	nop
	ba .LBB63_13
	nop
.LBB63_13:
	sethi %hi(.L__profc_wcsncmp), %i0
	add %i0, %lo(.L__profc_wcsncmp), %i1
	sethi %hh(.L__profc_wcsncmp), %i0
	add %i0, %hm(.L__profc_wcsncmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+72], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+72]
	mov	-1, %i0
	ba .LBB63_15
	st %i0, [%fp+2011]
.LBB63_14:
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	ldx [%fp+2031], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	movg	%icc, 1, %i0
	ba .LBB63_15
	st %i0, [%fp+2011]
.LBB63_15:
	ld [%fp+2011], %i0                      ! 4-byte Folded Reload
	ba .LBB63_17
	st %i0, [%fp+2007]
.LBB63_16:
	mov	%g0, %i0
	ba .LBB63_17
	st %i0, [%fp+2007]
.LBB63_17:
	ld [%fp+2007], %i0                      ! 4-byte Folded Reload
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
	stx %i2, [%fp+2023]
	sethi %hi(.L__profc_wmemchr), %i0
	add %i0, %lo(.L__profc_wmemchr), %i1
	sethi %hh(.L__profc_wmemchr), %i0
	add %i0, %hm(.L__profc_wmemchr), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	ba .LBB64_1
	stx %i2, [%i0+%i1]
.LBB64_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	mov	%g0, %i1
	brz %i0, .LBB64_4
	st %i1, [%fp+2019]
	ba .LBB64_2
	nop
.LBB64_2:                               !   in Loop: Header=BB64_1 Depth=1
	sethi %hi(.L__profc_wmemchr), %i0
	add %i0, %lo(.L__profc_wmemchr), %i1
	sethi %hh(.L__profc_wmemchr), %i0
	add %i0, %hm(.L__profc_wmemchr), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	ld [%fp+2035], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	movne	%icc, 1, %i0
	st %i0, [%fp+2015]                      ! 4-byte Folded Spill
	cmp	%i1, %i2
	be %icc, .LBB64_4
	st %i0, [%fp+2019]
	ba .LBB64_3
	nop
.LBB64_3:                               !   in Loop: Header=BB64_1 Depth=1
	ld [%fp+2015], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_wmemchr), %i1
	add %i1, %lo(.L__profc_wmemchr), %i2
	sethi %hh(.L__profc_wmemchr), %i1
	add %i1, %hm(.L__profc_wmemchr), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+24], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+24]
	ba .LBB64_4
	st %i0, [%fp+2019]
.LBB64_4:                               !   in Loop: Header=BB64_1 Depth=1
	ld [%fp+2019], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB64_7
	nop
	ba .LBB64_5
	nop
.LBB64_5:                               !   in Loop: Header=BB64_1 Depth=1
	sethi %hi(.L__profc_wmemchr), %i0
	add %i0, %lo(.L__profc_wmemchr), %i1
	sethi %hh(.L__profc_wmemchr), %i0
	add %i0, %hm(.L__profc_wmemchr), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	ba .LBB64_6
	stx %i1, [%i0+8]
.LBB64_6:                               !   in Loop: Header=BB64_1 Depth=1
	ldx [%fp+2023], %i0
	add %i0, -1, %i0
	stx %i0, [%fp+2023]
	ldx [%fp+2039], %i0
	add %i0, 4, %i0
	ba .LBB64_1
	stx %i0, [%fp+2039]
.LBB64_7:
	ldx [%fp+2023], %i0
	brz %i0, .LBB64_9
	nop
	ba .LBB64_8
	nop
.LBB64_8:
	sethi %hi(.L__profc_wmemchr), %i0
	add %i0, %lo(.L__profc_wmemchr), %i1
	sethi %hh(.L__profc_wmemchr), %i0
	add %i0, %hm(.L__profc_wmemchr), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
	ldx [%fp+2039], %i0
	ba .LBB64_10
	stx %i0, [%fp+2007]
.LBB64_9:
	mov	%g0, %i0
	ba .LBB64_10
	stx %i0, [%fp+2007]
.LBB64_10:
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
	stx %i2, [%fp+2023]
	sethi %hi(.L__profc_wmemcmp), %i0
	add %i0, %lo(.L__profc_wmemcmp), %i1
	sethi %hh(.L__profc_wmemcmp), %i0
	add %i0, %hm(.L__profc_wmemcmp), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	ba .LBB65_1
	stx %i2, [%i0+%i1]
.LBB65_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	mov	%g0, %i1
	brz %i0, .LBB65_4
	st %i1, [%fp+2019]
	ba .LBB65_2
	nop
.LBB65_2:                               !   in Loop: Header=BB65_1 Depth=1
	sethi %hi(.L__profc_wmemcmp), %i0
	add %i0, %lo(.L__profc_wmemcmp), %i1
	sethi %hh(.L__profc_wmemcmp), %i0
	add %i0, %hm(.L__profc_wmemcmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	ldx [%fp+2031], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	move	%icc, 1, %i0
	st %i0, [%fp+2015]                      ! 4-byte Folded Spill
	cmp	%i1, %i2
	bne %icc, .LBB65_4
	st %i0, [%fp+2019]
	ba .LBB65_3
	nop
.LBB65_3:                               !   in Loop: Header=BB65_1 Depth=1
	ld [%fp+2015], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_wmemcmp), %i1
	add %i1, %lo(.L__profc_wmemcmp), %i2
	sethi %hh(.L__profc_wmemcmp), %i1
	add %i1, %hm(.L__profc_wmemcmp), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+24], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+24]
	ba .LBB65_4
	st %i0, [%fp+2019]
.LBB65_4:                               !   in Loop: Header=BB65_1 Depth=1
	ld [%fp+2019], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB65_7
	nop
	ba .LBB65_5
	nop
.LBB65_5:                               !   in Loop: Header=BB65_1 Depth=1
	sethi %hi(.L__profc_wmemcmp), %i0
	add %i0, %lo(.L__profc_wmemcmp), %i1
	sethi %hh(.L__profc_wmemcmp), %i0
	add %i0, %hm(.L__profc_wmemcmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	ba .LBB65_6
	stx %i1, [%i0+8]
.LBB65_6:                               !   in Loop: Header=BB65_1 Depth=1
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
.LBB65_7:
	ldx [%fp+2023], %i0
	brz %i0, .LBB65_12
	nop
	ba .LBB65_8
	nop
.LBB65_8:
	sethi %hi(.L__profc_wmemcmp), %i0
	add %i0, %lo(.L__profc_wmemcmp), %i1
	sethi %hh(.L__profc_wmemcmp), %i0
	add %i0, %hm(.L__profc_wmemcmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
	ldx [%fp+2039], %i0
	ld [%i0], %i0
	ldx [%fp+2031], %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	bge %icc, .LBB65_10
	nop
	ba .LBB65_9
	nop
.LBB65_9:
	sethi %hi(.L__profc_wmemcmp), %i0
	add %i0, %lo(.L__profc_wmemcmp), %i1
	sethi %hh(.L__profc_wmemcmp), %i0
	add %i0, %hm(.L__profc_wmemcmp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
	mov	-1, %i0
	ba .LBB65_11
	st %i0, [%fp+2011]
.LBB65_10:
	ldx [%fp+2039], %i0
	ld [%i0], %i1
	ldx [%fp+2031], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	movg	%icc, 1, %i0
	ba .LBB65_11
	st %i0, [%fp+2011]
.LBB65_11:
	ld [%fp+2011], %i0                      ! 4-byte Folded Reload
	ba .LBB65_13
	st %i0, [%fp+2007]
.LBB65_12:
	mov	%g0, %i0
	ba .LBB65_13
	st %i0, [%fp+2007]
.LBB65_13:
	ld [%fp+2007], %i0                      ! 4-byte Folded Reload
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
	sethi %hi(.L__profc_wmemcpy), %i0
	add %i0, %lo(.L__profc_wmemcpy), %i1
	sethi %hh(.L__profc_wmemcpy), %i0
	add %i0, %hm(.L__profc_wmemcpy), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_wmemcpy), %i0
	add %i0, %lo(.L__profc_wmemcpy), %i1
	sethi %hh(.L__profc_wmemcpy), %i0
	add %i0, %hm(.L__profc_wmemcpy), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_wmemmove), %i0
	add %i0, %lo(.L__profc_wmemmove), %i1
	sethi %hh(.L__profc_wmemmove), %i0
	add %i0, %hm(.L__profc_wmemmove), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_wmemmove), %i0
	add %i0, %lo(.L__profc_wmemmove), %i1
	sethi %hh(.L__profc_wmemmove), %i0
	add %i0, %hm(.L__profc_wmemmove), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_wmemmove), %i0
	add %i0, %lo(.L__profc_wmemmove), %i1
	sethi %hh(.L__profc_wmemmove), %i0
	add %i0, %hm(.L__profc_wmemmove), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	ba .LBB67_4
	stx %i1, [%i0+16]
.LBB67_4:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2015], %i0
	add %i0, -1, %i1
	brz %i0, .LBB67_6
	stx %i1, [%fp+2015]
	ba .LBB67_5
	nop
.LBB67_5:                               !   in Loop: Header=BB67_4 Depth=1
	sethi %hi(.L__profc_wmemmove), %i0
	add %i0, %lo(.L__profc_wmemmove), %i1
	sethi %hh(.L__profc_wmemmove), %i0
	add %i0, %hm(.L__profc_wmemmove), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
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
	sethi %hi(.L__profc_wmemmove), %i0
	add %i0, %lo(.L__profc_wmemmove), %i1
	sethi %hh(.L__profc_wmemmove), %i0
	add %i0, %hm(.L__profc_wmemmove), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
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
	sethi %hi(.L__profc_wmemset), %i0
	add %i0, %lo(.L__profc_wmemset), %i1
	sethi %hh(.L__profc_wmemset), %i0
	add %i0, %hm(.L__profc_wmemset), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_wmemset), %i0
	add %i0, %lo(.L__profc_wmemset), %i1
	sethi %hh(.L__profc_wmemset), %i0
	add %i0, %hm(.L__profc_wmemset), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_bcopy), %i0
	add %i0, %lo(.L__profc_bcopy), %i1
	sethi %hh(.L__profc_bcopy), %i0
	add %i0, %hm(.L__profc_bcopy), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_bcopy), %i0
	add %i0, %lo(.L__profc_bcopy), %i1
	sethi %hh(.L__profc_bcopy), %i0
	add %i0, %hm(.L__profc_bcopy), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_bcopy), %i0
	add %i0, %lo(.L__profc_bcopy), %i1
	sethi %hh(.L__profc_bcopy), %i0
	add %i0, %hm(.L__profc_bcopy), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_bcopy), %i0
	add %i0, %lo(.L__profc_bcopy), %i1
	sethi %hh(.L__profc_bcopy), %i0
	add %i0, %hm(.L__profc_bcopy), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	ba .LBB69_8
	stx %i1, [%i0+24]
.LBB69_8:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	brz %i0, .LBB69_11
	nop
	ba .LBB69_9
	nop
.LBB69_9:                               !   in Loop: Header=BB69_8 Depth=1
	sethi %hi(.L__profc_bcopy), %i0
	add %i0, %lo(.L__profc_bcopy), %i1
	sethi %hh(.L__profc_bcopy), %i0
	add %i0, %hm(.L__profc_bcopy), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
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
	sethi %hi(.L__profc_rotl64), %i0
	add %i0, %lo(.L__profc_rotl64), %i1
	sethi %hh(.L__profc_rotl64), %i0
	add %i0, %hm(.L__profc_rotl64), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_rotr64), %i0
	add %i0, %lo(.L__profc_rotr64), %i1
	sethi %hh(.L__profc_rotr64), %i0
	add %i0, %hm(.L__profc_rotr64), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_rotl32), %i0
	add %i0, %lo(.L__profc_rotl32), %i1
	sethi %hh(.L__profc_rotl32), %i0
	add %i0, %hm(.L__profc_rotl32), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_rotr32), %i0
	add %i0, %lo(.L__profc_rotr32), %i1
	sethi %hh(.L__profc_rotr32), %i0
	add %i0, %hm(.L__profc_rotr32), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_rotl_sz), %i0
	add %i0, %lo(.L__profc_rotl_sz), %i1
	sethi %hh(.L__profc_rotl_sz), %i0
	add %i0, %hm(.L__profc_rotl_sz), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_rotr_sz), %i0
	add %i0, %lo(.L__profc_rotr_sz), %i1
	sethi %hh(.L__profc_rotr_sz), %i0
	add %i0, %hm(.L__profc_rotr_sz), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_rotl16), %i0
	add %i0, %lo(.L__profc_rotl16), %i1
	sethi %hh(.L__profc_rotl16), %i0
	add %i0, %hm(.L__profc_rotl16), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_rotr16), %i0
	add %i0, %lo(.L__profc_rotr16), %i1
	sethi %hh(.L__profc_rotr16), %i0
	add %i0, %hm(.L__profc_rotr16), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_rotl8), %i0
	add %i0, %lo(.L__profc_rotl8), %i1
	sethi %hh(.L__profc_rotl8), %i0
	add %i0, %hm(.L__profc_rotl8), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_rotr8), %i0
	add %i0, %lo(.L__profc_rotr8), %i1
	sethi %hh(.L__profc_rotr8), %i0
	add %i0, %hm(.L__profc_rotr8), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_bswap_16), %i0
	add %i0, %lo(.L__profc_bswap_16), %i1
	sethi %hh(.L__profc_bswap_16), %i0
	add %i0, %hm(.L__profc_bswap_16), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_bswap_32), %i0
	add %i0, %lo(.L__profc_bswap_32), %i1
	sethi %hh(.L__profc_bswap_32), %i0
	add %i0, %hm(.L__profc_bswap_32), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_bswap_64), %i0
	add %i0, %lo(.L__profc_bswap_64), %i1
	sethi %hh(.L__profc_bswap_64), %i0
	add %i0, %hm(.L__profc_bswap_64), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_ffs), %i0
	add %i0, %lo(.L__profc_ffs), %i1
	sethi %hh(.L__profc_ffs), %i0
	add %i0, %hm(.L__profc_ffs), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_ffs), %i0
	add %i0, %lo(.L__profc_ffs), %i1
	sethi %hh(.L__profc_ffs), %i0
	add %i0, %hm(.L__profc_ffs), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_ffs), %i0
	add %i0, %lo(.L__profc_ffs), %i1
	sethi %hh(.L__profc_ffs), %i0
	add %i0, %hm(.L__profc_ffs), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_libiberty_ffs), %i0
	add %i0, %lo(.L__profc_libiberty_ffs), %i1
	sethi %hh(.L__profc_libiberty_ffs), %i0
	add %i0, %hm(.L__profc_libiberty_ffs), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ld [%fp+2039], %i0
	cmp	%i0, 0
	bne %icc, .LBB84_2
	nop
	ba .LBB84_1
	nop
.LBB84_1:
	sethi %hi(.L__profc_libiberty_ffs), %i0
	add %i0, %lo(.L__profc_libiberty_ffs), %i1
	sethi %hh(.L__profc_libiberty_ffs), %i0
	add %i0, %hm(.L__profc_libiberty_ffs), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_libiberty_ffs), %i0
	add %i0, %lo(.L__profc_libiberty_ffs), %i1
	sethi %hh(.L__profc_libiberty_ffs), %i0
	add %i0, %hm(.L__profc_libiberty_ffs), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_gl_isinff), %i0
	add %i0, %lo(.L__profc_gl_isinff), %i1
	sethi %hh(.L__profc_gl_isinff), %i0
	add %i0, %hm(.L__profc_gl_isinff), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ld [%fp+2043], %o0
	sethi 4186111, %i0
	call __ltsf2
	or %i0, 1023, %o1
	mov	1, %i0
	cmp	%o0, 0
	bl %icc, .LBB85_3
	st %i0, [%fp+2039]
	ba .LBB85_1
	nop
.LBB85_1:
	sethi %hi(.L__profc_gl_isinff), %i0
	add %i0, %lo(.L__profc_gl_isinff), %i1
	sethi %hh(.L__profc_gl_isinff), %i0
	add %i0, %hm(.L__profc_gl_isinff), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ld [%fp+2043], %o0
	sethi 2088959, %i0
	call __gtsf2
	or %i0, 1023, %o1
	mov	%g0, %i0
	cmp	%o0, 0
	movg	%icc, 1, %i0
	st %i0, [%fp+2035]                      ! 4-byte Folded Spill
	cmp	%o0, 0
	bg %icc, .LBB85_3
	st %i0, [%fp+2039]
	ba .LBB85_2
	nop
.LBB85_2:
	ld [%fp+2035], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_gl_isinff), %i1
	add %i1, %lo(.L__profc_gl_isinff), %i2
	sethi %hh(.L__profc_gl_isinff), %i1
	add %i1, %hm(.L__profc_gl_isinff), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+16], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+16]
	ba .LBB85_3
	st %i0, [%fp+2039]
.LBB85_3:
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
	sethi %hi(.L__profc_gl_isinfd), %i0
	add %i0, %lo(.L__profc_gl_isinfd), %i1
	sethi %hh(.L__profc_gl_isinfd), %i0
	add %i0, %hm(.L__profc_gl_isinfd), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	bl %icc, .LBB86_3
	st %i0, [%fp+2035]
	ba .LBB86_1
	nop
.LBB86_1:
	sethi %hi(.L__profc_gl_isinfd), %i0
	add %i0, %lo(.L__profc_gl_isinfd), %i1
	sethi %hh(.L__profc_gl_isinfd), %i0
	add %i0, %hm(.L__profc_gl_isinfd), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	st %i0, [%fp+2031]                      ! 4-byte Folded Spill
	cmp	%o0, 0
	bg %icc, .LBB86_3
	st %i0, [%fp+2035]
	ba .LBB86_2
	nop
.LBB86_2:
	ld [%fp+2031], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_gl_isinfd), %i1
	add %i1, %lo(.L__profc_gl_isinfd), %i2
	sethi %hh(.L__profc_gl_isinfd), %i1
	add %i1, %hm(.L__profc_gl_isinfd), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+16], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+16]
	ba .LBB86_3
	st %i0, [%fp+2035]
.LBB86_3:
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
	sethi %hi(.L__profc_gl_isinfl), %i1
	add %i1, %lo(.L__profc_gl_isinfl), %i2
	sethi %hh(.L__profc_gl_isinfl), %i1
	add %i1, %hm(.L__profc_gl_isinfl), %i1
	sllx %i1, 32, %i1
	ldx [%i1+%i2], %i3
	add %i3, 1, %i3
	stx %i3, [%i1+%i2]
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
	bl %icc, .LBB87_3
	st %i0, [%fp+2027]
	ba .LBB87_1
	nop
.LBB87_1:
	sethi %hi(.L__profc_gl_isinfl), %i0
	add %i0, %lo(.L__profc_gl_isinfl), %i1
	sethi %hh(.L__profc_gl_isinfl), %i0
	add %i0, %hm(.L__profc_gl_isinfl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	st %i0, [%fp+2023]                      ! 4-byte Folded Spill
	cmp	%o0, 0
	bg %icc, .LBB87_3
	st %i0, [%fp+2027]
	ba .LBB87_2
	nop
.LBB87_2:
	ld [%fp+2023], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_gl_isinfl), %i1
	add %i1, %lo(.L__profc_gl_isinfl), %i2
	sethi %hh(.L__profc_gl_isinfl), %i1
	add %i1, %hm(.L__profc_gl_isinfl), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+16], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+16]
	ba .LBB87_3
	st %i0, [%fp+2027]
.LBB87_3:
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
	sethi %hi(.L__profc__Qp_itoq), %i0
	add %i0, %lo(.L__profc__Qp_itoq), %i1
	sethi %hh(.L__profc__Qp_itoq), %i0
	add %i0, %hm(.L__profc__Qp_itoq), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_ldexpf), %i0
	add %i0, %lo(.L__profc_ldexpf), %i1
	sethi %hh(.L__profc_ldexpf), %i0
	add %i0, %hm(.L__profc_ldexpf), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ld [%fp+2043], %i0
	sethi 2097152, %i1
	andn %i0, %i1, %i0
	sethi 2088960, %i1
	cmp	%i0, %i1
	bg %icc, .LBB89_10
	nop
	ba .LBB89_1
	nop
.LBB89_1:
	sethi %hi(.L__profc_ldexpf), %i0
	add %i0, %lo(.L__profc_ldexpf), %i1
	sethi %hh(.L__profc_ldexpf), %i0
	add %i0, %hm(.L__profc_ldexpf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ld [%fp+2043], %o1
	stx %o1, [%fp+2023]                     ! 8-byte Folded Spill
	call __addsf3
	mov	%o1, %o0
	call __eqsf2
	ldx [%fp+2023], %o1
	cmp	%o0, 0
	be %icc, .LBB89_10
	nop
	ba .LBB89_2
	nop
.LBB89_2:
	sethi %hi(.L__profc_ldexpf), %i0
	add %i0, %lo(.L__profc_ldexpf), %i1
	sethi %hh(.L__profc_ldexpf), %i0
	add %i0, %hm(.L__profc_ldexpf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	ba .LBB89_3
	stx %i1, [%i0+24]
.LBB89_3:
	sethi %hi(.L__profc_ldexpf), %i0
	add %i0, %lo(.L__profc_ldexpf), %i1
	sethi %hh(.L__profc_ldexpf), %i0
	add %i0, %hm(.L__profc_ldexpf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ld [%fp+2039], %i2
	srl %i2, 31, %i1
	srl %i1, 0, %i3
	ldx [%i0+32], %i1
	add %i1, %i3, %i1
	stx %i1, [%i0+32]
	sethi 1048576, %i0
	sethi 1032192, %i1
	cmp	%i2, 0
	movl	%icc, %i1, %i0
	ba .LBB89_4
	st %i0, [%fp+2035]
.LBB89_4:                               ! =>This Inner Loop Header: Depth=1
	sethi %hi(.L__profc_ldexpf), %i0
	add %i0, %lo(.L__profc_ldexpf), %i1
	sethi %hh(.L__profc_ldexpf), %i0
	add %i0, %hm(.L__profc_ldexpf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
	ld [%fp+2039], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i1
	and %i1, -2, %i1
	sub %i0, %i1, %i0
	cmp	%i0, 0
	be %icc, .LBB89_6
	nop
	ba .LBB89_5
	nop
.LBB89_5:                               !   in Loop: Header=BB89_4 Depth=1
	sethi %hi(.L__profc_ldexpf), %i0
	add %i0, %lo(.L__profc_ldexpf), %i1
	sethi %hh(.L__profc_ldexpf), %i0
	add %i0, %hm(.L__profc_ldexpf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+48]
	ld [%fp+2035], %o1
	call __mulsf3
	ld [%fp+2043], %o0
	ba .LBB89_6
	st %o0, [%fp+2043]
.LBB89_6:                               !   in Loop: Header=BB89_4 Depth=1
	ld [%fp+2039], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i0
	sra %i0, 1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2039], %i0
	cmp	%i0, 0
	bne %icc, .LBB89_8
	nop
	ba .LBB89_7
	nop
.LBB89_7:
	sethi %hi(.L__profc_ldexpf), %i0
	add %i0, %lo(.L__profc_ldexpf), %i1
	sethi %hh(.L__profc_ldexpf), %i0
	add %i0, %hm(.L__profc_ldexpf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+56], %i1
	add %i1, 1, %i1
	ba .LBB89_9
	stx %i1, [%i0+56]
.LBB89_8:                               !   in Loop: Header=BB89_4 Depth=1
	ld [%fp+2035], %o1
	call __mulsf3
	mov	%o1, %o0
	ba .LBB89_4
	st %o0, [%fp+2035]
.LBB89_9:
	ba .LBB89_10
	nop
.LBB89_10:
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
	sethi %hi(.L__profc_ldexp), %i0
	add %i0, %lo(.L__profc_ldexp), %i1
	sethi %hh(.L__profc_ldexp), %i0
	add %i0, %hm(.L__profc_ldexp), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	bg %xcc, .LBB90_10
	nop
	ba .LBB90_1
	nop
.LBB90_1:
	sethi %hi(.L__profc_ldexp), %i0
	add %i0, %lo(.L__profc_ldexp), %i1
	sethi %hh(.L__profc_ldexp), %i0
	add %i0, %hm(.L__profc_ldexp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+2039], %o1
	stx %o1, [%fp+2015]                     ! 8-byte Folded Spill
	call __adddf3
	mov	%o1, %o0
	call __eqdf2
	ldx [%fp+2015], %o1
	cmp	%o0, 0
	be %icc, .LBB90_10
	nop
	ba .LBB90_2
	nop
.LBB90_2:
	sethi %hi(.L__profc_ldexp), %i0
	add %i0, %lo(.L__profc_ldexp), %i1
	sethi %hh(.L__profc_ldexp), %i0
	add %i0, %hm(.L__profc_ldexp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	ba .LBB90_3
	stx %i1, [%i0+24]
.LBB90_3:
	sethi %hi(.L__profc_ldexp), %i0
	add %i0, %lo(.L__profc_ldexp), %i1
	sethi %hh(.L__profc_ldexp), %i0
	add %i0, %hm(.L__profc_ldexp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ld [%fp+2035], %i2
	srl %i2, 31, %i1
	srl %i1, 0, %i3
	ldx [%i0+32], %i1
	add %i1, %i3, %i1
	stx %i1, [%i0+32]
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
	ba .LBB90_4
	stx %i0, [%fp+2023]
.LBB90_4:                               ! =>This Inner Loop Header: Depth=1
	sethi %hi(.L__profc_ldexp), %i0
	add %i0, %lo(.L__profc_ldexp), %i1
	sethi %hh(.L__profc_ldexp), %i0
	add %i0, %hm(.L__profc_ldexp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
	ld [%fp+2035], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i1
	and %i1, -2, %i1
	sub %i0, %i1, %i0
	cmp	%i0, 0
	be %icc, .LBB90_6
	nop
	ba .LBB90_5
	nop
.LBB90_5:                               !   in Loop: Header=BB90_4 Depth=1
	sethi %hi(.L__profc_ldexp), %i0
	add %i0, %lo(.L__profc_ldexp), %i1
	sethi %hh(.L__profc_ldexp), %i0
	add %i0, %hm(.L__profc_ldexp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+48]
	ldx [%fp+2023], %o1
	call __muldf3
	ldx [%fp+2039], %o0
	ba .LBB90_6
	stx %o0, [%fp+2039]
.LBB90_6:                               !   in Loop: Header=BB90_4 Depth=1
	ld [%fp+2035], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i0
	sra %i0, 1, %i0
	st %i0, [%fp+2035]
	ld [%fp+2035], %i0
	cmp	%i0, 0
	bne %icc, .LBB90_8
	nop
	ba .LBB90_7
	nop
.LBB90_7:
	sethi %hi(.L__profc_ldexp), %i0
	add %i0, %lo(.L__profc_ldexp), %i1
	sethi %hh(.L__profc_ldexp), %i0
	add %i0, %hm(.L__profc_ldexp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+56], %i1
	add %i1, 1, %i1
	ba .LBB90_9
	stx %i1, [%i0+56]
.LBB90_8:                               !   in Loop: Header=BB90_4 Depth=1
	ldx [%fp+2023], %o1
	call __muldf3
	mov	%o1, %o0
	ba .LBB90_4
	stx %o0, [%fp+2023]
.LBB90_9:
	ba .LBB90_10
	nop
.LBB90_10:
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
	sethi %hi(.L__profc_ldexpl), %i1
	add %i1, %lo(.L__profc_ldexpl), %i2
	sethi %hh(.L__profc_ldexpl), %i1
	add %i1, %hm(.L__profc_ldexpl), %i1
	sllx %i1, 32, %i1
	ldx [%i1+%i2], %i3
	add %i3, 1, %i3
	stx %i3, [%i1+%i2]
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
	bne %icc, .LBB91_10
	nop
	ba .LBB91_1
	nop
.LBB91_1:
	sethi %hi(.L__profc_ldexpl), %i0
	add %i0, %lo(.L__profc_ldexpl), %i1
	sethi %hh(.L__profc_ldexpl), %i0
	add %i0, %hm(.L__profc_ldexpl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	be %icc, .LBB91_10
	nop
	ba .LBB91_2
	nop
.LBB91_2:
	sethi %hi(.L__profc_ldexpl), %i0
	add %i0, %lo(.L__profc_ldexpl), %i1
	sethi %hh(.L__profc_ldexpl), %i0
	add %i0, %hm(.L__profc_ldexpl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	ba .LBB91_3
	stx %i1, [%i0+24]
.LBB91_3:
	sethi %hi(.L__profc_ldexpl), %i0
	add %i0, %lo(.L__profc_ldexpl), %i1
	sethi %hh(.L__profc_ldexpl), %i0
	add %i0, %hm(.L__profc_ldexpl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ld [%fp+2027], %i2
	srl %i2, 31, %i1
	srl %i1, 0, %i3
	ldx [%i0+32], %i1
	add %i1, %i3, %i1
	stx %i1, [%i0+32]
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
	ba .LBB91_4
	stx %i0, [%fp+1999]
.LBB91_4:                               ! =>This Inner Loop Header: Depth=1
	sethi %hi(.L__profc_ldexpl), %i0
	add %i0, %lo(.L__profc_ldexpl), %i1
	sethi %hh(.L__profc_ldexpl), %i0
	add %i0, %hm(.L__profc_ldexpl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
	ld [%fp+2027], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i1
	and %i1, -2, %i1
	sub %i0, %i1, %i0
	cmp	%i0, 0
	be %icc, .LBB91_6
	nop
	ba .LBB91_5
	nop
.LBB91_5:                               !   in Loop: Header=BB91_4 Depth=1
	sethi %hi(.L__profc_ldexpl), %i0
	add %i0, %lo(.L__profc_ldexpl), %i1
	sethi %hh(.L__profc_ldexpl), %i0
	add %i0, %hm(.L__profc_ldexpl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+48]
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
	ba .LBB91_6
	stx %o0, [%fp+2031]
.LBB91_6:                               !   in Loop: Header=BB91_4 Depth=1
	ld [%fp+2027], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i0
	sra %i0, 1, %i0
	st %i0, [%fp+2027]
	ld [%fp+2027], %i0
	cmp	%i0, 0
	bne %icc, .LBB91_8
	nop
	ba .LBB91_7
	nop
.LBB91_7:
	sethi %hi(.L__profc_ldexpl), %i0
	add %i0, %lo(.L__profc_ldexpl), %i1
	sethi %hh(.L__profc_ldexpl), %i0
	add %i0, %hm(.L__profc_ldexpl), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+56], %i1
	add %i1, 1, %i1
	ba .LBB91_9
	stx %i1, [%i0+56]
.LBB91_8:                               !   in Loop: Header=BB91_4 Depth=1
	add %fp, 1999, %i0
	or %i0, 8, %i0
	ldx [%i0], %o3
	ldx [%fp+1999], %o2
	mov	%o2, %o0
	call __multf3
	mov	%o3, %o1
	stx %o1, [%i0]
	ba .LBB91_4
	stx %o0, [%fp+1999]
.LBB91_9:
	ba .LBB91_10
	nop
.LBB91_10:
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
	sethi %hi(.L__profc_memxor), %i0
	add %i0, %lo(.L__profc_memxor), %i1
	sethi %hh(.L__profc_memxor), %i0
	add %i0, %hm(.L__profc_memxor), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_memxor), %i0
	add %i0, %lo(.L__profc_memxor), %i1
	sethi %hh(.L__profc_memxor), %i0
	add %i0, %hm(.L__profc_memxor), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_strncat), %i0
	add %i0, %lo(.L__profc_strncat), %i1
	sethi %hh(.L__profc_strncat), %i0
	add %i0, %hm(.L__profc_strncat), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ldx [%fp+2039], %i0
	call strlen
	mov	%i0, %o0
	add %i0, %o0, %i0
	ba .LBB93_1
	stx %i0, [%fp+2015]
.LBB93_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i0
	mov	%g0, %i1
	brz %i0, .LBB93_4
	st %i1, [%fp+2011]
	ba .LBB93_2
	nop
.LBB93_2:                               !   in Loop: Header=BB93_1 Depth=1
	sethi %hi(.L__profc_strncat), %i0
	add %i0, %lo(.L__profc_strncat), %i1
	sethi %hh(.L__profc_strncat), %i0
	add %i0, %hm(.L__profc_strncat), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+2031], %i0
	ldub [%i0], %i1
	ldx [%fp+2015], %i0
	stb %i1, [%i0]
	mov	%g0, %i0
	cmp	%i1, 0
	movne	%icc, 1, %i0
	st %i0, [%fp+2007]                      ! 4-byte Folded Spill
	cmp	%i1, 0
	be %icc, .LBB93_4
	st %i0, [%fp+2011]
	ba .LBB93_3
	nop
.LBB93_3:                               !   in Loop: Header=BB93_1 Depth=1
	ld [%fp+2007], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_strncat), %i1
	add %i1, %lo(.L__profc_strncat), %i2
	sethi %hh(.L__profc_strncat), %i1
	add %i1, %hm(.L__profc_strncat), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+24], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+24]
	ba .LBB93_4
	st %i0, [%fp+2011]
.LBB93_4:                               !   in Loop: Header=BB93_1 Depth=1
	ld [%fp+2011], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB93_7
	nop
	ba .LBB93_5
	nop
.LBB93_5:                               !   in Loop: Header=BB93_1 Depth=1
	sethi %hi(.L__profc_strncat), %i0
	add %i0, %lo(.L__profc_strncat), %i1
	sethi %hh(.L__profc_strncat), %i0
	add %i0, %hm(.L__profc_strncat), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	ba .LBB93_6
	stx %i1, [%i0+8]
.LBB93_6:                               !   in Loop: Header=BB93_1 Depth=1
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
.LBB93_7:
	ldx [%fp+2023], %i0
	brnz %i0, .LBB93_9
	nop
	ba .LBB93_8
	nop
.LBB93_8:
	sethi %hi(.L__profc_strncat), %i0
	add %i0, %lo(.L__profc_strncat), %i1
	sethi %hh(.L__profc_strncat), %i0
	add %i0, %hm(.L__profc_strncat), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
	ldx [%fp+2015], %i0
	mov	%g0, %i1
	ba .LBB93_9
	stb %i1, [%i0]
.LBB93_9:
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
	sethi %hi(.L__profc_strnlen), %i0
	add %i0, %lo(.L__profc_strnlen), %i1
	sethi %hh(.L__profc_strnlen), %i0
	add %i0, %hm(.L__profc_strnlen), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ba .LBB94_1
	stx %g0, [%fp+2023]
.LBB94_1:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i1
	ldx [%fp+2031], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bcc %xcc, .LBB94_4
	st %i0, [%fp+2019]
	ba .LBB94_2
	nop
.LBB94_2:                               !   in Loop: Header=BB94_1 Depth=1
	sethi %hi(.L__profc_strnlen), %i0
	add %i0, %lo(.L__profc_strnlen), %i1
	sethi %hh(.L__profc_strnlen), %i0
	add %i0, %hm(.L__profc_strnlen), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+2039], %i0
	ldx [%fp+2023], %i1
	ldsb [%i0+%i1], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	movne	%icc, 1, %i0
	st %i0, [%fp+2015]                      ! 4-byte Folded Spill
	cmp	%i1, 0
	be %icc, .LBB94_4
	st %i0, [%fp+2019]
	ba .LBB94_3
	nop
.LBB94_3:                               !   in Loop: Header=BB94_1 Depth=1
	ld [%fp+2015], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_strnlen), %i1
	add %i1, %lo(.L__profc_strnlen), %i2
	sethi %hh(.L__profc_strnlen), %i1
	add %i1, %hm(.L__profc_strnlen), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+24], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+24]
	ba .LBB94_4
	st %i0, [%fp+2019]
.LBB94_4:                               !   in Loop: Header=BB94_1 Depth=1
	ld [%fp+2019], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB94_7
	nop
	ba .LBB94_5
	nop
.LBB94_5:                               !   in Loop: Header=BB94_1 Depth=1
	sethi %hi(.L__profc_strnlen), %i0
	add %i0, %lo(.L__profc_strnlen), %i1
	sethi %hh(.L__profc_strnlen), %i0
	add %i0, %hm(.L__profc_strnlen), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	ba .LBB94_6
	stx %i1, [%i0+8]
.LBB94_6:                               !   in Loop: Header=BB94_1 Depth=1
	ldx [%fp+2023], %i0
	add %i0, 1, %i0
	ba .LBB94_1
	stx %i0, [%fp+2023]
.LBB94_7:
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
	stx %i1, [%fp+2023]
	sethi %hi(.L__profc_strpbrk), %i0
	add %i0, %lo(.L__profc_strpbrk), %i1
	sethi %hh(.L__profc_strpbrk), %i0
	add %i0, %hm(.L__profc_strpbrk), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	ba .LBB95_1
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_strpbrk), %i0
	add %i0, %lo(.L__profc_strpbrk), %i1
	sethi %hh(.L__profc_strpbrk), %i0
	add %i0, %hm(.L__profc_strpbrk), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_strpbrk), %i0
	add %i0, %lo(.L__profc_strpbrk), %i1
	sethi %hh(.L__profc_strpbrk), %i0
	add %i0, %hm(.L__profc_strpbrk), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_strpbrk), %i0
	add %i0, %lo(.L__profc_strpbrk), %i1
	sethi %hh(.L__profc_strpbrk), %i0
	add %i0, %hm(.L__profc_strpbrk), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
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
	sethi %hi(.L__profc_strrchr), %i0
	add %i0, %lo(.L__profc_strrchr), %i1
	sethi %hh(.L__profc_strrchr), %i0
	add %i0, %hm(.L__profc_strrchr), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ba .LBB96_2
	stx %g0, [%fp+2023]
.LBB96_1:                               !   in Loop: Header=BB96_2 Depth=1
	sethi %hi(.L__profc_strrchr), %i0
	add %i0, %lo(.L__profc_strrchr), %i1
	sethi %hh(.L__profc_strrchr), %i0
	add %i0, %hm(.L__profc_strrchr), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	ba .LBB96_2
	stx %i1, [%i0+8]
.LBB96_2:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2039], %i0
	ldsb [%i0], %i0
	ld [%fp+2035], %i1
	cmp	%i0, %i1
	bne %icc, .LBB96_4
	nop
	ba .LBB96_3
	nop
.LBB96_3:                               !   in Loop: Header=BB96_2 Depth=1
	sethi %hi(.L__profc_strrchr), %i0
	add %i0, %lo(.L__profc_strrchr), %i1
	sethi %hh(.L__profc_strrchr), %i0
	add %i0, %hm(.L__profc_strrchr), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+2039], %i0
	ba .LBB96_4
	stx %i0, [%fp+2023]
.LBB96_4:                               !   in Loop: Header=BB96_2 Depth=1
	ba .LBB96_5
	nop
.LBB96_5:                               !   in Loop: Header=BB96_2 Depth=1
	ldx [%fp+2039], %i0
	add %i0, 1, %i1
	stx %i1, [%fp+2039]
	ldub [%i0], %i0
	cmp	%i0, 0
	bne %icc, .LBB96_1
	nop
	ba .LBB96_6
	nop
.LBB96_6:
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
	sethi %hi(.L__profc_strstr), %i0
	add %i0, %lo(.L__profc_strstr), %i1
	sethi %hh(.L__profc_strstr), %i0
	add %i0, %hm(.L__profc_strstr), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_strstr), %i0
	add %i0, %lo(.L__profc_strstr), %i1
	sethi %hh(.L__profc_strstr), %i0
	add %i0, %hm(.L__profc_strstr), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_strstr), %i0
	add %i0, %lo(.L__profc_strstr), %i1
	sethi %hh(.L__profc_strstr), %i0
	add %i0, %hm(.L__profc_strstr), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_strstr), %i0
	add %i0, %lo(.L__profc_strstr), %i1
	sethi %hh(.L__profc_strstr), %i0
	add %i0, %hm(.L__profc_strstr), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
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
	sethi %hi(.L__profc_copysign), %i0
	add %i0, %lo(.L__profc_copysign), %i1
	sethi %hh(.L__profc_copysign), %i0
	add %i0, %hm(.L__profc_copysign), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ldx [%fp+2031], %o0
	call __ltdf2
	mov	%g0, %o1
	cmp	%o0, -1
	bg %icc, .LBB98_3
	nop
	ba .LBB98_1
	nop
.LBB98_1:
	sethi %hi(.L__profc_copysign), %i0
	add %i0, %lo(.L__profc_copysign), %i1
	sethi %hh(.L__profc_copysign), %i0
	add %i0, %hm(.L__profc_copysign), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
	ldx [%fp+2023], %o0
	call __gtdf2
	mov	%g0, %o1
	cmp	%o0, 1
	bl %icc, .LBB98_3
	nop
	ba .LBB98_2
	nop
.LBB98_2:
	sethi %hi(.L__profc_copysign), %i0
	add %i0, %lo(.L__profc_copysign), %i1
	sethi %hh(.L__profc_copysign), %i0
	add %i0, %hm(.L__profc_copysign), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	ba .LBB98_6
	stx %i1, [%i0+32]
.LBB98_3:
	sethi %hi(.L__profc_copysign), %i0
	add %i0, %lo(.L__profc_copysign), %i1
	sethi %hh(.L__profc_copysign), %i0
	add %i0, %hm(.L__profc_copysign), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+2031], %o0
	call __gtdf2
	mov	%g0, %o1
	cmp	%o0, 1
	bl %icc, .LBB98_7
	nop
	ba .LBB98_4
	nop
.LBB98_4:
	sethi %hi(.L__profc_copysign), %i0
	add %i0, %lo(.L__profc_copysign), %i1
	sethi %hh(.L__profc_copysign), %i0
	add %i0, %hm(.L__profc_copysign), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
	ldx [%fp+2023], %o0
	call __ltdf2
	mov	%g0, %o1
	cmp	%o0, -1
	bg %icc, .LBB98_7
	nop
	ba .LBB98_5
	nop
.LBB98_5:
	sethi %hi(.L__profc_copysign), %i0
	add %i0, %lo(.L__profc_copysign), %i1
	sethi %hh(.L__profc_copysign), %i0
	add %i0, %hm(.L__profc_copysign), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	ba .LBB98_6
	stx %i1, [%i0+48]
.LBB98_6:
	sethi %hi(.L__profc_copysign), %i0
	add %i0, %lo(.L__profc_copysign), %i1
	sethi %hh(.L__profc_copysign), %i0
	add %i0, %hm(.L__profc_copysign), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ldx [%fp+2031], %i0
	sethi 0, %i1
	or %i1, 0, %i2
	sethi 2097152, %i1
	or %i1, 0, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	xor %i0, %i1, %i0
	ba .LBB98_8
	stx %i0, [%fp+2039]
.LBB98_7:
	ldx [%fp+2031], %i0
	ba .LBB98_8
	stx %i0, [%fp+2039]
.LBB98_8:
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
	sethi %hi(.L__profc_memmem), %i0
	add %i0, %lo(.L__profc_memmem), %i1
	sethi %hh(.L__profc_memmem), %i0
	add %i0, %hm(.L__profc_memmem), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_memmem), %i0
	add %i0, %lo(.L__profc_memmem), %i1
	sethi %hh(.L__profc_memmem), %i0
	add %i0, %hm(.L__profc_memmem), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ldx [%fp+2031], %i0
	ba .LBB99_13
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
	sethi %hi(.L__profc_memmem), %i0
	add %i0, %lo(.L__profc_memmem), %i1
	sethi %hh(.L__profc_memmem), %i0
	add %i0, %hm(.L__profc_memmem), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ba .LBB99_13
	stx %g0, [%fp+2039]
.LBB99_4:
	ldx [%fp+2031], %i0
	ba .LBB99_5
	stx %i0, [%fp+1999]
.LBB99_5:                               ! =>This Inner Loop Header: Depth=1
	ldx [%fp+1999], %i0
	ldx [%fp+1991], %i1
	cmp	%i0, %i1
	bgu %xcc, .LBB99_12
	nop
	ba .LBB99_6
	nop
.LBB99_6:                               !   in Loop: Header=BB99_5 Depth=1
	sethi %hi(.L__profc_memmem), %i0
	add %i0, %lo(.L__profc_memmem), %i1
	sethi %hh(.L__profc_memmem), %i0
	add %i0, %hm(.L__profc_memmem), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
	ldx [%fp+1999], %i0
	ldsb [%i0], %i0
	ldx [%fp+2015], %i1
	ldsb [%i1], %i1
	cmp	%i0, %i1
	bne %icc, .LBB99_10
	nop
	ba .LBB99_7
	nop
.LBB99_7:                               !   in Loop: Header=BB99_5 Depth=1
	sethi %hi(.L__profc_memmem), %i0
	add %i0, %lo(.L__profc_memmem), %i1
	sethi %hh(.L__profc_memmem), %i0
	add %i0, %hm(.L__profc_memmem), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
	ldx [%fp+1999], %i0
	add %i0, 1, %o0
	ldx [%fp+2015], %i0
	add %i0, 1, %o1
	ldx [%fp+2007], %i0
	call memcmp
	add %i0, -1, %o2
	cmp	%o0, 0
	bne %icc, .LBB99_10
	nop
	ba .LBB99_8
	nop
.LBB99_8:
	sethi %hi(.L__profc_memmem), %i0
	add %i0, %lo(.L__profc_memmem), %i1
	sethi %hh(.L__profc_memmem), %i0
	add %i0, %hm(.L__profc_memmem), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	ba .LBB99_9
	stx %i1, [%i0+48]
.LBB99_9:
	sethi %hi(.L__profc_memmem), %i0
	add %i0, %lo(.L__profc_memmem), %i1
	sethi %hh(.L__profc_memmem), %i0
	add %i0, %hm(.L__profc_memmem), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
	ldx [%fp+1999], %i0
	ba .LBB99_13
	stx %i0, [%fp+2039]
.LBB99_10:                              !   in Loop: Header=BB99_5 Depth=1
	ba .LBB99_11
	nop
.LBB99_11:                              !   in Loop: Header=BB99_5 Depth=1
	ldx [%fp+1999], %i0
	add %i0, 1, %i0
	ba .LBB99_5
	stx %i0, [%fp+1999]
.LBB99_12:
	ba .LBB99_13
	stx %g0, [%fp+2039]
.LBB99_13:
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
	sethi %hi(.L__profc_mempcpy), %i0
	add %i0, %lo(.L__profc_mempcpy), %i1
	sethi %hh(.L__profc_mempcpy), %i0
	add %i0, %hm(.L__profc_mempcpy), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_frexp), %i0
	add %i0, %lo(.L__profc_frexp), %i1
	sethi %hh(.L__profc_frexp), %i0
	add %i0, %hm(.L__profc_frexp), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc_frexp), %i0
	add %i0, %lo(.L__profc_frexp), %i1
	sethi %hh(.L__profc_frexp), %i0
	add %i0, %hm(.L__profc_frexp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc_frexp), %i0
	add %i0, %lo(.L__profc_frexp), %i1
	sethi %hh(.L__profc_frexp), %i0
	add %i0, %hm(.L__profc_frexp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	ba .LBB101_4
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_frexp), %i0
	add %i0, %lo(.L__profc_frexp), %i1
	sethi %hh(.L__profc_frexp), %i0
	add %i0, %hm(.L__profc_frexp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
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
	ba .LBB101_15
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
	bg %icc, .LBB101_14
	nop
	ba .LBB101_8
	nop
.LBB101_8:
	sethi %hi(.L__profc_frexp), %i0
	add %i0, %lo(.L__profc_frexp), %i1
	sethi %hh(.L__profc_frexp), %i0
	add %i0, %hm(.L__profc_frexp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
	ldx [%fp+2039], %o0
	call __eqdf2
	mov	%g0, %o1
	cmp	%o0, 0
	be %icc, .LBB101_14
	nop
	ba .LBB101_9
	nop
.LBB101_9:
	sethi %hi(.L__profc_frexp), %i0
	add %i0, %lo(.L__profc_frexp), %i1
	sethi %hh(.L__profc_frexp), %i0
	add %i0, %hm(.L__profc_frexp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	ba .LBB101_10
	stx %i1, [%i0+48]
.LBB101_10:
	sethi %hi(.L__profc_frexp), %i0
	add %i0, %lo(.L__profc_frexp), %i1
	sethi %hh(.L__profc_frexp), %i0
	add %i0, %hm(.L__profc_frexp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	ba .LBB101_11
	stx %i1, [%i0+32]
.LBB101_11:                             ! =>This Inner Loop Header: Depth=1
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
	ba .LBB101_12
	nop
.LBB101_12:                             !   in Loop: Header=BB101_11 Depth=1
	sethi %hi(.L__profc_frexp), %i0
	add %i0, %lo(.L__profc_frexp), %i1
	sethi %hh(.L__profc_frexp), %i0
	add %i0, %hm(.L__profc_frexp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+56], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+56]
	ld [%fp+2023], %i0
	add %i0, -1, %i0
	st %i0, [%fp+2023]
	ldx [%fp+2039], %o1
	call __adddf3
	mov	%o1, %o0
	ba .LBB101_11
	stx %o0, [%fp+2039]
.LBB101_13:
	ba .LBB101_14
	nop
.LBB101_14:
	ba .LBB101_15
	nop
.LBB101_15:
	ld [%fp+2023], %i1
	ldx [%fp+2031], %i0
	st %i1, [%i0]
	ld [%fp+2027], %i0
	cmp	%i0, 0
	be %icc, .LBB101_17
	nop
	ba .LBB101_16
	nop
.LBB101_16:
	sethi %hi(.L__profc_frexp), %i0
	add %i0, %lo(.L__profc_frexp), %i1
	sethi %hh(.L__profc_frexp), %i0
	add %i0, %hm(.L__profc_frexp), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+64], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+64]
	ldx [%fp+2039], %i0
	sethi 0, %i1
	or %i1, 0, %i2
	sethi 2097152, %i1
	or %i1, 0, %i1
	sllx %i1, 32, %i1
	or %i1, %i2, %i1
	xor %i0, %i1, %i0
	ba .LBB101_17
	stx %i0, [%fp+2039]
.LBB101_17:
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
	sethi %hi(.L__profc___muldi3), %i0
	add %i0, %lo(.L__profc___muldi3), %i1
	sethi %hh(.L__profc___muldi3), %i0
	add %i0, %hm(.L__profc___muldi3), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___muldi3), %i0
	add %i0, %lo(.L__profc___muldi3), %i1
	sethi %hh(.L__profc___muldi3), %i0
	add %i0, %hm(.L__profc___muldi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___muldi3), %i0
	add %i0, %lo(.L__profc___muldi3), %i1
	sethi %hh(.L__profc___muldi3), %i0
	add %i0, %hm(.L__profc___muldi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc_udivmodsi4), %i0
	add %i0, %lo(.L__profc_udivmodsi4), %i1
	sethi %hh(.L__profc_udivmodsi4), %i0
	add %i0, %hm(.L__profc_udivmodsi4), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	mov	1, %i0
	st %i0, [%fp+2019]
	ba .LBB103_1
	st %g0, [%fp+2015]
.LBB103_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2035], %i1
	ld [%fp+2039], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bcc %icc, .LBB103_6
	st %i0, [%fp+2011]
	ba .LBB103_2
	nop
.LBB103_2:                              !   in Loop: Header=BB103_1 Depth=1
	sethi %hi(.L__profc_udivmodsi4), %i0
	add %i0, %lo(.L__profc_udivmodsi4), %i1
	sethi %hh(.L__profc_udivmodsi4), %i0
	add %i0, %hm(.L__profc_udivmodsi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
	ld [%fp+2019], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be %icc, .LBB103_6
	st %i0, [%fp+2011]
	ba .LBB103_3
	nop
.LBB103_3:                              !   in Loop: Header=BB103_1 Depth=1
	sethi %hi(.L__profc_udivmodsi4), %i0
	add %i0, %lo(.L__profc_udivmodsi4), %i1
	sethi %hh(.L__profc_udivmodsi4), %i0
	add %i0, %hm(.L__profc_udivmodsi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	ba .LBB103_4
	stx %i1, [%i0+40]
.LBB103_4:                              !   in Loop: Header=BB103_1 Depth=1
	sethi %hi(.L__profc_udivmodsi4), %i0
	add %i0, %lo(.L__profc_udivmodsi4), %i1
	sethi %hh(.L__profc_udivmodsi4), %i0
	add %i0, %hm(.L__profc_udivmodsi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ld [%fp+2035], %i0
	sethi 2097152, %i1
	and %i0, %i1, %i0
	mov	%g0, %i1
	movrz %i0, 1, %i1
	st %i1, [%fp+2007]                      ! 4-byte Folded Spill
	brnz %i0, .LBB103_6
	st %i1, [%fp+2011]
	ba .LBB103_5
	nop
.LBB103_5:                              !   in Loop: Header=BB103_1 Depth=1
	ld [%fp+2007], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc_udivmodsi4), %i1
	add %i1, %lo(.L__profc_udivmodsi4), %i2
	sethi %hh(.L__profc_udivmodsi4), %i1
	add %i1, %hm(.L__profc_udivmodsi4), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+24], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+24]
	ba .LBB103_6
	st %i0, [%fp+2011]
.LBB103_6:                              !   in Loop: Header=BB103_1 Depth=1
	ld [%fp+2011], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB103_8
	nop
	ba .LBB103_7
	nop
.LBB103_7:                              !   in Loop: Header=BB103_1 Depth=1
	sethi %hi(.L__profc_udivmodsi4), %i0
	add %i0, %lo(.L__profc_udivmodsi4), %i1
	sethi %hh(.L__profc_udivmodsi4), %i0
	add %i0, %hm(.L__profc_udivmodsi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ld [%fp+2035], %i0
	sll %i0, 1, %i0
	st %i0, [%fp+2035]
	ld [%fp+2019], %i0
	sll %i0, 1, %i0
	ba .LBB103_1
	st %i0, [%fp+2019]
.LBB103_8:
	ba .LBB103_9
	nop
.LBB103_9:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2019], %i0
	cmp	%i0, 0
	be %icc, .LBB103_13
	nop
	ba .LBB103_10
	nop
.LBB103_10:                             !   in Loop: Header=BB103_9 Depth=1
	sethi %hi(.L__profc_udivmodsi4), %i0
	add %i0, %lo(.L__profc_udivmodsi4), %i1
	sethi %hh(.L__profc_udivmodsi4), %i0
	add %i0, %hm(.L__profc_udivmodsi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+48]
	ld [%fp+2039], %i0
	ld [%fp+2035], %i1
	cmp	%i0, %i1
	bcs %icc, .LBB103_12
	nop
	ba .LBB103_11
	nop
.LBB103_11:                             !   in Loop: Header=BB103_9 Depth=1
	sethi %hi(.L__profc_udivmodsi4), %i0
	add %i0, %lo(.L__profc_udivmodsi4), %i1
	sethi %hh(.L__profc_udivmodsi4), %i0
	add %i0, %hm(.L__profc_udivmodsi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+56], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+56]
	ld [%fp+2035], %i1
	ld [%fp+2039], %i0
	sub %i0, %i1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2019], %i1
	ld [%fp+2015], %i0
	or %i0, %i1, %i0
	ba .LBB103_12
	st %i0, [%fp+2015]
.LBB103_12:                             !   in Loop: Header=BB103_9 Depth=1
	ld [%fp+2019], %i0
	srl %i0, 1, %i0
	st %i0, [%fp+2019]
	ld [%fp+2035], %i0
	srl %i0, 1, %i0
	ba .LBB103_9
	st %i0, [%fp+2035]
.LBB103_13:
	ldx [%fp+2023], %i0
	brz %i0, .LBB103_15
	nop
	ba .LBB103_14
	nop
.LBB103_14:
	sethi %hi(.L__profc_udivmodsi4), %i0
	add %i0, %lo(.L__profc_udivmodsi4), %i1
	sethi %hh(.L__profc_udivmodsi4), %i0
	add %i0, %hm(.L__profc_udivmodsi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+64], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+64]
	ld [%fp+2039], %i0
	ba .LBB103_16
	st %i0, [%fp+2043]
.LBB103_15:
	ld [%fp+2015], %i0
	ba .LBB103_16
	st %i0, [%fp+2043]
.LBB103_16:
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
	sethi %hi(.L__profc___clrsbqi2), %i0
	add %i0, %lo(.L__profc___clrsbqi2), %i1
	sethi %hh(.L__profc___clrsbqi2), %i0
	add %i0, %hm(.L__profc___clrsbqi2), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ldsb [%fp+2042], %i0
	cmp	%i0, -1
	bg %icc, .LBB104_2
	nop
	ba .LBB104_1
	nop
.LBB104_1:
	sethi %hi(.L__profc___clrsbqi2), %i0
	add %i0, %lo(.L__profc___clrsbqi2), %i1
	sethi %hh(.L__profc___clrsbqi2), %i0
	add %i0, %hm(.L__profc___clrsbqi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___clrsbqi2), %i0
	add %i0, %lo(.L__profc___clrsbqi2), %i1
	sethi %hh(.L__profc___clrsbqi2), %i0
	add %i0, %hm(.L__profc___clrsbqi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___clrsbdi2), %i0
	add %i0, %lo(.L__profc___clrsbdi2), %i1
	sethi %hh(.L__profc___clrsbdi2), %i0
	add %i0, %hm(.L__profc___clrsbdi2), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ldx [%fp+2031], %i0
	cmp	%i0, -1
	bg %xcc, .LBB105_2
	nop
	ba .LBB105_1
	nop
.LBB105_1:
	sethi %hi(.L__profc___clrsbdi2), %i0
	add %i0, %lo(.L__profc___clrsbdi2), %i1
	sethi %hh(.L__profc___clrsbdi2), %i0
	add %i0, %hm(.L__profc___clrsbdi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___clrsbdi2), %i0
	add %i0, %lo(.L__profc___clrsbdi2), %i1
	sethi %hh(.L__profc___clrsbdi2), %i0
	add %i0, %hm(.L__profc___clrsbdi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___mulsi3), %i0
	add %i0, %lo(.L__profc___mulsi3), %i1
	sethi %hh(.L__profc___mulsi3), %i0
	add %i0, %hm(.L__profc___mulsi3), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___mulsi3), %i0
	add %i0, %lo(.L__profc___mulsi3), %i1
	sethi %hh(.L__profc___mulsi3), %i0
	add %i0, %hm(.L__profc___mulsi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___mulsi3), %i0
	add %i0, %lo(.L__profc___mulsi3), %i1
	sethi %hh(.L__profc___mulsi3), %i0
	add %i0, %hm(.L__profc___mulsi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___cmovd), %i0
	add %i0, %lo(.L__profc___cmovd), %i1
	sethi %hh(.L__profc___cmovd), %i0
	add %i0, %hm(.L__profc___cmovd), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	bcs %xcc, .LBB107_3
	nop
	ba .LBB107_1
	nop
.LBB107_1:
	sethi %hi(.L__profc___cmovd), %i0
	add %i0, %lo(.L__profc___cmovd), %i1
	sethi %hh(.L__profc___cmovd), %i0
	add %i0, %hm(.L__profc___cmovd), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+2007], %i0
	ldx [%fp+1999], %i1
	ld [%fp+2027], %i2
	add %i1, %i2, %i1
	cmp	%i0, %i1
	bgu %xcc, .LBB107_3
	nop
	ba .LBB107_2
	nop
.LBB107_2:
	sethi %hi(.L__profc___cmovd), %i0
	add %i0, %lo(.L__profc___cmovd), %i1
	sethi %hh(.L__profc___cmovd), %i0
	add %i0, %hm(.L__profc___cmovd), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	ba .LBB107_11
	stx %i1, [%i0+24]
.LBB107_3:
	sethi %hi(.L__profc___cmovd), %i0
	add %i0, %lo(.L__profc___cmovd), %i1
	sethi %hh(.L__profc___cmovd), %i0
	add %i0, %hm(.L__profc___cmovd), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ba .LBB107_4
	st %g0, [%fp+2023]
.LBB107_4:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2023], %i0
	ld [%fp+2019], %i1
	cmp	%i0, %i1
	bcc %icc, .LBB107_7
	nop
	ba .LBB107_5
	nop
.LBB107_5:                              !   in Loop: Header=BB107_4 Depth=1
	sethi %hi(.L__profc___cmovd), %i0
	add %i0, %lo(.L__profc___cmovd), %i1
	sethi %hh(.L__profc___cmovd), %i0
	add %i0, %hm(.L__profc___cmovd), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
	ldx [%fp+2031], %i0
	ld [%fp+2023], %i1
	sllx %i1, 3, %i1
	ldx [%i0+%i1], %i2
	ldx [%fp+2039], %i0
	ba .LBB107_6
	stx %i2, [%i0+%i1]
.LBB107_6:                              !   in Loop: Header=BB107_4 Depth=1
	ld [%fp+2023], %i0
	add %i0, 1, %i0
	ba .LBB107_4
	st %i0, [%fp+2023]
.LBB107_7:
	ba .LBB107_8
	nop
.LBB107_8:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2027], %i0
	ld [%fp+2015], %i1
	cmp	%i0, %i1
	bleu %icc, .LBB107_10
	nop
	ba .LBB107_9
	nop
.LBB107_9:                              !   in Loop: Header=BB107_8 Depth=1
	sethi %hi(.L__profc___cmovd), %i0
	add %i0, %lo(.L__profc___cmovd), %i1
	sethi %hh(.L__profc___cmovd), %i0
	add %i0, %hm(.L__profc___cmovd), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
	ldx [%fp+1999], %i0
	ld [%fp+2015], %i1
	ldub [%i0+%i1], %i2
	ldx [%fp+2007], %i0
	stb %i2, [%i0+%i1]
	ld [%fp+2015], %i0
	add %i0, 1, %i0
	ba .LBB107_8
	st %i0, [%fp+2015]
.LBB107_10:
	ba .LBB107_15
	nop
.LBB107_11:
	ba .LBB107_12
	nop
.LBB107_12:                             ! =>This Inner Loop Header: Depth=1
	ld [%fp+2027], %i0
	add %i0, -1, %i1
	cmp	%i0, 0
	be %icc, .LBB107_14
	st %i1, [%fp+2027]
	ba .LBB107_13
	nop
.LBB107_13:                             !   in Loop: Header=BB107_12 Depth=1
	sethi %hi(.L__profc___cmovd), %i0
	add %i0, %lo(.L__profc___cmovd), %i1
	sethi %hh(.L__profc___cmovd), %i0
	add %i0, %hm(.L__profc___cmovd), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+48]
	ldx [%fp+1999], %i0
	ld [%fp+2027], %i1
	ldub [%i0+%i1], %i2
	ldx [%fp+2007], %i0
	ba .LBB107_12
	stb %i2, [%i0+%i1]
.LBB107_14:
	ba .LBB107_15
	nop
.LBB107_15:
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
	sethi %hi(.L__profc___cmovh), %i0
	add %i0, %lo(.L__profc___cmovh), %i1
	sethi %hh(.L__profc___cmovh), %i0
	add %i0, %hm(.L__profc___cmovh), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	bcs %xcc, .LBB108_3
	nop
	ba .LBB108_1
	nop
.LBB108_1:
	sethi %hi(.L__profc___cmovh), %i0
	add %i0, %lo(.L__profc___cmovh), %i1
	sethi %hh(.L__profc___cmovh), %i0
	add %i0, %hm(.L__profc___cmovh), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+2007], %i0
	ldx [%fp+1999], %i1
	ld [%fp+2027], %i2
	add %i1, %i2, %i1
	cmp	%i0, %i1
	bgu %xcc, .LBB108_3
	nop
	ba .LBB108_2
	nop
.LBB108_2:
	sethi %hi(.L__profc___cmovh), %i0
	add %i0, %lo(.L__profc___cmovh), %i1
	sethi %hh(.L__profc___cmovh), %i0
	add %i0, %hm(.L__profc___cmovh), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	ba .LBB108_10
	stx %i1, [%i0+24]
.LBB108_3:
	sethi %hi(.L__profc___cmovh), %i0
	add %i0, %lo(.L__profc___cmovh), %i1
	sethi %hh(.L__profc___cmovh), %i0
	add %i0, %hm(.L__profc___cmovh), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ba .LBB108_4
	st %g0, [%fp+2023]
.LBB108_4:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2023], %i0
	ld [%fp+2019], %i1
	cmp	%i0, %i1
	bcc %icc, .LBB108_7
	nop
	ba .LBB108_5
	nop
.LBB108_5:                              !   in Loop: Header=BB108_4 Depth=1
	sethi %hi(.L__profc___cmovh), %i0
	add %i0, %lo(.L__profc___cmovh), %i1
	sethi %hh(.L__profc___cmovh), %i0
	add %i0, %hm(.L__profc___cmovh), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
	ldx [%fp+2031], %i0
	ld [%fp+2023], %i1
	sllx %i1, 1, %i1
	lduh [%i0+%i1], %i2
	ldx [%fp+2039], %i0
	ba .LBB108_6
	sth %i2, [%i0+%i1]
.LBB108_6:                              !   in Loop: Header=BB108_4 Depth=1
	ld [%fp+2023], %i0
	add %i0, 1, %i0
	ba .LBB108_4
	st %i0, [%fp+2023]
.LBB108_7:
	add %fp, 2027, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB108_9
	nop
	ba .LBB108_8
	nop
.LBB108_8:
	sethi %hi(.L__profc___cmovh), %i0
	add %i0, %lo(.L__profc___cmovh), %i1
	sethi %hh(.L__profc___cmovh), %i0
	add %i0, %hm(.L__profc___cmovh), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
	ldx [%fp+1999], %i0
	ld [%fp+2027], %i1
	add %i1, -1, %i1
	srl %i1, 0, %i1
	ldub [%i0+%i1], %i2
	ldx [%fp+2007], %i0
	ba .LBB108_9
	stb %i2, [%i0+%i1]
.LBB108_9:
	ba .LBB108_14
	nop
.LBB108_10:
	ba .LBB108_11
	nop
.LBB108_11:                             ! =>This Inner Loop Header: Depth=1
	ld [%fp+2027], %i0
	add %i0, -1, %i1
	cmp	%i0, 0
	be %icc, .LBB108_13
	st %i1, [%fp+2027]
	ba .LBB108_12
	nop
.LBB108_12:                             !   in Loop: Header=BB108_11 Depth=1
	sethi %hi(.L__profc___cmovh), %i0
	add %i0, %lo(.L__profc___cmovh), %i1
	sethi %hh(.L__profc___cmovh), %i0
	add %i0, %hm(.L__profc___cmovh), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+48]
	ldx [%fp+1999], %i0
	ld [%fp+2027], %i1
	ldub [%i0+%i1], %i2
	ldx [%fp+2007], %i0
	ba .LBB108_11
	stb %i2, [%i0+%i1]
.LBB108_13:
	ba .LBB108_14
	nop
.LBB108_14:
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
	sethi %hi(.L__profc___cmovw), %i0
	add %i0, %lo(.L__profc___cmovw), %i1
	sethi %hh(.L__profc___cmovw), %i0
	add %i0, %hm(.L__profc___cmovw), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	bcs %xcc, .LBB109_3
	nop
	ba .LBB109_1
	nop
.LBB109_1:
	sethi %hi(.L__profc___cmovw), %i0
	add %i0, %lo(.L__profc___cmovw), %i1
	sethi %hh(.L__profc___cmovw), %i0
	add %i0, %hm(.L__profc___cmovw), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+2007], %i0
	ldx [%fp+1999], %i1
	ld [%fp+2027], %i2
	add %i1, %i2, %i1
	cmp	%i0, %i1
	bgu %xcc, .LBB109_3
	nop
	ba .LBB109_2
	nop
.LBB109_2:
	sethi %hi(.L__profc___cmovw), %i0
	add %i0, %lo(.L__profc___cmovw), %i1
	sethi %hh(.L__profc___cmovw), %i0
	add %i0, %hm(.L__profc___cmovw), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	ba .LBB109_11
	stx %i1, [%i0+24]
.LBB109_3:
	sethi %hi(.L__profc___cmovw), %i0
	add %i0, %lo(.L__profc___cmovw), %i1
	sethi %hh(.L__profc___cmovw), %i0
	add %i0, %hm(.L__profc___cmovw), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ba .LBB109_4
	st %g0, [%fp+2023]
.LBB109_4:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2023], %i0
	ld [%fp+2019], %i1
	cmp	%i0, %i1
	bcc %icc, .LBB109_7
	nop
	ba .LBB109_5
	nop
.LBB109_5:                              !   in Loop: Header=BB109_4 Depth=1
	sethi %hi(.L__profc___cmovw), %i0
	add %i0, %lo(.L__profc___cmovw), %i1
	sethi %hh(.L__profc___cmovw), %i0
	add %i0, %hm(.L__profc___cmovw), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
	ldx [%fp+2031], %i0
	ld [%fp+2023], %i1
	sllx %i1, 2, %i1
	ld [%i0+%i1], %i2
	ldx [%fp+2039], %i0
	ba .LBB109_6
	st %i2, [%i0+%i1]
.LBB109_6:                              !   in Loop: Header=BB109_4 Depth=1
	ld [%fp+2023], %i0
	add %i0, 1, %i0
	ba .LBB109_4
	st %i0, [%fp+2023]
.LBB109_7:
	ba .LBB109_8
	nop
.LBB109_8:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2027], %i0
	ld [%fp+2015], %i1
	cmp	%i0, %i1
	bleu %icc, .LBB109_10
	nop
	ba .LBB109_9
	nop
.LBB109_9:                              !   in Loop: Header=BB109_8 Depth=1
	sethi %hi(.L__profc___cmovw), %i0
	add %i0, %lo(.L__profc___cmovw), %i1
	sethi %hh(.L__profc___cmovw), %i0
	add %i0, %hm(.L__profc___cmovw), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
	ldx [%fp+1999], %i0
	ld [%fp+2015], %i1
	ldub [%i0+%i1], %i2
	ldx [%fp+2007], %i0
	stb %i2, [%i0+%i1]
	ld [%fp+2015], %i0
	add %i0, 1, %i0
	ba .LBB109_8
	st %i0, [%fp+2015]
.LBB109_10:
	ba .LBB109_15
	nop
.LBB109_11:
	ba .LBB109_12
	nop
.LBB109_12:                             ! =>This Inner Loop Header: Depth=1
	ld [%fp+2027], %i0
	add %i0, -1, %i1
	cmp	%i0, 0
	be %icc, .LBB109_14
	st %i1, [%fp+2027]
	ba .LBB109_13
	nop
.LBB109_13:                             !   in Loop: Header=BB109_12 Depth=1
	sethi %hi(.L__profc___cmovw), %i0
	add %i0, %lo(.L__profc___cmovw), %i1
	sethi %hh(.L__profc___cmovw), %i0
	add %i0, %hm(.L__profc___cmovw), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+48]
	ldx [%fp+1999], %i0
	ld [%fp+2027], %i1
	ldub [%i0+%i1], %i2
	ldx [%fp+2007], %i0
	ba .LBB109_12
	stb %i2, [%i0+%i1]
.LBB109_14:
	ba .LBB109_15
	nop
.LBB109_15:
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
	sethi %hi(.L__profc___modi), %i0
	add %i0, %lo(.L__profc___modi), %i1
	sethi %hh(.L__profc___modi), %i0
	add %i0, %hm(.L__profc___modi), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___uitod), %i0
	add %i0, %lo(.L__profc___uitod), %i1
	sethi %hh(.L__profc___uitod), %i0
	add %i0, %hm(.L__profc___uitod), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___uitof), %i0
	add %i0, %lo(.L__profc___uitof), %i1
	sethi %hh(.L__profc___uitof), %i0
	add %i0, %hm(.L__profc___uitof), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___ulltod), %i0
	add %i0, %lo(.L__profc___ulltod), %i1
	sethi %hh(.L__profc___ulltod), %i0
	add %i0, %hm(.L__profc___ulltod), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___ulltof), %i0
	add %i0, %lo(.L__profc___ulltof), %i1
	sethi %hh(.L__profc___ulltof), %i0
	add %i0, %hm(.L__profc___ulltof), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___umodi), %i0
	add %i0, %lo(.L__profc___umodi), %i1
	sethi %hh(.L__profc___umodi), %i0
	add %i0, %hm(.L__profc___umodi), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___clzhi2), %i0
	add %i0, %lo(.L__profc___clzhi2), %i1
	sethi %hh(.L__profc___clzhi2), %i0
	add %i0, %hm(.L__profc___clzhi2), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___clzhi2), %i0
	add %i0, %lo(.L__profc___clzhi2), %i1
	sethi %hh(.L__profc___clzhi2), %i0
	add %i0, %hm(.L__profc___clzhi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___clzhi2), %i0
	add %i0, %lo(.L__profc___clzhi2), %i1
	sethi %hh(.L__profc___clzhi2), %i0
	add %i0, %hm(.L__profc___clzhi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	ba .LBB116_6
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___ctzhi2), %i0
	add %i0, %lo(.L__profc___ctzhi2), %i1
	sethi %hh(.L__profc___ctzhi2), %i0
	add %i0, %hm(.L__profc___ctzhi2), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___ctzhi2), %i0
	add %i0, %lo(.L__profc___ctzhi2), %i1
	sethi %hh(.L__profc___ctzhi2), %i0
	add %i0, %hm(.L__profc___ctzhi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___ctzhi2), %i0
	add %i0, %lo(.L__profc___ctzhi2), %i1
	sethi %hh(.L__profc___ctzhi2), %i0
	add %i0, %hm(.L__profc___ctzhi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	ba .LBB117_6
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___fixunssfsi), %i0
	add %i0, %lo(.L__profc___fixunssfsi), %i1
	sethi %hh(.L__profc___fixunssfsi), %i0
	add %i0, %hm(.L__profc___fixunssfsi), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ld [%fp+2035], %o0
	call __gesf2
	sethi 1163264, %o1
	cmp	%o0, 0
	bl %icc, .LBB118_2
	nop
	ba .LBB118_1
	nop
.LBB118_1:
	sethi %hi(.L__profc___fixunssfsi), %i0
	add %i0, %lo(.L__profc___fixunssfsi), %i1
	sethi %hh(.L__profc___fixunssfsi), %i0
	add %i0, %hm(.L__profc___fixunssfsi), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___parityhi2), %i0
	add %i0, %lo(.L__profc___parityhi2), %i1
	sethi %hh(.L__profc___parityhi2), %i0
	add %i0, %hm(.L__profc___parityhi2), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___parityhi2), %i0
	add %i0, %lo(.L__profc___parityhi2), %i1
	sethi %hh(.L__profc___parityhi2), %i0
	add %i0, %hm(.L__profc___parityhi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___parityhi2), %i0
	add %i0, %lo(.L__profc___parityhi2), %i1
	sethi %hh(.L__profc___parityhi2), %i0
	add %i0, %hm(.L__profc___parityhi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___popcounthi2), %i0
	add %i0, %lo(.L__profc___popcounthi2), %i1
	sethi %hh(.L__profc___popcounthi2), %i0
	add %i0, %hm(.L__profc___popcounthi2), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___popcounthi2), %i0
	add %i0, %lo(.L__profc___popcounthi2), %i1
	sethi %hh(.L__profc___popcounthi2), %i0
	add %i0, %hm(.L__profc___popcounthi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___popcounthi2), %i0
	add %i0, %lo(.L__profc___popcounthi2), %i1
	sethi %hh(.L__profc___popcounthi2), %i0
	add %i0, %hm(.L__profc___popcounthi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___mulsi3_iq2000), %i0
	add %i0, %lo(.L__profc___mulsi3_iq2000), %i1
	sethi %hh(.L__profc___mulsi3_iq2000), %i0
	add %i0, %hm(.L__profc___mulsi3_iq2000), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___mulsi3_iq2000), %i0
	add %i0, %lo(.L__profc___mulsi3_iq2000), %i1
	sethi %hh(.L__profc___mulsi3_iq2000), %i0
	add %i0, %hm(.L__profc___mulsi3_iq2000), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___mulsi3_iq2000), %i0
	add %i0, %lo(.L__profc___mulsi3_iq2000), %i1
	sethi %hh(.L__profc___mulsi3_iq2000), %i0
	add %i0, %hm(.L__profc___mulsi3_iq2000), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___mulsi3_lm32), %i0
	add %i0, %lo(.L__profc___mulsi3_lm32), %i1
	sethi %hh(.L__profc___mulsi3_lm32), %i0
	add %i0, %hm(.L__profc___mulsi3_lm32), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	st %g0, [%fp+2031]
	ld [%fp+2039], %i0
	cmp	%i0, 0
	bne %icc, .LBB122_2
	nop
	ba .LBB122_1
	nop
.LBB122_1:
	sethi %hi(.L__profc___mulsi3_lm32), %i0
	add %i0, %lo(.L__profc___mulsi3_lm32), %i1
	sethi %hh(.L__profc___mulsi3_lm32), %i0
	add %i0, %hm(.L__profc___mulsi3_lm32), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___mulsi3_lm32), %i0
	add %i0, %lo(.L__profc___mulsi3_lm32), %i1
	sethi %hh(.L__profc___mulsi3_lm32), %i0
	add %i0, %hm(.L__profc___mulsi3_lm32), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___mulsi3_lm32), %i0
	add %i0, %lo(.L__profc___mulsi3_lm32), %i1
	sethi %hh(.L__profc___mulsi3_lm32), %i0
	add %i0, %hm(.L__profc___mulsi3_lm32), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
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
	sethi %hi(.L__profc___udivmodsi4), %i0
	add %i0, %lo(.L__profc___udivmodsi4), %i1
	sethi %hh(.L__profc___udivmodsi4), %i0
	add %i0, %hm(.L__profc___udivmodsi4), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	mov	1, %i0
	st %i0, [%fp+2027]
	ba .LBB123_1
	st %g0, [%fp+2023]
.LBB123_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2035], %i1
	ld [%fp+2039], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bcc %icc, .LBB123_6
	st %i0, [%fp+2019]
	ba .LBB123_2
	nop
.LBB123_2:                              !   in Loop: Header=BB123_1 Depth=1
	sethi %hi(.L__profc___udivmodsi4), %i0
	add %i0, %lo(.L__profc___udivmodsi4), %i1
	sethi %hh(.L__profc___udivmodsi4), %i0
	add %i0, %hm(.L__profc___udivmodsi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
	ld [%fp+2027], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be %icc, .LBB123_6
	st %i0, [%fp+2019]
	ba .LBB123_3
	nop
.LBB123_3:                              !   in Loop: Header=BB123_1 Depth=1
	sethi %hi(.L__profc___udivmodsi4), %i0
	add %i0, %lo(.L__profc___udivmodsi4), %i1
	sethi %hh(.L__profc___udivmodsi4), %i0
	add %i0, %hm(.L__profc___udivmodsi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	ba .LBB123_4
	stx %i1, [%i0+40]
.LBB123_4:                              !   in Loop: Header=BB123_1 Depth=1
	sethi %hi(.L__profc___udivmodsi4), %i0
	add %i0, %lo(.L__profc___udivmodsi4), %i1
	sethi %hh(.L__profc___udivmodsi4), %i0
	add %i0, %hm(.L__profc___udivmodsi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ld [%fp+2035], %i0
	sethi 2097152, %i1
	and %i0, %i1, %i0
	mov	%g0, %i1
	movrz %i0, 1, %i1
	st %i1, [%fp+2015]                      ! 4-byte Folded Spill
	brnz %i0, .LBB123_6
	st %i1, [%fp+2019]
	ba .LBB123_5
	nop
.LBB123_5:                              !   in Loop: Header=BB123_1 Depth=1
	ld [%fp+2015], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc___udivmodsi4), %i1
	add %i1, %lo(.L__profc___udivmodsi4), %i2
	sethi %hh(.L__profc___udivmodsi4), %i1
	add %i1, %hm(.L__profc___udivmodsi4), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+24], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+24]
	ba .LBB123_6
	st %i0, [%fp+2019]
.LBB123_6:                              !   in Loop: Header=BB123_1 Depth=1
	ld [%fp+2019], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB123_8
	nop
	ba .LBB123_7
	nop
.LBB123_7:                              !   in Loop: Header=BB123_1 Depth=1
	sethi %hi(.L__profc___udivmodsi4), %i0
	add %i0, %lo(.L__profc___udivmodsi4), %i1
	sethi %hh(.L__profc___udivmodsi4), %i0
	add %i0, %hm(.L__profc___udivmodsi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ld [%fp+2035], %i0
	sll %i0, 1, %i0
	st %i0, [%fp+2035]
	ld [%fp+2027], %i0
	sll %i0, 1, %i0
	ba .LBB123_1
	st %i0, [%fp+2027]
.LBB123_8:
	ba .LBB123_9
	nop
.LBB123_9:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+2027], %i0
	cmp	%i0, 0
	be %icc, .LBB123_13
	nop
	ba .LBB123_10
	nop
.LBB123_10:                             !   in Loop: Header=BB123_9 Depth=1
	sethi %hi(.L__profc___udivmodsi4), %i0
	add %i0, %lo(.L__profc___udivmodsi4), %i1
	sethi %hh(.L__profc___udivmodsi4), %i0
	add %i0, %hm(.L__profc___udivmodsi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+48]
	ld [%fp+2039], %i0
	ld [%fp+2035], %i1
	cmp	%i0, %i1
	bcs %icc, .LBB123_12
	nop
	ba .LBB123_11
	nop
.LBB123_11:                             !   in Loop: Header=BB123_9 Depth=1
	sethi %hi(.L__profc___udivmodsi4), %i0
	add %i0, %lo(.L__profc___udivmodsi4), %i1
	sethi %hh(.L__profc___udivmodsi4), %i0
	add %i0, %hm(.L__profc___udivmodsi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+56], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+56]
	ld [%fp+2035], %i1
	ld [%fp+2039], %i0
	sub %i0, %i1, %i0
	st %i0, [%fp+2039]
	ld [%fp+2027], %i1
	ld [%fp+2023], %i0
	or %i0, %i1, %i0
	ba .LBB123_12
	st %i0, [%fp+2023]
.LBB123_12:                             !   in Loop: Header=BB123_9 Depth=1
	ld [%fp+2027], %i0
	srl %i0, 1, %i0
	st %i0, [%fp+2027]
	ld [%fp+2035], %i0
	srl %i0, 1, %i0
	ba .LBB123_9
	st %i0, [%fp+2035]
.LBB123_13:
	ld [%fp+2031], %i0
	cmp	%i0, 0
	be %icc, .LBB123_15
	nop
	ba .LBB123_14
	nop
.LBB123_14:
	sethi %hi(.L__profc___udivmodsi4), %i0
	add %i0, %lo(.L__profc___udivmodsi4), %i1
	sethi %hh(.L__profc___udivmodsi4), %i0
	add %i0, %hm(.L__profc___udivmodsi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+64], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+64]
	ld [%fp+2039], %i0
	ba .LBB123_16
	st %i0, [%fp+2043]
.LBB123_15:
	ld [%fp+2023], %i0
	ba .LBB123_16
	st %i0, [%fp+2043]
.LBB123_16:
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
	sethi %hi(.L__profc___mspabi_cmpf), %i0
	add %i0, %lo(.L__profc___mspabi_cmpf), %i1
	sethi %hh(.L__profc___mspabi_cmpf), %i0
	add %i0, %hm(.L__profc___mspabi_cmpf), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ld [%fp+2039], %o0
	call __ltsf2
	ld [%fp+2035], %o1
	cmp	%o0, -1
	bg %icc, .LBB124_2
	nop
	ba .LBB124_1
	nop
.LBB124_1:
	sethi %hi(.L__profc___mspabi_cmpf), %i0
	add %i0, %lo(.L__profc___mspabi_cmpf), %i1
	sethi %hh(.L__profc___mspabi_cmpf), %i0
	add %i0, %hm(.L__profc___mspabi_cmpf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___mspabi_cmpf), %i0
	add %i0, %lo(.L__profc___mspabi_cmpf), %i1
	sethi %hh(.L__profc___mspabi_cmpf), %i0
	add %i0, %hm(.L__profc___mspabi_cmpf), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___mspabi_cmpd), %i0
	add %i0, %lo(.L__profc___mspabi_cmpd), %i1
	sethi %hh(.L__profc___mspabi_cmpd), %i0
	add %i0, %hm(.L__profc___mspabi_cmpd), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ldx [%fp+2031], %o0
	call __ltdf2
	ldx [%fp+2023], %o1
	cmp	%o0, -1
	bg %icc, .LBB125_2
	nop
	ba .LBB125_1
	nop
.LBB125_1:
	sethi %hi(.L__profc___mspabi_cmpd), %i0
	add %i0, %lo(.L__profc___mspabi_cmpd), %i1
	sethi %hh(.L__profc___mspabi_cmpd), %i0
	add %i0, %hm(.L__profc___mspabi_cmpd), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___mspabi_cmpd), %i0
	add %i0, %lo(.L__profc___mspabi_cmpd), %i1
	sethi %hh(.L__profc___mspabi_cmpd), %i0
	add %i0, %hm(.L__profc___mspabi_cmpd), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___mspabi_mpysll), %i0
	add %i0, %lo(.L__profc___mspabi_mpysll), %i1
	sethi %hh(.L__profc___mspabi_mpysll), %i0
	add %i0, %hm(.L__profc___mspabi_mpysll), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___mspabi_mpyull), %i0
	add %i0, %lo(.L__profc___mspabi_mpyull), %i1
	sethi %hh(.L__profc___mspabi_mpyull), %i0
	add %i0, %hm(.L__profc___mspabi_mpyull), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___mulhi3), %i0
	add %i0, %lo(.L__profc___mulhi3), %i1
	sethi %hh(.L__profc___mulhi3), %i0
	add %i0, %hm(.L__profc___mulhi3), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	st %g0, [%fp+2031]
	st %g0, [%fp+2027]
	ld [%fp+2039], %i0
	cmp	%i0, -1
	bg %icc, .LBB128_2
	nop
	ba .LBB128_1
	nop
.LBB128_1:
	sethi %hi(.L__profc___mulhi3), %i0
	add %i0, %lo(.L__profc___mulhi3), %i1
	sethi %hh(.L__profc___mulhi3), %i0
	add %i0, %hm(.L__profc___mulhi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	be %icc, .LBB128_6
	st %i0, [%fp+2023]
	ba .LBB128_4
	nop
.LBB128_4:                              !   in Loop: Header=BB128_3 Depth=1
	sethi %hi(.L__profc___mulhi3), %i0
	add %i0, %lo(.L__profc___mulhi3), %i1
	sethi %hh(.L__profc___mulhi3), %i0
	add %i0, %hm(.L__profc___mulhi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
	ldsb [%fp+2038], %i1
	mov	%g0, %i0
	cmp	%i1, 32
	movcs	%xcc, 1, %i0
	st %i0, [%fp+2019]                      ! 4-byte Folded Spill
	cmp	%i1, 31
	bgu %xcc, .LBB128_6
	st %i0, [%fp+2023]
	ba .LBB128_5
	nop
.LBB128_5:                              !   in Loop: Header=BB128_3 Depth=1
	ld [%fp+2019], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc___mulhi3), %i1
	add %i1, %lo(.L__profc___mulhi3), %i2
	sethi %hh(.L__profc___mulhi3), %i1
	add %i1, %hm(.L__profc___mulhi3), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+32], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+32]
	ba .LBB128_6
	st %i0, [%fp+2023]
.LBB128_6:                              !   in Loop: Header=BB128_3 Depth=1
	ld [%fp+2023], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB128_11
	nop
	ba .LBB128_7
	nop
.LBB128_7:                              !   in Loop: Header=BB128_3 Depth=1
	sethi %hi(.L__profc___mulhi3), %i0
	add %i0, %lo(.L__profc___mulhi3), %i1
	sethi %hh(.L__profc___mulhi3), %i0
	add %i0, %hm(.L__profc___mulhi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	add %fp, 2039, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB128_9
	nop
	ba .LBB128_8
	nop
.LBB128_8:                              !   in Loop: Header=BB128_3 Depth=1
	sethi %hi(.L__profc___mulhi3), %i0
	add %i0, %lo(.L__profc___mulhi3), %i1
	sethi %hh(.L__profc___mulhi3), %i0
	add %i0, %hm(.L__profc___mulhi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+40]
	ld [%fp+2043], %i1
	ld [%fp+2027], %i0
	add %i0, %i1, %i0
	ba .LBB128_9
	st %i0, [%fp+2027]
.LBB128_9:                              !   in Loop: Header=BB128_3 Depth=1
	ld [%fp+2043], %i0
	sll %i0, 1, %i0
	st %i0, [%fp+2043]
	ld [%fp+2039], %i0
	sra %i0, 1, %i0
	ba .LBB128_10
	st %i0, [%fp+2039]
.LBB128_10:                             !   in Loop: Header=BB128_3 Depth=1
	ldub [%fp+2038], %i0
	add %i0, 1, %i0
	ba .LBB128_3
	stb %i0, [%fp+2038]
.LBB128_11:
	ld [%fp+2031], %i0
	cmp	%i0, 0
	be %icc, .LBB128_13
	nop
	ba .LBB128_12
	nop
.LBB128_12:
	sethi %hi(.L__profc___mulhi3), %i0
	add %i0, %lo(.L__profc___mulhi3), %i1
	sethi %hh(.L__profc___mulhi3), %i0
	add %i0, %hm(.L__profc___mulhi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+48]
	ld [%fp+2027], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB128_14
	st %i0, [%fp+2015]
.LBB128_13:
	ld [%fp+2027], %i0
	ba .LBB128_14
	st %i0, [%fp+2015]
.LBB128_14:
	ld [%fp+2015], %i0                      ! 4-byte Folded Reload
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
	sethi %hi(.L__profc___divsi3), %i0
	add %i0, %lo(.L__profc___divsi3), %i1
	sethi %hh(.L__profc___divsi3), %i0
	add %i0, %hm(.L__profc___divsi3), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	st %g0, [%fp+2027]
	ldx [%fp+2039], %i0
	cmp	%i0, -1
	bg %xcc, .LBB129_2
	nop
	ba .LBB129_1
	nop
.LBB129_1:
	sethi %hi(.L__profc___divsi3), %i0
	add %i0, %lo(.L__profc___divsi3), %i1
	sethi %hh(.L__profc___divsi3), %i0
	add %i0, %hm(.L__profc___divsi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___divsi3), %i0
	add %i0, %lo(.L__profc___divsi3), %i1
	sethi %hh(.L__profc___divsi3), %i0
	add %i0, %hm(.L__profc___divsi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___divsi3), %i0
	add %i0, %lo(.L__profc___divsi3), %i1
	sethi %hh(.L__profc___divsi3), %i0
	add %i0, %hm(.L__profc___divsi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
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
	sethi %hi(.L__profc___modsi3), %i0
	add %i0, %lo(.L__profc___modsi3), %i1
	sethi %hh(.L__profc___modsi3), %i0
	add %i0, %hm(.L__profc___modsi3), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	st %g0, [%fp+2027]
	ldx [%fp+2039], %i0
	cmp	%i0, -1
	bg %xcc, .LBB130_2
	nop
	ba .LBB130_1
	nop
.LBB130_1:
	sethi %hi(.L__profc___modsi3), %i0
	add %i0, %lo(.L__profc___modsi3), %i1
	sethi %hh(.L__profc___modsi3), %i0
	add %i0, %hm(.L__profc___modsi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___modsi3), %i0
	add %i0, %lo(.L__profc___modsi3), %i1
	sethi %hh(.L__profc___modsi3), %i0
	add %i0, %hm(.L__profc___modsi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___modsi3), %i0
	add %i0, %lo(.L__profc___modsi3), %i1
	sethi %hh(.L__profc___modsi3), %i0
	add %i0, %hm(.L__profc___modsi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
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
	sethi %hi(.L__profc___udivmodhi4), %i0
	add %i0, %lo(.L__profc___udivmodhi4), %i1
	sethi %hh(.L__profc___udivmodhi4), %i0
	add %i0, %hm(.L__profc___udivmodhi4), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	bge %icc, .LBB131_6
	st %i0, [%fp+2027]
	ba .LBB131_2
	nop
.LBB131_2:                              !   in Loop: Header=BB131_1 Depth=1
	sethi %hi(.L__profc___udivmodhi4), %i0
	add %i0, %lo(.L__profc___udivmodhi4), %i1
	sethi %hh(.L__profc___udivmodhi4), %i0
	add %i0, %hm(.L__profc___udivmodhi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
	lduh [%fp+2033], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be %icc, .LBB131_6
	st %i0, [%fp+2027]
	ba .LBB131_3
	nop
.LBB131_3:                              !   in Loop: Header=BB131_1 Depth=1
	sethi %hi(.L__profc___udivmodhi4), %i0
	add %i0, %lo(.L__profc___udivmodhi4), %i1
	sethi %hh(.L__profc___udivmodhi4), %i0
	add %i0, %hm(.L__profc___udivmodhi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	ba .LBB131_4
	stx %i1, [%i0+40]
.LBB131_4:                              !   in Loop: Header=BB131_1 Depth=1
	sethi %hi(.L__profc___udivmodhi4), %i0
	add %i0, %lo(.L__profc___udivmodhi4), %i1
	sethi %hh(.L__profc___udivmodhi4), %i0
	add %i0, %hm(.L__profc___udivmodhi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	lduh [%fp+2041], %i0
	sethi 32, %i1
	and %i0, %i1, %i1
	mov	%g0, %i0
	cmp	%i1, 0
	move	%icc, 1, %i0
	st %i0, [%fp+2023]                      ! 4-byte Folded Spill
	cmp	%i1, 0
	bne %icc, .LBB131_6
	st %i0, [%fp+2027]
	ba .LBB131_5
	nop
.LBB131_5:                              !   in Loop: Header=BB131_1 Depth=1
	ld [%fp+2023], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc___udivmodhi4), %i1
	add %i1, %lo(.L__profc___udivmodhi4), %i2
	sethi %hh(.L__profc___udivmodhi4), %i1
	add %i1, %hm(.L__profc___udivmodhi4), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+24], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+24]
	ba .LBB131_6
	st %i0, [%fp+2027]
.LBB131_6:                              !   in Loop: Header=BB131_1 Depth=1
	ld [%fp+2027], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB131_8
	nop
	ba .LBB131_7
	nop
.LBB131_7:                              !   in Loop: Header=BB131_1 Depth=1
	sethi %hi(.L__profc___udivmodhi4), %i0
	add %i0, %lo(.L__profc___udivmodhi4), %i1
	sethi %hh(.L__profc___udivmodhi4), %i0
	add %i0, %hm(.L__profc___udivmodhi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	lduh [%fp+2041], %i0
	sll %i0, 1, %i0
	sth %i0, [%fp+2041]
	lduh [%fp+2033], %i0
	sll %i0, 1, %i0
	ba .LBB131_1
	sth %i0, [%fp+2033]
.LBB131_8:
	ba .LBB131_9
	nop
.LBB131_9:                              ! =>This Inner Loop Header: Depth=1
	lduh [%fp+2033], %i0
	cmp	%i0, 0
	be %icc, .LBB131_13
	nop
	ba .LBB131_10
	nop
.LBB131_10:                             !   in Loop: Header=BB131_9 Depth=1
	sethi %hi(.L__profc___udivmodhi4), %i0
	add %i0, %lo(.L__profc___udivmodhi4), %i1
	sethi %hh(.L__profc___udivmodhi4), %i0
	add %i0, %hm(.L__profc___udivmodhi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+48]
	lduh [%fp+2043], %i0
	lduh [%fp+2041], %i1
	cmp	%i0, %i1
	bl %icc, .LBB131_12
	nop
	ba .LBB131_11
	nop
.LBB131_11:                             !   in Loop: Header=BB131_9 Depth=1
	sethi %hi(.L__profc___udivmodhi4), %i0
	add %i0, %lo(.L__profc___udivmodhi4), %i1
	sethi %hh(.L__profc___udivmodhi4), %i0
	add %i0, %hm(.L__profc___udivmodhi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+56], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+56]
	lduh [%fp+2041], %i1
	lduh [%fp+2043], %i0
	sub %i0, %i1, %i0
	sth %i0, [%fp+2043]
	lduh [%fp+2033], %i1
	lduh [%fp+2031], %i0
	or %i0, %i1, %i0
	ba .LBB131_12
	sth %i0, [%fp+2031]
.LBB131_12:                             !   in Loop: Header=BB131_9 Depth=1
	lduh [%fp+2033], %i0
	srl %i0, 1, %i0
	sth %i0, [%fp+2033]
	lduh [%fp+2041], %i0
	srl %i0, 1, %i0
	ba .LBB131_9
	sth %i0, [%fp+2041]
.LBB131_13:
	ld [%fp+2035], %i0
	cmp	%i0, 0
	be %icc, .LBB131_15
	nop
	ba .LBB131_14
	nop
.LBB131_14:
	sethi %hi(.L__profc___udivmodhi4), %i0
	add %i0, %lo(.L__profc___udivmodhi4), %i1
	sethi %hh(.L__profc___udivmodhi4), %i0
	add %i0, %hm(.L__profc___udivmodhi4), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+64], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+64]
	lduh [%fp+2043], %i0
	ba .LBB131_16
	sth %i0, [%fp+2045]
.LBB131_15:
	lduh [%fp+2031], %i0
	ba .LBB131_16
	sth %i0, [%fp+2045]
.LBB131_16:
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
	sethi %hi(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %lo(.L__profc___udivmodsi4_libgcc), %i1
	sethi %hh(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %hm(.L__profc___udivmodsi4_libgcc), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	mov	1, %i0
	stx %i0, [%fp+2007]
	ba .LBB132_1
	stx %g0, [%fp+1999]
.LBB132_1:                              ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2023], %i1
	ldx [%fp+2031], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bcc %xcc, .LBB132_6
	st %i0, [%fp+1995]
	ba .LBB132_2
	nop
.LBB132_2:                              !   in Loop: Header=BB132_1 Depth=1
	sethi %hi(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %lo(.L__profc___udivmodsi4_libgcc), %i1
	sethi %hh(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %hm(.L__profc___udivmodsi4_libgcc), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
	ldx [%fp+2007], %i0
	mov	%g0, %i1
	brz %i0, .LBB132_6
	st %i1, [%fp+1995]
	ba .LBB132_3
	nop
.LBB132_3:                              !   in Loop: Header=BB132_1 Depth=1
	sethi %hi(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %lo(.L__profc___udivmodsi4_libgcc), %i1
	sethi %hh(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %hm(.L__profc___udivmodsi4_libgcc), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+40], %i1
	add %i1, 1, %i1
	ba .LBB132_4
	stx %i1, [%i0+40]
.LBB132_4:                              !   in Loop: Header=BB132_1 Depth=1
	sethi %hi(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %lo(.L__profc___udivmodsi4_libgcc), %i1
	sethi %hh(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %hm(.L__profc___udivmodsi4_libgcc), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
	ldx [%fp+2023], %i0
	sethi 2097152, %i1
	and %i0, %i1, %i0
	mov	%g0, %i1
	movrz %i0, 1, %i1
	st %i1, [%fp+1991]                      ! 4-byte Folded Spill
	brnz %i0, .LBB132_6
	st %i1, [%fp+1995]
	ba .LBB132_5
	nop
.LBB132_5:                              !   in Loop: Header=BB132_1 Depth=1
	ld [%fp+1991], %i0                      ! 4-byte Folded Reload
	sethi %hi(.L__profc___udivmodsi4_libgcc), %i1
	add %i1, %lo(.L__profc___udivmodsi4_libgcc), %i2
	sethi %hh(.L__profc___udivmodsi4_libgcc), %i1
	add %i1, %hm(.L__profc___udivmodsi4_libgcc), %i1
	sllx %i1, 32, %i1
	add %i1, %i2, %i1
	ldx [%i1+24], %i2
	add %i2, 1, %i2
	stx %i2, [%i1+24]
	ba .LBB132_6
	st %i0, [%fp+1995]
.LBB132_6:                              !   in Loop: Header=BB132_1 Depth=1
	ld [%fp+1995], %i0                      ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be %icc, .LBB132_8
	nop
	ba .LBB132_7
	nop
.LBB132_7:                              !   in Loop: Header=BB132_1 Depth=1
	sethi %hi(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %lo(.L__profc___udivmodsi4_libgcc), %i1
	sethi %hh(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %hm(.L__profc___udivmodsi4_libgcc), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ldx [%fp+2023], %i0
	sllx %i0, 1, %i0
	stx %i0, [%fp+2023]
	ldx [%fp+2007], %i0
	sllx %i0, 1, %i0
	ba .LBB132_1
	stx %i0, [%fp+2007]
.LBB132_8:
	ba .LBB132_9
	nop
.LBB132_9:                              ! =>This Inner Loop Header: Depth=1
	ldx [%fp+2007], %i0
	brz %i0, .LBB132_13
	nop
	ba .LBB132_10
	nop
.LBB132_10:                             !   in Loop: Header=BB132_9 Depth=1
	sethi %hi(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %lo(.L__profc___udivmodsi4_libgcc), %i1
	sethi %hh(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %hm(.L__profc___udivmodsi4_libgcc), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+48], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+48]
	ldx [%fp+2031], %i0
	ldx [%fp+2023], %i1
	cmp	%i0, %i1
	bcs %xcc, .LBB132_12
	nop
	ba .LBB132_11
	nop
.LBB132_11:                             !   in Loop: Header=BB132_9 Depth=1
	sethi %hi(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %lo(.L__profc___udivmodsi4_libgcc), %i1
	sethi %hh(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %hm(.L__profc___udivmodsi4_libgcc), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+56], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+56]
	ldx [%fp+2023], %i1
	ldx [%fp+2031], %i0
	sub %i0, %i1, %i0
	stx %i0, [%fp+2031]
	ldx [%fp+2007], %i1
	ldx [%fp+1999], %i0
	or %i0, %i1, %i0
	ba .LBB132_12
	stx %i0, [%fp+1999]
.LBB132_12:                             !   in Loop: Header=BB132_9 Depth=1
	ldx [%fp+2007], %i0
	srlx %i0, 1, %i0
	stx %i0, [%fp+2007]
	ldx [%fp+2023], %i0
	srlx %i0, 1, %i0
	ba .LBB132_9
	stx %i0, [%fp+2023]
.LBB132_13:
	ld [%fp+2019], %i0
	cmp	%i0, 0
	be %icc, .LBB132_15
	nop
	ba .LBB132_14
	nop
.LBB132_14:
	sethi %hi(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %lo(.L__profc___udivmodsi4_libgcc), %i1
	sethi %hh(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %hm(.L__profc___udivmodsi4_libgcc), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+64], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+64]
	ldx [%fp+2031], %i0
	ba .LBB132_16
	stx %i0, [%fp+2039]
.LBB132_15:
	ldx [%fp+1999], %i0
	ba .LBB132_16
	stx %i0, [%fp+2039]
.LBB132_16:
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
	sethi %hi(.L__profc___ashldi3), %i0
	add %i0, %lo(.L__profc___ashldi3), %i1
	sethi %hh(.L__profc___ashldi3), %i0
	add %i0, %hm(.L__profc___ashldi3), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___ashldi3), %i0
	add %i0, %lo(.L__profc___ashldi3), %i1
	sethi %hh(.L__profc___ashldi3), %i0
	add %i0, %hm(.L__profc___ashldi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___ashldi3), %i0
	add %i0, %lo(.L__profc___ashldi3), %i1
	sethi %hh(.L__profc___ashldi3), %i0
	add %i0, %hm(.L__profc___ashldi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___ashlti3), %i1
	add %i1, %lo(.L__profc___ashlti3), %i2
	sethi %hh(.L__profc___ashlti3), %i1
	add %i1, %hm(.L__profc___ashlti3), %i1
	sllx %i1, 32, %i1
	ldx [%i1+%i2], %i3
	add %i3, 1, %i3
	stx %i3, [%i1+%i2]
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
	sethi %hi(.L__profc___ashlti3), %i0
	add %i0, %lo(.L__profc___ashlti3), %i1
	sethi %hh(.L__profc___ashlti3), %i0
	add %i0, %hm(.L__profc___ashlti3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___ashlti3), %i0
	add %i0, %lo(.L__profc___ashlti3), %i1
	sethi %hh(.L__profc___ashlti3), %i0
	add %i0, %hm(.L__profc___ashlti3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___ashrdi3), %i0
	add %i0, %lo(.L__profc___ashrdi3), %i1
	sethi %hh(.L__profc___ashrdi3), %i0
	add %i0, %hm(.L__profc___ashrdi3), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___ashrdi3), %i0
	add %i0, %lo(.L__profc___ashrdi3), %i1
	sethi %hh(.L__profc___ashrdi3), %i0
	add %i0, %hm(.L__profc___ashrdi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___ashrdi3), %i0
	add %i0, %lo(.L__profc___ashrdi3), %i1
	sethi %hh(.L__profc___ashrdi3), %i0
	add %i0, %hm(.L__profc___ashrdi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___ashrti3), %i1
	add %i1, %lo(.L__profc___ashrti3), %i2
	sethi %hh(.L__profc___ashrti3), %i1
	add %i1, %hm(.L__profc___ashrti3), %i1
	sllx %i1, 32, %i1
	ldx [%i1+%i2], %i3
	add %i3, 1, %i3
	stx %i3, [%i1+%i2]
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
	sethi %hi(.L__profc___ashrti3), %i0
	add %i0, %lo(.L__profc___ashrti3), %i1
	sethi %hh(.L__profc___ashrti3), %i0
	add %i0, %hm(.L__profc___ashrti3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___ashrti3), %i0
	add %i0, %lo(.L__profc___ashrti3), %i1
	sethi %hh(.L__profc___ashrti3), %i0
	add %i0, %hm(.L__profc___ashrti3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___bswapdi2), %i0
	add %i0, %lo(.L__profc___bswapdi2), %i1
	sethi %hh(.L__profc___bswapdi2), %i0
	add %i0, %hm(.L__profc___bswapdi2), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___bswapsi2), %i0
	add %i0, %lo(.L__profc___bswapsi2), %i1
	sethi %hh(.L__profc___bswapsi2), %i0
	add %i0, %hm(.L__profc___bswapsi2), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___clzsi2), %i0
	add %i0, %lo(.L__profc___clzsi2), %i1
	sethi %hh(.L__profc___clzsi2), %i0
	add %i0, %hm(.L__profc___clzsi2), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___clzti2), %i1
	add %i1, %lo(.L__profc___clzti2), %i2
	sethi %hh(.L__profc___clzti2), %i1
	add %i1, %hm(.L__profc___clzti2), %i1
	sllx %i1, 32, %i1
	ldx [%i1+%i2], %i3
	add %i3, 1, %i3
	stx %i3, [%i1+%i2]
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
	sethi %hi(.L__profc___cmpdi2), %i0
	add %i0, %lo(.L__profc___cmpdi2), %i1
	sethi %hh(.L__profc___cmpdi2), %i0
	add %i0, %hm(.L__profc___cmpdi2), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___cmpdi2), %i0
	add %i0, %lo(.L__profc___cmpdi2), %i1
	sethi %hh(.L__profc___cmpdi2), %i0
	add %i0, %hm(.L__profc___cmpdi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___cmpdi2), %i0
	add %i0, %lo(.L__profc___cmpdi2), %i1
	sethi %hh(.L__profc___cmpdi2), %i0
	add %i0, %hm(.L__profc___cmpdi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___cmpdi2), %i0
	add %i0, %lo(.L__profc___cmpdi2), %i1
	sethi %hh(.L__profc___cmpdi2), %i0
	add %i0, %hm(.L__profc___cmpdi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
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
	sethi %hi(.L__profc___cmpdi2), %i0
	add %i0, %lo(.L__profc___cmpdi2), %i1
	sethi %hh(.L__profc___cmpdi2), %i0
	add %i0, %hm(.L__profc___cmpdi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
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
	sethi %hi(.L__profc___aeabi_lcmp), %i0
	add %i0, %lo(.L__profc___aeabi_lcmp), %i1
	sethi %hh(.L__profc___aeabi_lcmp), %i0
	add %i0, %hm(.L__profc___aeabi_lcmp), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___cmpti2), %i2
	add %i2, %lo(.L__profc___cmpti2), %i3
	sethi %hh(.L__profc___cmpti2), %i2
	add %i2, %hm(.L__profc___cmpti2), %i2
	sllx %i2, 32, %i2
	ldx [%i2+%i3], %i4
	add %i4, 1, %i4
	stx %i4, [%i2+%i3]
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
	sethi %hi(.L__profc___cmpti2), %i0
	add %i0, %lo(.L__profc___cmpti2), %i1
	sethi %hh(.L__profc___cmpti2), %i0
	add %i0, %hm(.L__profc___cmpti2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___cmpti2), %i0
	add %i0, %lo(.L__profc___cmpti2), %i1
	sethi %hh(.L__profc___cmpti2), %i0
	add %i0, %hm(.L__profc___cmpti2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___cmpti2), %i0
	add %i0, %lo(.L__profc___cmpti2), %i1
	sethi %hh(.L__profc___cmpti2), %i0
	add %i0, %hm(.L__profc___cmpti2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
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
	sethi %hi(.L__profc___cmpti2), %i0
	add %i0, %lo(.L__profc___cmpti2), %i1
	sethi %hh(.L__profc___cmpti2), %i0
	add %i0, %hm(.L__profc___cmpti2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
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
	sethi %hi(.L__profc___ctzsi2), %i0
	add %i0, %lo(.L__profc___ctzsi2), %i1
	sethi %hh(.L__profc___ctzsi2), %i0
	add %i0, %hm(.L__profc___ctzsi2), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___ctzti2), %i1
	add %i1, %lo(.L__profc___ctzti2), %i2
	sethi %hh(.L__profc___ctzti2), %i1
	add %i1, %hm(.L__profc___ctzti2), %i1
	sllx %i1, 32, %i1
	ldx [%i1+%i2], %i3
	add %i3, 1, %i3
	stx %i3, [%i1+%i2]
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
	sethi %hi(.L__profc___ffsti2), %i1
	add %i1, %lo(.L__profc___ffsti2), %i2
	sethi %hh(.L__profc___ffsti2), %i1
	add %i1, %hm(.L__profc___ffsti2), %i1
	sllx %i1, 32, %i1
	ldx [%i1+%i2], %i3
	add %i3, 1, %i3
	stx %i3, [%i1+%i2]
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
	sethi %hi(.L__profc___ffsti2), %i0
	add %i0, %lo(.L__profc___ffsti2), %i1
	sethi %hh(.L__profc___ffsti2), %i0
	add %i0, %hm(.L__profc___ffsti2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
	ldx [%fp+1999], %i0
	brnz %i0, .LBB146_3
	nop
	ba .LBB146_2
	nop
.LBB146_2:
	sethi %hi(.L__profc___ffsti2), %i0
	add %i0, %lo(.L__profc___ffsti2), %i1
	sethi %hh(.L__profc___ffsti2), %i0
	add %i0, %hm(.L__profc___ffsti2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___lshrdi3), %i0
	add %i0, %lo(.L__profc___lshrdi3), %i1
	sethi %hh(.L__profc___lshrdi3), %i0
	add %i0, %hm(.L__profc___lshrdi3), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___lshrdi3), %i0
	add %i0, %lo(.L__profc___lshrdi3), %i1
	sethi %hh(.L__profc___lshrdi3), %i0
	add %i0, %hm(.L__profc___lshrdi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___lshrdi3), %i0
	add %i0, %lo(.L__profc___lshrdi3), %i1
	sethi %hh(.L__profc___lshrdi3), %i0
	add %i0, %hm(.L__profc___lshrdi3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___lshrti3), %i1
	add %i1, %lo(.L__profc___lshrti3), %i2
	sethi %hh(.L__profc___lshrti3), %i1
	add %i1, %hm(.L__profc___lshrti3), %i1
	sllx %i1, 32, %i1
	ldx [%i1+%i2], %i3
	add %i3, 1, %i3
	stx %i3, [%i1+%i2]
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
	sethi %hi(.L__profc___lshrti3), %i0
	add %i0, %lo(.L__profc___lshrti3), %i1
	sethi %hh(.L__profc___lshrti3), %i0
	add %i0, %hm(.L__profc___lshrti3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___lshrti3), %i0
	add %i0, %lo(.L__profc___lshrti3), %i1
	sethi %hh(.L__profc___lshrti3), %i0
	add %i0, %hm(.L__profc___lshrti3), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___muldsi3), %i0
	add %i0, %lo(.L__profc___muldsi3), %i1
	sethi %hh(.L__profc___muldsi3), %i0
	add %i0, %hm(.L__profc___muldsi3), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___muldi3_compiler_rt), %i0
	add %i0, %lo(.L__profc___muldi3_compiler_rt), %i1
	sethi %hh(.L__profc___muldi3_compiler_rt), %i0
	add %i0, %hm(.L__profc___muldi3_compiler_rt), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___mulddi3), %i0
	add %i0, %lo(.L__profc___mulddi3), %i1
	sethi %hh(.L__profc___mulddi3), %i0
	add %i0, %hm(.L__profc___mulddi3), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___multi3), %i2
	add %i2, %lo(.L__profc___multi3), %i3
	sethi %hh(.L__profc___multi3), %i2
	add %i2, %hm(.L__profc___multi3), %i2
	sllx %i2, 32, %i2
	ldx [%i2+%i3], %i4
	add %i4, 1, %i4
	stx %i4, [%i2+%i3]
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
	sethi %hi(.L__profc___negdi2), %i0
	add %i0, %lo(.L__profc___negdi2), %i1
	sethi %hh(.L__profc___negdi2), %i0
	add %i0, %hm(.L__profc___negdi2), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___negti2), %i1
	add %i1, %lo(.L__profc___negti2), %i2
	sethi %hh(.L__profc___negti2), %i1
	add %i1, %hm(.L__profc___negti2), %i1
	sllx %i1, 32, %i1
	ldx [%i1+%i2], %i3
	add %i3, 1, %i3
	stx %i3, [%i1+%i2]
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
	sethi %hi(.L__profc___paritydi2), %i0
	add %i0, %lo(.L__profc___paritydi2), %i1
	sethi %hh(.L__profc___paritydi2), %i0
	add %i0, %hm(.L__profc___paritydi2), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___parityti2), %i1
	add %i1, %lo(.L__profc___parityti2), %i2
	sethi %hh(.L__profc___parityti2), %i1
	add %i1, %hm(.L__profc___parityti2), %i1
	sllx %i1, 32, %i1
	ldx [%i1+%i2], %i3
	add %i3, 1, %i3
	stx %i3, [%i1+%i2]
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
	sethi %hi(.L__profc___paritysi2), %i0
	add %i0, %lo(.L__profc___paritysi2), %i1
	sethi %hh(.L__profc___paritysi2), %i0
	add %i0, %hm(.L__profc___paritysi2), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___popcountdi2), %i0
	add %i0, %lo(.L__profc___popcountdi2), %i1
	sethi %hh(.L__profc___popcountdi2), %i0
	add %i0, %hm(.L__profc___popcountdi2), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___popcountsi2), %i0
	add %i0, %lo(.L__profc___popcountsi2), %i1
	sethi %hh(.L__profc___popcountsi2), %i0
	add %i0, %hm(.L__profc___popcountsi2), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___popcountti2), %i1
	add %i1, %lo(.L__profc___popcountti2), %i2
	sethi %hh(.L__profc___popcountti2), %i1
	add %i1, %hm(.L__profc___popcountti2), %i1
	sllx %i1, 32, %i1
	ldx [%i1+%i2], %i3
	add %i3, 1, %i3
	stx %i3, [%i1+%i2]
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
	sethi %hi(.L__profc___powidf2), %i0
	add %i0, %lo(.L__profc___powidf2), %i1
	sethi %hh(.L__profc___powidf2), %i0
	add %i0, %hm(.L__profc___powidf2), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___powidf2), %i0
	add %i0, %lo(.L__profc___powidf2), %i1
	sethi %hh(.L__profc___powidf2), %i0
	add %i0, %hm(.L__profc___powidf2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___powidf2), %i0
	add %i0, %lo(.L__profc___powidf2), %i1
	sethi %hh(.L__profc___powidf2), %i0
	add %i0, %hm(.L__profc___powidf2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___powidf2), %i0
	add %i0, %lo(.L__profc___powidf2), %i1
	sethi %hh(.L__profc___powidf2), %i0
	add %i0, %hm(.L__profc___powidf2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	ba .LBB161_6
	stx %i1, [%i0+24]
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
	sethi %hi(.L__profc___powidf2), %i0
	add %i0, %lo(.L__profc___powidf2), %i1
	sethi %hh(.L__profc___powidf2), %i0
	add %i0, %hm(.L__profc___powidf2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
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
	sethi %hi(.L__profc___powisf2), %i0
	add %i0, %lo(.L__profc___powisf2), %i1
	sethi %hh(.L__profc___powisf2), %i0
	add %i0, %hm(.L__profc___powisf2), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
	ld [%fp+2039], %i0
	srl %i0, 31, %i0
	st %i0, [%fp+2035]
	sethi 1040384, %i0
	ba .LBB162_1
	st %i0, [%fp+2031]
.LBB162_1:                              ! =>This Inner Loop Header: Depth=1
	sethi %hi(.L__profc___powisf2), %i0
	add %i0, %lo(.L__profc___powisf2), %i1
	sethi %hh(.L__profc___powisf2), %i0
	add %i0, %hm(.L__profc___powisf2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___powisf2), %i0
	add %i0, %lo(.L__profc___powisf2), %i1
	sethi %hh(.L__profc___powisf2), %i0
	add %i0, %hm(.L__profc___powisf2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___powisf2), %i0
	add %i0, %lo(.L__profc___powisf2), %i1
	sethi %hh(.L__profc___powisf2), %i0
	add %i0, %hm(.L__profc___powisf2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	ba .LBB162_6
	stx %i1, [%i0+24]
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
	sethi %hi(.L__profc___powisf2), %i0
	add %i0, %lo(.L__profc___powisf2), %i1
	sethi %hh(.L__profc___powisf2), %i0
	add %i0, %hm(.L__profc___powisf2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
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
	sethi %hi(.L__profc___ucmpdi2), %i0
	add %i0, %lo(.L__profc___ucmpdi2), %i1
	sethi %hh(.L__profc___ucmpdi2), %i0
	add %i0, %hm(.L__profc___ucmpdi2), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___ucmpdi2), %i0
	add %i0, %lo(.L__profc___ucmpdi2), %i1
	sethi %hh(.L__profc___ucmpdi2), %i0
	add %i0, %hm(.L__profc___ucmpdi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___ucmpdi2), %i0
	add %i0, %lo(.L__profc___ucmpdi2), %i1
	sethi %hh(.L__profc___ucmpdi2), %i0
	add %i0, %hm(.L__profc___ucmpdi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___ucmpdi2), %i0
	add %i0, %lo(.L__profc___ucmpdi2), %i1
	sethi %hh(.L__profc___ucmpdi2), %i0
	add %i0, %hm(.L__profc___ucmpdi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
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
	sethi %hi(.L__profc___ucmpdi2), %i0
	add %i0, %lo(.L__profc___ucmpdi2), %i1
	sethi %hh(.L__profc___ucmpdi2), %i0
	add %i0, %hm(.L__profc___ucmpdi2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
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
	sethi %hi(.L__profc___aeabi_ulcmp), %i0
	add %i0, %lo(.L__profc___aeabi_ulcmp), %i1
	sethi %hh(.L__profc___aeabi_ulcmp), %i0
	add %i0, %hm(.L__profc___aeabi_ulcmp), %i0
	sllx %i0, 32, %i0
	ldx [%i0+%i1], %i2
	add %i2, 1, %i2
	stx %i2, [%i0+%i1]
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
	sethi %hi(.L__profc___ucmpti2), %i2
	add %i2, %lo(.L__profc___ucmpti2), %i3
	sethi %hh(.L__profc___ucmpti2), %i2
	add %i2, %hm(.L__profc___ucmpti2), %i2
	sllx %i2, 32, %i2
	ldx [%i2+%i3], %i4
	add %i4, 1, %i4
	stx %i4, [%i2+%i3]
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
	sethi %hi(.L__profc___ucmpti2), %i0
	add %i0, %lo(.L__profc___ucmpti2), %i1
	sethi %hh(.L__profc___ucmpti2), %i0
	add %i0, %hm(.L__profc___ucmpti2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+8], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+8]
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
	sethi %hi(.L__profc___ucmpti2), %i0
	add %i0, %lo(.L__profc___ucmpti2), %i1
	sethi %hh(.L__profc___ucmpti2), %i0
	add %i0, %hm(.L__profc___ucmpti2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+16], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+16]
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
	sethi %hi(.L__profc___ucmpti2), %i0
	add %i0, %lo(.L__profc___ucmpti2), %i1
	sethi %hh(.L__profc___ucmpti2), %i0
	add %i0, %hm(.L__profc___ucmpti2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+24], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+24]
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
	sethi %hi(.L__profc___ucmpti2), %i0
	add %i0, %lo(.L__profc___ucmpti2), %i1
	sethi %hh(.L__profc___ucmpti2), %i0
	add %i0, %hm(.L__profc___ucmpti2), %i0
	sllx %i0, 32, %i0
	add %i0, %i1, %i0
	ldx [%i0+32], %i1
	add %i1, 1, %i1
	stx %i1, [%i0+32]
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
	.hidden	__llvm_profile_runtime
	.type	.L__profc_make_ti,@object       ! @__profc_make_ti
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_make_ti
	.p2align	3, 0x0
.L__profc_make_ti:
	.skip	8
	.size	.L__profc_make_ti, 8

	.type	.L__profd_make_ti,@object       ! @__profd_make_ti
	.section	__llvm_prf_data,"awG",@progbits,__profc_make_ti
	.p2align	3, 0x0
.L__profd_make_ti:
	.xword	-5001490222628474638            ! 0xba9723243ca3f0f2
	.xword	24                              ! 0x18
	.xword	.L__profc_make_ti-.L__profd_make_ti
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_make_ti, 64

	.type	.L__profc_make_tu,@object       ! @__profc_make_tu
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_make_tu
	.p2align	3, 0x0
.L__profc_make_tu:
	.skip	8
	.size	.L__profc_make_tu, 8

	.type	.L__profd_make_tu,@object       ! @__profd_make_tu
	.section	__llvm_prf_data,"awG",@progbits,__profc_make_tu
	.p2align	3, 0x0
.L__profd_make_tu:
	.xword	-8857068571906375875            ! 0x85155f0f843e7f3d
	.xword	24                              ! 0x18
	.xword	.L__profc_make_tu-.L__profd_make_tu
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_make_tu, 64

	.type	.L__profc_memmove,@object       ! @__profc_memmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
.L__profc_memmove:
	.skip	40
	.size	.L__profc_memmove, 40

	.type	.L__profd_memmove,@object       ! @__profd_memmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
.L__profd_memmove:
	.xword	-306081897096246147             ! 0xfbc09422e3668c7d
	.xword	-4061701397412038936            ! 0xc7a1f0194f8c36e8
	.xword	.L__profc_memmove-.L__profd_memmove
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_memmove, 64

	.type	.L__profc_memccpy,@object       ! @__profc_memccpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profc_memccpy:
	.skip	40
	.size	.L__profc_memccpy, 40

	.type	.L__profd_memccpy,@object       ! @__profd_memccpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profd_memccpy:
	.xword	-1590863763861247346            ! 0xe9ec1dd5e5026a8e
	.xword	1189690007454808                ! 0x43a044a498458
	.xword	.L__profc_memccpy-.L__profd_memccpy
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_memccpy, 64

	.type	.L__profc_memchr,@object        ! @__profc_memchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
.L__profc_memchr:
	.skip	40
	.size	.L__profc_memchr, 40

	.type	.L__profd_memchr,@object        ! @__profd_memchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
.L__profd_memchr:
	.xword	5708666158622859656             ! 0x4f3941a01e026188
	.xword	4538308109                      ! 0x10e81160d
	.xword	.L__profc_memchr-.L__profd_memchr
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_memchr, 64

	.type	.L__profc_memcmp,@object        ! @__profc_memcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profc_memcmp:
	.skip	40
	.size	.L__profc_memcmp, 40

	.type	.L__profd_memcmp,@object        ! @__profd_memcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profd_memcmp:
	.xword	-4679550853048924350            ! 0xbf0ee54adfa48742
	.xword	4538045965                      ! 0x10e7d160d
	.xword	.L__profc_memcmp-.L__profd_memcmp
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_memcmp, 64

	.type	.L__profc_memcpy,@object        ! @__profc_memcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
.L__profc_memcpy:
	.skip	16
	.size	.L__profc_memcpy, 16

	.type	.L__profd_memcpy,@object        ! @__profd_memcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
.L__profd_memcpy:
	.xword	3893303423671325810             ! 0x3607cad612bdd472
	.xword	17496                           ! 0x4458
	.xword	.L__profc_memcpy-.L__profd_memcpy
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_memcpy, 64

	.type	.L__profc_memrchr,@object       ! @__profc_memrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profc_memrchr:
	.skip	24
	.size	.L__profc_memrchr, 24

	.type	.L__profd_memrchr,@object       ! @__profd_memrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profd_memrchr:
	.xword	-548334422562728352             ! 0xf863ecbf75079660
	.xword	9516882138200                   ! 0x8a7d2611458
	.xword	.L__profc_memrchr-.L__profd_memrchr
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_memrchr, 64

	.type	.L__profc_memset,@object        ! @__profc_memset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
.L__profc_memset:
	.skip	16
	.size	.L__profc_memset, 16

	.type	.L__profd_memset,@object        ! @__profd_memset
	.section	__llvm_prf_data,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
.L__profd_memset:
	.xword	-2741574704065975695            ! 0xd9f3f85506f36a71
	.xword	17496                           ! 0x4458
	.xword	.L__profc_memset-.L__profd_memset
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_memset, 64

	.type	.L__profc_stpcpy,@object        ! @__profc_stpcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profc_stpcpy:
	.skip	16
	.size	.L__profc_stpcpy, 16

	.type	.L__profd_stpcpy,@object        ! @__profd_stpcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profd_stpcpy:
	.xword	4454833295779690053             ! 0x3dd2bf47a087f645
	.xword	17496                           ! 0x4458
	.xword	.L__profc_stpcpy-.L__profd_stpcpy
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_stpcpy, 64

	.type	.L__profc_strchrnul,@object     ! @__profc_strchrnul
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profc_strchrnul:
	.skip	32
	.size	.L__profc_strchrnul, 32

	.type	.L__profd_strchrnul,@object     ! @__profd_strchrnul
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profd_strchrnul:
	.xword	5039208642683934005             ! 0x45eedd8fc8411535
	.xword	70911064                        ! 0x43a0458
	.xword	.L__profc_strchrnul-.L__profd_strchrnul
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strchrnul, 64

	.type	.L__profc_strchr,@object        ! @__profc_strchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
.L__profc_strchr:
	.skip	24
	.size	.L__profc_strchr, 24

	.type	.L__profd_strchr,@object        ! @__profd_strchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
.L__profd_strchr:
	.xword	-5671522429266412413            ! 0xb14ab4664bea3c83
	.xword	13914928649304                  ! 0xca7d2611458
	.xword	.L__profc_strchr-.L__profd_strchr
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strchr, 64

	.type	.L__profc_strcmp,@object        ! @__profc_strcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profc_strcmp:
	.skip	32
	.size	.L__profc_strcmp, 32

	.type	.L__profd_strcmp,@object        ! @__profd_strcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profd_strcmp:
	.xword	1013198891307352868             ! 0xe0f9b060331c324
	.xword	70906968                        ! 0x439f458
	.xword	.L__profc_strcmp-.L__profd_strcmp
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strcmp, 64

	.type	.L__profc_strlen,@object        ! @__profc_strlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
.L__profc_strlen:
	.skip	16
	.size	.L__profc_strlen, 16

	.type	.L__profd_strlen,@object        ! @__profd_strlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
.L__profd_strlen:
	.xword	2965136410638013299             ! 0x292647db02a7d373
	.xword	17496                           ! 0x4458
	.xword	.L__profc_strlen-.L__profd_strlen
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strlen, 64

	.type	.L__profc_strncmp,@object       ! @__profc_strncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profc_strncmp:
	.skip	72
	.size	.L__profc_strncmp, 72

	.type	.L__profd_strncmp,@object       ! @__profd_strncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profd_strncmp:
	.xword	-6058495834680104774            ! 0xabebe6233cb568ba
	.xword	7207353986825238351             ! 0x6405aa43cb36b74f
	.xword	.L__profc_strncmp-.L__profd_strncmp
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	9                               ! 0x9
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strncmp, 64

	.type	.L__profc_swab,@object          ! @__profc_swab
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
.L__profc_swab:
	.skip	16
	.size	.L__profc_swab, 16

	.type	.L__profd_swab,@object          ! @__profd_swab
	.section	__llvm_prf_data,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
.L__profd_swab:
	.xword	-1619950660557759641            ! 0xe984c77503cb9b67
	.xword	18193                           ! 0x4711
	.xword	.L__profc_swab-.L__profd_swab
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_swab, 64

	.type	.L__profc_isalpha,@object       ! @__profc_isalpha
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profc_isalpha:
	.skip	8
	.size	.L__profc_isalpha, 8

	.type	.L__profd_isalpha,@object       ! @__profd_isalpha
	.section	__llvm_prf_data,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profd_isalpha:
	.xword	-1429966999967671460            ! 0xec27bc96fe655b5c
	.xword	1563                            ! 0x61b
	.xword	.L__profc_isalpha-.L__profd_isalpha
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_isalpha, 64

	.type	.L__profc_isascii,@object       ! @__profc_isascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
.L__profc_isascii:
	.skip	8
	.size	.L__profc_isascii, 8

	.type	.L__profd_isascii,@object       ! @__profd_isascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
.L__profd_isascii:
	.xword	-4792250000779744687            ! 0xbd7e8203c4a86a51
	.xword	1562                            ! 0x61a
	.xword	.L__profc_isascii-.L__profd_isascii
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_isascii, 64

	.type	.L__profc_isblank,@object       ! @__profc_isblank
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
.L__profc_isblank:
	.skip	24
	.size	.L__profc_isblank, 24

	.type	.L__profd_isblank,@object       ! @__profd_isblank
	.section	__llvm_prf_data,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
.L__profd_isblank:
	.xword	2465200613623135234             ! 0x223626e59b14fc02
	.xword	6354911                         ! 0x60f7df
	.xword	.L__profc_isblank-.L__profd_isblank
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_isblank, 64

	.type	.L__profc_iscntrl,@object       ! @__profc_iscntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profc_iscntrl:
	.skip	24
	.size	.L__profc_iscntrl, 24

	.type	.L__profd_iscntrl,@object       ! @__profd_iscntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profd_iscntrl:
	.xword	8897732069425577183             ! 0x7b7b182cc8b67cdf
	.xword	6354655                         ! 0x60f6df
	.xword	.L__profc_iscntrl-.L__profd_iscntrl
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_iscntrl, 64

	.type	.L__profc_isdigit,@object       ! @__profc_isdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profc_isdigit:
	.skip	8
	.size	.L__profc_isdigit, 8

	.type	.L__profd_isdigit,@object       ! @__profd_isdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profd_isdigit:
	.xword	3483985654529092453             ! 0x30599a7e6cc36b65
	.xword	1563                            ! 0x61b
	.xword	.L__profc_isdigit-.L__profd_isdigit
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_isdigit, 64

	.type	.L__profc_isgraph,@object       ! @__profc_isgraph
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profc_isgraph:
	.skip	8
	.size	.L__profc_isgraph, 8

	.type	.L__profd_isgraph,@object       ! @__profd_isgraph
	.section	__llvm_prf_data,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profd_isgraph:
	.xword	-127227288456547236             ! 0xfe3bff7489cfb45c
	.xword	1563                            ! 0x61b
	.xword	.L__profc_isgraph-.L__profd_isgraph
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_isgraph, 64

	.type	.L__profc_islower,@object       ! @__profc_islower
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
.L__profc_islower:
	.skip	8
	.size	.L__profc_islower, 8

	.type	.L__profd_islower,@object       ! @__profd_islower
	.section	__llvm_prf_data,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
.L__profd_islower:
	.xword	7501983819047161697             ! 0x681c66894508cf61
	.xword	1563                            ! 0x61b
	.xword	.L__profc_islower-.L__profd_islower
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_islower, 64

	.type	.L__profc_isprint,@object       ! @__profc_isprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
.L__profc_isprint:
	.skip	8
	.size	.L__profc_isprint, 8

	.type	.L__profd_isprint,@object       ! @__profd_isprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
.L__profd_isprint:
	.xword	-7275761640889424986            ! 0x9b074d56145f63a6
	.xword	1563                            ! 0x61b
	.xword	.L__profc_isprint-.L__profd_isprint
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_isprint, 64

	.type	.L__profc_isspace,@object       ! @__profc_isspace
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
.L__profc_isspace:
	.skip	24
	.size	.L__profc_isspace, 24

	.type	.L__profd_isspace,@object       ! @__profd_isspace
	.section	__llvm_prf_data,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
.L__profd_isspace:
	.xword	9032360604355461395             ! 0x7d59641d39d70113
	.xword	6354907                         ! 0x60f7db
	.xword	.L__profc_isspace-.L__profd_isspace
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_isspace, 64

	.type	.L__profc_isupper,@object       ! @__profc_isupper
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
.L__profc_isupper:
	.skip	8
	.size	.L__profc_isupper, 8

	.type	.L__profd_isupper,@object       ! @__profd_isupper
	.section	__llvm_prf_data,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
.L__profd_isupper:
	.xword	4174714232255583053             ! 0x39ef9079c45c934d
	.xword	1563                            ! 0x61b
	.xword	.L__profc_isupper-.L__profd_isupper
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_isupper, 64

	.type	.L__profc_iswcntrl,@object      ! @__profc_iswcntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profc_iswcntrl:
	.skip	56
	.size	.L__profc_iswcntrl, 56

	.type	.L__profd_iswcntrl,@object      ! @__profd_iswcntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profd_iswcntrl:
	.xword	7000259844681188668             ! 0x6125eb3d61a7453c
	.xword	106600273393371                 ! 0x60f3cf6db6db
	.xword	.L__profc_iswcntrl-.L__profd_iswcntrl
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_iswcntrl, 64

	.type	.L__profc_iswdigit,@object      ! @__profc_iswdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profc_iswdigit:
	.skip	8
	.size	.L__profc_iswdigit, 8

	.type	.L__profd_iswdigit,@object      ! @__profd_iswdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profd_iswdigit:
	.xword	8583753245428091608             ! 0x771f9e1919590ad8
	.xword	1563                            ! 0x61b
	.xword	.L__profc_iswdigit-.L__profd_iswdigit
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_iswdigit, 64

	.type	.L__profc_iswprint,@object      ! @__profc_iswprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profc_iswprint:
	.skip	80
	.size	.L__profc_iswprint, 80

	.type	.L__profd_iswprint,@object      ! @__profd_iswprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profd_iswprint:
	.xword	-719555261641779946             ! 0xf603a04d49941516
	.xword	-2566119187471392224            ! 0xdc635031e3742220
	.xword	.L__profc_iswprint-.L__profd_iswprint
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	10                              ! 0xa
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_iswprint, 64

	.type	.L__profc_iswxdigit,@object     ! @__profc_iswxdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profc_iswxdigit:
	.skip	24
	.size	.L__profc_iswxdigit, 24

	.type	.L__profd_iswxdigit,@object     ! @__profd_iswxdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profd_iswxdigit:
	.xword	624771703830219826              ! 0x8aba28df0840c32
	.xword	6354651                         ! 0x60f6db
	.xword	.L__profc_iswxdigit-.L__profd_iswxdigit
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_iswxdigit, 64

	.type	.L__profc_toascii,@object       ! @__profc_toascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
.L__profc_toascii:
	.skip	8
	.size	.L__profc_toascii, 8

	.type	.L__profd_toascii,@object       ! @__profd_toascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
.L__profd_toascii:
	.xword	4548159975983457080             ! 0x3f1e4f66a624a338
	.xword	24                              ! 0x18
	.xword	.L__profc_toascii-.L__profd_toascii
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_toascii, 64

	.type	.L__profc_fdim,@object          ! @__profc_fdim
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
.L__profc_fdim:
	.skip	32
	.size	.L__profc_fdim, 32

	.type	.L__profd_fdim,@object          ! @__profd_fdim
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
.L__profd_fdim:
	.xword	-3545869933759497925            ! 0xceca8a150286f93b
	.xword	7369846577040809592             ! 0x6646f46a29a55e78
	.xword	.L__profc_fdim-.L__profd_fdim
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_fdim, 64

	.type	.L__profc_fdimf,@object         ! @__profc_fdimf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
.L__profc_fdimf:
	.skip	32
	.size	.L__profc_fdimf, 32

	.type	.L__profd_fdimf,@object         ! @__profd_fdimf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
.L__profd_fdimf:
	.xword	-1547869627280940664            ! 0xea84dcc6634da188
	.xword	7369846577040809592             ! 0x6646f46a29a55e78
	.xword	.L__profc_fdimf-.L__profd_fdimf
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_fdimf, 64

	.type	.L__profc_fmax,@object          ! @__profc_fmax
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
.L__profc_fmax:
	.skip	48
	.size	.L__profc_fmax, 48

	.type	.L__profd_fmax,@object          ! @__profd_fmax
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
.L__profd_fmax:
	.xword	-2423801789625842334            ! 0xde5ced1d3b654562
	.xword	3977842549302548673             ! 0x373422b91b9cd8c1
	.xword	.L__profc_fmax-.L__profd_fmax
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	6                               ! 0x6
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_fmax, 64

	.type	.L__profc_fmaxf,@object         ! @__profc_fmaxf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
.L__profc_fmaxf:
	.skip	48
	.size	.L__profc_fmaxf, 48

	.type	.L__profd_fmaxf,@object         ! @__profd_fmaxf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
.L__profd_fmaxf:
	.xword	-5134209104457391460            ! 0xb8bfa0058e3da29c
	.xword	3977842549302548673             ! 0x373422b91b9cd8c1
	.xword	.L__profc_fmaxf-.L__profd_fmaxf
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	6                               ! 0x6
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_fmaxf, 64

	.type	.L__profc_fmaxl,@object         ! @__profc_fmaxl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
.L__profc_fmaxl:
	.skip	48
	.size	.L__profc_fmaxl, 48

	.type	.L__profd_fmaxl,@object         ! @__profd_fmaxl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
.L__profd_fmaxl:
	.xword	-3138580006960380340            ! 0xd471861cd1fbc64c
	.xword	3977842549302548673             ! 0x373422b91b9cd8c1
	.xword	.L__profc_fmaxl-.L__profd_fmaxl
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	6                               ! 0x6
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_fmaxl, 64

	.type	.L__profc_fmin,@object          ! @__profc_fmin
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
.L__profc_fmin:
	.skip	48
	.size	.L__profc_fmin, 48

	.type	.L__profd_fmin,@object          ! @__profd_fmin
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
.L__profd_fmin:
	.xword	965427315610335377              ! 0xd65e3074b69b891
	.xword	3977842549302548673             ! 0x373422b91b9cd8c1
	.xword	.L__profc_fmin-.L__profd_fmin
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	6                               ! 0x6
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_fmin, 64

	.type	.L__profc_fminf,@object         ! @__profc_fminf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
.L__profc_fminf:
	.skip	48
	.size	.L__profc_fminf, 48

	.type	.L__profd_fminf,@object         ! @__profd_fminf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
.L__profd_fminf:
	.xword	7710199602704325723             ! 0x6b0021b0328c9c5b
	.xword	3977842549302548673             ! 0x373422b91b9cd8c1
	.xword	.L__profc_fminf-.L__profd_fminf
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	6                               ! 0x6
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_fminf, 64

	.type	.L__profc_fminl,@object         ! @__profc_fminl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
.L__profc_fminl:
	.skip	48
	.size	.L__profc_fminl, 48

	.type	.L__profd_fminl,@object         ! @__profd_fminl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
.L__profd_fminl:
	.xword	2487418697363824514             ! 0x2285162058091f82
	.xword	3977842549302548673             ! 0x373422b91b9cd8c1
	.xword	.L__profc_fminl-.L__profd_fminl
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	6                               ! 0x6
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_fminl, 64

	.type	.L__profc_l64a,@object          ! @__profc_l64a
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
.L__profc_l64a:
	.skip	16
	.size	.L__profc_l64a, 16

	.type	.L__profd_l64a,@object          ! @__profd_l64a
	.section	__llvm_prf_data,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
.L__profd_l64a:
	.xword	-6158745991357604691            ! 0xaa87bd26bb44dcad
	.xword	17496                           ! 0x4458
	.xword	.L__profc_l64a-.L__profd_l64a
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_l64a, 64

	.type	.L__profc_srand,@object         ! @__profc_srand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
.L__profc_srand:
	.skip	8
	.size	.L__profc_srand, 8

	.type	.L__profd_srand,@object         ! @__profd_srand
	.section	__llvm_prf_data,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
.L__profd_srand:
	.xword	-2085616837322687880            ! 0xe30e668959ceba78
	.xword	0                               ! 0x0
	.xword	.L__profc_srand-.L__profd_srand
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_srand, 64

	.type	.L__profc_rand,@object          ! @__profc_rand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
.L__profc_rand:
	.skip	8
	.size	.L__profc_rand, 8

	.type	.L__profd_rand,@object          ! @__profd_rand
	.section	__llvm_prf_data,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
.L__profd_rand:
	.xword	7206085285791387956             ! 0x6401286350c3d134
	.xword	24                              ! 0x18
	.xword	.L__profc_rand-.L__profd_rand
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rand, 64

	.type	.L__profc_insque,@object        ! @__profc_insque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
.L__profc_insque:
	.skip	24
	.size	.L__profc_insque, 24

	.type	.L__profd_insque,@object        ! @__profd_insque
	.section	__llvm_prf_data,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
.L__profd_insque:
	.xword	-5080349535175464041            ! 0xb97ef903bd0bab97
	.xword	45786906010769                  ! 0x29a49844a491
	.xword	.L__profc_insque-.L__profd_insque
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_insque, 64

	.type	.L__profc_remque,@object        ! @__profc_remque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
.L__profc_remque:
	.skip	24
	.size	.L__profc_remque, 24

	.type	.L__profd_remque,@object        ! @__profd_remque
	.section	__llvm_prf_data,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
.L__profd_remque:
	.xword	-7214219538753974334            ! 0x9be1f18d54e30fc2
	.xword	11043906705                     ! 0x29244a491
	.xword	.L__profc_remque-.L__profd_remque
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_remque, 64

	.type	.L__profc_lsearch,@object       ! @__profc_lsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
.L__profc_lsearch:
	.skip	24
	.size	.L__profc_lsearch, 24

	.type	.L__profd_lsearch,@object       ! @__profd_lsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
.L__profd_lsearch:
	.xword	-7032153342590886098            ! 0x9e68c5caf8cb5f2e
	.xword	1245367951758424                ! 0x46ca7d2611458
	.xword	.L__profc_lsearch-.L__profd_lsearch
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_lsearch, 64

	.type	.L__profc_lfind,@object         ! @__profc_lfind
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
.L__profc_lfind:
	.skip	24
	.size	.L__profc_lfind, 24

	.type	.L__profd_lfind,@object         ! @__profd_lfind
	.section	__llvm_prf_data,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
.L__profd_lfind:
	.xword	-6350214982902907667            ! 0xa7df811e30b57ced
	.xword	1245367951758424                ! 0x46ca7d2611458
	.xword	.L__profc_lfind-.L__profd_lfind
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_lfind, 64

	.type	.L__profc_abs,@object           ! @__profc_abs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
.L__profc_abs:
	.skip	16
	.size	.L__profc_abs, 16

	.type	.L__profd_abs,@object           ! @__profd_abs
	.section	__llvm_prf_data,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
.L__profd_abs:
	.xword	-238465663743841031             ! 0xfcb0ccbe056bacf9
	.xword	99164                           ! 0x1835c
	.xword	.L__profc_abs-.L__profd_abs
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_abs, 64

	.type	.L__profc_atoi,@object          ! @__profc_atoi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
.L__profc_atoi:
	.skip	56
	.size	.L__profc_atoi, 56

	.type	.L__profd_atoi,@object          ! @__profd_atoi
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
.L__profd_atoi:
	.xword	-6544211519801369139            ! 0xa52e4a4ba3385dcd
	.xword	638206505195021                 ! 0x244720809160d
	.xword	.L__profc_atoi-.L__profd_atoi
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_atoi, 64

	.type	.L__profc_atol,@object          ! @__profc_atol
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
.L__profc_atol:
	.skip	56
	.size	.L__profc_atol, 56

	.type	.L__profd_atol,@object          ! @__profd_atol
	.section	__llvm_prf_data,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
.L__profd_atol:
	.xword	8236175749196770609             ! 0x724cc634ee8f6d31
	.xword	638206505195021                 ! 0x244720809160d
	.xword	.L__profc_atol-.L__profd_atol
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_atol, 64

	.type	.L__profc_atoll,@object         ! @__profc_atoll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
.L__profc_atoll:
	.skip	56
	.size	.L__profc_atoll, 56

	.type	.L__profd_atoll,@object         ! @__profd_atoll
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
.L__profd_atoll:
	.xword	3653807471789013357             ! 0x32b4ee8971a6f96d
	.xword	638206505195021                 ! 0x244720809160d
	.xword	.L__profc_atoll-.L__profd_atoll
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_atoll, 64

	.type	.L__profc_bsearch,@object       ! @__profc_bsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
.L__profc_bsearch:
	.skip	32
	.size	.L__profc_bsearch, 32

	.type	.L__profd_bsearch,@object       ! @__profd_bsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
.L__profd_bsearch:
	.xword	8750110911118262334             ! 0x796ea3837a79403e
	.xword	-852542619444921222             ! 0xf42b29012c1abc7a
	.xword	.L__profc_bsearch-.L__profd_bsearch
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_bsearch, 64

	.type	.L__profc_bsearch_r,@object     ! @__profc_bsearch_r
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
.L__profc_bsearch_r:
	.skip	32
	.size	.L__profc_bsearch_r, 32

	.type	.L__profd_bsearch_r,@object     ! @__profd_bsearch_r
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
.L__profd_bsearch_r:
	.xword	1417097008757763708             ! 0x13aa8a38ab466e7c
	.xword	1259382983000112142             ! 0x117a3a2689e4bc0e
	.xword	.L__profc_bsearch_r-.L__profd_bsearch_r
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_bsearch_r, 64

	.type	.L__profc_div,@object           ! @__profc_div
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_div
	.p2align	3, 0x0
.L__profc_div:
	.skip	8
	.size	.L__profc_div, 8

	.type	.L__profd_div,@object           ! @__profd_div
	.section	__llvm_prf_data,"awG",@progbits,__profc_div
	.p2align	3, 0x0
.L__profd_div:
	.xword	5497092892325669176             ! 0x4c4998dc58656938
	.xword	24                              ! 0x18
	.xword	.L__profc_div-.L__profd_div
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_div, 64

	.type	.L__profc_imaxabs,@object       ! @__profc_imaxabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profc_imaxabs:
	.skip	16
	.size	.L__profc_imaxabs, 16

	.type	.L__profd_imaxabs,@object       ! @__profd_imaxabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profd_imaxabs:
	.xword	8946668544180752025             ! 0x7c28f3a3b30e0e99
	.xword	99164                           ! 0x1835c
	.xword	.L__profc_imaxabs-.L__profd_imaxabs
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_imaxabs, 64

	.type	.L__profc_imaxdiv,@object       ! @__profc_imaxdiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
.L__profc_imaxdiv:
	.skip	8
	.size	.L__profc_imaxdiv, 8

	.type	.L__profd_imaxdiv,@object       ! @__profd_imaxdiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
.L__profd_imaxdiv:
	.xword	-3928426486442246988            ! 0xc97b6cec9d5fbcb4
	.xword	24                              ! 0x18
	.xword	.L__profc_imaxdiv-.L__profd_imaxdiv
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_imaxdiv, 64

	.type	.L__profc_labs,@object          ! @__profc_labs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
.L__profc_labs:
	.skip	16
	.size	.L__profc_labs, 16

	.type	.L__profd_labs,@object          ! @__profd_labs
	.section	__llvm_prf_data,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
.L__profd_labs:
	.xword	-7118441263952323418            ! 0x9d363762b3a39ca6
	.xword	99164                           ! 0x1835c
	.xword	.L__profc_labs-.L__profd_labs
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_labs, 64

	.type	.L__profc_ldiv,@object          ! @__profc_ldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
.L__profc_ldiv:
	.skip	8
	.size	.L__profc_ldiv, 8

	.type	.L__profd_ldiv,@object          ! @__profd_ldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
.L__profd_ldiv:
	.xword	7149836041034155625             ! 0x633951ff74204669
	.xword	24                              ! 0x18
	.xword	.L__profc_ldiv-.L__profd_ldiv
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_ldiv, 64

	.type	.L__profc_llabs,@object         ! @__profc_llabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
.L__profc_llabs:
	.skip	16
	.size	.L__profc_llabs, 16

	.type	.L__profd_llabs,@object         ! @__profd_llabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
.L__profd_llabs:
	.xword	7684789126781046466             ! 0x6aa5dafebb918ec2
	.xword	99164                           ! 0x1835c
	.xword	.L__profc_llabs-.L__profd_llabs
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_llabs, 64

	.type	.L__profc_lldiv,@object         ! @__profc_lldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
.L__profc_lldiv:
	.skip	8
	.size	.L__profc_lldiv, 8

	.type	.L__profd_lldiv,@object         ! @__profd_lldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
.L__profd_lldiv:
	.xword	-5329156747615108898            ! 0xb60b082c520680de
	.xword	24                              ! 0x18
	.xword	.L__profc_lldiv-.L__profd_lldiv
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_lldiv, 64

	.type	.L__profc_wcschr,@object        ! @__profc_wcschr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profc_wcschr:
	.skip	40
	.size	.L__profc_wcschr, 40

	.type	.L__profd_wcschr,@object        ! @__profd_wcschr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profd_wcschr:
	.xword	-2279810736707830048            ! 0xe05c7c36c3687ee0
	.xword	4538308109                      ! 0x10e81160d
	.xword	.L__profc_wcschr-.L__profd_wcschr
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wcschr, 64

	.type	.L__profc_wcscmp,@object        ! @__profc_wcscmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profc_wcscmp:
	.skip	56
	.size	.L__profc_wcscmp, 56

	.type	.L__profd_wcscmp,@object        ! @__profd_wcscmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profd_wcscmp:
	.xword	-3710185595167438704            ! 0xcc82c5dbcd460890
	.xword	1188468208228060                ! 0x438e7d160d6dc
	.xword	.L__profc_wcscmp-.L__profd_wcscmp
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wcscmp, 64

	.type	.L__profc_wcscpy,@object        ! @__profc_wcscpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profc_wcscpy:
	.skip	16
	.size	.L__profc_wcscpy, 16

	.type	.L__profd_wcscpy,@object        ! @__profd_wcscpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profd_wcscpy:
	.xword	-8381368184235816342            ! 0x8baf660af6dd0a6a
	.xword	9304                            ! 0x2458
	.xword	.L__profc_wcscpy-.L__profd_wcscpy
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wcscpy, 64

	.type	.L__profc_wcslen,@object        ! @__profc_wcslen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
.L__profc_wcslen:
	.skip	16
	.size	.L__profc_wcslen, 16

	.type	.L__profd_wcslen,@object        ! @__profd_wcslen
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
.L__profd_wcslen:
	.xword	3988408974905483574             ! 0x3759acd4c838a136
	.xword	17496                           ! 0x4458
	.xword	.L__profc_wcslen-.L__profd_wcslen
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wcslen, 64

	.type	.L__profc_wcsncmp,@object       ! @__profc_wcsncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profc_wcsncmp:
	.skip	80
	.size	.L__profc_wcsncmp, 80

	.type	.L__profd_wcsncmp,@object       ! @__profd_wcsncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profd_wcsncmp:
	.xword	-5425166749483878188            ! 0xb4b5ef95c9c0b8d4
	.xword	6710790269995215964             ! 0x5d218431fd366c5c
	.xword	.L__profc_wcsncmp-.L__profd_wcsncmp
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	10                              ! 0xa
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wcsncmp, 64

	.type	.L__profc_wmemchr,@object       ! @__profc_wmemchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profc_wmemchr:
	.skip	40
	.size	.L__profc_wmemchr, 40

	.type	.L__profd_wmemchr,@object       ! @__profd_wmemchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profd_wmemchr:
	.xword	-150916099757221660             ! 0xfde7d69b5b1558e4
	.xword	4538308109                      ! 0x10e81160d
	.xword	.L__profc_wmemchr-.L__profd_wmemchr
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wmemchr, 64

	.type	.L__profc_wmemcmp,@object       ! @__profc_wmemcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profc_wmemcmp:
	.skip	48
	.size	.L__profc_wmemcmp, 48

	.type	.L__profd_wmemcmp,@object       ! @__profd_wmemcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profd_wmemcmp:
	.xword	5386172057678365784             ! 0x4abf86f3050dc458
	.xword	1189621521503964                ! 0x439f45834d6dc
	.xword	.L__profc_wmemcmp-.L__profd_wmemcmp
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	6                               ! 0x6
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wmemcmp, 64

	.type	.L__profc_wmemcpy,@object       ! @__profc_wmemcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
.L__profc_wmemcpy:
	.skip	16
	.size	.L__profc_wmemcpy, 16

	.type	.L__profd_wmemcpy,@object       ! @__profd_wmemcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
.L__profd_wmemcpy:
	.xword	7326050423799855187             ! 0x65ab5c0b9d30b853
	.xword	9304                            ! 0x2458
	.xword	.L__profc_wmemcpy-.L__profd_wmemcpy
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wmemcpy, 64

	.type	.L__profc_wmemmove,@object      ! @__profc_wmemmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profc_wmemmove:
	.skip	40
	.size	.L__profc_wmemmove, 40

	.type	.L__profd_wmemmove,@object      ! @__profd_wmemmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profd_wmemmove:
	.xword	-4659407939446788683            ! 0xbf56752a69a3adb5
	.xword	-1500206092990891740            ! 0xeb2e3281c166b924
	.xword	.L__profc_wmemmove-.L__profd_wmemmove
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wmemmove, 64

	.type	.L__profc_wmemset,@object       ! @__profc_wmemset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profc_wmemset:
	.skip	16
	.size	.L__profc_wmemset, 16

	.type	.L__profd_wmemset,@object       ! @__profd_wmemset
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profd_wmemset:
	.xword	-8291142148468431281            ! 0x8ceff224f245264f
	.xword	9304                            ! 0x2458
	.xword	.L__profc_wmemset-.L__profd_wmemset
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wmemset, 64

	.type	.L__profc_bcopy,@object         ! @__profc_bcopy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profc_bcopy:
	.skip	40
	.size	.L__profc_bcopy, 40

	.type	.L__profd_bcopy,@object         ! @__profd_bcopy
	.section	__llvm_prf_data,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profd_bcopy:
	.xword	-8407331144368071880            ! 0x8b5328de3edcdb38
	.xword	5234109875325077019             ! 0x48a34b333a1d861b
	.xword	.L__profc_bcopy-.L__profd_bcopy
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_bcopy, 64

	.type	.L__profc_rotl64,@object        ! @__profc_rotl64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profc_rotl64:
	.skip	8
	.size	.L__profc_rotl64, 8

	.type	.L__profd_rotl64,@object        ! @__profd_rotl64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profd_rotl64:
	.xword	4714666614722164144             ! 0x416ddc4e84e875b0
	.xword	24                              ! 0x18
	.xword	.L__profc_rotl64-.L__profd_rotl64
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotl64, 64

	.type	.L__profc_rotr64,@object        ! @__profc_rotr64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profc_rotr64:
	.skip	8
	.size	.L__profc_rotr64, 8

	.type	.L__profd_rotr64,@object        ! @__profd_rotr64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profd_rotr64:
	.xword	-8427642833712987187            ! 0x8b0aff7e8aabc3cd
	.xword	24                              ! 0x18
	.xword	.L__profc_rotr64-.L__profd_rotr64
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotr64, 64

	.type	.L__profc_rotl32,@object        ! @__profc_rotl32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profc_rotl32:
	.skip	8
	.size	.L__profc_rotl32, 8

	.type	.L__profd_rotl32,@object        ! @__profd_rotl32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profd_rotl32:
	.xword	6417704780586152324             ! 0x5910447ed829f184
	.xword	24                              ! 0x18
	.xword	.L__profc_rotl32-.L__profd_rotl32
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotl32, 64

	.type	.L__profc_rotr32,@object        ! @__profc_rotr32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profc_rotr32:
	.skip	8
	.size	.L__profc_rotr32, 8

	.type	.L__profd_rotr32,@object        ! @__profd_rotr32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profd_rotr32:
	.xword	-5668908084823466940            ! 0xb153fe21cbc1dc44
	.xword	24                              ! 0x18
	.xword	.L__profc_rotr32-.L__profd_rotr32
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotr32, 64

	.type	.L__profc_rotl_sz,@object       ! @__profc_rotl_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profc_rotl_sz:
	.skip	8
	.size	.L__profc_rotl_sz, 8

	.type	.L__profd_rotl_sz,@object       ! @__profd_rotl_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profd_rotl_sz:
	.xword	-3686623714176605670            ! 0xccd67b43b7f8e21a
	.xword	24                              ! 0x18
	.xword	.L__profc_rotl_sz-.L__profd_rotl_sz
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotl_sz, 64

	.type	.L__profc_rotr_sz,@object       ! @__profc_rotr_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profc_rotr_sz:
	.skip	8
	.size	.L__profc_rotr_sz, 8

	.type	.L__profd_rotr_sz,@object       ! @__profd_rotr_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profd_rotr_sz:
	.xword	3415499704483829380             ! 0x2f664ae29835d684
	.xword	24                              ! 0x18
	.xword	.L__profc_rotr_sz-.L__profd_rotr_sz
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotr_sz, 64

	.type	.L__profc_rotl16,@object        ! @__profc_rotl16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profc_rotl16:
	.skip	8
	.size	.L__profc_rotl16, 8

	.type	.L__profd_rotl16,@object        ! @__profd_rotl16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profd_rotl16:
	.xword	7327166975465201445             ! 0x65af538b0e939f25
	.xword	24                              ! 0x18
	.xword	.L__profc_rotl16-.L__profd_rotl16
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotl16, 64

	.type	.L__profc_rotr16,@object        ! @__profc_rotr16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profc_rotr16:
	.skip	8
	.size	.L__profc_rotr16, 8

	.type	.L__profd_rotr16,@object        ! @__profd_rotr16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profd_rotr16:
	.xword	5274763753728838268             ! 0x4933b9afe71d0a7c
	.xword	24                              ! 0x18
	.xword	.L__profc_rotr16-.L__profd_rotr16
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotr16, 64

	.type	.L__profc_rotl8,@object         ! @__profc_rotl8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profc_rotl8:
	.skip	8
	.size	.L__profc_rotl8, 8

	.type	.L__profd_rotl8,@object         ! @__profd_rotl8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profd_rotl8:
	.xword	4408423234350850624             ! 0x3d2ddd93270fa240
	.xword	24                              ! 0x18
	.xword	.L__profc_rotl8-.L__profd_rotl8
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotl8, 64

	.type	.L__profc_rotr8,@object         ! @__profc_rotr8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profc_rotr8:
	.skip	8
	.size	.L__profc_rotr8, 8

	.type	.L__profd_rotr8,@object         ! @__profd_rotr8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profd_rotr8:
	.xword	-6535801773217052896            ! 0xa54c2aea59078720
	.xword	24                              ! 0x18
	.xword	.L__profc_rotr8-.L__profd_rotr8
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotr8, 64

	.type	.L__profc_bswap_16,@object      ! @__profc_bswap_16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profc_bswap_16:
	.skip	8
	.size	.L__profc_bswap_16, 8

	.type	.L__profd_bswap_16,@object      ! @__profd_bswap_16
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profd_bswap_16:
	.xword	-8870828063230114195            ! 0x84e47ce04b9a466d
	.xword	24                              ! 0x18
	.xword	.L__profc_bswap_16-.L__profd_bswap_16
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_bswap_16, 64

	.type	.L__profc_bswap_32,@object      ! @__profc_bswap_32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profc_bswap_32:
	.skip	8
	.size	.L__profc_bswap_32, 8

	.type	.L__profd_bswap_32,@object      ! @__profd_bswap_32
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profd_bswap_32:
	.xword	7304833549461180700             ! 0x655ffb691afd511c
	.xword	24                              ! 0x18
	.xword	.L__profc_bswap_32-.L__profd_bswap_32
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_bswap_32, 64

	.type	.L__profc_bswap_64,@object      ! @__profc_bswap_64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profc_bswap_64:
	.skip	8
	.size	.L__profc_bswap_64, 8

	.type	.L__profd_bswap_64,@object      ! @__profd_bswap_64
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profd_bswap_64:
	.xword	2873856403134720854             ! 0x27e1fd2c1c53ab56
	.xword	24                              ! 0x18
	.xword	.L__profc_bswap_64-.L__profd_bswap_64
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_bswap_64, 64

	.type	.L__profc_ffs,@object           ! @__profc_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
.L__profc_ffs:
	.skip	24
	.size	.L__profc_ffs, 24

	.type	.L__profd_ffs,@object           ! @__profd_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
.L__profd_ffs:
	.xword	9222170723057548859             ! 0x7ffbbb6955da3e3b
	.xword	19458657686616                  ! 0x11b292611458
	.xword	.L__profc_ffs-.L__profd_ffs
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_ffs, 64

	.type	.L__profc_libiberty_ffs,@object ! @__profc_libiberty_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profc_libiberty_ffs:
	.skip	24
	.size	.L__profc_libiberty_ffs, 24

	.type	.L__profd_libiberty_ffs,@object ! @__profd_libiberty_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profd_libiberty_ffs:
	.xword	65216057573358521               ! 0xe7b1a8a94fbbb9
	.xword	2952352215704664                ! 0xa7d261111a458
	.xword	.L__profc_libiberty_ffs-.L__profd_libiberty_ffs
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_libiberty_ffs, 64

	.type	.L__profc_gl_isinff,@object     ! @__profc_gl_isinff
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
.L__profc_gl_isinff:
	.skip	24
	.size	.L__profc_gl_isinff, 24

	.type	.L__profd_gl_isinff,@object     ! @__profd_gl_isinff
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
.L__profd_gl_isinff:
	.xword	6535010584615638394             ! 0x5ab10580b36ed57a
	.xword	6354652                         ! 0x60f6dc
	.xword	.L__profc_gl_isinff-.L__profd_gl_isinff
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_gl_isinff, 64

	.type	.L__profc_gl_isinfd,@object     ! @__profc_gl_isinfd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
.L__profc_gl_isinfd:
	.skip	24
	.size	.L__profc_gl_isinfd, 24

	.type	.L__profd_gl_isinfd,@object     ! @__profd_gl_isinfd
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
.L__profd_gl_isinfd:
	.xword	-9165907066207032774            ! 0x80cc28161a7caa3a
	.xword	6354652                         ! 0x60f6dc
	.xword	.L__profc_gl_isinfd-.L__profd_gl_isinfd
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_gl_isinfd, 64

	.type	.L__profc_gl_isinfl,@object     ! @__profc_gl_isinfl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
.L__profc_gl_isinfl:
	.skip	24
	.size	.L__profc_gl_isinfl, 24

	.type	.L__profd_gl_isinfl,@object     ! @__profd_gl_isinfl
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
.L__profd_gl_isinfl:
	.xword	4731159788068304891             ! 0x41a874c2af6c77fb
	.xword	6354652                         ! 0x60f6dc
	.xword	.L__profc_gl_isinfl-.L__profd_gl_isinfl
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_gl_isinfl, 64

	.type	.L__profc__Qp_itoq,@object      ! @__profc__Qp_itoq
	.section	__llvm_prf_cnts,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
.L__profc__Qp_itoq:
	.skip	8
	.size	.L__profc__Qp_itoq, 8

	.type	.L__profd__Qp_itoq,@object      ! @__profd__Qp_itoq
	.section	__llvm_prf_data,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
.L__profd__Qp_itoq:
	.xword	-3858125999267273921            ! 0xca752ed84af9a33f
	.xword	0                               ! 0x0
	.xword	.L__profc__Qp_itoq-.L__profd__Qp_itoq
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd__Qp_itoq, 64

	.type	.L__profc_ldexpf,@object        ! @__profc_ldexpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
.L__profc_ldexpf:
	.skip	64
	.size	.L__profc_ldexpf, 64

	.type	.L__profd_ldexpf,@object        ! @__profd_ldexpf
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
.L__profd_ldexpf:
	.xword	-2560632889718296859            ! 0xdc76cdf42028aee5
	.xword	-2048372819454505383            ! 0xe392b7c600d94e59
	.xword	.L__profc_ldexpf-.L__profd_ldexpf
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	8                               ! 0x8
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_ldexpf, 64

	.type	.L__profc_ldexp,@object         ! @__profc_ldexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
.L__profc_ldexp:
	.skip	64
	.size	.L__profc_ldexp, 64

	.type	.L__profd_ldexp,@object         ! @__profd_ldexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
.L__profd_ldexp:
	.xword	-240549059163932437             ! 0xfca965e7b97ab8eb
	.xword	-2048372819454505383            ! 0xe392b7c600d94e59
	.xword	.L__profc_ldexp-.L__profd_ldexp
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	8                               ! 0x8
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_ldexp, 64

	.type	.L__profc_ldexpl,@object        ! @__profc_ldexpl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
.L__profc_ldexpl:
	.skip	64
	.size	.L__profc_ldexpl, 64

	.type	.L__profd_ldexpl,@object        ! @__profd_ldexpl
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
.L__profd_ldexpl:
	.xword	-5097262943286299417            ! 0xb942e25c0aa874e7
	.xword	-2048372819454505383            ! 0xe392b7c600d94e59
	.xword	.L__profc_ldexpl-.L__profd_ldexpl
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	8                               ! 0x8
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_ldexpl, 64

	.type	.L__profc_memxor,@object        ! @__profc_memxor
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
.L__profc_memxor:
	.skip	16
	.size	.L__profc_memxor, 16

	.type	.L__profd_memxor,@object        ! @__profd_memxor
	.section	__llvm_prf_data,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
.L__profd_memxor:
	.xword	-8368025376422999318            ! 0x8bdecd417eda4aea
	.xword	1164376                         ! 0x11c458
	.xword	.L__profc_memxor-.L__profd_memxor
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_memxor, 64

	.type	.L__profc_strncat,@object       ! @__profc_strncat
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
.L__profc_strncat:
	.skip	40
	.size	.L__profc_strncat, 40

	.type	.L__profd_strncat,@object       ! @__profd_strncat
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
.L__profd_strncat:
	.xword	-3582483947543505905            ! 0xce4875d49d21540f
	.xword	76123606467028056               ! 0x10e72044a7d2458
	.xword	.L__profc_strncat-.L__profd_strncat
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strncat, 64

	.type	.L__profc_strnlen,@object       ! @__profc_strnlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profc_strnlen:
	.skip	32
	.size	.L__profc_strnlen, 32

	.type	.L__profd_strnlen,@object       ! @__profd_strnlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profd_strnlen:
	.xword	517590790318988421              ! 0x72eda14dbfa1c85
	.xword	4537021528                      ! 0x10e6d7458
	.xword	.L__profc_strnlen-.L__profd_strnlen
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strnlen, 64

	.type	.L__profc_strpbrk,@object       ! @__profc_strpbrk
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profc_strpbrk:
	.skip	32
	.size	.L__profc_strpbrk, 32

	.type	.L__profd_strpbrk,@object       ! @__profd_strpbrk
	.section	__llvm_prf_data,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profd_strpbrk:
	.xword	-6867074718569872870            ! 0xa0b33fed4193c21a
	.xword	-4444802448421279214            ! 0xc250e3b905102a12
	.xword	.L__profc_strpbrk-.L__profd_strpbrk
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strpbrk, 64

	.type	.L__profc_strrchr,@object       ! @__profc_strrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profc_strrchr:
	.skip	24
	.size	.L__profc_strrchr, 24

	.type	.L__profd_strrchr,@object       ! @__profd_strrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profd_strrchr:
	.xword	5307837722043833871             ! 0x49a93a493bd75e0f
	.xword	217420731480                    ! 0x329f491458
	.xword	.L__profc_strrchr-.L__profd_strrchr
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strrchr, 64

	.type	.L__profc_strstr,@object        ! @__profc_strstr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
.L__profc_strstr:
	.skip	32
	.size	.L__profc_strstr, 32

	.type	.L__profd_strstr,@object        ! @__profd_strstr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
.L__profd_strstr:
	.xword	3560562421867190603             ! 0x3169a8a873ff994b
	.xword	-7798267876297541628            ! 0x93c6fcaef9f1f804
	.xword	.L__profc_strstr-.L__profd_strstr
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strstr, 64

	.type	.L__profc_copysign,@object      ! @__profc_copysign
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
.L__profc_copysign:
	.skip	56
	.size	.L__profc_copysign, 56

	.type	.L__profd_copysign,@object      ! @__profd_copysign
	.section	__llvm_prf_data,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
.L__profd_copysign:
	.xword	-9076603418344796971            ! 0x82096d47ea764cd5
	.xword	4200982705386070127             ! 0x3a4ce3834618a06f
	.xword	.L__profc_copysign-.L__profd_copysign
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_copysign, 64

	.type	.L__profc_memmem,@object        ! @__profc_memmem
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
.L__profc_memmem:
	.skip	56
	.size	.L__profc_memmem, 56

	.type	.L__profd_memmem,@object        ! @__profd_memmem
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
.L__profd_memmem:
	.xword	-7485463843177831536            ! 0x981e4a4b585ae390
	.xword	5508063777036862020             ! 0x4c7092d27e7a8244
	.xword	.L__profc_memmem-.L__profd_memmem
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_memmem, 64

	.type	.L__profc_mempcpy,@object       ! @__profc_mempcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
.L__profc_mempcpy:
	.skip	8
	.size	.L__profc_mempcpy, 8

	.type	.L__profd_mempcpy,@object       ! @__profd_mempcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
.L__profd_mempcpy:
	.xword	-722907995699078206             ! 0xf5f7b7020f111bc2
	.xword	24                              ! 0x18
	.xword	.L__profc_mempcpy-.L__profd_mempcpy
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_mempcpy, 64

	.type	.L__profc_frexp,@object         ! @__profc_frexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
.L__profc_frexp:
	.skip	72
	.size	.L__profc_frexp, 72

	.type	.L__profd_frexp,@object         ! @__profd_frexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
.L__profd_frexp:
	.xword	-2997169543230593137            ! 0xd667ea2e1c1ee78f
	.xword	-2373782428686282824            ! 0xdf0ea1753c170fb8
	.xword	.L__profc_frexp-.L__profd_frexp
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	9                               ! 0x9
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_frexp, 64

	.type	.L__profc___muldi3,@object      ! @__profc___muldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profc___muldi3:
	.skip	24
	.size	.L__profc___muldi3, 24

	.type	.L__profd___muldi3,@object      ! @__profd___muldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profd___muldi3:
	.xword	3987271357918321816             ! 0x3755a22cafcf9c98
	.xword	2320045144                      ! 0x8a491458
	.xword	.L__profc___muldi3-.L__profd___muldi3
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___muldi3, 64

	.type	.L__profc_udivmodsi4,@object    ! @__profc_udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profc_udivmodsi4:
	.skip	72
	.size	.L__profc_udivmodsi4, 72

	.type	.L__profd_udivmodsi4,@object    ! @__profd_udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profd_udivmodsi4:
	.xword	4670832108574850701             ! 0x40d2210e3d17be8d
	.xword	842736872197088594              ! 0xbb200b8626e6552
	.xword	.L__profc_udivmodsi4-.L__profd_udivmodsi4
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	9                               ! 0x9
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_udivmodsi4, 64

	.type	.L__profc___clrsbqi2,@object    ! @__profc___clrsbqi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profc___clrsbqi2:
	.skip	24
	.size	.L__profc___clrsbqi2, 24

	.type	.L__profd___clrsbqi2,@object    ! @__profd___clrsbqi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profd___clrsbqi2:
	.xword	-7858138078702729622            ! 0x92f2490d36f4066a
	.xword	187824153796641880              ! 0x29b49129f498458
	.xword	.L__profc___clrsbqi2-.L__profd___clrsbqi2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___clrsbqi2, 64

	.type	.L__profc___clrsbdi2,@object    ! @__profc___clrsbdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profc___clrsbdi2:
	.skip	24
	.size	.L__profc___clrsbdi2, 24

	.type	.L__profd___clrsbdi2,@object    ! @__profd___clrsbdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profd___clrsbdi2:
	.xword	-1533375985051215657            ! 0xeab85aaa6fe858d7
	.xword	187824153796641880              ! 0x29b49129f498458
	.xword	.L__profc___clrsbdi2-.L__profd___clrsbdi2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___clrsbdi2, 64

	.type	.L__profc___mulsi3,@object      ! @__profc___mulsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profc___mulsi3:
	.skip	24
	.size	.L__profc___mulsi3, 24

	.type	.L__profd___mulsi3,@object      ! @__profd___mulsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profd___mulsi3:
	.xword	5127670123023436031             ! 0x472924cf303208ff
	.xword	2320045144                      ! 0x8a491458
	.xword	.L__profc___mulsi3-.L__profd___mulsi3
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___mulsi3, 64

	.type	.L__profc___cmovd,@object       ! @__profc___cmovd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profc___cmovd:
	.skip	56
	.size	.L__profc___cmovd, 56

	.type	.L__profd___cmovd,@object       ! @__profd___cmovd
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profd___cmovd:
	.xword	1458405851566781960             ! 0x143d4c6520fd3608
	.xword	-6411111704588201945            ! 0xa70727df48abd027
	.xword	.L__profc___cmovd-.L__profd___cmovd
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___cmovd, 64

	.type	.L__profc___cmovh,@object       ! @__profc___cmovh
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profc___cmovh:
	.skip	56
	.size	.L__profc___cmovh, 56

	.type	.L__profd___cmovh,@object       ! @__profd___cmovh
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profd___cmovh:
	.xword	-1240290101804783090            ! 0xeec99ab9477e2a0e
	.xword	3130117398598530023             ! 0x2b706930a0bc33e7
	.xword	.L__profc___cmovh-.L__profd___cmovh
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___cmovh, 64

	.type	.L__profc___cmovw,@object       ! @__profc___cmovw
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profc___cmovw:
	.skip	56
	.size	.L__profc___cmovw, 56

	.type	.L__profd___cmovw,@object       ! @__profd___cmovw
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profd___cmovw:
	.xword	-6631700889337257300            ! 0xa3f7772d6a6922ac
	.xword	-6411111704588201945            ! 0xa70727df48abd027
	.xword	.L__profc___cmovw-.L__profd___cmovw
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___cmovw, 64

	.type	.L__profc___modi,@object        ! @__profc___modi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
.L__profc___modi:
	.skip	8
	.size	.L__profc___modi, 8

	.type	.L__profd___modi,@object        ! @__profd___modi
	.section	__llvm_prf_data,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
.L__profd___modi:
	.xword	4130297501716739761             ! 0x3951c3b1ce8276b1
	.xword	24                              ! 0x18
	.xword	.L__profc___modi-.L__profd___modi
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___modi, 64

	.type	.L__profc___uitod,@object       ! @__profc___uitod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
.L__profc___uitod:
	.skip	8
	.size	.L__profc___uitod, 8

	.type	.L__profd___uitod,@object       ! @__profd___uitod
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
.L__profd___uitod:
	.xword	-3793169221884876252            ! 0xcb5bf4b0949b6a24
	.xword	24                              ! 0x18
	.xword	.L__profc___uitod-.L__profd___uitod
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___uitod, 64

	.type	.L__profc___uitof,@object       ! @__profc___uitof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
.L__profc___uitof:
	.skip	8
	.size	.L__profc___uitof, 8

	.type	.L__profd___uitof,@object       ! @__profd___uitof
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
.L__profd___uitof:
	.xword	2684105554667313846             ! 0x253fdbc7ed991ab6
	.xword	24                              ! 0x18
	.xword	.L__profc___uitof-.L__profd___uitof
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___uitof, 64

	.type	.L__profc___ulltod,@object      ! @__profc___ulltod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
.L__profc___ulltod:
	.skip	8
	.size	.L__profc___ulltod, 8

	.type	.L__profd___ulltod,@object      ! @__profd___ulltod
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
.L__profd___ulltod:
	.xword	3995277539005434566             ! 0x377213c0fb840ac6
	.xword	24                              ! 0x18
	.xword	.L__profc___ulltod-.L__profd___ulltod
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___ulltod, 64

	.type	.L__profc___ulltof,@object      ! @__profc___ulltof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
.L__profc___ulltof:
	.skip	8
	.size	.L__profc___ulltof, 8

	.type	.L__profd___ulltof,@object      ! @__profd___ulltof
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
.L__profd___ulltof:
	.xword	-1906554817873249395            ! 0xe58a8e7e97dafb8d
	.xword	24                              ! 0x18
	.xword	.L__profc___ulltof-.L__profd___ulltof
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___ulltof, 64

	.type	.L__profc___umodi,@object       ! @__profc___umodi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
.L__profc___umodi:
	.skip	8
	.size	.L__profc___umodi, 8

	.type	.L__profd___umodi,@object       ! @__profd___umodi
	.section	__llvm_prf_data,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
.L__profd___umodi:
	.xword	6154071623751134202             ! 0x5567a7893fff6bfa
	.xword	24                              ! 0x18
	.xword	.L__profc___umodi-.L__profd___umodi
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___umodi, 64

	.type	.L__profc___clzhi2,@object      ! @__profc___clzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profc___clzhi2:
	.skip	24
	.size	.L__profc___clzhi2, 24

	.type	.L__profd___clzhi2,@object      ! @__profd___clzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profd___clzhi2:
	.xword	-9221703320275173474            ! 0x8005edb05af53f9e
	.xword	19458657162328                  ! 0x11b292591458
	.xword	.L__profc___clzhi2-.L__profd___clzhi2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___clzhi2, 64

	.type	.L__profc___ctzhi2,@object      ! @__profc___ctzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profc___ctzhi2:
	.skip	24
	.size	.L__profc___ctzhi2, 24

	.type	.L__profd___ctzhi2,@object      ! @__profd___ctzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profd___ctzhi2:
	.xword	-1569202989881991136            ! 0xea391231d79a6020
	.xword	19458657162328                  ! 0x11b292591458
	.xword	.L__profc___ctzhi2-.L__profd___ctzhi2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___ctzhi2, 64

	.type	.L__profc___fixunssfsi,@object  ! @__profc___fixunssfsi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
.L__profc___fixunssfsi:
	.skip	16
	.size	.L__profc___fixunssfsi, 16

	.type	.L__profd___fixunssfsi,@object  ! @__profd___fixunssfsi
	.section	__llvm_prf_data,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
.L__profd___fixunssfsi:
	.xword	-7800469359816066749            ! 0x93bf2a7226d83943
	.xword	11245552728                     ! 0x29e498458
	.xword	.L__profc___fixunssfsi-.L__profd___fixunssfsi
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___fixunssfsi, 64

	.type	.L__profc___parityhi2,@object   ! @__profc___parityhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profc___parityhi2:
	.skip	24
	.size	.L__profc___parityhi2, 24

	.type	.L__profd___parityhi2,@object   ! @__profd___parityhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profd___parityhi2:
	.xword	1203893203113466329             ! 0x10b5167d5f15d9d9
	.xword	304041497688                    ! 0x46ca491458
	.xword	.L__profc___parityhi2-.L__profd___parityhi2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___parityhi2, 64

	.type	.L__profc___popcounthi2,@object ! @__profc___popcounthi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profc___popcounthi2:
	.skip	24
	.size	.L__profc___popcounthi2, 24

	.type	.L__profd___popcounthi2,@object ! @__profd___popcounthi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profd___popcounthi2:
	.xword	3943219574947026310             ! 0x36b9214fb4159586
	.xword	304041497688                    ! 0x46ca491458
	.xword	.L__profc___popcounthi2-.L__profd___popcounthi2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___popcounthi2, 64

	.type	.L__profc___mulsi3_iq2000,@object ! @__profc___mulsi3_iq2000
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profc___mulsi3_iq2000:
	.skip	24
	.size	.L__profc___mulsi3_iq2000, 24

	.type	.L__profd___mulsi3_iq2000,@object ! @__profd___mulsi3_iq2000
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profd___mulsi3_iq2000:
	.xword	-3976353352410196972            ! 0xc8d127b190281414
	.xword	171971253336                    ! 0x280a491458
	.xword	.L__profc___mulsi3_iq2000-.L__profd___mulsi3_iq2000
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___mulsi3_iq2000, 64

	.type	.L__profc___mulsi3_lm32,@object ! @__profc___mulsi3_lm32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profc___mulsi3_lm32:
	.skip	32
	.size	.L__profc___mulsi3_lm32, 32

	.type	.L__profd___mulsi3_lm32,@object ! @__profd___mulsi3_lm32
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profd___mulsi3_lm32:
	.xword	2775651425054705869             ! 0x26851843dab148cd
	.xword	-6210685127595396365            ! 0xa9cf36c835dff2f3
	.xword	.L__profc___mulsi3_lm32-.L__profd___mulsi3_lm32
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___mulsi3_lm32, 64

	.type	.L__profc___udivmodsi4,@object  ! @__profc___udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profc___udivmodsi4:
	.skip	72
	.size	.L__profc___udivmodsi4, 72

	.type	.L__profd___udivmodsi4,@object  ! @__profd___udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profd___udivmodsi4:
	.xword	-6720389007632434094            ! 0xa2bc61cdbfa0fc52
	.xword	842736872197088594              ! 0xbb200b8626e6552
	.xword	.L__profc___udivmodsi4-.L__profd___udivmodsi4
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	9                               ! 0x9
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___udivmodsi4, 64

	.type	.L__profc___mspabi_cmpf,@object ! @__profc___mspabi_cmpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
.L__profc___mspabi_cmpf:
	.skip	24
	.size	.L__profc___mspabi_cmpf, 24

	.type	.L__profd___mspabi_cmpf,@object ! @__profd___mspabi_cmpf
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
.L__profd___mspabi_cmpf:
	.xword	6399771733438470391             ! 0x58d08e7bef2f98f7
	.xword	1352614535537600836             ! 0x12c573c0ecbfa944
	.xword	.L__profc___mspabi_cmpf-.L__profd___mspabi_cmpf
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___mspabi_cmpf, 64

	.type	.L__profc___mspabi_cmpd,@object ! @__profc___mspabi_cmpd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
.L__profc___mspabi_cmpd:
	.skip	24
	.size	.L__profc___mspabi_cmpd, 24

	.type	.L__profd___mspabi_cmpd,@object ! @__profd___mspabi_cmpd
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
.L__profd___mspabi_cmpd:
	.xword	-5775354270414500759            ! 0xafd9d1e3e3e88c69
	.xword	1352614535537600836             ! 0x12c573c0ecbfa944
	.xword	.L__profc___mspabi_cmpd-.L__profd___mspabi_cmpd
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___mspabi_cmpd, 64

	.type	.L__profc___mspabi_mpysll,@object ! @__profc___mspabi_mpysll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profc___mspabi_mpysll:
	.skip	8
	.size	.L__profc___mspabi_mpysll, 8

	.type	.L__profd___mspabi_mpysll,@object ! @__profd___mspabi_mpysll
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profd___mspabi_mpysll:
	.xword	-359228324547500507             ! 0xfb03c3bdfa166625
	.xword	24                              ! 0x18
	.xword	.L__profc___mspabi_mpysll-.L__profd___mspabi_mpysll
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___mspabi_mpysll, 64

	.type	.L__profc___mspabi_mpyull,@object ! @__profc___mspabi_mpyull
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profc___mspabi_mpyull:
	.skip	8
	.size	.L__profc___mspabi_mpyull, 8

	.type	.L__profd___mspabi_mpyull,@object ! @__profd___mspabi_mpyull
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profd___mspabi_mpyull:
	.xword	6629829186354316853             ! 0x5c01e284c62a8635
	.xword	24                              ! 0x18
	.xword	.L__profc___mspabi_mpyull-.L__profd___mspabi_mpyull
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___mspabi_mpyull, 64

	.type	.L__profc___mulhi3,@object      ! @__profc___mulhi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profc___mulhi3:
	.skip	56
	.size	.L__profc___mulhi3, 56

	.type	.L__profd___mulhi3,@object      ! @__profd___mulhi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profd___mulhi3:
	.xword	-4671748085078636676            ! 0xbf2a9dde5cc6c77c
	.xword	-5374843387156864121            ! 0xb568b86aa1286387
	.xword	.L__profc___mulhi3-.L__profd___mulhi3
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___mulhi3, 64

	.type	.L__profc___divsi3,@object      ! @__profc___divsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profc___divsi3:
	.skip	32
	.size	.L__profc___divsi3, 32

	.type	.L__profd___divsi3,@object      ! @__profd___divsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profd___divsi3:
	.xword	5631431475223784324             ! 0x4e26dd1711aaeb84
	.xword	510575534943447681              ! 0x715edbe6f4f2a81
	.xword	.L__profc___divsi3-.L__profd___divsi3
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___divsi3, 64

	.type	.L__profc___modsi3,@object      ! @__profc___modsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profc___modsi3:
	.skip	32
	.size	.L__profc___modsi3, 32

	.type	.L__profd___modsi3,@object      ! @__profd___modsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profd___modsi3:
	.xword	-8995696579390192574            ! 0x8328dd9f4e404442
	.xword	2121116644152358499             ! 0x1d6fb85985deb663
	.xword	.L__profc___modsi3-.L__profd___modsi3
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___modsi3, 64

	.type	.L__profc___udivmodhi4,@object  ! @__profc___udivmodhi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profc___udivmodhi4:
	.skip	72
	.size	.L__profc___udivmodhi4, 72

	.type	.L__profd___udivmodhi4,@object  ! @__profd___udivmodhi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profd___udivmodhi4:
	.xword	2241631039268115874             ! 0x1f1bdf8db510d5a2
	.xword	842736872197088594              ! 0xbb200b8626e6552
	.xword	.L__profc___udivmodhi4-.L__profd___udivmodhi4
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	9                               ! 0x9
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___udivmodhi4, 64

	.type	.L__profc___udivmodsi4_libgcc,@object ! @__profc___udivmodsi4_libgcc
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profc___udivmodsi4_libgcc:
	.skip	72
	.size	.L__profc___udivmodsi4_libgcc, 72

	.type	.L__profd___udivmodsi4_libgcc,@object ! @__profd___udivmodsi4_libgcc
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profd___udivmodsi4_libgcc:
	.xword	-1484205535638993157            ! 0xeb670aedd291c6fb
	.xword	842736872197088594              ! 0xbb200b8626e6552
	.xword	.L__profc___udivmodsi4_libgcc-.L__profd___udivmodsi4_libgcc
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	9                               ! 0x9
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___udivmodsi4_libgcc, 64

	.type	.L__profc___ashldi3,@object     ! @__profc___ashldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profc___ashldi3:
	.skip	24
	.size	.L__profc___ashldi3, 24

	.type	.L__profd___ashldi3,@object     ! @__profd___ashldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profd___ashldi3:
	.xword	3719210884952086607             ! 0x339d4a983a55d84f
	.xword	185294818348438616              ! 0x2924ca7d2611458
	.xword	.L__profc___ashldi3-.L__profd___ashldi3
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___ashldi3, 64

	.type	.L__profc___ashlti3,@object     ! @__profc___ashlti3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashlti3
	.p2align	3, 0x0
.L__profc___ashlti3:
	.skip	24
	.size	.L__profc___ashlti3, 24

	.type	.L__profd___ashlti3,@object     ! @__profd___ashlti3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashlti3
	.p2align	3, 0x0
.L__profd___ashlti3:
	.xword	8422580559269035854             ! 0x74e30464d7577f4e
	.xword	185294818348438616              ! 0x2924ca7d2611458
	.xword	.L__profc___ashlti3-.L__profd___ashlti3
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___ashlti3, 64

	.type	.L__profc___ashrdi3,@object     ! @__profc___ashrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profc___ashrdi3:
	.skip	24
	.size	.L__profc___ashrdi3, 24

	.type	.L__profd___ashrdi3,@object     ! @__profd___ashrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profd___ashrdi3:
	.xword	-1855717345837424946            ! 0xe63f2ae7edd45ece
	.xword	185294818348438616              ! 0x2924ca7d2611458
	.xword	.L__profc___ashrdi3-.L__profd___ashrdi3
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___ashrdi3, 64

	.type	.L__profc___ashrti3,@object     ! @__profc___ashrti3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashrti3
	.p2align	3, 0x0
.L__profc___ashrti3:
	.skip	24
	.size	.L__profc___ashrti3, 24

	.type	.L__profd___ashrti3,@object     ! @__profd___ashrti3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashrti3
	.p2align	3, 0x0
.L__profd___ashrti3:
	.xword	-1576641649180751463            ! 0xea1ea4c6027ec999
	.xword	185294818348438616              ! 0x2924ca7d2611458
	.xword	.L__profc___ashrti3-.L__profd___ashrti3
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___ashrti3, 64

	.type	.L__profc___bswapdi2,@object    ! @__profc___bswapdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profc___bswapdi2:
	.skip	8
	.size	.L__profc___bswapdi2, 8

	.type	.L__profd___bswapdi2,@object    ! @__profd___bswapdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profd___bswapdi2:
	.xword	9149352740892555196             ! 0x7ef907d7ada5b7bc
	.xword	24                              ! 0x18
	.xword	.L__profc___bswapdi2-.L__profd___bswapdi2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___bswapdi2, 64

	.type	.L__profc___bswapsi2,@object    ! @__profc___bswapsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profc___bswapsi2:
	.skip	8
	.size	.L__profc___bswapsi2, 8

	.type	.L__profd___bswapsi2,@object    ! @__profd___bswapsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profd___bswapsi2:
	.xword	-3374945843358245974            ! 0xd129c8a2fe735baa
	.xword	24                              ! 0x18
	.xword	.L__profc___bswapsi2-.L__profd___bswapsi2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___bswapsi2, 64

	.type	.L__profc___clzsi2,@object      ! @__profc___clzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profc___clzsi2:
	.skip	8
	.size	.L__profc___clzsi2, 8

	.type	.L__profd___clzsi2,@object      ! @__profd___clzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profd___clzsi2:
	.xword	1382681549752930563             ! 0x1330458b32829103
	.xword	33814345247                     ! 0x7df7df61f
	.xword	.L__profc___clzsi2-.L__profd___clzsi2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___clzsi2, 64

	.type	.L__profc___clzti2,@object      ! @__profc___clzti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzti2
	.p2align	3, 0x0
.L__profc___clzti2:
	.skip	8
	.size	.L__profc___clzti2, 8

	.type	.L__profd___clzti2,@object      ! @__profd___clzti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzti2
	.p2align	3, 0x0
.L__profd___clzti2:
	.xword	-1806615119558762125            ! 0xe6ed9d1ee0d9a173
	.xword	2008                            ! 0x7d8
	.xword	.L__profc___clzti2-.L__profd___clzti2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___clzti2, 64

	.type	.L__profc___cmpdi2,@object      ! @__profc___cmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profc___cmpdi2:
	.skip	40
	.size	.L__profc___cmpdi2, 40

	.type	.L__profd___cmpdi2,@object      ! @__profd___cmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profd___cmpdi2:
	.xword	-5499644794300757496            ! 0xb3ad5632ace08a08
	.xword	-7406659272189927428            ! 0x993642a254c41ffc
	.xword	.L__profc___cmpdi2-.L__profd___cmpdi2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___cmpdi2, 64

	.type	.L__profc___aeabi_lcmp,@object  ! @__profc___aeabi_lcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profc___aeabi_lcmp:
	.skip	8
	.size	.L__profc___aeabi_lcmp, 8

	.type	.L__profd___aeabi_lcmp,@object  ! @__profd___aeabi_lcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profd___aeabi_lcmp:
	.xword	7067747365298492588             ! 0x6215aec83ed1d4ac
	.xword	24                              ! 0x18
	.xword	.L__profc___aeabi_lcmp-.L__profd___aeabi_lcmp
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___aeabi_lcmp, 64

	.type	.L__profc___cmpti2,@object      ! @__profc___cmpti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmpti2
	.p2align	3, 0x0
.L__profc___cmpti2:
	.skip	40
	.size	.L__profc___cmpti2, 40

	.type	.L__profd___cmpti2,@object      ! @__profd___cmpti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmpti2
	.p2align	3, 0x0
.L__profd___cmpti2:
	.xword	-8389943187845644472            ! 0x8b90ef1f5ac07f48
	.xword	-7406659272189927428            ! 0x993642a254c41ffc
	.xword	.L__profc___cmpti2-.L__profd___cmpti2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___cmpti2, 64

	.type	.L__profc___ctzsi2,@object      ! @__profc___ctzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profc___ctzsi2:
	.skip	8
	.size	.L__profc___ctzsi2, 8

	.type	.L__profd___ctzsi2,@object      ! @__profd___ctzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profd___ctzsi2:
	.xword	-5501728155980453225            ! 0xb3a5ef643c052a97
	.xword	33814345247                     ! 0x7df7df61f
	.xword	.L__profc___ctzsi2-.L__profd___ctzsi2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___ctzsi2, 64

	.type	.L__profc___ctzti2,@object      ! @__profc___ctzti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzti2
	.p2align	3, 0x0
.L__profc___ctzti2:
	.skip	8
	.size	.L__profc___ctzti2, 8

	.type	.L__profd___ctzti2,@object      ! @__profd___ctzti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzti2
	.p2align	3, 0x0
.L__profd___ctzti2:
	.xword	7226039699906943586             ! 0x64480cd265d2da62
	.xword	2008                            ! 0x7d8
	.xword	.L__profc___ctzti2-.L__profd___ctzti2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___ctzti2, 64

	.type	.L__profc___ffsti2,@object      ! @__profc___ffsti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ffsti2
	.p2align	3, 0x0
.L__profc___ffsti2:
	.skip	24
	.size	.L__profc___ffsti2, 24

	.type	.L__profd___ffsti2,@object      ! @__profd___ffsti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ffsti2
	.p2align	3, 0x0
.L__profd___ffsti2:
	.xword	7347651670313848928             ! 0x65f81a43be5cd060
	.xword	-6109625065311516695            ! 0xab36405f8f48c7e9
	.xword	.L__profc___ffsti2-.L__profd___ffsti2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___ffsti2, 64

	.type	.L__profc___lshrdi3,@object     ! @__profc___lshrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profc___lshrdi3:
	.skip	24
	.size	.L__profc___lshrdi3, 24

	.type	.L__profd___lshrdi3,@object     ! @__profd___lshrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profd___lshrdi3:
	.xword	10441766047587925               ! 0x2518bb1c181e55
	.xword	185294818348438616              ! 0x2924ca7d2611458
	.xword	.L__profc___lshrdi3-.L__profd___lshrdi3
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___lshrdi3, 64

	.type	.L__profc___lshrti3,@object     ! @__profc___lshrti3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___lshrti3
	.p2align	3, 0x0
.L__profc___lshrti3:
	.skip	24
	.size	.L__profc___lshrti3, 24

	.type	.L__profd___lshrti3,@object     ! @__profd___lshrti3
	.section	__llvm_prf_data,"awG",@progbits,__profc___lshrti3
	.p2align	3, 0x0
.L__profd___lshrti3:
	.xword	-8202552090810439010            ! 0x8e2aae55179b2a9e
	.xword	185294818348438616              ! 0x2924ca7d2611458
	.xword	.L__profc___lshrti3-.L__profd___lshrti3
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___lshrti3, 64

	.type	.L__profc___muldsi3,@object     ! @__profc___muldsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profc___muldsi3:
	.skip	8
	.size	.L__profc___muldsi3, 8

	.type	.L__profd___muldsi3,@object     ! @__profd___muldsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profd___muldsi3:
	.xword	4756674255824047264             ! 0x42031a08a2a34ca0
	.xword	24                              ! 0x18
	.xword	.L__profc___muldsi3-.L__profd___muldsi3
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___muldsi3, 64

	.type	.L__profc___muldi3_compiler_rt,@object ! @__profc___muldi3_compiler_rt
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profc___muldi3_compiler_rt:
	.skip	8
	.size	.L__profc___muldi3_compiler_rt, 8

	.type	.L__profd___muldi3_compiler_rt,@object ! @__profd___muldi3_compiler_rt
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profd___muldi3_compiler_rt:
	.xword	-737717619142303851             ! 0xf5c319bbe679df95
	.xword	24                              ! 0x18
	.xword	.L__profc___muldi3_compiler_rt-.L__profd___muldi3_compiler_rt
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___muldi3_compiler_rt, 64

	.type	.L__profc___mulddi3,@object     ! @__profc___mulddi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulddi3
	.p2align	3, 0x0
.L__profc___mulddi3:
	.skip	8
	.size	.L__profc___mulddi3, 8

	.type	.L__profd___mulddi3,@object     ! @__profd___mulddi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulddi3
	.p2align	3, 0x0
.L__profd___mulddi3:
	.xword	373830907859946247              ! 0x5301d3ae50dcb07
	.xword	24                              ! 0x18
	.xword	.L__profc___mulddi3-.L__profd___mulddi3
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___mulddi3, 64

	.type	.L__profc___multi3,@object      ! @__profc___multi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___multi3
	.p2align	3, 0x0
.L__profc___multi3:
	.skip	8
	.size	.L__profc___multi3, 8

	.type	.L__profd___multi3,@object      ! @__profd___multi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___multi3
	.p2align	3, 0x0
.L__profd___multi3:
	.xword	8967568818272694478             ! 0x7c733453f80370ce
	.xword	24                              ! 0x18
	.xword	.L__profc___multi3-.L__profd___multi3
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___multi3, 64

	.type	.L__profc___negdi2,@object      ! @__profc___negdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profc___negdi2:
	.skip	8
	.size	.L__profc___negdi2, 8

	.type	.L__profd___negdi2,@object      ! @__profd___negdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profd___negdi2:
	.xword	-2796404983763388037            ! 0xd9312c7bb6a6b97b
	.xword	24                              ! 0x18
	.xword	.L__profc___negdi2-.L__profd___negdi2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___negdi2, 64

	.type	.L__profc___negti2,@object      ! @__profc___negti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___negti2
	.p2align	3, 0x0
.L__profc___negti2:
	.skip	8
	.size	.L__profc___negti2, 8

	.type	.L__profd___negti2,@object      ! @__profd___negti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___negti2
	.p2align	3, 0x0
.L__profd___negti2:
	.xword	8691511294418398176             ! 0x789e7379011aabe0
	.xword	24                              ! 0x18
	.xword	.L__profc___negti2-.L__profd___negti2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___negti2, 64

	.type	.L__profc___paritydi2,@object   ! @__profc___paritydi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profc___paritydi2:
	.skip	8
	.size	.L__profc___paritydi2, 8

	.type	.L__profd___paritydi2,@object   ! @__profd___paritydi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profd___paritydi2:
	.xword	-5102883611502574357            ! 0xb92eea643e3a04eb
	.xword	24                              ! 0x18
	.xword	.L__profc___paritydi2-.L__profd___paritydi2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___paritydi2, 64

	.type	.L__profc___parityti2,@object   ! @__profc___parityti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___parityti2
	.p2align	3, 0x0
.L__profc___parityti2:
	.skip	8
	.size	.L__profc___parityti2, 8

	.type	.L__profd___parityti2,@object   ! @__profd___parityti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___parityti2
	.p2align	3, 0x0
.L__profd___parityti2:
	.xword	-7527016531061130461            ! 0x978aaa58479bbb23
	.xword	24                              ! 0x18
	.xword	.L__profc___parityti2-.L__profd___parityti2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___parityti2, 64

	.type	.L__profc___paritysi2,@object   ! @__profc___paritysi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profc___paritysi2:
	.skip	8
	.size	.L__profc___paritysi2, 8

	.type	.L__profd___paritysi2,@object   ! @__profd___paritysi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profd___paritysi2:
	.xword	8495812714014201054             ! 0x75e730a6911054de
	.xword	24                              ! 0x18
	.xword	.L__profc___paritysi2-.L__profd___paritysi2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___paritysi2, 64

	.type	.L__profc___popcountdi2,@object ! @__profc___popcountdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profc___popcountdi2:
	.skip	8
	.size	.L__profc___popcountdi2, 8

	.type	.L__profd___popcountdi2,@object ! @__profd___popcountdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profd___popcountdi2:
	.xword	4342496508124198892             ! 0x3c43a5910d1df7ec
	.xword	24                              ! 0x18
	.xword	.L__profc___popcountdi2-.L__profd___popcountdi2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___popcountdi2, 64

	.type	.L__profc___popcountsi2,@object ! @__profc___popcountsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profc___popcountsi2:
	.skip	8
	.size	.L__profc___popcountsi2, 8

	.type	.L__profd___popcountsi2,@object ! @__profd___popcountsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profd___popcountsi2:
	.xword	-2149276146439341705            ! 0xe22c3cbb6f433977
	.xword	24                              ! 0x18
	.xword	.L__profc___popcountsi2-.L__profd___popcountsi2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___popcountsi2, 64

	.type	.L__profc___popcountti2,@object ! @__profc___popcountti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountti2
	.p2align	3, 0x0
.L__profc___popcountti2:
	.skip	8
	.size	.L__profc___popcountti2, 8

	.type	.L__profd___popcountti2,@object ! @__profd___popcountti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountti2
	.p2align	3, 0x0
.L__profd___popcountti2:
	.xword	-26294454666068629              ! 0xffa295553210fd6b
	.xword	24                              ! 0x18
	.xword	.L__profc___popcountti2-.L__profd___popcountti2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___popcountti2, 64

	.type	.L__profc___powidf2,@object     ! @__profc___powidf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
.L__profc___powidf2:
	.skip	40
	.size	.L__profc___powidf2, 40

	.type	.L__profd___powidf2,@object     ! @__profd___powidf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
.L__profd___powidf2:
	.xword	-1752541073601039051            ! 0xe7adb92dcdba7535
	.xword	-4868838055443737378            ! 0xbc6e6995b45f54de
	.xword	.L__profc___powidf2-.L__profd___powidf2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___powidf2, 64

	.type	.L__profc___powisf2,@object     ! @__profc___powisf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
.L__profc___powisf2:
	.skip	40
	.size	.L__profc___powisf2, 40

	.type	.L__profd___powisf2,@object     ! @__profd___powisf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
.L__profd___powisf2:
	.xword	-3807360110918407144            ! 0xcb298a26c0b76c18
	.xword	-4868838055443737378            ! 0xbc6e6995b45f54de
	.xword	.L__profc___powisf2-.L__profd___powisf2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___powisf2, 64

	.type	.L__profc___ucmpdi2,@object     ! @__profc___ucmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profc___ucmpdi2:
	.skip	40
	.size	.L__profc___ucmpdi2, 40

	.type	.L__profd___ucmpdi2,@object     ! @__profd___ucmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profd___ucmpdi2:
	.xword	-2044349310657886323            ! 0xe3a10322256c078d
	.xword	-7406659272189927428            ! 0x993642a254c41ffc
	.xword	.L__profc___ucmpdi2-.L__profd___ucmpdi2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___ucmpdi2, 64

	.type	.L__profc___aeabi_ulcmp,@object ! @__profc___aeabi_ulcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profc___aeabi_ulcmp:
	.skip	8
	.size	.L__profc___aeabi_ulcmp, 8

	.type	.L__profd___aeabi_ulcmp,@object ! @__profd___aeabi_ulcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profd___aeabi_ulcmp:
	.xword	448670595368434735              ! 0x639ff8782193c2f
	.xword	24                              ! 0x18
	.xword	.L__profc___aeabi_ulcmp-.L__profd___aeabi_ulcmp
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___aeabi_ulcmp, 64

	.type	.L__profc___ucmpti2,@object     ! @__profc___ucmpti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ucmpti2
	.p2align	3, 0x0
.L__profc___ucmpti2:
	.skip	40
	.size	.L__profc___ucmpti2, 40

	.type	.L__profd___ucmpti2,@object     ! @__profd___ucmpti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ucmpti2
	.p2align	3, 0x0
.L__profd___ucmpti2:
	.xword	2719998967855154749             ! 0x25bf60a66c6f863d
	.xword	-7406659272189927428            ! 0x993642a254c41ffc
	.xword	.L__profc___ucmpti2-.L__profd___ucmpti2
	.xword	0                               ! 0x0
	.xword	0
	.xword	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___ucmpti2, 64

	.type	.L__llvm_prf_nm,@object         ! @__llvm_prf_nm
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
