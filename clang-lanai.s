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
	mov	hi(.L__profc_memmove), %r3
	or	%r3, lo(.L__profc_memmove), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memmove+4), %r12
	or	%r12, lo(.L__profc_memmove+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr), %r3
	or	%r3, lo(__llvm_gcov_ctr), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr+4), %r12
	or	%r12, lo(__llvm_gcov_ctr+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_memmove+8), %r3
	or	%r3, lo(.L__profc_memmove+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memmove+12), %r12
	or	%r12, lo(.L__profc_memmove+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_memmove+16), %r3
	or	%r3, lo(.L__profc_memmove+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memmove+20), %r12
	or	%r12, lo(.L__profc_memmove+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr+8), %r3
	or	%r3, lo(__llvm_gcov_ctr+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr+12), %r12
	or	%r12, lo(__llvm_gcov_ctr+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_memmove+24), %r3
	or	%r3, lo(.L__profc_memmove+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memmove+28), %r12
	or	%r12, lo(.L__profc_memmove+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB0_8
	st	%r3, 0[%r9]
.LBB0_8:                                ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB0_11
	nop
	bt	.LBB0_9
	nop
.LBB0_9:                                !   in Loop: Header=BB0_8 Depth=1
	mov	hi(__llvm_gcov_ctr+16), %r3
	or	%r3, lo(__llvm_gcov_ctr+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr+20), %r12
	or	%r12, lo(__llvm_gcov_ctr+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_memmove+32), %r3
	or	%r3, lo(.L__profc_memmove+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memmove+36), %r12
	or	%r12, lo(.L__profc_memmove+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr+24), %r3
	or	%r3, lo(__llvm_gcov_ctr+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr+28), %r12
	or	%r12, lo(__llvm_gcov_ctr+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB0_12
	st	%r3, 0[%r9]
.LBB0_12:
	mov	hi(__llvm_gcov_ctr+32), %r3
	or	%r3, lo(__llvm_gcov_ctr+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr+36), %r12
	or	%r12, lo(__llvm_gcov_ctr+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB0_13
	st	%r3, 0[%r9]
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
	sub	%sp, 0x30, %sp
	st	%r6, -16[%fp]
	st	%r7, -20[%fp]
	st	%r18, -24[%fp]
	st	%r19, -28[%fp]
	mov	hi(.L__profc_memccpy), %r3
	or	%r3, lo(.L__profc_memccpy), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memccpy+4), %r12
	or	%r12, lo(.L__profc_memccpy+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	beq	.LBB1_4
	st	%r3, -40[%fp]
	bt	.LBB1_2
	nop
.LBB1_2:                                !   in Loop: Header=BB1_1 Depth=1
	mov	hi(__llvm_gcov_ctr.1), %r3
	or	%r3, lo(__llvm_gcov_ctr.1), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.1+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.1+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_memccpy+16), %r3
	or	%r3, lo(.L__profc_memccpy+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memccpy+20), %r12
	or	%r12, lo(.L__profc_memccpy+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-36[%fp], %r3
	uld.b	0[%r3], %r9
	ld	-32[%fp], %r3
	st.b	%r9, 0[%r3]
	ld	-24[%fp], %r12
	sub.f	%r9, %r12, %r0
	sne	%r3
	st	%r3, -44[%fp]
	sub.f	%r9, %r12, %r0
	beq	.LBB1_4
	st	%r3, -40[%fp]
	bt	.LBB1_3
	nop
.LBB1_3:                                !   in Loop: Header=BB1_1 Depth=1
	ld	-44[%fp], %r3
	mov	hi(__llvm_gcov_ctr.1+8), %r9
	or	%r9, lo(__llvm_gcov_ctr.1+8), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.1+12), %r13
	or	%r13, lo(__llvm_gcov_ctr.1+12), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_memccpy+24), %r9
	or	%r9, lo(.L__profc_memccpy+24), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_memccpy+28), %r13
	or	%r13, lo(.L__profc_memccpy+28), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB1_4
	st	%r3, -40[%fp]
.LBB1_4:                                !   in Loop: Header=BB1_1 Depth=1
	ld	-40[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB1_7
	nop
	bt	.LBB1_5
	nop
.LBB1_5:                                !   in Loop: Header=BB1_1 Depth=1
	mov	hi(.L__profc_memccpy+8), %r3
	or	%r3, lo(.L__profc_memccpy+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memccpy+12), %r12
	or	%r12, lo(.L__profc_memccpy+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB1_6
	st	%r3, 0[%r9]
.LBB1_6:                                !   in Loop: Header=BB1_1 Depth=1
	mov	hi(__llvm_gcov_ctr.1+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.1+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.1+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.1+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
.LBB1_7:
	ld	-28[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB1_9
	nop
	bt	.LBB1_8
	nop
.LBB1_8:
	mov	hi(__llvm_gcov_ctr.1+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.1+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.1+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.1+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_memccpy+32), %r3
	or	%r3, lo(.L__profc_memccpy+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memccpy+36), %r12
	or	%r12, lo(.L__profc_memccpy+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-32[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB1_10
	st	%r3, -12[%fp]
.LBB1_9:
	mov	hi(__llvm_gcov_ctr.1+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.1+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.1+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.1+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	bt	.LBB1_10
	st	%r3, -12[%fp]
.LBB1_10:
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
	sub	%sp, 0x28, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	mov	hi(.L__profc_memchr), %r3
	or	%r3, lo(.L__profc_memchr), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memchr+4), %r12
	or	%r12, lo(.L__profc_memchr+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	beq	.LBB2_4
	st	%r3, -28[%fp]
	bt	.LBB2_2
	nop
.LBB2_2:                                !   in Loop: Header=BB2_1 Depth=1
	mov	hi(__llvm_gcov_ctr.2), %r3
	or	%r3, lo(__llvm_gcov_ctr.2), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.2+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.2+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_memchr+16), %r3
	or	%r3, lo(.L__profc_memchr+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memchr+20), %r12
	or	%r12, lo(.L__profc_memchr+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-24[%fp], %r3
	uld.b	0[%r3], %r9
	ld	-16[%fp], %r12
	sub.f	%r9, %r12, %r0
	sne	%r3
	st	%r3, -32[%fp]
	sub.f	%r9, %r12, %r0
	beq	.LBB2_4
	st	%r3, -28[%fp]
	bt	.LBB2_3
	nop
.LBB2_3:                                !   in Loop: Header=BB2_1 Depth=1
	ld	-32[%fp], %r3
	mov	hi(__llvm_gcov_ctr.2+8), %r9
	or	%r9, lo(__llvm_gcov_ctr.2+8), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.2+12), %r13
	or	%r13, lo(__llvm_gcov_ctr.2+12), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_memchr+24), %r9
	or	%r9, lo(.L__profc_memchr+24), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_memchr+28), %r13
	or	%r13, lo(.L__profc_memchr+28), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB2_4
	st	%r3, -28[%fp]
.LBB2_4:                                !   in Loop: Header=BB2_1 Depth=1
	ld	-28[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB2_7
	nop
	bt	.LBB2_5
	nop
.LBB2_5:                                !   in Loop: Header=BB2_1 Depth=1
	mov	hi(.L__profc_memchr+8), %r3
	or	%r3, lo(.L__profc_memchr+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memchr+12), %r12
	or	%r12, lo(.L__profc_memchr+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB2_6
	st	%r3, 0[%r9]
.LBB2_6:                                !   in Loop: Header=BB2_1 Depth=1
	mov	hi(__llvm_gcov_ctr.2+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.2+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.2+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.2+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-24[%fp], %r3
	add	%r3, 0x1, %r3
	st	%r3, -24[%fp]
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r3
	bt	.LBB2_1
	st	%r3, -20[%fp]
.LBB2_7:
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB2_9
	nop
	bt	.LBB2_8
	nop
.LBB2_8:
	mov	hi(__llvm_gcov_ctr.2+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.2+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.2+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.2+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_memchr+32), %r3
	or	%r3, lo(.L__profc_memchr+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memchr+36), %r12
	or	%r12, lo(.L__profc_memchr+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-24[%fp], %r3
	bt	.LBB2_10
	st	%r3, -36[%fp]
.LBB2_9:
	mov	hi(__llvm_gcov_ctr.2+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.2+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.2+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.2+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	bt	.LBB2_10
	st	%r3, -36[%fp]
.LBB2_10:
	ld	-36[%fp], %rv
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
	mov	hi(.L__profc_memcmp), %r3
	or	%r3, lo(.L__profc_memcmp), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memcmp+4), %r12
	or	%r12, lo(.L__profc_memcmp+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	st	%r3, -24[%fp]
	ld	-16[%fp], %r3
	bt	.LBB3_1
	st	%r3, -28[%fp]
.LBB3_1:                                ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB3_4
	st	%r3, -32[%fp]
	bt	.LBB3_2
	nop
.LBB3_2:                                !   in Loop: Header=BB3_1 Depth=1
	mov	hi(__llvm_gcov_ctr.3), %r3
	or	%r3, lo(__llvm_gcov_ctr.3), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.3+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.3+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_memcmp+16), %r3
	or	%r3, lo(.L__profc_memcmp+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memcmp+20), %r12
	or	%r12, lo(.L__profc_memcmp+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-24[%fp], %r3
	uld.b	0[%r3], %r9
	ld	-28[%fp], %r3
	uld.b	0[%r3], %r12
	sub.f	%r9, %r12, %r0
	seq	%r3
	st	%r3, -36[%fp]
	sub.f	%r9, %r12, %r0
	bne	.LBB3_4
	st	%r3, -32[%fp]
	bt	.LBB3_3
	nop
.LBB3_3:                                !   in Loop: Header=BB3_1 Depth=1
	ld	-36[%fp], %r3
	mov	hi(__llvm_gcov_ctr.3+8), %r9
	or	%r9, lo(__llvm_gcov_ctr.3+8), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.3+12), %r13
	or	%r13, lo(__llvm_gcov_ctr.3+12), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_memcmp+24), %r9
	or	%r9, lo(.L__profc_memcmp+24), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_memcmp+28), %r13
	or	%r13, lo(.L__profc_memcmp+28), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB3_4
	st	%r3, -32[%fp]
.LBB3_4:                                !   in Loop: Header=BB3_1 Depth=1
	ld	-32[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB3_7
	nop
	bt	.LBB3_5
	nop
.LBB3_5:                                !   in Loop: Header=BB3_1 Depth=1
	mov	hi(.L__profc_memcmp+8), %r3
	or	%r3, lo(.L__profc_memcmp+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memcmp+12), %r12
	or	%r12, lo(.L__profc_memcmp+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB3_6
	st	%r3, 0[%r9]
.LBB3_6:                                !   in Loop: Header=BB3_1 Depth=1
	mov	hi(__llvm_gcov_ctr.3+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.3+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.3+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.3+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
.LBB3_7:
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB3_9
	nop
	bt	.LBB3_8
	nop
.LBB3_8:
	mov	hi(__llvm_gcov_ctr.3+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.3+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.3+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.3+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_memcmp+32), %r3
	or	%r3, lo(.L__profc_memcmp+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memcmp+36), %r12
	or	%r12, lo(.L__profc_memcmp+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-24[%fp], %r3
	uld.b	0[%r3], %r3
	ld	-28[%fp], %r9
	uld.b	0[%r9], %r9
	sub	%r3, %r9, %r3
	bt	.LBB3_10
	st	%r3, -40[%fp]
.LBB3_9:
	mov	hi(__llvm_gcov_ctr.3+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.3+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.3+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.3+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	bt	.LBB3_10
	st	%r3, -40[%fp]
.LBB3_10:
	ld	-40[%fp], %rv
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
	mov	hi(__llvm_gcov_ctr.4), %r3
	or	%r3, lo(__llvm_gcov_ctr.4), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.4+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.4+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	mov	hi(.L__profc_memcpy), %r3
	or	%r3, lo(.L__profc_memcpy), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memcpy+4), %r12
	or	%r12, lo(.L__profc_memcpy+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_memcpy+8), %r3
	or	%r3, lo(.L__profc_memcpy+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memcpy+12), %r12
	or	%r12, lo(.L__profc_memcpy+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.4+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.4+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.4+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.4+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_memrchr), %r3
	or	%r3, lo(.L__profc_memrchr), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memrchr+4), %r12
	or	%r12, lo(.L__profc_memrchr+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_memrchr+8), %r3
	or	%r3, lo(.L__profc_memrchr+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memrchr+12), %r12
	or	%r12, lo(.L__profc_memrchr+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.5), %r3
	or	%r3, lo(__llvm_gcov_ctr.5), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.5+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.5+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_memrchr+16), %r3
	or	%r3, lo(.L__profc_memrchr+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memrchr+20), %r12
	or	%r12, lo(.L__profc_memrchr+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-28[%fp], %r3
	ld	-24[%fp], %r9
	add	%r3, %r9, %r3
	bt	.LBB5_6
	st	%r3, -12[%fp]
.LBB5_4:                                !   in Loop: Header=BB5_1 Depth=1
	mov	hi(__llvm_gcov_ctr.5+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.5+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.5+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.5+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB5_1
	st	%r3, 0[%r9]
.LBB5_5:
	mov	hi(__llvm_gcov_ctr.5+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.5+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.5+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.5+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.6), %r3
	or	%r3, lo(__llvm_gcov_ctr.6), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.6+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.6+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	mov	hi(.L__profc_memset), %r3
	or	%r3, lo(.L__profc_memset), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memset+4), %r12
	or	%r12, lo(.L__profc_memset+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_memset+8), %r3
	or	%r3, lo(.L__profc_memset+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memset+12), %r12
	or	%r12, lo(.L__profc_memset+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	ld	-24[%fp], %r9
	bt	.LBB6_3
	st.b	%r3, 0[%r9]
.LBB6_3:                                !   in Loop: Header=BB6_1 Depth=1
	mov	hi(__llvm_gcov_ctr.6+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.6+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.6+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.6+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.7), %r3
	or	%r3, lo(__llvm_gcov_ctr.7), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.7+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.7+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc_stpcpy), %r3
	or	%r3, lo(.L__profc_stpcpy), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_stpcpy+4), %r12
	or	%r12, lo(.L__profc_stpcpy+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB7_1
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_stpcpy+8), %r3
	or	%r3, lo(.L__profc_stpcpy+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_stpcpy+12), %r12
	or	%r12, lo(.L__profc_stpcpy+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB7_3
	st	%r3, 0[%r9]
.LBB7_3:                                !   in Loop: Header=BB7_1 Depth=1
	mov	hi(__llvm_gcov_ctr.7+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.7+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.7+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.7+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.8), %r3
	or	%r3, lo(__llvm_gcov_ctr.8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.8+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.8+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc_strchrnul), %r3
	or	%r3, lo(.L__profc_strchrnul), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strchrnul+4), %r12
	or	%r12, lo(.L__profc_strchrnul+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	beq	.LBB8_4
	st	%r3, -20[%fp]
	bt	.LBB8_2
	nop
.LBB8_2:                                !   in Loop: Header=BB8_1 Depth=1
	mov	hi(__llvm_gcov_ctr.8+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.8+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.8+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.8+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_strchrnul+16), %r3
	or	%r3, lo(.L__profc_strchrnul+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strchrnul+20), %r12
	or	%r12, lo(.L__profc_strchrnul+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	uld.b	0[%r3], %r9
	ld	-16[%fp], %r12
	sub.f	%r9, %r12, %r0
	sne	%r3
	st	%r3, -24[%fp]
	sub.f	%r9, %r12, %r0
	beq	.LBB8_4
	st	%r3, -20[%fp]
	bt	.LBB8_3
	nop
.LBB8_3:                                !   in Loop: Header=BB8_1 Depth=1
	ld	-24[%fp], %r3
	mov	hi(__llvm_gcov_ctr.8+16), %r9
	or	%r9, lo(__llvm_gcov_ctr.8+16), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.8+20), %r13
	or	%r13, lo(__llvm_gcov_ctr.8+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_strchrnul+24), %r9
	or	%r9, lo(.L__profc_strchrnul+24), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_strchrnul+28), %r13
	or	%r13, lo(.L__profc_strchrnul+28), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB8_4
	st	%r3, -20[%fp]
.LBB8_4:                                !   in Loop: Header=BB8_1 Depth=1
	ld	-20[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB8_7
	nop
	bt	.LBB8_5
	nop
.LBB8_5:                                !   in Loop: Header=BB8_1 Depth=1
	mov	hi(.L__profc_strchrnul+8), %r3
	or	%r3, lo(.L__profc_strchrnul+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strchrnul+12), %r12
	or	%r12, lo(.L__profc_strchrnul+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB8_6
	st	%r3, 0[%r9]
.LBB8_6:                                !   in Loop: Header=BB8_1 Depth=1
	mov	hi(__llvm_gcov_ctr.8+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.8+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.8+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.8+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB8_1
	st	%r3, -12[%fp]
.LBB8_7:
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
	st	%r7, -20[%fp]
	mov	hi(.L__profc_strchr), %r3
	or	%r3, lo(.L__profc_strchr), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strchr+4), %r12
	or	%r12, lo(.L__profc_strchr+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB9_2
	st	%r3, 0[%r9]
.LBB9_1:                                !   in Loop: Header=BB9_2 Depth=1
	mov	hi(__llvm_gcov_ctr.9+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.9+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.9+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.9+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_strchr+8), %r3
	or	%r3, lo(.L__profc_strchr+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strchr+12), %r12
	or	%r12, lo(.L__profc_strchr+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB9_2
	st	%r3, 0[%r9]
.LBB9_2:                                ! =>This Inner Loop Header: Depth=1
	ld	-16[%fp], %r3
	ld.b	0[%r3], %r3
	ld	-20[%fp], %r9
	sub.f	%r3, %r9, %r0
	bne	.LBB9_4
	nop
	bt	.LBB9_3
	nop
.LBB9_3:
	mov	hi(__llvm_gcov_ctr.9), %r3
	or	%r3, lo(__llvm_gcov_ctr.9), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.9+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.9+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_strchr+16), %r3
	or	%r3, lo(.L__profc_strchr+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strchr+20), %r12
	or	%r12, lo(.L__profc_strchr+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	bt	.LBB9_7
	st	%r3, -12[%fp]
.LBB9_4:                                !   in Loop: Header=BB9_2 Depth=1
	bt	.LBB9_5
	nop
.LBB9_5:                                !   in Loop: Header=BB9_2 Depth=1
	ld	-16[%fp], %r3
	add	%r3, 0x1, %r9
	st	%r9, -16[%fp]
	uld.b	0[%r3], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB9_1
	nop
	bt	.LBB9_6
	nop
.LBB9_6:
	mov	hi(__llvm_gcov_ctr.9+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.9+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.9+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.9+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	bt	.LBB9_7
	st	%r3, -12[%fp]
.LBB9_7:
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
	mov	hi(__llvm_gcov_ctr.10), %r3
	or	%r3, lo(__llvm_gcov_ctr.10), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.10+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.10+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc_strcmp), %r3
	or	%r3, lo(.L__profc_strcmp), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strcmp+4), %r12
	or	%r12, lo(.L__profc_strcmp+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB10_1
	st	%r3, 0[%r9]
.LBB10_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	ld.b	0[%r3], %r9
	ld	-16[%fp], %r3
	ld.b	0[%r3], %r12
	or	%r0, 0x0, %r3
	sub.f	%r9, %r12, %r0
	bne	.LBB10_4
	st	%r3, -20[%fp]
	bt	.LBB10_2
	nop
.LBB10_2:                               !   in Loop: Header=BB10_1 Depth=1
	mov	hi(__llvm_gcov_ctr.10+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.10+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.10+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.10+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_strcmp+16), %r3
	or	%r3, lo(.L__profc_strcmp+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strcmp+20), %r12
	or	%r12, lo(.L__profc_strcmp+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	ld.b	0[%r3], %r9
	sub.f	%r9, 0x0, %r0
	sne	%r3
	st	%r3, -24[%fp]
	sub.f	%r9, 0x0, %r0
	beq	.LBB10_4
	st	%r3, -20[%fp]
	bt	.LBB10_3
	nop
.LBB10_3:                               !   in Loop: Header=BB10_1 Depth=1
	ld	-24[%fp], %r3
	mov	hi(__llvm_gcov_ctr.10+16), %r9
	or	%r9, lo(__llvm_gcov_ctr.10+16), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.10+20), %r13
	or	%r13, lo(__llvm_gcov_ctr.10+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_strcmp+24), %r9
	or	%r9, lo(.L__profc_strcmp+24), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_strcmp+28), %r13
	or	%r13, lo(.L__profc_strcmp+28), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB10_4
	st	%r3, -20[%fp]
.LBB10_4:                               !   in Loop: Header=BB10_1 Depth=1
	ld	-20[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB10_7
	nop
	bt	.LBB10_5
	nop
.LBB10_5:                               !   in Loop: Header=BB10_1 Depth=1
	mov	hi(.L__profc_strcmp+8), %r3
	or	%r3, lo(.L__profc_strcmp+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strcmp+12), %r12
	or	%r12, lo(.L__profc_strcmp+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB10_6
	st	%r3, 0[%r9]
.LBB10_6:                               !   in Loop: Header=BB10_1 Depth=1
	mov	hi(__llvm_gcov_ctr.10+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.10+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.10+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.10+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	add	%r3, 0x1, %r3
	st	%r3, -12[%fp]
	ld	-16[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB10_1
	st	%r3, -16[%fp]
.LBB10_7:
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
	mov	hi(__llvm_gcov_ctr.11), %r3
	or	%r3, lo(__llvm_gcov_ctr.11), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.11+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.11+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_strlen), %r3
	or	%r3, lo(.L__profc_strlen), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strlen+4), %r12
	or	%r12, lo(.L__profc_strlen+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_strlen+8), %r3
	or	%r3, lo(.L__profc_strlen+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strlen+12), %r12
	or	%r12, lo(.L__profc_strlen+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB11_3
	st	%r3, 0[%r9]
.LBB11_3:                               !   in Loop: Header=BB11_1 Depth=1
	mov	hi(__llvm_gcov_ctr.11+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.11+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.11+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.11+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_strncmp), %r3
	or	%r3, lo(.L__profc_strncmp), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strncmp+4), %r12
	or	%r12, lo(.L__profc_strncmp+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.12+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.12+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.12+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.12+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_strncmp+8), %r3
	or	%r3, lo(.L__profc_strncmp+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strncmp+12), %r12
	or	%r12, lo(.L__profc_strncmp+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	bt	.LBB12_14
	st	%r3, -12[%fp]
.LBB12_2:
	mov	hi(__llvm_gcov_ctr.12), %r3
	or	%r3, lo(__llvm_gcov_ctr.12), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.12+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.12+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB12_3
	st	%r3, 0[%r9]
.LBB12_3:                               ! =>This Inner Loop Header: Depth=1
	ld	-28[%fp], %r3
	uld.b	0[%r3], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB12_10
	st	%r3, -36[%fp]
	bt	.LBB12_4
	nop
.LBB12_4:                               !   in Loop: Header=BB12_3 Depth=1
	mov	hi(__llvm_gcov_ctr.12+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.12+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.12+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.12+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_strncmp+56), %r3
	or	%r3, lo(.L__profc_strncmp+56), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strncmp+60), %r12
	or	%r12, lo(.L__profc_strncmp+60), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-32[%fp], %r3
	uld.b	0[%r3], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB12_10
	st	%r3, -36[%fp]
	bt	.LBB12_5
	nop
.LBB12_5:                               !   in Loop: Header=BB12_3 Depth=1
	mov	hi(__llvm_gcov_ctr.12+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.12+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.12+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.12+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_strncmp+64), %r3
	or	%r3, lo(.L__profc_strncmp+64), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strncmp+68), %r12
	or	%r12, lo(.L__profc_strncmp+68), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB12_6
	st	%r3, 0[%r9]
.LBB12_6:                               !   in Loop: Header=BB12_3 Depth=1
	mov	hi(.L__profc_strncmp+40), %r3
	or	%r3, lo(.L__profc_strncmp+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strncmp+44), %r12
	or	%r12, lo(.L__profc_strncmp+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-24[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB12_10
	st	%r3, -36[%fp]
	bt	.LBB12_7
	nop
.LBB12_7:                               !   in Loop: Header=BB12_3 Depth=1
	mov	hi(__llvm_gcov_ctr.12+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.12+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.12+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.12+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_strncmp+48), %r3
	or	%r3, lo(.L__profc_strncmp+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strncmp+52), %r12
	or	%r12, lo(.L__profc_strncmp+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB12_8
	st	%r3, 0[%r9]
.LBB12_8:                               !   in Loop: Header=BB12_3 Depth=1
	mov	hi(.L__profc_strncmp+24), %r3
	or	%r3, lo(.L__profc_strncmp+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strncmp+28), %r12
	or	%r12, lo(.L__profc_strncmp+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-28[%fp], %r3
	uld.b	0[%r3], %r9
	ld	-32[%fp], %r3
	uld.b	0[%r3], %r12
	sub.f	%r9, %r12, %r0
	seq	%r3
	st	%r3, -40[%fp]
	sub.f	%r9, %r12, %r0
	bne	.LBB12_10
	st	%r3, -36[%fp]
	bt	.LBB12_9
	nop
.LBB12_9:                               !   in Loop: Header=BB12_3 Depth=1
	ld	-40[%fp], %r3
	mov	hi(__llvm_gcov_ctr.12+40), %r9
	or	%r9, lo(__llvm_gcov_ctr.12+40), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.12+44), %r13
	or	%r13, lo(__llvm_gcov_ctr.12+44), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_strncmp+32), %r9
	or	%r9, lo(.L__profc_strncmp+32), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_strncmp+36), %r13
	or	%r13, lo(.L__profc_strncmp+36), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB12_10
	st	%r3, -36[%fp]
.LBB12_10:                              !   in Loop: Header=BB12_3 Depth=1
	ld	-36[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB12_13
	nop
	bt	.LBB12_11
	nop
.LBB12_11:                              !   in Loop: Header=BB12_3 Depth=1
	mov	hi(.L__profc_strncmp+16), %r3
	or	%r3, lo(.L__profc_strncmp+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strncmp+20), %r12
	or	%r12, lo(.L__profc_strncmp+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB12_12
	st	%r3, 0[%r9]
.LBB12_12:                              !   in Loop: Header=BB12_3 Depth=1
	mov	hi(__llvm_gcov_ctr.12+48), %r3
	or	%r3, lo(__llvm_gcov_ctr.12+48), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.12+52), %r12
	or	%r12, lo(__llvm_gcov_ctr.12+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
.LBB12_13:
	ld	-28[%fp], %r3
	uld.b	0[%r3], %r3
	ld	-32[%fp], %r9
	uld.b	0[%r9], %r9
	sub	%r3, %r9, %r3
	bt	.LBB12_14
	st	%r3, -12[%fp]
.LBB12_14:
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
	mov	hi(__llvm_gcov_ctr.13), %r3
	or	%r3, lo(__llvm_gcov_ctr.13), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.13+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.13+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	mov	hi(.L__profc_swab), %r3
	or	%r3, lo(.L__profc_swab), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_swab+4), %r12
	or	%r12, lo(.L__profc_swab+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_swab+8), %r3
	or	%r3, lo(.L__profc_swab+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_swab+12), %r12
	or	%r12, lo(.L__profc_swab+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.13+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.13+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.13+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.13+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.14), %r3
	or	%r3, lo(__llvm_gcov_ctr.14), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.14+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.14+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_isalpha), %r3
	or	%r3, lo(.L__profc_isalpha), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_isalpha+4), %r12
	or	%r12, lo(.L__profc_isalpha+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.15), %r3
	or	%r3, lo(__llvm_gcov_ctr.15), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.15+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.15+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_isascii), %r3
	or	%r3, lo(.L__profc_isascii), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_isascii+4), %r12
	or	%r12, lo(.L__profc_isascii+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	sub	%sp, 0x18, %sp
	mov	hi(__llvm_gcov_ctr.16), %r3
	or	%r3, lo(__llvm_gcov_ctr.16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.16+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.16+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_isblank), %r3
	or	%r3, lo(.L__profc_isblank), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_isblank+4), %r12
	or	%r12, lo(.L__profc_isblank+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r9
	mov	0x1, %r3
	sub.f	%r9, 0x20, %r0
	beq	.LBB16_3
	st	%r3, -16[%fp]
	bt	.LBB16_1
	nop
.LBB16_1:
	mov	hi(__llvm_gcov_ctr.16+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.16+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.16+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.16+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_isblank+8), %r3
	or	%r3, lo(.L__profc_isblank+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_isblank+12), %r12
	or	%r12, lo(.L__profc_isblank+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r9
	sub.f	%r9, 0x9, %r0
	seq	%r3
	st	%r3, -20[%fp]
	sub.f	%r9, 0x9, %r0
	beq	.LBB16_3
	st	%r3, -16[%fp]
	bt	.LBB16_2
	nop
.LBB16_2:
	ld	-20[%fp], %r3
	mov	hi(__llvm_gcov_ctr.16+16), %r9
	or	%r9, lo(__llvm_gcov_ctr.16+16), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.16+20), %r13
	or	%r13, lo(__llvm_gcov_ctr.16+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_isblank+16), %r9
	or	%r9, lo(.L__profc_isblank+16), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_isblank+20), %r13
	or	%r13, lo(.L__profc_isblank+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB16_3
	st	%r3, -16[%fp]
.LBB16_3:
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
	sub	%sp, 0x18, %sp
	mov	hi(__llvm_gcov_ctr.17), %r3
	or	%r3, lo(__llvm_gcov_ctr.17), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.17+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.17+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_iscntrl), %r3
	or	%r3, lo(.L__profc_iscntrl), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iscntrl+4), %r12
	or	%r12, lo(.L__profc_iscntrl+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r9
	mov	0x1, %r3
	sub.f	%r9, 0x20, %r0
	bult	.LBB17_3
	st	%r3, -16[%fp]
	bt	.LBB17_1
	nop
.LBB17_1:
	mov	hi(__llvm_gcov_ctr.17+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.17+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.17+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.17+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_iscntrl+8), %r3
	or	%r3, lo(.L__profc_iscntrl+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iscntrl+12), %r12
	or	%r12, lo(.L__profc_iscntrl+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r9
	sub.f	%r9, 0x7f, %r0
	seq	%r3
	st	%r3, -20[%fp]
	sub.f	%r9, 0x7f, %r0
	beq	.LBB17_3
	st	%r3, -16[%fp]
	bt	.LBB17_2
	nop
.LBB17_2:
	ld	-20[%fp], %r3
	mov	hi(__llvm_gcov_ctr.17+16), %r9
	or	%r9, lo(__llvm_gcov_ctr.17+16), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.17+20), %r13
	or	%r13, lo(__llvm_gcov_ctr.17+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_iscntrl+16), %r9
	or	%r9, lo(.L__profc_iscntrl+16), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_iscntrl+20), %r13
	or	%r13, lo(.L__profc_iscntrl+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB17_3
	st	%r3, -16[%fp]
.LBB17_3:
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
	mov	hi(__llvm_gcov_ctr.18), %r3
	or	%r3, lo(__llvm_gcov_ctr.18), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.18+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.18+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_isdigit), %r3
	or	%r3, lo(.L__profc_isdigit), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_isdigit+4), %r12
	or	%r12, lo(.L__profc_isdigit+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.19), %r3
	or	%r3, lo(__llvm_gcov_ctr.19), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.19+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.19+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_isgraph), %r3
	or	%r3, lo(.L__profc_isgraph), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_isgraph+4), %r12
	or	%r12, lo(.L__profc_isgraph+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.20), %r3
	or	%r3, lo(__llvm_gcov_ctr.20), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.20+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.20+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_islower), %r3
	or	%r3, lo(.L__profc_islower), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_islower+4), %r12
	or	%r12, lo(.L__profc_islower+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.21), %r3
	or	%r3, lo(__llvm_gcov_ctr.21), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.21+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.21+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_isprint), %r3
	or	%r3, lo(.L__profc_isprint), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_isprint+4), %r12
	or	%r12, lo(.L__profc_isprint+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	sub	%sp, 0x18, %sp
	mov	hi(__llvm_gcov_ctr.22), %r3
	or	%r3, lo(__llvm_gcov_ctr.22), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.22+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.22+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_isspace), %r3
	or	%r3, lo(.L__profc_isspace), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_isspace+4), %r12
	or	%r12, lo(.L__profc_isspace+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r9
	mov	0x1, %r3
	sub.f	%r9, 0x20, %r0
	beq	.LBB22_3
	st	%r3, -16[%fp]
	bt	.LBB22_1
	nop
.LBB22_1:
	mov	hi(__llvm_gcov_ctr.22+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.22+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.22+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.22+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_isspace+8), %r3
	or	%r3, lo(.L__profc_isspace+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_isspace+12), %r12
	or	%r12, lo(.L__profc_isspace+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	sub	%r3, 0x9, %r9
	sub.f	%r9, 0x5, %r0
	sult	%r3
	st	%r3, -20[%fp]
	sub.f	%r9, 0x5, %r0
	bult	.LBB22_3
	st	%r3, -16[%fp]
	bt	.LBB22_2
	nop
.LBB22_2:
	ld	-20[%fp], %r3
	mov	hi(__llvm_gcov_ctr.22+16), %r9
	or	%r9, lo(__llvm_gcov_ctr.22+16), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.22+20), %r13
	or	%r13, lo(__llvm_gcov_ctr.22+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_isspace+16), %r9
	or	%r9, lo(.L__profc_isspace+16), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_isspace+20), %r13
	or	%r13, lo(.L__profc_isspace+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB22_3
	st	%r3, -16[%fp]
.LBB22_3:
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
	mov	hi(__llvm_gcov_ctr.23), %r3
	or	%r3, lo(__llvm_gcov_ctr.23), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.23+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.23+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_isupper), %r3
	or	%r3, lo(.L__profc_isupper), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_isupper+4), %r12
	or	%r12, lo(.L__profc_isupper+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	sub	%sp, 0x18, %sp
	mov	hi(__llvm_gcov_ctr.24), %r3
	or	%r3, lo(__llvm_gcov_ctr.24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.24+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.24+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_iswcntrl), %r3
	or	%r3, lo(.L__profc_iswcntrl), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iswcntrl+4), %r12
	or	%r12, lo(.L__profc_iswcntrl+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r9
	mov	0x1, %r3
	sub.f	%r9, 0x20, %r0
	bult	.LBB24_7
	st	%r3, -16[%fp]
	bt	.LBB24_1
	nop
.LBB24_1:
	mov	hi(__llvm_gcov_ctr.24+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.24+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.24+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.24+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_iswcntrl+40), %r3
	or	%r3, lo(.L__profc_iswcntrl+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iswcntrl+44), %r12
	or	%r12, lo(.L__profc_iswcntrl+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	sub	%r3, 0x7f, %r9
	mov	0x1, %r3
	sub.f	%r9, 0x21, %r0
	bult	.LBB24_7
	st	%r3, -16[%fp]
	bt	.LBB24_2
	nop
.LBB24_2:
	mov	hi(__llvm_gcov_ctr.24+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.24+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.24+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.24+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_iswcntrl+48), %r3
	or	%r3, lo(.L__profc_iswcntrl+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iswcntrl+52), %r12
	or	%r12, lo(.L__profc_iswcntrl+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB24_3
	st	%r3, 0[%r9]
.LBB24_3:
	mov	hi(.L__profc_iswcntrl+24), %r3
	or	%r3, lo(.L__profc_iswcntrl+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iswcntrl+28), %r12
	or	%r12, lo(.L__profc_iswcntrl+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	sub	%r3, 0x2028, %r9
	mov	0x1, %r3
	sub.f	%r9, 0x2, %r0
	bult	.LBB24_7
	st	%r3, -16[%fp]
	bt	.LBB24_4
	nop
.LBB24_4:
	mov	hi(__llvm_gcov_ctr.24+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.24+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.24+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.24+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_iswcntrl+32), %r3
	or	%r3, lo(.L__profc_iswcntrl+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iswcntrl+36), %r12
	or	%r12, lo(.L__profc_iswcntrl+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB24_5
	st	%r3, 0[%r9]
.LBB24_5:
	mov	hi(.L__profc_iswcntrl+8), %r3
	or	%r3, lo(.L__profc_iswcntrl+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iswcntrl+12), %r12
	or	%r12, lo(.L__profc_iswcntrl+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	mov	0xffff0007, %r9
	add	%r3, %r9, %r9
	sub.f	%r9, 0x3, %r0
	sult	%r3
	st	%r3, -20[%fp]
	sub.f	%r9, 0x3, %r0
	bult	.LBB24_7
	st	%r3, -16[%fp]
	bt	.LBB24_6
	nop
.LBB24_6:
	ld	-20[%fp], %r3
	mov	hi(__llvm_gcov_ctr.24+32), %r9
	or	%r9, lo(__llvm_gcov_ctr.24+32), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.24+36), %r13
	or	%r13, lo(__llvm_gcov_ctr.24+36), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_iswcntrl+16), %r9
	or	%r9, lo(.L__profc_iswcntrl+16), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_iswcntrl+20), %r13
	or	%r13, lo(.L__profc_iswcntrl+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB24_7
	st	%r3, -16[%fp]
.LBB24_7:
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
	mov	hi(__llvm_gcov_ctr.25), %r3
	or	%r3, lo(__llvm_gcov_ctr.25), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.25+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.25+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_iswdigit), %r3
	or	%r3, lo(.L__profc_iswdigit), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iswdigit+4), %r12
	or	%r12, lo(.L__profc_iswdigit+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_iswprint), %r3
	or	%r3, lo(.L__profc_iswprint), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iswprint+4), %r12
	or	%r12, lo(.L__profc_iswprint+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	sub.f	%r3, 0xfe, %r0
	bugt	.LBB26_2
	sub	%sp, 0x10, %sp
	bt	.LBB26_1
	nop
.LBB26_1:
	mov	hi(__llvm_gcov_ctr.26), %r3
	or	%r3, lo(__llvm_gcov_ctr.26), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.26+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.26+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_iswprint+8), %r3
	or	%r3, lo(.L__profc_iswprint+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iswprint+12), %r12
	or	%r12, lo(.L__profc_iswprint+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	add	%r3, 0x1, %r3
	mov	0x7f, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x20, %r0
	sgt	%r3
	bt	.LBB26_13
	st	%r3, -12[%fp]
.LBB26_2:
	ld	-16[%fp], %r3
	sub.f	%r3, 0x2028, %r0
	bult	.LBB26_7
	nop
	bt	.LBB26_3
	nop
.LBB26_3:
	mov	hi(__llvm_gcov_ctr.26+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.26+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.26+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.26+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_iswprint+40), %r3
	or	%r3, lo(.L__profc_iswprint+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iswprint+44), %r12
	or	%r12, lo(.L__profc_iswprint+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	sub	%r3, 0x202a, %r3
	sub.f	%r3, 0xb7d6, %r0
	bult	.LBB26_7
	nop
	bt	.LBB26_4
	nop
.LBB26_4:
	mov	hi(__llvm_gcov_ctr.26+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.26+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.26+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.26+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_iswprint+48), %r3
	or	%r3, lo(.L__profc_iswprint+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iswprint+52), %r12
	or	%r12, lo(.L__profc_iswprint+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB26_5
	st	%r3, 0[%r9]
.LBB26_5:
	mov	hi(.L__profc_iswprint+24), %r3
	or	%r3, lo(.L__profc_iswprint+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iswprint+28), %r12
	or	%r12, lo(.L__profc_iswprint+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	mov	0xffff2000, %r9
	add	%r3, %r9, %r3
	sub.f	%r3, 0x1ff9, %r0
	bult	.LBB26_7
	nop
	bt	.LBB26_6
	nop
.LBB26_6:
	mov	hi(.L__profc_iswprint+32), %r3
	or	%r3, lo(.L__profc_iswprint+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iswprint+36), %r12
	or	%r12, lo(.L__profc_iswprint+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB26_8
	st	%r3, 0[%r9]
.LBB26_7:
	mov	hi(__llvm_gcov_ctr.26+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.26+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.26+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.26+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_iswprint+16), %r3
	or	%r3, lo(.L__profc_iswprint+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iswprint+20), %r12
	or	%r12, lo(.L__profc_iswprint+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	0x1, %r3
	bt	.LBB26_13
	st	%r3, -12[%fp]
.LBB26_8:
	ld	-16[%fp], %r3
	mov	0xffff0004, %r9
	add	%r3, %r9, %r3
	mov	0x100003, %r9
	sub.f	%r3, %r9, %r0
	bugt	.LBB26_11
	nop
	bt	.LBB26_9
	nop
.LBB26_9:
	mov	hi(__llvm_gcov_ctr.26+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.26+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.26+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.26+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_iswprint+64), %r3
	or	%r3, lo(.L__profc_iswprint+64), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iswprint+68), %r12
	or	%r12, lo(.L__profc_iswprint+68), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	mov	0xfffe, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0xfffe, %r0
	beq	.LBB26_11
	nop
	bt	.LBB26_10
	nop
.LBB26_10:
	mov	hi(.L__profc_iswprint+72), %r3
	or	%r3, lo(.L__profc_iswprint+72), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iswprint+76), %r12
	or	%r12, lo(.L__profc_iswprint+76), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB26_12
	st	%r3, 0[%r9]
.LBB26_11:
	mov	hi(__llvm_gcov_ctr.26+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.26+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.26+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.26+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_iswprint+56), %r3
	or	%r3, lo(.L__profc_iswprint+56), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iswprint+60), %r12
	or	%r12, lo(.L__profc_iswprint+60), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	bt	.LBB26_13
	st	%r3, -12[%fp]
.LBB26_12:
	mov	hi(__llvm_gcov_ctr.26+48), %r3
	or	%r3, lo(__llvm_gcov_ctr.26+48), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.26+52), %r12
	or	%r12, lo(__llvm_gcov_ctr.26+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	0x1, %r3
	bt	.LBB26_13
	st	%r3, -12[%fp]
.LBB26_13:
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
	sub	%sp, 0x18, %sp
	mov	hi(__llvm_gcov_ctr.27), %r3
	or	%r3, lo(__llvm_gcov_ctr.27), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.27+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.27+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_iswxdigit), %r3
	or	%r3, lo(.L__profc_iswxdigit), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iswxdigit+4), %r12
	or	%r12, lo(.L__profc_iswxdigit+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	sub	%r3, 0x30, %r9
	mov	0x1, %r3
	sub.f	%r9, 0xa, %r0
	bult	.LBB27_3
	st	%r3, -16[%fp]
	bt	.LBB27_1
	nop
.LBB27_1:
	mov	hi(__llvm_gcov_ctr.27+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.27+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.27+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.27+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_iswxdigit+8), %r3
	or	%r3, lo(.L__profc_iswxdigit+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_iswxdigit+12), %r12
	or	%r12, lo(.L__profc_iswxdigit+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	or	%r3, 0x20, %r3
	sub	%r3, 0x61, %r9
	sub.f	%r9, 0x6, %r0
	sult	%r3
	st	%r3, -20[%fp]
	sub.f	%r9, 0x6, %r0
	bult	.LBB27_3
	st	%r3, -16[%fp]
	bt	.LBB27_2
	nop
.LBB27_2:
	ld	-20[%fp], %r3
	mov	hi(__llvm_gcov_ctr.27+16), %r9
	or	%r9, lo(__llvm_gcov_ctr.27+16), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.27+20), %r13
	or	%r13, lo(__llvm_gcov_ctr.27+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_iswxdigit+16), %r9
	or	%r9, lo(.L__profc_iswxdigit+16), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_iswxdigit+20), %r13
	or	%r13, lo(.L__profc_iswxdigit+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB27_3
	st	%r3, -16[%fp]
.LBB27_3:
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
	mov	hi(__llvm_gcov_ctr.28), %r3
	or	%r3, lo(__llvm_gcov_ctr.28), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.28+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.28+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_toascii), %r3
	or	%r3, lo(.L__profc_toascii), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_toascii+4), %r12
	or	%r12, lo(.L__profc_toascii+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_fdim), %r9
	or	%r9, lo(.L__profc_fdim), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_fdim+4), %r13
	or	%r13, lo(.L__profc_fdim+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(__llvm_gcov_ctr.29), %r3
	or	%r3, lo(__llvm_gcov_ctr.29), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.29+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.29+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fdim+8), %r3
	or	%r3, lo(.L__profc_fdim+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fdim+12), %r12
	or	%r12, lo(.L__profc_fdim+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.29+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.29+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.29+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.29+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fdim+16), %r3
	or	%r3, lo(.L__profc_fdim+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fdim+20), %r12
	or	%r12, lo(.L__profc_fdim+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.29+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.29+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.29+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.29+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fdim+24), %r3
	or	%r3, lo(.L__profc_fdim+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fdim+28), %r12
	or	%r12, lo(.L__profc_fdim+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.29+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.29+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.29+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.29+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_fdimf), %r3
	or	%r3, lo(.L__profc_fdimf), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fdimf+4), %r12
	or	%r12, lo(.L__profc_fdimf+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.30), %r3
	or	%r3, lo(__llvm_gcov_ctr.30), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.30+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.30+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fdimf+8), %r3
	or	%r3, lo(.L__profc_fdimf+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fdimf+12), %r12
	or	%r12, lo(.L__profc_fdimf+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.30+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.30+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.30+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.30+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fdimf+16), %r3
	or	%r3, lo(.L__profc_fdimf+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fdimf+20), %r12
	or	%r12, lo(.L__profc_fdimf+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.30+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.30+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.30+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.30+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fdimf+24), %r3
	or	%r3, lo(.L__profc_fdimf+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fdimf+28), %r12
	or	%r12, lo(.L__profc_fdimf+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__subsf3
	ld	-20[%fp], %r7
	or	%rv, 0x0, %r3
	bt	.LBB30_7
	st	%r3, -24[%fp]
.LBB30_6:
	mov	hi(__llvm_gcov_ctr.30+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.30+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.30+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.30+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_fmax), %r9
	or	%r9, lo(.L__profc_fmax), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_fmax+4), %r13
	or	%r13, lo(.L__profc_fmax+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(__llvm_gcov_ctr.31), %r3
	or	%r3, lo(__llvm_gcov_ctr.31), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.31+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.31+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fmax+8), %r3
	or	%r3, lo(.L__profc_fmax+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmax+12), %r12
	or	%r12, lo(.L__profc_fmax+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.31+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.31+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.31+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.31+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fmax+16), %r3
	or	%r3, lo(.L__profc_fmax+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmax+20), %r12
	or	%r12, lo(.L__profc_fmax+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_fmax+24), %r3
	or	%r3, lo(.L__profc_fmax+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmax+28), %r12
	or	%r12, lo(.L__profc_fmax+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB31_7
	nop
	bt	.LBB31_6
	nop
.LBB31_6:
	mov	hi(__llvm_gcov_ctr.31+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.31+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.31+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.31+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fmax+32), %r3
	or	%r3, lo(.L__profc_fmax+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmax+36), %r12
	or	%r12, lo(.L__profc_fmax+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-32[%fp], %r9
	st	%r9, -40[%fp]
	bt	.LBB31_8
	st	%r3, -36[%fp]
.LBB31_7:
	mov	hi(__llvm_gcov_ctr.31+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.31+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.31+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.31+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.31+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.31+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.31+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.31+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fmax+40), %r3
	or	%r3, lo(.L__profc_fmax+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmax+44), %r12
	or	%r12, lo(.L__profc_fmax+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-32[%fp], %r9
	st	%r9, -48[%fp]
	bt	.LBB31_12
	st	%r3, -44[%fp]
.LBB31_11:
	mov	hi(__llvm_gcov_ctr.31+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.31+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.31+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.31+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_fmaxf), %r3
	or	%r3, lo(.L__profc_fmaxf), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmaxf+4), %r12
	or	%r12, lo(.L__profc_fmaxf+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.32), %r3
	or	%r3, lo(__llvm_gcov_ctr.32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.32+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.32+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fmaxf+8), %r3
	or	%r3, lo(.L__profc_fmaxf+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmaxf+12), %r12
	or	%r12, lo(.L__profc_fmaxf+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.32+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.32+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.32+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.32+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fmaxf+16), %r3
	or	%r3, lo(.L__profc_fmaxf+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmaxf+20), %r12
	or	%r12, lo(.L__profc_fmaxf+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_fmaxf+24), %r3
	or	%r3, lo(.L__profc_fmaxf+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmaxf+28), %r12
	or	%r12, lo(.L__profc_fmaxf+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB32_7
	nop
	bt	.LBB32_6
	nop
.LBB32_6:
	mov	hi(__llvm_gcov_ctr.32+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.32+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.32+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.32+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fmaxf+32), %r3
	or	%r3, lo(.L__profc_fmaxf+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmaxf+36), %r12
	or	%r12, lo(.L__profc_fmaxf+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r3
	bt	.LBB32_8
	st	%r3, -24[%fp]
.LBB32_7:
	mov	hi(__llvm_gcov_ctr.32+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.32+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.32+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.32+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.32+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.32+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.32+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.32+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fmaxf+40), %r3
	or	%r3, lo(.L__profc_fmaxf+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmaxf+44), %r12
	or	%r12, lo(.L__profc_fmaxf+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r3
	bt	.LBB32_12
	st	%r3, -28[%fp]
.LBB32_11:
	mov	hi(__llvm_gcov_ctr.32+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.32+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.32+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.32+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_fmaxl), %r9
	or	%r9, lo(.L__profc_fmaxl), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_fmaxl+4), %r13
	or	%r13, lo(.L__profc_fmaxl+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(__llvm_gcov_ctr.33), %r3
	or	%r3, lo(__llvm_gcov_ctr.33), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.33+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.33+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fmaxl+8), %r3
	or	%r3, lo(.L__profc_fmaxl+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmaxl+12), %r12
	or	%r12, lo(.L__profc_fmaxl+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.33+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.33+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.33+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.33+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fmaxl+16), %r3
	or	%r3, lo(.L__profc_fmaxl+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmaxl+20), %r12
	or	%r12, lo(.L__profc_fmaxl+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_fmaxl+24), %r3
	or	%r3, lo(.L__profc_fmaxl+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmaxl+28), %r12
	or	%r12, lo(.L__profc_fmaxl+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB33_7
	nop
	bt	.LBB33_6
	nop
.LBB33_6:
	mov	hi(__llvm_gcov_ctr.33+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.33+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.33+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.33+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fmaxl+32), %r3
	or	%r3, lo(.L__profc_fmaxl+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmaxl+36), %r12
	or	%r12, lo(.L__profc_fmaxl+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-32[%fp], %r9
	st	%r9, -40[%fp]
	bt	.LBB33_8
	st	%r3, -36[%fp]
.LBB33_7:
	mov	hi(__llvm_gcov_ctr.33+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.33+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.33+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.33+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.33+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.33+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.33+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.33+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fmaxl+40), %r3
	or	%r3, lo(.L__profc_fmaxl+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmaxl+44), %r12
	or	%r12, lo(.L__profc_fmaxl+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-32[%fp], %r9
	st	%r9, -48[%fp]
	bt	.LBB33_12
	st	%r3, -44[%fp]
.LBB33_11:
	mov	hi(__llvm_gcov_ctr.33+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.33+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.33+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.33+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_fmin), %r9
	or	%r9, lo(.L__profc_fmin), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_fmin+4), %r13
	or	%r13, lo(.L__profc_fmin+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(__llvm_gcov_ctr.34), %r3
	or	%r3, lo(__llvm_gcov_ctr.34), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.34+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.34+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fmin+8), %r3
	or	%r3, lo(.L__profc_fmin+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmin+12), %r12
	or	%r12, lo(.L__profc_fmin+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.34+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.34+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.34+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.34+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fmin+16), %r3
	or	%r3, lo(.L__profc_fmin+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmin+20), %r12
	or	%r12, lo(.L__profc_fmin+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_fmin+24), %r3
	or	%r3, lo(.L__profc_fmin+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmin+28), %r12
	or	%r12, lo(.L__profc_fmin+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB34_7
	nop
	bt	.LBB34_6
	nop
.LBB34_6:
	mov	hi(__llvm_gcov_ctr.34+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.34+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.34+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.34+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fmin+32), %r3
	or	%r3, lo(.L__profc_fmin+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmin+36), %r12
	or	%r12, lo(.L__profc_fmin+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	st	%r9, -40[%fp]
	bt	.LBB34_8
	st	%r3, -36[%fp]
.LBB34_7:
	mov	hi(__llvm_gcov_ctr.34+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.34+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.34+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.34+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.34+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.34+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.34+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.34+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fmin+40), %r3
	or	%r3, lo(.L__profc_fmin+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fmin+44), %r12
	or	%r12, lo(.L__profc_fmin+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	st	%r9, -48[%fp]
	bt	.LBB34_12
	st	%r3, -44[%fp]
.LBB34_11:
	mov	hi(__llvm_gcov_ctr.34+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.34+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.34+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.34+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_fminf), %r3
	or	%r3, lo(.L__profc_fminf), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fminf+4), %r12
	or	%r12, lo(.L__profc_fminf+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.35), %r3
	or	%r3, lo(__llvm_gcov_ctr.35), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.35+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.35+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fminf+8), %r3
	or	%r3, lo(.L__profc_fminf+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fminf+12), %r12
	or	%r12, lo(.L__profc_fminf+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.35+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.35+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.35+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.35+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fminf+16), %r3
	or	%r3, lo(.L__profc_fminf+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fminf+20), %r12
	or	%r12, lo(.L__profc_fminf+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_fminf+24), %r3
	or	%r3, lo(.L__profc_fminf+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fminf+28), %r12
	or	%r12, lo(.L__profc_fminf+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB35_7
	nop
	bt	.LBB35_6
	nop
.LBB35_6:
	mov	hi(__llvm_gcov_ctr.35+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.35+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.35+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.35+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fminf+32), %r3
	or	%r3, lo(.L__profc_fminf+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fminf+36), %r12
	or	%r12, lo(.L__profc_fminf+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	bt	.LBB35_8
	st	%r3, -24[%fp]
.LBB35_7:
	mov	hi(__llvm_gcov_ctr.35+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.35+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.35+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.35+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.35+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.35+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.35+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.35+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fminf+40), %r3
	or	%r3, lo(.L__profc_fminf+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fminf+44), %r12
	or	%r12, lo(.L__profc_fminf+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	bt	.LBB35_12
	st	%r3, -28[%fp]
.LBB35_11:
	mov	hi(__llvm_gcov_ctr.35+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.35+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.35+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.35+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_fminl), %r9
	or	%r9, lo(.L__profc_fminl), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_fminl+4), %r13
	or	%r13, lo(.L__profc_fminl+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(__llvm_gcov_ctr.36), %r3
	or	%r3, lo(__llvm_gcov_ctr.36), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.36+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.36+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fminl+8), %r3
	or	%r3, lo(.L__profc_fminl+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fminl+12), %r12
	or	%r12, lo(.L__profc_fminl+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.36+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.36+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.36+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.36+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fminl+16), %r3
	or	%r3, lo(.L__profc_fminl+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fminl+20), %r12
	or	%r12, lo(.L__profc_fminl+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_fminl+24), %r3
	or	%r3, lo(.L__profc_fminl+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fminl+28), %r12
	or	%r12, lo(.L__profc_fminl+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB36_7
	nop
	bt	.LBB36_6
	nop
.LBB36_6:
	mov	hi(__llvm_gcov_ctr.36+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.36+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.36+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.36+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fminl+32), %r3
	or	%r3, lo(.L__profc_fminl+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fminl+36), %r12
	or	%r12, lo(.L__profc_fminl+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	st	%r9, -40[%fp]
	bt	.LBB36_8
	st	%r3, -36[%fp]
.LBB36_7:
	mov	hi(__llvm_gcov_ctr.36+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.36+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.36+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.36+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.36+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.36+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.36+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.36+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_fminl+40), %r3
	or	%r3, lo(.L__profc_fminl+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_fminl+44), %r12
	or	%r12, lo(.L__profc_fminl+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	st	%r9, -48[%fp]
	bt	.LBB36_12
	st	%r3, -44[%fp]
.LBB36_11:
	mov	hi(__llvm_gcov_ctr.36+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.36+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.36+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.36+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.37), %r3
	or	%r3, lo(__llvm_gcov_ctr.37), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.37+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.37+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_l64a), %r3
	or	%r3, lo(.L__profc_l64a), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_l64a+4), %r12
	or	%r12, lo(.L__profc_l64a+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_l64a+8), %r3
	or	%r3, lo(.L__profc_l64a+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_l64a+12), %r12
	or	%r12, lo(.L__profc_l64a+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.37+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.37+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.37+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.37+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.38), %r3
	or	%r3, lo(__llvm_gcov_ctr.38), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.38+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.38+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_srand), %r3
	or	%r3, lo(.L__profc_srand), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_srand+4), %r12
	or	%r12, lo(.L__profc_srand+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.39), %r3
	or	%r3, lo(__llvm_gcov_ctr.39), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.39+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.39+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_rand), %r3
	or	%r3, lo(.L__profc_rand), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_rand+4), %r12
	or	%r12, lo(.L__profc_rand+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_insque), %r3
	or	%r3, lo(.L__profc_insque), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_insque+4), %r12
	or	%r12, lo(.L__profc_insque+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.40+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.40+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.40+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.40+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_insque+8), %r3
	or	%r3, lo(.L__profc_insque+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_insque+12), %r12
	or	%r12, lo(.L__profc_insque+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r9
	or	%r0, 0x0, %r3
	st	%r3, 4[%r9]
	ld	-20[%fp], %r9
	bt	.LBB40_4
	st	%r3, 0[%r9]
.LBB40_2:
	mov	hi(__llvm_gcov_ctr.40), %r3
	or	%r3, lo(__llvm_gcov_ctr.40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.40+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.40+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.40+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.40+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.40+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.40+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_insque+16), %r3
	or	%r3, lo(.L__profc_insque+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_insque+20), %r12
	or	%r12, lo(.L__profc_insque+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.41), %r3
	or	%r3, lo(__llvm_gcov_ctr.41), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.41+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.41+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_remque), %r3
	or	%r3, lo(.L__profc_remque), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_remque+4), %r12
	or	%r12, lo(.L__profc_remque+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.41+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.41+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.41+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.41+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_remque+8), %r3
	or	%r3, lo(.L__profc_remque+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_remque+12), %r12
	or	%r12, lo(.L__profc_remque+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.41+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.41+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.41+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.41+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_remque+16), %r3
	or	%r3, lo(.L__profc_remque+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_remque+20), %r12
	or	%r12, lo(.L__profc_remque+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_lsearch), %r3
	or	%r3, lo(.L__profc_lsearch), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_lsearch+4), %r12
	or	%r12, lo(.L__profc_lsearch+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_lsearch+8), %r3
	or	%r3, lo(.L__profc_lsearch+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_lsearch+12), %r12
	or	%r12, lo(.L__profc_lsearch+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.42), %r3
	or	%r3, lo(__llvm_gcov_ctr.42), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.42+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.42+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_lsearch+16), %r3
	or	%r3, lo(.L__profc_lsearch+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_lsearch+20), %r12
	or	%r12, lo(.L__profc_lsearch+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.42+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.42+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.42+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.42+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-40[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB42_1
	st	%r3, -40[%fp]
.LBB42_6:
	ld	-44[%fp], %r7
	mov	hi(__llvm_gcov_ctr.42+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.42+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.42+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.42+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_lfind), %r3
	or	%r3, lo(.L__profc_lfind), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_lfind+4), %r12
	or	%r12, lo(.L__profc_lfind+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_lfind+8), %r3
	or	%r3, lo(.L__profc_lfind+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_lfind+12), %r12
	or	%r12, lo(.L__profc_lfind+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.43), %r3
	or	%r3, lo(__llvm_gcov_ctr.43), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.43+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.43+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_lfind+16), %r3
	or	%r3, lo(.L__profc_lfind+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_lfind+20), %r12
	or	%r12, lo(.L__profc_lfind+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.43+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.43+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.43+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.43+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-40[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB43_1
	st	%r3, -40[%fp]
.LBB43_6:
	mov	hi(__llvm_gcov_ctr.43+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.43+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.43+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.43+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_abs), %r3
	or	%r3, lo(.L__profc_abs), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_abs+4), %r12
	or	%r12, lo(.L__profc_abs+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	sub.f	%r3, 0x1, %r0
	blt	.LBB44_2
	sub	%sp, 0x10, %sp
	bt	.LBB44_1
	nop
.LBB44_1:
	mov	hi(__llvm_gcov_ctr.44), %r3
	or	%r3, lo(__llvm_gcov_ctr.44), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.44+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.44+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_abs+8), %r3
	or	%r3, lo(.L__profc_abs+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_abs+12), %r12
	or	%r12, lo(.L__profc_abs+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	bt	.LBB44_3
	st	%r3, -16[%fp]
.LBB44_2:
	mov	hi(__llvm_gcov_ctr.44+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.44+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.44+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.44+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_atoi), %r3
	or	%r3, lo(.L__profc_atoi), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atoi+4), %r12
	or	%r12, lo(.L__profc_atoi+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.45), %r3
	or	%r3, lo(__llvm_gcov_ctr.45), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.45+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.45+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_atoi+8), %r3
	or	%r3, lo(.L__profc_atoi+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atoi+12), %r12
	or	%r12, lo(.L__profc_atoi+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	bt	.LBB45_14
	nop
.LBB45_14:
	ld	-24[%fp], %r3
	sub.f	%r3, 0x2d, %r0
	bne	.LBB45_7
	nop
	bt	.LBB45_4
	nop
.LBB45_4:
	mov	hi(__llvm_gcov_ctr.45+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.45+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.45+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.45+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_atoi+24), %r3
	or	%r3, lo(.L__profc_atoi+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atoi+28), %r12
	or	%r12, lo(.L__profc_atoi+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	0x1, %r3
	bt	.LBB45_6
	st	%r3, -20[%fp]
.LBB45_5:
	mov	hi(__llvm_gcov_ctr.45+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.45+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.45+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.45+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_atoi+32), %r3
	or	%r3, lo(.L__profc_atoi+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atoi+36), %r12
	or	%r12, lo(.L__profc_atoi+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB45_6
	st	%r3, 0[%r9]
.LBB45_6:
	ld	-12[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB45_7
	st	%r3, -12[%fp]
.LBB45_7:
	mov	hi(.L__profc_atoi+16), %r3
	or	%r3, lo(.L__profc_atoi+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atoi+20), %r12
	or	%r12, lo(.L__profc_atoi+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB45_8
	st	%r3, 0[%r9]
.LBB45_8:                               ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	isdigit
	ld.b	0[%r3], %r6
	sub.f	%rv, 0x0, %r0
	beq	.LBB45_10
	nop
	bt	.LBB45_9
	nop
.LBB45_9:                               !   in Loop: Header=BB45_8 Depth=1
	mov	hi(__llvm_gcov_ctr.45+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.45+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.45+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.45+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_atoi+40), %r3
	or	%r3, lo(.L__profc_atoi+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atoi+44), %r12
	or	%r12, lo(.L__profc_atoi+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	bt	.LBB45_8
	st	%r3, -16[%fp]
.LBB45_10:
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB45_12
	nop
	bt	.LBB45_11
	nop
.LBB45_11:
	mov	hi(__llvm_gcov_ctr.45+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.45+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.45+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.45+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_atoi+48), %r3
	or	%r3, lo(.L__profc_atoi+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atoi+52), %r12
	or	%r12, lo(.L__profc_atoi+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	bt	.LBB45_13
	st	%r3, -28[%fp]
.LBB45_12:
	mov	hi(__llvm_gcov_ctr.45+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.45+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.45+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.45+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r9
	or	%r0, 0x0, %r3
	sub	%r3, %r9, %r3
	bt	.LBB45_13
	st	%r3, -28[%fp]
.LBB45_13:
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
	mov	hi(.L__profc_atol), %r3
	or	%r3, lo(.L__profc_atol), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atol+4), %r12
	or	%r12, lo(.L__profc_atol+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.46), %r3
	or	%r3, lo(__llvm_gcov_ctr.46), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.46+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.46+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_atol+8), %r3
	or	%r3, lo(.L__profc_atol+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atol+12), %r12
	or	%r12, lo(.L__profc_atol+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	bt	.LBB46_14
	nop
.LBB46_14:
	ld	-24[%fp], %r3
	sub.f	%r3, 0x2d, %r0
	bne	.LBB46_7
	nop
	bt	.LBB46_4
	nop
.LBB46_4:
	mov	hi(__llvm_gcov_ctr.46+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.46+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.46+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.46+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_atol+24), %r3
	or	%r3, lo(.L__profc_atol+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atol+28), %r12
	or	%r12, lo(.L__profc_atol+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	0x1, %r3
	bt	.LBB46_6
	st	%r3, -20[%fp]
.LBB46_5:
	mov	hi(__llvm_gcov_ctr.46+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.46+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.46+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.46+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_atol+32), %r3
	or	%r3, lo(.L__profc_atol+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atol+36), %r12
	or	%r12, lo(.L__profc_atol+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB46_6
	st	%r3, 0[%r9]
.LBB46_6:
	ld	-12[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB46_7
	st	%r3, -12[%fp]
.LBB46_7:
	mov	hi(.L__profc_atol+16), %r3
	or	%r3, lo(.L__profc_atol+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atol+20), %r12
	or	%r12, lo(.L__profc_atol+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB46_8
	st	%r3, 0[%r9]
.LBB46_8:                               ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	isdigit
	ld.b	0[%r3], %r6
	sub.f	%rv, 0x0, %r0
	beq	.LBB46_10
	nop
	bt	.LBB46_9
	nop
.LBB46_9:                               !   in Loop: Header=BB46_8 Depth=1
	mov	hi(__llvm_gcov_ctr.46+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.46+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.46+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.46+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_atol+40), %r3
	or	%r3, lo(.L__profc_atol+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atol+44), %r12
	or	%r12, lo(.L__profc_atol+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	bt	.LBB46_8
	st	%r3, -16[%fp]
.LBB46_10:
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB46_12
	nop
	bt	.LBB46_11
	nop
.LBB46_11:
	mov	hi(__llvm_gcov_ctr.46+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.46+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.46+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.46+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_atol+48), %r3
	or	%r3, lo(.L__profc_atol+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atol+52), %r12
	or	%r12, lo(.L__profc_atol+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	bt	.LBB46_13
	st	%r3, -28[%fp]
.LBB46_12:
	mov	hi(__llvm_gcov_ctr.46+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.46+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.46+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.46+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r9
	or	%r0, 0x0, %r3
	sub	%r3, %r9, %r3
	bt	.LBB46_13
	st	%r3, -28[%fp]
.LBB46_13:
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
	mov	hi(.L__profc_atoll), %r3
	or	%r3, lo(.L__profc_atoll), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atoll+4), %r12
	or	%r12, lo(.L__profc_atoll+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.47), %r3
	or	%r3, lo(__llvm_gcov_ctr.47), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.47+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.47+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_atoll+8), %r3
	or	%r3, lo(.L__profc_atoll+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atoll+12), %r12
	or	%r12, lo(.L__profc_atoll+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	bt	.LBB47_14
	nop
.LBB47_14:
	ld	-32[%fp], %r3
	sub.f	%r3, 0x2d, %r0
	bne	.LBB47_7
	nop
	bt	.LBB47_4
	nop
.LBB47_4:
	mov	hi(__llvm_gcov_ctr.47+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.47+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.47+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.47+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_atoll+24), %r3
	or	%r3, lo(.L__profc_atoll+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atoll+28), %r12
	or	%r12, lo(.L__profc_atoll+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	0x1, %r3
	bt	.LBB47_6
	st	%r3, -28[%fp]
.LBB47_5:
	mov	hi(__llvm_gcov_ctr.47+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.47+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.47+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.47+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_atoll+32), %r3
	or	%r3, lo(.L__profc_atoll+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atoll+36), %r12
	or	%r12, lo(.L__profc_atoll+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB47_6
	st	%r3, 0[%r9]
.LBB47_6:
	ld	-12[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB47_7
	st	%r3, -12[%fp]
.LBB47_7:
	mov	hi(.L__profc_atoll+16), %r3
	or	%r3, lo(.L__profc_atoll+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atoll+20), %r12
	or	%r12, lo(.L__profc_atoll+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB47_8
	st	%r3, 0[%r9]
.LBB47_8:                               ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	isdigit
	ld.b	0[%r3], %r6
	sub.f	%rv, 0x0, %r0
	beq	.LBB47_10
	nop
	bt	.LBB47_9
	nop
.LBB47_9:                               !   in Loop: Header=BB47_8 Depth=1
	mov	hi(__llvm_gcov_ctr.47+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.47+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.47+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.47+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_atoll+40), %r3
	or	%r3, lo(.L__profc_atoll+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atoll+44), %r12
	or	%r12, lo(.L__profc_atoll+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	bt	.LBB47_8
	st	%r3, -24[%fp]
.LBB47_10:
	ld	-28[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB47_12
	nop
	bt	.LBB47_11
	nop
.LBB47_11:
	mov	hi(__llvm_gcov_ctr.47+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.47+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.47+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.47+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_atoll+48), %r3
	or	%r3, lo(.L__profc_atoll+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_atoll+52), %r12
	or	%r12, lo(.L__profc_atoll+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-24[%fp], %r9
	st	%r9, -44[%fp]
	bt	.LBB47_13
	st	%r3, -40[%fp]
.LBB47_12:
	mov	hi(__llvm_gcov_ctr.47+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.47+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.47+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.47+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	bt	.LBB47_13
	st	%r3, -40[%fp]
.LBB47_13:
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
	st	%r19, -28[%fp]
	mov	hi(.L__profc_bsearch), %r3
	or	%r3, lo(.L__profc_bsearch), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_bsearch+4), %r12
	or	%r12, lo(.L__profc_bsearch+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB48_1
	st	%r3, 0[%r9]
.LBB48_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB48_9
	nop
	bt	.LBB48_2
	nop
.LBB48_2:                               !   in Loop: Header=BB48_1 Depth=1
	mov	hi(.L__profc_bsearch+8), %r3
	or	%r3, lo(.L__profc_bsearch+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_bsearch+12), %r12
	or	%r12, lo(.L__profc_bsearch+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.48+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.48+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.48+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.48+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_bsearch+16), %r3
	or	%r3, lo(.L__profc_bsearch+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_bsearch+20), %r12
	or	%r12, lo(.L__profc_bsearch+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_bsearch+24), %r3
	or	%r3, lo(.L__profc_bsearch+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_bsearch+28), %r12
	or	%r12, lo(.L__profc_bsearch+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.48+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.48+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.48+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.48+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-32[%fp], %r3
	bt	.LBB48_10
	st	%r3, -12[%fp]
.LBB48_7:                               !   in Loop: Header=BB48_1 Depth=1
	mov	hi(__llvm_gcov_ctr.48+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.48+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.48+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.48+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB48_8
	st	%r3, 0[%r9]
.LBB48_8:                               !   in Loop: Header=BB48_1 Depth=1
	bt	.LBB48_1
	nop
.LBB48_9:
	mov	hi(__llvm_gcov_ctr.48), %r3
	or	%r3, lo(__llvm_gcov_ctr.48), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.48+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.48+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_bsearch_r), %r3
	or	%r3, lo(.L__profc_bsearch_r), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_bsearch_r+4), %r12
	or	%r12, lo(.L__profc_bsearch_r+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_bsearch_r+8), %r3
	or	%r3, lo(.L__profc_bsearch_r+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_bsearch_r+12), %r12
	or	%r12, lo(.L__profc_bsearch_r+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.49), %r3
	or	%r3, lo(__llvm_gcov_ctr.49), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.49+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.49+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_bsearch_r+16), %r3
	or	%r3, lo(.L__profc_bsearch_r+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_bsearch_r+20), %r12
	or	%r12, lo(.L__profc_bsearch_r+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.49+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.49+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.49+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.49+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_bsearch_r+24), %r3
	or	%r3, lo(.L__profc_bsearch_r+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_bsearch_r+28), %r12
	or	%r12, lo(.L__profc_bsearch_r+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.49+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.49+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.49+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.49+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-36[%fp], %r3
	sha	%r3, -0x1, %r3
	bt	.LBB49_1
	st	%r3, -36[%fp]
.LBB49_8:
	mov	hi(__llvm_gcov_ctr.49+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.49+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.49+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.49+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.50), %r3
	or	%r3, lo(__llvm_gcov_ctr.50), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.50+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.50+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc_div), %r3
	or	%r3, lo(.L__profc_div), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_div+4), %r12
	or	%r12, lo(.L__profc_div+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_imaxabs), %r9
	or	%r9, lo(.L__profc_imaxabs), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_imaxabs+4), %r13
	or	%r13, lo(.L__profc_imaxabs+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(__llvm_gcov_ctr.51), %r3
	or	%r3, lo(__llvm_gcov_ctr.51), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.51+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.51+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_imaxabs+8), %r3
	or	%r3, lo(.L__profc_imaxabs+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_imaxabs+12), %r12
	or	%r12, lo(.L__profc_imaxabs+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	st	%r9, -24[%fp]
	bt	.LBB51_3
	st	%r3, -20[%fp]
.LBB51_2:
	mov	hi(__llvm_gcov_ctr.51+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.51+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.51+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.51+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.52), %r3
	or	%r3, lo(__llvm_gcov_ctr.52), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.52+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.52+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_imaxdiv), %r12
	or	%r12, lo(.L__profc_imaxdiv), %r13
	ld	0[%r13], %r12
	mov	hi(.L__profc_imaxdiv+4), %r14
	or	%r14, lo(.L__profc_imaxdiv+4), %r16
	ld	0[%r16], %r14
	add	%r14, 0x1, %r14
	sub.f	%r14, 0x0, %r0
	seq	%r17
	add	%r12, %r17, %r12
	st	%r14, 0[%r16]
	st	%r12, 0[%r13]
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
	mov	hi(.L__profc_labs), %r3
	or	%r3, lo(.L__profc_labs), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_labs+4), %r12
	or	%r12, lo(.L__profc_labs+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	sub.f	%r3, 0x1, %r0
	blt	.LBB53_2
	sub	%sp, 0x10, %sp
	bt	.LBB53_1
	nop
.LBB53_1:
	mov	hi(__llvm_gcov_ctr.53), %r3
	or	%r3, lo(__llvm_gcov_ctr.53), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.53+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.53+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_labs+8), %r3
	or	%r3, lo(.L__profc_labs+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_labs+12), %r12
	or	%r12, lo(.L__profc_labs+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	bt	.LBB53_3
	st	%r3, -16[%fp]
.LBB53_2:
	mov	hi(__llvm_gcov_ctr.53+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.53+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.53+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.53+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.54), %r3
	or	%r3, lo(__llvm_gcov_ctr.54), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.54+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.54+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc_ldiv), %r3
	or	%r3, lo(.L__profc_ldiv), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldiv+4), %r12
	or	%r12, lo(.L__profc_ldiv+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_llabs), %r9
	or	%r9, lo(.L__profc_llabs), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_llabs+4), %r13
	or	%r13, lo(.L__profc_llabs+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(__llvm_gcov_ctr.55), %r3
	or	%r3, lo(__llvm_gcov_ctr.55), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.55+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.55+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_llabs+8), %r3
	or	%r3, lo(.L__profc_llabs+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_llabs+12), %r12
	or	%r12, lo(.L__profc_llabs+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	st	%r9, -24[%fp]
	bt	.LBB55_3
	st	%r3, -20[%fp]
.LBB55_2:
	mov	hi(__llvm_gcov_ctr.55+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.55+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.55+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.55+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.56), %r3
	or	%r3, lo(__llvm_gcov_ctr.56), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.56+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.56+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_lldiv), %r12
	or	%r12, lo(.L__profc_lldiv), %r13
	ld	0[%r13], %r12
	mov	hi(.L__profc_lldiv+4), %r14
	or	%r14, lo(.L__profc_lldiv+4), %r16
	ld	0[%r16], %r14
	add	%r14, 0x1, %r14
	sub.f	%r14, 0x0, %r0
	seq	%r17
	add	%r12, %r17, %r12
	st	%r14, 0[%r16]
	st	%r12, 0[%r13]
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
	sub	%sp, 0x20, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc_wcschr), %r3
	or	%r3, lo(.L__profc_wcschr), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcschr+4), %r12
	or	%r12, lo(.L__profc_wcschr+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB57_1
	st	%r3, 0[%r9]
.LBB57_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	ld	0[%r3], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB57_4
	st	%r3, -20[%fp]
	bt	.LBB57_2
	nop
.LBB57_2:                               !   in Loop: Header=BB57_1 Depth=1
	mov	hi(__llvm_gcov_ctr.57), %r3
	or	%r3, lo(__llvm_gcov_ctr.57), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.57+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.57+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wcschr+16), %r3
	or	%r3, lo(.L__profc_wcschr+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcschr+20), %r12
	or	%r12, lo(.L__profc_wcschr+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	ld	0[%r3], %r9
	ld	-16[%fp], %r12
	sub.f	%r9, %r12, %r0
	sne	%r3
	st	%r3, -24[%fp]
	sub.f	%r9, %r12, %r0
	beq	.LBB57_4
	st	%r3, -20[%fp]
	bt	.LBB57_3
	nop
.LBB57_3:                               !   in Loop: Header=BB57_1 Depth=1
	ld	-24[%fp], %r3
	mov	hi(__llvm_gcov_ctr.57+8), %r9
	or	%r9, lo(__llvm_gcov_ctr.57+8), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.57+12), %r13
	or	%r13, lo(__llvm_gcov_ctr.57+12), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_wcschr+24), %r9
	or	%r9, lo(.L__profc_wcschr+24), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_wcschr+28), %r13
	or	%r13, lo(.L__profc_wcschr+28), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB57_4
	st	%r3, -20[%fp]
.LBB57_4:                               !   in Loop: Header=BB57_1 Depth=1
	ld	-20[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB57_7
	nop
	bt	.LBB57_5
	nop
.LBB57_5:                               !   in Loop: Header=BB57_1 Depth=1
	mov	hi(.L__profc_wcschr+8), %r3
	or	%r3, lo(.L__profc_wcschr+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcschr+12), %r12
	or	%r12, lo(.L__profc_wcschr+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB57_6
	st	%r3, 0[%r9]
.LBB57_6:                               !   in Loop: Header=BB57_1 Depth=1
	mov	hi(__llvm_gcov_ctr.57+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.57+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.57+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.57+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	add	%r3, 0x4, %r3
	bt	.LBB57_1
	st	%r3, -12[%fp]
.LBB57_7:
	ld	-12[%fp], %r3
	ld	0[%r3], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB57_9
	nop
	bt	.LBB57_8
	nop
.LBB57_8:
	mov	hi(__llvm_gcov_ctr.57+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.57+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.57+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.57+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wcschr+32), %r3
	or	%r3, lo(.L__profc_wcschr+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcschr+36), %r12
	or	%r12, lo(.L__profc_wcschr+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	bt	.LBB57_10
	st	%r3, -28[%fp]
.LBB57_9:
	mov	hi(__llvm_gcov_ctr.57+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.57+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.57+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.57+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	bt	.LBB57_10
	st	%r3, -28[%fp]
.LBB57_10:
	ld	-28[%fp], %rv
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
	sub	%sp, 0x20, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc_wcscmp), %r3
	or	%r3, lo(.L__profc_wcscmp), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcscmp+4), %r12
	or	%r12, lo(.L__profc_wcscmp+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB58_1
	st	%r3, 0[%r9]
.LBB58_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	ld	0[%r3], %r9
	ld	-16[%fp], %r3
	ld	0[%r3], %r12
	or	%r0, 0x0, %r3
	sub.f	%r9, %r12, %r0
	bne	.LBB58_6
	st	%r3, -20[%fp]
	bt	.LBB58_2
	nop
.LBB58_2:                               !   in Loop: Header=BB58_1 Depth=1
	mov	hi(__llvm_gcov_ctr.58), %r3
	or	%r3, lo(__llvm_gcov_ctr.58), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.58+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.58+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wcscmp+32), %r3
	or	%r3, lo(.L__profc_wcscmp+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcscmp+36), %r12
	or	%r12, lo(.L__profc_wcscmp+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	ld	0[%r3], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB58_6
	st	%r3, -20[%fp]
	bt	.LBB58_3
	nop
.LBB58_3:                               !   in Loop: Header=BB58_1 Depth=1
	mov	hi(__llvm_gcov_ctr.58+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.58+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.58+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.58+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wcscmp+40), %r3
	or	%r3, lo(.L__profc_wcscmp+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcscmp+44), %r12
	or	%r12, lo(.L__profc_wcscmp+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB58_4
	st	%r3, 0[%r9]
.LBB58_4:                               !   in Loop: Header=BB58_1 Depth=1
	mov	hi(.L__profc_wcscmp+16), %r3
	or	%r3, lo(.L__profc_wcscmp+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcscmp+20), %r12
	or	%r12, lo(.L__profc_wcscmp+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	ld	0[%r3], %r9
	sub.f	%r9, 0x0, %r0
	sne	%r3
	st	%r3, -24[%fp]
	sub.f	%r9, 0x0, %r0
	beq	.LBB58_6
	st	%r3, -20[%fp]
	bt	.LBB58_5
	nop
.LBB58_5:                               !   in Loop: Header=BB58_1 Depth=1
	ld	-24[%fp], %r3
	mov	hi(__llvm_gcov_ctr.58+16), %r9
	or	%r9, lo(__llvm_gcov_ctr.58+16), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.58+20), %r13
	or	%r13, lo(__llvm_gcov_ctr.58+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_wcscmp+24), %r9
	or	%r9, lo(.L__profc_wcscmp+24), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_wcscmp+28), %r13
	or	%r13, lo(.L__profc_wcscmp+28), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB58_6
	st	%r3, -20[%fp]
.LBB58_6:                               !   in Loop: Header=BB58_1 Depth=1
	ld	-20[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB58_9
	nop
	bt	.LBB58_7
	nop
.LBB58_7:                               !   in Loop: Header=BB58_1 Depth=1
	mov	hi(.L__profc_wcscmp+8), %r3
	or	%r3, lo(.L__profc_wcscmp+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcscmp+12), %r12
	or	%r12, lo(.L__profc_wcscmp+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB58_8
	st	%r3, 0[%r9]
.LBB58_8:                               !   in Loop: Header=BB58_1 Depth=1
	mov	hi(__llvm_gcov_ctr.58+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.58+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.58+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.58+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	add	%r3, 0x4, %r3
	st	%r3, -12[%fp]
	ld	-16[%fp], %r3
	add	%r3, 0x4, %r3
	bt	.LBB58_1
	st	%r3, -16[%fp]
.LBB58_9:
	ld	-12[%fp], %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	ld	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	bge	.LBB58_11
	nop
	bt	.LBB58_10
	nop
.LBB58_10:
	mov	hi(__llvm_gcov_ctr.58+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.58+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.58+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.58+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wcscmp+48), %r3
	or	%r3, lo(.L__profc_wcscmp+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcscmp+52), %r12
	or	%r12, lo(.L__profc_wcscmp+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r1, 0x0, %r3
	bt	.LBB58_12
	st	%r3, -28[%fp]
.LBB58_11:
	mov	hi(__llvm_gcov_ctr.58+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.58+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.58+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.58+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	ld	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	sgt	%r3
	bt	.LBB58_12
	st	%r3, -28[%fp]
.LBB58_12:
	ld	-28[%fp], %rv
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
	mov	hi(__llvm_gcov_ctr.59), %r3
	or	%r3, lo(__llvm_gcov_ctr.59), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.59+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.59+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc_wcscpy), %r3
	or	%r3, lo(.L__profc_wcscpy), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcscpy+4), %r12
	or	%r12, lo(.L__profc_wcscpy+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.59+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.59+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.59+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.59+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wcscpy+8), %r3
	or	%r3, lo(.L__profc_wcscpy+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcscpy+12), %r12
	or	%r12, lo(.L__profc_wcscpy+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB59_1
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.60), %r3
	or	%r3, lo(__llvm_gcov_ctr.60), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.60+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.60+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_wcslen), %r3
	or	%r3, lo(.L__profc_wcslen), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcslen+4), %r12
	or	%r12, lo(.L__profc_wcslen+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_wcslen+8), %r3
	or	%r3, lo(.L__profc_wcslen+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcslen+12), %r12
	or	%r12, lo(.L__profc_wcslen+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB60_3
	st	%r3, 0[%r9]
.LBB60_3:                               !   in Loop: Header=BB60_1 Depth=1
	mov	hi(__llvm_gcov_ctr.60+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.60+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.60+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.60+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	sub	%sp, 0x28, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	mov	hi(.L__profc_wcsncmp), %r3
	or	%r3, lo(.L__profc_wcsncmp), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcsncmp+4), %r12
	or	%r12, lo(.L__profc_wcsncmp+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB61_1
	st	%r3, 0[%r9]
.LBB61_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB61_8
	st	%r3, -24[%fp]
	bt	.LBB61_2
	nop
.LBB61_2:                               !   in Loop: Header=BB61_1 Depth=1
	mov	hi(__llvm_gcov_ctr.61), %r3
	or	%r3, lo(__llvm_gcov_ctr.61), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.61+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.61+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wcsncmp+48), %r3
	or	%r3, lo(.L__profc_wcsncmp+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcsncmp+52), %r12
	or	%r12, lo(.L__profc_wcsncmp+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	ld	0[%r3], %r9
	ld	-16[%fp], %r3
	ld	0[%r3], %r12
	or	%r0, 0x0, %r3
	sub.f	%r9, %r12, %r0
	bne	.LBB61_8
	st	%r3, -24[%fp]
	bt	.LBB61_3
	nop
.LBB61_3:                               !   in Loop: Header=BB61_1 Depth=1
	mov	hi(__llvm_gcov_ctr.61+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.61+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.61+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.61+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wcsncmp+56), %r3
	or	%r3, lo(.L__profc_wcsncmp+56), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcsncmp+60), %r12
	or	%r12, lo(.L__profc_wcsncmp+60), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB61_4
	st	%r3, 0[%r9]
.LBB61_4:                               !   in Loop: Header=BB61_1 Depth=1
	mov	hi(.L__profc_wcsncmp+32), %r3
	or	%r3, lo(.L__profc_wcsncmp+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcsncmp+36), %r12
	or	%r12, lo(.L__profc_wcsncmp+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	ld	0[%r3], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB61_8
	st	%r3, -24[%fp]
	bt	.LBB61_5
	nop
.LBB61_5:                               !   in Loop: Header=BB61_1 Depth=1
	mov	hi(__llvm_gcov_ctr.61+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.61+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.61+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.61+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wcsncmp+40), %r3
	or	%r3, lo(.L__profc_wcsncmp+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcsncmp+44), %r12
	or	%r12, lo(.L__profc_wcsncmp+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB61_6
	st	%r3, 0[%r9]
.LBB61_6:                               !   in Loop: Header=BB61_1 Depth=1
	mov	hi(.L__profc_wcsncmp+16), %r3
	or	%r3, lo(.L__profc_wcsncmp+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcsncmp+20), %r12
	or	%r12, lo(.L__profc_wcsncmp+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	ld	0[%r3], %r9
	sub.f	%r9, 0x0, %r0
	sne	%r3
	st	%r3, -28[%fp]
	sub.f	%r9, 0x0, %r0
	beq	.LBB61_8
	st	%r3, -24[%fp]
	bt	.LBB61_7
	nop
.LBB61_7:                               !   in Loop: Header=BB61_1 Depth=1
	ld	-28[%fp], %r3
	mov	hi(__llvm_gcov_ctr.61+24), %r9
	or	%r9, lo(__llvm_gcov_ctr.61+24), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.61+28), %r13
	or	%r13, lo(__llvm_gcov_ctr.61+28), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_wcsncmp+24), %r9
	or	%r9, lo(.L__profc_wcsncmp+24), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_wcsncmp+28), %r13
	or	%r13, lo(.L__profc_wcsncmp+28), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB61_8
	st	%r3, -24[%fp]
.LBB61_8:                               !   in Loop: Header=BB61_1 Depth=1
	ld	-24[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB61_11
	nop
	bt	.LBB61_9
	nop
.LBB61_9:                               !   in Loop: Header=BB61_1 Depth=1
	mov	hi(.L__profc_wcsncmp+8), %r3
	or	%r3, lo(.L__profc_wcsncmp+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcsncmp+12), %r12
	or	%r12, lo(.L__profc_wcsncmp+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB61_10
	st	%r3, 0[%r9]
.LBB61_10:                              !   in Loop: Header=BB61_1 Depth=1
	mov	hi(__llvm_gcov_ctr.61+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.61+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.61+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.61+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
.LBB61_11:
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB61_16
	nop
	bt	.LBB61_12
	nop
.LBB61_12:
	mov	hi(.L__profc_wcsncmp+64), %r3
	or	%r3, lo(.L__profc_wcsncmp+64), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcsncmp+68), %r12
	or	%r12, lo(.L__profc_wcsncmp+68), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	ld	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	bge	.LBB61_14
	nop
	bt	.LBB61_13
	nop
.LBB61_13:
	mov	hi(__llvm_gcov_ctr.61+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.61+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.61+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.61+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wcsncmp+72), %r3
	or	%r3, lo(.L__profc_wcsncmp+72), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wcsncmp+76), %r12
	or	%r12, lo(.L__profc_wcsncmp+76), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r1, 0x0, %r3
	bt	.LBB61_15
	st	%r3, -32[%fp]
.LBB61_14:
	mov	hi(__llvm_gcov_ctr.61+48), %r3
	or	%r3, lo(__llvm_gcov_ctr.61+48), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.61+52), %r12
	or	%r12, lo(__llvm_gcov_ctr.61+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	ld	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	sgt	%r3
	bt	.LBB61_15
	st	%r3, -32[%fp]
.LBB61_15:
	ld	-32[%fp], %r3
	bt	.LBB61_17
	st	%r3, -36[%fp]
.LBB61_16:
	mov	hi(__llvm_gcov_ctr.61+56), %r3
	or	%r3, lo(__llvm_gcov_ctr.61+56), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.61+60), %r12
	or	%r12, lo(__llvm_gcov_ctr.61+60), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	bt	.LBB61_17
	st	%r3, -36[%fp]
.LBB61_17:
	ld	-36[%fp], %rv
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
	st	%r18, -20[%fp]
	mov	hi(.L__profc_wmemchr), %r3
	or	%r3, lo(.L__profc_wmemchr), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wmemchr+4), %r12
	or	%r12, lo(.L__profc_wmemchr+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB62_1
	st	%r3, 0[%r9]
.LBB62_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB62_4
	st	%r3, -24[%fp]
	bt	.LBB62_2
	nop
.LBB62_2:                               !   in Loop: Header=BB62_1 Depth=1
	mov	hi(__llvm_gcov_ctr.62), %r3
	or	%r3, lo(__llvm_gcov_ctr.62), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.62+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.62+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wmemchr+16), %r3
	or	%r3, lo(.L__profc_wmemchr+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wmemchr+20), %r12
	or	%r12, lo(.L__profc_wmemchr+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	ld	0[%r3], %r9
	ld	-16[%fp], %r12
	sub.f	%r9, %r12, %r0
	sne	%r3
	st	%r3, -28[%fp]
	sub.f	%r9, %r12, %r0
	beq	.LBB62_4
	st	%r3, -24[%fp]
	bt	.LBB62_3
	nop
.LBB62_3:                               !   in Loop: Header=BB62_1 Depth=1
	ld	-28[%fp], %r3
	mov	hi(__llvm_gcov_ctr.62+8), %r9
	or	%r9, lo(__llvm_gcov_ctr.62+8), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.62+12), %r13
	or	%r13, lo(__llvm_gcov_ctr.62+12), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_wmemchr+24), %r9
	or	%r9, lo(.L__profc_wmemchr+24), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_wmemchr+28), %r13
	or	%r13, lo(.L__profc_wmemchr+28), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB62_4
	st	%r3, -24[%fp]
.LBB62_4:                               !   in Loop: Header=BB62_1 Depth=1
	ld	-24[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB62_7
	nop
	bt	.LBB62_5
	nop
.LBB62_5:                               !   in Loop: Header=BB62_1 Depth=1
	mov	hi(.L__profc_wmemchr+8), %r3
	or	%r3, lo(.L__profc_wmemchr+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wmemchr+12), %r12
	or	%r12, lo(.L__profc_wmemchr+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB62_6
	st	%r3, 0[%r9]
.LBB62_6:                               !   in Loop: Header=BB62_1 Depth=1
	mov	hi(__llvm_gcov_ctr.62+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.62+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.62+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.62+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r3
	st	%r3, -20[%fp]
	ld	-12[%fp], %r3
	add	%r3, 0x4, %r3
	bt	.LBB62_1
	st	%r3, -12[%fp]
.LBB62_7:
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB62_9
	nop
	bt	.LBB62_8
	nop
.LBB62_8:
	mov	hi(__llvm_gcov_ctr.62+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.62+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.62+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.62+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wmemchr+32), %r3
	or	%r3, lo(.L__profc_wmemchr+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wmemchr+36), %r12
	or	%r12, lo(.L__profc_wmemchr+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	bt	.LBB62_10
	st	%r3, -32[%fp]
.LBB62_9:
	mov	hi(__llvm_gcov_ctr.62+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.62+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.62+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.62+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	bt	.LBB62_10
	st	%r3, -32[%fp]
.LBB62_10:
	ld	-32[%fp], %rv
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
	sub	%sp, 0x28, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	mov	hi(.L__profc_wmemcmp), %r3
	or	%r3, lo(.L__profc_wmemcmp), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wmemcmp+4), %r12
	or	%r12, lo(.L__profc_wmemcmp+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB63_1
	st	%r3, 0[%r9]
.LBB63_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB63_4
	st	%r3, -24[%fp]
	bt	.LBB63_2
	nop
.LBB63_2:                               !   in Loop: Header=BB63_1 Depth=1
	mov	hi(__llvm_gcov_ctr.63), %r3
	or	%r3, lo(__llvm_gcov_ctr.63), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.63+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.63+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wmemcmp+16), %r3
	or	%r3, lo(.L__profc_wmemcmp+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wmemcmp+20), %r12
	or	%r12, lo(.L__profc_wmemcmp+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	ld	0[%r3], %r9
	ld	-16[%fp], %r3
	ld	0[%r3], %r12
	sub.f	%r9, %r12, %r0
	seq	%r3
	st	%r3, -28[%fp]
	sub.f	%r9, %r12, %r0
	bne	.LBB63_4
	st	%r3, -24[%fp]
	bt	.LBB63_3
	nop
.LBB63_3:                               !   in Loop: Header=BB63_1 Depth=1
	ld	-28[%fp], %r3
	mov	hi(__llvm_gcov_ctr.63+8), %r9
	or	%r9, lo(__llvm_gcov_ctr.63+8), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.63+12), %r13
	or	%r13, lo(__llvm_gcov_ctr.63+12), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_wmemcmp+24), %r9
	or	%r9, lo(.L__profc_wmemcmp+24), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_wmemcmp+28), %r13
	or	%r13, lo(.L__profc_wmemcmp+28), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB63_4
	st	%r3, -24[%fp]
.LBB63_4:                               !   in Loop: Header=BB63_1 Depth=1
	ld	-24[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB63_7
	nop
	bt	.LBB63_5
	nop
.LBB63_5:                               !   in Loop: Header=BB63_1 Depth=1
	mov	hi(.L__profc_wmemcmp+8), %r3
	or	%r3, lo(.L__profc_wmemcmp+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wmemcmp+12), %r12
	or	%r12, lo(.L__profc_wmemcmp+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB63_6
	st	%r3, 0[%r9]
.LBB63_6:                               !   in Loop: Header=BB63_1 Depth=1
	mov	hi(__llvm_gcov_ctr.63+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.63+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.63+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.63+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
.LBB63_7:
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB63_12
	nop
	bt	.LBB63_8
	nop
.LBB63_8:
	mov	hi(.L__profc_wmemcmp+32), %r3
	or	%r3, lo(.L__profc_wmemcmp+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wmemcmp+36), %r12
	or	%r12, lo(.L__profc_wmemcmp+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	ld	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	bge	.LBB63_10
	nop
	bt	.LBB63_9
	nop
.LBB63_9:
	mov	hi(__llvm_gcov_ctr.63+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.63+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.63+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.63+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wmemcmp+40), %r3
	or	%r3, lo(.L__profc_wmemcmp+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wmemcmp+44), %r12
	or	%r12, lo(.L__profc_wmemcmp+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r1, 0x0, %r3
	bt	.LBB63_11
	st	%r3, -32[%fp]
.LBB63_10:
	mov	hi(__llvm_gcov_ctr.63+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.63+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.63+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.63+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	ld	0[%r3], %r3
	ld	-16[%fp], %r9
	ld	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	sgt	%r3
	bt	.LBB63_11
	st	%r3, -32[%fp]
.LBB63_11:
	ld	-32[%fp], %r3
	bt	.LBB63_13
	st	%r3, -36[%fp]
.LBB63_12:
	mov	hi(__llvm_gcov_ctr.63+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.63+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.63+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.63+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	bt	.LBB63_13
	st	%r3, -36[%fp]
.LBB63_13:
	ld	-36[%fp], %rv
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
	mov	hi(__llvm_gcov_ctr.64), %r3
	or	%r3, lo(__llvm_gcov_ctr.64), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.64+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.64+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	mov	hi(.L__profc_wmemcpy), %r3
	or	%r3, lo(.L__profc_wmemcpy), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wmemcpy+4), %r12
	or	%r12, lo(.L__profc_wmemcpy+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.64+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.64+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.64+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.64+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wmemcpy+8), %r3
	or	%r3, lo(.L__profc_wmemcpy+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wmemcpy+12), %r12
	or	%r12, lo(.L__profc_wmemcpy+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_wmemmove), %r3
	or	%r3, lo(.L__profc_wmemmove), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wmemmove+4), %r12
	or	%r12, lo(.L__profc_wmemmove+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.65), %r3
	or	%r3, lo(__llvm_gcov_ctr.65), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.65+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.65+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wmemmove+8), %r3
	or	%r3, lo(.L__profc_wmemmove+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wmemmove+12), %r12
	or	%r12, lo(.L__profc_wmemmove+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.65+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.65+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.65+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.65+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wmemmove+16), %r3
	or	%r3, lo(.L__profc_wmemmove+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wmemmove+20), %r12
	or	%r12, lo(.L__profc_wmemmove+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB65_4
	st	%r3, 0[%r9]
.LBB65_4:                               ! =>This Inner Loop Header: Depth=1
	ld	-24[%fp], %r3
	sub	%r3, 0x1, %r9
	sub.f	%r3, 0x0, %r0
	beq	.LBB65_6
	st	%r9, -24[%fp]
	bt	.LBB65_5
	nop
.LBB65_5:                               !   in Loop: Header=BB65_4 Depth=1
	mov	hi(__llvm_gcov_ctr.65+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.65+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.65+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.65+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wmemmove+24), %r3
	or	%r3, lo(.L__profc_wmemmove+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wmemmove+28), %r12
	or	%r12, lo(.L__profc_wmemmove+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.65+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.65+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.65+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.65+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wmemmove+32), %r3
	or	%r3, lo(.L__profc_wmemmove+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wmemmove+36), %r12
	or	%r12, lo(.L__profc_wmemmove+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.65+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.65+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.65+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.65+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB65_11
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.66), %r3
	or	%r3, lo(__llvm_gcov_ctr.66), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.66+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.66+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	mov	hi(.L__profc_wmemset), %r3
	or	%r3, lo(.L__profc_wmemset), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wmemset+4), %r12
	or	%r12, lo(.L__profc_wmemset+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.66+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.66+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.66+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.66+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_wmemset+8), %r3
	or	%r3, lo(.L__profc_wmemset+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_wmemset+12), %r12
	or	%r12, lo(.L__profc_wmemset+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_bcopy), %r3
	or	%r3, lo(.L__profc_bcopy), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_bcopy+4), %r12
	or	%r12, lo(.L__profc_bcopy+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.67), %r3
	or	%r3, lo(__llvm_gcov_ctr.67), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.67+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.67+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_bcopy+8), %r3
	or	%r3, lo(.L__profc_bcopy+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_bcopy+12), %r12
	or	%r12, lo(.L__profc_bcopy+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_bcopy+16), %r3
	or	%r3, lo(.L__profc_bcopy+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_bcopy+20), %r12
	or	%r12, lo(.L__profc_bcopy+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.67+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.67+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.67+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.67+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_bcopy+24), %r3
	or	%r3, lo(.L__profc_bcopy+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_bcopy+28), %r12
	or	%r12, lo(.L__profc_bcopy+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB67_8
	st	%r3, 0[%r9]
.LBB67_8:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB67_11
	nop
	bt	.LBB67_9
	nop
.LBB67_9:                               !   in Loop: Header=BB67_8 Depth=1
	mov	hi(__llvm_gcov_ctr.67+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.67+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.67+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.67+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_bcopy+32), %r3
	or	%r3, lo(.L__profc_bcopy+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_bcopy+36), %r12
	or	%r12, lo(.L__profc_bcopy+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.67+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.67+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.67+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.67+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB67_12
	st	%r3, 0[%r9]
.LBB67_12:
	mov	hi(__llvm_gcov_ctr.67+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.67+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.67+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.67+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB67_13
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.68), %r3
	or	%r3, lo(__llvm_gcov_ctr.68), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.68+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.68+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	st	%r18, -20[%fp]
	mov	hi(.L__profc_rotl64), %r9
	or	%r9, lo(.L__profc_rotl64), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_rotl64+4), %r13
	or	%r13, lo(.L__profc_rotl64+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(__llvm_gcov_ctr.69), %r3
	or	%r3, lo(__llvm_gcov_ctr.69), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.69+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.69+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	st	%r18, -20[%fp]
	mov	hi(.L__profc_rotr64), %r9
	or	%r9, lo(.L__profc_rotr64), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_rotr64+4), %r13
	or	%r13, lo(.L__profc_rotr64+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(__llvm_gcov_ctr.70), %r3
	or	%r3, lo(__llvm_gcov_ctr.70), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.70+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.70+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc_rotl32), %r3
	or	%r3, lo(.L__profc_rotl32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_rotl32+4), %r12
	or	%r12, lo(.L__profc_rotl32+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.71), %r3
	or	%r3, lo(__llvm_gcov_ctr.71), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.71+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.71+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc_rotr32), %r3
	or	%r3, lo(.L__profc_rotr32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_rotr32+4), %r12
	or	%r12, lo(.L__profc_rotr32+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.72), %r3
	or	%r3, lo(__llvm_gcov_ctr.72), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.72+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.72+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc_rotl_sz), %r3
	or	%r3, lo(.L__profc_rotl_sz), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_rotl_sz+4), %r12
	or	%r12, lo(.L__profc_rotl_sz+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.73), %r3
	or	%r3, lo(__llvm_gcov_ctr.73), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.73+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.73+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc_rotr_sz), %r3
	or	%r3, lo(.L__profc_rotr_sz), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_rotr_sz+4), %r12
	or	%r12, lo(.L__profc_rotr_sz+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.74), %r3
	or	%r3, lo(__llvm_gcov_ctr.74), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.74+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.74+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st.h	%r6, -10[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc_rotl16), %r3
	or	%r3, lo(.L__profc_rotl16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_rotl16+4), %r12
	or	%r12, lo(.L__profc_rotl16+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.75), %r3
	or	%r3, lo(__llvm_gcov_ctr.75), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.75+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.75+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st.h	%r6, -10[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc_rotr16), %r3
	or	%r3, lo(.L__profc_rotr16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_rotr16+4), %r12
	or	%r12, lo(.L__profc_rotr16+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.76), %r3
	or	%r3, lo(__llvm_gcov_ctr.76), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.76+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.76+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st.b	%r6, -9[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc_rotl8), %r3
	or	%r3, lo(.L__profc_rotl8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_rotl8+4), %r12
	or	%r12, lo(.L__profc_rotl8+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.77), %r3
	or	%r3, lo(__llvm_gcov_ctr.77), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.77+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.77+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st.b	%r6, -9[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc_rotr8), %r3
	or	%r3, lo(.L__profc_rotr8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_rotr8+4), %r12
	or	%r12, lo(.L__profc_rotr8+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.78), %r3
	or	%r3, lo(__llvm_gcov_ctr.78), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.78+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.78+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st.h	%r6, -10[%fp]
	mov	hi(.L__profc_bswap_16), %r3
	or	%r3, lo(.L__profc_bswap_16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_bswap_16+4), %r12
	or	%r12, lo(.L__profc_bswap_16+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.79), %r3
	or	%r3, lo(__llvm_gcov_ctr.79), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.79+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.79+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_bswap_32), %r3
	or	%r3, lo(.L__profc_bswap_32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_bswap_32+4), %r12
	or	%r12, lo(.L__profc_bswap_32+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.80), %r3
	or	%r3, lo(__llvm_gcov_ctr.80), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.80+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.80+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r9
	st	%r7, 0[%r9]
	st	%r6, -16[%fp]
	mov	hi(.L__profc_bswap_64), %r3
	or	%r3, lo(.L__profc_bswap_64), %r12
	ld	0[%r12], %r3
	mov	hi(.L__profc_bswap_64+4), %r13
	or	%r13, lo(.L__profc_bswap_64+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r3, %r16, %r3
	st	%r13, 0[%r14]
	st	%r3, 0[%r12]
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
	mov	hi(.L__profc_ffs), %r3
	or	%r3, lo(.L__profc_ffs), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ffs+4), %r12
	or	%r12, lo(.L__profc_ffs+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_ffs+8), %r3
	or	%r3, lo(.L__profc_ffs+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ffs+12), %r12
	or	%r12, lo(.L__profc_ffs+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.81), %r3
	or	%r3, lo(__llvm_gcov_ctr.81), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.81+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.81+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_ffs+16), %r3
	or	%r3, lo(.L__profc_ffs+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ffs+20), %r12
	or	%r12, lo(.L__profc_ffs+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB81_7
	st	%r3, -12[%fp]
.LBB81_4:                               !   in Loop: Header=BB81_1 Depth=1
	bt	.LBB81_5
	nop
.LBB81_5:                               !   in Loop: Header=BB81_1 Depth=1
	mov	hi(__llvm_gcov_ctr.81+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.81+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.81+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.81+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB81_1
	st	%r3, -20[%fp]
.LBB81_6:
	mov	hi(__llvm_gcov_ctr.81+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.81+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.81+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.81+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_libiberty_ffs), %r3
	or	%r3, lo(.L__profc_libiberty_ffs), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_libiberty_ffs+4), %r12
	or	%r12, lo(.L__profc_libiberty_ffs+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB82_2
	sub	%sp, 0x18, %sp
	bt	.LBB82_1
	nop
.LBB82_1:
	mov	hi(__llvm_gcov_ctr.82+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.82+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.82+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.82+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_libiberty_ffs+8), %r3
	or	%r3, lo(.L__profc_libiberty_ffs+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_libiberty_ffs+12), %r12
	or	%r12, lo(.L__profc_libiberty_ffs+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	bt	.LBB82_7
	st	%r3, -12[%fp]
.LBB82_2:
	mov	hi(__llvm_gcov_ctr.82), %r3
	or	%r3, lo(__llvm_gcov_ctr.82), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.82+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.82+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_libiberty_ffs+16), %r3
	or	%r3, lo(.L__profc_libiberty_ffs+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_libiberty_ffs+20), %r12
	or	%r12, lo(.L__profc_libiberty_ffs+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	sha	%r3, -0x1, %r3
	bt	.LBB82_5
	st	%r3, -16[%fp]
.LBB82_5:                               !   in Loop: Header=BB82_3 Depth=1
	mov	hi(__llvm_gcov_ctr.82+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.82+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.82+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.82+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	sub	%sp, 0x18, %sp
                                        ! kill: def $r3 killed $r6
	mov	hi(__llvm_gcov_ctr.83), %r3
	or	%r3, lo(__llvm_gcov_ctr.83), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.83+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.83+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc_gl_isinff), %r3
	or	%r3, lo(.L__profc_gl_isinff), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_gl_isinff+4), %r12
	or	%r12, lo(.L__profc_gl_isinff+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltsf2
	mov	0xff7fffff, %r7
	mov	0x1, %r3
	sub.f	%rv, 0x0, %r0
	bmi	.LBB83_3
	st	%r3, -16[%fp]
	bt	.LBB83_1
	nop
.LBB83_1:
	mov	hi(__llvm_gcov_ctr.83+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.83+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.83+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.83+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_gl_isinff+8), %r3
	or	%r3, lo(.L__profc_gl_isinff+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_gl_isinff+12), %r12
	or	%r12, lo(.L__profc_gl_isinff+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r6
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__gtsf2
	mov	0x7f7fffff, %r7
	sub.f	%rv, 0x0, %r0
	sgt	%r3
	st	%r3, -20[%fp]
	sub.f	%rv, 0x0, %r0
	bgt	.LBB83_3
	st	%r3, -16[%fp]
	bt	.LBB83_2
	nop
.LBB83_2:
	ld	-20[%fp], %r3
	mov	hi(__llvm_gcov_ctr.83+16), %r9
	or	%r9, lo(__llvm_gcov_ctr.83+16), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.83+20), %r13
	or	%r13, lo(__llvm_gcov_ctr.83+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_gl_isinff+16), %r9
	or	%r9, lo(.L__profc_gl_isinff+16), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_gl_isinff+20), %r13
	or	%r13, lo(.L__profc_gl_isinff+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB83_3
	st	%r3, -16[%fp]
.LBB83_3:
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
	mov	hi(__llvm_gcov_ctr.84), %r3
	or	%r3, lo(__llvm_gcov_ctr.84), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.84+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.84+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	mov	hi(.L__profc_gl_isinfd), %r9
	or	%r9, lo(.L__profc_gl_isinfd), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_gl_isinfd+4), %r13
	or	%r13, lo(.L__profc_gl_isinfd+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	ld	0[%r3], %r7
	ld	-16[%fp], %r6
	mov	0xffefffff, %r18
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltdf2
	or	%r1, 0x0, %r19
	mov	0x1, %r3
	sub.f	%rv, 0x0, %r0
	bmi	.LBB84_3
	st	%r3, -20[%fp]
	bt	.LBB84_1
	nop
.LBB84_1:
	mov	hi(__llvm_gcov_ctr.84+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.84+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.84+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.84+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_gl_isinfd+8), %r3
	or	%r3, lo(.L__profc_gl_isinfd+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_gl_isinfd+12), %r12
	or	%r12, lo(.L__profc_gl_isinfd+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	st	%r3, -24[%fp]
	sub.f	%rv, 0x0, %r0
	bgt	.LBB84_3
	st	%r3, -20[%fp]
	bt	.LBB84_2
	nop
.LBB84_2:
	ld	-24[%fp], %r3
	mov	hi(__llvm_gcov_ctr.84+16), %r9
	or	%r9, lo(__llvm_gcov_ctr.84+16), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.84+20), %r13
	or	%r13, lo(__llvm_gcov_ctr.84+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_gl_isinfd+16), %r9
	or	%r9, lo(.L__profc_gl_isinfd+16), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_gl_isinfd+20), %r13
	or	%r13, lo(.L__profc_gl_isinfd+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB84_3
	st	%r3, -20[%fp]
.LBB84_3:
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
	mov	hi(__llvm_gcov_ctr.85), %r3
	or	%r3, lo(__llvm_gcov_ctr.85), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.85+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.85+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	mov	hi(.L__profc_gl_isinfl), %r9
	or	%r9, lo(.L__profc_gl_isinfl), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_gl_isinfl+4), %r13
	or	%r13, lo(.L__profc_gl_isinfl+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	ld	0[%r3], %r7
	ld	-16[%fp], %r6
	mov	0xffefffff, %r18
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltdf2
	or	%r1, 0x0, %r19
	mov	0x1, %r3
	sub.f	%rv, 0x0, %r0
	bmi	.LBB85_3
	st	%r3, -20[%fp]
	bt	.LBB85_1
	nop
.LBB85_1:
	mov	hi(__llvm_gcov_ctr.85+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.85+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.85+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.85+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_gl_isinfl+8), %r3
	or	%r3, lo(.L__profc_gl_isinfl+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_gl_isinfl+12), %r12
	or	%r12, lo(.L__profc_gl_isinfl+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	st	%r3, -24[%fp]
	sub.f	%rv, 0x0, %r0
	bgt	.LBB85_3
	st	%r3, -20[%fp]
	bt	.LBB85_2
	nop
.LBB85_2:
	ld	-24[%fp], %r3
	mov	hi(__llvm_gcov_ctr.85+16), %r9
	or	%r9, lo(__llvm_gcov_ctr.85+16), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.85+20), %r13
	or	%r13, lo(__llvm_gcov_ctr.85+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_gl_isinfl+16), %r9
	or	%r9, lo(.L__profc_gl_isinfl+16), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_gl_isinfl+20), %r13
	or	%r13, lo(.L__profc_gl_isinfl+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB85_3
	st	%r3, -20[%fp]
.LBB85_3:
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
	mov	hi(__llvm_gcov_ctr.86), %r3
	or	%r3, lo(__llvm_gcov_ctr.86), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.86+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.86+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc__Qp_itoq), %r3
	or	%r3, lo(.L__profc__Qp_itoq), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc__Qp_itoq+4), %r12
	or	%r12, lo(.L__profc__Qp_itoq+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.87), %r3
	or	%r3, lo(__llvm_gcov_ctr.87), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.87+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.87+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc_ldexpf), %r3
	or	%r3, lo(.L__profc_ldexpf), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldexpf+4), %r12
	or	%r12, lo(.L__profc_ldexpf+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	and	%r3, 0x7fffffff, %r3
	sub.f	%r3, 0x7f800000, %r0
	bgt	.LBB87_10
	nop
	bt	.LBB87_1
	nop
.LBB87_1:
	mov	hi(__llvm_gcov_ctr.87+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.87+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.87+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.87+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_ldexpf+16), %r3
	or	%r3, lo(.L__profc_ldexpf+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldexpf+20), %r12
	or	%r12, lo(.L__profc_ldexpf+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	beq	.LBB87_10
	nop
	bt	.LBB87_2
	nop
.LBB87_2:
	mov	hi(__llvm_gcov_ctr.87+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.87+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.87+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.87+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_ldexpf+24), %r3
	or	%r3, lo(.L__profc_ldexpf+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldexpf+28), %r12
	or	%r12, lo(.L__profc_ldexpf+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB87_3
	st	%r3, 0[%r9]
.LBB87_3:
	mov	hi(.L__profc_ldexpf+8), %r3
	or	%r3, lo(.L__profc_ldexpf+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldexpf+12), %r12
	or	%r12, lo(.L__profc_ldexpf+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r12
	mov	hi(.L__profc_ldexpf+32), %r3
	or	%r3, lo(.L__profc_ldexpf+32), %r9
	ld	0[%r9], %r16
	mov	hi(.L__profc_ldexpf+36), %r3
	or	%r3, lo(.L__profc_ldexpf+36), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r3
	sub.f	%r12, 0x0, %r0
	sel.mi %r3, %r13, %r13
	sub.f	%r3, 0x0, %r0
	seq	%r3
	add	%r16, %r3, %r3
	sub.f	%r12, 0x0, %r0
	sel.mi %r3, %r16, %r3
	st	%r13, 0[%r14]
	st	%r3, 0[%r9]
	mov	0x40000000, %r9
	mov	0x3f000000, %r3
	sub.f	%r12, 0x0, %r0
	sel.mi %r3, %r9, %r3
	bt	.LBB87_4
	st	%r3, -20[%fp]
.LBB87_4:                               ! =>This Inner Loop Header: Depth=1
	mov	hi(.L__profc_ldexpf+40), %r3
	or	%r3, lo(.L__profc_ldexpf+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldexpf+44), %r12
	or	%r12, lo(.L__profc_ldexpf+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	sh	%r3, -0x1f, %r9
	add	%r3, %r9, %r9
	and	%r9, 0xfffffffe, %r9
	sub	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB87_6
	nop
	bt	.LBB87_5
	nop
.LBB87_5:                               !   in Loop: Header=BB87_4 Depth=1
	mov	hi(__llvm_gcov_ctr.87+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.87+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.87+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.87+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_ldexpf+48), %r3
	or	%r3, lo(.L__profc_ldexpf+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldexpf+52), %r12
	or	%r12, lo(.L__profc_ldexpf+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__mulsf3
	ld	-12[%fp], %r6
	bt	.LBB87_6
	st	%rv, -12[%fp]
.LBB87_6:                               !   in Loop: Header=BB87_4 Depth=1
	ld	-16[%fp], %r3
	sh	%r3, -0x1f, %r9
	add	%r3, %r9, %r3
	sha	%r3, -0x1, %r3
	st	%r3, -16[%fp]
	ld	-16[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB87_8
	nop
	bt	.LBB87_7
	nop
.LBB87_7:
	mov	hi(.L__profc_ldexpf+56), %r3
	or	%r3, lo(.L__profc_ldexpf+56), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldexpf+60), %r12
	or	%r12, lo(.L__profc_ldexpf+60), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB87_9
	st	%r3, 0[%r9]
.LBB87_8:                               !   in Loop: Header=BB87_4 Depth=1
	mov	hi(__llvm_gcov_ctr.87+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.87+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.87+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.87+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__mulsf3
	or	%r7, 0x0, %r6
	bt	.LBB87_4
	st	%rv, -20[%fp]
.LBB87_9:
	bt	.LBB87_10
	nop
.LBB87_10:
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
	mov	hi(__llvm_gcov_ctr.88), %r3
	or	%r3, lo(__llvm_gcov_ctr.88), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.88+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.88+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	st	%r18, -20[%fp]
	mov	hi(.L__profc_ldexp), %r9
	or	%r9, lo(.L__profc_ldexp), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_ldexp+4), %r13
	or	%r13, lo(.L__profc_ldexp+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	bne	.LBB88_10
	nop
	bt	.LBB88_1
	nop
.LBB88_1:
	mov	hi(__llvm_gcov_ctr.88+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.88+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.88+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.88+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_ldexp+16), %r3
	or	%r3, lo(.L__profc_ldexp+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldexp+20), %r12
	or	%r12, lo(.L__profc_ldexp+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	beq	.LBB88_10
	nop
	bt	.LBB88_2
	nop
.LBB88_2:
	mov	hi(__llvm_gcov_ctr.88+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.88+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.88+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.88+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_ldexp+24), %r3
	or	%r3, lo(.L__profc_ldexp+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldexp+28), %r12
	or	%r12, lo(.L__profc_ldexp+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB88_3
	st	%r3, 0[%r9]
.LBB88_3:
	mov	hi(.L__profc_ldexp+8), %r3
	or	%r3, lo(.L__profc_ldexp+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldexp+12), %r12
	or	%r12, lo(.L__profc_ldexp+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r12
	mov	hi(.L__profc_ldexp+32), %r3
	or	%r3, lo(.L__profc_ldexp+32), %r9
	ld	0[%r9], %r16
	mov	hi(.L__profc_ldexp+36), %r3
	or	%r3, lo(.L__profc_ldexp+36), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r3
	sub.f	%r12, 0x0, %r0
	sel.mi %r3, %r13, %r13
	sub.f	%r3, 0x0, %r0
	seq	%r3
	add	%r16, %r3, %r3
	sub.f	%r12, 0x0, %r0
	sel.mi %r3, %r16, %r3
	st	%r13, 0[%r14]
	st	%r3, 0[%r9]
	mov	0x40000000, %r9
	mov	0x3fe00000, %r3
	sub.f	%r12, 0x0, %r0
	sel.mi %r3, %r9, %r3
	sub	%fp, 0x20, %r9
	or	%r9, 0x4, %r12
	or	%r0, 0x0, %r9
	st	%r9, 0[%r12]
	bt	.LBB88_4
	st	%r3, -32[%fp]
.LBB88_4:                               ! =>This Inner Loop Header: Depth=1
	mov	hi(.L__profc_ldexp+40), %r3
	or	%r3, lo(.L__profc_ldexp+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldexp+44), %r12
	or	%r12, lo(.L__profc_ldexp+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r3
	sh	%r3, -0x1f, %r9
	add	%r3, %r9, %r9
	and	%r9, 0xfffffffe, %r9
	sub	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB88_6
	nop
	bt	.LBB88_5
	nop
.LBB88_5:                               !   in Loop: Header=BB88_4 Depth=1
	mov	hi(__llvm_gcov_ctr.88+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.88+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.88+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.88+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_ldexp+48), %r3
	or	%r3, lo(.L__profc_ldexp+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldexp+52), %r12
	or	%r12, lo(.L__profc_ldexp+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	bt	.LBB88_6
	st	%rv, -16[%fp]
.LBB88_6:                               !   in Loop: Header=BB88_4 Depth=1
	ld	-20[%fp], %r3
	sh	%r3, -0x1f, %r9
	add	%r3, %r9, %r3
	sha	%r3, -0x1, %r3
	st	%r3, -20[%fp]
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB88_8
	nop
	bt	.LBB88_7
	nop
.LBB88_7:
	mov	hi(.L__profc_ldexp+56), %r3
	or	%r3, lo(.L__profc_ldexp+56), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldexp+60), %r12
	or	%r12, lo(.L__profc_ldexp+60), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB88_9
	st	%r3, 0[%r9]
.LBB88_8:                               !   in Loop: Header=BB88_4 Depth=1
	mov	hi(__llvm_gcov_ctr.88+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.88+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.88+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.88+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	bt	.LBB88_4
	st	%rv, -32[%fp]
.LBB88_9:
	bt	.LBB88_10
	nop
.LBB88_10:
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
	mov	hi(__llvm_gcov_ctr.89), %r3
	or	%r3, lo(__llvm_gcov_ctr.89), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.89+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.89+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	st	%r18, -20[%fp]
	mov	hi(.L__profc_ldexpl), %r9
	or	%r9, lo(.L__profc_ldexpl), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_ldexpl+4), %r13
	or	%r13, lo(.L__profc_ldexpl+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	bne	.LBB89_10
	nop
	bt	.LBB89_1
	nop
.LBB89_1:
	mov	hi(__llvm_gcov_ctr.89+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.89+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.89+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.89+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_ldexpl+16), %r3
	or	%r3, lo(.L__profc_ldexpl+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldexpl+20), %r12
	or	%r12, lo(.L__profc_ldexpl+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	beq	.LBB89_10
	nop
	bt	.LBB89_2
	nop
.LBB89_2:
	mov	hi(__llvm_gcov_ctr.89+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.89+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.89+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.89+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_ldexpl+24), %r3
	or	%r3, lo(.L__profc_ldexpl+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldexpl+28), %r12
	or	%r12, lo(.L__profc_ldexpl+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB89_3
	st	%r3, 0[%r9]
.LBB89_3:
	mov	hi(.L__profc_ldexpl+8), %r3
	or	%r3, lo(.L__profc_ldexpl+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldexpl+12), %r12
	or	%r12, lo(.L__profc_ldexpl+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r12
	mov	hi(.L__profc_ldexpl+32), %r3
	or	%r3, lo(.L__profc_ldexpl+32), %r9
	ld	0[%r9], %r16
	mov	hi(.L__profc_ldexpl+36), %r3
	or	%r3, lo(.L__profc_ldexpl+36), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r3
	sub.f	%r12, 0x0, %r0
	sel.mi %r3, %r13, %r13
	sub.f	%r3, 0x0, %r0
	seq	%r3
	add	%r16, %r3, %r3
	sub.f	%r12, 0x0, %r0
	sel.mi %r3, %r16, %r3
	st	%r13, 0[%r14]
	st	%r3, 0[%r9]
	mov	0x40000000, %r9
	mov	0x3fe00000, %r3
	sub.f	%r12, 0x0, %r0
	sel.mi %r3, %r9, %r3
	sub	%fp, 0x20, %r9
	or	%r9, 0x4, %r12
	or	%r0, 0x0, %r9
	st	%r9, 0[%r12]
	bt	.LBB89_4
	st	%r3, -32[%fp]
.LBB89_4:                               ! =>This Inner Loop Header: Depth=1
	mov	hi(.L__profc_ldexpl+40), %r3
	or	%r3, lo(.L__profc_ldexpl+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldexpl+44), %r12
	or	%r12, lo(.L__profc_ldexpl+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r3
	sh	%r3, -0x1f, %r9
	add	%r3, %r9, %r9
	and	%r9, 0xfffffffe, %r9
	sub	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB89_6
	nop
	bt	.LBB89_5
	nop
.LBB89_5:                               !   in Loop: Header=BB89_4 Depth=1
	mov	hi(__llvm_gcov_ctr.89+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.89+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.89+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.89+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_ldexpl+48), %r3
	or	%r3, lo(.L__profc_ldexpl+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldexpl+52), %r12
	or	%r12, lo(.L__profc_ldexpl+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	bt	.LBB89_6
	st	%rv, -16[%fp]
.LBB89_6:                               !   in Loop: Header=BB89_4 Depth=1
	ld	-20[%fp], %r3
	sh	%r3, -0x1f, %r9
	add	%r3, %r9, %r3
	sha	%r3, -0x1, %r3
	st	%r3, -20[%fp]
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB89_8
	nop
	bt	.LBB89_7
	nop
.LBB89_7:
	mov	hi(.L__profc_ldexpl+56), %r3
	or	%r3, lo(.L__profc_ldexpl+56), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_ldexpl+60), %r12
	or	%r12, lo(.L__profc_ldexpl+60), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB89_9
	st	%r3, 0[%r9]
.LBB89_8:                               !   in Loop: Header=BB89_4 Depth=1
	mov	hi(__llvm_gcov_ctr.89+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.89+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.89+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.89+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	bt	.LBB89_4
	st	%rv, -32[%fp]
.LBB89_9:
	bt	.LBB89_10
	nop
.LBB89_10:
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
	mov	hi(__llvm_gcov_ctr.90), %r3
	or	%r3, lo(__llvm_gcov_ctr.90), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.90+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.90+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	mov	hi(.L__profc_memxor), %r3
	or	%r3, lo(.L__profc_memxor), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memxor+4), %r12
	or	%r12, lo(.L__profc_memxor+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_memxor+8), %r3
	or	%r3, lo(.L__profc_memxor+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memxor+12), %r12
	or	%r12, lo(.L__profc_memxor+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.90+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.90+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.90+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.90+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	sub	%sp, 0x28, %sp
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	mov	hi(.L__profc_strncat), %r3
	or	%r3, lo(.L__profc_strncat), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strncat+4), %r12
	or	%r12, lo(.L__profc_strncat+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	beq	.LBB91_4
	st	%r3, -32[%fp]
	bt	.LBB91_2
	nop
.LBB91_2:                               !   in Loop: Header=BB91_1 Depth=1
	mov	hi(__llvm_gcov_ctr.91), %r3
	or	%r3, lo(__llvm_gcov_ctr.91), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.91+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.91+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_strncat+16), %r3
	or	%r3, lo(.L__profc_strncat+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strncat+20), %r12
	or	%r12, lo(.L__profc_strncat+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	uld.b	0[%r3], %r9
	ld	-24[%fp], %r3
	st.b	%r9, 0[%r3]
	sub.f	%r9, 0x0, %r0
	sne	%r3
	st	%r3, -36[%fp]
	sub.f	%r9, 0x0, %r0
	beq	.LBB91_4
	st	%r3, -32[%fp]
	bt	.LBB91_3
	nop
.LBB91_3:                               !   in Loop: Header=BB91_1 Depth=1
	ld	-36[%fp], %r3
	mov	hi(__llvm_gcov_ctr.91+8), %r9
	or	%r9, lo(__llvm_gcov_ctr.91+8), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.91+12), %r13
	or	%r13, lo(__llvm_gcov_ctr.91+12), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_strncat+24), %r9
	or	%r9, lo(.L__profc_strncat+24), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_strncat+28), %r13
	or	%r13, lo(.L__profc_strncat+28), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB91_4
	st	%r3, -32[%fp]
.LBB91_4:                               !   in Loop: Header=BB91_1 Depth=1
	ld	-32[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB91_7
	nop
	bt	.LBB91_5
	nop
.LBB91_5:                               !   in Loop: Header=BB91_1 Depth=1
	mov	hi(.L__profc_strncat+8), %r3
	or	%r3, lo(.L__profc_strncat+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strncat+12), %r12
	or	%r12, lo(.L__profc_strncat+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB91_6
	st	%r3, 0[%r9]
.LBB91_6:                               !   in Loop: Header=BB91_1 Depth=1
	mov	hi(__llvm_gcov_ctr.91+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.91+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.91+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.91+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
.LBB91_7:
	mov	hi(__llvm_gcov_ctr.91+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.91+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.91+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.91+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB91_9
	nop
	bt	.LBB91_8
	nop
.LBB91_8:
	mov	hi(__llvm_gcov_ctr.91+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.91+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.91+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.91+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_strncat+32), %r3
	or	%r3, lo(.L__profc_strncat+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strncat+36), %r12
	or	%r12, lo(.L__profc_strncat+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-24[%fp], %r9
	or	%r0, 0x0, %r3
	bt	.LBB91_9
	st.b	%r3, 0[%r9]
.LBB91_9:
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
	sub	%sp, 0x20, %sp
	mov	hi(__llvm_gcov_ctr.92), %r3
	or	%r3, lo(__llvm_gcov_ctr.92), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.92+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.92+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc_strnlen), %r3
	or	%r3, lo(.L__profc_strnlen), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strnlen+4), %r12
	or	%r12, lo(.L__profc_strnlen+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	bt	.LBB92_1
	st	%r3, -20[%fp]
.LBB92_1:                               ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r9
	ld	-16[%fp], %r12
	or	%r0, 0x0, %r3
	sub.f	%r9, %r12, %r0
	buge	.LBB92_4
	st	%r3, -24[%fp]
	bt	.LBB92_2
	nop
.LBB92_2:                               !   in Loop: Header=BB92_1 Depth=1
	mov	hi(__llvm_gcov_ctr.92+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.92+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.92+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.92+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_strnlen+16), %r3
	or	%r3, lo(.L__profc_strnlen+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strnlen+20), %r12
	or	%r12, lo(.L__profc_strnlen+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	ld	-20[%fp], %r9
	ld.b	[%r3 add %r9], %r9
	sub.f	%r9, 0x0, %r0
	sne	%r3
	st	%r3, -28[%fp]
	sub.f	%r9, 0x0, %r0
	beq	.LBB92_4
	st	%r3, -24[%fp]
	bt	.LBB92_3
	nop
.LBB92_3:                               !   in Loop: Header=BB92_1 Depth=1
	ld	-28[%fp], %r3
	mov	hi(__llvm_gcov_ctr.92+16), %r9
	or	%r9, lo(__llvm_gcov_ctr.92+16), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.92+20), %r13
	or	%r13, lo(__llvm_gcov_ctr.92+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_strnlen+24), %r9
	or	%r9, lo(.L__profc_strnlen+24), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_strnlen+28), %r13
	or	%r13, lo(.L__profc_strnlen+28), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB92_4
	st	%r3, -24[%fp]
.LBB92_4:                               !   in Loop: Header=BB92_1 Depth=1
	ld	-24[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB92_7
	nop
	bt	.LBB92_5
	nop
.LBB92_5:                               !   in Loop: Header=BB92_1 Depth=1
	mov	hi(.L__profc_strnlen+8), %r3
	or	%r3, lo(.L__profc_strnlen+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strnlen+12), %r12
	or	%r12, lo(.L__profc_strnlen+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB92_6
	st	%r3, 0[%r9]
.LBB92_6:                               !   in Loop: Header=BB92_1 Depth=1
	mov	hi(__llvm_gcov_ctr.92+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.92+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.92+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.92+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB92_1
	st	%r3, -20[%fp]
.LBB92_7:
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
	st	%r7, -20[%fp]
	mov	hi(.L__profc_strpbrk), %r3
	or	%r3, lo(.L__profc_strpbrk), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strpbrk+4), %r12
	or	%r12, lo(.L__profc_strpbrk+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB93_1
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_strpbrk+8), %r3
	or	%r3, lo(.L__profc_strpbrk+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strpbrk+12), %r12
	or	%r12, lo(.L__profc_strpbrk+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_strpbrk+16), %r3
	or	%r3, lo(.L__profc_strpbrk+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strpbrk+20), %r12
	or	%r12, lo(.L__profc_strpbrk+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.93+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.93+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.93+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.93+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_strpbrk+24), %r3
	or	%r3, lo(.L__profc_strpbrk+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strpbrk+28), %r12
	or	%r12, lo(.L__profc_strpbrk+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	bt	.LBB93_9
	st	%r3, -12[%fp]
.LBB93_6:                               !   in Loop: Header=BB93_3 Depth=2
	mov	hi(__llvm_gcov_ctr.93+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.93+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.93+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.93+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB93_3
	st	%r3, 0[%r9]
.LBB93_7:                               !   in Loop: Header=BB93_1 Depth=1
	mov	hi(__llvm_gcov_ctr.93+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.93+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.93+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.93+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB93_1
	st	%r3, -16[%fp]
.LBB93_8:
	mov	hi(__llvm_gcov_ctr.93), %r3
	or	%r3, lo(__llvm_gcov_ctr.93), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.93+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.93+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.94), %r3
	or	%r3, lo(__llvm_gcov_ctr.94), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.94+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.94+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc_strrchr), %r3
	or	%r3, lo(.L__profc_strrchr), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strrchr+4), %r12
	or	%r12, lo(.L__profc_strrchr+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	bt	.LBB94_2
	st	%r3, -20[%fp]
.LBB94_1:                               !   in Loop: Header=BB94_2 Depth=1
	mov	hi(__llvm_gcov_ctr.94+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.94+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.94+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.94+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_strrchr+8), %r3
	or	%r3, lo(.L__profc_strrchr+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strrchr+12), %r12
	or	%r12, lo(.L__profc_strrchr+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB94_2
	st	%r3, 0[%r9]
.LBB94_2:                               ! =>This Inner Loop Header: Depth=1
	ld	-12[%fp], %r3
	ld.b	0[%r3], %r3
	ld	-16[%fp], %r9
	sub.f	%r3, %r9, %r0
	bne	.LBB94_4
	nop
	bt	.LBB94_3
	nop
.LBB94_3:                               !   in Loop: Header=BB94_2 Depth=1
	mov	hi(__llvm_gcov_ctr.94+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.94+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.94+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.94+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_strrchr+16), %r3
	or	%r3, lo(.L__profc_strrchr+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strrchr+20), %r12
	or	%r12, lo(.L__profc_strrchr+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r3
	bt	.LBB94_4
	st	%r3, -20[%fp]
.LBB94_4:                               !   in Loop: Header=BB94_2 Depth=1
	bt	.LBB94_5
	nop
.LBB94_5:                               !   in Loop: Header=BB94_2 Depth=1
	ld	-12[%fp], %r3
	add	%r3, 0x1, %r9
	st	%r9, -12[%fp]
	uld.b	0[%r3], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB94_1
	nop
	bt	.LBB94_6
	nop
.LBB94_6:
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
	mov	hi(.L__profc_strstr), %r3
	or	%r3, lo(.L__profc_strstr), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strstr+4), %r12
	or	%r12, lo(.L__profc_strstr+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.95), %r3
	or	%r3, lo(__llvm_gcov_ctr.95), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.95+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.95+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_strstr+8), %r3
	or	%r3, lo(.L__profc_strstr+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strstr+12), %r12
	or	%r12, lo(.L__profc_strstr+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_strstr+16), %r3
	or	%r3, lo(.L__profc_strstr+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strstr+20), %r12
	or	%r12, lo(.L__profc_strstr+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.95+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.95+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.95+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.95+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_strstr+24), %r3
	or	%r3, lo(.L__profc_strstr+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_strstr+28), %r12
	or	%r12, lo(.L__profc_strstr+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-24[%fp], %r3
	bt	.LBB95_9
	st	%r3, -12[%fp]
.LBB95_6:                               !   in Loop: Header=BB95_3 Depth=1
	bt	.LBB95_7
	nop
.LBB95_7:                               !   in Loop: Header=BB95_3 Depth=1
	mov	hi(__llvm_gcov_ctr.95+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.95+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.95+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.95+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-24[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB95_3
	st	%r3, -24[%fp]
.LBB95_8:
	mov	hi(__llvm_gcov_ctr.95+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.95+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.95+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.95+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_copysign), %r9
	or	%r9, lo(.L__profc_copysign), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_copysign+4), %r13
	or	%r13, lo(.L__profc_copysign+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	ld	0[%r3], %r7
	ld	-24[%fp], %r6
	or	%r0, 0x0, %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__ltdf2
	or	%r19, 0x0, %r18
	sub.f	%rv, 0x0, %r0
	bpl	.LBB96_3
	nop
	bt	.LBB96_1
	nop
.LBB96_1:
	mov	hi(__llvm_gcov_ctr.96), %r3
	or	%r3, lo(__llvm_gcov_ctr.96), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.96+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.96+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_copysign+24), %r3
	or	%r3, lo(.L__profc_copysign+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_copysign+28), %r12
	or	%r12, lo(.L__profc_copysign+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x20, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r7
	ld	-32[%fp], %r6
	or	%r0, 0x0, %r19
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__gtdf2
	or	%r19, 0x0, %r18
	sub.f	%rv, 0x1, %r0
	blt	.LBB96_3
	nop
	bt	.LBB96_2
	nop
.LBB96_2:
	mov	hi(__llvm_gcov_ctr.96+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.96+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.96+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.96+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_copysign+32), %r3
	or	%r3, lo(.L__profc_copysign+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_copysign+36), %r12
	or	%r12, lo(.L__profc_copysign+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB96_6
	st	%r3, 0[%r9]
.LBB96_3:
	mov	hi(.L__profc_copysign+16), %r3
	or	%r3, lo(.L__profc_copysign+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_copysign+20), %r12
	or	%r12, lo(.L__profc_copysign+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	blt	.LBB96_7
	nop
	bt	.LBB96_4
	nop
.LBB96_4:
	mov	hi(__llvm_gcov_ctr.96+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.96+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.96+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.96+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_copysign+40), %r3
	or	%r3, lo(.L__profc_copysign+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_copysign+44), %r12
	or	%r12, lo(.L__profc_copysign+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	bpl	.LBB96_7
	nop
	bt	.LBB96_5
	nop
.LBB96_5:
	mov	hi(__llvm_gcov_ctr.96+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.96+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.96+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.96+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_copysign+48), %r3
	or	%r3, lo(.L__profc_copysign+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_copysign+52), %r12
	or	%r12, lo(.L__profc_copysign+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB96_6
	st	%r3, 0[%r9]
.LBB96_6:
	mov	hi(.L__profc_copysign+8), %r3
	or	%r3, lo(.L__profc_copysign+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_copysign+12), %r12
	or	%r12, lo(.L__profc_copysign+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-24[%fp], %r3
	xor	%r3, 0x80000000, %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB96_8
	st	%r3, -16[%fp]
.LBB96_7:
	mov	hi(__llvm_gcov_ctr.96+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.96+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.96+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.96+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	ld	0[%r3], %r9
	ld	-24[%fp], %r3
	sub	%fp, 0x10, %r12
	or	%r12, 0x4, %r12
	st	%r9, 0[%r12]
	bt	.LBB96_8
	st	%r3, -16[%fp]
.LBB96_8:
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
	mov	hi(.L__profc_memmem), %r3
	or	%r3, lo(.L__profc_memmem), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memmem+4), %r12
	or	%r12, lo(.L__profc_memmem+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.97), %r3
	or	%r3, lo(__llvm_gcov_ctr.97), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.97+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.97+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_memmem+8), %r3
	or	%r3, lo(.L__profc_memmem+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memmem+12), %r12
	or	%r12, lo(.L__profc_memmem+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	bt	.LBB97_13
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
	mov	hi(__llvm_gcov_ctr.97+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.97+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.97+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.97+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_memmem+16), %r3
	or	%r3, lo(.L__profc_memmem+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memmem+20), %r12
	or	%r12, lo(.L__profc_memmem+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	bt	.LBB97_13
	st	%r3, -12[%fp]
.LBB97_4:
	ld	-16[%fp], %r3
	bt	.LBB97_5
	st	%r3, -32[%fp]
.LBB97_5:                               ! =>This Inner Loop Header: Depth=1
	ld	-32[%fp], %r3
	ld	-36[%fp], %r9
	sub.f	%r3, %r9, %r0
	bugt	.LBB97_12
	nop
	bt	.LBB97_6
	nop
.LBB97_6:                               !   in Loop: Header=BB97_5 Depth=1
	mov	hi(.L__profc_memmem+24), %r3
	or	%r3, lo(.L__profc_memmem+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memmem+28), %r12
	or	%r12, lo(.L__profc_memmem+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-32[%fp], %r3
	ld.b	0[%r3], %r3
	ld	-24[%fp], %r9
	ld.b	0[%r9], %r9
	sub.f	%r3, %r9, %r0
	bne	.LBB97_10
	nop
	bt	.LBB97_7
	nop
.LBB97_7:                               !   in Loop: Header=BB97_5 Depth=1
	mov	hi(__llvm_gcov_ctr.97+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.97+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.97+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.97+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_memmem+40), %r3
	or	%r3, lo(.L__profc_memmem+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memmem+44), %r12
	or	%r12, lo(.L__profc_memmem+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	bne	.LBB97_10
	nop
	bt	.LBB97_8
	nop
.LBB97_8:
	mov	hi(__llvm_gcov_ctr.97+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.97+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.97+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.97+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_memmem+48), %r3
	or	%r3, lo(.L__profc_memmem+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memmem+52), %r12
	or	%r12, lo(.L__profc_memmem+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB97_9
	st	%r3, 0[%r9]
.LBB97_9:
	mov	hi(.L__profc_memmem+32), %r3
	or	%r3, lo(.L__profc_memmem+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_memmem+36), %r12
	or	%r12, lo(.L__profc_memmem+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-32[%fp], %r3
	bt	.LBB97_13
	st	%r3, -12[%fp]
.LBB97_10:                              !   in Loop: Header=BB97_5 Depth=1
	bt	.LBB97_11
	nop
.LBB97_11:                              !   in Loop: Header=BB97_5 Depth=1
	mov	hi(__llvm_gcov_ctr.97+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.97+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.97+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.97+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-32[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB97_5
	st	%r3, -32[%fp]
.LBB97_12:
	mov	hi(__llvm_gcov_ctr.97+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.97+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.97+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.97+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	bt	.LBB97_13
	st	%r3, -12[%fp]
.LBB97_13:
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
	mov	hi(__llvm_gcov_ctr.98), %r3
	or	%r3, lo(__llvm_gcov_ctr.98), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.98+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.98+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	st	%r18, -20[%fp]
	mov	hi(.L__profc_mempcpy), %r3
	or	%r3, lo(.L__profc_mempcpy), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_mempcpy+4), %r12
	or	%r12, lo(.L__profc_mempcpy+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc_frexp), %r9
	or	%r9, lo(.L__profc_frexp), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_frexp+4), %r13
	or	%r13, lo(.L__profc_frexp+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(__llvm_gcov_ctr.99), %r3
	or	%r3, lo(__llvm_gcov_ctr.99), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.99+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.99+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_frexp+8), %r3
	or	%r3, lo(.L__profc_frexp+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_frexp+12), %r12
	or	%r12, lo(.L__profc_frexp+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.99+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.99+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.99+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.99+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_frexp+16), %r3
	or	%r3, lo(.L__profc_frexp+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_frexp+20), %r12
	or	%r12, lo(.L__profc_frexp+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB99_4
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.99+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.99+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.99+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.99+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_frexp+24), %r3
	or	%r3, lo(.L__profc_frexp+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_frexp+28), %r12
	or	%r12, lo(.L__profc_frexp+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	bt	.LBB99_15
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
	bpl	.LBB99_14
	nop
	bt	.LBB99_8
	nop
.LBB99_8:
	mov	hi(__llvm_gcov_ctr.99+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.99+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.99+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.99+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_frexp+40), %r3
	or	%r3, lo(.L__profc_frexp+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_frexp+44), %r12
	or	%r12, lo(.L__profc_frexp+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	beq	.LBB99_14
	nop
	bt	.LBB99_9
	nop
.LBB99_9:
	mov	hi(.L__profc_frexp+48), %r3
	or	%r3, lo(.L__profc_frexp+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_frexp+52), %r12
	or	%r12, lo(.L__profc_frexp+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB99_10
	st	%r3, 0[%r9]
.LBB99_10:
	mov	hi(.L__profc_frexp+32), %r3
	or	%r3, lo(.L__profc_frexp+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_frexp+36), %r12
	or	%r12, lo(.L__profc_frexp+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB99_11
	st	%r3, 0[%r9]
.LBB99_11:                              ! =>This Inner Loop Header: Depth=1
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
	bt	.LBB99_12
	nop
.LBB99_12:                              !   in Loop: Header=BB99_11 Depth=1
	mov	hi(__llvm_gcov_ctr.99+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.99+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.99+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.99+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_frexp+56), %r3
	or	%r3, lo(.L__profc_frexp+56), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_frexp+60), %r12
	or	%r12, lo(.L__profc_frexp+60), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	bt	.LBB99_11
	st	%rv, -16[%fp]
.LBB99_13:
	mov	hi(__llvm_gcov_ctr.99+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.99+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.99+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.99+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB99_14
	st	%r3, 0[%r9]
.LBB99_14:
	mov	hi(__llvm_gcov_ctr.99+48), %r3
	or	%r3, lo(__llvm_gcov_ctr.99+48), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.99+52), %r12
	or	%r12, lo(__llvm_gcov_ctr.99+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB99_15
	st	%r3, 0[%r9]
.LBB99_15:
	ld	-28[%fp], %r3
	ld	-20[%fp], %r9
	st	%r3, 0[%r9]
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB99_17
	nop
	bt	.LBB99_16
	nop
.LBB99_16:
	mov	hi(__llvm_gcov_ctr.99+56), %r3
	or	%r3, lo(__llvm_gcov_ctr.99+56), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.99+60), %r12
	or	%r12, lo(__llvm_gcov_ctr.99+60), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_frexp+64), %r3
	or	%r3, lo(.L__profc_frexp+64), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_frexp+68), %r12
	or	%r12, lo(.L__profc_frexp+68), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	xor	%r3, 0x80000000, %r3
	bt	.LBB99_17
	st	%r3, -16[%fp]
.LBB99_17:
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
	mov	hi(__llvm_gcov_ctr.100), %r3
	or	%r3, lo(__llvm_gcov_ctr.100), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.100+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.100+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	sub	%fp, 0x18, %r9
	or	%r9, 0x4, %r9
	st	%r19, 0[%r9]
	st	%r18, -24[%fp]
	mov	hi(.L__profc___muldi3), %r9
	or	%r9, lo(.L__profc___muldi3), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc___muldi3+4), %r13
	or	%r13, lo(.L__profc___muldi3+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(.L__profc___muldi3+8), %r3
	or	%r3, lo(.L__profc___muldi3+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___muldi3+12), %r12
	or	%r12, lo(.L__profc___muldi3+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.100+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.100+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.100+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.100+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___muldi3+16), %r3
	or	%r3, lo(.L__profc___muldi3+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___muldi3+20), %r12
	or	%r12, lo(.L__profc___muldi3+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.100+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.100+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.100+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.100+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r12
	ld	0[%r12], %r9
	ld	-24[%fp], %r3
	sh	%r9, -0x1f, %r13
	sh	%r3, 0x1, %r3
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
	mov	hi(.L__profc_udivmodsi4), %r3
	or	%r3, lo(.L__profc_udivmodsi4), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_udivmodsi4+4), %r12
	or	%r12, lo(.L__profc_udivmodsi4+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	buge	.LBB101_6
	st	%r3, -36[%fp]
	bt	.LBB101_2
	nop
.LBB101_2:                              !   in Loop: Header=BB101_1 Depth=1
	mov	hi(__llvm_gcov_ctr.101), %r3
	or	%r3, lo(__llvm_gcov_ctr.101), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.101+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.101+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_udivmodsi4+32), %r3
	or	%r3, lo(.L__profc_udivmodsi4+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_udivmodsi4+36), %r12
	or	%r12, lo(.L__profc_udivmodsi4+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-28[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB101_6
	st	%r3, -36[%fp]
	bt	.LBB101_3
	nop
.LBB101_3:                              !   in Loop: Header=BB101_1 Depth=1
	mov	hi(__llvm_gcov_ctr.101+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.101+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.101+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.101+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_udivmodsi4+40), %r3
	or	%r3, lo(.L__profc_udivmodsi4+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_udivmodsi4+44), %r12
	or	%r12, lo(.L__profc_udivmodsi4+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB101_4
	st	%r3, 0[%r9]
.LBB101_4:                              !   in Loop: Header=BB101_1 Depth=1
	mov	hi(.L__profc_udivmodsi4+16), %r3
	or	%r3, lo(.L__profc_udivmodsi4+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_udivmodsi4+20), %r12
	or	%r12, lo(.L__profc_udivmodsi4+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r3
	mov	0x80000000, %r9
	and	%r3, %r9, %r9
	sub.f	%r9, 0x0, %r0
	seq	%r3
	st	%r3, -40[%fp]
	sub.f	%r9, 0x0, %r0
	bne	.LBB101_6
	st	%r3, -36[%fp]
	bt	.LBB101_5
	nop
.LBB101_5:                              !   in Loop: Header=BB101_1 Depth=1
	ld	-40[%fp], %r3
	mov	hi(__llvm_gcov_ctr.101+16), %r9
	or	%r9, lo(__llvm_gcov_ctr.101+16), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.101+20), %r13
	or	%r13, lo(__llvm_gcov_ctr.101+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc_udivmodsi4+24), %r9
	or	%r9, lo(.L__profc_udivmodsi4+24), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc_udivmodsi4+28), %r13
	or	%r13, lo(.L__profc_udivmodsi4+28), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB101_6
	st	%r3, -36[%fp]
.LBB101_6:                              !   in Loop: Header=BB101_1 Depth=1
	ld	-36[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB101_8
	nop
	bt	.LBB101_7
	nop
.LBB101_7:                              !   in Loop: Header=BB101_1 Depth=1
	mov	hi(__llvm_gcov_ctr.101+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.101+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.101+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.101+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_udivmodsi4+8), %r3
	or	%r3, lo(.L__profc_udivmodsi4+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_udivmodsi4+12), %r12
	or	%r12, lo(.L__profc_udivmodsi4+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r3
	sh	%r3, 0x1, %r3
	st	%r3, -20[%fp]
	ld	-28[%fp], %r3
	sh	%r3, 0x1, %r3
	bt	.LBB101_1
	st	%r3, -28[%fp]
.LBB101_8:
	bt	.LBB101_9
	nop
.LBB101_9:                              ! =>This Inner Loop Header: Depth=1
	ld	-28[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB101_13
	nop
	bt	.LBB101_10
	nop
.LBB101_10:                             !   in Loop: Header=BB101_9 Depth=1
	mov	hi(.L__profc_udivmodsi4+48), %r3
	or	%r3, lo(.L__profc_udivmodsi4+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_udivmodsi4+52), %r12
	or	%r12, lo(.L__profc_udivmodsi4+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	ld	-20[%fp], %r9
	sub.f	%r3, %r9, %r0
	bult	.LBB101_12
	nop
	bt	.LBB101_11
	nop
.LBB101_11:                             !   in Loop: Header=BB101_9 Depth=1
	mov	hi(__llvm_gcov_ctr.101+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.101+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.101+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.101+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_udivmodsi4+56), %r3
	or	%r3, lo(.L__profc_udivmodsi4+56), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_udivmodsi4+60), %r12
	or	%r12, lo(.L__profc_udivmodsi4+60), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r9
	ld	-16[%fp], %r3
	sub	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-28[%fp], %r9
	ld	-32[%fp], %r3
	or	%r3, %r9, %r3
	bt	.LBB101_12
	st	%r3, -32[%fp]
.LBB101_12:                             !   in Loop: Header=BB101_9 Depth=1
	mov	hi(__llvm_gcov_ctr.101+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.101+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.101+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.101+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-28[%fp], %r3
	sh	%r3, -0x1, %r3
	st	%r3, -28[%fp]
	ld	-20[%fp], %r3
	sh	%r3, -0x1, %r3
	bt	.LBB101_9
	st	%r3, -20[%fp]
.LBB101_13:
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB101_15
	nop
	bt	.LBB101_14
	nop
.LBB101_14:
	mov	hi(__llvm_gcov_ctr.101+48), %r3
	or	%r3, lo(__llvm_gcov_ctr.101+48), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.101+52), %r12
	or	%r12, lo(__llvm_gcov_ctr.101+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc_udivmodsi4+64), %r3
	or	%r3, lo(.L__profc_udivmodsi4+64), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc_udivmodsi4+68), %r12
	or	%r12, lo(.L__profc_udivmodsi4+68), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	bt	.LBB101_16
	st	%r3, -12[%fp]
.LBB101_15:
	mov	hi(__llvm_gcov_ctr.101+56), %r3
	or	%r3, lo(__llvm_gcov_ctr.101+56), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.101+60), %r12
	or	%r12, lo(__llvm_gcov_ctr.101+60), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-32[%fp], %r3
	bt	.LBB101_16
	st	%r3, -12[%fp]
.LBB101_16:
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
	mov	hi(.L__profc___clrsbqi2), %r3
	or	%r3, lo(.L__profc___clrsbqi2), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___clrsbqi2+4), %r12
	or	%r12, lo(.L__profc___clrsbqi2+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld.b	-13[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB102_2
	nop
	bt	.LBB102_1
	nop
.LBB102_1:
	mov	hi(__llvm_gcov_ctr.102), %r3
	or	%r3, lo(__llvm_gcov_ctr.102), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.102+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.102+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___clrsbqi2+8), %r3
	or	%r3, lo(.L__profc___clrsbqi2+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___clrsbqi2+12), %r12
	or	%r12, lo(.L__profc___clrsbqi2+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.102+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.102+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.102+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.102+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___clrsbqi2+16), %r3
	or	%r3, lo(.L__profc___clrsbqi2+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___clrsbqi2+20), %r12
	or	%r12, lo(.L__profc___clrsbqi2+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	0x7, %r3
	bt	.LBB102_5
	st	%r3, -12[%fp]
.LBB102_4:
	mov	hi(__llvm_gcov_ctr.102+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.102+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.102+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.102+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___clrsbdi2), %r3
	or	%r3, lo(.L__profc___clrsbdi2), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___clrsbdi2+4), %r12
	or	%r12, lo(.L__profc___clrsbdi2+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB103_2
	nop
	bt	.LBB103_1
	nop
.LBB103_1:
	mov	hi(__llvm_gcov_ctr.103), %r3
	or	%r3, lo(__llvm_gcov_ctr.103), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.103+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.103+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___clrsbdi2+8), %r3
	or	%r3, lo(.L__profc___clrsbdi2+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___clrsbdi2+12), %r12
	or	%r12, lo(.L__profc___clrsbdi2+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.103+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.103+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.103+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.103+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___clrsbdi2+16), %r3
	or	%r3, lo(.L__profc___clrsbdi2+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___clrsbdi2+20), %r12
	or	%r12, lo(.L__profc___clrsbdi2+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	0x3f, %r3
	bt	.LBB103_5
	st	%r3, -12[%fp]
.LBB103_4:
	mov	hi(__llvm_gcov_ctr.103+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.103+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.103+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.103+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.104), %r3
	or	%r3, lo(__llvm_gcov_ctr.104), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.104+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.104+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc___mulsi3), %r3
	or	%r3, lo(.L__profc___mulsi3), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mulsi3+4), %r12
	or	%r12, lo(.L__profc___mulsi3+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___mulsi3+8), %r3
	or	%r3, lo(.L__profc___mulsi3+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mulsi3+12), %r12
	or	%r12, lo(.L__profc___mulsi3+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.104+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.104+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.104+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.104+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___mulsi3+16), %r3
	or	%r3, lo(.L__profc___mulsi3+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mulsi3+20), %r12
	or	%r12, lo(.L__profc___mulsi3+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r9
	ld	-20[%fp], %r3
	add	%r3, %r9, %r3
	bt	.LBB104_4
	st	%r3, -20[%fp]
.LBB104_4:                              !   in Loop: Header=BB104_1 Depth=1
	mov	hi(__llvm_gcov_ctr.104+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.104+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.104+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.104+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___cmovd), %r3
	or	%r3, lo(.L__profc___cmovd), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovd+4), %r12
	or	%r12, lo(.L__profc___cmovd+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	bult	.LBB105_3
	sub	%sp, 0x28, %sp
	bt	.LBB105_1
	nop
.LBB105_1:
	mov	hi(__llvm_gcov_ctr.105), %r3
	or	%r3, lo(__llvm_gcov_ctr.105), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.105+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.105+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___cmovd+16), %r3
	or	%r3, lo(.L__profc___cmovd+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovd+20), %r12
	or	%r12, lo(.L__profc___cmovd+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-36[%fp], %r3
	ld	-40[%fp], %r9
	ld	-20[%fp], %r12
	add	%r9, %r12, %r9
	sub.f	%r3, %r9, %r0
	bugt	.LBB105_3
	nop
	bt	.LBB105_2
	nop
.LBB105_2:
	mov	hi(.L__profc___cmovd+24), %r3
	or	%r3, lo(.L__profc___cmovd+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovd+28), %r12
	or	%r12, lo(.L__profc___cmovd+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB105_11
	st	%r3, 0[%r9]
.LBB105_3:
	mov	hi(.L__profc___cmovd+8), %r3
	or	%r3, lo(.L__profc___cmovd+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovd+12), %r12
	or	%r12, lo(.L__profc___cmovd+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	bt	.LBB105_4
	st	%r3, -24[%fp]
.LBB105_4:                              ! =>This Inner Loop Header: Depth=1
	ld	-24[%fp], %r3
	ld	-28[%fp], %r9
	sub.f	%r3, %r9, %r0
	buge	.LBB105_7
	nop
	bt	.LBB105_5
	nop
.LBB105_5:                              !   in Loop: Header=BB105_4 Depth=1
	mov	hi(.L__profc___cmovd+32), %r3
	or	%r3, lo(.L__profc___cmovd+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovd+36), %r12
	or	%r12, lo(.L__profc___cmovd+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	ld	-24[%fp], %r9
	sh	%r9, 0x3, %r14
	add	%r3, %r14, %r9
	ld	4[%r9], %r3
	ld	0[%r9], %r12
	ld	-12[%fp], %r13
	add	%r13, %r14, %r9
	st	%r12, [%r13 add %r14]
	bt	.LBB105_6
	st	%r3, 4[%r9]
.LBB105_6:                              !   in Loop: Header=BB105_4 Depth=1
	mov	hi(__llvm_gcov_ctr.105+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.105+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.105+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.105+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-24[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB105_4
	st	%r3, -24[%fp]
.LBB105_7:
	bt	.LBB105_8
	nop
.LBB105_8:                              ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	ld	-32[%fp], %r9
	sub.f	%r3, %r9, %r0
	bule	.LBB105_10
	nop
	bt	.LBB105_9
	nop
.LBB105_9:                              !   in Loop: Header=BB105_8 Depth=1
	mov	hi(__llvm_gcov_ctr.105+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.105+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.105+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.105+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___cmovd+40), %r3
	or	%r3, lo(.L__profc___cmovd+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovd+44), %r12
	or	%r12, lo(.L__profc___cmovd+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-40[%fp], %r3
	ld	-32[%fp], %r12
	add	%r3, %r12, %r3
	uld.b	0[%r3], %r3
	ld	-36[%fp], %r9
	st.b	%r3, [%r9 add %r12]
	ld	-32[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB105_8
	st	%r3, -32[%fp]
.LBB105_10:
	mov	hi(__llvm_gcov_ctr.105+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.105+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.105+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.105+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB105_15
	st	%r3, 0[%r9]
.LBB105_11:
	bt	.LBB105_12
	nop
.LBB105_12:                             ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r9
	sub.f	%r3, 0x0, %r0
	beq	.LBB105_14
	st	%r9, -20[%fp]
	bt	.LBB105_13
	nop
.LBB105_13:                             !   in Loop: Header=BB105_12 Depth=1
	mov	hi(__llvm_gcov_ctr.105+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.105+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.105+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.105+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___cmovd+48), %r3
	or	%r3, lo(.L__profc___cmovd+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovd+52), %r12
	or	%r12, lo(.L__profc___cmovd+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-40[%fp], %r3
	ld	-20[%fp], %r12
	add	%r3, %r12, %r3
	uld.b	0[%r3], %r3
	ld	-36[%fp], %r9
	bt	.LBB105_12
	st.b	%r3, [%r9 add %r12]
.LBB105_14:
	mov	hi(__llvm_gcov_ctr.105+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.105+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.105+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.105+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB105_15
	st	%r3, 0[%r9]
.LBB105_15:
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
	mov	hi(.L__profc___cmovh), %r3
	or	%r3, lo(.L__profc___cmovh), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovh+4), %r12
	or	%r12, lo(.L__profc___cmovh+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	bult	.LBB106_3
	sub	%sp, 0x28, %sp
	bt	.LBB106_1
	nop
.LBB106_1:
	mov	hi(__llvm_gcov_ctr.106), %r3
	or	%r3, lo(__llvm_gcov_ctr.106), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.106+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.106+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___cmovh+16), %r3
	or	%r3, lo(.L__profc___cmovh+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovh+20), %r12
	or	%r12, lo(.L__profc___cmovh+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-32[%fp], %r3
	ld	-36[%fp], %r9
	ld	-20[%fp], %r12
	add	%r9, %r12, %r9
	sub.f	%r3, %r9, %r0
	bugt	.LBB106_3
	nop
	bt	.LBB106_2
	nop
.LBB106_2:
	mov	hi(.L__profc___cmovh+24), %r3
	or	%r3, lo(.L__profc___cmovh+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovh+28), %r12
	or	%r12, lo(.L__profc___cmovh+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB106_10
	st	%r3, 0[%r9]
.LBB106_3:
	mov	hi(.L__profc___cmovh+8), %r3
	or	%r3, lo(.L__profc___cmovh+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovh+12), %r12
	or	%r12, lo(.L__profc___cmovh+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	bt	.LBB106_4
	st	%r3, -24[%fp]
.LBB106_4:                              ! =>This Inner Loop Header: Depth=1
	ld	-24[%fp], %r3
	ld	-28[%fp], %r9
	sub.f	%r3, %r9, %r0
	buge	.LBB106_7
	nop
	bt	.LBB106_5
	nop
.LBB106_5:                              !   in Loop: Header=BB106_4 Depth=1
	mov	hi(.L__profc___cmovh+32), %r3
	or	%r3, lo(.L__profc___cmovh+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovh+36), %r12
	or	%r12, lo(.L__profc___cmovh+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	ld	-24[%fp], %r9
	sh	%r9, 0x1, %r12
	add	%r3, %r12, %r3
	uld.h	0[%r3], %r3
	ld	-12[%fp], %r9
	bt	.LBB106_6
	st.h	%r3, [%r9 add %r12]
.LBB106_6:                              !   in Loop: Header=BB106_4 Depth=1
	mov	hi(__llvm_gcov_ctr.106+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.106+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.106+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.106+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-24[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB106_4
	st	%r3, -24[%fp]
.LBB106_7:
	sub	%fp, 0x14, %r3
	or	%r3, 0x3, %r3
	uld.b	0[%r3], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB106_9
	nop
	bt	.LBB106_8
	nop
.LBB106_8:
	mov	hi(__llvm_gcov_ctr.106+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.106+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.106+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.106+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___cmovh+40), %r3
	or	%r3, lo(.L__profc___cmovh+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovh+44), %r12
	or	%r12, lo(.L__profc___cmovh+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-36[%fp], %r3
	ld	-20[%fp], %r9
	sub	%r9, 0x1, %r12
	add	%r3, %r12, %r3
	uld.b	0[%r3], %r3
	ld	-32[%fp], %r9
	bt	.LBB106_9
	st.b	%r3, [%r9 add %r12]
.LBB106_9:
	mov	hi(__llvm_gcov_ctr.106+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.106+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.106+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.106+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB106_14
	st	%r3, 0[%r9]
.LBB106_10:
	bt	.LBB106_11
	nop
.LBB106_11:                             ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r9
	sub.f	%r3, 0x0, %r0
	beq	.LBB106_13
	st	%r9, -20[%fp]
	bt	.LBB106_12
	nop
.LBB106_12:                             !   in Loop: Header=BB106_11 Depth=1
	mov	hi(__llvm_gcov_ctr.106+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.106+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.106+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.106+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___cmovh+48), %r3
	or	%r3, lo(.L__profc___cmovh+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovh+52), %r12
	or	%r12, lo(.L__profc___cmovh+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-36[%fp], %r3
	ld	-20[%fp], %r12
	add	%r3, %r12, %r3
	uld.b	0[%r3], %r3
	ld	-32[%fp], %r9
	bt	.LBB106_11
	st.b	%r3, [%r9 add %r12]
.LBB106_13:
	mov	hi(__llvm_gcov_ctr.106+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.106+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.106+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.106+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB106_14
	st	%r3, 0[%r9]
.LBB106_14:
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
	mov	hi(.L__profc___cmovw), %r3
	or	%r3, lo(.L__profc___cmovw), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovw+4), %r12
	or	%r12, lo(.L__profc___cmovw+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	bult	.LBB107_3
	sub	%sp, 0x28, %sp
	bt	.LBB107_1
	nop
.LBB107_1:
	mov	hi(__llvm_gcov_ctr.107), %r3
	or	%r3, lo(__llvm_gcov_ctr.107), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.107+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.107+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___cmovw+16), %r3
	or	%r3, lo(.L__profc___cmovw+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovw+20), %r12
	or	%r12, lo(.L__profc___cmovw+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-36[%fp], %r3
	ld	-40[%fp], %r9
	ld	-20[%fp], %r12
	add	%r9, %r12, %r9
	sub.f	%r3, %r9, %r0
	bugt	.LBB107_3
	nop
	bt	.LBB107_2
	nop
.LBB107_2:
	mov	hi(.L__profc___cmovw+24), %r3
	or	%r3, lo(.L__profc___cmovw+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovw+28), %r12
	or	%r12, lo(.L__profc___cmovw+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB107_11
	st	%r3, 0[%r9]
.LBB107_3:
	mov	hi(.L__profc___cmovw+8), %r3
	or	%r3, lo(.L__profc___cmovw+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovw+12), %r12
	or	%r12, lo(.L__profc___cmovw+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	bt	.LBB107_4
	st	%r3, -24[%fp]
.LBB107_4:                              ! =>This Inner Loop Header: Depth=1
	ld	-24[%fp], %r3
	ld	-28[%fp], %r9
	sub.f	%r3, %r9, %r0
	buge	.LBB107_7
	nop
	bt	.LBB107_5
	nop
.LBB107_5:                              !   in Loop: Header=BB107_4 Depth=1
	mov	hi(.L__profc___cmovw+32), %r3
	or	%r3, lo(.L__profc___cmovw+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovw+36), %r12
	or	%r12, lo(.L__profc___cmovw+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	ld	-24[%fp], %r9
	sh	%r9, 0x2, %r12
	add	%r3, %r12, %r3
	ld	0[%r3], %r3
	ld	-12[%fp], %r9
	bt	.LBB107_6
	st	%r3, [%r9 add %r12]
.LBB107_6:                              !   in Loop: Header=BB107_4 Depth=1
	mov	hi(__llvm_gcov_ctr.107+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.107+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.107+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.107+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-24[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB107_4
	st	%r3, -24[%fp]
.LBB107_7:
	bt	.LBB107_8
	nop
.LBB107_8:                              ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	ld	-32[%fp], %r9
	sub.f	%r3, %r9, %r0
	bule	.LBB107_10
	nop
	bt	.LBB107_9
	nop
.LBB107_9:                              !   in Loop: Header=BB107_8 Depth=1
	mov	hi(__llvm_gcov_ctr.107+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.107+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.107+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.107+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___cmovw+40), %r3
	or	%r3, lo(.L__profc___cmovw+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovw+44), %r12
	or	%r12, lo(.L__profc___cmovw+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-40[%fp], %r3
	ld	-32[%fp], %r12
	add	%r3, %r12, %r3
	uld.b	0[%r3], %r3
	ld	-36[%fp], %r9
	st.b	%r3, [%r9 add %r12]
	ld	-32[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB107_8
	st	%r3, -32[%fp]
.LBB107_10:
	mov	hi(__llvm_gcov_ctr.107+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.107+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.107+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.107+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB107_15
	st	%r3, 0[%r9]
.LBB107_11:
	bt	.LBB107_12
	nop
.LBB107_12:                             ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub	%r3, 0x1, %r9
	sub.f	%r3, 0x0, %r0
	beq	.LBB107_14
	st	%r9, -20[%fp]
	bt	.LBB107_13
	nop
.LBB107_13:                             !   in Loop: Header=BB107_12 Depth=1
	mov	hi(__llvm_gcov_ctr.107+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.107+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.107+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.107+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___cmovw+48), %r3
	or	%r3, lo(.L__profc___cmovw+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmovw+52), %r12
	or	%r12, lo(.L__profc___cmovw+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-40[%fp], %r3
	ld	-20[%fp], %r12
	add	%r3, %r12, %r3
	uld.b	0[%r3], %r3
	ld	-36[%fp], %r9
	bt	.LBB107_12
	st.b	%r3, [%r9 add %r12]
.LBB107_14:
	mov	hi(__llvm_gcov_ctr.107+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.107+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.107+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.107+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB107_15
	st	%r3, 0[%r9]
.LBB107_15:
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
	mov	hi(__llvm_gcov_ctr.108), %r3
	or	%r3, lo(__llvm_gcov_ctr.108), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.108+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.108+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc___modi), %r3
	or	%r3, lo(.L__profc___modi), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___modi+4), %r12
	or	%r12, lo(.L__profc___modi+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.109), %r3
	or	%r3, lo(__llvm_gcov_ctr.109), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.109+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.109+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc___uitod), %r3
	or	%r3, lo(.L__profc___uitod), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___uitod+4), %r12
	or	%r12, lo(.L__profc___uitod+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.110), %r3
	or	%r3, lo(__llvm_gcov_ctr.110), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.110+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.110+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc___uitof), %r3
	or	%r3, lo(.L__profc___uitof), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___uitof+4), %r12
	or	%r12, lo(.L__profc___uitof+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.111), %r3
	or	%r3, lo(__llvm_gcov_ctr.111), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.111+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.111+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	mov	hi(.L__profc___ulltod), %r9
	or	%r9, lo(.L__profc___ulltod), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc___ulltod+4), %r13
	or	%r13, lo(.L__profc___ulltod+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(__llvm_gcov_ctr.112), %r3
	or	%r3, lo(__llvm_gcov_ctr.112), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.112+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.112+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	mov	hi(.L__profc___ulltof), %r9
	or	%r9, lo(.L__profc___ulltof), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc___ulltof+4), %r13
	or	%r13, lo(.L__profc___ulltof+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(__llvm_gcov_ctr.113), %r3
	or	%r3, lo(__llvm_gcov_ctr.113), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.113+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.113+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc___umodi), %r3
	or	%r3, lo(.L__profc___umodi), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___umodi+4), %r12
	or	%r12, lo(.L__profc___umodi+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.114), %r3
	or	%r3, lo(__llvm_gcov_ctr.114), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.114+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.114+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st.h	%r6, -10[%fp]
	mov	hi(.L__profc___clzhi2), %r3
	or	%r3, lo(.L__profc___clzhi2), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___clzhi2+4), %r12
	or	%r12, lo(.L__profc___clzhi2+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___clzhi2+8), %r3
	or	%r3, lo(.L__profc___clzhi2+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___clzhi2+12), %r12
	or	%r12, lo(.L__profc___clzhi2+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.114+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.114+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.114+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.114+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___clzhi2+16), %r3
	or	%r3, lo(.L__profc___clzhi2+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___clzhi2+20), %r12
	or	%r12, lo(.L__profc___clzhi2+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB114_6
	st	%r3, 0[%r9]
.LBB114_4:                              !   in Loop: Header=BB114_1 Depth=1
	bt	.LBB114_5
	nop
.LBB114_5:                              !   in Loop: Header=BB114_1 Depth=1
	mov	hi(__llvm_gcov_ctr.114+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.114+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.114+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.114+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.115), %r3
	or	%r3, lo(__llvm_gcov_ctr.115), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.115+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.115+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st.h	%r6, -10[%fp]
	mov	hi(.L__profc___ctzhi2), %r3
	or	%r3, lo(.L__profc___ctzhi2), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___ctzhi2+4), %r12
	or	%r12, lo(.L__profc___ctzhi2+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___ctzhi2+8), %r3
	or	%r3, lo(.L__profc___ctzhi2+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___ctzhi2+12), %r12
	or	%r12, lo(.L__profc___ctzhi2+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.115+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.115+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.115+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.115+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___ctzhi2+16), %r3
	or	%r3, lo(.L__profc___ctzhi2+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___ctzhi2+20), %r12
	or	%r12, lo(.L__profc___ctzhi2+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB115_6
	st	%r3, 0[%r9]
.LBB115_4:                              !   in Loop: Header=BB115_1 Depth=1
	bt	.LBB115_5
	nop
.LBB115_5:                              !   in Loop: Header=BB115_1 Depth=1
	mov	hi(__llvm_gcov_ctr.115+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.115+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.115+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.115+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___fixunssfsi), %r3
	or	%r3, lo(.L__profc___fixunssfsi), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___fixunssfsi+4), %r12
	or	%r12, lo(.L__profc___fixunssfsi+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.116), %r3
	or	%r3, lo(__llvm_gcov_ctr.116), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.116+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.116+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___fixunssfsi+8), %r3
	or	%r3, lo(.L__profc___fixunssfsi+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___fixunssfsi+12), %r12
	or	%r12, lo(.L__profc___fixunssfsi+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.116+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.116+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.116+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.116+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.117), %r3
	or	%r3, lo(__llvm_gcov_ctr.117), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.117+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.117+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st.h	%r6, -10[%fp]
	mov	hi(.L__profc___parityhi2), %r3
	or	%r3, lo(.L__profc___parityhi2), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___parityhi2+4), %r12
	or	%r12, lo(.L__profc___parityhi2+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___parityhi2+8), %r3
	or	%r3, lo(.L__profc___parityhi2+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___parityhi2+12), %r12
	or	%r12, lo(.L__profc___parityhi2+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.117+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.117+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.117+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.117+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___parityhi2+16), %r3
	or	%r3, lo(.L__profc___parityhi2+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___parityhi2+20), %r12
	or	%r12, lo(.L__profc___parityhi2+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB117_4
	st	%r3, -20[%fp]
.LBB117_4:                              !   in Loop: Header=BB117_1 Depth=1
	bt	.LBB117_5
	nop
.LBB117_5:                              !   in Loop: Header=BB117_1 Depth=1
	mov	hi(__llvm_gcov_ctr.117+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.117+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.117+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.117+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.118), %r3
	or	%r3, lo(__llvm_gcov_ctr.118), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.118+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.118+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st.h	%r6, -10[%fp]
	mov	hi(.L__profc___popcounthi2), %r3
	or	%r3, lo(.L__profc___popcounthi2), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___popcounthi2+4), %r12
	or	%r12, lo(.L__profc___popcounthi2+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___popcounthi2+8), %r3
	or	%r3, lo(.L__profc___popcounthi2+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___popcounthi2+12), %r12
	or	%r12, lo(.L__profc___popcounthi2+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.118+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.118+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.118+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.118+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___popcounthi2+16), %r3
	or	%r3, lo(.L__profc___popcounthi2+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___popcounthi2+20), %r12
	or	%r12, lo(.L__profc___popcounthi2+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB118_4
	st	%r3, -20[%fp]
.LBB118_4:                              !   in Loop: Header=BB118_1 Depth=1
	bt	.LBB118_5
	nop
.LBB118_5:                              !   in Loop: Header=BB118_1 Depth=1
	mov	hi(__llvm_gcov_ctr.118+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.118+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.118+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.118+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.119), %r3
	or	%r3, lo(__llvm_gcov_ctr.119), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.119+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.119+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc___mulsi3_iq2000), %r3
	or	%r3, lo(.L__profc___mulsi3_iq2000), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mulsi3_iq2000+4), %r12
	or	%r12, lo(.L__profc___mulsi3_iq2000+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___mulsi3_iq2000+8), %r3
	or	%r3, lo(.L__profc___mulsi3_iq2000+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mulsi3_iq2000+12), %r12
	or	%r12, lo(.L__profc___mulsi3_iq2000+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.119+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.119+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.119+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.119+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___mulsi3_iq2000+16), %r3
	or	%r3, lo(.L__profc___mulsi3_iq2000+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mulsi3_iq2000+20), %r12
	or	%r12, lo(.L__profc___mulsi3_iq2000+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r9
	ld	-20[%fp], %r3
	add	%r3, %r9, %r3
	bt	.LBB119_4
	st	%r3, -20[%fp]
.LBB119_4:                              !   in Loop: Header=BB119_1 Depth=1
	mov	hi(__llvm_gcov_ctr.119+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.119+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.119+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.119+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___mulsi3_lm32), %r3
	or	%r3, lo(.L__profc___mulsi3_lm32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mulsi3_lm32+4), %r12
	or	%r12, lo(.L__profc___mulsi3_lm32+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	st	%r3, -24[%fp]
	ld	-16[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bne	.LBB120_2
	sub	%sp, 0x18, %sp
	bt	.LBB120_1
	nop
.LBB120_1:
	mov	hi(__llvm_gcov_ctr.120+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.120+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.120+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.120+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___mulsi3_lm32+8), %r3
	or	%r3, lo(.L__profc___mulsi3_lm32+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mulsi3_lm32+12), %r12
	or	%r12, lo(.L__profc___mulsi3_lm32+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	bt	.LBB120_8
	st	%r3, -12[%fp]
.LBB120_2:
	mov	hi(__llvm_gcov_ctr.120), %r3
	or	%r3, lo(__llvm_gcov_ctr.120), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.120+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.120+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB120_3
	st	%r3, 0[%r9]
.LBB120_3:                              ! =>This Inner Loop Header: Depth=1
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB120_7
	nop
	bt	.LBB120_4
	nop
.LBB120_4:                              !   in Loop: Header=BB120_3 Depth=1
	mov	hi(.L__profc___mulsi3_lm32+16), %r3
	or	%r3, lo(.L__profc___mulsi3_lm32+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mulsi3_lm32+20), %r12
	or	%r12, lo(.L__profc___mulsi3_lm32+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.120+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.120+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.120+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.120+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___mulsi3_lm32+24), %r3
	or	%r3, lo(.L__profc___mulsi3_lm32+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mulsi3_lm32+28), %r12
	or	%r12, lo(.L__profc___mulsi3_lm32+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r9
	ld	-24[%fp], %r3
	add	%r3, %r9, %r3
	bt	.LBB120_6
	st	%r3, -24[%fp]
.LBB120_6:                              !   in Loop: Header=BB120_3 Depth=1
	mov	hi(__llvm_gcov_ctr.120+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.120+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.120+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.120+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___udivmodsi4), %r3
	or	%r3, lo(.L__profc___udivmodsi4), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodsi4+4), %r12
	or	%r12, lo(.L__profc___udivmodsi4+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	buge	.LBB121_6
	st	%r3, -36[%fp]
	bt	.LBB121_2
	nop
.LBB121_2:                              !   in Loop: Header=BB121_1 Depth=1
	mov	hi(__llvm_gcov_ctr.121), %r3
	or	%r3, lo(__llvm_gcov_ctr.121), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.121+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.121+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___udivmodsi4+32), %r3
	or	%r3, lo(.L__profc___udivmodsi4+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodsi4+36), %r12
	or	%r12, lo(.L__profc___udivmodsi4+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-28[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB121_6
	st	%r3, -36[%fp]
	bt	.LBB121_3
	nop
.LBB121_3:                              !   in Loop: Header=BB121_1 Depth=1
	mov	hi(__llvm_gcov_ctr.121+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.121+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.121+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.121+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___udivmodsi4+40), %r3
	or	%r3, lo(.L__profc___udivmodsi4+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodsi4+44), %r12
	or	%r12, lo(.L__profc___udivmodsi4+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB121_4
	st	%r3, 0[%r9]
.LBB121_4:                              !   in Loop: Header=BB121_1 Depth=1
	mov	hi(.L__profc___udivmodsi4+16), %r3
	or	%r3, lo(.L__profc___udivmodsi4+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodsi4+20), %r12
	or	%r12, lo(.L__profc___udivmodsi4+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r3
	mov	0x80000000, %r9
	and	%r3, %r9, %r9
	sub.f	%r9, 0x0, %r0
	seq	%r3
	st	%r3, -40[%fp]
	sub.f	%r9, 0x0, %r0
	bne	.LBB121_6
	st	%r3, -36[%fp]
	bt	.LBB121_5
	nop
.LBB121_5:                              !   in Loop: Header=BB121_1 Depth=1
	ld	-40[%fp], %r3
	mov	hi(__llvm_gcov_ctr.121+16), %r9
	or	%r9, lo(__llvm_gcov_ctr.121+16), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.121+20), %r13
	or	%r13, lo(__llvm_gcov_ctr.121+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc___udivmodsi4+24), %r9
	or	%r9, lo(.L__profc___udivmodsi4+24), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc___udivmodsi4+28), %r13
	or	%r13, lo(.L__profc___udivmodsi4+28), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB121_6
	st	%r3, -36[%fp]
.LBB121_6:                              !   in Loop: Header=BB121_1 Depth=1
	ld	-36[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB121_8
	nop
	bt	.LBB121_7
	nop
.LBB121_7:                              !   in Loop: Header=BB121_1 Depth=1
	mov	hi(__llvm_gcov_ctr.121+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.121+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.121+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.121+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___udivmodsi4+8), %r3
	or	%r3, lo(.L__profc___udivmodsi4+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodsi4+12), %r12
	or	%r12, lo(.L__profc___udivmodsi4+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r3
	sh	%r3, 0x1, %r3
	st	%r3, -20[%fp]
	ld	-28[%fp], %r3
	sh	%r3, 0x1, %r3
	bt	.LBB121_1
	st	%r3, -28[%fp]
.LBB121_8:
	bt	.LBB121_9
	nop
.LBB121_9:                              ! =>This Inner Loop Header: Depth=1
	ld	-28[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB121_13
	nop
	bt	.LBB121_10
	nop
.LBB121_10:                             !   in Loop: Header=BB121_9 Depth=1
	mov	hi(.L__profc___udivmodsi4+48), %r3
	or	%r3, lo(.L__profc___udivmodsi4+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodsi4+52), %r12
	or	%r12, lo(.L__profc___udivmodsi4+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	ld	-20[%fp], %r9
	sub.f	%r3, %r9, %r0
	bult	.LBB121_12
	nop
	bt	.LBB121_11
	nop
.LBB121_11:                             !   in Loop: Header=BB121_9 Depth=1
	mov	hi(__llvm_gcov_ctr.121+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.121+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.121+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.121+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___udivmodsi4+56), %r3
	or	%r3, lo(.L__profc___udivmodsi4+56), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodsi4+60), %r12
	or	%r12, lo(.L__profc___udivmodsi4+60), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r9
	ld	-16[%fp], %r3
	sub	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-28[%fp], %r9
	ld	-32[%fp], %r3
	or	%r3, %r9, %r3
	bt	.LBB121_12
	st	%r3, -32[%fp]
.LBB121_12:                             !   in Loop: Header=BB121_9 Depth=1
	mov	hi(__llvm_gcov_ctr.121+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.121+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.121+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.121+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-28[%fp], %r3
	sh	%r3, -0x1, %r3
	st	%r3, -28[%fp]
	ld	-20[%fp], %r3
	sh	%r3, -0x1, %r3
	bt	.LBB121_9
	st	%r3, -20[%fp]
.LBB121_13:
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB121_15
	nop
	bt	.LBB121_14
	nop
.LBB121_14:
	mov	hi(__llvm_gcov_ctr.121+48), %r3
	or	%r3, lo(__llvm_gcov_ctr.121+48), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.121+52), %r12
	or	%r12, lo(__llvm_gcov_ctr.121+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___udivmodsi4+64), %r3
	or	%r3, lo(.L__profc___udivmodsi4+64), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodsi4+68), %r12
	or	%r12, lo(.L__profc___udivmodsi4+68), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	bt	.LBB121_16
	st	%r3, -12[%fp]
.LBB121_15:
	mov	hi(__llvm_gcov_ctr.121+56), %r3
	or	%r3, lo(__llvm_gcov_ctr.121+56), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.121+60), %r12
	or	%r12, lo(__llvm_gcov_ctr.121+60), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-32[%fp], %r3
	bt	.LBB121_16
	st	%r3, -12[%fp]
.LBB121_16:
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
	mov	hi(.L__profc___mspabi_cmpf), %r3
	or	%r3, lo(.L__profc___mspabi_cmpf), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mspabi_cmpf+4), %r12
	or	%r12, lo(.L__profc___mspabi_cmpf+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.122), %r3
	or	%r3, lo(__llvm_gcov_ctr.122), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.122+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.122+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___mspabi_cmpf+8), %r3
	or	%r3, lo(.L__profc___mspabi_cmpf+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mspabi_cmpf+12), %r12
	or	%r12, lo(.L__profc___mspabi_cmpf+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.122+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.122+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.122+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.122+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___mspabi_cmpf+16), %r3
	or	%r3, lo(.L__profc___mspabi_cmpf+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mspabi_cmpf+20), %r12
	or	%r12, lo(.L__profc___mspabi_cmpf+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	0x1, %r3
	bt	.LBB122_5
	st	%r3, -12[%fp]
.LBB122_4:
	mov	hi(__llvm_gcov_ctr.122+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.122+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.122+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.122+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___mspabi_cmpd), %r12
	or	%r12, lo(.L__profc___mspabi_cmpd), %r13
	ld	0[%r13], %r12
	mov	hi(.L__profc___mspabi_cmpd+4), %r14
	or	%r14, lo(.L__profc___mspabi_cmpd+4), %r16
	ld	0[%r16], %r14
	add	%r14, 0x1, %r14
	sub.f	%r14, 0x0, %r0
	seq	%r17
	add	%r12, %r17, %r12
	st	%r14, 0[%r16]
	st	%r12, 0[%r13]
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
	mov	hi(__llvm_gcov_ctr.123), %r3
	or	%r3, lo(__llvm_gcov_ctr.123), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.123+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.123+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___mspabi_cmpd+8), %r3
	or	%r3, lo(.L__profc___mspabi_cmpd+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mspabi_cmpd+12), %r12
	or	%r12, lo(.L__profc___mspabi_cmpd+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.123+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.123+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.123+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.123+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___mspabi_cmpd+16), %r3
	or	%r3, lo(.L__profc___mspabi_cmpd+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mspabi_cmpd+20), %r12
	or	%r12, lo(.L__profc___mspabi_cmpd+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	0x1, %r3
	bt	.LBB123_5
	st	%r3, -12[%fp]
.LBB123_4:
	mov	hi(__llvm_gcov_ctr.123+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.123+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.123+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.123+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.124), %r3
	or	%r3, lo(__llvm_gcov_ctr.124), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.124+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.124+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc___mspabi_mpysll), %r3
	or	%r3, lo(.L__profc___mspabi_mpysll), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mspabi_mpysll+4), %r12
	or	%r12, lo(.L__profc___mspabi_mpysll+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.125), %r3
	or	%r3, lo(__llvm_gcov_ctr.125), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.125+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.125+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc___mspabi_mpyull), %r3
	or	%r3, lo(.L__profc___mspabi_mpyull), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mspabi_mpyull+4), %r12
	or	%r12, lo(.L__profc___mspabi_mpyull+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___mulhi3), %r3
	or	%r3, lo(.L__profc___mulhi3), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mulhi3+4), %r12
	or	%r12, lo(.L__profc___mulhi3+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.126), %r3
	or	%r3, lo(__llvm_gcov_ctr.126), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.126+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.126+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___mulhi3+8), %r3
	or	%r3, lo(.L__profc___mulhi3+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mulhi3+12), %r12
	or	%r12, lo(.L__profc___mulhi3+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	beq	.LBB126_6
	st	%r3, -32[%fp]
	bt	.LBB126_4
	nop
.LBB126_4:                              !   in Loop: Header=BB126_3 Depth=1
	mov	hi(__llvm_gcov_ctr.126+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.126+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.126+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.126+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___mulhi3+24), %r3
	or	%r3, lo(.L__profc___mulhi3+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mulhi3+28), %r12
	or	%r12, lo(.L__profc___mulhi3+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld.b	-17[%fp], %r9
	sub.f	%r9, 0x20, %r0
	sult	%r3
	st	%r3, -36[%fp]
	sub.f	%r9, 0x1f, %r0
	bugt	.LBB126_6
	st	%r3, -32[%fp]
	bt	.LBB126_5
	nop
.LBB126_5:                              !   in Loop: Header=BB126_3 Depth=1
	ld	-36[%fp], %r3
	mov	hi(__llvm_gcov_ctr.126+16), %r9
	or	%r9, lo(__llvm_gcov_ctr.126+16), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.126+20), %r13
	or	%r13, lo(__llvm_gcov_ctr.126+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc___mulhi3+32), %r9
	or	%r9, lo(.L__profc___mulhi3+32), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc___mulhi3+36), %r13
	or	%r13, lo(.L__profc___mulhi3+36), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB126_6
	st	%r3, -32[%fp]
.LBB126_6:                              !   in Loop: Header=BB126_3 Depth=1
	ld	-32[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB126_11
	nop
	bt	.LBB126_7
	nop
.LBB126_7:                              !   in Loop: Header=BB126_3 Depth=1
	mov	hi(.L__profc___mulhi3+16), %r3
	or	%r3, lo(.L__profc___mulhi3+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mulhi3+20), %r12
	or	%r12, lo(.L__profc___mulhi3+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x3, %r3
	uld.b	0[%r3], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB126_9
	nop
	bt	.LBB126_8
	nop
.LBB126_8:                              !   in Loop: Header=BB126_3 Depth=1
	mov	hi(__llvm_gcov_ctr.126+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.126+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.126+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.126+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___mulhi3+40), %r3
	or	%r3, lo(.L__profc___mulhi3+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mulhi3+44), %r12
	or	%r12, lo(.L__profc___mulhi3+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-12[%fp], %r9
	ld	-28[%fp], %r3
	add	%r3, %r9, %r3
	bt	.LBB126_9
	st	%r3, -28[%fp]
.LBB126_9:                              !   in Loop: Header=BB126_3 Depth=1
	ld	-12[%fp], %r3
	sh	%r3, 0x1, %r3
	st	%r3, -12[%fp]
	ld	-16[%fp], %r3
	sha	%r3, -0x1, %r3
	bt	.LBB126_10
	st	%r3, -16[%fp]
.LBB126_10:                             !   in Loop: Header=BB126_3 Depth=1
	mov	hi(__llvm_gcov_ctr.126+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.126+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.126+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.126+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	uld.b	-17[%fp], %r3
	add	%r3, 0x1, %r3
	bt	.LBB126_3
	st.b	%r3, -17[%fp]
.LBB126_11:
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB126_13
	nop
	bt	.LBB126_12
	nop
.LBB126_12:
	mov	hi(__llvm_gcov_ctr.126+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.126+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.126+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.126+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___mulhi3+48), %r3
	or	%r3, lo(.L__profc___mulhi3+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___mulhi3+52), %r12
	or	%r12, lo(.L__profc___mulhi3+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-28[%fp], %r9
	or	%r0, 0x0, %r3
	sub	%r3, %r9, %r3
	bt	.LBB126_14
	st	%r3, -40[%fp]
.LBB126_13:
	mov	hi(__llvm_gcov_ctr.126+48), %r3
	or	%r3, lo(__llvm_gcov_ctr.126+48), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.126+52), %r12
	or	%r12, lo(__llvm_gcov_ctr.126+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-28[%fp], %r3
	bt	.LBB126_14
	st	%r3, -40[%fp]
.LBB126_14:
	ld	-40[%fp], %rv
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
	mov	hi(__llvm_gcov_ctr.127), %r3
	or	%r3, lo(__llvm_gcov_ctr.127), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.127+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.127+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc___divsi3), %r3
	or	%r3, lo(.L__profc___divsi3), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___divsi3+4), %r12
	or	%r12, lo(.L__profc___divsi3+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	st	%r3, -20[%fp]
	ld	-12[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB127_2
	sub	%sp, 0x18, %sp
	bt	.LBB127_1
	nop
.LBB127_1:
	mov	hi(__llvm_gcov_ctr.127+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.127+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.127+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.127+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___divsi3+8), %r3
	or	%r3, lo(.L__profc___divsi3+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___divsi3+12), %r12
	or	%r12, lo(.L__profc___divsi3+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.127+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.127+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.127+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.127+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___divsi3+16), %r3
	or	%r3, lo(.L__profc___divsi3+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___divsi3+20), %r12
	or	%r12, lo(.L__profc___divsi3+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.127+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.127+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.127+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.127+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___divsi3+24), %r3
	or	%r3, lo(.L__profc___divsi3+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___divsi3+28), %r12
	or	%r12, lo(.L__profc___divsi3+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.128), %r3
	or	%r3, lo(__llvm_gcov_ctr.128), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.128+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.128+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc___modsi3), %r3
	or	%r3, lo(.L__profc___modsi3), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___modsi3+4), %r12
	or	%r12, lo(.L__profc___modsi3+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	or	%r0, 0x0, %r3
	st	%r3, -20[%fp]
	ld	-12[%fp], %r3
	sub.f	%r3, 0x0, %r0
	bpl	.LBB128_2
	sub	%sp, 0x18, %sp
	bt	.LBB128_1
	nop
.LBB128_1:
	mov	hi(__llvm_gcov_ctr.128+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.128+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.128+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.128+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___modsi3+8), %r3
	or	%r3, lo(.L__profc___modsi3+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___modsi3+12), %r12
	or	%r12, lo(.L__profc___modsi3+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.128+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.128+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.128+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.128+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___modsi3+16), %r3
	or	%r3, lo(.L__profc___modsi3+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___modsi3+20), %r12
	or	%r12, lo(.L__profc___modsi3+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.128+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.128+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.128+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.128+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___modsi3+24), %r3
	or	%r3, lo(.L__profc___modsi3+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___modsi3+28), %r12
	or	%r12, lo(.L__profc___modsi3+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___udivmodhi4), %r3
	or	%r3, lo(.L__profc___udivmodhi4), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodhi4+4), %r12
	or	%r12, lo(.L__profc___udivmodhi4+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	bge	.LBB129_6
	st	%r3, -28[%fp]
	bt	.LBB129_2
	nop
.LBB129_2:                              !   in Loop: Header=BB129_1 Depth=1
	mov	hi(__llvm_gcov_ctr.129), %r3
	or	%r3, lo(__llvm_gcov_ctr.129), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.129+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.129+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___udivmodhi4+32), %r3
	or	%r3, lo(.L__profc___udivmodhi4+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodhi4+36), %r12
	or	%r12, lo(.L__profc___udivmodhi4+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	uld.h	-22[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB129_6
	st	%r3, -28[%fp]
	bt	.LBB129_3
	nop
.LBB129_3:                              !   in Loop: Header=BB129_1 Depth=1
	mov	hi(__llvm_gcov_ctr.129+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.129+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.129+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.129+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___udivmodhi4+40), %r3
	or	%r3, lo(.L__profc___udivmodhi4+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodhi4+44), %r12
	or	%r12, lo(.L__profc___udivmodhi4+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB129_4
	st	%r3, 0[%r9]
.LBB129_4:                              !   in Loop: Header=BB129_1 Depth=1
	mov	hi(.L__profc___udivmodhi4+16), %r3
	or	%r3, lo(.L__profc___udivmodhi4+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodhi4+20), %r12
	or	%r12, lo(.L__profc___udivmodhi4+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	uld.h	-14[%fp], %r3
	mov	0x8000, %r9
	and	%r3, %r9, %r9
	sub.f	%r9, 0x0, %r0
	seq	%r3
	st	%r3, -32[%fp]
	sub.f	%r9, 0x0, %r0
	bne	.LBB129_6
	st	%r3, -28[%fp]
	bt	.LBB129_5
	nop
.LBB129_5:                              !   in Loop: Header=BB129_1 Depth=1
	ld	-32[%fp], %r3
	mov	hi(__llvm_gcov_ctr.129+16), %r9
	or	%r9, lo(__llvm_gcov_ctr.129+16), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.129+20), %r13
	or	%r13, lo(__llvm_gcov_ctr.129+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc___udivmodhi4+24), %r9
	or	%r9, lo(.L__profc___udivmodhi4+24), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc___udivmodhi4+28), %r13
	or	%r13, lo(.L__profc___udivmodhi4+28), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB129_6
	st	%r3, -28[%fp]
.LBB129_6:                              !   in Loop: Header=BB129_1 Depth=1
	ld	-28[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB129_8
	nop
	bt	.LBB129_7
	nop
.LBB129_7:                              !   in Loop: Header=BB129_1 Depth=1
	mov	hi(__llvm_gcov_ctr.129+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.129+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.129+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.129+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___udivmodhi4+8), %r3
	or	%r3, lo(.L__profc___udivmodhi4+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodhi4+12), %r12
	or	%r12, lo(.L__profc___udivmodhi4+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	uld.h	-14[%fp], %r3
	sh	%r3, 0x1, %r3
	st.h	%r3, -14[%fp]
	uld.h	-22[%fp], %r3
	sh	%r3, 0x1, %r3
	bt	.LBB129_1
	st.h	%r3, -22[%fp]
.LBB129_8:
	bt	.LBB129_9
	nop
.LBB129_9:                              ! =>This Inner Loop Header: Depth=1
	uld.h	-22[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB129_13
	nop
	bt	.LBB129_10
	nop
.LBB129_10:                             !   in Loop: Header=BB129_9 Depth=1
	mov	hi(.L__profc___udivmodhi4+48), %r3
	or	%r3, lo(.L__profc___udivmodhi4+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodhi4+52), %r12
	or	%r12, lo(.L__profc___udivmodhi4+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	uld.h	-12[%fp], %r3
	uld.h	-14[%fp], %r9
	sub.f	%r3, %r9, %r0
	blt	.LBB129_12
	nop
	bt	.LBB129_11
	nop
.LBB129_11:                             !   in Loop: Header=BB129_9 Depth=1
	mov	hi(__llvm_gcov_ctr.129+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.129+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.129+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.129+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___udivmodhi4+56), %r3
	or	%r3, lo(.L__profc___udivmodhi4+56), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodhi4+60), %r12
	or	%r12, lo(.L__profc___udivmodhi4+60), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	uld.h	-14[%fp], %r9
	uld.h	-12[%fp], %r3
	sub	%r3, %r9, %r3
	st.h	%r3, -12[%fp]
	uld.h	-22[%fp], %r9
	uld.h	-24[%fp], %r3
	or	%r3, %r9, %r3
	bt	.LBB129_12
	st.h	%r3, -24[%fp]
.LBB129_12:                             !   in Loop: Header=BB129_9 Depth=1
	mov	hi(__llvm_gcov_ctr.129+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.129+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.129+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.129+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	uld.h	-22[%fp], %r3
	sh	%r3, -0x1, %r3
	st.h	%r3, -22[%fp]
	uld.h	-14[%fp], %r3
	sh	%r3, -0x1, %r3
	bt	.LBB129_9
	st.h	%r3, -14[%fp]
.LBB129_13:
	ld	-20[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB129_15
	nop
	bt	.LBB129_14
	nop
.LBB129_14:
	mov	hi(__llvm_gcov_ctr.129+48), %r3
	or	%r3, lo(__llvm_gcov_ctr.129+48), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.129+52), %r12
	or	%r12, lo(__llvm_gcov_ctr.129+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___udivmodhi4+64), %r3
	or	%r3, lo(.L__profc___udivmodhi4+64), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodhi4+68), %r12
	or	%r12, lo(.L__profc___udivmodhi4+68), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	uld.h	-12[%fp], %r3
	bt	.LBB129_16
	st.h	%r3, -10[%fp]
.LBB129_15:
	mov	hi(__llvm_gcov_ctr.129+56), %r3
	or	%r3, lo(__llvm_gcov_ctr.129+56), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.129+60), %r12
	or	%r12, lo(__llvm_gcov_ctr.129+60), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	uld.h	-24[%fp], %r3
	bt	.LBB129_16
	st.h	%r3, -10[%fp]
.LBB129_16:
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
	mov	hi(.L__profc___udivmodsi4_libgcc), %r3
	or	%r3, lo(.L__profc___udivmodsi4_libgcc), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodsi4_libgcc+4), %r12
	or	%r12, lo(.L__profc___udivmodsi4_libgcc+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	buge	.LBB130_6
	st	%r3, -36[%fp]
	bt	.LBB130_2
	nop
.LBB130_2:                              !   in Loop: Header=BB130_1 Depth=1
	mov	hi(__llvm_gcov_ctr.130), %r3
	or	%r3, lo(__llvm_gcov_ctr.130), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.130+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.130+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___udivmodsi4_libgcc+32), %r3
	or	%r3, lo(.L__profc___udivmodsi4_libgcc+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodsi4_libgcc+36), %r12
	or	%r12, lo(.L__profc___udivmodsi4_libgcc+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-28[%fp], %r9
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x0, %r0
	beq	.LBB130_6
	st	%r3, -36[%fp]
	bt	.LBB130_3
	nop
.LBB130_3:                              !   in Loop: Header=BB130_1 Depth=1
	mov	hi(__llvm_gcov_ctr.130+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.130+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.130+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.130+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___udivmodsi4_libgcc+40), %r3
	or	%r3, lo(.L__profc___udivmodsi4_libgcc+40), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodsi4_libgcc+44), %r12
	or	%r12, lo(.L__profc___udivmodsi4_libgcc+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB130_4
	st	%r3, 0[%r9]
.LBB130_4:                              !   in Loop: Header=BB130_1 Depth=1
	mov	hi(.L__profc___udivmodsi4_libgcc+16), %r3
	or	%r3, lo(.L__profc___udivmodsi4_libgcc+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodsi4_libgcc+20), %r12
	or	%r12, lo(.L__profc___udivmodsi4_libgcc+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r3
	mov	0x80000000, %r9
	and	%r3, %r9, %r9
	sub.f	%r9, 0x0, %r0
	seq	%r3
	st	%r3, -40[%fp]
	sub.f	%r9, 0x0, %r0
	bne	.LBB130_6
	st	%r3, -36[%fp]
	bt	.LBB130_5
	nop
.LBB130_5:                              !   in Loop: Header=BB130_1 Depth=1
	ld	-40[%fp], %r3
	mov	hi(__llvm_gcov_ctr.130+16), %r9
	or	%r9, lo(__llvm_gcov_ctr.130+16), %r12
	ld	0[%r12], %r9
	mov	hi(__llvm_gcov_ctr.130+20), %r13
	or	%r13, lo(__llvm_gcov_ctr.130+20), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	mov	hi(.L__profc___udivmodsi4_libgcc+24), %r9
	or	%r9, lo(.L__profc___udivmodsi4_libgcc+24), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc___udivmodsi4_libgcc+28), %r13
	or	%r13, lo(.L__profc___udivmodsi4_libgcc+28), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
	bt	.LBB130_6
	st	%r3, -36[%fp]
.LBB130_6:                              !   in Loop: Header=BB130_1 Depth=1
	ld	-36[%fp], %r3
	mov	0x1, %r9
	and	%r3, %r9, %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB130_8
	nop
	bt	.LBB130_7
	nop
.LBB130_7:                              !   in Loop: Header=BB130_1 Depth=1
	mov	hi(__llvm_gcov_ctr.130+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.130+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.130+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.130+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___udivmodsi4_libgcc+8), %r3
	or	%r3, lo(.L__profc___udivmodsi4_libgcc+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodsi4_libgcc+12), %r12
	or	%r12, lo(.L__profc___udivmodsi4_libgcc+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r3
	sh	%r3, 0x1, %r3
	st	%r3, -20[%fp]
	ld	-28[%fp], %r3
	sh	%r3, 0x1, %r3
	bt	.LBB130_1
	st	%r3, -28[%fp]
.LBB130_8:
	bt	.LBB130_9
	nop
.LBB130_9:                              ! =>This Inner Loop Header: Depth=1
	ld	-28[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB130_13
	nop
	bt	.LBB130_10
	nop
.LBB130_10:                             !   in Loop: Header=BB130_9 Depth=1
	mov	hi(.L__profc___udivmodsi4_libgcc+48), %r3
	or	%r3, lo(.L__profc___udivmodsi4_libgcc+48), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodsi4_libgcc+52), %r12
	or	%r12, lo(.L__profc___udivmodsi4_libgcc+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	ld	-20[%fp], %r9
	sub.f	%r3, %r9, %r0
	bult	.LBB130_12
	nop
	bt	.LBB130_11
	nop
.LBB130_11:                             !   in Loop: Header=BB130_9 Depth=1
	mov	hi(__llvm_gcov_ctr.130+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.130+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.130+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.130+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___udivmodsi4_libgcc+56), %r3
	or	%r3, lo(.L__profc___udivmodsi4_libgcc+56), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodsi4_libgcc+60), %r12
	or	%r12, lo(.L__profc___udivmodsi4_libgcc+60), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-20[%fp], %r9
	ld	-16[%fp], %r3
	sub	%r3, %r9, %r3
	st	%r3, -16[%fp]
	ld	-28[%fp], %r9
	ld	-32[%fp], %r3
	or	%r3, %r9, %r3
	bt	.LBB130_12
	st	%r3, -32[%fp]
.LBB130_12:                             !   in Loop: Header=BB130_9 Depth=1
	mov	hi(__llvm_gcov_ctr.130+40), %r3
	or	%r3, lo(__llvm_gcov_ctr.130+40), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.130+44), %r12
	or	%r12, lo(__llvm_gcov_ctr.130+44), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-28[%fp], %r3
	sh	%r3, -0x1, %r3
	st	%r3, -28[%fp]
	ld	-20[%fp], %r3
	sh	%r3, -0x1, %r3
	bt	.LBB130_9
	st	%r3, -20[%fp]
.LBB130_13:
	ld	-24[%fp], %r3
	sub.f	%r3, 0x0, %r0
	beq	.LBB130_15
	nop
	bt	.LBB130_14
	nop
.LBB130_14:
	mov	hi(__llvm_gcov_ctr.130+48), %r3
	or	%r3, lo(__llvm_gcov_ctr.130+48), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.130+52), %r12
	or	%r12, lo(__llvm_gcov_ctr.130+52), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___udivmodsi4_libgcc+64), %r3
	or	%r3, lo(.L__profc___udivmodsi4_libgcc+64), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___udivmodsi4_libgcc+68), %r12
	or	%r12, lo(.L__profc___udivmodsi4_libgcc+68), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	bt	.LBB130_16
	st	%r3, -12[%fp]
.LBB130_15:
	mov	hi(__llvm_gcov_ctr.130+56), %r3
	or	%r3, lo(__llvm_gcov_ctr.130+56), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.130+60), %r12
	or	%r12, lo(__llvm_gcov_ctr.130+60), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-32[%fp], %r3
	bt	.LBB130_16
	st	%r3, -12[%fp]
.LBB130_16:
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
	mov	hi(.L__profc___ashldi3), %r9
	or	%r9, lo(.L__profc___ashldi3), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc___ashldi3+4), %r13
	or	%r13, lo(.L__profc___ashldi3+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(__llvm_gcov_ctr.131), %r3
	or	%r3, lo(__llvm_gcov_ctr.131), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.131+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.131+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___ashldi3+8), %r3
	or	%r3, lo(.L__profc___ashldi3+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___ashldi3+12), %r12
	or	%r12, lo(.L__profc___ashldi3+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.131+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.131+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.131+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.131+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___ashldi3+16), %r3
	or	%r3, lo(.L__profc___ashldi3+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___ashldi3+20), %r12
	or	%r12, lo(.L__profc___ashldi3+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.131+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.131+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.131+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.131+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___ashrdi3), %r9
	or	%r9, lo(.L__profc___ashrdi3), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc___ashrdi3+4), %r13
	or	%r13, lo(.L__profc___ashrdi3+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(__llvm_gcov_ctr.132), %r3
	or	%r3, lo(__llvm_gcov_ctr.132), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.132+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.132+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___ashrdi3+8), %r3
	or	%r3, lo(.L__profc___ashrdi3+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___ashrdi3+12), %r12
	or	%r12, lo(.L__profc___ashrdi3+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.132+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.132+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.132+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.132+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___ashrdi3+16), %r3
	or	%r3, lo(.L__profc___ashrdi3+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___ashrdi3+20), %r12
	or	%r12, lo(.L__profc___ashrdi3+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.132+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.132+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.132+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.132+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.133), %r3
	or	%r3, lo(__llvm_gcov_ctr.133), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.133+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.133+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	mov	hi(.L__profc___bswapdi2), %r9
	or	%r9, lo(.L__profc___bswapdi2), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc___bswapdi2+4), %r13
	or	%r13, lo(.L__profc___bswapdi2+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(__llvm_gcov_ctr.134), %r3
	or	%r3, lo(__llvm_gcov_ctr.134), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.134+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.134+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc___bswapsi2), %r3
	or	%r3, lo(.L__profc___bswapsi2), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___bswapsi2+4), %r12
	or	%r12, lo(.L__profc___bswapsi2+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.135), %r3
	or	%r3, lo(__llvm_gcov_ctr.135), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.135+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.135+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc___clzsi2), %r3
	or	%r3, lo(.L__profc___clzsi2), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___clzsi2+4), %r12
	or	%r12, lo(.L__profc___clzsi2+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___cmpdi2), %r12
	or	%r12, lo(.L__profc___cmpdi2), %r13
	ld	0[%r13], %r12
	mov	hi(.L__profc___cmpdi2+4), %r14
	or	%r14, lo(.L__profc___cmpdi2+4), %r16
	ld	0[%r16], %r14
	add	%r14, 0x1, %r14
	sub.f	%r14, 0x0, %r0
	seq	%r17
	add	%r12, %r17, %r12
	st	%r14, 0[%r16]
	st	%r12, 0[%r13]
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
	mov	hi(__llvm_gcov_ctr.136), %r3
	or	%r3, lo(__llvm_gcov_ctr.136), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.136+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.136+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___cmpdi2+8), %r3
	or	%r3, lo(.L__profc___cmpdi2+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmpdi2+12), %r12
	or	%r12, lo(.L__profc___cmpdi2+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.136+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.136+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.136+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.136+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___cmpdi2+16), %r3
	or	%r3, lo(.L__profc___cmpdi2+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmpdi2+20), %r12
	or	%r12, lo(.L__profc___cmpdi2+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.136+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.136+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.136+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.136+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___cmpdi2+24), %r3
	or	%r3, lo(.L__profc___cmpdi2+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmpdi2+28), %r12
	or	%r12, lo(.L__profc___cmpdi2+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.136+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.136+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.136+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.136+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___cmpdi2+32), %r3
	or	%r3, lo(.L__profc___cmpdi2+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___cmpdi2+36), %r12
	or	%r12, lo(.L__profc___cmpdi2+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	0x2, %r3
	bt	.LBB136_9
	st	%r3, -12[%fp]
.LBB136_8:
	mov	hi(__llvm_gcov_ctr.136+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.136+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.136+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.136+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.137), %r3
	or	%r3, lo(__llvm_gcov_ctr.137), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.137+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.137+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r9
	st	%r7, 0[%r9]
	st	%r6, -16[%fp]
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r19, 0[%r3]
	st	%r18, -24[%fp]
	mov	hi(.L__profc___aeabi_lcmp), %r12
	or	%r12, lo(.L__profc___aeabi_lcmp), %r13
	ld	0[%r13], %r12
	mov	hi(.L__profc___aeabi_lcmp+4), %r14
	or	%r14, lo(.L__profc___aeabi_lcmp+4), %r16
	ld	0[%r16], %r14
	add	%r14, 0x1, %r14
	sub.f	%r14, 0x0, %r0
	seq	%r17
	add	%r12, %r17, %r12
	st	%r14, 0[%r16]
	st	%r12, 0[%r13]
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
	mov	hi(__llvm_gcov_ctr.138), %r3
	or	%r3, lo(__llvm_gcov_ctr.138), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.138+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.138+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc___ctzsi2), %r3
	or	%r3, lo(.L__profc___ctzsi2), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___ctzsi2+4), %r12
	or	%r12, lo(.L__profc___ctzsi2+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___lshrdi3), %r9
	or	%r9, lo(.L__profc___lshrdi3), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc___lshrdi3+4), %r13
	or	%r13, lo(.L__profc___lshrdi3+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(__llvm_gcov_ctr.139), %r3
	or	%r3, lo(__llvm_gcov_ctr.139), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.139+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.139+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___lshrdi3+8), %r3
	or	%r3, lo(.L__profc___lshrdi3+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___lshrdi3+12), %r12
	or	%r12, lo(.L__profc___lshrdi3+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.139+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.139+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.139+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.139+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___lshrdi3+16), %r3
	or	%r3, lo(.L__profc___lshrdi3+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___lshrdi3+20), %r12
	or	%r12, lo(.L__profc___lshrdi3+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.139+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.139+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.139+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.139+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.140), %r3
	or	%r3, lo(__llvm_gcov_ctr.140), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.140+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.140+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	st	%r7, -16[%fp]
	mov	hi(.L__profc___muldsi3), %r3
	or	%r3, lo(.L__profc___muldsi3), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___muldsi3+4), %r12
	or	%r12, lo(.L__profc___muldsi3+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.141), %r3
	or	%r3, lo(__llvm_gcov_ctr.141), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.141+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.141+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r9
	st	%r7, 0[%r9]
	st	%r6, -16[%fp]
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r19, 0[%r3]
	st	%r18, -24[%fp]
	mov	hi(.L__profc___muldi3_compiler_rt), %r12
	or	%r12, lo(.L__profc___muldi3_compiler_rt), %r13
	ld	0[%r13], %r12
	mov	hi(.L__profc___muldi3_compiler_rt+4), %r14
	or	%r14, lo(.L__profc___muldi3_compiler_rt+4), %r16
	ld	0[%r16], %r14
	add	%r14, 0x1, %r14
	sub.f	%r14, 0x0, %r0
	seq	%r17
	add	%r12, %r17, %r12
	st	%r14, 0[%r16]
	st	%r12, 0[%r13]
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
	mov	hi(__llvm_gcov_ctr.142), %r3
	or	%r3, lo(__llvm_gcov_ctr.142), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.142+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.142+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	mov	hi(.L__profc___negdi2), %r9
	or	%r9, lo(.L__profc___negdi2), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc___negdi2+4), %r13
	or	%r13, lo(.L__profc___negdi2+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(__llvm_gcov_ctr.143), %r3
	or	%r3, lo(__llvm_gcov_ctr.143), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.143+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.143+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	mov	hi(.L__profc___paritydi2), %r9
	or	%r9, lo(.L__profc___paritydi2), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc___paritydi2+4), %r13
	or	%r13, lo(.L__profc___paritydi2+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(__llvm_gcov_ctr.144), %r3
	or	%r3, lo(__llvm_gcov_ctr.144), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.144+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.144+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc___paritysi2), %r3
	or	%r3, lo(.L__profc___paritysi2), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___paritysi2+4), %r12
	or	%r12, lo(.L__profc___paritysi2+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.145), %r3
	or	%r3, lo(__llvm_gcov_ctr.145), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.145+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.145+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r3
	st	%r7, 0[%r3]
	st	%r6, -16[%fp]
	mov	hi(.L__profc___popcountdi2), %r9
	or	%r9, lo(.L__profc___popcountdi2), %r12
	ld	0[%r12], %r9
	mov	hi(.L__profc___popcountdi2+4), %r13
	or	%r13, lo(.L__profc___popcountdi2+4), %r14
	ld	0[%r14], %r13
	add	%r13, 0x1, %r13
	sub.f	%r13, 0x0, %r0
	seq	%r16
	add	%r9, %r16, %r9
	st	%r13, 0[%r14]
	st	%r9, 0[%r12]
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
	mov	hi(__llvm_gcov_ctr.146), %r3
	or	%r3, lo(__llvm_gcov_ctr.146), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.146+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.146+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	st	%r6, -12[%fp]
	mov	hi(.L__profc___popcountsi2), %r3
	or	%r3, lo(.L__profc___popcountsi2), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___popcountsi2+4), %r12
	or	%r12, lo(.L__profc___popcountsi2+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___powidf2), %r3
	or	%r3, lo(.L__profc___powidf2), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___powidf2+4), %r12
	or	%r12, lo(.L__profc___powidf2+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___powidf2+8), %r3
	or	%r3, lo(.L__profc___powidf2+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___powidf2+12), %r12
	or	%r12, lo(.L__profc___powidf2+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.147), %r3
	or	%r3, lo(__llvm_gcov_ctr.147), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.147+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.147+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___powidf2+16), %r3
	or	%r3, lo(.L__profc___powidf2+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___powidf2+20), %r12
	or	%r12, lo(.L__profc___powidf2+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___powidf2+24), %r3
	or	%r3, lo(.L__profc___powidf2+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___powidf2+28), %r12
	or	%r12, lo(.L__profc___powidf2+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB147_6
	st	%r3, 0[%r9]
.LBB147_5:                              !   in Loop: Header=BB147_1 Depth=1
	mov	hi(__llvm_gcov_ctr.147+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.147+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.147+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.147+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.147+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.147+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.147+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.147+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___powidf2+32), %r3
	or	%r3, lo(.L__profc___powidf2+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___powidf2+36), %r12
	or	%r12, lo(.L__profc___powidf2+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.147+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.147+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.147+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.147+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___powisf2), %r3
	or	%r3, lo(.L__profc___powisf2), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___powisf2+4), %r12
	or	%r12, lo(.L__profc___powisf2+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-16[%fp], %r3
	sh	%r3, -0x1f, %r3
	st	%r3, -20[%fp]
	mov	0x3f800000, %r3
	bt	.LBB148_1
	st	%r3, -24[%fp]
.LBB148_1:                              ! =>This Inner Loop Header: Depth=1
	mov	hi(.L__profc___powisf2+8), %r3
	or	%r3, lo(.L__profc___powisf2+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___powisf2+12), %r12
	or	%r12, lo(.L__profc___powisf2+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.148), %r3
	or	%r3, lo(__llvm_gcov_ctr.148), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.148+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.148+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___powisf2+16), %r3
	or	%r3, lo(.L__profc___powisf2+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___powisf2+20), %r12
	or	%r12, lo(.L__profc___powisf2+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___powisf2+24), %r3
	or	%r3, lo(.L__profc___powisf2+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___powisf2+28), %r12
	or	%r12, lo(.L__profc___powisf2+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	bt	.LBB148_6
	st	%r3, 0[%r9]
.LBB148_5:                              !   in Loop: Header=BB148_1 Depth=1
	mov	hi(__llvm_gcov_ctr.148+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.148+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.148+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.148+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.148+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.148+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.148+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.148+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___powisf2+32), %r3
	or	%r3, lo(.L__profc___powisf2+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___powisf2+36), %r12
	or	%r12, lo(.L__profc___powisf2+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	ld	-24[%fp], %r7
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	__divsf3
	mov	0x3f800000, %r6
	bt	.LBB148_9
	st	%rv, -28[%fp]
.LBB148_8:
	mov	hi(__llvm_gcov_ctr.148+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.148+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.148+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.148+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(.L__profc___ucmpdi2), %r12
	or	%r12, lo(.L__profc___ucmpdi2), %r13
	ld	0[%r13], %r12
	mov	hi(.L__profc___ucmpdi2+4), %r14
	or	%r14, lo(.L__profc___ucmpdi2+4), %r16
	ld	0[%r16], %r14
	add	%r14, 0x1, %r14
	sub.f	%r14, 0x0, %r0
	seq	%r17
	add	%r12, %r17, %r12
	st	%r14, 0[%r16]
	st	%r12, 0[%r13]
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
	mov	hi(__llvm_gcov_ctr.149), %r3
	or	%r3, lo(__llvm_gcov_ctr.149), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.149+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.149+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___ucmpdi2+8), %r3
	or	%r3, lo(.L__profc___ucmpdi2+8), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___ucmpdi2+12), %r12
	or	%r12, lo(.L__profc___ucmpdi2+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.149+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.149+8), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.149+12), %r12
	or	%r12, lo(__llvm_gcov_ctr.149+12), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___ucmpdi2+16), %r3
	or	%r3, lo(.L__profc___ucmpdi2+16), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___ucmpdi2+20), %r12
	or	%r12, lo(.L__profc___ucmpdi2+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.149+16), %r3
	or	%r3, lo(__llvm_gcov_ctr.149+16), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.149+20), %r12
	or	%r12, lo(__llvm_gcov_ctr.149+20), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___ucmpdi2+24), %r3
	or	%r3, lo(.L__profc___ucmpdi2+24), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___ucmpdi2+28), %r12
	or	%r12, lo(.L__profc___ucmpdi2+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.149+24), %r3
	or	%r3, lo(__llvm_gcov_ctr.149+24), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.149+28), %r12
	or	%r12, lo(__llvm_gcov_ctr.149+28), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	hi(.L__profc___ucmpdi2+32), %r3
	or	%r3, lo(.L__profc___ucmpdi2+32), %r9
	ld	0[%r9], %r3
	mov	hi(.L__profc___ucmpdi2+36), %r12
	or	%r12, lo(.L__profc___ucmpdi2+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	mov	0x2, %r3
	bt	.LBB149_9
	st	%r3, -12[%fp]
.LBB149_8:
	mov	hi(__llvm_gcov_ctr.149+32), %r3
	or	%r3, lo(__llvm_gcov_ctr.149+32), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.149+36), %r12
	or	%r12, lo(__llvm_gcov_ctr.149+36), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
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
	mov	hi(__llvm_gcov_ctr.150), %r3
	or	%r3, lo(__llvm_gcov_ctr.150), %r9
	ld	0[%r9], %r3
	mov	hi(__llvm_gcov_ctr.150+4), %r12
	or	%r12, lo(__llvm_gcov_ctr.150+4), %r13
	ld	0[%r13], %r12
	add	%r12, 0x1, %r12
	sub.f	%r12, 0x0, %r0
	seq	%r14
	add	%r3, %r14, %r3
	st	%r12, 0[%r13]
	st	%r3, 0[%r9]
	sub	%fp, 0x10, %r3
	or	%r3, 0x4, %r9
	st	%r7, 0[%r9]
	st	%r6, -16[%fp]
	sub	%fp, 0x18, %r3
	or	%r3, 0x4, %r3
	st	%r19, 0[%r3]
	st	%r18, -24[%fp]
	mov	hi(.L__profc___aeabi_ulcmp), %r12
	or	%r12, lo(.L__profc___aeabi_ulcmp), %r13
	ld	0[%r13], %r12
	mov	hi(.L__profc___aeabi_ulcmp+4), %r14
	or	%r14, lo(.L__profc___aeabi_ulcmp+4), %r16
	ld	0[%r16], %r14
	add	%r14, 0x1, %r14
	sub.f	%r14, 0x0, %r0
	seq	%r17
	add	%r12, %r17, %r12
	st	%r14, 0[%r16]
	st	%r12, 0[%r13]
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
	.p2align	2                               ! -- Begin function __llvm_gcov_writeout
	.type	__llvm_gcov_writeout,@function
__llvm_gcov_writeout:                   ! @__llvm_gcov_writeout
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x38, %sp
	or	%r0, 0x0, %r3
	st	%r3, -12[%fp]
.LBB151_1:                              ! =>This Loop Header: Depth=1
                                        !     Child Loop BB151_2 Depth 2
	ld	-12[%fp], %r3
	st	%r3, -36[%fp]
	sh	%r3, 0x3, %r9
	sh	%r3, 0x5, %r3
	sub	%r3, %r9, %r9
	st	%r9, -32[%fp]
	mov	hi(__llvm_internal_gcov_emit_file_info), %r3
	or	%r3, lo(__llvm_internal_gcov_emit_file_info), %r3
	add	%r9, %r3, %r3
	ld	0[%r3], %r3
	mov	hi(__llvm_internal_gcov_emit_file_info+4), %r12
	or	%r12, lo(__llvm_internal_gcov_emit_file_info+4), %r12
	add	%r9, %r12, %r12
	ld	0[%r12], %r12
	mov	hi(__llvm_internal_gcov_emit_file_info+8), %r13
	or	%r13, lo(__llvm_internal_gcov_emit_file_info+8), %r13
	add	%r9, %r13, %r9
	ld	0[%r9], %r13
	or	%sp, 0x0, %r9
	st	%r13, 8[%r9]
	st	%r12, 4[%r9]
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	llvm_gcda_start_file
	st	%r3, 0[%r9]
	ld	-32[%fp], %r3
	mov	hi(__llvm_internal_gcov_emit_file_info+12), %r9
	or	%r9, lo(__llvm_internal_gcov_emit_file_info+12), %r9
	add	%r3, %r9, %r9
	ld	0[%r9], %r9
	st	%r9, -28[%fp]
	mov	hi(__llvm_internal_gcov_emit_file_info+16), %r12
	or	%r12, lo(__llvm_internal_gcov_emit_file_info+16), %r12
	add	%r3, %r12, %r12
	ld	0[%r12], %r12
	st	%r12, -24[%fp]
	mov	hi(__llvm_internal_gcov_emit_file_info+20), %r12
	or	%r12, lo(__llvm_internal_gcov_emit_file_info+20), %r12
	add	%r3, %r12, %r3
	ld	0[%r3], %r3
	st	%r3, -20[%fp]
	or	%r0, 0x0, %r3
	sub.f	%r9, 0x1, %r0
	blt	.LBB151_3
	st	%r3, -16[%fp]
	bt	.LBB151_2
	nop
.LBB151_2:                              !   Parent Loop BB151_1 Depth=1
                                        ! =>  This Inner Loop Header: Depth=2
	ld	-16[%fp], %r9
	ld	-24[%fp], %r3
	st	%r9, -40[%fp]
	sh	%r9, 0x2, %r12
	sh	%r9, 0x4, %r9
	sub	%r9, %r12, %r9
	add	%r3, %r9, %r9
	ld	0[%r9], %r3
	ld	4[%r9], %r12
	ld	8[%r9], %r13
	or	%sp, 0x0, %r9
	st	%r13, 8[%r9]
	st	%r12, 4[%r9]
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	llvm_gcda_emit_function
	st	%r3, 0[%r9]
	ld	-20[%fp], %r3
	ld	-40[%fp], %r9
	sh	%r9, 0x3, %r9
	add	%r3, %r9, %r9
	ld	0[%r9], %r3
	ld	4[%r9], %r12
	or	%sp, 0x0, %r9
	st	%r12, 4[%r9]
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	llvm_gcda_emit_arcs
	st	%r3, 0[%r9]
	ld	-40[%fp], %r3
	ld	-28[%fp], %r9
	add	%r3, 0x1, %r3
	sub.f	%r3, %r9, %r0
	blt	.LBB151_2
	st	%r3, -16[%fp]
	bt	.LBB151_3
	nop
.LBB151_3:                              !   in Loop: Header=BB151_1 Depth=1
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	llvm_gcda_summary_info
	nop
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	llvm_gcda_end_file
	nop
	ld	-36[%fp], %r3
	add	%r3, 0x1, %r3
	sub.f	%r3, 0x1, %r0
	blt	.LBB151_1
	st	%r3, -12[%fp]
	bt	.LBB151_4
	nop
.LBB151_4:
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end151:
	.size	__llvm_gcov_writeout, .Lfunc_end151-__llvm_gcov_writeout
                                        ! -- End function
	.p2align	2                               ! -- Begin function __llvm_gcov_reset
	.type	__llvm_gcov_reset,@function
__llvm_gcov_reset:                      ! @__llvm_gcov_reset
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x28, %sp
	mov	hi(__llvm_gcov_ctr), %r3
	or	%r3, lo(__llvm_gcov_ctr), %r6
	or	%r0, 0x0, %r7
	st	%r7, -12[%fp]
	mov	0x28, %r18
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	st	%r18, -16[%fp]
	ld	-16[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.1), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.1), %r6
	ld	-16[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.2), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.2), %r6
	ld	-16[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.3), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.3), %r6
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.4), %r3
	or	%r3, lo(__llvm_gcov_ctr.4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.4+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.4+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.4+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.4+8), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.4+12), %r3
	or	%r3, lo(__llvm_gcov_ctr.4+12), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.5), %r3
	or	%r3, lo(__llvm_gcov_ctr.5), %r6
	mov	0x18, %r18
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	st	%r18, -24[%fp]
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.6), %r3
	or	%r3, lo(__llvm_gcov_ctr.6), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.6+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.6+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.6+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.6+8), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.6+12), %r3
	or	%r3, lo(__llvm_gcov_ctr.6+12), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.7), %r3
	or	%r3, lo(__llvm_gcov_ctr.7), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.7+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.7+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.7+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.7+8), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.7+12), %r3
	or	%r3, lo(__llvm_gcov_ctr.7+12), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.8), %r3
	or	%r3, lo(__llvm_gcov_ctr.8), %r6
	mov	0x20, %r18
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	st	%r18, -20[%fp]
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.9), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.9), %r6
	ld	-20[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.10), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.10), %r6
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.11), %r3
	or	%r3, lo(__llvm_gcov_ctr.11), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.11+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.11+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.11+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.11+8), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.11+12), %r3
	or	%r3, lo(__llvm_gcov_ctr.11+12), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.12), %r3
	or	%r3, lo(__llvm_gcov_ctr.12), %r6
	mov	0x38, %r18
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	st	%r18, -32[%fp]
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.13), %r3
	or	%r3, lo(__llvm_gcov_ctr.13), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.13+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.13+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.13+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.13+8), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.13+12), %r3
	or	%r3, lo(__llvm_gcov_ctr.13+12), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.14), %r3
	or	%r3, lo(__llvm_gcov_ctr.14), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.14+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.14+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.15+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.15+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.15), %r3
	or	%r3, lo(__llvm_gcov_ctr.15), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.16), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.16), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.17), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.17), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.18), %r3
	or	%r3, lo(__llvm_gcov_ctr.18), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.18+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.18+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.19), %r3
	or	%r3, lo(__llvm_gcov_ctr.19), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.19+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.19+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.20), %r3
	or	%r3, lo(__llvm_gcov_ctr.20), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.20+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.20+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.21+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.21+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.21), %r3
	or	%r3, lo(__llvm_gcov_ctr.21), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.22), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.22), %r6
	ld	-16[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.23), %r3
	or	%r3, lo(__llvm_gcov_ctr.23), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.23+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.23+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.24), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.24), %r6
	ld	-32[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.25), %r3
	or	%r3, lo(__llvm_gcov_ctr.25), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.25+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.25+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.26), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.26), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.27), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.27), %r6
	ld	-20[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.28), %r3
	or	%r3, lo(__llvm_gcov_ctr.28), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.28+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.28+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.29), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.29), %r6
	ld	-20[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.30), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.30), %r6
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.31), %r3
	or	%r3, lo(__llvm_gcov_ctr.31), %r6
	mov	0x30, %r18
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	st	%r18, -36[%fp]
	ld	-36[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.32), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.32), %r6
	ld	-36[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.33), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.33), %r6
	ld	-36[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.34), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.34), %r6
	ld	-36[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.35), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.35), %r6
	ld	-36[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.36), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.36), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.37), %r3
	or	%r3, lo(__llvm_gcov_ctr.37), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.37+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.37+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.37+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.37+8), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.37+12), %r3
	or	%r3, lo(__llvm_gcov_ctr.37+12), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.38), %r3
	or	%r3, lo(__llvm_gcov_ctr.38), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.38+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.38+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.39+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.39+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.39), %r3
	or	%r3, lo(__llvm_gcov_ctr.39), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.40), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.40), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.41), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.41), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.42), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.42), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.43), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.43), %r6
	ld	-36[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.44), %r3
	or	%r3, lo(__llvm_gcov_ctr.44), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.44+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.44+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.44+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.44+8), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.44+12), %r3
	or	%r3, lo(__llvm_gcov_ctr.44+12), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.45), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.45), %r6
	ld	-36[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.46), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.46), %r6
	ld	-36[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.47), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.47), %r6
	ld	-20[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.48), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.48), %r6
	ld	-20[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.49), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.49), %r6
	ld	-16[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.50), %r3
	or	%r3, lo(__llvm_gcov_ctr.50), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.50+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.50+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.51), %r3
	or	%r3, lo(__llvm_gcov_ctr.51), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.51+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.51+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.51+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.51+8), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.51+12), %r3
	or	%r3, lo(__llvm_gcov_ctr.51+12), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.52+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.52+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.52), %r3
	or	%r3, lo(__llvm_gcov_ctr.52), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.53+12), %r3
	or	%r3, lo(__llvm_gcov_ctr.53+12), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.53+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.53+8), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.53+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.53+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.53), %r3
	or	%r3, lo(__llvm_gcov_ctr.53), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.54+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.54+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.54), %r3
	or	%r3, lo(__llvm_gcov_ctr.54), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.55+12), %r3
	or	%r3, lo(__llvm_gcov_ctr.55+12), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.55+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.55+8), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.55+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.55+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.55), %r3
	or	%r3, lo(__llvm_gcov_ctr.55), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.56+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.56+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.56), %r3
	or	%r3, lo(__llvm_gcov_ctr.56), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.57), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.57), %r6
	ld	-36[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.58), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.58), %r6
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.59), %r3
	or	%r3, lo(__llvm_gcov_ctr.59), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.59+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.59+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.59+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.59+8), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.59+12), %r3
	or	%r3, lo(__llvm_gcov_ctr.59+12), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.60), %r3
	or	%r3, lo(__llvm_gcov_ctr.60), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.60+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.60+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.60+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.60+8), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.60+12), %r3
	or	%r3, lo(__llvm_gcov_ctr.60+12), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.61), %r3
	or	%r3, lo(__llvm_gcov_ctr.61), %r6
	mov	0x40, %r18
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	st	%r18, -28[%fp]
	ld	-16[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.62), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.62), %r6
	ld	-36[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.63), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.63), %r6
	ld	-16[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.64), %r3
	or	%r3, lo(__llvm_gcov_ctr.64), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.64+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.64+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.64+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.64+8), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.64+12), %r3
	or	%r3, lo(__llvm_gcov_ctr.64+12), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.65), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.65), %r6
	ld	-16[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.66), %r3
	or	%r3, lo(__llvm_gcov_ctr.66), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.66+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.66+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.66+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.66+8), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.66+12), %r3
	or	%r3, lo(__llvm_gcov_ctr.66+12), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.67), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.67), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.68), %r3
	or	%r3, lo(__llvm_gcov_ctr.68), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.68+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.68+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.69), %r3
	or	%r3, lo(__llvm_gcov_ctr.69), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.69+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.69+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.70), %r3
	or	%r3, lo(__llvm_gcov_ctr.70), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.70+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.70+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.71), %r3
	or	%r3, lo(__llvm_gcov_ctr.71), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.71+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.71+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.72), %r3
	or	%r3, lo(__llvm_gcov_ctr.72), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.72+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.72+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.73), %r3
	or	%r3, lo(__llvm_gcov_ctr.73), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.73+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.73+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.74), %r3
	or	%r3, lo(__llvm_gcov_ctr.74), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.74+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.74+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.75+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.75+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.75), %r3
	or	%r3, lo(__llvm_gcov_ctr.75), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.76+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.76+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.76), %r3
	or	%r3, lo(__llvm_gcov_ctr.76), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.77+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.77+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.77), %r3
	or	%r3, lo(__llvm_gcov_ctr.77), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.78+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.78+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.78), %r3
	or	%r3, lo(__llvm_gcov_ctr.78), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.79+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.79+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.79), %r3
	or	%r3, lo(__llvm_gcov_ctr.79), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.80+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.80+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.80), %r3
	or	%r3, lo(__llvm_gcov_ctr.80), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.81), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.81), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.82), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.82), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.83), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.83), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.84), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.84), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.85), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.85), %r6
	ld	-16[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.86), %r3
	or	%r3, lo(__llvm_gcov_ctr.86), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.86+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.86+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.87), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.87), %r6
	ld	-16[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.88), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.88), %r6
	ld	-16[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.89), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.89), %r6
	ld	-16[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.90), %r3
	or	%r3, lo(__llvm_gcov_ctr.90), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.90+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.90+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.90+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.90+8), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.90+12), %r3
	or	%r3, lo(__llvm_gcov_ctr.90+12), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.91), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.91), %r6
	ld	-20[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.92), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.92), %r6
	ld	-20[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.93), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.93), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.94), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.94), %r6
	ld	-20[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.95), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.95), %r6
	ld	-16[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.96), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.96), %r6
	ld	-36[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.97), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.97), %r6
	ld	-28[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.98), %r3
	or	%r3, lo(__llvm_gcov_ctr.98), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.98+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.98+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.99), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.99), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.100), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.100), %r6
	ld	-28[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.101), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.101), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.102), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.102), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.103), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.103), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.104), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.104), %r6
	ld	-36[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.105), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.105), %r6
	ld	-36[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.106), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.106), %r6
	ld	-36[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.107), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.107), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.108), %r3
	or	%r3, lo(__llvm_gcov_ctr.108), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.108+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.108+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.109), %r3
	or	%r3, lo(__llvm_gcov_ctr.109), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.109+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.109+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.110), %r3
	or	%r3, lo(__llvm_gcov_ctr.110), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.110+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.110+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.111), %r3
	or	%r3, lo(__llvm_gcov_ctr.111), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.111+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.111+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.112), %r3
	or	%r3, lo(__llvm_gcov_ctr.112), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.112+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.112+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.113), %r3
	or	%r3, lo(__llvm_gcov_ctr.113), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.113+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.113+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.114), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.114), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.115), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.115), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.116), %r3
	or	%r3, lo(__llvm_gcov_ctr.116), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.116+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.116+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.116+8), %r3
	or	%r3, lo(__llvm_gcov_ctr.116+8), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.116+12), %r3
	or	%r3, lo(__llvm_gcov_ctr.116+12), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.117), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.117), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.118), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.118), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.119), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.119), %r6
	ld	-20[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.120), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.120), %r6
	ld	-28[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.121), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.121), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.122), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.122), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.123), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.123), %r6
	ld	-32[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.124), %r3
	or	%r3, lo(__llvm_gcov_ctr.124), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.124+1), %r3
	or	%r3, lo(__llvm_gcov_ctr.124+1), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.124+2), %r3
	or	%r3, lo(__llvm_gcov_ctr.124+2), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.124+3), %r3
	or	%r3, lo(__llvm_gcov_ctr.124+3), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.124+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.124+4), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.124+5), %r3
	or	%r3, lo(__llvm_gcov_ctr.124+5), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.124+6), %r3
	or	%r3, lo(__llvm_gcov_ctr.124+6), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.124+7), %r3
	or	%r3, lo(__llvm_gcov_ctr.124+7), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.125), %r3
	or	%r3, lo(__llvm_gcov_ctr.125), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.125+1), %r3
	or	%r3, lo(__llvm_gcov_ctr.125+1), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.125+2), %r3
	or	%r3, lo(__llvm_gcov_ctr.125+2), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.125+3), %r3
	or	%r3, lo(__llvm_gcov_ctr.125+3), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.125+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.125+4), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.125+5), %r3
	or	%r3, lo(__llvm_gcov_ctr.125+5), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.125+6), %r3
	or	%r3, lo(__llvm_gcov_ctr.125+6), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.125+7), %r3
	or	%r3, lo(__llvm_gcov_ctr.125+7), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.126), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.126), %r6
	ld	-20[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.127), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.127), %r6
	ld	-20[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.128), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.128), %r6
	ld	-28[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.129), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.129), %r6
	ld	-28[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.130), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.130), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.131), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.131), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.132), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.132), %r6
	ld	-16[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.133), %r3
	or	%r3, lo(__llvm_gcov_ctr.133), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.133+1), %r3
	or	%r3, lo(__llvm_gcov_ctr.133+1), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.133+2), %r3
	or	%r3, lo(__llvm_gcov_ctr.133+2), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.133+3), %r3
	or	%r3, lo(__llvm_gcov_ctr.133+3), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.133+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.133+4), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.133+5), %r3
	or	%r3, lo(__llvm_gcov_ctr.133+5), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.133+6), %r3
	or	%r3, lo(__llvm_gcov_ctr.133+6), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.133+7), %r3
	or	%r3, lo(__llvm_gcov_ctr.133+7), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.134), %r3
	or	%r3, lo(__llvm_gcov_ctr.134), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.134+1), %r3
	or	%r3, lo(__llvm_gcov_ctr.134+1), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.134+2), %r3
	or	%r3, lo(__llvm_gcov_ctr.134+2), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.134+3), %r3
	or	%r3, lo(__llvm_gcov_ctr.134+3), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.134+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.134+4), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.134+5), %r3
	or	%r3, lo(__llvm_gcov_ctr.134+5), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.134+6), %r3
	or	%r3, lo(__llvm_gcov_ctr.134+6), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.134+7), %r3
	or	%r3, lo(__llvm_gcov_ctr.134+7), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.135), %r3
	or	%r3, lo(__llvm_gcov_ctr.135), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.135+1), %r3
	or	%r3, lo(__llvm_gcov_ctr.135+1), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.135+2), %r3
	or	%r3, lo(__llvm_gcov_ctr.135+2), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.135+3), %r3
	or	%r3, lo(__llvm_gcov_ctr.135+3), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.135+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.135+4), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.135+5), %r3
	or	%r3, lo(__llvm_gcov_ctr.135+5), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.135+6), %r3
	or	%r3, lo(__llvm_gcov_ctr.135+6), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.135+7), %r3
	or	%r3, lo(__llvm_gcov_ctr.135+7), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.136), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.136), %r6
	ld	-24[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.137), %r3
	or	%r3, lo(__llvm_gcov_ctr.137), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.137+1), %r3
	or	%r3, lo(__llvm_gcov_ctr.137+1), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.137+2), %r3
	or	%r3, lo(__llvm_gcov_ctr.137+2), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.137+3), %r3
	or	%r3, lo(__llvm_gcov_ctr.137+3), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.137+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.137+4), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.137+5), %r3
	or	%r3, lo(__llvm_gcov_ctr.137+5), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.137+6), %r3
	or	%r3, lo(__llvm_gcov_ctr.137+6), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.137+7), %r3
	or	%r3, lo(__llvm_gcov_ctr.137+7), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.138), %r3
	or	%r3, lo(__llvm_gcov_ctr.138), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.138+1), %r3
	or	%r3, lo(__llvm_gcov_ctr.138+1), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.138+2), %r3
	or	%r3, lo(__llvm_gcov_ctr.138+2), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.138+3), %r3
	or	%r3, lo(__llvm_gcov_ctr.138+3), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.138+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.138+4), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.138+5), %r3
	or	%r3, lo(__llvm_gcov_ctr.138+5), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.138+6), %r3
	or	%r3, lo(__llvm_gcov_ctr.138+6), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.138+7), %r3
	or	%r3, lo(__llvm_gcov_ctr.138+7), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.139), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.139), %r6
	ld	-20[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.140), %r3
	or	%r3, lo(__llvm_gcov_ctr.140), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.140+1), %r3
	or	%r3, lo(__llvm_gcov_ctr.140+1), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.140+2), %r3
	or	%r3, lo(__llvm_gcov_ctr.140+2), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.140+3), %r3
	or	%r3, lo(__llvm_gcov_ctr.140+3), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.140+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.140+4), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.140+5), %r3
	or	%r3, lo(__llvm_gcov_ctr.140+5), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.140+6), %r3
	or	%r3, lo(__llvm_gcov_ctr.140+6), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.140+7), %r3
	or	%r3, lo(__llvm_gcov_ctr.140+7), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.141), %r3
	or	%r3, lo(__llvm_gcov_ctr.141), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.141+1), %r3
	or	%r3, lo(__llvm_gcov_ctr.141+1), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.141+2), %r3
	or	%r3, lo(__llvm_gcov_ctr.141+2), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.141+3), %r3
	or	%r3, lo(__llvm_gcov_ctr.141+3), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.141+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.141+4), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.141+5), %r3
	or	%r3, lo(__llvm_gcov_ctr.141+5), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.141+6), %r3
	or	%r3, lo(__llvm_gcov_ctr.141+6), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.141+7), %r3
	or	%r3, lo(__llvm_gcov_ctr.141+7), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.142), %r3
	or	%r3, lo(__llvm_gcov_ctr.142), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.142+1), %r3
	or	%r3, lo(__llvm_gcov_ctr.142+1), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.142+2), %r3
	or	%r3, lo(__llvm_gcov_ctr.142+2), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.142+3), %r3
	or	%r3, lo(__llvm_gcov_ctr.142+3), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.142+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.142+4), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.142+5), %r3
	or	%r3, lo(__llvm_gcov_ctr.142+5), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.142+6), %r3
	or	%r3, lo(__llvm_gcov_ctr.142+6), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.142+7), %r3
	or	%r3, lo(__llvm_gcov_ctr.142+7), %r3
	st.b	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.143+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.143+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.143), %r3
	or	%r3, lo(__llvm_gcov_ctr.143), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.144), %r3
	or	%r3, lo(__llvm_gcov_ctr.144), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.144+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.144+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.145), %r3
	or	%r3, lo(__llvm_gcov_ctr.145), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.145+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.145+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.146), %r3
	or	%r3, lo(__llvm_gcov_ctr.146), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.146+4), %r3
	or	%r3, lo(__llvm_gcov_ctr.146+4), %r3
	st	%r7, 0[%r3]
	mov	hi(__llvm_gcov_ctr.147), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.147), %r6
	ld	-20[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.148), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.148), %r6
	ld	-16[%fp], %r18
	ld	-12[%fp], %r7
	mov	hi(__llvm_gcov_ctr.149), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	memset
	or	%r3, lo(__llvm_gcov_ctr.149), %r6
	ld	-12[%fp], %r3
	mov	hi(__llvm_gcov_ctr.150), %r9
	or	%r9, lo(__llvm_gcov_ctr.150), %r9
	st.b	%r3, 0[%r9]
	mov	hi(__llvm_gcov_ctr.150+1), %r9
	or	%r9, lo(__llvm_gcov_ctr.150+1), %r9
	st.b	%r3, 0[%r9]
	mov	hi(__llvm_gcov_ctr.150+2), %r9
	or	%r9, lo(__llvm_gcov_ctr.150+2), %r9
	st.b	%r3, 0[%r9]
	mov	hi(__llvm_gcov_ctr.150+3), %r9
	or	%r9, lo(__llvm_gcov_ctr.150+3), %r9
	st.b	%r3, 0[%r9]
	mov	hi(__llvm_gcov_ctr.150+4), %r9
	or	%r9, lo(__llvm_gcov_ctr.150+4), %r9
	st.b	%r3, 0[%r9]
	mov	hi(__llvm_gcov_ctr.150+5), %r9
	or	%r9, lo(__llvm_gcov_ctr.150+5), %r9
	st.b	%r3, 0[%r9]
	mov	hi(__llvm_gcov_ctr.150+6), %r9
	or	%r9, lo(__llvm_gcov_ctr.150+6), %r9
	st.b	%r3, 0[%r9]
	mov	hi(__llvm_gcov_ctr.150+7), %r9
	or	%r9, lo(__llvm_gcov_ctr.150+7), %r9
	st.b	%r3, 0[%r9]
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end152:
	.size	__llvm_gcov_reset, .Lfunc_end152-__llvm_gcov_reset
                                        ! -- End function
	.p2align	2                               ! -- Begin function __llvm_gcov_init
	.type	__llvm_gcov_init,@function
__llvm_gcov_init:                       ! @__llvm_gcov_init
! %bb.0:
	st	%fp, [--%sp]
	add	%sp, 0x8, %fp
	sub	%sp, 0x10, %sp
	mov	hi(__llvm_gcov_reset), %r3
	or	%r3, lo(__llvm_gcov_reset), %r3
	or	%sp, 0x0, %r9
	st	%r3, 4[%r9]
	mov	hi(__llvm_gcov_writeout), %r3
	or	%r3, lo(__llvm_gcov_writeout), %r3
	add	%pc, 0x10, %rca
	st	%rca, [--%sp]
	bt	llvm_gcov_init
	st	%r3, 0[%r9]
	ld	-4[%fp], %pc ! return
	add	%fp, 0x0, %sp
	ld	-8[%fp], %fp
.Lfunc_end153:
	.size	__llvm_gcov_init, .Lfunc_end153-__llvm_gcov_init
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
	.asciz	"/home/gravier/tmp/some-libc-opt/clang-lanai.gcda"
	.size	.L__unnamed_1, 49

	.type	__llvm_internal_gcov_emit_function_args.0,@object ! @__llvm_internal_gcov_emit_function_args.0
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
__llvm_internal_gcov_emit_function_args.0:
	.long	0                               ! 0x0
	.long	560687177                       ! 0x216b6849
	.long	3469251760                      ! 0xcec894b0
	.long	1                               ! 0x1
	.long	1589591758                      ! 0x5ebf3ece
	.long	3469251760                      ! 0xcec894b0
	.long	2                               ! 0x2
	.long	2176136383                      ! 0x81b534bf
	.long	3469251760                      ! 0xcec894b0
	.long	3                               ! 0x3
	.long	3586625172                      ! 0xd5c78e94
	.long	3469251760                      ! 0xcec894b0
	.long	4                               ! 0x4
	.long	2323119728                      ! 0x8a77fe70
	.long	3469251760                      ! 0xcec894b0
	.long	5                               ! 0x5
	.long	2314569740                      ! 0x89f5880c
	.long	3469251760                      ! 0xcec894b0
	.long	6                               ! 0x6
	.long	2833673551                      ! 0xa8e66d4f
	.long	3469251760                      ! 0xcec894b0
	.long	7                               ! 0x7
	.long	1458633189                      ! 0x56f0f9e5
	.long	3469251760                      ! 0xcec894b0
	.long	8                               ! 0x8
	.long	1190300833                      ! 0x46f28ca1
	.long	3469251760                      ! 0xcec894b0
	.long	9                               ! 0x9
	.long	758327989                       ! 0x2d332ab5
	.long	3469251760                      ! 0xcec894b0
	.long	10                              ! 0xa
	.long	1651479037                      ! 0x626f91fd
	.long	3469251760                      ! 0xcec894b0
	.long	11                              ! 0xb
	.long	4132343275                      ! 0xf64e8deb
	.long	3469251760                      ! 0xcec894b0
	.long	12                              ! 0xc
	.long	734262523                       ! 0x2bc3f4fb
	.long	3469251760                      ! 0xcec894b0
	.long	13                              ! 0xd
	.long	2463424677                      ! 0x92d4e0a5
	.long	3469251760                      ! 0xcec894b0
	.long	14                              ! 0xe
	.long	1419026334                      ! 0x54949f9e
	.long	3469251760                      ! 0xcec894b0
	.long	15                              ! 0xf
	.long	3154471370                      ! 0xbc0569ca
	.long	3469251760                      ! 0xcec894b0
	.long	16                              ! 0x10
	.long	2077973487                      ! 0x7bdb5bef
	.long	3469251760                      ! 0xcec894b0
	.long	17                              ! 0x11
	.long	1474691227                      ! 0x57e6009b
	.long	3469251760                      ! 0xcec894b0
	.long	18                              ! 0x12
	.long	3710986016                      ! 0xdd312720
	.long	3469251760                      ! 0xcec894b0
	.long	19                              ! 0x13
	.long	1305101473                      ! 0x4dca44a1
	.long	3469251760                      ! 0xcec894b0
	.long	20                              ! 0x14
	.long	3762036564                      ! 0xe03c1f54
	.long	3469251760                      ! 0xcec894b0
	.long	21                              ! 0x15
	.long	477914433                       ! 0x1c7c6541
	.long	3469251760                      ! 0xcec894b0
	.long	22                              ! 0x16
	.long	3923035234                      ! 0xe9d4c462
	.long	3469251760                      ! 0xcec894b0
	.long	23                              ! 0x17
	.long	951651702                       ! 0x38b90d76
	.long	3469251760                      ! 0xcec894b0
	.long	24                              ! 0x18
	.long	4206925919                      ! 0xfac0985f
	.long	3469251760                      ! 0xcec894b0
	.long	25                              ! 0x19
	.long	32773942                        ! 0x1f41736
	.long	3469251760                      ! 0xcec894b0
	.long	26                              ! 0x1a
	.long	2877267246                      ! 0xab7f9d2e
	.long	3469251760                      ! 0xcec894b0
	.long	27                              ! 0x1b
	.long	860405771                       ! 0x3348c00b
	.long	3469251760                      ! 0xcec894b0
	.long	28                              ! 0x1c
	.long	815674877                       ! 0x309e35fd
	.long	3469251760                      ! 0xcec894b0
	.long	29                              ! 0x1d
	.long	1778838753                      ! 0x6a06ece1
	.long	3469251760                      ! 0xcec894b0
	.long	30                              ! 0x1e
	.long	2718307199                      ! 0xa206137f
	.long	3469251760                      ! 0xcec894b0
	.long	31                              ! 0x1f
	.long	856224820                       ! 0x3308f434
	.long	3469251760                      ! 0xcec894b0
	.long	32                              ! 0x20
	.long	1111195143                      ! 0x423b7e07
	.long	3469251760                      ! 0xcec894b0
	.long	33                              ! 0x21
	.long	1178414519                      ! 0x463d2db7
	.long	3469251760                      ! 0xcec894b0
	.long	34                              ! 0x22
	.long	3477640633                      ! 0xcf4895b9
	.long	3469251760                      ! 0xcec894b0
	.long	35                              ! 0x23
	.long	4294770115                      ! 0xfffcfdc3
	.long	3469251760                      ! 0xcec894b0
	.long	36                              ! 0x24
	.long	3650660234                      ! 0xd998a78a
	.long	3469251760                      ! 0xcec894b0
	.long	37                              ! 0x25
	.long	289327647                       ! 0x113eca1f
	.long	3469251760                      ! 0xcec894b0
	.long	38                              ! 0x26
	.long	2093612798                      ! 0x7cc9fefe
	.long	3469251760                      ! 0xcec894b0
	.long	39                              ! 0x27
	.long	4177956716                      ! 0xf9068f6c
	.long	3469251760                      ! 0xcec894b0
	.long	40                              ! 0x28
	.long	3434808461                      ! 0xccbb048d
	.long	3469251760                      ! 0xcec894b0
	.long	41                              ! 0x29
	.long	3206497114                      ! 0xbf1f435a
	.long	3469251760                      ! 0xcec894b0
	.long	42                              ! 0x2a
	.long	1537257434                      ! 0x5ba0afda
	.long	3469251760                      ! 0xcec894b0
	.long	43                              ! 0x2b
	.long	3028077325                      ! 0xb47ccb0d
	.long	3469251760                      ! 0xcec894b0
	.long	44                              ! 0x2c
	.long	1369848209                      ! 0x51a63991
	.long	3469251760                      ! 0xcec894b0
	.long	45                              ! 0x2d
	.long	938831176                       ! 0x37f56d48
	.long	3469251760                      ! 0xcec894b0
	.long	46                              ! 0x2e
	.long	1663146323                      ! 0x63219953
	.long	3469251760                      ! 0xcec894b0
	.long	47                              ! 0x2f
	.long	4111410217                      ! 0xf50f2429
	.long	3469251760                      ! 0xcec894b0
	.long	48                              ! 0x30
	.long	1475378556                      ! 0x57f07d7c
	.long	3469251760                      ! 0xcec894b0
	.long	49                              ! 0x31
	.long	3356195547                      ! 0xc80b7adb
	.long	3469251760                      ! 0xcec894b0
	.long	50                              ! 0x32
	.long	514931786                       ! 0x1eb13c4a
	.long	3469251760                      ! 0xcec894b0
	.long	51                              ! 0x33
	.long	2854034444                      ! 0xaa1d1c0c
	.long	3469251760                      ! 0xcec894b0
	.long	52                              ! 0x34
	.long	2747937306                      ! 0xa3ca321a
	.long	3469251760                      ! 0xcec894b0
	.long	53                              ! 0x35
	.long	4192776208                      ! 0xf9e8b010
	.long	3469251760                      ! 0xcec894b0
	.long	54                              ! 0x36
	.long	984436227                       ! 0x3aad4e03
	.long	3469251760                      ! 0xcec894b0
	.long	55                              ! 0x37
	.long	1477657574                      ! 0x581343e6
	.long	3469251760                      ! 0xcec894b0
	.long	56                              ! 0x38
	.long	1339127973                      ! 0x4fd178a5
	.long	3469251760                      ! 0xcec894b0
	.long	57                              ! 0x39
	.long	2960567906                      ! 0xb076ae62
	.long	3469251760                      ! 0xcec894b0
	.long	58                              ! 0x3a
	.long	3390076872                      ! 0xca1077c8
	.long	3469251760                      ! 0xcec894b0
	.long	59                              ! 0x3b
	.long	1543282230                      ! 0x5bfc9e36
	.long	3469251760                      ! 0xcec894b0
	.long	60                              ! 0x3c
	.long	2934101789                      ! 0xaee2d71d
	.long	3469251760                      ! 0xcec894b0
	.long	61                              ! 0x3d
	.long	3737986119                      ! 0xdecd2447
	.long	3469251760                      ! 0xcec894b0
	.long	62                              ! 0x3e
	.long	49556427                        ! 0x2f42bcb
	.long	3469251760                      ! 0xcec894b0
	.long	63                              ! 0x3f
	.long	234051526                       ! 0xdf357c6
	.long	3469251760                      ! 0xcec894b0
	.long	64                              ! 0x40
	.long	2341800126                      ! 0x8b9508be
	.long	3469251760                      ! 0xcec894b0
	.long	65                              ! 0x41
	.long	3256799948                      ! 0xc21ed2cc
	.long	3469251760                      ! 0xcec894b0
	.long	66                              ! 0x42
	.long	777295480                       ! 0x2e549678
	.long	3469251760                      ! 0xcec894b0
	.long	67                              ! 0x43
	.long	14040531                        ! 0xd63dd3
	.long	3469251760                      ! 0xcec894b0
	.long	68                              ! 0x44
	.long	8047973                         ! 0x7acd65
	.long	3469251760                      ! 0xcec894b0
	.long	69                              ! 0x45
	.long	719459161                       ! 0x2ae21359
	.long	3469251760                      ! 0xcec894b0
	.long	70                              ! 0x46
	.long	243358501                       ! 0xe815b25
	.long	3469251760                      ! 0xcec894b0
	.long	71                              ! 0x47
	.long	3262173932                      ! 0xc270d2ec
	.long	3469251760                      ! 0xcec894b0
	.long	72                              ! 0x48
	.long	398910553                       ! 0x17c6e459
	.long	3469251760                      ! 0xcec894b0
	.long	73                              ! 0x49
	.long	3354219739                      ! 0xc7ed54db
	.long	3469251760                      ! 0xcec894b0
	.long	74                              ! 0x4a
	.long	2570308788                      ! 0x9933ccb4
	.long	3469251760                      ! 0xcec894b0
	.long	75                              ! 0x4b
	.long	982429111                       ! 0x3a8eadb7
	.long	3469251760                      ! 0xcec894b0
	.long	76                              ! 0x4c
	.long	211491241                       ! 0xc9b19a9
	.long	3469251760                      ! 0xcec894b0
	.long	77                              ! 0x4d
	.long	1075683319                      ! 0x401d9ff7
	.long	3469251760                      ! 0xcec894b0
	.long	78                              ! 0x4e
	.long	1886352651                      ! 0x706f750b
	.long	3469251760                      ! 0xcec894b0
	.long	79                              ! 0x4f
	.long	248637203                       ! 0xed1e713
	.long	3469251760                      ! 0xcec894b0
	.long	80                              ! 0x50
	.long	703327087                       ! 0x29ebeb6f
	.long	3469251760                      ! 0xcec894b0
	.long	81                              ! 0x51
	.long	3690160730                      ! 0xdbf3625a
	.long	3469251760                      ! 0xcec894b0
	.long	82                              ! 0x52
	.long	787048238                       ! 0x2ee9672e
	.long	3469251760                      ! 0xcec894b0
	.long	83                              ! 0x53
	.long	1937497967                      ! 0x737bdf6f
	.long	3469251760                      ! 0xcec894b0
	.long	84                              ! 0x54
	.long	4205062514                      ! 0xfaa42972
	.long	3469251760                      ! 0xcec894b0
	.long	85                              ! 0x55
	.long	694462539                       ! 0x2964a84b
	.long	3469251760                      ! 0xcec894b0
	.long	86                              ! 0x56
	.long	85970907                        ! 0x51fcfdb
	.long	3469251760                      ! 0xcec894b0
	.long	87                              ! 0x57
	.long	3681984728                      ! 0xdb76a0d8
	.long	3469251760                      ! 0xcec894b0
	.long	88                              ! 0x58
	.long	3620297642                      ! 0xd7c95baa
	.long	3469251760                      ! 0xcec894b0
	.long	89                              ! 0x59
	.long	3394804480                      ! 0xca589b00
	.long	3469251760                      ! 0xcec894b0
	.long	90                              ! 0x5a
	.long	2119330183                      ! 0x7e526987
	.long	3469251760                      ! 0xcec894b0
	.long	91                              ! 0x5b
	.long	1963040266                      ! 0x75019e0a
	.long	3469251760                      ! 0xcec894b0
	.long	92                              ! 0x5c
	.long	1603391838                      ! 0x5f91d15e
	.long	3469251760                      ! 0xcec894b0
	.long	93                              ! 0x5d
	.long	2340921237                      ! 0x8b879f95
	.long	3469251760                      ! 0xcec894b0
	.long	94                              ! 0x5e
	.long	3028177438                      ! 0xb47e521e
	.long	3469251760                      ! 0xcec894b0
	.long	95                              ! 0x5f
	.long	2265525308                      ! 0x87092c3c
	.long	3469251760                      ! 0xcec894b0
	.long	96                              ! 0x60
	.long	2598903994                      ! 0x9ae820ba
	.long	3469251760                      ! 0xcec894b0
	.long	97                              ! 0x61
	.long	139524705                       ! 0x850fa61
	.long	3469251760                      ! 0xcec894b0
	.long	98                              ! 0x62
	.long	1076410600                      ! 0x4028b8e8
	.long	3469251760                      ! 0xcec894b0
	.long	99                              ! 0x63
	.long	220237413                       ! 0xd208e65
	.long	3469251760                      ! 0xcec894b0
	.long	100                             ! 0x64
	.long	3913623866                      ! 0xe945293a
	.long	3469251760                      ! 0xcec894b0
	.long	101                             ! 0x65
	.long	3453026372                      ! 0xcdd10044
	.long	3469251760                      ! 0xcec894b0
	.long	102                             ! 0x66
	.long	2321387380                      ! 0x8a5d8f74
	.long	3469251760                      ! 0xcec894b0
	.long	103                             ! 0x67
	.long	3319939363                      ! 0xc5e24123
	.long	3469251760                      ! 0xcec894b0
	.long	104                             ! 0x68
	.long	398991913                       ! 0x17c82229
	.long	3469251760                      ! 0xcec894b0
	.long	105                             ! 0x69
	.long	333429647                       ! 0x13dfbb8f
	.long	3469251760                      ! 0xcec894b0
	.long	106                             ! 0x6a
	.long	3927133990                      ! 0xea134f26
	.long	3469251760                      ! 0xcec894b0
	.long	107                             ! 0x6b
	.long	1797971294                      ! 0x6b2add5e
	.long	3469251760                      ! 0xcec894b0
	.long	108                             ! 0x6c
	.long	1622314776                      ! 0x60b28f18
	.long	3469251760                      ! 0xcec894b0
	.long	109                             ! 0x6d
	.long	1092862330                      ! 0x4123c17a
	.long	3469251760                      ! 0xcec894b0
	.long	110                             ! 0x6e
	.long	2568657322                      ! 0x991a99aa
	.long	3469251760                      ! 0xcec894b0
	.long	111                             ! 0x6f
	.long	2168129897                      ! 0x813b0969
	.long	3469251760                      ! 0xcec894b0
	.long	112                             ! 0x70
	.long	2890303119                      ! 0xac46868f
	.long	3469251760                      ! 0xcec894b0
	.long	113                             ! 0x71
	.long	1713332582                      ! 0x661f6166
	.long	3469251760                      ! 0xcec894b0
	.long	114                             ! 0x72
	.long	2375727721                      ! 0x8d9aba69
	.long	3469251760                      ! 0xcec894b0
	.long	115                             ! 0x73
	.long	3586767156                      ! 0xd5c9b934
	.long	3469251760                      ! 0xcec894b0
	.long	116                             ! 0x74
	.long	2191348475                      ! 0x829d52fb
	.long	3469251760                      ! 0xcec894b0
	.long	117                             ! 0x75
	.long	3910023869                      ! 0xe90e3abd
	.long	3469251760                      ! 0xcec894b0
	.long	118                             ! 0x76
	.long	4189915105                      ! 0xf9bd07e1
	.long	3469251760                      ! 0xcec894b0
	.long	119                             ! 0x77
	.long	2527353334                      ! 0x96a459f6
	.long	3469251760                      ! 0xcec894b0
	.long	120                             ! 0x78
	.long	3429265923                      ! 0xcc667203
	.long	3469251760                      ! 0xcec894b0
	.long	121                             ! 0x79
	.long	1283962724                      ! 0x4c87b764
	.long	3469251760                      ! 0xcec894b0
	.long	122                             ! 0x7a
	.long	1970290990                      ! 0x7570412e
	.long	3469251760                      ! 0xcec894b0
	.long	123                             ! 0x7b
	.long	2615950861                      ! 0x9bec3e0d
	.long	3469251760                      ! 0xcec894b0
	.long	124                             ! 0x7c
	.long	3338450337                      ! 0xc6fcb5a1
	.long	3469251760                      ! 0xcec894b0
	.long	125                             ! 0x7d
	.long	3971836509                      ! 0xecbd6a5d
	.long	3469251760                      ! 0xcec894b0
	.long	126                             ! 0x7e
	.long	4260339231                      ! 0xfdef9e1f
	.long	3469251760                      ! 0xcec894b0
	.long	127                             ! 0x7f
	.long	4160738226                      ! 0xf7ffd3b2
	.long	3469251760                      ! 0xcec894b0
	.long	128                             ! 0x80
	.long	1309372079                      ! 0x4e0b6eaf
	.long	3469251760                      ! 0xcec894b0
	.long	129                             ! 0x81
	.long	3151575564                      ! 0xbbd93a0c
	.long	3469251760                      ! 0xcec894b0
	.long	130                             ! 0x82
	.long	3938977714                      ! 0xeac807b2
	.long	3469251760                      ! 0xcec894b0
	.long	131                             ! 0x83
	.long	3228738087                      ! 0xc072a227
	.long	3469251760                      ! 0xcec894b0
	.long	132                             ! 0x84
	.long	3135705803                      ! 0xbae712cb
	.long	3469251760                      ! 0xcec894b0
	.long	133                             ! 0x85
	.long	4061147315                      ! 0xf21030b3
	.long	3469251760                      ! 0xcec894b0
	.long	134                             ! 0x86
	.long	2783543715                      ! 0xa5e981a3
	.long	3469251760                      ! 0xcec894b0
	.long	135                             ! 0x87
	.long	2471046843                      ! 0x93492ebb
	.long	3469251760                      ! 0xcec894b0
	.long	136                             ! 0x88
	.long	260073473                       ! 0xf806801
	.long	3469251760                      ! 0xcec894b0
	.long	137                             ! 0x89
	.long	1259876295                      ! 0x4b182fc7
	.long	3469251760                      ! 0xcec894b0
	.long	138                             ! 0x8a
	.long	2579807359                      ! 0x99c4bc7f
	.long	3469251760                      ! 0xcec894b0
	.long	139                             ! 0x8b
	.long	90061610                        ! 0x55e3b2a
	.long	3469251760                      ! 0xcec894b0
	.long	140                             ! 0x8c
	.long	3598610789                      ! 0xd67e7165
	.long	3469251760                      ! 0xcec894b0
	.long	141                             ! 0x8d
	.long	2351688191                      ! 0x8c2be9ff
	.long	3469251760                      ! 0xcec894b0
	.long	142                             ! 0x8e
	.long	1438161982                      ! 0x55b89c3e
	.long	3469251760                      ! 0xcec894b0
	.long	143                             ! 0x8f
	.long	2438880600                      ! 0x915e5d58
	.long	3469251760                      ! 0xcec894b0
	.long	144                             ! 0x90
	.long	3593193962                      ! 0xd62bc9ea
	.long	3469251760                      ! 0xcec894b0
	.long	145                             ! 0x91
	.long	1755082314                      ! 0x689c6e4a
	.long	3469251760                      ! 0xcec894b0
	.long	146                             ! 0x92
	.long	3432612426                      ! 0xcc99824a
	.long	3469251760                      ! 0xcec894b0
	.long	147                             ! 0x93
	.long	3374828335                      ! 0xc927cb2f
	.long	3469251760                      ! 0xcec894b0
	.long	148                             ! 0x94
	.long	3311814731                      ! 0xc566484b
	.long	3469251760                      ! 0xcec894b0
	.long	149                             ! 0x95
	.long	413908966                       ! 0x18abbfe6
	.long	3469251760                      ! 0xcec894b0
	.long	150                             ! 0x96
	.long	3027808697                      ! 0xb478b1b9
	.long	3469251760                      ! 0xcec894b0
	.size	__llvm_internal_gcov_emit_function_args.0, 1812

	.type	__llvm_internal_gcov_emit_arcs_args.0,@object ! @__llvm_internal_gcov_emit_arcs_args.0
	.p2align	4, 0x0
__llvm_internal_gcov_emit_arcs_args.0:
	.long	5                               ! 0x5
	.long	__llvm_gcov_ctr
	.long	5                               ! 0x5
	.long	__llvm_gcov_ctr.1
	.long	5                               ! 0x5
	.long	__llvm_gcov_ctr.2
	.long	5                               ! 0x5
	.long	__llvm_gcov_ctr.3
	.long	2                               ! 0x2
	.long	__llvm_gcov_ctr.4
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.5
	.long	2                               ! 0x2
	.long	__llvm_gcov_ctr.6
	.long	2                               ! 0x2
	.long	__llvm_gcov_ctr.7
	.long	4                               ! 0x4
	.long	__llvm_gcov_ctr.8
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.9
	.long	4                               ! 0x4
	.long	__llvm_gcov_ctr.10
	.long	2                               ! 0x2
	.long	__llvm_gcov_ctr.11
	.long	7                               ! 0x7
	.long	__llvm_gcov_ctr.12
	.long	2                               ! 0x2
	.long	__llvm_gcov_ctr.13
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.14
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.15
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.16
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.17
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.18
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.19
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.20
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.21
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.22
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.23
	.long	5                               ! 0x5
	.long	__llvm_gcov_ctr.24
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.25
	.long	7                               ! 0x7
	.long	__llvm_gcov_ctr.26
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.27
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.28
	.long	4                               ! 0x4
	.long	__llvm_gcov_ctr.29
	.long	4                               ! 0x4
	.long	__llvm_gcov_ctr.30
	.long	6                               ! 0x6
	.long	__llvm_gcov_ctr.31
	.long	6                               ! 0x6
	.long	__llvm_gcov_ctr.32
	.long	6                               ! 0x6
	.long	__llvm_gcov_ctr.33
	.long	6                               ! 0x6
	.long	__llvm_gcov_ctr.34
	.long	6                               ! 0x6
	.long	__llvm_gcov_ctr.35
	.long	6                               ! 0x6
	.long	__llvm_gcov_ctr.36
	.long	2                               ! 0x2
	.long	__llvm_gcov_ctr.37
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.38
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.39
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.40
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.41
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.42
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.43
	.long	2                               ! 0x2
	.long	__llvm_gcov_ctr.44
	.long	6                               ! 0x6
	.long	__llvm_gcov_ctr.45
	.long	6                               ! 0x6
	.long	__llvm_gcov_ctr.46
	.long	6                               ! 0x6
	.long	__llvm_gcov_ctr.47
	.long	4                               ! 0x4
	.long	__llvm_gcov_ctr.48
	.long	4                               ! 0x4
	.long	__llvm_gcov_ctr.49
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.50
	.long	2                               ! 0x2
	.long	__llvm_gcov_ctr.51
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.52
	.long	2                               ! 0x2
	.long	__llvm_gcov_ctr.53
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.54
	.long	2                               ! 0x2
	.long	__llvm_gcov_ctr.55
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.56
	.long	5                               ! 0x5
	.long	__llvm_gcov_ctr.57
	.long	6                               ! 0x6
	.long	__llvm_gcov_ctr.58
	.long	2                               ! 0x2
	.long	__llvm_gcov_ctr.59
	.long	2                               ! 0x2
	.long	__llvm_gcov_ctr.60
	.long	8                               ! 0x8
	.long	__llvm_gcov_ctr.61
	.long	5                               ! 0x5
	.long	__llvm_gcov_ctr.62
	.long	6                               ! 0x6
	.long	__llvm_gcov_ctr.63
	.long	2                               ! 0x2
	.long	__llvm_gcov_ctr.64
	.long	5                               ! 0x5
	.long	__llvm_gcov_ctr.65
	.long	2                               ! 0x2
	.long	__llvm_gcov_ctr.66
	.long	5                               ! 0x5
	.long	__llvm_gcov_ctr.67
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.68
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.69
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.70
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.71
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.72
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.73
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.74
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.75
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.76
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.77
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.78
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.79
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.80
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.81
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.82
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.83
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.84
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.85
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.86
	.long	5                               ! 0x5
	.long	__llvm_gcov_ctr.87
	.long	5                               ! 0x5
	.long	__llvm_gcov_ctr.88
	.long	5                               ! 0x5
	.long	__llvm_gcov_ctr.89
	.long	2                               ! 0x2
	.long	__llvm_gcov_ctr.90
	.long	5                               ! 0x5
	.long	__llvm_gcov_ctr.91
	.long	4                               ! 0x4
	.long	__llvm_gcov_ctr.92
	.long	4                               ! 0x4
	.long	__llvm_gcov_ctr.93
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.94
	.long	4                               ! 0x4
	.long	__llvm_gcov_ctr.95
	.long	5                               ! 0x5
	.long	__llvm_gcov_ctr.96
	.long	6                               ! 0x6
	.long	__llvm_gcov_ctr.97
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.98
	.long	8                               ! 0x8
	.long	__llvm_gcov_ctr.99
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.100
	.long	8                               ! 0x8
	.long	__llvm_gcov_ctr.101
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.102
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.103
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.104
	.long	6                               ! 0x6
	.long	__llvm_gcov_ctr.105
	.long	6                               ! 0x6
	.long	__llvm_gcov_ctr.106
	.long	6                               ! 0x6
	.long	__llvm_gcov_ctr.107
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.108
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.109
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.110
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.111
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.112
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.113
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.114
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.115
	.long	2                               ! 0x2
	.long	__llvm_gcov_ctr.116
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.117
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.118
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.119
	.long	4                               ! 0x4
	.long	__llvm_gcov_ctr.120
	.long	8                               ! 0x8
	.long	__llvm_gcov_ctr.121
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.122
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.123
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.124
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.125
	.long	7                               ! 0x7
	.long	__llvm_gcov_ctr.126
	.long	4                               ! 0x4
	.long	__llvm_gcov_ctr.127
	.long	4                               ! 0x4
	.long	__llvm_gcov_ctr.128
	.long	8                               ! 0x8
	.long	__llvm_gcov_ctr.129
	.long	8                               ! 0x8
	.long	__llvm_gcov_ctr.130
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.131
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.132
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.133
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.134
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.135
	.long	5                               ! 0x5
	.long	__llvm_gcov_ctr.136
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.137
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.138
	.long	3                               ! 0x3
	.long	__llvm_gcov_ctr.139
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.140
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.141
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.142
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.143
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.144
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.145
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.146
	.long	4                               ! 0x4
	.long	__llvm_gcov_ctr.147
	.long	4                               ! 0x4
	.long	__llvm_gcov_ctr.148
	.long	5                               ! 0x5
	.long	__llvm_gcov_ctr.149
	.long	1                               ! 0x1
	.long	__llvm_gcov_ctr.150
	.size	__llvm_internal_gcov_emit_arcs_args.0, 1208

	.type	__llvm_internal_gcov_emit_file_info,@object ! @__llvm_internal_gcov_emit_file_info
	.p2align	4, 0x0
__llvm_internal_gcov_emit_file_info:
	.long	.L__unnamed_1
	.long	875575338                       ! 0x3430382a
	.long	3469251760                      ! 0xcec894b0
	.long	151                             ! 0x97
	.long	__llvm_internal_gcov_emit_function_args.0
	.long	__llvm_internal_gcov_emit_arcs_args.0
	.size	__llvm_internal_gcov_emit_file_info, 24

	.section	.init_array.0,"aw",@init_array
	.p2align	2, 0x0
	.long	__llvm_gcov_init
	.hidden	__llvm_profile_runtime
	.type	.L__profc_memmove,@object       ! @__profc_memmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
.L__profc_memmove:
	.zero	40
	.size	.L__profc_memmove, 40

	.type	.L__profd_memmove,@object       ! @__profd_memmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
.L__profd_memmove:
	.quad	-306081897096246147             ! 0xfbc09422e3668c7d
	.quad	-4061701397412038936            ! 0xc7a1f0194f8c36e8
	.long	.L__profc_memmove-.L__profd_memmove
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	5                               ! 0x5
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_memmove, 48

	.type	.L__profc_memccpy,@object       ! @__profc_memccpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profc_memccpy:
	.zero	40
	.size	.L__profc_memccpy, 40

	.type	.L__profd_memccpy,@object       ! @__profd_memccpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profd_memccpy:
	.quad	-1590863763861247346            ! 0xe9ec1dd5e5026a8e
	.quad	1189690007454808                ! 0x43a044a498458
	.long	.L__profc_memccpy-.L__profd_memccpy
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	5                               ! 0x5
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_memccpy, 48

	.type	.L__profc_memchr,@object        ! @__profc_memchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
.L__profc_memchr:
	.zero	40
	.size	.L__profc_memchr, 40

	.type	.L__profd_memchr,@object        ! @__profd_memchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
.L__profd_memchr:
	.quad	5708666158622859656             ! 0x4f3941a01e026188
	.quad	4538308109                      ! 0x10e81160d
	.long	.L__profc_memchr-.L__profd_memchr
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	5                               ! 0x5
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_memchr, 48

	.type	.L__profc_memcmp,@object        ! @__profc_memcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profc_memcmp:
	.zero	40
	.size	.L__profc_memcmp, 40

	.type	.L__profd_memcmp,@object        ! @__profd_memcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profd_memcmp:
	.quad	-4679550853048924350            ! 0xbf0ee54adfa48742
	.quad	4538045965                      ! 0x10e7d160d
	.long	.L__profc_memcmp-.L__profd_memcmp
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	5                               ! 0x5
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_memcmp, 48

	.type	.L__profc_memcpy,@object        ! @__profc_memcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
.L__profc_memcpy:
	.zero	16
	.size	.L__profc_memcpy, 16

	.type	.L__profd_memcpy,@object        ! @__profd_memcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
.L__profd_memcpy:
	.quad	3893303423671325810             ! 0x3607cad612bdd472
	.quad	17496                           ! 0x4458
	.long	.L__profc_memcpy-.L__profd_memcpy
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	2                               ! 0x2
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_memcpy, 48

	.type	.L__profc_memrchr,@object       ! @__profc_memrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profc_memrchr:
	.zero	24
	.size	.L__profc_memrchr, 24

	.type	.L__profd_memrchr,@object       ! @__profd_memrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profd_memrchr:
	.quad	-548334422562728352             ! 0xf863ecbf75079660
	.quad	9516882138200                   ! 0x8a7d2611458
	.long	.L__profc_memrchr-.L__profd_memrchr
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_memrchr, 48

	.type	.L__profc_memset,@object        ! @__profc_memset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
.L__profc_memset:
	.zero	16
	.size	.L__profc_memset, 16

	.type	.L__profd_memset,@object        ! @__profd_memset
	.section	__llvm_prf_data,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
.L__profd_memset:
	.quad	-2741574704065975695            ! 0xd9f3f85506f36a71
	.quad	17496                           ! 0x4458
	.long	.L__profc_memset-.L__profd_memset
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	2                               ! 0x2
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_memset, 48

	.type	.L__profc_stpcpy,@object        ! @__profc_stpcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profc_stpcpy:
	.zero	16
	.size	.L__profc_stpcpy, 16

	.type	.L__profd_stpcpy,@object        ! @__profd_stpcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profd_stpcpy:
	.quad	4454833295779690053             ! 0x3dd2bf47a087f645
	.quad	17496                           ! 0x4458
	.long	.L__profc_stpcpy-.L__profd_stpcpy
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	2                               ! 0x2
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_stpcpy, 48

	.type	.L__profc_strchrnul,@object     ! @__profc_strchrnul
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profc_strchrnul:
	.zero	32
	.size	.L__profc_strchrnul, 32

	.type	.L__profd_strchrnul,@object     ! @__profd_strchrnul
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profd_strchrnul:
	.quad	5039208642683934005             ! 0x45eedd8fc8411535
	.quad	70911064                        ! 0x43a0458
	.long	.L__profc_strchrnul-.L__profd_strchrnul
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	4                               ! 0x4
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_strchrnul, 48

	.type	.L__profc_strchr,@object        ! @__profc_strchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
.L__profc_strchr:
	.zero	24
	.size	.L__profc_strchr, 24

	.type	.L__profd_strchr,@object        ! @__profd_strchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
.L__profd_strchr:
	.quad	-5671522429266412413            ! 0xb14ab4664bea3c83
	.quad	13914928649304                  ! 0xca7d2611458
	.long	.L__profc_strchr-.L__profd_strchr
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_strchr, 48

	.type	.L__profc_strcmp,@object        ! @__profc_strcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profc_strcmp:
	.zero	32
	.size	.L__profc_strcmp, 32

	.type	.L__profd_strcmp,@object        ! @__profd_strcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profd_strcmp:
	.quad	1013198891307352868             ! 0xe0f9b060331c324
	.quad	70906968                        ! 0x439f458
	.long	.L__profc_strcmp-.L__profd_strcmp
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	4                               ! 0x4
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_strcmp, 48

	.type	.L__profc_strlen,@object        ! @__profc_strlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
.L__profc_strlen:
	.zero	16
	.size	.L__profc_strlen, 16

	.type	.L__profd_strlen,@object        ! @__profd_strlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
.L__profd_strlen:
	.quad	2965136410638013299             ! 0x292647db02a7d373
	.quad	17496                           ! 0x4458
	.long	.L__profc_strlen-.L__profd_strlen
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	2                               ! 0x2
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_strlen, 48

	.type	.L__profc_strncmp,@object       ! @__profc_strncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profc_strncmp:
	.zero	72
	.size	.L__profc_strncmp, 72

	.type	.L__profd_strncmp,@object       ! @__profd_strncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profd_strncmp:
	.quad	-6058495834680104774            ! 0xabebe6233cb568ba
	.quad	7207353986825238351             ! 0x6405aa43cb36b74f
	.long	.L__profc_strncmp-.L__profd_strncmp
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	9                               ! 0x9
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_strncmp, 48

	.type	.L__profc_swab,@object          ! @__profc_swab
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
.L__profc_swab:
	.zero	16
	.size	.L__profc_swab, 16

	.type	.L__profd_swab,@object          ! @__profd_swab
	.section	__llvm_prf_data,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
.L__profd_swab:
	.quad	-1619950660557759641            ! 0xe984c77503cb9b67
	.quad	18193                           ! 0x4711
	.long	.L__profc_swab-.L__profd_swab
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	2                               ! 0x2
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_swab, 48

	.type	.L__profc_isalpha,@object       ! @__profc_isalpha
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profc_isalpha:
	.zero	8
	.size	.L__profc_isalpha, 8

	.type	.L__profd_isalpha,@object       ! @__profd_isalpha
	.section	__llvm_prf_data,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profd_isalpha:
	.quad	-1429966999967671460            ! 0xec27bc96fe655b5c
	.quad	1563                            ! 0x61b
	.long	.L__profc_isalpha-.L__profd_isalpha
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_isalpha, 48

	.type	.L__profc_isascii,@object       ! @__profc_isascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
.L__profc_isascii:
	.zero	8
	.size	.L__profc_isascii, 8

	.type	.L__profd_isascii,@object       ! @__profd_isascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
.L__profd_isascii:
	.quad	-4792250000779744687            ! 0xbd7e8203c4a86a51
	.quad	1562                            ! 0x61a
	.long	.L__profc_isascii-.L__profd_isascii
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_isascii, 48

	.type	.L__profc_isblank,@object       ! @__profc_isblank
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
.L__profc_isblank:
	.zero	24
	.size	.L__profc_isblank, 24

	.type	.L__profd_isblank,@object       ! @__profd_isblank
	.section	__llvm_prf_data,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
.L__profd_isblank:
	.quad	2465200613623135234             ! 0x223626e59b14fc02
	.quad	6354911                         ! 0x60f7df
	.long	.L__profc_isblank-.L__profd_isblank
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_isblank, 48

	.type	.L__profc_iscntrl,@object       ! @__profc_iscntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profc_iscntrl:
	.zero	24
	.size	.L__profc_iscntrl, 24

	.type	.L__profd_iscntrl,@object       ! @__profd_iscntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profd_iscntrl:
	.quad	8897732069425577183             ! 0x7b7b182cc8b67cdf
	.quad	6354655                         ! 0x60f6df
	.long	.L__profc_iscntrl-.L__profd_iscntrl
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_iscntrl, 48

	.type	.L__profc_isdigit,@object       ! @__profc_isdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profc_isdigit:
	.zero	8
	.size	.L__profc_isdigit, 8

	.type	.L__profd_isdigit,@object       ! @__profd_isdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profd_isdigit:
	.quad	3483985654529092453             ! 0x30599a7e6cc36b65
	.quad	1563                            ! 0x61b
	.long	.L__profc_isdigit-.L__profd_isdigit
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_isdigit, 48

	.type	.L__profc_isgraph,@object       ! @__profc_isgraph
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profc_isgraph:
	.zero	8
	.size	.L__profc_isgraph, 8

	.type	.L__profd_isgraph,@object       ! @__profd_isgraph
	.section	__llvm_prf_data,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profd_isgraph:
	.quad	-127227288456547236             ! 0xfe3bff7489cfb45c
	.quad	1563                            ! 0x61b
	.long	.L__profc_isgraph-.L__profd_isgraph
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_isgraph, 48

	.type	.L__profc_islower,@object       ! @__profc_islower
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
.L__profc_islower:
	.zero	8
	.size	.L__profc_islower, 8

	.type	.L__profd_islower,@object       ! @__profd_islower
	.section	__llvm_prf_data,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
.L__profd_islower:
	.quad	7501983819047161697             ! 0x681c66894508cf61
	.quad	1563                            ! 0x61b
	.long	.L__profc_islower-.L__profd_islower
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_islower, 48

	.type	.L__profc_isprint,@object       ! @__profc_isprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
.L__profc_isprint:
	.zero	8
	.size	.L__profc_isprint, 8

	.type	.L__profd_isprint,@object       ! @__profd_isprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
.L__profd_isprint:
	.quad	-7275761640889424986            ! 0x9b074d56145f63a6
	.quad	1563                            ! 0x61b
	.long	.L__profc_isprint-.L__profd_isprint
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_isprint, 48

	.type	.L__profc_isspace,@object       ! @__profc_isspace
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
.L__profc_isspace:
	.zero	24
	.size	.L__profc_isspace, 24

	.type	.L__profd_isspace,@object       ! @__profd_isspace
	.section	__llvm_prf_data,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
.L__profd_isspace:
	.quad	9032360604355461395             ! 0x7d59641d39d70113
	.quad	6354907                         ! 0x60f7db
	.long	.L__profc_isspace-.L__profd_isspace
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_isspace, 48

	.type	.L__profc_isupper,@object       ! @__profc_isupper
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
.L__profc_isupper:
	.zero	8
	.size	.L__profc_isupper, 8

	.type	.L__profd_isupper,@object       ! @__profd_isupper
	.section	__llvm_prf_data,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
.L__profd_isupper:
	.quad	4174714232255583053             ! 0x39ef9079c45c934d
	.quad	1563                            ! 0x61b
	.long	.L__profc_isupper-.L__profd_isupper
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_isupper, 48

	.type	.L__profc_iswcntrl,@object      ! @__profc_iswcntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profc_iswcntrl:
	.zero	56
	.size	.L__profc_iswcntrl, 56

	.type	.L__profd_iswcntrl,@object      ! @__profd_iswcntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profd_iswcntrl:
	.quad	7000259844681188668             ! 0x6125eb3d61a7453c
	.quad	106600273393371                 ! 0x60f3cf6db6db
	.long	.L__profc_iswcntrl-.L__profd_iswcntrl
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	7                               ! 0x7
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_iswcntrl, 48

	.type	.L__profc_iswdigit,@object      ! @__profc_iswdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profc_iswdigit:
	.zero	8
	.size	.L__profc_iswdigit, 8

	.type	.L__profd_iswdigit,@object      ! @__profd_iswdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profd_iswdigit:
	.quad	8583753245428091608             ! 0x771f9e1919590ad8
	.quad	1563                            ! 0x61b
	.long	.L__profc_iswdigit-.L__profd_iswdigit
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_iswdigit, 48

	.type	.L__profc_iswprint,@object      ! @__profc_iswprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profc_iswprint:
	.zero	80
	.size	.L__profc_iswprint, 80

	.type	.L__profd_iswprint,@object      ! @__profd_iswprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profd_iswprint:
	.quad	-719555261641779946             ! 0xf603a04d49941516
	.quad	-2566119187471392224            ! 0xdc635031e3742220
	.long	.L__profc_iswprint-.L__profd_iswprint
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	10                              ! 0xa
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_iswprint, 48

	.type	.L__profc_iswxdigit,@object     ! @__profc_iswxdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profc_iswxdigit:
	.zero	24
	.size	.L__profc_iswxdigit, 24

	.type	.L__profd_iswxdigit,@object     ! @__profd_iswxdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profd_iswxdigit:
	.quad	624771703830219826              ! 0x8aba28df0840c32
	.quad	6354651                         ! 0x60f6db
	.long	.L__profc_iswxdigit-.L__profd_iswxdigit
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_iswxdigit, 48

	.type	.L__profc_toascii,@object       ! @__profc_toascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
.L__profc_toascii:
	.zero	8
	.size	.L__profc_toascii, 8

	.type	.L__profd_toascii,@object       ! @__profd_toascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
.L__profd_toascii:
	.quad	4548159975983457080             ! 0x3f1e4f66a624a338
	.quad	24                              ! 0x18
	.long	.L__profc_toascii-.L__profd_toascii
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_toascii, 48

	.type	.L__profc_fdim,@object          ! @__profc_fdim
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
.L__profc_fdim:
	.zero	32
	.size	.L__profc_fdim, 32

	.type	.L__profd_fdim,@object          ! @__profd_fdim
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
.L__profd_fdim:
	.quad	-3545869933759497925            ! 0xceca8a150286f93b
	.quad	7369846577040809592             ! 0x6646f46a29a55e78
	.long	.L__profc_fdim-.L__profd_fdim
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	4                               ! 0x4
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_fdim, 48

	.type	.L__profc_fdimf,@object         ! @__profc_fdimf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
.L__profc_fdimf:
	.zero	32
	.size	.L__profc_fdimf, 32

	.type	.L__profd_fdimf,@object         ! @__profd_fdimf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
.L__profd_fdimf:
	.quad	-1547869627280940664            ! 0xea84dcc6634da188
	.quad	7369846577040809592             ! 0x6646f46a29a55e78
	.long	.L__profc_fdimf-.L__profd_fdimf
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	4                               ! 0x4
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_fdimf, 48

	.type	.L__profc_fmax,@object          ! @__profc_fmax
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
.L__profc_fmax:
	.zero	48
	.size	.L__profc_fmax, 48

	.type	.L__profd_fmax,@object          ! @__profd_fmax
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
.L__profd_fmax:
	.quad	-2423801789625842334            ! 0xde5ced1d3b654562
	.quad	3977842549302548673             ! 0x373422b91b9cd8c1
	.long	.L__profc_fmax-.L__profd_fmax
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	6                               ! 0x6
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_fmax, 48

	.type	.L__profc_fmaxf,@object         ! @__profc_fmaxf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
.L__profc_fmaxf:
	.zero	48
	.size	.L__profc_fmaxf, 48

	.type	.L__profd_fmaxf,@object         ! @__profd_fmaxf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
.L__profd_fmaxf:
	.quad	-5134209104457391460            ! 0xb8bfa0058e3da29c
	.quad	3977842549302548673             ! 0x373422b91b9cd8c1
	.long	.L__profc_fmaxf-.L__profd_fmaxf
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	6                               ! 0x6
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_fmaxf, 48

	.type	.L__profc_fmaxl,@object         ! @__profc_fmaxl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
.L__profc_fmaxl:
	.zero	48
	.size	.L__profc_fmaxl, 48

	.type	.L__profd_fmaxl,@object         ! @__profd_fmaxl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
.L__profd_fmaxl:
	.quad	-3138580006960380340            ! 0xd471861cd1fbc64c
	.quad	3977842549302548673             ! 0x373422b91b9cd8c1
	.long	.L__profc_fmaxl-.L__profd_fmaxl
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	6                               ! 0x6
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_fmaxl, 48

	.type	.L__profc_fmin,@object          ! @__profc_fmin
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
.L__profc_fmin:
	.zero	48
	.size	.L__profc_fmin, 48

	.type	.L__profd_fmin,@object          ! @__profd_fmin
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
.L__profd_fmin:
	.quad	965427315610335377              ! 0xd65e3074b69b891
	.quad	3977842549302548673             ! 0x373422b91b9cd8c1
	.long	.L__profc_fmin-.L__profd_fmin
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	6                               ! 0x6
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_fmin, 48

	.type	.L__profc_fminf,@object         ! @__profc_fminf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
.L__profc_fminf:
	.zero	48
	.size	.L__profc_fminf, 48

	.type	.L__profd_fminf,@object         ! @__profd_fminf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
.L__profd_fminf:
	.quad	7710199602704325723             ! 0x6b0021b0328c9c5b
	.quad	3977842549302548673             ! 0x373422b91b9cd8c1
	.long	.L__profc_fminf-.L__profd_fminf
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	6                               ! 0x6
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_fminf, 48

	.type	.L__profc_fminl,@object         ! @__profc_fminl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
.L__profc_fminl:
	.zero	48
	.size	.L__profc_fminl, 48

	.type	.L__profd_fminl,@object         ! @__profd_fminl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
.L__profd_fminl:
	.quad	2487418697363824514             ! 0x2285162058091f82
	.quad	3977842549302548673             ! 0x373422b91b9cd8c1
	.long	.L__profc_fminl-.L__profd_fminl
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	6                               ! 0x6
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_fminl, 48

	.type	.L__profc_l64a,@object          ! @__profc_l64a
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
.L__profc_l64a:
	.zero	16
	.size	.L__profc_l64a, 16

	.type	.L__profd_l64a,@object          ! @__profd_l64a
	.section	__llvm_prf_data,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
.L__profd_l64a:
	.quad	-6158745991357604691            ! 0xaa87bd26bb44dcad
	.quad	17496                           ! 0x4458
	.long	.L__profc_l64a-.L__profd_l64a
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	2                               ! 0x2
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_l64a, 48

	.type	.L__profc_srand,@object         ! @__profc_srand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
.L__profc_srand:
	.zero	8
	.size	.L__profc_srand, 8

	.type	.L__profd_srand,@object         ! @__profd_srand
	.section	__llvm_prf_data,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
.L__profd_srand:
	.quad	-2085616837322687880            ! 0xe30e668959ceba78
	.quad	0                               ! 0x0
	.long	.L__profc_srand-.L__profd_srand
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_srand, 48

	.type	.L__profc_rand,@object          ! @__profc_rand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
.L__profc_rand:
	.zero	8
	.size	.L__profc_rand, 8

	.type	.L__profd_rand,@object          ! @__profd_rand
	.section	__llvm_prf_data,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
.L__profd_rand:
	.quad	7206085285791387956             ! 0x6401286350c3d134
	.quad	24                              ! 0x18
	.long	.L__profc_rand-.L__profd_rand
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_rand, 48

	.type	.L__profc_insque,@object        ! @__profc_insque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
.L__profc_insque:
	.zero	24
	.size	.L__profc_insque, 24

	.type	.L__profd_insque,@object        ! @__profd_insque
	.section	__llvm_prf_data,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
.L__profd_insque:
	.quad	-5080349535175464041            ! 0xb97ef903bd0bab97
	.quad	45786906010769                  ! 0x29a49844a491
	.long	.L__profc_insque-.L__profd_insque
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_insque, 48

	.type	.L__profc_remque,@object        ! @__profc_remque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
.L__profc_remque:
	.zero	24
	.size	.L__profc_remque, 24

	.type	.L__profd_remque,@object        ! @__profd_remque
	.section	__llvm_prf_data,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
.L__profd_remque:
	.quad	-7214219538753974334            ! 0x9be1f18d54e30fc2
	.quad	11043906705                     ! 0x29244a491
	.long	.L__profc_remque-.L__profd_remque
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_remque, 48

	.type	.L__profc_lsearch,@object       ! @__profc_lsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
.L__profc_lsearch:
	.zero	24
	.size	.L__profc_lsearch, 24

	.type	.L__profd_lsearch,@object       ! @__profd_lsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
.L__profd_lsearch:
	.quad	-7032153342590886098            ! 0x9e68c5caf8cb5f2e
	.quad	1245367951758424                ! 0x46ca7d2611458
	.long	.L__profc_lsearch-.L__profd_lsearch
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_lsearch, 48

	.type	.L__profc_lfind,@object         ! @__profc_lfind
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
.L__profc_lfind:
	.zero	24
	.size	.L__profc_lfind, 24

	.type	.L__profd_lfind,@object         ! @__profd_lfind
	.section	__llvm_prf_data,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
.L__profd_lfind:
	.quad	-6350214982902907667            ! 0xa7df811e30b57ced
	.quad	1245367951758424                ! 0x46ca7d2611458
	.long	.L__profc_lfind-.L__profd_lfind
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_lfind, 48

	.type	.L__profc_abs,@object           ! @__profc_abs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
.L__profc_abs:
	.zero	16
	.size	.L__profc_abs, 16

	.type	.L__profd_abs,@object           ! @__profd_abs
	.section	__llvm_prf_data,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
.L__profd_abs:
	.quad	-238465663743841031             ! 0xfcb0ccbe056bacf9
	.quad	99164                           ! 0x1835c
	.long	.L__profc_abs-.L__profd_abs
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	2                               ! 0x2
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_abs, 48

	.type	.L__profc_atoi,@object          ! @__profc_atoi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
.L__profc_atoi:
	.zero	56
	.size	.L__profc_atoi, 56

	.type	.L__profd_atoi,@object          ! @__profd_atoi
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
.L__profd_atoi:
	.quad	-6544211519801369139            ! 0xa52e4a4ba3385dcd
	.quad	638206505195021                 ! 0x244720809160d
	.long	.L__profc_atoi-.L__profd_atoi
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	7                               ! 0x7
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_atoi, 48

	.type	.L__profc_atol,@object          ! @__profc_atol
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
.L__profc_atol:
	.zero	56
	.size	.L__profc_atol, 56

	.type	.L__profd_atol,@object          ! @__profd_atol
	.section	__llvm_prf_data,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
.L__profd_atol:
	.quad	8236175749196770609             ! 0x724cc634ee8f6d31
	.quad	638206505195021                 ! 0x244720809160d
	.long	.L__profc_atol-.L__profd_atol
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	7                               ! 0x7
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_atol, 48

	.type	.L__profc_atoll,@object         ! @__profc_atoll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
.L__profc_atoll:
	.zero	56
	.size	.L__profc_atoll, 56

	.type	.L__profd_atoll,@object         ! @__profd_atoll
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
.L__profd_atoll:
	.quad	3653807471789013357             ! 0x32b4ee8971a6f96d
	.quad	638206505195021                 ! 0x244720809160d
	.long	.L__profc_atoll-.L__profd_atoll
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	7                               ! 0x7
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_atoll, 48

	.type	.L__profc_bsearch,@object       ! @__profc_bsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
.L__profc_bsearch:
	.zero	32
	.size	.L__profc_bsearch, 32

	.type	.L__profd_bsearch,@object       ! @__profd_bsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
.L__profd_bsearch:
	.quad	8750110911118262334             ! 0x796ea3837a79403e
	.quad	-852542619444921222             ! 0xf42b29012c1abc7a
	.long	.L__profc_bsearch-.L__profd_bsearch
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	4                               ! 0x4
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_bsearch, 48

	.type	.L__profc_bsearch_r,@object     ! @__profc_bsearch_r
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
.L__profc_bsearch_r:
	.zero	32
	.size	.L__profc_bsearch_r, 32

	.type	.L__profd_bsearch_r,@object     ! @__profd_bsearch_r
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
.L__profd_bsearch_r:
	.quad	1417097008757763708             ! 0x13aa8a38ab466e7c
	.quad	1259382983000112142             ! 0x117a3a2689e4bc0e
	.long	.L__profc_bsearch_r-.L__profd_bsearch_r
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	4                               ! 0x4
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_bsearch_r, 48

	.type	.L__profc_div,@object           ! @__profc_div
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_div
	.p2align	3, 0x0
.L__profc_div:
	.zero	8
	.size	.L__profc_div, 8

	.type	.L__profd_div,@object           ! @__profd_div
	.section	__llvm_prf_data,"awG",@progbits,__profc_div
	.p2align	3, 0x0
.L__profd_div:
	.quad	5497092892325669176             ! 0x4c4998dc58656938
	.quad	24                              ! 0x18
	.long	.L__profc_div-.L__profd_div
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_div, 48

	.type	.L__profc_imaxabs,@object       ! @__profc_imaxabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profc_imaxabs:
	.zero	16
	.size	.L__profc_imaxabs, 16

	.type	.L__profd_imaxabs,@object       ! @__profd_imaxabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profd_imaxabs:
	.quad	8946668544180752025             ! 0x7c28f3a3b30e0e99
	.quad	99164                           ! 0x1835c
	.long	.L__profc_imaxabs-.L__profd_imaxabs
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	2                               ! 0x2
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_imaxabs, 48

	.type	.L__profc_imaxdiv,@object       ! @__profc_imaxdiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
.L__profc_imaxdiv:
	.zero	8
	.size	.L__profc_imaxdiv, 8

	.type	.L__profd_imaxdiv,@object       ! @__profd_imaxdiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
.L__profd_imaxdiv:
	.quad	-3928426486442246988            ! 0xc97b6cec9d5fbcb4
	.quad	24                              ! 0x18
	.long	.L__profc_imaxdiv-.L__profd_imaxdiv
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_imaxdiv, 48

	.type	.L__profc_labs,@object          ! @__profc_labs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
.L__profc_labs:
	.zero	16
	.size	.L__profc_labs, 16

	.type	.L__profd_labs,@object          ! @__profd_labs
	.section	__llvm_prf_data,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
.L__profd_labs:
	.quad	-7118441263952323418            ! 0x9d363762b3a39ca6
	.quad	99164                           ! 0x1835c
	.long	.L__profc_labs-.L__profd_labs
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	2                               ! 0x2
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_labs, 48

	.type	.L__profc_ldiv,@object          ! @__profc_ldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
.L__profc_ldiv:
	.zero	8
	.size	.L__profc_ldiv, 8

	.type	.L__profd_ldiv,@object          ! @__profd_ldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
.L__profd_ldiv:
	.quad	7149836041034155625             ! 0x633951ff74204669
	.quad	24                              ! 0x18
	.long	.L__profc_ldiv-.L__profd_ldiv
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_ldiv, 48

	.type	.L__profc_llabs,@object         ! @__profc_llabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
.L__profc_llabs:
	.zero	16
	.size	.L__profc_llabs, 16

	.type	.L__profd_llabs,@object         ! @__profd_llabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
.L__profd_llabs:
	.quad	7684789126781046466             ! 0x6aa5dafebb918ec2
	.quad	99164                           ! 0x1835c
	.long	.L__profc_llabs-.L__profd_llabs
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	2                               ! 0x2
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_llabs, 48

	.type	.L__profc_lldiv,@object         ! @__profc_lldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
.L__profc_lldiv:
	.zero	8
	.size	.L__profc_lldiv, 8

	.type	.L__profd_lldiv,@object         ! @__profd_lldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
.L__profd_lldiv:
	.quad	-5329156747615108898            ! 0xb60b082c520680de
	.quad	24                              ! 0x18
	.long	.L__profc_lldiv-.L__profd_lldiv
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_lldiv, 48

	.type	.L__profc_wcschr,@object        ! @__profc_wcschr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profc_wcschr:
	.zero	40
	.size	.L__profc_wcschr, 40

	.type	.L__profd_wcschr,@object        ! @__profd_wcschr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profd_wcschr:
	.quad	-2279810736707830048            ! 0xe05c7c36c3687ee0
	.quad	4538308109                      ! 0x10e81160d
	.long	.L__profc_wcschr-.L__profd_wcschr
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	5                               ! 0x5
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_wcschr, 48

	.type	.L__profc_wcscmp,@object        ! @__profc_wcscmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profc_wcscmp:
	.zero	56
	.size	.L__profc_wcscmp, 56

	.type	.L__profd_wcscmp,@object        ! @__profd_wcscmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profd_wcscmp:
	.quad	-3710185595167438704            ! 0xcc82c5dbcd460890
	.quad	1188468208228060                ! 0x438e7d160d6dc
	.long	.L__profc_wcscmp-.L__profd_wcscmp
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	7                               ! 0x7
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_wcscmp, 48

	.type	.L__profc_wcscpy,@object        ! @__profc_wcscpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profc_wcscpy:
	.zero	16
	.size	.L__profc_wcscpy, 16

	.type	.L__profd_wcscpy,@object        ! @__profd_wcscpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profd_wcscpy:
	.quad	-8381368184235816342            ! 0x8baf660af6dd0a6a
	.quad	9304                            ! 0x2458
	.long	.L__profc_wcscpy-.L__profd_wcscpy
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	2                               ! 0x2
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_wcscpy, 48

	.type	.L__profc_wcslen,@object        ! @__profc_wcslen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
.L__profc_wcslen:
	.zero	16
	.size	.L__profc_wcslen, 16

	.type	.L__profd_wcslen,@object        ! @__profd_wcslen
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
.L__profd_wcslen:
	.quad	3988408974905483574             ! 0x3759acd4c838a136
	.quad	17496                           ! 0x4458
	.long	.L__profc_wcslen-.L__profd_wcslen
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	2                               ! 0x2
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_wcslen, 48

	.type	.L__profc_wcsncmp,@object       ! @__profc_wcsncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profc_wcsncmp:
	.zero	80
	.size	.L__profc_wcsncmp, 80

	.type	.L__profd_wcsncmp,@object       ! @__profd_wcsncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profd_wcsncmp:
	.quad	-5425166749483878188            ! 0xb4b5ef95c9c0b8d4
	.quad	6710790269995215964             ! 0x5d218431fd366c5c
	.long	.L__profc_wcsncmp-.L__profd_wcsncmp
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	10                              ! 0xa
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_wcsncmp, 48

	.type	.L__profc_wmemchr,@object       ! @__profc_wmemchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profc_wmemchr:
	.zero	40
	.size	.L__profc_wmemchr, 40

	.type	.L__profd_wmemchr,@object       ! @__profd_wmemchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profd_wmemchr:
	.quad	-150916099757221660             ! 0xfde7d69b5b1558e4
	.quad	4538308109                      ! 0x10e81160d
	.long	.L__profc_wmemchr-.L__profd_wmemchr
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	5                               ! 0x5
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_wmemchr, 48

	.type	.L__profc_wmemcmp,@object       ! @__profc_wmemcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profc_wmemcmp:
	.zero	48
	.size	.L__profc_wmemcmp, 48

	.type	.L__profd_wmemcmp,@object       ! @__profd_wmemcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profd_wmemcmp:
	.quad	5386172057678365784             ! 0x4abf86f3050dc458
	.quad	1189621521503964                ! 0x439f45834d6dc
	.long	.L__profc_wmemcmp-.L__profd_wmemcmp
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	6                               ! 0x6
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_wmemcmp, 48

	.type	.L__profc_wmemcpy,@object       ! @__profc_wmemcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
.L__profc_wmemcpy:
	.zero	16
	.size	.L__profc_wmemcpy, 16

	.type	.L__profd_wmemcpy,@object       ! @__profd_wmemcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
.L__profd_wmemcpy:
	.quad	7326050423799855187             ! 0x65ab5c0b9d30b853
	.quad	9304                            ! 0x2458
	.long	.L__profc_wmemcpy-.L__profd_wmemcpy
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	2                               ! 0x2
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_wmemcpy, 48

	.type	.L__profc_wmemmove,@object      ! @__profc_wmemmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profc_wmemmove:
	.zero	40
	.size	.L__profc_wmemmove, 40

	.type	.L__profd_wmemmove,@object      ! @__profd_wmemmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profd_wmemmove:
	.quad	-4659407939446788683            ! 0xbf56752a69a3adb5
	.quad	-1500206092990891740            ! 0xeb2e3281c166b924
	.long	.L__profc_wmemmove-.L__profd_wmemmove
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	5                               ! 0x5
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_wmemmove, 48

	.type	.L__profc_wmemset,@object       ! @__profc_wmemset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profc_wmemset:
	.zero	16
	.size	.L__profc_wmemset, 16

	.type	.L__profd_wmemset,@object       ! @__profd_wmemset
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profd_wmemset:
	.quad	-8291142148468431281            ! 0x8ceff224f245264f
	.quad	9304                            ! 0x2458
	.long	.L__profc_wmemset-.L__profd_wmemset
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	2                               ! 0x2
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_wmemset, 48

	.type	.L__profc_bcopy,@object         ! @__profc_bcopy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profc_bcopy:
	.zero	40
	.size	.L__profc_bcopy, 40

	.type	.L__profd_bcopy,@object         ! @__profd_bcopy
	.section	__llvm_prf_data,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profd_bcopy:
	.quad	-8407331144368071880            ! 0x8b5328de3edcdb38
	.quad	5234109875325077019             ! 0x48a34b333a1d861b
	.long	.L__profc_bcopy-.L__profd_bcopy
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	5                               ! 0x5
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_bcopy, 48

	.type	.L__profc_rotl64,@object        ! @__profc_rotl64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profc_rotl64:
	.zero	8
	.size	.L__profc_rotl64, 8

	.type	.L__profd_rotl64,@object        ! @__profd_rotl64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profd_rotl64:
	.quad	4714666614722164144             ! 0x416ddc4e84e875b0
	.quad	24                              ! 0x18
	.long	.L__profc_rotl64-.L__profd_rotl64
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_rotl64, 48

	.type	.L__profc_rotr64,@object        ! @__profc_rotr64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profc_rotr64:
	.zero	8
	.size	.L__profc_rotr64, 8

	.type	.L__profd_rotr64,@object        ! @__profd_rotr64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profd_rotr64:
	.quad	-8427642833712987187            ! 0x8b0aff7e8aabc3cd
	.quad	24                              ! 0x18
	.long	.L__profc_rotr64-.L__profd_rotr64
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_rotr64, 48

	.type	.L__profc_rotl32,@object        ! @__profc_rotl32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profc_rotl32:
	.zero	8
	.size	.L__profc_rotl32, 8

	.type	.L__profd_rotl32,@object        ! @__profd_rotl32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profd_rotl32:
	.quad	6417704780586152324             ! 0x5910447ed829f184
	.quad	24                              ! 0x18
	.long	.L__profc_rotl32-.L__profd_rotl32
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_rotl32, 48

	.type	.L__profc_rotr32,@object        ! @__profc_rotr32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profc_rotr32:
	.zero	8
	.size	.L__profc_rotr32, 8

	.type	.L__profd_rotr32,@object        ! @__profd_rotr32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profd_rotr32:
	.quad	-5668908084823466940            ! 0xb153fe21cbc1dc44
	.quad	24                              ! 0x18
	.long	.L__profc_rotr32-.L__profd_rotr32
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_rotr32, 48

	.type	.L__profc_rotl_sz,@object       ! @__profc_rotl_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profc_rotl_sz:
	.zero	8
	.size	.L__profc_rotl_sz, 8

	.type	.L__profd_rotl_sz,@object       ! @__profd_rotl_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profd_rotl_sz:
	.quad	-3686623714176605670            ! 0xccd67b43b7f8e21a
	.quad	24                              ! 0x18
	.long	.L__profc_rotl_sz-.L__profd_rotl_sz
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_rotl_sz, 48

	.type	.L__profc_rotr_sz,@object       ! @__profc_rotr_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profc_rotr_sz:
	.zero	8
	.size	.L__profc_rotr_sz, 8

	.type	.L__profd_rotr_sz,@object       ! @__profd_rotr_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profd_rotr_sz:
	.quad	3415499704483829380             ! 0x2f664ae29835d684
	.quad	24                              ! 0x18
	.long	.L__profc_rotr_sz-.L__profd_rotr_sz
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_rotr_sz, 48

	.type	.L__profc_rotl16,@object        ! @__profc_rotl16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profc_rotl16:
	.zero	8
	.size	.L__profc_rotl16, 8

	.type	.L__profd_rotl16,@object        ! @__profd_rotl16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profd_rotl16:
	.quad	7327166975465201445             ! 0x65af538b0e939f25
	.quad	24                              ! 0x18
	.long	.L__profc_rotl16-.L__profd_rotl16
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_rotl16, 48

	.type	.L__profc_rotr16,@object        ! @__profc_rotr16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profc_rotr16:
	.zero	8
	.size	.L__profc_rotr16, 8

	.type	.L__profd_rotr16,@object        ! @__profd_rotr16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profd_rotr16:
	.quad	5274763753728838268             ! 0x4933b9afe71d0a7c
	.quad	24                              ! 0x18
	.long	.L__profc_rotr16-.L__profd_rotr16
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_rotr16, 48

	.type	.L__profc_rotl8,@object         ! @__profc_rotl8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profc_rotl8:
	.zero	8
	.size	.L__profc_rotl8, 8

	.type	.L__profd_rotl8,@object         ! @__profd_rotl8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profd_rotl8:
	.quad	4408423234350850624             ! 0x3d2ddd93270fa240
	.quad	24                              ! 0x18
	.long	.L__profc_rotl8-.L__profd_rotl8
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_rotl8, 48

	.type	.L__profc_rotr8,@object         ! @__profc_rotr8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profc_rotr8:
	.zero	8
	.size	.L__profc_rotr8, 8

	.type	.L__profd_rotr8,@object         ! @__profd_rotr8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profd_rotr8:
	.quad	-6535801773217052896            ! 0xa54c2aea59078720
	.quad	24                              ! 0x18
	.long	.L__profc_rotr8-.L__profd_rotr8
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_rotr8, 48

	.type	.L__profc_bswap_16,@object      ! @__profc_bswap_16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profc_bswap_16:
	.zero	8
	.size	.L__profc_bswap_16, 8

	.type	.L__profd_bswap_16,@object      ! @__profd_bswap_16
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profd_bswap_16:
	.quad	-8870828063230114195            ! 0x84e47ce04b9a466d
	.quad	24                              ! 0x18
	.long	.L__profc_bswap_16-.L__profd_bswap_16
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_bswap_16, 48

	.type	.L__profc_bswap_32,@object      ! @__profc_bswap_32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profc_bswap_32:
	.zero	8
	.size	.L__profc_bswap_32, 8

	.type	.L__profd_bswap_32,@object      ! @__profd_bswap_32
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profd_bswap_32:
	.quad	7304833549461180700             ! 0x655ffb691afd511c
	.quad	24                              ! 0x18
	.long	.L__profc_bswap_32-.L__profd_bswap_32
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_bswap_32, 48

	.type	.L__profc_bswap_64,@object      ! @__profc_bswap_64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profc_bswap_64:
	.zero	8
	.size	.L__profc_bswap_64, 8

	.type	.L__profd_bswap_64,@object      ! @__profd_bswap_64
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profd_bswap_64:
	.quad	2873856403134720854             ! 0x27e1fd2c1c53ab56
	.quad	24                              ! 0x18
	.long	.L__profc_bswap_64-.L__profd_bswap_64
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_bswap_64, 48

	.type	.L__profc_ffs,@object           ! @__profc_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
.L__profc_ffs:
	.zero	24
	.size	.L__profc_ffs, 24

	.type	.L__profd_ffs,@object           ! @__profd_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
.L__profd_ffs:
	.quad	9222170723057548859             ! 0x7ffbbb6955da3e3b
	.quad	19458657686616                  ! 0x11b292611458
	.long	.L__profc_ffs-.L__profd_ffs
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_ffs, 48

	.type	.L__profc_libiberty_ffs,@object ! @__profc_libiberty_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profc_libiberty_ffs:
	.zero	24
	.size	.L__profc_libiberty_ffs, 24

	.type	.L__profd_libiberty_ffs,@object ! @__profd_libiberty_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profd_libiberty_ffs:
	.quad	65216057573358521               ! 0xe7b1a8a94fbbb9
	.quad	2952352215704664                ! 0xa7d261111a458
	.long	.L__profc_libiberty_ffs-.L__profd_libiberty_ffs
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_libiberty_ffs, 48

	.type	.L__profc_gl_isinff,@object     ! @__profc_gl_isinff
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
.L__profc_gl_isinff:
	.zero	24
	.size	.L__profc_gl_isinff, 24

	.type	.L__profd_gl_isinff,@object     ! @__profd_gl_isinff
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
.L__profd_gl_isinff:
	.quad	6535010584615638394             ! 0x5ab10580b36ed57a
	.quad	6354652                         ! 0x60f6dc
	.long	.L__profc_gl_isinff-.L__profd_gl_isinff
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_gl_isinff, 48

	.type	.L__profc_gl_isinfd,@object     ! @__profc_gl_isinfd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
.L__profc_gl_isinfd:
	.zero	24
	.size	.L__profc_gl_isinfd, 24

	.type	.L__profd_gl_isinfd,@object     ! @__profd_gl_isinfd
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
.L__profd_gl_isinfd:
	.quad	-9165907066207032774            ! 0x80cc28161a7caa3a
	.quad	6354652                         ! 0x60f6dc
	.long	.L__profc_gl_isinfd-.L__profd_gl_isinfd
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_gl_isinfd, 48

	.type	.L__profc_gl_isinfl,@object     ! @__profc_gl_isinfl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
.L__profc_gl_isinfl:
	.zero	24
	.size	.L__profc_gl_isinfl, 24

	.type	.L__profd_gl_isinfl,@object     ! @__profd_gl_isinfl
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
.L__profd_gl_isinfl:
	.quad	4731159788068304891             ! 0x41a874c2af6c77fb
	.quad	6354652                         ! 0x60f6dc
	.long	.L__profc_gl_isinfl-.L__profd_gl_isinfl
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_gl_isinfl, 48

	.type	.L__profc__Qp_itoq,@object      ! @__profc__Qp_itoq
	.section	__llvm_prf_cnts,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
.L__profc__Qp_itoq:
	.zero	8
	.size	.L__profc__Qp_itoq, 8

	.type	.L__profd__Qp_itoq,@object      ! @__profd__Qp_itoq
	.section	__llvm_prf_data,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
.L__profd__Qp_itoq:
	.quad	-3858125999267273921            ! 0xca752ed84af9a33f
	.quad	0                               ! 0x0
	.long	.L__profc__Qp_itoq-.L__profd__Qp_itoq
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd__Qp_itoq, 48

	.type	.L__profc_ldexpf,@object        ! @__profc_ldexpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
.L__profc_ldexpf:
	.zero	64
	.size	.L__profc_ldexpf, 64

	.type	.L__profd_ldexpf,@object        ! @__profd_ldexpf
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
.L__profd_ldexpf:
	.quad	-2560632889718296859            ! 0xdc76cdf42028aee5
	.quad	-2048372819454505383            ! 0xe392b7c600d94e59
	.long	.L__profc_ldexpf-.L__profd_ldexpf
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	8                               ! 0x8
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_ldexpf, 48

	.type	.L__profc_ldexp,@object         ! @__profc_ldexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
.L__profc_ldexp:
	.zero	64
	.size	.L__profc_ldexp, 64

	.type	.L__profd_ldexp,@object         ! @__profd_ldexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
.L__profd_ldexp:
	.quad	-240549059163932437             ! 0xfca965e7b97ab8eb
	.quad	-2048372819454505383            ! 0xe392b7c600d94e59
	.long	.L__profc_ldexp-.L__profd_ldexp
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	8                               ! 0x8
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_ldexp, 48

	.type	.L__profc_ldexpl,@object        ! @__profc_ldexpl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
.L__profc_ldexpl:
	.zero	64
	.size	.L__profc_ldexpl, 64

	.type	.L__profd_ldexpl,@object        ! @__profd_ldexpl
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
.L__profd_ldexpl:
	.quad	-5097262943286299417            ! 0xb942e25c0aa874e7
	.quad	-2048372819454505383            ! 0xe392b7c600d94e59
	.long	.L__profc_ldexpl-.L__profd_ldexpl
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	8                               ! 0x8
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_ldexpl, 48

	.type	.L__profc_memxor,@object        ! @__profc_memxor
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
.L__profc_memxor:
	.zero	16
	.size	.L__profc_memxor, 16

	.type	.L__profd_memxor,@object        ! @__profd_memxor
	.section	__llvm_prf_data,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
.L__profd_memxor:
	.quad	-8368025376422999318            ! 0x8bdecd417eda4aea
	.quad	1164376                         ! 0x11c458
	.long	.L__profc_memxor-.L__profd_memxor
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	2                               ! 0x2
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_memxor, 48

	.type	.L__profc_strncat,@object       ! @__profc_strncat
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
.L__profc_strncat:
	.zero	40
	.size	.L__profc_strncat, 40

	.type	.L__profd_strncat,@object       ! @__profd_strncat
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
.L__profd_strncat:
	.quad	-3582483947543505905            ! 0xce4875d49d21540f
	.quad	76123606467028056               ! 0x10e72044a7d2458
	.long	.L__profc_strncat-.L__profd_strncat
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	5                               ! 0x5
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_strncat, 48

	.type	.L__profc_strnlen,@object       ! @__profc_strnlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profc_strnlen:
	.zero	32
	.size	.L__profc_strnlen, 32

	.type	.L__profd_strnlen,@object       ! @__profd_strnlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profd_strnlen:
	.quad	517590790318988421              ! 0x72eda14dbfa1c85
	.quad	4537021528                      ! 0x10e6d7458
	.long	.L__profc_strnlen-.L__profd_strnlen
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	4                               ! 0x4
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_strnlen, 48

	.type	.L__profc_strpbrk,@object       ! @__profc_strpbrk
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profc_strpbrk:
	.zero	32
	.size	.L__profc_strpbrk, 32

	.type	.L__profd_strpbrk,@object       ! @__profd_strpbrk
	.section	__llvm_prf_data,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profd_strpbrk:
	.quad	-6867074718569872870            ! 0xa0b33fed4193c21a
	.quad	-4444802448421279214            ! 0xc250e3b905102a12
	.long	.L__profc_strpbrk-.L__profd_strpbrk
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	4                               ! 0x4
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_strpbrk, 48

	.type	.L__profc_strrchr,@object       ! @__profc_strrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profc_strrchr:
	.zero	24
	.size	.L__profc_strrchr, 24

	.type	.L__profd_strrchr,@object       ! @__profd_strrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profd_strrchr:
	.quad	5307837722043833871             ! 0x49a93a493bd75e0f
	.quad	217420731480                    ! 0x329f491458
	.long	.L__profc_strrchr-.L__profd_strrchr
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_strrchr, 48

	.type	.L__profc_strstr,@object        ! @__profc_strstr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
.L__profc_strstr:
	.zero	32
	.size	.L__profc_strstr, 32

	.type	.L__profd_strstr,@object        ! @__profd_strstr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
.L__profd_strstr:
	.quad	3560562421867190603             ! 0x3169a8a873ff994b
	.quad	-7798267876297541628            ! 0x93c6fcaef9f1f804
	.long	.L__profc_strstr-.L__profd_strstr
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	4                               ! 0x4
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_strstr, 48

	.type	.L__profc_copysign,@object      ! @__profc_copysign
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
.L__profc_copysign:
	.zero	56
	.size	.L__profc_copysign, 56

	.type	.L__profd_copysign,@object      ! @__profd_copysign
	.section	__llvm_prf_data,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
.L__profd_copysign:
	.quad	-9076603418344796971            ! 0x82096d47ea764cd5
	.quad	4200982705386070127             ! 0x3a4ce3834618a06f
	.long	.L__profc_copysign-.L__profd_copysign
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	7                               ! 0x7
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_copysign, 48

	.type	.L__profc_memmem,@object        ! @__profc_memmem
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
.L__profc_memmem:
	.zero	56
	.size	.L__profc_memmem, 56

	.type	.L__profd_memmem,@object        ! @__profd_memmem
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
.L__profd_memmem:
	.quad	-7485463843177831536            ! 0x981e4a4b585ae390
	.quad	5508063777036862020             ! 0x4c7092d27e7a8244
	.long	.L__profc_memmem-.L__profd_memmem
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	7                               ! 0x7
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_memmem, 48

	.type	.L__profc_mempcpy,@object       ! @__profc_mempcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
.L__profc_mempcpy:
	.zero	8
	.size	.L__profc_mempcpy, 8

	.type	.L__profd_mempcpy,@object       ! @__profd_mempcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
.L__profd_mempcpy:
	.quad	-722907995699078206             ! 0xf5f7b7020f111bc2
	.quad	24                              ! 0x18
	.long	.L__profc_mempcpy-.L__profd_mempcpy
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_mempcpy, 48

	.type	.L__profc_frexp,@object         ! @__profc_frexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
.L__profc_frexp:
	.zero	72
	.size	.L__profc_frexp, 72

	.type	.L__profd_frexp,@object         ! @__profd_frexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
.L__profd_frexp:
	.quad	-2997169543230593137            ! 0xd667ea2e1c1ee78f
	.quad	-2373782428686282824            ! 0xdf0ea1753c170fb8
	.long	.L__profc_frexp-.L__profd_frexp
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	9                               ! 0x9
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_frexp, 48

	.type	.L__profc___muldi3,@object      ! @__profc___muldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profc___muldi3:
	.zero	24
	.size	.L__profc___muldi3, 24

	.type	.L__profd___muldi3,@object      ! @__profd___muldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profd___muldi3:
	.quad	3987271357918321816             ! 0x3755a22cafcf9c98
	.quad	2320045144                      ! 0x8a491458
	.long	.L__profc___muldi3-.L__profd___muldi3
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___muldi3, 48

	.type	.L__profc_udivmodsi4,@object    ! @__profc_udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profc_udivmodsi4:
	.zero	72
	.size	.L__profc_udivmodsi4, 72

	.type	.L__profd_udivmodsi4,@object    ! @__profd_udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profd_udivmodsi4:
	.quad	4670832108574850701             ! 0x40d2210e3d17be8d
	.quad	842736872197088594              ! 0xbb200b8626e6552
	.long	.L__profc_udivmodsi4-.L__profd_udivmodsi4
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	9                               ! 0x9
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd_udivmodsi4, 48

	.type	.L__profc___clrsbqi2,@object    ! @__profc___clrsbqi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profc___clrsbqi2:
	.zero	24
	.size	.L__profc___clrsbqi2, 24

	.type	.L__profd___clrsbqi2,@object    ! @__profd___clrsbqi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profd___clrsbqi2:
	.quad	-7858138078702729622            ! 0x92f2490d36f4066a
	.quad	187824153796641880              ! 0x29b49129f498458
	.long	.L__profc___clrsbqi2-.L__profd___clrsbqi2
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___clrsbqi2, 48

	.type	.L__profc___clrsbdi2,@object    ! @__profc___clrsbdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profc___clrsbdi2:
	.zero	24
	.size	.L__profc___clrsbdi2, 24

	.type	.L__profd___clrsbdi2,@object    ! @__profd___clrsbdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profd___clrsbdi2:
	.quad	-1533375985051215657            ! 0xeab85aaa6fe858d7
	.quad	187824153796641880              ! 0x29b49129f498458
	.long	.L__profc___clrsbdi2-.L__profd___clrsbdi2
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___clrsbdi2, 48

	.type	.L__profc___mulsi3,@object      ! @__profc___mulsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profc___mulsi3:
	.zero	24
	.size	.L__profc___mulsi3, 24

	.type	.L__profd___mulsi3,@object      ! @__profd___mulsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profd___mulsi3:
	.quad	5127670123023436031             ! 0x472924cf303208ff
	.quad	2320045144                      ! 0x8a491458
	.long	.L__profc___mulsi3-.L__profd___mulsi3
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___mulsi3, 48

	.type	.L__profc___cmovd,@object       ! @__profc___cmovd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profc___cmovd:
	.zero	56
	.size	.L__profc___cmovd, 56

	.type	.L__profd___cmovd,@object       ! @__profd___cmovd
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profd___cmovd:
	.quad	1458405851566781960             ! 0x143d4c6520fd3608
	.quad	-6411111704588201945            ! 0xa70727df48abd027
	.long	.L__profc___cmovd-.L__profd___cmovd
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	7                               ! 0x7
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___cmovd, 48

	.type	.L__profc___cmovh,@object       ! @__profc___cmovh
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profc___cmovh:
	.zero	56
	.size	.L__profc___cmovh, 56

	.type	.L__profd___cmovh,@object       ! @__profd___cmovh
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profd___cmovh:
	.quad	-1240290101804783090            ! 0xeec99ab9477e2a0e
	.quad	3130117398598530023             ! 0x2b706930a0bc33e7
	.long	.L__profc___cmovh-.L__profd___cmovh
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	7                               ! 0x7
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___cmovh, 48

	.type	.L__profc___cmovw,@object       ! @__profc___cmovw
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profc___cmovw:
	.zero	56
	.size	.L__profc___cmovw, 56

	.type	.L__profd___cmovw,@object       ! @__profd___cmovw
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profd___cmovw:
	.quad	-6631700889337257300            ! 0xa3f7772d6a6922ac
	.quad	-6411111704588201945            ! 0xa70727df48abd027
	.long	.L__profc___cmovw-.L__profd___cmovw
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	7                               ! 0x7
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___cmovw, 48

	.type	.L__profc___modi,@object        ! @__profc___modi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
.L__profc___modi:
	.zero	8
	.size	.L__profc___modi, 8

	.type	.L__profd___modi,@object        ! @__profd___modi
	.section	__llvm_prf_data,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
.L__profd___modi:
	.quad	4130297501716739761             ! 0x3951c3b1ce8276b1
	.quad	24                              ! 0x18
	.long	.L__profc___modi-.L__profd___modi
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___modi, 48

	.type	.L__profc___uitod,@object       ! @__profc___uitod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
.L__profc___uitod:
	.zero	8
	.size	.L__profc___uitod, 8

	.type	.L__profd___uitod,@object       ! @__profd___uitod
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
.L__profd___uitod:
	.quad	-3793169221884876252            ! 0xcb5bf4b0949b6a24
	.quad	24                              ! 0x18
	.long	.L__profc___uitod-.L__profd___uitod
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___uitod, 48

	.type	.L__profc___uitof,@object       ! @__profc___uitof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
.L__profc___uitof:
	.zero	8
	.size	.L__profc___uitof, 8

	.type	.L__profd___uitof,@object       ! @__profd___uitof
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
.L__profd___uitof:
	.quad	2684105554667313846             ! 0x253fdbc7ed991ab6
	.quad	24                              ! 0x18
	.long	.L__profc___uitof-.L__profd___uitof
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___uitof, 48

	.type	.L__profc___ulltod,@object      ! @__profc___ulltod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
.L__profc___ulltod:
	.zero	8
	.size	.L__profc___ulltod, 8

	.type	.L__profd___ulltod,@object      ! @__profd___ulltod
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
.L__profd___ulltod:
	.quad	3995277539005434566             ! 0x377213c0fb840ac6
	.quad	24                              ! 0x18
	.long	.L__profc___ulltod-.L__profd___ulltod
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___ulltod, 48

	.type	.L__profc___ulltof,@object      ! @__profc___ulltof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
.L__profc___ulltof:
	.zero	8
	.size	.L__profc___ulltof, 8

	.type	.L__profd___ulltof,@object      ! @__profd___ulltof
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
.L__profd___ulltof:
	.quad	-1906554817873249395            ! 0xe58a8e7e97dafb8d
	.quad	24                              ! 0x18
	.long	.L__profc___ulltof-.L__profd___ulltof
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___ulltof, 48

	.type	.L__profc___umodi,@object       ! @__profc___umodi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
.L__profc___umodi:
	.zero	8
	.size	.L__profc___umodi, 8

	.type	.L__profd___umodi,@object       ! @__profd___umodi
	.section	__llvm_prf_data,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
.L__profd___umodi:
	.quad	6154071623751134202             ! 0x5567a7893fff6bfa
	.quad	24                              ! 0x18
	.long	.L__profc___umodi-.L__profd___umodi
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___umodi, 48

	.type	.L__profc___clzhi2,@object      ! @__profc___clzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profc___clzhi2:
	.zero	24
	.size	.L__profc___clzhi2, 24

	.type	.L__profd___clzhi2,@object      ! @__profd___clzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profd___clzhi2:
	.quad	-9221703320275173474            ! 0x8005edb05af53f9e
	.quad	19458657162328                  ! 0x11b292591458
	.long	.L__profc___clzhi2-.L__profd___clzhi2
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___clzhi2, 48

	.type	.L__profc___ctzhi2,@object      ! @__profc___ctzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profc___ctzhi2:
	.zero	24
	.size	.L__profc___ctzhi2, 24

	.type	.L__profd___ctzhi2,@object      ! @__profd___ctzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profd___ctzhi2:
	.quad	-1569202989881991136            ! 0xea391231d79a6020
	.quad	19458657162328                  ! 0x11b292591458
	.long	.L__profc___ctzhi2-.L__profd___ctzhi2
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___ctzhi2, 48

	.type	.L__profc___fixunssfsi,@object  ! @__profc___fixunssfsi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
.L__profc___fixunssfsi:
	.zero	16
	.size	.L__profc___fixunssfsi, 16

	.type	.L__profd___fixunssfsi,@object  ! @__profd___fixunssfsi
	.section	__llvm_prf_data,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
.L__profd___fixunssfsi:
	.quad	-7800469359816066749            ! 0x93bf2a7226d83943
	.quad	11245552728                     ! 0x29e498458
	.long	.L__profc___fixunssfsi-.L__profd___fixunssfsi
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	2                               ! 0x2
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___fixunssfsi, 48

	.type	.L__profc___parityhi2,@object   ! @__profc___parityhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profc___parityhi2:
	.zero	24
	.size	.L__profc___parityhi2, 24

	.type	.L__profd___parityhi2,@object   ! @__profd___parityhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profd___parityhi2:
	.quad	1203893203113466329             ! 0x10b5167d5f15d9d9
	.quad	304041497688                    ! 0x46ca491458
	.long	.L__profc___parityhi2-.L__profd___parityhi2
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___parityhi2, 48

	.type	.L__profc___popcounthi2,@object ! @__profc___popcounthi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profc___popcounthi2:
	.zero	24
	.size	.L__profc___popcounthi2, 24

	.type	.L__profd___popcounthi2,@object ! @__profd___popcounthi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profd___popcounthi2:
	.quad	3943219574947026310             ! 0x36b9214fb4159586
	.quad	304041497688                    ! 0x46ca491458
	.long	.L__profc___popcounthi2-.L__profd___popcounthi2
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___popcounthi2, 48

	.type	.L__profc___mulsi3_iq2000,@object ! @__profc___mulsi3_iq2000
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profc___mulsi3_iq2000:
	.zero	24
	.size	.L__profc___mulsi3_iq2000, 24

	.type	.L__profd___mulsi3_iq2000,@object ! @__profd___mulsi3_iq2000
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profd___mulsi3_iq2000:
	.quad	-3976353352410196972            ! 0xc8d127b190281414
	.quad	171971253336                    ! 0x280a491458
	.long	.L__profc___mulsi3_iq2000-.L__profd___mulsi3_iq2000
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___mulsi3_iq2000, 48

	.type	.L__profc___mulsi3_lm32,@object ! @__profc___mulsi3_lm32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profc___mulsi3_lm32:
	.zero	32
	.size	.L__profc___mulsi3_lm32, 32

	.type	.L__profd___mulsi3_lm32,@object ! @__profd___mulsi3_lm32
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profd___mulsi3_lm32:
	.quad	2775651425054705869             ! 0x26851843dab148cd
	.quad	-6210685127595396365            ! 0xa9cf36c835dff2f3
	.long	.L__profc___mulsi3_lm32-.L__profd___mulsi3_lm32
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	4                               ! 0x4
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___mulsi3_lm32, 48

	.type	.L__profc___udivmodsi4,@object  ! @__profc___udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profc___udivmodsi4:
	.zero	72
	.size	.L__profc___udivmodsi4, 72

	.type	.L__profd___udivmodsi4,@object  ! @__profd___udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profd___udivmodsi4:
	.quad	-6720389007632434094            ! 0xa2bc61cdbfa0fc52
	.quad	842736872197088594              ! 0xbb200b8626e6552
	.long	.L__profc___udivmodsi4-.L__profd___udivmodsi4
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	9                               ! 0x9
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___udivmodsi4, 48

	.type	.L__profc___mspabi_cmpf,@object ! @__profc___mspabi_cmpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
.L__profc___mspabi_cmpf:
	.zero	24
	.size	.L__profc___mspabi_cmpf, 24

	.type	.L__profd___mspabi_cmpf,@object ! @__profd___mspabi_cmpf
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
.L__profd___mspabi_cmpf:
	.quad	6399771733438470391             ! 0x58d08e7bef2f98f7
	.quad	1352614535537600836             ! 0x12c573c0ecbfa944
	.long	.L__profc___mspabi_cmpf-.L__profd___mspabi_cmpf
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___mspabi_cmpf, 48

	.type	.L__profc___mspabi_cmpd,@object ! @__profc___mspabi_cmpd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
.L__profc___mspabi_cmpd:
	.zero	24
	.size	.L__profc___mspabi_cmpd, 24

	.type	.L__profd___mspabi_cmpd,@object ! @__profd___mspabi_cmpd
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
.L__profd___mspabi_cmpd:
	.quad	-5775354270414500759            ! 0xafd9d1e3e3e88c69
	.quad	1352614535537600836             ! 0x12c573c0ecbfa944
	.long	.L__profc___mspabi_cmpd-.L__profd___mspabi_cmpd
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___mspabi_cmpd, 48

	.type	.L__profc___mspabi_mpysll,@object ! @__profc___mspabi_mpysll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profc___mspabi_mpysll:
	.zero	8
	.size	.L__profc___mspabi_mpysll, 8

	.type	.L__profd___mspabi_mpysll,@object ! @__profd___mspabi_mpysll
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profd___mspabi_mpysll:
	.quad	-359228324547500507             ! 0xfb03c3bdfa166625
	.quad	24                              ! 0x18
	.long	.L__profc___mspabi_mpysll-.L__profd___mspabi_mpysll
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___mspabi_mpysll, 48

	.type	.L__profc___mspabi_mpyull,@object ! @__profc___mspabi_mpyull
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profc___mspabi_mpyull:
	.zero	8
	.size	.L__profc___mspabi_mpyull, 8

	.type	.L__profd___mspabi_mpyull,@object ! @__profd___mspabi_mpyull
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profd___mspabi_mpyull:
	.quad	6629829186354316853             ! 0x5c01e284c62a8635
	.quad	24                              ! 0x18
	.long	.L__profc___mspabi_mpyull-.L__profd___mspabi_mpyull
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___mspabi_mpyull, 48

	.type	.L__profc___mulhi3,@object      ! @__profc___mulhi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profc___mulhi3:
	.zero	56
	.size	.L__profc___mulhi3, 56

	.type	.L__profd___mulhi3,@object      ! @__profd___mulhi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profd___mulhi3:
	.quad	-4671748085078636676            ! 0xbf2a9dde5cc6c77c
	.quad	-5374843387156864121            ! 0xb568b86aa1286387
	.long	.L__profc___mulhi3-.L__profd___mulhi3
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	7                               ! 0x7
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___mulhi3, 48

	.type	.L__profc___divsi3,@object      ! @__profc___divsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profc___divsi3:
	.zero	32
	.size	.L__profc___divsi3, 32

	.type	.L__profd___divsi3,@object      ! @__profd___divsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profd___divsi3:
	.quad	5631431475223784324             ! 0x4e26dd1711aaeb84
	.quad	510575534943447681              ! 0x715edbe6f4f2a81
	.long	.L__profc___divsi3-.L__profd___divsi3
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	4                               ! 0x4
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___divsi3, 48

	.type	.L__profc___modsi3,@object      ! @__profc___modsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profc___modsi3:
	.zero	32
	.size	.L__profc___modsi3, 32

	.type	.L__profd___modsi3,@object      ! @__profd___modsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profd___modsi3:
	.quad	-8995696579390192574            ! 0x8328dd9f4e404442
	.quad	2121116644152358499             ! 0x1d6fb85985deb663
	.long	.L__profc___modsi3-.L__profd___modsi3
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	4                               ! 0x4
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___modsi3, 48

	.type	.L__profc___udivmodhi4,@object  ! @__profc___udivmodhi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profc___udivmodhi4:
	.zero	72
	.size	.L__profc___udivmodhi4, 72

	.type	.L__profd___udivmodhi4,@object  ! @__profd___udivmodhi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profd___udivmodhi4:
	.quad	2241631039268115874             ! 0x1f1bdf8db510d5a2
	.quad	842736872197088594              ! 0xbb200b8626e6552
	.long	.L__profc___udivmodhi4-.L__profd___udivmodhi4
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	9                               ! 0x9
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___udivmodhi4, 48

	.type	.L__profc___udivmodsi4_libgcc,@object ! @__profc___udivmodsi4_libgcc
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profc___udivmodsi4_libgcc:
	.zero	72
	.size	.L__profc___udivmodsi4_libgcc, 72

	.type	.L__profd___udivmodsi4_libgcc,@object ! @__profd___udivmodsi4_libgcc
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profd___udivmodsi4_libgcc:
	.quad	-1484205535638993157            ! 0xeb670aedd291c6fb
	.quad	842736872197088594              ! 0xbb200b8626e6552
	.long	.L__profc___udivmodsi4_libgcc-.L__profd___udivmodsi4_libgcc
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	9                               ! 0x9
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___udivmodsi4_libgcc, 48

	.type	.L__profc___ashldi3,@object     ! @__profc___ashldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profc___ashldi3:
	.zero	24
	.size	.L__profc___ashldi3, 24

	.type	.L__profd___ashldi3,@object     ! @__profd___ashldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profd___ashldi3:
	.quad	3719210884952086607             ! 0x339d4a983a55d84f
	.quad	185294818348438616              ! 0x2924ca7d2611458
	.long	.L__profc___ashldi3-.L__profd___ashldi3
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___ashldi3, 48

	.type	.L__profc___ashrdi3,@object     ! @__profc___ashrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profc___ashrdi3:
	.zero	24
	.size	.L__profc___ashrdi3, 24

	.type	.L__profd___ashrdi3,@object     ! @__profd___ashrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profd___ashrdi3:
	.quad	-1855717345837424946            ! 0xe63f2ae7edd45ece
	.quad	185294818348438616              ! 0x2924ca7d2611458
	.long	.L__profc___ashrdi3-.L__profd___ashrdi3
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___ashrdi3, 48

	.type	.L__profc___bswapdi2,@object    ! @__profc___bswapdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profc___bswapdi2:
	.zero	8
	.size	.L__profc___bswapdi2, 8

	.type	.L__profd___bswapdi2,@object    ! @__profd___bswapdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profd___bswapdi2:
	.quad	9149352740892555196             ! 0x7ef907d7ada5b7bc
	.quad	24                              ! 0x18
	.long	.L__profc___bswapdi2-.L__profd___bswapdi2
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___bswapdi2, 48

	.type	.L__profc___bswapsi2,@object    ! @__profc___bswapsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profc___bswapsi2:
	.zero	8
	.size	.L__profc___bswapsi2, 8

	.type	.L__profd___bswapsi2,@object    ! @__profd___bswapsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profd___bswapsi2:
	.quad	-3374945843358245974            ! 0xd129c8a2fe735baa
	.quad	24                              ! 0x18
	.long	.L__profc___bswapsi2-.L__profd___bswapsi2
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___bswapsi2, 48

	.type	.L__profc___clzsi2,@object      ! @__profc___clzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profc___clzsi2:
	.zero	8
	.size	.L__profc___clzsi2, 8

	.type	.L__profd___clzsi2,@object      ! @__profd___clzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profd___clzsi2:
	.quad	1382681549752930563             ! 0x1330458b32829103
	.quad	33814345247                     ! 0x7df7df61f
	.long	.L__profc___clzsi2-.L__profd___clzsi2
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___clzsi2, 48

	.type	.L__profc___cmpdi2,@object      ! @__profc___cmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profc___cmpdi2:
	.zero	40
	.size	.L__profc___cmpdi2, 40

	.type	.L__profd___cmpdi2,@object      ! @__profd___cmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profd___cmpdi2:
	.quad	-5499644794300757496            ! 0xb3ad5632ace08a08
	.quad	-7406659272189927428            ! 0x993642a254c41ffc
	.long	.L__profc___cmpdi2-.L__profd___cmpdi2
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	5                               ! 0x5
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___cmpdi2, 48

	.type	.L__profc___aeabi_lcmp,@object  ! @__profc___aeabi_lcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profc___aeabi_lcmp:
	.zero	8
	.size	.L__profc___aeabi_lcmp, 8

	.type	.L__profd___aeabi_lcmp,@object  ! @__profd___aeabi_lcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profd___aeabi_lcmp:
	.quad	7067747365298492588             ! 0x6215aec83ed1d4ac
	.quad	24                              ! 0x18
	.long	.L__profc___aeabi_lcmp-.L__profd___aeabi_lcmp
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___aeabi_lcmp, 48

	.type	.L__profc___ctzsi2,@object      ! @__profc___ctzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profc___ctzsi2:
	.zero	8
	.size	.L__profc___ctzsi2, 8

	.type	.L__profd___ctzsi2,@object      ! @__profd___ctzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profd___ctzsi2:
	.quad	-5501728155980453225            ! 0xb3a5ef643c052a97
	.quad	33814345247                     ! 0x7df7df61f
	.long	.L__profc___ctzsi2-.L__profd___ctzsi2
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___ctzsi2, 48

	.type	.L__profc___lshrdi3,@object     ! @__profc___lshrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profc___lshrdi3:
	.zero	24
	.size	.L__profc___lshrdi3, 24

	.type	.L__profd___lshrdi3,@object     ! @__profd___lshrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profd___lshrdi3:
	.quad	10441766047587925               ! 0x2518bb1c181e55
	.quad	185294818348438616              ! 0x2924ca7d2611458
	.long	.L__profc___lshrdi3-.L__profd___lshrdi3
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	3                               ! 0x3
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___lshrdi3, 48

	.type	.L__profc___muldsi3,@object     ! @__profc___muldsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profc___muldsi3:
	.zero	8
	.size	.L__profc___muldsi3, 8

	.type	.L__profd___muldsi3,@object     ! @__profd___muldsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profd___muldsi3:
	.quad	4756674255824047264             ! 0x42031a08a2a34ca0
	.quad	24                              ! 0x18
	.long	.L__profc___muldsi3-.L__profd___muldsi3
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___muldsi3, 48

	.type	.L__profc___muldi3_compiler_rt,@object ! @__profc___muldi3_compiler_rt
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profc___muldi3_compiler_rt:
	.zero	8
	.size	.L__profc___muldi3_compiler_rt, 8

	.type	.L__profd___muldi3_compiler_rt,@object ! @__profd___muldi3_compiler_rt
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profd___muldi3_compiler_rt:
	.quad	-737717619142303851             ! 0xf5c319bbe679df95
	.quad	24                              ! 0x18
	.long	.L__profc___muldi3_compiler_rt-.L__profd___muldi3_compiler_rt
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___muldi3_compiler_rt, 48

	.type	.L__profc___negdi2,@object      ! @__profc___negdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profc___negdi2:
	.zero	8
	.size	.L__profc___negdi2, 8

	.type	.L__profd___negdi2,@object      ! @__profd___negdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profd___negdi2:
	.quad	-2796404983763388037            ! 0xd9312c7bb6a6b97b
	.quad	24                              ! 0x18
	.long	.L__profc___negdi2-.L__profd___negdi2
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___negdi2, 48

	.type	.L__profc___paritydi2,@object   ! @__profc___paritydi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profc___paritydi2:
	.zero	8
	.size	.L__profc___paritydi2, 8

	.type	.L__profd___paritydi2,@object   ! @__profd___paritydi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profd___paritydi2:
	.quad	-5102883611502574357            ! 0xb92eea643e3a04eb
	.quad	24                              ! 0x18
	.long	.L__profc___paritydi2-.L__profd___paritydi2
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___paritydi2, 48

	.type	.L__profc___paritysi2,@object   ! @__profc___paritysi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profc___paritysi2:
	.zero	8
	.size	.L__profc___paritysi2, 8

	.type	.L__profd___paritysi2,@object   ! @__profd___paritysi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profd___paritysi2:
	.quad	8495812714014201054             ! 0x75e730a6911054de
	.quad	24                              ! 0x18
	.long	.L__profc___paritysi2-.L__profd___paritysi2
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___paritysi2, 48

	.type	.L__profc___popcountdi2,@object ! @__profc___popcountdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profc___popcountdi2:
	.zero	8
	.size	.L__profc___popcountdi2, 8

	.type	.L__profd___popcountdi2,@object ! @__profd___popcountdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profd___popcountdi2:
	.quad	4342496508124198892             ! 0x3c43a5910d1df7ec
	.quad	24                              ! 0x18
	.long	.L__profc___popcountdi2-.L__profd___popcountdi2
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___popcountdi2, 48

	.type	.L__profc___popcountsi2,@object ! @__profc___popcountsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profc___popcountsi2:
	.zero	8
	.size	.L__profc___popcountsi2, 8

	.type	.L__profd___popcountsi2,@object ! @__profd___popcountsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profd___popcountsi2:
	.quad	-2149276146439341705            ! 0xe22c3cbb6f433977
	.quad	24                              ! 0x18
	.long	.L__profc___popcountsi2-.L__profd___popcountsi2
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___popcountsi2, 48

	.type	.L__profc___powidf2,@object     ! @__profc___powidf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
.L__profc___powidf2:
	.zero	40
	.size	.L__profc___powidf2, 40

	.type	.L__profd___powidf2,@object     ! @__profd___powidf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
.L__profd___powidf2:
	.quad	-1752541073601039051            ! 0xe7adb92dcdba7535
	.quad	-4868838055443737378            ! 0xbc6e6995b45f54de
	.long	.L__profc___powidf2-.L__profd___powidf2
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	5                               ! 0x5
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___powidf2, 48

	.type	.L__profc___powisf2,@object     ! @__profc___powisf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
.L__profc___powisf2:
	.zero	40
	.size	.L__profc___powisf2, 40

	.type	.L__profd___powisf2,@object     ! @__profd___powisf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
.L__profd___powisf2:
	.quad	-3807360110918407144            ! 0xcb298a26c0b76c18
	.quad	-4868838055443737378            ! 0xbc6e6995b45f54de
	.long	.L__profc___powisf2-.L__profd___powisf2
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	5                               ! 0x5
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___powisf2, 48

	.type	.L__profc___ucmpdi2,@object     ! @__profc___ucmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profc___ucmpdi2:
	.zero	40
	.size	.L__profc___ucmpdi2, 40

	.type	.L__profd___ucmpdi2,@object     ! @__profd___ucmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profd___ucmpdi2:
	.quad	-2044349310657886323            ! 0xe3a10322256c078d
	.quad	-7406659272189927428            ! 0x993642a254c41ffc
	.long	.L__profc___ucmpdi2-.L__profd___ucmpdi2
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	5                               ! 0x5
	.zero	6
	.zero	2
	.long	0                               ! 0x0
	.size	.L__profd___ucmpdi2, 48

	.type	.L__profc___aeabi_ulcmp,@object ! @__profc___aeabi_ulcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profc___aeabi_ulcmp:
	.zero	8
	.size	.L__profc___aeabi_ulcmp, 8

	.type	.L__profd___aeabi_ulcmp,@object ! @__profd___aeabi_ulcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profd___aeabi_ulcmp:
	.quad	448670595368434735              ! 0x639ff8782193c2f
	.quad	24                              ! 0x18
	.long	.L__profc___aeabi_ulcmp-.L__profd___aeabi_ulcmp
	.long	0                               ! 0x0
	.long	0
	.long	0
	.long	1                               ! 0x1
	.zero	6
	.zero	2
	.long	0                               ! 0x0
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
