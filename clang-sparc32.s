	.text
	.file	"mini-libc.c"
	.globl	memmove                         ! -- Begin function memmove
	.p2align	2
	.type	memmove,@function
memmove:                                ! @memmove
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	ld [%fp+-4], %i0
	st %i0, [%fp+-16]
	ld [%fp+-8], %i0
	st %i0, [%fp+-20]
	ld [%fp+-20], %i0
	ld [%fp+-16], %i1
	cmp	%i0, %i1
	bcc	.LBB0_6
	nop
	ba .LBB0_1
	nop
.LBB0_1:
	ld [%fp+-12], %i1
	ld [%fp+-20], %i0
	add %i0, %i1, %i0
	st %i0, [%fp+-20]
	ld [%fp+-12], %i1
	ld [%fp+-16], %i0
	add %i0, %i1, %i0
	ba .LBB0_2
	st %i0, [%fp+-16]
.LBB0_2:                                ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB0_5
	nop
	ba .LBB0_3
	nop
.LBB0_3:                                !   in Loop: Header=BB0_2 Depth=1
	ld [%fp+-20], %i0
	add %i0, -1, %i1
	st %i1, [%fp+-20]
	ldub [%i0+-1], %i1
	ld [%fp+-16], %i0
	add %i0, -1, %i2
	st %i2, [%fp+-16]
	ba .LBB0_4
	stb %i1, [%i0+-1]
.LBB0_4:                                !   in Loop: Header=BB0_2 Depth=1
	ld [%fp+-12], %i0
	add %i0, -1, %i0
	ba .LBB0_2
	st %i0, [%fp+-12]
.LBB0_5:
	ba .LBB0_13
	nop
.LBB0_6:
	ld [%fp+-20], %i0
	ld [%fp+-16], %i1
	cmp	%i0, %i1
	be	.LBB0_12
	nop
	ba .LBB0_7
	nop
.LBB0_7:
	ba .LBB0_8
	nop
.LBB0_8:                                ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB0_11
	nop
	ba .LBB0_9
	nop
.LBB0_9:                                !   in Loop: Header=BB0_8 Depth=1
	ld [%fp+-20], %i0
	add %i0, 1, %i1
	st %i1, [%fp+-20]
	ldub [%i0], %i1
	ld [%fp+-16], %i0
	add %i0, 1, %i2
	st %i2, [%fp+-16]
	ba .LBB0_10
	stb %i1, [%i0]
.LBB0_10:                               !   in Loop: Header=BB0_8 Depth=1
	ld [%fp+-12], %i0
	add %i0, -1, %i0
	ba .LBB0_8
	st %i0, [%fp+-12]
.LBB0_11:
	ba .LBB0_12
	nop
.LBB0_12:
	ba .LBB0_13
	nop
.LBB0_13:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end0:
	.size	memmove, .Lfunc_end0-memmove
                                        ! -- End function
	.globl	memccpy                         ! -- Begin function memccpy
	.p2align	2
	.type	memccpy,@function
memccpy:                                ! @memccpy
! %bb.0:
	save %sp, -136, %sp
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	st %i2, [%fp+-16]
	st %i3, [%fp+-20]
	ld [%fp+-8], %i0
	st %i0, [%fp+-24]
	ld [%fp+-12], %i0
	st %i0, [%fp+-28]
	ldub [%fp+-16], %i0
	ba .LBB1_1
	st %i0, [%fp+-16]
.LBB1_1:                                ! =>This Inner Loop Header: Depth=1
	ld [%fp+-20], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB1_5
	st %i0, [%fp+-32]
	ba .LBB1_2
	nop
.LBB1_2:                                !   in Loop: Header=BB1_1 Depth=1
	ld [%fp+-28], %i0
	ldub [%i0], %i1
	ld [%fp+-24], %i0
	stb %i1, [%i0]
	ld [%fp+-16], %i2
	mov	%g0, %i0
	st %i0, [%fp+-40]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, %i2
	bne	.LBB1_4
	st %i0, [%fp+-36]
! %bb.3:                                !   in Loop: Header=BB1_1 Depth=1
	ld [%fp+-40], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
.LBB1_4:                                !   in Loop: Header=BB1_1 Depth=1
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	ba .LBB1_5
	st %i0, [%fp+-32]
.LBB1_5:                                !   in Loop: Header=BB1_1 Depth=1
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB1_8
	nop
	ba .LBB1_6
	nop
.LBB1_6:                                !   in Loop: Header=BB1_1 Depth=1
	ba .LBB1_7
	nop
.LBB1_7:                                !   in Loop: Header=BB1_1 Depth=1
	ld [%fp+-20], %i0
	add %i0, -1, %i0
	st %i0, [%fp+-20]
	ld [%fp+-28], %i0
	add %i0, 1, %i0
	st %i0, [%fp+-28]
	ld [%fp+-24], %i0
	add %i0, 1, %i0
	ba .LBB1_1
	st %i0, [%fp+-24]
.LBB1_8:
	ld [%fp+-20], %i0
	cmp	%i0, 0
	be	.LBB1_10
	nop
	ba .LBB1_9
	nop
.LBB1_9:
	ld [%fp+-24], %i0
	add %i0, 1, %i0
	ba .LBB1_11
	st %i0, [%fp+-4]
.LBB1_10:
	ba .LBB1_11
	st %g0, [%fp+-4]
.LBB1_11:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end1:
	.size	memccpy, .Lfunc_end1-memccpy
                                        ! -- End function
	.globl	memchr                          ! -- Begin function memchr
	.p2align	2
	.type	memchr,@function
memchr:                                 ! @memchr
! %bb.0:
	save %sp, -128, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	ld [%fp+-4], %i0
	st %i0, [%fp+-16]
	ldub [%fp+-8], %i0
	ba .LBB2_1
	st %i0, [%fp+-8]
.LBB2_1:                                ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB2_5
	st %i0, [%fp+-20]
	ba .LBB2_2
	nop
.LBB2_2:                                !   in Loop: Header=BB2_1 Depth=1
	ld [%fp+-16], %i0
	ldub [%i0], %i1
	ld [%fp+-8], %i2
	mov	%g0, %i0
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, %i2
	bne	.LBB2_4
	st %i0, [%fp+-24]
! %bb.3:                                !   in Loop: Header=BB2_1 Depth=1
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
.LBB2_4:                                !   in Loop: Header=BB2_1 Depth=1
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	ba .LBB2_5
	st %i0, [%fp+-20]
.LBB2_5:                                !   in Loop: Header=BB2_1 Depth=1
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB2_8
	nop
	ba .LBB2_6
	nop
.LBB2_6:                                !   in Loop: Header=BB2_1 Depth=1
	ba .LBB2_7
	nop
.LBB2_7:                                !   in Loop: Header=BB2_1 Depth=1
	ld [%fp+-16], %i0
	add %i0, 1, %i0
	st %i0, [%fp+-16]
	ld [%fp+-12], %i0
	add %i0, -1, %i0
	ba .LBB2_1
	st %i0, [%fp+-12]
.LBB2_8:
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB2_10
	nop
	ba .LBB2_9
	nop
.LBB2_9:
	ld [%fp+-16], %i0
	ba .LBB2_11
	st %i0, [%fp+-32]
.LBB2_10:
	mov	%g0, %i0
	ba .LBB2_11
	st %i0, [%fp+-32]
.LBB2_11:
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end2:
	.size	memchr, .Lfunc_end2-memchr
                                        ! -- End function
	.globl	memcmp                          ! -- Begin function memcmp
	.p2align	2
	.type	memcmp,@function
memcmp:                                 ! @memcmp
! %bb.0:
	save %sp, -128, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	ld [%fp+-4], %i0
	st %i0, [%fp+-16]
	ld [%fp+-8], %i0
	ba .LBB3_1
	st %i0, [%fp+-20]
.LBB3_1:                                ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB3_5
	st %i0, [%fp+-24]
	ba .LBB3_2
	nop
.LBB3_2:                                !   in Loop: Header=BB3_1 Depth=1
	ld [%fp+-16], %i0
	ldub [%i0], %i1
	ld [%fp+-20], %i0
	ldub [%i0], %i2
	mov	%g0, %i0
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, %i2
	be	.LBB3_4
	st %i0, [%fp+-28]
! %bb.3:                                !   in Loop: Header=BB3_1 Depth=1
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
.LBB3_4:                                !   in Loop: Header=BB3_1 Depth=1
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	ba .LBB3_5
	st %i0, [%fp+-24]
.LBB3_5:                                !   in Loop: Header=BB3_1 Depth=1
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB3_8
	nop
	ba .LBB3_6
	nop
.LBB3_6:                                !   in Loop: Header=BB3_1 Depth=1
	ba .LBB3_7
	nop
.LBB3_7:                                !   in Loop: Header=BB3_1 Depth=1
	ld [%fp+-12], %i0
	add %i0, -1, %i0
	st %i0, [%fp+-12]
	ld [%fp+-16], %i0
	add %i0, 1, %i0
	st %i0, [%fp+-16]
	ld [%fp+-20], %i0
	add %i0, 1, %i0
	ba .LBB3_1
	st %i0, [%fp+-20]
.LBB3_8:
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB3_10
	nop
	ba .LBB3_9
	nop
.LBB3_9:
	ld [%fp+-16], %i0
	ldub [%i0], %i0
	ld [%fp+-20], %i1
	ldub [%i1], %i1
	sub %i0, %i1, %i0
	ba .LBB3_11
	st %i0, [%fp+-36]
.LBB3_10:
	mov	%g0, %i0
	ba .LBB3_11
	st %i0, [%fp+-36]
.LBB3_11:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end3:
	.size	memcmp, .Lfunc_end3-memcmp
                                        ! -- End function
	.globl	memcpy                          ! -- Begin function memcpy
	.p2align	2
	.type	memcpy,@function
memcpy:                                 ! @memcpy
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	ld [%fp+-4], %i0
	st %i0, [%fp+-16]
	ld [%fp+-8], %i0
	ba .LBB4_1
	st %i0, [%fp+-20]
.LBB4_1:                                ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB4_4
	nop
	ba .LBB4_2
	nop
.LBB4_2:                                !   in Loop: Header=BB4_1 Depth=1
	ld [%fp+-20], %i0
	add %i0, 1, %i1
	st %i1, [%fp+-20]
	ldub [%i0], %i1
	ld [%fp+-16], %i0
	add %i0, 1, %i2
	st %i2, [%fp+-16]
	ba .LBB4_3
	stb %i1, [%i0]
.LBB4_3:                                !   in Loop: Header=BB4_1 Depth=1
	ld [%fp+-12], %i0
	add %i0, -1, %i0
	ba .LBB4_1
	st %i0, [%fp+-12]
.LBB4_4:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end4:
	.size	memcpy, .Lfunc_end4-memcpy
                                        ! -- End function
	.globl	memrchr                         ! -- Begin function memrchr
	.p2align	2
	.type	memrchr,@function
memrchr:                                ! @memrchr
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	st %i2, [%fp+-16]
	ld [%fp+-8], %i0
	st %i0, [%fp+-20]
	ldub [%fp+-12], %i0
	ba .LBB5_1
	st %i0, [%fp+-12]
.LBB5_1:                                ! =>This Inner Loop Header: Depth=1
	ld [%fp+-16], %i0
	add %i0, -1, %i1
	cmp	%i0, 0
	be	.LBB5_5
	st %i1, [%fp+-16]
	ba .LBB5_2
	nop
.LBB5_2:                                !   in Loop: Header=BB5_1 Depth=1
	ld [%fp+-20], %i0
	ld [%fp+-16], %i1
	ldub [%i0+%i1], %i0
	ld [%fp+-12], %i1
	cmp	%i0, %i1
	bne	.LBB5_4
	nop
	ba .LBB5_3
	nop
.LBB5_3:
	ld [%fp+-20], %i0
	ld [%fp+-16], %i1
	add %i0, %i1, %i0
	ba .LBB5_6
	st %i0, [%fp+-4]
.LBB5_4:                                !   in Loop: Header=BB5_1 Depth=1
	ba .LBB5_1
	nop
.LBB5_5:
	ba .LBB5_6
	st %g0, [%fp+-4]
.LBB5_6:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end5:
	.size	memrchr, .Lfunc_end5-memrchr
                                        ! -- End function
	.globl	memset                          ! -- Begin function memset
	.p2align	2
	.type	memset,@function
memset:                                 ! @memset
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	ld [%fp+-4], %i0
	ba .LBB6_1
	st %i0, [%fp+-16]
.LBB6_1:                                ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB6_4
	nop
	ba .LBB6_2
	nop
.LBB6_2:                                !   in Loop: Header=BB6_1 Depth=1
	ld [%fp+-8], %i1
	ld [%fp+-16], %i0
	ba .LBB6_3
	stb %i1, [%i0]
.LBB6_3:                                !   in Loop: Header=BB6_1 Depth=1
	ld [%fp+-12], %i0
	add %i0, -1, %i0
	st %i0, [%fp+-12]
	ld [%fp+-16], %i0
	add %i0, 1, %i0
	ba .LBB6_1
	st %i0, [%fp+-16]
.LBB6_4:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end6:
	.size	memset, .Lfunc_end6-memset
                                        ! -- End function
	.globl	stpcpy                          ! -- Begin function stpcpy
	.p2align	2
	.type	stpcpy,@function
stpcpy:                                 ! @stpcpy
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	ba .LBB7_1
	st %i1, [%fp+-8]
.LBB7_1:                                ! =>This Inner Loop Header: Depth=1
	ld [%fp+-8], %i0
	ldub [%i0], %i0
	ld [%fp+-4], %i1
	stb %i0, [%i1]
	cmp	%i0, 0
	be	.LBB7_4
	nop
	ba .LBB7_2
	nop
.LBB7_2:                                !   in Loop: Header=BB7_1 Depth=1
	ba .LBB7_3
	nop
.LBB7_3:                                !   in Loop: Header=BB7_1 Depth=1
	ld [%fp+-8], %i0
	add %i0, 1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-4], %i0
	add %i0, 1, %i0
	ba .LBB7_1
	st %i0, [%fp+-4]
.LBB7_4:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end7:
	.size	stpcpy, .Lfunc_end7-stpcpy
                                        ! -- End function
	.globl	strchrnul                       ! -- Begin function strchrnul
	.p2align	2
	.type	strchrnul,@function
strchrnul:                              ! @strchrnul
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ldub [%fp+-8], %i0
	ba .LBB8_1
	st %i0, [%fp+-8]
.LBB8_1:                                ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	ldsb [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB8_5
	st %i0, [%fp+-12]
	ba .LBB8_2
	nop
.LBB8_2:                                !   in Loop: Header=BB8_1 Depth=1
	ld [%fp+-4], %i0
	ldub [%i0], %i1
	ld [%fp+-8], %i2
	mov	%g0, %i0
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, %i2
	bne	.LBB8_4
	st %i0, [%fp+-16]
! %bb.3:                                !   in Loop: Header=BB8_1 Depth=1
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-16]                       ! 4-byte Folded Spill
.LBB8_4:                                !   in Loop: Header=BB8_1 Depth=1
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	ba .LBB8_5
	st %i0, [%fp+-12]
.LBB8_5:                                !   in Loop: Header=BB8_1 Depth=1
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB8_8
	nop
	ba .LBB8_6
	nop
.LBB8_6:                                !   in Loop: Header=BB8_1 Depth=1
	ba .LBB8_7
	nop
.LBB8_7:                                !   in Loop: Header=BB8_1 Depth=1
	ld [%fp+-4], %i0
	add %i0, 1, %i0
	ba .LBB8_1
	st %i0, [%fp+-4]
.LBB8_8:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end8:
	.size	strchrnul, .Lfunc_end8-strchrnul
                                        ! -- End function
	.globl	strchr                          ! -- Begin function strchr
	.p2align	2
	.type	strchr,@function
strchr:                                 ! @strchr
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-8]
	ba .LBB9_1
	st %i1, [%fp+-12]
.LBB9_1:                                ! =>This Inner Loop Header: Depth=1
	ld [%fp+-8], %i0
	ldsb [%i0], %i0
	ld [%fp+-12], %i1
	cmp	%i0, %i1
	bne	.LBB9_3
	nop
	ba .LBB9_2
	nop
.LBB9_2:
	ld [%fp+-8], %i0
	ba .LBB9_6
	st %i0, [%fp+-4]
.LBB9_3:                                !   in Loop: Header=BB9_1 Depth=1
	ba .LBB9_4
	nop
.LBB9_4:                                !   in Loop: Header=BB9_1 Depth=1
	ld [%fp+-8], %i0
	add %i0, 1, %i1
	st %i1, [%fp+-8]
	ldub [%i0], %i0
	cmp	%i0, 0
	bne	.LBB9_1
	nop
	ba .LBB9_5
	nop
.LBB9_5:
	ba .LBB9_6
	st %g0, [%fp+-4]
.LBB9_6:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end9:
	.size	strchr, .Lfunc_end9-strchr
                                        ! -- End function
	.globl	strcmp                          ! -- Begin function strcmp
	.p2align	2
	.type	strcmp,@function
strcmp:                                 ! @strcmp
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-4]
	ba .LBB10_1
	st %i1, [%fp+-8]
.LBB10_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	ldsb [%i0], %i1
	ld [%fp+-8], %i0
	ldsb [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bne	.LBB10_5
	st %i0, [%fp+-12]
	ba .LBB10_2
	nop
.LBB10_2:                               !   in Loop: Header=BB10_1 Depth=1
	ld [%fp+-4], %i0
	ldsb [%i0], %i1
	mov	%g0, %i0
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 0
	bne	.LBB10_4
	st %i0, [%fp+-16]
! %bb.3:                                !   in Loop: Header=BB10_1 Depth=1
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-16]                       ! 4-byte Folded Spill
.LBB10_4:                               !   in Loop: Header=BB10_1 Depth=1
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	ba .LBB10_5
	st %i0, [%fp+-12]
.LBB10_5:                               !   in Loop: Header=BB10_1 Depth=1
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB10_8
	nop
	ba .LBB10_6
	nop
.LBB10_6:                               !   in Loop: Header=BB10_1 Depth=1
	ba .LBB10_7
	nop
.LBB10_7:                               !   in Loop: Header=BB10_1 Depth=1
	ld [%fp+-4], %i0
	add %i0, 1, %i0
	st %i0, [%fp+-4]
	ld [%fp+-8], %i0
	add %i0, 1, %i0
	ba .LBB10_1
	st %i0, [%fp+-8]
.LBB10_8:
	ld [%fp+-4], %i0
	ldub [%i0], %i0
	ld [%fp+-8], %i1
	ldub [%i1], %i1
	sub %i0, %i1, %i0
	ret
	restore
.Lfunc_end10:
	.size	strcmp, .Lfunc_end10-strcmp
                                        ! -- End function
	.globl	strlen                          ! -- Begin function strlen
	.p2align	2
	.type	strlen,@function
strlen:                                 ! @strlen
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	ba .LBB11_1
	st %i0, [%fp+-8]
.LBB11_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	ldub [%i0], %i0
	cmp	%i0, 0
	be	.LBB11_4
	nop
	ba .LBB11_2
	nop
.LBB11_2:                               !   in Loop: Header=BB11_1 Depth=1
	ba .LBB11_3
	nop
.LBB11_3:                               !   in Loop: Header=BB11_1 Depth=1
	ld [%fp+-4], %i0
	add %i0, 1, %i0
	ba .LBB11_1
	st %i0, [%fp+-4]
.LBB11_4:
	ld [%fp+-4], %i0
	ld [%fp+-8], %i1
	sub %i0, %i1, %i0
	ret
	restore
.Lfunc_end11:
	.size	strlen, .Lfunc_end11-strlen
                                        ! -- End function
	.globl	strncmp                         ! -- Begin function strncmp
	.p2align	2
	.type	strncmp,@function
strncmp:                                ! @strncmp
! %bb.0:
	save %sp, -128, %sp
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	st %i2, [%fp+-16]
	ld [%fp+-8], %i0
	st %i0, [%fp+-20]
	ld [%fp+-12], %i0
	st %i0, [%fp+-24]
	ld [%fp+-16], %i0
	add %i0, -1, %i1
	cmp	%i0, 0
	bne	.LBB12_2
	st %i1, [%fp+-16]
	ba .LBB12_1
	nop
.LBB12_1:
	ba .LBB12_13
	st %g0, [%fp+-4]
.LBB12_2:
	ba .LBB12_3
	nop
.LBB12_3:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-20], %i0
	ldub [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB12_9
	st %i0, [%fp+-28]
	ba .LBB12_4
	nop
.LBB12_4:                               !   in Loop: Header=BB12_3 Depth=1
	ld [%fp+-24], %i0
	ldub [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB12_9
	st %i0, [%fp+-28]
	ba .LBB12_5
	nop
.LBB12_5:                               !   in Loop: Header=BB12_3 Depth=1
	ld [%fp+-16], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB12_9
	st %i0, [%fp+-28]
	ba .LBB12_6
	nop
.LBB12_6:                               !   in Loop: Header=BB12_3 Depth=1
	ld [%fp+-20], %i0
	ldub [%i0], %i1
	ld [%fp+-24], %i0
	ldub [%i0], %i2
	mov	%g0, %i0
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, %i2
	be	.LBB12_8
	st %i0, [%fp+-32]
! %bb.7:                                !   in Loop: Header=BB12_3 Depth=1
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
.LBB12_8:                               !   in Loop: Header=BB12_3 Depth=1
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	ba .LBB12_9
	st %i0, [%fp+-28]
.LBB12_9:                               !   in Loop: Header=BB12_3 Depth=1
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB12_12
	nop
	ba .LBB12_10
	nop
.LBB12_10:                              !   in Loop: Header=BB12_3 Depth=1
	ba .LBB12_11
	nop
.LBB12_11:                              !   in Loop: Header=BB12_3 Depth=1
	ld [%fp+-20], %i0
	add %i0, 1, %i0
	st %i0, [%fp+-20]
	ld [%fp+-24], %i0
	add %i0, 1, %i0
	st %i0, [%fp+-24]
	ld [%fp+-16], %i0
	add %i0, -1, %i0
	ba .LBB12_3
	st %i0, [%fp+-16]
.LBB12_12:
	ld [%fp+-20], %i0
	ldub [%i0], %i0
	ld [%fp+-24], %i1
	ldub [%i1], %i1
	sub %i0, %i1, %i0
	ba .LBB12_13
	st %i0, [%fp+-4]
.LBB12_13:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end12:
	.size	strncmp, .Lfunc_end12-strncmp
                                        ! -- End function
	.globl	swab                            ! -- Begin function swab
	.p2align	2
	.type	swab,@function
swab:                                   ! @swab
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	ld [%fp+-4], %i0
	st %i0, [%fp+-16]
	ld [%fp+-8], %i0
	ba .LBB13_1
	st %i0, [%fp+-20]
.LBB13_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	cmp	%i0, 2
	bl	.LBB13_4
	nop
	ba .LBB13_2
	nop
.LBB13_2:                               !   in Loop: Header=BB13_1 Depth=1
	ld [%fp+-16], %i0
	ldub [%i0+1], %i1
	ld [%fp+-20], %i0
	stb %i1, [%i0]
	ld [%fp+-16], %i0
	ldub [%i0], %i1
	ld [%fp+-20], %i0
	stb %i1, [%i0+1]
	ld [%fp+-20], %i0
	add %i0, 2, %i0
	st %i0, [%fp+-20]
	ld [%fp+-16], %i0
	add %i0, 2, %i0
	ba .LBB13_3
	st %i0, [%fp+-16]
.LBB13_3:                               !   in Loop: Header=BB13_1 Depth=1
	ld [%fp+-12], %i0
	add %i0, -2, %i0
	ba .LBB13_1
	st %i0, [%fp+-12]
.LBB13_4:
	ret
	restore
.Lfunc_end13:
	.size	swab, .Lfunc_end13-swab
                                        ! -- End function
	.globl	isalpha                         ! -- Begin function isalpha
	.p2align	2
	.type	isalpha,@function
isalpha:                                ! @isalpha
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	or %i0, 32, %i0
	add %i0, -97, %i1
	mov	%g0, %i0
	st %i0, [%fp+-12]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 26
	bcs	.LBB14_2
	st %i0, [%fp+-8]
! %bb.1:
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-8]                        ! 4-byte Folded Spill
.LBB14_2:
	ld [%fp+-8], %i0                        ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end14:
	.size	isalpha, .Lfunc_end14-isalpha
                                        ! -- End function
	.globl	isascii                         ! -- Begin function isascii
	.p2align	2
	.type	isascii,@function
isascii:                                ! @isascii
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	and %i0, -128, %i1
	mov	%g0, %i0
	st %i0, [%fp+-12]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 0
	be	.LBB15_2
	st %i0, [%fp+-8]
! %bb.1:
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-8]                        ! 4-byte Folded Spill
.LBB15_2:
	ld [%fp+-8], %i0                        ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end15:
	.size	isascii, .Lfunc_end15-isascii
                                        ! -- End function
	.globl	isblank                         ! -- Begin function isblank
	.p2align	2
	.type	isblank,@function
isblank:                                ! @isblank
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i1
	mov	1, %i0
	cmp	%i1, 32
	be	.LBB16_4
	st %i0, [%fp+-8]
	ba .LBB16_1
	nop
.LBB16_1:
	ld [%fp+-4], %i1
	mov	%g0, %i0
	st %i0, [%fp+-16]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 9
	be	.LBB16_3
	st %i0, [%fp+-12]
! %bb.2:
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-12]                       ! 4-byte Folded Spill
.LBB16_3:
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	ba .LBB16_4
	st %i0, [%fp+-8]
.LBB16_4:
	ld [%fp+-8], %i0                        ! 4-byte Folded Reload
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end16:
	.size	isblank, .Lfunc_end16-isblank
                                        ! -- End function
	.globl	iscntrl                         ! -- Begin function iscntrl
	.p2align	2
	.type	iscntrl,@function
iscntrl:                                ! @iscntrl
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i1
	mov	1, %i0
	cmp	%i1, 32
	bcs	.LBB17_4
	st %i0, [%fp+-8]
	ba .LBB17_1
	nop
.LBB17_1:
	ld [%fp+-4], %i1
	mov	%g0, %i0
	st %i0, [%fp+-16]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 127
	be	.LBB17_3
	st %i0, [%fp+-12]
! %bb.2:
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-12]                       ! 4-byte Folded Spill
.LBB17_3:
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	ba .LBB17_4
	st %i0, [%fp+-8]
.LBB17_4:
	ld [%fp+-8], %i0                        ! 4-byte Folded Reload
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end17:
	.size	iscntrl, .Lfunc_end17-iscntrl
                                        ! -- End function
	.globl	isdigit                         ! -- Begin function isdigit
	.p2align	2
	.type	isdigit,@function
isdigit:                                ! @isdigit
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	add %i0, -48, %i1
	mov	%g0, %i0
	st %i0, [%fp+-12]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 10
	bcs	.LBB18_2
	st %i0, [%fp+-8]
! %bb.1:
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-8]                        ! 4-byte Folded Spill
.LBB18_2:
	ld [%fp+-8], %i0                        ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end18:
	.size	isdigit, .Lfunc_end18-isdigit
                                        ! -- End function
	.globl	isgraph                         ! -- Begin function isgraph
	.p2align	2
	.type	isgraph,@function
isgraph:                                ! @isgraph
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	add %i0, -33, %i1
	mov	%g0, %i0
	st %i0, [%fp+-12]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 94
	bcs	.LBB19_2
	st %i0, [%fp+-8]
! %bb.1:
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-8]                        ! 4-byte Folded Spill
.LBB19_2:
	ld [%fp+-8], %i0                        ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end19:
	.size	isgraph, .Lfunc_end19-isgraph
                                        ! -- End function
	.globl	islower                         ! -- Begin function islower
	.p2align	2
	.type	islower,@function
islower:                                ! @islower
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	add %i0, -97, %i1
	mov	%g0, %i0
	st %i0, [%fp+-12]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 26
	bcs	.LBB20_2
	st %i0, [%fp+-8]
! %bb.1:
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-8]                        ! 4-byte Folded Spill
.LBB20_2:
	ld [%fp+-8], %i0                        ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end20:
	.size	islower, .Lfunc_end20-islower
                                        ! -- End function
	.globl	isprint                         ! -- Begin function isprint
	.p2align	2
	.type	isprint,@function
isprint:                                ! @isprint
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	add %i0, -32, %i1
	mov	%g0, %i0
	st %i0, [%fp+-12]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 95
	bcs	.LBB21_2
	st %i0, [%fp+-8]
! %bb.1:
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-8]                        ! 4-byte Folded Spill
.LBB21_2:
	ld [%fp+-8], %i0                        ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end21:
	.size	isprint, .Lfunc_end21-isprint
                                        ! -- End function
	.globl	isspace                         ! -- Begin function isspace
	.p2align	2
	.type	isspace,@function
isspace:                                ! @isspace
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i1
	mov	1, %i0
	cmp	%i1, 32
	be	.LBB22_4
	st %i0, [%fp+-8]
	ba .LBB22_1
	nop
.LBB22_1:
	ld [%fp+-4], %i0
	add %i0, -9, %i1
	mov	%g0, %i0
	st %i0, [%fp+-16]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 5
	bcs	.LBB22_3
	st %i0, [%fp+-12]
! %bb.2:
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-12]                       ! 4-byte Folded Spill
.LBB22_3:
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	ba .LBB22_4
	st %i0, [%fp+-8]
.LBB22_4:
	ld [%fp+-8], %i0                        ! 4-byte Folded Reload
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end22:
	.size	isspace, .Lfunc_end22-isspace
                                        ! -- End function
	.globl	isupper                         ! -- Begin function isupper
	.p2align	2
	.type	isupper,@function
isupper:                                ! @isupper
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	add %i0, -65, %i1
	mov	%g0, %i0
	st %i0, [%fp+-12]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 26
	bcs	.LBB23_2
	st %i0, [%fp+-8]
! %bb.1:
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-8]                        ! 4-byte Folded Spill
.LBB23_2:
	ld [%fp+-8], %i0                        ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end23:
	.size	isupper, .Lfunc_end23-isupper
                                        ! -- End function
	.globl	iswcntrl                        ! -- Begin function iswcntrl
	.p2align	2
	.type	iswcntrl,@function
iswcntrl:                               ! @iswcntrl
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i1
	mov	1, %i0
	cmp	%i1, 32
	bcs	.LBB24_6
	st %i0, [%fp+-8]
	ba .LBB24_1
	nop
.LBB24_1:
	ld [%fp+-4], %i0
	add %i0, -127, %i1
	mov	1, %i0
	cmp	%i1, 33
	bcs	.LBB24_6
	st %i0, [%fp+-8]
	ba .LBB24_2
	nop
.LBB24_2:
	ld [%fp+-4], %i0
	sethi 4194295, %i1
	or %i1, 984, %i1
	add %i0, %i1, %i1
	mov	1, %i0
	cmp	%i1, 2
	bcs	.LBB24_6
	st %i0, [%fp+-8]
	ba .LBB24_3
	nop
.LBB24_3:
	ld [%fp+-4], %i0
	sethi 4194240, %i1
	or %i1, 7, %i1
	add %i0, %i1, %i1
	mov	%g0, %i0
	st %i0, [%fp+-16]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 3
	bcs	.LBB24_5
	st %i0, [%fp+-12]
! %bb.4:
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-12]                       ! 4-byte Folded Spill
.LBB24_5:
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	ba .LBB24_6
	st %i0, [%fp+-8]
.LBB24_6:
	ld [%fp+-8], %i0                        ! 4-byte Folded Reload
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end24:
	.size	iswcntrl, .Lfunc_end24-iswcntrl
                                        ! -- End function
	.globl	iswdigit                        ! -- Begin function iswdigit
	.p2align	2
	.type	iswdigit,@function
iswdigit:                               ! @iswdigit
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	add %i0, -48, %i1
	mov	%g0, %i0
	st %i0, [%fp+-12]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 10
	bcs	.LBB25_2
	st %i0, [%fp+-8]
! %bb.1:
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-8]                        ! 4-byte Folded Spill
.LBB25_2:
	ld [%fp+-8], %i0                        ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end25:
	.size	iswdigit, .Lfunc_end25-iswdigit
                                        ! -- End function
	.globl	iswprint                        ! -- Begin function iswprint
	.p2align	2
	.type	iswprint,@function
iswprint:                               ! @iswprint
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-8]
	ld [%fp+-8], %i0
	cmp	%i0, 254
	bgu	.LBB26_4
	nop
	ba .LBB26_1
	nop
.LBB26_1:
	ld [%fp+-8], %i0
	add %i0, 1, %i0
	and %i0, 127, %i1
	mov	%g0, %i0
	st %i0, [%fp+-16]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 32
	bg	.LBB26_3
	st %i0, [%fp+-12]
! %bb.2:
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-12]                       ! 4-byte Folded Spill
.LBB26_3:
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	ba .LBB26_12
	st %i0, [%fp+-4]
.LBB26_4:
	ld [%fp+-8], %i0
	sethi 8, %i1
	or %i1, 40, %i1
	cmp	%i0, %i1
	bcs	.LBB26_7
	nop
	ba .LBB26_5
	nop
.LBB26_5:
	ld [%fp+-8], %i0
	sethi 4194295, %i1
	or %i1, 982, %i1
	add %i0, %i1, %i0
	sethi 45, %i1
	or %i1, 982, %i1
	cmp	%i0, %i1
	bcs	.LBB26_7
	nop
	ba .LBB26_6
	nop
.LBB26_6:
	ld [%fp+-8], %i0
	sethi 4194248, %i1
	add %i0, %i1, %i0
	sethi 7, %i1
	or %i1, 1016, %i1
	cmp	%i0, %i1
	bgu	.LBB26_8
	nop
	ba .LBB26_7
	nop
.LBB26_7:
	mov	1, %i0
	ba .LBB26_12
	st %i0, [%fp+-4]
.LBB26_8:
	ld [%fp+-8], %i0
	sethi 4194240, %i1
	or %i1, 4, %i1
	add %i0, %i1, %i0
	sethi 1024, %i1
	or %i1, 3, %i1
	cmp	%i0, %i1
	bgu	.LBB26_10
	nop
	ba .LBB26_9
	nop
.LBB26_9:
	ld [%fp+-8], %i0
	sethi 63, %i1
	or %i1, 1022, %i1
	and %i0, %i1, %i0
	cmp	%i0, %i1
	bne	.LBB26_11
	nop
	ba .LBB26_10
	nop
.LBB26_10:
	ba .LBB26_12
	st %g0, [%fp+-4]
.LBB26_11:
	mov	1, %i0
	ba .LBB26_12
	st %i0, [%fp+-4]
.LBB26_12:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end26:
	.size	iswprint, .Lfunc_end26-iswprint
                                        ! -- End function
	.globl	iswxdigit                       ! -- Begin function iswxdigit
	.p2align	2
	.type	iswxdigit,@function
iswxdigit:                              ! @iswxdigit
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	add %i0, -48, %i1
	mov	1, %i0
	cmp	%i1, 10
	bcs	.LBB27_4
	st %i0, [%fp+-8]
	ba .LBB27_1
	nop
.LBB27_1:
	ld [%fp+-4], %i0
	or %i0, 32, %i0
	add %i0, -97, %i1
	mov	%g0, %i0
	st %i0, [%fp+-16]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 6
	bcs	.LBB27_3
	st %i0, [%fp+-12]
! %bb.2:
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-12]                       ! 4-byte Folded Spill
.LBB27_3:
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	ba .LBB27_4
	st %i0, [%fp+-8]
.LBB27_4:
	ld [%fp+-8], %i0                        ! 4-byte Folded Reload
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end27:
	.size	iswxdigit, .Lfunc_end27-iswxdigit
                                        ! -- End function
	.globl	toascii                         ! -- Begin function toascii
	.p2align	2
	.type	toascii,@function
toascii:                                ! @toascii
! %bb.0:
	save %sp, -96, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	and %i0, 127, %i0
	ret
	restore
.Lfunc_end28:
	.size	toascii, .Lfunc_end28-toascii
                                        ! -- End function
	.globl	fdim                            ! -- Begin function fdim
	.p2align	2
	.type	fdim,@function
fdim:                                   ! @fdim
! %bb.0:
	save %sp, -208, %sp
	mov	%i1, %i4
	mov	%i0, %i5
                                        ! kill: def $i0 killed $i3
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i1 killed $i4
                                        ! kill: def $i0 killed $i5
                                        ! implicit-def: $i0_i1
	mov	%i5, %i0
	mov	%i4, %i1
	std %i0, [%fp+-16]
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%i3, %i1
	std %i0, [%fp+-24]
	ldd [%fp+-16], %i0
	mov	%i1, %i2
	st %i2, [%fp+-40]                       ! 4-byte Folded Spill
	mov	%i0, %i1
	mov	%g0, %i0
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	mov	1, %i0
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	be	.LBB29_2
	st %i0, [%fp+-28]
! %bb.1:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
.LBB29_2:
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	ld [%fp+-40], %i1                       ! 4-byte Folded Reload
	ld [%fp+-28], %i2                       ! 4-byte Folded Reload
	st %i2, [%fp+-56]                       ! 4-byte Folded Spill
	sethi 2097152, %i2
	andn %i1, %i2, %i1
	st %i1, [%fp+-52]                       ! 4-byte Folded Spill
	sethi 2096128, %i2
	st %i2, [%fp+-48]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	bl	.LBB29_4
	st %i0, [%fp+-44]
! %bb.3:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-44]                       ! 4-byte Folded Spill
.LBB29_4:
	ld [%fp+-56], %i0                       ! 4-byte Folded Reload
	ld [%fp+-52], %i1                       ! 4-byte Folded Reload
	ld [%fp+-48], %i2                       ! 4-byte Folded Reload
	ld [%fp+-44], %i3                       ! 4-byte Folded Reload
	st %i3, [%fp+-64]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	be	.LBB29_6
	st %i0, [%fp+-60]
! %bb.5:
	ld [%fp+-64], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-60]                       ! 4-byte Folded Spill
.LBB29_6:
	ld [%fp+-60], %i0                       ! 4-byte Folded Reload
	cmp	%i0, 0
	bne	.LBB29_8
	nop
	ba .LBB29_7
	nop
.LBB29_7:
	ldd [%fp+-16], %i0
	ba .LBB29_20
	std %i0, [%fp+-8]
.LBB29_8:
	ldd [%fp+-24], %i0
	mov	%i1, %i2
	st %i2, [%fp+-80]                       ! 4-byte Folded Spill
	mov	%i0, %i1
	mov	%g0, %i0
	st %i0, [%fp+-76]                       ! 4-byte Folded Spill
	mov	1, %i0
	st %i0, [%fp+-72]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	be	.LBB29_10
	st %i0, [%fp+-68]
! %bb.9:
	ld [%fp+-76], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-68]                       ! 4-byte Folded Spill
.LBB29_10:
	ld [%fp+-72], %i0                       ! 4-byte Folded Reload
	ld [%fp+-80], %i1                       ! 4-byte Folded Reload
	ld [%fp+-68], %i2                       ! 4-byte Folded Reload
	st %i2, [%fp+-96]                       ! 4-byte Folded Spill
	sethi 2097152, %i2
	andn %i1, %i2, %i1
	st %i1, [%fp+-92]                       ! 4-byte Folded Spill
	sethi 2096128, %i2
	st %i2, [%fp+-88]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	bl	.LBB29_12
	st %i0, [%fp+-84]
! %bb.11:
	ld [%fp+-76], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-84]                       ! 4-byte Folded Spill
.LBB29_12:
	ld [%fp+-96], %i0                       ! 4-byte Folded Reload
	ld [%fp+-92], %i1                       ! 4-byte Folded Reload
	ld [%fp+-88], %i2                       ! 4-byte Folded Reload
	ld [%fp+-84], %i3                       ! 4-byte Folded Reload
	st %i3, [%fp+-104]                      ! 4-byte Folded Spill
	cmp	%i1, %i2
	be	.LBB29_14
	st %i0, [%fp+-100]
! %bb.13:
	ld [%fp+-104], %i0                      ! 4-byte Folded Reload
	st %i0, [%fp+-100]                      ! 4-byte Folded Spill
.LBB29_14:
	ld [%fp+-100], %i0                      ! 4-byte Folded Reload
	cmp	%i0, 0
	bne	.LBB29_16
	nop
	ba .LBB29_15
	nop
.LBB29_15:
	ldd [%fp+-24], %i0
	ba .LBB29_20
	std %i0, [%fp+-8]
.LBB29_16:
	ldd [%fp+-16], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	ldd [%fp+-24], %i0
	mov	%i0, %o2
	call __gtdf2
	mov	%i1, %o3
	cmp	%o0, 1
	bl	.LBB29_18
	nop
	ba .LBB29_17
	nop
.LBB29_17:
	ldd [%fp+-16], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	ldd [%fp+-24], %i0
	mov	%i0, %o2
	call __subdf3
	mov	%i1, %o3
	mov	%o0, %i1
	mov	%o1, %i0
	st %i1, [%fp+-112]                      ! 4-byte Folded Spill
	ba .LBB29_19
	st %i0, [%fp+-108]
.LBB29_18:
	mov	%g0, %i0
	mov	%i0, %i1
	st %i1, [%fp+-112]                      ! 4-byte Folded Spill
	ba .LBB29_19
	st %i0, [%fp+-108]
.LBB29_19:
	ld [%fp+-112], %i3                      ! 4-byte Folded Reload
	ld [%fp+-108], %i2                      ! 4-byte Folded Reload
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB29_20
	std %i0, [%fp+-8]
.LBB29_20:
	ldd [%fp+-8], %i2
	mov	%i2, %i0
	ret
	restore %g0, %i3, %o1
.Lfunc_end29:
	.size	fdim, .Lfunc_end29-fdim
                                        ! -- End function
	.globl	fdimf                           ! -- Begin function fdimf
	.p2align	2
	.type	fdimf,@function
fdimf:                                  ! @fdimf
! %bb.0:
	save %sp, -112, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	ld [%fp+-8], %i0
	sethi 2097152, %i1
	andn %i0, %i1, %i0
	sethi 2088960, %i1
	or %i1, 1, %i1
	cmp	%i0, %i1
	bl	.LBB30_2
	nop
	ba .LBB30_1
	nop
.LBB30_1:
	ld [%fp+-8], %i0
	ba .LBB30_8
	st %i0, [%fp+-4]
.LBB30_2:
	ld [%fp+-12], %i0
	sethi 2097152, %i1
	andn %i0, %i1, %i0
	sethi 2088960, %i1
	or %i1, 1, %i1
	cmp	%i0, %i1
	bl	.LBB30_4
	nop
	ba .LBB30_3
	nop
.LBB30_3:
	ld [%fp+-12], %i0
	ba .LBB30_8
	st %i0, [%fp+-4]
.LBB30_4:
	ld [%fp+-8], %o0
	call __gtsf2
	ld [%fp+-12], %o1
	cmp	%o0, 1
	bl	.LBB30_6
	nop
	ba .LBB30_5
	nop
.LBB30_5:
	ld [%fp+-8], %o0
	call __subsf3
	ld [%fp+-12], %o1
	mov	%o0, %i0
	ba .LBB30_7
	st %i0, [%fp+-16]
.LBB30_6:
	mov	%g0, %i0
	ba .LBB30_7
	st %i0, [%fp+-16]
.LBB30_7:
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	ba .LBB30_8
	st %i0, [%fp+-4]
.LBB30_8:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end30:
	.size	fdimf, .Lfunc_end30-fdimf
                                        ! -- End function
	.globl	fmax                            ! -- Begin function fmax
	.p2align	2
	.type	fmax,@function
fmax:                                   ! @fmax
! %bb.0:
	save %sp, -216, %sp
	mov	%i1, %i4
	mov	%i0, %i5
                                        ! kill: def $i0 killed $i3
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i1 killed $i4
                                        ! kill: def $i0 killed $i5
                                        ! implicit-def: $i0_i1
	mov	%i5, %i0
	mov	%i4, %i1
	std %i0, [%fp+-16]
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%i3, %i1
	std %i0, [%fp+-24]
	ldd [%fp+-16], %i0
	mov	%i1, %i2
	st %i2, [%fp+-40]                       ! 4-byte Folded Spill
	mov	%i0, %i1
	mov	%g0, %i0
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	mov	1, %i0
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	be	.LBB31_2
	st %i0, [%fp+-28]
! %bb.1:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
.LBB31_2:
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	ld [%fp+-40], %i1                       ! 4-byte Folded Reload
	ld [%fp+-28], %i2                       ! 4-byte Folded Reload
	st %i2, [%fp+-56]                       ! 4-byte Folded Spill
	sethi 2097152, %i2
	andn %i1, %i2, %i1
	st %i1, [%fp+-52]                       ! 4-byte Folded Spill
	sethi 2096128, %i2
	st %i2, [%fp+-48]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	bl	.LBB31_4
	st %i0, [%fp+-44]
! %bb.3:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-44]                       ! 4-byte Folded Spill
.LBB31_4:
	ld [%fp+-56], %i0                       ! 4-byte Folded Reload
	ld [%fp+-52], %i1                       ! 4-byte Folded Reload
	ld [%fp+-48], %i2                       ! 4-byte Folded Reload
	ld [%fp+-44], %i3                       ! 4-byte Folded Reload
	st %i3, [%fp+-64]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	be	.LBB31_6
	st %i0, [%fp+-60]
! %bb.5:
	ld [%fp+-64], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-60]                       ! 4-byte Folded Spill
.LBB31_6:
	ld [%fp+-60], %i0                       ! 4-byte Folded Reload
	cmp	%i0, 0
	bne	.LBB31_8
	nop
	ba .LBB31_7
	nop
.LBB31_7:
	ldd [%fp+-24], %i0
	ba .LBB31_25
	std %i0, [%fp+-8]
.LBB31_8:
	ldd [%fp+-24], %i0
	mov	%i1, %i2
	st %i2, [%fp+-80]                       ! 4-byte Folded Spill
	mov	%i0, %i1
	mov	%g0, %i0
	st %i0, [%fp+-76]                       ! 4-byte Folded Spill
	mov	1, %i0
	st %i0, [%fp+-72]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	be	.LBB31_10
	st %i0, [%fp+-68]
! %bb.9:
	ld [%fp+-76], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-68]                       ! 4-byte Folded Spill
.LBB31_10:
	ld [%fp+-72], %i0                       ! 4-byte Folded Reload
	ld [%fp+-80], %i1                       ! 4-byte Folded Reload
	ld [%fp+-68], %i2                       ! 4-byte Folded Reload
	st %i2, [%fp+-96]                       ! 4-byte Folded Spill
	sethi 2097152, %i2
	andn %i1, %i2, %i1
	st %i1, [%fp+-92]                       ! 4-byte Folded Spill
	sethi 2096128, %i2
	st %i2, [%fp+-88]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	bl	.LBB31_12
	st %i0, [%fp+-84]
! %bb.11:
	ld [%fp+-76], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-84]                       ! 4-byte Folded Spill
.LBB31_12:
	ld [%fp+-96], %i0                       ! 4-byte Folded Reload
	ld [%fp+-92], %i1                       ! 4-byte Folded Reload
	ld [%fp+-88], %i2                       ! 4-byte Folded Reload
	ld [%fp+-84], %i3                       ! 4-byte Folded Reload
	st %i3, [%fp+-104]                      ! 4-byte Folded Spill
	cmp	%i1, %i2
	be	.LBB31_14
	st %i0, [%fp+-100]
! %bb.13:
	ld [%fp+-104], %i0                      ! 4-byte Folded Reload
	st %i0, [%fp+-100]                      ! 4-byte Folded Spill
.LBB31_14:
	ld [%fp+-100], %i0                      ! 4-byte Folded Reload
	cmp	%i0, 0
	bne	.LBB31_16
	nop
	ba .LBB31_15
	nop
.LBB31_15:
	ldd [%fp+-16], %i0
	ba .LBB31_25
	std %i0, [%fp+-8]
.LBB31_16:
	add %fp, -16, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	srl %i0, 31, %i0
	add %fp, -24, %i1
	or %i1, 4, %i1
	ld [%i1], %i1
	srl %i1, 31, %i1
	cmp	%i0, %i1
	be	.LBB31_21
	nop
	ba .LBB31_17
	nop
.LBB31_17:
	add %fp, -16, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	cmp	%i0, -1
	bg	.LBB31_19
	nop
	ba .LBB31_18
	nop
.LBB31_18:
	ldd [%fp+-24], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-112]                      ! 4-byte Folded Spill
	ba .LBB31_20
	st %i0, [%fp+-108]
.LBB31_19:
	ldd [%fp+-16], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-112]                      ! 4-byte Folded Spill
	ba .LBB31_20
	st %i0, [%fp+-108]
.LBB31_20:
	ld [%fp+-112], %i3                      ! 4-byte Folded Reload
	ld [%fp+-108], %i2                      ! 4-byte Folded Reload
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB31_25
	std %i0, [%fp+-8]
.LBB31_21:
	ldd [%fp+-16], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	ldd [%fp+-24], %i0
	mov	%i0, %o2
	call __ltdf2
	mov	%i1, %o3
	cmp	%o0, -1
	bg	.LBB31_23
	nop
	ba .LBB31_22
	nop
.LBB31_22:
	ldd [%fp+-24], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-120]                      ! 4-byte Folded Spill
	ba .LBB31_24
	st %i0, [%fp+-116]
.LBB31_23:
	ldd [%fp+-16], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-120]                      ! 4-byte Folded Spill
	ba .LBB31_24
	st %i0, [%fp+-116]
.LBB31_24:
	ld [%fp+-120], %i3                      ! 4-byte Folded Reload
	ld [%fp+-116], %i2                      ! 4-byte Folded Reload
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB31_25
	std %i0, [%fp+-8]
.LBB31_25:
	ldd [%fp+-8], %i2
	mov	%i2, %i0
	ret
	restore %g0, %i3, %o1
.Lfunc_end31:
	.size	fmax, .Lfunc_end31-fmax
                                        ! -- End function
	.globl	fmaxf                           ! -- Begin function fmaxf
	.p2align	2
	.type	fmaxf,@function
fmaxf:                                  ! @fmaxf
! %bb.0:
	save %sp, -112, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	ld [%fp+-8], %i0
	sethi 2097152, %i1
	andn %i0, %i1, %i0
	sethi 2088960, %i1
	or %i1, 1, %i1
	cmp	%i0, %i1
	bl	.LBB32_2
	nop
	ba .LBB32_1
	nop
.LBB32_1:
	ld [%fp+-12], %i0
	ba .LBB32_13
	st %i0, [%fp+-4]
.LBB32_2:
	ld [%fp+-12], %i0
	sethi 2097152, %i1
	andn %i0, %i1, %i0
	sethi 2088960, %i1
	or %i1, 1, %i1
	cmp	%i0, %i1
	bl	.LBB32_4
	nop
	ba .LBB32_3
	nop
.LBB32_3:
	ld [%fp+-8], %i0
	ba .LBB32_13
	st %i0, [%fp+-4]
.LBB32_4:
	ld [%fp+-8], %i0
	srl %i0, 31, %i0
	ld [%fp+-12], %i1
	srl %i1, 31, %i1
	cmp	%i0, %i1
	be	.LBB32_9
	nop
	ba .LBB32_5
	nop
.LBB32_5:
	ld [%fp+-8], %i0
	cmp	%i0, -1
	bg	.LBB32_7
	nop
	ba .LBB32_6
	nop
.LBB32_6:
	ld [%fp+-12], %i0
	ba .LBB32_8
	st %i0, [%fp+-16]
.LBB32_7:
	ld [%fp+-8], %i0
	ba .LBB32_8
	st %i0, [%fp+-16]
.LBB32_8:
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	ba .LBB32_13
	st %i0, [%fp+-4]
.LBB32_9:
	ld [%fp+-8], %o0
	call __ltsf2
	ld [%fp+-12], %o1
	cmp	%o0, -1
	bg	.LBB32_11
	nop
	ba .LBB32_10
	nop
.LBB32_10:
	ld [%fp+-12], %i0
	ba .LBB32_12
	st %i0, [%fp+-20]
.LBB32_11:
	ld [%fp+-8], %i0
	ba .LBB32_12
	st %i0, [%fp+-20]
.LBB32_12:
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	ba .LBB32_13
	st %i0, [%fp+-4]
.LBB32_13:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end32:
	.size	fmaxf, .Lfunc_end32-fmaxf
                                        ! -- End function
	.globl	fmaxl                           ! -- Begin function fmaxl
	.p2align	2
	.type	fmaxl,@function
fmaxl:                                  ! @fmaxl
! %bb.0:
	save %sp, -216, %sp
	mov	%i1, %i4
	mov	%i0, %i5
                                        ! kill: def $i0 killed $i3
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i1 killed $i4
                                        ! kill: def $i0 killed $i5
                                        ! implicit-def: $i0_i1
	mov	%i5, %i0
	mov	%i4, %i1
	std %i0, [%fp+-16]
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%i3, %i1
	std %i0, [%fp+-24]
	ldd [%fp+-16], %i0
	mov	%i1, %i2
	st %i2, [%fp+-40]                       ! 4-byte Folded Spill
	mov	%i0, %i1
	mov	%g0, %i0
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	mov	1, %i0
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	be	.LBB33_2
	st %i0, [%fp+-28]
! %bb.1:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
.LBB33_2:
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	ld [%fp+-40], %i1                       ! 4-byte Folded Reload
	ld [%fp+-28], %i2                       ! 4-byte Folded Reload
	st %i2, [%fp+-56]                       ! 4-byte Folded Spill
	sethi 2097152, %i2
	andn %i1, %i2, %i1
	st %i1, [%fp+-52]                       ! 4-byte Folded Spill
	sethi 2096128, %i2
	st %i2, [%fp+-48]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	bl	.LBB33_4
	st %i0, [%fp+-44]
! %bb.3:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-44]                       ! 4-byte Folded Spill
.LBB33_4:
	ld [%fp+-56], %i0                       ! 4-byte Folded Reload
	ld [%fp+-52], %i1                       ! 4-byte Folded Reload
	ld [%fp+-48], %i2                       ! 4-byte Folded Reload
	ld [%fp+-44], %i3                       ! 4-byte Folded Reload
	st %i3, [%fp+-64]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	be	.LBB33_6
	st %i0, [%fp+-60]
! %bb.5:
	ld [%fp+-64], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-60]                       ! 4-byte Folded Spill
.LBB33_6:
	ld [%fp+-60], %i0                       ! 4-byte Folded Reload
	cmp	%i0, 0
	bne	.LBB33_8
	nop
	ba .LBB33_7
	nop
.LBB33_7:
	ldd [%fp+-24], %i0
	ba .LBB33_25
	std %i0, [%fp+-8]
.LBB33_8:
	ldd [%fp+-24], %i0
	mov	%i1, %i2
	st %i2, [%fp+-80]                       ! 4-byte Folded Spill
	mov	%i0, %i1
	mov	%g0, %i0
	st %i0, [%fp+-76]                       ! 4-byte Folded Spill
	mov	1, %i0
	st %i0, [%fp+-72]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	be	.LBB33_10
	st %i0, [%fp+-68]
! %bb.9:
	ld [%fp+-76], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-68]                       ! 4-byte Folded Spill
.LBB33_10:
	ld [%fp+-72], %i0                       ! 4-byte Folded Reload
	ld [%fp+-80], %i1                       ! 4-byte Folded Reload
	ld [%fp+-68], %i2                       ! 4-byte Folded Reload
	st %i2, [%fp+-96]                       ! 4-byte Folded Spill
	sethi 2097152, %i2
	andn %i1, %i2, %i1
	st %i1, [%fp+-92]                       ! 4-byte Folded Spill
	sethi 2096128, %i2
	st %i2, [%fp+-88]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	bl	.LBB33_12
	st %i0, [%fp+-84]
! %bb.11:
	ld [%fp+-76], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-84]                       ! 4-byte Folded Spill
.LBB33_12:
	ld [%fp+-96], %i0                       ! 4-byte Folded Reload
	ld [%fp+-92], %i1                       ! 4-byte Folded Reload
	ld [%fp+-88], %i2                       ! 4-byte Folded Reload
	ld [%fp+-84], %i3                       ! 4-byte Folded Reload
	st %i3, [%fp+-104]                      ! 4-byte Folded Spill
	cmp	%i1, %i2
	be	.LBB33_14
	st %i0, [%fp+-100]
! %bb.13:
	ld [%fp+-104], %i0                      ! 4-byte Folded Reload
	st %i0, [%fp+-100]                      ! 4-byte Folded Spill
.LBB33_14:
	ld [%fp+-100], %i0                      ! 4-byte Folded Reload
	cmp	%i0, 0
	bne	.LBB33_16
	nop
	ba .LBB33_15
	nop
.LBB33_15:
	ldd [%fp+-16], %i0
	ba .LBB33_25
	std %i0, [%fp+-8]
.LBB33_16:
	add %fp, -16, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	srl %i0, 31, %i0
	add %fp, -24, %i1
	or %i1, 4, %i1
	ld [%i1], %i1
	srl %i1, 31, %i1
	cmp	%i0, %i1
	be	.LBB33_21
	nop
	ba .LBB33_17
	nop
.LBB33_17:
	add %fp, -16, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	cmp	%i0, -1
	bg	.LBB33_19
	nop
	ba .LBB33_18
	nop
.LBB33_18:
	ldd [%fp+-24], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-112]                      ! 4-byte Folded Spill
	ba .LBB33_20
	st %i0, [%fp+-108]
.LBB33_19:
	ldd [%fp+-16], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-112]                      ! 4-byte Folded Spill
	ba .LBB33_20
	st %i0, [%fp+-108]
.LBB33_20:
	ld [%fp+-112], %i3                      ! 4-byte Folded Reload
	ld [%fp+-108], %i2                      ! 4-byte Folded Reload
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB33_25
	std %i0, [%fp+-8]
.LBB33_21:
	ldd [%fp+-16], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	ldd [%fp+-24], %i0
	mov	%i0, %o2
	call __ltdf2
	mov	%i1, %o3
	cmp	%o0, -1
	bg	.LBB33_23
	nop
	ba .LBB33_22
	nop
.LBB33_22:
	ldd [%fp+-24], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-120]                      ! 4-byte Folded Spill
	ba .LBB33_24
	st %i0, [%fp+-116]
.LBB33_23:
	ldd [%fp+-16], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-120]                      ! 4-byte Folded Spill
	ba .LBB33_24
	st %i0, [%fp+-116]
.LBB33_24:
	ld [%fp+-120], %i3                      ! 4-byte Folded Reload
	ld [%fp+-116], %i2                      ! 4-byte Folded Reload
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB33_25
	std %i0, [%fp+-8]
.LBB33_25:
	ldd [%fp+-8], %i2
	mov	%i2, %i0
	ret
	restore %g0, %i3, %o1
.Lfunc_end33:
	.size	fmaxl, .Lfunc_end33-fmaxl
                                        ! -- End function
	.globl	fmin                            ! -- Begin function fmin
	.p2align	2
	.type	fmin,@function
fmin:                                   ! @fmin
! %bb.0:
	save %sp, -216, %sp
	mov	%i1, %i4
	mov	%i0, %i5
                                        ! kill: def $i0 killed $i3
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i1 killed $i4
                                        ! kill: def $i0 killed $i5
                                        ! implicit-def: $i0_i1
	mov	%i5, %i0
	mov	%i4, %i1
	std %i0, [%fp+-16]
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%i3, %i1
	std %i0, [%fp+-24]
	ldd [%fp+-16], %i0
	mov	%i1, %i2
	st %i2, [%fp+-40]                       ! 4-byte Folded Spill
	mov	%i0, %i1
	mov	%g0, %i0
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	mov	1, %i0
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	be	.LBB34_2
	st %i0, [%fp+-28]
! %bb.1:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
.LBB34_2:
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	ld [%fp+-40], %i1                       ! 4-byte Folded Reload
	ld [%fp+-28], %i2                       ! 4-byte Folded Reload
	st %i2, [%fp+-56]                       ! 4-byte Folded Spill
	sethi 2097152, %i2
	andn %i1, %i2, %i1
	st %i1, [%fp+-52]                       ! 4-byte Folded Spill
	sethi 2096128, %i2
	st %i2, [%fp+-48]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	bl	.LBB34_4
	st %i0, [%fp+-44]
! %bb.3:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-44]                       ! 4-byte Folded Spill
.LBB34_4:
	ld [%fp+-56], %i0                       ! 4-byte Folded Reload
	ld [%fp+-52], %i1                       ! 4-byte Folded Reload
	ld [%fp+-48], %i2                       ! 4-byte Folded Reload
	ld [%fp+-44], %i3                       ! 4-byte Folded Reload
	st %i3, [%fp+-64]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	be	.LBB34_6
	st %i0, [%fp+-60]
! %bb.5:
	ld [%fp+-64], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-60]                       ! 4-byte Folded Spill
.LBB34_6:
	ld [%fp+-60], %i0                       ! 4-byte Folded Reload
	cmp	%i0, 0
	bne	.LBB34_8
	nop
	ba .LBB34_7
	nop
.LBB34_7:
	ldd [%fp+-24], %i0
	ba .LBB34_25
	std %i0, [%fp+-8]
.LBB34_8:
	ldd [%fp+-24], %i0
	mov	%i1, %i2
	st %i2, [%fp+-80]                       ! 4-byte Folded Spill
	mov	%i0, %i1
	mov	%g0, %i0
	st %i0, [%fp+-76]                       ! 4-byte Folded Spill
	mov	1, %i0
	st %i0, [%fp+-72]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	be	.LBB34_10
	st %i0, [%fp+-68]
! %bb.9:
	ld [%fp+-76], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-68]                       ! 4-byte Folded Spill
.LBB34_10:
	ld [%fp+-72], %i0                       ! 4-byte Folded Reload
	ld [%fp+-80], %i1                       ! 4-byte Folded Reload
	ld [%fp+-68], %i2                       ! 4-byte Folded Reload
	st %i2, [%fp+-96]                       ! 4-byte Folded Spill
	sethi 2097152, %i2
	andn %i1, %i2, %i1
	st %i1, [%fp+-92]                       ! 4-byte Folded Spill
	sethi 2096128, %i2
	st %i2, [%fp+-88]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	bl	.LBB34_12
	st %i0, [%fp+-84]
! %bb.11:
	ld [%fp+-76], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-84]                       ! 4-byte Folded Spill
.LBB34_12:
	ld [%fp+-96], %i0                       ! 4-byte Folded Reload
	ld [%fp+-92], %i1                       ! 4-byte Folded Reload
	ld [%fp+-88], %i2                       ! 4-byte Folded Reload
	ld [%fp+-84], %i3                       ! 4-byte Folded Reload
	st %i3, [%fp+-104]                      ! 4-byte Folded Spill
	cmp	%i1, %i2
	be	.LBB34_14
	st %i0, [%fp+-100]
! %bb.13:
	ld [%fp+-104], %i0                      ! 4-byte Folded Reload
	st %i0, [%fp+-100]                      ! 4-byte Folded Spill
.LBB34_14:
	ld [%fp+-100], %i0                      ! 4-byte Folded Reload
	cmp	%i0, 0
	bne	.LBB34_16
	nop
	ba .LBB34_15
	nop
.LBB34_15:
	ldd [%fp+-16], %i0
	ba .LBB34_25
	std %i0, [%fp+-8]
.LBB34_16:
	add %fp, -16, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	srl %i0, 31, %i0
	add %fp, -24, %i1
	or %i1, 4, %i1
	ld [%i1], %i1
	srl %i1, 31, %i1
	cmp	%i0, %i1
	be	.LBB34_21
	nop
	ba .LBB34_17
	nop
.LBB34_17:
	add %fp, -16, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	cmp	%i0, -1
	bg	.LBB34_19
	nop
	ba .LBB34_18
	nop
.LBB34_18:
	ldd [%fp+-16], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-112]                      ! 4-byte Folded Spill
	ba .LBB34_20
	st %i0, [%fp+-108]
.LBB34_19:
	ldd [%fp+-24], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-112]                      ! 4-byte Folded Spill
	ba .LBB34_20
	st %i0, [%fp+-108]
.LBB34_20:
	ld [%fp+-112], %i3                      ! 4-byte Folded Reload
	ld [%fp+-108], %i2                      ! 4-byte Folded Reload
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB34_25
	std %i0, [%fp+-8]
.LBB34_21:
	ldd [%fp+-16], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	ldd [%fp+-24], %i0
	mov	%i0, %o2
	call __ltdf2
	mov	%i1, %o3
	cmp	%o0, -1
	bg	.LBB34_23
	nop
	ba .LBB34_22
	nop
.LBB34_22:
	ldd [%fp+-16], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-120]                      ! 4-byte Folded Spill
	ba .LBB34_24
	st %i0, [%fp+-116]
.LBB34_23:
	ldd [%fp+-24], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-120]                      ! 4-byte Folded Spill
	ba .LBB34_24
	st %i0, [%fp+-116]
.LBB34_24:
	ld [%fp+-120], %i3                      ! 4-byte Folded Reload
	ld [%fp+-116], %i2                      ! 4-byte Folded Reload
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB34_25
	std %i0, [%fp+-8]
.LBB34_25:
	ldd [%fp+-8], %i2
	mov	%i2, %i0
	ret
	restore %g0, %i3, %o1
.Lfunc_end34:
	.size	fmin, .Lfunc_end34-fmin
                                        ! -- End function
	.globl	fminf                           ! -- Begin function fminf
	.p2align	2
	.type	fminf,@function
fminf:                                  ! @fminf
! %bb.0:
	save %sp, -112, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	ld [%fp+-8], %i0
	sethi 2097152, %i1
	andn %i0, %i1, %i0
	sethi 2088960, %i1
	or %i1, 1, %i1
	cmp	%i0, %i1
	bl	.LBB35_2
	nop
	ba .LBB35_1
	nop
.LBB35_1:
	ld [%fp+-12], %i0
	ba .LBB35_13
	st %i0, [%fp+-4]
.LBB35_2:
	ld [%fp+-12], %i0
	sethi 2097152, %i1
	andn %i0, %i1, %i0
	sethi 2088960, %i1
	or %i1, 1, %i1
	cmp	%i0, %i1
	bl	.LBB35_4
	nop
	ba .LBB35_3
	nop
.LBB35_3:
	ld [%fp+-8], %i0
	ba .LBB35_13
	st %i0, [%fp+-4]
.LBB35_4:
	ld [%fp+-8], %i0
	srl %i0, 31, %i0
	ld [%fp+-12], %i1
	srl %i1, 31, %i1
	cmp	%i0, %i1
	be	.LBB35_9
	nop
	ba .LBB35_5
	nop
.LBB35_5:
	ld [%fp+-8], %i0
	cmp	%i0, -1
	bg	.LBB35_7
	nop
	ba .LBB35_6
	nop
.LBB35_6:
	ld [%fp+-8], %i0
	ba .LBB35_8
	st %i0, [%fp+-16]
.LBB35_7:
	ld [%fp+-12], %i0
	ba .LBB35_8
	st %i0, [%fp+-16]
.LBB35_8:
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	ba .LBB35_13
	st %i0, [%fp+-4]
.LBB35_9:
	ld [%fp+-8], %o0
	call __ltsf2
	ld [%fp+-12], %o1
	cmp	%o0, -1
	bg	.LBB35_11
	nop
	ba .LBB35_10
	nop
.LBB35_10:
	ld [%fp+-8], %i0
	ba .LBB35_12
	st %i0, [%fp+-20]
.LBB35_11:
	ld [%fp+-12], %i0
	ba .LBB35_12
	st %i0, [%fp+-20]
.LBB35_12:
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	ba .LBB35_13
	st %i0, [%fp+-4]
.LBB35_13:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end35:
	.size	fminf, .Lfunc_end35-fminf
                                        ! -- End function
	.globl	fminl                           ! -- Begin function fminl
	.p2align	2
	.type	fminl,@function
fminl:                                  ! @fminl
! %bb.0:
	save %sp, -216, %sp
	mov	%i1, %i4
	mov	%i0, %i5
                                        ! kill: def $i0 killed $i3
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i1 killed $i4
                                        ! kill: def $i0 killed $i5
                                        ! implicit-def: $i0_i1
	mov	%i5, %i0
	mov	%i4, %i1
	std %i0, [%fp+-16]
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%i3, %i1
	std %i0, [%fp+-24]
	ldd [%fp+-16], %i0
	mov	%i1, %i2
	st %i2, [%fp+-40]                       ! 4-byte Folded Spill
	mov	%i0, %i1
	mov	%g0, %i0
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	mov	1, %i0
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	be	.LBB36_2
	st %i0, [%fp+-28]
! %bb.1:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
.LBB36_2:
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	ld [%fp+-40], %i1                       ! 4-byte Folded Reload
	ld [%fp+-28], %i2                       ! 4-byte Folded Reload
	st %i2, [%fp+-56]                       ! 4-byte Folded Spill
	sethi 2097152, %i2
	andn %i1, %i2, %i1
	st %i1, [%fp+-52]                       ! 4-byte Folded Spill
	sethi 2096128, %i2
	st %i2, [%fp+-48]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	bl	.LBB36_4
	st %i0, [%fp+-44]
! %bb.3:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-44]                       ! 4-byte Folded Spill
.LBB36_4:
	ld [%fp+-56], %i0                       ! 4-byte Folded Reload
	ld [%fp+-52], %i1                       ! 4-byte Folded Reload
	ld [%fp+-48], %i2                       ! 4-byte Folded Reload
	ld [%fp+-44], %i3                       ! 4-byte Folded Reload
	st %i3, [%fp+-64]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	be	.LBB36_6
	st %i0, [%fp+-60]
! %bb.5:
	ld [%fp+-64], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-60]                       ! 4-byte Folded Spill
.LBB36_6:
	ld [%fp+-60], %i0                       ! 4-byte Folded Reload
	cmp	%i0, 0
	bne	.LBB36_8
	nop
	ba .LBB36_7
	nop
.LBB36_7:
	ldd [%fp+-24], %i0
	ba .LBB36_25
	std %i0, [%fp+-8]
.LBB36_8:
	ldd [%fp+-24], %i0
	mov	%i1, %i2
	st %i2, [%fp+-80]                       ! 4-byte Folded Spill
	mov	%i0, %i1
	mov	%g0, %i0
	st %i0, [%fp+-76]                       ! 4-byte Folded Spill
	mov	1, %i0
	st %i0, [%fp+-72]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	be	.LBB36_10
	st %i0, [%fp+-68]
! %bb.9:
	ld [%fp+-76], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-68]                       ! 4-byte Folded Spill
.LBB36_10:
	ld [%fp+-72], %i0                       ! 4-byte Folded Reload
	ld [%fp+-80], %i1                       ! 4-byte Folded Reload
	ld [%fp+-68], %i2                       ! 4-byte Folded Reload
	st %i2, [%fp+-96]                       ! 4-byte Folded Spill
	sethi 2097152, %i2
	andn %i1, %i2, %i1
	st %i1, [%fp+-92]                       ! 4-byte Folded Spill
	sethi 2096128, %i2
	st %i2, [%fp+-88]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	bl	.LBB36_12
	st %i0, [%fp+-84]
! %bb.11:
	ld [%fp+-76], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-84]                       ! 4-byte Folded Spill
.LBB36_12:
	ld [%fp+-96], %i0                       ! 4-byte Folded Reload
	ld [%fp+-92], %i1                       ! 4-byte Folded Reload
	ld [%fp+-88], %i2                       ! 4-byte Folded Reload
	ld [%fp+-84], %i3                       ! 4-byte Folded Reload
	st %i3, [%fp+-104]                      ! 4-byte Folded Spill
	cmp	%i1, %i2
	be	.LBB36_14
	st %i0, [%fp+-100]
! %bb.13:
	ld [%fp+-104], %i0                      ! 4-byte Folded Reload
	st %i0, [%fp+-100]                      ! 4-byte Folded Spill
.LBB36_14:
	ld [%fp+-100], %i0                      ! 4-byte Folded Reload
	cmp	%i0, 0
	bne	.LBB36_16
	nop
	ba .LBB36_15
	nop
.LBB36_15:
	ldd [%fp+-16], %i0
	ba .LBB36_25
	std %i0, [%fp+-8]
.LBB36_16:
	add %fp, -16, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	srl %i0, 31, %i0
	add %fp, -24, %i1
	or %i1, 4, %i1
	ld [%i1], %i1
	srl %i1, 31, %i1
	cmp	%i0, %i1
	be	.LBB36_21
	nop
	ba .LBB36_17
	nop
.LBB36_17:
	add %fp, -16, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	cmp	%i0, -1
	bg	.LBB36_19
	nop
	ba .LBB36_18
	nop
.LBB36_18:
	ldd [%fp+-16], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-112]                      ! 4-byte Folded Spill
	ba .LBB36_20
	st %i0, [%fp+-108]
.LBB36_19:
	ldd [%fp+-24], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-112]                      ! 4-byte Folded Spill
	ba .LBB36_20
	st %i0, [%fp+-108]
.LBB36_20:
	ld [%fp+-112], %i3                      ! 4-byte Folded Reload
	ld [%fp+-108], %i2                      ! 4-byte Folded Reload
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB36_25
	std %i0, [%fp+-8]
.LBB36_21:
	ldd [%fp+-16], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	ldd [%fp+-24], %i0
	mov	%i0, %o2
	call __ltdf2
	mov	%i1, %o3
	cmp	%o0, -1
	bg	.LBB36_23
	nop
	ba .LBB36_22
	nop
.LBB36_22:
	ldd [%fp+-16], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-120]                      ! 4-byte Folded Spill
	ba .LBB36_24
	st %i0, [%fp+-116]
.LBB36_23:
	ldd [%fp+-24], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-120]                      ! 4-byte Folded Spill
	ba .LBB36_24
	st %i0, [%fp+-116]
.LBB36_24:
	ld [%fp+-120], %i3                      ! 4-byte Folded Reload
	ld [%fp+-116], %i2                      ! 4-byte Folded Reload
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB36_25
	std %i0, [%fp+-8]
.LBB36_25:
	ldd [%fp+-8], %i2
	mov	%i2, %i0
	ret
	restore %g0, %i3, %o1
.Lfunc_end36:
	.size	fminl, .Lfunc_end36-fminl
                                        ! -- End function
	.globl	l64a                            ! -- Begin function l64a
	.p2align	2
	.type	l64a,@function
l64a:                                   ! @l64a
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	st %i0, [%fp+-12]
	sethi %hi(l64a.s), %i0
	add %i0, %lo(l64a.s), %i0
	ba .LBB37_1
	st %i0, [%fp+-8]
.LBB37_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB37_4
	nop
	ba .LBB37_2
	nop
.LBB37_2:                               !   in Loop: Header=BB37_1 Depth=1
	ld [%fp+-12], %i0
	and %i0, 63, %i1
	sethi %hi(digits), %i0
	add %i0, %lo(digits), %i0
	ldub [%i0+%i1], %i1
	ld [%fp+-8], %i0
	ba .LBB37_3
	stb %i1, [%i0]
.LBB37_3:                               !   in Loop: Header=BB37_1 Depth=1
	ld [%fp+-8], %i0
	add %i0, 1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-12], %i0
	srl %i0, 6, %i0
	ba .LBB37_1
	st %i0, [%fp+-12]
.LBB37_4:
	ld [%fp+-8], %i0
	mov	%g0, %i1
	stb %i1, [%i0]
	sethi %hi(l64a.s), %i0
	ret
	restore %i0, %lo(l64a.s), %o0
.Lfunc_end37:
	.size	l64a, .Lfunc_end37-l64a
                                        ! -- End function
	.globl	srand                           ! -- Begin function srand
	.p2align	2
	.type	srand,@function
srand:                                  ! @srand
! %bb.0:
	save %sp, -96, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	add %i0, -1, %i0
                                        ! implicit-def: $i2_i3
	mov	%i0, %i2
	mov	%g0, %i0
	mov	%i0, %i3
	sethi %hi(seed), %i0
	std %i2, [%i0+%lo(seed)]
	ret
	restore
.Lfunc_end38:
	.size	srand, .Lfunc_end38-srand
                                        ! -- End function
	.globl	rand                            ! -- Begin function rand
	.p2align	2
	.type	rand,@function
rand:                                   ! @rand
! %bb.0:
	save %sp, -96, %sp
	sethi %hi(seed), %i1
	add %i1, %lo(seed), %i0
	ldd [%i1+%lo(seed)], %i2
	mov	%i3, %i4
                                        ! kill: def $i2 killed $i2 killed $i2_i3
	sethi 1447037, %i3
	or %i3, 45, %i3
	smul %i2, %i3, %g2
	sethi 1254751, %i3
	or %i3, 813, %i5
	umul %i2, %i5, %i3
	rd %y, %i2
	add %i2, %g2, %i2
	smul %i4, %i5, %i4
	add %i2, %i4, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(seed)]
	ld [%i0+4], %i0
	srl %i0, 1, %i0
	ret
	restore
.Lfunc_end39:
	.size	rand, .Lfunc_end39-rand
                                        ! -- End function
	.globl	insque                          ! -- Begin function insque
	.p2align	2
	.type	insque,@function
insque:                                 ! @insque
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ld [%fp+-4], %i0
	st %i0, [%fp+-12]
	ld [%fp+-8], %i0
	st %i0, [%fp+-16]
	ld [%fp+-16], %i0
	cmp	%i0, 0
	bne	.LBB40_2
	nop
	ba .LBB40_1
	nop
.LBB40_1:
	ld [%fp+-12], %i0
	st %g0, [%i0+4]
	ld [%fp+-12], %i0
	ba .LBB40_4
	st %g0, [%i0]
.LBB40_2:
	ld [%fp+-16], %i0
	ld [%i0], %i1
	ld [%fp+-12], %i0
	st %i1, [%i0]
	ld [%fp+-16], %i1
	ld [%fp+-12], %i0
	st %i1, [%i0+4]
	ld [%fp+-12], %i1
	ld [%fp+-16], %i0
	st %i1, [%i0]
	ld [%fp+-12], %i0
	ld [%i0], %i0
	cmp	%i0, 0
	be	.LBB40_4
	nop
	ba .LBB40_3
	nop
.LBB40_3:
	ld [%fp+-12], %i1
	ld [%i1], %i0
	ba .LBB40_4
	st %i1, [%i0+4]
.LBB40_4:
	ret
	restore
.Lfunc_end40:
	.size	insque, .Lfunc_end40-insque
                                        ! -- End function
	.globl	remque                          ! -- Begin function remque
	.p2align	2
	.type	remque,@function
remque:                                 ! @remque
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	st %i0, [%fp+-8]
	ld [%fp+-8], %i0
	ld [%i0], %i0
	cmp	%i0, 0
	be	.LBB41_2
	nop
	ba .LBB41_1
	nop
.LBB41_1:
	ld [%fp+-8], %i0
	ld [%i0+4], %i1
	ld [%i0], %i0
	ba .LBB41_2
	st %i1, [%i0+4]
.LBB41_2:
	ld [%fp+-8], %i0
	ld [%i0+4], %i0
	cmp	%i0, 0
	be	.LBB41_4
	nop
	ba .LBB41_3
	nop
.LBB41_3:
	ld [%fp+-8], %i0
	ld [%i0], %i1
	ld [%i0+4], %i0
	ba .LBB41_4
	st %i1, [%i0]
.LBB41_4:
	ret
	restore
.Lfunc_end41:
	.size	remque, .Lfunc_end41-remque
                                        ! -- End function
	.globl	lsearch                         ! -- Begin function lsearch
	.p2align	2
	.type	lsearch,@function
lsearch:                                ! @lsearch
! %bb.0:
	save %sp, -136, %sp
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	st %i2, [%fp+-16]
	st %i3, [%fp+-20]
	st %i4, [%fp+-24]
	ld [%fp+-20], %i0
	st %i0, [%fp+-40]                       ! 4-byte Folded Spill
	ld [%fp+-12], %i0
	st %i0, [%fp+-28]
	ld [%fp+-16], %i0
	ld [%i0], %i0
	st %i0, [%fp+-32]
	ba .LBB42_1
	st %g0, [%fp+-36]
.LBB42_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-36], %i0
	ld [%fp+-32], %i1
	cmp	%i0, %i1
	bcc	.LBB42_6
	nop
	ba .LBB42_2
	nop
.LBB42_2:                               !   in Loop: Header=BB42_1 Depth=1
	ld [%fp+-40], %i3                       ! 4-byte Folded Reload
	ld [%fp+-24], %i0
	ld [%fp+-8], %o0
	ld [%fp+-28], %i1
	ld [%fp+-36], %i2
	smul %i2, %i3, %i2
	call %i0
	add %i1, %i2, %o1
	cmp	%o0, 0
	bne	.LBB42_4
	nop
	ba .LBB42_3
	nop
.LBB42_3:
	ld [%fp+-40], %i2                       ! 4-byte Folded Reload
	ld [%fp+-28], %i0
	ld [%fp+-36], %i1
	smul %i1, %i2, %i1
	add %i0, %i1, %i0
	ba .LBB42_7
	st %i0, [%fp+-4]
.LBB42_4:                               !   in Loop: Header=BB42_1 Depth=1
	ba .LBB42_5
	nop
.LBB42_5:                               !   in Loop: Header=BB42_1 Depth=1
	ld [%fp+-36], %i0
	add %i0, 1, %i0
	ba .LBB42_1
	st %i0, [%fp+-36]
.LBB42_6:
	ld [%fp+-40], %i2                       ! 4-byte Folded Reload
	ld [%fp+-32], %i0
	add %i0, 1, %i1
	ld [%fp+-16], %i0
	st %i1, [%i0]
	ld [%fp+-28], %i0
	ld [%fp+-32], %i1
	smul %i1, %i2, %i1
	add %i0, %i1, %i0
	ld [%fp+-8], %o1
	ld [%fp+-20], %o2
	call memcpy
	mov	%i0, %o0
	ba .LBB42_7
	st %i0, [%fp+-4]
.LBB42_7:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end42:
	.size	lsearch, .Lfunc_end42-lsearch
                                        ! -- End function
	.globl	lfind                           ! -- Begin function lfind
	.p2align	2
	.type	lfind,@function
lfind:                                  ! @lfind
! %bb.0:
	save %sp, -136, %sp
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	st %i2, [%fp+-16]
	st %i3, [%fp+-20]
	st %i4, [%fp+-24]
	ld [%fp+-20], %i0
	st %i0, [%fp+-40]                       ! 4-byte Folded Spill
	ld [%fp+-12], %i0
	st %i0, [%fp+-28]
	ld [%fp+-16], %i0
	ld [%i0], %i0
	st %i0, [%fp+-32]
	ba .LBB43_1
	st %g0, [%fp+-36]
.LBB43_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-36], %i0
	ld [%fp+-32], %i1
	cmp	%i0, %i1
	bcc	.LBB43_6
	nop
	ba .LBB43_2
	nop
.LBB43_2:                               !   in Loop: Header=BB43_1 Depth=1
	ld [%fp+-40], %i3                       ! 4-byte Folded Reload
	ld [%fp+-24], %i0
	ld [%fp+-8], %o0
	ld [%fp+-28], %i1
	ld [%fp+-36], %i2
	smul %i2, %i3, %i2
	call %i0
	add %i1, %i2, %o1
	cmp	%o0, 0
	bne	.LBB43_4
	nop
	ba .LBB43_3
	nop
.LBB43_3:
	ld [%fp+-40], %i2                       ! 4-byte Folded Reload
	ld [%fp+-28], %i0
	ld [%fp+-36], %i1
	smul %i1, %i2, %i1
	add %i0, %i1, %i0
	ba .LBB43_7
	st %i0, [%fp+-4]
.LBB43_4:                               !   in Loop: Header=BB43_1 Depth=1
	ba .LBB43_5
	nop
.LBB43_5:                               !   in Loop: Header=BB43_1 Depth=1
	ld [%fp+-36], %i0
	add %i0, 1, %i0
	ba .LBB43_1
	st %i0, [%fp+-36]
.LBB43_6:
	ba .LBB43_7
	st %g0, [%fp+-4]
.LBB43_7:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end43:
	.size	lfind, .Lfunc_end43-lfind
                                        ! -- End function
	.globl	abs                             ! -- Begin function abs
	.p2align	2
	.type	abs,@function
abs:                                    ! @abs
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	cmp	%i0, 1
	bl	.LBB44_2
	nop
	ba .LBB44_1
	nop
.LBB44_1:
	ld [%fp+-4], %i0
	ba .LBB44_3
	st %i0, [%fp+-8]
.LBB44_2:
	ld [%fp+-4], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB44_3
	st %i0, [%fp+-8]
.LBB44_3:
	ld [%fp+-8], %i0                        ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end44:
	.size	abs, .Lfunc_end44-abs
                                        ! -- End function
	.globl	atoi                            ! -- Begin function atoi
	.p2align	2
	.type	atoi,@function
atoi:                                   ! @atoi
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-4]
	st %g0, [%fp+-8]
	ba .LBB45_1
	st %g0, [%fp+-12]
.LBB45_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	call isspace
	ldsb [%i0], %o0
	cmp	%o0, 0
	be	.LBB45_3
	nop
	ba .LBB45_2
	nop
.LBB45_2:                               !   in Loop: Header=BB45_1 Depth=1
	ld [%fp+-4], %i0
	add %i0, 1, %i0
	ba .LBB45_1
	st %i0, [%fp+-4]
.LBB45_3:
	ld [%fp+-4], %i0
	ldsb [%i0], %i0
	cmp	%i0, 43
	be	.LBB45_6
	st %i0, [%fp+-16]
	ba .LBB45_4
	nop
.LBB45_4:
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	cmp	%i0, 45
	bne	.LBB45_7
	nop
	ba .LBB45_5
	nop
.LBB45_5:
	mov	1, %i0
	ba .LBB45_6
	st %i0, [%fp+-12]
.LBB45_6:
	ld [%fp+-4], %i0
	add %i0, 1, %i0
	ba .LBB45_7
	st %i0, [%fp+-4]
.LBB45_7:
	ba .LBB45_8
	nop
.LBB45_8:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	call isdigit
	ldsb [%i0], %o0
	cmp	%o0, 0
	be	.LBB45_10
	nop
	ba .LBB45_9
	nop
.LBB45_9:                               !   in Loop: Header=BB45_8 Depth=1
	ld [%fp+-8], %i0
	smul %i0, 10, %i0
	ld [%fp+-4], %i1
	add %i1, 1, %i2
	st %i2, [%fp+-4]
	ldsb [%i1], %i1
	sub %i0, %i1, %i0
	add %i0, 48, %i0
	ba .LBB45_8
	st %i0, [%fp+-8]
.LBB45_10:
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB45_12
	nop
	ba .LBB45_11
	nop
.LBB45_11:
	ld [%fp+-8], %i0
	ba .LBB45_13
	st %i0, [%fp+-20]
.LBB45_12:
	ld [%fp+-8], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB45_13
	st %i0, [%fp+-20]
.LBB45_13:
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end45:
	.size	atoi, .Lfunc_end45-atoi
                                        ! -- End function
	.globl	atol                            ! -- Begin function atol
	.p2align	2
	.type	atol,@function
atol:                                   ! @atol
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-4]
	st %g0, [%fp+-8]
	ba .LBB46_1
	st %g0, [%fp+-12]
.LBB46_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	call isspace
	ldsb [%i0], %o0
	cmp	%o0, 0
	be	.LBB46_3
	nop
	ba .LBB46_2
	nop
.LBB46_2:                               !   in Loop: Header=BB46_1 Depth=1
	ld [%fp+-4], %i0
	add %i0, 1, %i0
	ba .LBB46_1
	st %i0, [%fp+-4]
.LBB46_3:
	ld [%fp+-4], %i0
	ldsb [%i0], %i0
	cmp	%i0, 43
	be	.LBB46_6
	st %i0, [%fp+-16]
	ba .LBB46_4
	nop
.LBB46_4:
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	cmp	%i0, 45
	bne	.LBB46_7
	nop
	ba .LBB46_5
	nop
.LBB46_5:
	mov	1, %i0
	ba .LBB46_6
	st %i0, [%fp+-12]
.LBB46_6:
	ld [%fp+-4], %i0
	add %i0, 1, %i0
	ba .LBB46_7
	st %i0, [%fp+-4]
.LBB46_7:
	ba .LBB46_8
	nop
.LBB46_8:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	call isdigit
	ldsb [%i0], %o0
	cmp	%o0, 0
	be	.LBB46_10
	nop
	ba .LBB46_9
	nop
.LBB46_9:                               !   in Loop: Header=BB46_8 Depth=1
	ld [%fp+-8], %i0
	smul %i0, 10, %i0
	ld [%fp+-4], %i1
	add %i1, 1, %i2
	st %i2, [%fp+-4]
	ldsb [%i1], %i1
	sub %i0, %i1, %i0
	add %i0, 48, %i0
	ba .LBB46_8
	st %i0, [%fp+-8]
.LBB46_10:
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB46_12
	nop
	ba .LBB46_11
	nop
.LBB46_11:
	ld [%fp+-8], %i0
	ba .LBB46_13
	st %i0, [%fp+-20]
.LBB46_12:
	ld [%fp+-8], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB46_13
	st %i0, [%fp+-20]
.LBB46_13:
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end46:
	.size	atol, .Lfunc_end46-atol
                                        ! -- End function
	.globl	atoll                           ! -- Begin function atoll
	.p2align	2
	.type	atoll,@function
atoll:                                  ! @atoll
! %bb.0:
	save %sp, -128, %sp
	st %i0, [%fp+-4]
	mov	%g0, %i2
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%g0, %i2
	mov	%i2, %i1
	std %i0, [%fp+-16]
	ba .LBB47_1
	st %g0, [%fp+-20]
.LBB47_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	call isspace
	ldsb [%i0], %o0
	cmp	%o0, 0
	be	.LBB47_3
	nop
	ba .LBB47_2
	nop
.LBB47_2:                               !   in Loop: Header=BB47_1 Depth=1
	ld [%fp+-4], %i0
	add %i0, 1, %i0
	ba .LBB47_1
	st %i0, [%fp+-4]
.LBB47_3:
	ld [%fp+-4], %i0
	ldsb [%i0], %i0
	cmp	%i0, 43
	be	.LBB47_6
	st %i0, [%fp+-24]
	ba .LBB47_4
	nop
.LBB47_4:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	cmp	%i0, 45
	bne	.LBB47_7
	nop
	ba .LBB47_5
	nop
.LBB47_5:
	mov	1, %i0
	ba .LBB47_6
	st %i0, [%fp+-20]
.LBB47_6:
	ld [%fp+-4], %i0
	add %i0, 1, %i0
	ba .LBB47_7
	st %i0, [%fp+-4]
.LBB47_7:
	ba .LBB47_8
	nop
.LBB47_8:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	call isdigit
	ldsb [%i0], %o0
	cmp	%o0, 0
	be	.LBB47_10
	nop
	ba .LBB47_9
	nop
.LBB47_9:                               !   in Loop: Header=BB47_8 Depth=1
	ldd [%fp+-16], %i2
	mov	%i2, %i0
	mov	%i3, %i1
	smul %i1, 10, %i1
	umul %i0, 10, %i2
	rd %y, %i0
	add %i0, %i1, %i0
	ld [%fp+-4], %i1
	add %i1, 1, %i3
	st %i3, [%fp+-4]
	ldsb [%i1], %i1
	add %i1, -48, %i3
	sra %i3, 31, %i1
	subcc %i2, %i3, %i3
	subxcc %i0, %i1, %i2
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB47_8
	std %i0, [%fp+-16]
.LBB47_10:
	ld [%fp+-20], %i0
	cmp	%i0, 0
	be	.LBB47_12
	nop
	ba .LBB47_11
	nop
.LBB47_11:
	ldd [%fp+-16], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-32]                       ! 4-byte Folded Spill
	ba .LBB47_13
	st %i0, [%fp+-28]
.LBB47_12:
	ldd [%fp+-16], %i2
	mov	%i2, %i1
	mov	%i3, %i2
	mov	%g0, %i0
	subcc %i0, %i1, %i1
	subxcc %i0, %i2, %i0
	st %i1, [%fp+-32]                       ! 4-byte Folded Spill
	ba .LBB47_13
	st %i0, [%fp+-28]
.LBB47_13:
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	ld [%fp+-28], %i1                       ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end47:
	.size	atoll, .Lfunc_end47-atoll
                                        ! -- End function
	.globl	bsearch                         ! -- Begin function bsearch
	.p2align	2
	.type	bsearch,@function
bsearch:                                ! @bsearch
! %bb.0:
	save %sp, -128, %sp
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	st %i2, [%fp+-16]
	st %i3, [%fp+-20]
	ba .LBB48_1
	st %i4, [%fp+-24]
.LBB48_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-16], %i0
	cmp	%i0, 0
	be	.LBB48_9
	nop
	ba .LBB48_2
	nop
.LBB48_2:                               !   in Loop: Header=BB48_1 Depth=1
	ld [%fp+-12], %i0
	ld [%fp+-20], %i1
	ld [%fp+-16], %i2
	srl %i2, 1, %i2
	smul %i1, %i2, %i1
	add %i0, %i1, %i0
	st %i0, [%fp+-28]
	ld [%fp+-24], %i0
	ld [%fp+-8], %o0
	call %i0
	ld [%fp+-28], %o1
	st %o0, [%fp+-32]
	ld [%fp+-32], %i0
	cmp	%i0, -1
	bg	.LBB48_4
	nop
	ba .LBB48_3
	nop
.LBB48_3:                               !   in Loop: Header=BB48_1 Depth=1
	ld [%fp+-16], %i0
	srl %i0, 1, %i0
	ba .LBB48_8
	st %i0, [%fp+-16]
.LBB48_4:                               !   in Loop: Header=BB48_1 Depth=1
	ld [%fp+-32], %i0
	cmp	%i0, 1
	bl	.LBB48_6
	nop
	ba .LBB48_5
	nop
.LBB48_5:                               !   in Loop: Header=BB48_1 Depth=1
	ld [%fp+-28], %i0
	ld [%fp+-20], %i1
	add %i0, %i1, %i0
	st %i0, [%fp+-12]
	ld [%fp+-16], %i1
	srl %i1, 1, %i0
	xor %i0, -1, %i0
	add %i0, %i1, %i0
	ba .LBB48_7
	st %i0, [%fp+-16]
.LBB48_6:
	ld [%fp+-28], %i0
	ba .LBB48_10
	st %i0, [%fp+-4]
.LBB48_7:                               !   in Loop: Header=BB48_1 Depth=1
	ba .LBB48_8
	nop
.LBB48_8:                               !   in Loop: Header=BB48_1 Depth=1
	ba .LBB48_1
	nop
.LBB48_9:
	ba .LBB48_10
	st %g0, [%fp+-4]
.LBB48_10:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end48:
	.size	bsearch, .Lfunc_end48-bsearch
                                        ! -- End function
	.globl	bsearch_r                       ! -- Begin function bsearch_r
	.p2align	2
	.type	bsearch_r,@function
bsearch_r:                              ! @bsearch_r
! %bb.0:
	save %sp, -136, %sp
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	st %i2, [%fp+-16]
	st %i3, [%fp+-20]
	st %i4, [%fp+-24]
	st %i5, [%fp+-28]
	ld [%fp+-12], %i0
	st %i0, [%fp+-32]
	ld [%fp+-16], %i0
	ba .LBB49_1
	st %i0, [%fp+-36]
.LBB49_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-36], %i0
	cmp	%i0, 0
	be	.LBB49_8
	nop
	ba .LBB49_2
	nop
.LBB49_2:                               !   in Loop: Header=BB49_1 Depth=1
	ld [%fp+-32], %i0
	ld [%fp+-36], %i1
	sra %i1, 1, %i1
	ld [%fp+-20], %i2
	smul %i1, %i2, %i1
	add %i0, %i1, %i0
	st %i0, [%fp+-44]
	ld [%fp+-24], %i0
	ld [%fp+-8], %o0
	ld [%fp+-44], %o1
	call %i0
	ld [%fp+-28], %o2
	st %o0, [%fp+-40]
	ld [%fp+-40], %i0
	cmp	%i0, 0
	bne	.LBB49_4
	nop
	ba .LBB49_3
	nop
.LBB49_3:
	ld [%fp+-44], %i0
	ba .LBB49_9
	st %i0, [%fp+-4]
.LBB49_4:                               !   in Loop: Header=BB49_1 Depth=1
	ld [%fp+-40], %i0
	cmp	%i0, 1
	bl	.LBB49_6
	nop
	ba .LBB49_5
	nop
.LBB49_5:                               !   in Loop: Header=BB49_1 Depth=1
	ld [%fp+-44], %i0
	ld [%fp+-20], %i1
	add %i0, %i1, %i0
	st %i0, [%fp+-32]
	ld [%fp+-36], %i0
	add %i0, -1, %i0
	ba .LBB49_6
	st %i0, [%fp+-36]
.LBB49_6:                               !   in Loop: Header=BB49_1 Depth=1
	ba .LBB49_7
	nop
.LBB49_7:                               !   in Loop: Header=BB49_1 Depth=1
	ld [%fp+-36], %i0
	sra %i0, 1, %i0
	ba .LBB49_1
	st %i0, [%fp+-36]
.LBB49_8:
	ba .LBB49_9
	st %g0, [%fp+-4]
.LBB49_9:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end49:
	.size	bsearch_r, .Lfunc_end49-bsearch_r
                                        ! -- End function
	.globl	div                             ! -- Begin function div
	.p2align	2
	.type	div,@function
div:                                    ! @div
! %bb.0:
	save %sp, -104, %sp
	mov	%i1, %i2
	mov	%i0, %i3
	ld [%fp+64], %i1
	mov	%i1, %i0
	st %i3, [%fp+-4]
	st %i2, [%fp+-8]
	ld [%fp+-4], %i2
	ld [%fp+-8], %i3
	sra %i2, 31, %i4
	wr %g0, %i4, %y
	sdiv %i2, %i3, %i2
	st %i2, [%i1]
	ld [%fp+-4], %i2
	ld [%fp+-8], %i4
	sra %i2, 31, %i3
	wr %g0, %i3, %y
	sdiv %i2, %i4, %i3
	smul %i3, %i4, %i3
	sub %i2, %i3, %i2
	st %i2, [%i1+4]
	jmp %i7+12
	restore
.Lfunc_end50:
	.size	div, .Lfunc_end50-div
                                        ! -- End function
	.globl	imaxabs                         ! -- Begin function imaxabs
	.p2align	2
	.type	imaxabs,@function
imaxabs:                                ! @imaxabs
! %bb.0:
	save %sp, -144, %sp
	mov	%i1, %i2
	mov	%i0, %i3
                                        ! kill: def $i1 killed $i2
                                        ! kill: def $i0 killed $i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	ldd [%fp+-8], %i0
	mov	%i0, %i2
	st %i2, [%fp+-28]                       ! 4-byte Folded Spill
                                        ! kill: def $i1 killed $i1 killed $i0_i1
	st %i1, [%fp+-24]                       ! 4-byte Folded Spill
	mov	%g0, %i0
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
	mov	1, %i0
	st %i0, [%fp+-16]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	bl	.LBB51_2
	st %i0, [%fp+-12]
! %bb.1:
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-12]                       ! 4-byte Folded Spill
.LBB51_2:
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	ld [%fp+-28], %i1                       ! 4-byte Folded Reload
	ld [%fp+-12], %i2                       ! 4-byte Folded Reload
	st %i2, [%fp+-36]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	be	.LBB51_4
	st %i0, [%fp+-32]
! %bb.3:
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
.LBB51_4:
	ld [%fp+-24], %i1                       ! 4-byte Folded Reload
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	cmp	%i1, 0
	be	.LBB51_6
	st %i0, [%fp+-40]
! %bb.5:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-40]                       ! 4-byte Folded Spill
.LBB51_6:
	ld [%fp+-40], %i0                       ! 4-byte Folded Reload
	cmp	%i0, 0
	bne	.LBB51_8
	nop
	ba .LBB51_7
	nop
.LBB51_7:
	ldd [%fp+-8], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-48]                       ! 4-byte Folded Spill
	ba .LBB51_9
	st %i0, [%fp+-44]
.LBB51_8:
	ldd [%fp+-8], %i2
	mov	%i2, %i1
	mov	%i3, %i2
	mov	%g0, %i0
	subcc %i0, %i1, %i1
	subxcc %i0, %i2, %i0
	st %i1, [%fp+-48]                       ! 4-byte Folded Spill
	ba .LBB51_9
	st %i0, [%fp+-44]
.LBB51_9:
	ld [%fp+-48], %i0                       ! 4-byte Folded Reload
	ld [%fp+-44], %i1                       ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end51:
	.size	imaxabs, .Lfunc_end51-imaxabs
                                        ! -- End function
	.globl	imaxdiv                         ! -- Begin function imaxdiv
	.p2align	2
	.type	imaxdiv,@function
imaxdiv:                                ! @imaxdiv
! %bb.0:
	save %sp, -112, %sp
	mov	%i3, %i4
	mov	%i2, %i5
	mov	%i1, %g2
	mov	%i0, %g3
	ld [%fp+64], %i1
	mov	%i1, %i0
                                        ! kill: def $i3 killed $i4
                                        ! kill: def $i2 killed $i5
                                        ! kill: def $i2 killed $g2
                                        ! kill: def $i2 killed $g3
                                        ! implicit-def: $i2_i3
	mov	%g3, %i2
	mov	%g2, %i3
	std %i2, [%fp+-8]
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%fp+-16]
	ldd [%fp+-8], %i2
	mov	%i2, %o0
	mov	%i3, %o1
	ldd [%fp+-16], %i2
	mov	%i2, %o2
	call __divdi3
	mov	%i3, %o3
                                        ! implicit-def: $i2_i3
	mov	%o0, %i2
	mov	%o1, %i3
	std %i2, [%i1]
	ldd [%fp+-8], %i2
	mov	%i2, %o0
	mov	%i3, %o1
	ldd [%fp+-16], %i2
	mov	%i2, %o2
	call __moddi3
	mov	%i3, %o3
                                        ! implicit-def: $i2_i3
	mov	%o0, %i2
	mov	%o1, %i3
	std %i2, [%i1+8]
	jmp %i7+12
	restore
.Lfunc_end52:
	.size	imaxdiv, .Lfunc_end52-imaxdiv
                                        ! -- End function
	.globl	labs                            ! -- Begin function labs
	.p2align	2
	.type	labs,@function
labs:                                   ! @labs
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	cmp	%i0, 1
	bl	.LBB53_2
	nop
	ba .LBB53_1
	nop
.LBB53_1:
	ld [%fp+-4], %i0
	ba .LBB53_3
	st %i0, [%fp+-8]
.LBB53_2:
	ld [%fp+-4], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB53_3
	st %i0, [%fp+-8]
.LBB53_3:
	ld [%fp+-8], %i0                        ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end53:
	.size	labs, .Lfunc_end53-labs
                                        ! -- End function
	.globl	ldiv                            ! -- Begin function ldiv
	.p2align	2
	.type	ldiv,@function
ldiv:                                   ! @ldiv
! %bb.0:
	save %sp, -104, %sp
	mov	%i1, %i2
	mov	%i0, %i3
	ld [%fp+64], %i1
	mov	%i1, %i0
	st %i3, [%fp+-4]
	st %i2, [%fp+-8]
	ld [%fp+-4], %i2
	ld [%fp+-8], %i3
	sra %i2, 31, %i4
	wr %g0, %i4, %y
	sdiv %i2, %i3, %i2
	st %i2, [%i1]
	ld [%fp+-4], %i2
	ld [%fp+-8], %i4
	sra %i2, 31, %i3
	wr %g0, %i3, %y
	sdiv %i2, %i4, %i3
	smul %i3, %i4, %i3
	sub %i2, %i3, %i2
	st %i2, [%i1+4]
	jmp %i7+12
	restore
.Lfunc_end54:
	.size	ldiv, .Lfunc_end54-ldiv
                                        ! -- End function
	.globl	llabs                           ! -- Begin function llabs
	.p2align	2
	.type	llabs,@function
llabs:                                  ! @llabs
! %bb.0:
	save %sp, -144, %sp
	mov	%i1, %i2
	mov	%i0, %i3
                                        ! kill: def $i1 killed $i2
                                        ! kill: def $i0 killed $i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	ldd [%fp+-8], %i0
	mov	%i0, %i2
	st %i2, [%fp+-28]                       ! 4-byte Folded Spill
                                        ! kill: def $i1 killed $i1 killed $i0_i1
	st %i1, [%fp+-24]                       ! 4-byte Folded Spill
	mov	%g0, %i0
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
	mov	1, %i0
	st %i0, [%fp+-16]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	bl	.LBB55_2
	st %i0, [%fp+-12]
! %bb.1:
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-12]                       ! 4-byte Folded Spill
.LBB55_2:
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	ld [%fp+-28], %i1                       ! 4-byte Folded Reload
	ld [%fp+-12], %i2                       ! 4-byte Folded Reload
	st %i2, [%fp+-36]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	be	.LBB55_4
	st %i0, [%fp+-32]
! %bb.3:
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
.LBB55_4:
	ld [%fp+-24], %i1                       ! 4-byte Folded Reload
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	cmp	%i1, 0
	be	.LBB55_6
	st %i0, [%fp+-40]
! %bb.5:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-40]                       ! 4-byte Folded Spill
.LBB55_6:
	ld [%fp+-40], %i0                       ! 4-byte Folded Reload
	cmp	%i0, 0
	bne	.LBB55_8
	nop
	ba .LBB55_7
	nop
.LBB55_7:
	ldd [%fp+-8], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-48]                       ! 4-byte Folded Spill
	ba .LBB55_9
	st %i0, [%fp+-44]
.LBB55_8:
	ldd [%fp+-8], %i2
	mov	%i2, %i1
	mov	%i3, %i2
	mov	%g0, %i0
	subcc %i0, %i1, %i1
	subxcc %i0, %i2, %i0
	st %i1, [%fp+-48]                       ! 4-byte Folded Spill
	ba .LBB55_9
	st %i0, [%fp+-44]
.LBB55_9:
	ld [%fp+-48], %i0                       ! 4-byte Folded Reload
	ld [%fp+-44], %i1                       ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end55:
	.size	llabs, .Lfunc_end55-llabs
                                        ! -- End function
	.globl	lldiv                           ! -- Begin function lldiv
	.p2align	2
	.type	lldiv,@function
lldiv:                                  ! @lldiv
! %bb.0:
	save %sp, -112, %sp
	mov	%i3, %i4
	mov	%i2, %i5
	mov	%i1, %g2
	mov	%i0, %g3
	ld [%fp+64], %i1
	mov	%i1, %i0
                                        ! kill: def $i3 killed $i4
                                        ! kill: def $i2 killed $i5
                                        ! kill: def $i2 killed $g2
                                        ! kill: def $i2 killed $g3
                                        ! implicit-def: $i2_i3
	mov	%g3, %i2
	mov	%g2, %i3
	std %i2, [%fp+-8]
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%fp+-16]
	ldd [%fp+-8], %i2
	mov	%i2, %o0
	mov	%i3, %o1
	ldd [%fp+-16], %i2
	mov	%i2, %o2
	call __divdi3
	mov	%i3, %o3
                                        ! implicit-def: $i2_i3
	mov	%o0, %i2
	mov	%o1, %i3
	std %i2, [%i1]
	ldd [%fp+-8], %i2
	mov	%i2, %o0
	mov	%i3, %o1
	ldd [%fp+-16], %i2
	mov	%i2, %o2
	call __moddi3
	mov	%i3, %o3
                                        ! implicit-def: $i2_i3
	mov	%o0, %i2
	mov	%o1, %i3
	std %i2, [%i1+8]
	jmp %i7+12
	restore
.Lfunc_end56:
	.size	lldiv, .Lfunc_end56-lldiv
                                        ! -- End function
	.globl	wcschr                          ! -- Begin function wcschr
	.p2align	2
	.type	wcschr,@function
wcschr:                                 ! @wcschr
! %bb.0:
	save %sp, -120, %sp
	st %i0, [%fp+-4]
	ba .LBB57_1
	st %i1, [%fp+-8]
.LBB57_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	ld [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB57_5
	st %i0, [%fp+-12]
	ba .LBB57_2
	nop
.LBB57_2:                               !   in Loop: Header=BB57_1 Depth=1
	ld [%fp+-4], %i0
	ld [%i0], %i1
	ld [%fp+-8], %i2
	mov	%g0, %i0
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, %i2
	bne	.LBB57_4
	st %i0, [%fp+-16]
! %bb.3:                                !   in Loop: Header=BB57_1 Depth=1
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-16]                       ! 4-byte Folded Spill
.LBB57_4:                               !   in Loop: Header=BB57_1 Depth=1
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	ba .LBB57_5
	st %i0, [%fp+-12]
.LBB57_5:                               !   in Loop: Header=BB57_1 Depth=1
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB57_8
	nop
	ba .LBB57_6
	nop
.LBB57_6:                               !   in Loop: Header=BB57_1 Depth=1
	ba .LBB57_7
	nop
.LBB57_7:                               !   in Loop: Header=BB57_1 Depth=1
	ld [%fp+-4], %i0
	add %i0, 4, %i0
	ba .LBB57_1
	st %i0, [%fp+-4]
.LBB57_8:
	ld [%fp+-4], %i0
	ld [%i0], %i0
	cmp	%i0, 0
	be	.LBB57_10
	nop
	ba .LBB57_9
	nop
.LBB57_9:
	ld [%fp+-4], %i0
	ba .LBB57_11
	st %i0, [%fp+-24]
.LBB57_10:
	mov	%g0, %i0
	ba .LBB57_11
	st %i0, [%fp+-24]
.LBB57_11:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end57:
	.size	wcschr, .Lfunc_end57-wcschr
                                        ! -- End function
	.globl	wcscmp                          ! -- Begin function wcscmp
	.p2align	2
	.type	wcscmp,@function
wcscmp:                                 ! @wcscmp
! %bb.0:
	save %sp, -128, %sp
	st %i0, [%fp+-4]
	ba .LBB58_1
	st %i1, [%fp+-8]
.LBB58_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	ld [%i0], %i1
	ld [%fp+-8], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bne	.LBB58_6
	st %i0, [%fp+-12]
	ba .LBB58_2
	nop
.LBB58_2:                               !   in Loop: Header=BB58_1 Depth=1
	ld [%fp+-4], %i0
	ld [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB58_6
	st %i0, [%fp+-12]
	ba .LBB58_3
	nop
.LBB58_3:                               !   in Loop: Header=BB58_1 Depth=1
	ld [%fp+-8], %i0
	ld [%i0], %i1
	mov	%g0, %i0
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 0
	bne	.LBB58_5
	st %i0, [%fp+-16]
! %bb.4:                                !   in Loop: Header=BB58_1 Depth=1
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-16]                       ! 4-byte Folded Spill
.LBB58_5:                               !   in Loop: Header=BB58_1 Depth=1
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	ba .LBB58_6
	st %i0, [%fp+-12]
.LBB58_6:                               !   in Loop: Header=BB58_1 Depth=1
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB58_9
	nop
	ba .LBB58_7
	nop
.LBB58_7:                               !   in Loop: Header=BB58_1 Depth=1
	ba .LBB58_8
	nop
.LBB58_8:                               !   in Loop: Header=BB58_1 Depth=1
	ld [%fp+-4], %i0
	add %i0, 4, %i0
	st %i0, [%fp+-4]
	ld [%fp+-8], %i0
	add %i0, 4, %i0
	ba .LBB58_1
	st %i0, [%fp+-8]
.LBB58_9:
	ld [%fp+-4], %i0
	ld [%i0], %i0
	ld [%fp+-8], %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	bge	.LBB58_11
	nop
	ba .LBB58_10
	nop
.LBB58_10:
	mov	-1, %i0
	ba .LBB58_14
	st %i0, [%fp+-24]
.LBB58_11:
	ld [%fp+-4], %i0
	ld [%i0], %i1
	ld [%fp+-8], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, %i2
	bg	.LBB58_13
	st %i0, [%fp+-28]
! %bb.12:
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
.LBB58_13:
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	ba .LBB58_14
	st %i0, [%fp+-24]
.LBB58_14:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end58:
	.size	wcscmp, .Lfunc_end58-wcscmp
                                        ! -- End function
	.globl	wcscpy                          ! -- Begin function wcscpy
	.p2align	2
	.type	wcscpy,@function
wcscpy:                                 ! @wcscpy
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ld [%fp+-4], %i0
	ba .LBB59_1
	st %i0, [%fp+-12]
.LBB59_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-8], %i0
	add %i0, 4, %i1
	st %i1, [%fp+-8]
	ld [%i0], %i0
	ld [%fp+-4], %i1
	add %i1, 4, %i2
	st %i2, [%fp+-4]
	st %i0, [%i1]
	cmp	%i0, 0
	be	.LBB59_3
	nop
	ba .LBB59_2
	nop
.LBB59_2:                               !   in Loop: Header=BB59_1 Depth=1
	ba .LBB59_1
	nop
.LBB59_3:
	ld [%fp+-12], %i0
	ret
	restore
.Lfunc_end59:
	.size	wcscpy, .Lfunc_end59-wcscpy
                                        ! -- End function
	.globl	wcslen                          ! -- Begin function wcslen
	.p2align	2
	.type	wcslen,@function
wcslen:                                 ! @wcslen
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	ba .LBB60_1
	st %i0, [%fp+-8]
.LBB60_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	ld [%i0], %i0
	cmp	%i0, 0
	be	.LBB60_4
	nop
	ba .LBB60_2
	nop
.LBB60_2:                               !   in Loop: Header=BB60_1 Depth=1
	ba .LBB60_3
	nop
.LBB60_3:                               !   in Loop: Header=BB60_1 Depth=1
	ld [%fp+-4], %i0
	add %i0, 4, %i0
	ba .LBB60_1
	st %i0, [%fp+-4]
.LBB60_4:
	ld [%fp+-4], %i0
	ld [%fp+-8], %i1
	sub %i0, %i1, %i0
	sra %i0, 2, %i0
	ret
	restore
.Lfunc_end60:
	.size	wcslen, .Lfunc_end60-wcslen
                                        ! -- End function
	.globl	wcsncmp                         ! -- Begin function wcsncmp
	.p2align	2
	.type	wcsncmp,@function
wcsncmp:                                ! @wcsncmp
! %bb.0:
	save %sp, -136, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ba .LBB61_1
	st %i2, [%fp+-12]
.LBB61_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB61_7
	st %i0, [%fp+-16]
	ba .LBB61_2
	nop
.LBB61_2:                               !   in Loop: Header=BB61_1 Depth=1
	ld [%fp+-4], %i0
	ld [%i0], %i1
	ld [%fp+-8], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bne	.LBB61_7
	st %i0, [%fp+-16]
	ba .LBB61_3
	nop
.LBB61_3:                               !   in Loop: Header=BB61_1 Depth=1
	ld [%fp+-4], %i0
	ld [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB61_7
	st %i0, [%fp+-16]
	ba .LBB61_4
	nop
.LBB61_4:                               !   in Loop: Header=BB61_1 Depth=1
	ld [%fp+-8], %i0
	ld [%i0], %i1
	mov	%g0, %i0
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 0
	bne	.LBB61_6
	st %i0, [%fp+-20]
! %bb.5:                                !   in Loop: Header=BB61_1 Depth=1
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
.LBB61_6:                               !   in Loop: Header=BB61_1 Depth=1
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	ba .LBB61_7
	st %i0, [%fp+-16]
.LBB61_7:                               !   in Loop: Header=BB61_1 Depth=1
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB61_10
	nop
	ba .LBB61_8
	nop
.LBB61_8:                               !   in Loop: Header=BB61_1 Depth=1
	ba .LBB61_9
	nop
.LBB61_9:                               !   in Loop: Header=BB61_1 Depth=1
	ld [%fp+-12], %i0
	add %i0, -1, %i0
	st %i0, [%fp+-12]
	ld [%fp+-4], %i0
	add %i0, 4, %i0
	st %i0, [%fp+-4]
	ld [%fp+-8], %i0
	add %i0, 4, %i0
	ba .LBB61_1
	st %i0, [%fp+-8]
.LBB61_10:
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB61_17
	nop
	ba .LBB61_11
	nop
.LBB61_11:
	ld [%fp+-4], %i0
	ld [%i0], %i0
	ld [%fp+-8], %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	bge	.LBB61_13
	nop
	ba .LBB61_12
	nop
.LBB61_12:
	mov	-1, %i0
	ba .LBB61_16
	st %i0, [%fp+-28]
.LBB61_13:
	ld [%fp+-4], %i0
	ld [%i0], %i1
	ld [%fp+-8], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, %i2
	bg	.LBB61_15
	st %i0, [%fp+-32]
! %bb.14:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
.LBB61_15:
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	ba .LBB61_16
	st %i0, [%fp+-28]
.LBB61_16:
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	ba .LBB61_18
	st %i0, [%fp+-40]
.LBB61_17:
	mov	%g0, %i0
	ba .LBB61_18
	st %i0, [%fp+-40]
.LBB61_18:
	ld [%fp+-40], %i0                       ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end61:
	.size	wcsncmp, .Lfunc_end61-wcsncmp
                                        ! -- End function
	.globl	wmemchr                         ! -- Begin function wmemchr
	.p2align	2
	.type	wmemchr,@function
wmemchr:                                ! @wmemchr
! %bb.0:
	save %sp, -120, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ba .LBB62_1
	st %i2, [%fp+-12]
.LBB62_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB62_5
	st %i0, [%fp+-16]
	ba .LBB62_2
	nop
.LBB62_2:                               !   in Loop: Header=BB62_1 Depth=1
	ld [%fp+-4], %i0
	ld [%i0], %i1
	ld [%fp+-8], %i2
	mov	%g0, %i0
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, %i2
	bne	.LBB62_4
	st %i0, [%fp+-20]
! %bb.3:                                !   in Loop: Header=BB62_1 Depth=1
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
.LBB62_4:                               !   in Loop: Header=BB62_1 Depth=1
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	ba .LBB62_5
	st %i0, [%fp+-16]
.LBB62_5:                               !   in Loop: Header=BB62_1 Depth=1
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB62_8
	nop
	ba .LBB62_6
	nop
.LBB62_6:                               !   in Loop: Header=BB62_1 Depth=1
	ba .LBB62_7
	nop
.LBB62_7:                               !   in Loop: Header=BB62_1 Depth=1
	ld [%fp+-12], %i0
	add %i0, -1, %i0
	st %i0, [%fp+-12]
	ld [%fp+-4], %i0
	add %i0, 4, %i0
	ba .LBB62_1
	st %i0, [%fp+-4]
.LBB62_8:
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB62_10
	nop
	ba .LBB62_9
	nop
.LBB62_9:
	ld [%fp+-4], %i0
	ba .LBB62_11
	st %i0, [%fp+-28]
.LBB62_10:
	mov	%g0, %i0
	ba .LBB62_11
	st %i0, [%fp+-28]
.LBB62_11:
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end62:
	.size	wmemchr, .Lfunc_end62-wmemchr
                                        ! -- End function
	.globl	wmemcmp                         ! -- Begin function wmemcmp
	.p2align	2
	.type	wmemcmp,@function
wmemcmp:                                ! @wmemcmp
! %bb.0:
	save %sp, -136, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ba .LBB63_1
	st %i2, [%fp+-12]
.LBB63_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB63_5
	st %i0, [%fp+-16]
	ba .LBB63_2
	nop
.LBB63_2:                               !   in Loop: Header=BB63_1 Depth=1
	ld [%fp+-4], %i0
	ld [%i0], %i1
	ld [%fp+-8], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, %i2
	be	.LBB63_4
	st %i0, [%fp+-20]
! %bb.3:                                !   in Loop: Header=BB63_1 Depth=1
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
.LBB63_4:                               !   in Loop: Header=BB63_1 Depth=1
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	ba .LBB63_5
	st %i0, [%fp+-16]
.LBB63_5:                               !   in Loop: Header=BB63_1 Depth=1
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB63_8
	nop
	ba .LBB63_6
	nop
.LBB63_6:                               !   in Loop: Header=BB63_1 Depth=1
	ba .LBB63_7
	nop
.LBB63_7:                               !   in Loop: Header=BB63_1 Depth=1
	ld [%fp+-12], %i0
	add %i0, -1, %i0
	st %i0, [%fp+-12]
	ld [%fp+-4], %i0
	add %i0, 4, %i0
	st %i0, [%fp+-4]
	ld [%fp+-8], %i0
	add %i0, 4, %i0
	ba .LBB63_1
	st %i0, [%fp+-8]
.LBB63_8:
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB63_15
	nop
	ba .LBB63_9
	nop
.LBB63_9:
	ld [%fp+-4], %i0
	ld [%i0], %i0
	ld [%fp+-8], %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	bge	.LBB63_11
	nop
	ba .LBB63_10
	nop
.LBB63_10:
	mov	-1, %i0
	ba .LBB63_14
	st %i0, [%fp+-28]
.LBB63_11:
	ld [%fp+-4], %i0
	ld [%i0], %i1
	ld [%fp+-8], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, %i2
	bg	.LBB63_13
	st %i0, [%fp+-32]
! %bb.12:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
.LBB63_13:
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	ba .LBB63_14
	st %i0, [%fp+-28]
.LBB63_14:
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	ba .LBB63_16
	st %i0, [%fp+-40]
.LBB63_15:
	mov	%g0, %i0
	ba .LBB63_16
	st %i0, [%fp+-40]
.LBB63_16:
	ld [%fp+-40], %i0                       ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end63:
	.size	wmemcmp, .Lfunc_end63-wmemcmp
                                        ! -- End function
	.globl	wmemcpy                         ! -- Begin function wmemcpy
	.p2align	2
	.type	wmemcpy,@function
wmemcpy:                                ! @wmemcpy
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	ld [%fp+-4], %i0
	ba .LBB64_1
	st %i0, [%fp+-16]
.LBB64_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	add %i0, -1, %i1
	cmp	%i0, 0
	be	.LBB64_3
	st %i1, [%fp+-12]
	ba .LBB64_2
	nop
.LBB64_2:                               !   in Loop: Header=BB64_1 Depth=1
	ld [%fp+-8], %i0
	add %i0, 4, %i1
	st %i1, [%fp+-8]
	ld [%i0], %i1
	ld [%fp+-4], %i0
	add %i0, 4, %i2
	st %i2, [%fp+-4]
	ba .LBB64_1
	st %i1, [%i0]
.LBB64_3:
	ld [%fp+-16], %i0
	ret
	restore
.Lfunc_end64:
	.size	wmemcpy, .Lfunc_end64-wmemcpy
                                        ! -- End function
	.globl	wmemmove                        ! -- Begin function wmemmove
	.p2align	2
	.type	wmemmove,@function
wmemmove:                               ! @wmemmove
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	st %i2, [%fp+-16]
	ld [%fp+-8], %i0
	st %i0, [%fp+-20]
	ld [%fp+-8], %i0
	ld [%fp+-12], %i1
	cmp	%i0, %i1
	bne	.LBB65_2
	nop
	ba .LBB65_1
	nop
.LBB65_1:
	ld [%fp+-8], %i0
	ba .LBB65_12
	st %i0, [%fp+-4]
.LBB65_2:
	ld [%fp+-8], %i0
	ld [%fp+-12], %i1
	sub %i0, %i1, %i0
	ld [%fp+-16], %i1
	sll %i1, 2, %i1
	cmp	%i0, %i1
	bcc	.LBB65_7
	nop
	ba .LBB65_3
	nop
.LBB65_3:
	ba .LBB65_4
	nop
.LBB65_4:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-16], %i0
	add %i0, -1, %i1
	cmp	%i0, 0
	be	.LBB65_6
	st %i1, [%fp+-16]
	ba .LBB65_5
	nop
.LBB65_5:                               !   in Loop: Header=BB65_4 Depth=1
	ld [%fp+-12], %i0
	ld [%fp+-16], %i1
	sll %i1, 2, %i1
	ld [%i0+%i1], %i2
	ld [%fp+-8], %i0
	ba .LBB65_4
	st %i2, [%i0+%i1]
.LBB65_6:
	ba .LBB65_11
	nop
.LBB65_7:
	ba .LBB65_8
	nop
.LBB65_8:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-16], %i0
	add %i0, -1, %i1
	cmp	%i0, 0
	be	.LBB65_10
	st %i1, [%fp+-16]
	ba .LBB65_9
	nop
.LBB65_9:                               !   in Loop: Header=BB65_8 Depth=1
	ld [%fp+-12], %i0
	add %i0, 4, %i1
	st %i1, [%fp+-12]
	ld [%i0], %i1
	ld [%fp+-8], %i0
	add %i0, 4, %i2
	st %i2, [%fp+-8]
	ba .LBB65_8
	st %i1, [%i0]
.LBB65_10:
	ba .LBB65_11
	nop
.LBB65_11:
	ld [%fp+-20], %i0
	ba .LBB65_12
	st %i0, [%fp+-4]
.LBB65_12:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end65:
	.size	wmemmove, .Lfunc_end65-wmemmove
                                        ! -- End function
	.globl	wmemset                         ! -- Begin function wmemset
	.p2align	2
	.type	wmemset,@function
wmemset:                                ! @wmemset
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	ld [%fp+-4], %i0
	ba .LBB66_1
	st %i0, [%fp+-16]
.LBB66_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	add %i0, -1, %i1
	cmp	%i0, 0
	be	.LBB66_3
	st %i1, [%fp+-12]
	ba .LBB66_2
	nop
.LBB66_2:                               !   in Loop: Header=BB66_1 Depth=1
	ld [%fp+-8], %i1
	ld [%fp+-4], %i0
	add %i0, 4, %i2
	st %i2, [%fp+-4]
	ba .LBB66_1
	st %i1, [%i0]
.LBB66_3:
	ld [%fp+-16], %i0
	ret
	restore
.Lfunc_end66:
	.size	wmemset, .Lfunc_end66-wmemset
                                        ! -- End function
	.globl	bcopy                           ! -- Begin function bcopy
	.p2align	2
	.type	bcopy,@function
bcopy:                                  ! @bcopy
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	ld [%fp+-4], %i0
	st %i0, [%fp+-16]
	ld [%fp+-8], %i0
	st %i0, [%fp+-20]
	ld [%fp+-16], %i0
	ld [%fp+-20], %i1
	cmp	%i0, %i1
	bcc	.LBB67_6
	nop
	ba .LBB67_1
	nop
.LBB67_1:
	ld [%fp+-12], %i1
	ld [%fp+-16], %i0
	add %i0, %i1, %i0
	st %i0, [%fp+-16]
	ld [%fp+-12], %i1
	ld [%fp+-20], %i0
	add %i0, %i1, %i0
	ba .LBB67_2
	st %i0, [%fp+-20]
.LBB67_2:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB67_5
	nop
	ba .LBB67_3
	nop
.LBB67_3:                               !   in Loop: Header=BB67_2 Depth=1
	ld [%fp+-16], %i0
	add %i0, -1, %i1
	st %i1, [%fp+-16]
	ldub [%i0+-1], %i1
	ld [%fp+-20], %i0
	add %i0, -1, %i2
	st %i2, [%fp+-20]
	ba .LBB67_4
	stb %i1, [%i0+-1]
.LBB67_4:                               !   in Loop: Header=BB67_2 Depth=1
	ld [%fp+-12], %i0
	add %i0, -1, %i0
	ba .LBB67_2
	st %i0, [%fp+-12]
.LBB67_5:
	ba .LBB67_13
	nop
.LBB67_6:
	ld [%fp+-16], %i0
	ld [%fp+-20], %i1
	cmp	%i0, %i1
	be	.LBB67_12
	nop
	ba .LBB67_7
	nop
.LBB67_7:
	ba .LBB67_8
	nop
.LBB67_8:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB67_11
	nop
	ba .LBB67_9
	nop
.LBB67_9:                               !   in Loop: Header=BB67_8 Depth=1
	ld [%fp+-16], %i0
	add %i0, 1, %i1
	st %i1, [%fp+-16]
	ldub [%i0], %i1
	ld [%fp+-20], %i0
	add %i0, 1, %i2
	st %i2, [%fp+-20]
	ba .LBB67_10
	stb %i1, [%i0]
.LBB67_10:                              !   in Loop: Header=BB67_8 Depth=1
	ld [%fp+-12], %i0
	add %i0, -1, %i0
	ba .LBB67_8
	st %i0, [%fp+-12]
.LBB67_11:
	ba .LBB67_12
	nop
.LBB67_12:
	ba .LBB67_13
	nop
.LBB67_13:
	ret
	restore
.Lfunc_end67:
	.size	bcopy, .Lfunc_end67-bcopy
                                        ! -- End function
	.globl	rotl64                          ! -- Begin function rotl64
	.p2align	2
	.type	rotl64,@function
rotl64:                                 ! @rotl64
! %bb.0:
	save %sp, -120, %sp
	mov	%i1, %i3
	mov	%i0, %i4
                                        ! kill: def $i1 killed $i3
                                        ! kill: def $i0 killed $i4
                                        ! implicit-def: $i0_i1
	mov	%i4, %i0
	mov	%i3, %i1
	std %i0, [%fp+-8]
	st %i2, [%fp+-12]
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	st %o0, [%fp+-28]                       ! 4-byte Folded Spill
	mov	%i1, %o1
	st %o1, [%fp+-24]                       ! 4-byte Folded Spill
	ld [%fp+-12], %i1
	call __ashldi3
	mov	%i1, %o2
	mov	%o0, %i0
	ld [%fp+-28], %o0                       ! 4-byte Folded Reload
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
	mov	%o1, %i0
	ld [%fp+-24], %o1                       ! 4-byte Folded Reload
	st %i0, [%fp+-16]                       ! 4-byte Folded Spill
	mov	64, %i0
	call __lshrdi3
	sub %i0, %i1, %o2
	mov	%o0, %i0
	ld [%fp+-20], %o0                       ! 4-byte Folded Reload
	mov	%o1, %i1
	ld [%fp+-16], %o1                       ! 4-byte Folded Reload
	or %o0, %i0, %i0
	or %o1, %i1, %i1
	ret
	restore
.Lfunc_end68:
	.size	rotl64, .Lfunc_end68-rotl64
                                        ! -- End function
	.globl	rotr64                          ! -- Begin function rotr64
	.p2align	2
	.type	rotr64,@function
rotr64:                                 ! @rotr64
! %bb.0:
	save %sp, -120, %sp
	mov	%i1, %i3
	mov	%i0, %i4
                                        ! kill: def $i1 killed $i3
                                        ! kill: def $i0 killed $i4
                                        ! implicit-def: $i0_i1
	mov	%i4, %i0
	mov	%i3, %i1
	std %i0, [%fp+-8]
	st %i2, [%fp+-12]
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	st %o0, [%fp+-28]                       ! 4-byte Folded Spill
	mov	%i1, %o1
	st %o1, [%fp+-24]                       ! 4-byte Folded Spill
	ld [%fp+-12], %i1
	call __lshrdi3
	mov	%i1, %o2
	mov	%o0, %i0
	ld [%fp+-28], %o0                       ! 4-byte Folded Reload
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
	mov	%o1, %i0
	ld [%fp+-24], %o1                       ! 4-byte Folded Reload
	st %i0, [%fp+-16]                       ! 4-byte Folded Spill
	mov	64, %i0
	call __ashldi3
	sub %i0, %i1, %o2
	mov	%o0, %i0
	ld [%fp+-20], %o0                       ! 4-byte Folded Reload
	mov	%o1, %i1
	ld [%fp+-16], %o1                       ! 4-byte Folded Reload
	or %o0, %i0, %i0
	or %o1, %i1, %i1
	ret
	restore
.Lfunc_end69:
	.size	rotr64, .Lfunc_end69-rotr64
                                        ! -- End function
	.globl	rotl32                          ! -- Begin function rotl32
	.p2align	2
	.type	rotl32,@function
rotl32:                                 ! @rotl32
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ld [%fp+-4], %i1
	ld [%fp+-8], %i3
	sll %i1, %i3, %i0
	mov	32, %i2
	sub %i2, %i3, %i2
	srl %i1, %i2, %i1
	or %i0, %i1, %i0
	ret
	restore
.Lfunc_end70:
	.size	rotl32, .Lfunc_end70-rotl32
                                        ! -- End function
	.globl	rotr32                          ! -- Begin function rotr32
	.p2align	2
	.type	rotr32,@function
rotr32:                                 ! @rotr32
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ld [%fp+-4], %i1
	ld [%fp+-8], %i3
	srl %i1, %i3, %i0
	mov	32, %i2
	sub %i2, %i3, %i2
	sll %i1, %i2, %i1
	or %i0, %i1, %i0
	ret
	restore
.Lfunc_end71:
	.size	rotr32, .Lfunc_end71-rotr32
                                        ! -- End function
	.globl	rotl_sz                         ! -- Begin function rotl_sz
	.p2align	2
	.type	rotl_sz,@function
rotl_sz:                                ! @rotl_sz
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ld [%fp+-4], %i1
	ld [%fp+-8], %i3
	sll %i1, %i3, %i0
	mov	32, %i2
	sub %i2, %i3, %i2
	srl %i1, %i2, %i1
	or %i0, %i1, %i0
	ret
	restore
.Lfunc_end72:
	.size	rotl_sz, .Lfunc_end72-rotl_sz
                                        ! -- End function
	.globl	rotr_sz                         ! -- Begin function rotr_sz
	.p2align	2
	.type	rotr_sz,@function
rotr_sz:                                ! @rotr_sz
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ld [%fp+-4], %i1
	ld [%fp+-8], %i3
	srl %i1, %i3, %i0
	mov	32, %i2
	sub %i2, %i3, %i2
	sll %i1, %i2, %i1
	or %i0, %i1, %i0
	ret
	restore
.Lfunc_end73:
	.size	rotr_sz, .Lfunc_end73-rotr_sz
                                        ! -- End function
	.globl	rotl16                          ! -- Begin function rotl16
	.p2align	2
	.type	rotl16,@function
rotl16:                                 ! @rotl16
! %bb.0:
	save %sp, -104, %sp
                                        ! kill: def $i2 killed $i0
	sth %i0, [%fp+-2]
	st %i1, [%fp+-8]
	lduh [%fp+-2], %i1
	ld [%fp+-8], %i3
	sll %i1, %i3, %i0
	mov	16, %i2
	sub %i2, %i3, %i2
	srl %i1, %i2, %i1
	or %i0, %i1, %i0
	sethi 4194240, %i1
	andn %i0, %i1, %i0
	ret
	restore
.Lfunc_end74:
	.size	rotl16, .Lfunc_end74-rotl16
                                        ! -- End function
	.globl	rotr16                          ! -- Begin function rotr16
	.p2align	2
	.type	rotr16,@function
rotr16:                                 ! @rotr16
! %bb.0:
	save %sp, -104, %sp
                                        ! kill: def $i2 killed $i0
	sth %i0, [%fp+-2]
	st %i1, [%fp+-8]
	lduh [%fp+-2], %i1
	ld [%fp+-8], %i3
	srl %i1, %i3, %i0
	mov	16, %i2
	sub %i2, %i3, %i2
	sll %i1, %i2, %i1
	or %i0, %i1, %i0
	sethi 4194240, %i1
	andn %i0, %i1, %i0
	ret
	restore
.Lfunc_end75:
	.size	rotr16, .Lfunc_end75-rotr16
                                        ! -- End function
	.globl	rotl8                           ! -- Begin function rotl8
	.p2align	2
	.type	rotl8,@function
rotl8:                                  ! @rotl8
! %bb.0:
	save %sp, -104, %sp
                                        ! kill: def $i2 killed $i0
	stb %i0, [%fp+-1]
	st %i1, [%fp+-8]
	ldub [%fp+-1], %i1
	ld [%fp+-8], %i3
	sll %i1, %i3, %i0
	mov	8, %i2
	sub %i2, %i3, %i2
	srl %i1, %i2, %i1
	or %i0, %i1, %i0
	and %i0, 255, %i0
	ret
	restore
.Lfunc_end76:
	.size	rotl8, .Lfunc_end76-rotl8
                                        ! -- End function
	.globl	rotr8                           ! -- Begin function rotr8
	.p2align	2
	.type	rotr8,@function
rotr8:                                  ! @rotr8
! %bb.0:
	save %sp, -104, %sp
                                        ! kill: def $i2 killed $i0
	stb %i0, [%fp+-1]
	st %i1, [%fp+-8]
	ldub [%fp+-1], %i1
	ld [%fp+-8], %i3
	srl %i1, %i3, %i0
	mov	8, %i2
	sub %i2, %i3, %i2
	sll %i1, %i2, %i1
	or %i0, %i1, %i0
	and %i0, 255, %i0
	ret
	restore
.Lfunc_end77:
	.size	rotr8, .Lfunc_end77-rotr8
                                        ! -- End function
	.globl	bswap_16                        ! -- Begin function bswap_16
	.p2align	2
	.type	bswap_16,@function
bswap_16:                               ! @bswap_16
! %bb.0:
	save %sp, -96, %sp
                                        ! kill: def $i1 killed $i0
	sth %i0, [%fp+-2]
	mov	255, %i0
	sth %i0, [%fp+-4]
	lduh [%fp+-2], %i1
	lduh [%fp+-4], %i2
	sll %i2, 8, %i0
	and %i1, %i0, %i0
	srl %i0, 8, %i0
	and %i1, %i2, %i1
	sll %i1, 8, %i1
	or %i0, %i1, %i0
	sethi 4194240, %i1
	andn %i0, %i1, %i0
	ret
	restore
.Lfunc_end78:
	.size	bswap_16, .Lfunc_end78-bswap_16
                                        ! -- End function
	.globl	bswap_32                        ! -- Begin function bswap_32
	.p2align	2
	.type	bswap_32,@function
bswap_32:                               ! @bswap_32
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	mov	255, %i0
	st %i0, [%fp+-8]
	ld [%fp+-4], %i1
	ld [%fp+-8], %i2
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
	ret
	restore
.Lfunc_end79:
	.size	bswap_32, .Lfunc_end79-bswap_32
                                        ! -- End function
	.globl	bswap_64                        ! -- Begin function bswap_64
	.p2align	2
	.type	bswap_64,@function
bswap_64:                               ! @bswap_64
! %bb.0:
	save %sp, -112, %sp
	mov	%i1, %i2
	mov	%i0, %i3
                                        ! kill: def $i1 killed $i2
                                        ! kill: def $i0 killed $i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	mov	255, %i2
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%g0, %i2
	mov	%i2, %i1
	std %i0, [%fp+-16]
	ldd [%fp+-8], %i0
	mov	%i0, %i2
	mov	%i1, %g3
	ld [%fp+-16], %i3
	sll %i3, 24, %i0
	and %g3, %i0, %i0
	srl %i0, 24, %i0
	sll %i3, 16, %i4
	and %g3, %i4, %i1
	srl %i1, 8, %i1
	or %i0, %i1, %i0
	sll %i3, 8, %g2
	and %g3, %g2, %i5
	srl %i5, 24, %i1
	sll %i5, 8, %i5
	or %i0, %i5, %i0
	and %g3, %i3, %g4
	srl %g4, 8, %i5
	sll %g4, 24, %g4
	or %i0, %g4, %i0
	or %i1, %i5, %i1
	srl %i2, 24, %g4
	sll %g3, 8, %i5
	or %i5, %g4, %i5
	and %i3, %i5, %g4
	sll %i2, 8, %i5
	or %i1, %g4, %i1
	srl %i2, 8, %g4
	sll %g3, 24, %g3
	or %g3, %g4, %g3
	and %g2, %g3, %g2
	or %i1, %g2, %i1
	and %i4, %i5, %i4
	or %i1, %i4, %i1
	and %i2, %i3, %i2
	sll %i2, 24, %i2
	or %i1, %i2, %i1
	ret
	restore
.Lfunc_end80:
	.size	bswap_64, .Lfunc_end80-bswap_64
                                        ! -- End function
	.globl	ffs                             ! -- Begin function ffs
	.p2align	2
	.type	ffs,@function
ffs:                                    ! @ffs
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-8]
	ba .LBB81_1
	st %g0, [%fp+-12]
.LBB81_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	cmp	%i0, 31
	bgu	.LBB81_6
	nop
	ba .LBB81_2
	nop
.LBB81_2:                               !   in Loop: Header=BB81_1 Depth=1
	ld [%fp+-8], %i0
	ld [%fp+-12], %i1
	srl %i0, %i1, %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB81_4
	nop
	ba .LBB81_3
	nop
.LBB81_3:
	ld [%fp+-12], %i0
	add %i0, 1, %i0
	ba .LBB81_7
	st %i0, [%fp+-4]
.LBB81_4:                               !   in Loop: Header=BB81_1 Depth=1
	ba .LBB81_5
	nop
.LBB81_5:                               !   in Loop: Header=BB81_1 Depth=1
	ld [%fp+-12], %i0
	add %i0, 1, %i0
	ba .LBB81_1
	st %i0, [%fp+-12]
.LBB81_6:
	ba .LBB81_7
	st %g0, [%fp+-4]
.LBB81_7:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end81:
	.size	ffs, .Lfunc_end81-ffs
                                        ! -- End function
	.globl	libiberty_ffs                   ! -- Begin function libiberty_ffs
	.p2align	2
	.type	libiberty_ffs,@function
libiberty_ffs:                          ! @libiberty_ffs
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-8]
	ld [%fp+-8], %i0
	cmp	%i0, 0
	bne	.LBB82_2
	nop
	ba .LBB82_1
	nop
.LBB82_1:
	ba .LBB82_7
	st %g0, [%fp+-4]
.LBB82_2:
	mov	1, %i0
	ba .LBB82_3
	st %i0, [%fp+-12]
.LBB82_3:                               ! =>This Inner Loop Header: Depth=1
	ldub [%fp+-8], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	bne	.LBB82_6
	nop
	ba .LBB82_4
	nop
.LBB82_4:                               !   in Loop: Header=BB82_3 Depth=1
	ld [%fp+-8], %i0
	sra %i0, 1, %i0
	ba .LBB82_5
	st %i0, [%fp+-8]
.LBB82_5:                               !   in Loop: Header=BB82_3 Depth=1
	ld [%fp+-12], %i0
	add %i0, 1, %i0
	ba .LBB82_3
	st %i0, [%fp+-12]
.LBB82_6:
	ld [%fp+-12], %i0
	ba .LBB82_7
	st %i0, [%fp+-4]
.LBB82_7:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end82:
	.size	libiberty_ffs, .Lfunc_end82-libiberty_ffs
                                        ! -- End function
	.globl	gl_isinff                       ! -- Begin function gl_isinff
	.p2align	2
	.type	gl_isinff,@function
gl_isinff:                              ! @gl_isinff
! %bb.0:
	save %sp, -112, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+-4]
	ld [%fp+-4], %o0
	sethi 4186111, %i0
	call __ltsf2
	or %i0, 1023, %o1
	mov	1, %i0
	cmp	%o0, 0
	bl	.LBB83_4
	st %i0, [%fp+-8]
	ba .LBB83_1
	nop
.LBB83_1:
	ld [%fp+-4], %o0
	sethi 2088959, %i0
	call __gtsf2
	or %i0, 1023, %o1
	mov	%g0, %i0
	st %i0, [%fp+-16]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%o0, 0
	bg	.LBB83_3
	st %i0, [%fp+-12]
! %bb.2:
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-12]                       ! 4-byte Folded Spill
.LBB83_3:
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	ba .LBB83_4
	st %i0, [%fp+-8]
.LBB83_4:
	ld [%fp+-8], %i0                        ! 4-byte Folded Reload
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end83:
	.size	gl_isinff, .Lfunc_end83-gl_isinff
                                        ! -- End function
	.globl	gl_isinfd                       ! -- Begin function gl_isinfd
	.p2align	2
	.type	gl_isinfd,@function
gl_isinfd:                              ! @gl_isinfd
! %bb.0:
	save %sp, -112, %sp
	mov	%i1, %i2
	mov	%i0, %i3
                                        ! kill: def $i1 killed $i2
                                        ! kill: def $i0 killed $i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	sethi 4193279, %i0
	or %i0, 1023, %o3
	call __ltdf2
	mov	-1, %o2
	mov	1, %i0
	cmp	%o0, 0
	bl	.LBB84_4
	st %i0, [%fp+-12]
	ba .LBB84_1
	nop
.LBB84_1:
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	sethi 2096127, %i0
	or %i0, 1023, %o3
	call __gtdf2
	mov	-1, %o2
	mov	%g0, %i0
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%o0, 0
	bg	.LBB84_3
	st %i0, [%fp+-16]
! %bb.2:
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-16]                       ! 4-byte Folded Spill
.LBB84_3:
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	ba .LBB84_4
	st %i0, [%fp+-12]
.LBB84_4:
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end84:
	.size	gl_isinfd, .Lfunc_end84-gl_isinfd
                                        ! -- End function
	.globl	gl_isinfl                       ! -- Begin function gl_isinfl
	.p2align	2
	.type	gl_isinfl,@function
gl_isinfl:                              ! @gl_isinfl
! %bb.0:
	save %sp, -112, %sp
	mov	%i1, %i2
	mov	%i0, %i3
                                        ! kill: def $i1 killed $i2
                                        ! kill: def $i0 killed $i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	sethi 4193279, %i0
	or %i0, 1023, %o3
	call __ltdf2
	mov	-1, %o2
	mov	1, %i0
	cmp	%o0, 0
	bl	.LBB85_4
	st %i0, [%fp+-12]
	ba .LBB85_1
	nop
.LBB85_1:
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	sethi 2096127, %i0
	or %i0, 1023, %o3
	call __gtdf2
	mov	-1, %o2
	mov	%g0, %i0
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%o0, 0
	bg	.LBB85_3
	st %i0, [%fp+-16]
! %bb.2:
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-16]                       ! 4-byte Folded Spill
.LBB85_3:
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	ba .LBB85_4
	st %i0, [%fp+-12]
.LBB85_4:
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end85:
	.size	gl_isinfl, .Lfunc_end85-gl_isinfl
                                        ! -- End function
	.globl	_Qp_itoq                        ! -- Begin function _Qp_itoq
	.p2align	2
	.type	_Qp_itoq,@function
_Qp_itoq:                               ! @_Qp_itoq
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	call __floatsidf
	ld [%fp+-8], %o0
	ld [%fp+-4], %i0
                                        ! implicit-def: $i2_i3
	mov	%o0, %i2
	mov	%o1, %i3
	std %i2, [%i0]
	ret
	restore
.Lfunc_end86:
	.size	_Qp_itoq, .Lfunc_end86-_Qp_itoq
                                        ! -- End function
	.globl	ldexpf                          ! -- Begin function ldexpf
	.p2align	2
	.type	ldexpf,@function
ldexpf:                                 ! @ldexpf
! %bb.0:
	save %sp, -120, %sp
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ld [%fp+-4], %i0
	sethi 2097152, %i1
	andn %i0, %i1, %i0
	sethi 2088960, %i1
	cmp	%i0, %i1
	bg	.LBB87_11
	nop
	ba .LBB87_1
	nop
.LBB87_1:
	ld [%fp+-4], %o1
	st %o1, [%fp+-16]                       ! 4-byte Folded Spill
	call __addsf3
	mov	%o1, %o0
	call __eqsf2
	ld [%fp+-16], %o1
	cmp	%o0, 0
	be	.LBB87_11
	nop
	ba .LBB87_2
	nop
.LBB87_2:
	ld [%fp+-8], %i1
	sethi 1048576, %i0
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
	sethi 1032192, %i0
	cmp	%i1, 0
	bl	.LBB87_4
	st %i0, [%fp+-20]
! %bb.3:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
.LBB87_4:
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	ba .LBB87_5
	st %i0, [%fp+-12]
.LBB87_5:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-8], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i1
	and %i1, -2, %i1
	sub %i0, %i1, %i0
	cmp	%i0, 0
	be	.LBB87_7
	nop
	ba .LBB87_6
	nop
.LBB87_6:                               !   in Loop: Header=BB87_5 Depth=1
	ld [%fp+-12], %o1
	call __mulsf3
	ld [%fp+-4], %o0
	ba .LBB87_7
	st %o0, [%fp+-4]
.LBB87_7:                               !   in Loop: Header=BB87_5 Depth=1
	ld [%fp+-8], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i0
	sra %i0, 1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-8], %i0
	cmp	%i0, 0
	bne	.LBB87_9
	nop
	ba .LBB87_8
	nop
.LBB87_8:
	ba .LBB87_10
	nop
.LBB87_9:                               !   in Loop: Header=BB87_5 Depth=1
	ld [%fp+-12], %o1
	call __mulsf3
	mov	%o1, %o0
	ba .LBB87_5
	st %o0, [%fp+-12]
.LBB87_10:
	ba .LBB87_11
	nop
.LBB87_11:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end87:
	.size	ldexpf, .Lfunc_end87-ldexpf
                                        ! -- End function
	.globl	ldexp                           ! -- Begin function ldexp
	.p2align	2
	.type	ldexp,@function
ldexp:                                  ! @ldexp
! %bb.0:
	save %sp, -176, %sp
	mov	%i1, %i3
	mov	%i0, %i4
                                        ! kill: def $i1 killed $i3
                                        ! kill: def $i0 killed $i4
                                        ! implicit-def: $i0_i1
	mov	%i4, %i0
	mov	%i3, %i1
	std %i0, [%fp+-8]
	st %i2, [%fp+-12]
	ldd [%fp+-8], %i0
	mov	%i1, %i2
	st %i2, [%fp+-40]                       ! 4-byte Folded Spill
	mov	%i0, %i1
	mov	%g0, %i0
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	mov	1, %i0
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	bne	.LBB88_2
	st %i0, [%fp+-28]
! %bb.1:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
.LBB88_2:
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	ld [%fp+-40], %i1                       ! 4-byte Folded Reload
	ld [%fp+-28], %i2                       ! 4-byte Folded Reload
	st %i2, [%fp+-56]                       ! 4-byte Folded Spill
	sethi 2097152, %i2
	andn %i1, %i2, %i1
	st %i1, [%fp+-52]                       ! 4-byte Folded Spill
	sethi 2096128, %i2
	st %i2, [%fp+-48]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	bg	.LBB88_4
	st %i0, [%fp+-44]
! %bb.3:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-44]                       ! 4-byte Folded Spill
.LBB88_4:
	ld [%fp+-56], %i0                       ! 4-byte Folded Reload
	ld [%fp+-52], %i1                       ! 4-byte Folded Reload
	ld [%fp+-48], %i2                       ! 4-byte Folded Reload
	ld [%fp+-44], %i3                       ! 4-byte Folded Reload
	st %i3, [%fp+-64]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	be	.LBB88_6
	st %i0, [%fp+-60]
! %bb.5:
	ld [%fp+-64], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-60]                       ! 4-byte Folded Spill
.LBB88_6:
	ld [%fp+-60], %i0                       ! 4-byte Folded Reload
	cmp	%i0, 0
	bne	.LBB88_17
	nop
	ba .LBB88_7
	nop
.LBB88_7:
	ldd [%fp+-8], %i0
	mov	%i0, %o2
	st %o2, [%fp+-72]                       ! 4-byte Folded Spill
	mov	%i1, %o3
	st %o3, [%fp+-68]                       ! 4-byte Folded Spill
	mov	%o2, %o0
	call __adddf3
	mov	%o3, %o1
	ld [%fp+-72], %o2                       ! 4-byte Folded Reload
	call __eqdf2
	ld [%fp+-68], %o3
	cmp	%o0, 0
	be	.LBB88_17
	nop
	ba .LBB88_8
	nop
.LBB88_8:
	ld [%fp+-12], %i1
	sethi 1048576, %i0
	st %i0, [%fp+-80]                       ! 4-byte Folded Spill
	sethi 1046528, %i0
	cmp	%i1, 0
	bl	.LBB88_10
	st %i0, [%fp+-76]
! %bb.9:
	ld [%fp+-80], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-76]                       ! 4-byte Folded Spill
.LBB88_10:
	ld [%fp+-76], %i2                       ! 4-byte Folded Reload
	mov	%g0, %i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB88_11
	std %i0, [%fp+-24]
.LBB88_11:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i1
	and %i1, -2, %i1
	sub %i0, %i1, %i0
	cmp	%i0, 0
	be	.LBB88_13
	nop
	ba .LBB88_12
	nop
.LBB88_12:                              !   in Loop: Header=BB88_11 Depth=1
	ldd [%fp+-24], %i0
	mov	%i0, %o2
	mov	%i1, %o3
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	call __muldf3
	mov	%i1, %o1
                                        ! implicit-def: $i0_i1
	mov	%o0, %i0
	mov	%o1, %i1
	ba .LBB88_13
	std %i0, [%fp+-8]
.LBB88_13:                              !   in Loop: Header=BB88_11 Depth=1
	ld [%fp+-12], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i0
	sra %i0, 1, %i0
	st %i0, [%fp+-12]
	ld [%fp+-12], %i0
	cmp	%i0, 0
	bne	.LBB88_15
	nop
	ba .LBB88_14
	nop
.LBB88_14:
	ba .LBB88_16
	nop
.LBB88_15:                              !   in Loop: Header=BB88_11 Depth=1
	ldd [%fp+-24], %i0
	mov	%i0, %o2
	mov	%i1, %o3
	mov	%o2, %o0
	call __muldf3
	mov	%o3, %o1
                                        ! implicit-def: $i0_i1
	mov	%o0, %i0
	mov	%o1, %i1
	ba .LBB88_11
	std %i0, [%fp+-24]
.LBB88_16:
	ba .LBB88_17
	nop
.LBB88_17:
	ldd [%fp+-8], %i2
	mov	%i2, %i0
	ret
	restore %g0, %i3, %o1
.Lfunc_end88:
	.size	ldexp, .Lfunc_end88-ldexp
                                        ! -- End function
	.globl	ldexpl                          ! -- Begin function ldexpl
	.p2align	2
	.type	ldexpl,@function
ldexpl:                                 ! @ldexpl
! %bb.0:
	save %sp, -176, %sp
	mov	%i1, %i3
	mov	%i0, %i4
                                        ! kill: def $i1 killed $i3
                                        ! kill: def $i0 killed $i4
                                        ! implicit-def: $i0_i1
	mov	%i4, %i0
	mov	%i3, %i1
	std %i0, [%fp+-8]
	st %i2, [%fp+-12]
	ldd [%fp+-8], %i0
	mov	%i1, %i2
	st %i2, [%fp+-40]                       ! 4-byte Folded Spill
	mov	%i0, %i1
	mov	%g0, %i0
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	mov	1, %i0
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	bne	.LBB89_2
	st %i0, [%fp+-28]
! %bb.1:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
.LBB89_2:
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	ld [%fp+-40], %i1                       ! 4-byte Folded Reload
	ld [%fp+-28], %i2                       ! 4-byte Folded Reload
	st %i2, [%fp+-56]                       ! 4-byte Folded Spill
	sethi 2097152, %i2
	andn %i1, %i2, %i1
	st %i1, [%fp+-52]                       ! 4-byte Folded Spill
	sethi 2096128, %i2
	st %i2, [%fp+-48]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	bg	.LBB89_4
	st %i0, [%fp+-44]
! %bb.3:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-44]                       ! 4-byte Folded Spill
.LBB89_4:
	ld [%fp+-56], %i0                       ! 4-byte Folded Reload
	ld [%fp+-52], %i1                       ! 4-byte Folded Reload
	ld [%fp+-48], %i2                       ! 4-byte Folded Reload
	ld [%fp+-44], %i3                       ! 4-byte Folded Reload
	st %i3, [%fp+-64]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	be	.LBB89_6
	st %i0, [%fp+-60]
! %bb.5:
	ld [%fp+-64], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-60]                       ! 4-byte Folded Spill
.LBB89_6:
	ld [%fp+-60], %i0                       ! 4-byte Folded Reload
	cmp	%i0, 0
	bne	.LBB89_17
	nop
	ba .LBB89_7
	nop
.LBB89_7:
	ldd [%fp+-8], %i0
	mov	%i0, %o2
	st %o2, [%fp+-72]                       ! 4-byte Folded Spill
	mov	%i1, %o3
	st %o3, [%fp+-68]                       ! 4-byte Folded Spill
	mov	%o2, %o0
	call __adddf3
	mov	%o3, %o1
	ld [%fp+-72], %o2                       ! 4-byte Folded Reload
	call __eqdf2
	ld [%fp+-68], %o3
	cmp	%o0, 0
	be	.LBB89_17
	nop
	ba .LBB89_8
	nop
.LBB89_8:
	ld [%fp+-12], %i1
	sethi 1048576, %i0
	st %i0, [%fp+-80]                       ! 4-byte Folded Spill
	sethi 1046528, %i0
	cmp	%i1, 0
	bl	.LBB89_10
	st %i0, [%fp+-76]
! %bb.9:
	ld [%fp+-80], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-76]                       ! 4-byte Folded Spill
.LBB89_10:
	ld [%fp+-76], %i2                       ! 4-byte Folded Reload
	mov	%g0, %i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB89_11
	std %i0, [%fp+-24]
.LBB89_11:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i1
	and %i1, -2, %i1
	sub %i0, %i1, %i0
	cmp	%i0, 0
	be	.LBB89_13
	nop
	ba .LBB89_12
	nop
.LBB89_12:                              !   in Loop: Header=BB89_11 Depth=1
	ldd [%fp+-24], %i0
	mov	%i0, %o2
	mov	%i1, %o3
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	call __muldf3
	mov	%i1, %o1
                                        ! implicit-def: $i0_i1
	mov	%o0, %i0
	mov	%o1, %i1
	ba .LBB89_13
	std %i0, [%fp+-8]
.LBB89_13:                              !   in Loop: Header=BB89_11 Depth=1
	ld [%fp+-12], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i0
	sra %i0, 1, %i0
	st %i0, [%fp+-12]
	ld [%fp+-12], %i0
	cmp	%i0, 0
	bne	.LBB89_15
	nop
	ba .LBB89_14
	nop
.LBB89_14:
	ba .LBB89_16
	nop
.LBB89_15:                              !   in Loop: Header=BB89_11 Depth=1
	ldd [%fp+-24], %i0
	mov	%i0, %o2
	mov	%i1, %o3
	mov	%o2, %o0
	call __muldf3
	mov	%o3, %o1
                                        ! implicit-def: $i0_i1
	mov	%o0, %i0
	mov	%o1, %i1
	ba .LBB89_11
	std %i0, [%fp+-24]
.LBB89_16:
	ba .LBB89_17
	nop
.LBB89_17:
	ldd [%fp+-8], %i2
	mov	%i2, %i0
	ret
	restore %g0, %i3, %o1
.Lfunc_end89:
	.size	ldexpl, .Lfunc_end89-ldexpl
                                        ! -- End function
	.globl	memxor                          ! -- Begin function memxor
	.p2align	2
	.type	memxor,@function
memxor:                                 ! @memxor
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	ld [%fp+-8], %i0
	st %i0, [%fp+-16]
	ld [%fp+-4], %i0
	ba .LBB90_1
	st %i0, [%fp+-20]
.LBB90_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB90_4
	nop
	ba .LBB90_2
	nop
.LBB90_2:                               !   in Loop: Header=BB90_1 Depth=1
	ld [%fp+-16], %i0
	add %i0, 1, %i1
	st %i1, [%fp+-16]
	ldub [%i0], %i2
	ld [%fp+-20], %i0
	add %i0, 1, %i1
	st %i1, [%fp+-20]
	ldub [%i0], %i1
	xor %i1, %i2, %i1
	ba .LBB90_3
	stb %i1, [%i0]
.LBB90_3:                               !   in Loop: Header=BB90_1 Depth=1
	ld [%fp+-12], %i0
	add %i0, -1, %i0
	ba .LBB90_1
	st %i0, [%fp+-12]
.LBB90_4:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end90:
	.size	memxor, .Lfunc_end90-memxor
                                        ! -- End function
	.globl	strncat                         ! -- Begin function strncat
	.p2align	2
	.type	strncat,@function
strncat:                                ! @strncat
! %bb.0:
	save %sp, -120, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	ld [%fp+-4], %i0
	call strlen
	mov	%i0, %o0
	add %i0, %o0, %i0
	ba .LBB91_1
	st %i0, [%fp+-16]
.LBB91_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB91_5
	st %i0, [%fp+-20]
	ba .LBB91_2
	nop
.LBB91_2:                               !   in Loop: Header=BB91_1 Depth=1
	ld [%fp+-8], %i0
	ldub [%i0], %i1
	ld [%fp+-16], %i0
	stb %i1, [%i0]
	mov	%g0, %i0
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 0
	bne	.LBB91_4
	st %i0, [%fp+-24]
! %bb.3:                                !   in Loop: Header=BB91_1 Depth=1
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
.LBB91_4:                               !   in Loop: Header=BB91_1 Depth=1
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	ba .LBB91_5
	st %i0, [%fp+-20]
.LBB91_5:                               !   in Loop: Header=BB91_1 Depth=1
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB91_8
	nop
	ba .LBB91_6
	nop
.LBB91_6:                               !   in Loop: Header=BB91_1 Depth=1
	ba .LBB91_7
	nop
.LBB91_7:                               !   in Loop: Header=BB91_1 Depth=1
	ld [%fp+-8], %i0
	add %i0, 1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-16], %i0
	add %i0, 1, %i0
	st %i0, [%fp+-16]
	ld [%fp+-12], %i0
	add %i0, -1, %i0
	ba .LBB91_1
	st %i0, [%fp+-12]
.LBB91_8:
	ld [%fp+-12], %i0
	cmp	%i0, 0
	bne	.LBB91_10
	nop
	ba .LBB91_9
	nop
.LBB91_9:
	ld [%fp+-16], %i0
	mov	%g0, %i1
	ba .LBB91_10
	stb %i1, [%i0]
.LBB91_10:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end91:
	.size	strncat, .Lfunc_end91-strncat
                                        ! -- End function
	.globl	strnlen                         ! -- Begin function strnlen
	.p2align	2
	.type	strnlen,@function
strnlen:                                ! @strnlen
! %bb.0:
	save %sp, -120, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ba .LBB92_1
	st %g0, [%fp+-12]
.LBB92_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i1
	ld [%fp+-8], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bcc	.LBB92_5
	st %i0, [%fp+-16]
	ba .LBB92_2
	nop
.LBB92_2:                               !   in Loop: Header=BB92_1 Depth=1
	ld [%fp+-4], %i0
	ld [%fp+-12], %i1
	ldsb [%i0+%i1], %i1
	mov	%g0, %i0
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 0
	bne	.LBB92_4
	st %i0, [%fp+-20]
! %bb.3:                                !   in Loop: Header=BB92_1 Depth=1
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
.LBB92_4:                               !   in Loop: Header=BB92_1 Depth=1
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	ba .LBB92_5
	st %i0, [%fp+-16]
.LBB92_5:                               !   in Loop: Header=BB92_1 Depth=1
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB92_8
	nop
	ba .LBB92_6
	nop
.LBB92_6:                               !   in Loop: Header=BB92_1 Depth=1
	ba .LBB92_7
	nop
.LBB92_7:                               !   in Loop: Header=BB92_1 Depth=1
	ld [%fp+-12], %i0
	add %i0, 1, %i0
	ba .LBB92_1
	st %i0, [%fp+-12]
.LBB92_8:
	ld [%fp+-12], %i0
	ret
	restore
.Lfunc_end92:
	.size	strnlen, .Lfunc_end92-strnlen
                                        ! -- End function
	.globl	strpbrk                         ! -- Begin function strpbrk
	.p2align	2
	.type	strpbrk,@function
strpbrk:                                ! @strpbrk
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-8]
	ba .LBB93_1
	st %i1, [%fp+-12]
.LBB93_1:                               ! =>This Loop Header: Depth=1
                                        !     Child Loop BB93_3 Depth 2
	ld [%fp+-8], %i0
	ldsb [%i0], %i0
	cmp	%i0, 0
	be	.LBB93_8
	nop
	ba .LBB93_2
	nop
.LBB93_2:                               !   in Loop: Header=BB93_1 Depth=1
	ld [%fp+-12], %i0
	ba .LBB93_3
	st %i0, [%fp+-16]
.LBB93_3:                               !   Parent Loop BB93_1 Depth=1
                                        ! =>  This Inner Loop Header: Depth=2
	ld [%fp+-16], %i0
	ldsb [%i0], %i0
	cmp	%i0, 0
	be	.LBB93_7
	nop
	ba .LBB93_4
	nop
.LBB93_4:                               !   in Loop: Header=BB93_3 Depth=2
	ld [%fp+-16], %i0
	add %i0, 1, %i1
	st %i1, [%fp+-16]
	ldsb [%i0], %i0
	ld [%fp+-8], %i1
	ldsb [%i1], %i1
	cmp	%i0, %i1
	bne	.LBB93_6
	nop
	ba .LBB93_5
	nop
.LBB93_5:
	ld [%fp+-8], %i0
	ba .LBB93_9
	st %i0, [%fp+-4]
.LBB93_6:                               !   in Loop: Header=BB93_3 Depth=2
	ba .LBB93_3
	nop
.LBB93_7:                               !   in Loop: Header=BB93_1 Depth=1
	ld [%fp+-8], %i0
	add %i0, 1, %i0
	ba .LBB93_1
	st %i0, [%fp+-8]
.LBB93_8:
	ba .LBB93_9
	st %g0, [%fp+-4]
.LBB93_9:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end93:
	.size	strpbrk, .Lfunc_end93-strpbrk
                                        ! -- End function
	.globl	strrchr                         ! -- Begin function strrchr
	.p2align	2
	.type	strrchr,@function
strrchr:                                ! @strrchr
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ba .LBB94_1
	st %g0, [%fp+-12]
.LBB94_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	ldsb [%i0], %i0
	ld [%fp+-8], %i1
	cmp	%i0, %i1
	bne	.LBB94_3
	nop
	ba .LBB94_2
	nop
.LBB94_2:                               !   in Loop: Header=BB94_1 Depth=1
	ld [%fp+-4], %i0
	ba .LBB94_3
	st %i0, [%fp+-12]
.LBB94_3:                               !   in Loop: Header=BB94_1 Depth=1
	ba .LBB94_4
	nop
.LBB94_4:                               !   in Loop: Header=BB94_1 Depth=1
	ld [%fp+-4], %i0
	add %i0, 1, %i1
	st %i1, [%fp+-4]
	ldub [%i0], %i0
	cmp	%i0, 0
	bne	.LBB94_1
	nop
	ba .LBB94_5
	nop
.LBB94_5:
	ld [%fp+-12], %i0
	ret
	restore
.Lfunc_end94:
	.size	strrchr, .Lfunc_end94-strrchr
                                        ! -- End function
	.globl	strstr                          ! -- Begin function strstr
	.p2align	2
	.type	strstr,@function
strstr:                                 ! @strstr
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	ld [%fp+-8], %i0
	st %i0, [%fp+-16]
	call strlen
	ld [%fp+-12], %o0
	st %o0, [%fp+-20]
	ld [%fp+-20], %i0
	cmp	%i0, 0
	bne	.LBB95_2
	nop
	ba .LBB95_1
	nop
.LBB95_1:
	ld [%fp+-8], %i0
	ba .LBB95_9
	st %i0, [%fp+-4]
.LBB95_2:
	ba .LBB95_3
	nop
.LBB95_3:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-16], %o0
	ld [%fp+-12], %i0
	call strchr
	ldsb [%i0], %o1
	cmp	%o0, 0
	be	.LBB95_8
	st %o0, [%fp+-16]
	ba .LBB95_4
	nop
.LBB95_4:                               !   in Loop: Header=BB95_3 Depth=1
	ld [%fp+-16], %o0
	ld [%fp+-12], %o1
	call strncmp
	ld [%fp+-20], %o2
	cmp	%o0, 0
	bne	.LBB95_6
	nop
	ba .LBB95_5
	nop
.LBB95_5:
	ld [%fp+-16], %i0
	ba .LBB95_9
	st %i0, [%fp+-4]
.LBB95_6:                               !   in Loop: Header=BB95_3 Depth=1
	ba .LBB95_7
	nop
.LBB95_7:                               !   in Loop: Header=BB95_3 Depth=1
	ld [%fp+-16], %i0
	add %i0, 1, %i0
	ba .LBB95_3
	st %i0, [%fp+-16]
.LBB95_8:
	ba .LBB95_9
	st %g0, [%fp+-4]
.LBB95_9:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end95:
	.size	strstr, .Lfunc_end95-strstr
                                        ! -- End function
	.globl	copysign                        ! -- Begin function copysign
	.p2align	2
	.type	copysign,@function
copysign:                               ! @copysign
! %bb.0:
	save %sp, -120, %sp
	mov	%i1, %i4
	mov	%i0, %i5
                                        ! kill: def $i0 killed $i3
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i1 killed $i4
                                        ! kill: def $i0 killed $i5
                                        ! implicit-def: $i0_i1
	mov	%i5, %i0
	mov	%i4, %i1
	std %i0, [%fp+-16]
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%i3, %i1
	std %i0, [%fp+-24]
	ldd [%fp+-16], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%g0, %o3
	call __ltdf2
	mov	%o3, %o2
	cmp	%o0, -1
	bg	.LBB96_2
	nop
	ba .LBB96_1
	nop
.LBB96_1:
	ldd [%fp+-24], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%g0, %o3
	call __gtdf2
	mov	%o3, %o2
	cmp	%o0, 0
	bg	.LBB96_4
	nop
	ba .LBB96_2
	nop
.LBB96_2:
	ldd [%fp+-16], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%g0, %o3
	call __gtdf2
	mov	%o3, %o2
	cmp	%o0, 1
	bl	.LBB96_5
	nop
	ba .LBB96_3
	nop
.LBB96_3:
	ldd [%fp+-24], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%g0, %o3
	call __ltdf2
	mov	%o3, %o2
	cmp	%o0, -1
	bg	.LBB96_5
	nop
	ba .LBB96_4
	nop
.LBB96_4:
	ldd [%fp+-16], %i0
	mov	%i0, %i3
	mov	%i1, %i0
	sethi 2097152, %i1
	xor %i0, %i1, %i2
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB96_6
	std %i0, [%fp+-8]
.LBB96_5:
	ldd [%fp+-16], %i0
	ba .LBB96_6
	std %i0, [%fp+-8]
.LBB96_6:
	ldd [%fp+-8], %i2
	mov	%i2, %i0
	ret
	restore %g0, %i3, %o1
.Lfunc_end96:
	.size	copysign, .Lfunc_end96-copysign
                                        ! -- End function
	.globl	memmem                          ! -- Begin function memmem
	.p2align	2
	.type	memmem,@function
memmem:                                 ! @memmem
! %bb.0:
	save %sp, -120, %sp
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	st %i2, [%fp+-16]
	st %i3, [%fp+-20]
	ld [%fp+-8], %i0
	ld [%fp+-12], %i1
	add %i0, %i1, %i0
	ld [%fp+-20], %i1
	sub %i0, %i1, %i0
	st %i0, [%fp+-28]
	ld [%fp+-20], %i0
	cmp	%i0, 0
	bne	.LBB97_2
	nop
	ba .LBB97_1
	nop
.LBB97_1:
	ld [%fp+-8], %i0
	ba .LBB97_12
	st %i0, [%fp+-4]
.LBB97_2:
	ld [%fp+-12], %i0
	ld [%fp+-20], %i1
	cmp	%i0, %i1
	bcc	.LBB97_4
	nop
	ba .LBB97_3
	nop
.LBB97_3:
	ba .LBB97_12
	st %g0, [%fp+-4]
.LBB97_4:
	ld [%fp+-8], %i0
	ba .LBB97_5
	st %i0, [%fp+-24]
.LBB97_5:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-24], %i0
	ld [%fp+-28], %i1
	cmp	%i0, %i1
	bgu	.LBB97_11
	nop
	ba .LBB97_6
	nop
.LBB97_6:                               !   in Loop: Header=BB97_5 Depth=1
	ld [%fp+-24], %i0
	ldsb [%i0], %i0
	ld [%fp+-16], %i1
	ldsb [%i1], %i1
	cmp	%i0, %i1
	bne	.LBB97_9
	nop
	ba .LBB97_7
	nop
.LBB97_7:                               !   in Loop: Header=BB97_5 Depth=1
	ld [%fp+-24], %i0
	add %i0, 1, %o0
	ld [%fp+-16], %i0
	add %i0, 1, %o1
	ld [%fp+-20], %i0
	call memcmp
	add %i0, -1, %o2
	cmp	%o0, 0
	bne	.LBB97_9
	nop
	ba .LBB97_8
	nop
.LBB97_8:
	ld [%fp+-24], %i0
	ba .LBB97_12
	st %i0, [%fp+-4]
.LBB97_9:                               !   in Loop: Header=BB97_5 Depth=1
	ba .LBB97_10
	nop
.LBB97_10:                              !   in Loop: Header=BB97_5 Depth=1
	ld [%fp+-24], %i0
	add %i0, 1, %i0
	ba .LBB97_5
	st %i0, [%fp+-24]
.LBB97_11:
	ba .LBB97_12
	st %g0, [%fp+-4]
.LBB97_12:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end97:
	.size	memmem, .Lfunc_end97-memmem
                                        ! -- End function
	.globl	mempcpy                         ! -- Begin function mempcpy
	.p2align	2
	.type	mempcpy,@function
mempcpy:                                ! @mempcpy
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	ld [%fp+-4], %i0
	ld [%fp+-8], %o1
	ld [%fp+-12], %o2
	call memcpy
	mov	%i0, %o0
	ld [%fp+-12], %i1
	ret
	restore %i0, %i1, %o0
.Lfunc_end98:
	.size	mempcpy, .Lfunc_end98-mempcpy
                                        ! -- End function
	.globl	frexp                           ! -- Begin function frexp
	.p2align	2
	.type	frexp,@function
frexp:                                  ! @frexp
! %bb.0:
	save %sp, -112, %sp
	mov	%i1, %i3
	mov	%i0, %i4
                                        ! kill: def $i1 killed $i3
                                        ! kill: def $i0 killed $i4
                                        ! implicit-def: $i0_i1
	mov	%i4, %i0
	mov	%i3, %i1
	std %i0, [%fp+-8]
	st %i2, [%fp+-12]
	st %g0, [%fp+-20]
	st %g0, [%fp+-16]
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%g0, %o3
	call __ltdf2
	mov	%o3, %o2
	cmp	%o0, -1
	bg	.LBB99_2
	nop
	ba .LBB99_1
	nop
.LBB99_1:
	ldd [%fp+-8], %i0
	mov	%i0, %i3
	mov	%i1, %i0
	sethi 2097152, %i1
	xor %i0, %i1, %i2
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	mov	1, %i0
	ba .LBB99_2
	st %i0, [%fp+-16]
.LBB99_2:
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%g0, %o2
	call __gedf2
	sethi 1047552, %o3
	cmp	%o0, 0
	bl	.LBB99_7
	nop
	ba .LBB99_3
	nop
.LBB99_3:
	ba .LBB99_4
	nop
.LBB99_4:                               ! =>This Inner Loop Header: Depth=1
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%g0, %o2
	call __gedf2
	sethi 1047552, %o3
	cmp	%o0, 0
	bl	.LBB99_6
	nop
	ba .LBB99_5
	nop
.LBB99_5:                               !   in Loop: Header=BB99_4 Depth=1
	ld [%fp+-20], %i0
	add %i0, 1, %i0
	st %i0, [%fp+-20]
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%g0, %o2
	call __muldf3
	sethi 1046528, %o3
                                        ! implicit-def: $i0_i1
	mov	%o0, %i0
	mov	%o1, %i1
	ba .LBB99_4
	std %i0, [%fp+-8]
.LBB99_6:
	ba .LBB99_14
	nop
.LBB99_7:
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%g0, %o2
	call __ltdf2
	sethi 1046528, %o3
	cmp	%o0, -1
	bg	.LBB99_13
	nop
	ba .LBB99_8
	nop
.LBB99_8:
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%g0, %o3
	call __eqdf2
	mov	%o3, %o2
	cmp	%o0, 0
	be	.LBB99_13
	nop
	ba .LBB99_9
	nop
.LBB99_9:
	ba .LBB99_10
	nop
.LBB99_10:                              ! =>This Inner Loop Header: Depth=1
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%g0, %o2
	call __ltdf2
	sethi 1046528, %o3
	cmp	%o0, -1
	bg	.LBB99_12
	nop
	ba .LBB99_11
	nop
.LBB99_11:                              !   in Loop: Header=BB99_10 Depth=1
	ld [%fp+-20], %i0
	add %i0, -1, %i0
	st %i0, [%fp+-20]
	ldd [%fp+-8], %i0
	mov	%i0, %o2
	mov	%i1, %o3
	mov	%o2, %o0
	call __adddf3
	mov	%o3, %o1
                                        ! implicit-def: $i0_i1
	mov	%o0, %i0
	mov	%o1, %i1
	ba .LBB99_10
	std %i0, [%fp+-8]
.LBB99_12:
	ba .LBB99_13
	nop
.LBB99_13:
	ba .LBB99_14
	nop
.LBB99_14:
	ld [%fp+-20], %i1
	ld [%fp+-12], %i0
	st %i1, [%i0]
	ld [%fp+-16], %i0
	cmp	%i0, 0
	be	.LBB99_16
	nop
	ba .LBB99_15
	nop
.LBB99_15:
	ldd [%fp+-8], %i0
	mov	%i0, %i3
	mov	%i1, %i0
	sethi 2097152, %i1
	xor %i0, %i1, %i2
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB99_16
	std %i0, [%fp+-8]
.LBB99_16:
	ldd [%fp+-8], %i2
	mov	%i2, %i0
	ret
	restore %g0, %i3, %o1
.Lfunc_end99:
	.size	frexp, .Lfunc_end99-frexp
                                        ! -- End function
	.globl	__muldi3                        ! -- Begin function __muldi3
	.p2align	2
	.type	__muldi3,@function
__muldi3:                               ! @__muldi3
! %bb.0:
	save %sp, -128, %sp
	mov	%i1, %i4
	mov	%i0, %i5
                                        ! kill: def $i0 killed $i3
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i1 killed $i4
                                        ! kill: def $i0 killed $i5
                                        ! implicit-def: $i0_i1
	mov	%i5, %i0
	mov	%i4, %i1
	std %i0, [%fp+-8]
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%i3, %i1
	std %i0, [%fp+-16]
	mov	%g0, %i2
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%g0, %i2
	mov	%i2, %i1
	std %i0, [%fp+-24]
	ldd [%fp+-8], %i0
	ba .LBB100_1
	std %i0, [%fp+-32]
.LBB100_1:                              ! =>This Inner Loop Header: Depth=1
	ldd [%fp+-32], %i2
	mov	%i3, %i1
	mov	%i2, %i0
	or %i0, %i1, %i0
	cmp	%i0, 0
	be	.LBB100_5
	nop
	ba .LBB100_2
	nop
.LBB100_2:                              !   in Loop: Header=BB100_1 Depth=1
	ldub [%fp+-32], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB100_4
	nop
	ba .LBB100_3
	nop
.LBB100_3:                              !   in Loop: Header=BB100_1 Depth=1
	ldd [%fp+-16], %i0
	mov	%i0, %i3
                                        ! kill: def $i1 killed $i1 killed $i0_i1
	ldd [%fp+-24], %i4
	mov	%i4, %i2
	mov	%i5, %i0
	addcc %i2, %i3, %i3
	addxcc %i0, %i1, %i2
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB100_4
	std %i0, [%fp+-24]
.LBB100_4:                              !   in Loop: Header=BB100_1 Depth=1
	ldd [%fp+-16], %i2
	mov	%i3, %i1
	mov	%i2, %i0
	srl %i0, 31, %i2
	sll %i1, 1, %i1
	or %i1, %i2, %i2
	sll %i0, 1, %i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-16]
	ldd [%fp+-32], %i2
	mov	%i2, %i1
	mov	%i3, %i0
	sll %i0, 31, %i2
	srl %i1, 1, %i1
	or %i1, %i2, %i3
	srl %i0, 1, %i2
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB100_1
	std %i0, [%fp+-32]
.LBB100_5:
	ldd [%fp+-24], %i2
	mov	%i2, %i0
	ret
	restore %g0, %i3, %o1
.Lfunc_end100:
	.size	__muldi3, .Lfunc_end100-__muldi3
                                        ! -- End function
	.globl	udivmodsi4                      ! -- Begin function udivmodsi4
	.p2align	2
	.type	udivmodsi4,@function
udivmodsi4:                             ! @udivmodsi4
! %bb.0:
	save %sp, -128, %sp
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	st %i2, [%fp+-16]
	mov	1, %i0
	st %i0, [%fp+-20]
	ba .LBB101_1
	st %g0, [%fp+-24]
.LBB101_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i1
	ld [%fp+-8], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bcc	.LBB101_6
	st %i0, [%fp+-28]
	ba .LBB101_2
	nop
.LBB101_2:                              !   in Loop: Header=BB101_1 Depth=1
	ld [%fp+-20], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB101_6
	st %i0, [%fp+-28]
	ba .LBB101_3
	nop
.LBB101_3:                              !   in Loop: Header=BB101_1 Depth=1
	add %fp, -12, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	and %i0, 128, %i1
	mov	%g0, %i0
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 0
	be	.LBB101_5
	st %i0, [%fp+-32]
! %bb.4:                                !   in Loop: Header=BB101_1 Depth=1
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
.LBB101_5:                              !   in Loop: Header=BB101_1 Depth=1
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	ba .LBB101_6
	st %i0, [%fp+-28]
.LBB101_6:                              !   in Loop: Header=BB101_1 Depth=1
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB101_8
	nop
	ba .LBB101_7
	nop
.LBB101_7:                              !   in Loop: Header=BB101_1 Depth=1
	ld [%fp+-12], %i0
	sll %i0, 1, %i0
	st %i0, [%fp+-12]
	ld [%fp+-20], %i0
	sll %i0, 1, %i0
	ba .LBB101_1
	st %i0, [%fp+-20]
.LBB101_8:
	ba .LBB101_9
	nop
.LBB101_9:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-20], %i0
	cmp	%i0, 0
	be	.LBB101_13
	nop
	ba .LBB101_10
	nop
.LBB101_10:                             !   in Loop: Header=BB101_9 Depth=1
	ld [%fp+-8], %i0
	ld [%fp+-12], %i1
	cmp	%i0, %i1
	bcs	.LBB101_12
	nop
	ba .LBB101_11
	nop
.LBB101_11:                             !   in Loop: Header=BB101_9 Depth=1
	ld [%fp+-12], %i1
	ld [%fp+-8], %i0
	sub %i0, %i1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-20], %i1
	ld [%fp+-24], %i0
	or %i0, %i1, %i0
	ba .LBB101_12
	st %i0, [%fp+-24]
.LBB101_12:                             !   in Loop: Header=BB101_9 Depth=1
	ld [%fp+-20], %i0
	srl %i0, 1, %i0
	st %i0, [%fp+-20]
	ld [%fp+-12], %i0
	srl %i0, 1, %i0
	ba .LBB101_9
	st %i0, [%fp+-12]
.LBB101_13:
	ld [%fp+-16], %i0
	cmp	%i0, 0
	be	.LBB101_15
	nop
	ba .LBB101_14
	nop
.LBB101_14:
	ld [%fp+-8], %i0
	ba .LBB101_16
	st %i0, [%fp+-4]
.LBB101_15:
	ld [%fp+-24], %i0
	ba .LBB101_16
	st %i0, [%fp+-4]
.LBB101_16:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end101:
	.size	udivmodsi4, .Lfunc_end101-udivmodsi4
                                        ! -- End function
	.globl	__clrsbqi2                      ! -- Begin function __clrsbqi2
	.p2align	2
	.type	__clrsbqi2,@function
__clrsbqi2:                             ! @__clrsbqi2
! %bb.0:
	save %sp, -104, %sp
                                        ! kill: def $i1 killed $i0
	stb %i0, [%fp+-5]
	ldsb [%fp+-5], %i0
	cmp	%i0, -1
	bg	.LBB102_2
	nop
	ba .LBB102_1
	nop
.LBB102_1:
	ldub [%fp+-5], %i0
	xor %i0, -1, %i0
	ba .LBB102_2
	stb %i0, [%fp+-5]
.LBB102_2:
	ldsb [%fp+-5], %i0
	cmp	%i0, 0
	bne	.LBB102_4
	nop
	ba .LBB102_3
	nop
.LBB102_3:
	mov	7, %i0
	ba .LBB102_5
	st %i0, [%fp+-4]
.LBB102_4:
	ldsb [%fp+-5], %i0
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
	st %i0, [%fp+-12]
	ld [%fp+-12], %i0
	add %i0, -1, %i0
	ba .LBB102_5
	st %i0, [%fp+-4]
.LBB102_5:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end102:
	.size	__clrsbqi2, .Lfunc_end102-__clrsbqi2
                                        ! -- End function
	.globl	__clrsbdi2                      ! -- Begin function __clrsbdi2
	.p2align	2
	.type	__clrsbdi2,@function
__clrsbdi2:                             ! @__clrsbdi2
! %bb.0:
	save %sp, -120, %sp
	mov	%i1, %i2
	mov	%i0, %i3
                                        ! kill: def $i1 killed $i2
                                        ! kill: def $i0 killed $i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-16]
	add %fp, -16, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	cmp	%i0, -1
	bg	.LBB103_2
	nop
	ba .LBB103_1
	nop
.LBB103_1:
	ldd [%fp+-16], %i2
	mov	%i2, %i0
	mov	%i3, %i1
	xor %i1, -1, %i2
	xor %i0, -1, %i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB103_2
	std %i0, [%fp+-16]
.LBB103_2:
	ldd [%fp+-16], %i2
	mov	%i3, %i1
	mov	%i2, %i0
	or %i0, %i1, %i0
	cmp	%i0, 0
	bne	.LBB103_4
	nop
	ba .LBB103_3
	nop
.LBB103_3:
	mov	63, %i0
	ba .LBB103_7
	st %i0, [%fp+-4]
.LBB103_4:
	ldd [%fp+-16], %i0
	mov	%i0, %i2
                                        ! kill: def $i1 killed $i1 killed $i0_i1
	srl %i1, 1, %i0
	or %i1, %i0, %i0
	srl %i0, 2, %i3
	or %i0, %i3, %i0
	srl %i0, 4, %i3
	or %i0, %i3, %i0
	srl %i0, 8, %i3
	or %i0, %i3, %i0
	srl %i0, 16, %i3
	or %i0, %i3, %i0
	xor %i0, -1, %i0
	srl %i0, 1, %i3
	sethi 1398101, %i4
	or %i4, 341, %g2
	and %i3, %g2, %i3
	sub %i0, %i3, %i3
	sethi 838860, %i0
	or %i0, 819, %i5
	and %i3, %i5, %i0
	srl %i3, 2, %i3
	and %i3, %i5, %i3
	add %i0, %i3, %i0
	srl %i0, 4, %i3
	add %i0, %i3, %i0
	sethi 246723, %i3
	or %i3, 783, %i3
	and %i0, %i3, %i0
	sll %i0, 8, %i4
	add %i0, %i4, %i0
	sll %i0, 16, %i4
	add %i0, %i4, %i0
	srl %i0, 24, %i0
	srl %i2, 1, %i4
	or %i2, %i4, %i2
	srl %i2, 2, %i4
	or %i2, %i4, %i2
	srl %i2, 4, %i4
	or %i2, %i4, %i2
	srl %i2, 8, %i4
	or %i2, %i4, %i2
	srl %i2, 16, %i4
	or %i2, %i4, %i2
	xor %i2, -1, %i2
	srl %i2, 1, %i4
	and %i4, %g2, %i4
	sub %i2, %i4, %i4
	and %i4, %i5, %i2
	srl %i4, 2, %i4
	and %i4, %i5, %i4
	add %i2, %i4, %i2
	srl %i2, 4, %i4
	add %i2, %i4, %i2
	and %i2, %i3, %i2
	sll %i2, 8, %i3
	add %i2, %i3, %i2
	sll %i2, 16, %i3
	add %i2, %i3, %i2
	srl %i2, 24, %i2
	add %i2, 32, %i2
	st %i2, [%fp+-28]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	bne	.LBB103_6
	st %i0, [%fp+-24]
! %bb.5:
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
.LBB103_6:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-20]
	ld [%fp+-20], %i0
	add %i0, -1, %i0
	ba .LBB103_7
	st %i0, [%fp+-4]
.LBB103_7:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end103:
	.size	__clrsbdi2, .Lfunc_end103-__clrsbdi2
                                        ! -- End function
	.globl	__mulsi3                        ! -- Begin function __mulsi3
	.p2align	2
	.type	__mulsi3,@function
__mulsi3:                               ! @__mulsi3
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ba .LBB104_1
	st %g0, [%fp+-12]
.LBB104_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	cmp	%i0, 0
	be	.LBB104_5
	nop
	ba .LBB104_2
	nop
.LBB104_2:                              !   in Loop: Header=BB104_1 Depth=1
	ldub [%fp+-4], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB104_4
	nop
	ba .LBB104_3
	nop
.LBB104_3:                              !   in Loop: Header=BB104_1 Depth=1
	ld [%fp+-8], %i1
	ld [%fp+-12], %i0
	add %i0, %i1, %i0
	ba .LBB104_4
	st %i0, [%fp+-12]
.LBB104_4:                              !   in Loop: Header=BB104_1 Depth=1
	ld [%fp+-4], %i0
	srl %i0, 1, %i0
	st %i0, [%fp+-4]
	ld [%fp+-8], %i0
	sll %i0, 1, %i0
	ba .LBB104_1
	st %i0, [%fp+-8]
.LBB104_5:
	ld [%fp+-12], %i0
	ret
	restore
.Lfunc_end104:
	.size	__mulsi3, .Lfunc_end104-__mulsi3
                                        ! -- End function
	.globl	__cmovd                         ! -- Begin function __cmovd
	.p2align	2
	.type	__cmovd,@function
__cmovd:                                ! @__cmovd
! %bb.0:
	save %sp, -128, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	ld [%fp+-12], %i0
	srl %i0, 3, %i0
	st %i0, [%fp+-20]
	ld [%fp+-12], %i0
	and %i0, -8, %i0
	st %i0, [%fp+-24]
	ld [%fp+-4], %i0
	st %i0, [%fp+-28]
	ld [%fp+-8], %i0
	st %i0, [%fp+-32]
	ld [%fp+-28], %i0
	ld [%fp+-32], %i1
	cmp	%i0, %i1
	bcs	.LBB105_2
	nop
	ba .LBB105_1
	nop
.LBB105_1:
	ld [%fp+-28], %i0
	ld [%fp+-32], %i1
	ld [%fp+-12], %i2
	add %i1, %i2, %i1
	cmp	%i0, %i1
	bleu	.LBB105_10
	nop
	ba .LBB105_2
	nop
.LBB105_2:
	ba .LBB105_3
	st %g0, [%fp+-16]
.LBB105_3:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-16], %i0
	ld [%fp+-20], %i1
	cmp	%i0, %i1
	bcc	.LBB105_6
	nop
	ba .LBB105_4
	nop
.LBB105_4:                              !   in Loop: Header=BB105_3 Depth=1
	ld [%fp+-8], %i0
	ld [%fp+-16], %i1
	sll %i1, 3, %i1
	ldd [%i0+%i1], %i2
	ld [%fp+-4], %i0
	ba .LBB105_5
	std %i2, [%i0+%i1]
.LBB105_5:                              !   in Loop: Header=BB105_3 Depth=1
	ld [%fp+-16], %i0
	add %i0, 1, %i0
	ba .LBB105_3
	st %i0, [%fp+-16]
.LBB105_6:
	ba .LBB105_7
	nop
.LBB105_7:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	ld [%fp+-24], %i1
	cmp	%i0, %i1
	bleu	.LBB105_9
	nop
	ba .LBB105_8
	nop
.LBB105_8:                              !   in Loop: Header=BB105_7 Depth=1
	ld [%fp+-32], %i0
	ld [%fp+-24], %i1
	ldub [%i0+%i1], %i2
	ld [%fp+-28], %i0
	stb %i2, [%i0+%i1]
	ld [%fp+-24], %i0
	add %i0, 1, %i0
	ba .LBB105_7
	st %i0, [%fp+-24]
.LBB105_9:
	ba .LBB105_14
	nop
.LBB105_10:
	ba .LBB105_11
	nop
.LBB105_11:                             ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	add %i0, -1, %i1
	cmp	%i0, 0
	be	.LBB105_13
	st %i1, [%fp+-12]
	ba .LBB105_12
	nop
.LBB105_12:                             !   in Loop: Header=BB105_11 Depth=1
	ld [%fp+-32], %i0
	ld [%fp+-12], %i1
	ldub [%i0+%i1], %i2
	ld [%fp+-28], %i0
	ba .LBB105_11
	stb %i2, [%i0+%i1]
.LBB105_13:
	ba .LBB105_14
	nop
.LBB105_14:
	ret
	restore
.Lfunc_end105:
	.size	__cmovd, .Lfunc_end105-__cmovd
                                        ! -- End function
	.globl	__cmovh                         ! -- Begin function __cmovh
	.p2align	2
	.type	__cmovh,@function
__cmovh:                                ! @__cmovh
! %bb.0:
	save %sp, -120, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	ld [%fp+-12], %i0
	srl %i0, 1, %i0
	st %i0, [%fp+-20]
	ld [%fp+-4], %i0
	st %i0, [%fp+-24]
	ld [%fp+-8], %i0
	st %i0, [%fp+-28]
	ld [%fp+-24], %i0
	ld [%fp+-28], %i1
	cmp	%i0, %i1
	bcs	.LBB106_2
	nop
	ba .LBB106_1
	nop
.LBB106_1:
	ld [%fp+-24], %i0
	ld [%fp+-28], %i1
	ld [%fp+-12], %i2
	add %i1, %i2, %i1
	cmp	%i0, %i1
	bleu	.LBB106_9
	nop
	ba .LBB106_2
	nop
.LBB106_2:
	ba .LBB106_3
	st %g0, [%fp+-16]
.LBB106_3:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-16], %i0
	ld [%fp+-20], %i1
	cmp	%i0, %i1
	bcc	.LBB106_6
	nop
	ba .LBB106_4
	nop
.LBB106_4:                              !   in Loop: Header=BB106_3 Depth=1
	ld [%fp+-8], %i0
	ld [%fp+-16], %i1
	sll %i1, 1, %i1
	lduh [%i0+%i1], %i2
	ld [%fp+-4], %i0
	ba .LBB106_5
	sth %i2, [%i0+%i1]
.LBB106_5:                              !   in Loop: Header=BB106_3 Depth=1
	ld [%fp+-16], %i0
	add %i0, 1, %i0
	ba .LBB106_3
	st %i0, [%fp+-16]
.LBB106_6:
	ldub [%fp+-12], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB106_8
	nop
	ba .LBB106_7
	nop
.LBB106_7:
	ld [%fp+-28], %i0
	ld [%fp+-12], %i1
	add %i1, -1, %i1
	ldub [%i0+%i1], %i2
	ld [%fp+-24], %i0
	ba .LBB106_8
	stb %i2, [%i0+%i1]
.LBB106_8:
	ba .LBB106_13
	nop
.LBB106_9:
	ba .LBB106_10
	nop
.LBB106_10:                             ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	add %i0, -1, %i1
	cmp	%i0, 0
	be	.LBB106_12
	st %i1, [%fp+-12]
	ba .LBB106_11
	nop
.LBB106_11:                             !   in Loop: Header=BB106_10 Depth=1
	ld [%fp+-28], %i0
	ld [%fp+-12], %i1
	ldub [%i0+%i1], %i2
	ld [%fp+-24], %i0
	ba .LBB106_10
	stb %i2, [%i0+%i1]
.LBB106_12:
	ba .LBB106_13
	nop
.LBB106_13:
	ret
	restore
.Lfunc_end106:
	.size	__cmovh, .Lfunc_end106-__cmovh
                                        ! -- End function
	.globl	__cmovw                         ! -- Begin function __cmovw
	.p2align	2
	.type	__cmovw,@function
__cmovw:                                ! @__cmovw
! %bb.0:
	save %sp, -128, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	ld [%fp+-12], %i0
	srl %i0, 2, %i0
	st %i0, [%fp+-20]
	ld [%fp+-12], %i0
	and %i0, -4, %i0
	st %i0, [%fp+-24]
	ld [%fp+-4], %i0
	st %i0, [%fp+-28]
	ld [%fp+-8], %i0
	st %i0, [%fp+-32]
	ld [%fp+-28], %i0
	ld [%fp+-32], %i1
	cmp	%i0, %i1
	bcs	.LBB107_2
	nop
	ba .LBB107_1
	nop
.LBB107_1:
	ld [%fp+-28], %i0
	ld [%fp+-32], %i1
	ld [%fp+-12], %i2
	add %i1, %i2, %i1
	cmp	%i0, %i1
	bleu	.LBB107_10
	nop
	ba .LBB107_2
	nop
.LBB107_2:
	ba .LBB107_3
	st %g0, [%fp+-16]
.LBB107_3:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-16], %i0
	ld [%fp+-20], %i1
	cmp	%i0, %i1
	bcc	.LBB107_6
	nop
	ba .LBB107_4
	nop
.LBB107_4:                              !   in Loop: Header=BB107_3 Depth=1
	ld [%fp+-8], %i0
	ld [%fp+-16], %i1
	sll %i1, 2, %i1
	ld [%i0+%i1], %i2
	ld [%fp+-4], %i0
	ba .LBB107_5
	st %i2, [%i0+%i1]
.LBB107_5:                              !   in Loop: Header=BB107_3 Depth=1
	ld [%fp+-16], %i0
	add %i0, 1, %i0
	ba .LBB107_3
	st %i0, [%fp+-16]
.LBB107_6:
	ba .LBB107_7
	nop
.LBB107_7:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	ld [%fp+-24], %i1
	cmp	%i0, %i1
	bleu	.LBB107_9
	nop
	ba .LBB107_8
	nop
.LBB107_8:                              !   in Loop: Header=BB107_7 Depth=1
	ld [%fp+-32], %i0
	ld [%fp+-24], %i1
	ldub [%i0+%i1], %i2
	ld [%fp+-28], %i0
	stb %i2, [%i0+%i1]
	ld [%fp+-24], %i0
	add %i0, 1, %i0
	ba .LBB107_7
	st %i0, [%fp+-24]
.LBB107_9:
	ba .LBB107_14
	nop
.LBB107_10:
	ba .LBB107_11
	nop
.LBB107_11:                             ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	add %i0, -1, %i1
	cmp	%i0, 0
	be	.LBB107_13
	st %i1, [%fp+-12]
	ba .LBB107_12
	nop
.LBB107_12:                             !   in Loop: Header=BB107_11 Depth=1
	ld [%fp+-32], %i0
	ld [%fp+-12], %i1
	ldub [%i0+%i1], %i2
	ld [%fp+-28], %i0
	ba .LBB107_11
	stb %i2, [%i0+%i1]
.LBB107_13:
	ba .LBB107_14
	nop
.LBB107_14:
	ret
	restore
.Lfunc_end107:
	.size	__cmovw, .Lfunc_end107-__cmovw
                                        ! -- End function
	.globl	__modi                          ! -- Begin function __modi
	.p2align	2
	.type	__modi,@function
__modi:                                 ! @__modi
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ld [%fp+-4], %i0
	ld [%fp+-8], %i2
	sra %i0, 31, %i1
	wr %g0, %i1, %y
	sdiv %i0, %i2, %i1
	smul %i1, %i2, %i1
	sub %i0, %i1, %i0
	ret
	restore
.Lfunc_end108:
	.size	__modi, .Lfunc_end108-__modi
                                        ! -- End function
	.globl	__uitod                         ! -- Begin function __uitod
	.p2align	2
	.type	__uitod,@function
__uitod:                                ! @__uitod
! %bb.0:
	save %sp, -96, %sp
	st %i0, [%fp+-4]
	call __floatunsidf
	ld [%fp+-4], %o0
	mov	%o0, %i0
	ret
	restore %g0, %o1, %o1
.Lfunc_end109:
	.size	__uitod, .Lfunc_end109-__uitod
                                        ! -- End function
	.globl	__uitof                         ! -- Begin function __uitof
	.p2align	2
	.type	__uitof,@function
__uitof:                                ! @__uitof
! %bb.0:
	save %sp, -96, %sp
	st %i0, [%fp+-4]
	call __floatunsisf
	ld [%fp+-4], %o0
	ret
	restore %g0, %o0, %o0
.Lfunc_end110:
	.size	__uitof, .Lfunc_end110-__uitof
                                        ! -- End function
	.globl	__ulltod                        ! -- Begin function __ulltod
	.p2align	2
	.type	__ulltod,@function
__ulltod:                               ! @__ulltod
! %bb.0:
	save %sp, -104, %sp
	mov	%i1, %i2
	mov	%i0, %i3
                                        ! kill: def $i1 killed $i2
                                        ! kill: def $i0 killed $i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	call __floatundidf
	mov	%i1, %o1
	mov	%o0, %i0
	ret
	restore %g0, %o1, %o1
.Lfunc_end111:
	.size	__ulltod, .Lfunc_end111-__ulltod
                                        ! -- End function
	.globl	__ulltof                        ! -- Begin function __ulltof
	.p2align	2
	.type	__ulltof,@function
__ulltof:                               ! @__ulltof
! %bb.0:
	save %sp, -104, %sp
	mov	%i1, %i2
	mov	%i0, %i3
                                        ! kill: def $i1 killed $i2
                                        ! kill: def $i0 killed $i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	call __floatundisf
	mov	%i1, %o1
	ret
	restore %g0, %o0, %o0
.Lfunc_end112:
	.size	__ulltof, .Lfunc_end112-__ulltof
                                        ! -- End function
	.globl	__umodi                         ! -- Begin function __umodi
	.p2align	2
	.type	__umodi,@function
__umodi:                                ! @__umodi
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ld [%fp+-4], %i0
	ld [%fp+-8], %i2
	wr %g0, %g0, %y
	udiv %i0, %i2, %i1
	smul %i1, %i2, %i1
	sub %i0, %i1, %i0
	ret
	restore
.Lfunc_end113:
	.size	__umodi, .Lfunc_end113-__umodi
                                        ! -- End function
	.globl	__clzhi2                        ! -- Begin function __clzhi2
	.p2align	2
	.type	__clzhi2,@function
__clzhi2:                               ! @__clzhi2
! %bb.0:
	save %sp, -104, %sp
                                        ! kill: def $i1 killed $i0
	sth %i0, [%fp+-2]
	ba .LBB114_1
	st %g0, [%fp+-8]
.LBB114_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-8], %i0
	cmp	%i0, 15
	bg	.LBB114_6
	nop
	ba .LBB114_2
	nop
.LBB114_2:                              !   in Loop: Header=BB114_1 Depth=1
	lduh [%fp+-2], %i0
	ld [%fp+-8], %i2
	mov	15, %i1
	sub %i1, %i2, %i1
	srl %i0, %i1, %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB114_4
	nop
	ba .LBB114_3
	nop
.LBB114_3:
	ba .LBB114_6
	nop
.LBB114_4:                              !   in Loop: Header=BB114_1 Depth=1
	ba .LBB114_5
	nop
.LBB114_5:                              !   in Loop: Header=BB114_1 Depth=1
	ld [%fp+-8], %i0
	add %i0, 1, %i0
	ba .LBB114_1
	st %i0, [%fp+-8]
.LBB114_6:
	ld [%fp+-8], %i0
	ret
	restore
.Lfunc_end114:
	.size	__clzhi2, .Lfunc_end114-__clzhi2
                                        ! -- End function
	.globl	__ctzhi2                        ! -- Begin function __ctzhi2
	.p2align	2
	.type	__ctzhi2,@function
__ctzhi2:                               ! @__ctzhi2
! %bb.0:
	save %sp, -104, %sp
                                        ! kill: def $i1 killed $i0
	sth %i0, [%fp+-2]
	ba .LBB115_1
	st %g0, [%fp+-8]
.LBB115_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-8], %i0
	cmp	%i0, 15
	bg	.LBB115_6
	nop
	ba .LBB115_2
	nop
.LBB115_2:                              !   in Loop: Header=BB115_1 Depth=1
	lduh [%fp+-2], %i0
	ld [%fp+-8], %i1
	srl %i0, %i1, %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB115_4
	nop
	ba .LBB115_3
	nop
.LBB115_3:
	ba .LBB115_6
	nop
.LBB115_4:                              !   in Loop: Header=BB115_1 Depth=1
	ba .LBB115_5
	nop
.LBB115_5:                              !   in Loop: Header=BB115_1 Depth=1
	ld [%fp+-8], %i0
	add %i0, 1, %i0
	ba .LBB115_1
	st %i0, [%fp+-8]
.LBB115_6:
	ld [%fp+-8], %i0
	ret
	restore
.Lfunc_end115:
	.size	__ctzhi2, .Lfunc_end115-__ctzhi2
                                        ! -- End function
	.globl	__fixunssfsi                    ! -- Begin function __fixunssfsi
	.p2align	2
	.type	__fixunssfsi,@function
__fixunssfsi:                           ! @__fixunssfsi
! %bb.0:
	save %sp, -104, %sp
                                        ! kill: def $i1 killed $i0
	st %i0, [%fp+-8]
	ld [%fp+-8], %o0
	call __gesf2
	sethi 1163264, %o1
	cmp	%o0, 0
	bl	.LBB116_2
	nop
	ba .LBB116_1
	nop
.LBB116_1:
	ld [%fp+-8], %o0
	call __addsf3
	sethi 3260416, %o1
	call __fixsfsi
	nop
	sethi 32, %i0
	add %o0, %i0, %i0
	ba .LBB116_3
	st %i0, [%fp+-4]
.LBB116_2:
	call __fixsfsi
	ld [%fp+-8], %o0
	ba .LBB116_3
	st %o0, [%fp+-4]
.LBB116_3:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end116:
	.size	__fixunssfsi, .Lfunc_end116-__fixunssfsi
                                        ! -- End function
	.globl	__parityhi2                     ! -- Begin function __parityhi2
	.p2align	2
	.type	__parityhi2,@function
__parityhi2:                            ! @__parityhi2
! %bb.0:
	save %sp, -104, %sp
                                        ! kill: def $i1 killed $i0
	sth %i0, [%fp+-2]
	st %g0, [%fp+-12]
	ba .LBB117_1
	st %g0, [%fp+-8]
.LBB117_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-8], %i0
	cmp	%i0, 15
	bg	.LBB117_6
	nop
	ba .LBB117_2
	nop
.LBB117_2:                              !   in Loop: Header=BB117_1 Depth=1
	lduh [%fp+-2], %i0
	ld [%fp+-8], %i1
	srl %i0, %i1, %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB117_4
	nop
	ba .LBB117_3
	nop
.LBB117_3:                              !   in Loop: Header=BB117_1 Depth=1
	ld [%fp+-12], %i0
	add %i0, 1, %i0
	ba .LBB117_4
	st %i0, [%fp+-12]
.LBB117_4:                              !   in Loop: Header=BB117_1 Depth=1
	ba .LBB117_5
	nop
.LBB117_5:                              !   in Loop: Header=BB117_1 Depth=1
	ld [%fp+-8], %i0
	add %i0, 1, %i0
	ba .LBB117_1
	st %i0, [%fp+-8]
.LBB117_6:
	ld [%fp+-12], %i0
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end117:
	.size	__parityhi2, .Lfunc_end117-__parityhi2
                                        ! -- End function
	.globl	__popcounthi2                   ! -- Begin function __popcounthi2
	.p2align	2
	.type	__popcounthi2,@function
__popcounthi2:                          ! @__popcounthi2
! %bb.0:
	save %sp, -104, %sp
                                        ! kill: def $i1 killed $i0
	sth %i0, [%fp+-2]
	st %g0, [%fp+-12]
	ba .LBB118_1
	st %g0, [%fp+-8]
.LBB118_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-8], %i0
	cmp	%i0, 15
	bg	.LBB118_6
	nop
	ba .LBB118_2
	nop
.LBB118_2:                              !   in Loop: Header=BB118_1 Depth=1
	lduh [%fp+-2], %i0
	ld [%fp+-8], %i1
	srl %i0, %i1, %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB118_4
	nop
	ba .LBB118_3
	nop
.LBB118_3:                              !   in Loop: Header=BB118_1 Depth=1
	ld [%fp+-12], %i0
	add %i0, 1, %i0
	ba .LBB118_4
	st %i0, [%fp+-12]
.LBB118_4:                              !   in Loop: Header=BB118_1 Depth=1
	ba .LBB118_5
	nop
.LBB118_5:                              !   in Loop: Header=BB118_1 Depth=1
	ld [%fp+-8], %i0
	add %i0, 1, %i0
	ba .LBB118_1
	st %i0, [%fp+-8]
.LBB118_6:
	ld [%fp+-12], %i0
	ret
	restore
.Lfunc_end118:
	.size	__popcounthi2, .Lfunc_end118-__popcounthi2
                                        ! -- End function
	.globl	__mulsi3_iq2000                 ! -- Begin function __mulsi3_iq2000
	.p2align	2
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        ! @__mulsi3_iq2000
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ba .LBB119_1
	st %g0, [%fp+-12]
.LBB119_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	cmp	%i0, 0
	be	.LBB119_5
	nop
	ba .LBB119_2
	nop
.LBB119_2:                              !   in Loop: Header=BB119_1 Depth=1
	ldub [%fp+-4], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB119_4
	nop
	ba .LBB119_3
	nop
.LBB119_3:                              !   in Loop: Header=BB119_1 Depth=1
	ld [%fp+-8], %i1
	ld [%fp+-12], %i0
	add %i0, %i1, %i0
	ba .LBB119_4
	st %i0, [%fp+-12]
.LBB119_4:                              !   in Loop: Header=BB119_1 Depth=1
	ld [%fp+-4], %i0
	srl %i0, 1, %i0
	st %i0, [%fp+-4]
	ld [%fp+-8], %i0
	sll %i0, 1, %i0
	ba .LBB119_1
	st %i0, [%fp+-8]
.LBB119_5:
	ld [%fp+-12], %i0
	ret
	restore
.Lfunc_end119:
	.size	__mulsi3_iq2000, .Lfunc_end119-__mulsi3_iq2000
                                        ! -- End function
	.globl	__mulsi3_lm32                   ! -- Begin function __mulsi3_lm32
	.p2align	2
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          ! @__mulsi3_lm32
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	st %g0, [%fp+-16]
	ld [%fp+-8], %i0
	cmp	%i0, 0
	bne	.LBB120_2
	nop
	ba .LBB120_1
	nop
.LBB120_1:
	ba .LBB120_8
	st %g0, [%fp+-4]
.LBB120_2:
	ba .LBB120_3
	nop
.LBB120_3:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB120_7
	nop
	ba .LBB120_4
	nop
.LBB120_4:                              !   in Loop: Header=BB120_3 Depth=1
	ldub [%fp+-12], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB120_6
	nop
	ba .LBB120_5
	nop
.LBB120_5:                              !   in Loop: Header=BB120_3 Depth=1
	ld [%fp+-8], %i1
	ld [%fp+-16], %i0
	add %i0, %i1, %i0
	ba .LBB120_6
	st %i0, [%fp+-16]
.LBB120_6:                              !   in Loop: Header=BB120_3 Depth=1
	ld [%fp+-8], %i0
	sll %i0, 1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-12], %i0
	srl %i0, 1, %i0
	ba .LBB120_3
	st %i0, [%fp+-12]
.LBB120_7:
	ld [%fp+-16], %i0
	ba .LBB120_8
	st %i0, [%fp+-4]
.LBB120_8:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end120:
	.size	__mulsi3_lm32, .Lfunc_end120-__mulsi3_lm32
                                        ! -- End function
	.globl	__udivmodsi4                    ! -- Begin function __udivmodsi4
	.p2align	2
	.type	__udivmodsi4,@function
__udivmodsi4:                           ! @__udivmodsi4
! %bb.0:
	save %sp, -128, %sp
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	st %i2, [%fp+-16]
	mov	1, %i0
	st %i0, [%fp+-20]
	ba .LBB121_1
	st %g0, [%fp+-24]
.LBB121_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i1
	ld [%fp+-8], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bcc	.LBB121_6
	st %i0, [%fp+-28]
	ba .LBB121_2
	nop
.LBB121_2:                              !   in Loop: Header=BB121_1 Depth=1
	ld [%fp+-20], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB121_6
	st %i0, [%fp+-28]
	ba .LBB121_3
	nop
.LBB121_3:                              !   in Loop: Header=BB121_1 Depth=1
	add %fp, -12, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	and %i0, 128, %i1
	mov	%g0, %i0
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 0
	be	.LBB121_5
	st %i0, [%fp+-32]
! %bb.4:                                !   in Loop: Header=BB121_1 Depth=1
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
.LBB121_5:                              !   in Loop: Header=BB121_1 Depth=1
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	ba .LBB121_6
	st %i0, [%fp+-28]
.LBB121_6:                              !   in Loop: Header=BB121_1 Depth=1
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB121_8
	nop
	ba .LBB121_7
	nop
.LBB121_7:                              !   in Loop: Header=BB121_1 Depth=1
	ld [%fp+-12], %i0
	sll %i0, 1, %i0
	st %i0, [%fp+-12]
	ld [%fp+-20], %i0
	sll %i0, 1, %i0
	ba .LBB121_1
	st %i0, [%fp+-20]
.LBB121_8:
	ba .LBB121_9
	nop
.LBB121_9:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-20], %i0
	cmp	%i0, 0
	be	.LBB121_13
	nop
	ba .LBB121_10
	nop
.LBB121_10:                             !   in Loop: Header=BB121_9 Depth=1
	ld [%fp+-8], %i0
	ld [%fp+-12], %i1
	cmp	%i0, %i1
	bcs	.LBB121_12
	nop
	ba .LBB121_11
	nop
.LBB121_11:                             !   in Loop: Header=BB121_9 Depth=1
	ld [%fp+-12], %i1
	ld [%fp+-8], %i0
	sub %i0, %i1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-20], %i1
	ld [%fp+-24], %i0
	or %i0, %i1, %i0
	ba .LBB121_12
	st %i0, [%fp+-24]
.LBB121_12:                             !   in Loop: Header=BB121_9 Depth=1
	ld [%fp+-20], %i0
	srl %i0, 1, %i0
	st %i0, [%fp+-20]
	ld [%fp+-12], %i0
	srl %i0, 1, %i0
	ba .LBB121_9
	st %i0, [%fp+-12]
.LBB121_13:
	ld [%fp+-16], %i0
	cmp	%i0, 0
	be	.LBB121_15
	nop
	ba .LBB121_14
	nop
.LBB121_14:
	ld [%fp+-8], %i0
	ba .LBB121_16
	st %i0, [%fp+-4]
.LBB121_15:
	ld [%fp+-24], %i0
	ba .LBB121_16
	st %i0, [%fp+-4]
.LBB121_16:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end121:
	.size	__udivmodsi4, .Lfunc_end121-__udivmodsi4
                                        ! -- End function
	.globl	__mspabi_cmpf                   ! -- Begin function __mspabi_cmpf
	.p2align	2
	.type	__mspabi_cmpf,@function
__mspabi_cmpf:                          ! @__mspabi_cmpf
! %bb.0:
	save %sp, -104, %sp
                                        ! kill: def $i2 killed $i1
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	ld [%fp+-8], %o0
	call __ltsf2
	ld [%fp+-12], %o1
	cmp	%o0, -1
	bg	.LBB122_2
	nop
	ba .LBB122_1
	nop
.LBB122_1:
	mov	-1, %i0
	ba .LBB122_5
	st %i0, [%fp+-4]
.LBB122_2:
	ld [%fp+-8], %o0
	call __gtsf2
	ld [%fp+-12], %o1
	cmp	%o0, 1
	bl	.LBB122_4
	nop
	ba .LBB122_3
	nop
.LBB122_3:
	mov	1, %i0
	ba .LBB122_5
	st %i0, [%fp+-4]
.LBB122_4:
	ba .LBB122_5
	st %g0, [%fp+-4]
.LBB122_5:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end122:
	.size	__mspabi_cmpf, .Lfunc_end122-__mspabi_cmpf
                                        ! -- End function
	.globl	__mspabi_cmpd                   ! -- Begin function __mspabi_cmpd
	.p2align	2
	.type	__mspabi_cmpd,@function
__mspabi_cmpd:                          ! @__mspabi_cmpd
! %bb.0:
	save %sp, -120, %sp
	mov	%i1, %i4
	mov	%i0, %i5
                                        ! kill: def $i0 killed $i3
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i1 killed $i4
                                        ! kill: def $i0 killed $i5
                                        ! implicit-def: $i0_i1
	mov	%i5, %i0
	mov	%i4, %i1
	std %i0, [%fp+-16]
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%i3, %i1
	std %i0, [%fp+-24]
	ldd [%fp+-16], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	ldd [%fp+-24], %i0
	mov	%i0, %o2
	call __ltdf2
	mov	%i1, %o3
	cmp	%o0, -1
	bg	.LBB123_2
	nop
	ba .LBB123_1
	nop
.LBB123_1:
	mov	-1, %i0
	ba .LBB123_5
	st %i0, [%fp+-4]
.LBB123_2:
	ldd [%fp+-16], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	ldd [%fp+-24], %i0
	mov	%i0, %o2
	call __gtdf2
	mov	%i1, %o3
	cmp	%o0, 1
	bl	.LBB123_4
	nop
	ba .LBB123_3
	nop
.LBB123_3:
	mov	1, %i0
	ba .LBB123_5
	st %i0, [%fp+-4]
.LBB123_4:
	ba .LBB123_5
	st %g0, [%fp+-4]
.LBB123_5:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end123:
	.size	__mspabi_cmpd, .Lfunc_end123-__mspabi_cmpd
                                        ! -- End function
	.globl	__mspabi_mpysll                 ! -- Begin function __mspabi_mpysll
	.p2align	2
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        ! @__mspabi_mpysll
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ld [%fp+-4], %i0
	ld [%fp+-8], %i1
	smul %i0, %i1, %i0
	rd %y, %i1
	ret
	restore
.Lfunc_end124:
	.size	__mspabi_mpysll, .Lfunc_end124-__mspabi_mpysll
                                        ! -- End function
	.globl	__mspabi_mpyull                 ! -- Begin function __mspabi_mpyull
	.p2align	2
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        ! @__mspabi_mpyull
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ld [%fp+-4], %i0
	ld [%fp+-8], %i1
	umul %i0, %i1, %i0
	rd %y, %i1
	ret
	restore
.Lfunc_end125:
	.size	__mspabi_mpyull, .Lfunc_end125-__mspabi_mpyull
                                        ! -- End function
	.globl	__mulhi3                        ! -- Begin function __mulhi3
	.p2align	2
	.type	__mulhi3,@function
__mulhi3:                               ! @__mulhi3
! %bb.0:
	save %sp, -128, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %g0, [%fp+-16]
	st %g0, [%fp+-20]
	ld [%fp+-8], %i0
	cmp	%i0, -1
	bg	.LBB126_2
	nop
	ba .LBB126_1
	nop
.LBB126_1:
	ld [%fp+-8], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	st %i0, [%fp+-8]
	mov	1, %i0
	ba .LBB126_2
	st %i0, [%fp+-16]
.LBB126_2:
	mov	%g0, %i0
	ba .LBB126_3
	stb %i0, [%fp+-9]
.LBB126_3:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-8], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB126_7
	st %i0, [%fp+-24]
	ba .LBB126_4
	nop
.LBB126_4:                              !   in Loop: Header=BB126_3 Depth=1
	ldsb [%fp+-9], %i1
	mov	%g0, %i0
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 32
	bcs	.LBB126_6
	st %i0, [%fp+-28]
! %bb.5:                                !   in Loop: Header=BB126_3 Depth=1
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
.LBB126_6:                              !   in Loop: Header=BB126_3 Depth=1
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	ba .LBB126_7
	st %i0, [%fp+-24]
.LBB126_7:                              !   in Loop: Header=BB126_3 Depth=1
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB126_12
	nop
	ba .LBB126_8
	nop
.LBB126_8:                              !   in Loop: Header=BB126_3 Depth=1
	ldub [%fp+-8], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB126_10
	nop
	ba .LBB126_9
	nop
.LBB126_9:                              !   in Loop: Header=BB126_3 Depth=1
	ld [%fp+-4], %i1
	ld [%fp+-20], %i0
	add %i0, %i1, %i0
	ba .LBB126_10
	st %i0, [%fp+-20]
.LBB126_10:                             !   in Loop: Header=BB126_3 Depth=1
	ld [%fp+-4], %i0
	sll %i0, 1, %i0
	st %i0, [%fp+-4]
	ld [%fp+-8], %i0
	sra %i0, 1, %i0
	ba .LBB126_11
	st %i0, [%fp+-8]
.LBB126_11:                             !   in Loop: Header=BB126_3 Depth=1
	ldub [%fp+-9], %i0
	add %i0, 1, %i0
	ba .LBB126_3
	stb %i0, [%fp+-9]
.LBB126_12:
	ld [%fp+-16], %i0
	cmp	%i0, 0
	be	.LBB126_14
	nop
	ba .LBB126_13
	nop
.LBB126_13:
	ld [%fp+-20], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB126_15
	st %i0, [%fp+-36]
.LBB126_14:
	ld [%fp+-20], %i0
	ba .LBB126_15
	st %i0, [%fp+-36]
.LBB126_15:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end126:
	.size	__mulhi3, .Lfunc_end126-__mulhi3
                                        ! -- End function
	.globl	__divsi3                        ! -- Begin function __divsi3
	.p2align	2
	.type	__divsi3,@function
__divsi3:                               ! @__divsi3
! %bb.0:
	save %sp, -128, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %g0, [%fp+-12]
	ld [%fp+-4], %i0
	cmp	%i0, -1
	bg	.LBB127_4
	nop
	ba .LBB127_1
	nop
.LBB127_1:
	ld [%fp+-4], %i1
	mov	%g0, %i0
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
	sub %i0, %i1, %i0
	st %i0, [%fp+-4]
	ld [%fp+-12], %i1
	mov	1, %i0
	cmp	%i1, 0
	be	.LBB127_3
	st %i0, [%fp+-20]
! %bb.2:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
.LBB127_3:
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	ba .LBB127_4
	st %i0, [%fp+-12]
.LBB127_4:
	ld [%fp+-8], %i0
	cmp	%i0, -1
	bg	.LBB127_8
	nop
	ba .LBB127_5
	nop
.LBB127_5:
	ld [%fp+-8], %i1
	mov	%g0, %i0
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
	sub %i0, %i1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-12], %i1
	mov	1, %i0
	cmp	%i1, 0
	be	.LBB127_7
	st %i0, [%fp+-28]
! %bb.6:
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
.LBB127_7:
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	ba .LBB127_8
	st %i0, [%fp+-12]
.LBB127_8:
	ld [%fp+-4], %o0
	ld [%fp+-8], %o1
	call __udivmodsi4
	mov	%g0, %o2
	st %o0, [%fp+-16]
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB127_10
	nop
	ba .LBB127_9
	nop
.LBB127_9:
	ld [%fp+-16], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB127_10
	st %i0, [%fp+-16]
.LBB127_10:
	ld [%fp+-16], %i0
	ret
	restore
.Lfunc_end127:
	.size	__divsi3, .Lfunc_end127-__divsi3
                                        ! -- End function
	.globl	__modsi3                        ! -- Begin function __modsi3
	.p2align	2
	.type	__modsi3,@function
__modsi3:                               ! @__modsi3
! %bb.0:
	save %sp, -112, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %g0, [%fp+-12]
	ld [%fp+-4], %i0
	cmp	%i0, -1
	bg	.LBB128_2
	nop
	ba .LBB128_1
	nop
.LBB128_1:
	ld [%fp+-4], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	st %i0, [%fp+-4]
	mov	1, %i0
	ba .LBB128_2
	st %i0, [%fp+-12]
.LBB128_2:
	ld [%fp+-8], %i0
	cmp	%i0, -1
	bg	.LBB128_4
	nop
	ba .LBB128_3
	nop
.LBB128_3:
	ld [%fp+-8], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB128_4
	st %i0, [%fp+-8]
.LBB128_4:
	ld [%fp+-4], %o0
	ld [%fp+-8], %o1
	call __udivmodsi4
	mov	1, %o2
	st %o0, [%fp+-16]
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB128_6
	nop
	ba .LBB128_5
	nop
.LBB128_5:
	ld [%fp+-16], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB128_6
	st %i0, [%fp+-16]
.LBB128_6:
	ld [%fp+-16], %i0
	ret
	restore
.Lfunc_end128:
	.size	__modsi3, .Lfunc_end128-__modsi3
                                        ! -- End function
	.globl	__udivmodhi4                    ! -- Begin function __udivmodhi4
	.p2align	2
	.type	__udivmodhi4,@function
__udivmodhi4:                           ! @__udivmodhi4
! %bb.0:
	save %sp, -120, %sp
                                        ! kill: def $i3 killed $i1
                                        ! kill: def $i3 killed $i0
	sth %i0, [%fp+-4]
	sth %i1, [%fp+-6]
	st %i2, [%fp+-12]
	mov	1, %i0
	sth %i0, [%fp+-14]
	mov	%g0, %i0
	ba .LBB129_1
	sth %i0, [%fp+-16]
.LBB129_1:                              ! =>This Inner Loop Header: Depth=1
	lduh [%fp+-6], %i1
	lduh [%fp+-4], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bge	.LBB129_6
	st %i0, [%fp+-20]
	ba .LBB129_2
	nop
.LBB129_2:                              !   in Loop: Header=BB129_1 Depth=1
	lduh [%fp+-14], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB129_6
	st %i0, [%fp+-20]
	ba .LBB129_3
	nop
.LBB129_3:                              !   in Loop: Header=BB129_1 Depth=1
	lduh [%fp+-6], %i0
	sethi 32, %i1
	and %i0, %i1, %i1
	mov	%g0, %i0
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 0
	be	.LBB129_5
	st %i0, [%fp+-24]
! %bb.4:                                !   in Loop: Header=BB129_1 Depth=1
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
.LBB129_5:                              !   in Loop: Header=BB129_1 Depth=1
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	ba .LBB129_6
	st %i0, [%fp+-20]
.LBB129_6:                              !   in Loop: Header=BB129_1 Depth=1
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB129_8
	nop
	ba .LBB129_7
	nop
.LBB129_7:                              !   in Loop: Header=BB129_1 Depth=1
	lduh [%fp+-6], %i0
	sll %i0, 1, %i0
	sth %i0, [%fp+-6]
	lduh [%fp+-14], %i0
	sll %i0, 1, %i0
	ba .LBB129_1
	sth %i0, [%fp+-14]
.LBB129_8:
	ba .LBB129_9
	nop
.LBB129_9:                              ! =>This Inner Loop Header: Depth=1
	lduh [%fp+-14], %i0
	cmp	%i0, 0
	be	.LBB129_13
	nop
	ba .LBB129_10
	nop
.LBB129_10:                             !   in Loop: Header=BB129_9 Depth=1
	lduh [%fp+-4], %i0
	lduh [%fp+-6], %i1
	cmp	%i0, %i1
	bl	.LBB129_12
	nop
	ba .LBB129_11
	nop
.LBB129_11:                             !   in Loop: Header=BB129_9 Depth=1
	lduh [%fp+-6], %i1
	lduh [%fp+-4], %i0
	sub %i0, %i1, %i0
	sth %i0, [%fp+-4]
	lduh [%fp+-14], %i1
	lduh [%fp+-16], %i0
	or %i0, %i1, %i0
	ba .LBB129_12
	sth %i0, [%fp+-16]
.LBB129_12:                             !   in Loop: Header=BB129_9 Depth=1
	lduh [%fp+-14], %i0
	srl %i0, 1, %i0
	sth %i0, [%fp+-14]
	lduh [%fp+-6], %i0
	srl %i0, 1, %i0
	ba .LBB129_9
	sth %i0, [%fp+-6]
.LBB129_13:
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB129_15
	nop
	ba .LBB129_14
	nop
.LBB129_14:
	lduh [%fp+-4], %i0
	ba .LBB129_16
	sth %i0, [%fp+-2]
.LBB129_15:
	lduh [%fp+-16], %i0
	ba .LBB129_16
	sth %i0, [%fp+-2]
.LBB129_16:
	lduh [%fp+-2], %i0
	ret
	restore
.Lfunc_end129:
	.size	__udivmodhi4, .Lfunc_end129-__udivmodhi4
                                        ! -- End function
	.globl	__udivmodsi4_libgcc             ! -- Begin function __udivmodsi4_libgcc
	.p2align	2
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    ! @__udivmodsi4_libgcc
! %bb.0:
	save %sp, -128, %sp
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	st %i2, [%fp+-16]
	mov	1, %i0
	st %i0, [%fp+-20]
	ba .LBB130_1
	st %g0, [%fp+-24]
.LBB130_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i1
	ld [%fp+-8], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bcc	.LBB130_6
	st %i0, [%fp+-28]
	ba .LBB130_2
	nop
.LBB130_2:                              !   in Loop: Header=BB130_1 Depth=1
	ld [%fp+-20], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB130_6
	st %i0, [%fp+-28]
	ba .LBB130_3
	nop
.LBB130_3:                              !   in Loop: Header=BB130_1 Depth=1
	add %fp, -12, %i0
	or %i0, 3, %i0
	ldub [%i0], %i0
	and %i0, 128, %i1
	mov	%g0, %i0
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 0
	be	.LBB130_5
	st %i0, [%fp+-32]
! %bb.4:                                !   in Loop: Header=BB130_1 Depth=1
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
.LBB130_5:                              !   in Loop: Header=BB130_1 Depth=1
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	ba .LBB130_6
	st %i0, [%fp+-28]
.LBB130_6:                              !   in Loop: Header=BB130_1 Depth=1
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB130_8
	nop
	ba .LBB130_7
	nop
.LBB130_7:                              !   in Loop: Header=BB130_1 Depth=1
	ld [%fp+-12], %i0
	sll %i0, 1, %i0
	st %i0, [%fp+-12]
	ld [%fp+-20], %i0
	sll %i0, 1, %i0
	ba .LBB130_1
	st %i0, [%fp+-20]
.LBB130_8:
	ba .LBB130_9
	nop
.LBB130_9:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-20], %i0
	cmp	%i0, 0
	be	.LBB130_13
	nop
	ba .LBB130_10
	nop
.LBB130_10:                             !   in Loop: Header=BB130_9 Depth=1
	ld [%fp+-8], %i0
	ld [%fp+-12], %i1
	cmp	%i0, %i1
	bcs	.LBB130_12
	nop
	ba .LBB130_11
	nop
.LBB130_11:                             !   in Loop: Header=BB130_9 Depth=1
	ld [%fp+-12], %i1
	ld [%fp+-8], %i0
	sub %i0, %i1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-20], %i1
	ld [%fp+-24], %i0
	or %i0, %i1, %i0
	ba .LBB130_12
	st %i0, [%fp+-24]
.LBB130_12:                             !   in Loop: Header=BB130_9 Depth=1
	ld [%fp+-20], %i0
	srl %i0, 1, %i0
	st %i0, [%fp+-20]
	ld [%fp+-12], %i0
	srl %i0, 1, %i0
	ba .LBB130_9
	st %i0, [%fp+-12]
.LBB130_13:
	ld [%fp+-16], %i0
	cmp	%i0, 0
	be	.LBB130_15
	nop
	ba .LBB130_14
	nop
.LBB130_14:
	ld [%fp+-8], %i0
	ba .LBB130_16
	st %i0, [%fp+-4]
.LBB130_15:
	ld [%fp+-24], %i0
	ba .LBB130_16
	st %i0, [%fp+-4]
.LBB130_16:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end130:
	.size	__udivmodsi4_libgcc, .Lfunc_end130-__udivmodsi4_libgcc
                                        ! -- End function
	.globl	__ashldi3                       ! -- Begin function __ashldi3
	.p2align	2
	.type	__ashldi3,@function
__ashldi3:                              ! @__ashldi3
! %bb.0:
	save %sp, -136, %sp
	mov	%i1, %i3
	mov	%i0, %i4
                                        ! kill: def $i1 killed $i3
                                        ! kill: def $i0 killed $i4
                                        ! implicit-def: $i0_i1
	mov	%i4, %i0
	mov	%i3, %i1
	std %i0, [%fp+-16]
	st %i2, [%fp+-20]
	mov	32, %i0
	st %i0, [%fp+-24]
	ldd [%fp+-16], %i0
	std %i0, [%fp+-32]
	ldub [%fp+-20], %i0
	and %i0, 32, %i0
	cmp	%i0, 0
	be	.LBB131_2
	nop
	ba .LBB131_1
	nop
.LBB131_1:
	st %g0, [%fp+-40]
	ld [%fp+-32], %i0
	ld [%fp+-20], %i1
	add %i1, -32, %i1
	sll %i0, %i1, %i1
	add %fp, -40, %i0
	or %i0, 4, %i0
	ba .LBB131_5
	st %i1, [%i0]
.LBB131_2:
	ld [%fp+-20], %i0
	cmp	%i0, 0
	bne	.LBB131_4
	nop
	ba .LBB131_3
	nop
.LBB131_3:
	ldd [%fp+-16], %i0
	ba .LBB131_6
	std %i0, [%fp+-8]
.LBB131_4:
	ld [%fp+-32], %i0
	ld [%fp+-20], %i1
	sll %i0, %i1, %i0
	st %i0, [%fp+-40]
	add %fp, -32, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	ld [%fp+-20], %i3
	sll %i0, %i3, %i0
	ld [%fp+-32], %i1
	mov	32, %i2
	sub %i2, %i3, %i2
	srl %i1, %i2, %i1
	or %i0, %i1, %i1
	add %fp, -40, %i0
	or %i0, 4, %i0
	ba .LBB131_5
	st %i1, [%i0]
.LBB131_5:
	ldd [%fp+-40], %i0
	ba .LBB131_6
	std %i0, [%fp+-8]
.LBB131_6:
	ldd [%fp+-8], %i2
	mov	%i2, %i0
	ret
	restore %g0, %i3, %o1
.Lfunc_end131:
	.size	__ashldi3, .Lfunc_end131-__ashldi3
                                        ! -- End function
	.globl	__ashrdi3                       ! -- Begin function __ashrdi3
	.p2align	2
	.type	__ashrdi3,@function
__ashrdi3:                              ! @__ashrdi3
! %bb.0:
	save %sp, -136, %sp
	mov	%i1, %i3
	mov	%i0, %i4
                                        ! kill: def $i1 killed $i3
                                        ! kill: def $i0 killed $i4
                                        ! implicit-def: $i0_i1
	mov	%i4, %i0
	mov	%i3, %i1
	std %i0, [%fp+-16]
	st %i2, [%fp+-20]
	mov	32, %i0
	st %i0, [%fp+-24]
	ldd [%fp+-16], %i0
	std %i0, [%fp+-32]
	ldub [%fp+-20], %i0
	and %i0, 32, %i0
	cmp	%i0, 0
	be	.LBB132_2
	nop
	ba .LBB132_1
	nop
.LBB132_1:
	add %fp, -32, %i0
	or %i0, 4, %i0
	ld [%i0], %i1
	sra %i1, 31, %i2
	add %fp, -40, %i1
	or %i1, 4, %i1
	st %i2, [%i1]
	ld [%i0], %i0
	ld [%fp+-20], %i1
	add %i1, -32, %i1
	sra %i0, %i1, %i0
	ba .LBB132_5
	st %i0, [%fp+-40]
.LBB132_2:
	ld [%fp+-20], %i0
	cmp	%i0, 0
	bne	.LBB132_4
	nop
	ba .LBB132_3
	nop
.LBB132_3:
	ldd [%fp+-16], %i0
	ba .LBB132_6
	std %i0, [%fp+-8]
.LBB132_4:
	add %fp, -32, %i0
	or %i0, 4, %i0
	ld [%i0], %i1
	ld [%fp+-20], %i2
	sra %i1, %i2, %i2
	add %fp, -40, %i1
	or %i1, 4, %i1
	st %i2, [%i1]
	ld [%i0], %i0
	ld [%fp+-20], %i2
	mov	32, %i1
	sub %i1, %i2, %i1
	sll %i0, %i1, %i0
	ld [%fp+-32], %i1
	srl %i1, %i2, %i1
	or %i0, %i1, %i0
	ba .LBB132_5
	st %i0, [%fp+-40]
.LBB132_5:
	ldd [%fp+-40], %i0
	ba .LBB132_6
	std %i0, [%fp+-8]
.LBB132_6:
	ldd [%fp+-8], %i2
	mov	%i2, %i0
	ret
	restore %g0, %i3, %o1
.Lfunc_end132:
	.size	__ashrdi3, .Lfunc_end132-__ashrdi3
                                        ! -- End function
	.globl	__bswapdi2                      ! -- Begin function __bswapdi2
	.p2align	2
	.type	__bswapdi2,@function
__bswapdi2:                             ! @__bswapdi2
! %bb.0:
	save %sp, -104, %sp
	mov	%i1, %i2
	mov	%i0, %i3
                                        ! kill: def $i1 killed $i2
                                        ! kill: def $i0 killed $i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	ldd [%fp+-8], %i0
	mov	%i0, %i2
                                        ! kill: def $i1 killed $i1 killed $i0_i1
	srl %i1, 24, %i0
	sethi 16320, %i4
	and %i1, %i4, %i3
	srl %i3, 8, %i3
	or %i0, %i3, %i0
	sethi 63, %i3
	or %i3, 768, %i3
	and %i1, %i3, %i5
	sll %i5, 8, %i5
	or %i0, %i5, %i0
	sll %i1, 24, %i1
	or %i0, %i1, %i0
	srl %i2, 24, %i1
	and %i2, %i4, %i4
	srl %i4, 8, %i4
	or %i1, %i4, %i1
	and %i2, %i3, %i3
	sll %i3, 8, %i3
	or %i1, %i3, %i1
	sll %i2, 24, %i2
	or %i1, %i2, %i1
	ret
	restore
.Lfunc_end133:
	.size	__bswapdi2, .Lfunc_end133-__bswapdi2
                                        ! -- End function
	.globl	__bswapsi2                      ! -- Begin function __bswapsi2
	.p2align	2
	.type	__bswapsi2,@function
__bswapsi2:                             ! @__bswapsi2
! %bb.0:
	save %sp, -96, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i1
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
	ret
	restore
.Lfunc_end134:
	.size	__bswapsi2, .Lfunc_end134-__bswapsi2
                                        ! -- End function
	.globl	__clzsi2                        ! -- Begin function __clzsi2
	.p2align	2
	.type	__clzsi2,@function
__clzsi2:                               ! @__clzsi2
! %bb.0:
	save %sp, -152, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	st %i0, [%fp+-8]
	add %fp, -8, %i0
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
	or %i0, 2, %i0
	lduh [%i0], %i0
	sll %i0, 16, %i1
	mov	%g0, %i0
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
	mov	1, %i0
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	be	.LBB135_2
	st %i0, [%fp+-20]
! %bb.1:
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
.LBB135_2:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	ld [%fp+-32], %i1                       ! 4-byte Folded Reload
	ld [%fp+-20], %i2                       ! 4-byte Folded Reload
	sll %i2, 4, %i2
	st %i2, [%fp+-12]
	ld [%fp+-12], %i3
	mov	16, %i2
	sub %i2, %i3, %i3
	ld [%fp+-8], %i2
	srl %i2, %i3, %i2
	st %i2, [%fp+-8]
	ld [%fp+-12], %i2
	st %i2, [%fp+-16]
	or %i1, 1, %i1
	ldub [%i1], %i1
	sll %i1, 8, %i1
	cmp	%i1, 0
	be	.LBB135_4
	st %i0, [%fp+-36]
! %bb.3:
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
.LBB135_4:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	ld [%fp+-36], %i1                       ! 4-byte Folded Reload
	sll %i1, 3, %i1
	st %i1, [%fp+-12]
	ld [%fp+-12], %i2
	mov	8, %i1
	sub %i1, %i2, %i2
	ld [%fp+-8], %i1
	srl %i1, %i2, %i1
	st %i1, [%fp+-8]
	ld [%fp+-12], %i2
	ld [%fp+-16], %i1
	add %i1, %i2, %i1
	st %i1, [%fp+-16]
	ld [%fp+-8], %i1
	and %i1, 240, %i1
	cmp	%i1, 0
	be	.LBB135_6
	st %i0, [%fp+-40]
! %bb.5:
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-40]                       ! 4-byte Folded Spill
.LBB135_6:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	ld [%fp+-40], %i1                       ! 4-byte Folded Reload
	sll %i1, 2, %i1
	st %i1, [%fp+-12]
	ld [%fp+-12], %i2
	mov	4, %i1
	sub %i1, %i2, %i2
	ld [%fp+-8], %i1
	srl %i1, %i2, %i1
	st %i1, [%fp+-8]
	ld [%fp+-12], %i2
	ld [%fp+-16], %i1
	add %i1, %i2, %i1
	st %i1, [%fp+-16]
	ld [%fp+-8], %i1
	and %i1, 12, %i1
	cmp	%i1, 0
	be	.LBB135_8
	st %i0, [%fp+-44]
! %bb.7:
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-44]                       ! 4-byte Folded Spill
.LBB135_8:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	ld [%fp+-44], %i1                       ! 4-byte Folded Reload
	sll %i1, 1, %i1
	st %i1, [%fp+-12]
	ld [%fp+-12], %i1
	mov	2, %i2
	sub %i2, %i1, %i3
	ld [%fp+-8], %i1
	srl %i1, %i3, %i1
	st %i1, [%fp+-8]
	ld [%fp+-12], %i3
	ld [%fp+-16], %i1
	add %i1, %i3, %i1
	st %i1, [%fp+-16]
	ld [%fp+-16], %i1
	st %i1, [%fp+-56]                       ! 4-byte Folded Spill
	ld [%fp+-8], %i1
	sub %i2, %i1, %i2
	st %i2, [%fp+-52]                       ! 4-byte Folded Spill
	and %i1, 2, %i1
	cmp	%i1, 0
	be	.LBB135_10
	st %i0, [%fp+-48]
! %bb.9:
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-48]                       ! 4-byte Folded Spill
.LBB135_10:
	ld [%fp+-56], %i0                       ! 4-byte Folded Reload
	ld [%fp+-52], %i1                       ! 4-byte Folded Reload
	ld [%fp+-28], %i2                       ! 4-byte Folded Reload
	ld [%fp+-48], %i3                       ! 4-byte Folded Reload
	sub %i2, %i3, %i2
	and %i1, %i2, %i1
	ret
	restore %i0, %i1, %o0
.Lfunc_end135:
	.size	__clzsi2, .Lfunc_end135-__clzsi2
                                        ! -- End function
	.globl	__cmpdi2                        ! -- Begin function __cmpdi2
	.p2align	2
	.type	__cmpdi2,@function
__cmpdi2:                               ! @__cmpdi2
! %bb.0:
	save %sp, -136, %sp
	mov	%i1, %i4
	mov	%i0, %i5
                                        ! kill: def $i0 killed $i3
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i1 killed $i4
                                        ! kill: def $i0 killed $i5
                                        ! implicit-def: $i0_i1
	mov	%i5, %i0
	mov	%i4, %i1
	std %i0, [%fp+-16]
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%i3, %i1
	std %i0, [%fp+-24]
	ldd [%fp+-16], %i0
	std %i0, [%fp+-32]
	ldd [%fp+-24], %i0
	std %i0, [%fp+-40]
	add %fp, -32, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	add %fp, -40, %i1
	or %i1, 4, %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	bge	.LBB136_2
	nop
	ba .LBB136_1
	nop
.LBB136_1:
	ba .LBB136_9
	st %g0, [%fp+-4]
.LBB136_2:
	add %fp, -32, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	add %fp, -40, %i1
	or %i1, 4, %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	ble	.LBB136_4
	nop
	ba .LBB136_3
	nop
.LBB136_3:
	mov	2, %i0
	ba .LBB136_9
	st %i0, [%fp+-4]
.LBB136_4:
	ld [%fp+-32], %i0
	ld [%fp+-40], %i1
	cmp	%i0, %i1
	bcc	.LBB136_6
	nop
	ba .LBB136_5
	nop
.LBB136_5:
	ba .LBB136_9
	st %g0, [%fp+-4]
.LBB136_6:
	ld [%fp+-32], %i0
	ld [%fp+-40], %i1
	cmp	%i0, %i1
	bleu	.LBB136_8
	nop
	ba .LBB136_7
	nop
.LBB136_7:
	mov	2, %i0
	ba .LBB136_9
	st %i0, [%fp+-4]
.LBB136_8:
	mov	1, %i0
	ba .LBB136_9
	st %i0, [%fp+-4]
.LBB136_9:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end136:
	.size	__cmpdi2, .Lfunc_end136-__cmpdi2
                                        ! -- End function
	.globl	__aeabi_lcmp                    ! -- Begin function __aeabi_lcmp
	.p2align	2
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           ! @__aeabi_lcmp
! %bb.0:
	save %sp, -112, %sp
	mov	%i1, %i4
	mov	%i0, %i5
                                        ! kill: def $i0 killed $i3
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i1 killed $i4
                                        ! kill: def $i0 killed $i5
                                        ! implicit-def: $i0_i1
	mov	%i5, %i0
	mov	%i4, %i1
	std %i0, [%fp+-8]
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%i3, %i1
	std %i0, [%fp+-16]
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	ldd [%fp+-16], %i0
	mov	%i0, %o2
	call __cmpdi2
	mov	%i1, %o3
	ret
	restore %o0, -1, %o0
.Lfunc_end137:
	.size	__aeabi_lcmp, .Lfunc_end137-__aeabi_lcmp
                                        ! -- End function
	.globl	__ctzsi2                        ! -- Begin function __ctzsi2
	.p2align	2
	.type	__ctzsi2,@function
__ctzsi2:                               ! @__ctzsi2
! %bb.0:
	save %sp, -136, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	st %i0, [%fp+-8]
	lduh [%fp+-8], %i1
	mov	%g0, %i0
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
	mov	1, %i0
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	be	.LBB138_2
	st %i0, [%fp+-20]
! %bb.1:
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
.LBB138_2:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	ld [%fp+-20], %i1                       ! 4-byte Folded Reload
	sll %i1, 4, %i1
	st %i1, [%fp+-12]
	ld [%fp+-12], %i2
	ld [%fp+-8], %i1
	srl %i1, %i2, %i1
	st %i1, [%fp+-8]
	ld [%fp+-12], %i1
	st %i1, [%fp+-16]
	ldub [%fp+-8], %i1
	cmp	%i1, 0
	be	.LBB138_4
	st %i0, [%fp+-32]
! %bb.3:
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
.LBB138_4:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	ld [%fp+-32], %i1                       ! 4-byte Folded Reload
	sll %i1, 3, %i1
	st %i1, [%fp+-12]
	ld [%fp+-12], %i2
	ld [%fp+-8], %i1
	srl %i1, %i2, %i1
	st %i1, [%fp+-8]
	ld [%fp+-12], %i2
	ld [%fp+-16], %i1
	add %i1, %i2, %i1
	st %i1, [%fp+-16]
	ld [%fp+-8], %i1
	and %i1, 15, %i1
	cmp	%i1, 0
	be	.LBB138_6
	st %i0, [%fp+-36]
! %bb.5:
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
.LBB138_6:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	ld [%fp+-36], %i1                       ! 4-byte Folded Reload
	sll %i1, 2, %i1
	st %i1, [%fp+-12]
	ld [%fp+-12], %i2
	ld [%fp+-8], %i1
	srl %i1, %i2, %i1
	st %i1, [%fp+-8]
	ld [%fp+-12], %i2
	ld [%fp+-16], %i1
	add %i1, %i2, %i1
	st %i1, [%fp+-16]
	ld [%fp+-8], %i1
	and %i1, 3, %i1
	cmp	%i1, 0
	be	.LBB138_8
	st %i0, [%fp+-40]
! %bb.7:
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-40]                       ! 4-byte Folded Spill
.LBB138_8:
	ld [%fp+-40], %i0                       ! 4-byte Folded Reload
	sll %i0, 1, %i0
	st %i0, [%fp+-12]
	ld [%fp+-12], %i1
	ld [%fp+-8], %i0
	srl %i0, %i1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-8], %i0
	and %i0, 3, %i0
	st %i0, [%fp+-8]
	ld [%fp+-12], %i1
	ld [%fp+-16], %i0
	add %i0, %i1, %i0
	st %i0, [%fp+-16]
	ld [%fp+-16], %i0
	ld [%fp+-8], %i2
	srl %i2, 1, %i3
	mov	2, %i1
	sub %i1, %i3, %i1
	and %i2, 1, %i2
	add %i2, -1, %i2
	and %i1, %i2, %i1
	ret
	restore %i0, %i1, %o0
.Lfunc_end138:
	.size	__ctzsi2, .Lfunc_end138-__ctzsi2
                                        ! -- End function
	.globl	__lshrdi3                       ! -- Begin function __lshrdi3
	.p2align	2
	.type	__lshrdi3,@function
__lshrdi3:                              ! @__lshrdi3
! %bb.0:
	save %sp, -136, %sp
	mov	%i1, %i3
	mov	%i0, %i4
                                        ! kill: def $i1 killed $i3
                                        ! kill: def $i0 killed $i4
                                        ! implicit-def: $i0_i1
	mov	%i4, %i0
	mov	%i3, %i1
	std %i0, [%fp+-16]
	st %i2, [%fp+-20]
	mov	32, %i0
	st %i0, [%fp+-24]
	ldd [%fp+-16], %i0
	std %i0, [%fp+-32]
	ldub [%fp+-20], %i0
	and %i0, 32, %i0
	cmp	%i0, 0
	be	.LBB139_2
	nop
	ba .LBB139_1
	nop
.LBB139_1:
	add %fp, -40, %i0
	or %i0, 4, %i0
	st %g0, [%i0]
	add %fp, -32, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	ld [%fp+-20], %i1
	add %i1, -32, %i1
	srl %i0, %i1, %i0
	ba .LBB139_5
	st %i0, [%fp+-40]
.LBB139_2:
	ld [%fp+-20], %i0
	cmp	%i0, 0
	bne	.LBB139_4
	nop
	ba .LBB139_3
	nop
.LBB139_3:
	ldd [%fp+-16], %i0
	ba .LBB139_6
	std %i0, [%fp+-8]
.LBB139_4:
	add %fp, -32, %i0
	or %i0, 4, %i0
	ld [%i0], %i1
	ld [%fp+-20], %i2
	srl %i1, %i2, %i2
	add %fp, -40, %i1
	or %i1, 4, %i1
	st %i2, [%i1]
	ld [%i0], %i0
	ld [%fp+-20], %i2
	mov	32, %i1
	sub %i1, %i2, %i1
	sll %i0, %i1, %i0
	ld [%fp+-32], %i1
	srl %i1, %i2, %i1
	or %i0, %i1, %i0
	ba .LBB139_5
	st %i0, [%fp+-40]
.LBB139_5:
	ldd [%fp+-40], %i0
	ba .LBB139_6
	std %i0, [%fp+-8]
.LBB139_6:
	ldd [%fp+-8], %i2
	mov	%i2, %i0
	ret
	restore %g0, %i3, %o1
.Lfunc_end139:
	.size	__lshrdi3, .Lfunc_end139-__lshrdi3
                                        ! -- End function
	.globl	__muldsi3                       ! -- Begin function __muldsi3
	.p2align	2
	.type	__muldsi3,@function
__muldsi3:                              ! @__muldsi3
! %bb.0:
	save %sp, -120, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	mov	16, %i0
	st %i0, [%fp+-20]
	sethi 63, %i0
	or %i0, 1023, %i0
	st %i0, [%fp+-24]
	lduh [%fp+-4], %i0
	lduh [%fp+-8], %i1
	smul %i0, %i1, %i0
	st %i0, [%fp+-16]
	add %fp, -16, %i0
	or %i0, 2, %i2
	lduh [%i2], %i1
	st %i1, [%fp+-28]
	lduh [%fp+-16], %i1
	st %i1, [%fp+-16]
	add %fp, -4, %i1
	or %i1, 2, %i1
	lduh [%i1], %i3
	lduh [%fp+-8], %i4
	smul %i3, %i4, %i4
	ld [%fp+-28], %i3
	add %i3, %i4, %i3
	st %i3, [%fp+-28]
	ld [%fp+-28], %i3
	sll %i3, 16, %i4
	ld [%fp+-16], %i3
	add %i3, %i4, %i3
	st %i3, [%fp+-16]
	add %fp, -28, %i3
	or %i3, 2, %i3
	lduh [%i3], %i4
	or %i0, 4, %i0
	st %i4, [%i0]
	lduh [%i2], %i2
	st %i2, [%fp+-28]
	lduh [%fp+-16], %i2
	st %i2, [%fp+-16]
	add %fp, -8, %i2
	or %i2, 2, %i2
	lduh [%i2], %i4
	lduh [%fp+-4], %i5
	smul %i4, %i5, %i5
	ld [%fp+-28], %i4
	add %i4, %i5, %i4
	st %i4, [%fp+-28]
	ld [%fp+-28], %i4
	sll %i4, 16, %i5
	ld [%fp+-16], %i4
	add %i4, %i5, %i4
	st %i4, [%fp+-16]
	lduh [%i3], %i4
	ld [%i0], %i3
	add %i3, %i4, %i3
	st %i3, [%i0]
	lduh [%i1], %i1
	lduh [%i2], %i2
	smul %i1, %i2, %i2
	ld [%i0], %i1
	add %i1, %i2, %i1
	st %i1, [%i0]
	ldd [%fp+-16], %i2
	mov	%i2, %i0
	ret
	restore %g0, %i3, %o1
.Lfunc_end140:
	.size	__muldsi3, .Lfunc_end140-__muldsi3
                                        ! -- End function
	.globl	__muldi3_compiler_rt            ! -- Begin function __muldi3_compiler_rt
	.p2align	2
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   ! @__muldi3_compiler_rt
! %bb.0:
	save %sp, -136, %sp
	mov	%i1, %i4
	mov	%i0, %i5
                                        ! kill: def $i0 killed $i3
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i1 killed $i4
                                        ! kill: def $i0 killed $i5
                                        ! implicit-def: $i0_i1
	mov	%i5, %i0
	mov	%i4, %i1
	std %i0, [%fp+-8]
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%i3, %i1
	std %i0, [%fp+-16]
	ldd [%fp+-8], %i0
	std %i0, [%fp+-24]
	ldd [%fp+-16], %i0
	std %i0, [%fp+-32]
	ld [%fp+-24], %o0
	call __muldsi3
	ld [%fp+-32], %o1
                                        ! implicit-def: $i0_i1
	mov	%o0, %i0
	mov	%o1, %i1
	std %i0, [%fp+-40]
	add %fp, -24, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	ld [%fp+-32], %i1
	smul %i0, %i1, %i0
	ld [%fp+-24], %i1
	add %fp, -32, %i2
	or %i2, 4, %i2
	ld [%i2], %i2
	smul %i1, %i2, %i1
	add %i0, %i1, %i2
	add %fp, -40, %i0
	or %i0, 4, %i0
	ld [%i0], %i1
	add %i1, %i2, %i1
	st %i1, [%i0]
	ldd [%fp+-40], %i2
	mov	%i2, %i0
	ret
	restore %g0, %i3, %o1
.Lfunc_end141:
	.size	__muldi3_compiler_rt, .Lfunc_end141-__muldi3_compiler_rt
                                        ! -- End function
	.globl	__negdi2                        ! -- Begin function __negdi2
	.p2align	2
	.type	__negdi2,@function
__negdi2:                               ! @__negdi2
! %bb.0:
	save %sp, -104, %sp
	mov	%i1, %i2
	mov	%i0, %i3
                                        ! kill: def $i1 killed $i2
                                        ! kill: def $i0 killed $i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	ldd [%fp+-8], %i2
	mov	%i2, %i0
	mov	%i3, %i2
	mov	%g0, %i1
	subcc %i1, %i0, %i0
	subxcc %i1, %i2, %i1
	ret
	restore
.Lfunc_end142:
	.size	__negdi2, .Lfunc_end142-__negdi2
                                        ! -- End function
	.globl	__paritydi2                     ! -- Begin function __paritydi2
	.p2align	2
	.type	__paritydi2,@function
__paritydi2:                            ! @__paritydi2
! %bb.0:
	save %sp, -112, %sp
	mov	%i1, %i2
	mov	%i0, %i3
                                        ! kill: def $i1 killed $i2
                                        ! kill: def $i0 killed $i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	ldd [%fp+-8], %i0
	std %i0, [%fp+-16]
	add %fp, -16, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	ld [%fp+-16], %i1
	xor %i0, %i1, %i0
	st %i0, [%fp+-20]
	ld [%fp+-20], %i0
	srl %i0, 16, %i1
	xor %i0, %i1, %i0
	st %i0, [%fp+-20]
	ld [%fp+-20], %i0
	srl %i0, 8, %i1
	xor %i0, %i1, %i0
	st %i0, [%fp+-20]
	ld [%fp+-20], %i0
	srl %i0, 4, %i1
	xor %i0, %i1, %i0
	st %i0, [%fp+-20]
	ld [%fp+-20], %i0
	and %i0, 15, %i1
	sethi 26, %i0
	or %i0, 406, %i0
	srl %i0, %i1, %i0
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end143:
	.size	__paritydi2, .Lfunc_end143-__paritydi2
                                        ! -- End function
	.globl	__paritysi2                     ! -- Begin function __paritysi2
	.p2align	2
	.type	__paritysi2,@function
__paritysi2:                            ! @__paritysi2
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	st %i0, [%fp+-8]
	ld [%fp+-8], %i0
	srl %i0, 16, %i1
	xor %i0, %i1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-8], %i0
	srl %i0, 8, %i1
	xor %i0, %i1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-8], %i0
	srl %i0, 4, %i1
	xor %i0, %i1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-8], %i0
	and %i0, 15, %i1
	sethi 26, %i0
	or %i0, 406, %i0
	srl %i0, %i1, %i0
	and %i0, 1, %i0
	ret
	restore
.Lfunc_end144:
	.size	__paritysi2, .Lfunc_end144-__paritysi2
                                        ! -- End function
	.globl	__popcountdi2                   ! -- Begin function __popcountdi2
	.p2align	2
	.type	__popcountdi2,@function
__popcountdi2:                          ! @__popcountdi2
! %bb.0:
	save %sp, -112, %sp
	mov	%i1, %i2
	mov	%i0, %i3
                                        ! kill: def $i1 killed $i2
                                        ! kill: def $i0 killed $i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	ldd [%fp+-8], %i0
	std %i0, [%fp+-16]
	ldd [%fp+-16], %i0
	mov	%i0, %i2
	mov	%i1, %i0
	srl %i0, 1, %i1
	srl %i2, 1, %i3
	sethi 1398101, %i4
	or %i4, 341, %i4
	and %i3, %i4, %i3
	and %i1, %i4, %i1
	subcc %i2, %i3, %i3
	subxcc %i0, %i1, %i2
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-16]
	ldd [%fp+-16], %i2
	mov	%i2, %i1
                                        ! kill: def $i3 killed $i3 killed $i2_i3
	srl %i3, 2, %i2
	srl %i1, 2, %i0
	sethi 838860, %i4
	or %i4, 819, %i4
	and %i0, %i4, %i0
	and %i2, %i4, %i2
	and %i1, %i4, %i1
	and %i3, %i4, %i3
	add %i2, %i3, %i2
	add %i0, %i1, %i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-16]
	ldd [%fp+-16], %i2
	mov	%i2, %i0
	mov	%i3, %i1
	sll %i1, 28, %i3
	srl %i0, 4, %i2
	or %i2, %i3, %i3
	srl %i1, 4, %i2
	addcc %i0, %i3, %i0
	addxcc %i1, %i2, %i2
	sethi 246723, %i1
	or %i1, 783, %i1
	and %i2, %i1, %i2
	and %i0, %i1, %i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-16]
	ldd [%fp+-16], %i2
	mov	%i3, %i1
	mov	%i2, %i0
	add %i0, %i1, %i0
	st %i0, [%fp+-20]
	ld [%fp+-20], %i0
	srl %i0, 16, %i1
	add %i0, %i1, %i0
	st %i0, [%fp+-20]
	ld [%fp+-20], %i0
	srl %i0, 8, %i1
	add %i0, %i1, %i0
	and %i0, 127, %i0
	ret
	restore
.Lfunc_end145:
	.size	__popcountdi2, .Lfunc_end145-__popcountdi2
                                        ! -- End function
	.globl	__popcountsi2                   ! -- Begin function __popcountsi2
	.p2align	2
	.type	__popcountsi2,@function
__popcountsi2:                          ! @__popcountsi2
! %bb.0:
	save %sp, -104, %sp
	st %i0, [%fp+-4]
	ld [%fp+-4], %i0
	st %i0, [%fp+-8]
	ld [%fp+-8], %i0
	srl %i0, 1, %i1
	sethi 1398101, %i2
	or %i2, 341, %i2
	and %i1, %i2, %i1
	sub %i0, %i1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-8], %i1
	srl %i1, 2, %i0
	sethi 838860, %i2
	or %i2, 819, %i2
	and %i0, %i2, %i0
	and %i1, %i2, %i1
	add %i0, %i1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-8], %i0
	srl %i0, 4, %i1
	add %i0, %i1, %i0
	sethi 246723, %i1
	or %i1, 783, %i1
	and %i0, %i1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-8], %i0
	srl %i0, 16, %i1
	add %i0, %i1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-8], %i0
	srl %i0, 8, %i1
	add %i0, %i1, %i0
	and %i0, 63, %i0
	ret
	restore
.Lfunc_end146:
	.size	__popcountsi2, .Lfunc_end146-__popcountsi2
                                        ! -- End function
	.globl	__powidf2                       ! -- Begin function __powidf2
	.p2align	2
	.type	__powidf2,@function
__powidf2:                              ! @__powidf2
! %bb.0:
	save %sp, -128, %sp
	mov	%i1, %i3
	mov	%i0, %i4
                                        ! kill: def $i1 killed $i3
                                        ! kill: def $i0 killed $i4
                                        ! implicit-def: $i0_i1
	mov	%i4, %i0
	mov	%i3, %i1
	std %i0, [%fp+-8]
	st %i2, [%fp+-12]
	ld [%fp+-12], %i0
	srl %i0, 31, %i0
	st %i0, [%fp+-16]
	add %fp, -24, %i0
	or %i0, 4, %i0
	sethi 1047552, %i1
	st %i1, [%i0]
	ba .LBB147_1
	st %g0, [%fp+-24]
.LBB147_1:                              ! =>This Inner Loop Header: Depth=1
	ldub [%fp+-12], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB147_3
	nop
	ba .LBB147_2
	nop
.LBB147_2:                              !   in Loop: Header=BB147_1 Depth=1
	ldd [%fp+-8], %i0
	mov	%i0, %o2
	mov	%i1, %o3
	ldd [%fp+-24], %i0
	mov	%i0, %o0
	call __muldf3
	mov	%i1, %o1
                                        ! implicit-def: $i0_i1
	mov	%o0, %i0
	mov	%o1, %i1
	ba .LBB147_3
	std %i0, [%fp+-24]
.LBB147_3:                              !   in Loop: Header=BB147_1 Depth=1
	ld [%fp+-12], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i0
	sra %i0, 1, %i0
	st %i0, [%fp+-12]
	ld [%fp+-12], %i0
	cmp	%i0, 0
	bne	.LBB147_5
	nop
	ba .LBB147_4
	nop
.LBB147_4:
	ba .LBB147_6
	nop
.LBB147_5:                              !   in Loop: Header=BB147_1 Depth=1
	ldd [%fp+-8], %i0
	mov	%i0, %o2
	mov	%i1, %o3
	mov	%o2, %o0
	call __muldf3
	mov	%o3, %o1
                                        ! implicit-def: $i0_i1
	mov	%o0, %i0
	mov	%o1, %i1
	ba .LBB147_1
	std %i0, [%fp+-8]
.LBB147_6:
	ld [%fp+-16], %i0
	cmp	%i0, 0
	be	.LBB147_8
	nop
	ba .LBB147_7
	nop
.LBB147_7:
	ldd [%fp+-24], %i0
	mov	%i0, %o2
	mov	%i1, %o3
	mov	%g0, %o0
	call __divdf3
	sethi 1047552, %o1
	st %o0, [%fp+-32]                       ! 4-byte Folded Spill
	ba .LBB147_9
	st %o1, [%fp+-28]
.LBB147_8:
	ldd [%fp+-24], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-32]                       ! 4-byte Folded Spill
	ba .LBB147_9
	st %i0, [%fp+-28]
.LBB147_9:
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	ld [%fp+-28], %i1                       ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end147:
	.size	__powidf2, .Lfunc_end147-__powidf2
                                        ! -- End function
	.globl	__powisf2                       ! -- Begin function __powisf2
	.p2align	2
	.type	__powisf2,@function
__powisf2:                              ! @__powisf2
! %bb.0:
	save %sp, -112, %sp
                                        ! kill: def $i2 killed $i0
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	ld [%fp+-8], %i0
	srl %i0, 31, %i0
	st %i0, [%fp+-12]
	sethi 1040384, %i0
	ba .LBB148_1
	st %i0, [%fp+-16]
.LBB148_1:                              ! =>This Inner Loop Header: Depth=1
	ldub [%fp+-8], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB148_3
	nop
	ba .LBB148_2
	nop
.LBB148_2:                              !   in Loop: Header=BB148_1 Depth=1
	ld [%fp+-4], %o1
	call __mulsf3
	ld [%fp+-16], %o0
	ba .LBB148_3
	st %o0, [%fp+-16]
.LBB148_3:                              !   in Loop: Header=BB148_1 Depth=1
	ld [%fp+-8], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i0
	sra %i0, 1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-8], %i0
	cmp	%i0, 0
	bne	.LBB148_5
	nop
	ba .LBB148_4
	nop
.LBB148_4:
	ba .LBB148_6
	nop
.LBB148_5:                              !   in Loop: Header=BB148_1 Depth=1
	ld [%fp+-4], %o1
	call __mulsf3
	mov	%o1, %o0
	ba .LBB148_1
	st %o0, [%fp+-4]
.LBB148_6:
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB148_8
	nop
	ba .LBB148_7
	nop
.LBB148_7:
	ld [%fp+-16], %o1
	call __divsf3
	sethi 1040384, %o0
	ba .LBB148_9
	st %o0, [%fp+-20]
.LBB148_8:
	ld [%fp+-16], %i0
	ba .LBB148_9
	st %i0, [%fp+-20]
.LBB148_9:
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	ret
	restore
.Lfunc_end148:
	.size	__powisf2, .Lfunc_end148-__powisf2
                                        ! -- End function
	.globl	__ucmpdi2                       ! -- Begin function __ucmpdi2
	.p2align	2
	.type	__ucmpdi2,@function
__ucmpdi2:                              ! @__ucmpdi2
! %bb.0:
	save %sp, -136, %sp
	mov	%i1, %i4
	mov	%i0, %i5
                                        ! kill: def $i0 killed $i3
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i1 killed $i4
                                        ! kill: def $i0 killed $i5
                                        ! implicit-def: $i0_i1
	mov	%i5, %i0
	mov	%i4, %i1
	std %i0, [%fp+-16]
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%i3, %i1
	std %i0, [%fp+-24]
	ldd [%fp+-16], %i0
	std %i0, [%fp+-32]
	ldd [%fp+-24], %i0
	std %i0, [%fp+-40]
	add %fp, -32, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	add %fp, -40, %i1
	or %i1, 4, %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	bcc	.LBB149_2
	nop
	ba .LBB149_1
	nop
.LBB149_1:
	ba .LBB149_9
	st %g0, [%fp+-4]
.LBB149_2:
	add %fp, -32, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	add %fp, -40, %i1
	or %i1, 4, %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	bleu	.LBB149_4
	nop
	ba .LBB149_3
	nop
.LBB149_3:
	mov	2, %i0
	ba .LBB149_9
	st %i0, [%fp+-4]
.LBB149_4:
	ld [%fp+-32], %i0
	ld [%fp+-40], %i1
	cmp	%i0, %i1
	bcc	.LBB149_6
	nop
	ba .LBB149_5
	nop
.LBB149_5:
	ba .LBB149_9
	st %g0, [%fp+-4]
.LBB149_6:
	ld [%fp+-32], %i0
	ld [%fp+-40], %i1
	cmp	%i0, %i1
	bleu	.LBB149_8
	nop
	ba .LBB149_7
	nop
.LBB149_7:
	mov	2, %i0
	ba .LBB149_9
	st %i0, [%fp+-4]
.LBB149_8:
	mov	1, %i0
	ba .LBB149_9
	st %i0, [%fp+-4]
.LBB149_9:
	ld [%fp+-4], %i0
	ret
	restore
.Lfunc_end149:
	.size	__ucmpdi2, .Lfunc_end149-__ucmpdi2
                                        ! -- End function
	.globl	__aeabi_ulcmp                   ! -- Begin function __aeabi_ulcmp
	.p2align	2
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          ! @__aeabi_ulcmp
! %bb.0:
	save %sp, -112, %sp
	mov	%i1, %i4
	mov	%i0, %i5
                                        ! kill: def $i0 killed $i3
                                        ! kill: def $i0 killed $i2
                                        ! kill: def $i1 killed $i4
                                        ! kill: def $i0 killed $i5
                                        ! implicit-def: $i0_i1
	mov	%i5, %i0
	mov	%i4, %i1
	std %i0, [%fp+-8]
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%i3, %i1
	std %i0, [%fp+-16]
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	ldd [%fp+-16], %i0
	mov	%i0, %o2
	call __ucmpdi2
	mov	%i1, %o3
	ret
	restore %o0, -1, %o0
.Lfunc_end150:
	.size	__aeabi_ulcmp, .Lfunc_end150-__aeabi_ulcmp
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
	.addrsig_sym __ucmpdi2
	.addrsig_sym l64a.s
	.addrsig_sym digits
	.addrsig_sym seed
