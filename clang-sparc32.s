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
	sethi %hi(.L__profc_memmove), %i0
	ldd [%i0+%lo(.L__profc_memmove)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_memmove)]
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
	sethi %hi(__llvm_gcov_ctr), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr)]
	sethi %hi(.L__profc_memmove), %i0
	add %i0, %lo(.L__profc_memmove), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(.L__profc_memmove), %i0
	add %i0, %lo(.L__profc_memmove), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr), %i0
	add %i0, %lo(__llvm_gcov_ctr), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(.L__profc_memmove), %i0
	add %i0, %lo(.L__profc_memmove), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB0_8
	std %i2, [%i0+24]
.LBB0_8:                                ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB0_11
	nop
	ba .LBB0_9
	nop
.LBB0_9:                                !   in Loop: Header=BB0_8 Depth=1
	sethi %hi(__llvm_gcov_ctr), %i0
	add %i0, %lo(__llvm_gcov_ctr), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_memmove), %i0
	add %i0, %lo(.L__profc_memmove), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
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
	sethi %hi(__llvm_gcov_ctr), %i0
	add %i0, %lo(__llvm_gcov_ctr), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB0_12
	std %i2, [%i0+24]
.LBB0_12:
	sethi %hi(__llvm_gcov_ctr), %i0
	add %i0, %lo(__llvm_gcov_ctr), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB0_13
	std %i2, [%i0+32]
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
	save %sp, -144, %sp
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	st %i2, [%fp+-16]
	st %i3, [%fp+-20]
	sethi %hi(.L__profc_memccpy), %i0
	ldd [%i0+%lo(.L__profc_memccpy)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_memccpy)]
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
	be	.LBB1_6
	st %i0, [%fp+-32]
	ba .LBB1_2
	nop
.LBB1_2:                                !   in Loop: Header=BB1_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.1), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.1)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.1)]
	sethi %hi(.L__profc_memccpy), %i0
	add %i0, %lo(.L__profc_memccpy), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-28], %i0
	ldub [%i0], %i1
	st %i1, [%fp+-48]                       ! 4-byte Folded Spill
	ld [%fp+-24], %i0
	stb %i1, [%i0]
	ld [%fp+-16], %i2
	st %i2, [%fp+-44]                       ! 4-byte Folded Spill
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
	ld [%fp+-48], %i1                       ! 4-byte Folded Reload
	ld [%fp+-44], %i2                       ! 4-byte Folded Reload
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-52]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	be	.LBB1_6
	st %i0, [%fp+-32]
	ba .LBB1_5
	nop
.LBB1_5:                                !   in Loop: Header=BB1_1 Depth=1
	ld [%fp+-52], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.1), %i1
	add %i1, %lo(__llvm_gcov_ctr.1), %i1
	ldd [%i1+8], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+8]
	sethi %hi(.L__profc_memccpy), %i1
	add %i1, %lo(.L__profc_memccpy), %i1
	ldd [%i1+24], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+24]
	ba .LBB1_6
	st %i0, [%fp+-32]
.LBB1_6:                                !   in Loop: Header=BB1_1 Depth=1
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB1_9
	nop
	ba .LBB1_7
	nop
.LBB1_7:                                !   in Loop: Header=BB1_1 Depth=1
	sethi %hi(.L__profc_memccpy), %i0
	add %i0, %lo(.L__profc_memccpy), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB1_8
	std %i2, [%i0+8]
.LBB1_8:                                !   in Loop: Header=BB1_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.1), %i0
	add %i0, %lo(__llvm_gcov_ctr.1), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
.LBB1_9:
	ld [%fp+-20], %i0
	cmp	%i0, 0
	be	.LBB1_11
	nop
	ba .LBB1_10
	nop
.LBB1_10:
	sethi %hi(__llvm_gcov_ctr.1), %i0
	add %i0, %lo(__llvm_gcov_ctr.1), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_memccpy), %i0
	add %i0, %lo(.L__profc_memccpy), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-24], %i0
	add %i0, 1, %i0
	ba .LBB1_12
	st %i0, [%fp+-4]
.LBB1_11:
	sethi %hi(__llvm_gcov_ctr.1), %i0
	add %i0, %lo(__llvm_gcov_ctr.1), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ba .LBB1_12
	st %g0, [%fp+-4]
.LBB1_12:
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
	save %sp, -136, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	sethi %hi(.L__profc_memchr), %i0
	ldd [%i0+%lo(.L__profc_memchr)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_memchr)]
	ld [%fp+-4], %i0
	st %i0, [%fp+-16]
	ldub [%fp+-8], %i0
	ba .LBB2_1
	st %i0, [%fp+-8]
.LBB2_1:                                ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB2_6
	st %i0, [%fp+-20]
	ba .LBB2_2
	nop
.LBB2_2:                                !   in Loop: Header=BB2_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.2), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.2)]
	sethi %hi(.L__profc_memchr), %i0
	add %i0, %lo(.L__profc_memchr), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-16], %i0
	ldub [%i0], %i1
	st %i1, [%fp+-36]                       ! 4-byte Folded Spill
	ld [%fp+-8], %i2
	st %i2, [%fp+-32]                       ! 4-byte Folded Spill
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
	ld [%fp+-36], %i1                       ! 4-byte Folded Reload
	ld [%fp+-32], %i2                       ! 4-byte Folded Reload
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-40]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	be	.LBB2_6
	st %i0, [%fp+-20]
	ba .LBB2_5
	nop
.LBB2_5:                                !   in Loop: Header=BB2_1 Depth=1
	ld [%fp+-40], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.2), %i1
	add %i1, %lo(__llvm_gcov_ctr.2), %i1
	ldd [%i1+8], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+8]
	sethi %hi(.L__profc_memchr), %i1
	add %i1, %lo(.L__profc_memchr), %i1
	ldd [%i1+24], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+24]
	ba .LBB2_6
	st %i0, [%fp+-20]
.LBB2_6:                                !   in Loop: Header=BB2_1 Depth=1
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB2_9
	nop
	ba .LBB2_7
	nop
.LBB2_7:                                !   in Loop: Header=BB2_1 Depth=1
	sethi %hi(.L__profc_memchr), %i0
	add %i0, %lo(.L__profc_memchr), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB2_8
	std %i2, [%i0+8]
.LBB2_8:                                !   in Loop: Header=BB2_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.2), %i0
	add %i0, %lo(__llvm_gcov_ctr.2), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-16], %i0
	add %i0, 1, %i0
	st %i0, [%fp+-16]
	ld [%fp+-12], %i0
	add %i0, -1, %i0
	ba .LBB2_1
	st %i0, [%fp+-12]
.LBB2_9:
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB2_11
	nop
	ba .LBB2_10
	nop
.LBB2_10:
	sethi %hi(__llvm_gcov_ctr.2), %i0
	add %i0, %lo(__llvm_gcov_ctr.2), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_memchr), %i0
	add %i0, %lo(.L__profc_memchr), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-16], %i0
	ba .LBB2_12
	st %i0, [%fp+-44]
.LBB2_11:
	sethi %hi(__llvm_gcov_ctr.2), %i0
	add %i0, %lo(__llvm_gcov_ctr.2), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	mov	%g0, %i0
	ba .LBB2_12
	st %i0, [%fp+-44]
.LBB2_12:
	ld [%fp+-44], %i0                       ! 4-byte Folded Reload
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
	save %sp, -144, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	sethi %hi(.L__profc_memcmp), %i0
	ldd [%i0+%lo(.L__profc_memcmp)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_memcmp)]
	ld [%fp+-4], %i0
	st %i0, [%fp+-16]
	ld [%fp+-8], %i0
	ba .LBB3_1
	st %i0, [%fp+-20]
.LBB3_1:                                ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB3_6
	st %i0, [%fp+-24]
	ba .LBB3_2
	nop
.LBB3_2:                                !   in Loop: Header=BB3_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.3), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.3)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.3)]
	sethi %hi(.L__profc_memcmp), %i0
	add %i0, %lo(.L__profc_memcmp), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-16], %i0
	ldub [%i0], %i1
	st %i1, [%fp+-40]                       ! 4-byte Folded Spill
	ld [%fp+-20], %i0
	ldub [%i0], %i2
	st %i2, [%fp+-36]                       ! 4-byte Folded Spill
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
	ld [%fp+-40], %i1                       ! 4-byte Folded Reload
	ld [%fp+-36], %i2                       ! 4-byte Folded Reload
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-44]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	bne	.LBB3_6
	st %i0, [%fp+-24]
	ba .LBB3_5
	nop
.LBB3_5:                                !   in Loop: Header=BB3_1 Depth=1
	ld [%fp+-44], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.3), %i1
	add %i1, %lo(__llvm_gcov_ctr.3), %i1
	ldd [%i1+8], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+8]
	sethi %hi(.L__profc_memcmp), %i1
	add %i1, %lo(.L__profc_memcmp), %i1
	ldd [%i1+24], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+24]
	ba .LBB3_6
	st %i0, [%fp+-24]
.LBB3_6:                                !   in Loop: Header=BB3_1 Depth=1
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB3_9
	nop
	ba .LBB3_7
	nop
.LBB3_7:                                !   in Loop: Header=BB3_1 Depth=1
	sethi %hi(.L__profc_memcmp), %i0
	add %i0, %lo(.L__profc_memcmp), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB3_8
	std %i2, [%i0+8]
.LBB3_8:                                !   in Loop: Header=BB3_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.3), %i0
	add %i0, %lo(__llvm_gcov_ctr.3), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
.LBB3_9:
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB3_11
	nop
	ba .LBB3_10
	nop
.LBB3_10:
	sethi %hi(__llvm_gcov_ctr.3), %i0
	add %i0, %lo(__llvm_gcov_ctr.3), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_memcmp), %i0
	add %i0, %lo(.L__profc_memcmp), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-16], %i0
	ldub [%i0], %i0
	ld [%fp+-20], %i1
	ldub [%i1], %i1
	sub %i0, %i1, %i0
	ba .LBB3_12
	st %i0, [%fp+-48]
.LBB3_11:
	sethi %hi(__llvm_gcov_ctr.3), %i0
	add %i0, %lo(__llvm_gcov_ctr.3), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	mov	%g0, %i0
	ba .LBB3_12
	st %i0, [%fp+-48]
.LBB3_12:
	ld [%fp+-48], %i0                       ! 4-byte Folded Reload
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
	sethi %hi(__llvm_gcov_ctr.4), %i3
	ldd [%i3+%lo(__llvm_gcov_ctr.4)], %g2
	mov	%g2, %i5
	mov	%g3, %i4
	addcc %i5, 1, %g3
	addxcc %i4, 0, %g2
                                        ! implicit-def: $i4_i5
	mov	%g3, %i4
	mov	%g2, %i5
	std %i4, [%i3+%lo(__llvm_gcov_ctr.4)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	sethi %hi(.L__profc_memcpy), %i0
	ldd [%i0+%lo(.L__profc_memcpy)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_memcpy)]
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
	sethi %hi(.L__profc_memcpy), %i0
	add %i0, %lo(.L__profc_memcpy), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.4), %i0
	add %i0, %lo(__llvm_gcov_ctr.4), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(.L__profc_memrchr), %i0
	ldd [%i0+%lo(.L__profc_memrchr)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_memrchr)]
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
	sethi %hi(.L__profc_memrchr), %i0
	add %i0, %lo(.L__profc_memrchr), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.5), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.5)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.5)]
	sethi %hi(.L__profc_memrchr), %i0
	add %i0, %lo(.L__profc_memrchr), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-20], %i0
	ld [%fp+-16], %i1
	add %i0, %i1, %i0
	ba .LBB5_6
	st %i0, [%fp+-4]
.LBB5_4:                                !   in Loop: Header=BB5_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.5), %i0
	add %i0, %lo(__llvm_gcov_ctr.5), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB5_1
	std %i2, [%i0+8]
.LBB5_5:
	sethi %hi(__llvm_gcov_ctr.5), %i0
	add %i0, %lo(__llvm_gcov_ctr.5), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.6), %i3
	ldd [%i3+%lo(__llvm_gcov_ctr.6)], %g2
	mov	%g2, %i5
	mov	%g3, %i4
	addcc %i5, 1, %g3
	addxcc %i4, 0, %g2
                                        ! implicit-def: $i4_i5
	mov	%g3, %i4
	mov	%g2, %i5
	std %i4, [%i3+%lo(__llvm_gcov_ctr.6)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	sethi %hi(.L__profc_memset), %i0
	ldd [%i0+%lo(.L__profc_memset)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_memset)]
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
	sethi %hi(.L__profc_memset), %i0
	add %i0, %lo(.L__profc_memset), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-8], %i1
	ld [%fp+-16], %i0
	ba .LBB6_3
	stb %i1, [%i0]
.LBB6_3:                                !   in Loop: Header=BB6_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.6), %i0
	add %i0, %lo(__llvm_gcov_ctr.6), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.7), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.7)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.7)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc_stpcpy), %i0
	ldd [%i0+%lo(.L__profc_stpcpy)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB7_1
	std %i2, [%i0+%lo(.L__profc_stpcpy)]
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
	sethi %hi(.L__profc_stpcpy), %i0
	add %i0, %lo(.L__profc_stpcpy), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB7_3
	std %i2, [%i0+8]
.LBB7_3:                                !   in Loop: Header=BB7_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.7), %i0
	add %i0, %lo(__llvm_gcov_ctr.7), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	save %sp, -128, %sp
	sethi %hi(__llvm_gcov_ctr.8), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.8)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.8)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc_strchrnul), %i0
	ldd [%i0+%lo(.L__profc_strchrnul)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_strchrnul)]
	ldub [%fp+-8], %i0
	ba .LBB8_1
	st %i0, [%fp+-8]
.LBB8_1:                                ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	ldsb [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB8_6
	st %i0, [%fp+-12]
	ba .LBB8_2
	nop
.LBB8_2:                                !   in Loop: Header=BB8_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.8), %i0
	add %i0, %lo(__llvm_gcov_ctr.8), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_strchrnul), %i0
	add %i0, %lo(.L__profc_strchrnul), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-4], %i0
	ldub [%i0], %i1
	st %i1, [%fp+-28]                       ! 4-byte Folded Spill
	ld [%fp+-8], %i2
	st %i2, [%fp+-24]                       ! 4-byte Folded Spill
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
	ld [%fp+-28], %i1                       ! 4-byte Folded Reload
	ld [%fp+-24], %i2                       ! 4-byte Folded Reload
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	be	.LBB8_6
	st %i0, [%fp+-12]
	ba .LBB8_5
	nop
.LBB8_5:                                !   in Loop: Header=BB8_1 Depth=1
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.8), %i1
	add %i1, %lo(__llvm_gcov_ctr.8), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	sethi %hi(.L__profc_strchrnul), %i1
	add %i1, %lo(.L__profc_strchrnul), %i1
	ldd [%i1+24], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+24]
	ba .LBB8_6
	st %i0, [%fp+-12]
.LBB8_6:                                !   in Loop: Header=BB8_1 Depth=1
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB8_9
	nop
	ba .LBB8_7
	nop
.LBB8_7:                                !   in Loop: Header=BB8_1 Depth=1
	sethi %hi(.L__profc_strchrnul), %i0
	add %i0, %lo(.L__profc_strchrnul), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB8_8
	std %i2, [%i0+8]
.LBB8_8:                                !   in Loop: Header=BB8_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.8), %i0
	add %i0, %lo(__llvm_gcov_ctr.8), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	ld [%fp+-4], %i0
	add %i0, 1, %i0
	ba .LBB8_1
	st %i0, [%fp+-4]
.LBB8_9:
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
	st %i1, [%fp+-12]
	sethi %hi(.L__profc_strchr), %i0
	ldd [%i0+%lo(.L__profc_strchr)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB9_2
	std %i2, [%i0+%lo(.L__profc_strchr)]
.LBB9_1:                                !   in Loop: Header=BB9_2 Depth=1
	sethi %hi(__llvm_gcov_ctr.9), %i0
	add %i0, %lo(__llvm_gcov_ctr.9), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_strchr), %i0
	add %i0, %lo(.L__profc_strchr), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB9_2
	std %i2, [%i0+8]
.LBB9_2:                                ! =>This Inner Loop Header: Depth=1
	ld [%fp+-8], %i0
	ldsb [%i0], %i0
	ld [%fp+-12], %i1
	cmp	%i0, %i1
	bne	.LBB9_4
	nop
	ba .LBB9_3
	nop
.LBB9_3:
	sethi %hi(__llvm_gcov_ctr.9), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.9)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.9)]
	sethi %hi(.L__profc_strchr), %i0
	add %i0, %lo(.L__profc_strchr), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-8], %i0
	ba .LBB9_7
	st %i0, [%fp+-4]
.LBB9_4:                                !   in Loop: Header=BB9_2 Depth=1
	ba .LBB9_5
	nop
.LBB9_5:                                !   in Loop: Header=BB9_2 Depth=1
	ld [%fp+-8], %i0
	add %i0, 1, %i1
	st %i1, [%fp+-8]
	ldub [%i0], %i0
	cmp	%i0, 0
	bne	.LBB9_1
	nop
	ba .LBB9_6
	nop
.LBB9_6:
	sethi %hi(__llvm_gcov_ctr.9), %i0
	add %i0, %lo(__llvm_gcov_ctr.9), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ba .LBB9_7
	st %g0, [%fp+-4]
.LBB9_7:
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
	save %sp, -120, %sp
	sethi %hi(__llvm_gcov_ctr.10), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.10)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.10)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc_strcmp), %i0
	ldd [%i0+%lo(.L__profc_strcmp)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB10_1
	std %i2, [%i0+%lo(.L__profc_strcmp)]
.LBB10_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	ldsb [%i0], %i1
	ld [%fp+-8], %i0
	ldsb [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bne	.LBB10_6
	st %i0, [%fp+-12]
	ba .LBB10_2
	nop
.LBB10_2:                               !   in Loop: Header=BB10_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.10), %i0
	add %i0, %lo(__llvm_gcov_ctr.10), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_strcmp), %i0
	add %i0, %lo(.L__profc_strcmp), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-4], %i0
	ldsb [%i0], %i1
	st %i1, [%fp+-24]                       ! 4-byte Folded Spill
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
	ld [%fp+-24], %i1                       ! 4-byte Folded Reload
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	be	.LBB10_6
	st %i0, [%fp+-12]
	ba .LBB10_5
	nop
.LBB10_5:                               !   in Loop: Header=BB10_1 Depth=1
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.10), %i1
	add %i1, %lo(__llvm_gcov_ctr.10), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	sethi %hi(.L__profc_strcmp), %i1
	add %i1, %lo(.L__profc_strcmp), %i1
	ldd [%i1+24], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+24]
	ba .LBB10_6
	st %i0, [%fp+-12]
.LBB10_6:                               !   in Loop: Header=BB10_1 Depth=1
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB10_9
	nop
	ba .LBB10_7
	nop
.LBB10_7:                               !   in Loop: Header=BB10_1 Depth=1
	sethi %hi(.L__profc_strcmp), %i0
	add %i0, %lo(.L__profc_strcmp), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB10_8
	std %i2, [%i0+8]
.LBB10_8:                               !   in Loop: Header=BB10_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.10), %i0
	add %i0, %lo(__llvm_gcov_ctr.10), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	ld [%fp+-4], %i0
	add %i0, 1, %i0
	st %i0, [%fp+-4]
	ld [%fp+-8], %i0
	add %i0, 1, %i0
	ba .LBB10_1
	st %i0, [%fp+-8]
.LBB10_9:
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
	sethi %hi(__llvm_gcov_ctr.11), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.11)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.11)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_strlen), %i0
	ldd [%i0+%lo(.L__profc_strlen)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_strlen)]
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
	sethi %hi(.L__profc_strlen), %i0
	add %i0, %lo(.L__profc_strlen), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB11_3
	std %i2, [%i0+8]
.LBB11_3:                               !   in Loop: Header=BB11_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.11), %i0
	add %i0, %lo(__llvm_gcov_ctr.11), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	save %sp, -144, %sp
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	st %i2, [%fp+-16]
	sethi %hi(.L__profc_strncmp), %i0
	ldd [%i0+%lo(.L__profc_strncmp)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_strncmp)]
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
	sethi %hi(__llvm_gcov_ctr.12), %i0
	add %i0, %lo(__llvm_gcov_ctr.12), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_strncmp), %i0
	add %i0, %lo(.L__profc_strncmp), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ba .LBB12_16
	st %g0, [%fp+-4]
.LBB12_2:
	sethi %hi(__llvm_gcov_ctr.12), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.12)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB12_3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.12)]
.LBB12_3:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-20], %i0
	ldub [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB12_12
	st %i0, [%fp+-28]
	ba .LBB12_4
	nop
.LBB12_4:                               !   in Loop: Header=BB12_3 Depth=1
	sethi %hi(__llvm_gcov_ctr.12), %i0
	add %i0, %lo(__llvm_gcov_ctr.12), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_strncmp), %i0
	add %i0, %lo(.L__profc_strncmp), %i0
	ldd [%i0+56], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+56]
	ld [%fp+-24], %i0
	ldub [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB12_12
	st %i0, [%fp+-28]
	ba .LBB12_5
	nop
.LBB12_5:                               !   in Loop: Header=BB12_3 Depth=1
	sethi %hi(__llvm_gcov_ctr.12), %i0
	add %i0, %lo(__llvm_gcov_ctr.12), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_strncmp), %i0
	add %i0, %lo(.L__profc_strncmp), %i0
	ldd [%i0+64], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB12_6
	std %i2, [%i0+64]
.LBB12_6:                               !   in Loop: Header=BB12_3 Depth=1
	sethi %hi(.L__profc_strncmp), %i0
	add %i0, %lo(.L__profc_strncmp), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-16], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB12_12
	st %i0, [%fp+-28]
	ba .LBB12_7
	nop
.LBB12_7:                               !   in Loop: Header=BB12_3 Depth=1
	sethi %hi(__llvm_gcov_ctr.12), %i0
	add %i0, %lo(__llvm_gcov_ctr.12), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc_strncmp), %i0
	add %i0, %lo(.L__profc_strncmp), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB12_8
	std %i2, [%i0+48]
.LBB12_8:                               !   in Loop: Header=BB12_3 Depth=1
	sethi %hi(.L__profc_strncmp), %i0
	add %i0, %lo(.L__profc_strncmp), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	ld [%fp+-20], %i0
	ldub [%i0], %i1
	st %i1, [%fp+-44]                       ! 4-byte Folded Spill
	ld [%fp+-24], %i0
	ldub [%i0], %i2
	st %i2, [%fp+-40]                       ! 4-byte Folded Spill
	mov	%g0, %i0
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, %i2
	be	.LBB12_10
	st %i0, [%fp+-32]
! %bb.9:                                !   in Loop: Header=BB12_3 Depth=1
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
.LBB12_10:                              !   in Loop: Header=BB12_3 Depth=1
	ld [%fp+-44], %i1                       ! 4-byte Folded Reload
	ld [%fp+-40], %i2                       ! 4-byte Folded Reload
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-48]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	bne	.LBB12_12
	st %i0, [%fp+-28]
	ba .LBB12_11
	nop
.LBB12_11:                              !   in Loop: Header=BB12_3 Depth=1
	ld [%fp+-48], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.12), %i1
	add %i1, %lo(__llvm_gcov_ctr.12), %i1
	ldd [%i1+40], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+40]
	sethi %hi(.L__profc_strncmp), %i1
	add %i1, %lo(.L__profc_strncmp), %i1
	ldd [%i1+32], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+32]
	ba .LBB12_12
	st %i0, [%fp+-28]
.LBB12_12:                              !   in Loop: Header=BB12_3 Depth=1
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB12_15
	nop
	ba .LBB12_13
	nop
.LBB12_13:                              !   in Loop: Header=BB12_3 Depth=1
	sethi %hi(.L__profc_strncmp), %i0
	add %i0, %lo(.L__profc_strncmp), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB12_14
	std %i2, [%i0+16]
.LBB12_14:                              !   in Loop: Header=BB12_3 Depth=1
	sethi %hi(__llvm_gcov_ctr.12), %i0
	add %i0, %lo(__llvm_gcov_ctr.12), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
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
.LBB12_15:
	ld [%fp+-20], %i0
	ldub [%i0], %i0
	ld [%fp+-24], %i1
	ldub [%i1], %i1
	sub %i0, %i1, %i0
	ba .LBB12_16
	st %i0, [%fp+-4]
.LBB12_16:
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
	sethi %hi(__llvm_gcov_ctr.13), %i3
	ldd [%i3+%lo(__llvm_gcov_ctr.13)], %g2
	mov	%g2, %i5
	mov	%g3, %i4
	addcc %i5, 1, %g3
	addxcc %i4, 0, %g2
                                        ! implicit-def: $i4_i5
	mov	%g3, %i4
	mov	%g2, %i5
	std %i4, [%i3+%lo(__llvm_gcov_ctr.13)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	sethi %hi(.L__profc_swab), %i0
	ldd [%i0+%lo(.L__profc_swab)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_swab)]
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
	sethi %hi(.L__profc_swab), %i0
	add %i0, %lo(.L__profc_swab), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.13), %i0
	add %i0, %lo(__llvm_gcov_ctr.13), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.14), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.14)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.14)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_isalpha), %i0
	ldd [%i0+%lo(.L__profc_isalpha)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_isalpha)]
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
	sethi %hi(__llvm_gcov_ctr.15), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.15)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.15)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_isascii), %i0
	ldd [%i0+%lo(.L__profc_isascii)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_isascii)]
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
	save %sp, -120, %sp
	sethi %hi(__llvm_gcov_ctr.16), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.16)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.16)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_isblank), %i0
	ldd [%i0+%lo(.L__profc_isblank)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_isblank)]
	ld [%fp+-4], %i1
	mov	1, %i0
	cmp	%i1, 32
	be	.LBB16_5
	st %i0, [%fp+-8]
	ba .LBB16_1
	nop
.LBB16_1:
	sethi %hi(__llvm_gcov_ctr.16), %i0
	add %i0, %lo(__llvm_gcov_ctr.16), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_isblank), %i0
	add %i0, %lo(.L__profc_isblank), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-4], %i1
	st %i1, [%fp+-20]                       ! 4-byte Folded Spill
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
	ld [%fp+-20], %i1                       ! 4-byte Folded Reload
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
	cmp	%i1, 9
	be	.LBB16_5
	st %i0, [%fp+-8]
	ba .LBB16_4
	nop
.LBB16_4:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.16), %i1
	add %i1, %lo(__llvm_gcov_ctr.16), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	sethi %hi(.L__profc_isblank), %i1
	add %i1, %lo(.L__profc_isblank), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	ba .LBB16_5
	st %i0, [%fp+-8]
.LBB16_5:
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
	save %sp, -120, %sp
	sethi %hi(__llvm_gcov_ctr.17), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.17)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.17)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_iscntrl), %i0
	ldd [%i0+%lo(.L__profc_iscntrl)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_iscntrl)]
	ld [%fp+-4], %i1
	mov	1, %i0
	cmp	%i1, 32
	bcs	.LBB17_5
	st %i0, [%fp+-8]
	ba .LBB17_1
	nop
.LBB17_1:
	sethi %hi(__llvm_gcov_ctr.17), %i0
	add %i0, %lo(__llvm_gcov_ctr.17), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_iscntrl), %i0
	add %i0, %lo(.L__profc_iscntrl), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-4], %i1
	st %i1, [%fp+-20]                       ! 4-byte Folded Spill
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
	ld [%fp+-20], %i1                       ! 4-byte Folded Reload
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
	cmp	%i1, 127
	be	.LBB17_5
	st %i0, [%fp+-8]
	ba .LBB17_4
	nop
.LBB17_4:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.17), %i1
	add %i1, %lo(__llvm_gcov_ctr.17), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	sethi %hi(.L__profc_iscntrl), %i1
	add %i1, %lo(.L__profc_iscntrl), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	ba .LBB17_5
	st %i0, [%fp+-8]
.LBB17_5:
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
	sethi %hi(__llvm_gcov_ctr.18), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.18)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.18)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_isdigit), %i0
	ldd [%i0+%lo(.L__profc_isdigit)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_isdigit)]
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
	sethi %hi(__llvm_gcov_ctr.19), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.19)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.19)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_isgraph), %i0
	ldd [%i0+%lo(.L__profc_isgraph)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_isgraph)]
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
	sethi %hi(__llvm_gcov_ctr.20), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.20)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.20)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_islower), %i0
	ldd [%i0+%lo(.L__profc_islower)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_islower)]
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
	sethi %hi(__llvm_gcov_ctr.21), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.21)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.21)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_isprint), %i0
	ldd [%i0+%lo(.L__profc_isprint)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_isprint)]
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
	save %sp, -120, %sp
	sethi %hi(__llvm_gcov_ctr.22), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.22)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.22)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_isspace), %i0
	ldd [%i0+%lo(.L__profc_isspace)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_isspace)]
	ld [%fp+-4], %i1
	mov	1, %i0
	cmp	%i1, 32
	be	.LBB22_5
	st %i0, [%fp+-8]
	ba .LBB22_1
	nop
.LBB22_1:
	sethi %hi(__llvm_gcov_ctr.22), %i0
	add %i0, %lo(__llvm_gcov_ctr.22), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_isspace), %i0
	add %i0, %lo(.L__profc_isspace), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-4], %i0
	add %i0, -9, %i1
	st %i1, [%fp+-20]                       ! 4-byte Folded Spill
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
	ld [%fp+-20], %i1                       ! 4-byte Folded Reload
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
	cmp	%i1, 5
	bcs	.LBB22_5
	st %i0, [%fp+-8]
	ba .LBB22_4
	nop
.LBB22_4:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.22), %i1
	add %i1, %lo(__llvm_gcov_ctr.22), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	sethi %hi(.L__profc_isspace), %i1
	add %i1, %lo(.L__profc_isspace), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	ba .LBB22_5
	st %i0, [%fp+-8]
.LBB22_5:
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
	sethi %hi(__llvm_gcov_ctr.23), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.23)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.23)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_isupper), %i0
	ldd [%i0+%lo(.L__profc_isupper)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_isupper)]
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
	save %sp, -120, %sp
	sethi %hi(__llvm_gcov_ctr.24), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.24)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.24)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_iswcntrl), %i0
	ldd [%i0+%lo(.L__profc_iswcntrl)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_iswcntrl)]
	ld [%fp+-4], %i1
	mov	1, %i0
	cmp	%i1, 32
	bcs	.LBB24_9
	st %i0, [%fp+-8]
	ba .LBB24_1
	nop
.LBB24_1:
	sethi %hi(__llvm_gcov_ctr.24), %i0
	add %i0, %lo(__llvm_gcov_ctr.24), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_iswcntrl), %i0
	add %i0, %lo(.L__profc_iswcntrl), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-4], %i0
	add %i0, -127, %i1
	mov	1, %i0
	cmp	%i1, 33
	bcs	.LBB24_9
	st %i0, [%fp+-8]
	ba .LBB24_2
	nop
.LBB24_2:
	sethi %hi(__llvm_gcov_ctr.24), %i0
	add %i0, %lo(__llvm_gcov_ctr.24), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_iswcntrl), %i0
	add %i0, %lo(.L__profc_iswcntrl), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB24_3
	std %i2, [%i0+48]
.LBB24_3:
	sethi %hi(.L__profc_iswcntrl), %i0
	add %i0, %lo(.L__profc_iswcntrl), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	ld [%fp+-4], %i0
	sethi 4194295, %i1
	or %i1, 984, %i1
	add %i0, %i1, %i1
	mov	1, %i0
	cmp	%i1, 2
	bcs	.LBB24_9
	st %i0, [%fp+-8]
	ba .LBB24_4
	nop
.LBB24_4:
	sethi %hi(__llvm_gcov_ctr.24), %i0
	add %i0, %lo(__llvm_gcov_ctr.24), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_iswcntrl), %i0
	add %i0, %lo(.L__profc_iswcntrl), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB24_5
	std %i2, [%i0+32]
.LBB24_5:
	sethi %hi(.L__profc_iswcntrl), %i0
	add %i0, %lo(.L__profc_iswcntrl), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-4], %i0
	sethi 4194240, %i1
	or %i1, 7, %i1
	add %i0, %i1, %i1
	st %i1, [%fp+-20]                       ! 4-byte Folded Spill
	mov	%g0, %i0
	st %i0, [%fp+-16]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 3
	bcs	.LBB24_7
	st %i0, [%fp+-12]
! %bb.6:
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-12]                       ! 4-byte Folded Spill
.LBB24_7:
	ld [%fp+-20], %i1                       ! 4-byte Folded Reload
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
	cmp	%i1, 3
	bcs	.LBB24_9
	st %i0, [%fp+-8]
	ba .LBB24_8
	nop
.LBB24_8:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.24), %i1
	add %i1, %lo(__llvm_gcov_ctr.24), %i1
	ldd [%i1+32], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+32]
	sethi %hi(.L__profc_iswcntrl), %i1
	add %i1, %lo(.L__profc_iswcntrl), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	ba .LBB24_9
	st %i0, [%fp+-8]
.LBB24_9:
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
	sethi %hi(__llvm_gcov_ctr.25), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.25)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.25)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_iswdigit), %i0
	ldd [%i0+%lo(.L__profc_iswdigit)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_iswdigit)]
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
	sethi %hi(.L__profc_iswprint), %i0
	ldd [%i0+%lo(.L__profc_iswprint)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_iswprint)]
	ld [%fp+-8], %i0
	cmp	%i0, 254
	bgu	.LBB26_4
	nop
	ba .LBB26_1
	nop
.LBB26_1:
	sethi %hi(__llvm_gcov_ctr.26), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.26)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.26)]
	sethi %hi(.L__profc_iswprint), %i0
	add %i0, %lo(.L__profc_iswprint), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	ba .LBB26_15
	st %i0, [%fp+-4]
.LBB26_4:
	ld [%fp+-8], %i0
	sethi 8, %i1
	or %i1, 40, %i1
	cmp	%i0, %i1
	bcs	.LBB26_9
	nop
	ba .LBB26_5
	nop
.LBB26_5:
	sethi %hi(__llvm_gcov_ctr.26), %i0
	add %i0, %lo(__llvm_gcov_ctr.26), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_iswprint), %i0
	add %i0, %lo(.L__profc_iswprint), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-8], %i0
	sethi 4194295, %i1
	or %i1, 982, %i1
	add %i0, %i1, %i0
	sethi 45, %i1
	or %i1, 982, %i1
	cmp	%i0, %i1
	bcs	.LBB26_9
	nop
	ba .LBB26_6
	nop
.LBB26_6:
	sethi %hi(__llvm_gcov_ctr.26), %i0
	add %i0, %lo(__llvm_gcov_ctr.26), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_iswprint), %i0
	add %i0, %lo(.L__profc_iswprint), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB26_7
	std %i2, [%i0+48]
.LBB26_7:
	sethi %hi(.L__profc_iswprint), %i0
	add %i0, %lo(.L__profc_iswprint), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	ld [%fp+-8], %i0
	sethi 4194248, %i1
	add %i0, %i1, %i0
	sethi 7, %i1
	or %i1, 1017, %i1
	cmp	%i0, %i1
	bcs	.LBB26_9
	nop
	ba .LBB26_8
	nop
.LBB26_8:
	sethi %hi(.L__profc_iswprint), %i0
	add %i0, %lo(.L__profc_iswprint), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB26_10
	std %i2, [%i0+32]
.LBB26_9:
	sethi %hi(__llvm_gcov_ctr.26), %i0
	add %i0, %lo(__llvm_gcov_ctr.26), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_iswprint), %i0
	add %i0, %lo(.L__profc_iswprint), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	mov	1, %i0
	ba .LBB26_15
	st %i0, [%fp+-4]
.LBB26_10:
	ld [%fp+-8], %i0
	sethi 4194240, %i1
	or %i1, 4, %i1
	add %i0, %i1, %i0
	sethi 1024, %i1
	or %i1, 3, %i1
	cmp	%i0, %i1
	bgu	.LBB26_13
	nop
	ba .LBB26_11
	nop
.LBB26_11:
	sethi %hi(__llvm_gcov_ctr.26), %i0
	add %i0, %lo(__llvm_gcov_ctr.26), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc_iswprint), %i0
	add %i0, %lo(.L__profc_iswprint), %i0
	ldd [%i0+64], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+64]
	ld [%fp+-8], %i0
	sethi 63, %i1
	or %i1, 1022, %i1
	and %i0, %i1, %i0
	cmp	%i0, %i1
	be	.LBB26_13
	nop
	ba .LBB26_12
	nop
.LBB26_12:
	sethi %hi(.L__profc_iswprint), %i0
	add %i0, %lo(.L__profc_iswprint), %i0
	ldd [%i0+72], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB26_14
	std %i2, [%i0+72]
.LBB26_13:
	sethi %hi(__llvm_gcov_ctr.26), %i0
	add %i0, %lo(__llvm_gcov_ctr.26), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	sethi %hi(.L__profc_iswprint), %i0
	add %i0, %lo(.L__profc_iswprint), %i0
	ldd [%i0+56], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+56]
	ba .LBB26_15
	st %g0, [%fp+-4]
.LBB26_14:
	sethi %hi(__llvm_gcov_ctr.26), %i0
	add %i0, %lo(__llvm_gcov_ctr.26), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	mov	1, %i0
	ba .LBB26_15
	st %i0, [%fp+-4]
.LBB26_15:
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
	save %sp, -120, %sp
	sethi %hi(__llvm_gcov_ctr.27), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.27)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.27)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_iswxdigit), %i0
	ldd [%i0+%lo(.L__profc_iswxdigit)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_iswxdigit)]
	ld [%fp+-4], %i0
	add %i0, -48, %i1
	mov	1, %i0
	cmp	%i1, 10
	bcs	.LBB27_5
	st %i0, [%fp+-8]
	ba .LBB27_1
	nop
.LBB27_1:
	sethi %hi(__llvm_gcov_ctr.27), %i0
	add %i0, %lo(__llvm_gcov_ctr.27), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_iswxdigit), %i0
	add %i0, %lo(.L__profc_iswxdigit), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-4], %i0
	or %i0, 32, %i0
	add %i0, -97, %i1
	st %i1, [%fp+-20]                       ! 4-byte Folded Spill
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
	ld [%fp+-20], %i1                       ! 4-byte Folded Reload
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
	cmp	%i1, 6
	bcs	.LBB27_5
	st %i0, [%fp+-8]
	ba .LBB27_4
	nop
.LBB27_4:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.27), %i1
	add %i1, %lo(__llvm_gcov_ctr.27), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	sethi %hi(.L__profc_iswxdigit), %i1
	add %i1, %lo(.L__profc_iswxdigit), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	ba .LBB27_5
	st %i0, [%fp+-8]
.LBB27_5:
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
	sethi %hi(__llvm_gcov_ctr.28), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.28)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.28)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_toascii), %i0
	ldd [%i0+%lo(.L__profc_toascii)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_toascii)]
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
	sethi %hi(.L__profc_fdim), %i0
	ldd [%i0+%lo(.L__profc_fdim)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_fdim)]
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
	sethi %hi(__llvm_gcov_ctr.29), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.29)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.29)]
	sethi %hi(.L__profc_fdim), %i0
	add %i0, %lo(.L__profc_fdim), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.29), %i0
	add %i0, %lo(__llvm_gcov_ctr.29), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_fdim), %i0
	add %i0, %lo(.L__profc_fdim), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.29), %i0
	add %i0, %lo(__llvm_gcov_ctr.29), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_fdim), %i0
	add %i0, %lo(.L__profc_fdim), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	sethi %hi(__llvm_gcov_ctr.29), %i0
	add %i0, %lo(__llvm_gcov_ctr.29), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	sethi %hi(.L__profc_fdimf), %i0
	ldd [%i0+%lo(.L__profc_fdimf)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_fdimf)]
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
	sethi %hi(__llvm_gcov_ctr.30), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.30)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.30)]
	sethi %hi(.L__profc_fdimf), %i0
	add %i0, %lo(.L__profc_fdimf), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.30), %i0
	add %i0, %lo(__llvm_gcov_ctr.30), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_fdimf), %i0
	add %i0, %lo(.L__profc_fdimf), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.30), %i0
	add %i0, %lo(__llvm_gcov_ctr.30), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_fdimf), %i0
	add %i0, %lo(.L__profc_fdimf), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	ld [%fp+-8], %o0
	call __subsf3
	ld [%fp+-12], %o1
	mov	%o0, %i0
	ba .LBB30_7
	st %i0, [%fp+-16]
.LBB30_6:
	sethi %hi(__llvm_gcov_ctr.30), %i0
	add %i0, %lo(__llvm_gcov_ctr.30), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	sethi %hi(.L__profc_fmax), %i0
	ldd [%i0+%lo(.L__profc_fmax)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_fmax)]
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
	sethi %hi(__llvm_gcov_ctr.31), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.31)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.31)]
	sethi %hi(.L__profc_fmax), %i0
	add %i0, %lo(.L__profc_fmax), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.31), %i0
	add %i0, %lo(__llvm_gcov_ctr.31), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_fmax), %i0
	add %i0, %lo(.L__profc_fmax), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(.L__profc_fmax), %i0
	add %i0, %lo(.L__profc_fmax), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	add %fp, -16, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	cmp	%i0, -1
	bg	.LBB31_19
	nop
	ba .LBB31_18
	nop
.LBB31_18:
	sethi %hi(__llvm_gcov_ctr.31), %i0
	add %i0, %lo(__llvm_gcov_ctr.31), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_fmax), %i0
	add %i0, %lo(.L__profc_fmax), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ldd [%fp+-24], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-112]                      ! 4-byte Folded Spill
	ba .LBB31_20
	st %i0, [%fp+-108]
.LBB31_19:
	sethi %hi(__llvm_gcov_ctr.31), %i0
	add %i0, %lo(__llvm_gcov_ctr.31), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	sethi %hi(__llvm_gcov_ctr.31), %i0
	add %i0, %lo(__llvm_gcov_ctr.31), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc_fmax), %i0
	add %i0, %lo(.L__profc_fmax), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ldd [%fp+-24], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-120]                      ! 4-byte Folded Spill
	ba .LBB31_24
	st %i0, [%fp+-116]
.LBB31_23:
	sethi %hi(__llvm_gcov_ctr.31), %i0
	add %i0, %lo(__llvm_gcov_ctr.31), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
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
	sethi %hi(.L__profc_fmaxf), %i0
	ldd [%i0+%lo(.L__profc_fmaxf)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_fmaxf)]
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
	sethi %hi(__llvm_gcov_ctr.32), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.32)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.32)]
	sethi %hi(.L__profc_fmaxf), %i0
	add %i0, %lo(.L__profc_fmaxf), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.32), %i0
	add %i0, %lo(__llvm_gcov_ctr.32), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_fmaxf), %i0
	add %i0, %lo(.L__profc_fmaxf), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(.L__profc_fmaxf), %i0
	add %i0, %lo(.L__profc_fmaxf), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	ld [%fp+-8], %i0
	cmp	%i0, -1
	bg	.LBB32_7
	nop
	ba .LBB32_6
	nop
.LBB32_6:
	sethi %hi(__llvm_gcov_ctr.32), %i0
	add %i0, %lo(__llvm_gcov_ctr.32), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_fmaxf), %i0
	add %i0, %lo(.L__profc_fmaxf), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-12], %i0
	ba .LBB32_8
	st %i0, [%fp+-16]
.LBB32_7:
	sethi %hi(__llvm_gcov_ctr.32), %i0
	add %i0, %lo(__llvm_gcov_ctr.32), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	sethi %hi(__llvm_gcov_ctr.32), %i0
	add %i0, %lo(__llvm_gcov_ctr.32), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc_fmaxf), %i0
	add %i0, %lo(.L__profc_fmaxf), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-12], %i0
	ba .LBB32_12
	st %i0, [%fp+-20]
.LBB32_11:
	sethi %hi(__llvm_gcov_ctr.32), %i0
	add %i0, %lo(__llvm_gcov_ctr.32), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
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
	sethi %hi(.L__profc_fmaxl), %i0
	ldd [%i0+%lo(.L__profc_fmaxl)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_fmaxl)]
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
	sethi %hi(__llvm_gcov_ctr.33), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.33)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.33)]
	sethi %hi(.L__profc_fmaxl), %i0
	add %i0, %lo(.L__profc_fmaxl), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.33), %i0
	add %i0, %lo(__llvm_gcov_ctr.33), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_fmaxl), %i0
	add %i0, %lo(.L__profc_fmaxl), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(.L__profc_fmaxl), %i0
	add %i0, %lo(.L__profc_fmaxl), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	add %fp, -16, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	cmp	%i0, -1
	bg	.LBB33_19
	nop
	ba .LBB33_18
	nop
.LBB33_18:
	sethi %hi(__llvm_gcov_ctr.33), %i0
	add %i0, %lo(__llvm_gcov_ctr.33), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_fmaxl), %i0
	add %i0, %lo(.L__profc_fmaxl), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ldd [%fp+-24], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-112]                      ! 4-byte Folded Spill
	ba .LBB33_20
	st %i0, [%fp+-108]
.LBB33_19:
	sethi %hi(__llvm_gcov_ctr.33), %i0
	add %i0, %lo(__llvm_gcov_ctr.33), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	sethi %hi(__llvm_gcov_ctr.33), %i0
	add %i0, %lo(__llvm_gcov_ctr.33), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc_fmaxl), %i0
	add %i0, %lo(.L__profc_fmaxl), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ldd [%fp+-24], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-120]                      ! 4-byte Folded Spill
	ba .LBB33_24
	st %i0, [%fp+-116]
.LBB33_23:
	sethi %hi(__llvm_gcov_ctr.33), %i0
	add %i0, %lo(__llvm_gcov_ctr.33), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
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
	sethi %hi(.L__profc_fmin), %i0
	ldd [%i0+%lo(.L__profc_fmin)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_fmin)]
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
	sethi %hi(__llvm_gcov_ctr.34), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.34)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.34)]
	sethi %hi(.L__profc_fmin), %i0
	add %i0, %lo(.L__profc_fmin), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.34), %i0
	add %i0, %lo(__llvm_gcov_ctr.34), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_fmin), %i0
	add %i0, %lo(.L__profc_fmin), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(.L__profc_fmin), %i0
	add %i0, %lo(.L__profc_fmin), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	add %fp, -16, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	cmp	%i0, -1
	bg	.LBB34_19
	nop
	ba .LBB34_18
	nop
.LBB34_18:
	sethi %hi(__llvm_gcov_ctr.34), %i0
	add %i0, %lo(__llvm_gcov_ctr.34), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_fmin), %i0
	add %i0, %lo(.L__profc_fmin), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ldd [%fp+-16], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-112]                      ! 4-byte Folded Spill
	ba .LBB34_20
	st %i0, [%fp+-108]
.LBB34_19:
	sethi %hi(__llvm_gcov_ctr.34), %i0
	add %i0, %lo(__llvm_gcov_ctr.34), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	sethi %hi(__llvm_gcov_ctr.34), %i0
	add %i0, %lo(__llvm_gcov_ctr.34), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc_fmin), %i0
	add %i0, %lo(.L__profc_fmin), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ldd [%fp+-16], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-120]                      ! 4-byte Folded Spill
	ba .LBB34_24
	st %i0, [%fp+-116]
.LBB34_23:
	sethi %hi(__llvm_gcov_ctr.34), %i0
	add %i0, %lo(__llvm_gcov_ctr.34), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
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
	sethi %hi(.L__profc_fminf), %i0
	ldd [%i0+%lo(.L__profc_fminf)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_fminf)]
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
	sethi %hi(__llvm_gcov_ctr.35), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.35)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.35)]
	sethi %hi(.L__profc_fminf), %i0
	add %i0, %lo(.L__profc_fminf), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.35), %i0
	add %i0, %lo(__llvm_gcov_ctr.35), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_fminf), %i0
	add %i0, %lo(.L__profc_fminf), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(.L__profc_fminf), %i0
	add %i0, %lo(.L__profc_fminf), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	ld [%fp+-8], %i0
	cmp	%i0, -1
	bg	.LBB35_7
	nop
	ba .LBB35_6
	nop
.LBB35_6:
	sethi %hi(__llvm_gcov_ctr.35), %i0
	add %i0, %lo(__llvm_gcov_ctr.35), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_fminf), %i0
	add %i0, %lo(.L__profc_fminf), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-8], %i0
	ba .LBB35_8
	st %i0, [%fp+-16]
.LBB35_7:
	sethi %hi(__llvm_gcov_ctr.35), %i0
	add %i0, %lo(__llvm_gcov_ctr.35), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	sethi %hi(__llvm_gcov_ctr.35), %i0
	add %i0, %lo(__llvm_gcov_ctr.35), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc_fminf), %i0
	add %i0, %lo(.L__profc_fminf), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-8], %i0
	ba .LBB35_12
	st %i0, [%fp+-20]
.LBB35_11:
	sethi %hi(__llvm_gcov_ctr.35), %i0
	add %i0, %lo(__llvm_gcov_ctr.35), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
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
	sethi %hi(.L__profc_fminl), %i0
	ldd [%i0+%lo(.L__profc_fminl)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_fminl)]
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
	sethi %hi(__llvm_gcov_ctr.36), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.36)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.36)]
	sethi %hi(.L__profc_fminl), %i0
	add %i0, %lo(.L__profc_fminl), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.36), %i0
	add %i0, %lo(__llvm_gcov_ctr.36), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_fminl), %i0
	add %i0, %lo(.L__profc_fminl), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(.L__profc_fminl), %i0
	add %i0, %lo(.L__profc_fminl), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	add %fp, -16, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	cmp	%i0, -1
	bg	.LBB36_19
	nop
	ba .LBB36_18
	nop
.LBB36_18:
	sethi %hi(__llvm_gcov_ctr.36), %i0
	add %i0, %lo(__llvm_gcov_ctr.36), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_fminl), %i0
	add %i0, %lo(.L__profc_fminl), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ldd [%fp+-16], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-112]                      ! 4-byte Folded Spill
	ba .LBB36_20
	st %i0, [%fp+-108]
.LBB36_19:
	sethi %hi(__llvm_gcov_ctr.36), %i0
	add %i0, %lo(__llvm_gcov_ctr.36), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	sethi %hi(__llvm_gcov_ctr.36), %i0
	add %i0, %lo(__llvm_gcov_ctr.36), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc_fminl), %i0
	add %i0, %lo(.L__profc_fminl), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ldd [%fp+-16], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-120]                      ! 4-byte Folded Spill
	ba .LBB36_24
	st %i0, [%fp+-116]
.LBB36_23:
	sethi %hi(__llvm_gcov_ctr.36), %i0
	add %i0, %lo(__llvm_gcov_ctr.36), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
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
	sethi %hi(__llvm_gcov_ctr.37), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.37)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.37)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_l64a), %i0
	ldd [%i0+%lo(.L__profc_l64a)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_l64a)]
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
	sethi %hi(.L__profc_l64a), %i0
	add %i0, %lo(.L__profc_l64a), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-12], %i0
	and %i0, 63, %i1
	sethi %hi(digits), %i0
	add %i0, %lo(digits), %i0
	ldub [%i0+%i1], %i1
	ld [%fp+-8], %i0
	ba .LBB37_3
	stb %i1, [%i0]
.LBB37_3:                               !   in Loop: Header=BB37_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.37), %i0
	add %i0, %lo(__llvm_gcov_ctr.37), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.38), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.38)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.38)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_srand), %i0
	ldd [%i0+%lo(.L__profc_srand)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_srand)]
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
	sethi %hi(__llvm_gcov_ctr.39), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.39)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.39)]
	sethi %hi(.L__profc_rand), %i0
	ldd [%i0+%lo(.L__profc_rand)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_rand)]
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
	sethi %hi(.L__profc_insque), %i0
	ldd [%i0+%lo(.L__profc_insque)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_insque)]
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
	sethi %hi(__llvm_gcov_ctr.40), %i0
	add %i0, %lo(__llvm_gcov_ctr.40), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_insque), %i0
	add %i0, %lo(.L__profc_insque), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-12], %i0
	st %g0, [%i0+4]
	ld [%fp+-12], %i0
	ba .LBB40_4
	st %g0, [%i0]
.LBB40_2:
	sethi %hi(__llvm_gcov_ctr.40), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.40)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.40)]
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
	sethi %hi(__llvm_gcov_ctr.40), %i0
	add %i0, %lo(__llvm_gcov_ctr.40), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_insque), %i0
	add %i0, %lo(.L__profc_insque), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.41), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.41)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.41)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_remque), %i0
	ldd [%i0+%lo(.L__profc_remque)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_remque)]
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
	sethi %hi(__llvm_gcov_ctr.41), %i0
	add %i0, %lo(__llvm_gcov_ctr.41), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_remque), %i0
	add %i0, %lo(.L__profc_remque), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.41), %i0
	add %i0, %lo(__llvm_gcov_ctr.41), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_remque), %i0
	add %i0, %lo(.L__profc_remque), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(.L__profc_lsearch), %i0
	ldd [%i0+%lo(.L__profc_lsearch)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_lsearch)]
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
	sethi %hi(.L__profc_lsearch), %i0
	add %i0, %lo(.L__profc_lsearch), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i2
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i4_i5
	mov	%i2, %i4
	mov	%i1, %i5
	std %i4, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.42), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.42)], %i4
	mov	%i4, %i3
	mov	%i5, %i1
	addcc %i3, 1, %i3
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i4_i5
	mov	%i3, %i4
	mov	%i1, %i5
	std %i4, [%i0+%lo(__llvm_gcov_ctr.42)]
	sethi %hi(.L__profc_lsearch), %i0
	add %i0, %lo(.L__profc_lsearch), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i3
	mov	%i5, %i1
	addcc %i3, 1, %i3
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i4_i5
	mov	%i3, %i4
	mov	%i1, %i5
	std %i4, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.42), %i0
	add %i0, %lo(__llvm_gcov_ctr.42), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-36], %i0
	add %i0, 1, %i0
	ba .LBB42_1
	st %i0, [%fp+-36]
.LBB42_6:
	ld [%fp+-40], %i2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.42), %i0
	add %i0, %lo(__llvm_gcov_ctr.42), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i3
	mov	%i5, %i1
	addcc %i3, 1, %i3
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i4_i5
	mov	%i3, %i4
	mov	%i1, %i5
	std %i4, [%i0+16]
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
	sethi %hi(.L__profc_lfind), %i0
	ldd [%i0+%lo(.L__profc_lfind)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_lfind)]
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
	sethi %hi(.L__profc_lfind), %i0
	add %i0, %lo(.L__profc_lfind), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i2
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i4_i5
	mov	%i2, %i4
	mov	%i1, %i5
	std %i4, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.43), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.43)], %i4
	mov	%i4, %i3
	mov	%i5, %i1
	addcc %i3, 1, %i3
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i4_i5
	mov	%i3, %i4
	mov	%i1, %i5
	std %i4, [%i0+%lo(__llvm_gcov_ctr.43)]
	sethi %hi(.L__profc_lfind), %i0
	add %i0, %lo(.L__profc_lfind), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i3
	mov	%i5, %i1
	addcc %i3, 1, %i3
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i4_i5
	mov	%i3, %i4
	mov	%i1, %i5
	std %i4, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.43), %i0
	add %i0, %lo(__llvm_gcov_ctr.43), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-36], %i0
	add %i0, 1, %i0
	ba .LBB43_1
	st %i0, [%fp+-36]
.LBB43_6:
	sethi %hi(__llvm_gcov_ctr.43), %i0
	add %i0, %lo(__llvm_gcov_ctr.43), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(.L__profc_abs), %i0
	ldd [%i0+%lo(.L__profc_abs)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_abs)]
	ld [%fp+-4], %i0
	cmp	%i0, 1
	bl	.LBB44_2
	nop
	ba .LBB44_1
	nop
.LBB44_1:
	sethi %hi(__llvm_gcov_ctr.44), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.44)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.44)]
	sethi %hi(.L__profc_abs), %i0
	add %i0, %lo(.L__profc_abs), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-4], %i0
	ba .LBB44_3
	st %i0, [%fp+-8]
.LBB44_2:
	sethi %hi(__llvm_gcov_ctr.44), %i0
	add %i0, %lo(__llvm_gcov_ctr.44), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(.L__profc_atoi), %i0
	ldd [%i0+%lo(.L__profc_atoi)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_atoi)]
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
	sethi %hi(__llvm_gcov_ctr.45), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.45)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.45)]
	sethi %hi(.L__profc_atoi), %i0
	add %i0, %lo(.L__profc_atoi), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	bne	.LBB45_8
	nop
	ba .LBB45_5
	nop
.LBB45_5:
	sethi %hi(__llvm_gcov_ctr.45), %i0
	add %i0, %lo(__llvm_gcov_ctr.45), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_atoi), %i0
	add %i0, %lo(.L__profc_atoi), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	mov	1, %i0
	ba .LBB45_7
	st %i0, [%fp+-12]
.LBB45_6:
	sethi %hi(__llvm_gcov_ctr.45), %i0
	add %i0, %lo(__llvm_gcov_ctr.45), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_atoi), %i0
	add %i0, %lo(.L__profc_atoi), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB45_7
	std %i2, [%i0+32]
.LBB45_7:
	ld [%fp+-4], %i0
	add %i0, 1, %i0
	ba .LBB45_8
	st %i0, [%fp+-4]
.LBB45_8:
	sethi %hi(.L__profc_atoi), %i0
	add %i0, %lo(.L__profc_atoi), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB45_9
	std %i2, [%i0+16]
.LBB45_9:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	call isdigit
	ldsb [%i0], %o0
	cmp	%o0, 0
	be	.LBB45_11
	nop
	ba .LBB45_10
	nop
.LBB45_10:                              !   in Loop: Header=BB45_9 Depth=1
	sethi %hi(__llvm_gcov_ctr.45), %i0
	add %i0, %lo(__llvm_gcov_ctr.45), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_atoi), %i0
	add %i0, %lo(.L__profc_atoi), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-8], %i0
	smul %i0, 10, %i0
	ld [%fp+-4], %i1
	add %i1, 1, %i2
	st %i2, [%fp+-4]
	ldsb [%i1], %i1
	sub %i0, %i1, %i0
	add %i0, 48, %i0
	ba .LBB45_9
	st %i0, [%fp+-8]
.LBB45_11:
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB45_13
	nop
	ba .LBB45_12
	nop
.LBB45_12:
	sethi %hi(__llvm_gcov_ctr.45), %i0
	add %i0, %lo(__llvm_gcov_ctr.45), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc_atoi), %i0
	add %i0, %lo(.L__profc_atoi), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	ld [%fp+-8], %i0
	ba .LBB45_14
	st %i0, [%fp+-20]
.LBB45_13:
	sethi %hi(__llvm_gcov_ctr.45), %i0
	add %i0, %lo(__llvm_gcov_ctr.45), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-8], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB45_14
	st %i0, [%fp+-20]
.LBB45_14:
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
	sethi %hi(.L__profc_atol), %i0
	ldd [%i0+%lo(.L__profc_atol)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_atol)]
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
	sethi %hi(__llvm_gcov_ctr.46), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.46)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.46)]
	sethi %hi(.L__profc_atol), %i0
	add %i0, %lo(.L__profc_atol), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	bne	.LBB46_8
	nop
	ba .LBB46_5
	nop
.LBB46_5:
	sethi %hi(__llvm_gcov_ctr.46), %i0
	add %i0, %lo(__llvm_gcov_ctr.46), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_atol), %i0
	add %i0, %lo(.L__profc_atol), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	mov	1, %i0
	ba .LBB46_7
	st %i0, [%fp+-12]
.LBB46_6:
	sethi %hi(__llvm_gcov_ctr.46), %i0
	add %i0, %lo(__llvm_gcov_ctr.46), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_atol), %i0
	add %i0, %lo(.L__profc_atol), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB46_7
	std %i2, [%i0+32]
.LBB46_7:
	ld [%fp+-4], %i0
	add %i0, 1, %i0
	ba .LBB46_8
	st %i0, [%fp+-4]
.LBB46_8:
	sethi %hi(.L__profc_atol), %i0
	add %i0, %lo(.L__profc_atol), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB46_9
	std %i2, [%i0+16]
.LBB46_9:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	call isdigit
	ldsb [%i0], %o0
	cmp	%o0, 0
	be	.LBB46_11
	nop
	ba .LBB46_10
	nop
.LBB46_10:                              !   in Loop: Header=BB46_9 Depth=1
	sethi %hi(__llvm_gcov_ctr.46), %i0
	add %i0, %lo(__llvm_gcov_ctr.46), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_atol), %i0
	add %i0, %lo(.L__profc_atol), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-8], %i0
	smul %i0, 10, %i0
	ld [%fp+-4], %i1
	add %i1, 1, %i2
	st %i2, [%fp+-4]
	ldsb [%i1], %i1
	sub %i0, %i1, %i0
	add %i0, 48, %i0
	ba .LBB46_9
	st %i0, [%fp+-8]
.LBB46_11:
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB46_13
	nop
	ba .LBB46_12
	nop
.LBB46_12:
	sethi %hi(__llvm_gcov_ctr.46), %i0
	add %i0, %lo(__llvm_gcov_ctr.46), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc_atol), %i0
	add %i0, %lo(.L__profc_atol), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	ld [%fp+-8], %i0
	ba .LBB46_14
	st %i0, [%fp+-20]
.LBB46_13:
	sethi %hi(__llvm_gcov_ctr.46), %i0
	add %i0, %lo(__llvm_gcov_ctr.46), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-8], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB46_14
	st %i0, [%fp+-20]
.LBB46_14:
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
	sethi %hi(.L__profc_atoll), %i0
	ldd [%i0+%lo(.L__profc_atoll)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_atoll)]
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
	sethi %hi(__llvm_gcov_ctr.47), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.47)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.47)]
	sethi %hi(.L__profc_atoll), %i0
	add %i0, %lo(.L__profc_atoll), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	bne	.LBB47_8
	nop
	ba .LBB47_5
	nop
.LBB47_5:
	sethi %hi(__llvm_gcov_ctr.47), %i0
	add %i0, %lo(__llvm_gcov_ctr.47), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_atoll), %i0
	add %i0, %lo(.L__profc_atoll), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	mov	1, %i0
	ba .LBB47_7
	st %i0, [%fp+-20]
.LBB47_6:
	sethi %hi(__llvm_gcov_ctr.47), %i0
	add %i0, %lo(__llvm_gcov_ctr.47), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_atoll), %i0
	add %i0, %lo(.L__profc_atoll), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB47_7
	std %i2, [%i0+32]
.LBB47_7:
	ld [%fp+-4], %i0
	add %i0, 1, %i0
	ba .LBB47_8
	st %i0, [%fp+-4]
.LBB47_8:
	sethi %hi(.L__profc_atoll), %i0
	add %i0, %lo(.L__profc_atoll), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB47_9
	std %i2, [%i0+16]
.LBB47_9:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	call isdigit
	ldsb [%i0], %o0
	cmp	%o0, 0
	be	.LBB47_11
	nop
	ba .LBB47_10
	nop
.LBB47_10:                              !   in Loop: Header=BB47_9 Depth=1
	sethi %hi(__llvm_gcov_ctr.47), %i0
	add %i0, %lo(__llvm_gcov_ctr.47), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_atoll), %i0
	add %i0, %lo(.L__profc_atoll), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
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
	ba .LBB47_9
	std %i0, [%fp+-16]
.LBB47_11:
	ld [%fp+-20], %i0
	cmp	%i0, 0
	be	.LBB47_13
	nop
	ba .LBB47_12
	nop
.LBB47_12:
	sethi %hi(__llvm_gcov_ctr.47), %i0
	add %i0, %lo(__llvm_gcov_ctr.47), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc_atoll), %i0
	add %i0, %lo(.L__profc_atoll), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	ldd [%fp+-16], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-32]                       ! 4-byte Folded Spill
	ba .LBB47_14
	st %i0, [%fp+-28]
.LBB47_13:
	sethi %hi(__llvm_gcov_ctr.47), %i0
	add %i0, %lo(__llvm_gcov_ctr.47), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ldd [%fp+-16], %i2
	mov	%i2, %i1
	mov	%i3, %i2
	mov	%g0, %i0
	subcc %i0, %i1, %i1
	subxcc %i0, %i2, %i0
	st %i1, [%fp+-32]                       ! 4-byte Folded Spill
	ba .LBB47_14
	st %i0, [%fp+-28]
.LBB47_14:
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
	st %i4, [%fp+-24]
	sethi %hi(.L__profc_bsearch), %i0
	ldd [%i0+%lo(.L__profc_bsearch)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB48_1
	std %i2, [%i0+%lo(.L__profc_bsearch)]
.LBB48_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-16], %i0
	cmp	%i0, 0
	be	.LBB48_9
	nop
	ba .LBB48_2
	nop
.LBB48_2:                               !   in Loop: Header=BB48_1 Depth=1
	sethi %hi(.L__profc_bsearch), %i0
	add %i0, %lo(.L__profc_bsearch), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.48), %i0
	add %i0, %lo(__llvm_gcov_ctr.48), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_bsearch), %i0
	add %i0, %lo(.L__profc_bsearch), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(.L__profc_bsearch), %i0
	add %i0, %lo(.L__profc_bsearch), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	sethi %hi(__llvm_gcov_ctr.48), %i0
	add %i0, %lo(__llvm_gcov_ctr.48), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-28], %i0
	ba .LBB48_10
	st %i0, [%fp+-4]
.LBB48_7:                               !   in Loop: Header=BB48_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.48), %i0
	add %i0, %lo(__llvm_gcov_ctr.48), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB48_8
	std %i2, [%i0+24]
.LBB48_8:                               !   in Loop: Header=BB48_1 Depth=1
	ba .LBB48_1
	nop
.LBB48_9:
	sethi %hi(__llvm_gcov_ctr.48), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.48)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.48)]
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
	sethi %hi(.L__profc_bsearch_r), %i0
	ldd [%i0+%lo(.L__profc_bsearch_r)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_bsearch_r)]
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
	sethi %hi(.L__profc_bsearch_r), %i0
	add %i0, %lo(.L__profc_bsearch_r), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.49), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.49)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.49)]
	sethi %hi(.L__profc_bsearch_r), %i0
	add %i0, %lo(.L__profc_bsearch_r), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.49), %i0
	add %i0, %lo(__llvm_gcov_ctr.49), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_bsearch_r), %i0
	add %i0, %lo(.L__profc_bsearch_r), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	sethi %hi(__llvm_gcov_ctr.49), %i0
	add %i0, %lo(__llvm_gcov_ctr.49), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-36], %i0
	sra %i0, 1, %i0
	ba .LBB49_1
	st %i0, [%fp+-36]
.LBB49_8:
	sethi %hi(__llvm_gcov_ctr.49), %i0
	add %i0, %lo(__llvm_gcov_ctr.49), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	sethi %hi(__llvm_gcov_ctr.50), %i4
	ldd [%i4+%lo(__llvm_gcov_ctr.50)], %l0
	mov	%l0, %g2
	mov	%l1, %i5
	addcc %g2, 1, %g4
	addxcc %i5, 0, %i5
                                        ! implicit-def: $g2_g3
	mov	%g4, %g2
	mov	%i5, %g3
	std %g2, [%i4+%lo(__llvm_gcov_ctr.50)]
	st %i3, [%fp+-4]
	st %i2, [%fp+-8]
	sethi %hi(.L__profc_div), %i2
	ldd [%i2+%lo(.L__profc_div)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(.L__profc_div)]
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
	sethi %hi(.L__profc_imaxabs), %i0
	ldd [%i0+%lo(.L__profc_imaxabs)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_imaxabs)]
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
	sethi %hi(__llvm_gcov_ctr.51), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.51)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.51)]
	sethi %hi(.L__profc_imaxabs), %i0
	add %i0, %lo(.L__profc_imaxabs), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ldd [%fp+-8], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-48]                       ! 4-byte Folded Spill
	ba .LBB51_9
	st %i0, [%fp+-44]
.LBB51_8:
	sethi %hi(__llvm_gcov_ctr.51), %i0
	add %i0, %lo(__llvm_gcov_ctr.51), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.52), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.52)], %l0
	mov	%l0, %g4
	mov	%l1, %i3
	addcc %g4, 1, %g4
	addxcc %i3, 0, %i3
                                        ! implicit-def: $l0_l1
	mov	%g4, %l0
	mov	%i3, %l1
	std %l0, [%i2+%lo(__llvm_gcov_ctr.52)]
                                        ! implicit-def: $i2_i3
	mov	%g3, %i2
	mov	%g2, %i3
	std %i2, [%fp+-8]
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%fp+-16]
	sethi %hi(.L__profc_imaxdiv), %i2
	ldd [%i2+%lo(.L__profc_imaxdiv)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(.L__profc_imaxdiv)]
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
	sethi %hi(.L__profc_labs), %i0
	ldd [%i0+%lo(.L__profc_labs)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_labs)]
	ld [%fp+-4], %i0
	cmp	%i0, 1
	bl	.LBB53_2
	nop
	ba .LBB53_1
	nop
.LBB53_1:
	sethi %hi(__llvm_gcov_ctr.53), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.53)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.53)]
	sethi %hi(.L__profc_labs), %i0
	add %i0, %lo(.L__profc_labs), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-4], %i0
	ba .LBB53_3
	st %i0, [%fp+-8]
.LBB53_2:
	sethi %hi(__llvm_gcov_ctr.53), %i0
	add %i0, %lo(__llvm_gcov_ctr.53), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.54), %i4
	ldd [%i4+%lo(__llvm_gcov_ctr.54)], %l0
	mov	%l0, %g2
	mov	%l1, %i5
	addcc %g2, 1, %g4
	addxcc %i5, 0, %i5
                                        ! implicit-def: $g2_g3
	mov	%g4, %g2
	mov	%i5, %g3
	std %g2, [%i4+%lo(__llvm_gcov_ctr.54)]
	st %i3, [%fp+-4]
	st %i2, [%fp+-8]
	sethi %hi(.L__profc_ldiv), %i2
	ldd [%i2+%lo(.L__profc_ldiv)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(.L__profc_ldiv)]
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
	sethi %hi(.L__profc_llabs), %i0
	ldd [%i0+%lo(.L__profc_llabs)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_llabs)]
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
	sethi %hi(__llvm_gcov_ctr.55), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.55)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.55)]
	sethi %hi(.L__profc_llabs), %i0
	add %i0, %lo(.L__profc_llabs), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ldd [%fp+-8], %i2
	mov	%i3, %i0
	mov	%i2, %i1
	st %i1, [%fp+-48]                       ! 4-byte Folded Spill
	ba .LBB55_9
	st %i0, [%fp+-44]
.LBB55_8:
	sethi %hi(__llvm_gcov_ctr.55), %i0
	add %i0, %lo(__llvm_gcov_ctr.55), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.56), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.56)], %l0
	mov	%l0, %g4
	mov	%l1, %i3
	addcc %g4, 1, %g4
	addxcc %i3, 0, %i3
                                        ! implicit-def: $l0_l1
	mov	%g4, %l0
	mov	%i3, %l1
	std %l0, [%i2+%lo(__llvm_gcov_ctr.56)]
                                        ! implicit-def: $i2_i3
	mov	%g3, %i2
	mov	%g2, %i3
	std %i2, [%fp+-8]
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%fp+-16]
	sethi %hi(.L__profc_lldiv), %i2
	ldd [%i2+%lo(.L__profc_lldiv)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(.L__profc_lldiv)]
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
	save %sp, -128, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc_wcschr), %i0
	ldd [%i0+%lo(.L__profc_wcschr)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB57_1
	std %i2, [%i0+%lo(.L__profc_wcschr)]
.LBB57_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	ld [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB57_6
	st %i0, [%fp+-12]
	ba .LBB57_2
	nop
.LBB57_2:                               !   in Loop: Header=BB57_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.57), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.57)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.57)]
	sethi %hi(.L__profc_wcschr), %i0
	add %i0, %lo(.L__profc_wcschr), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-4], %i0
	ld [%i0], %i1
	st %i1, [%fp+-28]                       ! 4-byte Folded Spill
	ld [%fp+-8], %i2
	st %i2, [%fp+-24]                       ! 4-byte Folded Spill
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
	ld [%fp+-28], %i1                       ! 4-byte Folded Reload
	ld [%fp+-24], %i2                       ! 4-byte Folded Reload
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	be	.LBB57_6
	st %i0, [%fp+-12]
	ba .LBB57_5
	nop
.LBB57_5:                               !   in Loop: Header=BB57_1 Depth=1
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.57), %i1
	add %i1, %lo(__llvm_gcov_ctr.57), %i1
	ldd [%i1+8], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+8]
	sethi %hi(.L__profc_wcschr), %i1
	add %i1, %lo(.L__profc_wcschr), %i1
	ldd [%i1+24], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+24]
	ba .LBB57_6
	st %i0, [%fp+-12]
.LBB57_6:                               !   in Loop: Header=BB57_1 Depth=1
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB57_9
	nop
	ba .LBB57_7
	nop
.LBB57_7:                               !   in Loop: Header=BB57_1 Depth=1
	sethi %hi(.L__profc_wcschr), %i0
	add %i0, %lo(.L__profc_wcschr), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB57_8
	std %i2, [%i0+8]
.LBB57_8:                               !   in Loop: Header=BB57_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.57), %i0
	add %i0, %lo(__llvm_gcov_ctr.57), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-4], %i0
	add %i0, 4, %i0
	ba .LBB57_1
	st %i0, [%fp+-4]
.LBB57_9:
	ld [%fp+-4], %i0
	ld [%i0], %i0
	cmp	%i0, 0
	be	.LBB57_11
	nop
	ba .LBB57_10
	nop
.LBB57_10:
	sethi %hi(__llvm_gcov_ctr.57), %i0
	add %i0, %lo(__llvm_gcov_ctr.57), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_wcschr), %i0
	add %i0, %lo(.L__profc_wcschr), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-4], %i0
	ba .LBB57_12
	st %i0, [%fp+-36]
.LBB57_11:
	sethi %hi(__llvm_gcov_ctr.57), %i0
	add %i0, %lo(__llvm_gcov_ctr.57), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	mov	%g0, %i0
	ba .LBB57_12
	st %i0, [%fp+-36]
.LBB57_12:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
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
	save %sp, -136, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc_wcscmp), %i0
	ldd [%i0+%lo(.L__profc_wcscmp)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB58_1
	std %i2, [%i0+%lo(.L__profc_wcscmp)]
.LBB58_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	ld [%i0], %i1
	ld [%fp+-8], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bne	.LBB58_8
	st %i0, [%fp+-12]
	ba .LBB58_2
	nop
.LBB58_2:                               !   in Loop: Header=BB58_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.58), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.58)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.58)]
	sethi %hi(.L__profc_wcscmp), %i0
	add %i0, %lo(.L__profc_wcscmp), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-4], %i0
	ld [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB58_8
	st %i0, [%fp+-12]
	ba .LBB58_3
	nop
.LBB58_3:                               !   in Loop: Header=BB58_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.58), %i0
	add %i0, %lo(__llvm_gcov_ctr.58), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_wcscmp), %i0
	add %i0, %lo(.L__profc_wcscmp), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB58_4
	std %i2, [%i0+40]
.LBB58_4:                               !   in Loop: Header=BB58_1 Depth=1
	sethi %hi(.L__profc_wcscmp), %i0
	add %i0, %lo(.L__profc_wcscmp), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-8], %i0
	ld [%i0], %i1
	st %i1, [%fp+-24]                       ! 4-byte Folded Spill
	mov	%g0, %i0
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 0
	bne	.LBB58_6
	st %i0, [%fp+-16]
! %bb.5:                                !   in Loop: Header=BB58_1 Depth=1
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-16]                       ! 4-byte Folded Spill
.LBB58_6:                               !   in Loop: Header=BB58_1 Depth=1
	ld [%fp+-24], %i1                       ! 4-byte Folded Reload
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	be	.LBB58_8
	st %i0, [%fp+-12]
	ba .LBB58_7
	nop
.LBB58_7:                               !   in Loop: Header=BB58_1 Depth=1
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.58), %i1
	add %i1, %lo(__llvm_gcov_ctr.58), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	sethi %hi(.L__profc_wcscmp), %i1
	add %i1, %lo(.L__profc_wcscmp), %i1
	ldd [%i1+24], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+24]
	ba .LBB58_8
	st %i0, [%fp+-12]
.LBB58_8:                               !   in Loop: Header=BB58_1 Depth=1
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB58_11
	nop
	ba .LBB58_9
	nop
.LBB58_9:                               !   in Loop: Header=BB58_1 Depth=1
	sethi %hi(.L__profc_wcscmp), %i0
	add %i0, %lo(.L__profc_wcscmp), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB58_10
	std %i2, [%i0+8]
.LBB58_10:                              !   in Loop: Header=BB58_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.58), %i0
	add %i0, %lo(__llvm_gcov_ctr.58), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	ld [%fp+-4], %i0
	add %i0, 4, %i0
	st %i0, [%fp+-4]
	ld [%fp+-8], %i0
	add %i0, 4, %i0
	ba .LBB58_1
	st %i0, [%fp+-8]
.LBB58_11:
	ld [%fp+-4], %i0
	ld [%i0], %i0
	ld [%fp+-8], %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	bge	.LBB58_13
	nop
	ba .LBB58_12
	nop
.LBB58_12:
	sethi %hi(__llvm_gcov_ctr.58), %i0
	add %i0, %lo(__llvm_gcov_ctr.58), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc_wcscmp), %i0
	add %i0, %lo(.L__profc_wcscmp), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	mov	-1, %i0
	ba .LBB58_16
	st %i0, [%fp+-32]
.LBB58_13:
	sethi %hi(__llvm_gcov_ctr.58), %i0
	add %i0, %lo(__llvm_gcov_ctr.58), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-4], %i0
	ld [%i0], %i1
	ld [%fp+-8], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	st %i0, [%fp+-40]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, %i2
	bg	.LBB58_15
	st %i0, [%fp+-36]
! %bb.14:
	ld [%fp+-40], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
.LBB58_15:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	ba .LBB58_16
	st %i0, [%fp+-32]
.LBB58_16:
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
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
	sethi %hi(__llvm_gcov_ctr.59), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.59)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.59)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc_wcscpy), %i0
	ldd [%i0+%lo(.L__profc_wcscpy)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_wcscpy)]
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
	sethi %hi(__llvm_gcov_ctr.59), %i0
	add %i0, %lo(__llvm_gcov_ctr.59), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_wcscpy), %i0
	add %i0, %lo(.L__profc_wcscpy), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB59_1
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.60), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.60)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.60)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_wcslen), %i0
	ldd [%i0+%lo(.L__profc_wcslen)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_wcslen)]
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
	sethi %hi(.L__profc_wcslen), %i0
	add %i0, %lo(.L__profc_wcslen), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB60_3
	std %i2, [%i0+8]
.LBB60_3:                               !   in Loop: Header=BB60_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.60), %i0
	add %i0, %lo(__llvm_gcov_ctr.60), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	save %sp, -144, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	sethi %hi(.L__profc_wcsncmp), %i0
	ldd [%i0+%lo(.L__profc_wcsncmp)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB61_1
	std %i2, [%i0+%lo(.L__profc_wcsncmp)]
.LBB61_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB61_10
	st %i0, [%fp+-16]
	ba .LBB61_2
	nop
.LBB61_2:                               !   in Loop: Header=BB61_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.61), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.61)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.61)]
	sethi %hi(.L__profc_wcsncmp), %i0
	add %i0, %lo(.L__profc_wcsncmp), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	ld [%fp+-4], %i0
	ld [%i0], %i1
	ld [%fp+-8], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bne	.LBB61_10
	st %i0, [%fp+-16]
	ba .LBB61_3
	nop
.LBB61_3:                               !   in Loop: Header=BB61_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.61), %i0
	add %i0, %lo(__llvm_gcov_ctr.61), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_wcsncmp), %i0
	add %i0, %lo(.L__profc_wcsncmp), %i0
	ldd [%i0+56], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB61_4
	std %i2, [%i0+56]
.LBB61_4:                               !   in Loop: Header=BB61_1 Depth=1
	sethi %hi(.L__profc_wcsncmp), %i0
	add %i0, %lo(.L__profc_wcsncmp), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-4], %i0
	ld [%i0], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB61_10
	st %i0, [%fp+-16]
	ba .LBB61_5
	nop
.LBB61_5:                               !   in Loop: Header=BB61_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.61), %i0
	add %i0, %lo(__llvm_gcov_ctr.61), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_wcsncmp), %i0
	add %i0, %lo(.L__profc_wcsncmp), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB61_6
	std %i2, [%i0+40]
.LBB61_6:                               !   in Loop: Header=BB61_1 Depth=1
	sethi %hi(.L__profc_wcsncmp), %i0
	add %i0, %lo(.L__profc_wcsncmp), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-8], %i0
	ld [%i0], %i1
	st %i1, [%fp+-28]                       ! 4-byte Folded Spill
	mov	%g0, %i0
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 0
	bne	.LBB61_8
	st %i0, [%fp+-20]
! %bb.7:                                !   in Loop: Header=BB61_1 Depth=1
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
.LBB61_8:                               !   in Loop: Header=BB61_1 Depth=1
	ld [%fp+-28], %i1                       ! 4-byte Folded Reload
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	be	.LBB61_10
	st %i0, [%fp+-16]
	ba .LBB61_9
	nop
.LBB61_9:                               !   in Loop: Header=BB61_1 Depth=1
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.61), %i1
	add %i1, %lo(__llvm_gcov_ctr.61), %i1
	ldd [%i1+24], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+24]
	sethi %hi(.L__profc_wcsncmp), %i1
	add %i1, %lo(.L__profc_wcsncmp), %i1
	ldd [%i1+24], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+24]
	ba .LBB61_10
	st %i0, [%fp+-16]
.LBB61_10:                              !   in Loop: Header=BB61_1 Depth=1
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB61_13
	nop
	ba .LBB61_11
	nop
.LBB61_11:                              !   in Loop: Header=BB61_1 Depth=1
	sethi %hi(.L__profc_wcsncmp), %i0
	add %i0, %lo(.L__profc_wcsncmp), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB61_12
	std %i2, [%i0+8]
.LBB61_12:                              !   in Loop: Header=BB61_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.61), %i0
	add %i0, %lo(__llvm_gcov_ctr.61), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
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
.LBB61_13:
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB61_20
	nop
	ba .LBB61_14
	nop
.LBB61_14:
	sethi %hi(.L__profc_wcsncmp), %i0
	add %i0, %lo(.L__profc_wcsncmp), %i0
	ldd [%i0+64], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+64]
	ld [%fp+-4], %i0
	ld [%i0], %i0
	ld [%fp+-8], %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	bge	.LBB61_16
	nop
	ba .LBB61_15
	nop
.LBB61_15:
	sethi %hi(__llvm_gcov_ctr.61), %i0
	add %i0, %lo(__llvm_gcov_ctr.61), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	sethi %hi(.L__profc_wcsncmp), %i0
	add %i0, %lo(.L__profc_wcsncmp), %i0
	ldd [%i0+72], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+72]
	mov	-1, %i0
	ba .LBB61_19
	st %i0, [%fp+-36]
.LBB61_16:
	sethi %hi(__llvm_gcov_ctr.61), %i0
	add %i0, %lo(__llvm_gcov_ctr.61), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	ld [%fp+-4], %i0
	ld [%i0], %i1
	ld [%fp+-8], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	st %i0, [%fp+-44]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, %i2
	bg	.LBB61_18
	st %i0, [%fp+-40]
! %bb.17:
	ld [%fp+-44], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-40]                       ! 4-byte Folded Spill
.LBB61_18:
	ld [%fp+-40], %i0                       ! 4-byte Folded Reload
	ba .LBB61_19
	st %i0, [%fp+-36]
.LBB61_19:
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	ba .LBB61_21
	st %i0, [%fp+-48]
.LBB61_20:
	sethi %hi(__llvm_gcov_ctr.61), %i0
	add %i0, %lo(__llvm_gcov_ctr.61), %i0
	ldd [%i0+56], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+56]
	mov	%g0, %i0
	ba .LBB61_21
	st %i0, [%fp+-48]
.LBB61_21:
	ld [%fp+-48], %i0                       ! 4-byte Folded Reload
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
	save %sp, -136, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	sethi %hi(.L__profc_wmemchr), %i0
	ldd [%i0+%lo(.L__profc_wmemchr)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB62_1
	std %i2, [%i0+%lo(.L__profc_wmemchr)]
.LBB62_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB62_6
	st %i0, [%fp+-16]
	ba .LBB62_2
	nop
.LBB62_2:                               !   in Loop: Header=BB62_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.62), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.62)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.62)]
	sethi %hi(.L__profc_wmemchr), %i0
	add %i0, %lo(.L__profc_wmemchr), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-4], %i0
	ld [%i0], %i1
	st %i1, [%fp+-32]                       ! 4-byte Folded Spill
	ld [%fp+-8], %i2
	st %i2, [%fp+-28]                       ! 4-byte Folded Spill
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
	ld [%fp+-32], %i1                       ! 4-byte Folded Reload
	ld [%fp+-28], %i2                       ! 4-byte Folded Reload
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	be	.LBB62_6
	st %i0, [%fp+-16]
	ba .LBB62_5
	nop
.LBB62_5:                               !   in Loop: Header=BB62_1 Depth=1
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.62), %i1
	add %i1, %lo(__llvm_gcov_ctr.62), %i1
	ldd [%i1+8], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+8]
	sethi %hi(.L__profc_wmemchr), %i1
	add %i1, %lo(.L__profc_wmemchr), %i1
	ldd [%i1+24], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+24]
	ba .LBB62_6
	st %i0, [%fp+-16]
.LBB62_6:                               !   in Loop: Header=BB62_1 Depth=1
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB62_9
	nop
	ba .LBB62_7
	nop
.LBB62_7:                               !   in Loop: Header=BB62_1 Depth=1
	sethi %hi(.L__profc_wmemchr), %i0
	add %i0, %lo(.L__profc_wmemchr), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB62_8
	std %i2, [%i0+8]
.LBB62_8:                               !   in Loop: Header=BB62_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.62), %i0
	add %i0, %lo(__llvm_gcov_ctr.62), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-12], %i0
	add %i0, -1, %i0
	st %i0, [%fp+-12]
	ld [%fp+-4], %i0
	add %i0, 4, %i0
	ba .LBB62_1
	st %i0, [%fp+-4]
.LBB62_9:
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB62_11
	nop
	ba .LBB62_10
	nop
.LBB62_10:
	sethi %hi(__llvm_gcov_ctr.62), %i0
	add %i0, %lo(__llvm_gcov_ctr.62), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_wmemchr), %i0
	add %i0, %lo(.L__profc_wmemchr), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-4], %i0
	ba .LBB62_12
	st %i0, [%fp+-40]
.LBB62_11:
	sethi %hi(__llvm_gcov_ctr.62), %i0
	add %i0, %lo(__llvm_gcov_ctr.62), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	mov	%g0, %i0
	ba .LBB62_12
	st %i0, [%fp+-40]
.LBB62_12:
	ld [%fp+-40], %i0                       ! 4-byte Folded Reload
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
	save %sp, -144, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	sethi %hi(.L__profc_wmemcmp), %i0
	ldd [%i0+%lo(.L__profc_wmemcmp)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB63_1
	std %i2, [%i0+%lo(.L__profc_wmemcmp)]
.LBB63_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB63_6
	st %i0, [%fp+-16]
	ba .LBB63_2
	nop
.LBB63_2:                               !   in Loop: Header=BB63_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.63), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.63)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.63)]
	sethi %hi(.L__profc_wmemcmp), %i0
	add %i0, %lo(.L__profc_wmemcmp), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-4], %i0
	ld [%i0], %i1
	st %i1, [%fp+-32]                       ! 4-byte Folded Spill
	ld [%fp+-8], %i0
	ld [%i0], %i2
	st %i2, [%fp+-28]                       ! 4-byte Folded Spill
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
	ld [%fp+-32], %i1                       ! 4-byte Folded Reload
	ld [%fp+-28], %i2                       ! 4-byte Folded Reload
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	cmp	%i1, %i2
	bne	.LBB63_6
	st %i0, [%fp+-16]
	ba .LBB63_5
	nop
.LBB63_5:                               !   in Loop: Header=BB63_1 Depth=1
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.63), %i1
	add %i1, %lo(__llvm_gcov_ctr.63), %i1
	ldd [%i1+8], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+8]
	sethi %hi(.L__profc_wmemcmp), %i1
	add %i1, %lo(.L__profc_wmemcmp), %i1
	ldd [%i1+24], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+24]
	ba .LBB63_6
	st %i0, [%fp+-16]
.LBB63_6:                               !   in Loop: Header=BB63_1 Depth=1
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB63_9
	nop
	ba .LBB63_7
	nop
.LBB63_7:                               !   in Loop: Header=BB63_1 Depth=1
	sethi %hi(.L__profc_wmemcmp), %i0
	add %i0, %lo(.L__profc_wmemcmp), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB63_8
	std %i2, [%i0+8]
.LBB63_8:                               !   in Loop: Header=BB63_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.63), %i0
	add %i0, %lo(__llvm_gcov_ctr.63), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
.LBB63_9:
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB63_16
	nop
	ba .LBB63_10
	nop
.LBB63_10:
	sethi %hi(.L__profc_wmemcmp), %i0
	add %i0, %lo(.L__profc_wmemcmp), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-4], %i0
	ld [%i0], %i0
	ld [%fp+-8], %i1
	ld [%i1], %i1
	cmp	%i0, %i1
	bge	.LBB63_12
	nop
	ba .LBB63_11
	nop
.LBB63_11:
	sethi %hi(__llvm_gcov_ctr.63), %i0
	add %i0, %lo(__llvm_gcov_ctr.63), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_wmemcmp), %i0
	add %i0, %lo(.L__profc_wmemcmp), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	mov	-1, %i0
	ba .LBB63_15
	st %i0, [%fp+-40]
.LBB63_12:
	sethi %hi(__llvm_gcov_ctr.63), %i0
	add %i0, %lo(__llvm_gcov_ctr.63), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-4], %i0
	ld [%i0], %i1
	ld [%fp+-8], %i0
	ld [%i0], %i2
	mov	%g0, %i0
	st %i0, [%fp+-48]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, %i2
	bg	.LBB63_14
	st %i0, [%fp+-44]
! %bb.13:
	ld [%fp+-48], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-44]                       ! 4-byte Folded Spill
.LBB63_14:
	ld [%fp+-44], %i0                       ! 4-byte Folded Reload
	ba .LBB63_15
	st %i0, [%fp+-40]
.LBB63_15:
	ld [%fp+-40], %i0                       ! 4-byte Folded Reload
	ba .LBB63_17
	st %i0, [%fp+-52]
.LBB63_16:
	sethi %hi(__llvm_gcov_ctr.63), %i0
	add %i0, %lo(__llvm_gcov_ctr.63), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	mov	%g0, %i0
	ba .LBB63_17
	st %i0, [%fp+-52]
.LBB63_17:
	ld [%fp+-52], %i0                       ! 4-byte Folded Reload
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
	sethi %hi(__llvm_gcov_ctr.64), %i3
	ldd [%i3+%lo(__llvm_gcov_ctr.64)], %g2
	mov	%g2, %i5
	mov	%g3, %i4
	addcc %i5, 1, %g3
	addxcc %i4, 0, %g2
                                        ! implicit-def: $i4_i5
	mov	%g3, %i4
	mov	%g2, %i5
	std %i4, [%i3+%lo(__llvm_gcov_ctr.64)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	sethi %hi(.L__profc_wmemcpy), %i0
	ldd [%i0+%lo(.L__profc_wmemcpy)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_wmemcpy)]
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
	sethi %hi(__llvm_gcov_ctr.64), %i0
	add %i0, %lo(__llvm_gcov_ctr.64), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_wmemcpy), %i0
	add %i0, %lo(.L__profc_wmemcpy), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(.L__profc_wmemmove), %i0
	ldd [%i0+%lo(.L__profc_wmemmove)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_wmemmove)]
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
	sethi %hi(__llvm_gcov_ctr.65), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.65)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.65)]
	sethi %hi(.L__profc_wmemmove), %i0
	add %i0, %lo(.L__profc_wmemmove), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.65), %i0
	add %i0, %lo(__llvm_gcov_ctr.65), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_wmemmove), %i0
	add %i0, %lo(.L__profc_wmemmove), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB65_4
	std %i2, [%i0+16]
.LBB65_4:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-16], %i0
	add %i0, -1, %i1
	cmp	%i0, 0
	be	.LBB65_6
	st %i1, [%fp+-16]
	ba .LBB65_5
	nop
.LBB65_5:                               !   in Loop: Header=BB65_4 Depth=1
	sethi %hi(__llvm_gcov_ctr.65), %i0
	add %i0, %lo(__llvm_gcov_ctr.65), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_wmemmove), %i0
	add %i0, %lo(.L__profc_wmemmove), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	sethi %hi(__llvm_gcov_ctr.65), %i0
	add %i0, %lo(__llvm_gcov_ctr.65), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_wmemmove), %i0
	add %i0, %lo(.L__profc_wmemmove), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
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
	sethi %hi(__llvm_gcov_ctr.65), %i0
	add %i0, %lo(__llvm_gcov_ctr.65), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB65_11
	std %i2, [%i0+32]
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
	sethi %hi(__llvm_gcov_ctr.66), %i3
	ldd [%i3+%lo(__llvm_gcov_ctr.66)], %g2
	mov	%g2, %i5
	mov	%g3, %i4
	addcc %i5, 1, %g3
	addxcc %i4, 0, %g2
                                        ! implicit-def: $i4_i5
	mov	%g3, %i4
	mov	%g2, %i5
	std %i4, [%i3+%lo(__llvm_gcov_ctr.66)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	sethi %hi(.L__profc_wmemset), %i0
	ldd [%i0+%lo(.L__profc_wmemset)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_wmemset)]
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
	sethi %hi(__llvm_gcov_ctr.66), %i0
	add %i0, %lo(__llvm_gcov_ctr.66), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_wmemset), %i0
	add %i0, %lo(.L__profc_wmemset), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(.L__profc_bcopy), %i0
	ldd [%i0+%lo(.L__profc_bcopy)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_bcopy)]
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
	sethi %hi(__llvm_gcov_ctr.67), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.67)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.67)]
	sethi %hi(.L__profc_bcopy), %i0
	add %i0, %lo(.L__profc_bcopy), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(.L__profc_bcopy), %i0
	add %i0, %lo(.L__profc_bcopy), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.67), %i0
	add %i0, %lo(__llvm_gcov_ctr.67), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(.L__profc_bcopy), %i0
	add %i0, %lo(.L__profc_bcopy), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB67_8
	std %i2, [%i0+24]
.LBB67_8:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB67_11
	nop
	ba .LBB67_9
	nop
.LBB67_9:                               !   in Loop: Header=BB67_8 Depth=1
	sethi %hi(__llvm_gcov_ctr.67), %i0
	add %i0, %lo(__llvm_gcov_ctr.67), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_bcopy), %i0
	add %i0, %lo(.L__profc_bcopy), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
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
	sethi %hi(__llvm_gcov_ctr.67), %i0
	add %i0, %lo(__llvm_gcov_ctr.67), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB67_12
	std %i2, [%i0+24]
.LBB67_12:
	sethi %hi(__llvm_gcov_ctr.67), %i0
	add %i0, %lo(__llvm_gcov_ctr.67), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB67_13
	std %i2, [%i0+32]
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
	sethi %hi(__llvm_gcov_ctr.68), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.68)], %g2
	mov	%g2, %i5
	mov	%g3, %i1
	addcc %i5, 1, %i5
	addxcc %i1, 0, %i1
                                        ! implicit-def: $g2_g3
	mov	%i5, %g2
	mov	%i1, %g3
	std %g2, [%i0+%lo(__llvm_gcov_ctr.68)]
                                        ! implicit-def: $i0_i1
	mov	%i4, %i0
	mov	%i3, %i1
	std %i0, [%fp+-8]
	st %i2, [%fp+-12]
	sethi %hi(.L__profc_rotl64), %i0
	ldd [%i0+%lo(.L__profc_rotl64)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_rotl64)]
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
	sethi %hi(__llvm_gcov_ctr.69), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.69)], %g2
	mov	%g2, %i5
	mov	%g3, %i1
	addcc %i5, 1, %i5
	addxcc %i1, 0, %i1
                                        ! implicit-def: $g2_g3
	mov	%i5, %g2
	mov	%i1, %g3
	std %g2, [%i0+%lo(__llvm_gcov_ctr.69)]
                                        ! implicit-def: $i0_i1
	mov	%i4, %i0
	mov	%i3, %i1
	std %i0, [%fp+-8]
	st %i2, [%fp+-12]
	sethi %hi(.L__profc_rotr64), %i0
	ldd [%i0+%lo(.L__profc_rotr64)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_rotr64)]
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
	sethi %hi(__llvm_gcov_ctr.70), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.70)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.70)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc_rotl32), %i0
	ldd [%i0+%lo(.L__profc_rotl32)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_rotl32)]
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
	sethi %hi(__llvm_gcov_ctr.71), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.71)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.71)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc_rotr32), %i0
	ldd [%i0+%lo(.L__profc_rotr32)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_rotr32)]
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
	sethi %hi(__llvm_gcov_ctr.72), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.72)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.72)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc_rotl_sz), %i0
	ldd [%i0+%lo(.L__profc_rotl_sz)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_rotl_sz)]
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
	sethi %hi(__llvm_gcov_ctr.73), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.73)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.73)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc_rotr_sz), %i0
	ldd [%i0+%lo(.L__profc_rotr_sz)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_rotr_sz)]
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
	sethi %hi(__llvm_gcov_ctr.74), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.74)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.74)]
	sth %i0, [%fp+-2]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc_rotl16), %i0
	ldd [%i0+%lo(.L__profc_rotl16)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_rotl16)]
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
	sethi %hi(__llvm_gcov_ctr.75), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.75)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.75)]
	sth %i0, [%fp+-2]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc_rotr16), %i0
	ldd [%i0+%lo(.L__profc_rotr16)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_rotr16)]
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
	sethi %hi(__llvm_gcov_ctr.76), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.76)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.76)]
	stb %i0, [%fp+-1]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc_rotl8), %i0
	ldd [%i0+%lo(.L__profc_rotl8)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_rotl8)]
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
	sethi %hi(__llvm_gcov_ctr.77), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.77)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.77)]
	stb %i0, [%fp+-1]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc_rotr8), %i0
	ldd [%i0+%lo(.L__profc_rotr8)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_rotr8)]
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
	sethi %hi(__llvm_gcov_ctr.78), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.78)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.78)]
	sth %i0, [%fp+-2]
	sethi %hi(.L__profc_bswap_16), %i0
	ldd [%i0+%lo(.L__profc_bswap_16)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_bswap_16)]
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
	sethi %hi(__llvm_gcov_ctr.79), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.79)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.79)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_bswap_32), %i0
	ldd [%i0+%lo(.L__profc_bswap_32)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_bswap_32)]
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
	sethi %hi(__llvm_gcov_ctr.80), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.80)], %g2
	mov	%g2, %i4
	mov	%g3, %i1
	addcc %i4, 1, %g2
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i1, %i5
	std %i4, [%i0+%lo(__llvm_gcov_ctr.80)]
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	sethi %hi(.L__profc_bswap_64), %i0
	ldd [%i0+%lo(.L__profc_bswap_64)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_bswap_64)]
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
	sethi %hi(.L__profc_ffs), %i0
	ldd [%i0+%lo(.L__profc_ffs)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_ffs)]
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
	sethi %hi(.L__profc_ffs), %i0
	add %i0, %lo(.L__profc_ffs), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.81), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.81)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.81)]
	sethi %hi(.L__profc_ffs), %i0
	add %i0, %lo(.L__profc_ffs), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-12], %i0
	add %i0, 1, %i0
	ba .LBB81_7
	st %i0, [%fp+-4]
.LBB81_4:                               !   in Loop: Header=BB81_1 Depth=1
	ba .LBB81_5
	nop
.LBB81_5:                               !   in Loop: Header=BB81_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.81), %i0
	add %i0, %lo(__llvm_gcov_ctr.81), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-12], %i0
	add %i0, 1, %i0
	ba .LBB81_1
	st %i0, [%fp+-12]
.LBB81_6:
	sethi %hi(__llvm_gcov_ctr.81), %i0
	add %i0, %lo(__llvm_gcov_ctr.81), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(.L__profc_libiberty_ffs), %i0
	ldd [%i0+%lo(.L__profc_libiberty_ffs)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_libiberty_ffs)]
	ld [%fp+-8], %i0
	cmp	%i0, 0
	bne	.LBB82_2
	nop
	ba .LBB82_1
	nop
.LBB82_1:
	sethi %hi(__llvm_gcov_ctr.82), %i0
	add %i0, %lo(__llvm_gcov_ctr.82), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_libiberty_ffs), %i0
	add %i0, %lo(.L__profc_libiberty_ffs), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ba .LBB82_7
	st %g0, [%fp+-4]
.LBB82_2:
	sethi %hi(__llvm_gcov_ctr.82), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.82)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.82)]
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
	sethi %hi(.L__profc_libiberty_ffs), %i0
	add %i0, %lo(.L__profc_libiberty_ffs), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-8], %i0
	sra %i0, 1, %i0
	ba .LBB82_5
	st %i0, [%fp+-8]
.LBB82_5:                               !   in Loop: Header=BB82_3 Depth=1
	sethi %hi(__llvm_gcov_ctr.82), %i0
	add %i0, %lo(__llvm_gcov_ctr.82), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	save %sp, -120, %sp
                                        ! kill: def $i1 killed $i0
	sethi %hi(__llvm_gcov_ctr.83), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.83)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.83)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc_gl_isinff), %i0
	ldd [%i0+%lo(.L__profc_gl_isinff)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_gl_isinff)]
	ld [%fp+-4], %o0
	sethi 4186111, %i0
	call __ltsf2
	or %i0, 1023, %o1
	mov	1, %i0
	cmp	%o0, 0
	bl	.LBB83_5
	st %i0, [%fp+-8]
	ba .LBB83_1
	nop
.LBB83_1:
	sethi %hi(__llvm_gcov_ctr.83), %i0
	add %i0, %lo(__llvm_gcov_ctr.83), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_gl_isinff), %i0
	add %i0, %lo(.L__profc_gl_isinff), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-4], %o0
	sethi 2088959, %i0
	call __gtsf2
	or %i0, 1023, %o1
	st %o0, [%fp+-20]                       ! 4-byte Folded Spill
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
	ld [%fp+-20], %i1                       ! 4-byte Folded Reload
	ld [%fp+-12], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	bg	.LBB83_5
	st %i0, [%fp+-8]
	ba .LBB83_4
	nop
.LBB83_4:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.83), %i1
	add %i1, %lo(__llvm_gcov_ctr.83), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	sethi %hi(.L__profc_gl_isinff), %i1
	add %i1, %lo(.L__profc_gl_isinff), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	ba .LBB83_5
	st %i0, [%fp+-8]
.LBB83_5:
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
	save %sp, -120, %sp
	mov	%i1, %i2
	mov	%i0, %i3
                                        ! kill: def $i1 killed $i2
                                        ! kill: def $i0 killed $i3
	sethi %hi(__llvm_gcov_ctr.84), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.84)], %g2
	mov	%g2, %i4
	mov	%g3, %i1
	addcc %i4, 1, %g2
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i1, %i5
	std %i4, [%i0+%lo(__llvm_gcov_ctr.84)]
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	sethi %hi(.L__profc_gl_isinfd), %i0
	ldd [%i0+%lo(.L__profc_gl_isinfd)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_gl_isinfd)]
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	sethi 4193279, %i0
	or %i0, 1023, %o3
	call __ltdf2
	mov	-1, %o2
	mov	1, %i0
	cmp	%o0, 0
	bl	.LBB84_5
	st %i0, [%fp+-12]
	ba .LBB84_1
	nop
.LBB84_1:
	sethi %hi(__llvm_gcov_ctr.84), %i0
	add %i0, %lo(__llvm_gcov_ctr.84), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_gl_isinfd), %i0
	add %i0, %lo(.L__profc_gl_isinfd), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	sethi 2096127, %i0
	or %i0, 1023, %o3
	call __gtdf2
	mov	-1, %o2
	st %o0, [%fp+-24]                       ! 4-byte Folded Spill
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
	ld [%fp+-24], %i1                       ! 4-byte Folded Reload
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	bg	.LBB84_5
	st %i0, [%fp+-12]
	ba .LBB84_4
	nop
.LBB84_4:
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.84), %i1
	add %i1, %lo(__llvm_gcov_ctr.84), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	sethi %hi(.L__profc_gl_isinfd), %i1
	add %i1, %lo(.L__profc_gl_isinfd), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	ba .LBB84_5
	st %i0, [%fp+-12]
.LBB84_5:
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
	save %sp, -120, %sp
	mov	%i1, %i2
	mov	%i0, %i3
                                        ! kill: def $i1 killed $i2
                                        ! kill: def $i0 killed $i3
	sethi %hi(__llvm_gcov_ctr.85), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.85)], %g2
	mov	%g2, %i4
	mov	%g3, %i1
	addcc %i4, 1, %g2
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i1, %i5
	std %i4, [%i0+%lo(__llvm_gcov_ctr.85)]
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	sethi %hi(.L__profc_gl_isinfl), %i0
	ldd [%i0+%lo(.L__profc_gl_isinfl)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_gl_isinfl)]
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	sethi 4193279, %i0
	or %i0, 1023, %o3
	call __ltdf2
	mov	-1, %o2
	mov	1, %i0
	cmp	%o0, 0
	bl	.LBB85_5
	st %i0, [%fp+-12]
	ba .LBB85_1
	nop
.LBB85_1:
	sethi %hi(__llvm_gcov_ctr.85), %i0
	add %i0, %lo(__llvm_gcov_ctr.85), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_gl_isinfl), %i0
	add %i0, %lo(.L__profc_gl_isinfl), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	sethi 2096127, %i0
	or %i0, 1023, %o3
	call __gtdf2
	mov	-1, %o2
	st %o0, [%fp+-24]                       ! 4-byte Folded Spill
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
	ld [%fp+-24], %i1                       ! 4-byte Folded Reload
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	bg	.LBB85_5
	st %i0, [%fp+-12]
	ba .LBB85_4
	nop
.LBB85_4:
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.85), %i1
	add %i1, %lo(__llvm_gcov_ctr.85), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	sethi %hi(.L__profc_gl_isinfl), %i1
	add %i1, %lo(.L__profc_gl_isinfl), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	ba .LBB85_5
	st %i0, [%fp+-12]
.LBB85_5:
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
	sethi %hi(__llvm_gcov_ctr.86), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.86)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.86)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc__Qp_itoq), %i0
	ldd [%i0+%lo(.L__profc__Qp_itoq)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc__Qp_itoq)]
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
	sethi %hi(__llvm_gcov_ctr.87), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.87)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.87)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc_ldexpf), %i0
	ldd [%i0+%lo(.L__profc_ldexpf)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_ldexpf)]
	ld [%fp+-4], %i0
	sethi 2097152, %i1
	andn %i0, %i1, %i0
	sethi 2088960, %i1
	cmp	%i0, %i1
	bg	.LBB87_12
	nop
	ba .LBB87_1
	nop
.LBB87_1:
	sethi %hi(__llvm_gcov_ctr.87), %i0
	add %i0, %lo(__llvm_gcov_ctr.87), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_ldexpf), %i0
	add %i0, %lo(.L__profc_ldexpf), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-4], %o1
	st %o1, [%fp+-16]                       ! 4-byte Folded Spill
	call __addsf3
	mov	%o1, %o0
	call __eqsf2
	ld [%fp+-16], %o1
	cmp	%o0, 0
	be	.LBB87_12
	nop
	ba .LBB87_2
	nop
.LBB87_2:
	sethi %hi(__llvm_gcov_ctr.87), %i0
	add %i0, %lo(__llvm_gcov_ctr.87), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_ldexpf), %i0
	add %i0, %lo(.L__profc_ldexpf), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB87_3
	std %i2, [%i0+24]
.LBB87_3:
	sethi %hi(.L__profc_ldexpf), %i0
	add %i0, %lo(.L__profc_ldexpf), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-8], %i1
	srl %i1, 31, %i4
	ldd [%i0+32], %g2
	mov	%g2, %i3
	mov	%g3, %i2
	addcc %i3, %i4, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i0+32]
	sethi 1048576, %i0
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
	sethi 1032192, %i0
	cmp	%i1, 0
	bl	.LBB87_5
	st %i0, [%fp+-20]
! %bb.4:
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-20]                       ! 4-byte Folded Spill
.LBB87_5:
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	ba .LBB87_6
	st %i0, [%fp+-12]
.LBB87_6:                               ! =>This Inner Loop Header: Depth=1
	sethi %hi(.L__profc_ldexpf), %i0
	add %i0, %lo(.L__profc_ldexpf), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-8], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i1
	and %i1, -2, %i1
	sub %i0, %i1, %i0
	cmp	%i0, 0
	be	.LBB87_8
	nop
	ba .LBB87_7
	nop
.LBB87_7:                               !   in Loop: Header=BB87_6 Depth=1
	sethi %hi(__llvm_gcov_ctr.87), %i0
	add %i0, %lo(__llvm_gcov_ctr.87), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_ldexpf), %i0
	add %i0, %lo(.L__profc_ldexpf), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	ld [%fp+-12], %o1
	call __mulsf3
	ld [%fp+-4], %o0
	ba .LBB87_8
	st %o0, [%fp+-4]
.LBB87_8:                               !   in Loop: Header=BB87_6 Depth=1
	ld [%fp+-8], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i0
	sra %i0, 1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-8], %i0
	cmp	%i0, 0
	bne	.LBB87_10
	nop
	ba .LBB87_9
	nop
.LBB87_9:
	sethi %hi(.L__profc_ldexpf), %i0
	add %i0, %lo(.L__profc_ldexpf), %i0
	ldd [%i0+56], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB87_11
	std %i2, [%i0+56]
.LBB87_10:                              !   in Loop: Header=BB87_6 Depth=1
	sethi %hi(__llvm_gcov_ctr.87), %i0
	add %i0, %lo(__llvm_gcov_ctr.87), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-12], %o1
	call __mulsf3
	mov	%o1, %o0
	ba .LBB87_6
	st %o0, [%fp+-12]
.LBB87_11:
	ba .LBB87_12
	nop
.LBB87_12:
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
	sethi %hi(__llvm_gcov_ctr.88), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.88)], %g2
	mov	%g2, %i5
	mov	%g3, %i1
	addcc %i5, 1, %i5
	addxcc %i1, 0, %i1
                                        ! implicit-def: $g2_g3
	mov	%i5, %g2
	mov	%i1, %g3
	std %g2, [%i0+%lo(__llvm_gcov_ctr.88)]
                                        ! implicit-def: $i0_i1
	mov	%i4, %i0
	mov	%i3, %i1
	std %i0, [%fp+-8]
	st %i2, [%fp+-12]
	sethi %hi(.L__profc_ldexp), %i0
	ldd [%i0+%lo(.L__profc_ldexp)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_ldexp)]
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
	bne	.LBB88_18
	nop
	ba .LBB88_7
	nop
.LBB88_7:
	sethi %hi(__llvm_gcov_ctr.88), %i0
	add %i0, %lo(__llvm_gcov_ctr.88), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_ldexp), %i0
	add %i0, %lo(.L__profc_ldexp), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	be	.LBB88_18
	nop
	ba .LBB88_8
	nop
.LBB88_8:
	sethi %hi(__llvm_gcov_ctr.88), %i0
	add %i0, %lo(__llvm_gcov_ctr.88), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_ldexp), %i0
	add %i0, %lo(.L__profc_ldexp), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB88_9
	std %i2, [%i0+24]
.LBB88_9:
	sethi %hi(.L__profc_ldexp), %i0
	add %i0, %lo(.L__profc_ldexp), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-12], %i1
	srl %i1, 31, %i4
	ldd [%i0+32], %g2
	mov	%g2, %i3
	mov	%g3, %i2
	addcc %i3, %i4, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i0+32]
	sethi 1048576, %i0
	st %i0, [%fp+-80]                       ! 4-byte Folded Spill
	sethi 1046528, %i0
	cmp	%i1, 0
	bl	.LBB88_11
	st %i0, [%fp+-76]
! %bb.10:
	ld [%fp+-80], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-76]                       ! 4-byte Folded Spill
.LBB88_11:
	ld [%fp+-76], %i2                       ! 4-byte Folded Reload
	mov	%g0, %i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB88_12
	std %i0, [%fp+-24]
.LBB88_12:                              ! =>This Inner Loop Header: Depth=1
	sethi %hi(.L__profc_ldexp), %i0
	add %i0, %lo(.L__profc_ldexp), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-12], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i1
	and %i1, -2, %i1
	sub %i0, %i1, %i0
	cmp	%i0, 0
	be	.LBB88_14
	nop
	ba .LBB88_13
	nop
.LBB88_13:                              !   in Loop: Header=BB88_12 Depth=1
	sethi %hi(__llvm_gcov_ctr.88), %i0
	add %i0, %lo(__llvm_gcov_ctr.88), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_ldexp), %i0
	add %i0, %lo(.L__profc_ldexp), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
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
	ba .LBB88_14
	std %i0, [%fp+-8]
.LBB88_14:                              !   in Loop: Header=BB88_12 Depth=1
	ld [%fp+-12], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i0
	sra %i0, 1, %i0
	st %i0, [%fp+-12]
	ld [%fp+-12], %i0
	cmp	%i0, 0
	bne	.LBB88_16
	nop
	ba .LBB88_15
	nop
.LBB88_15:
	sethi %hi(.L__profc_ldexp), %i0
	add %i0, %lo(.L__profc_ldexp), %i0
	ldd [%i0+56], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB88_17
	std %i2, [%i0+56]
.LBB88_16:                              !   in Loop: Header=BB88_12 Depth=1
	sethi %hi(__llvm_gcov_ctr.88), %i0
	add %i0, %lo(__llvm_gcov_ctr.88), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ldd [%fp+-24], %i0
	mov	%i0, %o2
	mov	%i1, %o3
	mov	%o2, %o0
	call __muldf3
	mov	%o3, %o1
                                        ! implicit-def: $i0_i1
	mov	%o0, %i0
	mov	%o1, %i1
	ba .LBB88_12
	std %i0, [%fp+-24]
.LBB88_17:
	ba .LBB88_18
	nop
.LBB88_18:
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
	sethi %hi(__llvm_gcov_ctr.89), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.89)], %g2
	mov	%g2, %i5
	mov	%g3, %i1
	addcc %i5, 1, %i5
	addxcc %i1, 0, %i1
                                        ! implicit-def: $g2_g3
	mov	%i5, %g2
	mov	%i1, %g3
	std %g2, [%i0+%lo(__llvm_gcov_ctr.89)]
                                        ! implicit-def: $i0_i1
	mov	%i4, %i0
	mov	%i3, %i1
	std %i0, [%fp+-8]
	st %i2, [%fp+-12]
	sethi %hi(.L__profc_ldexpl), %i0
	ldd [%i0+%lo(.L__profc_ldexpl)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_ldexpl)]
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
	bne	.LBB89_18
	nop
	ba .LBB89_7
	nop
.LBB89_7:
	sethi %hi(__llvm_gcov_ctr.89), %i0
	add %i0, %lo(__llvm_gcov_ctr.89), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_ldexpl), %i0
	add %i0, %lo(.L__profc_ldexpl), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	be	.LBB89_18
	nop
	ba .LBB89_8
	nop
.LBB89_8:
	sethi %hi(__llvm_gcov_ctr.89), %i0
	add %i0, %lo(__llvm_gcov_ctr.89), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_ldexpl), %i0
	add %i0, %lo(.L__profc_ldexpl), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB89_9
	std %i2, [%i0+24]
.LBB89_9:
	sethi %hi(.L__profc_ldexpl), %i0
	add %i0, %lo(.L__profc_ldexpl), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-12], %i1
	srl %i1, 31, %i4
	ldd [%i0+32], %g2
	mov	%g2, %i3
	mov	%g3, %i2
	addcc %i3, %i4, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i0+32]
	sethi 1048576, %i0
	st %i0, [%fp+-80]                       ! 4-byte Folded Spill
	sethi 1046528, %i0
	cmp	%i1, 0
	bl	.LBB89_11
	st %i0, [%fp+-76]
! %bb.10:
	ld [%fp+-80], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-76]                       ! 4-byte Folded Spill
.LBB89_11:
	ld [%fp+-76], %i2                       ! 4-byte Folded Reload
	mov	%g0, %i3
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB89_12
	std %i0, [%fp+-24]
.LBB89_12:                              ! =>This Inner Loop Header: Depth=1
	sethi %hi(.L__profc_ldexpl), %i0
	add %i0, %lo(.L__profc_ldexpl), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-12], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i1
	and %i1, -2, %i1
	sub %i0, %i1, %i0
	cmp	%i0, 0
	be	.LBB89_14
	nop
	ba .LBB89_13
	nop
.LBB89_13:                              !   in Loop: Header=BB89_12 Depth=1
	sethi %hi(__llvm_gcov_ctr.89), %i0
	add %i0, %lo(__llvm_gcov_ctr.89), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_ldexpl), %i0
	add %i0, %lo(.L__profc_ldexpl), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
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
	ba .LBB89_14
	std %i0, [%fp+-8]
.LBB89_14:                              !   in Loop: Header=BB89_12 Depth=1
	ld [%fp+-12], %i0
	srl %i0, 31, %i1
	add %i0, %i1, %i0
	sra %i0, 1, %i0
	st %i0, [%fp+-12]
	ld [%fp+-12], %i0
	cmp	%i0, 0
	bne	.LBB89_16
	nop
	ba .LBB89_15
	nop
.LBB89_15:
	sethi %hi(.L__profc_ldexpl), %i0
	add %i0, %lo(.L__profc_ldexpl), %i0
	ldd [%i0+56], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB89_17
	std %i2, [%i0+56]
.LBB89_16:                              !   in Loop: Header=BB89_12 Depth=1
	sethi %hi(__llvm_gcov_ctr.89), %i0
	add %i0, %lo(__llvm_gcov_ctr.89), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ldd [%fp+-24], %i0
	mov	%i0, %o2
	mov	%i1, %o3
	mov	%o2, %o0
	call __muldf3
	mov	%o3, %o1
                                        ! implicit-def: $i0_i1
	mov	%o0, %i0
	mov	%o1, %i1
	ba .LBB89_12
	std %i0, [%fp+-24]
.LBB89_17:
	ba .LBB89_18
	nop
.LBB89_18:
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
	sethi %hi(__llvm_gcov_ctr.90), %i3
	ldd [%i3+%lo(__llvm_gcov_ctr.90)], %g2
	mov	%g2, %i5
	mov	%g3, %i4
	addcc %i5, 1, %g3
	addxcc %i4, 0, %g2
                                        ! implicit-def: $i4_i5
	mov	%g3, %i4
	mov	%g2, %i5
	std %i4, [%i3+%lo(__llvm_gcov_ctr.90)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	sethi %hi(.L__profc_memxor), %i0
	ldd [%i0+%lo(.L__profc_memxor)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_memxor)]
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
	sethi %hi(.L__profc_memxor), %i0
	add %i0, %lo(.L__profc_memxor), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.90), %i0
	add %i0, %lo(__llvm_gcov_ctr.90), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	save %sp, -128, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	sethi %hi(.L__profc_strncat), %i0
	ldd [%i0+%lo(.L__profc_strncat)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_strncat)]
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
	be	.LBB91_6
	st %i0, [%fp+-20]
	ba .LBB91_2
	nop
.LBB91_2:                               !   in Loop: Header=BB91_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.91), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.91)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.91)]
	sethi %hi(.L__profc_strncat), %i0
	add %i0, %lo(.L__profc_strncat), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-8], %i0
	ldub [%i0], %i1
	st %i1, [%fp+-32]                       ! 4-byte Folded Spill
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
	ld [%fp+-32], %i1                       ! 4-byte Folded Reload
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	be	.LBB91_6
	st %i0, [%fp+-20]
	ba .LBB91_5
	nop
.LBB91_5:                               !   in Loop: Header=BB91_1 Depth=1
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.91), %i1
	add %i1, %lo(__llvm_gcov_ctr.91), %i1
	ldd [%i1+8], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+8]
	sethi %hi(.L__profc_strncat), %i1
	add %i1, %lo(.L__profc_strncat), %i1
	ldd [%i1+24], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+24]
	ba .LBB91_6
	st %i0, [%fp+-20]
.LBB91_6:                               !   in Loop: Header=BB91_1 Depth=1
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB91_9
	nop
	ba .LBB91_7
	nop
.LBB91_7:                               !   in Loop: Header=BB91_1 Depth=1
	sethi %hi(.L__profc_strncat), %i0
	add %i0, %lo(.L__profc_strncat), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB91_8
	std %i2, [%i0+8]
.LBB91_8:                               !   in Loop: Header=BB91_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.91), %i0
	add %i0, %lo(__llvm_gcov_ctr.91), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
.LBB91_9:
	sethi %hi(__llvm_gcov_ctr.91), %i0
	add %i0, %lo(__llvm_gcov_ctr.91), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-12], %i0
	cmp	%i0, 0
	bne	.LBB91_11
	nop
	ba .LBB91_10
	nop
.LBB91_10:
	sethi %hi(__llvm_gcov_ctr.91), %i0
	add %i0, %lo(__llvm_gcov_ctr.91), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc_strncat), %i0
	add %i0, %lo(.L__profc_strncat), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-16], %i0
	mov	%g0, %i1
	ba .LBB91_11
	stb %i1, [%i0]
.LBB91_11:
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
	save %sp, -128, %sp
	sethi %hi(__llvm_gcov_ctr.92), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.92)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.92)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc_strnlen), %i0
	ldd [%i0+%lo(.L__profc_strnlen)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_strnlen)]
	ba .LBB92_1
	st %g0, [%fp+-12]
.LBB92_1:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i1
	ld [%fp+-8], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bcc	.LBB92_6
	st %i0, [%fp+-16]
	ba .LBB92_2
	nop
.LBB92_2:                               !   in Loop: Header=BB92_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.92), %i0
	add %i0, %lo(__llvm_gcov_ctr.92), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_strnlen), %i0
	add %i0, %lo(.L__profc_strnlen), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-4], %i0
	ld [%fp+-12], %i1
	ldsb [%i0+%i1], %i1
	st %i1, [%fp+-28]                       ! 4-byte Folded Spill
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
	ld [%fp+-28], %i1                       ! 4-byte Folded Reload
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	be	.LBB92_6
	st %i0, [%fp+-16]
	ba .LBB92_5
	nop
.LBB92_5:                               !   in Loop: Header=BB92_1 Depth=1
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.92), %i1
	add %i1, %lo(__llvm_gcov_ctr.92), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	sethi %hi(.L__profc_strnlen), %i1
	add %i1, %lo(.L__profc_strnlen), %i1
	ldd [%i1+24], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+24]
	ba .LBB92_6
	st %i0, [%fp+-16]
.LBB92_6:                               !   in Loop: Header=BB92_1 Depth=1
	ld [%fp+-16], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB92_9
	nop
	ba .LBB92_7
	nop
.LBB92_7:                               !   in Loop: Header=BB92_1 Depth=1
	sethi %hi(.L__profc_strnlen), %i0
	add %i0, %lo(.L__profc_strnlen), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB92_8
	std %i2, [%i0+8]
.LBB92_8:                               !   in Loop: Header=BB92_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.92), %i0
	add %i0, %lo(__llvm_gcov_ctr.92), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	ld [%fp+-12], %i0
	add %i0, 1, %i0
	ba .LBB92_1
	st %i0, [%fp+-12]
.LBB92_9:
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
	st %i1, [%fp+-12]
	sethi %hi(.L__profc_strpbrk), %i0
	ldd [%i0+%lo(.L__profc_strpbrk)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB93_1
	std %i2, [%i0+%lo(.L__profc_strpbrk)]
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
	sethi %hi(.L__profc_strpbrk), %i0
	add %i0, %lo(.L__profc_strpbrk), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(.L__profc_strpbrk), %i0
	add %i0, %lo(.L__profc_strpbrk), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.93), %i0
	add %i0, %lo(__llvm_gcov_ctr.93), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_strpbrk), %i0
	add %i0, %lo(.L__profc_strpbrk), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	ld [%fp+-8], %i0
	ba .LBB93_9
	st %i0, [%fp+-4]
.LBB93_6:                               !   in Loop: Header=BB93_3 Depth=2
	sethi %hi(__llvm_gcov_ctr.93), %i0
	add %i0, %lo(__llvm_gcov_ctr.93), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB93_3
	std %i2, [%i0+16]
.LBB93_7:                               !   in Loop: Header=BB93_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.93), %i0
	add %i0, %lo(__llvm_gcov_ctr.93), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	ld [%fp+-8], %i0
	add %i0, 1, %i0
	ba .LBB93_1
	st %i0, [%fp+-8]
.LBB93_8:
	sethi %hi(__llvm_gcov_ctr.93), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.93)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.93)]
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
	sethi %hi(__llvm_gcov_ctr.94), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.94)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.94)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc_strrchr), %i0
	ldd [%i0+%lo(.L__profc_strrchr)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_strrchr)]
	ba .LBB94_2
	st %g0, [%fp+-12]
.LBB94_1:                               !   in Loop: Header=BB94_2 Depth=1
	sethi %hi(__llvm_gcov_ctr.94), %i0
	add %i0, %lo(__llvm_gcov_ctr.94), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_strrchr), %i0
	add %i0, %lo(.L__profc_strrchr), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB94_2
	std %i2, [%i0+8]
.LBB94_2:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-4], %i0
	ldsb [%i0], %i0
	ld [%fp+-8], %i1
	cmp	%i0, %i1
	bne	.LBB94_4
	nop
	ba .LBB94_3
	nop
.LBB94_3:                               !   in Loop: Header=BB94_2 Depth=1
	sethi %hi(__llvm_gcov_ctr.94), %i0
	add %i0, %lo(__llvm_gcov_ctr.94), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_strrchr), %i0
	add %i0, %lo(.L__profc_strrchr), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-4], %i0
	ba .LBB94_4
	st %i0, [%fp+-12]
.LBB94_4:                               !   in Loop: Header=BB94_2 Depth=1
	ba .LBB94_5
	nop
.LBB94_5:                               !   in Loop: Header=BB94_2 Depth=1
	ld [%fp+-4], %i0
	add %i0, 1, %i1
	st %i1, [%fp+-4]
	ldub [%i0], %i0
	cmp	%i0, 0
	bne	.LBB94_1
	nop
	ba .LBB94_6
	nop
.LBB94_6:
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
	sethi %hi(.L__profc_strstr), %i0
	ldd [%i0+%lo(.L__profc_strstr)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_strstr)]
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
	sethi %hi(__llvm_gcov_ctr.95), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.95)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.95)]
	sethi %hi(.L__profc_strstr), %i0
	add %i0, %lo(.L__profc_strstr), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(.L__profc_strstr), %i0
	add %i0, %lo(.L__profc_strstr), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.95), %i0
	add %i0, %lo(__llvm_gcov_ctr.95), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_strstr), %i0
	add %i0, %lo(.L__profc_strstr), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	ld [%fp+-16], %i0
	ba .LBB95_9
	st %i0, [%fp+-4]
.LBB95_6:                               !   in Loop: Header=BB95_3 Depth=1
	ba .LBB95_7
	nop
.LBB95_7:                               !   in Loop: Header=BB95_3 Depth=1
	sethi %hi(__llvm_gcov_ctr.95), %i0
	add %i0, %lo(__llvm_gcov_ctr.95), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-16], %i0
	add %i0, 1, %i0
	ba .LBB95_3
	st %i0, [%fp+-16]
.LBB95_8:
	sethi %hi(__llvm_gcov_ctr.95), %i0
	add %i0, %lo(__llvm_gcov_ctr.95), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	sethi %hi(.L__profc_copysign), %i0
	ldd [%i0+%lo(.L__profc_copysign)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_copysign)]
	ldd [%fp+-16], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%g0, %o3
	call __ltdf2
	mov	%o3, %o2
	cmp	%o0, -1
	bg	.LBB96_3
	nop
	ba .LBB96_1
	nop
.LBB96_1:
	sethi %hi(__llvm_gcov_ctr.96), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.96)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.96)]
	sethi %hi(.L__profc_copysign), %i0
	add %i0, %lo(.L__profc_copysign), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	ldd [%fp+-24], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%g0, %o3
	call __gtdf2
	mov	%o3, %o2
	cmp	%o0, 1
	bl	.LBB96_3
	nop
	ba .LBB96_2
	nop
.LBB96_2:
	sethi %hi(__llvm_gcov_ctr.96), %i0
	add %i0, %lo(__llvm_gcov_ctr.96), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_copysign), %i0
	add %i0, %lo(.L__profc_copysign), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB96_6
	std %i2, [%i0+32]
.LBB96_3:
	sethi %hi(.L__profc_copysign), %i0
	add %i0, %lo(.L__profc_copysign), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ldd [%fp+-16], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%g0, %o3
	call __gtdf2
	mov	%o3, %o2
	cmp	%o0, 1
	bl	.LBB96_7
	nop
	ba .LBB96_4
	nop
.LBB96_4:
	sethi %hi(__llvm_gcov_ctr.96), %i0
	add %i0, %lo(__llvm_gcov_ctr.96), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_copysign), %i0
	add %i0, %lo(.L__profc_copysign), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ldd [%fp+-24], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%g0, %o3
	call __ltdf2
	mov	%o3, %o2
	cmp	%o0, -1
	bg	.LBB96_7
	nop
	ba .LBB96_5
	nop
.LBB96_5:
	sethi %hi(__llvm_gcov_ctr.96), %i0
	add %i0, %lo(__llvm_gcov_ctr.96), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_copysign), %i0
	add %i0, %lo(.L__profc_copysign), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB96_6
	std %i2, [%i0+48]
.LBB96_6:
	sethi %hi(.L__profc_copysign), %i0
	add %i0, %lo(.L__profc_copysign), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ldd [%fp+-16], %i0
	mov	%i0, %i3
	mov	%i1, %i0
	sethi 2097152, %i1
	xor %i0, %i1, %i2
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB96_8
	std %i0, [%fp+-8]
.LBB96_7:
	sethi %hi(__llvm_gcov_ctr.96), %i0
	add %i0, %lo(__llvm_gcov_ctr.96), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ldd [%fp+-16], %i0
	ba .LBB96_8
	std %i0, [%fp+-8]
.LBB96_8:
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
	sethi %hi(.L__profc_memmem), %i0
	ldd [%i0+%lo(.L__profc_memmem)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_memmem)]
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
	sethi %hi(__llvm_gcov_ctr.97), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.97)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.97)]
	sethi %hi(.L__profc_memmem), %i0
	add %i0, %lo(.L__profc_memmem), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-8], %i0
	ba .LBB97_13
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
	sethi %hi(__llvm_gcov_ctr.97), %i0
	add %i0, %lo(__llvm_gcov_ctr.97), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_memmem), %i0
	add %i0, %lo(.L__profc_memmem), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ba .LBB97_13
	st %g0, [%fp+-4]
.LBB97_4:
	ld [%fp+-8], %i0
	ba .LBB97_5
	st %i0, [%fp+-24]
.LBB97_5:                               ! =>This Inner Loop Header: Depth=1
	ld [%fp+-24], %i0
	ld [%fp+-28], %i1
	cmp	%i0, %i1
	bgu	.LBB97_12
	nop
	ba .LBB97_6
	nop
.LBB97_6:                               !   in Loop: Header=BB97_5 Depth=1
	sethi %hi(.L__profc_memmem), %i0
	add %i0, %lo(.L__profc_memmem), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	ld [%fp+-24], %i0
	ldsb [%i0], %i0
	ld [%fp+-16], %i1
	ldsb [%i1], %i1
	cmp	%i0, %i1
	bne	.LBB97_10
	nop
	ba .LBB97_7
	nop
.LBB97_7:                               !   in Loop: Header=BB97_5 Depth=1
	sethi %hi(__llvm_gcov_ctr.97), %i0
	add %i0, %lo(__llvm_gcov_ctr.97), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_memmem), %i0
	add %i0, %lo(.L__profc_memmem), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-24], %i0
	add %i0, 1, %o0
	ld [%fp+-16], %i0
	add %i0, 1, %o1
	ld [%fp+-20], %i0
	call memcmp
	add %i0, -1, %o2
	cmp	%o0, 0
	bne	.LBB97_10
	nop
	ba .LBB97_8
	nop
.LBB97_8:
	sethi %hi(__llvm_gcov_ctr.97), %i0
	add %i0, %lo(__llvm_gcov_ctr.97), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_memmem), %i0
	add %i0, %lo(.L__profc_memmem), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB97_9
	std %i2, [%i0+48]
.LBB97_9:
	sethi %hi(.L__profc_memmem), %i0
	add %i0, %lo(.L__profc_memmem), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-24], %i0
	ba .LBB97_13
	st %i0, [%fp+-4]
.LBB97_10:                              !   in Loop: Header=BB97_5 Depth=1
	ba .LBB97_11
	nop
.LBB97_11:                              !   in Loop: Header=BB97_5 Depth=1
	sethi %hi(__llvm_gcov_ctr.97), %i0
	add %i0, %lo(__llvm_gcov_ctr.97), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-24], %i0
	add %i0, 1, %i0
	ba .LBB97_5
	st %i0, [%fp+-24]
.LBB97_12:
	sethi %hi(__llvm_gcov_ctr.97), %i0
	add %i0, %lo(__llvm_gcov_ctr.97), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ba .LBB97_13
	st %g0, [%fp+-4]
.LBB97_13:
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
	sethi %hi(__llvm_gcov_ctr.98), %i3
	ldd [%i3+%lo(__llvm_gcov_ctr.98)], %g2
	mov	%g2, %i5
	mov	%g3, %i4
	addcc %i5, 1, %g3
	addxcc %i4, 0, %g2
                                        ! implicit-def: $i4_i5
	mov	%g3, %i4
	mov	%g2, %i5
	std %i4, [%i3+%lo(__llvm_gcov_ctr.98)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	st %i2, [%fp+-12]
	sethi %hi(.L__profc_mempcpy), %i0
	ldd [%i0+%lo(.L__profc_mempcpy)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_mempcpy)]
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
	sethi %hi(.L__profc_frexp), %i0
	ldd [%i0+%lo(.L__profc_frexp)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_frexp)]
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
	sethi %hi(__llvm_gcov_ctr.99), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.99)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.99)]
	sethi %hi(.L__profc_frexp), %i0
	add %i0, %lo(.L__profc_frexp), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.99), %i0
	add %i0, %lo(__llvm_gcov_ctr.99), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_frexp), %i0
	add %i0, %lo(.L__profc_frexp), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB99_4
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.99), %i0
	add %i0, %lo(__llvm_gcov_ctr.99), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc_frexp), %i0
	add %i0, %lo(.L__profc_frexp), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	ba .LBB99_15
	nop
.LBB99_7:
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%g0, %o2
	call __ltdf2
	sethi 1046528, %o3
	cmp	%o0, -1
	bg	.LBB99_14
	nop
	ba .LBB99_8
	nop
.LBB99_8:
	sethi %hi(__llvm_gcov_ctr.99), %i0
	add %i0, %lo(__llvm_gcov_ctr.99), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_frexp), %i0
	add %i0, %lo(.L__profc_frexp), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%g0, %o3
	call __eqdf2
	mov	%o3, %o2
	cmp	%o0, 0
	be	.LBB99_14
	nop
	ba .LBB99_9
	nop
.LBB99_9:
	sethi %hi(.L__profc_frexp), %i0
	add %i0, %lo(.L__profc_frexp), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB99_10
	std %i2, [%i0+48]
.LBB99_10:
	sethi %hi(.L__profc_frexp), %i0
	add %i0, %lo(.L__profc_frexp), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB99_11
	std %i2, [%i0+32]
.LBB99_11:                              ! =>This Inner Loop Header: Depth=1
	ldd [%fp+-8], %i0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%g0, %o2
	call __ltdf2
	sethi 1046528, %o3
	cmp	%o0, -1
	bg	.LBB99_13
	nop
	ba .LBB99_12
	nop
.LBB99_12:                              !   in Loop: Header=BB99_11 Depth=1
	sethi %hi(__llvm_gcov_ctr.99), %i0
	add %i0, %lo(__llvm_gcov_ctr.99), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc_frexp), %i0
	add %i0, %lo(.L__profc_frexp), %i0
	ldd [%i0+56], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+56]
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
	ba .LBB99_11
	std %i0, [%fp+-8]
.LBB99_13:
	sethi %hi(__llvm_gcov_ctr.99), %i0
	add %i0, %lo(__llvm_gcov_ctr.99), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB99_14
	std %i2, [%i0+40]
.LBB99_14:
	sethi %hi(__llvm_gcov_ctr.99), %i0
	add %i0, %lo(__llvm_gcov_ctr.99), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB99_15
	std %i2, [%i0+48]
.LBB99_15:
	ld [%fp+-20], %i1
	ld [%fp+-12], %i0
	st %i1, [%i0]
	ld [%fp+-16], %i0
	cmp	%i0, 0
	be	.LBB99_17
	nop
	ba .LBB99_16
	nop
.LBB99_16:
	sethi %hi(__llvm_gcov_ctr.99), %i0
	add %i0, %lo(__llvm_gcov_ctr.99), %i0
	ldd [%i0+56], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+56]
	sethi %hi(.L__profc_frexp), %i0
	add %i0, %lo(.L__profc_frexp), %i0
	ldd [%i0+64], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+64]
	ldd [%fp+-8], %i0
	mov	%i0, %i3
	mov	%i1, %i0
	sethi 2097152, %i1
	xor %i0, %i1, %i2
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	ba .LBB99_17
	std %i0, [%fp+-8]
.LBB99_17:
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
	sethi %hi(__llvm_gcov_ctr.100), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.100)], %l0
	mov	%l0, %g2
	mov	%l1, %i1
	addcc %g2, 1, %g4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $g2_g3
	mov	%g4, %g2
	mov	%i1, %g3
	std %g2, [%i0+%lo(__llvm_gcov_ctr.100)]
                                        ! implicit-def: $i0_i1
	mov	%i5, %i0
	mov	%i4, %i1
	std %i0, [%fp+-8]
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%i3, %i1
	std %i0, [%fp+-16]
	sethi %hi(.L__profc___muldi3), %i0
	ldd [%i0+%lo(.L__profc___muldi3)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___muldi3)]
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
	sethi %hi(.L__profc___muldi3), %i0
	add %i0, %lo(.L__profc___muldi3), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ldub [%fp+-32], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB100_4
	nop
	ba .LBB100_3
	nop
.LBB100_3:                              !   in Loop: Header=BB100_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.100), %i0
	add %i0, %lo(__llvm_gcov_ctr.100), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___muldi3), %i0
	add %i0, %lo(.L__profc___muldi3), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.100), %i0
	add %i0, %lo(__llvm_gcov_ctr.100), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	save %sp, -136, %sp
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	st %i2, [%fp+-16]
	sethi %hi(.L__profc_udivmodsi4), %i0
	ldd [%i0+%lo(.L__profc_udivmodsi4)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc_udivmodsi4)]
	mov	1, %i0
	st %i0, [%fp+-20]
	ba .LBB101_1
	st %g0, [%fp+-24]
.LBB101_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i1
	ld [%fp+-8], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bcc	.LBB101_8
	st %i0, [%fp+-28]
	ba .LBB101_2
	nop
.LBB101_2:                              !   in Loop: Header=BB101_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.101), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.101)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.101)]
	sethi %hi(.L__profc_udivmodsi4), %i0
	add %i0, %lo(.L__profc_udivmodsi4), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-20], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB101_8
	st %i0, [%fp+-28]
	ba .LBB101_3
	nop
.LBB101_3:                              !   in Loop: Header=BB101_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.101), %i0
	add %i0, %lo(__llvm_gcov_ctr.101), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc_udivmodsi4), %i0
	add %i0, %lo(.L__profc_udivmodsi4), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB101_4
	std %i2, [%i0+40]
.LBB101_4:                              !   in Loop: Header=BB101_1 Depth=1
	sethi %hi(.L__profc_udivmodsi4), %i0
	add %i0, %lo(.L__profc_udivmodsi4), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-12], %i0
	sethi 2097152, %i1
	and %i0, %i1, %i1
	st %i1, [%fp+-40]                       ! 4-byte Folded Spill
	mov	%g0, %i0
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 0
	be	.LBB101_6
	st %i0, [%fp+-32]
! %bb.5:                                !   in Loop: Header=BB101_1 Depth=1
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
.LBB101_6:                              !   in Loop: Header=BB101_1 Depth=1
	ld [%fp+-40], %i1                       ! 4-byte Folded Reload
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-44]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	bne	.LBB101_8
	st %i0, [%fp+-28]
	ba .LBB101_7
	nop
.LBB101_7:                              !   in Loop: Header=BB101_1 Depth=1
	ld [%fp+-44], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.101), %i1
	add %i1, %lo(__llvm_gcov_ctr.101), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	sethi %hi(.L__profc_udivmodsi4), %i1
	add %i1, %lo(.L__profc_udivmodsi4), %i1
	ldd [%i1+24], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+24]
	ba .LBB101_8
	st %i0, [%fp+-28]
.LBB101_8:                              !   in Loop: Header=BB101_1 Depth=1
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB101_10
	nop
	ba .LBB101_9
	nop
.LBB101_9:                              !   in Loop: Header=BB101_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.101), %i0
	add %i0, %lo(__llvm_gcov_ctr.101), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc_udivmodsi4), %i0
	add %i0, %lo(.L__profc_udivmodsi4), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-12], %i0
	sll %i0, 1, %i0
	st %i0, [%fp+-12]
	ld [%fp+-20], %i0
	sll %i0, 1, %i0
	ba .LBB101_1
	st %i0, [%fp+-20]
.LBB101_10:
	ba .LBB101_11
	nop
.LBB101_11:                             ! =>This Inner Loop Header: Depth=1
	ld [%fp+-20], %i0
	cmp	%i0, 0
	be	.LBB101_15
	nop
	ba .LBB101_12
	nop
.LBB101_12:                             !   in Loop: Header=BB101_11 Depth=1
	sethi %hi(.L__profc_udivmodsi4), %i0
	add %i0, %lo(.L__profc_udivmodsi4), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	ld [%fp+-8], %i0
	ld [%fp+-12], %i1
	cmp	%i0, %i1
	bcs	.LBB101_14
	nop
	ba .LBB101_13
	nop
.LBB101_13:                             !   in Loop: Header=BB101_11 Depth=1
	sethi %hi(__llvm_gcov_ctr.101), %i0
	add %i0, %lo(__llvm_gcov_ctr.101), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc_udivmodsi4), %i0
	add %i0, %lo(.L__profc_udivmodsi4), %i0
	ldd [%i0+56], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+56]
	ld [%fp+-12], %i1
	ld [%fp+-8], %i0
	sub %i0, %i1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-20], %i1
	ld [%fp+-24], %i0
	or %i0, %i1, %i0
	ba .LBB101_14
	st %i0, [%fp+-24]
.LBB101_14:                             !   in Loop: Header=BB101_11 Depth=1
	sethi %hi(__llvm_gcov_ctr.101), %i0
	add %i0, %lo(__llvm_gcov_ctr.101), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-20], %i0
	srl %i0, 1, %i0
	st %i0, [%fp+-20]
	ld [%fp+-12], %i0
	srl %i0, 1, %i0
	ba .LBB101_11
	st %i0, [%fp+-12]
.LBB101_15:
	ld [%fp+-16], %i0
	cmp	%i0, 0
	be	.LBB101_17
	nop
	ba .LBB101_16
	nop
.LBB101_16:
	sethi %hi(__llvm_gcov_ctr.101), %i0
	add %i0, %lo(__llvm_gcov_ctr.101), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	sethi %hi(.L__profc_udivmodsi4), %i0
	add %i0, %lo(.L__profc_udivmodsi4), %i0
	ldd [%i0+64], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+64]
	ld [%fp+-8], %i0
	ba .LBB101_18
	st %i0, [%fp+-4]
.LBB101_17:
	sethi %hi(__llvm_gcov_ctr.101), %i0
	add %i0, %lo(__llvm_gcov_ctr.101), %i0
	ldd [%i0+56], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+56]
	ld [%fp+-24], %i0
	ba .LBB101_18
	st %i0, [%fp+-4]
.LBB101_18:
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
	sethi %hi(.L__profc___clrsbqi2), %i0
	ldd [%i0+%lo(.L__profc___clrsbqi2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___clrsbqi2)]
	ldsb [%fp+-5], %i0
	cmp	%i0, -1
	bg	.LBB102_2
	nop
	ba .LBB102_1
	nop
.LBB102_1:
	sethi %hi(__llvm_gcov_ctr.102), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.102)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.102)]
	sethi %hi(.L__profc___clrsbqi2), %i0
	add %i0, %lo(.L__profc___clrsbqi2), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.102), %i0
	add %i0, %lo(__llvm_gcov_ctr.102), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___clrsbqi2), %i0
	add %i0, %lo(.L__profc___clrsbqi2), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	mov	7, %i0
	ba .LBB102_5
	st %i0, [%fp+-4]
.LBB102_4:
	sethi %hi(__llvm_gcov_ctr.102), %i0
	add %i0, %lo(__llvm_gcov_ctr.102), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(.L__profc___clrsbdi2), %i0
	ldd [%i0+%lo(.L__profc___clrsbdi2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___clrsbdi2)]
	add %fp, -16, %i0
	or %i0, 4, %i0
	ld [%i0], %i0
	cmp	%i0, -1
	bg	.LBB103_2
	nop
	ba .LBB103_1
	nop
.LBB103_1:
	sethi %hi(__llvm_gcov_ctr.103), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.103)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.103)]
	sethi %hi(.L__profc___clrsbdi2), %i0
	add %i0, %lo(.L__profc___clrsbdi2), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.103), %i0
	add %i0, %lo(__llvm_gcov_ctr.103), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___clrsbdi2), %i0
	add %i0, %lo(.L__profc___clrsbdi2), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	mov	63, %i0
	ba .LBB103_7
	st %i0, [%fp+-4]
.LBB103_4:
	sethi %hi(__llvm_gcov_ctr.103), %i0
	add %i0, %lo(__llvm_gcov_ctr.103), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.104), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.104)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.104)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc___mulsi3), %i0
	ldd [%i0+%lo(.L__profc___mulsi3)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___mulsi3)]
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
	sethi %hi(.L__profc___mulsi3), %i0
	add %i0, %lo(.L__profc___mulsi3), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ldub [%fp+-4], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB104_4
	nop
	ba .LBB104_3
	nop
.LBB104_3:                              !   in Loop: Header=BB104_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.104), %i0
	add %i0, %lo(__llvm_gcov_ctr.104), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___mulsi3), %i0
	add %i0, %lo(.L__profc___mulsi3), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-8], %i1
	ld [%fp+-12], %i0
	add %i0, %i1, %i0
	ba .LBB104_4
	st %i0, [%fp+-12]
.LBB104_4:                              !   in Loop: Header=BB104_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.104), %i0
	add %i0, %lo(__llvm_gcov_ctr.104), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(.L__profc___cmovd), %i0
	ldd [%i0+%lo(.L__profc___cmovd)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___cmovd)]
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
	bcs	.LBB105_3
	nop
	ba .LBB105_1
	nop
.LBB105_1:
	sethi %hi(__llvm_gcov_ctr.105), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.105)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.105)]
	sethi %hi(.L__profc___cmovd), %i0
	add %i0, %lo(.L__profc___cmovd), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-28], %i0
	ld [%fp+-32], %i1
	ld [%fp+-12], %i2
	add %i1, %i2, %i1
	cmp	%i0, %i1
	bgu	.LBB105_3
	nop
	ba .LBB105_2
	nop
.LBB105_2:
	sethi %hi(.L__profc___cmovd), %i0
	add %i0, %lo(.L__profc___cmovd), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB105_11
	std %i2, [%i0+24]
.LBB105_3:
	sethi %hi(.L__profc___cmovd), %i0
	add %i0, %lo(.L__profc___cmovd), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ba .LBB105_4
	st %g0, [%fp+-16]
.LBB105_4:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-16], %i0
	ld [%fp+-20], %i1
	cmp	%i0, %i1
	bcc	.LBB105_7
	nop
	ba .LBB105_5
	nop
.LBB105_5:                              !   in Loop: Header=BB105_4 Depth=1
	sethi %hi(.L__profc___cmovd), %i0
	add %i0, %lo(.L__profc___cmovd), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-8], %i0
	ld [%fp+-16], %i1
	sll %i1, 3, %i1
	ldd [%i0+%i1], %i2
	ld [%fp+-4], %i0
	ba .LBB105_6
	std %i2, [%i0+%i1]
.LBB105_6:                              !   in Loop: Header=BB105_4 Depth=1
	sethi %hi(__llvm_gcov_ctr.105), %i0
	add %i0, %lo(__llvm_gcov_ctr.105), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-16], %i0
	add %i0, 1, %i0
	ba .LBB105_4
	st %i0, [%fp+-16]
.LBB105_7:
	ba .LBB105_8
	nop
.LBB105_8:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	ld [%fp+-24], %i1
	cmp	%i0, %i1
	bleu	.LBB105_10
	nop
	ba .LBB105_9
	nop
.LBB105_9:                              !   in Loop: Header=BB105_8 Depth=1
	sethi %hi(__llvm_gcov_ctr.105), %i0
	add %i0, %lo(__llvm_gcov_ctr.105), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc___cmovd), %i0
	add %i0, %lo(.L__profc___cmovd), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-32], %i0
	ld [%fp+-24], %i1
	ldub [%i0+%i1], %i2
	ld [%fp+-28], %i0
	stb %i2, [%i0+%i1]
	ld [%fp+-24], %i0
	add %i0, 1, %i0
	ba .LBB105_8
	st %i0, [%fp+-24]
.LBB105_10:
	sethi %hi(__llvm_gcov_ctr.105), %i0
	add %i0, %lo(__llvm_gcov_ctr.105), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB105_15
	std %i2, [%i0+24]
.LBB105_11:
	ba .LBB105_12
	nop
.LBB105_12:                             ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	add %i0, -1, %i1
	cmp	%i0, 0
	be	.LBB105_14
	st %i1, [%fp+-12]
	ba .LBB105_13
	nop
.LBB105_13:                             !   in Loop: Header=BB105_12 Depth=1
	sethi %hi(__llvm_gcov_ctr.105), %i0
	add %i0, %lo(__llvm_gcov_ctr.105), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc___cmovd), %i0
	add %i0, %lo(.L__profc___cmovd), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	ld [%fp+-32], %i0
	ld [%fp+-12], %i1
	ldub [%i0+%i1], %i2
	ld [%fp+-28], %i0
	ba .LBB105_12
	stb %i2, [%i0+%i1]
.LBB105_14:
	sethi %hi(__llvm_gcov_ctr.105), %i0
	add %i0, %lo(__llvm_gcov_ctr.105), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB105_15
	std %i2, [%i0+40]
.LBB105_15:
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
	sethi %hi(.L__profc___cmovh), %i0
	ldd [%i0+%lo(.L__profc___cmovh)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___cmovh)]
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
	bcs	.LBB106_3
	nop
	ba .LBB106_1
	nop
.LBB106_1:
	sethi %hi(__llvm_gcov_ctr.106), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.106)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.106)]
	sethi %hi(.L__profc___cmovh), %i0
	add %i0, %lo(.L__profc___cmovh), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-24], %i0
	ld [%fp+-28], %i1
	ld [%fp+-12], %i2
	add %i1, %i2, %i1
	cmp	%i0, %i1
	bgu	.LBB106_3
	nop
	ba .LBB106_2
	nop
.LBB106_2:
	sethi %hi(.L__profc___cmovh), %i0
	add %i0, %lo(.L__profc___cmovh), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB106_10
	std %i2, [%i0+24]
.LBB106_3:
	sethi %hi(.L__profc___cmovh), %i0
	add %i0, %lo(.L__profc___cmovh), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ba .LBB106_4
	st %g0, [%fp+-16]
.LBB106_4:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-16], %i0
	ld [%fp+-20], %i1
	cmp	%i0, %i1
	bcc	.LBB106_7
	nop
	ba .LBB106_5
	nop
.LBB106_5:                              !   in Loop: Header=BB106_4 Depth=1
	sethi %hi(.L__profc___cmovh), %i0
	add %i0, %lo(.L__profc___cmovh), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-8], %i0
	ld [%fp+-16], %i1
	sll %i1, 1, %i1
	lduh [%i0+%i1], %i2
	ld [%fp+-4], %i0
	ba .LBB106_6
	sth %i2, [%i0+%i1]
.LBB106_6:                              !   in Loop: Header=BB106_4 Depth=1
	sethi %hi(__llvm_gcov_ctr.106), %i0
	add %i0, %lo(__llvm_gcov_ctr.106), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-16], %i0
	add %i0, 1, %i0
	ba .LBB106_4
	st %i0, [%fp+-16]
.LBB106_7:
	ldub [%fp+-12], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB106_9
	nop
	ba .LBB106_8
	nop
.LBB106_8:
	sethi %hi(__llvm_gcov_ctr.106), %i0
	add %i0, %lo(__llvm_gcov_ctr.106), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc___cmovh), %i0
	add %i0, %lo(.L__profc___cmovh), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-28], %i0
	ld [%fp+-12], %i1
	add %i1, -1, %i1
	ldub [%i0+%i1], %i2
	ld [%fp+-24], %i0
	ba .LBB106_9
	stb %i2, [%i0+%i1]
.LBB106_9:
	sethi %hi(__llvm_gcov_ctr.106), %i0
	add %i0, %lo(__llvm_gcov_ctr.106), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB106_14
	std %i2, [%i0+24]
.LBB106_10:
	ba .LBB106_11
	nop
.LBB106_11:                             ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	add %i0, -1, %i1
	cmp	%i0, 0
	be	.LBB106_13
	st %i1, [%fp+-12]
	ba .LBB106_12
	nop
.LBB106_12:                             !   in Loop: Header=BB106_11 Depth=1
	sethi %hi(__llvm_gcov_ctr.106), %i0
	add %i0, %lo(__llvm_gcov_ctr.106), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc___cmovh), %i0
	add %i0, %lo(.L__profc___cmovh), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	ld [%fp+-28], %i0
	ld [%fp+-12], %i1
	ldub [%i0+%i1], %i2
	ld [%fp+-24], %i0
	ba .LBB106_11
	stb %i2, [%i0+%i1]
.LBB106_13:
	sethi %hi(__llvm_gcov_ctr.106), %i0
	add %i0, %lo(__llvm_gcov_ctr.106), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB106_14
	std %i2, [%i0+40]
.LBB106_14:
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
	sethi %hi(.L__profc___cmovw), %i0
	ldd [%i0+%lo(.L__profc___cmovw)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___cmovw)]
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
	bcs	.LBB107_3
	nop
	ba .LBB107_1
	nop
.LBB107_1:
	sethi %hi(__llvm_gcov_ctr.107), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.107)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.107)]
	sethi %hi(.L__profc___cmovw), %i0
	add %i0, %lo(.L__profc___cmovw), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-28], %i0
	ld [%fp+-32], %i1
	ld [%fp+-12], %i2
	add %i1, %i2, %i1
	cmp	%i0, %i1
	bgu	.LBB107_3
	nop
	ba .LBB107_2
	nop
.LBB107_2:
	sethi %hi(.L__profc___cmovw), %i0
	add %i0, %lo(.L__profc___cmovw), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB107_11
	std %i2, [%i0+24]
.LBB107_3:
	sethi %hi(.L__profc___cmovw), %i0
	add %i0, %lo(.L__profc___cmovw), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ba .LBB107_4
	st %g0, [%fp+-16]
.LBB107_4:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-16], %i0
	ld [%fp+-20], %i1
	cmp	%i0, %i1
	bcc	.LBB107_7
	nop
	ba .LBB107_5
	nop
.LBB107_5:                              !   in Loop: Header=BB107_4 Depth=1
	sethi %hi(.L__profc___cmovw), %i0
	add %i0, %lo(.L__profc___cmovw), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-8], %i0
	ld [%fp+-16], %i1
	sll %i1, 2, %i1
	ld [%i0+%i1], %i2
	ld [%fp+-4], %i0
	ba .LBB107_6
	st %i2, [%i0+%i1]
.LBB107_6:                              !   in Loop: Header=BB107_4 Depth=1
	sethi %hi(__llvm_gcov_ctr.107), %i0
	add %i0, %lo(__llvm_gcov_ctr.107), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-16], %i0
	add %i0, 1, %i0
	ba .LBB107_4
	st %i0, [%fp+-16]
.LBB107_7:
	ba .LBB107_8
	nop
.LBB107_8:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	ld [%fp+-24], %i1
	cmp	%i0, %i1
	bleu	.LBB107_10
	nop
	ba .LBB107_9
	nop
.LBB107_9:                              !   in Loop: Header=BB107_8 Depth=1
	sethi %hi(__llvm_gcov_ctr.107), %i0
	add %i0, %lo(__llvm_gcov_ctr.107), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc___cmovw), %i0
	add %i0, %lo(.L__profc___cmovw), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-32], %i0
	ld [%fp+-24], %i1
	ldub [%i0+%i1], %i2
	ld [%fp+-28], %i0
	stb %i2, [%i0+%i1]
	ld [%fp+-24], %i0
	add %i0, 1, %i0
	ba .LBB107_8
	st %i0, [%fp+-24]
.LBB107_10:
	sethi %hi(__llvm_gcov_ctr.107), %i0
	add %i0, %lo(__llvm_gcov_ctr.107), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB107_15
	std %i2, [%i0+24]
.LBB107_11:
	ba .LBB107_12
	nop
.LBB107_12:                             ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	add %i0, -1, %i1
	cmp	%i0, 0
	be	.LBB107_14
	st %i1, [%fp+-12]
	ba .LBB107_13
	nop
.LBB107_13:                             !   in Loop: Header=BB107_12 Depth=1
	sethi %hi(__llvm_gcov_ctr.107), %i0
	add %i0, %lo(__llvm_gcov_ctr.107), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc___cmovw), %i0
	add %i0, %lo(.L__profc___cmovw), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	ld [%fp+-32], %i0
	ld [%fp+-12], %i1
	ldub [%i0+%i1], %i2
	ld [%fp+-28], %i0
	ba .LBB107_12
	stb %i2, [%i0+%i1]
.LBB107_14:
	sethi %hi(__llvm_gcov_ctr.107), %i0
	add %i0, %lo(__llvm_gcov_ctr.107), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB107_15
	std %i2, [%i0+40]
.LBB107_15:
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
	sethi %hi(__llvm_gcov_ctr.108), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.108)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.108)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc___modi), %i0
	ldd [%i0+%lo(.L__profc___modi)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___modi)]
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
	sethi %hi(__llvm_gcov_ctr.109), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.109)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.109)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc___uitod), %i0
	ldd [%i0+%lo(.L__profc___uitod)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___uitod)]
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
	sethi %hi(__llvm_gcov_ctr.110), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.110)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.110)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc___uitof), %i0
	ldd [%i0+%lo(.L__profc___uitof)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___uitof)]
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
	sethi %hi(__llvm_gcov_ctr.111), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.111)], %g2
	mov	%g2, %i4
	mov	%g3, %i1
	addcc %i4, 1, %g2
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i1, %i5
	std %i4, [%i0+%lo(__llvm_gcov_ctr.111)]
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	sethi %hi(.L__profc___ulltod), %i0
	ldd [%i0+%lo(.L__profc___ulltod)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___ulltod)]
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
	sethi %hi(__llvm_gcov_ctr.112), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.112)], %g2
	mov	%g2, %i4
	mov	%g3, %i1
	addcc %i4, 1, %g2
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i1, %i5
	std %i4, [%i0+%lo(__llvm_gcov_ctr.112)]
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	sethi %hi(.L__profc___ulltof), %i0
	ldd [%i0+%lo(.L__profc___ulltof)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___ulltof)]
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
	sethi %hi(__llvm_gcov_ctr.113), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.113)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.113)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc___umodi), %i0
	ldd [%i0+%lo(.L__profc___umodi)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___umodi)]
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
	sethi %hi(__llvm_gcov_ctr.114), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.114)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.114)]
	sth %i0, [%fp+-2]
	sethi %hi(.L__profc___clzhi2), %i0
	ldd [%i0+%lo(.L__profc___clzhi2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___clzhi2)]
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
	sethi %hi(.L__profc___clzhi2), %i0
	add %i0, %lo(.L__profc___clzhi2), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.114), %i0
	add %i0, %lo(__llvm_gcov_ctr.114), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___clzhi2), %i0
	add %i0, %lo(.L__profc___clzhi2), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB114_6
	std %i2, [%i0+16]
.LBB114_4:                              !   in Loop: Header=BB114_1 Depth=1
	ba .LBB114_5
	nop
.LBB114_5:                              !   in Loop: Header=BB114_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.114), %i0
	add %i0, %lo(__llvm_gcov_ctr.114), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.115), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.115)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.115)]
	sth %i0, [%fp+-2]
	sethi %hi(.L__profc___ctzhi2), %i0
	ldd [%i0+%lo(.L__profc___ctzhi2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___ctzhi2)]
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
	sethi %hi(.L__profc___ctzhi2), %i0
	add %i0, %lo(.L__profc___ctzhi2), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.115), %i0
	add %i0, %lo(__llvm_gcov_ctr.115), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___ctzhi2), %i0
	add %i0, %lo(.L__profc___ctzhi2), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB115_6
	std %i2, [%i0+16]
.LBB115_4:                              !   in Loop: Header=BB115_1 Depth=1
	ba .LBB115_5
	nop
.LBB115_5:                              !   in Loop: Header=BB115_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.115), %i0
	add %i0, %lo(__llvm_gcov_ctr.115), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(.L__profc___fixunssfsi), %i0
	ldd [%i0+%lo(.L__profc___fixunssfsi)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___fixunssfsi)]
	ld [%fp+-8], %o0
	call __gesf2
	sethi 1163264, %o1
	cmp	%o0, 0
	bl	.LBB116_2
	nop
	ba .LBB116_1
	nop
.LBB116_1:
	sethi %hi(__llvm_gcov_ctr.116), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.116)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.116)]
	sethi %hi(.L__profc___fixunssfsi), %i0
	add %i0, %lo(.L__profc___fixunssfsi), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.116), %i0
	add %i0, %lo(__llvm_gcov_ctr.116), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.117), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.117)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.117)]
	sth %i0, [%fp+-2]
	sethi %hi(.L__profc___parityhi2), %i0
	ldd [%i0+%lo(.L__profc___parityhi2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___parityhi2)]
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
	sethi %hi(.L__profc___parityhi2), %i0
	add %i0, %lo(.L__profc___parityhi2), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.117), %i0
	add %i0, %lo(__llvm_gcov_ctr.117), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___parityhi2), %i0
	add %i0, %lo(.L__profc___parityhi2), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-12], %i0
	add %i0, 1, %i0
	ba .LBB117_4
	st %i0, [%fp+-12]
.LBB117_4:                              !   in Loop: Header=BB117_1 Depth=1
	ba .LBB117_5
	nop
.LBB117_5:                              !   in Loop: Header=BB117_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.117), %i0
	add %i0, %lo(__llvm_gcov_ctr.117), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.118), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.118)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.118)]
	sth %i0, [%fp+-2]
	sethi %hi(.L__profc___popcounthi2), %i0
	ldd [%i0+%lo(.L__profc___popcounthi2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___popcounthi2)]
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
	sethi %hi(.L__profc___popcounthi2), %i0
	add %i0, %lo(.L__profc___popcounthi2), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.118), %i0
	add %i0, %lo(__llvm_gcov_ctr.118), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___popcounthi2), %i0
	add %i0, %lo(.L__profc___popcounthi2), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-12], %i0
	add %i0, 1, %i0
	ba .LBB118_4
	st %i0, [%fp+-12]
.LBB118_4:                              !   in Loop: Header=BB118_1 Depth=1
	ba .LBB118_5
	nop
.LBB118_5:                              !   in Loop: Header=BB118_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.118), %i0
	add %i0, %lo(__llvm_gcov_ctr.118), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.119), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.119)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.119)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc___mulsi3_iq2000), %i0
	ldd [%i0+%lo(.L__profc___mulsi3_iq2000)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___mulsi3_iq2000)]
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
	sethi %hi(.L__profc___mulsi3_iq2000), %i0
	add %i0, %lo(.L__profc___mulsi3_iq2000), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ldub [%fp+-4], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB119_4
	nop
	ba .LBB119_3
	nop
.LBB119_3:                              !   in Loop: Header=BB119_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.119), %i0
	add %i0, %lo(__llvm_gcov_ctr.119), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___mulsi3_iq2000), %i0
	add %i0, %lo(.L__profc___mulsi3_iq2000), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-8], %i1
	ld [%fp+-12], %i0
	add %i0, %i1, %i0
	ba .LBB119_4
	st %i0, [%fp+-12]
.LBB119_4:                              !   in Loop: Header=BB119_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.119), %i0
	add %i0, %lo(__llvm_gcov_ctr.119), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(.L__profc___mulsi3_lm32), %i0
	ldd [%i0+%lo(.L__profc___mulsi3_lm32)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___mulsi3_lm32)]
	st %g0, [%fp+-16]
	ld [%fp+-8], %i0
	cmp	%i0, 0
	bne	.LBB120_2
	nop
	ba .LBB120_1
	nop
.LBB120_1:
	sethi %hi(__llvm_gcov_ctr.120), %i0
	add %i0, %lo(__llvm_gcov_ctr.120), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___mulsi3_lm32), %i0
	add %i0, %lo(.L__profc___mulsi3_lm32), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ba .LBB120_8
	st %g0, [%fp+-4]
.LBB120_2:
	sethi %hi(__llvm_gcov_ctr.120), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.120)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB120_3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.120)]
.LBB120_3:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB120_7
	nop
	ba .LBB120_4
	nop
.LBB120_4:                              !   in Loop: Header=BB120_3 Depth=1
	sethi %hi(.L__profc___mulsi3_lm32), %i0
	add %i0, %lo(.L__profc___mulsi3_lm32), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ldub [%fp+-12], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB120_6
	nop
	ba .LBB120_5
	nop
.LBB120_5:                              !   in Loop: Header=BB120_3 Depth=1
	sethi %hi(__llvm_gcov_ctr.120), %i0
	add %i0, %lo(__llvm_gcov_ctr.120), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc___mulsi3_lm32), %i0
	add %i0, %lo(.L__profc___mulsi3_lm32), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	ld [%fp+-8], %i1
	ld [%fp+-16], %i0
	add %i0, %i1, %i0
	ba .LBB120_6
	st %i0, [%fp+-16]
.LBB120_6:                              !   in Loop: Header=BB120_3 Depth=1
	sethi %hi(__llvm_gcov_ctr.120), %i0
	add %i0, %lo(__llvm_gcov_ctr.120), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	save %sp, -136, %sp
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	st %i2, [%fp+-16]
	sethi %hi(.L__profc___udivmodsi4), %i0
	ldd [%i0+%lo(.L__profc___udivmodsi4)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___udivmodsi4)]
	mov	1, %i0
	st %i0, [%fp+-20]
	ba .LBB121_1
	st %g0, [%fp+-24]
.LBB121_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i1
	ld [%fp+-8], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bcc	.LBB121_8
	st %i0, [%fp+-28]
	ba .LBB121_2
	nop
.LBB121_2:                              !   in Loop: Header=BB121_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.121), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.121)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.121)]
	sethi %hi(.L__profc___udivmodsi4), %i0
	add %i0, %lo(.L__profc___udivmodsi4), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-20], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB121_8
	st %i0, [%fp+-28]
	ba .LBB121_3
	nop
.LBB121_3:                              !   in Loop: Header=BB121_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.121), %i0
	add %i0, %lo(__llvm_gcov_ctr.121), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___udivmodsi4), %i0
	add %i0, %lo(.L__profc___udivmodsi4), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB121_4
	std %i2, [%i0+40]
.LBB121_4:                              !   in Loop: Header=BB121_1 Depth=1
	sethi %hi(.L__profc___udivmodsi4), %i0
	add %i0, %lo(.L__profc___udivmodsi4), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-12], %i0
	sethi 2097152, %i1
	and %i0, %i1, %i1
	st %i1, [%fp+-40]                       ! 4-byte Folded Spill
	mov	%g0, %i0
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 0
	be	.LBB121_6
	st %i0, [%fp+-32]
! %bb.5:                                !   in Loop: Header=BB121_1 Depth=1
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
.LBB121_6:                              !   in Loop: Header=BB121_1 Depth=1
	ld [%fp+-40], %i1                       ! 4-byte Folded Reload
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-44]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	bne	.LBB121_8
	st %i0, [%fp+-28]
	ba .LBB121_7
	nop
.LBB121_7:                              !   in Loop: Header=BB121_1 Depth=1
	ld [%fp+-44], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.121), %i1
	add %i1, %lo(__llvm_gcov_ctr.121), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	sethi %hi(.L__profc___udivmodsi4), %i1
	add %i1, %lo(.L__profc___udivmodsi4), %i1
	ldd [%i1+24], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+24]
	ba .LBB121_8
	st %i0, [%fp+-28]
.LBB121_8:                              !   in Loop: Header=BB121_1 Depth=1
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB121_10
	nop
	ba .LBB121_9
	nop
.LBB121_9:                              !   in Loop: Header=BB121_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.121), %i0
	add %i0, %lo(__llvm_gcov_ctr.121), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc___udivmodsi4), %i0
	add %i0, %lo(.L__profc___udivmodsi4), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-12], %i0
	sll %i0, 1, %i0
	st %i0, [%fp+-12]
	ld [%fp+-20], %i0
	sll %i0, 1, %i0
	ba .LBB121_1
	st %i0, [%fp+-20]
.LBB121_10:
	ba .LBB121_11
	nop
.LBB121_11:                             ! =>This Inner Loop Header: Depth=1
	ld [%fp+-20], %i0
	cmp	%i0, 0
	be	.LBB121_15
	nop
	ba .LBB121_12
	nop
.LBB121_12:                             !   in Loop: Header=BB121_11 Depth=1
	sethi %hi(.L__profc___udivmodsi4), %i0
	add %i0, %lo(.L__profc___udivmodsi4), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	ld [%fp+-8], %i0
	ld [%fp+-12], %i1
	cmp	%i0, %i1
	bcs	.LBB121_14
	nop
	ba .LBB121_13
	nop
.LBB121_13:                             !   in Loop: Header=BB121_11 Depth=1
	sethi %hi(__llvm_gcov_ctr.121), %i0
	add %i0, %lo(__llvm_gcov_ctr.121), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc___udivmodsi4), %i0
	add %i0, %lo(.L__profc___udivmodsi4), %i0
	ldd [%i0+56], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+56]
	ld [%fp+-12], %i1
	ld [%fp+-8], %i0
	sub %i0, %i1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-20], %i1
	ld [%fp+-24], %i0
	or %i0, %i1, %i0
	ba .LBB121_14
	st %i0, [%fp+-24]
.LBB121_14:                             !   in Loop: Header=BB121_11 Depth=1
	sethi %hi(__llvm_gcov_ctr.121), %i0
	add %i0, %lo(__llvm_gcov_ctr.121), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-20], %i0
	srl %i0, 1, %i0
	st %i0, [%fp+-20]
	ld [%fp+-12], %i0
	srl %i0, 1, %i0
	ba .LBB121_11
	st %i0, [%fp+-12]
.LBB121_15:
	ld [%fp+-16], %i0
	cmp	%i0, 0
	be	.LBB121_17
	nop
	ba .LBB121_16
	nop
.LBB121_16:
	sethi %hi(__llvm_gcov_ctr.121), %i0
	add %i0, %lo(__llvm_gcov_ctr.121), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	sethi %hi(.L__profc___udivmodsi4), %i0
	add %i0, %lo(.L__profc___udivmodsi4), %i0
	ldd [%i0+64], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+64]
	ld [%fp+-8], %i0
	ba .LBB121_18
	st %i0, [%fp+-4]
.LBB121_17:
	sethi %hi(__llvm_gcov_ctr.121), %i0
	add %i0, %lo(__llvm_gcov_ctr.121), %i0
	ldd [%i0+56], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+56]
	ld [%fp+-24], %i0
	ba .LBB121_18
	st %i0, [%fp+-4]
.LBB121_18:
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
	sethi %hi(.L__profc___mspabi_cmpf), %i0
	ldd [%i0+%lo(.L__profc___mspabi_cmpf)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___mspabi_cmpf)]
	ld [%fp+-8], %o0
	call __ltsf2
	ld [%fp+-12], %o1
	cmp	%o0, -1
	bg	.LBB122_2
	nop
	ba .LBB122_1
	nop
.LBB122_1:
	sethi %hi(__llvm_gcov_ctr.122), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.122)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.122)]
	sethi %hi(.L__profc___mspabi_cmpf), %i0
	add %i0, %lo(.L__profc___mspabi_cmpf), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.122), %i0
	add %i0, %lo(__llvm_gcov_ctr.122), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___mspabi_cmpf), %i0
	add %i0, %lo(.L__profc___mspabi_cmpf), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	mov	1, %i0
	ba .LBB122_5
	st %i0, [%fp+-4]
.LBB122_4:
	sethi %hi(__llvm_gcov_ctr.122), %i0
	add %i0, %lo(__llvm_gcov_ctr.122), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(.L__profc___mspabi_cmpd), %i0
	ldd [%i0+%lo(.L__profc___mspabi_cmpd)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___mspabi_cmpd)]
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
	sethi %hi(__llvm_gcov_ctr.123), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.123)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.123)]
	sethi %hi(.L__profc___mspabi_cmpd), %i0
	add %i0, %lo(.L__profc___mspabi_cmpd), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.123), %i0
	add %i0, %lo(__llvm_gcov_ctr.123), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___mspabi_cmpd), %i0
	add %i0, %lo(.L__profc___mspabi_cmpd), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	mov	1, %i0
	ba .LBB123_5
	st %i0, [%fp+-4]
.LBB123_4:
	sethi %hi(__llvm_gcov_ctr.123), %i0
	add %i0, %lo(__llvm_gcov_ctr.123), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.124), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.124)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.124)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc___mspabi_mpysll), %i0
	ldd [%i0+%lo(.L__profc___mspabi_mpysll)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___mspabi_mpysll)]
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
	sethi %hi(__llvm_gcov_ctr.125), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.125)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.125)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc___mspabi_mpyull), %i0
	ldd [%i0+%lo(.L__profc___mspabi_mpyull)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___mspabi_mpyull)]
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
	save %sp, -136, %sp
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc___mulhi3), %i0
	ldd [%i0+%lo(.L__profc___mulhi3)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___mulhi3)]
	st %g0, [%fp+-16]
	st %g0, [%fp+-20]
	ld [%fp+-8], %i0
	cmp	%i0, -1
	bg	.LBB126_2
	nop
	ba .LBB126_1
	nop
.LBB126_1:
	sethi %hi(__llvm_gcov_ctr.126), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.126)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.126)]
	sethi %hi(.L__profc___mulhi3), %i0
	add %i0, %lo(.L__profc___mulhi3), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	be	.LBB126_8
	st %i0, [%fp+-24]
	ba .LBB126_4
	nop
.LBB126_4:                              !   in Loop: Header=BB126_3 Depth=1
	sethi %hi(__llvm_gcov_ctr.126), %i0
	add %i0, %lo(__llvm_gcov_ctr.126), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___mulhi3), %i0
	add %i0, %lo(.L__profc___mulhi3), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	ldsb [%fp+-9], %i1
	st %i1, [%fp+-36]                       ! 4-byte Folded Spill
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
	ld [%fp+-36], %i1                       ! 4-byte Folded Reload
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-40]                       ! 4-byte Folded Spill
	cmp	%i1, 31
	bgu	.LBB126_8
	st %i0, [%fp+-24]
	ba .LBB126_7
	nop
.LBB126_7:                              !   in Loop: Header=BB126_3 Depth=1
	ld [%fp+-40], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.126), %i1
	add %i1, %lo(__llvm_gcov_ctr.126), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	sethi %hi(.L__profc___mulhi3), %i1
	add %i1, %lo(.L__profc___mulhi3), %i1
	ldd [%i1+32], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+32]
	ba .LBB126_8
	st %i0, [%fp+-24]
.LBB126_8:                              !   in Loop: Header=BB126_3 Depth=1
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB126_13
	nop
	ba .LBB126_9
	nop
.LBB126_9:                              !   in Loop: Header=BB126_3 Depth=1
	sethi %hi(.L__profc___mulhi3), %i0
	add %i0, %lo(.L__profc___mulhi3), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ldub [%fp+-8], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB126_11
	nop
	ba .LBB126_10
	nop
.LBB126_10:                             !   in Loop: Header=BB126_3 Depth=1
	sethi %hi(__llvm_gcov_ctr.126), %i0
	add %i0, %lo(__llvm_gcov_ctr.126), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc___mulhi3), %i0
	add %i0, %lo(.L__profc___mulhi3), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-4], %i1
	ld [%fp+-20], %i0
	add %i0, %i1, %i0
	ba .LBB126_11
	st %i0, [%fp+-20]
.LBB126_11:                             !   in Loop: Header=BB126_3 Depth=1
	ld [%fp+-4], %i0
	sll %i0, 1, %i0
	st %i0, [%fp+-4]
	ld [%fp+-8], %i0
	sra %i0, 1, %i0
	ba .LBB126_12
	st %i0, [%fp+-8]
.LBB126_12:                             !   in Loop: Header=BB126_3 Depth=1
	sethi %hi(__llvm_gcov_ctr.126), %i0
	add %i0, %lo(__llvm_gcov_ctr.126), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ldub [%fp+-9], %i0
	add %i0, 1, %i0
	ba .LBB126_3
	stb %i0, [%fp+-9]
.LBB126_13:
	ld [%fp+-16], %i0
	cmp	%i0, 0
	be	.LBB126_15
	nop
	ba .LBB126_14
	nop
.LBB126_14:
	sethi %hi(__llvm_gcov_ctr.126), %i0
	add %i0, %lo(__llvm_gcov_ctr.126), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	sethi %hi(.L__profc___mulhi3), %i0
	add %i0, %lo(.L__profc___mulhi3), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	ld [%fp+-20], %i1
	mov	%g0, %i0
	sub %i0, %i1, %i0
	ba .LBB126_16
	st %i0, [%fp+-44]
.LBB126_15:
	sethi %hi(__llvm_gcov_ctr.126), %i0
	add %i0, %lo(__llvm_gcov_ctr.126), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	ld [%fp+-20], %i0
	ba .LBB126_16
	st %i0, [%fp+-44]
.LBB126_16:
	ld [%fp+-44], %i0                       ! 4-byte Folded Reload
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
	sethi %hi(__llvm_gcov_ctr.127), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.127)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.127)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc___divsi3), %i0
	ldd [%i0+%lo(.L__profc___divsi3)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___divsi3)]
	st %g0, [%fp+-12]
	ld [%fp+-4], %i0
	cmp	%i0, -1
	bg	.LBB127_4
	nop
	ba .LBB127_1
	nop
.LBB127_1:
	sethi %hi(__llvm_gcov_ctr.127), %i0
	add %i0, %lo(__llvm_gcov_ctr.127), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___divsi3), %i0
	add %i0, %lo(.L__profc___divsi3), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.127), %i0
	add %i0, %lo(__llvm_gcov_ctr.127), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc___divsi3), %i0
	add %i0, %lo(.L__profc___divsi3), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.127), %i0
	add %i0, %lo(__llvm_gcov_ctr.127), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc___divsi3), %i0
	add %i0, %lo(.L__profc___divsi3), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	sethi %hi(__llvm_gcov_ctr.128), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.128)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.128)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc___modsi3), %i0
	ldd [%i0+%lo(.L__profc___modsi3)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___modsi3)]
	st %g0, [%fp+-12]
	ld [%fp+-4], %i0
	cmp	%i0, -1
	bg	.LBB128_2
	nop
	ba .LBB128_1
	nop
.LBB128_1:
	sethi %hi(__llvm_gcov_ctr.128), %i0
	add %i0, %lo(__llvm_gcov_ctr.128), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___modsi3), %i0
	add %i0, %lo(.L__profc___modsi3), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.128), %i0
	add %i0, %lo(__llvm_gcov_ctr.128), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc___modsi3), %i0
	add %i0, %lo(.L__profc___modsi3), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.128), %i0
	add %i0, %lo(__llvm_gcov_ctr.128), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc___modsi3), %i0
	add %i0, %lo(.L__profc___modsi3), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	save %sp, -128, %sp
                                        ! kill: def $i3 killed $i1
                                        ! kill: def $i3 killed $i0
	sth %i0, [%fp+-4]
	sth %i1, [%fp+-6]
	st %i2, [%fp+-12]
	sethi %hi(.L__profc___udivmodhi4), %i0
	ldd [%i0+%lo(.L__profc___udivmodhi4)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___udivmodhi4)]
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
	bge	.LBB129_8
	st %i0, [%fp+-20]
	ba .LBB129_2
	nop
.LBB129_2:                              !   in Loop: Header=BB129_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.129), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.129)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.129)]
	sethi %hi(.L__profc___udivmodhi4), %i0
	add %i0, %lo(.L__profc___udivmodhi4), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	lduh [%fp+-14], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB129_8
	st %i0, [%fp+-20]
	ba .LBB129_3
	nop
.LBB129_3:                              !   in Loop: Header=BB129_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.129), %i0
	add %i0, %lo(__llvm_gcov_ctr.129), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___udivmodhi4), %i0
	add %i0, %lo(.L__profc___udivmodhi4), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB129_4
	std %i2, [%i0+40]
.LBB129_4:                              !   in Loop: Header=BB129_1 Depth=1
	sethi %hi(.L__profc___udivmodhi4), %i0
	add %i0, %lo(.L__profc___udivmodhi4), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	lduh [%fp+-6], %i0
	sethi 32, %i1
	and %i0, %i1, %i1
	st %i1, [%fp+-32]                       ! 4-byte Folded Spill
	mov	%g0, %i0
	st %i0, [%fp+-28]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 0
	be	.LBB129_6
	st %i0, [%fp+-24]
! %bb.5:                                !   in Loop: Header=BB129_1 Depth=1
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
.LBB129_6:                              !   in Loop: Header=BB129_1 Depth=1
	ld [%fp+-32], %i1                       ! 4-byte Folded Reload
	ld [%fp+-24], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	bne	.LBB129_8
	st %i0, [%fp+-20]
	ba .LBB129_7
	nop
.LBB129_7:                              !   in Loop: Header=BB129_1 Depth=1
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.129), %i1
	add %i1, %lo(__llvm_gcov_ctr.129), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	sethi %hi(.L__profc___udivmodhi4), %i1
	add %i1, %lo(.L__profc___udivmodhi4), %i1
	ldd [%i1+24], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+24]
	ba .LBB129_8
	st %i0, [%fp+-20]
.LBB129_8:                              !   in Loop: Header=BB129_1 Depth=1
	ld [%fp+-20], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB129_10
	nop
	ba .LBB129_9
	nop
.LBB129_9:                              !   in Loop: Header=BB129_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.129), %i0
	add %i0, %lo(__llvm_gcov_ctr.129), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc___udivmodhi4), %i0
	add %i0, %lo(.L__profc___udivmodhi4), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	lduh [%fp+-6], %i0
	sll %i0, 1, %i0
	sth %i0, [%fp+-6]
	lduh [%fp+-14], %i0
	sll %i0, 1, %i0
	ba .LBB129_1
	sth %i0, [%fp+-14]
.LBB129_10:
	ba .LBB129_11
	nop
.LBB129_11:                             ! =>This Inner Loop Header: Depth=1
	lduh [%fp+-14], %i0
	cmp	%i0, 0
	be	.LBB129_15
	nop
	ba .LBB129_12
	nop
.LBB129_12:                             !   in Loop: Header=BB129_11 Depth=1
	sethi %hi(.L__profc___udivmodhi4), %i0
	add %i0, %lo(.L__profc___udivmodhi4), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	lduh [%fp+-4], %i0
	lduh [%fp+-6], %i1
	cmp	%i0, %i1
	bl	.LBB129_14
	nop
	ba .LBB129_13
	nop
.LBB129_13:                             !   in Loop: Header=BB129_11 Depth=1
	sethi %hi(__llvm_gcov_ctr.129), %i0
	add %i0, %lo(__llvm_gcov_ctr.129), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc___udivmodhi4), %i0
	add %i0, %lo(.L__profc___udivmodhi4), %i0
	ldd [%i0+56], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+56]
	lduh [%fp+-6], %i1
	lduh [%fp+-4], %i0
	sub %i0, %i1, %i0
	sth %i0, [%fp+-4]
	lduh [%fp+-14], %i1
	lduh [%fp+-16], %i0
	or %i0, %i1, %i0
	ba .LBB129_14
	sth %i0, [%fp+-16]
.LBB129_14:                             !   in Loop: Header=BB129_11 Depth=1
	sethi %hi(__llvm_gcov_ctr.129), %i0
	add %i0, %lo(__llvm_gcov_ctr.129), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	lduh [%fp+-14], %i0
	srl %i0, 1, %i0
	sth %i0, [%fp+-14]
	lduh [%fp+-6], %i0
	srl %i0, 1, %i0
	ba .LBB129_11
	sth %i0, [%fp+-6]
.LBB129_15:
	ld [%fp+-12], %i0
	cmp	%i0, 0
	be	.LBB129_17
	nop
	ba .LBB129_16
	nop
.LBB129_16:
	sethi %hi(__llvm_gcov_ctr.129), %i0
	add %i0, %lo(__llvm_gcov_ctr.129), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	sethi %hi(.L__profc___udivmodhi4), %i0
	add %i0, %lo(.L__profc___udivmodhi4), %i0
	ldd [%i0+64], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+64]
	lduh [%fp+-4], %i0
	ba .LBB129_18
	sth %i0, [%fp+-2]
.LBB129_17:
	sethi %hi(__llvm_gcov_ctr.129), %i0
	add %i0, %lo(__llvm_gcov_ctr.129), %i0
	ldd [%i0+56], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+56]
	lduh [%fp+-16], %i0
	ba .LBB129_18
	sth %i0, [%fp+-2]
.LBB129_18:
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
	save %sp, -136, %sp
	st %i0, [%fp+-8]
	st %i1, [%fp+-12]
	st %i2, [%fp+-16]
	sethi %hi(.L__profc___udivmodsi4_libgcc), %i0
	ldd [%i0+%lo(.L__profc___udivmodsi4_libgcc)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___udivmodsi4_libgcc)]
	mov	1, %i0
	st %i0, [%fp+-20]
	ba .LBB130_1
	st %g0, [%fp+-24]
.LBB130_1:                              ! =>This Inner Loop Header: Depth=1
	ld [%fp+-12], %i1
	ld [%fp+-8], %i2
	mov	%g0, %i0
	cmp	%i1, %i2
	bcc	.LBB130_8
	st %i0, [%fp+-28]
	ba .LBB130_2
	nop
.LBB130_2:                              !   in Loop: Header=BB130_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.130), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.130)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.130)]
	sethi %hi(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %lo(.L__profc___udivmodsi4_libgcc), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-20], %i1
	mov	%g0, %i0
	cmp	%i1, 0
	be	.LBB130_8
	st %i0, [%fp+-28]
	ba .LBB130_3
	nop
.LBB130_3:                              !   in Loop: Header=BB130_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.130), %i0
	add %i0, %lo(__llvm_gcov_ctr.130), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %lo(.L__profc___udivmodsi4_libgcc), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB130_4
	std %i2, [%i0+40]
.LBB130_4:                              !   in Loop: Header=BB130_1 Depth=1
	sethi %hi(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %lo(.L__profc___udivmodsi4_libgcc), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ld [%fp+-12], %i0
	sethi 2097152, %i1
	and %i0, %i1, %i1
	st %i1, [%fp+-40]                       ! 4-byte Folded Spill
	mov	%g0, %i0
	st %i0, [%fp+-36]                       ! 4-byte Folded Spill
	mov	1, %i0
	cmp	%i1, 0
	be	.LBB130_6
	st %i0, [%fp+-32]
! %bb.5:                                !   in Loop: Header=BB130_1 Depth=1
	ld [%fp+-36], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-32]                       ! 4-byte Folded Spill
.LBB130_6:                              !   in Loop: Header=BB130_1 Depth=1
	ld [%fp+-40], %i1                       ! 4-byte Folded Reload
	ld [%fp+-32], %i0                       ! 4-byte Folded Reload
	st %i0, [%fp+-44]                       ! 4-byte Folded Spill
	cmp	%i1, 0
	bne	.LBB130_8
	st %i0, [%fp+-28]
	ba .LBB130_7
	nop
.LBB130_7:                              !   in Loop: Header=BB130_1 Depth=1
	ld [%fp+-44], %i0                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.130), %i1
	add %i1, %lo(__llvm_gcov_ctr.130), %i1
	ldd [%i1+16], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+16]
	sethi %hi(.L__profc___udivmodsi4_libgcc), %i1
	add %i1, %lo(.L__profc___udivmodsi4_libgcc), %i1
	ldd [%i1+24], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+24]
	ba .LBB130_8
	st %i0, [%fp+-28]
.LBB130_8:                              !   in Loop: Header=BB130_1 Depth=1
	ld [%fp+-28], %i0                       ! 4-byte Folded Reload
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB130_10
	nop
	ba .LBB130_9
	nop
.LBB130_9:                              !   in Loop: Header=BB130_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.130), %i0
	add %i0, %lo(__llvm_gcov_ctr.130), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %lo(.L__profc___udivmodsi4_libgcc), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ld [%fp+-12], %i0
	sll %i0, 1, %i0
	st %i0, [%fp+-12]
	ld [%fp+-20], %i0
	sll %i0, 1, %i0
	ba .LBB130_1
	st %i0, [%fp+-20]
.LBB130_10:
	ba .LBB130_11
	nop
.LBB130_11:                             ! =>This Inner Loop Header: Depth=1
	ld [%fp+-20], %i0
	cmp	%i0, 0
	be	.LBB130_15
	nop
	ba .LBB130_12
	nop
.LBB130_12:                             !   in Loop: Header=BB130_11 Depth=1
	sethi %hi(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %lo(.L__profc___udivmodsi4_libgcc), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	ld [%fp+-8], %i0
	ld [%fp+-12], %i1
	cmp	%i0, %i1
	bcs	.LBB130_14
	nop
	ba .LBB130_13
	nop
.LBB130_13:                             !   in Loop: Header=BB130_11 Depth=1
	sethi %hi(__llvm_gcov_ctr.130), %i0
	add %i0, %lo(__llvm_gcov_ctr.130), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	sethi %hi(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %lo(.L__profc___udivmodsi4_libgcc), %i0
	ldd [%i0+56], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+56]
	ld [%fp+-12], %i1
	ld [%fp+-8], %i0
	sub %i0, %i1, %i0
	st %i0, [%fp+-8]
	ld [%fp+-20], %i1
	ld [%fp+-24], %i0
	or %i0, %i1, %i0
	ba .LBB130_14
	st %i0, [%fp+-24]
.LBB130_14:                             !   in Loop: Header=BB130_11 Depth=1
	sethi %hi(__llvm_gcov_ctr.130), %i0
	add %i0, %lo(__llvm_gcov_ctr.130), %i0
	ldd [%i0+40], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+40]
	ld [%fp+-20], %i0
	srl %i0, 1, %i0
	st %i0, [%fp+-20]
	ld [%fp+-12], %i0
	srl %i0, 1, %i0
	ba .LBB130_11
	st %i0, [%fp+-12]
.LBB130_15:
	ld [%fp+-16], %i0
	cmp	%i0, 0
	be	.LBB130_17
	nop
	ba .LBB130_16
	nop
.LBB130_16:
	sethi %hi(__llvm_gcov_ctr.130), %i0
	add %i0, %lo(__llvm_gcov_ctr.130), %i0
	ldd [%i0+48], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+48]
	sethi %hi(.L__profc___udivmodsi4_libgcc), %i0
	add %i0, %lo(.L__profc___udivmodsi4_libgcc), %i0
	ldd [%i0+64], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+64]
	ld [%fp+-8], %i0
	ba .LBB130_18
	st %i0, [%fp+-4]
.LBB130_17:
	sethi %hi(__llvm_gcov_ctr.130), %i0
	add %i0, %lo(__llvm_gcov_ctr.130), %i0
	ldd [%i0+56], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+56]
	ld [%fp+-24], %i0
	ba .LBB130_18
	st %i0, [%fp+-4]
.LBB130_18:
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
	sethi %hi(.L__profc___ashldi3), %i0
	ldd [%i0+%lo(.L__profc___ashldi3)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___ashldi3)]
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
	sethi %hi(__llvm_gcov_ctr.131), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.131)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.131)]
	sethi %hi(.L__profc___ashldi3), %i0
	add %i0, %lo(.L__profc___ashldi3), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.131), %i0
	add %i0, %lo(__llvm_gcov_ctr.131), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___ashldi3), %i0
	add %i0, %lo(.L__profc___ashldi3), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ldd [%fp+-16], %i0
	ba .LBB131_6
	std %i0, [%fp+-8]
.LBB131_4:
	sethi %hi(__llvm_gcov_ctr.131), %i0
	add %i0, %lo(__llvm_gcov_ctr.131), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(.L__profc___ashrdi3), %i0
	ldd [%i0+%lo(.L__profc___ashrdi3)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___ashrdi3)]
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
	sethi %hi(__llvm_gcov_ctr.132), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.132)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.132)]
	sethi %hi(.L__profc___ashrdi3), %i0
	add %i0, %lo(.L__profc___ashrdi3), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.132), %i0
	add %i0, %lo(__llvm_gcov_ctr.132), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___ashrdi3), %i0
	add %i0, %lo(.L__profc___ashrdi3), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ldd [%fp+-16], %i0
	ba .LBB132_6
	std %i0, [%fp+-8]
.LBB132_4:
	sethi %hi(__llvm_gcov_ctr.132), %i0
	add %i0, %lo(__llvm_gcov_ctr.132), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.133), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.133)], %g2
	mov	%g2, %i4
	mov	%g3, %i1
	addcc %i4, 1, %g2
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i1, %i5
	std %i4, [%i0+%lo(__llvm_gcov_ctr.133)]
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	sethi %hi(.L__profc___bswapdi2), %i0
	ldd [%i0+%lo(.L__profc___bswapdi2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___bswapdi2)]
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
	sethi %hi(__llvm_gcov_ctr.134), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.134)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.134)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc___bswapsi2), %i0
	ldd [%i0+%lo(.L__profc___bswapsi2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___bswapsi2)]
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
	sethi %hi(__llvm_gcov_ctr.135), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.135)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.135)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc___clzsi2), %i0
	ldd [%i0+%lo(.L__profc___clzsi2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___clzsi2)]
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
	sethi %hi(.L__profc___cmpdi2), %i0
	ldd [%i0+%lo(.L__profc___cmpdi2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___cmpdi2)]
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
	sethi %hi(__llvm_gcov_ctr.136), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.136)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.136)]
	sethi %hi(.L__profc___cmpdi2), %i0
	add %i0, %lo(.L__profc___cmpdi2), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.136), %i0
	add %i0, %lo(__llvm_gcov_ctr.136), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___cmpdi2), %i0
	add %i0, %lo(.L__profc___cmpdi2), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.136), %i0
	add %i0, %lo(__llvm_gcov_ctr.136), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc___cmpdi2), %i0
	add %i0, %lo(.L__profc___cmpdi2), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	sethi %hi(__llvm_gcov_ctr.136), %i0
	add %i0, %lo(__llvm_gcov_ctr.136), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc___cmpdi2), %i0
	add %i0, %lo(.L__profc___cmpdi2), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	mov	2, %i0
	ba .LBB136_9
	st %i0, [%fp+-4]
.LBB136_8:
	sethi %hi(__llvm_gcov_ctr.136), %i0
	add %i0, %lo(__llvm_gcov_ctr.136), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
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
	sethi %hi(__llvm_gcov_ctr.137), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.137)], %l0
	mov	%l0, %g2
	mov	%l1, %i1
	addcc %g2, 1, %g4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $g2_g3
	mov	%g4, %g2
	mov	%i1, %g3
	std %g2, [%i0+%lo(__llvm_gcov_ctr.137)]
                                        ! implicit-def: $i0_i1
	mov	%i5, %i0
	mov	%i4, %i1
	std %i0, [%fp+-8]
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%i3, %i1
	std %i0, [%fp+-16]
	sethi %hi(.L__profc___aeabi_lcmp), %i0
	ldd [%i0+%lo(.L__profc___aeabi_lcmp)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___aeabi_lcmp)]
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
	sethi %hi(__llvm_gcov_ctr.138), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.138)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.138)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc___ctzsi2), %i0
	ldd [%i0+%lo(.L__profc___ctzsi2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___ctzsi2)]
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
	sethi %hi(.L__profc___lshrdi3), %i0
	ldd [%i0+%lo(.L__profc___lshrdi3)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___lshrdi3)]
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
	sethi %hi(__llvm_gcov_ctr.139), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.139)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.139)]
	sethi %hi(.L__profc___lshrdi3), %i0
	add %i0, %lo(.L__profc___lshrdi3), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.139), %i0
	add %i0, %lo(__llvm_gcov_ctr.139), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___lshrdi3), %i0
	add %i0, %lo(.L__profc___lshrdi3), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	ldd [%fp+-16], %i0
	ba .LBB139_6
	std %i0, [%fp+-8]
.LBB139_4:
	sethi %hi(__llvm_gcov_ctr.139), %i0
	add %i0, %lo(__llvm_gcov_ctr.139), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.140), %i2
	ldd [%i2+%lo(__llvm_gcov_ctr.140)], %g2
	mov	%g2, %i4
	mov	%g3, %i3
	addcc %i4, 1, %g2
	addxcc %i3, 0, %i3
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i3, %i5
	std %i4, [%i2+%lo(__llvm_gcov_ctr.140)]
	st %i0, [%fp+-4]
	st %i1, [%fp+-8]
	sethi %hi(.L__profc___muldsi3), %i0
	ldd [%i0+%lo(.L__profc___muldsi3)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___muldsi3)]
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
	sethi %hi(__llvm_gcov_ctr.141), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.141)], %l0
	mov	%l0, %g2
	mov	%l1, %i1
	addcc %g2, 1, %g4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $g2_g3
	mov	%g4, %g2
	mov	%i1, %g3
	std %g2, [%i0+%lo(__llvm_gcov_ctr.141)]
                                        ! implicit-def: $i0_i1
	mov	%i5, %i0
	mov	%i4, %i1
	std %i0, [%fp+-8]
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%i3, %i1
	std %i0, [%fp+-16]
	sethi %hi(.L__profc___muldi3_compiler_rt), %i0
	ldd [%i0+%lo(.L__profc___muldi3_compiler_rt)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___muldi3_compiler_rt)]
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
	sethi %hi(__llvm_gcov_ctr.142), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.142)], %g2
	mov	%g2, %i4
	mov	%g3, %i1
	addcc %i4, 1, %g2
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i1, %i5
	std %i4, [%i0+%lo(__llvm_gcov_ctr.142)]
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	sethi %hi(.L__profc___negdi2), %i0
	ldd [%i0+%lo(.L__profc___negdi2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___negdi2)]
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
	sethi %hi(__llvm_gcov_ctr.143), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.143)], %g2
	mov	%g2, %i4
	mov	%g3, %i1
	addcc %i4, 1, %g2
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i1, %i5
	std %i4, [%i0+%lo(__llvm_gcov_ctr.143)]
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	sethi %hi(.L__profc___paritydi2), %i0
	ldd [%i0+%lo(.L__profc___paritydi2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___paritydi2)]
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
	sethi %hi(__llvm_gcov_ctr.144), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.144)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.144)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc___paritysi2), %i0
	ldd [%i0+%lo(.L__profc___paritysi2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___paritysi2)]
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
	sethi %hi(__llvm_gcov_ctr.145), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.145)], %g2
	mov	%g2, %i4
	mov	%g3, %i1
	addcc %i4, 1, %g2
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i4_i5
	mov	%g2, %i4
	mov	%i1, %i5
	std %i4, [%i0+%lo(__llvm_gcov_ctr.145)]
                                        ! implicit-def: $i0_i1
	mov	%i3, %i0
	mov	%i2, %i1
	std %i0, [%fp+-8]
	sethi %hi(.L__profc___popcountdi2), %i0
	ldd [%i0+%lo(.L__profc___popcountdi2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___popcountdi2)]
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
	sethi %hi(__llvm_gcov_ctr.146), %i1
	ldd [%i1+%lo(__llvm_gcov_ctr.146)], %i4
	mov	%i4, %i3
	mov	%i5, %i2
	addcc %i3, 1, %i5
	addxcc %i2, 0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i5, %i2
	mov	%i4, %i3
	std %i2, [%i1+%lo(__llvm_gcov_ctr.146)]
	st %i0, [%fp+-4]
	sethi %hi(.L__profc___popcountsi2), %i0
	ldd [%i0+%lo(.L__profc___popcountsi2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___popcountsi2)]
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
	sethi %hi(.L__profc___powidf2), %i0
	ldd [%i0+%lo(.L__profc___powidf2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___powidf2)]
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
	sethi %hi(.L__profc___powidf2), %i0
	add %i0, %lo(.L__profc___powidf2), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ldub [%fp+-12], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB147_3
	nop
	ba .LBB147_2
	nop
.LBB147_2:                              !   in Loop: Header=BB147_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.147), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.147)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.147)]
	sethi %hi(.L__profc___powidf2), %i0
	add %i0, %lo(.L__profc___powidf2), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(.L__profc___powidf2), %i0
	add %i0, %lo(.L__profc___powidf2), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB147_6
	std %i2, [%i0+24]
.LBB147_5:                              !   in Loop: Header=BB147_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.147), %i0
	add %i0, %lo(__llvm_gcov_ctr.147), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.147), %i0
	add %i0, %lo(__llvm_gcov_ctr.147), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc___powidf2), %i0
	add %i0, %lo(.L__profc___powidf2), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
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
	sethi %hi(__llvm_gcov_ctr.147), %i0
	add %i0, %lo(__llvm_gcov_ctr.147), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	sethi %hi(.L__profc___powisf2), %i0
	ldd [%i0+%lo(.L__profc___powisf2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___powisf2)]
	ld [%fp+-8], %i0
	srl %i0, 31, %i0
	st %i0, [%fp+-12]
	sethi 1040384, %i0
	ba .LBB148_1
	st %i0, [%fp+-16]
.LBB148_1:                              ! =>This Inner Loop Header: Depth=1
	sethi %hi(.L__profc___powisf2), %i0
	add %i0, %lo(.L__profc___powisf2), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	ldub [%fp+-8], %i0
	and %i0, 1, %i0
	cmp	%i0, 0
	be	.LBB148_3
	nop
	ba .LBB148_2
	nop
.LBB148_2:                              !   in Loop: Header=BB148_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.148), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.148)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.148)]
	sethi %hi(.L__profc___powisf2), %i0
	add %i0, %lo(.L__profc___powisf2), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(.L__profc___powisf2), %i0
	add %i0, %lo(.L__profc___powisf2), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	ba .LBB148_6
	std %i2, [%i0+24]
.LBB148_5:                              !   in Loop: Header=BB148_1 Depth=1
	sethi %hi(__llvm_gcov_ctr.148), %i0
	add %i0, %lo(__llvm_gcov_ctr.148), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.148), %i0
	add %i0, %lo(__llvm_gcov_ctr.148), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc___powisf2), %i0
	add %i0, %lo(.L__profc___powisf2), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	ld [%fp+-16], %o1
	call __divsf3
	sethi 1040384, %o0
	ba .LBB148_9
	st %o0, [%fp+-20]
.LBB148_8:
	sethi %hi(__llvm_gcov_ctr.148), %i0
	add %i0, %lo(__llvm_gcov_ctr.148), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	sethi %hi(.L__profc___ucmpdi2), %i0
	ldd [%i0+%lo(.L__profc___ucmpdi2)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___ucmpdi2)]
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
	sethi %hi(__llvm_gcov_ctr.149), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.149)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.149)]
	sethi %hi(.L__profc___ucmpdi2), %i0
	add %i0, %lo(.L__profc___ucmpdi2), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
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
	sethi %hi(__llvm_gcov_ctr.149), %i0
	add %i0, %lo(__llvm_gcov_ctr.149), %i0
	ldd [%i0+8], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+8]
	sethi %hi(.L__profc___ucmpdi2), %i0
	add %i0, %lo(.L__profc___ucmpdi2), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
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
	sethi %hi(__llvm_gcov_ctr.149), %i0
	add %i0, %lo(__llvm_gcov_ctr.149), %i0
	ldd [%i0+16], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+16]
	sethi %hi(.L__profc___ucmpdi2), %i0
	add %i0, %lo(.L__profc___ucmpdi2), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
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
	sethi %hi(__llvm_gcov_ctr.149), %i0
	add %i0, %lo(__llvm_gcov_ctr.149), %i0
	ldd [%i0+24], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+24]
	sethi %hi(.L__profc___ucmpdi2), %i0
	add %i0, %lo(.L__profc___ucmpdi2), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
	mov	2, %i0
	ba .LBB149_9
	st %i0, [%fp+-4]
.LBB149_8:
	sethi %hi(__llvm_gcov_ctr.149), %i0
	add %i0, %lo(__llvm_gcov_ctr.149), %i0
	ldd [%i0+32], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+32]
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
	sethi %hi(__llvm_gcov_ctr.150), %i0
	ldd [%i0+%lo(__llvm_gcov_ctr.150)], %l0
	mov	%l0, %g2
	mov	%l1, %i1
	addcc %g2, 1, %g4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $g2_g3
	mov	%g4, %g2
	mov	%i1, %g3
	std %g2, [%i0+%lo(__llvm_gcov_ctr.150)]
                                        ! implicit-def: $i0_i1
	mov	%i5, %i0
	mov	%i4, %i1
	std %i0, [%fp+-8]
                                        ! implicit-def: $i0_i1
	mov	%i2, %i0
	mov	%i3, %i1
	std %i0, [%fp+-16]
	sethi %hi(.L__profc___aeabi_ulcmp), %i0
	ldd [%i0+%lo(.L__profc___aeabi_ulcmp)], %i4
	mov	%i4, %i2
	mov	%i5, %i1
	addcc %i2, 1, %i4
	addxcc %i1, 0, %i1
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(.L__profc___aeabi_ulcmp)]
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
	.p2align	2                               ! -- Begin function __llvm_gcov_writeout
	.type	__llvm_gcov_writeout,@function
__llvm_gcov_writeout:                   ! @__llvm_gcov_writeout
! %bb.0:
	save %sp, -120, %sp
	mov	%g0, %i0
	st %i0, [%fp+-4]                        ! 4-byte Folded Spill
.LBB151_1:                              ! =>This Loop Header: Depth=1
                                        !     Child Loop BB151_2 Depth 2
	ld [%fp+-4], %i0                        ! 4-byte Folded Reload
	st %i0, [%fp+-24]                       ! 4-byte Folded Spill
	smul %i0, 24, %i2
	sethi %hi(__llvm_internal_gcov_emit_file_info), %i0
	add %i0, %lo(__llvm_internal_gcov_emit_file_info), %i1
	add %i1, %i2, %i0
	ld [%i1+%i2], %o0
	ld [%i0+4], %o1
	call llvm_gcda_start_file
	ld [%i0+8], %o2
	ld [%i0+12], %i1
	st %i1, [%fp+-20]                       ! 4-byte Folded Spill
	ld [%i0+16], %i2
	st %i2, [%fp+-16]                       ! 4-byte Folded Spill
	ld [%i0+20], %i0
	st %i0, [%fp+-12]                       ! 4-byte Folded Spill
	mov	%g0, %i0
	cmp	%i1, 1
	bl	.LBB151_3
	st %i0, [%fp+-8]
	ba .LBB151_2
	nop
.LBB151_2:                              !   Parent Loop BB151_1 Depth=1
                                        ! =>  This Inner Loop Header: Depth=2
	ld [%fp+-8], %i0                        ! 4-byte Folded Reload
	ld [%fp+-20], %i1                       ! 4-byte Folded Reload
	ld [%fp+-12], %i3                       ! 4-byte Folded Reload
	ld [%fp+-16], %i4                       ! 4-byte Folded Reload
	smul %i0, 12, %i5
	add %i4, %i5, %i2
	ld [%i4+%i5], %o0
	ld [%i2+4], %o1
	call llvm_gcda_emit_function
	ld [%i2+8], %o2
	sll %i0, 3, %i4
	add %i3, %i4, %i2
	ld [%i3+%i4], %o0
	call llvm_gcda_emit_arcs
	ld [%i2+4], %o1
	add %i0, 1, %i0
	cmp	%i0, %i1
	bl	.LBB151_2
	st %i0, [%fp+-8]
	ba .LBB151_3
	nop
.LBB151_3:                              !   in Loop: Header=BB151_1 Depth=1
	call llvm_gcda_summary_info
	ld [%fp+-24], %i0
	call llvm_gcda_end_file
	nop
	add %i0, 1, %i0
	cmp	%i0, 1
	bl	.LBB151_1
	st %i0, [%fp+-4]
	ba .LBB151_4
	nop
.LBB151_4:
	ret
	restore
.Lfunc_end151:
	.size	__llvm_gcov_writeout, .Lfunc_end151-__llvm_gcov_writeout
                                        ! -- End function
	.p2align	2                               ! -- Begin function __llvm_gcov_reset
	.type	__llvm_gcov_reset,@function
__llvm_gcov_reset:                      ! @__llvm_gcov_reset
! %bb.0:
	save %sp, -120, %sp
	sethi %hi(__llvm_gcov_ctr), %i0
	add %i0, %lo(__llvm_gcov_ctr), %o0
	mov	%g0, %i1
	mov	40, %o2
	st %o2, [%fp+-4]                        ! 4-byte Folded Spill
	call memset
	mov	%i1, %o1
	ld [%fp+-4], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.1), %i0
	add %i0, %lo(__llvm_gcov_ctr.1), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-4], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.2), %i0
	add %i0, %lo(__llvm_gcov_ctr.2), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-4], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.3), %i0
	add %i0, %lo(__llvm_gcov_ctr.3), %o0
	call memset
	mov	%i1, %o1
	sethi %hi(__llvm_gcov_ctr.4), %i0
	add %i0, %lo(__llvm_gcov_ctr.4), %o0
	mov	16, %o2
	st %o2, [%fp+-24]                       ! 4-byte Folded Spill
	call memset
	mov	%i1, %o1
	sethi %hi(__llvm_gcov_ctr.5), %i0
	add %i0, %lo(__llvm_gcov_ctr.5), %o0
	mov	24, %o2
	st %o2, [%fp+-12]                       ! 4-byte Folded Spill
	call memset
	mov	%i1, %o1
	ld [%fp+-24], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.6), %i0
	add %i0, %lo(__llvm_gcov_ctr.6), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-24], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.7), %i0
	add %i0, %lo(__llvm_gcov_ctr.7), %o0
	call memset
	mov	%i1, %o1
	sethi %hi(__llvm_gcov_ctr.8), %i0
	add %i0, %lo(__llvm_gcov_ctr.8), %o0
	mov	32, %o2
	st %o2, [%fp+-8]                        ! 4-byte Folded Spill
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.9), %i0
	add %i0, %lo(__llvm_gcov_ctr.9), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-8], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.10), %i0
	add %i0, %lo(__llvm_gcov_ctr.10), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-24], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.11), %i0
	add %i0, %lo(__llvm_gcov_ctr.11), %o0
	call memset
	mov	%i1, %o1
	sethi %hi(__llvm_gcov_ctr.12), %i0
	add %i0, %lo(__llvm_gcov_ctr.12), %o0
	mov	56, %o2
	st %o2, [%fp+-20]                       ! 4-byte Folded Spill
	call memset
	mov	%i1, %o1
	ld [%fp+-24], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.13), %i0
	add %i0, %lo(__llvm_gcov_ctr.13), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.14), %i0
	mov	%g0, %i4
                                        ! implicit-def: $i2_i3
	mov	%i4, %i2
	mov	%i1, %i3
	std %i2, [%i0+%lo(__llvm_gcov_ctr.14)]
	sethi %hi(__llvm_gcov_ctr.15), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.15)]
	sethi %hi(__llvm_gcov_ctr.16), %i0
	add %i0, %lo(__llvm_gcov_ctr.16), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.17), %i0
	add %i0, %lo(__llvm_gcov_ctr.17), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.18), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.18)]
	sethi %hi(__llvm_gcov_ctr.19), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.19)]
	sethi %hi(__llvm_gcov_ctr.20), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.20)]
	sethi %hi(__llvm_gcov_ctr.21), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.21)]
	sethi %hi(__llvm_gcov_ctr.22), %i0
	add %i0, %lo(__llvm_gcov_ctr.22), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-4], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.23), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.23)]
	sethi %hi(__llvm_gcov_ctr.24), %i0
	add %i0, %lo(__llvm_gcov_ctr.24), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-20], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.25), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.25)]
	sethi %hi(__llvm_gcov_ctr.26), %i0
	add %i0, %lo(__llvm_gcov_ctr.26), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.27), %i0
	add %i0, %lo(__llvm_gcov_ctr.27), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-8], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.28), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.28)]
	sethi %hi(__llvm_gcov_ctr.29), %i0
	add %i0, %lo(__llvm_gcov_ctr.29), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-8], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.30), %i0
	add %i0, %lo(__llvm_gcov_ctr.30), %o0
	call memset
	mov	%i1, %o1
	sethi %hi(__llvm_gcov_ctr.31), %i0
	add %i0, %lo(__llvm_gcov_ctr.31), %o0
	mov	48, %o2
	st %o2, [%fp+-28]                       ! 4-byte Folded Spill
	call memset
	mov	%i1, %o1
	ld [%fp+-28], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.32), %i0
	add %i0, %lo(__llvm_gcov_ctr.32), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-28], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.33), %i0
	add %i0, %lo(__llvm_gcov_ctr.33), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-28], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.34), %i0
	add %i0, %lo(__llvm_gcov_ctr.34), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-28], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.35), %i0
	add %i0, %lo(__llvm_gcov_ctr.35), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-28], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.36), %i0
	add %i0, %lo(__llvm_gcov_ctr.36), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-24], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.37), %i0
	add %i0, %lo(__llvm_gcov_ctr.37), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.38), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.38)]
	sethi %hi(__llvm_gcov_ctr.39), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.39)]
	sethi %hi(__llvm_gcov_ctr.40), %i0
	add %i0, %lo(__llvm_gcov_ctr.40), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.41), %i0
	add %i0, %lo(__llvm_gcov_ctr.41), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.42), %i0
	add %i0, %lo(__llvm_gcov_ctr.42), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.43), %i0
	add %i0, %lo(__llvm_gcov_ctr.43), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-24], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.44), %i0
	add %i0, %lo(__llvm_gcov_ctr.44), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-28], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.45), %i0
	add %i0, %lo(__llvm_gcov_ctr.45), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-28], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.46), %i0
	add %i0, %lo(__llvm_gcov_ctr.46), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-28], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.47), %i0
	add %i0, %lo(__llvm_gcov_ctr.47), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-8], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.48), %i0
	add %i0, %lo(__llvm_gcov_ctr.48), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-8], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.49), %i0
	add %i0, %lo(__llvm_gcov_ctr.49), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-24], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.50), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.50)]
	sethi %hi(__llvm_gcov_ctr.51), %i0
	add %i0, %lo(__llvm_gcov_ctr.51), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-24], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.52), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.52)]
	sethi %hi(__llvm_gcov_ctr.53), %i0
	add %i0, %lo(__llvm_gcov_ctr.53), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-24], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.54), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.54)]
	sethi %hi(__llvm_gcov_ctr.55), %i0
	add %i0, %lo(__llvm_gcov_ctr.55), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-4], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.56), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.56)]
	sethi %hi(__llvm_gcov_ctr.57), %i0
	add %i0, %lo(__llvm_gcov_ctr.57), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-28], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.58), %i0
	add %i0, %lo(__llvm_gcov_ctr.58), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-24], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.59), %i0
	add %i0, %lo(__llvm_gcov_ctr.59), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-24], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.60), %i0
	add %i0, %lo(__llvm_gcov_ctr.60), %o0
	call memset
	mov	%i1, %o1
	sethi %hi(__llvm_gcov_ctr.61), %i0
	add %i0, %lo(__llvm_gcov_ctr.61), %o0
	mov	64, %o2
	st %o2, [%fp+-16]                       ! 4-byte Folded Spill
	call memset
	mov	%i1, %o1
	ld [%fp+-4], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.62), %i0
	add %i0, %lo(__llvm_gcov_ctr.62), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-28], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.63), %i0
	add %i0, %lo(__llvm_gcov_ctr.63), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-24], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.64), %i0
	add %i0, %lo(__llvm_gcov_ctr.64), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-4], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.65), %i0
	add %i0, %lo(__llvm_gcov_ctr.65), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-24], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.66), %i0
	add %i0, %lo(__llvm_gcov_ctr.66), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-4], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.67), %i0
	add %i0, %lo(__llvm_gcov_ctr.67), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.68), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.68)]
	sethi %hi(__llvm_gcov_ctr.69), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.69)]
	sethi %hi(__llvm_gcov_ctr.70), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.70)]
	sethi %hi(__llvm_gcov_ctr.71), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.71)]
	sethi %hi(__llvm_gcov_ctr.72), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.72)]
	sethi %hi(__llvm_gcov_ctr.73), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.73)]
	sethi %hi(__llvm_gcov_ctr.74), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.74)]
	sethi %hi(__llvm_gcov_ctr.75), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.75)]
	sethi %hi(__llvm_gcov_ctr.76), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.76)]
	sethi %hi(__llvm_gcov_ctr.77), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.77)]
	sethi %hi(__llvm_gcov_ctr.78), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.78)]
	sethi %hi(__llvm_gcov_ctr.79), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.79)]
	sethi %hi(__llvm_gcov_ctr.80), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.80)]
	sethi %hi(__llvm_gcov_ctr.81), %i0
	add %i0, %lo(__llvm_gcov_ctr.81), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.82), %i0
	add %i0, %lo(__llvm_gcov_ctr.82), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.83), %i0
	add %i0, %lo(__llvm_gcov_ctr.83), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.84), %i0
	add %i0, %lo(__llvm_gcov_ctr.84), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.85), %i0
	add %i0, %lo(__llvm_gcov_ctr.85), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-4], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.86), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.86)]
	sethi %hi(__llvm_gcov_ctr.87), %i0
	add %i0, %lo(__llvm_gcov_ctr.87), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-4], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.88), %i0
	add %i0, %lo(__llvm_gcov_ctr.88), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-4], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.89), %i0
	add %i0, %lo(__llvm_gcov_ctr.89), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-24], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.90), %i0
	add %i0, %lo(__llvm_gcov_ctr.90), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-4], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.91), %i0
	add %i0, %lo(__llvm_gcov_ctr.91), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-8], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.92), %i0
	add %i0, %lo(__llvm_gcov_ctr.92), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-8], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.93), %i0
	add %i0, %lo(__llvm_gcov_ctr.93), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.94), %i0
	add %i0, %lo(__llvm_gcov_ctr.94), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-8], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.95), %i0
	add %i0, %lo(__llvm_gcov_ctr.95), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-4], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.96), %i0
	add %i0, %lo(__llvm_gcov_ctr.96), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-28], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.97), %i0
	add %i0, %lo(__llvm_gcov_ctr.97), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-16], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.98), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.98)]
	sethi %hi(__llvm_gcov_ctr.99), %i0
	add %i0, %lo(__llvm_gcov_ctr.99), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.100), %i0
	add %i0, %lo(__llvm_gcov_ctr.100), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-16], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.101), %i0
	add %i0, %lo(__llvm_gcov_ctr.101), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.102), %i0
	add %i0, %lo(__llvm_gcov_ctr.102), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.103), %i0
	add %i0, %lo(__llvm_gcov_ctr.103), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.104), %i0
	add %i0, %lo(__llvm_gcov_ctr.104), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-28], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.105), %i0
	add %i0, %lo(__llvm_gcov_ctr.105), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-28], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.106), %i0
	add %i0, %lo(__llvm_gcov_ctr.106), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-28], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.107), %i0
	add %i0, %lo(__llvm_gcov_ctr.107), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.108), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.108)]
	sethi %hi(__llvm_gcov_ctr.109), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.109)]
	sethi %hi(__llvm_gcov_ctr.110), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.110)]
	sethi %hi(__llvm_gcov_ctr.111), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.111)]
	sethi %hi(__llvm_gcov_ctr.112), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.112)]
	sethi %hi(__llvm_gcov_ctr.113), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.113)]
	sethi %hi(__llvm_gcov_ctr.114), %i0
	add %i0, %lo(__llvm_gcov_ctr.114), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.115), %i0
	add %i0, %lo(__llvm_gcov_ctr.115), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-24], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.116), %i0
	add %i0, %lo(__llvm_gcov_ctr.116), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.117), %i0
	add %i0, %lo(__llvm_gcov_ctr.117), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.118), %i0
	add %i0, %lo(__llvm_gcov_ctr.118), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.119), %i0
	add %i0, %lo(__llvm_gcov_ctr.119), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-8], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.120), %i0
	add %i0, %lo(__llvm_gcov_ctr.120), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-16], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.121), %i0
	add %i0, %lo(__llvm_gcov_ctr.121), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.122), %i0
	add %i0, %lo(__llvm_gcov_ctr.122), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.123), %i0
	add %i0, %lo(__llvm_gcov_ctr.123), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-20], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.124), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.124)]
	sethi %hi(__llvm_gcov_ctr.125), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.125)]
	sethi %hi(__llvm_gcov_ctr.126), %i0
	add %i0, %lo(__llvm_gcov_ctr.126), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-8], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.127), %i0
	add %i0, %lo(__llvm_gcov_ctr.127), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-8], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.128), %i0
	add %i0, %lo(__llvm_gcov_ctr.128), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-16], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.129), %i0
	add %i0, %lo(__llvm_gcov_ctr.129), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-16], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.130), %i0
	add %i0, %lo(__llvm_gcov_ctr.130), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.131), %i0
	add %i0, %lo(__llvm_gcov_ctr.131), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.132), %i0
	add %i0, %lo(__llvm_gcov_ctr.132), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-4], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.133), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.133)]
	sethi %hi(__llvm_gcov_ctr.134), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.134)]
	sethi %hi(__llvm_gcov_ctr.135), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.135)]
	sethi %hi(__llvm_gcov_ctr.136), %i0
	add %i0, %lo(__llvm_gcov_ctr.136), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-12], %o2                       ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.137), %i0
	stb %i1, [%i0+%lo(__llvm_gcov_ctr.137)]
	add %i0, %lo(__llvm_gcov_ctr.137), %i0
	stb %i1, [%i0+1]
	stb %i1, [%i0+2]
	stb %i1, [%i0+3]
	stb %i1, [%i0+4]
	stb %i1, [%i0+5]
	stb %i1, [%i0+6]
	stb %i1, [%i0+7]
	sethi %hi(__llvm_gcov_ctr.138), %i0
	stb %i1, [%i0+%lo(__llvm_gcov_ctr.138)]
	add %i0, %lo(__llvm_gcov_ctr.138), %i0
	stb %i1, [%i0+1]
	stb %i1, [%i0+2]
	stb %i1, [%i0+3]
	stb %i1, [%i0+4]
	stb %i1, [%i0+5]
	stb %i1, [%i0+6]
	stb %i1, [%i0+7]
	sethi %hi(__llvm_gcov_ctr.139), %i0
	add %i0, %lo(__llvm_gcov_ctr.139), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-8], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.140), %i0
	stb %i1, [%i0+%lo(__llvm_gcov_ctr.140)]
	add %i0, %lo(__llvm_gcov_ctr.140), %i0
	stb %i1, [%i0+1]
	stb %i1, [%i0+2]
	stb %i1, [%i0+3]
	stb %i1, [%i0+4]
	stb %i1, [%i0+5]
	stb %i1, [%i0+6]
	stb %i1, [%i0+7]
	sethi %hi(__llvm_gcov_ctr.141), %i0
	stb %i1, [%i0+%lo(__llvm_gcov_ctr.141)]
	add %i0, %lo(__llvm_gcov_ctr.141), %i0
	stb %i1, [%i0+1]
	stb %i1, [%i0+2]
	stb %i1, [%i0+3]
	stb %i1, [%i0+4]
	stb %i1, [%i0+5]
	stb %i1, [%i0+6]
	stb %i1, [%i0+7]
	sethi %hi(__llvm_gcov_ctr.142), %i0
	stb %i1, [%i0+%lo(__llvm_gcov_ctr.142)]
	add %i0, %lo(__llvm_gcov_ctr.142), %i0
	stb %i1, [%i0+1]
	stb %i1, [%i0+2]
	stb %i1, [%i0+3]
	stb %i1, [%i0+4]
	stb %i1, [%i0+5]
	stb %i1, [%i0+6]
	stb %i1, [%i0+7]
	sethi %hi(__llvm_gcov_ctr.143), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.143)]
	sethi %hi(__llvm_gcov_ctr.144), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.144)]
	sethi %hi(__llvm_gcov_ctr.145), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.145)]
	sethi %hi(__llvm_gcov_ctr.146), %i0
	std %i2, [%i0+%lo(__llvm_gcov_ctr.146)]
	sethi %hi(__llvm_gcov_ctr.147), %i0
	add %i0, %lo(__llvm_gcov_ctr.147), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-8], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.148), %i0
	add %i0, %lo(__llvm_gcov_ctr.148), %o0
	call memset
	mov	%i1, %o1
	ld [%fp+-4], %o2                        ! 4-byte Folded Reload
	sethi %hi(__llvm_gcov_ctr.149), %i0
	add %i0, %lo(__llvm_gcov_ctr.149), %o0
	call memset
	mov	%i1, %o1
	sethi %hi(__llvm_gcov_ctr.150), %i0
	stb %i1, [%i0+%lo(__llvm_gcov_ctr.150)]
	add %i0, %lo(__llvm_gcov_ctr.150), %i0
	stb %i1, [%i0+1]
	stb %i1, [%i0+2]
	stb %i1, [%i0+3]
	stb %i1, [%i0+4]
	stb %i1, [%i0+5]
	stb %i1, [%i0+6]
	stb %i1, [%i0+7]
	ret
	restore
.Lfunc_end152:
	.size	__llvm_gcov_reset, .Lfunc_end152-__llvm_gcov_reset
                                        ! -- End function
	.p2align	2                               ! -- Begin function __llvm_gcov_init
	.type	__llvm_gcov_init,@function
__llvm_gcov_init:                       ! @__llvm_gcov_init
! %bb.0:
	save %sp, -96, %sp
	sethi %hi(__llvm_gcov_writeout), %i0
	add %i0, %lo(__llvm_gcov_writeout), %o0
	sethi %hi(__llvm_gcov_reset), %i0
	call llvm_gcov_init
	add %i0, %lo(__llvm_gcov_reset), %o1
	ret
	restore
.Lfunc_end153:
	.size	__llvm_gcov_init, .Lfunc_end153-__llvm_gcov_init
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
	.type	__llvm_gcov_ctr,@object         ! @__llvm_gcov_ctr
	.local	__llvm_gcov_ctr
	.comm	__llvm_gcov_ctr,40,16
	.type	__llvm_gcov_ctr.1,@object       ! @__llvm_gcov_ctr.1
	.local	__llvm_gcov_ctr.1
	.comm	__llvm_gcov_ctr.1,40,16
	.type	__llvm_gcov_ctr.2,@object       ! @__llvm_gcov_ctr.2
	.local	__llvm_gcov_ctr.2
	.comm	__llvm_gcov_ctr.2,40,16
	.type	__llvm_gcov_ctr.3,@object       ! @__llvm_gcov_ctr.3
	.local	__llvm_gcov_ctr.3
	.comm	__llvm_gcov_ctr.3,40,16
	.type	__llvm_gcov_ctr.4,@object       ! @__llvm_gcov_ctr.4
	.local	__llvm_gcov_ctr.4
	.comm	__llvm_gcov_ctr.4,16,8
	.type	__llvm_gcov_ctr.5,@object       ! @__llvm_gcov_ctr.5
	.local	__llvm_gcov_ctr.5
	.comm	__llvm_gcov_ctr.5,24,16
	.type	__llvm_gcov_ctr.6,@object       ! @__llvm_gcov_ctr.6
	.local	__llvm_gcov_ctr.6
	.comm	__llvm_gcov_ctr.6,16,8
	.type	__llvm_gcov_ctr.7,@object       ! @__llvm_gcov_ctr.7
	.local	__llvm_gcov_ctr.7
	.comm	__llvm_gcov_ctr.7,16,8
	.type	__llvm_gcov_ctr.8,@object       ! @__llvm_gcov_ctr.8
	.local	__llvm_gcov_ctr.8
	.comm	__llvm_gcov_ctr.8,32,16
	.type	__llvm_gcov_ctr.9,@object       ! @__llvm_gcov_ctr.9
	.local	__llvm_gcov_ctr.9
	.comm	__llvm_gcov_ctr.9,24,16
	.type	__llvm_gcov_ctr.10,@object      ! @__llvm_gcov_ctr.10
	.local	__llvm_gcov_ctr.10
	.comm	__llvm_gcov_ctr.10,32,16
	.type	__llvm_gcov_ctr.11,@object      ! @__llvm_gcov_ctr.11
	.local	__llvm_gcov_ctr.11
	.comm	__llvm_gcov_ctr.11,16,8
	.type	__llvm_gcov_ctr.12,@object      ! @__llvm_gcov_ctr.12
	.local	__llvm_gcov_ctr.12
	.comm	__llvm_gcov_ctr.12,56,16
	.type	__llvm_gcov_ctr.13,@object      ! @__llvm_gcov_ctr.13
	.local	__llvm_gcov_ctr.13
	.comm	__llvm_gcov_ctr.13,16,8
	.type	__llvm_gcov_ctr.14,@object      ! @__llvm_gcov_ctr.14
	.local	__llvm_gcov_ctr.14
	.comm	__llvm_gcov_ctr.14,8,8
	.type	__llvm_gcov_ctr.15,@object      ! @__llvm_gcov_ctr.15
	.local	__llvm_gcov_ctr.15
	.comm	__llvm_gcov_ctr.15,8,8
	.type	__llvm_gcov_ctr.16,@object      ! @__llvm_gcov_ctr.16
	.local	__llvm_gcov_ctr.16
	.comm	__llvm_gcov_ctr.16,24,16
	.type	__llvm_gcov_ctr.17,@object      ! @__llvm_gcov_ctr.17
	.local	__llvm_gcov_ctr.17
	.comm	__llvm_gcov_ctr.17,24,16
	.type	__llvm_gcov_ctr.18,@object      ! @__llvm_gcov_ctr.18
	.local	__llvm_gcov_ctr.18
	.comm	__llvm_gcov_ctr.18,8,8
	.type	__llvm_gcov_ctr.19,@object      ! @__llvm_gcov_ctr.19
	.local	__llvm_gcov_ctr.19
	.comm	__llvm_gcov_ctr.19,8,8
	.type	__llvm_gcov_ctr.20,@object      ! @__llvm_gcov_ctr.20
	.local	__llvm_gcov_ctr.20
	.comm	__llvm_gcov_ctr.20,8,8
	.type	__llvm_gcov_ctr.21,@object      ! @__llvm_gcov_ctr.21
	.local	__llvm_gcov_ctr.21
	.comm	__llvm_gcov_ctr.21,8,8
	.type	__llvm_gcov_ctr.22,@object      ! @__llvm_gcov_ctr.22
	.local	__llvm_gcov_ctr.22
	.comm	__llvm_gcov_ctr.22,24,16
	.type	__llvm_gcov_ctr.23,@object      ! @__llvm_gcov_ctr.23
	.local	__llvm_gcov_ctr.23
	.comm	__llvm_gcov_ctr.23,8,8
	.type	__llvm_gcov_ctr.24,@object      ! @__llvm_gcov_ctr.24
	.local	__llvm_gcov_ctr.24
	.comm	__llvm_gcov_ctr.24,40,16
	.type	__llvm_gcov_ctr.25,@object      ! @__llvm_gcov_ctr.25
	.local	__llvm_gcov_ctr.25
	.comm	__llvm_gcov_ctr.25,8,8
	.type	__llvm_gcov_ctr.26,@object      ! @__llvm_gcov_ctr.26
	.local	__llvm_gcov_ctr.26
	.comm	__llvm_gcov_ctr.26,56,16
	.type	__llvm_gcov_ctr.27,@object      ! @__llvm_gcov_ctr.27
	.local	__llvm_gcov_ctr.27
	.comm	__llvm_gcov_ctr.27,24,16
	.type	__llvm_gcov_ctr.28,@object      ! @__llvm_gcov_ctr.28
	.local	__llvm_gcov_ctr.28
	.comm	__llvm_gcov_ctr.28,8,8
	.type	__llvm_gcov_ctr.29,@object      ! @__llvm_gcov_ctr.29
	.local	__llvm_gcov_ctr.29
	.comm	__llvm_gcov_ctr.29,32,16
	.type	__llvm_gcov_ctr.30,@object      ! @__llvm_gcov_ctr.30
	.local	__llvm_gcov_ctr.30
	.comm	__llvm_gcov_ctr.30,32,16
	.type	__llvm_gcov_ctr.31,@object      ! @__llvm_gcov_ctr.31
	.local	__llvm_gcov_ctr.31
	.comm	__llvm_gcov_ctr.31,48,16
	.type	__llvm_gcov_ctr.32,@object      ! @__llvm_gcov_ctr.32
	.local	__llvm_gcov_ctr.32
	.comm	__llvm_gcov_ctr.32,48,16
	.type	__llvm_gcov_ctr.33,@object      ! @__llvm_gcov_ctr.33
	.local	__llvm_gcov_ctr.33
	.comm	__llvm_gcov_ctr.33,48,16
	.type	__llvm_gcov_ctr.34,@object      ! @__llvm_gcov_ctr.34
	.local	__llvm_gcov_ctr.34
	.comm	__llvm_gcov_ctr.34,48,16
	.type	__llvm_gcov_ctr.35,@object      ! @__llvm_gcov_ctr.35
	.local	__llvm_gcov_ctr.35
	.comm	__llvm_gcov_ctr.35,48,16
	.type	__llvm_gcov_ctr.36,@object      ! @__llvm_gcov_ctr.36
	.local	__llvm_gcov_ctr.36
	.comm	__llvm_gcov_ctr.36,48,16
	.type	__llvm_gcov_ctr.37,@object      ! @__llvm_gcov_ctr.37
	.local	__llvm_gcov_ctr.37
	.comm	__llvm_gcov_ctr.37,16,8
	.type	__llvm_gcov_ctr.38,@object      ! @__llvm_gcov_ctr.38
	.local	__llvm_gcov_ctr.38
	.comm	__llvm_gcov_ctr.38,8,8
	.type	__llvm_gcov_ctr.39,@object      ! @__llvm_gcov_ctr.39
	.local	__llvm_gcov_ctr.39
	.comm	__llvm_gcov_ctr.39,8,8
	.type	__llvm_gcov_ctr.40,@object      ! @__llvm_gcov_ctr.40
	.local	__llvm_gcov_ctr.40
	.comm	__llvm_gcov_ctr.40,24,16
	.type	__llvm_gcov_ctr.41,@object      ! @__llvm_gcov_ctr.41
	.local	__llvm_gcov_ctr.41
	.comm	__llvm_gcov_ctr.41,24,16
	.type	__llvm_gcov_ctr.42,@object      ! @__llvm_gcov_ctr.42
	.local	__llvm_gcov_ctr.42
	.comm	__llvm_gcov_ctr.42,24,16
	.type	__llvm_gcov_ctr.43,@object      ! @__llvm_gcov_ctr.43
	.local	__llvm_gcov_ctr.43
	.comm	__llvm_gcov_ctr.43,24,16
	.type	__llvm_gcov_ctr.44,@object      ! @__llvm_gcov_ctr.44
	.local	__llvm_gcov_ctr.44
	.comm	__llvm_gcov_ctr.44,16,8
	.type	__llvm_gcov_ctr.45,@object      ! @__llvm_gcov_ctr.45
	.local	__llvm_gcov_ctr.45
	.comm	__llvm_gcov_ctr.45,48,16
	.type	__llvm_gcov_ctr.46,@object      ! @__llvm_gcov_ctr.46
	.local	__llvm_gcov_ctr.46
	.comm	__llvm_gcov_ctr.46,48,16
	.type	__llvm_gcov_ctr.47,@object      ! @__llvm_gcov_ctr.47
	.local	__llvm_gcov_ctr.47
	.comm	__llvm_gcov_ctr.47,48,16
	.type	__llvm_gcov_ctr.48,@object      ! @__llvm_gcov_ctr.48
	.local	__llvm_gcov_ctr.48
	.comm	__llvm_gcov_ctr.48,32,16
	.type	__llvm_gcov_ctr.49,@object      ! @__llvm_gcov_ctr.49
	.local	__llvm_gcov_ctr.49
	.comm	__llvm_gcov_ctr.49,32,16
	.type	__llvm_gcov_ctr.50,@object      ! @__llvm_gcov_ctr.50
	.local	__llvm_gcov_ctr.50
	.comm	__llvm_gcov_ctr.50,8,8
	.type	__llvm_gcov_ctr.51,@object      ! @__llvm_gcov_ctr.51
	.local	__llvm_gcov_ctr.51
	.comm	__llvm_gcov_ctr.51,16,8
	.type	__llvm_gcov_ctr.52,@object      ! @__llvm_gcov_ctr.52
	.local	__llvm_gcov_ctr.52
	.comm	__llvm_gcov_ctr.52,8,8
	.type	__llvm_gcov_ctr.53,@object      ! @__llvm_gcov_ctr.53
	.local	__llvm_gcov_ctr.53
	.comm	__llvm_gcov_ctr.53,16,8
	.type	__llvm_gcov_ctr.54,@object      ! @__llvm_gcov_ctr.54
	.local	__llvm_gcov_ctr.54
	.comm	__llvm_gcov_ctr.54,8,8
	.type	__llvm_gcov_ctr.55,@object      ! @__llvm_gcov_ctr.55
	.local	__llvm_gcov_ctr.55
	.comm	__llvm_gcov_ctr.55,16,8
	.type	__llvm_gcov_ctr.56,@object      ! @__llvm_gcov_ctr.56
	.local	__llvm_gcov_ctr.56
	.comm	__llvm_gcov_ctr.56,8,8
	.type	__llvm_gcov_ctr.57,@object      ! @__llvm_gcov_ctr.57
	.local	__llvm_gcov_ctr.57
	.comm	__llvm_gcov_ctr.57,40,16
	.type	__llvm_gcov_ctr.58,@object      ! @__llvm_gcov_ctr.58
	.local	__llvm_gcov_ctr.58
	.comm	__llvm_gcov_ctr.58,48,16
	.type	__llvm_gcov_ctr.59,@object      ! @__llvm_gcov_ctr.59
	.local	__llvm_gcov_ctr.59
	.comm	__llvm_gcov_ctr.59,16,8
	.type	__llvm_gcov_ctr.60,@object      ! @__llvm_gcov_ctr.60
	.local	__llvm_gcov_ctr.60
	.comm	__llvm_gcov_ctr.60,16,8
	.type	__llvm_gcov_ctr.61,@object      ! @__llvm_gcov_ctr.61
	.local	__llvm_gcov_ctr.61
	.comm	__llvm_gcov_ctr.61,64,16
	.type	__llvm_gcov_ctr.62,@object      ! @__llvm_gcov_ctr.62
	.local	__llvm_gcov_ctr.62
	.comm	__llvm_gcov_ctr.62,40,16
	.type	__llvm_gcov_ctr.63,@object      ! @__llvm_gcov_ctr.63
	.local	__llvm_gcov_ctr.63
	.comm	__llvm_gcov_ctr.63,48,16
	.type	__llvm_gcov_ctr.64,@object      ! @__llvm_gcov_ctr.64
	.local	__llvm_gcov_ctr.64
	.comm	__llvm_gcov_ctr.64,16,8
	.type	__llvm_gcov_ctr.65,@object      ! @__llvm_gcov_ctr.65
	.local	__llvm_gcov_ctr.65
	.comm	__llvm_gcov_ctr.65,40,16
	.type	__llvm_gcov_ctr.66,@object      ! @__llvm_gcov_ctr.66
	.local	__llvm_gcov_ctr.66
	.comm	__llvm_gcov_ctr.66,16,8
	.type	__llvm_gcov_ctr.67,@object      ! @__llvm_gcov_ctr.67
	.local	__llvm_gcov_ctr.67
	.comm	__llvm_gcov_ctr.67,40,16
	.type	__llvm_gcov_ctr.68,@object      ! @__llvm_gcov_ctr.68
	.local	__llvm_gcov_ctr.68
	.comm	__llvm_gcov_ctr.68,8,8
	.type	__llvm_gcov_ctr.69,@object      ! @__llvm_gcov_ctr.69
	.local	__llvm_gcov_ctr.69
	.comm	__llvm_gcov_ctr.69,8,8
	.type	__llvm_gcov_ctr.70,@object      ! @__llvm_gcov_ctr.70
	.local	__llvm_gcov_ctr.70
	.comm	__llvm_gcov_ctr.70,8,8
	.type	__llvm_gcov_ctr.71,@object      ! @__llvm_gcov_ctr.71
	.local	__llvm_gcov_ctr.71
	.comm	__llvm_gcov_ctr.71,8,8
	.type	__llvm_gcov_ctr.72,@object      ! @__llvm_gcov_ctr.72
	.local	__llvm_gcov_ctr.72
	.comm	__llvm_gcov_ctr.72,8,8
	.type	__llvm_gcov_ctr.73,@object      ! @__llvm_gcov_ctr.73
	.local	__llvm_gcov_ctr.73
	.comm	__llvm_gcov_ctr.73,8,8
	.type	__llvm_gcov_ctr.74,@object      ! @__llvm_gcov_ctr.74
	.local	__llvm_gcov_ctr.74
	.comm	__llvm_gcov_ctr.74,8,8
	.type	__llvm_gcov_ctr.75,@object      ! @__llvm_gcov_ctr.75
	.local	__llvm_gcov_ctr.75
	.comm	__llvm_gcov_ctr.75,8,8
	.type	__llvm_gcov_ctr.76,@object      ! @__llvm_gcov_ctr.76
	.local	__llvm_gcov_ctr.76
	.comm	__llvm_gcov_ctr.76,8,8
	.type	__llvm_gcov_ctr.77,@object      ! @__llvm_gcov_ctr.77
	.local	__llvm_gcov_ctr.77
	.comm	__llvm_gcov_ctr.77,8,8
	.type	__llvm_gcov_ctr.78,@object      ! @__llvm_gcov_ctr.78
	.local	__llvm_gcov_ctr.78
	.comm	__llvm_gcov_ctr.78,8,8
	.type	__llvm_gcov_ctr.79,@object      ! @__llvm_gcov_ctr.79
	.local	__llvm_gcov_ctr.79
	.comm	__llvm_gcov_ctr.79,8,8
	.type	__llvm_gcov_ctr.80,@object      ! @__llvm_gcov_ctr.80
	.local	__llvm_gcov_ctr.80
	.comm	__llvm_gcov_ctr.80,8,8
	.type	__llvm_gcov_ctr.81,@object      ! @__llvm_gcov_ctr.81
	.local	__llvm_gcov_ctr.81
	.comm	__llvm_gcov_ctr.81,24,16
	.type	__llvm_gcov_ctr.82,@object      ! @__llvm_gcov_ctr.82
	.local	__llvm_gcov_ctr.82
	.comm	__llvm_gcov_ctr.82,24,16
	.type	__llvm_gcov_ctr.83,@object      ! @__llvm_gcov_ctr.83
	.local	__llvm_gcov_ctr.83
	.comm	__llvm_gcov_ctr.83,24,16
	.type	__llvm_gcov_ctr.84,@object      ! @__llvm_gcov_ctr.84
	.local	__llvm_gcov_ctr.84
	.comm	__llvm_gcov_ctr.84,24,16
	.type	__llvm_gcov_ctr.85,@object      ! @__llvm_gcov_ctr.85
	.local	__llvm_gcov_ctr.85
	.comm	__llvm_gcov_ctr.85,24,16
	.type	__llvm_gcov_ctr.86,@object      ! @__llvm_gcov_ctr.86
	.local	__llvm_gcov_ctr.86
	.comm	__llvm_gcov_ctr.86,8,8
	.type	__llvm_gcov_ctr.87,@object      ! @__llvm_gcov_ctr.87
	.local	__llvm_gcov_ctr.87
	.comm	__llvm_gcov_ctr.87,40,16
	.type	__llvm_gcov_ctr.88,@object      ! @__llvm_gcov_ctr.88
	.local	__llvm_gcov_ctr.88
	.comm	__llvm_gcov_ctr.88,40,16
	.type	__llvm_gcov_ctr.89,@object      ! @__llvm_gcov_ctr.89
	.local	__llvm_gcov_ctr.89
	.comm	__llvm_gcov_ctr.89,40,16
	.type	__llvm_gcov_ctr.90,@object      ! @__llvm_gcov_ctr.90
	.local	__llvm_gcov_ctr.90
	.comm	__llvm_gcov_ctr.90,16,8
	.type	__llvm_gcov_ctr.91,@object      ! @__llvm_gcov_ctr.91
	.local	__llvm_gcov_ctr.91
	.comm	__llvm_gcov_ctr.91,40,16
	.type	__llvm_gcov_ctr.92,@object      ! @__llvm_gcov_ctr.92
	.local	__llvm_gcov_ctr.92
	.comm	__llvm_gcov_ctr.92,32,16
	.type	__llvm_gcov_ctr.93,@object      ! @__llvm_gcov_ctr.93
	.local	__llvm_gcov_ctr.93
	.comm	__llvm_gcov_ctr.93,32,16
	.type	__llvm_gcov_ctr.94,@object      ! @__llvm_gcov_ctr.94
	.local	__llvm_gcov_ctr.94
	.comm	__llvm_gcov_ctr.94,24,16
	.type	__llvm_gcov_ctr.95,@object      ! @__llvm_gcov_ctr.95
	.local	__llvm_gcov_ctr.95
	.comm	__llvm_gcov_ctr.95,32,16
	.type	__llvm_gcov_ctr.96,@object      ! @__llvm_gcov_ctr.96
	.local	__llvm_gcov_ctr.96
	.comm	__llvm_gcov_ctr.96,40,16
	.type	__llvm_gcov_ctr.97,@object      ! @__llvm_gcov_ctr.97
	.local	__llvm_gcov_ctr.97
	.comm	__llvm_gcov_ctr.97,48,16
	.type	__llvm_gcov_ctr.98,@object      ! @__llvm_gcov_ctr.98
	.local	__llvm_gcov_ctr.98
	.comm	__llvm_gcov_ctr.98,8,8
	.type	__llvm_gcov_ctr.99,@object      ! @__llvm_gcov_ctr.99
	.local	__llvm_gcov_ctr.99
	.comm	__llvm_gcov_ctr.99,64,16
	.type	__llvm_gcov_ctr.100,@object     ! @__llvm_gcov_ctr.100
	.local	__llvm_gcov_ctr.100
	.comm	__llvm_gcov_ctr.100,24,16
	.type	__llvm_gcov_ctr.101,@object     ! @__llvm_gcov_ctr.101
	.local	__llvm_gcov_ctr.101
	.comm	__llvm_gcov_ctr.101,64,16
	.type	__llvm_gcov_ctr.102,@object     ! @__llvm_gcov_ctr.102
	.local	__llvm_gcov_ctr.102
	.comm	__llvm_gcov_ctr.102,24,16
	.type	__llvm_gcov_ctr.103,@object     ! @__llvm_gcov_ctr.103
	.local	__llvm_gcov_ctr.103
	.comm	__llvm_gcov_ctr.103,24,16
	.type	__llvm_gcov_ctr.104,@object     ! @__llvm_gcov_ctr.104
	.local	__llvm_gcov_ctr.104
	.comm	__llvm_gcov_ctr.104,24,16
	.type	__llvm_gcov_ctr.105,@object     ! @__llvm_gcov_ctr.105
	.local	__llvm_gcov_ctr.105
	.comm	__llvm_gcov_ctr.105,48,16
	.type	__llvm_gcov_ctr.106,@object     ! @__llvm_gcov_ctr.106
	.local	__llvm_gcov_ctr.106
	.comm	__llvm_gcov_ctr.106,48,16
	.type	__llvm_gcov_ctr.107,@object     ! @__llvm_gcov_ctr.107
	.local	__llvm_gcov_ctr.107
	.comm	__llvm_gcov_ctr.107,48,16
	.type	__llvm_gcov_ctr.108,@object     ! @__llvm_gcov_ctr.108
	.local	__llvm_gcov_ctr.108
	.comm	__llvm_gcov_ctr.108,8,8
	.type	__llvm_gcov_ctr.109,@object     ! @__llvm_gcov_ctr.109
	.local	__llvm_gcov_ctr.109
	.comm	__llvm_gcov_ctr.109,8,8
	.type	__llvm_gcov_ctr.110,@object     ! @__llvm_gcov_ctr.110
	.local	__llvm_gcov_ctr.110
	.comm	__llvm_gcov_ctr.110,8,8
	.type	__llvm_gcov_ctr.111,@object     ! @__llvm_gcov_ctr.111
	.local	__llvm_gcov_ctr.111
	.comm	__llvm_gcov_ctr.111,8,8
	.type	__llvm_gcov_ctr.112,@object     ! @__llvm_gcov_ctr.112
	.local	__llvm_gcov_ctr.112
	.comm	__llvm_gcov_ctr.112,8,8
	.type	__llvm_gcov_ctr.113,@object     ! @__llvm_gcov_ctr.113
	.local	__llvm_gcov_ctr.113
	.comm	__llvm_gcov_ctr.113,8,8
	.type	__llvm_gcov_ctr.114,@object     ! @__llvm_gcov_ctr.114
	.local	__llvm_gcov_ctr.114
	.comm	__llvm_gcov_ctr.114,24,16
	.type	__llvm_gcov_ctr.115,@object     ! @__llvm_gcov_ctr.115
	.local	__llvm_gcov_ctr.115
	.comm	__llvm_gcov_ctr.115,24,16
	.type	__llvm_gcov_ctr.116,@object     ! @__llvm_gcov_ctr.116
	.local	__llvm_gcov_ctr.116
	.comm	__llvm_gcov_ctr.116,16,8
	.type	__llvm_gcov_ctr.117,@object     ! @__llvm_gcov_ctr.117
	.local	__llvm_gcov_ctr.117
	.comm	__llvm_gcov_ctr.117,24,16
	.type	__llvm_gcov_ctr.118,@object     ! @__llvm_gcov_ctr.118
	.local	__llvm_gcov_ctr.118
	.comm	__llvm_gcov_ctr.118,24,16
	.type	__llvm_gcov_ctr.119,@object     ! @__llvm_gcov_ctr.119
	.local	__llvm_gcov_ctr.119
	.comm	__llvm_gcov_ctr.119,24,16
	.type	__llvm_gcov_ctr.120,@object     ! @__llvm_gcov_ctr.120
	.local	__llvm_gcov_ctr.120
	.comm	__llvm_gcov_ctr.120,32,16
	.type	__llvm_gcov_ctr.121,@object     ! @__llvm_gcov_ctr.121
	.local	__llvm_gcov_ctr.121
	.comm	__llvm_gcov_ctr.121,64,16
	.type	__llvm_gcov_ctr.122,@object     ! @__llvm_gcov_ctr.122
	.local	__llvm_gcov_ctr.122
	.comm	__llvm_gcov_ctr.122,24,16
	.type	__llvm_gcov_ctr.123,@object     ! @__llvm_gcov_ctr.123
	.local	__llvm_gcov_ctr.123
	.comm	__llvm_gcov_ctr.123,24,16
	.type	__llvm_gcov_ctr.124,@object     ! @__llvm_gcov_ctr.124
	.local	__llvm_gcov_ctr.124
	.comm	__llvm_gcov_ctr.124,8,8
	.type	__llvm_gcov_ctr.125,@object     ! @__llvm_gcov_ctr.125
	.local	__llvm_gcov_ctr.125
	.comm	__llvm_gcov_ctr.125,8,8
	.type	__llvm_gcov_ctr.126,@object     ! @__llvm_gcov_ctr.126
	.local	__llvm_gcov_ctr.126
	.comm	__llvm_gcov_ctr.126,56,16
	.type	__llvm_gcov_ctr.127,@object     ! @__llvm_gcov_ctr.127
	.local	__llvm_gcov_ctr.127
	.comm	__llvm_gcov_ctr.127,32,16
	.type	__llvm_gcov_ctr.128,@object     ! @__llvm_gcov_ctr.128
	.local	__llvm_gcov_ctr.128
	.comm	__llvm_gcov_ctr.128,32,16
	.type	__llvm_gcov_ctr.129,@object     ! @__llvm_gcov_ctr.129
	.local	__llvm_gcov_ctr.129
	.comm	__llvm_gcov_ctr.129,64,16
	.type	__llvm_gcov_ctr.130,@object     ! @__llvm_gcov_ctr.130
	.local	__llvm_gcov_ctr.130
	.comm	__llvm_gcov_ctr.130,64,16
	.type	__llvm_gcov_ctr.131,@object     ! @__llvm_gcov_ctr.131
	.local	__llvm_gcov_ctr.131
	.comm	__llvm_gcov_ctr.131,24,16
	.type	__llvm_gcov_ctr.132,@object     ! @__llvm_gcov_ctr.132
	.local	__llvm_gcov_ctr.132
	.comm	__llvm_gcov_ctr.132,24,16
	.type	__llvm_gcov_ctr.133,@object     ! @__llvm_gcov_ctr.133
	.local	__llvm_gcov_ctr.133
	.comm	__llvm_gcov_ctr.133,8,8
	.type	__llvm_gcov_ctr.134,@object     ! @__llvm_gcov_ctr.134
	.local	__llvm_gcov_ctr.134
	.comm	__llvm_gcov_ctr.134,8,8
	.type	__llvm_gcov_ctr.135,@object     ! @__llvm_gcov_ctr.135
	.local	__llvm_gcov_ctr.135
	.comm	__llvm_gcov_ctr.135,8,8
	.type	__llvm_gcov_ctr.136,@object     ! @__llvm_gcov_ctr.136
	.local	__llvm_gcov_ctr.136
	.comm	__llvm_gcov_ctr.136,40,16
	.type	__llvm_gcov_ctr.137,@object     ! @__llvm_gcov_ctr.137
	.local	__llvm_gcov_ctr.137
	.comm	__llvm_gcov_ctr.137,8,8
	.type	__llvm_gcov_ctr.138,@object     ! @__llvm_gcov_ctr.138
	.local	__llvm_gcov_ctr.138
	.comm	__llvm_gcov_ctr.138,8,8
	.type	__llvm_gcov_ctr.139,@object     ! @__llvm_gcov_ctr.139
	.local	__llvm_gcov_ctr.139
	.comm	__llvm_gcov_ctr.139,24,16
	.type	__llvm_gcov_ctr.140,@object     ! @__llvm_gcov_ctr.140
	.local	__llvm_gcov_ctr.140
	.comm	__llvm_gcov_ctr.140,8,8
	.type	__llvm_gcov_ctr.141,@object     ! @__llvm_gcov_ctr.141
	.local	__llvm_gcov_ctr.141
	.comm	__llvm_gcov_ctr.141,8,8
	.type	__llvm_gcov_ctr.142,@object     ! @__llvm_gcov_ctr.142
	.local	__llvm_gcov_ctr.142
	.comm	__llvm_gcov_ctr.142,8,8
	.type	__llvm_gcov_ctr.143,@object     ! @__llvm_gcov_ctr.143
	.local	__llvm_gcov_ctr.143
	.comm	__llvm_gcov_ctr.143,8,8
	.type	__llvm_gcov_ctr.144,@object     ! @__llvm_gcov_ctr.144
	.local	__llvm_gcov_ctr.144
	.comm	__llvm_gcov_ctr.144,8,8
	.type	__llvm_gcov_ctr.145,@object     ! @__llvm_gcov_ctr.145
	.local	__llvm_gcov_ctr.145
	.comm	__llvm_gcov_ctr.145,8,8
	.type	__llvm_gcov_ctr.146,@object     ! @__llvm_gcov_ctr.146
	.local	__llvm_gcov_ctr.146
	.comm	__llvm_gcov_ctr.146,8,8
	.type	__llvm_gcov_ctr.147,@object     ! @__llvm_gcov_ctr.147
	.local	__llvm_gcov_ctr.147
	.comm	__llvm_gcov_ctr.147,32,16
	.type	__llvm_gcov_ctr.148,@object     ! @__llvm_gcov_ctr.148
	.local	__llvm_gcov_ctr.148
	.comm	__llvm_gcov_ctr.148,32,16
	.type	__llvm_gcov_ctr.149,@object     ! @__llvm_gcov_ctr.149
	.local	__llvm_gcov_ctr.149
	.comm	__llvm_gcov_ctr.149,40,16
	.type	__llvm_gcov_ctr.150,@object     ! @__llvm_gcov_ctr.150
	.local	__llvm_gcov_ctr.150
	.comm	__llvm_gcov_ctr.150,8,8
	.type	.L__unnamed_1,@object           ! @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_1:
	.asciz	"/home/gravier/tmp/some-libc-opt/clang-sparc32.gcda"
	.size	.L__unnamed_1, 51

	.type	__llvm_internal_gcov_emit_function_args.0,@object ! @__llvm_internal_gcov_emit_function_args.0
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
__llvm_internal_gcov_emit_function_args.0:
	.word	0                               ! 0x0
	.word	560687177                       ! 0x216b6849
	.word	3469251760                      ! 0xcec894b0
	.word	1                               ! 0x1
	.word	1589591758                      ! 0x5ebf3ece
	.word	3469251760                      ! 0xcec894b0
	.word	2                               ! 0x2
	.word	2176136383                      ! 0x81b534bf
	.word	3469251760                      ! 0xcec894b0
	.word	3                               ! 0x3
	.word	3586625172                      ! 0xd5c78e94
	.word	3469251760                      ! 0xcec894b0
	.word	4                               ! 0x4
	.word	2323119728                      ! 0x8a77fe70
	.word	3469251760                      ! 0xcec894b0
	.word	5                               ! 0x5
	.word	2314569740                      ! 0x89f5880c
	.word	3469251760                      ! 0xcec894b0
	.word	6                               ! 0x6
	.word	2833673551                      ! 0xa8e66d4f
	.word	3469251760                      ! 0xcec894b0
	.word	7                               ! 0x7
	.word	1458633189                      ! 0x56f0f9e5
	.word	3469251760                      ! 0xcec894b0
	.word	8                               ! 0x8
	.word	1190300833                      ! 0x46f28ca1
	.word	3469251760                      ! 0xcec894b0
	.word	9                               ! 0x9
	.word	758327989                       ! 0x2d332ab5
	.word	3469251760                      ! 0xcec894b0
	.word	10                              ! 0xa
	.word	1651479037                      ! 0x626f91fd
	.word	3469251760                      ! 0xcec894b0
	.word	11                              ! 0xb
	.word	4132343275                      ! 0xf64e8deb
	.word	3469251760                      ! 0xcec894b0
	.word	12                              ! 0xc
	.word	734262523                       ! 0x2bc3f4fb
	.word	3469251760                      ! 0xcec894b0
	.word	13                              ! 0xd
	.word	2463424677                      ! 0x92d4e0a5
	.word	3469251760                      ! 0xcec894b0
	.word	14                              ! 0xe
	.word	1419026334                      ! 0x54949f9e
	.word	3469251760                      ! 0xcec894b0
	.word	15                              ! 0xf
	.word	3154471370                      ! 0xbc0569ca
	.word	3469251760                      ! 0xcec894b0
	.word	16                              ! 0x10
	.word	2077973487                      ! 0x7bdb5bef
	.word	3469251760                      ! 0xcec894b0
	.word	17                              ! 0x11
	.word	1474691227                      ! 0x57e6009b
	.word	3469251760                      ! 0xcec894b0
	.word	18                              ! 0x12
	.word	3710986016                      ! 0xdd312720
	.word	3469251760                      ! 0xcec894b0
	.word	19                              ! 0x13
	.word	1305101473                      ! 0x4dca44a1
	.word	3469251760                      ! 0xcec894b0
	.word	20                              ! 0x14
	.word	3762036564                      ! 0xe03c1f54
	.word	3469251760                      ! 0xcec894b0
	.word	21                              ! 0x15
	.word	477914433                       ! 0x1c7c6541
	.word	3469251760                      ! 0xcec894b0
	.word	22                              ! 0x16
	.word	3923035234                      ! 0xe9d4c462
	.word	3469251760                      ! 0xcec894b0
	.word	23                              ! 0x17
	.word	951651702                       ! 0x38b90d76
	.word	3469251760                      ! 0xcec894b0
	.word	24                              ! 0x18
	.word	4206925919                      ! 0xfac0985f
	.word	3469251760                      ! 0xcec894b0
	.word	25                              ! 0x19
	.word	32773942                        ! 0x1f41736
	.word	3469251760                      ! 0xcec894b0
	.word	26                              ! 0x1a
	.word	2877267246                      ! 0xab7f9d2e
	.word	3469251760                      ! 0xcec894b0
	.word	27                              ! 0x1b
	.word	860405771                       ! 0x3348c00b
	.word	3469251760                      ! 0xcec894b0
	.word	28                              ! 0x1c
	.word	815674877                       ! 0x309e35fd
	.word	3469251760                      ! 0xcec894b0
	.word	29                              ! 0x1d
	.word	1778838753                      ! 0x6a06ece1
	.word	3469251760                      ! 0xcec894b0
	.word	30                              ! 0x1e
	.word	2718307199                      ! 0xa206137f
	.word	3469251760                      ! 0xcec894b0
	.word	31                              ! 0x1f
	.word	856224820                       ! 0x3308f434
	.word	3469251760                      ! 0xcec894b0
	.word	32                              ! 0x20
	.word	1111195143                      ! 0x423b7e07
	.word	3469251760                      ! 0xcec894b0
	.word	33                              ! 0x21
	.word	1178414519                      ! 0x463d2db7
	.word	3469251760                      ! 0xcec894b0
	.word	34                              ! 0x22
	.word	3477640633                      ! 0xcf4895b9
	.word	3469251760                      ! 0xcec894b0
	.word	35                              ! 0x23
	.word	4294770115                      ! 0xfffcfdc3
	.word	3469251760                      ! 0xcec894b0
	.word	36                              ! 0x24
	.word	3650660234                      ! 0xd998a78a
	.word	3469251760                      ! 0xcec894b0
	.word	37                              ! 0x25
	.word	289327647                       ! 0x113eca1f
	.word	3469251760                      ! 0xcec894b0
	.word	38                              ! 0x26
	.word	2093612798                      ! 0x7cc9fefe
	.word	3469251760                      ! 0xcec894b0
	.word	39                              ! 0x27
	.word	4177956716                      ! 0xf9068f6c
	.word	3469251760                      ! 0xcec894b0
	.word	40                              ! 0x28
	.word	3434808461                      ! 0xccbb048d
	.word	3469251760                      ! 0xcec894b0
	.word	41                              ! 0x29
	.word	3206497114                      ! 0xbf1f435a
	.word	3469251760                      ! 0xcec894b0
	.word	42                              ! 0x2a
	.word	1537257434                      ! 0x5ba0afda
	.word	3469251760                      ! 0xcec894b0
	.word	43                              ! 0x2b
	.word	3028077325                      ! 0xb47ccb0d
	.word	3469251760                      ! 0xcec894b0
	.word	44                              ! 0x2c
	.word	1369848209                      ! 0x51a63991
	.word	3469251760                      ! 0xcec894b0
	.word	45                              ! 0x2d
	.word	938831176                       ! 0x37f56d48
	.word	3469251760                      ! 0xcec894b0
	.word	46                              ! 0x2e
	.word	1663146323                      ! 0x63219953
	.word	3469251760                      ! 0xcec894b0
	.word	47                              ! 0x2f
	.word	4111410217                      ! 0xf50f2429
	.word	3469251760                      ! 0xcec894b0
	.word	48                              ! 0x30
	.word	1475378556                      ! 0x57f07d7c
	.word	3469251760                      ! 0xcec894b0
	.word	49                              ! 0x31
	.word	3356195547                      ! 0xc80b7adb
	.word	3469251760                      ! 0xcec894b0
	.word	50                              ! 0x32
	.word	514931786                       ! 0x1eb13c4a
	.word	3469251760                      ! 0xcec894b0
	.word	51                              ! 0x33
	.word	2854034444                      ! 0xaa1d1c0c
	.word	3469251760                      ! 0xcec894b0
	.word	52                              ! 0x34
	.word	2747937306                      ! 0xa3ca321a
	.word	3469251760                      ! 0xcec894b0
	.word	53                              ! 0x35
	.word	4192776208                      ! 0xf9e8b010
	.word	3469251760                      ! 0xcec894b0
	.word	54                              ! 0x36
	.word	984436227                       ! 0x3aad4e03
	.word	3469251760                      ! 0xcec894b0
	.word	55                              ! 0x37
	.word	1477657574                      ! 0x581343e6
	.word	3469251760                      ! 0xcec894b0
	.word	56                              ! 0x38
	.word	1339127973                      ! 0x4fd178a5
	.word	3469251760                      ! 0xcec894b0
	.word	57                              ! 0x39
	.word	2960567906                      ! 0xb076ae62
	.word	3469251760                      ! 0xcec894b0
	.word	58                              ! 0x3a
	.word	3390076872                      ! 0xca1077c8
	.word	3469251760                      ! 0xcec894b0
	.word	59                              ! 0x3b
	.word	1543282230                      ! 0x5bfc9e36
	.word	3469251760                      ! 0xcec894b0
	.word	60                              ! 0x3c
	.word	2934101789                      ! 0xaee2d71d
	.word	3469251760                      ! 0xcec894b0
	.word	61                              ! 0x3d
	.word	3737986119                      ! 0xdecd2447
	.word	3469251760                      ! 0xcec894b0
	.word	62                              ! 0x3e
	.word	49556427                        ! 0x2f42bcb
	.word	3469251760                      ! 0xcec894b0
	.word	63                              ! 0x3f
	.word	234051526                       ! 0xdf357c6
	.word	3469251760                      ! 0xcec894b0
	.word	64                              ! 0x40
	.word	2341800126                      ! 0x8b9508be
	.word	3469251760                      ! 0xcec894b0
	.word	65                              ! 0x41
	.word	3256799948                      ! 0xc21ed2cc
	.word	3469251760                      ! 0xcec894b0
	.word	66                              ! 0x42
	.word	777295480                       ! 0x2e549678
	.word	3469251760                      ! 0xcec894b0
	.word	67                              ! 0x43
	.word	14040531                        ! 0xd63dd3
	.word	3469251760                      ! 0xcec894b0
	.word	68                              ! 0x44
	.word	8047973                         ! 0x7acd65
	.word	3469251760                      ! 0xcec894b0
	.word	69                              ! 0x45
	.word	719459161                       ! 0x2ae21359
	.word	3469251760                      ! 0xcec894b0
	.word	70                              ! 0x46
	.word	243358501                       ! 0xe815b25
	.word	3469251760                      ! 0xcec894b0
	.word	71                              ! 0x47
	.word	3262173932                      ! 0xc270d2ec
	.word	3469251760                      ! 0xcec894b0
	.word	72                              ! 0x48
	.word	398910553                       ! 0x17c6e459
	.word	3469251760                      ! 0xcec894b0
	.word	73                              ! 0x49
	.word	3354219739                      ! 0xc7ed54db
	.word	3469251760                      ! 0xcec894b0
	.word	74                              ! 0x4a
	.word	2570308788                      ! 0x9933ccb4
	.word	3469251760                      ! 0xcec894b0
	.word	75                              ! 0x4b
	.word	982429111                       ! 0x3a8eadb7
	.word	3469251760                      ! 0xcec894b0
	.word	76                              ! 0x4c
	.word	211491241                       ! 0xc9b19a9
	.word	3469251760                      ! 0xcec894b0
	.word	77                              ! 0x4d
	.word	1075683319                      ! 0x401d9ff7
	.word	3469251760                      ! 0xcec894b0
	.word	78                              ! 0x4e
	.word	1886352651                      ! 0x706f750b
	.word	3469251760                      ! 0xcec894b0
	.word	79                              ! 0x4f
	.word	248637203                       ! 0xed1e713
	.word	3469251760                      ! 0xcec894b0
	.word	80                              ! 0x50
	.word	703327087                       ! 0x29ebeb6f
	.word	3469251760                      ! 0xcec894b0
	.word	81                              ! 0x51
	.word	3690160730                      ! 0xdbf3625a
	.word	3469251760                      ! 0xcec894b0
	.word	82                              ! 0x52
	.word	787048238                       ! 0x2ee9672e
	.word	3469251760                      ! 0xcec894b0
	.word	83                              ! 0x53
	.word	1937497967                      ! 0x737bdf6f
	.word	3469251760                      ! 0xcec894b0
	.word	84                              ! 0x54
	.word	4205062514                      ! 0xfaa42972
	.word	3469251760                      ! 0xcec894b0
	.word	85                              ! 0x55
	.word	694462539                       ! 0x2964a84b
	.word	3469251760                      ! 0xcec894b0
	.word	86                              ! 0x56
	.word	85970907                        ! 0x51fcfdb
	.word	3469251760                      ! 0xcec894b0
	.word	87                              ! 0x57
	.word	3681984728                      ! 0xdb76a0d8
	.word	3469251760                      ! 0xcec894b0
	.word	88                              ! 0x58
	.word	3620297642                      ! 0xd7c95baa
	.word	3469251760                      ! 0xcec894b0
	.word	89                              ! 0x59
	.word	3394804480                      ! 0xca589b00
	.word	3469251760                      ! 0xcec894b0
	.word	90                              ! 0x5a
	.word	2119330183                      ! 0x7e526987
	.word	3469251760                      ! 0xcec894b0
	.word	91                              ! 0x5b
	.word	1963040266                      ! 0x75019e0a
	.word	3469251760                      ! 0xcec894b0
	.word	92                              ! 0x5c
	.word	1603391838                      ! 0x5f91d15e
	.word	3469251760                      ! 0xcec894b0
	.word	93                              ! 0x5d
	.word	2340921237                      ! 0x8b879f95
	.word	3469251760                      ! 0xcec894b0
	.word	94                              ! 0x5e
	.word	3028177438                      ! 0xb47e521e
	.word	3469251760                      ! 0xcec894b0
	.word	95                              ! 0x5f
	.word	2265525308                      ! 0x87092c3c
	.word	3469251760                      ! 0xcec894b0
	.word	96                              ! 0x60
	.word	2598903994                      ! 0x9ae820ba
	.word	3469251760                      ! 0xcec894b0
	.word	97                              ! 0x61
	.word	139524705                       ! 0x850fa61
	.word	3469251760                      ! 0xcec894b0
	.word	98                              ! 0x62
	.word	1076410600                      ! 0x4028b8e8
	.word	3469251760                      ! 0xcec894b0
	.word	99                              ! 0x63
	.word	220237413                       ! 0xd208e65
	.word	3469251760                      ! 0xcec894b0
	.word	100                             ! 0x64
	.word	3913623866                      ! 0xe945293a
	.word	3469251760                      ! 0xcec894b0
	.word	101                             ! 0x65
	.word	3453026372                      ! 0xcdd10044
	.word	3469251760                      ! 0xcec894b0
	.word	102                             ! 0x66
	.word	2321387380                      ! 0x8a5d8f74
	.word	3469251760                      ! 0xcec894b0
	.word	103                             ! 0x67
	.word	3319939363                      ! 0xc5e24123
	.word	3469251760                      ! 0xcec894b0
	.word	104                             ! 0x68
	.word	398991913                       ! 0x17c82229
	.word	3469251760                      ! 0xcec894b0
	.word	105                             ! 0x69
	.word	333429647                       ! 0x13dfbb8f
	.word	3469251760                      ! 0xcec894b0
	.word	106                             ! 0x6a
	.word	3927133990                      ! 0xea134f26
	.word	3469251760                      ! 0xcec894b0
	.word	107                             ! 0x6b
	.word	1797971294                      ! 0x6b2add5e
	.word	3469251760                      ! 0xcec894b0
	.word	108                             ! 0x6c
	.word	1622314776                      ! 0x60b28f18
	.word	3469251760                      ! 0xcec894b0
	.word	109                             ! 0x6d
	.word	1092862330                      ! 0x4123c17a
	.word	3469251760                      ! 0xcec894b0
	.word	110                             ! 0x6e
	.word	2568657322                      ! 0x991a99aa
	.word	3469251760                      ! 0xcec894b0
	.word	111                             ! 0x6f
	.word	2168129897                      ! 0x813b0969
	.word	3469251760                      ! 0xcec894b0
	.word	112                             ! 0x70
	.word	2890303119                      ! 0xac46868f
	.word	3469251760                      ! 0xcec894b0
	.word	113                             ! 0x71
	.word	1713332582                      ! 0x661f6166
	.word	3469251760                      ! 0xcec894b0
	.word	114                             ! 0x72
	.word	2375727721                      ! 0x8d9aba69
	.word	3469251760                      ! 0xcec894b0
	.word	115                             ! 0x73
	.word	3586767156                      ! 0xd5c9b934
	.word	3469251760                      ! 0xcec894b0
	.word	116                             ! 0x74
	.word	2191348475                      ! 0x829d52fb
	.word	3469251760                      ! 0xcec894b0
	.word	117                             ! 0x75
	.word	3910023869                      ! 0xe90e3abd
	.word	3469251760                      ! 0xcec894b0
	.word	118                             ! 0x76
	.word	4189915105                      ! 0xf9bd07e1
	.word	3469251760                      ! 0xcec894b0
	.word	119                             ! 0x77
	.word	2527353334                      ! 0x96a459f6
	.word	3469251760                      ! 0xcec894b0
	.word	120                             ! 0x78
	.word	3429265923                      ! 0xcc667203
	.word	3469251760                      ! 0xcec894b0
	.word	121                             ! 0x79
	.word	1283962724                      ! 0x4c87b764
	.word	3469251760                      ! 0xcec894b0
	.word	122                             ! 0x7a
	.word	1970290990                      ! 0x7570412e
	.word	3469251760                      ! 0xcec894b0
	.word	123                             ! 0x7b
	.word	2615950861                      ! 0x9bec3e0d
	.word	3469251760                      ! 0xcec894b0
	.word	124                             ! 0x7c
	.word	3338450337                      ! 0xc6fcb5a1
	.word	3469251760                      ! 0xcec894b0
	.word	125                             ! 0x7d
	.word	3971836509                      ! 0xecbd6a5d
	.word	3469251760                      ! 0xcec894b0
	.word	126                             ! 0x7e
	.word	4260339231                      ! 0xfdef9e1f
	.word	3469251760                      ! 0xcec894b0
	.word	127                             ! 0x7f
	.word	4160738226                      ! 0xf7ffd3b2
	.word	3469251760                      ! 0xcec894b0
	.word	128                             ! 0x80
	.word	1309372079                      ! 0x4e0b6eaf
	.word	3469251760                      ! 0xcec894b0
	.word	129                             ! 0x81
	.word	3151575564                      ! 0xbbd93a0c
	.word	3469251760                      ! 0xcec894b0
	.word	130                             ! 0x82
	.word	3938977714                      ! 0xeac807b2
	.word	3469251760                      ! 0xcec894b0
	.word	131                             ! 0x83
	.word	3228738087                      ! 0xc072a227
	.word	3469251760                      ! 0xcec894b0
	.word	132                             ! 0x84
	.word	3135705803                      ! 0xbae712cb
	.word	3469251760                      ! 0xcec894b0
	.word	133                             ! 0x85
	.word	4061147315                      ! 0xf21030b3
	.word	3469251760                      ! 0xcec894b0
	.word	134                             ! 0x86
	.word	2783543715                      ! 0xa5e981a3
	.word	3469251760                      ! 0xcec894b0
	.word	135                             ! 0x87
	.word	2471046843                      ! 0x93492ebb
	.word	3469251760                      ! 0xcec894b0
	.word	136                             ! 0x88
	.word	260073473                       ! 0xf806801
	.word	3469251760                      ! 0xcec894b0
	.word	137                             ! 0x89
	.word	1259876295                      ! 0x4b182fc7
	.word	3469251760                      ! 0xcec894b0
	.word	138                             ! 0x8a
	.word	2579807359                      ! 0x99c4bc7f
	.word	3469251760                      ! 0xcec894b0
	.word	139                             ! 0x8b
	.word	90061610                        ! 0x55e3b2a
	.word	3469251760                      ! 0xcec894b0
	.word	140                             ! 0x8c
	.word	3598610789                      ! 0xd67e7165
	.word	3469251760                      ! 0xcec894b0
	.word	141                             ! 0x8d
	.word	2351688191                      ! 0x8c2be9ff
	.word	3469251760                      ! 0xcec894b0
	.word	142                             ! 0x8e
	.word	1438161982                      ! 0x55b89c3e
	.word	3469251760                      ! 0xcec894b0
	.word	143                             ! 0x8f
	.word	2438880600                      ! 0x915e5d58
	.word	3469251760                      ! 0xcec894b0
	.word	144                             ! 0x90
	.word	3593193962                      ! 0xd62bc9ea
	.word	3469251760                      ! 0xcec894b0
	.word	145                             ! 0x91
	.word	1755082314                      ! 0x689c6e4a
	.word	3469251760                      ! 0xcec894b0
	.word	146                             ! 0x92
	.word	3432612426                      ! 0xcc99824a
	.word	3469251760                      ! 0xcec894b0
	.word	147                             ! 0x93
	.word	3374828335                      ! 0xc927cb2f
	.word	3469251760                      ! 0xcec894b0
	.word	148                             ! 0x94
	.word	3311814731                      ! 0xc566484b
	.word	3469251760                      ! 0xcec894b0
	.word	149                             ! 0x95
	.word	413908966                       ! 0x18abbfe6
	.word	3469251760                      ! 0xcec894b0
	.word	150                             ! 0x96
	.word	3027808697                      ! 0xb478b1b9
	.word	3469251760                      ! 0xcec894b0
	.size	__llvm_internal_gcov_emit_function_args.0, 1812

	.type	__llvm_internal_gcov_emit_arcs_args.0,@object ! @__llvm_internal_gcov_emit_arcs_args.0
	.p2align	4, 0x0
__llvm_internal_gcov_emit_arcs_args.0:
	.word	5                               ! 0x5
	.word	__llvm_gcov_ctr
	.word	5                               ! 0x5
	.word	__llvm_gcov_ctr.1
	.word	5                               ! 0x5
	.word	__llvm_gcov_ctr.2
	.word	5                               ! 0x5
	.word	__llvm_gcov_ctr.3
	.word	2                               ! 0x2
	.word	__llvm_gcov_ctr.4
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.5
	.word	2                               ! 0x2
	.word	__llvm_gcov_ctr.6
	.word	2                               ! 0x2
	.word	__llvm_gcov_ctr.7
	.word	4                               ! 0x4
	.word	__llvm_gcov_ctr.8
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.9
	.word	4                               ! 0x4
	.word	__llvm_gcov_ctr.10
	.word	2                               ! 0x2
	.word	__llvm_gcov_ctr.11
	.word	7                               ! 0x7
	.word	__llvm_gcov_ctr.12
	.word	2                               ! 0x2
	.word	__llvm_gcov_ctr.13
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.14
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.15
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.16
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.17
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.18
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.19
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.20
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.21
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.22
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.23
	.word	5                               ! 0x5
	.word	__llvm_gcov_ctr.24
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.25
	.word	7                               ! 0x7
	.word	__llvm_gcov_ctr.26
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.27
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.28
	.word	4                               ! 0x4
	.word	__llvm_gcov_ctr.29
	.word	4                               ! 0x4
	.word	__llvm_gcov_ctr.30
	.word	6                               ! 0x6
	.word	__llvm_gcov_ctr.31
	.word	6                               ! 0x6
	.word	__llvm_gcov_ctr.32
	.word	6                               ! 0x6
	.word	__llvm_gcov_ctr.33
	.word	6                               ! 0x6
	.word	__llvm_gcov_ctr.34
	.word	6                               ! 0x6
	.word	__llvm_gcov_ctr.35
	.word	6                               ! 0x6
	.word	__llvm_gcov_ctr.36
	.word	2                               ! 0x2
	.word	__llvm_gcov_ctr.37
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.38
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.39
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.40
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.41
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.42
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.43
	.word	2                               ! 0x2
	.word	__llvm_gcov_ctr.44
	.word	6                               ! 0x6
	.word	__llvm_gcov_ctr.45
	.word	6                               ! 0x6
	.word	__llvm_gcov_ctr.46
	.word	6                               ! 0x6
	.word	__llvm_gcov_ctr.47
	.word	4                               ! 0x4
	.word	__llvm_gcov_ctr.48
	.word	4                               ! 0x4
	.word	__llvm_gcov_ctr.49
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.50
	.word	2                               ! 0x2
	.word	__llvm_gcov_ctr.51
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.52
	.word	2                               ! 0x2
	.word	__llvm_gcov_ctr.53
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.54
	.word	2                               ! 0x2
	.word	__llvm_gcov_ctr.55
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.56
	.word	5                               ! 0x5
	.word	__llvm_gcov_ctr.57
	.word	6                               ! 0x6
	.word	__llvm_gcov_ctr.58
	.word	2                               ! 0x2
	.word	__llvm_gcov_ctr.59
	.word	2                               ! 0x2
	.word	__llvm_gcov_ctr.60
	.word	8                               ! 0x8
	.word	__llvm_gcov_ctr.61
	.word	5                               ! 0x5
	.word	__llvm_gcov_ctr.62
	.word	6                               ! 0x6
	.word	__llvm_gcov_ctr.63
	.word	2                               ! 0x2
	.word	__llvm_gcov_ctr.64
	.word	5                               ! 0x5
	.word	__llvm_gcov_ctr.65
	.word	2                               ! 0x2
	.word	__llvm_gcov_ctr.66
	.word	5                               ! 0x5
	.word	__llvm_gcov_ctr.67
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.68
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.69
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.70
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.71
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.72
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.73
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.74
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.75
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.76
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.77
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.78
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.79
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.80
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.81
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.82
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.83
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.84
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.85
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.86
	.word	5                               ! 0x5
	.word	__llvm_gcov_ctr.87
	.word	5                               ! 0x5
	.word	__llvm_gcov_ctr.88
	.word	5                               ! 0x5
	.word	__llvm_gcov_ctr.89
	.word	2                               ! 0x2
	.word	__llvm_gcov_ctr.90
	.word	5                               ! 0x5
	.word	__llvm_gcov_ctr.91
	.word	4                               ! 0x4
	.word	__llvm_gcov_ctr.92
	.word	4                               ! 0x4
	.word	__llvm_gcov_ctr.93
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.94
	.word	4                               ! 0x4
	.word	__llvm_gcov_ctr.95
	.word	5                               ! 0x5
	.word	__llvm_gcov_ctr.96
	.word	6                               ! 0x6
	.word	__llvm_gcov_ctr.97
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.98
	.word	8                               ! 0x8
	.word	__llvm_gcov_ctr.99
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.100
	.word	8                               ! 0x8
	.word	__llvm_gcov_ctr.101
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.102
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.103
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.104
	.word	6                               ! 0x6
	.word	__llvm_gcov_ctr.105
	.word	6                               ! 0x6
	.word	__llvm_gcov_ctr.106
	.word	6                               ! 0x6
	.word	__llvm_gcov_ctr.107
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.108
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.109
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.110
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.111
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.112
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.113
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.114
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.115
	.word	2                               ! 0x2
	.word	__llvm_gcov_ctr.116
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.117
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.118
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.119
	.word	4                               ! 0x4
	.word	__llvm_gcov_ctr.120
	.word	8                               ! 0x8
	.word	__llvm_gcov_ctr.121
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.122
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.123
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.124
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.125
	.word	7                               ! 0x7
	.word	__llvm_gcov_ctr.126
	.word	4                               ! 0x4
	.word	__llvm_gcov_ctr.127
	.word	4                               ! 0x4
	.word	__llvm_gcov_ctr.128
	.word	8                               ! 0x8
	.word	__llvm_gcov_ctr.129
	.word	8                               ! 0x8
	.word	__llvm_gcov_ctr.130
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.131
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.132
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.133
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.134
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.135
	.word	5                               ! 0x5
	.word	__llvm_gcov_ctr.136
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.137
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.138
	.word	3                               ! 0x3
	.word	__llvm_gcov_ctr.139
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.140
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.141
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.142
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.143
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.144
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.145
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.146
	.word	4                               ! 0x4
	.word	__llvm_gcov_ctr.147
	.word	4                               ! 0x4
	.word	__llvm_gcov_ctr.148
	.word	5                               ! 0x5
	.word	__llvm_gcov_ctr.149
	.word	1                               ! 0x1
	.word	__llvm_gcov_ctr.150
	.size	__llvm_internal_gcov_emit_arcs_args.0, 1208

	.type	__llvm_internal_gcov_emit_file_info,@object ! @__llvm_internal_gcov_emit_file_info
	.p2align	4, 0x0
__llvm_internal_gcov_emit_file_info:
	.word	.L__unnamed_1
	.word	875575338                       ! 0x3430382a
	.word	3469251760                      ! 0xcec894b0
	.word	151                             ! 0x97
	.word	__llvm_internal_gcov_emit_function_args.0
	.word	__llvm_internal_gcov_emit_arcs_args.0
	.size	__llvm_internal_gcov_emit_file_info, 24

	.section	.init_array.0,"aw",@init_array
	.p2align	2, 0x0
	.word	__llvm_gcov_init
	.hidden	__llvm_profile_runtime
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
	.word	3815148669                      ! 0xfbc09422e3668c7d
	.word	4223702050
	.word	1334589160                      ! 0xc7a1f0194f8c36e8
	.word	3349278745
	.word	.L__profc_memmove-.L__profd_memmove
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_memmove, 48

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
	.word	3842140814                      ! 0xe9ec1dd5e5026a8e
	.word	3924565461
	.word	1246331992                      ! 0x43a044a498458
	.word	276996
	.word	.L__profc_memccpy-.L__profd_memccpy
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_memccpy, 48

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
	.word	503472520                       ! 0x4f3941a01e026188
	.word	1329152416
	.word	243340813                       ! 0x10e81160d
	.word	1
	.word	.L__profc_memchr-.L__profd_memchr
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_memchr, 48

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
	.word	3752101698                      ! 0xbf0ee54adfa48742
	.word	3205424458
	.word	243078669                       ! 0x10e7d160d
	.word	1
	.word	.L__profc_memcmp-.L__profd_memcmp
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_memcmp, 48

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
	.word	314430578                       ! 0x3607cad612bdd472
	.word	906480342
	.word	17496                           ! 0x4458
	.word	0
	.word	.L__profc_memcpy-.L__profd_memcpy
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_memcpy, 48

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
	.word	1963431520                      ! 0xf863ecbf75079660
	.word	4167298239
	.word	3529577560                      ! 0x8a7d2611458
	.word	2215
	.word	.L__profc_memrchr-.L__profd_memrchr
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_memrchr, 48

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
	.word	116615793                       ! 0xd9f3f85506f36a71
	.word	3656644693
	.word	17496                           ! 0x4458
	.word	0
	.word	.L__profc_memset-.L__profd_memset
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_memset, 48

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
	.word	2693264965                      ! 0x3dd2bf47a087f645
	.word	1037221703
	.word	17496                           ! 0x4458
	.word	0
	.word	.L__profc_stpcpy-.L__profd_stpcpy
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_stpcpy, 48

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
	.word	3359708469                      ! 0x45eedd8fc8411535
	.word	1173282191
	.word	70911064                        ! 0x43a0458
	.word	0
	.word	.L__profc_strchrnul-.L__profd_strchrnul
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strchrnul, 48

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
	.word	1273642115                      ! 0xb14ab4664bea3c83
	.word	2974463078
	.word	3529577560                      ! 0xca7d2611458
	.word	3239
	.word	.L__profc_strchr-.L__profd_strchr
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strchr, 48

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
	.word	53592868                        ! 0xe0f9b060331c324
	.word	235903750
	.word	70906968                        ! 0x439f458
	.word	0
	.word	.L__profc_strcmp-.L__profd_strcmp
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strcmp, 48

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
	.word	44553075                        ! 0x292647db02a7d373
	.word	690374619
	.word	17496                           ! 0x4458
	.word	0
	.word	.L__profc_strlen-.L__profd_strlen
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strlen, 48

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
	.word	1018521786                      ! 0xabebe6233cb568ba
	.word	2884363811
	.word	3409360719                      ! 0x6405aa43cb36b74f
	.word	1678092867
	.word	.L__profc_strncmp-.L__profd_strncmp
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	9                               ! 0x9
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strncmp, 48

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
	.word	63675239                        ! 0xe984c77503cb9b67
	.word	3917793141
	.word	18193                           ! 0x4711
	.word	0
	.word	.L__profc_swab-.L__profd_swab
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_swab, 48

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
	.word	4268055388                      ! 0xec27bc96fe655b5c
	.word	3962027158
	.word	1563                            ! 0x61b
	.word	0
	.word	.L__profc_isalpha-.L__profd_isalpha
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_isalpha, 48

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
	.word	3299371601                      ! 0xbd7e8203c4a86a51
	.word	3179184643
	.word	1562                            ! 0x61a
	.word	0
	.word	.L__profc_isascii-.L__profd_isascii
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_isascii, 48

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
	.word	2601843714                      ! 0x223626e59b14fc02
	.word	573974245
	.word	6354911                         ! 0x60f7df
	.word	0
	.word	.L__profc_isblank-.L__profd_isblank
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_isblank, 48

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
	.word	3367402719                      ! 0x7b7b182cc8b67cdf
	.word	2071664684
	.word	6354655                         ! 0x60f6df
	.word	0
	.word	.L__profc_iscntrl-.L__profd_iscntrl
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_iscntrl, 48

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
	.word	1824746341                      ! 0x30599a7e6cc36b65
	.word	811178622
	.word	1563                            ! 0x61b
	.word	0
	.word	.L__profc_isdigit-.L__profd_isdigit
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_isdigit, 48

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
	.word	2312090716                      ! 0xfe3bff7489cfb45c
	.word	4265344884
	.word	1563                            ! 0x61b
	.word	0
	.word	.L__profc_isgraph-.L__profd_isgraph
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_isgraph, 48

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
	.word	1158205281                      ! 0x681c66894508cf61
	.word	1746691721
	.word	1563                            ! 0x61b
	.word	0
	.word	.L__profc_islower-.L__profd_islower
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_islower, 48

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
	.word	341795750                       ! 0x9b074d56145f63a6
	.word	2600947030
	.word	1563                            ! 0x61b
	.word	0
	.word	.L__profc_isprint-.L__profd_isprint
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_isprint, 48

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
	.word	970391827                       ! 0x7d59641d39d70113
	.word	2103010333
	.word	6354907                         ! 0x60f7db
	.word	0
	.word	.L__profc_isspace-.L__profd_isspace
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_isspace, 48

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
	.word	3294401357                      ! 0x39ef9079c45c934d
	.word	972001401
	.word	1563                            ! 0x61b
	.word	0
	.word	.L__profc_isupper-.L__profd_isupper
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_isupper, 48

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
	.word	1638352188                      ! 0x6125eb3d61a7453c
	.word	1629875005
	.word	3480073947                      ! 0x60f3cf6db6db
	.word	24819
	.word	.L__profc_iswcntrl-.L__profd_iswcntrl
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_iswcntrl, 48

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
	.word	425265880                       ! 0x771f9e1919590ad8
	.word	1998560793
	.word	1563                            ! 0x61b
	.word	0
	.word	.L__profc_iswdigit-.L__profd_iswdigit
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_iswdigit, 48

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
	.word	1234441494                      ! 0xf603a04d49941516
	.word	4127432781
	.word	3816038944                      ! 0xdc635031e3742220
	.word	3697496113
	.word	.L__profc_iswprint-.L__profd_iswprint
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	10                              ! 0xa
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_iswprint, 48

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
	.word	4035185714                      ! 0x8aba28df0840c32
	.word	145465997
	.word	6354651                         ! 0x60f6db
	.word	0
	.word	.L__profc_iswxdigit-.L__profd_iswxdigit
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_iswxdigit, 48

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
	.word	2787418936                      ! 0x3f1e4f66a624a338
	.word	1058951014
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_toascii-.L__profd_toascii
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_toascii, 48

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
	.word	42400059                        ! 0xceca8a150286f93b
	.word	3469380117
	.word	698703480                       ! 0x6646f46a29a55e78
	.word	1715926122
	.word	.L__profc_fdim-.L__profd_fdim
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_fdim, 48

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
	.word	1666032008                      ! 0xea84dcc6634da188
	.word	3934575814
	.word	698703480                       ! 0x6646f46a29a55e78
	.word	1715926122
	.word	.L__profc_fdimf-.L__profd_fdimf
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_fdimf, 48

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
	.word	996492642                       ! 0xde5ced1d3b654562
	.word	3730631965
	.word	463263937                       ! 0x373422b91b9cd8c1
	.word	926163641
	.word	.L__profc_fmax-.L__profd_fmax
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	6                               ! 0x6
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_fmax, 48

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
	.word	2386403996                      ! 0xb8bfa0058e3da29c
	.word	3099566085
	.word	463263937                       ! 0x373422b91b9cd8c1
	.word	926163641
	.word	.L__profc_fmaxf-.L__profd_fmaxf
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	6                               ! 0x6
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_fmaxf, 48

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
	.word	3522938444                      ! 0xd471861cd1fbc64c
	.word	3564209692
	.word	463263937                       ! 0x373422b91b9cd8c1
	.word	926163641
	.word	.L__profc_fmaxl-.L__profd_fmaxl
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	6                               ! 0x6
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_fmaxl, 48

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
	.word	1265219729                      ! 0xd65e3074b69b891
	.word	224781063
	.word	463263937                       ! 0x373422b91b9cd8c1
	.word	926163641
	.word	.L__profc_fmin-.L__profd_fmin
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	6                               ! 0x6
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_fmin, 48

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
	.word	848075867                       ! 0x6b0021b0328c9c5b
	.word	1795170736
	.word	463263937                       ! 0x373422b91b9cd8c1
	.word	926163641
	.word	.L__profc_fminf-.L__profd_fminf
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	6                               ! 0x6
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_fminf, 48

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
	.word	1476992898                      ! 0x2285162058091f82
	.word	579147296
	.word	463263937                       ! 0x373422b91b9cd8c1
	.word	926163641
	.word	.L__profc_fminl-.L__profd_fminl
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	6                               ! 0x6
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_fminl, 48

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
	.word	3141852333                      ! 0xaa87bd26bb44dcad
	.word	2861022502
	.word	17496                           ! 0x4458
	.word	0
	.word	.L__profc_l64a-.L__profd_l64a
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_l64a, 48

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
	.word	1506720376                      ! 0xe30e668959ceba78
	.word	3809371785
	.word	0                               ! 0x0
	.word	0
	.word	.L__profc_srand-.L__profd_srand
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_srand, 48

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
	.word	1355010356                      ! 0x6401286350c3d134
	.word	1677797475
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_rand-.L__profd_rand
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rand, 48

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
	.word	3171658647                      ! 0xb97ef903bd0bab97
	.word	3112106243
	.word	2554635409                      ! 0x29a49844a491
	.word	10660
	.word	.L__profc_insque-.L__profd_insque
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_insque, 48

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
	.word	1424166850                      ! 0x9be1f18d54e30fc2
	.word	2615275917
	.word	2453972113                      ! 0x29244a491
	.word	2
	.word	.L__profc_remque-.L__profd_remque
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_remque, 48

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
	.word	4174077742                      ! 0x9e68c5caf8cb5f2e
	.word	2657666506
	.word	3529577560                      ! 0x46ca7d2611458
	.word	289959
	.word	.L__profc_lsearch-.L__profd_lsearch
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_lsearch, 48

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
	.word	817200365                       ! 0xa7df811e30b57ced
	.word	2816442654
	.word	3529577560                      ! 0x46ca7d2611458
	.word	289959
	.word	.L__profc_lfind-.L__profd_lfind
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_lfind, 48

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
	.word	90942713                        ! 0xfcb0ccbe056bacf9
	.word	4239445182
	.word	99164                           ! 0x1835c
	.word	0
	.word	.L__profc_abs-.L__profd_abs
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_abs, 48

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
	.word	2738380237                      ! 0xa52e4a4ba3385dcd
	.word	2771274315
	.word	134813197                       ! 0x244720809160d
	.word	148594
	.word	.L__profc_atoi-.L__profd_atoi
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_atoi, 48

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
	.word	4002377009                      ! 0x724cc634ee8f6d31
	.word	1917634100
	.word	134813197                       ! 0x244720809160d
	.word	148594
	.word	.L__profc_atol-.L__profd_atol
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_atol, 48

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
	.word	1906768237                      ! 0x32b4ee8971a6f96d
	.word	850718345
	.word	134813197                       ! 0x244720809160d
	.word	148594
	.word	.L__profc_atoll-.L__profd_atoll
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_atoll, 48

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
	.word	2054766654                      ! 0x796ea3837a79403e
	.word	2037293955
	.word	739949690                       ! 0xf42b29012c1abc7a
	.word	4096469249
	.word	.L__profc_bsearch-.L__profd_bsearch
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_bsearch, 48

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
	.word	2873519740                      ! 0x13aa8a38ab466e7c
	.word	329943608
	.word	2313468942                      ! 0x117a3a2689e4bc0e
	.word	293222950
	.word	.L__profc_bsearch_r-.L__profd_bsearch_r
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_bsearch_r, 48

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
	.word	1483041080                      ! 0x4c4998dc58656938
	.word	1279891676
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_div-.L__profd_div
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_div, 48

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
	.word	3004042905                      ! 0x7c28f3a3b30e0e99
	.word	2083058595
	.word	99164                           ! 0x1835c
	.word	0
	.word	.L__profc_imaxabs-.L__profd_imaxabs
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_imaxabs, 48

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
	.word	2640297140                      ! 0xc97b6cec9d5fbcb4
	.word	3380309228
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_imaxdiv-.L__profd_imaxdiv
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_imaxdiv, 48

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
	.word	3013844134                      ! 0x9d363762b3a39ca6
	.word	2637576034
	.word	99164                           ! 0x1835c
	.word	0
	.word	.L__profc_labs-.L__profd_labs
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_labs, 48

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
	.word	1948272233                      ! 0x633951ff74204669
	.word	1664700927
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_ldiv-.L__profd_ldiv
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_ldiv, 48

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
	.word	3146878658                      ! 0x6aa5dafebb918ec2
	.word	1789254398
	.word	99164                           ! 0x1835c
	.word	0
	.word	.L__profc_llabs-.L__profd_llabs
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_llabs, 48

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
	.word	1376157918                      ! 0xb60b082c520680de
	.word	3054176300
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_lldiv-.L__profd_lldiv
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_lldiv, 48

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
	.word	3278405344                      ! 0xe05c7c36c3687ee0
	.word	3764157494
	.word	243340813                       ! 0x10e81160d
	.word	1
	.word	.L__profc_wcschr-.L__profd_wcschr
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wcschr, 48

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
	.word	3443918992                      ! 0xcc82c5dbcd460890
	.word	3431122395
	.word	3512784604                      ! 0x438e7d160d6dc
	.word	276711
	.word	.L__profc_wcscmp-.L__profd_wcscmp
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wcscmp, 48

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
	.word	4141681258                      ! 0x8baf660af6dd0a6a
	.word	2343527946
	.word	9304                            ! 0x2458
	.word	0
	.word	.L__profc_wcscpy-.L__profd_wcscpy
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wcscpy, 48

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
	.word	3359154486                      ! 0x3759acd4c838a136
	.word	928623828
	.word	17496                           ! 0x4458
	.word	0
	.word	.L__profc_wcslen-.L__profd_wcslen
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wcslen, 48

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
	.word	3384850644                      ! 0xb4b5ef95c9c0b8d4
	.word	3031822229
	.word	4248202332                      ! 0x5d218431fd366c5c
	.word	1562477617
	.word	.L__profc_wcsncmp-.L__profd_wcsncmp
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	10                              ! 0xa
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wcsncmp, 48

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
	.word	1528125668                      ! 0xfde7d69b5b1558e4
	.word	4259829403
	.word	243340813                       ! 0x10e81160d
	.word	1
	.word	.L__profc_wmemchr-.L__profd_wmemchr
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wmemchr, 48

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
	.word	84788312                        ! 0x4abf86f3050dc458
	.word	1254065907
	.word	1479857884                      ! 0x439f45834d6dc
	.word	276980
	.word	.L__profc_wmemcmp-.L__profd_wmemcmp
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	6                               ! 0x6
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wmemcmp, 48

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
	.word	2637215827                      ! 0x65ab5c0b9d30b853
	.word	1705729035
	.word	9304                            ! 0x2458
	.word	0
	.word	.L__profc_wmemcpy-.L__profd_wmemcpy
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wmemcpy, 48

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
	.word	1772334517                      ! 0xbf56752a69a3adb5
	.word	3210114346
	.word	3244734756                      ! 0xeb2e3281c166b924
	.word	3945673345
	.word	.L__profc_wmemmove-.L__profd_wmemmove
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wmemmove, 48

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
	.word	4064618063                      ! 0x8ceff224f245264f
	.word	2364535332
	.word	9304                            ! 0x2458
	.word	0
	.word	.L__profc_wmemset-.L__profd_wmemset
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_wmemset, 48

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
	.word	1054661432                      ! 0x8b5328de3edcdb38
	.word	2337482974
	.word	975013403                       ! 0x48a34b333a1d861b
	.word	1218661171
	.word	.L__profc_bcopy-.L__profd_bcopy
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_bcopy, 48

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
	.word	2229826992                      ! 0x416ddc4e84e875b0
	.word	1097718862
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_rotl64-.L__profd_rotl64
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotl64, 48

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
	.word	2326512589                      ! 0x8b0aff7e8aabc3cd
	.word	2332753790
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_rotr64-.L__profd_rotr64
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotr64, 48

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
	.word	3626627460                      ! 0x5910447ed829f184
	.word	1494238334
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_rotl32-.L__profd_rotl32
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotl32, 48

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
	.word	3418479684                      ! 0xb153fe21cbc1dc44
	.word	2975071777
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_rotr32-.L__profd_rotr32
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotr32, 48

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
	.word	3086541338                      ! 0xccd67b43b7f8e21a
	.word	3436608323
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_rotl_sz-.L__profd_rotl_sz
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotl_sz, 48

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
	.word	2553665156                      ! 0x2f664ae29835d684
	.word	795232994
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_rotr_sz-.L__profd_rotr_sz
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotr_sz, 48

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
	.word	244555557                       ! 0x65af538b0e939f25
	.word	1705989003
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_rotl16-.L__profd_rotl16
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotl16, 48

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
	.word	3877440124                      ! 0x4933b9afe71d0a7c
	.word	1228126639
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_rotr16-.L__profd_rotr16
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotr16, 48

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
	.word	655336000                       ! 0x3d2ddd93270fa240
	.word	1026416019
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_rotl8-.L__profd_rotl8
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotl8, 48

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
	.word	1493665568                      ! 0xa54c2aea59078720
	.word	2773232362
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_rotr8-.L__profd_rotr8
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_rotr8, 48

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
	.word	1268401773                      ! 0x84e47ce04b9a466d
	.word	2229566688
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_bswap_16-.L__profd_bswap_16
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_bswap_16, 48

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
	.word	452808988                       ! 0x655ffb691afd511c
	.word	1700789097
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_bswap_32-.L__profd_bswap_32
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_bswap_32, 48

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
	.word	475245398                       ! 0x27e1fd2c1c53ab56
	.word	669121836
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_bswap_64-.L__profd_bswap_64
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_bswap_64, 48

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
	.word	1440366139                      ! 0x7ffbbb6955da3e3b
	.word	2147203945
	.word	2455835736                      ! 0x11b292611458
	.word	4530
	.word	.L__profc_ffs-.L__profd_ffs
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_ffs, 48

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
	.word	2840574905                      ! 0xe7b1a8a94fbbb9
	.word	15184296
	.word	286368856                       ! 0xa7d261111a458
	.word	687398
	.word	.L__profc_libiberty_ffs-.L__profd_libiberty_ffs
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_libiberty_ffs, 48

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
	.word	3010385274                      ! 0x5ab10580b36ed57a
	.word	1521550720
	.word	6354652                         ! 0x60f6dc
	.word	0
	.word	.L__profc_gl_isinff-.L__profd_gl_isinff
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_gl_isinff, 48

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
	.word	444377658                       ! 0x80cc28161a7caa3a
	.word	2160863254
	.word	6354652                         ! 0x60f6dc
	.word	0
	.word	.L__profc_gl_isinfd-.L__profd_gl_isinfd
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_gl_isinfd, 48

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
	.word	2943121403                      ! 0x41a874c2af6c77fb
	.word	1101558978
	.word	6354652                         ! 0x60f6dc
	.word	0
	.word	.L__profc_gl_isinfl-.L__profd_gl_isinfl
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_gl_isinfl, 48

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
	.word	1257874239                      ! 0xca752ed84af9a33f
	.word	3396677336
	.word	0                               ! 0x0
	.word	0
	.word	.L__profc__Qp_itoq-.L__profd__Qp_itoq
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd__Qp_itoq, 48

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
	.word	539537125                       ! 0xdc76cdf42028aee5
	.word	3698773492
	.word	14241369                        ! 0xe392b7c600d94e59
	.word	3818043334
	.word	.L__profc_ldexpf-.L__profd_ldexpf
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	8                               ! 0x8
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_ldexpf, 48

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
	.word	3111827691                      ! 0xfca965e7b97ab8eb
	.word	4238960103
	.word	14241369                        ! 0xe392b7c600d94e59
	.word	3818043334
	.word	.L__profc_ldexp-.L__profd_ldexp
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	8                               ! 0x8
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_ldexp, 48

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
	.word	178812135                       ! 0xb942e25c0aa874e7
	.word	3108168284
	.word	14241369                        ! 0xe392b7c600d94e59
	.word	3818043334
	.word	.L__profc_ldexpl-.L__profd_ldexpl
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	8                               ! 0x8
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_ldexpl, 48

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
	.word	2128235242                      ! 0x8bdecd417eda4aea
	.word	2346634561
	.word	1164376                         ! 0x11c458
	.word	0
	.word	.L__profc_memxor-.L__profd_memxor
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_memxor, 48

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
	.word	2636207119                      ! 0xce4875d49d21540f
	.word	3460855252
	.word	1249715288                      ! 0x10e72044a7d2458
	.word	17723908
	.word	.L__profc_strncat-.L__profd_strncat
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strncat, 48

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
	.word	3690601605                      ! 0x72eda14dbfa1c85
	.word	120510996
	.word	242054232                       ! 0x10e6d7458
	.word	1
	.word	.L__profc_strnlen-.L__profd_strnlen
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strnlen, 48

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
	.word	1100202522                      ! 0xa0b33fed4193c21a
	.word	2696101869
	.word	84945426                        ! 0xc250e3b905102a12
	.word	3260081081
	.word	.L__profc_strpbrk-.L__profd_strpbrk
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strpbrk, 48

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
	.word	1003970063                      ! 0x49a93a493bd75e0f
	.word	1235827273
	.word	2672366680                      ! 0x329f491458
	.word	50
	.word	.L__profc_strrchr-.L__profd_strrchr
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strrchr, 48

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
	.word	1946130763                      ! 0x3169a8a873ff994b
	.word	829008040
	.word	4193384452                      ! 0x93c6fcaef9f1f804
	.word	2479291566
	.word	.L__profc_strstr-.L__profd_strstr
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_strstr, 48

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
	.word	3933621461                      ! 0x82096d47ea764cd5
	.word	2181655879
	.word	1176019055                      ! 0x3a4ce3834618a06f
	.word	978117507
	.word	.L__profc_copysign-.L__profd_copysign
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_copysign, 48

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
	.word	1482351504                      ! 0x981e4a4b585ae390
	.word	2552121931
	.word	2121957956                      ! 0x4c7092d27e7a8244
	.word	1282446034
	.word	.L__profc_memmem-.L__profd_memmem
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_memmem, 48

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
	.word	252779458                       ! 0xf5f7b7020f111bc2
	.word	4126652162
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc_mempcpy-.L__profd_mempcpy
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_mempcpy, 48

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
	.word	471787407                       ! 0xd667ea2e1c1ee78f
	.word	3597134382
	.word	1008144312                      ! 0xdf0ea1753c170fb8
	.word	3742278005
	.word	.L__profc_frexp-.L__profd_frexp
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	9                               ! 0x9
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_frexp, 48

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
	.word	2949618840                      ! 0x3755a22cafcf9c98
	.word	928358956
	.word	2320045144                      ! 0x8a491458
	.word	0
	.word	.L__profc___muldi3-.L__profd___muldi3
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___muldi3, 48

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
	.word	1024966285                      ! 0x40d2210e3d17be8d
	.word	1087512846
	.word	1651402066                      ! 0xbb200b8626e6552
	.word	196214968
	.word	.L__profc_udivmodsi4-.L__profd_udivmodsi4
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	9                               ! 0x9
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd_udivmodsi4, 48

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
	.word	921962090                       ! 0x92f2490d36f4066a
	.word	2465351949
	.word	2672395352                      ! 0x29b49129f498458
	.word	43731218
	.word	.L__profc___clrsbqi2-.L__profd___clrsbqi2
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___clrsbqi2, 48

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
	.word	1877498071                      ! 0xeab85aaa6fe858d7
	.word	3937950378
	.word	2672395352                      ! 0x29b49129f498458
	.word	43731218
	.word	.L__profc___clrsbdi2-.L__profd___clrsbdi2
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___clrsbdi2, 48

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
	.word	808585471                       ! 0x472924cf303208ff
	.word	1193878735
	.word	2320045144                      ! 0x8a491458
	.word	0
	.word	.L__profc___mulsi3-.L__profd___mulsi3
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___mulsi3, 48

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
	.word	553465352                       ! 0x143d4c6520fd3608
	.word	339561573
	.word	1219219495                      ! 0xa70727df48abd027
	.word	2802264031
	.word	.L__profc___cmovd-.L__profd___cmovd
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___cmovd, 48

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
	.word	1199450638                      ! 0xeec99ab9477e2a0e
	.word	4006189753
	.word	2696688615                      ! 0x2b706930a0bc33e7
	.word	728787248
	.word	.L__profc___cmovh-.L__profd___cmovh
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___cmovh, 48

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
	.word	1785275052                      ! 0xa3f7772d6a6922ac
	.word	2750904109
	.word	1219219495                      ! 0xa70727df48abd027
	.word	2802264031
	.word	.L__profc___cmovw-.L__profd___cmovw
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___cmovw, 48

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
	.word	3464656561                      ! 0x3951c3b1ce8276b1
	.word	961659825
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc___modi-.L__profd___modi
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___modi, 48

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
	.word	2493213220                      ! 0xcb5bf4b0949b6a24
	.word	3411801264
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc___uitod-.L__profd___uitod
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___uitod, 48

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
	.word	3986234038                      ! 0x253fdbc7ed991ab6
	.word	624942023
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc___uitof-.L__profd___uitof
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___uitof, 48

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
	.word	4219734726                      ! 0x377213c0fb840ac6
	.word	930223040
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc___ulltod-.L__profd___ulltod
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___ulltod, 48

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
	.word	2547710861                      ! 0xe58a8e7e97dafb8d
	.word	3851062910
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc___ulltof-.L__profd___ulltof
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___ulltof, 48

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
	.word	1073703930                      ! 0x5567a7893fff6bfa
	.word	1432856457
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc___umodi-.L__profd___umodi
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___umodi, 48

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
	.word	1526022046                      ! 0x8005edb05af53f9e
	.word	2147872176
	.word	2455311448                      ! 0x11b292591458
	.word	4530
	.word	.L__profc___clzhi2-.L__profd___clzhi2
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___clzhi2, 48

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
	.word	3617218592                      ! 0xea391231d79a6020
	.word	3929608753
	.word	2455311448                      ! 0x11b292591458
	.word	4530
	.word	.L__profc___ctzhi2-.L__profd___ctzhi2
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___ctzhi2, 48

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
	.word	651704643                       ! 0x93bf2a7226d83943
	.word	2478778994
	.word	2655618136                      ! 0x29e498458
	.word	2
	.word	.L__profc___fixunssfsi-.L__profd___fixunssfsi
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	2                               ! 0x2
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___fixunssfsi, 48

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
	.word	1595267545                      ! 0x10b5167d5f15d9d9
	.word	280303229
	.word	3393786968                      ! 0x46ca491458
	.word	70
	.word	.L__profc___parityhi2-.L__profd___parityhi2
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___parityhi2, 48

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
	.word	3021313414                      ! 0x36b9214fb4159586
	.word	918102351
	.word	3393786968                      ! 0x46ca491458
	.word	70
	.word	.L__profc___popcounthi2-.L__profd___popcounthi2
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___popcounthi2, 48

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
	.word	2418545684                      ! 0xc8d127b190281414
	.word	3369150385
	.word	172561496                       ! 0x280a491458
	.word	40
	.word	.L__profc___mulsi3_iq2000-.L__profd___mulsi3_iq2000
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___mulsi3_iq2000, 48

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
	.word	3669051597                      ! 0x26851843dab148cd
	.word	646256707
	.word	903869171                       ! 0xa9cf36c835dff2f3
	.word	2848929480
	.word	.L__profc___mulsi3_lm32-.L__profd___mulsi3_lm32
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___mulsi3_lm32, 48

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
	.word	3214998610                      ! 0xa2bc61cdbfa0fc52
	.word	2730254797
	.word	1651402066                      ! 0xbb200b8626e6552
	.word	196214968
	.word	.L__profc___udivmodsi4-.L__profd___udivmodsi4
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	9                               ! 0x9
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___udivmodsi4, 48

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
	.word	4012873975                      ! 0x58d08e7bef2f98f7
	.word	1490062971
	.word	3971983684                      ! 0x12c573c0ecbfa944
	.word	314930112
	.word	.L__profc___mspabi_cmpf-.L__profd___mspabi_cmpf
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___mspabi_cmpf, 48

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
	.word	3823668329                      ! 0xafd9d1e3e3e88c69
	.word	2950287843
	.word	3971983684                      ! 0x12c573c0ecbfa944
	.word	314930112
	.word	.L__profc___mspabi_cmpd-.L__profd___mspabi_cmpd
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___mspabi_cmpd, 48

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
	.word	4195771941                      ! 0xfb03c3bdfa166625
	.word	4211327933
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc___mspabi_mpysll-.L__profd___mspabi_mpysll
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___mspabi_mpysll, 48

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
	.word	3324675637                      ! 0x5c01e284c62a8635
	.word	1543627396
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc___mspabi_mpyull-.L__profd___mspabi_mpyull
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___mspabi_mpyull, 48

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
	.word	1556531068                      ! 0xbf2a9dde5cc6c77c
	.word	3207241182
	.word	2703778695                      ! 0xb568b86aa1286387
	.word	3043539050
	.word	.L__profc___mulhi3-.L__profd___mulhi3
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	7                               ! 0x7
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___mulhi3, 48

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
	.word	296414084                       ! 0x4e26dd1711aaeb84
	.word	1311169815
	.word	1867459201                      ! 0x715edbe6f4f2a81
	.word	118877630
	.word	.L__profc___divsi3-.L__profd___divsi3
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___divsi3, 48

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
	.word	1312834626                      ! 0x8328dd9f4e404442
	.word	2200493471
	.word	2245965411                      ! 0x1d6fb85985deb663
	.word	493860953
	.word	.L__profc___modsi3-.L__profd___modsi3
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	4                               ! 0x4
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___modsi3, 48

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
	.word	3037779362                      ! 0x1f1bdf8db510d5a2
	.word	521920397
	.word	1651402066                      ! 0xbb200b8626e6552
	.word	196214968
	.word	.L__profc___udivmodhi4-.L__profd___udivmodhi4
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	9                               ! 0x9
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___udivmodhi4, 48

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
	.word	3532769019                      ! 0xeb670aedd291c6fb
	.word	3949398765
	.word	1651402066                      ! 0xbb200b8626e6552
	.word	196214968
	.word	.L__profc___udivmodsi4_libgcc-.L__profd___udivmodsi4_libgcc
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	9                               ! 0x9
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___udivmodsi4_libgcc, 48

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
	.word	978704463                       ! 0x339d4a983a55d84f
	.word	865946264
	.word	3529577560                      ! 0x2924ca7d2611458
	.word	43142311
	.word	.L__profc___ashldi3-.L__profd___ashldi3
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___ashldi3, 48

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
	.word	3990118094                      ! 0xe63f2ae7edd45ece
	.word	3862899431
	.word	3529577560                      ! 0x2924ca7d2611458
	.word	43142311
	.word	.L__profc___ashrdi3-.L__profd___ashrdi3
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___ashrdi3, 48

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
	.word	2913318844                      ! 0x7ef907d7ada5b7bc
	.word	2130249687
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc___bswapdi2-.L__profd___bswapdi2
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___bswapdi2, 48

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
	.word	4268972970                      ! 0xd129c8a2fe735baa
	.word	3509176482
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc___bswapsi2-.L__profd___bswapsi2
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___bswapsi2, 48

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
	.word	847417603                       ! 0x1330458b32829103
	.word	321930635
	.word	3749574175                      ! 0x7df7df61f
	.word	7
	.word	.L__profc___clzsi2-.L__profd___clzsi2
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___clzsi2, 48

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
	.word	2900396552                      ! 0xb3ad5632ace08a08
	.word	3014481458
	.word	1422139388                      ! 0x993642a254c41ffc
	.word	2570470050
	.word	.L__profc___cmpdi2-.L__profd___cmpdi2
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___cmpdi2, 48

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
	.word	1053938860                      ! 0x6215aec83ed1d4ac
	.word	1645588168
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc___aeabi_lcmp-.L__profd___aeabi_lcmp
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___aeabi_lcmp, 48

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
	.word	1006971543                      ! 0xb3a5ef643c052a97
	.word	3013996388
	.word	3749574175                      ! 0x7df7df61f
	.word	7
	.word	.L__profc___ctzsi2-.L__profd___ctzsi2
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___ctzsi2, 48

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
	.word	471342677                       ! 0x2518bb1c181e55
	.word	2431163
	.word	3529577560                      ! 0x2924ca7d2611458
	.word	43142311
	.word	.L__profc___lshrdi3-.L__profd___lshrdi3
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	3                               ! 0x3
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___lshrdi3, 48

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
	.word	2728610976                      ! 0x42031a08a2a34ca0
	.word	1107499528
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc___muldsi3-.L__profd___muldsi3
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___muldsi3, 48

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
	.word	3866746773                      ! 0xf5c319bbe679df95
	.word	4123204027
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc___muldi3_compiler_rt-.L__profd___muldi3_compiler_rt
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___muldi3_compiler_rt, 48

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
	.word	3064379771                      ! 0xd9312c7bb6a6b97b
	.word	3643878523
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc___negdi2-.L__profd___negdi2
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___negdi2, 48

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
	.word	1043989739                      ! 0xb92eea643e3a04eb
	.word	3106859620
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc___paritydi2-.L__profd___paritydi2
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___paritydi2, 48

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
	.word	2433766622                      ! 0x75e730a6911054de
	.word	1978085542
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc___paritysi2-.L__profd___paritysi2
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___paritysi2, 48

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
	.word	220067820                       ! 0x3c43a5910d1df7ec
	.word	1011066257
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc___popcountdi2-.L__profd___popcountdi2
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___popcountdi2, 48

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
	.word	1866676599                      ! 0xe22c3cbb6f433977
	.word	3794549947
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc___popcountsi2-.L__profd___popcountsi2
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___popcountsi2, 48

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
	.word	3451548981                      ! 0xe7adb92dcdba7535
	.word	3886922029
	.word	3026146526                      ! 0xbc6e6995b45f54de
	.word	3161352597
	.word	.L__profc___powidf2-.L__profd___powidf2
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___powidf2, 48

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
	.word	3233246232                      ! 0xcb298a26c0b76c18
	.word	3408497190
	.word	3026146526                      ! 0xbc6e6995b45f54de
	.word	3161352597
	.word	.L__profc___powisf2-.L__profd___powisf2
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___powisf2, 48

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
	.word	627836813                       ! 0xe3a10322256c078d
	.word	3818980130
	.word	1422139388                      ! 0x993642a254c41ffc
	.word	2570470050
	.word	.L__profc___ucmpdi2-.L__profd___ucmpdi2
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	5                               ! 0x5
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___ucmpdi2, 48

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
	.word	2182691887                      ! 0x639ff8782193c2f
	.word	104464263
	.word	24                              ! 0x18
	.word	0
	.word	.L__profc___aeabi_ulcmp-.L__profd___aeabi_ulcmp
	.word	0                               ! 0x0
	.word	0
	.word	0
	.word	1                               ! 0x1
	.skip	6
	.skip	2
	.word	0                               ! 0x0
	.size	.L__profd___aeabi_ulcmp, 48

	.type	.L__llvm_prf_nm,@object         ! @__llvm_prf_nm
	.section	__llvm_prf_names,"aR",@progbits,unique,1
.L__llvm_prf_nm:
	.ascii	"\225\n\246\004x\332]\223\tn\3430\fE\241\033e\222\242\3505\346\004\206\254%&J-\221\344*\355\351\207\244\344\244\031\300\340\373\244VRtp!\244/\247\202\013\306\344o\341V\004!\013F\260\314huM\325\2269Z\033\007\343\216S\th\021\001]dDq\273^\025T\215y\323\314j\000\210+\352\370I4\221\246\023-\\\241\021\257E\347\215\210\251\273B\314\005\"\307k\326\306\021\367\234%\336\217\205\375X\331\217\251\375>B-\215\303\274\205 \306+\037\364]\314\220H\026\242\030/\026\025\276\277iU\213\216V\211\201Xo\273S\305\005\006V\247)W\205\036hL\257U\351\226\200\r\212A\265\316\031\223KQ\026\276\024\320a<\233\311>\262\203\242\206\024\335M\345:2\250p\f*3\201\313I\220r\366\371B}>Q\237o\304\224\227\354\363\225V\223(\\R\243\214\030e\000/g\361\006p\251?\342N\342\237wq\007\360C\234\017J\246\353\274Pp\bZ;\004m\351=\335\036VX]i\337\013{W\\\240RA\375C\331\207B\265\374\315\013\264t\243\354\335=\373\201a\221\033\354\236\312h\035\335\204\263\225\362Z>\231G\243\321\2478\301\n\327\310\313\350cHc\372\302[.K\330\251\252\027\265SiC\262\025\336(f\260\324\365\006\347CZ\2214\263\322L\212Q\t\355\3446\331yB\262@\330\351\346v\3223\021g\200\205D\346L\203?\3338\245M\341\341\276\307Z}\345\341\254\013\264\3571\220S6i\217m\373u\225\005n\347\323\351\364\3641\\x\364%\227@\377\304\nt\307\354_<\373\364\002U\210\232\362\267\277\017\177\307M2\246\rG\352\262\355\345y\306&g<\017\\\350\225\257\306PL\327M\n+\252\f%\3750\212)\262\316\022\377L\021\346\240v|\r\344\316\225\332\214a|\354\303oV\037\212\0227)d@W\226\322(\030\335u\3543\n\370[\327\227b\332\027\357\030\353`\375\241\252\250\375\277\233\355|\265\177\337\f\323w"
	.size	.L__llvm_prf_nm, 554

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
	.addrsig_sym __llvm_profile_runtime
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
	.addrsig_sym .L__profc___ashrdi3
	.addrsig_sym .L__profd___ashrdi3
	.addrsig_sym .L__profc___bswapdi2
	.addrsig_sym .L__profd___bswapdi2
	.addrsig_sym .L__profc___bswapsi2
	.addrsig_sym .L__profd___bswapsi2
	.addrsig_sym .L__profc___clzsi2
	.addrsig_sym .L__profd___clzsi2
	.addrsig_sym .L__profc___cmpdi2
	.addrsig_sym .L__profd___cmpdi2
	.addrsig_sym .L__profc___aeabi_lcmp
	.addrsig_sym .L__profd___aeabi_lcmp
	.addrsig_sym .L__profc___ctzsi2
	.addrsig_sym .L__profd___ctzsi2
	.addrsig_sym .L__profc___lshrdi3
	.addrsig_sym .L__profd___lshrdi3
	.addrsig_sym .L__profc___muldsi3
	.addrsig_sym .L__profd___muldsi3
	.addrsig_sym .L__profc___muldi3_compiler_rt
	.addrsig_sym .L__profd___muldi3_compiler_rt
	.addrsig_sym .L__profc___negdi2
	.addrsig_sym .L__profd___negdi2
	.addrsig_sym .L__profc___paritydi2
	.addrsig_sym .L__profd___paritydi2
	.addrsig_sym .L__profc___paritysi2
	.addrsig_sym .L__profd___paritysi2
	.addrsig_sym .L__profc___popcountdi2
	.addrsig_sym .L__profd___popcountdi2
	.addrsig_sym .L__profc___popcountsi2
	.addrsig_sym .L__profd___popcountsi2
	.addrsig_sym .L__profc___powidf2
	.addrsig_sym .L__profd___powidf2
	.addrsig_sym .L__profc___powisf2
	.addrsig_sym .L__profd___powisf2
	.addrsig_sym .L__profc___ucmpdi2
	.addrsig_sym .L__profd___ucmpdi2
	.addrsig_sym .L__profc___aeabi_ulcmp
	.addrsig_sym .L__profd___aeabi_ulcmp
	.addrsig_sym .L__llvm_prf_nm
