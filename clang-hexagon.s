	.text
	.attribute	4, 5	// Tag_arch
	.attribute	10, 1	// Tag_cabac
	.file	"mini-libc.c"
	.globl	memmove                         // -- Begin function memmove
	.p2align	4
	.type	memmove,@function
memmove:                                // @memmove
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r1 = memw(r30+#-20)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB0_6
	}
	{
		jump .LBB0_1
	}
.LBB0_1:
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		jump .LBB0_2
	}
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB0_5
	}
	{
		jump .LBB0_3
	}
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		r1 = add(r0,#-1)
	}
	{
		memw(r30+#-20) = r1
	}
	{
		r1 = memub(r0+#-1)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r2 = add(r0,#-1)
	}
	{
		memw(r30+#-16) = r2
	}
	{
		memb(r0+#-1) = r1
	}
	{
		jump .LBB0_4
	}
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB0_2
	}
.LBB0_5:
	{
		jump .LBB0_13
	}
.LBB0_6:
	{
		r0 = memw(r30+#-20)
	}
	{
		r1 = memw(r30+#-16)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		if (p0) jump:nt .LBB0_12
	}
	{
		jump .LBB0_7
	}
.LBB0_7:
	{
		jump .LBB0_8
	}
.LBB0_8:                                // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB0_11
	}
	{
		jump .LBB0_9
	}
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		r1 = add(r0,#1)
	}
	{
		memw(r30+#-20) = r1
	}
	{
		r1 = memub(r0+#0)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r2 = add(r0,#1)
	}
	{
		memw(r30+#-16) = r2
	}
	{
		memb(r0+#0) = r1
	}
	{
		jump .LBB0_10
	}
.LBB0_10:                               //   in Loop: Header=BB0_8 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB0_8
	}
.LBB0_11:
	{
		jump .LBB0_12
	}
.LBB0_12:
	{
		jump .LBB0_13
	}
.LBB0_13:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end0:
	.size	memmove, .Lfunc_end0-memmove
                                        // -- End function
	.globl	memccpy                         // -- Begin function memccpy
	.p2align	4
	.type	memccpy,@function
memccpy:                                // @memccpy
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		memw(r30+#-16) = r2
	}
	{
		memw(r30+#-20) = r3
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-24) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r30+#-28) = r0
	}
	{
		r0 = memub(r30+#-16)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		jump .LBB1_1
	}
.LBB1_1:                                // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-32) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB1_3
	}
	{
		jump .LBB1_2
	}
.LBB1_2:                                //   in Loop: Header=BB1_1 Depth=1
	{
		r0 = memw(r30+#-28)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		r1 = memw(r30+#-24)
	}
	{
		memb(r1+#0) = r0
	}
	{
		r1 = memw(r30+#-16)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-32) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB1_3
	}
.LBB1_3:                                //   in Loop: Header=BB1_1 Depth=1
	{
		r0 = memw(r30+#-32)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB1_6
	}
	{
		jump .LBB1_4
	}
.LBB1_4:                                //   in Loop: Header=BB1_1 Depth=1
	{
		jump .LBB1_5
	}
.LBB1_5:                                //   in Loop: Header=BB1_1 Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memw(r30+#-28)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-28) = r0
	}
	{
		r0 = memw(r30+#-24)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-24) = r0
	}
	{
		jump .LBB1_1
	}
.LBB1_6:
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB1_8
	}
	{
		jump .LBB1_7
	}
.LBB1_7:
	{
		r0 = memw(r30+#-24)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB1_9
	}
.LBB1_8:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB1_9
	}
.LBB1_9:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end1:
	.size	memccpy, .Lfunc_end1-memccpy
                                        // -- End function
	.globl	memchr                          // -- Begin function memchr
	.p2align	4
	.type	memchr,@function
memchr:                                 // @memchr
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memub(r30+#-8)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB2_1
	}
.LBB2_1:                                // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB2_3
	}
	{
		jump .LBB2_2
	}
.LBB2_2:                                //   in Loop: Header=BB2_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB2_3
	}
.LBB2_3:                                //   in Loop: Header=BB2_1 Depth=1
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB2_6
	}
	{
		jump .LBB2_4
	}
.LBB2_4:                                //   in Loop: Header=BB2_1 Depth=1
	{
		jump .LBB2_5
	}
.LBB2_5:                                //   in Loop: Header=BB2_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB2_1
	}
.LBB2_6:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB2_8
	}
	{
		jump .LBB2_7
	}
.LBB2_7:
	{
		r0 = memw(r30+#-16)
	}
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB2_9
	}
.LBB2_8:
	{
		r0 = #0
	}
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB2_9
	}
.LBB2_9:
	{
		r0 = memw(r30+#-24)
	}                                       // 4-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end2:
	.size	memchr, .Lfunc_end2-memchr
                                        // -- End function
	.globl	memcmp                          // -- Begin function memcmp
	.p2align	4
	.type	memcmp,@function
memcmp:                                 // @memcmp
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		jump .LBB3_1
	}
.LBB3_1:                                // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB3_3
	}
	{
		jump .LBB3_2
	}
.LBB3_2:                                //   in Loop: Header=BB3_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		r1 = memw(r30+#-20)
	}
	{
		r1 = memub(r1+#0)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB3_3
	}
.LBB3_3:                                //   in Loop: Header=BB3_1 Depth=1
	{
		r0 = memw(r30+#-24)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB3_6
	}
	{
		jump .LBB3_4
	}
.LBB3_4:                                //   in Loop: Header=BB3_1 Depth=1
	{
		jump .LBB3_5
	}
.LBB3_5:                                //   in Loop: Header=BB3_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		jump .LBB3_1
	}
.LBB3_6:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB3_8
	}
	{
		jump .LBB3_7
	}
.LBB3_7:
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		r1 = memw(r30+#-20)
	}
	{
		r1 = memub(r1+#0)
	}
	{
		r0 = sub(r0,r1)
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB3_9
	}
.LBB3_8:
	{
		r0 = #0
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB3_9
	}
.LBB3_9:
	{
		r0 = memw(r30+#-28)
	}                                       // 4-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end3:
	.size	memcmp, .Lfunc_end3-memcmp
                                        // -- End function
	.globl	memcpy                          // -- Begin function memcpy
	.p2align	4
	.type	memcpy,@function
memcpy:                                 // @memcpy
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		jump .LBB4_1
	}
.LBB4_1:                                // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB4_4
	}
	{
		jump .LBB4_2
	}
.LBB4_2:                                //   in Loop: Header=BB4_1 Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		r1 = add(r0,#1)
	}
	{
		memw(r30+#-20) = r1
	}
	{
		r1 = memub(r0+#0)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r2 = add(r0,#1)
	}
	{
		memw(r30+#-16) = r2
	}
	{
		memb(r0+#0) = r1
	}
	{
		jump .LBB4_3
	}
.LBB4_3:                                //   in Loop: Header=BB4_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB4_1
	}
.LBB4_4:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end4:
	.size	memcpy, .Lfunc_end4-memcpy
                                        // -- End function
	.globl	memrchr                         // -- Begin function memrchr
	.p2align	4
	.type	memrchr,@function
memrchr:                                // @memrchr
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		memw(r30+#-16) = r2
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memub(r30+#-12)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB5_1
	}
.LBB5_1:                                // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		r1 = add(r0,#-1)
	}
	{
		memw(r30+#-16) = r1
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB5_5
	}
	{
		jump .LBB5_2
	}
.LBB5_2:                                //   in Loop: Header=BB5_1 Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		r1 = memw(r30+#-16)
	}
	{
		r0 = memub(r0+r1<<#0)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB5_4
	}
	{
		jump .LBB5_3
	}
.LBB5_3:
	{
		r0 = memw(r30+#-20)
	}
	{
		r1 = memw(r30+#-16)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB5_6
	}
.LBB5_4:                                //   in Loop: Header=BB5_1 Depth=1
	{
		jump .LBB5_1
	}
.LBB5_5:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB5_6
	}
.LBB5_6:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end5:
	.size	memrchr, .Lfunc_end5-memrchr
                                        // -- End function
	.globl	memset                          // -- Begin function memset
	.p2align	4
	.type	memset,@function
memset:                                 // @memset
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		jump .LBB6_1
	}
.LBB6_1:                                // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB6_4
	}
	{
		jump .LBB6_2
	}
.LBB6_2:                                //   in Loop: Header=BB6_1 Depth=1
	{
		r1 = memw(r30+#-8)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		memb(r0+#0) = r1
	}
	{
		jump .LBB6_3
	}
.LBB6_3:                                //   in Loop: Header=BB6_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		jump .LBB6_1
	}
.LBB6_4:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end6:
	.size	memset, .Lfunc_end6-memset
                                        // -- End function
	.globl	stpcpy                          // -- Begin function stpcpy
	.p2align	4
	.type	stpcpy,@function
stpcpy:                                 // @stpcpy
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		jump .LBB7_1
	}
.LBB7_1:                                // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = memb(r0+#0)
	}
	{
		r1 = memw(r30+#-4)
	}
	{
		memb(r1+#0) = r0
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB7_4
	}
	{
		jump .LBB7_2
	}
.LBB7_2:                                //   in Loop: Header=BB7_1 Depth=1
	{
		jump .LBB7_3
	}
.LBB7_3:                                //   in Loop: Header=BB7_1 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB7_1
	}
.LBB7_4:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end7:
	.size	stpcpy, .Lfunc_end7-stpcpy
                                        // -- End function
	.globl	strchrnul                       // -- Begin function strchrnul
	.p2align	4
	.type	strchrnul,@function
strchrnul:                              // @strchrnul
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = memub(r30+#-8)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB8_1
	}
.LBB8_1:                                // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memb(r0+#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB8_3
	}
	{
		jump .LBB8_2
	}
.LBB8_2:                                //   in Loop: Header=BB8_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB8_3
	}
.LBB8_3:                                //   in Loop: Header=BB8_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB8_6
	}
	{
		jump .LBB8_4
	}
.LBB8_4:                                //   in Loop: Header=BB8_1 Depth=1
	{
		jump .LBB8_5
	}
.LBB8_5:                                //   in Loop: Header=BB8_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB8_1
	}
.LBB8_6:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end8:
	.size	strchrnul, .Lfunc_end8-strchrnul
                                        // -- End function
	.globl	strchr                          // -- Begin function strchr
	.p2align	4
	.type	strchr,@function
strchr:                                 // @strchr
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		jump .LBB9_1
	}
.LBB9_1:                                // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB9_3
	}
	{
		jump .LBB9_2
	}
.LBB9_2:
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB9_6
	}
.LBB9_3:                                //   in Loop: Header=BB9_1 Depth=1
	{
		jump .LBB9_4
	}
.LBB9_4:                                //   in Loop: Header=BB9_1 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = add(r0,#1)
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = memb(r0+#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB9_1
	}
	{
		jump .LBB9_5
	}
.LBB9_5:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB9_6
	}
.LBB9_6:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end9:
	.size	strchr, .Lfunc_end9-strchr
                                        // -- End function
	.globl	strcmp                          // -- Begin function strcmp
	.p2align	4
	.type	strcmp,@function
strcmp:                                 // @strcmp
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		jump .LBB10_1
	}
.LBB10_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		r1 = memub(r1+#0)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB10_3
	}
	{
		jump .LBB10_2
	}
.LBB10_2:                               //   in Loop: Header=BB10_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memb(r0+#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB10_3
	}
.LBB10_3:                               //   in Loop: Header=BB10_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB10_6
	}
	{
		jump .LBB10_4
	}
.LBB10_4:                               //   in Loop: Header=BB10_1 Depth=1
	{
		jump .LBB10_5
	}
.LBB10_5:                               //   in Loop: Header=BB10_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB10_1
	}
.LBB10_6:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		r1 = memub(r1+#0)
	}
	{
		r0 = sub(r0,r1)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end10:
	.size	strcmp, .Lfunc_end10-strcmp
                                        // -- End function
	.globl	strlen                          // -- Begin function strlen
	.p2align	4
	.type	strlen,@function
strlen:                                 // @strlen
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB11_1
	}
.LBB11_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memb(r0+#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB11_4
	}
	{
		jump .LBB11_2
	}
.LBB11_2:                               //   in Loop: Header=BB11_1 Depth=1
	{
		jump .LBB11_3
	}
.LBB11_3:                               //   in Loop: Header=BB11_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB11_1
	}
.LBB11_4:
	{
		r0 = memw(r30+#-4)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		r0 = sub(r0,r1)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end11:
	.size	strlen, .Lfunc_end11-strlen
                                        // -- End function
	.globl	strncmp                         // -- Begin function strncmp
	.p2align	4
	.type	strncmp,@function
strncmp:                                // @strncmp
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		memw(r30+#-16) = r2
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r30+#-24) = r0
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r1 = add(r0,#-1)
	}
	{
		memw(r30+#-16) = r1
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB12_2
	}
	{
		jump .LBB12_1
	}
.LBB12_1:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB12_11
	}
.LBB12_2:
	{
		jump .LBB12_3
	}
.LBB12_3:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = memb(r0+#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB12_7
	}
	{
		jump .LBB12_4
	}
.LBB12_4:                               //   in Loop: Header=BB12_3 Depth=1
	{
		r0 = memw(r30+#-24)
	}
	{
		r0 = memb(r0+#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB12_7
	}
	{
		jump .LBB12_5
	}
.LBB12_5:                               //   in Loop: Header=BB12_3 Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB12_7
	}
	{
		jump .LBB12_6
	}
.LBB12_6:                               //   in Loop: Header=BB12_3 Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		r1 = memw(r30+#-24)
	}
	{
		r1 = memub(r1+#0)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB12_7
	}
.LBB12_7:                               //   in Loop: Header=BB12_3 Depth=1
	{
		r0 = memw(r30+#-28)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB12_10
	}
	{
		jump .LBB12_8
	}
.LBB12_8:                               //   in Loop: Header=BB12_3 Depth=1
	{
		jump .LBB12_9
	}
.LBB12_9:                               //   in Loop: Header=BB12_3 Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memw(r30+#-24)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-24) = r0
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		jump .LBB12_3
	}
.LBB12_10:
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		r1 = memw(r30+#-24)
	}
	{
		r1 = memub(r1+#0)
	}
	{
		r0 = sub(r0,r1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB12_11
	}
.LBB12_11:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end12:
	.size	strncmp, .Lfunc_end12-strncmp
                                        // -- End function
	.globl	swab                            // -- Begin function swab
	.p2align	4
	.type	swab,@function
swab:                                   // @swab
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		jump .LBB13_1
	}
.LBB13_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.gt(r0,#1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB13_4
	}
	{
		jump .LBB13_2
	}
.LBB13_2:                               //   in Loop: Header=BB13_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		r1 = memub(r0+#1)
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		memb(r0+#0) = r1
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r1 = memub(r0+#0)
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		memb(r0+#1) = r1
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = add(r0,#2)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = add(r0,#2)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		jump .LBB13_3
	}
.LBB13_3:                               //   in Loop: Header=BB13_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#-2)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB13_1
	}
.LBB13_4:
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end13:
	.size	swab, .Lfunc_end13-swab
                                        // -- End function
	.globl	isalpha                         // -- Begin function isalpha
	.p2align	4
	.type	isalpha,@function
isalpha:                                // @isalpha
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = setbit(r0,#5)
	}
	{
		r0 = add(r0,#-97)
	}
	{
		p0 = cmp.gtu(r0,#25)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = mux(p0,#1,#0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end14:
	.size	isalpha, .Lfunc_end14-isalpha
                                        // -- End function
	.globl	isascii                         // -- Begin function isascii
	.p2align	4
	.type	isascii,@function
isascii:                                // @isascii
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = and(r0,#-128)
	}
	{
		r0 = cmp.eq(r0,#0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end15:
	.size	isascii, .Lfunc_end15-isascii
                                        // -- End function
	.globl	isblank                         // -- Begin function isblank
	.p2align	4
	.type	isblank,@function
isblank:                                // @isblank
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		p0 = cmp.eq(r0,#32)
	}
	{
		p1 = or(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB16_2
	}
	{
		jump .LBB16_1
	}
.LBB16_1:
	{
		r0 = memw(r30+#-4)
	}
	{
		p0 = cmp.eq(r0,#9)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB16_2
	}
.LBB16_2:
	{
		r0 = memw(r30+#-8)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r0 = mux(p0,#1,#0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end16:
	.size	isblank, .Lfunc_end16-isblank
                                        // -- End function
	.globl	iscntrl                         // -- Begin function iscntrl
	.p2align	4
	.type	iscntrl,@function
iscntrl:                                // @iscntrl
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		p0 = cmp.gtu(r0,#31)
	}
	{
		p0 = not(p0)
	}
	{
		p1 = or(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB17_2
	}
	{
		jump .LBB17_1
	}
.LBB17_1:
	{
		r0 = memw(r30+#-4)
	}
	{
		p0 = cmp.eq(r0,#127)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB17_2
	}
.LBB17_2:
	{
		r0 = memw(r30+#-8)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r0 = mux(p0,#1,#0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end17:
	.size	iscntrl, .Lfunc_end17-iscntrl
                                        // -- End function
	.globl	isdigit                         // -- Begin function isdigit
	.p2align	4
	.type	isdigit,@function
isdigit:                                // @isdigit
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#-48)
	}
	{
		p0 = cmp.gtu(r0,#9)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = mux(p0,#1,#0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end18:
	.size	isdigit, .Lfunc_end18-isdigit
                                        // -- End function
	.globl	isgraph                         // -- Begin function isgraph
	.p2align	4
	.type	isgraph,@function
isgraph:                                // @isgraph
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#-33)
	}
	{
		p0 = cmp.gtu(r0,#93)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = mux(p0,#1,#0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end19:
	.size	isgraph, .Lfunc_end19-isgraph
                                        // -- End function
	.globl	islower                         // -- Begin function islower
	.p2align	4
	.type	islower,@function
islower:                                // @islower
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#-97)
	}
	{
		p0 = cmp.gtu(r0,#25)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = mux(p0,#1,#0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end20:
	.size	islower, .Lfunc_end20-islower
                                        // -- End function
	.globl	isprint                         // -- Begin function isprint
	.p2align	4
	.type	isprint,@function
isprint:                                // @isprint
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#-32)
	}
	{
		p0 = cmp.gtu(r0,#94)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = mux(p0,#1,#0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end21:
	.size	isprint, .Lfunc_end21-isprint
                                        // -- End function
	.globl	isspace                         // -- Begin function isspace
	.p2align	4
	.type	isspace,@function
isspace:                                // @isspace
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		p0 = cmp.eq(r0,#32)
	}
	{
		p1 = or(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB22_2
	}
	{
		jump .LBB22_1
	}
.LBB22_1:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#-9)
	}
	{
		p0 = cmp.gtu(r0,#4)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB22_2
	}
.LBB22_2:
	{
		r0 = memw(r30+#-8)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r0 = mux(p0,#1,#0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end22:
	.size	isspace, .Lfunc_end22-isspace
                                        // -- End function
	.globl	isupper                         // -- Begin function isupper
	.p2align	4
	.type	isupper,@function
isupper:                                // @isupper
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#-65)
	}
	{
		p0 = cmp.gtu(r0,#25)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = mux(p0,#1,#0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end23:
	.size	isupper, .Lfunc_end23-isupper
                                        // -- End function
	.globl	iswcntrl                        // -- Begin function iswcntrl
	.p2align	4
	.type	iswcntrl,@function
iswcntrl:                               // @iswcntrl
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		p0 = cmp.gtu(r0,#31)
	}
	{
		p0 = not(p0)
	}
	{
		p1 = or(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB24_4
	}
	{
		jump .LBB24_1
	}
.LBB24_1:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#-127)
	}
	{
		p0 = cmp.gtu(r0,#32)
	}
	{
		p0 = not(p0)
	}
	{
		p1 = or(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB24_4
	}
	{
		jump .LBB24_2
	}
.LBB24_2:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#-8232)
	}
	{
		p0 = cmp.gtu(r0,#1)
	}
	{
		p0 = not(p0)
	}
	{
		p1 = or(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB24_4
	}
	{
		jump .LBB24_3
	}
.LBB24_3:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,##-65529)
	}
	{
		p0 = cmp.gtu(r0,#2)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB24_4
	}
.LBB24_4:
	{
		r0 = memw(r30+#-8)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r0 = mux(p0,#1,#0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end24:
	.size	iswcntrl, .Lfunc_end24-iswcntrl
                                        // -- End function
	.globl	iswdigit                        // -- Begin function iswdigit
	.p2align	4
	.type	iswdigit,@function
iswdigit:                               // @iswdigit
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#-48)
	}
	{
		p0 = cmp.gtu(r0,#9)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = mux(p0,#1,#0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end25:
	.size	iswdigit, .Lfunc_end25-iswdigit
                                        // -- End function
	.globl	iswprint                        // -- Begin function iswprint
	.p2align	4
	.type	iswprint,@function
iswprint:                               // @iswprint
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.gtu(r0,#254)
	}
	{
		if (p0) jump:nt .LBB26_2
	}
	{
		jump .LBB26_1
	}
.LBB26_1:
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = add(r0,#1)
	}
	{
		r0 = and(r0,#127)
	}
	{
		p0 = cmp.gt(r0,#32)
	}
	{
		r0 = mux(p0,#1,#0)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB26_10
	}
.LBB26_2:
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.gtu(r0,##8231)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB26_5
	}
	{
		jump .LBB26_3
	}
.LBB26_3:
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = add(r0,#-8234)
	}
	{
		p0 = cmp.gtu(r0,##47061)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB26_5
	}
	{
		jump .LBB26_4
	}
.LBB26_4:
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = add(r0,##-57344)
	}
	{
		p0 = cmp.gtu(r0,##8184)
	}
	{
		if (p0) jump:nt .LBB26_6
	}
	{
		jump .LBB26_5
	}
.LBB26_5:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #1
	}
	{
		jump .LBB26_10
	}
.LBB26_6:
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = add(r0,##-65532)
	}
	{
		p0 = cmp.gtu(r0,##1048579)
	}
	{
		if (p0) jump:nt .LBB26_8
	}
	{
		jump .LBB26_7
	}
.LBB26_7:
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = and(r0,##65534)
	}
	{
		p0 = cmp.eq(r0,##65534)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB26_9
	}
	{
		jump .LBB26_8
	}
.LBB26_8:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB26_10
	}
.LBB26_9:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #1
	}
	{
		jump .LBB26_10
	}
.LBB26_10:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end26:
	.size	iswprint, .Lfunc_end26-iswprint
                                        // -- End function
	.globl	iswxdigit                       // -- Begin function iswxdigit
	.p2align	4
	.type	iswxdigit,@function
iswxdigit:                              // @iswxdigit
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#-48)
	}
	{
		p0 = cmp.gtu(r0,#9)
	}
	{
		p0 = not(p0)
	}
	{
		p1 = or(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB27_2
	}
	{
		jump .LBB27_1
	}
.LBB27_1:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = setbit(r0,#5)
	}
	{
		r0 = add(r0,#-97)
	}
	{
		p0 = cmp.gtu(r0,#5)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB27_2
	}
.LBB27_2:
	{
		r0 = memw(r30+#-8)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r0 = mux(p0,#1,#0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end27:
	.size	iswxdigit, .Lfunc_end27-iswxdigit
                                        // -- End function
	.globl	toascii                         // -- Begin function toascii
	.p2align	4
	.type	toascii,@function
toascii:                                // @toascii
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = and(r0,#127)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end28:
	.size	toascii, .Lfunc_end28-toascii
                                        // -- End function
	.globl	fdim                            // -- Begin function fdim
	.p2align	4
	.type	fdim,@function
fdim:                                   // @fdim
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		memd(r30+#-24) = r3:2
	}
	{
		r1:0 = memd(r30+#-16)
	}
	{
		p0 = dfcmp.uo(r1:0,r1:0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB29_2
	}
	{
		jump .LBB29_1
	}
.LBB29_1:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB29_8
	}
.LBB29_2:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		p0 = dfcmp.uo(r1:0,r1:0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB29_4
	}
	{
		jump .LBB29_3
	}
.LBB29_3:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB29_8
	}
.LBB29_4:
	{
		r3:2 = memd(r30+#-16)
	}
	{
		r1:0 = memd(r30+#-24)
	}
	{
		p1 = dfcmp.ge(r1:0,r3:2)
	}
	{
		p0 = dfcmp.uo(r1:0,r3:2)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB29_6
	}
	{
		jump .LBB29_5
	}
.LBB29_5:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r3:2 = memd(r30+#-24)
	}
	{
		call __hexagon_subdf3
	}
	{
		memd(r30+#-32) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB29_7
	}
.LBB29_6:
	{
		r1:0 = CONST64(#0)
	}
	{
		memd(r30+#-32) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB29_7
	}
.LBB29_7:
	{
		r1:0 = memd(r30+#-32)
	}                                       // 8-byte Folded Reload
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB29_8
	}
.LBB29_8:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end29:
	.size	fdim, .Lfunc_end29-fdim
                                        // -- End function
	.globl	fdimf                           // -- Begin function fdimf
	.p2align	4
	.type	fdimf,@function
fdimf:                                  // @fdimf
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = sfcmp.uo(r0,r0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB30_2
	}
	{
		jump .LBB30_1
	}
.LBB30_1:
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB30_8
	}
.LBB30_2:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = sfcmp.uo(r0,r0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB30_4
	}
	{
		jump .LBB30_3
	}
.LBB30_3:
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB30_8
	}
.LBB30_4:
	{
		r1 = memw(r30+#-8)
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		p1 = sfcmp.ge(r0,r1)
	}
	{
		p0 = sfcmp.uo(r0,r1)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB30_6
	}
	{
		jump .LBB30_5
	}
.LBB30_5:
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = sfsub(r0,r1)
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB30_7
	}
.LBB30_6:
	{
		r0 = #0
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB30_7
	}
.LBB30_7:
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB30_8
	}
.LBB30_8:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end30:
	.size	fdimf, .Lfunc_end30-fdimf
                                        // -- End function
	.globl	fmax                            // -- Begin function fmax
	.p2align	4
	.type	fmax,@function
fmax:                                   // @fmax
// %bb.0:
	{
		allocframe(r29,#40):raw
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		memd(r30+#-24) = r3:2
	}
	{
		r1:0 = memd(r30+#-16)
	}
	{
		p0 = dfcmp.uo(r1:0,r1:0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB31_2
	}
	{
		jump .LBB31_1
	}
.LBB31_1:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB31_13
	}
.LBB31_2:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		p0 = dfcmp.uo(r1:0,r1:0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB31_4
	}
	{
		jump .LBB31_3
	}
.LBB31_3:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB31_13
	}
.LBB31_4:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r1:0 = lsr(r1:0,#63)
	}
	{
		r3:2 = memd(r30+#-24)
	}
	{
		r3:2 = lsr(r3:2,#63)
	}
	{
		r1 = r2
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		if (p0) jump:nt .LBB31_9
	}
	{
		jump .LBB31_5
	}
.LBB31_5:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r3:2 = combine(#-1,#-1)
	}
	{
		p0 = cmp.gt(r1:0,r3:2)
	}
	{
		if (p0) jump:nt .LBB31_7
	}
	{
		jump .LBB31_6
	}
.LBB31_6:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		memd(r30+#-32) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB31_8
	}
.LBB31_7:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-32) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB31_8
	}
.LBB31_8:
	{
		r1:0 = memd(r30+#-32)
	}                                       // 8-byte Folded Reload
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB31_13
	}
.LBB31_9:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r3:2 = memd(r30+#-24)
	}
	{
		p1 = dfcmp.ge(r1:0,r3:2)
	}
	{
		p0 = dfcmp.uo(r1:0,r3:2)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB31_11
	}
	{
		jump .LBB31_10
	}
.LBB31_10:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		memd(r30+#-40) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB31_12
	}
.LBB31_11:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-40) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB31_12
	}
.LBB31_12:
	{
		r1:0 = memd(r30+#-40)
	}                                       // 8-byte Folded Reload
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB31_13
	}
.LBB31_13:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end31:
	.size	fmax, .Lfunc_end31-fmax
                                        // -- End function
	.globl	fmaxf                           // -- Begin function fmaxf
	.p2align	4
	.type	fmaxf,@function
fmaxf:                                  // @fmaxf
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = sfcmp.uo(r0,r0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB32_2
	}
	{
		jump .LBB32_1
	}
.LBB32_1:
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB32_13
	}
.LBB32_2:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = sfcmp.uo(r0,r0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB32_4
	}
	{
		jump .LBB32_3
	}
.LBB32_3:
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB32_13
	}
.LBB32_4:
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = lsr(r0,#31)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r1 = lsr(r1,#31)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		if (p0) jump:nt .LBB32_9
	}
	{
		jump .LBB32_5
	}
.LBB32_5:
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.gt(r0,#-1)
	}
	{
		if (p0) jump:nt .LBB32_7
	}
	{
		jump .LBB32_6
	}
.LBB32_6:
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB32_8
	}
.LBB32_7:
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB32_8
	}
.LBB32_8:
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB32_13
	}
.LBB32_9:
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		p1 = sfcmp.ge(r0,r1)
	}
	{
		p0 = sfcmp.uo(r0,r1)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB32_11
	}
	{
		jump .LBB32_10
	}
.LBB32_10:
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB32_12
	}
.LBB32_11:
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB32_12
	}
.LBB32_12:
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB32_13
	}
.LBB32_13:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end32:
	.size	fmaxf, .Lfunc_end32-fmaxf
                                        // -- End function
	.globl	fmaxl                           // -- Begin function fmaxl
	.p2align	4
	.type	fmaxl,@function
fmaxl:                                  // @fmaxl
// %bb.0:
	{
		allocframe(r29,#40):raw
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		memd(r30+#-24) = r3:2
	}
	{
		r1:0 = memd(r30+#-16)
	}
	{
		p0 = dfcmp.uo(r1:0,r1:0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB33_2
	}
	{
		jump .LBB33_1
	}
.LBB33_1:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB33_13
	}
.LBB33_2:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		p0 = dfcmp.uo(r1:0,r1:0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB33_4
	}
	{
		jump .LBB33_3
	}
.LBB33_3:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB33_13
	}
.LBB33_4:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r1:0 = lsr(r1:0,#63)
	}
	{
		r3:2 = memd(r30+#-24)
	}
	{
		r3:2 = lsr(r3:2,#63)
	}
	{
		r1 = r2
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		if (p0) jump:nt .LBB33_9
	}
	{
		jump .LBB33_5
	}
.LBB33_5:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r3:2 = combine(#-1,#-1)
	}
	{
		p0 = cmp.gt(r1:0,r3:2)
	}
	{
		if (p0) jump:nt .LBB33_7
	}
	{
		jump .LBB33_6
	}
.LBB33_6:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		memd(r30+#-32) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB33_8
	}
.LBB33_7:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-32) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB33_8
	}
.LBB33_8:
	{
		r1:0 = memd(r30+#-32)
	}                                       // 8-byte Folded Reload
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB33_13
	}
.LBB33_9:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r3:2 = memd(r30+#-24)
	}
	{
		p1 = dfcmp.ge(r1:0,r3:2)
	}
	{
		p0 = dfcmp.uo(r1:0,r3:2)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB33_11
	}
	{
		jump .LBB33_10
	}
.LBB33_10:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		memd(r30+#-40) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB33_12
	}
.LBB33_11:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-40) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB33_12
	}
.LBB33_12:
	{
		r1:0 = memd(r30+#-40)
	}                                       // 8-byte Folded Reload
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB33_13
	}
.LBB33_13:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end33:
	.size	fmaxl, .Lfunc_end33-fmaxl
                                        // -- End function
	.globl	fmin                            // -- Begin function fmin
	.p2align	4
	.type	fmin,@function
fmin:                                   // @fmin
// %bb.0:
	{
		allocframe(r29,#40):raw
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		memd(r30+#-24) = r3:2
	}
	{
		r1:0 = memd(r30+#-16)
	}
	{
		p0 = dfcmp.uo(r1:0,r1:0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB34_2
	}
	{
		jump .LBB34_1
	}
.LBB34_1:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB34_13
	}
.LBB34_2:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		p0 = dfcmp.uo(r1:0,r1:0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB34_4
	}
	{
		jump .LBB34_3
	}
.LBB34_3:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB34_13
	}
.LBB34_4:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r1:0 = lsr(r1:0,#63)
	}
	{
		r3:2 = memd(r30+#-24)
	}
	{
		r3:2 = lsr(r3:2,#63)
	}
	{
		r1 = r2
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		if (p0) jump:nt .LBB34_9
	}
	{
		jump .LBB34_5
	}
.LBB34_5:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r3:2 = combine(#-1,#-1)
	}
	{
		p0 = cmp.gt(r1:0,r3:2)
	}
	{
		if (p0) jump:nt .LBB34_7
	}
	{
		jump .LBB34_6
	}
.LBB34_6:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-32) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB34_8
	}
.LBB34_7:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		memd(r30+#-32) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB34_8
	}
.LBB34_8:
	{
		r1:0 = memd(r30+#-32)
	}                                       // 8-byte Folded Reload
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB34_13
	}
.LBB34_9:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r3:2 = memd(r30+#-24)
	}
	{
		p1 = dfcmp.ge(r1:0,r3:2)
	}
	{
		p0 = dfcmp.uo(r1:0,r3:2)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB34_11
	}
	{
		jump .LBB34_10
	}
.LBB34_10:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-40) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB34_12
	}
.LBB34_11:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		memd(r30+#-40) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB34_12
	}
.LBB34_12:
	{
		r1:0 = memd(r30+#-40)
	}                                       // 8-byte Folded Reload
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB34_13
	}
.LBB34_13:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end34:
	.size	fmin, .Lfunc_end34-fmin
                                        // -- End function
	.globl	fminf                           // -- Begin function fminf
	.p2align	4
	.type	fminf,@function
fminf:                                  // @fminf
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = sfcmp.uo(r0,r0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB35_2
	}
	{
		jump .LBB35_1
	}
.LBB35_1:
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB35_13
	}
.LBB35_2:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = sfcmp.uo(r0,r0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB35_4
	}
	{
		jump .LBB35_3
	}
.LBB35_3:
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB35_13
	}
.LBB35_4:
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = lsr(r0,#31)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r1 = lsr(r1,#31)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		if (p0) jump:nt .LBB35_9
	}
	{
		jump .LBB35_5
	}
.LBB35_5:
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.gt(r0,#-1)
	}
	{
		if (p0) jump:nt .LBB35_7
	}
	{
		jump .LBB35_6
	}
.LBB35_6:
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB35_8
	}
.LBB35_7:
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB35_8
	}
.LBB35_8:
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB35_13
	}
.LBB35_9:
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		p1 = sfcmp.ge(r0,r1)
	}
	{
		p0 = sfcmp.uo(r0,r1)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB35_11
	}
	{
		jump .LBB35_10
	}
.LBB35_10:
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB35_12
	}
.LBB35_11:
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB35_12
	}
.LBB35_12:
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB35_13
	}
.LBB35_13:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end35:
	.size	fminf, .Lfunc_end35-fminf
                                        // -- End function
	.globl	fminl                           // -- Begin function fminl
	.p2align	4
	.type	fminl,@function
fminl:                                  // @fminl
// %bb.0:
	{
		allocframe(r29,#40):raw
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		memd(r30+#-24) = r3:2
	}
	{
		r1:0 = memd(r30+#-16)
	}
	{
		p0 = dfcmp.uo(r1:0,r1:0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB36_2
	}
	{
		jump .LBB36_1
	}
.LBB36_1:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB36_13
	}
.LBB36_2:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		p0 = dfcmp.uo(r1:0,r1:0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB36_4
	}
	{
		jump .LBB36_3
	}
.LBB36_3:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB36_13
	}
.LBB36_4:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r1:0 = lsr(r1:0,#63)
	}
	{
		r3:2 = memd(r30+#-24)
	}
	{
		r3:2 = lsr(r3:2,#63)
	}
	{
		r1 = r2
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		if (p0) jump:nt .LBB36_9
	}
	{
		jump .LBB36_5
	}
.LBB36_5:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r3:2 = combine(#-1,#-1)
	}
	{
		p0 = cmp.gt(r1:0,r3:2)
	}
	{
		if (p0) jump:nt .LBB36_7
	}
	{
		jump .LBB36_6
	}
.LBB36_6:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-32) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB36_8
	}
.LBB36_7:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		memd(r30+#-32) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB36_8
	}
.LBB36_8:
	{
		r1:0 = memd(r30+#-32)
	}                                       // 8-byte Folded Reload
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB36_13
	}
.LBB36_9:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r3:2 = memd(r30+#-24)
	}
	{
		p1 = dfcmp.ge(r1:0,r3:2)
	}
	{
		p0 = dfcmp.uo(r1:0,r3:2)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB36_11
	}
	{
		jump .LBB36_10
	}
.LBB36_10:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-40) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB36_12
	}
.LBB36_11:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		memd(r30+#-40) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB36_12
	}
.LBB36_12:
	{
		r1:0 = memd(r30+#-40)
	}                                       // 8-byte Folded Reload
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB36_13
	}
.LBB36_13:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end36:
	.size	fminl, .Lfunc_end36-fminl
                                        // -- End function
	.globl	l64a                            // -- Begin function l64a
	.p2align	4
	.type	l64a,@function
l64a:                                   // @l64a
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = add(r30,#-8)
	}
	{
		memw(r0+#0) = ##l64a.s
	}
	{
		jump .LBB37_1
	}
.LBB37_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB37_4
	}
	{
		jump .LBB37_2
	}
.LBB37_2:                               //   in Loop: Header=BB37_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = and(r0,#63)
	}
	{
		r1 = memub(r0+##digits)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memb(r0+#0) = r1
	}
	{
		jump .LBB37_3
	}
.LBB37_3:                               //   in Loop: Header=BB37_1 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = lsr(r0,#6)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB37_1
	}
.LBB37_4:
	{
		r0 = memw(r30+#-8)
	}
	{
		memb(r0+#0) = #0
	}
	{
		r0 = ##l64a.s
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end37:
	.size	l64a, .Lfunc_end37-l64a
                                        // -- End function
	.globl	srand                           // -- Begin function srand
	.p2align	4
	.type	srand,@function
srand:                                  // @srand
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		r1:0 = combine(#0,r0)
	}
	{
		memd(##seed) = r1:0
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end38:
	.size	srand, .Lfunc_end38-srand
                                        // -- End function
	.globl	rand                            // -- Begin function rand
	.p2align	4
	.type	rand,@function
rand:                                   // @rand
// %bb.0:
	{
		allocframe(r29,#0):raw
	}
	{
		r5:4 = memd(##seed)
	}
	{
		r9:8 = CONST64(#6364136223846793005)
	}
	{
		r0 = r8
	}
	{
		r6 = r4
	}
	{
		r3:2 = mpyu(r6,r0)
	}
	{
		r1 = r3
	}
	{
		r7 = r9
	}
	{
		r1 += mpyi(r6,r7)
	}
	{
		r4 = r5
	}
	{
		r1 += mpyi(r0,r4)
	}
	{
		r0 = r2
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##seed) = r1:0
	}
	{
		r1:0 = memd(##seed)
	}
	{
		r1:0 = lsr(r1:0,#33)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end39:
	.size	rand, .Lfunc_end39-rand
                                        // -- End function
	.globl	insque                          // -- Begin function insque
	.p2align	4
	.type	insque,@function
insque:                                 // @insque
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB40_2
	}
	{
		jump .LBB40_1
	}
.LBB40_1:
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r0+#4) = #0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB40_4
	}
.LBB40_2:
	{
		r0 = memw(r30+#-16)
	}
	{
		r1 = memw(r0+#0)
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r0+#0) = r1
	}
	{
		r1 = memw(r30+#-16)
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r0+#4) = r1
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		memw(r0+#0) = r1
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB40_4
	}
	{
		jump .LBB40_3
	}
.LBB40_3:
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r1+#0)
	}
	{
		memw(r0+#4) = r1
	}
	{
		jump .LBB40_4
	}
.LBB40_4:
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end40:
	.size	insque, .Lfunc_end40-insque
                                        // -- End function
	.globl	remque                          // -- Begin function remque
	.p2align	4
	.type	remque,@function
remque:                                 // @remque
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB41_2
	}
	{
		jump .LBB41_1
	}
.LBB41_1:
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = memw(r0+#4)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		memw(r0+#4) = r1
	}
	{
		jump .LBB41_2
	}
.LBB41_2:
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = memw(r0+#4)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB41_4
	}
	{
		jump .LBB41_3
	}
.LBB41_3:
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = memw(r0+#0)
	}
	{
		r0 = memw(r0+#4)
	}
	{
		memw(r0+#0) = r1
	}
	{
		jump .LBB41_4
	}
.LBB41_4:
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end41:
	.size	remque, .Lfunc_end41-remque
                                        // -- End function
	.globl	lsearch                         // -- Begin function lsearch
	.p2align	4
	.type	lsearch,@function
lsearch:                                // @lsearch
// %bb.0:
	{
		allocframe(r29,#48):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		memw(r30+#-16) = r2
	}
	{
		memw(r30+#-20) = r3
	}
	{
		memw(r30+#-24) = r4
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		memw(r30+#-40) = r0
	}                                       // 4-byte Folded Spill
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r30+#-28) = r0
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		memw(r30+#-32) = r0
	}
	{
		r0 = add(r30,#-36)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB42_1
	}
.LBB42_1:                               // =>This Inner Loop Header: Depth=1
	{
		r1 = memw(r30+#-36)
	}
	{
		r0 = memw(r30+#-32)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB42_6
	}
	{
		jump .LBB42_2
	}
.LBB42_2:                               //   in Loop: Header=BB42_1 Depth=1
	{
		r4 = memw(r30+#-40)
	}                                       // 4-byte Folded Reload
	{
		r2 = memw(r30+#-24)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = memw(r30+#-28)
	}
	{
		r3 = memw(r30+#-36)
	}
	{
		r1 += mpyi(r3,r4)
	}
	{
		callr r2
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB42_4
	}
	{
		jump .LBB42_3
	}
.LBB42_3:
	{
		r2 = memw(r30+#-40)
	}                                       // 4-byte Folded Reload
	{
		r0 = memw(r30+#-28)
	}
	{
		r1 = memw(r30+#-36)
	}
	{
		r0 += mpyi(r1,r2)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB42_7
	}
.LBB42_4:                               //   in Loop: Header=BB42_1 Depth=1
	{
		jump .LBB42_5
	}
.LBB42_5:                               //   in Loop: Header=BB42_1 Depth=1
	{
		r0 = memw(r30+#-36)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-36) = r0
	}
	{
		jump .LBB42_1
	}
.LBB42_6:
	{
		r2 = memw(r30+#-40)
	}                                       // 4-byte Folded Reload
	{
		r0 = memw(r30+#-32)
	}
	{
		r1 = add(r0,#1)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		memw(r0+#0) = r1
	}
	{
		r0 = memw(r30+#-28)
	}
	{
		r1 = memw(r30+#-32)
	}
	{
		r0 += mpyi(r1,r2)
	}
	{
		memw(r30+#-44) = r0
	}                                       // 4-byte Folded Spill
	{
		r1 = memw(r30+#-8)
	}
	{
		r2 = memw(r30+#-20)
	}
	{
		call memcpy
	}
	{
		r1 = r0
	}
	{
		r0 = memw(r30+#-44)
	}                                       // 4-byte Folded Reload
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB42_7
	}
.LBB42_7:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end42:
	.size	lsearch, .Lfunc_end42-lsearch
                                        // -- End function
	.globl	lfind                           // -- Begin function lfind
	.p2align	4
	.type	lfind,@function
lfind:                                  // @lfind
// %bb.0:
	{
		allocframe(r29,#40):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		memw(r30+#-16) = r2
	}
	{
		memw(r30+#-20) = r3
	}
	{
		memw(r30+#-24) = r4
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		memw(r30+#-40) = r0
	}                                       // 4-byte Folded Spill
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r30+#-28) = r0
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		memw(r30+#-32) = r0
	}
	{
		r0 = add(r30,#-36)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB43_1
	}
.LBB43_1:                               // =>This Inner Loop Header: Depth=1
	{
		r1 = memw(r30+#-36)
	}
	{
		r0 = memw(r30+#-32)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB43_6
	}
	{
		jump .LBB43_2
	}
.LBB43_2:                               //   in Loop: Header=BB43_1 Depth=1
	{
		r4 = memw(r30+#-40)
	}                                       // 4-byte Folded Reload
	{
		r2 = memw(r30+#-24)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = memw(r30+#-28)
	}
	{
		r3 = memw(r30+#-36)
	}
	{
		r1 += mpyi(r3,r4)
	}
	{
		callr r2
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB43_4
	}
	{
		jump .LBB43_3
	}
.LBB43_3:
	{
		r2 = memw(r30+#-40)
	}                                       // 4-byte Folded Reload
	{
		r0 = memw(r30+#-28)
	}
	{
		r1 = memw(r30+#-36)
	}
	{
		r0 += mpyi(r1,r2)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB43_7
	}
.LBB43_4:                               //   in Loop: Header=BB43_1 Depth=1
	{
		jump .LBB43_5
	}
.LBB43_5:                               //   in Loop: Header=BB43_1 Depth=1
	{
		r0 = memw(r30+#-36)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-36) = r0
	}
	{
		jump .LBB43_1
	}
.LBB43_6:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB43_7
	}
.LBB43_7:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end43:
	.size	lfind, .Lfunc_end43-lfind
                                        // -- End function
	.globl	abs                             // -- Begin function abs
	.p2align	4
	.type	abs,@function
abs:                                    // @abs
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		p0 = cmp.gt(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB44_2
	}
	{
		jump .LBB44_1
	}
.LBB44_1:
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB44_3
	}
.LBB44_2:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = sub(#0,r0)
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB44_3
	}
.LBB44_3:
	{
		r0 = memw(r30+#-8)
	}                                       // 4-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end44:
	.size	abs, .Lfunc_end44-abs
                                        // -- End function
	.globl	atoi                            // -- Begin function atoi
	.p2align	4
	.type	atoi,@function
atoi:                                   // @atoi
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = add(r30,#-8)
	}
	{
		memw(r0+#0) = #0
	}
	{
		r0 = add(r30,#-12)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB45_1
	}
.LBB45_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		call isspace
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB45_3
	}
	{
		jump .LBB45_2
	}
.LBB45_2:                               //   in Loop: Header=BB45_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB45_1
	}
.LBB45_3:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		p0 = cmp.eq(r0,#43)
	}
	{
		if (p0) jump:nt .LBB45_5
	}
	{
		jump .LBB45_13
	}
.LBB45_13:
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		p0 = cmp.eq(r0,#45)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB45_6
	}
	{
		jump .LBB45_4
	}
.LBB45_4:
	{
		r0 = add(r30,#-12)
	}
	{
		memw(r0+#0) = #1
	}
	{
		jump .LBB45_5
	}
.LBB45_5:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB45_6
	}
.LBB45_6:
	{
		jump .LBB45_7
	}
.LBB45_7:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		call isdigit
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB45_9
	}
	{
		jump .LBB45_8
	}
.LBB45_8:                               //   in Loop: Header=BB45_7 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = +mpyi(r0,#10)
	}
	{
		r1 = memw(r30+#-4)
	}
	{
		r2 = add(r1,#1)
	}
	{
		memw(r30+#-4) = r2
	}
	{
		r1 = memub(r1+#0)
	}
	{
		r0 = add(r0,sub(##48,r1))
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB45_7
	}
.LBB45_9:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB45_11
	}
	{
		jump .LBB45_10
	}
.LBB45_10:
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB45_12
	}
.LBB45_11:
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = sub(#0,r0)
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB45_12
	}
.LBB45_12:
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end45:
	.size	atoi, .Lfunc_end45-atoi
                                        // -- End function
	.globl	atol                            // -- Begin function atol
	.p2align	4
	.type	atol,@function
atol:                                   // @atol
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = add(r30,#-8)
	}
	{
		memw(r0+#0) = #0
	}
	{
		r0 = add(r30,#-12)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB46_1
	}
.LBB46_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		call isspace
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB46_3
	}
	{
		jump .LBB46_2
	}
.LBB46_2:                               //   in Loop: Header=BB46_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB46_1
	}
.LBB46_3:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		p0 = cmp.eq(r0,#43)
	}
	{
		if (p0) jump:nt .LBB46_5
	}
	{
		jump .LBB46_13
	}
.LBB46_13:
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		p0 = cmp.eq(r0,#45)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB46_6
	}
	{
		jump .LBB46_4
	}
.LBB46_4:
	{
		r0 = add(r30,#-12)
	}
	{
		memw(r0+#0) = #1
	}
	{
		jump .LBB46_5
	}
.LBB46_5:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB46_6
	}
.LBB46_6:
	{
		jump .LBB46_7
	}
.LBB46_7:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		call isdigit
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB46_9
	}
	{
		jump .LBB46_8
	}
.LBB46_8:                               //   in Loop: Header=BB46_7 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = +mpyi(r0,#10)
	}
	{
		r1 = memw(r30+#-4)
	}
	{
		r2 = add(r1,#1)
	}
	{
		memw(r30+#-4) = r2
	}
	{
		r1 = memub(r1+#0)
	}
	{
		r0 = add(r0,sub(##48,r1))
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB46_7
	}
.LBB46_9:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB46_11
	}
	{
		jump .LBB46_10
	}
.LBB46_10:
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB46_12
	}
.LBB46_11:
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = sub(#0,r0)
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB46_12
	}
.LBB46_12:
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end46:
	.size	atol, .Lfunc_end46-atol
                                        // -- End function
	.globl	atoll                           // -- Begin function atoll
	.p2align	4
	.type	atoll,@function
atoll:                                  // @atoll
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r1:0 = combine(#0,#0)
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		r0 = add(r30,#-20)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB47_1
	}
.LBB47_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		call isspace
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB47_3
	}
	{
		jump .LBB47_2
	}
.LBB47_2:                               //   in Loop: Header=BB47_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB47_1
	}
.LBB47_3:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		p0 = cmp.eq(r0,#43)
	}
	{
		if (p0) jump:nt .LBB47_5
	}
	{
		jump .LBB47_13
	}
.LBB47_13:
	{
		r0 = memw(r30+#-24)
	}                                       // 4-byte Folded Reload
	{
		p0 = cmp.eq(r0,#45)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB47_6
	}
	{
		jump .LBB47_4
	}
.LBB47_4:
	{
		r0 = add(r30,#-20)
	}
	{
		memw(r0+#0) = #1
	}
	{
		jump .LBB47_5
	}
.LBB47_5:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB47_6
	}
.LBB47_6:
	{
		jump .LBB47_7
	}
.LBB47_7:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		call isdigit
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB47_9
	}
	{
		jump .LBB47_8
	}
.LBB47_8:                               //   in Loop: Header=BB47_7 Depth=1
	{
		r5:4 = memd(r30+#-16)
	}
	{
		r9:8 = combine(#0,#10)
	}
	{
		r0 = r8
	}
	{
		r6 = r4
	}
	{
		r3:2 = mpyu(r6,r0)
	}
	{
		r1 = r3
	}
	{
		r7 = r9
	}
	{
		r1 += mpyi(r6,r7)
	}
	{
		r4 = r5
	}
	{
		r1 += mpyi(r0,r4)
	}
	{
		r0 = r2
	}
	{
		r2 = memw(r30+#-4)
	}
	{
		r3 = add(r2,#1)
	}
	{
		memw(r30+#-4) = r3
	}
	{
		r2 = memub(r2+#0)
	}
	{
		r2 = add(r2,#-48)
	}
	{
		r3:2 = sxtw(r2)
	}
	{
		r1:0 = sub(r1:0,r3:2)
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		jump .LBB47_7
	}
.LBB47_9:
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB47_11
	}
	{
		jump .LBB47_10
	}
.LBB47_10:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-32) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB47_12
	}
.LBB47_11:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r1:0 = neg(r1:0)
	}
	{
		memd(r30+#-32) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB47_12
	}
.LBB47_12:
	{
		r1:0 = memd(r30+#-32)
	}                                       // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end47:
	.size	atoll, .Lfunc_end47-atoll
                                        // -- End function
	.globl	bsearch                         // -- Begin function bsearch
	.p2align	4
	.type	bsearch,@function
bsearch:                                // @bsearch
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		memw(r30+#-16) = r2
	}
	{
		memw(r30+#-20) = r3
	}
	{
		memw(r30+#-24) = r4
	}
	{
		jump .LBB48_1
	}
.LBB48_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB48_9
	}
	{
		jump .LBB48_2
	}
.LBB48_2:                               //   in Loop: Header=BB48_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = memw(r30+#-20)
	}
	{
		r2 = memw(r30+#-16)
	}
	{
		r2 = lsr(r2,#1)
	}
	{
		r0 += mpyi(r1,r2)
	}
	{
		memw(r30+#-28) = r0
	}
	{
		r2 = memw(r30+#-24)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = memw(r30+#-28)
	}
	{
		callr r2
	}
	{
		memw(r30+#-32) = r0
	}
	{
		r0 = memw(r30+#-32)
	}
	{
		p0 = cmp.gt(r0,#-1)
	}
	{
		if (p0) jump:nt .LBB48_4
	}
	{
		jump .LBB48_3
	}
.LBB48_3:                               //   in Loop: Header=BB48_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = lsr(r0,#1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		jump .LBB48_8
	}
.LBB48_4:                               //   in Loop: Header=BB48_1 Depth=1
	{
		r0 = memw(r30+#-32)
	}
	{
		p0 = cmp.gt(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB48_6
	}
	{
		jump .LBB48_5
	}
.LBB48_5:                               //   in Loop: Header=BB48_1 Depth=1
	{
		r0 = memw(r30+#-28)
	}
	{
		r1 = memw(r30+#-20)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r1 = memw(r30+#-16)
	}
	{
		r0 = #-1
	}
	{
		r0 ^= lsr(r1,#1)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		jump .LBB48_7
	}
.LBB48_6:
	{
		r0 = memw(r30+#-28)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB48_10
	}
.LBB48_7:                               //   in Loop: Header=BB48_1 Depth=1
	{
		jump .LBB48_8
	}
.LBB48_8:                               //   in Loop: Header=BB48_1 Depth=1
	{
		jump .LBB48_1
	}
.LBB48_9:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB48_10
	}
.LBB48_10:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end48:
	.size	bsearch, .Lfunc_end48-bsearch
                                        // -- End function
	.globl	bsearch_r                       // -- Begin function bsearch_r
	.p2align	4
	.type	bsearch_r,@function
bsearch_r:                              // @bsearch_r
// %bb.0:
	{
		allocframe(r29,#48):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		memw(r30+#-16) = r2
	}
	{
		memw(r30+#-20) = r3
	}
	{
		memw(r30+#-24) = r4
	}
	{
		memw(r30+#-28) = r5
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r30+#-32) = r0
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		memw(r30+#-36) = r0
	}
	{
		jump .LBB49_1
	}
.LBB49_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-36)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB49_8
	}
	{
		jump .LBB49_2
	}
.LBB49_2:                               //   in Loop: Header=BB49_1 Depth=1
	{
		r0 = memw(r30+#-32)
	}
	{
		r1 = memw(r30+#-36)
	}
	{
		r1 = asr(r1,#1)
	}
	{
		r2 = memw(r30+#-20)
	}
	{
		r0 += mpyi(r1,r2)
	}
	{
		memw(r30+#-44) = r0
	}
	{
		r3 = memw(r30+#-24)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = memw(r30+#-44)
	}
	{
		r2 = memw(r30+#-28)
	}
	{
		callr r3
	}
	{
		memw(r30+#-40) = r0
	}
	{
		r0 = memw(r30+#-40)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB49_4
	}
	{
		jump .LBB49_3
	}
.LBB49_3:
	{
		r0 = memw(r30+#-44)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB49_9
	}
.LBB49_4:                               //   in Loop: Header=BB49_1 Depth=1
	{
		r0 = memw(r30+#-40)
	}
	{
		p0 = cmp.gt(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB49_6
	}
	{
		jump .LBB49_5
	}
.LBB49_5:                               //   in Loop: Header=BB49_1 Depth=1
	{
		r0 = memw(r30+#-44)
	}
	{
		r1 = memw(r30+#-20)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-32) = r0
	}
	{
		r0 = memw(r30+#-36)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		memw(r30+#-36) = r0
	}
	{
		jump .LBB49_6
	}
.LBB49_6:                               //   in Loop: Header=BB49_1 Depth=1
	{
		jump .LBB49_7
	}
.LBB49_7:                               //   in Loop: Header=BB49_1 Depth=1
	{
		r0 = memw(r30+#-36)
	}
	{
		r0 = asr(r0,#1)
	}
	{
		memw(r30+#-36) = r0
	}
	{
		jump .LBB49_1
	}
.LBB49_8:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB49_9
	}
.LBB49_9:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end49:
	.size	bsearch_r, .Lfunc_end49-bsearch_r
                                        // -- End function
	.globl	div                             // -- Begin function div
	.p2align	4
	.type	div,@function
div:                                    // @div
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-12) = r0
	}
	{
		memw(r30+#-16) = r1
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = memw(r30+#-16)
	}
	{
		call __hexagon_divsi3
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = memw(r30+#-16)
	}
	{
		call __hexagon_modsi3
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r2 = memw(r30+#-8)
	}
	{
		r1 = memw(r30+#-4)
	}
	{
		r0 = r2
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end50:
	.size	div, .Lfunc_end50-div
                                        // -- End function
	.globl	imaxabs                         // -- Begin function imaxabs
	.p2align	4
	.type	imaxabs,@function
imaxabs:                                // @imaxabs
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		r3:2 = memd(r30+#-8)
	}
	{
		r1:0 = combine(#0,#1)
	}
	{
		p0 = cmp.gt(r1:0,r3:2)
	}
	{
		if (p0) jump:nt .LBB51_2
	}
	{
		jump .LBB51_1
	}
.LBB51_1:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		memd(r30+#-16) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB51_3
	}
.LBB51_2:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r1:0 = neg(r1:0)
	}
	{
		memd(r30+#-16) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB51_3
	}
.LBB51_3:
	{
		r1:0 = memd(r30+#-16)
	}                                       // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end51:
	.size	imaxabs, .Lfunc_end51-imaxabs
                                        // -- End function
	.globl	imaxdiv                         // -- Begin function imaxdiv
	.p2align	4
	.type	imaxdiv,@function
imaxdiv:                                // @imaxdiv
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		memd(r30+#-8) = r3:2
	}
	{
		memd(r30+#-16) = r5:4
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r3:2 = memd(r30+#-16)
	}
	{
		call __hexagon_divdi3
	}
	{
		r3:2 = combine(r1,r0)
	}
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		memd(r0+#0) = r3:2
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r3:2 = memd(r30+#-16)
	}
	{
		call __hexagon_moddi3
	}
	{
		r3:2 = combine(r1,r0)
	}
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		memd(r0+#8) = r3:2
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end52:
	.size	imaxdiv, .Lfunc_end52-imaxdiv
                                        // -- End function
	.globl	labs                            // -- Begin function labs
	.p2align	4
	.type	labs,@function
labs:                                   // @labs
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		p0 = cmp.gt(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB53_2
	}
	{
		jump .LBB53_1
	}
.LBB53_1:
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB53_3
	}
.LBB53_2:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = sub(#0,r0)
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB53_3
	}
.LBB53_3:
	{
		r0 = memw(r30+#-8)
	}                                       // 4-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end53:
	.size	labs, .Lfunc_end53-labs
                                        // -- End function
	.globl	ldiv                            // -- Begin function ldiv
	.p2align	4
	.type	ldiv,@function
ldiv:                                   // @ldiv
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-12) = r0
	}
	{
		memw(r30+#-16) = r1
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = memw(r30+#-16)
	}
	{
		call __hexagon_divsi3
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = memw(r30+#-16)
	}
	{
		call __hexagon_modsi3
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r2 = memw(r30+#-8)
	}
	{
		r1 = memw(r30+#-4)
	}
	{
		r0 = r2
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end54:
	.size	ldiv, .Lfunc_end54-ldiv
                                        // -- End function
	.globl	llabs                           // -- Begin function llabs
	.p2align	4
	.type	llabs,@function
llabs:                                  // @llabs
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		r3:2 = memd(r30+#-8)
	}
	{
		r1:0 = combine(#0,#1)
	}
	{
		p0 = cmp.gt(r1:0,r3:2)
	}
	{
		if (p0) jump:nt .LBB55_2
	}
	{
		jump .LBB55_1
	}
.LBB55_1:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		memd(r30+#-16) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB55_3
	}
.LBB55_2:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r1:0 = neg(r1:0)
	}
	{
		memd(r30+#-16) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB55_3
	}
.LBB55_3:
	{
		r1:0 = memd(r30+#-16)
	}                                       // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end55:
	.size	llabs, .Lfunc_end55-llabs
                                        // -- End function
	.globl	lldiv                           // -- Begin function lldiv
	.p2align	4
	.type	lldiv,@function
lldiv:                                  // @lldiv
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		memd(r30+#-8) = r3:2
	}
	{
		memd(r30+#-16) = r5:4
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r3:2 = memd(r30+#-16)
	}
	{
		call __hexagon_divdi3
	}
	{
		r3:2 = combine(r1,r0)
	}
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		memd(r0+#0) = r3:2
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r3:2 = memd(r30+#-16)
	}
	{
		call __hexagon_moddi3
	}
	{
		r3:2 = combine(r1,r0)
	}
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		memd(r0+#8) = r3:2
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end56:
	.size	lldiv, .Lfunc_end56-lldiv
                                        // -- End function
	.globl	wcschr                          // -- Begin function wcschr
	.p2align	4
	.type	wcschr,@function
wcschr:                                 // @wcschr
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		jump .LBB57_1
	}
.LBB57_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB57_3
	}
	{
		jump .LBB57_2
	}
.LBB57_2:                               //   in Loop: Header=BB57_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB57_3
	}
.LBB57_3:                               //   in Loop: Header=BB57_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB57_6
	}
	{
		jump .LBB57_4
	}
.LBB57_4:                               //   in Loop: Header=BB57_1 Depth=1
	{
		jump .LBB57_5
	}
.LBB57_5:                               //   in Loop: Header=BB57_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#4)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB57_1
	}
.LBB57_6:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB57_8
	}
	{
		jump .LBB57_7
	}
.LBB57_7:
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB57_9
	}
.LBB57_8:
	{
		r0 = #0
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB57_9
	}
.LBB57_9:
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end57:
	.size	wcschr, .Lfunc_end57-wcschr
                                        // -- End function
	.globl	wcscmp                          // -- Begin function wcscmp
	.p2align	4
	.type	wcscmp,@function
wcscmp:                                 // @wcscmp
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		jump .LBB58_1
	}
.LBB58_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		r1 = memw(r1+#0)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB58_4
	}
	{
		jump .LBB58_2
	}
.LBB58_2:                               //   in Loop: Header=BB58_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB58_4
	}
	{
		jump .LBB58_3
	}
.LBB58_3:                               //   in Loop: Header=BB58_1 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB58_4
	}
.LBB58_4:                               //   in Loop: Header=BB58_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB58_7
	}
	{
		jump .LBB58_5
	}
.LBB58_5:                               //   in Loop: Header=BB58_1 Depth=1
	{
		jump .LBB58_6
	}
.LBB58_6:                               //   in Loop: Header=BB58_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#4)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = add(r0,#4)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB58_1
	}
.LBB58_7:
	{
		r0 = memw(r30+#-4)
	}
	{
		r1 = memw(r0+#0)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		p0 = cmp.gt(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB58_9
	}
	{
		jump .LBB58_8
	}
.LBB58_8:
	{
		r0 = #-1
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB58_10
	}
.LBB58_9:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		r1 = memw(r1+#0)
	}
	{
		p0 = cmp.gt(r0,r1)
	}
	{
		r0 = mux(p0,#1,#0)
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB58_10
	}
.LBB58_10:
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end58:
	.size	wcscmp, .Lfunc_end58-wcscmp
                                        // -- End function
	.globl	wcscpy                          // -- Begin function wcscpy
	.p2align	4
	.type	wcscpy,@function
wcscpy:                                 // @wcscpy
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB59_1
	}
.LBB59_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = add(r0,#4)
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = memw(r0+#0)
	}
	{
		r1 = memw(r30+#-4)
	}
	{
		r2 = add(r1,#4)
	}
	{
		memw(r30+#-4) = r2
	}
	{
		memw(r1+#0) = r0
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB59_3
	}
	{
		jump .LBB59_2
	}
.LBB59_2:                               //   in Loop: Header=BB59_1 Depth=1
	{
		jump .LBB59_1
	}
.LBB59_3:
	{
		r0 = memw(r30+#-12)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end59:
	.size	wcscpy, .Lfunc_end59-wcscpy
                                        // -- End function
	.globl	wcslen                          // -- Begin function wcslen
	.p2align	4
	.type	wcslen,@function
wcslen:                                 // @wcslen
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB60_1
	}
.LBB60_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB60_4
	}
	{
		jump .LBB60_2
	}
.LBB60_2:                               //   in Loop: Header=BB60_1 Depth=1
	{
		jump .LBB60_3
	}
.LBB60_3:                               //   in Loop: Header=BB60_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#4)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB60_1
	}
.LBB60_4:
	{
		r0 = memw(r30+#-4)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		r0 = sub(r0,r1)
	}
	{
		r0 = asr(r0,#2)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end60:
	.size	wcslen, .Lfunc_end60-wcslen
                                        // -- End function
	.globl	wcsncmp                         // -- Begin function wcsncmp
	.p2align	4
	.type	wcsncmp,@function
wcsncmp:                                // @wcsncmp
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		memw(r30+#-12) = r2
	}
	{
		jump .LBB61_1
	}
.LBB61_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB61_5
	}
	{
		jump .LBB61_2
	}
.LBB61_2:                               //   in Loop: Header=BB61_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		r1 = memw(r1+#0)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB61_5
	}
	{
		jump .LBB61_3
	}
.LBB61_3:                               //   in Loop: Header=BB61_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB61_5
	}
	{
		jump .LBB61_4
	}
.LBB61_4:                               //   in Loop: Header=BB61_1 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB61_5
	}
.LBB61_5:                               //   in Loop: Header=BB61_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB61_8
	}
	{
		jump .LBB61_6
	}
.LBB61_6:                               //   in Loop: Header=BB61_1 Depth=1
	{
		jump .LBB61_7
	}
.LBB61_7:                               //   in Loop: Header=BB61_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#4)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = add(r0,#4)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB61_1
	}
.LBB61_8:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB61_13
	}
	{
		jump .LBB61_9
	}
.LBB61_9:
	{
		r0 = memw(r30+#-4)
	}
	{
		r1 = memw(r0+#0)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		p0 = cmp.gt(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB61_11
	}
	{
		jump .LBB61_10
	}
.LBB61_10:
	{
		r0 = #-1
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB61_12
	}
.LBB61_11:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		r1 = memw(r1+#0)
	}
	{
		p0 = cmp.gt(r0,r1)
	}
	{
		r0 = mux(p0,#1,#0)
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB61_12
	}
.LBB61_12:
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB61_14
	}
.LBB61_13:
	{
		r0 = #0
	}
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB61_14
	}
.LBB61_14:
	{
		r0 = memw(r30+#-24)
	}                                       // 4-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end61:
	.size	wcsncmp, .Lfunc_end61-wcsncmp
                                        // -- End function
	.globl	wmemchr                         // -- Begin function wmemchr
	.p2align	4
	.type	wmemchr,@function
wmemchr:                                // @wmemchr
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		memw(r30+#-12) = r2
	}
	{
		jump .LBB62_1
	}
.LBB62_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB62_3
	}
	{
		jump .LBB62_2
	}
.LBB62_2:                               //   in Loop: Header=BB62_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB62_3
	}
.LBB62_3:                               //   in Loop: Header=BB62_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB62_6
	}
	{
		jump .LBB62_4
	}
.LBB62_4:                               //   in Loop: Header=BB62_1 Depth=1
	{
		jump .LBB62_5
	}
.LBB62_5:                               //   in Loop: Header=BB62_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#4)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB62_1
	}
.LBB62_6:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB62_8
	}
	{
		jump .LBB62_7
	}
.LBB62_7:
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB62_9
	}
.LBB62_8:
	{
		r0 = #0
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB62_9
	}
.LBB62_9:
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end62:
	.size	wmemchr, .Lfunc_end62-wmemchr
                                        // -- End function
	.globl	wmemcmp                         // -- Begin function wmemcmp
	.p2align	4
	.type	wmemcmp,@function
wmemcmp:                                // @wmemcmp
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		memw(r30+#-12) = r2
	}
	{
		jump .LBB63_1
	}
.LBB63_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB63_3
	}
	{
		jump .LBB63_2
	}
.LBB63_2:                               //   in Loop: Header=BB63_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		r1 = memw(r1+#0)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB63_3
	}
.LBB63_3:                               //   in Loop: Header=BB63_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB63_6
	}
	{
		jump .LBB63_4
	}
.LBB63_4:                               //   in Loop: Header=BB63_1 Depth=1
	{
		jump .LBB63_5
	}
.LBB63_5:                               //   in Loop: Header=BB63_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = add(r0,#4)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = add(r0,#4)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB63_1
	}
.LBB63_6:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB63_11
	}
	{
		jump .LBB63_7
	}
.LBB63_7:
	{
		r0 = memw(r30+#-4)
	}
	{
		r1 = memw(r0+#0)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		p0 = cmp.gt(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB63_9
	}
	{
		jump .LBB63_8
	}
.LBB63_8:
	{
		r0 = #-1
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB63_10
	}
.LBB63_9:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memw(r0+#0)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		r1 = memw(r1+#0)
	}
	{
		p0 = cmp.gt(r0,r1)
	}
	{
		r0 = mux(p0,#1,#0)
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB63_10
	}
.LBB63_10:
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB63_12
	}
.LBB63_11:
	{
		r0 = #0
	}
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB63_12
	}
.LBB63_12:
	{
		r0 = memw(r30+#-24)
	}                                       // 4-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end63:
	.size	wmemcmp, .Lfunc_end63-wmemcmp
                                        // -- End function
	.globl	wmemcpy                         // -- Begin function wmemcpy
	.p2align	4
	.type	wmemcpy,@function
wmemcpy:                                // @wmemcpy
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		jump .LBB64_1
	}
.LBB64_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = add(r0,#-1)
	}
	{
		memw(r30+#-12) = r1
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB64_3
	}
	{
		jump .LBB64_2
	}
.LBB64_2:                               //   in Loop: Header=BB64_1 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = add(r0,#4)
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r1 = memw(r0+#0)
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r2 = add(r0,#4)
	}
	{
		memw(r30+#-4) = r2
	}
	{
		memw(r0+#0) = r1
	}
	{
		jump .LBB64_1
	}
.LBB64_3:
	{
		r0 = memw(r30+#-16)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end64:
	.size	wmemcpy, .Lfunc_end64-wmemcpy
                                        // -- End function
	.globl	wmemmove                        // -- Begin function wmemmove
	.p2align	4
	.type	wmemmove,@function
wmemmove:                               // @wmemmove
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		memw(r30+#-16) = r2
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB65_2
	}
	{
		jump .LBB65_1
	}
.LBB65_1:
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB65_12
	}
.LBB65_2:
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r1 = sub(r0,r1)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = asl(r0,#2)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB65_7
	}
	{
		jump .LBB65_3
	}
.LBB65_3:
	{
		jump .LBB65_4
	}
.LBB65_4:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		r1 = add(r0,#-1)
	}
	{
		memw(r30+#-16) = r1
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB65_6
	}
	{
		jump .LBB65_5
	}
.LBB65_5:                               //   in Loop: Header=BB65_4 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = memw(r30+#-16)
	}
	{
		r2 = memw(r0+r1<<#2)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r0+r1<<#2) = r2
	}
	{
		jump .LBB65_4
	}
.LBB65_6:
	{
		jump .LBB65_11
	}
.LBB65_7:
	{
		jump .LBB65_8
	}
.LBB65_8:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		r1 = add(r0,#-1)
	}
	{
		memw(r30+#-16) = r1
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB65_10
	}
	{
		jump .LBB65_9
	}
.LBB65_9:                               //   in Loop: Header=BB65_8 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = add(r0,#4)
	}
	{
		memw(r30+#-12) = r1
	}
	{
		r1 = memw(r0+#0)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r2 = add(r0,#4)
	}
	{
		memw(r30+#-8) = r2
	}
	{
		memw(r0+#0) = r1
	}
	{
		jump .LBB65_8
	}
.LBB65_10:
	{
		jump .LBB65_11
	}
.LBB65_11:
	{
		r0 = memw(r30+#-20)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB65_12
	}
.LBB65_12:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end65:
	.size	wmemmove, .Lfunc_end65-wmemmove
                                        // -- End function
	.globl	wmemset                         // -- Begin function wmemset
	.p2align	4
	.type	wmemset,@function
wmemset:                                // @wmemset
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		jump .LBB66_1
	}
.LBB66_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = add(r0,#-1)
	}
	{
		memw(r30+#-12) = r1
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB66_3
	}
	{
		jump .LBB66_2
	}
.LBB66_2:                               //   in Loop: Header=BB66_1 Depth=1
	{
		r1 = memw(r30+#-8)
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r2 = add(r0,#4)
	}
	{
		memw(r30+#-4) = r2
	}
	{
		memw(r0+#0) = r1
	}
	{
		jump .LBB66_1
	}
.LBB66_3:
	{
		r0 = memw(r30+#-16)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end66:
	.size	wmemset, .Lfunc_end66-wmemset
                                        // -- End function
	.globl	bcopy                           // -- Begin function bcopy
	.p2align	4
	.type	bcopy,@function
bcopy:                                  // @bcopy
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r1 = memw(r30+#-16)
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB67_6
	}
	{
		jump .LBB67_1
	}
.LBB67_1:
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		jump .LBB67_2
	}
.LBB67_2:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB67_5
	}
	{
		jump .LBB67_3
	}
.LBB67_3:                               //   in Loop: Header=BB67_2 Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		r1 = add(r0,#-1)
	}
	{
		memw(r30+#-16) = r1
	}
	{
		r1 = memub(r0+#-1)
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r2 = add(r0,#-1)
	}
	{
		memw(r30+#-20) = r2
	}
	{
		memb(r0+#-1) = r1
	}
	{
		jump .LBB67_4
	}
.LBB67_4:                               //   in Loop: Header=BB67_2 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB67_2
	}
.LBB67_5:
	{
		jump .LBB67_13
	}
.LBB67_6:
	{
		r0 = memw(r30+#-16)
	}
	{
		r1 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		if (p0) jump:nt .LBB67_12
	}
	{
		jump .LBB67_7
	}
.LBB67_7:
	{
		jump .LBB67_8
	}
.LBB67_8:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB67_11
	}
	{
		jump .LBB67_9
	}
.LBB67_9:                               //   in Loop: Header=BB67_8 Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		r1 = add(r0,#1)
	}
	{
		memw(r30+#-16) = r1
	}
	{
		r1 = memub(r0+#0)
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r2 = add(r0,#1)
	}
	{
		memw(r30+#-20) = r2
	}
	{
		memb(r0+#0) = r1
	}
	{
		jump .LBB67_10
	}
.LBB67_10:                              //   in Loop: Header=BB67_8 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB67_8
	}
.LBB67_11:
	{
		jump .LBB67_12
	}
.LBB67_12:
	{
		jump .LBB67_13
	}
.LBB67_13:
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end67:
	.size	bcopy, .Lfunc_end67-bcopy
                                        // -- End function
	.globl	rotl64                          // -- Begin function rotl64
	.p2align	4
	.type	rotl64,@function
rotl64:                                 // @rotl64
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r3:2 = memd(r30+#-8)
	}
	{
		r4 = memw(r30+#-12)
	}
	{
		r1:0 = asl(r3:2,r4)
	}
	{
		r4 = sub(#64,r4)
	}
	{
		r1:0 |= lsr(r3:2,r4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end68:
	.size	rotl64, .Lfunc_end68-rotl64
                                        // -- End function
	.globl	rotr64                          // -- Begin function rotr64
	.p2align	4
	.type	rotr64,@function
rotr64:                                 // @rotr64
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r3:2 = memd(r30+#-8)
	}
	{
		r4 = memw(r30+#-12)
	}
	{
		r1:0 = lsr(r3:2,r4)
	}
	{
		r4 = sub(#64,r4)
	}
	{
		r1:0 |= asl(r3:2,r4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end69:
	.size	rotr64, .Lfunc_end69-rotr64
                                        // -- End function
	.globl	rotl32                          // -- Begin function rotl32
	.p2align	4
	.type	rotl32,@function
rotl32:                                 // @rotl32
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r3 = memw(r30+#-4)
	}
	{
		r2 = memw(r30+#-8)
	}
	{
		r1 = r3
	}
	{
		r0 = r3
	}
	{
		r1:0 = asl(r1:0,r2)
	}
	{
		r0 = r1
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end70:
	.size	rotl32, .Lfunc_end70-rotl32
                                        // -- End function
	.globl	rotr32                          // -- Begin function rotr32
	.p2align	4
	.type	rotr32,@function
rotr32:                                 // @rotr32
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r3 = memw(r30+#-4)
	}
	{
		r2 = memw(r30+#-8)
	}
	{
		r1 = r3
	}
	{
		r0 = r3
	}
	{
		r1:0 = lsr(r1:0,r2)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end71:
	.size	rotr32, .Lfunc_end71-rotr32
                                        // -- End function
	.globl	rotl_sz                         // -- Begin function rotl_sz
	.p2align	4
	.type	rotl_sz,@function
rotl_sz:                                // @rotl_sz
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r3 = memw(r30+#-4)
	}
	{
		r2 = memw(r30+#-8)
	}
	{
		r1 = r3
	}
	{
		r0 = r3
	}
	{
		r1:0 = asl(r1:0,r2)
	}
	{
		r0 = r1
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end72:
	.size	rotl_sz, .Lfunc_end72-rotl_sz
                                        // -- End function
	.globl	rotr_sz                         // -- Begin function rotr_sz
	.p2align	4
	.type	rotr_sz,@function
rotr_sz:                                // @rotr_sz
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r3 = memw(r30+#-4)
	}
	{
		r2 = memw(r30+#-8)
	}
	{
		r1 = r3
	}
	{
		r0 = r3
	}
	{
		r1:0 = lsr(r1:0,r2)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end73:
	.size	rotr_sz, .Lfunc_end73-rotr_sz
                                        // -- End function
	.globl	rotl16                          // -- Begin function rotl16
	.p2align	4
	.type	rotl16,@function
rotl16:                                 // @rotl16
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		r2 = r0
	}
	{
		memh(r30+#-2) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r1 = memuh(r30+#-2)
	}
	{
		r2 = memw(r30+#-8)
	}
	{
		r0 = asl(r1,r2)
	}
	{
		r2 = sub(#16,r2)
	}
	{
		r0 |= lsr(r1,r2)
	}
	{
		r0 = zxth(r0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end74:
	.size	rotl16, .Lfunc_end74-rotl16
                                        // -- End function
	.globl	rotr16                          // -- Begin function rotr16
	.p2align	4
	.type	rotr16,@function
rotr16:                                 // @rotr16
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		r2 = r0
	}
	{
		memh(r30+#-2) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r1 = memuh(r30+#-2)
	}
	{
		r2 = memw(r30+#-8)
	}
	{
		r0 = lsr(r1,r2)
	}
	{
		r2 = sub(#16,r2)
	}
	{
		r0 |= asl(r1,r2)
	}
	{
		r0 = zxth(r0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end75:
	.size	rotr16, .Lfunc_end75-rotr16
                                        // -- End function
	.globl	rotl8                           // -- Begin function rotl8
	.p2align	4
	.type	rotl8,@function
rotl8:                                  // @rotl8
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		r2 = r0
	}
	{
		memb(r30+#-1) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r1 = memub(r30+#-1)
	}
	{
		r2 = memw(r30+#-8)
	}
	{
		r0 = asl(r1,r2)
	}
	{
		r2 = sub(#8,r2)
	}
	{
		r0 |= lsr(r1,r2)
	}
	{
		r0 = and(r0,#255)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end76:
	.size	rotl8, .Lfunc_end76-rotl8
                                        // -- End function
	.globl	rotr8                           // -- Begin function rotr8
	.p2align	4
	.type	rotr8,@function
rotr8:                                  // @rotr8
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		r2 = r0
	}
	{
		memb(r30+#-1) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r1 = memub(r30+#-1)
	}
	{
		r2 = memw(r30+#-8)
	}
	{
		r0 = lsr(r1,r2)
	}
	{
		r2 = sub(#8,r2)
	}
	{
		r0 |= asl(r1,r2)
	}
	{
		r0 = and(r0,#255)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end77:
	.size	rotr8, .Lfunc_end77-rotr8
                                        // -- End function
	.globl	bswap_16                        // -- Begin function bswap_16
	.p2align	4
	.type	bswap_16,@function
bswap_16:                               // @bswap_16
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		r1 = r0
	}
	{
		memh(r30+#-2) = r0
	}
	{
		r0 = add(r30,#-4)
	}
	{
		memh(r0+#0) = ##255
	}
	{
		r1 = memuh(r30+#-2)
	}
	{
		r2 = memuh(r30+#-4)
	}
	{
		r0 = r1
	}
	{
		r0 &= asl(r2,#8)
	}
	{
		r0 = lsr(r0,#8)
	}
	{
		r1 = and(r1,r2)
	}
	{
		r0 |= asl(r1,#8)
	}
	{
		r0 = zxth(r0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end78:
	.size	bswap_16, .Lfunc_end78-bswap_16
                                        // -- End function
	.globl	bswap_32                        // -- Begin function bswap_32
	.p2align	4
	.type	bswap_32,@function
bswap_32:                               // @bswap_32
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = add(r30,#-8)
	}
	{
		memw(r0+#0) = ##255
	}
	{
		r1 = memw(r30+#-4)
	}
	{
		r2 = memw(r30+#-8)
	}
	{
		r0 = r1
	}
	{
		r0 &= asl(r2,#24)
	}
	{
		r0 = lsr(r0,#24)
	}
	{
		r3 = aslh(r2)
	}
	{
		r4 = and(r1,r3)
	}
	{
		r0 |= lsr(r4,#8)
	}
	{
		r4 = asl(r1,#8)
	}
	{
		r0 |= and(r3,r4)
	}
	{
		r1 = and(r1,r2)
	}
	{
		r0 |= asl(r1,#24)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end79:
	.size	bswap_32, .Lfunc_end79-bswap_32
                                        // -- End function
	.globl	bswap_64                        // -- Begin function bswap_64
	.p2align	4
	.type	bswap_64,@function
bswap_64:                               // @bswap_64
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		r1:0 = CONST64(#255)
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		r3:2 = memd(r30+#-8)
	}
	{
		r5:4 = memd(r30+#-16)
	}
	{
		r1:0 = combine(r3,r2)
	}
	{
		r1:0 &= asl(r5:4,#56)
	}
	{
		r1:0 = lsr(r1:0,#56)
	}
	{
		r7:6 = asl(r5:4,#48)
	}
	{
		r9:8 = and(r3:2,r7:6)
	}
	{
		r1:0 |= lsr(r9:8,#40)
	}
	{
		r9:8 = asl(r5:4,#40)
	}
	{
		r13:12 = and(r3:2,r9:8)
	}
	{
		r1:0 |= lsr(r13:12,#24)
	}
	{
		r13:12 = asl(r5:4,#32)
	}
	{
		r15:14 = and(r3:2,r13:12)
	}
	{
		r1:0 |= lsr(r15:14,#8)
	}
	{
		r13:12 &= asl(r3:2,#8)
	}
	{
		r1:0 = or(r1:0,r13:12)
	}
	{
		r9:8 &= asl(r3:2,#24)
	}
	{
		r1:0 = or(r1:0,r9:8)
	}
	{
		r7:6 &= asl(r3:2,#40)
	}
	{
		r1:0 = or(r1:0,r7:6)
	}
	{
		r3:2 = and(r3:2,r5:4)
	}
	{
		r1:0 |= asl(r3:2,#56)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end80:
	.size	bswap_64, .Lfunc_end80-bswap_64
                                        // -- End function
	.globl	ffs                             // -- Begin function ffs
	.p2align	4
	.type	ffs,@function
ffs:                                    // @ffs
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = add(r30,#-12)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB81_1
	}
.LBB81_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.gtu(r0,#31)
	}
	{
		if (p0) jump:nt .LBB81_6
	}
	{
		jump .LBB81_2
	}
.LBB81_2:                               //   in Loop: Header=BB81_1 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		p0 = !tstbit(r0,r1)
	}
	{
		if (p0) jump:nt .LBB81_4
	}
	{
		jump .LBB81_3
	}
.LBB81_3:
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB81_7
	}
.LBB81_4:                               //   in Loop: Header=BB81_1 Depth=1
	{
		jump .LBB81_5
	}
.LBB81_5:                               //   in Loop: Header=BB81_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB81_1
	}
.LBB81_6:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB81_7
	}
.LBB81_7:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end81:
	.size	ffs, .Lfunc_end81-ffs
                                        // -- End function
	.globl	libiberty_ffs                   // -- Begin function libiberty_ffs
	.p2align	4
	.type	libiberty_ffs,@function
libiberty_ffs:                          // @libiberty_ffs
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB82_2
	}
	{
		jump .LBB82_1
	}
.LBB82_1:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB82_7
	}
.LBB82_2:
	{
		r0 = add(r30,#-12)
	}
	{
		memw(r0+#0) = #1
	}
	{
		jump .LBB82_3
	}
.LBB82_3:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = tstbit(r0,#0)
	}
	{
		if (p0) jump:nt .LBB82_6
	}
	{
		jump .LBB82_4
	}
.LBB82_4:                               //   in Loop: Header=BB82_3 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = asr(r0,#1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB82_5
	}
.LBB82_5:                               //   in Loop: Header=BB82_3 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB82_3
	}
.LBB82_6:
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB82_7
	}
.LBB82_7:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end82:
	.size	libiberty_ffs, .Lfunc_end82-libiberty_ffs
                                        // -- End function
	.globl	gl_isinff                       // -- Begin function gl_isinff
	.p2align	4
	.type	gl_isinff,@function
gl_isinff:                              // @gl_isinff
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r1 = memw(r30+#-4)
	}
	{
		r0 = ##-8388609
	}
	{
		p0 = sfcmp.gt(r0,r1)
	}
	{
		p1 = or(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB83_2
	}
	{
		jump .LBB83_1
	}
.LBB83_1:
	{
		r0 = memw(r30+#-4)
	}
	{
		r1 = ##2139095039
	}
	{
		p0 = sfcmp.gt(r0,r1)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB83_2
	}
.LBB83_2:
	{
		r0 = memw(r30+#-8)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r0 = mux(p0,#1,#0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end83:
	.size	gl_isinff, .Lfunc_end83-gl_isinff
                                        // -- End function
	.globl	gl_isinfd                       // -- Begin function gl_isinfd
	.p2align	4
	.type	gl_isinfd,@function
gl_isinfd:                              // @gl_isinfd
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		r3:2 = memd(r30+#-8)
	}
	{
		r1:0 = CONST64(#-4503599627370497)
	}
	{
		p0 = dfcmp.gt(r1:0,r3:2)
	}
	{
		p1 = or(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB84_2
	}
	{
		jump .LBB84_1
	}
.LBB84_1:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r3:2 = CONST64(#9218868437227405311)
	}
	{
		p0 = dfcmp.gt(r1:0,r3:2)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB84_2
	}
.LBB84_2:
	{
		r0 = memw(r30+#-12)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r0 = mux(p0,#1,#0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end84:
	.size	gl_isinfd, .Lfunc_end84-gl_isinfd
                                        // -- End function
	.globl	gl_isinfl                       // -- Begin function gl_isinfl
	.p2align	4
	.type	gl_isinfl,@function
gl_isinfl:                              // @gl_isinfl
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		r3:2 = memd(r30+#-8)
	}
	{
		r1:0 = CONST64(#-4503599627370497)
	}
	{
		p0 = dfcmp.gt(r1:0,r3:2)
	}
	{
		p1 = or(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB85_2
	}
	{
		jump .LBB85_1
	}
.LBB85_1:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r3:2 = CONST64(#9218868437227405311)
	}
	{
		p0 = dfcmp.gt(r1:0,r3:2)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB85_2
	}
.LBB85_2:
	{
		r0 = memw(r30+#-12)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r0 = mux(p0,#1,#0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end85:
	.size	gl_isinfl, .Lfunc_end85-gl_isinfl
                                        // -- End function
	.globl	_Qp_itoq                        // -- Begin function _Qp_itoq
	.p2align	4
	.type	_Qp_itoq,@function
_Qp_itoq:                               // @_Qp_itoq
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r3:2 = convert_w2df(r0)
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memd(r0+#0) = r3:2
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end86:
	.size	_Qp_itoq, .Lfunc_end86-_Qp_itoq
                                        // -- End function
	.globl	ldexpf                          // -- Begin function ldexpf
	.p2align	4
	.type	ldexpf,@function
ldexpf:                                 // @ldexpf
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		p0 = sfcmp.uo(r0,r0)
	}
	{
		if (p0) jump:nt .LBB87_9
	}
	{
		jump .LBB87_1
	}
.LBB87_1:
	{
		r1 = memw(r30+#-4)
	}
	{
		r0 = sfadd(r1,r1)
	}
	{
		p0 = sfcmp.eq(r0,r1)
	}
	{
		if (p0) jump:nt .LBB87_9
	}
	{
		jump .LBB87_2
	}
.LBB87_2:
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.gt(r0,#-1)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = ##1056964608
	}
	{
		r0 = mux(p0,r0,##1073741824)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB87_3
	}
.LBB87_3:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = r0
	}
	{
		r1 += lsr(r1,#31)
	}
	{
		r1 = clrbit(r1,#0)
	}
	{
		r0 = sub(r0,r1)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB87_5
	}
	{
		jump .LBB87_4
	}
.LBB87_4:                               //   in Loop: Header=BB87_3 Depth=1
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = sfmpy(r0,r1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB87_5
	}
.LBB87_5:                               //   in Loop: Header=BB87_3 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 += lsr(r0,#31)
	}
	{
		r0 = asr(r0,#1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB87_7
	}
	{
		jump .LBB87_6
	}
.LBB87_6:
	{
		jump .LBB87_8
	}
.LBB87_7:                               //   in Loop: Header=BB87_3 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = sfmpy(r0,r0)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB87_3
	}
.LBB87_8:
	{
		jump .LBB87_9
	}
.LBB87_9:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end87:
	.size	ldexpf, .Lfunc_end87-ldexpf
                                        // -- End function
	.globl	ldexp                           // -- Begin function ldexp
	.p2align	4
	.type	ldexp,@function
ldexp:                                  // @ldexp
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		p0 = dfcmp.uo(r1:0,r1:0)
	}
	{
		if (p0) jump:nt .LBB88_9
	}
	{
		jump .LBB88_1
	}
.LBB88_1:
	{
		r3:2 = memd(r30+#-8)
	}
	{
		memd(r30+#-32) = r3:2
	}                                       // 8-byte Folded Spill
	{
		r1:0 = combine(r3,r2)
	}
	{
		call __hexagon_adddf3
	}
	{
		r3:2 = memd(r30+#-32)
	}                                       // 8-byte Folded Reload
	{
		p0 = dfcmp.eq(r1:0,r3:2)
	}
	{
		if (p0) jump:nt .LBB88_9
	}
	{
		jump .LBB88_2
	}
.LBB88_2:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.gt(r0,#-1)
	}
	{
		p0 = not(p0)
	}
	{
		r1:0 = CONST64(#4611686018427387904)
	}
	{
		r3 = r0
	}
	{
		r5:4 = CONST64(#4602678819172646912)
	}
	{
		r2 = r4
	}
	{
		r2 = mux(p0,r2,r3)
	}
	{
		r0 = r5
	}
	{
		r1 = mux(p0,r0,r1)
	}
	{
		r0 = r2
	}
	{
		memd(r30+#-24) = r1:0
	}
	{
		jump .LBB88_3
	}
.LBB88_3:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = r0
	}
	{
		r1 += lsr(r1,#31)
	}
	{
		r1 = clrbit(r1,#0)
	}
	{
		r0 = sub(r0,r1)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB88_5
	}
	{
		jump .LBB88_4
	}
.LBB88_4:                               //   in Loop: Header=BB88_3 Depth=1
	{
		r3:2 = memd(r30+#-24)
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		call __hexagon_muldf3
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB88_5
	}
.LBB88_5:                               //   in Loop: Header=BB88_3 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 += lsr(r0,#31)
	}
	{
		r0 = asr(r0,#1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB88_7
	}
	{
		jump .LBB88_6
	}
.LBB88_6:
	{
		jump .LBB88_8
	}
.LBB88_7:                               //   in Loop: Header=BB88_3 Depth=1
	{
		r3:2 = memd(r30+#-24)
	}
	{
		r1:0 = combine(r3,r2)
	}
	{
		call __hexagon_muldf3
	}
	{
		memd(r30+#-24) = r1:0
	}
	{
		jump .LBB88_3
	}
.LBB88_8:
	{
		jump .LBB88_9
	}
.LBB88_9:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end88:
	.size	ldexp, .Lfunc_end88-ldexp
                                        // -- End function
	.globl	ldexpl                          // -- Begin function ldexpl
	.p2align	4
	.type	ldexpl,@function
ldexpl:                                 // @ldexpl
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		p0 = dfcmp.uo(r1:0,r1:0)
	}
	{
		if (p0) jump:nt .LBB89_9
	}
	{
		jump .LBB89_1
	}
.LBB89_1:
	{
		r3:2 = memd(r30+#-8)
	}
	{
		memd(r30+#-32) = r3:2
	}                                       // 8-byte Folded Spill
	{
		r1:0 = combine(r3,r2)
	}
	{
		call __hexagon_adddf3
	}
	{
		r3:2 = memd(r30+#-32)
	}                                       // 8-byte Folded Reload
	{
		p0 = dfcmp.eq(r1:0,r3:2)
	}
	{
		if (p0) jump:nt .LBB89_9
	}
	{
		jump .LBB89_2
	}
.LBB89_2:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.gt(r0,#-1)
	}
	{
		p0 = not(p0)
	}
	{
		r1:0 = CONST64(#4611686018427387904)
	}
	{
		r3 = r0
	}
	{
		r5:4 = CONST64(#4602678819172646912)
	}
	{
		r2 = r4
	}
	{
		r2 = mux(p0,r2,r3)
	}
	{
		r0 = r5
	}
	{
		r1 = mux(p0,r0,r1)
	}
	{
		r0 = r2
	}
	{
		memd(r30+#-24) = r1:0
	}
	{
		jump .LBB89_3
	}
.LBB89_3:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = r0
	}
	{
		r1 += lsr(r1,#31)
	}
	{
		r1 = clrbit(r1,#0)
	}
	{
		r0 = sub(r0,r1)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB89_5
	}
	{
		jump .LBB89_4
	}
.LBB89_4:                               //   in Loop: Header=BB89_3 Depth=1
	{
		r3:2 = memd(r30+#-24)
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		call __hexagon_muldf3
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB89_5
	}
.LBB89_5:                               //   in Loop: Header=BB89_3 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 += lsr(r0,#31)
	}
	{
		r0 = asr(r0,#1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB89_7
	}
	{
		jump .LBB89_6
	}
.LBB89_6:
	{
		jump .LBB89_8
	}
.LBB89_7:                               //   in Loop: Header=BB89_3 Depth=1
	{
		r3:2 = memd(r30+#-24)
	}
	{
		r1:0 = combine(r3,r2)
	}
	{
		call __hexagon_muldf3
	}
	{
		memd(r30+#-24) = r1:0
	}
	{
		jump .LBB89_3
	}
.LBB89_8:
	{
		jump .LBB89_9
	}
.LBB89_9:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end89:
	.size	ldexpl, .Lfunc_end89-ldexpl
                                        // -- End function
	.globl	memxor                          // -- Begin function memxor
	.p2align	4
	.type	memxor,@function
memxor:                                 // @memxor
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		jump .LBB90_1
	}
.LBB90_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB90_4
	}
	{
		jump .LBB90_2
	}
.LBB90_2:                               //   in Loop: Header=BB90_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		r1 = add(r0,#1)
	}
	{
		memw(r30+#-16) = r1
	}
	{
		r2 = memub(r0+#0)
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r1 = add(r0,#1)
	}
	{
		memw(r30+#-20) = r1
	}
	{
		r1 = memub(r0+#0)
	}
	{
		r1 = xor(r1,r2)
	}
	{
		memb(r0+#0) = r1
	}
	{
		jump .LBB90_3
	}
.LBB90_3:                               //   in Loop: Header=BB90_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB90_1
	}
.LBB90_4:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end90:
	.size	memxor, .Lfunc_end90-memxor
                                        // -- End function
	.globl	strncat                         // -- Begin function strncat
	.p2align	4
	.type	strncat,@function
strncat:                                // @strncat
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memw(r30+#-12) = r0
	}
	{
		memw(r30+#-16) = r1
	}
	{
		memw(r30+#-20) = r2
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		call strlen
	}
	{
		r1 = r0
	}
	{
		r0 = memw(r30+#-28)
	}                                       // 4-byte Folded Reload
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-24) = r0
	}
	{
		jump .LBB91_1
	}
.LBB91_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-32) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB91_3
	}
	{
		jump .LBB91_2
	}
.LBB91_2:                               //   in Loop: Header=BB91_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = memb(r0+#0)
	}
	{
		r1 = memw(r30+#-24)
	}
	{
		memb(r1+#0) = r0
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-32) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB91_3
	}
.LBB91_3:                               //   in Loop: Header=BB91_1 Depth=1
	{
		r0 = memw(r30+#-32)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB91_6
	}
	{
		jump .LBB91_4
	}
.LBB91_4:                               //   in Loop: Header=BB91_1 Depth=1
	{
		jump .LBB91_5
	}
.LBB91_5:                               //   in Loop: Header=BB91_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memw(r30+#-24)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-24) = r0
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		jump .LBB91_1
	}
.LBB91_6:
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB91_8
	}
	{
		jump .LBB91_7
	}
.LBB91_7:
	{
		r0 = memw(r30+#-24)
	}
	{
		memb(r0+#0) = #0
	}
	{
		jump .LBB91_8
	}
.LBB91_8:
	{
		r0 = memw(r30+#-12)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end91:
	.size	strncat, .Lfunc_end91-strncat
                                        // -- End function
	.globl	strnlen                         // -- Begin function strnlen
	.p2align	4
	.type	strnlen,@function
strnlen:                                // @strnlen
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = add(r30,#-12)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB92_1
	}
.LBB92_1:                               // =>This Inner Loop Header: Depth=1
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB92_3
	}
	{
		jump .LBB92_2
	}
.LBB92_2:                               //   in Loop: Header=BB92_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memb(r0+r1<<#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB92_3
	}
.LBB92_3:                               //   in Loop: Header=BB92_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB92_6
	}
	{
		jump .LBB92_4
	}
.LBB92_4:                               //   in Loop: Header=BB92_1 Depth=1
	{
		jump .LBB92_5
	}
.LBB92_5:                               //   in Loop: Header=BB92_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB92_1
	}
.LBB92_6:
	{
		r0 = memw(r30+#-12)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end92:
	.size	strnlen, .Lfunc_end92-strnlen
                                        // -- End function
	.globl	strpbrk                         // -- Begin function strpbrk
	.p2align	4
	.type	strpbrk,@function
strpbrk:                                // @strpbrk
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		jump .LBB93_1
	}
.LBB93_1:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB93_3 Depth 2
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = memb(r0+#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB93_8
	}
	{
		jump .LBB93_2
	}
.LBB93_2:                               //   in Loop: Header=BB93_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		jump .LBB93_3
	}
.LBB93_3:                               //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = memb(r0+#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB93_7
	}
	{
		jump .LBB93_4
	}
.LBB93_4:                               //   in Loop: Header=BB93_3 Depth=2
	{
		r0 = memw(r30+#-16)
	}
	{
		r1 = add(r0,#1)
	}
	{
		memw(r30+#-16) = r1
	}
	{
		r0 = memub(r0+#0)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		r1 = memub(r1+#0)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB93_6
	}
	{
		jump .LBB93_5
	}
.LBB93_5:
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB93_9
	}
.LBB93_6:                               //   in Loop: Header=BB93_3 Depth=2
	{
		jump .LBB93_3
	}
.LBB93_7:                               //   in Loop: Header=BB93_1 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB93_1
	}
.LBB93_8:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB93_9
	}
.LBB93_9:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end93:
	.size	strpbrk, .Lfunc_end93-strpbrk
                                        // -- End function
	.globl	strrchr                         // -- Begin function strrchr
	.p2align	4
	.type	strrchr,@function
strrchr:                                // @strrchr
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = add(r30,#-12)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB94_1
	}
.LBB94_1:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB94_3
	}
	{
		jump .LBB94_2
	}
.LBB94_2:                               //   in Loop: Header=BB94_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB94_3
	}
.LBB94_3:                               //   in Loop: Header=BB94_1 Depth=1
	{
		jump .LBB94_4
	}
.LBB94_4:                               //   in Loop: Header=BB94_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r1 = add(r0,#1)
	}
	{
		memw(r30+#-4) = r1
	}
	{
		r0 = memb(r0+#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB94_1
	}
	{
		jump .LBB94_5
	}
.LBB94_5:
	{
		r0 = memw(r30+#-12)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end94:
	.size	strrchr, .Lfunc_end94-strrchr
                                        // -- End function
	.globl	strstr                          // -- Begin function strstr
	.p2align	4
	.type	strstr,@function
strstr:                                 // @strstr
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		call strlen
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB95_2
	}
	{
		jump .LBB95_1
	}
.LBB95_1:
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB95_9
	}
.LBB95_2:
	{
		jump .LBB95_3
	}
.LBB95_3:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r1 = memub(r1+#0)
	}
	{
		call strchr
	}
	{
		memw(r30+#-16) = r0
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB95_8
	}
	{
		jump .LBB95_4
	}
.LBB95_4:                               //   in Loop: Header=BB95_3 Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r2 = memw(r30+#-20)
	}
	{
		call strncmp
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB95_6
	}
	{
		jump .LBB95_5
	}
.LBB95_5:
	{
		r0 = memw(r30+#-16)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB95_9
	}
.LBB95_6:                               //   in Loop: Header=BB95_3 Depth=1
	{
		jump .LBB95_7
	}
.LBB95_7:                               //   in Loop: Header=BB95_3 Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		jump .LBB95_3
	}
.LBB95_8:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB95_9
	}
.LBB95_9:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end95:
	.size	strstr, .Lfunc_end95-strstr
                                        // -- End function
	.globl	copysign                        // -- Begin function copysign
	.p2align	4
	.type	copysign,@function
copysign:                               // @copysign
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		memd(r30+#-24) = r3:2
	}
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r3:2 = CONST64(#0)
	}
	{
		p1 = dfcmp.ge(r1:0,r3:2)
	}
	{
		p0 = dfcmp.uo(r1:0,r3:2)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB96_2
	}
	{
		jump .LBB96_1
	}
.LBB96_1:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		r3:2 = CONST64(#0)
	}
	{
		p0 = dfcmp.gt(r1:0,r3:2)
	}
	{
		if (p0) jump:nt .LBB96_4
	}
	{
		jump .LBB96_2
	}
.LBB96_2:
	{
		r3:2 = memd(r30+#-16)
	}
	{
		r1:0 = CONST64(#0)
	}
	{
		p1 = dfcmp.ge(r1:0,r3:2)
	}
	{
		p0 = dfcmp.uo(r1:0,r3:2)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB96_5
	}
	{
		jump .LBB96_3
	}
.LBB96_3:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		r3:2 = CONST64(#0)
	}
	{
		p1 = dfcmp.ge(r1:0,r3:2)
	}
	{
		p0 = dfcmp.uo(r1:0,r3:2)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB96_5
	}
	{
		jump .LBB96_4
	}
.LBB96_4:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r2 = r0
	}
	{
		r0 = r1
	}
	{
		r1 = togglebit(r0,#31)
	}
	{
		r0 = r2
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB96_6
	}
.LBB96_5:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB96_6
	}
.LBB96_6:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end96:
	.size	copysign, .Lfunc_end96-copysign
                                        // -- End function
	.globl	memmem                          // -- Begin function memmem
	.p2align	4
	.type	memmem,@function
memmem:                                 // @memmem
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		memw(r30+#-16) = r2
	}
	{
		memw(r30+#-20) = r3
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = add(r0,r1)
	}
	{
		r1 = memw(r30+#-20)
	}
	{
		r0 = sub(r0,r1)
	}
	{
		memw(r30+#-28) = r0
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB97_2
	}
	{
		jump .LBB97_1
	}
.LBB97_1:
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB97_12
	}
.LBB97_2:
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB97_4
	}
	{
		jump .LBB97_3
	}
.LBB97_3:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB97_12
	}
.LBB97_4:
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-24) = r0
	}
	{
		jump .LBB97_5
	}
.LBB97_5:                               // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-24)
	}
	{
		r1 = memw(r30+#-28)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		if (p0) jump:nt .LBB97_11
	}
	{
		jump .LBB97_6
	}
.LBB97_6:                               //   in Loop: Header=BB97_5 Depth=1
	{
		r0 = memw(r30+#-24)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		r1 = memw(r30+#-16)
	}
	{
		r1 = memub(r1+#0)
	}
	{
		p0 = cmp.eq(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB97_9
	}
	{
		jump .LBB97_7
	}
.LBB97_7:                               //   in Loop: Header=BB97_5 Depth=1
	{
		r0 = memw(r30+#-24)
	}
	{
		r0 = add(r0,#1)
	}
	{
		r1 = memw(r30+#-16)
	}
	{
		r1 = add(r1,#1)
	}
	{
		r2 = memw(r30+#-20)
	}
	{
		r2 = add(r2,#-1)
	}
	{
		call memcmp
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB97_9
	}
	{
		jump .LBB97_8
	}
.LBB97_8:
	{
		r0 = memw(r30+#-24)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB97_12
	}
.LBB97_9:                               //   in Loop: Header=BB97_5 Depth=1
	{
		jump .LBB97_10
	}
.LBB97_10:                              //   in Loop: Header=BB97_5 Depth=1
	{
		r0 = memw(r30+#-24)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-24) = r0
	}
	{
		jump .LBB97_5
	}
.LBB97_11:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB97_12
	}
.LBB97_12:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end97:
	.size	memmem, .Lfunc_end97-memmem
                                        // -- End function
	.globl	mempcpy                         // -- Begin function mempcpy
	.p2align	4
	.type	mempcpy,@function
mempcpy:                                // @mempcpy
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		r1 = memw(r30+#-8)
	}
	{
		r2 = memw(r30+#-12)
	}
	{
		call memcpy
	}
	{
		r1 = r0
	}
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = add(r0,r1)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end98:
	.size	mempcpy, .Lfunc_end98-mempcpy
                                        // -- End function
	.globl	frexp                           // -- Begin function frexp
	.p2align	4
	.type	frexp,@function
frexp:                                  // @frexp
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r0 = add(r30,#-20)
	}
	{
		memw(r0+#0) = #0
	}
	{
		r0 = add(r30,#-16)
	}
	{
		memw(r0+#0) = #0
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r3:2 = CONST64(#0)
	}
	{
		p1 = dfcmp.ge(r1:0,r3:2)
	}
	{
		p0 = dfcmp.uo(r1:0,r3:2)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB99_2
	}
	{
		jump .LBB99_1
	}
.LBB99_1:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r2 = r0
	}
	{
		r0 = r1
	}
	{
		r1 = togglebit(r0,#31)
	}
	{
		r0 = r2
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		r0 = add(r30,#-16)
	}
	{
		memw(r0+#0) = #1
	}
	{
		jump .LBB99_2
	}
.LBB99_2:
	{
		r3:2 = memd(r30+#-8)
	}
	{
		r1:0 = CONST64(#4607182418800017408)
	}
	{
		p1 = dfcmp.gt(r1:0,r3:2)
	}
	{
		p0 = dfcmp.uo(r1:0,r3:2)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB99_7
	}
	{
		jump .LBB99_3
	}
.LBB99_3:
	{
		jump .LBB99_4
	}
.LBB99_4:                               // =>This Inner Loop Header: Depth=1
	{
		r3:2 = memd(r30+#-8)
	}
	{
		r1:0 = CONST64(#4607182418800017408)
	}
	{
		p1 = dfcmp.gt(r1:0,r3:2)
	}
	{
		p0 = dfcmp.uo(r1:0,r3:2)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB99_6
	}
	{
		jump .LBB99_5
	}
.LBB99_5:                               //   in Loop: Header=BB99_4 Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r3:2 = CONST64(#4602678819172646912)
	}
	{
		call __hexagon_muldf3
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB99_4
	}
.LBB99_6:
	{
		jump .LBB99_14
	}
.LBB99_7:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r3:2 = CONST64(#4602678819172646912)
	}
	{
		p1 = dfcmp.ge(r1:0,r3:2)
	}
	{
		p0 = dfcmp.uo(r1:0,r3:2)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB99_13
	}
	{
		jump .LBB99_8
	}
.LBB99_8:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r3:2 = CONST64(#0)
	}
	{
		p0 = dfcmp.eq(r1:0,r3:2)
	}
	{
		if (p0) jump:nt .LBB99_13
	}
	{
		jump .LBB99_9
	}
.LBB99_9:
	{
		jump .LBB99_10
	}
.LBB99_10:                              // =>This Inner Loop Header: Depth=1
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r3:2 = CONST64(#4602678819172646912)
	}
	{
		p1 = dfcmp.ge(r1:0,r3:2)
	}
	{
		p0 = dfcmp.uo(r1:0,r3:2)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB99_12
	}
	{
		jump .LBB99_11
	}
.LBB99_11:                              //   in Loop: Header=BB99_10 Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r3:2 = memd(r30+#-8)
	}
	{
		r1:0 = combine(r3,r2)
	}
	{
		call __hexagon_adddf3
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB99_10
	}
.LBB99_12:
	{
		jump .LBB99_13
	}
.LBB99_13:
	{
		jump .LBB99_14
	}
.LBB99_14:
	{
		r1 = memw(r30+#-20)
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r0+#0) = r1
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB99_16
	}
	{
		jump .LBB99_15
	}
.LBB99_15:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r2 = r0
	}
	{
		r0 = r1
	}
	{
		r1 = togglebit(r0,#31)
	}
	{
		r0 = r2
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB99_16
	}
.LBB99_16:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end99:
	.size	frexp, .Lfunc_end99-frexp
                                        // -- End function
	.globl	__muldi3                        // -- Begin function __muldi3
	.p2align	4
	.type	__muldi3,@function
__muldi3:                               // @__muldi3
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		memd(r30+#-16) = r3:2
	}
	{
		r1:0 = combine(#0,#0)
	}
	{
		memd(r30+#-24) = r1:0
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		memd(r30+#-32) = r1:0
	}
	{
		jump .LBB100_1
	}
.LBB100_1:                              // =>This Inner Loop Header: Depth=1
	{
		r1:0 = memd(r30+#-32)
	}
	{
		r3:2 = combine(#0,#0)
	}
	{
		p0 = cmp.eq(r1:0,r3:2)
	}
	{
		if (p0) jump:nt .LBB100_5
	}
	{
		jump .LBB100_2
	}
.LBB100_2:                              //   in Loop: Header=BB100_1 Depth=1
	{
		r1:0 = memd(r30+#-32)
	}
	{
		p0 = tstbit(r0,#0)
	}
	{
		if (!p0) jump:nt .LBB100_4
	}
	{
		jump .LBB100_3
	}
.LBB100_3:                              //   in Loop: Header=BB100_1 Depth=1
	{
		r3:2 = memd(r30+#-16)
	}
	{
		r1:0 = memd(r30+#-24)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(r30+#-24) = r1:0
	}
	{
		jump .LBB100_4
	}
.LBB100_4:                              //   in Loop: Header=BB100_1 Depth=1
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r1:0 = asl(r1:0,#1)
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		r1:0 = memd(r30+#-32)
	}
	{
		r1:0 = lsr(r1:0,#1)
	}
	{
		memd(r30+#-32) = r1:0
	}
	{
		jump .LBB100_1
	}
.LBB100_5:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end100:
	.size	__muldi3, .Lfunc_end100-__muldi3
                                        // -- End function
	.globl	udivmodsi4                      // -- Begin function udivmodsi4
	.p2align	4
	.type	udivmodsi4,@function
udivmodsi4:                             // @udivmodsi4
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		memw(r30+#-16) = r2
	}
	{
		r0 = add(r30,#-20)
	}
	{
		memw(r0+#0) = #1
	}
	{
		r0 = add(r30,#-24)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB101_1
	}
.LBB101_1:                              // =>This Inner Loop Header: Depth=1
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB101_4
	}
	{
		jump .LBB101_2
	}
.LBB101_2:                              //   in Loop: Header=BB101_1 Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB101_4
	}
	{
		jump .LBB101_3
	}
.LBB101_3:                              //   in Loop: Header=BB101_1 Depth=1
	{
		r0 = memub(r30+#-9)
	}
	{
		p0 = !tstbit(r0,#7)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB101_4
	}
.LBB101_4:                              //   in Loop: Header=BB101_1 Depth=1
	{
		r0 = memw(r30+#-28)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB101_6
	}
	{
		jump .LBB101_5
	}
.LBB101_5:                              //   in Loop: Header=BB101_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = asl(r0,#1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = asl(r0,#1)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		jump .LBB101_1
	}
.LBB101_6:
	{
		jump .LBB101_7
	}
.LBB101_7:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB101_11
	}
	{
		jump .LBB101_8
	}
.LBB101_8:                              //   in Loop: Header=BB101_7 Depth=1
	{
		r1 = memw(r30+#-8)
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		if (p0) jump:nt .LBB101_10
	}
	{
		jump .LBB101_9
	}
.LBB101_9:                              //   in Loop: Header=BB101_7 Depth=1
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = sub(r0,r1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r1 = memw(r30+#-20)
	}
	{
		r0 = memw(r30+#-24)
	}
	{
		r0 = or(r0,r1)
	}
	{
		memw(r30+#-24) = r0
	}
	{
		jump .LBB101_10
	}
.LBB101_10:                             //   in Loop: Header=BB101_7 Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = lsr(r0,#1)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = lsr(r0,#1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB101_7
	}
.LBB101_11:
	{
		r0 = memw(r30+#-16)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB101_13
	}
	{
		jump .LBB101_12
	}
.LBB101_12:
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB101_14
	}
.LBB101_13:
	{
		r0 = memw(r30+#-24)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB101_14
	}
.LBB101_14:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end101:
	.size	udivmodsi4, .Lfunc_end101-udivmodsi4
                                        // -- End function
	.globl	__clrsbqi2                      // -- Begin function __clrsbqi2
	.p2align	4
	.type	__clrsbqi2,@function
__clrsbqi2:                             // @__clrsbqi2
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		r1 = r0
	}
	{
		memb(r30+#-5) = r0
	}
	{
		p0 = or(p0,!p0)
	}
	{
		if (p0) jump:nt .LBB102_2
	}
	{
		jump .LBB102_1
	}
.LBB102_1:
	{
		r0 = memub(r30+#-5)
	}
	{
		r0 = sub(#-1,r0)
	}
	{
		memb(r30+#-5) = r0
	}
	{
		jump .LBB102_2
	}
.LBB102_2:
	{
		r0 = memb(r30+#-5)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB102_4
	}
	{
		jump .LBB102_3
	}
.LBB102_3:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #7
	}
	{
		jump .LBB102_5
	}
.LBB102_4:
	{
		r0 = memub(r30+#-5)
	}
	{
		r0 = asl(r0,#8)
	}
	{
		r0 = cl0(r0)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB102_5
	}
.LBB102_5:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end102:
	.size	__clrsbqi2, .Lfunc_end102-__clrsbqi2
                                        // -- End function
	.globl	__clrsbdi2                      // -- Begin function __clrsbdi2
	.p2align	4
	.type	__clrsbdi2,@function
__clrsbdi2:                             // @__clrsbdi2
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r3:2 = combine(#-1,#-1)
	}
	{
		p0 = cmp.gt(r1:0,r3:2)
	}
	{
		if (p0) jump:nt .LBB103_2
	}
	{
		jump .LBB103_1
	}
.LBB103_1:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r1:0 = not(r1:0)
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		jump .LBB103_2
	}
.LBB103_2:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r3:2 = combine(#0,#0)
	}
	{
		p0 = cmp.eq(r1:0,r3:2)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB103_4
	}
	{
		jump .LBB103_3
	}
.LBB103_3:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #63
	}
	{
		jump .LBB103_5
	}
.LBB103_4:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r0 = cl0(r1:0)
	}
	{
		r1:0 = combine(#0,r0)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = add(r0,#-1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB103_5
	}
.LBB103_5:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end103:
	.size	__clrsbdi2, .Lfunc_end103-__clrsbdi2
                                        // -- End function
	.globl	__mulsi3                        // -- Begin function __mulsi3
	.p2align	4
	.type	__mulsi3,@function
__mulsi3:                               // @__mulsi3
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = add(r30,#-12)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB104_1
	}
.LBB104_1:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB104_5
	}
	{
		jump .LBB104_2
	}
.LBB104_2:                              //   in Loop: Header=BB104_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		p0 = tstbit(r0,#0)
	}
	{
		if (!p0) jump:nt .LBB104_4
	}
	{
		jump .LBB104_3
	}
.LBB104_3:                              //   in Loop: Header=BB104_1 Depth=1
	{
		r1 = memw(r30+#-8)
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB104_4
	}
.LBB104_4:                              //   in Loop: Header=BB104_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = lsr(r0,#1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = asl(r0,#1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB104_1
	}
.LBB104_5:
	{
		r0 = memw(r30+#-12)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end104:
	.size	__mulsi3, .Lfunc_end104-__mulsi3
                                        // -- End function
	.globl	__cmovd                         // -- Begin function __cmovd
	.p2align	4
	.type	__cmovd,@function
__cmovd:                                // @__cmovd
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = lsr(r0,#3)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = and(r0,#-8)
	}
	{
		memw(r30+#-24) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-28) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-32) = r0
	}
	{
		r1 = memw(r30+#-28)
	}
	{
		r0 = memw(r30+#-32)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		if (p0) jump:nt .LBB105_2
	}
	{
		jump .LBB105_1
	}
.LBB105_1:
	{
		r0 = memw(r30+#-28)
	}
	{
		r1 = memw(r30+#-32)
	}
	{
		r2 = memw(r30+#-12)
	}
	{
		r1 = add(r1,r2)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB105_10
	}
	{
		jump .LBB105_2
	}
.LBB105_2:
	{
		r0 = add(r30,#-16)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB105_3
	}
.LBB105_3:                              // =>This Inner Loop Header: Depth=1
	{
		r1 = memw(r30+#-16)
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB105_6
	}
	{
		jump .LBB105_4
	}
.LBB105_4:                              //   in Loop: Header=BB105_3 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = memw(r30+#-16)
	}
	{
		r3:2 = memd(r0+r1<<#3)
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memd(r0+r1<<#3) = r3:2
	}
	{
		jump .LBB105_5
	}
.LBB105_5:                              //   in Loop: Header=BB105_3 Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		jump .LBB105_3
	}
.LBB105_6:
	{
		jump .LBB105_7
	}
.LBB105_7:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = memw(r30+#-24)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB105_9
	}
	{
		jump .LBB105_8
	}
.LBB105_8:                              //   in Loop: Header=BB105_7 Depth=1
	{
		r0 = memw(r30+#-32)
	}
	{
		r1 = memw(r30+#-24)
	}
	{
		r2 = memub(r0+r1<<#0)
	}
	{
		r0 = memw(r30+#-28)
	}
	{
		memb(r0+r1<<#0) = r2
	}
	{
		r0 = memw(r30+#-24)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-24) = r0
	}
	{
		jump .LBB105_7
	}
.LBB105_9:
	{
		jump .LBB105_14
	}
.LBB105_10:
	{
		jump .LBB105_11
	}
.LBB105_11:                             // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = add(r0,#-1)
	}
	{
		memw(r30+#-12) = r1
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB105_13
	}
	{
		jump .LBB105_12
	}
.LBB105_12:                             //   in Loop: Header=BB105_11 Depth=1
	{
		r0 = memw(r30+#-32)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r2 = memub(r0+r1<<#0)
	}
	{
		r0 = memw(r30+#-28)
	}
	{
		memb(r0+r1<<#0) = r2
	}
	{
		jump .LBB105_11
	}
.LBB105_13:
	{
		jump .LBB105_14
	}
.LBB105_14:
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end105:
	.size	__cmovd, .Lfunc_end105-__cmovd
                                        // -- End function
	.globl	__cmovh                         // -- Begin function __cmovh
	.p2align	4
	.type	__cmovh,@function
__cmovh:                                // @__cmovh
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = lsr(r0,#1)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-24) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-28) = r0
	}
	{
		r1 = memw(r30+#-24)
	}
	{
		r0 = memw(r30+#-28)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		if (p0) jump:nt .LBB106_2
	}
	{
		jump .LBB106_1
	}
.LBB106_1:
	{
		r0 = memw(r30+#-24)
	}
	{
		r1 = memw(r30+#-28)
	}
	{
		r2 = memw(r30+#-12)
	}
	{
		r1 = add(r1,r2)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB106_9
	}
	{
		jump .LBB106_2
	}
.LBB106_2:
	{
		r0 = add(r30,#-16)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB106_3
	}
.LBB106_3:                              // =>This Inner Loop Header: Depth=1
	{
		r1 = memw(r30+#-16)
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB106_6
	}
	{
		jump .LBB106_4
	}
.LBB106_4:                              //   in Loop: Header=BB106_3 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = memw(r30+#-16)
	}
	{
		r2 = memuh(r0+r1<<#1)
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memh(r0+r1<<#1) = r2
	}
	{
		jump .LBB106_5
	}
.LBB106_5:                              //   in Loop: Header=BB106_3 Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		jump .LBB106_3
	}
.LBB106_6:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = tstbit(r0,#0)
	}
	{
		if (!p0) jump:nt .LBB106_8
	}
	{
		jump .LBB106_7
	}
.LBB106_7:
	{
		r0 = memw(r30+#-28)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r1 = add(r1,#-1)
	}
	{
		r2 = memub(r0+r1<<#0)
	}
	{
		r0 = memw(r30+#-24)
	}
	{
		memb(r0+r1<<#0) = r2
	}
	{
		jump .LBB106_8
	}
.LBB106_8:
	{
		jump .LBB106_13
	}
.LBB106_9:
	{
		jump .LBB106_10
	}
.LBB106_10:                             // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = add(r0,#-1)
	}
	{
		memw(r30+#-12) = r1
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB106_12
	}
	{
		jump .LBB106_11
	}
.LBB106_11:                             //   in Loop: Header=BB106_10 Depth=1
	{
		r0 = memw(r30+#-28)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r2 = memub(r0+r1<<#0)
	}
	{
		r0 = memw(r30+#-24)
	}
	{
		memb(r0+r1<<#0) = r2
	}
	{
		jump .LBB106_10
	}
.LBB106_12:
	{
		jump .LBB106_13
	}
.LBB106_13:
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end106:
	.size	__cmovh, .Lfunc_end106-__cmovh
                                        // -- End function
	.globl	__cmovw                         // -- Begin function __cmovw
	.p2align	4
	.type	__cmovw,@function
__cmovw:                                // @__cmovw
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = lsr(r0,#2)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = and(r0,#-4)
	}
	{
		memw(r30+#-24) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-28) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-32) = r0
	}
	{
		r1 = memw(r30+#-28)
	}
	{
		r0 = memw(r30+#-32)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		if (p0) jump:nt .LBB107_2
	}
	{
		jump .LBB107_1
	}
.LBB107_1:
	{
		r0 = memw(r30+#-28)
	}
	{
		r1 = memw(r30+#-32)
	}
	{
		r2 = memw(r30+#-12)
	}
	{
		r1 = add(r1,r2)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB107_10
	}
	{
		jump .LBB107_2
	}
.LBB107_2:
	{
		r0 = add(r30,#-16)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB107_3
	}
.LBB107_3:                              // =>This Inner Loop Header: Depth=1
	{
		r1 = memw(r30+#-16)
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB107_6
	}
	{
		jump .LBB107_4
	}
.LBB107_4:                              //   in Loop: Header=BB107_3 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = memw(r30+#-16)
	}
	{
		r2 = memw(r0+r1<<#2)
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r0+r1<<#2) = r2
	}
	{
		jump .LBB107_5
	}
.LBB107_5:                              //   in Loop: Header=BB107_3 Depth=1
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		jump .LBB107_3
	}
.LBB107_6:
	{
		jump .LBB107_7
	}
.LBB107_7:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = memw(r30+#-24)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB107_9
	}
	{
		jump .LBB107_8
	}
.LBB107_8:                              //   in Loop: Header=BB107_7 Depth=1
	{
		r0 = memw(r30+#-32)
	}
	{
		r1 = memw(r30+#-24)
	}
	{
		r2 = memub(r0+r1<<#0)
	}
	{
		r0 = memw(r30+#-28)
	}
	{
		memb(r0+r1<<#0) = r2
	}
	{
		r0 = memw(r30+#-24)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-24) = r0
	}
	{
		jump .LBB107_7
	}
.LBB107_9:
	{
		jump .LBB107_14
	}
.LBB107_10:
	{
		jump .LBB107_11
	}
.LBB107_11:                             // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = add(r0,#-1)
	}
	{
		memw(r30+#-12) = r1
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB107_13
	}
	{
		jump .LBB107_12
	}
.LBB107_12:                             //   in Loop: Header=BB107_11 Depth=1
	{
		r0 = memw(r30+#-32)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r2 = memub(r0+r1<<#0)
	}
	{
		r0 = memw(r30+#-28)
	}
	{
		memb(r0+r1<<#0) = r2
	}
	{
		jump .LBB107_11
	}
.LBB107_13:
	{
		jump .LBB107_14
	}
.LBB107_14:
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end107:
	.size	__cmovw, .Lfunc_end107-__cmovw
                                        // -- End function
	.globl	__modi                          // -- Begin function __modi
	.p2align	4
	.type	__modi,@function
__modi:                                 // @__modi
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		call __hexagon_modsi3
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end108:
	.size	__modi, .Lfunc_end108-__modi
                                        // -- End function
	.globl	__uitod                         // -- Begin function __uitod
	.p2align	4
	.type	__uitod,@function
__uitod:                                // @__uitod
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r1:0 = convert_uw2df(r0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end109:
	.size	__uitod, .Lfunc_end109-__uitod
                                        // -- End function
	.globl	__uitof                         // -- Begin function __uitof
	.p2align	4
	.type	__uitof,@function
__uitof:                                // @__uitof
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = convert_uw2sf(r0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end110:
	.size	__uitof, .Lfunc_end110-__uitof
                                        // -- End function
	.globl	__ulltod                        // -- Begin function __ulltod
	.p2align	4
	.type	__ulltod,@function
__ulltod:                               // @__ulltod
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r1:0 = convert_ud2df(r1:0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end111:
	.size	__ulltod, .Lfunc_end111-__ulltod
                                        // -- End function
	.globl	__ulltof                        // -- Begin function __ulltof
	.p2align	4
	.type	__ulltof,@function
__ulltof:                               // @__ulltof
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r0 = convert_ud2sf(r1:0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end112:
	.size	__ulltof, .Lfunc_end112-__ulltof
                                        // -- End function
	.globl	__umodi                         // -- Begin function __umodi
	.p2align	4
	.type	__umodi,@function
__umodi:                                // @__umodi
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		call __hexagon_umodsi3
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end113:
	.size	__umodi, .Lfunc_end113-__umodi
                                        // -- End function
	.globl	__clzhi2                        // -- Begin function __clzhi2
	.p2align	4
	.type	__clzhi2,@function
__clzhi2:                               // @__clzhi2
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		r1 = r0
	}
	{
		memh(r30+#-2) = r0
	}
	{
		r0 = add(r30,#-8)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB114_1
	}
.LBB114_1:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.gt(r0,#15)
	}
	{
		if (p0) jump:nt .LBB114_6
	}
	{
		jump .LBB114_2
	}
.LBB114_2:                              //   in Loop: Header=BB114_1 Depth=1
	{
		r0 = memuh(r30+#-2)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		r1 = sub(#15,r1)
	}
	{
		p0 = !tstbit(r0,r1)
	}
	{
		if (p0) jump:nt .LBB114_4
	}
	{
		jump .LBB114_3
	}
.LBB114_3:
	{
		jump .LBB114_6
	}
.LBB114_4:                              //   in Loop: Header=BB114_1 Depth=1
	{
		jump .LBB114_5
	}
.LBB114_5:                              //   in Loop: Header=BB114_1 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB114_1
	}
.LBB114_6:
	{
		r0 = memw(r30+#-8)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end114:
	.size	__clzhi2, .Lfunc_end114-__clzhi2
                                        // -- End function
	.globl	__ctzhi2                        // -- Begin function __ctzhi2
	.p2align	4
	.type	__ctzhi2,@function
__ctzhi2:                               // @__ctzhi2
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		r1 = r0
	}
	{
		memh(r30+#-2) = r0
	}
	{
		r0 = add(r30,#-8)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB115_1
	}
.LBB115_1:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.gt(r0,#15)
	}
	{
		if (p0) jump:nt .LBB115_6
	}
	{
		jump .LBB115_2
	}
.LBB115_2:                              //   in Loop: Header=BB115_1 Depth=1
	{
		r0 = memuh(r30+#-2)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		p0 = !tstbit(r0,r1)
	}
	{
		if (p0) jump:nt .LBB115_4
	}
	{
		jump .LBB115_3
	}
.LBB115_3:
	{
		jump .LBB115_6
	}
.LBB115_4:                              //   in Loop: Header=BB115_1 Depth=1
	{
		jump .LBB115_5
	}
.LBB115_5:                              //   in Loop: Header=BB115_1 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB115_1
	}
.LBB115_6:
	{
		r0 = memw(r30+#-8)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end115:
	.size	__ctzhi2, .Lfunc_end115-__ctzhi2
                                        // -- End function
	.globl	__fixunssfsi                    // -- Begin function __fixunssfsi
	.p2align	4
	.type	__fixunssfsi,@function
__fixunssfsi:                           // @__fixunssfsi
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		r0 = ##1191182336
	}
	{
		p1 = sfcmp.gt(r0,r1)
	}
	{
		p0 = sfcmp.uo(r0,r1)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB116_2
	}
	{
		jump .LBB116_1
	}
.LBB116_1:
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = ##-956301312
	}
	{
		r0 = sfadd(r0,r1)
	}
	{
		r0 = convert_sf2w(r0):chop
	}
	{
		r0 = add(r0,##32768)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB116_3
	}
.LBB116_2:
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = convert_sf2w(r0):chop
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB116_3
	}
.LBB116_3:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end116:
	.size	__fixunssfsi, .Lfunc_end116-__fixunssfsi
                                        // -- End function
	.globl	__parityhi2                     // -- Begin function __parityhi2
	.p2align	4
	.type	__parityhi2,@function
__parityhi2:                            // @__parityhi2
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		r1 = r0
	}
	{
		memh(r30+#-2) = r0
	}
	{
		r0 = add(r30,#-12)
	}
	{
		memw(r0+#0) = #0
	}
	{
		r0 = add(r30,#-8)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB117_1
	}
.LBB117_1:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.gt(r0,#15)
	}
	{
		if (p0) jump:nt .LBB117_6
	}
	{
		jump .LBB117_2
	}
.LBB117_2:                              //   in Loop: Header=BB117_1 Depth=1
	{
		r0 = memuh(r30+#-2)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		p0 = !tstbit(r0,r1)
	}
	{
		if (p0) jump:nt .LBB117_4
	}
	{
		jump .LBB117_3
	}
.LBB117_3:                              //   in Loop: Header=BB117_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB117_4
	}
.LBB117_4:                              //   in Loop: Header=BB117_1 Depth=1
	{
		jump .LBB117_5
	}
.LBB117_5:                              //   in Loop: Header=BB117_1 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB117_1
	}
.LBB117_6:
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = and(r0,#1)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end117:
	.size	__parityhi2, .Lfunc_end117-__parityhi2
                                        // -- End function
	.globl	__popcounthi2                   // -- Begin function __popcounthi2
	.p2align	4
	.type	__popcounthi2,@function
__popcounthi2:                          // @__popcounthi2
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		r1 = r0
	}
	{
		memh(r30+#-2) = r0
	}
	{
		r0 = add(r30,#-12)
	}
	{
		memw(r0+#0) = #0
	}
	{
		r0 = add(r30,#-8)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB118_1
	}
.LBB118_1:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.gt(r0,#15)
	}
	{
		if (p0) jump:nt .LBB118_6
	}
	{
		jump .LBB118_2
	}
.LBB118_2:                              //   in Loop: Header=BB118_1 Depth=1
	{
		r0 = memuh(r30+#-2)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		p0 = !tstbit(r0,r1)
	}
	{
		if (p0) jump:nt .LBB118_4
	}
	{
		jump .LBB118_3
	}
.LBB118_3:                              //   in Loop: Header=BB118_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB118_4
	}
.LBB118_4:                              //   in Loop: Header=BB118_1 Depth=1
	{
		jump .LBB118_5
	}
.LBB118_5:                              //   in Loop: Header=BB118_1 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB118_1
	}
.LBB118_6:
	{
		r0 = memw(r30+#-12)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end118:
	.size	__popcounthi2, .Lfunc_end118-__popcounthi2
                                        // -- End function
	.globl	__mulsi3_iq2000                 // -- Begin function __mulsi3_iq2000
	.p2align	4
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        // @__mulsi3_iq2000
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = add(r30,#-12)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB119_1
	}
.LBB119_1:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB119_5
	}
	{
		jump .LBB119_2
	}
.LBB119_2:                              //   in Loop: Header=BB119_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		p0 = tstbit(r0,#0)
	}
	{
		if (!p0) jump:nt .LBB119_4
	}
	{
		jump .LBB119_3
	}
.LBB119_3:                              //   in Loop: Header=BB119_1 Depth=1
	{
		r1 = memw(r30+#-8)
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB119_4
	}
.LBB119_4:                              //   in Loop: Header=BB119_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = lsr(r0,#1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = asl(r0,#1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB119_1
	}
.LBB119_5:
	{
		r0 = memw(r30+#-12)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end119:
	.size	__mulsi3_iq2000, .Lfunc_end119-__mulsi3_iq2000
                                        // -- End function
	.globl	__mulsi3_lm32                   // -- Begin function __mulsi3_lm32
	.p2align	4
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          // @__mulsi3_lm32
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		r0 = add(r30,#-16)
	}
	{
		memw(r0+#0) = #0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB120_2
	}
	{
		jump .LBB120_1
	}
.LBB120_1:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB120_8
	}
.LBB120_2:
	{
		jump .LBB120_3
	}
.LBB120_3:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB120_7
	}
	{
		jump .LBB120_4
	}
.LBB120_4:                              //   in Loop: Header=BB120_3 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = tstbit(r0,#0)
	}
	{
		if (!p0) jump:nt .LBB120_6
	}
	{
		jump .LBB120_5
	}
.LBB120_5:                              //   in Loop: Header=BB120_3 Depth=1
	{
		r1 = memw(r30+#-8)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		jump .LBB120_6
	}
.LBB120_6:                              //   in Loop: Header=BB120_3 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = asl(r0,#1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = lsr(r0,#1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB120_3
	}
.LBB120_7:
	{
		r0 = memw(r30+#-16)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB120_8
	}
.LBB120_8:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end120:
	.size	__mulsi3_lm32, .Lfunc_end120-__mulsi3_lm32
                                        // -- End function
	.globl	__udivmodsi4                    // -- Begin function __udivmodsi4
	.p2align	4
	.type	__udivmodsi4,@function
__udivmodsi4:                           // @__udivmodsi4
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		memw(r30+#-16) = r2
	}
	{
		r0 = add(r30,#-20)
	}
	{
		memw(r0+#0) = #1
	}
	{
		r0 = add(r30,#-24)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB121_1
	}
.LBB121_1:                              // =>This Inner Loop Header: Depth=1
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB121_4
	}
	{
		jump .LBB121_2
	}
.LBB121_2:                              //   in Loop: Header=BB121_1 Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB121_4
	}
	{
		jump .LBB121_3
	}
.LBB121_3:                              //   in Loop: Header=BB121_1 Depth=1
	{
		r0 = memub(r30+#-9)
	}
	{
		p0 = !tstbit(r0,#7)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB121_4
	}
.LBB121_4:                              //   in Loop: Header=BB121_1 Depth=1
	{
		r0 = memw(r30+#-28)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB121_6
	}
	{
		jump .LBB121_5
	}
.LBB121_5:                              //   in Loop: Header=BB121_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = asl(r0,#1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = asl(r0,#1)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		jump .LBB121_1
	}
.LBB121_6:
	{
		jump .LBB121_7
	}
.LBB121_7:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB121_11
	}
	{
		jump .LBB121_8
	}
.LBB121_8:                              //   in Loop: Header=BB121_7 Depth=1
	{
		r1 = memw(r30+#-8)
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		if (p0) jump:nt .LBB121_10
	}
	{
		jump .LBB121_9
	}
.LBB121_9:                              //   in Loop: Header=BB121_7 Depth=1
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = sub(r0,r1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r1 = memw(r30+#-20)
	}
	{
		r0 = memw(r30+#-24)
	}
	{
		r0 = or(r0,r1)
	}
	{
		memw(r30+#-24) = r0
	}
	{
		jump .LBB121_10
	}
.LBB121_10:                             //   in Loop: Header=BB121_7 Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = lsr(r0,#1)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = lsr(r0,#1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB121_7
	}
.LBB121_11:
	{
		r0 = memw(r30+#-16)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB121_13
	}
	{
		jump .LBB121_12
	}
.LBB121_12:
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB121_14
	}
.LBB121_13:
	{
		r0 = memw(r30+#-24)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB121_14
	}
.LBB121_14:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end121:
	.size	__udivmodsi4, .Lfunc_end121-__udivmodsi4
                                        // -- End function
	.globl	__mspabi_cmpf                   // -- Begin function __mspabi_cmpf
	.p2align	4
	.type	__mspabi_cmpf,@function
__mspabi_cmpf:                          // @__mspabi_cmpf
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		p1 = sfcmp.ge(r0,r1)
	}
	{
		p0 = sfcmp.uo(r0,r1)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB122_2
	}
	{
		jump .LBB122_1
	}
.LBB122_1:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #-1
	}
	{
		jump .LBB122_5
	}
.LBB122_2:
	{
		r1 = memw(r30+#-8)
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		p1 = sfcmp.ge(r0,r1)
	}
	{
		p0 = sfcmp.uo(r0,r1)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB122_4
	}
	{
		jump .LBB122_3
	}
.LBB122_3:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #1
	}
	{
		jump .LBB122_5
	}
.LBB122_4:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB122_5
	}
.LBB122_5:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end122:
	.size	__mspabi_cmpf, .Lfunc_end122-__mspabi_cmpf
                                        // -- End function
	.globl	__mspabi_cmpd                   // -- Begin function __mspabi_cmpd
	.p2align	4
	.type	__mspabi_cmpd,@function
__mspabi_cmpd:                          // @__mspabi_cmpd
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		memd(r30+#-24) = r3:2
	}
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r3:2 = memd(r30+#-24)
	}
	{
		p1 = dfcmp.ge(r1:0,r3:2)
	}
	{
		p0 = dfcmp.uo(r1:0,r3:2)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB123_2
	}
	{
		jump .LBB123_1
	}
.LBB123_1:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #-1
	}
	{
		jump .LBB123_5
	}
.LBB123_2:
	{
		r3:2 = memd(r30+#-16)
	}
	{
		r1:0 = memd(r30+#-24)
	}
	{
		p1 = dfcmp.ge(r1:0,r3:2)
	}
	{
		p0 = dfcmp.uo(r1:0,r3:2)
	}
	{
		p0 = or(p0,p1)
	}
	{
		if (p0) jump:nt .LBB123_4
	}
	{
		jump .LBB123_3
	}
.LBB123_3:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #1
	}
	{
		jump .LBB123_5
	}
.LBB123_4:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB123_5
	}
.LBB123_5:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end123:
	.size	__mspabi_cmpd, .Lfunc_end123-__mspabi_cmpd
                                        // -- End function
	.globl	__mspabi_mpysll                 // -- Begin function __mspabi_mpysll
	.p2align	4
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        // @__mspabi_mpysll
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r3 = r0
	}
	{
		r2 = r0
	}
	{
		r4 = memw(r30+#-8)
	}
	{
		r1 = r4
	}
	{
		r0 = r4
	}
	{
		r1 = r0
	}
	{
		r0 = r2
	}
	{
		r1:0 = mpy(r0,r1)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end124:
	.size	__mspabi_mpysll, .Lfunc_end124-__mspabi_mpysll
                                        // -- End function
	.globl	__mspabi_mpyull                 // -- Begin function __mspabi_mpyull
	.p2align	4
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        // @__mspabi_mpyull
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		r1:0 = mpyu(r0,r1)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end125:
	.size	__mspabi_mpyull, .Lfunc_end125-__mspabi_mpyull
                                        // -- End function
	.globl	__mulhi3                        // -- Begin function __mulhi3
	.p2align	4
	.type	__mulhi3,@function
__mulhi3:                               // @__mulhi3
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = add(r30,#-16)
	}
	{
		memw(r0+#0) = #0
	}
	{
		r0 = add(r30,#-20)
	}
	{
		memw(r0+#0) = #0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.gt(r0,#-1)
	}
	{
		if (p0) jump:nt .LBB126_2
	}
	{
		jump .LBB126_1
	}
.LBB126_1:
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = sub(#0,r0)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = add(r30,#-16)
	}
	{
		memw(r0+#0) = #1
	}
	{
		jump .LBB126_2
	}
.LBB126_2:
	{
		r0 = add(r30,#-9)
	}
	{
		memb(r0+#0) = #0
	}
	{
		jump .LBB126_3
	}
.LBB126_3:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB126_5
	}
	{
		jump .LBB126_4
	}
.LBB126_4:                              //   in Loop: Header=BB126_3 Depth=1
	{
		r0 = memb(r30+#-9)
	}
	{
		p0 = cmp.gtu(r0,#31)
	}
	{
		p0 = not(p0)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB126_5
	}
.LBB126_5:                              //   in Loop: Header=BB126_3 Depth=1
	{
		r0 = memw(r30+#-24)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB126_10
	}
	{
		jump .LBB126_6
	}
.LBB126_6:                              //   in Loop: Header=BB126_3 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = tstbit(r0,#0)
	}
	{
		if (!p0) jump:nt .LBB126_8
	}
	{
		jump .LBB126_7
	}
.LBB126_7:                              //   in Loop: Header=BB126_3 Depth=1
	{
		r1 = memw(r30+#-4)
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		jump .LBB126_8
	}
.LBB126_8:                              //   in Loop: Header=BB126_3 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = asl(r0,#1)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = asr(r0,#1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB126_9
	}
.LBB126_9:                              //   in Loop: Header=BB126_3 Depth=1
	{
		r0 = memub(r30+#-9)
	}
	{
		r0 = add(r0,#1)
	}
	{
		memb(r30+#-9) = r0
	}
	{
		jump .LBB126_3
	}
.LBB126_10:
	{
		r0 = memw(r30+#-16)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB126_12
	}
	{
		jump .LBB126_11
	}
.LBB126_11:
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = sub(#0,r0)
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB126_13
	}
.LBB126_12:
	{
		r0 = memw(r30+#-20)
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB126_13
	}
.LBB126_13:
	{
		r0 = memw(r30+#-28)
	}                                       // 4-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end126:
	.size	__mulhi3, .Lfunc_end126-__mulhi3
                                        // -- End function
	.globl	__divsi3                        // -- Begin function __divsi3
	.p2align	4
	.type	__divsi3,@function
__divsi3:                               // @__divsi3
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = add(r30,#-12)
	}
	{
		memw(r0+#0) = #0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		p0 = cmp.gt(r0,#-1)
	}
	{
		if (p0) jump:nt .LBB127_2
	}
	{
		jump .LBB127_1
	}
.LBB127_1:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = sub(#0,r0)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = cmp.eq(r0,#0)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB127_2
	}
.LBB127_2:
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.gt(r0,#-1)
	}
	{
		if (p0) jump:nt .LBB127_4
	}
	{
		jump .LBB127_3
	}
.LBB127_3:
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = sub(#0,r0)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = cmp.eq(r0,#0)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB127_4
	}
.LBB127_4:
	{
		r0 = memw(r30+#-4)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		r2 = #0
	}
	{
		call __udivmodsi4
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB127_6
	}
	{
		jump .LBB127_5
	}
.LBB127_5:
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = sub(#0,r0)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		jump .LBB127_6
	}
.LBB127_6:
	{
		r0 = memw(r30+#-16)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end127:
	.size	__divsi3, .Lfunc_end127-__divsi3
                                        // -- End function
	.globl	__modsi3                        // -- Begin function __modsi3
	.p2align	4
	.type	__modsi3,@function
__modsi3:                               // @__modsi3
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = add(r30,#-12)
	}
	{
		memw(r0+#0) = #0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		p0 = cmp.gt(r0,#-1)
	}
	{
		if (p0) jump:nt .LBB128_2
	}
	{
		jump .LBB128_1
	}
.LBB128_1:
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = sub(#0,r0)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = add(r30,#-12)
	}
	{
		memw(r0+#0) = #1
	}
	{
		jump .LBB128_2
	}
.LBB128_2:
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.gt(r0,#-1)
	}
	{
		if (p0) jump:nt .LBB128_4
	}
	{
		jump .LBB128_3
	}
.LBB128_3:
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = sub(#0,r0)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		jump .LBB128_4
	}
.LBB128_4:
	{
		r0 = memw(r30+#-4)
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		r2 = #1
	}
	{
		call __udivmodsi4
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB128_6
	}
	{
		jump .LBB128_5
	}
.LBB128_5:
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = sub(#0,r0)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		jump .LBB128_6
	}
.LBB128_6:
	{
		r0 = memw(r30+#-16)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end128:
	.size	__modsi3, .Lfunc_end128-__modsi3
                                        // -- End function
	.globl	__udivmodhi4                    // -- Begin function __udivmodhi4
	.p2align	4
	.type	__udivmodhi4,@function
__udivmodhi4:                           // @__udivmodhi4
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		r3 = r1
	}
	{
		r3 = r0
	}
	{
		memh(r30+#-4) = r0
	}
	{
		memh(r30+#-6) = r1
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r0 = add(r30,#-14)
	}
	{
		memh(r0+#0) = #1
	}
	{
		r0 = add(r30,#-16)
	}
	{
		memh(r0+#0) = #0
	}
	{
		jump .LBB129_1
	}
.LBB129_1:                              // =>This Inner Loop Header: Depth=1
	{
		r1 = memuh(r30+#-6)
	}
	{
		r0 = memuh(r30+#-4)
	}
	{
		p0 = cmp.gt(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB129_4
	}
	{
		jump .LBB129_2
	}
.LBB129_2:                              //   in Loop: Header=BB129_1 Depth=1
	{
		r0 = memh(r30+#-14)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB129_4
	}
	{
		jump .LBB129_3
	}
.LBB129_3:                              //   in Loop: Header=BB129_1 Depth=1
	{
		r0 = memuh(r30+#-6)
	}
	{
		p0 = !tstbit(r0,#15)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB129_4
	}
.LBB129_4:                              //   in Loop: Header=BB129_1 Depth=1
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB129_6
	}
	{
		jump .LBB129_5
	}
.LBB129_5:                              //   in Loop: Header=BB129_1 Depth=1
	{
		r0 = memuh(r30+#-6)
	}
	{
		r0 = asl(r0,#1)
	}
	{
		memh(r30+#-6) = r0
	}
	{
		r0 = memuh(r30+#-14)
	}
	{
		r0 = asl(r0,#1)
	}
	{
		memh(r30+#-14) = r0
	}
	{
		jump .LBB129_1
	}
.LBB129_6:
	{
		jump .LBB129_7
	}
.LBB129_7:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memh(r30+#-14)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB129_11
	}
	{
		jump .LBB129_8
	}
.LBB129_8:                              //   in Loop: Header=BB129_7 Depth=1
	{
		r1 = memuh(r30+#-4)
	}
	{
		r0 = memuh(r30+#-6)
	}
	{
		p0 = cmp.gt(r0,r1)
	}
	{
		if (p0) jump:nt .LBB129_10
	}
	{
		jump .LBB129_9
	}
.LBB129_9:                              //   in Loop: Header=BB129_7 Depth=1
	{
		r1 = memuh(r30+#-6)
	}
	{
		r0 = memuh(r30+#-4)
	}
	{
		r0 = sub(r0,r1)
	}
	{
		memh(r30+#-4) = r0
	}
	{
		r1 = memuh(r30+#-14)
	}
	{
		r0 = memuh(r30+#-16)
	}
	{
		r0 = or(r0,r1)
	}
	{
		memh(r30+#-16) = r0
	}
	{
		jump .LBB129_10
	}
.LBB129_10:                             //   in Loop: Header=BB129_7 Depth=1
	{
		r0 = memuh(r30+#-14)
	}
	{
		r0 = lsr(r0,#1)
	}
	{
		memh(r30+#-14) = r0
	}
	{
		r0 = memuh(r30+#-6)
	}
	{
		r0 = lsr(r0,#1)
	}
	{
		memh(r30+#-6) = r0
	}
	{
		jump .LBB129_7
	}
.LBB129_11:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB129_13
	}
	{
		jump .LBB129_12
	}
.LBB129_12:
	{
		r0 = memuh(r30+#-4)
	}
	{
		memh(r30+#-2) = r0
	}
	{
		jump .LBB129_14
	}
.LBB129_13:
	{
		r0 = memuh(r30+#-16)
	}
	{
		memh(r30+#-2) = r0
	}
	{
		jump .LBB129_14
	}
.LBB129_14:
	{
		r0 = memuh(r30+#-2)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end129:
	.size	__udivmodhi4, .Lfunc_end129-__udivmodhi4
                                        // -- End function
	.globl	__udivmodsi4_libgcc             // -- Begin function __udivmodsi4_libgcc
	.p2align	4
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    // @__udivmodsi4_libgcc
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memw(r30+#-8) = r0
	}
	{
		memw(r30+#-12) = r1
	}
	{
		memw(r30+#-16) = r2
	}
	{
		r0 = add(r30,#-20)
	}
	{
		memw(r0+#0) = #1
	}
	{
		r0 = add(r30,#-24)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB130_1
	}
.LBB130_1:                              // =>This Inner Loop Header: Depth=1
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB130_4
	}
	{
		jump .LBB130_2
	}
.LBB130_2:                              //   in Loop: Header=BB130_1 Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = and(p1,!p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB130_4
	}
	{
		jump .LBB130_3
	}
.LBB130_3:                              //   in Loop: Header=BB130_1 Depth=1
	{
		r0 = memub(r30+#-9)
	}
	{
		p0 = !tstbit(r0,#7)
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB130_4
	}
.LBB130_4:                              //   in Loop: Header=BB130_1 Depth=1
	{
		r0 = memw(r30+#-28)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB130_6
	}
	{
		jump .LBB130_5
	}
.LBB130_5:                              //   in Loop: Header=BB130_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = asl(r0,#1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = asl(r0,#1)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		jump .LBB130_1
	}
.LBB130_6:
	{
		jump .LBB130_7
	}
.LBB130_7:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB130_11
	}
	{
		jump .LBB130_8
	}
.LBB130_8:                              //   in Loop: Header=BB130_7 Depth=1
	{
		r1 = memw(r30+#-8)
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		if (p0) jump:nt .LBB130_10
	}
	{
		jump .LBB130_9
	}
.LBB130_9:                              //   in Loop: Header=BB130_7 Depth=1
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = sub(r0,r1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r1 = memw(r30+#-20)
	}
	{
		r0 = memw(r30+#-24)
	}
	{
		r0 = or(r0,r1)
	}
	{
		memw(r30+#-24) = r0
	}
	{
		jump .LBB130_10
	}
.LBB130_10:                             //   in Loop: Header=BB130_7 Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = lsr(r0,#1)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = lsr(r0,#1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB130_7
	}
.LBB130_11:
	{
		r0 = memw(r30+#-16)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB130_13
	}
	{
		jump .LBB130_12
	}
.LBB130_12:
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB130_14
	}
.LBB130_13:
	{
		r0 = memw(r30+#-24)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB130_14
	}
.LBB130_14:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end130:
	.size	__udivmodsi4_libgcc, .Lfunc_end130-__udivmodsi4_libgcc
                                        // -- End function
	.globl	__ashldi3                       // -- Begin function __ashldi3
	.p2align	4
	.type	__ashldi3,@function
__ashldi3:                              // @__ashldi3
// %bb.0:
	{
		allocframe(r29,#40):raw
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		memw(r30+#-20) = r2
	}
	{
		r0 = add(r30,#-24)
	}
	{
		memw(r0+#0) = #32
	}
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-32) = r1:0
	}
	{
		r0 = memub(r30+#-20)
	}
	{
		p0 = bitsclr(r0,#32)
	}
	{
		if (p0) jump:nt .LBB131_2
	}
	{
		jump .LBB131_1
	}
.LBB131_1:
	{
		r0 = add(r30,#-40)
	}
	{
		memw(r0+#0) = #0
	}
	{
		r0 = memw(r30+#-32)
	}
	{
		r1 = memw(r30+#-20)
	}
	{
		r1 = add(r1,#-32)
	}
	{
		r0 = asl(r0,r1)
	}
	{
		memw(r30+#-36) = r0
	}
	{
		jump .LBB131_5
	}
.LBB131_2:
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB131_4
	}
	{
		jump .LBB131_3
	}
.LBB131_3:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB131_6
	}
.LBB131_4:
	{
		r0 = memw(r30+#-32)
	}
	{
		r1 = memw(r30+#-20)
	}
	{
		r0 = asl(r0,r1)
	}
	{
		memw(r30+#-40) = r0
	}
	{
		r1 = memw(r30+#-28)
	}
	{
		r2 = memw(r30+#-20)
	}
	{
		r3 = memw(r30+#-32)
	}
	{
		r0 = r3
	}
	{
		r1:0 = asl(r1:0,r2)
	}
	{
		r0 = r1
	}
	{
		memw(r30+#-36) = r0
	}
	{
		jump .LBB131_5
	}
.LBB131_5:
	{
		r1:0 = memd(r30+#-40)
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB131_6
	}
.LBB131_6:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end131:
	.size	__ashldi3, .Lfunc_end131-__ashldi3
                                        // -- End function
	.globl	__ashrdi3                       // -- Begin function __ashrdi3
	.p2align	4
	.type	__ashrdi3,@function
__ashrdi3:                              // @__ashrdi3
// %bb.0:
	{
		allocframe(r29,#40):raw
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		memw(r30+#-20) = r2
	}
	{
		r0 = add(r30,#-24)
	}
	{
		memw(r0+#0) = #32
	}
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-32) = r1:0
	}
	{
		r0 = memub(r30+#-20)
	}
	{
		p0 = bitsclr(r0,#32)
	}
	{
		if (p0) jump:nt .LBB132_2
	}
	{
		jump .LBB132_1
	}
.LBB132_1:
	{
		r0 = memw(r30+#-28)
	}
	{
		r0 = asr(r0,#31)
	}
	{
		memw(r30+#-36) = r0
	}
	{
		r0 = memw(r30+#-28)
	}
	{
		r1 = memw(r30+#-20)
	}
	{
		r1 = add(r1,#-32)
	}
	{
		r0 = asr(r0,r1)
	}
	{
		memw(r30+#-40) = r0
	}
	{
		jump .LBB132_5
	}
.LBB132_2:
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB132_4
	}
	{
		jump .LBB132_3
	}
.LBB132_3:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB132_6
	}
.LBB132_4:
	{
		r0 = memw(r30+#-28)
	}
	{
		r1 = memw(r30+#-20)
	}
	{
		r0 = asr(r0,r1)
	}
	{
		memw(r30+#-36) = r0
	}
	{
		r1 = memw(r30+#-28)
	}
	{
		r2 = memw(r30+#-20)
	}
	{
		r3 = memw(r30+#-32)
	}
	{
		r0 = r3
	}
	{
		r1:0 = lsr(r1:0,r2)
	}
	{
		memw(r30+#-40) = r0
	}
	{
		jump .LBB132_5
	}
.LBB132_5:
	{
		r1:0 = memd(r30+#-40)
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB132_6
	}
.LBB132_6:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end132:
	.size	__ashrdi3, .Lfunc_end132-__ashrdi3
                                        // -- End function
	.globl	__bswapdi2                      // -- Begin function __bswapdi2
	.p2align	4
	.type	__bswapdi2,@function
__bswapdi2:                             // @__bswapdi2
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		r3:2 = memd(r30+#-8)
	}
	{
		r1:0 = lsr(r3:2,#56)
	}
	{
		r5:4 = CONST64(#71776119061217280)
	}
	{
		r5:4 = and(r3:2,r5:4)
	}
	{
		r1:0 |= lsr(r5:4,#40)
	}
	{
		r5:4 = CONST64(#280375465082880)
	}
	{
		r5:4 = and(r3:2,r5:4)
	}
	{
		r1:0 |= lsr(r5:4,#24)
	}
	{
		r5:4 = CONST64(#1095216660480)
	}
	{
		r5:4 = and(r3:2,r5:4)
	}
	{
		r1:0 |= lsr(r5:4,#8)
	}
	{
		r5:4 = CONST64(#4278190080)
	}
	{
		r5:4 = and(r3:2,r5:4)
	}
	{
		r1:0 |= asl(r5:4,#8)
	}
	{
		r5:4 = CONST64(#16711680)
	}
	{
		r5:4 = and(r3:2,r5:4)
	}
	{
		r1:0 |= asl(r5:4,#24)
	}
	{
		r5:4 = CONST64(#65280)
	}
	{
		r5:4 = and(r3:2,r5:4)
	}
	{
		r1:0 |= asl(r5:4,#40)
	}
	{
		r1:0 |= asl(r3:2,#56)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end133:
	.size	__bswapdi2, .Lfunc_end133-__bswapdi2
                                        // -- End function
	.globl	__bswapsi2                      // -- Begin function __bswapsi2
	.p2align	4
	.type	__bswapsi2,@function
__bswapsi2:                             // @__bswapsi2
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r1 = memw(r30+#-4)
	}
	{
		r0 = lsr(r1,#24)
	}
	{
		r2 = and(r1,##16711680)
	}
	{
		r0 |= lsr(r2,#8)
	}
	{
		r2 = and(r1,##65280)
	}
	{
		r0 |= asl(r2,#8)
	}
	{
		r0 |= asl(r1,#24)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end134:
	.size	__bswapsi2, .Lfunc_end134-__bswapsi2
                                        // -- End function
	.globl	__clzsi2                        // -- Begin function __clzsi2
	.p2align	4
	.type	__clzsi2,@function
__clzsi2:                               // @__clzsi2
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memuh(r30+#-6)
	}
	{
		r0 = aslh(r0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		r0 = mux(p0,#16,#0)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = sub(#16,r0)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = lsr(r0,r1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memub(r30+#-7)
	}
	{
		r0 = asl(r0,#8)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		r0 = mux(p0,#8,#0)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = sub(#8,r0)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = lsr(r0,r1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = #240
	}
	{
		p0 = bitsclr(r0,r1)
	}
	{
		r0 = mux(p0,#4,#0)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = sub(#4,r0)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = lsr(r0,r1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = bitsclr(r0,#12)
	}
	{
		r0 = mux(p0,#2,#0)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = sub(#2,r0)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = lsr(r0,r1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r2 = memw(r30+#-8)
	}
	{
		r1 = sub(#2,r2)
	}
	{
		p0 = bitsclr(r2,#2)
	}
	{
		r2 = mux(p0,#-1,#0)
	}
	{
		r1 = and(r1,r2)
	}
	{
		r0 = add(r0,r1)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end135:
	.size	__clzsi2, .Lfunc_end135-__clzsi2
                                        // -- End function
	.globl	__cmpdi2                        // -- Begin function __cmpdi2
	.p2align	4
	.type	__cmpdi2,@function
__cmpdi2:                               // @__cmpdi2
// %bb.0:
	{
		allocframe(r29,#40):raw
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		memd(r30+#-24) = r3:2
	}
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-32) = r1:0
	}
	{
		r1:0 = memd(r30+#-24)
	}
	{
		memd(r30+#-40) = r1:0
	}
	{
		r1 = memw(r30+#-28)
	}
	{
		r0 = memw(r30+#-36)
	}
	{
		p0 = cmp.gt(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB136_2
	}
	{
		jump .LBB136_1
	}
.LBB136_1:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB136_9
	}
.LBB136_2:
	{
		r0 = memw(r30+#-28)
	}
	{
		r1 = memw(r30+#-36)
	}
	{
		p0 = cmp.gt(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB136_4
	}
	{
		jump .LBB136_3
	}
.LBB136_3:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #2
	}
	{
		jump .LBB136_9
	}
.LBB136_4:
	{
		r1 = memw(r30+#-32)
	}
	{
		r0 = memw(r30+#-40)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB136_6
	}
	{
		jump .LBB136_5
	}
.LBB136_5:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB136_9
	}
.LBB136_6:
	{
		r0 = memw(r30+#-32)
	}
	{
		r1 = memw(r30+#-40)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB136_8
	}
	{
		jump .LBB136_7
	}
.LBB136_7:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #2
	}
	{
		jump .LBB136_9
	}
.LBB136_8:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #1
	}
	{
		jump .LBB136_9
	}
.LBB136_9:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end136:
	.size	__cmpdi2, .Lfunc_end136-__cmpdi2
                                        // -- End function
	.globl	__aeabi_lcmp                    // -- Begin function __aeabi_lcmp
	.p2align	4
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           // @__aeabi_lcmp
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		memd(r30+#-16) = r3:2
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r3:2 = memd(r30+#-16)
	}
	{
		call __cmpdi2
	}
	{
		r0 = add(r0,#-1)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end137:
	.size	__aeabi_lcmp, .Lfunc_end137-__aeabi_lcmp
                                        // -- End function
	.globl	__ctzsi2                        // -- Begin function __ctzsi2
	.p2align	4
	.type	__ctzsi2,@function
__ctzsi2:                               // @__ctzsi2
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memuh(r30+#-8)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		r0 = mux(p0,#16,#0)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = lsr(r0,r1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memub(r30+#-8)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		r0 = mux(p0,#8,#0)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = lsr(r0,r1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = bitsclr(r0,#15)
	}
	{
		r0 = mux(p0,#4,#0)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = lsr(r0,r1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = bitsclr(r0,#3)
	}
	{
		r0 = mux(p0,#2,#0)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = lsr(r0,r1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = and(r0,#3)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r2 = memw(r30+#-8)
	}
	{
		r1 = r2
	}
	{
		r1 = sub(#2,lsr(r1,#1))
	}
	{
		r2 = and(r2,#1)
	}
	{
		r2 = add(r2,#-1)
	}
	{
		r1 = and(r1,r2)
	}
	{
		r0 = add(r0,r1)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end138:
	.size	__ctzsi2, .Lfunc_end138-__ctzsi2
                                        // -- End function
	.globl	__lshrdi3                       // -- Begin function __lshrdi3
	.p2align	4
	.type	__lshrdi3,@function
__lshrdi3:                              // @__lshrdi3
// %bb.0:
	{
		allocframe(r29,#40):raw
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		memw(r30+#-20) = r2
	}
	{
		r0 = add(r30,#-24)
	}
	{
		memw(r0+#0) = #32
	}
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-32) = r1:0
	}
	{
		r0 = memub(r30+#-20)
	}
	{
		p0 = bitsclr(r0,#32)
	}
	{
		if (p0) jump:nt .LBB139_2
	}
	{
		jump .LBB139_1
	}
.LBB139_1:
	{
		r0 = add(r30,#-36)
	}
	{
		memw(r0+#0) = #0
	}
	{
		r0 = memw(r30+#-28)
	}
	{
		r1 = memw(r30+#-20)
	}
	{
		r1 = add(r1,#-32)
	}
	{
		r0 = lsr(r0,r1)
	}
	{
		memw(r30+#-40) = r0
	}
	{
		jump .LBB139_5
	}
.LBB139_2:
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB139_4
	}
	{
		jump .LBB139_3
	}
.LBB139_3:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB139_6
	}
.LBB139_4:
	{
		r0 = memw(r30+#-28)
	}
	{
		r1 = memw(r30+#-20)
	}
	{
		r0 = lsr(r0,r1)
	}
	{
		memw(r30+#-36) = r0
	}
	{
		r1 = memw(r30+#-28)
	}
	{
		r2 = memw(r30+#-20)
	}
	{
		r3 = memw(r30+#-32)
	}
	{
		r0 = r3
	}
	{
		r1:0 = lsr(r1:0,r2)
	}
	{
		memw(r30+#-40) = r0
	}
	{
		jump .LBB139_5
	}
.LBB139_5:
	{
		r1:0 = memd(r30+#-40)
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB139_6
	}
.LBB139_6:
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end139:
	.size	__lshrdi3, .Lfunc_end139-__lshrdi3
                                        // -- End function
	.globl	__muldsi3                       // -- Begin function __muldsi3
	.p2align	4
	.type	__muldsi3,@function
__muldsi3:                              // @__muldsi3
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = add(r30,#-20)
	}
	{
		memw(r0+#0) = #16
	}
	{
		r0 = add(r30,#-24)
	}
	{
		memw(r0+#0) = ##65535
	}
	{
		r0 = memuh(r30+#-4)
	}
	{
		r1 = memuh(r30+#-8)
	}
	{
		r0 = mpyi(r0,r1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memuh(r30+#-14)
	}
	{
		memw(r30+#-28) = r0
	}
	{
		r0 = memuh(r30+#-16)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r1 = memuh(r30+#-2)
	}
	{
		r2 = memuh(r30+#-8)
	}
	{
		r0 = memw(r30+#-28)
	}
	{
		r0 += mpyi(r1,r2)
	}
	{
		memw(r30+#-28) = r0
	}
	{
		r1 = memw(r30+#-28)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 += asl(r1,#16)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r0 = memuh(r30+#-26)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = memuh(r30+#-14)
	}
	{
		memw(r30+#-28) = r0
	}
	{
		r0 = memuh(r30+#-16)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r1 = memuh(r30+#-6)
	}
	{
		r2 = memuh(r30+#-4)
	}
	{
		r0 = memw(r30+#-28)
	}
	{
		r0 += mpyi(r1,r2)
	}
	{
		memw(r30+#-28) = r0
	}
	{
		r1 = memw(r30+#-28)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 += asl(r1,#16)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r1 = memuh(r30+#-26)
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r1 = memuh(r30+#-2)
	}
	{
		r2 = memuh(r30+#-6)
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 += mpyi(r1,r2)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end140:
	.size	__muldsi3, .Lfunc_end140-__muldsi3
                                        // -- End function
	.globl	__muldi3_compiler_rt            // -- Begin function __muldi3_compiler_rt
	.p2align	4
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   // @__muldi3_compiler_rt
// %bb.0:
	{
		allocframe(r29,#40):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		memd(r30+#-16) = r3:2
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		memd(r30+#-24) = r1:0
	}
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-32) = r1:0
	}
	{
		r0 = memw(r30+#-24)
	}
	{
		r1 = memw(r30+#-32)
	}
	{
		call __muldsi3
	}
	{
		memd(r30+#-40) = r1:0
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r1 = memw(r30+#-32)
	}
	{
		r1 = mpyi(r0,r1)
	}
	{
		r0 = memw(r30+#-24)
	}
	{
		r2 = memw(r30+#-28)
	}
	{
		r2 = mpyi(r0,r2)
	}
	{
		r0 = memw(r30+#-36)
	}
	{
		r0 += add(r1,r2)
	}
	{
		memw(r30+#-36) = r0
	}
	{
		r1:0 = memd(r30+#-40)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end141:
	.size	__muldi3_compiler_rt, .Lfunc_end141-__muldi3_compiler_rt
                                        // -- End function
	.globl	__negdi2                        // -- Begin function __negdi2
	.p2align	4
	.type	__negdi2,@function
__negdi2:                               // @__negdi2
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r1:0 = neg(r1:0)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end142:
	.size	__negdi2, .Lfunc_end142-__negdi2
                                        // -- End function
	.globl	__paritydi2                     // -- Begin function __paritydi2
	.p2align	4
	.type	__paritydi2,@function
__paritydi2:                            // @__paritydi2
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r1 = memw(r30+#-16)
	}
	{
		r0 = xor(r0,r1)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 ^= lsr(r0,#16)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 ^= lsr(r0,#8)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 ^= lsr(r0,#4)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r2 = and(r0,#15)
	}
	{
		r1 = #27030
	}
	{
		r0 = #1
	}
	{
		r0 &= lsr(r1,r2)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end143:
	.size	__paritydi2, .Lfunc_end143-__paritydi2
                                        // -- End function
	.globl	__paritysi2                     // -- Begin function __paritysi2
	.p2align	4
	.type	__paritysi2,@function
__paritysi2:                            // @__paritysi2
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 ^= lsr(r0,#16)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 ^= lsr(r0,#8)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 ^= lsr(r0,#4)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r2 = and(r0,#15)
	}
	{
		r1 = #27030
	}
	{
		r0 = #1
	}
	{
		r0 &= lsr(r1,r2)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end144:
	.size	__paritysi2, .Lfunc_end144-__paritysi2
                                        // -- End function
	.globl	__popcountdi2                   // -- Begin function __popcountdi2
	.p2align	4
	.type	__popcountdi2,@function
__popcountdi2:                          // @__popcountdi2
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r3:2 = CONST64(#6148914691236517205)
	}
	{
		r3:2 &= lsr(r1:0,#1)
	}
	{
		r1:0 = sub(r1:0,r3:2)
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		r3:2 = memd(r30+#-16)
	}
	{
		r5:4 = CONST64(#3689348814741910323)
	}
	{
		r1:0 = combine(r5,r4)
	}
	{
		r1:0 &= lsr(r3:2,#2)
	}
	{
		r3:2 = and(r3:2,r5:4)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r1:0 += lsr(r1:0,#4)
	}
	{
		r3:2 = CONST64(#1085102592571150095)
	}
	{
		r1:0 = and(r1:0,r3:2)
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		r1:0 = memd(r30+#-16)
	}
	{
		r1:0 += lsr(r1:0,#32)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 += lsr(r0,#16)
	}
	{
		memw(r30+#-20) = r0
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 += lsr(r0,#8)
	}
	{
		r0 = and(r0,#127)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end145:
	.size	__popcountdi2, .Lfunc_end145-__popcountdi2
                                        // -- End function
	.globl	__popcountsi2                   // -- Begin function __popcountsi2
	.p2align	4
	.type	__popcountsi2,@function
__popcountsi2:                          // @__popcountsi2
// %bb.0:
	{
		allocframe(r29,#8):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = r0
	}
	{
		r1 = and(##1431655765,lsr(r1,#1))
	}
	{
		r0 = sub(r0,r1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r1 = memw(r30+#-8)
	}
	{
		r0 = r1
	}
	{
		r0 = and(##858993459,lsr(r0,#2))
	}
	{
		r1 = and(r1,##858993459)
	}
	{
		r0 = add(r0,r1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 += lsr(r0,#4)
	}
	{
		r0 = and(r0,##252645135)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 += lsr(r0,#16)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 += lsr(r0,#8)
	}
	{
		r0 = and(r0,#63)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end146:
	.size	__popcountsi2, .Lfunc_end146-__popcountsi2
                                        // -- End function
	.globl	__powidf2                       // -- Begin function __powidf2
	.p2align	4
	.type	__powidf2,@function
__powidf2:                              // @__powidf2
// %bb.0:
	{
		allocframe(r29,#32):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		memw(r30+#-12) = r2
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 = lsr(r0,#31)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		r1:0 = CONST64(#4607182418800017408)
	}
	{
		memd(r30+#-24) = r1:0
	}
	{
		jump .LBB147_1
	}
.LBB147_1:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = tstbit(r0,#0)
	}
	{
		if (!p0) jump:nt .LBB147_3
	}
	{
		jump .LBB147_2
	}
.LBB147_2:                              //   in Loop: Header=BB147_1 Depth=1
	{
		r3:2 = memd(r30+#-8)
	}
	{
		r1:0 = memd(r30+#-24)
	}
	{
		call __hexagon_muldf3
	}
	{
		memd(r30+#-24) = r1:0
	}
	{
		jump .LBB147_3
	}
.LBB147_3:                              //   in Loop: Header=BB147_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}
	{
		r0 += lsr(r0,#31)
	}
	{
		r0 = asr(r0,#1)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB147_5
	}
	{
		jump .LBB147_4
	}
.LBB147_4:
	{
		jump .LBB147_6
	}
.LBB147_5:                              //   in Loop: Header=BB147_1 Depth=1
	{
		r3:2 = memd(r30+#-8)
	}
	{
		r1:0 = combine(r3,r2)
	}
	{
		call __hexagon_muldf3
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB147_1
	}
.LBB147_6:
	{
		r0 = memw(r30+#-16)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB147_8
	}
	{
		jump .LBB147_7
	}
.LBB147_7:
	{
		r3:2 = memd(r30+#-24)
	}
	{
		r1:0 = CONST64(#4607182418800017408)
	}
	{
		call __hexagon_divdf3
	}
	{
		memd(r30+#-32) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB147_9
	}
.LBB147_8:
	{
		r1:0 = memd(r30+#-24)
	}
	{
		memd(r30+#-32) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB147_9
	}
.LBB147_9:
	{
		r1:0 = memd(r30+#-32)
	}                                       // 8-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end147:
	.size	__powidf2, .Lfunc_end147-__powidf2
                                        // -- End function
	.globl	__powisf2                       // -- Begin function __powisf2
	.p2align	4
	.type	__powisf2,@function
__powisf2:                              // @__powisf2
// %bb.0:
	{
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 = lsr(r0,#31)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		r0 = add(r30,#-16)
	}
	{
		memw(r0+#0) = ##1065353216
	}
	{
		jump .LBB148_1
	}
.LBB148_1:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = tstbit(r0,#0)
	}
	{
		if (!p0) jump:nt .LBB148_3
	}
	{
		jump .LBB148_2
	}
.LBB148_2:                              //   in Loop: Header=BB148_1 Depth=1
	{
		r1 = memw(r30+#-4)
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		r0 = sfmpy(r0,r1)
	}
	{
		memw(r30+#-16) = r0
	}
	{
		jump .LBB148_3
	}
.LBB148_3:                              //   in Loop: Header=BB148_1 Depth=1
	{
		r0 = memw(r30+#-8)
	}
	{
		r0 += lsr(r0,#31)
	}
	{
		r0 = asr(r0,#1)
	}
	{
		memw(r30+#-8) = r0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB148_5
	}
	{
		jump .LBB148_4
	}
.LBB148_4:
	{
		jump .LBB148_6
	}
.LBB148_5:                              //   in Loop: Header=BB148_1 Depth=1
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = sfmpy(r0,r0)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB148_1
	}
.LBB148_6:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB148_8
	}
	{
		jump .LBB148_7
	}
.LBB148_7:
	{
		r1 = memw(r30+#-16)
	}
	{
		r0 = ##1065353216
	}
	{
		r4,p0 = sfrecipa(r0,r1)
	}
	{
		r3 = sffixupd(r0,r1)
	}
	{
		r2 = r0
	}
	{
		r2 -= sfmpy(r3,r4):lib
	}
	{
		r4 += sfmpy(r2,r4):lib
	}
	{
		r5 = r0
	}
	{
		r5 -= sfmpy(r3,r4):lib
	}
	{
		r2 = r4
	}
	{
		r2 += sfmpy(r5,r2):lib
	}
	{
		r1 = sffixupn(r0,r1)
	}
	{
		r0 = and(r1,##-2147483648)
	}
	{
		r0 += sfmpy(r1,r4):lib
	}
	{
		r4 = r1
	}
	{
		r4 -= sfmpy(r3,r0):lib
	}
	{
		r0 += sfmpy(r4,r2):lib
	}
	{
		r1 -= sfmpy(r0,r3):lib
	}
	{
		r0 += sfmpy(r1,r2,p0):scale
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB148_9
	}
.LBB148_8:
	{
		r0 = memw(r30+#-16)
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB148_9
	}
.LBB148_9:
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end148:
	.size	__powisf2, .Lfunc_end148-__powisf2
                                        // -- End function
	.globl	__ucmpdi2                       // -- Begin function __ucmpdi2
	.p2align	4
	.type	__ucmpdi2,@function
__ucmpdi2:                              // @__ucmpdi2
// %bb.0:
	{
		allocframe(r29,#40):raw
	}
	{
		memd(r30+#-16) = r1:0
	}
	{
		memd(r30+#-24) = r3:2
	}
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-32) = r1:0
	}
	{
		r1:0 = memd(r30+#-24)
	}
	{
		memd(r30+#-40) = r1:0
	}
	{
		r1 = memw(r30+#-28)
	}
	{
		r0 = memw(r30+#-36)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB149_2
	}
	{
		jump .LBB149_1
	}
.LBB149_1:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB149_9
	}
.LBB149_2:
	{
		r0 = memw(r30+#-28)
	}
	{
		r1 = memw(r30+#-36)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB149_4
	}
	{
		jump .LBB149_3
	}
.LBB149_3:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #2
	}
	{
		jump .LBB149_9
	}
.LBB149_4:
	{
		r1 = memw(r30+#-32)
	}
	{
		r0 = memw(r30+#-40)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB149_6
	}
	{
		jump .LBB149_5
	}
.LBB149_5:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB149_9
	}
.LBB149_6:
	{
		r0 = memw(r30+#-32)
	}
	{
		r1 = memw(r30+#-40)
	}
	{
		p0 = cmp.gtu(r0,r1)
	}
	{
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB149_8
	}
	{
		jump .LBB149_7
	}
.LBB149_7:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #2
	}
	{
		jump .LBB149_9
	}
.LBB149_8:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #1
	}
	{
		jump .LBB149_9
	}
.LBB149_9:
	{
		r0 = memw(r30+#-4)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end149:
	.size	__ucmpdi2, .Lfunc_end149-__ucmpdi2
                                        // -- End function
	.globl	__aeabi_ulcmp                   // -- Begin function __aeabi_ulcmp
	.p2align	4
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          // @__aeabi_ulcmp
// %bb.0:
	{
		allocframe(r29,#16):raw
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		memd(r30+#-16) = r3:2
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		r3:2 = memd(r30+#-16)
	}
	{
		call __ucmpdi2
	}
	{
		r0 = add(r0,#-1)
	}
	{
		r31:30 = dealloc_return(r30):raw
	}
.Lfunc_end150:
	.size	__aeabi_ulcmp, .Lfunc_end150-__aeabi_ulcmp
                                        // -- End function
	.type	l64a.s,@object                  // @l64a.s
	.lcomm	l64a.s,7
	.type	digits,@object                  // @digits
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	digits, 65

	.type	seed,@object                    // @seed
	.lcomm	seed,8,8
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
