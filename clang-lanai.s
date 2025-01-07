	.text
	.file	"mini-libc.c"
	.globl	memmove                         ! -- Begin function memmove
	.p2align	2
	.type	memmove,@function
memmove:                                ! @memmove
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	ld	-12[%fp], %r3
	st	%r3, -24[%fp]
	ld	-16[%fp], %r3
	st	%r3, -28[%fp]
	ld	-28[%fp], %r3
	ld	-24[%fp], %r9
	sub.f	%r3, %r9, %r0
	buge	.LBB0_6
	sub	%sp, 0x20, %sp
	bt	.LBB0_1
	nop
.LBB0_1:
	ld	-20[%fp], %r9
	ld	-28[%fp], %r3
	add	%r3, %r9, %r3
	st	%r3, -28[%fp]
	ld	-20[%fp], %r9
	ld	-24[%fp], %r3
	add	%r3, %r9, %r3
	bt	.LBB0_2
	st	%r3, -24[%fp]
.LBB0_2:                                ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB0_5
	nop
	bt	.LBB0_3
	nop
.LBB0_3:                                !   in Loop: Header=BB0_2 Depth=1
	ld	-28[%fp], %r3
	sub	%r3, 0x1, %r9
	st	%r9, -28[%fp]
	uld.b	-1[%r3], %r3
	ld	-24[%fp], %r9
	sub	%r9, 0x1, %r12
	st	%r12, -24[%fp]
	bt	.LBB0_4
	st.b	%r3, -1[%r9]
.LBB0_4:                                !   in Loop: Header=BB0_2 Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r3
	bt	.LBB0_2
	st	%r3, -20[%fp]
.LBB0_5:
	bt	.LBB0_13
	nop
.LBB0_6:
	ld	-28[%fp], %r3
	ld	-24[%fp], %r9
	sub.f	%r3, %r9, %r0
	beq	.LBB0_12
	nop
	bt	.LBB0_7
	nop
.LBB0_7:
	bt	.LBB0_8
	nop
.LBB0_8:                                ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB0_11
	nop
	bt	.LBB0_9
	nop
.LBB0_9:                                !   in Loop: Header=BB0_8 Depth=1
	ld	-28[%fp], %r3
	add	%r3, 0x1, %r9
	st	%r9, -28[%fp]
	uld.b	0[%r3], %r3
	ld	-24[%fp], %r9
	add	%r9, 0x1, %r12
	st	%r12, -24[%fp]
	bt	.LBB0_10
	st.b	%r3, 0[%r9]
.LBB0_10:                               !   in Loop: Header=BB0_8 Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r3
	bt	.LBB0_8
	st	%r3, -20[%fp]
.LBB0_11:
	bt	.LBB0_12
	nop
.LBB0_12:
	bt	.LBB0_13
	nop
.LBB0_13:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end0:
	.size	memmove, .Lfunc_end0-memmove
                                        ! -- End function
	.globl	memccpy                         ! -- Begin function memccpy
	.p2align	2
	.type	memccpy,@function
memccpy:                                ! @memccpy
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x28, %sp
	st	%r6, -16[%fp]
	st	%r7, -20[%fp]
	st	%r18, -24[%fp]
	st	%r19, -28[%fp]
	ld	-16[%fp], %r3
	st	%r3, -32[%fp]
	ld	-20[%fp], %r3
	st	%r3, -36[%fp]
	sub	%fp, 0x18, %r3
	or	%r3, 0x3, %r3
	uld.b	0[%r3], %r3
	bt	.LBB1_1
	st	%r3, -24[%fp]
.LBB1_1:                                ! =>This Inner Loop Header: Depth=1
	ld	-28[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB1_3
	st	%r3, -40[%fp]
	bt	.LBB1_2
	nop
.LBB1_2:                                !   in Loop: Header=BB1_1 Depth=1
	ld	-36[%fp], %r3
	uld.b	0[%r3], %r3
	ld	-32[%fp], %r9
	st.b	%r3, 0[%r9]
	ld	-24[%fp], %r9
	sub.f	%r3, %r9, %r0
	sne	%r3
	bt	.LBB1_3
	st	%r3, -40[%fp]
.LBB1_3:                                !   in Loop: Header=BB1_1 Depth=1
	ld	-40[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB1_6
	nop
	bt	.LBB1_4
	nop
.LBB1_4:                                !   in Loop: Header=BB1_1 Depth=1
	bt	.LBB1_5
	nop
.LBB1_5:                                !   in Loop: Header=BB1_1 Depth=1
	ld	-28[%fp], %r3
	sub	%r3, 0x1, %r3
	st	%r3, -28[%fp]
	ld	-36[%fp], %r3
	add	%r3, 0x1, %r3
	st	%r3, -36[%fp]
	ld	-32[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB1_1
	st	%r3, -32[%fp]
.LBB1_6:
	ld	-28[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB1_8
	nop
	bt	.LBB1_7
	nop
.LBB1_7:
	ld	-32[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB1_9
	st	%r3, -12[%fp]
.LBB1_8:
	or	%r0, 0x0, %r3
	bt	.LBB1_9
	st	%r3, -12[%fp]
.LBB1_9:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end1:
	.size	memccpy, .Lfunc_end1-memccpy
                                        ! -- End function
	.globl	memchr                          ! -- Begin function memchr
	.p2align	2
	.type	memchr,@function
memchr:                                 ! @memchr
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	ld	-12[%fp], %r3
	st	%r3, -24[%fp]
	sub	%fp, 0x10, %r3
	or	%r3, 0x3, %r3
	uld.b	0[%r3], %r3
	bt	.LBB2_1
	st	%r3, -16[%fp]
.LBB2_1:                                ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB2_3
	st	%r3, -28[%fp]
	bt	.LBB2_2
	nop
.LBB2_2:                                !   in Loop: Header=BB2_1 Depth=1
	ld	-24[%fp], %r3
	uld.b	0[%r3], %r3
	ld	-16[%fp], %r9
	sub.f	%r3, %r9, %r0
	sne	%r3
	bt	.LBB2_3
	st	%r3, -28[%fp]
.LBB2_3:                                !   in Loop: Header=BB2_1 Depth=1
	ld	-28[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB2_6
	nop
	bt	.LBB2_4
	nop
.LBB2_4:                                !   in Loop: Header=BB2_1 Depth=1
	bt	.LBB2_5
	nop
.LBB2_5:                                !   in Loop: Header=BB2_1 Depth=1
	ld	-24[%fp], %r3
	add	%r3, 0x1, %r3
	st	%r3, -24[%fp]
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r3
	bt	.LBB2_1
	st	%r3, -20[%fp]
.LBB2_6:
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB2_8
	nop
	bt	.LBB2_7
	nop
.LBB2_7:
	ld	-24[%fp], %r3
	bt	.LBB2_9
	st	%r3, -32[%fp]
.LBB2_8:
	or	%r0, 0x0, %r3
	bt	.LBB2_9
	st	%r3, -32[%fp]
.LBB2_9:
	ld	-32[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end2:
	.size	memchr, .Lfunc_end2-memchr
                                        ! -- End function
	.globl	memcmp                          ! -- Begin function memcmp
	.p2align	2
	.type	memcmp,@function
memcmp:                                 ! @memcmp
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x28, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	ld	-12[%fp], %r3
	st	%r3, -24[%fp]
	ld	-16[%fp], %r3
	bt	.LBB3_1
	st	%r3, -28[%fp]
.LBB3_1:                                ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB3_3
	st	%r3, -32[%fp]
	bt	.LBB3_2
	nop
.LBB3_2:                                !   in Loop: Header=BB3_1 Depth=1
	ld	-24[%fp], %r3
	uld.b	0[%r3], %r3
	ld	-28[%fp], %r9
	uld.b	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	seq	%r3
	bt	.LBB3_3
	st	%r3, -32[%fp]
.LBB3_3:                                !   in Loop: Header=BB3_1 Depth=1
	ld	-32[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB3_6
	nop
	bt	.LBB3_4
	nop
.LBB3_4:                                !   in Loop: Header=BB3_1 Depth=1
	bt	.LBB3_5
	nop
.LBB3_5:                                !   in Loop: Header=BB3_1 Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r3
	st	%r3, -20[%fp]
	ld	-24[%fp], %r3
	add	%r3, 0x1, %r3
	st	%r3, -24[%fp]
	ld	-28[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB3_1
	st	%r3, -28[%fp]
.LBB3_6:
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB3_8
	nop
	bt	.LBB3_7
	nop
.LBB3_7:
	ld	-24[%fp], %r3
	uld.b	0[%r3], %r3
	ld	-28[%fp], %r9
	uld.b	0[%r9], %r9
	sub	%r3, %r9, %r3
	bt	.LBB3_9
	st	%r3, -36[%fp]
.LBB3_8:
	or	%r0, 0x0, %r3
	bt	.LBB3_9
	st	%r3, -36[%fp]
.LBB3_9:
	ld	-36[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end3:
	.size	memcmp, .Lfunc_end3-memcmp
                                        ! -- End function
	.globl	memcpy                          ! -- Begin function memcpy
	.p2align	2
	.type	memcpy,@function
memcpy:                                 ! @memcpy
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	ld	-12[%fp], %r3
	st	%r3, -24[%fp]
	ld	-16[%fp], %r3
	bt	.LBB4_1
	st	%r3, -28[%fp]
.LBB4_1:                                ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB4_4
	nop
	bt	.LBB4_2
	nop
.LBB4_2:                                !   in Loop: Header=BB4_1 Depth=1
	ld	-28[%fp], %r3
	add	%r3, 0x1, %r9
	st	%r9, -28[%fp]
	uld.b	0[%r3], %r3
	ld	-24[%fp], %r9
	add	%r9, 0x1, %r12
	st	%r12, -24[%fp]
	bt	.LBB4_3
	st.b	%r3, 0[%r9]
.LBB4_3:                                !   in Loop: Header=BB4_1 Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r3
	bt	.LBB4_1
	st	%r3, -20[%fp]
.LBB4_4:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end4:
	.size	memcpy, .Lfunc_end4-memcpy
                                        ! -- End function
	.globl	memrchr                         ! -- Begin function memrchr
	.p2align	2
	.type	memrchr,@function
memrchr:                                ! @memrchr
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
	st	%r6, -16[%fp]
	st	%r7, -20[%fp]
	st	%r18, -24[%fp]
	ld	-16[%fp], %r3
	st	%r3, -28[%fp]
	sub	%fp, 0x14, %r3
	or	%r3, 0x3, %r3
	uld.b	0[%r3], %r3
	bt	.LBB5_1
	st	%r3, -20[%fp]
.LBB5_1:                                ! =>This Inner Loop Header: Depth=1
	ld	-24[%fp], %r3
	sub	%r3, 0x1, %r9
	sub.f	%r3, 0x0, %r0
	beq	.LBB5_5
	st	%r9, -24[%fp]
	bt	.LBB5_2
	nop
.LBB5_2:                                !   in Loop: Header=BB5_1 Depth=1
	ld	-28[%fp], %r3
	ld	-24[%fp], %r9
	uld.b	[%r3 add %r9], %r3
	ld	-20[%fp], %r9
	sub.f	%r3, %r9, %r0
	bne	.LBB5_4
	nop
	bt	.LBB5_3
	nop
.LBB5_3:
	ld	-28[%fp], %r3
	ld	-24[%fp], %r9
	add	%r3, %r9, %r3
	bt	.LBB5_6
	st	%r3, -12[%fp]
.LBB5_4:                                !   in Loop: Header=BB5_1 Depth=1
	bt	.LBB5_1
	nop
.LBB5_5:
	or	%r0, 0x0, %r3
	bt	.LBB5_6
	st	%r3, -12[%fp]
.LBB5_6:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end5:
	.size	memrchr, .Lfunc_end5-memrchr
                                        ! -- End function
	.globl	memset                          ! -- Begin function memset
	.p2align	2
	.type	memset,@function
memset:                                 ! @memset
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	ld	-12[%fp], %r3
	bt	.LBB6_1
	st	%r3, -24[%fp]
.LBB6_1:                                ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB6_4
	nop
	bt	.LBB6_2
	nop
.LBB6_2:                                !   in Loop: Header=BB6_1 Depth=1
	ld	-16[%fp], %r3
	ld	-24[%fp], %r9
	bt	.LBB6_3
	st.b	%r3, 0[%r9]
.LBB6_3:                                !   in Loop: Header=BB6_1 Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r3
	st	%r3, -20[%fp]
	ld	-24[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB6_1
	st	%r3, -24[%fp]
.LBB6_4:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end6:
	.size	memset, .Lfunc_end6-memset
                                        ! -- End function
	.globl	stpcpy                          ! -- Begin function stpcpy
	.p2align	2
	.type	stpcpy,@function
stpcpy:                                 ! @stpcpy
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	bt	.LBB7_1
	st	%r7, -16[%fp]
.LBB7_1:                                ! =>This Inner Loop Header: Depth=1
	ld	-16[%fp], %r3
	uld.b	0[%r3], %r3
	ld	-12[%fp], %r9
	sub.f	%r3, 0x0, %r0
	beq	.LBB7_4
	st.b	%r3, 0[%r9]
	bt	.LBB7_2
	nop
.LBB7_2:                                !   in Loop: Header=BB7_1 Depth=1
	bt	.LBB7_3
	nop
.LBB7_3:                                !   in Loop: Header=BB7_1 Depth=1
	ld	-16[%fp], %r3
	add	%r3, 0x1, %r3
	st	%r3, -16[%fp]
	ld	-12[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB7_1
	st	%r3, -12[%fp]
.LBB7_4:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end7:
	.size	stpcpy, .Lfunc_end7-stpcpy
                                        ! -- End function
	.globl	strchrnul                       ! -- Begin function strchrnul
	.p2align	2
	.type	strchrnul,@function
strchrnul:                              ! @strchrnul
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	sub	%fp, 0x10, %r3
	or	%r3, 0x3, %r3
	uld.b	0[%r3], %r3
	bt	.LBB8_1
	st	%r3, -16[%fp]
.LBB8_1:                                ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	ld.b	0[%r3], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB8_3
	st	%r3, -20[%fp]
	bt	.LBB8_2
	nop
.LBB8_2:                                !   in Loop: Header=BB8_1 Depth=1
	ld	-12[%fp], %r3
	uld.b	0[%r3], %r3
	ld	-16[%fp], %r9
	sub.f	%r3, %r9, %r0
	sne	%r3
	bt	.LBB8_3
	st	%r3, -20[%fp]
.LBB8_3:                                !   in Loop: Header=BB8_1 Depth=1
	ld	-20[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB8_6
	nop
	bt	.LBB8_4
	nop
.LBB8_4:                                !   in Loop: Header=BB8_1 Depth=1
	bt	.LBB8_5
	nop
.LBB8_5:                                !   in Loop: Header=BB8_1 Depth=1
	ld	-12[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB8_1
	st	%r3, -12[%fp]
.LBB8_6:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end8:
	.size	strchrnul, .Lfunc_end8-strchrnul
                                        ! -- End function
	.globl	strchr                          ! -- Begin function strchr
	.p2align	2
	.type	strchr,@function
strchr:                                 ! @strchr
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	st	%r6, -16[%fp]
	bt	.LBB9_1
	st	%r7, -20[%fp]
.LBB9_1:                                ! =>This Inner Loop Header: Depth=1
	ld	-16[%fp], %r3
	ld.b	0[%r3], %r3
	ld	-20[%fp], %r9
	sub.f	%r3, %r9, %r0
	bne	.LBB9_3
	nop
	bt	.LBB9_2
	nop
.LBB9_2:
	ld	-16[%fp], %r3
	bt	.LBB9_6
	st	%r3, -12[%fp]
.LBB9_3:                                !   in Loop: Header=BB9_1 Depth=1
	bt	.LBB9_4
	nop
.LBB9_4:                                !   in Loop: Header=BB9_1 Depth=1
	ld	-16[%fp], %r3
	add	%r3, 0x1, %r9
	st	%r9, -16[%fp]
	uld.b	0[%r3], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB9_1
	nop
	bt	.LBB9_5
	nop
.LBB9_5:
	or	%r0, 0x0, %r3
	bt	.LBB9_6
	st	%r3, -12[%fp]
.LBB9_6:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end9:
	.size	strchr, .Lfunc_end9-strchr
                                        ! -- End function
	.globl	strcmp                          ! -- Begin function strcmp
	.p2align	2
	.type	strcmp,@function
strcmp:                                 ! @strcmp
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	st	%r6, -12[%fp]
	bt	.LBB10_1
	st	%r7, -16[%fp]
.LBB10_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	ld.b	0[%r3], %r9
	ld	-16[%fp], %r3
	ld.b	0[%r3], %r12
	or	%r0, 0x0, %r3
	sub.f	%r9, %r12, %r0
	bne	.LBB10_3
	st	%r3, -20[%fp]
	bt	.LBB10_2
	nop
.LBB10_2:                               !   in Loop: Header=BB10_1 Depth=1
	ld	-12[%fp], %r3
	ld.b	0[%r3], %r3
	sub.f	%r3, 0x0, %r0
	sne	%r3
	bt	.LBB10_3
	st	%r3, -20[%fp]
.LBB10_3:                               !   in Loop: Header=BB10_1 Depth=1
	ld	-20[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB10_6
	nop
	bt	.LBB10_4
	nop
.LBB10_4:                               !   in Loop: Header=BB10_1 Depth=1
	bt	.LBB10_5
	nop
.LBB10_5:                               !   in Loop: Header=BB10_1 Depth=1
	ld	-12[%fp], %r3
	add	%r3, 0x1, %r3
	st	%r3, -12[%fp]
	ld	-16[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB10_1
	st	%r3, -16[%fp]
.LBB10_6:
	ld	-12[%fp], %r3
	uld.b	0[%r3], %r3
	ld	-16[%fp], %r9
	uld.b	0[%r9], %r9
	sub	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end10:
	.size	strcmp, .Lfunc_end10-strcmp
                                        ! -- End function
	.globl	strlen                          ! -- Begin function strlen
	.p2align	2
	.type	strlen,@function
strlen:                                 ! @strlen
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	bt	.LBB11_1
	st	%r3, -16[%fp]
.LBB11_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	uld.b	0[%r3], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB11_4
	nop
	bt	.LBB11_2
	nop
.LBB11_2:                               !   in Loop: Header=BB11_1 Depth=1
	bt	.LBB11_3
	nop
.LBB11_3:                               !   in Loop: Header=BB11_1 Depth=1
	ld	-12[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB11_1
	st	%r3, -12[%fp]
.LBB11_4:
	ld	-12[%fp], %r3
	ld	-16[%fp], %r9
	sub	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end11:
	.size	strlen, .Lfunc_end11-strlen
                                        ! -- End function
	.globl	strncmp                         ! -- Begin function strncmp
	.p2align	2
	.type	strncmp,@function
strncmp:                                ! @strncmp
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x28, %sp
	st	%r6, -16[%fp]
	st	%r7, -20[%fp]
	st	%r18, -24[%fp]
	ld	-16[%fp], %r3
	st	%r3, -28[%fp]
	ld	-20[%fp], %r3
	st	%r3, -32[%fp]
	ld	-24[%fp], %r3
	sub	%r3, 0x1, %r9
	sub.f	%r3, 0x0, %r0
	bne	.LBB12_2
	st	%r9, -24[%fp]
	bt	.LBB12_1
	nop
.LBB12_1:
	or	%r0, 0x0, %r3
	bt	.LBB12_11
	st	%r3, -12[%fp]
.LBB12_2:
	bt	.LBB12_3
	nop
.LBB12_3:                               ! =>This Inner Loop Header: Depth=1
	ld	-28[%fp], %r3
	uld.b	0[%r3], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB12_7
	st	%r3, -36[%fp]
	bt	.LBB12_4
	nop
.LBB12_4:                               !   in Loop: Header=BB12_3 Depth=1
	ld	-32[%fp], %r3
	uld.b	0[%r3], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB12_7
	st	%r3, -36[%fp]
	bt	.LBB12_5
	nop
.LBB12_5:                               !   in Loop: Header=BB12_3 Depth=1
	ld	-24[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB12_7
	st	%r3, -36[%fp]
	bt	.LBB12_6
	nop
.LBB12_6:                               !   in Loop: Header=BB12_3 Depth=1
	ld	-28[%fp], %r3
	uld.b	0[%r3], %r3
	ld	-32[%fp], %r9
	uld.b	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	seq	%r3
	bt	.LBB12_7
	st	%r3, -36[%fp]
.LBB12_7:                               !   in Loop: Header=BB12_3 Depth=1
	ld	-36[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB12_10
	nop
	bt	.LBB12_8
	nop
.LBB12_8:                               !   in Loop: Header=BB12_3 Depth=1
	bt	.LBB12_9
	nop
.LBB12_9:                               !   in Loop: Header=BB12_3 Depth=1
	ld	-28[%fp], %r3
	add	%r3, 0x1, %r3
	st	%r3, -28[%fp]
	ld	-32[%fp], %r3
	add	%r3, 0x1, %r3
	st	%r3, -32[%fp]
	ld	-24[%fp], %r3
	sub	%r3, 0x1, %r3
	bt	.LBB12_3
	st	%r3, -24[%fp]
.LBB12_10:
	ld	-28[%fp], %r3
	uld.b	0[%r3], %r3
	ld	-32[%fp], %r9
	uld.b	0[%r9], %r9
	sub	%r3, %r9, %r3
	bt	.LBB12_11
	st	%r3, -12[%fp]
.LBB12_11:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end12:
	.size	strncmp, .Lfunc_end12-strncmp
                                        ! -- End function
	.globl	swab                            ! -- Begin function swab
	.p2align	2
	.type	swab,@function
swab:                                   ! @swab
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	ld	-12[%fp], %r3
	st	%r3, -24[%fp]
	ld	-16[%fp], %r3
	bt	.LBB13_1
	st	%r3, -28[%fp]
.LBB13_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub.f	%r3, 0x2, %r0
	blt	.LBB13_4
	nop
	bt	.LBB13_2
	nop
.LBB13_2:                               !   in Loop: Header=BB13_1 Depth=1
	ld	-24[%fp], %r3
	uld.b	1[%r3], %r3
	ld	-28[%fp], %r9
	st.b	%r3, 0[%r9]
	ld	-24[%fp], %r3
	uld.b	0[%r3], %r3
	ld	-28[%fp], %r9
	st.b	%r3, 1[%r9]
	ld	-28[%fp], %r3
	add	%r3, 0x2, %r3
	st	%r3, -28[%fp]
	ld	-24[%fp], %r3
	add	%r3, 0x2, %r3
	bt	.LBB13_3
	st	%r3, -24[%fp]
.LBB13_3:                               !   in Loop: Header=BB13_1 Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x2, %r3
	bt	.LBB13_1
	st	%r3, -20[%fp]
.LBB13_4:
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end13:
	.size	swab, .Lfunc_end13-swab
                                        ! -- End function
	.globl	isalpha                         ! -- Begin function isalpha
	.p2align	2
	.type	isalpha,@function
isalpha:                                ! @isalpha
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	or	%r3, 0x20, %r3
	sub	%r3, 0x61, %r3
	sub.f	%r3, 0x1a, %r0
	sult	%rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end14:
	.size	isalpha, .Lfunc_end14-isalpha
                                        ! -- End function
	.globl	isascii                         ! -- Begin function isascii
	.p2align	2
	.type	isascii,@function
isascii:                                ! @isascii
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	and	%r3, 0xffffff80, %r3
	sub.f	%r3, 0x0, %r0
	seq	%rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end15:
	.size	isascii, .Lfunc_end15-isascii
                                        ! -- End function
	.globl	isblank                         ! -- Begin function isblank
	.p2align	2
	.type	isblank,@function
isblank:                                ! @isblank
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r9
	mov	0x1, %r3
	sub.f	%r9, 0x20, %r0
	beq	.LBB16_2
	st	%r3, -16[%fp]
	bt	.LBB16_1
	nop
.LBB16_1:
	ld	-12[%fp], %r3
	sub.f	%r3, 0x9, %r0
	seq	%r3
	bt	.LBB16_2
	st	%r3, -16[%fp]
.LBB16_2:
	ld	-16[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end16:
	.size	isblank, .Lfunc_end16-isblank
                                        ! -- End function
	.globl	iscntrl                         ! -- Begin function iscntrl
	.p2align	2
	.type	iscntrl,@function
iscntrl:                                ! @iscntrl
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r9
	mov	0x1, %r3
	sub.f	%r9, 0x20, %r0
	bult	.LBB17_2
	st	%r3, -16[%fp]
	bt	.LBB17_1
	nop
.LBB17_1:
	ld	-12[%fp], %r3
	sub.f	%r3, 0x7f, %r0
	seq	%r3
	bt	.LBB17_2
	st	%r3, -16[%fp]
.LBB17_2:
	ld	-16[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end17:
	.size	iscntrl, .Lfunc_end17-iscntrl
                                        ! -- End function
	.globl	isdigit                         ! -- Begin function isdigit
	.p2align	2
	.type	isdigit,@function
isdigit:                                ! @isdigit
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	sub	%r3, 0x30, %r3
	sub.f	%r3, 0xa, %r0
	sult	%rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end18:
	.size	isdigit, .Lfunc_end18-isdigit
                                        ! -- End function
	.globl	isgraph                         ! -- Begin function isgraph
	.p2align	2
	.type	isgraph,@function
isgraph:                                ! @isgraph
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	sub	%r3, 0x21, %r3
	sub.f	%r3, 0x5e, %r0
	sult	%rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end19:
	.size	isgraph, .Lfunc_end19-isgraph
                                        ! -- End function
	.globl	islower                         ! -- Begin function islower
	.p2align	2
	.type	islower,@function
islower:                                ! @islower
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	sub	%r3, 0x61, %r3
	sub.f	%r3, 0x1a, %r0
	sult	%rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end20:
	.size	islower, .Lfunc_end20-islower
                                        ! -- End function
	.globl	isprint                         ! -- Begin function isprint
	.p2align	2
	.type	isprint,@function
isprint:                                ! @isprint
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	sub	%r3, 0x20, %r3
	sub.f	%r3, 0x5f, %r0
	sult	%rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end21:
	.size	isprint, .Lfunc_end21-isprint
                                        ! -- End function
	.globl	isspace                         ! -- Begin function isspace
	.p2align	2
	.type	isspace,@function
isspace:                                ! @isspace
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r9
	mov	0x1, %r3
	sub.f	%r9, 0x20, %r0
	beq	.LBB22_2
	st	%r3, -16[%fp]
	bt	.LBB22_1
	nop
.LBB22_1:
	ld	-12[%fp], %r3
	sub	%r3, 0x9, %r3
	sub.f	%r3, 0x5, %r0
	sult	%r3
	bt	.LBB22_2
	st	%r3, -16[%fp]
.LBB22_2:
	ld	-16[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end22:
	.size	isspace, .Lfunc_end22-isspace
                                        ! -- End function
	.globl	isupper                         ! -- Begin function isupper
	.p2align	2
	.type	isupper,@function
isupper:                                ! @isupper
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	sub	%r3, 0x41, %r3
	sub.f	%r3, 0x1a, %r0
	sult	%rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end23:
	.size	isupper, .Lfunc_end23-isupper
                                        ! -- End function
	.globl	iswcntrl                        ! -- Begin function iswcntrl
	.p2align	2
	.type	iswcntrl,@function
iswcntrl:                               ! @iswcntrl
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r9
	mov	0x1, %r3
	sub.f	%r9, 0x20, %r0
	bult	.LBB24_4
	st	%r3, -16[%fp]
	bt	.LBB24_1
	nop
.LBB24_1:
	ld	-12[%fp], %r3
	sub	%r3, 0x7f, %r9
	mov	0x1, %r3
	sub.f	%r9, 0x21, %r0
	bult	.LBB24_4
	st	%r3, -16[%fp]
	bt	.LBB24_2
	nop
.LBB24_2:
	ld	-12[%fp], %r3
	sub	%r3, 0x2028, %r9
	mov	0x1, %r3
	sub.f	%r9, 0x2, %r0
	bult	.LBB24_4
	st	%r3, -16[%fp]
	bt	.LBB24_3
	nop
.LBB24_3:
	ld	-12[%fp], %r3
	mov	0xffff0007, %r9
	add	%r3, %r9, %r3
	sub.f	%r3, 0x3, %r0
	sult	%r3
	bt	.LBB24_4
	st	%r3, -16[%fp]
.LBB24_4:
	ld	-16[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end24:
	.size	iswcntrl, .Lfunc_end24-iswcntrl
                                        ! -- End function
	.globl	iswdigit                        ! -- Begin function iswdigit
	.p2align	2
	.type	iswdigit,@function
iswdigit:                               ! @iswdigit
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	sub	%r3, 0x30, %r3
	sub.f	%r3, 0xa, %r0
	sult	%rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end25:
	.size	iswdigit, .Lfunc_end25-iswdigit
                                        ! -- End function
	.globl	iswprint                        ! -- Begin function iswprint
	.p2align	2
	.type	iswprint,@function
iswprint:                               ! @iswprint
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	st	%r6, -16[%fp]
	ld	-16[%fp], %r3
	sub.f	%r3, 0xfe, %r0
	bugt	.LBB26_2
	sub	%sp, 0x10, %sp
	bt	.LBB26_1
	nop
.LBB26_1:
	ld	-16[%fp], %r3
	add	%r3, 0x1, %r3
	mov	0x7f, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x20, %r0
	sgt	%r3
	bt	.LBB26_10
	st	%r3, -12[%fp]
.LBB26_2:
	ld	-16[%fp], %r3
	sub.f	%r3, 0x2028, %r0
	bult	.LBB26_5
	nop
	bt	.LBB26_3
	nop
.LBB26_3:
	ld	-16[%fp], %r3
	sub	%r3, 0x202a, %r3
	sub.f	%r3, 0xb7d6, %r0
	bult	.LBB26_5
	nop
	bt	.LBB26_4
	nop
.LBB26_4:
	ld	-16[%fp], %r3
	mov	0xffff2000, %r9
	add	%r3, %r9, %r3
	sub.f	%r3, 0x1ff8, %r0
	bugt	.LBB26_6
	nop
	bt	.LBB26_5
	nop
.LBB26_5:
	mov	0x1, %r3
	bt	.LBB26_10
	st	%r3, -12[%fp]
.LBB26_6:
	ld	-16[%fp], %r3
	mov	0xffff0004, %r9
	add	%r3, %r9, %r3
	mov	0x100003, %r9
	sub.f	%r3, %r9, %r0
	bugt	.LBB26_8
	nop
	bt	.LBB26_7
	nop
.LBB26_7:
	ld	-16[%fp], %r3
	mov	0xfffe, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0xfffe, %r0
	bne	.LBB26_9
	nop
	bt	.LBB26_8
	nop
.LBB26_8:
	or	%r0, 0x0, %r3
	bt	.LBB26_10
	st	%r3, -12[%fp]
.LBB26_9:
	mov	0x1, %r3
	bt	.LBB26_10
	st	%r3, -12[%fp]
.LBB26_10:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end26:
	.size	iswprint, .Lfunc_end26-iswprint
                                        ! -- End function
	.globl	iswxdigit                       ! -- Begin function iswxdigit
	.p2align	2
	.type	iswxdigit,@function
iswxdigit:                              ! @iswxdigit
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	sub	%r3, 0x30, %r9
	mov	0x1, %r3
	sub.f	%r9, 0xa, %r0
	bult	.LBB27_2
	st	%r3, -16[%fp]
	bt	.LBB27_1
	nop
.LBB27_1:
	ld	-12[%fp], %r3
	or	%r3, 0x20, %r3
	sub	%r3, 0x61, %r3
	sub.f	%r3, 0x6, %r0
	sult	%r3
	bt	.LBB27_2
	st	%r3, -16[%fp]
.LBB27_2:
	ld	-16[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end27:
	.size	iswxdigit, .Lfunc_end27-iswxdigit
                                        ! -- End function
	.globl	toascii                         ! -- Begin function toascii
	.p2align	2
	.type	toascii,@function
toascii:                                ! @toascii
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	mov	0x7f, %r9
	and	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end28:
	.size	toascii, .Lfunc_end28-toascii
                                        ! -- End function
	.globl	fdim                            ! -- Begin function fdim
	.p2align	2
	.type	fdim,@function
fdim:                                   ! @fdim
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x30, %sp
                                        ! kill: def $r3 killed $r19
                                        ! kill: def $r3 killed $r18
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -24[%fp]
	sub	%fp, 0x20, %r9
	or	%r9, 0x4, %r9
	st	%r19, 0[%r9]
	st	%r18, -32[%fp]
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	sub.f	%r3, 0x0, %r0
	seq	%r3
	and	%r9, 0x7fffffff, %r12
	sub.f	%r12, 0x7ff00000, %r0
	slt	%r9
	sub.f	%r12, 0x7ff00000, %r0
	sel.eq %r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB29_2
	nop
	bt	.LBB29_1
	nop
.LBB29_1:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-24[%fp], %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB29_8
	st	%r3, -16[%fp]
.LBB29_2:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-32[%fp], %r9
	and	%r9, 0x7fffffff, %r12
	sub.f	%r12, 0x7ff00000, %r0
	slt	%r9
	sub.f	%r3, 0x0, %r0
	seq	%r3
	sub.f	%r12, 0x7ff00000, %r0
	sel.eq %r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB29_4
	nop
	bt	.LBB29_3
	nop
.LBB29_3:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-32[%fp], %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB29_8
	st	%r3, -16[%fp]
.LBB29_4:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r7
	ld	-24[%fp], %r6
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__gtdf2
	ld	-32[%fp], %r18
	sub.f	%rv, 0x1, %r0
	blt	.LBB29_6
	nop
	bt	.LBB29_5
	nop
.LBB29_5:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r7
	ld	-24[%fp], %r6
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__subdf3
	ld	-32[%fp], %r18
	st	%rv, -44[%fp]
	or	%r9, 0x0, %r3
	ld	-44[%fp], %r9
	st	%r9, -40[%fp]
	bt	.LBB29_7
	st	%r3, -36[%fp]
.LBB29_6:
	or	%r0, 0x0, %r9
	or	%r9, 0x0, %r3
	st	%r9, -40[%fp]
	bt	.LBB29_7
	st	%r3, -36[%fp]
.LBB29_7:
	ld	-40[%fp], %r3
	ld	-36[%fp], %r9
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB29_8
	st	%r3, -16[%fp]
.LBB29_8:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-16[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end29:
	.size	fdim, .Lfunc_end29-fdim
                                        ! -- End function
	.globl	fdimf                           ! -- Begin function fdimf
	.p2align	2
	.type	fdimf,@function
fdimf:                                  ! @fdimf
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	st	%r6, -16[%fp]
	st	%r7, -20[%fp]
	ld	-16[%fp], %r3
	and	%r3, 0x7fffffff, %r3
	mov	0x7f800000, %r9
	or	%r9, 0x1, %r9
	sub.f	%r3, %r9, %r0
	blt	.LBB30_2
	nop
	bt	.LBB30_1
	nop
.LBB30_1:
	ld	-16[%fp], %r3
	bt	.LBB30_8
	st	%r3, -12[%fp]
.LBB30_2:
	ld	-20[%fp], %r3
	and	%r3, 0x7fffffff, %r3
	mov	0x7f800000, %r9
	or	%r9, 0x1, %r9
	sub.f	%r3, %r9, %r0
	blt	.LBB30_4
	nop
	bt	.LBB30_3
	nop
.LBB30_3:
	ld	-20[%fp], %r3
	bt	.LBB30_8
	st	%r3, -12[%fp]
.LBB30_4:
	ld	-16[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__gtsf2
	ld	-20[%fp], %r7
	sub.f	%rv, 0x1, %r0
	blt	.LBB30_6
	nop
	bt	.LBB30_5
	nop
.LBB30_5:
	ld	-16[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__subsf3
	ld	-20[%fp], %r7
	or	%rv, 0x0, %r3
	bt	.LBB30_7
	st	%r3, -24[%fp]
.LBB30_6:
	or	%r0, 0x0, %r3
	bt	.LBB30_7
	st	%r3, -24[%fp]
.LBB30_7:
	ld	-24[%fp], %r3
	bt	.LBB30_8
	st	%r3, -12[%fp]
.LBB30_8:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end30:
	.size	fdimf, .Lfunc_end30-fdimf
                                        ! -- End function
	.globl	fmax                            ! -- Begin function fmax
	.p2align	2
	.type	fmax,@function
fmax:                                   ! @fmax
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x30, %sp
                                        ! kill: def $r3 killed $r19
                                        ! kill: def $r3 killed $r18
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -24[%fp]
	sub	%fp, 0x20, %r9
	or	%r9, 0x4, %r9
	st	%r19, 0[%r9]
	st	%r18, -32[%fp]
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	sub.f	%r3, 0x0, %r0
	seq	%r3
	and	%r9, 0x7fffffff, %r12
	sub.f	%r12, 0x7ff00000, %r0
	slt	%r9
	sub.f	%r12, 0x7ff00000, %r0
	sel.eq %r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB31_2
	nop
	bt	.LBB31_1
	nop
.LBB31_1:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-32[%fp], %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB31_13
	st	%r3, -16[%fp]
.LBB31_2:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-32[%fp], %r9
	and	%r9, 0x7fffffff, %r12
	sub.f	%r12, 0x7ff00000, %r0
	slt	%r9
	sub.f	%r3, 0x0, %r0
	seq	%r3
	sub.f	%r12, 0x7ff00000, %r0
	sel.eq %r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB31_4
	nop
	bt	.LBB31_3
	nop
.LBB31_3:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-24[%fp], %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB31_13
	st	%r3, -16[%fp]
.LBB31_4:
	ld	-24[%fp], %r3
	sh	%r3, -0x1f, %r3
	ld	-32[%fp], %r9
	sh	%r9, -0x1f, %r9
	sub.f	%r3, %r9, %r0
	beq	.LBB31_9
	nop
	bt	.LBB31_5
	nop
.LBB31_5:
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB31_7
	nop
	bt	.LBB31_6
	nop
.LBB31_6:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-32[%fp], %r9
	st	%r9, -40[%fp]
	bt	.LBB31_8
	st	%r3, -36[%fp]
.LBB31_7:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	st	%r9, -40[%fp]
	bt	.LBB31_8
	st	%r3, -36[%fp]
.LBB31_8:
	ld	-40[%fp], %r3
	ld	-36[%fp], %r9
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB31_13
	st	%r3, -16[%fp]
.LBB31_9:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r7
	ld	-24[%fp], %r6
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltdf2
	ld	-32[%fp], %r18
	sub.f	%rv, 0x0, %r0
	bpl	.LBB31_11
	nop
	bt	.LBB31_10
	nop
.LBB31_10:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-32[%fp], %r9
	st	%r9, -48[%fp]
	bt	.LBB31_12
	st	%r3, -44[%fp]
.LBB31_11:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	st	%r9, -48[%fp]
	bt	.LBB31_12
	st	%r3, -44[%fp]
.LBB31_12:
	ld	-48[%fp], %r3
	ld	-44[%fp], %r9
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB31_13
	st	%r3, -16[%fp]
.LBB31_13:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-16[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end31:
	.size	fmax, .Lfunc_end31-fmax
                                        ! -- End function
	.globl	fmaxf                           ! -- Begin function fmaxf
	.p2align	2
	.type	fmaxf,@function
fmaxf:                                  ! @fmaxf
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	st	%r6, -16[%fp]
	st	%r7, -20[%fp]
	ld	-16[%fp], %r3
	and	%r3, 0x7fffffff, %r3
	mov	0x7f800000, %r9
	or	%r9, 0x1, %r9
	sub.f	%r3, %r9, %r0
	blt	.LBB32_2
	nop
	bt	.LBB32_1
	nop
.LBB32_1:
	ld	-20[%fp], %r3
	bt	.LBB32_13
	st	%r3, -12[%fp]
.LBB32_2:
	ld	-20[%fp], %r3
	and	%r3, 0x7fffffff, %r3
	mov	0x7f800000, %r9
	or	%r9, 0x1, %r9
	sub.f	%r3, %r9, %r0
	blt	.LBB32_4
	nop
	bt	.LBB32_3
	nop
.LBB32_3:
	ld	-16[%fp], %r3
	bt	.LBB32_13
	st	%r3, -12[%fp]
.LBB32_4:
	ld	-16[%fp], %r3
	sh	%r3, -0x1f, %r3
	ld	-20[%fp], %r9
	sh	%r9, -0x1f, %r9
	sub.f	%r3, %r9, %r0
	beq	.LBB32_9
	nop
	bt	.LBB32_5
	nop
.LBB32_5:
	ld	-16[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB32_7
	nop
	bt	.LBB32_6
	nop
.LBB32_6:
	ld	-20[%fp], %r3
	bt	.LBB32_8
	st	%r3, -24[%fp]
.LBB32_7:
	ld	-16[%fp], %r3
	bt	.LBB32_8
	st	%r3, -24[%fp]
.LBB32_8:
	ld	-24[%fp], %r3
	bt	.LBB32_13
	st	%r3, -12[%fp]
.LBB32_9:
	ld	-16[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltsf2
	ld	-20[%fp], %r7
	sub.f	%rv, 0x0, %r0
	bpl	.LBB32_11
	nop
	bt	.LBB32_10
	nop
.LBB32_10:
	ld	-20[%fp], %r3
	bt	.LBB32_12
	st	%r3, -28[%fp]
.LBB32_11:
	ld	-16[%fp], %r3
	bt	.LBB32_12
	st	%r3, -28[%fp]
.LBB32_12:
	ld	-28[%fp], %r3
	bt	.LBB32_13
	st	%r3, -12[%fp]
.LBB32_13:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end32:
	.size	fmaxf, .Lfunc_end32-fmaxf
                                        ! -- End function
	.globl	fmaxl                           ! -- Begin function fmaxl
	.p2align	2
	.type	fmaxl,@function
fmaxl:                                  ! @fmaxl
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x30, %sp
                                        ! kill: def $r3 killed $r19
                                        ! kill: def $r3 killed $r18
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -24[%fp]
	sub	%fp, 0x20, %r9
	or	%r9, 0x4, %r9
	st	%r19, 0[%r9]
	st	%r18, -32[%fp]
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	sub.f	%r3, 0x0, %r0
	seq	%r3
	and	%r9, 0x7fffffff, %r12
	sub.f	%r12, 0x7ff00000, %r0
	slt	%r9
	sub.f	%r12, 0x7ff00000, %r0
	sel.eq %r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB33_2
	nop
	bt	.LBB33_1
	nop
.LBB33_1:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-32[%fp], %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB33_13
	st	%r3, -16[%fp]
.LBB33_2:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-32[%fp], %r9
	and	%r9, 0x7fffffff, %r12
	sub.f	%r12, 0x7ff00000, %r0
	slt	%r9
	sub.f	%r3, 0x0, %r0
	seq	%r3
	sub.f	%r12, 0x7ff00000, %r0
	sel.eq %r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB33_4
	nop
	bt	.LBB33_3
	nop
.LBB33_3:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-24[%fp], %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB33_13
	st	%r3, -16[%fp]
.LBB33_4:
	ld	-24[%fp], %r3
	sh	%r3, -0x1f, %r3
	ld	-32[%fp], %r9
	sh	%r9, -0x1f, %r9
	sub.f	%r3, %r9, %r0
	beq	.LBB33_9
	nop
	bt	.LBB33_5
	nop
.LBB33_5:
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB33_7
	nop
	bt	.LBB33_6
	nop
.LBB33_6:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-32[%fp], %r9
	st	%r9, -40[%fp]
	bt	.LBB33_8
	st	%r3, -36[%fp]
.LBB33_7:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	st	%r9, -40[%fp]
	bt	.LBB33_8
	st	%r3, -36[%fp]
.LBB33_8:
	ld	-40[%fp], %r3
	ld	-36[%fp], %r9
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB33_13
	st	%r3, -16[%fp]
.LBB33_9:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r7
	ld	-24[%fp], %r6
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltdf2
	ld	-32[%fp], %r18
	sub.f	%rv, 0x0, %r0
	bpl	.LBB33_11
	nop
	bt	.LBB33_10
	nop
.LBB33_10:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-32[%fp], %r9
	st	%r9, -48[%fp]
	bt	.LBB33_12
	st	%r3, -44[%fp]
.LBB33_11:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	st	%r9, -48[%fp]
	bt	.LBB33_12
	st	%r3, -44[%fp]
.LBB33_12:
	ld	-48[%fp], %r3
	ld	-44[%fp], %r9
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB33_13
	st	%r3, -16[%fp]
.LBB33_13:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-16[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end33:
	.size	fmaxl, .Lfunc_end33-fmaxl
                                        ! -- End function
	.globl	fmin                            ! -- Begin function fmin
	.p2align	2
	.type	fmin,@function
fmin:                                   ! @fmin
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x30, %sp
                                        ! kill: def $r3 killed $r19
                                        ! kill: def $r3 killed $r18
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -24[%fp]
	sub	%fp, 0x20, %r9
	or	%r9, 0x4, %r9
	st	%r19, 0[%r9]
	st	%r18, -32[%fp]
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	sub.f	%r3, 0x0, %r0
	seq	%r3
	and	%r9, 0x7fffffff, %r12
	sub.f	%r12, 0x7ff00000, %r0
	slt	%r9
	sub.f	%r12, 0x7ff00000, %r0
	sel.eq %r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB34_2
	nop
	bt	.LBB34_1
	nop
.LBB34_1:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-32[%fp], %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB34_13
	st	%r3, -16[%fp]
.LBB34_2:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-32[%fp], %r9
	and	%r9, 0x7fffffff, %r12
	sub.f	%r12, 0x7ff00000, %r0
	slt	%r9
	sub.f	%r3, 0x0, %r0
	seq	%r3
	sub.f	%r12, 0x7ff00000, %r0
	sel.eq %r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB34_4
	nop
	bt	.LBB34_3
	nop
.LBB34_3:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-24[%fp], %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB34_13
	st	%r3, -16[%fp]
.LBB34_4:
	ld	-24[%fp], %r3
	sh	%r3, -0x1f, %r3
	ld	-32[%fp], %r9
	sh	%r9, -0x1f, %r9
	sub.f	%r3, %r9, %r0
	beq	.LBB34_9
	nop
	bt	.LBB34_5
	nop
.LBB34_5:
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB34_7
	nop
	bt	.LBB34_6
	nop
.LBB34_6:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	st	%r9, -40[%fp]
	bt	.LBB34_8
	st	%r3, -36[%fp]
.LBB34_7:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-32[%fp], %r9
	st	%r9, -40[%fp]
	bt	.LBB34_8
	st	%r3, -36[%fp]
.LBB34_8:
	ld	-40[%fp], %r3
	ld	-36[%fp], %r9
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB34_13
	st	%r3, -16[%fp]
.LBB34_9:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r7
	ld	-24[%fp], %r6
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltdf2
	ld	-32[%fp], %r18
	sub.f	%rv, 0x0, %r0
	bpl	.LBB34_11
	nop
	bt	.LBB34_10
	nop
.LBB34_10:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	st	%r9, -48[%fp]
	bt	.LBB34_12
	st	%r3, -44[%fp]
.LBB34_11:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-32[%fp], %r9
	st	%r9, -48[%fp]
	bt	.LBB34_12
	st	%r3, -44[%fp]
.LBB34_12:
	ld	-48[%fp], %r3
	ld	-44[%fp], %r9
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB34_13
	st	%r3, -16[%fp]
.LBB34_13:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-16[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end34:
	.size	fmin, .Lfunc_end34-fmin
                                        ! -- End function
	.globl	fminf                           ! -- Begin function fminf
	.p2align	2
	.type	fminf,@function
fminf:                                  ! @fminf
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	st	%r6, -16[%fp]
	st	%r7, -20[%fp]
	ld	-16[%fp], %r3
	and	%r3, 0x7fffffff, %r3
	mov	0x7f800000, %r9
	or	%r9, 0x1, %r9
	sub.f	%r3, %r9, %r0
	blt	.LBB35_2
	nop
	bt	.LBB35_1
	nop
.LBB35_1:
	ld	-20[%fp], %r3
	bt	.LBB35_13
	st	%r3, -12[%fp]
.LBB35_2:
	ld	-20[%fp], %r3
	and	%r3, 0x7fffffff, %r3
	mov	0x7f800000, %r9
	or	%r9, 0x1, %r9
	sub.f	%r3, %r9, %r0
	blt	.LBB35_4
	nop
	bt	.LBB35_3
	nop
.LBB35_3:
	ld	-16[%fp], %r3
	bt	.LBB35_13
	st	%r3, -12[%fp]
.LBB35_4:
	ld	-16[%fp], %r3
	sh	%r3, -0x1f, %r3
	ld	-20[%fp], %r9
	sh	%r9, -0x1f, %r9
	sub.f	%r3, %r9, %r0
	beq	.LBB35_9
	nop
	bt	.LBB35_5
	nop
.LBB35_5:
	ld	-16[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB35_7
	nop
	bt	.LBB35_6
	nop
.LBB35_6:
	ld	-16[%fp], %r3
	bt	.LBB35_8
	st	%r3, -24[%fp]
.LBB35_7:
	ld	-20[%fp], %r3
	bt	.LBB35_8
	st	%r3, -24[%fp]
.LBB35_8:
	ld	-24[%fp], %r3
	bt	.LBB35_13
	st	%r3, -12[%fp]
.LBB35_9:
	ld	-16[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltsf2
	ld	-20[%fp], %r7
	sub.f	%rv, 0x0, %r0
	bpl	.LBB35_11
	nop
	bt	.LBB35_10
	nop
.LBB35_10:
	ld	-16[%fp], %r3
	bt	.LBB35_12
	st	%r3, -28[%fp]
.LBB35_11:
	ld	-20[%fp], %r3
	bt	.LBB35_12
	st	%r3, -28[%fp]
.LBB35_12:
	ld	-28[%fp], %r3
	bt	.LBB35_13
	st	%r3, -12[%fp]
.LBB35_13:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end35:
	.size	fminf, .Lfunc_end35-fminf
                                        ! -- End function
	.globl	fminl                           ! -- Begin function fminl
	.p2align	2
	.type	fminl,@function
fminl:                                  ! @fminl
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x30, %sp
                                        ! kill: def $r3 killed $r19
                                        ! kill: def $r3 killed $r18
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -24[%fp]
	sub	%fp, 0x20, %r9
	or	%r9, 0x4, %r9
	st	%r19, 0[%r9]
	st	%r18, -32[%fp]
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	sub.f	%r3, 0x0, %r0
	seq	%r3
	and	%r9, 0x7fffffff, %r12
	sub.f	%r12, 0x7ff00000, %r0
	slt	%r9
	sub.f	%r12, 0x7ff00000, %r0
	sel.eq %r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB36_2
	nop
	bt	.LBB36_1
	nop
.LBB36_1:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-32[%fp], %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB36_13
	st	%r3, -16[%fp]
.LBB36_2:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-32[%fp], %r9
	and	%r9, 0x7fffffff, %r12
	sub.f	%r12, 0x7ff00000, %r0
	slt	%r9
	sub.f	%r3, 0x0, %r0
	seq	%r3
	sub.f	%r12, 0x7ff00000, %r0
	sel.eq %r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB36_4
	nop
	bt	.LBB36_3
	nop
.LBB36_3:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-24[%fp], %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB36_13
	st	%r3, -16[%fp]
.LBB36_4:
	ld	-24[%fp], %r3
	sh	%r3, -0x1f, %r3
	ld	-32[%fp], %r9
	sh	%r9, -0x1f, %r9
	sub.f	%r3, %r9, %r0
	beq	.LBB36_9
	nop
	bt	.LBB36_5
	nop
.LBB36_5:
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB36_7
	nop
	bt	.LBB36_6
	nop
.LBB36_6:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	st	%r9, -40[%fp]
	bt	.LBB36_8
	st	%r3, -36[%fp]
.LBB36_7:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-32[%fp], %r9
	st	%r9, -40[%fp]
	bt	.LBB36_8
	st	%r3, -36[%fp]
.LBB36_8:
	ld	-40[%fp], %r3
	ld	-36[%fp], %r9
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB36_13
	st	%r3, -16[%fp]
.LBB36_9:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r7
	ld	-24[%fp], %r6
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltdf2
	ld	-32[%fp], %r18
	sub.f	%rv, 0x0, %r0
	bpl	.LBB36_11
	nop
	bt	.LBB36_10
	nop
.LBB36_10:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	st	%r9, -48[%fp]
	bt	.LBB36_12
	st	%r3, -44[%fp]
.LBB36_11:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-32[%fp], %r9
	st	%r9, -48[%fp]
	bt	.LBB36_12
	st	%r3, -44[%fp]
.LBB36_12:
	ld	-48[%fp], %r3
	ld	-44[%fp], %r9
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB36_13
	st	%r3, -16[%fp]
.LBB36_13:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-16[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end36:
	.size	fminl, .Lfunc_end36-fminl
                                        ! -- End function
	.globl	l64a                            ! -- Begin function l64a
	.p2align	2
	.type	l64a,@function
l64a:                                   ! @l64a
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	st	%r3, -20[%fp]
	mov	hi(l64a.s), %r3
	or	%r3, lo(l64a.s), %r3
	bt	.LBB37_1
	st	%r3, -16[%fp]
.LBB37_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB37_4
	nop
	bt	.LBB37_2
	nop
.LBB37_2:                               !   in Loop: Header=BB37_1 Depth=1
	ld	-20[%fp], %r3
	mov	0x3f, %r9
	and	%r3, %r9, %r3
	mov	hi(digits), %r9
	or	%r9, lo(digits), %r9
	add	%r3, %r9, %r3
	uld.b	0[%r3], %r3
	ld	-16[%fp], %r9
	bt	.LBB37_3
	st.b	%r3, 0[%r9]
.LBB37_3:                               !   in Loop: Header=BB37_1 Depth=1
	ld	-16[%fp], %r3
	add	%r3, 0x1, %r3
	st	%r3, -16[%fp]
	ld	-20[%fp], %r3
	sh	%r3, -0x6, %r3
	bt	.LBB37_1
	st	%r3, -20[%fp]
.LBB37_4:
	ld	-16[%fp], %r9
	or	%r0, 0x0, %r3
	st.b	%r3, 0[%r9]
	mov	hi(l64a.s), %r3
	or	%r3, lo(l64a.s), %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end37:
	.size	l64a, .Lfunc_end37-l64a
                                        ! -- End function
	.globl	srand                           ! -- Begin function srand
	.p2align	2
	.type	srand,@function
srand:                                  ! @srand
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	sub	%r3, 0x1, %r3
	mov	hi(seed), %r9
	or	%r9, lo(seed), %r12
	or	%r0, 0x0, %r9
	st	%r9, 0[%r12]
	mov	hi(seed+4), %r9
	or	%r9, lo(seed+4), %r9
	st	%r3, 0[%r9]
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end38:
	.size	srand, .Lfunc_end38-srand
                                        ! -- End function
	.globl	rand                            ! -- Begin function rand
	.p2align	2
	.type	rand,@function
rand:                                   ! @rand
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	mov	hi(seed), %r3
	or	%r3, lo(seed), %r3
	st	%r3, -12[%fp]
	ld	0[%r3], %r6
	mov	hi(seed+4), %r3
	or	%r3, lo(seed+4), %r3
	st	%r3, -16[%fp]
	ld	0[%r3], %r7
	mov	0x58510000, %r3
	or	%r3, 0xf42d, %r18
	mov	0x4c950000, %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__muldi3
	or	%r3, 0x7f2d, %r19
	ld	-16[%fp], %r13
	ld	-12[%fp], %r3
	add	%r9, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r9
	add	%rv, %r9, %r9
	st	%r12, 0[%r13]
	st	%r9, 0[%r3]
	ld	0[%r3], %r3
	sh	%r3, -0x1, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end39:
	.size	rand, .Lfunc_end39-rand
                                        ! -- End function
	.globl	insque                          ! -- Begin function insque
	.p2align	2
	.type	insque,@function
insque:                                 ! @insque
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	ld	-12[%fp], %r3
	st	%r3, -20[%fp]
	ld	-16[%fp], %r3
	st	%r3, -24[%fp]
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB40_2
	sub	%sp, 0x18, %sp
	bt	.LBB40_1
	nop
.LBB40_1:
	ld	-20[%fp], %r9
	or	%r0, 0x0, %r3
	st	%r3, 4[%r9]
	ld	-20[%fp], %r9
	bt	.LBB40_4
	st	%r3, 0[%r9]
.LBB40_2:
	ld	-24[%fp], %r3
	ld	0[%r3], %r3
	ld	-20[%fp], %r9
	st	%r3, 0[%r9]
	ld	-24[%fp], %r3
	ld	-20[%fp], %r9
	st	%r3, 4[%r9]
	ld	-20[%fp], %r3
	ld	-24[%fp], %r9
	st	%r3, 0[%r9]
	ld	-20[%fp], %r3
	ld	0[%r3], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB40_4
	nop
	bt	.LBB40_3
	nop
.LBB40_3:
	ld	-20[%fp], %r3
	ld	0[%r3], %r9
	bt	.LBB40_4
	st	%r3, 4[%r9]
.LBB40_4:
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end40:
	.size	insque, .Lfunc_end40-insque
                                        ! -- End function
	.globl	remque                          ! -- Begin function remque
	.p2align	2
	.type	remque,@function
remque:                                 ! @remque
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	st	%r3, -16[%fp]
	ld	-16[%fp], %r3
	ld	0[%r3], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB41_2
	sub	%sp, 0x10, %sp
	bt	.LBB41_1
	nop
.LBB41_1:
	ld	-16[%fp], %r9
	ld	4[%r9], %r3
	ld	0[%r9], %r9
	bt	.LBB41_2
	st	%r3, 4[%r9]
.LBB41_2:
	ld	-16[%fp], %r3
	ld	4[%r3], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB41_4
	nop
	bt	.LBB41_3
	nop
.LBB41_3:
	ld	-16[%fp], %r9
	ld	0[%r9], %r3
	ld	4[%r9], %r9
	bt	.LBB41_4
	st	%r3, 0[%r9]
.LBB41_4:
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end41:
	.size	remque, .Lfunc_end41-remque
                                        ! -- End function
	.globl	lsearch                         ! -- Begin function lsearch
	.p2align	2
	.type	lsearch,@function
lsearch:                                ! @lsearch
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x48, %sp
	ld	0[%fp], %r3
	st	%r6, -16[%fp]
	st	%r7, -20[%fp]
	st	%r18, -24[%fp]
	st	%r19, -28[%fp]
	ld	-28[%fp], %r3
	st	%r3, -44[%fp]
	ld	-20[%fp], %r3
	st	%r3, -32[%fp]
	ld	-24[%fp], %r3
	ld	0[%r3], %r3
	st	%r3, -36[%fp]
	or	%r0, 0x0, %r3
	bt	.LBB42_1
	st	%r3, -40[%fp]
.LBB42_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-40[%fp], %r3
	ld	-36[%fp], %r9
	sub.f	%r3, %r9, %r0
	buge	.LBB42_6
	nop
	bt	.LBB42_2
	nop
.LBB42_2:                               !   in Loop: Header=BB42_1 Depth=1
	ld	-44[%fp], %r7
	ld	0[%fp], %r3
	st	%r3, -48[%fp]
	ld	-16[%fp], %r3
	st	%r3, -52[%fp]
	ld	-32[%fp], %r3
	st	%r3, -56[%fp]
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__mulsi3
	ld	-40[%fp], %r6
	ld	-56[%fp], %r9
	ld	-52[%fp], %r6
	ld	-48[%fp], %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	mov	%r3, %pc
	add	%r9, %rv, %r7
	sub.f	%rv, 0x0, %r0
	bne	.LBB42_4
	nop
	bt	.LBB42_3
	nop
.LBB42_3:
	ld	-44[%fp], %r7
	ld	-32[%fp], %r3
	st	%r3, -60[%fp]
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__mulsi3
	ld	-40[%fp], %r6
	ld	-60[%fp], %r3
	add	%r3, %rv, %r3
	bt	.LBB42_7
	st	%r3, -12[%fp]
.LBB42_4:                               !   in Loop: Header=BB42_1 Depth=1
	bt	.LBB42_5
	nop
.LBB42_5:                               !   in Loop: Header=BB42_1 Depth=1
	ld	-40[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB42_1
	st	%r3, -40[%fp]
.LBB42_6:
	ld	-44[%fp], %r7
	ld	-36[%fp], %r3
	add	%r3, 0x1, %r3
	ld	-24[%fp], %r9
	st	%r3, 0[%r9]
	ld	-32[%fp], %r3
	st	%r3, -68[%fp]
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__mulsi3
	ld	-36[%fp], %r6
	ld	-68[%fp], %r3
	add	%r3, %rv, %r6
	st	%r6, -64[%fp]
	ld	-16[%fp], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memcpy
	ld	-28[%fp], %r18
	ld	-64[%fp], %r3
	bt	.LBB42_7
	st	%r3, -12[%fp]
.LBB42_7:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end42:
	.size	lsearch, .Lfunc_end42-lsearch
                                        ! -- End function
	.globl	lfind                           ! -- Begin function lfind
	.p2align	2
	.type	lfind,@function
lfind:                                  ! @lfind
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x40, %sp
	ld	0[%fp], %r3
	st	%r6, -16[%fp]
	st	%r7, -20[%fp]
	st	%r18, -24[%fp]
	st	%r19, -28[%fp]
	ld	-28[%fp], %r3
	st	%r3, -44[%fp]
	ld	-20[%fp], %r3
	st	%r3, -32[%fp]
	ld	-24[%fp], %r3
	ld	0[%r3], %r3
	st	%r3, -36[%fp]
	or	%r0, 0x0, %r3
	bt	.LBB43_1
	st	%r3, -40[%fp]
.LBB43_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-40[%fp], %r3
	ld	-36[%fp], %r9
	sub.f	%r3, %r9, %r0
	buge	.LBB43_6
	nop
	bt	.LBB43_2
	nop
.LBB43_2:                               !   in Loop: Header=BB43_1 Depth=1
	ld	-44[%fp], %r7
	ld	0[%fp], %r3
	st	%r3, -48[%fp]
	ld	-16[%fp], %r3
	st	%r3, -52[%fp]
	ld	-32[%fp], %r3
	st	%r3, -56[%fp]
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__mulsi3
	ld	-40[%fp], %r6
	ld	-56[%fp], %r9
	ld	-52[%fp], %r6
	ld	-48[%fp], %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	mov	%r3, %pc
	add	%r9, %rv, %r7
	sub.f	%rv, 0x0, %r0
	bne	.LBB43_4
	nop
	bt	.LBB43_3
	nop
.LBB43_3:
	ld	-44[%fp], %r7
	ld	-32[%fp], %r3
	st	%r3, -60[%fp]
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__mulsi3
	ld	-40[%fp], %r6
	ld	-60[%fp], %r3
	add	%r3, %rv, %r3
	bt	.LBB43_7
	st	%r3, -12[%fp]
.LBB43_4:                               !   in Loop: Header=BB43_1 Depth=1
	bt	.LBB43_5
	nop
.LBB43_5:                               !   in Loop: Header=BB43_1 Depth=1
	ld	-40[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB43_1
	st	%r3, -40[%fp]
.LBB43_6:
	or	%r0, 0x0, %r3
	bt	.LBB43_7
	st	%r3, -12[%fp]
.LBB43_7:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end43:
	.size	lfind, .Lfunc_end43-lfind
                                        ! -- End function
	.globl	abs                             ! -- Begin function abs
	.p2align	2
	.type	abs,@function
abs:                                    ! @abs
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	sub.f	%r3, 0x1, %r0
	blt	.LBB44_2
	sub	%sp, 0x10, %sp
	bt	.LBB44_1
	nop
.LBB44_1:
	ld	-12[%fp], %r3
	bt	.LBB44_3
	st	%r3, -16[%fp]
.LBB44_2:
	ld	-12[%fp], %r9
	or	%r0, 0x0, %r3
	sub	%r3, %r9, %r3
	bt	.LBB44_3
	st	%r3, -16[%fp]
.LBB44_3:
	ld	-16[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end44:
	.size	abs, .Lfunc_end44-abs
                                        ! -- End function
	.globl	atoi                            ! -- Begin function atoi
	.p2align	2
	.type	atoi,@function
atoi:                                   ! @atoi
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
	st	%r6, -12[%fp]
	or	%r0, 0x0, %r3
	st	%r3, -16[%fp]
	bt	.LBB45_1
	st	%r3, -20[%fp]
.LBB45_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	isspace
	ld.b	0[%r3], %r6
	sub.f	%rv, 0x0, %r0
	beq	.LBB45_3
	nop
	bt	.LBB45_2
	nop
.LBB45_2:                               !   in Loop: Header=BB45_1 Depth=1
	ld	-12[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB45_1
	st	%r3, -12[%fp]
.LBB45_3:
	ld	-12[%fp], %r3
	ld.b	0[%r3], %r3
	sub.f	%r3, 0x2b, %r0
	beq	.LBB45_5
	st	%r3, -24[%fp]
	bt	.LBB45_13
	nop
.LBB45_13:
	ld	-24[%fp], %r3
	sub.f	%r3, 0x2d, %r0
	bne	.LBB45_6
	nop
	bt	.LBB45_4
	nop
.LBB45_4:
	mov	0x1, %r3
	bt	.LBB45_5
	st	%r3, -20[%fp]
.LBB45_5:
	ld	-12[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB45_6
	st	%r3, -12[%fp]
.LBB45_6:
	bt	.LBB45_7
	nop
.LBB45_7:                               ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	isdigit
	ld.b	0[%r3], %r6
	sub.f	%rv, 0x0, %r0
	beq	.LBB45_9
	nop
	bt	.LBB45_8
	nop
.LBB45_8:                               !   in Loop: Header=BB45_7 Depth=1
	ld	-16[%fp], %r3
	sh	%r3, 0x1, %r9
	sh	%r3, 0x3, %r3
	add	%r3, %r9, %r3
	ld	-12[%fp], %r9
	add	%r9, 0x1, %r12
	st	%r12, -12[%fp]
	ld.b	0[%r9], %r9
	sub	%r3, %r9, %r3
	add	%r3, 0x30, %r3
	bt	.LBB45_7
	st	%r3, -16[%fp]
.LBB45_9:
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB45_11
	nop
	bt	.LBB45_10
	nop
.LBB45_10:
	ld	-16[%fp], %r3
	bt	.LBB45_12
	st	%r3, -28[%fp]
.LBB45_11:
	ld	-16[%fp], %r9
	or	%r0, 0x0, %r3
	sub	%r3, %r9, %r3
	bt	.LBB45_12
	st	%r3, -28[%fp]
.LBB45_12:
	ld	-28[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end45:
	.size	atoi, .Lfunc_end45-atoi
                                        ! -- End function
	.globl	atol                            ! -- Begin function atol
	.p2align	2
	.type	atol,@function
atol:                                   ! @atol
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
	st	%r6, -12[%fp]
	or	%r0, 0x0, %r3
	st	%r3, -16[%fp]
	bt	.LBB46_1
	st	%r3, -20[%fp]
.LBB46_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	isspace
	ld.b	0[%r3], %r6
	sub.f	%rv, 0x0, %r0
	beq	.LBB46_3
	nop
	bt	.LBB46_2
	nop
.LBB46_2:                               !   in Loop: Header=BB46_1 Depth=1
	ld	-12[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB46_1
	st	%r3, -12[%fp]
.LBB46_3:
	ld	-12[%fp], %r3
	ld.b	0[%r3], %r3
	sub.f	%r3, 0x2b, %r0
	beq	.LBB46_5
	st	%r3, -24[%fp]
	bt	.LBB46_13
	nop
.LBB46_13:
	ld	-24[%fp], %r3
	sub.f	%r3, 0x2d, %r0
	bne	.LBB46_6
	nop
	bt	.LBB46_4
	nop
.LBB46_4:
	mov	0x1, %r3
	bt	.LBB46_5
	st	%r3, -20[%fp]
.LBB46_5:
	ld	-12[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB46_6
	st	%r3, -12[%fp]
.LBB46_6:
	bt	.LBB46_7
	nop
.LBB46_7:                               ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	isdigit
	ld.b	0[%r3], %r6
	sub.f	%rv, 0x0, %r0
	beq	.LBB46_9
	nop
	bt	.LBB46_8
	nop
.LBB46_8:                               !   in Loop: Header=BB46_7 Depth=1
	ld	-16[%fp], %r3
	sh	%r3, 0x1, %r9
	sh	%r3, 0x3, %r3
	add	%r3, %r9, %r3
	ld	-12[%fp], %r9
	add	%r9, 0x1, %r12
	st	%r12, -12[%fp]
	ld.b	0[%r9], %r9
	sub	%r3, %r9, %r3
	add	%r3, 0x30, %r3
	bt	.LBB46_7
	st	%r3, -16[%fp]
.LBB46_9:
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB46_11
	nop
	bt	.LBB46_10
	nop
.LBB46_10:
	ld	-16[%fp], %r3
	bt	.LBB46_12
	st	%r3, -28[%fp]
.LBB46_11:
	ld	-16[%fp], %r9
	or	%r0, 0x0, %r3
	sub	%r3, %r9, %r3
	bt	.LBB46_12
	st	%r3, -28[%fp]
.LBB46_12:
	ld	-28[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end46:
	.size	atol, .Lfunc_end46-atol
                                        ! -- End function
	.globl	atoll                           ! -- Begin function atoll
	.p2align	2
	.type	atoll,@function
atoll:                                  ! @atoll
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x30, %sp
	st	%r6, -12[%fp]
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r9
	or	%r0, 0x0, %r3
	st	%r3, 0[%r9]
	st	%r3, -24[%fp]
	bt	.LBB47_1
	st	%r3, -28[%fp]
.LBB47_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	isspace
	ld.b	0[%r3], %r6
	sub.f	%rv, 0x0, %r0
	beq	.LBB47_3
	nop
	bt	.LBB47_2
	nop
.LBB47_2:                               !   in Loop: Header=BB47_1 Depth=1
	ld	-12[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB47_1
	st	%r3, -12[%fp]
.LBB47_3:
	ld	-12[%fp], %r3
	ld.b	0[%r3], %r3
	sub.f	%r3, 0x2b, %r0
	beq	.LBB47_5
	st	%r3, -32[%fp]
	bt	.LBB47_13
	nop
.LBB47_13:
	ld	-32[%fp], %r3
	sub.f	%r3, 0x2d, %r0
	bne	.LBB47_6
	nop
	bt	.LBB47_4
	nop
.LBB47_4:
	mov	0x1, %r3
	bt	.LBB47_5
	st	%r3, -28[%fp]
.LBB47_5:
	ld	-12[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB47_6
	st	%r3, -12[%fp]
.LBB47_6:
	bt	.LBB47_7
	nop
.LBB47_7:                               ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	isdigit
	ld.b	0[%r3], %r6
	sub.f	%rv, 0x0, %r0
	beq	.LBB47_9
	nop
	bt	.LBB47_8
	nop
.LBB47_8:                               !   in Loop: Header=BB47_7 Depth=1
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r3, -36[%fp]
	ld	0[%r3], %r7
	ld	-24[%fp], %r6
	or	%r0, 0x0, %r18
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__muldi3
	mov	0xa, %r19
	ld	-36[%fp], %r12
	ld	-12[%fp], %r3
	add	%r3, 0x1, %r13
	st	%r13, -12[%fp]
	ld.b	0[%r3], %r3
	sub	%r3, 0x30, %r13
	sha	%r13, -0x1f, %r3
	sub.f	%r9, %r13, %r0
	sult	%r14
	sub	%rv, %r3, %r3
	sub	%r3, %r14, %r3
	sub	%r9, %r13, %r9
	st	%r9, 0[%r12]
	bt	.LBB47_7
	st	%r3, -24[%fp]
.LBB47_9:
	ld	-28[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB47_11
	nop
	bt	.LBB47_10
	nop
.LBB47_10:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	st	%r9, -44[%fp]
	bt	.LBB47_12
	st	%r3, -40[%fp]
.LBB47_11:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r13
	ld	-24[%fp], %r12
	or	%r0, 0x0, %r9
	sub	%r9, %r13, %r3
	sub.f	%r13, 0x0, %r0
	sne	%r13
	add	%r12, %r13, %r12
	sub	%r9, %r12, %r9
	st	%r9, -44[%fp]
	bt	.LBB47_12
	st	%r3, -40[%fp]
.LBB47_12:
	ld	-44[%fp], %rv
	ld	-40[%fp], %r9
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end47:
	.size	atoll, .Lfunc_end47-atoll
                                        ! -- End function
	.globl	bsearch                         ! -- Begin function bsearch
	.p2align	2
	.type	bsearch,@function
bsearch:                                ! @bsearch
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x28, %sp
	ld	0[%fp], %r3
	st	%r6, -16[%fp]
	st	%r7, -20[%fp]
	st	%r18, -24[%fp]
	bt	.LBB48_1
	st	%r19, -28[%fp]
.LBB48_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB48_9
	nop
	bt	.LBB48_2
	nop
.LBB48_2:                               !   in Loop: Header=BB48_1 Depth=1
	ld	-20[%fp], %r3
	st	%r3, -40[%fp]
	ld	-28[%fp], %r6
	ld	-24[%fp], %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__mulsi3
	sh	%r3, -0x1, %r7
	ld	-40[%fp], %r3
	add	%r3, %rv, %r3
	st	%r3, -32[%fp]
	ld	0[%fp], %r3
	ld	-16[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	mov	%r3, %pc
	ld	-32[%fp], %r7
	st	%rv, -36[%fp]
	ld	-36[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB48_4
	nop
	bt	.LBB48_3
	nop
.LBB48_3:                               !   in Loop: Header=BB48_1 Depth=1
	ld	-24[%fp], %r3
	sh	%r3, -0x1, %r3
	bt	.LBB48_8
	st	%r3, -24[%fp]
.LBB48_4:                               !   in Loop: Header=BB48_1 Depth=1
	ld	-36[%fp], %r3
	sub.f	%r3, 0x1, %r0
	blt	.LBB48_6
	nop
	bt	.LBB48_5
	nop
.LBB48_5:                               !   in Loop: Header=BB48_1 Depth=1
	ld	-32[%fp], %r3
	ld	-28[%fp], %r9
	add	%r3, %r9, %r3
	st	%r3, -20[%fp]
	ld	-24[%fp], %r9
	sh	%r9, -0x1, %r3
	or	%r1, 0x0, %r12
	xor	%r3, %r12, %r3
	add	%r3, %r9, %r3
	bt	.LBB48_7
	st	%r3, -24[%fp]
.LBB48_6:
	ld	-32[%fp], %r3
	bt	.LBB48_10
	st	%r3, -12[%fp]
.LBB48_7:                               !   in Loop: Header=BB48_1 Depth=1
	bt	.LBB48_8
	nop
.LBB48_8:                               !   in Loop: Header=BB48_1 Depth=1
	bt	.LBB48_1
	nop
.LBB48_9:
	or	%r0, 0x0, %r3
	bt	.LBB48_10
	st	%r3, -12[%fp]
.LBB48_10:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end48:
	.size	bsearch, .Lfunc_end48-bsearch
                                        ! -- End function
	.globl	bsearch_r                       ! -- Begin function bsearch_r
	.p2align	2
	.type	bsearch_r,@function
bsearch_r:                              ! @bsearch_r
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x30, %sp
	ld	4[%fp], %r3
	ld	0[%fp], %r3
	st	%r6, -16[%fp]
	st	%r7, -20[%fp]
	st	%r18, -24[%fp]
	st	%r19, -28[%fp]
	ld	-20[%fp], %r3
	st	%r3, -32[%fp]
	ld	-24[%fp], %r3
	bt	.LBB49_1
	st	%r3, -36[%fp]
.LBB49_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-36[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB49_8
	nop
	bt	.LBB49_2
	nop
.LBB49_2:                               !   in Loop: Header=BB49_1 Depth=1
	ld	-32[%fp], %r3
	st	%r3, -48[%fp]
	ld	-36[%fp], %r3
	sha	%r3, -0x1, %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__mulsi3
	ld	-28[%fp], %r7
	ld	-48[%fp], %r3
	add	%r3, %rv, %r3
	st	%r3, -44[%fp]
	ld	0[%fp], %r3
	ld	-16[%fp], %r6
	ld	-44[%fp], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	mov	%r3, %pc
	ld	4[%fp], %r18
	st	%rv, -40[%fp]
	ld	-40[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB49_4
	nop
	bt	.LBB49_3
	nop
.LBB49_3:
	ld	-44[%fp], %r3
	bt	.LBB49_9
	st	%r3, -12[%fp]
.LBB49_4:                               !   in Loop: Header=BB49_1 Depth=1
	ld	-40[%fp], %r3
	sub.f	%r3, 0x1, %r0
	blt	.LBB49_6
	nop
	bt	.LBB49_5
	nop
.LBB49_5:                               !   in Loop: Header=BB49_1 Depth=1
	ld	-44[%fp], %r3
	ld	-28[%fp], %r9
	add	%r3, %r9, %r3
	st	%r3, -32[%fp]
	ld	-36[%fp], %r3
	sub	%r3, 0x1, %r3
	bt	.LBB49_6
	st	%r3, -36[%fp]
.LBB49_6:                               !   in Loop: Header=BB49_1 Depth=1
	bt	.LBB49_7
	nop
.LBB49_7:                               !   in Loop: Header=BB49_1 Depth=1
	ld	-36[%fp], %r3
	sha	%r3, -0x1, %r3
	bt	.LBB49_1
	st	%r3, -36[%fp]
.LBB49_8:
	or	%r0, 0x0, %r3
	bt	.LBB49_9
	st	%r3, -12[%fp]
.LBB49_9:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end49:
	.size	bsearch_r, .Lfunc_end49-bsearch_r
                                        ! -- End function
	.globl	div                             ! -- Begin function div
	.p2align	2
	.type	div,@function
div:                                    ! @div
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	ld	0[%fp], %r3
	st	%r3, -24[%fp]
	st	%r3, -20[%fp]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	ld	-12[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__divsi3
	ld	-16[%fp], %r7
	ld	-24[%fp], %r3
	st	%rv, 0[%r3]
	ld	-12[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__modsi3
	ld	-16[%fp], %r7
	ld	-24[%fp], %r9
	or	%rv, 0x0, %r3
	ld	-20[%fp], %rv
	st	%r3, 4[%r9]
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end50:
	.size	div, .Lfunc_end50-div
                                        ! -- End function
	.globl	imaxabs                         ! -- Begin function imaxabs
	.p2align	2
	.type	imaxabs,@function
imaxabs:                                ! @imaxabs
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	ld	0[%r3], %r3
	ld	-16[%fp], %r12
	sub.f	%r12, 0x0, %r0
	smi	%r9
	sub.f	%r3, 0x0, %r0
	seq	%r3
	sub.f	%r12, 0x0, %r0
	sel.eq %r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB51_2
	nop
	bt	.LBB51_1
	nop
.LBB51_1:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	st	%r9, -24[%fp]
	bt	.LBB51_3
	st	%r3, -20[%fp]
.LBB51_2:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r13
	ld	-16[%fp], %r12
	or	%r0, 0x0, %r9
	sub	%r9, %r13, %r3
	sub.f	%r13, 0x0, %r0
	sne	%r13
	add	%r12, %r13, %r12
	sub	%r9, %r12, %r9
	st	%r9, -24[%fp]
	bt	.LBB51_3
	st	%r3, -20[%fp]
.LBB51_3:
	ld	-24[%fp], %rv
	ld	-20[%fp], %r9
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end51:
	.size	imaxabs, .Lfunc_end51-imaxabs
                                        ! -- End function
	.globl	imaxdiv                         ! -- Begin function imaxdiv
	.p2align	2
	.type	imaxdiv,@function
imaxdiv:                                ! @imaxdiv
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x28, %sp
	ld	0[%fp], %r3
	st	%r3, -28[%fp]
	st	%r3, -32[%fp]
                                        ! kill: def $r3 killed $r19
                                        ! kill: def $r3 killed $r18
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r9
	st	%r9, -36[%fp]
	st	%r7, 0[%r9]
	st	%r6, -16[%fp]
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r3, -40[%fp]
	st	%r19, 0[%r3]
	st	%r18, -24[%fp]
	ld	0[%r9], %r7
	ld	-16[%fp], %r6
	ld	0[%r3], %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__divdi3
	ld	-24[%fp], %r18
	ld	-40[%fp], %r3
	ld	-28[%fp], %r12
	or	%r9, 0x0, %r13
	ld	-36[%fp], %r9
	st	%r13, 4[%r12]
	st	%rv, 0[%r12]
	ld	0[%r9], %r7
	ld	-16[%fp], %r6
	ld	0[%r3], %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__moddi3
	ld	-24[%fp], %r18
	or	%rv, 0x0, %r3
	ld	-32[%fp], %rv
	or	%r9, 0x0, %r12
	ld	-28[%fp], %r9
	st	%r12, 12[%r9]
	st	%r3, 8[%r9]
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end52:
	.size	imaxdiv, .Lfunc_end52-imaxdiv
                                        ! -- End function
	.globl	labs                            ! -- Begin function labs
	.p2align	2
	.type	labs,@function
labs:                                   ! @labs
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	sub.f	%r3, 0x1, %r0
	blt	.LBB53_2
	sub	%sp, 0x10, %sp
	bt	.LBB53_1
	nop
.LBB53_1:
	ld	-12[%fp], %r3
	bt	.LBB53_3
	st	%r3, -16[%fp]
.LBB53_2:
	ld	-12[%fp], %r9
	or	%r0, 0x0, %r3
	sub	%r3, %r9, %r3
	bt	.LBB53_3
	st	%r3, -16[%fp]
.LBB53_3:
	ld	-16[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end53:
	.size	labs, .Lfunc_end53-labs
                                        ! -- End function
	.globl	ldiv                            ! -- Begin function ldiv
	.p2align	2
	.type	ldiv,@function
ldiv:                                   ! @ldiv
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	ld	0[%fp], %r3
	st	%r3, -24[%fp]
	st	%r3, -20[%fp]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	ld	-12[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__divsi3
	ld	-16[%fp], %r7
	ld	-24[%fp], %r3
	st	%rv, 0[%r3]
	ld	-12[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__modsi3
	ld	-16[%fp], %r7
	ld	-24[%fp], %r9
	or	%rv, 0x0, %r3
	ld	-20[%fp], %rv
	st	%r3, 4[%r9]
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end54:
	.size	ldiv, .Lfunc_end54-ldiv
                                        ! -- End function
	.globl	llabs                           ! -- Begin function llabs
	.p2align	2
	.type	llabs,@function
llabs:                                  ! @llabs
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	ld	0[%r3], %r3
	ld	-16[%fp], %r12
	sub.f	%r12, 0x0, %r0
	smi	%r9
	sub.f	%r3, 0x0, %r0
	seq	%r3
	sub.f	%r12, 0x0, %r0
	sel.eq %r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB55_2
	nop
	bt	.LBB55_1
	nop
.LBB55_1:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	st	%r9, -24[%fp]
	bt	.LBB55_3
	st	%r3, -20[%fp]
.LBB55_2:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r13
	ld	-16[%fp], %r12
	or	%r0, 0x0, %r9
	sub	%r9, %r13, %r3
	sub.f	%r13, 0x0, %r0
	sne	%r13
	add	%r12, %r13, %r12
	sub	%r9, %r12, %r9
	st	%r9, -24[%fp]
	bt	.LBB55_3
	st	%r3, -20[%fp]
.LBB55_3:
	ld	-24[%fp], %rv
	ld	-20[%fp], %r9
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end55:
	.size	llabs, .Lfunc_end55-llabs
                                        ! -- End function
	.globl	lldiv                           ! -- Begin function lldiv
	.p2align	2
	.type	lldiv,@function
lldiv:                                  ! @lldiv
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x28, %sp
	ld	0[%fp], %r3
	st	%r3, -28[%fp]
	st	%r3, -32[%fp]
                                        ! kill: def $r3 killed $r19
                                        ! kill: def $r3 killed $r18
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r9
	st	%r9, -36[%fp]
	st	%r7, 0[%r9]
	st	%r6, -16[%fp]
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r3, -40[%fp]
	st	%r19, 0[%r3]
	st	%r18, -24[%fp]
	ld	0[%r9], %r7
	ld	-16[%fp], %r6
	ld	0[%r3], %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__divdi3
	ld	-24[%fp], %r18
	ld	-40[%fp], %r3
	ld	-28[%fp], %r12
	or	%r9, 0x0, %r13
	ld	-36[%fp], %r9
	st	%r13, 4[%r12]
	st	%rv, 0[%r12]
	ld	0[%r9], %r7
	ld	-16[%fp], %r6
	ld	0[%r3], %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__moddi3
	ld	-24[%fp], %r18
	or	%rv, 0x0, %r3
	ld	-32[%fp], %rv
	or	%r9, 0x0, %r12
	ld	-28[%fp], %r9
	st	%r12, 12[%r9]
	st	%r3, 8[%r9]
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end56:
	.size	lldiv, .Lfunc_end56-lldiv
                                        ! -- End function
	.globl	wcschr                          ! -- Begin function wcschr
	.p2align	2
	.type	wcschr,@function
wcschr:                                 ! @wcschr
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	st	%r6, -12[%fp]
	bt	.LBB57_1
	st	%r7, -16[%fp]
.LBB57_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	ld	0[%r3], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB57_3
	st	%r3, -20[%fp]
	bt	.LBB57_2
	nop
.LBB57_2:                               !   in Loop: Header=BB57_1 Depth=1
	ld	-12[%fp], %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	sub.f	%r3, %r9, %r0
	sne	%r3
	bt	.LBB57_3
	st	%r3, -20[%fp]
.LBB57_3:                               !   in Loop: Header=BB57_1 Depth=1
	ld	-20[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB57_6
	nop
	bt	.LBB57_4
	nop
.LBB57_4:                               !   in Loop: Header=BB57_1 Depth=1
	bt	.LBB57_5
	nop
.LBB57_5:                               !   in Loop: Header=BB57_1 Depth=1
	ld	-12[%fp], %r3
	add	%r3, 0x4, %r3
	bt	.LBB57_1
	st	%r3, -12[%fp]
.LBB57_6:
	ld	-12[%fp], %r3
	ld	0[%r3], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB57_8
	nop
	bt	.LBB57_7
	nop
.LBB57_7:
	ld	-12[%fp], %r3
	bt	.LBB57_9
	st	%r3, -24[%fp]
.LBB57_8:
	or	%r0, 0x0, %r3
	bt	.LBB57_9
	st	%r3, -24[%fp]
.LBB57_9:
	ld	-24[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end57:
	.size	wcschr, .Lfunc_end57-wcschr
                                        ! -- End function
	.globl	wcscmp                          ! -- Begin function wcscmp
	.p2align	2
	.type	wcscmp,@function
wcscmp:                                 ! @wcscmp
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	st	%r6, -12[%fp]
	bt	.LBB58_1
	st	%r7, -16[%fp]
.LBB58_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	ld	0[%r3], %r9
	ld	-16[%fp], %r3
	ld	0[%r3], %r12
	or	%r0, 0x0, %r3
	sub.f	%r9, %r12, %r0
	bne	.LBB58_4
	st	%r3, -20[%fp]
	bt	.LBB58_2
	nop
.LBB58_2:                               !   in Loop: Header=BB58_1 Depth=1
	ld	-12[%fp], %r3
	ld	0[%r3], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB58_4
	st	%r3, -20[%fp]
	bt	.LBB58_3
	nop
.LBB58_3:                               !   in Loop: Header=BB58_1 Depth=1
	ld	-16[%fp], %r3
	ld	0[%r3], %r3
	sub.f	%r3, 0x0, %r0
	sne	%r3
	bt	.LBB58_4
	st	%r3, -20[%fp]
.LBB58_4:                               !   in Loop: Header=BB58_1 Depth=1
	ld	-20[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB58_7
	nop
	bt	.LBB58_5
	nop
.LBB58_5:                               !   in Loop: Header=BB58_1 Depth=1
	bt	.LBB58_6
	nop
.LBB58_6:                               !   in Loop: Header=BB58_1 Depth=1
	ld	-12[%fp], %r3
	add	%r3, 0x4, %r3
	st	%r3, -12[%fp]
	ld	-16[%fp], %r3
	add	%r3, 0x4, %r3
	bt	.LBB58_1
	st	%r3, -16[%fp]
.LBB58_7:
	ld	-12[%fp], %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	ld	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	bge	.LBB58_9
	nop
	bt	.LBB58_8
	nop
.LBB58_8:
	or	%r1, 0x0, %r3
	bt	.LBB58_10
	st	%r3, -24[%fp]
.LBB58_9:
	ld	-12[%fp], %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	ld	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	sgt	%r3
	bt	.LBB58_10
	st	%r3, -24[%fp]
.LBB58_10:
	ld	-24[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end58:
	.size	wcscmp, .Lfunc_end58-wcscmp
                                        ! -- End function
	.globl	wcscpy                          ! -- Begin function wcscpy
	.p2align	2
	.type	wcscpy,@function
wcscpy:                                 ! @wcscpy
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	ld	-12[%fp], %r3
	bt	.LBB59_1
	st	%r3, -20[%fp]
.LBB59_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-16[%fp], %r3
	add	%r3, 0x4, %r9
	st	%r9, -16[%fp]
	ld	0[%r3], %r3
	ld	-12[%fp], %r9
	add	%r9, 0x4, %r12
	st	%r12, -12[%fp]
	sub.f	%r3, 0x0, %r0
	beq	.LBB59_3
	st	%r3, 0[%r9]
	bt	.LBB59_2
	nop
.LBB59_2:                               !   in Loop: Header=BB59_1 Depth=1
	bt	.LBB59_1
	nop
.LBB59_3:
	ld	-20[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end59:
	.size	wcscpy, .Lfunc_end59-wcscpy
                                        ! -- End function
	.globl	wcslen                          ! -- Begin function wcslen
	.p2align	2
	.type	wcslen,@function
wcslen:                                 ! @wcslen
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	bt	.LBB60_1
	st	%r3, -16[%fp]
.LBB60_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	ld	0[%r3], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB60_4
	nop
	bt	.LBB60_2
	nop
.LBB60_2:                               !   in Loop: Header=BB60_1 Depth=1
	bt	.LBB60_3
	nop
.LBB60_3:                               !   in Loop: Header=BB60_1 Depth=1
	ld	-12[%fp], %r3
	add	%r3, 0x4, %r3
	bt	.LBB60_1
	st	%r3, -12[%fp]
.LBB60_4:
	ld	-12[%fp], %r3
	ld	-16[%fp], %r9
	sub	%r3, %r9, %r3
	sha	%r3, -0x2, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end60:
	.size	wcslen, .Lfunc_end60-wcslen
                                        ! -- End function
	.globl	wcsncmp                         ! -- Begin function wcsncmp
	.p2align	2
	.type	wcsncmp,@function
wcsncmp:                                ! @wcsncmp
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	bt	.LBB61_1
	st	%r18, -20[%fp]
.LBB61_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB61_5
	st	%r3, -24[%fp]
	bt	.LBB61_2
	nop
.LBB61_2:                               !   in Loop: Header=BB61_1 Depth=1
	ld	-12[%fp], %r3
	ld	0[%r3], %r9
	ld	-16[%fp], %r3
	ld	0[%r3], %r12
	or	%r0, 0x0, %r3
	sub.f	%r9, %r12, %r0
	bne	.LBB61_5
	st	%r3, -24[%fp]
	bt	.LBB61_3
	nop
.LBB61_3:                               !   in Loop: Header=BB61_1 Depth=1
	ld	-12[%fp], %r3
	ld	0[%r3], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB61_5
	st	%r3, -24[%fp]
	bt	.LBB61_4
	nop
.LBB61_4:                               !   in Loop: Header=BB61_1 Depth=1
	ld	-16[%fp], %r3
	ld	0[%r3], %r3
	sub.f	%r3, 0x0, %r0
	sne	%r3
	bt	.LBB61_5
	st	%r3, -24[%fp]
.LBB61_5:                               !   in Loop: Header=BB61_1 Depth=1
	ld	-24[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB61_8
	nop
	bt	.LBB61_6
	nop
.LBB61_6:                               !   in Loop: Header=BB61_1 Depth=1
	bt	.LBB61_7
	nop
.LBB61_7:                               !   in Loop: Header=BB61_1 Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r3
	st	%r3, -20[%fp]
	ld	-12[%fp], %r3
	add	%r3, 0x4, %r3
	st	%r3, -12[%fp]
	ld	-16[%fp], %r3
	add	%r3, 0x4, %r3
	bt	.LBB61_1
	st	%r3, -16[%fp]
.LBB61_8:
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB61_13
	nop
	bt	.LBB61_9
	nop
.LBB61_9:
	ld	-12[%fp], %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	ld	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	bge	.LBB61_11
	nop
	bt	.LBB61_10
	nop
.LBB61_10:
	or	%r1, 0x0, %r3
	bt	.LBB61_12
	st	%r3, -28[%fp]
.LBB61_11:
	ld	-12[%fp], %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	ld	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	sgt	%r3
	bt	.LBB61_12
	st	%r3, -28[%fp]
.LBB61_12:
	ld	-28[%fp], %r3
	bt	.LBB61_14
	st	%r3, -32[%fp]
.LBB61_13:
	or	%r0, 0x0, %r3
	bt	.LBB61_14
	st	%r3, -32[%fp]
.LBB61_14:
	ld	-32[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end61:
	.size	wcsncmp, .Lfunc_end61-wcsncmp
                                        ! -- End function
	.globl	wmemchr                         ! -- Begin function wmemchr
	.p2align	2
	.type	wmemchr,@function
wmemchr:                                ! @wmemchr
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	bt	.LBB62_1
	st	%r18, -20[%fp]
.LBB62_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB62_3
	st	%r3, -24[%fp]
	bt	.LBB62_2
	nop
.LBB62_2:                               !   in Loop: Header=BB62_1 Depth=1
	ld	-12[%fp], %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	sub.f	%r3, %r9, %r0
	sne	%r3
	bt	.LBB62_3
	st	%r3, -24[%fp]
.LBB62_3:                               !   in Loop: Header=BB62_1 Depth=1
	ld	-24[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB62_6
	nop
	bt	.LBB62_4
	nop
.LBB62_4:                               !   in Loop: Header=BB62_1 Depth=1
	bt	.LBB62_5
	nop
.LBB62_5:                               !   in Loop: Header=BB62_1 Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r3
	st	%r3, -20[%fp]
	ld	-12[%fp], %r3
	add	%r3, 0x4, %r3
	bt	.LBB62_1
	st	%r3, -12[%fp]
.LBB62_6:
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB62_8
	nop
	bt	.LBB62_7
	nop
.LBB62_7:
	ld	-12[%fp], %r3
	bt	.LBB62_9
	st	%r3, -28[%fp]
.LBB62_8:
	or	%r0, 0x0, %r3
	bt	.LBB62_9
	st	%r3, -28[%fp]
.LBB62_9:
	ld	-28[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end62:
	.size	wmemchr, .Lfunc_end62-wmemchr
                                        ! -- End function
	.globl	wmemcmp                         ! -- Begin function wmemcmp
	.p2align	2
	.type	wmemcmp,@function
wmemcmp:                                ! @wmemcmp
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	bt	.LBB63_1
	st	%r18, -20[%fp]
.LBB63_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB63_3
	st	%r3, -24[%fp]
	bt	.LBB63_2
	nop
.LBB63_2:                               !   in Loop: Header=BB63_1 Depth=1
	ld	-12[%fp], %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	ld	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	seq	%r3
	bt	.LBB63_3
	st	%r3, -24[%fp]
.LBB63_3:                               !   in Loop: Header=BB63_1 Depth=1
	ld	-24[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB63_6
	nop
	bt	.LBB63_4
	nop
.LBB63_4:                               !   in Loop: Header=BB63_1 Depth=1
	bt	.LBB63_5
	nop
.LBB63_5:                               !   in Loop: Header=BB63_1 Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r3
	st	%r3, -20[%fp]
	ld	-12[%fp], %r3
	add	%r3, 0x4, %r3
	st	%r3, -12[%fp]
	ld	-16[%fp], %r3
	add	%r3, 0x4, %r3
	bt	.LBB63_1
	st	%r3, -16[%fp]
.LBB63_6:
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB63_11
	nop
	bt	.LBB63_7
	nop
.LBB63_7:
	ld	-12[%fp], %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	ld	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	bge	.LBB63_9
	nop
	bt	.LBB63_8
	nop
.LBB63_8:
	or	%r1, 0x0, %r3
	bt	.LBB63_10
	st	%r3, -28[%fp]
.LBB63_9:
	ld	-12[%fp], %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	ld	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	sgt	%r3
	bt	.LBB63_10
	st	%r3, -28[%fp]
.LBB63_10:
	ld	-28[%fp], %r3
	bt	.LBB63_12
	st	%r3, -32[%fp]
.LBB63_11:
	or	%r0, 0x0, %r3
	bt	.LBB63_12
	st	%r3, -32[%fp]
.LBB63_12:
	ld	-32[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end63:
	.size	wmemcmp, .Lfunc_end63-wmemcmp
                                        ! -- End function
	.globl	wmemcpy                         ! -- Begin function wmemcpy
	.p2align	2
	.type	wmemcpy,@function
wmemcpy:                                ! @wmemcpy
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	ld	-12[%fp], %r3
	bt	.LBB64_1
	st	%r3, -24[%fp]
.LBB64_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r9
	sub.f	%r3, 0x0, %r0
	beq	.LBB64_3
	st	%r9, -20[%fp]
	bt	.LBB64_2
	nop
.LBB64_2:                               !   in Loop: Header=BB64_1 Depth=1
	ld	-16[%fp], %r3
	add	%r3, 0x4, %r9
	st	%r9, -16[%fp]
	ld	0[%r3], %r3
	ld	-12[%fp], %r9
	add	%r9, 0x4, %r12
	st	%r12, -12[%fp]
	bt	.LBB64_1
	st	%r3, 0[%r9]
.LBB64_3:
	ld	-24[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end64:
	.size	wmemcpy, .Lfunc_end64-wmemcpy
                                        ! -- End function
	.globl	wmemmove                        ! -- Begin function wmemmove
	.p2align	2
	.type	wmemmove,@function
wmemmove:                               ! @wmemmove
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	st	%r6, -16[%fp]
	st	%r7, -20[%fp]
	st	%r18, -24[%fp]
	ld	-16[%fp], %r3
	st	%r3, -28[%fp]
	ld	-16[%fp], %r3
	ld	-20[%fp], %r9
	sub.f	%r3, %r9, %r0
	bne	.LBB65_2
	sub	%sp, 0x20, %sp
	bt	.LBB65_1
	nop
.LBB65_1:
	ld	-16[%fp], %r3
	bt	.LBB65_12
	st	%r3, -12[%fp]
.LBB65_2:
	ld	-16[%fp], %r3
	ld	-20[%fp], %r9
	sub	%r3, %r9, %r3
	ld	-24[%fp], %r9
	sh	%r9, 0x2, %r9
	sub.f	%r3, %r9, %r0
	buge	.LBB65_7
	nop
	bt	.LBB65_3
	nop
.LBB65_3:
	bt	.LBB65_4
	nop
.LBB65_4:                               ! =>This Inner Loop Header: Depth=1
	ld	-24[%fp], %r3
	sub	%r3, 0x1, %r9
	sub.f	%r3, 0x0, %r0
	beq	.LBB65_6
	st	%r9, -24[%fp]
	bt	.LBB65_5
	nop
.LBB65_5:                               !   in Loop: Header=BB65_4 Depth=1
	ld	-20[%fp], %r3
	ld	-24[%fp], %r9
	sh	%r9, 0x2, %r12
	add	%r3, %r12, %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	bt	.LBB65_4
	st	%r3, [%r9 add %r12]
.LBB65_6:
	bt	.LBB65_11
	nop
.LBB65_7:
	bt	.LBB65_8
	nop
.LBB65_8:                               ! =>This Inner Loop Header: Depth=1
	ld	-24[%fp], %r3
	sub	%r3, 0x1, %r9
	sub.f	%r3, 0x0, %r0
	beq	.LBB65_10
	st	%r9, -24[%fp]
	bt	.LBB65_9
	nop
.LBB65_9:                               !   in Loop: Header=BB65_8 Depth=1
	ld	-20[%fp], %r3
	add	%r3, 0x4, %r9
	st	%r9, -20[%fp]
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	add	%r9, 0x4, %r12
	st	%r12, -16[%fp]
	bt	.LBB65_8
	st	%r3, 0[%r9]
.LBB65_10:
	bt	.LBB65_11
	nop
.LBB65_11:
	ld	-28[%fp], %r3
	bt	.LBB65_12
	st	%r3, -12[%fp]
.LBB65_12:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end65:
	.size	wmemmove, .Lfunc_end65-wmemmove
                                        ! -- End function
	.globl	wmemset                         ! -- Begin function wmemset
	.p2align	2
	.type	wmemset,@function
wmemset:                                ! @wmemset
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	ld	-12[%fp], %r3
	bt	.LBB66_1
	st	%r3, -24[%fp]
.LBB66_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r9
	sub.f	%r3, 0x0, %r0
	beq	.LBB66_3
	st	%r9, -20[%fp]
	bt	.LBB66_2
	nop
.LBB66_2:                               !   in Loop: Header=BB66_1 Depth=1
	ld	-16[%fp], %r3
	ld	-12[%fp], %r9
	add	%r9, 0x4, %r12
	st	%r12, -12[%fp]
	bt	.LBB66_1
	st	%r3, 0[%r9]
.LBB66_3:
	ld	-24[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end66:
	.size	wmemset, .Lfunc_end66-wmemset
                                        ! -- End function
	.globl	bcopy                           ! -- Begin function bcopy
	.p2align	2
	.type	bcopy,@function
bcopy:                                  ! @bcopy
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	ld	-12[%fp], %r3
	st	%r3, -24[%fp]
	ld	-16[%fp], %r3
	st	%r3, -28[%fp]
	ld	-24[%fp], %r3
	ld	-28[%fp], %r9
	sub.f	%r3, %r9, %r0
	buge	.LBB67_6
	sub	%sp, 0x20, %sp
	bt	.LBB67_1
	nop
.LBB67_1:
	ld	-20[%fp], %r9
	ld	-24[%fp], %r3
	add	%r3, %r9, %r3
	st	%r3, -24[%fp]
	ld	-20[%fp], %r9
	ld	-28[%fp], %r3
	add	%r3, %r9, %r3
	bt	.LBB67_2
	st	%r3, -28[%fp]
.LBB67_2:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB67_5
	nop
	bt	.LBB67_3
	nop
.LBB67_3:                               !   in Loop: Header=BB67_2 Depth=1
	ld	-24[%fp], %r3
	sub	%r3, 0x1, %r9
	st	%r9, -24[%fp]
	uld.b	-1[%r3], %r3
	ld	-28[%fp], %r9
	sub	%r9, 0x1, %r12
	st	%r12, -28[%fp]
	bt	.LBB67_4
	st.b	%r3, -1[%r9]
.LBB67_4:                               !   in Loop: Header=BB67_2 Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r3
	bt	.LBB67_2
	st	%r3, -20[%fp]
.LBB67_5:
	bt	.LBB67_13
	nop
.LBB67_6:
	ld	-24[%fp], %r3
	ld	-28[%fp], %r9
	sub.f	%r3, %r9, %r0
	beq	.LBB67_12
	nop
	bt	.LBB67_7
	nop
.LBB67_7:
	bt	.LBB67_8
	nop
.LBB67_8:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB67_11
	nop
	bt	.LBB67_9
	nop
.LBB67_9:                               !   in Loop: Header=BB67_8 Depth=1
	ld	-24[%fp], %r3
	add	%r3, 0x1, %r9
	st	%r9, -24[%fp]
	uld.b	0[%r3], %r3
	ld	-28[%fp], %r9
	add	%r9, 0x1, %r12
	st	%r12, -28[%fp]
	bt	.LBB67_10
	st.b	%r3, 0[%r9]
.LBB67_10:                              !   in Loop: Header=BB67_8 Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r3
	bt	.LBB67_8
	st	%r3, -20[%fp]
.LBB67_11:
	bt	.LBB67_12
	nop
.LBB67_12:
	bt	.LBB67_13
	nop
.LBB67_13:
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end67:
	.size	bcopy, .Lfunc_end67-bcopy
                                        ! -- End function
	.globl	rotl64                          ! -- Begin function rotl64
	.p2align	2
	.type	rotl64,@function
rotl64:                                 ! @rotl64
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	st	%r18, -20[%fp]
	ld	0[%r3], %r9
	ld	-16[%fp], %r14
	ld	-20[%fp], %r20
	mov	0x20, %r17
	sub	%r17, %r20, %r3
	sub	%r0, %r3, %r3
	sh	%r9, %r3, %r3
	or	%r0, 0x0, %r13
	sub.f	%r20, 0x0, %r0
	sel.eq %r13, %r3, %r3
	sh	%r14, %r20, %r12
	or	%r3, %r12, %r12
	sub	%r20, 0x20, %r16
	sh	%r9, %r16, %r3
	sub.f	%r16, 0x0, %r0
	sel.pl %r3, %r12, %r12
	sh	%r9, %r20, %r3
	sub.f	%r16, 0x0, %r0
	sel.pl %r13, %r3, %r3
	mov	0x40, %r16
	sub	%r16, %r20, %r16
	sub	%r17, %r16, %r17
	sub	%r0, %r16, %r20
	sh	%r14, %r20, %r21
	sub.f	%r17, 0x0, %r0
	sel.le %r13, %r21, %r13
	sh	%r9, %r20, %r9
	sub.f	%r17, 0x0, %r0
	sel.le %r13, %r9, %r9
	sh	%r14, %r17, %r14
	or	%r9, %r14, %r14
	sub.f	%r16, 0x0, %r0
	sel.eq %r9, %r14, %r9
	or	%r12, %r13, %rv
	or	%r3, %r9, %r9
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end68:
	.size	rotl64, .Lfunc_end68-rotl64
                                        ! -- End function
	.globl	rotr64                          ! -- Begin function rotr64
	.p2align	2
	.type	rotr64,@function
rotr64:                                 ! @rotr64
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	st	%r18, -20[%fp]
	ld	0[%r3], %r14
	ld	-16[%fp], %r20
	ld	-20[%fp], %r21
	mov	0x20, %r12
	sub	%r12, %r21, %r16
	sub	%r0, %r21, %r9
	sh	%r20, %r9, %r3
	or	%r0, 0x0, %r13
	sub.f	%r16, 0x0, %r0
	sel.le %r13, %r3, %r3
	sh	%r14, %r9, %r9
	sub.f	%r16, 0x0, %r0
	sel.le %r3, %r9, %r9
	sh	%r20, %r16, %r17
	or	%r9, %r17, %r17
	sub.f	%r21, 0x0, %r0
	sel.eq %r9, %r17, %r9
	mov	0x40, %r17
	sub	%r17, %r21, %r17
	sub	%r12, %r17, %r12
	sub	%r0, %r12, %r12
	sh	%r14, %r12, %r12
	sub.f	%r17, 0x0, %r0
	sel.eq %r13, %r12, %r12
	sh	%r20, %r17, %r20
	or	%r12, %r20, %r20
	sh	%r14, %r16, %r12
	sub.f	%r16, 0x0, %r0
	sel.pl %r12, %r20, %r12
	sh	%r14, %r17, %r14
	sub.f	%r16, 0x0, %r0
	sel.pl %r13, %r14, %r13
	or	%r9, %r13, %r9
	or	%r3, %r12, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end69:
	.size	rotr64, .Lfunc_end69-rotr64
                                        ! -- End function
	.globl	rotl32                          ! -- Begin function rotl32
	.p2align	2
	.type	rotl32,@function
rotl32:                                 ! @rotl32
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	ld	-12[%fp], %r9
	ld	-16[%fp], %r13
	sh	%r9, %r13, %r3
	mov	0x20, %r12
	sub	%r12, %r13, %r12
	sub	%r0, %r12, %r12
	sh	%r9, %r12, %r9
	or	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end70:
	.size	rotl32, .Lfunc_end70-rotl32
                                        ! -- End function
	.globl	rotr32                          ! -- Begin function rotr32
	.p2align	2
	.type	rotr32,@function
rotr32:                                 ! @rotr32
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	ld	-12[%fp], %r9
	ld	-16[%fp], %r13
	sub	%r0, %r13, %r3
	sh	%r9, %r3, %r3
	mov	0x20, %r12
	sub	%r12, %r13, %r12
	sh	%r9, %r12, %r9
	or	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end71:
	.size	rotr32, .Lfunc_end71-rotr32
                                        ! -- End function
	.globl	rotl_sz                         ! -- Begin function rotl_sz
	.p2align	2
	.type	rotl_sz,@function
rotl_sz:                                ! @rotl_sz
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	ld	-12[%fp], %r9
	ld	-16[%fp], %r13
	sh	%r9, %r13, %r3
	mov	0x20, %r12
	sub	%r12, %r13, %r12
	sub	%r0, %r12, %r12
	sh	%r9, %r12, %r9
	or	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end72:
	.size	rotl_sz, .Lfunc_end72-rotl_sz
                                        ! -- End function
	.globl	rotr_sz                         ! -- Begin function rotr_sz
	.p2align	2
	.type	rotr_sz,@function
rotr_sz:                                ! @rotr_sz
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	ld	-12[%fp], %r9
	ld	-16[%fp], %r13
	sub	%r0, %r13, %r3
	sh	%r9, %r3, %r3
	mov	0x20, %r12
	sub	%r12, %r13, %r12
	sh	%r9, %r12, %r9
	or	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end73:
	.size	rotr_sz, .Lfunc_end73-rotr_sz
                                        ! -- End function
	.globl	rotl16                          ! -- Begin function rotl16
	.p2align	2
	.type	rotl16,@function
rotl16:                                 ! @rotl16
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
                                        ! kill: def $r3 killed $r6
	st.h	%r6, -10[%fp]
	st	%r7, -16[%fp]
	uld.h	-10[%fp], %r9
	ld	-16[%fp], %r13
	sh	%r9, %r13, %r3
	mov	0x10, %r12
	sub	%r12, %r13, %r12
	sub	%r0, %r12, %r12
	sh	%r9, %r12, %r9
	or	%r3, %r9, %r3
	and	%r3, 0xffff, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end74:
	.size	rotl16, .Lfunc_end74-rotl16
                                        ! -- End function
	.globl	rotr16                          ! -- Begin function rotr16
	.p2align	2
	.type	rotr16,@function
rotr16:                                 ! @rotr16
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
                                        ! kill: def $r3 killed $r6
	st.h	%r6, -10[%fp]
	st	%r7, -16[%fp]
	uld.h	-10[%fp], %r9
	ld	-16[%fp], %r13
	sub	%r0, %r13, %r3
	sh	%r9, %r3, %r3
	mov	0x10, %r12
	sub	%r12, %r13, %r12
	sh	%r9, %r12, %r9
	or	%r3, %r9, %r3
	and	%r3, 0xffff, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end75:
	.size	rotr16, .Lfunc_end75-rotr16
                                        ! -- End function
	.globl	rotl8                           ! -- Begin function rotl8
	.p2align	2
	.type	rotl8,@function
rotl8:                                  ! @rotl8
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
                                        ! kill: def $r3 killed $r6
	st.b	%r6, -9[%fp]
	st	%r7, -16[%fp]
	uld.b	-9[%fp], %r9
	ld	-16[%fp], %r13
	sh	%r9, %r13, %r3
	mov	0x8, %r12
	sub	%r12, %r13, %r12
	sub	%r0, %r12, %r12
	sh	%r9, %r12, %r9
	or	%r3, %r9, %r3
	mov	0xff, %r9
	and	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end76:
	.size	rotl8, .Lfunc_end76-rotl8
                                        ! -- End function
	.globl	rotr8                           ! -- Begin function rotr8
	.p2align	2
	.type	rotr8,@function
rotr8:                                  ! @rotr8
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
                                        ! kill: def $r3 killed $r6
	st.b	%r6, -9[%fp]
	st	%r7, -16[%fp]
	uld.b	-9[%fp], %r9
	ld	-16[%fp], %r13
	sub	%r0, %r13, %r3
	sh	%r9, %r3, %r3
	mov	0x8, %r12
	sub	%r12, %r13, %r12
	sh	%r9, %r12, %r9
	or	%r3, %r9, %r3
	mov	0xff, %r9
	and	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end77:
	.size	rotr8, .Lfunc_end77-rotr8
                                        ! -- End function
	.globl	bswap_16                        ! -- Begin function bswap_16
	.p2align	2
	.type	bswap_16,@function
bswap_16:                               ! @bswap_16
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
                                        ! kill: def $r3 killed $r6
	st.h	%r6, -10[%fp]
	mov	0xff, %r3
	st.h	%r3, -12[%fp]
	uld.h	-10[%fp], %r9
	uld.h	-12[%fp], %r12
	sh	%r12, 0x8, %r3
	and	%r9, %r3, %r3
	sh	%r3, -0x8, %r3
	and	%r9, %r12, %r9
	sh	%r9, 0x8, %r9
	or	%r3, %r9, %r3
	and	%r3, 0xffff, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end78:
	.size	bswap_16, .Lfunc_end78-bswap_16
                                        ! -- End function
	.globl	bswap_32                        ! -- Begin function bswap_32
	.p2align	2
	.type	bswap_32,@function
bswap_32:                               ! @bswap_32
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	mov	0xff, %r3
	st	%r3, -16[%fp]
	ld	-12[%fp], %r9
	ld	-16[%fp], %r12
	sh	%r12, 0x18, %r3
	and	%r9, %r3, %r3
	sh	%r3, -0x18, %r3
	sh	%r12, 0x10, %r13
	and	%r9, %r13, %r14
	sh	%r14, -0x8, %r14
	or	%r3, %r14, %r3
	sh	%r9, 0x8, %r14
	and	%r13, %r14, %r13
	or	%r3, %r13, %r3
	and	%r9, %r12, %r9
	sh	%r9, 0x18, %r9
	or	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end79:
	.size	bswap_32, .Lfunc_end79-bswap_32
                                        ! -- End function
	.globl	bswap_64                        ! -- Begin function bswap_64
	.p2align	2
	.type	bswap_64,@function
bswap_64:                               ! @bswap_64
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r9
	st	%r7, 0[%r9]
	st	%r6, -16[%fp]
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	mov	0xff, %r12
	st	%r12, 0[%r3]
	or	%r0, 0x0, %r12
	st	%r12, -24[%fp]
	ld	0[%r9], %r12
	ld	-16[%fp], %r17
	ld	0[%r3], %r13
	sh	%r13, 0x18, %r3
	and	%r17, %r3, %r3
	sh	%r3, -0x18, %r3
	sh	%r13, 0x10, %r14
	and	%r17, %r14, %r9
	sh	%r9, -0x8, %r9
	or	%r3, %r9, %r9
	sh	%r13, 0x8, %r16
	and	%r17, %r16, %r20
	sh	%r20, -0x18, %r3
	sh	%r20, 0x8, %r20
	or	%r9, %r20, %r9
	and	%r17, %r13, %r21
	sh	%r21, -0x8, %r20
	sh	%r21, 0x18, %r21
	or	%r9, %r21, %r9
	or	%r3, %r20, %r3
	sh	%r12, -0x18, %r21
	sh	%r17, 0x8, %r20
	or	%r20, %r21, %r20
	and	%r13, %r20, %r20
	or	%r3, %r20, %r3
	sh	%r12, -0x8, %r20
	sh	%r17, 0x18, %r17
	or	%r17, %r20, %r17
	and	%r16, %r17, %r16
	or	%r3, %r16, %r3
	sh	%r12, 0x8, %r16
	and	%r14, %r16, %r14
	or	%r3, %r14, %r3
	and	%r12, %r13, %r12
	sh	%r12, 0x18, %r12
	or	%r3, %r12, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end80:
	.size	bswap_64, .Lfunc_end80-bswap_64
                                        ! -- End function
	.globl	ffs                             ! -- Begin function ffs
	.p2align	2
	.type	ffs,@function
ffs:                                    ! @ffs
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	st	%r6, -16[%fp]
	or	%r0, 0x0, %r3
	bt	.LBB81_1
	st	%r3, -20[%fp]
.LBB81_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub.f	%r3, 0x1f, %r0
	bugt	.LBB81_6
	nop
	bt	.LBB81_2
	nop
.LBB81_2:                               !   in Loop: Header=BB81_1 Depth=1
	ld	-16[%fp], %r3
	ld	-20[%fp], %r9
	sub	%r0, %r9, %r9
	sh	%r3, %r9, %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB81_4
	nop
	bt	.LBB81_3
	nop
.LBB81_3:
	ld	-20[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB81_7
	st	%r3, -12[%fp]
.LBB81_4:                               !   in Loop: Header=BB81_1 Depth=1
	bt	.LBB81_5
	nop
.LBB81_5:                               !   in Loop: Header=BB81_1 Depth=1
	ld	-20[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB81_1
	st	%r3, -20[%fp]
.LBB81_6:
	or	%r0, 0x0, %r3
	bt	.LBB81_7
	st	%r3, -12[%fp]
.LBB81_7:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end81:
	.size	ffs, .Lfunc_end81-ffs
                                        ! -- End function
	.globl	libiberty_ffs                   ! -- Begin function libiberty_ffs
	.p2align	2
	.type	libiberty_ffs,@function
libiberty_ffs:                          ! @libiberty_ffs
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	st	%r6, -16[%fp]
	ld	-16[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB82_2
	sub	%sp, 0x18, %sp
	bt	.LBB82_1
	nop
.LBB82_1:
	or	%r0, 0x0, %r3
	bt	.LBB82_7
	st	%r3, -12[%fp]
.LBB82_2:
	mov	0x1, %r3
	bt	.LBB82_3
	st	%r3, -20[%fp]
.LBB82_3:                               ! =>This Inner Loop Header: Depth=1
	sub	%fp, 0x10, %r3
	or	%r3, 0x3, %r3
	uld.b	0[%r3], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB82_6
	nop
	bt	.LBB82_4
	nop
.LBB82_4:                               !   in Loop: Header=BB82_3 Depth=1
	ld	-16[%fp], %r3
	sha	%r3, -0x1, %r3
	bt	.LBB82_5
	st	%r3, -16[%fp]
.LBB82_5:                               !   in Loop: Header=BB82_3 Depth=1
	ld	-20[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB82_3
	st	%r3, -20[%fp]
.LBB82_6:
	ld	-20[%fp], %r3
	bt	.LBB82_7
	st	%r3, -12[%fp]
.LBB82_7:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end82:
	.size	libiberty_ffs, .Lfunc_end82-libiberty_ffs
                                        ! -- End function
	.globl	gl_isinff                       ! -- Begin function gl_isinff
	.p2align	2
	.type	gl_isinff,@function
gl_isinff:                              ! @gl_isinff
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
                                        ! kill: def $r3 killed $r6
	st	%r6, -12[%fp]
	ld	-12[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltsf2
	mov	0xff7fffff, %r7
	mov	0x1, %r3
	sub.f	%rv, 0x0, %r0
	bmi	.LBB83_2
	st	%r3, -16[%fp]
	bt	.LBB83_1
	nop
.LBB83_1:
	ld	-12[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__gtsf2
	mov	0x7f7fffff, %r7
	sub.f	%rv, 0x0, %r0
	sgt	%r3
	bt	.LBB83_2
	st	%r3, -16[%fp]
.LBB83_2:
	ld	-16[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end83:
	.size	gl_isinff, .Lfunc_end83-gl_isinff
                                        ! -- End function
	.globl	gl_isinfd                       ! -- Begin function gl_isinfd
	.p2align	2
	.type	gl_isinfd,@function
gl_isinfd:                              ! @gl_isinfd
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	ld	0[%r3], %r7
	ld	-16[%fp], %r6
	mov	0xffefffff, %r18
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltdf2
	or	%r1, 0x0, %r19
	mov	0x1, %r3
	sub.f	%rv, 0x0, %r0
	bmi	.LBB84_2
	st	%r3, -20[%fp]
	bt	.LBB84_1
	nop
.LBB84_1:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r7
	ld	-16[%fp], %r6
	mov	0x7fefffff, %r18
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__gtdf2
	or	%r1, 0x0, %r19
	sub.f	%rv, 0x0, %r0
	sgt	%r3
	bt	.LBB84_2
	st	%r3, -20[%fp]
.LBB84_2:
	ld	-20[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end84:
	.size	gl_isinfd, .Lfunc_end84-gl_isinfd
                                        ! -- End function
	.globl	gl_isinfl                       ! -- Begin function gl_isinfl
	.p2align	2
	.type	gl_isinfl,@function
gl_isinfl:                              ! @gl_isinfl
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	ld	0[%r3], %r7
	ld	-16[%fp], %r6
	mov	0xffefffff, %r18
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltdf2
	or	%r1, 0x0, %r19
	mov	0x1, %r3
	sub.f	%rv, 0x0, %r0
	bmi	.LBB85_2
	st	%r3, -20[%fp]
	bt	.LBB85_1
	nop
.LBB85_1:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r7
	ld	-16[%fp], %r6
	mov	0x7fefffff, %r18
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__gtdf2
	or	%r1, 0x0, %r19
	sub.f	%rv, 0x0, %r0
	sgt	%r3
	bt	.LBB85_2
	st	%r3, -20[%fp]
.LBB85_2:
	ld	-20[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end85:
	.size	gl_isinfl, .Lfunc_end85-gl_isinfl
                                        ! -- End function
	.globl	_Qp_itoq                        ! -- Begin function _Qp_itoq
	.p2align	2
	.type	_Qp_itoq,@function
_Qp_itoq:                               ! @_Qp_itoq
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__floatsidf
	ld	-16[%fp], %r6
	ld	-12[%fp], %r3
	st	%r9, 4[%r3]
	st	%rv, 0[%r3]
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end86:
	.size	_Qp_itoq, .Lfunc_end86-_Qp_itoq
                                        ! -- End function
	.globl	ldexpf                          ! -- Begin function ldexpf
	.p2align	2
	.type	ldexpf,@function
ldexpf:                                 ! @ldexpf
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
                                        ! kill: def $r3 killed $r6
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	ld	-12[%fp], %r3
	and	%r3, 0x7fffffff, %r3
	sub.f	%r3, 0x7f800000, %r0
	bgt	.LBB87_9
	nop
	bt	.LBB87_1
	nop
.LBB87_1:
	ld	-12[%fp], %r7
	st	%r7, -24[%fp]
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__addsf3
	or	%r7, 0x0, %r6
	ld	-24[%fp], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__eqsf2
	or	%rv, 0x0, %r6
	sub.f	%rv, 0x0, %r0
	beq	.LBB87_9
	nop
	bt	.LBB87_2
	nop
.LBB87_2:
	ld	-16[%fp], %r12
	mov	0x40000000, %r9
	mov	0x3f000000, %r3
	sub.f	%r12, 0x0, %r0
	sel.mi %r3, %r9, %r3
	bt	.LBB87_3
	st	%r3, -20[%fp]
.LBB87_3:                               ! =>This Inner Loop Header: Depth=1
	ld	-16[%fp], %r3
	sh	%r3, -0x1f, %r9
	add	%r3, %r9, %r9
	and	%r9, 0xfffffffe, %r9
	sub	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB87_5
	nop
	bt	.LBB87_4
	nop
.LBB87_4:                               !   in Loop: Header=BB87_3 Depth=1
	ld	-20[%fp], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__mulsf3
	ld	-12[%fp], %r6
	bt	.LBB87_5
	st	%rv, -12[%fp]
.LBB87_5:                               !   in Loop: Header=BB87_3 Depth=1
	ld	-16[%fp], %r3
	sh	%r3, -0x1f, %r9
	add	%r3, %r9, %r3
	sha	%r3, -0x1, %r3
	st	%r3, -16[%fp]
	ld	-16[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB87_7
	nop
	bt	.LBB87_6
	nop
.LBB87_6:
	bt	.LBB87_8
	nop
.LBB87_7:                               !   in Loop: Header=BB87_3 Depth=1
	ld	-20[%fp], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__mulsf3
	or	%r7, 0x0, %r6
	bt	.LBB87_3
	st	%rv, -20[%fp]
.LBB87_8:
	bt	.LBB87_9
	nop
.LBB87_9:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end87:
	.size	ldexpf, .Lfunc_end87-ldexpf
                                        ! -- End function
	.globl	ldexp                           ! -- Begin function ldexp
	.p2align	2
	.type	ldexp,@function
ldexp:                                  ! @ldexp
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x30, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	st	%r18, -20[%fp]
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	sub.f	%r3, 0x0, %r0
	sne	%r3
	and	%r9, 0x7fffffff, %r12
	sub.f	%r12, 0x7ff00000, %r0
	sgt	%r9
	sub.f	%r12, 0x7ff00000, %r0
	sel.eq %r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB88_9
	nop
	bt	.LBB88_1
	nop
.LBB88_1:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r19
	st	%r19, -36[%fp]
	ld	-16[%fp], %r18
	st	%r18, -40[%fp]
	or	%r18, 0x0, %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__adddf3
	or	%r19, 0x0, %r7
	ld	-40[%fp], %r18
	ld	-36[%fp], %r19
	or	%rv, 0x0, %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__eqdf2
	or	%r9, 0x0, %r7
	sub.f	%rv, 0x0, %r0
	beq	.LBB88_9
	nop
	bt	.LBB88_2
	nop
.LBB88_2:
	ld	-20[%fp], %r12
	mov	0x40000000, %r9
	mov	0x3fe00000, %r3
	sub.f	%r12, 0x0, %r0
	sel.mi %r3, %r9, %r3
	sub	%fp, 0x20, %r9
	or	%r9, 0x4, %r12
	or	%r0, 0x0, %r9
	st	%r9, 0[%r12]
	bt	.LBB88_3
	st	%r3, -32[%fp]
.LBB88_3:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sh	%r3, -0x1f, %r9
	add	%r3, %r9, %r9
	and	%r9, 0xfffffffe, %r9
	sub	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB88_5
	nop
	bt	.LBB88_4
	nop
.LBB88_4:                               !   in Loop: Header=BB88_3 Depth=1
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r19
	ld	-32[%fp], %r18
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r3, -44[%fp]
	ld	0[%r3], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__muldf3
	ld	-16[%fp], %r6
	ld	-44[%fp], %r3
	st	%r9, 0[%r3]
	bt	.LBB88_5
	st	%rv, -16[%fp]
.LBB88_5:                               !   in Loop: Header=BB88_3 Depth=1
	ld	-20[%fp], %r3
	sh	%r3, -0x1f, %r9
	add	%r3, %r9, %r3
	sha	%r3, -0x1, %r3
	st	%r3, -20[%fp]
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB88_7
	nop
	bt	.LBB88_6
	nop
.LBB88_6:
	bt	.LBB88_8
	nop
.LBB88_7:                               !   in Loop: Header=BB88_3 Depth=1
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	st	%r3, -48[%fp]
	ld	0[%r3], %r19
	ld	-32[%fp], %r18
	or	%r18, 0x0, %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__muldf3
	or	%r19, 0x0, %r7
	ld	-48[%fp], %r3
	st	%r9, 0[%r3]
	bt	.LBB88_3
	st	%rv, -32[%fp]
.LBB88_8:
	bt	.LBB88_9
	nop
.LBB88_9:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-16[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end88:
	.size	ldexp, .Lfunc_end88-ldexp
                                        ! -- End function
	.globl	ldexpl                          ! -- Begin function ldexpl
	.p2align	2
	.type	ldexpl,@function
ldexpl:                                 ! @ldexpl
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x30, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	st	%r18, -20[%fp]
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	sub.f	%r3, 0x0, %r0
	sne	%r3
	and	%r9, 0x7fffffff, %r12
	sub.f	%r12, 0x7ff00000, %r0
	sgt	%r9
	sub.f	%r12, 0x7ff00000, %r0
	sel.eq %r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB89_9
	nop
	bt	.LBB89_1
	nop
.LBB89_1:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r19
	st	%r19, -36[%fp]
	ld	-16[%fp], %r18
	st	%r18, -40[%fp]
	or	%r18, 0x0, %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__adddf3
	or	%r19, 0x0, %r7
	ld	-40[%fp], %r18
	ld	-36[%fp], %r19
	or	%rv, 0x0, %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__eqdf2
	or	%r9, 0x0, %r7
	sub.f	%rv, 0x0, %r0
	beq	.LBB89_9
	nop
	bt	.LBB89_2
	nop
.LBB89_2:
	ld	-20[%fp], %r12
	mov	0x40000000, %r9
	mov	0x3fe00000, %r3
	sub.f	%r12, 0x0, %r0
	sel.mi %r3, %r9, %r3
	sub	%fp, 0x20, %r9
	or	%r9, 0x4, %r12
	or	%r0, 0x0, %r9
	st	%r9, 0[%r12]
	bt	.LBB89_3
	st	%r3, -32[%fp]
.LBB89_3:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sh	%r3, -0x1f, %r9
	add	%r3, %r9, %r9
	and	%r9, 0xfffffffe, %r9
	sub	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB89_5
	nop
	bt	.LBB89_4
	nop
.LBB89_4:                               !   in Loop: Header=BB89_3 Depth=1
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r19
	ld	-32[%fp], %r18
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r3, -44[%fp]
	ld	0[%r3], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__muldf3
	ld	-16[%fp], %r6
	ld	-44[%fp], %r3
	st	%r9, 0[%r3]
	bt	.LBB89_5
	st	%rv, -16[%fp]
.LBB89_5:                               !   in Loop: Header=BB89_3 Depth=1
	ld	-20[%fp], %r3
	sh	%r3, -0x1f, %r9
	add	%r3, %r9, %r3
	sha	%r3, -0x1, %r3
	st	%r3, -20[%fp]
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB89_7
	nop
	bt	.LBB89_6
	nop
.LBB89_6:
	bt	.LBB89_8
	nop
.LBB89_7:                               !   in Loop: Header=BB89_3 Depth=1
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	st	%r3, -48[%fp]
	ld	0[%r3], %r19
	ld	-32[%fp], %r18
	or	%r18, 0x0, %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__muldf3
	or	%r19, 0x0, %r7
	ld	-48[%fp], %r3
	st	%r9, 0[%r3]
	bt	.LBB89_3
	st	%rv, -32[%fp]
.LBB89_8:
	bt	.LBB89_9
	nop
.LBB89_9:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-16[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end89:
	.size	ldexpl, .Lfunc_end89-ldexpl
                                        ! -- End function
	.globl	memxor                          ! -- Begin function memxor
	.p2align	2
	.type	memxor,@function
memxor:                                 ! @memxor
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	ld	-16[%fp], %r3
	st	%r3, -24[%fp]
	ld	-12[%fp], %r3
	bt	.LBB90_1
	st	%r3, -28[%fp]
.LBB90_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB90_4
	nop
	bt	.LBB90_2
	nop
.LBB90_2:                               !   in Loop: Header=BB90_1 Depth=1
	ld	-24[%fp], %r3
	add	%r3, 0x1, %r9
	st	%r9, -24[%fp]
	uld.b	0[%r3], %r12
	ld	-28[%fp], %r9
	add	%r9, 0x1, %r3
	st	%r3, -28[%fp]
	uld.b	0[%r9], %r3
	xor	%r3, %r12, %r3
	bt	.LBB90_3
	st.b	%r3, 0[%r9]
.LBB90_3:                               !   in Loop: Header=BB90_1 Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r3
	bt	.LBB90_1
	st	%r3, -20[%fp]
.LBB90_4:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end90:
	.size	memxor, .Lfunc_end90-memxor
                                        ! -- End function
	.globl	strncat                         ! -- Begin function strncat
	.p2align	2
	.type	strncat,@function
strncat:                                ! @strncat
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	ld	-12[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	strlen
	st	%r6, -28[%fp]
	ld	-28[%fp], %r3
	add	%r3, %rv, %r3
	bt	.LBB91_1
	st	%r3, -24[%fp]
.LBB91_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB91_3
	st	%r3, -32[%fp]
	bt	.LBB91_2
	nop
.LBB91_2:                               !   in Loop: Header=BB91_1 Depth=1
	ld	-16[%fp], %r3
	uld.b	0[%r3], %r3
	ld	-24[%fp], %r9
	st.b	%r3, 0[%r9]
	sub.f	%r3, 0x0, %r0
	sne	%r3
	bt	.LBB91_3
	st	%r3, -32[%fp]
.LBB91_3:                               !   in Loop: Header=BB91_1 Depth=1
	ld	-32[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB91_6
	nop
	bt	.LBB91_4
	nop
.LBB91_4:                               !   in Loop: Header=BB91_1 Depth=1
	bt	.LBB91_5
	nop
.LBB91_5:                               !   in Loop: Header=BB91_1 Depth=1
	ld	-16[%fp], %r3
	add	%r3, 0x1, %r3
	st	%r3, -16[%fp]
	ld	-24[%fp], %r3
	add	%r3, 0x1, %r3
	st	%r3, -24[%fp]
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r3
	bt	.LBB91_1
	st	%r3, -20[%fp]
.LBB91_6:
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB91_8
	nop
	bt	.LBB91_7
	nop
.LBB91_7:
	ld	-24[%fp], %r9
	or	%r0, 0x0, %r3
	bt	.LBB91_8
	st.b	%r3, 0[%r9]
.LBB91_8:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end91:
	.size	strncat, .Lfunc_end91-strncat
                                        ! -- End function
	.globl	strnlen                         ! -- Begin function strnlen
	.p2align	2
	.type	strnlen,@function
strnlen:                                ! @strnlen
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	or	%r0, 0x0, %r3
	bt	.LBB92_1
	st	%r3, -20[%fp]
.LBB92_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r9
	ld	-16[%fp], %r12
	or	%r0, 0x0, %r3
	sub.f	%r9, %r12, %r0
	buge	.LBB92_3
	st	%r3, -24[%fp]
	bt	.LBB92_2
	nop
.LBB92_2:                               !   in Loop: Header=BB92_1 Depth=1
	ld	-12[%fp], %r3
	ld	-20[%fp], %r9
	ld.b	[%r3 add %r9], %r3
	sub.f	%r3, 0x0, %r0
	sne	%r3
	bt	.LBB92_3
	st	%r3, -24[%fp]
.LBB92_3:                               !   in Loop: Header=BB92_1 Depth=1
	ld	-24[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB92_6
	nop
	bt	.LBB92_4
	nop
.LBB92_4:                               !   in Loop: Header=BB92_1 Depth=1
	bt	.LBB92_5
	nop
.LBB92_5:                               !   in Loop: Header=BB92_1 Depth=1
	ld	-20[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB92_1
	st	%r3, -20[%fp]
.LBB92_6:
	ld	-20[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end92:
	.size	strnlen, .Lfunc_end92-strnlen
                                        ! -- End function
	.globl	strpbrk                         ! -- Begin function strpbrk
	.p2align	2
	.type	strpbrk,@function
strpbrk:                                ! @strpbrk
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	st	%r6, -16[%fp]
	bt	.LBB93_1
	st	%r7, -20[%fp]
.LBB93_1:                               ! =>This Loop Header: Depth=1
                                        !     Child Loop BB93_3 Depth 2
	ld	-16[%fp], %r3
	ld.b	0[%r3], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB93_8
	nop
	bt	.LBB93_2
	nop
.LBB93_2:                               !   in Loop: Header=BB93_1 Depth=1
	ld	-20[%fp], %r3
	bt	.LBB93_3
	st	%r3, -24[%fp]
.LBB93_3:                               !   Parent Loop BB93_1 Depth=1
                                        ! =>  This Inner Loop Header: Depth=2
	ld	-24[%fp], %r3
	ld.b	0[%r3], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB93_7
	nop
	bt	.LBB93_4
	nop
.LBB93_4:                               !   in Loop: Header=BB93_3 Depth=2
	ld	-24[%fp], %r3
	add	%r3, 0x1, %r9
	st	%r9, -24[%fp]
	ld.b	0[%r3], %r3
	ld	-16[%fp], %r9
	ld.b	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	bne	.LBB93_6
	nop
	bt	.LBB93_5
	nop
.LBB93_5:
	ld	-16[%fp], %r3
	bt	.LBB93_9
	st	%r3, -12[%fp]
.LBB93_6:                               !   in Loop: Header=BB93_3 Depth=2
	bt	.LBB93_3
	nop
.LBB93_7:                               !   in Loop: Header=BB93_1 Depth=1
	ld	-16[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB93_1
	st	%r3, -16[%fp]
.LBB93_8:
	or	%r0, 0x0, %r3
	bt	.LBB93_9
	st	%r3, -12[%fp]
.LBB93_9:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end93:
	.size	strpbrk, .Lfunc_end93-strpbrk
                                        ! -- End function
	.globl	strrchr                         ! -- Begin function strrchr
	.p2align	2
	.type	strrchr,@function
strrchr:                                ! @strrchr
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	or	%r0, 0x0, %r3
	bt	.LBB94_1
	st	%r3, -20[%fp]
.LBB94_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	ld.b	0[%r3], %r3
	ld	-16[%fp], %r9
	sub.f	%r3, %r9, %r0
	bne	.LBB94_3
	nop
	bt	.LBB94_2
	nop
.LBB94_2:                               !   in Loop: Header=BB94_1 Depth=1
	ld	-12[%fp], %r3
	bt	.LBB94_3
	st	%r3, -20[%fp]
.LBB94_3:                               !   in Loop: Header=BB94_1 Depth=1
	bt	.LBB94_4
	nop
.LBB94_4:                               !   in Loop: Header=BB94_1 Depth=1
	ld	-12[%fp], %r3
	add	%r3, 0x1, %r9
	st	%r9, -12[%fp]
	uld.b	0[%r3], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB94_1
	nop
	bt	.LBB94_5
	nop
.LBB94_5:
	ld	-20[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end94:
	.size	strrchr, .Lfunc_end94-strrchr
                                        ! -- End function
	.globl	strstr                          ! -- Begin function strstr
	.p2align	2
	.type	strstr,@function
strstr:                                 ! @strstr
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
	st	%r6, -16[%fp]
	st	%r7, -20[%fp]
	ld	-16[%fp], %r3
	st	%r3, -24[%fp]
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	strlen
	ld	-20[%fp], %r6
	st	%rv, -28[%fp]
	ld	-28[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB95_2
	nop
	bt	.LBB95_1
	nop
.LBB95_1:
	ld	-16[%fp], %r3
	bt	.LBB95_9
	st	%r3, -12[%fp]
.LBB95_2:
	bt	.LBB95_3
	nop
.LBB95_3:                               ! =>This Inner Loop Header: Depth=1
	ld	-24[%fp], %r6
	ld	-20[%fp], %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	strchr
	ld.b	0[%r3], %r7
	sub.f	%rv, 0x0, %r0
	beq	.LBB95_8
	st	%rv, -24[%fp]
	bt	.LBB95_4
	nop
.LBB95_4:                               !   in Loop: Header=BB95_3 Depth=1
	ld	-24[%fp], %r6
	ld	-20[%fp], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	strncmp
	ld	-28[%fp], %r18
	sub.f	%rv, 0x0, %r0
	bne	.LBB95_6
	nop
	bt	.LBB95_5
	nop
.LBB95_5:
	ld	-24[%fp], %r3
	bt	.LBB95_9
	st	%r3, -12[%fp]
.LBB95_6:                               !   in Loop: Header=BB95_3 Depth=1
	bt	.LBB95_7
	nop
.LBB95_7:                               !   in Loop: Header=BB95_3 Depth=1
	ld	-24[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB95_3
	st	%r3, -24[%fp]
.LBB95_8:
	or	%r0, 0x0, %r3
	bt	.LBB95_9
	st	%r3, -12[%fp]
.LBB95_9:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end95:
	.size	strstr, .Lfunc_end95-strstr
                                        ! -- End function
	.globl	copysign                        ! -- Begin function copysign
	.p2align	2
	.type	copysign,@function
copysign:                               ! @copysign
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
                                        ! kill: def $r3 killed $r19
                                        ! kill: def $r3 killed $r18
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -24[%fp]
	sub	%fp, 0x20, %r9
	or	%r9, 0x4, %r9
	st	%r19, 0[%r9]
	st	%r18, -32[%fp]
	ld	0[%r3], %r7
	ld	-24[%fp], %r6
	or	%r0, 0x0, %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltdf2
	or	%r19, 0x0, %r18
	sub.f	%rv, 0x0, %r0
	bpl	.LBB96_2
	nop
	bt	.LBB96_1
	nop
.LBB96_1:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r7
	ld	-32[%fp], %r6
	or	%r0, 0x0, %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__gtdf2
	or	%r19, 0x0, %r18
	sub.f	%rv, 0x0, %r0
	bgt	.LBB96_4
	nop
	bt	.LBB96_2
	nop
.LBB96_2:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r7
	ld	-24[%fp], %r6
	or	%r0, 0x0, %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__gtdf2
	or	%r19, 0x0, %r18
	sub.f	%rv, 0x1, %r0
	blt	.LBB96_5
	nop
	bt	.LBB96_3
	nop
.LBB96_3:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r7
	ld	-32[%fp], %r6
	or	%r0, 0x0, %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltdf2
	or	%r19, 0x0, %r18
	sub.f	%rv, 0x0, %r0
	bpl	.LBB96_5
	nop
	bt	.LBB96_4
	nop
.LBB96_4:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-24[%fp], %r3
	xor	%r3, 0x80000000, %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB96_6
	st	%r3, -16[%fp]
.LBB96_5:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-24[%fp], %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB96_6
	st	%r3, -16[%fp]
.LBB96_6:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-16[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end96:
	.size	copysign, .Lfunc_end96-copysign
                                        ! -- End function
	.globl	memmem                          ! -- Begin function memmem
	.p2align	2
	.type	memmem,@function
memmem:                                 ! @memmem
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	st	%r6, -16[%fp]
	st	%r7, -20[%fp]
	st	%r18, -24[%fp]
	st	%r19, -28[%fp]
	ld	-16[%fp], %r3
	ld	-20[%fp], %r9
	add	%r3, %r9, %r3
	ld	-28[%fp], %r9
	sub	%r3, %r9, %r3
	st	%r3, -36[%fp]
	ld	-28[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB97_2
	sub	%sp, 0x28, %sp
	bt	.LBB97_1
	nop
.LBB97_1:
	ld	-16[%fp], %r3
	bt	.LBB97_12
	st	%r3, -12[%fp]
.LBB97_2:
	ld	-20[%fp], %r3
	ld	-28[%fp], %r9
	sub.f	%r3, %r9, %r0
	buge	.LBB97_4
	nop
	bt	.LBB97_3
	nop
.LBB97_3:
	or	%r0, 0x0, %r3
	bt	.LBB97_12
	st	%r3, -12[%fp]
.LBB97_4:
	ld	-16[%fp], %r3
	bt	.LBB97_5
	st	%r3, -32[%fp]
.LBB97_5:                               ! =>This Inner Loop Header: Depth=1
	ld	-32[%fp], %r3
	ld	-36[%fp], %r9
	sub.f	%r3, %r9, %r0
	bugt	.LBB97_11
	nop
	bt	.LBB97_6
	nop
.LBB97_6:                               !   in Loop: Header=BB97_5 Depth=1
	ld	-32[%fp], %r3
	ld.b	0[%r3], %r3
	ld	-24[%fp], %r9
	ld.b	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	bne	.LBB97_9
	nop
	bt	.LBB97_7
	nop
.LBB97_7:                               !   in Loop: Header=BB97_5 Depth=1
	ld	-32[%fp], %r3
	add	%r3, 0x1, %r6
	ld	-24[%fp], %r3
	add	%r3, 0x1, %r7
	ld	-28[%fp], %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memcmp
	sub	%r3, 0x1, %r18
	sub.f	%rv, 0x0, %r0
	bne	.LBB97_9
	nop
	bt	.LBB97_8
	nop
.LBB97_8:
	ld	-32[%fp], %r3
	bt	.LBB97_12
	st	%r3, -12[%fp]
.LBB97_9:                               !   in Loop: Header=BB97_5 Depth=1
	bt	.LBB97_10
	nop
.LBB97_10:                              !   in Loop: Header=BB97_5 Depth=1
	ld	-32[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB97_5
	st	%r3, -32[%fp]
.LBB97_11:
	or	%r0, 0x0, %r3
	bt	.LBB97_12
	st	%r3, -12[%fp]
.LBB97_12:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end97:
	.size	memmem, .Lfunc_end97-memmem
                                        ! -- End function
	.globl	mempcpy                         ! -- Begin function mempcpy
	.p2align	2
	.type	mempcpy,@function
mempcpy:                                ! @mempcpy
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	ld	-12[%fp], %r6
	st	%r6, -24[%fp]
	ld	-16[%fp], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memcpy
	ld	-20[%fp], %r18
	ld	-24[%fp], %r3
	ld	-20[%fp], %r9
	add	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end98:
	.size	mempcpy, .Lfunc_end98-mempcpy
                                        ! -- End function
	.globl	frexp                           ! -- Begin function frexp
	.p2align	2
	.type	frexp,@function
frexp:                                  ! @frexp
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x28, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	st	%r18, -20[%fp]
	or	%r0, 0x0, %r19
	st	%r19, -28[%fp]
	st	%r19, -24[%fp]
	ld	0[%r3], %r7
	ld	-16[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltdf2
	or	%r19, 0x0, %r18
	sub.f	%rv, 0x0, %r0
	bpl	.LBB99_2
	nop
	bt	.LBB99_1
	nop
.LBB99_1:
	ld	-16[%fp], %r3
	xor	%r3, 0x80000000, %r3
	st	%r3, -16[%fp]
	mov	0x1, %r3
	bt	.LBB99_2
	st	%r3, -24[%fp]
.LBB99_2:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r7
	ld	-16[%fp], %r6
	mov	0x3ff00000, %r18
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__gedf2
	or	%r0, 0x0, %r19
	sub.f	%rv, 0x0, %r0
	bmi	.LBB99_7
	nop
	bt	.LBB99_3
	nop
.LBB99_3:
	bt	.LBB99_4
	nop
.LBB99_4:                               ! =>This Inner Loop Header: Depth=1
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r7
	ld	-16[%fp], %r6
	mov	0x3ff00000, %r18
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__gedf2
	or	%r0, 0x0, %r19
	sub.f	%rv, 0x0, %r0
	bmi	.LBB99_6
	nop
	bt	.LBB99_5
	nop
.LBB99_5:                               !   in Loop: Header=BB99_4 Depth=1
	ld	-28[%fp], %r3
	add	%r3, 0x1, %r3
	st	%r3, -28[%fp]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r3, -32[%fp]
	ld	0[%r3], %r7
	ld	-16[%fp], %r6
	mov	0x3fe00000, %r18
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__muldf3
	or	%r0, 0x0, %r19
	ld	-32[%fp], %r3
	st	%r9, 0[%r3]
	bt	.LBB99_4
	st	%rv, -16[%fp]
.LBB99_6:
	bt	.LBB99_14
	nop
.LBB99_7:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r7
	ld	-16[%fp], %r6
	mov	0x3fe00000, %r18
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltdf2
	or	%r0, 0x0, %r19
	sub.f	%rv, 0x0, %r0
	bpl	.LBB99_13
	nop
	bt	.LBB99_8
	nop
.LBB99_8:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r7
	ld	-16[%fp], %r6
	or	%r0, 0x0, %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__eqdf2
	or	%r19, 0x0, %r18
	sub.f	%rv, 0x0, %r0
	beq	.LBB99_13
	nop
	bt	.LBB99_9
	nop
.LBB99_9:
	bt	.LBB99_10
	nop
.LBB99_10:                              ! =>This Inner Loop Header: Depth=1
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r7
	ld	-16[%fp], %r6
	mov	0x3fe00000, %r18
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltdf2
	or	%r0, 0x0, %r19
	sub.f	%rv, 0x0, %r0
	bpl	.LBB99_12
	nop
	bt	.LBB99_11
	nop
.LBB99_11:                              !   in Loop: Header=BB99_10 Depth=1
	ld	-28[%fp], %r3
	sub	%r3, 0x1, %r3
	st	%r3, -28[%fp]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r3, -36[%fp]
	ld	0[%r3], %r19
	ld	-16[%fp], %r18
	or	%r18, 0x0, %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__adddf3
	or	%r19, 0x0, %r7
	ld	-36[%fp], %r3
	st	%r9, 0[%r3]
	bt	.LBB99_10
	st	%rv, -16[%fp]
.LBB99_12:
	bt	.LBB99_13
	nop
.LBB99_13:
	bt	.LBB99_14
	nop
.LBB99_14:
	ld	-28[%fp], %r3
	ld	-20[%fp], %r9
	st	%r3, 0[%r9]
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB99_16
	nop
	bt	.LBB99_15
	nop
.LBB99_15:
	ld	-16[%fp], %r3
	xor	%r3, 0x80000000, %r3
	bt	.LBB99_16
	st	%r3, -16[%fp]
.LBB99_16:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-16[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end99:
	.size	frexp, .Lfunc_end99-frexp
                                        ! -- End function
	.globl	__muldi3                        ! -- Begin function __muldi3
	.p2align	2
	.type	__muldi3,@function
__muldi3:                               ! @__muldi3
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x28, %sp
                                        ! kill: def $r3 killed $r19
                                        ! kill: def $r3 killed $r18
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	sub	%fp, 0x18, %r9
	or	%r9, 0x4, %r9
	st	%r19, 0[%r9]
	st	%r18, -24[%fp]
	sub	%fp, 0x20, %r9
	or	%r9, 0x4, %r12
	or	%r0, 0x0, %r9
	st	%r9, 0[%r12]
	st	%r9, -32[%fp]
	ld	0[%r3], %r9
	ld	-16[%fp], %r3
	sub	%fp, 0x28, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB100_1
	st	%r3, -40[%fp]
.LBB100_1:                              ! =>This Inner Loop Header: Depth=1
	sub	%fp, 0x28, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-40[%fp], %r9
	or	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB100_5
	nop
	bt	.LBB100_2
	nop
.LBB100_2:                              !   in Loop: Header=BB100_1 Depth=1
	sub	%fp, 0x28, %r3
	or	%r3, 0x7, %r3
	uld.b	0[%r3], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB100_4
	nop
	bt	.LBB100_3
	nop
.LBB100_3:                              !   in Loop: Header=BB100_1 Depth=1
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-24[%fp], %r14
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r12
	ld	0[%r12], %r13
	ld	-32[%fp], %r3
	add	%r3, %r14, %r3
	add	%r13, %r9, %r9
	sub.f	%r9, %r13, %r0
	sult	%r13
	add	%r3, %r13, %r3
	st	%r9, 0[%r12]
	bt	.LBB100_4
	st	%r3, -32[%fp]
.LBB100_4:                              !   in Loop: Header=BB100_1 Depth=1
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r12
	ld	0[%r12], %r9
	ld	-24[%fp], %r3
	sh	%r3, 0x1, %r3
	sh	%r9, -0x1f, %r13
	or	%r3, %r13, %r3
	sh	%r9, 0x1, %r9
	st	%r9, 0[%r12]
	st	%r3, -24[%fp]
	sub	%fp, 0x28, %r3
	or	%r3, 0x4, %r12
	ld	0[%r12], %r9
	ld	-40[%fp], %r3
	sh	%r3, 0x1f, %r13
	sh	%r9, -0x1, %r9
	or	%r9, %r13, %r9
	sh	%r3, -0x1, %r3
	st	%r9, 0[%r12]
	bt	.LBB100_1
	st	%r3, -40[%fp]
.LBB100_5:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-32[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end100:
	.size	__muldi3, .Lfunc_end100-__muldi3
                                        ! -- End function
	.globl	udivmodsi4                      ! -- Begin function udivmodsi4
	.p2align	2
	.type	udivmodsi4,@function
udivmodsi4:                             ! @udivmodsi4
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x28, %sp
	st	%r6, -16[%fp]
	st	%r7, -20[%fp]
	st	%r18, -24[%fp]
	mov	0x1, %r3
	st	%r3, -28[%fp]
	or	%r0, 0x0, %r3
	bt	.LBB101_1
	st	%r3, -32[%fp]
.LBB101_1:                              ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r9
	ld	-16[%fp], %r12
	or	%r0, 0x0, %r3
	sub.f	%r9, %r12, %r0
	buge	.LBB101_4
	st	%r3, -36[%fp]
	bt	.LBB101_2
	nop
.LBB101_2:                              !   in Loop: Header=BB101_1 Depth=1
	ld	-28[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB101_4
	st	%r3, -36[%fp]
	bt	.LBB101_3
	nop
.LBB101_3:                              !   in Loop: Header=BB101_1 Depth=1
	uld.b	-20[%fp], %r3
	mov	0x80, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	seq	%r3
	bt	.LBB101_4
	st	%r3, -36[%fp]
.LBB101_4:                              !   in Loop: Header=BB101_1 Depth=1
	ld	-36[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB101_6
	nop
	bt	.LBB101_5
	nop
.LBB101_5:                              !   in Loop: Header=BB101_1 Depth=1
	ld	-20[%fp], %r3
	sh	%r3, 0x1, %r3
	st	%r3, -20[%fp]
	ld	-28[%fp], %r3
	sh	%r3, 0x1, %r3
	bt	.LBB101_1
	st	%r3, -28[%fp]
.LBB101_6:
	bt	.LBB101_7
	nop
.LBB101_7:                              ! =>This Inner Loop Header: Depth=1
	ld	-28[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB101_11
	nop
	bt	.LBB101_8
	nop
.LBB101_8:                              !   in Loop: Header=BB101_7 Depth=1
	ld	-16[%fp], %r3
	ld	-20[%fp], %r9
	sub.f	%r3, %r9, %r0
	bult	.LBB101_10
	nop
	bt	.LBB101_9
	nop
.LBB101_9:                              !   in Loop: Header=BB101_7 Depth=1
	ld	-20[%fp], %r9
	ld	-16[%fp], %r3
	sub	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-28[%fp], %r9
	ld	-32[%fp], %r3
	or	%r3, %r9, %r3
	bt	.LBB101_10
	st	%r3, -32[%fp]
.LBB101_10:                             !   in Loop: Header=BB101_7 Depth=1
	ld	-28[%fp], %r3
	sh	%r3, -0x1, %r3
	st	%r3, -28[%fp]
	ld	-20[%fp], %r3
	sh	%r3, -0x1, %r3
	bt	.LBB101_7
	st	%r3, -20[%fp]
.LBB101_11:
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB101_13
	nop
	bt	.LBB101_12
	nop
.LBB101_12:
	ld	-16[%fp], %r3
	bt	.LBB101_14
	st	%r3, -12[%fp]
.LBB101_13:
	ld	-32[%fp], %r3
	bt	.LBB101_14
	st	%r3, -12[%fp]
.LBB101_14:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end101:
	.size	udivmodsi4, .Lfunc_end101-udivmodsi4
                                        ! -- End function
	.globl	__clrsbqi2                      ! -- Begin function __clrsbqi2
	.p2align	2
	.type	__clrsbqi2,@function
__clrsbqi2:                             ! @__clrsbqi2
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
                                        ! kill: def $r3 killed $r6
	st.b	%r6, -13[%fp]
	ld.b	-13[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB102_2
	nop
	bt	.LBB102_1
	nop
.LBB102_1:
	uld.b	-13[%fp], %r3
	or	%r1, 0x0, %r9
	xor	%r3, %r9, %r3
	bt	.LBB102_2
	st.b	%r3, -13[%fp]
.LBB102_2:
	ld.b	-13[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB102_4
	nop
	bt	.LBB102_3
	nop
.LBB102_3:
	mov	0x7, %r3
	bt	.LBB102_5
	st	%r3, -12[%fp]
.LBB102_4:
	ld.b	-13[%fp], %r3
	sh	%r3, 0x8, %r3
	leadz	%r3, %r3
	st	%r3, -20[%fp]
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r3
	bt	.LBB102_5
	st	%r3, -12[%fp]
.LBB102_5:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end102:
	.size	__clrsbqi2, .Lfunc_end102-__clrsbqi2
                                        ! -- End function
	.globl	__clrsbdi2                      ! -- Begin function __clrsbdi2
	.p2align	2
	.type	__clrsbdi2,@function
__clrsbdi2:                             ! @__clrsbdi2
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -24[%fp]
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB103_2
	nop
	bt	.LBB103_1
	nop
.LBB103_1:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r12
	ld	0[%r12], %r9
	ld	-24[%fp], %r3
	or	%r1, 0x0, %r13
	xor	%r3, %r13, %r3
	xor	%r9, %r13, %r9
	st	%r9, 0[%r12]
	bt	.LBB103_2
	st	%r3, -24[%fp]
.LBB103_2:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	or	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB103_4
	nop
	bt	.LBB103_3
	nop
.LBB103_3:
	mov	0x3f, %r3
	bt	.LBB103_5
	st	%r3, -12[%fp]
.LBB103_4:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-24[%fp], %r12
	leadz	%r12, %r3
	leadz	%r9, %r9
	add	%r9, 0x20, %r9
	sub.f	%r12, 0x0, %r0
	sel.ne %r3, %r9, %r3
	st	%r3, -28[%fp]
	ld	-28[%fp], %r3
	sub	%r3, 0x1, %r3
	bt	.LBB103_5
	st	%r3, -12[%fp]
.LBB103_5:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end103:
	.size	__clrsbdi2, .Lfunc_end103-__clrsbdi2
                                        ! -- End function
	.globl	__mulsi3                        ! -- Begin function __mulsi3
	.p2align	2
	.type	__mulsi3,@function
__mulsi3:                               ! @__mulsi3
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	or	%r0, 0x0, %r3
	bt	.LBB104_1
	st	%r3, -20[%fp]
.LBB104_1:                              ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB104_5
	nop
	bt	.LBB104_2
	nop
.LBB104_2:                              !   in Loop: Header=BB104_1 Depth=1
	sub	%fp, 0xc, %r3
	or	%r3, 0x3, %r3
	uld.b	0[%r3], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB104_4
	nop
	bt	.LBB104_3
	nop
.LBB104_3:                              !   in Loop: Header=BB104_1 Depth=1
	ld	-16[%fp], %r9
	ld	-20[%fp], %r3
	add	%r3, %r9, %r3
	bt	.LBB104_4
	st	%r3, -20[%fp]
.LBB104_4:                              !   in Loop: Header=BB104_1 Depth=1
	ld	-12[%fp], %r3
	sh	%r3, -0x1, %r3
	st	%r3, -12[%fp]
	ld	-16[%fp], %r3
	sh	%r3, 0x1, %r3
	bt	.LBB104_1
	st	%r3, -16[%fp]
.LBB104_5:
	ld	-20[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end104:
	.size	__mulsi3, .Lfunc_end104-__mulsi3
                                        ! -- End function
	.globl	__cmovd                         ! -- Begin function __cmovd
	.p2align	2
	.type	__cmovd,@function
__cmovd:                                ! @__cmovd
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	ld	-20[%fp], %r3
	sh	%r3, -0x3, %r3
	st	%r3, -28[%fp]
	ld	-20[%fp], %r3
	and	%r3, 0xfffffff8, %r3
	st	%r3, -32[%fp]
	ld	-12[%fp], %r3
	st	%r3, -36[%fp]
	ld	-16[%fp], %r3
	st	%r3, -40[%fp]
	ld	-36[%fp], %r3
	ld	-40[%fp], %r9
	sub.f	%r3, %r9, %r0
	bult	.LBB105_2
	sub	%sp, 0x28, %sp
	bt	.LBB105_1
	nop
.LBB105_1:
	ld	-36[%fp], %r3
	ld	-40[%fp], %r9
	ld	-20[%fp], %r12
	add	%r9, %r12, %r9
	sub.f	%r3, %r9, %r0
	bule	.LBB105_10
	nop
	bt	.LBB105_2
	nop
.LBB105_2:
	or	%r0, 0x0, %r3
	bt	.LBB105_3
	st	%r3, -24[%fp]
.LBB105_3:                              ! =>This Inner Loop Header: Depth=1
	ld	-24[%fp], %r3
	ld	-28[%fp], %r9
	sub.f	%r3, %r9, %r0
	buge	.LBB105_6
	nop
	bt	.LBB105_4
	nop
.LBB105_4:                              !   in Loop: Header=BB105_3 Depth=1
	ld	-16[%fp], %r3
	ld	-24[%fp], %r9
	sh	%r9, 0x3, %r14
	add	%r3, %r14, %r9
	ld	4[%r9], %r3
	ld	0[%r9], %r12
	ld	-12[%fp], %r13
	add	%r13, %r14, %r9
	st	%r12, [%r13 add %r14]
	bt	.LBB105_5
	st	%r3, 4[%r9]
.LBB105_5:                              !   in Loop: Header=BB105_3 Depth=1
	ld	-24[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB105_3
	st	%r3, -24[%fp]
.LBB105_6:
	bt	.LBB105_7
	nop
.LBB105_7:                              ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	ld	-32[%fp], %r9
	sub.f	%r3, %r9, %r0
	bule	.LBB105_9
	nop
	bt	.LBB105_8
	nop
.LBB105_8:                              !   in Loop: Header=BB105_7 Depth=1
	ld	-40[%fp], %r3
	ld	-32[%fp], %r12
	add	%r3, %r12, %r3
	uld.b	0[%r3], %r3
	ld	-36[%fp], %r9
	st.b	%r3, [%r9 add %r12]
	ld	-32[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB105_7
	st	%r3, -32[%fp]
.LBB105_9:
	bt	.LBB105_14
	nop
.LBB105_10:
	bt	.LBB105_11
	nop
.LBB105_11:                             ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r9
	sub.f	%r3, 0x0, %r0
	beq	.LBB105_13
	st	%r9, -20[%fp]
	bt	.LBB105_12
	nop
.LBB105_12:                             !   in Loop: Header=BB105_11 Depth=1
	ld	-40[%fp], %r3
	ld	-20[%fp], %r12
	add	%r3, %r12, %r3
	uld.b	0[%r3], %r3
	ld	-36[%fp], %r9
	bt	.LBB105_11
	st.b	%r3, [%r9 add %r12]
.LBB105_13:
	bt	.LBB105_14
	nop
.LBB105_14:
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end105:
	.size	__cmovd, .Lfunc_end105-__cmovd
                                        ! -- End function
	.globl	__cmovh                         ! -- Begin function __cmovh
	.p2align	2
	.type	__cmovh,@function
__cmovh:                                ! @__cmovh
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	ld	-20[%fp], %r3
	sh	%r3, -0x1, %r3
	st	%r3, -28[%fp]
	ld	-12[%fp], %r3
	st	%r3, -32[%fp]
	ld	-16[%fp], %r3
	st	%r3, -36[%fp]
	ld	-32[%fp], %r3
	ld	-36[%fp], %r9
	sub.f	%r3, %r9, %r0
	bult	.LBB106_2
	sub	%sp, 0x28, %sp
	bt	.LBB106_1
	nop
.LBB106_1:
	ld	-32[%fp], %r3
	ld	-36[%fp], %r9
	ld	-20[%fp], %r12
	add	%r9, %r12, %r9
	sub.f	%r3, %r9, %r0
	bule	.LBB106_9
	nop
	bt	.LBB106_2
	nop
.LBB106_2:
	or	%r0, 0x0, %r3
	bt	.LBB106_3
	st	%r3, -24[%fp]
.LBB106_3:                              ! =>This Inner Loop Header: Depth=1
	ld	-24[%fp], %r3
	ld	-28[%fp], %r9
	sub.f	%r3, %r9, %r0
	buge	.LBB106_6
	nop
	bt	.LBB106_4
	nop
.LBB106_4:                              !   in Loop: Header=BB106_3 Depth=1
	ld	-16[%fp], %r3
	ld	-24[%fp], %r9
	sh	%r9, 0x1, %r12
	add	%r3, %r12, %r3
	uld.h	0[%r3], %r3
	ld	-12[%fp], %r9
	bt	.LBB106_5
	st.h	%r3, [%r9 add %r12]
.LBB106_5:                              !   in Loop: Header=BB106_3 Depth=1
	ld	-24[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB106_3
	st	%r3, -24[%fp]
.LBB106_6:
	sub	%fp, 0x14, %r3
	or	%r3, 0x3, %r3
	uld.b	0[%r3], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB106_8
	nop
	bt	.LBB106_7
	nop
.LBB106_7:
	ld	-36[%fp], %r3
	ld	-20[%fp], %r9
	sub	%r9, 0x1, %r12
	add	%r3, %r12, %r3
	uld.b	0[%r3], %r3
	ld	-32[%fp], %r9
	bt	.LBB106_8
	st.b	%r3, [%r9 add %r12]
.LBB106_8:
	bt	.LBB106_13
	nop
.LBB106_9:
	bt	.LBB106_10
	nop
.LBB106_10:                             ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r9
	sub.f	%r3, 0x0, %r0
	beq	.LBB106_12
	st	%r9, -20[%fp]
	bt	.LBB106_11
	nop
.LBB106_11:                             !   in Loop: Header=BB106_10 Depth=1
	ld	-36[%fp], %r3
	ld	-20[%fp], %r12
	add	%r3, %r12, %r3
	uld.b	0[%r3], %r3
	ld	-32[%fp], %r9
	bt	.LBB106_10
	st.b	%r3, [%r9 add %r12]
.LBB106_12:
	bt	.LBB106_13
	nop
.LBB106_13:
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end106:
	.size	__cmovh, .Lfunc_end106-__cmovh
                                        ! -- End function
	.globl	__cmovw                         ! -- Begin function __cmovw
	.p2align	2
	.type	__cmovw,@function
__cmovw:                                ! @__cmovw
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	ld	-20[%fp], %r3
	sh	%r3, -0x2, %r3
	st	%r3, -28[%fp]
	ld	-20[%fp], %r3
	and	%r3, 0xfffffffc, %r3
	st	%r3, -32[%fp]
	ld	-12[%fp], %r3
	st	%r3, -36[%fp]
	ld	-16[%fp], %r3
	st	%r3, -40[%fp]
	ld	-36[%fp], %r3
	ld	-40[%fp], %r9
	sub.f	%r3, %r9, %r0
	bult	.LBB107_2
	sub	%sp, 0x28, %sp
	bt	.LBB107_1
	nop
.LBB107_1:
	ld	-36[%fp], %r3
	ld	-40[%fp], %r9
	ld	-20[%fp], %r12
	add	%r9, %r12, %r9
	sub.f	%r3, %r9, %r0
	bule	.LBB107_10
	nop
	bt	.LBB107_2
	nop
.LBB107_2:
	or	%r0, 0x0, %r3
	bt	.LBB107_3
	st	%r3, -24[%fp]
.LBB107_3:                              ! =>This Inner Loop Header: Depth=1
	ld	-24[%fp], %r3
	ld	-28[%fp], %r9
	sub.f	%r3, %r9, %r0
	buge	.LBB107_6
	nop
	bt	.LBB107_4
	nop
.LBB107_4:                              !   in Loop: Header=BB107_3 Depth=1
	ld	-16[%fp], %r3
	ld	-24[%fp], %r9
	sh	%r9, 0x2, %r12
	add	%r3, %r12, %r3
	ld	0[%r3], %r3
	ld	-12[%fp], %r9
	bt	.LBB107_5
	st	%r3, [%r9 add %r12]
.LBB107_5:                              !   in Loop: Header=BB107_3 Depth=1
	ld	-24[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB107_3
	st	%r3, -24[%fp]
.LBB107_6:
	bt	.LBB107_7
	nop
.LBB107_7:                              ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	ld	-32[%fp], %r9
	sub.f	%r3, %r9, %r0
	bule	.LBB107_9
	nop
	bt	.LBB107_8
	nop
.LBB107_8:                              !   in Loop: Header=BB107_7 Depth=1
	ld	-40[%fp], %r3
	ld	-32[%fp], %r12
	add	%r3, %r12, %r3
	uld.b	0[%r3], %r3
	ld	-36[%fp], %r9
	st.b	%r3, [%r9 add %r12]
	ld	-32[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB107_7
	st	%r3, -32[%fp]
.LBB107_9:
	bt	.LBB107_14
	nop
.LBB107_10:
	bt	.LBB107_11
	nop
.LBB107_11:                             ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r9
	sub.f	%r3, 0x0, %r0
	beq	.LBB107_13
	st	%r9, -20[%fp]
	bt	.LBB107_12
	nop
.LBB107_12:                             !   in Loop: Header=BB107_11 Depth=1
	ld	-40[%fp], %r3
	ld	-20[%fp], %r12
	add	%r3, %r12, %r3
	uld.b	0[%r3], %r3
	ld	-36[%fp], %r9
	bt	.LBB107_11
	st.b	%r3, [%r9 add %r12]
.LBB107_13:
	bt	.LBB107_14
	nop
.LBB107_14:
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end107:
	.size	__cmovw, .Lfunc_end107-__cmovw
                                        ! -- End function
	.globl	__modi                          ! -- Begin function __modi
	.p2align	2
	.type	__modi,@function
__modi:                                 ! @__modi
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	ld	-12[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__modsi3
	ld	-16[%fp], %r7
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end108:
	.size	__modi, .Lfunc_end108-__modi
                                        ! -- End function
	.globl	__uitod                         ! -- Begin function __uitod
	.p2align	2
	.type	__uitod,@function
__uitod:                                ! @__uitod
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__floatunsidf
	ld	-12[%fp], %r6
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end109:
	.size	__uitod, .Lfunc_end109-__uitod
                                        ! -- End function
	.globl	__uitof                         ! -- Begin function __uitof
	.p2align	2
	.type	__uitof,@function
__uitof:                                ! @__uitof
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__floatunsisf
	ld	-12[%fp], %r6
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end110:
	.size	__uitof, .Lfunc_end110-__uitof
                                        ! -- End function
	.globl	__ulltod                        ! -- Begin function __ulltod
	.p2align	2
	.type	__ulltod,@function
__ulltod:                               ! @__ulltod
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	ld	0[%r3], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__floatundidf
	ld	-16[%fp], %r6
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end111:
	.size	__ulltod, .Lfunc_end111-__ulltod
                                        ! -- End function
	.globl	__ulltof                        ! -- Begin function __ulltof
	.p2align	2
	.type	__ulltof,@function
__ulltof:                               ! @__ulltof
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	ld	0[%r3], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__floatundisf
	ld	-16[%fp], %r6
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end112:
	.size	__ulltof, .Lfunc_end112-__ulltof
                                        ! -- End function
	.globl	__umodi                         ! -- Begin function __umodi
	.p2align	2
	.type	__umodi,@function
__umodi:                                ! @__umodi
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	ld	-12[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__umodsi3
	ld	-16[%fp], %r7
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end113:
	.size	__umodi, .Lfunc_end113-__umodi
                                        ! -- End function
	.globl	__clzhi2                        ! -- Begin function __clzhi2
	.p2align	2
	.type	__clzhi2,@function
__clzhi2:                               ! @__clzhi2
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
                                        ! kill: def $r3 killed $r6
	st.h	%r6, -10[%fp]
	or	%r0, 0x0, %r3
	bt	.LBB114_1
	st	%r3, -16[%fp]
.LBB114_1:                              ! =>This Inner Loop Header: Depth=1
	ld	-16[%fp], %r3
	sub.f	%r3, 0xf, %r0
	bgt	.LBB114_6
	nop
	bt	.LBB114_2
	nop
.LBB114_2:                              !   in Loop: Header=BB114_1 Depth=1
	uld.h	-10[%fp], %r3
	ld	-16[%fp], %r12
	mov	0xf, %r9
	sub	%r9, %r12, %r9
	sub	%r0, %r9, %r9
	sh	%r3, %r9, %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB114_4
	nop
	bt	.LBB114_3
	nop
.LBB114_3:
	bt	.LBB114_6
	nop
.LBB114_4:                              !   in Loop: Header=BB114_1 Depth=1
	bt	.LBB114_5
	nop
.LBB114_5:                              !   in Loop: Header=BB114_1 Depth=1
	ld	-16[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB114_1
	st	%r3, -16[%fp]
.LBB114_6:
	ld	-16[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end114:
	.size	__clzhi2, .Lfunc_end114-__clzhi2
                                        ! -- End function
	.globl	__ctzhi2                        ! -- Begin function __ctzhi2
	.p2align	2
	.type	__ctzhi2,@function
__ctzhi2:                               ! @__ctzhi2
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
                                        ! kill: def $r3 killed $r6
	st.h	%r6, -10[%fp]
	or	%r0, 0x0, %r3
	bt	.LBB115_1
	st	%r3, -16[%fp]
.LBB115_1:                              ! =>This Inner Loop Header: Depth=1
	ld	-16[%fp], %r3
	sub.f	%r3, 0xf, %r0
	bgt	.LBB115_6
	nop
	bt	.LBB115_2
	nop
.LBB115_2:                              !   in Loop: Header=BB115_1 Depth=1
	uld.h	-10[%fp], %r3
	ld	-16[%fp], %r9
	sub	%r0, %r9, %r9
	sh	%r3, %r9, %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB115_4
	nop
	bt	.LBB115_3
	nop
.LBB115_3:
	bt	.LBB115_6
	nop
.LBB115_4:                              !   in Loop: Header=BB115_1 Depth=1
	bt	.LBB115_5
	nop
.LBB115_5:                              !   in Loop: Header=BB115_1 Depth=1
	ld	-16[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB115_1
	st	%r3, -16[%fp]
.LBB115_6:
	ld	-16[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end115:
	.size	__ctzhi2, .Lfunc_end115-__ctzhi2
                                        ! -- End function
	.globl	__fixunssfsi                    ! -- Begin function __fixunssfsi
	.p2align	2
	.type	__fixunssfsi,@function
__fixunssfsi:                           ! @__fixunssfsi
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
                                        ! kill: def $r3 killed $r6
	st	%r6, -16[%fp]
	ld	-16[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__gesf2
	mov	0x47000000, %r7
	sub.f	%rv, 0x0, %r0
	bmi	.LBB116_2
	nop
	bt	.LBB116_1
	nop
.LBB116_1:
	ld	-16[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__addsf3
	mov	0xc7000000, %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__fixsfsi
	or	%rv, 0x0, %r6
	add	%rv, 0x8000, %r3
	bt	.LBB116_3
	st	%r3, -12[%fp]
.LBB116_2:
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__fixsfsi
	ld	-16[%fp], %r6
	bt	.LBB116_3
	st	%rv, -12[%fp]
.LBB116_3:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end116:
	.size	__fixunssfsi, .Lfunc_end116-__fixunssfsi
                                        ! -- End function
	.globl	__parityhi2                     ! -- Begin function __parityhi2
	.p2align	2
	.type	__parityhi2,@function
__parityhi2:                            ! @__parityhi2
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
                                        ! kill: def $r3 killed $r6
	st.h	%r6, -10[%fp]
	or	%r0, 0x0, %r3
	st	%r3, -20[%fp]
	bt	.LBB117_1
	st	%r3, -16[%fp]
.LBB117_1:                              ! =>This Inner Loop Header: Depth=1
	ld	-16[%fp], %r3
	sub.f	%r3, 0xf, %r0
	bgt	.LBB117_6
	nop
	bt	.LBB117_2
	nop
.LBB117_2:                              !   in Loop: Header=BB117_1 Depth=1
	uld.h	-10[%fp], %r3
	ld	-16[%fp], %r9
	sub	%r0, %r9, %r9
	sh	%r3, %r9, %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB117_4
	nop
	bt	.LBB117_3
	nop
.LBB117_3:                              !   in Loop: Header=BB117_1 Depth=1
	ld	-20[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB117_4
	st	%r3, -20[%fp]
.LBB117_4:                              !   in Loop: Header=BB117_1 Depth=1
	bt	.LBB117_5
	nop
.LBB117_5:                              !   in Loop: Header=BB117_1 Depth=1
	ld	-16[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB117_1
	st	%r3, -16[%fp]
.LBB117_6:
	ld	-20[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end117:
	.size	__parityhi2, .Lfunc_end117-__parityhi2
                                        ! -- End function
	.globl	__popcounthi2                   ! -- Begin function __popcounthi2
	.p2align	2
	.type	__popcounthi2,@function
__popcounthi2:                          ! @__popcounthi2
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
                                        ! kill: def $r3 killed $r6
	st.h	%r6, -10[%fp]
	or	%r0, 0x0, %r3
	st	%r3, -20[%fp]
	bt	.LBB118_1
	st	%r3, -16[%fp]
.LBB118_1:                              ! =>This Inner Loop Header: Depth=1
	ld	-16[%fp], %r3
	sub.f	%r3, 0xf, %r0
	bgt	.LBB118_6
	nop
	bt	.LBB118_2
	nop
.LBB118_2:                              !   in Loop: Header=BB118_1 Depth=1
	uld.h	-10[%fp], %r3
	ld	-16[%fp], %r9
	sub	%r0, %r9, %r9
	sh	%r3, %r9, %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB118_4
	nop
	bt	.LBB118_3
	nop
.LBB118_3:                              !   in Loop: Header=BB118_1 Depth=1
	ld	-20[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB118_4
	st	%r3, -20[%fp]
.LBB118_4:                              !   in Loop: Header=BB118_1 Depth=1
	bt	.LBB118_5
	nop
.LBB118_5:                              !   in Loop: Header=BB118_1 Depth=1
	ld	-16[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB118_1
	st	%r3, -16[%fp]
.LBB118_6:
	ld	-20[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end118:
	.size	__popcounthi2, .Lfunc_end118-__popcounthi2
                                        ! -- End function
	.globl	__mulsi3_iq2000                 ! -- Begin function __mulsi3_iq2000
	.p2align	2
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        ! @__mulsi3_iq2000
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	or	%r0, 0x0, %r3
	bt	.LBB119_1
	st	%r3, -20[%fp]
.LBB119_1:                              ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB119_5
	nop
	bt	.LBB119_2
	nop
.LBB119_2:                              !   in Loop: Header=BB119_1 Depth=1
	sub	%fp, 0xc, %r3
	or	%r3, 0x3, %r3
	uld.b	0[%r3], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB119_4
	nop
	bt	.LBB119_3
	nop
.LBB119_3:                              !   in Loop: Header=BB119_1 Depth=1
	ld	-16[%fp], %r9
	ld	-20[%fp], %r3
	add	%r3, %r9, %r3
	bt	.LBB119_4
	st	%r3, -20[%fp]
.LBB119_4:                              !   in Loop: Header=BB119_1 Depth=1
	ld	-12[%fp], %r3
	sh	%r3, -0x1, %r3
	st	%r3, -12[%fp]
	ld	-16[%fp], %r3
	sh	%r3, 0x1, %r3
	bt	.LBB119_1
	st	%r3, -16[%fp]
.LBB119_5:
	ld	-20[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end119:
	.size	__mulsi3_iq2000, .Lfunc_end119-__mulsi3_iq2000
                                        ! -- End function
	.globl	__mulsi3_lm32                   ! -- Begin function __mulsi3_lm32
	.p2align	2
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          ! @__mulsi3_lm32
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	st	%r6, -16[%fp]
	st	%r7, -20[%fp]
	or	%r0, 0x0, %r3
	st	%r3, -24[%fp]
	ld	-16[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB120_2
	sub	%sp, 0x18, %sp
	bt	.LBB120_1
	nop
.LBB120_1:
	or	%r0, 0x0, %r3
	bt	.LBB120_8
	st	%r3, -12[%fp]
.LBB120_2:
	bt	.LBB120_3
	nop
.LBB120_3:                              ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB120_7
	nop
	bt	.LBB120_4
	nop
.LBB120_4:                              !   in Loop: Header=BB120_3 Depth=1
	sub	%fp, 0x14, %r3
	or	%r3, 0x3, %r3
	uld.b	0[%r3], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB120_6
	nop
	bt	.LBB120_5
	nop
.LBB120_5:                              !   in Loop: Header=BB120_3 Depth=1
	ld	-16[%fp], %r9
	ld	-24[%fp], %r3
	add	%r3, %r9, %r3
	bt	.LBB120_6
	st	%r3, -24[%fp]
.LBB120_6:                              !   in Loop: Header=BB120_3 Depth=1
	ld	-16[%fp], %r3
	sh	%r3, 0x1, %r3
	st	%r3, -16[%fp]
	ld	-20[%fp], %r3
	sh	%r3, -0x1, %r3
	bt	.LBB120_3
	st	%r3, -20[%fp]
.LBB120_7:
	ld	-24[%fp], %r3
	bt	.LBB120_8
	st	%r3, -12[%fp]
.LBB120_8:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end120:
	.size	__mulsi3_lm32, .Lfunc_end120-__mulsi3_lm32
                                        ! -- End function
	.globl	__udivmodsi4                    ! -- Begin function __udivmodsi4
	.p2align	2
	.type	__udivmodsi4,@function
__udivmodsi4:                           ! @__udivmodsi4
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x28, %sp
	st	%r6, -16[%fp]
	st	%r7, -20[%fp]
	st	%r18, -24[%fp]
	mov	0x1, %r3
	st	%r3, -28[%fp]
	or	%r0, 0x0, %r3
	bt	.LBB121_1
	st	%r3, -32[%fp]
.LBB121_1:                              ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r9
	ld	-16[%fp], %r12
	or	%r0, 0x0, %r3
	sub.f	%r9, %r12, %r0
	buge	.LBB121_4
	st	%r3, -36[%fp]
	bt	.LBB121_2
	nop
.LBB121_2:                              !   in Loop: Header=BB121_1 Depth=1
	ld	-28[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB121_4
	st	%r3, -36[%fp]
	bt	.LBB121_3
	nop
.LBB121_3:                              !   in Loop: Header=BB121_1 Depth=1
	uld.b	-20[%fp], %r3
	mov	0x80, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	seq	%r3
	bt	.LBB121_4
	st	%r3, -36[%fp]
.LBB121_4:                              !   in Loop: Header=BB121_1 Depth=1
	ld	-36[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB121_6
	nop
	bt	.LBB121_5
	nop
.LBB121_5:                              !   in Loop: Header=BB121_1 Depth=1
	ld	-20[%fp], %r3
	sh	%r3, 0x1, %r3
	st	%r3, -20[%fp]
	ld	-28[%fp], %r3
	sh	%r3, 0x1, %r3
	bt	.LBB121_1
	st	%r3, -28[%fp]
.LBB121_6:
	bt	.LBB121_7
	nop
.LBB121_7:                              ! =>This Inner Loop Header: Depth=1
	ld	-28[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB121_11
	nop
	bt	.LBB121_8
	nop
.LBB121_8:                              !   in Loop: Header=BB121_7 Depth=1
	ld	-16[%fp], %r3
	ld	-20[%fp], %r9
	sub.f	%r3, %r9, %r0
	bult	.LBB121_10
	nop
	bt	.LBB121_9
	nop
.LBB121_9:                              !   in Loop: Header=BB121_7 Depth=1
	ld	-20[%fp], %r9
	ld	-16[%fp], %r3
	sub	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-28[%fp], %r9
	ld	-32[%fp], %r3
	or	%r3, %r9, %r3
	bt	.LBB121_10
	st	%r3, -32[%fp]
.LBB121_10:                             !   in Loop: Header=BB121_7 Depth=1
	ld	-28[%fp], %r3
	sh	%r3, -0x1, %r3
	st	%r3, -28[%fp]
	ld	-20[%fp], %r3
	sh	%r3, -0x1, %r3
	bt	.LBB121_7
	st	%r3, -20[%fp]
.LBB121_11:
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB121_13
	nop
	bt	.LBB121_12
	nop
.LBB121_12:
	ld	-16[%fp], %r3
	bt	.LBB121_14
	st	%r3, -12[%fp]
.LBB121_13:
	ld	-32[%fp], %r3
	bt	.LBB121_14
	st	%r3, -12[%fp]
.LBB121_14:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end121:
	.size	__udivmodsi4, .Lfunc_end121-__udivmodsi4
                                        ! -- End function
	.globl	__mspabi_cmpf                   ! -- Begin function __mspabi_cmpf
	.p2align	2
	.type	__mspabi_cmpf,@function
__mspabi_cmpf:                          ! @__mspabi_cmpf
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	st	%r6, -16[%fp]
	st	%r7, -20[%fp]
	ld	-16[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltsf2
	ld	-20[%fp], %r7
	sub.f	%rv, 0x0, %r0
	bpl	.LBB122_2
	nop
	bt	.LBB122_1
	nop
.LBB122_1:
	or	%r1, 0x0, %r3
	bt	.LBB122_5
	st	%r3, -12[%fp]
.LBB122_2:
	ld	-16[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__gtsf2
	ld	-20[%fp], %r7
	sub.f	%rv, 0x1, %r0
	blt	.LBB122_4
	nop
	bt	.LBB122_3
	nop
.LBB122_3:
	mov	0x1, %r3
	bt	.LBB122_5
	st	%r3, -12[%fp]
.LBB122_4:
	or	%r0, 0x0, %r3
	bt	.LBB122_5
	st	%r3, -12[%fp]
.LBB122_5:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end122:
	.size	__mspabi_cmpf, .Lfunc_end122-__mspabi_cmpf
                                        ! -- End function
	.globl	__mspabi_cmpd                   ! -- Begin function __mspabi_cmpd
	.p2align	2
	.type	__mspabi_cmpd,@function
__mspabi_cmpd:                          ! @__mspabi_cmpd
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
                                        ! kill: def $r3 killed $r19
                                        ! kill: def $r3 killed $r18
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r9
	st	%r7, 0[%r9]
	st	%r6, -24[%fp]
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	st	%r19, 0[%r3]
	st	%r18, -32[%fp]
	ld	0[%r9], %r7
	ld	-24[%fp], %r6
	ld	0[%r3], %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltdf2
	ld	-32[%fp], %r18
	sub.f	%rv, 0x0, %r0
	bpl	.LBB123_2
	nop
	bt	.LBB123_1
	nop
.LBB123_1:
	or	%r1, 0x0, %r3
	bt	.LBB123_5
	st	%r3, -12[%fp]
.LBB123_2:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r7
	ld	-24[%fp], %r6
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__gtdf2
	ld	-32[%fp], %r18
	sub.f	%rv, 0x1, %r0
	blt	.LBB123_4
	nop
	bt	.LBB123_3
	nop
.LBB123_3:
	mov	0x1, %r3
	bt	.LBB123_5
	st	%r3, -12[%fp]
.LBB123_4:
	or	%r0, 0x0, %r3
	bt	.LBB123_5
	st	%r3, -12[%fp]
.LBB123_5:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end123:
	.size	__mspabi_cmpd, .Lfunc_end123-__mspabi_cmpd
                                        ! -- End function
	.globl	__mspabi_mpysll                 ! -- Begin function __mspabi_mpysll
	.p2align	2
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        ! @__mspabi_mpysll
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	ld	-12[%fp], %r7
	sha	%r7, -0x1f, %r6
	ld	-16[%fp], %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__muldi3
	sha	%r19, -0x1f, %r18
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end124:
	.size	__mspabi_mpysll, .Lfunc_end124-__mspabi_mpysll
                                        ! -- End function
	.globl	__mspabi_mpyull                 ! -- Begin function __mspabi_mpyull
	.p2align	2
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        ! @__mspabi_mpyull
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	ld	-12[%fp], %r7
	ld	-16[%fp], %r19
	or	%r0, 0x0, %r18
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__muldi3
	or	%r18, 0x0, %r6
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end125:
	.size	__mspabi_mpyull, .Lfunc_end125-__mspabi_mpyull
                                        ! -- End function
	.globl	__mulhi3                        ! -- Begin function __mulhi3
	.p2align	2
	.type	__mulhi3,@function
__mulhi3:                               ! @__mulhi3
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	or	%r0, 0x0, %r3
	st	%r3, -24[%fp]
	st	%r3, -28[%fp]
	ld	-16[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB126_2
	sub	%sp, 0x28, %sp
	bt	.LBB126_1
	nop
.LBB126_1:
	ld	-16[%fp], %r9
	or	%r0, 0x0, %r3
	sub	%r3, %r9, %r3
	st	%r3, -16[%fp]
	mov	0x1, %r3
	bt	.LBB126_2
	st	%r3, -24[%fp]
.LBB126_2:
	or	%r0, 0x0, %r3
	bt	.LBB126_3
	st.b	%r3, -17[%fp]
.LBB126_3:                              ! =>This Inner Loop Header: Depth=1
	ld	-16[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB126_5
	st	%r3, -32[%fp]
	bt	.LBB126_4
	nop
.LBB126_4:                              !   in Loop: Header=BB126_3 Depth=1
	ld.b	-17[%fp], %r3
	sub.f	%r3, 0x20, %r0
	sult	%r3
	bt	.LBB126_5
	st	%r3, -32[%fp]
.LBB126_5:                              !   in Loop: Header=BB126_3 Depth=1
	ld	-32[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB126_10
	nop
	bt	.LBB126_6
	nop
.LBB126_6:                              !   in Loop: Header=BB126_3 Depth=1
	sub	%fp, 0x10, %r3
	or	%r3, 0x3, %r3
	uld.b	0[%r3], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB126_8
	nop
	bt	.LBB126_7
	nop
.LBB126_7:                              !   in Loop: Header=BB126_3 Depth=1
	ld	-12[%fp], %r9
	ld	-28[%fp], %r3
	add	%r3, %r9, %r3
	bt	.LBB126_8
	st	%r3, -28[%fp]
.LBB126_8:                              !   in Loop: Header=BB126_3 Depth=1
	ld	-12[%fp], %r3
	sh	%r3, 0x1, %r3
	st	%r3, -12[%fp]
	ld	-16[%fp], %r3
	sha	%r3, -0x1, %r3
	bt	.LBB126_9
	st	%r3, -16[%fp]
.LBB126_9:                              !   in Loop: Header=BB126_3 Depth=1
	uld.b	-17[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB126_3
	st.b	%r3, -17[%fp]
.LBB126_10:
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB126_12
	nop
	bt	.LBB126_11
	nop
.LBB126_11:
	ld	-28[%fp], %r9
	or	%r0, 0x0, %r3
	sub	%r3, %r9, %r3
	bt	.LBB126_13
	st	%r3, -36[%fp]
.LBB126_12:
	ld	-28[%fp], %r3
	bt	.LBB126_13
	st	%r3, -36[%fp]
.LBB126_13:
	ld	-36[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end126:
	.size	__mulhi3, .Lfunc_end126-__mulhi3
                                        ! -- End function
	.globl	__divsi3                        ! -- Begin function __divsi3
	.p2align	2
	.type	__divsi3,@function
__divsi3:                               ! @__divsi3
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	or	%r0, 0x0, %r3
	st	%r3, -20[%fp]
	ld	-12[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB127_2
	sub	%sp, 0x18, %sp
	bt	.LBB127_1
	nop
.LBB127_1:
	ld	-12[%fp], %r9
	or	%r0, 0x0, %r3
	sub	%r3, %r9, %r3
	st	%r3, -12[%fp]
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	seq	%r3
	bt	.LBB127_2
	st	%r3, -20[%fp]
.LBB127_2:
	ld	-16[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB127_4
	nop
	bt	.LBB127_3
	nop
.LBB127_3:
	ld	-16[%fp], %r9
	or	%r0, 0x0, %r3
	sub	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	seq	%r3
	bt	.LBB127_4
	st	%r3, -20[%fp]
.LBB127_4:
	ld	-12[%fp], %r6
	ld	-16[%fp], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__udivmodsi4
	or	%r0, 0x0, %r18
	st	%rv, -24[%fp]
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB127_6
	nop
	bt	.LBB127_5
	nop
.LBB127_5:
	ld	-24[%fp], %r9
	or	%r0, 0x0, %r3
	sub	%r3, %r9, %r3
	bt	.LBB127_6
	st	%r3, -24[%fp]
.LBB127_6:
	ld	-24[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end127:
	.size	__divsi3, .Lfunc_end127-__divsi3
                                        ! -- End function
	.globl	__modsi3                        ! -- Begin function __modsi3
	.p2align	2
	.type	__modsi3,@function
__modsi3:                               ! @__modsi3
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	or	%r0, 0x0, %r3
	st	%r3, -20[%fp]
	ld	-12[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB128_2
	sub	%sp, 0x18, %sp
	bt	.LBB128_1
	nop
.LBB128_1:
	ld	-12[%fp], %r9
	or	%r0, 0x0, %r3
	sub	%r3, %r9, %r3
	st	%r3, -12[%fp]
	mov	0x1, %r3
	bt	.LBB128_2
	st	%r3, -20[%fp]
.LBB128_2:
	ld	-16[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB128_4
	nop
	bt	.LBB128_3
	nop
.LBB128_3:
	ld	-16[%fp], %r9
	or	%r0, 0x0, %r3
	sub	%r3, %r9, %r3
	bt	.LBB128_4
	st	%r3, -16[%fp]
.LBB128_4:
	ld	-12[%fp], %r6
	ld	-16[%fp], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__udivmodsi4
	mov	0x1, %r18
	st	%rv, -24[%fp]
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB128_6
	nop
	bt	.LBB128_5
	nop
.LBB128_5:
	ld	-24[%fp], %r9
	or	%r0, 0x0, %r3
	sub	%r3, %r9, %r3
	bt	.LBB128_6
	st	%r3, -24[%fp]
.LBB128_6:
	ld	-24[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end128:
	.size	__modsi3, .Lfunc_end128-__modsi3
                                        ! -- End function
	.globl	__udivmodhi4                    ! -- Begin function __udivmodhi4
	.p2align	2
	.type	__udivmodhi4,@function
__udivmodhi4:                           ! @__udivmodhi4
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	st.h	%r6, -12[%fp]
	st.h	%r7, -14[%fp]
	st	%r18, -20[%fp]
	mov	0x1, %r3
	st.h	%r3, -22[%fp]
	or	%r0, 0x0, %r3
	bt	.LBB129_1
	st.h	%r3, -24[%fp]
.LBB129_1:                              ! =>This Inner Loop Header: Depth=1
	uld.h	-14[%fp], %r9
	uld.h	-12[%fp], %r12
	or	%r0, 0x0, %r3
	sub.f	%r9, %r12, %r0
	bge	.LBB129_4
	st	%r3, -28[%fp]
	bt	.LBB129_2
	nop
.LBB129_2:                              !   in Loop: Header=BB129_1 Depth=1
	uld.h	-22[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB129_4
	st	%r3, -28[%fp]
	bt	.LBB129_3
	nop
.LBB129_3:                              !   in Loop: Header=BB129_1 Depth=1
	uld.h	-14[%fp], %r3
	mov	0x8000, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	seq	%r3
	bt	.LBB129_4
	st	%r3, -28[%fp]
.LBB129_4:                              !   in Loop: Header=BB129_1 Depth=1
	ld	-28[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB129_6
	nop
	bt	.LBB129_5
	nop
.LBB129_5:                              !   in Loop: Header=BB129_1 Depth=1
	uld.h	-14[%fp], %r3
	sh	%r3, 0x1, %r3
	st.h	%r3, -14[%fp]
	uld.h	-22[%fp], %r3
	sh	%r3, 0x1, %r3
	bt	.LBB129_1
	st.h	%r3, -22[%fp]
.LBB129_6:
	bt	.LBB129_7
	nop
.LBB129_7:                              ! =>This Inner Loop Header: Depth=1
	uld.h	-22[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB129_11
	nop
	bt	.LBB129_8
	nop
.LBB129_8:                              !   in Loop: Header=BB129_7 Depth=1
	uld.h	-12[%fp], %r3
	uld.h	-14[%fp], %r9
	sub.f	%r3, %r9, %r0
	blt	.LBB129_10
	nop
	bt	.LBB129_9
	nop
.LBB129_9:                              !   in Loop: Header=BB129_7 Depth=1
	uld.h	-14[%fp], %r9
	uld.h	-12[%fp], %r3
	sub	%r3, %r9, %r3
	st.h	%r3, -12[%fp]
	uld.h	-22[%fp], %r9
	uld.h	-24[%fp], %r3
	or	%r3, %r9, %r3
	bt	.LBB129_10
	st.h	%r3, -24[%fp]
.LBB129_10:                             !   in Loop: Header=BB129_7 Depth=1
	uld.h	-22[%fp], %r3
	sh	%r3, -0x1, %r3
	st.h	%r3, -22[%fp]
	uld.h	-14[%fp], %r3
	sh	%r3, -0x1, %r3
	bt	.LBB129_7
	st.h	%r3, -14[%fp]
.LBB129_11:
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB129_13
	nop
	bt	.LBB129_12
	nop
.LBB129_12:
	uld.h	-12[%fp], %r3
	bt	.LBB129_14
	st.h	%r3, -10[%fp]
.LBB129_13:
	uld.h	-24[%fp], %r3
	bt	.LBB129_14
	st.h	%r3, -10[%fp]
.LBB129_14:
	uld.h	-10[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end129:
	.size	__udivmodhi4, .Lfunc_end129-__udivmodhi4
                                        ! -- End function
	.globl	__udivmodsi4_libgcc             ! -- Begin function __udivmodsi4_libgcc
	.p2align	2
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    ! @__udivmodsi4_libgcc
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x28, %sp
	st	%r6, -16[%fp]
	st	%r7, -20[%fp]
	st	%r18, -24[%fp]
	mov	0x1, %r3
	st	%r3, -28[%fp]
	or	%r0, 0x0, %r3
	bt	.LBB130_1
	st	%r3, -32[%fp]
.LBB130_1:                              ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r9
	ld	-16[%fp], %r12
	or	%r0, 0x0, %r3
	sub.f	%r9, %r12, %r0
	buge	.LBB130_4
	st	%r3, -36[%fp]
	bt	.LBB130_2
	nop
.LBB130_2:                              !   in Loop: Header=BB130_1 Depth=1
	ld	-28[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB130_4
	st	%r3, -36[%fp]
	bt	.LBB130_3
	nop
.LBB130_3:                              !   in Loop: Header=BB130_1 Depth=1
	uld.b	-20[%fp], %r3
	mov	0x80, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	seq	%r3
	bt	.LBB130_4
	st	%r3, -36[%fp]
.LBB130_4:                              !   in Loop: Header=BB130_1 Depth=1
	ld	-36[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB130_6
	nop
	bt	.LBB130_5
	nop
.LBB130_5:                              !   in Loop: Header=BB130_1 Depth=1
	ld	-20[%fp], %r3
	sh	%r3, 0x1, %r3
	st	%r3, -20[%fp]
	ld	-28[%fp], %r3
	sh	%r3, 0x1, %r3
	bt	.LBB130_1
	st	%r3, -28[%fp]
.LBB130_6:
	bt	.LBB130_7
	nop
.LBB130_7:                              ! =>This Inner Loop Header: Depth=1
	ld	-28[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB130_11
	nop
	bt	.LBB130_8
	nop
.LBB130_8:                              !   in Loop: Header=BB130_7 Depth=1
	ld	-16[%fp], %r3
	ld	-20[%fp], %r9
	sub.f	%r3, %r9, %r0
	bult	.LBB130_10
	nop
	bt	.LBB130_9
	nop
.LBB130_9:                              !   in Loop: Header=BB130_7 Depth=1
	ld	-20[%fp], %r9
	ld	-16[%fp], %r3
	sub	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-28[%fp], %r9
	ld	-32[%fp], %r3
	or	%r3, %r9, %r3
	bt	.LBB130_10
	st	%r3, -32[%fp]
.LBB130_10:                             !   in Loop: Header=BB130_7 Depth=1
	ld	-28[%fp], %r3
	sh	%r3, -0x1, %r3
	st	%r3, -28[%fp]
	ld	-20[%fp], %r3
	sh	%r3, -0x1, %r3
	bt	.LBB130_7
	st	%r3, -20[%fp]
.LBB130_11:
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB130_13
	nop
	bt	.LBB130_12
	nop
.LBB130_12:
	ld	-16[%fp], %r3
	bt	.LBB130_14
	st	%r3, -12[%fp]
.LBB130_13:
	ld	-32[%fp], %r3
	bt	.LBB130_14
	st	%r3, -12[%fp]
.LBB130_14:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end130:
	.size	__udivmodsi4_libgcc, .Lfunc_end130-__udivmodsi4_libgcc
                                        ! -- End function
	.globl	__ashldi3                       ! -- Begin function __ashldi3
	.p2align	2
	.type	__ashldi3,@function
__ashldi3:                              ! @__ashldi3
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x30, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -24[%fp]
	st	%r18, -28[%fp]
	mov	0x20, %r9
	st	%r9, -32[%fp]
	ld	0[%r3], %r12
	ld	-24[%fp], %r3
	sub	%fp, 0x28, %r13
	or	%r13, 0x4, %r13
	st	%r12, 0[%r13]
	st	%r3, -40[%fp]
	sub	%fp, 0x1c, %r3
	or	%r3, 0x3, %r3
	uld.b	0[%r3], %r3
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB131_2
	nop
	bt	.LBB131_1
	nop
.LBB131_1:
	sub	%fp, 0x30, %r3
	or	%r3, 0x4, %r9
	or	%r0, 0x0, %r3
	st	%r3, 0[%r9]
	sub	%fp, 0x28, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-28[%fp], %r9
	sub	%r9, 0x20, %r9
	sh	%r3, %r9, %r3
	bt	.LBB131_5
	st	%r3, -48[%fp]
.LBB131_2:
	ld	-28[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB131_4
	nop
	bt	.LBB131_3
	nop
.LBB131_3:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-24[%fp], %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB131_6
	st	%r3, -16[%fp]
.LBB131_4:
	sub	%fp, 0x28, %r3
	or	%r3, 0x4, %r9
	ld	0[%r9], %r3
	ld	-28[%fp], %r12
	sh	%r3, %r12, %r3
	sub	%fp, 0x30, %r12
	or	%r12, 0x4, %r12
	st	%r3, 0[%r12]
	ld	-40[%fp], %r3
	ld	-28[%fp], %r13
	sh	%r3, %r13, %r3
	ld	0[%r9], %r9
	mov	0x20, %r12
	sub	%r12, %r13, %r12
	sub	%r0, %r12, %r12
	sh	%r9, %r12, %r9
	or	%r3, %r9, %r3
	bt	.LBB131_5
	st	%r3, -48[%fp]
.LBB131_5:
	sub	%fp, 0x30, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-48[%fp], %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB131_6
	st	%r3, -16[%fp]
.LBB131_6:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-16[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end131:
	.size	__ashldi3, .Lfunc_end131-__ashldi3
                                        ! -- End function
	.globl	__ashrdi3                       ! -- Begin function __ashrdi3
	.p2align	2
	.type	__ashrdi3,@function
__ashrdi3:                              ! @__ashrdi3
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x30, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -24[%fp]
	st	%r18, -28[%fp]
	mov	0x20, %r9
	st	%r9, -32[%fp]
	ld	0[%r3], %r12
	ld	-24[%fp], %r3
	sub	%fp, 0x28, %r13
	or	%r13, 0x4, %r13
	st	%r12, 0[%r13]
	st	%r3, -40[%fp]
	sub	%fp, 0x1c, %r3
	or	%r3, 0x3, %r3
	uld.b	0[%r3], %r3
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB132_2
	nop
	bt	.LBB132_1
	nop
.LBB132_1:
	ld	-40[%fp], %r3
	sha	%r3, -0x1f, %r3
	st	%r3, -48[%fp]
	ld	-40[%fp], %r3
	ld	-28[%fp], %r9
	sub	%r9, 0x20, %r9
	sub	%r0, %r9, %r9
	sha	%r3, %r9, %r3
	sub	%fp, 0x30, %r9
	or	%r9, 0x4, %r9
	bt	.LBB132_5
	st	%r3, 0[%r9]
.LBB132_2:
	ld	-28[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB132_4
	nop
	bt	.LBB132_3
	nop
.LBB132_3:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-24[%fp], %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB132_6
	st	%r3, -16[%fp]
.LBB132_4:
	ld	-40[%fp], %r3
	ld	-28[%fp], %r9
	sub	%r0, %r9, %r9
	sha	%r3, %r9, %r3
	st	%r3, -48[%fp]
	ld	-40[%fp], %r3
	ld	-28[%fp], %r12
	mov	0x20, %r9
	sub	%r9, %r12, %r9
	sh	%r3, %r9, %r3
	sub	%fp, 0x28, %r9
	or	%r9, 0x4, %r9
	ld	0[%r9], %r9
	sub	%r0, %r12, %r12
	sh	%r9, %r12, %r9
	or	%r3, %r9, %r3
	sub	%fp, 0x30, %r9
	or	%r9, 0x4, %r9
	bt	.LBB132_5
	st	%r3, 0[%r9]
.LBB132_5:
	sub	%fp, 0x30, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-48[%fp], %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB132_6
	st	%r3, -16[%fp]
.LBB132_6:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-16[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end132:
	.size	__ashrdi3, .Lfunc_end132-__ashrdi3
                                        ! -- End function
	.globl	__bswapdi2                      ! -- Begin function __bswapdi2
	.p2align	2
	.type	__bswapdi2,@function
__bswapdi2:                             ! @__bswapdi2
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	ld	0[%r3], %r12
	ld	-16[%fp], %r9
	sh	%r9, -0x18, %r3
	mov	0xff0000, %r14
	and	%r9, %r14, %r13
	sh	%r13, -0x8, %r13
	or	%r3, %r13, %r3
	mov	0xff00, %r13
	and	%r9, %r13, %r16
	sh	%r16, 0x8, %r16
	or	%r3, %r16, %r3
	sh	%r9, 0x18, %r9
	or	%r3, %r9, %r9
	sh	%r12, -0x18, %r3
	and	%r12, %r14, %r14
	sh	%r14, -0x8, %r14
	or	%r3, %r14, %r3
	and	%r12, %r13, %r13
	sh	%r13, 0x8, %r13
	or	%r3, %r13, %r3
	sh	%r12, 0x18, %r12
	or	%r3, %r12, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end133:
	.size	__bswapdi2, .Lfunc_end133-__bswapdi2
                                        ! -- End function
	.globl	__bswapsi2                      ! -- Begin function __bswapsi2
	.p2align	2
	.type	__bswapsi2,@function
__bswapsi2:                             ! @__bswapsi2
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r9
	sh	%r9, -0x18, %r3
	mov	0xff0000, %r12
	and	%r9, %r12, %r12
	sh	%r12, -0x8, %r12
	or	%r3, %r12, %r3
	mov	0xff00, %r12
	and	%r9, %r12, %r12
	sh	%r12, 0x8, %r12
	or	%r3, %r12, %r3
	sh	%r9, 0x18, %r9
	or	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end134:
	.size	__bswapsi2, .Lfunc_end134-__bswapsi2
                                        ! -- End function
	.globl	__clzsi2                        ! -- Begin function __clzsi2
	.p2align	2
	.type	__clzsi2,@function
__clzsi2:                               ! @__clzsi2
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	st	%r3, -16[%fp]
	uld.h	-16[%fp], %r3
	sh	%r3, 0x10, %r3
	sub.f	%r3, 0x0, %r0
	seq	%r3
	sh	%r3, 0x4, %r3
	st	%r3, -20[%fp]
	ld	-20[%fp], %r9
	mov	0x10, %r3
	sub	%r3, %r9, %r9
	ld	-16[%fp], %r3
	sub	%r0, %r9, %r9
	sh	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-20[%fp], %r3
	st	%r3, -24[%fp]
	sub	%fp, 0x10, %r3
	or	%r3, 0x2, %r3
	uld.b	0[%r3], %r3
	sh	%r3, 0x8, %r3
	sub.f	%r3, 0x0, %r0
	seq	%r3
	sh	%r3, 0x3, %r3
	st	%r3, -20[%fp]
	ld	-20[%fp], %r9
	mov	0x8, %r3
	sub	%r3, %r9, %r9
	ld	-16[%fp], %r3
	sub	%r0, %r9, %r9
	sh	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-20[%fp], %r9
	ld	-24[%fp], %r3
	add	%r3, %r9, %r3
	st	%r3, -24[%fp]
	ld	-16[%fp], %r3
	mov	0xf0, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	seq	%r3
	sh	%r3, 0x2, %r3
	st	%r3, -20[%fp]
	ld	-20[%fp], %r9
	mov	0x4, %r3
	sub	%r3, %r9, %r9
	ld	-16[%fp], %r3
	sub	%r0, %r9, %r9
	sh	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-20[%fp], %r9
	ld	-24[%fp], %r3
	add	%r3, %r9, %r3
	st	%r3, -24[%fp]
	ld	-16[%fp], %r3
	mov	0xc, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	seq	%r3
	sh	%r3, 0x1, %r3
	st	%r3, -20[%fp]
	ld	-20[%fp], %r3
	mov	0x2, %r13
	sub	%r13, %r3, %r9
	ld	-16[%fp], %r3
	sub	%r0, %r9, %r9
	sh	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-20[%fp], %r9
	ld	-24[%fp], %r3
	add	%r3, %r9, %r3
	st	%r3, -24[%fp]
	ld	-24[%fp], %r3
	ld	-16[%fp], %r12
	sub	%r13, %r12, %r9
	and	%r12, %r13, %r14
	or	%r0, 0x0, %r13
	or	%r1, 0x0, %r12
	sub.f	%r14, 0x0, %r0
	sel.eq %r12, %r13, %r12
	and	%r9, %r12, %r9
	add	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end135:
	.size	__clzsi2, .Lfunc_end135-__clzsi2
                                        ! -- End function
	.globl	__cmpdi2                        ! -- Begin function __cmpdi2
	.p2align	2
	.type	__cmpdi2,@function
__cmpdi2:                               ! @__cmpdi2
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x30, %sp
                                        ! kill: def $r3 killed $r19
                                        ! kill: def $r3 killed $r18
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r9
	st	%r7, 0[%r9]
	st	%r6, -24[%fp]
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	st	%r19, 0[%r3]
	st	%r18, -32[%fp]
	ld	0[%r9], %r12
	ld	-24[%fp], %r9
	sub	%fp, 0x28, %r13
	or	%r13, 0x4, %r13
	st	%r12, 0[%r13]
	st	%r9, -40[%fp]
	ld	0[%r3], %r9
	ld	-32[%fp], %r3
	sub	%fp, 0x30, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	st	%r3, -48[%fp]
	ld	-40[%fp], %r3
	ld	-48[%fp], %r9
	sub.f	%r3, %r9, %r0
	bge	.LBB136_2
	nop
	bt	.LBB136_1
	nop
.LBB136_1:
	or	%r0, 0x0, %r3
	bt	.LBB136_9
	st	%r3, -12[%fp]
.LBB136_2:
	ld	-40[%fp], %r3
	ld	-48[%fp], %r9
	sub.f	%r3, %r9, %r0
	ble	.LBB136_4
	nop
	bt	.LBB136_3
	nop
.LBB136_3:
	mov	0x2, %r3
	bt	.LBB136_9
	st	%r3, -12[%fp]
.LBB136_4:
	sub	%fp, 0x28, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	sub	%fp, 0x30, %r9
	or	%r9, 0x4, %r9
	ld	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	buge	.LBB136_6
	nop
	bt	.LBB136_5
	nop
.LBB136_5:
	or	%r0, 0x0, %r3
	bt	.LBB136_9
	st	%r3, -12[%fp]
.LBB136_6:
	sub	%fp, 0x28, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	sub	%fp, 0x30, %r9
	or	%r9, 0x4, %r9
	ld	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	bule	.LBB136_8
	nop
	bt	.LBB136_7
	nop
.LBB136_7:
	mov	0x2, %r3
	bt	.LBB136_9
	st	%r3, -12[%fp]
.LBB136_8:
	mov	0x1, %r3
	bt	.LBB136_9
	st	%r3, -12[%fp]
.LBB136_9:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end136:
	.size	__cmpdi2, .Lfunc_end136-__cmpdi2
                                        ! -- End function
	.globl	__aeabi_lcmp                    ! -- Begin function __aeabi_lcmp
	.p2align	2
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           ! @__aeabi_lcmp
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
                                        ! kill: def $r3 killed $r19
                                        ! kill: def $r3 killed $r18
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r9
	st	%r7, 0[%r9]
	st	%r6, -16[%fp]
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r19, 0[%r3]
	st	%r18, -24[%fp]
	ld	0[%r9], %r7
	ld	-16[%fp], %r6
	ld	0[%r3], %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__cmpdi2
	ld	-24[%fp], %r18
	sub	%rv, 0x1, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end137:
	.size	__aeabi_lcmp, .Lfunc_end137-__aeabi_lcmp
                                        ! -- End function
	.globl	__ctzsi2                        ! -- Begin function __ctzsi2
	.p2align	2
	.type	__ctzsi2,@function
__ctzsi2:                               ! @__ctzsi2
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	st	%r3, -16[%fp]
	sub	%fp, 0x10, %r3
	or	%r3, 0x2, %r9
	uld.h	0[%r9], %r9
	sub.f	%r9, 0x0, %r0
	seq	%r9
	sh	%r9, 0x4, %r9
	st	%r9, -20[%fp]
	ld	-20[%fp], %r12
	ld	-16[%fp], %r9
	sub	%r0, %r12, %r12
	sh	%r9, %r12, %r9
	st	%r9, -16[%fp]
	ld	-20[%fp], %r9
	st	%r9, -24[%fp]
	or	%r3, 0x3, %r3
	uld.b	0[%r3], %r3
	sub.f	%r3, 0x0, %r0
	seq	%r3
	sh	%r3, 0x3, %r3
	st	%r3, -20[%fp]
	ld	-20[%fp], %r9
	ld	-16[%fp], %r3
	sub	%r0, %r9, %r9
	sh	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-20[%fp], %r9
	ld	-24[%fp], %r3
	add	%r3, %r9, %r3
	st	%r3, -24[%fp]
	ld	-16[%fp], %r3
	mov	0xf, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	seq	%r3
	sh	%r3, 0x2, %r3
	st	%r3, -20[%fp]
	ld	-20[%fp], %r9
	ld	-16[%fp], %r3
	sub	%r0, %r9, %r9
	sh	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-20[%fp], %r9
	ld	-24[%fp], %r3
	add	%r3, %r9, %r3
	st	%r3, -24[%fp]
	ld	-16[%fp], %r3
	mov	0x3, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	seq	%r3
	sh	%r3, 0x1, %r3
	st	%r3, -20[%fp]
	ld	-20[%fp], %r12
	ld	-16[%fp], %r3
	sub	%r0, %r12, %r12
	sh	%r3, %r12, %r3
	st	%r3, -16[%fp]
	ld	-16[%fp], %r3
	and	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-20[%fp], %r9
	ld	-24[%fp], %r3
	add	%r3, %r9, %r3
	st	%r3, -24[%fp]
	ld	-24[%fp], %r3
	ld	-16[%fp], %r12
	sh	%r12, -0x1, %r13
	mov	0x2, %r9
	sub	%r9, %r13, %r9
	mov	0x1, %r13
	and	%r12, %r13, %r12
	sub	%r12, 0x1, %r12
	and	%r9, %r12, %r9
	add	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end138:
	.size	__ctzsi2, .Lfunc_end138-__ctzsi2
                                        ! -- End function
	.globl	__lshrdi3                       ! -- Begin function __lshrdi3
	.p2align	2
	.type	__lshrdi3,@function
__lshrdi3:                              ! @__lshrdi3
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x30, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -24[%fp]
	st	%r18, -28[%fp]
	mov	0x20, %r9
	st	%r9, -32[%fp]
	ld	0[%r3], %r12
	ld	-24[%fp], %r3
	sub	%fp, 0x28, %r13
	or	%r13, 0x4, %r13
	st	%r12, 0[%r13]
	st	%r3, -40[%fp]
	sub	%fp, 0x1c, %r3
	or	%r3, 0x3, %r3
	uld.b	0[%r3], %r3
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB139_2
	nop
	bt	.LBB139_1
	nop
.LBB139_1:
	or	%r0, 0x0, %r3
	st	%r3, -48[%fp]
	ld	-40[%fp], %r3
	ld	-28[%fp], %r9
	sub	%r9, 0x20, %r9
	sub	%r0, %r9, %r9
	sh	%r3, %r9, %r3
	sub	%fp, 0x30, %r9
	or	%r9, 0x4, %r9
	bt	.LBB139_5
	st	%r3, 0[%r9]
.LBB139_2:
	ld	-28[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB139_4
	nop
	bt	.LBB139_3
	nop
.LBB139_3:
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-24[%fp], %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB139_6
	st	%r3, -16[%fp]
.LBB139_4:
	ld	-40[%fp], %r3
	ld	-28[%fp], %r9
	sub	%r0, %r9, %r9
	sh	%r3, %r9, %r3
	st	%r3, -48[%fp]
	ld	-40[%fp], %r3
	ld	-28[%fp], %r12
	mov	0x20, %r9
	sub	%r9, %r12, %r9
	sh	%r3, %r9, %r3
	sub	%fp, 0x28, %r9
	or	%r9, 0x4, %r9
	ld	0[%r9], %r9
	sub	%r0, %r12, %r12
	sh	%r9, %r12, %r9
	or	%r3, %r9, %r3
	sub	%fp, 0x30, %r9
	or	%r9, 0x4, %r9
	bt	.LBB139_5
	st	%r3, 0[%r9]
.LBB139_5:
	sub	%fp, 0x30, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-48[%fp], %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB139_6
	st	%r3, -16[%fp]
.LBB139_6:
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-16[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end139:
	.size	__lshrdi3, .Lfunc_end139-__lshrdi3
                                        ! -- End function
	.globl	__muldsi3                       ! -- Begin function __muldsi3
	.p2align	2
	.type	__muldsi3,@function
__muldsi3:                              ! @__muldsi3
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x38, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	0x10, %r3
	st	%r3, -28[%fp]
	mov	0xffff, %r3
	st	%r3, -32[%fp]
	sub	%fp, 0xc, %r3
	or	%r3, 0x2, %r3
	st	%r3, -44[%fp]
	uld.h	0[%r3], %r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x2, %r3
	st	%r3, -52[%fp]
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__mulsi3
	uld.h	0[%r3], %r7
	ld	-52[%fp], %r3
	sub	%fp, 0x18, %r9
	or	%r9, 0x4, %r12
	st	%r12, -40[%fp]
	st	%rv, 0[%r12]
	uld.h	0[%r12], %r13
	st	%r13, -36[%fp]
	or	%r9, 0x6, %r9
	st	%r9, -48[%fp]
	uld.h	0[%r9], %r9
	st	%r9, 0[%r12]
	uld.h	-12[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__mulsi3
	uld.h	0[%r3], %r7
	ld	-48[%fp], %r9
	ld	-44[%fp], %r3
	ld	-40[%fp], %r12
	ld	-36[%fp], %r13
	add	%r13, %rv, %r13
	st	%r13, -36[%fp]
	ld	-36[%fp], %r13
	sh	%r13, 0x10, %r14
	ld	0[%r12], %r13
	add	%r13, %r14, %r13
	st	%r13, 0[%r12]
	uld.h	-36[%fp], %r13
	st	%r13, -24[%fp]
	uld.h	0[%r12], %r13
	st	%r13, -36[%fp]
	uld.h	0[%r9], %r9
	st	%r9, 0[%r12]
	uld.h	-16[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__mulsi3
	uld.h	0[%r3], %r7
	ld	-40[%fp], %r9
	ld	-36[%fp], %r3
	add	%r3, %rv, %r3
	st	%r3, -36[%fp]
	ld	-36[%fp], %r3
	sh	%r3, 0x10, %r12
	ld	0[%r9], %r3
	add	%r3, %r12, %r3
	st	%r3, 0[%r9]
	uld.h	-36[%fp], %r9
	ld	-24[%fp], %r3
	add	%r3, %r9, %r3
	st	%r3, -24[%fp]
	uld.h	-12[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__mulsi3
	uld.h	-16[%fp], %r7
	ld	-40[%fp], %r3
	ld	-24[%fp], %r9
	add	%r9, %rv, %r9
	st	%r9, -24[%fp]
	ld	0[%r3], %r9
	ld	-24[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end140:
	.size	__muldsi3, .Lfunc_end140-__muldsi3
                                        ! -- End function
	.globl	__muldi3_compiler_rt            ! -- Begin function __muldi3_compiler_rt
	.p2align	2
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   ! @__muldi3_compiler_rt
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x40, %sp
                                        ! kill: def $r3 killed $r19
                                        ! kill: def $r3 killed $r18
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r9
	st	%r7, 0[%r9]
	st	%r6, -16[%fp]
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r19, 0[%r3]
	st	%r18, -24[%fp]
	ld	0[%r9], %r13
	ld	-16[%fp], %r12
	sub	%fp, 0x20, %r9
	or	%r9, 0x4, %r9
	st	%r9, -60[%fp]
	st	%r13, 0[%r9]
	st	%r12, -32[%fp]
	ld	0[%r3], %r13
	ld	-24[%fp], %r12
	sub	%fp, 0x28, %r3
	or	%r3, 0x4, %r3
	st	%r3, -64[%fp]
	st	%r13, 0[%r3]
	st	%r12, -40[%fp]
	ld	0[%r9], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__muldsi3
	ld	0[%r3], %r7
	ld	-64[%fp], %r3
	sub	%fp, 0x30, %r12
	or	%r12, 0x4, %r12
	st	%r12, -56[%fp]
	st	%r9, 0[%r12]
	st	%rv, -48[%fp]
	ld	-32[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__mulsi3
	ld	0[%r3], %r7
	ld	-60[%fp], %r3
	st	%rv, -52[%fp]
	ld	0[%r3], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__mulsi3
	ld	-40[%fp], %r7
	ld	-56[%fp], %r3
	or	%rv, 0x0, %r9
	ld	-52[%fp], %rv
	add	%rv, %r9, %r12
	ld	-48[%fp], %r9
	add	%r9, %r12, %r9
	st	%r9, -48[%fp]
	ld	0[%r3], %r9
	ld	-48[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end141:
	.size	__muldi3_compiler_rt, .Lfunc_end141-__muldi3_compiler_rt
                                        ! -- End function
	.globl	__negdi2                        ! -- Begin function __negdi2
	.p2align	2
	.type	__negdi2,@function
__negdi2:                               ! @__negdi2
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	ld	0[%r3], %r13
	ld	-16[%fp], %r12
	or	%r0, 0x0, %r3
	sub	%r3, %r13, %r9
	sub.f	%r13, 0x0, %r0
	sne	%r13
	add	%r12, %r13, %r12
	sub	%r3, %r12, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end142:
	.size	__negdi2, .Lfunc_end142-__negdi2
                                        ! -- End function
	.globl	__paritydi2                     ! -- Begin function __paritydi2
	.p2align	2
	.type	__paritydi2,@function
__paritydi2:                            ! @__paritydi2
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	ld	0[%r3], %r12
	ld	-16[%fp], %r3
	sub	%fp, 0x18, %r9
	or	%r9, 0x4, %r9
	st	%r12, 0[%r9]
	st	%r3, -24[%fp]
	ld	-24[%fp], %r3
	ld	0[%r9], %r9
	xor	%r3, %r9, %r3
	st	%r3, -28[%fp]
	ld	-28[%fp], %r3
	sh	%r3, -0x10, %r9
	xor	%r3, %r9, %r3
	st	%r3, -28[%fp]
	ld	-28[%fp], %r3
	sh	%r3, -0x8, %r9
	xor	%r3, %r9, %r3
	st	%r3, -28[%fp]
	ld	-28[%fp], %r3
	sh	%r3, -0x4, %r9
	xor	%r3, %r9, %r3
	st	%r3, -28[%fp]
	ld	-28[%fp], %r3
	mov	0xf, %r9
	and	%r3, %r9, %r3
	sub	%r0, %r3, %r9
	mov	0x6996, %r3
	sh	%r3, %r9, %r3
	mov	0x1, %r9
	and	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end143:
	.size	__paritydi2, .Lfunc_end143-__paritydi2
                                        ! -- End function
	.globl	__paritysi2                     ! -- Begin function __paritysi2
	.p2align	2
	.type	__paritysi2,@function
__paritysi2:                            ! @__paritysi2
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	st	%r3, -16[%fp]
	ld	-16[%fp], %r3
	sh	%r3, -0x10, %r9
	xor	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-16[%fp], %r3
	sh	%r3, -0x8, %r9
	xor	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-16[%fp], %r3
	sh	%r3, -0x4, %r9
	xor	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-16[%fp], %r3
	mov	0xf, %r9
	and	%r3, %r9, %r3
	sub	%r0, %r3, %r9
	mov	0x6996, %r3
	sh	%r3, %r9, %r3
	mov	0x1, %r9
	and	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end144:
	.size	__paritysi2, .Lfunc_end144-__paritysi2
                                        ! -- End function
	.globl	__popcountdi2                   ! -- Begin function __popcountdi2
	.p2align	2
	.type	__popcountdi2,@function
__popcountdi2:                          ! @__popcountdi2
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	ld	0[%r3], %r12
	ld	-16[%fp], %r9
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r12, 0[%r3]
	st	%r9, -24[%fp]
	ld	0[%r3], %r12
	ld	-24[%fp], %r9
	sh	%r12, -0x1, %r13
	sh	%r9, -0x1, %r16
	mov	0x55550000, %r14
	or	%r14, 0x5555, %r14
	and	%r16, %r14, %r16
	and	%r13, %r14, %r13
	sub.f	%r12, %r13, %r0
	sult	%r14
	sub	%r9, %r16, %r9
	sub	%r9, %r14, %r9
	sub	%r12, %r13, %r12
	st	%r12, 0[%r3]
	st	%r9, -24[%fp]
	ld	0[%r3], %r12
	ld	-24[%fp], %r14
	sh	%r14, -0x2, %r9
	sh	%r12, -0x2, %r13
	mov	0x33330000, %r16
	or	%r16, 0x3333, %r16
	and	%r13, %r16, %r13
	and	%r9, %r16, %r9
	and	%r12, %r16, %r12
	and	%r14, %r16, %r14
	add	%r9, %r14, %r9
	add	%r13, %r12, %r12
	sub.f	%r12, %r13, %r0
	sult	%r13
	add	%r9, %r13, %r9
	st	%r12, 0[%r3]
	st	%r9, -24[%fp]
	ld	0[%r3], %r13
	ld	-24[%fp], %r9
	sh	%r9, 0x1c, %r14
	sh	%r13, -0x4, %r12
	or	%r12, %r14, %r12
	sh	%r9, -0x4, %r14
	add	%r9, %r14, %r9
	add	%r13, %r12, %r12
	sub.f	%r12, %r13, %r0
	sult	%r13
	add	%r9, %r13, %r9
	mov	0xf0f0000, %r13
	or	%r13, 0xf0f, %r13
	and	%r9, %r13, %r9
	and	%r12, %r13, %r12
	st	%r12, 0[%r3]
	st	%r9, -24[%fp]
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	add	%r3, %r9, %r3
	st	%r3, -28[%fp]
	ld	-28[%fp], %r3
	sh	%r3, -0x10, %r9
	add	%r3, %r9, %r3
	st	%r3, -28[%fp]
	ld	-28[%fp], %r3
	sh	%r3, -0x8, %r9
	add	%r3, %r9, %r3
	mov	0x7f, %r9
	and	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end145:
	.size	__popcountdi2, .Lfunc_end145-__popcountdi2
                                        ! -- End function
	.globl	__popcountsi2                   ! -- Begin function __popcountsi2
	.p2align	2
	.type	__popcountsi2,@function
__popcountsi2:                          ! @__popcountsi2
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	st	%r6, -12[%fp]
	ld	-12[%fp], %r3
	st	%r3, -16[%fp]
	ld	-16[%fp], %r3
	sh	%r3, -0x1, %r9
	mov	0x55550000, %r12
	or	%r12, 0x5555, %r12
	and	%r9, %r12, %r9
	sub	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-16[%fp], %r9
	sh	%r9, -0x2, %r3
	mov	0x33330000, %r12
	or	%r12, 0x3333, %r12
	and	%r3, %r12, %r3
	and	%r9, %r12, %r9
	add	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-16[%fp], %r3
	sh	%r3, -0x4, %r9
	add	%r3, %r9, %r3
	mov	0xf0f0000, %r9
	or	%r9, 0xf0f, %r9
	and	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-16[%fp], %r3
	sh	%r3, -0x10, %r9
	add	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-16[%fp], %r3
	sh	%r3, -0x8, %r9
	add	%r3, %r9, %r3
	mov	0x3f, %r9
	and	%r3, %r9, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end146:
	.size	__popcountsi2, .Lfunc_end146-__popcountsi2
                                        ! -- End function
	.globl	__powidf2                       ! -- Begin function __powidf2
	.p2align	2
	.type	__powidf2,@function
__powidf2:                              ! @__powidf2
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x30, %sp
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	st	%r18, -20[%fp]
	ld	-20[%fp], %r3
	sh	%r3, -0x1f, %r3
	st	%r3, -24[%fp]
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r9
	or	%r0, 0x0, %r3
	st	%r3, 0[%r9]
	mov	0x3ff00000, %r3
	bt	.LBB147_1
	st	%r3, -32[%fp]
.LBB147_1:                              ! =>This Inner Loop Header: Depth=1
	sub	%fp, 0x14, %r3
	or	%r3, 0x3, %r3
	uld.b	0[%r3], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB147_3
	nop
	bt	.LBB147_2
	nop
.LBB147_2:                              !   in Loop: Header=BB147_1 Depth=1
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r19
	ld	-16[%fp], %r18
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	st	%r3, -36[%fp]
	ld	0[%r3], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__muldf3
	ld	-32[%fp], %r6
	ld	-36[%fp], %r3
	st	%r9, 0[%r3]
	bt	.LBB147_3
	st	%rv, -32[%fp]
.LBB147_3:                              !   in Loop: Header=BB147_1 Depth=1
	ld	-20[%fp], %r3
	sh	%r3, -0x1f, %r9
	add	%r3, %r9, %r3
	sha	%r3, -0x1, %r3
	st	%r3, -20[%fp]
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB147_5
	nop
	bt	.LBB147_4
	nop
.LBB147_4:
	bt	.LBB147_6
	nop
.LBB147_5:                              !   in Loop: Header=BB147_1 Depth=1
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r3, -40[%fp]
	ld	0[%r3], %r19
	ld	-16[%fp], %r18
	or	%r18, 0x0, %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__muldf3
	or	%r19, 0x0, %r7
	ld	-40[%fp], %r3
	st	%r9, 0[%r3]
	bt	.LBB147_1
	st	%rv, -16[%fp]
.LBB147_6:
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB147_8
	nop
	bt	.LBB147_7
	nop
.LBB147_7:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r19
	ld	-32[%fp], %r18
	mov	0x3ff00000, %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__divdf3
	or	%r0, 0x0, %r7
	st	%rv, -48[%fp]
	bt	.LBB147_9
	st	%r9, -44[%fp]
.LBB147_8:
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-32[%fp], %r9
	st	%r9, -48[%fp]
	bt	.LBB147_9
	st	%r3, -44[%fp]
.LBB147_9:
	ld	-48[%fp], %rv
	ld	-44[%fp], %r9
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end147:
	.size	__powidf2, .Lfunc_end147-__powidf2
                                        ! -- End function
	.globl	__powisf2                       ! -- Begin function __powisf2
	.p2align	2
	.type	__powisf2,@function
__powisf2:                              ! @__powisf2
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x20, %sp
                                        ! kill: def $r3 killed $r6
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	ld	-16[%fp], %r3
	sh	%r3, -0x1f, %r3
	st	%r3, -20[%fp]
	mov	0x3f800000, %r3
	bt	.LBB148_1
	st	%r3, -24[%fp]
.LBB148_1:                              ! =>This Inner Loop Header: Depth=1
	sub	%fp, 0x10, %r3
	or	%r3, 0x3, %r3
	uld.b	0[%r3], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB148_3
	nop
	bt	.LBB148_2
	nop
.LBB148_2:                              !   in Loop: Header=BB148_1 Depth=1
	ld	-12[%fp], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__mulsf3
	ld	-24[%fp], %r6
	bt	.LBB148_3
	st	%rv, -24[%fp]
.LBB148_3:                              !   in Loop: Header=BB148_1 Depth=1
	ld	-16[%fp], %r3
	sh	%r3, -0x1f, %r9
	add	%r3, %r9, %r3
	sha	%r3, -0x1, %r3
	st	%r3, -16[%fp]
	ld	-16[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB148_5
	nop
	bt	.LBB148_4
	nop
.LBB148_4:
	bt	.LBB148_6
	nop
.LBB148_5:                              !   in Loop: Header=BB148_1 Depth=1
	ld	-12[%fp], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__mulsf3
	or	%r7, 0x0, %r6
	bt	.LBB148_1
	st	%rv, -12[%fp]
.LBB148_6:
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB148_8
	nop
	bt	.LBB148_7
	nop
.LBB148_7:
	ld	-24[%fp], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__divsf3
	mov	0x3f800000, %r6
	bt	.LBB148_9
	st	%rv, -28[%fp]
.LBB148_8:
	ld	-24[%fp], %r3
	bt	.LBB148_9
	st	%r3, -28[%fp]
.LBB148_9:
	ld	-28[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end148:
	.size	__powisf2, .Lfunc_end148-__powisf2
                                        ! -- End function
	.globl	__ucmpdi2                       ! -- Begin function __ucmpdi2
	.p2align	2
	.type	__ucmpdi2,@function
__ucmpdi2:                              ! @__ucmpdi2
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x30, %sp
                                        ! kill: def $r3 killed $r19
                                        ! kill: def $r3 killed $r18
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r9
	st	%r7, 0[%r9]
	st	%r6, -24[%fp]
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	st	%r19, 0[%r3]
	st	%r18, -32[%fp]
	ld	0[%r9], %r12
	ld	-24[%fp], %r9
	sub	%fp, 0x28, %r13
	or	%r13, 0x4, %r13
	st	%r12, 0[%r13]
	st	%r9, -40[%fp]
	ld	0[%r3], %r9
	ld	-32[%fp], %r3
	sub	%fp, 0x30, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	st	%r3, -48[%fp]
	ld	-40[%fp], %r3
	ld	-48[%fp], %r9
	sub.f	%r3, %r9, %r0
	buge	.LBB149_2
	nop
	bt	.LBB149_1
	nop
.LBB149_1:
	or	%r0, 0x0, %r3
	bt	.LBB149_9
	st	%r3, -12[%fp]
.LBB149_2:
	ld	-40[%fp], %r3
	ld	-48[%fp], %r9
	sub.f	%r3, %r9, %r0
	bule	.LBB149_4
	nop
	bt	.LBB149_3
	nop
.LBB149_3:
	mov	0x2, %r3
	bt	.LBB149_9
	st	%r3, -12[%fp]
.LBB149_4:
	sub	%fp, 0x28, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	sub	%fp, 0x30, %r9
	or	%r9, 0x4, %r9
	ld	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	buge	.LBB149_6
	nop
	bt	.LBB149_5
	nop
.LBB149_5:
	or	%r0, 0x0, %r3
	bt	.LBB149_9
	st	%r3, -12[%fp]
.LBB149_6:
	sub	%fp, 0x28, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	sub	%fp, 0x30, %r9
	or	%r9, 0x4, %r9
	ld	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	bule	.LBB149_8
	nop
	bt	.LBB149_7
	nop
.LBB149_7:
	mov	0x2, %r3
	bt	.LBB149_9
	st	%r3, -12[%fp]
.LBB149_8:
	mov	0x1, %r3
	bt	.LBB149_9
	st	%r3, -12[%fp]
.LBB149_9:
	ld	-12[%fp], %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end149:
	.size	__ucmpdi2, .Lfunc_end149-__ucmpdi2
                                        ! -- End function
	.globl	__aeabi_ulcmp                   ! -- Begin function __aeabi_ulcmp
	.p2align	2
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          ! @__aeabi_ulcmp
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x18, %sp
                                        ! kill: def $r3 killed $r19
                                        ! kill: def $r3 killed $r18
                                        ! kill: def $r3 killed $r7
                                        ! kill: def $r3 killed $r6
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r9
	st	%r7, 0[%r9]
	st	%r6, -16[%fp]
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r19, 0[%r3]
	st	%r18, -24[%fp]
	ld	0[%r9], %r7
	ld	-16[%fp], %r6
	ld	0[%r3], %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ucmpdi2
	ld	-24[%fp], %r18
	sub	%rv, 0x1, %rv
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end150:
	.size	__aeabi_ulcmp, .Lfunc_end150-__aeabi_ulcmp
                                        ! -- End function
	.type	l64a.s,@object                  ! @l64a.s
	.local	l64a.s
	.comm	l64a.s,7,4
	.type	digits,@object                  ! @digits
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
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
