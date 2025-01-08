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
		r1:0 = memd(##.L__profc_memmove)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memmove) = r1:0
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
		r1:0 = memd(##.L__profc_memmove+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memmove+8) = r1:0
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
		r1:0 = memd(##.L__profc_memmove+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memmove+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_memmove+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memmove+24) = r1:0
	}
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
		r1:0 = memd(##.L__profc_memmove+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memmove+32) = r1:0
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
		r1:0 = memd(##.L__profc_memccpy)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memccpy) = r1:0
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
		if (p0) jump:nt .LBB1_4
	}
	{
		jump .LBB1_2
	}
.LBB1_2:                                //   in Loop: Header=BB1_1 Depth=1
	{
		r1:0 = memd(##.L__profc_memccpy+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memccpy+16) = r1:0
	}
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
		p1 = not(p0)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-36) = r0
	}                                       // 4-byte Folded Spill
	{
		r0 = p1
	}
	{
		memw(r30+#-32) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB1_4
	}
	{
		jump .LBB1_3
	}
.LBB1_3:                                //   in Loop: Header=BB1_1 Depth=1
	{
		r0 = memw(r30+#-36)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_memccpy+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memccpy+24) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-32) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB1_4
	}
.LBB1_4:                                //   in Loop: Header=BB1_1 Depth=1
	{
		r0 = memw(r30+#-32)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB1_7
	}
	{
		jump .LBB1_5
	}
.LBB1_5:                                //   in Loop: Header=BB1_1 Depth=1
	{
		r1:0 = memd(##.L__profc_memccpy+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memccpy+8) = r1:0
	}
	{
		jump .LBB1_6
	}
.LBB1_6:                                //   in Loop: Header=BB1_1 Depth=1
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
.LBB1_7:
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB1_9
	}
	{
		jump .LBB1_8
	}
.LBB1_8:
	{
		r1:0 = memd(##.L__profc_memccpy+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memccpy+32) = r1:0
	}
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
		jump .LBB1_10
	}
.LBB1_9:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB1_10
	}
.LBB1_10:
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
		r1:0 = memd(##.L__profc_memchr)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memchr) = r1:0
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
		if (p0) jump:nt .LBB2_4
	}
	{
		jump .LBB2_2
	}
.LBB2_2:                                //   in Loop: Header=BB2_1 Depth=1
	{
		r1:0 = memd(##.L__profc_memchr+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memchr+16) = r1:0
	}
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
		p1 = not(p0)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		r0 = p1
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB2_4
	}
	{
		jump .LBB2_3
	}
.LBB2_3:                                //   in Loop: Header=BB2_1 Depth=1
	{
		r0 = memw(r30+#-24)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_memchr+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memchr+24) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB2_4
	}
.LBB2_4:                                //   in Loop: Header=BB2_1 Depth=1
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB2_7
	}
	{
		jump .LBB2_5
	}
.LBB2_5:                                //   in Loop: Header=BB2_1 Depth=1
	{
		r1:0 = memd(##.L__profc_memchr+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memchr+8) = r1:0
	}
	{
		jump .LBB2_6
	}
.LBB2_6:                                //   in Loop: Header=BB2_1 Depth=1
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
.LBB2_7:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB2_9
	}
	{
		jump .LBB2_8
	}
.LBB2_8:
	{
		r1:0 = memd(##.L__profc_memchr+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memchr+32) = r1:0
	}
	{
		r0 = memw(r30+#-16)
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB2_10
	}
.LBB2_9:
	{
		r0 = #0
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB2_10
	}
.LBB2_10:
	{
		r0 = memw(r30+#-28)
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
		r1:0 = memd(##.L__profc_memcmp)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memcmp) = r1:0
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
		if (p0) jump:nt .LBB3_4
	}
	{
		jump .LBB3_2
	}
.LBB3_2:                                //   in Loop: Header=BB3_1 Depth=1
	{
		r1:0 = memd(##.L__profc_memcmp+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memcmp+16) = r1:0
	}
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
		p1 = cmp.eq(r0,r1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		p0 = not(p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB3_4
	}
	{
		jump .LBB3_3
	}
.LBB3_3:                                //   in Loop: Header=BB3_1 Depth=1
	{
		r0 = memw(r30+#-28)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_memcmp+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memcmp+24) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB3_4
	}
.LBB3_4:                                //   in Loop: Header=BB3_1 Depth=1
	{
		r0 = memw(r30+#-24)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB3_7
	}
	{
		jump .LBB3_5
	}
.LBB3_5:                                //   in Loop: Header=BB3_1 Depth=1
	{
		r1:0 = memd(##.L__profc_memcmp+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memcmp+8) = r1:0
	}
	{
		jump .LBB3_6
	}
.LBB3_6:                                //   in Loop: Header=BB3_1 Depth=1
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
.LBB3_7:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB3_9
	}
	{
		jump .LBB3_8
	}
.LBB3_8:
	{
		r1:0 = memd(##.L__profc_memcmp+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memcmp+32) = r1:0
	}
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
		memw(r30+#-32) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB3_10
	}
.LBB3_9:
	{
		r0 = #0
	}
	{
		memw(r30+#-32) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB3_10
	}
.LBB3_10:
	{
		r0 = memw(r30+#-32)
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
		r1:0 = memd(##.L__profc_memcpy)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memcpy) = r1:0
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
		r1:0 = memd(##.L__profc_memcpy+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memcpy+8) = r1:0
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
		r1:0 = memd(##.L__profc_memrchr)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memrchr) = r1:0
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
		r1:0 = memd(##.L__profc_memrchr+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memrchr+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_memrchr+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memrchr+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_memset)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memset) = r1:0
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
		r1:0 = memd(##.L__profc_memset+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memset+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_stpcpy)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_stpcpy) = r1:0
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
		r1:0 = memd(##.L__profc_stpcpy+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_stpcpy+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_strchrnul)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strchrnul) = r1:0
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
		if (p0) jump:nt .LBB8_4
	}
	{
		jump .LBB8_2
	}
.LBB8_2:                                //   in Loop: Header=BB8_1 Depth=1
	{
		r1:0 = memd(##.L__profc_strchrnul+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strchrnul+16) = r1:0
	}
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
		p1 = not(p0)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		r0 = p1
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB8_4
	}
	{
		jump .LBB8_3
	}
.LBB8_3:                                //   in Loop: Header=BB8_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_strchrnul+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strchrnul+24) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB8_4
	}
.LBB8_4:                                //   in Loop: Header=BB8_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB8_7
	}
	{
		jump .LBB8_5
	}
.LBB8_5:                                //   in Loop: Header=BB8_1 Depth=1
	{
		r1:0 = memd(##.L__profc_strchrnul+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strchrnul+8) = r1:0
	}
	{
		jump .LBB8_6
	}
.LBB8_6:                                //   in Loop: Header=BB8_1 Depth=1
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
.LBB8_7:
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
		r1:0 = memd(##.L__profc_strchr)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strchr) = r1:0
	}
	{
		jump .LBB9_2
	}
.LBB9_1:                                //   in Loop: Header=BB9_2 Depth=1
	{
		r1:0 = memd(##.L__profc_strchr+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strchr+8) = r1:0
	}
	{
		jump .LBB9_2
	}
.LBB9_2:                                // =>This Inner Loop Header: Depth=1
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
		if (p0) jump:nt .LBB9_4
	}
	{
		jump .LBB9_3
	}
.LBB9_3:
	{
		r1:0 = memd(##.L__profc_strchr+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strchr+16) = r1:0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB9_7
	}
.LBB9_4:                                //   in Loop: Header=BB9_2 Depth=1
	{
		jump .LBB9_5
	}
.LBB9_5:                                //   in Loop: Header=BB9_2 Depth=1
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
		jump .LBB9_6
	}
.LBB9_6:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB9_7
	}
.LBB9_7:
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
		r1:0 = memd(##.L__profc_strcmp)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strcmp) = r1:0
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
		if (p0) jump:nt .LBB10_4
	}
	{
		jump .LBB10_2
	}
.LBB10_2:                               //   in Loop: Header=BB10_1 Depth=1
	{
		r1:0 = memd(##.L__profc_strcmp+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strcmp+16) = r1:0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r0 = memub(r0+#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = not(p0)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		r0 = p1
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB10_4
	}
	{
		jump .LBB10_3
	}
.LBB10_3:                               //   in Loop: Header=BB10_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_strcmp+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strcmp+24) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB10_4
	}
.LBB10_4:                               //   in Loop: Header=BB10_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB10_7
	}
	{
		jump .LBB10_5
	}
.LBB10_5:                               //   in Loop: Header=BB10_1 Depth=1
	{
		r1:0 = memd(##.L__profc_strcmp+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strcmp+8) = r1:0
	}
	{
		jump .LBB10_6
	}
.LBB10_6:                               //   in Loop: Header=BB10_1 Depth=1
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
.LBB10_7:
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
		r1:0 = memd(##.L__profc_strlen)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strlen) = r1:0
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
		r1:0 = memd(##.L__profc_strlen+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strlen+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_strncmp)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strncmp) = r1:0
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
		r1:0 = memd(##.L__profc_strncmp+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strncmp+8) = r1:0
	}
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB12_14
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
		if (p0) jump:nt .LBB12_10
	}
	{
		jump .LBB12_4
	}
.LBB12_4:                               //   in Loop: Header=BB12_3 Depth=1
	{
		r1:0 = memd(##.L__profc_strncmp+56)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strncmp+56) = r1:0
	}
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
		if (p0) jump:nt .LBB12_10
	}
	{
		jump .LBB12_5
	}
.LBB12_5:                               //   in Loop: Header=BB12_3 Depth=1
	{
		r1:0 = memd(##.L__profc_strncmp+64)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strncmp+64) = r1:0
	}
	{
		jump .LBB12_6
	}
.LBB12_6:                               //   in Loop: Header=BB12_3 Depth=1
	{
		r1:0 = memd(##.L__profc_strncmp+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strncmp+40) = r1:0
	}
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
		if (p0) jump:nt .LBB12_10
	}
	{
		jump .LBB12_7
	}
.LBB12_7:                               //   in Loop: Header=BB12_3 Depth=1
	{
		r1:0 = memd(##.L__profc_strncmp+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strncmp+48) = r1:0
	}
	{
		jump .LBB12_8
	}
.LBB12_8:                               //   in Loop: Header=BB12_3 Depth=1
	{
		r1:0 = memd(##.L__profc_strncmp+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strncmp+24) = r1:0
	}
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
		p1 = cmp.eq(r0,r1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-32) = r0
	}                                       // 4-byte Folded Spill
	{
		p0 = not(p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB12_10
	}
	{
		jump .LBB12_9
	}
.LBB12_9:                               //   in Loop: Header=BB12_3 Depth=1
	{
		r0 = memw(r30+#-32)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_strncmp+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strncmp+32) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB12_10
	}
.LBB12_10:                              //   in Loop: Header=BB12_3 Depth=1
	{
		r0 = memw(r30+#-28)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB12_13
	}
	{
		jump .LBB12_11
	}
.LBB12_11:                              //   in Loop: Header=BB12_3 Depth=1
	{
		r1:0 = memd(##.L__profc_strncmp+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strncmp+16) = r1:0
	}
	{
		jump .LBB12_12
	}
.LBB12_12:                              //   in Loop: Header=BB12_3 Depth=1
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
.LBB12_13:
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
		jump .LBB12_14
	}
.LBB12_14:
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
		r1:0 = memd(##.L__profc_swab)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_swab) = r1:0
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
		r1:0 = memd(##.L__profc_swab+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_swab+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_isalpha)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_isalpha) = r1:0
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
		r1:0 = memd(##.L__profc_isascii)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_isascii) = r1:0
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
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r1:0 = memd(##.L__profc_isblank)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_isblank) = r1:0
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
		if (p0) jump:nt .LBB16_3
	}
	{
		jump .LBB16_1
	}
.LBB16_1:
	{
		r1:0 = memd(##.L__profc_isblank+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_isblank+8) = r1:0
	}
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
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		p1 = or(p0,p0)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB16_3
	}
	{
		jump .LBB16_2
	}
.LBB16_2:
	{
		r0 = memw(r30+#-12)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_isblank+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_isblank+16) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB16_3
	}
.LBB16_3:
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
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r1:0 = memd(##.L__profc_iscntrl)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iscntrl) = r1:0
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
		if (p0) jump:nt .LBB17_3
	}
	{
		jump .LBB17_1
	}
.LBB17_1:
	{
		r1:0 = memd(##.L__profc_iscntrl+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iscntrl+8) = r1:0
	}
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
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		p1 = or(p0,p0)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB17_3
	}
	{
		jump .LBB17_2
	}
.LBB17_2:
	{
		r0 = memw(r30+#-12)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_iscntrl+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iscntrl+16) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB17_3
	}
.LBB17_3:
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
		r1:0 = memd(##.L__profc_isdigit)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_isdigit) = r1:0
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
		r1:0 = memd(##.L__profc_isgraph)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_isgraph) = r1:0
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
		r1:0 = memd(##.L__profc_islower)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_islower) = r1:0
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
		r1:0 = memd(##.L__profc_isprint)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_isprint) = r1:0
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
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r1:0 = memd(##.L__profc_isspace)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_isspace) = r1:0
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
		if (p0) jump:nt .LBB22_3
	}
	{
		jump .LBB22_1
	}
.LBB22_1:
	{
		r1:0 = memd(##.L__profc_isspace+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_isspace+8) = r1:0
	}
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
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		p1 = or(p0,p0)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB22_3
	}
	{
		jump .LBB22_2
	}
.LBB22_2:
	{
		r0 = memw(r30+#-12)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_isspace+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_isspace+16) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB22_3
	}
.LBB22_3:
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
		r1:0 = memd(##.L__profc_isupper)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_isupper) = r1:0
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
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r1:0 = memd(##.L__profc_iswcntrl)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswcntrl) = r1:0
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
		if (p0) jump:nt .LBB24_7
	}
	{
		jump .LBB24_1
	}
.LBB24_1:
	{
		r1:0 = memd(##.L__profc_iswcntrl+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswcntrl+40) = r1:0
	}
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
		if (p0) jump:nt .LBB24_7
	}
	{
		jump .LBB24_2
	}
.LBB24_2:
	{
		r1:0 = memd(##.L__profc_iswcntrl+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswcntrl+48) = r1:0
	}
	{
		jump .LBB24_3
	}
.LBB24_3:
	{
		r1:0 = memd(##.L__profc_iswcntrl+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswcntrl+24) = r1:0
	}
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
		if (p0) jump:nt .LBB24_7
	}
	{
		jump .LBB24_4
	}
.LBB24_4:
	{
		r1:0 = memd(##.L__profc_iswcntrl+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswcntrl+32) = r1:0
	}
	{
		jump .LBB24_5
	}
.LBB24_5:
	{
		r1:0 = memd(##.L__profc_iswcntrl+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswcntrl+8) = r1:0
	}
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
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		p1 = or(p0,p0)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB24_7
	}
	{
		jump .LBB24_6
	}
.LBB24_6:
	{
		r0 = memw(r30+#-12)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_iswcntrl+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswcntrl+16) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB24_7
	}
.LBB24_7:
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
		r1:0 = memd(##.L__profc_iswdigit)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswdigit) = r1:0
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
		r1:0 = memd(##.L__profc_iswprint)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswprint) = r1:0
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
		r1:0 = memd(##.L__profc_iswprint+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswprint+8) = r1:0
	}
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
		jump .LBB26_13
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
		if (p0) jump:nt .LBB26_7
	}
	{
		jump .LBB26_3
	}
.LBB26_3:
	{
		r1:0 = memd(##.L__profc_iswprint+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswprint+40) = r1:0
	}
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
		if (p0) jump:nt .LBB26_7
	}
	{
		jump .LBB26_4
	}
.LBB26_4:
	{
		r1:0 = memd(##.L__profc_iswprint+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswprint+48) = r1:0
	}
	{
		jump .LBB26_5
	}
.LBB26_5:
	{
		r1:0 = memd(##.L__profc_iswprint+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswprint+24) = r1:0
	}
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
		p0 = not(p0)
	}
	{
		if (p0) jump:nt .LBB26_7
	}
	{
		jump .LBB26_6
	}
.LBB26_6:
	{
		r1:0 = memd(##.L__profc_iswprint+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswprint+32) = r1:0
	}
	{
		jump .LBB26_8
	}
.LBB26_7:
	{
		r1:0 = memd(##.L__profc_iswprint+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswprint+16) = r1:0
	}
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #1
	}
	{
		jump .LBB26_13
	}
.LBB26_8:
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
		if (p0) jump:nt .LBB26_11
	}
	{
		jump .LBB26_9
	}
.LBB26_9:
	{
		r1:0 = memd(##.L__profc_iswprint+64)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswprint+64) = r1:0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		r1 = ##65534
	}
	{
		p0 = bitsset(r0,r1)
	}
	{
		if (p0) jump:nt .LBB26_11
	}
	{
		jump .LBB26_10
	}
.LBB26_10:
	{
		r1:0 = memd(##.L__profc_iswprint+72)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswprint+72) = r1:0
	}
	{
		jump .LBB26_12
	}
.LBB26_11:
	{
		r1:0 = memd(##.L__profc_iswprint+56)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswprint+56) = r1:0
	}
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB26_13
	}
.LBB26_12:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #1
	}
	{
		jump .LBB26_13
	}
.LBB26_13:
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
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r1:0 = memd(##.L__profc_iswxdigit)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswxdigit) = r1:0
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
		if (p0) jump:nt .LBB27_3
	}
	{
		jump .LBB27_1
	}
.LBB27_1:
	{
		r1:0 = memd(##.L__profc_iswxdigit+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswxdigit+8) = r1:0
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
		p0 = cmp.gtu(r0,#5)
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
		p1 = or(p0,p0)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB27_3
	}
	{
		jump .LBB27_2
	}
.LBB27_2:
	{
		r0 = memw(r30+#-12)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_iswxdigit+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_iswxdigit+16) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB27_3
	}
.LBB27_3:
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
		r1:0 = memd(##.L__profc_toascii)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_toascii) = r1:0
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
		r1:0 = memd(##.L__profc_fdim)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fdim) = r1:0
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
		r1:0 = memd(##.L__profc_fdim+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fdim+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fdim+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fdim+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fdim+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fdim+24) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fdimf)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fdimf) = r1:0
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
		r1:0 = memd(##.L__profc_fdimf+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fdimf+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fdimf+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fdimf+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fdimf+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fdimf+24) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fmax)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmax) = r1:0
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
		r1:0 = memd(##.L__profc_fmax+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmax+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fmax+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmax+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fmax+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmax+24) = r1:0
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
		if (p0) jump:nt .LBB31_7
	}
	{
		jump .LBB31_6
	}
.LBB31_6:
	{
		r1:0 = memd(##.L__profc_fmax+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmax+32) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fmax+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmax+40) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fmaxf)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmaxf) = r1:0
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
		r1:0 = memd(##.L__profc_fmaxf+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmaxf+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fmaxf+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmaxf+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fmaxf+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmaxf+24) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fmaxf+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmaxf+32) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fmaxf+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmaxf+40) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fmaxl)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmaxl) = r1:0
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
		r1:0 = memd(##.L__profc_fmaxl+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmaxl+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fmaxl+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmaxl+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fmaxl+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmaxl+24) = r1:0
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
		if (p0) jump:nt .LBB33_7
	}
	{
		jump .LBB33_6
	}
.LBB33_6:
	{
		r1:0 = memd(##.L__profc_fmaxl+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmaxl+32) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fmaxl+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmaxl+40) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fmin)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmin) = r1:0
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
		r1:0 = memd(##.L__profc_fmin+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmin+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fmin+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmin+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fmin+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmin+24) = r1:0
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
		if (p0) jump:nt .LBB34_7
	}
	{
		jump .LBB34_6
	}
.LBB34_6:
	{
		r1:0 = memd(##.L__profc_fmin+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmin+32) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fmin+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fmin+40) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fminf)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fminf) = r1:0
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
		r1:0 = memd(##.L__profc_fminf+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fminf+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fminf+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fminf+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fminf+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fminf+24) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fminf+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fminf+32) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fminf+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fminf+40) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fminl)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fminl) = r1:0
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
		r1:0 = memd(##.L__profc_fminl+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fminl+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fminl+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fminl+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fminl+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fminl+24) = r1:0
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
		if (p0) jump:nt .LBB36_7
	}
	{
		jump .LBB36_6
	}
.LBB36_6:
	{
		r1:0 = memd(##.L__profc_fminl+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fminl+32) = r1:0
	}
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
		r1:0 = memd(##.L__profc_fminl+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_fminl+40) = r1:0
	}
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
		r1:0 = memd(##.L__profc_l64a)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_l64a) = r1:0
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
		r1:0 = memd(##.L__profc_l64a+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_l64a+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_srand)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_srand) = r1:0
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
		r1:0 = memd(##.L__profc_rand)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_rand) = r1:0
	}
	{
		r7:6 = memd(##seed)
	}
	{
		r13:12 = CONST64(#6364136223846793005)
	}
	{
		r0 = r12
	}
	{
		r8 = r6
	}
	{
		r5:4 = mpyu(r8,r0)
	}
	{
		r1 = r5
	}
	{
		r9 = r13
	}
	{
		r1 += mpyi(r8,r9)
	}
	{
		r6 = r7
	}
	{
		r1 += mpyi(r0,r6)
	}
	{
		r0 = r4
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
		r1:0 = memd(##.L__profc_insque)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_insque) = r1:0
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
		r1:0 = memd(##.L__profc_insque+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_insque+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_insque+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_insque+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_remque)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_remque) = r1:0
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
		r1:0 = memd(##.L__profc_remque+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_remque+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_remque+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_remque+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_lsearch)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_lsearch) = r1:0
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
		r1:0 = memd(##.L__profc_lsearch+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_lsearch+8) = r1:0
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
		r1:0 = memd(##.L__profc_lsearch+16)
	}
	{
		r5:4 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r5:4)
	}
	{
		memd(##.L__profc_lsearch+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_lfind)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_lfind) = r1:0
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
		r1:0 = memd(##.L__profc_lfind+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_lfind+8) = r1:0
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
		r1:0 = memd(##.L__profc_lfind+16)
	}
	{
		r5:4 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r5:4)
	}
	{
		memd(##.L__profc_lfind+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_abs)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_abs) = r1:0
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
		r1:0 = memd(##.L__profc_abs+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_abs+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_atoi)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atoi) = r1:0
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
		r1:0 = memd(##.L__profc_atoi+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atoi+8) = r1:0
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
		jump .LBB45_14
	}
.LBB45_14:
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
		if (p0) jump:nt .LBB45_7
	}
	{
		jump .LBB45_4
	}
.LBB45_4:
	{
		r1:0 = memd(##.L__profc_atoi+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atoi+24) = r1:0
	}
	{
		r0 = add(r30,#-12)
	}
	{
		memw(r0+#0) = #1
	}
	{
		jump .LBB45_6
	}
.LBB45_5:
	{
		r1:0 = memd(##.L__profc_atoi+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atoi+32) = r1:0
	}
	{
		jump .LBB45_6
	}
.LBB45_6:
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
		jump .LBB45_7
	}
.LBB45_7:
	{
		r1:0 = memd(##.L__profc_atoi+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atoi+16) = r1:0
	}
	{
		jump .LBB45_8
	}
.LBB45_8:                               // =>This Inner Loop Header: Depth=1
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
		if (p0) jump:nt .LBB45_10
	}
	{
		jump .LBB45_9
	}
.LBB45_9:                               //   in Loop: Header=BB45_8 Depth=1
	{
		r1:0 = memd(##.L__profc_atoi+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atoi+40) = r1:0
	}
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
		jump .LBB45_8
	}
.LBB45_10:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB45_12
	}
	{
		jump .LBB45_11
	}
.LBB45_11:
	{
		r1:0 = memd(##.L__profc_atoi+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atoi+48) = r1:0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB45_13
	}
.LBB45_12:
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
		jump .LBB45_13
	}
.LBB45_13:
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
		r1:0 = memd(##.L__profc_atol)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atol) = r1:0
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
		r1:0 = memd(##.L__profc_atol+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atol+8) = r1:0
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
		jump .LBB46_14
	}
.LBB46_14:
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
		if (p0) jump:nt .LBB46_7
	}
	{
		jump .LBB46_4
	}
.LBB46_4:
	{
		r1:0 = memd(##.L__profc_atol+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atol+24) = r1:0
	}
	{
		r0 = add(r30,#-12)
	}
	{
		memw(r0+#0) = #1
	}
	{
		jump .LBB46_6
	}
.LBB46_5:
	{
		r1:0 = memd(##.L__profc_atol+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atol+32) = r1:0
	}
	{
		jump .LBB46_6
	}
.LBB46_6:
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
		jump .LBB46_7
	}
.LBB46_7:
	{
		r1:0 = memd(##.L__profc_atol+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atol+16) = r1:0
	}
	{
		jump .LBB46_8
	}
.LBB46_8:                               // =>This Inner Loop Header: Depth=1
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
		if (p0) jump:nt .LBB46_10
	}
	{
		jump .LBB46_9
	}
.LBB46_9:                               //   in Loop: Header=BB46_8 Depth=1
	{
		r1:0 = memd(##.L__profc_atol+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atol+40) = r1:0
	}
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
		jump .LBB46_8
	}
.LBB46_10:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB46_12
	}
	{
		jump .LBB46_11
	}
.LBB46_11:
	{
		r1:0 = memd(##.L__profc_atol+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atol+48) = r1:0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB46_13
	}
.LBB46_12:
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
		jump .LBB46_13
	}
.LBB46_13:
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
		r1:0 = memd(##.L__profc_atoll)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atoll) = r1:0
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
		r1:0 = memd(##.L__profc_atoll+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atoll+8) = r1:0
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
		jump .LBB47_14
	}
.LBB47_14:
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
		if (p0) jump:nt .LBB47_7
	}
	{
		jump .LBB47_4
	}
.LBB47_4:
	{
		r1:0 = memd(##.L__profc_atoll+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atoll+24) = r1:0
	}
	{
		r0 = add(r30,#-20)
	}
	{
		memw(r0+#0) = #1
	}
	{
		jump .LBB47_6
	}
.LBB47_5:
	{
		r1:0 = memd(##.L__profc_atoll+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atoll+32) = r1:0
	}
	{
		jump .LBB47_6
	}
.LBB47_6:
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
		jump .LBB47_7
	}
.LBB47_7:
	{
		r1:0 = memd(##.L__profc_atoll+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atoll+16) = r1:0
	}
	{
		jump .LBB47_8
	}
.LBB47_8:                               // =>This Inner Loop Header: Depth=1
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
		if (p0) jump:nt .LBB47_10
	}
	{
		jump .LBB47_9
	}
.LBB47_9:                               //   in Loop: Header=BB47_8 Depth=1
	{
		r1:0 = memd(##.L__profc_atoll+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atoll+40) = r1:0
	}
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
		jump .LBB47_8
	}
.LBB47_10:
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB47_12
	}
	{
		jump .LBB47_11
	}
.LBB47_11:
	{
		r1:0 = memd(##.L__profc_atoll+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_atoll+48) = r1:0
	}
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-32) = r1:0
	}                                       // 8-byte Folded Spill
	{
		jump .LBB47_13
	}
.LBB47_12:
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
		jump .LBB47_13
	}
.LBB47_13:
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
		r1:0 = memd(##.L__profc_bsearch)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_bsearch) = r1:0
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
		r1:0 = memd(##.L__profc_bsearch+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_bsearch+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_bsearch+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_bsearch+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_bsearch+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_bsearch+24) = r1:0
	}
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
		r1:0 = memd(##.L__profc_bsearch_r)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_bsearch_r) = r1:0
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
		r1:0 = memd(##.L__profc_bsearch_r+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_bsearch_r+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_bsearch_r+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_bsearch_r+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_bsearch_r+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_bsearch_r+24) = r1:0
	}
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
		r1:0 = memd(##.L__profc_div)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_div) = r1:0
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
		r3:2 = memd(##.L__profc_imaxabs)
	}
	{
		r1:0 = combine(#0,#1)
	}
	{
		r3:2 = add(r3:2,r1:0)
	}
	{
		memd(##.L__profc_imaxabs) = r3:2
	}
	{
		r3:2 = memd(r30+#-8)
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
		r1:0 = memd(##.L__profc_imaxabs+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_imaxabs+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_imaxdiv)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_imaxdiv) = r1:0
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
		r1:0 = memd(##.L__profc_labs)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_labs) = r1:0
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
		r1:0 = memd(##.L__profc_labs+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_labs+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_ldiv)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldiv) = r1:0
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
		r3:2 = memd(##.L__profc_llabs)
	}
	{
		r1:0 = combine(#0,#1)
	}
	{
		r3:2 = add(r3:2,r1:0)
	}
	{
		memd(##.L__profc_llabs) = r3:2
	}
	{
		r3:2 = memd(r30+#-8)
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
		r1:0 = memd(##.L__profc_llabs+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_llabs+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_lldiv)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_lldiv) = r1:0
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
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r1:0 = memd(##.L__profc_wcschr)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcschr) = r1:0
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
		if (p0) jump:nt .LBB57_4
	}
	{
		jump .LBB57_2
	}
.LBB57_2:                               //   in Loop: Header=BB57_1 Depth=1
	{
		r1:0 = memd(##.L__profc_wcschr+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcschr+16) = r1:0
	}
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
		p1 = not(p0)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		r0 = p1
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB57_4
	}
	{
		jump .LBB57_3
	}
.LBB57_3:                               //   in Loop: Header=BB57_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_wcschr+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcschr+24) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB57_4
	}
.LBB57_4:                               //   in Loop: Header=BB57_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB57_7
	}
	{
		jump .LBB57_5
	}
.LBB57_5:                               //   in Loop: Header=BB57_1 Depth=1
	{
		r1:0 = memd(##.L__profc_wcschr+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcschr+8) = r1:0
	}
	{
		jump .LBB57_6
	}
.LBB57_6:                               //   in Loop: Header=BB57_1 Depth=1
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
.LBB57_7:
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
		if (p0) jump:nt .LBB57_9
	}
	{
		jump .LBB57_8
	}
.LBB57_8:
	{
		r1:0 = memd(##.L__profc_wcschr+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcschr+32) = r1:0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB57_10
	}
.LBB57_9:
	{
		r0 = #0
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB57_10
	}
.LBB57_10:
	{
		r0 = memw(r30+#-20)
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
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r1:0 = memd(##.L__profc_wcscmp)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcscmp) = r1:0
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
		if (p0) jump:nt .LBB58_6
	}
	{
		jump .LBB58_2
	}
.LBB58_2:                               //   in Loop: Header=BB58_1 Depth=1
	{
		r1:0 = memd(##.L__profc_wcscmp+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcscmp+32) = r1:0
	}
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
		if (p0) jump:nt .LBB58_6
	}
	{
		jump .LBB58_3
	}
.LBB58_3:                               //   in Loop: Header=BB58_1 Depth=1
	{
		r1:0 = memd(##.L__profc_wcscmp+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcscmp+40) = r1:0
	}
	{
		jump .LBB58_4
	}
.LBB58_4:                               //   in Loop: Header=BB58_1 Depth=1
	{
		r1:0 = memd(##.L__profc_wcscmp+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcscmp+16) = r1:0
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
		p1 = not(p0)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		r0 = p1
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB58_6
	}
	{
		jump .LBB58_5
	}
.LBB58_5:                               //   in Loop: Header=BB58_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_wcscmp+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcscmp+24) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB58_6
	}
.LBB58_6:                               //   in Loop: Header=BB58_1 Depth=1
	{
		r0 = memw(r30+#-12)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB58_9
	}
	{
		jump .LBB58_7
	}
.LBB58_7:                               //   in Loop: Header=BB58_1 Depth=1
	{
		r1:0 = memd(##.L__profc_wcscmp+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcscmp+8) = r1:0
	}
	{
		jump .LBB58_8
	}
.LBB58_8:                               //   in Loop: Header=BB58_1 Depth=1
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
.LBB58_9:
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
		if (p0) jump:nt .LBB58_11
	}
	{
		jump .LBB58_10
	}
.LBB58_10:
	{
		r1:0 = memd(##.L__profc_wcscmp+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcscmp+48) = r1:0
	}
	{
		r0 = #-1
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB58_12
	}
.LBB58_11:
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
		jump .LBB58_12
	}
.LBB58_12:
	{
		r0 = memw(r30+#-20)
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
		r1:0 = memd(##.L__profc_wcscpy)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcscpy) = r1:0
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
		r1:0 = memd(##.L__profc_wcscpy+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcscpy+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_wcslen)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcslen) = r1:0
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
		r1:0 = memd(##.L__profc_wcslen+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcslen+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_wcsncmp)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcsncmp) = r1:0
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
		if (p0) jump:nt .LBB61_8
	}
	{
		jump .LBB61_2
	}
.LBB61_2:                               //   in Loop: Header=BB61_1 Depth=1
	{
		r1:0 = memd(##.L__profc_wcsncmp+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcsncmp+48) = r1:0
	}
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
		if (p0) jump:nt .LBB61_8
	}
	{
		jump .LBB61_3
	}
.LBB61_3:                               //   in Loop: Header=BB61_1 Depth=1
	{
		r1:0 = memd(##.L__profc_wcsncmp+56)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcsncmp+56) = r1:0
	}
	{
		jump .LBB61_4
	}
.LBB61_4:                               //   in Loop: Header=BB61_1 Depth=1
	{
		r1:0 = memd(##.L__profc_wcsncmp+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcsncmp+32) = r1:0
	}
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
		if (p0) jump:nt .LBB61_8
	}
	{
		jump .LBB61_5
	}
.LBB61_5:                               //   in Loop: Header=BB61_1 Depth=1
	{
		r1:0 = memd(##.L__profc_wcsncmp+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcsncmp+40) = r1:0
	}
	{
		jump .LBB61_6
	}
.LBB61_6:                               //   in Loop: Header=BB61_1 Depth=1
	{
		r1:0 = memd(##.L__profc_wcsncmp+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcsncmp+16) = r1:0
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
		p1 = not(p0)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		r0 = p1
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB61_8
	}
	{
		jump .LBB61_7
	}
.LBB61_7:                               //   in Loop: Header=BB61_1 Depth=1
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_wcsncmp+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcsncmp+24) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB61_8
	}
.LBB61_8:                               //   in Loop: Header=BB61_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB61_11
	}
	{
		jump .LBB61_9
	}
.LBB61_9:                               //   in Loop: Header=BB61_1 Depth=1
	{
		r1:0 = memd(##.L__profc_wcsncmp+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcsncmp+8) = r1:0
	}
	{
		jump .LBB61_10
	}
.LBB61_10:                              //   in Loop: Header=BB61_1 Depth=1
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
.LBB61_11:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB61_16
	}
	{
		jump .LBB61_12
	}
.LBB61_12:
	{
		r1:0 = memd(##.L__profc_wcsncmp+64)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcsncmp+64) = r1:0
	}
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
		if (p0) jump:nt .LBB61_14
	}
	{
		jump .LBB61_13
	}
.LBB61_13:
	{
		r1:0 = memd(##.L__profc_wcsncmp+72)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wcsncmp+72) = r1:0
	}
	{
		r0 = #-1
	}
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB61_15
	}
.LBB61_14:
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
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB61_15
	}
.LBB61_15:
	{
		r0 = memw(r30+#-24)
	}                                       // 4-byte Folded Reload
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB61_17
	}
.LBB61_16:
	{
		r0 = #0
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB61_17
	}
.LBB61_17:
	{
		r0 = memw(r30+#-28)
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
		r1:0 = memd(##.L__profc_wmemchr)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemchr) = r1:0
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
		if (p0) jump:nt .LBB62_4
	}
	{
		jump .LBB62_2
	}
.LBB62_2:                               //   in Loop: Header=BB62_1 Depth=1
	{
		r1:0 = memd(##.L__profc_wmemchr+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemchr+16) = r1:0
	}
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
		p1 = not(p0)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		r0 = p1
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB62_4
	}
	{
		jump .LBB62_3
	}
.LBB62_3:                               //   in Loop: Header=BB62_1 Depth=1
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_wmemchr+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemchr+24) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB62_4
	}
.LBB62_4:                               //   in Loop: Header=BB62_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB62_7
	}
	{
		jump .LBB62_5
	}
.LBB62_5:                               //   in Loop: Header=BB62_1 Depth=1
	{
		r1:0 = memd(##.L__profc_wmemchr+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemchr+8) = r1:0
	}
	{
		jump .LBB62_6
	}
.LBB62_6:                               //   in Loop: Header=BB62_1 Depth=1
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
.LBB62_7:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB62_9
	}
	{
		jump .LBB62_8
	}
.LBB62_8:
	{
		r1:0 = memd(##.L__profc_wmemchr+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemchr+32) = r1:0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB62_10
	}
.LBB62_9:
	{
		r0 = #0
	}
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB62_10
	}
.LBB62_10:
	{
		r0 = memw(r30+#-24)
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
		r1:0 = memd(##.L__profc_wmemcmp)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemcmp) = r1:0
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
		if (p0) jump:nt .LBB63_4
	}
	{
		jump .LBB63_2
	}
.LBB63_2:                               //   in Loop: Header=BB63_1 Depth=1
	{
		r1:0 = memd(##.L__profc_wmemcmp+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemcmp+16) = r1:0
	}
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
		p1 = cmp.eq(r0,r1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		p0 = not(p1)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB63_4
	}
	{
		jump .LBB63_3
	}
.LBB63_3:                               //   in Loop: Header=BB63_1 Depth=1
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_wmemcmp+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemcmp+24) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB63_4
	}
.LBB63_4:                               //   in Loop: Header=BB63_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB63_7
	}
	{
		jump .LBB63_5
	}
.LBB63_5:                               //   in Loop: Header=BB63_1 Depth=1
	{
		r1:0 = memd(##.L__profc_wmemcmp+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemcmp+8) = r1:0
	}
	{
		jump .LBB63_6
	}
.LBB63_6:                               //   in Loop: Header=BB63_1 Depth=1
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
.LBB63_7:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB63_12
	}
	{
		jump .LBB63_8
	}
.LBB63_8:
	{
		r1:0 = memd(##.L__profc_wmemcmp+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemcmp+32) = r1:0
	}
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
		if (p0) jump:nt .LBB63_10
	}
	{
		jump .LBB63_9
	}
.LBB63_9:
	{
		r1:0 = memd(##.L__profc_wmemcmp+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemcmp+40) = r1:0
	}
	{
		r0 = #-1
	}
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB63_11
	}
.LBB63_10:
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
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB63_11
	}
.LBB63_11:
	{
		r0 = memw(r30+#-24)
	}                                       // 4-byte Folded Reload
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB63_13
	}
.LBB63_12:
	{
		r0 = #0
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB63_13
	}
.LBB63_13:
	{
		r0 = memw(r30+#-28)
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
		r1:0 = memd(##.L__profc_wmemcpy)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemcpy) = r1:0
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
		r1:0 = memd(##.L__profc_wmemcpy+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemcpy+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_wmemmove)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemmove) = r1:0
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
		r1:0 = memd(##.L__profc_wmemmove+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemmove+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_wmemmove+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemmove+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_wmemmove+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemmove+24) = r1:0
	}
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
		r1:0 = memd(##.L__profc_wmemmove+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemmove+32) = r1:0
	}
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
		r1:0 = memd(##.L__profc_wmemset)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemset) = r1:0
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
		r1:0 = memd(##.L__profc_wmemset+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_wmemset+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_bcopy)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_bcopy) = r1:0
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
		r1:0 = memd(##.L__profc_bcopy+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_bcopy+8) = r1:0
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
		r1:0 = memd(##.L__profc_bcopy+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_bcopy+16) = r1:0
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
		r1:0 = memd(##.L__profc_bcopy+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_bcopy+24) = r1:0
	}
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
		r1:0 = memd(##.L__profc_bcopy+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_bcopy+32) = r1:0
	}
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
		r1:0 = memd(##.L__profc_rotl64)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_rotl64) = r1:0
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
		r1:0 = memd(##.L__profc_rotr64)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_rotr64) = r1:0
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
		r1:0 = memd(##.L__profc_rotl32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_rotl32) = r1:0
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
		r1:0 = memd(##.L__profc_rotr32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_rotr32) = r1:0
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
		r1:0 = memd(##.L__profc_rotl_sz)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_rotl_sz) = r1:0
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
		r1:0 = memd(##.L__profc_rotr_sz)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_rotr_sz) = r1:0
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
		r1:0 = memd(##.L__profc_rotl16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_rotl16) = r1:0
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
		r1:0 = memd(##.L__profc_rotr16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_rotr16) = r1:0
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
		r1:0 = memd(##.L__profc_rotl8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_rotl8) = r1:0
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
		r1:0 = memd(##.L__profc_rotr8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_rotr8) = r1:0
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
		r1:0 = memd(##.L__profc_bswap_16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_bswap_16) = r1:0
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
		r1:0 = memd(##.L__profc_bswap_32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_bswap_32) = r1:0
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
		r1:0 = memd(##.L__profc_bswap_64)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_bswap_64) = r1:0
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
		r1:0 = memd(##.L__profc_ffs)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ffs) = r1:0
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
		r1:0 = memd(##.L__profc_ffs+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ffs+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_ffs+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ffs+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_libiberty_ffs)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_libiberty_ffs) = r1:0
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
		r1:0 = memd(##.L__profc_libiberty_ffs+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_libiberty_ffs+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_libiberty_ffs+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_libiberty_ffs+16) = r1:0
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
		allocframe(r29,#16):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		r1:0 = memd(##.L__profc_gl_isinff)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_gl_isinff) = r1:0
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
		if (p0) jump:nt .LBB83_3
	}
	{
		jump .LBB83_1
	}
.LBB83_1:
	{
		r1:0 = memd(##.L__profc_gl_isinff+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_gl_isinff+8) = r1:0
	}
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
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		p1 = or(p0,p0)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB83_3
	}
	{
		jump .LBB83_2
	}
.LBB83_2:
	{
		r0 = memw(r30+#-12)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_gl_isinff+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_gl_isinff+16) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-8) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB83_3
	}
.LBB83_3:
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
		r1:0 = memd(##.L__profc_gl_isinfd)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_gl_isinfd) = r1:0
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
		if (p0) jump:nt .LBB84_3
	}
	{
		jump .LBB84_1
	}
.LBB84_1:
	{
		r1:0 = memd(##.L__profc_gl_isinfd+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_gl_isinfd+8) = r1:0
	}
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
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		p1 = or(p0,p0)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB84_3
	}
	{
		jump .LBB84_2
	}
.LBB84_2:
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_gl_isinfd+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_gl_isinfd+16) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB84_3
	}
.LBB84_3:
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
		r1:0 = memd(##.L__profc_gl_isinfl)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_gl_isinfl) = r1:0
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
		if (p0) jump:nt .LBB85_3
	}
	{
		jump .LBB85_1
	}
.LBB85_1:
	{
		r1:0 = memd(##.L__profc_gl_isinfl+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_gl_isinfl+8) = r1:0
	}
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
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		p1 = or(p0,p0)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB85_3
	}
	{
		jump .LBB85_2
	}
.LBB85_2:
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_gl_isinfl+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_gl_isinfl+16) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-12) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB85_3
	}
.LBB85_3:
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
		r1:0 = memd(##.L__profc__Qp_itoq)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc__Qp_itoq) = r1:0
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
		r1:0 = memd(##.L__profc_ldexpf)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexpf) = r1:0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		p0 = sfcmp.uo(r0,r0)
	}
	{
		if (p0) jump:nt .LBB87_10
	}
	{
		jump .LBB87_1
	}
.LBB87_1:
	{
		r1:0 = memd(##.L__profc_ldexpf+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexpf+16) = r1:0
	}
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
		if (p0) jump:nt .LBB87_10
	}
	{
		jump .LBB87_2
	}
.LBB87_2:
	{
		r1:0 = memd(##.L__profc_ldexpf+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexpf+24) = r1:0
	}
	{
		jump .LBB87_3
	}
.LBB87_3:
	{
		r1:0 = memd(##.L__profc_ldexpf+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexpf+8) = r1:0
	}
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
		r0 = lsr(r0,#31)
	}
	{
		r3:2 = combine(#0,r0)
	}
	{
		r1:0 = memd(##.L__profc_ldexpf+32)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexpf+32) = r1:0
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
		jump .LBB87_4
	}
.LBB87_4:                               // =>This Inner Loop Header: Depth=1
	{
		r1:0 = memd(##.L__profc_ldexpf+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexpf+40) = r1:0
	}
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
		if (p0) jump:nt .LBB87_6
	}
	{
		jump .LBB87_5
	}
.LBB87_5:                               //   in Loop: Header=BB87_4 Depth=1
	{
		r1:0 = memd(##.L__profc_ldexpf+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexpf+48) = r1:0
	}
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
		jump .LBB87_6
	}
.LBB87_6:                               //   in Loop: Header=BB87_4 Depth=1
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
		if (p0) jump:nt .LBB87_8
	}
	{
		jump .LBB87_7
	}
.LBB87_7:
	{
		r1:0 = memd(##.L__profc_ldexpf+56)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexpf+56) = r1:0
	}
	{
		jump .LBB87_9
	}
.LBB87_8:                               //   in Loop: Header=BB87_4 Depth=1
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
		jump .LBB87_4
	}
.LBB87_9:
	{
		jump .LBB87_10
	}
.LBB87_10:
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
		r1:0 = memd(##.L__profc_ldexp)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexp) = r1:0
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		p0 = dfcmp.uo(r1:0,r1:0)
	}
	{
		if (p0) jump:nt .LBB88_10
	}
	{
		jump .LBB88_1
	}
.LBB88_1:
	{
		r1:0 = memd(##.L__profc_ldexp+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexp+16) = r1:0
	}
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
		if (p0) jump:nt .LBB88_10
	}
	{
		jump .LBB88_2
	}
.LBB88_2:
	{
		r1:0 = memd(##.L__profc_ldexp+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexp+24) = r1:0
	}
	{
		jump .LBB88_3
	}
.LBB88_3:
	{
		r1:0 = memd(##.L__profc_ldexp+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexp+8) = r1:0
	}
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
		r0 = lsr(r0,#31)
	}
	{
		r3:2 = combine(#0,r0)
	}
	{
		r1:0 = memd(##.L__profc_ldexp+32)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexp+32) = r1:0
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
		jump .LBB88_4
	}
.LBB88_4:                               // =>This Inner Loop Header: Depth=1
	{
		r1:0 = memd(##.L__profc_ldexp+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexp+40) = r1:0
	}
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
		if (p0) jump:nt .LBB88_6
	}
	{
		jump .LBB88_5
	}
.LBB88_5:                               //   in Loop: Header=BB88_4 Depth=1
	{
		r1:0 = memd(##.L__profc_ldexp+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexp+48) = r1:0
	}
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
		jump .LBB88_6
	}
.LBB88_6:                               //   in Loop: Header=BB88_4 Depth=1
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
		if (p0) jump:nt .LBB88_8
	}
	{
		jump .LBB88_7
	}
.LBB88_7:
	{
		r1:0 = memd(##.L__profc_ldexp+56)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexp+56) = r1:0
	}
	{
		jump .LBB88_9
	}
.LBB88_8:                               //   in Loop: Header=BB88_4 Depth=1
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
		jump .LBB88_4
	}
.LBB88_9:
	{
		jump .LBB88_10
	}
.LBB88_10:
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
		r1:0 = memd(##.L__profc_ldexpl)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexpl) = r1:0
	}
	{
		r1:0 = memd(r30+#-8)
	}
	{
		p0 = dfcmp.uo(r1:0,r1:0)
	}
	{
		if (p0) jump:nt .LBB89_10
	}
	{
		jump .LBB89_1
	}
.LBB89_1:
	{
		r1:0 = memd(##.L__profc_ldexpl+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexpl+16) = r1:0
	}
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
		if (p0) jump:nt .LBB89_10
	}
	{
		jump .LBB89_2
	}
.LBB89_2:
	{
		r1:0 = memd(##.L__profc_ldexpl+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexpl+24) = r1:0
	}
	{
		jump .LBB89_3
	}
.LBB89_3:
	{
		r1:0 = memd(##.L__profc_ldexpl+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexpl+8) = r1:0
	}
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
		r0 = lsr(r0,#31)
	}
	{
		r3:2 = combine(#0,r0)
	}
	{
		r1:0 = memd(##.L__profc_ldexpl+32)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexpl+32) = r1:0
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
		jump .LBB89_4
	}
.LBB89_4:                               // =>This Inner Loop Header: Depth=1
	{
		r1:0 = memd(##.L__profc_ldexpl+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexpl+40) = r1:0
	}
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
		if (p0) jump:nt .LBB89_6
	}
	{
		jump .LBB89_5
	}
.LBB89_5:                               //   in Loop: Header=BB89_4 Depth=1
	{
		r1:0 = memd(##.L__profc_ldexpl+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexpl+48) = r1:0
	}
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
		jump .LBB89_6
	}
.LBB89_6:                               //   in Loop: Header=BB89_4 Depth=1
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
		if (p0) jump:nt .LBB89_8
	}
	{
		jump .LBB89_7
	}
.LBB89_7:
	{
		r1:0 = memd(##.L__profc_ldexpl+56)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_ldexpl+56) = r1:0
	}
	{
		jump .LBB89_9
	}
.LBB89_8:                               //   in Loop: Header=BB89_4 Depth=1
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
		jump .LBB89_4
	}
.LBB89_9:
	{
		jump .LBB89_10
	}
.LBB89_10:
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
		r1:0 = memd(##.L__profc_memxor)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memxor) = r1:0
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
		r1:0 = memd(##.L__profc_memxor+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memxor+8) = r1:0
	}
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
		allocframe(r29,#40):raw
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
		r1:0 = memd(##.L__profc_strncat)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strncat) = r1:0
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
		if (p0) jump:nt .LBB91_4
	}
	{
		jump .LBB91_2
	}
.LBB91_2:                               //   in Loop: Header=BB91_1 Depth=1
	{
		r1:0 = memd(##.L__profc_strncat+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strncat+16) = r1:0
	}
	{
		r0 = memw(r30+#-16)
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
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = not(p0)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-36) = r0
	}                                       // 4-byte Folded Spill
	{
		r0 = p1
	}
	{
		memw(r30+#-32) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB91_4
	}
	{
		jump .LBB91_3
	}
.LBB91_3:                               //   in Loop: Header=BB91_1 Depth=1
	{
		r0 = memw(r30+#-36)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_strncat+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strncat+24) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-32) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB91_4
	}
.LBB91_4:                               //   in Loop: Header=BB91_1 Depth=1
	{
		r0 = memw(r30+#-32)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB91_7
	}
	{
		jump .LBB91_5
	}
.LBB91_5:                               //   in Loop: Header=BB91_1 Depth=1
	{
		r1:0 = memd(##.L__profc_strncat+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strncat+8) = r1:0
	}
	{
		jump .LBB91_6
	}
.LBB91_6:                               //   in Loop: Header=BB91_1 Depth=1
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
.LBB91_7:
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
		if (p0) jump:nt .LBB91_9
	}
	{
		jump .LBB91_8
	}
.LBB91_8:
	{
		r1:0 = memd(##.L__profc_strncat+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strncat+32) = r1:0
	}
	{
		r0 = memw(r30+#-24)
	}
	{
		memb(r0+#0) = #0
	}
	{
		jump .LBB91_9
	}
.LBB91_9:
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
		allocframe(r29,#24):raw
	}
	{
		memw(r30+#-4) = r0
	}
	{
		memw(r30+#-8) = r1
	}
	{
		r1:0 = memd(##.L__profc_strnlen)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strnlen) = r1:0
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
		if (p0) jump:nt .LBB92_4
	}
	{
		jump .LBB92_2
	}
.LBB92_2:                               //   in Loop: Header=BB92_1 Depth=1
	{
		r1:0 = memd(##.L__profc_strnlen+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strnlen+16) = r1:0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		r1 = memw(r30+#-12)
	}
	{
		r0 = memub(r0+r1<<#0)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		p1 = not(p0)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		r0 = p1
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB92_4
	}
	{
		jump .LBB92_3
	}
.LBB92_3:                               //   in Loop: Header=BB92_1 Depth=1
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_strnlen+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strnlen+24) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-16) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB92_4
	}
.LBB92_4:                               //   in Loop: Header=BB92_1 Depth=1
	{
		r0 = memw(r30+#-16)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB92_7
	}
	{
		jump .LBB92_5
	}
.LBB92_5:                               //   in Loop: Header=BB92_1 Depth=1
	{
		r1:0 = memd(##.L__profc_strnlen+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strnlen+8) = r1:0
	}
	{
		jump .LBB92_6
	}
.LBB92_6:                               //   in Loop: Header=BB92_1 Depth=1
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
.LBB92_7:
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
		r1:0 = memd(##.L__profc_strpbrk)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strpbrk) = r1:0
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
		r1:0 = memd(##.L__profc_strpbrk+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strpbrk+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_strpbrk+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strpbrk+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_strpbrk+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strpbrk+24) = r1:0
	}
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
		r1:0 = memd(##.L__profc_strrchr)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strrchr) = r1:0
	}
	{
		r0 = add(r30,#-12)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB94_2
	}
.LBB94_1:                               //   in Loop: Header=BB94_2 Depth=1
	{
		r1:0 = memd(##.L__profc_strrchr+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strrchr+8) = r1:0
	}
	{
		jump .LBB94_2
	}
.LBB94_2:                               // =>This Inner Loop Header: Depth=1
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
		if (p0) jump:nt .LBB94_4
	}
	{
		jump .LBB94_3
	}
.LBB94_3:                               //   in Loop: Header=BB94_2 Depth=1
	{
		r1:0 = memd(##.L__profc_strrchr+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strrchr+16) = r1:0
	}
	{
		r0 = memw(r30+#-4)
	}
	{
		memw(r30+#-12) = r0
	}
	{
		jump .LBB94_4
	}
.LBB94_4:                               //   in Loop: Header=BB94_2 Depth=1
	{
		jump .LBB94_5
	}
.LBB94_5:                               //   in Loop: Header=BB94_2 Depth=1
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
		jump .LBB94_6
	}
.LBB94_6:
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
		r1:0 = memd(##.L__profc_strstr)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strstr) = r1:0
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
		r1:0 = memd(##.L__profc_strstr+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strstr+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_strstr+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strstr+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_strstr+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_strstr+24) = r1:0
	}
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
		r1:0 = memd(##.L__profc_copysign)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_copysign) = r1:0
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
		if (p0) jump:nt .LBB96_3
	}
	{
		jump .LBB96_1
	}
.LBB96_1:
	{
		r1:0 = memd(##.L__profc_copysign+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_copysign+24) = r1:0
	}
	{
		r3:2 = memd(r30+#-24)
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
		if (p0) jump:nt .LBB96_3
	}
	{
		jump .LBB96_2
	}
.LBB96_2:
	{
		r1:0 = memd(##.L__profc_copysign+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_copysign+32) = r1:0
	}
	{
		jump .LBB96_6
	}
.LBB96_3:
	{
		r1:0 = memd(##.L__profc_copysign+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_copysign+16) = r1:0
	}
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
		if (p0) jump:nt .LBB96_7
	}
	{
		jump .LBB96_4
	}
.LBB96_4:
	{
		r1:0 = memd(##.L__profc_copysign+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_copysign+40) = r1:0
	}
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
		if (p0) jump:nt .LBB96_7
	}
	{
		jump .LBB96_5
	}
.LBB96_5:
	{
		r1:0 = memd(##.L__profc_copysign+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_copysign+48) = r1:0
	}
	{
		jump .LBB96_6
	}
.LBB96_6:
	{
		r1:0 = memd(##.L__profc_copysign+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_copysign+8) = r1:0
	}
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
		jump .LBB96_8
	}
.LBB96_7:
	{
		r1:0 = memd(r30+#-16)
	}
	{
		memd(r30+#-8) = r1:0
	}
	{
		jump .LBB96_8
	}
.LBB96_8:
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
		r1:0 = memd(##.L__profc_memmem)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memmem) = r1:0
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
		r1:0 = memd(##.L__profc_memmem+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memmem+8) = r1:0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB97_13
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
		r1:0 = memd(##.L__profc_memmem+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memmem+16) = r1:0
	}
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB97_13
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
		if (p0) jump:nt .LBB97_12
	}
	{
		jump .LBB97_6
	}
.LBB97_6:                               //   in Loop: Header=BB97_5 Depth=1
	{
		r1:0 = memd(##.L__profc_memmem+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memmem+24) = r1:0
	}
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
		if (p0) jump:nt .LBB97_10
	}
	{
		jump .LBB97_7
	}
.LBB97_7:                               //   in Loop: Header=BB97_5 Depth=1
	{
		r1:0 = memd(##.L__profc_memmem+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memmem+40) = r1:0
	}
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
		if (p0) jump:nt .LBB97_10
	}
	{
		jump .LBB97_8
	}
.LBB97_8:
	{
		r1:0 = memd(##.L__profc_memmem+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memmem+48) = r1:0
	}
	{
		jump .LBB97_9
	}
.LBB97_9:
	{
		r1:0 = memd(##.L__profc_memmem+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_memmem+32) = r1:0
	}
	{
		r0 = memw(r30+#-24)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB97_13
	}
.LBB97_10:                              //   in Loop: Header=BB97_5 Depth=1
	{
		jump .LBB97_11
	}
.LBB97_11:                              //   in Loop: Header=BB97_5 Depth=1
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
.LBB97_12:
	{
		r0 = add(r30,#-4)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB97_13
	}
.LBB97_13:
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
		r1:0 = memd(##.L__profc_mempcpy)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_mempcpy) = r1:0
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
		r1:0 = memd(##.L__profc_frexp)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_frexp) = r1:0
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
		r1:0 = memd(##.L__profc_frexp+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_frexp+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc_frexp+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_frexp+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_frexp+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_frexp+24) = r1:0
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
		jump .LBB99_15
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
		if (p0) jump:nt .LBB99_14
	}
	{
		jump .LBB99_8
	}
.LBB99_8:
	{
		r1:0 = memd(##.L__profc_frexp+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_frexp+40) = r1:0
	}
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
		if (p0) jump:nt .LBB99_14
	}
	{
		jump .LBB99_9
	}
.LBB99_9:
	{
		r1:0 = memd(##.L__profc_frexp+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_frexp+48) = r1:0
	}
	{
		jump .LBB99_10
	}
.LBB99_10:
	{
		r1:0 = memd(##.L__profc_frexp+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_frexp+32) = r1:0
	}
	{
		jump .LBB99_11
	}
.LBB99_11:                              // =>This Inner Loop Header: Depth=1
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
		jump .LBB99_12
	}
.LBB99_12:                              //   in Loop: Header=BB99_11 Depth=1
	{
		r1:0 = memd(##.L__profc_frexp+56)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_frexp+56) = r1:0
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
		jump .LBB99_11
	}
.LBB99_13:
	{
		jump .LBB99_14
	}
.LBB99_14:
	{
		jump .LBB99_15
	}
.LBB99_15:
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
		if (p0) jump:nt .LBB99_17
	}
	{
		jump .LBB99_16
	}
.LBB99_16:
	{
		r1:0 = memd(##.L__profc_frexp+64)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_frexp+64) = r1:0
	}
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
		jump .LBB99_17
	}
.LBB99_17:
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
		r1:0 = memd(##.L__profc___muldi3)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___muldi3) = r1:0
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
		r1:0 = memd(##.L__profc___muldi3+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___muldi3+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___muldi3+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___muldi3+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc_udivmodsi4)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_udivmodsi4) = r1:0
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
		if (p0) jump:nt .LBB101_6
	}
	{
		jump .LBB101_2
	}
.LBB101_2:                              //   in Loop: Header=BB101_1 Depth=1
	{
		r1:0 = memd(##.L__profc_udivmodsi4+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_udivmodsi4+32) = r1:0
	}
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
		if (p0) jump:nt .LBB101_6
	}
	{
		jump .LBB101_3
	}
.LBB101_3:                              //   in Loop: Header=BB101_1 Depth=1
	{
		r1:0 = memd(##.L__profc_udivmodsi4+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_udivmodsi4+40) = r1:0
	}
	{
		jump .LBB101_4
	}
.LBB101_4:                              //   in Loop: Header=BB101_1 Depth=1
	{
		r1:0 = memd(##.L__profc_udivmodsi4+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_udivmodsi4+16) = r1:0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		p1 = !tstbit(r0,#31)
	}
	{
		r1 = p1
	}
	{
		memw(r30+#-32) = r1
	}                                       // 4-byte Folded Spill
	{
		p0 = tstbit(r0,#31)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB101_6
	}
	{
		jump .LBB101_5
	}
.LBB101_5:                              //   in Loop: Header=BB101_1 Depth=1
	{
		r0 = memw(r30+#-32)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc_udivmodsi4+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_udivmodsi4+24) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB101_6
	}
.LBB101_6:                              //   in Loop: Header=BB101_1 Depth=1
	{
		r0 = memw(r30+#-28)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB101_8
	}
	{
		jump .LBB101_7
	}
.LBB101_7:                              //   in Loop: Header=BB101_1 Depth=1
	{
		r1:0 = memd(##.L__profc_udivmodsi4+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_udivmodsi4+8) = r1:0
	}
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
.LBB101_8:
	{
		jump .LBB101_9
	}
.LBB101_9:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB101_13
	}
	{
		jump .LBB101_10
	}
.LBB101_10:                             //   in Loop: Header=BB101_9 Depth=1
	{
		r1:0 = memd(##.L__profc_udivmodsi4+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_udivmodsi4+48) = r1:0
	}
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
		if (p0) jump:nt .LBB101_12
	}
	{
		jump .LBB101_11
	}
.LBB101_11:                             //   in Loop: Header=BB101_9 Depth=1
	{
		r1:0 = memd(##.L__profc_udivmodsi4+56)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_udivmodsi4+56) = r1:0
	}
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
		jump .LBB101_12
	}
.LBB101_12:                             //   in Loop: Header=BB101_9 Depth=1
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
		jump .LBB101_9
	}
.LBB101_13:
	{
		r0 = memw(r30+#-16)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB101_15
	}
	{
		jump .LBB101_14
	}
.LBB101_14:
	{
		r1:0 = memd(##.L__profc_udivmodsi4+64)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc_udivmodsi4+64) = r1:0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB101_16
	}
.LBB101_15:
	{
		r0 = memw(r30+#-24)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB101_16
	}
.LBB101_16:
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
		r1:0 = memd(##.L__profc___clrsbqi2)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___clrsbqi2) = r1:0
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
		r1:0 = memd(##.L__profc___clrsbqi2+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___clrsbqi2+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___clrsbqi2+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___clrsbqi2+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___clrsbdi2)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___clrsbdi2) = r1:0
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
		r1:0 = memd(##.L__profc___clrsbdi2+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___clrsbdi2+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___clrsbdi2+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___clrsbdi2+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___mulsi3)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mulsi3) = r1:0
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
		r1:0 = memd(##.L__profc___mulsi3+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mulsi3+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___mulsi3+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mulsi3+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___cmovd)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovd) = r1:0
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
		if (p0) jump:nt .LBB105_3
	}
	{
		jump .LBB105_1
	}
.LBB105_1:
	{
		r1:0 = memd(##.L__profc___cmovd+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovd+16) = r1:0
	}
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
		if (p0) jump:nt .LBB105_3
	}
	{
		jump .LBB105_2
	}
.LBB105_2:
	{
		r1:0 = memd(##.L__profc___cmovd+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovd+24) = r1:0
	}
	{
		jump .LBB105_11
	}
.LBB105_3:
	{
		r1:0 = memd(##.L__profc___cmovd+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovd+8) = r1:0
	}
	{
		r0 = add(r30,#-16)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB105_4
	}
.LBB105_4:                              // =>This Inner Loop Header: Depth=1
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
		if (p0) jump:nt .LBB105_7
	}
	{
		jump .LBB105_5
	}
.LBB105_5:                              //   in Loop: Header=BB105_4 Depth=1
	{
		r1:0 = memd(##.L__profc___cmovd+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovd+32) = r1:0
	}
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
		jump .LBB105_6
	}
.LBB105_6:                              //   in Loop: Header=BB105_4 Depth=1
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
		jump .LBB105_4
	}
.LBB105_7:
	{
		jump .LBB105_8
	}
.LBB105_8:                              // =>This Inner Loop Header: Depth=1
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
		if (p0) jump:nt .LBB105_10
	}
	{
		jump .LBB105_9
	}
.LBB105_9:                              //   in Loop: Header=BB105_8 Depth=1
	{
		r1:0 = memd(##.L__profc___cmovd+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovd+40) = r1:0
	}
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
		jump .LBB105_8
	}
.LBB105_10:
	{
		jump .LBB105_15
	}
.LBB105_11:
	{
		jump .LBB105_12
	}
.LBB105_12:                             // =>This Inner Loop Header: Depth=1
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
		if (p0) jump:nt .LBB105_14
	}
	{
		jump .LBB105_13
	}
.LBB105_13:                             //   in Loop: Header=BB105_12 Depth=1
	{
		r1:0 = memd(##.L__profc___cmovd+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovd+48) = r1:0
	}
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
		jump .LBB105_12
	}
.LBB105_14:
	{
		jump .LBB105_15
	}
.LBB105_15:
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
		r1:0 = memd(##.L__profc___cmovh)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovh) = r1:0
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
		if (p0) jump:nt .LBB106_3
	}
	{
		jump .LBB106_1
	}
.LBB106_1:
	{
		r1:0 = memd(##.L__profc___cmovh+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovh+16) = r1:0
	}
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
		if (p0) jump:nt .LBB106_3
	}
	{
		jump .LBB106_2
	}
.LBB106_2:
	{
		r1:0 = memd(##.L__profc___cmovh+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovh+24) = r1:0
	}
	{
		jump .LBB106_10
	}
.LBB106_3:
	{
		r1:0 = memd(##.L__profc___cmovh+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovh+8) = r1:0
	}
	{
		r0 = add(r30,#-16)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB106_4
	}
.LBB106_4:                              // =>This Inner Loop Header: Depth=1
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
		if (p0) jump:nt .LBB106_7
	}
	{
		jump .LBB106_5
	}
.LBB106_5:                              //   in Loop: Header=BB106_4 Depth=1
	{
		r1:0 = memd(##.L__profc___cmovh+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovh+32) = r1:0
	}
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
		jump .LBB106_6
	}
.LBB106_6:                              //   in Loop: Header=BB106_4 Depth=1
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
		jump .LBB106_4
	}
.LBB106_7:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = tstbit(r0,#0)
	}
	{
		if (!p0) jump:nt .LBB106_9
	}
	{
		jump .LBB106_8
	}
.LBB106_8:
	{
		r1:0 = memd(##.L__profc___cmovh+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovh+40) = r1:0
	}
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
		jump .LBB106_9
	}
.LBB106_9:
	{
		jump .LBB106_14
	}
.LBB106_10:
	{
		jump .LBB106_11
	}
.LBB106_11:                             // =>This Inner Loop Header: Depth=1
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
		if (p0) jump:nt .LBB106_13
	}
	{
		jump .LBB106_12
	}
.LBB106_12:                             //   in Loop: Header=BB106_11 Depth=1
	{
		r1:0 = memd(##.L__profc___cmovh+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovh+48) = r1:0
	}
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
		jump .LBB106_11
	}
.LBB106_13:
	{
		jump .LBB106_14
	}
.LBB106_14:
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
		r1:0 = memd(##.L__profc___cmovw)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovw) = r1:0
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
		if (p0) jump:nt .LBB107_3
	}
	{
		jump .LBB107_1
	}
.LBB107_1:
	{
		r1:0 = memd(##.L__profc___cmovw+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovw+16) = r1:0
	}
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
		if (p0) jump:nt .LBB107_3
	}
	{
		jump .LBB107_2
	}
.LBB107_2:
	{
		r1:0 = memd(##.L__profc___cmovw+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovw+24) = r1:0
	}
	{
		jump .LBB107_11
	}
.LBB107_3:
	{
		r1:0 = memd(##.L__profc___cmovw+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovw+8) = r1:0
	}
	{
		r0 = add(r30,#-16)
	}
	{
		memw(r0+#0) = #0
	}
	{
		jump .LBB107_4
	}
.LBB107_4:                              // =>This Inner Loop Header: Depth=1
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
		if (p0) jump:nt .LBB107_7
	}
	{
		jump .LBB107_5
	}
.LBB107_5:                              //   in Loop: Header=BB107_4 Depth=1
	{
		r1:0 = memd(##.L__profc___cmovw+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovw+32) = r1:0
	}
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
		jump .LBB107_6
	}
.LBB107_6:                              //   in Loop: Header=BB107_4 Depth=1
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
		jump .LBB107_4
	}
.LBB107_7:
	{
		jump .LBB107_8
	}
.LBB107_8:                              // =>This Inner Loop Header: Depth=1
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
		if (p0) jump:nt .LBB107_10
	}
	{
		jump .LBB107_9
	}
.LBB107_9:                              //   in Loop: Header=BB107_8 Depth=1
	{
		r1:0 = memd(##.L__profc___cmovw+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovw+40) = r1:0
	}
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
		jump .LBB107_8
	}
.LBB107_10:
	{
		jump .LBB107_15
	}
.LBB107_11:
	{
		jump .LBB107_12
	}
.LBB107_12:                             // =>This Inner Loop Header: Depth=1
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
		if (p0) jump:nt .LBB107_14
	}
	{
		jump .LBB107_13
	}
.LBB107_13:                             //   in Loop: Header=BB107_12 Depth=1
	{
		r1:0 = memd(##.L__profc___cmovw+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmovw+48) = r1:0
	}
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
		jump .LBB107_12
	}
.LBB107_14:
	{
		jump .LBB107_15
	}
.LBB107_15:
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
		r1:0 = memd(##.L__profc___modi)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___modi) = r1:0
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
		r1:0 = memd(##.L__profc___uitod)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___uitod) = r1:0
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
		r1:0 = memd(##.L__profc___uitof)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___uitof) = r1:0
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
		r1:0 = memd(##.L__profc___ulltod)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___ulltod) = r1:0
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
		r1:0 = memd(##.L__profc___ulltof)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___ulltof) = r1:0
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
		r1:0 = memd(##.L__profc___umodi)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___umodi) = r1:0
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
		r1:0 = memd(##.L__profc___clzhi2)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___clzhi2) = r1:0
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
		r1:0 = memd(##.L__profc___clzhi2+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___clzhi2+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___clzhi2+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___clzhi2+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___ctzhi2)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___ctzhi2) = r1:0
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
		r1:0 = memd(##.L__profc___ctzhi2+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___ctzhi2+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___ctzhi2+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___ctzhi2+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___fixunssfsi)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___fixunssfsi) = r1:0
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
		r1:0 = memd(##.L__profc___fixunssfsi+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___fixunssfsi+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___parityhi2)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___parityhi2) = r1:0
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
		r1:0 = memd(##.L__profc___parityhi2+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___parityhi2+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___parityhi2+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___parityhi2+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___popcounthi2)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___popcounthi2) = r1:0
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
		r1:0 = memd(##.L__profc___popcounthi2+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___popcounthi2+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___popcounthi2+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___popcounthi2+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___mulsi3_iq2000)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mulsi3_iq2000) = r1:0
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
		r1:0 = memd(##.L__profc___mulsi3_iq2000+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mulsi3_iq2000+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___mulsi3_iq2000+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mulsi3_iq2000+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___mulsi3_lm32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mulsi3_lm32) = r1:0
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
		r1:0 = memd(##.L__profc___mulsi3_lm32+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mulsi3_lm32+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___mulsi3_lm32+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mulsi3_lm32+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___mulsi3_lm32+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mulsi3_lm32+24) = r1:0
	}
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
		r1:0 = memd(##.L__profc___udivmodsi4)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodsi4) = r1:0
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
		if (p0) jump:nt .LBB121_6
	}
	{
		jump .LBB121_2
	}
.LBB121_2:                              //   in Loop: Header=BB121_1 Depth=1
	{
		r1:0 = memd(##.L__profc___udivmodsi4+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodsi4+32) = r1:0
	}
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
		if (p0) jump:nt .LBB121_6
	}
	{
		jump .LBB121_3
	}
.LBB121_3:                              //   in Loop: Header=BB121_1 Depth=1
	{
		r1:0 = memd(##.L__profc___udivmodsi4+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodsi4+40) = r1:0
	}
	{
		jump .LBB121_4
	}
.LBB121_4:                              //   in Loop: Header=BB121_1 Depth=1
	{
		r1:0 = memd(##.L__profc___udivmodsi4+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodsi4+16) = r1:0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		p1 = !tstbit(r0,#31)
	}
	{
		r1 = p1
	}
	{
		memw(r30+#-32) = r1
	}                                       // 4-byte Folded Spill
	{
		p0 = tstbit(r0,#31)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB121_6
	}
	{
		jump .LBB121_5
	}
.LBB121_5:                              //   in Loop: Header=BB121_1 Depth=1
	{
		r0 = memw(r30+#-32)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc___udivmodsi4+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodsi4+24) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB121_6
	}
.LBB121_6:                              //   in Loop: Header=BB121_1 Depth=1
	{
		r0 = memw(r30+#-28)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB121_8
	}
	{
		jump .LBB121_7
	}
.LBB121_7:                              //   in Loop: Header=BB121_1 Depth=1
	{
		r1:0 = memd(##.L__profc___udivmodsi4+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodsi4+8) = r1:0
	}
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
.LBB121_8:
	{
		jump .LBB121_9
	}
.LBB121_9:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB121_13
	}
	{
		jump .LBB121_10
	}
.LBB121_10:                             //   in Loop: Header=BB121_9 Depth=1
	{
		r1:0 = memd(##.L__profc___udivmodsi4+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodsi4+48) = r1:0
	}
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
		if (p0) jump:nt .LBB121_12
	}
	{
		jump .LBB121_11
	}
.LBB121_11:                             //   in Loop: Header=BB121_9 Depth=1
	{
		r1:0 = memd(##.L__profc___udivmodsi4+56)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodsi4+56) = r1:0
	}
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
		jump .LBB121_12
	}
.LBB121_12:                             //   in Loop: Header=BB121_9 Depth=1
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
		jump .LBB121_9
	}
.LBB121_13:
	{
		r0 = memw(r30+#-16)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB121_15
	}
	{
		jump .LBB121_14
	}
.LBB121_14:
	{
		r1:0 = memd(##.L__profc___udivmodsi4+64)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodsi4+64) = r1:0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB121_16
	}
.LBB121_15:
	{
		r0 = memw(r30+#-24)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB121_16
	}
.LBB121_16:
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
		r1:0 = memd(##.L__profc___mspabi_cmpf)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mspabi_cmpf) = r1:0
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
		r1:0 = memd(##.L__profc___mspabi_cmpf+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mspabi_cmpf+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___mspabi_cmpf+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mspabi_cmpf+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___mspabi_cmpd)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mspabi_cmpd) = r1:0
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
		r1:0 = memd(##.L__profc___mspabi_cmpd+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mspabi_cmpd+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___mspabi_cmpd+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mspabi_cmpd+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___mspabi_mpysll)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mspabi_mpysll) = r1:0
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
		r1:0 = memd(##.L__profc___mspabi_mpyull)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mspabi_mpyull) = r1:0
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
		r1:0 = memd(##.L__profc___mulhi3)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mulhi3) = r1:0
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
		r1:0 = memd(##.L__profc___mulhi3+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mulhi3+8) = r1:0
	}
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
		if (p0) jump:nt .LBB126_6
	}
	{
		jump .LBB126_4
	}
.LBB126_4:                              //   in Loop: Header=BB126_3 Depth=1
	{
		r1:0 = memd(##.L__profc___mulhi3+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mulhi3+24) = r1:0
	}
	{
		r0 = memb(r30+#-9)
	}
	{
		p0 = cmp.gtu(r0,#31)
	}
	{
		p1 = not(p0)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		r0 = p1
	}
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB126_6
	}
	{
		jump .LBB126_5
	}
.LBB126_5:                              //   in Loop: Header=BB126_3 Depth=1
	{
		r0 = memw(r30+#-28)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc___mulhi3+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mulhi3+32) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-24) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB126_6
	}
.LBB126_6:                              //   in Loop: Header=BB126_3 Depth=1
	{
		r0 = memw(r30+#-24)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB126_11
	}
	{
		jump .LBB126_7
	}
.LBB126_7:                              //   in Loop: Header=BB126_3 Depth=1
	{
		r1:0 = memd(##.L__profc___mulhi3+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mulhi3+16) = r1:0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		p0 = tstbit(r0,#0)
	}
	{
		if (!p0) jump:nt .LBB126_9
	}
	{
		jump .LBB126_8
	}
.LBB126_8:                              //   in Loop: Header=BB126_3 Depth=1
	{
		r1:0 = memd(##.L__profc___mulhi3+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mulhi3+40) = r1:0
	}
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
		jump .LBB126_9
	}
.LBB126_9:                              //   in Loop: Header=BB126_3 Depth=1
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
		jump .LBB126_10
	}
.LBB126_10:                             //   in Loop: Header=BB126_3 Depth=1
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
.LBB126_11:
	{
		r0 = memw(r30+#-16)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB126_13
	}
	{
		jump .LBB126_12
	}
.LBB126_12:
	{
		r1:0 = memd(##.L__profc___mulhi3+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___mulhi3+48) = r1:0
	}
	{
		r0 = memw(r30+#-20)
	}
	{
		r0 = sub(#0,r0)
	}
	{
		memw(r30+#-32) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB126_14
	}
.LBB126_13:
	{
		r0 = memw(r30+#-20)
	}
	{
		memw(r30+#-32) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB126_14
	}
.LBB126_14:
	{
		r0 = memw(r30+#-32)
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
		r1:0 = memd(##.L__profc___divsi3)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___divsi3) = r1:0
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
		r1:0 = memd(##.L__profc___divsi3+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___divsi3+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___divsi3+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___divsi3+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___divsi3+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___divsi3+24) = r1:0
	}
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
		r1:0 = memd(##.L__profc___modsi3)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___modsi3) = r1:0
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
		r1:0 = memd(##.L__profc___modsi3+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___modsi3+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___modsi3+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___modsi3+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___modsi3+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___modsi3+24) = r1:0
	}
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
		r1:0 = memd(##.L__profc___udivmodhi4)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodhi4) = r1:0
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
		if (p0) jump:nt .LBB129_6
	}
	{
		jump .LBB129_2
	}
.LBB129_2:                              //   in Loop: Header=BB129_1 Depth=1
	{
		r1:0 = memd(##.L__profc___udivmodhi4+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodhi4+32) = r1:0
	}
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
		if (p0) jump:nt .LBB129_6
	}
	{
		jump .LBB129_3
	}
.LBB129_3:                              //   in Loop: Header=BB129_1 Depth=1
	{
		r1:0 = memd(##.L__profc___udivmodhi4+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodhi4+40) = r1:0
	}
	{
		jump .LBB129_4
	}
.LBB129_4:                              //   in Loop: Header=BB129_1 Depth=1
	{
		r1:0 = memd(##.L__profc___udivmodhi4+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodhi4+16) = r1:0
	}
	{
		r0 = memuh(r30+#-6)
	}
	{
		p1 = !tstbit(r0,#15)
	}
	{
		r1 = p1
	}
	{
		memw(r30+#-24) = r1
	}                                       // 4-byte Folded Spill
	{
		p0 = tstbit(r0,#15)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB129_6
	}
	{
		jump .LBB129_5
	}
.LBB129_5:                              //   in Loop: Header=BB129_1 Depth=1
	{
		r0 = memw(r30+#-24)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc___udivmodhi4+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodhi4+24) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-20) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB129_6
	}
.LBB129_6:                              //   in Loop: Header=BB129_1 Depth=1
	{
		r0 = memw(r30+#-20)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB129_8
	}
	{
		jump .LBB129_7
	}
.LBB129_7:                              //   in Loop: Header=BB129_1 Depth=1
	{
		r1:0 = memd(##.L__profc___udivmodhi4+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodhi4+8) = r1:0
	}
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
.LBB129_8:
	{
		jump .LBB129_9
	}
.LBB129_9:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memh(r30+#-14)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB129_13
	}
	{
		jump .LBB129_10
	}
.LBB129_10:                             //   in Loop: Header=BB129_9 Depth=1
	{
		r1:0 = memd(##.L__profc___udivmodhi4+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodhi4+48) = r1:0
	}
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
		if (p0) jump:nt .LBB129_12
	}
	{
		jump .LBB129_11
	}
.LBB129_11:                             //   in Loop: Header=BB129_9 Depth=1
	{
		r1:0 = memd(##.L__profc___udivmodhi4+56)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodhi4+56) = r1:0
	}
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
		jump .LBB129_12
	}
.LBB129_12:                             //   in Loop: Header=BB129_9 Depth=1
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
		jump .LBB129_9
	}
.LBB129_13:
	{
		r0 = memw(r30+#-12)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB129_15
	}
	{
		jump .LBB129_14
	}
.LBB129_14:
	{
		r1:0 = memd(##.L__profc___udivmodhi4+64)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodhi4+64) = r1:0
	}
	{
		r0 = memuh(r30+#-4)
	}
	{
		memh(r30+#-2) = r0
	}
	{
		jump .LBB129_16
	}
.LBB129_15:
	{
		r0 = memuh(r30+#-16)
	}
	{
		memh(r30+#-2) = r0
	}
	{
		jump .LBB129_16
	}
.LBB129_16:
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
		r1:0 = memd(##.L__profc___udivmodsi4_libgcc)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodsi4_libgcc) = r1:0
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
		if (p0) jump:nt .LBB130_6
	}
	{
		jump .LBB130_2
	}
.LBB130_2:                              //   in Loop: Header=BB130_1 Depth=1
	{
		r1:0 = memd(##.L__profc___udivmodsi4_libgcc+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodsi4_libgcc+32) = r1:0
	}
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
		if (p0) jump:nt .LBB130_6
	}
	{
		jump .LBB130_3
	}
.LBB130_3:                              //   in Loop: Header=BB130_1 Depth=1
	{
		r1:0 = memd(##.L__profc___udivmodsi4_libgcc+40)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodsi4_libgcc+40) = r1:0
	}
	{
		jump .LBB130_4
	}
.LBB130_4:                              //   in Loop: Header=BB130_1 Depth=1
	{
		r1:0 = memd(##.L__profc___udivmodsi4_libgcc+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodsi4_libgcc+16) = r1:0
	}
	{
		r0 = memw(r30+#-12)
	}
	{
		p1 = !tstbit(r0,#31)
	}
	{
		r1 = p1
	}
	{
		memw(r30+#-32) = r1
	}                                       // 4-byte Folded Spill
	{
		p0 = tstbit(r0,#31)
	}
	{
		r0 = p1
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		if (p0) jump:nt .LBB130_6
	}
	{
		jump .LBB130_5
	}
.LBB130_5:                              //   in Loop: Header=BB130_1 Depth=1
	{
		r0 = memw(r30+#-32)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		r1:0 = memd(##.L__profc___udivmodsi4_libgcc+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodsi4_libgcc+24) = r1:0
	}
	{
		r0 = p0
	}
	{
		memw(r30+#-28) = r0
	}                                       // 4-byte Folded Spill
	{
		jump .LBB130_6
	}
.LBB130_6:                              //   in Loop: Header=BB130_1 Depth=1
	{
		r0 = memw(r30+#-28)
	}                                       // 4-byte Folded Reload
	{
		p0 = r0
	}
	{
		if (!p0) jump:nt .LBB130_8
	}
	{
		jump .LBB130_7
	}
.LBB130_7:                              //   in Loop: Header=BB130_1 Depth=1
	{
		r1:0 = memd(##.L__profc___udivmodsi4_libgcc+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodsi4_libgcc+8) = r1:0
	}
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
.LBB130_8:
	{
		jump .LBB130_9
	}
.LBB130_9:                              // =>This Inner Loop Header: Depth=1
	{
		r0 = memw(r30+#-20)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB130_13
	}
	{
		jump .LBB130_10
	}
.LBB130_10:                             //   in Loop: Header=BB130_9 Depth=1
	{
		r1:0 = memd(##.L__profc___udivmodsi4_libgcc+48)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodsi4_libgcc+48) = r1:0
	}
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
		if (p0) jump:nt .LBB130_12
	}
	{
		jump .LBB130_11
	}
.LBB130_11:                             //   in Loop: Header=BB130_9 Depth=1
	{
		r1:0 = memd(##.L__profc___udivmodsi4_libgcc+56)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodsi4_libgcc+56) = r1:0
	}
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
		jump .LBB130_12
	}
.LBB130_12:                             //   in Loop: Header=BB130_9 Depth=1
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
		jump .LBB130_9
	}
.LBB130_13:
	{
		r0 = memw(r30+#-16)
	}
	{
		p0 = cmp.eq(r0,#0)
	}
	{
		if (p0) jump:nt .LBB130_15
	}
	{
		jump .LBB130_14
	}
.LBB130_14:
	{
		r1:0 = memd(##.L__profc___udivmodsi4_libgcc+64)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___udivmodsi4_libgcc+64) = r1:0
	}
	{
		r0 = memw(r30+#-8)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB130_16
	}
.LBB130_15:
	{
		r0 = memw(r30+#-24)
	}
	{
		memw(r30+#-4) = r0
	}
	{
		jump .LBB130_16
	}
.LBB130_16:
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
		r1:0 = memd(##.L__profc___ashldi3)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___ashldi3) = r1:0
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
		r1:0 = memd(##.L__profc___ashldi3+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___ashldi3+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___ashldi3+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___ashldi3+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___ashrdi3)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___ashrdi3) = r1:0
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
		r1:0 = memd(##.L__profc___ashrdi3+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___ashrdi3+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___ashrdi3+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___ashrdi3+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___bswapdi2)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___bswapdi2) = r1:0
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
		r1:0 = memd(##.L__profc___bswapsi2)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___bswapsi2) = r1:0
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
		r1:0 = memd(##.L__profc___clzsi2)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___clzsi2) = r1:0
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
		r1:0 = memd(##.L__profc___cmpdi2)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmpdi2) = r1:0
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
		r1:0 = memd(##.L__profc___cmpdi2+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmpdi2+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___cmpdi2+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmpdi2+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___cmpdi2+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmpdi2+24) = r1:0
	}
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
		r1:0 = memd(##.L__profc___cmpdi2+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___cmpdi2+32) = r1:0
	}
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
		r1:0 = memd(##.L__profc___aeabi_lcmp)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___aeabi_lcmp) = r1:0
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
		r1:0 = memd(##.L__profc___ctzsi2)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___ctzsi2) = r1:0
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
		r1:0 = memd(##.L__profc___lshrdi3)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___lshrdi3) = r1:0
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
		r1:0 = memd(##.L__profc___lshrdi3+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___lshrdi3+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___lshrdi3+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___lshrdi3+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___muldsi3)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___muldsi3) = r1:0
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
		r1:0 = memd(##.L__profc___muldi3_compiler_rt)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___muldi3_compiler_rt) = r1:0
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
		r1:0 = memd(##.L__profc___negdi2)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___negdi2) = r1:0
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
		r1:0 = memd(##.L__profc___paritydi2)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___paritydi2) = r1:0
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
		r1:0 = memd(##.L__profc___paritysi2)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___paritysi2) = r1:0
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
		r1:0 = memd(##.L__profc___popcountdi2)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___popcountdi2) = r1:0
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
		r1:0 = memd(##.L__profc___popcountsi2)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___popcountsi2) = r1:0
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
		r1:0 = memd(##.L__profc___powidf2)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___powidf2) = r1:0
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
		r1:0 = memd(##.L__profc___powidf2+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___powidf2+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___powidf2+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___powidf2+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___powidf2+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___powidf2+24) = r1:0
	}
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
		r1:0 = memd(##.L__profc___powidf2+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___powidf2+32) = r1:0
	}
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
		r1:0 = memd(##.L__profc___powisf2)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___powisf2) = r1:0
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
		r1:0 = memd(##.L__profc___powisf2+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___powisf2+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___powisf2+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___powisf2+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___powisf2+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___powisf2+24) = r1:0
	}
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
		r1:0 = memd(##.L__profc___powisf2+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___powisf2+32) = r1:0
	}
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
		r1:0 = memd(##.L__profc___ucmpdi2)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___ucmpdi2) = r1:0
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
		r1:0 = memd(##.L__profc___ucmpdi2+8)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___ucmpdi2+8) = r1:0
	}
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
		r1:0 = memd(##.L__profc___ucmpdi2+16)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___ucmpdi2+16) = r1:0
	}
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
		r1:0 = memd(##.L__profc___ucmpdi2+24)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___ucmpdi2+24) = r1:0
	}
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
		r1:0 = memd(##.L__profc___ucmpdi2+32)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___ucmpdi2+32) = r1:0
	}
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
		r1:0 = memd(##.L__profc___aeabi_ulcmp)
	}
	{
		r3:2 = combine(#0,#1)
	}
	{
		r1:0 = add(r1:0,r3:2)
	}
	{
		memd(##.L__profc___aeabi_ulcmp) = r1:0
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
	.hidden	__llvm_profile_runtime
	.type	.L__profc_memmove,@object       // @__profc_memmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
.L__profc_memmove:
	.space	40
	.size	.L__profc_memmove, 40

	.type	.L__profd_memmove,@object       // @__profd_memmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
.L__profd_memmove:
	.word	3815148669                      // 0xfbc09422e3668c7d
	.word	4223702050
	.word	1334589160                      // 0xc7a1f0194f8c36e8
	.word	3349278745
	.word	.L__profc_memmove-.L__profd_memmove
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	5                               // 0x5
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_memmove, 48

	.type	.L__profc_memccpy,@object       // @__profc_memccpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profc_memccpy:
	.space	40
	.size	.L__profc_memccpy, 40

	.type	.L__profd_memccpy,@object       // @__profd_memccpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profd_memccpy:
	.word	3842140814                      // 0xe9ec1dd5e5026a8e
	.word	3924565461
	.word	1246331992                      // 0x43a044a498458
	.word	276996
	.word	.L__profc_memccpy-.L__profd_memccpy
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	5                               // 0x5
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_memccpy, 48

	.type	.L__profc_memchr,@object        // @__profc_memchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
.L__profc_memchr:
	.space	40
	.size	.L__profc_memchr, 40

	.type	.L__profd_memchr,@object        // @__profd_memchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
.L__profd_memchr:
	.word	503472520                       // 0x4f3941a01e026188
	.word	1329152416
	.word	243340813                       // 0x10e81160d
	.word	1
	.word	.L__profc_memchr-.L__profd_memchr
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	5                               // 0x5
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_memchr, 48

	.type	.L__profc_memcmp,@object        // @__profc_memcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profc_memcmp:
	.space	40
	.size	.L__profc_memcmp, 40

	.type	.L__profd_memcmp,@object        // @__profd_memcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profd_memcmp:
	.word	3752101698                      // 0xbf0ee54adfa48742
	.word	3205424458
	.word	243078669                       // 0x10e7d160d
	.word	1
	.word	.L__profc_memcmp-.L__profd_memcmp
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	5                               // 0x5
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_memcmp, 48

	.type	.L__profc_memcpy,@object        // @__profc_memcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
.L__profc_memcpy:
	.space	16
	.size	.L__profc_memcpy, 16

	.type	.L__profd_memcpy,@object        // @__profd_memcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
.L__profd_memcpy:
	.word	314430578                       // 0x3607cad612bdd472
	.word	906480342
	.word	17496                           // 0x4458
	.word	0
	.word	.L__profc_memcpy-.L__profd_memcpy
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	2                               // 0x2
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_memcpy, 48

	.type	.L__profc_memrchr,@object       // @__profc_memrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profc_memrchr:
	.space	24
	.size	.L__profc_memrchr, 24

	.type	.L__profd_memrchr,@object       // @__profd_memrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profd_memrchr:
	.word	1963431520                      // 0xf863ecbf75079660
	.word	4167298239
	.word	3529577560                      // 0x8a7d2611458
	.word	2215
	.word	.L__profc_memrchr-.L__profd_memrchr
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_memrchr, 48

	.type	.L__profc_memset,@object        // @__profc_memset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
.L__profc_memset:
	.space	16
	.size	.L__profc_memset, 16

	.type	.L__profd_memset,@object        // @__profd_memset
	.section	__llvm_prf_data,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
.L__profd_memset:
	.word	116615793                       // 0xd9f3f85506f36a71
	.word	3656644693
	.word	17496                           // 0x4458
	.word	0
	.word	.L__profc_memset-.L__profd_memset
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	2                               // 0x2
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_memset, 48

	.type	.L__profc_stpcpy,@object        // @__profc_stpcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profc_stpcpy:
	.space	16
	.size	.L__profc_stpcpy, 16

	.type	.L__profd_stpcpy,@object        // @__profd_stpcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profd_stpcpy:
	.word	2693264965                      // 0x3dd2bf47a087f645
	.word	1037221703
	.word	17496                           // 0x4458
	.word	0
	.word	.L__profc_stpcpy-.L__profd_stpcpy
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	2                               // 0x2
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_stpcpy, 48

	.type	.L__profc_strchrnul,@object     // @__profc_strchrnul
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profc_strchrnul:
	.space	32
	.size	.L__profc_strchrnul, 32

	.type	.L__profd_strchrnul,@object     // @__profd_strchrnul
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profd_strchrnul:
	.word	3359708469                      // 0x45eedd8fc8411535
	.word	1173282191
	.word	70911064                        // 0x43a0458
	.word	0
	.word	.L__profc_strchrnul-.L__profd_strchrnul
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	4                               // 0x4
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_strchrnul, 48

	.type	.L__profc_strchr,@object        // @__profc_strchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
.L__profc_strchr:
	.space	24
	.size	.L__profc_strchr, 24

	.type	.L__profd_strchr,@object        // @__profd_strchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
.L__profd_strchr:
	.word	1273642115                      // 0xb14ab4664bea3c83
	.word	2974463078
	.word	3529577560                      // 0xca7d2611458
	.word	3239
	.word	.L__profc_strchr-.L__profd_strchr
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_strchr, 48

	.type	.L__profc_strcmp,@object        // @__profc_strcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profc_strcmp:
	.space	32
	.size	.L__profc_strcmp, 32

	.type	.L__profd_strcmp,@object        // @__profd_strcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profd_strcmp:
	.word	53592868                        // 0xe0f9b060331c324
	.word	235903750
	.word	70906968                        // 0x439f458
	.word	0
	.word	.L__profc_strcmp-.L__profd_strcmp
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	4                               // 0x4
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_strcmp, 48

	.type	.L__profc_strlen,@object        // @__profc_strlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
.L__profc_strlen:
	.space	16
	.size	.L__profc_strlen, 16

	.type	.L__profd_strlen,@object        // @__profd_strlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
.L__profd_strlen:
	.word	44553075                        // 0x292647db02a7d373
	.word	690374619
	.word	17496                           // 0x4458
	.word	0
	.word	.L__profc_strlen-.L__profd_strlen
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	2                               // 0x2
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_strlen, 48

	.type	.L__profc_strncmp,@object       // @__profc_strncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profc_strncmp:
	.space	72
	.size	.L__profc_strncmp, 72

	.type	.L__profd_strncmp,@object       // @__profd_strncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profd_strncmp:
	.word	1018521786                      // 0xabebe6233cb568ba
	.word	2884363811
	.word	3409360719                      // 0x6405aa43cb36b74f
	.word	1678092867
	.word	.L__profc_strncmp-.L__profd_strncmp
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	9                               // 0x9
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_strncmp, 48

	.type	.L__profc_swab,@object          // @__profc_swab
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
.L__profc_swab:
	.space	16
	.size	.L__profc_swab, 16

	.type	.L__profd_swab,@object          // @__profd_swab
	.section	__llvm_prf_data,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
.L__profd_swab:
	.word	63675239                        // 0xe984c77503cb9b67
	.word	3917793141
	.word	18193                           // 0x4711
	.word	0
	.word	.L__profc_swab-.L__profd_swab
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	2                               // 0x2
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_swab, 48

	.type	.L__profc_isalpha,@object       // @__profc_isalpha
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profc_isalpha:
	.space	8
	.size	.L__profc_isalpha, 8

	.type	.L__profd_isalpha,@object       // @__profd_isalpha
	.section	__llvm_prf_data,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profd_isalpha:
	.word	4268055388                      // 0xec27bc96fe655b5c
	.word	3962027158
	.word	1563                            // 0x61b
	.word	0
	.word	.L__profc_isalpha-.L__profd_isalpha
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_isalpha, 48

	.type	.L__profc_isascii,@object       // @__profc_isascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
.L__profc_isascii:
	.space	8
	.size	.L__profc_isascii, 8

	.type	.L__profd_isascii,@object       // @__profd_isascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
.L__profd_isascii:
	.word	3299371601                      // 0xbd7e8203c4a86a51
	.word	3179184643
	.word	1562                            // 0x61a
	.word	0
	.word	.L__profc_isascii-.L__profd_isascii
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_isascii, 48

	.type	.L__profc_isblank,@object       // @__profc_isblank
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
.L__profc_isblank:
	.space	24
	.size	.L__profc_isblank, 24

	.type	.L__profd_isblank,@object       // @__profd_isblank
	.section	__llvm_prf_data,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
.L__profd_isblank:
	.word	2601843714                      // 0x223626e59b14fc02
	.word	573974245
	.word	6354911                         // 0x60f7df
	.word	0
	.word	.L__profc_isblank-.L__profd_isblank
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_isblank, 48

	.type	.L__profc_iscntrl,@object       // @__profc_iscntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profc_iscntrl:
	.space	24
	.size	.L__profc_iscntrl, 24

	.type	.L__profd_iscntrl,@object       // @__profd_iscntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profd_iscntrl:
	.word	3367402719                      // 0x7b7b182cc8b67cdf
	.word	2071664684
	.word	6354655                         // 0x60f6df
	.word	0
	.word	.L__profc_iscntrl-.L__profd_iscntrl
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_iscntrl, 48

	.type	.L__profc_isdigit,@object       // @__profc_isdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profc_isdigit:
	.space	8
	.size	.L__profc_isdigit, 8

	.type	.L__profd_isdigit,@object       // @__profd_isdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profd_isdigit:
	.word	1824746341                      // 0x30599a7e6cc36b65
	.word	811178622
	.word	1563                            // 0x61b
	.word	0
	.word	.L__profc_isdigit-.L__profd_isdigit
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_isdigit, 48

	.type	.L__profc_isgraph,@object       // @__profc_isgraph
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profc_isgraph:
	.space	8
	.size	.L__profc_isgraph, 8

	.type	.L__profd_isgraph,@object       // @__profd_isgraph
	.section	__llvm_prf_data,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profd_isgraph:
	.word	2312090716                      // 0xfe3bff7489cfb45c
	.word	4265344884
	.word	1563                            // 0x61b
	.word	0
	.word	.L__profc_isgraph-.L__profd_isgraph
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_isgraph, 48

	.type	.L__profc_islower,@object       // @__profc_islower
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
.L__profc_islower:
	.space	8
	.size	.L__profc_islower, 8

	.type	.L__profd_islower,@object       // @__profd_islower
	.section	__llvm_prf_data,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
.L__profd_islower:
	.word	1158205281                      // 0x681c66894508cf61
	.word	1746691721
	.word	1563                            // 0x61b
	.word	0
	.word	.L__profc_islower-.L__profd_islower
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_islower, 48

	.type	.L__profc_isprint,@object       // @__profc_isprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
.L__profc_isprint:
	.space	8
	.size	.L__profc_isprint, 8

	.type	.L__profd_isprint,@object       // @__profd_isprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
.L__profd_isprint:
	.word	341795750                       // 0x9b074d56145f63a6
	.word	2600947030
	.word	1563                            // 0x61b
	.word	0
	.word	.L__profc_isprint-.L__profd_isprint
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_isprint, 48

	.type	.L__profc_isspace,@object       // @__profc_isspace
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
.L__profc_isspace:
	.space	24
	.size	.L__profc_isspace, 24

	.type	.L__profd_isspace,@object       // @__profd_isspace
	.section	__llvm_prf_data,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
.L__profd_isspace:
	.word	970391827                       // 0x7d59641d39d70113
	.word	2103010333
	.word	6354907                         // 0x60f7db
	.word	0
	.word	.L__profc_isspace-.L__profd_isspace
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_isspace, 48

	.type	.L__profc_isupper,@object       // @__profc_isupper
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
.L__profc_isupper:
	.space	8
	.size	.L__profc_isupper, 8

	.type	.L__profd_isupper,@object       // @__profd_isupper
	.section	__llvm_prf_data,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
.L__profd_isupper:
	.word	3294401357                      // 0x39ef9079c45c934d
	.word	972001401
	.word	1563                            // 0x61b
	.word	0
	.word	.L__profc_isupper-.L__profd_isupper
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_isupper, 48

	.type	.L__profc_iswcntrl,@object      // @__profc_iswcntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profc_iswcntrl:
	.space	56
	.size	.L__profc_iswcntrl, 56

	.type	.L__profd_iswcntrl,@object      // @__profd_iswcntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profd_iswcntrl:
	.word	1638352188                      // 0x6125eb3d61a7453c
	.word	1629875005
	.word	3480073947                      // 0x60f3cf6db6db
	.word	24819
	.word	.L__profc_iswcntrl-.L__profd_iswcntrl
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	7                               // 0x7
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_iswcntrl, 48

	.type	.L__profc_iswdigit,@object      // @__profc_iswdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profc_iswdigit:
	.space	8
	.size	.L__profc_iswdigit, 8

	.type	.L__profd_iswdigit,@object      // @__profd_iswdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profd_iswdigit:
	.word	425265880                       // 0x771f9e1919590ad8
	.word	1998560793
	.word	1563                            // 0x61b
	.word	0
	.word	.L__profc_iswdigit-.L__profd_iswdigit
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_iswdigit, 48

	.type	.L__profc_iswprint,@object      // @__profc_iswprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profc_iswprint:
	.space	80
	.size	.L__profc_iswprint, 80

	.type	.L__profd_iswprint,@object      // @__profd_iswprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profd_iswprint:
	.word	1234441494                      // 0xf603a04d49941516
	.word	4127432781
	.word	3816038944                      // 0xdc635031e3742220
	.word	3697496113
	.word	.L__profc_iswprint-.L__profd_iswprint
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	10                              // 0xa
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_iswprint, 48

	.type	.L__profc_iswxdigit,@object     // @__profc_iswxdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profc_iswxdigit:
	.space	24
	.size	.L__profc_iswxdigit, 24

	.type	.L__profd_iswxdigit,@object     // @__profd_iswxdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profd_iswxdigit:
	.word	4035185714                      // 0x8aba28df0840c32
	.word	145465997
	.word	6354651                         // 0x60f6db
	.word	0
	.word	.L__profc_iswxdigit-.L__profd_iswxdigit
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_iswxdigit, 48

	.type	.L__profc_toascii,@object       // @__profc_toascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
.L__profc_toascii:
	.space	8
	.size	.L__profc_toascii, 8

	.type	.L__profd_toascii,@object       // @__profd_toascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
.L__profd_toascii:
	.word	2787418936                      // 0x3f1e4f66a624a338
	.word	1058951014
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_toascii-.L__profd_toascii
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_toascii, 48

	.type	.L__profc_fdim,@object          // @__profc_fdim
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
.L__profc_fdim:
	.space	32
	.size	.L__profc_fdim, 32

	.type	.L__profd_fdim,@object          // @__profd_fdim
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
.L__profd_fdim:
	.word	42400059                        // 0xceca8a150286f93b
	.word	3469380117
	.word	698703480                       // 0x6646f46a29a55e78
	.word	1715926122
	.word	.L__profc_fdim-.L__profd_fdim
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	4                               // 0x4
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_fdim, 48

	.type	.L__profc_fdimf,@object         // @__profc_fdimf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
.L__profc_fdimf:
	.space	32
	.size	.L__profc_fdimf, 32

	.type	.L__profd_fdimf,@object         // @__profd_fdimf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
.L__profd_fdimf:
	.word	1666032008                      // 0xea84dcc6634da188
	.word	3934575814
	.word	698703480                       // 0x6646f46a29a55e78
	.word	1715926122
	.word	.L__profc_fdimf-.L__profd_fdimf
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	4                               // 0x4
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_fdimf, 48

	.type	.L__profc_fmax,@object          // @__profc_fmax
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
.L__profc_fmax:
	.space	48
	.size	.L__profc_fmax, 48

	.type	.L__profd_fmax,@object          // @__profd_fmax
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
.L__profd_fmax:
	.word	996492642                       // 0xde5ced1d3b654562
	.word	3730631965
	.word	463263937                       // 0x373422b91b9cd8c1
	.word	926163641
	.word	.L__profc_fmax-.L__profd_fmax
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	6                               // 0x6
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_fmax, 48

	.type	.L__profc_fmaxf,@object         // @__profc_fmaxf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
.L__profc_fmaxf:
	.space	48
	.size	.L__profc_fmaxf, 48

	.type	.L__profd_fmaxf,@object         // @__profd_fmaxf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
.L__profd_fmaxf:
	.word	2386403996                      // 0xb8bfa0058e3da29c
	.word	3099566085
	.word	463263937                       // 0x373422b91b9cd8c1
	.word	926163641
	.word	.L__profc_fmaxf-.L__profd_fmaxf
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	6                               // 0x6
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_fmaxf, 48

	.type	.L__profc_fmaxl,@object         // @__profc_fmaxl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
.L__profc_fmaxl:
	.space	48
	.size	.L__profc_fmaxl, 48

	.type	.L__profd_fmaxl,@object         // @__profd_fmaxl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
.L__profd_fmaxl:
	.word	3522938444                      // 0xd471861cd1fbc64c
	.word	3564209692
	.word	463263937                       // 0x373422b91b9cd8c1
	.word	926163641
	.word	.L__profc_fmaxl-.L__profd_fmaxl
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	6                               // 0x6
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_fmaxl, 48

	.type	.L__profc_fmin,@object          // @__profc_fmin
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
.L__profc_fmin:
	.space	48
	.size	.L__profc_fmin, 48

	.type	.L__profd_fmin,@object          // @__profd_fmin
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
.L__profd_fmin:
	.word	1265219729                      // 0xd65e3074b69b891
	.word	224781063
	.word	463263937                       // 0x373422b91b9cd8c1
	.word	926163641
	.word	.L__profc_fmin-.L__profd_fmin
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	6                               // 0x6
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_fmin, 48

	.type	.L__profc_fminf,@object         // @__profc_fminf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
.L__profc_fminf:
	.space	48
	.size	.L__profc_fminf, 48

	.type	.L__profd_fminf,@object         // @__profd_fminf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
.L__profd_fminf:
	.word	848075867                       // 0x6b0021b0328c9c5b
	.word	1795170736
	.word	463263937                       // 0x373422b91b9cd8c1
	.word	926163641
	.word	.L__profc_fminf-.L__profd_fminf
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	6                               // 0x6
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_fminf, 48

	.type	.L__profc_fminl,@object         // @__profc_fminl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
.L__profc_fminl:
	.space	48
	.size	.L__profc_fminl, 48

	.type	.L__profd_fminl,@object         // @__profd_fminl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
.L__profd_fminl:
	.word	1476992898                      // 0x2285162058091f82
	.word	579147296
	.word	463263937                       // 0x373422b91b9cd8c1
	.word	926163641
	.word	.L__profc_fminl-.L__profd_fminl
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	6                               // 0x6
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_fminl, 48

	.type	.L__profc_l64a,@object          // @__profc_l64a
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
.L__profc_l64a:
	.space	16
	.size	.L__profc_l64a, 16

	.type	.L__profd_l64a,@object          // @__profd_l64a
	.section	__llvm_prf_data,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
.L__profd_l64a:
	.word	3141852333                      // 0xaa87bd26bb44dcad
	.word	2861022502
	.word	17496                           // 0x4458
	.word	0
	.word	.L__profc_l64a-.L__profd_l64a
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	2                               // 0x2
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_l64a, 48

	.type	.L__profc_srand,@object         // @__profc_srand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
.L__profc_srand:
	.space	8
	.size	.L__profc_srand, 8

	.type	.L__profd_srand,@object         // @__profd_srand
	.section	__llvm_prf_data,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
.L__profd_srand:
	.word	1506720376                      // 0xe30e668959ceba78
	.word	3809371785
	.word	0                               // 0x0
	.word	0
	.word	.L__profc_srand-.L__profd_srand
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_srand, 48

	.type	.L__profc_rand,@object          // @__profc_rand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
.L__profc_rand:
	.space	8
	.size	.L__profc_rand, 8

	.type	.L__profd_rand,@object          // @__profd_rand
	.section	__llvm_prf_data,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
.L__profd_rand:
	.word	1355010356                      // 0x6401286350c3d134
	.word	1677797475
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_rand-.L__profd_rand
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_rand, 48

	.type	.L__profc_insque,@object        // @__profc_insque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
.L__profc_insque:
	.space	24
	.size	.L__profc_insque, 24

	.type	.L__profd_insque,@object        // @__profd_insque
	.section	__llvm_prf_data,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
.L__profd_insque:
	.word	3171658647                      // 0xb97ef903bd0bab97
	.word	3112106243
	.word	2554635409                      // 0x29a49844a491
	.word	10660
	.word	.L__profc_insque-.L__profd_insque
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_insque, 48

	.type	.L__profc_remque,@object        // @__profc_remque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
.L__profc_remque:
	.space	24
	.size	.L__profc_remque, 24

	.type	.L__profd_remque,@object        // @__profd_remque
	.section	__llvm_prf_data,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
.L__profd_remque:
	.word	1424166850                      // 0x9be1f18d54e30fc2
	.word	2615275917
	.word	2453972113                      // 0x29244a491
	.word	2
	.word	.L__profc_remque-.L__profd_remque
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_remque, 48

	.type	.L__profc_lsearch,@object       // @__profc_lsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
.L__profc_lsearch:
	.space	24
	.size	.L__profc_lsearch, 24

	.type	.L__profd_lsearch,@object       // @__profd_lsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
.L__profd_lsearch:
	.word	4174077742                      // 0x9e68c5caf8cb5f2e
	.word	2657666506
	.word	3529577560                      // 0x46ca7d2611458
	.word	289959
	.word	.L__profc_lsearch-.L__profd_lsearch
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_lsearch, 48

	.type	.L__profc_lfind,@object         // @__profc_lfind
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
.L__profc_lfind:
	.space	24
	.size	.L__profc_lfind, 24

	.type	.L__profd_lfind,@object         // @__profd_lfind
	.section	__llvm_prf_data,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
.L__profd_lfind:
	.word	817200365                       // 0xa7df811e30b57ced
	.word	2816442654
	.word	3529577560                      // 0x46ca7d2611458
	.word	289959
	.word	.L__profc_lfind-.L__profd_lfind
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_lfind, 48

	.type	.L__profc_abs,@object           // @__profc_abs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
.L__profc_abs:
	.space	16
	.size	.L__profc_abs, 16

	.type	.L__profd_abs,@object           // @__profd_abs
	.section	__llvm_prf_data,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
.L__profd_abs:
	.word	90942713                        // 0xfcb0ccbe056bacf9
	.word	4239445182
	.word	99164                           // 0x1835c
	.word	0
	.word	.L__profc_abs-.L__profd_abs
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	2                               // 0x2
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_abs, 48

	.type	.L__profc_atoi,@object          // @__profc_atoi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
.L__profc_atoi:
	.space	56
	.size	.L__profc_atoi, 56

	.type	.L__profd_atoi,@object          // @__profd_atoi
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
.L__profd_atoi:
	.word	2738380237                      // 0xa52e4a4ba3385dcd
	.word	2771274315
	.word	134813197                       // 0x244720809160d
	.word	148594
	.word	.L__profc_atoi-.L__profd_atoi
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	7                               // 0x7
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_atoi, 48

	.type	.L__profc_atol,@object          // @__profc_atol
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
.L__profc_atol:
	.space	56
	.size	.L__profc_atol, 56

	.type	.L__profd_atol,@object          // @__profd_atol
	.section	__llvm_prf_data,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
.L__profd_atol:
	.word	4002377009                      // 0x724cc634ee8f6d31
	.word	1917634100
	.word	134813197                       // 0x244720809160d
	.word	148594
	.word	.L__profc_atol-.L__profd_atol
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	7                               // 0x7
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_atol, 48

	.type	.L__profc_atoll,@object         // @__profc_atoll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
.L__profc_atoll:
	.space	56
	.size	.L__profc_atoll, 56

	.type	.L__profd_atoll,@object         // @__profd_atoll
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
.L__profd_atoll:
	.word	1906768237                      // 0x32b4ee8971a6f96d
	.word	850718345
	.word	134813197                       // 0x244720809160d
	.word	148594
	.word	.L__profc_atoll-.L__profd_atoll
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	7                               // 0x7
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_atoll, 48

	.type	.L__profc_bsearch,@object       // @__profc_bsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
.L__profc_bsearch:
	.space	32
	.size	.L__profc_bsearch, 32

	.type	.L__profd_bsearch,@object       // @__profd_bsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
.L__profd_bsearch:
	.word	2054766654                      // 0x796ea3837a79403e
	.word	2037293955
	.word	739949690                       // 0xf42b29012c1abc7a
	.word	4096469249
	.word	.L__profc_bsearch-.L__profd_bsearch
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	4                               // 0x4
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_bsearch, 48

	.type	.L__profc_bsearch_r,@object     // @__profc_bsearch_r
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
.L__profc_bsearch_r:
	.space	32
	.size	.L__profc_bsearch_r, 32

	.type	.L__profd_bsearch_r,@object     // @__profd_bsearch_r
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
.L__profd_bsearch_r:
	.word	2873519740                      // 0x13aa8a38ab466e7c
	.word	329943608
	.word	2313468942                      // 0x117a3a2689e4bc0e
	.word	293222950
	.word	.L__profc_bsearch_r-.L__profd_bsearch_r
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	4                               // 0x4
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_bsearch_r, 48

	.type	.L__profc_div,@object           // @__profc_div
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_div
	.p2align	3, 0x0
.L__profc_div:
	.space	8
	.size	.L__profc_div, 8

	.type	.L__profd_div,@object           // @__profd_div
	.section	__llvm_prf_data,"awG",@progbits,__profc_div
	.p2align	3, 0x0
.L__profd_div:
	.word	1483041080                      // 0x4c4998dc58656938
	.word	1279891676
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_div-.L__profd_div
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_div, 48

	.type	.L__profc_imaxabs,@object       // @__profc_imaxabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profc_imaxabs:
	.space	16
	.size	.L__profc_imaxabs, 16

	.type	.L__profd_imaxabs,@object       // @__profd_imaxabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profd_imaxabs:
	.word	3004042905                      // 0x7c28f3a3b30e0e99
	.word	2083058595
	.word	99164                           // 0x1835c
	.word	0
	.word	.L__profc_imaxabs-.L__profd_imaxabs
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	2                               // 0x2
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_imaxabs, 48

	.type	.L__profc_imaxdiv,@object       // @__profc_imaxdiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
.L__profc_imaxdiv:
	.space	8
	.size	.L__profc_imaxdiv, 8

	.type	.L__profd_imaxdiv,@object       // @__profd_imaxdiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
.L__profd_imaxdiv:
	.word	2640297140                      // 0xc97b6cec9d5fbcb4
	.word	3380309228
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_imaxdiv-.L__profd_imaxdiv
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_imaxdiv, 48

	.type	.L__profc_labs,@object          // @__profc_labs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
.L__profc_labs:
	.space	16
	.size	.L__profc_labs, 16

	.type	.L__profd_labs,@object          // @__profd_labs
	.section	__llvm_prf_data,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
.L__profd_labs:
	.word	3013844134                      // 0x9d363762b3a39ca6
	.word	2637576034
	.word	99164                           // 0x1835c
	.word	0
	.word	.L__profc_labs-.L__profd_labs
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	2                               // 0x2
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_labs, 48

	.type	.L__profc_ldiv,@object          // @__profc_ldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
.L__profc_ldiv:
	.space	8
	.size	.L__profc_ldiv, 8

	.type	.L__profd_ldiv,@object          // @__profd_ldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
.L__profd_ldiv:
	.word	1948272233                      // 0x633951ff74204669
	.word	1664700927
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_ldiv-.L__profd_ldiv
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_ldiv, 48

	.type	.L__profc_llabs,@object         // @__profc_llabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
.L__profc_llabs:
	.space	16
	.size	.L__profc_llabs, 16

	.type	.L__profd_llabs,@object         // @__profd_llabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
.L__profd_llabs:
	.word	3146878658                      // 0x6aa5dafebb918ec2
	.word	1789254398
	.word	99164                           // 0x1835c
	.word	0
	.word	.L__profc_llabs-.L__profd_llabs
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	2                               // 0x2
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_llabs, 48

	.type	.L__profc_lldiv,@object         // @__profc_lldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
.L__profc_lldiv:
	.space	8
	.size	.L__profc_lldiv, 8

	.type	.L__profd_lldiv,@object         // @__profd_lldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
.L__profd_lldiv:
	.word	1376157918                      // 0xb60b082c520680de
	.word	3054176300
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_lldiv-.L__profd_lldiv
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_lldiv, 48

	.type	.L__profc_wcschr,@object        // @__profc_wcschr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profc_wcschr:
	.space	40
	.size	.L__profc_wcschr, 40

	.type	.L__profd_wcschr,@object        // @__profd_wcschr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profd_wcschr:
	.word	3278405344                      // 0xe05c7c36c3687ee0
	.word	3764157494
	.word	243340813                       // 0x10e81160d
	.word	1
	.word	.L__profc_wcschr-.L__profd_wcschr
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	5                               // 0x5
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_wcschr, 48

	.type	.L__profc_wcscmp,@object        // @__profc_wcscmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profc_wcscmp:
	.space	56
	.size	.L__profc_wcscmp, 56

	.type	.L__profd_wcscmp,@object        // @__profd_wcscmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profd_wcscmp:
	.word	3443918992                      // 0xcc82c5dbcd460890
	.word	3431122395
	.word	3512784604                      // 0x438e7d160d6dc
	.word	276711
	.word	.L__profc_wcscmp-.L__profd_wcscmp
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	7                               // 0x7
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_wcscmp, 48

	.type	.L__profc_wcscpy,@object        // @__profc_wcscpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profc_wcscpy:
	.space	16
	.size	.L__profc_wcscpy, 16

	.type	.L__profd_wcscpy,@object        // @__profd_wcscpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profd_wcscpy:
	.word	4141681258                      // 0x8baf660af6dd0a6a
	.word	2343527946
	.word	9304                            // 0x2458
	.word	0
	.word	.L__profc_wcscpy-.L__profd_wcscpy
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	2                               // 0x2
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_wcscpy, 48

	.type	.L__profc_wcslen,@object        // @__profc_wcslen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
.L__profc_wcslen:
	.space	16
	.size	.L__profc_wcslen, 16

	.type	.L__profd_wcslen,@object        // @__profd_wcslen
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
.L__profd_wcslen:
	.word	3359154486                      // 0x3759acd4c838a136
	.word	928623828
	.word	17496                           // 0x4458
	.word	0
	.word	.L__profc_wcslen-.L__profd_wcslen
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	2                               // 0x2
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_wcslen, 48

	.type	.L__profc_wcsncmp,@object       // @__profc_wcsncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profc_wcsncmp:
	.space	80
	.size	.L__profc_wcsncmp, 80

	.type	.L__profd_wcsncmp,@object       // @__profd_wcsncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profd_wcsncmp:
	.word	3384850644                      // 0xb4b5ef95c9c0b8d4
	.word	3031822229
	.word	4248202332                      // 0x5d218431fd366c5c
	.word	1562477617
	.word	.L__profc_wcsncmp-.L__profd_wcsncmp
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	10                              // 0xa
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_wcsncmp, 48

	.type	.L__profc_wmemchr,@object       // @__profc_wmemchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profc_wmemchr:
	.space	40
	.size	.L__profc_wmemchr, 40

	.type	.L__profd_wmemchr,@object       // @__profd_wmemchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profd_wmemchr:
	.word	1528125668                      // 0xfde7d69b5b1558e4
	.word	4259829403
	.word	243340813                       // 0x10e81160d
	.word	1
	.word	.L__profc_wmemchr-.L__profd_wmemchr
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	5                               // 0x5
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_wmemchr, 48

	.type	.L__profc_wmemcmp,@object       // @__profc_wmemcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profc_wmemcmp:
	.space	48
	.size	.L__profc_wmemcmp, 48

	.type	.L__profd_wmemcmp,@object       // @__profd_wmemcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profd_wmemcmp:
	.word	84788312                        // 0x4abf86f3050dc458
	.word	1254065907
	.word	1479857884                      // 0x439f45834d6dc
	.word	276980
	.word	.L__profc_wmemcmp-.L__profd_wmemcmp
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	6                               // 0x6
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_wmemcmp, 48

	.type	.L__profc_wmemcpy,@object       // @__profc_wmemcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
.L__profc_wmemcpy:
	.space	16
	.size	.L__profc_wmemcpy, 16

	.type	.L__profd_wmemcpy,@object       // @__profd_wmemcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
.L__profd_wmemcpy:
	.word	2637215827                      // 0x65ab5c0b9d30b853
	.word	1705729035
	.word	9304                            // 0x2458
	.word	0
	.word	.L__profc_wmemcpy-.L__profd_wmemcpy
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	2                               // 0x2
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_wmemcpy, 48

	.type	.L__profc_wmemmove,@object      // @__profc_wmemmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profc_wmemmove:
	.space	40
	.size	.L__profc_wmemmove, 40

	.type	.L__profd_wmemmove,@object      // @__profd_wmemmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profd_wmemmove:
	.word	1772334517                      // 0xbf56752a69a3adb5
	.word	3210114346
	.word	3244734756                      // 0xeb2e3281c166b924
	.word	3945673345
	.word	.L__profc_wmemmove-.L__profd_wmemmove
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	5                               // 0x5
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_wmemmove, 48

	.type	.L__profc_wmemset,@object       // @__profc_wmemset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profc_wmemset:
	.space	16
	.size	.L__profc_wmemset, 16

	.type	.L__profd_wmemset,@object       // @__profd_wmemset
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profd_wmemset:
	.word	4064618063                      // 0x8ceff224f245264f
	.word	2364535332
	.word	9304                            // 0x2458
	.word	0
	.word	.L__profc_wmemset-.L__profd_wmemset
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	2                               // 0x2
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_wmemset, 48

	.type	.L__profc_bcopy,@object         // @__profc_bcopy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profc_bcopy:
	.space	40
	.size	.L__profc_bcopy, 40

	.type	.L__profd_bcopy,@object         // @__profd_bcopy
	.section	__llvm_prf_data,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profd_bcopy:
	.word	1054661432                      // 0x8b5328de3edcdb38
	.word	2337482974
	.word	975013403                       // 0x48a34b333a1d861b
	.word	1218661171
	.word	.L__profc_bcopy-.L__profd_bcopy
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	5                               // 0x5
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_bcopy, 48

	.type	.L__profc_rotl64,@object        // @__profc_rotl64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profc_rotl64:
	.space	8
	.size	.L__profc_rotl64, 8

	.type	.L__profd_rotl64,@object        // @__profd_rotl64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profd_rotl64:
	.word	2229826992                      // 0x416ddc4e84e875b0
	.word	1097718862
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_rotl64-.L__profd_rotl64
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_rotl64, 48

	.type	.L__profc_rotr64,@object        // @__profc_rotr64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profc_rotr64:
	.space	8
	.size	.L__profc_rotr64, 8

	.type	.L__profd_rotr64,@object        // @__profd_rotr64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profd_rotr64:
	.word	2326512589                      // 0x8b0aff7e8aabc3cd
	.word	2332753790
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_rotr64-.L__profd_rotr64
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_rotr64, 48

	.type	.L__profc_rotl32,@object        // @__profc_rotl32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profc_rotl32:
	.space	8
	.size	.L__profc_rotl32, 8

	.type	.L__profd_rotl32,@object        // @__profd_rotl32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profd_rotl32:
	.word	3626627460                      // 0x5910447ed829f184
	.word	1494238334
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_rotl32-.L__profd_rotl32
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_rotl32, 48

	.type	.L__profc_rotr32,@object        // @__profc_rotr32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profc_rotr32:
	.space	8
	.size	.L__profc_rotr32, 8

	.type	.L__profd_rotr32,@object        // @__profd_rotr32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profd_rotr32:
	.word	3418479684                      // 0xb153fe21cbc1dc44
	.word	2975071777
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_rotr32-.L__profd_rotr32
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_rotr32, 48

	.type	.L__profc_rotl_sz,@object       // @__profc_rotl_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profc_rotl_sz:
	.space	8
	.size	.L__profc_rotl_sz, 8

	.type	.L__profd_rotl_sz,@object       // @__profd_rotl_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profd_rotl_sz:
	.word	3086541338                      // 0xccd67b43b7f8e21a
	.word	3436608323
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_rotl_sz-.L__profd_rotl_sz
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_rotl_sz, 48

	.type	.L__profc_rotr_sz,@object       // @__profc_rotr_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profc_rotr_sz:
	.space	8
	.size	.L__profc_rotr_sz, 8

	.type	.L__profd_rotr_sz,@object       // @__profd_rotr_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profd_rotr_sz:
	.word	2553665156                      // 0x2f664ae29835d684
	.word	795232994
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_rotr_sz-.L__profd_rotr_sz
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_rotr_sz, 48

	.type	.L__profc_rotl16,@object        // @__profc_rotl16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profc_rotl16:
	.space	8
	.size	.L__profc_rotl16, 8

	.type	.L__profd_rotl16,@object        // @__profd_rotl16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profd_rotl16:
	.word	244555557                       // 0x65af538b0e939f25
	.word	1705989003
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_rotl16-.L__profd_rotl16
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_rotl16, 48

	.type	.L__profc_rotr16,@object        // @__profc_rotr16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profc_rotr16:
	.space	8
	.size	.L__profc_rotr16, 8

	.type	.L__profd_rotr16,@object        // @__profd_rotr16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profd_rotr16:
	.word	3877440124                      // 0x4933b9afe71d0a7c
	.word	1228126639
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_rotr16-.L__profd_rotr16
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_rotr16, 48

	.type	.L__profc_rotl8,@object         // @__profc_rotl8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profc_rotl8:
	.space	8
	.size	.L__profc_rotl8, 8

	.type	.L__profd_rotl8,@object         // @__profd_rotl8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profd_rotl8:
	.word	655336000                       // 0x3d2ddd93270fa240
	.word	1026416019
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_rotl8-.L__profd_rotl8
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_rotl8, 48

	.type	.L__profc_rotr8,@object         // @__profc_rotr8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profc_rotr8:
	.space	8
	.size	.L__profc_rotr8, 8

	.type	.L__profd_rotr8,@object         // @__profd_rotr8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profd_rotr8:
	.word	1493665568                      // 0xa54c2aea59078720
	.word	2773232362
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_rotr8-.L__profd_rotr8
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_rotr8, 48

	.type	.L__profc_bswap_16,@object      // @__profc_bswap_16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profc_bswap_16:
	.space	8
	.size	.L__profc_bswap_16, 8

	.type	.L__profd_bswap_16,@object      // @__profd_bswap_16
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profd_bswap_16:
	.word	1268401773                      // 0x84e47ce04b9a466d
	.word	2229566688
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_bswap_16-.L__profd_bswap_16
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_bswap_16, 48

	.type	.L__profc_bswap_32,@object      // @__profc_bswap_32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profc_bswap_32:
	.space	8
	.size	.L__profc_bswap_32, 8

	.type	.L__profd_bswap_32,@object      // @__profd_bswap_32
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profd_bswap_32:
	.word	452808988                       // 0x655ffb691afd511c
	.word	1700789097
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_bswap_32-.L__profd_bswap_32
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_bswap_32, 48

	.type	.L__profc_bswap_64,@object      // @__profc_bswap_64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profc_bswap_64:
	.space	8
	.size	.L__profc_bswap_64, 8

	.type	.L__profd_bswap_64,@object      // @__profd_bswap_64
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profd_bswap_64:
	.word	475245398                       // 0x27e1fd2c1c53ab56
	.word	669121836
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_bswap_64-.L__profd_bswap_64
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_bswap_64, 48

	.type	.L__profc_ffs,@object           // @__profc_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
.L__profc_ffs:
	.space	24
	.size	.L__profc_ffs, 24

	.type	.L__profd_ffs,@object           // @__profd_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
.L__profd_ffs:
	.word	1440366139                      // 0x7ffbbb6955da3e3b
	.word	2147203945
	.word	2455835736                      // 0x11b292611458
	.word	4530
	.word	.L__profc_ffs-.L__profd_ffs
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_ffs, 48

	.type	.L__profc_libiberty_ffs,@object // @__profc_libiberty_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profc_libiberty_ffs:
	.space	24
	.size	.L__profc_libiberty_ffs, 24

	.type	.L__profd_libiberty_ffs,@object // @__profd_libiberty_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profd_libiberty_ffs:
	.word	2840574905                      // 0xe7b1a8a94fbbb9
	.word	15184296
	.word	286368856                       // 0xa7d261111a458
	.word	687398
	.word	.L__profc_libiberty_ffs-.L__profd_libiberty_ffs
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_libiberty_ffs, 48

	.type	.L__profc_gl_isinff,@object     // @__profc_gl_isinff
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
.L__profc_gl_isinff:
	.space	24
	.size	.L__profc_gl_isinff, 24

	.type	.L__profd_gl_isinff,@object     // @__profd_gl_isinff
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
.L__profd_gl_isinff:
	.word	3010385274                      // 0x5ab10580b36ed57a
	.word	1521550720
	.word	6354652                         // 0x60f6dc
	.word	0
	.word	.L__profc_gl_isinff-.L__profd_gl_isinff
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_gl_isinff, 48

	.type	.L__profc_gl_isinfd,@object     // @__profc_gl_isinfd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
.L__profc_gl_isinfd:
	.space	24
	.size	.L__profc_gl_isinfd, 24

	.type	.L__profd_gl_isinfd,@object     // @__profd_gl_isinfd
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
.L__profd_gl_isinfd:
	.word	444377658                       // 0x80cc28161a7caa3a
	.word	2160863254
	.word	6354652                         // 0x60f6dc
	.word	0
	.word	.L__profc_gl_isinfd-.L__profd_gl_isinfd
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_gl_isinfd, 48

	.type	.L__profc_gl_isinfl,@object     // @__profc_gl_isinfl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
.L__profc_gl_isinfl:
	.space	24
	.size	.L__profc_gl_isinfl, 24

	.type	.L__profd_gl_isinfl,@object     // @__profd_gl_isinfl
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
.L__profd_gl_isinfl:
	.word	2943121403                      // 0x41a874c2af6c77fb
	.word	1101558978
	.word	6354652                         // 0x60f6dc
	.word	0
	.word	.L__profc_gl_isinfl-.L__profd_gl_isinfl
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_gl_isinfl, 48

	.type	.L__profc__Qp_itoq,@object      // @__profc__Qp_itoq
	.section	__llvm_prf_cnts,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
.L__profc__Qp_itoq:
	.space	8
	.size	.L__profc__Qp_itoq, 8

	.type	.L__profd__Qp_itoq,@object      // @__profd__Qp_itoq
	.section	__llvm_prf_data,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
.L__profd__Qp_itoq:
	.word	1257874239                      // 0xca752ed84af9a33f
	.word	3396677336
	.word	0                               // 0x0
	.word	0
	.word	.L__profc__Qp_itoq-.L__profd__Qp_itoq
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd__Qp_itoq, 48

	.type	.L__profc_ldexpf,@object        // @__profc_ldexpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
.L__profc_ldexpf:
	.space	64
	.size	.L__profc_ldexpf, 64

	.type	.L__profd_ldexpf,@object        // @__profd_ldexpf
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
.L__profd_ldexpf:
	.word	539537125                       // 0xdc76cdf42028aee5
	.word	3698773492
	.word	14241369                        // 0xe392b7c600d94e59
	.word	3818043334
	.word	.L__profc_ldexpf-.L__profd_ldexpf
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	8                               // 0x8
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_ldexpf, 48

	.type	.L__profc_ldexp,@object         // @__profc_ldexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
.L__profc_ldexp:
	.space	64
	.size	.L__profc_ldexp, 64

	.type	.L__profd_ldexp,@object         // @__profd_ldexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
.L__profd_ldexp:
	.word	3111827691                      // 0xfca965e7b97ab8eb
	.word	4238960103
	.word	14241369                        // 0xe392b7c600d94e59
	.word	3818043334
	.word	.L__profc_ldexp-.L__profd_ldexp
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	8                               // 0x8
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_ldexp, 48

	.type	.L__profc_ldexpl,@object        // @__profc_ldexpl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
.L__profc_ldexpl:
	.space	64
	.size	.L__profc_ldexpl, 64

	.type	.L__profd_ldexpl,@object        // @__profd_ldexpl
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
.L__profd_ldexpl:
	.word	178812135                       // 0xb942e25c0aa874e7
	.word	3108168284
	.word	14241369                        // 0xe392b7c600d94e59
	.word	3818043334
	.word	.L__profc_ldexpl-.L__profd_ldexpl
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	8                               // 0x8
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_ldexpl, 48

	.type	.L__profc_memxor,@object        // @__profc_memxor
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
.L__profc_memxor:
	.space	16
	.size	.L__profc_memxor, 16

	.type	.L__profd_memxor,@object        // @__profd_memxor
	.section	__llvm_prf_data,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
.L__profd_memxor:
	.word	2128235242                      // 0x8bdecd417eda4aea
	.word	2346634561
	.word	1164376                         // 0x11c458
	.word	0
	.word	.L__profc_memxor-.L__profd_memxor
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	2                               // 0x2
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_memxor, 48

	.type	.L__profc_strncat,@object       // @__profc_strncat
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
.L__profc_strncat:
	.space	40
	.size	.L__profc_strncat, 40

	.type	.L__profd_strncat,@object       // @__profd_strncat
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
.L__profd_strncat:
	.word	2636207119                      // 0xce4875d49d21540f
	.word	3460855252
	.word	1249715288                      // 0x10e72044a7d2458
	.word	17723908
	.word	.L__profc_strncat-.L__profd_strncat
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	5                               // 0x5
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_strncat, 48

	.type	.L__profc_strnlen,@object       // @__profc_strnlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profc_strnlen:
	.space	32
	.size	.L__profc_strnlen, 32

	.type	.L__profd_strnlen,@object       // @__profd_strnlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profd_strnlen:
	.word	3690601605                      // 0x72eda14dbfa1c85
	.word	120510996
	.word	242054232                       // 0x10e6d7458
	.word	1
	.word	.L__profc_strnlen-.L__profd_strnlen
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	4                               // 0x4
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_strnlen, 48

	.type	.L__profc_strpbrk,@object       // @__profc_strpbrk
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profc_strpbrk:
	.space	32
	.size	.L__profc_strpbrk, 32

	.type	.L__profd_strpbrk,@object       // @__profd_strpbrk
	.section	__llvm_prf_data,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profd_strpbrk:
	.word	1100202522                      // 0xa0b33fed4193c21a
	.word	2696101869
	.word	84945426                        // 0xc250e3b905102a12
	.word	3260081081
	.word	.L__profc_strpbrk-.L__profd_strpbrk
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	4                               // 0x4
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_strpbrk, 48

	.type	.L__profc_strrchr,@object       // @__profc_strrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profc_strrchr:
	.space	24
	.size	.L__profc_strrchr, 24

	.type	.L__profd_strrchr,@object       // @__profd_strrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profd_strrchr:
	.word	1003970063                      // 0x49a93a493bd75e0f
	.word	1235827273
	.word	2672366680                      // 0x329f491458
	.word	50
	.word	.L__profc_strrchr-.L__profd_strrchr
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_strrchr, 48

	.type	.L__profc_strstr,@object        // @__profc_strstr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
.L__profc_strstr:
	.space	32
	.size	.L__profc_strstr, 32

	.type	.L__profd_strstr,@object        // @__profd_strstr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
.L__profd_strstr:
	.word	1946130763                      // 0x3169a8a873ff994b
	.word	829008040
	.word	4193384452                      // 0x93c6fcaef9f1f804
	.word	2479291566
	.word	.L__profc_strstr-.L__profd_strstr
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	4                               // 0x4
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_strstr, 48

	.type	.L__profc_copysign,@object      // @__profc_copysign
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
.L__profc_copysign:
	.space	56
	.size	.L__profc_copysign, 56

	.type	.L__profd_copysign,@object      // @__profd_copysign
	.section	__llvm_prf_data,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
.L__profd_copysign:
	.word	3933621461                      // 0x82096d47ea764cd5
	.word	2181655879
	.word	1176019055                      // 0x3a4ce3834618a06f
	.word	978117507
	.word	.L__profc_copysign-.L__profd_copysign
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	7                               // 0x7
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_copysign, 48

	.type	.L__profc_memmem,@object        // @__profc_memmem
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
.L__profc_memmem:
	.space	56
	.size	.L__profc_memmem, 56

	.type	.L__profd_memmem,@object        // @__profd_memmem
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
.L__profd_memmem:
	.word	1482351504                      // 0x981e4a4b585ae390
	.word	2552121931
	.word	2121957956                      // 0x4c7092d27e7a8244
	.word	1282446034
	.word	.L__profc_memmem-.L__profd_memmem
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	7                               // 0x7
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_memmem, 48

	.type	.L__profc_mempcpy,@object       // @__profc_mempcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
.L__profc_mempcpy:
	.space	8
	.size	.L__profc_mempcpy, 8

	.type	.L__profd_mempcpy,@object       // @__profd_mempcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
.L__profd_mempcpy:
	.word	252779458                       // 0xf5f7b7020f111bc2
	.word	4126652162
	.word	24                              // 0x18
	.word	0
	.word	.L__profc_mempcpy-.L__profd_mempcpy
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_mempcpy, 48

	.type	.L__profc_frexp,@object         // @__profc_frexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
.L__profc_frexp:
	.space	72
	.size	.L__profc_frexp, 72

	.type	.L__profd_frexp,@object         // @__profd_frexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
.L__profd_frexp:
	.word	471787407                       // 0xd667ea2e1c1ee78f
	.word	3597134382
	.word	1008144312                      // 0xdf0ea1753c170fb8
	.word	3742278005
	.word	.L__profc_frexp-.L__profd_frexp
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	9                               // 0x9
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_frexp, 48

	.type	.L__profc___muldi3,@object      // @__profc___muldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profc___muldi3:
	.space	24
	.size	.L__profc___muldi3, 24

	.type	.L__profd___muldi3,@object      // @__profd___muldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profd___muldi3:
	.word	2949618840                      // 0x3755a22cafcf9c98
	.word	928358956
	.word	2320045144                      // 0x8a491458
	.word	0
	.word	.L__profc___muldi3-.L__profd___muldi3
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___muldi3, 48

	.type	.L__profc_udivmodsi4,@object    // @__profc_udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profc_udivmodsi4:
	.space	72
	.size	.L__profc_udivmodsi4, 72

	.type	.L__profd_udivmodsi4,@object    // @__profd_udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profd_udivmodsi4:
	.word	1024966285                      // 0x40d2210e3d17be8d
	.word	1087512846
	.word	1651402066                      // 0xbb200b8626e6552
	.word	196214968
	.word	.L__profc_udivmodsi4-.L__profd_udivmodsi4
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	9                               // 0x9
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd_udivmodsi4, 48

	.type	.L__profc___clrsbqi2,@object    // @__profc___clrsbqi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profc___clrsbqi2:
	.space	24
	.size	.L__profc___clrsbqi2, 24

	.type	.L__profd___clrsbqi2,@object    // @__profd___clrsbqi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profd___clrsbqi2:
	.word	921962090                       // 0x92f2490d36f4066a
	.word	2465351949
	.word	2672395352                      // 0x29b49129f498458
	.word	43731218
	.word	.L__profc___clrsbqi2-.L__profd___clrsbqi2
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___clrsbqi2, 48

	.type	.L__profc___clrsbdi2,@object    // @__profc___clrsbdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profc___clrsbdi2:
	.space	24
	.size	.L__profc___clrsbdi2, 24

	.type	.L__profd___clrsbdi2,@object    // @__profd___clrsbdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profd___clrsbdi2:
	.word	1877498071                      // 0xeab85aaa6fe858d7
	.word	3937950378
	.word	2672395352                      // 0x29b49129f498458
	.word	43731218
	.word	.L__profc___clrsbdi2-.L__profd___clrsbdi2
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___clrsbdi2, 48

	.type	.L__profc___mulsi3,@object      // @__profc___mulsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profc___mulsi3:
	.space	24
	.size	.L__profc___mulsi3, 24

	.type	.L__profd___mulsi3,@object      // @__profd___mulsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profd___mulsi3:
	.word	808585471                       // 0x472924cf303208ff
	.word	1193878735
	.word	2320045144                      // 0x8a491458
	.word	0
	.word	.L__profc___mulsi3-.L__profd___mulsi3
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___mulsi3, 48

	.type	.L__profc___cmovd,@object       // @__profc___cmovd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profc___cmovd:
	.space	56
	.size	.L__profc___cmovd, 56

	.type	.L__profd___cmovd,@object       // @__profd___cmovd
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profd___cmovd:
	.word	553465352                       // 0x143d4c6520fd3608
	.word	339561573
	.word	1219219495                      // 0xa70727df48abd027
	.word	2802264031
	.word	.L__profc___cmovd-.L__profd___cmovd
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	7                               // 0x7
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___cmovd, 48

	.type	.L__profc___cmovh,@object       // @__profc___cmovh
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profc___cmovh:
	.space	56
	.size	.L__profc___cmovh, 56

	.type	.L__profd___cmovh,@object       // @__profd___cmovh
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profd___cmovh:
	.word	1199450638                      // 0xeec99ab9477e2a0e
	.word	4006189753
	.word	2696688615                      // 0x2b706930a0bc33e7
	.word	728787248
	.word	.L__profc___cmovh-.L__profd___cmovh
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	7                               // 0x7
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___cmovh, 48

	.type	.L__profc___cmovw,@object       // @__profc___cmovw
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profc___cmovw:
	.space	56
	.size	.L__profc___cmovw, 56

	.type	.L__profd___cmovw,@object       // @__profd___cmovw
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profd___cmovw:
	.word	1785275052                      // 0xa3f7772d6a6922ac
	.word	2750904109
	.word	1219219495                      // 0xa70727df48abd027
	.word	2802264031
	.word	.L__profc___cmovw-.L__profd___cmovw
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	7                               // 0x7
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___cmovw, 48

	.type	.L__profc___modi,@object        // @__profc___modi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
.L__profc___modi:
	.space	8
	.size	.L__profc___modi, 8

	.type	.L__profd___modi,@object        // @__profd___modi
	.section	__llvm_prf_data,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
.L__profd___modi:
	.word	3464656561                      // 0x3951c3b1ce8276b1
	.word	961659825
	.word	24                              // 0x18
	.word	0
	.word	.L__profc___modi-.L__profd___modi
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___modi, 48

	.type	.L__profc___uitod,@object       // @__profc___uitod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
.L__profc___uitod:
	.space	8
	.size	.L__profc___uitod, 8

	.type	.L__profd___uitod,@object       // @__profd___uitod
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
.L__profd___uitod:
	.word	2493213220                      // 0xcb5bf4b0949b6a24
	.word	3411801264
	.word	24                              // 0x18
	.word	0
	.word	.L__profc___uitod-.L__profd___uitod
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___uitod, 48

	.type	.L__profc___uitof,@object       // @__profc___uitof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
.L__profc___uitof:
	.space	8
	.size	.L__profc___uitof, 8

	.type	.L__profd___uitof,@object       // @__profd___uitof
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
.L__profd___uitof:
	.word	3986234038                      // 0x253fdbc7ed991ab6
	.word	624942023
	.word	24                              // 0x18
	.word	0
	.word	.L__profc___uitof-.L__profd___uitof
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___uitof, 48

	.type	.L__profc___ulltod,@object      // @__profc___ulltod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
.L__profc___ulltod:
	.space	8
	.size	.L__profc___ulltod, 8

	.type	.L__profd___ulltod,@object      // @__profd___ulltod
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
.L__profd___ulltod:
	.word	4219734726                      // 0x377213c0fb840ac6
	.word	930223040
	.word	24                              // 0x18
	.word	0
	.word	.L__profc___ulltod-.L__profd___ulltod
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___ulltod, 48

	.type	.L__profc___ulltof,@object      // @__profc___ulltof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
.L__profc___ulltof:
	.space	8
	.size	.L__profc___ulltof, 8

	.type	.L__profd___ulltof,@object      // @__profd___ulltof
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
.L__profd___ulltof:
	.word	2547710861                      // 0xe58a8e7e97dafb8d
	.word	3851062910
	.word	24                              // 0x18
	.word	0
	.word	.L__profc___ulltof-.L__profd___ulltof
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___ulltof, 48

	.type	.L__profc___umodi,@object       // @__profc___umodi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
.L__profc___umodi:
	.space	8
	.size	.L__profc___umodi, 8

	.type	.L__profd___umodi,@object       // @__profd___umodi
	.section	__llvm_prf_data,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
.L__profd___umodi:
	.word	1073703930                      // 0x5567a7893fff6bfa
	.word	1432856457
	.word	24                              // 0x18
	.word	0
	.word	.L__profc___umodi-.L__profd___umodi
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___umodi, 48

	.type	.L__profc___clzhi2,@object      // @__profc___clzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profc___clzhi2:
	.space	24
	.size	.L__profc___clzhi2, 24

	.type	.L__profd___clzhi2,@object      // @__profd___clzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profd___clzhi2:
	.word	1526022046                      // 0x8005edb05af53f9e
	.word	2147872176
	.word	2455311448                      // 0x11b292591458
	.word	4530
	.word	.L__profc___clzhi2-.L__profd___clzhi2
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___clzhi2, 48

	.type	.L__profc___ctzhi2,@object      // @__profc___ctzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profc___ctzhi2:
	.space	24
	.size	.L__profc___ctzhi2, 24

	.type	.L__profd___ctzhi2,@object      // @__profd___ctzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profd___ctzhi2:
	.word	3617218592                      // 0xea391231d79a6020
	.word	3929608753
	.word	2455311448                      // 0x11b292591458
	.word	4530
	.word	.L__profc___ctzhi2-.L__profd___ctzhi2
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___ctzhi2, 48

	.type	.L__profc___fixunssfsi,@object  // @__profc___fixunssfsi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
.L__profc___fixunssfsi:
	.space	16
	.size	.L__profc___fixunssfsi, 16

	.type	.L__profd___fixunssfsi,@object  // @__profd___fixunssfsi
	.section	__llvm_prf_data,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
.L__profd___fixunssfsi:
	.word	651704643                       // 0x93bf2a7226d83943
	.word	2478778994
	.word	2655618136                      // 0x29e498458
	.word	2
	.word	.L__profc___fixunssfsi-.L__profd___fixunssfsi
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	2                               // 0x2
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___fixunssfsi, 48

	.type	.L__profc___parityhi2,@object   // @__profc___parityhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profc___parityhi2:
	.space	24
	.size	.L__profc___parityhi2, 24

	.type	.L__profd___parityhi2,@object   // @__profd___parityhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profd___parityhi2:
	.word	1595267545                      // 0x10b5167d5f15d9d9
	.word	280303229
	.word	3393786968                      // 0x46ca491458
	.word	70
	.word	.L__profc___parityhi2-.L__profd___parityhi2
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___parityhi2, 48

	.type	.L__profc___popcounthi2,@object // @__profc___popcounthi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profc___popcounthi2:
	.space	24
	.size	.L__profc___popcounthi2, 24

	.type	.L__profd___popcounthi2,@object // @__profd___popcounthi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profd___popcounthi2:
	.word	3021313414                      // 0x36b9214fb4159586
	.word	918102351
	.word	3393786968                      // 0x46ca491458
	.word	70
	.word	.L__profc___popcounthi2-.L__profd___popcounthi2
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___popcounthi2, 48

	.type	.L__profc___mulsi3_iq2000,@object // @__profc___mulsi3_iq2000
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profc___mulsi3_iq2000:
	.space	24
	.size	.L__profc___mulsi3_iq2000, 24

	.type	.L__profd___mulsi3_iq2000,@object // @__profd___mulsi3_iq2000
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profd___mulsi3_iq2000:
	.word	2418545684                      // 0xc8d127b190281414
	.word	3369150385
	.word	172561496                       // 0x280a491458
	.word	40
	.word	.L__profc___mulsi3_iq2000-.L__profd___mulsi3_iq2000
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___mulsi3_iq2000, 48

	.type	.L__profc___mulsi3_lm32,@object // @__profc___mulsi3_lm32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profc___mulsi3_lm32:
	.space	32
	.size	.L__profc___mulsi3_lm32, 32

	.type	.L__profd___mulsi3_lm32,@object // @__profd___mulsi3_lm32
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profd___mulsi3_lm32:
	.word	3669051597                      // 0x26851843dab148cd
	.word	646256707
	.word	903869171                       // 0xa9cf36c835dff2f3
	.word	2848929480
	.word	.L__profc___mulsi3_lm32-.L__profd___mulsi3_lm32
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	4                               // 0x4
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___mulsi3_lm32, 48

	.type	.L__profc___udivmodsi4,@object  // @__profc___udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profc___udivmodsi4:
	.space	72
	.size	.L__profc___udivmodsi4, 72

	.type	.L__profd___udivmodsi4,@object  // @__profd___udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profd___udivmodsi4:
	.word	3214998610                      // 0xa2bc61cdbfa0fc52
	.word	2730254797
	.word	1651402066                      // 0xbb200b8626e6552
	.word	196214968
	.word	.L__profc___udivmodsi4-.L__profd___udivmodsi4
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	9                               // 0x9
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___udivmodsi4, 48

	.type	.L__profc___mspabi_cmpf,@object // @__profc___mspabi_cmpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
.L__profc___mspabi_cmpf:
	.space	24
	.size	.L__profc___mspabi_cmpf, 24

	.type	.L__profd___mspabi_cmpf,@object // @__profd___mspabi_cmpf
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
.L__profd___mspabi_cmpf:
	.word	4012873975                      // 0x58d08e7bef2f98f7
	.word	1490062971
	.word	3971983684                      // 0x12c573c0ecbfa944
	.word	314930112
	.word	.L__profc___mspabi_cmpf-.L__profd___mspabi_cmpf
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___mspabi_cmpf, 48

	.type	.L__profc___mspabi_cmpd,@object // @__profc___mspabi_cmpd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
.L__profc___mspabi_cmpd:
	.space	24
	.size	.L__profc___mspabi_cmpd, 24

	.type	.L__profd___mspabi_cmpd,@object // @__profd___mspabi_cmpd
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
.L__profd___mspabi_cmpd:
	.word	3823668329                      // 0xafd9d1e3e3e88c69
	.word	2950287843
	.word	3971983684                      // 0x12c573c0ecbfa944
	.word	314930112
	.word	.L__profc___mspabi_cmpd-.L__profd___mspabi_cmpd
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___mspabi_cmpd, 48

	.type	.L__profc___mspabi_mpysll,@object // @__profc___mspabi_mpysll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profc___mspabi_mpysll:
	.space	8
	.size	.L__profc___mspabi_mpysll, 8

	.type	.L__profd___mspabi_mpysll,@object // @__profd___mspabi_mpysll
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profd___mspabi_mpysll:
	.word	4195771941                      // 0xfb03c3bdfa166625
	.word	4211327933
	.word	24                              // 0x18
	.word	0
	.word	.L__profc___mspabi_mpysll-.L__profd___mspabi_mpysll
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___mspabi_mpysll, 48

	.type	.L__profc___mspabi_mpyull,@object // @__profc___mspabi_mpyull
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profc___mspabi_mpyull:
	.space	8
	.size	.L__profc___mspabi_mpyull, 8

	.type	.L__profd___mspabi_mpyull,@object // @__profd___mspabi_mpyull
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profd___mspabi_mpyull:
	.word	3324675637                      // 0x5c01e284c62a8635
	.word	1543627396
	.word	24                              // 0x18
	.word	0
	.word	.L__profc___mspabi_mpyull-.L__profd___mspabi_mpyull
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___mspabi_mpyull, 48

	.type	.L__profc___mulhi3,@object      // @__profc___mulhi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profc___mulhi3:
	.space	56
	.size	.L__profc___mulhi3, 56

	.type	.L__profd___mulhi3,@object      // @__profd___mulhi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profd___mulhi3:
	.word	1556531068                      // 0xbf2a9dde5cc6c77c
	.word	3207241182
	.word	2703778695                      // 0xb568b86aa1286387
	.word	3043539050
	.word	.L__profc___mulhi3-.L__profd___mulhi3
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	7                               // 0x7
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___mulhi3, 48

	.type	.L__profc___divsi3,@object      // @__profc___divsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profc___divsi3:
	.space	32
	.size	.L__profc___divsi3, 32

	.type	.L__profd___divsi3,@object      // @__profd___divsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profd___divsi3:
	.word	296414084                       // 0x4e26dd1711aaeb84
	.word	1311169815
	.word	1867459201                      // 0x715edbe6f4f2a81
	.word	118877630
	.word	.L__profc___divsi3-.L__profd___divsi3
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	4                               // 0x4
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___divsi3, 48

	.type	.L__profc___modsi3,@object      // @__profc___modsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profc___modsi3:
	.space	32
	.size	.L__profc___modsi3, 32

	.type	.L__profd___modsi3,@object      // @__profd___modsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profd___modsi3:
	.word	1312834626                      // 0x8328dd9f4e404442
	.word	2200493471
	.word	2245965411                      // 0x1d6fb85985deb663
	.word	493860953
	.word	.L__profc___modsi3-.L__profd___modsi3
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	4                               // 0x4
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___modsi3, 48

	.type	.L__profc___udivmodhi4,@object  // @__profc___udivmodhi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profc___udivmodhi4:
	.space	72
	.size	.L__profc___udivmodhi4, 72

	.type	.L__profd___udivmodhi4,@object  // @__profd___udivmodhi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profd___udivmodhi4:
	.word	3037779362                      // 0x1f1bdf8db510d5a2
	.word	521920397
	.word	1651402066                      // 0xbb200b8626e6552
	.word	196214968
	.word	.L__profc___udivmodhi4-.L__profd___udivmodhi4
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	9                               // 0x9
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___udivmodhi4, 48

	.type	.L__profc___udivmodsi4_libgcc,@object // @__profc___udivmodsi4_libgcc
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profc___udivmodsi4_libgcc:
	.space	72
	.size	.L__profc___udivmodsi4_libgcc, 72

	.type	.L__profd___udivmodsi4_libgcc,@object // @__profd___udivmodsi4_libgcc
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profd___udivmodsi4_libgcc:
	.word	3532769019                      // 0xeb670aedd291c6fb
	.word	3949398765
	.word	1651402066                      // 0xbb200b8626e6552
	.word	196214968
	.word	.L__profc___udivmodsi4_libgcc-.L__profd___udivmodsi4_libgcc
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	9                               // 0x9
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___udivmodsi4_libgcc, 48

	.type	.L__profc___ashldi3,@object     // @__profc___ashldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profc___ashldi3:
	.space	24
	.size	.L__profc___ashldi3, 24

	.type	.L__profd___ashldi3,@object     // @__profd___ashldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profd___ashldi3:
	.word	978704463                       // 0x339d4a983a55d84f
	.word	865946264
	.word	3529577560                      // 0x2924ca7d2611458
	.word	43142311
	.word	.L__profc___ashldi3-.L__profd___ashldi3
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___ashldi3, 48

	.type	.L__profc___ashrdi3,@object     // @__profc___ashrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profc___ashrdi3:
	.space	24
	.size	.L__profc___ashrdi3, 24

	.type	.L__profd___ashrdi3,@object     // @__profd___ashrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profd___ashrdi3:
	.word	3990118094                      // 0xe63f2ae7edd45ece
	.word	3862899431
	.word	3529577560                      // 0x2924ca7d2611458
	.word	43142311
	.word	.L__profc___ashrdi3-.L__profd___ashrdi3
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___ashrdi3, 48

	.type	.L__profc___bswapdi2,@object    // @__profc___bswapdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profc___bswapdi2:
	.space	8
	.size	.L__profc___bswapdi2, 8

	.type	.L__profd___bswapdi2,@object    // @__profd___bswapdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profd___bswapdi2:
	.word	2913318844                      // 0x7ef907d7ada5b7bc
	.word	2130249687
	.word	24                              // 0x18
	.word	0
	.word	.L__profc___bswapdi2-.L__profd___bswapdi2
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___bswapdi2, 48

	.type	.L__profc___bswapsi2,@object    // @__profc___bswapsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profc___bswapsi2:
	.space	8
	.size	.L__profc___bswapsi2, 8

	.type	.L__profd___bswapsi2,@object    // @__profd___bswapsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profd___bswapsi2:
	.word	4268972970                      // 0xd129c8a2fe735baa
	.word	3509176482
	.word	24                              // 0x18
	.word	0
	.word	.L__profc___bswapsi2-.L__profd___bswapsi2
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___bswapsi2, 48

	.type	.L__profc___clzsi2,@object      // @__profc___clzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profc___clzsi2:
	.space	8
	.size	.L__profc___clzsi2, 8

	.type	.L__profd___clzsi2,@object      // @__profd___clzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profd___clzsi2:
	.word	847417603                       // 0x1330458b32829103
	.word	321930635
	.word	3749574175                      // 0x7df7df61f
	.word	7
	.word	.L__profc___clzsi2-.L__profd___clzsi2
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___clzsi2, 48

	.type	.L__profc___cmpdi2,@object      // @__profc___cmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profc___cmpdi2:
	.space	40
	.size	.L__profc___cmpdi2, 40

	.type	.L__profd___cmpdi2,@object      // @__profd___cmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profd___cmpdi2:
	.word	2900396552                      // 0xb3ad5632ace08a08
	.word	3014481458
	.word	1422139388                      // 0x993642a254c41ffc
	.word	2570470050
	.word	.L__profc___cmpdi2-.L__profd___cmpdi2
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	5                               // 0x5
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___cmpdi2, 48

	.type	.L__profc___aeabi_lcmp,@object  // @__profc___aeabi_lcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profc___aeabi_lcmp:
	.space	8
	.size	.L__profc___aeabi_lcmp, 8

	.type	.L__profd___aeabi_lcmp,@object  // @__profd___aeabi_lcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profd___aeabi_lcmp:
	.word	1053938860                      // 0x6215aec83ed1d4ac
	.word	1645588168
	.word	24                              // 0x18
	.word	0
	.word	.L__profc___aeabi_lcmp-.L__profd___aeabi_lcmp
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___aeabi_lcmp, 48

	.type	.L__profc___ctzsi2,@object      // @__profc___ctzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profc___ctzsi2:
	.space	8
	.size	.L__profc___ctzsi2, 8

	.type	.L__profd___ctzsi2,@object      // @__profd___ctzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profd___ctzsi2:
	.word	1006971543                      // 0xb3a5ef643c052a97
	.word	3013996388
	.word	3749574175                      // 0x7df7df61f
	.word	7
	.word	.L__profc___ctzsi2-.L__profd___ctzsi2
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___ctzsi2, 48

	.type	.L__profc___lshrdi3,@object     // @__profc___lshrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profc___lshrdi3:
	.space	24
	.size	.L__profc___lshrdi3, 24

	.type	.L__profd___lshrdi3,@object     // @__profd___lshrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profd___lshrdi3:
	.word	471342677                       // 0x2518bb1c181e55
	.word	2431163
	.word	3529577560                      // 0x2924ca7d2611458
	.word	43142311
	.word	.L__profc___lshrdi3-.L__profd___lshrdi3
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	3                               // 0x3
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___lshrdi3, 48

	.type	.L__profc___muldsi3,@object     // @__profc___muldsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profc___muldsi3:
	.space	8
	.size	.L__profc___muldsi3, 8

	.type	.L__profd___muldsi3,@object     // @__profd___muldsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profd___muldsi3:
	.word	2728610976                      // 0x42031a08a2a34ca0
	.word	1107499528
	.word	24                              // 0x18
	.word	0
	.word	.L__profc___muldsi3-.L__profd___muldsi3
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___muldsi3, 48

	.type	.L__profc___muldi3_compiler_rt,@object // @__profc___muldi3_compiler_rt
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profc___muldi3_compiler_rt:
	.space	8
	.size	.L__profc___muldi3_compiler_rt, 8

	.type	.L__profd___muldi3_compiler_rt,@object // @__profd___muldi3_compiler_rt
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profd___muldi3_compiler_rt:
	.word	3866746773                      // 0xf5c319bbe679df95
	.word	4123204027
	.word	24                              // 0x18
	.word	0
	.word	.L__profc___muldi3_compiler_rt-.L__profd___muldi3_compiler_rt
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___muldi3_compiler_rt, 48

	.type	.L__profc___negdi2,@object      // @__profc___negdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profc___negdi2:
	.space	8
	.size	.L__profc___negdi2, 8

	.type	.L__profd___negdi2,@object      // @__profd___negdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profd___negdi2:
	.word	3064379771                      // 0xd9312c7bb6a6b97b
	.word	3643878523
	.word	24                              // 0x18
	.word	0
	.word	.L__profc___negdi2-.L__profd___negdi2
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___negdi2, 48

	.type	.L__profc___paritydi2,@object   // @__profc___paritydi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profc___paritydi2:
	.space	8
	.size	.L__profc___paritydi2, 8

	.type	.L__profd___paritydi2,@object   // @__profd___paritydi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profd___paritydi2:
	.word	1043989739                      // 0xb92eea643e3a04eb
	.word	3106859620
	.word	24                              // 0x18
	.word	0
	.word	.L__profc___paritydi2-.L__profd___paritydi2
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___paritydi2, 48

	.type	.L__profc___paritysi2,@object   // @__profc___paritysi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profc___paritysi2:
	.space	8
	.size	.L__profc___paritysi2, 8

	.type	.L__profd___paritysi2,@object   // @__profd___paritysi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profd___paritysi2:
	.word	2433766622                      // 0x75e730a6911054de
	.word	1978085542
	.word	24                              // 0x18
	.word	0
	.word	.L__profc___paritysi2-.L__profd___paritysi2
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___paritysi2, 48

	.type	.L__profc___popcountdi2,@object // @__profc___popcountdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profc___popcountdi2:
	.space	8
	.size	.L__profc___popcountdi2, 8

	.type	.L__profd___popcountdi2,@object // @__profd___popcountdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profd___popcountdi2:
	.word	220067820                       // 0x3c43a5910d1df7ec
	.word	1011066257
	.word	24                              // 0x18
	.word	0
	.word	.L__profc___popcountdi2-.L__profd___popcountdi2
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___popcountdi2, 48

	.type	.L__profc___popcountsi2,@object // @__profc___popcountsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profc___popcountsi2:
	.space	8
	.size	.L__profc___popcountsi2, 8

	.type	.L__profd___popcountsi2,@object // @__profd___popcountsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profd___popcountsi2:
	.word	1866676599                      // 0xe22c3cbb6f433977
	.word	3794549947
	.word	24                              // 0x18
	.word	0
	.word	.L__profc___popcountsi2-.L__profd___popcountsi2
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___popcountsi2, 48

	.type	.L__profc___powidf2,@object     // @__profc___powidf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
.L__profc___powidf2:
	.space	40
	.size	.L__profc___powidf2, 40

	.type	.L__profd___powidf2,@object     // @__profd___powidf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
.L__profd___powidf2:
	.word	3451548981                      // 0xe7adb92dcdba7535
	.word	3886922029
	.word	3026146526                      // 0xbc6e6995b45f54de
	.word	3161352597
	.word	.L__profc___powidf2-.L__profd___powidf2
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	5                               // 0x5
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___powidf2, 48

	.type	.L__profc___powisf2,@object     // @__profc___powisf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
.L__profc___powisf2:
	.space	40
	.size	.L__profc___powisf2, 40

	.type	.L__profd___powisf2,@object     // @__profd___powisf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
.L__profd___powisf2:
	.word	3233246232                      // 0xcb298a26c0b76c18
	.word	3408497190
	.word	3026146526                      // 0xbc6e6995b45f54de
	.word	3161352597
	.word	.L__profc___powisf2-.L__profd___powisf2
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	5                               // 0x5
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___powisf2, 48

	.type	.L__profc___ucmpdi2,@object     // @__profc___ucmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profc___ucmpdi2:
	.space	40
	.size	.L__profc___ucmpdi2, 40

	.type	.L__profd___ucmpdi2,@object     // @__profd___ucmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profd___ucmpdi2:
	.word	627836813                       // 0xe3a10322256c078d
	.word	3818980130
	.word	1422139388                      // 0x993642a254c41ffc
	.word	2570470050
	.word	.L__profc___ucmpdi2-.L__profd___ucmpdi2
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	5                               // 0x5
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___ucmpdi2, 48

	.type	.L__profc___aeabi_ulcmp,@object // @__profc___aeabi_ulcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profc___aeabi_ulcmp:
	.space	8
	.size	.L__profc___aeabi_ulcmp, 8

	.type	.L__profd___aeabi_ulcmp,@object // @__profd___aeabi_ulcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profd___aeabi_ulcmp:
	.word	2182691887                      // 0x639ff8782193c2f
	.word	104464263
	.word	24                              // 0x18
	.word	0
	.word	.L__profc___aeabi_ulcmp-.L__profd___aeabi_ulcmp
	.word	0                               // 0x0
	.word	0
	.word	0
	.word	1                               // 0x1
	.space	6
	.space	2
	.word	0                               // 0x0
	.size	.L__profd___aeabi_ulcmp, 48

	.type	.L__llvm_prf_nm,@object         // @__llvm_prf_nm
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
	.addrsig_sym l64a.s
	.addrsig_sym digits
	.addrsig_sym seed
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
