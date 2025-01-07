	.text
	.file	"mini-libc.c"
	.globl	memmove                         # -- Begin function memmove
	.p2align	3
	.type	memmove,@function
memmove:                                # @memmove
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	*(u64 *)(r10 - 24) = r3
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 40) = r1
	r1 = *(u64 *)(r10 - 40)
	r2 = *(u64 *)(r10 - 32)
	if r1 >= r2 goto LBB0_6
	goto LBB0_1
LBB0_1:
	r2 = *(u64 *)(r10 - 24)
	r1 = *(u64 *)(r10 - 40)
	r1 += r2
	*(u64 *)(r10 - 40) = r1
	r2 = *(u64 *)(r10 - 24)
	r1 = *(u64 *)(r10 - 32)
	r1 += r2
	*(u64 *)(r10 - 32) = r1
	goto LBB0_2
LBB0_2:                                 # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	if r1 == 0 goto LBB0_5
	goto LBB0_3
LBB0_3:                                 #   in Loop: Header=BB0_2 Depth=1
	r1 = *(u64 *)(r10 - 40)
	r2 = r1
	r2 += -1
	*(u64 *)(r10 - 40) = r2
	r1 = *(u8 *)(r1 - 1)
	r2 = *(u64 *)(r10 - 32)
	r3 = r2
	r3 += -1
	*(u64 *)(r10 - 32) = r3
	*(u8 *)(r2 - 1) = r1
	goto LBB0_4
LBB0_4:                                 #   in Loop: Header=BB0_2 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 += -1
	*(u64 *)(r10 - 24) = r1
	goto LBB0_2
LBB0_5:
	goto LBB0_13
LBB0_6:
	r1 = *(u64 *)(r10 - 40)
	r2 = *(u64 *)(r10 - 32)
	if r1 == r2 goto LBB0_12
	goto LBB0_7
LBB0_7:
	goto LBB0_8
LBB0_8:                                 # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	if r1 == 0 goto LBB0_11
	goto LBB0_9
LBB0_9:                                 #   in Loop: Header=BB0_8 Depth=1
	r1 = *(u64 *)(r10 - 40)
	r2 = r1
	r2 += 1
	*(u64 *)(r10 - 40) = r2
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 32)
	r3 = r2
	r3 += 1
	*(u64 *)(r10 - 32) = r3
	*(u8 *)(r2 + 0) = r1
	goto LBB0_10
LBB0_10:                                #   in Loop: Header=BB0_8 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 += -1
	*(u64 *)(r10 - 24) = r1
	goto LBB0_8
LBB0_11:
	goto LBB0_12
LBB0_12:
	goto LBB0_13
LBB0_13:
	r0 = *(u64 *)(r10 - 8)
	exit
.Lfunc_end0:
	.size	memmove, .Lfunc_end0-memmove
                                        # -- End function
	.globl	memccpy                         # -- Begin function memccpy
	.p2align	3
	.type	memccpy,@function
memccpy:                                # @memccpy
# %bb.0:
                                        # kill: def $r5 killed $r3
	*(u64 *)(r10 - 16) = r1
	*(u64 *)(r10 - 24) = r2
	*(u32 *)(r10 - 28) = r3
	*(u64 *)(r10 - 40) = r4
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 48) = r1
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 56) = r1
	r1 = *(u32 *)(r10 - 28)
	r1 &= 255
	*(u32 *)(r10 - 28) = r1
	goto LBB1_1
LBB1_1:                                 # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 40)
	r2 = 0
	*(u64 *)(r10 - 64) = r2
	if r1 == 0 goto LBB1_3
	goto LBB1_2
LBB1_2:                                 #   in Loop: Header=BB1_1 Depth=1
	r1 = *(u64 *)(r10 - 56)
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 48)
	*(u8 *)(r2 + 0) = r1
	r2 = *(u32 *)(r10 - 28)
	r3 = 0
	*(u64 *)(r10 - 80) = r3
	r3 = 1
	*(u64 *)(r10 - 72) = r3
	if r1 != r2 goto LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_1 Depth=1
	r1 = *(u64 *)(r10 - 80)
	*(u64 *)(r10 - 72) = r1
LBB1_11:                                #   in Loop: Header=BB1_1 Depth=1
	r1 = *(u64 *)(r10 - 72)
	*(u64 *)(r10 - 64) = r1
	goto LBB1_3
LBB1_3:                                 #   in Loop: Header=BB1_1 Depth=1
	r1 = *(u64 *)(r10 - 64)
	r1 &= 1
	if r1 == 0 goto LBB1_6
	goto LBB1_4
LBB1_4:                                 #   in Loop: Header=BB1_1 Depth=1
	goto LBB1_5
LBB1_5:                                 #   in Loop: Header=BB1_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	r1 += -1
	*(u64 *)(r10 - 40) = r1
	r1 = *(u64 *)(r10 - 56)
	r1 += 1
	*(u64 *)(r10 - 56) = r1
	r1 = *(u64 *)(r10 - 48)
	r1 += 1
	*(u64 *)(r10 - 48) = r1
	goto LBB1_1
LBB1_6:
	r1 = *(u64 *)(r10 - 40)
	if r1 == 0 goto LBB1_8
	goto LBB1_7
LBB1_7:
	r1 = *(u64 *)(r10 - 48)
	r1 += 1
	*(u64 *)(r10 - 8) = r1
	goto LBB1_9
LBB1_8:
	r1 = 0
	*(u64 *)(r10 - 8) = r1
	goto LBB1_9
LBB1_9:
	r0 = *(u64 *)(r10 - 8)
	exit
.Lfunc_end1:
	.size	memccpy, .Lfunc_end1-memccpy
                                        # -- End function
	.globl	memchr                          # -- Begin function memchr
	.p2align	3
	.type	memchr,@function
memchr:                                 # @memchr
# %bb.0:
                                        # kill: def $r4 killed $r2
	*(u64 *)(r10 - 8) = r1
	*(u32 *)(r10 - 12) = r2
	*(u64 *)(r10 - 24) = r3
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u32 *)(r10 - 12)
	r1 &= 255
	*(u32 *)(r10 - 12) = r1
	goto LBB2_1
LBB2_1:                                 # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	r2 = 0
	*(u64 *)(r10 - 40) = r2
	if r1 == 0 goto LBB2_3
	goto LBB2_2
LBB2_2:                                 #   in Loop: Header=BB2_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u32 *)(r10 - 12)
	r3 = 0
	*(u64 *)(r10 - 56) = r3
	r3 = 1
	*(u64 *)(r10 - 48) = r3
	if r1 != r2 goto LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_1 Depth=1
	r1 = *(u64 *)(r10 - 56)
	*(u64 *)(r10 - 48) = r1
LBB2_11:                                #   in Loop: Header=BB2_1 Depth=1
	r1 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 40) = r1
	goto LBB2_3
LBB2_3:                                 #   in Loop: Header=BB2_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	r1 &= 1
	if r1 == 0 goto LBB2_6
	goto LBB2_4
LBB2_4:                                 #   in Loop: Header=BB2_1 Depth=1
	goto LBB2_5
LBB2_5:                                 #   in Loop: Header=BB2_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r1 += 1
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 24)
	r1 += -1
	*(u64 *)(r10 - 24) = r1
	goto LBB2_1
LBB2_6:
	r1 = *(u64 *)(r10 - 24)
	if r1 == 0 goto LBB2_8
	goto LBB2_7
LBB2_7:
	r1 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 64) = r1
	goto LBB2_9
LBB2_8:
	r1 = 0
	*(u64 *)(r10 - 64) = r1
	goto LBB2_9
LBB2_9:
	r0 = *(u64 *)(r10 - 64)
	exit
.Lfunc_end2:
	.size	memchr, .Lfunc_end2-memchr
                                        # -- End function
	.globl	memcmp                          # -- Begin function memcmp
	.p2align	3
	.type	memcmp,@function
memcmp:                                 # @memcmp
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	*(u64 *)(r10 - 24) = r3
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 40) = r1
	goto LBB3_1
LBB3_1:                                 # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	r2 = 0
	*(u64 *)(r10 - 48) = r2
	if r1 == 0 goto LBB3_3
	goto LBB3_2
LBB3_2:                                 #   in Loop: Header=BB3_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 40)
	r2 = *(u8 *)(r2 + 0)
	r3 = 0
	*(u64 *)(r10 - 64) = r3
	r3 = 1
	*(u64 *)(r10 - 56) = r3
	if r1 == r2 goto LBB3_11
# %bb.10:                               #   in Loop: Header=BB3_1 Depth=1
	r1 = *(u64 *)(r10 - 64)
	*(u64 *)(r10 - 56) = r1
LBB3_11:                                #   in Loop: Header=BB3_1 Depth=1
	r1 = *(u64 *)(r10 - 56)
	*(u64 *)(r10 - 48) = r1
	goto LBB3_3
LBB3_3:                                 #   in Loop: Header=BB3_1 Depth=1
	r1 = *(u64 *)(r10 - 48)
	r1 &= 1
	if r1 == 0 goto LBB3_6
	goto LBB3_4
LBB3_4:                                 #   in Loop: Header=BB3_1 Depth=1
	goto LBB3_5
LBB3_5:                                 #   in Loop: Header=BB3_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 += -1
	*(u64 *)(r10 - 24) = r1
	r1 = *(u64 *)(r10 - 32)
	r1 += 1
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 40)
	r1 += 1
	*(u64 *)(r10 - 40) = r1
	goto LBB3_1
LBB3_6:
	r1 = *(u64 *)(r10 - 24)
	if r1 == 0 goto LBB3_8
	goto LBB3_7
LBB3_7:
	r1 = *(u64 *)(r10 - 32)
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 40)
	r2 = *(u8 *)(r2 + 0)
	r1 -= r2
	*(u64 *)(r10 - 72) = r1
	goto LBB3_9
LBB3_8:
	r1 = 0
	*(u64 *)(r10 - 72) = r1
	goto LBB3_9
LBB3_9:
	r0 = *(u64 *)(r10 - 72)
	exit
.Lfunc_end3:
	.size	memcmp, .Lfunc_end3-memcmp
                                        # -- End function
	.globl	memrchr                         # -- Begin function memrchr
	.p2align	3
	.type	memrchr,@function
memrchr:                                # @memrchr
# %bb.0:
                                        # kill: def $r4 killed $r2
	*(u64 *)(r10 - 16) = r1
	*(u32 *)(r10 - 20) = r2
	*(u64 *)(r10 - 32) = r3
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 40) = r1
	r1 = *(u32 *)(r10 - 20)
	r1 &= 255
	*(u32 *)(r10 - 20) = r1
	goto LBB4_1
LBB4_1:                                 # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 32)
	r2 = r1
	r2 += -1
	*(u64 *)(r10 - 32) = r2
	if r1 == 0 goto LBB4_5
	goto LBB4_2
LBB4_2:                                 #   in Loop: Header=BB4_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	r2 = *(u64 *)(r10 - 32)
	r1 += r2
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u32 *)(r10 - 20)
	if r1 != r2 goto LBB4_4
	goto LBB4_3
LBB4_3:
	r1 = *(u64 *)(r10 - 40)
	r2 = *(u64 *)(r10 - 32)
	r1 += r2
	*(u64 *)(r10 - 8) = r1
	goto LBB4_6
LBB4_4:                                 #   in Loop: Header=BB4_1 Depth=1
	goto LBB4_1
LBB4_5:
	r1 = 0
	*(u64 *)(r10 - 8) = r1
	goto LBB4_6
LBB4_6:
	r0 = *(u64 *)(r10 - 8)
	exit
.Lfunc_end4:
	.size	memrchr, .Lfunc_end4-memrchr
                                        # -- End function
	.globl	stpcpy                          # -- Begin function stpcpy
	.p2align	3
	.type	stpcpy,@function
stpcpy:                                 # @stpcpy
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	goto LBB5_1
LBB5_1:                                 # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 16)
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 8)
	*(u8 *)(r2 + 0) = r1
	if r1 == 0 goto LBB5_4
	goto LBB5_2
LBB5_2:                                 #   in Loop: Header=BB5_1 Depth=1
	goto LBB5_3
LBB5_3:                                 #   in Loop: Header=BB5_1 Depth=1
	r1 = *(u64 *)(r10 - 16)
	r1 += 1
	*(u64 *)(r10 - 16) = r1
	r1 = *(u64 *)(r10 - 8)
	r1 += 1
	*(u64 *)(r10 - 8) = r1
	goto LBB5_1
LBB5_4:
	r0 = *(u64 *)(r10 - 8)
	exit
.Lfunc_end5:
	.size	stpcpy, .Lfunc_end5-stpcpy
                                        # -- End function
	.globl	strchrnul                       # -- Begin function strchrnul
	.p2align	3
	.type	strchrnul,@function
strchrnul:                              # @strchrnul
# %bb.0:
                                        # kill: def $r3 killed $r2
	*(u64 *)(r10 - 8) = r1
	*(u32 *)(r10 - 12) = r2
	r1 = *(u32 *)(r10 - 12)
	r1 &= 255
	*(u32 *)(r10 - 12) = r1
	goto LBB6_1
LBB6_1:                                 # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	r2 = 0
	*(u64 *)(r10 - 24) = r2
	if r1 == 0 goto LBB6_3
	goto LBB6_2
LBB6_2:                                 #   in Loop: Header=BB6_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u32 *)(r10 - 12)
	r3 = 0
	*(u64 *)(r10 - 40) = r3
	r3 = 1
	*(u64 *)(r10 - 32) = r3
	if r1 != r2 goto LBB6_8
# %bb.7:                                #   in Loop: Header=BB6_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 32) = r1
LBB6_8:                                 #   in Loop: Header=BB6_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 24) = r1
	goto LBB6_3
LBB6_3:                                 #   in Loop: Header=BB6_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 &= 1
	if r1 == 0 goto LBB6_6
	goto LBB6_4
LBB6_4:                                 #   in Loop: Header=BB6_1 Depth=1
	goto LBB6_5
LBB6_5:                                 #   in Loop: Header=BB6_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 += 1
	*(u64 *)(r10 - 8) = r1
	goto LBB6_1
LBB6_6:
	r0 = *(u64 *)(r10 - 8)
	exit
.Lfunc_end6:
	.size	strchrnul, .Lfunc_end6-strchrnul
                                        # -- End function
	.globl	strchr                          # -- Begin function strchr
	.p2align	3
	.type	strchr,@function
strchr:                                 # @strchr
# %bb.0:
                                        # kill: def $r3 killed $r2
	*(u64 *)(r10 - 16) = r1
	*(u32 *)(r10 - 20) = r2
	goto LBB7_1
LBB7_1:                                 # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 16)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	r1 <<= 32
	r1 >>= 32
	r2 = *(u32 *)(r10 - 20)
	if r1 != r2 goto LBB7_3
	goto LBB7_2
LBB7_2:
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 8) = r1
	goto LBB7_6
LBB7_3:                                 #   in Loop: Header=BB7_1 Depth=1
	goto LBB7_4
LBB7_4:                                 #   in Loop: Header=BB7_1 Depth=1
	r1 = *(u64 *)(r10 - 16)
	r2 = r1
	r2 += 1
	*(u64 *)(r10 - 16) = r2
	r1 = *(u8 *)(r1 + 0)
	if r1 != 0 goto LBB7_1
	goto LBB7_5
LBB7_5:
	r1 = 0
	*(u64 *)(r10 - 8) = r1
	goto LBB7_6
LBB7_6:
	r0 = *(u64 *)(r10 - 8)
	exit
.Lfunc_end7:
	.size	strchr, .Lfunc_end7-strchr
                                        # -- End function
	.globl	strcmp                          # -- Begin function strcmp
	.p2align	3
	.type	strcmp,@function
strcmp:                                 # @strcmp
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	goto LBB8_1
LBB8_1:                                 # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u8 *)(r2 + 0)
	r2 <<= 56
	r2 s>>= 56
	r3 = 0
	*(u64 *)(r10 - 24) = r3
	if r1 != r2 goto LBB8_3
	goto LBB8_2
LBB8_2:                                 #   in Loop: Header=BB8_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	r2 = 0
	*(u64 *)(r10 - 40) = r2
	r2 = 1
	*(u64 *)(r10 - 32) = r2
	if r1 != 0 goto LBB8_8
# %bb.7:                                #   in Loop: Header=BB8_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 32) = r1
LBB8_8:                                 #   in Loop: Header=BB8_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 24) = r1
	goto LBB8_3
LBB8_3:                                 #   in Loop: Header=BB8_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 &= 1
	if r1 == 0 goto LBB8_6
	goto LBB8_4
LBB8_4:                                 #   in Loop: Header=BB8_1 Depth=1
	goto LBB8_5
LBB8_5:                                 #   in Loop: Header=BB8_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 += 1
	*(u64 *)(r10 - 8) = r1
	r1 = *(u64 *)(r10 - 16)
	r1 += 1
	*(u64 *)(r10 - 16) = r1
	goto LBB8_1
LBB8_6:
	r1 = *(u64 *)(r10 - 8)
	r0 = *(u8 *)(r1 + 0)
	r1 = *(u64 *)(r10 - 16)
	r1 = *(u8 *)(r1 + 0)
	r0 -= r1
	exit
.Lfunc_end8:
	.size	strcmp, .Lfunc_end8-strcmp
                                        # -- End function
	.globl	strlen                          # -- Begin function strlen
	.p2align	3
	.type	strlen,@function
strlen:                                 # @strlen
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 16) = r1
	goto LBB9_1
LBB9_1:                                 # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	if r1 == 0 goto LBB9_4
	goto LBB9_2
LBB9_2:                                 #   in Loop: Header=BB9_1 Depth=1
	goto LBB9_3
LBB9_3:                                 #   in Loop: Header=BB9_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 += 1
	*(u64 *)(r10 - 8) = r1
	goto LBB9_1
LBB9_4:
	r0 = *(u64 *)(r10 - 8)
	r1 = *(u64 *)(r10 - 16)
	r0 -= r1
	exit
.Lfunc_end9:
	.size	strlen, .Lfunc_end9-strlen
                                        # -- End function
	.globl	strncmp                         # -- Begin function strncmp
	.p2align	3
	.type	strncmp,@function
strncmp:                                # @strncmp
# %bb.0:
	*(u64 *)(r10 - 16) = r1
	*(u64 *)(r10 - 24) = r2
	*(u64 *)(r10 - 32) = r3
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 40) = r1
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 48) = r1
	r1 = *(u64 *)(r10 - 32)
	r2 = r1
	r2 += -1
	*(u64 *)(r10 - 32) = r2
	if r1 != 0 goto LBB10_2
	goto LBB10_1
LBB10_1:
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB10_11
LBB10_2:
	goto LBB10_3
LBB10_3:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 40)
	r1 = *(u8 *)(r1 + 0)
	r2 = 0
	*(u64 *)(r10 - 56) = r2
	if r1 == 0 goto LBB10_7
	goto LBB10_4
LBB10_4:                                #   in Loop: Header=BB10_3 Depth=1
	r1 = *(u64 *)(r10 - 48)
	r1 = *(u8 *)(r1 + 0)
	r2 = 0
	*(u64 *)(r10 - 56) = r2
	if r1 == 0 goto LBB10_7
	goto LBB10_5
LBB10_5:                                #   in Loop: Header=BB10_3 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r2 = 0
	*(u64 *)(r10 - 56) = r2
	if r1 == 0 goto LBB10_7
	goto LBB10_6
LBB10_6:                                #   in Loop: Header=BB10_3 Depth=1
	r1 = *(u64 *)(r10 - 40)
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 48)
	r2 = *(u8 *)(r2 + 0)
	r3 = 0
	*(u64 *)(r10 - 72) = r3
	r3 = 1
	*(u64 *)(r10 - 64) = r3
	if r1 == r2 goto LBB10_13
# %bb.12:                               #   in Loop: Header=BB10_3 Depth=1
	r1 = *(u64 *)(r10 - 72)
	*(u64 *)(r10 - 64) = r1
LBB10_13:                               #   in Loop: Header=BB10_3 Depth=1
	r1 = *(u64 *)(r10 - 64)
	*(u64 *)(r10 - 56) = r1
	goto LBB10_7
LBB10_7:                                #   in Loop: Header=BB10_3 Depth=1
	r1 = *(u64 *)(r10 - 56)
	r1 &= 1
	if r1 == 0 goto LBB10_10
	goto LBB10_8
LBB10_8:                                #   in Loop: Header=BB10_3 Depth=1
	goto LBB10_9
LBB10_9:                                #   in Loop: Header=BB10_3 Depth=1
	r1 = *(u64 *)(r10 - 40)
	r1 += 1
	*(u64 *)(r10 - 40) = r1
	r1 = *(u64 *)(r10 - 48)
	r1 += 1
	*(u64 *)(r10 - 48) = r1
	r1 = *(u64 *)(r10 - 32)
	r1 += -1
	*(u64 *)(r10 - 32) = r1
	goto LBB10_3
LBB10_10:
	r1 = *(u64 *)(r10 - 40)
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 48)
	r2 = *(u8 *)(r2 + 0)
	r1 -= r2
	*(u32 *)(r10 - 4) = r1
	goto LBB10_11
LBB10_11:
	r0 = *(u32 *)(r10 - 4)
	exit
.Lfunc_end10:
	.size	strncmp, .Lfunc_end10-strncmp
                                        # -- End function
	.globl	swab                            # -- Begin function swab
	.p2align	3
	.type	swab,@function
swab:                                   # @swab
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	*(u64 *)(r10 - 24) = r3
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 40) = r1
	goto LBB11_1
LBB11_1:                                # =>This Inner Loop Header: Depth=1
	r2 = *(u64 *)(r10 - 24)
	r1 = 2
	if r1 s> r2 goto LBB11_4
	goto LBB11_2
LBB11_2:                                #   in Loop: Header=BB11_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r1 = *(u8 *)(r1 + 1)
	r2 = *(u64 *)(r10 - 40)
	*(u8 *)(r2 + 0) = r1
	r1 = *(u64 *)(r10 - 32)
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 40)
	*(u8 *)(r2 + 1) = r1
	r1 = *(u64 *)(r10 - 40)
	r1 += 2
	*(u64 *)(r10 - 40) = r1
	r1 = *(u64 *)(r10 - 32)
	r1 += 2
	*(u64 *)(r10 - 32) = r1
	goto LBB11_3
LBB11_3:                                #   in Loop: Header=BB11_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 += -2
	*(u64 *)(r10 - 24) = r1
	goto LBB11_1
LBB11_4:
	exit
.Lfunc_end11:
	.size	swab, .Lfunc_end11-swab
                                        # -- End function
	.globl	isalpha                         # -- Begin function isalpha
	.p2align	3
	.type	isalpha,@function
isalpha:                                # @isalpha
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r2 = *(u32 *)(r10 - 4)
	r2 |= 32
	r2 += -97
	r2 <<= 32
	r2 >>= 32
	r1 = 0
	*(u64 *)(r10 - 24) = r1
	r3 = 1
	r1 = 26
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB12_2
# %bb.1:
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 16) = r1
LBB12_2:
	r0 = *(u64 *)(r10 - 16)
	exit
.Lfunc_end12:
	.size	isalpha, .Lfunc_end12-isalpha
                                        # -- End function
	.globl	isascii                         # -- Begin function isascii
	.p2align	3
	.type	isascii,@function
isascii:                                # @isascii
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r1 = *(u32 *)(r10 - 4)
	r2 = 4294967168 ll
	r1 &= r2
	r2 = 0
	*(u64 *)(r10 - 24) = r2
	r2 = 1
	*(u64 *)(r10 - 16) = r2
	if r1 == 0 goto LBB13_2
# %bb.1:
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 16) = r1
LBB13_2:
	r0 = *(u64 *)(r10 - 16)
	exit
.Lfunc_end13:
	.size	isascii, .Lfunc_end13-isascii
                                        # -- End function
	.globl	isblank                         # -- Begin function isblank
	.p2align	3
	.type	isblank,@function
isblank:                                # @isblank
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r1 = *(u32 *)(r10 - 4)
	r2 = 1
	*(u64 *)(r10 - 16) = r2
	if r1 == 32 goto LBB14_2
	goto LBB14_1
LBB14_1:
	r1 = *(u32 *)(r10 - 4)
	r2 = 0
	*(u64 *)(r10 - 32) = r2
	r2 = 1
	*(u64 *)(r10 - 24) = r2
	if r1 == 9 goto LBB14_4
# %bb.3:
	r1 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 24) = r1
LBB14_4:
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 16) = r1
	goto LBB14_2
LBB14_2:
	r0 = *(u64 *)(r10 - 16)
	r0 &= 1
	exit
.Lfunc_end14:
	.size	isblank, .Lfunc_end14-isblank
                                        # -- End function
	.globl	iscntrl                         # -- Begin function iscntrl
	.p2align	3
	.type	iscntrl,@function
iscntrl:                                # @iscntrl
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r2 = *(u32 *)(r10 - 4)
	r3 = 1
	r1 = 32
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB15_2
	goto LBB15_1
LBB15_1:
	r1 = *(u32 *)(r10 - 4)
	r2 = 0
	*(u64 *)(r10 - 32) = r2
	r2 = 1
	*(u64 *)(r10 - 24) = r2
	if r1 == 127 goto LBB15_4
# %bb.3:
	r1 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 24) = r1
LBB15_4:
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 16) = r1
	goto LBB15_2
LBB15_2:
	r0 = *(u64 *)(r10 - 16)
	r0 &= 1
	exit
.Lfunc_end15:
	.size	iscntrl, .Lfunc_end15-iscntrl
                                        # -- End function
	.globl	isdigit                         # -- Begin function isdigit
	.p2align	3
	.type	isdigit,@function
isdigit:                                # @isdigit
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r2 = *(u32 *)(r10 - 4)
	r2 += -48
	r2 <<= 32
	r2 >>= 32
	r1 = 0
	*(u64 *)(r10 - 24) = r1
	r3 = 1
	r1 = 10
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB16_2
# %bb.1:
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 16) = r1
LBB16_2:
	r0 = *(u64 *)(r10 - 16)
	exit
.Lfunc_end16:
	.size	isdigit, .Lfunc_end16-isdigit
                                        # -- End function
	.globl	isgraph                         # -- Begin function isgraph
	.p2align	3
	.type	isgraph,@function
isgraph:                                # @isgraph
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r2 = *(u32 *)(r10 - 4)
	r2 += -33
	r2 <<= 32
	r2 >>= 32
	r1 = 0
	*(u64 *)(r10 - 24) = r1
	r3 = 1
	r1 = 94
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB17_2
# %bb.1:
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 16) = r1
LBB17_2:
	r0 = *(u64 *)(r10 - 16)
	exit
.Lfunc_end17:
	.size	isgraph, .Lfunc_end17-isgraph
                                        # -- End function
	.globl	islower                         # -- Begin function islower
	.p2align	3
	.type	islower,@function
islower:                                # @islower
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r2 = *(u32 *)(r10 - 4)
	r2 += -97
	r2 <<= 32
	r2 >>= 32
	r1 = 0
	*(u64 *)(r10 - 24) = r1
	r3 = 1
	r1 = 26
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB18_2
# %bb.1:
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 16) = r1
LBB18_2:
	r0 = *(u64 *)(r10 - 16)
	exit
.Lfunc_end18:
	.size	islower, .Lfunc_end18-islower
                                        # -- End function
	.globl	isprint                         # -- Begin function isprint
	.p2align	3
	.type	isprint,@function
isprint:                                # @isprint
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r2 = *(u32 *)(r10 - 4)
	r2 += -32
	r2 <<= 32
	r2 >>= 32
	r1 = 0
	*(u64 *)(r10 - 24) = r1
	r3 = 1
	r1 = 95
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB19_2
# %bb.1:
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 16) = r1
LBB19_2:
	r0 = *(u64 *)(r10 - 16)
	exit
.Lfunc_end19:
	.size	isprint, .Lfunc_end19-isprint
                                        # -- End function
	.globl	isspace                         # -- Begin function isspace
	.p2align	3
	.type	isspace,@function
isspace:                                # @isspace
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r1 = *(u32 *)(r10 - 4)
	r2 = 1
	*(u64 *)(r10 - 16) = r2
	if r1 == 32 goto LBB20_2
	goto LBB20_1
LBB20_1:
	r2 = *(u32 *)(r10 - 4)
	r2 += -9
	r2 <<= 32
	r2 >>= 32
	r1 = 0
	*(u64 *)(r10 - 32) = r1
	r3 = 1
	r1 = 5
	*(u64 *)(r10 - 24) = r3
	if r1 > r2 goto LBB20_4
# %bb.3:
	r1 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 24) = r1
LBB20_4:
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 16) = r1
	goto LBB20_2
LBB20_2:
	r0 = *(u64 *)(r10 - 16)
	r0 &= 1
	exit
.Lfunc_end20:
	.size	isspace, .Lfunc_end20-isspace
                                        # -- End function
	.globl	isupper                         # -- Begin function isupper
	.p2align	3
	.type	isupper,@function
isupper:                                # @isupper
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r2 = *(u32 *)(r10 - 4)
	r2 += -65
	r2 <<= 32
	r2 >>= 32
	r1 = 0
	*(u64 *)(r10 - 24) = r1
	r3 = 1
	r1 = 26
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB21_2
# %bb.1:
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 16) = r1
LBB21_2:
	r0 = *(u64 *)(r10 - 16)
	exit
.Lfunc_end21:
	.size	isupper, .Lfunc_end21-isupper
                                        # -- End function
	.globl	iswcntrl                        # -- Begin function iswcntrl
	.p2align	3
	.type	iswcntrl,@function
iswcntrl:                               # @iswcntrl
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r2 = *(u32 *)(r10 - 4)
	r3 = 1
	r1 = 32
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB22_4
	goto LBB22_1
LBB22_1:
	r2 = *(u32 *)(r10 - 4)
	r2 += -127
	r2 <<= 32
	r2 >>= 32
	r3 = 1
	r1 = 33
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB22_4
	goto LBB22_2
LBB22_2:
	r2 = *(u32 *)(r10 - 4)
	r2 += -8232
	r2 <<= 32
	r2 >>= 32
	r3 = 1
	r1 = 2
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB22_4
	goto LBB22_3
LBB22_3:
	r2 = *(u32 *)(r10 - 4)
	r2 += -65529
	r2 <<= 32
	r2 >>= 32
	r1 = 0
	*(u64 *)(r10 - 32) = r1
	r3 = 1
	r1 = 3
	*(u64 *)(r10 - 24) = r3
	if r1 > r2 goto LBB22_6
# %bb.5:
	r1 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 24) = r1
LBB22_6:
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 16) = r1
	goto LBB22_4
LBB22_4:
	r0 = *(u64 *)(r10 - 16)
	r0 &= 1
	exit
.Lfunc_end22:
	.size	iswcntrl, .Lfunc_end22-iswcntrl
                                        # -- End function
	.globl	iswdigit                        # -- Begin function iswdigit
	.p2align	3
	.type	iswdigit,@function
iswdigit:                               # @iswdigit
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r2 = *(u32 *)(r10 - 4)
	r2 += -48
	r2 <<= 32
	r2 >>= 32
	r1 = 0
	*(u64 *)(r10 - 24) = r1
	r3 = 1
	r1 = 10
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB23_2
# %bb.1:
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 16) = r1
LBB23_2:
	r0 = *(u64 *)(r10 - 16)
	exit
.Lfunc_end23:
	.size	iswdigit, .Lfunc_end23-iswdigit
                                        # -- End function
	.globl	iswprint                        # -- Begin function iswprint
	.p2align	3
	.type	iswprint,@function
iswprint:                               # @iswprint
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 8) = r1
	r1 = *(u32 *)(r10 - 8)
	if r1 > 254 goto LBB24_2
	goto LBB24_1
LBB24_1:
	r1 = *(u32 *)(r10 - 8)
	r1 += 1
	r1 &= 127
	r2 = 0
	*(u64 *)(r10 - 24) = r2
	r2 = 1
	*(u64 *)(r10 - 16) = r2
	if r1 s> 32 goto LBB24_12
# %bb.11:
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 16) = r1
LBB24_12:
	r1 = *(u64 *)(r10 - 16)
	*(u32 *)(r10 - 4) = r1
	goto LBB24_10
LBB24_2:
	r2 = *(u32 *)(r10 - 8)
	r1 = 8232
	if r1 > r2 goto LBB24_5
	goto LBB24_3
LBB24_3:
	r2 = *(u32 *)(r10 - 8)
	r2 += -8234
	r2 <<= 32
	r2 >>= 32
	r1 = 47062
	if r1 > r2 goto LBB24_5
	goto LBB24_4
LBB24_4:
	r1 = *(u32 *)(r10 - 8)
	r1 += -57344
	r1 <<= 32
	r1 >>= 32
	if r1 > 8184 goto LBB24_6
	goto LBB24_5
LBB24_5:
	r1 = 1
	*(u32 *)(r10 - 4) = r1
	goto LBB24_10
LBB24_6:
	r1 = *(u32 *)(r10 - 8)
	r1 += -65532
	r1 <<= 32
	r1 >>= 32
	if r1 > 1048579 goto LBB24_8
	goto LBB24_7
LBB24_7:
	r1 = *(u32 *)(r10 - 8)
	r1 &= 65534
	if r1 != 65534 goto LBB24_9
	goto LBB24_8
LBB24_8:
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB24_10
LBB24_9:
	r1 = 1
	*(u32 *)(r10 - 4) = r1
	goto LBB24_10
LBB24_10:
	r0 = *(u32 *)(r10 - 4)
	exit
.Lfunc_end24:
	.size	iswprint, .Lfunc_end24-iswprint
                                        # -- End function
	.globl	iswxdigit                       # -- Begin function iswxdigit
	.p2align	3
	.type	iswxdigit,@function
iswxdigit:                              # @iswxdigit
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r2 = *(u32 *)(r10 - 4)
	r2 += -48
	r2 <<= 32
	r2 >>= 32
	r3 = 1
	r1 = 10
	*(u64 *)(r10 - 16) = r3
	if r1 > r2 goto LBB25_2
	goto LBB25_1
LBB25_1:
	r2 = *(u32 *)(r10 - 4)
	r2 |= 32
	r2 += -97
	r2 <<= 32
	r2 >>= 32
	r1 = 0
	*(u64 *)(r10 - 32) = r1
	r3 = 1
	r1 = 6
	*(u64 *)(r10 - 24) = r3
	if r1 > r2 goto LBB25_4
# %bb.3:
	r1 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 24) = r1
LBB25_4:
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 16) = r1
	goto LBB25_2
LBB25_2:
	r0 = *(u64 *)(r10 - 16)
	r0 &= 1
	exit
.Lfunc_end25:
	.size	iswxdigit, .Lfunc_end25-iswxdigit
                                        # -- End function
	.globl	toascii                         # -- Begin function toascii
	.p2align	3
	.type	toascii,@function
toascii:                                # @toascii
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r0 = *(u32 *)(r10 - 4)
	r0 &= 127
	exit
.Lfunc_end26:
	.size	toascii, .Lfunc_end26-toascii
                                        # -- End function
	.globl	l64a                            # -- Begin function l64a
	.p2align	3
	.type	l64a,@function
l64a:                                   # @l64a
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u32 *)(r10 - 20) = r1
	r1 = l64a.s ll
	*(u64 *)(r10 - 16) = r1
	goto LBB27_1
LBB27_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 20)
	if r1 == 0 goto LBB27_4
	goto LBB27_2
LBB27_2:                                #   in Loop: Header=BB27_1 Depth=1
	r2 = *(u32 *)(r10 - 20)
	r2 &= 63
	r1 = digits ll
	r1 += r2
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 16)
	*(u8 *)(r2 + 0) = r1
	goto LBB27_3
LBB27_3:                                #   in Loop: Header=BB27_1 Depth=1
	r1 = *(u64 *)(r10 - 16)
	r1 += 1
	*(u64 *)(r10 - 16) = r1
	r1 = *(u32 *)(r10 - 20)
	r1 >>= 6
	*(u32 *)(r10 - 20) = r1
	goto LBB27_1
LBB27_4:
	r2 = *(u64 *)(r10 - 16)
	r1 = 0
	*(u8 *)(r2 + 0) = r1
	r0 = l64a.s ll
	exit
.Lfunc_end27:
	.size	l64a, .Lfunc_end27-l64a
                                        # -- End function
	.globl	srand                           # -- Begin function srand
	.p2align	3
	.type	srand,@function
srand:                                  # @srand
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r1 = *(u32 *)(r10 - 4)
	r1 += -1
	r1 <<= 32
	r1 >>= 32
	r2 = seed ll
	*(u64 *)(r2 + 0) = r1
	exit
.Lfunc_end28:
	.size	srand, .Lfunc_end28-srand
                                        # -- End function
	.globl	rand                            # -- Begin function rand
	.p2align	3
	.type	rand,@function
rand:                                   # @rand
# %bb.0:
	r1 = seed ll
	r2 = *(u64 *)(r1 + 0)
	r3 = 6364136223846793005 ll
	r2 *= r3
	r2 += 1
	*(u64 *)(r1 + 0) = r2
	r0 = *(u64 *)(r1 + 0)
	r0 >>= 33
	exit
.Lfunc_end29:
	.size	rand, .Lfunc_end29-rand
                                        # -- End function
	.globl	insque                          # -- Begin function insque
	.p2align	3
	.type	insque,@function
insque:                                 # @insque
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 24) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 32)
	if r1 != 0 goto LBB30_2
	goto LBB30_1
LBB30_1:
	r2 = *(u64 *)(r10 - 24)
	r1 = 0
	*(u64 *)(r2 + 8) = r1
	r2 = *(u64 *)(r10 - 24)
	*(u64 *)(r2 + 0) = r1
	goto LBB30_4
LBB30_2:
	r1 = *(u64 *)(r10 - 32)
	r1 = *(u64 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 24)
	*(u64 *)(r2 + 0) = r1
	r1 = *(u64 *)(r10 - 32)
	r2 = *(u64 *)(r10 - 24)
	*(u64 *)(r2 + 8) = r1
	r1 = *(u64 *)(r10 - 24)
	r2 = *(u64 *)(r10 - 32)
	*(u64 *)(r2 + 0) = r1
	r1 = *(u64 *)(r10 - 24)
	r1 = *(u64 *)(r1 + 0)
	if r1 == 0 goto LBB30_4
	goto LBB30_3
LBB30_3:
	r1 = *(u64 *)(r10 - 24)
	r2 = *(u64 *)(r1 + 0)
	*(u64 *)(r2 + 8) = r1
	goto LBB30_4
LBB30_4:
	exit
.Lfunc_end30:
	.size	insque, .Lfunc_end30-insque
                                        # -- End function
	.globl	remque                          # -- Begin function remque
	.p2align	3
	.type	remque,@function
remque:                                 # @remque
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 16) = r1
	r1 = *(u64 *)(r10 - 16)
	r1 = *(u64 *)(r1 + 0)
	if r1 == 0 goto LBB31_2
	goto LBB31_1
LBB31_1:
	r2 = *(u64 *)(r10 - 16)
	r1 = *(u64 *)(r2 + 8)
	r2 = *(u64 *)(r2 + 0)
	*(u64 *)(r2 + 8) = r1
	goto LBB31_2
LBB31_2:
	r1 = *(u64 *)(r10 - 16)
	r1 = *(u64 *)(r1 + 8)
	if r1 == 0 goto LBB31_4
	goto LBB31_3
LBB31_3:
	r2 = *(u64 *)(r10 - 16)
	r1 = *(u64 *)(r2 + 0)
	r2 = *(u64 *)(r2 + 8)
	*(u64 *)(r2 + 0) = r1
	goto LBB31_4
LBB31_4:
	exit
.Lfunc_end31:
	.size	remque, .Lfunc_end31-remque
                                        # -- End function
	.globl	abs                             # -- Begin function abs
	.p2align	3
	.type	abs,@function
abs:                                    # @abs
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r2 = *(u32 *)(r10 - 4)
	r2 <<= 32
	r2 s>>= 32
	r1 = 1
	if r1 s> r2 goto LBB32_2
	goto LBB32_1
LBB32_1:
	r1 = *(u32 *)(r10 - 4)
	*(u64 *)(r10 - 16) = r1
	goto LBB32_3
LBB32_2:
	r1 = *(u32 *)(r10 - 4)
	r1 = -r1
	*(u64 *)(r10 - 16) = r1
	goto LBB32_3
LBB32_3:
	r0 = *(u64 *)(r10 - 16)
	exit
.Lfunc_end32:
	.size	abs, .Lfunc_end32-abs
                                        # -- End function
	.globl	atoi                            # -- Begin function atoi
	.p2align	3
	.type	atoi,@function
atoi:                                   # @atoi
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	r1 = 0
	*(u32 *)(r10 - 12) = r1
	*(u32 *)(r10 - 16) = r1
	goto LBB33_1
LBB33_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	call isspace
	r1 = r0
	r1 <<= 32
	r1 >>= 32
	if r1 == 0 goto LBB33_3
	goto LBB33_2
LBB33_2:                                #   in Loop: Header=BB33_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 += 1
	*(u64 *)(r10 - 8) = r1
	goto LBB33_1
LBB33_3:
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	*(u64 *)(r10 - 24) = r1
	if r1 == 43 goto LBB33_5
	goto LBB33_13
LBB33_13:
	r1 = *(u64 *)(r10 - 24)
	r1 <<= 32
	r1 >>= 32
	if r1 != 45 goto LBB33_6
	goto LBB33_4
LBB33_4:
	r1 = 1
	*(u32 *)(r10 - 16) = r1
	goto LBB33_5
LBB33_5:
	r1 = *(u64 *)(r10 - 8)
	r1 += 1
	*(u64 *)(r10 - 8) = r1
	goto LBB33_6
LBB33_6:
	goto LBB33_7
LBB33_7:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	call isdigit
	r1 = r0
	r1 <<= 32
	r1 >>= 32
	if r1 == 0 goto LBB33_9
	goto LBB33_8
LBB33_8:                                #   in Loop: Header=BB33_7 Depth=1
	r1 = *(u32 *)(r10 - 12)
	r1 *= 10
	r2 = *(u64 *)(r10 - 8)
	r3 = r2
	r3 += 1
	*(u64 *)(r10 - 8) = r3
	r2 = *(u8 *)(r2 + 0)
	r2 <<= 56
	r2 s>>= 56
	r1 -= r2
	r1 += 48
	*(u32 *)(r10 - 12) = r1
	goto LBB33_7
LBB33_9:
	r1 = *(u32 *)(r10 - 16)
	if r1 == 0 goto LBB33_11
	goto LBB33_10
LBB33_10:
	r1 = *(u32 *)(r10 - 12)
	*(u64 *)(r10 - 32) = r1
	goto LBB33_12
LBB33_11:
	r1 = *(u32 *)(r10 - 12)
	r1 = -r1
	*(u64 *)(r10 - 32) = r1
	goto LBB33_12
LBB33_12:
	r0 = *(u64 *)(r10 - 32)
	exit
.Lfunc_end33:
	.size	atoi, .Lfunc_end33-atoi
                                        # -- End function
	.globl	atol                            # -- Begin function atol
	.p2align	3
	.type	atol,@function
atol:                                   # @atol
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	r1 = 0
	*(u64 *)(r10 - 16) = r1
	*(u32 *)(r10 - 20) = r1
	goto LBB34_1
LBB34_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	call isspace
	r1 = r0
	r1 <<= 32
	r1 >>= 32
	if r1 == 0 goto LBB34_3
	goto LBB34_2
LBB34_2:                                #   in Loop: Header=BB34_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 += 1
	*(u64 *)(r10 - 8) = r1
	goto LBB34_1
LBB34_3:
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	*(u64 *)(r10 - 32) = r1
	if r1 == 43 goto LBB34_5
	goto LBB34_13
LBB34_13:
	r1 = *(u64 *)(r10 - 32)
	r1 <<= 32
	r1 >>= 32
	if r1 != 45 goto LBB34_6
	goto LBB34_4
LBB34_4:
	r1 = 1
	*(u32 *)(r10 - 20) = r1
	goto LBB34_5
LBB34_5:
	r1 = *(u64 *)(r10 - 8)
	r1 += 1
	*(u64 *)(r10 - 8) = r1
	goto LBB34_6
LBB34_6:
	goto LBB34_7
LBB34_7:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	call isdigit
	r1 = r0
	r1 <<= 32
	r1 >>= 32
	if r1 == 0 goto LBB34_9
	goto LBB34_8
LBB34_8:                                #   in Loop: Header=BB34_7 Depth=1
	r1 = *(u64 *)(r10 - 16)
	r1 *= 10
	r2 = *(u64 *)(r10 - 8)
	r3 = r2
	r3 += 1
	*(u64 *)(r10 - 8) = r3
	r2 = *(u8 *)(r2 + 0)
	r2 <<= 56
	r2 s>>= 56
	r1 -= r2
	r1 += 48
	*(u64 *)(r10 - 16) = r1
	goto LBB34_7
LBB34_9:
	r1 = *(u32 *)(r10 - 20)
	if r1 == 0 goto LBB34_11
	goto LBB34_10
LBB34_10:
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 40) = r1
	goto LBB34_12
LBB34_11:
	r1 = *(u64 *)(r10 - 16)
	r1 = -r1
	*(u64 *)(r10 - 40) = r1
	goto LBB34_12
LBB34_12:
	r0 = *(u64 *)(r10 - 40)
	exit
.Lfunc_end34:
	.size	atol, .Lfunc_end34-atol
                                        # -- End function
	.globl	atoll                           # -- Begin function atoll
	.p2align	3
	.type	atoll,@function
atoll:                                  # @atoll
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	r1 = 0
	*(u64 *)(r10 - 16) = r1
	*(u32 *)(r10 - 20) = r1
	goto LBB35_1
LBB35_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	call isspace
	r1 = r0
	r1 <<= 32
	r1 >>= 32
	if r1 == 0 goto LBB35_3
	goto LBB35_2
LBB35_2:                                #   in Loop: Header=BB35_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 += 1
	*(u64 *)(r10 - 8) = r1
	goto LBB35_1
LBB35_3:
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	*(u64 *)(r10 - 32) = r1
	if r1 == 43 goto LBB35_5
	goto LBB35_13
LBB35_13:
	r1 = *(u64 *)(r10 - 32)
	r1 <<= 32
	r1 >>= 32
	if r1 != 45 goto LBB35_6
	goto LBB35_4
LBB35_4:
	r1 = 1
	*(u32 *)(r10 - 20) = r1
	goto LBB35_5
LBB35_5:
	r1 = *(u64 *)(r10 - 8)
	r1 += 1
	*(u64 *)(r10 - 8) = r1
	goto LBB35_6
LBB35_6:
	goto LBB35_7
LBB35_7:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	call isdigit
	r1 = r0
	r1 <<= 32
	r1 >>= 32
	if r1 == 0 goto LBB35_9
	goto LBB35_8
LBB35_8:                                #   in Loop: Header=BB35_7 Depth=1
	r1 = *(u64 *)(r10 - 16)
	r1 *= 10
	r2 = *(u64 *)(r10 - 8)
	r3 = r2
	r3 += 1
	*(u64 *)(r10 - 8) = r3
	r2 = *(u8 *)(r2 + 0)
	r2 <<= 56
	r2 s>>= 56
	r1 -= r2
	r1 += 48
	*(u64 *)(r10 - 16) = r1
	goto LBB35_7
LBB35_9:
	r1 = *(u32 *)(r10 - 20)
	if r1 == 0 goto LBB35_11
	goto LBB35_10
LBB35_10:
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 40) = r1
	goto LBB35_12
LBB35_11:
	r1 = *(u64 *)(r10 - 16)
	r1 = -r1
	*(u64 *)(r10 - 40) = r1
	goto LBB35_12
LBB35_12:
	r0 = *(u64 *)(r10 - 40)
	exit
.Lfunc_end35:
	.size	atoll, .Lfunc_end35-atoll
                                        # -- End function
	.globl	imaxabs                         # -- Begin function imaxabs
	.p2align	3
	.type	imaxabs,@function
imaxabs:                                # @imaxabs
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	r2 = *(u64 *)(r10 - 8)
	r1 = 1
	if r1 s> r2 goto LBB36_2
	goto LBB36_1
LBB36_1:
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 16) = r1
	goto LBB36_3
LBB36_2:
	r1 = *(u64 *)(r10 - 8)
	r1 = -r1
	*(u64 *)(r10 - 16) = r1
	goto LBB36_3
LBB36_3:
	r0 = *(u64 *)(r10 - 16)
	exit
.Lfunc_end36:
	.size	imaxabs, .Lfunc_end36-imaxabs
                                        # -- End function
	.globl	labs                            # -- Begin function labs
	.p2align	3
	.type	labs,@function
labs:                                   # @labs
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	r2 = *(u64 *)(r10 - 8)
	r1 = 1
	if r1 s> r2 goto LBB37_2
	goto LBB37_1
LBB37_1:
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 16) = r1
	goto LBB37_3
LBB37_2:
	r1 = *(u64 *)(r10 - 8)
	r1 = -r1
	*(u64 *)(r10 - 16) = r1
	goto LBB37_3
LBB37_3:
	r0 = *(u64 *)(r10 - 16)
	exit
.Lfunc_end37:
	.size	labs, .Lfunc_end37-labs
                                        # -- End function
	.globl	llabs                           # -- Begin function llabs
	.p2align	3
	.type	llabs,@function
llabs:                                  # @llabs
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	r2 = *(u64 *)(r10 - 8)
	r1 = 1
	if r1 s> r2 goto LBB38_2
	goto LBB38_1
LBB38_1:
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 16) = r1
	goto LBB38_3
LBB38_2:
	r1 = *(u64 *)(r10 - 8)
	r1 = -r1
	*(u64 *)(r10 - 16) = r1
	goto LBB38_3
LBB38_3:
	r0 = *(u64 *)(r10 - 16)
	exit
.Lfunc_end38:
	.size	llabs, .Lfunc_end38-llabs
                                        # -- End function
	.globl	wcschr                          # -- Begin function wcschr
	.p2align	3
	.type	wcschr,@function
wcschr:                                 # @wcschr
# %bb.0:
                                        # kill: def $r3 killed $r2
	*(u64 *)(r10 - 8) = r1
	*(u32 *)(r10 - 12) = r2
	goto LBB39_1
LBB39_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r2 = 0
	*(u64 *)(r10 - 24) = r2
	if r1 == 0 goto LBB39_3
	goto LBB39_2
LBB39_2:                                #   in Loop: Header=BB39_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r2 = *(u32 *)(r10 - 12)
	r3 = 0
	*(u64 *)(r10 - 40) = r3
	r3 = 1
	*(u64 *)(r10 - 32) = r3
	if r1 != r2 goto LBB39_11
# %bb.10:                               #   in Loop: Header=BB39_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 32) = r1
LBB39_11:                               #   in Loop: Header=BB39_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 24) = r1
	goto LBB39_3
LBB39_3:                                #   in Loop: Header=BB39_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 &= 1
	if r1 == 0 goto LBB39_6
	goto LBB39_4
LBB39_4:                                #   in Loop: Header=BB39_1 Depth=1
	goto LBB39_5
LBB39_5:                                #   in Loop: Header=BB39_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 += 4
	*(u64 *)(r10 - 8) = r1
	goto LBB39_1
LBB39_6:
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	if r1 == 0 goto LBB39_8
	goto LBB39_7
LBB39_7:
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 48) = r1
	goto LBB39_9
LBB39_8:
	r1 = 0
	*(u64 *)(r10 - 48) = r1
	goto LBB39_9
LBB39_9:
	r0 = *(u64 *)(r10 - 48)
	exit
.Lfunc_end39:
	.size	wcschr, .Lfunc_end39-wcschr
                                        # -- End function
	.globl	wcscmp                          # -- Begin function wcscmp
	.p2align	3
	.type	wcscmp,@function
wcscmp:                                 # @wcscmp
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	goto LBB40_1
LBB40_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u32 *)(r2 + 0)
	r3 = 0
	*(u64 *)(r10 - 24) = r3
	if r1 != r2 goto LBB40_4
	goto LBB40_2
LBB40_2:                                #   in Loop: Header=BB40_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r2 = 0
	*(u64 *)(r10 - 24) = r2
	if r1 == 0 goto LBB40_4
	goto LBB40_3
LBB40_3:                                #   in Loop: Header=BB40_1 Depth=1
	r1 = *(u64 *)(r10 - 16)
	r1 = *(u32 *)(r1 + 0)
	r2 = 0
	*(u64 *)(r10 - 40) = r2
	r2 = 1
	*(u64 *)(r10 - 32) = r2
	if r1 != 0 goto LBB40_12
# %bb.11:                               #   in Loop: Header=BB40_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 32) = r1
LBB40_12:                               #   in Loop: Header=BB40_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 24) = r1
	goto LBB40_4
LBB40_4:                                #   in Loop: Header=BB40_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 &= 1
	if r1 == 0 goto LBB40_7
	goto LBB40_5
LBB40_5:                                #   in Loop: Header=BB40_1 Depth=1
	goto LBB40_6
LBB40_6:                                #   in Loop: Header=BB40_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 += 4
	*(u64 *)(r10 - 8) = r1
	r1 = *(u64 *)(r10 - 16)
	r1 += 4
	*(u64 *)(r10 - 16) = r1
	goto LBB40_1
LBB40_7:
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r1 <<= 32
	r1 s>>= 32
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u32 *)(r2 + 0)
	r2 <<= 32
	r2 s>>= 32
	if r1 s>= r2 goto LBB40_9
	goto LBB40_8
LBB40_8:
	r1 = 4294967295 ll
	*(u64 *)(r10 - 48) = r1
	goto LBB40_10
LBB40_9:
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r1 <<= 32
	r1 s>>= 32
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u32 *)(r2 + 0)
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
	*(u64 *)(r10 - 64) = r3
	r3 = 1
	*(u64 *)(r10 - 56) = r3
	if r1 s> r2 goto LBB40_14
# %bb.13:
	r1 = *(u64 *)(r10 - 64)
	*(u64 *)(r10 - 56) = r1
LBB40_14:
	r1 = *(u64 *)(r10 - 56)
	*(u64 *)(r10 - 48) = r1
	goto LBB40_10
LBB40_10:
	r0 = *(u64 *)(r10 - 48)
	exit
.Lfunc_end40:
	.size	wcscmp, .Lfunc_end40-wcscmp
                                        # -- End function
	.globl	wcscpy                          # -- Begin function wcscpy
	.p2align	3
	.type	wcscpy,@function
wcscpy:                                 # @wcscpy
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 24) = r1
	goto LBB41_1
LBB41_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 16)
	r2 = r1
	r2 += 4
	*(u64 *)(r10 - 16) = r2
	r1 = *(u32 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 8)
	r3 = r2
	r3 += 4
	*(u64 *)(r10 - 8) = r3
	*(u32 *)(r2 + 0) = r1
	if r1 == 0 goto LBB41_3
	goto LBB41_2
LBB41_2:                                #   in Loop: Header=BB41_1 Depth=1
	goto LBB41_1
LBB41_3:
	r0 = *(u64 *)(r10 - 24)
	exit
.Lfunc_end41:
	.size	wcscpy, .Lfunc_end41-wcscpy
                                        # -- End function
	.globl	wcsncmp                         # -- Begin function wcsncmp
	.p2align	3
	.type	wcsncmp,@function
wcsncmp:                                # @wcsncmp
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	*(u64 *)(r10 - 24) = r3
	goto LBB42_1
LBB42_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	r2 = 0
	*(u64 *)(r10 - 32) = r2
	if r1 == 0 goto LBB42_5
	goto LBB42_2
LBB42_2:                                #   in Loop: Header=BB42_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u32 *)(r2 + 0)
	r3 = 0
	*(u64 *)(r10 - 32) = r3
	if r1 != r2 goto LBB42_5
	goto LBB42_3
LBB42_3:                                #   in Loop: Header=BB42_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r2 = 0
	*(u64 *)(r10 - 32) = r2
	if r1 == 0 goto LBB42_5
	goto LBB42_4
LBB42_4:                                #   in Loop: Header=BB42_1 Depth=1
	r1 = *(u64 *)(r10 - 16)
	r1 = *(u32 *)(r1 + 0)
	r2 = 0
	*(u64 *)(r10 - 48) = r2
	r2 = 1
	*(u64 *)(r10 - 40) = r2
	if r1 != 0 goto LBB42_16
# %bb.15:                               #   in Loop: Header=BB42_1 Depth=1
	r1 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 40) = r1
LBB42_16:                               #   in Loop: Header=BB42_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 32) = r1
	goto LBB42_5
LBB42_5:                                #   in Loop: Header=BB42_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r1 &= 1
	if r1 == 0 goto LBB42_8
	goto LBB42_6
LBB42_6:                                #   in Loop: Header=BB42_1 Depth=1
	goto LBB42_7
LBB42_7:                                #   in Loop: Header=BB42_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 += -1
	*(u64 *)(r10 - 24) = r1
	r1 = *(u64 *)(r10 - 8)
	r1 += 4
	*(u64 *)(r10 - 8) = r1
	r1 = *(u64 *)(r10 - 16)
	r1 += 4
	*(u64 *)(r10 - 16) = r1
	goto LBB42_1
LBB42_8:
	r1 = *(u64 *)(r10 - 24)
	if r1 == 0 goto LBB42_13
	goto LBB42_9
LBB42_9:
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r1 <<= 32
	r1 s>>= 32
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u32 *)(r2 + 0)
	r2 <<= 32
	r2 s>>= 32
	if r1 s>= r2 goto LBB42_11
	goto LBB42_10
LBB42_10:
	r1 = 4294967295 ll
	*(u64 *)(r10 - 56) = r1
	goto LBB42_12
LBB42_11:
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r1 <<= 32
	r1 s>>= 32
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u32 *)(r2 + 0)
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
	*(u64 *)(r10 - 72) = r3
	r3 = 1
	*(u64 *)(r10 - 64) = r3
	if r1 s> r2 goto LBB42_18
# %bb.17:
	r1 = *(u64 *)(r10 - 72)
	*(u64 *)(r10 - 64) = r1
LBB42_18:
	r1 = *(u64 *)(r10 - 64)
	*(u64 *)(r10 - 56) = r1
	goto LBB42_12
LBB42_12:
	r1 = *(u64 *)(r10 - 56)
	*(u64 *)(r10 - 80) = r1
	goto LBB42_14
LBB42_13:
	r1 = 0
	*(u64 *)(r10 - 80) = r1
	goto LBB42_14
LBB42_14:
	r0 = *(u64 *)(r10 - 80)
	exit
.Lfunc_end42:
	.size	wcsncmp, .Lfunc_end42-wcsncmp
                                        # -- End function
	.globl	wmemchr                         # -- Begin function wmemchr
	.p2align	3
	.type	wmemchr,@function
wmemchr:                                # @wmemchr
# %bb.0:
                                        # kill: def $r4 killed $r2
	*(u64 *)(r10 - 8) = r1
	*(u32 *)(r10 - 12) = r2
	*(u64 *)(r10 - 24) = r3
	goto LBB43_1
LBB43_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	r2 = 0
	*(u64 *)(r10 - 32) = r2
	if r1 == 0 goto LBB43_3
	goto LBB43_2
LBB43_2:                                #   in Loop: Header=BB43_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r2 = *(u32 *)(r10 - 12)
	r3 = 0
	*(u64 *)(r10 - 48) = r3
	r3 = 1
	*(u64 *)(r10 - 40) = r3
	if r1 != r2 goto LBB43_11
# %bb.10:                               #   in Loop: Header=BB43_1 Depth=1
	r1 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 40) = r1
LBB43_11:                               #   in Loop: Header=BB43_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 32) = r1
	goto LBB43_3
LBB43_3:                                #   in Loop: Header=BB43_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r1 &= 1
	if r1 == 0 goto LBB43_6
	goto LBB43_4
LBB43_4:                                #   in Loop: Header=BB43_1 Depth=1
	goto LBB43_5
LBB43_5:                                #   in Loop: Header=BB43_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 += -1
	*(u64 *)(r10 - 24) = r1
	r1 = *(u64 *)(r10 - 8)
	r1 += 4
	*(u64 *)(r10 - 8) = r1
	goto LBB43_1
LBB43_6:
	r1 = *(u64 *)(r10 - 24)
	if r1 == 0 goto LBB43_8
	goto LBB43_7
LBB43_7:
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 56) = r1
	goto LBB43_9
LBB43_8:
	r1 = 0
	*(u64 *)(r10 - 56) = r1
	goto LBB43_9
LBB43_9:
	r0 = *(u64 *)(r10 - 56)
	exit
.Lfunc_end43:
	.size	wmemchr, .Lfunc_end43-wmemchr
                                        # -- End function
	.globl	wmemcmp                         # -- Begin function wmemcmp
	.p2align	3
	.type	wmemcmp,@function
wmemcmp:                                # @wmemcmp
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	*(u64 *)(r10 - 24) = r3
	goto LBB44_1
LBB44_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	r2 = 0
	*(u64 *)(r10 - 32) = r2
	if r1 == 0 goto LBB44_3
	goto LBB44_2
LBB44_2:                                #   in Loop: Header=BB44_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u32 *)(r2 + 0)
	r3 = 0
	*(u64 *)(r10 - 48) = r3
	r3 = 1
	*(u64 *)(r10 - 40) = r3
	if r1 == r2 goto LBB44_14
# %bb.13:                               #   in Loop: Header=BB44_1 Depth=1
	r1 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 40) = r1
LBB44_14:                               #   in Loop: Header=BB44_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 32) = r1
	goto LBB44_3
LBB44_3:                                #   in Loop: Header=BB44_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r1 &= 1
	if r1 == 0 goto LBB44_6
	goto LBB44_4
LBB44_4:                                #   in Loop: Header=BB44_1 Depth=1
	goto LBB44_5
LBB44_5:                                #   in Loop: Header=BB44_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 += -1
	*(u64 *)(r10 - 24) = r1
	r1 = *(u64 *)(r10 - 8)
	r1 += 4
	*(u64 *)(r10 - 8) = r1
	r1 = *(u64 *)(r10 - 16)
	r1 += 4
	*(u64 *)(r10 - 16) = r1
	goto LBB44_1
LBB44_6:
	r1 = *(u64 *)(r10 - 24)
	if r1 == 0 goto LBB44_11
	goto LBB44_7
LBB44_7:
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r1 <<= 32
	r1 s>>= 32
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u32 *)(r2 + 0)
	r2 <<= 32
	r2 s>>= 32
	if r1 s>= r2 goto LBB44_9
	goto LBB44_8
LBB44_8:
	r1 = 4294967295 ll
	*(u64 *)(r10 - 56) = r1
	goto LBB44_10
LBB44_9:
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u32 *)(r1 + 0)
	r1 <<= 32
	r1 s>>= 32
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u32 *)(r2 + 0)
	r2 <<= 32
	r2 s>>= 32
	r3 = 0
	*(u64 *)(r10 - 72) = r3
	r3 = 1
	*(u64 *)(r10 - 64) = r3
	if r1 s> r2 goto LBB44_16
# %bb.15:
	r1 = *(u64 *)(r10 - 72)
	*(u64 *)(r10 - 64) = r1
LBB44_16:
	r1 = *(u64 *)(r10 - 64)
	*(u64 *)(r10 - 56) = r1
	goto LBB44_10
LBB44_10:
	r1 = *(u64 *)(r10 - 56)
	*(u64 *)(r10 - 80) = r1
	goto LBB44_12
LBB44_11:
	r1 = 0
	*(u64 *)(r10 - 80) = r1
	goto LBB44_12
LBB44_12:
	r0 = *(u64 *)(r10 - 80)
	exit
.Lfunc_end44:
	.size	wmemcmp, .Lfunc_end44-wmemcmp
                                        # -- End function
	.globl	wmemmove                        # -- Begin function wmemmove
	.p2align	3
	.type	wmemmove,@function
wmemmove:                               # @wmemmove
# %bb.0:
	*(u64 *)(r10 - 16) = r1
	*(u64 *)(r10 - 24) = r2
	*(u64 *)(r10 - 32) = r3
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 40) = r1
	r1 = *(u64 *)(r10 - 16)
	r2 = *(u64 *)(r10 - 24)
	if r1 != r2 goto LBB45_2
	goto LBB45_1
LBB45_1:
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 8) = r1
	goto LBB45_12
LBB45_2:
	r1 = *(u64 *)(r10 - 16)
	r2 = *(u64 *)(r10 - 24)
	r1 -= r2
	r2 = *(u64 *)(r10 - 32)
	r2 <<= 2
	if r1 >= r2 goto LBB45_7
	goto LBB45_3
LBB45_3:
	goto LBB45_4
LBB45_4:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 32)
	r2 = r1
	r2 += -1
	*(u64 *)(r10 - 32) = r2
	if r1 == 0 goto LBB45_6
	goto LBB45_5
LBB45_5:                                #   in Loop: Header=BB45_4 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r3 = *(u64 *)(r10 - 32)
	r3 <<= 2
	r1 += r3
	r1 = *(u32 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 16)
	r2 += r3
	*(u32 *)(r2 + 0) = r1
	goto LBB45_4
LBB45_6:
	goto LBB45_11
LBB45_7:
	goto LBB45_8
LBB45_8:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 32)
	r2 = r1
	r2 += -1
	*(u64 *)(r10 - 32) = r2
	if r1 == 0 goto LBB45_10
	goto LBB45_9
LBB45_9:                                #   in Loop: Header=BB45_8 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r2 = r1
	r2 += 4
	*(u64 *)(r10 - 24) = r2
	r1 = *(u32 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 16)
	r3 = r2
	r3 += 4
	*(u64 *)(r10 - 16) = r3
	*(u32 *)(r2 + 0) = r1
	goto LBB45_8
LBB45_10:
	goto LBB45_11
LBB45_11:
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 8) = r1
	goto LBB45_12
LBB45_12:
	r0 = *(u64 *)(r10 - 8)
	exit
.Lfunc_end45:
	.size	wmemmove, .Lfunc_end45-wmemmove
                                        # -- End function
	.globl	wmemset                         # -- Begin function wmemset
	.p2align	3
	.type	wmemset,@function
wmemset:                                # @wmemset
# %bb.0:
                                        # kill: def $r4 killed $r2
	*(u64 *)(r10 - 8) = r1
	*(u32 *)(r10 - 12) = r2
	*(u64 *)(r10 - 24) = r3
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 32) = r1
	goto LBB46_1
LBB46_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	r2 = r1
	r2 += -1
	*(u64 *)(r10 - 24) = r2
	if r1 == 0 goto LBB46_3
	goto LBB46_2
LBB46_2:                                #   in Loop: Header=BB46_1 Depth=1
	r1 = *(u32 *)(r10 - 12)
	r2 = *(u64 *)(r10 - 8)
	r3 = r2
	r3 += 4
	*(u64 *)(r10 - 8) = r3
	*(u32 *)(r2 + 0) = r1
	goto LBB46_1
LBB46_3:
	r0 = *(u64 *)(r10 - 32)
	exit
.Lfunc_end46:
	.size	wmemset, .Lfunc_end46-wmemset
                                        # -- End function
	.globl	bcopy                           # -- Begin function bcopy
	.p2align	3
	.type	bcopy,@function
bcopy:                                  # @bcopy
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	*(u64 *)(r10 - 24) = r3
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 40) = r1
	r1 = *(u64 *)(r10 - 32)
	r2 = *(u64 *)(r10 - 40)
	if r1 >= r2 goto LBB47_6
	goto LBB47_1
LBB47_1:
	r2 = *(u64 *)(r10 - 24)
	r1 = *(u64 *)(r10 - 32)
	r1 += r2
	*(u64 *)(r10 - 32) = r1
	r2 = *(u64 *)(r10 - 24)
	r1 = *(u64 *)(r10 - 40)
	r1 += r2
	*(u64 *)(r10 - 40) = r1
	goto LBB47_2
LBB47_2:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	if r1 == 0 goto LBB47_5
	goto LBB47_3
LBB47_3:                                #   in Loop: Header=BB47_2 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r2 = r1
	r2 += -1
	*(u64 *)(r10 - 32) = r2
	r1 = *(u8 *)(r1 - 1)
	r2 = *(u64 *)(r10 - 40)
	r3 = r2
	r3 += -1
	*(u64 *)(r10 - 40) = r3
	*(u8 *)(r2 - 1) = r1
	goto LBB47_4
LBB47_4:                                #   in Loop: Header=BB47_2 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 += -1
	*(u64 *)(r10 - 24) = r1
	goto LBB47_2
LBB47_5:
	goto LBB47_13
LBB47_6:
	r1 = *(u64 *)(r10 - 32)
	r2 = *(u64 *)(r10 - 40)
	if r1 == r2 goto LBB47_12
	goto LBB47_7
LBB47_7:
	goto LBB47_8
LBB47_8:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	if r1 == 0 goto LBB47_11
	goto LBB47_9
LBB47_9:                                #   in Loop: Header=BB47_8 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r2 = r1
	r2 += 1
	*(u64 *)(r10 - 32) = r2
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 40)
	r3 = r2
	r3 += 1
	*(u64 *)(r10 - 40) = r3
	*(u8 *)(r2 + 0) = r1
	goto LBB47_10
LBB47_10:                               #   in Loop: Header=BB47_8 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 += -1
	*(u64 *)(r10 - 24) = r1
	goto LBB47_8
LBB47_11:
	goto LBB47_12
LBB47_12:
	goto LBB47_13
LBB47_13:
	exit
.Lfunc_end47:
	.size	bcopy, .Lfunc_end47-bcopy
                                        # -- End function
	.globl	rotl64                          # -- Begin function rotl64
	.p2align	3
	.type	rotl64,@function
rotl64:                                 # @rotl64
# %bb.0:
                                        # kill: def $r3 killed $r2
	*(u64 *)(r10 - 8) = r1
	*(u32 *)(r10 - 12) = r2
	r1 = *(u64 *)(r10 - 8)
	r3 = *(u32 *)(r10 - 12)
	r0 = r1
	r0 <<= r3
	r2 = 64
	r2 -= r3
	r2 <<= 32
	r2 >>= 32
	r1 >>= r2
	r0 |= r1
	exit
.Lfunc_end48:
	.size	rotl64, .Lfunc_end48-rotl64
                                        # -- End function
	.globl	rotr64                          # -- Begin function rotr64
	.p2align	3
	.type	rotr64,@function
rotr64:                                 # @rotr64
# %bb.0:
                                        # kill: def $r3 killed $r2
	*(u64 *)(r10 - 8) = r1
	*(u32 *)(r10 - 12) = r2
	r1 = *(u64 *)(r10 - 8)
	r3 = *(u32 *)(r10 - 12)
	r0 = r1
	r0 >>= r3
	r2 = 64
	r2 -= r3
	r2 <<= 32
	r2 >>= 32
	r1 <<= r2
	r0 |= r1
	exit
.Lfunc_end49:
	.size	rotr64, .Lfunc_end49-rotr64
                                        # -- End function
	.globl	rotl32                          # -- Begin function rotl32
	.p2align	3
	.type	rotl32,@function
rotl32:                                 # @rotl32
# %bb.0:
                                        # kill: def $r3 killed $r2
                                        # kill: def $r3 killed $r1
	*(u32 *)(r10 - 4) = r1
	*(u32 *)(r10 - 8) = r2
	r1 = *(u32 *)(r10 - 4)
	r3 = *(u32 *)(r10 - 8)
	r0 = r1
	r0 <<= r3
	r2 = 32
	r2 -= r3
	r2 <<= 32
	r2 >>= 32
	r1 >>= r2
	r0 |= r1
	exit
.Lfunc_end50:
	.size	rotl32, .Lfunc_end50-rotl32
                                        # -- End function
	.globl	rotr32                          # -- Begin function rotr32
	.p2align	3
	.type	rotr32,@function
rotr32:                                 # @rotr32
# %bb.0:
                                        # kill: def $r3 killed $r2
                                        # kill: def $r3 killed $r1
	*(u32 *)(r10 - 4) = r1
	*(u32 *)(r10 - 8) = r2
	r1 = *(u32 *)(r10 - 4)
	r3 = *(u32 *)(r10 - 8)
	r0 = r1
	r0 >>= r3
	r2 = 32
	r2 -= r3
	r2 <<= 32
	r2 >>= 32
	r1 <<= r2
	r0 |= r1
	exit
.Lfunc_end51:
	.size	rotr32, .Lfunc_end51-rotr32
                                        # -- End function
	.globl	rotl_sz                         # -- Begin function rotl_sz
	.p2align	3
	.type	rotl_sz,@function
rotl_sz:                                # @rotl_sz
# %bb.0:
                                        # kill: def $r3 killed $r2
	*(u64 *)(r10 - 8) = r1
	*(u32 *)(r10 - 12) = r2
	r1 = *(u64 *)(r10 - 8)
	r3 = *(u32 *)(r10 - 12)
	r3 <<= 32
	r3 s>>= 32
	r2 = r3
	r2 <<= 32
	r2 >>= 32
	r0 = r1
	r0 <<= r2
	r2 = 64
	r2 -= r3
	r1 >>= r2
	r0 |= r1
	exit
.Lfunc_end52:
	.size	rotl_sz, .Lfunc_end52-rotl_sz
                                        # -- End function
	.globl	rotr_sz                         # -- Begin function rotr_sz
	.p2align	3
	.type	rotr_sz,@function
rotr_sz:                                # @rotr_sz
# %bb.0:
                                        # kill: def $r3 killed $r2
	*(u64 *)(r10 - 8) = r1
	*(u32 *)(r10 - 12) = r2
	r1 = *(u64 *)(r10 - 8)
	r3 = *(u32 *)(r10 - 12)
	r3 <<= 32
	r3 s>>= 32
	r2 = r3
	r2 <<= 32
	r2 >>= 32
	r0 = r1
	r0 >>= r2
	r2 = 64
	r2 -= r3
	r1 <<= r2
	r0 |= r1
	exit
.Lfunc_end53:
	.size	rotr_sz, .Lfunc_end53-rotr_sz
                                        # -- End function
	.globl	rotl16                          # -- Begin function rotl16
	.p2align	3
	.type	rotl16,@function
rotl16:                                 # @rotl16
# %bb.0:
                                        # kill: def $r3 killed $r2
                                        # kill: def $r3 killed $r1
	*(u16 *)(r10 - 2) = r1
	*(u32 *)(r10 - 8) = r2
	r1 = *(u16 *)(r10 - 2)
	r3 = *(u32 *)(r10 - 8)
	r0 = r1
	r0 <<= r3
	r2 = 16
	r2 -= r3
	r2 <<= 32
	r2 >>= 32
	r1 >>= r2
	r0 |= r1
	r0 &= 65535
	exit
.Lfunc_end54:
	.size	rotl16, .Lfunc_end54-rotl16
                                        # -- End function
	.globl	rotr16                          # -- Begin function rotr16
	.p2align	3
	.type	rotr16,@function
rotr16:                                 # @rotr16
# %bb.0:
                                        # kill: def $r3 killed $r2
                                        # kill: def $r3 killed $r1
	*(u16 *)(r10 - 2) = r1
	*(u32 *)(r10 - 8) = r2
	r1 = *(u16 *)(r10 - 2)
	r3 = *(u32 *)(r10 - 8)
	r0 = r1
	r0 >>= r3
	r2 = 16
	r2 -= r3
	r2 <<= 32
	r2 >>= 32
	r1 <<= r2
	r0 |= r1
	r0 &= 65535
	exit
.Lfunc_end55:
	.size	rotr16, .Lfunc_end55-rotr16
                                        # -- End function
	.globl	rotl8                           # -- Begin function rotl8
	.p2align	3
	.type	rotl8,@function
rotl8:                                  # @rotl8
# %bb.0:
                                        # kill: def $r3 killed $r2
                                        # kill: def $r3 killed $r1
	*(u8 *)(r10 - 1) = r1
	*(u32 *)(r10 - 8) = r2
	r1 = *(u8 *)(r10 - 1)
	r3 = *(u32 *)(r10 - 8)
	r0 = r1
	r0 <<= r3
	r2 = 8
	r2 -= r3
	r2 <<= 32
	r2 >>= 32
	r1 >>= r2
	r0 |= r1
	r0 &= 255
	exit
.Lfunc_end56:
	.size	rotl8, .Lfunc_end56-rotl8
                                        # -- End function
	.globl	rotr8                           # -- Begin function rotr8
	.p2align	3
	.type	rotr8,@function
rotr8:                                  # @rotr8
# %bb.0:
                                        # kill: def $r3 killed $r2
                                        # kill: def $r3 killed $r1
	*(u8 *)(r10 - 1) = r1
	*(u32 *)(r10 - 8) = r2
	r1 = *(u8 *)(r10 - 1)
	r3 = *(u32 *)(r10 - 8)
	r0 = r1
	r0 >>= r3
	r2 = 8
	r2 -= r3
	r2 <<= 32
	r2 >>= 32
	r1 <<= r2
	r0 |= r1
	r0 &= 255
	exit
.Lfunc_end57:
	.size	rotr8, .Lfunc_end57-rotr8
                                        # -- End function
	.globl	bswap_16                        # -- Begin function bswap_16
	.p2align	3
	.type	bswap_16,@function
bswap_16:                               # @bswap_16
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u16 *)(r10 - 2) = r1
	r1 = 255
	*(u16 *)(r10 - 4) = r1
	r1 = *(u16 *)(r10 - 2)
	r2 = *(u16 *)(r10 - 4)
	r3 = r2
	r3 <<= 8
	r0 = r1
	r0 &= r3
	r0 >>= 8
	r1 &= r2
	r1 <<= 8
	r0 |= r1
	exit
.Lfunc_end58:
	.size	bswap_16, .Lfunc_end58-bswap_16
                                        # -- End function
	.globl	bswap_32                        # -- Begin function bswap_32
	.p2align	3
	.type	bswap_32,@function
bswap_32:                               # @bswap_32
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r1 = 255
	*(u32 *)(r10 - 8) = r1
	r1 = *(u32 *)(r10 - 4)
	r2 = *(u32 *)(r10 - 8)
	r3 = r2
	r3 <<= 24
	r0 = r1
	r0 &= r3
	r0 <<= 32
	r0 >>= 32
	r0 >>= 24
	r3 = r2
	r3 <<= 16
	r4 = r1
	r4 &= r3
	r4 <<= 32
	r4 >>= 32
	r4 >>= 8
	r0 |= r4
	r4 = r1
	r4 <<= 8
	r3 &= r4
	r0 |= r3
	r1 &= r2
	r1 <<= 24
	r0 |= r1
	exit
.Lfunc_end59:
	.size	bswap_32, .Lfunc_end59-bswap_32
                                        # -- End function
	.globl	bswap_64                        # -- Begin function bswap_64
	.p2align	3
	.type	bswap_64,@function
bswap_64:                               # @bswap_64
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	r1 = 255
	*(u64 *)(r10 - 16) = r1
	r1 = *(u64 *)(r10 - 8)
	r2 = *(u64 *)(r10 - 16)
	r3 = r2
	r3 <<= 56
	r0 = r1
	r0 &= r3
	r0 >>= 56
	r3 = r2
	r3 <<= 48
	r4 = r1
	r4 &= r3
	r4 >>= 40
	r0 |= r4
	r4 = r2
	r4 <<= 40
	r5 = r1
	r5 &= r4
	r5 >>= 24
	r0 |= r5
	r5 = r2
	r5 <<= 32
	r6 = r1
	r6 &= r5
	r6 >>= 8
	r0 |= r6
	r6 = r1
	r6 <<= 8
	r5 &= r6
	r0 |= r5
	r5 = r1
	r5 <<= 24
	r4 &= r5
	r0 |= r4
	r4 = r1
	r4 <<= 40
	r3 &= r4
	r0 |= r3
	r1 &= r2
	r1 <<= 56
	r0 |= r1
	exit
.Lfunc_end60:
	.size	bswap_64, .Lfunc_end60-bswap_64
                                        # -- End function
	.globl	ffs                             # -- Begin function ffs
	.p2align	3
	.type	ffs,@function
ffs:                                    # @ffs
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 8) = r1
	r1 = 0
	*(u32 *)(r10 - 12) = r1
	goto LBB61_1
LBB61_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 12)
	if r1 > 31 goto LBB61_6
	goto LBB61_2
LBB61_2:                                #   in Loop: Header=BB61_1 Depth=1
	r1 = *(u32 *)(r10 - 8)
	r2 = *(u32 *)(r10 - 12)
	r1 >>= r2
	r1 &= 1
	if r1 == 0 goto LBB61_4
	goto LBB61_3
LBB61_3:
	r1 = *(u32 *)(r10 - 12)
	r1 += 1
	*(u32 *)(r10 - 4) = r1
	goto LBB61_7
LBB61_4:                                #   in Loop: Header=BB61_1 Depth=1
	goto LBB61_5
LBB61_5:                                #   in Loop: Header=BB61_1 Depth=1
	r1 = *(u32 *)(r10 - 12)
	r1 += 1
	*(u32 *)(r10 - 12) = r1
	goto LBB61_1
LBB61_6:
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB61_7
LBB61_7:
	r0 = *(u32 *)(r10 - 4)
	exit
.Lfunc_end61:
	.size	ffs, .Lfunc_end61-ffs
                                        # -- End function
	.globl	libiberty_ffs                   # -- Begin function libiberty_ffs
	.p2align	3
	.type	libiberty_ffs,@function
libiberty_ffs:                          # @libiberty_ffs
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 8) = r1
	r1 = *(u32 *)(r10 - 8)
	if r1 != 0 goto LBB62_2
	goto LBB62_1
LBB62_1:
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB62_7
LBB62_2:
	r1 = 1
	*(u32 *)(r10 - 12) = r1
	goto LBB62_3
LBB62_3:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 8)
	r1 &= 1
	if r1 != 0 goto LBB62_6
	goto LBB62_4
LBB62_4:                                #   in Loop: Header=BB62_3 Depth=1
	r1 = *(u32 *)(r10 - 8)
	r1 <<= 32
	r1 s>>= 32
	r1 >>= 1
	*(u32 *)(r10 - 8) = r1
	goto LBB62_5
LBB62_5:                                #   in Loop: Header=BB62_3 Depth=1
	r1 = *(u32 *)(r10 - 12)
	r1 += 1
	*(u32 *)(r10 - 12) = r1
	goto LBB62_3
LBB62_6:
	r1 = *(u32 *)(r10 - 12)
	*(u32 *)(r10 - 4) = r1
	goto LBB62_7
LBB62_7:
	r0 = *(u32 *)(r10 - 4)
	exit
.Lfunc_end62:
	.size	libiberty_ffs, .Lfunc_end62-libiberty_ffs
                                        # -- End function
	.globl	memxor                          # -- Begin function memxor
	.p2align	3
	.type	memxor,@function
memxor:                                 # @memxor
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	*(u64 *)(r10 - 24) = r3
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 40) = r1
	goto LBB63_1
LBB63_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	if r1 == 0 goto LBB63_4
	goto LBB63_2
LBB63_2:                                #   in Loop: Header=BB63_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r2 = r1
	r2 += 1
	*(u64 *)(r10 - 32) = r2
	r3 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 40)
	r1 = r2
	r1 += 1
	*(u64 *)(r10 - 40) = r1
	r1 = *(u8 *)(r2 + 0)
	r1 ^= r3
	*(u8 *)(r2 + 0) = r1
	goto LBB63_3
LBB63_3:                                #   in Loop: Header=BB63_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 += -1
	*(u64 *)(r10 - 24) = r1
	goto LBB63_1
LBB63_4:
	r0 = *(u64 *)(r10 - 8)
	exit
.Lfunc_end63:
	.size	memxor, .Lfunc_end63-memxor
                                        # -- End function
	.globl	strncat                         # -- Begin function strncat
	.p2align	3
	.type	strncat,@function
strncat:                                # @strncat
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	*(u64 *)(r10 - 24) = r3
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 40) = r1
	call strlen
	r1 = *(u64 *)(r10 - 40)
	r1 += r0
	*(u64 *)(r10 - 32) = r1
	goto LBB64_1
LBB64_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	r2 = 0
	*(u64 *)(r10 - 48) = r2
	if r1 == 0 goto LBB64_3
	goto LBB64_2
LBB64_2:                                #   in Loop: Header=BB64_1 Depth=1
	r1 = *(u64 *)(r10 - 16)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	r2 = *(u64 *)(r10 - 32)
	*(u8 *)(r2 + 0) = r1
	r2 = 0
	*(u64 *)(r10 - 64) = r2
	r2 = 1
	*(u64 *)(r10 - 56) = r2
	if r1 != 0 goto LBB64_10
# %bb.9:                                #   in Loop: Header=BB64_1 Depth=1
	r1 = *(u64 *)(r10 - 64)
	*(u64 *)(r10 - 56) = r1
LBB64_10:                               #   in Loop: Header=BB64_1 Depth=1
	r1 = *(u64 *)(r10 - 56)
	*(u64 *)(r10 - 48) = r1
	goto LBB64_3
LBB64_3:                                #   in Loop: Header=BB64_1 Depth=1
	r1 = *(u64 *)(r10 - 48)
	r1 &= 1
	if r1 == 0 goto LBB64_6
	goto LBB64_4
LBB64_4:                                #   in Loop: Header=BB64_1 Depth=1
	goto LBB64_5
LBB64_5:                                #   in Loop: Header=BB64_1 Depth=1
	r1 = *(u64 *)(r10 - 16)
	r1 += 1
	*(u64 *)(r10 - 16) = r1
	r1 = *(u64 *)(r10 - 32)
	r1 += 1
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 24)
	r1 += -1
	*(u64 *)(r10 - 24) = r1
	goto LBB64_1
LBB64_6:
	r1 = *(u64 *)(r10 - 24)
	if r1 != 0 goto LBB64_8
	goto LBB64_7
LBB64_7:
	r2 = *(u64 *)(r10 - 32)
	r1 = 0
	*(u8 *)(r2 + 0) = r1
	goto LBB64_8
LBB64_8:
	r0 = *(u64 *)(r10 - 8)
	exit
.Lfunc_end64:
	.size	strncat, .Lfunc_end64-strncat
                                        # -- End function
	.globl	strnlen                         # -- Begin function strnlen
	.p2align	3
	.type	strnlen,@function
strnlen:                                # @strnlen
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	r1 = 0
	*(u64 *)(r10 - 24) = r1
	goto LBB65_1
LBB65_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	r2 = *(u64 *)(r10 - 16)
	r3 = 0
	*(u64 *)(r10 - 32) = r3
	if r1 >= r2 goto LBB65_3
	goto LBB65_2
LBB65_2:                                #   in Loop: Header=BB65_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r2 = *(u64 *)(r10 - 24)
	r1 += r2
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	r2 = 0
	*(u64 *)(r10 - 48) = r2
	r2 = 1
	*(u64 *)(r10 - 40) = r2
	if r1 != 0 goto LBB65_8
# %bb.7:                                #   in Loop: Header=BB65_1 Depth=1
	r1 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 40) = r1
LBB65_8:                                #   in Loop: Header=BB65_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 32) = r1
	goto LBB65_3
LBB65_3:                                #   in Loop: Header=BB65_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r1 &= 1
	if r1 == 0 goto LBB65_6
	goto LBB65_4
LBB65_4:                                #   in Loop: Header=BB65_1 Depth=1
	goto LBB65_5
LBB65_5:                                #   in Loop: Header=BB65_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 += 1
	*(u64 *)(r10 - 24) = r1
	goto LBB65_1
LBB65_6:
	r0 = *(u64 *)(r10 - 24)
	exit
.Lfunc_end65:
	.size	strnlen, .Lfunc_end65-strnlen
                                        # -- End function
	.globl	strpbrk                         # -- Begin function strpbrk
	.p2align	3
	.type	strpbrk,@function
strpbrk:                                # @strpbrk
# %bb.0:
	*(u64 *)(r10 - 16) = r1
	*(u64 *)(r10 - 24) = r2
	goto LBB66_1
LBB66_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_3 Depth 2
	r1 = *(u64 *)(r10 - 16)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	if r1 == 0 goto LBB66_8
	goto LBB66_2
LBB66_2:                                #   in Loop: Header=BB66_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 32) = r1
	goto LBB66_3
LBB66_3:                                #   Parent Loop BB66_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	r1 = *(u64 *)(r10 - 32)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	if r1 == 0 goto LBB66_7
	goto LBB66_4
LBB66_4:                                #   in Loop: Header=BB66_3 Depth=2
	r1 = *(u64 *)(r10 - 32)
	r2 = r1
	r2 += 1
	*(u64 *)(r10 - 32) = r2
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	r2 = *(u64 *)(r10 - 16)
	r2 = *(u8 *)(r2 + 0)
	r2 <<= 56
	r2 s>>= 56
	if r1 != r2 goto LBB66_6
	goto LBB66_5
LBB66_5:
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 8) = r1
	goto LBB66_9
LBB66_6:                                #   in Loop: Header=BB66_3 Depth=2
	goto LBB66_3
LBB66_7:                                #   in Loop: Header=BB66_1 Depth=1
	r1 = *(u64 *)(r10 - 16)
	r1 += 1
	*(u64 *)(r10 - 16) = r1
	goto LBB66_1
LBB66_8:
	r1 = 0
	*(u64 *)(r10 - 8) = r1
	goto LBB66_9
LBB66_9:
	r0 = *(u64 *)(r10 - 8)
	exit
.Lfunc_end66:
	.size	strpbrk, .Lfunc_end66-strpbrk
                                        # -- End function
	.globl	strrchr                         # -- Begin function strrchr
	.p2align	3
	.type	strrchr,@function
strrchr:                                # @strrchr
# %bb.0:
                                        # kill: def $r3 killed $r2
	*(u64 *)(r10 - 8) = r1
	*(u32 *)(r10 - 12) = r2
	r1 = 0
	*(u64 *)(r10 - 24) = r1
	goto LBB67_1
LBB67_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 8)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	r1 <<= 32
	r1 >>= 32
	r2 = *(u32 *)(r10 - 12)
	if r1 != r2 goto LBB67_3
	goto LBB67_2
LBB67_2:                                #   in Loop: Header=BB67_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 24) = r1
	goto LBB67_3
LBB67_3:                                #   in Loop: Header=BB67_1 Depth=1
	goto LBB67_4
LBB67_4:                                #   in Loop: Header=BB67_1 Depth=1
	r1 = *(u64 *)(r10 - 8)
	r2 = r1
	r2 += 1
	*(u64 *)(r10 - 8) = r2
	r1 = *(u8 *)(r1 + 0)
	if r1 != 0 goto LBB67_1
	goto LBB67_5
LBB67_5:
	r0 = *(u64 *)(r10 - 24)
	exit
.Lfunc_end67:
	.size	strrchr, .Lfunc_end67-strrchr
                                        # -- End function
	.globl	strstr                          # -- Begin function strstr
	.p2align	3
	.type	strstr,@function
strstr:                                 # @strstr
# %bb.0:
	*(u64 *)(r10 - 16) = r1
	*(u64 *)(r10 - 24) = r2
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 24)
	call strlen
	*(u64 *)(r10 - 40) = r0
	r1 = *(u64 *)(r10 - 40)
	if r1 != 0 goto LBB68_2
	goto LBB68_1
LBB68_1:
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 8) = r1
	goto LBB68_9
LBB68_2:
	goto LBB68_3
LBB68_3:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 32)
	r2 = *(u64 *)(r10 - 24)
	r2 = *(u8 *)(r2 + 0)
	r2 <<= 56
	r2 s>>= 56
	call strchr
	*(u64 *)(r10 - 32) = r0
	if r0 == 0 goto LBB68_8
	goto LBB68_4
LBB68_4:                                #   in Loop: Header=BB68_3 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r2 = *(u64 *)(r10 - 24)
	r3 = *(u64 *)(r10 - 40)
	call strncmp
	r1 = r0
	r1 <<= 32
	r1 >>= 32
	if r1 != 0 goto LBB68_6
	goto LBB68_5
LBB68_5:
	r1 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 8) = r1
	goto LBB68_9
LBB68_6:                                #   in Loop: Header=BB68_3 Depth=1
	goto LBB68_7
LBB68_7:                                #   in Loop: Header=BB68_3 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r1 += 1
	*(u64 *)(r10 - 32) = r1
	goto LBB68_3
LBB68_8:
	r1 = 0
	*(u64 *)(r10 - 8) = r1
	goto LBB68_9
LBB68_9:
	r0 = *(u64 *)(r10 - 8)
	exit
.Lfunc_end68:
	.size	strstr, .Lfunc_end68-strstr
                                        # -- End function
	.globl	memmem                          # -- Begin function memmem
	.p2align	3
	.type	memmem,@function
memmem:                                 # @memmem
# %bb.0:
	*(u64 *)(r10 - 16) = r1
	*(u64 *)(r10 - 24) = r2
	*(u64 *)(r10 - 32) = r3
	*(u64 *)(r10 - 40) = r4
	r1 = *(u64 *)(r10 - 16)
	r2 = *(u64 *)(r10 - 24)
	r1 += r2
	r2 = *(u64 *)(r10 - 40)
	r1 -= r2
	*(u64 *)(r10 - 56) = r1
	r1 = *(u64 *)(r10 - 40)
	if r1 != 0 goto LBB69_2
	goto LBB69_1
LBB69_1:
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 8) = r1
	goto LBB69_12
LBB69_2:
	r1 = *(u64 *)(r10 - 24)
	r2 = *(u64 *)(r10 - 40)
	if r1 >= r2 goto LBB69_4
	goto LBB69_3
LBB69_3:
	r1 = 0
	*(u64 *)(r10 - 8) = r1
	goto LBB69_12
LBB69_4:
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 48) = r1
	goto LBB69_5
LBB69_5:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 48)
	r2 = *(u64 *)(r10 - 56)
	if r1 > r2 goto LBB69_11
	goto LBB69_6
LBB69_6:                                #   in Loop: Header=BB69_5 Depth=1
	r1 = *(u64 *)(r10 - 48)
	r1 = *(u8 *)(r1 + 0)
	r1 <<= 56
	r1 s>>= 56
	r2 = *(u64 *)(r10 - 32)
	r2 = *(u8 *)(r2 + 0)
	r2 <<= 56
	r2 s>>= 56
	if r1 != r2 goto LBB69_9
	goto LBB69_7
LBB69_7:                                #   in Loop: Header=BB69_5 Depth=1
	r1 = *(u64 *)(r10 - 48)
	r1 += 1
	r2 = *(u64 *)(r10 - 32)
	r2 += 1
	r3 = *(u64 *)(r10 - 40)
	r3 += -1
	call memcmp
	r1 = r0
	r1 <<= 32
	r1 >>= 32
	if r1 != 0 goto LBB69_9
	goto LBB69_8
LBB69_8:
	r1 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 8) = r1
	goto LBB69_12
LBB69_9:                                #   in Loop: Header=BB69_5 Depth=1
	goto LBB69_10
LBB69_10:                               #   in Loop: Header=BB69_5 Depth=1
	r1 = *(u64 *)(r10 - 48)
	r1 += 1
	*(u64 *)(r10 - 48) = r1
	goto LBB69_5
LBB69_11:
	r1 = 0
	*(u64 *)(r10 - 8) = r1
	goto LBB69_12
LBB69_12:
	r0 = *(u64 *)(r10 - 8)
	exit
.Lfunc_end69:
	.size	memmem, .Lfunc_end69-memmem
                                        # -- End function
	.globl	__muldi3                        # -- Begin function __muldi3
	.p2align	3
	.type	__muldi3,@function
__muldi3:                               # @__muldi3
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	r1 = 0
	*(u64 *)(r10 - 24) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 32) = r1
	goto LBB70_1
LBB70_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 32)
	if r1 == 0 goto LBB70_5
	goto LBB70_2
LBB70_2:                                #   in Loop: Header=BB70_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r1 &= 1
	if r1 == 0 goto LBB70_4
	goto LBB70_3
LBB70_3:                                #   in Loop: Header=BB70_1 Depth=1
	r2 = *(u64 *)(r10 - 16)
	r1 = *(u64 *)(r10 - 24)
	r1 += r2
	*(u64 *)(r10 - 24) = r1
	goto LBB70_4
LBB70_4:                                #   in Loop: Header=BB70_1 Depth=1
	r1 = *(u64 *)(r10 - 16)
	r1 <<= 1
	*(u64 *)(r10 - 16) = r1
	r1 = *(u64 *)(r10 - 32)
	r1 >>= 1
	*(u64 *)(r10 - 32) = r1
	goto LBB70_1
LBB70_5:
	r0 = *(u64 *)(r10 - 24)
	exit
.Lfunc_end70:
	.size	__muldi3, .Lfunc_end70-__muldi3
                                        # -- End function
	.globl	udivmodsi4                      # -- Begin function udivmodsi4
	.p2align	3
	.type	udivmodsi4,@function
udivmodsi4:                             # @udivmodsi4
# %bb.0:
                                        # kill: def $r4 killed $r2
                                        # kill: def $r4 killed $r1
	*(u32 *)(r10 - 8) = r1
	*(u32 *)(r10 - 12) = r2
	*(u64 *)(r10 - 24) = r3
	r1 = 1
	*(u32 *)(r10 - 28) = r1
	r1 = 0
	*(u32 *)(r10 - 32) = r1
	goto LBB71_1
LBB71_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 12)
	r2 = *(u32 *)(r10 - 8)
	r3 = 0
	*(u64 *)(r10 - 40) = r3
	if r1 >= r2 goto LBB71_4
	goto LBB71_2
LBB71_2:                                #   in Loop: Header=BB71_1 Depth=1
	r1 = *(u32 *)(r10 - 28)
	r2 = 0
	*(u64 *)(r10 - 40) = r2
	if r1 == 0 goto LBB71_4
	goto LBB71_3
LBB71_3:                                #   in Loop: Header=BB71_1 Depth=1
	r1 = *(u32 *)(r10 - 12)
	r2 = 2147483648 ll
	r1 &= r2
	r2 = 0
	*(u64 *)(r10 - 56) = r2
	r2 = 1
	*(u64 *)(r10 - 48) = r2
	if r1 == 0 goto LBB71_16
# %bb.15:                               #   in Loop: Header=BB71_1 Depth=1
	r1 = *(u64 *)(r10 - 56)
	*(u64 *)(r10 - 48) = r1
LBB71_16:                               #   in Loop: Header=BB71_1 Depth=1
	r1 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 40) = r1
	goto LBB71_4
LBB71_4:                                #   in Loop: Header=BB71_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	r1 &= 1
	if r1 == 0 goto LBB71_6
	goto LBB71_5
LBB71_5:                                #   in Loop: Header=BB71_1 Depth=1
	r1 = *(u32 *)(r10 - 12)
	r1 <<= 1
	*(u32 *)(r10 - 12) = r1
	r1 = *(u32 *)(r10 - 28)
	r1 <<= 1
	*(u32 *)(r10 - 28) = r1
	goto LBB71_1
LBB71_6:
	goto LBB71_7
LBB71_7:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 28)
	if r1 == 0 goto LBB71_11
	goto LBB71_8
LBB71_8:                                #   in Loop: Header=BB71_7 Depth=1
	r2 = *(u32 *)(r10 - 8)
	r1 = *(u32 *)(r10 - 12)
	if r1 > r2 goto LBB71_10
	goto LBB71_9
LBB71_9:                                #   in Loop: Header=BB71_7 Depth=1
	r2 = *(u32 *)(r10 - 12)
	r1 = *(u32 *)(r10 - 8)
	r1 -= r2
	*(u32 *)(r10 - 8) = r1
	r2 = *(u32 *)(r10 - 28)
	r1 = *(u32 *)(r10 - 32)
	r1 |= r2
	*(u32 *)(r10 - 32) = r1
	goto LBB71_10
LBB71_10:                               #   in Loop: Header=BB71_7 Depth=1
	r1 = *(u32 *)(r10 - 28)
	r1 >>= 1
	*(u32 *)(r10 - 28) = r1
	r1 = *(u32 *)(r10 - 12)
	r1 >>= 1
	*(u32 *)(r10 - 12) = r1
	goto LBB71_7
LBB71_11:
	r1 = *(u64 *)(r10 - 24)
	if r1 == 0 goto LBB71_13
	goto LBB71_12
LBB71_12:
	r1 = *(u32 *)(r10 - 8)
	*(u32 *)(r10 - 4) = r1
	goto LBB71_14
LBB71_13:
	r1 = *(u32 *)(r10 - 32)
	*(u32 *)(r10 - 4) = r1
	goto LBB71_14
LBB71_14:
	r0 = *(u32 *)(r10 - 4)
	exit
.Lfunc_end71:
	.size	udivmodsi4, .Lfunc_end71-udivmodsi4
                                        # -- End function
	.globl	__clrsbqi2                      # -- Begin function __clrsbqi2
	.p2align	3
	.type	__clrsbqi2,@function
__clrsbqi2:                             # @__clrsbqi2
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u8 *)(r10 - 5) = r1
	r1 = *(u8 *)(r10 - 5)
	r1 <<= 56
	r1 s>>= 56
	if r1 s> -1 goto LBB72_2
	goto LBB72_1
LBB72_1:
	r1 = *(u8 *)(r10 - 5)
	r1 ^= -1
	*(u8 *)(r10 - 5) = r1
	goto LBB72_2
LBB72_2:
	r1 = *(u8 *)(r10 - 5)
	r1 <<= 56
	r1 s>>= 56
	if r1 != 0 goto LBB72_4
	goto LBB72_3
LBB72_3:
	r1 = 7
	*(u32 *)(r10 - 4) = r1
	goto LBB72_5
LBB72_4:
	r1 = *(u8 *)(r10 - 5)
	r1 <<= 56
	r1 s>>= 56
	r2 = r1
	r2 <<= 8
	r1 <<= 7
	r1 &= 2147483520
	r2 |= r1
	r1 = r2
	r1 <<= 32
	r1 >>= 32
	r1 >>= 2
	r2 |= r1
	r1 = r2
	r1 <<= 32
	r1 >>= 32
	r1 >>= 4
	r2 |= r1
	r3 = 4294967040 ll
	r1 = r2
	r1 &= r3
	r1 >>= 8
	r2 |= r1
	r3 = 4294901760 ll
	r1 = r2
	r1 &= r3
	r1 >>= 16
	r2 |= r1
	r2 ^= -1
	r1 = r2
	r1 >>= 1
	r1 &= 1431655765
	r2 -= r1
	r1 = r2
	r1 &= 858993459
	r2 >>= 2
	r2 &= 858993459
	r1 += r2
	r2 = r1
	r2 >>= 4
	r1 += r2
	r1 &= 252645135
	r1 *= 16843009
	r2 = 4278190080 ll
	r1 &= r2
	r1 >>= 24
	*(u32 *)(r10 - 12) = r1
	r1 = *(u32 *)(r10 - 12)
	r1 += -1
	*(u32 *)(r10 - 4) = r1
	goto LBB72_5
LBB72_5:
	r0 = *(u32 *)(r10 - 4)
	exit
.Lfunc_end72:
	.size	__clrsbqi2, .Lfunc_end72-__clrsbqi2
                                        # -- End function
	.globl	__clrsbdi2                      # -- Begin function __clrsbdi2
	.p2align	3
	.type	__clrsbdi2,@function
__clrsbdi2:                             # @__clrsbdi2
# %bb.0:
	*(u64 *)(r10 - 16) = r1
	r1 = *(u64 *)(r10 - 16)
	if r1 s> -1 goto LBB73_2
	goto LBB73_1
LBB73_1:
	r1 = *(u64 *)(r10 - 16)
	r1 ^= -1
	*(u64 *)(r10 - 16) = r1
	goto LBB73_2
LBB73_2:
	r1 = *(u64 *)(r10 - 16)
	if r1 != 0 goto LBB73_4
	goto LBB73_3
LBB73_3:
	r1 = 63
	*(u32 *)(r10 - 4) = r1
	goto LBB73_5
LBB73_4:
	r2 = *(u64 *)(r10 - 16)
	r1 = r2
	r1 >>= 1
	r2 |= r1
	r1 = r2
	r1 >>= 2
	r2 |= r1
	r1 = r2
	r1 >>= 4
	r2 |= r1
	r1 = r2
	r1 >>= 8
	r2 |= r1
	r1 = r2
	r1 >>= 16
	r2 |= r1
	r1 = r2
	r1 >>= 32
	r2 |= r1
	r2 ^= -1
	r1 = r2
	r1 >>= 1
	r3 = 6148914691236517205 ll
	r1 &= r3
	r2 -= r1
	r3 = 3689348814741910323 ll
	r1 = r2
	r1 &= r3
	r2 >>= 2
	r2 &= r3
	r1 += r2
	r2 = r1
	r2 >>= 4
	r1 += r2
	r2 = 1085102592571150095 ll
	r1 &= r2
	r2 = 72340172838076673 ll
	r1 *= r2
	r1 >>= 56
	*(u32 *)(r10 - 20) = r1
	r1 = *(u32 *)(r10 - 20)
	r1 += -1
	*(u32 *)(r10 - 4) = r1
	goto LBB73_5
LBB73_5:
	r0 = *(u32 *)(r10 - 4)
	exit
.Lfunc_end73:
	.size	__clrsbdi2, .Lfunc_end73-__clrsbdi2
                                        # -- End function
	.globl	__mulsi3                        # -- Begin function __mulsi3
	.p2align	3
	.type	__mulsi3,@function
__mulsi3:                               # @__mulsi3
# %bb.0:
                                        # kill: def $r3 killed $r2
                                        # kill: def $r3 killed $r1
	*(u32 *)(r10 - 4) = r1
	*(u32 *)(r10 - 8) = r2
	r1 = 0
	*(u32 *)(r10 - 12) = r1
	goto LBB74_1
LBB74_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 4)
	if r1 == 0 goto LBB74_5
	goto LBB74_2
LBB74_2:                                #   in Loop: Header=BB74_1 Depth=1
	r1 = *(u32 *)(r10 - 4)
	r1 &= 1
	if r1 == 0 goto LBB74_4
	goto LBB74_3
LBB74_3:                                #   in Loop: Header=BB74_1 Depth=1
	r2 = *(u32 *)(r10 - 8)
	r1 = *(u32 *)(r10 - 12)
	r1 += r2
	*(u32 *)(r10 - 12) = r1
	goto LBB74_4
LBB74_4:                                #   in Loop: Header=BB74_1 Depth=1
	r1 = *(u32 *)(r10 - 4)
	r1 >>= 1
	*(u32 *)(r10 - 4) = r1
	r1 = *(u32 *)(r10 - 8)
	r1 <<= 1
	*(u32 *)(r10 - 8) = r1
	goto LBB74_1
LBB74_5:
	r0 = *(u32 *)(r10 - 12)
	exit
.Lfunc_end74:
	.size	__mulsi3, .Lfunc_end74-__mulsi3
                                        # -- End function
	.globl	__cmovd                         # -- Begin function __cmovd
	.p2align	3
	.type	__cmovd,@function
__cmovd:                                # @__cmovd
# %bb.0:
                                        # kill: def $r4 killed $r3
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	*(u32 *)(r10 - 20) = r3
	r1 = *(u32 *)(r10 - 20)
	r1 >>= 3
	*(u32 *)(r10 - 28) = r1
	r1 = *(u32 *)(r10 - 20)
	r2 = 4294967288 ll
	r1 &= r2
	*(u32 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 40) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 48) = r1
	r2 = *(u64 *)(r10 - 40)
	r1 = *(u64 *)(r10 - 48)
	if r1 > r2 goto LBB75_2
	goto LBB75_1
LBB75_1:
	r2 = *(u64 *)(r10 - 40)
	r1 = *(u64 *)(r10 - 48)
	r3 = *(u32 *)(r10 - 20)
	r1 += r3
	if r1 >= r2 goto LBB75_10
	goto LBB75_2
LBB75_2:
	r1 = 0
	*(u32 *)(r10 - 24) = r1
	goto LBB75_3
LBB75_3:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 24)
	r2 = *(u32 *)(r10 - 28)
	if r1 >= r2 goto LBB75_6
	goto LBB75_4
LBB75_4:                                #   in Loop: Header=BB75_3 Depth=1
	r1 = *(u64 *)(r10 - 16)
	r3 = *(u32 *)(r10 - 24)
	r3 <<= 3
	r1 += r3
	r1 = *(u64 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 8)
	r2 += r3
	*(u64 *)(r2 + 0) = r1
	goto LBB75_5
LBB75_5:                                #   in Loop: Header=BB75_3 Depth=1
	r1 = *(u32 *)(r10 - 24)
	r1 += 1
	*(u32 *)(r10 - 24) = r1
	goto LBB75_3
LBB75_6:
	goto LBB75_7
LBB75_7:                                # =>This Inner Loop Header: Depth=1
	r2 = *(u32 *)(r10 - 20)
	r1 = *(u32 *)(r10 - 32)
	if r1 >= r2 goto LBB75_9
	goto LBB75_8
LBB75_8:                                #   in Loop: Header=BB75_7 Depth=1
	r1 = *(u64 *)(r10 - 48)
	r3 = *(u32 *)(r10 - 32)
	r1 += r3
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 40)
	r2 += r3
	*(u8 *)(r2 + 0) = r1
	r1 = *(u32 *)(r10 - 32)
	r1 += 1
	*(u32 *)(r10 - 32) = r1
	goto LBB75_7
LBB75_9:
	goto LBB75_14
LBB75_10:
	goto LBB75_11
LBB75_11:                               # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 20)
	r2 = r1
	r2 += -1
	*(u32 *)(r10 - 20) = r2
	if r1 == 0 goto LBB75_13
	goto LBB75_12
LBB75_12:                               #   in Loop: Header=BB75_11 Depth=1
	r1 = *(u64 *)(r10 - 48)
	r3 = *(u32 *)(r10 - 20)
	r1 += r3
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 40)
	r2 += r3
	*(u8 *)(r2 + 0) = r1
	goto LBB75_11
LBB75_13:
	goto LBB75_14
LBB75_14:
	exit
.Lfunc_end75:
	.size	__cmovd, .Lfunc_end75-__cmovd
                                        # -- End function
	.globl	__cmovh                         # -- Begin function __cmovh
	.p2align	3
	.type	__cmovh,@function
__cmovh:                                # @__cmovh
# %bb.0:
                                        # kill: def $r4 killed $r3
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	*(u32 *)(r10 - 20) = r3
	r1 = *(u32 *)(r10 - 20)
	r1 >>= 1
	*(u32 *)(r10 - 28) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 40) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 48) = r1
	r2 = *(u64 *)(r10 - 40)
	r1 = *(u64 *)(r10 - 48)
	if r1 > r2 goto LBB76_2
	goto LBB76_1
LBB76_1:
	r2 = *(u64 *)(r10 - 40)
	r1 = *(u64 *)(r10 - 48)
	r3 = *(u32 *)(r10 - 20)
	r1 += r3
	if r1 >= r2 goto LBB76_9
	goto LBB76_2
LBB76_2:
	r1 = 0
	*(u32 *)(r10 - 24) = r1
	goto LBB76_3
LBB76_3:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 24)
	r2 = *(u32 *)(r10 - 28)
	if r1 >= r2 goto LBB76_6
	goto LBB76_4
LBB76_4:                                #   in Loop: Header=BB76_3 Depth=1
	r1 = *(u64 *)(r10 - 16)
	r3 = *(u32 *)(r10 - 24)
	r3 <<= 1
	r1 += r3
	r1 = *(u16 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 8)
	r2 += r3
	*(u16 *)(r2 + 0) = r1
	goto LBB76_5
LBB76_5:                                #   in Loop: Header=BB76_3 Depth=1
	r1 = *(u32 *)(r10 - 24)
	r1 += 1
	*(u32 *)(r10 - 24) = r1
	goto LBB76_3
LBB76_6:
	r1 = *(u32 *)(r10 - 20)
	r1 &= 1
	if r1 == 0 goto LBB76_8
	goto LBB76_7
LBB76_7:
	r1 = *(u64 *)(r10 - 48)
	r3 = *(u32 *)(r10 - 20)
	r3 += -1
	r3 <<= 32
	r3 >>= 32
	r1 += r3
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 40)
	r2 += r3
	*(u8 *)(r2 + 0) = r1
	goto LBB76_8
LBB76_8:
	goto LBB76_13
LBB76_9:
	goto LBB76_10
LBB76_10:                               # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 20)
	r2 = r1
	r2 += -1
	*(u32 *)(r10 - 20) = r2
	if r1 == 0 goto LBB76_12
	goto LBB76_11
LBB76_11:                               #   in Loop: Header=BB76_10 Depth=1
	r1 = *(u64 *)(r10 - 48)
	r3 = *(u32 *)(r10 - 20)
	r1 += r3
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 40)
	r2 += r3
	*(u8 *)(r2 + 0) = r1
	goto LBB76_10
LBB76_12:
	goto LBB76_13
LBB76_13:
	exit
.Lfunc_end76:
	.size	__cmovh, .Lfunc_end76-__cmovh
                                        # -- End function
	.globl	__cmovw                         # -- Begin function __cmovw
	.p2align	3
	.type	__cmovw,@function
__cmovw:                                # @__cmovw
# %bb.0:
                                        # kill: def $r4 killed $r3
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	*(u32 *)(r10 - 20) = r3
	r1 = *(u32 *)(r10 - 20)
	r1 >>= 2
	*(u32 *)(r10 - 28) = r1
	r1 = *(u32 *)(r10 - 20)
	r2 = 4294967292 ll
	r1 &= r2
	*(u32 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 40) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 48) = r1
	r2 = *(u64 *)(r10 - 40)
	r1 = *(u64 *)(r10 - 48)
	if r1 > r2 goto LBB77_2
	goto LBB77_1
LBB77_1:
	r2 = *(u64 *)(r10 - 40)
	r1 = *(u64 *)(r10 - 48)
	r3 = *(u32 *)(r10 - 20)
	r1 += r3
	if r1 >= r2 goto LBB77_10
	goto LBB77_2
LBB77_2:
	r1 = 0
	*(u32 *)(r10 - 24) = r1
	goto LBB77_3
LBB77_3:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 24)
	r2 = *(u32 *)(r10 - 28)
	if r1 >= r2 goto LBB77_6
	goto LBB77_4
LBB77_4:                                #   in Loop: Header=BB77_3 Depth=1
	r1 = *(u64 *)(r10 - 16)
	r3 = *(u32 *)(r10 - 24)
	r3 <<= 2
	r1 += r3
	r1 = *(u32 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 8)
	r2 += r3
	*(u32 *)(r2 + 0) = r1
	goto LBB77_5
LBB77_5:                                #   in Loop: Header=BB77_3 Depth=1
	r1 = *(u32 *)(r10 - 24)
	r1 += 1
	*(u32 *)(r10 - 24) = r1
	goto LBB77_3
LBB77_6:
	goto LBB77_7
LBB77_7:                                # =>This Inner Loop Header: Depth=1
	r2 = *(u32 *)(r10 - 20)
	r1 = *(u32 *)(r10 - 32)
	if r1 >= r2 goto LBB77_9
	goto LBB77_8
LBB77_8:                                #   in Loop: Header=BB77_7 Depth=1
	r1 = *(u64 *)(r10 - 48)
	r3 = *(u32 *)(r10 - 32)
	r1 += r3
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 40)
	r2 += r3
	*(u8 *)(r2 + 0) = r1
	r1 = *(u32 *)(r10 - 32)
	r1 += 1
	*(u32 *)(r10 - 32) = r1
	goto LBB77_7
LBB77_9:
	goto LBB77_14
LBB77_10:
	goto LBB77_11
LBB77_11:                               # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 20)
	r2 = r1
	r2 += -1
	*(u32 *)(r10 - 20) = r2
	if r1 == 0 goto LBB77_13
	goto LBB77_12
LBB77_12:                               #   in Loop: Header=BB77_11 Depth=1
	r1 = *(u64 *)(r10 - 48)
	r3 = *(u32 *)(r10 - 20)
	r1 += r3
	r1 = *(u8 *)(r1 + 0)
	r2 = *(u64 *)(r10 - 40)
	r2 += r3
	*(u8 *)(r2 + 0) = r1
	goto LBB77_11
LBB77_13:
	goto LBB77_14
LBB77_14:
	exit
.Lfunc_end77:
	.size	__cmovw, .Lfunc_end77-__cmovw
                                        # -- End function
	.globl	__umodi                         # -- Begin function __umodi
	.p2align	3
	.type	__umodi,@function
__umodi:                                # @__umodi
# %bb.0:
                                        # kill: def $r3 killed $r2
                                        # kill: def $r3 killed $r1
	*(u32 *)(r10 - 4) = r1
	*(u32 *)(r10 - 8) = r2
	r0 = *(u32 *)(r10 - 4)
	r1 = *(u32 *)(r10 - 8)
	r0 %= r1
	exit
.Lfunc_end78:
	.size	__umodi, .Lfunc_end78-__umodi
                                        # -- End function
	.globl	__clzhi2                        # -- Begin function __clzhi2
	.p2align	3
	.type	__clzhi2,@function
__clzhi2:                               # @__clzhi2
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u16 *)(r10 - 2) = r1
	r1 = 0
	*(u32 *)(r10 - 8) = r1
	goto LBB79_1
LBB79_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 8)
	r1 <<= 32
	r1 s>>= 32
	if r1 s> 15 goto LBB79_6
	goto LBB79_2
LBB79_2:                                #   in Loop: Header=BB79_1 Depth=1
	r1 = *(u16 *)(r10 - 2)
	r3 = *(u32 *)(r10 - 8)
	r2 = 15
	r2 -= r3
	r2 <<= 32
	r2 >>= 32
	r1 >>= r2
	r1 &= 1
	if r1 == 0 goto LBB79_4
	goto LBB79_3
LBB79_3:
	goto LBB79_6
LBB79_4:                                #   in Loop: Header=BB79_1 Depth=1
	goto LBB79_5
LBB79_5:                                #   in Loop: Header=BB79_1 Depth=1
	r1 = *(u32 *)(r10 - 8)
	r1 += 1
	*(u32 *)(r10 - 8) = r1
	goto LBB79_1
LBB79_6:
	r0 = *(u32 *)(r10 - 8)
	exit
.Lfunc_end79:
	.size	__clzhi2, .Lfunc_end79-__clzhi2
                                        # -- End function
	.globl	__ctzhi2                        # -- Begin function __ctzhi2
	.p2align	3
	.type	__ctzhi2,@function
__ctzhi2:                               # @__ctzhi2
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u16 *)(r10 - 2) = r1
	r1 = 0
	*(u32 *)(r10 - 8) = r1
	goto LBB80_1
LBB80_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 8)
	r1 <<= 32
	r1 s>>= 32
	if r1 s> 15 goto LBB80_6
	goto LBB80_2
LBB80_2:                                #   in Loop: Header=BB80_1 Depth=1
	r1 = *(u16 *)(r10 - 2)
	r2 = *(u32 *)(r10 - 8)
	r1 >>= r2
	r1 &= 1
	if r1 == 0 goto LBB80_4
	goto LBB80_3
LBB80_3:
	goto LBB80_6
LBB80_4:                                #   in Loop: Header=BB80_1 Depth=1
	goto LBB80_5
LBB80_5:                                #   in Loop: Header=BB80_1 Depth=1
	r1 = *(u32 *)(r10 - 8)
	r1 += 1
	*(u32 *)(r10 - 8) = r1
	goto LBB80_1
LBB80_6:
	r0 = *(u32 *)(r10 - 8)
	exit
.Lfunc_end80:
	.size	__ctzhi2, .Lfunc_end80-__ctzhi2
                                        # -- End function
	.globl	__parityhi2                     # -- Begin function __parityhi2
	.p2align	3
	.type	__parityhi2,@function
__parityhi2:                            # @__parityhi2
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u16 *)(r10 - 2) = r1
	r1 = 0
	*(u32 *)(r10 - 12) = r1
	*(u32 *)(r10 - 8) = r1
	goto LBB81_1
LBB81_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 8)
	r1 <<= 32
	r1 s>>= 32
	if r1 s> 15 goto LBB81_6
	goto LBB81_2
LBB81_2:                                #   in Loop: Header=BB81_1 Depth=1
	r1 = *(u16 *)(r10 - 2)
	r2 = *(u32 *)(r10 - 8)
	r1 >>= r2
	r1 &= 1
	if r1 == 0 goto LBB81_4
	goto LBB81_3
LBB81_3:                                #   in Loop: Header=BB81_1 Depth=1
	r1 = *(u32 *)(r10 - 12)
	r1 += 1
	*(u32 *)(r10 - 12) = r1
	goto LBB81_4
LBB81_4:                                #   in Loop: Header=BB81_1 Depth=1
	goto LBB81_5
LBB81_5:                                #   in Loop: Header=BB81_1 Depth=1
	r1 = *(u32 *)(r10 - 8)
	r1 += 1
	*(u32 *)(r10 - 8) = r1
	goto LBB81_1
LBB81_6:
	r0 = *(u32 *)(r10 - 12)
	r0 &= 1
	exit
.Lfunc_end81:
	.size	__parityhi2, .Lfunc_end81-__parityhi2
                                        # -- End function
	.globl	__popcounthi2                   # -- Begin function __popcounthi2
	.p2align	3
	.type	__popcounthi2,@function
__popcounthi2:                          # @__popcounthi2
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u16 *)(r10 - 2) = r1
	r1 = 0
	*(u32 *)(r10 - 12) = r1
	*(u32 *)(r10 - 8) = r1
	goto LBB82_1
LBB82_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 8)
	r1 <<= 32
	r1 s>>= 32
	if r1 s> 15 goto LBB82_6
	goto LBB82_2
LBB82_2:                                #   in Loop: Header=BB82_1 Depth=1
	r1 = *(u16 *)(r10 - 2)
	r2 = *(u32 *)(r10 - 8)
	r1 >>= r2
	r1 &= 1
	if r1 == 0 goto LBB82_4
	goto LBB82_3
LBB82_3:                                #   in Loop: Header=BB82_1 Depth=1
	r1 = *(u32 *)(r10 - 12)
	r1 += 1
	*(u32 *)(r10 - 12) = r1
	goto LBB82_4
LBB82_4:                                #   in Loop: Header=BB82_1 Depth=1
	goto LBB82_5
LBB82_5:                                #   in Loop: Header=BB82_1 Depth=1
	r1 = *(u32 *)(r10 - 8)
	r1 += 1
	*(u32 *)(r10 - 8) = r1
	goto LBB82_1
LBB82_6:
	r0 = *(u32 *)(r10 - 12)
	exit
.Lfunc_end82:
	.size	__popcounthi2, .Lfunc_end82-__popcounthi2
                                        # -- End function
	.globl	__mulsi3_iq2000                 # -- Begin function __mulsi3_iq2000
	.p2align	3
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        # @__mulsi3_iq2000
# %bb.0:
                                        # kill: def $r3 killed $r2
                                        # kill: def $r3 killed $r1
	*(u32 *)(r10 - 4) = r1
	*(u32 *)(r10 - 8) = r2
	r1 = 0
	*(u32 *)(r10 - 12) = r1
	goto LBB83_1
LBB83_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 4)
	if r1 == 0 goto LBB83_5
	goto LBB83_2
LBB83_2:                                #   in Loop: Header=BB83_1 Depth=1
	r1 = *(u32 *)(r10 - 4)
	r1 &= 1
	if r1 == 0 goto LBB83_4
	goto LBB83_3
LBB83_3:                                #   in Loop: Header=BB83_1 Depth=1
	r2 = *(u32 *)(r10 - 8)
	r1 = *(u32 *)(r10 - 12)
	r1 += r2
	*(u32 *)(r10 - 12) = r1
	goto LBB83_4
LBB83_4:                                #   in Loop: Header=BB83_1 Depth=1
	r1 = *(u32 *)(r10 - 4)
	r1 >>= 1
	*(u32 *)(r10 - 4) = r1
	r1 = *(u32 *)(r10 - 8)
	r1 <<= 1
	*(u32 *)(r10 - 8) = r1
	goto LBB83_1
LBB83_5:
	r0 = *(u32 *)(r10 - 12)
	exit
.Lfunc_end83:
	.size	__mulsi3_iq2000, .Lfunc_end83-__mulsi3_iq2000
                                        # -- End function
	.globl	__mulsi3_lm32                   # -- Begin function __mulsi3_lm32
	.p2align	3
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          # @__mulsi3_lm32
# %bb.0:
                                        # kill: def $r3 killed $r2
                                        # kill: def $r3 killed $r1
	*(u32 *)(r10 - 8) = r1
	*(u32 *)(r10 - 12) = r2
	r1 = 0
	*(u32 *)(r10 - 16) = r1
	r1 = *(u32 *)(r10 - 8)
	if r1 != 0 goto LBB84_2
	goto LBB84_1
LBB84_1:
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB84_8
LBB84_2:
	goto LBB84_3
LBB84_3:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 12)
	if r1 == 0 goto LBB84_7
	goto LBB84_4
LBB84_4:                                #   in Loop: Header=BB84_3 Depth=1
	r1 = *(u32 *)(r10 - 12)
	r1 &= 1
	if r1 == 0 goto LBB84_6
	goto LBB84_5
LBB84_5:                                #   in Loop: Header=BB84_3 Depth=1
	r2 = *(u32 *)(r10 - 8)
	r1 = *(u32 *)(r10 - 16)
	r1 += r2
	*(u32 *)(r10 - 16) = r1
	goto LBB84_6
LBB84_6:                                #   in Loop: Header=BB84_3 Depth=1
	r1 = *(u32 *)(r10 - 8)
	r1 <<= 1
	*(u32 *)(r10 - 8) = r1
	r1 = *(u32 *)(r10 - 12)
	r1 >>= 1
	*(u32 *)(r10 - 12) = r1
	goto LBB84_3
LBB84_7:
	r1 = *(u32 *)(r10 - 16)
	*(u32 *)(r10 - 4) = r1
	goto LBB84_8
LBB84_8:
	r0 = *(u32 *)(r10 - 4)
	exit
.Lfunc_end84:
	.size	__mulsi3_lm32, .Lfunc_end84-__mulsi3_lm32
                                        # -- End function
	.globl	__udivmodsi4                    # -- Begin function __udivmodsi4
	.p2align	3
	.type	__udivmodsi4,@function
__udivmodsi4:                           # @__udivmodsi4
# %bb.0:
                                        # kill: def $r4 killed $r3
                                        # kill: def $r4 killed $r2
                                        # kill: def $r4 killed $r1
	*(u32 *)(r10 - 8) = r1
	*(u32 *)(r10 - 12) = r2
	*(u32 *)(r10 - 16) = r3
	r1 = 1
	*(u32 *)(r10 - 20) = r1
	r1 = 0
	*(u32 *)(r10 - 24) = r1
	goto LBB85_1
LBB85_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 12)
	r2 = *(u32 *)(r10 - 8)
	r3 = 0
	*(u64 *)(r10 - 32) = r3
	if r1 >= r2 goto LBB85_4
	goto LBB85_2
LBB85_2:                                #   in Loop: Header=BB85_1 Depth=1
	r1 = *(u32 *)(r10 - 20)
	r2 = 0
	*(u64 *)(r10 - 32) = r2
	if r1 == 0 goto LBB85_4
	goto LBB85_3
LBB85_3:                                #   in Loop: Header=BB85_1 Depth=1
	r1 = *(u32 *)(r10 - 12)
	r2 = 2147483648 ll
	r1 &= r2
	r2 = 0
	*(u64 *)(r10 - 48) = r2
	r2 = 1
	*(u64 *)(r10 - 40) = r2
	if r1 == 0 goto LBB85_16
# %bb.15:                               #   in Loop: Header=BB85_1 Depth=1
	r1 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 40) = r1
LBB85_16:                               #   in Loop: Header=BB85_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 32) = r1
	goto LBB85_4
LBB85_4:                                #   in Loop: Header=BB85_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r1 &= 1
	if r1 == 0 goto LBB85_6
	goto LBB85_5
LBB85_5:                                #   in Loop: Header=BB85_1 Depth=1
	r1 = *(u32 *)(r10 - 12)
	r1 <<= 1
	*(u32 *)(r10 - 12) = r1
	r1 = *(u32 *)(r10 - 20)
	r1 <<= 1
	*(u32 *)(r10 - 20) = r1
	goto LBB85_1
LBB85_6:
	goto LBB85_7
LBB85_7:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 20)
	if r1 == 0 goto LBB85_11
	goto LBB85_8
LBB85_8:                                #   in Loop: Header=BB85_7 Depth=1
	r2 = *(u32 *)(r10 - 8)
	r1 = *(u32 *)(r10 - 12)
	if r1 > r2 goto LBB85_10
	goto LBB85_9
LBB85_9:                                #   in Loop: Header=BB85_7 Depth=1
	r2 = *(u32 *)(r10 - 12)
	r1 = *(u32 *)(r10 - 8)
	r1 -= r2
	*(u32 *)(r10 - 8) = r1
	r2 = *(u32 *)(r10 - 20)
	r1 = *(u32 *)(r10 - 24)
	r1 |= r2
	*(u32 *)(r10 - 24) = r1
	goto LBB85_10
LBB85_10:                               #   in Loop: Header=BB85_7 Depth=1
	r1 = *(u32 *)(r10 - 20)
	r1 >>= 1
	*(u32 *)(r10 - 20) = r1
	r1 = *(u32 *)(r10 - 12)
	r1 >>= 1
	*(u32 *)(r10 - 12) = r1
	goto LBB85_7
LBB85_11:
	r1 = *(u32 *)(r10 - 16)
	if r1 == 0 goto LBB85_13
	goto LBB85_12
LBB85_12:
	r1 = *(u32 *)(r10 - 8)
	*(u32 *)(r10 - 4) = r1
	goto LBB85_14
LBB85_13:
	r1 = *(u32 *)(r10 - 24)
	*(u32 *)(r10 - 4) = r1
	goto LBB85_14
LBB85_14:
	r0 = *(u32 *)(r10 - 4)
	exit
.Lfunc_end85:
	.size	__udivmodsi4, .Lfunc_end85-__udivmodsi4
                                        # -- End function
	.globl	__mspabi_mpysll                 # -- Begin function __mspabi_mpysll
	.p2align	3
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        # @__mspabi_mpysll
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	r0 = *(u64 *)(r10 - 8)
	r1 = *(u64 *)(r10 - 16)
	r0 *= r1
	exit
.Lfunc_end86:
	.size	__mspabi_mpysll, .Lfunc_end86-__mspabi_mpysll
                                        # -- End function
	.globl	__mspabi_mpyull                 # -- Begin function __mspabi_mpyull
	.p2align	3
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        # @__mspabi_mpyull
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	r0 = *(u64 *)(r10 - 8)
	r1 = *(u64 *)(r10 - 16)
	r0 *= r1
	exit
.Lfunc_end87:
	.size	__mspabi_mpyull, .Lfunc_end87-__mspabi_mpyull
                                        # -- End function
	.globl	__mulhi3                        # -- Begin function __mulhi3
	.p2align	3
	.type	__mulhi3,@function
__mulhi3:                               # @__mulhi3
# %bb.0:
                                        # kill: def $r3 killed $r2
                                        # kill: def $r3 killed $r1
	*(u32 *)(r10 - 4) = r1
	*(u32 *)(r10 - 8) = r2
	r1 = 0
	*(u32 *)(r10 - 16) = r1
	*(u32 *)(r10 - 20) = r1
	r1 = *(u32 *)(r10 - 8)
	r1 <<= 32
	r1 s>>= 32
	if r1 s> -1 goto LBB88_2
	goto LBB88_1
LBB88_1:
	r1 = *(u32 *)(r10 - 8)
	r1 = -r1
	*(u32 *)(r10 - 8) = r1
	r1 = 1
	*(u32 *)(r10 - 16) = r1
	goto LBB88_2
LBB88_2:
	r1 = 0
	*(u8 *)(r10 - 9) = r1
	goto LBB88_3
LBB88_3:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u32 *)(r10 - 8)
	r2 = 0
	*(u64 *)(r10 - 32) = r2
	if r1 == 0 goto LBB88_5
	goto LBB88_4
LBB88_4:                                #   in Loop: Header=BB88_3 Depth=1
	r2 = *(u8 *)(r10 - 9)
	r2 <<= 56
	r2 s>>= 56
	r1 = 0
	*(u64 *)(r10 - 48) = r1
	r3 = 1
	r1 = 32
	*(u64 *)(r10 - 40) = r3
	if r1 > r2 goto LBB88_15
# %bb.14:                               #   in Loop: Header=BB88_3 Depth=1
	r1 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 40) = r1
LBB88_15:                               #   in Loop: Header=BB88_3 Depth=1
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 32) = r1
	goto LBB88_5
LBB88_5:                                #   in Loop: Header=BB88_3 Depth=1
	r1 = *(u64 *)(r10 - 32)
	r1 &= 1
	if r1 == 0 goto LBB88_10
	goto LBB88_6
LBB88_6:                                #   in Loop: Header=BB88_3 Depth=1
	r1 = *(u32 *)(r10 - 8)
	r1 &= 1
	if r1 == 0 goto LBB88_8
	goto LBB88_7
LBB88_7:                                #   in Loop: Header=BB88_3 Depth=1
	r2 = *(u32 *)(r10 - 4)
	r1 = *(u32 *)(r10 - 20)
	r1 += r2
	*(u32 *)(r10 - 20) = r1
	goto LBB88_8
LBB88_8:                                #   in Loop: Header=BB88_3 Depth=1
	r1 = *(u32 *)(r10 - 4)
	r1 <<= 1
	*(u32 *)(r10 - 4) = r1
	r1 = *(u32 *)(r10 - 8)
	r1 <<= 32
	r1 s>>= 32
	r1 >>= 1
	*(u32 *)(r10 - 8) = r1
	goto LBB88_9
LBB88_9:                                #   in Loop: Header=BB88_3 Depth=1
	r1 = *(u8 *)(r10 - 9)
	r1 += 1
	*(u8 *)(r10 - 9) = r1
	goto LBB88_3
LBB88_10:
	r1 = *(u32 *)(r10 - 16)
	if r1 == 0 goto LBB88_12
	goto LBB88_11
LBB88_11:
	r1 = *(u32 *)(r10 - 20)
	r1 = -r1
	*(u64 *)(r10 - 56) = r1
	goto LBB88_13
LBB88_12:
	r1 = *(u32 *)(r10 - 20)
	*(u64 *)(r10 - 56) = r1
	goto LBB88_13
LBB88_13:
	r0 = *(u64 *)(r10 - 56)
	exit
.Lfunc_end88:
	.size	__mulhi3, .Lfunc_end88-__mulhi3
                                        # -- End function
	.globl	__divsi3                        # -- Begin function __divsi3
	.p2align	3
	.type	__divsi3,@function
__divsi3:                               # @__divsi3
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	r1 = 0
	*(u32 *)(r10 - 20) = r1
	r1 = *(u64 *)(r10 - 8)
	if r1 s> -1 goto LBB89_2
	goto LBB89_1
LBB89_1:
	r1 = *(u64 *)(r10 - 8)
	r1 = -r1
	*(u64 *)(r10 - 8) = r1
	r1 = *(u32 *)(r10 - 20)
	r2 = 0
	*(u64 *)(r10 - 48) = r2
	r2 = 1
	*(u64 *)(r10 - 40) = r2
	if r1 == 0 goto LBB89_8
# %bb.7:
	r1 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 40) = r1
LBB89_8:
	r1 = *(u64 *)(r10 - 40)
	*(u32 *)(r10 - 20) = r1
	goto LBB89_2
LBB89_2:
	r1 = *(u64 *)(r10 - 16)
	if r1 s> -1 goto LBB89_4
	goto LBB89_3
LBB89_3:
	r1 = *(u64 *)(r10 - 16)
	r1 = -r1
	*(u64 *)(r10 - 16) = r1
	r1 = *(u32 *)(r10 - 20)
	r2 = 0
	*(u64 *)(r10 - 64) = r2
	r2 = 1
	*(u64 *)(r10 - 56) = r2
	if r1 == 0 goto LBB89_10
# %bb.9:
	r1 = *(u64 *)(r10 - 64)
	*(u64 *)(r10 - 56) = r1
LBB89_10:
	r1 = *(u64 *)(r10 - 56)
	*(u32 *)(r10 - 20) = r1
	goto LBB89_4
LBB89_4:
	r1 = *(u64 *)(r10 - 8)
	r2 = *(u64 *)(r10 - 16)
	r3 = 0
	call __udivmodsi4
	r1 = r0
	r1 <<= 32
	r1 >>= 32
	*(u64 *)(r10 - 32) = r1
	r1 = *(u32 *)(r10 - 20)
	if r1 == 0 goto LBB89_6
	goto LBB89_5
LBB89_5:
	r1 = *(u64 *)(r10 - 32)
	r1 = -r1
	*(u64 *)(r10 - 32) = r1
	goto LBB89_6
LBB89_6:
	r0 = *(u64 *)(r10 - 32)
	exit
.Lfunc_end89:
	.size	__divsi3, .Lfunc_end89-__divsi3
                                        # -- End function
	.globl	__modsi3                        # -- Begin function __modsi3
	.p2align	3
	.type	__modsi3,@function
__modsi3:                               # @__modsi3
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	r1 = 0
	*(u32 *)(r10 - 20) = r1
	r1 = *(u64 *)(r10 - 8)
	if r1 s> -1 goto LBB90_2
	goto LBB90_1
LBB90_1:
	r1 = *(u64 *)(r10 - 8)
	r1 = -r1
	*(u64 *)(r10 - 8) = r1
	r1 = 1
	*(u32 *)(r10 - 20) = r1
	goto LBB90_2
LBB90_2:
	r1 = *(u64 *)(r10 - 16)
	if r1 s> -1 goto LBB90_4
	goto LBB90_3
LBB90_3:
	r1 = *(u64 *)(r10 - 16)
	r1 = -r1
	*(u64 *)(r10 - 16) = r1
	goto LBB90_4
LBB90_4:
	r1 = *(u64 *)(r10 - 8)
	r2 = *(u64 *)(r10 - 16)
	r3 = 1
	call __udivmodsi4
	r1 = r0
	r1 <<= 32
	r1 >>= 32
	*(u64 *)(r10 - 32) = r1
	r1 = *(u32 *)(r10 - 20)
	if r1 == 0 goto LBB90_6
	goto LBB90_5
LBB90_5:
	r1 = *(u64 *)(r10 - 32)
	r1 = -r1
	*(u64 *)(r10 - 32) = r1
	goto LBB90_6
LBB90_6:
	r0 = *(u64 *)(r10 - 32)
	exit
.Lfunc_end90:
	.size	__modsi3, .Lfunc_end90-__modsi3
                                        # -- End function
	.globl	__udivmodhi4                    # -- Begin function __udivmodhi4
	.p2align	3
	.type	__udivmodhi4,@function
__udivmodhi4:                           # @__udivmodhi4
# %bb.0:
                                        # kill: def $r4 killed $r3
                                        # kill: def $r4 killed $r2
                                        # kill: def $r4 killed $r1
	*(u16 *)(r10 - 4) = r1
	*(u16 *)(r10 - 6) = r2
	*(u32 *)(r10 - 12) = r3
	r1 = 1
	*(u16 *)(r10 - 14) = r1
	r1 = 0
	*(u16 *)(r10 - 16) = r1
	goto LBB91_1
LBB91_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u16 *)(r10 - 6)
	r2 = *(u16 *)(r10 - 4)
	r3 = 0
	*(u64 *)(r10 - 24) = r3
	if r1 s>= r2 goto LBB91_4
	goto LBB91_2
LBB91_2:                                #   in Loop: Header=BB91_1 Depth=1
	r1 = *(u16 *)(r10 - 14)
	r2 = 0
	*(u64 *)(r10 - 24) = r2
	if r1 == 0 goto LBB91_4
	goto LBB91_3
LBB91_3:                                #   in Loop: Header=BB91_1 Depth=1
	r1 = *(u16 *)(r10 - 6)
	r1 &= 32768
	r2 = 0
	*(u64 *)(r10 - 40) = r2
	r2 = 1
	*(u64 *)(r10 - 32) = r2
	if r1 == 0 goto LBB91_16
# %bb.15:                               #   in Loop: Header=BB91_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 32) = r1
LBB91_16:                               #   in Loop: Header=BB91_1 Depth=1
	r1 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 24) = r1
	goto LBB91_4
LBB91_4:                                #   in Loop: Header=BB91_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 &= 1
	if r1 == 0 goto LBB91_6
	goto LBB91_5
LBB91_5:                                #   in Loop: Header=BB91_1 Depth=1
	r1 = *(u16 *)(r10 - 6)
	r1 <<= 1
	*(u16 *)(r10 - 6) = r1
	r1 = *(u16 *)(r10 - 14)
	r1 <<= 1
	*(u16 *)(r10 - 14) = r1
	goto LBB91_1
LBB91_6:
	goto LBB91_7
LBB91_7:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u16 *)(r10 - 14)
	if r1 == 0 goto LBB91_11
	goto LBB91_8
LBB91_8:                                #   in Loop: Header=BB91_7 Depth=1
	r2 = *(u16 *)(r10 - 4)
	r1 = *(u16 *)(r10 - 6)
	if r1 s> r2 goto LBB91_10
	goto LBB91_9
LBB91_9:                                #   in Loop: Header=BB91_7 Depth=1
	r2 = *(u16 *)(r10 - 6)
	r1 = *(u16 *)(r10 - 4)
	r1 -= r2
	*(u16 *)(r10 - 4) = r1
	r2 = *(u16 *)(r10 - 14)
	r1 = *(u16 *)(r10 - 16)
	r1 |= r2
	*(u16 *)(r10 - 16) = r1
	goto LBB91_10
LBB91_10:                               #   in Loop: Header=BB91_7 Depth=1
	r1 = *(u16 *)(r10 - 14)
	r1 >>= 1
	*(u16 *)(r10 - 14) = r1
	r1 = *(u16 *)(r10 - 6)
	r1 >>= 1
	*(u16 *)(r10 - 6) = r1
	goto LBB91_7
LBB91_11:
	r1 = *(u32 *)(r10 - 12)
	if r1 == 0 goto LBB91_13
	goto LBB91_12
LBB91_12:
	r1 = *(u16 *)(r10 - 4)
	*(u16 *)(r10 - 2) = r1
	goto LBB91_14
LBB91_13:
	r1 = *(u16 *)(r10 - 16)
	*(u16 *)(r10 - 2) = r1
	goto LBB91_14
LBB91_14:
	r0 = *(u16 *)(r10 - 2)
	exit
.Lfunc_end91:
	.size	__udivmodhi4, .Lfunc_end91-__udivmodhi4
                                        # -- End function
	.globl	__udivmodsi4_libgcc             # -- Begin function __udivmodsi4_libgcc
	.p2align	3
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    # @__udivmodsi4_libgcc
# %bb.0:
                                        # kill: def $r4 killed $r3
	*(u64 *)(r10 - 16) = r1
	*(u64 *)(r10 - 24) = r2
	*(u32 *)(r10 - 28) = r3
	r1 = 1
	*(u64 *)(r10 - 40) = r1
	r1 = 0
	*(u64 *)(r10 - 48) = r1
	goto LBB92_1
LBB92_1:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 24)
	r2 = *(u64 *)(r10 - 16)
	r3 = 0
	*(u64 *)(r10 - 56) = r3
	if r1 >= r2 goto LBB92_4
	goto LBB92_2
LBB92_2:                                #   in Loop: Header=BB92_1 Depth=1
	r1 = *(u64 *)(r10 - 40)
	r2 = 0
	*(u64 *)(r10 - 56) = r2
	if r1 == 0 goto LBB92_4
	goto LBB92_3
LBB92_3:                                #   in Loop: Header=BB92_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r2 = 2147483648 ll
	r1 &= r2
	r2 = 0
	*(u64 *)(r10 - 72) = r2
	r2 = 1
	*(u64 *)(r10 - 64) = r2
	if r1 == 0 goto LBB92_16
# %bb.15:                               #   in Loop: Header=BB92_1 Depth=1
	r1 = *(u64 *)(r10 - 72)
	*(u64 *)(r10 - 64) = r1
LBB92_16:                               #   in Loop: Header=BB92_1 Depth=1
	r1 = *(u64 *)(r10 - 64)
	*(u64 *)(r10 - 56) = r1
	goto LBB92_4
LBB92_4:                                #   in Loop: Header=BB92_1 Depth=1
	r1 = *(u64 *)(r10 - 56)
	r1 &= 1
	if r1 == 0 goto LBB92_6
	goto LBB92_5
LBB92_5:                                #   in Loop: Header=BB92_1 Depth=1
	r1 = *(u64 *)(r10 - 24)
	r1 <<= 1
	*(u64 *)(r10 - 24) = r1
	r1 = *(u64 *)(r10 - 40)
	r1 <<= 1
	*(u64 *)(r10 - 40) = r1
	goto LBB92_1
LBB92_6:
	goto LBB92_7
LBB92_7:                                # =>This Inner Loop Header: Depth=1
	r1 = *(u64 *)(r10 - 40)
	if r1 == 0 goto LBB92_11
	goto LBB92_8
LBB92_8:                                #   in Loop: Header=BB92_7 Depth=1
	r2 = *(u64 *)(r10 - 16)
	r1 = *(u64 *)(r10 - 24)
	if r1 > r2 goto LBB92_10
	goto LBB92_9
LBB92_9:                                #   in Loop: Header=BB92_7 Depth=1
	r2 = *(u64 *)(r10 - 24)
	r1 = *(u64 *)(r10 - 16)
	r1 -= r2
	*(u64 *)(r10 - 16) = r1
	r2 = *(u64 *)(r10 - 40)
	r1 = *(u64 *)(r10 - 48)
	r1 |= r2
	*(u64 *)(r10 - 48) = r1
	goto LBB92_10
LBB92_10:                               #   in Loop: Header=BB92_7 Depth=1
	r1 = *(u64 *)(r10 - 40)
	r1 >>= 1
	*(u64 *)(r10 - 40) = r1
	r1 = *(u64 *)(r10 - 24)
	r1 >>= 1
	*(u64 *)(r10 - 24) = r1
	goto LBB92_7
LBB92_11:
	r1 = *(u32 *)(r10 - 28)
	if r1 == 0 goto LBB92_13
	goto LBB92_12
LBB92_12:
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 8) = r1
	goto LBB92_14
LBB92_13:
	r1 = *(u64 *)(r10 - 48)
	*(u64 *)(r10 - 8) = r1
	goto LBB92_14
LBB92_14:
	r0 = *(u64 *)(r10 - 8)
	exit
.Lfunc_end92:
	.size	__udivmodsi4_libgcc, .Lfunc_end92-__udivmodsi4_libgcc
                                        # -- End function
	.globl	__ashldi3                       # -- Begin function __ashldi3
	.p2align	3
	.type	__ashldi3,@function
__ashldi3:                              # @__ashldi3
# %bb.0:
                                        # kill: def $r3 killed $r2
	*(u64 *)(r10 - 16) = r1
	*(u32 *)(r10 - 20) = r2
	r1 = 32
	*(u32 *)(r10 - 24) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u32 *)(r10 - 20)
	r1 &= 32
	if r1 == 0 goto LBB93_2
	goto LBB93_1
LBB93_1:
	r1 = 0
	*(u32 *)(r10 - 40) = r1
	r1 = *(u32 *)(r10 - 32)
	r2 = *(u32 *)(r10 - 20)
	r2 += -32
	r2 <<= 32
	r2 >>= 32
	r1 <<= r2
	*(u32 *)(r10 - 36) = r1
	goto LBB93_5
LBB93_2:
	r1 = *(u32 *)(r10 - 20)
	if r1 != 0 goto LBB93_4
	goto LBB93_3
LBB93_3:
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 8) = r1
	goto LBB93_6
LBB93_4:
	r1 = *(u32 *)(r10 - 32)
	r2 = *(u32 *)(r10 - 20)
	r1 <<= r2
	*(u32 *)(r10 - 40) = r1
	r1 = *(u32 *)(r10 - 28)
	r4 = *(u32 *)(r10 - 20)
	r1 <<= r4
	r2 = *(u32 *)(r10 - 32)
	r3 = 32
	r3 -= r4
	r3 <<= 32
	r3 >>= 32
	r2 >>= r3
	r1 |= r2
	*(u32 *)(r10 - 36) = r1
	goto LBB93_5
LBB93_5:
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 8) = r1
	goto LBB93_6
LBB93_6:
	r0 = *(u64 *)(r10 - 8)
	exit
.Lfunc_end93:
	.size	__ashldi3, .Lfunc_end93-__ashldi3
                                        # -- End function
	.globl	__ashrdi3                       # -- Begin function __ashrdi3
	.p2align	3
	.type	__ashrdi3,@function
__ashrdi3:                              # @__ashrdi3
# %bb.0:
                                        # kill: def $r3 killed $r2
	*(u64 *)(r10 - 16) = r1
	*(u32 *)(r10 - 20) = r2
	r1 = 32
	*(u32 *)(r10 - 24) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u32 *)(r10 - 20)
	r1 &= 32
	if r1 == 0 goto LBB94_2
	goto LBB94_1
LBB94_1:
	r1 = *(u32 *)(r10 - 28)
	r1 <<= 32
	r1 s>>= 32
	r1 >>= 31
	*(u32 *)(r10 - 36) = r1
	r1 = *(u32 *)(r10 - 28)
	r1 <<= 32
	r1 s>>= 32
	r2 = *(u32 *)(r10 - 20)
	r2 += -32
	r2 <<= 32
	r2 >>= 32
	r1 s>>= r2
	*(u32 *)(r10 - 40) = r1
	goto LBB94_5
LBB94_2:
	r1 = *(u32 *)(r10 - 20)
	if r1 != 0 goto LBB94_4
	goto LBB94_3
LBB94_3:
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 8) = r1
	goto LBB94_6
LBB94_4:
	r1 = *(u32 *)(r10 - 28)
	r1 <<= 32
	r1 s>>= 32
	r2 = *(u32 *)(r10 - 20)
	r1 s>>= r2
	*(u32 *)(r10 - 36) = r1
	r1 = *(u32 *)(r10 - 28)
	r3 = *(u32 *)(r10 - 20)
	r2 = 32
	r2 -= r3
	r2 <<= 32
	r2 >>= 32
	r1 <<= r2
	r2 = *(u32 *)(r10 - 32)
	r2 >>= r3
	r1 |= r2
	*(u32 *)(r10 - 40) = r1
	goto LBB94_5
LBB94_5:
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 8) = r1
	goto LBB94_6
LBB94_6:
	r0 = *(u64 *)(r10 - 8)
	exit
.Lfunc_end94:
	.size	__ashrdi3, .Lfunc_end94-__ashrdi3
                                        # -- End function
	.globl	__bswapdi2                      # -- Begin function __bswapdi2
	.p2align	3
	.type	__bswapdi2,@function
__bswapdi2:                             # @__bswapdi2
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	r1 = *(u64 *)(r10 - 8)
	r0 = r1
	r0 >>= 56
	r3 = 71776119061217280 ll
	r2 = r1
	r2 &= r3
	r2 >>= 40
	r0 |= r2
	r3 = 280375465082880 ll
	r2 = r1
	r2 &= r3
	r2 >>= 24
	r0 |= r2
	r3 = 1095216660480 ll
	r2 = r1
	r2 &= r3
	r2 >>= 8
	r0 |= r2
	r3 = 4278190080 ll
	r2 = r1
	r2 &= r3
	r2 <<= 8
	r0 |= r2
	r2 = r1
	r2 &= 16711680
	r2 <<= 24
	r0 |= r2
	r2 = r1
	r2 &= 65280
	r2 <<= 40
	r0 |= r2
	r1 <<= 56
	r0 |= r1
	exit
.Lfunc_end95:
	.size	__bswapdi2, .Lfunc_end95-__bswapdi2
                                        # -- End function
	.globl	__bswapsi2                      # -- Begin function __bswapsi2
	.p2align	3
	.type	__bswapsi2,@function
__bswapsi2:                             # @__bswapsi2
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r1 = *(u32 *)(r10 - 4)
	r0 = r1
	r0 >>= 24
	r2 = r1
	r2 &= 16711680
	r2 >>= 8
	r0 |= r2
	r2 = r1
	r2 &= 65280
	r2 <<= 8
	r0 |= r2
	r1 <<= 24
	r0 |= r1
	exit
.Lfunc_end96:
	.size	__bswapsi2, .Lfunc_end96-__bswapsi2
                                        # -- End function
	.globl	__clzsi2                        # -- Begin function __clzsi2
	.p2align	3
	.type	__clzsi2,@function
__clzsi2:                               # @__clzsi2
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r1 = *(u32 *)(r10 - 4)
	*(u32 *)(r10 - 8) = r1
	r1 = *(u32 *)(r10 - 8)
	r2 = 4294901760 ll
	r1 &= r2
	r2 = 0
	*(u64 *)(r10 - 40) = r2
	r2 = 1
	*(u64 *)(r10 - 32) = r2
	*(u64 *)(r10 - 24) = r2
	if r1 == 0 goto LBB97_2
# %bb.1:
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 24) = r1
LBB97_2:
	r2 = *(u64 *)(r10 - 32)
	r1 = *(u64 *)(r10 - 24)
	r1 <<= 4
	*(u32 *)(r10 - 12) = r1
	r1 = *(u32 *)(r10 - 12)
	r3 = 16
	r3 -= r1
	r1 = *(u32 *)(r10 - 8)
	r3 <<= 32
	r3 >>= 32
	r1 >>= r3
	*(u32 *)(r10 - 8) = r1
	r1 = *(u32 *)(r10 - 12)
	*(u32 *)(r10 - 16) = r1
	r1 = *(u32 *)(r10 - 8)
	r1 &= 65280
	*(u64 *)(r10 - 48) = r2
	if r1 == 0 goto LBB97_4
# %bb.3:
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 48) = r1
LBB97_4:
	r2 = *(u64 *)(r10 - 32)
	r1 = *(u64 *)(r10 - 48)
	r1 <<= 3
	*(u32 *)(r10 - 12) = r1
	r1 = *(u32 *)(r10 - 12)
	r3 = 8
	r3 -= r1
	r1 = *(u32 *)(r10 - 8)
	r3 <<= 32
	r3 >>= 32
	r1 >>= r3
	*(u32 *)(r10 - 8) = r1
	r3 = *(u32 *)(r10 - 12)
	r1 = *(u32 *)(r10 - 16)
	r1 += r3
	*(u32 *)(r10 - 16) = r1
	r1 = *(u32 *)(r10 - 8)
	r1 &= 240
	*(u64 *)(r10 - 56) = r2
	if r1 == 0 goto LBB97_6
# %bb.5:
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 56) = r1
LBB97_6:
	r2 = *(u64 *)(r10 - 32)
	r1 = *(u64 *)(r10 - 56)
	r1 <<= 2
	*(u32 *)(r10 - 12) = r1
	r1 = *(u32 *)(r10 - 12)
	r3 = 4
	r3 -= r1
	r1 = *(u32 *)(r10 - 8)
	r3 <<= 32
	r3 >>= 32
	r1 >>= r3
	*(u32 *)(r10 - 8) = r1
	r3 = *(u32 *)(r10 - 12)
	r1 = *(u32 *)(r10 - 16)
	r1 += r3
	*(u32 *)(r10 - 16) = r1
	r1 = *(u32 *)(r10 - 8)
	r1 &= 12
	*(u64 *)(r10 - 64) = r2
	if r1 == 0 goto LBB97_8
# %bb.7:
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 64) = r1
LBB97_8:
	r2 = *(u64 *)(r10 - 32)
	r1 = *(u64 *)(r10 - 64)
	r1 <<= 1
	*(u32 *)(r10 - 12) = r1
	r1 = *(u32 *)(r10 - 12)
	r3 = 2
	r4 = r3
	r4 -= r1
	r1 = *(u32 *)(r10 - 8)
	r4 <<= 32
	r4 >>= 32
	r1 >>= r4
	*(u32 *)(r10 - 8) = r1
	r4 = *(u32 *)(r10 - 12)
	r1 = *(u32 *)(r10 - 16)
	r1 += r4
	*(u32 *)(r10 - 16) = r1
	r1 = *(u32 *)(r10 - 16)
	*(u64 *)(r10 - 88) = r1
	r1 = *(u32 *)(r10 - 8)
	r3 -= r1
	*(u64 *)(r10 - 80) = r3
	r1 &= 2
	*(u64 *)(r10 - 72) = r2
	if r1 == 0 goto LBB97_10
# %bb.9:
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 72) = r1
LBB97_10:
	r0 = *(u64 *)(r10 - 88)
	r1 = *(u64 *)(r10 - 80)
	r2 = *(u64 *)(r10 - 72)
	r2 = -r2
	r1 &= r2
	r0 += r1
	exit
.Lfunc_end97:
	.size	__clzsi2, .Lfunc_end97-__clzsi2
                                        # -- End function
	.globl	__clzti2                        # -- Begin function __clzti2
	.p2align	3
	.type	__clzti2,@function
__clzti2:                               # @__clzti2
# %bb.0:
                                        # kill: def $r3 killed $r2
                                        # kill: def $r3 killed $r1
	*(u64 *)(r10 - 8) = r2
	*(u64 *)(r10 - 16) = r1
	r1 = *(u64 *)(r10 - 16)
	r2 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 24) = r2
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 24)
	r2 = 0
	*(u64 *)(r10 - 56) = r2
	r2 = 1
	*(u64 *)(r10 - 48) = r2
	if r1 == 0 goto LBB98_2
# %bb.1:
	r1 = *(u64 *)(r10 - 56)
	*(u64 *)(r10 - 48) = r1
LBB98_2:
	r1 = *(u64 *)(r10 - 48)
	r1 = -r1
	*(u64 *)(r10 - 40) = r1
	r2 = *(u64 *)(r10 - 24)
	r1 = *(u64 *)(r10 - 40)
	r3 = r1
	r3 ^= -1
	r2 &= r3
	r3 = *(u64 *)(r10 - 32)
	r3 &= r1
	r2 |= r3
	r3 = r2
	r3 >>= 1
	r2 |= r3
	r3 = r2
	r3 >>= 2
	r2 |= r3
	r3 = r2
	r3 >>= 4
	r2 |= r3
	r3 = r2
	r3 >>= 8
	r2 |= r3
	r3 = r2
	r3 >>= 16
	r2 |= r3
	r3 = r2
	r3 >>= 32
	r2 |= r3
	r2 ^= -1
	r3 = r2
	r3 >>= 1
	r4 = 6148914691236517205 ll
	r3 &= r4
	r2 -= r3
	r3 = 3689348814741910323 ll
	r0 = r2
	r0 &= r3
	r2 >>= 2
	r2 &= r3
	r0 += r2
	r2 = r0
	r2 >>= 4
	r0 += r2
	r2 = 1085102592571150095 ll
	r0 &= r2
	r2 = 72340172838076673 ll
	r0 *= r2
	r0 >>= 56
	r1 &= 64
	r0 += r1
	exit
.Lfunc_end98:
	.size	__clzti2, .Lfunc_end98-__clzti2
                                        # -- End function
	.globl	__cmpdi2                        # -- Begin function __cmpdi2
	.p2align	3
	.type	__cmpdi2,@function
__cmpdi2:                               # @__cmpdi2
# %bb.0:
	*(u64 *)(r10 - 16) = r1
	*(u64 *)(r10 - 24) = r2
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 40) = r1
	r1 = *(u32 *)(r10 - 28)
	r1 <<= 32
	r1 s>>= 32
	r2 = *(u32 *)(r10 - 36)
	r2 <<= 32
	r2 s>>= 32
	if r1 s>= r2 goto LBB99_2
	goto LBB99_1
LBB99_1:
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB99_9
LBB99_2:
	r2 = *(u32 *)(r10 - 28)
	r2 <<= 32
	r2 s>>= 32
	r1 = *(u32 *)(r10 - 36)
	r1 <<= 32
	r1 s>>= 32
	if r1 s>= r2 goto LBB99_4
	goto LBB99_3
LBB99_3:
	r1 = 2
	*(u32 *)(r10 - 4) = r1
	goto LBB99_9
LBB99_4:
	r1 = *(u32 *)(r10 - 32)
	r2 = *(u32 *)(r10 - 40)
	if r1 >= r2 goto LBB99_6
	goto LBB99_5
LBB99_5:
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB99_9
LBB99_6:
	r2 = *(u32 *)(r10 - 32)
	r1 = *(u32 *)(r10 - 40)
	if r1 >= r2 goto LBB99_8
	goto LBB99_7
LBB99_7:
	r1 = 2
	*(u32 *)(r10 - 4) = r1
	goto LBB99_9
LBB99_8:
	r1 = 1
	*(u32 *)(r10 - 4) = r1
	goto LBB99_9
LBB99_9:
	r0 = *(u32 *)(r10 - 4)
	exit
.Lfunc_end99:
	.size	__cmpdi2, .Lfunc_end99-__cmpdi2
                                        # -- End function
	.globl	__aeabi_lcmp                    # -- Begin function __aeabi_lcmp
	.p2align	3
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           # @__aeabi_lcmp
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	r1 = *(u64 *)(r10 - 8)
	r2 = *(u64 *)(r10 - 16)
	call __cmpdi2
	r0 += -1
	exit
.Lfunc_end100:
	.size	__aeabi_lcmp, .Lfunc_end100-__aeabi_lcmp
                                        # -- End function
	.globl	__cmpti2                        # -- Begin function __cmpti2
	.p2align	3
	.type	__cmpti2,@function
__cmpti2:                               # @__cmpti2
# %bb.0:
                                        # kill: def $r5 killed $r4
                                        # kill: def $r5 killed $r3
                                        # kill: def $r5 killed $r2
                                        # kill: def $r5 killed $r1
	*(u64 *)(r10 - 24) = r2
	*(u64 *)(r10 - 32) = r1
	*(u64 *)(r10 - 40) = r4
	*(u64 *)(r10 - 48) = r3
	r1 = *(u64 *)(r10 - 32)
	r2 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 56) = r2
	*(u64 *)(r10 - 64) = r1
	r1 = *(u64 *)(r10 - 48)
	r2 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 72) = r2
	*(u64 *)(r10 - 80) = r1
	r1 = *(u64 *)(r10 - 56)
	r2 = *(u64 *)(r10 - 72)
	if r1 s>= r2 goto LBB101_2
	goto LBB101_1
LBB101_1:
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB101_9
LBB101_2:
	r2 = *(u64 *)(r10 - 56)
	r1 = *(u64 *)(r10 - 72)
	if r1 s>= r2 goto LBB101_4
	goto LBB101_3
LBB101_3:
	r1 = 2
	*(u32 *)(r10 - 4) = r1
	goto LBB101_9
LBB101_4:
	r1 = *(u64 *)(r10 - 64)
	r2 = *(u64 *)(r10 - 80)
	if r1 >= r2 goto LBB101_6
	goto LBB101_5
LBB101_5:
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB101_9
LBB101_6:
	r2 = *(u64 *)(r10 - 64)
	r1 = *(u64 *)(r10 - 80)
	if r1 >= r2 goto LBB101_8
	goto LBB101_7
LBB101_7:
	r1 = 2
	*(u32 *)(r10 - 4) = r1
	goto LBB101_9
LBB101_8:
	r1 = 1
	*(u32 *)(r10 - 4) = r1
	goto LBB101_9
LBB101_9:
	r0 = *(u32 *)(r10 - 4)
	exit
.Lfunc_end101:
	.size	__cmpti2, .Lfunc_end101-__cmpti2
                                        # -- End function
	.globl	__ctzsi2                        # -- Begin function __ctzsi2
	.p2align	3
	.type	__ctzsi2,@function
__ctzsi2:                               # @__ctzsi2
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r1 = *(u32 *)(r10 - 4)
	*(u32 *)(r10 - 8) = r1
	r1 = *(u32 *)(r10 - 8)
	r1 &= 65535
	r2 = 0
	*(u64 *)(r10 - 40) = r2
	r2 = 1
	*(u64 *)(r10 - 32) = r2
	*(u64 *)(r10 - 24) = r2
	if r1 == 0 goto LBB102_2
# %bb.1:
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 24) = r1
LBB102_2:
	r2 = *(u64 *)(r10 - 32)
	r1 = *(u64 *)(r10 - 24)
	r1 <<= 4
	*(u32 *)(r10 - 12) = r1
	r3 = *(u32 *)(r10 - 12)
	r1 = *(u32 *)(r10 - 8)
	r1 >>= r3
	*(u32 *)(r10 - 8) = r1
	r1 = *(u32 *)(r10 - 12)
	*(u32 *)(r10 - 16) = r1
	r1 = *(u32 *)(r10 - 8)
	r1 &= 255
	*(u64 *)(r10 - 48) = r2
	if r1 == 0 goto LBB102_4
# %bb.3:
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 48) = r1
LBB102_4:
	r2 = *(u64 *)(r10 - 32)
	r1 = *(u64 *)(r10 - 48)
	r1 <<= 3
	*(u32 *)(r10 - 12) = r1
	r3 = *(u32 *)(r10 - 12)
	r1 = *(u32 *)(r10 - 8)
	r1 >>= r3
	*(u32 *)(r10 - 8) = r1
	r3 = *(u32 *)(r10 - 12)
	r1 = *(u32 *)(r10 - 16)
	r1 += r3
	*(u32 *)(r10 - 16) = r1
	r1 = *(u32 *)(r10 - 8)
	r1 &= 15
	*(u64 *)(r10 - 56) = r2
	if r1 == 0 goto LBB102_6
# %bb.5:
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 56) = r1
LBB102_6:
	r2 = *(u64 *)(r10 - 32)
	r1 = *(u64 *)(r10 - 56)
	r1 <<= 2
	*(u32 *)(r10 - 12) = r1
	r3 = *(u32 *)(r10 - 12)
	r1 = *(u32 *)(r10 - 8)
	r1 >>= r3
	*(u32 *)(r10 - 8) = r1
	r3 = *(u32 *)(r10 - 12)
	r1 = *(u32 *)(r10 - 16)
	r1 += r3
	*(u32 *)(r10 - 16) = r1
	r1 = *(u32 *)(r10 - 8)
	r1 &= 3
	*(u64 *)(r10 - 64) = r2
	if r1 == 0 goto LBB102_8
# %bb.7:
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 64) = r1
LBB102_8:
	r1 = *(u64 *)(r10 - 64)
	r1 <<= 1
	*(u32 *)(r10 - 12) = r1
	r2 = *(u32 *)(r10 - 12)
	r1 = *(u32 *)(r10 - 8)
	r1 >>= r2
	*(u32 *)(r10 - 8) = r1
	r1 = *(u32 *)(r10 - 8)
	r1 &= 3
	*(u32 *)(r10 - 8) = r1
	r2 = *(u32 *)(r10 - 12)
	r1 = *(u32 *)(r10 - 16)
	r1 += r2
	*(u32 *)(r10 - 16) = r1
	r0 = *(u32 *)(r10 - 16)
	r2 = *(u32 *)(r10 - 8)
	r3 = r2
	r3 >>= 1
	r1 = 2
	r1 -= r3
	r2 &= 1
	r2 += -1
	r1 &= r2
	r0 += r1
	exit
.Lfunc_end102:
	.size	__ctzsi2, .Lfunc_end102-__ctzsi2
                                        # -- End function
	.section	.rodata,"a",@progbits
.LCPI103_0:                             # -- Begin function __ctzti2
	.ascii	"\000\001\002\007\003\r\b\023\004\031\016\034\t\"\024(\005\021\032&\017.\0350\n\037#6\0252)9?\006\f\022\030\033!'\020%-/\036518>\013\027 $,47=\026+3<*;:"
	.text
	.globl	__ctzti2
	.p2align	3
	.type	__ctzti2,@function
__ctzti2:                               # @__ctzti2
# %bb.0:
                                        # kill: def $r3 killed $r2
                                        # kill: def $r3 killed $r1
	*(u64 *)(r10 - 8) = r2
	*(u64 *)(r10 - 16) = r1
	r1 = *(u64 *)(r10 - 16)
	r2 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 24) = r2
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 32)
	r2 = 0
	*(u64 *)(r10 - 56) = r2
	r2 = 1
	*(u64 *)(r10 - 48) = r2
	if r1 == 0 goto LBB103_2
# %bb.1:
	r1 = *(u64 *)(r10 - 56)
	*(u64 *)(r10 - 48) = r1
LBB103_2:
	r1 = *(u64 *)(r10 - 48)
	r1 = -r1
	*(u64 *)(r10 - 40) = r1
	r3 = *(u64 *)(r10 - 24)
	r1 = *(u64 *)(r10 - 40)
	r3 &= r1
	r2 = *(u64 *)(r10 - 32)
	r4 = r1
	r4 ^= -1
	r2 &= r4
	r3 |= r2
	r2 = r3
	r2 = -r2
	r3 &= r2
	r2 = 151050438420815295 ll
	r3 *= r2
	r3 >>= 58
	r2 = .LCPI103_0 ll
	r2 += r3
	r0 = *(u8 *)(r2 + 0)
	r1 &= 64
	r0 += r1
	exit
.Lfunc_end103:
	.size	__ctzti2, .Lfunc_end103-__ctzti2
                                        # -- End function
	.section	.rodata,"a",@progbits
.LCPI104_0:                             # -- Begin function __ffsti2
	.ascii	"\000\001\002\007\003\r\b\023\004\031\016\034\t\"\024(\005\021\032&\017.\0350\n\037#6\0252)9?\006\f\022\030\033!'\020%-/\036518>\013\027 $,47=\026+3<*;:"
	.text
	.globl	__ffsti2
	.p2align	3
	.type	__ffsti2,@function
__ffsti2:                               # @__ffsti2
# %bb.0:
                                        # kill: def $r3 killed $r2
                                        # kill: def $r3 killed $r1
	*(u64 *)(r10 - 24) = r2
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 32)
	r2 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 40) = r2
	*(u64 *)(r10 - 48) = r1
	r1 = *(u64 *)(r10 - 48)
	if r1 != 0 goto LBB104_4
	goto LBB104_1
LBB104_1:
	r1 = *(u64 *)(r10 - 40)
	if r1 != 0 goto LBB104_3
	goto LBB104_2
LBB104_2:
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB104_5
LBB104_3:
	r2 = *(u64 *)(r10 - 40)
	r1 = r2
	r1 = -r1
	r2 &= r1
	r1 = 151050438420815295 ll
	r2 *= r1
	r2 >>= 58
	r1 = .LCPI104_0 ll
	r1 += r2
	r1 = *(u8 *)(r1 + 0)
	r1 += 65
	*(u32 *)(r10 - 4) = r1
	goto LBB104_5
LBB104_4:
	r2 = *(u64 *)(r10 - 48)
	r1 = r2
	r1 = -r1
	r2 &= r1
	r1 = 151050438420815295 ll
	r2 *= r1
	r2 >>= 58
	r1 = .LCPI104_0 ll
	r1 += r2
	r1 = *(u8 *)(r1 + 0)
	r1 += 1
	*(u32 *)(r10 - 4) = r1
	goto LBB104_5
LBB104_5:
	r0 = *(u32 *)(r10 - 4)
	exit
.Lfunc_end104:
	.size	__ffsti2, .Lfunc_end104-__ffsti2
                                        # -- End function
	.globl	__lshrdi3                       # -- Begin function __lshrdi3
	.p2align	3
	.type	__lshrdi3,@function
__lshrdi3:                              # @__lshrdi3
# %bb.0:
                                        # kill: def $r3 killed $r2
	*(u64 *)(r10 - 16) = r1
	*(u32 *)(r10 - 20) = r2
	r1 = 32
	*(u32 *)(r10 - 24) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u32 *)(r10 - 20)
	r1 &= 32
	if r1 == 0 goto LBB105_2
	goto LBB105_1
LBB105_1:
	r1 = 0
	*(u32 *)(r10 - 36) = r1
	r1 = *(u32 *)(r10 - 28)
	r2 = *(u32 *)(r10 - 20)
	r2 += -32
	r2 <<= 32
	r2 >>= 32
	r1 >>= r2
	*(u32 *)(r10 - 40) = r1
	goto LBB105_5
LBB105_2:
	r1 = *(u32 *)(r10 - 20)
	if r1 != 0 goto LBB105_4
	goto LBB105_3
LBB105_3:
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 8) = r1
	goto LBB105_6
LBB105_4:
	r1 = *(u32 *)(r10 - 28)
	r2 = *(u32 *)(r10 - 20)
	r1 >>= r2
	*(u32 *)(r10 - 36) = r1
	r1 = *(u32 *)(r10 - 28)
	r3 = *(u32 *)(r10 - 20)
	r2 = 32
	r2 -= r3
	r2 <<= 32
	r2 >>= 32
	r1 <<= r2
	r2 = *(u32 *)(r10 - 32)
	r2 >>= r3
	r1 |= r2
	*(u32 *)(r10 - 40) = r1
	goto LBB105_5
LBB105_5:
	r1 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 8) = r1
	goto LBB105_6
LBB105_6:
	r0 = *(u64 *)(r10 - 8)
	exit
.Lfunc_end105:
	.size	__lshrdi3, .Lfunc_end105-__lshrdi3
                                        # -- End function
	.globl	__muldsi3                       # -- Begin function __muldsi3
	.p2align	3
	.type	__muldsi3,@function
__muldsi3:                              # @__muldsi3
# %bb.0:
                                        # kill: def $r3 killed $r2
                                        # kill: def $r3 killed $r1
	*(u32 *)(r10 - 4) = r1
	*(u32 *)(r10 - 8) = r2
	r1 = 16
	*(u32 *)(r10 - 20) = r1
	r1 = 65535
	*(u32 *)(r10 - 24) = r1
	r1 = *(u32 *)(r10 - 4)
	r1 &= 65535
	r2 = *(u32 *)(r10 - 8)
	r2 &= 65535
	r1 *= r2
	*(u32 *)(r10 - 16) = r1
	r1 = *(u32 *)(r10 - 16)
	r1 >>= 16
	*(u32 *)(r10 - 28) = r1
	r1 = *(u32 *)(r10 - 16)
	r1 &= 65535
	*(u32 *)(r10 - 16) = r1
	r2 = *(u32 *)(r10 - 4)
	r2 >>= 16
	r1 = *(u32 *)(r10 - 8)
	r1 &= 65535
	r2 *= r1
	r1 = *(u32 *)(r10 - 28)
	r1 += r2
	*(u32 *)(r10 - 28) = r1
	r2 = *(u32 *)(r10 - 28)
	r2 <<= 16
	r1 = *(u32 *)(r10 - 16)
	r1 += r2
	*(u32 *)(r10 - 16) = r1
	r1 = *(u32 *)(r10 - 28)
	r1 >>= 16
	*(u32 *)(r10 - 12) = r1
	r1 = *(u32 *)(r10 - 16)
	r1 >>= 16
	*(u32 *)(r10 - 28) = r1
	r1 = *(u32 *)(r10 - 16)
	r1 &= 65535
	*(u32 *)(r10 - 16) = r1
	r2 = *(u32 *)(r10 - 8)
	r2 >>= 16
	r1 = *(u32 *)(r10 - 4)
	r1 &= 65535
	r2 *= r1
	r1 = *(u32 *)(r10 - 28)
	r1 += r2
	*(u32 *)(r10 - 28) = r1
	r2 = *(u32 *)(r10 - 28)
	r2 <<= 16
	r1 = *(u32 *)(r10 - 16)
	r1 += r2
	*(u32 *)(r10 - 16) = r1
	r2 = *(u32 *)(r10 - 28)
	r2 >>= 16
	r1 = *(u32 *)(r10 - 12)
	r1 += r2
	*(u32 *)(r10 - 12) = r1
	r2 = *(u32 *)(r10 - 4)
	r2 >>= 16
	r1 = *(u32 *)(r10 - 8)
	r1 >>= 16
	r2 *= r1
	r1 = *(u32 *)(r10 - 12)
	r1 += r2
	*(u32 *)(r10 - 12) = r1
	r0 = *(u64 *)(r10 - 16)
	exit
.Lfunc_end106:
	.size	__muldsi3, .Lfunc_end106-__muldsi3
                                        # -- End function
	.globl	__muldi3_compiler_rt            # -- Begin function __muldi3_compiler_rt
	.p2align	3
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   # @__muldi3_compiler_rt
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 24) = r1
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 32) = r1
	r2 = *(u32 *)(r10 - 32)
	r1 = *(u32 *)(r10 - 24)
	call __muldsi3
	*(u64 *)(r10 - 40) = r0
	r2 = *(u32 *)(r10 - 20)
	r1 = *(u32 *)(r10 - 32)
	r2 *= r1
	r1 = *(u32 *)(r10 - 24)
	r3 = *(u32 *)(r10 - 28)
	r1 *= r3
	r2 += r1
	r1 = *(u32 *)(r10 - 36)
	r1 += r2
	*(u32 *)(r10 - 36) = r1
	r0 = *(u64 *)(r10 - 40)
	exit
.Lfunc_end107:
	.size	__muldi3_compiler_rt, .Lfunc_end107-__muldi3_compiler_rt
                                        # -- End function
	.globl	__negdi2                        # -- Begin function __negdi2
	.p2align	3
	.type	__negdi2,@function
__negdi2:                               # @__negdi2
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	r0 = *(u64 *)(r10 - 8)
	r0 = -r0
	exit
.Lfunc_end108:
	.size	__negdi2, .Lfunc_end108-__negdi2
                                        # -- End function
	.globl	__paritydi2                     # -- Begin function __paritydi2
	.p2align	3
	.type	__paritydi2,@function
__paritydi2:                            # @__paritydi2
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 16) = r1
	r1 = *(u32 *)(r10 - 12)
	r2 = *(u32 *)(r10 - 16)
	r1 ^= r2
	*(u32 *)(r10 - 20) = r1
	r1 = *(u32 *)(r10 - 20)
	r2 = r1
	r2 >>= 16
	r1 ^= r2
	*(u32 *)(r10 - 20) = r1
	r1 = *(u32 *)(r10 - 20)
	r2 = r1
	r2 >>= 8
	r1 ^= r2
	*(u32 *)(r10 - 20) = r1
	r1 = *(u32 *)(r10 - 20)
	r2 = r1
	r2 >>= 4
	r1 ^= r2
	*(u32 *)(r10 - 20) = r1
	r1 = *(u32 *)(r10 - 20)
	r1 &= 15
	r0 = 27030
	r0 >>= r1
	r0 &= 1
	exit
.Lfunc_end109:
	.size	__paritydi2, .Lfunc_end109-__paritydi2
                                        # -- End function
	.globl	__parityti2                     # -- Begin function __parityti2
	.p2align	3
	.type	__parityti2,@function
__parityti2:                            # @__parityti2
# %bb.0:
                                        # kill: def $r3 killed $r2
                                        # kill: def $r3 killed $r1
	*(u64 *)(r10 - 8) = r2
	*(u64 *)(r10 - 16) = r1
	r1 = *(u64 *)(r10 - 16)
	r2 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 24) = r2
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 24)
	r2 = *(u64 *)(r10 - 32)
	r1 ^= r2
	*(u64 *)(r10 - 40) = r1
	r1 = *(u32 *)(r10 - 36)
	r2 = *(u32 *)(r10 - 40)
	r1 ^= r2
	*(u32 *)(r10 - 44) = r1
	r1 = *(u32 *)(r10 - 44)
	r2 = r1
	r2 >>= 16
	r1 ^= r2
	*(u32 *)(r10 - 44) = r1
	r1 = *(u32 *)(r10 - 44)
	r2 = r1
	r2 >>= 8
	r1 ^= r2
	*(u32 *)(r10 - 44) = r1
	r1 = *(u32 *)(r10 - 44)
	r2 = r1
	r2 >>= 4
	r1 ^= r2
	*(u32 *)(r10 - 44) = r1
	r1 = *(u32 *)(r10 - 44)
	r1 &= 15
	r0 = 27030
	r0 >>= r1
	r0 &= 1
	exit
.Lfunc_end110:
	.size	__parityti2, .Lfunc_end110-__parityti2
                                        # -- End function
	.globl	__paritysi2                     # -- Begin function __paritysi2
	.p2align	3
	.type	__paritysi2,@function
__paritysi2:                            # @__paritysi2
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r1 = *(u32 *)(r10 - 4)
	*(u32 *)(r10 - 8) = r1
	r1 = *(u32 *)(r10 - 8)
	r2 = r1
	r2 >>= 16
	r1 ^= r2
	*(u32 *)(r10 - 8) = r1
	r1 = *(u32 *)(r10 - 8)
	r2 = r1
	r2 >>= 8
	r1 ^= r2
	*(u32 *)(r10 - 8) = r1
	r1 = *(u32 *)(r10 - 8)
	r2 = r1
	r2 >>= 4
	r1 ^= r2
	*(u32 *)(r10 - 8) = r1
	r1 = *(u32 *)(r10 - 8)
	r1 &= 15
	r0 = 27030
	r0 >>= r1
	r0 &= 1
	exit
.Lfunc_end111:
	.size	__paritysi2, .Lfunc_end111-__paritysi2
                                        # -- End function
	.globl	__popcountdi2                   # -- Begin function __popcountdi2
	.p2align	3
	.type	__popcountdi2,@function
__popcountdi2:                          # @__popcountdi2
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	r1 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 16) = r1
	r1 = *(u64 *)(r10 - 16)
	r2 = r1
	r2 >>= 1
	r3 = 6148914691236517205 ll
	r2 &= r3
	r1 -= r2
	*(u64 *)(r10 - 16) = r1
	r2 = *(u64 *)(r10 - 16)
	r1 = r2
	r1 >>= 2
	r3 = 3689348814741910323 ll
	r1 &= r3
	r2 &= r3
	r1 += r2
	*(u64 *)(r10 - 16) = r1
	r1 = *(u64 *)(r10 - 16)
	r2 = r1
	r2 >>= 4
	r1 += r2
	r2 = 1085102592571150095 ll
	r1 &= r2
	*(u64 *)(r10 - 16) = r1
	r1 = *(u64 *)(r10 - 16)
	r2 = r1
	r2 >>= 32
	r1 += r2
	*(u32 *)(r10 - 20) = r1
	r1 = *(u32 *)(r10 - 20)
	r2 = r1
	r2 >>= 16
	r1 += r2
	*(u32 *)(r10 - 20) = r1
	r0 = *(u32 *)(r10 - 20)
	r1 = r0
	r1 >>= 8
	r0 += r1
	r0 &= 127
	exit
.Lfunc_end112:
	.size	__popcountdi2, .Lfunc_end112-__popcountdi2
                                        # -- End function
	.globl	__popcountsi2                   # -- Begin function __popcountsi2
	.p2align	3
	.type	__popcountsi2,@function
__popcountsi2:                          # @__popcountsi2
# %bb.0:
                                        # kill: def $r2 killed $r1
	*(u32 *)(r10 - 4) = r1
	r1 = *(u32 *)(r10 - 4)
	*(u32 *)(r10 - 8) = r1
	r1 = *(u32 *)(r10 - 8)
	r2 = r1
	r2 >>= 1
	r2 &= 1431655765
	r1 -= r2
	*(u32 *)(r10 - 8) = r1
	r2 = *(u32 *)(r10 - 8)
	r1 = r2
	r1 >>= 2
	r1 &= 858993459
	r2 &= 858993459
	r1 += r2
	*(u32 *)(r10 - 8) = r1
	r1 = *(u32 *)(r10 - 8)
	r2 = r1
	r2 >>= 4
	r1 += r2
	r1 &= 252645135
	*(u32 *)(r10 - 8) = r1
	r1 = *(u32 *)(r10 - 8)
	r2 = r1
	r2 >>= 16
	r1 += r2
	*(u32 *)(r10 - 8) = r1
	r0 = *(u32 *)(r10 - 8)
	r1 = r0
	r1 >>= 8
	r0 += r1
	r0 &= 63
	exit
.Lfunc_end113:
	.size	__popcountsi2, .Lfunc_end113-__popcountsi2
                                        # -- End function
	.globl	__popcountti2                   # -- Begin function __popcountti2
	.p2align	3
	.type	__popcountti2,@function
__popcountti2:                          # @__popcountti2
# %bb.0:
                                        # kill: def $r3 killed $r2
                                        # kill: def $r3 killed $r1
	*(u64 *)(r10 - 8) = r2
	*(u64 *)(r10 - 16) = r1
	r1 = *(u64 *)(r10 - 16)
	r2 = *(u64 *)(r10 - 8)
	*(u64 *)(r10 - 24) = r2
	*(u64 *)(r10 - 32) = r1
	r4 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 104) = r4
	r2 = *(u64 *)(r10 - 32)
	*(u64 *)(r10 - 96) = r2
	r1 = r2
	r1 >>= 1
	r4 >>= 1
	r3 = 6148914691236517205 ll
	r4 &= r3
	*(u64 *)(r10 - 88) = r4
	r1 &= r3
	*(u64 *)(r10 - 80) = r1
	r3 = 0
	*(u64 *)(r10 - 72) = r3
	r3 = 1
	*(u64 *)(r10 - 64) = r3
	*(u64 *)(r10 - 56) = r3
	if r1 > r2 goto LBB114_2
# %bb.1:
	r1 = *(u64 *)(r10 - 72)
	*(u64 *)(r10 - 56) = r1
LBB114_2:
	r3 = *(u64 *)(r10 - 64)
	r4 = *(u64 *)(r10 - 80)
	r2 = *(u64 *)(r10 - 96)
	r0 = *(u64 *)(r10 - 88)
	r1 = *(u64 *)(r10 - 104)
	r5 = *(u64 *)(r10 - 56)
	r1 -= r0
	r1 -= r5
	r2 -= r4
	*(u64 *)(r10 - 32) = r2
	*(u64 *)(r10 - 24) = r1
	r5 = *(u64 *)(r10 - 24)
	r4 = *(u64 *)(r10 - 32)
	r1 = r4
	r1 >>= 2
	r0 = r5
	r0 >>= 2
	r2 = 3689348814741910323 ll
	r0 &= r2
	*(u64 *)(r10 - 136) = r0
	r1 &= r2
	r5 &= r2
	*(u64 *)(r10 - 128) = r5
	r4 &= r2
	r2 = r1
	r2 += r4
	*(u64 *)(r10 - 120) = r2
	*(u64 *)(r10 - 112) = r3
	if r1 > r2 goto LBB114_4
# %bb.3:
	r1 = *(u64 *)(r10 - 72)
	*(u64 *)(r10 - 112) = r1
LBB114_4:
	r3 = *(u64 *)(r10 - 64)
	r2 = *(u64 *)(r10 - 120)
	r5 = *(u64 *)(r10 - 128)
	r1 = *(u64 *)(r10 - 136)
	r4 = *(u64 *)(r10 - 112)
	r1 += r5
	r1 += r4
	*(u64 *)(r10 - 32) = r2
	*(u64 *)(r10 - 24) = r1
	r1 = *(u64 *)(r10 - 32)
	r2 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 168) = r2
	r5 = r2
	r5 <<= 60
	r4 = r1
	r4 >>= 4
	r4 |= r5
	r2 >>= 4
	*(u64 *)(r10 - 160) = r2
	r2 = r1
	r2 += r4
	*(u64 *)(r10 - 152) = r2
	*(u64 *)(r10 - 144) = r3
	if r1 > r2 goto LBB114_6
# %bb.5:
	r1 = *(u64 *)(r10 - 72)
	*(u64 *)(r10 - 144) = r1
LBB114_6:
	r2 = *(u64 *)(r10 - 152)
	r4 = *(u64 *)(r10 - 160)
	r1 = *(u64 *)(r10 - 168)
	r3 = *(u64 *)(r10 - 144)
	r1 += r4
	r1 += r3
	r3 = 1085102592571150095 ll
	r1 &= r3
	r2 &= r3
	*(u64 *)(r10 - 32) = r2
	*(u64 *)(r10 - 24) = r1
	r2 = *(u64 *)(r10 - 24)
	r1 = *(u64 *)(r10 - 32)
	r1 += r2
	*(u64 *)(r10 - 40) = r1
	r1 = *(u64 *)(r10 - 40)
	r2 = r1
	r2 >>= 32
	r1 += r2
	*(u32 *)(r10 - 44) = r1
	r1 = *(u32 *)(r10 - 44)
	r2 = r1
	r2 >>= 16
	r1 += r2
	*(u32 *)(r10 - 44) = r1
	r0 = *(u32 *)(r10 - 44)
	r1 = r0
	r1 >>= 8
	r0 += r1
	r0 &= 255
	exit
.Lfunc_end114:
	.size	__popcountti2, .Lfunc_end114-__popcountti2
                                        # -- End function
	.globl	__ucmpdi2                       # -- Begin function __ucmpdi2
	.p2align	3
	.type	__ucmpdi2,@function
__ucmpdi2:                              # @__ucmpdi2
# %bb.0:
	*(u64 *)(r10 - 16) = r1
	*(u64 *)(r10 - 24) = r2
	r1 = *(u64 *)(r10 - 16)
	*(u64 *)(r10 - 32) = r1
	r1 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 40) = r1
	r1 = *(u32 *)(r10 - 28)
	r2 = *(u32 *)(r10 - 36)
	if r1 >= r2 goto LBB115_2
	goto LBB115_1
LBB115_1:
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB115_9
LBB115_2:
	r2 = *(u32 *)(r10 - 28)
	r1 = *(u32 *)(r10 - 36)
	if r1 >= r2 goto LBB115_4
	goto LBB115_3
LBB115_3:
	r1 = 2
	*(u32 *)(r10 - 4) = r1
	goto LBB115_9
LBB115_4:
	r1 = *(u32 *)(r10 - 32)
	r2 = *(u32 *)(r10 - 40)
	if r1 >= r2 goto LBB115_6
	goto LBB115_5
LBB115_5:
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB115_9
LBB115_6:
	r2 = *(u32 *)(r10 - 32)
	r1 = *(u32 *)(r10 - 40)
	if r1 >= r2 goto LBB115_8
	goto LBB115_7
LBB115_7:
	r1 = 2
	*(u32 *)(r10 - 4) = r1
	goto LBB115_9
LBB115_8:
	r1 = 1
	*(u32 *)(r10 - 4) = r1
	goto LBB115_9
LBB115_9:
	r0 = *(u32 *)(r10 - 4)
	exit
.Lfunc_end115:
	.size	__ucmpdi2, .Lfunc_end115-__ucmpdi2
                                        # -- End function
	.globl	__aeabi_ulcmp                   # -- Begin function __aeabi_ulcmp
	.p2align	3
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          # @__aeabi_ulcmp
# %bb.0:
	*(u64 *)(r10 - 8) = r1
	*(u64 *)(r10 - 16) = r2
	r1 = *(u64 *)(r10 - 8)
	r2 = *(u64 *)(r10 - 16)
	call __ucmpdi2
	r0 += -1
	exit
.Lfunc_end116:
	.size	__aeabi_ulcmp, .Lfunc_end116-__aeabi_ulcmp
                                        # -- End function
	.globl	__ucmpti2                       # -- Begin function __ucmpti2
	.p2align	3
	.type	__ucmpti2,@function
__ucmpti2:                              # @__ucmpti2
# %bb.0:
                                        # kill: def $r5 killed $r4
                                        # kill: def $r5 killed $r3
                                        # kill: def $r5 killed $r2
                                        # kill: def $r5 killed $r1
	*(u64 *)(r10 - 24) = r2
	*(u64 *)(r10 - 32) = r1
	*(u64 *)(r10 - 40) = r4
	*(u64 *)(r10 - 48) = r3
	r1 = *(u64 *)(r10 - 32)
	r2 = *(u64 *)(r10 - 24)
	*(u64 *)(r10 - 56) = r2
	*(u64 *)(r10 - 64) = r1
	r1 = *(u64 *)(r10 - 48)
	r2 = *(u64 *)(r10 - 40)
	*(u64 *)(r10 - 72) = r2
	*(u64 *)(r10 - 80) = r1
	r1 = *(u64 *)(r10 - 56)
	r2 = *(u64 *)(r10 - 72)
	if r1 >= r2 goto LBB117_2
	goto LBB117_1
LBB117_1:
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB117_9
LBB117_2:
	r2 = *(u64 *)(r10 - 56)
	r1 = *(u64 *)(r10 - 72)
	if r1 >= r2 goto LBB117_4
	goto LBB117_3
LBB117_3:
	r1 = 2
	*(u32 *)(r10 - 4) = r1
	goto LBB117_9
LBB117_4:
	r1 = *(u64 *)(r10 - 64)
	r2 = *(u64 *)(r10 - 80)
	if r1 >= r2 goto LBB117_6
	goto LBB117_5
LBB117_5:
	r1 = 0
	*(u32 *)(r10 - 4) = r1
	goto LBB117_9
LBB117_6:
	r2 = *(u64 *)(r10 - 64)
	r1 = *(u64 *)(r10 - 80)
	if r1 >= r2 goto LBB117_8
	goto LBB117_7
LBB117_7:
	r1 = 2
	*(u32 *)(r10 - 4) = r1
	goto LBB117_9
LBB117_8:
	r1 = 1
	*(u32 *)(r10 - 4) = r1
	goto LBB117_9
LBB117_9:
	r0 = *(u32 *)(r10 - 4)
	exit
.Lfunc_end117:
	.size	__ucmpti2, .Lfunc_end117-__ucmpti2
                                        # -- End function
	.type	l64a.s,@object                  # @l64a.s
	.local	l64a.s
	.comm	l64a.s,7,1
	.type	digits,@object                  # @digits
	.section	.rodata,"a",@progbits
digits:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	digits, 65

	.type	seed,@object                    # @seed
	.local	seed
	.comm	seed,8,8
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
